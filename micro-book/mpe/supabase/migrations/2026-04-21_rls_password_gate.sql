-- MPE Microeconomia I 2026/32 - Migration
-- Data: 2026-04-21
-- Objetivo: fechar o gate de troca de senha no backend via RLS.
--
-- Ate aqui, o gate de "trocar senha no primeiro acesso" vivia so no frontend
-- (portal.html checa password_changed_at antes de liberar a navegacao). Um
-- aluno com know-how de DevTools poderia bypassar a checagem e gravar
-- telemetria (page_visits, quiz_aggregates, reflections, etc) ainda com a
-- senha inicial. Esta migration move o gate para o Postgres:
--
--   1. Cria public.can_write_student_data() - retorna true se o profile do
--      auth.uid() tem password_changed_at preenchido OU role = 'admin'
--      (escape hatch para admin sempre escrever).
--   2. Refaz as policies *_own_insert e *_own_update de 8 tabelas de
--      tracking, adicionando AND public.can_write_student_data() na regra.
--
-- Policies de SELECT NAO sao alteradas (aluno continua podendo ler o
-- proprio historico mesmo antes de trocar a senha — nao ha problema de
-- seguranca em leitura do proprio dado). A tabela profiles tambem NAO eh
-- tocada: o aluno precisa conseguir gravar password_changed_at e
-- consented_lgpd justamente para destravar o gate.
--
-- Aplicar em: Supabase Dashboard > SQL Editor > New query > cole tudo > Run.
-- Idempotente: pode rodar varias vezes sem erro.


-- 1. Funcao gate

CREATE OR REPLACE FUNCTION public.can_write_student_data()
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.profiles
    WHERE id = auth.uid()
      AND (password_changed_at IS NOT NULL OR role = 'admin')
  );
$$;

COMMENT ON FUNCTION public.can_write_student_data() IS
  'Gate de escrita para tabelas de tracking. Bloqueia INSERT/UPDATE enquanto o aluno nao trocou a senha inicial. Admin tem escape hatch (sempre permitido).';


-- 2. Refaz policies *_own_insert e *_own_update das 8 tabelas de tracking
-- com o gate embutido. O loop reproduz o bloco do schema.sql — roda
-- isolado aqui para que essa migration seja autocontida.

DO $$
DECLARE
  t text;
  tables text[] := ARRAY[
    'page_visits',
    'section_progress',
    'confidence_ratings',
    'micro_attempts',
    'quiz_aggregates',
    'quiz_question_attempts',
    'paper_exercises',
    'reflections'
  ];
BEGIN
  FOREACH t IN ARRAY tables LOOP
    EXECUTE format('DROP POLICY IF EXISTS "%s_own_insert" ON public.%I', t, t);
    EXECUTE format('DROP POLICY IF EXISTS "%s_own_update" ON public.%I', t, t);

    EXECUTE format('CREATE POLICY "%s_own_insert" ON public.%I FOR INSERT WITH CHECK (auth.uid() = user_id AND public.can_write_student_data())', t, t);
    EXECUTE format('CREATE POLICY "%s_own_update" ON public.%I FOR UPDATE USING (auth.uid() = user_id AND public.can_write_student_data()) WITH CHECK (auth.uid() = user_id AND public.can_write_student_data())', t, t);
  END LOOP;
END $$;


-- 3. Verificacao pos-migration
--
--   -- Deve retornar 8 linhas, cada uma com qual = true nas 2 colunas.
--   SELECT
--     tablename,
--     policyname,
--     cmd,
--     qual   ILIKE '%can_write_student_data%' AS gate_in_using,
--     with_check ILIKE '%can_write_student_data%' AS gate_in_check
--   FROM pg_policies
--   WHERE schemaname = 'public'
--     AND policyname LIKE '%_own_insert' OR policyname LIKE '%_own_update'
--   ORDER BY tablename, policyname;
--
--   -- Smoke test: logado como aluno com password_changed_at IS NULL,
--   -- um INSERT em page_visits deve falhar com "new row violates
--   -- row-level security policy". Apos UPDATE profiles SET
--   -- password_changed_at = now() (permitido pela policy existente),
--   -- o mesmo INSERT deve passar.


-- -----------------------------------------------------------------------
-- ROLLBACK (descomentar e rodar em bloco caso precise reverter)
-- -----------------------------------------------------------------------
-- Volta as policies *_own_insert e *_own_update para a versao pre-gate
-- (sem can_write_student_data) e derruba a funcao. Seguro de rodar mesmo
-- se a funcao nao existir.
--
-- DO $$
-- DECLARE
--   t text;
--   tables text[] := ARRAY[
--     'page_visits',
--     'section_progress',
--     'confidence_ratings',
--     'micro_attempts',
--     'quiz_aggregates',
--     'quiz_question_attempts',
--     'paper_exercises',
--     'reflections'
--   ];
-- BEGIN
--   FOREACH t IN ARRAY tables LOOP
--     EXECUTE format('DROP POLICY IF EXISTS "%s_own_insert" ON public.%I', t, t);
--     EXECUTE format('DROP POLICY IF EXISTS "%s_own_update" ON public.%I', t, t);
--
--     EXECUTE format('CREATE POLICY "%s_own_insert" ON public.%I FOR INSERT WITH CHECK (auth.uid() = user_id)', t, t);
--     EXECUTE format('CREATE POLICY "%s_own_update" ON public.%I FOR UPDATE USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id)', t, t);
--   END LOOP;
-- END $$;
--
-- DROP FUNCTION IF EXISTS public.can_write_student_data();
