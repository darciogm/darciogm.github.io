-- =======================================================================
-- MPE Fase B2 - Limpeza do smoke test dos skeletons aula-02-pre/pos
-- Data: 2026-04-21
-- Motivo: apos validar os skeletons aula-02-pre.html e aula-02-pos.html no
--         browser (submit + rehidratacao), o banco ficou com 2 agregados e
--         20 tentativas de questao em page_ids aula-02-pre / aula-02-pos.
--         Remover antes da turma chegar em 29/04.
-- =======================================================================

DELETE FROM public.quiz_question_attempts
WHERE page_id IN ('aula-02-pre','aula-02-pos');

DELETE FROM public.quiz_aggregates
WHERE page_id IN ('aula-02-pre','aula-02-pos');

-- Verificacao: zero linhas para ambos os page_ids
SELECT 'attempts' AS t, COUNT(*) AS n
FROM public.quiz_question_attempts
WHERE page_id IN ('aula-02-pre','aula-02-pos')
UNION ALL
SELECT 'aggregates', COUNT(*)
FROM public.quiz_aggregates
WHERE page_id IN ('aula-02-pre','aula-02-pos');
