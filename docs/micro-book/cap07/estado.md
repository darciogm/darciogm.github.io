# 7.7–7.8 Estado-Preferência e Informação Assimétrica

## 7.7 Universos Paralelos no Mercado: A Abordagem Estado-Preferência

*And now for something completely different — ou melhor, completely determinístico.*[^completely-different-state]

Até aqui, abordamos a incerteza pelo lado do agente individual: como ele avalia loterias, quão avesso ao risco ele é, quanto pagaria por um seguro. Mas existe uma perspectiva complementar e igualmente poderosa, que reconecta a teoria da incerteza à teoria do consumidor que já conhecemos dos capítulos anteriores. Em vez de pensar em "loterias", podemos pensar em "bens contingentes" — bens que existem condicionalmente à ocorrência de determinados estados do mundo. Essa reformulação, devida a Arrow e Debreu, revela uma elegância profunda: escolher sob incerteza é, no fundo, escolher um cesto de consumo, exatamente como no problema do consumidor determinístico.

E se pudéssemos tratar a incerteza como... mais um problema de consumidor? A ideia — genial na sua simplicidade — é imaginar que existem "bens" especiais: um "guarda-chuva" que só entrega valor se chover, um "protetor solar" que só serve se fizer sol. Esses **ativos contingentes** transformam a escolha sob incerteza em uma escolha entre cestas — exatamente como nos Capítulos 3-4, mas agora as "mercadorias" são pagamentos condicionais a estados do mundo.

!!! definition "Espaço de estados e ativos contingentes"
    - Um **estado da natureza** \(s \in S = \{1, 2, \ldots, S\}\) descreve uma configuração completa e mutuamente exclusiva do mundo.
    - Um **ativo contingente ao estado \(s\)** (ou ativo de Arrow-Debreu) paga 1 unidade monetária se o estado \(s\) ocorre e 0 caso contrário.
    - O preço de um ativo contingente ao estado \(s\) é denotado por \(\psi_s\).

Nessa estrutura, o consumo contingente do agente é um vetor \((c_1, c_2, \ldots, c_S)\), e o problema de escolha sob incerteza é reduzido a um problema de escolha do consumidor padrão, com a restrição orçamentária:

\[
\sum_{s=1}^{S} \psi_s \, c_s = W
\]

e a função objetivo:

\[
\max_{(c_1, \ldots, c_S)} \sum_{s=1}^{S} \pi_s \, u(c_s)
\]

onde \(\pi_s\) é a probabilidade do estado \(s\).

A condição de primeira ordem implica:

\[
\frac{\pi_s \, u'(c_s)}{\pi_{s'} \, u'(c_{s'})} = \frac{\psi_s}{\psi_{s'}} \quad \forall \; s, s'
\]

Se os mercados de ativos contingentes são **completos** (existe um ativo para cada estado), todo risco pode ser alocado eficientemente. Se, adicionalmente, o agente é avesso ao risco e os preços são atuarialmente justos (\(\psi_s = \pi_s\) para todo \(s\)), a solução ótima é \(c_s = c_{s'}\) para todo \(s, s'\) — ou seja, **consumo perfeitamente suavizado** entre estados. Esse resultado é a contrapartida, no espaço de estados, do resultado que vimos na Seção 7.6.1: assim como o agente avesso ao risco contrata cobertura total quando o prêmio é justo, ele equaliza o consumo entre todos os estados quando os preços dos ativos contingentes são atuarialmente justos. Em ambos os casos, a aversão ao risco conduz à eliminação completa da incerteza sempre que isso pode ser feito sem custo.

!!! idea "Intuição Econômica"
    **Comprar seguro é comprar um ativo contingente ao estado ruim.**

    A abordagem estado-preferência oferece uma perspectiva radicalmente diferente — e mais geral — da abordagem probabilística. Em vez de pensar em "loterias" e "utilidade esperada", pensamos em *mercados de consumo contingente*. Comprar um seguro de carro não é contratar uma loteria: é adquirir um ativo (o contrato de seguro) que paga R\$ 50.000 se e somente se o estado "acidente grave" se realizar. Em termos de Arrow-Debreu, você está comprando unidades do ativo contingente ao estado "acidente".

    A beleza dessa reformulação é que ela reduz o problema de decisão sob incerteza ao problema do consumidor que já conhecemos do Capítulo 3. O "cesto de bens" agora é \((c_1, c_2, \ldots, c_S)\) — consumo em cada estado do mundo — e a restrição orçamentária e as condições de ótimo têm a mesma forma matemática de sempre. A aversão ao risco corresponde à curvatura das curvas de indiferença no espaço estado-consumo, exatamente como a preferência por variedade corresponde à curvatura das curvas de indiferença no espaço de bens do Capítulo 3.

    **Implicação prática:** Quando você compra ações de uma empresa e simultaneamente vende a descoberto um índice de mercado (para eliminar o risco sistemático), está construindo um portfólio que paga apenas em estados específicos do mundo — uma carteira de ativos contingentes. Mercados financeiros completos e seguros são, nessa perspectiva, simplesmente mercados de bens contingentes.

!!! note "Mercados completos e eficiência"
    A completude dos mercados é uma condição forte. Na prática, muitos riscos não são seguráveis (desemprego, saúde futura), o que gera incompletude dos mercados e potenciais ineficiências de Pareto. A incompletude dos mercados é um dos temas centrais da teoria financeira moderna.

A abordagem estado-preferência tem implicações normativas importantes para a política econômica brasileira. O sistema de previdência social (INSS) pode ser interpretado como a criação de um ativo contingente ao estado "velhice sem renda" — um estado que, sem a previdência, muitos trabalhadores não conseguiriam cobrir nos mercados privados. O seguro-desemprego é um ativo contingente ao estado "demissão involuntária". O SUS (Sistema Único de Saúde) é um conjunto de ativos contingentes a estados de doença que o mercado privado não consegue prover de forma universal, dadas as falhas de informação assimétrica (Seção 7.8). A teoria dos ativos contingentes de Arrow-Debreu, portanto, não é apenas um exercício matemático elegante: ela fornece o arcabouço conceitual para avaliar quando e por que o Estado deve intervir nos mercados de risco.

---

## 7.8 Quando Um Sabe Mais Que o Outro: Informação Assimétrica

Para fechar o capítulo, um aperitivo do que vem pela frente: e quando o problema não é *você* não saber o futuro, mas *a outra parte* saber mais que você?[^dead-parrot-info] O vendedor de carro usado sabe se o motor é bom; a seguradora não sabe se você dirige rápido; o empregador não sabe se o candidato é preguiçoso. Essa **assimetria de informação** gera problemas que a teoria da utilidade esperada, sozinha, não resolve — mas que serão o tema central dos capítulos posteriores. Aqui, plantamos as sementes.

### 7.8.1 Seleção adversa

A **seleção adversa** ocorre *antes* da celebração do contrato, quando uma das partes possui informação privada sobre suas características. O exemplo clássico é o mercado de carros usados de Akerlof (1970): vendedores conhecem a qualidade de seus veículos, mas compradores não conseguem distinguir carros bons de ruins (*lemons*). O resultado é que carros de boa qualidade podem ser expulsos do mercado.

Mecanismos para mitigar a seleção adversa incluem:

- **Sinalização**: a parte informada toma ações custosas para revelar sua qualidade (Spence, 1973).
- **Triagem** (*screening*): a parte desinformada oferece um menu de contratos que induz a autorevelação.

### 7.8.2 Risco moral

Se a seleção adversa é um problema de **informação oculta** (quem é o agente?), o risco moral é um problema de **ação oculta** (o que o agente faz?). O **risco moral** ocorre *depois* da celebração do contrato, quando uma das partes pode tomar ações não observáveis que afetam o resultado. Por exemplo, após contratar um seguro, o segurado pode reduzir seus cuidados preventivos. A solução envolve o desenho de contratos com incentivos adequados (franquias, copagamentos, bônus por desempenho).

!!! tip "Terminologia"
    Em português, o termo consagrado é **risco moral** (tradução de *moral hazard*), e **não** "risco de inadimplência". "Risco moral" refere-se ao problema de incentivos gerado pela impossibilidade de observar as ações do agente após a contratação.

A importância prática da informação assimétrica para os mercados de risco no Brasil não pode ser subestimada. No mercado de saúde suplementar, a ANS (Agência Nacional de Saúde Suplementar) regulamenta as coberturas mínimas obrigatórias parcialmente como resposta à seleção adversa: sem obrigatoriedade de cobertura para doenças preexistentes, as operadoras excluiriam exatamente os segurados de maior risco, destruindo a lógica do pool de riscos. No crédito rural, o Proagro enfrenta risco moral porque o produtor que contratou a cobertura tem menos incentivos para investir em irrigação de emergência ou na escolha de sementes resistentes à seca. No mercado de trabalho, contratos de incentivo — comissões, bônus, participação nos lucros — são respostas diretas ao risco moral de agentes que podem shirk (reduzir esforço) quando o trabalho não é perfeitamente monitorado.

A compreensão desses mecanismos começa nesta seção, mas a análise formal — incluindo a derivação dos contratos ótimos com informação assimétrica, os menus de triagem, os sinais de mercado e o teorema da revelação — será desenvolvida em profundidade nos capítulos posteriores. Por ora, o que importa é reconhecer que os mercados de risco, diferentemente dos mercados de bens homogêneos, são especialmente vulneráveis a falhas de informação, e que essas falhas geram ineficiências que justificam tanto a regulação quanto o desenho cuidadoso de políticas públicas.

---

Os conceitos desenvolvidos ao longo deste capítulo — loterias, utilidade esperada, aversão ao risco, prêmio de risco, diversificação e informação assimétrica — ganham vida quando aplicados a mercados reais. Os boxes a seguir ilustram como a teoria se manifesta em três contextos brasileiros: o mercado de seguros de automóvel, a Mega-Sena e o seguro agrícola.

!!! box-brasil "Box Brasil 7.2: Seguros de automóvel — risco, precificação e regulação"
    O mercado de seguros de automóvel no Brasil é um campo fértil para a aplicação dos conceitos de incerteza e aversão ao risco. Regulado pela **[SUSEP](https://www.susep.gov.br)** (Superintendência de Seguros Privados), esse mercado apresenta características que ilustram os desafios teóricos discutidos neste capítulo.

    **Estrutura de mercado e concentração**

    O mercado brasileiro de seguros de automóvel é moderadamente concentrado. As cinco maiores seguradoras respondem por aproximadamente 55–60% dos prêmios emitidos. As principais são Porto Seguro, Tokio Marine, Bradesco Seguros, SulAmérica e HDI. Essa concentração permite algum poder de precificação, mas a competição é suficiente para limitar os carregamentos sobre o prêmio atuarialmente justo.

    **Precificação baseada em risco**

    A precificação dos seguros automotivos no Brasil envolve sofisticados modelos atuariais que incorporam variáveis como:

    - **Perfil do condutor**: idade, sexo, estado civil, tempo de habilitação.
    - **Veículo**: marca, modelo, ano, valor de mercado (tabela FIPE).
    - **Localização geográfica**: CEP de pernoite, índice de furto/roubo da região.
    - **Histórico**: bônus por ausência de sinistros (classes de bônus de 0 a 10).

    **Sinistralidade e variação regional**

    A sinistralidade (razão entre indenizações pagas e prêmios ganhos) varia significativamente entre regiões. Dados do setor indicam que estados como São Paulo e Rio de Janeiro apresentam sinistralidade mais alta em furto e roubo, enquanto estados do interior têm maior incidência relativa de colisões. A sinistralidade média do ramo automóvel situa-se tipicamente entre 55% e 65%.

    | Região | Sinistralidade típica | Principal tipo de sinistro |
    |:-------|:---------------------|:--------------------------|
    | SP (Capital) | 60–70% | Furto/roubo |
    | RJ (Capital) | 65–75% | Furto/roubo |
    | Interior SP | 50–60% | Colisão |
    | Sul | 50–60% | Colisão, granizo |
    | Nordeste | 45–55% | Colisão |

    **Problemas informacionais**

    O mercado de seguros automotivos enfrenta tanto **seleção adversa** (motoristas de alto risco têm mais incentivos para contratar seguros) quanto **risco moral** (a cobertura pode reduzir os cuidados com o veículo). As seguradoras mitigam esses problemas por meio de franquias (que funcionam como copagamento), classes de bônus (que premiam o histórico positivo) e inspeções veiculares prévias.

    **Papel da SUSEP**

    A SUSEP fiscaliza a solvência das seguradoras, regulamenta as condições gerais dos contratos e monitora as práticas de mercado. A exigência de provisões técnicas adequadas assegura que as seguradoras mantenham capacidade financeira para honrar os sinistros, reduzindo o risco sistêmico do setor.

---

!!! box-brasil "Box Brasil 7.3: Mega-Sena — quando apostar é irracional (mas compreensível)"
    A **Mega-Sena**, operada pela Caixa Econômica Federal, é a maior loteria do Brasil e ilustra de maneira contundente o contraste entre valor esperado e comportamento observado.

    **Os números da Mega-Sena**

    A probabilidade de acertar as 6 dezenas em um jogo simples (6 números) é de \(1/50.063.860\) — ou aproximadamente 0,000002%. Pela legislação brasileira, 43,35% da arrecadação bruta é destinada ao pagamento de prêmios (incluindo quadra, quina e sena). Para a faixa principal (sena), a parcela é de cerca de 35% da arrecadação.

    **Valor esperado negativo**

    Para uma aposta simples de R\$ 5,00, o retorno esperado — considerando todas as faixas de premiação — é tipicamente inferior a R\$ 2,20. Isso implica um retorno esperado líquido de aproximadamente **−R\$ 2,80 por aposta**, ou uma "sinistralidade" de cerca de 44% para a Caixa. Do ponto de vista da utilidade esperada, um agente estritamente avesso ao risco *jamais* compraria um bilhete de loteria.

    **Por que as pessoas apostam?**

    A teoria econômica oferece duas explicações complementares:

    1. **Hipótese de Friedman-Savage (1948)**: a função de utilidade pode ser côncava para níveis baixos e altos de riqueza, mas **convexa** em uma faixa intermediária, correspondente à região onde um "grande prêmio" faria o indivíduo mudar de classe social. Nessa faixa, o agente se comporta como propenso ao risco.

    2. **Teoria dos prospectos**: os agentes *sobreponderam* probabilidades muito pequenas. Assim, a probabilidade subjetiva atribuída ao prêmio máximo é muito maior do que a probabilidade objetiva.

    **Conexão com este capítulo**

    A Mega-Sena demonstra que o critério do valor esperado (Seção 7.1) é insuficiente para explicar o comportamento observado. A disposição de milhões de brasileiros a aceitar uma loteria com valor esperado negativo desafia a hipótese de aversão ao risco universal e motiva os refinamentos teóricos discutidos nas Seções 7.2–7.3.

    **Fonte**: Caixa Econômica Federal, regulamento da Mega-Sena; Lei 13.756/2018 (destinação da arrecadação de loterias).

---

!!! box-brasil "Box Brasil 7.4: Programa de Subvenção ao Prêmio do Seguro Rural (PSR)"
    O setor agropecuário brasileiro — responsável por cerca de 24% do PIB quando considerada toda a cadeia — está intrinsecamente exposto a riscos climáticos, fitossanitários e de preços. O **Programa de Subvenção ao Prêmio do Seguro Rural (PSR)**, criado em 2003, é a principal política pública de gestão de risco agrícola no país.

    **Como funciona**

    O governo federal subsidia parte do prêmio do seguro rural pago pelo produtor. Em 2024, o orçamento do PSR foi de **R\$ 1,15 bilhão**, permitindo a cobertura de mais de 62 atividades agropecuárias. O percentual de subvenção varia por cultura: em média cerca de 40%, mas para culturas como soja o subsídio gira em torno de 20%.

    **Justificativa econômica**

    O subsídio se justifica por três razões microeconômicas:

    1. **Completude de mercados**: sem subvenção, muitos produtores — especialmente pequenos e médios — não teriam acesso ao seguro, deixando o mercado de risco incompleto (Seção 7.7).

    2. **Externalidades positivas**: a estabilidade da renda agrícola reduz a inadimplência no crédito rural e suaviza o consumo em regiões dependentes do agronegócio.

    3. **Seleção adversa**: sem incentivo, apenas os produtores de maior risco contratariam seguro, elevando o prêmio e expulsando os de baixo risco — o clássico problema de Akerlof (Seção 7.8).

    **Desafios**

    O PSR enfrenta limitações: orçamento frequentemente insuficiente para atender toda a demanda, concentração das apólices em grandes produtores do Centro-Oeste e Sul, e dificuldades na precificação atuarial de eventos climáticos extremos (que estão se tornando mais frequentes).

    **Fonte**: Ministério da Agricultura e Pecuária, Relatório do PSR 2023/2024; Atlas do Seguro Rural ([Embrapa](https://www.embrapa.br)).

---

No início deste capítulo, tiramos o tapete da certeza. Agora, o consumidor tem ferramentas para pisar firme mesmo no chão instável: utilidade esperada para avaliar loterias, Arrow-Pratt para medir aversão ao risco, seguros para transferi-lo, e ativos contingentes para negociá-lo. O tapete não voltou — mas o consumidor aprendeu a equilibrar-se sem ele.

Se você sair deste capítulo com três convicções, que sejam estas:

1. **Utilidade, não dinheiro.** O salto de \(E[x]\) para \(E[u(x)]\) é toda a diferença entre a estatística e a microeconomia da incerteza. A curvatura da utilidade — não o valor esperado — governa as decisões sob risco.
2. **Risco tem preço.** O prêmio de risco de Arrow-Pratt converte aversão abstrata em reais concretos. É o fundamento de tudo: do seguro rural ao CAPM, do Proagro ao Tesouro Direto.
3. **Informação é poder (e assimetria é falha).** Quando uma parte sabe mais que a outra, mercados de risco podem colapsar. Seleção adversa e risco moral são as sementes que florescerão nos capítulos seguintes.

*O consumidor aprendeu a lidar com o risco. Mas será que ele realmente faz isso de forma racional? O próximo capítulo diz que não — e tem provas.*

---

<iframe src="/micro-book/graficos/cap07/webr-risco.html" title="WebR — Aversão ao Risco" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 7.1 — Prêmio de risco e aversão ao risco.** Visualize a função CRRA, o equivalente de certeza e o prêmio de risco. Altere γ para ver como a curvatura (concavidade) afeta a disposição a pagar por seguro.
</div>

<iframe src="/micro-book/graficos/cap07/webr-portfolio.html" title="WebR — Diversificação de Portfólio" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 7.2 — Fronteira eficiente e diversificação.** Combine dois ativos e veja a fronteira risco-retorno. Altere a correlação ρ: com ρ negativa, a diversificação pode reduzir o risco abaixo do ativo menos arriscado!
</div>

<iframe src="/micro-book/graficos/cap07/webr-seguro.html" title="WebR — Mercado de Seguros" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 7.3 — Mercado de seguros: cobertura ótima.** Com seguro atuarialmente justo, o avesso ao risco compra cobertura total. Aumente o loading (custo administrativo) e veja a cobertura ótima cair. Diagrama estado-contingente incluso.
</div>

<iframe src="/micro-book/graficos/cap07/webr-cara-crra.html" title="WebR — CARA vs CRRA" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 7.4 — CARA vs. CRRA: absoluto vs. relativo.** CARA: aversão absoluta constante (bilionário teme a mesma perda absoluta que assalariado). CRRA: aversão relativa constante (mais realista). Compare Arrow-Pratt e prêmio de risco.
</div>

---

!!! classroom "Atividade 7.1 — A aposta do café: revelando aversão ao risco (15 min)"
    **Objetivo:** Revelar empiricamente a aversão ao risco dos alunos — e conectar com a curvatura da função de utilidade.

    **Material:** Moeda, quadro branco.

    **Protocolo:**

    1. **A oferta** (3 min): "Eu vou jogar uma moeda. Cara: você ganha R$ 100. Coroa: você não ganha nada. Valor esperado = R$ 50. Mas eu te ofereço R$ 50 garantidos para *não* jogar. Quem aceita os R$ 50 certos?" → A maioria levanta a mão (aversão ao risco).
    2. **Baixando o preço** (5 min): "E se eu oferecer R$ 40 certos? R$ 30? R$ 20?" Registre no quadro a proporção que aceita a cada valor. O menor valor que um aluno aceita é seu **equivalente de certeza**. A diferença entre R$ 50 e o EC é o **prêmio de risco**.
    3. **Variação** (3 min): "Agora: Cara = R$ 10.000, Coroa = nada. Valor esperado = R$ 5.000. Quanto você aceitaria para não jogar?" → Os prêmios de risco tendem a ser proporcionalmente maiores. Conecte com ARA vs. RRA (Seção 7.4).
    4. **Debrief** (4 min):
        - "Quem aceitou R$ 50 certos no lugar de E[x] = 50 é avesso ao risco. A moeda oferece o mesmo valor esperado, mas com incerteza — e vocês pagaram (em esperança perdida) para evitá-la."
        - "A diferença entre R$ 50 e seu EC é literalmente o prêmio de risco de Arrow-Pratt."
        - "Alguém rejeitou os R$ 50 certos? Isso é preferência pelo risco — utilidade *convexa*."
        - Conecte com a desigualdade de Jensen (Seção 7.3): \(E[u(x)] < u(E[x])\) para avessos ao risco.

    **Conexão com o conteúdo:** Seções 7.3 (aversão ao risco), 7.4 (Arrow-Pratt), 7.5 (prêmio de risco e equivalente de certeza). Inspirado em Holt e Laury (2002).

!!! classroom "Atividade 7.2 — Diversificação com dados: não coloque todos os ovos na mesma cesta (15 min)"
    **Objetivo:** Demonstrar empiricamente que diversificação reduz risco sem reduzir retorno esperado.

    **Material:** 2 dados de seis faces por grupo (ou app simulador de dados no celular).

    **Protocolo:**

    1. **Setup** (3 min): Grupos de 3. "Ativo A = resultado do dado 1 (payoff em R$). Ativo B = resultado do dado 2 (payoff em R$). Cada um tem E[x] = 3,5 e variância = 2,92."
    2. **Estratégia concentrada** (4 min): "Joguem o dado A dez vezes. Anotem os resultados. Calculem a média e o desvio padrão." → Média perto de 3,5, mas muita variação entre rodadas.
    3. **Estratégia diversificada** (4 min): "Agora joguem *ambos* os dados e usem a *média* dos dois como payoff. Dez rodadas." → Média similar (~3,5), mas desvio padrão menor. Os resultados extremos (1 e 6) quase desaparecem.
    4. **Debrief** (4 min):
        - Compare as distribuições no quadro. "O retorno esperado é o mesmo. Mas o risco caiu. Isso é diversificação."
        - "Se os dados fossem *correlacionados* (os dois sempre dando o mesmo número), a diversificação não funcionaria. A correlação entre ativos é a chave."
        - Conecte com Seção 7.6 (diversificação como método de redução de risco) e com a intuição do CAPM (risco diversificável vs. sistemático).

    **Conexão com o conteúdo:** Seção 7.6 (métodos para reduzir o risco — diversificação). Extensão natural: Seção 7.7 (estado-preferência e ativos Arrow-Debreu).

!!! abstract "Para onde estes conceitos vão"
    As seções 7.7–7.8 plantaram a semente da **informação assimétrica**: o que acontece quando um lado do mercado sabe mais que o outro? Este tema será desenvolvido em profundidade em dois capítulos posteriores:

    - **[Cap. 9d — O Diploma É Caro](../cap09d/index.md):** A abordagem de **teoria dos jogos**. Sinalização (Spence), seleção adversa (Akerlof), moral hazard e cheap talk — todos como jogos sequenciais com informação incompleta, resolvidos via Equilíbrio Bayesiano Perfeito.

    - **[Cap. 19 — Quando Um Lado Sabe Mais](../cap19/index.md):** A abordagem de **mercados e contratos**. Os mesmos fenômenos (sinalização, screening, seleção adversa, moral hazard), mas com foco em como mercados, seguradoras, empregadores e reguladores **desenham mecanismos** para lidar com a assimetria.

    **Resumo:** Cap. 9d = "como modelar o problema"; Cap. 19 = "como resolver o problema na prática". Ambos usam o arcabouço de estado-preferência que você acabou de aprender como ponto de partida.

[^completely-different-state]: Frase imortalizada pelo narrador de *Monty Python's Flying Circus*. A transição aqui é deliberada: depois de seis seções pensando em loterias e probabilidades, vamos reformular tudo como um problema do consumidor — com curvas de indiferença, restrição orçamentária e tudo mais. É *completely different*, mas estranhamente familiar.

[^dead-parrot-info]: No sketch *Dead Parrot* de Monty Python, o vendedor insiste que o papagaio morto está "descansando" — um caso perfeito de assimetria de informação em que o vendedor sabe perfeitamente o estado do produto e engana o comprador com *cheap talk*. Akerlof (1970) formalizou exatamente essa situação: quando o vendedor sabe mais do que o comprador, o mercado pode colapsar.
