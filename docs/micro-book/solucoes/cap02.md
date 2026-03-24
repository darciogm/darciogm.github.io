---
title: "Soluções — Capítulo 2"
---

# Soluções dos Exercícios — Capítulo 2

[← Voltar ao Capítulo 2](../cap02/index.md)

---

## ✏️ Exercício 2.1 {#ex-2-1}

**Solução.**

**(a)** Pontos críticos: \(f'(x) = 0\).

\[
f'(x) = 12 - 6x + 6x^2 - x^3
\]

Fatorando: \(f'(x) = -(x^3 - 6x^2 + 6x - 12)\). Testando \(x = 0\): \(f'(0) = 12 \neq 0\). Reorganizando, note que:

\[
f'(x) = -(x^3 - 6x^2 + 6x - 12)
\]

Testando \(x = 2\): \(f'(2) = 12 - 12 + 24 - 8 = 16 \neq 0\). Testando fatores, note que podemos reescrever \(f'(x) = -x^3 + 6x^2 - 6x + 12\). Para encontrar raízes, igualamos a zero:

\[
x^3 - 6x^2 + 6x - 12 = 0
\]

Pelo teste racional e/ou método numérico, a equação tem uma raiz real aproximadamente em \(x \approx 4{,}54\) e duas raízes complexas. No intervalo \([0, 4]\), como \(f'(0) = 12 > 0\) e \(f'(4) = 12 - 24 + 96 - 64 = 20 > 0\), a derivada não se anula — não há pontos críticos interiores em \([0,4]\).

**(b)** Como não há pontos críticos interiores em \([0, 4]\), não há máximos ou mínimos locais interiores a classificar. A segunda derivada é:

\[
f''(x) = -6 + 12x - 3x^2
\]

Para \(x \approx 4{,}54\): \(f''(4{,}54) = -6 + 54{,}5 - 61{,}8 \approx -13{,}3 < 0\), logo é um máximo local (fora do intervalo).

**(c)** O máximo global em \([0, 4]\) ocorre nos extremos do intervalo (já que \(f' > 0\) em todo o intervalo, a função é crescente):

\[
f(0) = 0, \quad f(4) = 48 - 48 + 128 - 64 = 64
\]

O máximo global é \(f(4) = 64\).

**Interpretação econômica:** Este exercício ilustra a importância de verificar as fronteiras do domínio. Em problemas econômicos, restrições como \(q \geq 0\) frequentemente implicam soluções de canto que não são capturadas apenas pela CPO.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-1)

---

## ✏️ Exercício 2.2 {#ex-2-2}

**Solução.**

**(a)** O Lagrangeano é:

\[
\mathcal{L} = x_1^{1/3} x_2^{2/3} - \lambda(p_1 x_1 + p_2 x_2 - m)
\]

**(b)** Condições de primeira ordem:

\[
\frac{\partial \mathcal{L}}{\partial x_1} = \frac{1}{3} x_1^{-2/3} x_2^{2/3} - \lambda p_1 = 0 \tag{1}
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = \frac{2}{3} x_1^{1/3} x_2^{-1/3} - \lambda p_2 = 0 \tag{2}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = m - p_1 x_1 - p_2 x_2 = 0 \tag{3}
\]

**(c)** Dividindo (1) por (2):

\[
\frac{x_2}{2x_1} = \frac{p_1}{p_2} \implies x_2 = \frac{2p_1 x_1}{p_2}
\]

Substituindo em (3):

\[
p_1 x_1 + p_2 \cdot \frac{2p_1 x_1}{p_2} = m \implies p_1 x_1 + 2p_1 x_1 = m \implies 3p_1 x_1 = m
\]

\[
\boxed{x_1^* = \frac{m}{3p_1}, \qquad x_2^* = \frac{2m}{3p_2}}
\]

**(d)** Multiplicando todos os argumentos por \(t > 0\):

\[
x_1^*(tp_1, tp_2, tm) = \frac{tm}{3(tp_1)} = \frac{m}{3p_1} = x_1^*(p_1, p_2, m)
\]

Analogamente para \(x_2^*\). As demandas são homogêneas de grau 0: dobrar simultaneamente todos os preços e a renda não altera as quantidades demandadas. Isso reflete a ausência de ilusão monetária.

**(e)** De (1): \(\lambda^* = \frac{1}{3p_1} x_1^{*-2/3} x_2^{*2/3}\). Substituindo as demandas e simplificando:

\[
\lambda^* = \frac{1}{3p_1} \left(\frac{m}{3p_1}\right)^{-2/3} \left(\frac{2m}{3p_2}\right)^{2/3}
\]

O multiplicador \(\lambda^*\) mede a **utilidade marginal da renda**: o aumento na utilidade máxima quando a renda \(m\) aumenta em uma unidade, mantidos os preços. É o "preço-sombra" da restrição orçamentária — quanto maior \(\lambda^*\), mais "apertada" está a restrição.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-2)

---

## ✏️ Exercício 2.3 {#ex-2-3}

**Solução.**

**(a)** Multiplicando ambos os insumos por \(t > 0\):

\[
Q(tK, tL) = A(tK)^\alpha (tL)^\beta = At^\alpha K^\alpha t^\beta L^\beta = t^{\alpha+\beta} \cdot AK^\alpha L^\beta = t^{\alpha+\beta} Q(K,L)
\]

Logo \(Q\) é homogênea de grau \(\alpha + \beta\). \(\blacksquare\)

**(b)** O Teorema de Euler afirma que, para \(Q\) homogênea de grau \(k\):

\[
K \frac{\partial Q}{\partial K} + L \frac{\partial Q}{\partial L} = kQ
\]

Calculando:

\[
\frac{\partial Q}{\partial K} = \alpha A K^{\alpha-1} L^\beta, \quad \frac{\partial Q}{\partial L} = \beta A K^\alpha L^{\beta-1}
\]

\[
K \cdot \alpha A K^{\alpha-1} L^\beta + L \cdot \beta A K^\alpha L^{\beta-1} = \alpha A K^\alpha L^\beta + \beta A K^\alpha L^\beta = (\alpha + \beta) Q \quad \checkmark
\]

**(c)** Retornos constantes de escala: \(\alpha + \beta = 1\) (dobrar insumos dobra o produto). Retornos decrescentes: \(\alpha + \beta < 1\) (dobrar insumos menos que dobra o produto).

**(d)** A TMST é a razão dos produtos marginais:

\[
TMST_{KL} = \frac{PMg_K}{PMg_L} = \frac{\alpha A K^{\alpha-1} L^\beta}{\beta A K^\alpha L^{\beta-1}} = \frac{\alpha}{\beta} \cdot \frac{L}{K}
\]

**Interpretação econômica:** A TMST mede a taxa à qual a firma pode substituir capital por trabalho mantendo o mesmo nível de produto. Se \(\alpha/\beta = 1/2\), por exemplo, uma unidade a menos de capital exige duas unidades adicionais de trabalho. A TMST depende da razão \(L/K\): à medida que a firma usa mais trabalho e menos capital, cada unidade adicional de trabalho substitui menos capital — isso reflete a lei dos rendimentos marginais decrescentes de cada fator.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-3)

---

## ✏️ Exercício 2.4 {#ex-2-4}

**Solução.**

**(a)** A receita é \(R = PQ = (a - bQ)Q = aQ - bQ^2\). O lucro é:

\[
\pi(Q) = aQ - bQ^2 - cQ = (a - c)Q - bQ^2
\]

CPO: \(\pi'(Q) = (a - c) - 2bQ = 0\)

\[
\boxed{Q^* = \frac{a - c}{2b}}
\]

O lucro máximo é:

\[
\pi^* = (a - c) \cdot \frac{a-c}{2b} - b \cdot \frac{(a-c)^2}{4b^2} = \frac{(a-c)^2}{2b} - \frac{(a-c)^2}{4b} = \frac{(a-c)^2}{4b}
\]

\[
\boxed{\pi^* = \frac{(a-c)^2}{4b}}
\]

**(b)** Pelo Teorema do Envelope, \(\frac{\partial \pi^*}{\partial \theta} = \frac{\partial \pi}{\partial \theta}\bigg|_{Q=Q^*}\), onde a derivada parcial é tomada tratando \(Q\) como fixo:

\[
\frac{\partial \pi^*}{\partial a} = \frac{\partial}{\partial a}\left[(a-c)Q - bQ^2\right]_{Q=Q^*} = Q^* = \frac{a-c}{2b}
\]

\[
\frac{\partial \pi^*}{\partial b} = \frac{\partial}{\partial b}\left[(a-c)Q - bQ^2\right]_{Q=Q^*} = -(Q^*)^2 = -\frac{(a-c)^2}{4b^2}
\]

\[
\frac{\partial \pi^*}{\partial c} = \frac{\partial}{\partial c}\left[(a-c)Q - bQ^2\right]_{Q=Q^*} = -Q^* = -\frac{a-c}{2b}
\]

**(c)** Diferenciando diretamente \(\pi^* = \frac{(a-c)^2}{4b}\):

\[
\frac{\partial \pi^*}{\partial a} = \frac{2(a-c)}{4b} = \frac{a-c}{2b} \quad \checkmark
\]

\[
\frac{\partial \pi^*}{\partial b} = -\frac{(a-c)^2}{4b^2} \quad \checkmark
\]

\[
\frac{\partial \pi^*}{\partial c} = \frac{-2(a-c)}{4b} = -\frac{a-c}{2b} \quad \checkmark
\]

**(d)** Interpretação dos sinais:

- \(\partial \pi^*/\partial a > 0\): um aumento na disposição a pagar dos consumidores (intercepto da demanda mais alto) eleva o lucro do monopolista.
- \(\partial \pi^*/\partial b < 0\): uma demanda mais sensível ao preço (inclinação mais acentuada) reduz o lucro — o monopolista tem menos poder de mercado.
- \(\partial \pi^*/\partial c < 0\): um aumento no custo marginal reduz o lucro — cada unidade fica mais cara para produzir.

**Interpretação econômica:** O Teorema do Envelope permite calcular o efeito de mudanças paramétricas sobre o valor ótimo sem re-resolver o problema de otimização. Em economia, isso é extremamente útil para estática comparativa: basta avaliar a derivada parcial da função objetivo no ponto ótimo.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-4)

---

## ✏️ Exercício 2.5 {#ex-2-5}

**Solução.**

**(a)** O problema é:

\[
\max_{x_1, x_2} \; \ln(x_1) + x_2 \quad \text{s.a.} \quad 2x_1 + x_2 \leq m, \quad x_1 \geq 0, \quad x_2 \geq 0
\]

**(b)** Condições de Kuhn-Tucker:

\[
\frac{1}{x_1} - 2\lambda + \mu_1 = 0 \tag{i}
\]

\[
1 - \lambda + \mu_2 = 0 \tag{ii}
\]

\[
\lambda(m - 2x_1 - x_2) = 0, \quad \lambda \geq 0 \tag{iii}
\]

\[
\mu_1 x_1 = 0, \quad \mu_1 \geq 0 \tag{iv}
\]

\[
\mu_2 x_2 = 0, \quad \mu_2 \geq 0 \tag{v}
\]

**(c)** Para \(m = 10\): como a renda é elevada, testamos solução interior (\(x_1 > 0, x_2 > 0\)), logo \(\mu_1 = \mu_2 = 0\).

De (ii): \(\lambda = 1\). De (i): \(\frac{1}{x_1} = 2\lambda = 2\), logo \(x_1^* = 1/2\).

De (iii) com \(\lambda > 0\): \(2(1/2) + x_2 = 10\), logo \(x_2^* = 9\).

Verificação das KKT: \(\lambda = 1 > 0\) ✓; \(\mu_1 = \mu_2 = 0\) ✓; \(x_1 = 1/2 > 0\) ✓; \(x_2 = 9 > 0\) ✓; restrição ativa ✓.

**(d)** Para \(m = 0{,}3\): testamos \(x_2 = 0\) (solução de canto), \(\mu_2 \geq 0\).

Com \(x_2 = 0\), toda a renda vai para \(x_1\): \(2x_1 = 0{,}3\), logo \(x_1^* = 0{,}15\).

De (i) com \(\mu_1 = 0\) (pois \(x_1 > 0\)): \(\frac{1}{0{,}15} = 2\lambda\), logo \(\lambda = 10/3 \approx 3{,}33\).

De (ii): \(\mu_2 = \lambda - 1 = 7/3 \approx 2{,}33 > 0\) ✓ (confirma \(x_2 = 0\)).

**(e)** Na fronteira entre solução interior e de canto, \(x_2 = 0\) e \(\mu_2 = 0\). De (ii): \(\lambda = 1\). De (i): \(x_1 = 1/2\). Da restrição: \(m = 2(1/2) + 0 = 1\).

\[
\boxed{m_{\min} = 1}
\]

Para \(m \geq 1\), o consumidor compra ambos os bens. Para \(m < 1\), gasta tudo em \(x_1\).

**Interpretação econômica:** Com utilidade quase-linear, a demanda por \(x_1\) é constante (\(x_1^* = 1/2\)) quando a renda é suficiente. Toda variação de renda é absorvida por \(x_2\), que funciona como "numerário". A solução de canto ocorre quando a renda é tão baixa que o consumidor não pode adquirir a quantidade "ideal" de \(x_1\) e ainda sobrar algo para \(x_2\).

↩ [Voltar ao enunciado](../cap02/index.md#ex-2-5)

---

## ✏️ Exercício 2.6 {#ex-2-6}

**Solução.**

**(a)** Testamos: \(f(tx, ty) = (tx)^2(ty) = t^2 x^2 \cdot t y = t^3 x^2 y = t^3 f(x,y)\). Portanto, \(f\) é **homogênea de grau 3**.

**(b)** No ponto \((3, 4)\): \(f(3,4) = 9 \times 4 = 36\). As derivadas parciais: \(f_x = 2xy = 24\), \(f_y = x^2 = 9\). Pelo Teorema de Euler: \(x f_x + y f_y = 3 \times 24 + 4 \times 9 = 72 + 36 = 108\). Verificação: \(k \cdot f = 3 \times 36 = 108\). ✓

**(c)** \(f_x = 2xy\): testamos \(f_x(tx, ty) = 2(tx)(ty) = t^2 \cdot 2xy = t^2 f_x(x,y)\). Logo \(f_x\) é homogênea de grau 2. \(f_y = x^2\): \(f_y(tx, ty) = (tx)^2 = t^2 x^2 = t^2 f_y(x,y)\). Logo \(f_y\) é homogênea de grau 2. Em geral, se \(f\) é homogênea de grau \(k\), suas derivadas parciais são homogêneas de grau \(k-1\).


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-6)

---

## ✏️ Exercício 2.7 {#ex-2-7}

**Solução.**

**(a)** No ótimo da função Leontief \(U = \min\{x_1, 2x_2\}\), o consumidor deseja \(x_1 = 2x_2\). Consumir mais de \(x_1\) além de \(2x_2\) não aumenta a utilidade (o mínimo permanece \(2x_2\)); analogamente para \(x_2\). A proporção ótima é 2:1.

**(b)** Substituindo \(x_1 = 2x_2\) na restrição: \(3(2x_2) + 6x_2 = 90 \implies 12x_2 = 90 \implies x_2^* = 7{,}5\), \(x_1^* = 15\).

**(c)** \(U^* = \min\{15, 2(7{,}5)\} = \min\{15, 15\} = 15\).

**(d)** Com \(I = 120\): \(12x_2 = 120 \implies x_2^* = 10\), \(x_1^* = 20\). Variação: \(x_1\) subiu 33,3%, \(x_2\) subiu 33,3%. A elasticidade-renda é unitária para ambos os bens — propriedade geral das preferências homotéticas (Leontief é homotética).

**Interpretação econômica:** Como os bens são complementos perfeitos (pense em café e filtro de papel, ou impressora e cartucho), o consumidor mantém a proporção fixa independentemente de preços e renda. Todo aumento de renda é distribuído proporcionalmente entre os bens.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-7)

---

## ✏️ Exercício 2.8 {#ex-2-8}

**Solução.**

**(a)** Equilíbrio: \(Q^d = Q^s\):

\[
a - bP = -c + d(P - t) \implies a - bP = -c + dP - dt
\]

\[
a + c - dt = (b + d)P \implies P^* = \frac{a + c - dt}{b + d}
\]

\[
Q^* = a - b \cdot \frac{a + c - dt}{b+d} = \frac{a d - bc + bdt}{b+d}
\]

**(b)** \(\frac{dP^*}{dt} = \frac{-d}{b+d}\). Como \(b, d > 0\), temos \(0 < \frac{d}{b+d} < 1\). O imposto não é integralmente repassado: o consumidor absorve a fração \(\frac{d}{b+d}\) e o produtor absorve \(\frac{b}{b+d}\).

**(c)** O repasse é maior que 50% quando \(\frac{d}{b+d} > \frac{1}{2}\), ou seja, \(d > b\). Em termos de elasticidades: como \(\varepsilon_d = -b(P/Q)\) e \(\varepsilon_s = d(P/Q)\), o repasse é maior quando a oferta é mais elástica que a demanda (\(\varepsilon_s > |\varepsilon_d|\)). Intuitivamente, produtores mais sensíveis a preço conseguem "escapar" do imposto reduzindo a quantidade, forçando o ajuste pelo lado do consumidor.

**(d)** \(R(t) = t \cdot Q^*(t) = t \cdot \frac{ad - bc + bdt}{b+d}\). Derivando e igualando a zero:

\[
\frac{dR}{dt} = \frac{ad - bc + 2bdt}{b+d} = 0 \implies t^* = \frac{bc - ad}{2bd}
\]

Para que \(t^* > 0\), precisamos \(bc > ad\). A receita primeiro cresce com \(t\) (efeito base: mais receita por unidade) e depois cai (efeito quantidade: a base tributária encolhe). Esse é o formato da **curva de Laffer**: alíquotas muito altas podem reduzir a receita.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-8)

---

## ✏️ Exercício 2.9 {#ex-2-9}

**Solução.**

**(a)** O produtor maximiza a receita total:

\[
\max_{L_s, L_m} \; 160 \times 10\sqrt{L_s} + 120 \times 6\sqrt{L_m} = 1600\sqrt{L_s} + 720\sqrt{L_m}
\]

sujeito a \(L_s + L_m = 100\).

**(b)** Lagrangeano: \(\mathcal{L} = 1600\sqrt{L_s} + 720\sqrt{L_m} + \lambda(100 - L_s - L_m)\).

CPOs:

\[
\frac{\partial \mathcal{L}}{\partial L_s} = \frac{800}{\sqrt{L_s}} - \lambda = 0 \implies \lambda = \frac{800}{\sqrt{L_s}}
\]

\[
\frac{\partial \mathcal{L}}{\partial L_m} = \frac{360}{\sqrt{L_m}} - \lambda = 0 \implies \lambda = \frac{360}{\sqrt{L_m}}
\]

**(c)** Igualando: \(\frac{800}{\sqrt{L_s}} = \frac{360}{\sqrt{L_m}} \implies \frac{\sqrt{L_m}}{\sqrt{L_s}} = \frac{360}{800} = 0{,}45 \implies \frac{L_m}{L_s} = 0{,}2025\).

Logo \(L_m = 0{,}2025 L_s\). Substituindo: \(L_s + 0{,}2025 L_s = 100 \implies 1{,}2025 L_s = 100 \implies L_s^* \approx 83{,}16\).

\(L_m^* = 100 - 83{,}16 = 16{,}84\).

**(d)** \(\lambda^* = \frac{800}{\sqrt{83{,}16}} = \frac{800}{9{,}12} \approx 87{,}7\) R\$/hora.

**Interpretação:** Uma hora adicional de trabalho aumentaria a receita do produtor em aproximadamente R\$ 87,70. Esse é o valor-sombra do recurso escasso (tempo).

**(e)** Se \(P_s\) sobe para 200, a CPO para \(L_s\) torna-se \(\frac{1000}{\sqrt{L_s}} = \lambda\). A razão \(L_m/L_s\) cai (de 0,2025 para \((360/1000)^2 = 0{,}1296\)), logo o produtor realoca horas *da milho para a soja* — exatamente o que a estática comparativa prevê. O multiplicador \(\lambda\) também sobe, refletindo que cada hora de trabalho agora é mais valiosa.


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-9)

---

## ✏️ Exercício 2.10 {#ex-2-10}

**Solução.**

**(a)** A firma maximiza \(\pi = PQ - wL - rK\) sujeita a \(Q = K^\alpha L^{1-\alpha}\) e \(K \leq \bar{K}\). Substituindo a função de produção:

\[
\pi = P K^\alpha L^{1-\alpha} - wL - rK
\]

Lagrangeano com restrição de capacidade:

\[
\mathcal{L} = P K^\alpha L^{1-\alpha} - wL - rK + \mu(\bar{K} - K)
\]

**(b)** KKT:

\[
\frac{\partial \mathcal{L}}{\partial L} = P(1-\alpha)K^\alpha L^{-\alpha} - w = 0
\]

\[
\frac{\partial \mathcal{L}}{\partial K} = P\alpha K^{\alpha-1} L^{1-\alpha} - r - \mu = 0
\]

\[
\mu \geq 0, \quad \bar{K} - K \geq 0, \quad \mu(\bar{K} - K) = 0
\]

**(c)** Se \(K < \bar{K}\), então \(\mu = 0\). Da segunda CPO: \(P\alpha K^{\alpha-1}L^{1-\alpha} = r\), ou seja, \(P \cdot PMg_K = r\) — o valor do produto marginal do capital iguala o custo do capital. Da primeira CPO: \(P(1-\alpha)K^\alpha L^{-\alpha} = w\), ou seja, \(P \cdot PMg_L = w\).

Dividindo: \(\frac{\alpha}{1-\alpha} \cdot \frac{L}{K} = \frac{r}{w} \implies K = \frac{\alpha w}{(1-\alpha)r} L\).

Substituindo na função de produção, obtemos as demandas por fatores como funções de \(P, w, r\).

**(d)** Se \(K = \bar{K}\), a CPO para \(K\) dá:

\[
\mu = P\alpha \bar{K}^{\alpha-1} L^{1-\alpha} - r
\]

Como \(\mu > 0\), temos \(P \cdot PMg_K > r\): a produtividade marginal do capital excede seu custo — a firma *gostaria* de contratar mais capital, mas não pode. O multiplicador \(\mu\) é o "aluguel-sombra" do capital: quanto de lucro adicional a firma obteria se pudesse usar uma unidade a mais de capital. Em termos práticos, \(\mu\) mede o valor de uma expansão de capacidade.

**(e)** A restrição se torna ativa quando a demanda ótima irrestrita de capital excede \(\bar{K}\):

\[
K^*_{\text{irrestrito}} = \frac{\alpha w}{(1-\alpha)r} L^* > \bar{K}
\]

Isso ocorre quando \(\bar{K}\) é suficientemente baixo (ou quando \(P\) e \(w/r\) são suficientemente altos, incentivando uma intensidade de capital maior).


↩ [Voltar ao enunciado](../cap02/index.md#ex-2-10)
