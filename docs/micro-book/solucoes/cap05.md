---
title: "Soluções — Capítulo 5"
---

# Soluções dos Exercícios — Capítulo 5

[← Voltar ao Capítulo 5](../cap05/index.md)

---

## ✏️ Exercício 5.1 {#ex-5-1}

**Solução.**

**(a)** Com \(U = x_1^{1/3} x_2^{2/3}\) (Cobb-Douglas com \(\alpha = 1/3\)), as demandas marshallianas são:

\[
x_1^* = \frac{\alpha I}{p_1} = \frac{I}{3p_1}, \qquad x_2^* = \frac{(1-\alpha) I}{p_2} = \frac{2I}{3p_2}
\]

**(b)** *Homogeneidade de grau zero:* \(x_1^*(tp_1, tp_2, tI) = \frac{tI}{3(tp_1)} = \frac{I}{3p_1} = x_1^*\). ✓

*Esgotamento da renda:* \(p_1 x_1^* + p_2 x_2^* = \frac{I}{3} + \frac{2I}{3} = I\). ✓

**(c)** Classificação:

- \(\frac{\partial x_1^*}{\partial I} = \frac{1}{3p_1} > 0\) → bem 1 é **normal**.
- \(\frac{\partial x_2^*}{\partial I} = \frac{2}{3p_2} > 0\) → bem 2 é **normal**.

Elasticidade-renda: \(\varepsilon_{x_1, I} = \frac{\partial x_1}{\partial I} \cdot \frac{I}{x_1} = \frac{1}{3p_1} \cdot \frac{I}{I/(3p_1)} = 1\). Analogamente, \(\varepsilon_{x_2, I} = 1\).

Ambos os bens têm elasticidade-renda unitária — nem luxo nem necessidade. Isso é uma propriedade geral da Cobb-Douglas: as parcelas orçamentárias são constantes e iguais aos expoentes.

**Interpretação econômica:** Com Cobb-Douglas, o consumidor sempre aloca frações fixas da renda a cada bem (1/3 e 2/3). Isso implica curvas de Engel lineares passando pela origem — um resultado frequentemente usado como benchmark em análise empírica.


↩ [Voltar ao enunciado](../cap05/index.md#ex-5-1)

---

## ✏️ Exercício 5.2 {#ex-5-2}

**Solução.**

**(a)** Com \(U = \ln x + y\), \(p_y = 1\):

*Marshalliana:* CPO: \(1/x = \lambda p_x\) e \(1 = \lambda\), logo \(x^* = 1/p_x\), \(y^* = I - 1\).

*Hicksiana:* Minimizando dispêndio sujeito a \(\ln x + y = \bar{u}\): \(h_x = 1/p_x\), \(h_y = \bar{u} - \ln(1/p_x)\).

**(b)** \(\partial x^*/\partial I = 0\). O efeito-renda sobre \(x\) é zero: toda variação de renda é absorvida por \(y\). Na equação de Slutsky, o termo de renda desaparece, e a demanda marshalliana coincide com a hicksiana.

**(c)** Sejam \(p_x^0 = 4\) e \(p_x^1 = 1\).

*Variação Compensatória (VC):* \(VC = E(p^0, \bar{u}^1) - E(p^1, \bar{u}^1) = E(p^0, \bar{u}^1) - I\).

Com \(\bar{u}^1 = \ln(1) + I - 1 = I - 1\): \(E = p_x^0 \cdot h_x(p^0) + h_y = 4 \cdot (1/4) + (\bar{u}^1 - \ln(1/4)) = 1 + I - 1 + \ln 4 = I + \ln 4\).

\(VC = (I + \ln 4) - I = \ln 4 \approx 1{,}386\).

*Variação Equivalente (VE):* \(VE = I - E(p^1, \bar{u}^0)\). Com \(\bar{u}^0 = \ln(1/4) + I - 1\):

\(E(p^1, \bar{u}^0) = 1 \cdot 1 + \bar{u}^0 - \ln 1 = 1 + \ln(1/4) + I - 1 = I - \ln 4\).

\(VE = I - (I - \ln 4) = \ln 4 \approx 1{,}386\).

*Excedente do Consumidor (EC):* \(\Delta EC = \int_1^4 \frac{1}{p_x} dp_x = \ln 4 \approx 1{,}386\).

\[
\boxed{VC = VE = \Delta EC = \ln 4 \approx 1{,}386}
\]

**Interpretação econômica:** Com utilidade quase-linear, as três medidas de bem-estar coincidem porque não há efeito-renda. Isso elimina a ambiguidade que existe em preferências gerais, onde VC ≠ VE ≠ EC. É por isso que preferências quase-lineares são tão populares em análise de equilíbrio parcial.


↩ [Voltar ao enunciado](../cap05/index.md#ex-5-2)

---

## ✏️ Exercício 5.3 {#ex-5-3}

**Solução.**

A equação de Slutsky é:

\[
\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\text{ES} \leq 0} - x_i \underbrace{\frac{\partial x_i}{\partial I}}_{\text{ER}}
\]

O efeito substituição é sempre não positivo (\(\partial h_i/\partial p_i \leq 0\)) pela negatividade da matriz de Slutsky.

Um bem de Giffen tem \(\partial x_i/\partial p_i > 0\) (demanda crescente no preço). Para que isso ocorra:

\[
\frac{\partial x_i}{\partial p_i} > 0 \implies \underbrace{\frac{\partial h_i}{\partial p_i}}_{\leq 0} > x_i \frac{\partial x_i}{\partial I}
\]

Como o lado esquerdo é não positivo, o lado direito deve ser negativo, o que exige \(\frac{\partial x_i}{\partial I} < 0\) (bem inferior). Além disso, o efeito-renda negativo deve dominar o efeito substituição em magnitude.

Logo, **todo bem de Giffen é necessariamente inferior**. \(\blacksquare\)

A recíproca é **falsa**: nem todo bem inferior é de Giffen. Para que um bem inferior seja de Giffen, o efeito-renda deve ser suficientemente grande (em valor absoluto) para superar o efeito substituição. Na prática, isso exige que o bem represente uma parcela muito grande do orçamento (para que \(x_i \cdot |\partial x_i/\partial I|\) seja grande) — condição raramente satisfeita.

**Interpretação econômica:** Bens de Giffen são uma curiosidade teórica, não uma regularidade empírica. O exemplo clássico (batatas na Irlanda durante a Grande Fome) requer que um bem inferior seja tão essencial e ocupe uma parcela tão grande do orçamento que o efeito-renda negativo domine completamente a substituição.


↩ [Voltar ao enunciado](../cap05/index.md#ex-5-3)

---

## ✏️ Exercício 5.4 {#ex-5-4}

**Solução.**

**(a)** Agregação de Engel: \(w_1 \varepsilon_{x_1,I} + w_2 \varepsilon_{x_2,I} = 1\).

\[
0{,}4 \times 0{,}5 + 0{,}6 \times \varepsilon_{x_2,I} = 1 \implies 0{,}2 + 0{,}6 \varepsilon_{x_2,I} = 1 \implies \varepsilon_{x_2,I} = \frac{0{,}8}{0{,}6} = \frac{4}{3} \approx 1{,}33
\]

**(b)** Bem 1: \(\varepsilon_{x_1,I} = 0{,}5 < 1\) → **necessidade**. Bem 2: \(\varepsilon_{x_2,I} = 4/3 > 1\) → **luxo**.

**(c)** Condição de homogeneidade: \(\varepsilon_{x_i,p_i} + \varepsilon_{x_i,p_j} + \varepsilon_{x_i,I} = 0\).

\[
-0{,}8 + \varepsilon_{x_1,p_2} + 0{,}5 = 0 \implies \varepsilon_{x_1,p_2} = 0{,}3
\]

Como \(\varepsilon_{x_1,p_2} > 0\), os bens são **substitutos brutos**: um aumento no preço do bem 2 eleva a demanda pelo bem 1.

**Interpretação econômica:** As restrições de agregação e homogeneidade são "disciplinadoras" da teoria do consumidor. A Agregação de Engel garante que a soma ponderada das elasticidades-renda iguala 1 — reflexo algébrico do esgotamento da renda. A homogeneidade garante ausência de ilusão monetária. Essas restrições são testáveis empiricamente e frequentemente impostas em estimações de sistemas de demanda.


↩ [Voltar ao enunciado](../cap05/index.md#ex-5-4)

---

## ✏️ Exercício 5.5 {#ex-5-5}

**Solução.**

**(a)** \(\%\Delta Q_{\text{gasolina}} \approx \varepsilon_{p} \times \%\Delta p = -0{,}40 \times 15\% = -6\%\).

A demanda por gasolina cairia aproximadamente 6%.

**(b)** \(\%\Delta Q_{\text{etanol}} \approx \varepsilon_{p_{\text{gas}}} \times \%\Delta p_{\text{gas}} = 1{,}10 \times 15\% = +16{,}5\%\).

A demanda por etanol aumentaria aproximadamente 16,5%.

**(c)** Limitações da análise estática:

- **Curto vs. longo prazo:** As elasticidades utilizadas são de curto prazo. No longo prazo, os consumidores podem substituir o veículo por um modelo flex-fuel ou elétrico, e a elasticidade-preço da gasolina tende a ser maior (em valor absoluto). Isso significa que a redução de 6% **subestima** o efeito de longo prazo.
- **Efeitos de equilíbrio geral:** O aumento na demanda por etanol pressionaria para cima o preço do etanol, atenuando parcialmente a substituição. A análise *ceteris paribus* ignora esse feedback.
- **Assimetria de resposta:** Consumidores podem responder de forma diferente a aumentos e reduções de preço (efeito foguete-pena), e a linearidade implícita na análise pode falhar para variações grandes (15%).
- **Efeitos distributivos:** A elasticidade média esconde heterogeneidade. Consumidores de baixa renda, para os quais o combustível representa maior parcela do orçamento, podem ter elasticidades diferentes.

**Interpretação econômica:** No contexto brasileiro, a forte substituibilidade gasolina-etanol (elevada elasticidade cruzada) reflete a ampla frota flex-fuel. Essa peculiaridade do mercado brasileiro faz com que tributos sobre gasolina tenham efeitos indiretos significativos sobre o setor sucroalcooleiro — uma interdependência que a análise *ceteris paribus* captura parcialmente.

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-5)

---

## ✏️ Exercício 5.6 {#ex-5-6}

**Solução.**

**(a)** Para \(U = x_1^{1/4} x_2^{3/4}\) (Cobb-Douglas com \(\alpha = 1/4\)), as demandas marshallianas são:

\[
x_1^* = \frac{\alpha I}{p_1} = \frac{I}{4p_1}, \qquad x_2^* = \frac{(1-\alpha) I}{p_2} = \frac{3I}{4p_2}
\]

Com os valores numéricos \(p_1 = 2\), \(p_2 = 6\), \(I = 240\):

\[
x_1^* = \frac{240}{4 \times 2} = 30, \qquad x_2^* = \frac{3 \times 240}{4 \times 6} = 30
\]

**(b)** As elasticidades-renda são:

\[
\varepsilon_{x_1, I} = \frac{\partial x_1^*}{\partial I} \cdot \frac{I}{x_1^*} = \frac{1}{4p_1} \cdot \frac{I}{I/(4p_1)} = 1
\]

\[
\varepsilon_{x_2, I} = \frac{\partial x_2^*}{\partial I} \cdot \frac{I}{x_2^*} = \frac{3}{4p_2} \cdot \frac{I}{3I/(4p_2)} = 1
\]

**(c)** Ambos os bens têm \(\varepsilon_{x_i, I} = 1 > 0\), portanto são **normais**. Como \(\varepsilon_{x_i, I} = 1\), não são nem luxo nem necessidade — são exatamente bens de elasticidade-renda unitária.

**Interpretação econômica:** Esse resultado é uma propriedade geral da Cobb-Douglas: independentemente dos expoentes \(\alpha\) e \(1-\alpha\), a elasticidade-renda de cada bem é sempre igual a 1. Isso ocorre porque a regra de decisão ótima aloca sempre a fração fixa \(\alpha\) da renda ao bem 1 e \(1-\alpha\) ao bem 2 — portanto, quando a renda dobra, o consumo de cada bem também dobra. Em termos das curvas de Engel, ambas são retas passando pela origem, com inclinação \(\alpha/(4p_1)\) e \((1-\alpha)/(4p_2)\) respectivamente.

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-6)

---

## ✏️ Exercício 5.7 {#ex-5-7}

**Solução.**

**(a) Verdadeiro.** Pela Equação de Slutsky com \(i = j\):

\[
\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\leq 0} - x_i \frac{\partial x_i}{\partial I}
\]

Se o bem é de Giffen, \(\partial x_i/\partial p_i > 0\). Como o efeito substituição é sempre \(\leq 0\), o efeito renda deve ser positivo: \(-x_i \partial x_i/\partial I > 0\), o que implica \(\partial x_i/\partial I < 0\) — definição de bem inferior. \(\blacksquare\)

**(b) Falso.** Um bem pode ser inferior sem ser de Giffen. Para que seja de Giffen, além de inferior, o efeito renda deve superar o efeito substituição em valor absoluto:

\[
x_i \left|\frac{\partial x_i}{\partial I}\right| > \left|\frac{\partial h_i}{\partial p_i}\right|
\]

Essa condição exige que o bem represente parcela muito elevada do orçamento (para que \(x_i\) seja grande) e que a elasticidade-renda seja fortemente negativa. Na prática, a maioria dos bens inferiores — como farinha de mandioca no Brasil — representa parcela pequena do orçamento, de modo que o efeito renda não domina, e a curva de demanda permanece negativamente inclinada.

**(c) Falso.** Para \(U = x_1^a x_2^{1-a}\), as demandas marshallianas são \(x_1^* = aI/p_1\) e \(x_2^* = (1-a)I/p_2\). As elasticidades-renda são \(\varepsilon_{x_i, I} = 1\) para ambos os bens (como vimos no Exercício 5.6 e na Seção 5.2.3). Com \(\varepsilon = 1\), os bens Cobb-Douglas não são de luxo (\(\varepsilon > 1\)) nem de necessidade (\(0 < \varepsilon < 1\)) — são exatamente bens de elasticidade unitária.

**(d) Verdadeiro.** Para \(U = v(x_1) + x_2\) quase-linear, a demanda por \(x_1\) não depende da renda: \(\partial x_1/\partial I = 0\). Portanto, pela Equação de Slutsky:

\[
\frac{\partial x_1}{\partial p_1} = \frac{\partial h_1}{\partial p_1} - x_1 \cdot 0 = \frac{\partial h_1}{\partial p_1}
\]

O efeito renda é nulo, e o efeito total sobre \(x_1\) coincide com o efeito substituição. Isso também implica que as curvas de demanda marshalliana e hicksiana por \(x_1\) são idênticas.

**Interpretação econômica:** A afirmação (d) é a base teórica da equivalência \(VC = VE = \Delta EC\) para utilidades quase-lineares, demonstrada na Seção 5.8.4. A intuição é que, sem efeito renda, não há discrepância entre as curvas marshalliana e hicksiana — eliminando a fonte de diferença entre as três medidas de bem-estar.

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-7)

---

## ✏️ Exercício 5.8 {#ex-5-8}

**Solução.**

**Dados:** \(U = x_1^{1/2} x_2^{1/2}\), \(p_1 = p_2 = 1\), \(I = 100\), \(p_1' = 4\).

**(a) Cestas ótimas**

Demandas marshallianas (Cobb-Douglas, \(a = b = 1/2\)):

\[
x_i^* = \frac{I}{2p_i}
\]

- Antes (\(p_1 = 1\)): \(x_1^0 = 50\), \(x_2^0 = 50\). \(U_0 = \sqrt{50 \times 50} = 50\).
- Depois (\(p_1' = 4\)): \(x_1^1 = 100/(2 \times 4) = 12{,}5\), \(x_2^1 = 50\). \(U_1 = \sqrt{12{,}5 \times 50} = \sqrt{625} = 25\).

Efeito total: \(\Delta x_1 = 12{,}5 - 50 = -37{,}5\).

**(b) Decomposição de Hicks**

Demanda hicksiana: \(h_1 = \bar{U} \sqrt{p_2/p_1}\).

Com \(\bar{U} = U_0 = 50\) e novo preço \(p_1' = 4\):

\[
h_1(p_1', U_0) = 50 \sqrt{1/4} = 50 \times 0{,}5 = 25
\]

Efeito substituição: \(ES = h_1(p_1', U_0) - x_1^0 = 25 - 50 = -25\).

Efeito renda: \(ER = x_1^1 - h_1(p_1', U_0) = 12{,}5 - 25 = -12{,}5\).

Verificação: \(ES + ER = -25 + (-12{,}5) = -37{,}5 = \Delta x_1\). ✓

**(c) Variação Compensatória e Variação Equivalente**

Função dispêndio para Cobb-Douglas \((a = b = 1/2)\): \(E(\mathbf{p}, \bar{U}) = 2\bar{U}\sqrt{p_1 p_2}\).

\[
VC = E(p_1', p_2, U_0) - I = 2 \times 50 \times \sqrt{4 \times 1} - 100 = 100 \times 2 - 100 = 100
\]

\[
VE = I - E(p_1, p_2, U_1) = 100 - 2 \times 25 \times \sqrt{1 \times 1} = 100 - 50 = 50
\]

**(d) Excedente do Consumidor e verificação da ordenação**

\[
\Delta EC = \int_{p_1^0}^{p_1^1} x_1^*(p) \, dp = \int_{1}^{4} \frac{100}{2p} \, dp = 50 \left[\ln p\right]_1^4 = 50 \ln 4 \approx 50 \times 1{,}386 = 69{,}3
\]

Verificação da ordenação:

\[
\boxed{VC = 100 > \Delta EC \approx 69{,}3 > VE = 50}
\]

**Atenção:** para um *aumento* de preço (perda de bem-estar), a ordenação se inverte em relação à queda de preço: \(VC > EC > VE\). O consumidor perde \(100\) reais de bem-estar quando medido pela VC (o que o governo precisaria compensar), \(69{,}3\) pelo EC marshalliano, e \(50\) pela VE (o que o consumidor pagaria para evitar o aumento).

**Interpretação econômica:** A diferença entre VC e VE (100 vs. 50) é expressiva porque a variação de preço é grande (de 1 para 4, um aumento de 300%) e o bem representa metade do orçamento — ambas as condições que ampliam a divergência entre as medidas. Em aplicações de política pública (como avaliação do impacto de reajustes tarifários de energia elétrica), essa diferença de 50% entre VC e VE justifica o uso de medidas exatas de bem-estar em vez do EC marshalliano.

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-8)

---

## ✏️ Exercício 5.9 {#ex-5-9}

**Solução.**

**Dados:** \(w_1 = 0{,}4\), \(w_2 = 0{,}6\), \(\varepsilon_{1,I} = 0{,}6\), \(\varepsilon_{1,p_1} = -0{,}5\).

**(a) Elasticidade-renda dos outros bens (Agregação de Engel)**

\[
w_1 \varepsilon_{1,I} + w_2 \varepsilon_{2,I} = 1 \implies 0{,}4 \times 0{,}6 + 0{,}6 \times \varepsilon_{2,I} = 1
\]

\[
0{,}24 + 0{,}6 \, \varepsilon_{2,I} = 1 \implies \varepsilon_{2,I} = \frac{0{,}76}{0{,}6} \approx 1{,}267
\]

Bem 1 (alimentos): \(\varepsilon_{1,I} = 0{,}6 \in (0,1)\) → **necessidade normal**.
Bem 2 (outros bens): \(\varepsilon_{2,I} \approx 1{,}27 > 1\) → **bem de luxo**.

Esse padrão é consistente com a Lei de Engel: as famílias alocam proporcionalmente menos para alimentos conforme a renda cresce.

**(b) Elasticidade cruzada dos alimentos (condição de homogeneidade)**

\[
\varepsilon_{1,p_1} + \varepsilon_{1,p_2} + \varepsilon_{1,I} = 0 \implies -0{,}5 + \varepsilon_{1,p_2} + 0{,}6 = 0
\]

\[
\varepsilon_{1,p_2} = -0{,}1
\]

A elasticidade cruzada negativa indica que alimentos e outros bens são **complementos brutos**: um aumento no preço dos outros bens reduz levemente a demanda por alimentos. Isso pode refletir, por exemplo, que quando serviços (transporte, lazer) ficam mais caros, as famílias reduzem atividades que acompanham o consumo de alimentos fora do domicílio.

**(c) Variação na demanda por alimentos com aumento de 10% no preço**

Usando a elasticidade-preço própria:

\[
\%\Delta x_1 \approx \varepsilon_{1,p_1} \times \%\Delta p_1 = -0{,}5 \times 10\% = -5\%
\]

A demanda por alimentos cairia aproximadamente 5%.

**(d) Decomposição em efeito substituição e efeito renda**

A Equação de Slutsky na forma de elasticidades é:

\[
\varepsilon_{1,p_1} = \varepsilon_{1,p_1}^h - w_1 \varepsilon_{1,I}
\]

onde \(\varepsilon_{1,p_1}^h\) é a elasticidade de substituição (hicksiana) e \(w_1 \varepsilon_{1,I}\) é o termo de efeito renda.

Isolando o efeito substituição:

\[
\varepsilon_{1,p_1}^h = \varepsilon_{1,p_1} + w_1 \varepsilon_{1,I} = -0{,}5 + 0{,}4 \times 0{,}6 = -0{,}5 + 0{,}24 = -0{,}26
\]

O efeito renda (em elasticidade) é: \(-w_1 \varepsilon_{1,I} = -0{,}4 \times 0{,}6 = -0{,}24\).

Decomposição do \(-5\%\):

\[
\underbrace{-5\%}_{\text{efeito total}} = \underbrace{-2{,}6\%}_{\text{efeito substituição}} + \underbrace{(-2{,}4\%)}_{\text{efeito renda}}
\]

O efeito substituição (\(-2{,}6\%\)) captura a troca por outros bens quando alimentos ficam relativamente mais caros. O efeito renda (\(-2{,}4\%\)) captura o empobrecimento real das famílias com o aumento dos preços dos alimentos — que representam 40% do orçamento.

**Interpretação de política pública:** Os dois efeitos são de magnitude similar, o que reflete o elevado peso dos alimentos no orçamento familiar (\(w_1 = 0{,}4\)). Em termos de segurança alimentar, um aumento de 10% nos preços dos alimentos reduz seu consumo em 5% — parte por substituição (famílias buscam alimentos mais baratos ou produzem em casa) e parte por empobrecimento real. Políticas como o PAA (Programa de Aquisição de Alimentos) ou subsídios a alimentos básicos atuam principalmente pelo efeito renda: ao segurar o preço real dos alimentos para famílias pobres, evitam o empobrecimento e estabilizam a demanda.

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-9)

---

## ✏️ Exercício 5.10 {#ex-5-10}

**Solução.**

**(a) Simetria e semidefinição negativa da matriz de Slutsky**

**Passo 1 — Lema de Shephard.**

A função dispêndio \(E(\mathbf{p}, \bar{U})\) satisfaz o Lema de Shephard:

\[
h_i(\mathbf{p}, \bar{U}) = \frac{\partial E(\mathbf{p}, \bar{U})}{\partial p_i}
\]

**Passo 2 — Simetria.**

Como \(E\) é duas vezes continuamente diferenciável (pela regularidade das preferências), a ordem das derivadas parciais é irrelevante (teorema de Schwarz/Young):

\[
s_{ij} = \frac{\partial h_i}{\partial p_j} = \frac{\partial^2 E}{\partial p_j \partial p_i} = \frac{\partial^2 E}{\partial p_i \partial p_j} = \frac{\partial h_j}{\partial p_i} = s_{ji}
\]

Portanto \(\mathbf{S} = \mathbf{S}^\top\) — a matriz é simétrica. \(\blacksquare\)

**Passo 3 — Semidefinição negativa.**

A função dispêndio \(E(\mathbf{p}, \bar{U})\) é côncava em \(\mathbf{p}\) (pois é o ínfimo de funções lineares em \(\mathbf{p}\): \(E(\mathbf{p}, \bar{U}) = \min_\mathbf{x} \mathbf{p} \cdot \mathbf{x}\) sujeito a \(U(\mathbf{x}) \geq \bar{U}\)). Para qualquer função côncava duas vezes diferenciável, a matriz hessiana é negativa semidefinida. A Hessiana de \(E\) em relação a \(\mathbf{p}\) é exatamente \(\mathbf{S}\):

\[
[H_E]_{ij} = \frac{\partial^2 E}{\partial p_i \partial p_j} = \frac{\partial h_i}{\partial p_j} = s_{ij}
\]

Portanto, para todo vetor \(\mathbf{v} \in \mathbb{R}^n\):

\[
\mathbf{v}^\top \mathbf{S} \mathbf{v} = \mathbf{v}^\top H_E \mathbf{v} \leq 0
\]

pela concavidade de \(E\). Logo \(\mathbf{S}\) é negativa semidefinida. \(\blacksquare\)

**(b) Prova de que \(\mathbf{S}\mathbf{p} = \mathbf{0}\)**

Pela homogeneidade de grau zero da demanda hicksiana em preços — que decorre da homogeneidade de grau 1 da função dispêndio em \(\mathbf{p}\) —, o Teorema de Euler aplicado a \(h_i\) (de grau zero) diz:

\[
\sum_j p_j \frac{\partial h_i}{\partial p_j} = 0 \quad \forall i
\]

Em notação matricial, isso é \(\mathbf{S}\mathbf{p} = \mathbf{0}\): o vetor de preços \(\mathbf{p}\) é um vetor nulo da matriz de Slutsky.

**Interpretação econômica:** \(\mathbf{S}\mathbf{p} = \mathbf{0}\) significa que uma variação proporcional em todos os preços (multiplicar \(\mathbf{p}\) por uma constante) não altera a demanda hicksiana — o efeito substituição compensado não responde a variações equiproporcionais de preços. Isso é consistente com a ausência de ilusão monetária: se todos os preços nominais dobram mas a utilidade-alvo é mantida, o consumidor compensado não muda sua cesta. Em termos da matriz \(\mathbf{S}\), isso implica que \(\mathbf{S}\) é singular (posto menor que \(n\)) — ela possui pelo menos um autovalor igual a zero, correspondente ao vetor de preços \(\mathbf{p}\).

↩ [Voltar ao enunciado](../cap05/index.md#ex-5-10)
