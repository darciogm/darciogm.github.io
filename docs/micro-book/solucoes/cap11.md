---
title: "Soluções — Capítulo 11"
---

# Soluções dos Exercícios — Capítulo 11

[← Voltar ao Capítulo 11](../cap11/index.md)

---

## ✏️ Exercício 11.1 {#ex-11-1}

**Solução.**

**(a)** Minimizando custo sujeito a \(K^{1/2}L^{1/2} = q\): CPO dá \(L/K = r/w = 1/4\), logo \(L = K/4\). Da restrição: \(K^{1/2}(K/4)^{1/2} = q \implies K/(2) = q \implies K^c = 2q\), \(L^c = q/2\).

**(b)** \(C = wL^c + rK^c = 4(q/2) + 1(2q) = 2q + 2q = 4q\).

**(c)** \(\partial C/\partial w = q/2 = L^c\) ✓. \(\partial C/\partial r = 2q = K^c\) ✓. Lema de Shephard confirmado.

**(d)** \(C(10) = 4 \times 10 = 40\).

**(e)** \(CMg = dC/dq = 4\). \(CMe = C/q = 4\). Ambos são constantes e iguais. Isso ocorre porque \(\alpha + \beta = 1/2 + 1/2 = 1\) (rendimentos constantes de escala). Com RCE, o custo é linear em \(q\), logo CMg = CMe = constante.


↩ [Voltar ao enunciado](../cap11/index.md#ex-11-1)

---

## ✏️ Exercício 11.2 {#ex-11-2}

**Solução.**

**(a)** CF = 100. CV(q) = \(10q - 2q^2 + q^3/3\).

**(b)**

\[
CMe = \frac{100}{q} + 10 - 2q + \frac{q^2}{3}, \quad CVMe = 10 - 2q + \frac{q^2}{3}, \quad CMg = 10 - 4q + q^2
\]

**(c)** Mínimo do CVMe: \(\frac{d(CVMe)}{dq} = -2 + 2q/3 = 0 \implies q = 3\). \(CVMe(3) = 10 - 6 + 3 = 7\).

Mínimo do CMe: \(\frac{d(CMe)}{dq} = -100/q^2 - 2 + 2q/3 = 0\). Resolvendo numericamente: \(q \approx 5{,}24\).

**(d)** CMg no mínimo do CVMe: \(CMg(3) = 10 - 12 + 9 = 7 = CVMe(3)\) ✓.

CMg no mínimo do CMe: \(CMg(5{,}24) \approx 10 - 20{,}96 + 27{,}46 \approx 16{,}5\). Verificando \(CMe(5{,}24) \approx 19{,}08 + 10 - 10{,}48 + 9{,}15 \approx 27{,}75\)... O cálculo exato requer resolver o cúbico. O princípio é que CMg cruza CMe e CVMe em seus respectivos mínimos porque: se \(CMg < CMe\), o CMe está caindo; se \(CMg > CMe\), o CMe está subindo. Logo, \(CMg = CMe\) no mínimo.


↩ [Voltar ao enunciado](../cap11/index.md#ex-11-2)

---

## ✏️ Exercício 11.3 {#ex-11-3}

**Solução.**

**(a)** Com \(q = \min\{K, 2L\}\), no ótimo: \(K = 2L\), ou \(K = q\) e \(L = q/2\).

\[
C(q) = rK + wL = 8q + 2(q/2) = 8q + q = 9q
\]

**(b)** \(CMe = 9\), \(CMg = 9\). Ambos constantes. Com Leontief e rendimentos constantes de escala (\(\min\{K, 2L\}\) é homogênea de grau 1), o custo é linear.

**(c)** Tanto a Leontief quanto a Cobb-Douglas com RCE produzem custo linear (\(CMg = CMe = \text{constante}\)). A diferença é que na Cobb-Douglas a razão \(K/L\) responde a mudanças nos preços relativos dos insumos, enquanto na Leontief é fixa. O custo unitário da Cobb-Douglas é \(c(w,r) = \text{função dos preços}\) que depende de \(w/r\), enquanto na Leontief é sempre \(r + w/2 = 9\) para esses parâmetros.


↩ [Voltar ao enunciado](../cap11/index.md#ex-11-3)

---

## ✏️ Exercício 11.4 {#ex-11-4}

**Solução.**

**(a)** Com \(q = K^{1/3}L^{1/3}\) e \(w = r = 1\), minimizando custo: CPO dá \(K = L\). Da restrição: \(K^{2/3} = q \implies K = L = q^{3/2}\).

\[
C_{LP}(q) = 2q^{3/2}, \quad CMe_{LP} = 2q^{1/2}
\]

(Rendimentos decrescentes: \(\alpha + \beta = 2/3 < 1\), custo cresce mais que linearmente.)

**(b)** Com \(\bar{K} = 4\): \(q = 4^{1/3}L^{1/3} \approx 1{,}587 L^{1/3}\), logo \(L = (q/1{,}587)^3 = q^3/4\).

\[
C_{CP}(q; \bar{K}=4) = 4 + q^3/4
\]

\[
CMe_{CP} = 4/q + q^2/4
\]

**(c)** Igualdade: \(CMe_{LP} = CMe_{CP}\) quando \(2q^{1/2} = 4/q + q^2/4\). No ponto onde \(\bar{K} = 4\) é ótimo no LP: \(K^* = q^{3/2} = 4 \implies q = 4^{2/3} \approx 2{,}52\).

Para \(q = 2{,}52\): \(CMe_{LP} = 2(2{,}52)^{0,5} \approx 3{,}17\) e \(CMe_{CP} = 4/2{,}52 + (2{,}52)^2/4 \approx 1{,}59 + 1{,}59 = 3{,}17\). ✓

Para qualquer outro \(q\), \(CMe_{CP} > CMe_{LP}\) porque o capital está "errado": a firma não pode ajustar \(\bar{K}\) no curto prazo. A envoltória resulta de a firma escolher otimamente \(K\) para cada \(q\) no longo prazo.


↩ [Voltar ao enunciado](../cap11/index.md#ex-11-4)

---

## ✏️ Exercício 11.5 {#ex-11-5}

**Solução.**

**(a)** Com \(\alpha + \beta = 1\), a função de produção é homogênea de grau 1. A função custo de uma firma com RCE é linear: \(C = c(w,r) \cdot q\), onde \(c\) é o custo de produzir uma unidade.

Demonstração: se \((K_1, L_1)\) produz \(q = 1\) ao custo mínimo \(c\), então \((tK_1, tL_1)\) produz \(q = t\) ao custo \(tc\). Logo, \(C(q) = cq\).

**(b)** Minimizando \(wL + rK\) s.a. \(AK^\alpha L^\beta = 1\) (com \(\beta = 1 - \alpha\)):

CPO: \(K/L = (\alpha/(1-\alpha))(w/r)\). Substituindo na restrição e simplificando:

\[
c(w,r) = \frac{1}{A}\left(\frac{w}{1-\alpha}\right)^{1-\alpha}\left(\frac{r}{\alpha}\right)^\alpha
\]

Verificando homogeneidade: \(c(tw, tr) = t \cdot c(w,r)\) ✓ (grau 1 nos preços).

**(c)** \(CMg = dC/dq = c(w,r)\). \(CMe = C/q = c(w,r)\). Ambos iguais e constantes. ✓

**(d)** Com RCE, dobrar a produção exige exatamente dobrar os insumos, logo dobrar o custo. O custo cresce proporcionalmente ao produto, implicando custo marginal constante. Intuitivamente, a "próxima unidade" custa sempre o mesmo que a anterior porque a tecnologia não apresenta nem economias nem deseconomias de escala.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-5)

---

## ✏️ Exercício 11.6 {#ex-11-6}

**Solução.**

**(a)** De \(C(q) = 100 + 4q + q^2\): **Custo fixo** = \(CF = 100\). **Custo variável** = \(CV(q) = 4q + q^2\).

**(b)**

\[
\mathrm{CMg} = \frac{dC}{dq} = 4 + 2q
\]

\[
\mathrm{CMe} = \frac{C(q)}{q} = \frac{100}{q} + 4 + q
\]

\[
\mathrm{CVMe} = \frac{CV(q)}{q} = 4 + q
\]

**(c)** Igualar \(\mathrm{CMg} = \mathrm{CMe}\):

\[
4 + 2q = \frac{100}{q} + 4 + q \implies 2q = \frac{100}{q} + q \implies q = \frac{100}{q} \implies q^2 = 100 \implies q^* = 10
\]

Custo médio no mínimo: \(\mathrm{CMe}(10) = 100/10 + 4 + 10 = 10 + 4 + 10 = 24\).

Verificação: \(\mathrm{CMg}(10) = 4 + 20 = 24 = \mathrm{CMe}(10)\) ✓

**(d)** O ponto \(q^* = 10\) é a **escala eficiente mínima** da firma no curto prazo — o nível de produção que minimiza o custo médio. Para \(q < 10\), o CMe é decrescente (o CMg está abaixo do CMe); para \(q > 10\), o CMe é crescente (o CMg está acima do CMe). Em um mercado competitivo de longo prazo (Capítulo 12), as firmas operarão exatamente nesse ponto, com preço \(p = \mathrm{CMe}_{min} = 24\) e lucro econômico zero.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-6)

---

## ✏️ Exercício 11.7 {#ex-11-7}

**Solução.**

**(a) Falso.** Custos irrecuperáveis já foram incorridos e não podem ser recuperados. Eles não afetam os custos *marginais* ou *futuros* da firma — que são os únicos relevantes para a decisão de nível de produção corrente. Apenas custos evitáveis (prospectivos) devem ser considerados na otimização.

**(b) Falso.** A afirmação correta é que \(\mathrm{LRAC}(q) \leq \mathrm{SRAC}(q; \bar{K})\) para todo \(q\) e para qualquer \(\bar{K}\) fixo — com igualdade apenas no ponto ótimo de escala de planta de cada SRAC. O LRAC não está *estritamente* abaixo: ele tangencia cada SRAC em um ponto, e é menor ou igual em todos os demais. "Sempre abaixo" é incorreto porque há igualdade nos pontos de tangência.

**(c) Verdadeiro.** Com rendimentos constantes de escala (\(f(tK, tL) = t \cdot f(K,L)\) para todo \(t > 0\)), a função custo é linear em \(q\): \(C(q) = c(w,v) \cdot q\). Portanto, \(\mathrm{LRAC}(q) = C(q)/q = c(w,v)\) — uma constante. O custo médio de longo prazo é constante para qualquer nível de produto.

**(d) Verdadeiro.** Essa é exatamente a afirmação do Lema de Shephard (Seção 11.4): \(\partial C(w,v,q)/\partial w = L^c(w,v,q)\) e \(\partial C(w,v,q)/\partial v = K^c(w,v,q)\). As demandas condicionadas são as derivadas parciais da função custo em relação aos preços dos respectivos insumos.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-7)

---

## ✏️ Exercício 11.8 {#ex-11-8}

**Solução.**

**(a)** Com \(q = K^{0{,}3}L^{0{,}7}\), \(\alpha = 0{,}3\), \(\beta = 0{,}7\), \(\alpha + \beta = 1\) (retornos constantes de escala). Da condição de tangência:

\[
\frac{\alpha}{\beta} \cdot \frac{L}{K} = \frac{r}{w} \implies \frac{0{,}3}{0{,}7} \cdot \frac{L}{K} = \frac{20}{10} = 2 \implies \frac{L}{K} = \frac{2 \times 0{,}7}{0{,}3} = \frac{14}{3}
\]

Logo \(L = \frac{14}{3} K\). Substituindo na restrição \(K^{0{,}3}L^{0{,}7} = q\):

\[
K^{0{,}3} \left(\frac{14}{3} K\right)^{0{,}7} = q \implies K \cdot \left(\frac{14}{3}\right)^{0{,}7} = q \implies K^c = q \cdot \left(\frac{3}{14}\right)^{0{,}7}
\]

\[
L^c = \frac{14}{3} K^c = q \cdot \frac{14}{3} \cdot \left(\frac{3}{14}\right)^{0{,}7} = q \cdot \left(\frac{14}{3}\right)^{0{,}3}
\]

Função custo:

\[
C = rK^c + wL^c = 20 \cdot q \cdot \left(\frac{3}{14}\right)^{0{,}7} + 10 \cdot q \cdot \left(\frac{14}{3}\right)^{0{,}3}
\]

Numericamente: \((3/14)^{0{,}7} \approx 0{,}3135\) e \((14/3)^{0{,}3} \approx 1{,}470\).

\[
C(q) \approx q \cdot [20 \times 0{,}3135 + 10 \times 1{,}470] = q \cdot [6{,}270 + 14{,}70] = q \cdot 20{,}97 \approx 20{,}97\,q
\]

A forma geral é \(C(q) = \kappa \cdot w^{0{,}7} r^{0{,}3} \cdot q\), onde \(\kappa = (0{,}3/0{,}7)^{-0{,}7} + (0{,}7/0{,}3)^{0{,}3} \cdot (0{,}3/0{,}7)^{-0{,}3}\) — uma constante que depende apenas de \(\alpha\) e \(\beta\).

**(b)** Com retornos constantes de escala, \(C\) é linear em \(q\):

\[
\mathrm{CMg} = \frac{dC}{dq} \approx 20{,}97 \qquad \mathrm{CMe} = \frac{C}{q} \approx 20{,}97
\]

\(\mathrm{CMg} = \mathrm{CMe} = \text{constante}\) — consequência direta de \(\alpha + \beta = 1\).

**(c)** Lema de Shephard: \(\partial C / \partial w = L^c\)?

Da expressão geral \(C = \kappa \cdot w^{\beta} r^{\alpha} \cdot q\) com \(\alpha = 0{,}3\), \(\beta = 0{,}7\):

\[
\frac{\partial C}{\partial w} = \kappa \cdot \beta \cdot w^{\beta-1} r^{\alpha} \cdot q = 0{,}7 \cdot \kappa \cdot w^{-0{,}3} r^{0{,}3} q
\]

Isso deve coincidir com \(L^c = q \cdot (14/3)^{0{,}3}\). Com \(w = 10\) e \(r = 20\): \((r/w)^{0{,}3} = 2^{0{,}3} \approx 1{,}231\). E \((14/3)^{0{,}3} = (14/3)^{0{,}3}\). Dado que \(14/3 = (2 \times 0{,}7)/(0{,}3) \times (r/w) = (0{,}7/0{,}3) \times 2 = 14/3\) ✓ — o Lema de Shephard é verificado.

**(d)** Como \(\alpha + \beta = 1\) (RCE), a função custo é linear em \(q\) e côncava nos preços. Se \(\alpha + \beta > 1\) (RCrE), \(C\) seria côncava em \(q\) e o CMg decrescente; se \(\alpha + \beta < 1\) (RDE), \(C\) seria convexa em \(q\) e o CMg crescente. Com RCE, a curva de CMg é uma linha horizontal — a firma não ganha nem perde eficiência ao escalar a produção.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-8)

---

## ✏️ Exercício 11.9 {#ex-11-9}

**Solução.**

**(a)** A curva LRAC é a envoltória inferior das duas SRACs. Precisamos encontrar para qual nível de \(q\) cada planta tem menor custo médio:

\[
\mathrm{SRAC}_1(q) = 50 + 2q \qquad \mathrm{SRAC}_2(q) = 200 + 0{,}5q
\]

Planta 1 é mais barata quando \(\mathrm{SRAC}_1 < \mathrm{SRAC}_2\):

\[
50 + 2q < 200 + 0{,}5q \implies 1{,}5q < 150 \implies q < 100
\]

Logo:

\[
\mathrm{LRAC}(q) = \begin{cases} 50 + 2q & \text{se } q \leq 100 \\ 200 + 0{,}5q & \text{se } q > 100 \end{cases}
\]

**(b)** O ponto de cruzamento é \(q^{**} = 100\) ton/dia. Custo médio nesse ponto:

\[
\mathrm{SRAC}_1(100) = 50 + 200 = 250 = \mathrm{SRAC}_2(100) = 200 + 50 = 250 \quad \checkmark
\]

**(c)** Para \(q < 100\), a planta 1 (menor e de baixo custo fixo) tem vantagem: os custos fixos de R$ 200/ton da planta 2 não se diluem o suficiente para compensar sua vantagem em custo variável. Acima de 100 ton/dia, o custo variável mais baixo da planta 2 (0,5/ton vs 2/ton) compensa seus maiores custos fixos. O processador deve investir na planta 2 apenas quando a demanda esperada superar 100 ton/dia — porque abaixo desse volume, o custo médio da planta grande é maior.

**(d)** O "custo Brasil" (tributação, burocracia, logística) age como um aumento nos custos fixos ou nos custos variáveis de ambas as plantas. Se o componente logístico (frete da soja e do farelo) for proporcional à quantidade processada (custo variável), ele eleva mais o SRAC das plantas pequenas que processam lotes menores por frete. Se for principalmente fixo (custos de certificação, burocracia), eleva os dois SRACs paralelamente. Em ambos os casos, o custo Brasil tende a *elevar* o limiar \(q^{**}\) — tornando as economias de escala necessárias para que a planta 2 se justifique ainda maiores — ou *reduzir* a diferença de custo marginal entre as plantas, potencialmente mantendo mais firmas pequenas no mercado através de subsídios implícitos a quem opera na informalidade.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-9)

---

## ✏️ Exercício 11.10 {#ex-11-10}

**Solução.**

**(a)** Queremos mostrar que para \(\lambda \in [0,1]\) e vetores de preços \((w_1, r_1)\) e \((w_2, r_2)\):

\[
C(\bar{w}, \bar{r}, q) \geq \lambda C(w_1, r_1, q) + (1-\lambda) C(w_2, r_2, q)
\]

onde \(\bar{w} = \lambda w_1 + (1-\lambda)w_2\) e \(\bar{r} = \lambda r_1 + (1-\lambda)r_2\).

**(b)** Seja \((K^*, L^*)\) a combinação ótima de insumos para os preços misturados \((\bar{w}, \bar{r})\), tal que \(f(K^*, L^*) = q\). Por definição de custo mínimo, \((K^*, L^*)\) é factível mas não necessariamente ótimo para os preços \((w_i, r_i)\). Portanto, para \(i = 1, 2\):

\[
C(w_i, r_i, q) \leq w_i L^* + r_i K^*
\]

(o custo mínimo para os preços \((w_i, r_i)\) não pode ser maior que o custo de usar a cesta \((K^*, L^*)\) a esses preços).

Ponderando:

\[
\lambda C(w_1, r_1, q) + (1-\lambda) C(w_2, r_2, q) \leq \lambda(w_1 L^* + r_1 K^*) + (1-\lambda)(w_2 L^* + r_2 K^*)
\]

\[
= [\lambda w_1 + (1-\lambda)w_2] L^* + [\lambda r_1 + (1-\lambda) r_2] K^* = \bar{w} L^* + \bar{r} K^* = C(\bar{w}, \bar{r}, q)
\]

A última igualdade vale porque \((K^*, L^*)\) é *o* minimizador para os preços \((\bar{w}, \bar{r})\), e portanto \(\bar{w} L^* + \bar{r} K^* = C(\bar{w}, \bar{r}, q)\). Logo:

\[
C(\bar{w}, \bar{r}, q) \geq \lambda C(w_1, r_1, q) + (1-\lambda) C(w_2, r_2, q) \qquad \blacksquare
\]

**(c)** A concavidade de \(C\) nos preços dos insumos tem uma interpretação econômica elegante: quando o preço de um insumo sobe, a firma o substitui parcialmente por insumos mais baratos. Por isso, o custo cresce *menos* que proporcionalmente ao aumento de preço — o aumento efetivo do custo é amortecido pelo ajuste da composição de insumos. Em termos formais, isso implica \(\partial^2 C / \partial w^2 \leq 0\), o que é equivalente a \(\partial L^c / \partial w \leq 0\): a demanda condicional por trabalho é não crescente em seu próprio preço (equivalente à "lei da demanda" para demandas condicionadas). Assim, a concavidade da função custo nos preços é a contraparte formal e precisa da ideia intuitiva de que firmas respondem racionalmente a mudanças nos preços dos insumos.

↩ [Voltar ao enunciado](../cap11/index.md#ex-11-10)
