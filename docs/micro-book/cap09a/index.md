# Capítulo 9a — Jogos Estáticos com Informação Completa

Nos capítulos anteriores, os agentes econômicos tomavam decisões considerando preços de mercado como dados — cada consumidor ou firma era suficientemente pequeno para que suas ações individuais não afetassem o ambiente dos demais. O consumidor do Capítulo 2 maximizava utilidade sujeito a uma restrição orçamentária cujos preços eram exógenos; a firma competitiva do Capítulo 6 igualava custo marginal ao preço de mercado tomado como dado. Essa hipótese de tomador de preço (price-taker) deixa de ser razoável em muitas situações de interesse prático: oligopólios, negociações salariais, leilões, disputas comerciais entre países, competição eleitoral e interações regulatórias. Em todos esses contextos, o resultado para cada agente depende não apenas de suas próprias ações, mas também das ações escolhidas pelos outros agentes — e cada um sabe que os demais raciocinam da mesma forma.

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

## 9a.1 Conceitos Básicos

Antes de analisar qualquer jogo específico, é necessário estabelecer a linguagem formal que nos permitirá representar, comparar e resolver situações de interação estratégica. Assim como a teoria do consumidor parte da definição precisa de preferências e restrições orçamentárias (Capítulo 2), e a teoria da firma parte das tecnologias de produção e funções de custo (Capítulo 6), a teoria dos jogos parte da descrição completa do ambiente estratégico — quem são os jogadores, o que cada um pode fazer e como cada combinação de ações afeta o bem-estar de todos. Essa descrição é capturada por duas representações complementares: a forma normal (ou estratégica) e a forma extensiva. A escolha entre elas não é arbitrária: jogos estáticos como os desta seção se representam naturalmente na forma normal (uma matriz); jogos sequenciais como os do Módulo 9b se representam na forma extensiva (uma árvore).

!!! definition "Jogo na forma normal (ou estratégica)"
    Um jogo na **forma normal** é definido pela tripla \(\Gamma = \langle N, (S_i)_{i \in N}, (u_i)_{i \in N} \rangle\), onde:

    - \(N = \{1, 2, \ldots, n\}\) é o conjunto finito de **jogadores**.
    - \(S_i\) é o conjunto de **estratégias** disponíveis para o jogador \(i\). O perfil de estratégias é \(s = (s_1, s_2, \ldots, s_n) \in S = S_1 \times S_2 \times \cdots \times S_n\).
    - \(u_i: S \to \mathbb{R}\) é a função de **payoff** (utilidade) do jogador \(i\), que associa a cada perfil de estratégias um resultado para \(i\).

!!! definition "Jogo na forma extensiva"
    Um jogo na **forma extensiva** é representado por uma árvore de decisão que especifica:

    - A ordem cronológica das jogadas.
    - Os conjuntos de informação de cada jogador (o que cada um sabe quando decide).
    - As ações disponíveis em cada nó de decisão.
    - Os payoffs nos nós terminais.
    - A distribuição de probabilidade nos nós da natureza (se houver).

    A forma extensiva é especialmente útil para jogos **sequenciais** (Módulo 9b) e jogos com **informação imperfeita**.

Com essas duas representações em mãos, podemos definir os conceitos que serão utilizados ao longo de todo o capítulo. Quais são os ingredientes mínimos que um jogador racional precisa considerar ao tomar uma decisão? A resposta passa pelas noções de estratégia, dominância e melhor resposta. É importante distinguir o conceito de *estratégia* do conceito de *ação*: em jogos estáticos as duas noções coincidem, mas em jogos dinâmicos (Módulo 9b) uma estratégia é um plano completo que especifica a ação do jogador em *cada* nó de decisão — inclusive aqueles que não são alcançados no equilíbrio. Essa distinção, aparentemente pedante, tem consequências profundas para o refinamento de equilíbrios.

### 🔑 Conceitos auxiliares

- **Estratégia pura**: uma escolha determinística de ação, \(s_i \in S_i\).
- **Estratégia mista**: uma distribuição de probabilidade sobre as estratégias puras, \(\sigma_i \in \Delta(S_i)\).
- **Estratégia dominante**: \(s_i^*\) é (estritamente) dominante se \(u_i(s_i^*, s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_i \neq s_i^*\) e todo \(s_{-i} \in S_{-i}\).
- **Estratégia dominada**: \(s_i\) é dominada se existe \(s_i'\) tal que \(u_i(s_i', s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_{-i}\).
- **Notação \(s_{-i}\)**: perfil de estratégias de todos os jogadores *exceto* \(i\), ou seja, \(s_{-i} = (s_1, \ldots, s_{i-1}, s_{i+1}, \ldots, s_n)\).

!!! definition "Estratégia Dominante"
    A estratégia \(s_i^* \in S_i\) é **estritamente dominante** para o jogador \(i\) se, para toda estratégia alternativa \(s_i \in S_i\) com \(s_i \neq s_i^*\) e para todo perfil de estratégias dos demais jogadores \(s_{-i} \in S_{-i}\):

    \[
    u_i(s_i^*, s_{-i}) > u_i(s_i, s_{-i})
    \]

    Ou seja, \(s_i^*\) é estritamente ótima **independentemente** do que os outros jogadores façam. Um jogador racional sempre joga sua estratégia dominante quando ela existe — e, se todos os jogadores têm estratégia dominante, a solução do jogo é trivial.

    A estratégia dominante é **fracamente** dominante se a desigualdade for \(\geq\) (em vez de \(>\)) e estrita em ao menos um perfil \(s_{-i}\).

### Eliminação Iterada de Estratégias Dominadas (EIED)

A noção de dominância já sugere um primeiro método de solução. Se um jogador racional jamais escolheria uma estratégia estritamente dominada, e se todos sabem que todos são racionais (e que todos sabem que todos são racionais, *ad infinitum* — a condição de **conhecimento comum de racionalidade**), então é possível eliminar essas estratégias e simplificar o jogo. Repetindo esse raciocínio — agora no jogo reduzido — chega-se ao procedimento de Eliminação Iterada de Estratégias Estritamente Dominadas (EIED).

Este é um procedimento de solução que não requer o conceito de equilíbrio: elimine, iterativamente, as estratégias estritamente dominadas de cada jogador. O conjunto de estratégias que sobrevive a todas as rodadas de eliminação é o conjunto de **estratégias racionalizáveis**. Quando a EIED leva a um único perfil de estratégias, dizemos que o jogo é **dominância-solucionável** — o resultado decorre apenas da hipótese de racionalidade sem necessidade de coordenação de expectativas. O Dilema dos Prisioneiros é o exemplo canônico: trair domina cooperar para ambos os jogadores, e a EIED resolve o jogo em uma única rodada. Nos mercados financeiros, esse raciocínio embasou a crítica de Milgrom e Stokey (1982) ao paradoxo do não-comércio: se os preços de mercado revelam informação, é difícil que ambos os lados de uma transação acreditem, simultaneamente, estar em vantagem.

!!! warning "Ordem de eliminação"
    Para estratégias **estritamente** dominadas, o resultado da EIED independe da ordem de eliminação. Para estratégias **fracamente** dominadas, a ordem pode afetar o conjunto sobrevivente — um resultado frequentemente cobrado em provas da ANPEC.

---

## 9a.2 Dilema dos Prisioneiros

Com a linguagem formal estabelecida, podemos agora examinar os jogos que deram forma à teoria. Começamos pelo mais influente de todos — um jogo tão simples que pode ser descrito em uma frase, mas tão profundo que suas implicações permeiam a economia, a ciência política e a biologia.

O **Dilema dos Prisioneiros** é possivelmente o jogo mais célebre da teoria dos jogos. A história da sua criação é ela mesma fascinante: formulado em 1950 por Merrill Flood e Melvin Dresher no laboratório RAND, e batizado pelo matemático Albert Tucker (orientador de Nash) ao apresentá-lo para uma plateia de psicólogos em Stanford, o Dilema dos Prisioneiros captura, com elegância mínima, a tensão estrutural entre interesse individual e bem coletivo. Dois suspeitos são interrogados separadamente e cada um pode cooperar (ficar calado) ou trair (delatar o outro). A narrativa da prisão é apenas um disfarce: a mesma estrutura de payoffs aparece na corrida armamentista entre países, na concorrência predatória entre firmas, na tragédia dos comuns e na guerra fiscal entre estados brasileiros. É precisamente essa universalidade que torna o Dilema dos Prisioneiros o caso de teste obrigatório para qualquer teoria de comportamento estratégico.

<a id="tabela-9a-1"></a>

|  | Jogador 2: Cooperar | Jogador 2: Trair |
|:---|:---:|:---:|
| **Jogador 1: Cooperar** | \((-1, -1)\) | \((-10, 0)\) |
| **Jogador 1: Trair** | \((0, -10)\) | \((-5, -5)\) |

<div class="caption-obj" markdown>
**Tabela 9a.1 — Dilema dos Prisioneiros.**
</div>

A estrutura de payoffs satisfaz: \(T > R > P > S\) (onde \(T\) = tentação, \(R\) = recompensa mútua, \(P\) = punição, \(S\) = *sucker's payoff*), com a condição adicional \(2R > T + S\). Essa parametrização não é arbitrária: a desigualdade \(T > R\) garante que trair seja tentador quando o outro coopera; \(R > P\) garante que a cooperação mútua seja preferível à traição mútua; e \(P > S\) garante que ser traído enquanto se coopera é o pior resultado possível. A condição \(2R > T + S\) assegura que a cooperação mútua gera mais valor total do que a alternância entre traição e cooperação.

Cada jogador tem uma **estratégia estritamente dominante**: Trair. O equilíbrio (Trair, Trair) com payoffs \((-5, -5)\) é o único equilíbrio de Nash, mas é **Pareto-dominado** pelo resultado (Cooperar, Cooperar) com payoffs \((-1, -1)\). Essa tensão entre racionalidade individual e eficiência coletiva é o cerne do dilema. Vale notar que o resultado (Cooperar, Cooperar), embora superior para ambos, *não* é um equilíbrio de Nash: cada jogador teria incentivo unilateral para desviar e trair. O equilíbrio de Nash é um ponto de estabilidade — ninguém deseja mover-se sozinho — mas estabilidade não implica eficiência.

!!! warning "Cuidado"
    **Equilíbrio de Nash ≠ resultado ótimo.** O Dilema dos Prisioneiros demonstra, de forma definitiva, que o equilíbrio de Nash pode ser **Pareto-dominado**: existe outro resultado factível em que *todos* os jogadores estão melhor, mas esse resultado não é sustentável pela racionalidade individual.

    Em linguagem econômica: o equilíbrio de Nash é uma condição de **estabilidade** (ninguém quer desviar unilateralmente), não de **eficiência** (ninguém poderia estar melhor sem prejudicar alguém). As duas propriedades coincidem em mercados perfeitamente competitivos (Primeiro Teorema do Bem-Estar, Capítulo 7), mas divergem em situações de externalidades, poder de mercado ou interação estratégica. A distinção importa na prática: reguladores como o CADE, ao reprimir cartéis, estão precisamente forçando a transição de um equilíbrio de Nash eficiente para as firmas (conluio) para um equilíbrio menos lucrativo para elas, mas superior do ponto de vista do bem-estar social.

    **Outros exemplos de EN Pareto-dominados:** corrida armamentista entre nações (ambas estariam melhor sem armas, mas nenhuma quer desarmar sozinha), propaganda excessiva em mercados oligopolísticos (anular a publicidade do rival é sempre dominante, mesmo que ambas as firmas preferissem cortar gastos de marketing), e tragédia dos comuns na exploração de recursos pesqueiros.

!!! idea "Intuição Econômica"
    **Em uma frase:** No Dilema dos Prisioneiros, cada um faz o melhor para si e o resultado é ruim para todos.

    **Pense assim:** Dois quiosques vizinhos na praia de Copacabana poderiam manter preços altos e lucrar bem. Mas cada um pensa: "se eu baixar o preço, roubo os clientes do vizinho". Ambos baixam, ambos lucram menos — e nenhum consegue voltar atrás sozinho.

    **Por que isso importa:** A guerra fiscal entre estados brasileiros, os cartéis de postos de gasolina e o desmatamento da Amazônia são versões reais desse dilema — situações em que o interesse individual corrói o bem coletivo. A repetição do jogo (Módulo 9b) e o desenho institucional são os mecanismos para escapar da armadilha.

!!! note "Relevância do Dilema dos Prisioneiros"
    O Dilema dos Prisioneiros aparece em inúmeros contextos econômicos: corrida armamentista entre nações, concorrência predatória entre firmas, tragédia dos comuns na exploração de recursos naturais e guerra fiscal entre entes federativos (como veremos no Box Brasil deste capítulo). A compreensão desse jogo é fundamental para o desenho de mecanismos e instituições que alinhem incentivos individuais e coletivos.

<iframe src="../graficos/cap09/matriz-payoffs.html" title="Figura 9a.1 — Matriz de payoffs e equilíbrio de Nash" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.1 — Matriz de payoffs e equilíbrio de Nash.** Edite os payoffs ou selecione um jogo clássico (Dilema dos Prisioneiros, Batalha dos Sexos, Hawk-Dove, Matching Pennies). O solver detecta estratégias dominantes, equilíbrios de Nash em puras e mistas.
</div>

O Dilema dos Prisioneiros não é, contudo, o único arquétipo de interação estratégica. Diferentes configurações de payoffs capturam problemas econômicos fundamentalmente distintos — coordenação, anti-coordenação, competição pura. A [Tabela 9a.2](#tabela-9a-2) sistematiza os jogos clássicos que servirão de referência ao longo dos quatro módulos de teoria dos jogos.

### Taxonomia dos Jogos Clássicos

<a id="tabela-9a-2"></a>

| Jogo | Payoffs (genéricos) | EN em puras | EN em mistas | Característica | Aplicação |
|:-----|:-------------------|:------------|:------------|:---------------|:----------|
| **Dilema dos Prisioneiros** | \(T > R > P > S\); \(2R > T+S\) | (Trair, Trair) — único | — | Dominância estrita; ineficiência | Cartéis, corrida armamentista |
| **Batalha dos Sexos** | Coordenação com preferências divergentes | (F,F) e (C,C) | \(\sigma_1=(3/4, 1/4)\), \(\sigma_2=(1/4, 3/4)\) | Múltiplos equilíbrios | Padrões tecnológicos |
| **Hawk-Dove** | \(V>0\), \(C > V\) | (H,D) e (D,H) | \(p_H = V/C\) | Anti-coordenação | Disputas territoriais |
| **Coordenação Pura** | Payoffs altos na diagonal | (A,A) e (B,B) | Sim (instável) | Seleção de equilíbrio | Convenções sociais |
| **Matching Pennies** | Soma zero; interesses opostos | Nenhum | \((1/2, 1/2)\) cada | Jogo estritamente competitivo | Estratégias militares, esportes |

<div class="caption-obj" markdown>
**Tabela 9a.2 — Taxonomia dos jogos clássicos.**
</div>

---

## 9a.3 Equilíbrio de Nash

Os exemplos da seção anterior revelam que nem todo jogo possui estratégias dominantes. Na Batalha dos Sexos, por exemplo, a melhor ação de cada jogador depende do que o outro faz — não há uma escolha que seja ótima "contra tudo". Como prever o resultado de um jogo quando nenhuma estratégia é obviamente superior? É aqui que entra o conceito mais importante da teoria dos jogos: o equilíbrio de Nash.

A chave é substituir o critério de dominância absoluta por um critério de **consistência mútua de expectativas**. Em vez de exigir que uma estratégia seja a melhor *contra tudo*, o equilíbrio de Nash exige apenas que seja a melhor *contra o que os outros efetivamente escolhem*. Essa mudança de perspectiva — de dominância absoluta para consistência mútua — é o salto conceitual que permitiu a Nash generalizar a análise para qualquer jogo. John Nash formulou esse conceito em sua tese de doutorado em Princeton, defendida em 1950 sob orientação de Albert Tucker, com apenas 28 páginas — um dos trabalhos mais concisos e impactantes da história da ciência econômica. A ideia central é que um equilíbrio é um perfil de estratégias que se *sustenta a si próprio*: se cada jogador acredita que os demais jogarão as estratégias de equilíbrio, então é de fato ótimo para ele jogar sua estratégia de equilíbrio — e a crença se confirma.

Essa propriedade de auto-sustentação tem uma leitura econômica poderosa: o equilíbrio de Nash é uma **previsão estável** de como agentes racionais e informados jogarão. Não é necessário supor que os jogadores se comuniquem ou façam acordos vinculantes — basta que cada um raciocine corretamente sobre o comportamento dos demais. Em mercados financeiros, os preços de ativos tendem a refletir equilíbrios de Nash entre investidores que simultaneamente tentam explorar desvios de preços e, ao fazê-lo, os eliminam. Em leilões (Capítulo 9c), os lances de equilíbrio são funções das informações privadas de cada participante que formam um equilíbrio bayesiano — generalização direta do conceito de Nash.

!!! definition "Equilíbrio de Nash (estratégias puras)"
    Um perfil de estratégias \(s^* = (s_1^*, s_2^*, \ldots, s_n^*)\) é um **Equilíbrio de Nash** se, para todo jogador \(i \in N\):

    \[
    u_i(s_i^*, s_{-i}^*) \geq u_i(s_i, s_{-i}^*) \quad \forall \; s_i \in S_i
    \label{eq:9a.1} \tag{9a.1}
    \]

    Em palavras: nenhum jogador pode melhorar unilateralmente seu payoff desviando de \(s_i^*\), dado que os demais jogadores mantêm suas estratégias de equilíbrio.

A definição $\eqref{eq:9a.1}$ estabelece um conceito de **consistência mútua de expectativas** (Gibbons, 1992, Cap. 1): se cada jogador espera que os demais joguem suas estratégias de equilíbrio, então é ótimo para ele também jogar sua estratégia de equilíbrio. Ninguém tem incentivo para desviar unilateralmente.

!!! idea "Intuição Econômica"
    **O equilíbrio de Nash como "ausência de arrependimento" (*no-regret*).**

    Uma forma intuitiva e memorável de entender o equilíbrio de Nash: um perfil de estratégias \(s^*\) é um equilíbrio de Nash se e somente se **nenhum jogador, ao revelar o que os outros fizeram, deseja ter escolhido diferente**. Depois de ver as ações de todos os demais, cada jogador confirma: "Dada a escolha dos outros, eu não poderia ter feito melhor."

    Isso distingue o equilíbrio de Nash de um resultado *ex ante* ótimo (que seria o ótimo de Pareto) e de uma estratégia dominante (que é ótima *contra qualquer coisa*). O Nash é o ponto onde expectativas e ações se alinham retroativamente — um estado de **consistência epistêmica**.

    **Cuidado com a interpretação causal.** O equilíbrio de Nash não diz que os jogadores *chegam* a esse ponto por algum processo de aprendizado. Ele descreve o que acontece *se* os jogadores têm expectativas corretas sobre as ações dos demais. Como chegam a ter essas expectativas é questão separada — respondida pelos modelos de aprendizado em jogos (fictitious play, best-response dynamics) que vão além do escopo deste módulo.

!!! info "🏅 Prêmio Nobel — John Nash, John Harsanyi e Reinhard Selten (1994)"

    **John Forbes Nash Jr.** (1928–2015) foi um matemático americano, PhD em Princeton, onde formulou o conceito de equilíbrio que leva seu nome. **John Charles Harsanyi** (1920–2000) foi um economista húngaro-americano, PhD em Stanford, professor em Berkeley. **Reinhard Selten** (1930–2016) foi um economista alemão, PhD em Frankfurt, professor em Bonn.

    **Por que ganharam o Nobel:**
    Premiados por sua análise pioneira de equilíbrios em jogos não cooperativos. Nash demonstrou a existência de pelo menos um equilíbrio em estratégias mistas para todo jogo finito (1950). Harsanyi estendeu a teoria para jogos com informação incompleta, introduzindo o equilíbrio bayesiano (1967–68). Selten refinou o conceito para jogos dinâmicos com o equilíbrio perfeito em subjogos (1965).

    **Conexão com este capítulo:**
    O equilíbrio de Nash — perfil de estratégias em que nenhum jogador pode melhorar unilateralmente — é o conceito central deste capítulo. Toda a análise de jogos estáticos com informação completa se organiza em torno da identificação e interpretação desses equilíbrios.

!!! idea "Intuição Econômica"
    **Em uma frase:** No equilíbrio de Nash, ninguém se arrepende da própria escolha depois de ver o que os outros fizeram.

    **Pense assim:** Pense no trânsito de São Paulo: se todo mundo usa o Waze e escolhe a rota mais rápida, nenhum motorista individual consegue melhorar seu tempo mudando de caminho — porque todas as alternativas já estão igualmente congestionadas. Isso é um equilíbrio de Nash do trânsito (e uma versão do paradoxo de Braess).

    **Por que isso importa:** O conceito de equilíbrio de Nash é a pedra angular da regulação de mercados, do desenho de leilões (como os de espectro da [Anatel](https://www.anatel.gov.br)) e da política antitruste do [CADE](https://www.gov.br/cade). Se quiser prever como firmas se comportarão, procure o Nash.

    **O que Nash *não* garante:** O equilíbrio de Nash não implica eficiência (o Dilema dos Prisioneiros mostra isso), nem unicidade (a Batalha dos Sexos tem três equilíbrios), nem que os jogadores o encontrem de fato. É um conceito de consistência, não de otimalidade.

Para fixar o conceito, vejamos como o equilíbrio de Nash se manifesta em jogos com estruturas distintas. A diferença entre o Dilema dos Prisioneiros (equilíbrio único e ineficiente) e a Batalha dos Sexos (múltiplos equilíbrios e problema de coordenação) ilustra que o conceito de Nash é versátil, mas nem sempre oferece uma previsão única. O procedimento prático para encontrar equilíbrios de Nash em estratégias puras em um jogo finito é direto: para cada perfil de estratégias \((s_i, s_{-i})\), verifique se nenhum jogador pode aumentar seu payoff mudando unilateralmente sua estratégia. Em uma matriz 2×2, isso equivale a marcar a melhor resposta de cada jogador para cada estratégia do oponente (sublinhando o maior payoff em cada coluna para J1 e em cada linha para J2) — as células em que ambos os payoffs estão sublinhados são os equilíbrios de Nash.

### Exemplos clássicos

**Batalha dos Sexos (BoS)**

Dois parceiros querem sair juntos, mas um prefere futebol (F) e o outro prefere cinema (C).

<a id="tabela-9a-3"></a>

|  | Jogador 2: F | Jogador 2: C |
|:---|:---:|:---:|
| **Jogador 1: F** | \((3, 1)\) | \((0, 0)\) |
| **Jogador 1: C** | \((0, 0)\) | \((1, 3)\) |

<div class="caption-obj" markdown>
**Tabela 9a.3 — Batalha dos Sexos.**
</div>

Existem **dois equilíbrios de Nash em estratégias puras**: \((F, F)\) e \((C, C)\), e um em estratégias mistas (derivado na Seção 9a.4). O jogo ilustra o problema de **coordenação** quando existem múltiplos equilíbrios. Diferentemente do Dilema dos Prisioneiros, aqui não há conflito entre racionalidade individual e eficiência coletiva — ambos os equilíbrios em puras são Pareto-eficientes. O problema é outro: como os jogadores se coordenam em um dos equilíbrios sem comunicação prévia? É nesse contexto que os "pontos focais" de Schelling (1960) — soluções que se destacam por saliência cultural, histórica ou contextual — desempenham papel crucial.

**Hawk-Dove (Falcão-Pomba)**

Dois animais (ou firmas) disputam um recurso de valor \(V\). Cada um pode ser agressivo (Hawk, H) ou passivo (Dove, D).

<a id="tabela-9a-4"></a>

|  | Jogador 2: H | Jogador 2: D |
|:---|:---:|:---:|
| **Jogador 1: H** | \(\left(\frac{V-C}{2}, \frac{V-C}{2}\right)\) | \((V, 0)\) |
| **Jogador 1: D** | \((0, V)\) | \(\left(\frac{V}{2}, \frac{V}{2}\right)\) |

<div class="caption-obj" markdown>
**Tabela 9a.4 — Hawk-Dove (Falcão-Pomba).**
</div>

Quando \(C > V\) (custo do conflito excede o valor do recurso), existem dois equilíbrios em puras — \((H, D)\) e \((D, H)\) — e um em mistas. Note que, diferentemente da Batalha dos Sexos, o Hawk-Dove é um jogo de **anti-coordenação**: os equilíbrios em puras envolvem jogadores fazendo escolhas *diferentes* (um agressivo, outro passivo). Em mercados, essa estrutura aparece quando firmas segmentam nichos para evitar concorrência destrutiva. A versão biológica desse jogo (Maynard Smith e Price, 1973) está na origem da **teoria dos jogos evolutiva**, que estuda como populações de agentes convertem para padrões estáveis de comportamento sem assumir racionalidade individual.

---

## 9a.4 Estratégias Mistas

Os exemplos anteriores mostram que alguns jogos — como o Matching Pennies — não possuem equilíbrio em estratégias puras. Se cada jogador precisa escolher uma ação determinística, qualquer que seja a escolha, o outro terá incentivo para desviar. Mas e se os jogadores pudessem randomizar suas ações? Ao introduzir a possibilidade de aleatorização, Nash não apenas resolveu o problema de inexistência como provou um resultado de abrangência extraordinária: *todo* jogo finito possui pelo menos um equilíbrio. Essa é a contribuição central da estratégia mista.

!!! definition "Estratégia mista"
    Uma **estratégia mista** para o jogador \(i\) é uma distribuição de probabilidade \(\sigma_i \in \Delta(S_i)\) sobre o conjunto de estratégias puras \(S_i\). Se \(S_i = \{s_i^1, s_i^2, \ldots, s_i^{m_i}\}\), então:

    \[
    \sigma_i = (p_i^1, p_i^2, \ldots, p_i^{m_i}), \quad p_i^k \geq 0, \quad \sum_{k=1}^{m_i} p_i^k = 1
    \]

    O payoff esperado do jogador \(i\) sob o perfil de estratégias mistas \(\sigma = (\sigma_1, \ldots, \sigma_n)\) é:

    \[
    U_i(\sigma) = \sum_{s \in S} \left(\prod_{j=1}^{n} \sigma_j(s_j)\right) u_i(s)
    \label{eq:9a.2} \tag{9a.2}
    \]

### Princípio da indiferença

Como encontrar as probabilidades de equilíbrio? A chave é um resultado que, à primeira vista, parece contra-intuitivo: em equilíbrio misto, cada jogador escolhe suas probabilidades não para maximizar seu *próprio* payoff, mas de forma a tornar o *oponente* indiferente entre suas opções. Afinal, se o oponente não fosse indiferente, ele escolheria uma ação com certeza — e não randomizaria.

Em um equilíbrio em estratégias mistas, cada jogador randomiza de tal forma que os outros jogadores ficam **indiferentes** entre as estratégias puras que recebem probabilidade positiva. Formalmente, se \(\sigma_i^*\) atribui probabilidade positiva a \(s_i^k\), então:

\[
U_i(s_i^k, \sigma_{-i}^*) = U_i(s_i^l, \sigma_{-i}^*) \quad \text{para todo } s_i^l \text{ com } \sigma_i^*(s_i^l) > 0
\label{eq:9a.3} \tag{9a.3}
\]

!!! idea "Intuição Econômica"
    **Em uma frase:** Jogar de forma imprevisível pode ser a melhor estratégia quando qualquer padrão fixo seria explorado pelo adversário.

    **Pense assim:** Um cobrador de pênaltis que sempre chuta no mesmo canto será facilmente defendido. Por isso, os melhores batedores variam entre esquerda, direita e centro de forma quase aleatória — e a proporção ideal é exatamente aquela que deixa o goleiro indiferente entre os lados. Chiappori, Levitt e Groseclose (2002) confirmaram isso empiricamente com dados de cobranças de pênaltis na Série A italiana e na liga francesa.

    **Por que isso importa:** Estratégias mistas aparecem em fiscalizações da Receita Federal (auditar aleatoriamente para que ninguém saiba se será fiscalizado), em blitz de trânsito — a imprevisibilidade é o que gera o efeito dissuasório — e em licitações onde o lance ótimo envolve randomização.

!!! example "Cálculo de equilíbrio misto: Batalha dos Sexos"
    Na Batalha dos Sexos, suponha que o jogador 1 joga F com probabilidade \(p\) e C com probabilidade \(1-p\), enquanto o jogador 2 joga F com probabilidade \(q\) e C com probabilidade \(1-q\).

    Para o jogador 2 ser indiferente:

    \[
    U_2(F; p) = U_2(C; p) \implies p \cdot 1 + (1-p) \cdot 0 = p \cdot 0 + (1-p) \cdot 3
    \]

    \[
    p = 3(1-p) \implies p = 3 - 3p \implies 4p = 3 \implies p = \frac{3}{4}
    \]

    Para o jogador 1 ser indiferente:

    \[
    U_1(F; q) = U_1(C; q) \implies 3q = (1-q) \implies q = \frac{1}{4}
    \]

    Logo, o equilíbrio em estratégias mistas é \(\sigma_1 = (3/4, 1/4)\), \(\sigma_2 = (1/4, 3/4)\). O payoff esperado de cada jogador é \(3/4\), inferior ao payoff em qualquer dos dois equilíbrios puros — a incerteza sobre a coordenação é custosa.

<iframe src="../graficos/cap09/estrategias-mistas.html" title="Figura 9a.2 — Equilíbrio em estratégias mistas" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.2 — Equilíbrio em estratégias mistas.** Para um jogo 2×2, os gráficos mostram o payoff esperado de cada jogador em função da probabilidade de mistura do oponente. O ponto de interseção determina a probabilidade de equilíbrio (princípio da indiferença). Edite os payoffs e selecione jogos predefinidos.
</div>

### Existência de Equilíbrio (Teorema de Nash)

O exemplo da Batalha dos Sexos ilustra como calcular o equilíbrio misto em um jogo específico. Mas será que *todo* jogo finito possui ao menos um equilíbrio? A resposta afirmativa — o Teorema de Nash — é um dos resultados mais importantes da matemática aplicada do século XX. Sua demonstração utiliza o Teorema do Ponto Fixo de Kakutani e, embora a apresentação formal possa parecer abstrata, a intuição geométrica é elegante: as correspondências de melhor resposta dos jogadores devem necessariamente se "cruzar" em algum ponto.

!!! theorem "Teorema de Nash (1950)"
    Todo jogo finito (número finito de jogadores e de estratégias puras para cada jogador) possui pelo menos um **equilíbrio de Nash em estratégias mistas**.

!!! proof "Demonstração: Existência de equilíbrio de Nash (caso 2×2)"
    **Objetivo**: Demonstrar a existência de equilíbrio de Nash em estratégias mistas para um jogo com dois jogadores, cada um com duas estratégias puras.

    Considere um jogo \(2 \times 2\) com jogadores 1 e 2, cada um com estratégias \(\{A, B\}\). O jogador 1 escolhe \(A\) com probabilidade \(p \in [0,1]\) e o jogador 2 escolhe \(A\) com probabilidade \(q \in [0,1]\).

    **Passo 1 — Funções de melhor resposta.**

    O payoff esperado do jogador 1 é linear em \(p\) (para \(q\) fixo):

    \[
    U_1(p, q) = p \cdot \underbrace{[q \, u_1(A,A) + (1-q) \, u_1(A,B)]}_{\equiv \alpha_1(q)} + (1-p) \cdot \underbrace{[q \, u_1(B,A) + (1-q) \, u_1(B,B)]}_{\equiv \beta_1(q)}
    \]

    A melhor resposta do jogador 1 é:

    \[
    BR_1(q) = \begin{cases} \{1\} & \text{se } \alpha_1(q) > \beta_1(q) \\ [0,1] & \text{se } \alpha_1(q) = \beta_1(q) \\ \{0\} & \text{se } \alpha_1(q) < \beta_1(q) \end{cases}
    \]

    **Passo 2 — Propriedades das correspondências de melhor resposta.**

    Para cada jogador \(i\), \(BR_i: [0,1] \rightrightarrows [0,1]\) satisfaz: (i) valores não vazios; (ii) valores convexos (intervalos fechados); (iii) gráfico fechado (semicontinuidade superior).

    **Passo 3 — Teorema do Ponto Fixo de Kakutani.**

    A correspondência conjunta \(BR(p, q) = BR_1(q) \times BR_2(p)\) mapeia o compacto convexo \([0,1]^2\) em si mesmo com valores não vazios, convexos e gráfico fechado. Pelo Teorema de Kakutani, existe \((p^*, q^*)\) tal que \(p^* \in BR_1(q^*)\) e \(q^* \in BR_2(p^*)\) — um equilíbrio de Nash. \(\blacksquare\)

!!! note "Caso geral"
    A demonstração para \(n\) jogadores e \(m\) estratégias segue a mesma lógica, aplicando Kakutani no simplexo \(\Delta(S_1) \times \cdots \times \Delta(S_n)\).

---

## 9a.5 Jogos com Ações Contínuas: Oligopólio

Até agora, analisamos jogos com um número finito de estratégias — cada jogador escolhe entre opções discretas como "cooperar ou trair", "futebol ou cinema". Muitos jogos de interesse econômico, porém, envolvem espaços de estratégias contínuos: firmas que escolhem *quanto* produzir, *que preço* cobrar ou *quanto* investir. Os modelos clássicos de oligopólio — Cournot, Bertrand e Stackelberg — são os exemplos paradigmáticos dessa classe de jogos e constituem a espinha dorsal da organização industrial.

O conceito de oligopólio remonta, pelo menos, a Cournot (1838), que analisou a competição entre duas firmas que extraem água de um poço mineral — o duopólio de Cournot. Cinquenta anos depois, o matemático Joseph Bertrand (1883) publicou uma resenha do trabalho de Cournot sugerindo que, se as firmas competem em preços em vez de quantidades, o resultado é radicalmente diferente: o preço cai para o custo marginal mesmo com apenas dois concorrentes. O debate Cournot-Bertrand — mesma estrutura de mercado, variável estratégica diferente, resultados opostos — é um dos mais frutíferos da história do pensamento econômico e continua relevante para a análise antitruste moderna. Stackelberg (1934) acrescentou a dimensão da sequencialidade: o que acontece se uma firma é líder e move antes das demais? O resultado, como veremos, depende crucialmente da capacidade de comprometimento crível — tema que será aprofundado no Módulo 9b com o conceito de equilíbrio perfeito em subjogos.

A pergunta central desta seção é: como a forma da competição (preço vs. quantidade) e a ordem do movimento (simultâneo vs. sequencial) afetam o resultado de mercado?

### Competição de Cournot (quantidades)

Começamos pelo modelo mais antigo e, em muitos sentidos, mais intuitivo de oligopólio. No modelo de Cournot (1838), cada firma decide *quanto* produzir, e o preço de mercado se ajusta para equilibrar a oferta total com a demanda. A variável estratégica é a quantidade, e o jogo é simultâneo: nenhuma firma observa a decisão da outra antes de se comprometer com sua produção.

Duas firmas escolhem simultaneamente as quantidades \(q_1, q_2 \geq 0\). A demanda inversa é \(P(Q) = a - bQ\), onde \(Q = q_1 + q_2\), e o custo marginal é constante e igual a \(c\) para ambas as firmas.

O lucro da firma \(i\) é:

\[
\pi_i(q_i, q_j) = (a - b(q_i + q_j) - c) \, q_i
\label{eq:9a.4} \tag{9a.4}
\]

Observe que o lucro de cada firma depende não apenas da própria quantidade, mas também da quantidade produzida pela rival — a interdependência estratégica que motiva toda a teoria dos jogos. Cada firma maximiza seu lucro tomando como dada a quantidade da outra, o que gera a seguinte condição de primeira ordem e a correspondente **função de reação** (melhor resposta):

\[
q_i^*(q_j) = \frac{a - c - bq_j}{2b}
\label{eq:9a.5} \tag{9a.5}
\]

A função de reação é decrescente: quanto mais a rival produz, menos é ótimo para a firma produzir. Em linguagem estratégica, as quantidades são **substitutos estratégicos** — o aumento da ação de um jogador reduz a melhor resposta do outro. O equilíbrio de Nash (Cournot-Nash) é obtido pela interseção das funções de reação:

\[
q_1^* = q_2^* = \frac{a-c}{3b}, \qquad Q^* = \frac{2(a-c)}{3b}, \qquad P^* = \frac{a + 2c}{3}
\label{eq:9a.6} \tag{9a.6}
\]

O lucro de cada firma no equilíbrio é:

\[
\pi_i^* = \frac{(a-c)^2}{9b}
\label{eq:9a.7} \tag{9a.7}
\]

**Extensão: \(N\) firmas simétricas.** Com \(N\) firmas idênticas, o equilíbrio de Cournot é:

\[
q_i^* = \frac{a-c}{(N+1)b}, \qquad P^* = \frac{a + Nc}{N+1}
\label{eq:9a.8} \tag{9a.8}
\]

Pela equação $\eqref{eq:9a.8}$, quando \(N \to \infty\), \(P^* \to c\): o resultado converge para competição perfeita. Esse resultado é notável: ele conecta a teoria dos jogos à teoria clássica de mercados competitivos, mostrando que a competição perfeita é o caso limite de um oligopólio de Cournot quando o número de firmas cresce indefinidamente.

**Extensão: Custos assimétricos.** Com custos marginais \(c_1 \neq c_2\):

\[
q_1^* = \frac{a - 2c_1 + c_2}{3b}, \qquad q_2^* = \frac{a - 2c_2 + c_1}{3b}
\]

Comparando com o equilíbrio simétrico $\eqref{eq:9a.6}$, a firma com menor custo produz mais e obtém lucro maior. Esse resultado tem implicação direta para a análise de fusões: se uma fusão reduz custos (gera eficiências), a firma resultante aumenta sua produção e pode até reduzir o preço de mercado. O CADE precisa ponderar esse efeito de eficiência contra o aumento de poder de mercado.

### Competição de Bertrand (preços)

O que acontece quando as firmas competem em preços em vez de quantidades? A resposta, surpreendente e provocadora, é conhecida como o *paradoxo de Bertrand*: bastam duas firmas para que o preço caia até o custo marginal, eliminando completamente os lucros econômicos. A mudança da variável estratégica — de quantidade para preço — transforma radicalmente a natureza da competição.

Duas firmas com produtos homogêneos e custo marginal constante \(c\) escolhem simultaneamente os preços \(p_1, p_2\). Os consumidores compram da firma com menor preço.

O **paradoxo de Bertrand**: o único equilíbrio de Nash é \(p_1^* = p_2^* = c\), com lucro zero para ambas as firmas — mesmo com apenas dois concorrentes, o resultado é competitivo. Por que isso é paradoxal? Porque contradiz a intuição de que um mercado com apenas duas firmas deveria gerar lucros oligopolísticos substanciais. A razão é a extrema sensibilidade da demanda: com produtos perfeitamente homogêneos, uma diferença infinitesimal de preço desloca *toda* a demanda para a firma mais barata. Essa "competição à navalha" força ambas as firmas ao custo marginal — um resultado idêntico ao de competição perfeita com infinitas firmas.

!!! idea "Intuição Econômica"
    **Em uma frase:** A variável estratégica da firma — preço ou quantidade — determina radicalmente o equilíbrio do mercado.

    **Pense assim:** Imagine duas padarias vizinhas no mesmo bairro. Se cada uma decide *quantos pães* assar de manhã (capacidade), estamos no mundo de Cournot: a produção é decidida antes, e o preço se ajusta pela demanda. Se cada uma decide o *preço* na vitrine a cada hora (e pode atender toda a demanda), estamos no mundo de Bertrand: qualquer diferença de preço desvia todos os clientes.

    **Quando usar cada modelo:**

    - **Cournot** é mais apropriado quando a capacidade é comprometida antes da competição em preços — petróleo, aço, companhias aéreas em rotas com slots limitados.
    - **Bertrand** é mais apropriado quando os preços são flexíveis e a capacidade não é restrição — varejo online, serviços digitais, telecomunicações.
    - **Bertrand com diferenciação** (produtos não homogêneos) elimina o paradoxo e gera lucros positivos — a maioria dos mercados reais.

    **Por que isso importa para o Brasil:** O CADE precisa escolher o modelo correto ao simular fusões. Na aviação (Cournot por slots), fusões têm efeito grande sobre preços; no varejo online (Bertrand com diferenciação), o efeito pode ser menor.

!!! idea "Intuição Econômica"
    **Cournot vs. Bertrand: mesma estrutura de mercado, resultados opostos.**

    Considere dois mercados com exatamente duas firmas e produtos homogêneos. Em Cournot, o preço de equilíbrio é \(P^C = (a + 2c)/3\), com margens positivas para as firmas. Em Bertrand, \(P^B = c\) — margem zero. A única diferença é a variável estratégica escolhida: quantidade ou preço.

    Esse resultado — às vezes chamado de **paradoxo de Bertrand** — captura algo profundo sobre como a natureza da competição é tão importante quanto o número de concorrentes. Dois concorrentes podem gerar resultado competitivo (Bertrand com produtos homogêneos) ou resultado quase monopolístico (Cournot com poucas firmas).

    A resolução do paradoxo em contextos reais vem de três fontes: (i) **restrições de capacidade** — se cada firma não consegue atender toda a demanda sozinha, a competição Bertrand não leva mais ao custo marginal (resultado de Edgeworth-Kreps-Scheinkman); (ii) **diferenciação de produto** — com bens substitutos imperfeitos, os clientes não migram instantaneamente para o fornecedor mais barato, restaurando margens positivas; (iii) **custos de mudança** — lealdade do cliente e custos de troca (switching costs) tornam a demanda menos sensível a pequenas diferenças de preço. Nos mercados reais, os três fatores coexistem — e o julgamento de qual modelo é mais adequado é central para a análise antitruste.

<iframe src="../graficos/cap09/cournot-reacao.html" title="Figura 9a.3 — Funções de reação de Cournot" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.3 — Funções de reação de Cournot.** Ajuste os parâmetros de demanda (\(a\), \(b\)) e os custos marginais (\(c_1\), \(c_2\)). O equilíbrio de Nash é a interseção. Clique em "Animar convergência" para visualizar a dinâmica de melhores respostas alternadas.
</div>

### Competição de Stackelberg (líder-seguidora)

Os modelos de Cournot e Bertrand pressupõem decisões simultâneas. Mas em muitos mercados, uma firma estabelecida — por tamanho, reputação ou capacidade instalada — age como líder, tomando sua decisão antes das concorrentes. Existe vantagem em mover primeiro? E como a seguidora deve reagir? O modelo de Stackelberg (1934) responde a essas perguntas, introduzindo a dimensão temporal na competição por quantidades.

No modelo de Stackelberg, a firma 1 (líder) escolhe \(q_1\) *primeiro*, e a firma 2 (seguidora) observa \(q_1\) e escolhe \(q_2\). A solução é por **indução retroativa** (conceito detalhado no Módulo 9b).

**Passo 1 — Seguidora.** Dado \(q_1\), a firma 2 maximiza \(\pi_2\):

\[
q_2^*(q_1) = \frac{a - c_2 - bq_1}{2b}
\]

**Passo 2 — Líder.** A firma 1 antecipa a reação da firma 2 e maximiza:

\[
\pi_1 = \left(a - bq_1 - b \cdot \frac{a - c_2 - bq_1}{2b} - c_1\right) q_1 = \left(\frac{a + c_2 - 2c_1}{2} - \frac{bq_1}{2}\right) q_1
\]

A CPO gera (para \(c_1 = c_2 = c\)):

\[
q_1^S = \frac{a-c}{2b}, \qquad q_2^S = \frac{a-c}{4b}, \qquad Q^S = \frac{3(a-c)}{4b}, \qquad P^S = \frac{a + 3c}{4}
\label{eq:9a.9} \tag{9a.9}
\]

A [Tabela 9a.5](#tabela-9a-5) compara Cournot, Stackelberg, monopólio e competição perfeita:

<a id="tabela-9a-5"></a>

| Modelo | \(Q\) total | Preço \(P\) | \(\pi_{\text{líder}}\) | \(\pi_{\text{seguidora}}\) |
|:-------|:-----------|:-----------|:----------------------|:--------------------------|
| Monopólio | \(\frac{a-c}{2b}\) | \(\frac{a+c}{2}\) | \(\frac{(a-c)^2}{4b}\) | — |
| Stackelberg | \(\frac{3(a-c)}{4b}\) | \(\frac{a+3c}{4}\) | \(\frac{(a-c)^2}{8b}\) | \(\frac{(a-c)^2}{16b}\) |
| Cournot | \(\frac{2(a-c)}{3b}\) | \(\frac{a+2c}{3}\) | \(\frac{(a-c)^2}{9b}\) | \(\frac{(a-c)^2}{9b}\) |
| Comp. Perfeita | \(\frac{a-c}{b}\) | \(c\) | 0 | 0 |

<div class="caption-obj" markdown>
**Tabela 9a.5 — Comparação Cournot, Stackelberg, monopólio e competição perfeita.**
</div>

A líder em Stackelberg produz *mais* e lucra *mais* que em Cournot. A seguidora produz *menos* e lucra *menos*. A quantidade total é maior e o preço é menor — o consumidor prefere Stackelberg a Cournot. Em termos econômicos, a tabela revela uma hierarquia clara de bem-estar do consumidor: competição perfeita > Stackelberg > Cournot > Monopólio. Quanto mais intensa a competição — seja pelo número de firmas ou pela estrutura do jogo — mais o excedente é transferido dos produtores para os consumidores.

!!! tip "Vantagem do primeiro movimento"
    A vantagem da líder em Stackelberg vem do **comprometimento crível** com uma quantidade alta. Se a líder pudesse mudar de ideia depois de observar \(q_2\), o resultado voltaria a ser Cournot. O comprometimento (ex: investimento irreversível em capacidade) é o que confere poder à líder.

<iframe src="../graficos/cap09/stackelberg-reacao.html" title="Figura 9a.4 — Stackelberg vs Cournot" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.4 — Stackelberg vs Cournot.** A isoprofit da líder tangencia a função de reação da seguidora no ponto de Stackelberg. Compare com o equilíbrio de Cournot (interseção das funções de reação). Altere os custos para ver o efeito de assimetrias.
</div>

!!! box-brasil "Box Brasil — CADE, fusões e o mercado de cervejas: Ambev, Heineken e Petrópolis"
    O mercado brasileiro de cervejas é um dos mais concentrados do mundo e ilustra com precisão como os modelos de Cournot, Bertrand e Stackelberg se articulam com a análise antitruste do **CADE** (Conselho Administrativo de Defesa Econômica).

    **Estrutura do mercado**

    O mercado de cervejas no Brasil é dominado por três grupos:

    | Grupo | Principais marcas | Market share estimado (2024) |
    |:------|:------------------|:----------------------------:|
    | Ambev (InBev) | Skol, Brahma, Antarctica, Bohemia, Corona | ~45% |
    | Heineken Brasil | Heineken, Kaiser, Amstel, Sol | ~20% |
    | Petrópolis | Itaipava, Crystal, TNT, Black Princess | ~11% |
    | Outros | Backer, Cervas artesanais, importadas | ~24% |

    Os três maiores grupos acumulam cerca de **76% do mercado**, configurando um oligopólio altamente concentrado — com **HHI** (Índice Herfindahl-Hirschman) estimado acima de 2.500, bem acima do limiar de 1.500 adotado pelo CADE como sinal de concentração elevada.

    **Modelos de oligopólio aplicados ao setor**

    A Ambev, como líder histórica de mercado e de custo mais baixo (economias de escala na produção e logística), opera frequentemente como **líder de Stackelberg**: define volumes de produção e promoções com antecedência, e os demais ajustam suas estratégias. Em episódios de guerra de preços — como a disputa pelo mercado popular (cervejas abaixo de R\$ 3,00 a lata) —, o mercado se aproxima do modelo de **Bertrand com diferenciação**: marcas são substitutos imperfeitos, e a migração de consumidores entre marcas depende de preço, disponibilidade no PDV e identidade de marca.

    **Análise do CADE: o caso Heineken/Brasil Kirin (2017)**

    Em 2017, o CADE analisou a aquisição da Brasil Kirin (Schincariol/Devassa) pela Heineken. Usando simulação de fusão baseada em modelo de Bertrand com diferenciação, o CADE estimou os efeitos sobre preços e market share. O órgão aprovou a operação com restrições: a Heineken foi obrigada a vender a marca Devassa para evitar concentração excessiva em cervejas populares no Nordeste — região em que as marcas eram substitutos mais próximos.

    **Lição teórica:** A escolha do modelo de oligopólio (Cournot vs. Bertrand vs. Stackelberg) não é indiferente para a análise antitruste. O método GUPPI (*Gross Upward Pricing Pressure Index*), padrão internacional em análise de fusões horizontais, é derivado diretamente de um modelo de Bertrand com diferenciação — e o CADE passou a adotá-lo sistematicamente a partir do Guia para Análise de Atos de Concentração Horizontal (2016).

    **Fonte**: CADE, Ato de Concentração nº 08700.001642/2017-05 (Heineken/Brasil Kirin); CADE, Guia para Análise de Atos de Concentração Horizontal (2016).

---

Os modelos de oligopólio apresentados acima não são meros exercícios teóricos — eles fornecem a estrutura analítica que órgãos reguladores como o CADE utilizam diariamente para avaliar práticas anticompetitivas. O primeiro Box Brasil deste capítulo examina precisamente essa conexão entre teoria e prática regulatória.

!!! box-brasil "Box Brasil — Cartéis de postos de combustíveis: conluio, detecção e punição"
    O mercado de revenda de combustíveis no Brasil é um dos campos mais ativos de investigação antitruste pelo **CADE** (Conselho Administrativo de Defesa Econômica). A frequência de cartéis nesse setor oferece um laboratório natural para a teoria dos jogos.

    **Por que o conluio é frequente nesse mercado?**

    A teoria dos jogos repetidos (Módulo 9b) identifica condições que facilitam a sustentação de conluio como equilíbrio: (i) poucas firmas no mercado relevante; (ii) produto homogêneo (gasolina comum é igual em qualquer posto); (iii) preços facilmente observáveis (placas na entrada); (iv) interação repetida entre os mesmos competidores. O mercado de revenda de combustíveis em muitas cidades brasileiras satisfaz todas essas condições.

    **Casos recentes**

    Apenas entre 2024 e 2025, o CADE condenou cartéis de revenda de combustíveis em três estados:

    - **Distrito Federal (2025)**: sete redes de postos condenadas, com multas superiores a **R\$ 150 milhões**.
    - **Paraná (2024)**: 12 postos e 2 pessoas físicas condenados em Francisco Beltrão, com multas de **R\$ 59 milhões**.
    - **Santa Catarina (2024)**: cartel em Joinville condenado com multas de **R\$ 55 milhões**.

    **Mecanismos de sustentação do cartel**

    Na linguagem da teoria dos jogos, os postos operam uma estratégia do tipo *grim trigger* informal: todos praticam preços elevados e, se algum desviar, os demais retomam a competição. A transparência dos preços (afixados em totens luminosos) funciona como mecanismo de monitoramento — qualquer desvio é imediatamente detectável.

    **O papel do CADE e do programa de leniência**

    O CADE atua como um mecanismo institucional que torna o conluio mais custoso: ao impor multas elevadas (até 20% do faturamento bruto), a autoridade antitruste reduz o payoff esperado da cooperação ilícita. O programa de leniência oferece redução de pena ao primeiro membro do cartel que denunciar, explorando a mesma lógica do Dilema dos Prisioneiros: a tentação de trair o cartel em troca de imunidade desestabiliza o acordo.

    **Fonte**: CADE, decisões do Tribunal Administrativo (2024–2025).

---

Se o mercado de combustíveis ilustra a dinâmica de cartéis em mercados locais, o transporte aéreo doméstico oferece um panorama complementar: um oligopólio altamente concentrado em escala nacional, no qual coexistem elementos de Cournot, Bertrand e Stackelberg dependendo da rota e do horizonte temporal.

!!! box-brasil "Box Brasil — Gol, Latam e Azul: competição estratégica a 10.000 metros"
    O transporte aéreo doméstico no Brasil é um dos mercados mais concentrados do país e ilustra diretamente os modelos de oligopólio.

    **Concentração extrema**

    Dados da **[ANAC](https://www.anac.gov.br)** para 2024 mostram que três companhias detêm **98,9%** do mercado doméstico:

    | Companhia | Market share (2024) |
    |:----------|:-------------------|
    | Latam     | 39,1%              |
    | Gol       | 30,7%              |
    | Azul      | 29,7%              |
    | Outras    | 0,5%               |

    **Qual modelo se aplica?**

    - Em **rotas com concorrência direta** (São Paulo–Rio), a competição se aproxima de **Bertrand com diferenciação**: preços são a variável estratégica.
    - Em **rotas com slots limitados** (Congonhas, Santos Dumont), a competição se aproxima de **Cournot**: a oferta de assentos é decidida antecipadamente.
    - A dinâmica de **liderança de preço** em promoções evoca o modelo de **Stackelberg**, com a Latam frequentemente agindo como líder.

    **Barreiras à entrada e credibilidade de ameaças**

    A entrada de novas companhias é dificultada por custos afundados (frota, certificação, slots), economias de escala e rede de rotas. A história do setor inclui episódios de guerras de preço que podem ser interpretados como estratégias de deterrência: companhias incumbentes praticaram preços agressivos em rotas disputadas por entrantes (Webjet, Avianca Brasil).

    **Fonte**: ANAC, Relatório de Demanda e Oferta do Transporte Aéreo 2024; CADE, Cadernos do CADE — Mercado de Transporte Aéreo.

---

### R Interativo: Friend or Foe — Dilema dos Prisioneiros Real

??? code "R Interativo — Dados reais do game show Friend or Foe (Adams, 2025, Cap. 1)"
    No início dos anos 2000, o programa de TV *Friend or Foe* (Game Show Network) colocava duplas de participantes para jogar um Dilema dos Prisioneiros real — o *Trust Box* — com milhares de dólares em jogo. Cada jogador escolhia "Friend" (cooperar) ou "Foe" (trair). Se ambos cooperavam, dividiam o prêmio igualmente; se um traía e o outro cooperava, o traidor ficava com tudo; se ambos traíam, ninguém recebia nada.

    Os dados de 227 episódios (Kalist, 2004; List, 2006) estão disponíveis no pacote R `Ecdat`. Explore: qual fração coopera? A decisão depende do valor em jogo? Da idade?

    <iframe src="../graficos/cap09/webr-friend-foe.html" title="Figura 9a.5 — Friend or Foe" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9a.5 — Análise do game show Friend or Foe com dados reais.** O WebR executa R diretamente no navegador (sem servidor). Altere o código para explorar: adicione <code>glm(play == "friend" ~ age + cash, family=binomial, data=df)</code> para estimar um modelo logit.
    </div>

---

### R Interativo: Equilíbrio de Cournot com Simulação

??? code "R Interativo — Cournot Duopólio: equilíbrio analítico e gráfico (Adams, 2025, Cap. 3)"
    O modelo de Cournot com demanda linear admite solução analítica. Neste box interativo, você pode alterar os parâmetros de demanda (\(a\), \(b\)) e os custos marginais (\(c_1\), \(c_2\)) para explorar como o equilíbrio muda. O R calcula quantidades, preço e lucros de equilíbrio e plota as funções de reação.

    **Exercício sugerido:** mude \(c_2\) para 40 e compare com o caso simétrico. A firma de custo alto produz menos — qual é o efeito sobre o preço de mercado?

    <iframe src="../graficos/cap09/webr-proto.html" title="Figura 9a.6 — Proto" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9a.6 — Equilíbrio de Cournot com parâmetros editáveis.** Altere <code>a</code>, <code>b</code>, <code>c1</code>, <code>c2</code> e re-execute. Baseado em Adams (2025, Cap. 3).
    </div>

---

## 📋 Resumo do Capítulo

- A teoria dos jogos estuda a tomada de decisão em ambientes de interdependência estratégica, nos quais o resultado de cada agente depende das ações de todos os demais. A disciplina foi fundada por Von Neumann e Morgenstern (1944) e revolucionada por Nash (1950, 1951), Selten (1965) e Harsanyi (1967–68).
- Jogos estáticos com informação completa são representados na forma normal (matriz de payoffs) e resolvidos pelo conceito de **equilíbrio de Nash**: um perfil de estratégias em que nenhum jogador pode melhorar unilateralmente seu payoff — a condição de "ausência de arrependimento" (*no-regret*).
- O **Dilema dos Prisioneiros** ilustra a tensão central entre racionalidade individual e eficiência coletiva: a estratégia dominante de cada jogador leva a um resultado Pareto-dominado. O equilíbrio de Nash é uma condição de estabilidade, não de eficiência.
- A **Eliminação Iterada de Estratégias Dominadas (EIED)** é um procedimento de solução baseado apenas em racionalidade e conhecimento comum de racionalidade. Para estratégias estritamente dominadas, a ordem de eliminação não altera o resultado.
- **Estratégias mistas** garantem a existência de equilíbrio em todo jogo finito (Teorema de Nash) e são determinadas pelo princípio da indiferença — cada jogador randomiza de modo a deixar o oponente indiferente entre suas estratégias puras.
- Os modelos de oligopólio (Cournot, Bertrand e Stackelberg) aplicam o equilíbrio de Nash a mercados com poucos concorrentes, mostrando como a variável estratégica (quantidade vs. preço) e a ordem de movimento alteram radicalmente preços, quantidades e lucros.
- No Cournot, firmas competem em quantidades (substitutos estratégicos) e o resultado situa-se entre monopólio e competição perfeita; no Bertrand com produtos homogêneos, duas firmas bastam para reproduzir o resultado competitivo (paradoxo de Bertrand); no Stackelberg, a líder obtém vantagem via comprometimento crível com quantidade elevada.
- O resultado de Kreps-Scheinkman (1983) unifica Cournot e Bertrand: quando as firmas escolhem capacidade antes de competir em preços, o equilíbrio de dois estágios reproduz o resultado de Cournot.

## 🔑 Conceitos-Chave

<a id="tabela-9a-6"></a>

| Conceito | Definição |
|----------|-----------|
| Jogo na forma normal | Tripla \(\langle N, (S_i), (u_i) \rangle\) que especifica jogadores, estratégias e payoffs. |
| Equilíbrio de Nash | Perfil de estratégias em que nenhum jogador pode melhorar seu payoff desviando unilateralmente. |
| Estratégia dominante | Estratégia que é ótima para um jogador independentemente das ações dos demais. |
| Estratégia mista | Distribuição de probabilidade sobre as estratégias puras de um jogador. |
| Princípio da indiferença | Em equilíbrio misto, cada jogador randomiza de forma a tornar o oponente indiferente entre suas estratégias puras. |
| EIED | Eliminação Iterada de Estratégias Estritamente Dominadas — procedimento de solução que reduz o jogo removendo estratégias que nunca são ótimas. |
| Modelo de Cournot | Oligopólio em que firmas escolhem quantidades simultaneamente; o equilíbrio é a interseção das funções de reação. |
| Modelo de Bertrand | Oligopólio em que firmas escolhem preços simultaneamente; com produtos homogêneos, o preço converge para o custo marginal. |
| Modelo de Stackelberg | Oligopólio sequencial em que a líder se compromete com uma quantidade antes da seguidora, obtendo vantagem de primeiro movimento. |
| Dilema dos Prisioneiros | Jogo em que a estratégia dominante de cada jogador leva a um resultado coletivamente inferior (Pareto-dominado). |

<div class="caption-obj" markdown>
**Tabela 9a.6 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9a.1 — Equilíbrios de Nash na Batalha dos Sexos"
    **Enunciado:** Encontre todos os equilíbrios de Nash (em puras e em mistas) do seguinte jogo simultâneo:

    |  | Jogador 2: E | Jogador 2: D |
    |:---|:---:|:---:|
    | **Jogador 1: C** | \((2, 1)\) | \((0, 0)\) |
    | **Jogador 1: B** | \((0, 0)\) | \((1, 2)\) |

    **Resolução:**

    **Passo 1 — Equilíbrios em estratégias puras**

    - \((C, E)\): J1 obtém 2 (desviar → 0). J2 obtém 1 (desviar → 0). **Nash** ✓
    - \((C, D)\): J1 obtém 0 (desviar → 1). **Não é Nash**.
    - \((B, E)\): J1 obtém 0 (desviar → 2). **Não é Nash**.
    - \((B, D)\): J1 obtém 1 (desviar → 0). J2 obtém 2 (desviar → 0). **Nash** ✓

    **Passo 2 — Equilíbrio em estratégias mistas**

    Seja \(p = \Pr(\text{J1 joga C})\) e \(q = \Pr(\text{J2 joga E})\).

    Para J2 ser indiferente: \(p \cdot 1 = (1-p) \cdot 2 \implies p = 2/3\)

    Para J1 ser indiferente: \(2q = (1-q) \implies q = 1/3\)

    **Resultado:** Três equilíbrios de Nash: \((C, E)\), \((B, D)\) e o misto \(\sigma_1 = (2/3, 1/3)\), \(\sigma_2 = (1/3, 2/3)\) com payoffs esperados \(U_1 = U_2 = 2/3\).

    **Interpretação:** Este é um jogo de coordenação com preferências conflitantes. Múltiplos equilíbrios explicam por que convenções, normas (ABNT, INMETRO) e regulamentações são valiosas — funcionam como "pontos focais" (Schelling, 1960).

??? exercicio-resolvido "Exercício Resolvido 9a.2 — Cournot assimétrico no setor aéreo"
    **Enunciado:** Duas companhias aéreas competem à la Cournot em uma rota doméstica. A demanda inversa é \(P(Q) = 500 - 2Q\), onde \(Q = q_1 + q_2\) (em milhares de assentos/mês). A incumbente tem custo marginal \(c_1 = 100\) e a entrante tem \(c_2 = 150\). Encontre o equilíbrio de Cournot-Nash.

    **Resolução:**

    **Passo 1 — Funções de reação**

    CPO da firma 1: \(500 - 4q_1 - 2q_2 - 100 = 0 \implies q_1^*(q_2) = 100 - q_2/2\)

    CPO da firma 2: \(500 - 2q_1 - 4q_2 - 150 = 0 \implies q_2^*(q_1) = 87{,}5 - q_1/2\)

    **Passo 2 — Equilíbrio**

    Substituindo: \(q_1 = 100 - (87{,}5 - q_1/2)/2 = 56{,}25 + q_1/4\), logo \(q_1^* = 75\), \(q_2^* = 50\).

    **Passo 3 — Preço e lucros**

    \(Q^* = 125\), \(P^* = 250\), \(\pi_1 = 150 \times 75 = 11.250\), \(\pi_2 = 100 \times 50 = 5.000\).

    **Interpretação:** A firma mais eficiente produz mais e lucra mais. Na aviação brasileira, a Latam tem historicamente custos por ASK menores, o que contribui para seu market share de 39,1%.

??? exercicio-resolvido "Exercício Resolvido 9a.3 — Stackelberg no mercado de cervejas"
    **Enunciado:** A Ambev (líder) e a Heineken (seguidora) competem à la Stackelberg no mercado de cerveja premium. A demanda inversa é \(P = 20 - Q\) (R\$/litro, em milhões de litros/mês), com \(c_1 = c_2 = 4\).

    (a) Encontre o equilíbrio de Stackelberg.
    (b) Compare com Cournot.

    **Resolução:**

    **(a) Stackelberg**

    Seguidora: \(q_2^*(q_1) = (20 - 4 - q_1)/2 = 8 - q_1/2\)

    Líder: \(\pi_1 = (20 - q_1 - 8 + q_1/2 - 4)q_1 = (8 - q_1/2)q_1\)

    CPO: \(8 - q_1 = 0 \implies q_1^S = 8\), \(q_2^S = 4\)

    \(Q^S = 12\), \(P^S = 8\), \(\pi_1^S = 32\), \(\pi_2^S = 16\)

    **(b) Cournot**

    \(q_1^C = q_2^C = 16/3 \approx 5{,}33\), \(Q^C = 32/3 \approx 10{,}67\), \(P^C = 28/3 \approx 9{,}33\)

    \(\pi_1^C = \pi_2^C = 256/9 \approx 28{,}4\)

    **Comparação:**

    | | Stackelberg | Cournot |
    |---|---|---|
    | \(q_1\) | 8 | 5,33 |
    | \(q_2\) | 4 | 5,33 |
    | Preço | R\$ 8,00 | R\$ 9,33 |
    | \(\pi_{\text{líder}}\) | 32 | 28,4 |
    | \(\pi_{\text{seguidora}}\) | 16 | 28,4 |

    A líder ganha (+12,5%), a seguidora perde (–43,7%), e o consumidor ganha (preço menor, quantidade maior).

---

## ✏️ Exercícios

<a id="ex-9a-1"></a>**Exercício 9a.1.** Considere o seguinte jogo simultâneo:

|  | Jogador 2: L | Jogador 2: R |
|:---|:---:|:---:|
| **Jogador 1: U** | \((4, 3)\) | \((1, 5)\) |
| **Jogador 1: D** | \((3, 1)\) | \((2, 2)\) |

(a) Existem estratégias estritamente dominantes? Justifique.

(b) Encontre todos os equilíbrios de Nash em estratégias puras.

(c) Encontre o equilíbrio de Nash em estratégias mistas e calcule os payoffs esperados.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-1)

---

<a id="ex-9a-2"></a>**Exercício 9a.2.** Duas firmas idênticas competem à la Cournot com demanda inversa \(P(Q) = 120 - Q\) e custo marginal \(c = 30\).

(a) Derive as funções de melhor resposta e encontre o equilíbrio de Nash.

(b) Compare o resultado com monopólio e competição perfeita.

(c) Agora suponha que a firma 1 move primeiro (Stackelberg). Encontre o equilíbrio e compare.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-2)

---

<a id="ex-9a-3"></a>**Exercício 9a.3.** No modelo de Bertrand com diferenciação, as demandas são \(q_1 = a - bp_1 + dp_2\) e \(q_2 = a - bp_2 + dp_1\), com \(b > d > 0\) e custo marginal \(c\).

(a) Derive as funções de reação em preços e mostre que são crescentes (complementos estratégicos).

(b) Encontre o equilíbrio de Nash e mostre que os lucros são positivos (diferentemente do Bertrand homogêneo).

(c) O que acontece quando \(d \to 0\)? E quando \(d \to b\)?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-3)

---

<a id="ex-9a-4"></a>**Exercício 9a.4.** (Jogo Bayesiano — prévia do Módulo 9c) Uma firma incumbente pode ser forte (\(\theta_F\), com probabilidade 0,6) ou fraca (\(\theta_W\), com probabilidade 0,4). Uma entrante decide se entra.

- Não entra: I obtém 10, E obtém 0.
- Entra + I forte: payoffs (3, –2).
- Entra + I fraca: payoffs (2, 4).

(a) Calcule o lucro esperado de E se entrar.

(b) Encontre o Equilíbrio de Nash Bayesiano.

(c) I teria incentivo para sinalizar força? (Tema do Módulo 9d.)

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-4)

---

<a id="ex-9a-5"></a>**Exercício 9a.5.** (Sinalização — prévia do Módulo 9d) No modelo de Spence, trabalhadores têm produtividade \(\theta_H = 2\) (prob. 0,5) ou \(\theta_L = 1\) (prob. 0,5). O custo da educação é \(c(e, \theta) = e/\theta\). Encontre um equilíbrio separador e verifique que nenhum tipo desvia.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-5)

---

<a id="ex-9a-6"></a>**Exercício 9a.6.** *(Fácil — equilíbrios de Nash em jogo 2×2)* Considere o seguinte jogo simultâneo:

|  | Jogador 2: X | Jogador 2: Y |
|:---|:---:|:---:|
| **Jogador 1: A** | \((5, 4)\) | \((1, 3)\) |
| **Jogador 1: B** | \((2, 6)\) | \((4, 2)\) |

(a) Há estratégias estritamente dominantes? Justifique para cada jogador.

(b) Encontre todos os equilíbrios de Nash em estratégias puras utilizando o método das melhores respostas (sublinhado de payoffs).

(c) Mostre que os equilíbrios encontrados satisfazem a definição formal de Nash: nenhum jogador deseja desviar unilateralmente.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-6)

---

<a id="ex-9a-7"></a>**Exercício 9a.7.** *(Fácil — duopólio de Cournot com demanda linear)* Duas firmas competem à la Cournot em um mercado com demanda inversa \(P(Q) = 100 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo marginal \(c_1 = 20\) e a firma 2 tem custo marginal \(c_2 = 20\).

(a) Derive as funções de melhor resposta (reação) de cada firma.

(b) Encontre o equilíbrio de Nash de Cournot \((q_1^*, q_2^*, P^*)\) e os lucros de equilíbrio.

(c) Se \(N\) firmas idênticas competem à la Cournot com os mesmos parâmetros, qual é o preço de equilíbrio para \(N = 1\) (monopólio), \(N = 2\), \(N = 5\) e \(N \to \infty\)? Interprete.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-7)

---

<a id="ex-9a-8"></a>**Exercício 9a.8.** *(Médio — Bertrand com diferenciação de produto)* Duas firmas produzem bens diferenciados com demandas:

\[
q_1 = 60 - 2p_1 + p_2, \qquad q_2 = 60 - 2p_2 + p_1
\]

e custo marginal \(c = 10\) para ambas.

(a) Derive a função de melhor resposta em preços de cada firma. As estratégias de preço são complementos ou substitutos estratégicos? Justifique economicamente.

(b) Encontre o equilíbrio de Nash de Bertrand com diferenciação: preços, quantidades e lucros.

(c) Mostre que os lucros de equilíbrio são positivos e compare com o resultado de Bertrand com produto homogêneo. O que determina a magnitude dos lucros?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-8)

---

<a id="ex-9a-9"></a>**Exercício 9a.9.** *(Médio — Brasil — CADE e análise de fusão via HHI de Cournot)* Três firmas idênticas competem à la Cournot em um mercado com demanda inversa \(P(Q) = 180 - Q\) e custo marginal \(c = 30\). O regulador (CADE) considera uma fusão entre as firmas 2 e 3, que formaria uma única firma com custo marginal \(c_M = 30\) (sem ganho de eficiência).

(a) Calcule o equilíbrio de Cournot pré-fusão: quantidades individuais, preço, lucros e HHI (Índice Herfindahl-Hirschman, definido como \(\text{HHI} = \sum_{i=1}^{N} s_i^2 \times 10000\), onde \(s_i\) é o market share em decimal).

(b) Calcule o equilíbrio de Cournot pós-fusão (duopólio com duas firmas, sendo uma delas a fusionada): quantidades, preço, lucros e HHI.

(c) O CADE usa como limiar de preocupação um aumento de HHI (\(\Delta\text{HHI}\)) acima de 200 pontos em mercados com HHI pré-fusão acima de 1.500. A fusão deve ser aprovada, aprovada com restrições ou bloqueada? A fusão beneficia consumidores ou produtores?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-9)

---

<a id="ex-9a-10"></a>**Exercício 9a.10.** *(Difícil — equilíbrio em estratégias mistas em jogo 3×3)* Considere o seguinte jogo simultâneo de soma zero entre dois jogadores (os payoffs indicam o ganho do Jogador 1; o Jogador 2 obtém o negativo):

|  | J2: L | J2: M | J2: R |
|:---|:---:|:---:|:---:|
| **J1: T** | \(3\) | \(-1\) | \(2\) |
| **J1: M** | \(-2\) | \(4\) | \(-1\) |
| **J1: B** | \(1\) | \(0\) | \(3\) |

(a) Verifique se existe alguma estratégia estritamente dominada para algum dos jogadores. Use a EIED para simplificar o jogo, se possível.

(b) Após a EIED, encontre o equilíbrio em estratégias mistas do jogo reduzido. (Dica: em jogos de soma zero 2×2, o equilíbrio misto é determinado pelo princípio da indiferença aplicado a ambos os jogadores.)

(c) Calcule o valor do jogo (payoff esperado do Jogador 1 no equilíbrio) e interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2021 — Questão 11"
    Com relação à Teoria dos Jogos, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0    | A ordem em que estratégias fracamente dominadas são eliminadas é relevante, pois pode afetar o conjunto das estratégias sobreviventes. |
    | 1    | No jogo abaixo, T, M, B são estratégias de J1 e E, C, D de J2. As estratégias racionalizáveis são T, M, E. |

    Jogo do Item 1:

    |  | J2: E | J2: C | J2: D |
    |:---|:---:|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((1, 1)\) | \((4, 2)\) |
    | **J1: M** | \((3, 4)\) | \((1, 2)\) | \((2, 3)\) |
    | **J1: B** | \((1, 3)\) | \((0, 2)\) | \((3, 0)\) |

    | Item | Afirmação |
    |------|-----------|
    | 2    | No equilíbrio de Nash em mistas do jogo abaixo, J1 joga T com probabilidade \(1/3\) e B com \(2/3\), J2 joga E com \(2/3\) e D com \(1/3\). |

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((4, 2)\) |
    | **J1: B** | \((3, 4)\) | \((2, 3)\) |

    | Item | Afirmação |
    |------|-----------|
    | 3    | No jogo abaixo existe um único equilíbrio de Nash em puras. |

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((-1, -1)\) | \((4, 0)\) |
    | **J1: B** | \((0, 4)\) | \((2, 2)\) |

    | Item | Afirmação |
    |------|-----------|
    | 4    | Todo jogo na forma normal possui um equilíbrio de Nash em estratégias mistas. |

    ??? success "Gabarito"
        **Respostas: 10100**

        - **Item 0 — V:** Resultado clássico. Para estratégias **estritamente** dominadas, a ordem não importa. Para **fracamente** dominadas, a ordem pode alterar o conjunto sobrevivente.

        - **Item 1 — F:** Eliminando B (estritamente dominada por T), resta o jogo 2×3. C é estritamente dominada por uma mistura de E e D para J2. Eliminando C, sobram \(\{T, M\} \times \{E, D\}\) — nenhuma é dominada. As racionalizáveis são \(\{T, M, E, D\}\), não apenas \(\{T, M, E\}\).

        - **Item 2 — V:** Para J2 ser indiferente: \(U_2(E; p) = 4(1-p)\) e \(U_2(D; p) = 2p + 3(1-p) = 3-p\). Igualando: \(4-4p = 3-p \implies p = 1/3\). Para J1: \(U_1(T; q) = 2q + 4(1-q) = 4-2q\) e \(U_1(B; q) = 3q + 2(1-q) = 2+q\). Igualando: \(4-2q = 2+q \implies q = 2/3\). Correto.

        - **Item 3 — F:** Existem **dois** EN em puras: \((T, D)\) com payoffs \((4, 0)\) e \((B, E)\) com payoffs \((0, 4)\).

        - **Item 4 — F:** O Teorema de Nash garante existência para jogos **finitos**. Jogos com espaços infinitos de estratégias podem não ter equilíbrio sem condições adicionais (compacidade, continuidade — Teorema de Glicksberg).

??? question "ANPEC 2022 — Questão 11"
    Com relação ao oligopólio, julgue os itens:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em um Duopólio de Cournot com \(c_1(q_1) = q_1^2/2\), \(c_2(q_2) = q_2^2\) e \(P(Q) = 11 - Q\), o equilíbrio é \((q_1^*, q_2^*; P^*) = (3, 2; 6)\). |
    | 1    | Ao comparar oligopolização pelo Índice de Lerner, a indústria mais oligopolizada tem necessariamente maior HHI. |
    | 2    | No equilíbrio de Stackelberg, a seguidora lucra mais que em Cournot. |
    | 3    | No equilíbrio de Stackelberg, a isoprofit da líder tangencia a curva de reação da seguidora. |
    | 4    | Duopólio de Bertrand repetido infinitamente: se competir dá lucro 0, cartel dá 40 cada, desviar dá 200, então a menor taxa de desconto para sustentar o cartel com GRIM é \(\delta = 0{,}25\). |

    ??? success "Gabarito"
        **Respostas: 10010**

        - **Item 0 — V:** Firma 1: CPO \(11 - 2q_1 - q_2 - q_1 = 0 \implies q_1 = (11-q_2)/3\). Firma 2: CPO \(11 - q_1 - 2q_2 - 2q_2 = 0 \implies q_2 = (11-q_1)/4\). Resolvendo: \(q_1 = 3\), \(q_2 = 2\), \(P = 6\). ✓

        - **Item 1 — F:** No Cournot, \(L = \text{HHI}/|\varepsilon|\). Mesmo HHI pode gerar Lerner diferente se as elasticidades diferem.

        - **Item 2 — F:** A seguidora produz **menos** que em Cournot e obtém lucro **menor**. (Confira na tabela comparativa da Seção 9a.5.)

        - **Item 3 — V:** A líder maximiza lucro **ao longo** da curva de reação da seguidora — ponto de tangência com a isoprofit. (Visível na Figura 9a.4.)

        - **Item 4 — F:** Condição: \(40/(1-\delta) \geq 200 \implies \delta \geq 0{,}80\), não \(0{,}25\).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Bresnahan, Timothy F.; Reiss, Peter C. (1991). [Entry and Competition in Concentrated Markets](https://doi.org/10.1086/261786). *Journal of Political Economy*, 99(5), 977–1009."
    **Pergunta central:** Quantas firmas são necessárias para que um mercado se torne efetivamente competitivo?

    **Método:** Modelo econométrico de entrada em mercados locais geograficamente isolados nos EUA (cidades pequenas com 1 a 5 firmas), usando dados de cinco setores — médicos, dentistas, farmácias, encanadores e lojas de pneus. A ideia-chave: se o mercado precisa ser proporcionalmente maior para sustentar 3 firmas do que para 2, é porque a terceira firma reduz as margens.

    **Resultado:** A transição de monopólio para duopólio e de duopólio para triopólio gera reduções significativas nas margens. A partir de 3 a 5 firmas, o tamanho por firma se estabiliza — a maior parte dos ganhos competitivos ocorre com as primeiras entrantes.

    **Relevância:** Para o Brasil, os resultados têm implicações diretas para análise do CADE em atos de concentração. A metodologia é aplicável a mercados de combustíveis, farmácias e serviços de saúde no interior. O artigo testa empiricamente as previsões de Cournot e Bertrand (Seção 9a.5).

??? pesquisa "Adams, Brian W. (2025). *Game Theory for Applied Econometricians: Data Analytics with R*. Boca Raton: CRC Press. Capítulos 1–5."
    **Escopo:** Parte I do livro cobre jogos estáticos com informação completa — a matéria deste módulo — com ênfase em aplicações empíricas e análise de dados em R.

    **Contribuição pedagógica:** Adams conecta cada conceito teórico a um dataset e um script R. O Capítulo 1 analisa o game show *Friend or Foe* (Dilema dos Prisioneiros com dinheiro real); o Capítulo 2 estuda entrada de firmas no mercado de pneus; o Capítulo 3 modela competição de hambúrgueres; o Capítulo 5 testa estratégias mistas com dados de pênaltis.

    **Relevância:** Os R Boxes interativos deste módulo (9a.1 e 9a.2) são inspirados nos scripts de Adams, adaptados para execução no navegador via WebR. Os dados do pacote `Ecdat` permitem que o leitor reproduza e modifique as análises sem instalar nada.

??? pesquisa "Chiappori, Pierre-André; Levitt, Steven; Groseclose, Tim (2002). [Testing Mixed-Strategy Equilibria When Players Are Heterogeneous](https://doi.org/10.1257/00028280260344678). *American Economic Review*, 92(4), 1138–1147."
    **Pergunta central:** Os jogadores de futebol profissional jogam estratégias mistas consistentes com a teoria em cobranças de pênalti?

    **Método:** Dados de 459 pênaltis da Série A italiana e da liga francesa. Cada cobrança é modelada como um jogo 2×2 (cobrador escolhe lado, goleiro escolhe lado). A teoria prevê que as taxas de sucesso devem ser iguais em todos os lados — caso contrário, o cobrador deveria ajustar suas probabilidades.

    **Resultado:** As taxas de sucesso dos cobradores são estatisticamente indistinguíveis entre esquerda e direita, consistente com a teoria de estratégias mistas. Os cobradores não exibem padrões seriais exploráveis.

    **Relevância:** Evidência empírica direta do princípio da indiferença (Seção 9a.4) em um contexto de alto incentivo financeiro.

??? pesquisa "Kreps, David M.; Scheinkman, José A. (1983). [Quantity Precommitment and Bertrand Competition Yield Cournot Outcomes](https://doi.org/10.2307/3003636). *Bell Journal of Economics*, 14(2), 326–337."
    **Pergunta central:** Por que o resultado de Cournot emerge em mercados em que as firmas podem competir em preços?

    **Método:** Modelo de dois estágios: no primeiro estágio, firmas escolhem capacidade produtiva simultaneamente; no segundo, competem em preços à la Bertrand. Capacidade é interpretada como comprometimento de quantidade.

    **Resultado:** O equilíbrio do jogo de dois estágios reproduz exatamente o resultado de Cournot. A intuição é elegante: dada a capacidade instalada no primeiro estágio, a competição em preços no segundo estágio não pode levar ao preço de custo marginal porque as firmas têm capacidade limitada — e isso garante margens positivas idênticas às de Cournot.

    **Relevância:** Este artigo resolve o debate Cournot-Bertrand mostrando que os dois modelos são compatíveis quando se incorpora a decisão de capacidade como etapa anterior à precificação. A distinção entre variável estratégica de curto prazo (preço) e compromisso de longo prazo (capacidade) — discutida na Seção 9a.5 e aprofundada no Módulo 9b — é fundamental para a análise de fusões em setores intensivos em capital.

??? pesquisa "Bajari, Patrick; Benkard, C. Lanier; Levin, Jonathan (2007). [Estimating Dynamic Models of Imperfect Competition](https://doi.org/10.1111/j.1468-0262.2007.00796.x). *Econometrica*, 75(5), 1331–1370."
    **Pergunta central:** Como estimar estruturalmente modelos de oligopólio dinâmico sem impor restrições funcionais rígidas?

    **Método:** Procedimento de estimação em dois estágios (BBL) para jogos dinâmicos de oligopólio. No primeiro estágio, estimam-se as políticas de decisão dos agentes de forma não-paramétrica diretamente dos dados. No segundo, recuperam-se os parâmetros estruturais (custos, payoffs) exigindo que as políticas observadas sejam consistentes com um equilíbrio de Markov perfeito.

    **Resultado:** O método BBL é computacionalmente tratável mesmo para jogos com muitos estados — um avanço em relação aos métodos de programação dinâmica que exigem resolver explicitamente o equilíbrio. Aplicações empíricas cobrem mercados de cimento, companhias aéreas e varejo.

    **Relevância:** A estimação de modelos estruturais de oligopólio é o instrumento de fronteira para análise antitruste quantitativa. O CADE e o DOJ americano utilizam abordagens próximas do BBL para simular os efeitos de fusões. Conecta a Seção 9a.5 (equilíbrio estático de Cournot e Bertrand) com os modelos dinâmicos dos Módulos 9b e 9d.

??? pesquisa "Camerer, Colin F.; Ho, Teck-Hua (1999). [Experience-Weighted Attraction Learning in Normal Form Games](https://doi.org/10.1111/1468-0262.00054). *Econometrica*, 67(4), 827–874."
    **Pergunta central:** Como agentes reais aprendem a jogar equilíbrios de Nash ao longo de experiências repetidas?

    **Método:** Modelo EWA (*Experience-Weighted Attraction*) que generaliza aprendizado por reforço e *fictitious play* em um único framework paramétrico. O modelo é estimado em dados de experimentos laboratoriais com jogos como Batalha dos Sexos, Dilema dos Prisioneiros e Matching Pennies com sujeitos humanos.

    **Resultado:** O modelo EWA se ajusta melhor aos dados do que os modelos concorrentes em 7 dos 8 jogos testados. Em geral, as estratégias dos sujeitos convergem para o equilíbrio de Nash, mas o processo de convergência é lento e heterogêneo entre sujeitos.

    **Relevância:** Fornece evidência empírica sobre a validade descritiva do equilíbrio de Nash como previsão de comportamento. Os resultados sugerem que o equilíbrio é uma boa aproximação para situações com experiência repetida e incentivos elevados — contexto de muitos mercados industriais —, mas pode falhar em interações únicas entre agentes inexperientes. Dialoga diretamente com a discussão sobre fundamentos do equilíbrio de Nash na Seção 9a.3.

---

## 📚 Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians: Data Analytics with R*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press.
- Bajari, Patrick, C. Lanier Benkard, e Jonathan Levin. 2007. "Estimating Dynamic Models of Imperfect Competition." *Econometrica* 75 (5): 1331–1370. [DOI](https://doi.org/10.1111/j.1468-0262.2007.00796.x)
- Axelrod, Robert. 1984. [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books.
- Bertrand, Joseph. 1883. "Théorie mathématique de la richesse sociale." *Journal des Savants* 67: 499–508.
- Camerer, Colin F., e Teck-Hua Ho. 1999. "Experience-Weighted Attraction Learning in Normal Form Games." *Econometrica* 67 (4): 827–874. [DOI](https://doi.org/10.1111/1468-0262.00054)
- Bresnahan, Timothy F., e Peter C. Reiss. 1991. "Entry and Competition in Concentrated Markets." *Journal of Political Economy* 99 (5): 977–1009. [DOI](https://doi.org/10.1086/261786)
- Chiappori, Pierre-André, Steven Levitt, e Tim Groseclose. 2002. "Testing Mixed-Strategy Equilibria When Players Are Heterogeneous." *American Economic Review* 92 (4): 1138–1147. [DOI](https://doi.org/10.1257/00028280260344678)
- Cournot, Antoine-Augustin. 1838. *Recherches sur les Principes Mathématiques de la Théorie des Richesses*. Paris: Hachette.
- Fudenberg, Drew, e Jean Tirole. 1991. [*Game Theory*](https://books.google.com/books/about/Game_Theory.html?id=pFPHKwXro3QC). Cambridge, MA: MIT Press.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press.
- Kreps, David M., e José A. Scheinkman. 1983. "Quantity Precommitment and Bertrand Competition Yield Cournot Outcomes." *Bell Journal of Economics* 14 (2): 326–337. [DOI](https://doi.org/10.2307/3003636)
- Kalist, David E. 2004. "Data from the Television Game Show 'Friend or Foe?'" *Journal of Statistics Education* 12 (3). [DOI](https://doi.org/10.1080/10691898.2004.11910738)
- List, John A. 2006. "Friend or Foe? A Natural Experiment of the Prisoner's Dilemma." *Review of Economics and Statistics* 88 (3): 463–471. [DOI](https://doi.org/10.1162/rest.88.3.463)
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Caps. 7–8.
- Maynard Smith, John, e George R. Price. 1973. "The Logic of Animal Conflict." *Nature* 246: 15–18. [DOI](https://doi.org/10.1038/246015a0)
- Nash, John F. 1950. "Equilibrium Points in N-Person Games." *Proceedings of the National Academy of Sciences* 36 (1): 48–49. [DOI](https://doi.org/10.1073/pnas.36.1.48)
- Nash, John F. 1951. "Non-Cooperative Games." *Annals of Mathematics* 54 (2): 286–295. [DOI](https://doi.org/10.2307/1969529)
- Osborne, Martin J., e Ariel Rubinstein. 1994. [*A Course in Game Theory*](https://books.google.com/books/about/A_Course_in_Game_Theory.html?id=k-WLoAEACAAJ). Cambridge, MA: MIT Press.
- Schelling, Thomas C. 1960. [*The Strategy of Conflict*](https://books.google.com/books?id=7RkL4Z8Yg5AC). Cambridge, MA: Harvard University Press.
- Selten, Reinhard. 1965. "Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit." *Zeitschrift für die gesamte Staatswissenschaft* 121: 301–324.
- Stackelberg, Heinrich von. 1934. *Marktform und Gleichgewicht*. Vienna: Springer.
- Von Neumann, John, e Oskar Morgenstern. 1944. [*Theory of Games and Economic Behavior*](https://books.google.com/books?id=jCN5aNJ-n-0C). Princeton: Princeton University Press.
