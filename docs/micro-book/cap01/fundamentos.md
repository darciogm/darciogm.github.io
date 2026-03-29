# 1.3–1.4 Regras do Jogo e Anatomia de um Modelo

## 1.3 As Regras do Jogo: *Ceteris Paribus*, Otimização e a Linha Positivo–Normativo {#103}

### O princípio *ceteris paribus*

Se a microeconomia fosse uma religião, teria três mandamentos. O primeiro — e talvez o mais sagrado — é o princípio *ceteris paribus*: a arte de fingir que o resto do universo parou enquanto você analisa uma única variável. Parece trapaceiro, mas é genial.

!!! definition "Ceteris Paribus"
    A cláusula *ceteris paribus* ("tudo o mais constante") é um recurso metodológico que permite isolar o efeito de uma variável sobre outra, mantendo todas as demais grandezas relevantes inalteradas. Por exemplo: "um aumento no preço de um bem, *ceteris paribus*, reduz a quantidade demandada."

Esse princípio é análogo ao controle de variáveis em um experimento de laboratório. Embora na realidade "tudo o mais" raramente permaneça constante, a análise *ceteris paribus* permite identificar relações causais parciais que, combinadas, fornecem uma compreensão do sistema como um todo. Matematicamente, o *ceteris paribus* corresponde à derivada parcial: quando escrevemos \(\partial Q^d / \partial P < 0\), estamos afirmando que a quantidade demandada cai quando o preço sobe, mantendo renda, preferências e preços de outros bens constantes. No Capítulo 2, veremos como o diferencial total e o teorema da função implícita formalizam essa ideia com precisão.

!!! idea "Intuição Econômica"
    **Em uma frase:** *Ceteris paribus* é o "muda só uma coisa por vez" da economia.

    **Pense assim:** Se você quer saber se sal melhora o feijão, não muda a panela, o fogo e o tipo de feijão ao mesmo tempo. Você muda *só* o sal e compara. Economistas fazem o mesmo: perguntam "o que acontece se o preço da gasolina subir, mas a renda, o preço do etanol e tudo mais ficarem iguais?"

    **Por que isso importa:** Sem essa disciplina mental, é impossível separar causa de coincidência — e políticas públicas baseadas em coincidências costumam fracassar.

### A hipótese de otimização

O *ceteris paribus* nos diz como analisar. Mas o que os modelos supõem sobre *quem* está sendo analisado? Aqui entra o segundo mandamento — e o mais polêmico. A microeconomia aposta que todo mundo, no fundo, está tentando fazer o melhor possível com o que tem. Formalmente: os agentes são **otimizadores**:

- **Consumidores** maximizam utilidade sujeita a uma restrição orçamentária. No Capítulo 3, formalizaremos essa ideia por meio dos axiomas das preferências e da função de utilidade; no Capítulo 4, resolveremos o problema de otimização propriamente dito.
- **Firmas** maximizam lucro (ou minimizam custo) sujeitas a restrições tecnológicas. A Seção 1.7 deste capítulo oferece uma primeira demonstração dessa lógica, que será desenvolvida em profundidade nos Capítulos 10–12.
- **Governo** (em modelos normativos) maximiza bem-estar social sujeito a restrições de informação e incentivos.

Essa hipótese é polêmica — e deveria ser. Você pode estar pensando: "Mas as pessoas *não* maximizam utilidade! Elas compram por impulso, procrastinam e pagam academia sem ir!" Calma. A hipótese não exige que os agentes sejam perfeitamente racionais em sentido psicológico. Basta que se **comportem como se** otimizassem — a chamada abordagem "as if" de Friedman. Um agricultor no interior do Mato Grosso pode nunca ter ouvido falar de derivadas ou condições de primeira ordem, mas se suas decisões de plantio se aproximam sistematicamente da solução do problema de maximização de lucro, o modelo de otimização é uma descrição útil de seu comportamento. A economia comportamental, discutida na Seção 1.6, estuda os contextos em que essa aproximação é menos precisa — mas mesmo aí, o modelo otimizador permanece como *benchmark* indispensável. Como na Inquisição Espanhola do Monty Python, os desvios do comportamento racional aparecem quando menos se espera ("Nobody expects bounded rationality!") — e mudam tudo no modelo. Mas para saber *o que* muda, você precisa primeiro de um *benchmark* racional contra o qual comparar.

!!! idea "Intuição Econômica"
    **Em uma frase:** A microeconomia não diz que as pessoas fazem contas — diz que elas *agem como se* fizessem.

    **Pense assim:** Um jogador de sinuca experiente não resolve equações de física antes de cada tacada, mas suas jogadas se aproximam da trajetória que a física prevê. Da mesma forma, um consumidor no Mercado Municipal não calcula derivadas, mas tende a escolher uma cesta que se parece com a solução do problema de otimização.

    **Por que isso importa:** A hipótese "como se" é o que permite à microeconomia gerar previsões testáveis sobre o comportamento de milhões de pessoas, sem precisar abrir a cabeça de cada uma.

### Distinção entre análise positiva e normativa

Terceiro mandamento: **nunca confundir o que é com o que deveria ser**. Parece óbvio, mas a tentação é enorme — especialmente em economia, onde todo mundo tem opinião. David Hume já alertava no século XVIII: do fato de que "algo é" não se pode deduzir que "algo deveria ser". John Neville Keynes (pai de John Maynard Keynes) formalizou a distinção em *The Scope and Method of Political Economy* (1891). Ela permanece como uma das pedras angulares da metodologia econômica — e como uma das mais violadas no debate público. A [Tabela 1.1](#tabela-1-1) sintetiza a ideia.

<a id="tabela-1-1"></a>

| Aspecto | Análise Positiva | Análise Normativa |
|---|---|---|
| **Pergunta central** | "O que é?" / "O que será?" | "O que deveria ser?" |
| **Natureza** | Descritiva/preditiva | Prescritiva |
| **Verificação** | Confronto com dados | Julgamento de valor |
| **Exemplo** | "Um imposto sobre cigarro reduz o consumo em X%" | "O governo deveria tributar cigarros" |

<div class="caption-obj" markdown>
**Tabela 1.1 — Análise positiva vs. normativa.**
</div>

!!! tip "Importância da distinção"
    Embora a fronteira entre análise positiva e normativa nem sempre seja nítida, manter a distinção é essencial para o rigor intelectual. Muitas controvérsias em política econômica decorrem de confusões entre proposições positivas e normativas. Quando dois economistas "discordam", é fundamental perguntar: discordam sobre os *fatos* (questão positiva, resolúvel com dados) ou sobre os *valores* (questão normativa, irredutível a evidências)?

Com os três mandamentos em mãos — "mude uma coisa por vez", "todo mundo otimiza" e "não misture fatos com desejos" —, estamos prontos para examinar a estrutura concreta de um modelo. Como esses princípios se materializam em equações e variáveis?

??? exercicio-resolvido "Exercício Resolvido 1.1 — Análise positiva versus normativa"

    **Enunciado.** Classifique cada afirmação como positiva ou normativa e justifique:

    (a) A taxa de desemprego no Brasil em 2023 foi de 7,8%.

    (b) O governo deveria reduzir impostos sobre a cesta básica para combater a desigualdade.

    (c) Um aumento de 10% na tarifa de importação de aço eleva o preço doméstico em aproximadamente 5%.

    (d) A política de cotas raciais nas universidades é justa.

    **Solução.**

    **(a) Positiva.** Trata-se de uma afirmação descritiva sobre um fato observável, verificável por dados da PNAD Contínua/IBGE. Não envolve julgamento de valor.

    **(b) Normativa.** Contém o verbo "deveria", indicando prescrição baseada em julgamento de valor sobre o que é desejável. Duas pessoas podem concordar sobre o efeito positivo da medida (análise positiva) e discordar sobre se ela *deve* ser adotada (análise normativa).

    **(c) Positiva.** É uma previsão quantitativa testável empiricamente — por exemplo, via modelos de equilíbrio parcial ou métodos econométricos. Não envolve juízo sobre se o aumento tarifário é bom ou ruim.

    **(d) Normativa.** O conceito de "justiça" envolve julgamento de valor — diferentes concepções de equidade (rawlsiana, utilitarista, libertária) conduziriam a conclusões distintas sobre a mesma política.

---

## 1.4 Anatomia de um Modelo: Exógenas, Endógenas e Equilíbrio {#104}

### Variáveis exógenas e endógenas

O primeiro passo na construção de qualquer modelo é a decisão mais honesta que um cientista pode tomar: admitir o que ele *não* vai explicar. Todo modelo divide o mundo em duas caixas: o que está *dentro* (e será explicado) e o que está *fora* (e será tomado como dado). Essa decisão, aparentemente simples, é uma das mais consequentes da modelagem. O preço do petróleo, por exemplo, é "dado" (exógeno) se você está modelando o mercado de gasolina no Brasil — mas vira "incógnita" (endógeno) se você está modelando o mercado mundial de commodities. O mesmo ingrediente muda de papel dependendo da receita.

!!! definition "Variáveis Exógenas e Endógenas"
    **Variáveis exógenas** são determinadas fora do modelo — são os dados, os parâmetros, as "causas". **Variáveis endógenas** são determinadas dentro do modelo — são as incógnitas, os "efeitos". A tarefa do modelo é explicar como as variáveis endógenas respondem a mudanças nas variáveis exógenas.

Considere o modelo clássico de oferta e demanda para um mercado competitivo:

- **Exógenas**: renda dos consumidores (\(Y\)), preços dos insumos (\(w\)), tecnologia (\(A\)), preferências dos consumidores.
- **Endógenas**: preço de equilíbrio (\(P^*\)) e quantidade de equilíbrio (\(Q^*\)).

As equações do modelo:

\[
Q^d = D(P, Y) \quad \text{(demanda)} \label{eq:1.4.1} \tag{1.4.1}
\]

\[
Q^s = S(P, w, A) \quad \text{(oferta)} \label{eq:1.4.2} \tag{1.4.2}
\]

\[
Q^d = Q^s \quad \text{(equilíbrio)} \label{eq:1.4.3} \tag{1.4.3}
\]

!!! definition "Equilíbrio de Mercado"
    Um **equilíbrio de mercado** é uma configuração de preço \(P^*\) e quantidade \(Q^*\) na qual a quantidade que os consumidores desejam comprar é igual à quantidade que os produtores desejam vender: \(Q^d(P^*) = Q^s(P^*)\). No equilíbrio, não há pressão para que o preço mude — nenhum agente tem incentivo para alterar unilateralmente seu comportamento. Fora do equilíbrio, o excesso de demanda ou de oferta gera forças que empurram o preço de volta ao ponto de equilíbrio, como uma bola no fundo de uma tigela.

<iframe src="/micro-book/graficos/cap01/oferta-demanda.html" title="Figura 1.1 — Oferta e Demanda com Estática Comparativa" class="graph-iframe" style="height:580px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 1.1 — Oferta e Demanda com Estática Comparativa.** Ajuste a renda \(Y\), o custo dos insumos \(w\) e as inclinações das curvas para observar como \(P^*\) e \(Q^*\) se deslocam. O painel mostra as derivadas de estática comparativa \(\partial P^*/\partial Y\) e \(\partial P^*/\partial w\) em tempo real.
</div>

<iframe src="/micro-book/graficos/cap01/fluxo-circular.html" title="Figura 1.2 — Diagrama de fluxo circular: famílias e firmas interagem nos mercados de produto e de fatores" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 1.2 — Diagrama de fluxo circular: famílias e firmas interagem nos mercados de produto e de fatores.** Ative o governo e o setor externo para visualizar fluxos adicionais. Passe o mouse sobre as setas para detalhes.
</div>

!!! atividade "Atividade — Experimento de mercado em sala de aula (15 min)"
    **Objetivo:** *Descobrir* o equilíbrio de mercado antes de vê-lo na teoria.

    **Materiais:** Cartões com valores de reserva (um valor para cada aluno). Metade da turma recebe cartões de "comprador" (com um valor máximo de compra), metade recebe cartões de "vendedor" (com um custo mínimo de venda).

    **Mecânica:** Compradores e vendedores circulam pela sala tentando fechar negócios. Uma transação ocorre quando comprador e vendedor concordam com um preço. Cada par registra o preço negociado no quadro.

    **Debrief:** Após 5 rodadas, plote os preços no quadro. Pergunte: "Os preços convergiram para algum valor? Por quê?" Compare com a Figura 1.1 acima — o ponto de convergência é o equilíbrio \(P^*\). Os alunos acabam de *viver* o modelo de oferta e demanda antes de vê-lo formalizado.

    *Inspiração:* Holt (2007), *Markets, Games, and Strategic Behavior*, Cap. 1; Vernon Smith (1962), "An Experimental Study of Competitive Market Behavior", *Journal of Political Economy*.

### A hipótese de otimização como fundamento

O sistema de equações $\eqref{eq:1.4.1}$--$\eqref{eq:1.4.3}$ descreve o equilíbrio de um mercado, mas como chegamos a essas equações? A resposta está na hipótese de otimização discutida na Seção 1.3. Na prática, a construção de um modelo microeconômico segue um roteiro bem definido, que traduz a ideia de agentes otimizadores em um problema matemático concreto. A estrutura típica de um modelo microeconômico envolve:

1. **Definir o objetivo** do agente (função utilidade, função lucro).
2. **Identificar as restrições** (orçamentária, tecnológica, informacional).
3. **Resolver o problema de otimização** (condições de primeira e segunda ordem).
4. **Derivar funções de resposta** (demanda, oferta) como funções dos parâmetros exógenos.
5. **Analisar estática comparativa**: como as soluções ótimas mudam quando os parâmetros variam.

!!! definition "Estática Comparativa"
    A **estática comparativa** consiste em comparar dois equilíbrios — um antes e outro depois de uma mudança em uma variável exógena — para determinar a *direção* e a *magnitude* da resposta das variáveis endógenas. O termo "estática" indica que se comparam dois pontos de repouso, sem descrever o caminho de ajuste entre eles; "comparativa" indica a comparação entre os dois estados. Formalmente, trata-se de calcular derivadas como \(\partial P^* / \partial Y\) (efeito de uma variação na renda sobre o preço de equilíbrio). No Capítulo 2, o teorema da função implícita e o teorema do envelope fornecerão as ferramentas matemáticas para realizar estática comparativa de forma sistemática.

Esse roteiro será seguido repetidamente ao longo deste livro: no Capítulo 3, para formalizar as preferências do consumidor; no Capítulo 4, para derivar as funções de demanda; nos Capítulos 10–12, para obter as curvas de custo e oferta da firma; e no Capítulo 14, para analisar o equilíbrio geral. Mas antes de mergulhar na análise formal, vale a pena situar as ideias que discutimos até aqui em uma perspectiva mais ampla. Como a ciência econômica chegou a esse modo de pensar? A resposta passa pela história da teoria do valor — o problema central que motivou o desenvolvimento da microeconomia.

??? exercicio-resolvido "Exercício Resolvido 1.2 — Variáveis exógenas, endógenas e estática comparativa"

    **Enunciado.** Considere o seguinte modelo simplificado do mercado de café no Brasil:

    - Demanda: \(Q^d = 200 - 4P + 2Y\), onde \(P\) é o preço e \(Y\) é a renda dos consumidores.
    - Oferta: \(Q^s = -20 + 6P - 3C\), onde \(C\) é o custo dos insumos agrícolas.

    (a) Identifique as variáveis exógenas e endógenas.

    (b) Encontre o preço e a quantidade de equilíbrio como funções dos parâmetros exógenos.

    (c) Se \(Y = 50\) e \(C = 10\), calcule \(P^*\) e \(Q^*\).

    (d) Realize estática comparativa: qual o efeito de um aumento da renda sobre o preço de equilíbrio?

    **Solução.**

    **(a)** **Exógenas:** \(Y\) (renda) e \(C\) (custo dos insumos) — determinadas fora do modelo. **Endógenas:** \(P^*\) (preço) e \(Q^*\) (quantidade) — determinadas pelo equilíbrio do modelo.

    **(b)** No equilíbrio, \(Q^d = Q^s\):

    \[
    200 - 4P + 2Y = -20 + 6P - 3C
    \]

    \[
    220 + 2Y + 3C = 10P
    \]

    \[
    P^* = 22 + 0{,}2Y + 0{,}3C
    \]

    Substituindo na função de demanda:

    \[
    Q^* = 200 - 4(22 + 0{,}2Y + 0{,}3C) + 2Y = 112 + 1{,}2Y - 1{,}2C
    \]

    **(c)** \(P^* = 22 + 0{,}2 \times 50 + 0{,}3 \times 10 = 22 + 10 + 3 = 35\)

    \(Q^* = 112 + 1{,}2 \times 50 - 1{,}2 \times 10 = 112 + 60 - 12 = 160\)

    **(d)** \(\dfrac{\partial P^*}{\partial Y} = 0{,}2 > 0\). Um aumento da renda eleva o preço de equilíbrio. Intuitivamente, mais renda desloca a curva de demanda para a direita (a cada preço dado, a quantidade demandada aumenta), pressionando o preço para cima. Este é um exercício de estática comparativa como descrito na Seção 1.4: variamos uma variável exógena (\(Y\)) e observamos o efeito sobre a variável endógena (\(P^*\)).
