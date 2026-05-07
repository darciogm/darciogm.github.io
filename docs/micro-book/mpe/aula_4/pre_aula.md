# Pré-Aula 4 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 4. É o "esqueleto narrativo" do `platform/aula-04.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Equilíbrio Geral em Trocas Puras** (Edgeworth, contract curve, equilíbrio competitivo, lei de Walras, 1º TBE, 2º TBE preliminar).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 13/05/2026 (quarta-feira), 19:30–22:30
- **Pré-aula abre:** quinta 07/05 madrugada
- **Pré-aula fecha:** quarta 13/05 às 18:00 BRT (canônico, 1h30 antes da aula)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–3 consolidadas (preferências, UMP/EMP/Roy/Shephard, Slutsky/elasticidades/CV-EV).

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. Definir economia de troca pura $(I, L, \omega, \succeq)$ e alocação viável $\sum_i x^i = \sum_i \omega^i$.
2. Caracterizar **Pareto-eficiência** em $2\times 2$ via tangência $\text{TMS}^A = \text{TMS}^B$ (interior, com hipóteses de regularidade).
3. Ler a **caixa de Edgeworth**: dotação inicial, conjuntos preferidos, **contract curve**, **núcleo**.
4. Reconhecer **excesso de demanda agregado** $z(p) = \sum_i z^i(p)$ e a **lei de Walras** $p\cdot z(p) = 0$.
5. Definir **equilíbrio competitivo (Walrasiano)** como par $(p^*, x^*)$ com tomadores de preço, mercados em equilíbrio, viabilidade.
6. Demonstrar pedagogicamente o **1º Teorema do Bem-Estar (1º TBE)** via não-saciedade local.
7. Antecipar o enunciado do **2º TBE** (preliminar): qualquer Pareto-eficiente é EC após redistribuição lump-sum, sob convexidade.

Não-objetivos (para a Aula 5 e seguintes):
- Existência via Brouwer/Kakutani (Aula 6).
- Mercados contingentes, tempo, risco (Aulas 5–6).
- Economia com produção (Aula 5).
- 2º TBE com prova rigorosa via separação de Hahn-Banach (Aula 6 ou monitoria).

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura ZaE — Cap. 14 §14.1–§14.7 | Leitura dirigida | 25 min |
| 2 | Leitura N&S 12e Cap. 13 (§13.1, §13.2) | Leitura dirigida (PDF) | 25 min |
| 3 | Conceitual 1 — Edgeworth e Pareto | Texto + 2 micro-checkpoints | 12 min |
| 4 | Conceitual 2 — Equilíbrio competitivo e lei de Walras | Texto + 2 micro-checkpoints | 12 min |
| 5 | Conceitual 3 — 1º TBE e teaser do 2º TBE | Texto + 3 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (N&S 13.1, 13.2 + bônus) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~120 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel e caneta. A **Edgeworth** se aprende com lápis de cor — desenhe pelo menos uma à mão.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Edgeworth → Walras → 1º TBE é cadeia lógica.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

---

## Seção 1 — ZaE Cap. 14 (§14.1–§14.7)

Leitura dirigida do livro do Prof. Darcio (*Microeconomia: Do Zero ao Equilíbrio (e Além)*), **Capítulo 14 — Equilíbrio Geral**. Para esta aula, foco nas seções **§14.1 a §14.7**:

- **§14.1–§14.2** — Sistema de Preços + Caixa de Edgeworth (`docs/micro-book/cap14/sistema-precos.md`).
- **§14.3–§14.5** — Pareto-eficiência + Curva de Contrato + Núcleo (`docs/micro-book/cap14/eficiencia-pareto.md`).
- **§14.6–§14.7** — 1º e 2º Teoremas do Bem-Estar (`docs/micro-book/cap14/teoremas-bem-estar.md`).

**Pulam (vão para Aulas 5 e 6):**

- §14.8–§14.10 (modelo matemático formal) — material de monitoria/Aula 6.
- §14.11 (CGE) — parcialmente Aula 5 (com produção).
- §14.12 (Escolha Social — Arrow) — não cabe na ementa MPE.

**Por que o cap. 14 é o fallback escrito desta aula:** se a aula presencial estiver visualmente acelerada na construção da caixa de Edgeworth, a §14.2 do ZaE tem o desenho passo-a-passo e os exercícios de tangência $\text{TMS}^A = \text{TMS}^B$ que substituem o gráfico interativo (ainda não-implementado em JSXGraph).

---

## Seção 2 — N&S 12e Cap. 13 (§13.1, §13.2)

Leitura dirigida do Nicholson & Snyder 12e. **Foco**:

- §13.1 Perfectly Competitive Price System — definições, Lei de Walras, normalização.
- §13.2 The Efficiency of Perfect Competition — 1º TBE (em troca), 2º TBE em texto, hipóteses.
- **Pular** §13.3 (Production), §13.4–§13.5 (general equilibrium with production) — vai para Aula 5.
- **Pular** §13.6+ (existence via Brouwer) — vai para Aula 6.

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap13.pdf', this)`.

---

## Seção 3 — Conceitual 1: Edgeworth e Pareto

### Setup

Economia de troca pura com $I=2$ consumidores ($A, B$) e $L=2$ bens ($1, 2$). Cada consumidor $i$ tem:

- Preferências $\succeq^i$ representadas por $u^i: \mathbb{R}^2_+ \to \mathbb{R}$, contínua, monotônica, estritamente quase-côncava.
- Dotação $\omega^i = (\omega_1^i, \omega_2^i) \in \mathbb{R}^2_{++}$.

Total da economia: $\bar\omega = \omega^A + \omega^B = (\bar\omega_1, \bar\omega_2)$.

### Alocação viável

Uma **alocação** é $x = (x^A, x^B)$ com $x^i \in \mathbb{R}^2_+$. É **viável** se $x^A + x^B = \bar\omega$ (mercados fecham).

### Pareto-eficiência

A alocação $x$ é **Pareto-eficiente** se viável e não existir $\tilde x$ viável com $u^i(\tilde x^i) \ge u^i(x^i)$ para todo $i$ e $u^j(\tilde x^j) > u^j(x^j)$ para algum $j$.

**Caracterização interior** (com utilidades suaves, estritamente quase-côncavas, $x^i \gg 0$):

$$
x \text{ é Pareto-eficiente interior} \iff \text{TMS}^A(x^A) = \text{TMS}^B(x^B).
$$

A intuição é a tangência das curvas de indiferença na caixa de Edgeworth.

### Caixa de Edgeworth

Construção:

- Eixo horizontal: bem 1, comprimento $\bar\omega_1$.
- Eixo vertical: bem 2, comprimento $\bar\omega_2$.
- Origem $A$ no canto inferior-esquerdo; origem $B$ no canto superior-direito (rotacionado 180°).
- Ponto interior $(x_1^A, x_2^A) = $ alocação de $A$. Por viabilidade, $B$ recebe $\bar\omega - x^A$.
- Curvas de indiferença de $A$: convexas para a origem $A$. De $B$: convexas para origem $B$ (parecem côncavas ao olhar de $A$).

### Contract curve

**Conjunto** dos pontos Pareto-eficientes na caixa. Em economias suaves, é uma curva contínua que conecta as duas origens (a menos que haja "esquinas" com restrição $x_i^A = 0$).

### Núcleo

**Núcleo** ($\text{Core}$): conjunto das alocações viáveis que (i) são individualmente racionais ($u^i(x^i) \ge u^i(\omega^i)$) e (ii) não podem ser bloqueadas por nenhuma coalizão. Em economia $2\times 2$, núcleo é a parte da contract curve dentro da **lente** formada pelas duas curvas de indiferença passando pela dotação.

### Micro-checkpoints

**Q1 (s3q1).** Em $u^A = u^B = x_1^{1/2} x_2^{1/2}$, $\omega^A = (3, 1)$, $\omega^B = (1, 3)$, qual é $\text{TMS}^A$ avaliada em $(2, 2)$? **Resposta:** $\text{TMS}^A = (\partial u/\partial x_1)/(\partial u/\partial x_2) = x_2^A/x_1^A = 1$ em $(2, 2)$. **(b)**

**Q2 (s3q2).** Pareto-eficiência interior em troca pura $2\times 2$ com utilidades suaves equivale a:
- (a) $u^A = u^B$.
- (b) $\omega^A = \omega^B$.
- (c) $\text{TMS}^A = \text{TMS}^B$ — tangência. **← CORRETA**
- (d) $x^A = x^B$.

---

## Seção 4 — Conceitual 2: Equilíbrio competitivo e lei de Walras

### Tomadores de preço e demandas

Cada consumidor $i$ enfrenta preço $p = (p_1, p_2)$ (vetor com $p_\ell \ge 0$). Renda inicial é $p\cdot \omega^i$.

**UMP individual:**
$$
x^i(p) \in \arg\max_{x^i \ge 0} u^i(x^i) \;\;\text{s.a.}\;\; p\cdot x^i \le p\cdot \omega^i.
$$

**Excesso de demanda individual:** $z^i(p) = x^i(p) - \omega^i$ (vetor; pode ter componentes negativas — vendas).

**Excesso agregado:** $z(p) = \sum_i z^i(p)$.

### Lei de Walras

Para todo $p \gg 0$ (ou onde demandas são bem-definidas):

$$
p\cdot z(p) = \sum_i p\cdot z^i(p) = \sum_i [p\cdot x^i(p) - p\cdot \omega^i] = 0,
$$

pois cada $i$ exauste a restrição orçamentária ($p\cdot x^i = p\cdot \omega^i$ por monotonicidade ou não-saciedade local).

**Consequência operacional:** se $L-1$ mercados estão em equilíbrio ($z_\ell = 0$ para $\ell = 1, ..., L-1$), o $L$-ésimo está automaticamente. Em $L=2$: zerar mercado 1 zera mercado 2.

### Homogeneidade grau 0

$z(\lambda p) = z(p)$ para todo $\lambda > 0$. Permite normalizar, ex.: $\sum_\ell p_\ell = 1$ ou $p_2 = 1$ (numerário).

### Equilíbrio competitivo

**Definição.** Um equilíbrio competitivo é um par $(p^*, x^*)$ com $p^* \ge 0$, $p^* \neq 0$, tal que:

1. Para cada $i$, $x^{*i}$ resolve o UMP em $p^*$.
2. $\sum_i x^{*i} = \sum_i \omega^i$ (mercados fecham).

Ou equivalente: $z(p^*) = 0$ (em $L=2$, basta zerar um mercado e Walras zera o outro).

### Cálculo numérico — CD simétrica

Setup: $u^A = u^B = x_1^{1/2}x_2^{1/2}$; $\omega^A = (3, 1)$, $\omega^B = (1, 3)$. Total $\bar\omega = (4, 4)$.

Renda de $A$: $m^A = p_1\cdot 3 + p_2\cdot 1$. CD ⇒ $x_1^A = m^A/(2 p_1) = 3/2 + p_2/(2 p_1)$.

Renda de $B$: $m^B = p_1 + 3 p_2$. $x_1^B = m^B/(2 p_1) = 1/2 + 3 p_2/(2 p_1)$.

Mercado 1: $x_1^A + x_1^B = \bar\omega_1 = 4$:
$$
\frac{3}{2} + \frac{p_2}{2 p_1} + \frac{1}{2} + \frac{3 p_2}{2 p_1} = 4 \implies 2 + \frac{4 p_2}{2 p_1} = 4 \implies \frac{p_2}{p_1} = 1.
$$

**Equilíbrio:** $p_1^*/p_2^* = 1$. Em $p_2 = 1$ (numerário): $p_1 = 1$. Alocação: $x^{A*} = (2, 2)$, $x^{B*} = (2, 2)$.

### Cálculo numérico — CD assimétrica (canônico)

**Setup canônico do bundle:** $u^A = x_1^{2/3}x_2^{1/3}$ ($A$ gosta mais de bem 1), $u^B = x_1^{1/3}x_2^{2/3}$ ($B$ gosta mais de bem 2). **Dotações desbalanceadas:** $\omega^A = (1, 4)$, $\omega^B = (3, 0)$. Total $\bar\omega = (4, 4)$. Numerário $p_2 = 1$.

**Por que esse setup gera $p_1^* \neq 1$ honestamente:** $A$ adora bem 1 mas só tem 1 unidade na dotação; $B$ tem 3 unidades de bem 1 mas valoriza menos. A escassez de bem 1 para quem o quer puxa $p_1$ para cima.

CD: $x_\ell^i = \alpha_\ell^i\cdot m^i/p_\ell$. Em $p_2 = 1$:

$$
m^A = p_1 + 4, \qquad m^B = 3 p_1.
$$

$$
x_1^A = (2/3)\cdot m^A/p_1 = (2/3)(p_1 + 4)/p_1 = 2/3 + 8/(3 p_1).
$$

$$
x_1^B = (1/3)\cdot m^B/p_1 = (1/3)\cdot 3 p_1/p_1 = 1 \quad\text{(cancelamento — não depende de } p_1 \text{).}
$$

Mercado 1: $x_1^A + x_1^B = \bar\omega_1 = 4$:

$$
\frac{2}{3} + \frac{8}{3 p_1} + 1 = 4 \implies \frac{8}{3 p_1} = \frac{7}{3} \implies p_1^* = \frac{8}{7} \approx 1{,}143.
$$

**Alocação de equilíbrio.** Em $p_1^* = 8/7$:

$$
x_1^A = 2/3 + 8/(3\cdot 8/7) = 2/3 + 7/3 = 3, \qquad x_2^A = (1/3)\, m^A = (1/3)(8/7 + 4) = 12/7 \approx 1{,}71.
$$

$$
x_1^B = 1, \qquad x_2^B = (2/3)\, m^B = (2/3)\cdot (3\cdot 8/7) = 16/7 \approx 2{,}29.
$$

**Verificação Walras:** $x_1^A + x_1^B = 3 + 1 = 4 = \bar\omega_1$ ✓; $x_2^A + x_2^B = 12/7 + 16/7 = 28/7 = 4 = \bar\omega_2$ ✓.

**Verificação tangência:** $\text{TMS}^A = (\alpha_1^A/\alpha_2^A)(x_2^A/x_1^A) = 2\cdot (12/7)/3 = 8/7$. $\text{TMS}^B = (1/2)(16/7)/1 = 8/7$. Igualdade no equilíbrio ⇒ Pareto. ✓

**Equilíbrio assimétrico, número limpo:** $p_1^* = 8/7$, $\text{TMS}^* = 8/7$. Faz sentido econômico — bem 1 é caro porque está escasso para quem o valoriza.

### Micro-checkpoints

**Q1 (s4q1).** A lei de Walras $p\cdot z(p) = 0$ vale porque:
- (a) Mercados sempre fecham (oferta = demanda). [errado — Walras vale fora do equilíbrio]
- (b) Cada consumidor exausta seu orçamento ($p\cdot x^i = p\cdot \omega^i$), por monotonicidade/LNS. **← CORRETA**
- (c) Preços são positivos.
- (d) Bens são todos normais.

**Q2 (s4q2).** Em $L=2$ bens, qual a implicação operacional da lei de Walras para encontrar EC?
- (a) Precisa resolver duas equações $z_1(p) = 0$ e $z_2(p) = 0$ simultaneamente.
- (b) Basta resolver uma — zerar $z_1$ implica $z_2 = 0$ automaticamente (Walras). **← CORRETA**
- (c) É preciso impor adicionalmente $\sum p_\ell = 1$.
- (d) Walras só vale em CD.

---

## Seção 5 — Conceitual 3: 1º TBE e teaser do 2º TBE

### Hipóteses operativas

- **Não-saciedade local (LNS):** para todo $x^i$ e toda vizinhança $U$ de $x^i$, existe $\tilde x^i \in U$ com $u^i(\tilde x^i) > u^i(x^i)$.
- Monotonicidade estrita ⇒ LNS automaticamente. Mas LNS é mais geral (admite curvas de saciedade locais que sejam "atravessáveis").

### 1º Teorema do Bem-Estar (1º TBE)

**Enunciado (troca pura).** Em economia de troca pura com preferências satisfazendo LNS, todo equilíbrio competitivo $(p^*, x^*)$ é Pareto-eficiente.

**Demonstração linha-a-linha.**

Por contradição. Suponha que $x^*$ NÃO é Pareto-eficiente. Então existe alocação viável $\tilde x = (\tilde x^1, ..., \tilde x^I)$ tal que $u^i(\tilde x^i) \ge u^i(x^{*i})$ para todo $i$, com desigualdade estrita para algum $j$.

**Passo 1 — preço de $\tilde x^j$.** Como $u^j(\tilde x^j) > u^j(x^{*j})$ e $x^{*j}$ resolve UMP em $p^*$, obrigatoriamente $\tilde x^j$ está fora do conjunto orçamentário em $p^*$:
$$
p^*\cdot \tilde x^j > p^*\cdot \omega^j.
$$
(Se $p^*\cdot \tilde x^j \le p^*\cdot \omega^j$, então $\tilde x^j$ era viável e $x^{*j}$ não maximizaria — contradição.)

**Passo 2 — preço de $\tilde x^i$ para $i \neq j$.** Como $u^i(\tilde x^i) \ge u^i(x^{*i})$, podemos ter igualdade. Aqui é onde **LNS entra**: existe vizinhança $U$ de $\tilde x^i$ contendo cesta $\hat x^i$ estritamente preferida. Se $p^*\cdot \tilde x^i < p^*\cdot \omega^i$, então $p^*\cdot \hat x^i \le p^*\cdot \omega^i$ para $\hat x^i$ próximo (continuidade do produto interno), e $u^i(\hat x^i) > u^i(\tilde x^i) \ge u^i(x^{*i})$ — contradiz que $x^{*i}$ maximiza. Logo:
$$
p^*\cdot \tilde x^i \ge p^*\cdot \omega^i.
$$

**Passo 3 — somar e contradizer viabilidade.** Somando passo 1 e passo 2 sobre todos $i$:
$$
\sum_i p^*\cdot \tilde x^i \;>\; \sum_i p^*\cdot \omega^i.
$$
Mas $\tilde x$ é viável: $\sum_i \tilde x^i = \sum_i \omega^i$. Logo $\sum_i p^*\cdot \tilde x^i = \sum_i p^*\cdot \omega^i$. **Contradição.** $\blacksquare$

### Onde LNS é insubstituível

Se preferências têm um "platô" de saciedade no qual o consumidor não troca nada por mais (curva de indiferença "espessa" localmente), o argumento do passo 2 quebra: pode-se ter $p^*\cdot \tilde x^i < p^*\cdot \omega^i$ sem contradição, e o agregado falha.

**Construção do contraexemplo.** Considere $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$ — bem 1 satura em $x_1 = 1$. Em $\omega^A = (2, 2)$, $\omega^B = (0, 0)$ (caso patológico de fronteira), $A$ não tem incentivo a vender bem 1 acima de $1$. Equilíbrio em $p_1 = 0$ pode existir, mas $A$ está "saciado" no bem 1 e poderia trocar com $B$ por mais bem 2 sem perder utilidade — alocação não-Pareto-eficiente. 1º TBE falha por violação de LNS no bem 1 acima de 1.

### 2º Teorema do Bem-Estar — preliminar

**Enunciado intuitivo.** Sob convexidade (preferências convexas + viabilidade convexa), toda alocação Pareto-eficiente $x^*$ é equilíbrio competitivo de alguma economia obtida por **redistribuição lump-sum** das dotações iniciais.

**O que isso significa.** Dado $x^*$ Pareto-eficiente, existe vetor de preços $p^*$ e dotações redistribuídas $\hat\omega^i$ tais que:
- $\sum_i \hat\omega^i = \sum_i \omega^i$ (a redistribuição não cria recurso),
- $(p^*, x^*)$ é equilíbrio competitivo da economia $(\hat\omega, u)$.

**Implicação política.** Mercado pode atingir qualquer Pareto-eficiente desejado, contanto que se aceite redistribuição lump-sum (sem distorções tributárias). Em prática, lump-sum é não-implementável; daí a discussão de imposto ótimo (não na ementa).

**Hipótese-chave.** Convexidade é o que torna o argumento funcionar (separação entre dois conjuntos convexos via Hahn-Banach). Sem convexidade, contraexemplos clássicos: retornos crescentes na produção, indivisibilidades. Aulas 7–9 discutem.

**Atenção pedagógica:** o 2º TBE não vai ser provado nesta aula. Apenas anunciado. A prova rigorosa é Aula 6.

### Micro-checkpoints

**Q1 (s5q1).** O 1º TBE em troca pura usa qual hipótese estrutural sobre preferências?
- (a) Convexidade.
- (b) Não-saciedade local (LNS). **← CORRETA**
- (c) Homotetia.
- (d) Continuidade apenas.

**Q2 (s5q2).** Sobre o 2º TBE (preliminar):
- (a) Diz que todo Pareto-eficiente já é EC sem mexer em nada.
- (b) Diz que todo Pareto-eficiente é EC após redistribuição lump-sum, sob convexidade. **← CORRETA**
- (c) É consequência direta do 1º TBE.
- (d) Vale apenas em CD.

**Q3 (s5q3).** Em CD simétrica $u^A = u^B = x_1^{1/2}x_2^{1/2}$, $\omega^A = (3,1)$, $\omega^B = (1, 3)$, o equilíbrio competitivo tem:
- (a) $p_1^*/p_2^* = 3$ (escassez relativa de bem 1 para $A$).
- (b) $p_1^*/p_2^* = 1$ — total simétrico, preferências simétricas. **← CORRETA**
- (c) $p_1^*/p_2^* = 1/3$.
- (d) Não há EC — só núcleo.

---

## Seção 6 — Exercícios de papel

Análogos a N&S 12e §13.1 e §13.2 (e bônus de J-R §5.1).

**Exercício proposto 1 (N&S 13.1 análogo) — obrigatório.** Considere economia de troca pura com $u^A = u^B = x_1^{1/2}x_2^{1/2}$, $\omega^A = (10, 0)$, $\omega^B = (0, 10)$. (a) Encontre o EC (preço relativo + alocação). (b) Mostre graficamente a alocação na caixa de Edgeworth. (c) Verifique numericamente que está na contract curve.

**Exercício proposto 2 (N&S 13.2 análogo) — obrigatório.** Mesma economia do Ex 1, mas agora $u^A = x_1^{1/2}x_2^{1/2}$ e $u^B = \min\{x_1, x_2\}$ (Leontief). (a) Calcule a demanda de cada um como função de $p_1/p_2$. (b) Encontre o EC. (c) Comente sobre a unicidade.

**Exercício proposto 3 (bônus) — opcional.** No EC do Ex 1, mostre passo-a-passo que a alocação é Pareto-eficiente verificando o argumento por contradição: assuma $\exists \tilde x$ viável Pareto-superior; construa $p^*\cdot \sum_i \tilde x^i$ e mostre que excede $p^*\cdot \sum_i \omega^i$.

---

## Seção 7 — Checkpoint final (3 questões de síntese)

**Q1 (síntese — Edgeworth/Pareto).** Em economia de troca pura $2\times 2$ com utilidades CD diferentes, a contract curve geralmente:
- (a) É segmento de reta ligando os dois cantos da caixa.
- (b) É curva contínua dentro da caixa, conectando as duas origens; ponto a ponto satisfaz $\text{TMS}^A = \text{TMS}^B$. **← CORRETA**
- (c) É o ponto único de tangência.
- (d) Coincide com a diagonal da caixa.

**Q2 (síntese — Walras/EC).** Em $L = 3$ bens, a lei de Walras implica que para resolver EC basta zerar:
- (a) $z_1 = z_2 = z_3 = 0$ — três equações.
- (b) Quaisquer 2 dos 3 mercados; o terceiro fecha automaticamente. **← CORRETA**
- (c) Apenas o bem numerário.
- (d) A média $(z_1 + z_2 + z_3)/3 = 0$.

**Q3 (síntese — 1º TBE).** Em economia de troca pura com LNS, o argumento do 1º TBE consiste em:
- (a) Mostrar que toda alocação Pareto-eficiente é EC (recíproca do 1º TBE — esse é o 2º).
- (b) Assumir contradição: ∃ Pareto-superior; usar UMP individual + LNS para mostrar que custa mais que dotação para todos; agregar e contradizer viabilidade. **← CORRETA**
- (c) Provar existência via Brouwer.
- (d) Aplicar Slutsky agregada.

---

## Seção 8 — Reflexão qualitativa

Dois campos abertos obrigatórios:

1. Que conceito ainda está **nebuloso** (ex.: "por que LNS é necessário?", "como ler tangência na caixa?")?
2. Qual ponto você quer ver **discutido em sala** (ex.: "preço relativo único existe sempre?", "exemplos brasileiros de troca pura")?

---

## Calibre — checagem

- **N&S 12e:** §13.1 (Walras, normalização) + §13.2 (1º TBE em troca, teaser 2º TBE). Piso obrigatório.
- **J-R 3e:** §5.1 (troca pura, Edgeworth, núcleo) + parte de §5.2 (1º TBE). Sem entrar em existência (Kakutani).
- **MWG:** Cap. 15 (troca puro), Cap. 16 §16.B–§16.C (1º TBE). Citado cirurgicamente apenas se aluno mais maduro perguntar.
- **ZaE:** Cap. de EG (trocas), parte da consolidação narrativa.

Calibre da pré-aula: **definicional + 1 cálculo numérico + intuição do 1º TBE**. Não exigir prova rigorosa (essa é da aula presencial).
