# Capítulo 12 — Lucro = Receita − Custo (E Tudo que Pode Dar Errado no Meio)

Os capítulos anteriores construíram os dois pilares sobre os quais repousa a teoria da firma: a **tecnologia** (função de produção, Capítulo 10) e os **custos** (função custo, Capítulo 11). Agora é hora de juntar as peças e deixar a firma fazer o que ela faz de melhor: tomar decisões em busca de lucro. A questão central é: **como a firma escolhe quanto produzir?** Parece simples — quase ingênua —, mas a resposta que a microeconomia oferece é como um fio de Ariadne que conecta a decisão solitária de um empresário a toda a arquitetura do equilíbrio de mercado estudada no Capítulo 13.[^dead-parrot-firma]

A resposta padrão da microeconomia — maximização de lucro — exige que examinemos as condições de primeira e segunda ordem, a relação entre receita marginal e elasticidade da demanda, a decisão de operar ou fechar no curto prazo e as propriedades da função lucro. O elegante Lema de Hotelling, análogo ao Lema de Shephard nos custos, conecta a função lucro diretamente às funções de oferta e demanda por insumos. Esses resultados formam o esqueleto da teoria competitiva: sem compreendê-los, não é possível analisar como o mercado agrega decisões individuais em equilíbrio — nem como o poder de mercado estudado no Capítulo 15 (monopólio) distorce esses resultados.

Mas antes de mergulhar na análise formal, vale perguntar: **por que existem firmas?** A resposta pioneira de Ronald Coase (1937) — custos de transação — permanece central e nos lembra que a "caixa-preta" da firma esconde uma rica estrutura organizacional. Coase argumentou que a firma é uma resposta às imperfeições do mecanismo de preços: quando coordenar via mercado é custoso, a hierarquia interna se torna mais eficiente. Esse insight, publicado há quase 90 anos, continua gerando pesquisa de fronteira — da teoria dos contratos (Hart e Holmström, Nobel 2016) à economia organizacional computacional. No contexto brasileiro, onde micro e pequenas empresas (MPEs) representam a esmagadora maioria dos negócios e enfrentam taxas de mortalidade empresarial elevadas, a teoria da firma ganha contornos particularmente concretos: a decisão entre fazer e comprar, entre formalizar e permanecer informal, entre crescer e manter-se pequeno, é tomada diariamente por milhões de empreendedores que, sem saber, são atores do modelo que este capítulo apresenta.[^hotelling-magia]

[^dead-parrot-firma]: O sketch do Dead Parrot dos Monty Python é, sem querer, uma masterclass sobre a teoria da firma. O dono da pet shop insiste que o papagaio morto está "descansando" — uma assimetria de informação pura entre vendedor e comprador. Mas o que torna o sketch genial do ponto de vista econômico é que o comprador volta à *mesma loja*: os custos de transação de encontrar outra pet shop são altos o suficiente para justificar a reclamação em vez da busca. Coase ficaria orgulhoso. ("This parrot is no more! It has ceased to be! It's expired and gone to meet its maker!")

[^hotelling-magia]: Hotelling e Shephard são os Penn & Teller da microeconomia: o truque parece mágica, mas é só cálculo. A diferença é que Penn & Teller revelam o truque no final — e Hotelling também, desde que você saiba derivar.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 12.1 | Por que a firma existe — por que não contratamos tudo pelo mercado? | Coase, custos de transação, natureza da firma | [Natureza da Firma](natureza-firma.md) |
| 12.2 | Como a firma decide quanto produzir? | Maximização de lucro, CPO e CSO | [Maximização](maximizacao.md#122) |
| 12.3 | Por que a receita marginal é menor que o preço quando a firma tem poder de mercado? | Receita marginal, elasticidade e markup | [Receita](maximizacao.md#123) |
| 12.4 | Quando vale a pena fechar as portas em vez de operar no prejuízo? | Oferta de curto prazo, ponto de fechamento | [Oferta CP](oferta.md) |
| 12.5 | Dá para extrair oferta e demanda por insumos apenas da função lucro? | Função lucro, Lema de Hotelling | [Função Lucro](funcao-lucro.md#125) |
| 12.6 | Como o preço do insumo afeta quanto a firma contrata? | Demanda por insumos, estática comparativa | [Insumos](funcao-lucro.md#126) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade de Sala — Mercado de Limonada: Operar ou Fechar?"

    **Formato:** Simulação com papéis + debate estruturado (30–40 min)

    **Objetivo:** Vivenciar a decisão de shutdown e construir a curva de oferta de curto prazo a partir de decisões individuais.

    **Preparação (professor):**

    - Imprima fichas de "firma" com estruturas de custo diferentes (CF e CV variados).
    - Prepare 15–20 fichas com custos fixos entre R$ 20–80 e custos variáveis entre R$ 2–8 por unidade.
    - Prepare cartões de "preço de mercado" (R$ 3, R$ 5, R$ 7, R$ 10, R$ 15).

    **Rodada 1 — Decisão individual (10 min):**

    1. Cada aluno recebe uma ficha de firma com CF, CV(q) e capacidade máxima.
    2. O professor anuncia o preço de mercado (comece com p = R$ 5).
    3. Cada aluno decide: (a) produzir — e quanto; (b) fechar.
    4. Registra decisão e calcula lucro/prejuízo.

    **Rodada 2 — Variação de preço (10 min):**

    1. Repita com p = R$ 3 (muitas firmas devem fechar) e p = R$ 15 (todas operam).
    2. Monte no quadro a tabela: preço vs. número de firmas operando vs. quantidade total.
    3. Conecte os pontos: *isso é a curva de oferta de mercado*.

    **Rodada 3 — Choque de custo (5 min):**

    1. Anuncie: "O aluguel (CF) de todos dobrou." Repita a decisão com p = R$ 7.
    2. Pergunte: "O que mudou na decisão de curto prazo?" (Resposta esperada: nada — CF não afeta shutdown.)
    3. Agora anuncie: "O custo dos insumos (CV) dobrou." Repita. Agora a decisão muda.

    **Debrief (10 min):**

    - Por que firmas com prejuízo continuaram operando? (Porque $p > \mathrm{CVMe}_{\min}$)
    - Por que o aumento do CF não mudou a decisão de curto prazo? (Sunk cost!)
    - Conecte com o Black Knight dos Monty Python: "Tis but a scratch!" — o cavaleiro continua lutando porque os braços já foram perdidos (sunk cost), mas a decisão racional seria avaliar apenas o que resta.
    - Conecte com dados reais: mortalidade de MPEs no Brasil (SEBRAE).

    **Variante avançada:** Adicione uma "rodada de longo prazo" onde alunos podem trocar suas fichas de firma (entrada/saída). Observe a convergência para lucro zero.
