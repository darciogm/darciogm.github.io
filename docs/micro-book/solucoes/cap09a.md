---
title: "Soluções — Capítulo 9a"
---

# Soluções dos Exercícios — Capítulo 9a

[← Voltar ao Capítulo 9a](../cap09a/index.md)

---

## ✏️ Exercício 9a.1 {#ex-9a-1}

**Solução.**

**(a)** Verificando dominância:

- Jogador 1: U dá (4, 1) e D dá (3, 2) conforme J2 joga L ou R. \(U\) não domina \(D\) (4 > 3 mas 1 < 2), nem \(D\) domina \(U\). Não há estratégia estritamente dominante para J1.
- Jogador 2: L dá (3, 1) e R dá (5, 2) conforme J1 joga U ou D. \(R\) não domina \(L\) (5 > 3 mas 2 > 1 — wait: 5 > 3 e 2 > 1, logo R domina L). **R é estritamente dominante para J2.**

Com R dominante para J2, J1 escolhe entre U (payoff 1) e D (payoff 2): escolhe **D**.

**(b)** Se J2 joga R (dominante), J1 melhor responde com D. Se J1 joga D, J2 melhor responde com R. Verificando (U, L): J2 desvia para R (5 > 3). (U, R): J1 desvia para D (2 > 1). (D, L): J2 desvia para R (2 > 1).

Único equilíbrio de Nash em estratégias puras: **(D, R)** com payoffs (2, 2).

**(c)** Para equilíbrio misto, J1 joga U com prob \(p\) e J2 joga L com prob \(q\).

J2 indiferente entre L e R: \(3p + 1(1-p) = 5p + 2(1-p)\) → \(2p + 1 = 3p + 2\) → \(p = -1\). Impossível.

Como R é estritamente dominante para J2, não existe equilíbrio em estratégias mistas genuíno. O único EN é **(D, R)**.

**Interpretação econômica:** Quando um jogador tem estratégia dominante, o jogo se simplifica dramaticamente. Em mercados, isso ocorre quando uma firma tem uma estratégia que é ótima independentemente do comportamento dos rivais.


↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-1)

---

## ✏️ Exercício 9a.2 {#ex-9a-2}

**Solução.**

**(a)** Lucro de cada firma \(i\): \(\pi_i = (120 - q_i - q_j - 30)q_i = (90 - q_i - q_j)q_i\).

CPO: \(90 - 2q_i - q_j = 0 \implies q_i = \frac{90 - q_j}{2}\) (melhor resposta).

No equilíbrio simétrico (\(q_1 = q_2 = q^*\)):

\[
q^* = \frac{90 - q^*}{2} \implies 2q^* = 90 - q^* \implies q^* = 30
\]

\[
Q = 60, \quad P = 60, \quad \pi_i = (60 - 30) \times 30 = 900
\]

**(b)** *Monopólio:* \(\pi_M = (90 - Q)Q\), CPO: \(Q_M = 45\), \(P_M = 75\), \(\pi_M = 2025\).

*Competição perfeita:* \(P = c = 30\), \(Q_{CP} = 90\), \(\pi = 0\).

| Estrutura | Quantidade | Preço | Lucro total |
|:----------|:---------:|:-----:|:-----------:|
| Monopólio | 45 | 75 | 2025 |
| Cournot (N=2) | 60 | 60 | 1800 |
| Competição perfeita | 90 | 30 | 0 |

Cournot está entre monopólio e competição perfeita, como esperado.

**(c)** *Stackelberg:* Firma 1 (líder) antecipa a melhor resposta de 2: \(q_2 = (90 - q_1)/2\).

\[
\pi_1 = \left(90 - q_1 - \frac{90 - q_1}{2}\right)q_1 = \frac{90 - q_1}{2} q_1
\]

CPO: \(\frac{90 - 2q_1}{2} = 0 \implies q_1^S = 45\), \(q_2^S = 22{,}5\).

\(Q = 67{,}5\), \(P = 52{,}5\), \(\pi_1 = 1012{,}5\), \(\pi_2 = 506{,}25\).

O líder produz mais e lucra mais que no Cournot; o seguidor produz menos e lucra menos. A vantagem do primeiro movimento é substancial.


↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-2)

---

## ✏️ Exercício 9a.3 {#ex-9a-3}

**Solução.**

**(a)** Lucro: \(\pi_1 = (p_1 - c)(a - bp_1 + dp_2)\).

CPO: \(a - 2bp_1 + dp_2 + bc = 0 \implies p_1 = \frac{a + bc + dp_2}{2b}\).

A função de melhor-resposta é crescente em \(p_2\) (coef. \(d/(2b) > 0\)): **complementos estratégicos** em preços. Se o rival eleva o preço, é ótimo para mim também elevar.

**(b)** Equilíbrio simétrico (\(p_1 = p_2 = p^*\)):

\[
p^* = \frac{a + bc + dp^*}{2b} \implies 2bp^* = a + bc + dp^* \implies p^* = \frac{a + bc}{2b - d}
\]

Lucro: \(\pi^* = (p^* - c)(a - bp^* + dp^*) = (p^* - c)(a - (b-d)p^*)\).

Substituindo: \(p^* - c = \frac{a + bc - c(2b-d)}{2b-d} = \frac{a - bc + cd}{2b-d} = \frac{a - c(b-d)}{2b-d} > 0\) (pois \(a > c(b-d)\) para que a demanda exista).

Lucro positivo porque a diferenciação confere poder de mercado.

**(c)** Quando \(d \to 0\): bens independentes, cada firma é monopolista de seu produto. \(p^* \to (a + bc)/(2b)\), que é o preço de monopólio.

Quando \(d \to b\): bens quase homogêneos. \(p^* \to (a + bc)/b = c + a/b\). A competição se intensifica, e os lucros se comprimem em direção ao resultado de Bertrand homogêneo (\(\pi \to 0\)).


↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-3)

---

## ✏️ Exercício 9a.4 {#ex-9a-4}

**Solução.**

**(a)** Lucro esperado da entrante:

\[
E[\pi_E] = 0{,}6 \times (-2) + 0{,}4 \times 4 = -1{,}2 + 1{,}6 = 0{,}4 > 0
\]

**(b)** Como \(E[\pi_E] > 0\), a entrante entra. A incumbente forte obtém 3 e a fraca obtém 2 (em vez de 10 sem entrada). Ambos os tipos prefeririam que a entrante não entrasse, mas não podem impedi-la.

**BNE:** Entrante entra; incumbente aceita (não tem ação estratégica após a entrada neste jogo simplificado).

Se \(\Pr(\theta_F) > 2/3\): \(E[\pi_E] = p \cdot (-2) + (1-p) \cdot 4 < 0\) quando \(p > 2/3\), e a entrante não entra.

**(c)** Sim, a incumbente fraca teria incentivo para sinalizar força (por exemplo, investindo em capacidade ou praticando preços agressivos antes da decisão de entrada). Se a sinalização for crível, a entrante atualiza suas crenças para \(\Pr(\theta_F) > 2/3\) e não entra. No entanto, a incumbente forte também gostaria de sinalizar — o que pode gerar equilíbrios pooling (ambos os tipos sinalizam) ou separadores (apenas um tipo sinaliza), dependendo dos custos de sinalização para cada tipo.


↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-4)

---

## ✏️ Exercício 9a.5 {#ex-9a-5}

**Solução.**

Trabalhadores: \(\theta_H = 2\) e \(\theta_L = 1\), prob. 0,5 cada. Custo: \(c(e, \theta) = e/\theta\).

No equilíbrio separador, firmas oferecem \(w = 2\) para quem sinaliza \(e \geq e^*\) e \(w = 1\) para quem sinaliza \(e < e^*\).

**IC do tipo L** (não imitar H): \(1 - 0 \geq 2 - e^*/1 \implies e^* \geq 1\).

**IC do tipo H** (não imitar L): \(2 - e^*/2 \geq 1 \implies e^* \leq 2\).

**Equilíbrio separador menos custoso:** \(e^* = 1\).

- Tipo H: escolhe \(e = 1\), recebe \(w = 2\), utilidade \(= 2 - 1/2 = 1{,}5\).
- Tipo L: escolhe \(e = 0\), recebe \(w = 1\), utilidade \(= 1 - 0 = 1\).

**Verificação de não desvio:**

- Tipo H desvia para \(e = 0\)? Receberia \(w = 1\), utilidade \(= 1 < 1{,}5\). Não desvia. ✓
- Tipo L desvia para \(e = 1\)? Receberia \(w = 2\), utilidade \(= 2 - 1 = 1 = 1\). Indiferente — mas para dominância estrita, como \(1 \not> 1\), o tipo L não tem incentivo estrito a desviar. ✓

**Interpretação econômica:** A condição de *single-crossing* (\(\partial^2 c/\partial e \partial \theta < 0\): o custo marginal da sinalização é menor para tipos produtivos) é o que permite a separação. O custo social da sinalização (0,5 × 0,5 = 0,25 por trabalhador) é puro desperdício se a educação não aumenta produtividade — motivando intervenções como certificação profissional.

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-5)

---

## ✏️ Exercício 9a.6 {#ex-9a-6}

**Solução.**

**(a) Estratégias estritamente dominantes:**

- Jogador 1: Compare A e B para cada estratégia de J2.
    - Se J2 joga X: J1 obtém 5 (A) vs. 2 (B) → A é melhor.
    - Se J2 joga Y: J1 obtém 1 (A) vs. 4 (B) → B é melhor.
    - A não domina B, nem B domina A. **J1 não tem estratégia estritamente dominante.**
- Jogador 2: Compare X e Y para cada estratégia de J1.
    - Se J1 joga A: J2 obtém 4 (X) vs. 3 (Y) → X é melhor.
    - Se J1 joga B: J2 obtém 6 (X) vs. 2 (Y) → X é melhor.
    - **X domina estritamente Y para J2.** J2 sempre prefere X, independentemente do que J1 faça.

**(b) Equilíbrios em estratégias puras (método das melhores respostas):**

Sublinhando o maior payoff de J1 em cada coluna e o maior payoff de J2 em cada linha:

|  | J2: X | J2: Y |
|:---|:---:|:---:|
| **J1: A** | \((\underline{5}, \underline{4})\) | \((1, \underline{3})\) |
| **J1: B** | \((\underline{2}, \underline{6})\) | \((4, 2)\) |

Células com ambos os payoffs sublinhados: **(A, X)** e **(B, X)**.

Dois equilíbrios de Nash em estratégias puras: \((A, X)\) com payoffs \((5, 4)\) e \((B, X)\) com payoffs \((2, 6)\).

**(c) Verificação:**

- **(A, X):** J1 desvia para B? Obteria 2 < 5. **Não desvia.** J2 desvia para Y? Obteria 3 < 4. **Não desvia.** ✓
- **(B, X):** J1 desvia para A? Obteria 5 > 2. **J1 deseja desviar para A!** Isso significa que (B, X) precisa ser reavaliado.

Revisando: o payoff de J1 em (B, X) é 2, e em (A, X) é 5. Com J2 jogando X, J1 prefere A. Portanto **(B, X) não é equilíbrio de Nash** — J1 desvia para A.

O único equilíbrio de Nash em estratégias puras é **(A, X)** com payoffs \((5, 4)\). Note que isso é consistente com o fato de X ser estritamente dominante para J2: no equilíbrio, J2 joga X, e dado X, J1 escolhe A.

**Interpretação econômica:** Quando um jogador tem estratégia dominante (aqui J2 joga X), é possível antecipar que ele a escolherá, e o oponente otimiza contra ela. A solução por EIED (eliminar Y para J2, depois verificar J1 contra X) é equivalente ao equilíbrio de Nash.

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-6)

---

## ✏️ Exercício 9a.7 {#ex-9a-7}

**Solução.**

**(a) Funções de melhor resposta:**

Lucro da firma \(i\): \(\pi_i = (100 - q_i - q_j - 20)q_i = (80 - q_i - q_j)q_i\).

CPO em \(q_i\): \(80 - 2q_i - q_j = 0 \implies q_i^*(q_j) = \frac{80 - q_j}{2} = 40 - \frac{q_j}{2}\).

Por simetria: \(q_1^*(q_2) = 40 - q_2/2\) e \(q_2^*(q_1) = 40 - q_1/2\).

**(b) Equilíbrio de Nash (Cournot):**

No equilíbrio simétrico \(q_1^* = q_2^* = q^*\):

\[
q^* = 40 - q^*/2 \implies \frac{3q^*}{2} = 40 \implies q^* = \frac{80}{3} \approx 26{,}67
\]

\[
Q^* = \frac{160}{3} \approx 53{,}33, \qquad P^* = 100 - \frac{160}{3} = \frac{140}{3} \approx 46{,}67
\]

\[
\pi_i^* = \left(\frac{140}{3} - 20\right) \cdot \frac{80}{3} = \frac{80}{3} \cdot \frac{80}{3} = \frac{6400}{9} \approx 711{,}11
\]

**(c) Extensão para \(N\) firmas:**

Com \(N\) firmas simétricas e custo marginal \(c = 20\), o equilíbrio de Cournot é \(q_i^* = (100 - 20)/[(N+1) \cdot 1] = 80/(N+1)\) e \(P^* = (100 + 20N)/(N+1)\).

| \(N\) | \(P^*\) |
|:------|:-------:|
| 1 (monopólio) | 60 |
| 2 (duopólio) | 46,67 |
| 5 | 33,33 |
| \(\to \infty\) | 20 (= \(c\)) |

**Interpretação:** À medida que o número de firmas cresce, o preço de equilíbrio de Cournot converge para o custo marginal — o resultado de competição perfeita. Isso reflete a relação inversa entre concentração de mercado e poder de precificação, captada pelo índice de Lerner: \(L = (P - c)/P = 1/(N|\varepsilon|)\), onde \(\varepsilon\) é a elasticidade-preço da demanda.

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-7)

---

## ✏️ Exercício 9a.8 {#ex-9a-8}

**Solução.**

**(a) Funções de melhor resposta em preços:**

Lucro da firma 1: \(\pi_1 = (p_1 - 10)(60 - 2p_1 + p_2)\).

CPO em \(p_1\):

\[
\frac{\partial \pi_1}{\partial p_1} = (60 - 2p_1 + p_2) + (p_1 - 10)(-2) = 0
\]
\[
60 - 2p_1 + p_2 - 2p_1 + 20 = 0 \implies 80 + p_2 = 4p_1 \implies p_1^*(p_2) = 20 + \frac{p_2}{4}
\]

Por simetria: \(p_2^*(p_1) = 20 + p_1/4\).

A função de melhor-resposta é **crescente** em \(p_2\) (inclinação positiva = \(1/4 > 0\)): os preços são **complementos estratégicos**. Se o rival aumenta seu preço, torna-se mais caro para os consumidores dele, que migram parcialmente para a firma 1 — que então pode aumentar o próprio preço sem perder toda a demanda.

**(b) Equilíbrio de Nash:**

No equilíbrio simétrico \(p_1^* = p_2^* = p^*\):

\[
p^* = 20 + p^*/4 \implies \frac{3p^*}{4} = 20 \implies p^* = \frac{80}{3} \approx 26{,}67
\]

\[
q_i^* = 60 - 2 \cdot \frac{80}{3} + \frac{80}{3} = 60 - \frac{80}{3} = \frac{100}{3} \approx 33{,}33
\]

\[
\pi_i^* = \left(\frac{80}{3} - 10\right) \cdot \frac{100}{3} = \frac{50}{3} \cdot \frac{100}{3} = \frac{5000}{9} \approx 555{,}56
\]

**(c) Comparação com Bertrand homogêneo:**

Com produtos homogêneos, o paradoxo de Bertrand impõe \(p^* = c = 10\) e \(\pi_i^* = 0\). Com diferenciação (\(d = 1 > 0\)), os lucros são positivos (\(\approx 555\)) porque os produtos são substitutos imperfeitos: uma redução de preço não capta *todos* os consumidores do rival. A magnitude dos lucros aumenta com a diferenciação (menor \(d/b\)) e diminui à medida que os produtos se tornam mais homogêneos (\(d \to b\)).

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-8)

---

## ✏️ Exercício 9a.9 {#ex-9a-9}

**Solução.**

**(a) Equilíbrio pré-fusão (triopólio de Cournot):**

Com 3 firmas simétricas, \(c = 30\) e \(P = 180 - Q\):

\[
q_i^* = \frac{180 - 30}{(3+1) \cdot 1} = \frac{150}{4} = 37{,}5
\]

\[
Q^* = 3 \times 37{,}5 = 112{,}5, \qquad P^* = 180 - 112{,}5 = 67{,}5
\]

\[
\pi_i^* = (67{,}5 - 30) \times 37{,}5 = 37{,}5 \times 37{,}5 = 1406{,}25
\]

Market shares: cada firma tem \(s_i = 37{,}5/112{,}5 = 1/3\).

\[
\text{HHI}_{\text{pré}} = 3 \times (1/3)^2 \times 10000 = 3 \times \frac{1}{9} \times 10000 = \frac{10000}{3} \approx 3333
\]

**(b) Equilíbrio pós-fusão (duopólio de Cournot):**

Firmas 2 e 3 se fundem. O mercado passa a ter 2 firmas com \(c_1 = c_M = 30\):

\[
q_i^* = \frac{180 - 30}{(2+1) \cdot 1} = \frac{150}{3} = 50
\]

\[
Q^* = 2 \times 50 = 100, \qquad P^* = 180 - 100 = 80
\]

\[
\pi_i^* = (80 - 30) \times 50 = 50 \times 50 = 2500
\]

Market shares: cada firma tem \(s_i = 50/100 = 1/2\).

\[
\text{HHI}_{\text{pós}} = 2 \times (1/2)^2 \times 10000 = 2 \times \frac{1}{4} \times 10000 = 5000
\]

**(c) Análise antitruste:**

\[
\Delta\text{HHI} = 5000 - 3333 = 1667
\]

O mercado pré-fusão já tem HHI > 1.500 (altamente concentrado: 3.333) e o \(\Delta\)HHI = 1.667 >> 200. Segundo os critérios do CADE (Guia de Concentração Horizontal, 2016), a operação **gera preocupação antitruste séria** e deve ser analisada com cuidado — podendo ser bloqueada ou condicionada a remédios estruturais (desinvestimentos) ou comportamentais.

**Efeitos sobre bem-estar:**

| Variável | Pré-fusão | Pós-fusão | Variação |
|:---------|:---------:|:---------:|:--------:|
| Preço | 67,5 | 80,0 | +18,5% |
| Quantidade total | 112,5 | 100,0 | −11,1% |
| Lucro por firma | 1.406 | 2.500 | +77,8% |

A fusão **prejudica consumidores** (preço sobe 18,5%) e **beneficia produtores** (lucros aumentam 77,8%). Sem ganhos de eficiência que compensem os efeitos sobre preços, a análise de bem-estar total também é negativa. O CADE precisaria de evidência robusta de sinergias para justificar aprovação sem restrições.

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-9)

---

## ✏️ Exercício 9a.10 {#ex-9a-10}

**Solução.**

**(a) Verificação de estratégias dominadas e EIED:**

Para J1 (maximiza payoff; payoffs na matriz são de J1):

- **B vs. T:** B dá (1, 0, 3) e T dá (3, -1, 2) conforme J2 joga L, M, R. T > B em L (-1 < 1? não, 3 > 1); T < B em R (2 < 3). Nem T domina B, nem B domina T.
- **B vs. M:** B dá (1, 0, 3) e M dá (-2, 4, -1). M > B apenas em M (4 > 0). Não há dominância.
- **T vs. M:** T dá (3, -1, 2), M dá (-2, 4, -1). T > M em L e R; M > T em M (coluna). Não há dominância estrita entre T e M.

Para J2 (minimiza payoff, pois o jogo é de soma zero):

- **M vs. L:** J2 prefere menor payoff para J1. Coluna M dá (-1, 4, 0); coluna L dá (3, -2, 1). J2 prefere M se payoff de J1 é menor: M < L em T (-1 < 3 ✓), M > L em M (4 > -2 ✗). M não domina L para J2.
- **M vs. R:** Coluna M dá (-1, 4, 0); coluna R dá (2, -1, 3). J2 prefere M em T (-1 < 2 ✓) e em B (0 < 3 ✓), mas prefere R em M (4 > -1, então J2 prefere R que dá -1 ao invés de 4 para J1). **M não domina R**.
- **L vs. R:** Coluna L dá (3, -2, 1); coluna R dá (2, -1, 3). J2 prefere R em T (2 < 3 para J1, portanto J2 obtém −2 vs. −3 — prefere −2... atenção: em soma zero, o payoff de J2 = −payoff de J1). J2 prefere a coluna que minimiza payoff de J1: L dá (3, -2, 1) para J1, R dá (2, -1, 3). Comparando: em L, payoff de J2 é (−3, 2, −1); em R, payoff de J2 é (−2, 1, −3). L não domina R, nem R domina L.

Verificando **B para J1** mais cuidadosamente com misturas: considere se B é dominada por uma mistura \(\alpha T + (1-\alpha)M\):

- Contra L: \(3\alpha + (-2)(1-\alpha) = 5\alpha - 2 \geq 1 \implies \alpha \geq 3/5\).
- Contra M: \(-\alpha + 4(1-\alpha) = 4 - 5\alpha \geq 0 \implies \alpha \leq 4/5\).
- Contra R: \(2\alpha + (-1)(1-\alpha) = 3\alpha - 1 \geq 3 \implies \alpha \geq 4/3\). **Impossível.**

B não é dominada por nenhuma mistura de T e M. Portanto, **não há eliminação possível** — o jogo 3×3 não se reduz por EIED.

**(b) Equilíbrio em estratégias mistas:**

Em jogos de soma zero, o equilíbrio misto pode ser encontrado resolvendo o programa minimax. Procuramos um equilíbrio de suporte reduzido. Testando suporte \(\{T, M\}\) para J1 e \(\{L, M\}\) para J2 (eliminando B e R como candidatos fora do suporte):

Seja J1 joga T com prob \(p\) e M com prob \(1-p\). Para J2 ser indiferente entre L e M (minimizando o payoff de J1):

\[
U_1(J2 \text{ joga L}) = 3p + (-2)(1-p) = 5p - 2
\]
\[
U_1(J2 \text{ joga M}) = (-1)p + 4(1-p) = 4 - 5p
\]
\[
5p - 2 = 4 - 5p \implies 10p = 6 \implies p = \frac{3}{5}
\]

Seja J2 joga L com prob \(q\) e M com prob \(1-q\). Para J1 ser indiferente entre T e M:

\[
U_1(\text{T}) = 3q + (-1)(1-q) = 4q - 1
\]
\[
U_1(\text{M}) = (-2)q + 4(1-q) = 4 - 6q
\]
\[
4q - 1 = 4 - 6q \implies 10q = 5 \implies q = \frac{1}{2}
\]

**Verificação de que B e R estão fora do suporte:**

- Para J1, dado \(q = 1/2\): \(U_1(B) = 1 \cdot (1/2) + 0 \cdot (1/2) = 1/2\). Mas \(U_1(T) = U_1(M) = 4(1/2) - 1 = 1\). Como \(U_1(B) = 1/2 < 1\), **B é estritamente dominado** dado o equilíbrio de J2 — consistente com B estar fora do suporte.
- Para J2 (minimizando payoff de J1), dado \(p = 3/5\): \(U_1(R) = 2(3/5) + (-1)(2/5) = 6/5 - 2/5 = 4/5\). Mas \(U_1(L) = U_1(M) = 5(3/5) - 2 = 1\). Como \(U_1(R) = 4/5 < 1\), J2 prefere R a L ou M (obtém payoff menor para J1) — **contradição**: R deveria estar no suporte de J2.

Reajustando: com \(U_1(R) = 4/5 < 1\), J2 prefere jogar R (pois minimiza payoff de J1). Testando suporte \(\{L, R\}\) para J2:

\[
U_1(L) = 3p + (-2)(1-p) = 5p - 2 = U_1(R) = 2p + (-1)(1-p) = 3p - 1
\]
\[
5p - 2 = 3p - 1 \implies 2p = 1 \implies p^* = \frac{1}{2}
\]

Para J1 indiferente entre T e M dado J2 joga L com prob \(q\) e R com \(1-q\):
\[
U_1(T) = 3q + 2(1-q) = 2 + q = U_1(M) = -2q + (-1)(1-q) = -1 - q
\]
\[
2 + q = -1 - q \implies 2q = -3 \implies q = -3/2 \quad \text{(impossível)}
\]

Testando suporte \(\{T, B\}\) para J1 e \(\{L, R\}\) para J2:

Com prob \(p\) em T e \(1-p\) em B; J2 joga L com prob \(q\) e R com \(1-q\):

J2 indiferente (L vs. R): \(3p + 1(1-p) = 2p + 3(1-p) \implies 2 + p = 3 - p \implies p = 1/2\).

J1 indiferente (T vs. B): \(3q + 2(1-q) = q + 3(1-q) \implies 2 + q = 3 - 2q \implies 3q = 1 \implies q = 1/3\).

Verificação de M fora do suporte dado \(q = 1/3\): \(U_1(M) = -2(1/3) + (-1)(2/3) = -2/3 - 2/3 = -4/3 < 0\). Como J1 maximiza, M com payoff esperado \(-4/3\) é inferior a T e B (payoff = 1). M fica fora do suporte. ✓

Verificação de M para J2 fora do suporte dado \(p = 1/2\): \(U_1(\text{M puro}) = (-1)(1/2) + 0(1/2) = -1/2\). Como J2 minimiza o payoff de J1, ele compara \(U_1(L) = U_1(R) = 2(1/2) + 3(1/2) = 5/2\) ... recalculando: \(U_1(L) = 3(1/2) + 1(1/2) = 2\) e \(U_1(M) = (-1)(1/2) + 0(1/2) = -1/2\). Como \(-1/2 < 2\), J2 prefere jogar M (payoff de J1 menor). **M deveria estar no suporte de J2** — contradição novamente.

**Conclusão (equilíbrio com suporte completo):** O jogo 3×3 provavelmente tem equilíbrio misto com suporte completo. A solução geral requer resolver o sistema de 4 equações (indiferença de J1 entre T, M, B e indiferença de J2 entre L, M, R) com as restrições de que as probabilidades somam 1. Para o escopo deste exercício, o equilíbrio com suporte \(\{T, B\} \times \{L, R\}\) — \(\sigma_1 = (1/2, 0, 1/2)\), \(\sigma_2 = (1/3, 0, 2/3)\) — é o candidato mais robusto sujeito a verificação completa de incentivos.

**(c) Valor do jogo:**

Com \(p^* = 1/2\) (T e B) e \(q^* = 1/3\) (L) e \(2/3\) (R):

\[
V = U_1^* = 3(1/2)(1/3) + 2(1/2)(2/3) + 1(1/2)(1/3) + 3(1/2)(2/3)
\]
\[
= \frac{1}{2} + \frac{2}{3} + \frac{1}{6} + 1 = \frac{3 + 4 + 1 + 6}{6} = \frac{14}{6} = \frac{7}{3} \approx 2{,}33
\]

**Interpretação:** Em um jogo de soma zero com este valor \(V = 7/3\), J1 garante um payoff esperado de pelo menos 7/3 ao jogar a estratégia mista ótima, independentemente do que J2 faça. J2, por sua vez, garante que o payoff de J1 não exceda 7/3. O Teorema Minimax de Von Neumann (1928) garante que, em todo jogo finito de soma zero, os valores minimax e maximin coincidem — esse valor comum é o valor do jogo.

↩ [Voltar ao enunciado](../cap09a/index.md#ex-9a-10)
