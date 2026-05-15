# Auditoria do dashboard admin MPE — 2026-05-15

**Auditor:** prof-mpe-micro (modo Referee 2)
**Escopo:** todas as funções `compute*`/`render*` em `platform/admin.html` (9277 linhas), `platform/js/mpe-db.js`, `platform/js/calendario.js`, `supabase/schema.sql`.
**Calibre:** rigor estatístico + plumbing + checagem de bibliografia.
**Data:** 2026-05-15.

> **STATUS de fixes (2026-05-15 atualizado):** os 4 BUGs de janela canônica vs deadline plataforma (incluindo o bug master `computeCircadian`) foram corrigidos no mesmo dia via introdução de `MPE_CALENDARIO.getJanelaCanonica` em `calendario.js`. Bandeira nova 🐢 "atrasado crônico" adicionada (paralela ao 🌙). Bibliografia citada (Anderson 2014, Baker 2018) substituída por Cepeda 2006 / Bjork na seção #5. Demais bugs (escala confidence S5, ordering attempts[0] S5, bibliografia inflada nos demais Onda 4, etc.) **permanecem abertos** e devem ser tratados em sprints subsequentes — ver Tier 1/2/3 em `plano-fixes-dashboard-2026-05-15.md`.

---

## Sumário executivo

**Veredito geral: AT RISK.** O dashboard é rico em features e bem estruturado em camadas (compute → render → modal), mas tem **um bug master de escala** que envenena 4 métricas centrais (Calibração ECE, Confidence scatter, Knower's Quadrant, Bullet ECE) e contamina toda a tab "Psico-cognitivo" + bullet do topo. Em paralelo, a referência bibliográfica oficial (CLAUDE.md) cita papers que ou **não existem na forma citada** (Anderson 2014 CHI, Pardos 2014 EDM "trajectory drift"), ou **existem mas não fundamentam a métrica implementada** (Newell & Rosenbloom 1981 power law vs. OLS sobre 4 fases; Hacker, Bol & Keener 2008 vs. Naeini/Guo ECE; Zimmerman 2013 vs. tipologia inventada strategic/reactive/skimmer/avoidant). Há também **bug de schema-mismatch** silencioso (story panel `iv.profile_id`) e **bug de tipo** (`getPrazo().gabarito` é `number` mas é tratado como `Date` no inbox).

- **N de métricas auditadas**: 38 funções `compute*`/`render*`/`_viz*`/`_o4*` (mais 4 helpers críticos).
- **Distribuição de severidade**: S5 = 5 · S4 = 11 · S3 = 9 · S2 = 7 · S1 = 6.
- **Top-3 problemas críticos**:
  1. **Bug de escala confidence** (S5): `confidence_ratings.value ∈ [1,5]` (CHECK no schema, sliders `min=1 max=5`) é tratado como porcentagem `[0,100]` em `_o4BuildPairs`, `_o4ECE`, `computeConfidencePoints`, `computeKnowerPoints`, `_vizComputeTopBulletData` (campo ECE). Resultado: ECE da turma constantemente ~50pp (todos rotulados `under-confident` ou em zona vermelha do bullet); scatter conf×acerto comprime tudo no canto esquerdo (x∈[1,5] num eixo [0,100]); diagonal de calibração não tem sentido geométrico. **Toda a Onda 4 #4 está produzindo número errado.**
  2. **Atribuição bibliográfica decorativa em massa** (S4): das 10 referências citadas em CLAUDE.md/`metricas-proposta.md`/comentários do código, **3 não localizadas** (Anderson 2014 CHI cramming, Pardos 2014 EDM trajectory, Baker 2018 JLA cramming), **5 com aplicação ambígua** (Hacker/Bol/Keener — paper de 2008 não 2012, e ECE moderno é Naeini/Guo 2015/2017; Van der Linden 2007 — modelo hierárquico complexo, não diff de timestamps; Wise & Kong 2005 — RTE formal não implementado; Newell & Rosenbloom 1981 — power law ≠ OLS; Zimmerman 2013 — tipologia strategic/reactive/skimmer/avoidant **inventada**), **2 corretas em escopo** (Koedinger 2013 DataShop como repositório; Pintrich 2004 framework SRL). Risco regulatório/acadêmico se algum aluno questionar.
  3. **Cramming ratio quebrou em silêncio após calendário unificado** (S4): `MPE_CALENDARIO.getPrazo(n, comp)` agora retorna `fecha = ACESSO_LIVRE_FIM = 2026-07-02 18:00 BRT` para **todos os componentes de todas as 9 aulas** (mudança de 2026-05-08, `calendario.js:74-81`). `computeCircadian` em `admin.html:4912-4915` mede "% de eventos na janela 48h pré-prazo da aula N" — agora a janela é fixa em `2026-06-30 18:00 → 2026-07-02 19:00` para toda aula. Resultado: até 30/06, **ninguém terá `crammedAulas` populado**; depois de 30/06, **TODOS terão se acessaram qualquer coisa nesse período**. A flag 🌙 "crammer crônico" perdeu poder discriminatório.

- **Top-3 acertos elogiáveis**:
  1. **Point-biserial `rpb` em `computeQuestionPsychometrics`** (admin.html:2178–2194) está correto: usa `rest-score` (acerto nas outras questões), não a soma total, evitando self-correlation. Edge case `sxx*syy=0` → retorna 0. Isto bate com a literatura clássica (Crocker & Algina, Allen & Yen) — é o jeito certo de fazer `rpb` em CTT.
  2. **`get_class_time_percentiles()` SECURITY DEFINER com gate k=5 e janela 30s–7200s** (schema.sql:463–489) é um exemplo limpo de função agregada k-anônima — zero PII, RPC limitado. Modelo a replicar para outros agregados turma.
  3. **Modal de aluno + percentil exato + delta vs P50 + arrays separados de P25/P50/P75** (admin.html:1693–1832) é cuidadoso: percentil é exato (`rank/n` em `percentileOf`), delta tem sinal, badge tem cor coerente. Pequenos defeitos cosméticos (S1) mas o esqueleto é confiável.

---

## Achados por métrica

Ordem: pipeline de carregamento → métricas estruturais → Onda 4 → vis adicionais.

---

### Pipeline de dados

#### `MpeDB.adminFetchAll` — `mpe-db.js:359`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Carrega 11 tabelas em paralelo via Promise.all e retorna `data:{...}` consumido por `_tx`.
**Problema(s):**
1. **Nenhum `.order()` em queries de tabelas com timestamp** (`page_visits`, `section_progress`, `confidence_ratings`, `micro_attempts`, `quiz_aggregates`, `quiz_question_attempts`, `paper_exercises`). Postgres + RLS pode devolver linhas em ordem arbitrária — o consumidor `_tx` em `admin.html:5673–5680` faz `quiz.questions[qid].attempts.push({...})` na ordem de leitura, e `firstTryAccuracyPerStudent` (`admin.html:1416–1426`) usa `attempts[0]` como "primeira tentativa". **`attempts[0]` é a primeira do array JS (ordem de leitura DB), não a cronologicamente primeira.** Métricas downstream (acerto 1ª por aluno, ftPct, risk score feature 2, Knower's quadrant Y, Bullet "Acerto 1ª turma") podem estar trocando a primeira pela última quando há ≥2 tentativas. Em quiz "uma só submissão" (que é o padrão em pre/pos/exerc), há só 1 attempt por questão e o bug não dispara — mas em quizzes embedded da Aula 1 legacy e em micro-checkpoints (3 tentativas), dispara.
2. **Sem paginação/limit** — em turmas maiores ou semestres longos pode estourar limite Supabase default 1000 linhas/select.

**Hipótese silenciosa:** ordem natural do Postgres = ordem cronológica. Falsa em geral.

**Recomendação de fix:** adicionar `.order('answered_at', {ascending:true})` em `quiz_question_attempts`, `micro_attempts`; `.order('completed_at')` em `section_progress`; `.order('recorded_at')` em `confidence_ratings`. Ou ordenar dentro de `_tx`/de cada compute consumidor.

---

#### `_tx(supabaseData)` — `admin.html:5643–5764`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Transforma flat Supabase em shape esperado pelos renderers (mesmo do legacy `MicroTracker.getData`).
**Problema(s):**
1. Linha 5734 `data[byId[iv.admin_id]].nome` para preencher `adminName`. Se `iv.admin_id` aponta para um profile que não está em `byId` (admin foi removido), retorna `undefined` em vez de placeholder. Já aciona `((... || {}).nome)` defensivo, OK.
2. Linha 5751 `quizScores = ... .map(function(q){return q.bestScore||0})` — `bestScore=0` significa "0% mesmo" ou "não respondeu"? `quiz_aggregates` é criado com `best_score=0` no insert inicial, então `attempts > 0` é o filtro real (linha 5751 já filtra `q.attempts > 0`). OK.
3. **Confounding de `data[mat].sections`**: a tabela é multi-key (`page_id × section_id`). Em `admin.html:5683–5708`, três fontes (`sectionProgress`, `confidence`, `microAttempts`) escrevem na mesma sub-árvore. Ordem de execução determina o estado intermediário; resultado final OK porque cada um setа keys distintas (`startedAt`, `confidencePre`, `microCheckpoint`).
4. **`paperExercises` e `reflections` não são sincronizados com `data[mat].pages`**: aluno que só preencheu reflexão sem gerar `page_visits` não conta em `pagesVisited`. Já é assim no legacy, é decisão pedagógica defensável. S1.

**Recomendação:** checar se algum compute lê `quiz.questions[qid].attempts[0].correct` — se sim, ordenar `attempts` por `timestamp` antes de servir.

---

### Métricas Onda 1 (Por Aluno + Risk + Benchmarks)

#### `firstTryAccuracyPerStudent` — `admin.html:1416–1426`

**Veredito:** ❌ BROKEN (potencialmente)
**Severidade:** S5
**O que mede:** % de questões cuja **primeira** tentativa foi correta, agregando todos os quizzes do aluno.
**Como está implementado:**
```js
var attempts = q.questions[qid].attempts || [];
if (attempts.length > 0) { total++; if (attempts[0].correct) first++; }
```
**Problema(s):**
1. `attempts[0]` é a primeira na ordem que o `_tx` push'ou. Sem `.order()` no `adminFetchAll`, **isso pode ser a tentativa MAIS RECENTE** (Postgres tipicamente retorna em ordem de inserção, mas sem garantia formal; Supabase JS client não impõe ordem). Se o aluno responde, erra, refaz e acerta, `attempts[0]` pode ser a refeita (correta) — superestima ftPct. Se a primeira veio em ordem inversa, subestima. Risco depende do volume de re-tentativas; em quizzes "uma única submissão" não dispara, mas em micro-checkpoints e quizzes embedded sim.
2. `q.questions[qid].correct` (boolean agregado em `_tx:5679`) marca `true` se ALGUMA tentativa foi correta — não é usado por essa função, mas pode estar sendo lido em outro lugar como "acertou".

**Edge case:** aluno sem nenhum quiz → `total=0` → retorna `pct=null`. OK.

**Recomendação:** ordenar `attempts` por `timestamp` antes de servir, OU computar diretamente do `raw.quizQA` ordenado.

---

#### `streakForStudent` — `admin.html:1428–1453`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Dias consecutivos com pelo menos uma atividade, retroagindo de hoje.
**Problema(s):**
1. **Conta o dia de hoje sempre**: loop `for (var i = 0; i < 365; i++)` começa em `i=0` (hoje). Se o aluno NÃO acessou hoje, `dates.has(key)` é falso, `else if (i > 0) break` → não quebra (i=0). Resultado: streak começa zero, próxima iteração `i=1` (ontem), se não tem → break. **Aluno que estudou ontem mas não hoje recebe streak=0**, não 1. Comportamento OK por convenção, mas inconsistente com a UX comum (GitHub conta streak se ontem e dispensa hoje).
2. Toma `firstVisit` E `lastVisit` da mesma página → conta o mesmo dia 2x se ambos no mesmo dia (idempotente em `Set`, mas conceitualmente desnecessário). S1.
3. Não considera `recorded_at` de `confidence_ratings` nem `completed_at` de `section_progress`. Só `lastVisit` de pages e `timestamp` de quiz attempts. **Aluno que só faz checkpoint+reflexão sem disparar page_visit não conta.** S2.

**Recomendação:** ou documentar a convenção (streak ignora hoje se inativo hoje), ou tratar `i==0` separado. Adicionar `section_progress.completed_at` e `micro_attempts.answered_at` à coleta.

---

#### `weeklyCV` — `admin.html:1475–1499`

**Veredito:** ❌ BROKEN
**Severidade:** S5
**O que mede:** Coeficiente de variação do tempo dedicado por semana, por aluno.
**Como está implementado:**
```js
var week = Math.ceil((((d - onejan) / 86400000) + onejan.getDay() + 1) / 7);
weekly[key] = (weekly[key] || 0) + pg.totalTime / 60000;
```
**Problema(s):**
1. **`pg.totalTime` é o total acumulado da página até `pg.lastVisit`**, NÃO o tempo gasto naquela semana específica. A função busca `pg.lastVisit` e atribui o `totalTime` inteiro a essa semana. Se o aluno acessou a Aula 1 ao longo de 3 semanas e o `lastVisit` cai na semana 3, **todo o totalTime vai para semana 3**. CV calculado é puro lixo: aluno regular de 30min/semana × 3 semanas vira `weekly = {S3: 90}` → 1 valor → `vals.length < 2` → retorna nada. Aluno que abriu Aula 1 (90min em S3) e Aula 2 (90min em S6) → `weekly = {S3: 90, S6: 90}` → CV=0 (constante). **Métrica reflete em qual semana foi `lastVisit`, não consistência de estudo.**
2. Cálculo de número da semana ISO está aproximado (não usa lógica ISO 8601 de week-numbering). Para esse uso é aceitável (S1).
3. Risk score (Feature 5, `admin.html:1591`) usa `r.cv > 1.5` → essa flag está sistematicamente errada porque o input é fundamentalmente errado.

**Hipótese silenciosa:** existe `tempo gasto por semana`. Não existe — Supabase só tem `total_time_ms` cumulativo + `last_visit_at`.

**Edge case:** aluno com 1 aula visitada → `vals.length=1` → ignora. OK.

**Recomendação:** abandonar essa métrica até existir granularidade de tempo por dia/semana (provavelmente requer schema novo: `time_per_day` ou inferir de `quizQA.answered_at` + `section_progress.completed_at` somando timestamps em janelas). Opção barata: contar **número de eventos por semana** (acerto 1ª count + section completions count) como proxy de regularidade — não captura tempo, mas captura disciplina.

---

#### `daysSinceLastActivity` — `admin.html:1518–1530`

**Veredito:** ✅ OK
**Severidade:** S2 (cosmético)
**Problema(s):** análogo ao streak — só lê `pg.lastVisit` e `q.lastAttempt`, não considera `section_progress.completed_at` ou `micro_attempts.answered_at` ou `confidence.recorded_at`. Aluno que só fez checkpoint hoje sem disparar page_visit (improvável dado o tracker, mas possível em portal.html) é considerado inativo. Em prática, o tracker.js dispara page_visit no load → cobertura ~OK.

---

#### `computeBenchmarks` — `admin.html:1534–1553`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** P25/P50/P75 das métricas-chave da turma.
**Problema(s):**
1. **`pctl(arr, p) = s[Math.floor((s.length-1)*p)]`** — usa o quantile "lower" sem interpolação. Para P50 com n=50 → índice 24 → mediana entre 25º e 26º elemento (mais ou menos OK). Para n par, NÃO faz `(s[n/2-1]+s[n/2])/2`. Diferença pequena com n=50; relevante com n<10 ou em comparação cross-section.
2. **`fts = rows.filter(r.ftPct!==null)`** mas **não filtra por `ftTotal>=5`** como `computeRiskScore` faz. Logo, P50Ft inclui alunos com 1–4 itens respondidos (alta variância). Aluno com 1 item: ftPct ∈ {0,100} — distorce o P50.
3. P25/P50 calculados sobre 50 alunos é razoável. Para AcuracyP50 só restringe `quizzesCompleted>0`, mas P50Tempo / P50Aulas inclui zeros (alunos que nunca acessaram). Métrica fica enviesada para baixo. Se objetivo é "P50 entre os ATIVOS", deveria filtrar.

**Recomendação:** mediana real para n par; filtro `ftTotal>=5` em `fts`; opção de "ativos vs todos" controlada por toggle no UI.

---

#### `computeRiskScore` — `admin.html:1557–1599`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Score 0–100 rule-based, 5 features, classifica em low/med/high/inactive.
**Problema(s):**
1. **Pesos arbitrários**: 35 (dias>7), 30 (ftPct<40), 20 (tempo<P25/2), 15 (aulas<P25), 10 (CV>1.5). Não há justificativa documentada. Soma máxima possível: 35+30+15+20+10 = 110, clampada a 100. **Aluno pode ter score=100 sem ter "Nunca acessou"** (cuidado: o branch `inactive` retorna antes, OK). Mas: aluno com daysSince>7 + ftPct<40 (35+30=65) já é "high" sem mais nada. Defensável? Talvez. Documentável? Sim, deveria.
2. **Feature 5 (CV) usa `weeklyCV` quebrado** (ver acima) → flag não confiável.
3. **`bench.p25Aulas > 0` gate** — em semanas 1–2 do semestre quando todos têm 0 aulas, P25=0, gate impede a flag. OK defensivo, mas significa que a feature só "liga" depois de já existir variância.
4. **Sem uncertainty quantification** — score=29 vs score=30 muda label de `low` para `med`, sem indicação de margem de erro. Em borda, pode oscilar entre cargas.
5. **Hipótese silenciosa**: features são independentes (soma simples). Provavelmente correlacionadas (aluno que não acessa há 7d também tem ftPct baixo e tempo baixo — triplo-conta o mesmo fenômeno).

**Recomendação:** documentar pesos no admin como tooltip; adicionar "score range com IC" se >P75 da turma flutua; checkbox para mostrar "componentes do score" no perfil para o Darcio entender a composição.

---

#### `sortAlunos` — `admin.html:1605–1627`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** 16 chaves declaradas (CLAUDE.md fala em 15), todas funcionam. `dias-desc` usa `daysSince==null ? -1` (nunca acessou vai para o **fim** quando desc) — defensável. `ft-asc` usa `999` para nulls (vão para fim). `_o4SortDrift` em `admin.html:5500` falha graciosamente se `_onda4` ausente. OK.

---

#### `exportAlunosCSV` — `admin.html:1638–1686`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Exporta CSV com 23 colunas, respeita filtros UI.
**Problema(s):**
1. **Header não escapado**: linha 1649 monta `'Aulas visitadas (de '+(window._totalItems||0)+')'`. `window._totalItems` é número, OK. Mas se nome de coluna contiver vírgula (não contém aqui) ou aspas, header quebra. Risco zero mas frágil.
2. **`riskLabel(r.risk.level).replace(/^[^\s]+\s/, '')`** (linha 1667) — strip de emoji + espaço. Funciona para "🔴 Em risco" → "Em risco". Falha se label não tem espaço após emoji.
3. **Onda 4 columns**: `cal.ece.toFixed(1)` (linha 1668) **vai exportar números absurdos (~50pp) por causa do bug master de escala**. CSV vai ter "ECE: 51.3" para todos os alunos.
4. BOM UTF-8 (`﻿`) presente — Excel BR abre corretamente. ✅
5. `csvq` (linha 1629) escapa vírgulas, aspas, newlines com `""`. Padrão RFC 4180 correto. ✅

**Recomendação:** após corrigir bug de escala, validar valores ECE no CSV.

---

#### `showStudentProfile` — `admin.html:1693–1833`

**Veredito:** ✅ OK (modular)
**Severidade:** S2
**Problema(s):**
1. `cmpWithPercentile`: percentil exato via `percentileOf` é `(below)/n*100` (linha 2434) — está correto, mas é "% **abaixo** do valor", não "% **igual ou abaixo**". Padrão estatístico aceita ambos; não há nota.
2. `_arr.media` filtra `quizzesCompleted>0` mas `_arr.tempo`, `_arr.aulas` incluem zeros — assimetria que pode dar percentis enganosos para alunos que ainda não fizeram nada.
3. Texto "copiar resumo" não inclui Onda 4 nem intervenções. Aceitável.

---

### Intervention tracking

#### `computeInterventionDelta` — `admin.html:1863–1924`

**Veredito:** ⚠️ AT RISK
**Severidade:** S5 (estatístico)
**O que mede:** Delta de eventos e acerto 1ª na janela 14d pré × 14d pós a uma intervenção.
**Problema(s) — viés de seleção**:
1. **Aluno só recebe intervenção quando está mal** (risk high/inactive). Se o desempenho é estocástico em torno de uma média, **regressão à média garante "improved" sem que a intervenção tenha causado nada**. Não há grupo de controle (placebo, sintético, peer comparison).
2. Classificação `improved` (linha 1910) requer `post.events > pre.events && deltaPct >= -5`. **`pre.events` da janela 14d antes da intervenção pode estar artificialmente baixo se a intervenção foi disparada justamente porque o aluno parou de aparecer.** Próxima janela quase sempre será maior em eventos por puro retorno-à-baseline.
3. **`empty` (pre=0 e post=0)** classifica corretamente sem ruído.
4. **`pending` se daysPost<3** — OK.
5. Plumbing: `ts >= preStart && ts < ivMs` vs `ts >= ivMs && ts <= postEnd` — limite inclusivo em pos, exclusivo em pre. Eventos na mesma timestamp da intervenção contam apenas em pos. OK.
6. **`eventsDeltaPct = 999`** sentinela para "saiu do zero" (linha 1905) — sem documentação no UI; renderiza "(surgiu do zero)" em `_formatDeltaHtml:1939`, OK.

**Hipótese silenciosa:** intervenção é exógena (aleatória ou independente do estado do aluno). **FALSA por design.** O dashboard precisa avisar o Darcio: "esta análise NÃO é causal".

**Recomendação:**
- Adicionar disclaimer explícito no card: "Comparação descritiva, não causal. Mudança esperada por regressão à média mesmo sem intervenção."
- Como fix técnico: comparar delta do aluno com delta médio de **peers similares** que NÃO receberam intervenção no mesmo período (controle sintético leve). Ou usar pre-intervention TREND (slope dos últimos 28d) em vez de level — cai em mais robustez contra MtR.
- No mínimo: relatar `n_pre`, `n_post` brutos sem porcentagens quando `pre.events<3`.

---

### Psicometria

#### `computeQuestionPsychometrics` — `admin.html:2125–2250`

**Veredito:** ✅ OK (com bug menor de manutenção)
**Severidade:** S2
**O que mede:** p-value clássico CTT + point-biserial (`rpb`) com rest-score + distractor analysis com `avg-rest`.
**Como está implementado:** ver linhas 2178–2194.
**Problema(s):**
1. **Lógica de "manter primeira tentativa"** em `admin.html:2143–2149` tem dead code:
```js
if (!entry.firstTs || ...) {                                    // entry.firstTs SEMPRE undefined
  if (!entry.byUser[q.user_id].firstTs || ...) {                // gateia certo
    entry.byUser[q.user_id].first = ...;
    entry.byUser[q.user_id].firstTs = q.answered_at;
  }
}
```
   Outer `if` checa `entry.firstTs` que **nunca** é setado — sempre passa. Inner faz a checagem certa por usuário. Resultado **correto** (converge para min answered_at), mas código confuso, com risco de manutenção futura quebrar a parte que funciona por acidente.
2. **Comparação de timestamps por string** (`q.answered_at < entry.byUser[uid].firstTs`) funciona porque ISO 8601 é lex-comparable, mas frágil se timezone mudar formato (rara).
3. **rpb correto**: numerador `Σ(xi-x̄)(yi-ȳ)` / `√(Σ(xi-x̄)² · Σ(yi-ȳ)²)`. Rest-score evita auto-correlação (linha 2178–2183: `(tot.correct - thisQ) / Math.max(1, tot.total - 1)`). ✅ Padrão CTT.
4. **Filtro `n < 3 → return`** (linha 2169) é defensivo OK; mas **não filtra por `n < 5` para flag `neg`** (linha 2228 já tem `&& n >= 5`). OK.
5. **`distractors[ans].correct = f.correct`** (linha 2202): atribui a corretude da primeira observação dessa alternativa. **Bug sutil**: se duas tentativas DIFERENTES marcam a mesma alternativa A, e a primeira é marcada como correta (porque o aluno daquela linha por acaso era certo no resto), `correct` fica `true`. Como `correct` é por (questão, alternativa) e o "ser correta" não muda por aluno, basta uma checagem por chave. Mas o código atribui de novo a cada iteração — se duas tentativas dão valores diferentes (impossível dado mesma chave), conflita. Defensivo seria checar `distractors[ans].correct === undefined` antes.
6. **`correctAnswer` em `topDistractor` filter** (linha 2196–2208): `if (f.correct && !correctAnswer) correctAnswer = ans;` — pega a alternativa marcada por quem acertou. Se ALGUM aluno marcou alternativa errada e (não foi correto) E nenhum acertou (todos erraram), `correctAnswer = null`. Tooltip diz "alt. correta:'—'". Aceitável; mas se a chave-resposta é conhecida (do HTML do quiz: `data-correct="X"`), poderia vir da fonte ao invés de inferir. Schema atual não persiste a chave.
7. Flag `easy` para `pValue > 0.90` (linha 2230) — em CTT um item com p>0.9 não é necessariamente "fácil ruim", pode ser "muito bem ensinado". Etiqueta UI sugere "remover" — preciso de cautela pedagógica. UI deveria ler "consolidado" e não "fácil".

**Recomendação:** simplificar o ifs em 2143–2149 para um único bloco; persistir `correct_answer` em algum metadata (ex.: `quiz_aggregates.correct_key`) para não inferir; renomear flag `easy` para `consolidado` no UI.

---

#### `renderPsychometrics` — `admin.html:2347–2397`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** filtro por aula afeta numerador E denominador da contagem do counter (`sorted.length` vs `rows.length`); contagem de OK/flag bate com `flag.code`. Sort `page` dentro de mesma página ordena por número numérico extraído do `question_id`. ✅

---

### Tag cloud

#### `_tokenize` + `computeTagCloud` — `admin.html:2449–2497`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Tokeniza reflexões PT-BR; conta frequência; permite filtro por aula.
**Problema(s):**
1. **Lista de stopwords** em `admin.html:2445` tem ~150 palavras. Falta termos comuns: "fica", "ficar", "feito", "vai", "vou", "será", "deveria", "podemos", "consigo" — e duplicatas explícitas no array (`sem,sem` aparece 2x; `nunca` aparece 2x; vários itens repetidos). Não quebra (vai para `_STOP[t]=true` várias vezes), mas é sinal de manutenção desleixada.
2. **Stem/lemma ausente**: "estudei", "estudo", "estudar" contam como termos diferentes — distorce ranking de termos. Aceitável para v0; ideal aplicar Porter PT-BR (`snowball-pt`).
3. **Tokens de 3+ chars** descarta termos curtos legítimos como "lei", "são", "ser", "TMS" (acrônimo!), "UMP", "EMP", "EG" — **acrônimos pedagógicos perdidos**. Para o admin, "TMS" e "EG" são termos QUE QUER ver no cloud. Limite atual mata o sinal mais útil.
4. Filtro por termo ativo (`_tokenize(r.text).indexOf(activeTerm)>=0`) re-tokeniza cada vez (perf O(N reflexões × M tokens) por click) — OK em escala 50 alunos.

**Recomendação:** lower threshold de tamanho para 2 (ou whitelist de acrônimos de microeconomia: TMS, UMP, EMP, EG, BP, RM, AB1, AB2). Limpar stopwords duplicadas. Avaliar lemmatizer leve.

---

### Cohort survival + sparkline + risk trajectory

#### `computeCohortSurvival` — `admin.html:2634–2674`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. `SEMESTER_START = '2026-04-15'` hard-coded — duplicado em `_retroScore`, `computeAnomalies`, `renderRiskTrajectoryHtml`. Risco de drift entre eles. Devia vir de `MPE_CALENDARIO`.
2. `if (nWeeks > 12) nWeeks = 12` cap arbitrário — semestre tem ~14 semanas (22/04 a 24/06 + dias extras). Curva fica truncada.
3. **`pageVisits.last_visit_at`** é só o ÚLTIMO acesso da página, então `eventsByUser[uid]` só pega o último timestamp por página — subestima atividade. Use `quizQA.answered_at` + `sectionProgress.completed_at` (já presentes) como sinais primários e ignore `pageVisits.last_visit_at` (redundante e impreciso).

---

#### `_retroScore` — `admin.html:2874–2940`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Reconstrói risk score como teria sido em uma data passada (`asOfMs`).
**Problema(s):**
1. **Uses `bench` (atual)** como referência para P25Aulas/P25Tempo. Mas em S3 do semestre, P25 atual da turma é maior do que P25 era em S3. Isto **subestima retroativamente** quão acima do P25 da época o aluno estava. Sem benchmark histórico, é sempre comparado contra benchmark atual — anacrônico.
2. `totalTimeMin += pv.total_time_ms / 60000` (linha 2904) — `pv.total_time_ms` é total acumulado **até hoje**, não até `asOfMs`. Mesmo bug do weeklyCV: alocar tempo total de uma página visitada pela última vez antes de `asOfMs` infla o tempo retro. Subestima risco passado.
3. Feature 5 (CV) **não é replicada** no retro — o retro só usa 4 das 5 features do score atual. Inconsistência leve.
4. Trajetória do perfil aluno (sparkline) baseada em retro com bug → **nem tudo o que aparece corresponde ao que era de fato observável na época**.

**Recomendação:** snapshot semanal de `bench` (storage) ou aceitar limitação e adicionar disclaimer no UI ("comparado contra benchmark atual da turma").

---

### Anomaly detection

#### `computeAnomalies` — `admin.html:2998–3043`

**Veredito:** ✅ OK
**Severidade:** S3
**O que mede:** Z-score da semana atual vs janela retrospectiva 4 semanas (excluindo atual).
**Problema(s):**
1. **n=4 semanas** para sd é amostra muito pequena → sd estimado ruidoso → z-score volátil. Ajuste `if (sd === 0) sd = Math.max(0.5, mean*0.2)` (linha 3032) é workaround de "mean rate" — defensável.
2. **`mean === 0` retorna** sem flagar — aluno que sempre teve 0 e teve 0 esta semana não é anomalia (correto), mas aluno que **continuou em 0 após eventos esporádicos** não é detectado tampouco.
3. Threshold z<-1.5 → ~6.7% bilateralmente; com 50 alunos, esperaríamos ~3 alarmes só por ruído mesmo sem queda real. Falsa-positiva esperada.
4. Combina `quizQA.answered_at` + `sectionProgress.completed_at` como eventos — OK.

**Recomendação:** aumentar threshold para z<-2 (3% por aluno → ~1 falso positivo de 50, melhor sinal:ruído); ou reportar p-valor calculado sob hipótese binomial-Poisson de eventos.

---

### Nudge queue + Inbox

#### `computeNudgeQueue` — `admin.html:3107+` (longo)

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**Problema(s):**
1. Fluxo OK em geral; categorias mutuamente exclusivas via early return.
2. **`computeNudgeQueue` é re-chamada várias vezes** por render diferente (`renderNudgeQueue`, `renderAdminInbox`, `_inboxGenReflectionItems`). Não é cacheada — desperdício, mas n=50 OK.
3. Disposition `kind='resolved'` expira em 14d; `ignored` é eterno até reset SQL — OK por design.
4. Reflexões fora da janela de 21d (`NUDGE_REFLECTION_WINDOW_DAYS`) caem da fila, mas o aluno pode ter feito reflexão importante em S2 que precisa resposta em S5 (tópico de Slutsky retorna em EG). **Janela rígida descarta valor.**

**Recomendação:** avisar o Darcio quando uma reflexão "expira" da fila sem resposta para escolher resolver/descartar conscientemente.

---

#### `_inboxGenGabaritoItems` — `admin.html:6148–6182`

**Veredito:** ❌ BROKEN
**Severidade:** S3
**O que mede:** Cards de "gabarito libera em <48h" no Inbox.
**Como está implementado:**
```js
var p = window.MPE_CALENDARIO.getPrazo(n, comp);
if (!p || !p.gabarito) return;
var t = p.gabarito.getTime();   // ❌ p.gabarito é number, não Date
```
**Problema(s):**
1. `MPE_CALENDARIO.getPrazo` retorna `gabarito: GABARITO_LIBERADO`, e `GABARITO_LIBERADO = dt('2026-07-03T00:00:00')` onde `dt(iso) = new Date(iso+BRT).getTime()` — i.e., **`p.gabarito` é `number`**. Chamar `.getTime()` em number é `TypeError: p.gabarito.getTime is not a function`.
2. O `try { ... } catch(err) { prazo=null }` em `computeCircadian:4909` mascara, mas em `_inboxGenGabaritoItems` o try **não envolve a chamada `.getTime()`**. Erro propaga para o `forEach`, **interrompe o loop em silêncio** — **nenhum card de gabarito jamais aparece no Inbox**.
3. Linha 6167 também: `p.gabarito.toLocaleString(...)` — mesmo problema.
4. **Bug não tem mensagem visível**, só sumiço silencioso da feature.

**Recomendação:** trocar `p.gabarito.getTime()` por `p.gabarito` direto (já é number). Para `toLocaleString`, fazer `new Date(p.gabarito).toLocaleString(...)`.

---

### Onda 4 — Psico-cognitivo

#### `_o4BuildPairs` + `_o4ECE` + `computeCalibration` — `admin.html:4694–4789`

**Veredito:** ❌ BROKEN
**Severidade:** **S5 — produz número errado**
**O que mede:** Confidence calibration (ECE) por aluno, par (média conf pós × acerto 1ª) por aula.
**Bug master de escala:**
- `confidence_ratings.value` definido em `schema.sql:130` como `CHECK (value BETWEEN 1 AND 5)`.
- Sliders no front (`aula-01.html:87`, `aula-04.html`, etc.) são `<input type="range" min="1" max="5">`.
- `_o4BuildPairs:4735` faz `conf: Math.max(0, Math.min(100, c.sum / c.n))` — **clampa em [0,100] mas `c.sum/c.n ∈ [1,5]`**, logo conf é um número entre 1 e 5.
- `_o4ECE:4748` faz `var b = Math.min(3, Math.floor(p.conf / 25))` → para conf∈{1,2,3,4,5}, `Math.floor(c/25) = 0` sempre. **Todos os pares vão para o bin 0 ([0,25))**.
- ECE então: `Σ |avg(conf em [1..5]) − avg(acc%∈[0,100])| ≈ |3 − 60| = 57pp` para a turma típica. Constante e absurdo.
- Label `over/under/good` (linha 4779–4786): `gap = meanConf - meanAcc ≈ 3 - 60 = -57`, sempre `< -15` → **todos `under-confident`**.

**Consequência sistêmica:**
- Modal do aluno: badge 🧊 "Under-confident · ECE=57.3" para QUASE TODA A TURMA.
- Tab Psico-cognitivo: scatter `o4-calibration-scatter` plota X∈[1,5] num eixo `xMin:0, xMax:100` → todos os pontos no canto esquerdo, diagonal sem sentido.
- CSV export coluna "Calibração (ECE)": ~57 para todos.
- Bullet "ECE turma" no topo do dashboard: zona vermelha sempre acionada.
- Small Multiples: `eceMean` por aula (`admin.html:7634, 7668`) reflete o gap absoluto |conf−acc| do par individual — também ~57 para todas as 9 aulas. **Métrica visualmente flat, sem sinal.**

**Bibliografia:**
- ⚠️ "Hacker, Bol & Keener (2012, Metacognition & Learning)" — paper real é capítulo de 2008 em "Handbook of Metacognition in Education" (não 2012). Bol et al. **2012** (não Hacker) tem outro paper diferente. Citação mistura datas.
- ❌ "Dunlosky & Metcalfe (2009)" — existe livro sobre metacognição, mas a métrica ECE NÃO vem deles.
- ❌ ECE é da literatura ML calibration: **Naeini, Cooper & Hauskrecht (2015) AAAI**, e **Guo, Pleiss, Sun & Weinberger (2017) ICML "On Calibration of Modern Neural Networks"**. Essas são as referências canônicas para a fórmula `Σ (n_k/N) |acc_k − conf_k|` — totalmente ausentes em CLAUDE.md.

**Recomendação fix:**
1. Em `_o4BuildPairs:4735`, mudar `conf: Math.max(0, Math.min(100, c.sum / c.n))` para `conf: Math.max(0, Math.min(100, ((c.sum / c.n) - 1) / 4 * 100))` (mapeia [1,5]→[0,100]).
2. Documentar binning (4 bins de 25pp) no tooltip.
3. Atualizar refs bibliográficas: substituir Hacker/Bol/Keener (manter como bg metacognitivo) por **Guo et al. 2017** para a fórmula ECE.

---

#### `computeResponseTime` — `admin.html:4794–4850`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Mediana de diff entre `answered_at` consecutivos por (user, page); fenótipo cruzando com acerto turma.
**Problema(s):**
1. **Diff entre consecutivos** mede tempo gasto na 2ª–N questão, mas a 1ª questão fica sem tempo medido (não há diff anterior). Para um quiz de 10 questões, são 9 diffs / 10 questões — a 1ª "começa do nada".
2. **Janela 10s–900s** descarta diffs fora — defensável para mitigar idle/sair-e-voltar. Mas **filtra fora questões muito difíceis (>15min) e respostas via copy-paste rápido (<10s)**. O upper de 15min é específico para essa turma; em prova de qualifier 30min/questão é normal.
3. **Mediana da turma como threshold para fenótipo** (linha 4842): `fast = u.medianSec <= tMedT`. Em distribuição RT lognormal típica, ~50% dos alunos vai para cada lado por design. Não há "neutro/calibrado" — todos viram um dos 4 quadrantes. Determinismo da mediana significa que o label depende fortemente do rest-da-turma, não de uma norma estável.
4. **Cross-page sem normalização**: questões de Aula 1 (curtas, ~30s) e Aula 6 (Arrow-Debreu, longas, ~120s) entram na mesma mediana do aluno. Aluno que só fez Aula 1 parece "fast" só porque a aula é curta.
5. Acerto 1ª usado aqui é `firstByQid` (linha 4810) — mas `arr` é ordenado por `ts` antes (linha 4806). OK.
6. **Bibliografia**: ⚠️ Van der Linden (2007) é modelo hierárquico complexo; o dashboard usa diff de timestamps. Wise & Kong (2005) tratam de `RTE` formal com cutoff por item, NÃO implementado. Citações decorativas.

**Recomendação:** normalizar tempo por questão (z-score dentro do mesmo `page_id`) antes de calcular mediana do aluno. Ou implementar Wise & Kong RTE de fato (cutoff binomial misto por item).

---

#### `computeCircadian` — `admin.html:4879–4934`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Heatmap 7×24 (DOW × hora) + cramming ratio = `% eventos em [fechamento−48h, fechamento+1h]` por aula.
**Problema(s):**
1. **Cramming totalmente descalibrado pela mudança de calendário** (descrito no Sumário): `getPrazo()` retorna a mesma `fecha = 2026-07-02 18:00 BRT` para todas as aulas e componentes. **Janela 48h é a mesma para tudo**: 30/06 18:00 → 02/07 19:00. Hoje (15/05/2026) ninguém pode estar nessa janela, então `crammedAulas = []` para todos → flag 🌙 nunca dispara. Após 30/06, todos terão se acessaram QUALQUER coisa nesse período, dispando indistintamente. **Métrica perdeu poder discriminativo.**
2. **Threshold `last48h/total > 0.6 && total >= 3`** é razoável conceitualmente, mas combinado com #1 é vácuo.
3. **Heatmap timezone**: `new Date(e.ts).getHours()` usa hora local do BROWSER do admin. Se o admin abrir o dashboard de Lisboa (UTC+1), `getHours()` retorna +4h em relação a São Paulo (UTC-3). Heatmap de "hora do dia do aluno" distorce.
4. **DOW 0=Dom..6=Sáb** — convenção americana. Render `_o4RenderCircadianHeatmapHtml:5333` usa `['Dom','Seg','Ter','Qua','Qui','Sex','Sáb']`. Coerente. Cultural BR aceita ambos. ✅
5. **Bibliografia**: ❌ Anderson 2014 CHI cramming circadian — **não localizado**. Baker 2018 JLA — não localizado. Citações sem suporte.

**Recomendação:**
1. Reverter o uso de `getPrazo().fecha` para cramming: usar `MPE_CALENDARIO.AULAS_DATAS[n-1]` (a data presencial da aula N) como âncora — cramming = % eventos em [aula_data−48h, aula_data]. Isto recupera o significado pedagógico.
2. Documentar timezone (BRT) no header do heatmap.
3. Substituir refs "Anderson 2014" por algo localizável: estudos de chronotype/academic performance (Wong 2015 / Hara 2018) — verificar antes.

---

#### `computeTrajectory` — `admin.html:4980–5036`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Score composto por (aluno × aula) → percentil turma → série de 9 → drift detector.
**Problema(s):**
1. **Score composto = média aritmética simples de %FT e %sections** (linha 4977). Sem peso explícito; sem normalização entre os dois (já estão em [0,1] OK).
2. **Drift "queda ≥20" entre consecutivos**: dispara para qualquer queda ≥20 pp em SÉRIE INTEIRA. Aluno que vai P50→P30 entre A1 e A2 (queda 20) aciona; mas P50→P20 (queda 30) também aciona, sem distinguir gravidade.
3. **Z-score rolling-3**: janela é os 3 percentis ANTES de i (linha 5019–5020). Para i=3 (4º elemento), janela = índices 0,1,2. SD da janela com n=3 é estimador instável (denominador `n` não `n-1` no código); threshold z<-1.5 com SD ruidoso → muitos falsos positivos.
4. **`if (sd === 0) sd = 1`** (linha 5024) — quando série é constante, sd=0 e z fica `(novo - m) / 1`. Para queda P100→P80, isso vira z=-20 → flag tudo. **Aluno consistentemente em P100 que cai 20 pontos vira drift extremo (z=-20)**. Defensável, mas pp de queda é igual (20pp).
5. **Aulas presentes (com score≠null)**: percentil é só entre quem tem score naquela aula. Aluno que pulou A3 mas fez A1, A2, A4 não tem percentil em A3 (`null`), o resto continua. OK.
6. **Bibliografia**: ❌ Pardos 2014 EDM trajectory drift — não localizado. CMU OLI Learning Dashboard é referência institucional, não metodológica.

**Recomendação:** distinguir severidade do drift (queda 20 vs 40 vs 60); usar SD com `n-1`; pelo menos 2 quedas consecutivas para drift confirmado (reduz ruído).

---

#### `computeVelocity` — `admin.html:5040–5111`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Slope OLS de %acerto sobre 4 fases (pre_review→embedded→post→graded_exercise) por aula × aluno.
**Problema(s):**
1. **OLS sobre 4 pontos** com 0–4 tentativas por fase é estatisticamente quase nada. SE = √(σ²/Σ(x−x̄)²) — com 4 pontos x∈{0,1,2,3}, `Σ(x−x̄)² = 5`, então SE da slope é √(σ²/5). Com n=10 questões por fase, σ² alto, slope point estimate pode oscilar ±20pp/fase. Sem IC reportado.
2. **`embedded` quase sempre vazio** para Aulas 2-9 (legacy só Aula 1 tem embedded). Logo a maioria dos slopes é sobre 2-3 pontos — `pts.length >= 2` permite 2 pontos (linha 5085) mas slope com 2 pontos é só uma linha conectando-os — não há "regressão". OK matemático, sem incerteza reportada.
3. **Fases ausentes não são placeholders zero** — slope só calcula sobre fases respondidas, x salta de 0 a 2 (sem 1). Isso pode inflar artificialmente o slope se aluno só fez `pre_review` e `post` (x=0,2 com queda 100→0 → slope=−50pp/fase, mas em "duas fases" reais).
4. **Power law (Newell & Rosenbloom 1981)** não é OLS — power law é log-log linear, modelando aprendizado como `T = a·N^b`. OLS sobre `(x, accuracy%)` em 4 pontos é totalmente diferente. ⚠️ atribuição decorativa.
5. Turma `mean / IQR` por aula (linha 5099–5106) — `s[Math.floor(s.length*0.25)]` para P25 sem interpolação. Pequena imprecisão em n baixo.

**Recomendação:** rotular como "trend score per phase (OLS)" — não power law. Reportar `n_phases` no UI (já reporta no card individual). Quando `n_phases=2`, ocultar "slope" e mostrar "Δ pré→pós" diretamente.

---

#### `computeSRL` — `admin.html:5115–5228`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** Tipologia em 5 rótulos (strategic/reactive/skimmer/avoidant/mixed/none) baseada em 3 features.
**Problema(s):**
1. **Heurística de 5 rótulos NÃO existe na literatura SRL**. Zimmerman (2013) distingue **proactive vs reactive** (2 categorias), Pintrich (2004) distingue por **fase** (forethought, performance, reflection). "Skimmer", "avoidant" e "mixed" não são categorias canônicas — foram inventadas pelo dashboard. ⚠️ Citação Zimmerman/Pintrich é decorativa.
2. **Thresholds arbitrários**: `readBeforeTry > 0.7`, `apt < 1.5`, `revisit > 1.3`, `apt > 2`, `paperShare < 0.3`. Não derivados de empiria; não justificados no código. Calibração para esta turma sem base.
3. **Ordem de testes determina classificação**: `if (strategic) elif (reactive) elif (skimmer) elif (avoidant) else mixed`. Aluno com perfil "ambíguo" sempre cai em `mixed`. Aluno que satisfaz strategic + skimmer simultaneamente vai para strategic. **Não é um clustering, é uma cadeia de gates.**
4. **`paperShare`** (linha 5202) usa `paperByUser[uid] / Math.max(1, nSecsDone)` — `paperByUser` é só count de paper_exercises declarados (linha 5174), `nSecsDone` é count de sections com duração computada (linha 5201). Razão NÃO tem domínio definido (pode ser >1 se o aluno declarou mais paper exercises que sections completou). Threshold `<0.3` para `avoidant` é arbitrário e mal definido.
5. **`durMed < p25Dur` para skimmer**: P25 calculado sobre TODA a turma, mas aluno com 2 sections de 5min e 1 de 10min vs aluno com 50 sections de 30min — duração mediana per aluno é incomparável quando os contextos são diferentes (Aula 1 é mais curta que Aula 6).

**Recomendação:** se manter, renomear como "Heurística de comportamento (proxy para SRL)" e documentar features no UI; remover citações a Zimmerman/Pintrich; tornar thresholds configuráveis via UI; adicionar coluna "n_features_observed" para o Darcio saber se foi `mixed` por dados ausentes ou por perfil real.

---

#### `computeOnda4All` — `admin.html:5231–5248`

**Veredito:** ✅ OK (orquestração)
**Severidade:** S1
**Problema(s):** try/catch por método é OK para isolar falhas. Logging de tempo é defensivo. Não rerruns em mudança de filtro UI (correto: dados não mudaram). ✅

---

### Renderers Onda 4

#### `renderOnda4Calibration` — `admin.html:5252–5284`

**Veredito:** ❌ BROKEN
**Severidade:** S5
**Problema(s):** Plota `xMin:0, xMax:100` mas pontos têm `x ∈ [1,5]` por causa do bug master. **Pontos comprimidos no canto esquerdo do scatter.** Diagonal de calibração não cruza nenhum ponto. Visual enganoso: parece que toda a turma é "extremamente under-confident".

**Recomendação:** após corrigir bug master, scatter funciona automaticamente.

---

#### `renderOnda4RT` — `admin.html:5286–5319`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** maxX = max(60, ceil(maxX/30)*30) — gracioso. Tooltip OK. Distribuição em 4 categorias com mediana split — herda problemas de `computeResponseTime` (cross-page, mediana volátil), mas o renderer em si está OK.

---

#### `renderOnda4Circadian` — `admin.html:5355–5364`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Normaliza por max da matriz turma (linha 5324). Aluno com poucos eventos (todos no mesmo slot) ainda gera matriz não-degenerada — defensiva. Tooltip mostra contagem absoluta. Legenda "max=N ev" — OK. Padrão semanal Dom-Sáb (americano).

---

#### `renderOnda4SRL` — `admin.html:5366–5404`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** Pie SVG de 6 categorias bem implementado; legenda inclui counts e %. Cores razoáveis. Usa `none` como bucket explícito.

---

#### `renderOnda4Trajectory` — `admin.html:5406–5427`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Sumário leve (driftCount, mediana percentil último). Não mostra distribuição da queda ou histograma — perde nuance. Tooltip da legenda explica drift. ✅

---

#### `renderOnda4Velocity` — `admin.html:5429–5456`

**Veredito:** ⚠️ AT RISK
**Severidade:** S2
**Problema(s):** Tabela com slope médio, IQR (P25-P75) e n_users por aula. Cores: verde se >5 pp/fase, vermelho se <-5 pp/fase, neutro entre. Sem IC, sem aviso se `nUsers<5`. Aceitável para visão de turma; pobre para decisão pedagógica.

---

### Tab "Por Aula" / Heatmap / Mini-cards

#### `renderHeatmapBody` (interno) — `admin.html:6727–6749`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** Heatmap funcional; sortKeys cobrem o esperado; tie-break por nome. ✅

---

#### `renderMiniCards` (interno) — `admin.html:6614–6639`

**Veredito:** ✅ OK
**Severidade:** S1

---

### Vis avançadas

#### `computeSankeyFlows` + `renderSankey` — `admin.html:3995–4115`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Migração 7d atrás → agora entre estados de risco (green/amber/red/gray).
**Problema(s):**
1. **Estado retro 7d depende de `_retroScore`** — herda problemas dele (bench atual usado retroativamente).
2. **`weekAgo = now - 7*86400000`** é janela fixa. Em S2 do semestre, "7d atrás" = início do semestre; muitos foram inactive→algo, mas o sinal não é estável (cold start).
3. Visualmente bem feito; flows OK.

---

#### `fitIRT2PL` + `renderWrightMap` — `admin.html:4120–4322`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**O que mede:** IRT 2-parameter logistic via alternating gradient ascent JS custom.
**Problema(s):**
1. **MLE custom JS sem testes**: 60 iterações, lr fixos, regularização `0.05*theta` ad hoc. Não compara com pacote conhecido (mirt, ltm, py-irt). Convergência não monitorada (não loga loss). Identificabilidade resolvida via normalização θ ~ N(0,1) a cada iter (linha 4193–4196), padrão.
2. **Clamp `a∈[0.1, 3.5]`, `b∈[-3.5, 3.5]`** — restrições razoáveis mas escondem extremos legítimos. Item degenerado (todos acertaram) tem b muito negativo; clamp em −3.5 esconde.
3. **`itemCount[ik] >= 3 && userCount[u] >= 3`** — gate baixo. IRT 2-PL com 3 obs por item/aluno é severamente subdimensionado; literatura recomenda ≥30 por item, ≥10 por θ.
4. **Wright map com jitter** funciona visualmente.
5. **Sem fit indices** (RMSEA, CFI, item fit χ²) — Darcio não tem como saber se o modelo se ajusta.

**Recomendação:** se quer rigor, exportar matriz X para usuário rodar em R/py. Senão: marcar UI como "exploratório, não validar decisões com isto".

---

#### `computeTopicClusters` + `renderTopicClusters` — `admin.html:4325–4497`

**Veredito:** ✅ OK (com nuances)
**Severidade:** S3
**Problema(s):**
1. **TF-IDF + k-means cosseno** standard. Vocab capado em top-200 termos `df>=2`. OK.
2. Init Forgy max-distância (linha 4389) — defensivo bom.
3. **k=3 default**, sem método de seleção (silhouette, elbow). Depende do Darcio escolher.
4. Empty cluster handling: se um cluster fica sem docs, `n=0` skip recomputo (linha 4434). Centróide fica zero — pode "atrair" docs no próximo iter (recovery automático).
5. Sample doc é o mais próximo do centróide (representante razoável). ✅
6. Stopwords compartilham `_PT_STOPWORDS` com tag cloud — herdam manutenção desleixada.

---

#### `computeCoErrorGraph` + `renderCoErrorNetwork` — `admin.html:4500–4655`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Pares com peso ≥2 contam como aresta — gate razoável; sem peso ≥3 ou ≥5 fica saturado. Force-directed layout (Fruchterman-Reingold) com cooling exponencial — clássico; converge em 300 iter para n<50. ✅

---

#### `renderTimePerformanceScatter` — `admin.html:4657–4683`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** Filtra `ftTotal>=5`. Eixo X ajusta dinamicamente. ✅

---

### Vis adicionais (Wave 5+)

#### `_vizComputeTopBulletData` + `renderTopBullets` — `admin.html:8134–8230`

**Veredito:** ❌ BROKEN (no campo ECE)
**Severidade:** S5
**Problema(s):**
1. **ECE bullet** (linha 8164): `Math.abs((p.conf||0) - (p.acc||0))` com bug master (conf∈[1,5], acc∈[0,100]) → ECE turma constantemente ~57pp → bullet sempre na zona vermelha. **Sinal pedagógico zero.**
2. **Completude** (linha 8169): `target=80, zones=[50,70]`. Calculada como `pagesVisited / totalItems` onde `totalItems = 9 aulas + 5 monitorias = 14`. Em S4 do semestre, só 4 aulas + 0 monitorias estão "abertas" → completude máxima possível ~28%, dentro da zona vermelha. **Bullet de completude é estruturalmente impossível atingir até o fim do semestre.** Ou ajusta target dinamicamente, ou normaliza por "itens disponíveis até hoje".
3. **Acerto 1ª turma** (linha 8150): herda bug do `firstTryAccuracyPerStudent` — pode estar contando tentativa errada como primeira.
4. **Streak mediano**: razoável.

---

#### `_vizComputeLikert` + `renderLikertConfidence` — `admin.html:8235–8315`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. Defensiva: detecta `v∈[1,5]` OU `v∈[0,100]` (linha 8249–8252) e ajusta. Como schema é estritamente [1,5], só ramo 1 dispara. Histograma e diverging bar correto.
2. SVG manual com axis 100 = centro; OK.

---

#### `_vizComputeCalendar` + `renderCalendarHeatmap` — `admin.html:8326–8456`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. Timezone via `getDay()` / `getMonth()` — local do browser do admin (não do aluno). Mesmo problema do Onda4 Circadian.
2. 12 semanas hard-coded — semestre tem ~10. OK.
3. Marca "dia de aula" via `aulaDays[k]` derivado de `MPE_CALENDARIO.AULAS_DATAS` — coerente.

---

#### `_vizComputeFunnel` + `renderFunnelChart` — `admin.html:8461–8605`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. Etapa 2 "Completou ≥7 seções" — número 7 é metade-ish de 9 sections do material. Threshold arbitrário, mas razoável.
2. Etapas 3-5 verificam `quizAggregates.attempts>0` OR `quizQA.page_id=...`. OR é OK pois nem sempre `attempts` está populado.
3. Detecção de "biggest drop" (linha 8564–8572) destaca etapa de maior queda absoluta. Razoável.

---

#### `_vizComputeSlopes` + `renderSlopePrePost` — `admin.html:8610–8680`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Gate `pre.t<5 || pos.t<5` é razoável. Slope = pos - pre (não OLS, é simples). Cores green/red por sinal. ✅

---

#### `_vizComputeGapMatrix` + `renderGapMatrix` — `admin.html:8685–8781`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**Problema(s):**
1. **% domínio = % alunos com ≥70% acerto 1ª no quiz pós**. Threshold 70% arbitrário; consistente com hipótese de aprovação.
2. **Peso pedagógico = nº de question_ids distintos no `aula-XX-exerc`**. Proxy ruim — peso pedagógico não é só quantidade de questões; pode ser conceitual (Slutsky pesa mais que elasticidade-cruzada). Heurística defensável para visualização exploratória.
3. **Mínimo de 3 alunos** por aula no pós — gate baixo; semana inicial não exibe nada.
4. Quadrantes via mediana — herda volatilidade de mediana com poucos pontos.

---

#### `renderWardleyMap` — `admin.html:8807–8868`

**Veredito:** ⚠️ AT RISK
**Severidade:** S2
**Problema(s):**
1. Reusa `_vizComputeGapMatrix` — mesmo gating.
2. Faixas Genesis/Custom/Product/Commodity são analogias business — uso pedagógico questionável. Sugestões "mais aula magistral" / "mover pra exercício" são prescritivas baseadas em quadrante, não em diagnóstico.

---

#### `_vizComputeSankeyJourney` + `renderSankeyJourney` — `admin.html:8873–9045`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Funil em 5 etapas, agregado por aluno ou por aula específica. Bem implementado.

---

#### `buildStudentStoryArc` + `renderStudentStoryPanel` — `admin.html:9050–9220`

**Veredito:** ❌ BROKEN (parcial)
**Severidade:** S3
**Problema(s):**
1. **Schema mismatch**: linha 9119 `if (iv.profile_id === profileId)` — coluna real é `student_id` em `admin_interventions` (`schema.sql:266`). `iv.profile_id` é sempre `undefined` → **"Falling action" NUNCA aparece**, story arc fica truncado em 3 atos.
2. Climax = maior delta pré→pós. Defensável.
3. Resto do panel funciona (Exposição, Rising, Climax, Resolution).

**Recomendação:** trocar `iv.profile_id` por `iv.student_id` na linha 9119.

---

#### `computeSmallMultiplesData` + `renderSmallMultiples` — `admin.html:7567–7767`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4
**Problema(s):**
1. **`eceByAula` usa `Math.abs(p.conf - p.acc)`** (linha 7634) — bug master de escala se propaga; eceMean ~57 para todas as aulas.
2. Top-3 acerto 1ª: ranking razoável.
3. **Coverage = covCount / totalStudents**: covCount é count de unique users com qualquer evento na aula. Não distingue "abriu material 1x" de "completou tudo". Proxy fraca para "completou aula".

---

#### `computeKnowerPoints` + `renderKnowerQuadrant` — `admin.html:7772–7995`

**Veredito:** ❌ BROKEN
**Severidade:** S5
**Problema(s):**
1. **Bug master de escala**: linha 7821 `var x = cf.sum / cf.n` (∈[1,5]) mas o quadrante visual eixo é 0–100 (`px(v) = PL + v/100*plotW` linha 7888). **Todos os pontos ficam comprimidos no canto esquerdo do gráfico**. Threshold mediana ainda funciona (calculada na mesma escala), então classificação interna em quadrante (Domínio/Ilusão/Consciente/Humilde) **continua razoável** — mas a visualização é absurda.
2. Threshold `fixed = X=50, Y=50` (linha 7872) — para fixed, X=50 NUNCA é atingido por valores em [1,5]. **Quadrante em modo fixed coloca todos no quadrante baixo-X.** Quebrado.

**Recomendação:** após corrigir bug master, `fixed` faz sentido com X=50, Y=50. Hoje só `median` é usável.

---

### Plumbing helpers

#### `percentileOf` — `admin.html:2428–2435`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):** Conta `arr[i] < value` então `< value` estrito, não `≤`. Empate puxa para baixo. Convenção razoável.

---

#### `pctBadge` — `admin.html:2437–2441`

**Veredito:** ✅ OK
**Severidade:** S1

---

#### Inbox helpers (`_inboxRiskRank`, `_inboxScore`, etc.)

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):** Lógica de prioridade combinando urgency / impact / cost (linha 6184). Pesos arbitrários, defensáveis. localStorage para `last_visit`, snapshot de risco — defensivo bom (clamp futuro, fallback 7d).

---

## Bibliografia (anti-alucinação)

| Citação (CLAUDE.md / metricas-proposta.md) | Status | Comentário | Substituto sugerido |
|---|---|---|---|
| Hacker, Bol & Keener (2012, Metacognition & Learning) | ⚠️ | Capítulo de 2008 (handbook), não paper de 2012. Bol et al. **2012** é outro paper diferente. Cita data e periódico errados. | Hacker, Bol & Keener (2008), in *Handbook of Metacognition in Education* + Bol et al. (2012, Educational Studies) se quiser o paper específico |
| Dunlosky & Metcalfe (2009) | ✅ | Livro existe ("Metacognition", Sage). Não fundamenta ECE. | Manter como bg de metacognição |
| Naeini, Cooper & Hauskrecht (2015, AAAI) | ❌ ausente | A REFERÊNCIA canônica para ECE bin-based — ausente em CLAUDE.md, código, comments. | **ADICIONAR** |
| Guo, Pleiss, Sun, Weinberger (2017, ICML) | ❌ ausente | "On Calibration of Modern Neural Networks" — referência mais citada para fórmula ECE. | **ADICIONAR** |
| Van der Linden (2007, Springer) | ⚠️ | Paper real é "A Hierarchical Framework for Modeling Speed and Accuracy on Test Items", Psychometrika 72(3):287-308. Não é "Springer book". Modelo é hierárquico complexo, não diff de timestamps. | Manter para legitimar tema RT em testes. Para o método implementado (median diff), citar Wise & DeMars (2005) ou simplesmente "exploratory diagnostic" |
| Wise & Kong (2005, Educ. Assess.) | ⚠️ | Existe — RTE (Response Time Effort). Mas dashboard não implementa o método formal RTE. Cita conceito, não algoritmo. | Manter como bg conceitual; explicitar que RTE formal não está implementado |
| Anderson et al. (2014, CHI) | ❌ | Não localizado paper que combine cramming + circadian + MOOC com esse autor/ano. | Substituir por: Hara (2018) ou Wong (2015) chronotype academic — verificar antes |
| Baker et al. (2018, JLA) | ❌ | Não localizado paper Baker 2018 JLA sobre cramming. Baker tem muitos papers em JLA, mas não esse específico. | Akpinar/Pardos/Baker têm papers sobre procrastination 2020+ |
| Pardos et al. (2014, Ed. Data Mining) | ⚠️ | Pardos tem paper 2014 EDM "Affective States and State Tests" (com Baker, San Pedro). Não trata de "trajectory drift" como métrica. | Reformular como "inspirado em literatura EDM (Pardos et al. 2014, Ed. Data Mining; Baker & Inventado 2014 *EDM Handbook*)" |
| CMU OLI Learning Dashboard | ✅ | Existe institucionalmente. Não é referência metodológica pareada. | Manter como inspiração de UI/UX; não como base estatística |
| Newell & Rosenbloom (1981, power law) | ⚠️ | Paper real é "Mechanisms of skill acquisition and the law of practice", in *Cognitive skills and their acquisition* (Anderson, ed., LEA). Power law é log-log, não OLS sobre 4 pontos. | Renomear métrica como "trend score per phase (OLS)"; remover Newell/Rosenbloom |
| Koedinger et al. (2013, DataShop) | ✅ | "LearnLab's DataShop", *Topics in Cognitive Science*, 5(3). Repositório, não método. | Manter como referência de plataforma DataShop; não fundamenta slope |
| Zimmerman (2013, Educ. Psychol.) | ⚠️ | Existe e é canônico SRL. Mas tipologia 5 (strategic/reactive/skimmer/avoidant/mixed) **não vem** dele — é proativo vs. reativo (2 categorias). | Renomear como "heurística de comportamento (proxy SRL)"; remover Zimmerman como base direta |
| Pintrich (2004) | ✅ | Existe, framework SRL com 4 fases. Não fundamenta as 5 categorias do dashboard. | Manter como bg conceitual SRL |
| Purdue Signals / Michigan ECoach / EAB Navigate / Starfish | ✅ | Plataformas reais. Comparação tipo "inspirado em" é honesta. | Manter como benchmarks de produto |
| USMLE / AP / PISA / CMU OLI (CTT/IRT) | ✅ | Padrões reais. Para `rpb` + `p-value`, padrão CTT é Crocker & Algina (1986). | Adicionar Crocker & Algina como referência clássica para rpb |

**Veredito bibliográfico**: 3 ❌ não localizadas (Anderson 2014 CHI, Baker 2018 JLA, e Pardos 2014 com aplicação errada), 5 ⚠️ aplicação ambígua, 6 ✅ corretas. **Toda a Onda 4 precisa de revisão de citações** antes de qualquer publicação acadêmica do sistema.

---

## Hipóteses silenciosas que o dashboard precisa documentar

1. **`confidence_ratings.value` é tratado como porcentagem** em Onda 4 + Knower + Bullet — mas o schema diz [1,5]. Hipótese ERRADA.
2. **Timezone**: `new Date(ts).getHours()` usa local do navegador do admin, não do aluno. Cramming/circadian distorcido se admin acessa de fuso diferente.
3. **Ordem de retorno do Postgres** sem `.order()` é cronológica. Falsa em geral; afeta `attempts[0]` em ftPct.
4. **Intervenção é exógena** ao estado do aluno. FALSA por design — viés de seleção. Toda análise de delta é descritiva, não causal.
5. **`pageVisits.total_time_ms`** representa tempo gasto NA semana de `last_visit_at`. FALSA — é cumulativo desde sempre.
6. **K-anonimato n=5 em `get_class_time_percentiles`** é suficiente para LGPD. Defensável para agregados de tempo, **fraco** para agregados que combinam com PII parcial (não é o caso aqui).
7. **Score retro com benchmark atual** é "como teria sido no passado". Anacrônico — bench evolui.
8. **Slope OLS sobre 4 pontos é estimador estável** para individual. FALSO — IC enorme, slope instável.
9. **5 rótulos SRL (strategic/reactive/skimmer/avoidant/mixed)** vêm da literatura. FALSOS — heurística inventada.
10. **`MPE_CALENDARIO.getPrazo().fecha`** retorna deadlines distintos por aula. FALSO desde 2026-05-08 — todas retornam o mesmo deadline.
11. **ECE bin-binary [0,25)..[75,100]** usa 4 bins. Choice arbitrária; literatura usa 10–15 bins; 4 bins inflam ECE artificialmente em distribuições concentradas.

---

## Riscos sistêmicos (afetam ≥2 métricas)

1. **Bug master de escala confidence [1,5] vs [0,100]**: contamina `_o4BuildPairs`, `_o4ECE`, `computeCalibration`, `renderOnda4Calibration`, `computeConfidencePoints`, `renderConfidenceScatter`, `computeKnowerPoints`, `renderKnowerQuadrant`, `_vizComputeTopBulletData` (campo ECE), `computeSmallMultiplesData` (eceByAula). **9 funções, 1 fix em 1 linha resolve cascata inteira.**

2. **`adminFetchAll` sem `.order()`**: contamina `firstTryAccuracyPerStudent`, `_tx` (push de attempts), tudo que lê `attempts[0]`. Risco silencioso de inversão.

3. **Hard-coding de `SEMESTER_START`**: `'2026-04-15'` aparece em `computeCohortSurvival:2637`, `renderRiskTrajectoryHtml:2946`, `computeAnomalies:3001`. Drift entre cópias, deveria vir de `MPE_CALENDARIO`.

4. **Calendário unificado quebrou cramming**: `computeCircadian` perdeu sentido pedagógico após mudança 2026-05-08. Não há aviso no UI.

5. **Bibliografia decorativa em massa**: comentários do código + CLAUDE.md citam autores que não fundamentam o método. Risco acadêmico se alguém auditar; risco pedagógico de o Darcio defender a métrica em sala citando autoridade errada.

6. **Heurísticas com thresholds arbitrários**: risk score (35/30/20/15/10), drift (≥20 pp, z<-1.5), SRL (`>0.7`, `<1.5`, `>1.3`, `<0.3`), cramming (`>0.6`, `>=3 aulas`). Calibrações ad hoc não documentadas. Mudança de turma exige re-calibração toda.

7. **Schema mismatch silencioso**: `iv.profile_id` (deveria ser `student_id`) em `buildStudentStoryArc:9119`. Outros 1–2 podem existir; auditoria sistemática ajudaria.

---

**Fim do parecer técnico.** Plano de fixes em `plano-fixes-dashboard-2026-05-15.md`.
