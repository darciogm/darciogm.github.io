# Capítulo 15 — Sozinho, Feliz e Cobrando Caro

Se no Capítulo 14 vivíamos no paraíso da concorrência perfeita — milhares de firmas, ninguém mandando em nada —, agora entramos no lado sombrio do mercado: um único vendedor, zero concorrência e um sorriso no rosto de quem define o preço. O monopólio representa a antítese da concorrência perfeita. Enquanto no modelo competitivo cada firma é uma tomadora de preço, incapaz de influenciar individualmente as condições de mercado, o monopolista é o único ofertante e, portanto, enfrenta toda a curva de demanda do mercado. Essa posição privilegiada lhe confere **poder de mercado** — a capacidade de fixar preços acima do custo marginal e obter lucros econômicos persistentes.[^black-knight-monopolio]

A análise do monopólio não é meramente teórica: monopólios naturais regulados dominam setores fundamentais da economia brasileira — energia elétrica, saneamento, telecomunicações fixas —, e o exercício de poder de mercado é uma preocupação central da política antitruste em todo o mundo. A fusão que criou a Ambev, os contratos de concessão da ANEEL, o teto de preços da ANATEL — todos esses casos envolvem, em sua essência, a economia do monopólio apresentada neste capítulo. Compreender como o monopolista fixa preços, por que essa fixação gera ineficiência e quais instrumentos regulatórios podem mitigá-la é, portanto, indispensável tanto para o economista teórico quanto para o formulador de políticas públicas.

Este capítulo examina as causas do monopólio, a lógica de sua maximização de lucro, as perdas de eficiência decorrentes do poder de mercado, as estratégias de discriminação de preços e os mecanismos de regulação. Ao longo da exposição, utilizaremos intensivamente os conceitos de receita marginal, elasticidade-preço e excedente desenvolvidos nos capítulos anteriores — em particular, a relação entre preço, custo marginal e elasticidade que constituirá o fio condutor de toda a análise. Nos Capítulos 16a e 16b, generalizaremos essa estrutura para mercados com poucos competidores — os oligopólios —, onde a interação estratégica entre firmas substitui o isolamento do monopolista.[^spanish-inquisition-oligopolio]

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 15.1 | O que impede a concorrência de derrubar o monopolista? | Barreiras à entrada: legais, tecnológicas, estratégicas | [Barreiras](barreiras-maximizacao.md#151) |
| 15.2 | Como o monopolista escolhe preço e quantidade? | Maximização de lucro, RMg = CMg | [Maximização](barreiras-maximizacao.md#152) |
| 15.3 | Como medir o poder de mercado com uma fórmula? | Índice de Lerner e elasticidade | [Lerner](lerner-ineficiencia.md#153) |
| 15.4 | Quanto a sociedade perde com o monopólio? | Peso morto, ineficiência alocativa | [Ineficiência](lerner-ineficiencia.md#154) |
| 15.5 | O que acontece com o monopólio quando a demanda ou os custos mudam? | Estática comparativa, pass-through | [Estática comp.](lerner-ineficiencia.md#155) |
| 15.6 | O monopolista escolhe qualidade alta ou baixa? | Qualidade endógena sob monopólio | [Qualidade](qualidade-discriminacao.md#156) |
| 15.7 | Por que a Netflix cobra preços diferentes em países diferentes? | Discriminação de preços: 1º, 2º e 3º graus | [Discriminação](qualidade-discriminacao.md#157) |
| 15.8 | Por que o parque cobra entrada e depois cobra por brinquedo? | Tarifa em duas partes, bundling | [Tarifas](qualidade-discriminacao.md#158) |
| 15.9 | Como o regulador doma o monopolista sem destruir o incentivo a investir? | Regulação: preço teto, taxa de retorno, price cap | [Regulação](regulacao-dinamica.md#159) |
| 15.10 | O monopólio pode ser bom para a inovação? | Schumpeter, destruição criativa, patentes | [Visão dinâmica](regulacao-dinamica.md#1510) |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade de Sala — O Leilão do Monopólio: Poder de Mercado, Discriminação e Regulação"

    **Formato:** Simulação de mercado + debrief analítico (45–55 min)

    **Objetivo:** Vivenciar como o poder de mercado afeta preços, quantidades e bem-estar; comparar preço único com discriminação de preços; experimentar regulação como resposta.

    **Preparação (professor):**

    - Divida a turma em grupos de 5–6 alunos. Em cada grupo: 1 aluno é o monopolista, os demais são consumidores.
    - Distribua fichas de **valoração** aos consumidores: cada consumidor recebe uma carta com sua disposição a pagar (valores diferentes: R$ 10, R$ 8, R$ 6, R$ 4, R$ 2).
    - O monopolista tem custo marginal constante de R$ 2 por unidade.
    - Prepare uma planilha de registro no quadro (preço, quantidade, lucro, EC, PPM).

    **Rodada 1 — Preço único (10 min):**

    1. O monopolista anuncia um preço único. Consumidores cuja valoração ≥ preço compram; os demais ficam de fora.
    2. O monopolista pode mudar o preço em até 3 tentativas (tâtonnement), observando quantos compram.
    3. Registre o preço final, a quantidade vendida, o lucro e o excedente do consumidor.
    4. Calcule a perda de peso morto (consumidores excluídos cujo valor > CMg).

    **Rodada 2 — Discriminação perfeita (10 min):**

    1. O monopolista agora pode fazer ofertas individuais secretas a cada consumidor (bilhetes escritos).
    2. Cada consumidor aceita ou rejeita a oferta.
    3. Registre os resultados: quantos compraram? A que preço? Qual o lucro? Qual o EC?

    **Rodada 3 — Regulação (10 min):**

    1. Um aluno assume o papel de regulador (ANEEL/ANATEL) e impõe $p = CMg = 2$.
    2. O monopolista reclama: "Não cubro meus custos fixos!" (professor adiciona CF = R$ 8).
    3. O regulador tenta a alternativa $p = CMe$. Calcule e compare.

    **Debrief (15–20 min):**

    - Compare os três regimes: preço único, discriminação perfeita e regulação. Quem ganhou e quem perdeu em cada caso?
    - O monopolista descobriu sozinho o preço ótimo (RMg = CMg) ou precisou de tentativa e erro?
    - Na Rodada 2, o EC caiu a zero — isso é "justo"? Discuta eficiência vs. equidade.
    - Na Rodada 3, como o regulador resolveu o dilema do prejuízo? Conecte com o modelo da ANEEL.
    - Referência Monty Python: "Bring me a shrubbery!" — os cavaleiros Ni são monopolistas perfeitos: demanda inelástica (sem shrubbery, não te deixo passar) e preço acima do custo marginal. A regulação equivale a chamar o Rei Arthur para negociar.

    **Variante avançada:** Na Rodada 2, em vez de discriminação perfeita, use discriminação de 3º grau — divida os consumidores em dois grupos (estudantes e executivos) e peça ao monopolista para definir preços diferentes para cada grupo.

    **Referência:** Holt, C.A. (2007). *Markets, Games, and Strategic Behavior*, Cap. 24 (Monopoly).

[^black-knight-monopolio]: O monopolista é como o Black Knight de *Monty Python and the Holy Grail*: "'Tis but a scratch!" — ele insiste que está tudo bem enquanto o CADE corta suas margens. A diferença é que, no caso do monopólio, o cavaleiro negro realmente tem uma espada grande o suficiente para fazer estrago. E ao contrário do sketch, ele não perde os braços: a barreira à entrada os protege.

[^spanish-inquisition-oligopolio]: "Nobody expects the Spanish Inquisition!" E ninguém espera que um capítulo sobre monopólio termine com a preparação para o oligopólio. Mas como os Pythons, nós vamos aos próximos capítulos (16a–16b) com três armas: medo, surpresa e uma devoção quase fanática pela interação estratégica.
