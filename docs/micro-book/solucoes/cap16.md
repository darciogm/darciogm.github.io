---
title: "Soluções — Capítulo 16"
---

# Soluções dos Exercícios — Capítulo 16

[← Voltar ao Capítulo 16](../cap16/index.md)

---

## ✏️ Exercício 16.1 {#ex-16-1}

**Duopólio de Cournot com custos assimétricos.**

Dados: \( P = 120 - Q \), onde \( Q = q_1 + q_2 \), \( c_1 = 20 \), \( c_2 = 30 \).

### (a) Funções de melhor-resposta

A firma 1 maximiza:

\[
\pi_1 = (120 - q_1 - q_2) q_1 - 20 q_1
\]

\[
\frac{\partial \pi_1}{\partial q_1} = 120 - 2q_1 - q_2 - 20 = 0
\]

\[
\implies q_1^*(q_2) = \frac{100 - q_2}{2} = 50 - \frac{q_2}{2}
\]

A firma 2 maximiza:

\[
\pi_2 = (120 - q_1 - q_2) q_2 - 30 q_2
\]

\[
\frac{\partial \pi_2}{\partial q_2} = 120 - q_1 - 2q_2 - 30 = 0
\]

\[
\implies q_2^*(q_1) = \frac{90 - q_1}{2} = 45 - \frac{q_1}{2}
\]

### (b) Quantidades, preço e lucros de equilíbrio

Substituindo \( q_2^* \) em \( q_1^* \):

\[
q_1 = 50 - \frac{1}{2}\left(45 - \frac{q_1}{2}\right) = 50 - 22{,}5 + \frac{q_1}{4}
\]

\[
\frac{3}{4} q_1 = 27{,}5 \implies q_1^* = \frac{110}{3} \approx 36{,}67
\]

\[
q_2^* = 45 - \frac{1}{2} \cdot \frac{110}{3} = 45 - \frac{55}{3} = \frac{80}{3} \approx 26{,}67
\]

Produção total e preço:

\[
Q^* = \frac{110}{3} + \frac{80}{3} = \frac{190}{3} \approx 63{,}33
\]

\[
P^* = 120 - \frac{190}{3} = \frac{170}{3} \approx 56{,}67
\]

Lucros:

\[
\pi_1 = \left(\frac{170}{3} - 20\right) \cdot \frac{110}{3} = \frac{110}{3} \cdot \frac{110}{3} = \frac{12100}{9} \approx 1344{,}44
\]

\[
\pi_2 = \left(\frac{170}{3} - 30\right) \cdot \frac{80}{3} = \frac{80}{3} \cdot \frac{80}{3} = \frac{6400}{9} \approx 711{,}11
\]

### (c) Comparação com custos simétricos \( c = 20 \)

Se ambas tivessem \( c = 20 \), pela simetria do Cournot:

\[
q_i^* = \frac{120 - 20}{3} = \frac{100}{3} \approx 33{,}33, \quad Q^* = \frac{200}{3} \approx 66{,}67
\]

\[
P^* = 120 - \frac{200}{3} = \frac{160}{3} \approx 53{,}33
\]

No caso assimétrico, \( Q^* = 190/3 \approx 63{,}33 \), que é menor que \( 200/3 \approx 66{,}67 \). O preço é maior e a quantidade total é menor.

O custo total de produção no caso assimétrico é:

\[
CT_{\text{assim}} = 20 \cdot \frac{110}{3} + 30 \cdot \frac{80}{3} = \frac{2200 + 2400}{3} = \frac{4600}{3} \approx 1533{,}33
\]

No caso simétrico:

\[
CT_{\text{sim}} = 20 \cdot \frac{200}{3} = \frac{4000}{3} \approx 1333{,}33
\]

A assimetria de custos **reduz o excedente total**. Há dois efeitos negativos: (i) a produção total cai, reduzindo o excedente do consumidor; (ii) a produção é alocada de forma ineficiente — a firma menos eficiente (firma 2) produz uma parcela significativa do total, elevando o custo médio de produção da indústria. A eficiência produtiva exigiria que toda a produção fosse feita pela firma de menor custo.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-1)

---

## ✏️ Exercício 16.2 {#ex-16-2}

**Bertrand com produtos diferenciados.**

Dados: \( q_1 = 100 - 2p_1 + p_2 \), \( q_2 = 100 - 2p_2 + p_1 \), \( CMg = c = 10 \).

### (a) Funções de melhor-resposta em preços

A firma 1 maximiza:

\[
\pi_1 = (p_1 - 10)(100 - 2p_1 + p_2)
\]

\[
\frac{\partial \pi_1}{\partial p_1} = (100 - 2p_1 + p_2) + (p_1 - 10)(-2) = 0
\]

\[
100 - 2p_1 + p_2 - 2p_1 + 20 = 0
\]

\[
120 + p_2 - 4p_1 = 0 \implies p_1^*(p_2) = \frac{120 + p_2}{4} = 30 + \frac{p_2}{4}
\]

Por simetria, a função de melhor-resposta da firma 2 é:

\[
p_2^*(p_1) = 30 + \frac{p_1}{4}
\]

### (b) Equilíbrio de Nash em preços e quantidades

Pela simetria, \( p_1^* = p_2^* = p^* \). Substituindo:

\[
p^* = 30 + \frac{p^*}{4} \implies \frac{3}{4} p^* = 30 \implies p^* = 40
\]

Quantidades de equilíbrio:

\[
q_i^* = 100 - 2(40) + 40 = 100 - 80 + 40 = 60
\]

Lucros de equilíbrio:

\[
\pi_i^* = (40 - 10) \cdot 60 = 1800
\]

### (c) Preços acima do custo marginal

No equilíbrio, \( p^* = 40 > 10 = c \). A diferenciação de produtos resolve o **paradoxo de Bertrand**: quando os bens não são substitutos perfeitos, cada firma possui algum poder de mercado sobre seus consumidores. Uma redução de preço pela firma rival atrai apenas parte dos consumidores da concorrente — a demanda não se desloca integralmente como no caso homogêneo. Assim, cortar preços até o custo marginal deixa de ser a estratégia ótima, e as firmas conseguem sustentar margens positivas em equilíbrio.

Note que as funções de melhor-resposta em preços têm inclinação positiva (\( \partial p_i^*/\partial p_j = 1/4 > 0 \)), característica da competição em preços com bens diferenciados: preços são **complementos estratégicos**. Quando a rival eleva seu preço, a melhor resposta é também elevar o próprio preço.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-2)

---

## ✏️ Exercício 16.3 {#ex-16-3}

**Cournot com \( n \) firmas idênticas e entrada livre.**

Dados: \( P = 200 - Q \), \( c = 20 \), custo fixo de entrada \( f = 400 \).

### (a) Preço, quantidade e lucro por firma em função de \( n \)

Com \( n \) firmas idênticas no Cournot, a firma \( i \) maximiza:

\[
\pi_i = (200 - Q_{-i} - q_i) q_i - 20 q_i
\]

CPO:

\[
200 - Q_{-i} - 2q_i - 20 = 0 \implies q_i = \frac{180 - Q_{-i}}{2}
\]

Por simetria, \( Q_{-i} = (n-1) q^* \) e \( q_i = q^* \):

\[
q^* = \frac{180 - (n-1)q^*}{2} \implies 2q^* = 180 - (n-1)q^* \implies q^*(n+1) = 180
\]

\[
q^*(n) = \frac{180}{n+1}
\]

Quantidade total:

\[
Q^*(n) = n \cdot \frac{180}{n+1} = \frac{180n}{n+1}
\]

Preço de equilíbrio:

\[
P^*(n) = 200 - \frac{180n}{n+1} = \frac{200(n+1) - 180n}{n+1} = \frac{200 + 20n}{n+1} = \frac{20(n + 10)}{n+1}
\]

Lucro operacional por firma (antes do custo fixo):

\[
\pi_i(n) = (P^* - 20) \cdot q^* = \left(\frac{20(n+10)}{n+1} - 20\right) \cdot \frac{180}{n+1}
\]

\[
= \frac{20(n+10) - 20(n+1)}{n+1} \cdot \frac{180}{n+1} = \frac{20 \cdot 9}{n+1} \cdot \frac{180}{n+1} = \frac{180^2}{(n+1)^2} = \frac{32400}{(n+1)^2}
\]

Lucro líquido:

\[
\Pi_i(n) = \frac{32400}{(n+1)^2} - 400
\]

### (b) Número de firmas em equilíbrio de livre entrada

No equilíbrio de livre entrada, a última firma que entra obtém lucro não negativo, mas uma firma adicional obteria lucro negativo:

\[
\Pi_i(n) \geq 0 \implies \frac{32400}{(n+1)^2} \geq 400 \implies (n+1)^2 \leq 81 \implies n+1 \leq 9 \implies n \leq 8
\]

Verificação para \( n = 8 \):

\[
\Pi_i(8) = \frac{32400}{81} - 400 = 400 - 400 = 0
\]

Para \( n = 9 \):

\[
\Pi_i(9) = \frac{32400}{100} - 400 = 324 - 400 = -76 < 0
\]

O equilíbrio de livre entrada tem **\( n^* = 8 \) firmas**, com lucro líquido zero para cada uma.

### (c) Número socialmente ótimo de firmas

O bem-estar social é o excedente total menos os custos fixos totais. O excedente total (sem custos fixos) é:

\[
W(n) = \underbrace{\frac{Q^2}{2}}_{\text{EC}} + \underbrace{(P - c) \cdot Q}_{\text{lucro operacional total}} - n \cdot f
\]

Como \( P - c = \frac{20 \cdot 9}{n+1} = \frac{180}{n+1} \) e \( Q = \frac{180n}{n+1} \):

\[
EC = \frac{1}{2} \left(\frac{180n}{n+1}\right)^2 = \frac{32400 n^2}{2(n+1)^2}
\]

Lucro operacional total:

\[
n \cdot \frac{32400}{(n+1)^2} = \frac{32400 n}{(n+1)^2}
\]

Bem-estar:

\[
W(n) = \frac{32400 n^2}{2(n+1)^2} + \frac{32400 n}{(n+1)^2} - 400n = \frac{32400 n(n + 2)}{2(n+1)^2} - 400n
\]

\[
= \frac{16200 n(n+2)}{(n+1)^2} - 400n
\]

Calculando para alguns valores:

| \( n \) | \( \frac{16200 n(n+2)}{(n+1)^2} \) | \( 400n \) | \( W(n) \) |
|---|---|---|---|
| 5 | \( \frac{16200 \cdot 5 \cdot 7}{36} = \frac{567000}{36} = 15750 \) | 2000 | 13750 |
| 6 | \( \frac{16200 \cdot 6 \cdot 8}{49} = \frac{777600}{49} \approx 15869{,}39 \) | 2400 | 13469{,}39 |
| 7 | \( \frac{16200 \cdot 7 \cdot 9}{64} = \frac{1020600}{64} \approx 15946{,}88 \) | 2800 | 13146{,}88 |
| 4 | \( \frac{16200 \cdot 4 \cdot 6}{25} = \frac{388800}{25} = 15552 \) | 1600 | 13952 |
| 3 | \( \frac{16200 \cdot 3 \cdot 5}{16} = \frac{243000}{16} = 15187{,}5 \) | 1200 | 13987{,}5 |
| 2 | \( \frac{16200 \cdot 2 \cdot 4}{9} = \frac{129600}{9} = 14400 \) | 800 | 13600 |

O bem-estar é maximizado com **\( n^{**} = 3 \) firmas** (ou possivelmente 4, ambos próximos — verificando o bem-estar marginal, \( W(3) = 13987{,}5 > W(4) = 13952 \)).

**Sim, há excesso de entrada.** O equilíbrio de livre entrada produz \( n^* = 8 \) firmas, enquanto o ótimo social requer apenas \( n^{**} = 3 \). Isso ocorre porque firmas entrantes capturam parte do excedente de firmas já instaladas (efeito de "roubo de negócio"), mas cada entrante gera custos fixos adicionais. A contribuição marginal de cada firma para o bem-estar social é decrescente, enquanto o custo fixo é constante. As firmas entram até zerar seus lucros privados, desconsiderando a externalidade negativa que impõem às demais — resultado clássico de **excesso de entrada** em oligopólios com custos fixos.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-3)

---

## ✏️ Exercício 16.4 {#ex-16-4}

**Colusão em Bertrand repetido infinitamente com estratégia de gatilho (grim trigger).**

Dados: \( Q = 100 - p \), \( c = 40 \), fator de desconto \( \delta \).

### (a) Preço de monopólio e lucro dividido

A receita do monopolista é:

\[
\pi^M = (p - 40)(100 - p)
\]

Maximizando:

\[
\frac{\partial \pi^M}{\partial p} = 100 - p - (p - 40) = 140 - 2p = 0 \implies p^M = 70
\]

\[
Q^M = 100 - 70 = 30
\]

\[
\pi^M = (70 - 40) \cdot 30 = 900
\]

Com duas firmas dividindo igualmente o mercado, o lucro de cada uma na colusão é:

\[
\pi^{\text{col}} = \frac{900}{2} = 450
\]

### (b) Fator de desconto mínimo para sustentabilidade da colusão

Na estratégia de gatilho, se uma firma desvia, ela cobra \( p = p^M - \varepsilon \) e captura todo o mercado, obtendo lucro aproximadamente igual a \( \pi^M = 900 \). Nos períodos seguintes, a punição é o equilíbrio de Bertrand com \( p = c = 40 \), gerando lucro zero para ambas.

O valor presente do lucro com colusão:

\[
V^{\text{col}} = \frac{\pi^{\text{col}}}{1 - \delta} = \frac{450}{1 - \delta}
\]

O valor presente com desvio:

\[
V^{\text{desv}} = 900 + \frac{\delta \cdot 0}{1 - \delta} = 900
\]

A colusão é sustentável se:

\[
V^{\text{col}} \geq V^{\text{desv}} \implies \frac{450}{1 - \delta} \geq 900
\]

\[
\implies 450 \geq 900(1 - \delta) \implies 450 \geq 900 - 900\delta \implies 900\delta \geq 450
\]

\[
\implies \delta \geq \frac{1}{2}
\]

O fator de desconto mínimo para sustentar a colusão é \( \delta^* = \frac{1}{2} \).

**Interpretação:** as firmas precisam ser suficientemente pacientes (valorizarem o futuro o bastante) para que o ganho de curto prazo do desvio não compense a perda dos lucros de colusão futuros.

### (c) Com três firmas

Com \( n = 3 \) firmas, o lucro de colusão por firma é:

\[
\pi^{\text{col}} = \frac{900}{3} = 300
\]

O desvio ainda rende aproximadamente \( \pi^M = 900 \) (a firma desviante captura todo o mercado cobrando ligeiramente abaixo de \( p^M \)).

A condição de sustentabilidade:

\[
\frac{300}{1 - \delta} \geq 900 \implies 300 \geq 900(1 - \delta) \implies 900\delta \geq 600
\]

\[
\implies \delta \geq \frac{2}{3}
\]

Com três firmas, o fator de desconto mínimo sobe para \( \delta^* = \frac{2}{3} \).

**Interpretação:** com mais firmas, a colusão é mais difícil de sustentar. Cada firma recebe uma fatia menor do lucro de monopólio durante a cooperação, mas o ganho do desvio continua sendo a captura de todo o mercado. Assim, a tentação relativa de desviar cresce. Em geral, para \( n \) firmas, \( \delta^* = \frac{n-1}{n} \), convergindo para 1 à medida que \( n \to \infty \) — tornando a colusão praticamente impossível em mercados com muitas firmas.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-4)

---

## ✏️ Exercício 16.5 {#ex-16-5}

**Stackelberg com custos assimétricos.**

Dados: \( P = 100 - q_L - q_S \), \( c_L = 10 \) (líder), \( c_S = 20 \) (seguidora).

### (a) Função de melhor-resposta da seguidora

A seguidora maximiza tomando \( q_L \) como dado:

\[
\pi_S = (100 - q_L - q_S) q_S - 20 q_S
\]

\[
\frac{\partial \pi_S}{\partial q_S} = 100 - q_L - 2q_S - 20 = 0
\]

\[
\implies q_S^*(q_L) = \frac{80 - q_L}{2} = 40 - \frac{q_L}{2}
\]

### (b) Equilíbrio de Stackelberg

A líder antecipa a reação da seguidora e maximiza:

\[
\pi_L = \left(100 - q_L - \left(40 - \frac{q_L}{2}\right)\right) q_L - 10 q_L
\]

\[
= \left(60 - \frac{q_L}{2}\right) q_L - 10 q_L = \left(50 - \frac{q_L}{2}\right) q_L
\]

\[
= 50 q_L - \frac{q_L^2}{2}
\]

\[
\frac{\partial \pi_L}{\partial q_L} = 50 - q_L = 0 \implies q_L^* = 50
\]

Quantidade da seguidora:

\[
q_S^* = 40 - \frac{50}{2} = 40 - 25 = 15
\]

Quantidade total e preço:

\[
Q^* = 50 + 15 = 65
\]

\[
P^* = 100 - 65 = 35
\]

Lucros:

\[
\pi_L = (35 - 10) \cdot 50 = 25 \cdot 50 = 1250
\]

\[
\pi_S = (35 - 20) \cdot 15 = 15 \cdot 15 = 225
\]

### (c) Comparação com Cournot simultâneo (mesmos custos assimétricos)

No Cournot simultâneo com \( c_1 = 10 \), \( c_2 = 20 \):

Funções de melhor-resposta:

\[
q_1^*(q_2) = \frac{90 - q_2}{2}, \quad q_2^*(q_1) = \frac{80 - q_1}{2}
\]

Resolvendo o sistema:

\[
q_1 = \frac{90 - \frac{80 - q_1}{2}}{2} = \frac{90}{2} - \frac{80 - q_1}{4} = 45 - 20 + \frac{q_1}{4}
\]

\[
\frac{3}{4} q_1 = 25 \implies q_1^C = \frac{100}{3} \approx 33{,}33
\]

\[
q_2^C = \frac{80 - 100/3}{2} = \frac{140/3}{2} = \frac{70}{3} \approx 23{,}33
\]

\[
Q^C = \frac{100 + 70}{3} = \frac{170}{3} \approx 56{,}67
\]

\[
P^C = 100 - \frac{170}{3} = \frac{130}{3} \approx 43{,}33
\]

**Comparação:**

| | Stackelberg | Cournot |
|---|---|---|
| \( Q \) | 65 | 56{,}67 |
| \( P \) | 35 | 43{,}33 |
| \( q_{\text{eficiente}} \) | 50 | 33{,}33 |
| \( q_{\text{ineficiente}} \) | 15 | 23{,}33 |

O **Stackelberg gera maior excedente total** por duas razões:

1. **Maior produção total:** \( Q^S = 65 > Q^C \approx 56{,}67 \), resultando em preço menor e maior excedente do consumidor.

2. **Melhor alocação produtiva:** no Stackelberg, a firma eficiente (líder, \( c_L = 10 \)) produz uma proporção muito maior do total (50/65 = 76{,}9%) comparada ao Cournot (33{,}33/56{,}67 = 58{,}8%). Como a produção se concentra mais na firma de menor custo, o custo total de produção é menor.

O custo total de produção no Stackelberg é \( 10 \cdot 50 + 20 \cdot 15 = 800 \), enquanto no Cournot é \( 10 \cdot 100/3 + 20 \cdot 70/3 = 1000/3 + 1400/3 = 2400/3 = 800 \). Os custos totais são iguais neste caso, então o ganho de bem-estar do Stackelberg vem inteiramente do maior volume de produção e, consequentemente, do maior excedente do consumidor. A vantagem de primeiro movimento permite à líder expandir sua produção de forma crível, disciplinando a seguidora e aproximando o resultado do competitivo.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-5)

---

## ✏️ Exercício 16.6 {#ex-16-6}

**Hotelling com \( t = 4 \), \( c = 2 \), firmas em 0 e 1.**

### (a) Equilíbrio

No equilíbrio simétrico de Hotelling com custos marginais: \( p_1^* = p_2^* = c + t = 2 + 4 = 6 \).

Demandas: \( q_1 = q_2 = 1/2 \) (cada firma serve metade do mercado).

Lucros: \( \pi_1 = \pi_2 = (p - c) \cdot q = (6-2) \cdot 1/2 = 2 \).

### (b) Se \( t = 1 \)

\( p^* = 2 + 1 = 3 \), \( \pi = (3-2)/2 = 0{,}5 \).

Com menor diferenciação, preços e lucros caem. No limite \( t \to 0 \), o mercado converge para Bertrand com bens homogêneos (\( p = c \), lucro zero).

### (c) Firma 1 em \( x_1 = 1/4 \)

O consumidor indiferente: \( p_1 + t|x - 1/4| = p_2 + t|x - 1| \). No equilíbrio simétrico em preços, isso se resolve numericamente. A firma 1, ao se aproximar do centro, captura mais consumidores e força a firma 2 a reduzir preços. Em geral, a firma que se aproxima do centro ganha market share mas intensifica a competição (princípio de diferenciação mínima vs. máxima de Hotelling).

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-6)

---

## ✏️ Exercício 16.7 {#ex-16-7}

**Competição monopolística com \( S = 1000 \), \( b = 2 \), \( C(q) = 100 + 10q \).**

### (a) Equilíbrio simétrico de curto prazo

No equilíbrio simétrico, \( p_i = \bar{p} \) para todo \( i \), então \( q = S/n = 1000/n \).

Cada firma maximiza lucro tomando \( \bar{p} \) como dado. A CPO dá \( p = c + q/(2b) = 10 + 1000/(2 \cdot 2 \cdot n) = 10 + 250/n \).

Lucro: \( \pi = (p - c)q - f = (250/n)(1000/n) - 100 = 250.000/n^2 - 100 \).

### (b) Longo prazo (\( \pi = 0 \))

\( 250.000/n^2 = 100 \implies n^2 = 2.500 \implies n^* = 50 \).

### (c) Excesso de capacidade

No equilíbrio: \( q^* = 1000/50 = 20 \). O custo médio mínimo ocorre onde \( CMe = 100/q + 10 \) é minimizado, ou seja, quando o custo fixo por unidade é arbitrariamente pequeno — formalmente, \( q_{eff} \to \infty \). Na prática, \( q = 20 \) implica \( CMe = 100/20 + 10 = 15 \), que excede o custo marginal (10). A firma opera com excesso de capacidade: produz menos do que minimizaria seu custo médio.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-7)

---

## ✏️ Exercício 16.8 {#ex-16-8}

**5 firmas: 35%, 25%, 20%, 12%, 8%.**

### (a) HHI

\( HHI = 35^2 + 25^2 + 20^2 + 12^2 + 8^2 = 1.225 + 625 + 400 + 144 + 64 = 2.458 \).

Classificação: **moderadamente concentrado** (entre 1.500 e 2.500).

### (b) Fusão das duas maiores

Novo HHI: \( 60^2 + 20^2 + 12^2 + 8^2 = 3.600 + 400 + 144 + 64 = 4.208 \).

\( \Delta HHI = 4.208 - 2.458 = 1.750 \).

A variação supera amplamente o limiar de 200 pontos em mercado concentrado. A fusão receberá escrutínio detalhado e provavelmente será contestada ou condicionada a remédios.

Note: \( \Delta HHI = 2 \times s_1 \times s_2 = 2 \times 35 \times 25 = 1.750 \). Essa fórmula mostra que a variação do HHI é exatamente o dobro do produto das participações das firmas que se fundem.

### (c) Eficiências

A redução de 5% no custo marginal da firma combinada precisa ser confrontada com o aumento esperado de preço. Com demanda linear e Cournot, a firma com custo menor produz mais, e o preço de equilíbrio cai. Contudo, a concentração de 60% confere poder de mercado substancial. Qualitativamente, uma redução de custos de 5% é improvável que compense um aumento de participação de 35% para 60%. A autoridade antitruste provavelmente exigiria eficiências maiores ou remédios estruturais (desinvestimento de marcas/ativos).

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-8)

---

## ✏️ Exercício 16.9 {#ex-16-9}

**Bertrand repetido assimétrico: \( c_1 = 10 \), \( c_2 = 20 \), \( Q = 100 - p \).**

### (a) Preço de monopólio

Com \( c = 10 \) (menor custo): \( p^m = (100 + 10)/2 = 55 \), \( Q^m = 45 \), \( \pi^m = (55-10) \times 45 = 2.025 \).

### (b) Divisão da produção

No cartel eficiente, toda a produção é feita pela firma 1 (custo menor). A firma 2 não produz, mas recebe uma transferência lateral. Suponha divisão igualitária: cada firma recebe \( \pi^m/2 = 1.012{,}5 \).

### (c) \(\delta\) mínimo

**Firma 1:** Se desviar, cobra \( p^m - \epsilon \) e obtém \( \approx \pi^m = 2.025 \). Cooperando, obtém \( 1.012{,}5 \) por período.

\( \frac{1.012{,}5}{1 - \delta} \geq 2.025 \implies \delta \geq 1/2 \).

**Firma 2:** Se desviar, cobra \( p^m - \epsilon = 55 - \epsilon \) e obtém \( \approx (55 - 20) \times 45 = 1.575 \) (usando seu próprio custo). Cooperando, recebe 1.012,5.

\( \frac{1.012{,}5}{1 - \delta} \geq 1.575 \implies 1.012{,}5 \geq 1.575(1-\delta) \implies \delta \geq 1 - 1.012{,}5/1.575 = 1 - 0{,}643 = 0{,}357 \).

A firma 1 (eficiente) tem **maior incentivo para desviar** (precisa de \( \delta \geq 0{,}5 \)), pois seu lucro de desvio é maior (captura toda a demanda ao preço de monopólio com custo baixo). O \( \delta \) mínimo para sustentação é \( \delta = 0{,}5 \), determinado pela restrição da firma 1.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-9)

---

## ✏️ Exercício 16.10 {#ex-16-10}

**Salop: perímetro 1, \( t = 1 \), \( c = 0 \).**

### (a) Preço e lucro de equilíbrio

No Salop simétrico, cada firma compete com suas duas vizinhas. A distância entre firmas vizinhas é \( 1/n \). O consumidor indiferente entre duas firmas vizinhas está a \( 1/(2n) \) de cada.

No equilíbrio simétrico: \( p^*(n) = t/n = 1/n \). Demanda por firma: \( q = 1/n \). Lucro: \( \pi^*(n) = p \cdot q - f = (1/n)(1/n) - f = 1/n^2 - f \).

### (b) Entrada livre

\( \pi^*(n^*) = 0 \implies 1/(n^*)^2 = f \implies n^* = 1/\sqrt{f} \).

### (c) Número socialmente ótimo

O planejador minimiza custos totais = custos fixos + custos de transporte:

\( C_T(n) = nf + n \int_0^{1/(2n)} t \cdot x \, dx \cdot 2 = nf + n \cdot 2 \cdot \frac{t}{2} \cdot \frac{1}{4n^2} = nf + \frac{1}{4n} \)

(com \( t = 1 \)).

CPO: \( f - 1/(4n^2) = 0 \implies n^{**} = 1/(2\sqrt{f}) = n^*/2 \). ✓

### (d) Externalidade

Há **excesso de entrada** (\( n^* = 2 n^{**} \)). A externalidade é o **efeito roubo de negócios** (business stealing): cada entrante captura clientes de firmas existentes, reduzindo seus lucros, sem internalizar essa perda. A entrada privada é excessiva porque cada firma conta apenas o lucro que ganha, ignorando o lucro que rouba das vizinhas.

↩ [Voltar ao enunciado](../cap16/index.md#ex-16-10)
