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

A função de reação é crescente em \(p_2\) (coef. \(d/(2b) > 0\)): **complementos estratégicos** em preços. Se o rival eleva o preço, é ótimo para mim também elevar.

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
