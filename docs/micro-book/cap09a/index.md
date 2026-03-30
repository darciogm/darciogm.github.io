# Capítulo 9a — Pedra, Papel, Nash

Até aqui, os agentes do nosso livro viviam em solidão confortável. O consumidor maximizava utilidade olhando apenas para preços e renda — sem se preocupar com o que os outros consumidores faziam. A firma igualava custo marginal ao preço de mercado sem pensar nos concorrentes. Cada um no seu canto, todos tomadores de preço.

A partir deste capítulo, essa inocência acaba. No mundo real, a Ambev fixa o preço da cerveja pensando no que a Heineken vai fazer. O candidato à presidência monta sua plataforma olhando as pesquisas do adversário. A Petrobras decide quanto produzir considerando a reação da OPEP. Em todos esses casos, o resultado para cada jogador depende do que *todos* os jogadores fazem — e cada um sabe que os outros estão pensando a mesma coisa. Bem-vindo à **teoria dos jogos**.

A **teoria dos jogos** é o ramo da matemática e da economia que estuda a tomada de decisão em ambientes de **interdependência estratégica**. Sua genealogia intelectual remonta a Émile Borel (1921), que formulou os primeiros jogos de soma zero, mas é a obra monumental de Von Neumann e Morgenstern — *Theory of Games and Economic Behavior* (1944) — que lança os alicerces formais da disciplina. A grande ruptura conceitual veio com o trabalho de doutorado de John Nash em Princeton (1950, 1951): ao introduzir o conceito de equilíbrio que leva seu nome, Nash generalizou a análise de jogos soma-zero para jogos de soma não nula com qualquer número de jogadores. Reinhard Selten (1965) e John Harsanyi (1967–68) refinaram e estenderam o aparato de Nash para jogos dinâmicos e jogos com informação incompleta, respectivamente — contribuições que, juntas com as de Nash, valeram o Prêmio Nobel de Economia de 1994. Paralelamente, os economistas industriais Antoine-Augustin Cournot (1838), Joseph Bertrand (1883) e Heinrich von Stackelberg (1934) já haviam formulado modelos de oligopólio que, quando reinterpretados pela linguagem da teoria dos jogos, revelaram ser casos especiais do equilíbrio de Nash. A teoria dos jogos revolucionou a microeconomia e se tornou ferramenta indispensável em campos tão diversos quanto organização industrial, economia política, relações internacionais e biologia evolutiva.

Este módulo apresenta os jogos **estáticos** (simultâneos) com **informação completa**: todos os jogadores conhecem a estrutura do jogo — payoffs, estratégias disponíveis e número de jogadores — e escolhem suas ações ao mesmo tempo, sem observar as decisões dos demais. O conceito central de solução é o **equilíbrio de Nash**, e as principais aplicações são os modelos clássicos de oligopólio (Cournot, Bertrand e Stackelberg). Os módulos seguintes (9b–9d) generalizam progressivamente: 9b introduz a dimensão temporal (jogos dinâmicos com informação completa), enquanto 9c e 9d incorporam assimetria de informação — território onde os conceitos deste módulo servem de âncora para refinamentos mais sofisticados.

!!! note "Estrutura do Capítulo 9"
    A teoria dos jogos é dividida em quatro módulos, seguindo a taxonomia de Gibbons (1992):

    | Módulo | Informação | Timing | Conceito de equilíbrio |
    |:-------|:-----------|:-------|:----------------------|
    | **9a** (este) | Completa | Estático | Equilíbrio de Nash |
    | [9b](../cap09b/index.md) | Completa | Dinâmico | Equilíbrio Perfeito em Subjogos |
    | [9c](../cap09c/index.md) | Incompleta | Estático | Equilíbrio Bayesiano de Nash |
    | [9d](../cap09d/index.md) | Incompleta | Dinâmico | Equilíbrio Bayesiano Perfeito |

---

## Roteiro do Capítulo

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 9a.1 | O que define um "jogo" e quando posso descartar estratégias sem pensar? | Forma normal, forma extensiva, dominância, EIED | [Estratégias dominantes](estrategias-dominantes.md) |
| 9a.2 | Por que dois mafiosos racionais confessam — e o que isso tem a ver com postos de gasolina? | Dilema dos Prisioneiros, taxonomia dos jogos clássicos | [Estratégias dominantes](estrategias-dominantes.md) |
| 9a.3 | Se ninguém quer mudar, estamos no equilíbrio? | Equilíbrio de Nash, Batalha dos Sexos, Hawk-Dove | [Equilíbrio de Nash](nash.md) |
| 9a.4 | Quando jogar cara ou coroa é a melhor estratégia? | Estratégias mistas, princípio da indiferença, Teorema de Nash | [Estratégias mistas](estrategias-mistas.md) |
| 9a.5 | Quanto cerveja a Ambev deve produzir se a Heineken está olhando? | Cournot, Bertrand, Stackelberg, paradoxo de Bertrand | [Oligopólio](oligopolio.md) |
| **Exercícios** | Teste, pratique, resolva | Atividades, revisão, exercícios resolvidos e propostos, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |
