# Capítulo 4 — O Consumidor Racional: Escolhendo o Melhor Possível

## Introdução

No Capítulo 3, descrevemos **o que** o consumidor deseja por meio das preferências e da função de utilidade. Agora enfrentamos a questão central: **o que ele de fato escolhe**, dados os preços e sua renda? O problema do consumidor consiste em maximizar a utilidade sujeita à restrição orçamentária — um problema de otimização com restrição de desigualdade que, sob hipóteses padrão, reduz-se a uma igualdade.

Este capítulo desenvolve as ferramentas analíticas fundamentais da teoria do consumidor: a demanda marshalliana (ou walrasiana), a função de utilidade indireta, o problema dual de minimização do dispêndio, a função dispêndio, a demanda hicksiana (ou compensada) e os resultados de dualidade que conectam essas funções. A Identidade de Roy e o Lema de Shephard aparecem como consequências naturais dessa estrutura dual.

A exposição segue Nicholson e Snyder (2017, Cap. 4), complementada por Varian (2015, Caps. 5-7) e Mas-Colell, Whinston e Green (1995, Caps. 2-3).

---

## 4.1 O Problema do Consumidor

O consumidor resolve o seguinte problema de **maximização da utilidade**:

\[
\max_{x_1, x_2} \; u(x_1, x_2) \quad \text{sujeito a} \quad p_1 x_1 + p_2 x_2 \leq I, \quad x_1 \geq 0, \quad x_2 \geq 0,
\]

onde \(p_1, p_2 > 0\) são os preços dos bens e \(I > 0\) é a renda nominal do consumidor.

!!! definition "Conjunto orçamentário"
    O **conjunto orçamentário** é definido como:

    \[
    B(p_1, p_2, I) = \{(x_1, x_2) \in \mathbb{R}^2_+ : p_1 x_1 + p_2 x_2 \leq I\}.
    \]

    A fronteira deste conjunto, \(p_1 x_1 + p_2 x_2 = I\), é a **reta orçamentária**. Sua inclinação é \(-p_1/p_2\), refletindo o **custo de oportunidade** de uma unidade do bem 1 em termos do bem 2.

Sob monotonicidade das preferências, a restrição orçamentária é satisfeita com igualdade na solução ótima: o consumidor gasta toda a renda.

<iframe src="../graficos/cap04/restricao-orcamentaria.html" width="100%" height="500" style="border:none; border-radius:8px;"></iframe>
*Ajuste renda e preços com os sliders. Observe como a reta orçamentária se desloca e como a inclinação reflete o custo de oportunidade.*

---

## 4.2 Análise Gráfica com Dois Bens

Geometricamente, o consumidor busca a curva de indiferença mais alta que ainda toca o conjunto orçamentário. Para uma **solução interior** (\(x_1^* > 0\) e \(x_2^* > 0\)), a condição necessária é a **tangência**:

\[
\text{TMS}_{12} = \frac{p_1}{p_2}.
\]

!!! definition "Condição de tangência"
    No ponto ótimo interior, a taxa marginal de substituição iguala a razão de preços. A **taxa de troca subjetiva** do consumidor (TMS) coincide com a **taxa de troca objetiva** dada pelo mercado (\(p_1/p_2\)). Se a TMS excedesse \(p_1/p_2\), o consumidor poderia aumentar sua utilidade comprando mais do bem 1 e menos do bem 2.

A condição de tangência pode ser reescrita em termos de utilidade marginal ponderada pelo preço:

\[
\frac{\text{UMg}_1}{p_1} = \frac{\text{UMg}_2}{p_2}.
\]

Esta é a **lei da utilidade marginal ponderada igualada**: no ótimo, a última unidade monetária gasta em cada bem produz o mesmo incremento de utilidade.

!!! tip "Soluções de canto"
    Nem todas as soluções são interiores. Para substitutos perfeitos, por exemplo, o consumidor tipicamente consome apenas o bem com maior razão \(a_i/p_i\). Soluções de canto ocorrem quando a TMS no ponto \(x_i = 0\) já é inferior (ou superior) à razão de preços, de modo que a condição de tangência não se verifica em nenhum ponto interior.

<iframe src="../graficos/cap04/equilibrio-consumidor.html" width="100%" height="500" style="border:none; border-radius:8px;"></iframe>
*Varie os preços, a renda e o parâmetro α para visualizar a tangência entre a curva de indiferença e a reta orçamentária. O ponto ótimo é calculado analiticamente.*

---

## 4.3 O Caso com \(n\) Bens — O Lagrangeano

Para uma revisão detalhada do método de Lagrange, incluindo o passo a passo completo e um exercício resolvido com a função CES, veja a [Seção 2.5](../cap02/index.md#25-maximizacao-com-restricoes-o-metodo-de-lagrange).

Para \(n\) bens, o problema do consumidor é:

\[
\max_{\mathbf{x} \in \mathbb{R}^n_+} \; u(\mathbf{x}) \quad \text{sujeito a} \quad \mathbf{p} \cdot \mathbf{x} \leq I.
\]

Montamos o **lagrangeano**:

\[
\mathcal{L}(\mathbf{x}, \lambda) = u(\mathbf{x}) + \lambda \left(I - \sum_{i=1}^{n} p_i x_i\right).
\]

As **condições de primeira ordem** (CPOs) para uma solução interior são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial u}{\partial x_i} - \lambda p_i = 0, \quad i = 1, 2, \ldots, n,
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = I - \sum_{i=1}^{n} p_i x_i = 0.
\]

Das CPOs, obtemos:

\[
\frac{\text{UMg}_i}{p_i} = \lambda, \quad \forall \, i.
\]

O **multiplicador de Lagrange** \(\lambda\) tem interpretação econômica precisa: é a **utilidade marginal da renda**, ou seja, o aumento na utilidade máxima quando a renda aumenta em uma unidade marginal.

!!! note "Condições de segunda ordem"
    Para garantir que o ponto encontrado é um máximo, exige-se que a matriz hessiana orlada seja definida negativa sob a restrição. Sob preferências estritamente quase-côncavas (curvas de indiferença estritamente convexas), as condições de segunda ordem são automaticamente satisfeitas.

### Demanda Marshalliana

A solução do problema de maximização da utilidade define as **funções de demanda marshalliana** (ou walrasiana):

\[
x_i^* = x_i(p_1, p_2, \ldots, p_n, I), \quad i = 1, \ldots, n.
\]

Essas funções expressam a quantidade ótima de cada bem como função dos preços e da renda.

**Propriedades da demanda marshalliana**:

1. **Homogeneidade de grau zero**: \(x_i(t\mathbf{p}, tI) = x_i(\mathbf{p}, I)\) para todo \(t > 0\). Duplicar todos os preços e a renda não altera as quantidades demandadas.
2. **Lei de Walras**: \(\mathbf{p} \cdot \mathbf{x}(\mathbf{p}, I) = I\). O consumidor gasta toda a renda.
3. **Negatividade do efeito substituição** (via equação de Slutsky — Capítulo 5).

---

## 4.4 Função de Utilidade Indireta

!!! definition "Função de utilidade indireta"
    A **função de utilidade indireta** é o valor ótimo da utilidade como função dos preços e da renda:

    \[
    V(p_1, p_2, I) = u\big(x_1^*(p_1, p_2, I), \; x_2^*(p_1, p_2, I)\big) = \max_{\mathbf{x} \in B(\mathbf{p}, I)} u(\mathbf{x}).
    \]

**Propriedades de \(V(\mathbf{p}, I)\)**:

1. **Homogênea de grau zero** em \((\mathbf{p}, I)\): duplicar preços e renda não altera a utilidade máxima alcançável.
2. **Não crescente em \(p_i\)**: um aumento no preço de qualquer bem reduz (ou mantém) o nível máximo de utilidade.
3. **Não decrescente em \(I\)**: mais renda expande o conjunto orçamentário e permite alcançar (ao menos) o mesmo nível de utilidade.
4. **Quase-convexa em \(\mathbf{p}\)**: o conjunto \(\{\mathbf{p} : V(\mathbf{p}, I) \leq \bar{v}\}\) é convexo.
5. **Contínua** em \((\mathbf{p}, I)\) para \(\mathbf{p} \gg 0\) e \(I > 0\).

!!! tip "Exemplo: Cobb-Douglas"
    Para \(u(x_1, x_2) = x_1^a x_2^b\) com \(a + b = 1\), as demandas marshallianas são \(x_1^* = aI/p_1\) e \(x_2^* = bI/p_2\). A função de utilidade indireta é:

    \[
    V(p_1, p_2, I) = \left(\frac{a}{p_1}\right)^a \left(\frac{b}{p_2}\right)^b \cdot I.
    \]

    Note que \(V\) é linear em \(I\) e decrescente em cada preço.

---

## 4.5 O Princípio do Montante Fixo (*Lump Sum Principle*)

!!! abstract "Proposição 4.1 — Princípio do montante fixo"
    Um imposto sobre a renda (montante fixo, *lump sum*) que arrecada a mesma receita que um imposto específico sobre um bem deixa o consumidor em um nível de utilidade **pelo menos tão alto** quanto o imposto específico.

**Intuição**: O imposto específico sobre o bem 1 (digamos, de valor \(t\) por unidade) altera a razão de preços, distorcendo a escolha do consumidor. O imposto *lump sum* equivalente desloca a reta orçamentária paralelamente, sem distorcer preços relativos. O consumidor enfrenta a mesma redução de poder aquisitivo, mas pode realocar livremente entre os bens.

Formalmente, seja a cesta ótima sob o imposto específico \((x_1^t, x_2^t)\). A receita arrecadada é \(R = t \cdot x_1^t\). Sob o imposto *lump sum* de valor \(R\), a restrição orçamentária é:

\[
p_1 x_1 + p_2 x_2 = I - R.
\]

A cesta \((x_1^t, x_2^t)\) satisfaz esta restrição (verifique!), mas não é necessariamente ótima sob ela, pois os preços relativos são diferentes. Logo, a cesta ótima sob o *lump sum* produz utilidade pelo menos igual.

!!! note "Limitações do princípio"
    O resultado pressupõe informação perfeita, ausência de custos administrativos e que o imposto *lump sum* seja viável. Na prática, impostos *lump sum* são frequentemente considerados injustos ou politicamente inviáveis. A tributação ótima (Ramsey, Mirrlees) busca conciliar eficiência e equidade sob restrições informacionais.

<iframe src="../graficos/cap04/lump-sum-principle.html" width="100%" height="500" style="border:none; border-radius:8px;"></iframe>
*Compare o imposto unitário com o imposto lump sum de mesma receita. Note que o lump sum sempre gera utilidade igual ou superior.*

---

## 4.6 Minimização do Dispêndio — O Problema Dual

O **dual** do problema de maximização da utilidade é o problema de **minimização do dispêndio** (ou minimização do gasto):

\[
\min_{x_1, x_2} \; p_1 x_1 + p_2 x_2 \quad \text{sujeito a} \quad u(x_1, x_2) \geq \bar{u}, \quad x_1 \geq 0, \quad x_2 \geq 0.
\]

O consumidor busca a forma mais barata de atingir um nível de utilidade pré-especificado \(\bar{u}\).

O lagrangeano do problema dual é:

\[
\mathcal{L} = p_1 x_1 + p_2 x_2 + \mu \left(\bar{u} - u(x_1, x_2)\right).
\]

As CPOs para solução interior são:

\[
p_i = \mu \frac{\partial u}{\partial x_i}, \quad i = 1, 2,
\]

\[
u(x_1, x_2) = \bar{u}.
\]

Dividindo as CPOs dos bens 1 e 2:

\[
\frac{p_1}{p_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \text{TMS}_{12}.
\]

A condição de tangência é **idêntica** à do problema primal, confirmando a equivalência entre os dois problemas.

### Demanda Hicksiana (Compensada)

A solução do problema de minimização define as **funções de demanda hicksiana** (ou compensada):

\[
h_i = h_i(p_1, p_2, \bar{u}), \quad i = 1, 2.
\]

**Propriedades da demanda hicksiana**:

1. **Homogênea de grau zero em \(\mathbf{p}\)**: multiplicar todos os preços pelo mesmo fator não altera as quantidades compensadas.
2. **Lei da demanda compensada**: \(\partial h_i / \partial p_i \leq 0\). A demanda hicksiana é não crescente no próprio preço — não há efeito renda para confundir o resultado.
3. **Simetria e semidefinição negativa** da matriz de Slutsky: \(\partial h_i / \partial p_j = \partial h_j / \partial p_i\).

---

## 4.7 Função Dispêndio

!!! definition "Função dispêndio"
    A **função dispêndio** é o custo mínimo de atingir o nível de utilidade \(\bar{u}\) aos preços vigentes:

    \[
    E(p_1, p_2, \bar{u}) = p_1 \, h_1(p_1, p_2, \bar{u}) + p_2 \, h_2(p_1, p_2, \bar{u}) = \min_{\mathbf{x}: u(\mathbf{x}) \geq \bar{u}} \mathbf{p} \cdot \mathbf{x}.
    \]

**Propriedades de \(E(\mathbf{p}, \bar{u})\)**:

1. **Homogênea de grau 1 em \(\mathbf{p}\)**: se todos os preços dobram, o gasto mínimo dobra.
2. **Não decrescente em cada \(p_i\)**: preços maiores implicam gasto maior para o mesmo nível de utilidade.
3. **Estritamente crescente em \(\bar{u}\)**: atingir maior utilidade custa mais.
4. **Côncava em \(\mathbf{p}\)**: esta propriedade é fundamental e reflete o fato de que o consumidor pode realocar consumo quando preços mudam.
5. **Lema de Shephard**: \(\dfrac{\partial E}{\partial p_i} = h_i(\mathbf{p}, \bar{u})\). A derivada da função dispêndio em relação ao preço \(p_i\) fornece a demanda hicksiana do bem \(i\).

!!! tip "Exemplo: Cobb-Douglas"
    Para \(u = x_1^a x_2^b\) com \(a + b = 1\), a função dispêndio é:

    \[
    E(p_1, p_2, \bar{u}) = \left(\frac{p_1}{a}\right)^a \left(\frac{p_2}{b}\right)^b \cdot \bar{u}.
    \]

    As demandas hicksianas obtidas pelo Lema de Shephard são:

    \[
    h_1 = \frac{\partial E}{\partial p_1} = a \left(\frac{p_1}{a}\right)^{a-1} \left(\frac{p_2}{b}\right)^b \cdot \bar{u} \cdot \frac{1}{a} = \left(\frac{p_2}{p_1}\right)^b \cdot \left(\frac{a}{b}\right)^{-b} \cdot \bar{u}.
    \]

---

## 4.8 Dualidade entre Utilidade Indireta e Função Dispêndio

A dualidade é a relação de "inversão" entre os problemas primal e dual. As seguintes identidades conectam \(V\) e \(E\):

\[
V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u} \qquad \text{(a renda mínima para atingir } \bar{u} \text{ gera utilidade exatamente } \bar{u}\text{)},
\]

\[
E(\mathbf{p}, V(\mathbf{p}, I)) = I \qquad \text{(o custo mínimo de atingir a utilidade máxima com renda } I \text{ é exatamente } I\text{)}.
\]

Essas identidades implicam que \(V(\mathbf{p}, \cdot)\) e \(E(\mathbf{p}, \cdot)\) são **inversas** uma da outra (fixados os preços).

<iframe src="../graficos/cap04/dualidade.html" width="100%" height="500" style="border:none; border-radius:8px;"></iframe>
*Alterne entre os problemas primal e dual. Observe que o mesmo ponto de tangência resolve ambos, e que as identidades de dualidade se verificam numericamente.*

Além disso, as demandas marshalliana e hicksiana estão relacionadas:

\[
x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I)),
\]

\[
h_i(\mathbf{p}, \bar{u}) = x_i(\mathbf{p}, E(\mathbf{p}, \bar{u})).
\]

---

## 4.9 Identidade de Roy

!!! abstract "Teorema 4.1 — Identidade de Roy"
    Se \(V(\mathbf{p}, I)\) é diferenciável em \((\mathbf{p}, I)\) e \(\partial V / \partial I \neq 0\), então a demanda marshalliana do bem \(i\) é dada por:

    \[
    x_i(\mathbf{p}, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}.
    \]

!!! proof "Demonstração"
    Partimos da identidade de dualidade:

    \[
    E(\mathbf{p}, V(\mathbf{p}, I)) = I.
    \]

    Diferenciando ambos os lados em relação a \(p_i\), aplicando a regra da cadeia:

    \[
    \frac{\partial E}{\partial p_i} + \frac{\partial E}{\partial \bar{u}} \cdot \frac{\partial V}{\partial p_i} = 0.
    \]

    Agora utilizamos dois resultados conhecidos:

    - Pelo **Lema de Shephard**: \(\dfrac{\partial E}{\partial p_i} = h_i(\mathbf{p}, \bar{u})\).
    - Da dualidade, avaliada no ótimo: \(\dfrac{\partial E}{\partial \bar{u}} = \dfrac{1}{\partial V / \partial I}\) (pois \(E\) e \(V\) são inversas em relação ao segundo argumento, e pela regra da função inversa).

    Além disso, no ponto de dualidade, \(h_i(\mathbf{p}, V(\mathbf{p}, I)) = x_i(\mathbf{p}, I)\). Substituindo:

    \[
    x_i(\mathbf{p}, I) + \frac{1}{\partial V / \partial I} \cdot \frac{\partial V}{\partial p_i} = 0.
    \]

    Resolvendo para \(x_i\):

    \[
    x_i(\mathbf{p}, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}. \qquad \blacksquare
    \]

!!! tip "Verificação: caso Cobb-Douglas"
    Para \(u = x_1^a x_2^b\) com \(a + b = 1\), temos \(V = (a/p_1)^a (b/p_2)^b \cdot I\). Então:

    \[
    \frac{\partial V}{\partial p_1} = -a \cdot \frac{V}{p_1}, \qquad \frac{\partial V}{\partial I} = \frac{V}{I}.
    \]

    Pela Identidade de Roy:

    \[
    x_1 = -\frac{-a V/p_1}{V/I} = \frac{aI}{p_1},
    \]

    que é exatamente a demanda marshalliana Cobb-Douglas.

---

## Tabela Resumo: Funções do Consumidor

| Função | Definição | Argumentos | Propriedades principais |
|---|---|---|---|
| Utilidade direta \(u(\mathbf{x})\) | Nível de satisfação da cesta \(\mathbf{x}\) | Quantidades \(\mathbf{x}\) | Ordinal; contínua; quase-côncava |
| Demanda marshalliana \(x_i(\mathbf{p}, I)\) | Cesta ótima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0 em \((\mathbf{p}, I)\); Lei de Walras |
| Utilidade indireta \(V(\mathbf{p}, I)\) | Utilidade máxima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0; decrescente em \(\mathbf{p}\); crescente em \(I\); quase-convexa em \(\mathbf{p}\) |
| Demanda hicksiana \(h_i(\mathbf{p}, \bar{u})\) | Cesta de custo mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 0 em \(\mathbf{p}\); \(\partial h_i/\partial p_i \leq 0\) |
| Função dispêndio \(E(\mathbf{p}, \bar{u})\) | Gasto mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 1 em \(\mathbf{p}\); côncava em \(\mathbf{p}\); Lema de Shephard |

**Relações fundamentais**:

- \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\)
- Roy: \(x_i = -(\partial V/\partial p_i) / (\partial V/\partial I)\)
- Shephard: \(h_i = \partial E / \partial p_i\)
- Conexão: \(x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I))\)

---

## Box Brasil: O Impacto do Bolsa Família na Restrição Orçamentária

!!! example "Box Brasil — Transferências condicionadas e escolhas de consumo"
    O Programa Bolsa Família (PBF), criado em 2003 e reestruturado como Auxílio Brasil em 2021 e novamente como Bolsa Família em 2023, constitui o maior programa de transferência condicionada de renda da América Latina, atingindo cerca de 21 milhões de famílias em 2023.

    **Efeito sobre a restrição orçamentária**: A transferência mensal \(T\) desloca a reta orçamentária paralelamente para cima, de \(p_1 x_1 + p_2 x_2 = I\) para \(p_1 x_1 + p_2 x_2 = I + T\). Note que, ao contrário de subsídios a bens específicos, a transferência em dinheiro **não altera preços relativos**, funcionando como um *lump sum*. Pelo princípio do montante fixo (Seção 4.5), essa forma de transferência é mais eficiente do que subsídios a bens específicos, permitindo ao beneficiário maximizar sua utilidade de acordo com suas preferências individuais.

    **Condicionalidades e o conjunto orçamentário**: As condicionalidades do PBF (frequência escolar, vacinação, acompanhamento pré-natal) introduzem restrições adicionais ao problema do consumidor. Do ponto de vista formal, o conjunto orçamentário deixa de ser um simples triângulo: a família deve alocar um montante mínimo em "bens meritórios" (educação, saúde) para receber a transferência. Isso cria uma descontinuidade no conjunto de possibilidades de consumo.

    **Evidências empíricas sobre padrões de consumo**:

    - Estudos do IPEA mostram que famílias beneficiárias gastam proporcionalmente mais com **alimentação** (especialmente alimentos de maior qualidade nutricional) e **material escolar** do que famílias com renda similar não beneficiárias (Soares e Sátyro, 2009).
    - Evidências de Resende e Oliveira (2008) indicam que a propensão marginal a consumir dos beneficiários é elevada (acima de 0,80), consistente com a teoria microeconômica para famílias na faixa de renda onde a utilidade marginal da renda é alta.
    - A **diversificação da cesta de consumo** aumentou significativamente: famílias beneficiárias passaram a incluir frutas, verduras e proteínas animais com maior frequência, refletindo um deslocamento ao longo de curvas de indiferença em direção a cestas mais balanceadas.
    - Dados do Cadastro Único e da POF 2017-18 mostram que a parcela de gastos com alimentação diminuiu de cerca de 45% para 38% entre beneficiários entre 2008 e 2018, indicando movimento ao longo da curva de Engel.

    Do ponto de vista da teoria do consumidor, o PBF exemplifica de forma concreta os conceitos de deslocamento da restrição orçamentária, eficiência de transferências *lump sum* e a relação entre renda e composição da cesta de consumo.

    **Fontes**: SOARES, F. V.; SÁTYRO, N. *O Programa Bolsa Família: desenho institucional, impactos e possibilidades futuras*. Texto para Discussão IPEA, n. 1424, 2009. RESENDE, A. C. C.; OLIVEIRA, A. M. H. C. Avaliando resultados de um programa de transferência de renda: o impacto do Bolsa-Escola sobre os gastos das famílias brasileiras. *Estudos Econômicos*, v. 38, n. 2, p. 235-265, 2008. MDS — Ministério do Desenvolvimento Social, dados administrativos.

---

## Exercícios

**Exercício 4.1.** Considere um consumidor com função de utilidade \(u(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), preços \(p_1\) e \(p_2\) e renda \(I\).

(a) Monte o lagrangeano e derive as condições de primeira ordem.

(b) Obtenha as funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

(c) Derive a função de utilidade indireta \(V(p_1, p_2, I)\).

(d) Verifique a Identidade de Roy para o bem 1.

---

**Exercício 4.2.** Para as mesmas preferências do exercício anterior:

(a) Formule e resolva o problema de minimização do dispêndio.

(b) Obtenha as demandas hicksianas \(h_1(p_1, p_2, \bar{u})\) e \(h_2(p_1, p_2, \bar{u})\).

(c) Derive a função dispêndio \(E(p_1, p_2, \bar{u})\).

(d) Verifique o Lema de Shephard para o bem 1.

(e) Verifique as identidades de dualidade \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\).

---

**Exercício 4.3.** Um consumidor tem preferências representadas por \(u(x_1, x_2) = \min\{2x_1, x_2\}\), com \(p_1 = 4\), \(p_2 = 2\) e \(I = 120\).

(a) Encontre a cesta ótima. (Dica: no ótimo, \(2x_1 = x_2\).)

(b) Calcule a utilidade máxima.

(c) Qual seria a cesta ótima se a renda aumentasse para \(I = 180\)? Os bens são normais?

---

**Exercício 4.4.** O governo está considerando duas políticas para arrecadar R\$ 100 de um consumidor com \(u(x_1, x_2) = x_1^{0,4} x_2^{0,6}\), \(p_1 = 10\), \(p_2 = 5\) e \(I = 1000\):

(a) **Política A**: imposto específico de \(t\) por unidade sobre o bem 1. Encontre \(t\) tal que a receita seja R\$ 100.

(b) **Política B**: imposto *lump sum* de R\$ 100.

(c) Compare os níveis de utilidade do consumidor sob as duas políticas. Qual é preferida pelo consumidor? Este resultado é consistente com o princípio do montante fixo?

---

**Exercício 4.5.** Considere um consumidor com utilidade quase-linear \(u(x_1, x_2) = 2\sqrt{x_1} + x_2\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas. Sob quais condições a solução é interior?

(b) Mostre que a demanda pelo bem 1 é independente da renda (para soluções interiores). Interprete.

(c) Derive a função de utilidade indireta e a função dispêndio.

(d) Verifique que, para esse caso particular, as demandas marshalliana e hicksiana do bem 1 são **idênticas**. Explique por que isso ocorre.

---

## Referências do Capítulo

- MAS-COLELL, A.; WHINSTON, M. D.; GREEN, J. R. *Microeconomic Theory*. New York: Oxford University Press, 1995. Capítulos 2-3.
- NICHOLSON, W.; SNYDER, C. M. *Microeconomic Theory: Basic Principles and Extensions*. 12. ed. Boston: Cengage Learning, 2017. Capítulo 4.
- VARIAN, H. R. *Microeconomia: uma abordagem moderna*. 9. ed. Rio de Janeiro: Elsevier, 2015. Capítulos 5-7.
- SOARES, F. V.; SÁTYRO, N. *O Programa Bolsa Família: desenho institucional, impactos e possibilidades futuras*. Texto para Discussão IPEA, n. 1424, 2009.
- RESENDE, A. C. C.; OLIVEIRA, A. M. H. C. Avaliando resultados de um programa de transferência de renda: o impacto do Bolsa-Escola sobre os gastos das famílias brasileiras. *Estudos Econômicos*, v. 38, n. 2, p. 235-265, 2008.
