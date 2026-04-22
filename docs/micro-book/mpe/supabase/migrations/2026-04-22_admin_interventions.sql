-- Migration: tabela admin_interventions
-- Rastreia intervenções do professor/admin com alunos (conversas, emails,
-- mensagens). Habilita timeline de cuidado no dashboard admin e permite
-- medir delta de comportamento pós-intervenção (Onda 2B).
--
-- Idempotente. Rodar no SQL Editor do Supabase.

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

CREATE INDEX IF NOT EXISTS idx_admin_interventions_student
  ON public.admin_interventions (student_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_admin_interventions_admin
  ON public.admin_interventions (admin_id, created_at DESC);

ALTER TABLE public.admin_interventions ENABLE ROW LEVEL SECURITY;

-- RLS: apenas admin lê, insere, atualiza e deleta.
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
