# 18.8–18.9 Demanda e Juros Compostos

## 18.8 Mais Um Caminhão ou Deixa no Banco: Demanda por Capital {#188}

O VPL e a TIR avaliam projetos de investimento a partir dos fluxos de caixa. Mas qual a regra que a firma segue para decidir quanto capital empregar? A resposta conecta a teoria da produção — já estudada nos Capítulos 9–12 — à teoria dos juros: a firma investe em capital até que o retorno marginal do investimento iguale seu custo de oportunidade, determinado pela taxa de juros e pela depreciação.

A firma demanda capital até que o **valor do produto marginal do capital** iguale o **custo de uso do capital**:

\[
p \cdot PMg_K = c_K
\label{eq:18.10} \tag{18.10} \]

O **custo de uso do capital** (user cost of capital, ou custo de Jorgenson) é:

\[
c_K = p_K(r + \delta)
\label{eq:18.11} \tag{18.11} \]

onde \(p_K\) é o preço do bem de capital, \(r\) é a taxa de juros real e \(\delta\) é a taxa de depreciação.

!!! definition "Custo de uso do capital"
    O custo de uso do capital \(c_K = p_K(r + \delta)\) representa o custo por período de utilizar uma unidade de capital. Ele inclui dois componentes: o **custo de oportunidade** do capital (\(p_K \cdot r\), o retorno que se obteria aplicando o valor do capital no mercado financeiro) e o **custo de depreciação** (\(p_K \cdot \delta\), a perda de valor do capital por desgaste ou obsolescência).

As equações $\eqref{eq:18.10}$ e $\eqref{eq:18.11}$ mostram que a demanda por capital é decrescente na taxa de juros: quando \(r\) sobe, \(c_K\) aumenta e a firma reduz seu estoque de capital desejado. A elasticidade da demanda por capital em relação à taxa de juros depende da curvatura da função de produção — com rendimentos rapidamente decrescentes do capital (função muito côncava), a resposta é pequena; com rendimentos lentamente decrescentes, a resposta é grande.

No caso Cobb-Douglas \(Y = A K^\alpha L^{1-\alpha}\), o produto marginal do capital é \(PMg_K = \alpha A K^{\alpha-1} L^{1-\alpha}\), e a condição $\eqref{eq:18.10}$ implica:

\[
K^* = \left(\frac{p \cdot \alpha A}{c_K}\right)^{\frac{1}{1-\alpha}} L \label{eq:18.11b} \tag{18.11b}
\]

A demanda por capital é decrescente no custo de uso \(c_K\) (e, portanto, na taxa de juros \(r\)) e crescente na produtividade total dos fatores \(A\), no preço do produto \(p\) e na quantidade de trabalho \(L\).

!!! idea "Intuição Econômica"
    **Em uma frase:** A firma compra capital até que o último real investido em máquinas renda exatamente o que renderia se aplicado no mercado financeiro.

    **Pense assim:** Um transportador autônomo em Goiás avalia comprar um caminhão novo por R$ 400 mil. O caminhão gera frete de R$ 10 mil por mês, mas deprecia 15% ao ano e o financiamento cobra 12% de juros. O custo de uso mensal é \(c_K = 400.000 \times (0{,}12 + 0{,}15)/12 = R\$ 9.000\). Como o frete (R$ 10.000) supera o custo de uso (R$ 9.000), vale a pena. Mas se os juros subirem para 18%, o custo de uso pula para R$ 11.000, e o caminhão passa a dar prejuízo econômico.

    **Por que isso importa:** No Brasil, a combinação de juros reais altos e depreciação acelerada (especialmente para equipamentos importados sujeitos a variação cambial) eleva substancialmente o custo de uso do capital, desincentivando a formação de capital fixo.

<iframe src="../graficos/cap18/webr-custo-capital.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 18.1 — Custo de uso do capital e demanda por K.** Altere a taxa de juros e a depreciação para ver como o custo de uso do capital afeta a demanda por investimento. Compare cenários Brasil vs. EUA.

</div>

---

## 18.9 A Oitava Maravilha do Mundo: Juros Compostos e Tempo Contínuo {#189}

Albert Einstein provavelmente nunca disse que os juros compostos são "a oitava maravilha do mundo" — mas quem inventou a citação tinha razão. A mágica de juros sobre juros transforma centavos em fortunas (dado tempo suficiente) e dívidas pequenas em bolas de neve (dado descuido suficiente). Nesta seção, apresentamos as ferramentas matemáticas de capitalização e desconto que fundamentam todos os cálculos de valor presente e futuro do capítulo. Embora frequentemente abordados em cursos de matemática financeira, esses conceitos são indispensáveis para a análise econômica intertemporal — desde a avaliação de projetos de investimento até a modelagem de crescimento econômico.

### Juros compostos discretos

Com capitalização \(m\) vezes ao ano, um capital \(K_0\) investido à taxa nominal anual \(i\) rende, após \(n\) anos:

\[
K_n = K_0 \left(1 + \frac{i}{m}\right)^{mn}
\]

A frequência de capitalização importa: a mesma taxa nominal de 12% ao ano rende mais se capitalizada mensalmente (\(m = 12\)) do que anualmente (\(m = 1\)), porque os juros dos primeiros meses geram juros nos meses seguintes — juros sobre juros, a essência da capitalização composta.

### Capitalização contínua

Quando \(m \to \infty\), obtemos a capitalização contínua:

\[
K(t) = K_0 \cdot e^{it}
\]

onde \(e \approx 2{,}71828\) é a base do logaritmo natural. A taxa instantânea de crescimento é \(i\). A capitalização contínua é uma idealização matemática conveniente que simplifica consideravelmente as fórmulas de otimização e crescimento econômico.

### Valor presente em tempo contínuo

O valor presente de um fluxo \(F(t)\) recebido no instante \(t\), descontado à taxa contínua \(r\), é:

\[
VP = F(t) \cdot e^{-rt}
\]

Para um fluxo contínuo \(f(t)\) ao longo do tempo:

\[
VP = \int_0^T f(t) \cdot e^{-rt} \, dt
\]

### Relação entre taxas discreta e contínua

Se a taxa discreta (anual) é \(r_d\) e a taxa contínua é \(r_c\), então:

\[
1 + r_d = e^{r_c} \quad \Leftrightarrow \quad r_c = \ln(1 + r_d)
\]

Para valores pequenos de \(r_d\), a aproximação \(r_c \approx r_d\) é razoável (por exemplo, para \(r_d = 5\%\), \(r_c = \ln(1{,}05) = 4{,}88\%\)). A diferença cresce para taxas altas — mais um motivo pelo qual a distinção é relevante no contexto brasileiro.

!!! note "Perpetuidades e anuidades"
    - **Perpetuidade** (fluxo constante \(F\) para sempre): \(VP = F/r\)
    - **Anuidade** (fluxo constante \(F\) por \(n\) períodos): \(VP = F \cdot \frac{1 - (1+r)^{-n}}{r}\)
    - **Perpetuidade crescente** (fluxo crescendo a taxa \(g < r\)): \(VP = F/(r - g)\)

    A fórmula da perpetuidade é surpreendentemente útil em finanças. Ela implica que, se a taxa de juros é 5%, um ativo que paga R$ 100 por ano para sempre vale R$ 2.000 hoje. Se a taxa cai para 2%, o mesmo ativo vale R$ 5.000 — um aumento de 150% no valor do ativo. Essa sensibilidade explica por que quedas na taxa de juros provocam altas expressivas nos preços dos ativos financeiros e imobiliários.

<iframe src="../graficos/cap18/webr-juros-compostos.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 18.2 — Juros compostos, perpetuidades e anuidades.** Explore o efeito da frequência de capitalização, compare juros simples vs. compostos vs. contínuos, e veja como a taxa de juros afeta o valor presente de perpetuidades.

</div>
