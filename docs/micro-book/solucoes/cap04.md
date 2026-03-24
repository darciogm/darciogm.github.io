---
title: "Soluções — Capítulo 4"
---

# Soluções dos Exercícios — Capítulo 4

[← Voltar ao Capítulo 4](../cap04/index.md)

---

## ✏️ Exercício 4.1 {#ex-4-1}

**Solução.**

**(a)** Lagrangeano:

\[
\mathcal{L} = x_1^{1/2} x_2^{1/2} - \lambda(p_1 x_1 + p_2 x_2 - I)
\]

CPOs:

\[
\frac{1}{2} x_1^{-1/2} x_2^{1/2} = \lambda p_1 \tag{1}
\]

\[
\frac{1}{2} x_1^{1/2} x_2^{-1/2} = \lambda p_2 \tag{2}
\]

\[
p_1 x_1 + p_2 x_2 = I \tag{3}
\]

**(b)** Dividindo (1) por (2):

\[
\frac{x_2}{x_1} = \frac{p_1}{p_2} \implies x_2 = \frac{p_1}{p_2} x_1
\]

Substituindo em (3):

\[
p_1 x_1 + p_1 x_1 = I \implies x_1^* = \frac{I}{2p_1}
\]

\[
\boxed{x_1^* = \frac{I}{2p_1}, \qquad x_2^* = \frac{I}{2p_2}}
\]

Com Cobb-Douglas simétrica (\(\alpha = \beta = 1/2\)), o consumidor gasta metade da renda em cada bem.

**(c)** Substituindo na utilidade:

\[
V(p_1, p_2, I) = \left(\frac{I}{2p_1}\right)^{1/2} \left(\frac{I}{2p_2}\right)^{1/2} = \frac{I}{2\sqrt{p_1 p_2}}
\]

\[
\boxed{V(p_1, p_2, I) = \frac{I}{2(p_1 p_2)^{1/2}}}
\]

**(d)** A Identidade de Roy afirma que \(x_i^* = -\frac{\partial V/\partial p_i}{\partial V/\partial I}\).

\[
\frac{\partial V}{\partial p_1} = \frac{I}{2} \cdot \left(-\frac{1}{2}\right) p_1^{-3/2} p_2^{-1/2} = -\frac{I}{4p_1^{3/2} p_2^{1/2}}
\]

\[
\frac{\partial V}{\partial I} = \frac{1}{2(p_1 p_2)^{1/2}}
\]

\[
x_1^* = -\frac{-I/(4p_1^{3/2} p_2^{1/2})}{1/(2(p_1 p_2)^{1/2})} = \frac{I}{4p_1^{3/2} p_2^{1/2}} \cdot 2(p_1 p_2)^{1/2} = \frac{I}{2p_1} \quad \checkmark
\]

**Interpretação econômica:** A Identidade de Roy conecta a utilidade indireta às demandas marshallianas sem necessidade de re-resolver o problema de otimização. É a contraparte "dual" da condição de tangência no problema primal.


↩ [Voltar ao enunciado](../cap04/index.md#ex-4-1)

---

## ✏️ Exercício 4.2 {#ex-4-2}

**Solução.**

**(a)** Problema dual:

\[
\min_{x_1, x_2} \; p_1 x_1 + p_2 x_2 \quad \text{s.a.} \quad x_1^{1/2} x_2^{1/2} = \bar{u}
\]

Lagrangeano: \(\mathcal{L} = p_1 x_1 + p_2 x_2 - \mu(x_1^{1/2} x_2^{1/2} - \bar{u})\).

CPOs:

\[
p_1 = \frac{\mu}{2} x_1^{-1/2} x_2^{1/2}, \qquad p_2 = \frac{\mu}{2} x_1^{1/2} x_2^{-1/2}
\]

Dividindo: \(p_1/p_2 = x_2/x_1\), logo \(x_2 = (p_1/p_2) x_1\).

**(b)** Substituindo na restrição:

\[
x_1^{1/2} \left(\frac{p_1}{p_2} x_1\right)^{1/2} = \bar{u} \implies x_1 \left(\frac{p_1}{p_2}\right)^{1/2} = \bar{u}
\]

\[
\boxed{h_1 = \bar{u} \left(\frac{p_2}{p_1}\right)^{1/2}, \qquad h_2 = \bar{u} \left(\frac{p_1}{p_2}\right)^{1/2}}
\]

**(c)** A função dispêndio:

\[
E = p_1 h_1 + p_2 h_2 = p_1 \bar{u}\sqrt{p_2/p_1} + p_2 \bar{u}\sqrt{p_1/p_2} = \bar{u}\sqrt{p_1 p_2} + \bar{u}\sqrt{p_1 p_2}
\]

\[
\boxed{E(p_1, p_2, \bar{u}) = 2\bar{u}\sqrt{p_1 p_2}}
\]

**(d)** Lema de Shephard: \(h_i = \partial E/\partial p_i\).

\[
\frac{\partial E}{\partial p_1} = 2\bar{u} \cdot \frac{1}{2} p_1^{-1/2} p_2^{1/2} = \bar{u}\sqrt{p_2/p_1} = h_1 \quad \checkmark
\]

**(e)** Identidade 1: \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \frac{E}{2\sqrt{p_1 p_2}} = \frac{2\bar{u}\sqrt{p_1 p_2}}{2\sqrt{p_1 p_2}} = \bar{u}\) ✓

Identidade 2: \(E(\mathbf{p}, V(\mathbf{p}, I)) = 2 \cdot \frac{I}{2\sqrt{p_1 p_2}} \cdot \sqrt{p_1 p_2} = I\) ✓

**Interpretação econômica:** A dualidade entre os problemas primal (maximizar utilidade dado o orçamento) e dual (minimizar dispêndio dado o nível de utilidade) é uma das estruturas mais elegantes da teoria do consumidor. O Lema de Shephard e a Identidade de Roy são "atalhos" que exploram essa dualidade, evitando resolver dois problemas separados.


↩ [Voltar ao enunciado](../cap04/index.md#ex-4-2)

---

## ✏️ Exercício 4.3 {#ex-4-3}

**Solução.**

**(a)** Com preferências Leontief \(u = \min\{2x_1, x_2\}\), o ótimo ocorre onde \(2x_1 = x_2\). Substituindo na restrição:

\[
4x_1 + 2(2x_1) = 120 \implies 8x_1 = 120 \implies x_1^* = 15
\]

\[
x_2^* = 2 \times 15 = 30
\]

\[
\boxed{(x_1^*, x_2^*) = (15, 30)}
\]

**(b)** \(u^* = \min\{2 \times 15, 30\} = \min\{30, 30\} = 30\).

**(c)** Com \(I = 180\):

\[
8x_1 = 180 \implies x_1^* = 22{,}5, \quad x_2^* = 45
\]

\(u^* = 45 > 30\). Ambos os bens aumentam com a renda, logo ambos são **normais**.

De fato, com complementos perfeitos, as demandas são lineares na renda: \(x_1^* = I/8\) e \(x_2^* = I/4\), ambas crescentes em \(I\).

**Interpretação econômica:** Com complementos perfeitos, os bens são sempre consumidos em proporção fixa (aqui, \(x_2 = 2x_1\)). Não há substituição entre eles — uma mudança de preços relativos não altera a proporção, apenas a quantidade total consumida. Isso modela bens que devem ser usados juntos (café e açúcar, sapatos direito e esquerdo).


↩ [Voltar ao enunciado](../cap04/index.md#ex-4-3)

---

## ✏️ Exercício 4.4 {#ex-4-4}

**Solução.**

Com \(u = x_1^{0,4} x_2^{0,6}\), \(p_1 = 10\), \(p_2 = 5\), \(I = 1000\), as demandas Cobb-Douglas são:

\[
x_1^* = \frac{0{,}4 \cdot I}{p_1} = \frac{400}{10} = 40, \quad x_2^* = \frac{0{,}6 \cdot I}{p_2} = \frac{600}{5} = 120
\]

Utilidade sem imposto: \(u_0 = 40^{0,4} \cdot 120^{0,6}\).

**(a) Política A — Imposto específico.** O novo preço do bem 1 é \(p_1' = 10 + t\). Demanda: \(x_1' = 400/(10+t)\). Receita tributária:

\[
R = t \cdot x_1' = \frac{400t}{10 + t} = 100
\]

\[
400t = 100(10 + t) \implies 400t = 1000 + 100t \implies 300t = 1000 \implies t = 10/3 \approx 3{,}33
\]

Com \(t = 10/3\): \(p_1' = 40/3\), \(x_1' = 400/(40/3) = 30\), \(x_2' = 600/5 = 120\).

Utilidade: \(u_A = 30^{0,4} \cdot 120^{0,6}\).

**(b) Política B — Imposto *lump sum*.** A nova renda é \(I' = 900\).

\[
x_1'' = \frac{0{,}4 \times 900}{10} = 36, \quad x_2'' = \frac{0{,}6 \times 900}{5} = 108
\]

Utilidade: \(u_B = 36^{0,4} \cdot 108^{0,6}\).

**(c)** Comparando:

\[
u_A = 30^{0,4} \cdot 120^{0,6} \approx 3{,}99 \times 27{,}08 \approx 108{,}0
\]

\[
u_B = 36^{0,4} \cdot 108^{0,6} \approx 4{,}35 \times 25{,}39 \approx 110{,}4
\]

\(u_B > u_A\): o consumidor prefere o imposto *lump sum*. Isso é consistente com o **princípio do montante fixo**: para uma mesma receita arrecadada, um imposto *lump sum* causa menor perda de bem-estar que um imposto distorcivo, pois não altera os preços relativos. O imposto específico distorce a razão \(p_1/p_2\), levando o consumidor a substituir \(x_1\) por \(x_2\) de forma ineficiente (efeito substituição puro, sem contrapartida em receita).

**Interpretação econômica:** A diferença \(u_B - u_A\) é o custo de eficiência (peso morto) do imposto distorcivo. Em termos monetários, é a perda de excedente do consumidor que não se converte em receita para o governo — uma destruição líquida de bem-estar.


↩ [Voltar ao enunciado](../cap04/index.md#ex-4-4)

---

## ✏️ Exercício 4.5 {#ex-4-5}

**Solução.**

**(a)** Lagrangeano: \(\mathcal{L} = 2\sqrt{x_1} + x_2 - \lambda(p_1 x_1 + p_2 x_2 - I)\).

CPOs:

\[
\frac{1}{\sqrt{x_1}} = \lambda p_1, \qquad 1 = \lambda p_2
\]

Da segunda: \(\lambda = 1/p_2\). Substituindo na primeira:

\[
\frac{1}{\sqrt{x_1}} = \frac{p_1}{p_2} \implies x_1^* = \frac{p_2^2}{p_1^2}
\]

Da restrição: \(x_2^* = \frac{I - p_1 x_1^*}{p_2} = \frac{I}{p_2} - \frac{p_2}{p_1}\).

A solução é interior se \(x_2^* > 0\), ou seja, \(I > p_2^2/p_1\).

**(b)** A demanda \(x_1^* = p_2^2/p_1^2\) não contém \(I\). Todo aumento de renda vai para \(x_2\):

\[
\frac{\partial x_1^*}{\partial I} = 0, \qquad \frac{\partial x_2^*}{\partial I} = \frac{1}{p_2}
\]

Com utilidade quase-linear, o efeito-renda sobre o bem não linear é zero — a renda afeta apenas o numerário (\(x_2\)).

**(c)** Utilidade indireta (substituindo as demandas):

\[
V = 2\sqrt{p_2^2/p_1^2} + \frac{I}{p_2} - \frac{p_2}{p_1} = \frac{2p_2}{p_1} + \frac{I}{p_2} - \frac{p_2}{p_1} = \frac{p_2}{p_1} + \frac{I}{p_2}
\]

Função dispêndio (invertendo \(V = \bar{u}\)):

\[
\bar{u} = \frac{p_2}{p_1} + \frac{E}{p_2} \implies E = p_2\bar{u} - \frac{p_2^2}{p_1}
\]

**(d)** Demanda hicksiana (Lema de Shephard):

\[
h_1 = \frac{\partial E}{\partial p_1} = \frac{p_2^2}{p_1^2}
\]

Que é idêntica à demanda marshalliana \(x_1^* = p_2^2/p_1^2\). Isso ocorre porque o efeito-renda sobre \(x_1\) é zero. Pela equação de Slutsky:

\[
\frac{\partial x_1}{\partial p_1} = \frac{\partial h_1}{\partial p_1} - x_1 \frac{\partial x_1}{\partial I}
\]

Como \(\partial x_1/\partial I = 0\), o termo de efeito-renda desaparece, e a demanda marshalliana coincide com a hicksiana.

**Interpretação econômica:** Com preferências quase-lineares, toda a resposta a mudanças de preço é efeito substituição puro (Slutsky). Isso torna a análise de bem-estar particularmente simples: o excedente do consumidor marshalliano é uma medida exata da variação compensadora e da variação equivalente — não há ambiguidade entre as três medidas de bem-estar.

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-5)

---

## ✏️ Exercício 4.6 {#ex-4-6}

**Solução.**

**(a)** Para \(u = x_1 x_2\) (Cobb-Douglas com \(a=b=1\)): \(x_1^* = \frac{I}{2p_1} = \frac{80}{4} = 20\), \(x_2^* = \frac{I}{2p_2} = \frac{80}{8} = 10\).

**(b)** \(V = x_1^* \cdot x_2^* = 200\). Pela fórmula: \(V = \frac{I^2}{4p_1 p_2} = \frac{6400}{32} = 200\). ✓

**(c)** \(\partial V/\partial p_1 = -\frac{I^2}{4p_1^2 p_2} = -\frac{6400}{64} = -100\). \(\partial V/\partial I = \frac{I}{2p_1 p_2} = \frac{80}{8} = 10\). Roy: \(x_1 = -(-100)/10 = 10\). Espere — isso não bate. Recalculando: \(\partial V/\partial I = \frac{2I}{4p_1 p_2} = \frac{160}{32} = 5\). Logo \(x_1 = 100/5 = 20\). ✓

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-6)

---

## ✏️ Exercício 4.7 {#ex-4-7}

**Solução.**

**(a)** TMS \(= 3/1 = 3\). Razão de preços: \(p_1/p_2 = 6/4 = 1{,}5\). Como TMS \(> p_1/p_2\), solução de canto em \(x_1\): \(x_1^* = 120/6 = 20\), \(x_2^* = 0\). \(U = 60\).

**(b)** Com \(p_1 = 2\): \(p_1/p_2 = 0{,}5 < 3\). Continua no canto: \(x_1^* = 60\), \(x_2^* = 0\). \(U = 180\).

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-7)

---

## ✏️ Exercício 4.8 {#ex-4-8}

**Solução.**

**(a)** Para \(u = x_1^{1/3}x_2^{2/3}\), \(E = (3p_1)^{1/3}(3p_2/2)^{2/3}\bar{u}\).

**(b)** \(h_1 = \partial E/\partial p_1 = (3p_1)^{-2/3}(3p_2/2)^{2/3}\bar{u}\). ✓ pelo Lema de Shephard.

**(c)** Substituindo \(\bar{u} = V\) em \(E\), recupera-se \(I\). ✓

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-8)

---

## ✏️ Exercício 4.9 {#ex-4-9}

**Solução.**

**(a)** Sem imposto: \(x_1 = 900\), \(x_2 = 2100\). Com imposto 20% (\(p_1=1{,}2\)): \(x_1^t = 750\), \(x_2^t = 2100\). Receita: \(R = 0{,}2 \times 750 = 150\).

**(b)** Lump sum de 150: \(I' = 2850\). \(x_1^L = 855\), \(x_2^L = 1995\). \(V_L = 855^{0,3} \times 1995^{0,7} \approx 1630 > V_t \approx 1600\). O lump sum gera maior utilidade. ✓

**(c)** Perda de peso morto: \(V_0 - V_t > V_0 - V_L\), confirmando o princípio do montante fixo.

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-9)

---

## ✏️ Exercício 4.10 {#ex-4-10}

**Solução.**

**(a)** Com \(\sigma=2\), \(\rho=0{,}5\). \(P = (0{,}25 \cdot 3^{-1} + 0{,}25 \cdot 1^{-1})^{-1} = 3\). \(x_1^* = 5\), \(x_2^* = 45\). Verificação: \(3(5)+1(45)=60=I\). ✓

**(b)** Homogeneidade: multiplicando preços e renda por \(t\), o índice \(P\) escala por \(t\), e \(I/P\) permanece constante. ✓

**(c)** \(P = 3\). O índice CES pondera os preços pela substituibilidade do consumidor.

↩ [Voltar ao enunciado](../cap04/index.md#ex-4-10)
