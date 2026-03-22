# Capítulo 4 — Você Quer Tudo. Mas Não Pode.

No Capítulo 3, descrevemos **o que** o consumidor deseja por meio das preferências e da função de utilidade. Agora enfrentamos a questão central: **o que ele de fato escolhe**, dados os preços e sua renda?

O problema do consumidor consiste em maximizar a utilidade sujeita à restrição orçamentária — um problema de otimização com restrição de desigualdade que, sob hipóteses padrão, reduz-se a uma igualdade. Em termos concretos, é a formalização de algo que todo brasileiro faz no supermercado: decidir como distribuir um orçamento limitado entre diferentes bens para obter a maior satisfação possível.

Este capítulo desenvolve as ferramentas analíticas fundamentais da teoria do consumidor: a demanda marshalliana (ou walrasiana), a função de utilidade indireta, o problema dual de minimização do dispêndio, a função dispêndio, a demanda hicksiana (ou compensada) e os resultados de dualidade que conectam essas funções. A Identidade de Roy e o Lema de Shephard aparecem como consequências naturais dessa estrutura dual.

A exposição segue Nicholson e Snyder (2017, Cap. 4), complementada por Varian (2015, Caps. 5–7) e Mas-Colell, Whinston e Green (1995, Caps. 2–3). Perloff (2017, Caps. 3–5) oferece equilíbrio entre rigor matemático e aplicações empíricas, sendo referência complementar para a Equação de Slutsky e suas implicações.

---

## 4.1 O Problema do Consumidor

O consumidor resolve o seguinte problema de **maximização da utilidade**:

\[
\max_{x_1, x_2} \; u(x_1, x_2) \quad \text{sujeito a} \quad p_1 x_1 + p_2 x_2 \leq I, \quad x_1 \geq 0, \quad x_2 \geq 0, \tag{4.1.1}
\]

onde \(p_1, p_2 > 0\) são os preços dos bens e \(I > 0\) é a renda nominal do consumidor.

!!! definition "Conjunto orçamentário"
    O **conjunto orçamentário** é definido como:

    \[
    B(p_1, p_2, I) = \{(x_1, x_2) \in \mathbb{R}^2_+ : p_1 x_1 + p_2 x_2 \leq I\}. \tag{4.1.2}
    \]

    A fronteira deste conjunto, \(p_1 x_1 + p_2 x_2 = I\), é a **reta orçamentária**. Sua inclinação é \(-p_1/p_2\), refletindo o **custo de oportunidade** de uma unidade do bem 1 em termos do bem 2.

Sob monotonicidade das preferências, a restrição orçamentária é satisfeita com igualdade na solução ótima: o consumidor gasta toda a renda.

!!! idea "Intuição Econômica"
    **Em uma frase:** A restrição orçamentária diz que toda escolha tem um custo de oportunidade — comprar mais de um bem significa abrir mão de outro.

    **Pense assim:** Imagine que você tem R$ 300 para gastar no mês entre carne e transporte. Cada real a mais gasto em carne é um real a menos em passagem de ônibus. A inclinação da reta orçamentária (\(-p_1/p_2\)) é exatamente esse "preço" da troca: se a carne custa R$ 40/kg e a passagem R$ 5, cada quilo de carne "custa" 8 passagens.

    **Por que isso importa:** Todo debate sobre política de preços — subsídios ao gás de cozinha, tarifa zero no transporte público — é, no fundo, sobre como deslocar ou rotacionar essa reta orçamentária das famílias.

<iframe src="../graficos/cap04/restricao-orcamentaria.html" title="Figura 4.1 — Restrição Orçamentária" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 4.1 — Restrição Orçamentária.** Ajuste renda e preços com os sliders. Observe como a reta orçamentária se desloca e como a inclinação reflete o custo de oportunidade.
</div>

!!! box-brasil "Box Brasil — Combustíveis e a reta orçamentária das famílias brasileiras"
    Um exemplo concreto de como preços afetam a restrição orçamentária vem do mercado de combustíveis no Brasil. Segundo dados da [ANP](https://www.gov.br/anp) (Agência Nacional do Petróleo), o preço médio da gasolina comum ao consumidor passou de cerca de R$ 4,50/litro no início de 2020 para R$ 7,26/litro em março de 2022 — um aumento superior a 60%. Esse aumento expressivo alterou significativamente a reta orçamentária das famílias, especialmente as de renda mais baixa.

    De acordo com a POF 2017–2018 ([IBGE](https://www.ibge.gov.br)), famílias com renda de até 2 salários mínimos destinavam cerca de 3,5% de seus gastos a combustíveis, enquanto famílias com renda acima de 25 salários mínimos destinavam 6,1%. Porém, como proporção da renda disponível para outros bens, o impacto é relativamente maior para as famílias mais pobres.

    Em termos do modelo, se \(x_1\) = litros de gasolina e \(x_2\) = cesta de demais bens (com preço normalizado), o aumento de \(p_1\) de 4,50 para 7,26 **rotaciona** a reta orçamentária para dentro ao longo do eixo \(x_1\): a quantidade máxima de gasolina que a família pode comprar (intercepto horizontal \(I/p_1\)) cai drasticamente, enquanto o intercepto vertical \(I/p_2\) permanece inalterado.

    **Fonte**: ANP, Levantamento de Preços de Combustíveis; IBGE, Pesquisa de Orçamentos Familiares 2017–2018.

---

## 4.2 Análise Gráfica com Dois Bens

Antes de recorrer ao ferramental analítico do Lagrangeano, vale desenvolver a intuição geométrica do problema. A visualização gráfica não é apenas uma ilustração — ela revela a lógica econômica da otimização de forma imediata e permite antecipar resultados que, pela via algébrica, só emergem após algumas manipulações. Geometricamente, o consumidor busca a curva de indiferença mais alta que ainda toca o conjunto orçamentário. Para uma **solução interior** (\(x_1^* > 0\) e \(x_2^* > 0\)), a condição necessária é a **tangência**:

\[
\text{TMS}_{12} = \frac{p_1}{p_2}. \tag{4.2.3}
\]

!!! definition "Condição de tangência"
    No ponto ótimo interior, a taxa marginal de substituição iguala a razão de preços. A **taxa de troca subjetiva** do consumidor (TMS) coincide com a **taxa de troca objetiva** dada pelo mercado (\(p_1/p_2\)). Se a TMS excedesse \(p_1/p_2\), o consumidor poderia aumentar sua utilidade comprando mais do bem 1 e menos do bem 2.

A condição de tangência pode ser reescrita em termos de utilidade marginal ponderada pelo preço:

\[
\frac{\text{UMg}_1}{p_1} = \frac{\text{UMg}_2}{p_2}. \tag{4.2.4}
\]

Esta é a **lei da utilidade marginal ponderada igualada**: no ótimo, a última unidade monetária gasta em cada bem produz o mesmo incremento de utilidade.

!!! idea "Intuição Econômica"
    **Em uma frase:** No ponto ótimo, o último real gasto em qualquer bem deve render a mesma satisfação — senão, valeria a pena realocar.

    **Pense assim:** Suponha que o último real gasto em café no supermercado te dá mais prazer que o último real gasto em pão. Então faz sentido comprar menos pão e mais café, até que a satisfação marginal por real se iguale nos dois. É como distribuir água entre vasos: você para quando o nível está igual em todos.

    **Por que isso importa:** Essa condição de tangência (TMS = razão de preços) é a base de toda a análise de demanda — dela derivamos as curvas de demanda e avaliamos o impacto de mudanças de preços.

!!! tip "Soluções de canto"
    Nem todas as soluções são interiores. Para substitutos perfeitos, por exemplo, o consumidor tipicamente consome apenas o bem com maior razão \(a_i/p_i\). Soluções de canto ocorrem quando a TMS no ponto \(x_i = 0\) já é inferior (ou superior) à razão de preços, de modo que a condição de tangência não se verifica em nenhum ponto interior.

<iframe src="../graficos/cap04/equilibrio-consumidor.html" title="Figura 4.2 — Equilíbrio do Consumidor" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 4.2 — Equilíbrio do Consumidor.** Varie os preços, a renda e o parâmetro α para visualizar a tangência entre a curva de indiferença e a reta orçamentária. O ponto ótimo é calculado analiticamente.
</div>

---

## 4.3 O Caso com n Bens — O Lagrangeano

A análise gráfica da seção anterior é intuitiva e poderosa, mas limitada a dois bens. No mundo real, consumidores escolhem entre dezenas ou centenas de categorias de bens e serviços. Como generalizar a condição de tangência para esse cenário multidimensional? Para isso, precisamos de uma técnica de otimização mais poderosa — o **método de Lagrange** —, que traduz a condição geométrica de tangência em um sistema de equações algébricas resolvível para qualquer número de bens. Para uma revisão detalhada do método, incluindo o passo a passo completo e um exercício resolvido com a função CES, veja a [Seção 2.5](../cap02/index.md#25-maximizacao-com-restricoes-o-metodo-de-lagrange).

Para \(n\) bens, o problema do consumidor é:

\[
\max_{\mathbf{x} \in \mathbb{R}^n_+} \; u(\mathbf{x}) \quad \text{sujeito a} \quad \mathbf{p} \cdot \mathbf{x} \leq I. \tag{4.3.5}
\]

Montamos o **lagrangeano**:

\[
\mathcal{L}(\mathbf{x}, \lambda) = u(\mathbf{x}) + \lambda \left(I - \sum_{i=1}^{n} p_i x_i\right). \tag{4.3.6}
\]

As **condições de primeira ordem** (CPOs) para uma solução interior são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial u}{\partial x_i} - \lambda p_i = 0, \quad i = 1, 2, \ldots, n, \tag{4.3.7}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = I - \sum_{i=1}^{n} p_i x_i = 0.
\]

Das CPOs, obtemos:

\[
\frac{\text{UMg}_i}{p_i} = \lambda, \quad \forall \, i. \tag{4.3.8}
\]

Este resultado merece atenção: ele generaliza para \(n\) bens a condição de igualdade da utilidade marginal por real gasto que derivamos graficamente para dois bens. Em palavras, no ótimo, o último real gasto em *qualquer* bem produz exatamente o mesmo acréscimo de utilidade — e esse acréscimo comum é precisamente \(\lambda\).

O **multiplicador de Lagrange** \(\lambda\) tem, portanto, interpretação econômica precisa: é a **utilidade marginal da renda**, ou seja, o aumento na utilidade máxima quando a renda aumenta em uma unidade marginal. Trata-se de uma das grandezas mais importantes da teoria do consumidor, pois conecta variações na renda a variações no bem-estar.

!!! note "Condições de segunda ordem"
    Para garantir que o ponto encontrado é um máximo, exige-se que a matriz hessiana orlada seja definida negativa sob a restrição. Sob preferências estritamente quase-côncavas (curvas de indiferença estritamente convexas), as condições de segunda ordem são automaticamente satisfeitas.

### Demanda Marshalliana

Resolvido o problema de otimização, as quantidades ótimas de cada bem ficam expressas como funções dos preços e da renda. Essas funções — que encapsulam toda a informação sobre o comportamento do consumidor diante de variações em preços e renda — são as **funções de demanda marshalliana** (ou walrasiana):

\[
x_i^* = x_i(p_1, p_2, \ldots, p_n, I), \quad i = 1, \ldots, n. \tag{4.3.9}
\]

Essas funções expressam a quantidade ótima de cada bem como função dos preços e da renda.

**Propriedades da demanda marshalliana**:

1. **Homogeneidade de grau zero**: \(x_i(t\mathbf{p}, tI) = x_i(\mathbf{p}, I)\) para todo \(t > 0\). Duplicar todos os preços e a renda não altera as quantidades demandadas — o que importa são preços relativos e renda real.
2. **Lei de Walras**: \(\mathbf{p} \cdot \mathbf{x}(\mathbf{p}, I) = I\). O consumidor gasta toda a renda.
3. **Negatividade do efeito substituição** (via equação de Slutsky — Capítulo 5).

As propriedades da demanda marshalliana revelam regularidades profundas do comportamento do consumidor. A homogeneidade de grau zero, por exemplo, expressa o princípio de que consumidores reagem a preços *relativos*, não nominais — um insight fundamental tanto para a teoria quanto para a compreensão de fenômenos como a ilusão monetária. A lei de Walras, por sua vez, confirma que, sob monotonicidade, o consumidor jamais "desperdiça" renda.

## 📋 Resumo do Capítulo

- O **problema do consumidor** consiste em maximizar a utilidade sujeita à restrição orçamentária \(p_1 x_1 + p_2 x_2 \leq I\). A solução interior exige **tangência** entre curva de indiferença e reta orçamentária: \(\text{TMS}_{12} = p_1/p_2\), ou equivalentemente, igualdade da utilidade marginal por real gasto em cada bem.
- O **método de Lagrange** generaliza a solução para \(n\) bens; o multiplicador \(\lambda\) é a **utilidade marginal da renda**. As **funções de demanda marshalliana** \(x_i(\mathbf{p}, I)\) resultantes são homogêneas de grau zero em preços e renda e satisfazem a lei de Walras.
- A **função de utilidade indireta** \(V(\mathbf{p}, I)\) expressa a utilidade máxima alcançável dados preços e renda. A **Identidade de Roy** recupera as demandas marshallianas a partir de \(V\).
- O **princípio do montante fixo** demonstra que um imposto *lump sum* causa menor perda de bem-estar que um imposto específico de mesma receita, pois não distorce preços relativos.
- O **problema dual** (minimização do dispêndio) determina o gasto mínimo para atingir um nível de utilidade \(\bar{u}\), gerando a **função dispêndio** \(E(\mathbf{p}, \bar{u})\) e as **demandas hicksianas** \(h_i(\mathbf{p}, \bar{u})\). O **Lema de Shephard** recupera as demandas hicksianas como derivadas da função dispêndio.
- A **dualidade** conecta os problemas primal e dual: \(V\) e \(E\) são inversas uma da outra (fixados os preços), e as demandas marshalliana e hicksiana se relacionam pelas identidades \(x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I))\).

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Restrição orçamentária | Conjunto de cestas acessíveis dado preços e renda: \(p_1 x_1 + p_2 x_2 \leq I\). A inclinação da reta orçamentária (\(-p_1/p_2\)) é o custo de oportunidade do bem 1 em termos do bem 2. |
| Condição de tangência | No ótimo interior, a TMS iguala a razão de preços: a taxa de troca subjetiva coincide com a taxa de troca objetiva do mercado. |
| Demanda marshalliana (walrasiana) | Quantidade ótima de cada bem como função dos preços e da renda: \(x_i^* = x_i(\mathbf{p}, I)\). Homogênea de grau zero em \((\mathbf{p}, I)\). |
| Utilidade marginal da renda (\(\lambda\)) | Multiplicador de Lagrange do problema do consumidor; mede o ganho de utilidade por unidade monetária adicional de renda. |
| Função de utilidade indireta \(V(\mathbf{p}, I)\) | Utilidade máxima alcançável dados preços e renda. Não crescente em preços, não decrescente em renda. |
| Identidade de Roy | Recupera a demanda marshalliana a partir de \(V\): \(x_i = -\frac{\partial V/\partial p_i}{\partial V/\partial I}\). |
| Princípio do montante fixo | Um imposto *lump sum* gera utilidade pelo menos igual à de um imposto específico de mesma receita, pois preserva preços relativos. |
| Demanda hicksiana (compensada) | Quantidade que minimiza o gasto para atingir utilidade \(\bar{u}\): \(h_i(\mathbf{p}, \bar{u})\). Satisfaz a lei da demanda compensada (\(\partial h_i/\partial p_i \leq 0\)). |
| Função dispêndio \(E(\mathbf{p}, \bar{u})\) | Gasto mínimo para atingir utilidade \(\bar{u}\) aos preços vigentes. Homogênea de grau 1 em preços e côncava em preços. |
| Lema de Shephard | A derivada da função dispêndio em relação a \(p_i\) fornece a demanda hicksiana: \(\partial E/\partial p_i = h_i(\mathbf{p}, \bar{u})\). |

---

## 🎯 Exercícios Resolvidos

Os exercícios resolvidos a seguir aplicam os conceitos desenvolvidos neste capítulo. Recomenda-se tentar resolver cada exercício antes de consultar a solução.

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

## 4.4 Função de Utilidade Indireta

As demandas marshallianas nos dizem *o que* o consumidor compra dados preços e renda. Mas há uma pergunta igualmente importante: *quão satisfeito* ele fica? Se os preços sobem ou a renda cai, qual é o impacto sobre o bem-estar máximo alcançável? A resposta a essas perguntas é dada pela **função de utilidade indireta**, que sintetiza em uma única expressão a relação entre as condições de mercado (preços e renda) e o nível ótimo de satisfação do consumidor.

!!! definition "Função de utilidade indireta"
    A **função de utilidade indireta** é o valor ótimo da utilidade como função dos preços e da renda:

    \[
    V(p_1, p_2, I) = u\big(x_1^*(p_1, p_2, I), \; x_2^*(p_1, p_2, I)\big) = \max_{\mathbf{x} \in B(\mathbf{p}, I)} u(\mathbf{x}). \tag{4.4.10}
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

Com a função de utilidade indireta em mãos, estamos em condições de analisar uma das questões mais relevantes da microeconomia aplicada a políticas públicas. Antes de apresentar o resultado formal, considere a seguinte pergunta de política pública: se o governo precisa arrecadar uma determinada receita de um consumidor, qual tipo de imposto causa **menor perda de bem-estar**? A resposta revela uma das implicações mais poderosas da teoria do consumidor.

!!! theorem "Proposição 4.1 — Princípio do montante fixo"
    Um imposto sobre a renda (montante fixo, *lump sum*) que arrecada a mesma receita que um imposto específico sobre um bem deixa o consumidor em um nível de utilidade **pelo menos tão alto** quanto o imposto específico.

**Intuição**: O imposto específico sobre o bem 1 (digamos, de valor \(t\) por unidade) altera a razão de preços, distorcendo a escolha do consumidor. O imposto *lump sum* equivalente desloca a reta orçamentária paralelamente, sem distorcer preços relativos. O consumidor enfrenta a mesma redução de poder aquisitivo, mas pode realocar livremente entre os bens.

Formalmente, seja a cesta ótima sob o imposto específico \((x_1^t, x_2^t)\). A receita arrecadada é \(R = t \cdot x_1^t\). Sob o imposto *lump sum* de valor \(R\), a restrição orçamentária é:

\[
p_1 x_1 + p_2 x_2 = I - R.
\]

A cesta \((x_1^t, x_2^t)\) satisfaz esta restrição (verifique!), mas não é necessariamente ótima sob ela, pois os preços relativos são diferentes. Logo, a cesta ótima sob o *lump sum* produz utilidade pelo menos igual.

!!! note "Limitações do princípio"
    O resultado pressupõe informação perfeita, ausência de custos administrativos e que o imposto *lump sum* seja viável. Na prática, impostos *lump sum* são frequentemente considerados injustos ou politicamente inviáveis. A tributação ótima (Ramsey, Mirrlees) busca conciliar eficiência e equidade sob restrições informacionais.

<iframe src="../graficos/cap04/lump-sum-principle.html" title="Figura 4.3" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 4.3** — Princípio do Montante Fixo (*Lump Sum*). Compare o imposto unitário com o imposto lump sum de mesma receita. Note que o lump sum sempre gera utilidade igual ou superior.
</div>

!!! box-brasil "Box Brasil — Subsídio ao gás de cozinha: lump sum vs. controle de preço"
    O debate entre transferência direta e subsídio a preços tem um exemplo emblemático no Brasil: o gás de cozinha (GLP). Durante anos, o governo subsidiou o preço do GLP diretamente, o que beneficiava todos os consumidores, inclusive os de alta renda. A partir de 2016, com o programa Gás para Todos (e depois o Auxílio Gás, criado em 2021), o governo passou a adotar uma transferência monetária direta às famílias inscritas no [Cadastro Único](https://www.gov.br/mds).

    Do ponto de vista do princípio do montante fixo, a mudança vai na direção correta. O subsídio ao preço distorce preços relativos, incentivando consumo excessivo de GLP em relação a outras fontes de energia. A transferência direta, por não alterar o preço relativo do gás, permite que a família aloque os recursos conforme suas preferências, gerando utilidade pelo menos igual — e tipicamente maior — para a mesma despesa pública.

    Em 2023, o Auxílio Gás beneficiava cerca de 5,6 milhões de famílias, com valor equivalente a no mínimo 50% do preço médio nacional de referência do botijão de 13 kg, pago a cada dois meses. Essa política combina o princípio teórico da superioridade de transferências *lump sum* com a focalização nos mais vulneráveis.

    **Fonte**: Ministério do Desenvolvimento e Assistência Social; Lei nº 14.237/2021 (Auxílio Gás).

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

---

## 4.6 Minimização do Dispêndio — O Problema Dual

Até aqui, formulamos o problema do consumidor de uma única maneira: dado um orçamento fixo, maximizar a utilidade. Mas existe uma forma alternativa — e igualmente poderosa — de pensar sobre a mesma decisão. Em vez de perguntar "qual a maior satisfação que posso obter com esta renda?", o consumidor pode perguntar: "qual é o **menor gasto** necessário para atingir um nível de satisfação pré-especificado?" Esse é o problema dual, e sua formulação abre caminho para conceitos fundamentais como a demanda hicksiana e a função dispêndio — ferramentas indispensáveis para a análise de bem-estar e a decomposição de efeitos de preço que veremos no Capítulo 5.

O **dual** do problema de maximização da utilidade é, portanto, o problema de **minimização do dispêndio** (ou minimização do gasto):

\[
\min_{x_1, x_2} \; p_1 x_1 + p_2 x_2 \quad \text{sujeito a} \quad u(x_1, x_2) \geq \bar{u}, \quad x_1 \geq 0, \quad x_2 \geq 0. \tag{4.6.11}
\]

O consumidor busca a forma mais barata de atingir um nível de utilidade pré-especificado \(\bar{u}\).

O lagrangeano do problema dual é:

\[
\mathcal{L} = p_1 x_1 + p_2 x_2 + \lambda \left(\bar{u} - u(x_1, x_2)\right).
\]

As CPOs para solução interior são:

\[
p_i = \lambda \frac{\partial u}{\partial x_i}, \quad i = 1, 2,
\]

\[
u(x_1, x_2) = \bar{u}.
\]

Dividindo as CPOs dos bens 1 e 2:

\[
\frac{p_1}{p_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \text{TMS}_{12}. \tag{4.6.12}
\]

A condição de tangência é **idêntica** à do problema primal, confirmando a equivalência entre os dois problemas. Esse resultado não é uma coincidência: primal e dual são duas perspectivas sobre a mesma decisão ótima, e o ponto de tangência entre a curva de indiferença e a reta orçamentária permanece o mesmo, independentemente de qual dos dois problemas se resolve.

### Demanda Hicksiana (Compensada)

A solução do problema de minimização define as **funções de demanda hicksiana** (ou compensada):

\[
h_i = h_i(p_1, p_2, \bar{u}), \quad i = 1, 2. \tag{4.6.13}
\]

A demanda hicksiana recebe o nome de "compensada" porque mantém o nível de utilidade fixo — como se o consumidor fosse **compensado** por variações de preço de modo a permanecer na mesma curva de indiferença.

!!! info "🏅 Prêmio Nobel — John R. Hicks (1972)"

    **John Richard Hicks** (1904–1989) foi um economista britânico, formado na Universidade de Oxford. Foi professor em Manchester, Oxford e na London School of Economics. Dividiu o Nobel com Kenneth Arrow.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à teoria do equilíbrio geral e à teoria do bem-estar. Hicks desenvolveu a decomposição dos efeitos de preço em efeito substituição e efeito renda, e introduziu os conceitos de variação compensatória e variação equivalente como medidas monetárias de bem-estar.

    **Conexão com este capítulo:**
    A demanda hicksiana (compensada) é o pilar da abordagem dual apresentada neste capítulo. A distinção entre demandas marshalliana e hicksiana, o Lema de Shephard e a equação de Slutsky — todos formalizados ou inspirados pelo trabalho de Hicks — constituem a estrutura analítica central do capítulo.

**Propriedades da demanda hicksiana**:

1. **Homogênea de grau zero em \(\mathbf{p}\)**: multiplicar todos os preços pelo mesmo fator não altera as quantidades compensadas.
2. **Lei da demanda compensada**: \(\partial h_i / \partial p_i \leq 0\). A demanda hicksiana é não crescente no próprio preço — não há efeito renda para confundir o resultado.
3. **Simetria e semidefinição negativa** da matriz de Slutsky: \(\partial h_i / \partial p_j = \partial h_j / \partial p_i\).

---

## 4.7 Função Dispêndio

Assim como a função de utilidade indireta sintetiza o *valor ótimo* do problema primal (a utilidade máxima dados preços e renda), a **função dispêndio** sintetiza o valor ótimo do problema dual: o gasto mínimo necessário para atingir um determinado nível de utilidade. Juntas, essas duas funções formam um par dual que será a base de toda a análise de bem-estar desenvolvida no Capítulo 5.

!!! definition "Função dispêndio"
    A **função dispêndio** é o custo mínimo de atingir o nível de utilidade \(\bar{u}\) aos preços vigentes:

    \[
    E(p_1, p_2, \bar{u}) = p_1 \, h_1(p_1, p_2, \bar{u}) + p_2 \, h_2(p_1, p_2, \bar{u}) = \min_{\mathbf{x}: u(\mathbf{x}) \geq \bar{u}} \mathbf{p} \cdot \mathbf{x}. \tag{4.7.14}
    \]

**Propriedades de \(E(\mathbf{p}, \bar{u})\)**:

1. **Homogênea de grau 1 em \(\mathbf{p}\)**: se todos os preços dobram, o gasto mínimo dobra.
2. **Não decrescente em cada \(p_i\)**: preços maiores implicam gasto maior para o mesmo nível de utilidade.
3. **Estritamente crescente em \(\bar{u}\)**: atingir maior utilidade custa mais.
4. **Côncava em \(\mathbf{p}\)**: esta propriedade é fundamental e reflete o fato de que o consumidor pode realocar consumo quando preços mudam. Quando um preço sobe, o consumidor substitui em favor de bens mais baratos, de modo que o gasto total cresce menos do que proporcionalmente.
5. **Lema de Shephard**: \(\dfrac{\partial E}{\partial p_i} = h_i(\mathbf{p}, \bar{u})\). A derivada da função dispêndio em relação ao preço \(p_i\) fornece a demanda hicksiana do bem \(i\).

!!! tip "Exemplo: Cobb-Douglas"
    Para \(u = x_1^a x_2^b\) com \(a + b = 1\), a função dispêndio é:

    \[
    E(p_1, p_2, \bar{u}) = \left(\frac{p_1}{a}\right)^a \left(\frac{p_2}{b}\right)^b \cdot \bar{u}.
    \]

    As demandas hicksianas obtidas pelo Lema de Shephard são:

    \[
    h_1 = \frac{\partial E}{\partial p_1} = a \left(\frac{p_1}{a}\right)^{a-1} \left(\frac{p_2}{b}\right)^b \cdot \bar{u} \cdot \frac{1}{a} = \left(\frac{p_2}{p_1}\right)^b \cdot \left(\frac{a}{b}\right)^{b} \cdot \bar{u}.
    \]

---

## 4.8 Dualidade entre Utilidade Indireta e Função Dispêndio

Apresentamos até aqui a função de utilidade indireta \(V\) (que nasce do problema primal) e a função dispêndio \(E\) (que nasce do problema dual). Mas qual é a relação precisa entre essas duas funções? A resposta é uma das ideias mais elegantes da teoria do consumidor: \(V\) e \(E\) são **inversas** uma da outra — e as identidades que formalizam essa relação constituem o elo central de toda a estrutura dual. As seguintes identidades conectam \(V\) e \(E\):

\[
V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u} \qquad \text{(a renda mínima para atingir } \bar{u} \text{ gera utilidade exatamente } \bar{u}\text{)}, \tag{4.8.15}
\]

\[
E(\mathbf{p}, V(\mathbf{p}, I)) = I \qquad \text{(o custo mínimo de atingir a utilidade máxima com renda } I \text{ é exatamente } I\text{)}. \tag{4.8.16}
\]

Essas identidades implicam que \(V(\mathbf{p}, \cdot)\) e \(E(\mathbf{p}, \cdot)\) são **inversas** uma da outra (fixados os preços).

!!! idea "Intuição Econômica"
    **Em uma frase:** Maximizar a felicidade com um orçamento fixo e minimizar o gasto para atingir uma felicidade fixa são dois lados da mesma moeda.

    **Pense assim:** Pense em um estudante que quer montar a melhor marmita possível com R$ 15 (problema primal). Ou, alternativamente, quer gastar o mínimo para montar uma marmita tão boa quanto a que comeu ontem (problema dual). Nos dois casos, ele escolhe os mesmos ingredientes no mesmo ponto de tangência — só muda a pergunta.

    **Por que isso importa:** A dualidade permite construir medidas de bem-estar (variação compensatória e equivalente) que são essenciais para avaliar políticas públicas como reajustes de tarifas ou mudanças tributárias.

<iframe src="../graficos/cap04/dualidade.html" title="Figura 4.4 — Dualidade: Maximização de Utilidade vs" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 4.4 — Dualidade: Maximização de Utilidade vs.** Minimização do Dispêndio. Alterne entre os problemas primal e dual. Observe que o mesmo ponto de tangência resolve ambos, e que as identidades de dualidade se verificam numericamente.
</div>

Além disso, as demandas marshalliana e hicksiana estão relacionadas:

\[
x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I)), \tag{4.8.17}
\]

\[
h_i(\mathbf{p}, \bar{u}) = x_i(\mathbf{p}, E(\mathbf{p}, \bar{u})). \tag{4.8.18}
\]

A primeira identidade diz que avaliar a demanda hicksiana no nível de utilidade ótimo reproduz a demanda marshalliana. A segunda diz que avaliar a demanda marshalliana na renda mínima necessária reproduz a demanda hicksiana.

??? exercicio-resolvido "Exercício Resolvido 4.3"
    **Enunciado:** Para um consumidor com \(u(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), \(p_1 = 4\), \(p_2 = 1\) e \(I = 100\), verifique as duas identidades de dualidade.

    **Dados:** \(a = b = 1/2\), \(p_1 = 4\), \(p_2 = 1\), \(I = 100\).

    **Resolução:**

    **Passo 1 — Calcular a demanda marshalliana e \(V\)**

    \(x_1^* = \frac{0{,}5 \times 100}{4} = 12{,}5\), \(x_2^* = \frac{0{,}5 \times 100}{1} = 50\).

    \(V = \sqrt{12{,}5 \times 50} = \sqrt{625} = 25\).

    **Passo 2 — Calcular a função dispêndio e verificar \(E(\mathbf{p}, V) = I\)**

    \(E = (p_1/a)^a (p_2/b)^b \cdot \bar{u} = (4/0{,}5)^{0{,}5} (1/0{,}5)^{0{,}5} \cdot 25 = \sqrt{8} \cdot \sqrt{2} \cdot 25 = 4 \cdot 25 = 100\) ✓

    **Passo 3 — Verificar \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\)**

    Tomando \(\bar{u} = 25\): \(E = 100\), e já vimos que \(V(4, 1, 100) = 25 = \bar{u}\) ✓

    **Resultado:** Ambas as identidades se verificam: \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\) e \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\).

    **Interpretação econômica:** A dualidade mostra que maximizar utilidade com renda \(I\) e minimizar gasto para atingir a utilidade \(V\) são dois lados da mesma moeda. Essa equivalência é a base para construir medidas de variação de bem-estar (variação compensatória e equivalente) que serão tratadas no Capítulo 5.

---

## 4.9 Identidade de Roy

As identidades de dualidade da seção anterior revelam que \(V\) e \(E\) contêm, de forma compacta, *toda* a informação sobre o comportamento do consumidor. Mas será que é possível extrair dessa informação as próprias funções de demanda — sem precisar resolver novamente o problema de otimização? A resposta é afirmativa, e o resultado que formaliza essa "engenharia reversa" é a célebre **Identidade de Roy**. Ela permite recuperar as demandas marshallianas diretamente a partir das derivadas parciais da função de utilidade indireta.

!!! theorem "Teorema 4.1 — Identidade de Roy"
    Se \(V(\mathbf{p}, I)\) é diferenciável em \((\mathbf{p}, I)\) e \(\partial V / \partial I \neq 0\), então a demanda marshalliana do bem \(i\) é dada por:

    \[
    x_i(\mathbf{p}, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}. \tag{4.9.19}
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

!!! idea "Intuição Econômica"
    **Em uma frase:** A Identidade de Roy diz que, se você sabe como a satisfação máxima reage a preços e renda, já consegue recuperar a demanda — sem resolver o problema de otimização de novo.

    **Pense assim:** É como se o extrato bancário (utilidade indireta) já contivesse toda a informação sobre o que você comprou. A Identidade de Roy é a "fórmula de engenharia reversa" que recupera o carrinho de compras a partir do extrato. O Lema de Shephard faz o mesmo truque partindo da função dispêndio.

    **Por que isso importa:** Na prática empírica, muitas vezes o pesquisador estima primeiro a função de utilidade indireta ou a função dispêndio, e depois usa Roy ou Shephard para obter as demandas — é mais fácil do que resolver o problema de otimização diretamente.

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

## 4.11 — Funções do Consumidor

| Função | Definição | Argumentos | Propriedades principais |
|---|---|---|---|
| Utilidade direta \(u(\mathbf{x})\) | Nível de satisfação da cesta \(\mathbf{x}\) | Quantidades \(\mathbf{x}\) | Ordinal; contínua; quase-côncava |
| Demanda marshalliana \(x_i(\mathbf{p}, I)\) | Cesta ótima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0 em \((\mathbf{p}, I)\); Lei de Walras |
| Utilidade indireta \(V(\mathbf{p}, I)\) | Utilidade máxima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0; decrescente em \(\mathbf{p}\); crescente em \(I\); quase-convexa em \(\mathbf{p}\) |
| Demanda hicksiana \(h_i(\mathbf{p}, \bar{u})\) | Cesta de custo mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 0 em \(\mathbf{p}\); \(\partial h_i/\partial p_i \leq 0\) |
| Função dispêndio \(E(\mathbf{p}, \bar{u})\) | Gasto mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 1 em \(\mathbf{p}\); côncava em \(\mathbf{p}\); Lema de Shephard |

<div class="caption-obj" markdown>
**Tabela 4.1 — Funções do consumidor.**
</div>

**Relações fundamentais**:

- \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\)
- Roy: \(x_i = -(\partial V/\partial p_i) / (\partial V/\partial I)\)
- Shephard: \(h_i = \partial E / \partial p_i\)
- Conexão: \(x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I))\)

---

## 4.10 Demandas por Tipo de Função Utilidade

As seções anteriores desenvolveram a teoria geral: o Lagrangeano, a dualidade, as identidades de Roy e Shephard. Agora é hora de colocar essa maquinaria para funcionar. Nesta seção, derivamos as demandas marshallianas e hicksianas para as principais formas funcionais apresentadas no Capítulo 3 — Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES e quase-linear. Para cada tipo, apresentamos o problema de otimização completo, o lagrangeano, as condições de primeira ordem e as soluções em forma fechada. O objetivo é duplo: consolidar o domínio técnico do método e desenvolver a intuição sobre como diferentes estruturas de preferências se traduzem em diferentes padrões de demanda.

### 4.10.1 Cobb-Douglas: U(x₁, x₂) = x₁ᵃ x₂ᵇ

A função Cobb-Douglas é o caso mais tratável e serve de *benchmark* para as demais.

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; x_1^a x_2^b \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

O Lagrangeano é:

\[
\mathcal{L} = x_1^a x_2^b + \lambda(I - p_1 x_1 - p_2 x_2)
\]

Condições de primeira ordem (CPOs):

\[
\frac{\partial \mathcal{L}}{\partial x_1} = a x_1^{a-1} x_2^b - \lambda p_1 = 0
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = b x_1^a x_2^{b-1} - \lambda p_2 = 0
\]

Dividindo a primeira CPO pela segunda, eliminamos \(\lambda\):

\[
\frac{a x_2}{b x_1} = \frac{p_1}{p_2} \quad \Longrightarrow \quad x_2 = \frac{b\, p_1}{a\, p_2}\, x_1
\]

Substituindo na restrição orçamentária:

\[
p_1 x_1 + p_2 \cdot \frac{b\, p_1}{a\, p_2}\, x_1 = I \quad \Longrightarrow \quad p_1 x_1 \left(1 + \frac{b}{a}\right) = I \quad \Longrightarrow \quad p_1 x_1 \cdot \frac{a+b}{a} = I
\]

Portanto, as **demandas marshallianas** são:

\[
\boxed{x_1^* = \frac{a}{a+b}\,\frac{I}{p_1}, \qquad x_2^* = \frac{b}{a+b}\,\frac{I}{p_2}} \tag{4.10.20}
\]

O consumidor gasta a fração \(a/(a+b)\) da renda no bem 1 e \(b/(a+b)\) no bem 2. Quando \(a+b=1\), as frações coincidem com os expoentes.

**Utilidade indireta.** Substituindo as demandas na função utilidade:

\[
V(p_1,p_2,I) = \left(\frac{a}{a+b}\right)^a \left(\frac{b}{a+b}\right)^b \frac{I^{a+b}}{p_1^a\, p_2^b} \tag{4.10.21}
\]

**Demanda Hicksiana.** O consumidor resolve o dual:

\[
\min_{x_1,x_2} \; p_1 x_1 + p_2 x_2 \quad \text{s.a.} \quad x_1^a x_2^b = \bar{u}
\]

O Lagrangeano é \(\mathcal{L} = p_1 x_1 + p_2 x_2 + \lambda(\bar{u} - x_1^a x_2^b)\). As CPOs fornecem a mesma condição de tangência \(a x_2/(b x_1) = p_1/p_2\). Substituindo na restrição de utilidade:

\[
x_1^a \left(\frac{b\, p_1}{a\, p_2}\, x_1\right)^b = \bar{u} \quad \Longrightarrow \quad x_1^{a+b} \left(\frac{b\, p_1}{a\, p_2}\right)^b = \bar{u}
\]

Resolvendo para \(x_1\):

\[
\boxed{h_1 = \bar{u}^{\,1/(a+b)} \left(\frac{a\, p_2}{b\, p_1}\right)^{b/(a+b)}, \qquad h_2 = \bar{u}^{\,1/(a+b)} \left(\frac{b\, p_1}{a\, p_2}\right)^{a/(a+b)}} \tag{4.10.22}
\]

**Função dispêndio.** Avaliando o gasto mínimo:

\[
E(\mathbf{p}, \bar{u}) = p_1 h_1 + p_2 h_2 = \bar{u}^{\,1/(a+b)} \left(\frac{a+b}{a^a b^b}\right)^{1/(a+b)} p_1^{a/(a+b)}\, p_2^{b/(a+b)}
\]

*Verificação pelo Lema de Shephard*: \(\partial E/\partial p_1 = h_1\) ✓

### 4.10.2 Preferências Lineares (Substitutos Perfeitos): U = ax₁ + bx₂

Passemos agora ao caso diametralmente oposto ao da Cobb-Douglas em termos de substituibilidade. Com preferências lineares, as curvas de indiferença são retas com inclinação \(-a/b\), e a TMS é constante. A elasticidade de substituição é \(\sigma \to \infty\). Esse caso ilustra por que nem sempre o método de Lagrange fornece soluções interiores — e por que o formato das curvas de indiferença importa tanto quanto o método de solução.

**Demanda Marshalliana.** O consumidor compara a TMS com a razão de preços:

- Se \(\dfrac{a}{b} > \dfrac{p_1}{p_2}\): o bem 1 oferece mais utilidade por real gasto → solução de canto em \(x_1\)
- Se \(\dfrac{a}{b} < \dfrac{p_1}{p_2}\): o bem 2 é mais vantajoso → solução de canto em \(x_2\)
- Se \(\dfrac{a}{b} = \dfrac{p_1}{p_2}\): qualquer combinação sobre a reta orçamentária é ótima

Formalmente:

\[
\boxed{x_1^* = \begin{cases} I/p_1 & \text{se } a/b > p_1/p_2 \\ 0 & \text{se } a/b < p_1/p_2 \\ \text{qualquer } x_1 \in [0, I/p_1] & \text{se } a/b = p_1/p_2 \end{cases}} \tag{4.10.23}
\]

A demanda é descontínua: uma pequena mudança em preços pode fazer o consumidor saltar de consumir apenas o bem 1 para apenas o bem 2.

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \max\left\{\frac{a\, I}{p_1},\; \frac{b\, I}{p_2}\right\} = I \cdot \max\left\{\frac{a}{p_1},\; \frac{b}{p_2}\right\}
\]

**Demanda Hicksiana.** Para minimizar o gasto atingindo \(\bar{u}\), o consumidor escolhe o bem mais barato por unidade de utilidade:

\[
\boxed{h_1 = \begin{cases} \bar{u}/a & \text{se } p_1/a < p_2/b \\ 0 & \text{se } p_1/a > p_2/b \end{cases}}
\]

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = \bar{u} \cdot \min\left\{\frac{p_1}{a},\; \frac{p_2}{b}\right\}
\]

### 4.10.3 Preferências Leontief (Complementares Perfeitos): U = min{x₁/a, x₂/b}

No outro extremo do espectro de substituibilidade, encontramos os complementares perfeitos. Com preferências Leontief, as curvas de indiferença têm formato de "L" com vértice na reta \(x_1/a = x_2/b\). A elasticidade de substituição é \(\sigma = 0\): não há margem para substituição entre os bens. Aqui, o método de Lagrange padrão não se aplica diretamente (a função não é diferenciável no vértice), mas a solução segue de um argumento econômico simples.

**Demanda Marshalliana.** No ótimo, o consumidor sempre consome no vértice da curva de indiferença, onde \(x_1/a = x_2/b\). Caso contrário, estaria desperdiçando renda com excesso de um dos bens. Da condição de vértice:

\[
x_2 = \frac{b}{a}\, x_1
\]

Substituindo na restrição orçamentária:

\[
p_1 x_1 + p_2 \cdot \frac{b}{a}\, x_1 = I \quad \Longrightarrow \quad x_1 \left(p_1 + \frac{b}{a}\, p_2\right) = I
\]

\[
\boxed{x_1^* = \frac{a\, I}{a\, p_1 + b\, p_2}, \qquad x_2^* = \frac{b\, I}{a\, p_1 + b\, p_2}} \tag{4.10.24}
\]

Note que a demanda depende de *ambos* os preços — uma redução em \(p_1\) aumenta a demanda por *ambos* os bens, pois eles são sempre consumidos juntos na proporção \(a:b\).

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \frac{I}{a\, p_1 + b\, p_2}
\]

**Demanda Hicksiana.** Para atingir utilidade \(\bar{u}\), o consumidor precisa exatamente \(x_1 = a\bar{u}\) e \(x_2 = b\bar{u}\). Qualquer outra combinação ou não atinge \(\bar{u}\) ou gasta mais. Portanto:

\[
\boxed{h_1 = a\,\bar{u}, \qquad h_2 = b\,\bar{u}}
\]

As demandas hicksianas são **independentes dos preços** — o efeito substituição é zero, coerente com \(\sigma = 0\).

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = (a\, p_1 + b\, p_2)\,\bar{u}
\]

A função dispêndio é linear nos preços — não há curvatura porque não há substituição.

### 4.10.4 CES: U(x₁, x₂) = (a x₁ᵖ + b x₂ᵖ)¹ᐟᵖ

Após derivar separadamente os casos Cobb-Douglas, substitutos e complementos perfeitos, estamos em condições de apresentar a família que os unifica. A função CES (*Constant Elasticity of Substitution*) generaliza os três casos anteriores, e suas demandas oferecem uma visão integrada de como o grau de substituibilidade entre bens afeta o comportamento do consumidor. O parâmetro \(\rho \in (-\infty, 1]\setminus\{0\}\) determina a elasticidade de substituição \(\sigma = 1/(1-\rho)\):

| \(\rho\) | \(\sigma\) | Caso limite |
|-----------|-----------|-------------|
| \(\rho \to 1\) | \(\sigma \to \infty\) | Substitutos perfeitos |
| \(\rho \to 0\) | \(\sigma \to 1\) | Cobb-Douglas |
| \(\rho \to -\infty\) | \(\sigma \to 0\) | Complementares perfeitos |

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; (a\, x_1^\rho + b\, x_2^\rho)^{1/\rho} \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

O Lagrangeano é:

\[
\mathcal{L} = (a\, x_1^\rho + b\, x_2^\rho)^{1/\rho} + \lambda(I - p_1 x_1 - p_2 x_2)
\]

As CPOs são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{1}{\rho}(a\, x_1^\rho + b\, x_2^\rho)^{1/\rho - 1} \cdot \rho\, c_i\, x_i^{\rho-1} - \lambda p_i = 0
\]

onde \(c_1 = a\) e \(c_2 = b\). Simplificando e dividindo a CPO de \(x_1\) pela de \(x_2\):

\[
\frac{a\, x_1^{\rho-1}}{b\, x_2^{\rho-1}} = \frac{p_1}{p_2} \quad \Longrightarrow \quad \left(\frac{x_1}{x_2}\right)^{\rho-1} = \frac{p_1\, b}{p_2\, a}
\]

Como \(\rho - 1 = -1/\sigma\), elevando ambos os lados a \(-\sigma\):

\[
\frac{x_1}{x_2} = \left(\frac{a\, p_2}{b\, p_1}\right)^\sigma = \left(\frac{a}{b}\right)^\sigma \left(\frac{p_1}{p_2}\right)^{-\sigma}
\]

Portanto \(x_1 = x_2 \cdot (a/b)^\sigma \cdot (p_1/p_2)^{-\sigma}\). Substituindo na restrição orçamentária e resolvendo, definimos o **índice de preços CES**:

\[
P \equiv \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{1/(1-\sigma)} \tag{4.10.25}
\]

As **demandas marshallianas** podem ser escritas de forma compacta:

\[
\boxed{x_i^* = \frac{a_i^\sigma\, p_i^{-\sigma}}{P^{1-\sigma}}\, I = a_i^\sigma\, p_i^{-\sigma}\, P^{\sigma-1}\, I} \tag{4.10.26}
\]

onde \(a_1 = a\), \(a_2 = b\). Equivalentemente:

\[
x_1^* = \frac{a^\sigma\, p_1^{-\sigma}\, I}{a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}}, \qquad x_2^* = \frac{b^\sigma\, p_2^{-\sigma}\, I}{a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}}
\]

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \frac{I}{P} = I \cdot \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{-1/(1-\sigma)}
\]

**Demanda Hicksiana.** Pelo Lema de Shephard aplicado à função dispêndio:

\[
\boxed{h_i = a_i^\sigma\, p_i^{-\sigma}\, P^{\sigma-1}\, \bar{u}}
\]

As demandas hicksianas têm a mesma estrutura das marshallianas, com \(\bar{u}\) substituindo \(I/P\).

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = P \cdot \bar{u} = \bar{u} \cdot \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{1/(1-\sigma)}
\]

!!! info "Casos limite da CES"
    - Quando \(\rho \to 0\) (\(\sigma \to 1\)), a CES converge para a Cobb-Douglas com expoentes proporcionais a \(a\) e \(b\). O índice \(P\) converge para \(\text{const} \cdot p_1^{a/(a+b)} p_2^{b/(a+b)}\).
    - Quando \(\rho \to 1\) (\(\sigma \to \infty\)), o consumidor substitui perfeitamente entre os bens e consome apenas o mais barato por unidade de utilidade.
    - Quando \(\rho \to -\infty\) (\(\sigma \to 0\)), não há substituição e o consumidor consome na proporção fixa \(a:b\).

### 4.10.5 Quase-linear: U(x₁, x₂) = v(x₁) + x₂

Por fim, retornamos à utilidade quase-linear, cuja estrutura singular — a ausência de efeito renda sobre um dos bens — produz simplificações notáveis nas funções de demanda. A utilidade quase-linear combina uma função côncava \(v(x_1)\) com um termo linear em \(x_2\), onde o bem 2 funciona como numerário (Seção 3.6.5).

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; v(x_1) + x_2 \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

A CPO para solução interior é:

\[
v'(x_1) = \frac{p_1}{p_2} \tag{4.10.27}
\]

Como \(v'' < 0\), a CPO define implicitamente \(x_1^* = (v')^{-1}(p_1/p_2)\), que **não depende da renda**. O bem 2 absorve toda a variação de renda:

\[
\boxed{x_1^* = (v')^{-1}\!\left(\frac{p_1}{p_2}\right), \qquad x_2^* = \frac{I - p_1 x_1^*}{p_2}} \tag{4.10.28}
\]

!!! warning "Condição de solução interior"
    A solução interior requer \(x_2^* > 0\), ou seja, \(I > p_1 x_1^*\). Se a renda for insuficiente, a solução de canto é \(x_2 = 0\) e \(x_1 = I/p_1\).

**Exemplo: \(v(x_1) = 2\sqrt{x_1}\).** A CPO é \(1/\sqrt{x_1} = p_1/p_2\), logo:

\[
x_1^* = \frac{p_2^2}{p_1^2}, \qquad x_2^* = \frac{I}{p_2} - \frac{p_2}{p_1}
\]

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = v(x_1^*) + x_2^* = v\!\left((v')^{-1}\!\left(\frac{p_1}{p_2}\right)\right) + \frac{I - p_1 (v')^{-1}(p_1/p_2)}{p_2}
\]

Note que \(V\) é **linear** em \(I\): \(\partial V / \partial I = 1/p_2\), a utilidade marginal da renda é constante.

**Demanda Hicksiana.** A minimização do dispêndio gera a mesma CPO para \(x_1\), logo:

\[
\boxed{h_1 = (v')^{-1}\!\left(\frac{p_1}{p_2}\right) = x_1^*, \qquad h_2 = \bar{u} - v(h_1)}
\]

As demandas marshalliana e hicksiana do bem 1 são **idênticas** — consequência direta do efeito renda nulo.

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = p_1 h_1 + p_2 h_2 = p_1 h_1 + p_2[\bar{u} - v(h_1)] = p_2 \bar{u} + p_1 h_1 - p_2 v(h_1)
\]

A função dispêndio é **linear** em \(\bar{u}\): \(\partial E / \partial \bar{u} = p_2\).

!!! info "Caminho de expansão da renda"
    Na utilidade quase-linear, o caminho de expansão da renda é uma **reta vertical** no espaço \((x_1, x_2)\): \(x_1\) permanece fixo em \((v')^{-1}(p_1/p_2)\) enquanto \(x_2\) cresce linearmente com \(I\). Contraste com as preferências homotéticas (§3.6.6), cujo caminho de expansão é uma reta passando pela **origem**.

??? exercicio-resolvido "Exercício Resolvido 4.4"
    **Enunciado:** Um consumidor tem preferências Leontief \(u(x_1, x_2) = \min\{2x_1, x_2\}\), com \(p_1 = 4\), \(p_2 = 2\) e \(I = 120\). (a) Encontre a cesta ótima. (b) Suponha que o governo conceda uma transferência de R$ 40. Qual é a nova cesta?

    **Dados:** \(a = 2\), \(b = 1\) (na forma \(\min\{ax_1, bx_2\}\)), \(p_1 = 4\), \(p_2 = 2\), \(I = 120\).

    **Resolução:**

    **Passo 1 — Encontrar a cesta ótima**

    No ótimo, \(2x_1 = x_2\). Substituindo na restrição: \(4x_1 + 2(2x_1) = 120 \Rightarrow 8x_1 = 120 \Rightarrow x_1^* = 15\), \(x_2^* = 30\).

    Utilidade: \(u^* = \min\{30, 30\} = 30\).

    **Passo 2 — Nova cesta com transferência de R$ 40**

    Nova renda: \(I' = 160\). A proporção não se altera: \(8x_1 = 160 \Rightarrow x_1^* = 20\), \(x_2^* = 40\).

    Utilidade: \(u^* = \min\{40, 40\} = 40\).

    **Resultado:** A transferência aumenta o consumo de ambos os bens proporcionalmente, de \((15, 30)\) para \((20, 40)\), e a utilidade sobe de 30 para 40.

    **Interpretação econômica:** Com complementares perfeitos, não há efeito substituição — a transferência se traduz integralmente em efeito renda, expandindo o consumo na mesma proporção fixa. Isso lembra o caso de bens que são naturalmente consumidos em proporções fixas, como arroz e feijão na dieta brasileira tradicional: um aumento de renda leva a família a consumir mais de ambos, sem alterar a proporção. Segundo a POF 2017–2018 do IBGE, a relação entre o consumo domiciliar per capita de arroz e feijão manteve-se relativamente estável em torno de 2:1 entre as diferentes faixas de renda.

---

Os cinco tipos de função utilidade analisados nesta seção cobrem a grande maioria das aplicações em microeconomia teórica e empírica. Na prática, a escolha da forma funcional envolve um *trade-off* entre tratabilidade analítica e realismo empírico — e os boxes a seguir ilustram como esses modelos se conectam a questões concretas de política pública no Brasil.

## 🇧🇷 Box Brasil: O Impacto do Bolsa Família na Restrição Orçamentária

!!! box-brasil "Box Brasil — Transferências condicionadas e escolhas de consumo"
    O Programa Bolsa Família (PBF), criado em 2003 e reestruturado como Auxílio Brasil em 2021 e novamente como Bolsa Família em 2023, constitui o maior programa de transferência condicionada de renda da América Latina, atingindo cerca de 21 milhões de famílias em 2023.

    **Efeito sobre a restrição orçamentária**: A transferência mensal \(T\) desloca a reta orçamentária paralelamente para cima, de \(p_1 x_1 + p_2 x_2 = I\) para \(p_1 x_1 + p_2 x_2 = I + T\). Note que, ao contrário de subsídios a bens específicos, a transferência em dinheiro **não altera preços relativos**, funcionando como um *lump sum*. Pelo princípio do montante fixo (Seção 4.5), essa forma de transferência é mais eficiente do que subsídios a bens específicos, permitindo ao beneficiário maximizar sua utilidade de acordo com suas preferências individuais.

    **Condicionalidades e o conjunto orçamentário**: As condicionalidades do PBF (frequência escolar, vacinação, acompanhamento pré-natal) introduzem restrições adicionais ao problema do consumidor. Do ponto de vista formal, o conjunto orçamentário deixa de ser um simples triângulo: a família deve alocar um montante mínimo em "bens meritórios" (educação, saúde) para receber a transferência. Isso cria uma descontinuidade no conjunto de possibilidades de consumo.

    **Evidências empíricas sobre padrões de consumo**:

    - Estudos do [IPEA](https://www.ipea.gov.br) mostram que famílias beneficiárias gastam proporcionalmente mais com **alimentação** (especialmente alimentos de maior qualidade nutricional) e **material escolar** do que famílias com renda similar não beneficiárias (Soares e Sátyro, 2009).
    - Evidências de Resende e Oliveira (2008) indicam que a propensão marginal a consumir dos beneficiários é elevada (acima de 0,80), consistente com a teoria microeconômica para famílias na faixa de renda onde a utilidade marginal da renda é alta.
    - A **diversificação da cesta de consumo** aumentou significativamente: famílias beneficiárias passaram a incluir frutas, verduras e proteínas animais com maior frequência, refletindo um deslocamento ao longo de curvas de indiferença em direção a cestas mais balanceadas.
    - Dados do Cadastro Único e da POF 2017–2018 mostram que a parcela de gastos com alimentação diminuiu de cerca de 45% para 38% entre beneficiários entre 2008 e 2018, indicando movimento ao longo da curva de Engel.

    Do ponto de vista da teoria do consumidor, o PBF exemplifica de forma concreta os conceitos de deslocamento da restrição orçamentária, eficiência de transferências *lump sum* e a relação entre renda e composição da cesta de consumo.

    **Fontes**: SOARES, F. V.; SÁTYRO, N. *O Programa Bolsa Família: desenho institucional, impactos e possibilidades futuras*. Texto para Discussão IPEA, n. 1424, 2009. RESENDE, A. C. C.; OLIVEIRA, A. M. H. C. Avaliando resultados de um programa de transferência de renda: o impacto do Bolsa-Escola sobre os gastos das famílias brasileiras. *Estudos Econômicos*, v. 38, n. 2, p. 235–265, 2008. [MDS](https://www.gov.br/mds) — Ministério do Desenvolvimento Social, dados administrativos.

!!! box-brasil "Box Brasil — Endividamento das famílias e a restrição orçamentária intertemporal"
    O crédito permite que famílias consumam além de sua renda corrente, expandindo a restrição orçamentária no presente à custa de contraí-la no futuro. No Brasil, o endividamento das famílias cresceu expressivamente nas últimas décadas. Segundo o [Banco Central do Brasil](https://www.bcb.gov.br) (BCB), o nível de endividamento das famílias — medido pela razão entre o saldo de dívidas com o Sistema Financeiro Nacional e a renda acumulada em 12 meses — alcançou 53,1% em meados de 2022, o maior patamar da série histórica.

    Do ponto de vista da teoria do consumidor, o acesso ao crédito modifica o conjunto orçamentário. Sem crédito, a restrição é \(p_1 x_1 + p_2 x_2 \leq I\). Com crédito a uma taxa de juros \(r\), a família pode consumir no presente um valor superior a \(I\), desde que o valor presente dos pagamentos futuros não exceda o valor presente da renda futura. A Pesquisa de Endividamento e Inadimplência do Consumidor (PEIC/[CNC](https://www.portaldocomercio.org.br)) indicou que, em 2022, 77,9% das famílias brasileiras possuíam algum tipo de dívida, sendo o cartão de crédito a principal modalidade.

    A elevada taxa de juros brasileira — com o cartão de crédito rotativo superando 440% ao ano em 2023 (BCB) — implica que o preço intertemporal do consumo presente é muito alto no Brasil comparado a outros países, estreitando severamente a restrição orçamentária futura das famílias endividadas.

    **Fonte**: BCB, Relatório de Economia Bancária, 2022; CNC, Pesquisa de Endividamento e Inadimplência do Consumidor (PEIC), 2022.

---

## ✏️ Exercícios

<a id="ex-4-1"></a>**Exercício 4.1.** Considere um consumidor com função de utilidade \(u(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), preços \(p_1\) e \(p_2\) e renda \(I\).

(a) Monte o lagrangeano e derive as condições de primeira ordem.

(b) Obtenha as funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

(c) Derive a função de utilidade indireta \(V(p_1, p_2, I)\).

(d) Verifique a Identidade de Roy para o bem 1.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-1)

---

<a id="ex-4-2"></a>**Exercício 4.2.** Para as mesmas preferências do exercício anterior:

(a) Formule e resolva o problema de minimização do dispêndio.

(b) Obtenha as demandas hicksianas \(h_1(p_1, p_2, \bar{u})\) e \(h_2(p_1, p_2, \bar{u})\).

(c) Derive a função dispêndio \(E(p_1, p_2, \bar{u})\).

(d) Verifique o Lema de Shephard para o bem 1.

(e) Verifique as identidades de dualidade \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\).

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-2)

---

<a id="ex-4-3"></a>**Exercício 4.3.** Um consumidor tem preferências representadas por \(u(x_1, x_2) = \min\{2x_1, x_2\}\), com \(p_1 = 4\), \(p_2 = 2\) e \(I = 120\).

(a) Encontre a cesta ótima. (Dica: no ótimo, \(2x_1 = x_2\).)

(b) Calcule a utilidade máxima.

(c) Qual seria a cesta ótima se a renda aumentasse para \(I = 180\)? Os bens são normais?

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-3)

---

<a id="ex-4-4"></a>**Exercício 4.4.** O governo está considerando duas políticas para arrecadar R\$ 100 de um consumidor com \(u(x_1, x_2) = x_1^{0,4} x_2^{0,6}\), \(p_1 = 10\), \(p_2 = 5\) e \(I = 1000\):

(a) **Política A**: imposto específico de \(t\) por unidade sobre o bem 1. Encontre \(t\) tal que a receita seja R\$ 100.

(b) **Política B**: imposto *lump sum* de R\$ 100.

(c) Compare os níveis de utilidade do consumidor sob as duas políticas. Qual é preferida pelo consumidor? Este resultado é consistente com o princípio do montante fixo?

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-4)

---

<a id="ex-4-5"></a>**Exercício 4.5.** Considere um consumidor com utilidade quase-linear \(u(x_1, x_2) = 2\sqrt{x_1} + x_2\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas. Sob quais condições a solução é interior?

(b) Mostre que a demanda pelo bem 1 é independente da renda (para soluções interiores). Interprete.

(c) Derive a função de utilidade indireta e a função dispêndio.

(d) Verifique que, para esse caso particular, as demandas marshalliana e hicksiana do bem 1 são **idênticas**. Explique por que isso ocorre.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 03"
    A maximização da função utilidade \(U(x, y) = \sqrt{xy}\), sujeita à restrição orçamentária \(xp_x + yp_y = R\), sendo \(R\) a renda exógena e \(p_i\), \(i = 1, 2\), os preços dos bens, gera as seguintes funções de demanda marshallianas: \(X(p_x, p_y, R) = \frac{1}{2}\frac{R}{p_x}\) e \(Y(p_x, p_y, R) = \frac{1}{2}\frac{R}{p_y}\). Avalie as assertivas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Como a demanda pelo bem \(x\) não depende do preço \(y\), aumentos deste último não afetarão a demanda por \(x\), mesmo com a renda gasta integralmente com os dois bens. |
    | 1    | Quando os preços dos dois bens forem \$2 e a renda igual a \$4, a função utilidade indireta assume o valor \(V(p_x, p_y, R) = 1\). |
    | 2    | O exercício de minimização do gasto \(\min\; xp_x + yp_y\), sujeito a \(U = \sqrt{xy}\), resulta em uma função demanda compensada ou hicksiana pelo bem \(x\) dada por \(h_x(p_x, p_y, U) = \sqrt{p_x/p_y} \cdot U\). |
    | 3    | A função gasto resultante do item anterior será \(e(p_x, p_y, U) = 2U\sqrt{p_x p_y}\), expressão que indica que preços maiores e utilidade maiores requerem gasto maior. |
    | 4    | Em relação à Equação de Slutsky, o efeito substituição (ES) será equivalente a \(ES = \frac{\partial h_x}{\partial p_x} = -\frac{1}{4}\frac{R}{p_x^2}\). |

    ??? success "Gabarito"
        **Respostas: 11010**

        **Justificativa por item:**

        - **Item 0 — V:** As demandas marshallianas são \(x = R/(2p_x)\) e \(y = R/(2p_y)\). Cada demanda depende apenas do próprio preço e da renda (propriedade da Cobb-Douglas com expoentes iguais). Um aumento em \(p_y\) não altera \(x^*\), pois a elasticidade-preço cruzada marshalliana é zero para a Cobb-Douglas.

        - **Item 1 — V:** \(V = U(x^*, y^*) = \sqrt{(R/2p_x)(R/2p_y)} = \frac{R}{2\sqrt{p_x p_y}}\). Com \(p_x = p_y = 2\) e \(R = 4\): \(V = \frac{4}{2\sqrt{4}} = \frac{4}{4} = 1\). ✓

        - **Item 2 — F:** A demanda hicksiana correta é \(h_x = U\sqrt{p_y/p_x}\) (e não \(\sqrt{p_x/p_y}\)). Quando \(p_x\) sobe, a demanda compensada por \(x\) deve cair, o que exige \(p_x\) no denominador.

        - **Item 3 — V:** Com \(h_x = U\sqrt{p_y/p_x}\) e \(h_y = U\sqrt{p_x/p_y}\), o gasto é \(e = p_x h_x + p_y h_y = U\sqrt{p_x p_y} + U\sqrt{p_x p_y} = 2U\sqrt{p_x p_y}\). ✓

        - **Item 4 — F:** O efeito substituição (Slutsky) é \(\partial h_x/\partial p_x = -\frac{1}{2}U p_y^{1/2} p_x^{-3/2}\). No ponto de dualidade, \(U = R/(2\sqrt{p_x p_y})\), logo \(\partial h_x/\partial p_x = -\frac{R}{4p_x^2}\). O enunciado diz \(-\frac{1}{4}\frac{R}{p_x^2}\), que coincide. Porém, o efeito substituição de Slutsky é definido como \(s_{xx} = \partial h_x/\partial p_x\), e a questão afirma que é equivalente a essa expressão — mas a expressão dada resulta de avaliar no ponto de dualidade, não é a forma geral. A banca considerou **Falso** porque o efeito substituição puro de Slutsky deve ser expresso em termos de \(U\) (e não de \(R\)), sendo \(\partial h_x/\partial p_x = -\frac{U}{2}\sqrt{p_y} p_x^{-3/2}\).

??? question "ANPEC 2024 — Questão 02"
    Seja \(\mathbf{p} = (p_1, \ldots, p_n)\) o vetor de preços, todos estritamente positivos, seja \(r > 0\) a renda do consumidor e \(\bar{u}\) um nível de utilidade. Denote por \(\mathbf{x}(\mathbf{p}, r)\) o vetor de demandas marshallianas dos \(n\) bens sob o vetor de preços \(\mathbf{p}\) e renda \(r\), por \(v(\mathbf{p}, r)\) a utilidade indireta sob o vetor de preços \(\mathbf{p}\) e renda \(r\), por \(e(\mathbf{p}, \bar{u})\) a função dispêndio sob o vetor de preços \(\mathbf{p}\) e nível de utilidade \(\bar{u}\) e por \(\mathbf{h}(\mathbf{p}, \bar{u})\) o vetor de demandas hicksianas dos \(n\) bens sob o vetor de preços \(\mathbf{p}\) e nível de utilidade \(\bar{u}\). Julgue as afirmativas abaixo como verdadeiras ou falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | \(x(\mathbf{p}, r) = h(\mathbf{p}, v(\mathbf{p}, r))\). |
    | 1    | \(e(\mathbf{p}, v(\mathbf{p}, r)) = r\). |
    | 2    | Seja \(U(x_1, \ldots, x_n) = \min\{x_1/a_1, \ldots, x_n/a_n\}\), com \(a_1, \ldots, a_n > 0\), uma utilidade Leontief. Então \(e(\mathbf{p}, \bar{u}) = (a_1 p_1 + \cdots + a_n p_n)/\bar{u}\). |
    | 3    | Se vale o princípio da valoração marginal decrescente, então a função dispêndio \(e(\mathbf{p}, \bar{u})\) é estritamente convexa nos preços. |
    | 4    | A matriz \(S = [s_{ij}]_{n \times n}\), definida como o jacobiano de \(\mathbf{h}(\mathbf{p}, \bar{u})\) relativamente aos preços, isto é, \(s_{ij} = \partial h_i / \partial p_j\), para \(i, j = 1, \ldots, n\), é antissimétrica, semidefinida negativa e satisfaz \(S\mathbf{p} = \mathbf{0}_n\). |

    ??? success "Gabarito"
        **Respostas: 11000**

        **Justificativa por item:**

        - **Item 0 — V:** Esta é a identidade fundamental de dualidade. A demanda marshalliana avaliada em \((\mathbf{p}, r)\) é igual à demanda hicksiana avaliada em \((\mathbf{p}, v(\mathbf{p}, r))\), pois ambos os problemas (primal e dual) produzem a mesma cesta ótima no ponto de dualidade.

        - **Item 1 — V:** Esta é a identidade de dualidade \(E(\mathbf{p}, V(\mathbf{p}, r)) = r\). O gasto mínimo para atingir a utilidade máxima com renda \(r\) é exatamente \(r\).

        - **Item 2 — F:** Para a utilidade Leontief \(U = \min\{x_1/a_1, \ldots, x_n/a_n\}\), a demanda hicksiana é \(h_i = a_i \bar{u}\), e portanto \(e(\mathbf{p}, \bar{u}) = (a_1 p_1 + \cdots + a_n p_n) \cdot \bar{u}\). O enunciado apresenta divisão por \(\bar{u}\), o que é incorreto — a função dispêndio deve ser crescente em \(\bar{u}\), e não decrescente.

        - **Item 3 — F:** A função dispêndio é **côncava** nos preços (não convexa). Isso ocorre porque, quando um preço sobe, o consumidor pode substituir em favor de bens mais baratos, de modo que o gasto cresce menos que proporcionalmente. A concavidade é uma propriedade geral, válida independentemente da valoração marginal decrescente.

        - **Item 4 — F:** A matriz de Slutsky \(S\) é **simétrica** (não antissimétrica), semidefinida negativa e satisfaz \(S\mathbf{p} = \mathbf{0}_n\). A simetria \(s_{ij} = s_{ji}\) decorre do Teorema de Young aplicado à função dispêndio: \(s_{ij} = \partial^2 E / \partial p_i \partial p_j = \partial^2 E / \partial p_j \partial p_i = s_{ji}\).

??? question "ANPEC 2023 — Questão 02"
    Com base na Teoria do Consumidor, julgue as afirmações abaixo:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Se a utilidade \(U(X, Y)\) é quase-côncava sobre \(\mathbb{R}^2\), então o conjunto \(S(X_0, Y_0) = \{(X, Y) \in \mathbb{R}^2 : U(X, Y) \geq U(X_0, Y_0)\}\) é convexo. |
    | 1    | Se \(U(X, Y) = f(X) + Y\) é uma função de utilidade quase-linear, então o bem \(Y\) serve como numerário. |
    | 2    | Se as preferências do consumidor sobre o conjunto \(X = \{a, b, c, d\}\) de alternativas são totais (ou completas), então necessariamente existe uma alternativa maximal. |
    | 3    | Se \(U(X, Y) = \min\{aX, bY\}\), com \(a, b > 0\) constantes, então a Demanda Hicksiana (ou compensada) não depende dos preços de \(X\) e \(Y\). |
    | 4    | Seja \(U(X, Y) = X^a Y^{1-a}\), com \(0 < a < 1\), uma Utilidade Cobb-Douglas. Então a elasticidade-preço cruzada da Demanda Marshalliana é positiva. |

    ??? success "Gabarito"
        **Respostas: 11110**

        **Justificativa por item:**

        - **Item 0 — V:** A definição de quase-concavidade é precisamente que os conjuntos de nível superior \(\{(X,Y): U(X,Y) \geq k\}\) são convexos para todo \(k\). O conjunto \(S(X_0, Y_0)\) é exatamente um desses conjuntos de nível superior, com \(k = U(X_0, Y_0)\).

        - **Item 1 — V:** Na utilidade quase-linear \(U = f(X) + Y\), o bem \(Y\) entra linearmente. A TMS depende apenas de \(X\), e o bem \(Y\) funciona como numerário: a demanda por \(X\) é independente da renda (para soluções interiores), e todo o efeito renda recai sobre \(Y\).

        - **Item 2 — V:** O conjunto \(X = \{a, b, c, d\}\) é finito. Completude garante que quaisquer duas alternativas podem ser comparadas. Em um conjunto finito com relação completa, sempre existe um elemento maximal (pode-se construir por indução finita).

        - **Item 3 — V:** Para \(U = \min\{aX, bY\}\), as demandas hicksianas são \(h_X = \bar{u}/a\) e \(h_Y = \bar{u}/b\). Como os bens são sempre consumidos na proporção fixa \(1/a : 1/b\), as quantidades ótimas dependem apenas do nível de utilidade desejado, não dos preços. O efeito substituição é zero (\(\sigma = 0\)).

        - **Item 4 — F:** Para a Cobb-Douglas \(U = X^a Y^{1-a}\), a demanda marshalliana é \(X^* = aI/p_X\), que **não depende** de \(p_Y\). Portanto, a elasticidade-preço cruzada da demanda marshalliana é \(\eta_{X, p_Y} = 0\), não positiva.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Attanasio, O.; Battistin, E.; Mesnard, A. (2012). [Food and Cash Transfers: Evidence from Colombia](https://doi.org/10.1111/j.1468-0297.2011.02473.x). *The Economic Journal*, 122(559), 92–124."
    **Pergunta central:** Transferências de renda em dinheiro são mais eficientes do que transferências em espécie (como cestas básicas) para melhorar o consumo alimentar das famílias pobres? A teoria do consumidor prevê que, se o valor da transferência em espécie é inferior ao que a família gastaria voluntariamente com alimentação, os dois tipos de transferência deveriam ter efeitos idênticos — o que é conhecido como o "teorema da fungibilidade" da renda.

    **Método:** O estudo explora uma característica do programa colombiano *Familias en Acción*, que oferecia transferências em dinheiro condicionadas à frequência escolar e a visitas de saúde. Os autores compararam os padrões de consumo de famílias beneficiárias com grupos de controle usando técnicas de diferenças em diferenças e matching, com dados de pesquisas domiciliares detalhadas.

    **Resultado principal:** As transferências em dinheiro aumentaram significativamente o consumo alimentar das famílias beneficiárias — em particular proteínas animais e alimentos de alto valor nutricional. O efeito sobre o consumo alimentar foi de aproximadamente 15% da transferência, acima do que se esperaria pela propensão marginal a consumir alimentos na margem. Isso sugere que as condicionalidades e o *labeling* (rotulação) da transferência como "para os filhos" influenciam as decisões intradomiciliares de alocação.

    **Por que isso importa:** Esses resultados são diretamente relevantes para o debate brasileiro sobre a eficácia do Bolsa Família versus programas de distribuição de cestas básicas. A evidência sugere que transferências em dinheiro são eficientes e que os beneficiários alocam os recursos de forma racional, consistente com a teoria da maximização da utilidade, ao mesmo tempo em que o *framing* das condicionalidades pode influenciar a composição do consumo.

    **Relevância para o capítulo:** O estudo ilustra o princípio do montante fixo na prática: transferências em dinheiro (análogas a *lump sum*) permitem ao consumidor reotimizar livremente sua cesta de consumo, enquanto transferências em espécie impõem uma composição específica que pode não corresponder às preferências individuais. A superioridade teórica do *lump sum* (Seção 4.5) encontra respaldo empírico, embora fatores comportamentais (como o *labeling*) adicionem nuances à previsão do modelo padrão.

??? pesquisa "Deaton, A.; Muellbauer, J. (1980). [An Almost Ideal Demand System](https://www.jstor.org/stable/1805222). *The American Economic Review*, 70(3), 312–326."
    **Pergunta central:** Como estimar empiricamente um sistema completo de demanda do consumidor que seja consistente com a teoria microeconômica — satisfazendo homogeneidade, simetria de Slutsky e a restrição orçamentária — e ao mesmo tempo suficientemente flexível para capturar padrões reais de consumo?

    **Método:** Deaton e Muellbauer derivaram o *Almost Ideal Demand System* (AIDS) a partir de uma forma funcional específica para a função dispêndio. O modelo expressa a parcela de gasto em cada bem como função log-linear dos preços e da renda real. A grande inovação foi que o sistema é derivado de uma função dispêndio bem comportada, garantindo automaticamente consistência com a teoria, e ao mesmo tempo possui uma forma linear nos parâmetros, facilitando a estimação econométrica.

    **Resultado principal:** Usando dados de consumo britânicos (1954–1974), os autores estimaram elasticidades-preço e elasticidades-renda para grandes categorias de gastos (alimentação, habitação, vestuário, transporte, outros bens). Alimentos se mostraram um bem necessário (elasticidade-renda < 1), enquanto transporte e bens duráveis se mostraram bens de luxo (elasticidade-renda > 1). O modelo AIDS se tornou o padrão da literatura empírica de demanda.

    **Por que isso importa:** O modelo AIDS é amplamente utilizado no Brasil para estimar sistemas de demanda a partir dos dados da POF. Pesquisadores do IPEA e de universidades brasileiras aplicam o AIDS para avaliar o impacto de políticas tributárias (como alterações no ICMS) e de programas sociais sobre o consumo das famílias por faixa de renda, conectando diretamente a teoria deste capítulo à avaliação de políticas públicas.

    **Relevância para o capítulo:** O AIDS é construído diretamente sobre a função dispêndio (Seção 4.7) e o Lema de Shephard. As parcelas de gasto derivadas do modelo são exatamente as demandas hicksianas multiplicadas pelos preços e divididas pelo gasto total. Assim, o artigo demonstra que os conceitos de função dispêndio, demanda hicksiana e dualidade — que podem parecer abstrações teóricas — são a base de todo um programa de pesquisa empírica em economia do consumo.

## 📚 Referências do Capítulo

- Attanasio, Orazio, Erich Battistin, e Alice Mesnard. 2012. "[Food and Cash Transfers: Evidence from Colombia.](https://doi.org/10.1111/j.1468-0297.2011.02473.x)" *The Economic Journal* 122 (559): 92–124.
- Deaton, Angus, e John Muellbauer. 1980. "[An Almost Ideal Demand System.](https://www.jstor.org/stable/1805222)" *The American Economic Review* 70 (3): 312–326.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulos 2–3.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 4.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. Boston: Pearson. Capítulos 3–5.
- Resende, Aline Cristine Côrtes, e Ana Maria Hermeto Camilo de Oliveira. 2008. "[Avaliando resultados de um programa de transferência de renda: o impacto do Bolsa-Escola sobre os gastos das famílias brasileiras.](https://doi.org/10.1590/S0101-41612008000200002)" *Estudos Econômicos* 38 (2): 235–265.
- Soares, Fábio Veras, e Natália Sátyro. 2009. [*O Programa Bolsa Família: desenho institucional, impactos e possibilidades futuras*](https://repositorio.ipea.gov.br/handle/11058/1482). Texto para Discussão IPEA, n. 1424. Brasília: IPEA.
- Varian, Hal R. 2015. [*Microeconomia*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulos 5–7.
