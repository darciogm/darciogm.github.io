---
title: "Soluções — Capítulo 15"
---

# Soluções dos Exercícios — Capítulo 15

[← Voltar ao Capítulo 15](../cap15/index.md)

---

## ✏️ Exercício 15.1 {#ex-15-1}

**Monopolista com \( C(q) = 100 + 10q \) e demanda \( p = 50 - 2q \).**

### (a) Preço, quantidade e lucro de monopólio

A receita total é:

\[
RT(q) = p \cdot q = (50 - 2q)q = 50q - 2q^2
\]

A receita marginal é:

\[
RMg = \frac{dRT}{dq} = 50 - 4q
\]

O custo marginal é:

\[
CMg = \frac{dC}{dq} = 10
\]

A condição de maximização de lucro do monopolista é \( RMg = CMg \):

\[
50 - 4q = 10 \implies 4q = 40 \implies q^M = 10
\]

Substituindo na demanda:

\[
p^M = 50 - 2(10) = 30
\]

O lucro é:

\[
\pi^M = RT - CT = 30 \times 10 - (100 + 10 \times 10) = 300 - 200 = 100
\]

**Resultado:** \( q^M = 10 \), \( p^M = 30 \) e \( \pi^M = 100 \).

### (b) Índice de Lerner e elasticidade-preço no equilíbrio

O índice de Lerner mede o poder de mercado:

\[
L = \frac{p - CMg}{p} = \frac{30 - 10}{30} = \frac{20}{30} = \frac{2}{3} \approx 0{,}667
\]

Para a elasticidade-preço da demanda, partimos da função de demanda \( p = 50 - 2q \), ou equivalentemente \( q = 25 - \frac{p}{2} \). Logo:

\[
\frac{dq}{dp} = -\frac{1}{2}
\]

No ponto de equilíbrio \( (q^M, p^M) = (10, 30) \):

\[
|\varepsilon_d| = \left| \frac{dq}{dp} \cdot \frac{p}{q} \right| = \left| -\frac{1}{2} \cdot \frac{30}{10} \right| = \frac{3}{2} = 1{,}5
\]

Pela relação fundamental do monopólio, \( L = \frac{1}{|\varepsilon_d|} \):

\[
\frac{1}{|\varepsilon_d|} = \frac{1}{1{,}5} = \frac{2}{3} = L \quad \checkmark
\]

**Interpretação:** O monopolista opera na porção elástica da demanda (\( |\varepsilon_d| = 1{,}5 > 1 \)). Quanto menor a elasticidade, maior o poder de mercado e maior o markup sobre o custo marginal.

### (c) Peso morto e comparação com concorrência perfeita

**Equilíbrio competitivo** (\( p = CMg \)):

\[
50 - 2q = 10 \implies q^{CP} = 20, \quad p^{CP} = 10
\]

Excedente do consumidor em concorrência perfeita (área do triângulo entre a curva de demanda e o preço):

\[
EC^{CP} = \frac{1}{2}(50 - 10)(20) = \frac{1}{2} \times 40 \times 20 = 400
\]

Excedente do produtor em concorrência perfeita (como \( CMg \) é constante e igual ao preço, o lucro variável é zero, mas há custo fixo de 100):

\[
EP^{CP} = (p^{CP} - CMg) \times q^{CP} = 0 \times 20 = 0
\]

Logo, \( W^{CP} = EC^{CP} + EP^{CP} = 400 \). (O lucro econômico é \( \pi^{CP} = 0 \times 20 - 100 = -100 \), mas o excedente total exclui custos fixos na análise de bem-estar marginal.)

**Monopólio:**

Excedente do consumidor:

\[
EC^M = \frac{1}{2}(50 - 30)(10) = \frac{1}{2} \times 20 \times 10 = 100
\]

Excedente do produtor (receita acima do custo marginal):

\[
EP^M = (30 - 10) \times 10 = 200
\]

Bem-estar total no monopólio:

\[
W^M = EC^M + EP^M = 100 + 200 = 300
\]

**Peso morto (DWL):**

\[
DWL = W^{CP} - W^M = 400 - 300 = 100
\]

Alternativamente, o triângulo de Harberger:

\[
DWL = \frac{1}{2}(p^M - CMg)(q^{CP} - q^M) = \frac{1}{2}(30 - 10)(20 - 10) = \frac{1}{2} \times 20 \times 10 = 100
\]

**Interpretação:** O peso morto do monopólio é igual ao lucro do monopolista neste caso. A perda de bem-estar decorre da restrição de quantidade: o monopolista produz apenas metade da quantidade competitiva (\( q^M = 10 \) vs. \( q^{CP} = 20 \)).

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-1)

---

## ✏️ Exercício 15.2 {#ex-15-2}

**Monopolista com dois mercados segmentados: \( p_1 = 100 - q_1 \), \( p_2 = 60 - 2q_2 \), \( CMg = 20 \).**

### (a) Preços e quantidades ótimos com discriminação de terceiro grau

**Mercado 1:**

\[
RT_1 = (100 - q_1)q_1 = 100q_1 - q_1^2
\]

\[
RMg_1 = 100 - 2q_1
\]

Igualando ao custo marginal:

\[
100 - 2q_1 = 20 \implies q_1^* = 40, \quad p_1^* = 100 - 40 = 60
\]

**Mercado 2:**

\[
RT_2 = (60 - 2q_2)q_2 = 60q_2 - 2q_2^2
\]

\[
RMg_2 = 60 - 4q_2
\]

Igualando ao custo marginal:

\[
60 - 4q_2 = 20 \implies q_2^* = 10, \quad p_2^* = 60 - 2(10) = 40
\]

**Lucro com discriminação:**

\[
\pi^D = (p_1^* - CMg)q_1^* + (p_2^* - CMg)q_2^* = (60 - 20)(40) + (40 - 20)(10) = 1600 + 200 = 1800
\]

### (b) Índices de Lerner e relação com elasticidades

**Mercado 1:**

\[
L_1 = \frac{p_1 - CMg}{p_1} = \frac{60 - 20}{60} = \frac{2}{3} \approx 0{,}667
\]

Da demanda \( q_1 = 100 - p_1 \), temos \( \frac{dq_1}{dp_1} = -1 \), logo:

\[
|\varepsilon_1| = \left| -1 \cdot \frac{60}{40} \right| = \frac{3}{2} = 1{,}5
\]

Verificação: \( \frac{1}{|\varepsilon_1|} = \frac{2}{3} = L_1 \quad \checkmark \)

**Mercado 2:**

\[
L_2 = \frac{p_2 - CMg}{p_2} = \frac{40 - 20}{40} = \frac{1}{2} = 0{,}5
\]

Da demanda \( q_2 = 30 - \frac{p_2}{2} \), temos \( \frac{dq_2}{dp_2} = -\frac{1}{2} \), logo:

\[
|\varepsilon_2| = \left| -\frac{1}{2} \cdot \frac{40}{10} \right| = 2
\]

Verificação: \( \frac{1}{|\varepsilon_2|} = \frac{1}{2} = L_2 \quad \checkmark \)

**Interpretação:** O mercado 1 tem demanda menos elástica (\( |\varepsilon_1| = 1{,}5 < |\varepsilon_2| = 2 \)), logo recebe o preço mais alto (\( p_1 = 60 > p_2 = 40 \)). Este é o princípio central da discriminação de terceiro grau: cobrar mais de quem tem menor sensibilidade ao preço.

### (c) Comparação com preço uniforme ótimo

Com preço uniforme, a demanda agregada é obtida somando as quantidades. Para \( p \leq 60 \) (ambos mercados ativos):

\[
Q(p) = q_1(p) + q_2(p) = (100 - p) + \left(30 - \frac{p}{2}\right) = 130 - \frac{3p}{2}
\]

Invertendo: \( p = \frac{260 - 2Q}{3} \).

A receita total é:

\[
RT = p \cdot Q = \frac{260Q - 2Q^2}{3}
\]

\[
RMg = \frac{260 - 4Q}{3}
\]

Igualando ao custo marginal:

\[
\frac{260 - 4Q}{3} = 20 \implies 260 - 4Q = 60 \implies Q^* = 50
\]

\[
p^U = \frac{260 - 2(50)}{3} = \frac{160}{3} \approx 53{,}33
\]

Verificando que ambos os mercados estão ativos: \( p^U \approx 53{,}33 < 60 \), logo o mercado 2 está ativo com \( q_2 = 30 - \frac{53{,}33}{2} \approx 3{,}33 > 0 \). Confirmado.

As quantidades em cada mercado:

\[
q_1^U = 100 - \frac{160}{3} = \frac{140}{3} \approx 46{,}67, \quad q_2^U = 30 - \frac{80}{3} = \frac{10}{3} \approx 3{,}33
\]

O lucro com preço uniforme:

\[
\pi^U = \left(\frac{160}{3} - 20\right) \times 50 = \frac{100}{3} \times 50 = \frac{5000}{3} \approx 1666{,}67
\]

**Comparação:**

\[
\pi^D - \pi^U = 1800 - \frac{5000}{3} = \frac{5400 - 5000}{3} = \frac{400}{3} \approx 133{,}33
\]

**Interpretação:** A discriminação de preços aumenta o lucro em \( \frac{400}{3} \approx 133{,}33 \). A firma se beneficia ao cobrar preços diferenciados. Note que a quantidade total é a mesma (\( Q = 50 \)) em ambos os casos (resultado geral para demandas lineares), mas a discriminação realoca unidades do mercado 1 (mais valorizado) para o mercado 2, cobrando mais de quem tem menor elasticidade.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-2)

---

## ✏️ Exercício 15.3 {#ex-15-3}

**Imposto unitário \( t = 4 \) sobre monopolista com \( CMg = c = 10 \) e demanda \( p = 30 - q \).**

### (a) Preço, quantidade e lucro antes e depois do imposto

**Antes do imposto:**

\[
RT = (30 - q)q = 30q - q^2 \implies RMg = 30 - 2q
\]

\[
RMg = CMg \implies 30 - 2q = 10 \implies q_0 = 10, \quad p_0 = 30 - 10 = 20
\]

\[
\pi_0 = (20 - 10) \times 10 = 100
\]

**Após o imposto:** O custo marginal efetivo passa a ser \( CMg' = c + t = 10 + 4 = 14 \).

\[
30 - 2q = 14 \implies q_1 = 8, \quad p_1 = 30 - 8 = 22
\]

\[
\pi_1 = (22 - 14) \times 8 = 64
\]

(Note que o lucro é calculado após o pagamento do imposto.)

| Variável | Antes | Depois |
|----------|-------|--------|
| Quantidade | 10 | 8 |
| Preço | 20 | 22 |
| Lucro | 100 | 64 |

### (b) Fração do imposto repassada ao consumidor

O preço subiu de 20 para 22, ou seja, o aumento foi \( \Delta p = 2 \).

A fração repassada ao consumidor (pass-through) é:

\[
\rho = \frac{\Delta p}{t} = \frac{2}{4} = \frac{1}{2} = 50\%
\]

**Interpretação:** Com demanda linear e custo marginal constante, o monopolista repassa exatamente metade do imposto ao consumidor. Isso contrasta com a concorrência perfeita, onde, com essas mesmas curvas, o imposto seria integralmente repassado. O monopolista absorve metade do imposto porque já opera com markup, e aumentar demais o preço reduziria muito a quantidade vendida. De modo geral, para demanda linear \( p = a - bq \) e \( CMg \) constante, o pass-through do monopólio é sempre \( \frac{1}{2} \).

### (c) Receita fiscal vs. variação do peso morto

**Receita fiscal:**

\[
RF = t \times q_1 = 4 \times 8 = 32
\]

**DWL antes do imposto** (triângulo de Harberger entre \( q_0 = 10 \) e \( q^{CP} = 20 \)):

\[
DWL_0 = \frac{1}{2}(p_0 - CMg)(q^{CP} - q_0) = \frac{1}{2}(20 - 10)(20 - 10) = 50
\]

**DWL após o imposto:** O nível eficiente continua sendo \( q^{CP} = 20 \) (o custo social de produção é \( CMg = 10 \), pois o imposto é uma transferência, não um custo social). A distorção total é:

\[
DWL_1 = \frac{1}{2}(p_1 - CMg)(q^{CP} - q_1) = \frac{1}{2}(22 - 10)(20 - 8) = \frac{1}{2} \times 12 \times 12 = 72
\]

**Variação do peso morto:**

\[
\Delta DWL = DWL_1 - DWL_0 = 72 - 50 = 22
\]

**Comparação:**

\[
RF = 32 > \Delta DWL = 22
\]

**Interpretação:** A receita fiscal (32) excede o aumento no peso morto (22), o que significa que o imposto gera um ganho líquido de bem-estar se a receita fiscal for devolvida à sociedade como transferência lump-sum. Contudo, o DWL total aumentou: a tributação do monopólio agrava a distorção preexistente, pois a quantidade cai de 10 para 8, afastando-se ainda mais do ótimo social (\( q^{CP} = 20 \)).

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-3)

---

## ✏️ Exercício 15.4 {#ex-15-4}

**Monopólio natural com \( C(q) = 1000 + 5q \) e demanda \( p = 45 - q \).**

### (a) Monopólio não regulado

\[
RT = (45 - q)q \implies RMg = 45 - 2q
\]

\[
CMg = 5
\]

\[
RMg = CMg \implies 45 - 2q = 5 \implies q^M = 20, \quad p^M = 45 - 20 = 25
\]

\[
\pi^M = 25 \times 20 - (1000 + 5 \times 20) = 500 - 1100 = -600
\]

Espere — o lucro é negativo. Verifiquemos se o monopolista prefere produzir. Se não produz, \( \pi = 0 \) (sem custos fixos irrecuperáveis) ou \( \pi = -1000 \) (se o custo fixo é irrecuperável). Assumindo que 1000 é custo fixo irrecuperável (sunk cost), a decisão de curto prazo compara receita com custo variável:

\[
RT = 500 > CV = 100 \implies \text{produz no curto prazo}
\]

Porém, se o custo fixo não é irrecuperável, verifiquemos o custo médio no ponto de monopólio:

\[
CMe(20) = \frac{1000 + 5 \times 20}{20} = \frac{1100}{20} = 55 > p^M = 25
\]

O monopolista tem prejuízo. Para que o monopólio não regulado seja viável no longo prazo, a demanda precisa ser suficientemente alta. Neste caso, a firma não consegue cobrir seus custos. Vamos verificar se existe algum preço onde \( p \geq CMe \):

\[
45 - q \geq \frac{1000 + 5q}{q} \implies 45q - q^2 \geq 1000 + 5q \implies -q^2 + 40q - 1000 \geq 0
\]

\[
q^2 - 40q + 1000 \leq 0
\]

Discriminante: \( \Delta = 1600 - 4000 = -2400 < 0 \).

Como o discriminante é negativo, **não existe** quantidade para a qual \( p \geq CMe \). A demanda é insuficiente para cobrir os custos totais. O monopólio não é viável sem subsídio.

**Resultado do monopólio não regulado (se operasse):** \( q^M = 20 \), \( p^M = 25 \), \( \pi^M = -600 \). Na prática, a firma não entraria neste mercado sem subsídio.

**Nota:** Para tornar a análise regulatória mais instrutiva, prosseguimos com os cálculos das partes (b) e (c) assumindo que a firma opera (por exemplo, com compromisso de serviço público ou subsídio parcial).

### (b) Regulação por custo marginal (\( p = CMg \))

\[
p = CMg = 5 \implies 45 - q = 5 \implies q^{CMg} = 40
\]

Lucro:

\[
\pi^{CMg} = 5 \times 40 - (1000 + 5 \times 40) = 200 - 1200 = -1000
\]

A firma tem prejuízo de 1000 (exatamente o custo fixo). **A regulação pelo custo marginal maximiza o bem-estar, mas resulta em prejuízo para a firma**, pois o preço é inferior ao custo médio:

\[
CMe(40) = \frac{1000 + 200}{40} = 30 > 5 = p
\]

Este é o dilema clássico do monopólio natural: a eficiência alocativa (\( p = CMg \)) é incompatível com a viabilidade financeira quando há custos fixos elevados. A solução típica é subsidiar a firma no valor de 1000 ou usar tarifas em duas partes.

### (c) Regulação por custo médio (\( p = CMe \))

A condição \( p = CMe \) com a demanda é:

\[
45 - q = \frac{1000 + 5q}{q}
\]

Multiplicando por \( q \):

\[
45q - q^2 = 1000 + 5q \implies q^2 - 40q + 1000 = 0
\]

\[
\Delta = 1600 - 4000 = -2400 < 0
\]

Como o discriminante é negativo, **não existe interseção** entre a curva de demanda e a curva de custo médio. Isso confirma que a demanda é insuficiente para que a firma cubra seus custos a qualquer preço.

**Peso morto residual:** Como a regulação por custo médio não é viável neste caso, não é possível calcular o DWL residual de forma convencional. Se a firma fosse subsidiada para operar com \( p = CMg = 5 \), o DWL seria zero (eficiência plena), mas o subsídio de 1000 deveria ser financiado, potencialmente gerando distorções em outros mercados.

**Interpretação geral:** Este exercício ilustra um caso extremo de monopólio natural em que a escala mínima eficiente excede o tamanho do mercado. Nenhuma estrutura de mercado — nem monopólio, nem concorrência — viabiliza a produção sem subsídio externo. A decisão de provisão depende de se o excedente total bruto (sem considerar o custo fixo) justifica o subsídio:

\[
EC^{CMg} = \frac{1}{2}(45 - 5)(40) = 800
\]

Como \( EC^{CMg} = 800 < 1000 = \text{custo fixo} \), o benefício social não justifica o custo, e a produção é socialmente ineficiente neste caso.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-4)

---

## ✏️ Exercício 15.5 {#ex-15-5}

**Tarifa em duas partes com dois tipos de consumidores. Tipo 1: \( q_1 = 20 - p \), Tipo 2: \( q_2 = 10 - p \). 100 consumidores de cada tipo. \( CMg = c = 2 \).**

### (a) Preço uniforme ótimo

Com preço uniforme (sem taxa fixa), a demanda agregada para \( p \leq 10 \) (ambos os tipos ativos) é:

\[
Q(p) = 100(20 - p) + 100(10 - p) = 100(30 - 2p) = 3000 - 200p
\]

Invertendo: \( p = 15 - \frac{Q}{200} \).

A receita total é:

\[
RT = pQ = 15Q - \frac{Q^2}{200}
\]

\[
RMg = 15 - \frac{Q}{100}
\]

Igualando ao custo marginal:

\[
15 - \frac{Q}{100} = 2 \implies Q^* = 1300
\]

\[
p^* = 15 - \frac{1300}{200} = 15 - 6{,}5 = 8{,}5
\]

Verificando: \( q_1 = 20 - 8{,}5 = 11{,}5 \) e \( q_2 = 10 - 8{,}5 = 1{,}5 \). Ambos os tipos estão ativos.

Lucro:

\[
\pi^U = (8{,}5 - 2) \times 1300 = 6{,}5 \times 1300 = 8450
\]

### (b) Tarifa em duas partes servindo ambos os tipos

Com tarifa em duas partes \( (T, p) \), cada consumidor paga uma taxa fixa \( T \) mais o preço unitário \( p \). O consumidor do tipo \( i \) participa se e somente se seu excedente do consumidor for pelo menos \( T \).

O excedente do consumidor do tipo \( i \) ao preço \( p \) é:

\[
EC_i(p) = \frac{1}{2}(a_i - p)^2 \cdot \frac{1}{1} = \frac{(a_i - p)^2}{2}
\]

onde \( a_1 = 20 \) e \( a_2 = 10 \) são as interseções com o eixo dos preços.

Para servir ambos os tipos, a restrição de participação vinculante é a do tipo 2 (menor excedente):

\[
T \leq EC_2(p) = \frac{(10 - p)^2}{2}
\]

No ótimo, \( T^* = \frac{(10 - p)^2}{2} \).

O lucro total (200 consumidores pagam \( T \), e a margem unitária é \( p - c \)):

\[
\pi = 200 \cdot T + (p - c) \cdot [100(20 - p) + 100(10 - p)]
\]

\[
\pi = 200 \cdot \frac{(10 - p)^2}{2} + (p - 2) \cdot 100(30 - 2p)
\]

\[
\pi = 100(10 - p)^2 + 100(p - 2)(30 - 2p)
\]

Expandindo:

\[
\pi = 100\left[(10 - p)^2 + (p - 2)(30 - 2p)\right]
\]

\[
(10 - p)^2 = 100 - 20p + p^2
\]

\[
(p - 2)(30 - 2p) = 30p - 2p^2 - 60 + 4p = 34p - 2p^2 - 60
\]

Somando:

\[
100 - 20p + p^2 + 34p - 2p^2 - 60 = -p^2 + 14p + 40
\]

\[
\pi = 100(-p^2 + 14p + 40)
\]

Maximizando:

\[
\frac{d\pi}{dp} = 100(-2p + 14) = 0 \implies p^* = 7
\]

\[
T^* = \frac{(10 - 7)^2}{2} = \frac{9}{2} = 4{,}5
\]

Lucro:

\[
\pi^{B} = 100(-(7)^2 + 14 \times 7 + 40) = 100(-49 + 98 + 40) = 100 \times 89 = 8900
\]

**Verificação:** Quantidades: \( q_1 = 20 - 7 = 13 \), \( q_2 = 10 - 7 = 3 \).

\[
\pi = 200 \times 4{,}5 + (7 - 2)(100 \times 13 + 100 \times 3) = 900 + 5 \times 1600 = 900 + 8000 = 8900 \quad \checkmark
\]

### (c) Tarifa em duas partes servindo apenas o tipo 1

Se a firma exclui o tipo 2, atende apenas 100 consumidores do tipo 1. A taxa fixa pode ser igualada ao excedente total do tipo 1:

\[
T = EC_1(p) = \frac{(20 - p)^2}{2}
\]

O lucro é:

\[
\pi = 100 \cdot \frac{(20 - p)^2}{2} + (p - 2) \cdot 100(20 - p)
\]

\[
\pi = 100 \left[ \frac{(20 - p)^2}{2} + (p - 2)(20 - p) \right]
\]

Seja \( x = 20 - p \):

\[
\pi = 100 \left[ \frac{x^2}{2} + (18 - x) \cdot x \right] = 100 \left[ \frac{x^2}{2} + 18x - x^2 \right] = 100 \left[ 18x - \frac{x^2}{2} \right]
\]

Maximizando em \( x \):

\[
\frac{d}{dx}\left(18x - \frac{x^2}{2}\right) = 18 - x = 0 \implies x = 18 \implies p^* = 2
\]

Quando \( p = CMg = c = 2 \):

\[
T^* = \frac{(20 - 2)^2}{2} = \frac{324}{2} = 162
\]

Lucro:

\[
\pi^{A} = 100 \times 162 + (2 - 2) \times 100 \times 18 = 16200
\]

**Comparação dos três cenários:**

| Estratégia | Preço unitário | Taxa fixa | Lucro |
|-----------|---------------|-----------|-------|
| Preço uniforme | 8,5 | — | 8.450 |
| Tarifa 2 partes (ambos) | 7 | 4,5 | 8.900 |
| Tarifa 2 partes (só tipo 1) | 2 | 162 | 16.200 |

**Interpretação:** A estratégia mais lucrativa é servir apenas o tipo 1, cobrando preço igual ao custo marginal (\( p = 2 \)) e extraindo todo o excedente via taxa fixa (\( T = 162 \)). Ao excluir o tipo 2, a firma pode fixar a taxa fixa no nível do excedente do tipo 1, que é muito maior. O trade-off da tarifa em duas partes com dois tipos é: servir ambos limita \( T \) ao excedente do tipo com menor disposição a pagar, enquanto excluir o tipo menor permite capturar todo o excedente do tipo maior. Neste caso, a perda de receita dos 100 consumidores do tipo 2 é mais do que compensada pela taxa fixa muito mais alta cobrada dos 100 consumidores do tipo 1.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-5)

---

## ✏️ Exercício 15.6 {#ex-15-6}

**Monopolista com \( C(q) = 200 + 20q \) e demanda \( p = 80 - 0{,}5q \). Comparação com demanda \( p = 80 - 2q \).**

### (a) Quantidade, preço e lucro de monopólio

A receita total é:

\[
RT(q) = p \cdot q = (80 - 0{,}5q)q = 80q - 0{,}5q^2
\]

A receita marginal é:

\[
RMg = \frac{dRT}{dq} = 80 - q
\]

O custo marginal é:

\[
CMg = \frac{dC}{dq} = 20
\]

Igualando \( RMg = CMg \):

\[
80 - q = 20 \implies q^M = 60
\]

Substituindo na demanda:

\[
p^M = 80 - 0{,}5(60) = 80 - 30 = 50
\]

O lucro é:

\[
\pi^M = RT - CT = 50 \times 60 - (200 + 20 \times 60) = 3000 - 1400 = 1600
\]

**Resultado:** \( q^M = 60 \), \( p^M = 50 \) e \( \pi^M = 1600 \).

### (b) Índice de Lerner e verificação

O índice de Lerner é:

\[
L = \frac{p - CMg}{p} = \frac{50 - 20}{50} = \frac{30}{50} = \frac{3}{5} = 0{,}6
\]

Para a elasticidade, a demanda inversa é \( p = 80 - 0{,}5q \), logo \( q = 160 - 2p \) e \( \frac{dq}{dp} = -2 \).

No ponto de equilíbrio \( (q^M, p^M) = (60, 50) \):

\[
|\varepsilon_d| = \left| \frac{dq}{dp} \cdot \frac{p}{q} \right| = \left| -2 \cdot \frac{50}{60} \right| = \frac{100}{60} = \frac{5}{3} \approx 1{,}667
\]

Verificação:

\[
\frac{1}{|\varepsilon_d|} = \frac{3}{5} = 0{,}6 = L \quad \checkmark
\]

### (c) Comparação com demanda \( p = 80 - 2q \)

Com a nova demanda:

\[
RT = (80 - 2q)q = 80q - 2q^2 \implies RMg = 80 - 4q
\]

\[
RMg = CMg \implies 80 - 4q = 20 \implies q^M = 15
\]

\[
p^M = 80 - 2(15) = 50
\]

\[
\pi^M = 50 \times 15 - (200 + 20 \times 15) = 750 - 500 = 250
\]

O índice de Lerner é:

\[
L = \frac{50 - 20}{50} = 0{,}6
\]

O preço e o Lerner são idênticos nos dois casos, pois ambas as demandas têm a mesma interceptação vertical (\( a = 80 \)) e o mesmo CMg. A diferença está na inclinação: a demanda mais inclinada (\( b = 2 \)) gera menor quantidade (\( q = 15 \) vs. 60) e menor lucro (\( \pi = 250 \) vs. 1600). A elasticidade no ponto de monopólio também é \( 5/3 \) em ambos os casos — resultado geral para demanda linear \( p = a - bq \) com CMg constante, pois o Lerner depende apenas de \( a \) e \( c \), não de \( b \).

**Interpretação:** A inclinação da demanda afeta a escala de produção e o lucro absoluto, mas não o markup relativo nem a elasticidade no ótimo, quando a interceptação é a mesma.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-6)

---

## ✏️ Exercício 15.7 {#ex-15-7}

**Discriminação de primeiro grau. Demanda individual \( q = 10 - p \), 50 consumidores, \( CMg = c = 2 \).**

### (a) Lucro sob preço uniforme de monopólio

A demanda agregada é \( Q = 50(10 - p) = 500 - 50p \), ou inversamente \( p = 10 - Q/50 \).

\[
RT = pQ = 10Q - \frac{Q^2}{50} \implies RMg = 10 - \frac{Q}{25}
\]

\[
RMg = CMg \implies 10 - \frac{Q}{25} = 2 \implies Q^M = 200
\]

\[
p^M = 10 - \frac{200}{50} = 10 - 4 = 6
\]

\[
\pi^U = (p^M - c) \cdot Q^M = (6 - 2) \times 200 = 800
\]

Excedente do consumidor:

\[
EC^U = \frac{1}{2}(10 - 6)(200) = \frac{1}{2} \times 4 \times 200 = 400
\]

### (b) Lucro sob discriminação de primeiro grau

Com discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua disposição a pagar. O preço é reduzido até \( p = CMg = 2 \), e toda a área entre a curva de demanda e o custo marginal é capturada como lucro.

Quantidade total: \( Q^{DP} = 50(10 - 2) = 400 \).

O excedente total (área entre demanda e CMg) é:

\[
W^{DP} = \frac{1}{2}(10 - 2)(400) = \frac{1}{2} \times 8 \times 400 = 1600
\]

Sob discriminação perfeita, todo o excedente vai para o produtor:

\[
\pi^{DP} = 1600, \quad EC^{DP} = 0
\]

### (c) Comparação de excedentes e peso morto

| Variável | Preço uniforme | Discriminação perfeita |
|----------|---------------|----------------------|
| Quantidade | 200 | 400 |
| Preço | 6 | varia (de 10 a 2) |
| EC | 400 | 0 |
| Lucro (EP) | 800 | 1600 |
| Bem-estar total | 1200 | 1600 |
| DWL | 400 | 0 |

A DWL sob preço uniforme é:

\[
DWL^U = \frac{1}{2}(p^M - c)(Q^{CP} - Q^M) = \frac{1}{2}(6 - 2)(400 - 200) = 400
\]

**Interpretação:** A discriminação de primeiro grau elimina completamente a perda de peso morto, pois o monopolista produz a quantidade eficiente (\( Q = 400 \), como em concorrência perfeita). Contudo, todo o excedente é capturado pelo produtor: os consumidores ficam com excedente zero. A discriminação perfeita é eficiente no sentido de Pareto em relação à situação de monopólio (o produtor ganha mais e nenhum consumidor perde em relação a não consumir), mas levanta questões distributivas.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-7)

---

## ✏️ Exercício 15.8 {#ex-15-8}

**Monopólio natural com \( C(q) = 500 + 2q \) e demanda \( p = 52 - q \).**

### (a) Monopólio não regulado

\[
RT = (52 - q)q \implies RMg = 52 - 2q
\]

\[
CMg = 2
\]

\[
RMg = CMg \implies 52 - 2q = 2 \implies q^M = 25, \quad p^M = 52 - 25 = 27
\]

\[
\pi^M = 27 \times 25 - (500 + 2 \times 25) = 675 - 550 = 125
\]

**Resultado:** \( q^M = 25 \), \( p^M = 27 \), \( \pi^M = 125 \). O monopolista é viável sem regulação.

### (b) Regulação por custo marginal (\( p = CMg \))

\[
p = CMg = 2 \implies 52 - q = 2 \implies q^{CMg} = 50
\]

Lucro:

\[
\pi^{CMg} = 2 \times 50 - (500 + 2 \times 50) = 100 - 600 = -500
\]

A firma tem prejuízo de 500 (exatamente o custo fixo). O custo médio no ponto regulado é:

\[
CMe(50) = \frac{500 + 100}{50} = 12 > 2 = p
\]

**A regulação por custo marginal maximiza o bem-estar, mas a firma não é viável** sem um subsídio de 500.

### (c) Regulação por custo médio (\( p = CMe \))

A condição \( p = CMe \) é:

\[
52 - q = \frac{500 + 2q}{q}
\]

Multiplicando por \( q \):

\[
52q - q^2 = 500 + 2q \implies q^2 - 50q + 500 = 0
\]

\[
\Delta = 2500 - 2000 = 500 > 0
\]

\[
q = \frac{50 \pm \sqrt{500}}{2} = \frac{50 \pm 10\sqrt{5}}{2} = 25 \pm 5\sqrt{5}
\]

Como \( 5\sqrt{5} \approx 11{,}18 \):

- \( q_1 = 25 + 11{,}18 = 36{,}18 \) (solução relevante — maior quantidade)
- \( q_2 = 25 - 11{,}18 = 13{,}82 \)

O regulador escolhe a solução com maior quantidade (maior bem-estar):

\[
q^{CMe} \approx 36{,}18, \quad p^{CMe} = 52 - 36{,}18 \approx 15{,}82
\]

Lucro: \( \pi^{CMe} = 0 \) (por construção, \( p = CMe \)).

**Subsídios necessários:**

| Regime | Quantidade | Preço | Lucro | Subsídio necessário |
|--------|-----------|-------|-------|-------------------|
| Monopólio não regulado | 25 | 27 | 125 | 0 |
| Regulação \( p = CMg \) | 50 | 2 | \(-500\) | 500 |
| Regulação \( p = CMe \) | 36,18 | 15,82 | 0 | 0 |

**Interpretação:** Neste caso, diferentemente do Exercício 15.4, a demanda é suficiente para viabilizar a regulação por custo médio. A solução \( p = CMe \) é um compromisso: produz mais do que o monopólio não regulado (36,18 vs. 25), cobra menos (15,82 vs. 27) e não requer subsídio. A regulação por CMg é a mais eficiente (maximiza o excedente total), mas exige um subsídio de 500. A escolha entre os regimes depende do custo de financiamento público do subsídio.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-8)

---

## ✏️ Exercício 15.9 {#ex-15-9}

**Cálculo da DWL com \( CMg = c = 10 \), demanda \( p = 100 - 2q \). Depois, \( c' = 30 \).**

### (a) Equilíbrio de monopólio e DWL

\[
RT = (100 - 2q)q = 100q - 2q^2 \implies RMg = 100 - 4q
\]

\[
RMg = CMg \implies 100 - 4q = 10 \implies q^M = 22{,}5, \quad p^M = 100 - 2(22{,}5) = 55
\]

Equilíbrio competitivo (\( p = CMg \)):

\[
100 - 2q = 10 \implies q^{CP} = 45, \quad p^{CP} = 10
\]

DWL (triângulo de Harberger):

\[
DWL = \frac{1}{2}(p^M - CMg)(q^{CP} - q^M) = \frac{1}{2}(55 - 10)(45 - 22{,}5) = \frac{1}{2} \times 45 \times 22{,}5 = 506{,}25
\]

### (b) DWL como fração da receita e do excedente competitivo

Receita do monopolista:

\[
RT^M = p^M \times q^M = 55 \times 22{,}5 = 1237{,}5
\]

\[
\frac{DWL}{RT^M} = \frac{506{,}25}{1237{,}5} \approx 0{,}409 = 40{,}9\%
\]

Excedente total competitivo:

\[
W^{CP} = \frac{1}{2}(100 - 10)(45) = \frac{1}{2} \times 90 \times 45 = 2025
\]

\[
\frac{DWL}{W^{CP}} = \frac{506{,}25}{2025} = 0{,}25 = 25\%
\]

**Interpretação:** A DWL representa 25% do excedente total que seria gerado sob concorrência perfeita — uma fração substancial.

### (c) Recálculo com \( c' = 30 \)

\[
100 - 4q = 30 \implies q^M = 17{,}5, \quad p^M = 100 - 2(17{,}5) = 65
\]

Equilíbrio competitivo:

\[
100 - 2q = 30 \implies q^{CP} = 35, \quad p^{CP} = 30
\]

DWL:

\[
DWL' = \frac{1}{2}(65 - 30)(35 - 17{,}5) = \frac{1}{2} \times 35 \times 17{,}5 = 306{,}25
\]

Excedente total competitivo:

\[
W'^{CP} = \frac{1}{2}(100 - 30)(35) = \frac{1}{2} \times 70 \times 35 = 1225
\]

\[
\frac{DWL'}{W'^{CP}} = \frac{306{,}25}{1225} = 0{,}25 = 25\%
\]

| Variável | \( c = 10 \) | \( c = 30 \) |
|----------|------------|------------|
| \( q^M \) | 22,5 | 17,5 |
| \( p^M \) | 55 | 65 |
| DWL | 506,25 | 306,25 |
| DWL / \( W^{CP} \) | 25% | 25% |

**Interpretação:** A DWL absoluta diminui quando o custo marginal sobe (pois o mercado encolhe), mas a DWL como fração do excedente competitivo permanece constante em 25%. Este é um resultado geral para demanda linear \( p = a - bq \) e CMg constante: pode-se mostrar que \( DWL/W^{CP} = 1/4 \), independentemente dos parâmetros. Isso ocorre porque o monopolista sempre restringe a produção à metade da quantidade competitiva (\( q^M = q^{CP}/2 \)), gerando um triângulo de Harberger que é sempre 1/4 do triângulo de excedente total.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-9)

---

## ✏️ Exercício 15.10 {#ex-15-10}

**Tarifa em duas partes em parque de diversões. Demanda individual \( q = 24 - 2p \), \( CMg = c = 2 \). Depois, dois tipos de consumidores.**

### (a) Tarifa ótima em duas partes com consumidores idênticos

Com consumidores idênticos, a estratégia ótima é cobrar \( p = CMg \) e extrair todo o excedente via taxa fixa.

Com \( p = c = 2 \):

\[
q^* = 24 - 2(2) = 20
\]

O excedente do consumidor ao preço \( p = 2 \) é a área do triângulo entre a curva de demanda e o preço. A interseção da demanda com o eixo dos preços é \( p_{max} = 12 \) (quando \( q = 0 \): \( 0 = 24 - 2p \implies p = 12 \)).

\[
EC(p = 2) = \frac{1}{2}(12 - 2)(20) = \frac{1}{2} \times 10 \times 20 = 100
\]

Logo:

\[
T^* = 100, \quad p^* = 2
\]

Lucro por consumidor:

\[
\pi = T + (p - c) \cdot q = 100 + (2 - 2) \times 20 = 100
\]

### (b) Comparação com preço uniforme

Com preço uniforme (sem entrada), a demanda individual é \( q = 24 - 2p \), logo a demanda inversa é \( p = 12 - q/2 \).

Para um consumidor:

\[
RT = \left(12 - \frac{q}{2}\right)q = 12q - \frac{q^2}{2} \implies RMg = 12 - q
\]

\[
RMg = CMg \implies 12 - q = 2 \implies q^M = 10, \quad p^M = 12 - 5 = 7
\]

Lucro por consumidor:

\[
\pi^U = (7 - 2) \times 10 = 50
\]

**Comparação:** A tarifa em duas partes gera o dobro do lucro (\( 100 \) vs. \( 50 \)) por consumidor. Isso ocorre porque a tarifa em duas partes permite ao monopolista capturar todo o excedente do consumidor, eliminando a perda de peso morto.

### (c) Dois tipos: A com \( q_A = 24 - 2p \), B com \( q_B = 12 - 2p \)

O tipo B tem demanda menor. Sua interseção com o eixo dos preços é \( p_{max}^B = 6 \) (quando \( q_B = 0 \)).

Para servir ambos os tipos, a taxa fixa é limitada pelo excedente do tipo B:

\[
T \leq EC_B(p) = \frac{1}{2}(6 - p)(12 - 2p) = (6 - p)(6 - p) = (6 - p)^2
\]

Nota: \( q_B(p) = 12 - 2p \) e o preço máximo é 6, logo \( EC_B(p) = \frac{1}{2}(6 - p)(12 - 2p) = (6 - p)^2 \).

No ótimo, \( T = (6 - p)^2 \).

O excedente do tipo A ao preço \( p \) é: \( EC_A(p) = \frac{1}{2}(12 - p)(24 - 2p) = (12 - p)^2 \).

O lucro total (por par de consumidores, um de cada tipo):

\[
\pi = 2T + (p - c)[q_A(p) + q_B(p)]
\]

\[
\pi = 2(6 - p)^2 + (p - 2)[(24 - 2p) + (12 - 2p)]
\]

\[
\pi = 2(6 - p)^2 + (p - 2)(36 - 4p)
\]

Expandindo:

\[
2(6 - p)^2 = 2(36 - 12p + p^2) = 72 - 24p + 2p^2
\]

\[
(p - 2)(36 - 4p) = 36p - 4p^2 - 72 + 8p = 44p - 4p^2 - 72
\]

Somando:

\[
\pi = 72 - 24p + 2p^2 + 44p - 4p^2 - 72 = -2p^2 + 20p
\]

Maximizando:

\[
\frac{d\pi}{dp} = -4p + 20 = 0 \implies p^* = 5
\]

\[
T^* = (6 - 5)^2 = 1
\]

Verificação das quantidades: \( q_A = 24 - 10 = 14 \), \( q_B = 12 - 10 = 2 \). Ambos os tipos estão ativos.

Lucro por par:

\[
\pi = -2(25) + 20(5) = -50 + 100 = 50
\]

Ou diretamente: \( \pi = 2(1) + (5 - 2)(14 + 2) = 2 + 3 \times 16 = 2 + 48 = 50 \).

Se houvesse \( N \) consumidores de cada tipo, o lucro total seria \( 50N \).

**Comparação:** Com consumidores idênticos (tipo A), o lucro por consumidor era 100. Com dois tipos, o lucro por par cai para 50 (ou 25 por consumidor). A heterogeneidade dos consumidores reduz o poder de extração da tarifa em duas partes, pois a taxa fixa deve acomodar o tipo com menor disposição a pagar. O preço unitário sobe acima do CMg (\( p = 5 > 2 \)) para compensar parcialmente a taxa fixa mais baixa.

↩ [Voltar ao enunciado](../cap15/index.md#ex-15-10)
