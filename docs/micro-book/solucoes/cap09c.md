---
title: "Soluções — Capítulo 9c"
---

# Soluções dos Exercícios — Capítulo 9c

[← Voltar ao Capítulo 9c](../cap09c/index.md)

---

## ✏️ Exercício 9c.1 {#ex-9c-1}

**Solução.**

Considere o jogo bayesiano 2×2 genérico. O jogador 1 tem tipo \(\theta \in \{H, L\}\) com \(\Pr(H) = 0{,}5\). J1 escolhe \(U\) ou \(D\); J2 (sem tipo privado) escolhe \(L\) ou \(R\).

**Método geral para encontrar o BNE:**

1. **Estratégia de J1:** Uma estratégia contingente ao tipo: \(s_1(\theta)\). Com 2 tipos e 2 ações, há 4 estratégias possíveis: (U,U), (U,D), (D,U), (D,D), onde \((a_H, a_L)\) denota a ação de cada tipo.

2. **Melhor resposta de J2:** Para cada estratégia de J1, J2 calcula o payoff esperado (ponderado pelas crenças \(\Pr(H) = 0{,}5\)) e escolhe \(L\) ou \(R\).

3. **Consistência:** Verificar que cada tipo de J1 está jogando sua melhor resposta dada a ação de J2.

**Exemplo concreto** (usando os payoffs do Exercício Resolvido 9c.1): incumbente com tipo forte/fraca, entrante decide se entra.

Com \(\Pr(\theta_F) = 0{,}5\): \(E[\pi_E] = 0{,}5(-2) + 0{,}5(4) = 1 > 0\). A entrante entra. BNE: **(Entrar)**, com ambos os tipos da incumbente aceitando o resultado.

O ponto-chave é que J2 maximiza contra a **distribuição** sobre os tipos de J1, não contra um tipo específico. Isso é o que distingue jogos bayesianos de jogos com informação completa.


↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-1)

---

## ✏️ Exercício 9c.2 {#ex-9c-2}

**Solução.**

No leilão *all-pay*, ambos os licitantes pagam seus lances, mas apenas o maior lance ganha o objeto. Com \(v_i \sim U[0,1]\):

**BNE simétrico:** Cada licitante joga \(b(v) = v^2/2\).

*Derivação:* O licitante \(i\) com valor \(v\) maximiza:

\[
\max_b \; v \cdot \Pr(b > b(v_j)) - b = v \cdot \Pr(v_j < b^{-1}(b)) - b
\]

Se \(b(v) = \alpha v^2\), então \(b^{-1}(b) = \sqrt{b/\alpha}\) e \(\Pr(v_j < \sqrt{b/\alpha}) = \sqrt{b/\alpha}\).

CPO: \(v \cdot \frac{1}{2\sqrt{\alpha b}} - 1 = 0 \implies b = v^2/(4\alpha)\). Para consistência: \(\alpha v^2 = v^2/(4\alpha) \implies \alpha = 1/2\).

\[
\boxed{b(v) = v^2/2}
\]

**Receita esperada:** Cada licitante paga \(E[b(v_i)] = E[v^2/2] = 1/6\). Receita total (2 licitantes) = \(2 \times 1/6 = 1/3\).

**Comparação com primeiro preço:** No leilão de primeiro preço com \(N = 2\) e \(v \sim U[0,1]\): \(b(v) = v/2\), receita = \(E[\max(v_1/2, v_2/2)] = 1/3\).

As receitas são **idênticas** (1/3), confirmando o Teorema da Equivalência de Receita.

**Interpretação econômica:** O leilão *all-pay* modela competições onde todos os participantes incorrem em custos (lobbying, P&D, competições esportivas). A equivalência de receita implica que o "desperdício" total é o mesmo que em um leilão convencional — mas a distribuição dos custos é muito diferente (todos pagam, não apenas o vencedor).


↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-2)

---

## ✏️ Exercício 9c.3 {#ex-9c-3}

**Solução.**

Com \(V = 100\), \(s_i = V + \varepsilon_i\), \(\varepsilon_i \sim U[-20, 20]\), e 3 empresas lançando \(b_i = s_i\):

O vencedor é quem tem o maior sinal: \(s^{(1)} = \max(s_1, s_2, s_3)\).

**Maldição do vencedor:** Condicional a vencer, o vencedor é aquele cujo \(\varepsilon_i\) é o maior dos três. O valor esperado de \(\max(\varepsilon_1, \varepsilon_2, \varepsilon_3)\) com \(\varepsilon \sim U[-20, 20]\) é:

\[
E[\varepsilon^{(1)}] = 20 \times \frac{N - 1}{N + 1} = 20 \times \frac{2}{4} = 10
\]

(usando a fórmula para a \(k\)-ésima estatística de ordem de \(U[a,b]\): \(E[\varepsilon^{(k)}] = a + (b-a) \times k/(N+1)\).)

O sinal do vencedor é, em média, \(s^{(1)} = 100 + 10 = 110\). Se ele lançar \(b = s = 110\), seu lucro esperado é:

\[
E[\pi | \text{vencer}] = V - s^{(1)} = 100 - 110 = -10
\]

O vencedor paga, em média, **mais** do que o valor verdadeiro: lucro esperado **negativo**.

**Ajuste ótimo:** O licitante racional deve ajustar seu lance para baixo, descontando a maldição do vencedor:

\[
b(s_i) = E[V | s_i = \max] = s_i - E[\varepsilon^{(1)} | \varepsilon_i = \max]
\]

Com 3 licitantes e \(U[-20, 20]\), o ajuste é \(-10\): \(b(s_i) = s_i - 10\).

**Interpretação econômica:** A maldição do vencedor é particularmente relevante em leilões de concessões no Brasil (petróleo, espectro, rodovias). Empresas que não ajustam seus lances para a informação revelada pela vitória tendem a pagar preços excessivos. O pré-sal brasileiro, leiloado sob o regime de partilha, é projetado em parte para mitigar esse problema.

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-3)

---

## ✏️ Exercício 9c.4 {#ex-9c-4}

**Solução.**

**Dados do problema:**

- J1: tipo \(A\) (prob. 0,3) ou tipo \(B\) (prob. 0,7); ações \(\{X, Y\}\).
- J2: sem tipo privado; ações \(\{X, Y\}\).
- Payoffs (J1, J2):
  - Tipo A: (X,X) = (4,1); (X,Y) = (2,3); (Y,X) = (1,2); (Y,Y) = (3,0)
  - Tipo B: (X,X) = (1,1); (X,Y) = (3,2); (Y,X) = (2,3); (Y,Y) = (0,1)

**Passo 1 — Estratégias de J1 (contingentes ao tipo).**

Uma estratégia de J1 é um par \((a_A, a_B)\) indicando a ação de cada tipo. Há 4 estratégias puras: (X,X), (X,Y), (Y,X), (Y,Y).

**Passo 2 — Para cada estratégia de J1, calcule a melhor resposta de J2.**

J2 não observa o tipo de J1, portanto maximiza o payoff esperado usando as crenças \((0{,}3, 0{,}7)\).

- Se J1 joga **(X,X):** J2 recebe \(E[u_2 | L] = 0{,}3 \cdot 1 + 0{,}7 \cdot 1 = 1\) com X, e \(E[u_2 | R] = 0{,}3 \cdot 3 + 0{,}7 \cdot 2 = 2{,}3\) com Y. **BR de J2: Y.**
- Se J1 joga **(X,Y):** J2 recebe \(E[u_2 | X] = 0{,}3 \cdot 1 + 0{,}7 \cdot 3 = 2{,}4\) com X, e \(E[u_2 | Y] = 0{,}3 \cdot 3 + 0{,}7 \cdot 2 = 2{,}3\) com Y. **BR de J2: X.**
- Se J1 joga **(Y,X):** J2 recebe \(E[u_2 | X] = 0{,}3 \cdot 2 + 0{,}7 \cdot 1 = 1{,}3\) com X, e \(E[u_2 | Y] = 0{,}3 \cdot 0 + 0{,}7 \cdot 3 = 2{,}1\) com Y. **BR de J2: Y.**
- Se J1 joga **(Y,Y):** J2 recebe \(E[u_2 | X] = 0{,}3 \cdot 2 + 0{,}7 \cdot 1 = 1{,}3\) com X, e \(E[u_2 | Y] = 0{,}3 \cdot 0 + 0{,}7 \cdot 1 = 0{,}7\) com Y. **BR de J2: X.**

**Passo 3 — Verificar consistência: cada tipo de J1 deve jogar melhor resposta dada a ação de J2.**

Candidato **(X,X) com J2 jogando Y:**
- Tipo A com J2=Y: payoff de X é 2, de Y é 3. **Tipo A prefere Y — inconsistente.**

Candidato **(X,Y) com J2 jogando X:**
- Tipo A com J2=X: payoff de X é 4, de Y é 1. Tipo A prefere X. ✓
- Tipo B com J2=X: payoff de X é 1, de Y é 2. **Tipo B prefere Y — inconsistente.**

Candidato **(Y,X) com J2 jogando Y:**
- Tipo A com J2=Y: payoff de X é 2, de Y é 3. Tipo A prefere Y. ✓
- Tipo B com J2=Y: payoff de X é 3, de Y é 0. **Tipo B prefere X — inconsistente.**

Candidato **(Y,Y) com J2 jogando X:**
- Tipo A com J2=X: payoff de X é 4, de Y é 1. **Tipo A prefere X — inconsistente.**

**Resultado:** Nenhum dos quatro candidatos de BNE puro é consistente. O único BNE neste jogo envolve estratégias mistas.

**Lição:** Em jogos bayesianos, a ausência de BNE puro é comum quando os interesses dos tipos conflitam — nesse jogo, o tipo A prefere X quando J2 joga X (incentivo oposto ao tipo B). O BNE misto exigiria encontrar probabilidades que tornem J2 indiferente, o que está além do escopo deste exercício.

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-4)

---

## ✏️ Exercício 9c.5 {#ex-9c-5}

**Solução.**

**Dados:** \(v_1 = 80\), \(v_2 = 60\), leilão de segundo preço (Vickrey).

**(a) Estratégia fracamente dominante \(b_i = v_i\):**

Pelo argumento da demonstração do texto (reproduzido brevemente): para o Jogador 1 com \(v_1 = 80\):

- **Desvio para cima** \(b_1' > 80\): só muda o resultado quando \(b_2 \in (80, b_1')\). Nesse intervalo, J1 passa a ganhar e paga \(b_2 > 80 = v_1\) — lucro negativo. Prejudicial.
- **Desvio para baixo** \(b_1' < 80\): só muda o resultado quando \(b_2 \in (b_1', 80)\). J1 perde quando poderia ganhar com lucro positivo (\(v_1 - b_2 = 80 - b_2 > 0\)). Prejudicial.

O argumento é idêntico para J2 com \(v_2 = 60\). Portanto, \(b_i = v_i\) é fracamente dominante para ambos.

**(b) Vencedor e pagamento:**

Com \(b_1 = 80 > b_2 = 60\), o Jogador 1 ganha. O pagamento é o segundo maior lance:

\[
\text{Pagamento} = b_2 = 60
\]

**(c) Excedente do vencedor:**

\[
\pi_1 = v_1 - \text{Pagamento} = 80 - 60 = 20
\]

O Jogador 2 não paga nada e obtém excedente zero.

**(d) Com preço de reserva \(r = 70\):**

Para ganhar, o licitante deve lançar acima de \(\max(r, b_{-i})\). Com \(b_1 = v_1 = 80 > r = 70\) e \(b_2 = v_2 = 60 < r = 70\):

- J2 efetivamente é excluído do leilão (seu valor está abaixo do preço de reserva).
- J1 ganha, mas o preço mínimo passa a ser o preço de reserva: pagamento = \(\max(r, b_2) = \max(70, 60) = 70\).
- Excedente do vencedor: \(\pi_1 = 80 - 70 = 10\).

**Efeito do preço de reserva:** O vendedor aumenta sua receita de 60 para 70, mas correria risco de não vender se \(v_1 < r\). O preço de reserva ótimo de Myerson é positivo mesmo com valor de reserva zero para o vendedor — demonstração de que excluir licitantes pode aumentar a receita esperada.

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-5)

---

## ✏️ Exercício 9c.6 {#ex-9c-6}

**Solução.**

**Dados:** \(N = 4\) licitantes, \(v_i \sim U[0, 200]\).

**(a) Receita esperada no leilão de primeiro preço:**

BNE simétrico: \(b(v) = v \cdot (N-1)/N = v \cdot 3/4\).

O vencedor é quem tem o maior valor. A receita é o maior lance:

\[
E[R_{\text{1P}}] = E\left[\frac{3}{4} v^{(1)}\right] = \frac{3}{4} \cdot E[v^{(1)}]
\]

Com \(v \sim U[0, 200]\) e \(N = 4\), a esperança da maior estatística de ordem é:

\[
E[v^{(1)}] = 200 \cdot \frac{N}{N+1} = 200 \cdot \frac{4}{5} = 160
\]

Portanto:

\[
E[R_{\text{1P}}] = \frac{3}{4} \times 160 = 120
\]

Alternativamente, usando a fórmula direta: \(E[R] = \bar{v} \cdot (N-1)/(N+1) = 200 \cdot 3/5 = 120\).

**(b) Receita esperada no leilão de segundo preço:**

No leilão de segundo preço, a receita é o segundo maior valor (pois \(b_i = v_i\)):

\[
E[R_{\text{2P}}] = E[v^{(2)}]
\]

Com \(v \sim U[0, 200]\) e \(N = 4\), a esperança da segunda estatística de ordem é:

\[
E[v^{(2)}] = 200 \cdot \frac{N-1}{N+1} = 200 \cdot \frac{3}{5} = 120
\]

**(c) Verificação da equivalência:**

\[
E[R_{\text{1P}}] = E[R_{\text{2P}}] = 120 \quad \checkmark
\]

O Teorema da Equivalência de Receita é confirmado: ambos os formatos geram receita esperada de R$ 120.

**(d) Custo de participação de R$ 10:**

Se um licitante tem custo de participação \(c = 10\), ele participa apenas se o excedente esperado supera o custo. O excedente esperado de um licitante com valor \(v\) em leilão de segundo preço com \(N\) competidores é \(E[\pi(v)] = F(v)^{N-1}(v - E[v^{(1)} | v^{(1)} < v])\).

O licitante com valor muito baixo prefere não participar. Com \(c = 10\) e \(N = 4 \to 3\), a receita do leiloeiro cai para:

\[
E[R_{\text{3 licitantes}}] = 200 \cdot \frac{2}{4} = 100
\]

A redução de um participante diminui a receita em R$ 20. Isso ilustra por que leiloeiros frequentemente cobrem custos de participação — o benefício de ter mais licitantes supera o custo de subsidiá-los.

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-6)

---

## ✏️ Exercício 9c.7 {#ex-9c-7}

**Solução.**

**Dados:** ANP leiloa bloco de petróleo, \(V = 100\). Empresas *grandes* (\(c_G = 20\), prob. 0,5) e *pequenas* (\(c_P = 50\), prob. 0,5). Valor líquido: \(v_G = V - c_G = 80\) e \(v_P = V - c_P = 50\).

**(a) BNE no leilão de primeiro preço:**

Este é um leilão bayesiano com *dois tipos assimétricos* — não há BNE simétrico na forma \(b(v)\) geral. Porém, com dois tipos discretos, o BNE pode ser calculado diretamente.

Seja \(b_G\) o lance da empresa grande e \(b_P\) o lance da pequena.

**Empresa pequena:** Se lança \(b_P\), ganha se \(b_P > b_G\). Mas como \(v_P < v_G\), em equilíbrio a empresa grande lança mais alto. A empresa pequena ganha somente se a empresa grande não participa, ou se a pequena supera o lance da grande — o que só é racional se \(b_P > b_G\) e o lucro líquido \(v_P - b_P > 0\).

**Resultado do BNE assimétrico:**

Em equilíbrio, a empresa grande lança \(b_G > b_P\) para garantir a vitória. A melhor resposta da empresa pequena é \(b_P = v_P\) se lançar acima não for lucrativo:

\[
b_G = b_P + \varepsilon, \quad b_P < v_P = 50
\]

O BNE de equilíbrio de licitação em estratégias puras com dois tipos envolve a empresa grande lançando suficientemente mais que a pequena para garantir vitória. Em particular:

\[
b_G^* \in (b_P^*, v_G), \quad b_P^* = v_P = 50 \text{ (no caso limite)}
\]

Na prática, a empresa grande lança logo acima de 50 para vencer com lucro máximo: \(b_G^* \to 50^+\), obtendo quase todo o excedente \(v_G - b_G \approx 30\).

**(b) Formato que maximiza receita da ANP:**

O leilão ótimo de Myerson para tipos assimétricos recomenda:

1. **Preço de reserva:** Excluir empresas com valor líquido abaixo de um limiar \(\bar{v}\).
2. **Discriminação:** Tratar os tipos assimetricamente — exigir que a empresa grande lance mais alto (via "virtual valuation") para vencer.

A receita esperada do leilão ótimo supera a do leilão de primeiro preço simétrico porque explora a assimetria entre tipos.

**(c) Regime de partilha versus bônus de assinatura:**

No leilão de **bônus de assinatura**, as empresas oferecem um valor fixo. A maldição do vencedor e a incerteza sobre \(V\) fazem com que as empresas sombreiem seus lances.

No regime de **partilha de produção**, as empresas oferecem uma percentagem \(\alpha\) do excedente em óleo para a União. Esse formato tem uma propriedade importante: o risco de estimação errada de \(V\) é *compartilhado* entre empresa e União. Se o bloco se revelar menos produtivo, a empresa paga menos (proporcionalmente). Isso reduz o incentivo para sombrear lances e pode levar a lances mais agressivos.

**Comparação:** Partilha de produção é mais robusta à maldição do vencedor (menor seleção adversa), mas cria desincentivos à exploração eficiente (o risco compartilhado reduz o upside da empresa). O formato atual da ANP combina bônus fixo com partilha — um compromisso entre extração de receita e eficiência exploratória.

**(d) Comparação com o leilão ótimo de Myerson:**

O leilão da ANP difere do leilão ótimo em vários aspectos:

- **Critérios múltiplos** (bônus + programa exploratório + conteúdo local): o leilão ótimo maximiza uma única dimensão; múltiplos critérios complicam a análise de BNE.
- **Conteúdo local obrigatório**: distorce a alocação para favorecer fornecedores brasileiros — uma preocupação política que o leilão de Myerson (puramente de receita) não captura.
- **Assimetria de informação sobre reservas**: a ANP dispõe de dados sísmicos que empresas não têm igualmente — elemento do "linkage principle" de Milgrom-Weber.

**Conclusão:** O formato da ANP é um mecanismo de revelação direta parcial, com múltiplos objetivos (receita, desenvolvimento industrial, segurança energética), o que o afasta do leilão ótimo de receita puro. Essa é uma escolha consciente de política pública.

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-7)

---

## ✏️ Exercício 9c.8 {#ex-9c-8}

**Solução.**

**Dados:** \(N\) licitantes, \(v_i \sim^{i.i.d.} F\) com densidade \(f\) contínua, suporte \([0,1]\).

**(a) Condição de primeira ordem para o BNE simétrico do leilão de primeiro preço:**

Assuma um BNE simétrico crescente \(b(v)\). O licitante com valor \(v\) maximiza:

\[
\max_{b} \; (v - b) \cdot \Pr(\text{ganhar} | b) = (v - b) \cdot F\left(b^{-1}(b)\right)^{N-1}
\]

Seja \(G(b) = F(b^{-1}(b))^{N-1}\). Por simetria, se todos jogam \(b(\cdot)\), a probabilidade de ganhar com lance \(\beta\) é \(F(b^{-1}(\beta))^{N-1}\).

Substituindo \(\beta = b(v)\) e diferenciando com respeito a \(v\) (usando que no ótimo o licitante com valor \(v\) lança \(b(v)\)):

\[
\frac{d}{dv}\left[(v - b(v)) F(v)^{N-1}\right] = 0 \cdot (\ldots) + (v-b) \cdot (N-1)F(v)^{N-2}f(v) + F(v)^{N-1}(1 - b'(v)) = ?
\]

A CPO (aplicando o envelope theorem ao problema do licitante) resulta na EDO:

\[
b'(v) \cdot F(v)^{N-1} + b(v) \cdot (N-1)F(v)^{N-2}f(v) = v \cdot (N-1)F(v)^{N-2}f(v)
\]

Reescrevendo:

\[
\frac{d}{dv}\left[b(v) \cdot F(v)^{N-1}\right] = v \cdot (N-1)F(v)^{N-2}f(v) = \frac{d}{dv}\left[\int_0^v t(N-1)F(t)^{N-2}f(t)\,dt\right]
\]

**(b) Solução da EDO:**

Integrando com condição de fronteira \(b(0) = 0\):

\[
b(v) \cdot F(v)^{N-1} = \int_0^v t \cdot (N-1)F(t)^{N-2}f(t)\,dt
\]

Integrando por partes:

\[
b(v) = \frac{\int_0^v t \cdot (N-1)F(t)^{N-2}f(t)\,dt}{F(v)^{N-1}} = v - \frac{\int_0^v F(t)^{N-1}\,dt}{F(v)^{N-1}}
\]

O segundo termo é \(E[v^{(N-1)} | v^{(N-1)} \leq v]\) — a esperança da maior estatística de ordem entre os \(N-1\) outros licitantes, condicional a ser menor que \(v\). Assim:

\[
\boxed{b(v) = E\left[\max_{j \neq i} v_j \;\middle|\; \max_{j \neq i} v_j \leq v\right]}
\]

**Interpretação:** O licitante lança exatamente o que esperaria pagar no leilão de segundo preço — a esperança do segundo maior valor. Isso é a Equivalência de Receita em ação a nível individual.

**(c) Demonstração da equivalência via envelope theorem:**

Seja \(\Pi(v)\) o payoff esperado de equilíbrio de um licitante com valor \(v\) em qualquer mecanismo eficiente e individualmente racional. Pelo envelope theorem aplicado ao problema do licitante:

\[
\frac{d\Pi(v)}{dv} = F(v)^{N-1}
\]

pois a derivada do payoff maximizado com respeito ao tipo é igual à probabilidade de ganhar (derivada parcial do payoff em relação ao tipo, avaliada na ação ótima). Integrando:

\[
\Pi(v) = \Pi(0) + \int_0^v F(t)^{N-1}\,dt
\]

Com racionalidade individual: \(\Pi(0) = 0\). Portanto, o payoff esperado de *qualquer* mecanismo eficiente é determinado apenas por \(F\) — não depende das regras de pagamento. Pela condição de equilíbrio orçamentário (o que o licitante perde, o leiloeiro ganha):

\[
E[R] = E[v^{(1)}] - \sum_i E[\Pi(v_i)] = E[v^{(1)}] - N\int_0^1 \Pi(v) f(v)\,dv
\]

Esta expressão depende apenas de \(F\) e de \(N\), não do formato do leilão. \(\blacksquare\)

**(d) Hipóteses essenciais e contra-exemplos:**

| Hipótese | Papel | Contra-exemplo |
|----------|-------|----------------|
| **IPV** (valores privados independentes) | Garante que a estratégia ótima depende apenas do próprio valor | Leilão de petróleo (valor comum): lances dependem dos sinais dos outros; receita do 2º preço > 1º preço com valores afiliados (Milgrom-Weber, 1982) |
| **Simetria** | Garante que todos os licitantes usam a mesma função \(b(v)\) | Dois licitantes com distribuições distintas (\(F_1 \neq F_2\)): o leilão de 1º preço favorece o licitante "mais fraco" (que lança mais agressivamente), gerando receitas distintas |
| **Risco-neutralidade** | Garante que os licitantes maximizam valor esperado | Aversão ao risco: licitantes sombreiam *menos* no 1º preço (para reduzir o risco de perder), gerando mais receita do que o 2º preço |
| **Eficiência** (\(b\) crescente, ganha quem tem maior valor) | Permite o argumento de envelope | Leilão de 1º preço com preço de reserva: o objeto pode não ser vendido mesmo com compradores com valores positivos — ineficiência que aumenta a receita esperada |

↩ [Voltar ao enunciado](../cap09c/index.md#ex-9c-8)
