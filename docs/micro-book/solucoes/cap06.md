---
title: "Soluções — Capítulo 6"
---

# Soluções dos Exercícios — Capítulo 6

[← Voltar ao Capítulo 6](../cap06/index.md)

---

## ✏️ Exercício 6.1 {#ex-6-1}

**Solução.**

**(a)** Com \(U = (x_1^\rho + x_2^\rho)^{1/\rho}\), a CPO gera:

\[
\frac{x_1^{\rho-1}}{x_2^{\rho-1}} = \frac{p_1}{p_2} \implies \frac{x_1}{x_2} = \left(\frac{p_1}{p_2}\right)^{1/(\rho-1)}
\]

Definindo \(\sigma = 1/(1-\rho)\) (elasticidade de substituição):

\[
x_1^* = \frac{p_1^{-\sigma} I}{p_1^{1-\sigma} + p_2^{1-\sigma}}, \qquad x_2^* = \frac{p_2^{-\sigma} I}{p_1^{1-\sigma} + p_2^{1-\sigma}}
\]

**(b)** Calculando \(\partial x_1/\partial p_2\):

\[
\frac{\partial x_1}{\partial p_2} = \frac{p_1^{-\sigma} I \cdot (1-\sigma) p_2^{-\sigma}}{(p_1^{1-\sigma} + p_2^{1-\sigma})^2}
\]

O sinal depende de \((1-\sigma)\):

- Se \(\sigma > 1\) (\(\rho > 0\)): \(1 - \sigma < 0\), logo \(\partial x_1/\partial p_2 < 0\) → **complementos brutos**.
- Se \(\sigma < 1\) (\(\rho < 0\)): \(1 - \sigma > 0\), logo \(\partial x_1/\partial p_2 > 0\) → **substitutos brutos**.
- Se \(\sigma = 1\) (\(\rho \to 0\), Cobb-Douglas): \(\partial x_1/\partial p_2 = 0\) → **independentes** (nem substitutos nem complementos brutos).

**(c)** O efeito substituição cruzado (via Slutsky):

\[
\frac{\partial h_1}{\partial p_2} = \frac{\partial x_1}{\partial p_2} + x_2 \frac{\partial x_1}{\partial I}
\]

Com dois bens, o efeito substituição cruzado é sempre **positivo** (os bens são sempre substitutos líquidos). Isso resulta da negatividade semidefinida da matriz de Slutsky: com apenas dois bens, o efeito substituição próprio negativo implica necessariamente efeito substituição cruzado positivo (os termos diagonais e fora da diagonal são de sinais opostos para a matriz \(2 \times 2\)).

**Interpretação econômica:** A distinção entre substitutos brutos e líquidos é fundamental. Dois bens podem ser complementos brutos (Marshallian) mas substitutos líquidos (Hicksian) — a diferença é o efeito-renda. A classificação hicksiana (líquida) é mais "pura" porque isola o efeito substituição da mudança no poder de compra.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-1)

---

## ✏️ Exercício 6.2 {#ex-6-2}

**Solução.**

**(a)** Se os preços das frutas variam na mesma proporção (\(\alpha\)), definimos o bem composto "frutas" (\(F\)) como:

\[
F = \bar{p}_b \cdot b + \bar{p}_m \cdot m + \bar{p}_l \cdot l
\]

onde \(\bar{p}_b, \bar{p}_m, \bar{p}_l\) são os preços-base. O preço do bem composto é \(P_F = \alpha\). A restrição orçamentária fica:

\[
\alpha F + y = I
\]

Pelo Teorema do Bem Composto (Hicks), podemos tratar "frutas" como um único bem com preço \(\alpha\).

**(b)** Um aumento de 15% em \(\alpha\) (todos os preços de frutas sobem 15%) equivale a um aumento de 15% no preço do bem composto \(F\). No modelo de dois bens (\(F, y\)), podemos usar as ferramentas padrão: efeito substituição (consumidor troca frutas por outros bens) e efeito-renda (poder de compra cai). O efeito líquido sobre "todos os outros" (\(y\)) depende de o consumo de frutas ser normal ou inferior.

**(c)** A hipótese de proporcionalidade falharia quando os preços relativos entre as frutas mudam — por exemplo: (i) uma geada em Santa Catarina encarece a maçã mas não a banana; (ii) safra recorde de laranja reduz seu preço enquanto o da banana sobe por custos de transporte; (iii) políticas de subsídio diferenciadas (como isenção de ICMS para frutas regionais). No Brasil, a sazonalidade e os choques climáticos regionais tornam a proporcionalidade improvável para janelas temporais curtas.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-2)

---

## ✏️ Exercício 6.3 {#ex-6-3}

**Solução.**

**(a)** As demandas são Cobb-Douglas (\(\alpha = 1/3\)): \(x_1 = I/(3p_1)\), \(x_2 = 2I/(3p_2)\).

\[
\frac{\partial x_1}{\partial p_2} = 0
\]

Os bens são **independentes** (nem substitutos nem complementos brutos). Com Cobb-Douglas, a demanda de cada bem depende apenas do próprio preço e da renda.

**(b)** Utilidade indireta: \(V = (I/(3p_1))^{1/3} (2I/(3p_2))^{2/3} = \frac{2^{2/3}}{3} \cdot I \cdot p_1^{-1/3} p_2^{-2/3}\).

Invertendo \(V = \bar{u}\): \(E = \frac{3}{2^{2/3}} \bar{u} p_1^{1/3} p_2^{2/3}\).

**(c)** Pelo Lema de Shephard:

\[
h_1 = \frac{\partial E}{\partial p_1} = \frac{3}{2^{2/3}} \bar{u} \cdot \frac{1}{3} p_1^{-2/3} p_2^{2/3} = \frac{\bar{u}}{2^{2/3}} p_1^{-2/3} p_2^{2/3}
\]

\[
\frac{\partial h_1}{\partial p_2} = \frac{\bar{u}}{2^{2/3}} p_1^{-2/3} \cdot \frac{2}{3} p_2^{-1/3} = \frac{2\bar{u}}{3 \cdot 2^{2/3}} p_1^{-2/3} p_2^{-1/3} > 0
\]

Os bens são **substitutos líquidos** (como deve ser com dois bens).

**(d)** Verificação de Slutsky:

\[
\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}
\]

Lado esquerdo: 0 (calculado em (a)).

Lado direito: \(\frac{\partial h_1}{\partial p_2} - \frac{2I}{3p_2} \cdot \frac{1}{3p_1}\). Substituindo \(\bar{u} = V\) e simplificando, os termos se cancelam e o resultado é 0. ✓

**Interpretação econômica:** Os bens são independentes na classificação marshalliana (bruta) mas substitutos na hicksiana (líquida). Isso ocorre porque, com Cobb-Douglas, o efeito-renda cruzado exatamente compensa o efeito substituição cruzado. A parcela de renda gasta em cada bem é fixa, logo uma mudança em \(p_2\) não libera nem absorve gasto do bem 1.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-3)

---

## ✏️ Exercício 6.4 {#ex-6-4}

**Solução.**

**(a)** Atributos por unidade de gasto:

| Bem | Calorias/R\$ | Proteínas/R\$ |
|:----|:-:|:-:|
| Arroz | 130/5 = 26 | 2,5/5 = 0,5 |
| Frango | 165/18 = 9,17 | 31/18 = 1,72 |

Sejam \(a\) = unidades de arroz e \(f\) = unidades de frango. Os atributos são:

\[
z_1 = 130a + 165f, \qquad z_2 = 2{,}5a + 31f
\]

A restrição orçamentária: \(5a + 18f = 200\).

A utilidade é \(U = z_1^{0,4} z_2^{0,6}\). Substituindo \(a = (200 - 18f)/5 = 40 - 3{,}6f\):

\[
z_1 = 130(40 - 3{,}6f) + 165f = 5200 - 468f + 165f = 5200 - 303f
\]

\[
z_2 = 2{,}5(40 - 3{,}6f) + 31f = 100 - 9f + 31f = 100 + 22f
\]

Maximizando \(z_1^{0,4} z_2^{0,6}\) em relação a \(f\):

CPO: \(\frac{0{,}4}{z_1}(-303) + \frac{0{,}6}{z_2}(22) = 0\)

\[
\frac{0{,}6 \times 22}{z_2} = \frac{0{,}4 \times 303}{z_1} \implies \frac{13{,}2}{z_2} = \frac{121{,}2}{z_1} \implies z_1 = 9{,}182 z_2
\]

Substituindo: \(5200 - 303f = 9{,}182(100 + 22f)\)

\[
5200 - 303f = 918{,}2 + 202f \implies 4281{,}8 = 505f \implies f \approx 8{,}48
\]

\[
a = 40 - 3{,}6 \times 8{,}48 \approx 9{,}47
\]

**(b)** Com o ovo (155 cal, 13 prot, R\$ 8), o problema passa a ter 3 bens e 2 atributos. A eficiência do ovo: 19,4 cal/R\$ e 1,63 prot/R\$. O ovo é dominado pelo frango em proteínas/R\$ (1,63 < 1,72) e pelo arroz em calorias/R\$ (19,4 < 26). No entanto, oferece uma combinação intermediária que pode ser ótima dependendo dos pesos.

Resolvendo o sistema expandido (omitindo álgebra extensa), o ovo tenderia a substituir parcialmente ambos os bens existentes se oferecer uma combinação de atributos mais próxima da razão ótima \(z_1/z_2\) que a dos bens originais. Na prática, o ovo entraria na cesta como uma fonte intermediária custo-efetiva.

**Interpretação econômica:** O modelo de Lancaster permite analisar a entrada de novos produtos não por seus preços diretos, mas por seus "preços de atributos". No Brasil, a diversidade de fontes proteicas (frango, ovo, feijão) com diferentes perfis de atributos e preços explica a heterogeneidade dos padrões alimentares entre regiões e classes de renda.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-4)

---

## ✏️ Exercício 6.5 {#ex-6-5}

**Solução.**

**(a)** A condição de Gorman exige que as curvas de Engel individuais sejam lineares e paralelas: \(x_i = a_i(p) + b(p) \cdot I_i\), onde \(b(p)\) é comum a todos os consumidores.

- Consumidor A: \(x_1^A = I^A/(2p_1)\) → linear em \(I^A\), com \(b^A = 1/(2p_1)\).
- Consumidor B: \(x_1^B = (I^B)^2/(100 p_1)\) → **não linear** em \(I^B\).

A curva de Engel de B é quadrática. A condição de Gorman **não** é satisfeita. Logo, a demanda de mercado **não** pode ser escrita como função da renda agregada.

**(b)** Com \(I^A = I^B = 100\), \(p_1 = 10\):

\[
X_1 = \frac{100}{20} + \frac{10000}{1000} = 5 + 10 = 15
\]

Redistribuição (\(I^A = 50\), \(I^B = 150\)):

\[
X_1 = \frac{50}{20} + \frac{22500}{1000} = 2{,}5 + 22{,}5 = 25
\]

A demanda **aumentou** de 15 para 25, apesar da renda total permanecer em 200.

**(c)** Quando a condição de Gorman falha, a distribuição de renda afeta a demanda agregada. Políticas de redistribuição como o Bolsa Família alteram a demanda de mercado não apenas pelo efeito mecânico sobre a renda total (que não muda em transferências puras), mas pela diferença nas propensões marginais a consumir entre os beneficiários e os contribuintes. No exemplo, transferir renda para o consumidor B (com demanda convexa na renda) eleva a demanda agregada. Empiricamente, famílias de baixa renda tendem a ter maior propensão marginal a consumir bens básicos — uma violação da condição de Gorman que é relevante para avaliar os efeitos macroeconômicos de programas de transferência.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-5)

---

## ✏️ Exercício 6.6 {#ex-6-6}

**Solução.**

**(a)** Com \(U = x_1^{0{,}5} x_2^{0{,}5}\) (Cobb-Douglas com \(a = 0{,}5\)), as demandas marshallianas são:

\[
x_1^* = \frac{0{,}5 \cdot I}{p_1} = \frac{I}{2p_1}, \qquad x_2^* = \frac{I}{2p_2}
\]

A elasticidade-preço cruzada marshalliana de \(x_1\) em relação a \(p_2\):

\[
\varepsilon_{x_1, p_2}^M = \frac{\partial x_1}{\partial p_2} \cdot \frac{p_2}{x_1} = 0 \cdot \frac{p_2}{x_1} = 0
\]

pois \(x_1^* = I/(2p_1)\) não depende de \(p_2\). Os bens são **marshallianos independentes** (nem substitutos nem complementos brutos).

**(b)** A utilidade indireta é \(V(p_1, p_2, I) = \frac{I}{2p_1^{0{,}5} p_2^{0{,}5}}\). Invertendo para obter a função dispêndio:

\[
E(p_1, p_2, \bar{u}) = 2\bar{u} \, p_1^{0{,}5} p_2^{0{,}5}
\]

Pelo Lema de Shephard, as demandas hicksianas são:

\[
h_1 = \frac{\partial E}{\partial p_1} = \bar{u} \, p_1^{-0{,}5} p_2^{0{,}5}, \qquad h_2 = \frac{\partial E}{\partial p_2} = \bar{u} \, p_1^{0{,}5} p_2^{-0{,}5}
\]

O efeito substituição cruzado hicksiano:

\[
\frac{\partial h_1}{\partial p_2} = \bar{u} \, p_1^{-0{,}5} \cdot 0{,}5 \, p_2^{-0{,}5} = \frac{\bar{u}}{2\sqrt{p_1 p_2}} > 0
\]

Os bens são **substitutos líquidos** (hicksianos), como esperado para qualquer par de bens com apenas dois bens na economia.

**(c)** Pela Equação de Slutsky:

\[
\underbrace{\frac{\partial x_1}{\partial p_2}}_{= \, 0} = \underbrace{\frac{\partial h_1}{\partial p_2}}_{> \, 0} - \underbrace{x_2 \frac{\partial x_1}{\partial I}}_{> \, 0}
\]

Os dois termos do lado direito se cancelam exatamente. O efeito substituição cruzado (\(\partial h_1 / \partial p_2 > 0\)) é positivo: quando \(p_2\) sobe, mantendo a utilidade constante, o consumidor substitui \(x_2\) por \(x_1\). No entanto, o aumento de \(p_2\) também reduz o poder de compra real, diminuindo a demanda por \(x_1\) (já que \(x_1\) é bem normal). Com a Cobb-Douglas, esses dois efeitos se cancelam *perfeitamente* porque a parcela orçamentária de cada bem é constante (50% de \(I\) para cada bem) — propriedade característica da Cobb-Douglas. O que cancela o efeito substituição é o **efeito renda cruzado** \(x_2 \frac{\partial x_1}{\partial I} = \frac{I}{2p_2} \cdot \frac{1}{2p_1}\).

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-6)

---

## ✏️ Exercício 6.7 {#ex-6-7}

**Solução.**

**(a)** Os preços do arroz e do feijão variam proporcionalmente: \(p_R = \alpha \bar{p}_R\) e \(p_F = \alpha \bar{p}_F\). Definimos o bem composto "alimentos básicos":

\[
A \equiv \bar{p}_R \cdot R + \bar{p}_F \cdot F
\]

onde \(R\) e \(F\) são as quantidades de arroz e feijão, respectivamente. A restrição orçamentária original:

\[
p_R \cdot R + p_F \cdot F + p_M \cdot M + y = I
\]

Substituindo \(p_R = \alpha \bar{p}_R\) e \(p_F = \alpha \bar{p}_F\):

\[
\alpha (\bar{p}_R \cdot R + \bar{p}_F \cdot F) + p_M \cdot M + y = I
\]

\[
\alpha \cdot A + p_M \cdot M + y = I
\]

**(b)** O "preço" do bem composto \(A\) é \(\alpha\) (o índice que escala os preços do grupo). A "quantidade" de \(A\) é \(\bar{p}_R \cdot R + \bar{p}_F \cdot F\) — o valor do consumo de alimentos básicos a preços-base.

**(c)** O problema original tem 4 bens (\(R\), \(F\), \(M\), \(y\)) e se reduz a 3 bens (\(A\), \(M\), \(y\)) com a agregação. A simplificação é inválida para analisar o impacto de uma seca que afeta *apenas* o arroz, porque nesse caso \(p_R\) sobe sem que \(p_F\) suba na mesma proporção — os preços relativos dentro do grupo "alimentos básicos" mudam. O Teorema do Bem Composto exige que \(p_R/p_F = \bar{p}_R/\bar{p}_F\) permaneça constante (apenas o escalar \(\alpha\) varia). Quando a seca é específica ao arroz, o preço relativo arroz/feijão muda, invalidando a agregação. Nesse caso, seria necessário manter arroz e feijão como bens separados na análise.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-7)

---

## ✏️ Exercício 6.8 {#ex-6-8}

**Solução.**

**(a)** A propriedade \(S\mathbf{p} = \mathbf{0}\) implica, para a primeira linha da matriz:

\[
s_{11} p_1 + s_{12} p_2 + s_{13} p_3 = 0
\]

Com \(\mathbf{p} = (1, 1, 1)^\top\):

\[
-4 + 3 + s_{13} = 0 \implies s_{13} = 1
\]

**(b)** Como \(s_{13} = 1 > 0\), o bem 1 e o bem 3 são **substitutos líquidos** (hicksianos).

**(c)** Usando a segunda linha (\(s_{21} p_1 + s_{22} p_2 + s_{23} p_3 = 0\)):

\[
3 + (-5) + 2 = 0 \quad \checkmark
\]

A segunda linha já está balanceada. Para a terceira linha (\(s_{31} p_1 + s_{32} p_2 + s_{33} p_3 = 0\)):

\[
s_{13} \cdot 1 + s_{23} \cdot 1 + s_{33} \cdot 1 = 0 \implies 1 + 2 + s_{33} = 0 \implies s_{33} = -3
\]

De fato \(s_{33} = -3 \leq 0\), confirmando o efeito substituição próprio não positivo do bem 3, como exigido pela negatividade semidefinida da matriz de Slutsky.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-8)

---

## ✏️ Exercício 6.9 {#ex-6-9}

**Solução.**

**(a)** O imposto sobre gasolina eleva \(p_G\) em 10% (\(\Delta p_G / p_G = +10\%\)). A variação percentual na demanda por gasolina:

\[
\frac{\Delta Q_G}{Q_G} \approx \varepsilon_{G, p_G} \cdot \frac{\Delta p_G}{p_G} = (-0{,}60) \times 10\% = -6\%
\]

A demanda por gasolina cai aproximadamente 6%.

**(b)** A variação percentual na demanda por etanol, via elasticidade cruzada:

\[
\frac{\Delta Q_E}{Q_E} \approx \varepsilon_{E, p_G} \cdot \frac{\Delta p_G}{p_G} = (+0{,}65) \times 10\% = +6{,}5\%
\]

A demanda por etanol aumenta aproximadamente 6,5%.

**(c)** A perda de peso morto (triângulo de Harberger) associada ao imposto sobre gasolina é:

\[
DWL \approx \frac{1}{2} \cdot |\Delta Q_G| \cdot |\Delta p_G|
\]

Com \(Q_G^0 = 100\) litros, \(p_G^0 = 6{,}00\) R\$/l e \(\Delta p_G / p_G = 10\%\):

\[
\Delta p_G = 0{,}10 \times 6{,}00 = 0{,}60 \text{ R\$/l}
\]
\[
\Delta Q_G = -0{,}06 \times 100 = -6 \text{ litros}
\]
\[
DWL \approx \frac{1}{2} \times 6 \times 0{,}60 = \text{R\$ } 1{,}80
\]

**Interpretação:** A elevada elasticidade-preço da gasolina (\(-0{,}60\)) — muito superior à de bens como alimentos ou habitação — implica que o imposto sobre combustíveis gera perdas de peso morto relativamente maiores por real arrecadado. Bens com elevada elasticidade-preço cruzada (gasolina e etanol são fortes substitutos) também redistribuem demanda significativamente: um imposto sobre gasolina efetivamente subsidia o etanol, alterando a composição da frota e as emissões de carbono — uma externalidade positiva que poderia ser contabilizada como benefício social parcialmente compensando o peso morto.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-9)

---

## ✏️ Exercício 6.10 {#ex-6-10}

**Solução.**

Queremos provar que, com \(n = 2\) bens, \(s_{12} = \frac{\partial h_1}{\partial p_2} \geq 0\).

**Passo 1: Condição de homogeneidade.**

Pela homogeneidade de grau zero das demandas hicksianas, aplicando o Teorema de Euler:

\[
\sum_{j=1}^{n} p_j \frac{\partial h_i}{\partial p_j} = 0 \quad \text{para todo } i
\]

Com \(n = 2\) e \(i = 1\):

\[
p_1 s_{11} + p_2 s_{12} = 0 \label{eq:passo1} \tag{P1}
\]

**Passo 2: Negatividade do efeito substituição próprio.**

Da negatividade semidefinida da matriz de Slutsky (decorrente da minimização de dispêndio), temos:

\[
s_{11} \leq 0
\]

**Passo 3: Isolando \(s_{12}\).**

Da equação \eqref{eq:passo1}:

\[
s_{12} = -\frac{p_1}{p_2} s_{11}
\]

Como \(p_1 > 0\), \(p_2 > 0\) e \(s_{11} \leq 0\), concluímos:

\[
s_{12} = -\frac{p_1}{p_2} \underbrace{s_{11}}_{\leq 0} \geq 0
\]

**Conclusão:** \(\frac{\partial h_1}{\partial p_2} = s_{12} \geq 0\). Com dois bens, o efeito substituição cruzado hicksiano é sempre não negativo, confirmando que dois bens são sempre substitutos líquidos (ou no mínimo independentes). \(\blacksquare\)

**Observação:** A igualdade \(s_{12} = 0\) ocorreria apenas se \(s_{11} = 0\), o que implicaria que o bem 1 não reage compensadamente ao seu próprio preço — um caso degenerado que na prática não ocorre para bens interiores. Para soluções interiores com preferências estritamente convexas, \(s_{11} < 0\) e, portanto, \(s_{12} > 0\) estritamente.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-10)
