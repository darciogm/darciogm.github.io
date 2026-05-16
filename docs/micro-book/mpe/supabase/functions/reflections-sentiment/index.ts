// Supabase Edge Function — reflections-sentiment
//
// Classifica uma reflexao de aluno em 4 dimensoes (confusion, clarity,
// frustration, engagement) 0-100, via Claude Sonnet 4.6. Persiste em
// reflections.sentiment_score jsonb + sentiment_model + sentiment_scored_at.
//
// Contrato:
//   POST /functions/v1/reflections-sentiment
//   Authorization: Bearer <JWT>
//   Body: { reflection_id: uuid }
//
//   200 { ok: true, reflection_id, sentiment_score: {...}, model }
//   403 { ok: false, error: 'not authenticated' | 'forbidden' }
//   404 { ok: false, error: 'not found' }
//   422 { ok: false, error: 'text empty' }   (texto < 10 chars uteis)
//   502 { ok: false, error: '...' }          (Anthropic falhou)
//   500 { ok: false, error: '...' }
//
// Secrets (Supabase Dashboard → Edge Functions → Secrets):
//   ANTHROPIC_API_KEY           — obrigatorio
//   SUPABASE_URL                — injetado automaticamente
//   SUPABASE_ANON_KEY           — injetado automaticamente
//   SUPABASE_SERVICE_ROLE_KEY   — injetado, usado para UPDATE de sentiment_*
//                                  (RLS bloqueia o aluno de escrever colunas
//                                  sentiment_*; admin pode mas o trigger ideal
//                                  e por edge function com service role).
//
// Deploy: supabase functions deploy reflections-sentiment
// Operacao: 2 caminhos
//   (a) Trigger por insert/update: configurar database webhook em reflections
//       (Supabase Dashboard) chamando esta function. Reflexoes novas pegam
//       sentiment_score automaticamente.
//   (b) Batch: chamar via cron job (Supabase scheduled functions) que
//       percorre reflections WHERE sentiment_score IS NULL e dispara.

/// <reference lib="deno.ns" />
/// <reference lib="dom" />

import { createClient } from 'supabase';
import { SYSTEM_PROMPT } from './system-prompt.ts';

// -----------------------------------------------------------------------------
// Constantes

const MODEL = 'claude-sonnet-4-6';
const ANTHROPIC_URL = 'https://api.anthropic.com/v1/messages';
const ANTHROPIC_VERSION = '2023-06-01';
const MAX_TOKENS = 200;            // output e JSON pequeno
const TOTAL_TIMEOUT_MS = 20_000;
const RETRY_BACKOFF_MS = [800, 2000];  // 2 retries
const MIN_TEXT_CHARS = 10;

// -----------------------------------------------------------------------------
// Helpers

function json(body: unknown, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: {
      'content-type': 'application/json',
      'access-control-allow-origin': '*',
      'access-control-allow-headers': 'authorization, x-client-info, apikey, content-type',
    },
  });
}

function corsPreflight() {
  return new Response(null, {
    status: 204,
    headers: {
      'access-control-allow-origin': '*',
      'access-control-allow-methods': 'POST, OPTIONS',
      'access-control-allow-headers': 'authorization, x-client-info, apikey, content-type',
      'access-control-max-age': '86400',
    },
  });
}

// Valida e normaliza o output do modelo.
function parseSentimentScore(text: string): { confusion: number; clarity: number; frustration: number; engagement: number } | null {
  if (!text) return null;
  let cleaned = text.trim();
  // Remove fences ```...```
  if (cleaned.startsWith('```')) {
    cleaned = cleaned.replace(/^```(?:json)?\s*/, '').replace(/```\s*$/, '');
  }
  let parsed: any;
  try {
    parsed = JSON.parse(cleaned);
  } catch (_) {
    // Tenta extrair { ... } se vier com prefixo
    const m = /\{[\s\S]*\}/.exec(cleaned);
    if (!m) return null;
    try { parsed = JSON.parse(m[0]); } catch (_) { return null; }
  }
  const dims = ['confusion', 'clarity', 'frustration', 'engagement'];
  const out: any = {};
  for (const d of dims) {
    let v = Number(parsed[d]);
    if (!Number.isFinite(v)) return null;
    v = Math.max(0, Math.min(100, Math.round(v)));
    out[d] = v;
  }
  return out;
}

// Chama Anthropic com retry.
async function callAnthropic(apiKey: string, system: string, text: string): Promise<string> {
  const body = {
    model: MODEL,
    max_tokens: MAX_TOKENS,
    system: [
      { type: 'text', text: system, cache_control: { type: 'ephemeral' } },
    ],
    messages: [
      { role: 'user', content: [{ type: 'text', text: text }] },
    ],
  };

  let lastErr = '';
  const totalDeadline = Date.now() + TOTAL_TIMEOUT_MS;

  for (let attempt = 0; attempt <= RETRY_BACKOFF_MS.length; attempt++) {
    if (Date.now() >= totalDeadline) {
      throw new Error(`timeout total ${TOTAL_TIMEOUT_MS}ms. ultimo: ${lastErr}`);
    }
    const perAttemptTimeout = Math.max(3000, totalDeadline - Date.now() - 500);
    const ctrl = new AbortController();
    const timer = setTimeout(() => ctrl.abort(), perAttemptTimeout);
    try {
      const resp = await fetch(ANTHROPIC_URL, {
        method: 'POST',
        headers: {
          'content-type': 'application/json',
          'x-api-key': apiKey,
          'anthropic-version': ANTHROPIC_VERSION,
        },
        body: JSON.stringify(body),
        signal: ctrl.signal,
      });
      clearTimeout(timer);

      if (resp.ok) {
        const data = await resp.json();
        const blocks = Array.isArray(data?.content) ? data.content : [];
        const text = blocks
          .filter((b: any) => b && b.type === 'text' && typeof b.text === 'string')
          .map((b: any) => b.text)
          .join('');
        if (!text.trim()) throw new Error('resposta vazia');
        return text.trim();
      }

      const errText = await resp.text().catch(() => '');
      lastErr = `HTTP ${resp.status}: ${errText.slice(0, 300)}`;
      if (resp.status === 429 || resp.status >= 500) {
        if (attempt < RETRY_BACKOFF_MS.length) {
          await new Promise((r) => setTimeout(r, RETRY_BACKOFF_MS[attempt]));
          continue;
        }
      }
      throw new Error(lastErr);
    } catch (e) {
      clearTimeout(timer);
      lastErr = (e as Error).message;
      if (attempt < RETRY_BACKOFF_MS.length) {
        await new Promise((r) => setTimeout(r, RETRY_BACKOFF_MS[attempt]));
        continue;
      }
      throw new Error(lastErr);
    }
  }
  throw new Error(`falhou após retries: ${lastErr}`);
}

// -----------------------------------------------------------------------------
// Handler

Deno.serve(async (req: Request) => {
  if (req.method === 'OPTIONS') return corsPreflight();
  if (req.method !== 'POST') return json({ ok: false, error: 'method not allowed' }, 405);

  let reflection_id: string;
  try {
    const body = await req.json();
    reflection_id = body?.reflection_id;
    if (!reflection_id || typeof reflection_id !== 'string') {
      return json({ ok: false, error: 'reflection_id obrigatorio (uuid)' }, 400);
    }
  } catch (_) {
    return json({ ok: false, error: 'json body invalido' }, 400);
  }

  const SB_URL = Deno.env.get('SUPABASE_URL') || '';
  const SB_ANON = Deno.env.get('SUPABASE_ANON_KEY') || '';
  const SB_SERVICE = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') || '';
  const ANTH_KEY = Deno.env.get('ANTHROPIC_API_KEY') || '';
  if (!SB_URL || !SB_ANON || !SB_SERVICE || !ANTH_KEY) {
    return json({ ok: false, error: 'secrets faltando (SUPABASE_*, ANTHROPIC_API_KEY)' }, 500);
  }

  const authHeader = req.headers.get('authorization') || '';
  if (!authHeader.startsWith('Bearer ')) {
    return json({ ok: false, error: 'not authenticated' }, 403);
  }

  // Client com JWT do caller (para verificar permissao via RLS de SELECT)
  const sb = createClient(SB_URL, SB_ANON, {
    global: { headers: { Authorization: authHeader } },
  });

  const userRes = await sb.auth.getUser();
  if (userRes.error || !userRes.data.user) {
    return json({ ok: false, error: 'not authenticated' }, 403);
  }

  // Le reflexao via JWT: se o aluno NAO for dono nem admin, RLS bloqueia.
  const sel = await sb
    .from('reflections')
    .select('id, user_id, page_id, prompt_id, text')
    .eq('id', reflection_id)
    .maybeSingle();
  if (sel.error) return json({ ok: false, error: sel.error.message }, 403);
  if (!sel.data) return json({ ok: false, error: 'not found' }, 404);

  const text = String(sel.data.text || '').trim();
  if (text.length < MIN_TEXT_CHARS) {
    return json({ ok: false, error: 'text empty (<10 chars)' }, 422);
  }

  // Chama Anthropic
  let raw: string;
  try {
    raw = await callAnthropic(ANTH_KEY, SYSTEM_PROMPT, text);
  } catch (e) {
    return json({ ok: false, error: 'anthropic failed: ' + (e as Error).message }, 502);
  }

  const score = parseSentimentScore(raw);
  if (!score) {
    return json({ ok: false, error: 'parse failed', raw: raw.slice(0, 300) }, 502);
  }

  // Persiste via SERVICE ROLE (RLS bypass; aluno nao tem UPDATE em sentiment_*).
  const sbAdmin = createClient(SB_URL, SB_SERVICE);
  const upd = await sbAdmin
    .from('reflections')
    .update({
      sentiment_score: score,
      sentiment_model: MODEL,
      sentiment_scored_at: new Date().toISOString(),
    })
    .eq('id', reflection_id);
  if (upd.error) {
    return json({ ok: false, error: 'update failed: ' + upd.error.message }, 500);
  }

  return json({
    ok: true,
    reflection_id,
    sentiment_score: score,
    model: MODEL,
  });
});
