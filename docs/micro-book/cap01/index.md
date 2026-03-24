# Capítulo 1 — Todos os Modelos Estão Errados — Alguns São Úteis

A microeconomia é, antes de tudo, uma disciplina de **modelagem**. O mundo real é extraordinariamente complexo: bilhões de agentes tomam decisões simultâneas, mercados interagem entre si, instituições moldam incentivos e a informação se distribui de forma desigual. Diante dessa complexidade, o economista precisa de ferramentas que permitam isolar os mecanismos essenciais e compreender relações causais. Essas ferramentas são os **modelos econômicos**.

Este capítulo apresenta a lógica da construção de modelos em economia, discute como verificá-los empiricamente, examina suas características fundamentais e traça um panorama histórico do desenvolvimento da teoria do valor — o problema central da microeconomia. A exposição segue Nicholson e Snyder (2017, Cap. 1), complementada por Mas-Colell, Whinston e Green (1995, Cap. 1) e Varian (2015, Cap. 1). Para uma discussão acessível e rica em aplicações, ver Pindyck e Rubinfeld (2013, Caps. 1–2).

Ao final, o leitor deverá compreender não apenas *o que* a microeconomia faz, mas *como* e *por que* ela faz dessa forma — e estará preparado para mergulhar nas ferramentas matemáticas do Capítulo 2 e, em seguida, na teoria do consumidor (Capítulos 3 e 4), que traduz as ideias aqui apresentadas em modelos formais de escolha individual.

---

## 1.1 Modelos teóricos: por que simplificar?

A pergunta pode parecer estranha: por que um cientista *escolheria* simplificar? A resposta, embora contra-intuitiva, é que a simplificação não é uma fraqueza da análise econômica — é sua maior força. Para entender por quê, considere uma analogia.

### A analogia do mapa

Um modelo econômico é, em essência, um **mapa**. Assim como um mapa cartográfico não pretende reproduzir cada árvore, cada pedra e cada curva de um rio, um modelo econômico não pretende capturar toda a riqueza do comportamento humano. Um mapa na escala 1:1 seria perfeitamente fiel à realidade — e perfeitamente inútil. O escritor argentino Jorge Luis Borges, em seu conto *Do rigor na ciência* (1946), imaginou um império onde os cartógrafos desenharam um mapa tão detalhado que coincidia ponto a ponto com o território. O mapa foi abandonado, destruído pelo sol e pelas chuvas — um monumento à inutilidade da representação total. A utilidade de um mapa reside precisamente no que ele **omite**: ao eliminar detalhes irrelevantes para a finalidade em questão, ele revela a estrutura subjacente do território.

Da mesma forma, um modelo econômico é uma representação simplificada da realidade que retém apenas os elementos considerados essenciais para o problema investigado. Como observou o estatístico George Box, "todos os modelos estão errados, mas alguns são úteis." A arte da modelagem consiste em saber o que incluir e — igualmente importante — o que descartar. Um modelo de oferta e demanda para o mercado de café ignora as preferências dos consumidores por torrefação clara ou escura, a umidade relativa do ar nos cafezais e a cor das embalagens. Essas omissões não são defeitos: são escolhas deliberadas que permitem focar nos mecanismos causais relevantes — preço, renda, custos de produção — e derivar previsões testáveis.

!!! definition "Modelo Econômico"
    Um **modelo econômico** é uma representação simplificada de uma situação econômica real, expressa por meio de relações lógicas (frequentemente matemáticas) entre variáveis, construída com o objetivo de explicar fenômenos observados e gerar previsões testáveis (Nicholson & Snyder, 2017, p. 3).

!!! idea "Intuição Econômica"
    **Em uma frase:** Um modelo econômico é uma receita que deixa de fora os ingredientes que não fazem diferença no sabor.

    **Pense assim:** Quando o Waze calcula sua rota em São Paulo, ele ignora a cor dos prédios, o nome das padarias e se está chovendo na Bahia. Ele simplifica o mundo para resolver *seu* problema. Um modelo econômico faz o mesmo: descarta o que não importa para a pergunta que você está fazendo.

    **Por que isso importa:** Toda política pública — do Bolsa Família à Selic — nasce de um modelo. Saber o que ele ignora é tão importante quanto saber o que ele inclui.

### Elementos de um modelo

Tendo compreendido *por que* simplificamos, cabe perguntar: *como* um modelo econômico é construído? Quais são seus componentes básicos? Assim como uma receita tem ingredientes, um modo de preparo e um resultado final, um modelo econômico possui elementos bem definidos que se articulam de forma lógica. Todo modelo econômico contém:

1. **Suposições** (*assumptions*): premissas sobre o comportamento dos agentes, a estrutura do mercado ou a tecnologia disponível. Por exemplo, a suposição de que consumidores maximizam utilidade ou de que firmas são tomadoras de preço.
2. **Variáveis**: grandezas que o modelo busca explicar (endógenas) ou que toma como dadas (exógenas). A distinção entre elas define o alcance e os limites do modelo.
3. **Relações funcionais**: equações ou desigualdades que conectam as variáveis — como uma função de demanda que relaciona quantidade ao preço.
4. **Implicações** (*predictions*): resultados derivados logicamente das suposições. São as previsões testáveis do modelo — o produto final que justifica todo o exercício de simplificação.

A qualidade de um modelo não se mede pelo "realismo" de suas suposições, mas pela capacidade de suas implicações em organizar o pensamento e gerar previsões empiricamente relevantes. Esse critério pragmático — que prioriza a utilidade sobre o realismo — é um dos traços mais distintivos da metodologia econômica, e a próxima seção explora suas raízes filosóficas.

Mas como saber se um modelo é, de fato, útil? Se a qualidade não reside nas suposições, onde está o critério de avaliação? A próxima seção aborda exatamente essa questão: como verificar — e eventualmente rejeitar — um modelo econômico.

---

## 1.2 Verificação de modelos econômicos

### Abordagem direta versus indireta

Se um modelo é, por definição, uma simplificação, como julgar se a simplificação foi bem-feita? A resposta depende do critério adotado, e aqui a metodologia econômica se divide em duas tradições distintas. Existem duas estratégias fundamentais para avaliar um modelo:

**Abordagem direta**: examina-se o realismo das suposições do modelo. Se as premissas são "razoáveis", confia-se nas conclusões. Essa abordagem tem a vantagem da transparência, mas apresenta uma limitação séria: suposições irrealistas podem, paradoxalmente, gerar previsões excelentes. A física newtoniana, por exemplo, ignora a curvatura do espaço-tempo — suposição "errada" segundo a relatividade geral — mas prevê com precisão suficiente a órbita dos planetas para o cálculo de viagens espaciais.

**Abordagem indireta** (instrumentalismo): avalia-se o modelo exclusivamente pela qualidade de suas previsões, independentemente do realismo das suposições. Essa é a posição defendida por Milton Friedman em seu célebre ensaio "The Methodology of Positive Economics" (1953), um dos textos mais influentes e debatidos da história do pensamento econômico.

!!! note "A posição de Friedman"
    Para Friedman, a questão relevante não é se as suposições de um modelo são "realistas" — elas nunca são —, mas se o modelo gera previsões suficientemente boas para o propósito em questão. Uma teoria sobre a trajetória de bolas de bilhar pode supor que os jogadores resolvem equações de física — suposição claramente falsa —, mas se as previsões forem acuradas, o modelo é útil.

Na prática, a maioria dos economistas adota uma posição intermediária: embora as previsões sejam o teste último, o realismo das suposições importa na medida em que afeta a robustez do modelo fora da amostra em que foi calibrado. Um modelo cujas suposições são grosseiramente irrealistas pode gerar boas previsões em condições normais, mas falhar espetacularmente quando as circunstâncias mudam — como ficou evidente na crise financeira de 2008, quando modelos de risco baseados em distribuições normais subestimaram catastroficamente a probabilidade de eventos extremos.

### Testes empíricos em economia

Independentemente de se adotar a abordagem direta ou indireta, a verificação de modelos econômicos exige, em última instância, confronto com dados empíricos. No entanto, a verificação empírica em economia enfrenta desafios particulares que a distinguem das ciências experimentais:

- **Impossibilidade de experimentos controlados** na maioria dos casos (embora a economia experimental e os ensaios controlados aleatorizados tenham avançado significativamente desde os anos 2000).
- **Problemas de identificação**: distinguir correlação de causalidade é o desafio central da econometria. Observar que países com mais sorveterias têm maior renda per capita não significa que sorveterias causam riqueza — ambas as variáveis podem ser efeito de um terceiro fator (clima temperado, urbanização).
- **Expectativas e reflexividade**: os agentes econômicos reagem às próprias previsões dos modelos, criando um problema de endogeneidade sem paralelo nas ciências naturais. Se o Banco Central anuncia que a inflação será alta, consumidores e firmas ajustam comportamentos de modo que a previsão pode se autorrealizar.

!!! warning "Correlação não é causalidade"
    Um dos erros mais comuns na interpretação de evidências econômicas é confundir correlação com causalidade. O fato de duas variáveis se moverem juntas não implica que uma *cause* a outra. Um exemplo clássico: entre 1999 e 2009, o número de filmes em que Nicolas Cage apareceu se correlacionou fortemente com o número de afogamentos em piscinas nos EUA. Obviamente, Nicolas Cage não causa afogamentos — ambas as séries seguem tendências temporais que, por acaso, coincidem.

    Em economia, o problema é ainda mais sutil. Países que adotam instituições de livre mercado tendem a ser mais ricos — mas isso ocorre porque as instituições *causam* riqueza, ou porque países ricos *escolhem* essas instituições? A direção da causalidade importa crucialmente para a recomendação de política.

    As técnicas de identificação causal da econometria moderna — variáveis instrumentais, diferenças em diferenças, regressão descontínua — foram desenvolvidas precisamente para enfrentar esse desafio. Como veremos na seção "Pesquisa em Ação", Angrist e Pischke (2010) documentam essa "revolução da credibilidade" que transformou a economia empírica.

A econometria moderna desenvolveu técnicas sofisticadas para lidar com esses problemas. No Brasil, pesquisas domiciliares como a **[PNAD Contínua](https://www.ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua.html)** (Pesquisa Nacional por Amostra de Domicílios) do [IBGE](https://www.ibge.gov.br) e a **Pesquisa de Orçamentos Familiares (POF)** fornecem dados fundamentais para testar modelos microeconômicos — desde a estimação de elasticidades de oferta de trabalho até a avaliação do impacto de programas como o Bolsa Família sobre decisões de consumo das famílias. O Censo Demográfico, realizado a cada dez anos, oferece dados universais que permitem análises com granularidade municipal, essenciais para estudos de economia regional e avaliação de políticas descentralizadas.

Agora que compreendemos como os modelos são construídos e avaliados, podemos nos perguntar: que características comuns compartilham os modelos microeconômicos? Quais são os princípios metodológicos que permeiam praticamente toda a disciplina? A próxima seção identifica três pilares que sustentam a análise microeconômica.

---

## 1.3 Características gerais dos modelos microeconômicos

### O princípio *ceteris paribus*

Os modelos microeconômicos compartilham certas características metodológicas que os distinguem de outras formas de raciocínio sobre a economia. A primeira — e talvez a mais fundamental — é o recurso ao princípio *ceteris paribus*, que permite ao economista raciocinar sobre o efeito isolado de uma variável, mesmo em um mundo onde tudo muda ao mesmo tempo.

!!! definition "Ceteris Paribus"
    A cláusula *ceteris paribus* ("tudo o mais constante") é um recurso metodológico que permite isolar o efeito de uma variável sobre outra, mantendo todas as demais grandezas relevantes inalteradas. Por exemplo: "um aumento no preço de um bem, *ceteris paribus*, reduz a quantidade demandada."

Esse princípio é análogo ao controle de variáveis em um experimento de laboratório. Embora na realidade "tudo o mais" raramente permaneça constante, a análise *ceteris paribus* permite identificar relações causais parciais que, combinadas, fornecem uma compreensão do sistema como um todo. Matematicamente, o *ceteris paribus* corresponde à derivada parcial: quando escrevemos \(\partial Q^d / \partial P < 0\), estamos afirmando que a quantidade demandada cai quando o preço sobe, mantendo renda, preferências e preços de outros bens constantes. No Capítulo 2, veremos como o diferencial total e o teorema da função implícita formalizam essa ideia com precisão.

!!! idea "Intuição Econômica"
    **Em uma frase:** *Ceteris paribus* é o "muda só uma coisa por vez" da economia.

    **Pense assim:** Se você quer saber se sal melhora o feijão, não muda a panela, o fogo e o tipo de feijão ao mesmo tempo. Você muda *só* o sal e compara. Economistas fazem o mesmo: perguntam "o que acontece se o preço da gasolina subir, mas a renda, o preço do etanol e tudo mais ficarem iguais?"

    **Por que isso importa:** Sem essa disciplina mental, é impossível separar causa de coincidência — e políticas públicas baseadas em coincidências costumam fracassar.

### A hipótese de otimização

O *ceteris paribus* nos diz como analisar; mas o que os modelos supõem sobre o comportamento dos agentes? Aqui entra o segundo pilar metodológico. A maior parte da microeconomia repousa sobre a premissa de que os agentes econômicos são **otimizadores**:

- **Consumidores** maximizam utilidade sujeita a uma restrição orçamentária. No Capítulo 3, formalizaremos essa ideia por meio dos axiomas das preferências e da função de utilidade; no Capítulo 4, resolveremos o problema de otimização propriamente dito.
- **Firmas** maximizam lucro (ou minimizam custo) sujeitas a restrições tecnológicas. A Seção 1.7 deste capítulo oferece uma primeira demonstração dessa lógica, que será desenvolvida em profundidade nos Capítulos 7–9.
- **Governo** (em modelos normativos) maximiza bem-estar social sujeito a restrições de informação e incentivos.

Essa hipótese não exige que os agentes sejam perfeitamente racionais em sentido psicológico. Basta que se **comportem como se** otimizassem — a chamada abordagem "as if" de Friedman. Um agricultor no interior do Mato Grosso pode nunca ter ouvido falar de derivadas ou condições de primeira ordem, mas se suas decisões de plantio se aproximam sistematicamente da solução do problema de maximização de lucro, o modelo de otimização é uma descrição útil de seu comportamento. A economia comportamental, discutida na Seção 1.6, estuda os contextos em que essa aproximação é menos precisa — mas mesmo aí, o modelo otimizador permanece como *benchmark* indispensável.

!!! idea "Intuição Econômica"
    **Em uma frase:** A microeconomia não diz que as pessoas fazem contas — diz que elas *agem como se* fizessem.

    **Pense assim:** Um jogador de sinuca experiente não resolve equações de física antes de cada tacada, mas suas jogadas se aproximam da trajetória que a física prevê. Da mesma forma, um consumidor no Mercado Municipal não calcula derivadas, mas tende a escolher uma cesta que se parece com a solução do problema de otimização.

    **Por que isso importa:** A hipótese "como se" é o que permite à microeconomia gerar previsões testáveis sobre o comportamento de milhões de pessoas, sem precisar abrir a cabeça de cada uma.

### Distinção entre análise positiva e normativa

Os dois pilares anteriores — *ceteris paribus* e otimização — são ferramentas para construir modelos e derivar previsões. Mas há uma distinção conceitual igualmente importante que todo economista precisa manter em mente: a diferença entre descrever o que *é* e prescrever o que *deveria ser*. Essa distinção, formulada originalmente por David Hume no século XVIII e popularizada por John Neville Keynes (pai de John Maynard Keynes) em 1891, permanece como uma das pedras angulares da metodologia econômica. A [Tabela 1.1](#tabela-1-1) sintetiza essa distinção.

<a id="tabela-1-1"></a>

| Aspecto | Análise Positiva | Análise Normativa |
|---|---|---|
| **Pergunta central** | "O que é?" / "O que será?" | "O que deveria ser?" |
| **Natureza** | Descritiva/preditiva | Prescritiva |
| **Verificação** | Confronto com dados | Julgamento de valor |
| **Exemplo** | "Um imposto sobre cigarro reduz o consumo em X%" | "O governo deveria tributar cigarros" |

<div class="caption-obj" markdown>
**Tabela 1.1 — Análise positiva vs. normativa.**
</div>

!!! tip "Importância da distinção"
    Embora a fronteira entre análise positiva e normativa nem sempre seja nítida, manter a distinção é essencial para o rigor intelectual. Muitas controvérsias em política econômica decorrem de confusões entre proposições positivas e normativas. Quando dois economistas "discordam", é fundamental perguntar: discordam sobre os *fatos* (questão positiva, resolúvel com dados) ou sobre os *valores* (questão normativa, irredutível a evidências)?

Com os três pilares metodológicos em mãos — *ceteris paribus*, otimização e a distinção positivo/normativo —, estamos prontos para examinar mais de perto a estrutura formal de um modelo microeconômico típico. Como, concretamente, esses princípios se materializam em equações e variáveis?

---

## 1.4 Estrutura dos modelos econômicos

### Variáveis exógenas e endógenas

O primeiro passo na construção de qualquer modelo é separar claramente o que será explicado daquilo que será tomado como dado. Essa distinção, aparentemente simples, é uma das decisões mais consequentes da modelagem: ela define o alcance — e os limites — do modelo. Um mesmo fenômeno pode ser tratado como exógeno em um modelo e endógeno em outro, dependendo da pergunta que se deseja responder. O preço do petróleo, por exemplo, é exógeno em um modelo do mercado de gasolina no Brasil, mas endógeno em um modelo do mercado mundial de commodities.

!!! definition "Variáveis Exógenas e Endógenas"
    **Variáveis exógenas** são determinadas fora do modelo — são os dados, os parâmetros, as "causas". **Variáveis endógenas** são determinadas dentro do modelo — são as incógnitas, os "efeitos". A tarefa do modelo é explicar como as variáveis endógenas respondem a mudanças nas variáveis exógenas.

Considere o modelo clássico de oferta e demanda para um mercado competitivo:

- **Exógenas**: renda dos consumidores (\(Y\)), preços dos insumos (\(w\)), tecnologia (\(A\)), preferências dos consumidores.
- **Endógenas**: preço de equilíbrio (\(P^*\)) e quantidade de equilíbrio (\(Q^*\)).

As equações do modelo:

\[
Q^d = D(P, Y) \quad \text{(demanda)} \label{eq:1.4.1} \tag{1.4.1}
\]

\[
Q^s = S(P, w, A) \quad \text{(oferta)} \label{eq:1.4.2} \tag{1.4.2}
\]

\[
Q^d = Q^s \quad \text{(equilíbrio)} \label{eq:1.4.3} \tag{1.4.3}
\]

!!! definition "Equilíbrio de Mercado"
    Um **equilíbrio de mercado** é uma configuração de preço \(P^*\) e quantidade \(Q^*\) na qual a quantidade que os consumidores desejam comprar é igual à quantidade que os produtores desejam vender: \(Q^d(P^*) = Q^s(P^*)\). No equilíbrio, não há pressão para que o preço mude — nenhum agente tem incentivo para alterar unilateralmente seu comportamento. Fora do equilíbrio, o excesso de demanda ou de oferta gera forças que empurram o preço de volta ao ponto de equilíbrio, como uma bola no fundo de uma tigela.

<iframe src="../graficos/cap01/oferta-demanda.html" title="Figura 1.1 — Oferta e Demanda com Estática Comparativa" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 1.1 — Oferta e Demanda com Estática Comparativa.** Ajuste a renda \(Y\), o custo dos insumos \(w\) e as inclinações das curvas para observar como \(P^*\) e \(Q^*\) se deslocam. O painel mostra as derivadas de estática comparativa \(\partial P^*/\partial Y\) e \(\partial P^*/\partial w\) em tempo real.
</div>

<iframe src="../graficos/cap01/fluxo-circular.html" title="Figura 1.2 — Diagrama de fluxo circular: famílias e firmas interagem nos mercados de produto e de fatores" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 1.2 — Diagrama de fluxo circular: famílias e firmas interagem nos mercados de produto e de fatores.** Ative o governo e o setor externo para visualizar fluxos adicionais. Passe o mouse sobre as setas para detalhes.
</div>

### A hipótese de otimização como fundamento

O sistema de equações $\eqref{eq:1.4.1}$--$\eqref{eq:1.4.3}$ descreve o equilíbrio de um mercado, mas como chegamos a essas equações? A resposta está na hipótese de otimização discutida na Seção 1.3. Na prática, a construção de um modelo microeconômico segue um roteiro bem definido, que traduz a ideia de agentes otimizadores em um problema matemático concreto. A estrutura típica de um modelo microeconômico envolve:

1. **Definir o objetivo** do agente (função utilidade, função lucro).
2. **Identificar as restrições** (orçamentária, tecnológica, informacional).
3. **Resolver o problema de otimização** (condições de primeira e segunda ordem).
4. **Derivar funções de resposta** (demanda, oferta) como funções dos parâmetros exógenos.
5. **Analisar estática comparativa**: como as soluções ótimas mudam quando os parâmetros variam.

!!! definition "Estática Comparativa"
    A **estática comparativa** consiste em comparar dois equilíbrios — um antes e outro depois de uma mudança em uma variável exógena — para determinar a *direção* e a *magnitude* da resposta das variáveis endógenas. O termo "estática" indica que se comparam dois pontos de repouso, sem descrever o caminho de ajuste entre eles; "comparativa" indica a comparação entre os dois estados. Formalmente, trata-se de calcular derivadas como \(\partial P^* / \partial Y\) (efeito de uma variação na renda sobre o preço de equilíbrio). No Capítulo 2, o teorema da função implícita e o teorema do envelope fornecerão as ferramentas matemáticas para realizar estática comparativa de forma sistemática.

Esse roteiro será seguido repetidamente ao longo deste livro: no Capítulo 3, para formalizar as preferências do consumidor; no Capítulo 4, para derivar as funções de demanda; nos Capítulos 7–9, para obter as curvas de custo e oferta da firma; e no Capítulo 12, para analisar o equilíbrio geral. Mas antes de mergulhar na análise formal, vale a pena situar as ideias que discutimos até aqui em uma perspectiva mais ampla. Como a ciência econômica chegou a esse modo de pensar? A resposta passa pela história da teoria do valor — o problema central que motivou o desenvolvimento da microeconomia.

---

## 1.5 Desenvolvimento da teoria do valor

A história do pensamento econômico pode ser lida como uma longa investigação sobre uma pergunta aparentemente simples: **o que determina o valor de um bem?** Por que o diamante custa mais que a água, embora a água seja indispensável à vida? Por que um quadro de Picasso vale milhões, enquanto uma cópia perfeita vale quase nada? Diferentes gerações de economistas ofereceram respostas distintas para essas perguntas, e a evolução dessas respostas moldou a microeconomia tal como a conhecemos hoje. A [Tabela 1.2](#tabela-1-2) apresenta uma cronologia das principais contribuições.

<a id="tabela-1-2"></a>

| Período | Escola / Autor | Contribuição Principal |
|---|---|---|
| 1776 | Adam Smith | Teoria do valor-trabalho; mão invisível; divisão do trabalho |
| 1817 | David Ricardo | Teoria do valor-trabalho refinada; vantagens comparativas; renda da terra |
| 1848 | John Stuart Mill | Síntese clássica; custos de produção como determinante do valor de longo prazo |
| 1871 | Revolução Marginalista (Jevons, Menger, Walras) | Valor determinado pela utilidade marginal; análise na margem |
| 1890 | Alfred Marshall | Síntese neoclássica: oferta (custos) e demanda (utilidade) como "duas lâminas da tesoura" |
| 1874–1877 | Léon Walras | Equilíbrio geral; interdependência dos mercados |
| 1939 | John Hicks | *Value and Capital*: formalização da teoria do consumidor e equilíbrio geral |
| 1947 | Paul Samuelson | *Foundations*: axiomatização da teoria econômica; preferência revelada |
| 1954 | Arrow & Debreu | Prova de existência do equilíbrio geral competitivo |
| 1970– | Teoria dos jogos, informação assimétrica, economia comportamental | Fronteiras modernas da microeconomia |

<div class="caption-obj" markdown>
**Tabela 1.2 — Cronologia das principais escolas de pensamento.**
</div>

### Os economistas clássicos: Smith e Ricardo

Para compreender a revolução que a microeconomia moderna representou, é preciso conhecer o ponto de partida: a economia clássica dos séculos XVIII e XIX. Os economistas clássicos buscaram explicar o valor a partir do lado da produção — mais especificamente, a partir do trabalho.

Adam Smith (1776), em *A Riqueza das Nações*, propôs que o valor de troca de um bem é determinado pela quantidade de trabalho necessária para produzi-lo. Smith distinguiu entre **valor de uso** (utilidade) e **valor de troca** (poder de compra sobre outros bens), observando o famoso "paradoxo da água e do diamante": a água tem enorme valor de uso mas baixo valor de troca, enquanto o diamante tem pouco valor de uso prático mas alto valor de troca. Smith reconhecia que algo não se encaixava — se o valor depende do trabalho, por que a água, que exige pouco trabalho, tem valor de uso tão grande? —, mas não conseguiu resolver a tensão.

David Ricardo (1817) refinou a teoria do valor-trabalho, reconhecendo o papel do capital como "trabalho incorporado" e desenvolvendo a teoria da **renda diferencial da terra**. A contribuição de Ricardo foi mostrar que o preço dos cereais não é alto porque a renda da terra é alta — ao contrário, a renda é alta porque o preço é alto. Terras menos férteis, cultivadas apenas porque a demanda crescente assim exige, não geram renda alguma; as terras mais férteis geram renda precisamente porque são mais produtivas que a margem de cultivo. Essa inversão causal — do preço para a renda, e não da renda para o preço — antecipou em décadas o pensamento marginalista.

Apesar de suas contribuições fundamentais, os economistas clássicos não conseguiram resolver de modo satisfatório o problema do valor. O paradoxo da água e do diamante permanecia como uma incômoda lacuna teórica. A resolução viria de uma mudança radical de perspectiva, protagonizada quase simultaneamente por três pensadores em três países diferentes.

### A Revolução Marginalista

A década de 1870 assistiu a uma revolução no pensamento econômico, protagonizada independentemente por três autores:

- **William Stanley Jevons** (Inglaterra, 1871), em *The Theory of Political Economy*, formulou a ideia de que o valor de troca é determinado pela "utilidade final" — o que hoje chamamos de utilidade marginal.
- **Carl Menger** (Áustria, 1871), em *Grundsätze der Volkswirtschaftslehre* (Princípios de Economia), desenvolveu uma teoria subjetiva do valor centrada nas necessidades do indivíduo e na escassez relativa dos bens.
- **Léon Walras** (Suíça, 1874), em *Éléments d'économie politique pure*, formalizou matematicamente a determinação simultânea de preços em todos os mercados.

Os três chegaram à mesma conclusão fundamental: o valor de um bem é determinado não pela quantidade total de utilidade que ele proporciona, mas pela **utilidade marginal** — a utilidade da última unidade consumida. Isso resolve o paradoxo da água e do diamante: a água é abundante, logo sua utilidade marginal é baixa; o diamante é escasso, logo sua utilidade marginal é alta. A resolução é elegante: Smith confundia utilidade *total* com utilidade *marginal*. A água tem enorme utilidade total (sem ela, morremos), mas a próxima unidade adicional (o centésimo litro do dia) acrescenta muito pouco. O diamante tem utilidade total modesta, mas como possuímos poucos, cada unidade adicional é altamente valorizada.

!!! idea "Intuição Econômica"
    **Em uma frase:** O valor de um bem não depende de quanto você precisa dele no total, mas de quanto precisa da *próxima* unidade.

    **Pense assim:** No sertão nordestino, o primeiro litro de água do dia vale ouro. O centésimo litro serve para lavar a calçada. A água não mudou — o que mudou foi a *margem*. O diamante é caro não porque é mais útil que a água, mas porque você quase nunca tem um sobrando.

    **Por que isso importa:** Essa ideia — pensar na margem — é a revolução que separou a economia moderna da clássica. Todo preço, todo custo, toda decisão se resolve na margem, não no total. No Capítulo 3, formalizaremos essa noção como a *utilidade marginal* e a *taxa marginal de substituição*.

<iframe src="../graficos/cap01/utilidade-marginal.html" title="Figura 1.3 — Utilidade Marginal e o Paradoxo Água × Diamante" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 1.3 — Utilidade Marginal e o Paradoxo Água × Diamante.** A curva \(UMg(x)\) é decrescente: quanto mais abundante o bem, menor o valor da próxima unidade. Ajuste as quantidades de água e diamante para ver que a água tem maior utilidade *total* (área sob a curva), mas menor utilidade *marginal* (altura da curva) — resolvendo o paradoxo de Smith.
</div>

!!! info "Prêmio Nobel — Paul Samuelson (1970)"

    **Paul Anthony Samuelson** (1915–2009) foi um economista norte-americano, formado pela Universidade de Chicago e com doutorado em Harvard. Atuou por décadas no MIT, onde fundou uma das mais influentes escolas de economia do mundo.

    **Por que ganhou o Nobel:**
    Samuelson foi o primeiro laureado em Economia, premiado "pelo trabalho científico por meio do qual desenvolveu a teoria econômica estática e dinâmica e contribuiu ativamente para elevar o nível geral de análise na ciência econômica." Em *Foundations of Economic Analysis* (1947), Samuelson axiomatizou a teoria microeconômica, mostrando que praticamente todos os resultados da economia podiam ser derivados de problemas de otimização com restrição — formalizando o roteiro descrito na Seção 1.4.

    **Conexão com este capítulo:**
    A abordagem de Samuelson é a espinha dorsal da metodologia descrita neste capítulo: definir uma função objetivo, impor restrições, resolver por condições de primeira ordem e derivar estática comparativa. Seu conceito de *preferência revelada* oferece ainda uma alternativa empírica aos axiomas de preferência do Capítulo 3, permitindo inferir as preferências do consumidor a partir de suas escolhas observadas.

### Marshall e a síntese neoclássica

A revolução marginalista resolveu o paradoxo do valor, mas criou uma tensão: se o valor depende da utilidade marginal (do lado da demanda), qual é o papel dos custos de produção (do lado da oferta), tão enfatizados pelos clássicos? A síntese veio com Alfred Marshall. Marshall (1890), em seus *Principles of Economics*, realizou a grande síntese entre as tradições clássica e marginalista. Marshall argumentou que perguntar se é a oferta ou a demanda que determina o preço é como perguntar qual das duas lâminas de uma tesoura corta o papel — ambas são necessárias, e é vão debater qual é mais importante. No **curto prazo**, quando a oferta é relativamente fixa, a demanda (e portanto a utilidade marginal) é mais importante para determinar o preço; no **longo prazo**, quando a oferta se ajusta, os custos de produção predominam. A oferta e a demanda operam juntas, como as duas lâminas, para determinar o preço de equilíbrio — o conceito central formalizado nas equações $\eqref{eq:1.4.1}$–$\eqref{eq:1.4.3}$.

### Equilíbrio geral walrasiano

Marshall analisava cada mercado separadamente — café, trigo, aço — tratando os demais mercados como "pano de fundo" constante. Essa abordagem, chamada de *equilíbrio parcial*, é operacionalmente conveniente e será a principal ferramenta analítica ao longo deste livro. Mas e se quisermos entender como todos os mercados se determinam simultaneamente? Essa é a pergunta do equilíbrio geral. Walras foi além da análise de mercados isolados e formulou o problema do **equilíbrio geral**: a determinação simultânea de preços e quantidades em todos os mercados da economia. Em 1954, Kenneth Arrow e Gérard Debreu provaram rigorosamente a existência de um equilíbrio geral competitivo sob condições apropriadas — um dos maiores feitos intelectuais da ciência econômica (Mas-Colell, Whinston & Green, 1995, cap. 17). A prova mostrou que, sob hipóteses razoáveis sobre preferências e tecnologia, existe um conjunto de preços que equilibra todos os mercados simultaneamente — uma validação formal da intuição de Adam Smith sobre a "mão invisível".

A teoria do valor percorreu, portanto, um arco que vai do valor-trabalho dos clássicos, passa pela utilidade marginal dos marginalistas, chega à síntese marshalliana e culmina na formalização rigorosa do equilíbrio geral. Mas a história não parou aí. Nas últimas décadas, a microeconomia expandiu seus horizontes para além do modelo competitivo básico, incorporando interações estratégicas, informação imperfeita e comportamento real dos agentes — desenvolvimentos que a próxima seção examina.

---

## 1.6 Desenvolvimentos modernos

O modelo competitivo básico — agentes tomadores de preço, informação perfeita, racionalidade plena — forneceu por décadas o arcabouço central da microeconomia. Mas o mundo real apresenta situações que esse modelo não captura adequadamente: empresas que competem estrategicamente, mercados em que vendedores sabem mais que compradores, consumidores que sistematicamente se desviam das previsões do modelo racional. A microeconomia contemporânea expandiu-se em várias direções, relaxando as suposições do modelo competitivo básico:

- **Teoria dos jogos**: modelagem de interações estratégicas entre agentes, quando as decisões de cada um afetam os resultados dos demais (Nash, 1950; Mas-Colell et al., 1995, parte IV). Quando a Ambev decide o preço de sua cerveja, ela considera a possível reação da Heineken — e vice-versa. Essa interdependência estratégica, ausente no modelo competitivo, é o objeto da teoria dos jogos, que será tema dos Capítulos 14–15.
- **Economia da informação**: análise de mercados com informação assimétrica — seleção adversa (Akerlof, 1970), risco moral e sinalização (Spence, 1973). No mercado de carros usados, por exemplo, o vendedor sabe mais sobre a qualidade do veículo do que o comprador, o que pode levar ao colapso do mercado para carros de boa qualidade — o famoso "mercado de limões" de Akerlof.
- **Economia comportamental**: incorporação de insights da psicologia — racionalidade limitada, vieses cognitivos, preferências dependentes de referência (Kahneman & Tversky, 1979). No Brasil, princípios comportamentais vêm sendo aplicados em políticas públicas, como o uso de *nudges* (arquitetura de escolhas) na simplificação de formulários de acesso a benefícios sociais e na comunicação sobre educação financeira pelo Banco Central.
- **Teoria dos mecanismos**: desenho de instituições e regras que alinham incentivos individuais com objetivos sociais (Hurwicz, Maskin, Myerson). Os leilões de concessão de petróleo conduzidos pela ANP no Brasil, por exemplo, são desenhados com base em princípios da teoria dos mecanismos para maximizar a arrecadação e garantir a eficiência alocativa.
- **Economia experimental**: uso de experimentos controlados em laboratório e em campo para testar previsões teóricas e avaliar políticas públicas.

!!! box-brasil "Box Brasil — O CADE e a análise antitruste baseada em modelos"

    O **Conselho Administrativo de Defesa Econômica (CADE)** é a autoridade antitruste brasileira, vinculada ao Ministério da Justiça. Quando duas empresas anunciam uma fusão ou aquisição, o CADE avalia se a operação pode prejudicar a concorrência — e, para isso, utiliza extensivamente modelos econômicos.

    **Como os modelos são usados.** O CADE define o *mercado relevante* (que produtos competem entre si? em que região geográfica?) com base em testes como o SSNIP (*Small but Significant and Non-transitory Increase in Price*), que é essencialmente um exercício de estática comparativa: se uma firma hipotética monopolista elevasse o preço em 5–10%, os consumidores migrariam para outro produto? Se sim, os dois produtos pertencem ao mesmo mercado. Em seguida, o CADE estima a concentração de mercado (índice HHI), simula os efeitos da fusão sobre preços e quantidades usando modelos de oligopólio (como o modelo de Bertrand ou Cournot, temas dos Capítulos 14–15) e avalia se os possíveis ganhos de eficiência compensam os riscos concorrenciais.

    **Um exemplo concreto.** Em 2012, o CADE analisou a aquisição da Sadia pela Perdigão (formando a BRF). Utilizando modelos de demanda e simulações de fusão, a equipe técnica estimou aumentos de preços potenciais em categorias como presuntos, salsichas e margarinas. A aprovação foi condicionada à venda de marcas para reduzir a concentração em mercados específicos — uma intervenção diretamente fundamentada nos resultados dos modelos.

    **Conexão com o capítulo.** O caso do CADE ilustra todos os elementos discutidos neste capítulo: a construção de modelos com variáveis exógenas (elasticidades de demanda, custos marginais) e endógenas (preços pós-fusão); a verificação indireta (as previsões do modelo são comparadas com dados de preços após operações anteriores); e a distinção positivo/normativo (o modelo prevê o aumento de preço — análise positiva; a decisão de bloquear ou condicionar a fusão envolve juízo sobre eficiência e bem-estar — análise normativa).

    **Fonte:** CADE, Ato de Concentração nº 08012.004423/2009-18 (BRF); Guia para Análise de Atos de Concentração Horizontal (CADE, 2016).

!!! tip "Microeconomia aplicada"
    A microeconomia moderna é amplamente utilizada em políticas públicas, regulação de mercados, leilões (como os de espectro eletromagnético), desenho de mercados (como *matching* de médicos residentes ou doação de órgãos), e análise antitruste. Essas aplicações ilustram que os modelos discutidos ao longo deste livro não são abstrações desconectadas da realidade, mas ferramentas operacionais com impacto direto sobre decisões que afetam milhões de pessoas.

Com esse panorama dos desenvolvimentos modernos, temos uma visão completa do que a microeconomia faz e para onde se dirige. Retornemos agora ao terreno formal para consolidar, em uma demonstração concreta, a lógica de modelagem discutida ao longo deste capítulo.

---

## 1.7 — Demonstração: Condição de maximização de lucro P = CMg

Para consolidar a lógica de modelagem discutida ao longo deste capítulo, apresentamos a seguir uma demonstração formal completa de um dos resultados mais importantes da microeconomia: a condição de maximização de lucro da firma competitiva. Este resultado ilustra concretamente o roteiro da Seção 1.4 — definir objetivo, identificar restrições, resolver o problema de otimização e interpretar o resultado. É também o primeiro exemplo de como o cálculo diferencial — as ferramentas do Capítulo 2 — se aplica a problemas econômicos.

!!! theorem "Teorema: Condição de Primeira Ordem para Maximização de Lucro"
    Considere uma firma tomadora de preços (*price taker*) em um mercado competitivo. Se a firma produz uma quantidade positiva \(q^* > 0\) que maximiza seu lucro, então o preço de mercado deve ser igual ao custo marginal avaliado nessa quantidade:

    \[
    P = CMg(q^*)
    \]

    Além disso, a condição de segunda ordem exige que o custo marginal seja crescente nesse ponto.

!!! proof "Demonstração"

    O lucro da firma é dado por:

    \[
    \pi(q) = RT(q) - CT(q) = P \cdot q - CT(q) \label{eq:1.4.4} \tag{1.4.4}
    \]

    onde \(P\) é o preço de mercado (dado, exógeno para a firma competitiva), \(RT(q)\) é a receita total e \(CT(q)\) é o custo total.

    **Condição de primeira ordem (CPO):**

    Para que \(q^*\) seja um máximo interior, é necessário que a derivada do lucro em relação a \(q\) seja zero:

    \[
    \frac{d\pi}{dq}\bigg|_{q=q^*} = 0 \label{eq:1.4.5} \tag{1.4.5}
    \]

    \[
    \frac{d}{dq}\left[P \cdot q - CT(q)\right]\bigg|_{q=q^*} = 0
    \]

    \[
    P - \frac{dCT}{dq}\bigg|_{q=q^*} = 0
    \]

    \[
    \boxed{P = CMg(q^*)} \label{eq:1.4.6} \tag{1.4.6}
    \]

    onde \(CMg(q) = \frac{dCT}{dq}\) é o custo marginal.

    **Condição de segunda ordem (CSO):**

    Para que \(q^*\) seja de fato um **máximo** (e não um mínimo ou ponto de inflexão), a segunda derivada do lucro deve ser negativa:

    \[
    \frac{d^2\pi}{dq^2}\bigg|_{q=q^*} < 0 \label{eq:1.4.7} \tag{1.4.7}
    \]

    \[
    -\frac{d^2 CT}{dq^2}\bigg|_{q=q^*} < 0
    \]

    \[
    \frac{d^2 CT}{dq^2}\bigg|_{q=q^*} > 0 \implies \frac{dCMg}{dq}\bigg|_{q=q^*} > 0 \label{eq:1.4.8} \tag{1.4.8}
    \]

    Portanto, a condição de segunda ordem $\eqref{eq:1.4.8}$ exige que o **custo marginal seja crescente** no ponto ótimo. Geometricamente, a curva de oferta da firma corresponde ao trecho ascendente de sua curva de custo marginal. \(\blacksquare\)

<iframe src="../graficos/cap01/maximizacao-lucro.html" title="Figura 1.4 — Maximização de lucro da firma competitiva" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 1.4 — Maximização de lucro da firma competitiva.** Ajuste o preço \(P\) e observe como \(q^*\) se desloca ao longo da curva de custo marginal, confirmando que \(dq^*/dP > 0\) (oferta ascendente).
</div>

O que essa demonstração nos revela? Do ponto de vista econômico, o resultado da equação $\eqref{eq:1.4.6}$ encapsula uma lógica elegante: a firma expande a produção enquanto cada unidade adicional gera receita (\(P\)) superior ao custo de produzi-la (\(CMg\)). No ponto ótimo, a última unidade produzida "se paga" exatamente — não há mais ganho possível na margem. Note como a demonstração segue precisamente o roteiro descrito na Seção 1.4: partimos de um objetivo (maximizar lucro), de uma restrição implícita (a tecnologia da firma, expressa na função de custo), resolvemos via condições de primeira e segunda ordem e chegamos a uma função de resposta — a curva de oferta. Este resultado será desenvolvido com muito mais detalhe nos Capítulos 7–9, onde estudaremos a teoria da firma em profundidade.

Note também que a demonstração ilustra o poder da estática comparativa: como \(CMg\) é crescente no ótimo, um aumento no preço \(P\) exige um aumento em \(q^*\) para restaurar a igualdade \(P = CMg\). Isso fundamenta a **lei da oferta** — a relação positiva entre preço e quantidade ofertada — como consequência lógica da otimização, não como uma hipótese ad hoc. A relação \(q^*(P)\), que associa a cada preço a quantidade ótima, é a **curva de oferta individual** da firma.

---

!!! box-brasil "Box Brasil — O Plano Real (1994): modelos econômicos em ação"

    O **Plano Real**, implementado em 1994, é um dos exemplos mais notáveis de aplicação prática de modelos econômicos na história brasileira. Diferentemente dos planos de estabilização anteriores (Cruzado, Bresser, Verão, Collor), que recorreram a congelamentos de preços e confiscos — medidas ad hoc, sem fundamentação teórica sólida —, o Plano Real foi desenhado com base em modelos formais de **expectativas racionais**, **teoria dos jogos** e **teoria monetária**.

    **O problema da inércia inflacionária.** O Brasil enfrentava uma inflação crônica que se autoalimentava: como os agentes esperavam inflação futura, reajustavam preventivamente seus preços, gerando a inflação que temiam. Modelos de expectativas mostravam que, em um equilíbrio com indexação generalizada, a inflação passada se projetava automaticamente para o futuro.

    **A solução da URV.** A equipe econômica, liderada por Pérsio Arida, André Lara Resende, Edmar Bacha, Pedro Malan e Gustavo Franco, concebeu a **Unidade Real de Valor (URV)** — uma moeda indexada ao dólar que funcionava como unidade de conta, enquanto o cruzeiro real continuava como meio de pagamento. O mecanismo pode ser compreendido como um **jogo de coordenação**: a URV permitiu que todos os agentes "sincronizassem" seus preços relativos em uma unidade estável antes da conversão para a nova moeda.

    **A teoria por trás da transição.** A ideia fundamental remonta à proposta "Larida" (Arida & Resende, 1985), inspirada em modelos de hiperinflação de Cagan e na teoria de reforma monetária. O modelo previa que, se fosse possível desindexar a economia de forma coordenada e crível, o nível de preços se estabilizaria sem necessidade de congelamento.

    **Resultados.** A inflação, que atingiu 2.477% nos 12 meses anteriores ao Real, caiu para cerca de 22% em 1995 e seguiu em trajetória descendente. O sucesso do plano ilustra como modelos econômicos bem construídos — mesmo sendo simplificações da realidade — podem orientar intervenções de política com resultados transformadores.

    Este caso demonstra a tese central deste capítulo: modelos são úteis não apesar de suas simplificações, mas *por causa* delas.

---

!!! box-brasil "Box Brasil — COPOM e os modelos de projeção da inflação"

    O **Comitê de Política Monetária (COPOM)** do Banco Central do Brasil decide, a cada 45 dias, a taxa básica de juros (**Selic**) com base em projeções geradas por modelos econômicos. O principal instrumento é o **SAMBA** (*Stochastic Analytical Model with a Bayesian Approach*), um modelo de equilíbrio geral dinâmico estocástico (DSGE) que representa a economia brasileira por meio de equações descrevendo o comportamento de famílias, firmas, governo e setor externo (Castro et al., 2015).

    **A lógica do modelo.** O SAMBA contém variáveis exógenas (choques de oferta, variações cambiais, preços internacionais de commodities) e variáveis endógenas (inflação, produto, taxa de juros). A partir de suposições sobre o comportamento otimizador dos agentes — exatamente como descrito na Seção 1.3 — e de uma regra de política monetária (regra de Taylor), o modelo projeta trajetórias de inflação 6 a 8 trimestres à frente.

    **Modelos como "mapas".** O BCB não utiliza apenas o SAMBA. Emprega também modelos semi-estruturais, VARs (vetores autorregressivos) e modelos de fatores. Cada modelo é um "mapa" diferente da mesma economia — como discutido na Seção 1.1, a escolha do modelo depende da pergunta: o SAMBA é útil para análise de política monetária, enquanto os VARs capturam melhor dinâmicas de curto prazo.

    **Verificação.** O BCB publica trimestralmente o *Relatório de Inflação*, no qual confronta suas projeções passadas com os dados realizados — um exercício de verificação indireta de seus modelos, exatamente no espírito da Seção 1.2. Quando as projeções se desviam sistematicamente da realidade, os modelos são recalibrados.

    Este caso ilustra que modelos econômicos não são exercícios acadêmicos abstratos: são ferramentas operacionais que orientam decisões com impacto direto sobre a vida de milhões de brasileiros.

---

## 📋 Resumo do Capítulo

- A microeconomia utiliza **modelos** — representações simplificadas da realidade, análogas a mapas — para isolar mecanismos causais e gerar previsões testáveis. A qualidade de um modelo se mede pela utilidade de suas implicações, não pelo realismo de suas suposições.
- A verificação de modelos pode ser **direta** (examinar as premissas) ou **indireta** (avaliar as previsões, como propôs Friedman). A economia empírica moderna avançou com técnicas quase-experimentais para testar modelos com dados observacionais. A distinção entre correlação e causalidade é o desafio central.
- Os modelos microeconômicos repousam sobre três pilares metodológicos: a cláusula *ceteris paribus* (isolar o efeito de uma variável por vez, correspondendo matematicamente à derivada parcial), a **hipótese de otimização** (agentes se comportam "como se" maximizassem) e a distinção entre **análise positiva** (o que é) e **normativa** (o que deveria ser).
- A estrutura de um modelo envolve variáveis exógenas e endógenas, um problema de otimização, a derivação de funções de resposta e a análise de **estática comparativa** — como as soluções ótimas mudam quando os parâmetros variam.
- A teoria do valor evoluiu da teoria do valor-trabalho (Smith, Ricardo) para a **revolução marginalista** (Jevons, Menger, Walras), que resolveu o paradoxo da água e do diamante via utilidade marginal, culminando na síntese neoclássica de Marshall e no equilíbrio geral de Arrow-Debreu.
- Desenvolvimentos modernos — teoria dos jogos, economia da informação, economia comportamental, teoria dos mecanismos — relaxam as suposições do modelo competitivo básico e ampliam o alcance da microeconomia.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Modelo econômico | Representação simplificada da realidade, expressa por relações lógicas entre variáveis, com o objetivo de explicar fenômenos e gerar previsões testáveis. |
| *Ceteris paribus* | Cláusula metodológica que mantém "tudo o mais constante" para isolar o efeito de uma variável sobre outra. Corresponde à derivada parcial. |
| Hipótese de otimização | Premissa de que os agentes econômicos se comportam como se maximizassem uma função objetivo (utilidade, lucro) sujeita a restrições. |
| Análise positiva | Investigação descritiva ou preditiva sobre "o que é", verificável por confronto com dados empíricos. |
| Análise normativa | Investigação prescritiva sobre "o que deveria ser", envolvendo julgamentos de valor. |
| Variáveis exógenas e endógenas | Exógenas são determinadas fora do modelo (dados/parâmetros); endógenas são determinadas dentro do modelo (incógnitas). |
| Equilíbrio de mercado | Configuração de preço e quantidade em que oferta iguala demanda: nenhum agente tem incentivo para alterar seu comportamento. |
| Estática comparativa | Comparação entre dois equilíbrios para determinar como as variáveis endógenas respondem a mudanças nas exógenas. |
| Utilidade marginal | Utilidade adicional obtida pelo consumo da última unidade de um bem; conceito central da revolução marginalista. |
| Teoria do valor-trabalho | Doutrina clássica (Smith, Ricardo) segundo a qual o valor de troca de um bem é determinado pela quantidade de trabalho necessária para produzi-lo. |
| Equilíbrio geral | Determinação simultânea de preços e quantidades em todos os mercados da economia, formalizado por Walras e provado por Arrow e Debreu. |

---

## 🎯 Exercícios Resolvidos

Os exercícios resolvidos a seguir aplicam os conceitos desenvolvidos neste capítulo a problemas concretos. O primeiro exercício pratica a distinção entre análise positiva e normativa (Seção 1.3). O segundo trabalha a estrutura de variáveis exógenas e endógenas, equilíbrio e estática comparativa (Seção 1.4). O terceiro aplica a condição de maximização de lucro \(P = CMg\) demonstrada acima. Recomenda-se tentar resolver cada exercício antes de consultar a solução.

??? exercicio-resolvido "Exercício Resolvido 1.1 — Análise positiva versus normativa"

    **Enunciado.** Classifique cada afirmação como positiva ou normativa e justifique:

    (a) A taxa de desemprego no Brasil em 2023 foi de 7,8%.

    (b) O governo deveria reduzir impostos sobre a cesta básica para combater a desigualdade.

    (c) Um aumento de 10% na tarifa de importação de aço eleva o preço doméstico em aproximadamente 5%.

    (d) A política de cotas raciais nas universidades é justa.

    **Solução.**

    **(a) Positiva.** Trata-se de uma afirmação descritiva sobre um fato observável, verificável por dados da PNAD Contínua/IBGE. Não envolve julgamento de valor.

    **(b) Normativa.** Contém o verbo "deveria", indicando prescrição baseada em julgamento de valor sobre o que é desejável. Duas pessoas podem concordar sobre o efeito positivo da medida (análise positiva) e discordar sobre se ela *deve* ser adotada (análise normativa).

    **(c) Positiva.** É uma previsão quantitativa testável empiricamente — por exemplo, via modelos de equilíbrio parcial ou métodos econométricos. Não envolve juízo sobre se o aumento tarifário é bom ou ruim.

    **(d) Normativa.** O conceito de "justiça" envolve julgamento de valor — diferentes concepções de equidade (rawlsiana, utilitarista, libertária) conduziriam a conclusões distintas sobre a mesma política.

??? exercicio-resolvido "Exercício Resolvido 1.2 — Variáveis exógenas, endógenas e estática comparativa"

    **Enunciado.** Considere o seguinte modelo simplificado do mercado de café no Brasil:

    - Demanda: \(Q^d = 200 - 4P + 2Y\), onde \(P\) é o preço e \(Y\) é a renda dos consumidores.
    - Oferta: \(Q^s = -20 + 6P - 3C\), onde \(C\) é o custo dos insumos agrícolas.

    (a) Identifique as variáveis exógenas e endógenas.

    (b) Encontre o preço e a quantidade de equilíbrio como funções dos parâmetros exógenos.

    (c) Se \(Y = 50\) e \(C = 10\), calcule \(P^*\) e \(Q^*\).

    (d) Realize estática comparativa: qual o efeito de um aumento da renda sobre o preço de equilíbrio?

    **Solução.**

    **(a)** **Exógenas:** \(Y\) (renda) e \(C\) (custo dos insumos) — determinadas fora do modelo. **Endógenas:** \(P^*\) (preço) e \(Q^*\) (quantidade) — determinadas pelo equilíbrio do modelo.

    **(b)** No equilíbrio, \(Q^d = Q^s\):

    \[
    200 - 4P + 2Y = -20 + 6P - 3C
    \]

    \[
    220 + 2Y + 3C = 10P
    \]

    \[
    P^* = 22 + 0{,}2Y + 0{,}3C
    \]

    Substituindo na função de demanda:

    \[
    Q^* = 200 - 4(22 + 0{,}2Y + 0{,}3C) + 2Y = 112 + 1{,}2Y - 1{,}2C
    \]

    **(c)** \(P^* = 22 + 0{,}2 \times 50 + 0{,}3 \times 10 = 22 + 10 + 3 = 35\)

    \(Q^* = 112 + 1{,}2 \times 50 - 1{,}2 \times 10 = 112 + 60 - 12 = 160\)

    **(d)** \(\dfrac{\partial P^*}{\partial Y} = 0{,}2 > 0\). Um aumento da renda eleva o preço de equilíbrio. Intuitivamente, mais renda desloca a curva de demanda para a direita (a cada preço dado, a quantidade demandada aumenta), pressionando o preço para cima. Este é um exercício de estática comparativa como descrito na Seção 1.4: variamos uma variável exógena (\(Y\)) e observamos o efeito sobre a variável endógena (\(P^*\)).

??? exercicio-resolvido "Exercício Resolvido 1.3 — Maximização de lucro e a condição \(P = CMg\)"

    **Enunciado.** Uma firma competitiva tem função de custo total \(CT(q) = 50 + 8q + 0{,}5q^2\). O preço de mercado é \(P = 28\).

    (a) Determine o custo marginal e o custo médio.

    (b) Encontre a quantidade que maximiza o lucro usando a condição \(P = CMg\).

    (c) Verifique a condição de segunda ordem.

    (d) Calcule o lucro máximo.

    (e) Identifique as variáveis exógenas e endógenas neste modelo.

    **Solução.**

    **(a)**

    \[
    CMg(q) = \frac{dCT}{dq} = 8 + q
    \]

    \[
    CMe(q) = \frac{CT(q)}{q} = \frac{50}{q} + 8 + 0{,}5q
    \]

    **(b)** Pela condição de primeira ordem (\(P = CMg\)):

    \[
    28 = 8 + q \implies q^* = 20
    \]

    **(c)** A condição de segunda ordem exige \(\dfrac{dCMg}{dq}\bigg|_{q^*} > 0\):

    \[
    \frac{dCMg}{dq} = 1 > 0 \quad \checkmark
    \]

    O custo marginal é crescente em todo o domínio, confirmando que \(q^* = 20\) é um máximo do lucro.

    **(d)**

    \[
    \pi^* = P \cdot q^* - CT(q^*) = 28 \times 20 - (50 + 8 \times 20 + 0{,}5 \times 400)
    \]

    \[
    \pi^* = 560 - 50 - 160 - 200 = 150
    \]

    **(e)** **Exógenas:** preço de mercado \(P\), parâmetros da função de custo (50, 8, 0,5). **Endógena:** quantidade ótima \(q^*\) (e, por consequência, o lucro \(\pi^*\)).

---

## ✏️ Exercícios

Os exercícios a seguir cobrem os principais temas do capítulo: a lógica da modelagem, a verificação de modelos, os pilares metodológicos da microeconomia e a evolução histórica da teoria do valor. Alguns exercícios são conceituais, outros envolvem cálculos — todos exigem que o leitor articule as ideias discutidas ao longo do texto. Os exercícios progridem em dificuldade: os primeiros são mais diretos, os últimos exigem raciocínio mais elaborado e cálculos mais extensos.

<a id="ex-1-1"></a>**Exercício 1.1.** Explique, usando a analogia do mapa, por que um modelo econômico que inclui todas as variáveis relevantes de uma economia real não seria necessariamente superior a um modelo mais simples. Em que sentido a simplificação pode ser uma virtude epistêmica?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-1)

---

<a id="ex-1-2"></a>**Exercício 1.2.** Considere a afirmação: "O modelo de concorrência perfeita é inútil porque nenhum mercado real satisfaz todas as suas premissas." Avalie essa afirmação à luz da metodologia de Friedman (1953) e da distinção entre verificação direta e indireta de modelos.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-2)

---

<a id="ex-1-3"></a>**Exercício 1.3.** Classifique cada uma das proposições abaixo como **positiva** ou **normativa** e justifique:

a) Um aumento de 10% no salário mínimo reduz o emprego formal em 2%.

b) O governo deveria aumentar o salário mínimo para reduzir a desigualdade.

c) A elasticidade-preço da demanda por gasolina no Brasil é de aproximadamente \(-0{,}3\) no curto prazo.

d) O preço da gasolina é injustamente alto no Brasil.

e) Políticas de transferência de renda aumentam o consumo das famílias beneficiárias.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-3)

---

<a id="ex-1-4"></a>**Exercício 1.4.** Considere o modelo de maximização de lucro de uma firma competitiva com função de custo total \(CT(q) = 100 + 10q + q^2\).

a) Determine a função de custo marginal \(CMg(q)\).

b) Se o preço de mercado é \(P = 50\), encontre a quantidade ótima \(q^*\).

c) Verifique que a condição de segunda ordem é satisfeita.

d) Calcule o lucro máximo.

e) Identifique as variáveis exógenas e endógenas neste modelo.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-4)

---

<a id="ex-1-5"></a>**Exercício 1.5.** O paradoxo da água e do diamante foi um dos grandes quebra-cabeças da economia clássica.

a) Enuncie o paradoxo.

b) Explique por que a teoria do valor-trabalho de Smith não consegue resolvê-lo satisfatoriamente.

c) Mostre como a revolução marginalista resolveu o paradoxo usando o conceito de utilidade marginal.

d) Discuta como Marshall integraria ambas as perspectivas (clássica e marginalista) em sua síntese neoclássica.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-5)

---

<a id="ex-1-6"></a>**Exercício 1.6.** Dois economistas discordam sobre qual modelo usar para analisar o mercado de trabalho brasileiro. O Economista A propõe um modelo simples de oferta e demanda com salário mínimo (preço-piso). O Economista B propõe um modelo com informação assimétrica, busca por emprego (*search*) e heterogeneidade de trabalhadores.

a) Identifique pelo menos duas variáveis exógenas e duas endógenas em cada modelo.

b) Em que circunstância o modelo mais simples (A) pode ser preferível ao mais complexo (B)?

c) Relacione sua resposta à analogia do mapa da Seção 1.1: que "detalhes do território" o Modelo A omite e o Modelo B inclui?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-6)

---

<a id="ex-1-7"></a>**Exercício 1.7.** Suponha que o governo brasileiro anuncia simultaneamente (i) um aumento na alíquota do ICMS sobre combustíveis e (ii) um programa de transferência de renda para famílias de baixa renda.

a) Explique por que é difícil avaliar o efeito isolado de cada medida sobre o consumo de gasolina sem usar a cláusula *ceteris paribus*.

b) Sugira um desenho de pesquisa empírica que aproximaria o *ceteris paribus* para isolar o efeito do aumento do ICMS sobre o consumo de gasolina. *(Dica: pense em variação regional ou temporal.)*

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-7)

---

<a id="ex-1-8"></a>**Exercício 1.8.** Considere o mercado de soja no Brasil, com as seguintes funções:

- Demanda: \(Q^d = 500 - 2P + 3Y - P_m\), onde \(Y\) é a renda e \(P_m\) é o preço do milho (substituto na ração animal).
- Oferta: \(Q^s = -100 + 4P - 2W\), onde \(W\) é o custo do fertilizante.

a) Identifique as variáveis exógenas e endógenas.

b) Encontre \(P^*\) e \(Q^*\) como funções dos parâmetros exógenos.

c) Se \(Y = 80\), \(P_m = 20\) e \(W = 30\), calcule \(P^*\) e \(Q^*\).

d) Calcule e interprete \(\partial P^* / \partial P_m\): o que acontece com o preço da soja quando o preço do milho sobe?

e) Calcule e interprete \(\partial P^* / \partial W\): o que acontece com o preço da soja quando o custo do fertilizante aumenta?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-8)

---

<a id="ex-1-9"></a>**Exercício 1.9.** O CADE (Conselho Administrativo de Defesa Econômica) utiliza modelos econômicos para avaliar fusões e aquisições. Considere uma fusão hipotética entre as duas maiores redes de supermercados de uma cidade média brasileira.

a) Qual modelo de estrutura de mercado seria mais apropriado para analisar essa fusão: concorrência perfeita, oligopólio ou monopólio? Justifique.

b) Liste três variáveis que o CADE deveria considerar como exógenas e três como endógenas na análise dos efeitos da fusão.

c) A afirmação "A fusão elevará o preço dos alimentos em 8%" é positiva ou normativa? E "A fusão não deve ser aprovada"?

d) Que tipo de evidência empírica — abordagem direta ou indireta, nos termos da Seção 1.2 — o CADE poderia usar para testar as previsões do modelo sobre os efeitos da fusão?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-9)

---

<a id="ex-1-10"></a>**Exercício 1.10.** Considere dois mercados inter-relacionados: o mercado de etanol e o mercado de açúcar no Brasil. A cana-de-açúcar é insumo para ambos, de modo que os dois mercados estão conectados pelo lado da oferta. Suponha:

- Demanda de etanol: \(Q_e^d = 300 - 5P_e\)
- Demanda de açúcar: \(Q_a^d = 200 - 3P_a\)
- A usina dispõe de uma oferta total de cana equivalente a \(\bar{S}\) unidades de produto e deve alocar entre etanol (\(Q_e^s\)) e açúcar (\(Q_a^s\)), com \(Q_e^s + Q_a^s = \bar{S}\). A usina maximiza sua receita total \(P_e Q_e^s + P_a Q_a^s\) sujeita a essa restrição.

a) Mostre que, no ótimo da usina, a alocação exige \(P_e = P_a\). *(Dica: monte o lagrangeano.)*

b) Usando a condição de equilíbrio (\(Q^d = Q^s\) em cada mercado) e o resultado de (a), encontre o preço de equilíbrio como função de \(\bar{S}\).

c) Se \(\bar{S} = 280\), calcule os preços e quantidades de equilíbrio em ambos os mercados.

d) Realize estática comparativa: calcule \(\partial P^* / \partial \bar{S}\) e interprete economicamente. O que acontece com os preços quando uma supersafra de cana aumenta \(\bar{S}\)?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2019 — Questão 05"
    Com relação aos fundamentos da Microeconomia, julgue como verdadeiros ou falsos os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Os preços relativos \(P_Y/P_X\) livres de mercado dos bens \(Y\) e \(X\) refletem as taxas às quais a sociedade está disposta a sacrificar o bem \(Y\) em troca de uma unidade marginal de \(X\). |
    | 1 | No curto prazo, um fator de produção é fixo apenas por razões tecnológicas, nunca porque seja simplesmente mais barato mantê-lo fixo do que ajustá-lo às novas condições de mercado. |
    | 2 | Na ausência de externalidades marginais, os custos marginais privados podem ser interpretados como o valor que a sociedade atribui aos recursos deslocados da economia para a produção da unidade marginal. |
    | 3 | Num mercado competitivo, com custos marginais constantes e capacidade máxima limitada, se a demanda agregada é grande o suficiente para fazer a firma atingir sua capacidade máxima, então o preço de equilíbrio é o custo marginal da última unidade acrescido do preço-sombra da capacidade máxima. |
    | 4 | Suponha que o preço de um bem \(X\) cai marginalmente de \(P_0\) para \(P_1\). Ao se defrontar com o preço marginalmente mais baixo, o consumidor realiza uma economia de gastos relativamente à quantidade que usualmente comprava ao preço inicial. Se ele usa uma parte dessa economia para comprar mais unidades desse bem \(X\), mas aproveita outra parte dela para comprar outros bens, então, para esse consumidor, a demanda pelo bem \(X\) é preço-elástica. |

    ??? success "Gabarito"
        **Respostas: V F V V F**

        **Justificativa por item:**

        - **Item 0 — V:** Em um mercado competitivo sem distorções, os preços relativos refletem tanto a taxa marginal de substituição dos consumidores quanto a taxa marginal de transformação da economia. O preço relativo \(P_Y/P_X\) indica quantas unidades de \(Y\) a sociedade precisa sacrificar para obter uma unidade adicional de \(X\), refletindo o custo de oportunidade social.
        - **Item 1 — F:** Um fator pode ser fixo no curto prazo não apenas por impossibilidade tecnológica de ajuste, mas também porque os custos de ajustamento tornam mais barato mantê-lo fixo. Por exemplo, uma firma pode manter maquinário ocioso porque o custo de vendê-lo e readquiri-lo excede o custo de mantê-lo parado.
        - **Item 2 — V:** Na ausência de externalidades, o custo marginal privado coincide com o custo marginal social. Assim, o \(CMg\) privado pode ser interpretado como o valor que a sociedade atribui aos recursos deslocados de outros usos para a produção da unidade marginal — é o custo de oportunidade social.
        - **Item 3 — V:** Quando a firma opera na capacidade máxima, a restrição de capacidade se torna ativa. O preço de equilíbrio deve compensar não apenas o custo marginal de produção, mas também o valor-sombra (*shadow price*) da capacidade escassa. Esse preço-sombra mede o valor marginal de relaxar a restrição de capacidade em uma unidade.
        - **Item 4 — F:** Se o consumidor usa apenas *parte* da economia para comprar mais de \(X\) e desvia o restante para outros bens, então o gasto total com \(X\) *diminui* após a queda de preço. Quando o gasto total cai com a redução do preço, a demanda é **inelástica** (\(|\varepsilon| < 1\)), não elástica.

??? question "ANPEC 2024 — Questão 05"
    Com base na lei de oferta e demanda e na determinação dos preços no mercado, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | No centro urbano de uma grande cidade não se permite, por razões arquitetônicas e políticas, a expansão da quantidade de imóveis residenciais. Considere a seguinte afirmação: "O aluguel de mercado do imóvel não é um pagamento para produção de imóveis (primeiro ponto); mas é um pagamento para obter o uso do imóvel (segundo ponto)". Pode-se afirmar que, do primeiro ponto de vista, o aluguel é uma renda pura e, do segundo ponto de vista, é um custo. |
    | 1 | A decisão de manter alguma capacidade ociosa nunca é uma decisão racional viável da empresa para lidar com a incerteza quanto a variações aleatórias de demanda. |
    | 2 | O preço-sombra da capacidade de produção máxima que a firma acrescenta ao custo marginal é uma medida monetária do valor que o mercado, na figura dos demandantes, está disposto a pagar pela expansão da capacidade máxima em uma unidade marginal. |
    | 3 | Algumas empresas anunciam que seus produtos são mais baratos que os dos concorrentes porque elas compram diretamente dos fornecedores, eliminando integralmente o papel dos intermediários. Esse tipo de propaganda pressupõe que a intermediação é sem custos. |
    | 4 | Custos quase-fixos não desaparecem no longo prazo. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** Quando a oferta de imóveis é perfeitamente inelástica (fixa), o aluguel é inteiramente determinado pela demanda e constitui uma **renda pura** do ponto de vista da oferta — o pagamento não induz produção adicional. Do ponto de vista do demandante, porém, o aluguel é um custo necessário para obter o uso do imóvel. Essa dualidade remete à distinção ricardiana entre renda e custo (Seção 1.5).
        - **Item 1 — F:** Manter capacidade ociosa pode ser perfeitamente racional quando a demanda é incerta: a firma mantém uma reserva de capacidade para atender picos de demanda sem perder clientes. Trata-se de uma decisão de otimização sob incerteza.
        - **Item 2 — V:** O preço-sombra de uma restrição de capacidade mede o aumento no lucro (ou, equivalentemente, o valor para o mercado) que resultaria de relaxar a restrição em uma unidade marginal. É o valor que os demandantes estão dispostos a pagar acima do custo marginal de produção pela expansão da capacidade.
        - **Item 3 — F:** A propaganda que alega preços mais baixos pela eliminação de intermediários pressupõe o contrário: que a intermediação **tem custos** (margens, logística) repassados ao consumidor. Se a intermediação fosse sem custos, eliminá-la não reduziria o preço. O que a propaganda ignora é que intermediários frequentemente geram valor real (informação, gestão de estoques, distribuição).
        - **Item 4 — V:** Custos quase-fixos são custos que independem do nível de produção mas que só existem quando a firma produz (\(q > 0\)). Diferentemente dos custos fixos tradicionais (como aluguéis contratuais), os custos quase-fixos persistem no longo prazo: sempre que a firma decide operar, ela os incorre, independentemente do horizonte temporal. Exemplos incluem custos mínimos de aquecimento de um forno industrial ou equipe mínima de operação.

---

## 🔬 Pesquisa em Ação

Esta seção apresenta pesquisas acadêmicas que aplicam os conceitos deste capítulo a problemas reais.

??? pesquisa "Angrist, J. D.; Pischke, J.-S. (2010). [The Credibility Revolution in Empirical Economics: How Better Research Design Is Taking the Con out of Econometrics](https://doi.org/10.1257/jep.24.2.3). *Journal of Economic Perspectives*, 24(2), 3–30."
    **O que investiga:** Como a economia empírica evoluiu para produzir evidências mais confiáveis sobre relações causais? A verificação de modelos econômicos — tema central da Seção 1.2 — depende crucialmente da capacidade de distinguir correlação de causalidade nos dados observacionais.

    **Conexão com o capítulo:** Angrist e Pischke documentam a "revolução da credibilidade" que transformou a economia empírica a partir dos anos 1990. A cláusula *ceteris paribus*, apresentada como recurso teórico neste capítulo, é também o objetivo prático da econometria moderna: as técnicas de identificação causal — variáveis instrumentais, diferenças em diferenças, regressão descontínua — foram desenvolvidas para aproximar o *ceteris paribus* com dados observacionais.

    **Principais resultados:** A adoção dessas técnicas elevou substancialmente a qualidade da evidência empírica. Estudos sobre retornos da educação, efeito do salário mínimo e impacto de programas sociais passaram a produzir resultados mais robustos e replicáveis. Joshua Angrist recebeu o Prêmio Nobel de Economia em 2021 por essas contribuições.

    **Por que importa:** A revolução da credibilidade mostra que a microeconomia empírica não se limita a testar modelos — ela os refina, revelando quais suposições são empiricamente sustentáveis e quais precisam ser revisadas.

??? pesquisa "Thaler, R. H. (2016). [Behavioral Economics: Past, Present, and Future](https://doi.org/10.1257/aer.106.7.1577). *American Economic Review*, 106(7), 1577–1600."
    **O que investiga:** Até que ponto a hipótese de otimização racional — fundamento dos modelos microeconômicos discutidos na Seção 1.3 — descreve adequadamente o comportamento humano? E quando os desvios da racionalidade são sistemáticos, como devemos modificar nossos modelos?

    **Conexão com o capítulo:** Em seu discurso presidencial na AEA, Thaler traça a trajetória da economia comportamental desde seus precursores até sua consolidação. O argumento central é que os agentes reais (*Humans*) diferem sistematicamente dos agentes perfeitamente racionais (*Econs*): exibem racionalidade limitada, autocontrole imperfeito e preferências sociais. A abordagem "as if" de Friedman funciona em muitos contextos, mas falha em decisões intertemporais, escolhas sob incerteza e situações com baixa experiência.

    **Principais resultados:** Thaler documenta vieses robustos — efeito dotação, aversão à perda, desconto hiperbólico — e mostra como incorporá-los a modelos formais sem abandonar o arcabouço de otimização. A economia comportamental não rejeita a modelagem; propõe modelos alternativos que preservam o rigor formal.

    **Por que importa:** Thaler recebeu o Nobel em 2017, consolidando a economia comportamental como parte do *mainstream* microeconômico. O artigo dialoga com as Seções 1.3 e 1.6 sobre os limites e extensões do modelo racional.

??? pesquisa "Card, D.; Krueger, A. B. (1994). [Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania](https://doi.org/10.2307/2118030). *American Economic Review*, 84(4), 772–793."
    **O que investiga:** O modelo competitivo do mercado de trabalho prevê que um aumento no salário mínimo acima do equilíbrio reduz o emprego. Essa previsão é empiricamente verdadeira? Card e Krueger testam a previsão do modelo usando um "experimento natural" — um aumento do salário mínimo em New Jersey em 1992, enquanto a vizinha Pennsylvania manteve o valor inalterado.

    **Conexão com o capítulo:** O estudo é um exemplo paradigmático de verificação indireta de modelos (Seção 1.2): os autores confrontam a previsão do modelo competitivo com dados empíricos, usando a estratégia de diferenças em diferenças — uma forma de aproximar o *ceteris paribus* (Seção 1.3) com dados observacionais. Pennsylvania funciona como "grupo de controle" para New Jersey.

    **Principais resultados:** Contrariamente à previsão do modelo competitivo simples, o emprego no setor de fast-food em New Jersey *não caiu* após o aumento do salário mínimo — na verdade, cresceu ligeiramente em relação a Pennsylvania. O resultado sugere que o modelo competitivo de mercado de trabalho, embora útil como benchmark, pode ser incompleto: modelos com poder de monopsônio do empregador explicam melhor o resultado.

    **Por que importa:** O artigo de Card e Krueger é um dos mais influentes da economia do trabalho e ilustra como a verificação empírica pode levar à revisão e ao refinamento de modelos teóricos — não ao abandono da modelagem, mas à busca por modelos melhores. David Card recebeu o Prêmio Nobel de Economia em 2021.

??? pesquisa "Roth, A. E. (2002). [The Economist as Engineer: Game Theory, Experimentation, and Computation as Tools for Design Economics](https://doi.org/10.1111/1468-0262.00335). *Econometrica*, 70(4), 1341–1378."
    **O que investiga:** Os modelos econômicos podem ser usados não apenas para *entender* mercados existentes, mas para *projetar* novos mercados e instituições? Roth argumenta que sim, e apresenta o economista como "engenheiro" — alguém que usa modelos teóricos para construir mecanismos que funcionam na prática.

    **Conexão com o capítulo:** O artigo conecta a discussão teórica sobre modelos (Seções 1.1–1.4) aos desenvolvimentos modernos da Seção 1.6 — especificamente, a teoria dos mecanismos e a economia experimental. A tese de Roth é que modelos abstratos de teoria dos jogos, quando combinados com experimentação e computação, tornam-se ferramentas de engenharia econômica.

    **Principais resultados:** Roth documenta três casos de sucesso do design de mercados: (i) o *National Resident Matching Program* (NRMP), que aloca médicos residentes a hospitais nos EUA desde 1952; (ii) o redesenho de sistemas de admissão escolar em cidades como Nova York e Boston; e (iii) mecanismos de troca de rins entre doadores vivos incompatíveis. Em todos os casos, o design foi informado por modelos formais de matching e teoria dos jogos cooperativos.

    **Por que importa:** O artigo demonstra que modelos econômicos não são apenas ferramentas de análise retrospectiva, mas instrumentos de *design prospectivo* — podem criar instituições e mercados que melhoram o bem-estar. Roth recebeu o Prêmio Nobel de Economia em 2012, juntamente com Lloyd Shapley, por seus trabalhos sobre a teoria de matching e design de mercados.

??? pesquisa "Naritomi, J. (2019). [Consumers as Tax Auditors](https://doi.org/10.1257/aer.20160658). *American Economic Review*, 109(9), 3031–3072."
    **O que investiga:** Políticas públicas que incentivam consumidores a pedir nota fiscal podem reduzir a evasão tributária? Naritomi estuda o programa *Nota Fiscal Paulista* (NFP), implementado pelo governo de São Paulo em 2007, que devolve parte do ICMS a consumidores que incluem o CPF na nota fiscal — transformando consumidores em "auditores fiscais" involuntários.

    **Conexão com o capítulo:** O estudo exemplifica a aplicação de modelos microeconômicos a políticas públicas brasileiras (Seção 1.6). O modelo teórico subjacente combina teoria dos incentivos — firmas decidem quanto evadir considerando a probabilidade de detecção — com a hipótese de otimização dos consumidores (Seção 1.3), que pedem nota quando o benefício esperado (devolução do ICMS) supera o custo (tempo, inconveniência). A autora utiliza variações no calendário de implementação e nos prêmios como fonte de identificação causal.

    **Principais resultados:** O programa NFP aumentou a receita de ICMS declarada em 21% nos setores varejistas, com efeitos maiores em setores com muitas transações com consumidores finais. Firmas previamente subdeclarantes responderam mais fortemente, e os efeitos persistiram ao longo do tempo. O custo fiscal do programa (devoluções aos consumidores) foi significativamente inferior ao ganho de arrecadação.

    **Por que importa:** O artigo demonstra, com dados brasileiros, que modelos econômicos bem construídos podem informar o desenho de políticas públicas eficazes. A NFP transformou um problema de informação assimétrica (o fisco não observa todas as transações) em um mecanismo de incentivos alinhados — um exemplo concreto de teoria dos mecanismos aplicada (Seção 1.6).

## 📚 Referências do Capítulo

- Friedman, Milton. 1953. "The Methodology of Positive Economics." In [*Essays in Positive Economics*](https://books.google.com/books?id=6Uhev5fmBgUC). Chicago: University of Chicago Press.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 1.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 1.
- Pindyck, Robert S., e Daniel L. Rubinfeld. 2013. [*Microeconomia*](https://books.google.com/books/about/Microeconomics.html?id=h6e7AAAAIAAJ). 8ª ed. São Paulo: Pearson. Cap. 1–2.
- Samuelson, Paul A. 1947. [*Foundations of Economic Analysis*](https://books.google.com/books/about/Foundations_of_Economic_Analysis.html?id=lWV7HwolSeoC). Cambridge: Harvard University Press.
- Varian, Hal R. 2015. [*Microeconomia: uma abordagem moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Cap. 1.
