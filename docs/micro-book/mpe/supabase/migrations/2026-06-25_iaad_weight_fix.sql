-- ============================================================================
-- IAAD-30 — Fix de peso: reflexao 0,085 -> 0,083333 (garante IAAD em [0,10])
-- ============================================================================
-- Bug pre-existente: pesos por aula (0,40+0,30+0,30+0,50+0,085+0,085=1,67) x9
-- = 15,03, mas o divisor era 15,0 -> aluno perfeito estourava para 10,02
-- (C_geral, C_prazo e IAAD acima de 10). Decisao 2026-06-25 (opcao A): baixar
-- cada reflexao para 0,083333 -> soma ~= 15,000 e o maximo crava 10,00.
--
-- Redefine APENAS as 4 funcoes IAAD (CREATE OR REPLACE). NAO toca a view
-- iaad_aula_completion nem iaad_calendar -- preserva o colapso das Aulas 1-3
-- e o fix da AF da Aula 9. Idempotente. Rodar no SQL Editor.
-- ============================================================================

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
    -- Pesos: 0.40 + 0.30 + 0.30 + 0.50 + 0.083333 + 0.083333 = 1.67 por aula
    v_geral_pts := v_geral_pts
      + (CASE WHEN rec.material_done       THEN 0.40  ELSE 0 END)
      + (CASE WHEN rec.quiz_pre_done       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.quiz_pos_done       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.exerc_done          THEN 0.50  ELSE 0 END)
      + (CASE WHEN rec.refl_nebulosa_done  THEN 0.083333 ELSE 0 END)
      + (CASE WHEN rec.refl_aula_done      THEN 0.083333 ELSE 0 END);

    v_prazo_pts := v_prazo_pts
      + (CASE WHEN rec.material_in_window       THEN 0.40  ELSE 0 END)
      + (CASE WHEN rec.quiz_pre_in_window       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.quiz_pos_in_window       THEN 0.30  ELSE 0 END)
      + (CASE WHEN rec.exerc_in_window          THEN 0.50  ELSE 0 END)
      + (CASE WHEN rec.refl_nebulosa_in_window  THEN 0.083333 ELSE 0 END)
      + (CASE WHEN rec.refl_aula_in_window      THEN 0.083333 ELSE 0 END);

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
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.083333 ELSE 0 END))
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
           SUM(CASE WHEN refl_nebulosa_in_window  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_in_window      THEN 0.083333 ELSE 0 END))
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
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.083333 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_geral,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_in_window       THEN 0.40 ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_in_window       THEN 0.30 ELSE 0 END) +
           SUM(CASE WHEN exerc_in_window          THEN 0.50 ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_in_window  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_in_window      THEN 0.083333 ELSE 0 END))
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


CREATE OR REPLACE FUNCTION public.get_iaad_all_students()
RETURNS TABLE (
  user_id    uuid,
  nome       text,
  matricula  text,
  c_geral    numeric,   -- 0..10
  c_prazo    numeric,   -- 0..10
  p_score    numeric,   -- 0..10
  iaad       numeric    -- 0..10
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Não autenticado.';
  END IF;
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Apenas admin pode listar o IAAD de toda a turma.';
  END IF;

  RETURN QUERY
  WITH per_user AS (
    SELECT
      pa.id        AS user_id,
      pa.nome      AS nome,
      pa.matricula AS matricula,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_done       THEN 0.40  ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_done       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_done       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN exerc_done          THEN 0.50  ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.083333 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_geral,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_in_window       THEN 0.40  ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_in_window       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_in_window       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN exerc_in_window          THEN 0.50  ELSE 0 END) +
           SUM(CASE WHEN refl_nebulosa_in_window  THEN 0.083333 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_in_window      THEN 0.083333 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_prazo,
      COALESCE(
        (SELECT pr.accuracy * 10.0 FROM public.iaad_performance_raw pr WHERE pr.user_id = pa.id),
        0
      )::numeric AS p_score
    FROM public.profiles pa
    WHERE pa.role = 'student'
  )
  SELECT
    pu.user_id,
    pu.nome,
    pu.matricula,
    ROUND(pu.c_geral, 2),
    ROUND(pu.c_prazo, 2),
    ROUND(pu.p_score, 2),
    ROUND(0.60 * pu.c_geral + 0.20 * pu.c_prazo + 0.20 * pu.p_score, 2)
  FROM per_user pu
  ORDER BY pu.nome;
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_iaad_all_students() TO authenticated;
