# 4.4–4.5 Utilidade Indireta e Princípio Lump Sum

## 4.4 A Felicidade Que o Dinheiro Compra: Utilidade Indireta

Agora sabemos *o que* o consumidor compra. A próxima pergunta: *quão feliz* ele fica? E — mais importante — como essa felicidade muda quando o mundo muda? Se a gasolina sobe 20%, quanto cai o bem-estar máximo do consumidor? A **função de utilidade indireta** responde: ela é o "termômetro de felicidade" que traduz preços e renda em satisfação máxima alcançável. O nome "indireta" é preciso: a utilidade não vem diretamente das quantidades, mas indiretamente, via os preços e a renda que *determinam* as quantidades ótimas. Mude os preços, muda a cesta ótima, muda a felicidade.

!!! definition "Função de utilidade indireta"
    A **função de utilidade indireta** é o valor ótimo da utilidade como função dos preços e da renda:

    \[
    V(p_1, p_2, I) = u\big(x_1^*(p_1, p_2, I), \; x_2^*(p_1, p_2, I)\big) = \max_{\mathbf{x} \in B(\mathbf{p}, I)} u(\mathbf{x}). \label{eq:4.4.10} \tag{4.4.10}
    \]

**Propriedades de \(V(\mathbf{p}, I)\)**:

1. **Homogênea de grau zero** em \((\mathbf{p}, I)\): duplicar preços e renda não altera a utilidade máxima alcançável.
2. **Não crescente em \(p_i\)**: um aumento no preço de qualquer bem reduz (ou mantém) o nível máximo de utilidade.
3. **Não decrescente em \(I\)**: mais renda expande o conjunto orçamentário e permite alcançar (ao menos) o mesmo nível de utilidade.
4. **Quase-convexa em \(\mathbf{p}\)**: o conjunto \(\{\mathbf{p} : V(\mathbf{p}, I) \leq \bar{v}\}\) é convexo.
5. **Contínua** em \((\mathbf{p}, I)\) para \(\mathbf{p} \gg 0\) e \(I > 0\).

A propriedade de quase-convexidade merece atenção especial, pois frequentemente gera confusão.

!!! warning "⚠️ Erro Comum"
    **Confundir quase-convexidade com convexidade da função utilidade indireta.**

    A **quase-convexidade** de \(V\) em \(\mathbf{p}\) **não** significa que \(V\) seja convexa em preços.

    Quase-convexidade em \(\mathbf{p}\) significa que o conjunto de preços que geram utilidade **baixa** — \(\{\mathbf{p} : V(\mathbf{p}, I) \leq \bar{v}\}\) — é convexo. Em outras palavras, preços "ruins" formam conjuntos convexos. Isso é bem diferente de dizer que \(V\) é convexa, o que exigiria que uma média ponderada de preços gerasse utilidade maior ou igual à média ponderada das utilidades — afirmação que não é verdadeira em geral.

    Em contraste, a função **dispêndio** \(E(\mathbf{p}, \bar{u})\) é **côncava** em preços — essa sim é uma propriedade de concavidade, não apenas quase-concavidade, e reflete o fato de que o consumidor pode se proteger contra aumentos de preços realocando consumo.

!!! tip "Exemplo: Cobb-Douglas"
    Para \(u(x_1, x_2) = x_1^a x_2^b\) com \(a + b = 1\), as demandas marshallianas são \(x_1^* = aI/p_1\) e \(x_2^* = bI/p_2\). A função de utilidade indireta é:

    \[
    V(p_1, p_2, I) = \left(\frac{a}{p_1}\right)^a \left(\frac{b}{p_2}\right)^b \cdot I.
    \]

    Note que \(V\) é linear em \(I\) e decrescente em cada preço.

A seguir, no Exercício Resolvido 4.1, aplicamos esses conceitos ao caso Cobb-Douglas com parâmetros específicos — e verificamos que a fórmula geral para a cesta ótima é de fato consistente com a solução pelo Lagrangeano passo a passo.

??? exercicio-resolvido "Exercício Resolvido 4.1"
    **Enunciado:** Um consumidor tem função de utilidade \(u(x_1, x_2) = x_1^{1/3} x_2^{2/3}\), preços \(p_1 = 6\), \(p_2 = 3\) e renda \(I = 180\). Encontre a cesta ótima e a utilidade máxima.

    **Dados:** \(a = 1/3\), \(b = 2/3\), \(p_1 = 6\), \(p_2 = 3\), \(I = 180\).

    **Resolução:**

    **Passo 1 — Montar o lagrangeano e obter as CPOs**

    \(\mathcal{L} = x_1^{1/3} x_2^{2/3} + \lambda(180 - 6x_1 - 3x_2)\)

    CPOs: \(\frac{1}{3} x_1^{-2/3} x_2^{2/3} = 6\lambda\) e \(\frac{2}{3} x_1^{1/3} x_2^{-1/3} = 3\lambda\).

    **Passo 2 — Dividir as CPOs e resolver**

    Dividindo a primeira pela segunda: \(\frac{x_2}{2x_1} = \frac{6}{3} = 2\), logo \(x_2 = 4x_1\).

    Substituindo na restrição: \(6x_1 + 3(4x_1) = 180 \Rightarrow 18x_1 = 180 \Rightarrow x_1^* = 10\).

    Portanto \(x_2^* = 40\).

    **Passo 3 — Verificar pela fórmula geral Cobb-Douglas**

    \(x_1^* = \frac{a}{a+b} \cdot \frac{I}{p_1} = \frac{1/3}{1} \cdot \frac{180}{6} = 10\) ✓

    \(x_2^* = \frac{b}{a+b} \cdot \frac{I}{p_2} = \frac{2/3}{1} \cdot \frac{180}{3} = 40\) ✓

    **Resultado:** A cesta ótima é \((x_1^*, x_2^*) = (10, 40)\), com utilidade máxima \(u^* = 10^{1/3} \cdot 40^{2/3} \approx 25{,}20\).

    **Interpretação econômica:** O consumidor gasta exatamente 1/3 da renda no bem 1 (\(6 \times 10 = 60\)) e 2/3 no bem 2 (\(3 \times 40 = 120\)). Essa proporção fixa é uma propriedade geral da Cobb-Douglas: os expoentes determinam as parcelas de gasto, independentemente dos preços. Essa regularidade é consistente com evidências empíricas de que famílias brasileiras mantêm participações relativamente estáveis de categorias amplas de consumo (alimentação, habitação, transporte) em seus orçamentos, conforme documentado pela POF/IBGE.

---

## 4.5 Por Que Imposto Distorce: O Princípio *Lump Sum*

Com a função de utilidade indireta em mãos, estamos em condições de analisar uma das questões mais relevantes da microeconomia aplicada a políticas públicas. Antes de apresentar o resultado formal, considere a seguinte pergunta de política pública: se o governo precisa arrecadar uma determinada receita de um consumidor, qual tipo de imposto causa **menor perda de bem-estar**?[^shrubbery-tax] A resposta revela uma das implicações mais poderosas da teoria do consumidor — e justifica, do ponto de vista teórico, a preferência por transferências diretas de renda sobre subsídios específicos.

!!! theorem "Proposição 4.1 — Princípio do montante fixo"
    Um imposto sobre a renda (montante fixo, *lump sum*) que arrecada a mesma receita que um imposto específico sobre um bem deixa o consumidor em um nível de utilidade **pelo menos tão alto** quanto o imposto específico.

**Intuição**: O imposto específico sobre o bem 1 (digamos, de valor \(t\) por unidade) altera a razão de preços, distorcendo a escolha do consumidor. O imposto *lump sum* equivalente desloca a reta orçamentária paralelamente, sem distorcer preços relativos. O consumidor enfrenta a mesma redução de poder aquisitivo, mas pode realocar livremente entre os bens.

Formalmente, seja a cesta ótima sob o imposto específico \((x_1^t, x_2^t)\). A receita arrecadada é \(R = t \cdot x_1^t\). Sob o imposto *lump sum* de valor \(R\), a restrição orçamentária é:

\[
p_1 x_1 + p_2 x_2 = I - R.
\]

A cesta \((x_1^t, x_2^t)\) satisfaz esta restrição (verifique!), mas não é necessariamente ótima sob ela, pois os preços relativos são diferentes. Logo, a cesta ótima sob o *lump sum* produz utilidade pelo menos igual.

A geometria do argumento é esclarecedora: o imposto específico rotaciona a reta orçamentária, enquanto o *lump sum* a desloca paralelamente. A cesta escolhida sob o imposto específico fica no ponto de tangência com uma curva de indiferença mais baixa do que seria possível com o *lump sum* que arrecada o mesmo valor — porque sob o *lump sum*, os preços relativos são preservados e o consumidor pode alcançar uma curva de indiferença mais alta. Esse resultado, formalizado por Paul Samuelson e John Hicks no século XX, é o fundamento teórico do argumento em favor de transferências de renda versus subsídios a bens específicos.

!!! note "Limitações do princípio"
    O resultado pressupõe informação perfeita, ausência de custos administrativos e que o imposto *lump sum* seja viável. Na prática, impostos *lump sum* são frequentemente considerados injustos ou politicamente inviáveis. A tributação ótima (Ramsey, Mirrlees) busca conciliar eficiência e equidade sob restrições informacionais.

[^shrubbery-tax]: O governo, neste problema, se comporta como os Cavaleiros que Dizem "Ni!" em *Monty Python and the Holy Grail*: exige uma receita fixa ("*Bring me a shrubbery!*") e não negocia o valor. A questão é *como* o consumidor prefere entregar essa receita — com distorção de preços (imposto específico) ou sem (lump sum). A demanda do governo por receita é perfeitamente inelástica; a do consumidor por bem-estar, não.

<iframe src="/micro-book/graficos/cap04/lump-sum-principle.html" title="Figura 4.3" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 4.3 — Princípio do Montante Fixo (*Lump Sum*).** Compare o imposto unitário com o imposto lump sum de mesma receita. Note que o lump sum sempre gera utilidade igual ou superior.
</div>

!!! box-brasil "Box Brasil 4.2 — Subsídio ao gás de cozinha: lump sum vs. controle de preço"
    O debate entre transferência direta e subsídio a preços tem um exemplo emblemático no Brasil: o gás de cozinha (GLP). Durante anos, o governo subsidiou o preço do GLP diretamente, o que beneficiava todos os consumidores, inclusive os de alta renda. A partir de 2016, com o programa Gás para Todos (e depois o Auxílio Gás, criado em 2021), o governo passou a adotar uma transferência monetária direta às famílias inscritas no [Cadastro Único](https://www.gov.br/mds).

    Do ponto de vista do princípio do montante fixo, a mudança vai na direção correta. O subsídio ao preço distorce preços relativos, incentivando consumo excessivo de GLP em relação a outras fontes de energia. A transferência direta, por não alterar o preço relativo do gás, permite que a família aloque os recursos conforme suas preferências, gerando utilidade pelo menos igual — e tipicamente maior — para a mesma despesa pública.

    Em 2023, o Auxílio Gás beneficiava cerca de 5,6 milhões de famílias, com valor equivalente a no mínimo 50% do preço médio nacional de referência do botijão de 13 kg, pago a cada dois meses. Essa política combina o princípio teórico da superioridade de transferências *lump sum* com a focalização nos mais vulneráveis.

    **Fonte**: Ministério do Desenvolvimento e Assistência Social; Lei nº 14.237/2021 (Auxílio Gás).

!!! box-mundo "Box Mundo 4.1 — Transferências em dinheiro vs. em espécie: evidências do Quênia e do México"

    **Contexto:** O princípio do montante fixo prevê que transferências em dinheiro (*cash transfers*) são ao menos tão eficientes quanto transferências em espécie (*in-kind transfers*), pois preservam a liberdade de escolha do consumidor sem distorcer preços relativos. Essa predição teórica foi extensivamente testada em programas de grande escala em países em desenvolvimento, com resultados que confirmam — e por vezes ampliam — a lógica do modelo.

    **Dados:** No Quênia, a organização GiveDirectly conduziu transferências incondicionais de dinheiro (cerca de US$ 1.000) a famílias rurais extremamente pobres. Haushofer e Shapiro (2016), em avaliação experimental randomizada publicada no *Quarterly Journal of Economics*, documentaram aumentos significativos em consumo alimentar, ativos produtivos (gado, telhados de metal) e bem-estar psicológico, sem evidência de aumento em consumo de álcool ou tabaco — temor frequentemente levantado por críticos de transferências em dinheiro. No México, o programa Progresa/Oportunidades (hoje Prospera), avaliado por Gertler, Martinez e Rubio-Codina (2012, *American Economic Journal: Applied Economics*), mostrou que famílias beneficiárias investiram parte das transferências em atividades produtivas agrícolas, gerando retornos de 15% ao ano e evidenciando que a liquidez da transferência em dinheiro permitiu às famílias otimizar intertemporalmente — algo impossível com transferências em espécie vinculadas a bens específicos.

    **Análise:** Esses resultados são consistentes com a teoria desenvolvida na Seção 4.5: a transferência *lump sum* em dinheiro desloca a reta orçamentária paralelamente, sem alterar preços relativos, permitindo que cada família aloque os recursos conforme suas preferências individuais. A transferência em espécie, por sua vez, equivale a um subsídio ao preço do bem transferido, distorcendo a razão \(p_1/p_2\) e gerando perda de eficiência análoga à do imposto específico. A evidência empírica do Quênia e do México sugere que, além do ganho estático de eficiência previsto pelo modelo, transferências em dinheiro geram ganhos dinâmicos adicionais ao relaxar restrições de liquidez e permitir investimentos produtivos — uma extensão natural do modelo para o contexto intertemporal (Capítulo 7).

    **Fonte:** Haushofer, J.; Shapiro, J. (2016). "The Short-Term Impact of Unconditional Cash Transfers to the Poor: Experimental Evidence from Kenya." *Quarterly Journal of Economics*, 131(4), 1973–2042. Gertler, P. J.; Martinez, S. W.; Rubio-Codina, M. (2012). "Investing Cash Transfers to Raise Long-Term Living Standards." *American Economic Journal: Applied Economics*, 4(1), 164–192.

??? exercicio-resolvido "Exercício Resolvido 4.2"
    **Enunciado:** Um consumidor com \(u(x_1, x_2) = x_1^{0{,}5} x_2^{0{,}5}\), \(p_1 = 10\), \(p_2 = 5\) e \(I = 200\) enfrenta um imposto específico de \(t = 10\) sobre o bem 1. Compare o imposto específico com um imposto *lump sum* de mesma receita.

    **Dados:** \(a = b = 0{,}5\), \(p_1 = 10\), \(p_2 = 5\), \(I = 200\), \(t = 10\).

    **Resolução:**

    **Passo 1 — Equilíbrio sem imposto**

    \(x_1^* = \frac{0{,}5 \times 200}{10} = 10\), \(x_2^* = \frac{0{,}5 \times 200}{5} = 20\), \(V_0 = \sqrt{10 \times 20} = \sqrt{200} \approx 14{,}14\).

    **Passo 2 — Equilíbrio com imposto específico**

    Novo preço: \(p_1 + t = 20\). \(x_1^t = \frac{0{,}5 \times 200}{20} = 5\), \(x_2^t = \frac{0{,}5 \times 200}{5} = 20\).

    Receita: \(R = 10 \times 5 = 50\). Utilidade: \(V_t = \sqrt{5 \times 20} = \sqrt{100} = 10\).

    **Passo 3 — Equilíbrio com lump sum de mesma receita**

    Renda disponível: \(200 - 50 = 150\). \(x_1^L = \frac{0{,}5 \times 150}{10} = 7{,}5\), \(x_2^L = \frac{0{,}5 \times 150}{5} = 15\).

    Utilidade: \(V_L = \sqrt{7{,}5 \times 15} = \sqrt{112{,}5} \approx 10{,}61\).

    **Resultado:** \(V_L \approx 10{,}61 > V_t = 10\). O lump sum gera utilidade 6,1% maior.

    **Interpretação econômica:** O imposto específico encarece o bem 1, distorcendo a razão de preços de 2:1 para 4:1. O consumidor substitui excessivamente em favor do bem 2. O *lump sum* reduz o poder de compra na mesma proporção, mas preserva os preços relativos, permitindo uma alocação mais eficiente. Esse princípio está por trás do argumento econômico em favor de transferências diretas de renda — como o Bolsa Família — em vez de subsídios a bens específicos.
