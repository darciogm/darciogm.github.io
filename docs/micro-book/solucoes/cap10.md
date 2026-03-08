---
title: "Soluções — Capítulo 10"
---

# Soluções dos Exercícios — Capítulo 10

[← Voltar ao Capítulo 10](../cap10/index.md)

---

## Exercício 10.1 {#ex-10-1}

**Solução.**

**(a)** Com \(q = 10K^{0,3}L^{0,7}\):

\[
PMg_K = \frac{\partial q}{\partial K} = 10 \times 0{,}3 K^{-0,7}L^{0,7} = 3K^{-0,7}L^{0,7}
\]

\[
PMg_L = \frac{\partial q}{\partial L} = 10 \times 0{,}7 K^{0,3}L^{-0,3} = 7K^{0,3}L^{-0,3}
\]

**(b)** \(\frac{\partial^2 q}{\partial K^2} = 3(-0{,}7)K^{-1,7}L^{0,7} = -2{,}1K^{-1,7}L^{0,7} < 0\) ✓

\(\frac{\partial^2 q}{\partial L^2} = 7(-0{,}3)K^{0,3}L^{-1,3} = -2{,}1K^{0,3}L^{-1,3} < 0\) ✓

**(c)** \(TMST_{L,K} = \frac{PMg_L}{PMg_K} = \frac{7K^{0,3}L^{-0,3}}{3K^{-0,7}L^{0,7}} = \frac{7}{3}\frac{K}{L}\)

Ao longo de uma isoquanta, quando \(L\) aumenta, \(K\) diminui, logo \(K/L\) diminui e a TMST decresce. ✓

**(d)** \(\alpha + \beta = 0{,}3 + 0{,}7 = 1\): **rendimentos constantes de escala**.

**(e)** Para Cobb-Douglas, \(\sigma = 1\) sempre (por definição da forma funcional). Confirmação: \(\sigma = \frac{d\ln(K/L)}{d\ln(TMST)} = \frac{d\ln(K/L)}{d\ln(3L/(7K))} = 1\), pois \(\ln(TMST) = \ln(3/7) + \ln(L/K)\), e a relação é linear com coeficiente 1.

---

## Exercício 10.2 {#ex-10-2}

**Solução.**

**(a)** A forma CES geral é \(q = [\delta K^\rho + (1-\delta)L^\rho]^{\gamma/\rho}\). Comparando com \(q = [0{,}5K^{-1} + 0{,}5L^{-1}]^{-1}\):

\(\delta = 0{,}5\), \(\rho = -1\), \(\gamma = 1\) (pois o expoente externo é \(\gamma/\rho = 1/(-1) = -1\)).

**(b)** \(\sigma = \frac{1}{1-\rho} = \frac{1}{1-(-1)} = \frac{1}{2}\).

**(c)** \(q(tK, tL) = [0{,}5(tK)^{-1} + 0{,}5(tL)^{-1}]^{-1} = [t^{-1}(0{,}5K^{-1} + 0{,}5L^{-1})]^{-1} = t \cdot q(K,L)\).

Rendimentos constantes de escala (\(\gamma = 1\)). ✓

**(d)** Com \(\sigma = 1/2 < 1\), as isoquantas são mais curvas que as Cobb-Douglas (\(\sigma = 1\)), aproximando-se da forma em "L" dos complementos perfeitos. A substituição entre K e L é mais difícil: uma mudança de 1% nos preços relativos induz apenas 0,5% de mudança na razão K/L.

---

## Exercício 10.3 {#ex-10-3}

**Solução.**

**(a)** No ótimo, \(2K = 3L\), logo \(K/L = 3/2\). A firma usa 3 unidades de capital para cada 2 de trabalho.

**(b)** Para \(q = 60\): \(2K = 60 \implies K = 30\) e \(3L = 60 \implies L = 20\). Verificação: \(\min\{60, 60\} = 60\). ✓

**(c)** Se \(K = 30\) e dobramos \(L\) de 20 para 40: \(q = \min\{60, 120\} = 60\). O produto não muda. O produto marginal do trabalho é **zero** quando \(3L > 2K\). Intuitivamente, sem máquinas adicionais, trabalhadores extras ficam ociosos — o capital é o gargalo.

**Interpretação econômica:** A Leontief modela processos produtivos com proporções fixas (como uma linha de montagem com uma máquina por operador). Não há substituição entre fatores, e o excesso de qualquer fator é puro desperdício.

---

## Exercício 10.4 {#ex-10-4}

**Solução.**

**(a)** \(\alpha + \beta = 0{,}6 + 0{,}8 = 1{,}4 > 1\): **rendimentos crescentes de escala**.

**(b)** A elasticidade de escala é \(e = \alpha + \beta = 1{,}4\). Se todos os insumos aumentam em 1%, o produto aumenta em 1,4%.

**(c)** \(q(2K, 2L) = (2K)^{0,6}(2L)^{0,8} = 2^{0,6+0,8} q = 2^{1,4} q \approx 2{,}64 q\). O produto mais que dobra.

**(d)** Os produtos marginais de cada fator são decrescentes (\(\alpha - 1 < 0\) e \(\beta - 1 < 0\)), significando que adicionar mais de um fator *mantendo o outro fixo* gera retornos decrescentes. Porém, quando ambos os fatores aumentam *simultaneamente*, há complementaridade: mais capital eleva a produtividade marginal do trabalho e vice-versa. Os rendimentos crescentes de escala emergem dessa interação, não do comportamento isolado de cada fator.

---

## Exercício 10.5 {#ex-10-5}

**Solução.**

**(a)** \(A(t) = e^{0,02t}\), logo \(\dot{A}/A = 0{,}02 = 2\%\) ao ano.

**(b)** Pela contabilidade do crescimento: \(\hat{q} = \hat{A} + \alpha \hat{K} + \beta \hat{L}\):

\[
\hat{q} = 2\% + 0{,}4 \times 3\% + 0{,}6 \times 1\% = 2\% + 1{,}2\% + 0{,}6\% = 3{,}8\%
\]

**(c)** Decomposição:

| Fonte | Contribuição | % do total |
|:------|:-----------:|:----------:|
| Capital (\(0{,}4 \times 3\%\)) | 1,2% | 31,6% |
| Trabalho (\(0{,}6 \times 1\%\)) | 0,6% | 15,8% |
| PTF | 2,0% | 52,6% |
| **Total** | **3,8%** | **100%** |

**(d)** O progresso técnico é **neutro no sentido de Hicks**: \(A(t)\) multiplica ambos os fatores proporcionalmente, sem alterar a razão \(K/L\) ótima para dados preços. A TMST \(= (\alpha/\beta)(L/K)\) não depende de \(A\).

**(e)** Em \(t = 0\): \(A(0) = 1\), \(q(0) = 1 \times 100^{0,4} \times 200^{0,6}\).

\(100^{0,4} = e^{0,4 \ln 100} = e^{1,842} \approx 6{,}31\)

\(200^{0,6} = e^{0,6 \ln 200} = e^{3,178} \approx 23{,}99\)

\(q(0) \approx 6{,}31 \times 23{,}99 \approx 151{,}4\)

Em \(t = 10\): \(A(10) = e^{0,2} \approx 1{,}221\). \(K(10) = 100 \times 1{,}03^{10} \approx 134{,}4\). \(L(10) = 200 \times 1{,}01^{10} \approx 220{,}9\).

\(q(10) = 1{,}221 \times 134{,}4^{0,4} \times 220{,}9^{0,6} \approx 1{,}221 \times 7{,}61 \times 27{,}15 \approx 252{,}3\)

Crescimento total: \(252{,}3/151{,}4 - 1 \approx 66{,}6\%\) em 10 anos, consistente com \((1{,}038)^{10} - 1 \approx 45{,}3\%\). A diferença vem da aproximação contínua vs. discreta.
