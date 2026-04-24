-- MPE Microeconomia I 2026/32 - Schema Supabase
-- Aplicar em: Supabase Dashboard > SQL Editor > New query > cole tudo > Run
-- Seguro rodar varias vezes (IF NOT EXISTS + DROP/CREATE POLICY)

-- Extensao para gen_random_uuid
CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- 1. PROFILES - estende auth.users com dados do app

CREATE TABLE IF NOT EXISTS public.profiles (
  id              uuid        PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  matricula       text        UNIQUE NOT NULL,
  nome            text        NOT NULL,
  email           text,
  role            text        NOT NULL DEFAULT 'student' CHECK (role IN ('student','admin')),
  consented_lgpd  timestamptz,
  created_at      timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_profiles_matricula ON public.profiles (matricula);
CREATE INDEX IF NOT EXISTS idx_profiles_role       ON public.profiles (role);


-- 2. is_admin() - helper para RLS policies (SECURITY DEFINER evita recursao)

CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS boolean
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.profiles
    WHERE id = auth.uid() AND role = 'admin'
  );
$$;


-- 2b. can_write_student_data() - gate de escrita para tabelas de tracking.
-- Bloqueia INSERT/UPDATE em telemetria enquanto o aluno nao trocou a senha
-- inicial. Admin tem escape hatch: sempre pode escrever, independente de
-- password_changed_at (util para smoke test, backfill manual, etc).
-- SECURITY DEFINER para ler profiles sem recair nas policies da propria
-- profiles (evita recursao e permite leitura mesmo com RLS ativa).

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


-- 3. Trigger: ao criar conta em auth, cria profile automaticamente

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.profiles (id, matricula, nome, email, role)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'matricula', NEW.email),
    COALESCE(NEW.raw_user_meta_data->>'nome', split_part(NEW.email, '@', 1)),
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'role', 'student')
  )
  ON CONFLICT (id) DO NOTHING;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


-- 4. PAGE_VISITS - agregado por (user, page)

CREATE TABLE IF NOT EXISTS public.page_visits (
  id             uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id        text        NOT NULL,
  visits         integer     NOT NULL DEFAULT 0,
  total_time_ms  bigint      NOT NULL DEFAULT 0,
  first_visit_at timestamptz,
  last_visit_at  timestamptz,
  updated_at     timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, page_id)
);
CREATE INDEX IF NOT EXISTS idx_page_visits_user ON public.page_visits (user_id);
CREATE INDEX IF NOT EXISTS idx_page_visits_page ON public.page_visits (page_id);


-- 5. SECTION_PROGRESS - uma linha por (user, page, section)

CREATE TABLE IF NOT EXISTS public.section_progress (
  id            uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id       text        NOT NULL,
  section_id    text        NOT NULL,
  started_at    timestamptz,
  completed_at  timestamptz,
  updated_at    timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, page_id, section_id)
);
CREATE INDEX IF NOT EXISTS idx_section_progress_user_page ON public.section_progress (user_id, page_id);


-- 6. CONFIDENCE_RATINGS - slider 1-5, phases 'pre' e 'post'

CREATE TABLE IF NOT EXISTS public.confidence_ratings (
  id           uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id      uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id      text        NOT NULL,
  section_id   text        NOT NULL,
  phase        text        NOT NULL CHECK (phase IN ('pre','post')),
  value        integer     NOT NULL CHECK (value BETWEEN 1 AND 5),
  recorded_at  timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, page_id, section_id, phase)
);
CREATE INDEX IF NOT EXISTS idx_confidence_user_page ON public.confidence_ratings (user_id, page_id);


-- 7. MICRO_ATTEMPTS - cada tentativa do micro-checkpoint

CREATE TABLE IF NOT EXISTS public.micro_attempts (
  id           uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id      uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id      text        NOT NULL,
  section_id   text        NOT NULL,
  question_id  text        NOT NULL,
  answer       text        NOT NULL,
  correct      boolean     NOT NULL,
  attempt_num  integer     NOT NULL,
  answered_at  timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_micro_attempts_user_page ON public.micro_attempts (user_id, page_id);


-- 8. QUIZ_AGGREGATES - estado agregado por (user, page)
-- Cada fase vive em uma page_id distinta (aula-XX, aula-XX-pre, aula-XX-pos),
-- entao UNIQUE (user_id, page_id) ja e suficiente. A coluna `phase` e
-- descritiva: facilita queries ("WHERE phase='post'") e rollups por fase no
-- admin dashboard sem depender de convencao de sufixo no page_id.
-- phase: 'embedded' (quiz embutido em aula-XX.html - legado aula-01),
--        'pre_review' (quiz de 10 questoes 🟡 em aula-XX-pre.html),
--        'post' (quiz de 5🟡+5🔴 em aula-XX-pos.html).

CREATE TABLE IF NOT EXISTS public.quiz_aggregates (
  id              uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id         uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id         text        NOT NULL,
  phase           text        NOT NULL DEFAULT 'embedded' CHECK (phase IN ('embedded','pre_review','post','graded_exercise')),
  attempts        integer     NOT NULL DEFAULT 0,
  best_score      integer     NOT NULL DEFAULT 0,
  last_attempt_at timestamptz,
  submitted_at    timestamptz,
  UNIQUE (user_id, page_id)
);
CREATE INDEX IF NOT EXISTS idx_quiz_aggregates_user ON public.quiz_aggregates (user_id);


-- 9. QUIZ_QUESTION_ATTEMPTS - historico detalhado por questao do quiz
-- phase: mesma semantica de quiz_aggregates.
-- difficulty: 'yellow' / 'red' gravado so na fase 'post' (5🟡+5🔴); NULL nas
-- fases 'embedded' e 'pre_review' (que sao homogeneas por design).

CREATE TABLE IF NOT EXISTS public.quiz_question_attempts (
  id            uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id       text        NOT NULL,
  phase         text        NOT NULL DEFAULT 'embedded' CHECK (phase IN ('embedded','pre_review','post','graded_exercise')),
  difficulty    text        CHECK (difficulty IS NULL OR difficulty IN ('yellow','red','green')),
  question_id   text        NOT NULL,
  answer        text        NOT NULL,
  correct       boolean     NOT NULL,
  answered_at   timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_quiz_qa_user_page ON public.quiz_question_attempts (user_id, page_id);


-- 10. PAPER_EXERCISES - checkbox + textarea de abordagem

CREATE TABLE IF NOT EXISTS public.paper_exercises (
  id            uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id       text        NOT NULL,
  exercise_id   text        NOT NULL,
  approach      text        NOT NULL,
  completed_at  timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, page_id, exercise_id)
);
CREATE INDEX IF NOT EXISTS idx_paper_exercises_user_page ON public.paper_exercises (user_id, page_id);


-- 11. REFLECTIONS - respostas qualitativas
-- Colunas response_* permitem o admin (Darcio) responder a reflexao diretamente
-- no dashboard (Nudge Queue) e o aluno ver a resposta no portal (E6).
-- cited_in_class sinaliza que a reflexao foi mencionada em aula (reforco
-- explicito do valor pedagogico de refletir com profundidade).

CREATE TABLE IF NOT EXISTS public.reflections (
  id              uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id         uuid        NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  page_id         text        NOT NULL,
  prompt_id       text        NOT NULL,
  text            text        NOT NULL,
  submitted_at    timestamptz NOT NULL DEFAULT now(),
  response_text   text,
  responded_at    timestamptz,
  responded_by    uuid        REFERENCES public.profiles(id) ON DELETE SET NULL,
  cited_in_class  boolean     NOT NULL DEFAULT false,
  UNIQUE (user_id, page_id, prompt_id)
);
CREATE INDEX IF NOT EXISTS idx_reflections_user_page ON public.reflections (user_id, page_id);

-- Backfill para instalacoes existentes onde a tabela ja foi criada sem as
-- colunas de resposta.
ALTER TABLE public.reflections
  ADD COLUMN IF NOT EXISTS response_text   text,
  ADD COLUMN IF NOT EXISTS responded_at    timestamptz,
  ADD COLUMN IF NOT EXISTS responded_by    uuid REFERENCES public.profiles(id) ON DELETE SET NULL,
  ADD COLUMN IF NOT EXISTS cited_in_class  boolean NOT NULL DEFAULT false;


-- 11. admin_interventions - registro de conversas/ações do admin com alunos
--     Onda 2B: timeline de cuidado + base para delta de comportamento pós-intervenção.

CREATE TABLE IF NOT EXISTS public.admin_interventions (
  id                    uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id            uuid        NOT NULL REFERENCES public.profiles(id) ON DELETE CASCADE,
  admin_id              uuid        NOT NULL REFERENCES public.profiles(id) ON DELETE SET NULL,
  kind                  text        NOT NULL DEFAULT 'conversation'
                                    CHECK (kind IN ('conversation','email','whatsapp','meeting','nudge','other')),
  topic                 text,
  note                  text        NOT NULL,
  outcome               text,
  outcome_recorded_at   timestamptz,
  created_at            timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_admin_interventions_student ON public.admin_interventions (student_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_admin_interventions_admin   ON public.admin_interventions (admin_id, created_at DESC);


-- 12. nudge_dispositions - registro de "resolvido" / "ignorado" por item da
--     Nudge Queue do dashboard admin. Evita que o mesmo card volte a aparecer
--     imediatamente apos o Darcio cuidar dele (ou decidir nao cuidar).
--     - category='reflection' aponta para uma reflexao especifica (reflection_id).
--     - demais categorias (inactive/critical/silent/star) sao por aluno (student_id).
--     - kind='resolved' some do feed por 14 dias; se a condicao persistir,
--       o aluno volta automaticamente (computacao client-side em admin.html).
--     - kind='ignored' some permanentemente (ate reset manual no SQL Editor).

CREATE TABLE IF NOT EXISTS public.nudge_dispositions (
  id                  uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id          uuid        REFERENCES public.profiles(id) ON DELETE CASCADE,
  reflection_id       uuid        REFERENCES public.reflections(id) ON DELETE CASCADE,
  category            text        NOT NULL
                                  CHECK (category IN ('inactive','critical','silent','star','reflection')),
  kind                text        NOT NULL DEFAULT 'resolved'
                                  CHECK (kind IN ('resolved','ignored')),
  note                text,
  dispositioned_by    uuid        REFERENCES public.profiles(id) ON DELETE SET NULL,
  dispositioned_at    timestamptz NOT NULL DEFAULT now(),
  CHECK (
    (category = 'reflection' AND reflection_id IS NOT NULL)
    OR (category <> 'reflection' AND student_id IS NOT NULL)
  )
);
CREATE INDEX IF NOT EXISTS idx_nudge_disp_student ON public.nudge_dispositions (student_id, category, dispositioned_at DESC);
CREATE INDEX IF NOT EXISTS idx_nudge_disp_refl    ON public.nudge_dispositions (reflection_id);


-- ROW-LEVEL SECURITY - ativa em todas as tabelas

ALTER TABLE public.profiles               ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.page_visits            ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.section_progress       ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.confidence_ratings     ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.micro_attempts         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.quiz_aggregates        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.quiz_question_attempts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.paper_exercises        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.reflections            ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.admin_interventions    ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.nudge_dispositions     ENABLE ROW LEVEL SECURITY;


-- Policies: profiles

DROP POLICY IF EXISTS "profiles_select_own"   ON public.profiles;
DROP POLICY IF EXISTS "profiles_select_admin" ON public.profiles;
DROP POLICY IF EXISTS "profiles_update_own"   ON public.profiles;

CREATE POLICY "profiles_select_own"
  ON public.profiles FOR SELECT
  USING (auth.uid() = id);

CREATE POLICY "profiles_select_admin"
  ON public.profiles FOR SELECT
  USING (public.is_admin());

CREATE POLICY "profiles_update_own"
  ON public.profiles FOR UPDATE
  USING (auth.uid() = id)
  WITH CHECK (auth.uid() = id AND role = 'student');


-- Policies: tabelas de tracking (aluno faz CRUD no proprio; admin le tudo)

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
    EXECUTE format('DROP POLICY IF EXISTS "%s_own_select" ON public.%I', t, t);
    EXECUTE format('DROP POLICY IF EXISTS "%s_own_insert" ON public.%I', t, t);
    EXECUTE format('DROP POLICY IF EXISTS "%s_own_update" ON public.%I', t, t);
    EXECUTE format('DROP POLICY IF EXISTS "%s_admin_select" ON public.%I', t, t);

    EXECUTE format('CREATE POLICY "%s_own_select" ON public.%I FOR SELECT USING (auth.uid() = user_id)', t, t);
    EXECUTE format('CREATE POLICY "%s_own_insert" ON public.%I FOR INSERT WITH CHECK (auth.uid() = user_id AND public.can_write_student_data())', t, t);
    EXECUTE format('CREATE POLICY "%s_own_update" ON public.%I FOR UPDATE USING (auth.uid() = user_id AND public.can_write_student_data()) WITH CHECK (auth.uid() = user_id AND public.can_write_student_data())', t, t);
    EXECUTE format('CREATE POLICY "%s_admin_select" ON public.%I FOR SELECT USING (public.is_admin())', t, t);
  END LOOP;
END $$;


-- RLS adicional: reflections - admin atualiza colunas de resposta
-- Obs: a policy reflections_own_update (gerada no loop acima) permanece ativa
-- e continua restringindo o aluno ao proprio registro. Esta policy soma um
-- caminho exclusivo para admin, sem afrouxar as garantias do aluno.
-- Admin pode atualizar qualquer linha (no app, so tocamos em response_text,
-- responded_at, responded_by, cited_in_class — o campo `text` do aluno e
-- preservado pelo codigo client-side em mpe-db.js).

DROP POLICY IF EXISTS "reflections_admin_update" ON public.reflections;
CREATE POLICY "reflections_admin_update"
  ON public.reflections FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());


-- RLS: admin_interventions - CRUD exclusivo de admins

DROP POLICY IF EXISTS "admin_interventions_admin_select" ON public.admin_interventions;
CREATE POLICY "admin_interventions_admin_select"
  ON public.admin_interventions FOR SELECT
  USING (public.is_admin());

DROP POLICY IF EXISTS "admin_interventions_admin_insert" ON public.admin_interventions;
CREATE POLICY "admin_interventions_admin_insert"
  ON public.admin_interventions FOR INSERT
  WITH CHECK (public.is_admin() AND admin_id = auth.uid());

DROP POLICY IF EXISTS "admin_interventions_admin_update" ON public.admin_interventions;
CREATE POLICY "admin_interventions_admin_update"
  ON public.admin_interventions FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "admin_interventions_admin_delete" ON public.admin_interventions;
CREATE POLICY "admin_interventions_admin_delete"
  ON public.admin_interventions FOR DELETE
  USING (public.is_admin());


-- RLS: nudge_dispositions - CRUD exclusivo de admins (mesma regra de
-- admin_interventions; dispositions sao decisoes operacionais do professor).

DROP POLICY IF EXISTS "nudge_disp_admin_select" ON public.nudge_dispositions;
CREATE POLICY "nudge_disp_admin_select"
  ON public.nudge_dispositions FOR SELECT
  USING (public.is_admin());

DROP POLICY IF EXISTS "nudge_disp_admin_insert" ON public.nudge_dispositions;
CREATE POLICY "nudge_disp_admin_insert"
  ON public.nudge_dispositions FOR INSERT
  WITH CHECK (public.is_admin() AND (dispositioned_by IS NULL OR dispositioned_by = auth.uid()));

DROP POLICY IF EXISTS "nudge_disp_admin_update" ON public.nudge_dispositions;
CREATE POLICY "nudge_disp_admin_update"
  ON public.nudge_dispositions FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "nudge_disp_admin_delete" ON public.nudge_dispositions;
CREATE POLICY "nudge_disp_admin_delete"
  ON public.nudge_dispositions FOR DELETE
  USING (public.is_admin());


-- View auxiliar para dashboard admin

CREATE OR REPLACE VIEW public.v_student_summary AS
SELECT
  p.id                         AS user_id,
  p.matricula,
  p.nome,
  p.email,
  p.role,
  COUNT(DISTINCT pv.page_id)   AS pages_visited,
  COALESCE(SUM(pv.total_time_ms)/60000, 0)::int AS total_time_min,
  (SELECT COUNT(DISTINCT page_id) FROM public.quiz_aggregates qa WHERE qa.user_id = p.id AND qa.attempts > 0) AS quizzes_completed,
  (SELECT AVG(best_score)::int FROM public.quiz_aggregates qa WHERE qa.user_id = p.id AND qa.attempts > 0) AS avg_best_score
FROM public.profiles p
LEFT JOIN public.page_visits pv ON pv.user_id = p.id
GROUP BY p.id, p.matricula, p.nome, p.email, p.role;


-- RPC: percentis de tempo de seção por página (para nudges de ritmo no portal).
-- Retorna APENAS agregados — zero PII. Usa SECURITY DEFINER para ler
-- section_progress por baixo da RLS (aluno não pode ler tempo de colegas
-- diretamente, mas pode consumir o agregado k-anônimo).
-- Gate de privacidade: HAVING COUNT(DISTINCT user_id) >= 5 (k-anonymity).
-- Janela 30s–7200s filtra sessões órfãs/abandonadas.

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
