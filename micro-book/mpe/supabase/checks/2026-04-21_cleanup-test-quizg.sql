-- =======================================================================
-- MPE Fase B1 - Limpeza do smoke test MicroQuizGraded
-- Data: 2026-04-21
-- Motivo: apos validar o engine MicroQuizGraded em _test-quizg.html, o
--         banco ficou com 1 agregado + 3 tentativas de questao em
--         page_id='_test-quizg'. Remover para o dashboard nao misturar
--         dados de teste com turma real.
-- =======================================================================

DELETE FROM public.quiz_question_attempts WHERE page_id = '_test-quizg';
DELETE FROM public.quiz_aggregates        WHERE page_id = '_test-quizg';

-- Verificacao: zero linhas para _test-quizg
SELECT 'attempts' AS t, COUNT(*) AS n
FROM public.quiz_question_attempts WHERE page_id = '_test-quizg'
UNION ALL
SELECT 'aggregates', COUNT(*)
FROM public.quiz_aggregates WHERE page_id = '_test-quizg';
