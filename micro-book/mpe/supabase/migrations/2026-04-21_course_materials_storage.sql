-- Migration: bucket privado `course-materials` para PDFs proprietarios
-- (N&S, Jehle-Reny, MWG, slides PDF) com acesso via signed URL gerado
-- on-click pelo frontend, de modo que somente alunos autenticados consigam
-- baixar. Admin pode listar/escrever direto pelo dashboard Supabase.
--
-- Rodar no SQL Editor do Supabase. Idempotente.

-- 1. Bucket privado (public = false)
insert into storage.buckets (id, name, public)
values ('course-materials', 'course-materials', false)
on conflict (id) do nothing;

-- 2. Policies de leitura: somente usuarios autenticados
drop policy if exists "course_materials_select_authenticated" on storage.objects;
create policy "course_materials_select_authenticated"
  on storage.objects for select
  to authenticated
  using (bucket_id = 'course-materials');

-- 3. Writes (upload/replace/delete) apenas para admins.
-- Usa a funcao public.is_admin() ja definida em schema.sql.
drop policy if exists "course_materials_insert_admin" on storage.objects;
create policy "course_materials_insert_admin"
  on storage.objects for insert
  to authenticated
  with check (bucket_id = 'course-materials' and public.is_admin());

drop policy if exists "course_materials_update_admin" on storage.objects;
create policy "course_materials_update_admin"
  on storage.objects for update
  to authenticated
  using (bucket_id = 'course-materials' and public.is_admin());

drop policy if exists "course_materials_delete_admin" on storage.objects;
create policy "course_materials_delete_admin"
  on storage.objects for delete
  to authenticated
  using (bucket_id = 'course-materials' and public.is_admin());
