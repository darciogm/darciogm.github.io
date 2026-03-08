---
title: "Soluções — Capítulo 7"
---

# Soluções dos Exercícios — Capítulo 7

[← Voltar ao Capítulo 7](../cap07/index.md)

---

## Exercício 7.1 {#ex-7-1}

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

---

## Exercício 7.2 {#ex-7-2}

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

---

## Exercício 7.3 {#ex-7-3}

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

---

## Exercício 7.4 {#ex-7-4}

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

---

## Exercício 7.5 {#ex-7-5}

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
