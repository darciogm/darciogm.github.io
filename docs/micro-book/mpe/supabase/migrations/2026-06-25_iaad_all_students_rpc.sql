-- ============================================================================
-- IAAD-30 — RPC admin-only: tabela por aluno (Nome, Matrícula, C_geral,
-- C_prazo, P, IAAD) para a visualização no admin dashboard.
-- ============================================================================
-- SSOT: reusa EXATAMENTE a mesma lógica de get_iaad / get_iaad_class_quartiles
-- (pesos 0,40/0,30/0,30/0,50/0,085/0,085 ÷ 15 × 10; IAAD = 0,60·C_geral +
-- 0,20·C_prazo + 0,20·P). NÃO reimplementa a fórmula em JS — o front só renderiza.
-- Lê das views iaad_aula_completion (já com win_pre/win_pos) e
-- iaad_performance_raw, então herda automaticamente o colapso das Aulas 1–3
-- e a correção da AF da Aula 9.
--
-- Segurança: expõe nome+matrícula+nota de TODA a turma → ADMIN-ONLY
-- (is_admin()). Idempotente (CREATE OR REPLACE).
-- ============================================================================

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
           SUM(CASE WHEN refl_nebulosa_done  THEN 0.085 ELSE 0 END) +
           SUM(CASE WHEN refl_aula_done      THEN 0.085 ELSE 0 END))
          / 15.0 * 10.0
        ) FROM public.iaad_aula_completion ac WHERE ac.user_id = pa.id
      ), 0)::numeric AS c_geral,
      COALESCE((
        SELECT (
          (SUM(CASE WHEN material_in_window       THEN 0.40  ELSE 0 END) +
           SUM(CASE WHEN quiz_pre_in_window       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN quiz_pos_in_window       THEN 0.30  ELSE 0 END) +
           SUM(CASE WHEN exerc_in_window          THEN 0.50  ELSE 0 END) +
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

COMMENT ON FUNCTION public.get_iaad_all_students() IS
'IAAD-30 por aluno (ADMIN-ONLY): nome, matricula, C_geral, C_prazo, P, IAAD. Mesma logica de get_iaad (SSOT); le iaad_aula_completion + iaad_performance_raw.';
