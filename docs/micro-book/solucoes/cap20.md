---
title: "Soluções — Capítulo 20"
---

# Soluções dos Exercícios — Capítulo 20

[← Voltar ao Capítulo 20](../cap20/index.md)

---

## ✏️ Exercício 20.1 {#ex-20-1}

**Externalidade de poluição e imposto pigouviano.**

Uma fábrica de celulose produz \( q \) toneladas com custo \( C(q) = 10q + q^2 \), vende ao preço \( P = 110 \). O custo externo da poluição é \( E(q) = 2q^2 \).

---

**(a) Quantidade sem regulação**

Sem regulação, a firma maximiza seu lucro privado:

\[
\pi(q) = Pq - C(q) = 110q - 10q - q^2 = 100q - q^2
\]

Condição de primeira ordem:

\[
\frac{d\pi}{dq} = 100 - 2q = 0 \implies q^* = 50
\]

**Sem regulação, a firma produz \( q = 50 \) toneladas.**

---

**(b) Quantidade socialmente ótima**

O planejador social maximiza o bem-estar líquido, considerando o custo externo:

\[
W(q) = Pq - C(q) - E(q) = 110q - 10q - q^2 - 2q^2 = 100q - 3q^2
\]

Condição de primeira ordem:

\[
\frac{dW}{dq} = 100 - 6q = 0 \implies q^{**} = \frac{100}{6} = \frac{50}{3} \approx 16{,}67
\]

Alternativamente, no ótimo social o benefício marginal (preço líquido do custo marginal privado) iguala o custo marginal externo:

\[
P - C'(q) = E'(q) \implies 110 - 10 - 2q = 4q \implies 100 = 6q \implies q^{**} = \frac{50}{3}
\]

**A quantidade socialmente ótima é \( q^{**} = \frac{50}{3} \approx 16{,}67 \) toneladas.**

---

**(c) Imposto pigouviano ótimo**

O imposto pigouviano ótimo é igual ao dano marginal externo avaliado na quantidade eficiente:

\[
t^* = E'(q^{**}) = 4q^{**} = 4 \cdot \frac{50}{3} = \frac{200}{3} \approx 66{,}67
\]

**Verificação:** Com o imposto \( t^* \), a firma maximiza:

\[
\pi(q) = Pq - C(q) - t^* q = 110q - 10q - q^2 - \frac{200}{3}q = \left(100 - \frac{200}{3}\right)q - q^2 = \frac{100}{3}q - q^2
\]

Condição de primeira ordem:

\[
\frac{d\pi}{dq} = \frac{100}{3} - 2q = 0 \implies q = \frac{100}{6} = \frac{50}{3} = q^{**} \checkmark
\]

**O imposto pigouviano \( t^* = \frac{200}{3} \approx 66{,}67 \) por tonelada induz a firma a escolher exatamente a quantidade socialmente eficiente.**

---

**(d) Peso morto da ausência de regulação**

O peso morto (DWL) corresponde à perda de bem-estar social causada pela produção excessiva, ou seja, a área entre o custo marginal social e o benefício marginal, de \( q^{**} \) a \( q^* \):

O custo marginal social é \( C'(q) + E'(q) = 10 + 2q + 4q = 10 + 6q \), e o benefício marginal é \( P = 110 \). A diferença é:

\[
CMgS(q) - P = (10 + 6q) - 110 = 6q - 100
\]

\[
DWL = \int_{q^{**}}^{q^*} \left[ CMgS(q) - P \right] dq = \int_{50/3}^{50} (6q - 100)\, dq
\]

\[
= \left[ 3q^2 - 100q \right]_{50/3}^{50} = \left(3 \cdot 2500 - 5000\right) - \left(3 \cdot \frac{2500}{9} - \frac{5000}{3}\right)
\]

\[
= (7500 - 5000) - \left(\frac{2500}{3} - \frac{5000}{3}\right) = 2500 - \left(-\frac{2500}{3}\right) = 2500 + \frac{2500}{3} = \frac{10000}{3} \approx 3333{,}33
\]

**O peso morto da ausência de regulação é \( DWL = \frac{10\,000}{3} \approx 3333{,}33 \).**

Interpretação: essa é a perda líquida de bem-estar social provocada pela produção de 50 toneladas em vez das 16,67 toneladas eficientes. A firma ignora o dano ambiental que impõe a terceiros, gerando superprodução significativa.

↩ [Voltar ao enunciado](../cap20/index.md#ex-20-1)

---

## ✏️ Exercício 20.2 {#ex-20-2}

**Provisão eficiente de bem público e preços de Lindahl.**

Três indivíduos (A, B, C) com valorações marginais pelo bem público \( G \):

| \( G \) | \( BMg_A \) | \( BMg_B \) | \( BMg_C \) | \( \sum BMg \) | \( CMg \) |
|---------|-------------|-------------|-------------|----------------|-----------|
| 1       | 40          | 30          | 20          | 90             | 60        |
| 2       | 35          | 25          | 15          | 75             | 60        |
| 3       | 25          | 20          | 10          | 55             | 60        |
| 4       | 15          | 10          | 5           | 30             | 60        |
| 5       | 5           | 5           | 2           | 12             | 60        |

---

**(a) Nível eficiente de provisão**

A condição de Samuelson para bens públicos exige que a soma das valorações marginais iguale o custo marginal:

\[
\sum_{i} BMg_i(G) = CMg
\]

Calculando a soma das valorações marginais para cada nível:

- \( G = 1 \): \( 40 + 30 + 20 = 90 > 60 \) — vale a pena prover mais.
- \( G = 2 \): \( 35 + 25 + 15 = 75 > 60 \) — vale a pena prover mais.
- \( G = 3 \): \( 25 + 20 + 10 = 55 < 60 \) — não vale a pena prover mais.

Como a soma dos benefícios marginais excede o custo marginal até \( G = 2 \) e é inferior a partir de \( G = 3 \), o nível eficiente é:

\[
\boxed{G^* = 2}
\]

---

**(b) Preços de Lindahl**

Os preços de Lindahl são contribuições personalizadas que refletem a valoração marginal de cada indivíduo no nível eficiente \( G^* = 2 \):

\[
p_A^L = BMg_A(2) = 35, \quad p_B^L = BMg_B(2) = 25, \quad p_C^L = BMg_C(2) = 15
\]

**Os preços de Lindahl são: \( p_A^L = 35 \), \( p_B^L = 25 \) e \( p_C^L = 15 \).**

Cada indivíduo paga exatamente sua valoração marginal, de modo que todos "concordam" com o nível \( G^* = 2 \).

---

**(c) Por que a provisão voluntária resultaria em \( G < G^* \)**

Na provisão voluntária, cada indivíduo decide quanto contribuir considerando apenas seu benefício privado, não o benefício que sua contribuição gera para os demais. Isso ocorre porque o bem público é **não-excludente**: cada indivíduo pode usufruir da quantidade provida pelos outros sem contribuir.

Formalmente, cada indivíduo compara seu benefício marginal individual \( BMg_i \) com o custo marginal total \( CMg = 60 \). Como:

- \( BMg_A(1) = 40 < 60 \)
- \( BMg_B(1) = 30 < 60 \)
- \( BMg_C(1) = 20 < 60 \)

Nenhum indivíduo, isoladamente, teria incentivo para financiar sequer a primeira unidade do bem público, pois seu benefício marginal individual é inferior ao custo. Esse é o **problema do carona** (*free-rider*): cada um espera que os outros financiem o bem, resultando em subprovisão ou provisão nula.

---

**(d) Verificação do equilíbrio orçamentário**

A soma dos preços de Lindahl no nível eficiente deve cobrir exatamente o custo marginal:

\[
p_A^L + p_B^L + p_C^L = 35 + 25 + 15 = 75
\]

Comparando com \( CMg = 60 \):

\[
75 > 60
\]

A soma dos preços de Lindahl (75) **excede** o custo marginal (60). Isso ocorre porque \( G^* = 2 \) é uma solução discreta — a condição de Samuelson não é satisfeita com igualdade exata. Na verdade, a soma dos benefícios marginais em \( G = 2 \) é 75 (ainda acima do custo), mas em \( G = 3 \) cairia para 55 (abaixo do custo). Se o nível ótimo contínuo existisse, ele estaria entre 2 e 3, e os preços de Lindahl somariam exatamente 60.

Para a solução discreta \( G^* = 2 \), os preços de Lindahl geram um **superávit** de \( 75 - 60 = 15 \), que poderia ser redistribuído entre os indivíduos como um desconto proporcional, mantendo a eficiência da provisão.

↩ [Voltar ao enunciado](../cap20/index.md#ex-20-2)

---

## ✏️ Exercício 20.3 {#ex-20-3}

**Alocação custo-efetiva de abatimento e cap-and-trade.**

Duas firmas emitem poluentes. Custos de abatimento: \( CA_1(a_1) = 2a_1^2 \), \( CA_2(a_2) = a_2^2 \). Cada firma emite 100 toneladas sem regulação. O regulador deseja reduzir as emissões totais em 60 toneladas.

---

**(a) Alocação custo-efetiva do abatimento**

A alocação custo-efetiva minimiza o custo total de abatimento sujeito à restrição \( a_1 + a_2 = 60 \):

\[
\min_{a_1, a_2} \; 2a_1^2 + a_2^2 \quad \text{s.a.} \quad a_1 + a_2 = 60
\]

A condição de eficiência exige igualdade dos custos marginais de abatimento:

\[
CMgA_1(a_1) = CMgA_2(a_2) \implies 4a_1 = 2a_2
\]

Portanto \( a_2 = 2a_1 \). Substituindo na restrição:

\[
a_1 + 2a_1 = 60 \implies 3a_1 = 60 \implies a_1 = 20, \quad a_2 = 40
\]

**A alocação custo-efetiva é \( a_1 = 20 \) toneladas (firma 1) e \( a_2 = 40 \) toneladas (firma 2).**

A firma com menor custo marginal de abatimento (firma 2) abate mais, o que é o princípio da equalização marginal.

Custo total eficiente:

\[
CT^{ef} = 2(20)^2 + (40)^2 = 2 \cdot 400 + 1600 = 800 + 1600 = 2400
\]

---

**(b) Custo total com abatimento uniforme**

Se cada firma abate 30 toneladas:

\[
CT^{unif} = 2(30)^2 + (30)^2 = 2 \cdot 900 + 900 = 1800 + 900 = 2700
\]

**O custo total com abatimento uniforme é 2700.**

---

**(c) Comparação e economia**

\[
\text{Economia} = CT^{unif} - CT^{ef} = 2700 - 2400 = 300
\]

**A alocação custo-efetiva gera uma economia de 300 em relação ao abatimento uniforme, uma redução de \( \frac{300}{2700} \approx 11{,}1\% \).**

Essa economia surge porque o abatimento uniforme ignora as diferenças nos custos marginais entre as firmas. A firma 1, com custo marginal mais alto (\( CMgA_1 = 4a_1 \)), é forçada a abater tanto quanto a firma 2, que tem custo marginal mais baixo (\( CMgA_2 = 2a_2 \)). Ao realocar abatimento da firma 1 para a firma 2, reduz-se o custo total sem alterar a redução total de emissões.

---

**(d) Preço de equilíbrio das permissões (cap-and-trade)**

Num sistema de cap-and-trade, cada firma recebe permissões e pode negociá-las. No equilíbrio, o preço da permissão iguala os custos marginais de abatimento:

\[
p = CMgA_1(a_1^*) = 4 \cdot 20 = 80
\]

Verificando com a firma 2:

\[
p = CMgA_2(a_2^*) = 2 \cdot 40 = 80 \checkmark
\]

**O preço de equilíbrio das permissões é \( p = 80 \) por tonelada.**

Interpretação: a firma 1 (custo marginal alto) compraria permissões da firma 2 (custo marginal baixo) até que os custos marginais se igualem. O mercado de permissões atinge automaticamente a alocação custo-efetiva, independentemente da distribuição inicial das permissões (resultado análogo ao Teorema de Coase).

↩ [Voltar ao enunciado](../cap20/index.md#ex-20-3)

---

## ✏️ Exercício 20.4 {#ex-20-4}

**Bem público discreto, problema do carona e mecanismo de Clarke.**

Uma comunidade com 100 moradores decide sobre a construção de um parque público que custa R\$50.000. Cada morador \( i \) tem valoração \( v_i \) uniformemente distribuída entre R\$200 e R\$800.

---

**(a) O parque deve ser construído?**

A valoração esperada de cada morador é:

\[
E[v_i] = \frac{200 + 800}{2} = 500
\]

A soma esperada das valorações dos 100 moradores é:

\[
\sum_{i=1}^{100} E[v_i] = 100 \times 500 = 50\,000
\]

Como \( \sum E[v_i] = 50\,000 = \text{Custo} \), em termos de valor esperado a provisão é marginalmente eficiente. Na realidade, como \( v_i \sim U[200, 800] \), a soma das valorações tem média 50.000 e desvio-padrão \( \sigma = \sqrt{100 \cdot \frac{(800-200)^2}{12}} = 10 \cdot \frac{600}{\sqrt{12}} \approx 1732{,}05 \).

Portanto, em cerca de metade das realizações, a soma das valorações excederá o custo. **Se usarmos o critério de eficiência esperada, o parque está na fronteira de viabilidade.** Na prática, porém, como a soma pode superar 50.000 com probabilidade significativa e os benefícios distribuem-se por todos, há um argumento razoável a favor da construção, especialmente se considerarmos que a decisão é "construir ou não" (discreta).

---

**(b) Quantos contribuiriam voluntariamente com R\$500?**

Um morador contribui R\$500 voluntariamente se e somente se sua valoração \( v_i \geq 500 \). Como \( v_i \sim U[200, 800] \):

\[
P(v_i \geq 500) = \frac{800 - 500}{800 - 200} = \frac{300}{600} = \frac{1}{2}
\]

**Espera-se que 50 dos 100 moradores contribuam voluntariamente.**

Porém, essa análise ignora o raciocínio estratégico. Mesmo moradores com \( v_i \geq 500 \) podem optar por não contribuir se acreditarem que o parque será construído com as contribuições dos outros. Além disso, com apenas 50 contribuições de R\$500, arrecadam-se R\$25.000, insuficiente para cobrir o custo de R\$50.000.

---

**(c) O problema do carona (free-rider)**

O parque público é um bem **não-excludente**: uma vez construído, todos os moradores se beneficiam, independentemente de terem contribuído. Isso gera o **problema do carona**:

1. **Incentivo individual a não contribuir**: cada morador percebe que sua contribuição individual (R\$500) tem efeito marginal na provisão total, mas o custo é certo. O benefício de "pegar carona" — usufruir do parque sem pagar — domina a decisão individual.

2. **Sub-revelação de preferências**: se a contribuição é voluntária, moradores têm incentivo a declarar valorações menores que as verdadeiras ou simplesmente não contribuir, esperando que outros financiem o bem.

3. **Resultado ineficiente**: o equilíbrio de Nash da contribuição voluntária resulta em provisão inferior à eficiente (ou provisão nula), mesmo quando a soma das valorações verdadeiras excede o custo.

Esse é o fundamento teórico para a intervenção governamental na provisão de bens públicos, tipicamente via tributação compulsória.

---

**(d) Mecanismo de imposto pivotal (Clarke)**

O **mecanismo de Clarke** (ou mecanismo pivotal) funciona da seguinte forma:

**Etapa 1 — Declaração de valorações.** Cada morador \( i \) declara sua valoração \( \hat{v}_i \) pelo parque.

**Etapa 2 — Decisão de provisão.** O parque é construído se e somente se:

\[
\sum_{i=1}^{100} \hat{v}_i \geq 50\,000
\]

Cada morador paga uma parcela fixa do custo: \( c_i = \frac{50\,000}{100} = 500 \).

**Etapa 3 — Imposto pivotal.** Verifica-se se o morador \( i \) é **pivotal**, ou seja, se sua declaração altera a decisão coletiva. Define-se:

\[
S_{-i} = \sum_{j \neq i} (\hat{v}_j - c_j)
\]

- Se \( S_{-i} > 0 \) (o parque seria construído mesmo sem \( i \)) e a decisão final é construir: morador \( i \) **não é pivotal** e paga imposto zero.
- Se \( S_{-i} < 0 \) (sem \( i \) o parque não seria construído) mas com \( i \) é construído: morador \( i \) **é pivotal** e paga um imposto adicional igual a \( |S_{-i}| \), compensando exatamente o "prejuízo líquido" imposto aos demais.

**Propriedade de compatibilidade de incentivos:** O mecanismo de Clarke torna a **declaração verdadeira** (\( \hat{v}_i = v_i \)) uma estratégia dominante para cada morador. Isso ocorre porque o imposto pivotal depende apenas das declarações dos outros, e o morador só afeta a decisão (e seu imposto) quando é pivotal — nesse caso, declarar a verdade maximiza sua utilidade líquida.

**Limitação:** O mecanismo de Clarke não é orçamentariamente equilibrado — a receita dos impostos pivotais é um excedente que não pode ser redistribuído aos participantes sem comprometer os incentivos.

↩ [Voltar ao enunciado](../cap20/index.md#ex-20-4)

---

## ✏️ Exercício 20.5 {#ex-20-5}

**Condição de Samuelson e provisão voluntária de bem público.**

Economia com bem privado \( x \) e bem público \( G \), dois consumidores:

\[
U_1 = \ln(x_1) + 2\ln(G), \quad U_2 = \ln(x_2) + \ln(G)
\]

Preço do bem privado = 1, custo marginal do bem público = \( c \). Cada consumidor tem renda \( W \).

---

**(a) Condição de Samuelson**

A condição de Samuelson para provisão eficiente de bens públicos exige que a soma das taxas marginais de substituição (TMS) entre bem público e bem privado iguale o custo marginal relativo:

\[
\sum_{i} TMS_{G,x}^i = CMg_G
\]

Para o consumidor 1:

\[
TMS_{G,x}^1 = \frac{\partial U_1 / \partial G}{\partial U_1 / \partial x_1} = \frac{2/G}{1/x_1} = \frac{2x_1}{G}
\]

Para o consumidor 2:

\[
TMS_{G,x}^2 = \frac{\partial U_2 / \partial G}{\partial U_2 / \partial x_2} = \frac{1/G}{1/x_2} = \frac{x_2}{G}
\]

A **condição de Samuelson** é:

\[
\boxed{\frac{2x_1}{G} + \frac{x_2}{G} = c} \quad \Longleftrightarrow \quad 2x_1 + x_2 = cG
\]

---

**(b) Nível eficiente \( G^* \)**

A restrição de recursos da economia é:

\[
x_1 + x_2 + cG = 2W
\]

Da condição de Samuelson: \( 2x_1 + x_2 = cG \).

Para encontrar \( G^* \), resolvemos o problema do planejador social. Maximizamos \( U_1 + U_2 \) (com pesos iguais) sujeito à restrição de recursos. Pelo Lagrangeano:

\[
\mathcal{L} = \ln(x_1) + 2\ln(G) + \ln(x_2) + \ln(G) - \lambda(x_1 + x_2 + cG - 2W)
\]

Condições de primeira ordem:

\[
\frac{1}{x_1} = \lambda, \quad \frac{1}{x_2} = \lambda, \quad \frac{3}{G} = \lambda c
\]

Das duas primeiras condições: \( x_1 = x_2 = \frac{1}{\lambda} \).

Da terceira: \( G = \frac{3}{\lambda c} \).

Substituindo na restrição de recursos:

\[
\frac{1}{\lambda} + \frac{1}{\lambda} + c \cdot \frac{3}{\lambda c} = 2W \implies \frac{2}{\lambda} + \frac{3}{\lambda} = 2W \implies \frac{5}{\lambda} = 2W \implies \lambda = \frac{5}{2W}
\]

Portanto:

\[
G^* = \frac{3}{\lambda c} = \frac{3}{\frac{5}{2W} \cdot c} = \frac{6W}{5c}
\]

\[
\boxed{G^* = \frac{6W}{5c}}
\]

E os consumos privados: \( x_1^* = x_2^* = \frac{2W}{5} \).

---

**(c) Provisão voluntária (equilíbrio de Nash)**

Na provisão voluntária, cada consumidor \( i \) escolhe sua contribuição \( g_i \geq 0 \) ao bem público, tomando a contribuição do outro como dada. O nível total é \( G = g_1 + g_2 \).

**Consumidor 1** maximiza:

\[
\max_{g_1} \; \ln(W - g_1) + 2\ln(g_1 + g_2)
\]

Condição de primeira ordem:

\[
-\frac{1}{W - g_1} + \frac{2}{g_1 + g_2} = 0 \implies g_1 + g_2 = 2(W - g_1) \implies 3g_1 + g_2 = 2W
\]

**Consumidor 2** maximiza:

\[
\max_{g_2} \; \ln(W - g_2) + \ln(g_1 + g_2)
\]

Condição de primeira ordem:

\[
-\frac{1}{W - g_2} + \frac{1}{g_1 + g_2} = 0 \implies g_1 + g_2 = W - g_2 \implies g_1 + 2g_2 = W
\]

Resolvendo o sistema:

\[
\begin{cases} 3g_1 + g_2 = 2W \\ g_1 + 2g_2 = W \end{cases}
\]

Da segunda equação: \( g_1 = W - 2g_2 \). Substituindo na primeira:

\[
3(W - 2g_2) + g_2 = 2W \implies 3W - 6g_2 + g_2 = 2W \implies W = 5g_2 \implies g_2 = \frac{W}{5}
\]

\[
g_1 = W - \frac{2W}{5} = \frac{3W}{5}
\]

O nível total de bem público no equilíbrio de Nash é:

\[
G^{Nash} = g_1 + g_2 = \frac{3W}{5} + \frac{W}{5} = \frac{4W}{5}
\]

Com custo marginal \( c \), a quantidade efetiva de bem público é:

\[
\boxed{G^{Nash} = \frac{4W}{5c}}
\]

(assumindo que cada unidade monetária contribuída compra \( 1/c \) unidades de bem público).

Os consumos privados são: \( x_1^{Nash} = W - g_1 = \frac{2W}{5} \) e \( x_2^{Nash} = W - g_2 = \frac{4W}{5} \).

---

**(d) Comparação: \( G^{Nash} < G^* \)**

Comparando os dois níveis:

\[
G^{Nash} = \frac{4W}{5c} < \frac{6W}{5c} = G^*
\]

\[
\frac{G^{Nash}}{G^*} = \frac{4W/5c}{6W/5c} = \frac{4}{6} = \frac{2}{3}
\]

**O equilíbrio de Nash produz apenas \( \frac{2}{3} \) do nível eficiente de bem público.**

**Interpretação econômica:**

A subprovisão no equilíbrio voluntário ocorre porque cada consumidor, ao decidir quanto contribuir, considera apenas **seu próprio benefício marginal**, ignorando o benefício que sua contribuição gera para o outro consumidor. Este é o cerne do problema de externalidade positiva na provisão de bens públicos.

Especificamente:

- O consumidor 1 iguala sua \( TMS_{G,x}^1 = c \) (em vez de contribuir até que a soma das TMS iguale \( c \)).
- O consumidor 2 faz o mesmo com sua \( TMS_{G,x}^2 = c \).

Cada um "pega carona" parcialmente no outro, e o resultado é que ambos subinvestem no bem público. A condição de Samuelson \( \sum TMS = c \) não é satisfeita no equilíbrio de Nash; em vez disso, cada consumidor individualmente iguala \( TMS^i = c \), o que resulta em \( \sum TMS^i > c \) no equilíbrio — sinalizando que mais bem público seria desejável do ponto de vista social.

Este resultado fundamenta a necessidade de mecanismos coletivos (tributação, mecanismos de revelação) para atingir a provisão eficiente de bens públicos.

↩ [Voltar ao enunciado](../cap20/index.md#ex-20-5)
