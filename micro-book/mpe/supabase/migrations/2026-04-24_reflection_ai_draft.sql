-- MPE Platform — Geracao IA de rascunho de resposta a reflexoes (Opus 4.7)
-- Data: 2026-04-24
--
-- Adiciona colunas em public.reflections para armazenar o rascunho gerado
-- por edge function (supabase/functions/generate-reflection-draft) usando
-- Anthropic Claude Opus 4.7. O Darcio revisa o rascunho no dashboard admin
-- (Nudge Queue, categoria reflection) e salva/edita para virar resposta final.
--
-- Fluxo:
--   1. Aluno submete reflexao (upsertReflection).
--   2. Portal dispara fire-and-forget a edge function com reflection_id.
--   3. Edge function le reflexao + contexto anonimizado, chama Anthropic,
--      grava response_draft_text + is_ai_draft=true + draft_generated_at.
--   4. Admin ve rascunho pre-populado no textarea com badge amarelo
--      "Rascunho IA — revise".
--   5. Admin salva (virando response_text) ou regenera.
--
-- Privacidade:
--   - response_draft_text NAO e dado pessoal do aluno — e o nosso proprio
--     rascunho de resposta a ele. Mas por higiene, o frontend do aluno
--     (fetchMyDataAll) continua selecionando APENAS as colunas publicas
--     (sem drafts). Esta migration NAO introduz grants coluna-nivel para
--     preservar compat com o select('*') do dashboard admin; o bloqueio
--     e feito client-side na camada mpe-db.js.
--   - Admin continua autorizado pela policy reflections_admin_update ja
--     existente. A edge function usa JWT do caller; a leitura do draft
--     passa pela mesma RLS que a leitura normal de reflections.
--
-- Idempotente. Espelho das mudancas em schema.sql.

ALTER TABLE public.reflections
  ADD COLUMN IF NOT EXISTS response_draft_text   text,
  ADD COLUMN IF NOT EXISTS is_ai_draft           boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS draft_generated_at    timestamptz,
  ADD COLUMN IF NOT EXISTS draft_model           text,
  ADD COLUMN IF NOT EXISTS draft_error           text;

COMMENT ON COLUMN public.reflections.response_draft_text IS
  'Rascunho de resposta gerado por IA (Claude Opus 4.7) via edge function generate-reflection-draft. Admin revisa e edita para virar response_text.';
COMMENT ON COLUMN public.reflections.is_ai_draft IS
  'True se response_draft_text foi gerado por IA e ainda nao virou response_text.';
COMMENT ON COLUMN public.reflections.draft_generated_at IS
  'Timestamp da ultima geracao bem-sucedida do rascunho.';
COMMENT ON COLUMN public.reflections.draft_model IS
  'Identificador do modelo usado (ex: claude-opus-4-7).';
COMMENT ON COLUMN public.reflections.draft_error IS
  'Mensagem curta de erro da ultima tentativa (null em sucesso).';

-- As policies existentes (reflections_own_select, reflections_own_insert,
-- reflections_own_update, reflections_admin_select, reflections_admin_update)
-- continuam aplicando-se aos novos campos — o aluno le suas proprias linhas,
-- o admin le/escreve tudo. O frontend do aluno NAO seleciona as colunas de
-- draft (gate client-side em mpe-db.js#fetchMyDataAll).
