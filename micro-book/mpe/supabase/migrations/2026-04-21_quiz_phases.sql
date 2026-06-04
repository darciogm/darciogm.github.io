-- MPE Microeconomia I 2026/32 - Migration
-- Data: 2026-04-21
-- Objetivo: adicionar dimensao de FASE (embedded / pre_review / post) e
-- DIFICULDADE (yellow / red) a `quiz_aggregates` e `quiz_question_attempts`,
-- destravando a arquitetura de 3 paginas por aula (aula-XX + aula-XX-pre +
-- aula-XX-pos) sem poluir o `page_id` com convencao de sufixo.
--
-- Contexto:
--   - Ate 21/04, existia 1 quiz por page_id (o "checkpoint final" embutido
--     em aula-XX.html). O UNIQUE (user_id, page_id) em quiz_aggregates
--     refletia isso.
--   - A partir da Aula 1 (22/04) cada aula tem 3 paginas: conteudo, pre e
--     pos. Cada fase vai viver em uma page_id distinta ("aula-03",
--     "aula-03-pre", "aula-03-pos"), portanto o UNIQUE (user_id, page_id)
--     atual ja e suficiente para garantir 1 linha de agregado por quiz.
--     A coluna `phase` entra como descritor — facilita queries SQL (rollup
--     por fase, filtros no admin dashboard) sem depender de parsing de
--     sufixo no page_id. Decisao explicita do controlador (21/04): NAO
--     mexer no UNIQUE nesta migration, para manter `mpe-db.js` (que usa
--     onConflict='user_id,page_id') funcionando sem lockstep obrigatorio.
--   - `quiz_question_attempts` recebe tambem `difficulty` (NULL permitido
--     para fases embedded/pre_review; gravado 'yellow'/'red' so na fase
--     'post', onde a distribuicao 5🟡+5🔴 e o alvo pedagogico).
--
-- Escopo desta migration:
--   - ADITIVA. Nenhum DROP, DELETE, ALTER TYPE. So ADD COLUMN.
--   - UNIQUE (user_id, page_id) em quiz_aggregates permanece intacto.
--   - RLS intacta. As policies *_own_* e *_admin_select filtram so por
--     user_id / is_admin() — nao tocam phase/difficulty.
--   - `v_student_summary` nao e alterada. Como todas as fases vivem em
--     page_ids distintos, os rollups existentes (COUNT(DISTINCT page_id),
--     AVG(best_score)) continuam semanticamente corretos — aulas futuras
--     simplesmente passarao a contribuir com mais entradas por aluno.
--
-- Aplicar em: Supabase Dashboard > SQL Editor > New query > cole tudo > Run.
-- Idempotente: pode rodar varias vezes sem erro.


-- -----------------------------------------------------------------------
-- 1. Colunas `phase` nas duas tabelas de quiz
-- -----------------------------------------------------------------------
-- DEFAULT 'embedded' garante que linhas existentes (criadas antes da
-- migration) ficam automaticamente classificadas como quiz embutido — que
-- e exatamente o que sao (caso aula-01). Novas insercoes das paginas
-- aula-XX-pre / aula-XX-pos passarao 'pre_review' / 'post' explicitamente.

ALTER TABLE public.quiz_aggregates
  ADD COLUMN IF NOT EXISTS phase text NOT NULL DEFAULT 'embedded'
  CHECK (phase IN ('embedded','pre_review','post'));

ALTER TABLE public.quiz_question_attempts
  ADD COLUMN IF NOT EXISTS phase text NOT NULL DEFAULT 'embedded'
  CHECK (phase IN ('embedded','pre_review','post'));


-- -----------------------------------------------------------------------
-- 2. Coluna `difficulty` em quiz_question_attempts
-- -----------------------------------------------------------------------
-- NULL permitido porque embedded e pre_review nao classificam por cor — o
-- quiz embedded da aula-01 foi todo homogeneo e o pre_review e 10x
-- intermediario puro. So a fase 'post' grava explicitamente 'yellow' ou
-- 'red' para alimentar metricas pedagogicas (ex: % acerto por calibre).

ALTER TABLE public.quiz_question_attempts
  ADD COLUMN IF NOT EXISTS difficulty text
  CHECK (difficulty IS NULL OR difficulty IN ('yellow','red'));


-- -----------------------------------------------------------------------
-- 3. Verificacao pos-migration (rodar manualmente apos Run)
-- -----------------------------------------------------------------------
--
--   -- 3.1. Colunas novas existem, com defaults corretos
--   SELECT column_name, data_type, column_default, is_nullable
--   FROM information_schema.columns
--   WHERE table_schema = 'public'
--     AND table_name IN ('quiz_aggregates','quiz_question_attempts')
--     AND column_name IN ('phase','difficulty')
--   ORDER BY table_name, column_name;
--
--   -- 3.2. Dados antigos ficaram com phase = 'embedded'
--   SELECT phase, COUNT(*) FROM public.quiz_aggregates GROUP BY phase;
--   SELECT phase, COUNT(*) FROM public.quiz_question_attempts GROUP BY phase;
--   -- (esperado: tudo em 'embedded' apos a migration; 0 linhas nas outras
--   -- fases ate as paginas aula-XX-pre / aula-XX-pos serem publicadas)
--
--   -- 3.3. Nenhum NULL em phase (CHECK + NOT NULL + DEFAULT garantem isso)
--   SELECT COUNT(*) FROM public.quiz_aggregates WHERE phase IS NULL;
--   SELECT COUNT(*) FROM public.quiz_question_attempts WHERE phase IS NULL;
--   -- (esperado: 0 e 0)
--
--   -- 3.4. UNIQUE antigo preservado
--   SELECT constraint_name FROM information_schema.table_constraints
--   WHERE table_schema='public' AND table_name='quiz_aggregates'
--     AND constraint_type='UNIQUE';
--   -- (esperado: ainda existe — nome gerado pelo Postgres, tipicamente
--   -- quiz_aggregates_user_id_page_id_key)


-- -----------------------------------------------------------------------
-- ROLLBACK (descomentar e rodar em bloco caso precise reverter)
-- -----------------------------------------------------------------------
--
-- ALTER TABLE public.quiz_question_attempts DROP COLUMN IF EXISTS difficulty;
-- ALTER TABLE public.quiz_question_attempts DROP COLUMN IF EXISTS phase;
-- ALTER TABLE public.quiz_aggregates DROP COLUMN IF EXISTS phase;
--
-- Como a migration nao mexeu em UNIQUE, o rollback e 3 linhas e sempre seguro.
