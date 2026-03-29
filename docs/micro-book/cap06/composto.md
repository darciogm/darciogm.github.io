# 6.5–6.6 Bem Composto, Lancaster e Becker

## 6.5 "Todo o Resto": O Teorema do Bem Composto de Hicks

Com \(n\) bens, a matriz de Slutsky tem \(n^2\) entradas. Para 100 bens, são 10.000 elasticidades cruzadas. Ninguém tem dados suficientes para estimar tudo isso.[^cheese-shop] A solução prática: agrupar bens em categorias ("alimentação", "transporte", "lazer") e tratar cada categoria como um único "super-bem". Mas cuidado: agrupar bens arbitrariamente pode gerar erros graves. O **Teorema do Bem Composto de Hicks** diz *quando* a agregação é legítima — e a condição é surpreendentemente simples.

!!! theorem "Teorema do Bem Composto de Hicks"
    Se um grupo de bens tem seus preços variando na mesma proporção, então esse grupo pode ser tratado como um único **bem composto**, cujo "preço" é um índice dos preços do grupo e cuja "quantidade" é o gasto real com o grupo.

    Formalmente: se \(p_j = \alpha \bar{p}_j\) para todo \(j \in G\) (onde \(\bar{p}_j\) é o preço-base e \(\alpha\) varia), então o grupo \(G\) pode ser representado por um bem composto \(y = \sum_{j \in G} \bar{p}_j x_j\), com preço \(\alpha\).

!!! proof "Demonstração: Teorema do Bem Composto de Hicks"
    **Passo 1: Configuração.**

    Considere \(n\) bens, divididos em dois grupos: o bem 1 (ou grupo de interesse) e o grupo \(G = \{2, 3, \ldots, n\}\). Suponha que os preços dos bens em \(G\) variem proporcionalmente:

    \[
    p_j = \alpha \bar{p}_j, \quad j \in G
    \]

    onde \(\bar{p}_j\) são preços-base fixos e \(\alpha > 0\) é um escalar.

    **Passo 2: Restrição orçamentária.**

    A restrição orçamentária do consumidor é:

    \[
    p_1 x_1 + \sum_{j \in G} p_j x_j = I
    \]

    Substituindo \(p_j = \alpha \bar{p}_j\):

    \[
    p_1 x_1 + \alpha \sum_{j \in G} \bar{p}_j x_j = I
    \]

    **Passo 3: Definição do bem composto.**

    Definamos o bem composto \(y \equiv \sum_{j \in G} \bar{p}_j x_j\), que representa o gasto real (a preços-base) com os bens do grupo \(G\). A restrição orçamentária torna-se:

    \[
    p_1 x_1 + \alpha \cdot y = I
    \]

    que tem exatamente a forma de uma restrição com dois bens: \(x_1\) ao preço \(p_1\) e \(y\) ao preço \(\alpha\).

    **Passo 4: Otimização em dois estágios.**

    O consumidor pode otimizar em dois estágios:

    1. *Estágio interno*: para um dado nível de gasto com o grupo \(G\), \(M_G = \alpha y\), o consumidor aloca otimamente esse gasto entre os bens do grupo, dado que seus preços relativos \(\bar{p}_j / \bar{p}_k\) são fixos (pois todos variam proporcionalmente). Isso gera uma função de utilidade indireta para o grupo, \(\tilde{U}(y)\).

    2. *Estágio externo*: o consumidor escolhe entre \(x_1\) e \(y\) maximizando uma utilidade que depende apenas de \(x_1\) e \(y\), sujeito a \(p_1 x_1 + \alpha y = I\).

    **Passo 5: Conclusão.**

    Como a alocação interna ao grupo \(G\) depende apenas dos preços relativos dentro do grupo (que são fixos), ela pode ser tratada separadamente. No estágio externo, o grupo inteiro se comporta como um único bem com quantidade \(y\) e preço \(\alpha\). Toda a teoria de dois bens — incluindo efeitos substituição e renda — aplica-se entre \(x_1\) e o bem composto \(y\). \(\blacksquare\)

!!! tip "Aplicação prática"
    O Teorema do Bem Composto justifica o uso frequente, em exercícios e modelos aplicados, de um "bem 1" versus "todos os outros bens" (representados pelo gasto restante). Para que a agregação seja válida, é necessário que os preços relativos dentro do grupo permaneçam aproximadamente constantes. Quando um choque afeta apenas um subgrupo (por exemplo, uma seca que encarece frutas mas não cereais), o teorema perde validade para o grupo "alimentos" como um todo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O Teorema do Bem Composto permite ao economista trabalhar com dois bens mesmo quando a economia tem milhares — desde que os bens "de fundo" se movam em bloco.

    **Pense assim:** Imagine que você analise o consumo de cinema versus "tudo mais que compro no mês". Para que essa simplificação seja válida, não é preciso que o preço de cada item do "tudo mais" (aluguel, alimentação, transporte, roupas...) seja constante em nível absoluto — apenas que eles variem proporcionalmente entre si. Se a inflação geral encarece todo o "tudo mais" na mesma proporção de 5%, o bloco se comporta como um único bem que ficou 5% mais caro, e você pode analisar cinema versus esse bloco como um problema de dois bens. Quando os preços relativos dentro do bloco mudam (energia elétrica sobe 30% enquanto alimentos sobem 5%), o teorema falha e a análise de dois bens pode induzir a conclusões errôneas.

    **Por que isso importa:** Modelos macroeconômicos usam frequentemente a dicotomia "bem tradeable versus bem non-tradeable" ou "bem importado versus bem doméstico" — ambas são aplicações implícitas do Teorema do Bem Composto. A validade dessas dicotomias depende de que os preços relativos dentro de cada grupo sejam razoavelmente estáveis, o que pode não se verificar durante choques assimétricos como os causados pela pandemia de 2020 ou pelo conflito na Ucrânia em 2022.

!!! box-brasil "Box Brasil 6.1: Preços administrados e o Bem Composto no IPCA"
    O IPCA, calculado pelo IBGE, distingue entre **preços livres** (cerca de 75% do índice) e **preços administrados** (cerca de 25%), que incluem combustíveis, energia elétrica, planos de saúde e tarifas de transporte público. Os preços administrados são reajustados por fórmulas contratuais vinculadas a índices como o IGP-M ou o IPCA do período anterior.

    Essa distinção ilustra quando o Teorema do Bem Composto **funciona** e quando **falha**:

    - **Funciona (aproximadamente):** dentro do grupo "alimentos in natura", os preços tendem a flutuar em resposta a choques climáticos comuns (seca, geada), mantendo os preços relativos razoavelmente estáveis. Podemos tratá-los como um bem composto "alimentos".
    - **Falha:** quando a Petrobras reajusta o preço da gasolina (preço administrado) enquanto os preços de alimentos e serviços seguem trajetórias distintas, os preços relativos entre os grupos mudam substancialmente. Nesse caso, não se pode agregar "gasolina + alimentos" em um único bem composto.

    Segundo dados do [BCB](https://www.bcb.gov.br), entre 2000 e 2023 os preços administrados acumularam alta de cerca de 530%, enquanto os preços livres subiram cerca de 350% — uma divergência persistente que viola a hipótese de proporcionalidade e exige análise desagregada.

---

O gráfico abaixo ilustra o Teorema do Bem Composto. O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)), que agrega os demais bens cujos preços variam proporcionalmente. Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.

<iframe src="/micro-book/graficos/cap06/bem-composto.html" title="Figura 6.2 — Teorema do Bem Composto de Hicks" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.2 — Teorema do Bem Composto de Hicks.** O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)). Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.
</div>

---

## 6.6 Você Não Compra Comida — Compra Nutrição: Produção Doméstica e Preços Implícitos

Pergunta incômoda: por que alguém "deseja" arroz? Ninguém acorda de manhã sonhando com grãos brancos. O que a pessoa quer são nutrientes, saciedade, sabor — *atributos* do arroz, não o arroz em si. Da mesma forma, ninguém compra um apartamento pelo concreto: compra metragem, localização, vista, silêncio. Essa observação aparentemente trivial inspira duas reformulações radicais da teoria do consumidor.

### 6.6.1 O modelo de Lancaster

A teoria tradicional assume que o consumidor obtém utilidade diretamente dos bens. Kelvin **Lancaster** (1966) propôs uma reformulação provocativa: os bens são desejados não por si mesmos, mas pelos **atributos** (ou **características**) que contêm. Um automóvel não é consumido como "automóvel", mas como um conjunto de atributos — potência, conforto, eficiência, status — que o veículo incorpora. Essa mudança de perspectiva, aparentemente sutil, tem consequências profundas: a unidade de análise deixa de ser o bem e passa a ser o atributo. A concorrência entre bens é, em última instância, concorrência entre combinações de atributos — e o preço de mercado de cada bem reflete, implicitamente, os preços sombra dos atributos que o compõem.

!!! definition "Modelo de Lancaster"
    Cada bem \(j\) contém quantidades fixas de \(m\) atributos, representadas pela matriz de tecnologia de consumo \(\mathbf{B} = [b_{kj}]\), onde \(b_{kj}\) é a quantidade do atributo \(k\) contida em uma unidade do bem \(j\). A utilidade depende dos atributos:

    \[
    U = U(z_1, z_2, \ldots, z_m) \label{eq:6.6.6} \tag{6.6.6}
    \]

    onde cada atributo é "produzido" pelo consumo dos bens:

    \[
    z_k = \sum_{j=1}^n b_{kj} x_j, \quad k = 1, \ldots, m \label{eq:6.6.7} \tag{6.6.7}
    \]

    O consumidor maximiza a equação $\eqref{eq:6.6.6}$ sujeito à relação tecnológica $\eqref{eq:6.6.7}$, à restrição orçamentária \(\mathbf{p} \cdot \mathbf{x} \leq I\) e à não negatividade \(\mathbf{x} \geq 0\).

Esse modelo gera **preços implícitos** (ou **preços hedônicos**) para os atributos. Se o número de atributos for menor que o de bens (\(m < n\)), o consumidor pode calcular o "custo" de cada unidade de atributo combinando bens de modo eficiente. Em certo sentido, Lancaster transforma o problema do consumidor em um problema de programação linear: encontrar a combinação de bens que fornece os atributos desejados ao menor custo.

!!! info "🏅 Prêmio Nobel — Daniel McFadden (2000)"

    **Daniel Little McFadden** (1937–presente) é um economista americano. Obteve o PhD na Universidade de Minnesota e foi professor em Yale, MIT e UC Berkeley. Dividiu o Nobel com James Heckman.

    **Por que ganhou o Nobel:**
    Premiado por desenvolver a teoria e os métodos para análise de escolha discreta. McFadden formulou o modelo logit condicional, que permite estimar a probabilidade de um indivíduo escolher entre alternativas discretas (modos de transporte, localização residencial, marcas) com base nos atributos de cada alternativa — conectando a teoria microeconômica da utilidade aleatória à estimação econométrica.

    **Conexão com este capítulo:**
    O modelo de Lancaster — em que consumidores valorizam atributos dos bens, não os bens em si — é a base teórica dos modelos de escolha discreta de McFadden. A abordagem de preços hedônicos discutida neste capítulo é uma aplicação direta: decompor o preço de um bem (imóvel, automóvel) em contribuições de seus atributos é exatamente o que os métodos de McFadden operacionalizam econometricamente.

### 6.6.2 Implicações

A reformulação de Lancaster pode parecer uma complicação desnecessária — afinal, por que não trabalhar diretamente com bens? A resposta é que o modelo de Lancaster explica fenômenos que a teoria tradicional não captura com facilidade:

- **Introdução de novos bens**: um novo produto é simplesmente uma nova coluna na matriz \(\mathbf{B}\). Se ele oferece uma combinação de atributos mais eficiente (menor custo por unidade de atributo), substitui bens existentes.
- **Diferenciação de produto**: marcas diferentes do "mesmo" bem oferecem combinações distintas de atributos (sabor, durabilidade, status).
- **Preços hedônicos**: o preço de um imóvel, por exemplo, pode ser decomposto em preços implícitos de localização, metragem, número de quartos e outros atributos.

A **análise de preços hedônicos** — desenvolvida formalmente por Sherwin Rosen (1974) — é a operacionalização econométrica do modelo de Lancaster. Rosen mostrou que, em mercados competitivos de bens diferenciados, o preço de equilíbrio de um bem é uma função dos seus atributos, e que as derivadas dessa função em relação a cada atributo revelam os "preços implícitos" (ou "preços hedônicos") que o mercado atribui a cada característica. Em equilíbrio, o preço implícito de um atributo reflete tanto a disposição marginal a pagar dos consumidores quanto o custo marginal de oferta desse atributo — uma estrutura que generaliza a análise de oferta e demanda do mercado de atributos.

No Brasil, a abordagem hedônica tem sido amplamente aplicada ao mercado imobiliário, onde os atributos locacionais — proximidade de estações de metrô, escola de alta qualidade, parques urbanos, índices de criminalidade — podem ser precificados implicitamente a partir dos diferenciais de preço entre imóveis com características físicas semelhantes mas localizações distintas. Essa mesma lógica é usada pelo Banco Central do Brasil para construir índices de preços imobiliários ajustados por qualidade, evitando que uma melhora na composição dos imóveis vendidos seja confundida com inflação de preços.

!!! box-brasil "Box Brasil 6.2: Preços hedônicos e o índice FipeZap no mercado imobiliário"
    O índice FipeZap, calculado pela Fundação Instituto de Pesquisas Econômicas (FIPE) em parceria com o portal Zap Imóveis, acompanha os preços de venda e aluguel de imóveis residenciais em mais de 50 cidades brasileiras. A metodologia central é baseada em **modelos de preços hedônicos** — uma implementação direta do arcabouço de Rosen (1974), que por sua vez operacionaliza o modelo de Lancaster: o preço de cada imóvel é regredido sobre seus atributos físicos (área útil, número de quartos e banheiros, vagas de garagem, andar, presença de elevador) e locacionais (bairro, distância de transporte público, índice de walkability).

    O índice FipeZap de março de 2024 registrava preço médio de venda de R$ 9.082/m² em São Paulo e R$ 11.032/m² no Rio de Janeiro. Mas a diferença entre bairros dentro de uma mesma cidade é ainda mais reveladora: no Rio de Janeiro, o preço médio no Leblon superava R$ 20.000/m², enquanto em Campo Grande (zona oeste) ficava abaixo de R$ 4.000/m². Essa diferença de cinco vezes não reflete apenas metragem ou número de quartos — ela embute o "preço implícito" de atributos locacionais como amenidades urbanas (proximidade de praias, parques, estabelecimentos de saúde e educação), segurança e acesso a transporte.

    A CBIC (Câmara Brasileira da Indústria da Construção) utiliza abordagens semelhantes para analisar o custo de construção por componente, separando o preço do insumo (cimento, aço, mão de obra) do atributo que ele confere ao imóvel. O Banco Central do Brasil, por sua vez, constrói seu Índice de Preços de Imóveis Residenciais (IVG-R) utilizando regressões hedônicas para controlar por mudanças na composição dos imóveis financiados ao longo do tempo — evitando que oscilações no mix de imóveis (por exemplo, mais apartamentos de alto padrão em um período) sejam confundidas com variações reais de preço.

    Do ponto de vista microeconômico, o FipeZap nos permite estimar os preços implícitos dos atributos: estudos aplicados ao mercado paulistano estimam que a proximidade de uma estação de metrô agrega entre R$ 400 e R$ 1.200/m² ao preço do imóvel, dependendo do bairro — o "preço hedônico" da acessibilidade. Da mesma forma, a presença de uma escola pública de qualidade no entorno valoriza o imóvel, revelando a disposição a pagar das famílias pelo atributo "educação de proximidade".

### 6.6.3 Modelo de produção doméstica de Becker

Enquanto Lancaster enfatiza os atributos dos bens, Gary **Becker** (1965) chamou atenção para um recurso escasso que a teoria tradicional ignora: o *tempo*. Becker propôs que as famílias são unidades produtivas que combinam bens de mercado com tempo para gerar **commodities domésticas** que geram utilidade. Por exemplo, uma refeição exige ingredientes (bens) e tempo de preparo (trabalho doméstico). Formalmente:

\[
z_k = f_k(x_k, t_k) \label{eq:6.6.8} \tag{6.6.8}
\]

onde \(x_k\) são bens de mercado e \(t_k\) é o tempo dedicado à atividade \(k\). O consumidor maximiza \(U(z_1, \ldots, z_m)\) sujeito a restrições de orçamento monetário e de tempo total.

O preço implícito de cada commodity doméstica incorpora tanto o custo dos bens quanto o custo de oportunidade do tempo, o que explica, por exemplo, por que famílias de renda mais alta tendem a consumir mais refeições fora do domicílio — o custo de oportunidade do tempo de preparo é elevado. No Brasil, esse fenômeno é claramente documentado pela POF: a parcela do orçamento destinada à alimentação fora do domicílio cresce monotonicamente com a renda, passando de cerca de 14% nas classes mais baixas para mais de 40% nas classes mais altas. O modelo de Becker captura essa regularidade de forma natural — não porque os ricos "gostam mais" de comer fora, mas porque seu tempo vale mais.

O modelo de Becker e o modelo de Lancaster compartilham uma mesma intuição profunda: o que realmente interessa ao consumidor não são os bens de mercado em si, mas o que eles *produzem* — seja em termos de atributos (Lancaster) seja em termos de commodities domésticas combinadas com tempo (Becker). Ambos os modelos implicam que a substituição e a complementaridade entre bens de mercado são, em última análise, derivadas das relações de substituição e complementaridade no espaço dos atributos ou das commodities domésticas.

Essa perspectiva também conecta este capítulo ao Capítulo 12, sobre equilíbrio geral. Em uma economia de equilíbrio geral, os preços dos bens de mercado refletem, em equilíbrio, os preços implícitos dos atributos que eles fornecem — uma visão que tem inspirado a economia ambiental (onde atributos como qualidade do ar ou biodiversidade precisam ser precificados implicitamente) e a economia urbana (onde o preço da terra reflete o valor capitalizado de amenidades locacionais, como na abordagem hedônica do FipeZap descrita acima).

[^cheese-shop]: No sketch *Cheese Shop* de Monty Python, um cliente tenta comprar queijo numa loja que se diz especializada — mas não tem nenhum tipo em estoque. "Venezuelan beaver cheese?" "Not today, sir." A situação do econometrista diante de uma matriz de Slutsky 100×100 é análoga: ele precisa de 10.000 elasticidades, mas o mercado de dados não tem estoque para nenhuma delas. O Teorema do Bem Composto é a solução elegante: reduzir a lista de "queijos" a um punhado de categorias tratáveis.
