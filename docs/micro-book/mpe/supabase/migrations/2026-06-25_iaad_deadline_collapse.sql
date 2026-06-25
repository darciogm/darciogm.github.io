-- ============================================================================
-- IAAD-30 — Antecipação de deadline + colapso de janela canônica (Aulas 1–3)
-- ============================================================================
-- Decisão 2026-06-25 (Prof. Darcio):
--   1. Deadline único do curso antecipado: 02/07/2026 18:00 → 28/06/2026 23:59 BRT.
--      (Gabaritos: 03/07 00:00 → 29/06 00:00 BRT — derivado no front, sem coluna.)
--   2. Janela canônica (C_prazo) das Aulas 1–3 COLAPSADA numa data única
--      (= novo deadline, 28/06 23:59). Aulas 4–9 mantêm a regra padrão
--      (material/pré/refl → presencial_at; pós/exerc → next_presencial_at).
--
-- ESTRATÉGIA ADITIVA (não destrutiva, conforme CLAUDE.md §convenções):
--   presencial_at / next_presencial_at PERMANECEM como datas reais de aula
--   (usadas para display e semântica de ritmo). Introduzimos duas colunas
--   dedicadas — win_pre / win_pos — que definem exclusivamente o teto de
--   C_prazo por componente. Assim o colapso das Aulas 1–3 não corrompe as
--   datas presenciais reais.
--
-- Espelha o JS: platform/js/calendario.js (JANELA_COLAPSADA_1_3 + getJanelaCanonica).
-- Idempotente: pode rodar duas vezes sem erro nem deriva de estado.
-- ============================================================================

-- 1. Colunas dedicadas de janela de prazo (aditivas)
ALTER TABLE public.iaad_calendar
  ADD COLUMN IF NOT EXISTS win_pre timestamptz,  -- teto C_prazo: material, quiz_pre, reflexões
  ADD COLUMN IF NOT EXISTS win_pos timestamptz;  -- teto C_prazo: quiz_pos, exerc

-- 2. Backfill padrão (regra canônica): win_pre = presencial_at, win_pos = next_presencial_at
UPDATE public.iaad_calendar
   SET win_pre = presencial_at,
       win_pos = next_presencial_at;

-- 3. Colapso das Aulas 1–3 numa janela única = novo deadline (28/06 23:59 BRT)
UPDATE public.iaad_calendar
   SET win_pre = '2026-06-28 23:59:00-03',
       win_pos = '2026-06-28 23:59:00-03'
 WHERE aula_n IN (1, 2, 3);

-- 4. Antecipar o deadline geral do curso (documental na view atual; mantém coerência)
UPDATE public.iaad_calendar
   SET curso_deadline = '2026-06-28 23:59:00-03';

-- 5. Travar as novas colunas após backfill
ALTER TABLE public.iaad_calendar ALTER COLUMN win_pre SET NOT NULL;
ALTER TABLE public.iaad_calendar ALTER COLUMN win_pos SET NOT NULL;

-- 6. Reescrever a view de completion usando win_pre/win_pos nas flags *_in_window.
--    Mesma lista de colunas de saída — apenas as comparações de janela mudam.
CREATE OR REPLACE VIEW public.iaad_aula_completion AS
WITH
  profiles_active AS (
    SELECT id AS user_id FROM public.profiles
  ),
  cal AS (
    SELECT aula_n, presencial_at, next_presencial_at, win_pre, win_pos, curso_deadline
    FROM public.iaad_calendar
  ),
  material AS (
    SELECT
      user_id,
      (regexp_replace(page_id, '^aula-(\d+)$', '\1'))::int AS aula_n,
      COUNT(*) FILTER (WHERE completed_at IS NOT NULL) AS sec_done,
      MAX(completed_at) AS last_completed_at
    FROM public.section_progress
    WHERE page_id ~ '^aula-0[1-9]$'
    GROUP BY user_id, page_id
  ),
  quizzes AS (
    SELECT
      user_id,
      (regexp_replace(page_id, '^aula-(\d+).*', '\1'))::int AS aula_n,
      CASE WHEN page_id LIKE '%-pre'   THEN 'pre'
           WHEN page_id LIKE '%-pos'   THEN 'pos'
           WHEN page_id LIKE '%-exerc' THEN 'exerc'
      END AS kind,
      submitted_at
    FROM public.quiz_aggregates
    WHERE page_id ~ '^aula-0[1-9](-pre|-pos|-exerc)$'
      AND submitted_at IS NOT NULL
  ),
  refls AS (
    SELECT
      user_id,
      (regexp_replace(page_id, '^aula-(\d+)$', '\1'))::int AS aula_n,
      prompt_id,
      submitted_at
    FROM public.reflections
    WHERE page_id ~ '^aula-0[1-9]$'
      AND prompt_id IN ('nebulosa', 'aula')
      AND LENGTH(TRIM(text)) >= 10
  )
SELECT
  pa.user_id,
  c.aula_n,
  c.presencial_at,
  c.next_presencial_at,
  -- Item 1: pré-aula material (peso 0,40) — janela: win_pre
  (m.sec_done >= 9)                                                                   AS material_done,
  (m.sec_done >= 9 AND m.last_completed_at <= c.win_pre)                              AS material_in_window,
  -- Item 2: quiz pré-aula (peso 0,30) — janela: win_pre
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pre') AS quiz_pre_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pre' AND q.submitted_at <= c.win_pre) AS quiz_pre_in_window,
  -- Item 3: quiz pós-aula (peso 0,30) — janela: win_pos
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pos') AS quiz_pos_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pos' AND q.submitted_at <= c.win_pos) AS quiz_pos_in_window,
  -- Item 4: exerc avaliativos (peso 0,50) — janela: win_pos
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'exerc') AS exerc_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'exerc' AND q.submitted_at <= c.win_pos) AS exerc_in_window,
  -- Item 5: reflexão 'nebulosa' (peso 0,085) — janela: win_pre
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'nebulosa') AS refl_nebulosa_done,
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'nebulosa' AND r.submitted_at <= c.win_pre) AS refl_nebulosa_in_window,
  -- Item 6: reflexão 'aula' (peso 0,085) — janela: win_pre
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'aula') AS refl_aula_done,
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'aula' AND r.submitted_at <= c.win_pre) AS refl_aula_in_window
FROM profiles_active pa
CROSS JOIN cal c
LEFT JOIN material m ON m.user_id = pa.user_id AND m.aula_n = c.aula_n;

COMMENT ON COLUMN public.iaad_calendar.win_pre IS
'Teto de C_prazo p/ material+quiz_pre+reflexões. Default = presencial_at; Aulas 1–3 colapsadas em 2026-06-28 23:59 (concessão 2026-06-25).';
COMMENT ON COLUMN public.iaad_calendar.win_pos IS
'Teto de C_prazo p/ quiz_pos+exerc. Default = next_presencial_at; Aulas 1–3 colapsadas em 2026-06-28 23:59 (concessão 2026-06-25).';
