---
title: "Soluções — Capítulo 7"
---

# Soluções dos Exercícios — Capítulo 7

[← Voltar ao Capítulo 7](../cap07/index.md)

---

## ✏️ Exercício 7.1 {#ex-7-1}

**Solução.**

**(a)** Utilidade esperada:

\[
E[u] = 0{,}5 \cdot \ln(15000) + 0{,}5 \cdot \ln(5000) = 0{,}5 \times 9{,}6158 + 0{,}5 \times 8{,}5172 = 9{,}0665
\]

**(b)** O equivalente de certeza é \(EC\) tal que \(u(EC) = E[u]\):

\[
\ln(EC) = 9{,}0665 \implies EC = e^{9{,}0665} \approx 8660{,}25
\]

**(c)** O prêmio de risco exato:

\[
PR = E[W] - EC = 10000 - 8660{,}25 = 1339{,}75
\]

*Aproximação de Arrow-Pratt:* \(PR \approx \frac{1}{2} A(W) \sigma^2\), onde:

- \(A(W) = -u''/u' = 1/W = 1/10000\)
- \(\sigma^2 = E[W^2] - (E[W])^2 = 0{,}5(15000^2 + 5000^2) - 10000^2 = 125 \times 10^6 - 100 \times 10^6 = 25 \times 10^6\)

\[
PR_{\text{AP}} \approx \frac{1}{2} \times \frac{1}{10000} \times 25 \times 10^6 = 1250
\]

A aproximação (1250) subestima o prêmio de risco exato (1340) porque a fórmula de Arrow-Pratt é uma aproximação de segunda ordem, válida para riscos "pequenos" relativamente à riqueza. Aqui o risco é grande (±50% da riqueza), logo a aproximação é menos precisa.

**Interpretação econômica:** O investidor com utilidade logarítmica exigiria R\$ 1.340 de compensação para aceitar esse risco. Equivalentemente, ele é indiferente entre ter R\$ 10.000 com o risco da loteria e ter R\$ 8.660 com certeza.


↩ [Voltar ao enunciado](../cap07/index.md#ex-7-1)

---

## ✏️ Exercício 7.2 {#ex-7-2}

**Solução.**

Com \(u(W) = -e^{-aW}\):

\[
u'(W) = ae^{-aW} > 0, \qquad u''(W) = -a^2 e^{-aW} < 0
\]

*Aversão absoluta ao risco:*

\[
A(W) = -\frac{u''(W)}{u'(W)} = -\frac{-a^2 e^{-aW}}{ae^{-aW}} = a
\]

\(A(W) = a\) é constante — independente de \(W\). Logo, a utilidade exponencial negativa exibe **CARA** (Constant Absolute Risk Aversion). \(\blacksquare\)

*Aversão relativa ao risco:*

\[
R(W) = W \cdot A(W) = aW
\]

\(R(W)\) é crescente na riqueza (IRRA — Increasing Relative Risk Aversion).

**Implicações econômicas:**

- *CARA:* O prêmio de risco em unidades monetárias não depende da riqueza. Um bilionário e um assalariado exigiriam o mesmo prêmio em reais para aceitar um risco de ±R\$ 1.000. Isso é empiricamente implausível para a maioria dos contextos.
- *IRRA:* A fração da riqueza investida no ativo arriscado diminui à medida que a riqueza cresce. O agente fica relativamente mais avesso ao risco conforme enriquece, o que também é discutível empiricamente.

Na prática, a CARA é usada por conveniência analítica (permite soluções explícitas com riscos gaussianos), não por realismo descritivo.


↩ [Voltar ao enunciado](../cap07/index.md#ex-7-2)

---

## ✏️ Exercício 7.3 {#ex-7-3}

**Solução.**

**(a)** Valor esperado:

\[
E[W] = 0{,}7 \times 200000 + 0{,}3 \times 50000 = 140000 + 15000 = 155000
\]

**(b)** Equivalente de certeza:

\[
E[u] = 0{,}7\sqrt{200000} + 0{,}3\sqrt{50000} = 0{,}7 \times 447{,}21 + 0{,}3 \times 223{,}61 = 313{,}05 + 67{,}08 = 380{,}13
\]

\[
EC = (380{,}13)^2 = 144499
\]

**(c)** Prêmio máximo pelo seguro de cobertura total:

\[
PR = E[W] - EC = 155000 - 144499 = 10501
\]

O agricultor pagaria até R\$ 10.501 pelo seguro.

**(d)** Se a seguradora cobra R\$ 60.000, o agricultor com seguro teria \(W_{\text{seg}} = 200000 - 60000 = 140000\) com certeza (na safra boa, paga o prêmio e não aciona; na seca, recebe R\$ 150.000 e paga R\$ 60.000 de prêmio, resultando em \(200000 - 60000 = 140000\) na boa e \(50000 + 150000 - 60000 = 140000\) na seca).

\(u(140000) = \sqrt{140000} = 374{,}17\)

Como \(374{,}17 < 380{,}13 = E[u]\), o agricultor **não** contrata: ficar sem seguro dá maior utilidade esperada. O prêmio cobrado (R\$ 60.000) excede enormemente o prêmio máximo aceitável (R\$ 10.501).

**Interpretação econômica:** Este exemplo ilustra por que seguros agrícolas no Brasil frequentemente requerem subsídios governamentais (como o Programa de Subvenção ao Prêmio do Seguro Rural — PSR). As seguradoras cobram prêmios que incluem custos administrativos, seleção adversa e risco moral, elevando o preço acima do que muitos produtores estão dispostos a pagar.


↩ [Voltar ao enunciado](../cap07/index.md#ex-7-3)

---

## ✏️ Exercício 7.4 {#ex-7-4}

**Solução.**

**(a)** O agente escolhe consumo contingente \((c_1, c_2)\) para maximizar:

\[
\max_{c_1, c_2} \; 0{,}6 \ln(c_1) + 0{,}4 \ln(c_2) \quad \text{s.a.} \quad 0{,}6 c_1 + 0{,}4 c_2 = 100
\]

**(b)** CPOs (condição de tangência):

\[
\frac{0{,}6/c_1}{0{,}4/c_2} = \frac{\psi_1}{\psi_2} = \frac{0{,}6}{0{,}4} \implies \frac{c_2}{c_1} = 1
\]

Logo \(c_1^* = c_2^*\). Da restrição: \(0{,}6 c + 0{,}4 c = c = 100\).

\[
\boxed{c_1^* = c_2^* = 100}
\]

**(c)** O agente consome **exatamente o mesmo** em ambos os estados. Isso é seguro pleno: o risco é completamente eliminado. Esse resultado ocorre porque os preços dos ativos contingentes são "atuarialmente justos" — os preços \(\psi_i\) são iguais às probabilidades \(\pi_i\). Quando os preços de Arrow-Debreu são justos, um agente avesso ao risco equaliza o consumo entre estados, alcançando suavização perfeita.

**Interpretação econômica:** Em mercados completos com preços justos, agentes avessos ao risco se protegem completamente. A existência de mercados de seguros e derivativos permite essa suavização na prática — embora custos de transação, informação assimétrica e mercados incompletos limitem a suavização real.


↩ [Voltar ao enunciado](../cap07/index.md#ex-7-4)

---

## ✏️ Exercício 7.5 {#ex-7-5}

**Solução.**

**(a)** Com \(W = 10000\):

*Agente A* (\(u_A = \ln W\)):

\[
A_A(W) = 1/W = 1/10000 = 0{,}0001, \qquad R_A(W) = 1
\]

*Agente B* (\(u_B = -e^{-0{,}001W}\)):

\[
A_B(W) = a = 0{,}001, \qquad R_B(W) = 0{,}001 \times 10000 = 10
\]

B é significativamente mais avesso ao risco que A em ambas as medidas.

**(b)** Aproximação de Arrow-Pratt: \(PR \approx \frac{1}{2} A(W) \sigma^2\), com \(\sigma^2 = 1000^2 = 10^6\):

\[
PR_A \approx \frac{1}{2} \times 0{,}0001 \times 10^6 = 50
\]

\[
PR_B \approx \frac{1}{2} \times 0{,}001 \times 10^6 = 500
\]

B exigiria R\$ 500 de compensação, 10 vezes mais que A (R\$ 50).

**(c)** Com \(W = 50000\):

*Agente A:* \(A_A = 1/50000 = 0{,}00002\). \(PR_A \approx \frac{1}{2} \times 0{,}00002 \times 10^6 = 10\).

O prêmio de A caiu de R\$ 50 para R\$ 10 — ele exibe **DARA** (Decreasing Absolute Risk Aversion). Com mais riqueza, a aversão absoluta diminui: o mesmo risco em valor absoluto (±R\$ 1.000) representa uma fração menor da riqueza.

*Agente B:* \(A_B = 0{,}001\) (constante). \(PR_B \approx 500\).

O prêmio de B permanece R\$ 500 — ele exibe **CARA**. A riqueza não afeta sua aversão absoluta, o que é pouco realista: um bilionário com CARA se preocuparia tanto com R\$ 1.000 quanto alguém com R\$ 10.000.

**Interpretação econômica:** A evidência empírica favorece DARA: indivíduos mais ricos aceitam mais risco absoluto. A utilidade logarítmica (agente A) captura essa propriedade e é frequentemente usada como especificação padrão em modelos de finanças e macroeconomia. A CARA (agente B) é usada quando a tratabilidade analítica é prioritária.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-5)

---

## ✏️ Exercício 7.6 {#ex-7-6}

**Solução.**

**Dados:** \(u(W) = \sqrt{W}\), \(W_0 = 100\), loteria: \(+60\) com \(p = 0{,}5\) e \(-60\) com \(p = 0{,}5\).

**Riquezas possíveis:**

- Estado favorável: \(W_1 = 100 + 60 = 160\), com probabilidade \(0{,}5\)
- Estado desfavorável: \(W_2 = 100 - 60 = 40\), com probabilidade \(0{,}5\)

**Valor esperado da riqueza:**

\[
E[W] = 0{,}5 \times 160 + 0{,}5 \times 40 = 80 + 20 = 100
\]

**(a) Utilidade esperada:**

\[
E[u] = 0{,}5 \cdot \sqrt{160} + 0{,}5 \cdot \sqrt{40} = 0{,}5 \times 12{,}649 + 0{,}5 \times 6{,}325 = 6{,}325 + 3{,}162 = 9{,}487
\]

**(b) Utilidade do valor esperado:**

\[
u(E[W]) = u(100) = \sqrt{100} = 10
\]

**(c) Classificação da atitude frente ao risco:**

Como \(E[u] = 9{,}487 < 10 = u(E[W])\), temos:

\[
u(E[W]) > E[u(W)]
\]

Pela desigualdade de Jensen, isso ocorre quando \(u\) é estritamente **côncava**. De fato, \(u(W) = W^{1/2}\) tem segunda derivada \(u''(W) = -\frac{1}{4}W^{-3/2} < 0\), confirmando concavidade. Portanto, o agente é **avesso ao risco**.

O equivalente de certeza é \(EC = (9{,}487)^2 \approx 90\), e o prêmio de risco é \(\pi = E[W] - EC = 100 - 90 = 10\). O agente abriria mão de R\$ 10 de riqueza esperada para eliminar a incerteza desta loteria.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-6)

---

## ✏️ Exercício 7.7 {#ex-7-7}

**Solução.**

**(a) Um agente neutro ao risco possui função de utilidade linear. — VERDADEIRO.**

Por definição, um agente neutro ao risco satisfaz \(u(E[L]) = E[u(L)]\) para toda loteria \(L\). Pela teoria das funções convexas/côncavas, isso ocorre se e somente se a função de utilidade é **linear** (afim): \(u(W) = aW + b\), com \(a > 0\). Qualquer curvatura — côncava (\(u'' < 0\)) ou convexa (\(u'' > 0\)) — geraria aversão ou propensão ao risco, respectivamente.

**(b) A utilidade CARA implica que o prêmio de risco é independente da riqueza. — VERDADEIRO.**

Para \(u(W) = -e^{-aW}\), a aversão absoluta ao risco é \(A(W) = a\), constante em \(W\). Pela aproximação de Arrow-Pratt, \(\pi \approx \frac{1}{2} A(W) \sigma^2 = \frac{1}{2} a \sigma^2\), que não depende de \(W\). Isso implica que, para uma mesma loteria (mesma \(\sigma^2\)), o prêmio de risco é o mesmo independentemente de o agente ser rico ou pobre — propriedade empiricamente implausível, pois sugere que um milionário se preocuparia tanto com uma aposta de R\$ 1.000 quanto um assalariado.

**(c) Se \(u''(W) < 0\), o agente sempre rejeita qualquer loteria justa. — VERDADEIRO (com ressalva).**

Uma loteria justa tem \(E[\tilde{\varepsilon}] = 0\), de modo que a riqueza esperada é \(E[W] = W_0\). Com \(u'' < 0\) (concavidade estrita), a desigualdade de Jensen implica:

\[
u(E[W_0 + \tilde{\varepsilon}]) = u(W_0) > E[u(W_0 + \tilde{\varepsilon})]
\]

Logo, o agente prefere estritamente \(W_0\) com certeza à loteria justa. Ele a rejeita. A ressalva é de ordem: "rejeita" significa não aceitar participar da loteria por nada; se ele *já está* na loteria, a questão seria diferente. Mas como enunciado de escolha, a afirmativa é correta.

**(d) A diversificação elimina todo o risco de uma carteira de ativos. — FALSO.**

A diversificação elimina apenas o **risco idiossincrático** (ou não sistemático) — o risco específico de cada ativo, que se cancela quando muitos ativos são combinados. O **risco sistemático** (de mercado), que afeta todos os ativos simultaneamente (por exemplo, flutuações do PIB, variações da taxa Selic, crises financeiras globais), não é reduzido pela diversificação. No modelo CAPM, apenas o risco sistemático é remunerado, pois o risco idiossincrático pode ser eliminado sem custo pela diversificação. Portanto, a afirmativa é falsa: diversificação reduz mas não elimina todo o risco.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-7)

---

## ✏️ Exercício 7.8 {#ex-7-8}

**Solução.**

**Dados:** \(u(W) = \ln(W)\), \(W_0 = 10.000\). Risco: perda de R\$ 5.000 com \(p = 0{,}1\); sem perda com \(p = 0{,}9\).

**Estados possíveis:**
- Estado ruim: \(W_1 = 10.000 - 5.000 = 5.000\), com \(p_1 = 0{,}1\)
- Estado bom: \(W_2 = 10.000\), com \(p_2 = 0{,}9\)

**Valor esperado da riqueza:**

\[
E[W] = 0{,}1 \times 5.000 + 0{,}9 \times 10.000 = 500 + 9.000 = 9.500
\]

**(a) Equivalente de certeza e prêmio de risco exato:**

Utilidade esperada:

\[
E[u] = 0{,}1 \times \ln(5.000) + 0{,}9 \times \ln(10.000)
\]

\[
= 0{,}1 \times 8{,}5172 + 0{,}9 \times 9{,}2103 = 0{,}8517 + 8{,}2893 = 9{,}1410
\]

Equivalente de certeza:

\[
\ln(EC) = 9{,}1410 \implies EC = e^{9{,}1410} \approx 9.367
\]

Prêmio de risco exato:

\[
\pi = E[W] - EC = 9.500 - 9.367 = \text{R\$ } 133
\]

**(b) Prêmio máximo que o agente pagaria por cobertura total:**

Com seguro de cobertura total a prêmio \(P\), o agente tem \(W_0 - P = 10.000 - P\) com certeza. Ele aceita pagar até \(P_{max}\) tal que:

\[
u(10.000 - P_{max}) = E[u] \implies \ln(10.000 - P_{max}) = 9{,}1410
\]

\[
10.000 - P_{max} = e^{9{,}1410} \approx 9.367 \implies P_{max} = 10.000 - 9.367 = \text{R\$ } 633
\]

Alternativamente: \(P_{max} = E[W] - EC + (W_0 - E[W]) = EC_{riqueza\ com\ risco}$. Na verdade, \(P_{max} = W_0 - EC = 10.000 - 9.367 = \text{R\$ } 633\).

Note que o prêmio atuarialmente justo é \(P_{justo} = 0{,}1 \times 5.000 = \text{R\$ } 500\). O agente pagaria até R\$ 633, ou seja, até R\$ 133 acima do prêmio justo — e esse R\$ 133 é exatamente o prêmio de risco calculado no item (a).

**(c) Decisão com prêmio de R\$ 600:**

Como \(P = 600 < P_{max} = 633\), o agente **contrata** o seguro.

Verificação:

- Sem seguro: \(E[u] = 9{,}1410\)
- Com seguro a R\$ 600: \(u(10.000 - 600) = \ln(9.400) = 9{,}1483\)

Como \(9{,}1483 > 9{,}1410\), confirma-se que o agente prefere contratar o seguro a R\$ 600.

**Interpretação econômica:** O agente pagaria até R\$ 133 acima do prêmio justo para eliminar o risco. Um prêmio de R\$ 600 = R\$ 500 (justo) + R\$ 100 (carregamento) ainda é aceitável, pois R\$ 100 < R\$ 133. Se a seguradora cobrasse R\$ 650, o agente recusaria.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-8)

---

## ✏️ Exercício 7.9 {#ex-7-9}

**Solução.**

**Dados:** \(u(W) = -W^{-1}\) (CRRA com \(\gamma = 2\)), \(W_0 = 200.000\). Estados:
- Seca: \(W_1 = 120.000\) com \(p_1 = 0{,}3\)
- Sem seca: \(W_2 = 200.000\) com \(p_2 = 0{,}7\)

Prêmio do Proagro: R\$ 30.000 (cobre integralmente a perda de R\$ 80.000).

**(a) Prêmio de risco exato:**

**Valor esperado da riqueza:**

\[
E[W] = 0{,}3 \times 120.000 + 0{,}7 \times 200.000 = 36.000 + 140.000 = 176.000
\]

**Utilidade esperada sem seguro:**

\[
E[u] = 0{,}3 \times (-120.000^{-1}) + 0{,}7 \times (-200.000^{-1})
\]

\[
= 0{,}3 \times (-8{,}333 \times 10^{-6}) + 0{,}7 \times (-5{,}000 \times 10^{-6})
\]

\[
= -2{,}500 \times 10^{-6} - 3{,}500 \times 10^{-6} = -6{,}000 \times 10^{-6}
\]

**Equivalente de certeza:**

\[
u(EC) = E[u] \implies -EC^{-1} = -6{,}000 \times 10^{-6} \implies EC = \frac{1}{6{,}000 \times 10^{-6}} \approx 166.667
\]

**Prêmio de risco exato:**

\[
\pi = E[W] - EC = 176.000 - 166.667 = \text{R\$ } 9.333
\]

Este é o máximo que o agricultor pagaria pelo seguro.

**(b) Decisão com o Proagro (prêmio de R\$ 30.000):**

**Utilidade sem seguro:** \(E[u] = -6{,}000 \times 10^{-6}\) (calculada acima).

**Utilidade com seguro (prêmio R\$ 30.000, cobertura total):**

Com seguro, a riqueza do agricultor em qualquer estado é \(W_0 - P = 200.000 - 30.000 = 170.000\) (em caso de seca, recebe indenização de R\$ 80.000, mas paga prêmio de R\$ 30.000: riqueza líquida = \(120.000 + 80.000 - 30.000 = 170.000\); sem seca, riqueza = \(200.000 - 30.000 = 170.000\)).

\[
u(170.000) = -(170.000)^{-1} = -5{,}882 \times 10^{-6}
\]

Como \(-5{,}882 \times 10^{-6} > -6{,}000 \times 10^{-6}\) (menos negativo = maior utilidade), o agricultor **contrata** o seguro.

**Verificação via prêmio máximo:** \(P_{max} = W_0 - EC = 200.000 - 166.667 = \text{R\$ } 33.333\). Como \(P_{Proagro} = 30.000 < 33.333 = P_{max}\), confirma-se que o agricultor contrata.

**(c) Carregamento máximo \(\lambda^*\):**

O agricultor é indiferente quando \(P = P_{max} = \text{R\$ }33.333\).

O prêmio atuarialmente justo é \(P_{justo} = 0{,}3 \times 80.000 = \text{R\$ }24.000\).

O carregamento máximo é:

\[
\lambda^* = \frac{P_{max} - P_{justo}}{P_{justo}} = \frac{33.333 - 24.000}{24.000} = \frac{9.333}{24.000} \approx 38{,}9\%
\]

Com o carregamento atual de 25% (\(30.000/24.000 - 1\)), o agricultor ainda contrata. Somente se o carregamento superasse 38,9% ele deixaria de contratar.

**Interpretação econômica:** O agricultor com CRRA \(\gamma = 2\) está disposto a pagar quase 39% acima do prêmio justo para eliminar o risco de seca. Isso reflete sua aversão ao risco relativa: uma queda de 40% na riqueza (de R\$ 200.000 para R\$ 120.000) é muito custosa para uma utilidade com curvatura constante \(\gamma = 2\). O subsídio implícito do Proagro (que reduz o carregamento percebido pelo produtor) é, portanto, compatível com a teoria: ele viabiliza o seguro para produtores cuja disposição a pagar é positiva mas inferior ao custo de mercado não subsidiado.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-9)

---

## ✏️ Exercício 7.10 {#ex-7-10}

**Solução.**

**Objetivo:** Demonstrar que \(\pi \approx \frac{1}{2}\sigma^2 \cdot A(W_0)\), onde \(A(W_0) = -u''(W_0)/u'(W_0)\).

**Configuração:** Seja \(\tilde{W} = W_0 + \tilde{\varepsilon}\), onde \(\tilde{\varepsilon}\) é um risco justo: \(E[\tilde{\varepsilon}] = 0\) e \(\text{Var}(\tilde{\varepsilon}) = E[\tilde{\varepsilon}^2] = \sigma^2\).

Por definição, o prêmio de risco \(\pi\) satisfaz:

\[
u(W_0 - \pi) = E[u(W_0 + \tilde{\varepsilon})]
\tag{*}
\]

**Passo 1 — Expansão do lado direito:**

Expanda \(u(W_0 + \tilde{\varepsilon})\) em série de Taylor de segunda ordem em torno de \(W_0\):

\[
u(W_0 + \tilde{\varepsilon}) \approx u(W_0) + u'(W_0)\tilde{\varepsilon} + \frac{1}{2}u''(W_0)\tilde{\varepsilon}^2
\]

Tomando o valor esperado de ambos os lados e usando \(E[\tilde{\varepsilon}] = 0\) e \(E[\tilde{\varepsilon}^2] = \sigma^2\):

\[
E[u(W_0 + \tilde{\varepsilon})] \approx u(W_0) + u'(W_0) \cdot 0 + \frac{1}{2}u''(W_0) \cdot \sigma^2
\]

\[
E[u(\tilde{W})] \approx u(W_0) + \frac{1}{2}u''(W_0)\sigma^2
\tag{I}
\]

**Passo 2 — Expansão do lado esquerdo:**

Expanda \(u(W_0 - \pi)\) em série de Taylor de primeira ordem em torno de \(W_0\), tratando \(\pi\) como pequeno:

\[
u(W_0 - \pi) \approx u(W_0) - u'(W_0)\pi
\tag{II}
\]

**Passo 3 — Igualação:**

Igualando (I) e (II) via a condição (*):

\[
u(W_0) - u'(W_0)\pi \approx u(W_0) + \frac{1}{2}u''(W_0)\sigma^2
\]

Cancelando \(u(W_0)\) de ambos os lados:

\[
-u'(W_0)\pi \approx \frac{1}{2}u''(W_0)\sigma^2
\]

Como \(u'(W_0) > 0\) (utilidade crescente), dividindo ambos os lados por \(-u'(W_0)\):

\[
\pi \approx -\frac{u''(W_0)}{2u'(W_0)}\sigma^2 = \frac{1}{2}\left(-\frac{u''(W_0)}{u'(W_0)}\right)\sigma^2 = \frac{1}{2}A(W_0)\sigma^2 \qquad \blacksquare
\]

**Interpretação dos termos:**

- \(\frac{1}{2}\sigma^2\): representa a "quantidade" de risco — metade da variância da loteria.
- \(A(W_0) = -u''(W_0)/u'(W_0)\): representa o "preço" do risco — a intensidade da aversão ao risco no ponto \(W_0\), medida pela razão entre a curvatura (\(u''\)) e a inclinação (\(u'\)) da função de utilidade.
- O produto \(\frac{1}{2}A(W_0)\sigma^2\) combina preferências (subjetivo) e risco (objetivo) numa fórmula que determina quanto o agente pagaria para eliminar a incerteza.

**Validade da aproximação:** A expansão de Taylor de segunda ordem é válida quando \(\sigma\) é pequeno em relação a \(W_0\) (risco "pequeno"). Para riscos grandes, os termos de ordem superior importam e a aproximação subestima ou superestima o prêmio exato dependendo do sinal da terceira derivada de \(u\). Para \(u = \ln W\), onde \(u''' > 0\), a aproximação subestima o prêmio exato — como observamos no Exercício 7.1.

↩ [Voltar ao enunciado](../cap07/index.md#ex-7-10)
