# Plano de fixes do dashboard — 2026-05-15

Ranqueado por **severidade × esforço × valor pedagógico**. "Esforço" em horas-Darcio (escrever + testar + commit). "Valor" em escala 1–5: 1 = cosmético, 5 = mudança de decisão de intervenção.

---

## Tier 1 — corrigir antes da próxima aula (qua 20/05)

Apenas itens **S5+ que produzem número errado e mudam decisão de intervenção** ou que fazem o Darcio defender uma métrica errada na frente da turma.

| # | Métrica | Sev | Esforço (h) | Valor | Fix concreto |
|---|---|---|---|---|---|
| 1 | **Bug master de escala confidence** (Onda 4 #4 + Knower + Bullet ECE + ConfidenceScatter + SmallMultiples ECE) | S5 | 0.5 | 5 | Em `_o4BuildPairs` (admin.html:4735), trocar `conf: Math.max(0, Math.min(100, c.sum / c.n))` por `conf: Math.max(0, Math.min(100, ((c.sum / c.n) - 1) / 4 * 100))`. Repetir em `computeConfidencePoints:2772` (linha `x: Math.max(0, Math.min(100, avgConf))`) e em `computeKnowerPoints:7821` (linha `var x = cf.sum / cf.n`). 3 trocas idênticas. Validar: rodar `computeOnda4All()` no console, conferir que ECE turma cai de ~57 para algo plausível (5–25 esperado). |
| 2 | **Cramming ratio quebrado por calendário unificado** (computeCircadian) | S4 | 1.0 | 4 | Em `computeCircadian` (admin.html:4909), trocar `var prazo = window.MPE_CALENDARIO.getPrazo(aulaN, comp); var fechaMs = prazo.fecha;` por `var fechaMs = window.MPE_CALENDARIO.AULAS_DATAS[aulaN-1];`. Recupera o significado pedagógico de "cramming = correr para fechar antes da aula presencial". Adicionar comentário explicando a mudança. |
| 3 | **`firstTryAccuracyPerStudent` lê `attempts[0]` sem ordem garantida** | S5 | 0.5 | 4 | Em `mpe-db.js:367–370`, adicionar `.order('answered_at', {ascending: true})` em `quiz_question_attempts` e `micro_attempts`. Garantia DB-side. Validar que ftPct de aluno com re-tentativas não muda após reload. |
| 4 | **`_inboxGenGabaritoItems` lança TypeError silencioso** | S3 | 0.2 | 2 | Em `admin.html:6158`, trocar `var t = p.gabarito.getTime();` por `var t = p.gabarito;` (já é number). E linha 6167 `p.gabarito.toLocaleString(...)` por `new Date(p.gabarito).toLocaleString(...)`. Validar: cards "Gabarito libera em <48h" passam a aparecer no Inbox. |
| 5 | **Schema mismatch story panel `iv.profile_id`** | S3 | 0.1 | 2 | Em `admin.html:9119`, trocar `iv.profile_id === profileId` por `iv.student_id === profileId`. "Falling action" passa a aparecer no story arc. |

**Total Tier 1: ~2.3h.** Toca 5 lugares no `admin.html` + 1 lugar em `mpe-db.js`. Zero mudança de schema. Pode ser commitado como `fix(mpe-platform): dashboard scale + ordering bugs (auditoria 2026-05-15)`.

---

## Tier 2 — corrigir no semestre (até a Aula 9, 17/06)

S4+S3 com valor pedagógico claro mas que requerem mais cuidado ou decisão de design.

| # | Métrica | Sev | Esforço (h) | Valor | Fix concreto |
|---|---|---|---|---|---|
| 6 | **`weeklyCV` tecnicamente impossível com `total_time_ms` cumulativo** | S5 | 2.0 | 3 | Substituir por proxy de "regularidade de eventos por semana": agregar `quizQA.answered_at` + `sectionProgress.completed_at` + `microAttempts.answered_at` em buckets semanais por aluno; CV de N eventos/semana captura disciplina sem precisar de tempo. Documentar mudança no tooltip ("regularidade de atividades, não tempo"). Atualizar `computeRiskScore` Feature 5. |
| 7 | **Risk score com pesos arbitrários e features correlacionadas** | S4 | 3.0 | 4 | Adicionar tooltip que mostra contribuição de cada feature ao score (badge `+35: dias>7`, `+30: ftPct<40`, etc.). Considerar reduzir Feature 1 de 35→25 quando Feature 2 e Feature 4 também disparam (anti-double-count). Decisão pedagógica do Darcio antes de calibrar. |
| 8 | **Bibliografia da Onda 4 — substituir refs erradas/decorativas** | S3 | 2.0 | 3 | Atualizar CLAUDE.md (seção "Onda 4") + comments no código (`admin.html:4694`, `4791`, `4852`, `4936`, `5038`, `5113`): (a) ECE: trocar Hacker/Bol/Keener para **Guo et al. 2017 ICML** (fórmula) + manter Hacker/Bol/Keener 2008 como bg metacognitivo; (b) Cramming: remover Anderson 2014 CHI (não localizado), procurar paper validável; (c) Power law: renomear "Velocity" para "Trend per phase (OLS)", remover Newell & Rosenbloom; (d) SRL: renomear como "Heurística de comportamento (proxy SRL)", remover Zimmerman como base direta; (e) Pardos: reformular como "inspirado em literatura EDM", não específico. |
| 9 | **`computeInterventionDelta` não avisa de viés de seleção** | S5 (estatístico) | 1.5 | 4 | Adicionar disclaimer fixo no card de delta: "📊 Comparação descritiva, não causal. Mudança esperada por regressão à média mesmo sem intervenção." Decidir com Darcio se vale o esforço de adicionar comparação contra "peers similares sem intervenção" (controle sintético leve, +4h). |
| 10 | **`computeCircadian` timezone hard-coded ao admin** | S3 | 1.0 | 2 | Trocar `new Date(e.ts).getHours()` por conversão explícita para BRT (`-3 horas` UTC). Adicionar header no heatmap "Hora local (BRT)". Mesmo fix em `_vizComputeCalendar`. |
| 11 | **`weeklyCV` quebrado afeta Feature 5 do risk score (já enviesa scoring atual)** | S5 | 0 (já no #6) | — | Coberto em #6. |
| 12 | **`_retroScore` usa `bench` atual + `total_time_ms` cumulativo** | S3 | 2.0 | 3 | (a) Snapshot semanal de `bench` em localStorage do admin + serializar em `mpe_admin_bench_history`. Em retro, usar bench mais próximo de `asOfMs`. (b) Sub-tempo retroativo: somar `(quizQA.answered_at + sectionProgress.completed_at) <= asOfMs` ponderado por count em vez de `pageVisits.total_time_ms`. Custo médio. Adicionar disclaimer "trajetória aproximada" no UI. |
| 13 | **Hard-coding de `SEMESTER_START` em 3 lugares** | S2 | 0.3 | 1 | Adicionar `MPE_CALENDARIO.SEMESTER_START` em `calendario.js` e referenciar em `computeCohortSurvival:2637`, `renderRiskTrajectoryHtml:2946`, `computeAnomalies:3001`. |
| 14 | **`computeAnomalies` threshold z<-1.5 → muitos falsos positivos** | S3 | 0.5 | 2 | Subir threshold para z<-2 (3% por aluno → ~1 falso positivo de 50, melhor sinal:ruído). Ou reportar p-valor calculado sob hipótese binomial-Poisson. Ou exigir 2 semanas consecutivas com z<-1.5. |
| 15 | **`computeBenchmarks` não filtra `ftTotal>=5` em fts** | S3 | 0.2 | 2 | Em `admin.html:1545`, trocar `var fts = rows.filter(...).map(...)` por `var fts = rows.filter(function(r){return r.ftPct!==null && r.ftTotal>=5}).map(...)`. P50Ft fica menos enviesado. |
| 16 | **`computeBenchmarks` mediana real para n par** | S2 | 0.3 | 1 | Em `pctl(arr, p)` (admin.html:1535), implementar interpolação linear ou no mínimo `p=0.5 → (s[n/2-1]+s[n/2])/2` para n par. |
| 17 | **`renderOnda4Velocity` sem aviso quando `nUsers<5`** | S2 | 0.5 | 2 | Em `admin.html:5450`, mostrar 'n=' menor cinza/itálico quando nUsers<5 e não colorir slope. Adicionar tooltip "amostra pequena, slope volátil". |
| 18 | **`computeSRL` thresholds arbitrários** | S3 | 1.0 | 2 | Adicionar input numérico no tab "Psico-cognitivo" para Darcio ajustar thresholds (`readBeforeTry`, `apt`, `revisit`, `paperShare`) e re-renderizar. Persistir em localStorage por admin. |
| 19 | **`renderTopBullets` ECE bullet sempre vermelho** | S5 | 0 (resolvido por #1) | — | Coberto. |
| 20 | **Completude bullet impossível durante semestre** | S3 | 1.0 | 3 | Em `_vizComputeTopBulletData:8140`, calcular `availableItems` baseado em quantas aulas estão `available:true` ou `<= currentWeek` em `MPE_CALENDARIO`. `completude = sum / (nonAdmin.length * availableItems) * 100`. Bullet target=80% se torna factível. |

**Total Tier 2: ~16h.** Vai em 2–3 commits ao longo de Maio–Junho. Recomendo: #6 + #11 juntos; #8 sozinho como `docs(mpe-platform): bibliografia auditoria Onda 4`; #9 + #10 + #14 juntos como `feat(mpe-platform): defensividade dashboard`.

---

## Tier 3 — backlog (pós-semestre)

S2+S1 + design improvements para próxima edição.

| # | Item | Sev | Esforço | Justif |
|---|---|---|---|---|
| 21 | Lemmatizer PT-BR no tag cloud + remover stopwords duplicadas + lowering threshold para 2 chars com whitelist (TMS, EG, UMP, ...) | S3 | 4h | Sinal pedagógico melhor; refl. mais útil |
| 22 | Fit indices IRT 2-PL (RMSEA, item fit χ²) ou export para R/py | S4 | 6h | Hoje sem garantia de validade |
| 23 | Document binning ECE no tooltip (4 bins de 25pp; alternativa: Naeini equal-mass binning) | S2 | 0.3h | Transparência |
| 24 | Score retro: snapshot histórico de bench em DB (nova tabela `weekly_bench_snapshot`) | S3 | 4h | Cohort robusto |
| 25 | Streak: incluir `section_progress`, `confidence_ratings`, `micro_attempts` na coleta de "dias com atividade" | S2 | 0.5h | Cobertura |
| 26 | Dead code remoção em `computeQuestionPsychometrics` (linhas 2143–2149 outer-if) | S2 | 0.2h | Manutenção |
| 27 | Renomear flag `easy` → `consolidado` em psicometria (semântica pedagógica) | S1 | 0.2h | UX |
| 28 | Wright map: avisar quando `userCount[u]<10` (gate baixo do IRT) | S2 | 0.3h | Defensividade |
| 29 | Persistir `correct_answer` em `quiz_aggregates` ou metadata para evitar inferência em distractor analysis | S2 | 2h | Robustez |
| 30 | Tag cloud filter por termo: cache de `_tokenize(r.text)` para evitar re-tokenização a cada click | S1 | 1h | Perf |

---

## Mudanças que exigem decisão pedagógica do Darcio (antes do fix)

1. **Risk score: pesos atuais ou re-calibrar?** — Hoje é 35/30/20/15/10 sem justificativa. Decisão: manter+documentar OU recalibrar baseado em correlação com nota da AF passada (não temos AF passada do MPE). Sugestão: manter, documentar via tooltip; recalibrar em 2027.
2. **Métricas Onda 4 SRL: manter "5 categorias" ou colapsar para "proativo vs reativo" (Zimmerman canônico)?** — A simplificação é mais defensável academicamente, mas perde nuance.
3. **Cramming: o conceito faz sentido com calendário unificado?** — Se sim, qual âncora (data presencial da aula? deadline único 02/07?). Recomendo: ÂNCORA = data presencial da aula (#2 do Tier 1).
4. **Manter ECE bin-binary [0,25)..[75,100] (4 bins) ou refinar para 10 bins?** — Com n<150 pares por aluno, 10 bins fica muito ralo. 4 bins é defensável; mas declarar.
5. **Intervention delta — adicionar controle sintético?** — Esforço +4h. Decisão de quanto rigor causal precisamos no UI vs. disclaimer.
6. **Risco score Feature 1 (35) muito alto?** — Aluno sem acesso há 8 dias já vai pra 35; somando outras features cai em "high" facilmente. Decisão pedagógica.
7. **Threshold de "dominio" 70% acerto 1ª** em gap matrix — adequado? Considerar 60% para mais sensível ou 80% para mais rigor.

---

## O que NÃO está no escopo de fix

1. **IRT 2-PL custom JS** (`fitIRT2PL`) — substituir por Stan/PyMC seria projeto. Manter como exploratório com aviso no UI.
2. **Lemmatizer PT-BR profissional** — `snowballstemmer-pt` precisa bundler ou CDN; o projeto é HTML/JS puro (sem bundler). Workaround: hand-curated stem map (1–2h, valor médio).
3. **Métricas que demandam novo schema** (#9 retenção entre aulas, #11 padrão de resposta anômalo formal, #12 multi-device) — backlog estratégico, não fix.
4. **Calibração de turma cruz-semestres** — só faz sentido com ≥3 semestres de dados. Não temos.
5. **Sentiment trajectory das reflexões** — NLP além de tag cloud requer modelo (LLM ou classificador treinado). Backlog.
6. **Auditoria de RLS via teste integrado** — fora do escopo do dashboard, mas reco fazer separado.

---

## Sequência de execução recomendada

**Hoje (15/05) ou amanhã (16/05) — 2.3h**:
- Tier 1 itens #1, #3, #4, #5 (1.3h, baixíssimo risco, alto valor, todos micro-fixes)
- Tier 1 item #2 cramming (1h, decisão pedagógica embutida — confirmar com Darcio antes do commit)

**Antes da Aula 5 (20/05) — 3h adicional**:
- Tier 2 item #15 (filtro ftTotal>=5 em benchmarks)
- Tier 2 item #20 (completude bullet com availableItems)
- Tier 2 item #13 (consolidar SEMESTER_START em MPE_CALENDARIO)

**Próximas 2 semanas (até 27/05) — 8h adicional**:
- Tier 2 item #8 (bibliografia)
- Tier 2 item #6 (weeklyCV → eventCV)
- Tier 2 item #9 (disclaimer intervention delta)

**Pós-semestre (julho)**:
- Tier 3 inteiro
- Decisões pedagógicas pendentes

---

## Critério de validação por tier

**Tier 1 validado quando:**
- ECE da turma no bullet do topo cai de ~57 para algo no intervalo 5–25 (com dados reais).
- Knower's quadrant em modo `fixed` (X=50, Y=50) tem pontos espalhados em todos os 4 quadrantes (não só esquerda).
- Inbox passa a mostrar cards "Gabarito libera em <48h" quando aplicável (testar mudando o relógio do navegador para `2026-07-02 16:00`).
- Story panel do aluno mostra "Falling action" se houver intervenção registrada.
- Aluno com re-tentativas registradas mostra ftPct estável após reload.

**Tier 2 validado quando:**
- CLAUDE.md tem citações que sobrevivem a `WebSearch` em segunda pessoa.
- Cards de intervention delta têm disclaimer visível.
- Heatmap circadian mostra "Hora local BRT" no header.
- Risk score tem tooltip mostrando contribuição por feature.

**Tier 3:** validação caso a caso, em release notes pós-Aula 9.

---

**Fim do plano.** Total estimado: **~21h** entre Tier 1 e Tier 2, distribuível em 4–6 commits. Decisões pedagógicas (5 itens) precisam Darcio antes da execução.
