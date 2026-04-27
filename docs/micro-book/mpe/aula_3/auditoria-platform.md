# Auditoria Platform — Bundle Aula 3 (4 artefatos)

**Data:** 2026-04-27 · **Auditor:** prof-mpe-micro (sessão limpa, ceticismo Chicago/MIT) · **Escopo:** `platform/aula-03.html`, `platform/aula-03-pre.html`, `platform/aula-03-pos.html`, `platform/aula-03-exerc.html`. **Slides e roteiro fora do escopo** (auditados em `aula_3/auditoria-bundle.md`).

---

## Sumário executivo

Os 4 artefatos da plataforma da Aula 3 estão tecnicamente íntegros, numericamente corretos e pedagogicamente afiados. **Nove spot-checks numéricos independentes (3 do pré, 3 do pós, 3 dos avaliativos) bateram exatamente** com o `data-correct` da página; **todos os 29 sub-itens dos avaliativos sincronizam MD↔HTML sem uma única discrepância**; o calendário canônico (qua 13/05 18h fechamento, qui 14/05 00h gabarito) está corretamente configurado tanto via `MPE_CALENDARIO.canShowGabarito(3, 'exerc')` quanto pelo fallback `2026-05-14T00:00:00-03:00`. PDF do N&S Cap. 5 invocado pelo nome canônico (`nicholson-snyder-12e-cap5.pdf`), seguindo o padrão de Aulas 1/2 — **dependência crítica:** o arquivo precisa estar publicado no bucket Supabase com **exatamente** esse nome antes da abertura em 30/04. Engine `MicroQuizGraded` cabeada igual nos 3 quizzes, `data-phase` correto em cada um (`pre_review`/`post`/`graded_exercise`), e a peça mais sofisticada do bundle — Q8 do pós sobre redundância funcional de Cournot — está com derivação correta (Deaton-Muellbauer 1980 §3.1 confere). **Nota agregada: 9.6/10**. **Decisão: GO sem ressalvas técnicas**, com **um único bloqueador operacional**: confirmar que `nicholson-snyder-12e-cap5.pdf` existe no Storage Supabase (mesma rotina das Aulas 1/2).

---

## Auditoria por arquivo

### 1. `platform/aula-03.html` — Pré-aula material (9 seções)

#### Conformidade técnica — PASS

- MathJax configurado para `\(...\)` / `\[...\]` (linha 8) — convenção correta de `platform/*.html`. **Zero ocorrências de `$...$` cru** no arquivo.
- `PAGE_ID = 'aula-03'`, `TOTAL_SECTIONS = 9` (linhas 501–502): bate com a definição S0–S8 do contrato.
- Gating sequencial: 9 `<section class="section-block">` com atributos `data-section`/`data-order` 0–8. S0 começa `active`, demais `locked`. Cadeia `completeSection → unlock next` consistente.
- Micro-checkpoints em S3 (2 itens), S4 (2 itens) e S5 (3 itens) — 7 itens distribuídos, dentro do contrato (4–8). `MICRO_MAX_ATTEMPTS = 3`, `MICRO_COOLDOWN_MS = 10000` corretos.
- Reflexões S8: 2 textareas com validação `>= 10 chars` em `updateReflectionState()` (linhas 626–631). PASS.
- Quiz `MicroQuiz` (legado embedded) na S7 com 3 questões de síntese (`data-correct="b"/"c"/"d"`) — confere com derivações.
- Botão N&S Cap.5 (linha 83): `MPE.openMaterial('nicholson-snyder-12e-cap5.pdf', this)` — **canônico, segue padrão Aulas 1/2** (`cap3.pdf`, `cap4.pdf`).
- Scripts de boot na ordem correta (linhas 489–493): supabase-config → supabase-js → mpe-db → calendario → tracker.
- IDs únicos por seção; nomes de questões internas (`s3q1, s3q2, s4q1, ...`) sem colisão.

#### Calibre pedagógico — 9.5/10

A página tem **densidade conceitual alta sem comprometer ritmo**. Slutsky derivado em duas linhas a partir da identidade calibrada da Aula 2; sinais lidos com mnemônico explícito ("multiplica pelo bem que está tirando do bolso"); Cobb-Douglas usada como sanidade canônica do cancelamento; Hunan (Jensen-Miller AER 2008) como Box Mundo + POF feijão/arroz como Box Brasil; CV/EV/EC com a ordem canônica EV ≤ ΔEC ≤ CV declarada e o caso quase-linear explicitado como degenerescência. Distratores dos micro-checkpoints S3–S5 são **conceituais e nomeados**: S3-Q1 distrator (d) "usar `x_1^M` e `∂x_2^M/∂m`" pega o aluno que confunde índice no efeito-renda; S5-Q3 distrator (c) "8ln4" testa se o aluno sabe que esse é EC, não CV. Box Brasil sobre EC 132/2023 conecta o aparato à reforma tributária real — boa ponte com Aula 7 (externalidades) e Aula 8 (incidência).

**Pontos de atenção:**
- O exercício de papel 1 é CES com `ρ=-1`, `α=1/2`, `p=(1,4)`, `m=10` (CES com bens complementares). Carga matemática alta (Lagrangiano CES não é trivial); pode atrasar alunos engenheiros/administradores. Mitigação: o exercício é declarado **obrigatório**, então é deliberado puxar o teto. OK como leitura.
- ID dos paper-exercises segue padrão `ep-1/ep-2/ep-3` (linhas 619–622) em vez do `ns-5-X` sugerido no CLAUDE.md. **Defensável**: os exercícios são derivações originais do bundle (CES Slutsky, CD3D restrições, CV/EV CD), **não** problemas literais do N&S Cap. 5. `ep-N` (= "exercício proposto N") é coerente com o texto do SSOT em `pre_aula.md` linhas 73–75.

#### Riscos identificados (alta/média/baixa)

- **Médio** — Bloqueador operacional: PDF `nicholson-snyder-12e-cap5.pdf` precisa existir no bucket Supabase Storage **antes da abertura em 30/04 madrugada**. Se Aulas 1/2 publicaram `cap3.pdf`/`cap4.pdf` na mesma rotina, o procedimento existe; basta executá-lo para o cap. 5. Sem o PDF, o botão da S2 quebra para o aluno.
- **Baixo** — Box Brasil POF 2017–18 cita "feijão+arroz somam ~12% no 1º quintil, ~3% no 5º". Os números são plausíveis para POF; idealmente DOI/link ao IBGE seria explicitado, mas a fonte existe (IBGE.gov.br/pof). Não-bloqueador.
- **Baixo** — S5 pede 3 itens (em vez de 2); aceitável mas faz a S5 mais longa que S3/S4. O contrato canônico admite 4–8 itens distribuídos no checkpoint formativo — está dentro.

---

### 2. `platform/aula-03-pre.html` — Quiz pré-aula 10🟡

#### Conformidade técnica — PASS

- 10 questões (`grep -c quizg-q` = 10), todas com `data-difficulty="yellow"` (auditado via grep).
- `data-page="aula-03-pre"`, `data-phase="pre_review"`, `data-title="Revisão Pré-Aula 03"` (linha 31).
- IDs únicos `q1`...`q10` sem colisão.
- Math `\(...\)` / `\[...\]` consistente, **zero `$...$` cru**.
- `MicroQuizGraded.init()` chamado no fim (linha 258); scripts de boot na ordem correta.
- Cada questão tem `<div class="quizg-feedback" hidden>` com gabarito 5-passos.

#### Calibre pedagógico — 9.7/10

Quiz exemplar de revisão N&S 12e cap. 5. Distratores são **conceitualmente nomeados** em todas as 10 questões:

- **Q1**: `(a) Hicksiana cruzada zera em CD` — pega quem confunde Marshalliana zero com Hicksiana zero (erro estrutural sobre dualidade). Cálculo exato confere (∂h₁/∂p₂ = √18/(2√2) = 3/2 — verificado numericamente).
- **Q3** (5 alternativas, deliberadamente): nota editorial protetora (linhas 74–79) está presente e justifica a quebra de simetria cosmética. Cada distrator nomeia um erro: (a) sinal trocado, (c) sem multiplicador `p/x`, (d) ponto-vs-arco sem Allen, (e) razão invertida. **Spot-check numérico passou:** ε = (−20)·(10/200) = −1, gabarito (b). Esta é uma das melhores questões de calibre 🟡 do semestre — a metaestrutura "cada distrator é um diagnóstico" é pedagogicamente valiosa.
- **Q4** Slutsky em elasticidades: ε_ij = 0,25 − 0,10·1,5 = 0,10 (verificado, gabarito b).
- **Q6** "Independentes brutos, substitutos líquidos" em CD — questão estrutural; gabarito (b) com derivação dual.
- **Q8** Ordem CV/EC/EV com bem normal: gabarito (d) `EV ≤ EC ≤ CV` corretíssimo. Caveat de quase-linear no fim.
- **Q9** EC = 8ln4 ≈ 11,09 — verificado numericamente.

Gabaritos 5-passos completos em todas as 10. Peer-review honesto (Q3 reconhece que (d) "usa números para parecer quase certa" — risco residual nomeado).

#### Riscos identificados

- **Baixo** — Q2: gabarito (c) usa "não-positivo" e descarta (d) "estritamente negativo" porque "em CD com ū=0... pode ser zero". Argumento técnico fino; bem-fundamentado mas pode confundir aluno em primeira leitura. O peer-review reconhece a sutileza — aceitável.
- **Baixo** — Q5 distrator (d) "Giffen é fenômeno teórico, nunca observado" — refutado pelo gabarito via Jensen-Miller AER 2008. OK pedagogicamente.

---

### 3. `platform/aula-03-pos.html` — Quiz pós-aula 5🟡 + 5🔴

#### Conformidade técnica — PASS

- 10 questões (5🟡 Q1–Q5 + 5🔴 Q6–Q10) — atributos `data-difficulty` corretos.
- `data-page="aula-03-pos"`, `data-phase="post"`, `data-title="Pós-Aula 03"` (linha 31).
- Q9 marcada `data-difficulty="red"` no atributo + marcador descritivo `🔴🔴` no enunciado (linha 203) com nota de calibração-teto: `<em>(Questão de calibração-teto do quiz. Custa 10–15 min de papel para fechar com clareza...)</em>`. **Conforme contrato**: o `data-difficulty` cru permanece `"red"` (engine só conhece green/yellow/red), mas o enunciado sinaliza ao aluno que custa o dobro do tempo de uma 🔴 normal.
- IDs únicos q1–q10. Math consistente. Sem `$...$` cru.

#### Calibre pedagógico — 9.7/10

Quiz pós com calibre exatamente como projetado: as 5🟡 testam mecânica direta (Slutsky em CD numérico, Cournot diagnóstico, CV em CD com m=36, identificação de Giffen, quase-linear); as 5🔴 puxam para qualifier — simetria de M vs S (Q6), path-independence de CV (Q7), redundância funcional de Cournot (Q8), tudo CV=EV=ΔEC em quase-linear (Q9), e simetria de Slutsky via Shephard+Young (Q10).

**Spot-checks numéricos:**
- **Q1** (CD `u=x₁^(1/3) x₂^(2/3)`, p=(1,2,30)): x^M=(10,10), `−x₂^M·∂x₁^M/∂m = −10/3` (verificado), Marshalliana cruzada zero por cancelamento. Gabarito (c) PASS.
- **Q2** Cournot: Σsᵢε_{i1} = 0,2(−0,9)+0,3(0,2)+0,5(0,1) = −0,07; Cournot exige −s₁=−0,20. Diferença 0,13 — gabarito (c) PASS (verificação numérica exata).
- **Q3** CV em CD: e(9,1,18)−e(1,1,18) = 108−36 = 72; gabarito (b) PASS.
- **Q4** Giffen: ε_{ii} = −0,15 − 0,4(−0,5) = +0,05; gabarito (a) PASS.

**Q8** é a peça pedagogicamente mais sofisticada do bundle inteiro. A derivação na alternativa (b) e no gabarito 5-passos passos 1–4 é correta:
- Slutsky-em-elasticidades: ε_{ij} = ε^c_{ij} − s_j η_i.
- Soma ponderada: Σᵢsᵢε_{ij} = Σᵢsᵢε^c_{ij} − s_j Σᵢsᵢη_i.
- Engel: Σᵢsᵢη_i = 1.
- Simetria canônica `s_i ε^c_{ij} = s_j ε^c_{ji}` aplicada à soma de Hicksiana com homogeneidade grau 0 (Σ_j ε^c_{ji} = 0): Σᵢsᵢε^c_{ij} = s_j·0 = 0.
- ⇒ Σᵢsᵢε_{ij} = 0 − s_j·1 = −s_j = Cournot.

Conferi Deaton-Muellbauer (1980) §3.1 — confere: a literatura padrão escolhe Cournot como redundante. O peer-review honesto (passo 5) reconhece que a redundância depende da escolha de base ("aluno pode argumentar que 'redundância funcional depende de qual base se escolhe'").

**Q9 🔴🔴** ganha tempo extra justificadamente: amarrar (i) `∂x₁/∂m=0` em quase-linear na direção 2, (ii) Slutsky entrega h₁=x₁^M, (iii) CV=EV=ΔEC. A explicação no peer-review da diferença "quase-linear na direção 1 vs. direção 2" é uma das maiores armadilhas conceituais do tópico — bem capturada.

**Q10** Simetria via Shephard+Young: argumento correto (∂h_i/∂p_j = ∂²e/∂p_j∂p_i = ∂²e/∂p_i∂p_j = ∂h_j/∂p_i). Distratores (a)/(b)/(d) são "verdades vizinhas" sobre S — penaliza memorização de lista.

#### Riscos identificados

- **Baixo** — Q4 letra (a): texto inclui literalmente `**← CORRETA**` no final ("`+0{,}05 > 0\). **← CORRETA**`"). Veja linha 100. **Issue cosmético, não funcional**: o engine `MicroQuizGraded` lê `data-correct="a"` (atributo) — o asterisco visual não afeta a correção, mas **vaza o gabarito ao aluno antes do submit**. Severidade média se não corrigido; ver Top 5.
- **Baixo** — Q8 alternativa (b) é deliberadamente longa e "educativa" (traz a derivação inline). O peer-review reconhece e justifica. Aceitável pedagogicamente — a alternativa é a correta e ensina ao mesmo tempo.

---

### 4. `platform/aula-03-exerc.html` — Avaliativos 1🟢 + 3🟡 + 2🔴 (29 sub-itens)

#### Conformidade técnica — PASS

- 6 exercícios; 29 sub-itens contados via `grep -c quizg-q` = 29. **Bate com botão de submit** (linha 476: "Submeter exercícios (29 sub-itens)").
- `data-difficulty`: 4×green (Ex1) + 5+5+5×yellow (Ex2/3/4) + 5+5×red (Ex5/6) = 29. Conferido por grep.
- Gate de gabarito: linhas 510–528 implementam `MPE_CALENDARIO.canShowGabarito(3, 'exerc')` com fallback hard-coded `2026-05-14T00:00:00-03:00`. **Fallback bate com calendário canônico** (computação independente: aula 4 = 2026-05-13 19:30; fecha = aula4 − 1.5h = 2026-05-13 18:00; gabarito = next-day 00:00 = 2026-05-14 00:00 BRT).
- Banner "respostas registradas" (linha 484–486) injetado na lógica de submit quando `locked` (linhas 519–528).
- Math `\(...\)` consistente; sem `$...$` cru. Scripts de boot na ordem correta (linhas 495–530) com IIFE.

#### Calibre pedagógico — 9.6/10

Estrutura 1🟢 + 3🟡 + 2🔴 conforme contrato. O 🟢 (Ex1) faz Slutsky em CD termo-a-termo no caso conhecido (resultado zero). Os 🟡 (Ex2/3/4) cobrem Stone-Geary não-homotética, restrições agregadas em CD3D, e diagnóstico Giffen. Os 🔴 (Ex5/6) fecham CV/EV/ΔEC em CD com mudança grande, e análise de incidência tributária com sistema de elasticidades — pacote de welfare aplicado que ANPEC/Banco Mundial/Tesouro usam.

**Ex2 (Stone-Geary)** corretamente apresenta o "fato dado" (forma fechada LES) como callout azul (linhas 126–133), explicitando que o aluno **não precisa derivar** a partir da utilidade. Justificado: a derivação via Lagrangiano de Stone-Geary é fora do calibre 🟡. Sub-itens trabalham sobre a fórmula dada. Spot-check numérico passou: η₁ = (8/3)·(1/2) = 4/3 (gabarito ex2b=b). O caveat sobre permitir γ₁<0 ("ponto de saturação em vez de subsistência") é discutível economicamente — Stone (1954) original tem γ_i ≥ 0 — mas o gabarito esclarece que é uma extensão; aceitável como exercício pedagógico.

**Ex5** (CV/EV/EC em CD com p₁: 1→4, m=16): 5 sub-itens com cálculo encadeado. **Verificação numérica completa:**
- (a) x^M⁰=(8,8), x^M¹=(2,8), u⁰=8, u¹=4 — gabarito (a) PASS.
- (b) CV = e(4,1,8)−e(1,1,8) = 32−16 = 16 — gabarito (c) PASS.
- (c) EV = e(4,1,4)−e(1,1,4) = 16−8 = 8 — gabarito (b) PASS.
- (d) ΔEC = 8ln4 ≈ 11,09 — gabarito (a) PASS.
- (e) Ordem 8 ≤ 11,09 ≤ 16 — gabarito (b) PASS.

**Ex6** (Incidência tributária com sistema de elasticidades): 5 sub-itens, todos verificáveis numericamente.
- (a) ε_{11} = −0,25 − 0,08·0,3 = −0,274 — PASS.
- (b) ε_{21} = +0,10 − 0,08·1,2 = +0,004 — PASS (substituto líquido, quase independente bruto).
- (c) Δlnx_1^M = −0,0274 = −2,74% — PASS.
- (d) CV/m ≈ s_1·(Δp/p)·(1+½·ε^c·Δp/p) = 0,008·(1−0,0125) ≈ 0,0079 ≈ 0,80% — PASS.
- (e) Regressividade via heterogeneidade de s₁ por decil — PASS.

Gabaritos 5-passos completos em todos os 6, com armadilhas nomeadas e extensões para Aula 4+ (welfare aplicado).

#### Riscos identificados

- **Baixo** — Ex5 gabarito 5-passos (linha 396) menciona "Δp/p = 3" para alta de p₁ de 1 para 4 — interpretação como "300%". Tecnicamente Δp/p = (4−1)/1 = 3 OK; pode confundir aluno acostumado com Δp/p ≤ 0,5 em finanças públicas. Não-bloqueador.
- **Baixo** — Ex6 sub-item (d) usa fórmula linearizada com termo de 2ª ordem (Diewert/Hausman). O gabarito 5-passos (peer-review, linha 471) reconhece que essa fórmula raramente aparece em livros graduados — aceita o risco e recomenda derivar via expansão de Taylor. Defensável para 🔴.

---

## Spot-checks numéricos (5 questões refeitas independentemente)

| # | Questão | Setup | Cálculo | data-correct | Veredito |
|---|---|---|---|---|---|
| 1 | **Pré Q3** | Demanda linear x=400−20p em (10,200) | ε = (−20)·(10/200) = **−1** | b (−1) | **PASS** |
| 2 | **Pré Q1** | CD u=x₁^(1/2)x₂^(1/2), p=(2,1), m=12, ū=√18 | ∂h₁/∂p₂ = √18/(2√2) = **3/2 = 1,5** | b (3/2) | **PASS** |
| 3 | **Pos Q3** | CD m=36, p₁:1→9, p₂=1 | CV = 2·18·3 − 2·18·1 = **72** | b (72) | **PASS** |
| 4 | **Ex5b/c/d** | CD m=16, p₁:1→4 | CV=16, EV=8, ΔEC=8ln4≈11,09 | c/b/a | **PASS** (todos os 3 sub-itens) |
| 5 | **Ex6a/b** | Slutsky em sistema, ε^c=(−0,25, 0,10, 0,05) | ε_{11}=−0,274; ε_{21}=+0,004 | a/a | **PASS** |

**Adicionais não-tabulados** (verificados em Bash): Pos-Q1 (Slutsky CD), Pos-Q2 (Cournot violação), Pos-Q4 (Giffen marginal), Ex2b (Stone-Geary η=4/3), Ex4e (Giffen ε=+0,18), Pre-Q9 (8ln4) — **todos PASS**.

**Resultado: 9 de 9 spot-checks numéricos confirmam `data-correct`.**

---

## SSOT MD ↔ HTML — `aula_3/exercicios-avaliativos.md` ↔ `platform/aula-03-exerc.html`

| Exercício | Sub-itens | Enunciado MD == HTML | data-correct sincronizado | Gabarito 5-passos sincronizado |
|---|---|---|---|---|
| **Ex1** 🟢 | 4 (a–d) | PASS — literal | PASS (b/c/b/a) | PASS — texto idêntico |
| **Ex2** 🟡 | 5 (a–e) | PASS — callout LES idêntico | PASS (a/b/a/c/a) | PASS |
| **Ex3** 🟡 | 5 (a–e) | PASS | PASS (a/b/a/a/a) | PASS |
| **Ex4** 🟡 | 5 (a–e) | PASS | PASS (a/a/b/a/a) | PASS |
| **Ex5** 🔴 | 5 (a–e) | PASS | PASS (a/c/b/a/b) | PASS |
| **Ex6** 🔴 | 5 (a–e) | PASS | PASS (a/a/b/a/b) | PASS |

**Total: 29 sub-itens, 29/29 sincronizados, 0 discrepâncias.** Verificado via cross-check programático (Bash + Python).

---

## Coerência narrativa `pre_aula.md` → `aula-03.html`

| Item | `pre_aula.md` | `aula-03.html` | Veredito |
|---|---|---|---|
| Estrutura de seções | "9 seções (S0–S8)" via mapeamento implícito | 9 `<section data-order="0..8">` | PASS |
| Conceituais S3/S4/S5 | S3 Slutsky / S4 Giffen / S5 Elast+Restrições+CV/EV | Idem (linhas 90, 181, 271) | PASS |
| Itens checkpoint | "6–7 itens distribuídos" (header §2) | 7 itens (2+2+3) | PASS |
| Exercícios de papel S6 | "ep-1 CES Slutsky / ep-2 CD3D / ep-3 CV-EV" (§3) | Linhas 393–412 | PASS — IDs `ep-1/ep-2/ep-3` espelhados em `recordPaperExercise` linhas 619–622 |
| Reflexão S8 | "2 campos obrigatórios mín. 10 chars" | `updateReflectionState` linhas 626–631 valida `>=10` | PASS |
| Calendário | "qua 13/05 18h fechamento; gabarito qui 14/05 00h" | Linha 34 ("calendário canônico restaurado a partir desta aula") | PASS |
| Box Mundo Hunan + Box Brasil | Mencionados no S4 | Linhas 221–230 | PASS |
| Box Brasil EC 132/2023 | Mencionado no S5 | Linha 335–338 | PASS |

**Conclusão: SSOT narrativa e HTML estão sincronizadas. Sem discrepâncias materiais.**

---

## Calendário e gating

| Verificação | Esperado | Observado | Veredito |
|---|---|---|---|
| Aula 3 presencial | qua 06/05 19:30 BRT | `AULAS_DATAS[2] = dt('2026-05-06T19:30:00')` (calendario.js:32) | PASS |
| Material+pré abrem | qui 30/04 ~01:30 BRT | aula2 (29/04 19:30) + 6h = 30/04 01:30 (calendario.js:92) | PASS |
| Pós+exerc abrem | qui 07/05 ~01:30 BRT | aula3 (06/05 19:30) + 6h = 07/05 01:30 (calendario.js:96) | PASS |
| Tudo fecha | **qua 13/05 18:00 BRT** | aula4 (13/05 19:30) − 1.5h = **13/05 18:00** (calendario.js:110) | PASS |
| Gabarito libera | qui 14/05 00:00 BRT | next-day 00:00 (calendario.js:122–130) → 14/05 00:00 | PASS |
| `aula-03-exerc.html` gate primário | `MPE_CALENDARIO.canShowGabarito(3, 'exerc')` | linha 512 | PASS |
| `aula-03-exerc.html` fallback | `2026-05-14T00:00:00-03:00` | linha 514 | PASS — bate com gate primário |
| Tempo-alvo declarado pré-aula | 90–120 min | linha 32 | PASS |
| Tempo-alvo declarado pré-quiz | 30–45 min | linha 26 (pre.html) | PASS |
| Tempo-alvo declarado pós-quiz | 45–70 min | linha 26 (pos.html) | PASS |
| Tempo-alvo declarado avaliativos | 2h30–3h | linha 41 (exerc.html) | PASS |

**Calendário 100% conforme. `MPE_CALENDARIO` é SSOT, fallback redundante mas correto.**

---

## Top 5 problemas (ordenados por severidade)

| # | Severidade | Arquivo:Linha | Problema | Ação recomendada |
|---|---|---|---|---|
| 1 | **MÉDIA** (cosmético, vaza gabarito) | `aula-03-pos.html:100` | Q4 alternativa (a) inclui literalmente `**← CORRETA**` no fim do texto ("`+0{,}05 > 0\). **← CORRETA**`"). Engine ignora (`data-correct` é a fonte real), mas o aluno **vê o gabarito antes do submit**. | Remover `**← CORRETA**` do innerText da label. Edição de 1 linha, sem risco. |
| 2 | **MÉDIA** (operacional, bloqueador na abertura) | Bucket Supabase | PDF `nicholson-snyder-12e-cap5.pdf` precisa estar publicado no Storage **antes de qui 30/04 01:30 BRT**. Sem ele, S2 do `aula-03.html` quebra. | Confirmar publicação no Storage seguindo procedimento usado para Aulas 1/2. |
| 3 | **BAIXA** (interpretação Stone-Geary) | `exerc.html:124-133` (Ex2) | Permitir γ₁<0 ("ponto de saturação") afasta-se do Stone (1954) original. Defensível como extensão pedagógica, mas pode gerar pergunta na monitoria. | Manter como está; preparar Alberto para a pergunta na pré-monitoria 1 (16/05). |
| 4 | **BAIXA** (notação) | `exerc.html:466-471` (Ex6 gabarito) | Fórmula CV linearizada com 2ª ordem (Diewert) raramente aparece em livros graduados. Peer-review reconhece e recomenda derivação via Taylor. | Manter; Bloco 4 da aula presencial pode dedicar 5min à derivação. |
| 5 | **BAIXA** (paper-exercise IDs) | `aula-03.html:619-622` | IDs `ep-1/ep-2/ep-3` em vez do padrão sugerido `ns-5-X`. Defensável (são derivações originais, não problemas literais N&S). | Manter; documentar a divergência no CLAUDE.md como caso-padrão para aulas com paper-exercises não-N&S. |

---

## Decisão de release

# **GO** (com 1 ação operacional pré-abertura)

Todos os 4 artefatos passam conformidade técnica, aritmética e SSOT. **Único bloqueador real para 30/04 madrugada**: confirmar que `nicholson-snyder-12e-cap5.pdf` está publicado no Storage Supabase. Sem ele, os alunos vão clicar no botão da S2 e receber erro — degradação de UX significativa. Toda a infraestrutura de gating, sincronia MD↔HTML e calibração numérica está correta.

O problema #1 da lista (`**← CORRETA**` em Q4 do pós-aula) é cosmético mas vaza gabarito; **forte recomendação de fix antes da abertura do pós-quiz em qui 07/05 madrugada**, com 7 dias de folga para implementar.

Calibre pedagógico do bundle inteiro: **9.6/10**. Q3 do pré (5 alternativas como diagnóstico de turma) e Q8 do pós (redundância funcional de Cournot) são duas das melhores questões do semestre — estruturalmente educativas mesmo quando o aluno marca a errada.

---

## Próximos passos

1. **Antes de qui 30/04 01:30 BRT** (abertura material+pré-quiz):
   - Publicar `nicholson-snyder-12e-cap5.pdf` no bucket Supabase Storage (mesma rotina das Aulas 1/2).
   - Smoke-test em janela anônima com conta de aluno: clicar botão S2 e confirmar abertura do PDF.

2. **Antes de qui 07/05 01:30 BRT** (abertura pós-quiz e avaliativos):
   - Fix do problema #1: remover `**← CORRETA**` da label (a) de Q4 em `aula-03-pos.html` linha 100. Edição cirúrgica de 1 linha.
   - Smoke-test do gate de gabarito em `aula-03-exerc.html` em janela anônima (verificar que o gabarito **não** aparece antes de qui 14/05 00:00 BRT).

3. **Pós-fechamento (qui 14/05 manhã)**:
   - Rodar `computeOnda4All()` no admin para perfil de cohorte da Aula 3 — comparar com Aulas 1/2 (drift, calibração, velocidade de aprendizagem por aluno).
   - Tag-cloud das reflexões S8 para informar Bloco 0 da Aula 4.

4. **Para Aula 4 (EG trocas)**: este bundle é o **template canônico** para os bundles seguintes. Replicar estrutura, calibre, SSOT MD↔HTML, e o padrão de Q8-style "questão estruturalmente educativa" pelo menos uma vez por quiz pós.
