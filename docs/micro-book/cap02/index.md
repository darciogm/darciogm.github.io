# Capítulo 2 — O Manual de Sobrevivência Matemática

Quanto custa, em bem-estar, um aumento de 10% na gasolina para uma família que ganha dois salários mínimos? A resposta exige derivadas parciais (Seção 2.2), o teorema da função implícita (Seção 2.3) e o método de Lagrange (Seção 2.5). Sem essas ferramentas, a pergunta fica sem resposta. Com elas, a resposta cabe em meia página.[^holy-hand-grenade-math]

[^holy-hand-grenade-math]: *"First shalt thou take out the Holy Pin. Then shalt thou count to three. No more. No less."* As instruções para a Holy Hand Grenade of Antioch em *Monty Python and the Holy Grail* são o protocolo mais preciso da história do cinema — e soam suspeitamente parecidas com um algoritmo de otimização. De fato, boa parte deste capítulo se resume a: (1) derive; (2) iguale a zero; (3) verifique a segunda ordem. No mais, no menos. Sir Lancelot não seguiu o protocolo e quase explodiu a si mesmo. Alunos que pulam a CSO costumam ter resultado semelhante.

Se o Capítulo 1 era o "o quê" e o "por quê" da microeconomia, este é o "com quê". Matemática é a linguagem em que os modelos econômicos são escritos — e, como toda língua, ela pode parecer impenetrável até que você perceba que já a fala no dia a dia. Quando você decide se vale a pena pegar trânsito para economizar R$ 20 na gasolina, está fazendo otimização. Quando nota que "o café sobe quando a geada derruba a safra", está fazendo estática comparativa. A diferença é que aqui vamos fazer isso com precisão — e com a garantia de que as conclusões se sustentam logicamente.

!!! tip "Não entre em pânico"
    Este capítulo é como aquecimento antes do jogo — ninguém gosta, mas quem pula se machuca no minuto 5. Se você já domina cálculo multivariado, pode pular direto para as seções que precisa consultando o roteiro abaixo. Se está vendo isso pela primeira vez: respire. Cada ferramenta aqui será *usada* para responder uma pergunta econômica real nos capítulos seguintes — nada é decorativo. O objetivo não é transformar você em matemático; é dar fluência suficiente para que a matemática não atrapalhe a intuição econômica. Pense neste capítulo como um dicionário: você não lê um dicionário da primeira à última página. Você volta quando precisa.

Este capítulo é a caixa de ferramentas. O objetivo não é substituir um curso de matemática, mas fornecer uma referência autocontida e prática. O leitor familiarizado com cálculo multivariado pode avançar rapidamente, concentrando-se nas aplicações econômicas e nos resultados menos habituais (teorema do envelope, Kuhn-Tucker). O leitor que está vendo isso pela primeira vez: calma. Cada ferramenta será *usada* em um problema econômico concreto — nada aqui é decorativo.

O capítulo segue uma progressão natural: partimos da otimização em uma dimensão (Seção 2.1), avançamos para funções de várias variáveis e o ferramental de estática comparativa (Seções 2.2–2.3), introduzimos o teorema do envelope (Seção 2.4), abordamos a otimização com restrições de igualdade e desigualdade (Seções 2.5–2.7), examinamos propriedades de curvatura e homogeneidade (Seções 2.8–2.9), cobrimos integração, otimização dinâmica e estatística (Seções 2.10–2.12), e encerramos com os teoremas de ponto fixo que garantem a existência de equilíbrios (Seção 2.13). Ao final, o leitor disporá de todo o aparato formal necessário para acompanhar os capítulos subsequentes sobre teoria do consumidor (Capítulos 3–5), teoria da firma (Capítulos 7–10), teoria dos jogos (Capítulo 9a) e equilíbrio de mercado (Capítulos 12–14).

A exposição segue Nicholson e Snyder (2017, Cap. 2), complementada pelo apêndice matemático de Mas-Colell, Whinston e Green (1995) e por Simon e Blume (1994). Para uma abordagem passo a passo especialmente acessível, ver Chiang e Wainwright (2005). As ferramentas apresentadas aqui não são ornamentos formais: são a linguagem em que toda a microeconomia é escrita. Dominá-las é condição necessária — e, em grande medida, suficiente — para acompanhar o restante do livro.

!!! abstract "Roteiro do capítulo"

    <div class="chapter-roadmap" markdown>

    | Seção | Ferramenta | Para que serve | Página |
    |:---:|---|---|:---:|
    | **2.1** | Otimização em 1 variável | CPO e CSO: o "arroz com feijão" | [Otimização](otimizacao.md) |
    | **2.2–2.3** | Derivadas parciais, TFI, Hessiana | *Ceteris paribus* formal; estática comparativa | [Otimização](otimizacao.md) |
    | **2.4** | Teorema do envelope | No ótimo, só importa o efeito direto | [Envelope](envelope.md) |
    | **2.5–2.6** | Método de Lagrange e preço-sombra | Otimização com restrição — *a* ferramenta do livro | [Lagrange](lagrange.md) |
    | **2.7** | Kuhn-Tucker | Soluções de canto e restrições de desigualdade | [Kuhn-Tucker](kuhn-tucker.md) |
    | **2.8–2.9** | Concavidade, homogeneidade, Euler | Curvatura e retornos de escala | [Curvatura](curvatura.md) |
    | **2.10–2.13** | Integração, dinâmica, estatística, ponto fixo | Complementos essenciais | [Complementos](complementos.md) |
    | **2.14** | Resumo de otimização | Tabela de referência rápida | [Complementos](complementos.md) |

    </div>
