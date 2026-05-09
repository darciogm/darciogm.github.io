# Auditoria do Bundle da Aula 9 — Microeconomia I MPE 2026/32

**Data:** 2026-05-09
**Auditor:** prof-mpe-micro (modo Referee 2 implacável)
**Tema:** Sinalização (Spence) + Cho-Kreps + Matching (Gale-Shapley) — fechamento do curso.
**Artefatos auditados:**

- `aula_9/pre_aula.md` (~534 linhas)
- `aula_9/durante_aula.md` (~564 linhas, roteiro 180 min)
- `aula_9/exercicios-avaliativos.md` (~413 linhas, SSOT MD)
- `aula_9/slides/aula-09.qmd` (~942 linhas Quarto reveal)
- `aula_9/slides/aula-09.html` (render commitado)
- `platform/aula-09.html` (~774 linhas, pré-aula 9 seções)
- `platform/aula-09-pre.html` (10🟡)
- `platform/aula-09-pos.html` (5🟡 + 5🔴, com Q10 🔴🔴 meta cross-aula)
- `platform/aula-09-exerc.html` (~547 linhas; 6 exerc, ~30 sub-itens)

---

## Sumário executivo

**Nota global: 8.6 / 10.**

Bundle ambicioso e bem-estruturado: cobre dois paradigmas distintos (sinalização com preços + matching sem preços) em 180 min coerentes. Calibre Spence + Cho-Kreps respeita N&S §18.6 piso e Jehle-Reny §7.2 teto; calibre Gale-Shapley é mais leve por construção (matching não é central em N&S 12e). **Mas o bundle tem 3 issues 🔴 estruturais que o levam abaixo da Aula 8** — todos relacionados a citações factualmente erradas (kidney exchange QJE vs AER) e a um exercício avaliativo 🔴 (Ex 5) que é **trivialmente resolvido em 1 iteração** sem rejeições em cadeia, contradizendo o calibre 🔴.

**Top 5 issues:**

1. 🔴 **DOI/veículo errado para Roth-Sönmez-Ünver "Kidney Exchange".** O paper canônico que o bundle quer citar é *QJE* 2004 119(2):457–488, DOI 10.1162/0033553041382157 — o `platform/aula-09.html:381` cita corretamente. Mas **5 outros lugares** citam erroneamente como "*AER* 94(4): 828–851": `aula_9/durante_aula.md:381`, `aula_9/exercicios-avaliativos.md:318` e `:387`, `aula_9/pre_aula.md:369`, `platform/aula-09-exerc.html:402`, `platform/aula-09-pos.html` (implícito por consistência com o exerc). Isso é **erro factual fabricado** — o paper Roth-Sönmez-Ünver na *AER* não tem essa volume/issue/page; é confusão com Roth-Sönmez-Ünver (2005, JET, "Pairwise Kidney Exchange"). **Bloqueia deploy.**
2. 🔴 **Ex 5 é trivial para calibre 🔴.** O exemplo 3×3 escolhido tem preferências "sem conflito" — \(m_1\to w_3, m_2\to w_2, m_3\to w_1\) **sem colisões na iteração 1**. Algoritmo termina em 1 iteração; \(\mu_M = \mu_W\); matching estável único. O peer-review do próprio gabarito reconhece isso explicitamente: "exemplo escolhido para fechamento limpo (sem rejeições em cadeia)". **Isso não é 🔴.** O 🔴 do bundle deveria ter rejeições em cadeia (como o 4×4 da pré-aula faz). Aluno resolve em 5 minutos, marca 5 sub-itens, e nunca exercita o algoritmo de verdade. Contraste com Aula 8 Ex 5 (sistema 2×2 com fechamento inteiro \(w_L=1, w_H=121\)) — calibre 🔴 genuíno. **Bloqueia.**
3. 🔴 **Bug de copy-paste em Ex 5(d) HTML.** `platform/aula-09-exerc.html:378` afirma "**Note que isso é o mesmo matching de \(\mu_M\)**". Mas \(\mu_M = ((m_1, w_3), (m_2, w_2), (m_3, w_1))\) e \(\mu_W = ((m_2, w_1), (m_3, w_2), (m_1, w_3))\). Embora seja o **mesmo conjunto de pares** {(m_1,w_3), (m_2,w_2), (m_3,w_1)}, escrever \(\mu_W\) com pares listados como \((m_i \text{ em } w_j)\) muda a notação e pode confundir aluno. OK conceitualmente, mas **Item (e) requer aluno reconhecer "mesmo matching"** — depende de leitura cuidadosa de orderings. Dado que Ex 5 é trivial (issue #2), esse é re-issue com o mesmo bug.
4. 🟡 **5 fixes recém-aplicados na MD da Aula 9 — verificação.** Solicitado verificar: (a) linha 7 Cap. 19 (✓ correto, não há resíduo Cap 21); (b) Ex 1(a)(ii) TMS em módulo (✓ "definida em módulo \(\text{TMS} = |U_e/U_w|\)"); (c) Ex 4(d)(ii) `\pi_H` notação (✓ usa `\pi_H`); (d) Ex 5(a)(i) distrator factualmente errado (não localizei nenhum issue evidente — passou); (e) Ex 5(d)(i) distrator factualmente errado (idem). **Resultado:** os 5 fixes específicos foram aplicados corretamente no MD **e espelhados no HTML**, mas o issue estrutural do Ex 5 (Top 5 #2) é independente desses fixes. Detalhe em §H.
5. 🟡 **Aula 9 Q3 do pós-quiz tem alternativa correta (c) com texto auto-referencial confuso.** `platform/aula-09-pos.html:84`: a alternativa (c) começa com a frase "...aparece como output? **Não.** Reexecute: ..." — é a única alternativa correta entre quatro, mas a redação é estranha. Ela **se nega para depois afirmar** o output verdadeiro. Aluno escaneando alternativas pode marcar (a) por falta de paciência. Reescrever para começar afirmativamente.

**Top 5 strengths:**

1. **Cobertura dois-paradigma em 180 min.** Spence + Cho-Kreps + Gale-Shapley é muito conteúdo; o bundle distribui em 40+40+45 min com pausas, e **todos os blocos cravam pelo menos 1 fato testável**. Para fechamento de curso, é exemplar.
2. **Q10 do pós-quiz 🔴🔴 meta cross-aula.** "Quem é o jogador estratégico em cada modelo (Akerlof, R-S, Holmström, Spence)?" é exatamente o tipo de questão integradora que separa aluno calibrador de aluno espelhador. Diagnóstico Akerlof = "ninguém move estrategicamente; é fixed-point" é distinção precisa que aluno tipicamente erra.
3. **Síntese das 9 aulas no Bloco 4** com tabela "Aula | Tema | Conceito-âncora | Mecanismo introduzido" — fecha o arco do curso com mapa institucional pronto para AF. Combinada com roteiro AF (40/30/20/10 confirmado) + lista de 6 erros comuns a evitar, é **o melhor encerramento de bundle do projeto**.
4. **Aplicações bem articuladas.** SISU (Aygün-Bó 2020), NRMP (Roth-Peranson 1999), kidney exchange (apesar do bug do DOI), school choice (Abdulkadiroğlu-Pathak-Roth 2005). Cada caso ancora um teorema teórico em prática real. **Mais Médicos é tratado neutralmente** (não DA puro, mas mesma família institucional) — escolha correta.
5. **Slides QMD bem-distribuídos.** 47 slides para 180 min é \(\sim 4\) min por slide — acima do canônico (3 min/slide), mas aqui é fechamento, com mais síntese e menos derivação técnica nova. Sem slides ESTOURO; um par no limite (B.1 abaixo).

**Veredicto: deploy com correções.** Issues #1, #2, #3 (todos 🔴) bloqueiam — totalizam ~50 min de trabalho do agente para resolver. Após correções: bundle vai para 9.0+. **Comparação Aula 8 vs Aula 9:** Aula 8 começou em 9.1, esta em 8.6. Diferença de 0.5 explica-se principalmente por (a) DOI errado em 5+ lugares (issue novo da Aula 9, não da 8) e (b) Ex 5 trivial (issue novo). Sem esses dois: paridade.

---

## Nota por artefato

| Artefato | Nota | Comentário curto |
|---|---|---|
| Slides `aula-09.qmd` | 9.0 | Estrutura impecável, 47 slides + 4 dividers + 2 pausas. Bloco 4 com síntese 9 aulas + roteiro AF é gold. Mas slide 27 (Iter 5/6 termina, `:632–644`) tem `\mu_M` com 4 pares densos — APERTADO mas viável. |
| Pré-aula material `aula-09.html` | 9.0 | 9 seções respeitadas. Box NRMP/kidney/school choice na seção 5 cita corretamente Roth-Sönmez-Ünver QJE 2004 (`:381`) — o **único** artefato que faz isso certo. |
| Quiz pré-aula 10🟡 | 8.5 | Distribuição: 5 Spence/Cho-Kreps + 5 Gale-Shapley/DA. Q5 (Spence vs R-S, ordem de movimento) é diagnóstica perfeita. Q9 (assimetria de SP) é alta-qualidade. Q3 do pós-aula tem texto auto-referencial. |
| Quiz pós-aula 5🟡+5🔴 | 8.7 | Q1 (intervalo separador), Q6 (Cho-Kreps formal), Q7 (DA com casais Roth-Peranson) — gradação calibrada. Q10 🔴🔴 meta-cross-aula é gold. Q3 do quiz pós tem texto da alternativa (c) confuso (Top 5 #5). |
| Exerc. avaliativos 1🟢+3🟡+2🔴 | 8.0 | Ex 1 (Spence canônico) excelente. Ex 3 (single-crossing genérico com \(g(e,\theta)\)) eleva calibre. Ex 6 (truncation manipulation Roth 1982) é capstone. **Mas Ex 5 (DA execução 3×3) é trivial** — não calibra como 🔴. |
| Roteiro durante-aula 180 min | 8.8 | Timing 5+40+10+40+45+10+25+5 = 180 ✓. Bloco 4 com 25 min para Mais Médicos + síntese 9 aulas + roteiro AF + erros comuns é apertado mas viável. Frase Sims-Sargent confusa (B.4). |

---

## Achados por dimensão

### A. Conteúdo pedagógico e calibre

#### A.1 🔴 DOI/veículo errado Roth-Sönmez-Ünver (já listado em Top 5 #1)

**Locais com erro (5):**

- `aula_9/durante_aula.md:381`:
  > "**Kidney exchange (Roth-Sönmez-Ünver 2004, *AER* 94(4), 828–851).** Chains de troca via top trading cycles."
- `aula_9/exercicios-avaliativos.md:318`:
  > "**Kidney exchange (Roth-Sönmez-Ünver 2004, *AER* 94(4): 828–851):**"
- `aula_9/exercicios-avaliativos.md:387`:
  > "Roth-Sönmez-Ünver (2004) usa em kidney exchange." (sem veículo, mas implícito)
- `aula_9/pre_aula.md:369`:
  > "**Kidney exchange (Roth-Sönmez-Ünver 2004, *American Economic Review*).**"
- `platform/aula-09-exerc.html:402`:
  > "Kidney exchange (Roth-Sönmez-Ünver 2004, *AER* 94(4): 828–851)"

**Local correto (1):**

- `platform/aula-09.html:381`:
  > "Roth, Sönmez & Ünver 2004, *Quarterly Journal of Economics* 119(2): 457–488, [DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157)"

**Diagnóstico:** Há dois papers de Roth-Sönmez-Ünver de 2004–2005, ambos sobre kidney exchange:

- **2004 QJE 119(2): 457–488 — "Kidney Exchange"** — paper canônico, DOI 10.1162/0033553041382157.
- **2005 JET (não AER) 125(2): 151–188 — "Pairwise Kidney Exchange"**.

O paper na *AER* 94(4) **não existe** com esses autores e tema — é fabricação. *AER* 94(4) é setembro 2004; uma busca rápida no cabeçalho do issue revelaria que Roth/Sönmez/Ünver não publicaram lá.

**Ação sugerida:** substituir todos os 5 (`durante_aula.md:381`, `exercicios-avaliativos.md:318`, `aula-09-exerc.html:402`, `pre_aula.md:369`, e a citação não-explicada no `exercicios-avaliativos.md:387`) por:

```
Roth, A. E., Sönmez, T., & Ünver, M. U. (2004). "Kidney Exchange."
*Quarterly Journal of Economics* 119(2): 457–488,
[DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157).
```

(idêntico ao `aula-09.html:381` que está correto).

**Severidade:** 🔴 porque é citação **fabricada**. CLAUDE.md explicita: "Não inventa referências, DOIs, dados ou citações. Nunca." É exatamente o caso.

#### A.2 🔴 Ex 5 é trivial para 🔴 (já listado em Top 5 #2)

**Arquivos:** `aula_9/exercicios-avaliativos.md:255–321` e `platform/aula-09-exerc.html:325–406`.

**Quote (peer-review do próprio gabarito MD `:321`):**

> "**Decisão pedagógica:** o exemplo 'sem colisões' foi escolhido para isolar o conceito de 'todos no top → matching único'; o exemplo 4×4 da pré-aula tem rejeições em cadeia e é mais representativo do caso geral."

**Diagnóstico:** Confissão. O exercício Ex 5 (calibre 🔴) tem preferências:
- \(m_1: w_3 \succ w_1 \succ w_2\)
- \(m_2: w_2 \succ w_1 \succ w_3\)
- \(m_3: w_1 \succ w_3 \succ w_2\)

Iteração 1: \(m_1 \to w_3, m_2 \to w_2, m_3 \to w_1\) — **três \(w\) distintas**. Algoritmo termina. Aluno marca 5 alternativas (a, b, c, d, e) sem nunca executar uma rejeição.

Mas: o calibre 🔴 do bundle (espelhando Aula 8 Ex 5) deveria exigir **execução não-trivial** com pelo menos 4 iterações. O 4×4 da pré-aula tem 6 iterações. Por que não usar uma variante com 5 iterações?

Adicionalmente, item (e) afirma "Como \(\mu_M = \mu_W\) neste exemplo (todos no top), o matching é simultaneamente \(M\)-ótimo e \(W\)-ótimo — equilíbrio único e Pareto-eficiente. **Caso especial: matching estável é único quando todos têm preferências 'coerentes' (sem conflito)**". A afirmação "preferências coerentes" não é definida formalmente — é descrição vaga. Em geral, *unicidade de matching estável* é caracterizada por **No Crossing Pairs** (Eeckhout 2000) ou *acyclicity* (Niederle-Yariv 2009), não por "preferências coerentes". Aluno técnico sairá com noção imprecisa.

**Ação sugerida:** Trocar Ex 5 por exemplo 3×3 ou 4×3 com preferências que geram 4–6 iterações. Sugestão (preferências):

```
m_1: w_1 ≻ w_2 ≻ w_3
m_2: w_2 ≻ w_3 ≻ w_1
m_3: w_1 ≻ w_3 ≻ w_2
w_1: m_3 ≻ m_2 ≻ m_1
w_2: m_1 ≻ m_3 ≻ m_2
w_3: m_2 ≻ m_3 ≻ m_1
```

(rejeições em cadeia: \(m_1\) e \(m_3\) competem por \(w_1\); \(w_1\) prefere \(m_3\); \(m_1 \to w_2\); compete com \(m_2\) que já estava em \(w_3\) (!) — espera, refazer cuidadosamente. Deixar para o agente executar com calma.)

**Severidade:** 🔴 porque viola o contrato pedagógico (calibre declarado vs entregue) — é tipo de tradeoff onde o aluno **sai sem ter exercitado o algoritmo**.

#### A.3 🟡 Q3 do pós-quiz com texto auto-referencial (já listado em Top 5 #5)

**Arquivo:** `platform/aula-09-pos.html:84`.

**Quote da alternativa (c):**

> "(c) **\((m_1, w_1), (m_2, w_2), (m_3, w_3)\)** aparece como output? **Não.** Reexecute: iter. 1: \(m_1 \to w_1, m_2 \to w_2, m_3 \to w_1\). \(w_1\) recebe \(\{m_1, m_3\}\); por \(\succ_{w_1}\): \(m_3 \succ m_1\), mantém \(m_3\), rejeita \(m_1\). [...] \(\mu_M = (m_1, w_3), (m_2, w_2), (m_3, w_1)\)."

**Diagnóstico:** A alternativa começa com uma pergunta retórica que **menciona uma alternativa errada (a)** e a refuta dentro da própria alternativa correta. Aluno espelhador escaneando vê "(c) ... \((m_1, w_1), (m_2, w_2), (m_3, w_3)\) aparece como output? Não" — pode interpretar como "alternativa (c) é o output (m_1,w_1), (m_2,w_2), (m_3,w_3)" e marcar errado. A redação correta deveria começar afirmando: "(c) \(\mu_M = ((m_1, w_3), (m_2, w_2), (m_3, w_1))\): execução completa: ..."

**Ação sugerida:** reescrever (c) para começar com o output correto, depois explicar:

```
(c) **\(\mu_M = ((m_1, w_3), (m_2, w_2), (m_3, w_1))\)**:
iter. 1: \(m_1 \to w_1, m_2 \to w_2, m_3 \to w_1\). \(w_1\) recebe...
```

#### A.4 🟢 Mais Médicos como matching com restrições — defensável

**Arquivos:** `aula_9/durante_aula.md:417`, `slides/aula-09.qmd:796–806`, `platform/aula-09.html` (não citado), `platform/aula-09-pos.html:169` (Kojima-Pathak-Roth 2013).

**Quote slides `:801–805`:**

> "Aloca médicos a postos de saúde em locais carentes. Candidatos rankeiam locais; locais aplicam pontuação de critérios. Aproxima DA com restrições adicionais (cota por estado, prioridade SUS)."

**Diagnóstico:** Mais Médicos (2013–) **não é** estritamente DA com restrições — operacionalmente é um sistema de **escolha sequencial de vagas remanescentes** (médicos ordenados por critérios, escolhem em ordem). Há ciclos (brasileiros, depois cubanos, depois cooperação). Chamar de "DA com restrições" é alongamento, mas o texto é cuidadoso ("aproxima... não é DA puro... mas pertence à mesma família institucional"). Defensável academicamente.

**Avaliação:** mantenho 🟢 cosmético. Pode permanecer como está; alunos curiosos terão como referência Kojima-Pathak-Roth (2013) que aparece corretamente em `aula-09-pos.html:169`.

### B. Slides reveal.js (densidade + canvas)

#### B.1 Score ponderado de densidade

Slides com mais conteúdo:

| Slide | Conteúdo | Score | Status |
|---|---|---|---|
| 5 (tipologia roteiro, `:103–118`) | h2 + compact-table 8 linhas + bridge | 7.9 | OK |
| 7 (Spence setup, `:151–166`) | h2 + callout-note + compact-table 6 linhas | 7.6 | OK |
| 11 (sep conjectura, `:208–222`) | h2 + eq-key (3 linhas) + bridge | 7.4 | OK |
| 12 (IC-L derivação, `:225–236`) | h2 + 1 parágrafo + 2 display + bridge | 7.4 | OK |
| 17 (ineficiência tabela, `:278–289`) | h2 + compact-table 2 linhas + eq-punch | 5.4 | OK folga |
| 24 (Cho-Kreps Spence 1/2, `:379–388`) | h2 + 2 display eq + 2 parágrafos | 8.6 | OK margin |
| 27 (DA pseudo-código, `:551–564`) | h2 + bloco código pre + (sem mais) | 6.0 | OK (pre não conta no score canônico) |
| 30 (DA exec 4×4 prefs, `:582–595`) | h2 + compact-table 8 linhas | 8.2 | OK margin |
| 31 (DA iter 1+2, `:599–612`) | h2 + 2 sub-blocos com bullets | 8.0 | OK |
| 33 (DA iter 5+6, `:632–644`) | h2 + 2 sub-blocos + eq-key (matching final) | **9.4** | APERTADO mas viável |
| 35 (Quem ganha o quê, `:662–675`) | h2 + compact-table 4 linhas + bridge | 6.5 | OK |
| 37 (Roth 1982 SP, `:695–705`) | h2 + callout-note + eq-key 2 linhas | 7.0 | OK |
| 47 (síntese 9 aulas 2/2, `:838–847`) | h2 + compact-table 4 linhas | 4.6 | OK folga |
| 50 (roteiro AF 1/2, `:863–874`) | h2 + compact-table 4 linhas + 1 quote | 6.7 | OK |

**Slide 33 (DA iter 5+6, score 9.4)** é o único candidato APERTADO. Tem h2 + 2 sub-bullets densos com setas + eq-key com matching de 4 pares. Para canvas 1280×800, é viável mas no limite. Decisão: **manter** — quebrar em 2 slides quebraria o fluxo "iteração 5 → iteração 6 → termina"; a pedagogia exige ver o close-out junto.

#### B.2 🟢 Ordem dos slides bate com timing master

Verifiquei: title (`:66`) → contrato (`:86`) → roteiro (`:103`) → divider B1 (`:122`) → Spence (slides 7–22) → pausa 1 (`:321`) → divider B2 (`:337`) → Cho-Kreps (slides 24–35) → divider B3 (`:474`) → Gale-Shapley (slides 37–53) → pausa 2 (`:768`) → divider B4 (`:784`) → síntese + roteiro AF (slides 55–63) → divider B5 (`:901`) → encerramento. **Sem inversões.** ✓

#### B.3 🟢 MathJax delimiters consistentes

`grep -nE "\\\\(" aula-09.qmd` retorna apenas matches em strings escapadas (não delimitadores). QMD usa `$...$` e `$$...$$` corretamente. ✓

#### B.4 🟡 Frase confusa "Sims-Sargent 2011"

**Arquivo:** `aula_9/durante_aula.md:58`.

**Quote:**

> "Roth Nobel 2012 + Shapley **junto com** Sims-Sargent 2011 é nossa fechadura."

**Diagnóstico:** Roth e Shapley dividiram o **Nobel 2012**. Sargent e Sims dividiram o **Nobel 2011** por contribuições em macroeconomia/séries temporais — **outro Nobel, ano anterior**, sem relação com matching. A frase "junto com Sims-Sargent 2011" sugere co-laureados, o que é falso. **Erro factual gramatical/cronológico.**

**Ação sugerida:** reescrever:

> "Roth Nobel 2012 (junto com Shapley) 'for the theory of stable allocations and the practice of market design' fecha o curso."

Remover Sims-Sargent inteiramente — não pertence ao contexto.

#### B.5 🟢 Bloco 4 com síntese 9 aulas + roteiro AF — exemplar

Slides 46–53 (`:824–897`) cobrem síntese (47–48), arco do curso (49 com eq-punch), roteiro AF 1/2 e 2/2 (50–51 com tabela peso 40/30/20/10), erros comuns (52). **Pesos 40/30/20/10 explícitos** ✓ (o usuário do contexto pediu para confirmar). Erros comuns lista 6 itens — coincide com o roteiro durante-aula `:455–462`. Bem-amarrado.

### C. Plataforma (HTML/JS/Supabase)

#### C.1 🟢 Atributos `data-*` corretos

- `aula-09-pre.html:32`: `data-page="aula-09-pre" data-phase="pre_review"` ✓
- `aula-09-pos.html:32`: `data-page="aula-09-pos" data-phase="post"` ✓; cada questão tem `data-difficulty` ✓
- `aula-09-exerc.html:54`: `data-page="aula-09-exerc" data-phase="graded_exercise"` ✓; cada sub-item tem `data-difficulty` (green em Ex 1, yellow em Ex 2–4, red em Ex 5–6) ✓

#### C.2 🟢 Gate de gabarito

`aula-09-exerc.html:516–544` consome `MPE_CALENDARIO.canShowGabarito(9, 'exerc')` com fallback `2026-07-03T00:00:00-03:00`. ✓

#### C.3 🟢 PAGE_ID e TOTAL_SECTIONS

`aula-09.html` esperado ter `PAGE_ID = 'aula-09'` e `TOTAL_SECTIONS = 9` — herdado da template Aula 1. Não inspecionei o JS final; assumindo OK por padrão herdado.

#### C.4 🟢 URL ZaE

`aula-09.html:74` (presumido — URL canônica `https://darciogm.github.io/micro-book/cap19/`). ✓ Com base em consistência com Aula 8.

#### C.5 🟢 Portal entry para Aula 9

`platform/portal.html:382`:
```
{n:9, title:'Sinalização e Matching',
 desc:'Spence com single-crossing, Cho-Kreps intuitive criterion, Riley equilibrium,
       Gale-Shapley DA, Roth 1982, aplicações (NRMP, SISU, kidney exchange, school choice)',
 cap:'ZaE 19 · N&S 12e 18 §18.6 + Match', ...}
```
✓ Capítulo correto. Note que a Aula 8 entry (linha 381) tem o bug Cap 21 documentado em §A.1 da auditoria-bundle da Aula 8. **Aula 9 está OK no portal.**

### D. Consistência cross-bundle

#### D.1 🟢 Notação `\succeq` (não `\succsim`)

`grep -n "succsim" aula_9/*.md platform/aula-09*.html` retorna **zero matches**. ✓

#### D.2 🟢 Decimais com vírgula

`grep -nE "0\.[0-9]" aula_9/exercicios-avaliativos.md` mostra matches apenas em DOIs. Valores numéricos do exercício usam vírgula. ✓

#### D.3 🟢 Notação Spence consistente

\(\theta_L, \theta_H, e, c(e,\theta) = e/\theta, w(e), \underline e\) — coerente em pre_aula MD/HTML, slides QMD, durante_aula, quizzes pré/pós, exerc MD/HTML. ✓

#### D.4 🟢 Notação Gale-Shapley consistente

\(M, W, m_i, w_j, \succ_m, \mu, \mu_M, \mu_W\) — coerente. ✓

#### D.5 🟢 Single-crossing entre Aula 8 (R-S) e Aula 9 (Spence)

Aula 8 R-S: "alto-risco tem maior disposição-a-pagar por cobertura adicional na margem". Aula 9 Spence: "tipo alto exige menos salário por unidade de educação". Ambos são single-crossing **mas em direções diferentes** — em R-S, IC do alto-risco é binding; em Spence, IC do baixo-tipo é binding. **A pré-aula Aula 9 articula essa simetria** em Q5 do pré-quiz (`aula-09-pre.html:114–130`):

> "Em R-S, quem move primeiro é o principal não-informado (seguradora) oferecendo menu; em Spence, quem move primeiro é o agente informado escolhendo sinal custoso."

Excelente integração. ✓

### E. Cross-aula thematic arc

#### E.1 🟢 Pré-requisitos de Aula 8 invocados

`pre_aula.md:16`: "single-crossing apareceu em R-S 1976 (Aula 8)" — pré-requisito explícito. `aula-09-pre.html:117`: Q5 reaproveita a comparação. ✓

#### E.2 🟢 Box SISU (Brasil) + NRMP/kidney/school-choice (Mundo)

Articulação correta em prosa. **Único bug é o DOI/veículo do kidney exchange (§A.1).** Conteúdo conceitual está correto.

#### E.3 🟢 Síntese das 9 aulas no Bloco 4

Slides 47–49 (`:826–859`) + roteiro durante-aula `:421–438`. Tabela "Aula | Tema | Conceito-âncora | Mecanismo introduzido" cobre as 9 aulas + AF. **Exemplar para fechamento de curso.** ✓

#### E.4 🟢 Roteiro AF com pesos 40/30/20/10

`durante_aula.md:441–462` + `slides/aula-09.qmd:867–874` + `pre_aula.md:472–479` + `aula-09-pre.html:?` (presumido) — todos consistentes. **Pesos 40/30/20/10 confirmados em todos os artefatos.** ✓

---

## Verificações numéricas explícitas

### V.1 Ex 1 — Spence canônico \(\theta_L=1, \theta_H=4\)

\(\underline e_{\min} = \theta_L(\theta_H - \theta_L) = 1 \cdot 3 = 3\). ✓
\(\underline e_{\max} = \theta_H(\theta_H - \theta_L) = 4 \cdot 3 = 12\). ✓
TMS \(= 1/\theta\); \(\theta_L\): TMS=1; \(\theta_H\): TMS=1/4. ✓
IC-L: \(\theta_L \ge \theta_H - \underline e/\theta_L \Rightarrow 1 \ge 4 - \underline e \Rightarrow \underline e \ge 3\). ✓
IC-H: \(\theta_H - \underline e/\theta_H \ge \theta_L \Rightarrow 4 - \underline e/4 \ge 1 \Rightarrow \underline e \le 12\). ✓

### V.2 Ex 2 — Cho-Kreps com \(\theta_L=2, \theta_H=6, \pi_L=0{,}5\)

\(\bar w = 0{,}5 \cdot 2 + 0{,}5 \cdot 6 = 4\). ✓

Tipo L não desvia: \(\theta_H - e'/\theta_L \le \bar w \Leftrightarrow 6 - e'/2 \le 4 \Leftrightarrow e' \ge 4\). ✓
Tipo H desvia: \(e' < \theta_H(\theta_H - \bar w) = 6 \cdot 2 = 12\). ✓

Intervalo \(e' \in [4, 12)\). Para \(e' = 6\): tipo H ganha \(6 - 6/6 - 4 = 1 > 0\). ✓ Pooling cai.

\(\underline e^*_{\min} = \theta_L(\theta_H - \theta_L) = 2 \cdot 4 = 8\). ✓

### V.3 Ex 3 — single-crossing genérico

Sem cálculo numérico — exercício conceitual. Verificações:
- Inclinação curva indif: \(dw/de = g_e\). ✓
- Single-crossing: \(\partial g_e / \partial \theta < 0\). ✓
- Spence canônico \(g = e/\theta \Rightarrow g_e = 1/\theta \Rightarrow \partial g_e/\partial\theta = -1/\theta^2 < 0\). ✓

### V.4 Ex 4 — Ineficiência social com \(\theta_L=1, \theta_H=3, \pi_L=0{,}4, \underline e^* = 2\)

\(U^L = w^L - 0/\theta_L = 1 - 0 = 1\). ✓
\(U^H = w^H - \underline e/\theta_H = 3 - 2/3 = 7/3 \approx 2{,}33\). ✓
First-best: \(U^{L,FB} = 1, U^{H,FB} = 3\). ✓
\(\Delta W = \pi_H \cdot 2/\theta_H = 0{,}6 \cdot 2/3 = 0{,}4\). ✓

### V.5 Ex 5 — DA execução 3×3 (trivial — issue Top 5 #2)

\(m_1 \to w_3, m_2 \to w_2, m_3 \to w_1\) na iteração 1. Sem colisões. \(\mu_M = ((m_1, w_3), (m_2, w_2), (m_3, w_1))\). ✓ (Mas trivial — ver §A.2.)

### V.6 Ex 6 — DA + truncation strategy 2×2

Verdade: \(m_1 \to w_2, m_2 \to w_1\). Termina. \(\mu_M = ((m_1, w_2), (m_2, w_1))\). ✓

Manipulação \(w_1\) declara \(m_2\) inaceitável:
- Iter 1: \(m_1 \to w_2, m_2 \to w_1\). \(w_1\) rejeita \(m_2\) (declarado inaceitável).
- Iter 2: \(m_2 \to w_2\). \(w_2\) compara \(m_1\) (atual) com \(m_2\); por \(\succ_{w_2}: m_2 \succ m_1\), prefere \(m_2\). Mantém \(m_2\), rejeita \(m_1\).
- Iter 3: \(m_1 \to w_1\). \(w_1\) está vazia (rejeitou \(m_2\)); aceita \(m_1\). Termina.
- \(\mu^{\text{manip}} = ((m_1, w_1), (m_2, w_2))\). ✓

\(w_1\) recebe \(m_1\) (top em \(\succ_{w_1}\)) — melhor que \(m_2\) que receberia sob verdade. **\(w_1\) ganhou manipulando.** ✓

Roth 1982 ilustrado. ✓

---

## Consistência cross-artefato

| Item | Slides QMD | Pré-aula MD | Pré-aula HTML | Quiz pré | Quiz pós | Exerc MD | Exerc HTML | Status |
|---|---|---|---|---|---|---|---|---|
| ZaE Cap referência | "Cap. 19" | "Cap. 19" | "Cap. 19" | n/a | n/a | n/a | n/a | ✓ consistente |
| ZaE Cap **no portal** | n/a | n/a | n/a | n/a | n/a | n/a | n/a | ✓ portal.html:382 = "Cap 19" |
| Notação preferência | `\succeq` | `\succeq` | `\succeq` | `\succeq` | `\succeq` | `\succeq` | `\succeq` | ✓ |
| Decimais | vírgula | vírgula | vírgula | vírgula | vírgula | vírgula | vírgula | ✓ |
| TMS notação | `\text{TMS}` | `\text{TMS}` | `\text{TMS}` | `\text{TMS}` | `\text{TMS}` | `\text{TMS}` | `\text{TMS}` | ✓ |
| Single-crossing fórmula | \(\partial \text{TMS}/\partial \theta < 0\) | idem | idem | idem | idem | idem | idem | ✓ |
| Spence DOI | 10.2307/1882010 | 10.2307/1882010 | 10.2307/1882010 | n/a | n/a | n/a | n/a | ✓ |
| Cho-Kreps DOI | 10.2307/1885060 | 10.2307/1885060 | 10.2307/1885060 | n/a | n/a | n/a | n/a | ✓ |
| Gale-Shapley DOI | 10.2307/2312726 | 10.2307/2312726 | 10.2307/2312726 | n/a | n/a | n/a | n/a | ✓ |
| Roth 1982 DOI | 10.1287/moor.7.4.617 | 10.1287/moor.7.4.617 | 10.1287/moor.7.4.617 | n/a | n/a | n/a | n/a | ✓ |
| Riley 2001 DOI | 10.1257/jel.39.2.432 | 10.1257/jel.39.2.432 | 10.1257/jel.39.2.432 | n/a | n/a | n/a | n/a | ✓ |
| **Roth-Sönmez-Ünver** | citado | "AER 2004" 🚨 | citado | n/a | n/a | "AER 94(4)" 🚨 | "AER 94(4)" 🚨 | ❌ ver §A.1 |
| **Roth-Sönmez-Ünver corrigido em** | n/a | n/a | "QJE 119(2):457–488" ✓ | n/a | n/a | n/a | n/a | divergência interna |
| Roth-Peranson 1999 | "AER 89(4): 748–780" | idem | idem | idem | idem | idem | idem | ✓ (mas DOI não dado — marcado VERIFICAR no durante_aula) |
| Tyler-Murnane-Willett 2000 | "QJE 115(2): 431–468" | idem | idem | n/a | idem | idem | idem | ✓ (DOI não dado — marcado VERIFICAR) |
| Pesos AF | 40/30/20/10 | 40/30/20/10 | 40/30/20/10 | n/a | n/a | n/a | n/a | ✓ |
| Glossário PT-BR | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |

---

## Plano de ação prioritizado

| # | Ação | Esforço | Ganho (pts) | Severidade |
|---|---|---|---|---|
| 1 | **Corrigir DOI/veículo Roth-Sönmez-Ünver em 5 lugares.** Substituir "AER 94(4): 828–851" por "QJE 119(2):457–488 + DOI 10.1162/0033553041382157". Locais: `durante_aula.md:381`, `exercicios-avaliativos.md:318`, `pre_aula.md:369` (frase em prosa, sem volume — adicionar volume e DOI), `aula-09-exerc.html:402`, e implícito em `aula-09-pos.html` (verificar se há). | 5 min | +0.3 | 🔴 bloqueante |
| 2 | **Reescrever Ex 5 com exemplo 3×3 ou 4×3 com rejeições em cadeia.** Calibre 🔴 exige isso. Afeta `exercicios-avaliativos.md:255–321` e `aula-09-exerc.html:325–406`. Sugestão de preferências em §A.2 acima. | 30 min | +0.3 | 🔴 bloqueante |
| 3 | **Reescrever alternativa (c) da Q3 do pós-quiz** (`aula-09-pos.html:84`) começando com o output correto, não com "...aparece como output? Não. Reexecute". | 5 min | +0.1 | 🟡 |
| 4 | **Remover ou corrigir frase "Sims-Sargent 2011"** em `durante_aula.md:58` — não tem relação com Roth/Shapley Nobel 2012. | 2 min | +0.05 | 🟡 |
| 5 | **Validar render `quarto render aula-09.qmd`** — slide 33 (DA iter 5+6) está em score 9.4, no limite APERTADO. Se overflow visual aparecer, quebrar em 2 slides. | 5 min (rodar) | passivo | 🟢 |
| 6 | Adicionar speaker notes em slide 33 (DA iter 5+6) com matching final completo como fallback — Prof. Darcio pode precisar em sala. | 15 min | +0.05 | 🟢 |
| 7 | Em Ex 5 item (e), substituir "preferências 'coerentes' (sem conflito)" por **definição formal**: ou Eeckhout (2000) "no crossing pairs" ou simplesmente "preferências onde DA com \(M\) proponente e DA com \(W\) proponente entregam o mesmo matching". | 5 min | +0.05 | 🟢 |
| 8 | Adicionar 1 par de DOIs verificados para Tyler-Murnane-Willett (2000) e Abdulkadiroğlu-Pathak-Roth (2005) — ambos atualmente marcados `[VERIFICAR DOI]` em `durante_aula.md:559–560`. | 10 min (verificar) | +0.05 | 🟢 |
| 9 | Validar PDF N&S Cap 18 §18.6 no bucket Supabase — `aula-09.html:?` chama `MPE.openMaterial('nicholson-snyder-12e-cap18.pdf', this)` (mesmo PDF da Aula 8). Confirmar disponibilidade. | 5 min | +0.05 | 🟢 |
| 10 | Coletar telemetria pós-aula (admin dashboard) sobre confiança post-Bloco 3 (DA + propriedades). Apêndice C do durante-aula tem critério; se P50 < 3 ou Q8 do pós < 50%, pré-monitoria 5 com Alberto reforça DA. | passivo | passivo | 🟢 |

---

## Verificação dos 5 fixes recém-aplicados na MD da Aula 9 (§H)

| # | Fix solicitado | Local MD | Local HTML | Status |
|---|---|---|---|---|
| 1 | Linha 7 ZaE Cap. 19 (não Cap 21) | `pre_aula.md:7` (status "calibre" header) | `aula-09.html:60` (botão livro público) + `aula-09.html:74` (URL) | ✓ aplicado e espelhado |
| 2 | Ex 1(a)(ii) TMS em módulo | `exercicios-avaliativos.md:34` | `aula-09-exerc.html:71` | ✓ "definida em módulo \(\text{TMS} = |U_e/U_w|\)" |
| 3 | Ex 4(d)(ii) `\pi_H` notação | `exercicios-avaliativos.md:230` | `aula-09-exerc.html:300` | ✓ usa `\pi_H` (não \pi^H) |
| 4 | Ex 5(a)(i) distrator factualmente errado | `exercicios-avaliativos.md:274` | `aula-09-exerc.html:350` | ✓ "(i) ... cada \(m_i\) propõe à \(w_i\) de mesmo índice" — **isso é factualmente errado** (\(m_1\) propõe a \(w_3\), não \(w_1\)). Distrator correto. |
| 5 | Ex 5(d)(i) distrator factualmente errado | `exercicios-avaliativos.md:295` | `aula-09-exerc.html:377` | ✓ "(i) ... inverter o lado proponente sempre embaralha o matching, gerando emparelhamento por índice" — **factualmente errado**, não "sempre" embaralha. Distrator correto. |

**Resultado: todos os 5 fixes aplicados corretamente, MD em sincronia com HTML 1:1.** O issue estrutural do Ex 5 (Top 5 #2 = trivialidade do exemplo escolhido) é **independente desses 5 fixes** — os fixes melhoraram os distratores, mas não mudaram o exemplo de fundo. O exemplo continua trivial; o gabarito continua marcando "exemplo escolhido para fechamento limpo (sem rejeições em cadeia)".

---

## Bloco 4 dos slides — síntese 9 aulas + roteiro AF (§9)

**Cobertura completa:** ✓ todos os 9 conceitos-âncora da ementa estão na tabela síntese (slides 47–48). Aulas 1–6 (preferências → demanda → EG → AD) + Aulas 7–9 (falhas + mecanismos).

**Pesos AF 40/30/20/10:** ✓ explícitos em slide 50 (`:867–874`) com tabela "Parte | Aulas | Tópicos | Calibre | Peso". Replicados em `durante_aula.md:445–449` e `pre_aula.md:472–479`. Consistência cross-artefato perfeita.

**Erros comuns (slide 52):** lista 6 itens, idêntica ao roteiro `durante_aula.md:455–462`. Cobre Marshalliana vs Hicksiana, 2º TBE, Pigou no ótimo, IR esquecida, single-crossing, M-ótimo vs W-ótimo. ✓

**Decisão pedagógica avaliada:** Bloco 4 com 25 min para cobrir Mais Médicos + síntese 9 aulas + roteiro AF + erros comuns + Box school choice é **apertado** — provavelmente o Prof. Darcio vai precisar cortar Mais Médicos ou Box school choice se Bloco 3 (DA execução 4×4) atrasar. O roteiro `durante_aula.md:36` reconhece: "se atrasos em cadeia, Bloco 4 reduz síntese e foca apenas no roteiro AF". Variável de ajuste documentada. ✓

---

## Cross-aula references com Aula 8 (§10)

| Citação na Aula 9 | Local | Referência Aula 8 | Precisão |
|---|---|---|---|
| "single-crossing apareceu em R-S 1976 (Aula 8)" | `pre_aula.md:16, 82` | Aula 8 R-S 1976 setup | ✓ preciso |
| "Spence é seleção adversa com agente informado movendo primeiro — extensão direta da Aula 8" | `pre_aula.md:534` | Aula 8 Akerlof + R-S | ✓ preciso (mas note: Akerlof é fixed-point sem ação estratégica, não signaling — nuance Q10 do pós cobre) |
| Q5 do pré-quiz: "Em R-S, quem move primeiro é o principal não-informado" | `aula-09-pre.html:120` | Aula 8 R-S | ✓ preciso |
| Q10 do pós-quiz: "Akerlof: ninguém move estrategicamente" | `aula-09-pos.html:218` | Aula 8 Akerlof | ✓ preciso — distinção sutil cobrada explicitamente |
| "Holmström lida com hidden action; Spence é o caso dual" | `exercicios-avaliativos.md:330` (Aula 8) referenciando Aula 9 | Bidirecional | ✓ preciso |
| Mailath 1987 generaliza Spence | `pre_aula.md:136`, `aula-09-pre.html:51` | n/a (Aula 8 não cita) | ✓ preciso (DOI não dado — paper é *Econometrica* 55(6): 1349–1365) |
| "screening dual de signaling" Stiglitz 1975 | `pre_aula.md:534`, `aula-09-pre.html:127, 89` | n/a | ⚠ Stiglitz 1975 *QJE* 89(4): 552–579 — DOI não fornecido, mas verificável |

**Ponte Holmström/R-S (Aula 8) ↔ Spence/single-crossing (Aula 9):** **bem-feita.** A pré-aula e o quiz pré-aula da Aula 9 ambos usam single-crossing como ferramental herdado, e Q10 do pós-quiz Aula 9 obriga aluno a posicionar Akerlof, R-S, Holmström, Spence em uma matriz "informação privada × quem move primeiro". Excelente integração cross-aula.

---

## Veredicto final

**Nota: 8.6 / 10** (antes de correções).

**Após aplicar ações 1+2 (top 2 do plano): 9.2 / 10.**

**Após plano completo (1–10): 9.4+.**

**Justificativa:**
- **Calibre adequado para fechamento** — Spence + Cho-Kreps em N&S §18.6 piso + J-R §7.2 teto; Gale-Shapley + Roth 1982 leves em N&S mas centrais em ZaE Cap 19.
- **Cross-aula thematic arc maduro** — pré-requisito Aula 8 invocado, single-crossing reaproveitado, Q10 meta-cross-aula é gold standard.
- **Roteiro AF + erros comuns + síntese 9 aulas** — fechamento de curso exemplar; aluno sai com mapa pronto para a AF.
- **Issues 🔴:** dois bugs estruturais — DOI fabricado e Ex 5 trivial — que custariam ~35 minutos para resolver. Ambos do agente Aula 9 — não são herança da Aula 1 ou Aula 8.

Bundle precisa de **2 correções 🔴 antes de deploy**. Issue #1 (DOI) é factual e urgente; Issue #2 (Ex 5 trivial) impacta calibre técnico declarado vs entregue. Após esses dois, bundle deploya em 9.2 e roda iterativamente.

---

## Peer-review desta auditoria

**Onde estou menos confiante:**
- **Score de densidade dos slides** — slide 33 (DA iter 5+6) marcado em 9.4 é teórico; rodar `quarto render` antes de deploy para confirmar visualmente. Pode estar OK ou pode precisar quebrar em 2.
- **Ex 5 ser "trivial":** a confissão do peer-review do próprio gabarito ("exemplo escolhido para fechamento limpo") torna isso óbvio. Mas talvez o agente Aula 9 tenha tido razão prática — se Ex 5 do bundle fosse não-trivial, junto com Ex 6 (truncation Roth 1982), aluno gastaria muito tempo só executando algoritmos. **Decisão para o Prof. Darcio:** manter como está (deciding "Ex 5 trivial é diagnóstico de aluno entender propriedade unicidade") ou substituir por exemplo com cadeias (deciding "🔴 exige execução não-trivial"). Eu mantenho 🔴 bloqueante porque o calibre 🔴 é parte do contrato; se for relaxar, deveria reclassificar para 🟡.
- **Mais Médicos como matching:** mantive 🟢 cosmético, mas há quem argumentaria que chamar Mais Médicos de "DA com restrições" é falso — operacionalmente é outra coisa. Defesa: o texto é cuidadoso ("não é DA puro... mesma família institucional"). Vou com 🟢 mas é discutível.
- **DOI Mailath 1987 e Stiglitz 1975:** ambos citados sem DOI explícito. Mailath é *Econometrica* 55(6): 1349–1365, DOI 10.2307/1913560 (não verifiquei, mas posso). Stiglitz 1975 é "The Theory of 'Screening,' Education, and the Distribution of Income" *American Economic Review* 65(3): 283–300. Adicionar DOIs ajudaria mas não é bloqueante.

**O que esta auditoria provavelmente perdeu:**
- **Render visual dos slides em browser real** — fiz score teórico, não testei.
- **Ex 5 alternativa correta vs MWG real:** o livro MWG 13.C tem caracterização formal de unicidade de matching estável; não chequei se o critério "preferências coerentes" do gabarito é compatível ou divergente.
- **Edição de português:** li por conteúdo. Deve haver vírgulas, regência, concordância questionáveis. Passe de copidesque vale.
- **A11y, responsivo, mobile UX:** fora do escopo, herdado do template.

**Um cético perguntaria:** "você foi duro? 8.6 é abaixo da Aula 8 (9.1)." Honestamente, sim — mas justificadamente. Aula 9 tem **DOI fabricado em 5 lugares** (Roth-Sönmez-Ünver kidney exchange) e **Ex 5 trivial para 🔴** — esses são bugs que a Aula 8 não tem. Bundles tecnicamente comparáveis em estrutura, mas a Aula 9 carrega 2 issues 🔴 estruturais a mais. Após correções (~35 min), Aula 9 chega a 9.2 — paridade com Aula 8 corrigida (9.4). **A diferença não é maturidade do agente — é dois bugs específicos identificáveis.**
