# reflections-sentiment — operação

Edge function que classifica reflexão de aluno em 4 dimensões (`confusion`, `clarity`, `frustration`, `engagement`, cada 0-100) via Claude Sonnet 4.6. Backlog estratégico 2026-05-16.

## Pré-requisitos

1. **Migration aplicada:** `supabase/migrations/2026-05-16_lo_taxonomy_and_sentiment.sql` (adiciona `reflections.sentiment_score jsonb`).
2. **Secret no Supabase:** Dashboard → Project Settings → Edge Functions → Secrets:
   - `ANTHROPIC_API_KEY` = `sk-ant-...` (sua key da Anthropic).
   - As outras (`SUPABASE_URL`, `SUPABASE_ANON_KEY`, `SUPABASE_SERVICE_ROLE_KEY`) são injetadas automaticamente.
3. **Supabase CLI** configurado e linkado ao projeto.

## Deploy

```bash
cd docs/micro-book/mpe/supabase
supabase functions deploy reflections-sentiment
```

Verifica:

```bash
supabase functions list
# reflections-sentiment | ACTIVE | <url>
```

## Operação: 3 caminhos

### A) Trigger por insert/update (recomendado em produção)

Database Webhook no Supabase Dashboard → Database → Webhooks → Create:
- Table: `reflections`
- Events: `INSERT` + `UPDATE` (filtrar `text` por mudança)
- Type: Supabase Edge Functions
- Function: `reflections-sentiment`
- Method: `POST`
- HTTP Headers: deixa default (já manda Authorization).

Reflexão nova → score em ~5s. Falhas logam em Dashboard → Edge Functions → Logs.

### B) Batch via script Python (rodar local)

Para reflexões antigas (`sentiment_score IS NULL`):

```bash
cd docs/micro-book/mpe/supabase/scripts
pip install anthropic==0.39.0 supabase==2.9.1

export SUPABASE_URL=https://<proj>.supabase.co
export SUPABASE_SERVICE_ROLE_KEY=eyJhbG...
export ANTHROPIC_API_KEY=sk-ant-...

python3 sentiment-classify.py --limit 5         # smoke test
python3 sentiment-classify.py                    # processa todas pendentes
```

Use `--force --since 2026-04-01` para re-score após trocar de modelo. `--dry-run` mostra o output sem gravar.

### C) Manual via RPC (admin no dashboard)

Botão "Reprocessar sentiment" no admin pode chamar:

```js
await supabase.rpc('mark_reflection_sentiment_pending', { p_reflection_id: '...' });
// Aguardar ~10s; trigger ou script vai pegar e re-scorear.
```

## Output esperado

```json
{
  "confusion": 30,
  "clarity": 70,
  "frustration": 10,
  "engagement": 80
}
```

Inteiros 0-100, independentes (não soma 100).

## Custos

| Modelo | Input ~ | Output ~ | Custo / reflexão | Turma 50 × 9 × 2 = 900 |
|---|---|---|---|---|
| Claude Sonnet 4.6 | 1500 tokens (prompt + texto) | 30 tokens | ~$0.0008 | ~$0.72 |

Cache do system prompt (`cache_control: ephemeral`) reduz custo após primeira chamada.

## Debug

- **Função retorna 502:** Anthropic falhou. Logs do edge function têm detalhe.
- **Função retorna 422 "text empty":** reflexão tem < 10 chars úteis. Esperado.
- **`sentiment_score` continua NULL após deploy + trigger:** webhook não configurado, ou batch nunca rodou. Rode `python3 sentiment-classify.py --limit 1` para teste.
- **Parse failed:** modelo devolveu não-JSON. Veja `raw` no logs do edge function; pode precisar tunar `system-prompt.md`.

## Re-treinar prompt

Editar `system-prompt.md` (fonte canônica), depois regenerar `system-prompt.ts`:

```bash
cd supabase/functions/reflections-sentiment
node -e "var fs=require('fs');var t=fs.readFileSync('system-prompt.md','utf8');fs.writeFileSync('system-prompt.ts','export const SYSTEM_PROMPT = '+JSON.stringify(t)+';\n')"
supabase functions deploy reflections-sentiment
```

Reflexões antigas mantêm scores; rodar `python3 sentiment-classify.py --force` para re-score com prompt novo.
