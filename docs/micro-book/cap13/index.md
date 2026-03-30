# Capítulo 13 — O Leiloeiro que Ninguém Vê

Nos capítulos anteriores, construímos separadamente a teoria do consumidor e a teoria da firma — duas metades de uma história que, sozinhas, ficam incompletas como um sanduíche sem recheio. Do lado da demanda, vimos como preferências racionais e restrições orçamentárias determinam as escolhas ótimas de consumo (Capítulos 3–6); do lado da oferta, analisamos como firmas minimizam custos e maximizam lucros escolhendo níveis de produção ao longo de suas curvas de custo marginal (Capítulos 11–12). Agora é hora de finalmente juntar comprador e vendedor na mesma sala e ver o que acontece quando deixamos o mercado funcionar. Este capítulo desenvolve a análise de **equilíbrio parcial marshalliano** — o estudo de um mercado individual tomando os demais como dados — e suas aplicações à análise de bem-estar e políticas públicas.[^walras-auctioneer]

A metáfora do "leiloeiro walrasiano" — uma entidade fictícia que anuncia preços e ajusta-os até que oferta e demanda se igualem — nos ajuda a compreender o mecanismo de formação de preços. Léon Walras (1834–1910), economista francês da Escola de Lausanne, concebeu esse dispositivo teórico para explicar como mercados descentralizados podem atingir o equilíbrio sem nenhuma coordenação central. Embora nenhum leiloeiro real exista na maioria dos mercados, o resultado competitivo se assemelha ao que tal mecanismo produziria: milhões de agentes, cada um perseguindo seus próprios objetivos, produzem um resultado coerente e — como demonstraremos — eficiente. É uma das conclusões mais surpreendentes e poderosas da teoria econômica.[^spanish-inquisition-equilibrio]

O equilíbrio parcial contrasta com o equilíbrio geral (que estudaremos nos Capítulos 17–18), em que todos os mercados são analisados simultaneamente. Alfred Marshall (1842–1924), em seus *Principles of Economics* (1890), sistematizou a abordagem parcial: analisar um mercado por vez, supondo que os efeitos sobre os demais mercados são suficientemente pequenos para serem ignorados — a cláusula *ceteris paribus*. Essa simplificação é adequada quando o mercado em questão é pequeno em relação ao restante da economia, mas deve ser usada com cautela quando se trata de mercados grandes ou fortemente interconectados (como o mercado de petróleo, cujos efeitos reverberam por toda a economia).

Ao longo do capítulo, analisaremos: a agregação de demandas individuais em demanda de mercado; a determinação de preços no curtíssimo, curto e longo prazos; estática comparativa; eficiência econômica; controles de preços; e incidência tributária. Cada um desses tópicos será desenvolvido com rigor analítico, complementado por exemplos do contexto brasileiro e por gráficos interativos que permitem visualizar os mecanismos em operação.

[^walras-auctioneer]: O leiloeiro walrasiano é o fantasma mais útil da economia. Ninguém jamais o viu, nenhum mercado emprega um, mas todo modelo de equilíbrio geral precisa dele para fechar as contas. É como o monstro do Lago Ness, mas com propriedades matemáticas melhores.

[^spanish-inquisition-equilibrio]: "Nobody expects the Spanish Inquisition!" — e ninguém espera que um equilíbrio de mercado possa ser eficiente sem que ninguém planeje isso. A mão invisível de Adam Smith é, em certo sentido, tão inesperada quanto a Inquisição Espanhola dos Monty Python: aparece quando ninguém chamou, impõe ordem onde se esperava caos, e ninguém sabe exatamente como funciona. A diferença é que a mão invisível, ao contrário do Cardeal Ximinez, realmente produz resultados socialmente desejáveis — pelo menos quando as hipóteses do Primeiro Teorema do Bem-Estar são satisfeitas.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 13.1 | Como somar milhões de decisões individuais numa única curva de demanda? | Demanda de mercado, agregação | [Demanda](demanda-mercado.md) |
| 13.2 | O que acontece quando o caminhão de tomates chega na feira e o estoque é fixo? | Equilíbrio de curtíssimo prazo | [Curtíssimo prazo](equilibrio.md#132) |
| 13.3 | Quando a fábrica liga o segundo turno — como o preço se ajusta? | Equilíbrio de curto prazo competitivo | [Curto prazo](equilibrio.md#133) |
| 13.4 | E se a demanda ou os custos mudarem? | Estática comparativa do equilíbrio | [Estática comparativa](equilibrio.md#134) |
| 13.5 | Se tem lucro, por que todo mundo não entra? | Livre entrada e equilíbrio de longo prazo | [Longo prazo](longo-prazo.md#135) |
| 13.6 | Custos sobem, descem ou ficam iguais quando a indústria cresce? | Indústrias de custo constante, crescente e decrescente | [Três destinos](longo-prazo.md#136) |
| 13.7 | Por que a oferta é mais elástica no longo prazo? | Elasticidade de oferta e ajuste temporal | [Elasticidade LP](longo-prazo.md#137) |
| 13.8 | Se o lucro é zero, para que serve ser eficiente? | Renda ricardiana, lucro econômico vs. contábil | [Renda ricardiana](longo-prazo.md#138) |
| 13.9 | O mercado competitivo é "justo"? | Eficiência de Pareto, EC, EP, 1º TBE | [Eficiência](eficiencia.md) |
| 13.10 | Tabelar preço resolve ou piora? | Controles de preços, teto e piso | [Controles](politicas.md#1310) |
| 13.11 | Quem realmente paga o imposto — produtor ou consumidor? | Incidência tributária e elasticidade | [Impostos](politicas.md#1311) |
| 13.12 | Qual é o custo social do imposto? | Peso morto, EC, EP e PPM | [Peso morto](politicas.md#1312) |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade de Sala — O Mercado de Chocolate: Leilão Duplo e Incidência Tributária"

    **Formato:** Pit market experiment + análise de incidência (40–50 min)

    **Objetivo:** Vivenciar a formação de preços por oferta e demanda, observar a eficiência do equilíbrio competitivo e testar a irrelevância do lado legal da incidência tributária.

    **Preparação (professor):**

    - Imprima fichas de **compradores** (com disposição a pagar: R$ 3, 5, 7, 9, 11, 13, 15 — distribuídas aleatoriamente).
    - Imprima fichas de **vendedores** (com custo mínimo: R$ 2, 4, 6, 8, 10, 12, 14 — distribuídas aleatoriamente).
    - Prepare 15 compradores e 15 vendedores (30 alunos; ajuste conforme a turma).
    - Quadro para registrar transações.

    **Rodada 1 — Mercado livre (10 min):**

    1. Compradores e vendedores circulam pela sala negociando livremente.
    2. Para fechar uma transação, o preço deve estar entre o custo do vendedor e a disposição a pagar do comprador.
    3. Cada par registra o preço no quadro. Cada agente faz no máximo 1 transação.
    4. Ao final, calcule: preço médio, número de transações, EC e EP observados.

    **Rodada 2 — Imposto sobre o vendedor (10 min):**

    1. Anuncie: "Imposto de R$ 2 por unidade, cobrado do vendedor."
    2. Os custos dos vendedores sobem em R$ 2 (novo custo = custo original + 2).
    3. Repita o mercado. Registre preços e transações.

    **Rodada 3 — Imposto sobre o comprador (10 min):**

    1. Anuncie: "Mesmo imposto de R$ 2, mas agora cobrado do comprador."
    2. As disposições a pagar dos compradores caem em R$ 2 (nova DAP = DAP original − 2).
    3. Repita o mercado. Registre preços e transações.

    **Debrief (10–15 min):**

    - Compare Rodadas 2 e 3: o preço final ao comprador e ao vendedor mudou? (Resposta esperada: não — confirmando a irrelevância do lado legal.)
    - Quantas transações deixaram de acontecer com o imposto? (Perda de peso morto!)
    - Quem arcou com a maior parte do imposto? Depende das elasticidades relativas.
    - Conecte com a reforma tributária brasileira (IBS/CBS): mudar quem recolhe o imposto muda quem paga?
    - Referência à Life of Brian: "What have the Romans ever done for us?" — análise custo-benefício de bens públicos financiados por impostos.

    **Variante:** Se a turma for grande, divida em 2 mercados paralelos (um com imposto sobre vendedor, outro sobre comprador) e compare os resultados simultaneamente.

    **Referência:** Holt, C.A. (2007). *Markets, Games, and Strategic Behavior*, Cap. 1 (Double Auction).
