-- =======================================================================
-- MPE Fase A - Runbook de checks (Baseline + Pos-validacao + Smoke)
-- Data: 2026-04-21
-- Uso: rodar no Supabase SQL Editor. Arquivo de leitura/verificacao,
--      NAO modifica schema. Seguro rodar quantas vezes quiser.
--
-- Ordem:
--   BLOCO 2.x  -> rodar ANTES da migration (baseline)
--   BLOCO M    -> rodar a migration (arquivo separado)
--   BLOCO 4.x  -> rodar DEPOIS da migration (pos-validacao)
--   BLOCO 5.x  -> smoke test apos aluno submeter quiz em aula-01
-- =======================================================================


-- ============================================================
-- ETAPA 2 - BASELINE (rodar antes da migration)
-- ============================================================

-- 2.1 Contagens atuais
SELECT 'quiz_aggregates' AS t, COUNT(*) AS n FROM public.quiz_aggregates
UNION ALL
SELECT 'quiz_question_attempts', COUNT(*) FROM public.quiz_question_attempts;


-- 2.2 Colunas atuais (esperado: sem phase/difficulty)
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('quiz_aggregates', 'quiz_question_attempts')
ORDER BY table_name, ordinal_position;


-- 2.3 Constraints UNIQUE / PK existentes
SELECT table_name, constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_schema = 'public'
  AND table_name IN ('quiz_aggregates', 'quiz_question_attempts')
  AND constraint_type IN ('UNIQUE', 'PRIMARY KEY')
ORDER BY table_name, constraint_type;


-- 2.4 Sanity: zero duplicados em (user_id, page_id)
-- Criterio de parada: esta query DEVE retornar 0 linhas.
SELECT user_id, page_id, COUNT(*) AS n
FROM public.quiz_aggregates
GROUP BY 1, 2
HAVING COUNT(*) > 1;



-- ============================================================
-- ETAPA 4 - POS-VALIDACAO (rodar depois da migration)
-- ============================================================

-- 4.1 Colunas novas existem com defaults corretos
-- Esperado: 5 linhas (phase em 2 tabelas + difficulty em 1)
SELECT table_name, column_name, data_type, column_default, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('quiz_aggregates', 'quiz_question_attempts')
  AND column_name IN ('phase', 'difficulty')
ORDER BY table_name, column_name;


-- 4.2 Dados antigos ficaram com phase='embedded'
-- Esperado: uma linha com phase='embedded' e n igual a 2.1.
SELECT phase, COUNT(*) AS n FROM public.quiz_aggregates GROUP BY phase;
SELECT phase, COUNT(*) AS n FROM public.quiz_question_attempts GROUP BY phase;


-- 4.3 Zero NULL em phase (CHECK + NOT NULL + DEFAULT garantem)
-- Esperado: 0 em ambos.
SELECT COUNT(*) AS nulls FROM public.quiz_aggregates WHERE phase IS NULL;
SELECT COUNT(*) AS nulls FROM public.quiz_question_attempts WHERE phase IS NULL;


-- 4.4 UNIQUE (user_id, page_id) PRESERVADO
-- Esperado: mesmo constraint_name de 2.3 continua existindo.
SELECT constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_schema = 'public'
  AND table_name = 'quiz_aggregates'
  AND constraint_type = 'UNIQUE';



-- ============================================================
-- ETAPA 5 - SMOKE TEST (rodar depois de submeter checkpoint em aula-01)
-- ============================================================

-- 5.1 Ver as ultimas submissoes de aula-01 com fase
SELECT user_id, page_id, phase, attempts, best_score, submitted_at, last_attempt_at
FROM public.quiz_aggregates
WHERE page_id = 'aula-01'
ORDER BY last_attempt_at DESC NULLS LAST
LIMIT 5;


-- 5.2 Ver as ultimas tentativas por questao em aula-01
SELECT user_id, page_id, phase, difficulty, question_id, correct, answered_at
FROM public.quiz_question_attempts
WHERE page_id = 'aula-01'
ORDER BY answered_at DESC
LIMIT 10;
