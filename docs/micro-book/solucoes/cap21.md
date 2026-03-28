---
title: "Soluções — Capítulo 21"
---

# Soluções dos Exercícios — Capítulo 21

[← Voltar ao Capítulo 21](../cap21/exercicios.md)

---

## ✏️ Exercício 21.1 {#ex-21-1}

**Plataforma de streaming: custo fixo, monopólio e discriminação de preços.**

\(F = 10.000\), \(c = 0{,}01\), \(q = 500 - 100p\).

---

**(a) Quantidade socialmente ótima**

No ótimo social, \(p = c = 0{,}01\):

\[
q^* = 500 - 100 \times 0{,}01 = 500 - 1 = 499
\]

Excedente do consumidor:

\[
EC = \frac{1}{2}(p_{\max} - c) \times q^* = \frac{1}{2}(5 - 0{,}01) \times 499 = \frac{1}{2} \times 4{,}99 \times 499 \approx 1.245
\]

(Nota: \(p_{\max} = 5\) é o preço que zera a demanda, obtido de \(0 = 500 - 100p\).)

O excedente total é igual ao excedente do consumidor, pois o produtor cobra preço = custo marginal (excedente do produtor = 0, excluindo custos fixos).

**Excedente total (excluindo custo fixo) \(\approx 1.245\).**

---

**(b) Quantidade e preço de monopólio**

Receita: \(R = p \cdot q = p(500 - 100p) = 500p - 100p^2\).

Receita marginal: \(\frac{dR}{dq} = p + q \cdot \frac{dp}{dq}\). Da inversa da demanda: \(p = 5 - q/100\), então \(RMg = 5 - q/50\).

Igualando ao custo marginal:

\[
5 - \frac{q}{50} = 0{,}01 \implies q^{mono} = 50 \times 4{,}99 = 249{,}5
\]

\[
p^{mono} = 5 - \frac{249{,}5}{100} = 2{,}505
\]

Peso morto:

\[
DWL = \frac{1}{2}(p^{mono} - c)(q^* - q^{mono}) = \frac{1}{2}(2{,}505 - 0{,}01)(499 - 249{,}5)
\]

\[
DWL = \frac{1}{2} \times 2{,}495 \times 249{,}5 \approx 311{,}3
\]

---

**(c) Lucro do monopolista**

\[
\pi = (p^{mono} - c) \times q^{mono} - F = (2{,}505 - 0{,}01) \times 249{,}5 - 10.000
\]

\[
\pi = 2{,}495 \times 249{,}5 - 10.000 = 622{,}5 - 10.000 = -9.377{,}5
\]

**O monopolista tem prejuízo.** A receita líquida do custo variável (622,5) é insuficiente para cobrir o custo fixo (10.000). Este é o dilema central dos bens de informação: a escala de monopólio tradicional não é suficiente para cobrir custos fixos elevados quando o custo marginal é muito baixo.

---

**(d) Discriminação de preços**

Considere dois planos:

- **Básico**: preço \(p_B = 1\), demanda \(q_B = 500 - 100 = 400\).
- **Premium**: preço \(p_P = 4\), demanda \(q_P = 500 - 400 = 100\).

Porém, devemos segmentar: os 100 consumidores com maior disposição a pagar (\(v \in [4, 5]\)) compram o Premium, e os demais (\(v \in [1, 4]\)) compram o Básico. Assim:

- Premium: 100 usuários × (4 − 0,01) = 399.
- Básico: 300 usuários × (1 − 0,01) = 297.
- Receita total líquida = 399 + 297 = 696.

Ainda insuficiente para cobrir \(F = 10.000\). Na prática, plataformas de streaming combinam discriminação de preços com grande escala global (Netflix tem 260+ milhões de assinantes) e conteúdo exclusivo que aumenta a disposição a pagar.

**Resultado:** A discriminação de preços aumenta a receita e atende mais consumidores (400 vs. 249,5 no monopólio uniforme), reduzindo o peso morto. Porém, neste exemplo numérico, a escala ainda é insuficiente para cobrir custos fixos muito elevados — ilustrando por que plataformas de streaming operam globalmente.

---

## ✏️ Exercício 21.2 {#ex-21-2}

**Rede de comunicação com efeitos de rede.**

\(N = 200\), \(v_i \sim U[0, 8]\), \(f(n) = 0{,}02n\), \(p = 2\).

---

**(a) Equilíbrios de adoção**

O usuário marginal tem \(v^* + 0{,}02n^* = 2\). O número de adotantes é \(n^* = 200 \times (8 - v^*)/8 = 25(8 - v^*)\).

Substituindo \(v^* = 2 - 0{,}02n^*\):

\[
n^* = 25(8 - 2 + 0{,}02n^*) = 25(6 + 0{,}02n^*) = 150 + 0{,}5n^*
\]

\[
0{,}5n^* = 150 \implies n^* = 300
\]

Como \(n^* = 300 > 200 = N\), o equilíbrio de alta adoção tem \(n^* = 200\) (todos aderem). Verificação: com \(n = 200\), o pior usuário (\(v = 0\)) obtém \(0 + 0{,}02 \times 200 - 2 = 4 - 2 = 2 > 0\). Todos aderem.

Equilíbrio de adoção nula (\(n^* = 0\)): verificação — o melhor usuário (\(v = 8\)) obtém \(8 + 0 - 2 = 6 > 0\). Logo, ele quer aderir mesmo sem ninguém. O equilíbrio \(n^* = 0\) **não existe** neste caso, pois \(v_{\max} = 8 > p = 2\).

Portanto, há um **único equilíbrio**: \(n^* = 200\) (adoção universal).

---

**(b) Massa crítica**

Neste caso, como \(v_{\max} > p\), sempre há pelo menos um agente disposto a aderir, e o feedback positivo garante adoção universal. A massa crítica é \(n_c = 0\) — o primeiro aderente já desencadeia a cascata. (Formalmente, a massa crítica é o ponto fixo instável, que aqui é trivial.)

---

**(c) Preço para maximizar adoção**

Para adoção universal, precisamos que o pior usuário (\(v = 0\)) queira aderir:

\[
0 + 0{,}02 \times 200 \geq p \implies 4 \geq p
\]

Qualquer \(p \leq 4\) garante adoção universal. Para maximizar \(n^*\), basta \(p \leq 4\).

---

**(d) Trade-off receita vs. adoção**

Se \(p = 4\): receita \(= 4 \times 200 = 800\), adoção \(= 200\).

Se \(p = 5\): o pior usuário obtém \(0 + 4 - 5 = -1 < 0\). Nem todos aderem. Resolvendo \(v^* + 0{,}02n = 5\) com \(n = 25(8 - v^*)\):

\(v^* = 5 - 0{,}02 \times 25(8 - v^*) = 5 - 0{,}5(8 - v^*) = 5 - 4 + 0{,}5v^* \implies 0{,}5v^* = 1 \implies v^* = 2\)

\(n = 25(8 - 2) = 150\). Receita \(= 5 \times 150 = 750\).

Com \(p = 5\), a receita **cai** (750 < 800) apesar do preço maior, porque a perda de 50 usuários reduz o efeito de rede. Isso mostra que em mercados com efeitos de rede, pode ser ótimo cobrar menos para aumentar a adoção e a receita total.

---

## ✏️ Exercício 21.3 {#ex-21-3}

**Plataforma bilateral: preços e bem-estar.**

\(n_B = 100 - 2p_B + n_S\), \(n_S = 100 - 2p_S + 0{,}5n_B\), \(c_B = c_S = 5\).

---

**(a) Sistema de demandas**

Substituindo \(n_B\) em \(n_S\):

\[
n_S = 100 - 2p_S + 0{,}5(100 - 2p_B + n_S) = 150 - 2p_S - p_B + 0{,}5n_S
\]

\[
0{,}5n_S = 150 - 2p_S - p_B \implies n_S = 300 - 4p_S - 2p_B
\]

Substituindo em \(n_B\):

\[
n_B = 100 - 2p_B + 300 - 4p_S - 2p_B = 400 - 4p_B - 4p_S
\]

Verificação alternativa via \(n_B\): substituindo \(n_S = 100 - 2p_S + 0{,}5n_B\) em \(n_B\):

\[
n_B = 100 - 2p_B + 100 - 2p_S + 0{,}5n_B = 200 - 2p_B - 2p_S + 0{,}5n_B
\]

\[
0{,}5n_B = 200 - 2p_B - 2p_S \implies n_B = 400 - 4p_B - 4p_S \quad \checkmark
\]

---

**(b) Preços de monopólio**

\[
\pi = (p_B - 5)(400 - 4p_B - 4p_S) + (p_S - 5)(300 - 4p_S - 2p_B)
\]

CPO em \(p_B\):

\[
\frac{\partial \pi}{\partial p_B} = (400 - 4p_B - 4p_S) + (p_B - 5)(-4) + (p_S - 5)(-2) = 0
\]

\[
400 - 4p_B - 4p_S - 4p_B + 20 - 2p_S + 10 = 0
\]

\[
430 - 8p_B - 6p_S = 0 \quad \text{...(I)}
\]

CPO em \(p_S\):

\[
\frac{\partial \pi}{\partial p_S} = (p_B - 5)(-4) + (300 - 4p_S - 2p_B) + (p_S - 5)(-4) = 0
\]

\[
-4p_B + 20 + 300 - 4p_S - 2p_B - 4p_S + 20 = 0
\]

\[
340 - 6p_B - 8p_S = 0 \quad \text{...(II)}
\]

De (I): \(p_S = (430 - 8p_B)/6\). Substituindo em (II):

\[
340 - 6p_B - 8 \times \frac{430 - 8p_B}{6} = 0
\]

\[
2.040 - 36p_B - 3.440 + 64p_B = 0 \implies 28p_B = 1.400 \implies p_B^* = 50
\]

\[
p_S^* = \frac{430 - 400}{6} = 5
\]

**Resultado:** \(p_B^* = 50\), \(p_S^* = 5 = c_S\). A plataforma cobra dos compradores uma margem significativa (\(p_B - c_B = 45\)) e dos vendedores cobra exatamente o custo marginal. Isso reflete a assimetria nas externalidades: a externalidade dos compradores sobre os vendedores (\(\alpha_S = 0{,}5\)) é menor que a dos vendedores sobre os compradores (\(\alpha_B = 1\)), então a plataforma subsidia mais o lado dos vendedores.

\(n_B = 400 - 200 - 20 = 180\), \(n_S = 300 - 20 - 100 = 180\).

---

**(c) Preços socialmente ótimos**

O planejador social maximiza o excedente total (soma dos excedentes dos dois lados menos custos). Os preços ótimos igualam o custo marginal *líquido* da externalidade. Na versão simplificada, o planejador escolheria preços tais que o benefício marginal de um participante adicional de cada lado (incluindo a externalidade que gera para o outro) iguale o custo marginal.

O preço socialmente ótimo para o lado \(B\) é: \(p_B^{soc} = c_B - \alpha_S \cdot n_S\). Como \(\alpha_S\) corresponde ao coeficiente de \(n_B\) na demanda de \(S\) (= 0,5), e analogamente \(\alpha_B = 1\) (coeficiente de \(n_S\) na demanda de \(B\)):

Isso implicaria preços negativos (subsídio) para ambos os lados, financiados por transferências. Na prática, a diferença entre os preços de monopólio e os preços sociais mede a ineficiência do monopólio bilateral.

---

**(d) Peso morto**

No ótimo social (preços = custo marginal ajustado), suponha que \(p_B = p_S = 5\) (simplificação, ignorando ajuste de externalidade):

\(n_B^{soc} = 400 - 20 - 20 = 360\), \(n_S^{soc} = 300 - 20 - 10 = 270\).

No monopólio: \(n_B^{mono} = 180\), \(n_S^{mono} = 180\).

A redução de participantes de ambos os lados (em relação ao ótimo) gera peso morto. O cálculo exato requer integração das curvas de demanda, mas a perda é substancial: o monopólio reduz a participação pela metade em cada lado, e os efeitos de rede amplificam essa perda (menos participantes de cada lado → menor valor para o outro lado → ainda menos participantes).

---

## ✏️ Exercício 21.4 {#ex-21-4}

**Competição entre redes sociais com single-homing.**

\(N = 100\), \(u_k = v + 0{,}1n_k - p_k\), \(v = 3\), \(p_A = p_B = 1\).

---

**(a) Equilíbrios de Nash**

Suponha \(n_A\) usuários na rede A e \(n_B = 100 - n_A\) na rede B. A utilidade de estar em A: \(u_A = 3 + 0{,}1n_A - 1 = 2 + 0{,}1n_A\). Em B: \(u_B = 2 + 0{,}1(100 - n_A) = 12 - 0{,}1n_A\).

O usuário prefere A se \(u_A > u_B\): \(2 + 0{,}1n_A > 12 - 0{,}1n_A \implies 0{,}2n_A > 10 \implies n_A > 50\).

**Equilíbrios:**

- \(n_A = 100\): todos em A. \(u_A = 12 > u_B = 2\). Ninguém quer desviar. **Estável.**
- \(n_A = 0\): todos em B. \(u_B = 12 > u_A = 2\). Ninguém quer desviar. **Estável.**
- \(n_A = 50\): divisão simétrica. \(u_A = u_B = 7\). **Instável** (qualquer perturbação desencadeia migração completa).

---

**(b) Divisão instável**

O ponto de indiferença é \(n_A^* = 50\). Se \(n_A = 51\), todos preferem A; se \(n_A = 49\), todos preferem B. Este é o limiar de tipping.

---

**(c) Com vantagem de qualidade**

\(u_A = 3{,}5 + 0{,}1n_A - 1 = 2{,}5 + 0{,}1n_A\). \(u_B = 3 + 0{,}1(100 - n_A) - 1 = 12 - 0{,}1n_A\).

Indiferença: \(2{,}5 + 0{,}1n_A = 12 - 0{,}1n_A \implies 0{,}2n_A = 9{,}5 \implies n_A^* = 47{,}5\).

Agora a rede A domina se \(n_A > 47{,}5\). A vantagem de qualidade desloca o ponto de tipping a favor de A: basta ter 48 ou mais usuários (em vez de 51) para que todos migrem para A. No longo prazo, a rede A tende a dominar, pois a bacia de atração do equilíbrio "todos em A" é maior (cobre 52,5% das condições iniciais, versus 47,5% para B).

---

**(d) Eficiência e interoperabilidade**

O equilíbrio eficiente é aquele que maximiza a utilidade total. Com todos em uma rede:

- Todos em A: \(W_A = 100 \times (2{,}5 + 10) = 1.250\).
- Todos em B: \(W_B = 100 \times (2 + 10) = 1.200\).

O equilíbrio "todos em A" é mais eficiente (A tem maior qualidade). Porém, o equilíbrio "todos em B" também é um equilíbrio de Nash — e pode ser selecionado por acidentes históricos.

**Interoperabilidade** (obrigar A e B a se comunicarem) resolveria o problema: com \(n_A + n_B = 100\) na rede conjunta, todos obtêm o efeito de rede máximo independentemente da plataforma escolhida. A concorrência se dá então por qualidade e preço, não por tamanho de rede. O equilíbrio seria todos em A (maior qualidade), e os consumidores obtêm o benefício de rede máximo.

---

## ✏️ Exercício 21.5 {#ex-21-5}

**Plataforma de mídia: ad-supported vs. assinatura.**

\(u = 10 - 2a - p_U\), \(n = 200(10 - 2a - p_U)\), receita de anúncio por unidade = \(0{,}05n\).

---

**(a) Modelo ad-supported (\(p_U = 0\))**

\(n = 200(10 - 2a) = 2.000 - 400a\).

Receita total: \(\pi = 0{,}05n \times a = 0{,}05(2.000 - 400a) \times a = 100a - 20a^2\).

CPO: \(\frac{d\pi}{da} = 100 - 40a = 0 \implies a^* = 2{,}5\).

\(n^* = 2.000 - 1.000 = 1.000\). \(\pi^* = 100(2{,}5) - 20(6{,}25) = 250 - 125 = 125\).

---

**(b) Modelo de assinatura (\(a = 0\))**

\(n = 200(10 - p_U) = 2.000 - 200p_U\).

\(\pi = p_U \times n = p_U(2.000 - 200p_U) = 2.000p_U - 200p_U^2\).

CPO: \(2.000 - 400p_U = 0 \implies p_U^* = 5\).

\(n^* = 2.000 - 1.000 = 1.000\). \(\pi^* = 5 \times 1.000 = 5.000\).

---

**(c) Modelo misto**

\(\pi = 0{,}05n \times a + p_U \times n = n(0{,}05a + p_U)\).

\(n = 200(10 - 2a - p_U)\).

\(\pi = 200(10 - 2a - p_U)(0{,}05a + p_U)\).

Seja \(x = 10 - 2a - p_U\) e \(y = 0{,}05a + p_U\). Note que \(p_U = y - 0{,}05a\) e \(x = 10 - 2a - y + 0{,}05a = 10 - 1{,}95a - y\).

CPO em \(a\): \(\frac{\partial \pi}{\partial a} = 200[(-2)(0{,}05a + p_U) + (10 - 2a - p_U)(0{,}05)] = 0\)

\(-2(0{,}05a + p_U) + 0{,}05(10 - 2a - p_U) = 0\)

\(-0{,}1a - 2p_U + 0{,}5 - 0{,}1a - 0{,}05p_U = 0\)

\(-0{,}2a - 2{,}05p_U + 0{,}5 = 0 \quad \text{...(I)}\)

CPO em \(p_U\): \(\frac{\partial \pi}{\partial p_U} = 200[(-1)(0{,}05a + p_U) + (10 - 2a - p_U)(1)] = 0\)

\(-0{,}05a - p_U + 10 - 2a - p_U = 0\)

\(10 - 2{,}05a - 2p_U = 0 \quad \text{...(II)}\)

De (II): \(p_U = (10 - 2{,}05a)/2 = 5 - 1{,}025a\).

Substituindo em (I): \(-0{,}2a - 2{,}05(5 - 1{,}025a) + 0{,}5 = 0\)

\(-0{,}2a - 10{,}25 + 2{,}10125a + 0{,}5 = 0\)

\(1{,}90125a = 9{,}75 \implies a^* \approx 5{,}13\)

Mas isso requer \(p_U = 5 - 1{,}025 \times 5{,}13 \approx -0{,}26 < 0\), o que significaria pagar o usuário para aderir. Se a plataforma não pode cobrar preço negativo, a restrição \(p_U \geq 0\) é ativa, e o modelo misto ótimo *com restrição* é o modelo puramente ad-supported.

**Resultado:** Neste caso numérico, o modelo de assinatura pura (\(\pi = 5.000\)) domina amplamente o modelo ad-supported (\(\pi = 125\)). Isso ocorre porque a receita publicitária por impressão (0,05n) é baixa em relação à disposição a pagar dos usuários. Na prática, muitas plataformas combinam ambos os modelos (YouTube: versão gratuita com anúncios + YouTube Premium).

---

**(d) Excedente do consumidor**

No modelo ad-supported (\(a = 2{,}5\), \(p_U = 0\)): \(u_{\text{médio}} = 10 - 5 - 0 = 5\). \(EC = \int_0^{1.000} \frac{s}{200} ds = \frac{1.000^2}{400} = 2.500\) (usando a inversa da demanda).

No modelo de assinatura (\(a = 0\), \(p_U = 5\)): \(u_{\text{médio}} = 10 - 0 - 5 = 5\). O excedente é o mesmo (1.000 usuários com utilidade média de 5), mas a distribuição é diferente: no modelo ad-supported, todos sofrem com publicidade; no modelo de assinatura, os que não aderem (por não conseguirem pagar) são excluídos.

\(EC_{\text{assinatura}} = 2.500\) igualmente.

O bem-estar total (EC + lucro) é maior no modelo de assinatura (2.500 + 5.000 = 7.500 vs. 2.500 + 125 = 2.625), pois a receita de assinatura captura mais eficientemente o valor do serviço. Porém, o modelo ad-supported pode ser superior em termos de **equidade** se muitos consumidores de baixa renda seriam excluídos pela assinatura.

---

## ✏️ Exercício 21.6 {#ex-21-6}

**Discriminação de preços com big data.**

Sensíveis: \(D_S: q_S = 100 - 4p\), proporção 60%. Insensíveis: \(D_I: q_I = 100 - p\), proporção 40%. \(c = 10\).

---

**(a) Preço uniforme**

Demanda total: \(Q = 0{,}6(100 - 4p) + 0{,}4(100 - p) = 60 - 2{,}4p + 40 - 0{,}4p = 100 - 2{,}8p\).

\(\pi = (p - 10)(100 - 2{,}8p) = 100p - 2{,}8p^2 - 1.000 + 28p = -2{,}8p^2 + 128p - 1.000\).

CPO: \(-5{,}6p + 128 = 0 \implies p^* = 128/5{,}6 \approx 22{,}86\).

\(Q^* = 100 - 2{,}8 \times 22{,}86 = 100 - 64 = 36\).

\(\pi^* = (22{,}86 - 10) \times 36 = 12{,}86 \times 36 \approx 462{,}9\).

Nota: verificamos que ao preço de 22,86, os sensíveis demandam \(0{,}6(100 - 4 \times 22{,}86) = 0{,}6 \times 8{,}56 = 5{,}14\) e os insensíveis \(0{,}4(100 - 22{,}86) = 0{,}4 \times 77{,}14 = 30{,}86\). Total \(\approx 36\). ✓

---

**(b) Discriminação de terceiro grau**

Grupo sensível: \(\pi_S = 0{,}6(p_S - 10)(100 - 4p_S)\).

CPO: \(0{,}6[(100 - 4p_S) + (p_S - 10)(-4)] = 0 \implies 100 - 4p_S - 4p_S + 40 = 0 \implies p_S = 140/8 = 17{,}5\).

\(q_S = 0{,}6(100 - 70) = 18\). \(\pi_S = 0{,}6 \times 7{,}5 \times 30 = 135\).

Grupo insensível: \(\pi_I = 0{,}4(p_I - 10)(100 - p_I)\).

CPO: \(0{,}4[(100 - p_I) + (p_I - 10)(-1)] = 0 \implies 100 - p_I - p_I + 10 = 0 \implies p_I = 55\).

\(q_I = 0{,}4(100 - 55) = 18\). \(\pi_I = 0{,}4 \times 45 \times 45 = 810\).

**Lucro total com discriminação:** \(135 + 810 = 945\).

Aumento de lucro: \(945 - 462{,}9 = 482{,}1\) (mais que o dobro).

---

**(c) Excedente do consumidor**

**Com preço uniforme (\(p = 22{,}86\)):**

- \(EC_S = 0{,}6 \times \frac{1}{2} \times \frac{8{,}56^2}{4} = 0{,}6 \times \frac{73{,}27}{8} = 5{,}5\) (aproximado, usando a fórmula triangular na inversa da demanda do grupo).

Mais precisamente: para os sensíveis, a inversa é \(p = 25 - q_S/(0{,}6 \times 4) = 25 - q_S/2{,}4\). \(EC_S = \frac{1}{2}(25 - 22{,}86) \times 5{,}14 = \frac{1}{2} \times 2{,}14 \times 5{,}14 \approx 5{,}5\).

Para os insensíveis: \(EC_I = \frac{1}{2}(100 - 22{,}86) \times 30{,}86 \approx \frac{1}{2} \times 77{,}14 \times 30{,}86\). Mas este cálculo usa a inversa \(p = 100 - q_I/0{,}4\). \(EC_I = \frac{1}{2}(100 - 22{,}86) \times 30{,}86 / 0{,}4\)... Utilizando a fórmula padrão \(EC = q^2/(2|b|)\) onde demanda é \(q = a - bp\):

\(EC_S = \frac{(5{,}14)^2}{2 \times 2{,}4} = \frac{26{,}4}{4{,}8} \approx 5{,}5\).

\(EC_I = \frac{(30{,}86)^2}{2 \times 0{,}4} = \frac{952{,}3}{0{,}8} \approx 1.190{,}4\).

Total: \(EC \approx 1.195{,}9\).

**Com discriminação:**

\(EC_S = \frac{(18)^2}{2 \times 2{,}4} = \frac{324}{4{,}8} = 67{,}5\).

\(EC_I = \frac{(18)^2}{2 \times 0{,}4} = \frac{324}{0{,}8} = 405\).

Total: \(EC \approx 472{,}5\).

**Resultado:** O excedente do consumidor total **cai** com discriminação (de 1.195,9 para 472,5). Porém, o grupo **sensível** está melhor (EC de 5,5 para 67,5) porque recebe preço menor (17,5 vs. 22,86). O grupo insensível está pior (EC de 1.190,4 para 405) porque paga mais (55 vs. 22,86).

---

**(d) Implicações para regulação**

A discriminação de preços viabilizada por big data gera um trade-off clássico: aumenta a eficiência (mais consumidores atendidos no grupo sensível) mas redistribui excedente dos consumidores para a firma. A regulação de privacidade (LGPD, GDPR) limita a capacidade de discriminação ao restringir a coleta e o uso de dados pessoais — o que pode ser interpretado como uma forma de proteger o excedente do consumidor (especialmente dos grupos insensíveis/inelásticos), ao custo de alguma perda de eficiência.

---

## ✏️ Exercício 21.7 {#ex-21-7}

**Envelopment de plataforma.**

\(n_0 = 50\) milhões, \(F_P = 500\) milhões, \(\Delta v = 5\) R$/usuário/ano, conversão = 60%.

---

**(a) Benefício total**

Usuários convertidos: \(50 \times 0{,}6 = 30\) milhões.

Benefício total: \(30 \times 5 = 150\) milhões/ano.

\(150 < 500 = F_P\). O benefício anual não cobre o custo fixo no primeiro ano. Porém, se o benefício persiste por \(T\) anos, o investimento se paga em \(500/150 \approx 3{,}3\) anos (sem desconto).

---

**(b) Retorno do investimento**

Receita de transação: \(30\) milhões × \(10\) transações × R$ \(2\) = R$ \(600\) milhões/ano.

Payback: \(500/600 < 1\) ano. O investimento se paga em menos de um ano pela receita de transações, além do benefício intangível de retenção de usuários.

---

**(c) Barreira à entrada**

Um entrante sem base de usuários precisa:

1. Investir \(F_P = 500\) milhões no sistema de pagamentos.
2. Adquirir usuários do zero — sem efeito de rede da plataforma original.
3. Competir com uma plataforma que já tem 30 milhões de usuários ativos.

O custo de aquisição de cliente (CAC) no setor financeiro brasileiro é tipicamente de R$ 50–200. Para atrair 30 milhões: \(30 \times 50 = 1.500\) milhões (no mínimo). Total do entrante: \(500 + 1.500 = 2.000\) milhões vs. 500 milhões da incumbente.

**A barreira à entrada do envelopment é de pelo menos R$ 1.500 milhões** (o custo de adquirir a base de usuários que a incumbente já possui gratuitamente).

---

**(d) Implicações antitruste**

O envelopment permite à plataforma incumbente entrar em mercados adjacentes com vantagem substancial sobre entrantes especializados. Isso pode ser eficiente (custos de transação menores, melhor experiência do usuário) mas também pode ser anticompetitivo (impede a entrada de especialistas inovadores, reforça o lock-in). A análise antitruste deve avaliar se o envelopment gera eficiências genuínas ou se é primariamente uma estratégia de exclusão — distinção que o DMA europeu tenta operacionalizar ao proibir a "auto-preferência" dos gatekeepers.

---

## ✏️ Exercício 21.8 {#ex-21-8}

**Externalidade de privacidade.**

100 usuários, benefício privado \(b = 5\), custo externo \(e(n) = 0{,}02n\) por pessoa.

---

**(a) Equilíbrio sem regulação**

Cada usuário compartilha se \(b > 0\), isto é, se \(5 > 0\). Como o custo externo não recai sobre quem compartilha, **todos os 100 compartilham**: \(n^{priv} = 100\).

---

**(b) Nível socialmente ótimo**

O custo social marginal do n-ésimo compartilhamento é o custo externo imposto sobre os 99 outros:

\[
CMg_{\text{social}}(n) = 0{,}02 \times 99 = 1{,}98 \text{ (por pessoa afetada, mas o custo total é } 0{,}02n \times 99 \text{)}
\]

Mais precisamente: o custo externo total quando \(n\) pessoas compartilham é \(0{,}02n \times (100 - n)\) mais \(0{,}02n \times n\) (todos são afetados pelo compartilhamento dos outros). Simplificando: se cada compartilhamento impõe custo \(0{,}02\) sobre cada uma das 99 outras pessoas, o custo externo marginal é:

\[
CMg_{\text{ext}} = 99 \times 0{,}02 = 1{,}98
\]

No ótimo social: \(BMg = b = 5\) deve ser comparado ao custo marginal privado (0) + custo externo marginal (1,98).

Como \(b = 5 > 1{,}98 = CMg_{\text{ext}}\), o benefício marginal excede o custo externo marginal. **Todos devem compartilhar (\(n^{soc} = 100\))**? Não necessariamente — o custo externo *total* é \(0{,}02 \times 100 \times 99 = 198\) para 100 compartilhamentos, enquanto o benefício total é \(5 \times 100 = 500\). Como \(500 > 198\), o compartilhamento universal é socialmente ótimo neste caso. Porém, o nível ótimo é \(n^{soc} = 100\) — o mesmo que o equilíbrio privado.

Mas se \(e(n) = 0{,}02n\) significa que o custo externo *por pessoa afetada cresce* com \(n\) (e.g., quanto mais gente compartilha, pior para cada um), então o custo externo total é \(0{,}02n \times (N - 1) \times n / N\) ou similar. Reinterpretando: o custo por pessoa é \(e(n) = 0{,}02n\), então o custo total externo é \(0{,}02n \times (N-1)\):

\[
CT_{\text{ext}} = 99 \times 0{,}02n = 1{,}98n
\]

Benefício total: \(5n\). Benefício social líquido: \(5n - 1{,}98n = 3{,}02n\), que é crescente em \(n\). Logo \(n^{soc} = 100\).

Mas suponhamos que o custo externo é *convexo*: custo total externo \(= 99 \times 0{,}02n^2 / 2\) (i.e., custo externo marginal crescente). Então:

\[
CMg_{\text{ext}}(n) = 99 \times 0{,}02n = 1{,}98n
\]

Ótimo social: \(b = CMg_{\text{ext}} \implies 5 = 1{,}98n \implies n^{soc} \approx 2{,}53\).

Dado o enunciado ("\(e(n) = 0{,}02n\) por pessoa"), interpretemos como custo externo por pessoa afetada = \(0{,}02n\). Com 99 pessoas afetadas:

\[
CMg_{\text{ext}}(n) = 99 \times 0{,}02 = 1{,}98 \text{ (constante)}
\]

Como \(5 > 1{,}98\), o compartilhamento universal é ótimo.

Interpretação alternativa mais natural: cada usuário sofre custo \(0{,}02n\) do compartilhamento dos *outros* \(n\) usuários. Cada compartilhamento adicional impõe custo \(0{,}02\) sobre cada um dos outros 99. Custo externo marginal = \(0{,}02 \times 99 = 1{,}98\). Condição: \(5 > 1{,}98\), logo \(n^{soc} = 100\).

**Neste caso numérico, não há ineficiência**: o benefício privado é suficientemente alto para justificar o compartilhamento universal mesmo considerando a externalidade.

Para que haja ineficiência, suponhamos \(b = 1{,}5\) (menor benefício). Então \(b = 1{,}5 < 1{,}98\), e o compartilhamento universal é **socialmente ineficiente**. O ótimo seria \(n = 0\) (ninguém compartilha), mas o equilíbrio privado seria \(n = 100\) (todos compartilham, pois \(b = 1{,}5 > 0\)).

Com os dados do enunciado (\(b = 5\)): \(n^{priv} = n^{soc} = 100\).

---

**(c) Taxa pigouviana**

A taxa pigouviana iguala o custo externo marginal: \(t^* = 0{,}02 \times 99 = 1{,}98\).

Com a taxa, cada usuário compartilha se \(b - t > 0\), ou seja, \(5 - 1{,}98 = 3{,}02 > 0\). Todos ainda compartilham. A taxa não altera o comportamento neste caso, mas transfere \(1{,}98 \times 100 = 198\) do benefício privado para compensar a externalidade.

---

**(d) Relação com LGPD**

A LGPD não impõe uma taxa monetária, mas impõe **custos de conformidade** (consentimento explícito, opt-in, direito ao esquecimento) que funcionam como um "preço" implícito do compartilhamento. Ao tornar o compartilhamento mais custoso, a LGPD reduz o nível de compartilhamento em direção ao ótimo social. A exigência de consentimento informado, em particular, busca corrigir o "paradoxo da privacidade" — a tendência documentada dos consumidores de subestimarem os custos futuros da perda de privacidade (viés comportamental, Capítulo 8).

---

## ✏️ Exercício 21.9 {#ex-21-9}

**Leilão GSP com quality scores.**

\(v_X = 8\), \(v_Y = 5\), \(v_Z = 3\). \(\theta_1 = 300\), \(\theta_2 = 150\). \(q_X = 1{,}2\), \(q_Y = 1{,}0\), \(q_Z = 0{,}8\).

---

**(a) Alocação com quality scores**

Scores (assumindo lances verdadeiros): \(s_X = 8 \times 1{,}2 = 9{,}6\), \(s_Y = 5 \times 1{,}0 = 5{,}0\), \(s_Z = 3 \times 0{,}8 = 2{,}4\).

Ordenação: X (9,6) → posição 1, Y (5,0) → posição 2, Z (2,4) → não exibido.

---

**(b) Preços no GSP**

O preço por clique de cada anunciante é o lance mínimo para manter sua posição:

- **X na posição 1**: deve ter score \(\geq s_Y = 5{,}0\). Lance mínimo: \(b_X^{\min} = 5{,}0 / q_X = 5{,}0/1{,}2 \approx 4{,}17\). Paga **R$ 4,17 por clique**.

- **Y na posição 2**: deve ter score \(\geq s_Z = 2{,}4\). Lance mínimo: \(b_Y^{\min} = 2{,}4 / q_Y = 2{,}4/1{,}0 = 2{,}40\). Paga **R$ 2,40 por clique**.

---

**(c) Receita do buscador**

\[
R = 4{,}17 \times 300 + 2{,}40 \times 150 = 1.251 + 360 = 1.611
\]

---

**(d) Comparação sem quality scores**

Sem quality scores, a alocação seria por lance puro: X (8) → posição 1, Y (5) → posição 2.

Preços: \(p_X = b_Y = 5\), \(p_Y = b_Z = 3\).

\(R_{\text{sem QS}} = 5 \times 300 + 3 \times 150 = 1.500 + 450 = 1.950\).

A receita é **maior** sem quality scores (\(1.950 > 1.611\)) neste exemplo. Então por que o Google usa quality scores?

**Eficiência e longo prazo:** O quality score garante que anúncios mais relevantes (melhor experiência do usuário) ocupem posições melhores. Se \(q_X\) é alto, significa que os usuários clicam e interagem mais com os anúncios de X — o que melhora a experiência do usuário e sustenta o tráfego de longo prazo. A perda de receita de curto prazo é compensada pela retenção de usuários (que sustenta o lado subsidiado do mercado bilateral).

---

## ✏️ Exercício 21.10 {#ex-21-10}

**Estratégia de precificação intertemporal com efeitos de rede.**

\(c = 10\), \(f(n_1) = 0{,}1n_1\), \(n_t = 100 - 5p_t + f(n_{t-1})\), \(f(n_0) = 0\).

---

**(a) Demanda no período 1 com \(p_1 = 5\)**

\(n_1 = 100 - 5 \times 5 + 0 = 100 - 25 = 75\).

---

**(b) Lucro no período 1**

\(\pi_1 = (p_1 - c) \times n_1 = (5 - 10) \times 75 = -5 \times 75 = -375\).

Prejuízo de 375.

---

**(c) Período 2**

Efeito de rede: \(f(75) = 0{,}1 \times 75 = 7{,}5\).

\(n_2 = 100 - 5p_2 + 7{,}5 = 107{,}5 - 5p_2\).

Lucro: \(\pi_2 = (p_2 - 10)(107{,}5 - 5p_2)\).

CPO: \(107{,}5 - 5p_2 + (p_2 - 10)(-5) = 0 \implies 107{,}5 - 5p_2 - 5p_2 + 50 = 0\)

\(157{,}5 = 10p_2 \implies p_2^* = 15{,}75\).

\(n_2^* = 107{,}5 - 5 \times 15{,}75 = 107{,}5 - 78{,}75 = 28{,}75\).

\(\pi_2^* = (15{,}75 - 10) \times 28{,}75 = 5{,}75 \times 28{,}75 = 165{,}3\).

**Lucro total:** \(-375 + 165{,}3 = -209{,}7\). Prejuízo.

---

**(d) Estratégia míope**

Sem efeito de rede estratégico, a firma maximiza lucro em cada período separadamente.

Período 1: \(n_1 = 100 - 5p_1\). CPO: \(100 - 10p_1 + 50 = 0 \implies p_1^{mono} = 15\).

\(n_1^{mono} = 100 - 75 = 25\). \(\pi_1^{mono} = 5 \times 25 = 125\).

Período 2: \(f(25) = 2{,}5\). \(n_2 = 102{,}5 - 5p_2\). CPO: \(152{,}5 = 10p_2 \implies p_2 = 15{,}25\).

\(n_2 = 102{,}5 - 76{,}25 = 26{,}25\). \(\pi_2 = 5{,}25 \times 26{,}25 = 137{,}8\).

**Lucro total míope:** \(125 + 137{,}8 = 262{,}8\).

**Comparação:** A estratégia de "queima de caixa" (\(-209{,}7\)) é **pior** que a estratégia míope (\(262{,}8\)) neste exemplo numérico. Isso ocorre porque o efeito de rede (\(\alpha = 0{,}1\)) não é forte o suficiente para compensar o prejuízo maciço do período 1. A "queima de caixa" só é justificável quando os efeitos de rede são substancialmente mais fortes, o horizonte temporal é longo (mais de 2 períodos), e/ou quando o preço baixo no período 1 gera lock-in que permite preços mais altos nos períodos futuros.

Para que a estratégia agressiva valha a pena neste modelo, precisaríamos de \(\alpha > 0{,}3\) (aproximadamente) ou de um horizonte de 5+ períodos. Isso ilustra que a "queima de caixa" não é sempre racional — ela depende da intensidade dos efeitos de rede e do horizonte de investimento.
