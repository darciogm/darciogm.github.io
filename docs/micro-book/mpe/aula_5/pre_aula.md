# Pré-Aula 5 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 5. É o "esqueleto narrativo" do `platform/aula-05.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Equilíbrio Geral em Mercados Completos — Arrow-Debreu I** (estados da natureza, bens contingentes, espaço $\mathbb{R}^{LS}$, equilíbrio AD walrasiano, 1º TBE estendido, aplicação canônica do seguro completo).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 20/05/2026 (quarta-feira), 19:30–22:30
- **Pré-aula abre:** quinta 14/05 madrugada
- **Pré-aula fecha:** quarta 27/05 às 18:00 BRT (canônico, 1h30 antes da Aula 6)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–4 consolidadas. Em particular, da Aula 4: economia de troca + produção, alocação viável, equilíbrio competitivo (Walras), 1º e 2º Teoremas do Bem-Estar com firmas.

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. Definir **estado da natureza** $s \in S$ ($S$ finito) e **probabilidades subjetivas** $\pi^i_s$ (cada agente tem as suas; o modelo aceita heterogeneidade).
2. Definir **bem contingente** $(\ell, s)$ — uma maçã *se* chover amanhã — e o **espaço de bens estendido** $\mathbb{R}^{LS}$.
3. Reconhecer **tempo como caso particular de estado** — datado e/ou contingente, $s = (t, \omega)$.
4. Estender preferências: $\succeq^i$ sobre $\mathbb{R}^{LS}_+$. Reconhecer **utilidade esperada (EU)** $u^i(x^i) = \sum_s \pi^i_s v^i(x^i_s)$ como caso particular pedagógico — *não* como pré-requisito.
5. Definir **mercado completo** ($p_{\ell,s}$ existe para cada $(\ell, s)$) e **equilíbrio Arrow-Debreu**: $(p^*, x^*)$ tal que cada $x^{i*}$ resolve UMP em $\mathbb{R}^{LS}$ e $\sum_i x^{i*} = \sum_i \omega^i$ (ponto-a-ponto, estado-a-estado).
6. Aplicar o **1º TBE estendido**: a prova da Aula 4 (LNS + viabilidade) sobrevive sem mudar uma vírgula ao trocar $\mathbb{R}^L$ por $\mathbb{R}^{LS}$.
7. Resolver o **caso canônico do seguro completo**: 2 estados, 1 bem, 1 agente avesso ao risco. Mostrar que o equilíbrio competitivo iguala $p_s/p_{s'}$ a uma função das probabilidades e marginais — e que sem fricção o seguro é atuarialmente justo.

**Não-objetivos** (para Aula 6 e seguintes):

- **Existência** de equilíbrio AD via Brouwer/Kakutani — Aula 6.
- **Equilíbrio sequencial de Radner** (mercado spot estado-a-estado + ativos com transações entre estados) — Aula 6. Hoje é AD canônico: um mercado, todos os preços contingentes negociados ex-ante.
- **Mercados incompletos** (formal): apenas teaser; tratamento na Aula 6+.
- **Externalidades, bens públicos, info assimétrica** — Aulas 7–9.
- **VNM como teoria** (representação por utilidade esperada, axiomas, paradoxo de Allais): citado, não ensinado. EU entra como caso particular do EG; o ferramental funciona com $\succeq^i$ genérico.

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura J-R 3e — §5.5 (Markets with Uncertainty) — **piso obrigatório** | Leitura dirigida (PDF) | 25 min |
| 2 | Leitura N&S 12e — §7.5 (state-preference) + §13.6 (EG com incerteza) — **complemento panorâmico** | Leitura dirigida (PDF) | 20 min |
| 3 | Conceitual 1 — Estados, bens contingentes, espaço $\mathbb{R}^{LS}$ | Texto + 2 micro-checkpoints | 12 min |
| 4 | Conceitual 2 — Equilíbrio AD em mercados completos | Texto + 2 micro-checkpoints | 14 min |
| 5 | Conceitual 3 — 1º TBE estendido + seguro completo | Texto + 3 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (equivalentes a J-R §5.5 / N&S §7.5; enunciados auto-contidos) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~120 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel e caneta. **Bens contingentes** se aprendem listando — escreva ao menos uma vez o vetor $(x_{1,\text{chuva}}, x_{1,\text{sol}}, x_{2,\text{chuva}}, x_{2,\text{sol}})$ com unidades.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Estado → bem contingente → mercado completo → 1º TBE é cadeia lógica.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

> **Aviso de calibre.** Esta aula tem o sabor de "tudo de novo, mas em $\mathbb{R}^{LS}$". A surpresa pedagógica é que o ferramental Walras + 1º TBE da Aula 4 sobrevive **sem alteração de prova** — só muda o espaço onde a álgebra acontece. Aproveite o reuso.

---

## Seção 1 — Jehle-Reny 3e — §5.5 (Markets with Uncertainty)

Leitura dirigida do **Jehle & Reny — *Advanced Microeconomic Theory*, 3rd ed.** Esta é a **leitura formal principal** desta aula: J-R §5.5 cobre exatamente o que vamos fazer — economia de troca pura com bens contingentes, mercado completo, equilíbrio Walrasiano em $\mathbb{R}^{LS}$, 1º TBE estendido, e aplicação canônica do seguro completo.

**Por que J-R e não N&S como referência principal:**

- ZaE Cap. 14 (livro do Prof. Darcio) cobre EG canônico mas **não tem cobertura formal de incerteza/bens contingentes** — entra na Seção 1 como complemento opcional para revisão da Aula 4.
- N&S §7.5 (state-preference approach) é o tratamento "Cap. 7 — Uncertainty" — bem-feito mas mais panorâmico, menos formal que J-R.
- J-R §5.5 oferece o nível de rigor adequado ao MPE: definições formais, prova do 1º TBE estendido, aplicações com VNM citado mas não pré-requisito.

**O que ler em J-R §5.5:**

- **§5.5.1** (ou seção introdutória) — estados, bens contingentes, mercado completo, equilíbrio AD.
- **§5.5.2** — 1º Teorema do Bem-Estar com mercados completos (prova). Aqui o argumento da Aula 4 reaparece sem mudança — confirme.
- **§5.5.3 / aplicação seguro** — economia 2 estados, agente avesso + neutro, derivação de seguro atuarialmente justo.
- **Exercícios 5.34, 5.36** (numeração J-R 3e) — equivalentes ao que vamos fazer no quiz pós e exercícios avaliativos.

PDF acessado via `MPE.openMaterial('jehle-reny-3e-cap5.pdf', this)` (✓ confirmado no bucket Supabase em 2026-05-07).

---

## Seção 2 — N&S 12e — §7.5 (complemento panorâmico)

Leitura dirigida do Nicholson & Snyder 12e como **complemento opcional** ao J-R §5.5. Use se a notação ou linguagem de J-R estiverem densas demais — N&S é mais "leitor de graduação".

**Foco**:

- **§7.5 The State-Preference Approach to Choice Under Uncertainty** — apresentação alternativa do mesmo conteúdo de J-R §5.5: estados, bens contingentes, *fair insurance*, prêmio de risco. Boa para fixar terminologia em PT-EN.
- **§7.1–§7.3** (Mathematical Statistics, Fair Gambles, Risk Aversion) — leitura panorâmica se você não viu valor esperado/variância/aversão ao risco recentemente. Não é pré-requisito desta aula.
- **§13.6 General Equilibrium with Uncertainty** — leitura panorâmica para ver que o ferramental EG é o mesmo; o que muda é a contagem de bens.

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap7.pdf', this)` e `MPE.openMaterial('nicholson-snyder-12e-cap13.pdf', this)`.

> **Calibre.** Esta pré-aula posiciona **Jehle-Reny §5.5 como piso obrigatório** e N&S §7.5 como complemento panorâmico. ZaE Cap. 14 fica fora (não cobre incerteza). MWG §19.B ("A Pure-Exchange Economy with Contingent Commodities") é teto opcional para aluno motivado.

---

## Seção 3 — Conceitual 1: Estados, bens contingentes, espaço $\mathbb{R}^{LS}$

### Estados da natureza

Comece com a abstração mínima. O mundo amanhã pode realizar uma de várias **configurações exclusivas e exaustivas**. Cada configuração é um **estado da natureza** $s$. O conjunto de estados é

$$
S = \{1, 2, \ldots, |S|\}, \quad |S| < \infty.
$$

Exemplos canônicos:

- **Tempo:** $S = \{\text{chuva}, \text{sol}\}$, $|S| = 2$.
- **Macro:** $S = \{\text{recessão}, \text{normal}, \text{boom}\}$, $|S| = 3$.
- **Bilíngue:** $S = \{\text{ações sobem}, \text{ações estáveis}, \text{ações caem}\}$.

Cada agente $i$ atribui **probabilidade subjetiva** $\pi^i_s \ge 0$ a cada estado, com $\sum_s \pi^i_s = 1$. O modelo **permite** $\pi^A \neq \pi^B$ — heterogeneidade de crenças. Caso particular pedagógico: consenso bayesiano, $\pi^i = \pi$ para todo $i$.

### Bens contingentes

Um **bem contingente** é o par $(\ell, s)$: "$\ell$ unidades **se** o estado for $s$". O espaço de bens é

$$
\mathbb{R}^{LS} \cong \mathbb{R}^L \times \mathbb{R}^L \times \cdots \times \mathbb{R}^L \quad (S \text{ cópias}).
$$

Um vetor de consumo é

$$
x^i = (x^i_{\ell, s})_{\ell \in L, s \in S} \in \mathbb{R}^{LS}_+.
$$

Equivalentemente, $x^i = (x^i_1, x^i_2, \ldots, x^i_{|S|})$ com $x^i_s \in \mathbb{R}^L_+$ — o vetor "como o agente $i$ consome em cada estado".

**Exemplo concreto.** $L = 1$ (um único bem físico — chamemos de "dinheiro" ou "consumo"), $S = 2$ (chuva/sol). Espaço $\mathbb{R}^{2}_+$. Vetor de consumo do agente $A$: $x^A = (x^A_{\text{chuva}}, x^A_{\text{sol}}) = (60, 100)$. Lê-se: "em chuva, $A$ consome 60; em sol, 100".

### Tempo como caso particular de estado

Tempo entra de graça. Defina $s = (t, \omega)$ onde $t \in T$ (datas) e $\omega \in \Omega$ (incerteza). Casos especiais:

- $|\Omega| = 1$: bens **datados** sem incerteza. Espaço $\mathbb{R}^{LT}$. Modelo de gerações sobrepostas / consumo intertemporal determinístico.
- $|T| = 1$: bens **contingentes** num só período. O caso "seguro" canônico.
- Geral: bens datados-e-contingentes. Modelo Arrow-Debreu completo.

**Implicação:** o aparelho EG não distingue tempo de incerteza. *Ambos são "estados".* Essa universalidade é o ponto central pedagógico.

### Preferências sobre $\mathbb{R}^{LS}_+$

Cada agente tem $\succeq^i$ sobre $\mathbb{R}^{LS}_+$. **Continuidade, monotonicidade, convexidade** se redefinem palavra-por-palavra sobre o espaço estendido.

**Caso particular pedagógico — utilidade esperada (EU).** Quando $\succeq^i$ admite representação

$$
u^i(x^i) = \sum_{s \in S} \pi^i_s\, v^i(x^i_s),
$$

dizemos que o agente é **VNM-racional** com Bernoulli $v^i: \mathbb{R}^L_+ \to \mathbb{R}$. Aversão ao risco $\Leftrightarrow$ $v^i$ côncava. **Não vamos provar a representação** (von Neumann-Morgenstern, 1944) — só usar como caso particular nas aplicações. O ferramental Arrow-Debreu **não exige** EU; trabalha com $\succeq^i$ genérico em $\mathbb{R}^{LS}_+$.

> **Decisão pedagógica.** EU **não é tópico desta aula**. É refinement de preferências sobre loterias e tem teoria própria (J-R 3e §2.4 / N&S 12e Cap. 7 / MWG §6). Aqui entra como ferramenta cirúrgica nas aplicações (Seção 5) e na maioria dos exercícios — exatamente como a maioria dos textos de finanças usa.

### Micro-checkpoints (2 itens — obrigatórios)

**MC1.** $L = 2$, $S = 3$. O espaço de bens contingentes tem dimensão:

- (a) $5$.
- (b) $2$.
- (c) $\mathbf{6}$. **[correta]** $LS = 2 \cdot 3 = 6$.
- (d) $3$.

**MC2.** Considere agente $A$ com $\pi^A_{\text{chuva}} = 0{,}3$, $\pi^A_{\text{sol}} = 0{,}7$ e Bernoulli $v(c) = \sqrt{c}$. Em $L = 1$ bem, sob EU, a utilidade do consumo $(x_{\text{chuva}}, x_{\text{sol}}) = (49, 100)$ é:

- (a) $\sqrt{49 + 100} = \sqrt{149}$.
- (b) $\sqrt{0{,}3 \cdot 49 + 0{,}7 \cdot 100} = \sqrt{84{,}7}$.
- (c) $\mathbf{0{,}3 \cdot 7 + 0{,}7 \cdot 10 = 9{,}1}$. **[correta]** EU: $\sum_s \pi_s v(x_s) = 0{,}3 \sqrt{49} + 0{,}7 \sqrt{100}$.
- (d) $0{,}3 \cdot 49 + 0{,}7 \cdot 100 = 84{,}7$.

---

## Seção 4 — Conceitual 2: Equilíbrio Arrow-Debreu em mercados completos

### Mercado completo

**Definição.** Existe um preço $p_{\ell, s} \in \mathbb{R}_+$ para **cada** par $(\ell, s)$. O vetor de preços é $p \in \mathbb{R}^{LS}_+ \setminus \{0\}$.

**Tempo do mercado.** Todos os preços são negociados **ex-ante** ($t = 0$, antes de $s$ ser realizado). Cada agente compra/vende seu vetor $x^i$ em $t = 0$. Quando $s$ se realiza, contratos são executados: o agente recebe ou entrega $x^i_s - \omega^i_s$ no estado $s$.

**Esse é o setup canônico Arrow-Debreu.** Não confundir com **Radner sequencial** (mercado spot estado-a-estado + ativos), que é Aula 6.

### Dotações e renda

Cada agente $i$ tem dotação $\omega^i \in \mathbb{R}^{LS}_+$ — "o que recebo em cada estado, antes de qualquer troca". Renda inicial:

$$
m^i(p) = p \cdot \omega^i = \sum_{(\ell, s)} p_{\ell, s}\, \omega^i_{\ell, s}.
$$

### UMP em $\mathbb{R}^{LS}$

O agente $i$ resolve

$$
\max_{x^i \in \mathbb{R}^{LS}_+}\, u^i(x^i) \quad \text{s.a.} \quad p \cdot x^i \le p \cdot \omega^i.
$$

**Tudo idêntico à UMP da Aula 1.** Só mudou o número de bens.

**Caracterização interior** (sob LNS, $u^i$ diferenciável, ótimo interior):

$$
\frac{\partial u^i / \partial x^i_{\ell, s}}{\partial u^i / \partial x^i_{\ell', s'}} = \frac{p_{\ell, s}}{p_{\ell', s'}} \quad \text{para todo par } (\ell, s), (\ell', s').
$$

Isto é, **a TMS entre quaisquer dois bens contingentes iguala a razão de preços**. Sem novidade conceitual além da Aula 1 — só com mais bens.

### Equilíbrio Arrow-Debreu

**Definição.** Um **equilíbrio Arrow-Debreu** (ou **equilíbrio walrasiano em mercados completos**) é um par $(p^*, x^*)$ com $p^* \in \mathbb{R}^{LS}_{++}$ e $x^* = (x^{1*}, \ldots, x^{I*})$ tal que:

1. **Otimalidade.** Para cada $i$, $x^{i*}$ resolve UMP de $i$ aos preços $p^*$.
2. **Viabilidade.** $\sum_i x^{i*} = \sum_i \omega^i$, **ponto a ponto**: $\sum_i x^{i*}_{\ell, s} = \sum_i \omega^i_{\ell, s}$ para cada $(\ell, s)$.

Compare com EC da Aula 4. **Diferenças:**

- O espaço de bens é $\mathbb{R}^{LS}$ em vez de $\mathbb{R}^L$.
- A viabilidade é **estado-a-estado**: o que é entregue em $s$ vem do que está disponível em $s$.

### Lei de Walras estendida

Sob LNS, UMP individual exausta orçamento: $p^* \cdot x^{i*} = p^* \cdot \omega^i$ para cada $i$. Subtraindo: $p^* \cdot z^i(p^*) = 0$. Somando:

$$
p^* \cdot z(p^*) = 0 \quad \text{onde} \quad z(p) = \sum_i (x^i(p) - \omega^i) \in \mathbb{R}^{LS}.
$$

**Mesma lei, espaço maior.** Em $L = 1$, $S = 2$: 2 mercados, Walras dá uma redundância — basta zerar 1 mercado. Em $L = 2$, $S = 3$: 6 mercados, basta zerar 5.

### Caracterização da TMS entre estados

Caso especial do (4) acima: para o **mesmo bem $\ell$** em dois estados $s, s'$:

$$
\frac{\partial u^i / \partial x^i_{\ell, s}}{\partial u^i / \partial x^i_{\ell, s'}} = \frac{p^*_{\ell, s}}{p^*_{\ell, s'}}.
$$

**Sob EU** ($u^i = \sum_s \pi^i_s v^i(x^i_s)$, $v^i$ diferenciável):

$$
\boxed{\;\frac{p^*_{\ell, s}}{p^*_{\ell, s'}} = \frac{\pi^i_s\, (v^i)'(x^{i*}_{\ell, s})}{\pi^i_{s'}\, (v^i)'(x^{i*}_{\ell, s'})}\;}
$$

para **cada agente $i$**. Em equilíbrio com agentes heterogêneos, o lado direito é o mesmo para todos (todos veem o mesmo $p^*$). Essa é a equação fundamental do **Stochastic Discount Factor (SDF)** — todo modelo de finanças derivativos é uma conta sobre essa equação.

### Micro-checkpoints (2 itens — obrigatórios)

**MC3.** Em economia de troca pura com $L = 1$ bem, $S = 2$ estados, $I = 2$ agentes, dotações $\omega^A = (a_1, a_2)$ e $\omega^B = (b_1, b_2)$ (em coordenadas $(s = 1, s = 2)$), uma alocação $(x^A, x^B)$ com $x^A = (x^A_1, x^A_2)$ é viável **sse**:

- (a) $x^A_1 + x^A_2 = a_1 + a_2$ (soma intertemporal de $A$).
- (b) $x^A_1 + x^B_1 \le a_1 + b_1$ e $x^A_2 + x^B_2 \le a_2 + b_2$.
- (c) $\mathbf{x^A_s + x^B_s = a_s + b_s}$ **para cada $s \in \{1, 2\}$**. **[correta]** Viabilidade é estado-a-estado.
- (d) $p_1 (x^A_1 + x^B_1) + p_2 (x^A_2 + x^B_2) = p_1 (a_1 + b_1) + p_2 (a_2 + b_2)$.

**MC4.** Sob EU com $u^A(x^A) = 0{,}5 \ln x^A_1 + 0{,}5 \ln x^A_2$ e ótimo interior, em equilíbrio com $p^*_1, p^*_2 > 0$:

- (a) $\frac{p^*_1}{p^*_2} = \frac{x^{A*}_1}{x^{A*}_2}$.
- (b) $\mathbf{\frac{p^*_1}{p^*_2} = \frac{x^{A*}_2}{x^{A*}_1}}$. **[correta]** Razão de marginais $0{,}5/x^A_1$ sobre $0{,}5/x^A_2 = x^A_2/x^A_1$.
- (c) $p^*_1 = p^*_2$ (pois as probabilidades são iguais).
- (d) $p^*_1 = p^*_2$ (pois o agente é avesso ao risco).

---

## Seção 5 — Conceitual 3: 1º TBE estendido + seguro completo

### 1º TBE em mercados completos

**Teorema (1º TBE — Arrow-Debreu).** Sob LNS de cada $\succeq^i$ em $\mathbb{R}^{LS}_+$, todo equilíbrio Arrow-Debreu $(p^*, x^*)$ é Pareto-eficiente.

**A prova é a mesma da Aula 4.** Linha-por-linha. Substitua "$L$" por "$LS$"; os passos não mudam:

1. Suponha por contradição que existe alocação viável $\tilde x$ Pareto-superior a $x^*$.
2. Para o $j$ estritamente melhor, UMP em $p^*$ implica $p^* \cdot \tilde x^j > p^* \cdot \omega^j$.
3. Para os $i$ fracamente melhores, LNS implica $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$.
4. Some sobre $i$: $p^* \cdot \sum_i \tilde x^i > p^* \cdot \sum_i \omega^i$.
5. Mas viabilidade de $\tilde x$ requer $\sum_i \tilde x^i = \sum_i \omega^i$ (estado-a-estado), logo $p^* \cdot \sum_i \tilde x^i = p^* \cdot \sum_i \omega^i$ — contradição.

> **Por que isso é pedagogicamente brilhante.** A teoria do bem-estar não distingue tempo de risco de produção. Tudo é "mais bens". A consequência política é forte: **se mercados são completos**, a 1ª regra de bem-estar do mercado competitivo se preserva sob risco e tempo. Aula 6 vai mostrar o que acontece quando **mercados são incompletos** — e a história muda completamente.

**O 2º TBE também estende** (sob convexidade de $\succeq^i$ em $\mathbb{R}^{LS}_+$): toda alocação Pareto-eficiente é EC AD após redistribuição lump-sum em $t = 0$. A prova requer Hahn-Banach + convexidade — não vamos demonstrar; cita-se enunciado.

### Aplicação canônica — seguro completo

Setup mais simples possível: $I = 2$, $L = 1$, $S = 2$. Estados $\{1, 2\}$. Probabilidades de consenso: $\pi_1, \pi_2 > 0$, $\pi_1 + \pi_2 = 1$. Agente $A$ com Bernoulli $v_A$ estritamente côncava (avesso ao risco). Agente $B$ neutro ao risco ($v_B(c) = c$). Dotações:

- $\omega^A = (\omega^A_1, \omega^A_2)$ — pode ser **arriscada** (ex.: $\omega^A_1 = 60$ se quebra a colheita, $\omega^A_2 = 100$ se vai bem).
- $\omega^B = (\omega^B_1, \omega^B_2)$ — neutro ao risco; pense em uma seguradora "grande" com renda $\omega^B$.

Total: $\bar\omega_s = \omega^A_s + \omega^B_s$.

**UMP de $A$:**

$$
\max_{x^A_1, x^A_2 \ge 0}\, \pi_1 v_A(x^A_1) + \pi_2 v_A(x^A_2) \quad \text{s.a.} \quad p_1 x^A_1 + p_2 x^A_2 = p_1 \omega^A_1 + p_2 \omega^A_2.
$$

CPO interior:

$$
\frac{\pi_1 v_A'(x^A_1)}{\pi_2 v_A'(x^A_2)} = \frac{p_1}{p_2}.
$$

**UMP de $B$ (neutro):** $u^B(x^B) = \pi_1 x^B_1 + \pi_2 x^B_2$. Linear ⇒ canto, exceto se $p_s = \pi_s$ (a menos de constante). De fato, em equilíbrio, **preços têm que sair atuarialmente justos**: $p_s/p_{s'} = \pi_s/\pi_{s'}$.

**Por quê.** Em ótimo interior de $B$ com função linear, todas as marginais têm que ser proporcionais aos preços:

$$
\frac{\pi_1}{\pi_2} = \frac{p_1}{p_2}.
$$

Substituindo na CPO de $A$:

$$
\frac{v_A'(x^A_1)}{v_A'(x^A_2)} = 1 \quad\Longleftrightarrow\quad x^A_1 = x^A_2 = \bar c^A.
$$

Concavidade estrita de $v_A$ ⇒ marginais diferentes em valores diferentes ⇒ igualdade de marginais ⇒ igualdade de valores. **$A$ consome a mesma quantidade nos dois estados — está totalmente segurado.**

### O que é "seguro atuarialmente justo"

Defina **prêmio** como o que $A$ paga ex-ante para se livrar do risco e obter $\bar c^A$ em todos os estados. Em mercado completo competitivo, esse prêmio iguala a **expectativa da perda**, sem markup — *fair insurance*. A neutralidade de $B$ + concorrência perfeita zeram lucro econômico da seguradora, e o resultado é Pareto-eficiente: $A$ ganha (consumo certo), $B$ é indiferente entre carregar o risco ou não (linear).

### Onde isso quebra (teaser para Aulas 7–8)

- **Externalidades** (Aula 7): o risco do agricultor depende do risco do vizinho. Mercado completo precisa de **mais** preços.
- **Bens públicos** (Aula 7): risco coletivo (pandemia) não tem comprador único.
- **Seleção adversa** (Aula 8): seguradora não observa o tipo do segurado. *Fair insurance* deixa de ser equilíbrio.
- **Risco moral** (Aula 8): segurado afeta probabilidade do estado. *Fair insurance* incentiva descuido.
- **Mercados incompletos** (Aula 6): se $S$ contém mais estados que ativos disponíveis, *não há* equilíbrio AD — só Radner restrito.

> **Síntese.** O 1º TBE em AD é **a melhor versão possível do mercado**. Aulas 7–9 são o catálogo de razões pelas quais essa versão raramente existe na prática.

### Mercados financeiros completos (citação)

Ações Arrow para o estado $s$: ativo que paga 1 em $s$ e 0 em $s' \neq s$. Em $|S|$ estados, $|S|$ ações Arrow geram $\mathbb{R}^S$. Equivalentemente: qualquer conjunto de $|S|$ ativos linearmente independentes (ou seja, *spanning*) implementa AD canônico via portfolio. Esta é a ponte entre Arrow-Debreu e finanças derivativas — Black-Scholes (1973, J. Political Economy 81(3): 637–654, [DOI 10.1086/260062](https://doi.org/10.1086/260062)) vive aqui. Aula 6 detalha o equivalente sequencial (Radner).

### Micro-checkpoints (3 itens — obrigatórios)

**MC5.** Na economia $A$ avesso/$B$ neutro descrita acima, em equilíbrio competitivo:

- (a) $A$ consome $\omega^A$ — autarquia.
- (b) $A$ consome $(0, \omega^A_1 + \omega^A_2)$ — concentra tudo no estado 2.
- (c) $\mathbf{A}$ consome $(\bar c^A, \bar c^A)$ com $\bar c^A$ independente do estado — **totalmente segurado**. **[correta]**
- (d) $A$ consome $\bar\omega/2$ em cada estado — divide a economia.

**MC6.** A relação $p^*_1/p^*_2 = \pi_1/\pi_2$ em equilíbrio com agente neutro depende crucialmente de:

- (a) $A$ ser bayesiano ortodoxo.
- (b) $\mathbf{A}$ neutralidade ao risco de $B$ + ótimo interior + concorrência (preço-tomador). **[correta]**
- (c) Total da economia ser igual nos dois estados.
- (d) Estados serem equiprováveis.

**MC7.** Em $A$ avesso e $B$ avesso (ambos com Bernoulli **idêntica** $v_A = v_B = \ln c$), com $\pi_1 = \pi_2 = 1/2$, $\omega^A = (60, 100)$, $\omega^B = (100, 60)$ (agregado $\bar\omega = (160, 160)$ — **livre de risco**):

- (a) Em equilíbrio, **ambos** ficam totalmente segurados em $x^i_1 = x^i_2 = 80$. **[correta]** Agregado livre de risco + Bernoullis idênticas $\Rightarrow$ a razão $r := x^i_2/x^i_1 = (\pi_1/\pi_2)(p_2/p_1)$ é a mesma para cada agente; viabilidade nos dois estados força $r = 1$.
- (b) Apenas $A$ fica segurado.
- (c) Ambos diversificam, mas nenhum chega a $x^i_1 = x^i_2$ em geral.
- (d) Não existe equilíbrio.

---

## Seção 6 — Exercícios de papel

**Tempo-alvo:** 15 min para abordagem (não para resolução completa). Resolução pode ser feita até a aula presencial.

> **Calibração Referee 2.** Os enunciados abaixo são **auto-contidos** e calibrados ao **piso J-R 3e §5.5 (Markets with Uncertainty)**, com paridade temática aos exercícios 5.34 e 5.36 do J-R 3e. Quem preferir abordagem panorâmica encontra material equivalente em N&S §7.5 + §13.6. O aluno resolve direto, sem depender da numeração específica do livro.

### EP-1 (obrigatório, calibre intermediário)

Considere economia $L = 1$, $S = 2$, $I = 2$ agentes. Probabilidades de consenso $\pi_1 = 0{,}4$, $\pi_2 = 0{,}6$. Agente $A$ tem Bernoulli $v_A(c) = \ln c$ (CRRA com $\gamma = 1$); agente $B$ tem $v_B(c) = c$ (neutro ao risco). Dotações $\omega^A = (40, 100)$, $\omega^B = (60, 60)$. Total $\bar\omega = (100, 160)$.

(a) Calcule a razão de equilíbrio $p^*_1/p^*_2$. *Dica: B neutro ⇒ atuarialmente justo.*  
(b) Calcule o consumo de equilíbrio $x^{A*} = (x^{A*}_1, x^{A*}_2)$.  
(c) Verifique que $x^{A*}_1 = x^{A*}_2$ (totalmente segurado).  
(d) Calcule $x^{B*}$ e mostre que $x^{B*}_1 + x^{A*}_1 = 100$ e $x^{B*}_2 + x^{A*}_2 = 160$.

**Abordagem (textarea, mín. 10 caracteres):** descreva em 2-3 linhas qual conta você fará primeiro e como verifica viabilidade.

### EP-2 (obrigatório, calibre intermediário)

Considere economia $L = 1$, $S = 2$, $I = 2$ agentes **ambos avessos**. $v_A(c) = \ln c$, $v_B(c) = \ln c$. $\pi_1 = \pi_2 = 1/2$. Dotações *espelhadas*: $\omega^A = (60, 100)$, $\omega^B = (100, 60)$. Total $\bar\omega = (160, 160)$ — **agregado livre de risco**.

(a) Mostre, usando simetria, que em equilíbrio $x^{A*}_1 = x^{A*}_2 = 80$ e $x^{B*}_1 = x^{B*}_2 = 80$.  
(b) Calcule a razão $p^*_1/p^*_2$.  
(c) **Observação pedagógica:** quando o agregado é livre de risco, mesmo sem agente neutro, o mercado completo elimina todo o risco individual. Compare com EP-1.

**Abordagem (textarea, mín. 10 caracteres):** explique por que "agregado livre de risco" é a hipótese-chave.

### EP-3 (bônus, calibre intermediário-difícil)

Mesma economia do EP-1, com uma modificação: agora suponha que **só existe um ativo Arrow para o estado 1** (e nenhum mecanismo de transação direta entre $\omega$ e $x$ no estado 2). Argumente, em prosa, por que **mercados são incompletos** e por que o equilíbrio AD da economia EP-1 **não pode ser implementado** com esse ativo único. *Dica: $|S| = 2$ requer 2 ativos linearmente independentes.* (Este é teaser para Aula 6.)

**Abordagem (textarea, opcional):** descreva o que falta nesse mercado.

---

## Seção 7 — Checkpoint final de síntese

3 questões sintetizando estados → bens contingentes → equilíbrio AD → 1º TBE estendido.

**Q1 (síntese — espaço de bens).** Em economia com $L = 3$ bens físicos e $S = 4$ estados da natureza, o espaço de bens contingentes tem dimensão:

- (a) $7$.
- (b) $\mathbf{12}$. **[correta]** $LS = 3 \cdot 4$.
- (c) $4$.
- (d) $3$.

**Q2 (síntese — viabilidade).** Em economia AD com $I = 2$ agentes, $L = 1$ bem, $S = 3$ estados, viabilidade requer:

- (a) $\sum_i \sum_s x^i_s = \sum_i \sum_s \omega^i_s$ (uma equação).
- (b) $\sum_s p_s (x^i_s - \omega^i_s) = 0$ para cada $i$ (Walras individual).
- (c) $\mathbf{\sum_i x^i_s = \sum_i \omega^i_s}$ **para cada $s \in S$** (uma equação **por estado**, total: 3). **[correta]**
- (d) $x^i_s = \omega^i_s$ para todo $i, s$ (autarquia).

**Q3 (síntese — 1º TBE).** O 1º TBE em mercados completos AD afirma que:

- (a) Sob convexidade, todo Pareto-eficiente é EC AD após redistribuição lump-sum (esta é o **2º** TBE).
- (b) $\mathbf{Sob}$ LNS, todo EC AD é Pareto-eficiente. A prova reaproveita a da Aula 4 trocando $\mathbb{R}^L$ por $\mathbb{R}^{LS}$. **[correta]**
- (c) Existe EC AD em qualquer economia (esta é existência, Aula 6).
- (d) Mercados completos eliminam toda externalidade.

---

## Seção 8 — Reflexão qualitativa

Dois campos obrigatórios (mín. 10 caracteres cada):

1. **"Que conceito ou passagem ainda está nebuloso pra você?"**  
   Sugestões de auto-diagnóstico: "Por que viabilidade é estado-a-estado e não em soma agregada?", "Como interpretar heterogeneidade de crenças no preço relativo?", "Onde a hipótese de mercado completo entra explicitamente na prova do 1º TBE?".

2. **"Qual ponto você quer ver discutido em sala?"**  
   Sugestões: "Quero ver o caso $S = 2$ desenhado no quadro com diagrama $(x_1, x_2)$.", "Quero entender o link com finanças derivativas — Black-Scholes saiu daqui?", "Como o agregado $\bar\omega_s$ depender de $s$ muda a história?".

---

## Apêndice A — Tabela de notação canônica desta aula

| Símbolo | Significado |
|---|---|
| $S$ | conjunto de estados da natureza, finito |
| $s$ | estado genérico em $S$ |
| $\pi^i_s$ | probabilidade subjetiva que o agente $i$ atribui a $s$ |
| $L$ | conjunto de bens físicos |
| $(\ell, s)$ | bem contingente: $\ell$ se realizar $s$ |
| $\mathbb{R}^{LS}$ | espaço de bens contingentes |
| $x^i$ | vetor de consumo de $i$ em $\mathbb{R}^{LS}_+$ |
| $x^i_s \in \mathbb{R}^L$ | consumo de $i$ no estado $s$ |
| $\omega^i$ | dotação de $i$ em $\mathbb{R}^{LS}_+$ |
| $p_{\ell, s}$ | preço Arrow-Debreu do bem $\ell$ no estado $s$ |
| $u^i$ | utilidade de $i$ sobre $\mathbb{R}^{LS}_+$ |
| $v^i$ | Bernoulli (caso EU): $u^i = \sum_s \pi^i_s v^i(x^i_s)$ |
| $\succeq^i$ | preferência de $i$ sobre $\mathbb{R}^{LS}_+$ |
| $z(p)$ | excesso de demanda agregado em $\mathbb{R}^{LS}$ |

---

## Apêndice B — O que esta aula **não** faz (anti-overclaim)

- **Não prova existência** de EC AD. Aula 6.
- **Não introduz Radner sequencial.** Aula 6.
- **Não trata mercados incompletos formalmente.** Aula 6+, e parcialmente Aula 8.
- **Não ensina utilidade esperada como teoria.** EU entra como caso particular operacional. Teoria completa: Cap. 7 N&S, §2 J-R, §6 MWG.
- **Não aborda paradoxo de Allais nem Ellsberg.** Fora do escopo.
- **Não aborda preferências state-dependent.** Caso particular pedagógico restrito.
- **Não demonstra Black-Scholes.** Cita ponte Arrow-Debreu ↔ finanças derivativas e para por aí.

> **Disclaimer estilístico do Referee 2.** Esta aula é deliberadamente **conservadora no escopo** e **agressiva na consolidação**. O conteúdo cabe folgado em 180 min — *e tem que caber*, porque as Aulas 6 e 8 dependem de o aluno ter $\mathbb{R}^{LS}$ e o 1º TBE estendido **na ponta da língua**.
