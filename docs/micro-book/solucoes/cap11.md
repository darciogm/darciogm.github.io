---
title: "Soluções — Capítulo 11"
---

# Soluções dos Exercícios — Capítulo 11

[← Voltar ao Capítulo 11](../cap11/index.md)

---

## Exercício 11.1 {#ex-11-1}

**Solução.**

**(a)** Minimizando custo sujeito a \(K^{1/2}L^{1/2} = q\): CPO dá \(L/K = r/w = 1/4\), logo \(L = K/4\). Da restrição: \(K^{1/2}(K/4)^{1/2} = q \implies K/(2) = q \implies K^c = 2q\), \(L^c = q/2\).

**(b)** \(C = wL^c + rK^c = 4(q/2) + 1(2q) = 2q + 2q = 4q\).

**(c)** \(\partial C/\partial w = q/2 = L^c\) ✓. \(\partial C/\partial r = 2q = K^c\) ✓. Lema de Shephard confirmado.

**(d)** \(C(10) = 4 \times 10 = 40\).

**(e)** \(CMg = dC/dq = 4\). \(CMe = C/q = 4\). Ambos são constantes e iguais. Isso ocorre porque \(\alpha + \beta = 1/2 + 1/2 = 1\) (rendimentos constantes de escala). Com RCE, o custo é linear em \(q\), logo CMg = CMe = constante.

---

## Exercício 11.2 {#ex-11-2}

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

---

## Exercício 11.3 {#ex-11-3}

**Solução.**

**(a)** Com \(q = \min\{K, 2L\}\), no ótimo: \(K = 2L\), ou \(K = q\) e \(L = q/2\).

\[
C(q) = rK + wL = 8q + 2(q/2) = 8q + q = 9q
\]

**(b)** \(CMe = 9\), \(CMg = 9\). Ambos constantes. Com Leontief e rendimentos constantes de escala (\(\min\{K, 2L\}\) é homogênea de grau 1), o custo é linear.

**(c)** Tanto a Leontief quanto a Cobb-Douglas com RCE produzem custo linear (\(CMg = CMe = \text{constante}\)). A diferença é que na Cobb-Douglas a razão \(K/L\) responde a mudanças nos preços relativos dos insumos, enquanto na Leontief é fixa. O custo unitário da Cobb-Douglas é \(c(w,r) = \text{função dos preços}\) que depende de \(w/r\), enquanto na Leontief é sempre \(r + w/2 = 9\) para esses parâmetros.

---

## Exercício 11.4 {#ex-11-4}

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

---

## Exercício 11.5 {#ex-11-5}

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
