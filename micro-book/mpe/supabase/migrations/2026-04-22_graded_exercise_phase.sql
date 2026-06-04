-- Migration: adiciona phase 'graded_exercise' aos CHECK constraints de
-- quiz_aggregates e quiz_question_attempts para habilitar os "Exercicios
-- avaliativos" da aula 1 (e aulas seguintes) reusando o engine MicroQuizGraded.
--
-- Rodar no SQL Editor do Supabase. Idempotente.

-- quiz_aggregates.phase
ALTER TABLE public.quiz_aggregates DROP CONSTRAINT IF EXISTS quiz_aggregates_phase_check;
ALTER TABLE public.quiz_aggregates ADD CONSTRAINT quiz_aggregates_phase_check
  CHECK (phase IN ('embedded','pre_review','post','graded_exercise'));

-- quiz_question_attempts.phase
ALTER TABLE public.quiz_question_attempts DROP CONSTRAINT IF EXISTS quiz_question_attempts_phase_check;
ALTER TABLE public.quiz_question_attempts ADD CONSTRAINT quiz_question_attempts_phase_check
  CHECK (phase IN ('embedded','pre_review','post','graded_exercise'));

-- quiz_question_attempts.difficulty: adicionar 'green' para exerc. avaliativos (🟢)
ALTER TABLE public.quiz_question_attempts DROP CONSTRAINT IF EXISTS quiz_question_attempts_difficulty_check;
ALTER TABLE public.quiz_question_attempts ADD CONSTRAINT quiz_question_attempts_difficulty_check
  CHECK (difficulty IS NULL OR difficulty IN ('yellow','red','green'));
