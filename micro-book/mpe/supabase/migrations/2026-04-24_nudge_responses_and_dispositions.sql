-- Migration: Nudge Queue — responder reflexoes + resolver/ignorar cards
-- Aplicar em: Supabase Dashboard > SQL Editor > New query > cole tudo > Run
-- Idempotente: seguro rodar varias vezes (usa IF NOT EXISTS + DROP POLICY IF EXISTS).
--
-- O que faz:
--   1. Estende public.reflections com 4 colunas opcionais para resposta do admin:
--      response_text, responded_at, responded_by, cited_in_class.
--   2. Adiciona policy admin_update em reflections (o aluno continua restrito
--      a propria reflexao pela policy reflections_own_update existente).
--   3. Cria tabela public.nudge_dispositions: registro de resolvido/ignorado
--      por item da Nudge Queue do dashboard admin.
--   4. Ativa RLS e define policies admin-only em nudge_dispositions.
--
-- Espelha a SSOT em supabase/schema.sql (secao "11. REFLECTIONS" e
-- "12. nudge_dispositions"). Se editar o schema, reaplique aqui tambem.


-- 1. reflections: colunas de resposta do admin -------------------------------

ALTER TABLE public.reflections
  ADD COLUMN IF NOT EXISTS response_text   text,
  ADD COLUMN IF NOT EXISTS responded_at    timestamptz,
  ADD COLUMN IF NOT EXISTS responded_by    uuid REFERENCES public.profiles(id) ON DELETE SET NULL,
  ADD COLUMN IF NOT EXISTS cited_in_class  boolean NOT NULL DEFAULT false;


-- 2. reflections: policy de update para admin (aluno segue com sua policy) ---

DROP POLICY IF EXISTS "reflections_admin_update" ON public.reflections;
CREATE POLICY "reflections_admin_update"
  ON public.reflections FOR UPDATE
  USING (public.is_admin())
  WITH CHECK (public.is_admin());


-- 3. nudge_dispositions: tabela de resolucao/ignorar ------------------------

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


-- 4. nudge_dispositions: RLS + policies admin-only --------------------------

ALTER TABLE public.nudge_dispositions ENABLE ROW LEVEL SECURITY;

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


-- Como desfazer (manual, cuidado — dados perdidos):
--   DROP TABLE IF EXISTS public.nudge_dispositions;
--   ALTER TABLE public.reflections DROP COLUMN IF EXISTS cited_in_class;
--   ALTER TABLE public.reflections DROP COLUMN IF EXISTS responded_by;
--   ALTER TABLE public.reflections DROP COLUMN IF EXISTS responded_at;
--   ALTER TABLE public.reflections DROP COLUMN IF EXISTS response_text;
--   DROP POLICY IF EXISTS "reflections_admin_update" ON public.reflections;
