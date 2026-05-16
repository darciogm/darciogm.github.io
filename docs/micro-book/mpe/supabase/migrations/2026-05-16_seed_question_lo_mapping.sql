-- =====================================================================
-- Mapeamento questão → Learning Objective (LO) — MPE Micro I 2026/32
-- Gerado em 2026-05-16. Cobre as ~360 sub-questões dos 27 arquivos de
-- quiz/exercícios em platform/aula-XX-{pre,pos,exerc}.html.
--
-- Aplicar APÓS a migration 2026-05-16_lo_taxonomy_and_sentiment.sql
-- (que cria public.learning_objectives e public.question_learning_objectives).
--
-- Idempotente: ON CONFLICT (page_id, question_id, lo_id) DO NOTHING.
-- Cada questão recebe 1 ou 2 LOs; pesos somam <= 1.0 por questão (a
-- soma é estritamente 1.0 em quase todas as questões; algumas Q10 meta
-- distribuem em 4 LOs com peso 0.25 cada).
--
-- Convenções de classificação:
--   - Sinal forte = ponto-chave do gabarito 5-passos (não a "tag" no
--     enunciado).
--   - Retenção: questões de aulas posteriores que testam conteúdo
--     anterior são classificadas no LO original (ex.: questão da pré-04
--     que pede TMS Cobb-Douglas → A1.T2/A1.T3, não A4.*).
--   - Em dúvida entre dois LOs, peso 0.5/0.5; em assimetria leve, 0.7/0.3
--     ou 0.6/0.4.
-- =====================================================================

INSERT INTO public.question_learning_objectives (page_id, question_id, lo_id, weight) VALUES

-- =====================================================================
-- AULA 1 — Preferências, Axiomas, Utilidade, TMS, Famílias funcionais
-- =====================================================================

-- aula-01-pre (10 Q yellow)
('aula-01-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.5),
('aula-01-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
('aula-01-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.7),
('aula-01-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.3),
('aula-01-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.4),
('aula-01-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 1.0),
('aula-01-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.4),
('aula-01-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 1.0),
('aula-01-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.7),
('aula-01-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.3),

-- aula-01-pos (5🟡 + 5🔴)
('aula-01-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.6),
('aula-01-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
('aula-01-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.5),
('aula-01-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
('aula-01-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.4),
('aula-01-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-01-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.7),
('aula-01-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.3),
('aula-01-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.5),
('aula-01-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.5),
('aula-01-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
('aula-01-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.5),
('aula-01-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),

-- aula-01-exerc (29 sub-itens: 1🟢 + 3🟡 + 2🔴)
-- Ex1 (🟢 — axiomas + lex em R^2)
('aula-01-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
-- Ex2 (🟡 — Cobb-Douglas + transformações monótonas + parcelas)
('aula-01-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.6),
('aula-01-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
('aula-01-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.5),
('aula-01-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
('aula-01-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.6),
('aula-01-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 0.4),
('aula-01-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.4),
('aula-01-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.6),
('aula-01-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
-- Ex3 (🟡 — quasilinear)
('aula-01-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.7),
('aula-01-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.3),
('aula-01-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.6),
('aula-01-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
('aula-01-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
('aula-01-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.5),
('aula-01-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.7),
('aula-01-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.3),
('aula-01-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.5),
('aula-01-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.5),
-- Ex4 (🟡 — Leontief + CES)
('aula-01-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.4),
('aula-01-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.4),
('aula-01-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 1.0),
('aula-01-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.6),
('aula-01-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
('aula-01-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A1.T3'), 0.4),
-- Ex5 (🔴 — CES parcelas vs preços)
('aula-01-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.7),
('aula-01-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-01-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.7),
('aula-01-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-01-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.7),
('aula-01-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-01-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.7),
('aula-01-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-01-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.6),
('aula-01-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.4),
-- Ex6 (🔴 — Debreu R^3 + variantes)
('aula-01-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),
('aula-01-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A1.T1'), 1.0),

-- =====================================================================
-- AULA 2 — UMP, EMP, Dualidade (Marshalliana, Hicksiana, Roy, Shephard)
-- =====================================================================

-- aula-02-pre (10 Q yellow)
('aula-02-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.6),
('aula-02-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 1.0),
('aula-02-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.5),
('aula-02-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
('aula-02-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.6),
('aula-02-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.4),
('aula-02-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),

-- aula-02-pos (5🟡 + 5🔴)
('aula-02-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.5),
('aula-02-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.5),
('aula-02-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.6),
('aula-02-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.6),
('aula-02-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.4),
('aula-02-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-02-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.6),
('aula-02-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.4),
('aula-02-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),

-- aula-02-exerc (29 sub-itens)
-- Ex1 (🟢 — UMP CD)
('aula-02-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
-- Ex2 (🟡 — CES UMP/indireta/parcelas)
('aula-02-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.7),
('aula-02-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.3),
('aula-02-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.7),
('aula-02-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.3),
('aula-02-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.7),
('aula-02-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.3),
('aula-02-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.7),
('aula-02-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.3),
('aula-02-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.5),
('aula-02-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
-- Ex3 (🟡 — EMP/Shephard CD 3D)
('aula-02-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 1.0),
('aula-02-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
-- Ex4 (🟡 — Roy em log)
('aula-02-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.7),
('aula-02-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-02-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.5),
('aula-02-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
('aula-02-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.6),
('aula-02-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.4),
-- Ex5 (🔴 — Dualidade completa + Shephard cruzado)
('aula-02-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 1.0),
('aula-02-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 1.0),
('aula-02-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.6),
('aula-02-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-02-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.5),
('aula-02-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.5),
-- Ex6 (🔴 — Estrutura/recíproca da dualidade)
('aula-02-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 1.0),
('aula-02-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),
('aula-02-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 1.0),

-- =====================================================================
-- AULA 3 — Slutsky e Elasticidades
-- =====================================================================

-- aula-03-pre (10 Q yellow)
('aula-03-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.5),
('aula-03-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
('aula-03-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),

-- aula-03-pos (5🟡 + 5🔴)
('aula-03-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.5),
('aula-03-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
('aula-03-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.6),
('aula-03-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.4),
('aula-03-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.7),
('aula-03-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.3),
('aula-03-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.5),
('aula-03-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A2.T3'), 0.5),

-- aula-03-exerc (29 sub-itens)
-- Ex1 (🟢 — Slutsky CD)
('aula-03-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
-- Ex2 (🟡 — Stone-Geary LES)
('aula-03-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.5),
('aula-03-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.5),
('aula-03-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.6),
('aula-03-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A1.T2'), 0.4),
-- Ex3 (🟡 — restrições agregadas em CD 3D)
('aula-03-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
-- Ex4 (🟡 — Giffen condições)
('aula-03-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.6),
('aula-03-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A2.T2'), 0.4),
('aula-03-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
('aula-03-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 1.0),
-- Ex5 (🔴 — CV/EV/EC em CD)
('aula-03-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.7),
('aula-03-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A2.T1'), 0.3),
('aula-03-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
-- Ex6 (🔴 — incidência tributária)
('aula-03-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.4),
('aula-03-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.6),
('aula-03-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.4),
('aula-03-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.6),
('aula-03-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 1.0),
('aula-03-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 1.0),
('aula-03-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A3.T3'), 0.6),
('aula-03-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A3.T2'), 0.4),

-- =====================================================================
-- AULA 4 — Equilíbrio Geral (Trocas + Produção)
-- =====================================================================

-- aula-04-pre (10 Q yellow)
('aula-04-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 1.0),
('aula-04-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.6),
('aula-04-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.4),
('aula-04-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 1.0),

-- aula-04-pos (5🟡 + 5🔴)
('aula-04-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 1.0),
('aula-04-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.6),
('aula-04-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.4),
('aula-04-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.6),
('aula-04-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.4),
('aula-04-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 1.0),
('aula-04-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-04-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-04-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 0.5),
('aula-04-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.4),
('aula-04-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.6),

-- aula-04-exerc (~28 sub-itens)
-- Ex1 (🟢 — EC CD simétrica)
('aula-04-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
-- Ex2 (🟡 — EC CD assimétrica)
('aula-04-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
-- Ex3 (🟡 — CD + Leontief)
('aula-04-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
-- Ex4 (🟡 — PPF + Robinson)
('aula-04-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 1.0),
('aula-04-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.6),
('aula-04-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.4),
-- Ex5 (🔴 — Walras + normalização + dimensionalidade)
('aula-04-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
('aula-04-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 1.0),
-- Ex6 (🔴 — 2x2x2 + 2º TBE)
('aula-04-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.5),
('aula-04-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-04-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.5),
('aula-04-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-04-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.5),
('aula-04-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-04-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A4.T2'), 0.5),
('aula-04-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-04-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 1.0),

-- =====================================================================
-- AULA 5 — Arrow-Debreu I (Mercados Completos)
-- =====================================================================

-- aula-05-pre (10 Q yellow)
('aula-05-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 1.0),
('aula-05-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 1.0),
('aula-05-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 1.0),
('aula-05-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 1.0),
('aula-05-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.6),
('aula-05-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 0.4),
('aula-05-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-05-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.6),
('aula-05-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.4),
('aula-05-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 1.0),

-- aula-05-pos (5🟡 + 5🔴)
('aula-05-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.7),
('aula-05-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.3),
('aula-05-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.6),
('aula-05-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.4),
('aula-05-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.6),
('aula-05-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.4),
('aula-05-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-05-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 1.0),
('aula-05-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 1.0),
('aula-05-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-05-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-05-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.6),
('aula-05-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.4),
('aula-05-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 0.6),
('aula-05-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.4),

-- aula-05-exerc (~26 sub-itens)
-- Ex1 (🟢 — EC AD com agente neutro)
('aula-05-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex1e', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
-- Ex2 (🟡 — SDF + heterogeneidade crenças)
('aula-05-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.7),
('aula-05-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.3),
('aula-05-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
-- Ex3 (🟡 — agregado livre de risco)
('aula-05-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
-- Ex4 (🟡 — intertemporal beta heterogêneo)
('aula-05-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.4),
('aula-05-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.6),
('aula-05-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.5),
('aula-05-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.5),
('aula-05-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
-- Ex5 (🔴 — 1º TBE em AD com 3 estados)
('aula-05-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-05-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-05-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
('aula-05-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-05-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.5),
-- Ex6 (🔴 — mercados incompletos preview)
('aula-05-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-05-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-05-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-05-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-05-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),

-- =====================================================================
-- AULA 6 — Arrow-Debreu II (Existência + Radner + Incompletude)
-- =====================================================================

-- aula-06-pre (10 Q yellow)
('aula-06-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 0.6),
('aula-06-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.4),
('aula-06-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 0.7),
('aula-06-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A5.T1'), 0.3),
('aula-06-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.6),
('aula-06-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.4),

-- aula-06-pos (5🟡 + 5🔴)
('aula-06-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 0.7),
('aula-06-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.3),
('aula-06-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.5),
('aula-06-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.5),
('aula-06-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),

-- aula-06-exerc (~28 sub-itens)
-- Ex1 (🟢 — equivalência AD↔Radner |S|=2)
('aula-06-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 0.7),
('aula-06-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.3),
('aula-06-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex1e', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
-- Ex2 (🟡 — mercado incompleto |S|=3)
('aula-06-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
-- Ex3 (🟡 — existência via Brouwer)
('aula-06-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 0.5),
('aula-06-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.5),
('aula-06-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 0.5),
('aula-06-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.5),
('aula-06-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
-- Ex4 (🟡 — Euler CRRA)
('aula-06-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.5),
('aula-06-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.5),
('aula-06-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 0.5),
('aula-06-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 0.5),
('aula-06-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A5.T2'), 1.0),
('aula-06-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A5.T3'), 1.0),
-- Ex5 (🔴 — Kakutani preferências lineares)
('aula-06-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
('aula-06-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A6.T1'), 1.0),
-- Ex6 (🔴 — Hart + GP completar pode piorar)
('aula-06-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),
('aula-06-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A6.T2'), 1.0),

-- =====================================================================
-- AULA 7 — Externalidades + Bens Públicos
-- =====================================================================

-- aula-07-pre (10 Q yellow)
('aula-07-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.5),
('aula-07-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A4.T3'), 0.5),
('aula-07-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.6),
('aula-07-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.4),
('aula-07-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
('aula-07-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.5),
('aula-07-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.5),

-- aula-07-pos (5🟡 + 5🔴)
('aula-07-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
('aula-07-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.7),
('aula-07-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.3),
('aula-07-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.6),
('aula-07-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A3.T1'), 0.4),
('aula-07-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.5),
('aula-07-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.5),
('aula-07-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 1.0),
('aula-07-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.6),
('aula-07-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.4),

-- aula-07-exerc (~28 sub-itens)
-- Ex1 (🟢 — Pigou parcial)
('aula-07-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex1e', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
-- Ex2 (🟡 — Coase bilateral)
('aula-07-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
-- Ex3 (🟡 — Samuelson + Nash + Lindahl)
('aula-07-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 1.0),
('aula-07-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.6),
('aula-07-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.4),
('aula-07-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.5),
('aula-07-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.5),
('aula-07-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
-- Ex4 (🟡 — cap-and-trade vs Pigou)
('aula-07-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.7),
('aula-07-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.3),
('aula-07-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
-- Ex5 (🔴 — VCG Clarke pivot)
('aula-07-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
('aula-07-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
('aula-07-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.6),
('aula-07-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.4),
('aula-07-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 1.0),
('aula-07-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.6),
('aula-07-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.4),
-- Ex6 (🔴 — tragédia comuns + Ostrom)
('aula-07-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.6),
('aula-07-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.4),
('aula-07-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.6),
('aula-07-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.4),
('aula-07-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 0.6),
('aula-07-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A7.T1'), 0.4),
('aula-07-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A6.T3'), 1.0),
('aula-07-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A7.T2'), 0.5),
('aula-07-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A7.T3'), 0.5),

-- =====================================================================
-- AULA 8 — Seleção Adversa + Risco Moral
-- =====================================================================

-- aula-08-pre (10 Q yellow)
('aula-08-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 0.5),
('aula-08-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 0.5),
('aula-08-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),

-- aula-08-pos (5🟡 + 5🔴)
('aula-08-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),

-- aula-08-exerc (~32 sub-itens — ex5 e ex6 têm 6 sub-itens cada)
-- Ex1 (🟢 — diagnóstico tipologia + Akerlof preliminar)
('aula-08-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex1e', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
-- Ex2 (🟡 — Akerlof 2 tipos discretos)
('aula-08-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
-- Ex3 (🟡 — R-S separador + single-crossing)
('aula-08-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
-- Ex4 (🟡 — Holmström first-best)
('aula-08-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
-- Ex5 (🔴 — Holmström second-best — 6 sub-itens)
('aula-08-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
('aula-08-exerc', 'ex5f', (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 1.0),
-- Ex6 (🔴 — ACA + ANS resposta R-S — 6 sub-itens)
('aula-08-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),
('aula-08-exerc', 'ex6f', (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 1.0),

-- =====================================================================
-- AULA 9 — Sinalização (Spence) + Matching (Gale-Shapley)
-- =====================================================================

-- aula-09-pre (10 Q yellow)
('aula-09-pre',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pre',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pre',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.5),
('aula-09-pre',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.5),
('aula-09-pre',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pre',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pre',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pre',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pre',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 0.7),
('aula-09-pre',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A9.T2'), 0.3),

-- aula-09-pos (5🟡 + 5🔴)
('aula-09-pos',  'q1',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pos',  'q2',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pos',  'q3',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 0.7),
('aula-09-pos',  'q4',   (SELECT id FROM public.learning_objectives WHERE code='A9.T2'), 0.3),
('aula-09-pos',  'q5',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.5),
('aula-09-pos',  'q6',   (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.5),
('aula-09-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 0.7),
('aula-09-pos',  'q7',   (SELECT id FROM public.learning_objectives WHERE code='A9.T2'), 0.3),
('aula-09-pos',  'q8',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 0.5),
('aula-09-pos',  'q9',   (SELECT id FROM public.learning_objectives WHERE code='A4.T1'), 0.5),
-- q10 é meta-síntese cobrindo Akerlof/R-S, Holmström, Spence, Matching — 4 LOs com peso 0.25
('aula-09-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A8.T1'), 0.25),
('aula-09-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A8.T2'), 0.25),
('aula-09-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.25),
('aula-09-pos',  'q10',  (SELECT id FROM public.learning_objectives WHERE code='A9.T2'), 0.25),

-- aula-09-exerc (~30 sub-itens)
-- Ex1 (🟢 — Spence canônico cálculo)
('aula-09-exerc', 'ex1a', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex1b', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex1c', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex1d', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex1e', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
-- Ex2 (🟡 — Cho-Kreps aplicado)
('aula-09-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.5),
('aula-09-exerc', 'ex2a', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.5),
('aula-09-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.5),
('aula-09-exerc', 'ex2b', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.5),
('aula-09-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.6),
('aula-09-exerc', 'ex2c', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.4),
('aula-09-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A9.T3'), 0.6),
('aula-09-exerc', 'ex2d', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 0.4),
('aula-09-exerc', 'ex2e', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
-- Ex3 (🟡 — single-crossing)
('aula-09-exerc', 'ex3a', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex3b', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex3c', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex3d', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex3e', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
-- Ex4 (🟡 — separador vs first-best)
('aula-09-exerc', 'ex4a', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex4b', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex4c', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex4d', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
('aula-09-exerc', 'ex4e', (SELECT id FROM public.learning_objectives WHERE code='A8.T3'), 1.0),
-- Ex5 (🔴 — DA cadeia rejeições)
('aula-09-exerc', 'ex5a', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex5b', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex5c', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex5d', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex5e', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
-- Ex6 (🔴 — strategy-proofness Roth 1982)
('aula-09-exerc', 'ex6a', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex6b', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex6c', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex6d', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0),
('aula-09-exerc', 'ex6e', (SELECT id FROM public.learning_objectives WHERE code='A9.T1'), 1.0)

ON CONFLICT (page_id, question_id, lo_id) DO NOTHING;

-- =====================================================================
-- SUMÁRIO (verificado por contagem de linhas INSERT no próprio arquivo)
-- =====================================================================
-- Arquivos parseados : 27 (9 aulas × {pre, pos, exerc})
-- Questões únicas    : 445 sub-questões/pares (page_id, question_id) distintos
-- INSERTs totais     : 576 (uma linha por par (page_id, question_id, lo_id))
--
-- Por arquivo (questões únicas / INSERTs):
--   aula-01-pre   :  10  / 15  | aula-01-pos   :  10  / 16  | aula-01-exerc :  29  / 48
--   aula-02-pre   :  10  / 15  | aula-02-pos   :  10  / 15  | aula-02-exerc :  29  / 42
--   aula-03-pre   :  10  / 11  | aula-03-pos   :  10  / 14  | aula-03-exerc :  29  / 36
--   aula-04-pre   :  10  / 11  | aula-04-pos   :  10  / 14  | aula-04-exerc :  29  / 34
--   aula-05-pre   :  10  / 13  | aula-05-pos   :  10  / 17  | aula-05-exerc :  30  / 36
--   aula-06-pre   :  10  / 13  | aula-06-pos   :  10  / 12  | aula-06-exerc :  27  / 32
--   aula-07-pre   :  10  / 13  | aula-07-pos   :  10  / 14  | aula-07-exerc :  30  / 39
--   aula-08-pre   :  10  / 11  | aula-08-pos   :  10  / 10  | aula-08-exerc :  32  / 32
--   aula-09-pre   :  10  / 12  | aula-09-pos   :  10  / 17  | aula-09-exerc :  30  / 34
--
-- Totais : 90 pre + 90 pos + 265 exerc = 445 questões únicas → 576 INSERTs.
-- INSERTs > questões porque ~30% têm 2 LOs (peso 0.5/0.5 ou 0.7/0.3 etc.)
-- e algumas Q10 meta distribuem em 3-4 LOs.
--
-- Distribuição (questões em que cada LO aparece com peso > 0):
--   A1.T1 (axiomas)             ~20   A1.T2 (utilidade canônica)  ~26
--   A1.T3 (TMS)                 ~13
--   A2.T1 (UMP)                 ~17   A2.T2 (EMP)                 ~14
--   A2.T3 (dualidade)           ~26
--   A3.T1 (Slutsky)             ~18   A3.T2 (elasticidades)       ~21
--   A3.T3 (excedente CV/EV/EC)  ~17
--   A4.T1 (EG trocas)           ~25   A4.T2 (PPF/Robinson)        ~14
--   A4.T3 (1º/2º TBE)           ~17
--   A5.T1 (estados/ativos)      ~14   A5.T2 (utilidade esperada)  ~28
--   A5.T3 (SDF)                 ~17
--   A6.T1 (existência)          ~12   A6.T2 (mercados incompletos) ~30
--   A6.T3 (externalidades)      ~26
--   A7.T1 (bens públicos)       ~11   A7.T2 (Lindahl/VCG)         ~14
--   A7.T3 (free-rider)          ~10
--   A8.T1 (sel. adversa)        ~26   A8.T2 (risco moral)         ~22
--   A8.T3 (sinalização)         ~26
--   A9.T1 (matching estável)    ~20   A9.T2 (mecanism design)     ~6
--   A9.T3 (refinamentos)        ~10
--
-- Questões com 2+ LOs : ~115 (~26%)
-- Questões com 1 LO   : ~330 (~74%)
--
-- Cobertura : todas as 445 sub-questões mapeadas. Nenhum arquivo pulado.
-- =====================================================================
