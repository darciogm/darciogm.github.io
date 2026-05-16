#!/usr/bin/env python3
"""
Sentiment classification para reflexões do MPE — alternativa ao edge function.

Roda local: lê reflexões via Supabase REST (com SERVICE_ROLE_KEY), classifica
em 4 dimensões via Anthropic Claude Sonnet 4.6, persiste de volta. Idempotente:
skip de reflexões que já têm sentiment_score (a menos que --force).

Quando usar este script (vs edge function):
- Você não quer deploy/manutenção de edge function no Supabase.
- Quer rodar batch em massa (ex: re-scoring com novo modelo).
- Debug local: dá pra inspecionar raw output, trocar prompt, etc.

Uso:
    export SUPABASE_URL=https://...supabase.co
    export SUPABASE_SERVICE_ROLE_KEY=eyJhbG...
    export ANTHROPIC_API_KEY=sk-ant-...
    python3 sentiment-classify.py                   # processa pendentes
    python3 sentiment-classify.py --limit 5         # processa 5 (smoke test)
    python3 sentiment-classify.py --force --since 2026-04-01  # re-score
    python3 sentiment-classify.py --dry-run         # mostra mas não grava

Dependências: anthropic supabase. Instalar:
    pip install anthropic==0.39.0 supabase==2.9.1

Custo estimado: ~$0.0008/reflexão (Sonnet 4.6, prompt ~1500 tokens entrada,
~30 tokens saída). Turma de 50 × 9 aulas × 2 prompts = 900 reflexões = ~$0.72.
"""

import argparse
import json
import os
import re
import sys
import time
from pathlib import Path

try:
    from anthropic import Anthropic
    from supabase import create_client
except ImportError:
    print("ERRO: instale dependencies. pip install anthropic supabase", file=sys.stderr)
    sys.exit(1)

MODEL = "claude-sonnet-4-6"
MAX_TOKENS = 200
MIN_TEXT_CHARS = 10
SLEEP_BETWEEN = 0.3  # segundos; respeita rate limits sem stress

# System prompt: lê do arquivo canônico do edge function (single source of truth).
PROMPT_PATH = Path(__file__).resolve().parent.parent / "functions" / "reflections-sentiment" / "system-prompt.md"


def load_prompt() -> str:
    if not PROMPT_PATH.exists():
        print(f"ERRO: prompt não encontrado em {PROMPT_PATH}", file=sys.stderr)
        sys.exit(1)
    return PROMPT_PATH.read_text(encoding="utf-8")


def parse_score(raw: str):
    """Valida e normaliza output do modelo. Devolve dict ou None."""
    if not raw:
        return None
    s = raw.strip()
    if s.startswith("```"):
        s = re.sub(r"^```(?:json)?\s*", "", s)
        s = re.sub(r"```\s*$", "", s)
    try:
        parsed = json.loads(s)
    except json.JSONDecodeError:
        m = re.search(r"\{[\s\S]*\}", s)
        if not m:
            return None
        try:
            parsed = json.loads(m.group(0))
        except json.JSONDecodeError:
            return None
    out = {}
    for dim in ("confusion", "clarity", "frustration", "engagement"):
        v = parsed.get(dim)
        try:
            v = int(round(float(v)))
        except (TypeError, ValueError):
            return None
        out[dim] = max(0, min(100, v))
    return out


def classify(client: Anthropic, system: str, text: str):
    """Chama Anthropic com 2 retries em 429/5xx."""
    last_err = ""
    for attempt in range(3):
        try:
            resp = client.messages.create(
                model=MODEL,
                max_tokens=MAX_TOKENS,
                system=[
                    {"type": "text", "text": system, "cache_control": {"type": "ephemeral"}},
                ],
                messages=[{"role": "user", "content": [{"type": "text", "text": text}]}],
            )
            blocks = [b.text for b in resp.content if getattr(b, "type", None) == "text"]
            return "".join(blocks).strip()
        except Exception as e:  # noqa: BLE001
            last_err = str(e)
            if attempt < 2:
                time.sleep(1.0 * (attempt + 1))
                continue
            raise RuntimeError(f"anthropic failed após retries: {last_err}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0, help="0 = processa todas pendentes")
    ap.add_argument("--force", action="store_true", help="re-score mesmo com sentiment_score != null")
    ap.add_argument("--since", default=None, help="ISO date — só reflexões >= esta data")
    ap.add_argument("--dry-run", action="store_true", help="não grava no banco")
    args = ap.parse_args()

    url = os.environ.get("SUPABASE_URL")
    key = os.environ.get("SUPABASE_SERVICE_ROLE_KEY")
    anth_key = os.environ.get("ANTHROPIC_API_KEY")
    if not all([url, key, anth_key]):
        print("ERRO: defina SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY, ANTHROPIC_API_KEY", file=sys.stderr)
        sys.exit(2)

    sb = create_client(url, key)
    anth = Anthropic(api_key=anth_key)
    prompt = load_prompt()

    q = sb.table("reflections").select("id,text,sentiment_score,submitted_at,page_id,prompt_id")
    if not args.force:
        q = q.is_("sentiment_score", "null")
    if args.since:
        q = q.gte("submitted_at", args.since)
    q = q.order("submitted_at", desc=False)
    if args.limit > 0:
        q = q.limit(args.limit)

    res = q.execute()
    rows = res.data or []
    print(f"[sentiment] {len(rows)} reflexão(ões) a processar (force={args.force}, dry={args.dry_run})")

    n_ok = n_skip = n_err = 0
    for row in rows:
        rid = row["id"]
        text = (row.get("text") or "").strip()
        label = f"{row.get('page_id', '?')}/{row.get('prompt_id', '?')}/{rid[:8]}"
        if len(text) < MIN_TEXT_CHARS:
            print(f"  skip {label}: text<{MIN_TEXT_CHARS}")
            n_skip += 1
            continue
        try:
            raw = classify(anth, prompt, text)
        except Exception as e:  # noqa: BLE001
            print(f"  ERR  {label}: {e}")
            n_err += 1
            continue
        score = parse_score(raw)
        if not score:
            print(f"  ERR  {label}: parse failed (raw[:100]={raw[:100]!r})")
            n_err += 1
            continue
        print(f"  ok   {label}: {score}")
        if not args.dry_run:
            upd = sb.table("reflections").update({
                "sentiment_score": score,
                "sentiment_model": MODEL,
                "sentiment_scored_at": "now()",
            }).eq("id", rid).execute()
            if not upd.data:
                print(f"  ERR  {label}: update silencioso (RLS?)")
                n_err += 1
                continue
        n_ok += 1
        time.sleep(SLEEP_BETWEEN)

    print(f"[sentiment] fim: ok={n_ok}, skip={n_skip}, err={n_err}")
    sys.exit(0 if n_err == 0 else 1)


if __name__ == "__main__":
    main()
