# Capítulo 8 — Nash no Bar: A Arte do Pensamento Estratégico

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

<figure markdown="span">
  <iframe src="../graficos/cap08/matriz-payoffs.html" width="100%" height="620" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 8.1</strong> — Matriz de payoffs e equilíbrio de Nash. Edite os payoffs ou selecione um jogo clássico (Dilema dos Prisioneiros, Batalha dos Sexos, Hawk-Dove, Matching Pennies). O solver detecta estratégias dominantes, equilíbrios de Nash em puras e mistas.</figcaption>
</figure>

---

## 8.3 Equilíbrio de Nash

!!! definition "Equilíbrio de Nash (estratégias puras)"
    Um perfil de estratégias \(s^* = (s_1^*, s_2^*, \ldots, s_n^*)\) é um **Equilíbrio de Nash** se, para todo jogador \(i \in N\):

    \[
    u_i(s_i^*, s_{-i}^*) \geq u_i(s_i, s_{-i}^*) \quad \forall \; s_i \in S_i
    \]

    Em palavras: nenhum jogador pode melhorar unilateralmente seu payoff desviando de \(s_i^*\), dado que os demais jogadores mantêm suas estratégias de equilíbrio.

O equilíbrio de Nash é um conceito de **consistência mútua de expectativas** (Gibbons, 2004, Cap. 1): se cada jogador espera que os demais joguem suas estratégias de equilíbrio, então é ótimo para ele também jogar sua estratégia de equilíbrio. Ninguém tem incentivo para desviar unilateralmente.

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

<figure markdown="span">
  <iframe src="../graficos/cap08/estrategias-mistas.html" width="100%" height="820" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 8.2</strong> — Equilíbrio em estratégias mistas. Para um jogo 2×2, os gráficos mostram o payoff esperado de cada jogador em função da probabilidade de mistura do oponente. O ponto de interseção determina a probabilidade de equilíbrio (princípio da indiferença). Edite os payoffs e selecione jogos predefinidos.</figcaption>
</figure>

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

<figure markdown="span">
  <iframe src="../graficos/cap08/cournot-reacao.html" width="100%" height="560" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 8.3</strong> — Funções de reação de Cournot. Ajuste os parâmetros de demanda (\(a\), \(b\)) e os custos marginais (\(c_1\), \(c_2\)) de cada firma. O equilíbrio de Nash é a interseção das funções de melhor resposta. Clique em "Animar convergência" para visualizar a dinâmica de melhores respostas alternadas.</figcaption>
</figure>

---

## 8.7 Jogos Sequenciais

### Forma extensiva e indução retroativa

Nos jogos sequenciais, os jogadores se movem em ordem cronológica, e jogadores posteriores podem observar (pelo menos parcialmente) as ações dos anteriores. O conceito de solução apropriado é a **indução retroativa** (*backward induction*) (Gibbons, 2004, Cap. 2): resolve-se o jogo "de trás para frente", determinando as ações ótimas nos últimos nós de decisão e retrocedendo até o início.

!!! definition "Equilíbrio perfeito em subjogos (EPS)"
    Um perfil de estratégias constitui um **Equilíbrio Perfeito em Subjogos** se induz um equilíbrio de Nash em **todo subjogo** do jogo na forma extensiva.

    Formalmente, um subjogo é qualquer parte do jogo que: (i) começa em um nó de decisão que é um conjunto de informação unitário (singleton); (ii) contém todos os sucessores desse nó; (iii) não "corta" nenhum conjunto de informação.

O EPS é um **refinamento** do equilíbrio de Nash: todo EPS é um equilíbrio de Nash, mas nem todo equilíbrio de Nash é perfeito em subjogos. O EPS elimina equilíbrios sustentados por **ameaças não críveis** em subjogos fora do caminho de equilíbrio.

!!! example "Jogo de entrada (Stackelberg simplificado)"
    Considere um jogo de entrada em um mercado. A firma entrante (E) decide se entra ou não. Se E entra, a firma incumbente (I) decide se luta (L) ou acomoda (A).

    Payoffs: Se E não entra: \((0, 2)\). Se E entra e I acomoda: \((1, 1)\). Se E entra e I luta: \((-1, -1)\).

    **Equilíbrios de Nash**: (Não entra, Luta) e (Entra, Acomoda). Porém, no primeiro equilíbrio a ameaça de I de lutar **não é crível**: no subjogo que começa após a entrada, Lutar dá payoff \(-1\) a I, enquanto Acomodar dá \(1\). Logo, por indução retroativa, o único EPS é **(Entra, Acomoda)**.

<figure markdown="span">
  <iframe src="../graficos/cap08/jogo-sequencial.html" width="100%" height="520" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 8.4</strong> — Jogo sequencial na forma extensiva. Selecione um jogo predefinido (Deterrência de Entrada ou Stackelberg), edite os payoffs nos nós terminais e resolva por indução retroativa. O caminho do equilíbrio perfeito em subjogos é destacado em vermelho.</figcaption>
</figure>

---

## 8.8 Jogos Repetidos

Quando um jogo é jogado repetidamente entre os mesmos jogadores (Gibbons, 2004, Cap. 2), a possibilidade de **punição futura** pode sustentar a cooperação em equilíbrio, mesmo quando o jogo de estágio tem um único equilíbrio não cooperativo.

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
    Um **jogo Bayesiano** (ou jogo com informação incompleta) (Gibbons, 2004, Cap. 3) é um jogo em que pelo menos um jogador possui informação privada sobre algum parâmetro relevante (seu "tipo"). Formalmente:

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

## Box Brasil: Cartéis de Postos de Combustíveis e o CADE

!!! example "Box Brasil — Cartéis de postos de combustíveis: conluio, detecção e punição"
    O mercado de revenda de combustíveis no Brasil é um dos campos mais ativos de investigação antitruste pelo **CADE** (Conselho Administrativo de Defesa Econômica). A frequência de cartéis nesse setor oferece um laboratório natural para a teoria dos jogos repetidos.

    **Por que o conluio é frequente nesse mercado?**

    A teoria dos jogos repetidos (Seção 8.8) identifica condições que facilitam a sustentação de conluio como equilíbrio: (i) poucas firmas no mercado relevante; (ii) produto homogêneo (gasolina comum é igual em qualquer posto); (iii) preços facilmente observáveis (placas na entrada); (iv) interação repetida entre os mesmos competidores. O mercado de revenda de combustíveis em muitas cidades brasileiras satisfaz todas essas condições.

    **Casos recentes**

    Apenas entre 2024 e 2025, o CADE condenou cartéis de revenda de combustíveis em três estados:

    - **Distrito Federal (2025)**: sete redes de postos condenadas, com multas superiores a **R\$ 150 milhões**. A investigação demonstrou coordenação de preços entre revendedores.
    - **Paraná (2024)**: 12 postos e 2 pessoas físicas condenados em Francisco Beltrão, com multas de **R\$ 59 milhões**.
    - **Santa Catarina (2024)**: cartel em Joinville condenado com multas de **R\$ 55 milhões**.

    **Mecanismos de sustentação do cartel**

    Na linguagem da teoria dos jogos, os postos operam uma estratégia do tipo *grim trigger* informal: todos praticam preços elevados e, se algum desviar, os demais retomam a competição. A transparência dos preços (afixados em totens luminosos) funciona como mecanismo de monitoramento — qualquer desvio é imediatamente detectável. A punição por "guerra de preços" reduz os lucros de todos e funciona como ameaça crível.

    **O papel do CADE**

    O CADE atua como um mecanismo institucional que torna o conluio mais custoso: ao impor multas elevadas (até 20% do faturamento bruto), a autoridade antitruste reduz o payoff esperado da cooperação ilícita. O programa de leniência (inspirado na teoria dos jogos) oferece redução de pena ao primeiro membro do cartel que denunciar, explorando a mesma lógica do Dilema dos Prisioneiros: a tentação de trair o cartel em troca de imunidade desestabiliza o acordo.

    **Fonte**: CADE, decisões do Tribunal Administrativo (2024–2025); Agência Brasil; CNN Brasil.

---

## Box Brasil: O Oligopólio Aéreo Brasileiro

!!! example "Box Brasil — Gol, Latam e Azul: competição estratégica a 10.000 metros"
    O transporte aéreo doméstico no Brasil é um dos mercados mais concentrados do país e ilustra diretamente os modelos de oligopólio do Capítulo 8.

    **Concentração extrema**

    Dados da **ANAC** (Agência Nacional de Aviação Civil) para 2024 mostram que três companhias detêm **98,9%** do mercado doméstico de passageiros:

    | Companhia | Market share (2024) |
    |:----------|:-------------------|
    | Latam     | 39,1%              |
    | Gol       | 30,7%              |
    | Azul      | 29,7%              |
    | Outras    | 0,5%               |

    Essa estrutura de triopólio concentrado se encaixa nos modelos de Cournot ou Bertrand com produtos diferenciados, dependendo da rota e do horizonte temporal analisado.

    **Qual modelo se aplica?**

    - Em **rotas com concorrência direta** (São Paulo–Rio, por exemplo), a competição se aproxima de **Bertrand com diferenciação**: preços são a variável estratégica e as empresas competem por passageiros sensíveis a preço, horário e serviço.
    - Em **rotas com slots limitados** em aeroportos congestionados (Congonhas, Santos Dumont), a competição se aproxima de **Cournot**: a oferta de assentos (capacidade) é decidida antecipadamente e é a variável estratégica efetiva.
    - A dinâmica de **liderança de preço** observada em promoções e reajustes tarifários evoca o modelo de **Stackelberg**, com a Latam frequentemente agindo como líder.

    **Barreiras à entrada e credibilidade de ameaças**

    A entrada de novas companhias é dificultada por custos afundados (frota, certificação, slots), economias de escala e rede de rotas. A história do setor inclui episódios de guerras de preço que podem ser interpretados como estratégias de deterrência de entrada (Seção 8.7): companhias incumbentes praticaram preços agressivos em rotas disputadas por entrantes, como nos episódios envolvendo a Webjet e a Avianca Brasil antes de suas saídas do mercado.

    **Fonte**: ANAC, Relatório de Demanda e Oferta do Transporte Aéreo 2024; CADE, Cadernos do CADE — Mercado de Transporte Aéreo.

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 8.1"
    **Enunciado:** Encontre todos os equilíbrios de Nash (em puras e em mistas) do seguinte jogo simultâneo:

    |  | Jogador 2: E | Jogador 2: D |
    |:---|:---:|:---:|
    | **Jogador 1: C** | \((2, 1)\) | \((0, 0)\) |
    | **Jogador 1: B** | \((0, 0)\) | \((1, 2)\) |

    **Resolução:**

    **Passo 1 — Equilíbrios em estratégias puras**

    Verifique cada perfil:

    - \((C, E)\): J1 obtém 2. Desviar para B dá 0. Não desvia. J2 obtém 1. Desviar para D dá 0. Não desvia. **Nash** ✓
    - \((C, D)\): J1 obtém 0. Desviar para B dá 1. Desvia. **Não é Nash**.
    - \((B, E)\): J1 obtém 0. Desviar para C dá 2. Desvia. **Não é Nash**.
    - \((B, D)\): J1 obtém 1. Desviar para C dá 0. Não desvia. J2 obtém 2. Desviar para E dá 0. Não desvia. **Nash** ✓

    Dois equilíbrios em puras: \((C, E)\) e \((B, D)\). Trata-se de uma **Batalha dos Sexos**.

    **Passo 2 — Equilíbrio em estratégias mistas**

    Seja \(p\) a probabilidade de J1 jogar C e \(q\) a probabilidade de J2 jogar E.

    Para J2 ser indiferente entre E e D:

    \[
    U_2(E; p) = U_2(D; p) \implies p \cdot 1 + (1-p) \cdot 0 = p \cdot 0 + (1-p) \cdot 2
    \]

    \[
    p = 2(1-p) \implies p = 2 - 2p \implies 3p = 2 \implies p = \frac{2}{3}
    \]

    Para J1 ser indiferente entre C e B:

    \[
    U_1(C; q) = U_1(B; q) \implies 2q = (1-q) \implies 3q = 1 \implies q = \frac{1}{3}
    \]

    **Resultado:** Três equilíbrios de Nash: \((C, E)\), \((B, D)\) e o misto \(\sigma_1 = (2/3, 1/3)\), \(\sigma_2 = (1/3, 2/3)\).

    O payoff esperado no equilíbrio misto é \(U_1 = 2/3\) e \(U_2 = 2/3\) — inferior a ambos os equilíbrios puros, evidenciando o custo da falha de coordenação.

    **Interpretação econômica:** Este jogo representa situações em que dois agentes precisam se coordenar mas discordam sobre qual coordenação é preferível — como duas empresas brasileiras decidindo se adotam o padrão tecnológico A ou B. A existência de múltiplos equilíbrios explica por que convenções, normas da ABNT e regulamentações governamentais são valiosas: elas funcionam como "pontos focais" (Schelling, 1960) que resolvem o problema de coordenação.

??? example "Exercício Resolvido 8.2"
    **Enunciado:** Duas companhias aéreas competem à la Cournot em uma rota doméstica. A demanda inversa é \(P(Q) = 500 - 2Q\), onde \(Q = q_1 + q_2\) (em milhares de assentos/mês). A companhia 1 (incumbente) tem custo marginal \(c_1 = 100\) e a companhia 2 (entrante) tem custo marginal \(c_2 = 150\). Encontre o equilíbrio de Cournot-Nash.

    **Dados:** \(P = 500 - 2Q\), \(c_1 = 100\), \(c_2 = 150\).

    **Resolução:**

    **Passo 1 — Funções de reação**

    Lucro da firma \(i\): \(\pi_i = (500 - 2q_i - 2q_j - c_i) q_i\).

    CPO da firma 1: \(500 - 4q_1 - 2q_2 - 100 = 0 \implies q_1^*(q_2) = \frac{400 - 2q_2}{4} = 100 - \frac{q_2}{2}\)

    CPO da firma 2: \(500 - 2q_1 - 4q_2 - 150 = 0 \implies q_2^*(q_1) = \frac{350 - 2q_1}{4} = 87{,}5 - \frac{q_1}{2}\)

    **Passo 2 — Equilíbrio (interseção das funções de reação)**

    Substituindo \(q_2^*\) em \(q_1^*\):

    \[
    q_1 = 100 - \frac{1}{2}\left(87{,}5 - \frac{q_1}{2}\right) = 100 - 43{,}75 + \frac{q_1}{4} = 56{,}25 + \frac{q_1}{4}
    \]

    \[
    \frac{3q_1}{4} = 56{,}25 \implies q_1^* = 75
    \]

    \[
    q_2^* = 87{,}5 - \frac{75}{2} = 87{,}5 - 37{,}5 = 50
    \]

    **Passo 3 — Preço e lucros**

    \[
    Q^* = 125, \quad P^* = 500 - 250 = 250
    \]

    \[
    \pi_1 = (250 - 100) \times 75 = 150 \times 75 = 11.250
    \]

    \[
    \pi_2 = (250 - 150) \times 50 = 100 \times 50 = 5.000
    \]

    **Resultado:** \(q_1^* = 75\), \(q_2^* = 50\), \(P^* = 250\), \(\pi_1 = 11.250\), \(\pi_2 = 5.000\) (em milhares de reais).

    **Interpretação econômica:** A firma com menor custo marginal (incumbente) produz mais e obtém lucro maior — uma vantagem competitiva que reflete a importância da eficiência de custos em oligopólios. No setor aéreo brasileiro, a Latam tem historicamente custos por assento-quilômetro menores que concorrentes regionais, o que contribui para sua maior participação de mercado (39,1% em 2024). O modelo de Cournot captura bem a competição por capacidade (assentos) em rotas com limitação de slots aeroportuários.

??? example "Exercício Resolvido 8.3"
    **Enunciado:** Dois postos de combustíveis em uma cidade pequena interagem repetidamente. O jogo de estágio é um Dilema dos Prisioneiros com payoffs: se ambos mantêm preço alto (cooperam), cada um lucra R\$ 8.000/mês; se ambos cortam preço (traem), cada um lucra R\$ 2.000/mês; se um corta e outro mantém, o que cortou lucra R\$ 12.000 e o outro lucra R\$ 0. Qual o fator de desconto mínimo para sustentar cooperação com *grim trigger*?

    **Dados:** \(T = 12.000\), \(R = 8.000\), \(P = 2.000\), \(S = 0\), jogo infinitamente repetido.

    **Resolução:**

    **Passo 1 — Condição de cooperação com grim trigger**

    O valor presente de cooperar para sempre:

    \[
    V_{\text{coop}} = \frac{R}{1 - \delta} = \frac{8.000}{1 - \delta}
    \]

    O valor presente de desviar hoje e ser punido para sempre:

    \[
    V_{\text{desvio}} = T + \frac{\delta P}{1 - \delta} = 12.000 + \frac{2.000\delta}{1 - \delta}
    \]

    **Passo 2 — Resolver a desigualdade**

    \[
    \frac{8.000}{1 - \delta} \geq 12.000 + \frac{2.000\delta}{1 - \delta}
    \]

    \[
    \frac{8.000 - 2.000\delta}{1 - \delta} \geq 12.000
    \]

    \[
    8.000 - 2.000\delta \geq 12.000(1 - \delta)= 12.000 - 12.000\delta
    \]

    \[
    10.000\delta \geq 4.000 \implies \delta \geq 0{,}4
    \]

    Verificação pela fórmula direta: \(\delta \geq \frac{T - R}{T - P} = \frac{12.000 - 8.000}{12.000 - 2.000} = \frac{4.000}{10.000} = 0{,}4\). ✓

    **Resultado:** O fator de desconto mínimo é \(\delta^* = 0{,}4\). Se \(\delta \geq 0{,}4\), a cooperação (preço alto) é sustentável como equilíbrio perfeito em subjogos.

    **Interpretação econômica:** O valor \(\delta = 0{,}4\) é relativamente baixo, indicando que a cooperação é fácil de sustentar nesse mercado — consistente com a prevalência de cartéis de combustíveis no Brasil. Com interação diária e horizonte longo, o fator de desconto efetivo entre dois meses consecutivos é próximo de 1, muito acima de 0,4. Isso explica por que o CADE tem condenado cartéis de postos em todo o país (R\$ 150 milhões em multas só no DF em 2025): as condições estruturais do mercado tornam o conluio um equilíbrio estável, e apenas a intervenção da autoridade antitruste — alterando os payoffs via multas — pode desestabilizá-lo.

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

---

## Vem, ANPEC!

??? question "ANPEC 2010 — Questão 10"
    Considere o jogo conhecido como "caça ao cervo", abaixo:

    |  | Caçador 2: Cervo | Caçador 2: Lebre |
    |:---|:---:|:---:|
    | **Caçador 1: Cervo** | \((3, 3)\) | \((x, 1)\) |
    | **Caçador 1: Lebre** | \((1, x)\) | \((1, 1)\) |

    em que \(0 \leq x < 1\) é constante. Com base nesse jogo, avalie as afirmações abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Trata-se de um jogo de informação imperfeita. |
    | 1    | Há dois equilíbrios de Nash. |
    | 2    | Os dois caçadores possuem estratégias fracamente dominantes. |
    | 3    | Suponha que \(x = 0\). Então o equilíbrio em estratégias mistas prescreve que cada caçador cace Cervo com probabilidade \(1/3\) e cace Lebre com probabilidade \(2/3\). |
    | 4    | Suponha que \(0 \leq x < 1\). Se \(x\) converge para 1, então o equilíbrio em estratégias mistas converge para o equilíbrio de Nash Pareto-dominado em estratégias puras. |

    ??? success "Gabarito"
        **Respostas: 11011**

        **Justificativa por item:**

        - **Item 0 — V:** Jogos simultâneos são jogos de informação imperfeita, pois cada jogador desconhece a ação escolhida pelo outro no momento de sua decisão. Na forma extensiva, isso se representa por conjuntos de informação não unitários.

        - **Item 1 — V:** Dois equilíbrios de Nash em puras: (Cervo, Cervo) com payoffs \((3,3)\) e (Lebre, Lebre) com payoffs \((1,1)\). Em ambos, nenhum jogador desvia unilateralmente (pois \(x < 1 < 3\) e \(1 > x\)).

        - **Item 2 — F:** Nenhum caçador possui estratégia (fracamente) dominante. Cervo é melhor quando o outro joga Cervo (\(3 > 1\)), mas Lebre é melhor quando o outro joga Lebre (\(1 > x\)). A melhor resposta depende da ação do oponente.

        - **Item 3 — V:** Com \(x = 0\), para o caçador 2 ser indiferente: \(U_2(\text{Cervo}; p) = 3p + 0(1-p) = 3p\) e \(U_2(\text{Lebre}; p) = 1\). Igualando: \(3p = 1 \implies p = 1/3\). Por simetria, \(q = 1/3\). Cada caçador joga Cervo com probabilidade \(1/3\).

        - **Item 4 — V:** Para \(x\) genérico, a probabilidade de equilíbrio misto de jogar Cervo é \(p = (1-x)/(3-x)\). Quando \(x \to 1\): \(p \to 0/(3-1) = 0\). Ambos jogam Lebre com probabilidade 1, convergindo para o equilíbrio (Lebre, Lebre), que é Pareto-dominado por (Cervo, Cervo).

??? question "ANPEC 2021 — Questão 11"
    Com relação à Teoria dos Jogos, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0    | A ordem em que estratégias fracamente dominadas são eliminadas é relevante, pois pode afetar o conjunto das estratégias sobreviventes. |
    | 1    | No jogo abaixo, T (topo), M (meio) e B (baixo) são as estratégias do jogador 1 e E (esquerda), C (centro) e D (direita) são as estratégias do jogador 2. Então as estratégias racionalizáveis são T, M, E. |

    Jogo do Item 1:

    |  | J2: E | J2: C | J2: D |
    |:---|:---:|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((1, 1)\) | \((4, 2)\) |
    | **J1: M** | \((3, 4)\) | \((1, 2)\) | \((2, 3)\) |
    | **J1: B** | \((1, 3)\) | \((0, 2)\) | \((3, 0)\) |

    | Item | Afirmação |
    |------|-----------|
    | 2    | No equilíbrio de Nash em estratégias mistas do jogo abaixo, o jogador 1 joga T com probabilidade \(1/3\) e B com probabilidade \(2/3\), ao passo que o jogador 2 joga E com probabilidade \(2/3\) e D com probabilidade \(1/3\). |

    Jogo do Item 2:

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((4, 2)\) |
    | **J1: B** | \((3, 4)\) | \((2, 3)\) |

    | Item | Afirmação |
    |------|-----------|
    | 3    | No jogo abaixo existe um único equilíbrio de Nash em estratégias puras. |

    Jogo do Item 3:

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((-1, -1)\) | \((4, 0)\) |
    | **J1: B** | \((0, 4)\) | \((2, 2)\) |

    | Item | Afirmação |
    |------|-----------|
    | 4    | Todo jogo na forma normal possui um equilíbrio de Nash em estratégias mistas. |

    ??? success "Gabarito"
        **Respostas: 10100**

        **Justificativa por item:**

        - **Item 0 — V:** Resultado clássico. A eliminação iterada de estratégias **estritamente** dominadas independe da ordem, mas para **fracamente** dominadas a ordem pode alterar o conjunto de estratégias sobreviventes. Exemplo: em certos jogos, eliminar uma estratégia fracamente dominada primeiro pode "salvar" outra que seria eliminada em ordem diferente.

        - **Item 1 — F:** Eliminando B (estritamente dominada por T para J1), resta o jogo 2×3. Nele, C é estritamente dominada por uma mistura de E e D para J2 (por exemplo, com \(\alpha = 0{,}4\): payoffs \(0{,}4 \times 0 + 0{,}6 \times 2 = 1{,}2 > 1\) para T e \(0{,}4 \times 4 + 0{,}6 \times 3 = 3{,}4 > 2\) para M). Eliminando C, sobram T, M para J1 e E, D para J2 — nenhuma é dominada. As estratégias racionalizáveis são \(\{T, M\} \times \{E, D\}\), não apenas \(\{T, M, E\}\).

        - **Item 2 — V:** Para J2 ser indiferente: \(U_2(E; p) = 4(1-p)\) e \(U_2(D; p) = 2p + 3(1-p) = 3 - p\). Igualando: \(4 - 4p = 3 - p \implies 1 = 3p \implies p = 1/3\). Para J1: \(U_1(T; q) = 2q + 4(1-q) = 4 - 2q\) e \(U_1(B; q) = 3q + 2(1-q) = 2 + q\). Igualando: \(4 - 2q = 2 + q \implies 2 = 3q \implies q = 2/3\). Correto.

        - **Item 3 — F:** Existem **dois** equilíbrios de Nash em puras: \((T, D)\) com payoffs \((4, 0)\) e \((B, E)\) com payoffs \((0, 4)\). Verificação: em \((T, D)\), J1 não desvia (4 > -1) e J2 não desvia (0 > -1); em \((B, E)\), J1 não desvia (0 > -1) e J2 não desvia (4 > 0).

        - **Item 4 — F:** O Teorema de Nash garante existência para jogos **finitos** (número finito de jogadores e estratégias puras). Jogos com espaços de estratégias infinitos (contínuos) podem não possuir equilíbrio de Nash sem condições adicionais (compacidade e continuidade dos payoffs, pelo teorema de Glicksberg).

??? question "ANPEC 2022 — Questão 11"
    Com relação ao oligopólio, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em um Duopólio de Cournot, os custos das firmas 1 e 2 são, respectivamente, \(c_1(q_1) = q_1^2/2\) e \(c_2(q_2) = q_2^2\). A demanda agregada é \(P(Q) = 11 - Q\), em que \(Q = q_1 + q_2\). Denote por \(P^*\) o preço de equilíbrio de Cournot-Nash. Então o equilíbrio de Cournot-Nash é \((q_1^*, q_2^*; P^*) = (3, 2; 6)\). |
    | 1    | Ao compararmos os graus de oligopolização de duas indústrias pelos respectivos Índices de Lerner, a indústria mais oligopolizada é necessariamente aquela com maior concentração industrial pelo Índice de Hirschman-Herfindahl. |
    | 2    | No equilíbrio de Stackelberg, a firma seguidora tem um lucro maior do que aquele que teria no equilíbrio de Cournot. |
    | 3    | No equilíbrio de Stackelberg, a curva de isolucro da firma líder é tangente à curva de reação da firma seguidora. |
    | 4    | Duas firmas em um Duopólio de Bertrand, diante da perspectiva de um Jogo de Nash repetido infinitamente, podem se cartelizar. No jogo estático: se elas competem via Bertrand, têm os lucros de Bertrand; se elas se cartelizam, cada uma tem um lucro de \$40; se uma firma decide se desviar da estratégia de cartel enquanto a outra adota a estratégia de cartel, a firma desviante tem lucro de \$200, enquanto a outra tem lucro zero. Então, a menor taxa de desconto intertemporal que implementa o cartel como equilíbrio perfeito de subjogo com estratégia de punição GRIM é \(\delta = 0{,}25\). |

    ??? success "Gabarito"
        **Respostas: 10010**

        **Justificativa por item:**

        - **Item 0 — V:** Firma 1: \(\pi_1 = (11 - q_1 - q_2)q_1 - q_1^2/2\). CPO: \(11 - 2q_1 - q_2 - q_1 = 0 \implies q_1 = (11 - q_2)/3\). Firma 2: \(\pi_2 = (11 - q_1 - q_2)q_2 - q_2^2\). CPO: \(11 - q_1 - 2q_2 - 2q_2 = 0 \implies q_2 = (11 - q_1)/4\). Resolvendo: \(q_1 = (11 - (11 - q_1)/4)/3 \implies 12q_1 = 44 - 11 + q_1 \implies q_1 = 3\), \(q_2 = (11-3)/4 = 2\), \(P = 11 - 5 = 6\). Correto.

        - **Item 1 — F:** A relação entre o Índice de Lerner e o HHI depende da elasticidade-preço da demanda. No modelo de Cournot, \(L = \text{HHI}/|\varepsilon|\). Duas indústrias com o mesmo HHI podem ter Índices de Lerner diferentes se suas elasticidades de demanda diferem. Portanto, maior Lerner não implica necessariamente maior HHI.

        - **Item 2 — F:** No modelo de Stackelberg, a firma líder se compromete com uma quantidade maior que a de Cournot, e a firma seguidora responde com uma quantidade **menor** que a de Cournot. Com menor produção e preço mais baixo (devido à maior produção total), a firma seguidora obtém lucro **menor** que em Cournot.

        - **Item 3 — V:** No equilíbrio de Stackelberg, a firma líder maximiza seu lucro **ao longo da curva de reação** da firma seguidora. Graficamente, isso corresponde ao ponto onde a curva de isolucro mais alta possível da líder tangencia a curva de reação da seguidora.

        - **Item 4 — F:** Com estratégia GRIM: cooperar dá \(40/(1-\delta)\), desviar dá \(200 + 0 \cdot \delta/(1-\delta) = 200\) (pois o lucro de Bertrand é zero). Condição: \(40/(1-\delta) \geq 200 \implies 40 \geq 200(1-\delta) \implies \delta \geq 160/200 = 0{,}80\). O valor mínimo é \(\delta = 0{,}80\), não \(0{,}25\).

---

## Apêndice: A Pesquisa em Ação

### Entrada e competição em mercados concentrados

> **Referência completa:** Bresnahan, Timothy F.; Reiss, Peter C. "Entry and Competition in Concentrated Markets."
> *Journal of Political Economy*, 99(5): 977–1009, 1991.
> DOI: 10.1086/261786

**A pergunta**

Quantas firmas são necessárias para que um mercado se torne efetivamente competitivo? A teoria dos jogos prevê que Bertrand com dois concorrentes já gera preço competitivo, enquanto Cournot requer muitas firmas. Qual dessas previsões se aproxima mais da realidade?

**Como os autores responderam**

Bresnahan e Reiss desenvolveram um modelo econométrico de entrada em mercados locais geograficamente isolados nos Estados Unidos (cidades pequenas com 1 a 5 firmas). Usando dados de cinco setores — médicos, dentistas, farmácias, encanadores e loja de pneus —, os autores inferiram o nível de competição a partir do tamanho mínimo de mercado necessário para sustentar uma firma adicional. A ideia-chave: se o mercado precisa ser proporcionalmente maior para sustentar 3 firmas do que para sustentar 2, isso significa que a terceira firma reduz as margens — evidência de que a entrada intensifica a competição.

**O que descobriram**

A transição de monopólio para duopólio e de duopólio para triopólio gera reduções significativas nas margens de lucro. A partir de 3 a 5 firmas, o tamanho de mercado por firma se estabiliza, sugerindo que a maior parte dos ganhos competitivos ocorre com a entrada das primeiras concorrentes. O efeito pró-competitivo da terceira entrante é tipicamente menor que o da segunda — ou seja, a competição se intensifica rapidamente com poucas firmas.

**Por que isso importa**

Para o Brasil, os resultados têm implicações diretas para a análise do CADE em atos de concentração. A fusão de duas das três grandes companhias aéreas, por exemplo, reduziria muitas rotas de triopólio para duopólio — precisamente a faixa onde Bresnahan e Reiss encontram os maiores aumentos de margem. A metodologia também é aplicável a mercados de combustíveis, farmácias e serviços de saúde no interior do país.

**Conexão com este capítulo**

O artigo testa empiricamente as previsões dos modelos de Cournot e Bertrand (Seção 8.6) sobre a relação entre número de concorrentes e intensidade da competição. Os resultados são mais consistentes com modelos intermediários (competição monopolística ou Cournot com poucas firmas) do que com os extremos de Bertrand puro (dois bastam) ou competição perfeita (muitos necessários).

### Estabilidade de cartéis: evidência empírica de jogos repetidos

> **Referência completa:** Porter, Robert H. "A Study of Cartel Stability: The Joint Executive Committee, 1880–1886."
> *The Bell Journal of Economics*, 14(2): 301–314, 1983.
> DOI: 10.2307/3003634

**A pergunta**

Os modelos teóricos de jogos repetidos preveem que cartéis alternam entre fases de conluio (preços altos) e fases de punição (guerras de preço). Essa dinâmica é observável em dados reais? É possível identificar empiricamente as transições entre cooperação e punição?

**Como os autores responderam**

Porter analisou dados semanais de preços e quantidades do *Joint Executive Committee* (JEC), um cartel de ferrovias nos Estados Unidos entre 1880 e 1886. Usando um modelo econométrico de mudança de regime (*switching regression*), estimou a probabilidade de o cartel estar em fase cooperativa ou em fase de guerra de preços em cada semana. O modelo permite que os parâmetros de demanda e oferta mudem entre os dois regimes.

**O que descobriram**

O cartel ferroviário efetivamente alternava entre dois regimes: períodos de cooperação (preços elevados e quantidades restringidas) e episódios de guerra de preço (preços baixos e quantidades elevadas). Os choques de demanda — como mudanças sazonais no tráfego de grãos nos Grandes Lagos — precipitavam colapsos da cooperação, consistente com o modelo teórico de Green e Porter (1984) no qual choques negativos de demanda são indistinguíveis de desvios, acionando a fase de punição.

**Por que isso importa**

O artigo é um dos primeiros a fornecer evidência econométrica de que a dinâmica dos jogos repetidos (Seção 8.8) possui contrapartida empírica verificável. Para o Brasil, a metodologia é aplicável à investigação do CADE em cartéis de combustíveis e outros setores: padrões de preços que alternam entre "estabilidade coordenada" e "guerras de preço" podem ser evidência de conluio tácito com fases de punição.

**Conexão com este capítulo**

O estudo demonstra empiricamente os conceitos de estratégia de gatilho e fases cooperativa/punitiva dos jogos repetidos (Seção 8.8). A alternância entre conluio e guerra de preços observada nos dados é precisamente o que o modelo teórico com *grim trigger* ou estratégias de punição mais sofisticadas prevê quando há incerteza sobre choques de demanda.

---

## Referências do Capítulo

- MAS-COLELL, A.; WHINSTON, M. D.; GREEN, J. R. *Microeconomic Theory*. New York: Oxford University Press, 1995. Capítulos 7–9.
- GIBBONS, R. *Game Theory for Applied Economists*. Princeton: Princeton University Press, 1992. (Trad. port.: *Um Primeiro Curso em Teoria dos Jogos*. Porto Alegre: Bookman, 2004.)
- FUDENBERG, D.; TIROLE, J. *Game Theory*. Cambridge, MA: MIT Press, 1991.
- OSBORNE, M. J.; RUBINSTEIN, A. *A Course in Game Theory*. Cambridge, MA: MIT Press, 1994.
- NASH, J. F. Equilibrium Points in N-Person Games. *Proceedings of the National Academy of Sciences*, v. 36, n. 1, p. 48–49, 1950.
- SELTEN, R. Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit. *Zeitschrift für die gesamte Staatswissenschaft*, v. 121, p. 301–324, 1965.
- SPENCE, M. Job Market Signaling. *The Quarterly Journal of Economics*, v. 87, n. 3, p. 355–374, 1973.
- BRESNAHAN, T. F.; REISS, P. C. Entry and Competition in Concentrated Markets. *Journal of Political Economy*, v. 99, n. 5, p. 977–1009, 1991.
- PORTER, R. H. A Study of Cartel Stability: The Joint Executive Committee, 1880–1886. *The Bell Journal of Economics*, v. 14, n. 2, p. 301–314, 1983.
- AXELROD, R. *The Evolution of Cooperation*. New York: Basic Books, 1984.
