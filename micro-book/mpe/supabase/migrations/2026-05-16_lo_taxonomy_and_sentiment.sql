-- ============================================================================
-- LO taxonomy + reflections.sentiment_score — backlog estratégico 2026-05-16
-- ============================================================================
-- Foundation para 2 features pedagógicas:
--   1. Retenção entre aulas (mastery por LO ao longo do tempo).
--      Tabelas: learning_objectives (catálogo) + question_learning_objectives
--      (mapeia question_id × LO com peso). View iaad_lo_performance agrega.
--   2. Sentiment trajectory das reflexões (4 dimensões classificadas por LLM).
--      Coluna nova reflections.sentiment_score jsonb. Edge function
--      reflections-sentiment popula via Anthropic Claude Sonnet 4.6.
--
-- Idempotente: CREATE TABLE IF NOT EXISTS, ALTER TABLE ADD COLUMN IF NOT EXISTS,
-- DROP POLICY IF EXISTS antes de CREATE POLICY.
-- ============================================================================

-- ----- 1. LEARNING_OBJECTIVES — catálogo cross-aulas ------------------------

CREATE TABLE IF NOT EXISTS public.learning_objectives (
  id            uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  aula_n        integer     NOT NULL CHECK (aula_n BETWEEN 1 AND 9),
  code          text        NOT NULL,         -- ex: 'A1.T1'  (Aula 1, Tópico 1)
  label         text        NOT NULL,         -- ex: 'Axiomas de preferência'
  description   text,                          -- exposição longa, opcional
  created_at    timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code)
);
CREATE INDEX IF NOT EXISTS idx_lo_aula ON public.learning_objectives (aula_n);

COMMENT ON TABLE  public.learning_objectives IS
'Catálogo de objetivos de aprendizagem (LOs) do MPE 2026/32. ~3 LOs por aula × 9 aulas = 27. Editar via SQL Editor ou script Python. Estender é seguro: novos LOs não quebram análises existentes.';

-- ----- 2. QUESTION_LEARNING_OBJECTIVES — mapeamento questão → LO ------------

CREATE TABLE IF NOT EXISTS public.question_learning_objectives (
  id              uuid       PRIMARY KEY DEFAULT gen_random_uuid(),
  page_id         text       NOT NULL,        -- ex: 'aula-01-pos'
  question_id     text       NOT NULL,        -- ex: 'q5'
  lo_id           uuid       NOT NULL REFERENCES public.learning_objectives(id) ON DELETE CASCADE,
  weight          numeric    NOT NULL DEFAULT 1.0 CHECK (weight > 0),  -- 1 LO principal; ou 0.5 + 0.5 se híbrido
  created_at      timestamptz NOT NULL DEFAULT now(),
  UNIQUE (page_id, question_id, lo_id)
);
CREATE INDEX IF NOT EXISTS idx_qlo_page_q ON public.question_learning_objectives (page_id, question_id);
CREATE INDEX IF NOT EXISTS idx_qlo_lo     ON public.question_learning_objectives (lo_id);

COMMENT ON TABLE  public.question_learning_objectives IS
'Mapeia cada (page_id, question_id) para 1+ LOs com peso. Sum de pesos por questão tipicamente = 1.0 (uma questão pode pesar 0.7 em LO principal + 0.3 em LO secundário se o enunciado mistura). Não validado por constraint — flexível para casos especiais.';

-- ----- 3. View iaad_lo_performance — agregado por (user, LO) ----------------

CREATE OR REPLACE VIEW public.iaad_lo_performance AS
WITH
  -- 1ª tentativa por (user, page, question)
  first_attempt AS (
    SELECT DISTINCT ON (user_id, page_id, question_id)
      user_id, page_id, question_id, correct, answered_at
    FROM public.quiz_question_attempts
    ORDER BY user_id, page_id, question_id, answered_at ASC
  ),
  -- Cruza com mapeamento questão → LO (com peso)
  attempts_by_lo AS (
    SELECT
      fa.user_id,
      qlo.lo_id,
      lo.aula_n,
      lo.code,
      lo.label,
      fa.page_id,
      fa.question_id,
      fa.correct,
      qlo.weight,
      fa.answered_at
    FROM first_attempt fa
    JOIN public.question_learning_objectives qlo
      ON qlo.page_id = fa.page_id AND qlo.question_id = fa.question_id
    JOIN public.learning_objectives lo
      ON lo.id = qlo.lo_id
  )
SELECT
  user_id,
  lo_id,
  aula_n,
  code,
  label,
  COUNT(*)                                              AS n_attempts,
  SUM(CASE WHEN correct THEN weight ELSE 0 END)         AS weighted_correct,
  SUM(weight)                                           AS weighted_total,
  CASE WHEN SUM(weight) > 0
       THEN SUM(CASE WHEN correct THEN weight ELSE 0 END) / SUM(weight)
       ELSE NULL
  END                                                   AS mastery,
  MAX(answered_at)                                      AS last_attempt_at,
  MIN(answered_at)                                      AS first_attempt_at
FROM attempts_by_lo
GROUP BY user_id, lo_id, aula_n, code, label;

COMMENT ON VIEW   public.iaad_lo_performance IS
'Agregado mastery por (aluno, LO). mastery = sum(weight*correct) / sum(weight) ∈ [0,1]. Retenção entre aulas = mastery do LO em aulas POSTERIORES vs aula de origem (computado pelo admin via JS, não pela view).';

-- ----- 4. RPC: get_lo_class_distribution ------------------------------------
-- Retorna distribuição de mastery por LO para o aluno autenticado + agregados
-- (P25/P50/P75) da turma. K-anônimo via HAVING n_students >= 5.

CREATE OR REPLACE FUNCTION public.get_lo_class_distribution()
RETURNS TABLE (
  lo_id         uuid,
  code          text,
  label         text,
  aula_n        integer,
  n_students    integer,
  p25           numeric,
  p50           numeric,
  p75           numeric
)
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT
    lo.id,
    lo.code,
    lo.label,
    lo.aula_n,
    COUNT(DISTINCT lp.user_id)::integer                              AS n_students,
    percentile_cont(0.25) WITHIN GROUP (ORDER BY lp.mastery)::numeric AS p25,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY lp.mastery)::numeric AS p50,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY lp.mastery)::numeric AS p75
  FROM public.learning_objectives lo
  LEFT JOIN public.iaad_lo_performance lp ON lp.lo_id = lo.id
  GROUP BY lo.id, lo.code, lo.label, lo.aula_n
  HAVING COUNT(DISTINCT lp.user_id) >= 5;
$$;

GRANT EXECUTE ON FUNCTION public.get_lo_class_distribution() TO authenticated;

-- ----- 5. RLS ---------------------------------------------------------------
-- learning_objectives: aluno autenticado pode LER (precisa pra ver próprio
-- mastery por LO no portal); só admin escreve.
-- question_learning_objectives: idem (público para alunos lerem o mapeamento;
-- admin escreve).

ALTER TABLE public.learning_objectives             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.question_learning_objectives    ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "lo_select_all"  ON public.learning_objectives;
DROP POLICY IF EXISTS "lo_admin_write" ON public.learning_objectives;
CREATE POLICY "lo_select_all"
  ON public.learning_objectives FOR SELECT
  USING (auth.uid() IS NOT NULL);
CREATE POLICY "lo_admin_write"
  ON public.learning_objectives FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

DROP POLICY IF EXISTS "qlo_select_all"  ON public.question_learning_objectives;
DROP POLICY IF EXISTS "qlo_admin_write" ON public.question_learning_objectives;
CREATE POLICY "qlo_select_all"
  ON public.question_learning_objectives FOR SELECT
  USING (auth.uid() IS NOT NULL);
CREATE POLICY "qlo_admin_write"
  ON public.question_learning_objectives FOR ALL
  USING (public.is_admin())
  WITH CHECK (public.is_admin());

-- ----- 6. REFLECTIONS.SENTIMENT_SCORE ---------------------------------------
-- jsonb com 4 dimensões 0-100: {confusion, clarity, frustration, engagement}.
-- Populado pela edge function reflections-sentiment (Anthropic Claude Sonnet 4.6)
-- OU pelo script Python alternativo (sentiment-classify.py).
-- Reflexões antigas ficam com NULL até serem re-processadas em batch.

ALTER TABLE public.reflections
  ADD COLUMN IF NOT EXISTS sentiment_score      jsonb,
  ADD COLUMN IF NOT EXISTS sentiment_model      text,                -- 'claude-sonnet-4-6' etc
  ADD COLUMN IF NOT EXISTS sentiment_scored_at  timestamptz;

COMMENT ON COLUMN public.reflections.sentiment_score IS
'jsonb {confusion: 0-100, clarity: 0-100, frustration: 0-100, engagement: 0-100}. Soma NÃO precisa fechar 100 (dimensões independentes). NULL = ainda não processado.';
COMMENT ON COLUMN public.reflections.sentiment_model IS
'Identificador do modelo que produziu o score (ex: claude-sonnet-4-6). Permite reprocessar quando trocar de modelo.';
COMMENT ON COLUMN public.reflections.sentiment_scored_at IS
'Timestamp do último scoring. NULL = nunca processado.';

CREATE INDEX IF NOT EXISTS idx_reflections_sentiment_scored
  ON public.reflections (sentiment_scored_at)
  WHERE sentiment_score IS NOT NULL;

-- ----- 7. RPC: recompute_reflection_sentiment -------------------------------
-- Stub RPC que admin chama para forçar re-scoring de uma reflexão (útil quando
-- trocar de modelo OU corrigir output ruim). Implementação real fica na edge
-- function reflections-sentiment (que faz HTTP call ao Anthropic). Aqui só
-- marca como pendente (clear sentiment_score) para edge function pegar.

CREATE OR REPLACE FUNCTION public.mark_reflection_sentiment_pending(p_reflection_id uuid)
RETURNS boolean
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Sem permissão.';
  END IF;
  UPDATE public.reflections
     SET sentiment_score     = NULL,
         sentiment_model     = NULL,
         sentiment_scored_at = NULL
   WHERE id = p_reflection_id;
  RETURN FOUND;
END;
$$;

GRANT EXECUTE ON FUNCTION public.mark_reflection_sentiment_pending(uuid) TO authenticated;

-- ----- 8. SEED placeholders: 3 LOs por aula × 9 aulas = 27 ------------------
-- TODO (Darcio): substituir labels/descrições pelo conteúdo real. Estes são
-- placeholders mínimos para o schema ser usável imediatamente; o admin UI
-- vai permitir editar.

INSERT INTO public.learning_objectives (aula_n, code, label, description) VALUES
  (1, 'A1.T1', 'Axiomas de preferência',              'Completude, transitividade, continuidade, monotonicidade, convexidade.'),
  (1, 'A1.T2', 'Funções de utilidade canônicas',      'Cobb-Douglas, CES, quasilinear, Leontief. Representação contínua.'),
  (1, 'A1.T3', 'Taxa Marginal de Substituição',       'TMS via derivadas implícitas; interpretação geométrica e econômica.'),
  (2, 'A2.T1', 'UMP — Maximização da utilidade',      'Demanda Marshalliana; Lagrangiano com restrição orçamentária.'),
  (2, 'A2.T2', 'EMP — Minimização do gasto',          'Demanda Hicksiana; função despesa.'),
  (2, 'A2.T3', 'Dualidade e identidades',             'Roy, Shephard, equivalência UMP↔EMP.'),
  (3, 'A3.T1', 'Equação de Slutsky',                  'Decomposição substituição/renda; bens normais/inferiores/Giffen.'),
  (3, 'A3.T2', 'Elasticidades',                       'Preço, cruzada, renda; restrições agregadas (Engel, Cournot, simetria).'),
  (3, 'A3.T3', 'Excedente do consumidor',             'CV, EV, área sob a demanda; comparação Marshalliana × Hicksiana.'),
  (4, 'A4.T1', 'Equilíbrio Geral em trocas',          'Edgeworth, contract curve, núcleo, Walras.'),
  (4, 'A4.T2', 'Produção e PPF',                      'Robinson Crusoe, TMS=TMT=w/p.'),
  (4, 'A4.T3', '1º e 2º Teoremas do Bem-Estar',       'Pareto-eficiência da alocação competitiva; redistribuição via lump-sum.'),
  (5, 'A5.T1', 'Estados da natureza e ativos',        'Mercados de Arrow, state-preference, completude.'),
  (5, 'A5.T2', 'Utilidade esperada',                  'Von Neumann-Morgenstern; aversão ao risco.'),
  (5, 'A5.T3', 'No-trade theorem e SDF',              'Stochastic discount factor; precificação livre de arbitragem.'),
  (6, 'A6.T1', 'Existência de equilíbrio',            'Brouwer, Kakutani; condições suficientes.'),
  (6, 'A6.T2', 'Mercados incompletos',                'Equivalência Arrow-Debreu ↔ Radner; ineficiência sob incompletude.'),
  (6, 'A6.T3', 'Externalidades — Coase e Pigou',      'Internalização via direitos de propriedade vs taxas.'),
  (7, 'A7.T1', 'Bens públicos',                       'Condição de Samuelson; underprovision por mercado.'),
  (7, 'A7.T2', 'Mecanismos de provisão',              'Lindahl, voto majoritário, Clarke-Groves.'),
  (7, 'A7.T3', 'Free-riding e desenho',               'Incentive-compatibility, dominância.'),
  (8, 'A8.T1', 'Seleção adversa',                     'Akerlof lemons; equilíbrio pooling vs separating.'),
  (8, 'A8.T2', 'Risco moral',                         'Principal-agent; IR + IC constraints.'),
  (8, 'A8.T3', 'Sinalização',                         'Spence; single-crossing; equilibria PBE.'),
  (9, 'A9.T1', 'Matching estável',                    'Gale-Shapley; deferred acceptance; strategy-proofness.'),
  (9, 'A9.T2', 'Mecanism design',                     'Myerson, Revelation Principle.'),
  (9, 'A9.T3', 'Refinamentos e equilíbrio',           'Trembling-hand, sequential, sequential rationality.')
ON CONFLICT (code) DO NOTHING;

-- ============================================================================
-- Fim da migration.
-- ============================================================================
