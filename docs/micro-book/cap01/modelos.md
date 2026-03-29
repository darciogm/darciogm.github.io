# 1.1–1.2 Modelos e Verificação

## 1.1 Todos os Mapas Mentem: Por Que Simplificar?

A pergunta pode parecer estranha: por que um cientista *escolheria* jogar informação fora? Não seria melhor incluir tudo? A resposta, embora contraintuitiva, é que um modelo que inclui tudo não explica nada — assim como um GPS que mostrasse cada formiga na calçada seria inútil para chegar ao trabalho. Para entender por quê, considere uma analogia.

### A analogia do mapa

Um modelo econômico é, em essência, um **mapa**. Assim como um mapa cartográfico não pretende reproduzir cada árvore, cada pedra e cada curva de um rio, um modelo econômico não pretende capturar toda a riqueza do comportamento humano. Um mapa na escala 1:1 seria perfeitamente fiel à realidade — e perfeitamente inútil. O escritor argentino Jorge Luis Borges, em seu conto *Do rigor na ciência* (1946, republicado em *O fazedor*, 1960), imaginou um império onde os cartógrafos desenharam um mapa tão detalhado que coincidia ponto a ponto com o território. O mapa foi abandonado, destruído pelo sol e pelas chuvas — um monumento à inutilidade da representação total. A utilidade de um mapa reside precisamente no que ele **omite**: ao eliminar detalhes irrelevantes para a finalidade em questão, ele revela a estrutura subjacente do território.

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

A qualidade de um modelo não se mede pelo realismo de suas suposições — se medisse, toda ficção científica seria inútil —, mas pela capacidade de gerar previsões que sobrevivem ao encontro com os dados. Esse critério pragmático — que prioriza a utilidade sobre o realismo — é um dos traços mais distintivos da metodologia econômica, e a próxima seção explora suas raízes filosóficas.

Até aqui, tudo elegante. Mas se um modelo é, por definição, uma mentira — uma simplificação deliberada —, como distinguir uma mentira *útil* de uma mentira *perigosa*? Essa pergunta não é acadêmica: modelos econômicos orientam decisões que afetam milhões de pessoas. Precisamos de um critério, e é exatamente isso que a próxima seção oferece.

---

## 1.2 Como Saber se a Mentira É Boa? Verificação de Modelos

### Abordagem direta versus indireta

Se um modelo é, por definição, uma mentira útil, como saber se a mentira é *boa*? Em um sketch clássico do Monty Python, um cliente tenta devolver um papagaio morto à loja. O vendedor insiste: "He's not dead — he's resting!" O cliente, indignado, aponta para o bicho inerte e exige evidência. É, no fundo, o mesmo debate que a economia enfrenta sobre seus modelos: o vendedor defende as *suposições* ("o papagaio está vivo — olhe as penas bonitas!"); o cliente exige *resultados* ("mas ele não se mexe!"). Aqui a profissão se divide em duas tribos:

**Abordagem direta**: examina-se o realismo das suposições do modelo. Se as premissas são "razoáveis", confia-se nas conclusões. Essa abordagem tem a vantagem da transparência, mas apresenta uma limitação séria: suposições irrealistas podem, paradoxalmente, gerar previsões excelentes. A física newtoniana, por exemplo, ignora a curvatura do espaço-tempo — suposição "errada" segundo a relatividade geral — mas prevê com precisão suficiente a órbita dos planetas para o cálculo de viagens espaciais.

**Abordagem indireta** (instrumentalismo): avalia-se o modelo exclusivamente pela qualidade de suas previsões, independentemente do realismo das suposições. Essa é a posição defendida por Milton Friedman em seu célebre ensaio "The Methodology of Positive Economics" (1953), um dos textos mais influentes e debatidos da história do pensamento econômico.

!!! note "A posição de Friedman"
    Para Friedman, a questão relevante não é se as suposições de um modelo são "realistas" — elas nunca são —, mas se o modelo gera previsões suficientemente boas para o propósito em questão. Uma teoria sobre a trajetória de bolas de bilhar pode supor que os jogadores resolvem equações de física — suposição claramente falsa —, mas se as previsões forem acuradas, o modelo é útil.

Na prática, a maioria dos economistas adota uma posição intermediária: embora as previsões sejam o teste último, o realismo das suposições importa na medida em que afeta a robustez do modelo fora da amostra em que foi calibrado. Um modelo cujas suposições são grosseiramente irrealistas pode gerar boas previsões em condições normais, mas falhar espetacularmente quando as circunstâncias mudam — como ficou evidente na crise financeira de 2008, quando modelos de risco baseados em distribuições normais subestimaram catastroficamente a probabilidade de eventos extremos.

### Testes empíricos em economia

Seja qual for a tribo, em algum momento o modelo precisa encontrar a realidade — e aí começam os problemas. Verificar um modelo econômico é muito mais difícil do que verificar se uma ponte aguenta peso. A economia enfrenta desafios particulares:

- **Impossibilidade de experimentos controlados** na maioria dos casos (embora a economia experimental e os ensaios controlados aleatorizados tenham avançado significativamente desde os anos 2000).
- **Problemas de identificação**: distinguir correlação de causalidade é o desafio central da econometria. Observar que países com mais sorveterias têm maior renda per capita não significa que sorveterias causam riqueza — ambas as variáveis podem ser efeito de um terceiro fator (clima temperado, urbanização).
- **Expectativas e reflexividade**: os agentes econômicos reagem às próprias previsões dos modelos, criando um problema de endogeneidade sem paralelo nas ciências naturais. Se o Banco Central anuncia que a inflação será alta, consumidores e firmas ajustam comportamentos de modo que a previsão pode se autorrealizar.

!!! warning "Erro Comum"
    **Confundir correlação com causalidade.**
    Um dos erros mais comuns na interpretação de evidências econômicas é confundir correlação com causalidade. O fato de duas variáveis se moverem juntas não implica que uma *cause* a outra. Um exemplo clássico: entre 1999 e 2009, o número de filmes em que Nicolas Cage apareceu se correlacionou fortemente com o número de afogamentos em piscinas nos EUA. Obviamente, Nicolas Cage não causa afogamentos — ambas as séries seguem tendências temporais que, por acaso, coincidem.

    Em economia, o problema é ainda mais sutil. Países que adotam instituições de livre mercado tendem a ser mais ricos — mas isso ocorre porque as instituições *causam* riqueza, ou porque países ricos *escolhem* essas instituições? A direção da causalidade importa crucialmente para a recomendação de política.

    As técnicas de identificação causal da econometria moderna — variáveis instrumentais, diferenças em diferenças, regressão descontínua — foram desenvolvidas precisamente para enfrentar esse desafio. Como veremos na seção "Pesquisa em Ação", Angrist e Pischke (2010) documentam essa "revolução da credibilidade" que transformou a economia empírica.

A econometria moderna desenvolveu técnicas sofisticadas para lidar com esses problemas. No Brasil, pesquisas domiciliares como a **[PNAD Contínua](https://www.ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua.html)** (Pesquisa Nacional por Amostra de Domicílios) do [IBGE](https://www.ibge.gov.br) e a **Pesquisa de Orçamentos Familiares (POF)** fornecem dados fundamentais para testar modelos microeconômicos — desde a estimação de elasticidades de oferta de trabalho até a avaliação do impacto de programas como o Bolsa Família sobre decisões de consumo das famílias. O Censo Demográfico, realizado a cada dez anos, oferece dados universais que permitem análises com granularidade municipal, essenciais para estudos de economia regional e avaliação de políticas descentralizadas.

OK, sabemos construir e testar modelos. Mas todo modelo microeconômico segue os mesmos três mandamentos — e o segundo é o mais polêmico.

!!! box-mundo "Box Mundo 1.1 — Experimentos naturais e a verificação de modelos: Card & Krueger e o salário mínimo"

    **Contexto:** Um dos maiores desafios da verificação empírica de modelos econômicos é a impossibilidade de realizar experimentos controlados: não se pode dividir aleatoriamente um país em "grupo de tratamento" e "grupo de controle" para testar políticas econômicas. Essa limitação levou, nas décadas de 1980 e 1990, ao desenvolvimento dos chamados *experimentos naturais* — situações em que variações exógenas de política ou de contexto institucional geram condições quase-experimentais. O trabalho seminal de David Card e Alan Krueger sobre o salário mínimo nos Estados Unidos tornou-se o exemplo paradigmático dessa abordagem e ilustra concretamente como modelos teóricos podem ser confrontados com dados.

    **Dados:** Em 1992, o estado de Nova Jersey elevou o salário mínimo de US$ 4,25 para US$ 5,05 por hora, enquanto o vizinho estado da Pensilvânia manteve o salário mínimo federal inalterado. Card e Krueger (1994) coletaram dados de 410 restaurantes de fast-food em ambos os estados, antes e depois do aumento, e aplicaram um desenho de diferenças em diferenças (*difference-in-differences*). O resultado surpreendeu: o emprego nos restaurantes de Nova Jersey não caiu — na verdade, apresentou um leve aumento relativo ao grupo de controle da Pensilvânia. A magnitude estimada foi de um aumento de cerca de 2,76 empregos equivalentes em tempo integral (FTE) por restaurante em Nova Jersey em comparação com a Pensilvânia, contrariando a previsão do modelo competitivo padrão de oferta e demanda de trabalho.

    **Análise:** O estudo de Card e Krueger não "refutou" o modelo de oferta e demanda, mas demonstrou que a previsão teórica depende crucialmente das hipóteses sobre a estrutura do mercado de trabalho. Em mercados com poder de monopsônio — onde empregadores têm algum poder para fixar salários abaixo do produto marginal —, um aumento moderado do salário mínimo pode elevar o emprego. A contribuição metodológica foi igualmente profunda: mostrou que a verificação indireta de modelos (Seção 1.2) pode ser rigorosa quando se exploram variações institucionais como experimentos naturais. Esse trabalho contribuiu decisivamente para a concessão do Prêmio Nobel de Economia de 2021 a David Card, Joshua Angrist e Guido Imbens, pela "revolução da credibilidade" na economia empírica.

    **Fonte:** Card, D.; Krueger, A. B. (1994). Minimum wages and employment: A case study of the fast-food industry in New Jersey and Pennsylvania. *American Economic Review*, 84(4), 772–793. Angrist, J. D.; Pischke, J.-S. (2010). The credibility revolution in empirical economics. *Journal of Economic Perspectives*, 24(2), 3–30.
