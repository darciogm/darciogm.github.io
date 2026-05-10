-- ============================================================================
-- IAAD-30 — Índice de Aprendizagem Ativa e Dedicação
-- ============================================================================
-- Componentes (cada um 0–10):
--   C_geral  (peso 60%): cumpriu o item em qualquer momento até prazo final
--   C_prazo  (peso 20%): cumpriu o item dentro da janela canônica da aula
--   P        (peso 20%): % acerto em 1ª tentativa cross-aulas (quizzes+exerc)
--
-- Composição: IAAD = 0,60·C_geral + 0,20·C_prazo + 0,20·P   ∈ [0, 10]
-- Pontos da nota: 3 × IAAD ∈ [0, 30]   (= 30% da nota final do MPE)
--
-- Janelas canônicas (do CLAUDE.md):
--   - Material + quiz pré + reflexões: até D_X (quarta da aula às 19:30 BRT)
--   - Quiz pós + exerc: até D_{X+1} (próxima aula às 19:30); Aula 9 → AF
--
-- Privacidade: aluno só lê o próprio IAAD; agregados (P25/P50/P75) liberados
-- a qualquer aluno autenticado. Admin lê todos via is_admin().
-- ============================================================================

-- 0. Tabela canônica de calendário (deadlines por aula)
CREATE TABLE IF NOT EXISTS public.iaad_calendar (
  aula_n              integer     PRIMARY KEY CHECK (aula_n BETWEEN 1 AND 9),
  presencial_at       timestamptz NOT NULL,   -- D_X — quarta da aula às 19:30 BRT
  next_presencial_at  timestamptz NOT NULL,   -- D_{X+1} — próxima aula 19:30 (Aula 9 → AF qua 24/06 19:00)
  curso_deadline      timestamptz NOT NULL    -- prazo geral (02/07/2026 18:00 BRT — regra de acesso livre)
);

-- Popular calendário canônico do MPE 2026/32 (idempotente)
INSERT INTO public.iaad_calendar (aula_n, presencial_at, next_presencial_at, curso_deadline) VALUES
  (1, '2026-04-22 19:30:00-03', '2026-04-29 19:30:00-03', '2026-07-02 18:00:00-03'),
  (2, '2026-04-29 19:30:00-03', '2026-05-06 19:30:00-03', '2026-07-02 18:00:00-03'),
  (3, '2026-05-06 19:30:00-03', '2026-05-13 19:30:00-03', '2026-07-02 18:00:00-03'),
  (4, '2026-05-13 19:30:00-03', '2026-05-20 19:30:00-03', '2026-07-02 18:00:00-03'),
  (5, '2026-05-20 19:30:00-03', '2026-05-27 19:30:00-03', '2026-07-02 18:00:00-03'),
  (6, '2026-05-27 19:30:00-03', '2026-06-03 19:30:00-03', '2026-07-02 18:00:00-03'),
  (7, '2026-06-03 19:30:00-03', '2026-06-10 19:30:00-03', '2026-07-02 18:00:00-03'),
  (8, '2026-06-10 19:30:00-03', '2026-06-17 19:30:00-03', '2026-07-02 18:00:00-03'),
  (9, '2026-06-17 19:30:00-03', '2026-06-24 19:00:00-03', '2026-07-02 18:00:00-03')
ON CONFLICT (aula_n) DO NOTHING;


-- 1. View: completion por (user, aula_n) com timestamps + flags geral e prazo
-- Inclui qualquer user em profiles (student OU admin) — admin vê o próprio
-- IAAD para teste/debug; para os agregados da turma, get_iaad_class_quartiles
-- filtra apenas role='student'.
CREATE OR REPLACE VIEW public.iaad_aula_completion AS
WITH
  profiles_active AS (
    SELECT id AS user_id FROM public.profiles
  ),
  cal AS (
    SELECT aula_n, presencial_at, next_presencial_at, curso_deadline
    FROM public.iaad_calendar
  ),
  -- Material: 9 seções concluídas; timestamp = max completed_at das 9 seções
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
  -- Quizzes (pre/pos/exerc): submitted_at canônico
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
  -- Reflexões substantivas (>=10 chars trim)
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
  -- Item 1: pré-aula material (peso 0,40) — janela: até D_X
  (m.sec_done >= 9)                                                                   AS material_done,
  (m.sec_done >= 9 AND m.last_completed_at <= c.presencial_at)                        AS material_in_window,
  -- Item 2: quiz pré-aula (peso 0,30) — janela: até D_X
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pre') AS quiz_pre_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pre' AND q.submitted_at <= c.presencial_at) AS quiz_pre_in_window,
  -- Item 3: quiz pós-aula (peso 0,30) — janela: até D_{X+1}
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pos') AS quiz_pos_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'pos' AND q.submitted_at <= c.next_presencial_at) AS quiz_pos_in_window,
  -- Item 4: exerc avaliativos (peso 0,50) — janela: até D_{X+1}
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'exerc') AS exerc_done,
  EXISTS (SELECT 1 FROM quizzes q WHERE q.user_id = pa.user_id AND q.aula_n = c.aula_n AND q.kind = 'exerc' AND q.submitted_at <= c.next_presencial_at) AS exerc_in_window,
  -- Item 5: reflexão 'nebulosa' (peso 0,085) — janela: até D_X
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'nebulosa') AS refl_nebulosa_done,
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'nebulosa' AND r.submitted_at <= c.presencial_at) AS refl_nebulosa_in_window,
  -- Item 6: reflexão 'aula' (peso 0,085) — janela: até D_X
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'aula') AS refl_aula_done,
  EXISTS (SELECT 1 FROM refls r WHERE r.user_id = pa.user_id AND r.aula_n = c.aula_n AND r.prompt_id = 'aula' AND r.submitted_at <= c.presencial_at) AS refl_aula_in_window
FROM profiles_active pa
CROSS JOIN cal c
LEFT JOIN material m ON m.user_id = pa.user_id AND m.aula_n = c.aula_n;


-- 2. View: corretas em 1ª tentativa (P)
CREATE OR REPLACE VIEW public.iaad_performance_raw AS
SELECT
  user_id,
  COUNT(*)                                       AS total_questions,
  COUNT(*) FILTER (WHERE correct = true)         AS correct_questions,
  CASE WHEN COUNT(*) > 0
       THEN COUNT(*) FILTER (WHERE correct = true)::numeric / COUNT(*)::numeric
       ELSE NULL
  END                                            AS accuracy
FROM public.quiz_question_attempts
WHERE phase IN ('pre_review', 'post', 'graded_exercise')
GROUP BY user_id;


-- 3. RPC: get_iaad para um user_id
--    Retorna 3 componentes (C_geral, C_prazo, P) + IAAD + pts da nota + breakdown.
CREATE OR REPLACE FUNCTION public.get_iaad(p_user_id uuid)
RETURNS TABLE (
  user_id              uuid,
  -- C_geral
  c_geral_score        numeric,    -- 0..10
  c_geral_pts          numeric,    -- 0..15
  c_geral_aulas_full   integer,    -- aulas com 6/6 itens cumpridos (geral)
  -- C_prazo
  c_prazo_score        numeric,    -- 0..10
  c_prazo_pts          numeric,    -- 0..15
  c_prazo_aulas_full   integer,    -- aulas com 6/6 itens cumpridos (no prazo)
  -- P (Performance)
  p_score              numeric,    -- 0..10
  p_accuracy           numeric,    -- 0..1
  p_total_questions    integer,
  p_correct_questions  integer,
  -- Breakdown agregado (para drill-down no front)
  breakdown            jsonb,
  -- Composição final
  iaad                 numeric,    -- 0..10
  pts_nota             numeric     -- 0..30
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_geral_pts numeric := 0;
  v_prazo_pts numeric := 0;
  v_total_pts numeric := 15.0;  -- soma dos pesos por aula × 9 = 1.67 × 9 = 15
  v_aulas_full_geral integer := 0;
  v_aulas_full_prazo integer := 0;
  v_breakdown jsonb := '{}'::jsonb;
  rec RECORD;
  v_p_acc numeric;
  v_p_total integer;
  v_p_correct integer;
  v_c_geral_score numeric;
  v_c_prazo_score numeric;
  v_p_score numeric;
  v_iaad numeric;
BEGIN
  -- Acesso: aluno só pede o próprio; admin pede qualquer
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Não autenticado.';
  END IF;
  IF auth.uid() <> p_user_id AND NOT public.is_admin() THEN
    RAISE EXCEPTION 'Sem permissão para ler IAAD de outro usuário.';
  END IF;

  -- C_geral e C_prazo
  FOR rec IN
    SELECT ac.*
    FROM public.iaad_aula_completion ac
    WHERE ac.user_id = p_user_id
    ORDER BY ac.aula_n
  LOOP
    -- Pesos: 0.40 + 0.30 + 0.30 + 0.50 + 0.085 + 0.085 = 1.67 por aula
    v_geral_pts := v_geral_pts
      + (CASE WHEN rec.material_done       THEN 0.40  ELSE 0 END)
      + (CASE WHEN rec.quiz_pre_done       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.quiz_pos_done       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.exerc_done          THEN 0.50  ELSE 0 END)
      + (CASE WHEN rec.refl_nebulosa_done  THEN 0.085 ELSE 0 END)
      + (CASE WHEN rec.refl_aula_done      THEN 0.085 ELSE 0 END);

    v_prazo_pts := v_prazo_pts
      + (CASE WHEN rec.material_in_window       THEN 0.40  ELSE 0 END)
      + (CASE WHEN rec.quiz_pre_in_window       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.quiz_pos_in_window       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.exerc_in_window          THEN 0.50  ELSE 0 END)
      + (CASE WHEN rec.refl_nebulosa_in_window  THEN 0.085 ELSE 0 END)
      + (CASE WHEN rec.refl_aula_in_window      THEN 0.085 ELSE 0 END);

    IF rec.material_done AND rec.quiz_pre_done AND rec.quiz_pos_done
       AND rec.exerc_done AND rec.refl_nebulosa_done AND rec.refl_aula_done THEN
      v_aulas_full_geral := v_aulas_full_geral + 1;
    END IF;
    IF rec.material_in_window AND rec.quiz_pre_in_window AND rec.quiz_pos_in_window
       AND rec.exerc_in_window AND rec.refl_nebulosa_in_window AND rec.refl_aula_in_window THEN
      v_aulas_full_prazo := v_aulas_full_prazo + 1;
    END IF;

    v_breakdown := v_breakdown || jsonb_build_object(
      'aula_' || rec.aula_n,
      jsonb_build_object(
        'material',       jsonb_build_object('done', rec.material_done,       'in_window', rec.material_in_window),
        'quiz_pre',       jsonb_build_object('done', rec.quiz_pre_done,       'in_window', rec.quiz_pre_in_window),
        'quiz_pos',       jsonb_build_object('done', rec.quiz_pos_done,       'in_window', rec.quiz_pos_in_window),
        'exerc',          jsonb_build_object('done', rec.exerc_done,          'in_window', rec.exerc_in_window),
        'refl_nebulosa',  jsonb_build_object('done', rec.refl_nebulosa_done,  'in_window', rec.refl_nebulosa_in_window),
        'refl_aula',      jsonb_build_object('done', rec.refl_aula_done,      'in_window', rec.refl_aula_in_window)
      )
    );
  END LOOP;

  v_c_geral_score := ROUND((v_geral_pts / v_total_pts) * 10.0, 2);
  v_c_prazo_score := ROUND((v_prazo_pts / v_total_pts) * 10.0, 2);

  -- P
  SELECT pr.accuracy, pr.total_questions, pr.correct_questions
    INTO v_p_acc, v_p_total, v_p_correct
  FROM public.iaad_performance_raw pr
  WHERE pr.user_id = p_user_id;

  v_p_score := COALESCE(ROUND(v_p_acc * 10.0, 2), 0.0);
  v_p_total := COALESCE(v_p_total, 0);
  v_p_correct := COALESCE(v_p_correct, 0);

  -- IAAD final = 0,60 C_geral + 0,20 C_prazo + 0,20 P
  v_iaad := ROUND(0.60 * v_c_geral_score + 0.20 * v_c_prazo_score + 0.20 * v_p_score, 2);

  RETURN QUERY SELECT
    p_user_id,
    v_c_geral_score,
    ROUND(v_geral_pts, 3),
    v_aulas_full_geral,
    v_c_prazo_score,
    ROUND(v_prazo_pts, 3),
    v_aulas_full_prazo,
    v_p_score,
    COALESCE(v_p_acc, 0)::numeric,
    v_p_total,
    v_p_correct,
    v_breakdown,
    v_iaad,
    ROUND(3.0 * v_iaad, 2);
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_iaad(uuid) TO authenticated;


-- 4. RPC: agregados da turma (P25/P50/P75) por componente
CREATE OR REPLACE FUNCTION public.get_iaad_class_quartiles()
RETURNS TABLE (
  c_geral_p25 numeric, c_geral_p50 numeric, c_geral_p75 numeric,
  c_prazo_p25 numeric, c_prazo_p50 numeric, c_prazo_p75 numeric,
  p_p25 numeric, p_p50 numeric, p_p75 numeric,
  iaad_p25 numeric, iaad_p50 numeric, iaad_p75 numeric,
  n_students integer
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Não autenticado.';
  END IF;

  RETURN QUERY
  WITH per_user AS (
    SELECT
      pa.id AS user_id,
      -- C_geral
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_done       THEN 0.40 ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_done       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_done       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN exerc_done          THEN 0.50 ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.085 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.085 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_geral,
      -- C_prazo
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_in_window       THEN 0.40 ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN exerc_in_window          THEN 0.50 ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_in_window  THEN 0.085 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_in_window      THEN 0.085 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_prazo,
      -- P
      COALESCE(
        (SELECT pr.accuracy * 10.0 FROM public.iaad_performance_raw pr WHERE pr.user_id = pa.id),
        0
      )::numeric AS p_score
    FROM public.profiles pa
    WHERE pa.role = 'student'
  ),
  with_iaad AS (
    SELECT user_id, c_geral, c_prazo, p_score,
           (0.60 * c_geral + 0.20 * c_prazo + 0.20 * p_score) AS iaad
    FROM per_user
  )
  SELECT
    percentile_cont(0.25) WITHIN GROUP (ORDER BY c_geral)::numeric,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY c_geral)::numeric,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY c_geral)::numeric,
    percentile_cont(0.25) WITHIN GROUP (ORDER BY c_prazo)::numeric,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY c_prazo)::numeric,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY c_prazo)::numeric,
    percentile_cont(0.25) WITHIN GROUP (ORDER BY p_score)::numeric,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY p_score)::numeric,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY p_score)::numeric,
    percentile_cont(0.25) WITHIN GROUP (ORDER BY iaad)::numeric,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY iaad)::numeric,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY iaad)::numeric,
    COUNT(*)::integer
  FROM with_iaad;
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_iaad_class_quartiles() TO authenticated;


-- 4b. RPC: distribuição completa dos componentes (arrays para histograma)
--    Retorna arrays sem ordem específica (anônimos) — frontend binniza/plota.
--    Filtra apenas role='student' (admin não polui distribuição da turma).
CREATE OR REPLACE FUNCTION public.get_iaad_class_distribution()
RETURNS TABLE (
  c_geral_values numeric[],
  c_prazo_values numeric[],
  p_values        numeric[],
  iaad_values     numeric[],
  n_students      integer
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Não autenticado.';
  END IF;

  RETURN QUERY
  WITH per_user AS (
    SELECT
      pa.id AS user_id,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_done       THEN 0.40 ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_done       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_done       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN exerc_done          THEN 0.50 ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.085 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.085 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_geral,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_in_window       THEN 0.40 ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN exerc_in_window          THEN 0.50 ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_in_window  THEN 0.085 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_in_window      THEN 0.085 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_prazo,
      COALESCE(
        (SELECT pr.accuracy * 10.0 FROM public.iaad_performance_raw pr WHERE pr.user_id = pa.id),
        0
      )::numeric AS p_score
    FROM public.profiles pa
    WHERE pa.role = 'student'
  ),
  with_iaad AS (
    SELECT user_id, c_geral, c_prazo, p_score,
           (0.60 * c_geral + 0.20 * c_prazo + 0.20 * p_score) AS iaad
    FROM per_user
  )
  SELECT
    ARRAY(SELECT ROUND(c_geral::numeric, 2) FROM with_iaad ORDER BY c_geral),
    ARRAY(SELECT ROUND(c_prazo::numeric, 2) FROM with_iaad ORDER BY c_prazo),
    ARRAY(SELECT ROUND(p_score::numeric, 2) FROM with_iaad ORDER BY p_score),
    ARRAY(SELECT ROUND(iaad::numeric,    2) FROM with_iaad ORDER BY iaad),
    (SELECT COUNT(*)::integer FROM with_iaad);
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_iaad_class_distribution() TO authenticated;


-- 5. Comentários documentais
COMMENT ON TABLE  public.iaad_calendar IS
'Calendário canônico do MPE 2026/32 — usado pelo IAAD-30 para janelas de prazo por aula.';
COMMENT ON FUNCTION public.get_iaad(uuid) IS
'IAAD-30: retorna C_geral (40%) + C_prazo (40%) + P (20%) + IAAD + pts da nota.
Aluno só pode chamar com o próprio user_id; admin pode qualquer.';
COMMENT ON FUNCTION public.get_iaad_class_quartiles() IS
'IAAD-30: P25/P50/P75 dos componentes para localização do aluno na turma.
Liberado para qualquer aluno autenticado (apenas agregados, sem expor user_id).';
