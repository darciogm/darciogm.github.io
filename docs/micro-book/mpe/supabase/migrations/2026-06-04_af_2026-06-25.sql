-- ============================================================================
-- AF movida: qua 24/06/2026 19:00 → qui 25/06/2026 19:30–22:30
-- Motivo: jogo do Brasil na Copa em 24/06.
--
-- Atualiza o SSOT do calendário canônico (iaad_calendar): o
-- next_presencial_at da Aula 9 é a data/hora da AF e governa a janela
-- canônica do pós-aula 9 e dos exercícios avaliativos 9 (cramming/atraso/
-- inbox de gabarito). O gating real de submissão NÃO muda (acesso livre
-- até 02/07/2026 18:00).
--
-- Espelho JS já atualizado: platform/js/calendario.js (AVALIACAO_FINAL).
-- Seed idempotente também atualizado em 2026-05-09_iaad30.sql.
--
-- Rodar no SQL Editor do Supabase. Idempotente.
-- ============================================================================

UPDATE public.iaad_calendar
SET next_presencial_at = '2026-06-25 19:30:00-03'
WHERE aula_n = 9
  AND next_presencial_at IS DISTINCT FROM '2026-06-25 19:30:00-03';

-- Verificação:
-- SELECT aula_n, presencial_at, next_presencial_at FROM public.iaad_calendar WHERE aula_n = 9;
-- Esperado: next_presencial_at = 2026-06-25 19:30:00-03
