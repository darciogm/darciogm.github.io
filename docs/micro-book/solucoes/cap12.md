---
title: "Soluções — Capítulo 12"
---

# Soluções dos Exercícios — Capítulo 12

[← Voltar ao Capítulo 12](../cap12/index.md)

---

## Exercício 12.1 {#ex-12-1}

**Solução.**

**(a)** CF = 50. CV = \(2q + 0{,}5q^2\). CMe = \(50/q + 2 + 0{,}5q\). CVMe = \(2 + 0{,}5q\). CMg = \(2 + q\).

**(b)** Ponto de fechamento: mínimo do CVMe. Como \(CVMe = 2 + 0{,}5q\) é crescente, o mínimo é em \(q = 0\) com \(CVMe(0) = 2\). O preço mínimo para operar é \(p = 2\).

**(c)** Ponto de break-even: mínimo do CMe. \(d(CMe)/dq = -50/q^2 + 0{,}5 = 0 \implies q^2 = 100 \implies q = 10\). \(CMe(10) = 5 + 2 + 5 = 12\). O preço de break-even é \(p = 12\).

**(d)** A firma oferta onde \(p = CMg\) e \(p \geq CVMe\): \(p = 2 + q \implies q^s(p) = p - 2\) para \(p \geq 2\).

**(e)** \(q^s(12) = 10\). \(\pi = 12 \times 10 - (50 + 20 + 50) = 120 - 120 = 0\). Lucro zero — a firma está no break-even.

---

## Exercício 12.2 {#ex-12-2}

**Solução.**

**(a)** \(RT = pq = (a-bq)q = aq - bq^2\). \(RMg = dRT/dq = a - 2bq\). A inclinação da RMg (\(-2b\)) é o dobro da da demanda inversa (\(-b\)). ✓

**(b)** Receita máxima: \(RMg = 0 \implies a - 2bq = 0 \implies q = a/(2b)\). ✓

**(c)** No ponto \(q = a/(2b)\): \(p = a - b \cdot a/(2b) = a/2\). Elasticidade: \(\varepsilon_d = (dq/dp)(p/q) = (-1/b)(a/2)/(a/(2b)) = -1\). ✓

**(d)** \(\pi = (p-c)q = (a - bq - c)q\). CPO: \(a - 2bq - c = 0 \implies q^M = (a-c)/(2b)\). Preço: \(p^M = a - b(a-c)/(2b) = (a+c)/2\). Markup: \(p^M - c = (a-c)/2 > 0\).

**Interpretação econômica:** O preço de monopólio é a média entre o intercepto da demanda (\(a\)) e o custo marginal (\(c\)). O markup \((a-c)/2\) reflete o poder de mercado: quanto mais inelástica a demanda (menor \(b\)), maior o markup em valor absoluto.

---

## Exercício 12.3 {#ex-12-3}

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

---

## Exercício 12.4 {#ex-12-4}

**Solução.**

**(a)** \(q = 4L^{1/2} \implies L = q^2/16\). \(CT = r\bar{K} + wL = 2(16) + 8(q^2/16) = 32 + q^2/2\).

**(b)** \(CMg = q\). \(CVMe = q/2\).

**(c)** Ponto de fechamento: \(\min CVMe = 0\) (em \(q = 0\)). O CVMe é crescente, logo o preço mínimo é \(p > 0\) (a firma opera para qualquer preço positivo no curto prazo). Formalmente, a firma fecha se \(p < CVMe(q)\) para todo \(q > 0\), mas como \(CVMe(q) = q/2 \to 0\) quando \(q \to 0\), a firma sempre pode produzir alguma quantidade lucrativa.

**(d)** \(p = CMg \implies 16 = q\). \(\pi = 16 \times 16 - (32 + 128) = 256 - 160 = 96\).

**(e)** No longo prazo, a firma pode ajustar \(K\). Com \(q = K^{1/2}L^{1/2}\), \(w = 8\), \(r = 2\): custo unitário \(c = 2(wr)^{1/2} = 2\sqrt{16} = 8\). Se \(p = 16 > 8 = c\), a firma quer escala infinita (RCE). No equilíbrio de longo prazo com livre entrada, \(p = c = 8\) e cada firma é indiferente em escala.

---

## Exercício 12.5 {#ex-12-5}

**Solução.**

**(a)** Se \(p \geq CVMe\) mas \(p < CMe\), a firma tem prejuízo mas cobre os custos variáveis e parte dos fixos. Fechar geraria prejuízo igual ao custo fixo total. Exemplo: CF = 100, CV = 60, RT = 80. Operando: \(\pi = 80 - 160 = -80\). Fechando: \(\pi = -100\). Operar é menos ruim.

**(b)** A convexidade da função lucro nos preços significa que \(\pi(p)\) é convexa: \(d^2\pi/dp^2 = dq^*/dp > 0\). Implicação: a firma se beneficia mais de variabilidade de preços do que de preço estável ao mesmo nível médio. Pela desigualdade de Jensen: \(E[\pi(p)] \geq \pi(E[p])\). Intuitivamente, quando o preço sobe, a firma expande e captura mais lucro; quando cai, contrai e limita as perdas.

**(c)** Na teoria da firma, não existe "insumo de Giffen" porque a demanda condicionada por insumos vem da minimização de custo (equivalente ao problema dual do consumidor). As demandas hicksianas (compensadas) sempre satisfazem a lei da demanda: \(\partial h_i/\partial w_i \leq 0\). No consumidor, o efeito Giffen surge pelo efeito-renda no problema primal. Na firma, a demanda condicionada é análoga à hicksiana (utilidade fixada = produto fixado), logo não há efeito-renda e não há Giffen.

**(d)** \(RMg = p(1 + 1/\varepsilon_d)\). Se \(|\varepsilon_d| < 1\), então \(1/\varepsilon_d < -1\) e \(RMg < 0\). Como \(CMg > 0\), nunca \(RMg = CMg\) na região inelástica. Intuitivamente, na região inelástica, reduzir a produção **aumenta** a receita (demanda insensível ao preço), então a firma sempre reduz até atingir \(|\varepsilon_d| \geq 1\).

**(e)** Segundo Coase (1937), a firma cresce até que o custo marginal de organizar uma transação internamente iguale o custo de realizá-la no mercado. Deseconomias de escala organizacional (burocracia, custos de monitoramento, perda de informação em hierarquias) limitam o crescimento. Essas deseconomias são análogas aos rendimentos decrescentes de escala na produção, mas operam no nível da gestão.
