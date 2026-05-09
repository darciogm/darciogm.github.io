# Exercícios Avaliativos — Aula 9 (Sinalização + Matching)

> **SSOT em Markdown.** Espelho narrativo de `platform/aula-09-exerc.html`. Mantenha em sincronia 1:1 quando editar qualquer um dos dois.

> **Tema:** Sinalização (Spence 1973, Cho-Kreps 1987, Riley 1979/2001), Matching (Gale-Shapley 1962, Roth 1982, Roth-Sotomayor 1990), Aplicações (NRMP — Roth-Peranson 1999; SISU — Aygün-Bó 2020; kidney exchange — Roth-Sönmez-Ünver 2004; school choice — Abdulkadiroğlu-Pathak-Roth 2005).

> **Calibre:** **Nicholson & Snyder 12e Cap. 18 §18.6 (piso obrigatório)**; ZaE Cap. 19 como leitura principal do aluno; Jehle-Reny 3e §7.2 como teto de conforto; MWG Cap. 13 §C citado cirurgicamente em 🔴.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula correspondente:** Aula 9 — 17/06/2026 (quarta), 19:30–22:30 — última aula de conteúdo
- **Abertura:** assim que o bundle ficar pronto na plataforma (regra de acesso livre)
- **Fechamento:** quarta 02/07/2026 às 18:00 BRT (deadline único de submissão)
- **Liberação do gabarito:** quinta 03/07/2026 às 00:00 BRT
- **Tempo-alvo:** 2h30–3h
- **Composição:** 6 exercícios = **1 🟢 + 3 🟡 + 2 🔴**, totalizando ~28 sub-itens de múltipla escolha + 6 gabaritos 5-passos.

---

## Exercício 1 — 🟢 Spence canônico: cálculo do separador menos custoso

### Enunciado

Modelo de Spence (1973) com 2 tipos: \(\theta_L = 1, \theta_H = 4\). Custo de educação \(c(e, \theta) = e/\theta\). Probabilidade prior \(\pi_L = 0{,}3, \pi_H = 0{,}7\). Mercado competitivo paga salário igual à expectativa condicional do tipo dado o sinal observado: \(w(e) = \mathbb{E}[\theta \mid e]\) sob crenças posteriores que dependem do equilíbrio.

### Sub-itens

**(a)** A taxa marginal de substituição entre educação e salário (TMS, quanto trabalhador exige em \(w\) por unidade de \(e\)) é:

- (i) \(\text{TMS}^L = 1, \text{TMS}^H = 4\) (constantes pelo tipo).
- (ii) **\(\text{TMS}^L = 1, \text{TMS}^H = 1/4\)**: TMS é o salário extra que o trabalhador exige por unidade adicional de educação, definida em módulo \(\text{TMS} = |U_e/U_w| = (1/\theta)/1 = 1/\theta\). Para \(\theta_L = 1\): TMS = 1. Para \(\theta_H = 4\): TMS = 1/4. **Tipo alto exige menos** salário por unidade de educação adicional — single-crossing.  **[correta]**
- (iii) \(\text{TMS}^L = \text{TMS}^H = 1\) (idênticas).
- (iv) Indeterminada sem renda do trabalhador.

**(b)** A condição de single-crossing está presente neste modelo porque:

- (i) Os tipos têm preferências idênticas.
- (ii) **TMS é estritamente decrescente em \(\theta\): \(\partial \text{TMS}/\partial \theta = -1/\theta^2 < 0\). No plano \((e, w)\), curvas de indiferença dos dois tipos se cruzam no máximo uma vez — propriedade central que sustenta separação.** **[correta]**
- (iii) A função utilidade é côncava em \(e\).
- (iv) O custo é convexo em \(e\) para cada tipo.

**(c)** O **menor** \(\underline e\) que sustenta um equilíbrio separador (Riley/Cho-Kreps), via IC-L (tipo baixo não imita alto), é:

- (i) \(\underline e = 0\) (basta o salário ser \(\theta_H\) em \(e \ge 0\)).
- (ii) **\(\underline e = 3\)**: IC-L exige \(\theta_L \ge \theta_H - \underline e/\theta_L \Rightarrow 1 \ge 4 - \underline e/1 \Rightarrow \underline e \ge 3\). O menor é exatamente 3, com tipo baixo indiferente entre se passar por alto e ficar com seu salário verdadeiro. **[correta]**
- (iii) \(\underline e = 4\) (coincide com \(\theta_H\)).
- (iv) \(\underline e = 12\) (coincide com IC-H).

**(d)** O **maior** \(\underline e\) ainda compatível com PBE separador (IC-H: tipo alto não desvia para baixo) é:

- (i) \(\underline e = 3\) (igual ao mínimo, equilíbrio único).
- (ii) **\(\underline e = 12\)**: IC-H exige \(\theta_H - \underline e/\theta_H \ge \theta_L \Rightarrow 4 - \underline e/4 \ge 1 \Rightarrow \underline e \le 12\). O maior é exatamente 12, com tipo alto indiferente entre educar-se e fingir-se de baixo. **[correta]**
- (iii) \(\underline e = 4\) (coincide com \(\theta_H\)).
- (iv) Qualquer \(\underline e > 0\) é PBE separador.

**(e)** Em equilíbrio separador, o salário recebido por cada tipo é:

- (i) Ambos recebem \(\bar w = 0{,}3 \cdot 1 + 0{,}7 \cdot 4 = 3{,}1\) (pooling).
- (ii) **Tipo \(L\) recebe \(\theta_L = 1\) (com \(e^*_L = 0\)); tipo \(H\) recebe \(\theta_H = 4\) (com \(e^*_H = \underline e\)). Em ambos os casos, salário coincide com produtividade — separação perfeita revela tipo via sinal.** **[correta]**
- (iii) Tipo \(L\) recebe \(\theta_H\) e tipo \(H\) recebe \(\theta_L\) (inversão por má interpretação do sinal).
- (iv) Tipo \(L\) e \(H\) recebem ambos \(\theta_L\) (firma sempre desconfiada).

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Spence (1973) constrói equilíbrio separador via duas restrições de incentivo: IC-L (tipo baixo não desvia para alto) e IC-H (tipo alto não desvia para baixo). Single-crossing (TMS decrescente em \(\theta\)) é a propriedade que **garante** que essas duas IC podem ser simultaneamente satisfeitas — o intervalo \([\theta_L(\theta_H - \theta_L), \theta_H(\theta_H - \theta_L)]\) é não-vazio. Cho-Kreps elimina pooling e seleciona o separador menos custoso (Riley equilibrium): \(\underline e^* = \theta_L(\theta_H - \theta_L)\). Em separação, salário coincide com produtividade pontualmente.

**2. Derivação.** \(c(e, \theta) = e/\theta\), \(U = w - e/\theta\). TMS \(= 1/\theta\) (\(\theta_L = 1\): TMS=1; \(\theta_H = 4\): TMS=0,25). Single-crossing: \(\partial \text{TMS}/\partial \theta = -1/\theta^2 < 0\) ✓. **IC-L**: \(\theta_L \ge \theta_H - \underline e/\theta_L \Rightarrow 1 \ge 4 - \underline e \Rightarrow \underline e \ge 3\). **IC-H**: \(\theta_H - \underline e/\theta_H \ge \theta_L \Rightarrow 4 - \underline e/4 \ge 1 \Rightarrow \underline e \le 12\). Intervalo \([3, 12]\). \(\underline e_{\min} = 3\) (Riley/Cho-Kreps).

**3. Armadilha.** Item (a)(i): aluno pensa que TMS é \(\theta\) (não \(1/\theta\)). Item (a)(iii): ignora dependência do tipo. Item (c)(i): "qualquer \(\underline e\) basta" — falso, IC-L exige \(\ge 3\). Item (c)(iv): aluno troca IC-L com IC-H. Item (e)(i): aluno aplica salário pooling em equilíbrio separador.

**4. Extensão.** Generalização para \(I\) tipos contínuos: Mailath (1987, *Econometrica*) — equilíbrio separador é função monótona crescente de \(\theta\); estrutura de IC se torna desigualdade diferencial; cobre o caso de "ranking universitário com tipos contínuos". Riley (2001, *J. Economic Literature*) revisa 25 anos. **Empírico:** GED (Tyler-Murnane-Willett 2000, *QJE* 115(2): 431–468) isola componente de sinalização do prêmio salarial — ~20–30% atribuível a sinalização pura. **No Brasil:** Lange-Topel (2006) revisão; PNAD documenta prêmio ~3× ensino superior vs. fundamental.

**5. Peer-review.** Calibre 🟢. Cálculo direto com 2 tipos. Distratores plausíveis em (a) (constantes vs. dependentes) e (c)/(d) (IC trocadas). Item (b) testa entendimento conceitual de single-crossing. **Sem risco residual.** Aluno que faz tudo deve sair com Spence canônico na ponta da língua para AF.

---

## Exercício 2 — 🟡 Cho-Kreps aplicado: eliminação de pooling

### Enunciado

Modelo de Spence com \(\theta_L = 2, \theta_H = 6\), prior \(\pi_L = 0{,}5, \pi_H = 0{,}5\). Considere candidato a equilíbrio **pooling** com \(e^p = 0\), salário \(w(0) = \bar w = \pi_L \theta_L + \pi_H \theta_H = 4\). Crenças "pessimistas" fora-do-equilíbrio: \(\mu(\theta_L \mid e \neq 0) = 1\), salário \(w(e) = \theta_L = 2\) para \(e \neq 0\).

### Sub-itens

**(a)** Verifique que o pooling \(e^p = 0, w(0) = 4\) é PBE sob essas crenças (nenhum tipo desvia):

- (i) Tipo \(L\) desvia se ganhar; ganho de desviar é \(2 - e/2 - 4\), positivo só se \(e < -4\) — impossível, **não desvia** ✓.
- (ii) Tipo \(H\) desvia se ganhar; ganho de desviar é \(2 - e/6 - 4\), positivo só se \(e < -12\) — impossível, **não desvia** ✓.
- (iii) **Ambas as condições (i) e (ii) valem; pooling é PBE sob crenças pessimistas.** **[correta]**
- (iv) Apenas tipo \(L\) não desvia.

**(b)** No critério de Cho-Kreps, a pergunta é: existe um sinal \(e' > 0\) tal que **só o tipo alto desviaria** para \(e'\) **mesmo no melhor caso** (\(w(e') = \theta_H = 6\))? O intervalo de \(e'\) tal que essa condição vale (tipo \(L\) **não** desvia, tipo \(H\) **desvia**) é:

- (i) \(e' \in (0, 1)\).
- (ii) **\(e' \in (4, 12)\)**: tipo \(L\) não desvia se \(\theta_H - e'/\theta_L \le \bar w \Leftrightarrow 6 - e'/2 \le 4 \Leftrightarrow e' \ge 4\). Tipo \(H\) desvia se \(\theta_H - e'/\theta_H > \bar w \Leftrightarrow 6 - e'/6 > 4 \Leftrightarrow e' < 12\). Intervalo: \(e' \in [4, 12)\). **[correta]**
- (iii) \(e' \in (12, 24)\).
- (iv) Não existe tal \(e'\).

**(c)** Para qualquer \(e' \in [4, 12)\), o critério intuitivo de Cho-Kreps exige crenças razoáveis tais que:

- (i) \(\mu(\theta_L \mid e') = 1\) (mantém crença pessimista).
- (ii) **\(\mu(\theta_H \mid e') = 1\): só o tipo alto poderia querer desviar para \(e'\) (tipo baixo perderia mesmo no melhor caso). Crenças razoáveis devem dar peso 1 ao tipo alto, e a firma deve pagar \(w(e') = \theta_H = 6\) para esse desvio.** **[correta]**
- (iii) \(\mu(\theta_L \mid e') = 0{,}5\) (manter o prior).
- (iv) \(\mu\) é arbitrário em desvios.

**(d)** Sob essas crenças refinadas, o que acontece com o pooling em \(e^p = 0\)?

- (i) Pooling continua sendo PBE — refinamento não muda.
- (ii) **Pooling cai: tipo alto agora ganha \(\theta_H - e'/\theta_H - \bar w = 6 - e'/6 - 4 = 2 - e'/6 > 0\) para \(e' \in [4, 12)\). Por exemplo, em \(e' = 6\): tipo alto ganha \(2 - 1 = 1 > 0\) desviando. Logo tipo alto **prefere desviar**, e pooling não é mais PBE robusto.** **[correta]**
- (iii) Tipo baixo desvia para \(e' = 6\).
- (iv) Tipo alto e baixo coordenam um novo pooling em \(e' = 6\).

**(e)** O equilíbrio que sobra após Cho-Kreps eliminar todos os poolings é o **separador menos custoso** (Riley). Calcule \(\underline e^*_{\min}\) para este modelo:

- (i) \(\underline e^*_{\min} = 0\).
- (ii) **\(\underline e^*_{\min} = \theta_L(\theta_H - \theta_L) = 2 \cdot 4 = 8\)**. **[correta]**
- (iii) \(\underline e^*_{\min} = 12\).
- (iv) \(\underline e^*_{\min} = 24\).

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Cho-Kreps (1987) elimina equilíbrios pooling identificando desvios fora-do-equilíbrio que apenas um tipo poderia querer fazer mesmo no melhor caso. Crenças razoáveis devem atribuir esse desvio ao tipo único, e a resposta da firma muda — o pooling deixa de ser robusto. Aplicação ao Spence canônico: sobra o **separador menos custoso** (Riley equilibrium): \(\underline e^*_{\min} = \theta_L(\theta_H - \theta_L)\).

**2. Derivação.** Pooling em \(e^p = 0, w(0) = \bar w = 4\). Crenças pessimistas \(w(e) = 2\) fora. Tipo \(L\) **não** desvia (perde mesmo no melhor caso \(w = 6\) se \(e \ge 4\)). Tipo \(H\) **não** desvia se \(w(e) = 2\) (perde \(2 - e/6 - 4 < 0\)). **Pooling é PBE.** Cho-Kreps: identificar \(e'\) onde só tipo alto desviaria. Tipo \(L\) não desvia: \(\theta_H - e'/\theta_L \le \bar w \Leftrightarrow e' \ge \theta_L(\theta_H - \bar w) = 2 \cdot 2 = 4\). Tipo \(H\) desvia: \(e' < \theta_H(\theta_H - \bar w) = 6 \cdot 2 = 12\). Intervalo \(e' \in [4, 12)\). Para qualquer \(e'\) nesse intervalo, Cho-Kreps exige \(\mu(\theta_H \mid e') = 1\), \(w(e') = 6\). Tipo \(H\) então ganha \(6 - e'/6 - 4 > 0\) — **desvia**. Pooling cai. Sobra \(\underline e^*_{\min} = \theta_L(\theta_H - \theta_L) = 2 \cdot 4 = 8\).

**3. Armadilha.** Item (a)(i)/(ii): aluno troca o sinal da desigualdade. Item (b)(i): erro algébrico (subestima cota). Item (b)(iii): aluno usa intervalo errado. Item (c)(i): aluno mantém crenças pessimistas — viola Cho-Kreps. Item (d)(iii): aluno confunde tipos. Item (e)(iii)/(iv): aluno usa cota errada do separador.

**4. Extensão.** O critério intuitivo é apenas um dos refinamentos; outros são D1 (Banks-Sobel 1987), divinity, equilíbria estáveis. Em modelos com 2 tipos, todos chegam ao Riley equilibrium. Em modelos mais complexos (3+ tipos, sinalização contínua), divergem. Para AF, Cho-Kreps cobre. **Empírico:** Spence é tão influente que o teste padrão para "se um diploma é sinal vs. capital humano" envolve isolamento via experimento natural — Tyler-Murnane-Willett (2000) sobre GED é canônico.

**5. Peer-review.** Calibre 🟡. Aplicação direta de Cho-Kreps + cálculo de cotas. Item (b) é o mais técnico — exige derivar duas cotas e identificar interseção. Item (d) força aluno a articular **mecanismo de eliminação**. **Tradeoff de tempo:** ~14 min, dentro do alvo. **Risco residual:** moderado — item (b) requer cuidado algébrico em duas direções; aluno com pressa pode trocar sinal.

---

## Exercício 3 — 🟡 Single-crossing: derivação genérica + interpretação gráfica

### Enunciado

Considere um modelo de sinalização genérico com utilidade do agente \(U(e, w; \theta) = w - g(e, \theta)\), onde \(g\) é o custo do sinal \(e\) (não necessariamente \(e/\theta\)). Suponha que \(g\) é continuamente diferenciável, com \(g_e > 0\) (custo crescente em sinal), \(g_w = 0\) (sinal não afeta salário diretamente), e a propriedade de single-crossing:

\[
\frac{\partial}{\partial \theta} \left( \frac{g_e(e, \theta)}{1} \right) < 0 \quad \text{para todo } (e, \theta).
\]

### Sub-itens

**(a)** Single-crossing diz que:

- (i) \(g\) é convexo em \(e\).
- (ii) **\(g_e\) (custo marginal de sinalizar) é estritamente decrescente em \(\theta\): tipo alto tem custo marginal menor que tipo baixo, em todo nível de sinal.** **[correta]**
- (iii) \(g_e\) é estritamente crescente em \(\theta\).
- (iv) \(g\) é separável aditivamente em \(e\) e \(\theta\).

**(b)** No plano \((e, w)\) com curvas de indiferença \(\{(e, w) : U(e, w; \theta) = \bar U\}\), a inclinação da curva de indiferença é:

- (i) \(\partial w/\partial e = -1\) (independente de \(\theta\)).
- (ii) **\(\partial w/\partial e = g_e(e, \theta)\)**: do total diferencial \(dU = -g_e \, de + dw = 0\) ao longo da curva de indiferença, \(dw/de = g_e\). Single-crossing implica que essa inclinação é **estritamente decrescente em \(\theta\)** (alto tipo tem curvas mais "deitadas"). **[correta]**
- (iii) \(\partial w/\partial e = -g_e\) (negativa).
- (iv) \(\partial w/\partial e = \theta\).

**(c)** Por single-crossing, dada uma curva de indiferença do tipo \(L\) e uma do tipo \(H\) que se cruzam num ponto \((e_0, w_0)\), o que acontece com elas em \(e > e_0\)?

- (i) Coincidem em todo \(e > e_0\).
- (ii) Cruzam-se novamente em algum ponto \(e_1 > e_0\).
- (iii) **Curva do tipo \(L\) (mais íngreme, \(g^L_e\) maior) sobe mais rapidamente; curva do tipo \(H\) (menos íngreme, \(g^H_e < g^L_e\)) sobe mais devagar. Em \(e > e_0\), curva de \(L\) está acima da de \(H\); em \(e < e_0\), curva de \(L\) está abaixo da de \(H\). **Apenas um ponto de cruzamento.** **[correta]**
- (iv) Inclinações são iguais.

**(d)** Considerando o modelo de Spence canônico \(g(e, \theta) = e/\theta\), single-crossing emerge porque:

- (i) \(g_e = 1/\theta\) é constante em \(e\).
- (ii) **\(\partial g_e/\partial \theta = -1/\theta^2 < 0\) — custo marginal de sinalização é estritamente decrescente em \(\theta\), então propriedade de single-crossing vale.** **[correta]**
- (iii) \(g\) é separável.
- (iv) A função utilidade é côncava.

**(e)** A propriedade de single-crossing é necessária para construir equilíbrio separador no Spence porque:

- (i) Sem ela, salários são todos iguais.
- (ii) **Sem single-crossing, pode não existir um \(\underline e\) que (a) tipo baixo "não topa pagar" mesmo no melhor caso e (b) tipo alto "topa pagar" — as duas IC podem se contradizer. Single-crossing garante que o intervalo \([\theta_L(\theta_H - \theta_L), \theta_H(\theta_H - \theta_L)]\) (mais geralmente, intervalo entre cota IC-L e cota IC-H) é não-vazio.** **[correta]**
- (iii) Sem ela, cada tipo é o seu melhor parceiro.
- (iv) Single-crossing garante existência mas não unicidade.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** Single-crossing é a hipótese **estrutural** que sustenta separação em sinalização. Geometricamente, garante que curvas de indiferença dos tipos se cruzam **no máximo uma vez** no plano \((e, w)\); algebricamente, garante que custo marginal de sinal é monótono em \(\theta\). Sem single-crossing, equilíbrio separador genérico **não existe** — as IC podem se contradizer. Com single-crossing, sempre existe e é genérico (Riley 2001).

**2. Derivação.** \(U = w - g(e, \theta)\). Curva de indiferença: \(dU = -g_e \, de + dw = 0 \Rightarrow dw/de = g_e\). Inclinação da curva é \(g_e\). Single-crossing: \(\partial g_e/\partial \theta < 0 \Rightarrow\) inclinação decresce em \(\theta\). Para Spence canônico \(g = e/\theta\): \(g_e = 1/\theta\); \(\partial g_e/\partial \theta = -1/\theta^2 < 0\) ✓. Cruzamento único: se \((e_0, w_0)\) é cruzamento, em \(e > e_0\) curva de \(L\) (inclinação maior) está acima; em \(e < e_0\), está abaixo. Não há segundo cruzamento.

**3. Armadilha.** Item (a)(i): aluno confunde single-crossing com convexidade. Item (a)(iii): inverte sinal. Item (b)(i)/(iii)/(iv): erros sobre forma da inclinação. Item (c)(ii): aluno acha que cruzam de novo. Item (e)(i): "salários iguais" não tem relação com single-crossing.

**4. Extensão.** Single-crossing aparece em vários contextos econômicos: contratos com agentes heterogêneos (Mirrlees 1971, *Review of Economic Studies* 38(2): 175–208 sobre IR progressivo ótimo), screening em seguros (R-S 1976 da Aula 8), leilões de valor privado afiliado (Milgrom-Weber 1982). Em todos os casos, é a propriedade que permite mecanismo de revelação não-trivial. Em modelos contínuos (Mailath 1987, *Econometrica* 55(6): 1349–1365), single-crossing equivale a "monotonicidade do escolhido em \(\theta\)" — propriedade essencial para teoremas de implementação.

**5. Peer-review.** Calibre 🟡. Conceitual + interpretação gráfica + conexão com Spence concreto. Item (c) é o mais visual — exige aluno desenhar mentalmente as curvas. Item (e) testa entendimento estrutural. **Tradeoff de tempo:** ~12 min, dentro do alvo. **Risco residual:** baixo — exigência conceitual mais que algébrica.

---

## Exercício 4 — 🟡 Equilíbrio separador vs. first-best: ineficiência social

### Enunciado

Modelo de Spence com \(\theta_L = 1, \theta_H = 3\), prior \(\pi_L = 0{,}4, \pi_H = 0{,}6\). Em equilíbrio separador menos custoso (Riley/Cho-Kreps), \(\underline e^* = \theta_L(\theta_H - \theta_L) = 2\). Considere comparação com first-best (informação simétrica): nesse caso, salário pago a cada tipo coincide com produtividade e ninguém precisa sinalizar (\(e = 0\) para ambos).

### Sub-itens

**(a)** No equilíbrio separador, a utilidade do tipo baixo (\(\theta_L\)) é:

- (i) \(U^L = -1\).
- (ii) **\(U^L = 1\)**: \(e^*_L = 0\), \(w^L = \theta_L = 1\); \(U^L = w^L - 0/\theta_L = 1\). **[correta]**
- (iii) \(U^L = 3\).
- (iv) \(U^L = 0\).

**(b)** No equilíbrio separador, a utilidade do tipo alto (\(\theta_H\)) é:

- (i) \(U^H = 3\).
- (ii) **\(U^H = 3 - 2/3 \approx 2{,}33\)**: \(e^*_H = 2, w^H = \theta_H = 3\); \(U^H = 3 - 2/3 = 7/3 \approx 2{,}33\). **[correta]**
- (iii) \(U^H = 1\).
- (iv) \(U^H = -2/3\).

**(c)** No first-best (informação simétrica), a utilidade de cada tipo é:

- (i) Idêntica para os dois tipos.
- (ii) **Tipo \(L\) tem \(U^{L,FB} = 1\) (mesmo que separador, indiferente); tipo \(H\) tem \(U^{H,FB} = 3\) (não precisa educar-se).** **[correta]**
- (iii) \(U^{L,FB} = -1, U^{H,FB} = 3\).
- (iv) \(U^{L,FB} = 1, U^{H,FB} = 1\).

**(d)** A diferença de bem-estar agregado entre first-best e equilíbrio separador é:

- (i) \(\Delta W = 0\).
- (ii) **\(\Delta W = \pi_H \cdot (2/\theta_H) = 0{,}6 \cdot (2/3) = 0{,}4\)**: tipo alto perde \(2/3\) em equilíbrio separador comparado a first-best; tipo baixo está indiferente. Bem-estar agregado: \(\pi_L \cdot 0 + \pi_H \cdot 2/3 = 0{,}4\). **[correta]**
- (iii) \(\Delta W = 1\).
- (iv) \(\Delta W < 0\) (separador é Pareto-superior).

**(e)** A interpretação econômica desta perda de bem-estar é:

- (i) Tipo alto está sendo "punido injustamente" pela firma.
- (ii) **Educação no separador é puro desperdício social: tipo alto gasta \(\underline e/\theta_H = 2/3\) em educação que **não muda sua produtividade** — único papel é separar. Em first-best com info simétrica, não há necessidade de sinalizar; o canal de sinalização nasce da assimetria de informação.** **[correta]**
- (iii) Educação aumenta produtividade no longo prazo.
- (iv) Mercado é eficiente; não há perda.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** O equilíbrio separador de Spence é **estritamente Pareto-pior** que o first-best com informação simétrica: tipo alto carrega o custo da sinalização (\(\underline e/\theta_H\)) que não muda sua produtividade. Tipo baixo está indiferente. **A perda agregada é \(\pi_H \cdot \underline e/\theta_H\)** — proporcional à massa do tipo alto e inversamente à sua produtividade. Esse é o **custo da assimetria informacional** em mercados de sinal.

**2. Derivação.** Equilíbrio separador: \(e^*_L = 0, w^L = 1 \Rightarrow U^L = 1\); \(e^*_H = 2, w^H = 3 \Rightarrow U^H = 3 - 2/3 = 7/3\). First-best: \(e^{FB}_L = e^{FB}_H = 0\), \(w^{FB}_L = 1, w^{FB}_H = 3\); \(U^{L,FB} = 1, U^{H,FB} = 3\). Diferença individual: \(U^{H,FB} - U^H = 3 - 7/3 = 2/3\). Bem-estar agregado (esperança): \(\pi_L (U^{L,FB} - U^L) + \pi_H (U^{H,FB} - U^H) = 0 + 0{,}6 \cdot 2/3 = 0{,}4\).

**3. Armadilha.** Item (a)(i): aluno usa \(U = w - e\) sem dividir por \(\theta\). Item (b)(i)/(iv): erros algébricos no cálculo. Item (c)(i): aluno acha que first-best tem mesma utilidade para todos. Item (d)(i)/(iv): aluno acha que separador é eficiente. Item (e)(i): aluno usa narrativa moralista; (iii) acrescenta hipótese de capital humano; (iv) ignora ineficiência.

**4. Extensão.** A perda relativa \(\Delta W / \mathbb{E}[\theta]\) cresce com \((\theta_H - \theta_L)/\theta_H\) — quanto maior a heterogeneidade dos tipos, maior o custo da sinalização. Em modelos contínuos (Mailath 1987), a perda agregada é integral sobre tipos ponderada pela densidade — pode ser substancial em distribuições com cauda pesada. **Implicação prática:** políticas que tornam educação mais barata (créditos, bolsas) reduzem o custo de sinalização do tipo alto sem mudar separação — Pareto-improvement parcial. **Mas se reduzem custo para o tipo baixo também** (universalmente), podem **quebrar** separação — pooling reaparece. **Trade-off pedagógico no Brasil:** REUNI 2007 (expansão massiva de vagas em federais) pode ter reduzido componente de sinalização do diploma — conjectura empírica não totalmente testada.

**5. Peer-review.** Calibre 🟡. Cálculo direto + interpretação econômica. Item (e) é o mais formativo — testa se aluno articulou o argumento de Spence (sinalização é desperdício). **Tradeoff de tempo:** ~12 min. **Risco residual:** baixo — todas as contas são lineares.

---

## Exercício 5 — 🔴 Deferred Acceptance: cadeia de rejeições + propriedades

### Enunciado

Considere matching com \(M = \{m_1, m_2, m_3\}\) e \(W = \{w_1, w_2, w_3\}\). Preferências estritas:

| Agente | Ordem |
|---|---|
| \(m_1\) | \(w_1 \succ w_2 \succ w_3\) |
| \(m_2\) | \(w_2 \succ w_1 \succ w_3\) |
| \(m_3\) | \(w_1 \succ w_3 \succ w_2\) |
| \(w_1\) | \(m_3 \succ m_1 \succ m_2\) |
| \(w_2\) | \(m_1 \succ m_2 \succ m_3\) |
| \(w_3\) | \(m_2 \succ m_3 \succ m_1\) |

Note que **\(m_1\) e \(m_3\) disputam \(w_1\)** (mesmo top), e **\(w_2\) prefere \(m_1\) a seu proponente natural \(m_2\)**. Esse desalinhamento alimenta a cadeia.

### Sub-itens

**(a)** Execute Deferred Acceptance (DA) com \(M\) como lado proponente. Após **iteração 1**, o estado dos pendentes (mulher → homem mantido) e o(s) rejeitado(s) é:

- (i) \(w_1: m_1\); \(w_2: m_2\); \(w_3: m_3\). Cada \(m_i\) propõe à \(w_i\) de mesmo índice; ninguém rejeitado.
- (ii) **\(w_1: m_3\); \(w_2: m_2\); \(w_3: \emptyset\). Rejeitado: \(m_1\) (porque \(w_1\) prefere \(m_3 \succ m_1\)).** **[correta]**
- (iii) \(w_1: m_1\); \(w_2: m_3\); \(w_3: m_2\). Rejeitado: nenhum.
- (iv) Algoritmo termina em iteração 1 com \(\mu_M = \{(m_1,w_1),(m_2,w_2),(m_3,w_1)\}\).

**(b)** Após **iteração 2** (\(m_1\) propõe à próxima da sua lista, \(w_2\)):

- (i) \(w_2\) aceita \(m_1\) sem desalojar ninguém; estado: \(w_1: m_3, w_2: m_1\) e \(m_2\) também segue em \(w_2\) (matching com mais de uma proposta por \(w\)).
- (ii) \(w_2\) rejeita \(m_1\) imediatamente porque \(w_2\) já tinha \(m_2\) no slot.
- (iii) **\(w_2\) recebe \(\{m_2, m_1\}\) e prefere \(m_1 \succ m_2 \succ m_3\): mantém \(m_1\) e rejeita \(m_2\). Estado: \(w_1: m_3, w_2: m_1, w_3: \emptyset\). Rejeitado nesta iter: \(m_2\).** **[correta]**
- (iv) \(w_2\) rejeita \(m_1\) porque \(m_1\) não está em sua lista de aceitáveis.

**(c)** Após **iteração 3** (\(m_2\), recém-rejeitado de \(w_2\), propõe à próxima da sua lista, \(w_1\)):

- (i) \(w_1\) prefere \(m_2\) ao atual \(m_3\) (porque \(m_2\) chegou depois e DA respeita ordem temporal); novo estado: \(w_1: m_2\), e \(m_3\) é rejeitado.
- (ii) Algoritmo já terminou em (b); iteração 3 não ocorre.
- (iii) **\(w_1\) recebe \(\{m_3, m_2\}\) e prefere \(m_3 \succ m_1 \succ m_2\): mantém \(m_3\) e rejeita \(m_2\) (de novo!). Estado inalterado: \(w_1: m_3, w_2: m_1, w_3: \emptyset\). \(m_2\) precisa propor a sua próxima opção, \(w_3\).** **[correta]**
- (iv) \(w_1\) recebe \(m_2\) e o aceita porque \(m_3\) não está mais disponível.

**(d)** O matching final \(\mu_M\) e a quantidade total de rejeições ao longo do DA são:

- (i) \(\mu_M = \{(m_1, w_1), (m_2, w_2), (m_3, w_3)\}\); 0 rejeições; algoritmo termina em iteração 1.
- (ii) \(\mu_M = \{(m_1, w_2), (m_2, w_1), (m_3, w_3)\}\); 2 rejeições; iteração 2.
- (iii) **\(\mu_M = \{(m_1, w_2), (m_2, w_3), (m_3, w_1)\}\); 3 rejeições (\(m_1\) por \(w_1\); \(m_2\) por \(w_2\); \(m_2\) por \(w_1\)); algoritmo termina em iteração 4 quando \(m_2\) propõe a \(w_3\) e é aceito.** **[correta]**
- (iv) \(\mu_M = \{(m_1, w_3), (m_2, w_2), (m_3, w_1)\}\); 4 rejeições; iteração 5.

**(e)** Considere o par \((m_2, w_2)\) em \(\mu_M\): \(m_2\) prefere \(w_2 \succ w_3\) (sua atual). Esse par bloqueia \(\mu_M\)? E o que se conclui sobre **unicidade** do matching estável neste exemplo (note que executar DA com \(W\) proponente entrega \(\mu_W = \{(m_1, w_2), (m_2, w_3), (m_3, w_1)\}\) — mesmo resultado)?

- (i) \((m_2, w_2)\) bloqueia porque \(m_2\) prefere \(w_2\); o matching DA não é estável neste caso.
- (ii) **\((m_2, w_2)\) **não** bloqueia: bloqueio exige preferência **mútua** e \(w_2\) prefere seu atual \(m_1\) a \(m_2\) (\(m_1 \succ m_2\) na lista de \(w_2\)). Como \(\mu_M = \mu_W\) (DA-M e DA-W convergem ao mesmo matching), o conjunto de matchings estáveis é singleton — o emparelhamento é simultaneamente \(M\)-ótimo e \(W\)-ótimo, e portanto Pareto-eficiente entre matchings estáveis. A equivalência \(\mu_M = \mu_W\) é o **teste operacional para unicidade** (Knuth 1976; Roth-Sotomayor 1990, Lema 2.21).** **[correta]**
- (iii) \((m_2, w_2)\) bloqueia parcialmente: \(m_2\) tem incentivo unilateral, e isso basta para violar estabilidade fraca.
- (iv) Como há rejeições em cadeia, o conjunto de matchings estáveis tem necessariamente cardinalidade ≥ 2 — \(\mu_M \neq \mu_W\) em geral, e neste exemplo idem.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** O algoritmo Deferred Acceptance (Gale-Shapley 1962) sempre termina em \(\le n^2 - 2n + 2\) iterações (Gusfield-Irving 1989, Thm 1.2.2) e gera um matching estável. **Propriedades centrais:** \(M\)-ótimo (proponente recebe seu melhor parceiro **entre todos os matchings estáveis**), \(W\)-pessimo (receptor recebe seu pior estável), strategy-proof apenas para o proponente (Roth 1982, *Math. of OR* 7(4): 617–628). **Estabilidade exige par bloqueante mútuo:** \((m,w)\) bloqueia \(\mu\) sse \(w \succ_m \mu(m)\) **e** \(m \succ_w \mu(w)\). Falta de mutualidade é o erro mais comum. **Teste operacional para unicidade do matching estável:** \(\mu_M = \mu_W\) (Knuth 1976; Roth-Sotomayor 1990).

**2. Derivação.** *Iteração 1.* \(m_1 \to w_1\), \(m_2 \to w_2\), \(m_3 \to w_1\). Colisão em \(w_1\): \(\{m_1, m_3\}\); como \(m_3 \succ_{w_1} m_1\), \(w_1\) mantém \(m_3\) e rejeita \(m_1\). Estado: \(w_1{:}m_3, w_2{:}m_2, w_3{:}\emptyset\). *Iteração 2.* \(m_1\) propõe à próxima, \(w_2\). \(w_2\) compara \(\{m_2, m_1\}\); como \(m_1 \succ_{w_2} m_2\), mantém \(m_1\) e rejeita \(m_2\). Estado: \(w_1{:}m_3, w_2{:}m_1, w_3{:}\emptyset\). *Iteração 3.* \(m_2\) propõe à sua próxima, \(w_1\). \(w_1\) compara \(\{m_3, m_2\}\); como \(m_3 \succ_{w_1} m_2\), mantém \(m_3\) e **rejeita \(m_2\) de novo**. Estado inalterado. *Iteração 4.* \(m_2\) propõe à sua última, \(w_3\). \(w_3\) está vazia: aceita. **Termina:** \(\mu_M = \{(m_1, w_2), (m_2, w_3), (m_3, w_1)\}\). Total: 4 iterações, 3 rejeições, todas concentradas no "deslocamento em cadeia" disparado pelo conflito \(m_1\)–\(m_3\) por \(w_1\). *DA com \(W\) proponente.* Tops das mulheres: \(w_1{\to}m_3, w_2{\to}m_1, w_3{\to}m_2\) — três \(m\) distintos, sem colisões; termina em 1 iteração. \(\mu_W = \{(m_1, w_2), (m_2, w_3), (m_3, w_1)\} = \mu_M\). *Verificação de estabilidade do candidato a bloqueio em (e).* Par \((m_2, w_2)\): \(m_2\) prefere \(w_2 \succ w_3\) ✓; mas \(w_2\) prefere atual \(m_1 \succ m_2\) ✗. **Bilateralidade falha → não bloqueia.** Análogo para todo outro par candidato. **Conclusão:** matching estável é único, simultaneamente \(M\)-ótimo e \(W\)-ótimo.

**3. Armadilha.** **(a)(i)** assume "matching diagonal por índice" — atalho mental sem rastrear top de cada \(m\). **(a)(iii)** confunde direção da rejeição (rejeita-se quem é menos preferido **dado quem chegou**, não há "primeiro a chegar fica"). **(b)(i)** sugere que DA permite múltiplas pendentes simultaneamente — viola a regra "uma proposta pendente por \(w\)". **(c)(i)** introduz "ordem temporal" inexistente no DA (DA é independente da ordem em que rejeitados re-propõem; só importa a fila de propostas de cada \(m\)). **(d)(iv)** confunde número de iterações com número de rejeições. **(e)(i)/(iii)** é o erro central da aula: testar bloqueio só do lado de \(m\) (preferência **unilateral**) e esquecer que estabilidade exige bilateralidade. **(e)(iv)** confunde "cadeia rica de rejeições no DA-M" com "múltiplos matchings estáveis" — são fenômenos distintos: cadeia rica significa que o caminho até o equilíbrio é longo, não que existam múltiplos equilíbrios.

**4. Extensão.** **Por que o teste \(\mu_M = \mu_W\) funciona?** Roth-Sotomayor (1990, Two-Sided Matching, Thm 2.16, "Lattice Theorem"): o conjunto de matchings estáveis forma um reticulado (lattice) sob a ordem \(\succeq_M\) (preferência conjunta dos homens). \(\mu_M\) é o supremo, \(\mu_W\) o ínfimo. Se sup = inf, o reticulado é trivial (singleton). **Ramificações para mecanismos reais:**
- **NRMP (US 1952+):** DA com candidatos como proponente — ~30K residentes / ~5K hospitais. **Roth-Peranson (1999, *AER* 89(4): 748–780, [DOI 10.1257/aer.89.4.748](https://doi.org/10.1257/aer.89.4.748))** redesenharam o algoritmo para incluir casais (residentes que querem alocação geográfica conjunta). DA com casais **não é garantidamente estável** (Roth 1984, *J. Pol. Econ.* 92(6)), mas é robustamente estável empiricamente em mercados grandes (Kojima-Pathak-Roth 2013, *QJE* 128(4)).
- **SISU (Brasil 2010+):** ~2M candidatos / ~200K vagas. Mecanismo formalmente DA com cotas agregadas (Aygün-Bó 2020, *AEJ Micro*). **Conexão direta:** a "lista de espera" do SISU é exatamente a fila de rejeições do DA — quando uma vaga é liberada, o algoritmo segue propondo conforme a lista de preferência declarada.
- **Kidney exchange (Roth, Sönmez & Ünver 2004, *QJE* 119(2): 457–488, [DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157)):** TTC + DA híbrido. Brasil: SNT (Sistema Nacional de Transplantes) opera lista de espera, mas troca-cruzada de rim só foi formalmente regulamentada pela Portaria 2600/2009 do Ministério da Saúde — implementação ainda incipiente comparada ao caso americano (Northwestern altruistic chain 2006: 10 transplantes encadeados).
- **Boston/NYC school choice (Abdulkadiroğlu-Pathak-Roth 2005, *AER* 95(2): 364–367):** Boston substituiu Boston-mechanism por DA em 2005 após demonstração de manipulabilidade. **Brasil:** matrículas em escolas públicas municipais (ex.: Sorocaba 2018) experimentaram com mecanismos tipo DA, mas a maioria dos sistemas brasileiros ainda usa "primeiro chegado, primeiro servido" — território aberto para reforma.

**5. Peer-review.** Calibre 🔴 **genuíno**. Aluno **deve** rastrear 4 iterações com 3 rejeições, incluindo o caso instrutivo de \(m_2\) rejeitado **duas vezes consecutivas** (\(w_2\) na iter 2, depois \(w_1\) na iter 3) — testa se aluno consegue manter estado de fila de propostas de cada \(m\). Item (e) substitui versão anterior vaga ("preferências coerentes") por critério **operacional** (\(\mu_M = \mu_W\) ⟺ singleton, com referência ao Lattice Theorem) e enfrenta diretamente o erro de bilateralidade no bloqueio. **Tradeoff de tempo:** ~16 min para aluno bem preparado; aluno que erra a iter 1 ou esquece bilateralidade pode levar até 22 min. **Risco residual reconhecido:** o exemplo entrega \(\mu_M = \mu_W\) (matching único), portanto **não testa diretamente** o caso \(\mu_M \neq \mu_W\) com múltiplos estáveis — esse caso aparece **explicitamente** na pré-aula com o exemplo cíclico de Roth-Sotomayor (3×3 simétrico) e na monitoria como extensão. A escolha aqui é deliberada: cadeia rica + verificação de bilateralidade + critério operacional de unicidade já preenchem 16 min de calibre 🔴 sem inflar o exercício. Se preferir um único exemplo cobrindo cadeia + multiplicidade, seria 4×4 com \(\ge 6\) iterações — fora do orçamento de tempo.

---

## Exercício 6 — 🔴 Strategy-proofness: assimetria proponente-receptor + Roth 1982

### Enunciado

Considere matching com \(M = \{m_1, m_2\}\) e \(W = \{w_1, w_2\}\). Preferências verdadeiras:

| Agente | Ordem |
|---|---|
| \(m_1\) | \(w_2 \succ w_1\) |
| \(m_2\) | \(w_1 \succ w_2\) |
| \(w_1\) | \(m_1 \succ m_2\) |
| \(w_2\) | \(m_2 \succ m_1\) |

### Sub-itens

**(a)** Execute DA com \(M\) proponente. \(\mu_M\) é:

- (i) \((m_1, w_1), (m_2, w_2)\): cada um vai para seu top.
- (ii) **\((m_1, w_2), (m_2, w_1)\)**: \(m_1\) propõe a \(w_2\); \(m_2\) propõe a \(w_1\). Sem colisões. Algoritmo termina. **[correta]**
- (iii) Não há matching estável.
- (iv) DA não termina.

**(b)** Liste **todos os matchings estáveis** neste problema. Sob preferências verdadeiras:

- (i) Apenas \(\mu_M = ((m_1, w_2), (m_2, w_1))\).
- (ii) **\(\mu_M = ((m_1, w_2), (m_2, w_1))\) e \(\mu_W = ((m_1, w_1), (m_2, w_2))\) — dois matchings estáveis. \(\mu_M\) é \(M\)-ótimo e \(W\)-pessimo; \(\mu_W\) é \(W\)-ótimo e \(M\)-pessimo. Para verificar estabilidade de \(\mu_W\): \(m_1\) prefere \(w_2\) a \(w_1\), mas \(w_2\) prefere \(m_2\) a \(m_1\) — não bloqueia. \(m_2\) prefere \(w_1\) a \(w_2\), mas \(w_1\) prefere \(m_1\) a \(m_2\) — não bloqueia. Estável.** **[correta]**
- (iii) Apenas \(\mu_W\).
- (iv) Três matchings estáveis distintos.

**(c)** Considere agora \(w_1\) **manipulando**: \(w_1\) declara preferência **truncada** \(\succ_{w_1}^{\text{decl}}: m_1\) (i.e., declara que \(m_2\) é "inaceitável" — pior que ficar solteira). Execute DA com \(M\) proponente sob essa declaração. \(\mu^{\text{manip}}\) é:

- (i) \((m_1, w_2), (m_2, w_1)\): mesmo \(\mu_M\) original.
- (ii) **\((m_1, w_1), (m_2, w_2)\)**: \(m_2\) propõe a \(w_1\); \(w_1\) declara \(m_2\) inaceitável → rejeita. \(m_2\) propõe ao próximo: \(w_2\). \(w_2\) recebe \(m_1\) (que ainda está com \(w_1\) pendente — não, \(m_1\) propôs a \(w_2\) na 1ª iteração). Releitura: iteração 1: \(m_1 \to w_2, m_2 \to w_1\). \(w_1\) rejeita \(m_2\) (declarado inaceitável). \(m_2\) propõe a \(w_2\) na iteração 2. \(w_2\) compara \(m_1\) (atual) com \(m_2\) (novo); \(\succ_{w_2}\) = \(m_2 \succ m_1\), prefere \(m_2\). Mantém \(m_2\), rejeita \(m_1\). \(m_1\) propõe a \(w_1\) na iteração 3. \(w_1\) está vazia (não tem ninguém pendente após rejeitar \(m_2\)); aceita \(m_1\). Termina. \(\mu^{\text{manip}} = ((m_1, w_1), (m_2, w_2))\). **[correta]**
- (iii) Algoritmo não termina.
- (iv) Matching trivial — todos solteiros.

**(d)** Compare \(\mu^{\text{manip}}\) com \(\mu_M\) (verdade) para \(w_1\):

- (i) \(w_1\) sai pior em \(\mu^{\text{manip}}\) que em \(\mu_M\).
- (ii) **\(w_1\) sai melhor em \(\mu^{\text{manip}}\): no original (\(\mu_M\)), \(w_1\) ficou com \(m_2\) (seu pior aceitável); no manipulado, \(w_1\) ficou com \(m_1\) (seu top).** Strategy-proofness **falha** para o lado receptor — \(w_1\) ganhou manipulando. **[correta]**
- (iii) \(w_1\) é indiferente.
- (iv) \(w_1\) sai com matching infeasivel.

**(e)** Esta manipulação ilustra:

- (i) DA não é estável.
- (ii) **Roth (1982): não existe mecanismo estável que seja strategy-proof para ambos os lados. DA é SP apenas para o lado proponente; receptores podem manipular omitindo alternativas. Essa é uma propriedade **estrutural** do matching estável — não restrição do DA específico.** **[correta]**
- (iii) Manipulação sempre é Pareto-superior.
- (iv) Mecanismos de matching não funcionam.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Roth (1982) provou um teorema negativo: **nenhum mecanismo de matching estável é simultaneamente strategy-proof para ambos os lados**. DA com \(M\) proponente é SP apenas para \(M\); \(W\) (receptor) pode manipular declarando preferências truncadas — omitir alguns \(m\) como "inaceitáveis" — para forçar cadeia de rejeições que termina com \(w\) emparelhada a um \(m\) **melhor** que o que receberia sob preferências verdadeiras. Implicação: ao desenhar mecanismo, escolha qual lado ganha a verdade (NRMP escolhe candidato; SISU também).

**2. Derivação.** **Verdade:** DA com \(M\) proponente: \(m_1 \to w_2, m_2 \to w_1\). Termina. \(\mu_M = ((m_1, w_2), (m_2, w_1))\). \(w_1\) recebe \(m_2\) (pior que \(m_1\) em \(\succ_{w_1}\)); \(w_2\) recebe \(m_1\) (pior que \(m_2\) em \(\succ_{w_2}\)). **Manipulação por \(w_1\):** declara \(\succ_{w_1}^{\text{decl}}: m_1\) (omite \(m_2\)). Iteração 1: \(m_1 \to w_2, m_2 \to w_1\). \(w_1\) rejeita \(m_2\). Iteração 2: \(m_2 \to w_2\). \(w_2\) compara \(m_1\) (atual) com \(m_2\) (novo); prefere \(m_2\) → mantém \(m_2\), rejeita \(m_1\). Iteração 3: \(m_1 \to w_1\). \(w_1\) aceita \(m_1\) (único aceitável declarado). Termina. \(\mu^{\text{manip}} = ((m_1, w_1), (m_2, w_2))\). **Comparação:** \(w_1\) sob verdade: \(m_2\); sob manipulação: \(m_1\). \(w_1\) prefere \(m_1\). **\(w_1\) ganhou manipulando.** Note também: \(m_1\), \(m_2\) ficaram com \(w_1\) e \(w_2\) (não seus tops) — mas eles não escolheram a manipulação; foi \(w_1\) que mudou.

**3. Armadilha.** Item (a)(i): aluno aplica regra "todos no top". Item (b)(i)/(iii): aluno acha que matching estável é único. Item (c)(i): aluno acha que truncamento não muda nada. Item (d)(i): aluno troca direção da comparação. Item (e)(i)/(iii)/(iv): aluno aplica regra geral sem reconhecer Roth 1982.

**4. Extensão.** Esta manipulação tem nome técnico: **truncation strategy** (omitir alternativas como "inaceitáveis"). Roth (1982) e Roth-Sotomayor (1990, *Two-Sided Matching*) catalogam outras: **manipulação por reordenação** (mudar ordem entre alternativas aceitáveis) é menos eficaz mas existe em alguns casos. **Implicações práticas:**
- **NRMP** assume preferências verdadeiras dos candidatos (lado proponente, SP); hospitais (lado receptor) podem manipular mas o efeito empírico é pequeno (Roth-Peranson 1999).
- **SISU** assume candidatos como lado proponente; manipulação pelo "lado das vagas" não existe institucionalmente (vagas têm critério objetivo de nota ENEM).
- **Boston/NYC school choice:** antigo "Boston mechanism" não era SP nem para candidatos; redesign 2005 adotou DA. Empiricamente reduziu manipulação.
- **Mecanismos top trading cycles** (Shapley-Scarf 1974, kidney exchange) têm propriedades distintas — são SP em domínios específicos (preferências sobre objetos não-renováveis). Roth-Sönmez-Ünver (2004) usa em kidney exchange.

**5. Peer-review.** Calibre 🔴. Execução de DA + manipulação por truncation + interpretação Roth 1982. Item (c) é o mais técnico — exige executar DA com restrição de preferência declarada. **Tradeoff de tempo:** ~18 min, no topo do alvo. **Risco residual:** moderado — aluno com pressa pode pular a iteração 2 do manipulado e perder o ponto da cadeia de rejeições. **Decisão pedagógica explícita:** exemplo 2×2 escolhido para isolar o ponto de Roth 1982 com mínimo de execução algorítmica; em sala-de-aula, o exemplo 4×4 da pré-aula é mais rico para mostrar DA puro, mas para ilustrar manipulação 2×2 cabe melhor.

---

## Apêndice — Notação canônica desta lista

| Símbolo | Significado |
|---|---|
| \(\theta\) | tipo do agente (produtividade ou outro atributo privado) |
| \(\theta_L, \theta_H\) | tipo baixo, tipo alto, com \(\theta_L < \theta_H\) |
| \(e\) | nível de educação (sinal escolhido pelo agente) |
| \(c(e, \theta)\) | custo de educação (depende do tipo) |
| \(g(e, \theta)\) | função custo genérica (Exercício 3) |
| \(w(e)\) | salário oferecido como função do sinal observado |
| \(\underline e\) | nível mínimo de educação que separa os tipos |
| \(\mu(\theta \mid e)\) | crença posterior da firma sobre o tipo dado o sinal |
| \(\bar w\) | salário pooling = \(\pi_L \theta_L + (1-\pi_L) \theta_H\) |
| \(M, W\) | dois conjuntos disjuntos de agentes a casar |
| \(\succ_m, \succ_w\) | preferência estrita de cada agente sobre o lado oposto |
| \(\mu\) | matching (função de emparelhamento) |
| \(\mu_M\) | matching produzido por DA com \(M\) proponente |
| \(\mu_W\) | matching produzido por DA com \(W\) proponente |
| (PBE) | Equilíbrio Bayesiano-Perfeito |
| (DA) | Deferred Acceptance algorithm (Gale-Shapley 1962) |
| (SP) | Strategy-proof |
