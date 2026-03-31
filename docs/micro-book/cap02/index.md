# Capítulo 2 — O Manual de Sobrevivência Matemática

Quanto custa, em bem-estar, um aumento de 10% na gasolina para uma família que ganha dois salários mínimos? A resposta exige derivadas parciais (Seção 2.2), o teorema da função implícita (Seção 2.3) e o método de Lagrange (Seção 2.5). Sem essas ferramentas, a pergunta fica sem resposta. Com elas, a resposta cabe em meia página.[^holy-hand-grenade-math]

[^holy-hand-grenade-math]: *"First shalt thou take out the Holy Pin. Then shalt thou count to three. No more. No less."* As instruções para a Holy Hand Grenade of Antioch em *Monty Python and the Holy Grail* são o protocolo mais preciso da história do cinema — e soam suspeitamente parecidas com um algoritmo de otimização. De fato, boa parte deste capítulo se resume a: (1) derive; (2) iguale a zero; (3) verifique a segunda ordem. No mais, no menos. Sir Lancelot não seguiu o protocolo e quase explodiu a si mesmo. Alunos que pulam a CSO costumam ter resultado semelhante.

Se o Capítulo 1 era o "o quê" e o "por quê" da microeconomia, este é o "com quê". Matemática é a linguagem em que os modelos econômicos são escritos — e, como toda língua, ela pode parecer impenetrável até que você perceba que já a fala no dia a dia. Quando você decide se vale a pena pegar trânsito para economizar R$ 20 na gasolina, está fazendo otimização. Quando nota que "o café sobe quando a geada derruba a safra", está fazendo estática comparativa. A diferença é que aqui vamos fazer isso com precisão — e com a garantia de que as conclusões se sustentam logicamente.

!!! tip "Não entre em pânico"
    Este capítulo é como aquecimento antes do jogo — ninguém gosta, mas quem pula se machuca no minuto 5. Se você já domina cálculo multivariado, pode pular direto para as seções que precisa consultando o roteiro abaixo. Se está vendo isso pela primeira vez: respire. Pense neste capítulo como um dicionário — você não lê da primeira à última página; você volta quando precisa.

!!! example "Autodiagnóstico: Qual é o seu ponto de partida?"

    Responda mentalmente (ou no caderno) às 6 questões abaixo. Elas cobrem os pré-requisitos mínimos para acompanhar este capítulo sem sofrimento desnecessário.

    **Bloco A — Cálculo diferencial básico** (pré-requisito para Seções 2.1–2.3)

    1. Calcule $\dfrac{d}{dx}\left(3x^2 - 5x + 2\right)$.
    2. Encontre o $x$ que maximiza $f(x) = -x^2 + 6x - 1$ e verifique que é máximo.
    3. Se $f(x,y) = x^2 y + 3xy^2$, calcule $\dfrac{\partial f}{\partial x}$.

    **Bloco B — Álgebra e funções** (pré-requisito para Seções 2.5–2.9)

    4. Resolva para $x$ e $y$: $\;2x + y = 10$ e $x - y = 2$.
    5. Simplifique $\ln(e^{3x})$.
    6. Se $f(tx, ty) = t^2 f(x,y)$ para todo $t > 0$, qual é o grau de homogeneidade de $f$?

    ---

    **Interpretação:**

    - **6/6 corretas:** Você pode avançar rapidamente — use o capítulo como referência e concentre-se nas seções menos familiares (Envelope, Kuhn-Tucker, Euler).
    - **4–5 corretas:** Você está bem, mas leia com atenção as seções onde errou. Os conceitos se acumulam.
    - **2–3 corretas:** Leia o capítulo inteiro com calma. Faça os exercícios de aquecimento antes dos exercícios formais. Use os recursos do box abaixo.
    - **0–1 corretas:** Invista uma semana nos "Primeiros Socorros" abaixo *antes* de entrar no capítulo. É mais rápido do que parece, e o retorno sobre o investimento é enorme.

    ??? success "Gabarito rápido"
        1. $6x - 5$
        2. $x^* = 3$ (CPO: $-2x + 6 = 0$); $f''(x) = -2 < 0$ → máximo. ✓
        3. $2xy + 3y^2$
        4. $x = 4,\; y = 2$
        5. $3x$
        6. Grau 2 (homogênea de grau 2).

!!! info "Primeiros Socorros Matemáticos"

    Se o autodiagnóstico revelou lacunas, não se desespere — elas são mais comuns do que você imagina, e há recursos excelentes (e gratuitos) para resolvê-las em poucos dias.

    **Vídeos (português)**

    - [Khan Academy Brasil — Cálculo Diferencial](https://pt.khanacademy.org/math/calculus-1): derivadas, regras de derivação, máximos e mínimos. Comece por "Derivadas: definição e regras básicas".
    - [Khan Academy Brasil — Álgebra Linear](https://pt.khanacademy.org/math/linear-algebra): sistemas lineares, matrizes (útil para Hessianas).

    **Vídeos (inglês com legendas)**

    - [3Blue1Brown — Essence of Calculus](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr): a melhor série visual sobre cálculo que existe. 12 vídeos de ~20 min que constroem a intuição geométrica por trás de derivadas e integrais.
    - [3Blue1Brown — Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab): transformações lineares, autovalores (para Hessianas e concavidade).

    **Livro de referência acessível**

    - Chiang, A.C. & Wainwright, K. (2005). *Matemática para Economistas*. Campus/Elsevier. — O "clássico gentil": rigoroso mas escrito para economistas, não para matemáticos. Capítulos 2–4 cobrem todo o Bloco A do autodiagnóstico; Capítulos 9–12 cobrem o Bloco B.

    **Dica prática:** reserve 30 min/dia durante 5–7 dias para os vídeos do 3Blue1Brown + exercícios do Khan Academy. Esse investimento de ~5 horas vai render dividendos pelo resto do livro — literalmente, o melhor VPL que você pode conseguir antes do Capítulo 18.

Este capítulo é a caixa de ferramentas do livro inteiro — uma referência autocontida que vai da otimização em uma variável (Seção 2.1) até os teoremas de ponto fixo que garantem a existência de equilíbrios (Seção 2.13), passando por Lagrange, Kuhn-Tucker, teorema do envelope, curvatura e homogeneidade. O leitor familiarizado com cálculo multivariado pode avançar rapidamente, concentrando-se nos resultados menos habituais (envelope, Kuhn-Tucker, Euler). Cada ferramenta será *usada* em um problema econômico concreto nos capítulos seguintes — teoria do consumidor (Capítulos 3–6), incerteza e risco (Capítulo 7), teoria da firma (Capítulos 10–12), teoria dos jogos (Capítulo 9a) e equilíbrio de mercado (Capítulos 13–14) — de modo que nada aqui é decorativo. A exposição segue Nicholson e Snyder (2017, Cap. 2), complementada por Simon e Blume (1994), Mas-Colell, Whinston e Green (1995, Apêndice Matemático) e Chiang e Wainwright (2005).

!!! abstract "Roteiro do capítulo"

    <div class="chapter-roadmap" markdown>

    | Seção | Pergunta-guia | O que você vai aprender | Página |
    |:---:|---|---|:---:|
    | **2.1** | Qual é o "arroz com feijão" da otimização? | CPO e CSO em uma variável: derive, iguale a zero, verifique | [Otimização](otimizacao.md) |
    | **2.2–2.3** | Como isolar o efeito de *uma* variável quando há várias? | Derivadas parciais, TFI, Hessiana, estática comparativa | [Otimização](otimizacao.md) |
    | **2.4** | No ótimo, preciso recalcular tudo? | Teorema do envelope — atalho para Roy, Shephard e Hotelling | [Envelope](envelope.md) |
    | **2.5–2.6** | Como maximizar com orçamento limitado? | Método de Lagrange, λ como preço-sombra | [Lagrange](lagrange.md) |
    | **2.7** | E se o consumidor puder consumir zero? | Kuhn-Tucker, soluções de canto, *complementary slackness* | [Kuhn-Tucker](kuhn-tucker.md) |
    | **2.8–2.9** | Quando as CPOs bastam? E o que são retornos de escala? | Concavidade, quase-concavidade, homogeneidade, Euler | [Curvatura](curvatura.md) |
    | **2.10–2.13** | Que outras ferramentas vou precisar? | Integração, dinâmica, probabilidade, teoremas de ponto fixo | [Complementos](complementos.md) |

    </div>
