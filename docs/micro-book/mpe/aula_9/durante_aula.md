# Aula 9 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 17/06/2026 — **última aula de conteúdo do curso**. Tema: **Sinalização (Spence 1973) + Refinamentos (Cho-Kreps 1987) + Matching (Gale-Shapley 1962)** — fechamento + revisão integrada para Avaliação Final (qua 24/06).

> **Disclaimer pedagógico explícito.** Esta aula fecha o curso com **mecanismos de coordenação descentralizada**: sinalização faz o agente informado revelar tipo via custo (extensão da Aula 8); matching implementa alocação estável **sem usar preços** (Roth Nobel 2012 + Shapley). O **Bloco 4 inclui síntese das 9 aulas + roteiro AF**. Mantenha a moldura: **as 9 aulas formam um arco coerente — preferências → escolha → demanda → EG → falhas → mecanismos**. Aula 9 fecha a estrutura.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 17/06/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Sinalização (Spence) + Refinamentos (Cho-Kreps) + Matching (Gale-Shapley) + síntese AF
- **Objetivo de aprendizagem:** diagnosticar Spence como caso especial de seleção adversa com movimento estratégico do agente informado; usar single-crossing para construir equilíbrio separador; aplicar Cho-Kreps para eliminar pooling; executar DA num exemplo concreto e enunciar suas propriedades; sintetizar o curso e dar roteiro AF.
- **Pré-requisitos assumidos:** Aulas 1–8 consolidadas. Em particular: UMP/EMP (Aula 2), single-crossing apareceu em R-S 1976 (Aula 8), 1º TBE estendido (Aula 5), seleção adversa + risco moral (Aula 8). Pré-aula 9 concluída (ZaE Cap. 19 + N&S Cap. 18 signaling section; 9 seções da plataforma + quiz pré-aula 10🟡).
- **Nível pedagógico:** **piso N&S 12e Cap. 18 §18.6**; ZaE Cap. 19 como leitura principal; J-R 3e §7.2 como teto de conforto; MWG Cap. 13 §C cirurgicamente em 🔴.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + ponte falhas Aulas 6–8 | 19:30 | 19:35 | **5 min** |
| 1 | Spence (1973): single-crossing + equilíbrio separador | 19:35 | 20:15 | **40 min** |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | Cho-Kreps (1987): refinamento + pooling vs. separador | 20:25 | 21:05 | **40 min** |
| 3 | Gale-Shapley (1962): DA + execução 4×4 + propriedades | 21:05 | 21:50 | **45 min** |
| P2 | Pausa | 21:50 | 22:00 | **10 min** |
| 4 | Aplicações + síntese 9 aulas + roteiro AF | 22:00 | 22:25 | **25 min** |
| 5 | Encerramento do curso | 22:25 | 22:30 | **5 min** |

**Soma:** \(5 + 40 + 10 + 40 + 45 + 10 + 25 + 5 = 180\) min. ✓

> **Calibração de timing.** Bloco 3 (matching + DA) tem **45 min** — bloco mais técnico em algoritmo + propriedades; merece tempo. Bloco 1 (Spence) e Bloco 2 (Cho-Kreps) ficam em **40 min cada** — ambos exigem derivação no quadro. Bloco 4 fica em **25 min** — síntese rápida + roteiro AF; aula é final, não introduz tópico novo. **Variáveis de ajuste:** se Bloco 1 atrasa, Bloco 2 absorve cortando o desvio "no melhor caso" e fazendo argumento qualitativo só; se atrasos em cadeia, Bloco 4 reduz síntese e foca apenas no roteiro AF.

---

## Bloco 0 — Abertura + recall + ponte (5 min)

**19:30–19:35.**

### Roteiro

- **Cumprimento e check-in (1 min).** "Aula 9 — última de conteúdo. Hoje fechamos o curso com **sinalização (Spence) e matching (Gale-Shapley)**. Próxima quarta (24/06) é **Avaliação Final**. Hoje vou reservar 25 min para síntese do curso e roteiro AF."
- **Recall das Aulas 6–8 + ponte (4 min, no quadro):**
  > "Em uma frase: o que catalogamos nas Aulas 6, 7 e 8?"

  Resposta esperada da sala:

  - "As três falhas do EG: incompletude (Aula 6), externalidades + bens públicos (Aula 7), informação assimétrica (Aula 8)."

  Se a sala não devolve em 30s, **resgate ágil em 60s**: Aula 5 fechou EG canônico (1º TBE estendido); Aulas 6–8 mostraram quebras estruturais, cada uma com mecanismo distinto. **Aula 9 fecha com mecanismos de coordenação descentralizada que respondem a algumas dessas quebras.**

### Transição

> "Aula 8 introduziu **seleção adversa** (Akerlof) e **risco moral** (Holmström). Hoje: **sinalização** (Spence) é caso especial de seleção adversa onde o agente informado **move primeiro** — escolhe um sinal custoso que revela o tipo. **Matching** (Gale-Shapley) é o problema dual: alocar agentes a parceiros sem usar preços, achando alocação estável. Roth Nobel 2012 (junto com Shapley) — *for the theory of stable allocations and the practice of market design* — fecha o curso."

---

## Bloco 1 — Spence (1973): single-crossing + equilíbrio separador (40 min)

**19:35–20:15.**

### Triagem rápida das reflexões (3 min, no início do Bloco 1)

Antes de entrar em Spence, pegue **2–3 reflexões "nebuloso"** da pré-aula 9 e responda em 1 frase cada apontando o slide/bloco onde o tema será tratado. Padrões frequentes a aproveitar: "por que tipo alto educa-se mais que eficiente?" → slide ~8 (ineficiência social do separador); "como executar Cho-Kreps?" → Bloco 2; "DA com casais?" → Bloco 3 ou roteiro AF; "diferença Spence vs. R-S?" → slide ~3. **Não esticar.** Reflexões mais densas viram material de pré-monitoria 5.

### Objetivo

Cravar:

1. Setup canônico de Spence: 2 tipos, custo \(c(e,\theta) = e/\theta\), salário \(w(e) = \mathbb E[\theta \mid e]\).
2. Single-crossing como propriedade central — interpretação gráfica (curvas de indiferença que se cruzam uma vez).
3. Construção do equilíbrio separador via IC-L + IC-H.
4. Ineficiência social do separador comparado ao first-best com info simétrica.

### Estrutura interna (40 min)

#### B1.a (5 min) — Pergunta-driver + setup

> "Aula 8: Akerlof modelava agentes informados (vendedores de carros) que **não podiam** sinalizar. Resultado: unraveling. Spence (1973): **e se o agente informado pudesse mover primeiro, escolhendo um sinal custoso?** Trabalhador conhece sua produtividade \(\theta\); firma observa apenas educação \(e\)."

Quadro:

\[
\theta \in \{\theta_L, \theta_H\}, \quad \theta_H > \theta_L, \quad c(e, \theta) = \frac{e}{\theta}, \quad U = w - c(e, \theta).
\]

Cite: Spence, M. (1973). "Job Market Signaling." *QJE* 87(3), 355–374, [DOI 10.2307/1882010](https://doi.org/10.2307/1882010).

> *"A hipótese-chave é o custo dependente do tipo: educar-se custa **menos** para o tipo de produtividade alta. Por quê? Pode ser interpretado como tempo de estudo necessário, capacidade cognitiva, custo psicológico. Não importa o canal específico — importa que custo marginal de \(e\) é decrescente em \(\theta\)."*

#### B1.b (10 min) — Single-crossing: derivação + interpretação gráfica

Quadro:

> **Definição.** Single-crossing em \((e, w)\): TMS \(\partial U/\partial e \,/\, |\partial U/\partial w|\) é **estritamente decrescente** em \(\theta\).

Cálculo no quadro: \(\partial U/\partial e = -1/\theta\); \(\partial U/\partial w = 1\). TMS (quanto trabalhador exige em \(w\) por unidade de \(e\)) = \(1/\theta\). Decrescente em \(\theta\). ✓

**Interpretação gráfica (desenhar no quadro, 4 min):**

- Eixo x: \(e\). Eixo y: \(w\).
- Curva de indiferença do tipo \(L\) com inclinação \(1/\theta_L\) (positivamente inclinada, mais íngreme).
- Curva de indiferença do tipo \(H\) com inclinação \(1/\theta_H\) (positivamente inclinada, menos íngreme).
- Ponto de cruzamento das curvas: **único**.

> **Eq-punch:** *"Curvas de indiferença dos dois tipos no plano \((e, w)\) se cruzam **no máximo uma vez**. Isso é single-crossing. É a propriedade que permite separação: existe um \((\underline e, w_H)\) que o tipo alto topa pegar mas o tipo baixo não."*

#### B1.c (15 min) — Construção do equilíbrio separador

Quadro:

**Conjectura:** \(e^*_L = 0, e^*_H = \underline e, w(e) = \theta_H \cdot \mathbf 1[e \ge \underline e] + \theta_L \cdot \mathbf 1[e < \underline e]\).

**IC-L (tipo baixo não imita alto):**
\[
U_L \text{ com escolha verdadeira} \ge U_L \text{ com imitação}
\]
\[
\theta_L - \frac{0}{\theta_L} \ge \theta_H - \frac{\underline e}{\theta_L} \quad\Longleftrightarrow\quad \underline e \ge \theta_L (\theta_H - \theta_L).
\]

**IC-H (tipo alto não desvia para baixo):**
\[
\theta_H - \frac{\underline e}{\theta_H} \ge \theta_L - \frac{0}{\theta_H} \quad\Longleftrightarrow\quad \underline e \le \theta_H (\theta_H - \theta_L).
\]

**Conclusão:** \(\underline e \in [\theta_L(\theta_H - \theta_L), \theta_H(\theta_H - \theta_L)]\). **Existe um contínuo de equilíbrios separadores.**

**Exemplo numérico (4 min, no quadro).** \(\theta_L = 2, \theta_H = 5\):
- \(\underline e_{\min} = 2 \cdot 3 = 6\).
- \(\underline e_{\max} = 5 \cdot 3 = 15\).
- Qualquer \(\underline e \in [6, 15]\) sustenta separação.

> **Pausa pedagógica:** "Por que o intervalo é não-vazio? Porque \(\theta_H > \theta_L\). Se fossem iguais, o intervalo degenera e não há separação possível — o que faz sentido: se os tipos são idênticos, não há nada a sinalizar."

#### B1.d (5 min) — Ineficiência social do separador

Quadro com tabela:

| Cenário | Salário \(\theta_L\) | Salário \(\theta_H\) | Educação \(\theta_L\) | Educação \(\theta_H\) | Bem-estar agregado |
|---|---|---|---|---|---|
| First-best (info simétrica) | \(\theta_L\) | \(\theta_H\) | 0 | 0 | máximo |
| Equilíbrio separador (info assimétrica) | \(\theta_L\) | \(\theta_H\) | 0 | \(\underline e/\theta_H\) | inferior |

> **Eq-punch:** *"O equilíbrio separador é estritamente Pareto-pior que o first-best com informação simétrica. Tipo alto perde \(\underline e/\theta_H\) em educação que **não muda sua produtividade**. Tipo baixo está indiferente. O canal de sinalização é **puro desperdício social** — mas é o melhor implementável sob a estrutura de informação."*

#### B1.e (2 min) — Box Brasil + Mundo (rápido)

**Box Brasil 🇧🇷 (1 min):** PNAD documenta prêmio salarial ~3× ensino superior vs. fundamental. Lange-Topel (2006) revisam: 30%–60% atribuível a sinalização (vs. capital humano). **GED nos EUA** (Tyler-Murnane-Willett 2000, *QJE* 115(2): 431–468, [DOI 10.1162/003355300554827](https://doi.org/10.1162/003355300554827)) isola componente de sinalização: ~20–30% do prêmio do high school.

**Box Mundo 🌍 (1 min):** Nobel 2001 para Spence + Akerlof + Stiglitz.

### Saída do Bloco 1

A sala tem que poder responder:

- "O que é single-crossing?" → curvas de indiferença que se cruzam uma vez; \(\partial \text{TMS}/\partial \theta < 0\).
- "Construção do separador?" → \(\underline e\) entre IC-L e IC-H.
- "Ineficiência?" → tipo alto educa-se demais; first-best teria educação zero.

Se 30%+ tropeça, **use os primeiros 5 min do Bloco 2 para revisitar single-crossing e siga**.

### Transição (P1)

> "Pausa de 10 min. Quando voltarem: e os múltiplos equilíbrios? Há contínuo de separadores e até pooling. Cho-Kreps (1987) — refinamento intuitivo."

---

## Pausa 1 — 10 min (20:15–20:25)

Café. Banheiro. Não tente "explicar mais um ponto" — cansa a turma e detona o Bloco 2.

---

## Bloco 2 — Cho-Kreps (1987): refinamento intuitivo (40 min)

**20:25–21:05.**

### Objetivo

Cravar:

1. Multiplicidade de PBE em jogos de sinalização: contínuo de separadores + pooling sob crenças pessimistas.
2. Critério intuitivo de Cho-Kreps: identificar desvios que apenas um tipo poderia querer.
3. Aplicação ao Spence: Cho-Kreps elimina todos os poolings; sobra o **separador menos custoso** (Riley equilibrium).
4. Box: Riley 2001, MBAs executivos.

### Estrutura interna (40 min)

#### B2.a (5 min) — O problema dos múltiplos equilíbrios

Quadro:

> **Pooling em \(e^p\) com \(w(e^p) = \bar w = \pi_L \theta_L + (1-\pi_L)\theta_H\).** Crenças "pessimistas" fora-do-equilíbrio: \(\mu(\theta_L \mid e \neq e^p) = 1\), salário \(w(e) = \theta_L\). Sob essas crenças, **nenhum tipo desvia** (porque o salário fora-do-equilíbrio é o pior possível). **Pooling é PBE.**

> *"O problema: PBE é critério muito permissivo — qualquer crença é admissível em mensagens fora-do-equilíbrio. Refinamentos restringem crenças a "razoáveis"."*

#### B2.b (15 min) — Cho-Kreps: o critério intuitivo

Cite: Cho, I.-K. & Kreps, D. M. (1987). "Signaling Games and Stable Equilibria." *QJE* 102(2), 179–221, [DOI 10.2307/1885060](https://doi.org/10.2307/1885060).

Quadro:

> **Critério intuitivo.** Para um sinal \(e\) **fora-do-equilíbrio**: se existe um tipo \(\theta\) que **nunca** ganharia desviando para \(e\) (independente da resposta \(w\)), crenças razoáveis devem ser \(\mu(\theta \mid e) = 0\). Se restou um tipo único, \(\mu\) deve dar peso 1 a ele.

**Aplicação ao Spence — derivação no quadro (10 min):**

Considere pooling em \(e^p\) com \(\bar w\). Considere desvio para \(e' > e^p\).

- **Tipo baixo desviaria no melhor caso?** Melhor caso: \(w(e') = \theta_H\). Ganho: \(\theta_H - e'/\theta_L - \bar w\). Tipo \(L\) desvia se \(\theta_H - e'/\theta_L > \bar w \Leftrightarrow e' < \theta_L(\theta_H - \bar w)\).
- **Tipo alto desviaria no melhor caso?** Ganho: \(\theta_H - e'/\theta_H - \bar w\). Tipo \(H\) desvia se \(e' < \theta_H(\theta_H - \bar w)\).

Como \(\theta_H > \theta_L\): \(\theta_L(\theta_H - \bar w) < \theta_H(\theta_H - \bar w)\). **Existe \(e' \in (\theta_L(\theta_H - \bar w), \theta_H(\theta_H - \bar w))\) onde tipo alto desviaria mas tipo baixo não.** Para esse \(e'\), Cho-Kreps exige \(\mu(\theta_H \mid e') = 1 \Rightarrow w(e') = \theta_H\). Mas então tipo alto realmente desvia → **pooling cai.**

> **Eq-punch:** *"Cho-Kreps mata todos os poolings no Spence canônico. Sobra apenas o separador menos custoso \(\underline e_{\min} = \theta_L(\theta_H - \theta_L)\). Esse é o Riley equilibrium."*

**Exemplo numérico (3 min).** \(\theta_L = 2, \theta_H = 5, \pi_L = 0{,}5\). \(\bar w = 0{,}5 \cdot 2 + 0{,}5 \cdot 5 = 3{,}5\). Suponha pooling em \(e^p = 0\). Existe \(e'\) onde só tipo alto desviaria? Intervalo: \((\theta_L(\theta_H - \bar w), \theta_H(\theta_H - \bar w)) = (2 \cdot 1{,}5, 5 \cdot 1{,}5) = (3, 7{,}5)\). Tomar \(e' = 5\): tipo \(L\) ganha \(5 - 5/2 - 3{,}5 = -1 < 0\) (não desvia); tipo \(H\) ganha \(5 - 5/5 - 3{,}5 = 0{,}5 > 0\) (desvia). Cho-Kreps: \(\mu(\theta_H \mid 5) = 1\), \(w(5) = 5\), tipo alto desvia. Pooling cai.

#### B2.c (10 min) — Riley (1979) e seleção do separador menos custoso

Cite: Riley, J. G. (2001). "Silver Signals: Twenty-Five Years of Screening and Signaling." *J. Economic Literature* 39(2), 432–478, [DOI 10.1257/jel.39.2.432](https://doi.org/10.1257/jel.39.2.432).

Quadro:

> **Riley equilibrium = separador menos custoso = \(\underline e = \theta_L(\theta_H - \theta_L)\).**

> *"Por que esse é selecionado? Porque qualquer separador com \(\underline e > \underline e_{\min}\) é eliminado por argumento similar: existe \(e' \in (\underline e_{\min}, \underline e)\) onde tipo alto preferiria desviar. Cho-Kreps + iteração leva ao mínimo. Riley (1979 *Econometrica*) provou independentemente que esse separador é "robusto" sob refinamentos sensatos. Cho-Kreps (1987) formalizou."*

**Comparação rápida com refinamentos mais fortes (2 min):** D1 (Banks-Sobel 1987), divinity (Cho-Kreps 1987). No domínio Spence canônico, todos chegam ao mesmo destino. Em modelos mais complexos, divergem. Para MPE, Cho-Kreps cobre o que precisamos.

#### B2.d (8 min) — Box Brasil (MBAs) + Box Mundo (Riley revisitado)

**Box Brasil 🇧🇷 (4 min):** **MBAs executivos** como pooling-com-separating em sub-mercados. Tier-1 (Insper, FIA, FGV) atrai gerente sênior via custo elevado; Tier-2/3 atrai gerente médio via custo intermediário. Estratificação hierárquica = sinalização em sub-mercados.

> *"Hierarquia de MBAs no Brasil — e nos EUA (Top-10 vs. tier-2) — opera como mecanismo de sinalização hierárquica. Spence ao quadrado: separação dentro do mercado de sinais."*

**Box Mundo 🌍 (4 min):** **Tyler-Murnane-Willett (2000, *QJE* 115(2): 431–468, [DOI 10.1162/003355300554827](https://doi.org/10.1162/003355300554827))** sobre o GED americano. GED é diploma alternativo a high school formal nos EUA — mesmo conteúdo, prova em vez de 4 anos de aulas. Comparar ganhos salariais isola componente de sinalização vs. capital humano: ~20–30% atribuível a sinalização pura. **Spence empírico.**

#### B2.e (2 min) — Síntese do Bloco 2

Frase-chave: *"Cho-Kreps elimina pooling; sobra o Riley equilibrium (separador menos custoso). Spence + Cho-Kreps = receita pedagógica padrão para sinalização em MPE."*

### Saída do Bloco 2

A sala tem que poder responder:

- "Cho-Kreps elimina pooling como?" → identifica desvio que só um tipo desviaria; crenças exigem \(\mu = 1\) nesse tipo.
- "Riley equilibrium?" → separador menos custoso; \(\underline e_{\min} = \theta_L(\theta_H - \theta_L)\).
- "GED nos EUA?" → isolamento empírico do componente de sinalização.

### Transição (Bloco 3)

> "Spence-Cho-Kreps mostrou como o agente informado revela tipo via custo. Bloco 3 muda paradigma: matching sem preços. Gale-Shapley 1962."

---

## Bloco 3 — Gale-Shapley (1962): DA + execução 4×4 + propriedades (45 min)

**21:05–21:50.**

### Objetivo

Cravar:

1. Setup de matching: dois lados disjuntos, preferências completas e estritas, sem preços.
2. Estabilidade: definição via par bloqueante.
3. Algoritmo DA: pseudo-código + execução completa num exemplo 4×4.
4. Propriedades: termina, é estável, é \(M\)-ótimo (proponente), é \(W\)-pessimo (receptor), strategy-proof apenas para o lado proponente.
5. Roth (1982) negative result: não há mecanismo estável SP para os dois lados.
6. Box: SISU, NRMP, kidney exchange.

### Estrutura interna (45 min)

#### B3.a (5 min) — Setup + estabilidade

Cite: Gale, D. & Shapley, L. S. (1962). "College Admissions and the Stability of Marriage." *Amer. Math. Monthly* 69(1), 9–15, [DOI 10.2307/2312726](https://doi.org/10.2307/2312726).

Quadro:

> **Setup.** \(M = \{m_1, ..., m_n\}\), \(W = \{w_1, ..., w_k\}\). Cada \(m\) tem \(\succ_m\) sobre \(W \cup \{m\}\). Cada \(w\) tem \(\succ_w\) sobre \(M \cup \{w\}\). **Matching** \(\mu\) bilateral. **Estável:** sem par \((m, w)\) tal que \(w \succ_m \mu(m)\) e \(m \succ_w \mu(w)\).

> *"Mudança de paradigma: aqui não há salários, não há preços. A teoria da decisão é puramente ordinal — preferência sobre o lado oposto."*

#### B3.b (5 min) — Pseudo-código de Deferred Acceptance

Quadro:

```
Iteração 1:
  Cada m ∈ M propõe ao melhor w ∈ W (segundo ≻_m).
  Cada w mantém em pendente o melhor m que recebeu; rejeita o resto.

Iteração t > 1:
  Cada m rejeitado em t−1 propõe ao próximo melhor w (segundo ≻_m).
  Cada w mantém o melhor entre {pendente atual} ∪ {nova proposta}.

Termina quando: ninguém é rejeitado nesta iteração.
Saída: μ_M(m) = pendente final de m.
```

> *"Por que 'deferred'? Porque \(w\) **não confirma** o pendente até a iteração final — pode trocar pendente por proposta nova melhor a qualquer momento. Esse é o ponto-chave da estabilidade."*

#### B3.c (20 min) — Execução completa do exemplo 4×4 no quadro

Quadro com tabela de preferências:

| Agente | Ordem |
|---|---|
| \(m_1\) | \(w_1 \succ w_2 \succ w_3 \succ w_4\) |
| \(m_2\) | \(w_1 \succ w_2 \succ w_3 \succ w_4\) |
| \(m_3\) | \(w_2 \succ w_1 \succ w_3 \succ w_4\) |
| \(m_4\) | \(w_3 \succ w_4 \succ w_1 \succ w_2\) |
| \(w_1\) | \(m_3 \succ m_2 \succ m_1 \succ m_4\) |
| \(w_2\) | \(m_1 \succ m_4 \succ m_3 \succ m_2\) |
| \(w_3\) | \(m_4 \succ m_1 \succ m_2 \succ m_3\) |
| \(w_4\) | \(m_2 \succ m_4 \succ m_3 \succ m_1\) |

Execução iterada (no quadro com cores ou marcadores):

**Iteração 1.** Propostas: \(m_1 \to w_1, m_2 \to w_1, m_3 \to w_2, m_4 \to w_3\). Pendentes:
- \(w_1\): mantém \(m_2\) (prefere a \(m_1\)), rejeita \(m_1\).
- \(w_2\): mantém \(m_3\).
- \(w_3\): mantém \(m_4\).
- \(w_4\): nada.

**Iteração 2.** \(m_1\) propõe a \(w_2\). Pendentes:
- \(w_2\): compara \(m_3\) (atual) com \(m_1\) (novo); prefere \(m_1\). Mantém \(m_1\), rejeita \(m_3\).

**Iteração 3.** \(m_3\) propõe a \(w_1\). Pendentes:
- \(w_1\): compara \(m_2\) (atual) com \(m_3\) (novo); prefere \(m_3\). Mantém \(m_3\), rejeita \(m_2\).

**Iteração 4.** \(m_2\) propõe a \(w_2\). Pendentes:
- \(w_2\): compara \(m_1\) com \(m_2\); prefere \(m_1\). Mantém \(m_1\), rejeita \(m_2\).

**Iteração 5.** \(m_2\) propõe a \(w_3\). Pendentes:
- \(w_3\): compara \(m_4\) com \(m_2\); prefere \(m_4\). Mantém \(m_4\), rejeita \(m_2\).

**Iteração 6.** \(m_2\) propõe a \(w_4\). Pendentes:
- \(w_4\): mantém \(m_2\). Ninguém rejeitado.

**Termina.** \(\mu_M\): \(m_1 \leftrightarrow w_2, m_2 \leftrightarrow w_4, m_3 \leftrightarrow w_1, m_4 \leftrightarrow w_3\).

> **Pausa pedagógica:** "Quem está com qual? Quem perdeu o que queria? Note: \(m_1\) queria \(w_1\), ficou com \(w_2\) (segundo). \(m_2\) queria \(w_1\), ficou com \(w_4\) (último). \(m_3\) queria \(w_2\), ficou com \(w_1\) (segundo). \(m_4\) ficou com seu top (\(w_3\)). O lado proponente captura ganho mas não uniforme."

**Verificação de estabilidade (3 min):**

- Par \((m_1, w_1)\) bloqueia? \(m_1\) prefere \(w_1\) a \(w_2\) (sim). \(w_1\) prefere \(m_3\) a \(m_1\) (não — \(m_3\) é melhor que \(m_1\) em \(\succ_{w_1}\)). **Não bloqueia.**
- Par \((m_2, w_1)\)? \(m_2\) prefere \(w_1\) a \(w_4\) (sim). \(w_1\) prefere \(m_3\) a \(m_2\) (não). **Não bloqueia.**
- Repetir para \((m_2, w_2), (m_2, w_3)\): nenhum bloqueio (verificar no quadro).

**\(\mu_M\) é estável** ✓.

#### B3.d (10 min) — Propriedades + Roth 1982

Quadro:

> **Teoremas (Gale-Shapley + Roth):**
> 1. DA termina em \(\le n \cdot k\) iterações.
> 2. Output é **estável**.
> 3. Output é **\(M\)-ótimo**: cada \(m\) recebe seu melhor parceiro entre todos os matchings estáveis.
> 4. Output é **\(W\)-pessimo**: cada \(w\) recebe seu pior parceiro estável.
> 5. **Strategy-proof apenas para o lado \(M\):** declarar verdade é dominante para \(m \in M\), mas não para \(w \in W\). (Roth 1982).
> 6. **Roth 1982 negative result:** não existe mecanismo estável strategy-proof para ambos os lados.

Cite: Roth, A. E. (1982). "The Economics of Matching: Stability and Incentives." *Math. Operations Research* 7(4), 617–628, [DOI 10.1287/moor.7.4.617](https://doi.org/10.1287/moor.7.4.617).

> **Pedagogia importante (3 min):** *"Por que strategy-proof apenas para o lado proponente? Pense em \(m\): em DA, \(m\) só ganha quando aceita pendente; mover de "verdade" para "mentira" significa propor a alguém pior que sua escolha verdadeira — só pode resultar em ficar com pior parceiro. Logo verdade domina. Para \(w\): \(w\) recebe propostas, e às vezes pode manipular dizendo 'rejeito \(m_X\) imediatamente' (mesmo que \(m_X\) seja aceitável) para forçar \(m_X\) a propor a outra; cadeia subsequente pode trazer um \(m_Y\) melhor para \(w\). Logo verdade não domina."*

> *"Roth (1982) provou que **isso é estrutural**: nenhum mecanismo estável é SP para ambos os lados. É um resultado negativo do tipo Gibbard-Satterthwaite mas restrito a domínio de matching. Implicação prática: ao desenhar mecanismo, escolha qual lado terá a verdade. NRMP escolheu candidatos (médicos residentes); SISU também."*

#### B3.e (5 min) — Box: SISU + NRMP + kidney exchange

**Box Brasil 🇧🇷 (3 min):** **SISU 2010+** com candidatos como lado proponente. ~2M candidatos / 200K vagas / executa em segundos. **Crítica empírica (Aygün & Bó 2020):** SISU não é DA puro — variantes Boston-mechanism aparecem em algumas configurações. Estudos INEP-MEC documentam desistência no 1º semestre quando aluno pegou curso/local distante das preferências reais.

**Box Mundo 🌍 (2 min):**
- **NRMP (US, 1952+).** Roth (1984, *J. Political Economy*) provou que NRMP era estável; **Roth-Peranson (1999, *AER* 89(4): 748–780, [DOI 10.1257/aer.89.4.748](https://doi.org/10.1257/aer.89.4.748))** redesenharam para incorporar casais. ~30K médicos / ~5K hospitais / anual.
- **Kidney exchange (Roth, Sönmez & Ünver 2004, *Quarterly Journal of Economics* 119(2): 457–488, [DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157)).** Chains de troca via top trading cycles. Northwestern altruistic chain 2006: 10 transplantes encadeados.
- **School choice (Abdulkadiroğlu-Pathak-Roth 2005, *AER* 95(2): 364–367, [DOI 10.1257/000282805774670509](https://doi.org/10.1257/000282805774670509)).** Boston substituiu Boston-mechanism por DA com candidatos como proponente em 2005.

### Saída do Bloco 3

A sala tem que poder responder:

- "DA termina?" → sim, em ≤ n·k iterações.
- "É estável?" → sim, sempre.
- "Quem ganha — proponente ou receptor?" → proponente (M-ótimo); receptor é W-pessimo.
- "Strategy-proof?" → apenas para o lado proponente; Roth 1982 negativa nos dois lados.

### Transição (P2)

> "Pausa de 10 min. Quando voltarem, fechamos com aplicações + síntese + roteiro AF."

---

## Pausa 2 — 10 min (21:50–22:00)

---

## Bloco 4 — Aplicações + síntese 9 aulas + roteiro AF (25 min)

**22:00–22:25.**

### Objetivo

1. Aplicações brasileiras adicionais (Mais Médicos como matching médico-localidade).
2. Síntese das 9 aulas como arco coerente.
3. Roteiro Avaliação Final (qua 24/06): tópicos por peso, calibre, dicas operacionais.

### Estrutura interna (25 min)

#### B4.a (5 min) — Aplicações adicionais

**Box Brasil 🇧🇷 — Mais Médicos como matching médico-localidade (3 min).** Programa Mais Médicos (2013–2019, retomado 2023+) aloca médicos a postos de saúde em locais carentes. Estrutura: candidatos rankeiam locais; locais aplicam pontuação de critérios. Mecanismo aproxima DA com restrições adicionais (cota por estado, prioridade para SUS-credenciados). Não é DA puro mas pertence à mesma família institucional de NRMP — diferença é o setor (Mais Médicos: público; NRMP: residência hospitalar de mercado livre).

**Box Mundo 🌍 — Boston/NYC school choice (2 min).** Abdulkadiroğlu-Pathak-Roth (2005, *AER* 95(2): 364–367, [DOI 10.1257/000282805774670509](https://doi.org/10.1257/000282805774670509)). Boston tinha "Boston mechanism" pré-2005: candidato declara preferências, vagas distribuem por 1ª escolha primeiro; quem não pegou 1ª, vai para 2ª; etc. **Não é strategy-proof** — declarar 1ª escolha "concorrida" e perder pode mandar você para a última disponível. Redesign 2005 substituiu por DA. NYC fez similar em 2003.

#### B4.b (10 min) — Síntese das 9 aulas

Quadro com tabela síntese:

| Aula | Tema | Conceito-âncora | Mecanismo introduzido |
|---|---|---|---|
| 1 | Preferências e Utilidade | Axiomas + representação | Convexidade, single-crossing |
| 2 | UMP/EMP/Dualidade | Marshalliana, Hicksiana, função gasto | Lagrangiano, Slutsky-Shephard |
| 3 | Slutsky + Elasticidades | Decomposição substituição/renda | Matriz simétrica negativa-semidef. |
| 4 | EG: Trocas + Produção | Edgeworth, Pareto, núcleo | 1º/2º TBE simples |
| 5 | Arrow-Debreu I | Bens contingentes, mercados completos | 1º TBE estendido |
| 6 | Arrow-Debreu II | Existência, incompletude (Hart 1975) | Equilíbrio Radner |
| 7 | Externalidades + Bens Públicos | Pigou, Coase, Samuelson, VCG | Mecanismos de coordenação |
| 8 | Sel. Adversa + Risco Moral | Akerlof, R-S, Holmström | Restrições IC + IR |
| 9 | Sinalização + Matching | Spence, Gale-Shapley, Roth | Single-crossing + DA |

> **Eq-punch:** *"As 9 aulas formam um arco: começamos com preferências individuais (Aula 1), construímos demanda agregada (Aulas 2–3), introduzimos EG canônico (Aulas 4–5), encontramos suas falhas estruturais (Aulas 6–8), e fechamos com mecanismos descentralizados que respondem a essas falhas (Aulas 7–9)."*

#### B4.c (10 min) — Roteiro Avaliação Final (qua 24/06)

Quadro com tabela detalhada:

| Parte | Peso | Aulas cobertas | Tópicos prováveis | Calibre |
|---|---|---|---|---|
| I | 40% | Aulas 1, 2, 3 | UMP/EMP, dualidade, Slutsky | 🟡 N&S |
| II | 30% | Aulas 4, 5, 6 | Edgeworth, 1º/2º TBE, AD, incompletude | 🟡 a 🔴 |
| III | 20% | Aulas 7, 8 | Externalidades, bens públicos, info assimétrica | 🟡 a 🔴 |
| IV | 10% | Aula 9 | Sinalização ou matching (questão curta) | 🟡 |

**Dicas operacionais (5 min):**

- **Folha A4:** uma folha (frente e verso), preenchida com fórmulas e diagramas próprios. Preparar com calma — é o momento mais útil de estudo. Sugestão de conteúdo: condições UMP/EMP + identidades de Roy/Shephard + matriz Slutsky + 1º/2º TBE + Pigou + Samuelson + Akerlof + IC/IR canônicas + single-crossing + DA pseudo-código.
- **Tempo-alvo por questão:** Parte I, 25–35 min cada questão; Parte II, 25–35 min; Parte III, 15–25 min; Parte IV, 10–15 min.
- **AF favorece a primeira metade do curso (Aulas 1–6) em volume.** Aulas 7–9 entram em peso menor mas com calibre comparável.
- **Erros comuns** (eu vou descontar):
  1. Confundir Marshalliana com Hicksiana em Slutsky.
  2. Esquecer 2º TBE em problemas de equilíbrio Pareto-eficiente com redistribuição.
  3. Em externalidades, avaliar Pigou no privado em vez do ótimo (\(t^* = \text{MEC}(q^*)\), não \(\text{MEC}(q^p)\)).
  4. Em info assimétrica, esquecer **IR** (participação do agente). Sem IR, o principal pode "explorar" o agente.
  5. Em Spence, esquecer que single-crossing é hipótese (não teorema). Sem single-crossing, separação não emerge.
  6. Em DA, confundir \(M\)-ótimo (proponente) com \(W\)-ótimo (receptor — esse não vale).

> *"Pré-monitoria 5 com Alberto, sábado 20/06, é a última oportunidade de revisão integrada. Cobre Aulas 8–9 + síntese geral + simulado AF."*

### Saída do Bloco 4

A sala sai com:
- Visão integrada do curso.
- Roteiro AF com tópicos e pesos.
- Lista de erros comuns para evitar.

### Transição (Bloco 5)

> "Aula 9 fechada. Síntese feita. Antes de encerrar — o curso inteiro num minuto."

---

## Bloco 5 — Encerramento do curso (5 min)

**22:25–22:30.**

### Roteiro

#### B5.a (3 min) — Síntese final

> *"Em uma frase: Microeconomia I é a teoria de **decisão sob restrições** + **agregação dessas decisões em equilíbrios** + **catalogação das falhas** + **mecanismos para responder a essas falhas**. Saiam com isso na cabeça. Quando virem um problema microeconômico no mundo, perguntem: (i) qual é o agente decisor? (ii) qual é a restrição? (iii) qual é o equilíbrio? (iv) há falha? (v) qual mecanismo poderia corrigir?"*

#### B5.b (2 min) — Despedida + AF

> *"Próxima quarta (24/06 · 19:00 · 3h · presencial · A4 permitida): Avaliação Final. 70% da nota — os outros 30% vêm do engajamento na plataforma (e estão computados desde 02/07/2026 às 18h, deadline único). Boa sorte na AF, e se cuidem. **Foi um prazer ter cada um de vocês neste curso.** Pré-monitoria 5 com Alberto sábado 20/06 — última revisão integrada."*

---

## Apêndices operacionais

### A. Material para o quadro

- Slide 1 (Bloco 1): Setup Spence + custo dependente do tipo.
- Slide 2 (Bloco 1): Single-crossing — TMS = \(1/\theta\).
- Slide 3 (Bloco 1): Curvas de indiferença no plano \((e, w)\) — cruzam uma vez.
- Slide 4 (Bloco 1): Construção do separador — IC-L + IC-H.
- Slide 5 (Bloco 1): Exemplo numérico \(\theta_L = 2, \theta_H = 5\).
- Slide 6 (Bloco 1): Ineficiência social do separador.
- Slide 7 (Bloco 2): Pooling sob crenças pessimistas + multiplicidade PBE.
- Slide 8 (Bloco 2): Cho-Kreps — derivação aplicada a Spence.
- Slide 9 (Bloco 2): Riley equilibrium = separador menos custoso.
- Slide 10 (Bloco 2): GED americano (Tyler-Murnane-Willett 2000).
- Slide 11 (Bloco 3): Setup matching + estabilidade.
- Slide 12 (Bloco 3): DA pseudo-código.
- Slide 13 (Bloco 3): Execução 4×4 — iterações 1 a 6.
- Slide 14 (Bloco 3): Verificação de estabilidade.
- Slide 15 (Bloco 3): Propriedades DA + Roth 1982.
- Slide 16 (Bloco 3): SISU + NRMP + kidney exchange.
- Slide 17 (Bloco 4): Síntese das 9 aulas.
- Slide 18 (Bloco 4): Roteiro AF — pesos por parte.
- Slide 19 (Bloco 4): Erros comuns.
- Slide 20 (Bloco 5): Encerramento.

### B. Variáveis de ajuste em tempo real

| Sintoma | Ajuste |
|---|---|
| Sala fluindo, Bloco 1 acaba em 30 min | Bloco 4 ganha 10 min para discussão socrática sobre AF |
| Sala travada em single-crossing | Encolhe Bloco 4 em 5 min; usa para reforçar single-crossing visualmente |
| Pergunta sobre tipos contínuos em sinalização | "Mailath 1987 *Econometrica* 55(6): 1349–1365 ([DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) trata. Para AF: 2 tipos basta." |
| Pergunta sobre matching com transferências | "Shapley-Shubik 1972 (assignment game) e Becker 1973 (marriage). Diferença pedagógica: lá há equilíbrio competitivo de preços; aqui matching é puramente ordinal. AF cobre apenas matching sem transferências." |
| Pergunta sobre prova rigorosa de DA | "Knuth (1976, livro Marriage Stable). MWG não cobre formalmente. Sketch suficiente para AF: termina porque cada \(m\) propõe no máximo \(k\) vezes; é estável porque \(w\) sempre fica com seu melhor entre os recebidos." |
| Pergunta sobre Roth-Peranson 1999 com casais | "Casais em NRMP têm preferências sobre **pares de cidades**. DA original assumia preferências individuais. Roth-Peranson 1999 generalizaram via algoritmo modificado que mantém estabilidade na maioria dos casos práticos. Resultado teórico: estabilidade não garantida em geral, mas empiricamente robusto." |
| Pergunta sobre AF | Resposta direta: "Roteiro está no slide [número]. Calibre similar aos exercícios avaliativos. Folha A4 permitida — uma folha frente e verso. Tempo: 3h. Cobre 9 aulas com pesos 40-30-20-10." |

### C. Telemetria pós-aula (admin dashboard)

Após a aula, conferir em `admin.html`:

- **Confidence ratings post-Bloco 1** (Spence + single-crossing): se P50 < 3 (de 5), single-crossing não cravou — ajustar pré-monitoria 5 com Alberto.
- **Quiz pós-aula 9 — Q3 ou Q4 (Cho-Kreps)**: se acerto 1ª < 50%, refinamento intuitivo precisa de mais tempo na pré-M5.
- **Quiz pós-aula 9 — Q7 ou Q8 (DA)**: se acerto 1ª < 50%, execução de DA é gargalo — revisitar Bloco 3.c.
- **Quiz pós-aula 9 — Q10 (🔴🔴 strategy-proof)**: se acerto 1ª < 30%, Roth 1982 não cravou.
- **Reflexão "nebuloso"**: se >30% mencionam "single-crossing" ou "Cho-Kreps", Bloco 1+2 foram densos demais.

---

## Anti-padrões (Referee 2)

- ❌ **Não derivar a prova rigorosa de existência de PBE.** Citar; sketch suficiente.
- ❌ **Não invocar "intuitive criterion" sem aplicar a um exemplo concreto.** Bloco 2 deve mostrar Cho-Kreps em ação.
- ❌ **Não derivar Knuth Stable Marriage Theorem formalmente.** Sketch + execução é suficiente para MPE.
- ❌ **Não fazer matching com transferências.** Fora do escopo. Citar Shapley-Shubik 1972 como contraponto.
- ❌ **Não invocar mecanismos de matching com restrições complexas (top trading cycles, Boston).** Citar como aplicação no Box; não derivar.
- ❌ **Não derivar Mailath (1987, *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) ou modelos de tipos contínuos.** Para AF: 2 tipos cobrem.
- ❌ **Não citar artigos sem confirmação de DOI.** DOIs validados em 2026-05-08:
  - Spence (1973) [10.2307/1882010](https://doi.org/10.2307/1882010)
  - Cho-Kreps (1987) [10.2307/1885060](https://doi.org/10.2307/1885060)
  - Gale-Shapley (1962) [10.2307/2312726](https://doi.org/10.2307/2312726)
  - Roth (1982) [10.1287/moor.7.4.617](https://doi.org/10.1287/moor.7.4.617)
  - Roth-Peranson (1999) — *AER* 89(4): 748–780, [DOI 10.1257/aer.89.4.748](https://doi.org/10.1257/aer.89.4.748).
  - Roth, A. E., Sönmez, T. & Ünver, M. U. (2004). "Kidney Exchange." *Quarterly Journal of Economics* 119(2): 457–488. [DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157).
  - Riley (2001) [10.1257/jel.39.2.432](https://doi.org/10.1257/jel.39.2.432)
  - Tyler-Murnane-Willett (2000) — *QJE* 115(2): 431–468, [DOI 10.1162/003355300554827](https://doi.org/10.1162/003355300554827).
  - Abdulkadiroğlu-Pathak-Roth (2005) — *AER* 95(2): 364–367, [DOI 10.1257/000282805774670509](https://doi.org/10.1257/000282805774670509).
  - Roth-Sotomayor (1990) é livro: *Two-Sided Matching*, Cambridge UP — sem DOI canônico.
  - Mailath (1987) — *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560).
  - Stiglitz (1975) — *American Economic Review* 65(3): 283–300, [JSTOR 1804834](https://www.jstor.org/stable/1804834). (AER pré-2001 não tem DOI 10.1257; JSTOR é canônico.)
  - Hardin (1968), Lange-Topel (2006), Shapley-Shubik (1972), Becker (1973) — citados como referência cultural; DOIs não são prioritários para esta aula.
- ❌ **Não fechar com "isso resolve coordenação social".** Fechar com **encerramento do curso + AF**.
