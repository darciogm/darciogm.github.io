---
title: "Soluções — Capítulo 12"
---

# Soluções dos Exercícios — Capítulo 12

[← Voltar ao Capítulo 12](../cap12/index.md)

---

## ✏️ Exercício 12.1 {#ex-12-1}

**Solução.**

**(a)** CF = 50. CV = \(2q + 0{,}5q^2\). CMe = \(50/q + 2 + 0{,}5q\). CVMe = \(2 + 0{,}5q\). CMg = \(2 + q\).

**(b)** Ponto de fechamento: mínimo do CVMe. Como \(CVMe = 2 + 0{,}5q\) é crescente, o mínimo é em \(q = 0\) com \(CVMe(0) = 2\). O preço mínimo para operar é \(p = 2\).

**(c)** Ponto de break-even: mínimo do CMe. \(d(CMe)/dq = -50/q^2 + 0{,}5 = 0 \implies q^2 = 100 \implies q = 10\). \(CMe(10) = 5 + 2 + 5 = 12\). O preço de break-even é \(p = 12\).

**(d)** A firma oferta onde \(p = CMg\) e \(p \geq CVMe\): \(p = 2 + q \implies q^s(p) = p - 2\) para \(p \geq 2\).

**(e)** \(q^s(12) = 10\). \(\pi = 12 \times 10 - (50 + 20 + 50) = 120 - 120 = 0\). Lucro zero — a firma está no break-even.


↩ [Voltar ao enunciado](../cap12/index.md#ex-12-1)

---

## ✏️ Exercício 12.2 {#ex-12-2}

**Solução.**

**(a)** \(RT = pq = (a-bq)q = aq - bq^2\). \(RMg = dRT/dq = a - 2bq\). A inclinação da RMg (\(-2b\)) é o dobro da da demanda inversa (\(-b\)). ✓

**(b)** Receita máxima: \(RMg = 0 \implies a - 2bq = 0 \implies q = a/(2b)\). ✓

**(c)** No ponto \(q = a/(2b)\): \(p = a - b \cdot a/(2b) = a/2\). Elasticidade: \(\varepsilon_d = (dq/dp)(p/q) = (-1/b)(a/2)/(a/(2b)) = -1\). ✓

**(d)** \(\pi = (p-c)q = (a - bq - c)q\). CPO: \(a - 2bq - c = 0 \implies q^M = (a-c)/(2b)\). Preço: \(p^M = a - b(a-c)/(2b) = (a+c)/2\). Markup: \(p^M - c = (a-c)/2 > 0\).

**Interpretação econômica:** O preço de monopólio é a média entre o intercepto da demanda (\(a\)) e o custo marginal (\(c\)). O markup \((a-c)/2\) reflete o poder de mercado: quanto mais inelástica a demanda (menor \(b\)), maior o markup em valor absoluto.


↩ [Voltar ao enunciado](../cap12/index.md#ex-12-2)

---

## ✏️ Exercício 12.3 {#ex-12-3}

**Solução.**

**(a)** Maximizar \(\pi = pq - wL - rK = 27K^{1/3}L^{2/3} - 2L - K\).

CPOs: \(9K^{1/3}L^{-1/3} = w = 2\) e \(18K^{-2/3}L^{2/3} = r = 1\)... Corrigindo: \(\partial \pi/\partial K = 27 \cdot (1/3)K^{-2/3}L^{2/3} - 1 = 0 \implies 9K^{-2/3}L^{2/3} = 1\). E \(\partial \pi/\partial L = 27 \cdot (2/3)K^{1/3}L^{-1/3} - 2 = 0 \implies 18K^{1/3}L^{-1/3} = 2\).

Da segunda: \(K^{1/3}L^{-1/3} = 1/9 \implies L/K = 9^3/1 = 729\)... Isso parece excessivo. Recalculando: \(K^{1/3}/L^{1/3} = 1/9 \implies (K/L)^{1/3} = 1/9 \implies K/L = 1/729\).

Da primeira: \(9(L/K)^{2/3} = 1 \implies (L/K)^{2/3} = 1/9 \implies L/K = (1/9)^{3/2} = 1/27\).

Contradição — recalculemos com mais cuidado.

CPO para \(K\): \(9K^{-2/3}L^{2/3} = 1\) → \((L/K)^{2/3} = 1/9\) → \(L/K = 1/27\). Então \(L = K/27\).

CPO para \(L\): \(18K^{1/3}L^{-1/3} = 2\) → \((K/L)^{1/3} = 1/9\) → \(K/L = 1/729\). Então \(K = L/729\).

As duas condições dão \(K/L = 1/729\) e \(K/L = 27\), que são contraditórias. Reavaliemos: da segunda CPO: \(18(K/L)^{1/3} = 2 \implies (K/L)^{1/3} = 1/9\), logo \(K/L = 1/729\), ou \(L = 729K\).

Da primeira: \(9(L/K)^{2/3} = 1 \implies (729)^{2/3} = 81\), e \(9 \times 81 = 729 \neq 1\).

**(b)** Reconsiderando: dividindo as CPOs para obter a razão:

\[
\frac{9K^{-2/3}L^{2/3}}{18K^{1/3}L^{-1/3}} = \frac{r}{w} = \frac{1}{2}
\]

\[
\frac{L}{2K} = \frac{1}{2} \implies L = K
\]

Substituindo na CPO para K: \(9K^{-2/3}K^{2/3} = 1 \implies 9 = 1\). Contradição novamente.

O problema é que \(\alpha + \beta = 1\) (RCE) e \(p = 27\). Com RCE, a função lucro é linear em escala e a CPO padrão não tem solução interior finita se \(p > c(w,r)\) ou não há solução se \(p < c(w,r)\). Calculemos \(c\): com \(L = K\) e \(w=2, r=1\), custo unitário = \(wL + rK\) para \(q=1\): \(K^{1/3}L^{2/3} = 1\) com \(L = K\) dá \(K = 1\), custo = 3. Mas \(p = 27 > 3\), logo a firma quer produzir infinito.

Na prática, com RCE e \(p > c\), o lucro cresce sem limite. A firma opera em escala infinita (ou até que os preços se ajustem). Se o exercício requer solução finita, interpretar como \(q = K^{1/3}L^{2/3}\) com rendimentos decrescentes (\(\alpha + \beta = 1\) mas é tomadora de preços). A solução correta é usar a abordagem dual: \(c(w,r) = 3\), e com RCE a firma é indiferente em escala quando \(p = c\), ou quer expansão infinita quando \(p > c\). Com \(p = 27 > 3\), não há solução interior.


↩ [Voltar ao enunciado](../cap12/index.md#ex-12-3)

---

## ✏️ Exercício 12.4 {#ex-12-4}

**Solução.**

**(a)** \(q = 4L^{1/2} \implies L = q^2/16\). \(CT = r\bar{K} + wL = 2(16) + 8(q^2/16) = 32 + q^2/2\).

**(b)** \(CMg = q\). \(CVMe = q/2\).

**(c)** Ponto de fechamento: \(\min CVMe = 0\) (em \(q = 0\)). O CVMe é crescente, logo o preço mínimo é \(p > 0\) (a firma opera para qualquer preço positivo no curto prazo). Formalmente, a firma fecha se \(p < CVMe(q)\) para todo \(q > 0\), mas como \(CVMe(q) = q/2 \to 0\) quando \(q \to 0\), a firma sempre pode produzir alguma quantidade lucrativa.

**(d)** \(p = CMg \implies 16 = q\). \(\pi = 16 \times 16 - (32 + 128) = 256 - 160 = 96\).

**(e)** No longo prazo, a firma pode ajustar \(K\). Com \(q = K^{1/2}L^{1/2}\), \(w = 8\), \(r = 2\): custo unitário \(c = 2(wr)^{1/2} = 2\sqrt{16} = 8\). Se \(p = 16 > 8 = c\), a firma quer escala infinita (RCE). No equilíbrio de longo prazo com livre entrada, \(p = c = 8\) e cada firma é indiferente em escala.


↩ [Voltar ao enunciado](../cap12/index.md#ex-12-4)

---

## ✏️ Exercício 12.5 {#ex-12-5}

**Solução.**

**(a)** Se \(p \geq CVMe\) mas \(p < CMe\), a firma tem prejuízo mas cobre os custos variáveis e parte dos fixos. Fechar geraria prejuízo igual ao custo fixo total. Exemplo: CF = 100, CV = 60, RT = 80. Operando: \(\pi = 80 - 160 = -80\). Fechando: \(\pi = -100\). Operar é menos ruim.

**(b)** A convexidade da função lucro nos preços significa que \(\pi(p)\) é convexa: \(d^2\pi/dp^2 = dq^*/dp > 0\). Implicação: a firma se beneficia mais de variabilidade de preços do que de preço estável ao mesmo nível médio. Pela desigualdade de Jensen: \(E[\pi(p)] \geq \pi(E[p])\). Intuitivamente, quando o preço sobe, a firma expande e captura mais lucro; quando cai, contrai e limita as perdas.

**(c)** Na teoria da firma, não existe "insumo de Giffen" porque a demanda condicionada por insumos vem da minimização de custo (equivalente ao problema dual do consumidor). As demandas hicksianas (compensadas) sempre satisfazem a lei da demanda: \(\partial h_i/\partial w_i \leq 0\). No consumidor, o efeito Giffen surge pelo efeito-renda no problema primal. Na firma, a demanda condicionada é análoga à hicksiana (utilidade fixada = produto fixado), logo não há efeito-renda e não há Giffen.

**(d)** \(RMg = p(1 + 1/\varepsilon_d)\). Se \(|\varepsilon_d| < 1\), então \(1/\varepsilon_d < -1\) e \(RMg < 0\). Como \(CMg > 0\), nunca \(RMg = CMg\) na região inelástica. Intuitivamente, na região inelástica, reduzir a produção **aumenta** a receita (demanda insensível ao preço), então a firma sempre reduz até atingir \(|\varepsilon_d| \geq 1\).

**(e)** Segundo Coase (1937), a firma cresce até que o custo marginal de organizar uma transação internamente iguale o custo de realizá-la no mercado. Deseconomias de escala organizacional (burocracia, custos de monitoramento, perda de informação em hierarquias) limitam o crescimento. Essas deseconomias são análogas aos rendimentos decrescentes de escala na produção, mas operam no nível da gestão.

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-5)

---

## ✏️ Exercício 12.6 {#ex-12-6}

**Solução.**

**(a) Quantidade ótima.**

\(C(q) = 50 + 2q + 0{,}5q^2 \implies \mathrm{CMg}(q) = 2 + q\).

Condição \(p = \mathrm{CMg}\): \(12 = 2 + q \implies q^* = 10\).

**(b) Lucro.**

\(\pi = p \cdot q^* - C(q^*) = 12 \times 10 - (50 + 20 + 50) = 120 - 120 = 0\).

O lucro é zero: \(q^* = 10\) é o ponto de *break-even* (confirma-se no item c).

**(c) Condição de segunda ordem (CSO).**

\(\mathrm{CMg}'(q) = 1 > 0\) para todo \(q\). Como o custo marginal é estritamente crescente, a CSO está satisfeita: \(q^* = 10\) é de fato um máximo global de lucro.

Verificação alternativa: \(\pi''(q) = -\mathrm{CMg}'(q) = -1 < 0\). ✓

**(d) Decisão de operar.**

\(\mathrm{CVMe}(q) = 2 + 0{,}5q\). Esta função é crescente, portanto \(\mathrm{CVMe}_{\min} = \mathrm{CVMe}(0) = 2\).

Como \(p = 12 > 2 = \mathrm{CVMe}_{\min}\), a firma deve operar. ✓

**Interpretação econômica:** Este é precisamente o Exercício 12.1(c): \(q^* = 10\) é o ponto de lucro zero (break-even), em que \(p = \mathrm{CMe}_{\min} = 12\). No equilíbrio competitivo de longo prazo, todas as firmas operam nesse ponto, e o lucro econômico é zero.

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-6)

---

## ✏️ Exercício 12.7 {#ex-12-7}

**Solução.**

**(a) FALSO.** Uma firma fecha no curto prazo apenas se \(p < \mathrm{CVMe}_{\min}\). Se \(\pi < 0\) mas \(p \geq \mathrm{CVMe}_{\min}\), operar minimiza o prejuízo (que seria igual a CF se fechasse). A decisão de fechar depende da comparação entre prejuízo operando e prejuízo fechando (-CF), não do sinal do lucro.

**(b) VERDADEIRO.** O Lema de Hotelling estabelece exatamente que \(\partial \pi^* / \partial p = q^*(p, w, v)\), ou seja, a derivada da função lucro máximo em relação ao preço do produto é a função de oferta ótima.

**(c) VERDADEIRO.** A função lucro \(\pi^*(p, w, v) = \max_q \{pq - C(q,w,v)\}\) é o máximo pontual de funções lineares (afins) em \((p, w, v)\). O máximo de funções convexas (em particular lineares) é convexo — esse é o argumento do Exercício 12.10. A convexidade em \(p\) implica lei da oferta (\(\partial q^*/\partial p \geq 0\)); a convexidade em \(w\) implica lei da demanda por insumos (\(\partial L^*/\partial w \leq 0\)).

**(d) VERDADEIRO.** Se a demanda da firma é perfeitamente elástica (horizontal), o preço é fixado pelo mercado e \(dp/dq = 0\). Então \(\mathrm{RMg} = p + q \cdot (dp/dq) = p + 0 = p\). Esta é exatamente a situação da firma tomadora de preços (concorrência perfeita): a receita marginal iguala o preço de mercado.

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-7)

---

## ✏️ Exercício 12.8 {#ex-12-8}

**Solução.**

**Dados:** \(p = 100 - 2Q\); \(C(Q) = 10Q + Q^2\).

**(a) Receita marginal.**

\(RT = pQ = (100 - 2Q)Q = 100Q - 2Q^2\).

\(\mathrm{RMg} = \frac{dRT}{dQ} = 100 - 4Q\).

**(b) Quantidade e preço ótimos.**

\(\mathrm{CMg} = C'(Q) = 10 + 2Q\).

\(\mathrm{RMg} = \mathrm{CMg} \implies 100 - 4Q = 10 + 2Q \implies 90 = 6Q \implies Q^* = 15\).

\(p^* = 100 - 2(15) = 70\).

Verificação da CSO: \(\mathrm{CMg}'(Q) = 2 > 0 = \mathrm{RMg}'(Q) \cdot (-4/(-4))\)... mais diretamente: \(\pi''(Q) = \mathrm{RMg}' - \mathrm{CMg}' = -4 - 2 = -6 < 0\). ✓

**(c) Índice de Lerner (markup).**

\(\mathrm{CMg}(Q^*) = 10 + 2(15) = 40\).

\[
L = \frac{p^* - \mathrm{CMg}(Q^*)}{p^*} = \frac{70 - 40}{70} = \frac{30}{70} = \frac{3}{7} \approx 0{,}43
\]

Verificação pela elasticidade: na demanda \(p = 100 - 2Q\), tem-se \(dQ/dp = -1/2\).

\(\varepsilon_d = \frac{dQ}{dp} \cdot \frac{p}{Q} = -\frac{1}{2} \cdot \frac{70}{15} = -\frac{7}{3}\).

\(L = \frac{1}{|\varepsilon_d|} = \frac{3}{7}\). ✓

**(d) Comparação com resultado competitivo.**

No resultado competitivo, \(p^c = \mathrm{CMg}\):

\(100 - 2Q^c = 10 + 2Q^c \implies 90 = 4Q^c \implies Q^c = 22{,}5\).

\(p^c = 100 - 2(22{,}5) = 55\).

| | Monopólio | Competição |
|:---|:---|:---|
| Quantidade | \(Q^* = 15\) | \(Q^c = 22{,}5\) |
| Preço | \(p^* = 70\) | \(p^c = 55\) |
| Markup | \(L = 3/7 \approx 0{,}43\) | \(L = 0\) |

O monopolista produz menos (\(Q^* < Q^c\)) e cobra mais (\(p^* > p^c\)). A perda de peso morto (triângulo de ineficiência) é proporcional à redução de quantidade: \(\Delta Q = 22{,}5 - 15 = 7{,}5\) unidades não produzidas. No Capítulo 15, quantificaremos essa perda em termos de área (excedente total perdido).

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-8)

---

## ✏️ Exercício 12.9 {#ex-12-9}

**Solução.**

**Dados:** \(Q = 500 - 2P\); custo marginal do diesel = \(p_w + t = p_w + 5\) (preço de importação mais transporte).

**(a) Preço e quantidade ótimos.**

A Petrobras é monopolista no mercado doméstico. Demanda inversa: \(P = 250 - Q/2\).

\(RT = PQ = (250 - Q/2)Q = 250Q - Q^2/2\).

\(\mathrm{RMg} = 250 - Q\).

\(\mathrm{CMg} = p_w + 5\).

Condição de maximização: \(\mathrm{RMg} = \mathrm{CMg}\):

\[
250 - Q = p_w + 5 \implies Q^* = 245 - p_w
\]

\[
P^* = 250 - \frac{Q^*}{2} = 250 - \frac{245 - p_w}{2} = \frac{255 + p_w}{2} = 127{,}5 + \frac{p_w}{2}
\]

Lucro: \(\pi^* = (P^* - \mathrm{CMg}) \cdot Q^* = \left(\frac{255 + p_w}{2} - p_w - 5\right)(245 - p_w)\).

Simplificando o markup: \(P^* - \mathrm{CMg} = \frac{255 + p_w}{2} - p_w - 5 = \frac{245 - p_w}{2}\).

\[
\pi^* = \frac{(245 - p_w)^2}{2}
\]

**(b) Efeito de aumento de 20% em \(p_w\).**

Seja \(p_w' = 1{,}2\,p_w\).

\[
Q^{**} = 245 - 1{,}2\,p_w = Q^* - 0{,}2\,p_w
\]

\[
P^{**} = 127{,}5 + \frac{1{,}2\,p_w}{2} = P^* + 0{,}1\,p_w
\]

Variação percentual de \(P^*\): \(\Delta P/P^* = (0{,}1\,p_w) / (127{,}5 + 0{,}5\,p_w)\).

Para \(p_w = 100\) (valor ilustrativo): \(P^* = 177{,}5\); \(P^{**} = 187{,}5\); \(\Delta P/P^* = 10/177{,}5 \approx 5{,}6\%\).

Variação percentual de \(Q^*\): \(\Delta Q/Q^* = (-0{,}2\,p_w)/(245 - p_w)\). Para \(p_w = 100\): \(Q^* = 145\); \(Q^{**} = 125\); \(\Delta Q/Q^* = -20/145 \approx -13{,}8\%\).

**(c) Interpretação econômica.**

O aumento de 20% em \(p_w\) eleva o preço doméstico em apenas ~5,6% — muito menos que 20%. Por quê? O markup do monopolista é \((P^* - \mathrm{CMg})/P^* = L\). Quando \(\mathrm{CMg}\) aumenta, o monopolista absorbe parte do choque reduzindo o markup (o lucro cai). Em competição perfeita, toda a variação de CMg seria repassada ao preço; no monopólio, parte é absorvida pelo produtor. O custo de transporte \(t = 5\) fixo amortece ainda mais o repasse percentual, pois a base de custo se expande menos do que o choque em \(p_w\).

Formalmente: \(\partial P^*/\partial p_w = 1/2 < 1\). O repasse é incompleto — característica geral do monopólio com demanda linear.

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-9)

---

## ✏️ Exercício 12.10 {#ex-12-10}

**Solução.**

**Objetivo:** Provar que \(\pi(p, \mathbf{w}) = \max_q \{p \cdot q - C(q, \mathbf{w})\}\) é convexa no vetor de preços \(\mathbf{v} = (p, \mathbf{w})\).

**(a) Representação como supremo de funções afins.**

Para cada \(q \geq 0\) fixo, defina:

\[
h_q(\mathbf{v}) = p \cdot q - C(q, \mathbf{w})
\]

Esta é uma função **linear** (afim) em \(\mathbf{v} = (p, \mathbf{w})\): coeficiente de \(p\) é \(q\); coeficientes de \(\mathbf{w}\) são \(-\partial C/\partial \mathbf{w}\) avaliados em \(q\) fixo. Portanto:

\[
\pi(\mathbf{v}) = \sup_{q \geq 0} h_q(\mathbf{v})
\]

ou seja, \(\pi\) é o supremo pontual de uma família de funções afins em \(\mathbf{v}\).

**(b) O supremo de funções convexas é convexo.**

Sejam \(\mathbf{v}_1, \mathbf{v}_2 \in \mathbb{R}_{++}^{1+|\mathbf{w}|}\) e \(\lambda \in [0,1]\). Para qualquer \(q \geq 0\):

\[
h_q(\lambda \mathbf{v}_1 + (1-\lambda)\mathbf{v}_2) = \lambda h_q(\mathbf{v}_1) + (1-\lambda) h_q(\mathbf{v}_2)
\]

(por linearidade de \(h_q\)). Tomando o supremo sobre \(q\) em ambos os lados:

\[
\pi(\lambda \mathbf{v}_1 + (1-\lambda)\mathbf{v}_2) = \sup_q h_q(\lambda \mathbf{v}_1 + (1-\lambda)\mathbf{v}_2)
\]
\[
= \sup_q [\lambda h_q(\mathbf{v}_1) + (1-\lambda) h_q(\mathbf{v}_2)]
\leq \lambda \sup_q h_q(\mathbf{v}_1) + (1-\lambda) \sup_q h_q(\mathbf{v}_2)
\]
\[
= \lambda \pi(\mathbf{v}_1) + (1-\lambda)\pi(\mathbf{v}_2)
\]

A desigualdade usa que \(\sup (f + g) \leq \sup f + \sup g\). Isso completa a prova: \(\pi(\lambda \mathbf{v}_1 + (1-\lambda)\mathbf{v}_2) \leq \lambda \pi(\mathbf{v}_1) + (1-\lambda)\pi(\mathbf{v}_2)\). \(\blacksquare\)

**(c) Interpretação econômica.**

A convexidade de \(\pi\) em \(\mathbf{v}\) implica que a matriz de derivadas segundas de \(\pi\) é semidefinida positiva. Em particular:

- **Lei da oferta:** \(\partial^2\pi/\partial p^2 = \partial q^*/\partial p \geq 0\) — a oferta é não decrescente no preço do produto.
- **Lei da demanda por insumos:** \(\partial^2\pi/\partial w_i^2 = -\partial x_i^*/\partial w_i \geq 0\), logo \(\partial x_i^*/\partial w_i \leq 0\) — a demanda por cada insumo é não crescente em seu próprio preço.
- **Simetria:** \(\partial^2\pi/\partial p \partial w_i = \partial q^*/\partial w_i = -\partial x_i^*/\partial p\) (condição de Young, análoga à igualdade de Slutsky).

Intuitivamente: a firma sempre pode escolher *não mudar* seu plano de produção em resposta a uma mudança de preços. Se o fizer, o lucro variaria linearmente. O fato de a firma *otimizar* significa que ela faz melhor do que a variação linear — e isso gera a convexidade (a função valor sobe mais do que a variação linear prediz).

↩ [Voltar ao enunciado](../cap12/index.md#ex-12-10)
