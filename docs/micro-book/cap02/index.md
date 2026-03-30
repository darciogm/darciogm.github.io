# Capítulo 2 — O Manual de Sobrevivência Matemática

Quanto custa, em bem-estar, um aumento de 10% na gasolina para uma família que ganha dois salários mínimos? A resposta exige derivadas parciais (Seção 2.2), o teorema da função implícita (Seção 2.3) e o método de Lagrange (Seção 2.5). Sem essas ferramentas, a pergunta fica sem resposta. Com elas, a resposta cabe em meia página.[^holy-hand-grenade-math]

[^holy-hand-grenade-math]: *"First shalt thou take out the Holy Pin. Then shalt thou count to three. No more. No less."* As instruções para a Holy Hand Grenade of Antioch em *Monty Python and the Holy Grail* são o protocolo mais preciso da história do cinema — e soam suspeitamente parecidas com um algoritmo de otimização. De fato, boa parte deste capítulo se resume a: (1) derive; (2) iguale a zero; (3) verifique a segunda ordem. No mais, no menos. Sir Lancelot não seguiu o protocolo e quase explodiu a si mesmo. Alunos que pulam a CSO costumam ter resultado semelhante.

Se o Capítulo 1 era o "o quê" e o "por quê" da microeconomia, este é o "com quê". Matemática é a linguagem em que os modelos econômicos são escritos — e, como toda língua, ela pode parecer impenetrável até que você perceba que já a fala no dia a dia. Quando você decide se vale a pena pegar trânsito para economizar R$ 20 na gasolina, está fazendo otimização. Quando nota que "o café sobe quando a geada derruba a safra", está fazendo estática comparativa. A diferença é que aqui vamos fazer isso com precisão — e com a garantia de que as conclusões se sustentam logicamente.

!!! tip "Não entre em pânico"
    Este capítulo é como aquecimento antes do jogo — ninguém gosta, mas quem pula se machuca no minuto 5. Se você já domina cálculo multivariado, pode pular direto para as seções que precisa consultando o roteiro abaixo. Se está vendo isso pela primeira vez: respire. Pense neste capítulo como um dicionário — você não lê da primeira à última página; você volta quando precisa.

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
