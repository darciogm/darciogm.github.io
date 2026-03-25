# Capítulo 13 — O Leiloeiro que Ninguém Vê

Nos capítulos anteriores, construímos separadamente a teoria do consumidor e a teoria da firma — duas metades de uma história que, sozinhas, ficam incompletas como um sanduíche sem recheio. Do lado da demanda, vimos como preferências racionais e restrições orçamentárias determinam as escolhas ótimas de consumo (Capítulos 3–6); do lado da oferta, analisamos como firmas minimizam custos e maximizam lucros escolhendo níveis de produção ao longo de suas curvas de custo marginal (Capítulos 11–12). Agora é hora de finalmente juntar comprador e vendedor na mesma sala e ver o que acontece quando deixamos o mercado funcionar. Este capítulo desenvolve a análise de **equilíbrio parcial marshalliano** — o estudo de um mercado individual tomando os demais como dados — e suas aplicações à análise de bem-estar e políticas públicas.

A metáfora do "leiloeiro walrasiano" — uma entidade fictícia que anuncia preços e ajusta-os até que oferta e demanda se igualem — nos ajuda a compreender o mecanismo de formação de preços. Léon Walras (1834–1910), economista francês da Escola de Lausanne, concebeu esse dispositivo teórico para explicar como mercados descentralizados podem atingir o equilíbrio sem nenhuma coordenação central. Embora nenhum leiloeiro real exista na maioria dos mercados, o resultado competitivo se assemelha ao que tal mecanismo produziria: milhões de agentes, cada um perseguindo seus próprios objetivos, produzem um resultado coerente e — como demonstraremos — eficiente. É uma das conclusões mais surpreendentes e poderosas da teoria econômica.

O equilíbrio parcial contrasta com o equilíbrio geral (que estudaremos nos Capítulos 17–18), em que todos os mercados são analisados simultaneamente. Alfred Marshall (1842–1924), em seus *Principles of Economics* (1890), sistematizou a abordagem parcial: analisar um mercado por vez, supondo que os efeitos sobre os demais mercados são suficientemente pequenos para serem ignorados — a cláusula *ceteris paribus*. Essa simplificação é adequada quando o mercado em questão é pequeno em relação ao restante da economia, mas deve ser usada com cautela quando se trata de mercados grandes ou fortemente interconectados (como o mercado de petróleo, cujos efeitos reverberam por toda a economia).

Ao longo do capítulo, analisaremos: a agregação de demandas individuais em demanda de mercado; a determinação de preços no curtíssimo, curto e longo prazos; estática comparativa; eficiência econômica; controles de preços; e incidência tributária. Cada um desses tópicos será desenvolvido com rigor analítico, complementado por exemplos do contexto brasileiro e por gráficos interativos que permitem visualizar os mecanismos em operação.

---

## 13.1 Demanda de Mercado

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

Com a demanda de mercado construída, precisamos agora do segundo ingrediente: a oferta. Recordemos que, no Capítulo 12, derivamos a curva de oferta da firma individual a partir da condição de maximização de lucro (\(p = CMg\)). A oferta de mercado é construída de forma análoga à demanda: somamos horizontalmente as ofertas individuais das firmas. Com ambos os componentes em mãos, podemos finalmente analisar a formação de preços — o que faremos distinguindo três horizontes temporais, cada um com graus de ajuste progressivamente maiores.

---

## 13.2 Determinação de Preço no Curtíssimo Prazo

O primeiro horizonte temporal que consideramos é o mais restritivo — e o mais dramático: o **curtíssimo prazo**, também chamado de período de mercado. Imagine o feirante que chegou de madrugada com seu caminhão de tomates. O que está no caminhão é o que ele tem para vender; não há como plantar mais tomates até o fim da tarde. A quantidade ofertada é fixa, ponto final. A curva de oferta é perfeitamente inelástica (vertical):

\[
S = \bar{Q}
\]

Neste caso, o preço de equilíbrio é determinado exclusivamente pela demanda:

\[
p^* \text{ tal que } X(p^*) = \bar{Q}
\]

Se a demanda se desloca, todo o ajuste ocorre via preço — a quantidade permanece inalterada. Em mercados de bens perecíveis — como peixes frescos no Mercado Municipal de São Paulo, flores no Ceagesp, ou frutas tropicais nos mercados do Nordeste —, esta análise é particularmente relevante: o vendedor aceita qualquer preço que o mercado determine, pois a alternativa é perder a mercadoria. Marshall chamava esse horizonte de "período de mercado" e o considerava essencial para compreender a volatilidade de preços de bens não armazenáveis.

A implicação prática é imediata: quanto mais inelástica a oferta, maior a volatilidade de preços em resposta a choques de demanda. Isso explica por que os preços de hortaliças e legumes nos CEASAs brasileiros podem variar 50% ou mais de uma semana para outra — o tempo entre a colheita e a venda é curto demais para que a oferta se ajuste. Já para bens duráveis e estocáveis, como minério de ferro ou alumínio, a possibilidade de acumular ou liquidar estoques suaviza as flutuações de preço, aproximando o mercado de um horizonte de curto prazo mesmo em intervalos breves.

Explore como mudanças nos parâmetros de oferta e demanda afetam o equilíbrio de mercado. Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor (azul) e do produtor (verde).

<iframe src="../graficos/cap13/oferta-demanda.html" title="Figura 13.1 — Equilíbrio de oferta e demanda" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 13.1 — Equilíbrio de oferta e demanda.** Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor e do produtor.
</div>

---

## 13.3 Determinação de Preço no Curto Prazo

Passamos agora ao horizonte de **curto prazo**, em que as firmas finalmente ganham algum espaço para respirar: podem variar a quantidade produzida contratando mais trabalhadores ou comprando mais matéria-prima, embora o capital continue fixo e o número de firmas no mercado seja dado. Se o curtíssimo prazo era um feirante preso ao seu caminhão, o curto prazo é uma fábrica que pode ligar mais turnos — mas não pode construir um galpão novo da noite para o dia. É nesse horizonte que a análise de equilíbrio parcial marshalliano se manifesta em sua forma mais característica.

### Equilíbrio parcial marshalliano

No curto prazo, a oferta de cada firma é dada por sua curva de custo marginal acima do custo variável médio mínimo — o ponto de fechamento derivado no Capítulo 12:

\[
S_j(p) = \begin{cases} q_j \text{ tal que } CMg_j(q_j) = p, & \text{se } p \geq CVMe_{\min} \\ 0, & \text{se } p < CVMe_{\min} \end{cases}
\label{eq:13.3} \tag{13.3} \]

Recordemos a lógica: se o preço cai abaixo do custo variável médio mínimo, a firma não consegue sequer cobrir seus custos variáveis e prefere encerrar a produção temporariamente (mantendo a planta, mas produzindo zero). Acima desse limiar, a firma produz onde \(p = CMg\), a condição de primeira ordem para maximização de lucro em concorrência perfeita.

A oferta de mercado de curto prazo é a soma horizontal das ofertas individuais das \(m\) firmas:

\[
S(p) = \sum_{j=1}^{m} S_j(p)
\label{eq:13.4} \tag{13.4} \]

Note que a oferta de mercado pode apresentar descontinuidades nos preços correspondentes aos pontos de fechamento de firmas individuais: à medida que o preço sobe, firmas que estavam inativas passam a produzir, gerando "saltos" na oferta agregada. Na prática, com um número grande de firmas heterogêneas, esses saltos se tornam imperceptíveis e a curva de oferta de mercado é essencialmente contínua.

!!! definition "Equilíbrio de curto prazo"
    O **equilíbrio competitivo de curto prazo** ocorre ao preço \(p^*\) tal que a quantidade demandada pelo mercado iguala a quantidade ofertada:

    \[
    X(p^*) = S(p^*)
    \label{eq:13.5} \tag{13.5} \]

    O equilíbrio definido pela equação $\eqref{eq:13.5}$ garante que, a esse preço, nenhum comprador ou vendedor individual tem incentivo para alterar seu comportamento. Os consumidores compram exatamente a quantidade que desejam, e cada firma produz a quantidade que maximiza seu lucro.

!!! idea "Intuição Econômica"
    **Em uma frase:** O preço de equilíbrio é aquele em que ninguém está frustrado — todo mundo que quer comprar a esse preço consegue, e todo mundo que quer vender encontra comprador.

    **Pense assim:** Na feira livre do seu bairro, se o quilo do tomate está caro demais, sobra tomate na barraca e o feirante baixa o preço. Se está barato demais, falta tomate e os consumidores competem entre si, puxando o preço para cima. O equilíbrio é o ponto em que a pilha de tomates na barraca "dá certo" com a fila de compradores — sem sobra nem falta.

    **Por que isso importa:** A formação de preços por oferta e demanda é o mecanismo central que coordena decisões descentralizadas de milhões de agentes — e entender esse processo é essencial para avaliar qualquer intervenção de política pública nos mercados.

### Estabilidade do equilíbrio

Encontrar o equilíbrio não basta: precisamos garantir que, se o mercado for perturbado, as forças econômicas o reconduzirão ao ponto de equilíbrio. O equilíbrio marshalliano é **estável** quando, a preços acima do equilíbrio, há excesso de oferta (pressionando o preço para baixo) e, a preços abaixo, há excesso de demanda (pressionando o preço para cima). Formalmente, a condição de estabilidade walrasiana requer:

\[
\frac{dX}{dp} - \frac{dS}{dp} < 0
\label{eq:13.6} \tag{13.6} \]

o que é satisfeito sempre que a demanda é negativamente inclinada e a oferta é positivamente inclinada — o caso "bem-comportado" que predomina na maioria dos mercados. Note, porém, que a estabilidade não é automática: se a oferta tiver inclinação negativa (como pode ocorrer em mercados de trabalho com *backward-bending supply*) ou se a demanda tiver inclinação positiva (bens de Giffen ou Veblen), a condição pode ser violada e o equilíbrio pode ser instável.

Marshall propôs um critério alternativo de estabilidade, baseado em quantidades: o equilíbrio é estável se, quando a quantidade está abaixo do equilíbrio, o preço de demanda excede o preço de oferta (incentivando os produtores a expandir). Os dois critérios coincidem quando as curvas têm inclinações convencionais, mas podem divergir em casos patológicos — uma sutileza que ilustra a riqueza da análise marshalliana.

O equilíbrio de curto prazo, contudo, não é a palavra final: ele nos diz o que acontece *dado o número de firmas*. No longo prazo, esse número se ajusta — e é esse ajuste que nos conduz ao próximo horizonte temporal.

---

## 13.4 Estática Comparativa

Determinado o equilíbrio, a pergunta natural — e a que todo economista vive respondendo em entrevistas, relatórios e reuniões de diretoria — é: *e se as condições mudarem?* Se a renda dos consumidores cresce, se o preço de um insumo se eleva, se uma nova tecnologia reduz os custos de produção — como o preço e a quantidade de equilíbrio se ajustam? A **estática comparativa** é a ferramenta que nos permite responder a essas perguntas de forma rigorosa, comparando dois equilíbrios: o "antes" e o "depois". O termo "estática" indica que não analisamos a viagem entre os dois estados, apenas tiramos uma foto de cada posição de repouso — uma abordagem que, apesar de suas limitações, é o canivete suíço do microeconomista aplicado.

A estática comparativa tem raízes profundas na economia. Paul Samuelson (1915–2009), em *Foundations of Economic Analysis* (1947), formalizou o método e mostrou que previsões testáveis em economia frequentemente derivam da combinação de condições de equilíbrio com hipóteses de estabilidade — o chamado "princípio de correspondência".

### Deslocamentos de oferta e demanda

A análise de estática comparativa examina como o equilíbrio muda em resposta a choques exógenos. Considere o equilíbrio definido implicitamente por:

\[
X(p, \alpha) = S(p, \beta)
\label{eq:13.7} \tag{13.7} \]

onde \(\alpha\) é um parâmetro de demanda (por exemplo, renda dos consumidores, preço de um bem substituto, ou uma mudança de preferências) e \(\beta\) é um parâmetro de oferta (por exemplo, custo de um insumo, nível tecnológico, ou condição climática).

Diferenciando totalmente a equação $\eqref{eq:13.7}$:

\[
\frac{\partial X}{\partial p} dp + \frac{\partial X}{\partial \alpha} d\alpha = \frac{\partial S}{\partial p} dp + \frac{\partial S}{\partial \beta} d\beta
\]

Rearranjando para isolar \(dp\):

\[
\frac{dp}{d\alpha} = \frac{\partial X / \partial \alpha}{\partial S / \partial p - \partial X / \partial p} > 0
\label{eq:13.8} \tag{13.8} \]

se um aumento em \(\alpha\) desloca a demanda para a direita (\(\partial X / \partial \alpha > 0\)) e as curvas têm inclinações convencionais (demanda decrescente e oferta crescente no preço).

Analogamente, um aumento no custo de insumos (\(\beta\)):

\[
\frac{dp}{d\beta} = \frac{-\partial S / \partial \beta}{\partial S / \partial p - \partial X / \partial p} > 0
\]

se o aumento em \(\beta\) reduz a oferta (\(\partial S / \partial \beta < 0\)).

Para fixar a intuição, considere dois exemplos concretos do contexto brasileiro. Primeiro, um choque de demanda: o programa de biocombustíveis brasileiro (RenovaBio) aumentou a demanda por etanol de cana-de-açúcar. Nos termos do modelo, \(\alpha\) representa a intensidade da política de mistura obrigatória; um aumento em \(\alpha\) desloca a demanda para a direita, elevando o preço de equilíbrio do etanol e a quantidade transacionada. Segundo, um choque de oferta: geadas severas no Paraná em 2021 devastaram cafezais, deslocando a curva de oferta de café para a esquerda. O resultado foi uma elevação acentuada do preço do café (o indicador Cepea/Esalq subiu mais de 80% em 12 meses) com redução na quantidade produzida — exatamente o que a equação $\eqref{eq:13.8}$ prevê.

!!! note "Magnitude dos efeitos"
    A magnitude da variação de preço depende das elasticidades relativas de oferta e demanda. Quanto mais inelástica a demanda (ou a oferta), maior a variação de preço decorrente de um deslocamento da outra curva. Esse resultado é de importância prática imensa: no mercado de commodities agrícolas, onde tanto a oferta quanto a demanda são inelásticas no curto prazo, pequenos choques de produção (uma seca, uma praga) podem causar enormes flutuações de preço. Veremos na seção "Pesquisa em Ação" que Roberts e Schlenker (2013) quantificam precisamente esse fenômeno para milho, soja, trigo e arroz.

A estática comparativa do curto prazo toma o número de firmas como dado. No longo prazo, porém, esse número se torna endógeno: firmas entram quando há lucro e saem quando há prejuízo. Essa dinâmica de entrada e saída conduz à análise de longo prazo, nosso próximo tópico.

!!! box-mundo "Box Mundo 13.1 — O modelo cobweb e a volatilidade agrícola: evidências dos mercados de milho (EUA) e trigo (UE)"

    **Contexto:** A estática comparativa pressupõe ajuste instantâneo ao novo equilíbrio, mas em mercados agrícolas a oferta responde com defasagem — os produtores decidem quanto plantar *antes* de conhecer o preço de venda. Essa defasagem pode gerar ciclos de preço, formalizados no **modelo cobweb** (teia de aranha) por Mordecai Ezekiel (1938). O modelo prevê que, se a oferta é mais elástica que a demanda, os preços oscilam de forma explosiva; se menos elástica, convergem ao equilíbrio; se igualmente elásticas, oscilam perpetuamente.

    **Dados:** Nos Estados Unidos, o milho apresentou volatilidade de preços consistente com dinâmicas cobweb: segundo o USDA (Economic Research Service), o preço do *bushel* de milho oscilou entre US$ 3,36 (2019) e US$ 6,89 (2022), com reversões parciais nos anos seguintes. Na União Europeia, dados do Eurostat mostram que o preço do trigo mole variou entre €175/t (2020) e €382/t (maio de 2022), caindo para €215/t em 2023 — um padrão de *overshoot* e correção que o modelo cobweb ajuda a explicar. Roberts e Schlenker (2013), discutidos na seção "Pesquisa em Ação", estimam elasticidades de oferta e demanda de curto prazo muito baixas (entre 0,05 e 0,15), o que implica alta sensibilidade dos preços a choques e potencial para ciclos cobweb amortecidos.

    **Análise:** A dinâmica cobweb ilustra os limites da estática comparativa convencional: quando a oferta responde com defasagem, a trajetória entre equilíbrios pode ser tão importante quanto os equilíbrios em si. O modelo também ajuda a compreender por que políticas de estoques reguladores (como a PGPM no Brasil ou a *Commodity Credit Corporation* nos EUA) podem reduzir a volatilidade ao suavizar a oferta intertemporal. A convergência ou divergência dos ciclos depende criticamente da razão entre as elasticidades de oferta e demanda — um resultado que conecta diretamente a estática comparativa da equação $\eqref{eq:13.8}$ com a dinâmica de ajuste.

    **Fonte:** Ezekiel, M. (1938). "The Cobweb Theorem". *Quarterly Journal of Economics*, 52(2), 255–280; USDA-ERS, Feed Grains Database; Eurostat, Agricultural Price Statistics; Roberts & Schlenker (2013), *AER*.

---

## 13.5 Análise de Longo Prazo

A análise de curto prazo toma como dado o número de firmas no mercado — como se as portas da indústria estivessem trancadas. Mas no longo prazo, alguém encontra a chave: se as firmas existentes obtêm lucro econômico positivo, novas empresas cheiram o dinheiro e entram; se há prejuízo persistente, firmas empacotam suas coisas e saem. Esse mecanismo de **entrada e saída livre** é a força gravitacional que puxa o mercado para o equilíbrio de longo prazo — e compreendê-lo é essencial para entender por que, em concorrência perfeita, o lucro econômico tende a zero, como se uma mão invisível redistribuísse as cartas até que ninguém tivesse vantagem sobre os demais.

A ideia central remonta a Adam Smith e à sua metáfora da "mão invisível": a busca do lucro individual, ao atrair concorrentes, dissipa o próprio lucro que a motivou. O equilíbrio de longo prazo é, assim, o ponto em que a força gravitacional da concorrência esgota as oportunidades de ganho extraordinário.

### Entrada, saída e lucro zero

No longo prazo, todos os fatores de produção são variáveis e há livre entrada e saída de firmas no mercado. Se as firmas existentes obtêm lucro econômico positivo (\(\pi > 0\)), novas firmas entram, deslocando a oferta para a direita e reduzindo o preço. Se há prejuízo (\(\pi < 0\)), firmas saem, deslocando a oferta para a esquerda e elevando o preço. No equilíbrio de longo prazo, pela equação $\eqref{eq:13.9}$:

\[
\pi = 0 \quad \Longrightarrow \quad p = CMe_{\min} \label{eq:13.9} \tag{13.9}
\]

É crucial interpretar corretamente o "lucro zero": trata-se do lucro *econômico*, que já desconta o custo de oportunidade de todos os fatores — inclusive o capital do empreendedor e o salário que ele obteria em sua melhor alternativa. O lucro contábil pode ser positivo mesmo quando o lucro econômico é zero. Assim, a condição de lucro zero não significa que o empresário "não ganha nada"; significa que ele ganha exatamente o que ganharia na melhor alternativa disponível — nem mais, nem menos.

Para ilustrar, considere o setor de restaurantes em São Paulo. A cada ano, milhares de novos restaurantes abrem, atraídos pelo aparente sucesso dos estabelecimentos existentes. Mas a taxa de mortalidade é altíssima: segundo o Sebrae, cerca de 35% dos restaurantes paulistanos fecham nos primeiros dois anos. Esse processo de entrada e saída é exatamente o mecanismo que conduz o setor ao equilíbrio de longo prazo com lucro econômico próximo de zero.

!!! definition "Equilíbrio competitivo de longo prazo"
    No **equilíbrio competitivo de longo prazo**, três condições são satisfeitas simultaneamente:

    1. Cada firma maximiza lucro: \(p = CMg(q^*)\)
    2. Nenhuma firma deseja entrar ou sair: \(\pi = 0 \Rightarrow p = CMe(q^*)\)
    3. Oferta iguala demanda: \(X(p^*) = m^* \cdot q^*\)

    onde \(m^*\) é o número de firmas de equilíbrio. As duas primeiras condições implicam que cada firma opera na escala eficiente mínima (\(CMg = CMe\)), ou seja, no ponto mais baixo de sua curva de custo médio. Isso é notável: a concorrência força cada firma a operar na escala mais eficiente possível — um resultado de eficiência produtiva que não depende de nenhuma intenção altruísta.

Explore a relação entre a firma individual e o mercado no longo prazo. Ajuste o número de firmas e o deslocamento da demanda para observar como a entrada e saída de firmas conduzem o preço ao custo médio mínimo (lucro zero). O painel esquerdo mostra a firma (CMg e CMe) e o direito mostra o mercado (S e D).

<iframe src="../graficos/cap13/equilibrio-longo-prazo.html" title="Figura 13.2 — Equilíbrio de longo prazo: firma e mercado" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 13.2 — Equilíbrio de longo prazo: firma e mercado.** Ajuste o número de firmas e o deslocamento da demanda para observar como a entrada e saída de firmas conduzem o preço ao custo médio mínimo (lucro zero).
</div>

A condição de lucro zero no longo prazo é poderosa, mas levanta uma questão natural: se o preço de equilíbrio é \(p = CMe_{\min}\), qual será o *nível* desse preço após uma mudança na demanda? A resposta depende de como a expansão (ou contração) da indústria afeta os preços dos insumos — e nos leva à taxonomia de indústrias que abordaremos a seguir.

---

## 13.6 Equilíbrio de Longo Prazo: Custos Constantes, Crescentes e Decrescentes

Lucro zero — e daí? O preço volta ao patamar original ou se estabelece em um novo nível? A condição de lucro zero no longo prazo nos diz que \(p = CMe_{\min}\), mas qual será o nível desse preço após um aumento na demanda? A resposta depende de como a entrada de novas firmas afeta os preços dos insumos. Se os preços dos insumos permanecem inalterados, o \(CMe_{\min}\) não muda e o preço retorna ao nível original. Mas se a expansão da indústria pressiona os preços dos insumos para cima, o equilíbrio de longo prazo se estabelece a um preço mais elevado. Essa distinção dá origem a três tipos de indústria, cada um com uma forma diferente de curva de oferta de longo prazo.

### Indústria de custos constantes

Se a entrada de novas firmas não altera os preços dos insumos, as curvas de custo das firmas permanecem inalteradas. A curva de oferta de longo prazo da indústria é **horizontal** ao nível \(p = CMe_{\min}\).

Um aumento na demanda leva à entrada de firmas, aumento na quantidade total, mas o preço retorna ao mesmo nível original. Este é o caso mais simples e serve como *benchmark* teórico. Na prática, indústrias que utilizam insumos amplamente disponíveis e não especializados — como o setor de camisetas básicas, que emprega algodão e mão de obra não qualificada em abundância — se aproximam desse modelo. A oferta de longo prazo é perfeitamente elástica: a indústria pode expandir indefinidamente sem pressionar custos.

### Indústria de custos crescentes

Quando a entrada de novas firmas eleva os preços dos insumos (por exemplo, terra para agricultura, mão de obra especializada, minérios de alta qualidade), as curvas de custo se deslocam para cima. A curva de oferta de longo prazo é **positivamente inclinada**.

O preço de equilíbrio de longo prazo será mais alto após o aumento na demanda. Este é o caso empiricamente mais relevante: a maioria das indústrias enfrenta custos crescentes em algum grau. David Ricardo (1772–1823) foi o primeiro a analisar sistematicamente esse fenômeno no contexto da agricultura inglesa do início do século XIX. Ele observou que, à medida que a população crescia e a demanda por grãos se expandia, terras cada vez menos férteis eram incorporadas ao cultivo, elevando o custo marginal da produção agrícola — e gerando rendas para os proprietários das terras mais produtivas (a "renda ricardiana" que analisaremos na Seção 13.8).

No Brasil contemporâneo, a expansão da produção de soja no Cerrado ilustra a mesma dinâmica: as primeiras terras incorporadas eram as de melhor aptidão agrícola (topografia plana, boa pluviosidade, proximidade de infraestrutura logística); à medida que a fronteira se expandiu para regiões mais remotas — como o MATOPIBA (Maranhão, Tocantins, Piauí e Bahia) —, os custos de produção e transporte se elevaram, configurando uma indústria de custos crescentes.

### Indústria de custos decrescentes

Em casos mais raros, a entrada de firmas pode reduzir custos — por exemplo, via economias de escala externas à firma (mas internas à indústria), como o desenvolvimento de infraestrutura especializada ou de uma rede de fornecedores. A curva de oferta de longo prazo é **negativamente inclinada**. No Brasil, o polo tecnológico de Campinas (SP) é um possível exemplo: a concentração de empresas de TI gerou uma rede de fornecedores, mão de obra especializada e infraestrutura de telecomunicações que reduz os custos de cada firma individual à medida que a indústria cresce. Alfred Marshall chamou esse fenômeno de "economias externas" e o considerava uma das forças mais interessantes na organização industrial.

Note, contudo, que a indústria de custos decrescentes levanta questões delicadas para a estabilidade do equilíbrio: com uma curva de oferta negativamente inclinada, o critério de estabilidade walrasiano da equação $\eqref{eq:13.6}$ pode ser violado se a oferta for mais inclinada (em valor absoluto) que a demanda. Essa é uma limitação importante do modelo que merece atenção em aplicações empíricas.

!!! idea "Intuição Econômica"
    **Em uma frase:** O formato da curva de oferta de longo prazo depende de uma única pergunta: quando a indústria cresce, os insumos ficam mais caros, mais baratos ou iguais?

    **Pense assim:** Imagine abrir mais padarias em uma cidade. Se a farinha é abundante e os padeiros são fáceis de encontrar, cada nova padaria opera com os mesmos custos — oferta de LP horizontal. Mas se padeiros qualificados são escassos, cada nova padaria precisa pagar mais para atrair mão de obra, elevando os custos de todas — oferta de LP inclinada para cima. E se a concentração de padarias atrai moinhos e escolas de panificação para a região, reduzindo custos — oferta de LP inclinada para baixo. O segredo está nos insumos, não no produto.

    **Por que isso importa:** Saber o tipo de indústria é crucial para prever o efeito de longo prazo de políticas de estímulo à demanda: em indústrias de custos constantes, o preço volta ao nível original; em indústrias de custos crescentes, o preço sobe permanentemente — uma distinção decisiva para a análise de políticas públicas.

A [Tabela 13.1](#tabela-13-1) resume os três tipos de indústria.

<a id="tabela-13-1"></a>

| Tipo de indústria | Efeito da entrada sobre custos | Inclinação da oferta de LP | Efeito de ↑D sobre preço de LP |
|---|---|---|---|
| Custos constantes | Nenhum | Horizontal | Preço inalterado |
| Custos crescentes | Custos sobem | Positiva | Preço sobe |
| Custos decrescentes | Custos caem | Negativa | Preço cai |

<div class="caption-obj" markdown>
**Tabela 13.1 — Tipos de indústria e oferta de longo prazo.**
</div>

---

## 13.7 Elasticidade de Oferta de Longo Prazo

Sabemos que a curva de oferta de longo prazo pode ser horizontal, ascendente ou até descendente. Mas quão íngreme é essa inclinação? Para quantificar essa responsividade da oferta ao preço, recorremos à **elasticidade de oferta de longo prazo** — uma medida que incorpora não apenas o ajuste de produção das firmas existentes, mas também a dinâmica de entrada e saída e o efeito sobre os preços dos insumos. Enquanto a elasticidade de oferta de curto prazo reflete apenas o movimento ao longo da curva de CMg com planta fixa (Capítulo 12), a elasticidade de longo prazo captura também a resposta extensiva: novas firmas que entram no mercado.

A elasticidade de oferta de longo prazo mede a responsividade da quantidade ofertada de longo prazo a variações no preço:

\[
\varepsilon_{S}^{LP} = \frac{\Delta Q / Q}{\Delta p / p} = \frac{dQ}{dp} \cdot \frac{p}{Q} \label{eq:13.10} \tag{13.10}
\]

!!! definition "Elasticidade de oferta de longo prazo"
    A **elasticidade de oferta de longo prazo** reflete não apenas o ajuste de produção das firmas existentes, mas também a entrada/saída de firmas e o ajuste dos preços dos insumos. É, portanto, uma medida mais abrangente do que a elasticidade de curto prazo.

Para uma indústria de custos constantes, \(\varepsilon_S^{LP} = \infty\) (oferta perfeitamente elástica). Para indústrias de custos crescentes, \(\varepsilon_S^{LP}\) é positiva e finita. Empiricamente, a elasticidade de oferta de longo prazo é maior do que a de curto prazo, pois no longo prazo há mais margens de ajuste disponíveis — um princípio geral que Samuelson denominou "princípio de Le Chatelier", por analogia com a termodinâmica: permitir mais ajustes nunca reduz a elasticidade de resposta.

Para ilustrar a diferença quantitativa entre horizontes temporais, considere o mercado de café no Brasil. No curtíssimo prazo (após a colheita), a oferta é perfeitamente inelástica (\(\varepsilon_S = 0\)): a safra já está definida. No curto prazo (uma safra), os produtores podem ajustar tratos culturais e intensidade de colheita, resultando em elasticidade modesta (\(\varepsilon_S \approx 0{,}1\) a \(0{,}3\)). No longo prazo (5–7 anos, o ciclo de maturação de novos cafezais), a oferta é substancialmente mais elástica (\(\varepsilon_S \approx 0{,}5\) a \(1{,}0\)), pois novos plantios podem ser realizados ou áreas podem ser convertidas para outras culturas.

Com as ferramentas de equilíbrio de longo prazo em mãos, podemos agora abordar uma questão aparentemente paradoxal: se o lucro de cada firma é zero no longo prazo, como pode existir excedente do produtor positivo para a indústria?

---

## 13.8 Excedente do Produtor no Longo Prazo

### Renda ricardiana

Se no longo prazo competitivo o lucro econômico de cada firma individual é zero, como pode haver excedente do produtor positivo para a indústria como um todo? A resposta reside na heterogeneidade dos fatores de produção — e nos conduz ao conceito clássico de **renda ricardiana**, que remonta a David Ricardo e sua análise das terras de diferentes fertilidades no início do século XIX.

No curto prazo, o excedente do produtor é a diferença entre a receita total e o custo variável total — uma medida do retorno aos fatores fixos. No longo prazo, com lucro zero, o excedente do produtor de cada firma individual é zero. No entanto, o excedente do produtor **da indústria** pode ser positivo em indústrias de custos crescentes.

A chave para resolver esse aparente paradoxo é entender que, quando a indústria se expande e os preços dos insumos sobem, as firmas que já estavam no mercado — e que têm acesso a insumos mais baratos ou de melhor qualidade — obtêm uma vantagem de custo sobre as firmas entrantes. Essas firmas "inframarginais" têm custo médio inferior ao preço de mercado, gerando um *excedente*. Porém, esse excedente não é lucro da firma: ele é capturado pelos proprietários do fator escasso (a terra fértil, o trabalhador especializado, a localização privilegiada) na forma de preços mais elevados para esses fatores. É essa remuneração diferencial do fator escasso que constitui a **renda ricardiana**.

Esse excedente de longo prazo reflete, portanto, a **renda ricardiana** — pagamentos a fatores de produção cujos preços são elevados pela expansão da indústria. Por exemplo, quando a entrada de firmas agrícolas eleva o preço da terra, os proprietários de terras mais férteis (inframarginais) obtêm rendas que constituem o excedente do produtor de longo prazo. A causalidade é importante e frequentemente confundida: não é a renda da terra que determina o preço do produto; é o preço do produto que determina a renda da terra. Como Ricardo sintetizou: "Não é porque os aluguéis são altos que o trigo é caro; é porque o trigo é caro que os aluguéis são altos."

!!! example "Renda ricardiana na agricultura brasileira"
    No Cerrado, a expansão da fronteira agrícola para a produção de soja elevou significativamente o preço das terras com melhor aptidão agrícola (topografia plana, solo corrigido, proximidade logística). Segundo dados do [CEPEA/ESALQ](https://www.cepea.esalq.usp.br) e da FNP, o hectare em regiões consolidadas como Sorriso (MT) valorizou mais de 300% entre 2005 e 2023, refletindo a renda ricardiana apropriada pelos proprietários de terras inframarginais. Produtores em terras menos férteis (marginais) operam com lucro próximo de zero — exatamente como o modelo prevê.

!!! definition "Renda ricardiana"
    A **renda ricardiana** (ou renda econômica) é o pagamento a um fator de produção acima do mínimo necessário para mantê-lo em seu uso corrente. No longo prazo competitivo, o excedente do produtor da indústria reflete exclusivamente essas rendas. A renda ricardiana é uma transferência — não uma ineficiência — e sua magnitude depende do grau de heterogeneidade dos fatores de produção.

Formalmente, o excedente do produtor de longo prazo é a área acima da curva de oferta de longo prazo e abaixo do preço de equilíbrio:

\[
EP_{LP} = \int_0^{Q^*} \left[ p^* - p_S(Q) \right] dQ
\label{eq:13.11} \tag{13.11} \]

onde \(p_S(Q)\) é a curva de oferta inversa de longo prazo. Geometricamente, trata-se do triângulo (ou área) entre o preço de equilíbrio e a curva de oferta, desde a origem até a quantidade de equilíbrio.

??? exercicio-resolvido "Exercício Resolvido 13.1 — Indústria de custos crescentes e renda ricardiana"
    **Enunciado.** Uma indústria competitiva de custos crescentes tem oferta de longo prazo \(p = 20 + 0{,}05Q\). A demanda é \(Q = 800 - 10p\). (a) Encontre o equilíbrio de LP. (b) Calcule a renda ricardiana. (c) Se a demanda se desloca para \(Q' = 1000 - 10p\), encontre o novo equilíbrio e a variação na renda ricardiana.

    ---

    **(a)** Substituindo a oferta na demanda:

    \[
    Q = 800 - 10(20 + 0{,}05Q) = 800 - 200 - 0{,}5Q \implies 1{,}5Q = 600 \implies Q^* = 400
    \]

    \[
    p^* = 20 + 0{,}05 \times 400 = 40
    \]

    **(b)** A renda ricardiana é a área acima da curva de oferta de LP e abaixo do preço:

    \[
    RR = \int_0^{400}[40 - (20 + 0{,}05Q)] dQ = \int_0^{400}[20 - 0{,}05Q] dQ = \left[20Q - 0{,}025Q^2\right]_0^{400}
    \]

    \[
    RR = 8.000 - 4.000 = 4.000
    \]

    Alternativamente, como a oferta é linear: \(RR = \frac{1}{2}(p^* - p_{\min}) \times Q^* = \frac{1}{2}(40 - 20)(400) = 4.000\). ✓

    **(c)** Com a nova demanda:

    \[
    Q' = 1000 - 10(20 + 0{,}05Q') = 1000 - 200 - 0{,}5Q' \implies 1{,}5Q' = 800 \implies Q'^* = 533{,}3
    \]

    \[
    p'^* = 20 + 0{,}05 \times 533{,}3 = 46{,}67
    \]

    \[
    RR' = \frac{1}{2}(46{,}67 - 20)(533{,}3) = \frac{1}{2}(26{,}67)(533{,}3) \approx 7.111
    \]

    A renda ricardiana aumentou de 4.000 para 7.111 — um acréscimo de **3.111**, refletindo a valorização dos fatores inframarginais (como terras mais produtivas) em resposta à expansão da demanda. Note que o preço de equilíbrio subiu (de 40 para 46,67) porque se trata de uma indústria de custos crescentes.

A análise de excedentes e renda ricardiana nos fornece as ferramentas para avaliar se o equilíbrio de mercado é, em algum sentido, *bom*. Passamos agora à análise normativa: o equilíbrio competitivo é eficiente?

---

## 13.9 Eficiência Econômica e Análise de Bem-Estar Aplicada

Até aqui, a análise de equilíbrio parcial se comportou como um repórter descrevendo os fatos: *como* os preços e quantidades são determinados. Agora, vestimos a toga de juiz e fazemos a pergunta que realmente incomoda: o resultado de mercado é *bom*? O equilíbrio competitivo gera o melhor resultado possível para a sociedade, ou estamos apenas celebrando o caos organizado? Para responder, precisamos de critérios de avaliação — e os conceitos de excedente do consumidor e excedente do produtor fornecem as ferramentas para medir o bem-estar gerado pelas trocas de mercado.

A medida de bem-estar que utilizamos aqui — a soma dos excedentes — é uma versão aplicada do critério de eficiência de Pareto: se a soma dos excedentes é maximizada, não é possível melhorar a situação de um agente sem piorar a de outro (dado que transferências podem ser realizadas). Essa conexão será formalizada nos Capítulos 17–18, quando estudarmos os Teoremas Fundamentais do Bem-Estar no contexto de equilíbrio geral.

### Excedente do consumidor e excedente do produtor

O **excedente do consumidor** (EC) mede o ganho líquido dos consumidores, sendo a diferença entre a disposição a pagar e o preço efetivamente pago:

\[
EC = \int_0^{Q^*} \left[ p_D(Q) - p^* \right] dQ
\label{eq:13.12} \tag{13.12} \]

O conceito de excedente do consumidor foi introduzido por Jules Dupuit (1804–1866), engenheiro francês que o utilizou para avaliar projetos de infraestrutura pública (pontes, estradas), e posteriormente formalizado por Marshall. A ideia é capturar o "bônus" que cada consumidor sente por pagar menos do que estaria disposto. Geometricamente, é a área entre a curva de demanda e a linha de preço, do eixo vertical até a quantidade de equilíbrio.

O **excedente do produtor** (EP) mede o ganho líquido dos produtores:

\[
EP = \int_0^{Q^*} \left[ p^* - p_S(Q) \right] dQ
\label{eq:13.13} \tag{13.13} \]

Somando as equações $\eqref{eq:13.12}$ e $\eqref{eq:13.13}$, o **bem-estar social** (W) na análise de equilíbrio parcial é:

\[
W = EC + EP
\label{eq:13.14} \tag{13.14} \]

Note que essa medida de bem-estar social atribui pesos iguais a consumidores e produtores — um real de excedente vale o mesmo independentemente de quem o recebe. Essa é uma simplificação conveniente, mas que pode ser questionada quando se trata de avaliar políticas com fortes efeitos distributivos. Pesos diferentes podem ser justificados se a sociedade atribui maior valor ao bem-estar de grupos mais vulneráveis — uma questão que pertence ao domínio da economia do bem-estar e da escolha social.

!!! theorem "Teorema: Eficiência do equilíbrio competitivo (equilíbrio parcial)"
    O equilíbrio competitivo maximiza o bem-estar social \(W = EC + EP\). Qualquer desvio da quantidade de equilíbrio competitivo — seja por intervenção governamental ou por poder de mercado — gera uma **perda de peso morto** (PPM), ou seja, uma redução líquida do bem-estar total.

!!! proof "Demonstração"
    No equilíbrio competitivo, a quantidade transacionada \(Q^*\) é determinada por \(p_D(Q^*) = p_S(Q^*)\). O bem-estar social é:

    \[
    W(Q) = \int_0^{Q} \left[ p_D(t) - p_S(t) \right] dt
    \]

    Para maximizar \(W\), tomamos a condição de primeira ordem:

    \[
    \frac{dW}{dQ} = p_D(Q) - p_S(Q) = 0
    \]

    o que implica \(p_D(Q^*) = p_S(Q^*)\), exatamente a condição de equilíbrio competitivo.

    A condição de segunda ordem é:

    \[
    \frac{d^2 W}{dQ^2} = \frac{dp_D}{dQ} - \frac{dp_S}{dQ} < 0
    \]

    Isso é satisfeito, pois a demanda inversa é decrescente (\(dp_D/dQ < 0\)) e a oferta inversa é crescente (\(dp_S/dQ > 0\)). Portanto, \(Q^*\) é de fato um máximo de bem-estar. \(\blacksquare\)

!!! idea "Intuição Econômica"
    **Em uma frase:** O equilíbrio competitivo maximiza o bem-estar porque esgota todas as trocas mutuamente vantajosas — a última unidade vendida tem benefício marginal exatamente igual ao custo marginal.

    **Pense assim:** Imagine uma feira livre onde cada barraca vende até o ponto em que o próximo cliente pagaria menos do que custa repor a mercadoria. Enquanto houver alguém disposto a pagar mais do que o custo, ambos ganham com a troca. No equilíbrio, não sobra nenhuma troca lucrativa por fazer.

    **Por que isso importa:** Qualquer quantidade abaixo do equilíbrio desperdiça trocas vantajosas; qualquer quantidade acima força trocas cujo custo supera o benefício. Esse é o fundamento da análise de peso morto de impostos, tabelamentos e cotas.

!!! idea "Intuição Econômica"
    **Em uma frase:** O excedente do consumidor mede o "desconto" que ele sente por pagar menos do que estaria disposto, e o excedente do produtor mede o "bônus" por receber mais do que o mínimo necessário para vender.

    **Pense assim:** Você pagaria até R$ 50 por um ingresso de cinema, mas a bilheteria cobra R$ 30. Os R$ 20 de "alívio" que você sente são seu excedente de consumidor. Do outro lado, o cinema aceitaria vender a partir de R$ 15 (seu custo marginal), mas recebe R$ 30 — os R$ 15 de "folga" são o excedente do produtor. Somando os dois, temos o ganho total que aquela troca gerou para a sociedade.

    **Por que isso importa:** Qualquer política que distorce preços — tabelamento, imposto, subsídio — redistribui ou destrói esses excedentes, e a perda de peso morto é justamente a parte que ninguém aproveita.

A eficiência do equilíbrio competitivo é um resultado poderoso, mas depende de pressupostos que convém explicitar: ausência de externalidades, ausência de poder de mercado, informação simétrica e mercados completos. Quando qualquer dessas condições é violada, o equilíbrio de mercado pode ser ineficiente, abrindo espaço para intervenção governamental potencialmente benéfica. Os Capítulos 19–20 tratarão dessas "falhas de mercado". Por ora, analisemos duas formas específicas de intervenção: controles de preços e tributação.

---

## 13.10 Controles de Preços e Escassez

A demonstração de que o equilíbrio competitivo maximiza o bem-estar social tem um corolário imediato e poderoso: qualquer intervenção que force o preço para fora do equilíbrio gera perda de peso morto. Governos, no entanto, frequentemente impõem controles de preços — por razões distributivas, políticas ou sociais. Quais são as consequências econômicas dessas intervenções? A experiência brasileira oferece exemplos particularmente vívidos, e a análise teórica nos ajuda a compreender por que tais políticas frequentemente produzem resultados opostos aos pretendidos.

### Preço máximo (teto de preço)

Quando o governo estabelece um preço máximo \(\bar{p} < p^*\), a quantidade ofertada cai e a quantidade demandada aumenta, gerando **escassez**:

\[
\text{Escassez} = X(\bar{p}) - S(\bar{p}) > 0
\]

O preço máximo gera perda de peso morto, pois unidades que seriam eficientes de produzir e consumir deixam de ser transacionadas. Além disso, o modelo básico subestima os custos reais da escassez: na prática, consumidores desperdiçam tempo em filas, mercados paralelos surgem com preços superiores ao de equilíbrio original, e a qualidade dos produtos tende a se deteriorar (pois os produtores, incapazes de competir via preço, reduzem custos cortando qualidade).

Um aspecto frequentemente negligenciado é a questão da alocação: quando há escassez, *quem* recebe o bem? O mecanismo de preço, que normalmente aloca os bens aos consumidores com maior disposição a pagar, é substituído por mecanismos alternativos — filas (que favorecem quem tem mais tempo livre), relações pessoais (que favorecem quem conhece o vendedor), ou loteria (que é aleatória). Nenhum desses mecanismos garante que os bens cheguem aos consumidores que mais os valorizam, gerando uma ineficiência alocativa adicional que amplia a perda de peso morto para além do triângulo padrão.

### Preço mínimo (piso de preço)

Quando o governo estabelece um preço mínimo \(\underline{p} > p^*\), a quantidade ofertada excede a quantidade demandada, gerando **excedente**:

\[
\text{Excedente} = S(\underline{p}) - X(\underline{p}) > 0
\]

O piso de preço também gera perda de peso morto, por simetria com o teto: trocas mutuamente vantajosas que ocorreriam a preços entre o equilíbrio e o piso são impedidas. O excedente de produção que se acumula precisa ser absorvido de alguma forma — seja por estoques governamentais (como ocorre com a PGPM para grãos no Brasil), destruição (como nos programas de sustentação do preço do leite na União Europeia nos anos 1980), ou exportação subsidiada.

!!! tip "Exemplos de controles de preços"
    - **Preço máximo**: controle de aluguéis (Lei do Inquilinato, quando impõe reajustes abaixo da inflação), tabelamento de medicamentos (CMED), congelamento de preços (como no Plano Cruzado, 1986).
    - **Preço mínimo**: salário mínimo, preços mínimos agrícolas (PGPM — Política de Garantia de Preços Mínimos no Brasil), que para produtos como arroz e milho podem efetivamente sustentar preços acima do equilíbrio em períodos de safra abundante.

!!! box-brasil "Box Brasil 13.1 — O Plano Cruzado e os limites do tabelamento"
    Em fevereiro de 1986, o governo brasileiro lançou o Plano Cruzado, que impôs um congelamento generalizado de preços como estratégia anti-inflacionária. A inflação, que acumulava cerca de 235% em 12 meses (IGP-DI/FGV), caiu abruptamente para próximo de zero nos meses seguintes.

    No entanto, os efeitos colaterais ilustram perfeitamente a análise de preços máximos:

    - **Escassez generalizada**: com os preços congelados abaixo do equilíbrio, a quantidade demandada superou a ofertada. Prateleiras de supermercados ficaram vazias, especialmente para carne bovina e leite.
    - **Mercado paralelo (ágio)**: produtores exigiam "ágio" para vender a preços acima do tabelado, sinalizando que o preço de equilíbrio de mercado era superior ao teto imposto.
    - **Deterioração da qualidade**: firmas reduziram a qualidade dos produtos ou alteraram embalagens para manter margens — uma forma de ajuste não-preço que o modelo básico não captura.
    - **Perda de peso morto**: a redução na quantidade transacionada gerou ineficiência alocativa substancial.

    O episódio é uma das ilustrações mais dramáticas, na história econômica brasileira, de que tabelamentos abaixo do preço de equilíbrio geram escassez e distorções — exatamente como prevê a teoria.

Alterne entre preço máximo (teto) e preço mínimo (piso) e ajuste o nível do preço controlado para observar a escassez ou excedente criados, a variação nos excedentes do consumidor e do produtor, e a perda de peso morto resultante.

<iframe src="../graficos/cap13/controles-precos.html" title="Figura 13.3 — Controles de preços: teto e piso" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 13.3 — Controles de preços: teto e piso.** Alterne entre preço máximo e mínimo e ajuste o nível do preço controlado para observar escassez ou excedente, variações nos excedentes e a perda de peso morto.
</div>

??? exercicio-resolvido "Exercício Resolvido 13.2 — Preço máximo e escassez"
    **Enunciado.** No mercado de um bem, \(Q_D = 500 - 10p\) e \(Q_S = 20p - 100\). O governo fixa um preço máximo \(\bar{p} = 15\). (a) Encontre o equilíbrio livre. (b) Calcule a escassez, o novo EC e EP, e a PPM.

    ---

    **(a)** Equilíbrio livre:

    \[
    500 - 10p = 20p - 100 \implies 600 = 30p \implies p^* = 20, \quad Q^* = 300
    \]

    **(b)** Com \(\bar{p} = 15 < 20\):

    \[
    Q_D(15) = 500 - 150 = 350, \quad Q_S(15) = 300 - 100 = 200
    \]

    Escassez: \(350 - 200 = 150\) unidades.

    A quantidade efetivamente transacionada é \(Q_t = \min(Q_D, Q_S) = 200\).

    Usando a demanda inversa \(p_D = 50 - Q/10\) e a oferta inversa \(p_S = 5 + Q/20\):

    Sem intervenção: \(EC_0 = \frac{1}{2}(50 - 20)(300) = 4.500\) e \(EP_0 = \frac{1}{2}(20 - 5)(300) = 2.250\). Portanto \(W_0 = 4.500 + 2.250 = 6.750\).

    Com teto e racionamento eficiente (os 200 consumidores com maior disposição a pagar obtêm o bem):

    O \(EC_1\) é o trapézio entre a curva de demanda e o preço \(\bar{p} = 15\), de \(Q = 0\) a \(Q = 200\). A demanda inversa vai de \(p_D(0) = 50\) a \(p_D(200) = 30\):

    \[
    EC_1 = \frac{1}{2}(50 - 15 + 30 - 15) \times 200 = \frac{1}{2}(35 + 15) \times 200 = 5.000
    \]

    O \(EP_1\) é o triângulo entre \(\bar{p} = 15\) e a curva de oferta, de \(Q = 0\) a \(Q = 200\):

    \[
    EP_1 = \frac{1}{2}(15 - 5) \times 200 = 1.000
    \]

    Portanto \(W_1 = 5.000 + 1.000 = 6.000\), e a perda de peso morto é:

    \[
    PPM = W_0 - W_1 = 6.750 - 6.000 = 750
    \]

    Isso coincide com o triângulo entre as curvas de demanda e oferta, da quantidade com teto à quantidade de equilíbrio:

    \[
    PPM = \frac{1}{2}[p_D(200) - p_S(200)] \times (Q^* - Q_t) = \frac{1}{2}(30 - 15)(100) = 750
    \]

    **Resultado:** Com racionamento eficiente, a PPM é **750**, correspondente ao triângulo entre as curvas de demanda e oferta, da quantidade com teto (200) à quantidade de equilíbrio (300).

!!! box-mundo "Box Mundo 13.2 — Controle de aluguéis em Nova York e Estocolmo: décadas de evidência sobre escassez habitacional"

    **Contexto:** O controle de aluguéis é um dos exemplos mais estudados de preço máximo. Nova York mantém alguma forma de regulação de aluguéis desde 1943 (*rent stabilization* e *rent control*), e Estocolmo opera com um sistema de aluguéis regulados (*bruksvärdessystemet*) desde 1942. Ambas as cidades oferecem evidência empírica robusta sobre os efeitos de longo prazo dos tetos de preço no mercado imobiliário.

    **Dados:** Em Nova York, Glaeser e Luttmer (2003, *Quarterly Journal of Economics*) estimaram que a regulação de aluguéis gerava uma **perda de peso morto alocativa** significativa: apartamentos regulados eram frequentemente ocupados por inquilinos que os valorizavam menos do que outros dispostos a pagar mais, resultando em *misallocation* que custava cerca de US$ 500 milhões/ano (em dólares de 1998). Diamond, McQuade e Qian (2019, *American Economic Review*) encontraram que o *rent control* em San Francisco reduziu a oferta de imóveis para aluguel em 15% à medida que proprietários convertiam unidades para condomínios ou as retiravam do mercado. Na Suécia, a fila de espera para um apartamento regulado em Estocolmo ultrapassa **20 anos** em bairros centrais (dados do *Bostadsförmedlingen*, 2023), gerando um mercado negro de contratos de segunda mão e incentivando trocas ineficientes — efeitos colaterais previstos pelo modelo de preço máximo com racionamento não-preço.

    **Análise:** O modelo de preço máximo da Seção 13.10 prevê escassez, deterioração da qualidade e surgimento de mecanismos alternativos de alocação. As evidências de Nova York e Estocolmo confirmam todas essas previsões: escassez crônica, filas longuíssimas, mercados paralelos e subinvestimento em manutenção. O caso sueco é particularmente instrutivo porque o sistema persiste há oito décadas, permitindo observar os efeitos de longuíssimo prazo: a oferta de moradia para aluguel é significativamente menor do que seria em um mercado livre, e a mobilidade residencial é reduzida (inquilinos não abandonam apartamentos regulados mesmo quando sua situação muda).

    **Fonte:** Glaeser, E. & Luttmer, E. (2003). "The Misallocation of Housing Under Rent Control". *QJE*, 118(4); Diamond, R., McQuade, T. & Qian, F. (2019). "The Effects of Rent Control Expansion on Tenants, Landlords, and Inequality". *AER*, 109(9); Bostadsförmedlingen Stockholm, Relatório Anual 2023.

Os controles de preços representam uma intervenção direta e explícita no mecanismo de mercado. Outra forma de intervenção, igualmente importante mas mais sutil, é a tributação — tema que analisamos a seguir.

---

## 13.11 Incidência Tributária: Quem Realmente Paga o Imposto?

Outra forma de intervenção, onipresente em qualquer economia moderna, é a **tributação** — e aqui a microeconomia guarda uma de suas maiores surpresas. Quando o governo institui um imposto sobre um bem, quem de fato arca com o ônus? O senso comum responde com confiança: quem paga é quem assina o cheque — o vendedor ou o comprador, conforme a legislação. Pois bem: o senso comum está redondamente enganado. A análise econômica revela que a incidência efetiva do tributo independe completamente do lado legal: ela é determinada pelas elasticidades relativas de oferta e demanda. Esse resultado — um dos mais elegantes e contraintuitivos da microeconomia, capaz de desarmar argumentos em qualquer debate sobre reforma tributária — tem implicações profundas para a formulação de políticas.

A análise formal da incidência tributária tem raízes na obra de A. C. Pigou (*The Economics of Welfare*, 1920), mas foi sistematizada em seu formato moderno por Arnold Harberger (1962), cujo "triângulo de Harberger" se tornou sinônimo de perda de peso morto tributária.

### Imposto por unidade

Considere um imposto específico de \(t\) reais por unidade vendida. No equilíbrio com imposto, o preço pago pelo consumidor (\(p_c\)) e o preço recebido pelo produtor (\(p_p\)) diferem exatamente pelo valor do imposto:

\[
p_c = p_p + t
\label{eq:13.15} \tag{13.15} \]

!!! definition "Cunha tributária"
    A **cunha tributária** (*tax wedge*) é a diferença entre o preço pago pelo consumidor (\(p_c\)) e o preço recebido pelo produtor (\(p_p\)) decorrente de um imposto. Para um imposto específico de \(t\) por unidade, a cunha é exatamente \(p_c - p_p = t\). A cunha tributária é a medida fundamental do efeito distorcivo do imposto: quanto maior a cunha, maior a redução na quantidade transacionada e maior a perda de peso morto.

Essa "cunha tributária" entre o preço de compra e o preço de venda é a essência do efeito do imposto. O novo equilíbrio satisfaz:

\[
X(p_c) = S(p_p) = S(p_c - t)
\label{eq:13.16} \tag{13.16} \]

A equação $\eqref{eq:13.16}$ mostra que o imposto reduz a quantidade transacionada: ao elevar o preço para o consumidor e reduzi-lo para o produtor, o imposto desencoraja tanto a compra quanto a venda nas margens, eliminando trocas que seriam mutuamente vantajosas na ausência do tributo.

!!! theorem "Teorema: Incidência tributária e elasticidades"
    A divisão da carga tributária entre consumidores e produtores depende das elasticidades relativas de oferta e demanda. A fração do imposto absorvida pelo consumidor é:

    \[
    \frac{dp_c}{dt} = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|}
    \]

    e a fração absorvida pelo produtor é:

    \[
    \frac{-dp_p}{dt} = \frac{|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}
    \]

    onde \(\varepsilon_S\) é a elasticidade-preço da oferta e \(|\varepsilon_D|\) é o valor absoluto da elasticidade-preço da demanda.

!!! proof "Demonstração"
    Partimos da condição de equilíbrio com imposto: \(X(p_c) = S(p_c - t)\). Diferenciando em relação a \(t\):

    \[
    \frac{dX}{dp_c} \cdot \frac{dp_c}{dt} = \frac{dS}{dp_p} \cdot \left( \frac{dp_c}{dt} - 1 \right)
    \]

    Denotando \(X' = dX/dp_c\) e \(S' = dS/dp_p\):

    \[
    X' \cdot \frac{dp_c}{dt} = S' \cdot \frac{dp_c}{dt} - S'
    \]

    \[
    \frac{dp_c}{dt} (X' - S') = -S'
    \]

    \[
    \frac{dp_c}{dt} = \frac{-S'}{X' - S'} = \frac{S'}{S' - X'}
    \]

    Multiplicando numerador e denominador por \(p/Q\):

    \[
    \frac{dp_c}{dt} = \frac{S' \cdot (p/Q)}{S' \cdot (p/Q) - X' \cdot (p/Q)} = \frac{\varepsilon_S}{\varepsilon_S - \varepsilon_D} = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|}
    \]

    onde usamos \(\varepsilon_D < 0\), logo \(-\varepsilon_D = |\varepsilon_D|\).

    Para o produtor: \(p_p = p_c - t\), então:

    \[
    \frac{dp_p}{dt} = \frac{dp_c}{dt} - 1 = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|} - 1 = \frac{-|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}
    \]

    Portanto, \(\frac{-dp_p}{dt} = \frac{|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}\). \(\blacksquare\)

**Casos-limite:**

A intuição por trás desses resultados é simples e poderosa: o lado mais inelástico do mercado — aquele que tem menos possibilidade de "fugir" do imposto — arca com a maior parcela do ônus. Os quatro casos-limite a seguir ilustram essa lógica em sua forma mais pura.

- Se a demanda é perfeitamente inelástica (\(|\varepsilon_D| = 0\)): o consumidor absorve 100% do imposto. Ele não pode reduzir o consumo, e todo o imposto é repassado ao preço. Exemplo: medicamentos essenciais sem substitutos (insulina para diabéticos).
- Se a oferta é perfeitamente inelástica (\(\varepsilon_S = 0\)): o produtor absorve 100% do imposto. Ele não pode reduzir a oferta, e o preço ao consumidor não se altera. Exemplo: imposto sobre a terra (que tem oferta fixa), como argumentou Henry George no século XIX.
- Se a demanda é perfeitamente elástica (\(|\varepsilon_D| \to \infty\)): o produtor absorve 100%. Qualquer tentativa de repassar o imposto ao preço levaria a uma queda total na demanda. Exemplo: mercados de commodities homogêneas com substitutos perfeitos.
- Se a oferta é perfeitamente elástica (\(\varepsilon_S \to \infty\)): o consumidor absorve 100%. Os produtores simplesmente saem do mercado se o preço cair, forçando todo o ajuste sobre os compradores. Exemplo: indústria de custos constantes no longo prazo.

!!! warning "Erro comum: confundir incidência legal com incidência econômica"
    Um dos erros mais frequentes em provas e trabalhos é afirmar que "se o imposto é cobrado do vendedor, o vendedor paga" ou que "tributar empresas protege o consumidor". A análise formal demonstra que a **incidência econômica independe completamente do lado legal**: a divisão da carga é determinada exclusivamente pelas elasticidades relativas de oferta e demanda. Mudar quem assina a guia de recolhimento apenas desloca a curva que se move (oferta, se o imposto recai sobre o vendedor; demanda, se sobre o comprador), mas o resultado final — preço ao consumidor, preço ao produtor e quantidade transacionada — é idêntico. Esse resultado é demonstrado formalmente no teorema acima e verificado no gráfico interativo da Figura 13.4. Na prova da ANPEC, esse ponto é recorrente (veja a questão ANPEC 2017, item 1).

!!! note "Irrelevância do lado legal"
    A incidência econômica do imposto independe de quem tem a obrigação legal de recolhê-lo. Seja o imposto cobrado do vendedor ou do comprador, a divisão da carga é determinada pelas elasticidades. Esse resultado, embora matematicamente simples, é frequentemente ignorado no debate público: legisladores tendem a supor que "tributar as empresas" protege o consumidor, quando na verdade a carga é repassada conforme as elasticidades. A reforma tributária brasileira (IBS/CBS), ao substituir tributos cumulativos por um IVA não cumulativo, altera a eficiência da arrecadação mas não necessariamente a incidência final — que continua determinada pelas forças de mercado.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quem realmente paga o imposto não é quem o governo manda pagar — é quem tem menos flexibilidade para escapar dele.

    **Pense assim:** Quando o governo aumenta o ICMS da gasolina e cobra do posto, o posto repassa quase tudo ao consumidor no preço da bomba. Por quê? Porque o motorista *precisa* de gasolina (demanda inelástica) e não tem muita alternativa, enquanto o posto pode ajustar a oferta. O lado mais "preso" ao mercado é quem absorve a maior fatia do imposto, independentemente de quem assina a guia de recolhimento.

    **Por que isso importa:** Esse princípio é central para avaliar reformas tributárias no Brasil — saber quem de fato arca com o ônus de cada tributo é essencial para analisar impactos distributivos.

!!! example "Incidência tributária no Brasil: ICMS sobre combustíveis"
    Até 2022, o ICMS sobre combustíveis no Brasil era cobrado *ad valorem* e variava entre estados, com alíquotas efetivas de 25% a 34% sobre a gasolina. A Lei Complementar 192/2022 unificou o ICMS em valor fixo por litro. Como a demanda de combustíveis é relativamente inelástica no curto prazo (\(|\varepsilon_D| \approx 0{,}1\) a \(0{,}3\), segundo estimativas do [IPEA](https://www.ipea.gov.br)) e a oferta de derivados é mais elástica, o modelo prevê que a maior parte da carga tributária recaia sobre os consumidores — o que é consistente com a evidência empírica de que variações no ICMS são quase integralmente repassadas aos preços na bomba ([ANP](https://www.gov.br/anp), Boletim de Preços).

!!! box-brasil "🇧🇷 Box Brasil 13.3 — Reforma Tributária de 2023: IBS/CBS e a racionalização da incidência"

    **Contexto:** A Emenda Constitucional n.º 132/2023 e a Lei Complementar n.º 214/2025 instituíram a maior reforma tributária sobre o consumo da história brasileira, substituindo cinco tributos — PIS, Cofins, IPI (federais), ICMS (estadual) e ISS (municipal) — por dois: o **IBS** (Imposto sobre Bens e Serviços, subnacional) e a **CBS** (Contribuição sobre Bens e Serviços, federal), ambos operando como um IVA (Imposto sobre Valor Agregado) dual e não cumulativo. A alíquota de referência combinada foi estimada entre 26% e 28%, com transição gradual de 2026 a 2033.

    **Dados:** O sistema anterior era marcado pela cumulatividade (tributo sobre tributo), guerra fiscal entre estados (incentivos de ICMS), e complexidade administrativa — o Brasil gastava em média 1.501 horas/ano em compliance tributário, segundo o *Doing Business* do Banco Mundial (2020), o pior desempenho do mundo. Estimativas do Ministério da Fazenda e do IPEA indicam que a reforma pode elevar o PIB em 2,4% a 12% no longo prazo, via eliminação de distorções alocativas. A não cumulatividade plena elimina o efeito cascata que encarecia insumos intermediários e penalizava cadeias produtivas longas (indústria, construção).

    **Análise:** Pela ótica da incidência tributária (Seção 13.11), a reforma altera a **eficiência** da arrecadação sem necessariamente mudar a **incidência final** — que continua determinada pelas elasticidades de oferta e demanda. Porém, ao eliminar a cumulatividade, a reforma reduz a **cunha tributária efetiva** sobre bens com cadeias produtivas longas, redistribuindo a carga entre setores: serviços (cadeias curtas, baixo uso de insumos) tendem a ter aumento de carga, enquanto a indústria (cadeias longas) tende a ter alívio. A alíquota reduzida para saúde, educação e alimentos da cesta básica (com cashback para famílias de baixa renda) é uma tentativa de mitigar impactos regressivos — reconhecendo que, para bens de demanda inelástica consumidos proporcionalmente mais pelos pobres, a carga econômica recai desproporcionalmente sobre eles.

    **Para refletir:** Se a incidência econômica independe da incidência legal (Teorema da Seção 13.11), por que a reforma tributária — que muda a *estrutura* legal dos tributos — pode ter efeitos reais sobre eficiência e distribuição? A resposta está na eliminação de distorções: cumulatividade, guerra fiscal e complexidade administrativa criam perdas de peso morto que a reforma reduz, mesmo sem alterar quem efetivamente paga.

!!! box-mundo "Box Mundo 13.3 — Quem paga o imposto corporativo? Evidência de países da OCDE sobre incidência capital vs. trabalho"

    **Contexto:** A tributação sobre o lucro das empresas (*corporate income tax*) é frequentemente apresentada no debate público como um imposto "sobre os ricos" ou "sobre o capital". Mas a análise de incidência da Seção 13.11 nos ensina que a incidência legal (quem recolhe) pode diferir radicalmente da incidência econômica (quem efetivamente arca com o ônus). No caso do imposto corporativo, a questão é particularmente complexa: o ônus pode recair sobre os acionistas (via menor retorno ao capital), sobre os trabalhadores (via salários menores) ou sobre os consumidores (via preços mais altos).

    **Dados:** Fuest, Peichl e Siegloch (2018, *American Economic Review*) exploram reformas tributárias municipais na Alemanha entre 1993 e 2012, utilizando a variação exógena nas alíquotas locais do imposto corporativo (*Gewerbesteuer*). Seus resultados indicam que **51% do ônus do imposto corporativo é transferido para os trabalhadores** na forma de salários mais baixos, com efeito mais pronunciado sobre trabalhadores jovens, de baixa qualificação e mulheres. Nos Estados Unidos, análises do *Congressional Budget Office* (CBO, 2024) distribuem a incidência do *corporate income tax* assumindo que 75% recai sobre os donos de capital e 25% sobre o trabalho — mas reconhecem que a literatura empírica sugere fatias maiores para o trabalho em economias abertas. Dados da OCDE (*Revenue Statistics*, 2023) mostram que a alíquota média do imposto corporativo nos países membros caiu de 32,3% em 2000 para 23,5% em 2023, refletindo a competição fiscal entre países para atrair capital — um fenômeno que a teoria prevê quando a oferta de capital é elástica (móvel internacionalmente).

    **Análise:** A aplicação direta do teorema de incidência deste capítulo esclarece o resultado: em uma economia aberta, o capital é relativamente móvel entre países (oferta elástica), enquanto o trabalho é relativamente imóvel (oferta inelástica). Pela lógica da equação de incidência, o fator mais inelástico — o trabalho — absorve a maior parcela do ônus tributário. Isso explica por que a competição fiscal reduz alíquotas corporativas (os países tentam reter capital elástico) e por que os trabalhadores podem ser os maiores perdedores de impostos ostensivamente cobrados "das empresas". O resultado é contraintuitivo e tem implicações profundas para o desenho de sistemas tributários.

    **Fonte:** Fuest, C., Peichl, A. & Siegloch, S. (2018). "Do Higher Corporate Taxes Reduce Wages? Micro Evidence from Germany". *AER*, 108(2), 393–418; CBO (2024), *The Distribution of Household Income*; OECD, *Revenue Statistics 2023*.

Visualize como um imposto por unidade afeta o equilíbrio de mercado. Ajuste o valor do imposto e as elasticidades de oferta e demanda para observar a divisão da carga tributária entre comprador e vendedor, a receita do governo e a perda de peso morto. Alterne entre imposto sobre o vendedor e sobre o comprador para verificar a irrelevância do lado legal.

<iframe src="../graficos/cap13/incidencia-tributaria.html" title="Figura 13.4 — Incidência tributária" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 13.4 — Incidência tributária.** Ajuste o valor do imposto e as elasticidades de oferta e demanda para observar a divisão da carga tributária, a receita do governo e a perda de peso morto.
</div>

??? exercicio-resolvido "Exercício Resolvido 13.3 — Equilíbrio, excedentes e imposto"
    **Enunciado.** Em um mercado competitivo, a demanda é \(Q_D = 120 - 2p\) e a oferta é \(Q_S = 3p - 30\). (a) Encontre o equilíbrio. (b) Calcule EC e EP. (c) O governo impõe um imposto de \(t = 10\) por unidade sobre os vendedores. Encontre o novo equilíbrio, a receita do governo e a PPM.

    ---

    **(a)** Equilíbrio: \(Q_D = Q_S\).

    \[
    120 - 2p = 3p - 30 \implies 150 = 5p \implies p^* = 30, \quad Q^* = 120 - 60 = 60
    \]

    **(b)** A demanda inversa é \(p_D = 60 - Q/2\) e a oferta inversa é \(p_S = 10 + Q/3\).

    \[
    EC = \frac{1}{2}(60 - 30) \times 60 = \frac{1}{2} \times 30 \times 60 = 900
    \]

    \[
    EP = \frac{1}{2}(30 - 10) \times 60 = \frac{1}{2} \times 20 \times 60 = 600
    \]

    **(c)** Com imposto, \(p_c = p_p + 10\). No equilíbrio:

    \[
    120 - 2p_c = 3(p_c - 10) - 30 \implies 120 - 2p_c = 3p_c - 60 \implies 180 = 5p_c \implies p_c = 36
    \]

    \[
    p_p = 36 - 10 = 26, \quad Q_t = 120 - 72 = 48
    \]

    O consumidor paga R\$ 6 a mais (de 30 para 36) e o produtor recebe R\$ 4 a menos (de 30 para 26), consistente com \(\varepsilon_S / (\varepsilon_S + |\varepsilon_D|) = (3 \cdot 30/60) / (1{,}5 + 1{,}0) = 0{,}6\).

    Receita do governo: \(R = t \times Q_t = 10 \times 48 = 480\).

    PPM: \(\frac{1}{2} \times t \times \Delta Q = \frac{1}{2} \times 10 \times 12 = 60\).

    **Verificação:** \(\Delta EC = 900 - \frac{1}{2}(60-36)(48) = 900 - 576 = 324\). \(\Delta EP = 600 - \frac{1}{2}(26-10)(48) = 600 - 384 = 216\). Perda total = \(324 + 216 = 540 = R + PPM = 480 + 60\). ✓

---

## 13.12 Efeitos de Políticas sobre EC, EP e PPM

Teto de preço, piso de preço, imposto, subsídio, tarifa — o governo tem um arsenal inteiro de intervenções. Mas qual custa mais para a sociedade? A análise de bem-estar desenvolvida nas seções anteriores pode ser sintetizada em um quadro comparativo que resume os efeitos das principais políticas de intervenção sobre os excedentes e o bem-estar total. A [Tabela 13.2](#tabela-13-2) apresenta essa síntese. Observe que todas as intervenções geram perda de peso morto positiva — um resultado que decorre diretamente do teorema de eficiência do equilíbrio competitivo. A diferença entre as políticas reside na forma como redistribuem os excedentes entre consumidores, produtores e governo.

<a id="tabela-13-2"></a>

| Política | Efeito sobre EC | Efeito sobre EP | Receita/Gasto Gov. | PPM |
|---|---|---|---|---|
| **Imposto por unidade** (\(t\)) | Diminui: \(-\Delta EC\) | Diminui: \(-\Delta EP\) | Receita: \(R = t \cdot Q_t\) | \(PPM = \frac{1}{2} t \cdot \Delta Q > 0\) |
| **Subsídio por unidade** (\(s\)) | Aumenta | Aumenta | Gasto: \(G = s \cdot Q_s\) | \(PPM = \frac{1}{2} s \cdot \Delta Q > 0\) |
| **Preço máximo** (\(\bar{p} < p^*\)) | Ambíguo (↑ preço menor, ↓ quantidade) | Diminui | — | \(PPM > 0\) (escassez) |
| **Preço mínimo** (\(\underline{p} > p^*\)) | Diminui | Ambíguo (↑ preço maior, ↓ quantidade vendida) | Custo se gov. compra excedente | \(PPM > 0\) (excesso) |

<div class="caption-obj" markdown>
**Tabela 13.2 — Efeitos de políticas sobre EC, EP e PPM.**
</div>

Um resultado que merece destaque na Tabela 13.2 é que o efeito do preço máximo sobre o EC é ambíguo: os consumidores que conseguem comprar o bem pagam menos (ganho), mas a quantidade disponível é menor e o racionamento pode impedir que os consumidores com maior valorização obtenham o bem (perda). O efeito líquido depende da magnitude relativa dessas forças e do mecanismo de racionamento adotado. Analogamente, o preço mínimo tem efeito ambíguo sobre o EP dos produtores.

!!! note "Perda de peso morto"
    A perda de peso morto (PPM), também chamada de *deadweight loss* ou triângulo de Harberger, representa a perda de bem-estar social que não é capturada por nenhum agente — nem consumidores, nem produtores, nem governo. Para um imposto com curvas lineares:

    \[
    PPM = \frac{1}{2} \cdot t^2 \cdot \frac{|\varepsilon_D| \cdot \varepsilon_S}{|\varepsilon_D| + \varepsilon_S} \cdot \frac{Q_0}{p_0}
    \]

    Esta fórmula, devida a Harberger (1964), é uma das mais utilizadas em economia aplicada. Ela revela que a PPM depende do *quadrado* do imposto, das elasticidades e da escala do mercado. O termo \(\frac{|\varepsilon_D| \cdot \varepsilon_S}{|\varepsilon_D| + \varepsilon_S}\) é uma "média harmônica" das elasticidades: a PPM é menor quando pelo menos um dos lados do mercado é inelástico (pois a quantidade transacionada se reduz pouco). Essa é a base teórica da regra de Ramsey (1927) para tributação ótima: para minimizar a PPM total, o governo deve tributar mais pesadamente os bens com demanda ou oferta mais inelástica.

!!! idea "Intuição Econômica"
    **Em uma frase:** A perda de peso morto é o valor das trocas que deixaram de acontecer — um prejuízo que ninguém embolsa.

    **Pense assim:** Imagine que um imposto sobre o cafezinho faz o preço subir de R$ 5 para R$ 6. Alguns clientes que compravam a R$ 5 desistem, e o dono do café perde essas vendas. O governo arrecada sobre os cafés que ainda são vendidos, mas o valor das transações que sumiram — aquele cafezinho que o cliente queria e o vendedor podia oferecer — evaporou. Esse "triângulo" de valor perdido é a perda de peso morto.

    **Por que isso importa:** A fórmula mostra que a perda de peso morto cresce com o *quadrado* do imposto — dobrar o imposto quadruplica a ineficiência — o que fundamenta a recomendação de bases tributárias amplas com alíquotas baixas, como a reforma do IBS/CBS no Brasil.

---

!!! box-brasil "Box Brasil 13.2 — Soja brasileira e o leiloeiro global"
    O Brasil é o maior produtor e exportador mundial de soja, com safra recorde de aproximadamente 155 milhões de toneladas na safra 2023/24 ([CONAB](https://www.conab.gov.br)). Apesar da escala gigantesca, o Brasil atua essencialmente como **tomador de preços** (*price-taker*) no mercado internacional, cujos preços são formados na Bolsa de Chicago (CBOT).

    **Formação de preços internos:**

    O preço doméstico da soja é determinado pela paridade de exportação:

    \[
    p_{\text{interno}} = p_{\text{CBOT}} \times e + \text{prêmio de exportação} - \text{custos logísticos}
    \]

    onde \(e\) é a taxa de câmbio (R\$/US\$). O indicador CEPEA/ESALQ (Centro de Estudos Avançados em Economia Aplicada, da ESALQ/USP) é a principal referência de preços domésticos, calculado diariamente com base em transações efetivas no mercado físico.

    **Elasticidades e estática comparativa:**

    Estudos do IPEA e da CONAB estimam que a elasticidade-preço da oferta de soja no Brasil no longo prazo situa-se entre 0,3 e 0,8, refletindo as possibilidades de expansão de área (conversão de pastagens degradadas) e intensificação tecnológica. A demanda global é relativamente inelástica no curto prazo, dado o uso da soja como insumo essencial na ração animal e na indústria de óleos.

    **Implicações para o modelo competitivo:**

    O mercado de soja é um caso quase ideal de concorrência perfeita: produto homogêneo, milhares de produtores, informação transparente sobre preços (CBOT em tempo real), e livre entrada/saída. A PGPM (Política de Garantia de Preços Mínimos) atua como um piso de preço, embora nos últimos anos os preços internacionais tenham se mantido muito acima dos preços mínimos fixados pelo governo, tornando a política pouco efetiva neste mercado específico.

    **Dados ilustrativos (CEPEA/ESALQ e CONAB):**

    | Safra | Produção (milhões t) | Preço médio anual (R\$/saca) | Exportação (milhões t) |
    |---|---|---|---|
    | 2019/20 | 124,8 | 89,50 | 82,9 |
    | 2020/21 | 135,9 | 155,30 | 86,1 |
    | 2021/22 | 125,5 | 183,60 | 78,7 |
    | 2022/23 | 154,6 | 142,80 | 97,3 |
    | 2023/24 | 155,3 | 120,50 | 101,2 |

    Observe a estática comparativa em ação: na safra 2020/21, choques positivos de demanda global (recuperação pós-pandemia, recomposição de estoques chineses) combinados com câmbio depreciado elevaram drasticamente o preço interno. Nas safras seguintes, a resposta da oferta (expansão de área) gradualmente pressionou os preços para baixo — uma ilustração da dinâmica de ajuste de longo prazo em indústria de custos crescentes.

O leiloeiro invisível do título não é tão fictício assim: em cada feira, em cada bolsa de valores, em cada clique de compra online, preços estão sendo anunciados, ajustados e reanunciados até que oferta e demanda se encontrem. Vimos neste capítulo que esse mecanismo descentralizado, quando livre de interferências, produz um resultado que ninguém conseguiria melhorar — e que toda interferência tem seu preço, medido em perda de peso morto.

*Mercados em equilíbrio parcial — um de cada vez. No próximo capítulo, abrimos todas as portas ao mesmo tempo: equilíbrio geral.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A incidência econômica de um imposto (quem realmente paga) depende:"
    - (a) Exclusivamente de quem o governo designa como pagador legal
    - (b) Das elasticidades relativas de oferta e demanda — o lado mais inelástico suporta a maior parcela
    - (c) Apenas do valor absoluto do imposto
    - (d) Da eficiência do sistema de arrecadação

    ??? success "Resposta"
        **(b)** A incidência econômica independe da incidência legal (quem recolhe o tributo). O ônus recai mais sobre o lado do mercado com menor elasticidade, pois esse lado tem menor capacidade de ajustar quantidade em resposta ao preço. Se a oferta é perfeitamente elástica, o consumidor paga 100% do imposto; se a demanda é perfeitamente inelástica, idem.

??? question "2. O peso morto (deadweight loss) de um imposto por unidade $t$ em um mercado competitivo é aproximadamente:"
    - (a) Proporcional a $t$ — dobrar o imposto dobra o peso morto
    - (b) Proporcional a $t^2$ — dobrar o imposto quadruplica o peso morto
    - (c) Constante independentemente de $t$
    - (d) Negativo quando a demanda é inelástica

    ??? success "Resposta"
        **(b)** O peso morto é a área do triângulo de Harberger, aproximadamente $\frac{1}{2} t \cdot \Delta q$. Como $\Delta q$ é proporcional a $t$, o peso morto é proporcional a $t^2$. Isso é a 'regra do quadrado': dobrar a alíquota quadruplica a perda de eficiência. A alternativa (a) subestima o dano de impostos altos; (d) é incorreta — o peso morto é sempre não negativo.

??? question "3. A regra de Ramsey para tributação ótima prescreve que, para minimizar o peso morto total:"
    - (a) Todos os bens devem ser taxados com a mesma alíquota
    - (b) Bens com demanda mais inelástica devem receber alíquotas mais altas (regra da elasticidade inversa)
    - (c) Bens de luxo devem ser isentos de impostos
    - (d) Apenas bens com externalidades negativas devem ser taxados

    ??? success "Resposta"
        **(b)** A regra de Ramsey mostra que o peso morto é minimizado quando as alíquotas são proporcionais ao inverso da elasticidade-preço: bens com demanda inelástica suportam alíquotas maiores porque a distorção na quantidade é menor. A alternativa (a) é subótima; (c) pode conflitar com eficiência; (d) descreve tributação corretiva (Pigou), não Ramsey.

??? question "4. Um subsídio a um bem gera peso morto porque:"
    - (a) Reduz a receita do governo, o que é sempre ineficiente
    - (b) Estimula a produção além do nível eficiente — unidades cujo custo marginal excede o benefício marginal são produzidas
    - (c) Transfere renda dos pobres para os ricos
    - (d) Aumenta o preço para o consumidor

    ??? success "Resposta"
        **(b)** Um subsídio reduz o preço efetivo, aumentando a quantidade acima do nível competitivo. As unidades adicionais têm custo social (CMg) superior ao benefício social (disposição a pagar), gerando ineficiência. O peso morto é o triângulo entre as curvas de oferta e demanda, análogo ao do imposto. A alternativa (d) inverte o efeito; (a) confunde custo fiscal com ineficiência.

??? question "5. Se a oferta de um bem é perfeitamente inelástica (vertical), a imposição de um imposto por unidade resulta em:"
    - (a) Peso morto máximo, pois toda a produção é eliminada
    - (b) Nenhum peso morto — o imposto é integralmente absorvido pelo produtor sem distorcer quantidades
    - (c) Peso morto igual à receita tributária
    - (d) Divisão igualitária do ônus entre produtor e consumidor

    ??? success "Resposta"
        **(b)** Com oferta perfeitamente inelástica, a quantidade ofertada não muda com o preço. O imposto é 100% absorvido pelo produtor (preço ao consumidor não muda, preço ao produtor cai em $t$) e não há distorção na alocação, logo peso morto é zero. É um imposto sobre rendas econômicas puras. A alternativa (a) confunde inelasticidade com eliminação da produção.

## 📋 Resumo do Capítulo

- A **demanda de mercado** é obtida pela soma horizontal das demandas individuais, e a **oferta de mercado** pela soma horizontal das curvas de custo marginal das firmas (acima do custo variável médio mínimo). O equilíbrio competitivo ocorre no preço em que quantidade demandada iguala quantidade ofertada.
- No **curtíssimo prazo**, a oferta é perfeitamente inelástica; no **curto prazo**, as firmas ajustam a produção com planta fixa; no **longo prazo**, há livre entrada e saída, levando o preço ao custo médio mínimo e o lucro econômico a zero.
- O **excedente do consumidor** (EC) e o **excedente do produtor** (EP) medem os ganhos de bem-estar das trocas voluntárias. A soma EC + EP é maximizada no equilíbrio competitivo, resultado que fundamenta o Primeiro Teorema do Bem-Estar.
- **Controles de preços** — preços máximos (tetos) e preços mínimos (pisos) — geram, respectivamente, escassez e excedente de oferta, reduzindo o bem-estar total. A perda de peso morto (PPM) mede a ineficiência resultante.
- A **incidência tributária** depende das elasticidades relativas de oferta e demanda, não de quem formalmente recolhe o imposto: o lado mais inelástico do mercado arca com a maior parcela do tributo. A tributação gera uma cunha entre o preço pago pelo consumidor e o recebido pelo produtor, criando perda de peso morto.
- Em **indústrias de custos crescentes**, a curva de oferta de longo prazo tem inclinação positiva, e firmas inframarginais auferem **rendas ricardianas** — lucros econômicos devidos a vantagens de custo, como ocorre na agricultura brasileira com terras de diferentes fertilidades.

## 🔑 Conceitos-Chave

<a id="tabela-13-3"></a>

| Conceito | Definição |
|----------|-----------|
| Demanda de mercado | Soma horizontal das demandas individuais: $X(p) = \sum_i x_i(p)$. |
| Oferta de mercado | Soma horizontal das curvas de CMg das firmas, acima do ponto de fechamento. |
| Equilíbrio competitivo | Preço $p^*$ e quantidade $Q^*$ em que $Q_D(p^*) = Q_S(p^*)$. |
| Excedente do consumidor (EC) | Diferença entre a disposição a pagar e o preço efetivamente pago, somada sobre todas as unidades. |
| Excedente do produtor (EP) | Diferença entre o preço recebido e o custo marginal, somada sobre todas as unidades produzidas. |
| Perda de peso morto (PPM) | Redução do bem-estar total (EC + EP) causada por distorções como impostos, subsídios ou controles de preços. |
| Incidência tributária | Distribuição efetiva do ônus de um imposto entre compradores e vendedores, determinada pelas elasticidades relativas. |
| Preço máximo (teto) | Preço legalmente fixado abaixo do equilíbrio, gerando escassez ($Q_D > Q_S$). |
| Preço mínimo (piso) | Preço legalmente fixado acima do equilíbrio, gerando excedente de oferta ($Q_S > Q_D$). |
| Renda ricardiana | Lucro econômico auferido por firmas com custos inferiores à firma marginal em indústrias de custos crescentes. |

<div class="caption-obj" markdown>
**Tabela 13.3 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-13-1"></a>**Exercício 13.1.** Considere um mercado com 100 consumidores idênticos, cada um com demanda individual \(x_i(p) = 20 - 2p\), e 50 firmas idênticas, cada uma com oferta individual \(s_j(p) = 4p - 10\) (para \(p \geq 2{,}5\)).

(a) Derive a demanda e a oferta de mercado.

(b) Encontre o preço e a quantidade de equilíbrio.

(c) Calcule o excedente do consumidor e o excedente do produtor.

(d) Se o governo impõe um imposto de \(t = 2\) por unidade, encontre o novo equilíbrio, a receita tributária e a perda de peso morto.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-1)

---

<a id="ex-13-2"></a>**Exercício 13.2.** Em um mercado competitivo, a demanda é \(Q_D = 1000 - 50p\) e a oferta é \(Q_S = 25p - 200\).

(a) Encontre o equilíbrio.

(b) Suponha que o governo fixe um preço máximo de \(p = 10\). Calcule a escassez resultante e a perda de peso morto.

(c) Compare graficamente o EC antes e depois do controle de preço.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-2)

---

<a id="ex-13-3"></a>**Exercício 13.3.** Demonstre que, para um imposto *ad valorem* à taxa \(\tau\) (onde o consumidor paga \(p_c = (1 + \tau) p_p\)), a fração do imposto absorvida pelo consumidor também depende das elasticidades relativas de oferta e demanda. Derive a fórmula análoga à do imposto específico.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-3)

---

<a id="ex-13-4"></a>**Exercício 13.4.** Considere uma indústria de custos crescentes com curva de oferta de longo prazo \(p = 10 + 0{,}01Q\). A demanda é \(Q = 2000 - 50p\).

(a) Encontre o equilíbrio de longo prazo.

(b) Calcule o excedente do produtor de longo prazo (renda ricardiana).

(c) Se a demanda se desloca para \(Q' = 2500 - 50p\), encontre o novo equilíbrio e a variação na renda ricardiana.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-4)

---

<a id="ex-13-5"></a>**Exercício 13.5.** No mercado brasileiro de combustíveis, o governo subsidia o diesel em \(s = \text{R\$} 0{,}30\) por litro. Suponha que a demanda de diesel seja relativamente inelástica (\(|\varepsilon_D| = 0{,}3\)) e a oferta seja relativamente elástica (\(\varepsilon_S = 2{,}0\)).

(a) Qual fração do subsídio beneficia o consumidor e qual fração beneficia o produtor?

(b) Discuta as implicações distributivas e de eficiência dessa política, considerando que diesel é um insumo essencial para o transporte de cargas no Brasil.

(c) Calcule a perda de peso morto em termos do subsídio, das elasticidades e do preço e quantidade iniciais.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-5)

---

<a id="ex-13-6"></a>**Exercício 13.6.** Considere um mercado competitivo descrito pelas funções de demanda \(Q_D = 300 - 5p\) e de oferta \(Q_S = 3p - 60\).

(a) Encontre o preço e a quantidade de equilíbrio.

(b) Calcule o excedente do consumidor (EC) e o excedente do produtor (EP) no equilíbrio.

(c) Suponha que o governo introduza um subsídio de \(s = 8\) por unidade ao produtor. Determine o novo preço pago pelo consumidor (\(p_c\)), o preço recebido pelo produtor (\(p_p\)) e a quantidade de equilíbrio.

(d) Calcule o custo total do subsídio para o governo, o novo EC e EP, e a perda de peso morto associada ao subsídio.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-6)

---

<a id="ex-13-7"></a>**Exercício 13.7.** O mercado brasileiro de café orgânico pode ser descrito, em uma safra típica, pelas seguintes funções (preço em R\$/kg, quantidade em milhares de toneladas): demanda \(Q_D = 80 - 0{,}5p\) e oferta \(Q_S = 0{,}3p - 16\).

(a) Encontre o equilíbrio inicial (preço e quantidade) e interprete economicamente.

(b) Um acordo comercial com a União Europeia desloca a demanda de exportação, de modo que a nova demanda é \(Q_D' = 104 - 0{,}5p\). Encontre o novo equilíbrio.

(c) Calcule a variação no excedente do consumidor doméstico e no excedente do produtor em decorrência do choque de demanda.

(d) Discuta qualitativamente como a elasticidade de oferta de curto prazo do café (plantio leva anos para maturar) afeta a magnitude da variação de preço observada no item (b).

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-7)

---

<a id="ex-13-8"></a>**Exercício 13.8.** Em um mercado competitivo, a elasticidade-preço da demanda é \(\varepsilon_D = -0{,}6\) e a elasticidade-preço da oferta é \(\varepsilon_S = 1{,}4\). O preço de equilíbrio inicial é \(p^* = 50\) e a quantidade é \(Q^* = 200\). O governo impõe um imposto específico de \(t = 5\) por unidade.

(a) Calcule a fração do imposto arcada pelo consumidor e a fração arcada pelo produtor, utilizando as fórmulas de incidência baseadas em elasticidades.

(b) Determine o preço pago pelo consumidor (\(p_c\)) e o preço recebido pelo produtor (\(p_p\)) após o imposto.

(c) Assumindo curvas localmente lineares, estime a perda de peso morto (PPM) do imposto. *Dica:* utilize a fórmula \(\text{PPM} = \frac{1}{2} \cdot \frac{|\varepsilon_D| \cdot \varepsilon_S}{|\varepsilon_D| + \varepsilon_S} \cdot \frac{t^2}{p^*} \cdot Q^*\).

(d) Se a elasticidade da demanda fosse \(\varepsilon_D = -2{,}0\) (mantendo tudo o mais constante), como mudariam a incidência e a PPM? Interprete o resultado à luz do princípio de Ramsey.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-8)

---

<a id="ex-13-9"></a>**Exercício 13.9.** O mercado de aluguéis em uma grande cidade brasileira é descrito pelas funções de demanda \(Q_D = 500 - 0{,}2p\) e de oferta \(Q_S = 0{,}3p - 100\) (onde \(p\) é o aluguel mensal em R\$ e \(Q\) é o número de imóveis em milhares).

(a) Encontre o equilíbrio competitivo (preço e quantidade).

(b) A prefeitura impõe um preço máximo (teto) de \(p_{\max} = \text{R\$}\, 1.000\). Calcule a quantidade demandada, a quantidade ofertada e a escassez resultante.

(c) Calcule a perda de peso morto causada pelo teto de preço. Identifique graficamente as áreas correspondentes às transferências de excedente e à ineficiência.

(d) Suponha que, em vez do teto de preço, a prefeitura ofereça uma transferência *lump-sum* (valor fixo) a cada família de baixa renda que aluga imóvel, no montante exato da diferença entre o aluguel de equilíbrio e R\$ 1.000. Compare as duas políticas em termos de: (i) custo para o governo, (ii) quantidade de imóveis alugados, (iii) eficiência (presença ou ausência de PPM) e (iv) equidade distributiva.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-9)

---

<a id="ex-13-10"></a>**Exercício 13.10.** Uma indústria competitiva é composta por dois tipos de firmas no curto prazo. Existem 40 firmas do tipo A, cada uma com custo total \(C_A(q) = 10 + 2q + q^2\), e 60 firmas do tipo B, cada uma com custo total \(C_B(q) = 20 + 4q + 0{,}5q^2\). A demanda de mercado é \(Q_D = 500 - 10p\).

(a) Derive a curva de oferta individual de cada tipo de firma (a partir da condição \(p = CMg\), respeitando o ponto de fechamento \(p \geq CVMe_{\min}\)).

(b) Agregue as ofertas individuais para obter a curva de oferta de mercado de curto prazo. Encontre o preço e a quantidade de equilíbrio.

(c) No equilíbrio, calcule o lucro econômico de cada tipo de firma. Identifique qual tipo obtém renda ricardiana positiva e explique a origem dessa renda.

(d) No longo prazo, suponha que haja livre entrada apenas de firmas do tipo B (a tecnologia do tipo A depende de um fator escasso não replicável). Determine o preço de equilíbrio de longo prazo, o número de firmas do tipo B no mercado e o lucro (renda) de longo prazo das firmas do tipo A.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-10)

---

## 🏆 Vem, ANPEC!


Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2017 — Questão 3"
    Com respeito aos efeitos dos impostos, assinale quais das afirmações abaixo são verdadeiras:

    **(0)** Se as curvas de demanda e oferta do mercado forem lineares, sendo \(p\) o preço do produto e \(t\) um imposto específico, então \(dp/dt = \eta/(\eta - \varepsilon)\), em que \(\eta\) é a elasticidade preço da oferta e \(\varepsilon\) é a elasticidade preço da demanda;

    **(1)** No caso de um imposto específico \(t\), o equilíbrio do mercado será diferente se o imposto for cobrado dos vendedores ou dos compradores;

    **(2)** Se a elasticidade preço da demanda for 0 (zero) e a elasticidade preço da oferta for 1, o custo do imposto específico recairá totalmente sobre os produtores;

    **(3)** O peso morto decorrente da introdução de um imposto específico em um mercado com curvas de oferta e demanda lineares não depende do preço antes da incidência do imposto;

    **(4)** Se as curvas de demanda e oferta forem lineares, a receita fiscal do governo compensa a introdução de um imposto específico e gera um peso morto nulo.

    ??? success "Gabarito"
        **Gabarito oficial: V-F-F-V-F**

        **(0) VERDADEIRO.** Com curvas lineares \(Q_D = a - bp\) e \(Q_S = c + dp\), onde \(\varepsilon = -bp/Q < 0\) e \(\eta = dp/Q > 0\), o imposto gera \(p_c = p_p + t\). No equilíbrio: \(dp_c/dt = d/(b+d)\). Em termos de elasticidades avaliadas no equilíbrio (onde \(Q\) e \(p\) são comuns): \(dp/dt = \eta/(\eta - \varepsilon)\), pois \(\varepsilon < 0\) implica \(\eta - \varepsilon = \eta + |\varepsilon|\).

        **(1) FALSO.** Pela irrelevância do lado legal da incidência, o equilíbrio econômico (preços pagos por consumidores e recebidos por produtores, quantidade transacionada) é idêntico independentemente de sobre quem recai a obrigação legal de recolhimento.

        **(2) FALSO.** Se \(|\varepsilon_D| = 0\) (demanda perfeitamente inelástica), o consumidor absorve 100% do imposto, pois \(dp_c/dt = \eta/(\eta + 0) = 1\). O custo recai integralmente sobre os consumidores, não sobre os produtores.

        **(3) VERDADEIRO.** Com curvas lineares, \(PPM = \frac{1}{2} \cdot \frac{bd}{b+d} \cdot t^2\), onde \(b\) e \(d\) são as inclinações (em valor absoluto) das curvas de demanda e oferta. A fórmula não contém o preço de equilíbrio pré-imposto.

        **(4) FALSO.** A receita fiscal \(R = t \cdot Q_t\) não compensa a perda total de excedentes de consumidores e produtores. A diferença — o peso morto — é estritamente positiva (\(PPM > 0\)) sempre que \(t > 0\) e ambas as curvas têm inclinações finitas.

??? question "ANPEC 2023 — Questão 1"
    Suponha que ao preço de equilíbrio no mercado internacional de petróleo de \$80 dólares o barril, a elasticidade-preço da demanda seja \(-0{,}4\), a elasticidade-preço da oferta seja \(0{,}2\), as quantidades ofertada e demandada sejam de 100 milhões de barris/dia. Suponha ainda que as curvas de demanda e oferta são lineares convencionais. Imagine que um embargo econômico a um produtor mundial cause um deslocamento paralelo da curva de oferta para a esquerda em 30 milhões de barris/dia. Julgue as afirmativas a seguir:

    **(0)** A função de demanda consistente com o preço e a quantidade antes do embargo é \(D_1(p) = 116 - 0{,}2p\).

    **(1)** A função de oferta que é consistente com o equilíbrio antes do embargo é \(S_1(p) = 60 + 0{,}5p\).

    **(2)** A função de oferta após o embargo é \(S_2(p) = 50 + 0{,}25p\).

    **(3)** Após o embargo, o preço de equilíbrio será de \$120 dólares, e a quantidade de equilíbrio será de 80 milhões de barris/dia.

    **(4)** Suponha que, concomitantemente com o embargo, novas tecnologias de energias alternativas sejam incorporadas, reduzindo a demanda global em 20 milhões de barris/dia. Nesse caso, o preço de equilíbrio será menor que o preço antes do embargo e da introdução de novas tecnologias.

    ??? success "Gabarito"
        **Gabarito oficial: F-F-V-V-F**

        **Derivação das curvas.** Com \(p_0 = 80\), \(Q_0 = 100\):

        - Demanda: \(\varepsilon_D = -0{,}4 = (dQ_D/dp)(80/100)\), logo \(dQ_D/dp = -0{,}5\). Assim \(D(p) = a - 0{,}5p\), e \(100 = a - 40 \Rightarrow a = 140\). Portanto \(D_1(p) = 140 - 0{,}5p\).

        - Oferta: \(\varepsilon_S = 0{,}2 = (dQ_S/dp)(80/100)\), logo \(dQ_S/dp = 0{,}25\). Assim \(S(p) = c + 0{,}25p\), e \(100 = c + 20 \Rightarrow c = 80\). Portanto \(S_1(p) = 80 + 0{,}25p\).

        **(0) FALSO.** A demanda correta é \(D_1(p) = 140 - 0{,}5p\), não \(116 - 0{,}2p\).

        **(1) FALSO.** A oferta correta é \(S_1(p) = 80 + 0{,}25p\), não \(60 + 0{,}5p\).

        **(2) VERDADEIRO.** Deslocamento paralelo de 30 milhões para a esquerda: \(S_2(p) = 80 - 30 + 0{,}25p = 50 + 0{,}25p\). ✓

        **(3) VERDADEIRO.** Novo equilíbrio: \(140 - 0{,}5p = 50 + 0{,}25p \Rightarrow 90 = 0{,}75p \Rightarrow p = 120\). \(Q = 140 - 60 = 80\). ✓

        **(4) FALSO.** Com demanda reduzida em 20: \(D_2(p) = 120 - 0{,}5p\). Novo equilíbrio: \(120 - 0{,}5p = 50 + 0{,}25p \Rightarrow 70 = 0{,}75p \Rightarrow p \approx 93{,}3\). Como \(93{,}3 > 80\), o preço é *maior* que o original, não menor.

??? question "ANPEC 2025 — Questão 7"
    Com relação à oferta da indústria, julgue as afirmativas abaixo como verdadeiras ou falsas:

    **(0)** No equilíbrio de curto prazo de uma indústria competitiva todas as empresas têm de obter lucro zero.

    **(1)** No equilíbrio de longo prazo, se não houver barreiras à entrada e à saída, todos os fatores de produção são remunerados a preços de mercado.

    **(2)** Sempre que houver barreiras à entrada causadas por um fator fixo, a indústria vai apresentar lucros positivos no longo prazo.

    **(3)** Caso haja renda econômica em um setor, ela determinará o preço de equilíbrio do setor.

    **(4)** Se não houver barreiras à entrada e à saída, e os custos da indústria forem constantes, a curva de oferta de longo prazo será horizontal, a um preço igual ao custo médio mínimo.

    ??? success "Gabarito"
        **Gabarito oficial: F-V-F-F-V**

        **(0) FALSO.** No curto prazo, o número de firmas é fixo e não há livre entrada/saída. Firmas podem ter lucro positivo, negativo ou zero. A condição de lucro zero é característica do equilíbrio de *longo prazo* com livre entrada.

        **(1) VERDADEIRO.** Com livre entrada e saída, o lucro econômico é zero no longo prazo. Isso implica que todos os fatores de produção — incluindo o capital do empresário — são remunerados exatamente pelo seu custo de oportunidade (preço de mercado).

        **(2) FALSO.** A existência de um fator fixo (por exemplo, terra de qualidade superior) gera renda econômica para o proprietário desse fator. Porém, quando essa renda é adequadamente contabilizada como custo de oportunidade, o lucro econômico da firma é zero. A renda do fator fixo não se confunde com lucro positivo da firma.

        **(3) FALSO.** A causalidade é inversa ao que o item afirma. É o preço de equilíbrio do produto — determinado pela interação de oferta e demanda — que determina a renda econômica dos fatores. Como argumentou Ricardo: "não é porque os aluguéis são altos que o trigo é caro; é porque o trigo é caro que os aluguéis são altos."

        **(4) VERDADEIRO.** Em uma indústria de custos constantes, a entrada de novas firmas não altera os preços dos insumos, de modo que as curvas de custo das firmas individuais permanecem inalteradas. O preço de equilíbrio de longo prazo é \(p = CMe_{\min}\) para qualquer nível de demanda, resultando em uma curva de oferta de longo prazo perfeitamente elástica (horizontal).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Roberts, M. J. & Schlenker, W. (2013). [Identifying Supply and Demand Elasticities of Agricultural Commodities: Implications for the US Ethanol Mandate](https://doi.org/10.1257/aer.103.6.2265). *American Economic Review*, 103(6), 2265–2295."
    **DOI:** [10.1257/aer.103.6.2265](https://doi.org/10.1257/aer.103.6.2265)

    **Contexto.** A estimação de elasticidades de oferta e demanda é central para a análise de equilíbrio parcial, mas enfrenta o clássico problema de identificação: variações observadas em preços e quantidades refletem simultaneamente deslocamentos de oferta e demanda. Roberts e Schlenker enfrentam esse desafio no mercado de commodities agrícolas — exatamente o tipo de mercado competitivo analisado neste capítulo.

    **Metodologia.** Os autores utilizam variáveis instrumentais baseadas em choques climáticos (rendimentos agrícolas exógenos determinados pelo clima) para identificar separadamente as curvas de oferta e demanda de quatro commodities (milho, soja, trigo e arroz) no mercado mundial. A estratégia empírica explora o fato de que variações climáticas deslocam a curva de oferta sem afetar diretamente a demanda, permitindo traçar a curva de demanda ao longo de diferentes pontos de equilíbrio.

    **Resultados.** As estimativas indicam elasticidades-preço da demanda entre \(-0{,}05\) e \(-0{,}10\) no curto prazo — demanda extremamente inelástica, consistente com o uso das commodities como insumos essenciais na alimentação e ração animal. A elasticidade-preço da oferta, condicional ao clima, situa-se entre \(0{,}10\) e \(0{,}15\). Essas estimativas têm implicações diretas para a estática comparativa: choques de oferta (como secas) provocam grandes variações de preço, precisamente porque ambas as curvas são inelásticas.

    **Conexão com o capítulo.** O artigo é uma aplicação direta da análise de estática comparativa (Seção 13.4) e da discussão sobre elasticidades de oferta e demanda (Seções 13.1 e 13.7) em mercados competitivos reais. Também dialoga com o Box Brasil sobre a soja, cujas elasticidades estimadas pelo IPEA e CONAB são comparáveis às encontradas no estudo.

??? pesquisa "Weyl, E. G. & Fabinger, M. (2013). [Pass-Through as an Economic Tool: Principles of Incidence under Imperfect Competition](https://doi.org/10.1086/670401). *Journal of Political Economy*, 121(3), 528–583."
    **DOI:** [10.1086/670401](https://doi.org/10.1086/670401)

    **Contexto.** A Seção 13.11 demonstra que, em concorrência perfeita, a incidência de um imposto específico depende das elasticidades relativas de oferta e demanda. Mas o que acontece quando os mercados não são perfeitamente competitivos? Weyl e Fabinger desenvolvem uma teoria unificada de *pass-through* (repasse) que generaliza os resultados clássicos de incidência para estruturas de mercado imperfeitas.

    **Contribuição teórica.** Os autores mostram que a taxa de repasse (*pass-through rate*) — a fração de um choque de custo repassada ao consumidor — é a variável-chave que conecta incidência tributária, análise de bem-estar e poder de mercado. Em concorrência perfeita, o repasse depende apenas das elasticidades, como demonstrado neste capítulo. Em monopólio e oligopólio, a curvatura da demanda (convexidade ou concavidade) torna-se crucial: com demanda log-côncava (como a linear), o repasse é inferior a 100%; com demanda log-convexa (como a de elasticidade constante), o repasse pode superar 100%.

    **Resultados centrais.** A fórmula unificada de incidência mostra que \(\rho = \varepsilon_S / (\varepsilon_S + |\varepsilon_D| \cdot \theta)\), onde \(\theta\) captura o grau de conduta competitiva (\(\theta = 1\) em concorrência perfeita, \(\theta > 1\) com poder de mercado). O artigo também demonstra que a PPM de um imposto pode ser expressa como função do repasse, independentemente da estrutura de mercado.

    **Conexão com o capítulo.** O artigo generaliza os resultados de incidência tributária da Seção 13.11, mostrando que a fórmula competitiva é um caso especial de um princípio mais amplo. A leitura é recomendada para estudantes que desejam compreender como a análise de equilíbrio parcial se estende para além da concorrência perfeita.

??? pesquisa "Gruber, J. & Köszegi, B. (2001). [Is Addiction 'Rational'? Theory and Evidence](https://doi.org/10.1162/003355301753265570). *Quarterly Journal of Economics*, 116(4), 1261–1303."
    **Pergunta central:** Consumidores de bens viciantes — como cigarros — respondem a variações de preço de maneira consistente com o modelo racional de demanda? Se a demanda por bens viciantes é sensível a preços futuros (e não apenas a preços correntes), isso tem implicações profundas para a análise de incidência tributária e para o desenho de políticas de saúde pública.

    **Método:** Gruber e Köszegi testam o modelo de "vício racional" de Becker e Murphy (1988) utilizando dados de consumo de cigarros nos Estados Unidos entre 1975 e 1999. A estratégia empírica explora variações exógenas em impostos estaduais sobre cigarros — que funcionam como deslocamentos da curva de oferta — para estimar a elasticidade-preço da demanda. Crucialmente, os autores testam se aumentos *futuros* de impostos (já legislados, mas ainda não implementados) afetam o consumo *corrente*, como prevê o modelo de vício racional com expectativas prospectivas.

    **Resultado principal:** Os dados confirmam que consumidores de cigarros respondem significativamente a preços futuros: um aumento futuro de imposto reduz o consumo presente, com elasticidade-preço de longo prazo estimada entre \(-0{,}6\) e \(-0{,}8\). Esse resultado é inconsistente com modelos de vício "míope" (em que apenas o preço corrente importa) e consistente com otimização intertemporal. A elasticidade-preço é substancialmente maior do que estimativas anteriores que ignoravam a dimensão intertemporal.

    **Por que isso importa:** O resultado implica que impostos sobre cigarros são instrumentos mais eficazes do que se supunha para reduzir o consumo, pois os consumidores antecipam aumentos futuros e ajustam seu comportamento antes da implementação. A análise de incidência tributária precisa incorporar a dinâmica do vício para não subestimar os efeitos de políticas fiscais sobre bens viciantes.

    **Relevância para o capítulo:** O artigo conecta a análise de incidência tributária da Seção 13.11 com a estimação de elasticidades da demanda (Seção 13.1). Ilustra que a magnitude da elasticidade-preço — e, portanto, a repartição do imposto entre consumidores e produtores — depende crucialmente do horizonte temporal e da natureza do bem. Bens viciantes, com demanda inelástica no curto prazo mas mais elástica no longo prazo, geram padrões de incidência que variam ao longo do tempo.

??? pesquisa "Atkin, D. & Donaldson, D. (2015). [Who's Getting Globalized? The Size and Implications of Intra-national Trade Costs](https://doi.org/10.1093/qje/qjv025). *Quarterly Journal of Economics*, 130(3), 1271–1318."
    **Pergunta central:** Os mercados dentro de um mesmo país operam de forma integrada, com preços convergindo como prevê o modelo competitivo de equilíbrio parcial? Ou os custos de transporte internos criam segmentação significativa, fazendo com que diferentes regiões de um país em desenvolvimento enfrentem preços — e, portanto, equilíbrios — muito distintos?

    **Método:** Atkin e Donaldson utilizam microdados de preços de produtos idênticos (mesmo código de barras) em milhares de localidades na Etiópia e na Nigéria. Comparam os preços observados com os preços de origem (no porto ou na fábrica) para calcular os custos de comércio intranacionais — a diferença entre o preço pago pelo consumidor local e o preço no ponto de produção. A abordagem permite decompor o custo total em componentes de transporte, intermediação e margens de distribuição, utilizando a lei do preço único como referência teórica.

    **Resultado principal:** Os custos de comércio intranacionais são enormes em países em desenvolvimento: o preço final ao consumidor é, em média, 4 a 5 vezes o preço de origem, com a maior parte da diferença explicada por custos de intermediação e infraestrutura deficiente — e não por distância geográfica pura. Consumidores em localidades remotas pagam preços drasticamente mais altos pelos mesmos bens, o que equivale a enfrentar uma "tarifa interna" de magnitude muito superior às barreiras comerciais internacionais.

    **Por que isso importa:** A segmentação intranacional de mercados implica que os benefícios da integração comercial global não se distribuem uniformemente dentro dos países. Políticas de infraestrutura e logística podem ter efeitos de bem-estar comparáveis — ou superiores — à redução de tarifas externas, especialmente para populações rurais de países em desenvolvimento.

    **Relevância para o capítulo:** O artigo testa empiricamente a hipótese de mercado integrado subjacente ao modelo de equilíbrio parcial competitivo (Seção 13.3). Quando os custos de transporte são elevados, cada localidade opera como um mercado parcialmente separado, com oferta e demanda locais determinando preços de equilíbrio distintos — exatamente o tipo de estática comparativa analisada na Seção 13.4, mas multiplicada por centenas de mercados geográficos dentro de um mesmo país.

??? pesquisa "Best, M. C.; Brockmeyer, A.; Kleven, H. J.; Spinnewijn, J. & Waseem, M. (2015). [Production versus Revenue Efficiency with Limited Tax Capacity: Theory and Evidence from Pakistan](https://doi.org/10.1086/683849). *Journal of Political Economy*, 123(6), 1311–1355."
    **Pergunta central:** Em países com capacidade administrativa limitada para arrecadar impostos, é preferível tributar de forma eficiente (minimizando o peso morto, como prescreve a teoria padrão da Seção 13.11) ou de forma que maximize a receita, mesmo ao custo de distorções adicionais? Quando a evasão fiscal é endógena à estrutura tributária, as fórmulas clássicas de incidência e peso morto precisam ser reformuladas.

    **Método:** Best e coautores desenvolvem um modelo teórico que incorpora evasão fiscal e capacidade administrativa limitada ao arcabouço padrão de tributação ótima. O modelo é testado com dados administrativos do universo de declarações fiscais de empresas no Paquistão, explorando uma descontinuidade no regime tributário: firmas abaixo de um limiar de faturamento pagam imposto sobre o lucro presumido, enquanto as acima pagam imposto sobre o lucro efetivo. A mudança de regime gera *bunching* (aglomeração de firmas logo abaixo do limiar), cuja magnitude permite estimar a elasticidade da base tributável e o grau de evasão.

    **Resultado principal:** A tributação baseada na receita bruta (em vez do lucro) gera distorções produtivas substanciais — firmas subdimensionam sua produção para permanecer no regime simplificado — mas *arrecada mais* do que o imposto sobre o lucro, porque este último é facilmente evadido. O peso morto do imposto sobre a receita é elevado (elasticidade da base tributável entre \(1{,}5\) e \(3{,}0\)), mas o imposto sobre o lucro arrecada tão pouco — devido à evasão — que o imposto "distorcivo" sobre a receita é *second-best* eficiente.

    **Por que isso importa:** O resultado desafia a prescrição padrão de que impostos devem minimizar distorções: em contextos de baixa capacidade fiscal, a escolha relevante não é entre um imposto distorcivo e um imposto neutro, mas entre um imposto distorcivo que arrecada e um imposto "eficiente" que não arrecada. A análise é diretamente relevante para o Brasil, onde o Simples Nacional adota lógica semelhante de tributação sobre faturamento bruto para micro e pequenas empresas.

    **Relevância para o capítulo:** O artigo estende a análise de peso morto da tributação (Seção 13.11) para contextos em que a evasão fiscal torna as elasticidades *aparentes* diferentes das elasticidades *estruturais*. Mostra que a incidência efetiva de um imposto depende não apenas das elasticidades de oferta e demanda, mas também da capacidade do Estado de observar e tributar as transações — uma dimensão ausente do modelo competitivo básico, mas essencial para aplicações em países em desenvolvimento.

---

## 📚 Referências do Capítulo

- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 10.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage. Caps. 12–13.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. New York: Pearson. Caps. 8–9.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Caps. 13–14.
