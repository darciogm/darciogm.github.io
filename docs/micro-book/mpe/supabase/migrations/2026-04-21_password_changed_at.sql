-- MPE Microeconomia I 2026/32 - Migration
-- Data: 2026-04-21
-- Objetivo: forcar troca de senha no primeiro acesso do aluno.
--
-- Adiciona profiles.password_changed_at (NULL = senha inicial ainda nao trocada).
-- Admins pre-existentes e qualquer conta que NAO seja da turma importada
-- recebem backfill = now() para nao cair no gate.
--
-- Aplicar em: Supabase Dashboard > SQL Editor > New query > cole tudo > Run.
-- Idempotente: pode rodar varias vezes sem erro.


-- 1. Coluna password_changed_at

ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS password_changed_at timestamptz;

COMMENT ON COLUMN public.profiles.password_changed_at IS
  'Timestamp da primeira troca de senha pelo proprio aluno. NULL = ainda usando a senha inicial enviada no import da turma.';


-- 2. Backfill seguro
--
-- Regra: qualquer conta que NAO faca parte da turma importada recebe
-- password_changed_at = now(), para nao ser bloqueada pelo gate.
-- Identificamos contas "da turma" pelo padrao da senha inicial do
-- import-turma.js: todas recebem matricula com 9+ digitos e tem role=student.
--
-- Conservador: so marca como "ja trocada" quem (a) eh admin OU (b) nao tem
-- role=student. O resto (alunos) tem que trocar no primeiro acesso.
--
-- Se a turma ja foi importada mas alguns alunos ja trocaram a senha por
-- conta propria (via reset-password flow), a coluna fica NULL para eles e
-- o gate pedira para trocar de novo — inconveniente porem inocuo (single
-- cost only).

UPDATE public.profiles
SET password_changed_at = now()
WHERE password_changed_at IS NULL
  AND role <> 'student';


-- 3. (Opcional) Policy: aluno pode atualizar apenas password_changed_at
-- no proprio profile. Ja coberto pela policy profiles_update_own existente
-- (WITH CHECK auth.uid() = id AND role = 'student'), que permite UPDATE
-- de qualquer coluna no proprio registro desde que role continue 'student'.
-- Nenhuma policy nova necessaria.


-- 4. Verificacao pos-migration
--
--   SELECT
--     COUNT(*) FILTER (WHERE role = 'student' AND password_changed_at IS NULL) AS alunos_pendentes,
--     COUNT(*) FILTER (WHERE role = 'student' AND password_changed_at IS NOT NULL) AS alunos_trocaram,
--     COUNT(*) FILTER (WHERE role = 'admin') AS admins
--   FROM public.profiles;
--
-- Esperado logo apos a migration:
--   alunos_pendentes = tamanho da turma (toda a turma tem que trocar)
--   alunos_trocaram  = 0
--   admins           >= 1
