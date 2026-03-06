# Capítulo 8 — Teoria dos Jogos: Pensando Estrategicamente

## Introdução

Nos capítulos anteriores, os agentes econômicos tomavam decisões considerando preços de mercado como dados — cada consumidor ou firma era suficientemente pequeno para que suas ações individuais não afetassem o ambiente dos demais. Essa hipótese deixa de ser razoável em muitas situações de interesse prático: oligopólios, negociações salariais, leilões, disputas comerciais entre países, competição eleitoral e interações regulatórias. Em todos esses contextos, o resultado para cada agente depende não apenas de suas próprias ações, mas também das ações escolhidas pelos outros agentes.

A **teoria dos jogos** é o ramo da matemática e da economia que estuda a tomada de decisão em ambientes de **interdependência estratégica**. Desenvolvida a partir dos trabalhos seminais de Von Neumann e Morgenstern (1944), John Nash (1950, 1951), Reinhard Selten (1965) e John Harsanyi (1967–68), a teoria dos jogos revolucionou a microeconomia e se tornou ferramenta indispensável em campos tão diversos quanto organização industrial, economia política, relações internacionais e biologia evolutiva.

Este capítulo apresenta os conceitos fundamentais da teoria dos jogos, desde a definição formal de um jogo até os refinamentos de equilíbrio mais sofisticados, passando por jogos simultâneos, sequenciais, repetidos, com informação incompleta e jogos de sinalização.

---

## 8.1 Conceitos Básicos

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

    A forma extensiva é especialmente útil para jogos **sequenciais** e jogos com **informação imperfeita**.

### Conceitos auxiliares

- **Estratégia pura**: uma escolha determinística de ação, \(s_i \in S_i\).
- **Estratégia mista**: uma distribuição de probabilidade sobre as estratégias puras, \(\sigma_i \in \Delta(S_i)\).
- **Estratégia dominante**: \(s_i^*\) é (estritamente) dominante se \(u_i(s_i^*, s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_i \neq s_i^*\) e todo \(s_{-i} \in S_{-i}\).
- **Estratégia dominada**: \(s_i\) é dominada se existe \(s_i'\) tal que \(u_i(s_i', s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_{-i}\).
- **Notação \(s_{-i}\)**: perfil de estratégias de todos os jogadores *exceto* \(i\), ou seja, \(s_{-i} = (s_1, \ldots, s_{i-1}, s_{i+1}, \ldots, s_n)\).

---

## 8.2 Dilema dos Prisioneiros

O **Dilema dos Prisioneiros** é possivelmente o jogo mais célebre da teoria dos jogos. Dois suspeitos são interrogados separadamente e cada um pode cooperar (ficar calado) ou trair (delatar o outro).

|  | Jogador 2: Cooperar | Jogador 2: Trair |
|:---|:---:|:---:|
| **Jogador 1: Cooperar** | \((-1, -1)\) | \((-10, 0)\) |
| **Jogador 1: Trair** | \((0, -10)\) | \((-5, -5)\) |

A estrutura de payoffs satisfaz: \(T > R > P > S\) (onde \(T\) = tentação, \(R\) = recompensa mútua, \(P\) = punição, \(S\) = *sucker's payoff*), com a condição adicional \(2R > T + S\).

Cada jogador tem uma **estratégia estritamente dominante**: Trair. O equilíbrio (Trair, Trair) com payoffs \((-5, -5)\) é o único equilíbrio de Nash, mas é **Pareto-dominado** pelo resultado (Cooperar, Cooperar) com payoffs \((-1, -1)\). Essa tensão entre racionalidade individual e eficiência coletiva é o cerne do dilema.

!!! note "Relevância do Dilema dos Prisioneiros"
    O Dilema dos Prisioneiros aparece em inúmeros contextos econômicos: corrida armamentista entre nações, concorrência predatória entre firmas, tragédia dos comuns na exploração de recursos naturais e guerra fiscal entre entes federativos (como veremos no Box Brasil deste capítulo). A compreensão desse jogo é fundamental para o desenho de mecanismos e instituições que alinhem incentivos individuais e coletivos.

---

## 8.3 Equilíbrio de Nash

!!! definition "Equilíbrio de Nash (estratégias puras)"
    Um perfil de estratégias \(s^* = (s_1^*, s_2^*, \ldots, s_n^*)\) é um **Equilíbrio de Nash** se, para todo jogador \(i \in N\):

    \[
    u_i(s_i^*, s_{-i}^*) \geq u_i(s_i, s_{-i}^*) \quad \forall \; s_i \in S_i
    \]

    Em palavras: nenhum jogador pode melhorar unilateralmente seu payoff desviando de \(s_i^*\), dado que os demais jogadores mantêm suas estratégias de equilíbrio.

O equilíbrio de Nash é um conceito de **consistência mútua de expectativas**: se cada jogador espera que os demais joguem suas estratégias de equilíbrio, então é ótimo para ele também jogar sua estratégia de equilíbrio. Ninguém tem incentivo para desviar unilateralmente.

### Exemplos clássicos

**Batalha dos Sexos (BoS)**

Dois parceiros querem sair juntos, mas um prefere futebol (F) e o outro prefere cinema (C).

|  | Jogador 2: F | Jogador 2: C |
|:---|:---:|:---:|
| **Jogador 1: F** | \((3, 1)\) | \((0, 0)\) |
| **Jogador 1: C** | \((0, 0)\) | \((1, 3)\) |

Existem **dois equilíbrios de Nash em estratégias puras**: \((F, F)\) e \((C, C)\), e um em estratégias mistas (que derivaremos na seção seguinte). O jogo ilustra o problema de **coordenação** quando existem múltiplos equilíbrios.

**Hawk-Dove (Falcão-Pomba)**

Dois animais (ou firmas) disputam um recurso de valor \(V\). Cada um pode ser agressivo (Hawk, H) ou passivo (Dove, D). Se ambos são agressivos, há um conflito custoso; se um é agressivo e outro passivo, o agressivo obtém o recurso; se ambos são passivos, dividem.

|  | Jogador 2: H | Jogador 2: D |
|:---|:---:|:---:|
| **Jogador 1: H** | \(\left(\frac{V-C}{2}, \frac{V-C}{2}\right)\) | \((V, 0)\) |
| **Jogador 1: D** | \((0, V)\) | \(\left(\frac{V}{2}, \frac{V}{2}\right)\) |

Quando \(C > V\) (custo do conflito excede o valor do recurso), existem dois equilíbrios em puras — \((H, D)\) e \((D, H)\) — e um em mistas. A versão biológica desse jogo (Maynard Smith e Price, 1973) está na origem da **teoria dos jogos evolutiva**.

---

## 8.4 Estratégias Mistas

!!! definition "Estratégia mista"
    Uma **estratégia mista** para o jogador \(i\) é uma distribuição de probabilidade \(\sigma_i \in \Delta(S_i)\) sobre o conjunto de estratégias puras \(S_i\). Se \(S_i = \{s_i^1, s_i^2, \ldots, s_i^{m_i}\}\), então:

    \[
    \sigma_i = (p_i^1, p_i^2, \ldots, p_i^{m_i}), \quad p_i^k \geq 0, \quad \sum_{k=1}^{m_i} p_i^k = 1
    \]

    O payoff esperado do jogador \(i\) sob o perfil de estratégias mistas \(\sigma = (\sigma_1, \ldots, \sigma_n)\) é:

    \[
    U_i(\sigma) = \sum_{s \in S} \left(\prod_{j=1}^{n} \sigma_j(s_j)\right) u_i(s)
    \]

### Princípio da indiferença

Em um equilíbrio em estratégias mistas, cada jogador randomiza de tal forma que os outros jogadores ficam **indiferentes** entre as estratégias puras que recebem probabilidade positiva. Formalmente, se \(\sigma_i^*\) atribui probabilidade positiva a \(s_i^k\), então:

\[
U_i(s_i^k, \sigma_{-i}^*) = U_i(s_i^l, \sigma_{-i}^*) \quad \text{para todo } s_i^l \text{ com } \sigma_i^*(s_i^l) > 0
\]

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

---

## 8.5 Existência de Equilíbrio (Teorema de Nash)

!!! abstract "Teorema de Nash (1950)"
    Todo jogo finito (número finito de jogadores e de estratégias puras para cada jogador) possui pelo menos um **equilíbrio de Nash em estratégias mistas**.

!!! proof "Demonstração: Existência de equilíbrio de Nash em estratégias mistas (caso 2x2)"
    **Objetivo**: Demonstrar a existência de equilíbrio de Nash em estratégias mistas para um jogo com dois jogadores, cada um com duas estratégias puras.

    **Demonstração**:

    Considere um jogo \(2 \times 2\) com jogadores 1 e 2, cada um com estratégias \(\{A, B\}\). O jogador 1 escolhe \(A\) com probabilidade \(p \in [0,1]\) e o jogador 2 escolhe \(A\) com probabilidade \(q \in [0,1]\).

    **Passo 1 — Definição das funções de melhor resposta.**

    O payoff esperado do jogador 1, dado que joga \(A\) com probabilidade \(p\) e o jogador 2 joga \(A\) com probabilidade \(q\), é:

    \[
    U_1(p, q) = pq \, u_1(A,A) + p(1-q) \, u_1(A,B) + (1-p)q \, u_1(B,A) + (1-p)(1-q) \, u_1(B,B)
    \]

    Essa função é **linear** em \(p\) (para \(q\) fixo). Portanto:

    \[
    U_1(p, q) = p \cdot \underbrace{[q \, u_1(A,A) + (1-q) \, u_1(A,B)]}_{\equiv \alpha_1(q)} + (1-p) \cdot \underbrace{[q \, u_1(B,A) + (1-q) \, u_1(B,B)]}_{\equiv \beta_1(q)}
    \]

    A melhor resposta do jogador 1 é:

    \[
    BR_1(q) = \begin{cases} \{1\} & \text{se } \alpha_1(q) > \beta_1(q) \\ [0,1] & \text{se } \alpha_1(q) = \beta_1(q) \\ \{0\} & \text{se } \alpha_1(q) < \beta_1(q) \end{cases}
    \]

    Analogamente, define-se \(BR_2(p)\) para o jogador 2.

    **Passo 2 — Propriedades das correspondências de melhor resposta.**

    Para cada jogador \(i\), a correspondência de melhor resposta \(BR_i: [0,1] \rightrightarrows [0,1]\) satisfaz:

    - **(i) Valores não vazios**: Para cada \(q \in [0,1]\), \(BR_1(q) \neq \emptyset\) (pois estamos maximizando uma função contínua sobre um compacto).
    - **(ii) Valores convexos**: \(BR_1(q)\) é um intervalo fechado (é \(\{0\}\), \(\{1\}\) ou \([0,1]\)).
    - **(iii) Gráfico fechado (semicontinuidade superior)**: Se \(q_n \to q\), \(p_n \in BR_1(q_n)\) e \(p_n \to p\), então \(p \in BR_1(q)\). Isso segue da continuidade de \(U_1\) em \(q\).

    **Passo 3 — Aplicação do Teorema do Ponto Fixo de Kakutani.**

    Defina a correspondência conjunta:

    \[
    BR: [0,1]^2 \rightrightarrows [0,1]^2, \quad BR(p, q) = BR_1(q) \times BR_2(p)
    \]

    O domínio \([0,1]^2\) é compacto e convexo. Pelo Passo 2, \(BR\) satisfaz as hipóteses do **Teorema do Ponto Fixo de Kakutani**: valores não vazios, convexos e gráfico fechado.

    Logo, existe \((p^*, q^*) \in [0,1]^2\) tal que:

    \[
    (p^*, q^*) \in BR(p^*, q^*) = BR_1(q^*) \times BR_2(p^*)
    \]

    Isto é, \(p^* \in BR_1(q^*)\) e \(q^* \in BR_2(p^*)\), o que significa precisamente que \((p^*, q^*)\) é um **equilíbrio de Nash** em estratégias mistas. \(\blacksquare\)

!!! note "Observação sobre a demonstração geral"
    A demonstração para o caso geral (número finito arbitrário de jogadores e estratégias) segue a mesma lógica, utilizando o Teorema de Kakutani no simplexo de estratégias mistas \(\Delta(S_1) \times \cdots \times \Delta(S_n)\), que é um subconjunto compacto e convexo de \(\mathbb{R}^{\sum_i |S_i|}\).

---

## 8.6 Jogos com Ações Contínuas

Muitos jogos de interesse econômico envolvem espaços de estratégias contínuos. Os dois modelos clássicos de oligopólio são exemplos paradigmáticos.

### Competição de Cournot (quantidades)

Duas firmas escolhem simultaneamente as quantidades \(q_1, q_2 \geq 0\). A demanda inversa é \(P(Q) = a - bQ\), onde \(Q = q_1 + q_2\), e o custo marginal é constante e igual a \(c\) para ambas as firmas.

O lucro da firma \(i\) é:

\[
\pi_i(q_i, q_j) = (a - b(q_i + q_j) - c) \, q_i
\]

A condição de primeira ordem gera a **função de reação**:

\[
q_i^*(q_j) = \frac{a - c - bq_j}{2b}
\]

O equilíbrio de Nash (Cournot-Nash) é obtido pela interseção das funções de reação:

\[
q_1^* = q_2^* = \frac{a-c}{3b}, \qquad Q^* = \frac{2(a-c)}{3b}, \qquad P^* = \frac{a + 2c}{3}
\]

### Competição de Bertrand (preços)

Duas firmas com produtos homogêneos e custo marginal constante \(c\) escolhem simultaneamente os preços \(p_1, p_2\). Os consumidores compram da firma com menor preço.

O **paradoxo de Bertrand**: o único equilíbrio de Nash é \(p_1^* = p_2^* = c\), com lucro zero para ambas as firmas — mesmo com apenas dois concorrentes, o resultado é competitivo. Esse resultado contrasta fortemente com Cournot e destaca a importância da variável estratégica escolhida.

!!! tip "Cournot vs. Bertrand"
    A diferença entre os modelos de Cournot e Bertrand ilustra como a escolha da variável estratégica (quantidade vs. preço) afeta radicalmente o equilíbrio. Na prática, a escolha entre os modelos depende da natureza da indústria: setores com capacidade comprometida antecipadamente (petróleo, aço) são melhor descritos por Cournot; setores com custos de produção flexíveis e catálogos de preços (varejo, serviços) se aproximam de Bertrand.

---

## 8.7 Jogos Sequenciais

### Forma extensiva e indução retroativa

Nos jogos sequenciais, os jogadores se movem em ordem cronológica, e jogadores posteriores podem observar (pelo menos parcialmente) as ações dos anteriores. O conceito de solução apropriado é a **indução retroativa** (*backward induction*): resolve-se o jogo "de trás para frente", determinando as ações ótimas nos últimos nós de decisão e retrocedendo até o início.

!!! definition "Equilíbrio perfeito em subjogos (EPS)"
    Um perfil de estratégias constitui um **Equilíbrio Perfeito em Subjogos** se induz um equilíbrio de Nash em **todo subjogo** do jogo na forma extensiva.

    Formalmente, um subjogo é qualquer parte do jogo que: (i) começa em um nó de decisão que é um conjunto de informação unitário (singleton); (ii) contém todos os sucessores desse nó; (iii) não "corta" nenhum conjunto de informação.

O EPS é um **refinamento** do equilíbrio de Nash: todo EPS é um equilíbrio de Nash, mas nem todo equilíbrio de Nash é perfeito em subjogos. O EPS elimina equilíbrios sustentados por **ameaças não críveis** em subjogos fora do caminho de equilíbrio.

!!! example "Jogo de entrada (Stackelberg simplificado)"
    Considere um jogo de entrada em um mercado. A firma entrante (E) decide se entra ou não. Se E entra, a firma incumbente (I) decide se luta (L) ou acomoda (A).

    Payoffs: Se E não entra: \((0, 2)\). Se E entra e I acomoda: \((1, 1)\). Se E entra e I luta: \((-1, -1)\).

    **Equilíbrios de Nash**: (Não entra, Luta) e (Entra, Acomoda). Porém, no primeiro equilíbrio a ameaça de I de lutar **não é crível**: no subjogo que começa após a entrada, Lutar dá payoff \(-1\) a I, enquanto Acomodar dá \(1\). Logo, por indução retroativa, o único EPS é **(Entra, Acomoda)**.

---

## 8.8 Jogos Repetidos

Quando um jogo é jogado repetidamente entre os mesmos jogadores, a possibilidade de **punição futura** pode sustentar a cooperação em equilíbrio, mesmo quando o jogo de estágio tem um único equilíbrio não cooperativo.

### Jogos finitamente repetidos

Se o Dilema dos Prisioneiros é repetido um número finito \(T\) de vezes (e isso é conhecimento comum), a indução retroativa a partir do período \(T\) implica que o único EPS é a repetição do equilíbrio de estágio (Trair, Trair) em todos os períodos. A cooperação não pode ser sustentada.

### Jogos infinitamente repetidos

Se o jogo é repetido infinitamente (ou com probabilidade de continuação \(\delta\) a cada período), a cooperação pode ser sustentada como equilíbrio.

!!! definition "Estratégia de gatilho (*Grim Trigger*)"
    A estratégia de gatilho prescreve: coopere no primeiro período e continue cooperando enquanto todos cooperarem. Se qualquer jogador desviar, puna jogando a estratégia não cooperativa **para sempre**.

No Dilema dos Prisioneiros repetido infinitamente com fator de desconto \(\delta \in (0,1)\), a cooperação é sustentável pela estratégia de gatilho se e somente se:

\[
\frac{R}{1 - \delta} \geq T + \frac{\delta P}{1 - \delta}
\]

\[
\delta \geq \frac{T - R}{T - P}
\]

onde \(T > R > P > S\) são os payoffs do jogo de estágio. O fator de desconto \(\delta\) pode ser interpretado como a "paciência" dos jogadores ou a probabilidade de que o jogo continue por mais um período.

!!! abstract "Folk Theorem (versão informal)"
    Em jogos infinitamente repetidos com fator de desconto suficientemente próximo de 1, **qualquer** payoff individualmente racional e factível pode ser sustentado como equilíbrio de Nash do jogo repetido.

    Um payoff é **individualmente racional** para o jogador \(i\) se é pelo menos tão bom quanto o que \(i\) pode garantir independentemente das ações dos outros (seu **payoff de minimax**). Um payoff é **factível** se pertence ao fecho convexo dos payoffs realizáveis do jogo de estágio.

!!! note "Implicações do Folk Theorem"
    O Folk Theorem é simultaneamente poderoso e problemático. Poderoso porque mostra que a repetição pode resolver dilemas de cooperação. Problemático porque gera uma **multiplicidade** enorme de equilíbrios — praticamente qualquer resultado razoável pode ser sustentado, o que limita o poder preditivo da teoria. Refinamentos adicionais (como a renegotiation-proofness) buscam reduzir essa multiplicidade.

---

## 8.9 Jogos com Informação Incompleta (Bayesianos)

!!! definition "Jogo Bayesiano"
    Um **jogo Bayesiano** (ou jogo com informação incompleta) é um jogo em que pelo menos um jogador possui informação privada sobre algum parâmetro relevante (seu "tipo"). Formalmente:

    \[
    \Gamma^B = \langle N, (S_i)_{i \in N}, (\Theta_i)_{i \in N}, (u_i)_{i \in N}, p \rangle
    \]

    onde \(\Theta_i\) é o conjunto de tipos possíveis do jogador \(i\), \(u_i(s, \theta)\) é o payoff que depende do perfil de estratégias e do perfil de tipos, e \(p(\theta)\) é a distribuição de probabilidade conjunta sobre os tipos (prior comum).

!!! definition "Equilíbrio de Nash Bayesiano"
    Um perfil de estratégias \(\sigma^* = (\sigma_1^*, \ldots, \sigma_n^*)\), onde \(\sigma_i^*: \Theta_i \to \Delta(S_i)\), constitui um **Equilíbrio de Nash Bayesiano** se, para todo jogador \(i\) e todo tipo \(\theta_i \in \Theta_i\):

    \[
    \sigma_i^*(\theta_i) \in \arg\max_{s_i \in S_i} \; E_{\theta_{-i}|\theta_i}\left[u_i(s_i, \sigma_{-i}^*(\theta_{-i}), \theta_i, \theta_{-i})\right]
    \]

    Em palavras: cada tipo de cada jogador maximiza seu payoff esperado, condicionando nas suas crenças sobre os tipos dos outros jogadores e nas estratégias de equilíbrio dos outros.

O conceito central é que cada tipo de jogador é tratado como um "jogador" separado, e o equilíbrio requer que cada tipo jogue uma melhor resposta em relação à distribuição de tipos e estratégias dos demais.

!!! example "Exemplo: Licitação de valor privado"
    Dois licitantes disputam um objeto em leilão de primeiro preço (envelope fechado). Cada licitante \(i\) conhece seu valor \(v_i\), que é sorteado independentemente da distribuição uniforme em \([0, 1]\). O licitante com o lance mais alto ganha o objeto e paga seu lance.

    O equilíbrio de Nash Bayesiano (simétrico) envolve a estratégia de lance \(b(v) = v/2\): cada licitante faz um lance igual à metade de seu valor. Esse *bid shading* é racional porque o licitante condiciona no evento de vencer.

---

## 8.10 Jogos de Sinalização

Os jogos de sinalização, formalizados por Michael Spence (1973), são jogos sequenciais com informação incompleta nos quais a parte informada (o "remetente") age primeiro, escolhendo um sinal observável, e a parte desinformada (o "receptor") atualiza suas crenças e age em seguida.

!!! definition "Estrutura de um jogo de sinalização"
    1. A natureza sorteia o tipo \(\theta \in \Theta\) do remetente.
    2. O remetente observa \(\theta\) e escolhe um sinal \(m \in M\).
    3. O receptor observa \(m\) (mas não \(\theta\)), atualiza suas crenças via regra de Bayes e escolhe uma ação \(a \in A\).
    4. Os payoffs são \(u_R(m, a, \theta)\) e \(u_S(m, a, \theta)\).

!!! definition "Tipos de equilíbrio"
    - **Equilíbrio separador**: tipos diferentes escolhem sinais diferentes. O sinal revela perfeitamente o tipo. O receptor infere \(\theta\) a partir de \(m\).
    - **Equilíbrio agregador** (*pooling*): todos os tipos escolhem o mesmo sinal. O receptor não aprende nada além do prior.
    - **Equilíbrio semi-separador**: alguns tipos randomizam entre sinais, permitindo revelação parcial.

O modelo clássico de Spence sobre sinalização educacional ilustra esses conceitos. Trabalhadores têm habilidade alta (\(\theta_H\)) ou baixa (\(\theta_L\)). A educação (\(m = e\)) é custosa, mas o custo é menor para trabalhadores de alta habilidade:

\[
c(e, \theta_H) < c(e, \theta_L) \quad \text{para todo } e > 0
\]

Essa condição de **single-crossing** garante que, em equilíbrio separador, trabalhadores de alta habilidade investem em educação suficiente para se diferenciar, enquanto trabalhadores de baixa habilidade optam por menos educação. A educação funciona como **sinal crível** precisamente porque é mais custosa para quem ela visa imitar.

!!! tip "Sinalização vs. Capital Humano"
    No modelo de Spence, a educação tem valor de sinalização **mesmo que não aumente a produtividade**. Isso contrasta com a teoria do capital humano de Becker, na qual a educação aumenta diretamente a produtividade. Na realidade, a educação provavelmente combina ambos os papéis: formação de capital humano e sinalização de habilidade.

---

## Taxonomia dos Jogos Clássicos

A tabela a seguir resume as propriedades dos jogos clássicos mais estudados na teoria dos jogos, apresentando a estrutura de payoffs, os equilíbrios e as aplicações típicas.

| Jogo | Payoffs (genéricos) | EN em puras | EN em mistas | Característica principal | Aplicação econômica |
|:-----|:-------------------|:------------|:------------|:------------------------|:-------------------|
| **Dilema dos Prisioneiros** | \(T > R > P > S\); \(2R > T+S\) | (Trair, Trair) — único | — | Dominância estrita; ineficiência | Cartéis, corrida armamentista, bens públicos |
| **Batalha dos Sexos** | Coordenação com preferências divergentes | (F,F) e (C,C) | \(\sigma_1=(3/4, 1/4)\), \(\sigma_2=(1/4, 3/4)\) | Múltiplos equilíbrios; problema de coordenação | Padrões tecnológicos, negociação |
| **Hawk-Dove** | \(V>0\), \(C > V\) | (H,D) e (D,H) | \(p_H = V/C\) | Anti-coordenação; conflito | Disputas territoriais, guerras de preço |
| **Jogo da Coordenação Pura** | Payoffs altos na diagonal | (A,A) e (B,B) | Sim (instável) | Seleção de equilíbrio | Convenções sociais, padrões técnicos |
| **Matching Pennies** | Soma zero; interesses opostos | Nenhum | \((1/2, 1/2)\) cada | Jogo estritamente competitivo | Estratégias militares, esportes |

---

## Box Brasil: Guerra Fiscal entre Estados como Dilema dos Prisioneiros

!!! example "Box Brasil — A guerra fiscal do ICMS: uma corrida ao fundo"
    A competição entre estados brasileiros pela atração de investimentos por meio de benefícios fiscais no **ICMS** (Imposto sobre Circulação de Mercadorias e Serviços) é um dos exemplos mais claros e persistentes do Dilema dos Prisioneiros na política econômica brasileira.

    **A estrutura do jogo**

    Considere dois estados, A e B, que decidem simultaneamente se concedem incentivos fiscais (Conceder, C) ou mantêm a alíquota padrão (Não conceder, NC). Os payoffs representam a arrecadação líquida (receita tributária menos custo dos incentivos) e a atividade econômica atraída.

    |  | Estado B: NC | Estado B: C |
    |:---|:---:|:---:|
    | **Estado A: NC** | \((100, 100)\) | \((60, 120)\) |
    | **Estado A: C** | \((120, 60)\) | \((70, 70)\) |

    A estrutura reproduz o Dilema dos Prisioneiros: Conceder incentivos é estratégia dominante para cada estado, mas o resultado (C, C) = (70, 70) é Pareto-dominado por (NC, NC) = (100, 100). Quando ambos concedem incentivos, as empresas se redistribuem sem ganho líquido agregado, mas a arrecadação total cai.

    **Evidências empíricas**

    Dados do **Confaz** (Conselho Nacional de Política Fazendária) e das Secretarias Estaduais de Fazenda documentam extensivamente o fenômeno:

    - Entre os anos 2000 e 2020, praticamente todos os 27 entes federativos adotaram programas de incentivos fiscais ao ICMS, muitos sem aprovação do Confaz (e portanto inconstitucionais, conforme decisões do STF).
    - Estimativas indicam que os benefícios fiscais concedidos pelos estados representam entre 1% e 3% do PIB estadual em renúncia fiscal.
    - Estados como Goiás, Bahia, Mato Grosso do Sul e Espírito Santo foram particularmente agressivos na atração de indústrias, especialmente nos setores automotivo, farmacêutico e de alimentos.
    - A guerra fiscal gerou distorções alocativas, com investimentos direcionados não pela produtividade, mas pelos incentivos fiscais.

    **Tentativas de solução**

    Assim como no Dilema dos Prisioneiros repetido, soluções requerem mecanismos de **enforcement** que tornem a cooperação sustentável:

    - **Confaz**: Instituição criada para aprovar unanimemente benefícios fiscais. Na prática, a regra da unanimidade foi frequentemente descumprida.
    - **LC 160/2017 e Convênio ICMS 190/2017**: Tentativa de convalidar benefícios existentes e estabelecer glide path de redução gradual.
    - **Reforma Tributária (EC 132/2023)**: A criação do IBS (Imposto sobre Bens e Serviços) com alíquota uniforme e cobrança no destino (ao invés da origem) visa eliminar estruturalmente a guerra fiscal, pois remove o instrumento (ICMS na origem) que permitia a concessão unilateral de benefícios.

    **Lições da teoria dos jogos**

    A persistência da guerra fiscal por décadas ilustra a dificuldade de sustentar cooperação quando: (i) os incentivos individuais ao desvio são fortes; (ii) os mecanismos de punição (Confaz) são fracos; (iii) o horizonte temporal dos tomadores de decisão (governadores com mandatos de 4 anos) é mais curto que o necessário para que a punição intertemporal funcione (alto "desconto" efetivo). A Reforma Tributária representa uma mudança de regras do jogo — não se trata de sustentar cooperação no jogo existente, mas de redesenhar o jogo de modo que o dilema deixe de existir.

---

## Exercícios

**Exercício 8.1.** Considere o seguinte jogo simultâneo com dois jogadores:

|  | Jogador 2: L | Jogador 2: R |
|:---|:---:|:---:|
| **Jogador 1: U** | \((4, 3)\) | \((1, 5)\) |
| **Jogador 1: D** | \((3, 1)\) | \((2, 2)\) |

(a) Existem estratégias estritamente dominantes? Justifique.

(b) Encontre todos os equilíbrios de Nash em estratégias puras.

(c) Encontre o equilíbrio de Nash em estratégias mistas. Calcule os payoffs esperados de cada jogador.

---

**Exercício 8.2.** Duas firmas idênticas competem à la Cournot em um mercado com demanda inversa \(P(Q) = 120 - Q\), onde \(Q = q_1 + q_2\). Ambas têm custo marginal constante \(c = 30\).

(a) Derive as funções de melhor resposta de cada firma.

(b) Encontre o equilíbrio de Nash (quantidades, preço e lucros).

(c) Compare o resultado com o monopólio e com a competição perfeita.

(d) Agora suponha que a firma 1 move primeiro (Stackelberg). Encontre o equilíbrio perfeito em subjogos e compare com Cournot.

---

**Exercício 8.3.** (Dilema dos Prisioneiros Repetido) Considere o Dilema dos Prisioneiros com payoffs \(T = 5\), \(R = 3\), \(P = 1\), \(S = 0\), jogado infinitamente com fator de desconto \(\delta\).

(a) Determine o valor mínimo de \(\delta\) para que a cooperação seja sustentável pela estratégia de gatilho (*grim trigger*).

(b) Repita o cálculo para a estratégia *tit-for-tat* (coopere no primeiro período; depois, repita a ação do oponente no período anterior).

(c) Discuta as vantagens e desvantagens da estratégia *tit-for-tat* em relação ao *grim trigger* à luz dos experimentos de Axelrod (1984).

---

**Exercício 8.4.** (Jogo Bayesiano) Uma firma incumbente (I) pode ser de tipo forte (\(\theta_F\), com probabilidade \(p = 0{,}6\)) ou fraca (\(\theta_W\), com probabilidade \(1 - p = 0{,}4\)). Uma firma entrante (E) decide se entra ou não.

- Se E não entra: I obtém lucro de monopólio \(M = 10\) (independente do tipo); E obtém 0.
- Se E entra e I é forte: lucros são \((3, -2)\) para (I, E).
- Se E entra e I é fraca: lucros são \((2, 4)\) para (I, E).

(a) Represente o jogo na forma extensiva.

(b) Calcule o lucro esperado de E se entrar, em função de suas crenças.

(c) Encontre o Equilíbrio de Nash Bayesiano.

(d) A firma incumbente teria incentivo para sinalizar força (por exemplo, com propaganda agressiva)? Discuta.

---

**Exercício 8.5.** (Sinalização) No modelo de Spence, trabalhadores têm produtividade \(\theta_H = 2\) (com probabilidade \(0{,}5\)) ou \(\theta_L = 1\) (com probabilidade \(0{,}5\)). O custo da educação é \(c(e, \theta) = e / \theta\). As firmas competitivas oferecem salário igual à produtividade esperada, condicionada na educação observada.

(a) Encontre um equilíbrio separador especificando o nível de educação de cada tipo e as crenças das firmas.

(b) Verifique que nenhum tipo tem incentivo para desviar.

(c) Encontre um equilíbrio agregador e discuta por que ele pode ser eliminado pelo critério intuitivo de Cho e Kreps (1987).

(d) A educação gera bem-estar social neste modelo? Discuta a diferença entre o valor privado e o valor social da sinalização.
