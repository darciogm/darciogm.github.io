# O Blefe Calculado: Estratégias Mistas

## 9a.4 O Blefe Calculado: Estratégias Mistas

Alguns jogos simplesmente não têm equilíbrio — se os jogadores são obrigados a escolher uma ação fixa. No Matching Pennies, qualquer escolha determinística é explorada pelo adversário. Parece um beco sem saída. A solução de Nash: **jogar cara ou coroa** — literalmente. Se você randomiza entre suas ações com as probabilidades certas, o adversário não consegue explorar sua estratégia. E Nash provou algo impressionante: *todo* jogo finito tem equilíbrio, se permitirmos aleatorização. Essa é a ideia de **estratégia mista** — e ela transforma jogos aparentemente sem solução em jogos com solução garantida.

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

<iframe src="/micro-book/graficos/cap09/estrategias-mistas.html" title="Figura 9a.2 — Equilíbrio em estratégias mistas" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.2 — Equilíbrio em estratégias mistas.** Para um jogo 2×2, os gráficos mostram o payoff esperado de cada jogador em função da probabilidade de mistura do oponente. O ponto de interseção determina a probabilidade de equilíbrio (princípio da indiferença). Edite os payoffs e selecione jogos predefinidos.
</div>

### Existência de Equilíbrio (Teorema de Nash)

O exemplo da Batalha dos Sexos ilustra como calcular o equilíbrio misto em um jogo específico. Mas será que *todo* jogo finito possui ao menos um equilíbrio? A resposta afirmativa — o Teorema de Nash — é um dos resultados mais importantes da matemática aplicada do século XX. Sua demonstração utiliza o Teorema do Ponto Fixo de Kakutani e, embora a apresentação formal possa parecer abstrata, a intuição geométrica é elegante: as correspondências de melhor resposta dos jogadores devem necessariamente se "cruzar" em algum ponto.

!!! theorem "Teorema de Nash (1950)"
    Todo jogo finito (número finito de jogadores e de estratégias puras para cada jogador) possui pelo menos um **equilíbrio de Nash em estratégias mistas**.[^kakutani]

[^kakutani]: A demonstração usa o Teorema do Ponto Fixo de Kakutani — o que pode intimidar o leitor na primeira leitura. Uma confissão: a maioria dos economistas aplicados nunca precisou refazer essa prova depois da pós-graduação. O que importa é a *implicação*: todo jogo finito tem solução. Se você está procurando o equilíbrio de um jogo e não encontra em estratégias puras, não desista — ele está escondido nas mistas. Kakutani garante.

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

!!! box-mundo "Box Mundo 9a.2 — Pênaltis, saques e o equilíbrio misto no esporte profissional"

    **Contexto:** Cobranças de pênaltis no futebol e saques no tênis são laboratórios naturais para o equilíbrio em estratégias mistas. Em ambos os casos, dois jogadores fazem escolhas essencialmente simultâneas (o cobrador escolhe o lado e o goleiro mergulha; o sacador escolhe a direção e o receptor se posiciona), o jogo é de soma zero e qualquer padrão previsível seria explorado pelo adversário. A teoria prevê que, em equilíbrio, cada jogador randomiza de modo a tornar o oponente indiferente entre suas opções — e que as taxas de sucesso devem ser iguais entre as direções escolhidas.

    **Dados:** Palacios-Huerta (2003), em estudo seminal publicado na *Review of Economic Studies*, analisou 1.417 cobranças de pênaltis em ligas profissionais europeias (1995–2000). Os resultados são notavelmente consistentes com o equilíbrio em estratégias mistas: (i) as taxas de sucesso dos cobradores não diferiam significativamente entre chutar à esquerda e à direita do goleiro (~63% em ambos os lados); (ii) não havia correlação serial nas escolhas — cada cobrança era estatisticamente independente das anteriores; (iii) jogadores individuais variavam suas escolhas com frequências próximas às previstas pelo equilíbrio. Walker e Wooders (2001), analisando 10 temporadas de partidas de tênis de Grand Slam, encontraram padrão análogo nos saques: os melhores sacadores distribuíam seus saques entre forehand e backhand do receptor em proporções que igualavam a probabilidade de ganhar o ponto em ambas as direções. Chiappori, Levitt e Groseclose (2002), usando dados da Série A italiana e da liga francesa, confirmaram independentemente os resultados de Palacios-Huerta.

    **Análise:** Esses resultados são relevantes porque testam uma das previsões mais específicas — e aparentemente implausíveis — da teoria dos jogos: que agentes reais, em ambientes de alta pressão e com milhões em jogo, se comportam *como se* resolvessem o sistema de equações do princípio da indiferença (Equação 9a.3). A convergência para o equilíbrio misto não exige que os jogadores façam cálculos conscientes — basta que, ao longo de repetidas interações, a seleção competitiva elimine padrões exploráveis. É a mesma lógica do *como se* friedmaniano aplicada a um contexto observável em tempo real.

    **Para refletir:** Se um cobrador de pênaltis tem o pé esquerdo mais forte, como isso altera as probabilidades de equilíbrio? (Dica: ele chutará mais vezes para o lado natural — mas não exclusivamente, pois isso o tornaria previsível.)

    **Fonte:** Palacios-Huerta, Ignacio (2003). "Professionals Play Minimax." *Review of Economic Studies*, 70(2), 395–415. Walker, Mark e Wooders, John (2001). "Minimax Play at Wimbledon." *American Economic Review*, 91(5), 1521–1538. Chiappori, Pierre-André; Levitt, Steven e Groseclose, Tim (2002). "Testing Mixed-Strategy Equilibria When Players Are Heterogeneous: The Case of Penalty Kicks in Soccer." *American Economic Review*, 92(4), 1138–1151.

Misturar é racional — pergunte a qualquer cobrador de pênaltis. Se ele sempre chuta no mesmo canto, o goleiro aprende. Se randomiza, o goleiro vira loteria. O equilíbrio misto formaliza exatamente essa intuição: quando previsibilidade é punida, imprevisibilidade é ótima.
