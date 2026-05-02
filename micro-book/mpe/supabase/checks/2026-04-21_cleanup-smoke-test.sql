-- =======================================================================
-- MPE Fase A - Limpeza do smoke test
-- Data: 2026-04-21
-- Motivo: o smoke test que validou o upsert apos a migration deixou 1
--         agregado + 3 tentativas de questao no banco de producao.
--         Remover antes da Aula 1 (22/04) para o dashboard de turma
--         comecar zerado.
--
-- user_id abaixo e da conta admin do Darcio (observado em 5.1 apos o
-- submit do Checkpoint Pre-Aula 01 em aula-01.html).
-- =======================================================================


-- 1. Deletar as tentativas por questao
-- Esperado: 3 linhas afetadas.

DELETE FROM public.quiz_question_attempts
WHERE user_id = '095ab8e9-66ae-4695-804f-158e5b34e1f3'
  AND page_id = 'aula-01';


-- 2. Deletar o agregado
-- Esperado: 1 linha afetada.

DELETE FROM public.quiz_aggregates
WHERE user_id = '095ab8e9-66ae-4695-804f-158e5b34e1f3'
  AND page_id = 'aula-01';


-- 3. Verificacao pos-cleanup
-- Esperado: zero linhas em ambas as contagens.

SELECT phase, COUNT(*) AS n FROM public.quiz_aggregates GROUP BY phase;
SELECT phase, COUNT(*) AS n FROM public.quiz_question_attempts GROUP BY phase;
