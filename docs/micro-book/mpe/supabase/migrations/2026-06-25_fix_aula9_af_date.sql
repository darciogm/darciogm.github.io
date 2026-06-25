-- ============================================================================
-- Correção: AF da Aula 9 no backend — 24/06 → 25/06 (alinha com calendario.js)
-- ============================================================================
-- Achado em 2026-06-25 ao verificar o colapso de C_prazo: a tabela
-- public.iaad_calendar ainda tinha next_presencial_at[9] = 2026-06-24 19:30,
-- mas a Avaliação Final foi movida para 2026-06-25 19:30 (jogo do Brasil na
-- Copa). O frontend (calendario.js, AVALIACAO_FINAL) já usa 25/06; o backend
-- ficou para trás porque a migration 2026-06-04_af_2026-06-25.sql nunca foi
-- aplicada à iaad_calendar (o INSERT original usa ON CONFLICT DO NOTHING, que
-- preserva a linha antiga).
--
-- Impacto corrigido: a janela canônica de C_prazo do pós/exerc da Aula 9
-- (win_pos) fechava um dia cedo (24/06), penalizando indevidamente quem
-- entregasse na janela correta até a AF (25/06 19:30).
--
-- win_pre[9] (material/pré/refl → 17/06) está correto e NÃO é alterado.
-- Idempotente.
-- ============================================================================

UPDATE public.iaad_calendar
   SET next_presencial_at = '2026-06-25 19:30:00-03',
       win_pos            = '2026-06-25 19:30:00-03'
 WHERE aula_n = 9;
