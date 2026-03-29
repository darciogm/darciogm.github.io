# 14.1–14.2 Sistema de Preços e Caixa de Edgeworth

## 14.1 Vasos Comunicantes: O Sistema de Preços Competitivo {#141}

### Interdependência de mercados

Em uma economia com \(n\) bens, os preços \(p_1, p_2, \ldots, p_n\) são determinados simultaneamente pela interação de todos os consumidores e produtores em todos os mercados. Uma mudança em qualquer mercado pode reverberar por toda a economia.

Para compreender por que essa interdependência é essencial, considere um exemplo concreto: um choque no preço internacional do petróleo. Numa análise de equilíbrio parcial, examinaríamos apenas o mercado de combustíveis — a oferta se contrai, o preço sobe, a quantidade demandada cai. Mas os efeitos não param aí. O encarecimento do diesel eleva o custo de frete, que encarece alimentos nos supermercados. Famílias que gastam mais com transporte e alimentação reduzem a demanda por outros bens — vestuário, lazer, eletrodomésticos. Setores que dependem de derivados de petróleo como insumo (petroquímica, plásticos, fertilizantes) veem seus custos de produção subir, o que reduz sua oferta e pode levar a demissões. Trabalhadores demitidos nesses setores reduzem seu consumo agregado. O Banco Central, preocupado com a inflação, pode elevar a taxa de juros, encarecendo o crédito e desacelerando o investimento. Cada um desses efeitos retroalimenta os demais. A análise de equilíbrio geral é a única ferramenta capaz de capturar essa cascata de interdependências de forma consistente e simultânea.

A ideia de que todos os mercados estão interligados e devem ser analisados conjuntamente remonta ao economista francês **Léon Walras** (1834–1910), que em sua obra *Éléments d'économie politique pure* (1874) formulou pela primeira vez o sistema de equações simultâneas que descreve o equilíbrio de todos os mercados. Walras percebeu que a economia é como um sistema de vasos comunicantes: alterar o nível em um vaso inevitavelmente afeta todos os demais. Sua contribuição foi traduzir essa intuição em linguagem matemática precisa, mostrando que o número de equações independentes (condições de equilíbrio de mercado) é igual ao número de incógnitas (preços relativos a determinar). Embora Walras não tenha conseguido demonstrar rigorosamente a existência de solução — isso só viria oitenta anos depois, com Arrow e Debreu (1954) —, seu enquadramento do problema lançou as bases de toda a teoria moderna de equilíbrio geral.

!!! definition "Equilíbrio geral competitivo"
    Um **equilíbrio geral competitivo** (ou equilíbrio walrasiano) é um vetor de preços \(\mathbf{p}^* = (p_1^*, p_2^*, \ldots, p_n^*)\) tal que todos os mercados se equilibram simultaneamente: para cada bem \(k\),

    \[
    \sum_{i=1}^{I} x_i^k(\mathbf{p}^*) = \sum_{j=1}^{J} y_j^k(\mathbf{p}^*) + \sum_{i=1}^{I} \omega_i^k
    \]

    onde \(x_i^k\) é a demanda do consumidor \(i\) pelo bem \(k\), \(y_j^k\) é a oferta líquida da firma \(j\) do bem \(k\), e \(\omega_i^k\) é a dotação inicial do consumidor \(i\) do bem \(k\).

A diferença entre equilíbrio parcial e equilíbrio geral não é apenas uma questão de escala — é uma diferença de natureza. No equilíbrio parcial, tratamos o preço do bem analisado como variável e os preços de todos os outros bens como dados (*ceteris paribus*). No equilíbrio geral, todos os preços são variáveis endógenas, determinados simultaneamente. Isso significa que efeitos que parecem pequenos em um mercado isolado podem ser amplificados (ou atenuados) quando consideramos as repercussões em toda a economia. Como veremos na [Seção 14.11](cge.md) sobre modelos CGE, a diferença quantitativa entre as duas abordagens pode ser substancial — especialmente para políticas de grande escala, como reformas tributárias ou acordos comerciais.

### Homogeneidade e normalização

Uma observação aparentemente simples, mas com profundas implicações, é que em um sistema competitivo apenas os **preços relativos** importam. As funções de demanda e oferta são homogêneas de grau zero nos preços: se todos os preços dobram, as quantidades demandadas e ofertadas não se alteram. Isso permite normalizar os preços, fixando um bem como **numerário** com preço igual a 1:

\[
p_n = 1 \quad \Rightarrow \quad \text{sistema com } n-1 \text{ preços relativos a determinar}
\label{eq:14.1} \tag{14.1} \]

A escolha do numerário é uma questão de conveniência — qualquer bem pode servir — e não afeta as quantidades de equilíbrio nem os preços relativos. O que muda é apenas a "unidade de conta" em que os preços são expressos. Na prática empírica, frequentemente se utiliza o trabalho como numerário, de modo que todos os preços são expressos em horas de trabalho.

---

## 14.2 Um Retângulo Vale Mais que Mil Palavras: A Caixa de Edgeworth {#142}

A definição formal de equilíbrio geral competitivo — um vetor de preços que equilibra simultaneamente todos os mercados — pode soar como algo que só um computador amaria. Antes de mergulhar na formalização matemática, vamos fazer algo mais humano: desenhar uma caixa. Não qualquer caixa — a **Caixa de Edgeworth**, talvez o diagrama mais engenhoso de toda a microeconomia. Trata-se de uma economia mínima, com apenas dois consumidores e dois bens, mas que já captura a essência das trocas voluntárias, da eficiência e do papel dos preços relativos. É o tipo de modelo que faz você pensar: "por que não me mostraram isso antes?"

### Construção

Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (1 e 2). As dotações totais da economia são:

\[
\bar{x}_1 = \omega_A^1 + \omega_B^1, \qquad \bar{x}_2 = \omega_A^2 + \omega_B^2
\label{eq:14.2} \tag{14.2} \]

A **Caixa de Edgeworth** é um retângulo com dimensões \(\bar{x}_1 \times \bar{x}_2\). O consumidor A é medido a partir do canto inferior esquerdo e o consumidor B a partir do canto superior direito. Cada ponto na caixa representa uma alocação factível que esgota todos os recursos.

O diagrama que hoje chamamos de "Caixa de Edgeworth" tem uma história curiosa. Foi o economista e estatístico irlandês **Francis Ysidro Edgeworth** (1845–1926) quem primeiro utilizou, em seu livro *Mathematical Psychics* (1881), um diagrama semelhante para analisar trocas bilaterais. Edgeworth, porém, usou eixos separados para os dois consumidores; a versão "encaixada" em forma de caixa que conhecemos hoje foi popularizada por Vilfredo Pareto e, posteriormente, por Arthur Bowley. A despeito dessa imprecisão histórica, o nome "Caixa de Edgeworth" permaneceu consagrado na literatura — e é justo, pois foi Edgeworth quem primeiro percebeu que um único diagrama poderia representar simultaneamente as possibilidades de ambos os agentes em uma troca bilateral.

!!! definition "Caixa de Edgeworth"
    A **Caixa de Edgeworth** é uma representação gráfica de todas as alocações factíveis em uma economia de troca pura com dois consumidores e dois bens. Cada ponto no retângulo especifica simultaneamente as cestas de consumo de ambos os consumidores.

!!! idea "Intuição Econômica"
    **Em uma frase:** A Caixa de Edgeworth é um mapa de todas as formas possíveis de dividir os recursos de uma economia entre duas pessoas.

    **Pense assim:** Imagine dois colegas de república dividindo o que sobrou na geladeira: 6 fatias de pizza e 4 latas de refrigerante. Qualquer combinação que dê o total — 4 fatias para um e 2 para outro, por exemplo — é um ponto na caixa. Movendo o ponto, você redistribui pizza e refrigerante entre os dois. A mágica da caixa é mostrar, num só diagrama, se existe uma redistribuição que deixe ambos mais felizes.

    **Por que isso importa:** A Caixa de Edgeworth é a ferramenta visual fundamental para entender trocas voluntárias, eficiência e os ganhos do comércio — inclusive entre países, como no acordo Mercosul-UE.

A intuição geométrica da Caixa de Edgeworth é profunda. Observe que qualquer ponto dentro da caixa automaticamente respeita a restrição de recursos: se A consome \(x_1^A\) do bem 1, então B necessariamente consome \(\bar{x}_1 - x_1^A\) — não há desperdício nem criação de recursos. Essa propriedade faz da caixa uma representação compacta e completa do conjunto de alocações factíveis. Além disso, a caixa revela imediatamente um fato fundamental sobre trocas: em uma economia de troca pura, toda melhoria para um consumidor implica um movimento no diagrama, e esse movimento necessariamente altera a cesta do outro consumidor. A caixa torna visível a interdependência que é o tema central da análise de equilíbrio geral.

É instrutivo pensar na Caixa de Edgeworth também como uma representação de **comércio internacional** entre dois países. Imagine que o país A (digamos, o Brasil) é abundante no bem 1 (commodities agrícolas) e o país B (digamos, a União Europeia) é abundante no bem 2 (bens manufaturados). As dotações iniciais de cada país determinam o ponto de autarquia na caixa. Ao abrir o comércio, os países trocam bens de acordo com os preços relativos internacionais, movendo-se para um ponto mais eficiente — mais próximo da curva de contrato. Essa é exatamente a lógica dos ganhos de comércio que o acordo Mercosul-UE busca realizar, como discutido no Box Brasil sobre o acordo.

### Curvas de indiferença na caixa

As curvas de indiferença do consumidor A são desenhadas normalmente (convexas em relação à origem inferior esquerda). As curvas de indiferença do consumidor B são desenhadas invertidas (convexas em relação ao canto superior direito). Quando duas curvas de indiferença se tangenciam, as taxas marginais de substituição são iguais:

\[
TMS_A^{12} = TMS_B^{12}
\label{eq:14.3} \tag{14.3} \]

Nesse ponto, descrito pela equação $\eqref{eq:14.3}$, não há trocas mutuamente benéficas possíveis — a alocação é **eficiente no sentido de Pareto**.

Quando as curvas de indiferença se *cruzam* (em vez de se tangenciar), forma-se uma "lente" — uma região entre as duas curvas onde existem alocações preferidas por ambos os consumidores. Qualquer ponto no interior dessa lente representa uma melhoria de Pareto em relação à alocação inicial. As trocas voluntárias movem a economia para dentro dessa lente, até que as curvas de indiferença se tangenciem e a lente desapareça — nesse ponto, não há mais ganhos de troca a explorar.

Explore a Caixa de Edgeworth com dois consumidores e dois bens. Ajuste as dotações iniciais e os parâmetros de preferências Cobb-Douglas. Arraste o ponto de alocação X para verificar se ele representa uma melhoria de Pareto em relação à dotação inicial e se está sobre a curva de contrato (eficiência). As curvas de indiferença tracejadas passam pela dotação E; as contínuas passam pela alocação X.

<iframe src="/micro-book/graficos/cap14/caixa-edgeworth.html" title="Figura 14.1 — Caixa de Edgeworth" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 14.1 — Caixa de Edgeworth.** Ajuste as dotações iniciais e os parâmetros de preferências Cobb-Douglas. Arraste o ponto de alocação para verificar melhorias de Pareto e eficiência sobre a curva de contrato.
</div>
