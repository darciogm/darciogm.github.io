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
