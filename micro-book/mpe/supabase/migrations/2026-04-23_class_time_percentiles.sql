-- Migration 2026-04-23: RPC get_class_time_percentiles()
--
-- Contexto: a Onda 1 do portal do aluno (nudge R3 em buildNudges) precisa
-- comparar o tempo gasto pelo aluno em uma seção com o ritmo da turma (P25).
-- RLS bloqueia leitura cross-aluno de section_progress (bom), então
-- expomos um agregado SECURITY DEFINER que devolve APENAS percentis por
-- page_id — zero PII.
--
-- Privacy gates:
--   * HAVING COUNT(DISTINCT user_id) >= 5  →  k-anonymity (k=5).
--   * Janela 30s–7200s filtra sessões órfãs (abandonadas) e tabs esquecidas.
--
-- Aplicar no SQL Editor do Supabase (New query → colar tudo → Run).
-- Idempotente (CREATE OR REPLACE).

CREATE OR REPLACE FUNCTION public.get_class_time_percentiles()
RETURNS TABLE(
  page_id         text,
  n_students      int,
  p25_seconds     int,
  p50_seconds     int,
  p75_seconds     int
)
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT
    sp.page_id,
    COUNT(DISTINCT sp.user_id)::int                                                                                    AS n_students,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (sp.completed_at - sp.started_at)))::int            AS p25_seconds,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (sp.completed_at - sp.started_at)))::int            AS p50_seconds,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (sp.completed_at - sp.started_at)))::int            AS p75_seconds
  FROM public.section_progress sp
  WHERE sp.completed_at IS NOT NULL
    AND sp.started_at   IS NOT NULL
    AND EXTRACT(EPOCH FROM (sp.completed_at - sp.started_at)) BETWEEN 30 AND 7200
  GROUP BY sp.page_id
  HAVING COUNT(DISTINCT sp.user_id) >= 5;
$$;

GRANT EXECUTE ON FUNCTION public.get_class_time_percentiles() TO authenticated;
