# Capítulo 22 — RCTs, Diff-in-Diff e Outras Siglas que Mudaram a Economia

Se a microeconomia é uma ciência, onde estão os experimentos? Durante a maior parte do século XX, a resposta era desanimadora: economistas observavam o mundo, construíam modelos elegantes, mas raramente testavam suas previsões em ambientes controlados. A economia era considerada uma ciência *observacional*, como a astronomia — incapaz de manipular variáveis para identificar relações causais. Essa limitação não era apenas metodológica; era conceitual. Se não podemos realizar experimentos controlados, como distinguir correlação de causalidade? Como saber se o salário mínimo *causa* desemprego, ou se ambos respondem a um terceiro fator? Como testar se as pessoas realmente maximizam utilidade, ou se os leilões de fato convergem ao equilíbrio previsto pela teoria?[^inquisition]

[^inquisition]: *"Nobody expects the Spanish Inquisition!"* No célebre sketch de Monty Python, toda vez que alguém faz uma pergunta difícil, os inquisidores irrompem pela porta com uma lista de "armas" que muda a cada aparição — surpresa, medo, eficiência implacável... e "an almost fanatical devotion to the Pope". A economia experimental opera sob lógica semelhante: toda vez que um economista assume que uma hipótese-chave é satisfeita ("exogeneidade!", "preferências estáveis!", "informação perfeita!"), um experimentalista irrompe pela porta com dados mostrando que a hipótese falha. *Nobody expects the exogeneity assumption to hold!* — e a lista de armas do experimentalista (RCTs, diff-in-diff, RDD, IV) também muda conforme a situação.

A economia experimental nasceu para responder essas perguntas. Em pouco mais de meio século, a disciplina passou de curiosidade marginal a ferramenta central da pesquisa econômica, premiada com três Prêmios Nobel (2002, 2019, 2021) e adotada por governos, ONGs e empresas em todo o mundo. Este capítulo complementa o Capítulo 8 (Economia Comportamental), que tratou dos *resultados* — os vieses e heurísticas que desafiam o modelo do agente racional. Aqui, o foco está nos *métodos*: como economistas desenham, conduzem e interpretam experimentos para testar teorias e avaliar políticas públicas.

O capítulo percorre quatro grandes tradições experimentais. Os **experimentos de laboratório** (Seção 22.2), herdeiros do trabalho pioneiro de Vernon Smith, trazem participantes a ambientes controlados com incentivos monetários reais para testar previsões teóricas — dos jogos do ultimato ao leilão de dupla. Os **experimentos de campo** (Seção 22.3) levam o controle experimental ao mundo real, preservando o contexto natural das decisões econômicas. Os **ensaios controlados randomizados** (RCTs, Seção 22.4), popularizados pelo J-PAL de Banerjee e Duflo, avaliam políticas públicas em larga escala com a mesma lógica dos ensaios clínicos na medicina. E os **experimentos naturais** (Seção 22.5) exploram variações exógenas que a história ou a política proporcionam, permitindo inferência causal sem manipulação experimental deliberada — a "revolução da credibilidade" que transformou a econometria aplicada.

A cada etapa, conectamos a metodologia experimental com os modelos teóricos desenvolvidos ao longo do livro: teoria dos jogos (Capítulos 9a–9d), bens públicos (Capítulo 20), mercado de trabalho (Capítulo 17), leilões (Capítulo 9c), informação assimétrica (Capítulo 19) e economia comportamental (Capítulo 8). O resultado é uma visão integrada de como a microeconomia moderna produz conhecimento — combinando teoria formal, evidência empírica e desenho institucional.

A literatura acadêmica sobre economia experimental é vasta. As referências centrais são Smith (1962) para o leilão de dupla e a teoria do valor induzido, Harrison e List (2004) para a taxonomia de experimentos de campo, Banerjee, Duflo e Kremer (trabalhos diversos) para RCTs em desenvolvimento, Card e Krueger (1994) para experimentos naturais, e Camerer et al. (2016) para a crise de replicação. Para tratamentos de livro-texto, ver Kagel e Roth (1995), Friedman e Cassar (2004) e Duflo, Glennerster e Kremer (2007).

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Tópico | Página |
|:------|:-------|:-------|
| 22.1 | [Por Que Experimentar?](experimentacao-lab.md#221) | [→](experimentacao-lab.md#221) |
| 22.2 | [Experimentos de Laboratório](experimentacao-lab.md#222) | [→](experimentacao-lab.md#222) |
| 22.3 | [Experimentos de Campo](campo-rcts.md#223) | [→](campo-rcts.md#223) |
| 22.4 | [Ensaios Controlados Randomizados](campo-rcts.md#224) | [→](campo-rcts.md#224) |
| 22.5 | [Experimentos Naturais e Quase-Experimentos](naturais-mecanismos-limites.md#225) | [→](naturais-mecanismos-limites.md#225) |
| 22.6 | [Desenho de Mecanismos Experimentais](naturais-mecanismos-limites.md#226) | [→](naturais-mecanismos-limites.md#226) |
| 22.7 | [Limites e Controvérsias](naturais-mecanismos-limites.md#227) | [→](naturais-mecanismos-limites.md#227) |
| | [Exercícios e ANPEC](exercicios.md) | [→](exercicios.md) |
| | [Pesquisa em Ação](pesquisa.md) | [→](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — Leilão de Dupla ao Vivo"

    **Formato:** Experimento de mercado (pit market) à la Vernon Smith
    **Duração:** 40–50 minutos (10 preparação + 20 rodadas + 10 debrief)
    **Material:** Fichas coloridas (azul = compradores, vermelha = vendedores), quadro para registro de preços.

    **Preparação (10 min):**

    - Divida a turma em dois grupos iguais: **Compradores** e **Vendedores**.
    - Cada Comprador recebe uma ficha azul com um **valor de resgate** secreto (e.g., R$ 4, R$ 8, R$ 12, R$ 16, R$ 20 — distribuídos aleatoriamente).
    - Cada Vendedor recebe uma ficha vermelha com um **custo de produção** secreto (e.g., R$ 2, R$ 6, R$ 10, R$ 14, R$ 18).
    - Explique: "Compradores, vocês ganham (valor − preço pago) se comprarem. Vendedores, vocês ganham (preço recebido − custo) se venderem. Ninguém é obrigado a negociar."
    - Desenhe no quadro as curvas de oferta e demanda **teóricas** (que os alunos não conhecem), marcando o preço e a quantidade de equilíbrio.

    **Fase 1 — Negociação livre (rodadas 1–3, 10 min):**

    - Compradores e vendedores circulam pela sala e negociam bilateralmente.
    - Cada transação é registrada no quadro (preço e identidades).
    - **Resultado esperado:** Preços dispersos, eficiência baixa (~70–80%). Replica o resultado de Chamberlin (1948).

    **Fase 2 — Leilão de dupla (rodadas 4–8, 10 min):**

    - Mude o mecanismo: compradores anunciam lances ("compro por R$ X!") e vendedores anunciam ofertas ("vendo por R$ Y!"). Transação ocorre quando um lance iguala ou supera uma oferta.
    - Registre cada transação no quadro.
    - **Resultado esperado:** Preços convergem para o equilíbrio competitivo em 2–3 rodadas. Eficiência sobe para 95%+. Replica o resultado de Smith (1962).

    **Debrief (10 min):**

    1. Revele as curvas de oferta e demanda teóricas. Compare com os preços observados.
    2. Pergunte: *"Por que a Fase 2 convergiu e a Fase 1 não?"* → O mecanismo importa (transparência de preços, competição aberta).
    3. Pergunte: *"Alguém com custo alto vendeu? Alguém com valor baixo comprou?"* → Seleção pelo mercado.
    4. Pergunte: *"Quantas transações deveriam ter ocorrido? Quantas de fato ocorreram?"* → Eficiência de mercado.
    5. Conecte com: equilíbrio competitivo (Cap. 13), teoria do valor induzido (Seção 22.2), e a questão de por que mercados funcionam com tão poucos participantes.

    **Conexão com o capítulo:** Seções 22.1 (motivação), 22.2 (valor induzido e leilão de dupla). Inspirado em Smith (1962) e Holt (2007, Cap. 1).
