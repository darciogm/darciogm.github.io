# Auditoria pós-aula 13/05 — checklist operacional + SQL

> **Quando:** rodar **na quinta 14/05**, depois que aluno teve ~12h para reagir, e antes do gate de gabarito (qui 21/05 00:00 BRT). Calibração baseada em telemetria das seções/quizzes **novos** introduzidos pela cirurgia de produção.
>
> **Onde executar:** Supabase SQL Editor (admin role) ou via `MpeDB.adminFetchAll` no admin dashboard.
>
> **Objetivo:** validar (ou invalidar) as 5 hipóteses pedagógicas críticas da cirurgia. Se ≥3 falharem, plano de remediação ativa antes da Aula 5 (20/05).

---

## Hipóteses a validar

| # | Hipótese | Métrica | Threshold |
|---|---|---|---|
| H1 | S5b (PPF + Robinson) é digerível em ~15 min | tempo P50 da seção | ≤ 22 min |
| H2 | S6b (TMS=TMT + 1º TBE prod.) é mais difícil que S5b | acerto 1ª micro-cp s6bq* < s5bq* | acerto 1ª s6b < acerto 1ª s5b |
| H3 | Quizzes recalibrados (Q4, Q5, Q8 do pós + Q1, Q3, Q8, Q9 do pré) têm p-value ∈ [0,30; 0,80] | p-value das 7 questões substituídas | nenhuma fora |
| H4 | Q10🔴🔴 (meta 2×2×2) é difícil mas não impossível | p-value de Q10 | ∈ [0,15; 0,50] |
| H5 | Reflexões qualitativas mencionam "produção" ou "PPF" ou "Robinson" em ≥30% dos respondentes | grep tag-cloud + count | ≥ 15/50 alunos |

---

## SQL — bloco 1: telemetria das seções S5b e S6b (novas)

```sql
-- Tempo gasto nas seções novas (S5b, S6b da Aula 4)
SELECT
  user_id,
  section_id,
  EXTRACT(EPOCH FROM (completed_at - started_at)) / 60 AS minutos_seçao
FROM section_progress
WHERE page_id = 'aula-04'
  AND section_id IN ('s5b-producao', 's6b-1tbe-prod')
  AND completed_at IS NOT NULL
ORDER BY section_id, minutos_seçao;
```

**Análise esperada:**

```sql
-- Distribuição P25/P50/P75 por seção
SELECT
  section_id,
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (completed_at - started_at)) / 60) AS p25_min,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (completed_at - started_at)) / 60) AS p50_min,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (completed_at - started_at)) / 60) AS p75_min,
  COUNT(*) AS n_concluintes
FROM section_progress
WHERE page_id = 'aula-04'
  AND section_id IN ('s5b-producao', 's6b-1tbe-prod')
  AND completed_at IS NOT NULL
GROUP BY section_id;
```

**Comparar com tempo declarado** (S5b = 15 min, S6b = 10 min). Se P50 > 1.5× declarado, declarar conteúdo apertado e marcar para reescrita em pass-3.

---

## SQL — bloco 2: micro-checkpoints S5b e S6b (acerto 1ª, n_tentativas)

```sql
-- Acerto na 1ª tentativa por micro-checkpoint novo
WITH primeira_tentativa AS (
  SELECT
    user_id,
    page_id,
    question_id,
    correct,
    ROW_NUMBER() OVER (PARTITION BY user_id, page_id, question_id ORDER BY answered_at ASC) AS rn
  FROM micro_attempts
  WHERE page_id = 'aula-04'
    AND question_id IN ('s5bq1', 's5bq2', 's6bq1', 's6bq2')
)
SELECT
  question_id,
  COUNT(*) AS n_respondentes,
  AVG(CASE WHEN correct THEN 1.0 ELSE 0 END)::numeric(4,3) AS acerto_1a,
  AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END) FILTER (WHERE rn = 1)::numeric(4,3) AS acerto_1a_correto
FROM primeira_tentativa
WHERE rn = 1
GROUP BY question_id
ORDER BY question_id;
```

**Threshold pedagógico:**
- Acerto 1ª ∈ [0,40; 0,75] → micro-cp bem calibrado
- Acerto 1ª < 0,40 → muito difícil; rever enunciado ou distratores
- Acerto 1ª > 0,75 → muito fácil; possivelmente trivial

**Bandeira:** se `s6bq1` ou `s6bq2` ficarem < 0,30, a hipótese pedagógica de "1º TBE com produção como corolário direto" não está sendo internalizada — sinalizar em sala (Aula 5 Bloco 0 Recall) e reforçar na pré-monitoria 2.

---

## SQL — bloco 3: quizzes recalibrados (psicometria CTT)

```sql
-- p-value (dificuldade) das questões SUBSTITUÍDAS na cirurgia
-- Pré-aula 4: Q1, Q3, Q8, Q9 (produção)
-- Pós-aula 4: Q4, Q5, Q8, Q10 (mistura/meta)
WITH primeira AS (
  SELECT user_id, page_id, question_id, correct,
    ROW_NUMBER() OVER (PARTITION BY user_id, page_id, question_id ORDER BY answered_at ASC) AS rn
  FROM quiz_question_attempts
  WHERE page_id IN ('aula-04-pre', 'aula-04-pos')
)
SELECT
  page_id,
  question_id,
  COUNT(*) FILTER (WHERE rn = 1) AS n,
  AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END)::numeric(4,3) AS p_value,
  CASE
    WHEN AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END) < 0.20 THEN '🔴 muito difícil'
    WHEN AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END) > 0.90 THEN '🟢 muito fácil'
    WHEN AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END) BETWEEN 0.30 AND 0.80 THEN '✅ OK'
    ELSE '⚠ revisar'
  END AS flag
FROM primeira
WHERE question_id IN ('q1', 'q3', 'q8', 'q9', 'q4', 'q5', 'q10')
GROUP BY page_id, question_id
ORDER BY page_id, question_id;
```

**Discriminação (rpb):** o admin dashboard já computa point-biserial entre questão e score total no painel "Psicometria". Conferir lá. **Bandeira:** rpb < 0 (negativa) sugere bug de gabarito — rever 5-passos.

---

## SQL — bloco 4: Q10🔴🔴 (meta 2×2×2)

```sql
-- Q10🔴🔴 do pós: meta-questão integrando trocas+produção
WITH primeira AS (
  SELECT user_id, correct,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY answered_at ASC) AS rn
  FROM quiz_question_attempts
  WHERE page_id = 'aula-04-pos' AND question_id = 'q10'
)
SELECT
  COUNT(*) FILTER (WHERE rn = 1) AS n_respondentes,
  AVG(CASE WHEN rn = 1 AND correct THEN 1.0 ELSE 0 END)::numeric(4,3) AS acerto_1a,
  AVG(CASE WHEN correct THEN 1.0 ELSE 0 END)::numeric(4,3) AS acerto_qualquer_tentativa
FROM primeira;
```

**Threshold:**
- acerto 1ª ∈ [0,15; 0,50] → meta-questão bem calibrada
- acerto 1ª > 0,50 → não é tão "meta" quanto deveria; reformar Q10 em pass-3
- acerto 1ª < 0,15 → muito densa para 70% do qualifier; verificar se enunciado tem ambiguidade

---

## SQL — bloco 5: reflexões qualitativas (grep tag-cloud)

```sql
-- Reflexões da Aula 4 mencionando termos da cirurgia
SELECT
  user_id,
  field,
  content
FROM reflections
WHERE page_id = 'aula-04'
  AND content ~* '(produ[çc][aã]o|PPF|Robinson|TMT|TMS=TMT|firma|tecnologia|apertad[oa])'
ORDER BY created_at DESC;
```

**Threshold:** ≥ 15/50 alunos (30%) com pelo menos 1 menção. Se < 15, sinaliza que pré-aula não engajou em produção — reforçar Bloco 0 Aula 4 em sala.

**Termos de alerta** (se aparecerem com frequência):
- "apertado", "corrido", "muito conteúdo" → Bloco 3.5 (50 min) é piso, sinalizou-se em pre-monitoria 2
- "Robinson confuso", "PPF não entendi" → reforçar no Bloco 0 da aula presencial
- "1º TBE com produção pulou" → reforçar prova canônica em sala

---

## Checklist operacional pós-aula (qui 14/05 manhã)

### 1. Rodar os 5 blocos SQL acima

- [ ] Bloco 1 — tempo das seções S5b/S6b
- [ ] Bloco 2 — micro-checkpoints
- [ ] Bloco 3 — psicometria das 7 questões substituídas
- [ ] Bloco 4 — Q10🔴🔴
- [ ] Bloco 5 — reflexões grep

### 2. Cruzar com hipóteses H1-H5

- [ ] H1: P50 tempo S5b ≤ 22 min? **___ / 22**
- [ ] H2: acerto 1ª s6b < s5b? **s5b ___ vs s6b ___**
- [ ] H3: 7 p-values ∈ [0,30; 0,80]? **___ / 7 dentro**
- [ ] H4: Q10 p-value ∈ [0,15; 0,50]? **___ valor**
- [ ] H5: ≥ 15 reflexões com termos? **___ / 50**

### 3. Decisão de remediação

**Se ≥ 3 hipóteses falham:** ativar plano de remediação antes da Aula 5 (20/05):
- Bloco 0 da Aula 5 ganha 5 min extras de Recall da Aula 4 com foco em produção (cortar de Bloco 1 Aula 5).
- Pré-monitoria 2 (sáb 23/05) prioriza dúvidas operacionais de Robinson/PPF, não extensões.
- Atualizar `aula_4/cirurgia-producao.md` com lição "Bloco 3.5 deve ter ≥ 60 min em MPE 2027".

**Se ≤ 2 falham:** cirurgia validada, seguir para Aula 5 sem ajustes.

### 4. Documentar achados

Criar `aula_4/auditoria-pos-aula-resultado.md` com:
- Output dos 5 blocos SQL (números reais).
- Tabela hipóteses-validadas/falhadas.
- Plano de remediação se ativado.
- Recomendações para o Alberto na pré-monitoria 2.

### 5. Calibrar dashboard admin

- [ ] Conferir tab "Psicometria" do `admin.html` mostra Q1/Q3/Q8/Q9 do pré e Q4/Q5/Q8/Q10 do pós com flags corretas.
- [ ] Conferir tab "Por Aluno" — alunos com risco_score ≥ 60 que ainda não fizeram pré-aula 4 → mensagem manual.
- [ ] Conferir tag cloud das reflexões — termos "produção", "PPF", "Robinson" entre top-30.

---

## Datas-chave

| Marco | Data | Ação |
|---|---|---|
| Aula 4 presencial | 13/05 19:30 | Aula acontece |
| Auditoria pós-aula | **14/05 manhã** | Rodar este checklist |
| Pré-aula 5 abre | 14/05 madrugada | Foco em AD-I |
| Pré-monitoria 2 | sáb 16/05–22/05 | Cobre extensões Aula 4 |
| Monitoria 2 (Alberto) | sáb 23/05 10:00 | Sessão presencial Aula 4 |
| Gabarito exerc Aula 4 libera | qui 21/05 00:00 | Após fechamento qua 20/05 18h |
| Aula 5 presencial | 20/05 19:30 | AD-I |

---

— Checklist Referee 2, 07/05/2026.
