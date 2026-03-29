# 13.1 A Multidão Tem Razão? Demanda de Mercado {#131}

Antes de analisar o equilíbrio de mercado, precisamos construir seus dois componentes: a demanda de mercado e a oferta de mercado. Começamos pelo lado da demanda. Nos capítulos sobre a teoria do consumidor (Capítulos 4–6), derivamos a demanda individual de cada agente a partir da maximização de utilidade sujeita à restrição orçamentária. Mas como passar da decisão de um consumidor isolado para o comportamento agregado de milhões de compradores? A operação é surpreendentemente simples, mas suas implicações são ricas — e a possibilidade de realizá-la depende de pressupostos que merecem atenção.

### Agregação de demandas individuais

A demanda de mercado é obtida pela **soma horizontal** das demandas individuais de todos os consumidores. Se existem \(n\) consumidores e cada um possui uma função de demanda \(x_i(p)\), a demanda de mercado é:

\[
X(p) = \sum_{i=1}^{n} x_i(p)
\label{eq:13.1} \tag{13.1} \]

A operação é chamada de "soma horizontal" porque, para cada nível de preço \(p\), somamos as quantidades demandadas por cada consumidor — ou seja, somamos ao longo do eixo horizontal do gráfico preço-quantidade. Por exemplo, se ao preço \(p = 10\) o consumidor A demanda 3 unidades e o consumidor B demanda 5 unidades, a demanda de mercado a esse preço é \(X(10) = 8\) unidades. A simplicidade dessa construção esconde um pressuposto importante: cada consumidor toma o preço como dado e decide independentemente dos demais. Essa hipótese de ausência de externalidades de consumo será relaxada no Capítulo 19, quando estudarmos falhas de mercado.

!!! definition "Demanda de mercado"
    A **demanda de mercado** por um bem é a quantidade total demandada por todos os consumidores a cada nível de preço, ou seja, a soma horizontal das curvas de demanda individuais.

### Propriedades da demanda de mercado

A curva de demanda de mercado herda propriedades das demandas individuais, mas o processo de agregação pode alterar algumas características:

1. **Inclinação negativa**: Se todas as demandas individuais são decrescentes no preço (excluindo-se os raros casos de bens de Giffen, discutidos no Capítulo 5), a demanda de mercado também será decrescente. Na prática, mesmo que alguns consumidores individuais tenham demandas com formato incomum, a agregação tende a suavizar essas irregularidades.
2. **Elasticidade-preço**: A elasticidade-preço da demanda de mercado é uma média ponderada das elasticidades individuais, com pesos dados pelas participações de cada consumidor na demanda total:

\[
\varepsilon_{X,p} = \sum_{i=1}^{n} \frac{x_i}{X} \cdot \varepsilon_{x_i, p}
\label{eq:13.2} \tag{13.2} \]

Essa fórmula revela um ponto sutil: a elasticidade de mercado depende não apenas das elasticidades individuais, mas também da composição dos consumidores. Se os consumidores mais sensíveis ao preço representam uma fração maior do mercado, a elasticidade de mercado será mais elevada (em valor absoluto). Por exemplo, no mercado de energia elétrica no Brasil, consumidores residenciais de baixa renda — que tipicamente têm demanda mais inelástica — representam uma fatia significativa do consumo total, o que tende a tornar a demanda agregada relativamente inelástica.

3. **Efeitos renda e substituição**: Deslocamentos na demanda de mercado refletem mudanças na renda agregada, na distribuição de renda, nos preços de bens relacionados e nas preferências dos consumidores. Cabe notar que a distribuição de renda importa: uma economia com renda total de R$ 1 trilhão concentrada em poucos indivíduos terá demanda de mercado diferente de outra com a mesma renda total distribuída mais igualitariamente — pois os padrões de consumo diferem entre faixas de renda. Esse ponto, frequentemente negligenciado em tratamentos introdutórios, é central para a análise de políticas distributivas e será retomado quando discutirmos o equilíbrio geral nos Capítulos 17–18.

!!! tip "Agregação e heterogeneidade"
    Mesmo que demandas individuais apresentem descontinuidades ou formas peculiares, a demanda de mercado tende a ser mais "suave" quando o número de consumidores é grande, devido à diversidade de preferências e rendas. Esse resultado, formalizado por Werner Hildenbrand (1994) em *Market Demand*, mostra que a Lei da Demanda pode emergir da agregação mesmo sem impor restrições fortes sobre preferências individuais — uma das justificativas teóricas mais elegantes para a inclinação negativa da demanda de mercado.

Com a demanda de mercado construída, precisamos agora do segundo ingrediente: a oferta. Recordemos que, no Capítulo 12, derivamos a curva de oferta da firma individual a partir da condição de maximiza��ão de lucro (\(p = CMg\)). A oferta de mercado é construída de forma análoga à demanda: somamos horizontalmente as ofertas individuais das firmas. Com ambos os componentes em mãos, podemos finalmente analisar a formação de preços — o que faremos distinguindo três horizontes temporais, cada um com graus de ajuste progressivamente maiores.

<iframe src="/micro-book/graficos/cap13/webr-agregacao-demanda.html" title="WebR — Agregação de Demandas Individuais" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 13.1 — Agregação de demandas individuais e equilíbrio de mercado.** O código soma horizontalmente as demandas de três tipos de consumidores (A, B, C) e calcula o equilíbrio. Altere o número de consumidores ou as funções de demanda para ver como a composição do mercado afeta a elasticidade agregada.
</div>
