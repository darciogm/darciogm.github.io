\setcounter{chapter}{2}

\setcounter{section}{0}

# Capítulo 3 — Mais É Melhor — Será?

Netflix, Disney+ ou HBO Max? Você só pode assinar um. A escolha parece simples — até que você percebe que prefere Netflix a Disney+, Disney+ a HBO Max, mas HBO Max a Netflix (por causa daquela *única* série). Parabéns: suas preferências são intransitivas, e a microeconomia acabou de quebrar. Ou será que não?

Você entra no supermercado com R$ 200 e sai com um carrinho cheio de escolhas. Arroz ou macarrão? Cerveja ou refrigerante? Marca A ou marca B? Cada decisão revela algo sobre suas preferências — algo que você talvez nem consiga articular, mas que a microeconomia pretende capturar com precisão matemática. A teoria das preferências e da utilidade é o alicerce de tudo que vem depois: curvas de demanda, análise de bem-estar, efeitos de políticas públicas. Se este capítulo for bem assimilado, o resto do livro é consequência. Se não for... bem, vai ser uma longa jornada. (E aquele dilema do streaming? Voltamos a ele na Seção 3.1, quando discutirmos por que a transitividade é tão importante — e o que acontece quando ela falha.)

Neste capítulo, formalizamos as preferências individuais por meio de axiomas — regras mínimas de coerência que, quando satisfeitas, permitem representar o comportamento do consumidor por uma função de utilidade. A partir dessa função, construímos progressivamente as ferramentas analíticas centrais: curvas de indiferença, que oferecem uma representação geométrica das preferências; a taxa marginal de substituição (TMS), que quantifica a disposição do consumidor a trocar um bem por outro; e as famílias específicas de funções de utilidade — Cobb-Douglas, CES, substitutos e complementos perfeitos, quase-linear — que dão conteúdo empírico ao arcabouço teórico.

O capítulo segue a abordagem axiomática presente em Mas-Colell, Whinston e Green (1995), complementada pela exposição mais intuitiva de Varian (2015) e Nicholson e Snyder (2017). Para uma abordagem particularmente acessível, com ênfase em intuição econômica e exemplos aplicados, ver Besanko e Braeutigam (2014, Caps. 3–4). Ao final do capítulo, o leitor terá em mãos todo o aparato conceitual necessário para resolver o problema de otimização do consumidor — tema central do Capítulo 4, onde as preferências aqui formalizadas se encontram com a restrição orçamentária para determinar as escolhas ótimas.


::: {.theorembox title="Roteiro do capítulo"}


| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| **3.1–3.3** | O que torna um consumidor "coerente"? | Axiomas, Teorema de Debreu, curvas de indiferença | Axiomas |
| **3.4–3.5** | A que "preço pessoal" você troca um bem por outro? | TMS, utilidade marginal, TMS = UMg₁/UMg₂ | TMS |
| **3.6–3.7** | Que "personagem" descreve melhor suas preferências? | Cobb-Douglas, CES, Leontief, quase-linear, homotéticas, transformações monotônicas | Preferências |
| **Exercícios** | Teste e aplique | Revisão, exercícios, ANPEC, atividades de sala | Exercícios |
| **Pesquisa** | O que a fronteira diz? | Artigos seminais com dados reais | Pesquisa |


:::



## 3.1–3.3 Axiomas, Utilidade e Curvas de Indiferença

### 3.1 As Regras Mínimas da Sanidade: Axiomas da Escolha

Antes de construir qualquer modelo de escolha, precisamos responder a uma pergunta incômoda: o que *exatamente* estamos supondo sobre o consumidor? Não vamos supor que ele é gênio, nem que usa planilha Excel no supermercado. Vamos supor apenas que ele é *coerente* — que consegue comparar opções e não se contradiz.[^dead-parrot-prefs]

[^dead-parrot-prefs]: No sketch *Dead Parrot* de Monty Python, o cliente e o vendedor discordam se o papagaio está morto ou "descansando". O cliente insiste: "This parrot is no more! It has ceased to be!" O vendedor: "No, no, he's resting!" O axioma da completude exige que ambos *consigam* comparar as cestas "papagaio vivo" e "papagaio morto" — o que claramente fazem. O problema é que discordam. A boa notícia: a teoria do consumidor não exige que todos concordem sobre o ranking; exige apenas que *cada* consumidor seja coerente consigo mesmo. Essas exigências mínimas de bom senso são formalizadas como **axiomas** das preferências. A beleza da coisa: desse ponto de partida modesto, toda a teoria do consumidor pode ser construída. É como erguer um arranha-céu a partir de quatro tijolos bem colocados.

Seja $X \subseteq \mathbb{R}^n_+$ o **conjunto de consumo**, isto é, o conjunto de todas as cestas de bens fisicamente disponíveis ao consumidor. Uma cesta $\mathbf{x} = (x_1, x_2, \ldots, x_n)$ especifica a quantidade de cada um dos $n$ bens — por exemplo, em um modelo com dois bens, $\mathbf{x} = (x_1, x_2)$ poderia representar quilos de arroz e litros de leite. O conjunto de consumo inclui todas as combinações não negativas dessas quantidades, formando o quadrante positivo do espaço $\mathbb{R}^n$.

Uma **relação de preferência** $\succsim$ sobre $X$ indica que, dadas duas cestas $\mathbf{x}$ e $\mathbf{y}$, o consumidor considera $\mathbf{x}$ pelo menos tão boa quanto $\mathbf{y}$. A notação $\mathbf{x} \succsim \mathbf{y}$ se lê "$\mathbf{x}$ é fracamente preferida a $\mathbf{y}$". Note que a relação $\succsim$ é **primitiva** — ela é o ponto de partida da teoria, não algo derivado de uma função de utilidade. Tomamos como dado que o consumidor *possui* preferências; o que os axiomas fazem é impor estrutura sobre essas preferências, de modo a torná-las matematicamente tratáveis. A função de utilidade, como veremos na próxima seção, é uma *consequência* dos axiomas impostos sobre $\succsim$, não uma hipótese adicional.

A partir de $\succsim$, definimos duas relações derivadas que utilizaremos extensivamente:

- **Preferência estrita**: $\mathbf{x} \succ \mathbf{y}$ se e somente se $\mathbf{x} \succsim \mathbf{y}$ e não $\mathbf{y} \succsim \mathbf{x}$. O consumidor considera $\mathbf{x}$ estritamente melhor que $\mathbf{y}$.
- **Indiferença**: $\mathbf{x} \sim \mathbf{y}$ se e somente se $\mathbf{x} \succsim \mathbf{y}$ e $\mathbf{y} \succsim \mathbf{x}$. O consumidor é igualmente satisfeito com ambas as cestas.

Para que as preferências do consumidor sejam "bem comportadas" e passíveis de análise formal, exigimos um conjunto de axiomas. Cada um deles captura uma exigência de coerência que, embora possa parecer óbvia isoladamente, desempenha um papel específico e insubstituível na construção do edifício teórico. Abandonar qualquer um deles — como ilustra o caso das preferências lexicográficas — pode comprometer resultados fundamentais, como a própria existência de uma função de utilidade.


::: {.definitionbox title="Axioma 1 — Completude"}
Para quaisquer $\mathbf{x}, \mathbf{y} \in X$, vale $\mathbf{x} \succsim \mathbf{y}$ ou $\mathbf{y} \succsim \mathbf{x}$ (ou ambos). Em outras palavras, o consumidor é sempre capaz de comparar duas cestas quaisquer.
:::


::: {.definitionbox title="Axioma 2 — Transitividade"}
Para quaisquer $\mathbf{x}, \mathbf{y}, \mathbf{z} \in X$, se $\mathbf{x} \succsim \mathbf{y}$ e $\mathbf{y} \succsim \mathbf{z}$, então $\mathbf{x} \succsim \mathbf{z}$. A transitividade garante consistência interna nas escolhas.
:::


::: {.definitionbox title="Axioma 3 — Continuidade"}
Para todo $\mathbf{y} \in X$, os conjuntos $\{\mathbf{x} \in X : \mathbf{x} \succsim \mathbf{y}\}$ (conjunto de pelo menos tão bom quanto) e $\{\mathbf{x} \in X : \mathbf{y} \succsim \mathbf{x}\}$ (conjunto de no máximo tão bom quanto) são fechados. A continuidade exclui "saltos" nas preferências — pequenas mudanças na cesta não causam inversões bruscas no ordenamento.
:::


::: {.definitionbox title="Axioma 4 — Monotonicidade (não saciedade local)"}
Se $\mathbf{x} \geq \mathbf{y}$ (componente a componente) e $\mathbf{x} \neq \mathbf{y}$, então $\mathbf{x} \succ \mathbf{y}$. "Mais é melhor" — o consumidor sempre prefere ter mais de pelo menos um bem, tudo o mais constante.
:::


Uma nota de precaução que desenvolveremos na próxima seção: a função de utilidade que construiremos será *ordinal* — os números que ela atribui importam apenas pela ordem, não pela magnitude. Dizer que $u(A) = 10$ e $u(B) = 5$ significa que A é preferido a B, não que A é "duas vezes melhor".


::: {.tipbox title="Observação sobre preferências lexicográficas"}
As preferências lexicográficas satisfazem completude, transitividade e monotonicidade, mas **não** satisfazem continuidade. Por isso, não podem ser representadas por uma função de utilidade contínua. Este é um caso clássico que ilustra a importância do axioma de continuidade.
:::


::: {.infobox title="Exemplo — Racionalidade nas escolhas de consumo no Brasil"}
Os axiomas de completude e transitividade podem parecer abstratos, mas refletem exigências mínimas de consistência nas escolhas cotidianas. A Pesquisa de Orçamentos Familiares (POF 2017-2018) do [IBGE](https://www.ibge.gov.br) mostra que famílias brasileiras, mesmo as de baixa renda, alocam seus orçamentos de forma estável e internamente consistente: quando a renda aumenta, a participação relativa da alimentação cai de maneira suave e previsível (de 22% para famílias com renda até R$ 1.908 a 7,6% para famílias acima de R$ 23.850). Essa regularidade empírica é compatível com preferências que satisfazem os axiomas acima — especialmente transitividade e monotonicidade — e justifica o uso do arcabouço axiomático como ponto de partida para modelar o consumidor.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Os axiomas de preferência são apenas regras mínimas de coerência — exigem que o consumidor saiba comparar opções e não se contradiga.

**Pense assim:** Quando você vai à feira e decide que prefere banana a maçã, e maçã a pera, seria estranho voltar e dizer que prefere pera a banana. Completude é conseguir comparar qualquer par de frutas; transitividade é não entrar em contradição. A monotonicidade diz que, entre dois sacos de frutas, você prefere o maior — desde que goste de todas.

**Por que isso importa:** Sem essas regras mínimas, não seria possível prever o comportamento do consumidor nem formular políticas públicas baseadas em escolhas racionais.
:::


::: {.notebox title="Conexão com a teoria da preferência revelada"}
Os axiomas sobre $\succsim$ são postulados sobre preferências *internas* do consumidor — algo que, em princípio, não podemos observar diretamente. Existe, porém, uma contrapartida observacional: o **Axioma Generalizado da Preferência Revelada (GARP)**, que traduz completude e transitividade em condições testáveis sobre *escolhas de consumo observadas*. Se as compras de um consumidor satisfazem o GARP, seus dados são consistentes com a maximização de alguma função de utilidade bem comportada. Na seção "Pesquisa em Ação" ao final deste capítulo, o artigo de Choi et al. (2014) testa exatamente essa hipótese em uma amostra representativa — com resultados surpreendentes sobre a relação entre consistência das escolhas e acumulação de riqueza.
:::


Antes de prosseguir para a função de utilidade, vale uma pausa para quem quer saber: esses axiomas funcionam na prática? O Box a seguir examina a evidência experimental — e a resposta é surpreendente.


::: {.boxmundobox title="Box Mundo 3.1 — Violações de transitividade: os experimentos de Tversky e replicações internacionais"}

**Contexto:** O axioma da transitividade — se $A \succsim B$ e $B \succsim C$, então $A \succsim C$ — é um dos pilares da teoria da escolha racional. Sem ele, como discutido na Seção 3.1, não é possível construir uma função de utilidade que represente as preferências do consumidor. Porém, desde os anos 1960, psicólogos e economistas comportamentais têm documentado violações sistemáticas desse axioma em contextos experimentais. O trabalho mais influente é o de Amos Tversky (1969), que demonstrou que indivíduos frequentemente exibem preferências intransitivas quando as alternativas diferem em múltiplas dimensões e as diferenças em alguma dimensão são "imperceptíveis".

**Dados:** Tversky (1969) apresentou a participantes do experimento escolhas entre pares de apostas que variavam em probabilidade de ganho e valor do prêmio. Quando a diferença de probabilidades entre duas apostas era pequena (por exemplo, 7/24 vs. 8/24), os participantes tendiam a escolher a aposta com prêmio maior — mas quando confrontados com comparações entre extremos da cadeia, a probabilidade dominava, gerando ciclos de intransitividade. A taxa de intransitividade observada chegou a 17% das tríades de escolha. Estudos subsequentes replicaram o fenômeno em diversos contextos e culturas: Regenwetter et al. (2011) conduziram meta-análises com dados de laboratórios nos EUA, Europa e Ásia e encontraram que, embora a frequência de intransitividade varie entre populações (de 5% a 25% das tríades), o padrão é robusto e não desaparece com incentivos monetários reais. Na Alemanha, Birnbaum e Schmidt (2015) replicaram o resultado com mais de 400 participantes e diferentes tipos de loterias.

**Análise:** Essas violações não invalidam a teoria da escolha racional, mas delimitam seu domínio de aplicação — uma questão central para a verificação de modelos (Capítulo 1). A resposta da teoria econômica tem sido dupla. Primeiro, modelos de utilidade aleatória (*random utility*), como o de McFadden (1974, Nobel 2000), incorporam um componente estocástico que pode gerar intransitividade aparente mesmo quando as preferências subjacentes são transitivas — as violações refletem "erros" de percepção, não preferências genuinamente cíclicas. Segundo, a economia comportamental desenvolveu modelos alternativos, como a *regret theory* de Loomes e Sugden (1982), que relaxam a transitividade mantendo outras propriedades. Do ponto de vista prático, a evidência sugere que a transitividade é uma aproximação excelente para decisões familiares e repetidas, mas pode falhar em escolhas complexas e não habituais — exatamente a distinção entre modelos descritivos e normativos que permeia todo este livro.

**Fonte:** Tversky, A. (1969). Intransitivity of preferences. *Psychological Review*, 76(1), 31–48. Regenwetter, M.; Dana, J.; Davis-Stober, C. P. (2011). Transitivity of preferences. *Psychological Review*, 118(1), 42–56. Birnbaum, M. H.; Schmidt, U. (2015). Testing transitivity in choice under risk. *Theory and Decision*, 79(4), 631–660.
:::


Com essa ressalva empírica em mente — os axiomas são uma excelente aproximação para decisões cotidianas, mas podem falhar em escolhas complexas —, prossigamos para a recompensa teórica: a função de utilidade.

---

### 3.2 Do "Prefiro" ao Número: Função de Utilidade

Ótimo: o consumidor é coerente, prefere mais a menos e não dá saltos. Mas como *usar* essas preferências para resolver um problema de otimização? Comparar cestas duas a duas, sem uma escala numérica, é como tentar navegar sem mapa — dá para fazer, mas é dolorosamente lento. O que precisamos é de uma **função** que atribua um número a cada cesta, de modo que cestas melhores recebam números maiores. Se tivermos isso, todo o arsenal do Capítulo 2 — derivadas, Lagrange, condições de ótimo — entra em campo.

A pergunta, portanto, é: podemos traduzir a relação de preferência $\succsim$ em uma **função de utilidade** $u: X \to \mathbb{R}$? A resposta é sim — e é exatamente para isso que precisávamos dos axiomas. A passagem de "eu prefiro A a B" para "$u(A) > u(B)$" é o passe de mágica que transforma a microeconomia de uma disciplina verbal em uma ciência analítica.

A definição formal de representação é a seguinte. Uma **função de utilidade** $u: X \to \mathbb{R}$ **representa** a relação de preferência $\succsim$ se, para todo $\mathbf{x}, \mathbf{y} \in X$:

$$
\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y}). \label{eq:3.2.1} \tag{3.2.1}
$$

A condição expressa na equação (\ref{eq:3.2.1}) exige apenas que a função preserve o ordenamento das preferências — ela não atribui significado aos valores numéricos em si, apenas à sua ordenação relativa. A existência de tal função, contudo, não é trivial: não é para qualquer relação de preferência que conseguimos encontrar uma representação numérica. O teorema a seguir fornece condições suficientes e mostra que os axiomas da Seção 3.1 são exatamente o que precisamos para garantir essa representação.


::: {.theorembox title="Teorema 3.1 — Existência da Função de Utilidade (Debreu, 1954)"}
Se a relação de preferência $\succsim$ sobre $X \subseteq \mathbb{R}^n_+$ é **completa**, **transitiva**, **contínua** e **monótona**, então existe uma função de utilidade contínua $u: X \to \mathbb{R}$ que representa $\succsim$.
:::


::: {.infobox title="Prêmio Nobel — Gerard Debreu (1983)"}

**Gerard Debreu** (1921–2004) foi um economista e matemático franco-americano, formado pela École Normale Supérieure de Paris. Atuou na Cowles Commission e na Universidade da Califórnia, Berkeley.

**Por que ganhou o Nobel:**
Premiado por sua contribuição à teoria do equilíbrio geral e por ter incorporado novos métodos analíticos à teoria econômica. Em *Theory of Value* (1959), Debreu forneceu uma axiomatização rigorosa da teoria do consumidor e demonstrou a existência de equilíbrio geral competitivo sob condições precisas. O Teorema 3.1 deste capítulo é uma de suas contribuições mais fundamentais.

**Conexão com este capítulo:**
O teorema de existência da função de utilidade garante que os axiomas da Seção 3.1 — completude, transitividade, continuidade e monotonicidade — são suficientes para construir toda a maquinaria analítica que se segue: curvas de indiferença, TMS e otimização do consumidor.
:::


A demonstração completa pode ser encontrada em Mas-Colell, Whinston e Green (1995, Proposição 3.C.1). A ideia central é elegante: para cada cesta $\mathbf{x}$, encontramos o escalar $t$ tal que $\mathbf{x} \sim t \cdot \mathbf{1}$, onde $\mathbf{1} = (1, 1, \ldots, 1)$ é a cesta com uma unidade de cada bem. Esse escalar $t$ é o "nível de utilidade" atribuído a $\mathbf{x}$. A monotonicidade garante que tal $t$ é único — cestas melhores correspondem a valores maiores de $t$ — e a continuidade garante que a função resultante é contínua, sem saltos que gerariam cestas impossíveis de classificar. Cada axioma desempenha, portanto, um papel preciso na construção.


::: {.notebox title="Utilidade é ordinal, não cardinal"}
A função de utilidade atribui números a cestas apenas para preservar o **ordenamento**. Os valores absolutos não têm significado econômico intrínseco. Se $u(\mathbf{x}) = 10$ e $u(\mathbf{y}) = 5$, sabemos apenas que $\mathbf{x} \succ \mathbf{y}$, **não** que $\mathbf{x}$ é "duas vezes melhor" que $\mathbf{y}$.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Os números da utilidade funcionam como a ordem de chegada numa corrida — só importa quem chegou antes, não por quantos segundos.

**Pense assim:** Imagine que você dá nota 10 para um prato de feijoada e nota 5 para uma salada. Isso não significa que a feijoada é "duas vezes mais gostosa" — apenas que você a prefere. Se um amigo desse nota 100 e 50, as preferências seriam as mesmas. O ranking é o que importa, não o placar.

**Por que isso importa:** Essa propriedade ordinal nos liberta de medir "felicidade" em unidades absolutas — basta saber o que o consumidor prefere para analisar suas escolhas. No Capítulo 7, veremos que a introdução de incerteza exige uma utilidade **cardinal** (VNM): a curvatura da função passa a ter significado econômico, determinando a aversão ao risco do agente.
:::


---

### 3.3 O Mapa do "Tanto Faz": Curvas de Indiferença

Números são úteis, mas humanos pensam em imagens. A **curva de indiferença** é onde a microeconomia ganha olhos. A ideia: pegue todas as cestas que dão ao consumidor a *mesma* satisfação e ligue-as por uma curva. Pronto — você tem um "mapa topográfico" das preferências, onde cada curva é uma altitude de felicidade. Cestas em curvas mais altas são preferidas; cestas na mesma curva são equivalentes.

A forma das curvas conta uma história: se são quase retas, os bens são facilmente substituíveis (café e chá); se são em "L", devem ser consumidos juntos (pé esquerdo e pé direito de sapato). No Capítulo 4, quando sobrepormos essas curvas à reta orçamentária, o ponto ótimo do consumidor emergirá como o ponto de tangência — uma das imagens mais elegantes de toda a ciência econômica.


::: {.definitionbox title="Curva de indiferença"}
A curva de indiferença associada ao nível de utilidade $\bar{u}$ é o conjunto $\{\mathbf{x} \in X : u(\mathbf{x}) = \bar{u}\}$. Trata-se de uma **curva de nível** da função de utilidade.
:::


::: {.tipbox title="Propriedades das curvas de indiferença"}
Sob os axiomas da Seção 3.1:

1. **Cobrem todo o espaço de consumo**: pela completude, toda cesta pertence a alguma curva de indiferença.
2. **Não se cruzam**: se duas curvas se cruzassem em um ponto, a transitividade seria violada.
3. **Possuem inclinação negativa**: pela monotonicidade, manter a utilidade constante exige compensar um aumento em $x_1$ com uma redução em $x_2$.
4. **Cestas em curvas mais altas (a nordeste) são preferidas**: consequência direta da monotonicidade.

O **mapa de indiferença** é a família de todas as curvas de indiferença. Ele oferece uma representação visual completa das preferências do consumidor no espaço bidimensional.
:::


\figurePlaceholder{/micro-book/graficos/cap03/curvas-indiferenca.html}


**Figura 3.1 — Mapa de curvas de indiferença.** Arraste o ponto sobre a curva para ver a TMS. Use os sliders para alterar os parâmetros e o menu para trocar o tipo de preferência (Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES, quase-linear).


::: {.tipbox title="Convexidade estrita"}
Se as preferências forem **estritamente convexas** — isto é, se $\mathbf{x} \sim \mathbf{y}$ e $\mathbf{x} \neq \mathbf{y}$ implicarem $t\mathbf{x} + (1-t)\mathbf{y} \succ \mathbf{x}$ para todo $t \in (0,1)$ — então as curvas de indiferença são estritamente convexas em relação à origem. Isso reflete a ideia de que consumidores preferem variedade: uma cesta "mista" é preferida a cestas extremas. A seção sobre a TMS (a seguir) mostrará que essa propriedade equivale a uma TMS decrescente.
:::


::: {.warningbox title="Erro Comum"}
**Confundir preferências convexas com função de utilidade côncava.** São conceitos relacionados, mas distintos:

- **Preferências convexas** significam que os *conjuntos superiores* $\{\mathbf{x} : u(\mathbf{x}) \geq \bar{u}\}$ são convexos — geometricamente, as curvas de indiferença são "abauladas" em direção à origem.
- **Função côncava** é uma condição sobre a própria função $u$, mais forte que a convexidade das preferências.

Toda função de utilidade côncava gera preferências convexas, mas a recíproca é falsa: como a utilidade é ordinal, podemos sempre encontrar uma transformação monotônica que torne a função convexa (não côncava) sem alterar as preferências. O Exercício 3.5, com $u = x_1^2 + x_2^2$, ilustra o caso oposto: uma função convexa que gera preferências *côncavas* (curvas de indiferença circulares, côncavas em relação à origem).
:::



## 3.4–3.5 TMS e Utilidade Marginal

### 3.4 Quanto Cerveja Vale um Café? A Taxa Marginal de Substituição

As curvas de indiferença mostram *o quê* o consumidor aceita; a TMS diz *a que preço*. Imagine que você tem 10 fatias de pizza e 2 cervejas. Alguém te oferece trocar 1 pizza por 1 cerveja. Você aceita? Provavelmente sim — pizza está sobrando, cerveja está escassa. Mas e se já tiver 10 cervejas e 2 pizzas? Agora a troca é desvantajosa. A **taxa marginal de substituição (TMS)** captura exatamente essa lógica: quantas unidades do bem 2 você topa ceder por uma unidade a mais do bem 1, *sem perder satisfação*.

A TMS é, talvez, o conceito mais operacional de toda a teoria do consumidor. No próximo capítulo, veremos que o consumidor está no ótimo quando sua TMS (o quanto ele *quer* trocar) se iguala à razão de preços (o quanto o mercado *cobra* para trocar). Se o valor subjetivo e o preço de mercado divergem, há um negócio a ser feito — e o consumidor faz.


::: {.classroombox title="Atividade — Sua TMS pessoal"}

**Passo 1 (individual, 2 min):** Você tem 10 fatias de pizza e 2 latas de cerveja. Quantas fatias de pizza você toparia trocar por 1 cerveja extra? Anote um número.

**Passo 2 (individual, 1 min):** Agora inverta: você tem 2 fatias de pizza e 10 cervejas. Quantas fatias toparia trocar por 1 cerveja? Anote.

**Passo 3 (em dupla, 3 min):** Compare com o colega. (a) Os números de vocês são iguais? Provavelmente não — preferências são subjetivas. (b) O número do Passo 2 é menor que o do Passo 1? Quase certamente sim. Esse é o fenômeno da **TMS decrescente**.

**Debrief (turma):** O professor formaliza: a TMS caiu porque pizza ficou escassa e cerveja abundante. A disposição a trocar não é fixa — depende da composição da cesta. Isso é a convexidade estrita em ação.
:::


::: {.definitionbox title="Taxa marginal de substituição"}
A **taxa marginal de substituição** do bem 1 pelo bem 2 é definida como o valor absoluto da inclinação da curva de indiferença no ponto $(x_1, x_2)$:

$$
\text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} \label{eq:3.4.2} \tag{3.4.2}
$$

A TMS mede a quantidade do bem 2 que o consumidor está disposto a abrir mão para obter uma unidade adicional do bem 1, mantendo o nível de utilidade constante.
:::


::: {.infobox title="Prêmio Nobel — John R. Hicks (1972)"}

**John Richard Hicks** (1904–1989) foi um economista britânico, formado na Universidade de Oxford. Foi professor em Manchester, Oxford e na London School of Economics. Dividiu o Nobel com Kenneth Arrow.

**Por que ganhou o Nobel:**
Premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Em *Value and Capital* (1939), Hicks axiomatizou a teoria do consumidor, introduzindo a taxa marginal de substituição como ferramenta central, e desenvolveu o conceito de demanda compensada (hicksiana), que separa efeitos renda e substituição.

**Conexão com este capítulo:**
A taxa marginal de substituição (TMS) formalizada por Hicks é o conceito central deste capítulo. A condição de tangência entre a curva de indiferença e a restrição orçamentária — que exige igualdade entre TMS e razão de preços — é a base da teoria da escolha do consumidor desenvolvida aqui.
:::


**Interpretação econômica.** A TMS é a **taxa de troca subjetiva** do consumidor — o "preço pessoal" que ele atribui ao bem 1 em termos do bem 2. Se $\text{TMS}_{12} = 3$, o consumidor está disposto a abrir mão de até 3 unidades do bem 2 para obter 1 unidade adicional do bem 1, permanecendo no mesmo nível de satisfação. Note que essa taxa é puramente subjetiva e pode diferir radicalmente da razão de preços do mercado — é precisamente essa diferença que cria incentivos para o consumidor realocar seu consumo.

**TMS decrescente.** Sob preferências estritamente convexas, a TMS é decrescente ao longo da curva de indiferença: à medida que o consumidor adquire mais do bem 1, cada unidade adicional torna-se relativamente menos valiosa em relação ao bem 2, que se torna cada vez mais escasso na cesta. O consumidor, portanto, está disposto a sacrificar cada vez menos do bem 2 para obter mais uma unidade do bem 1. Esta propriedade — matematicamente equivalente à convexidade estrita das curvas de indiferença — reflete a ideia intuitiva de que os consumidores valorizam a diversidade: cestas equilibradas são preferidas a cestas extremas.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** A TMS mede "quanto do bem 2 você toparia trocar por mais uma unidade do bem 1" — é o seu preço pessoal de troca.

**Pense assim:** Imagine que você tem muito arroz e pouco feijão em casa. Você toparia trocar bastante arroz por um pouco de feijão. Mas à medida que ganha feijão e perde arroz, cada porção adicional de feijão vale menos para você, e cada porção de arroz que abre mão dói mais. Essa "taxa de troca pessoal" que vai caindo é a TMS decrescente.

**Por que isso importa:** No capítulo seguinte veremos que o consumidor otimiza quando sua TMS iguala a razão de preços do mercado — é o ponto onde o "preço pessoal" coincide com o "preço de mercado".
:::


::: {.infobox title="Exemplo — TMS e escolhas alimentares no Brasil"}
Considere um consumidor brasileiro escolhendo entre alimentação dentro de casa ($x_1$) e alimentação fora de casa ($x_2$). Segundo a POF 2017-2018 do IBGE, a despesa média per capita com alimentação no domicílio era de aproximadamente R\$ 136 mensais, contra R\$ 73 com alimentação fora. Uma família com muito gasto em alimentação domiciliar (cesta "extrema") teria uma TMS alta: estaria disposta a abrir mão de várias refeições caseiras por uma refeição fora. À medida que aumenta a alimentação fora de casa, a TMS diminui — o consumidor valoriza cada vez menos uma refeição adicional fora. Essa TMS decrescente é a manifestação empírica da convexidade estrita das preferências.
:::


---

### 3.5 A Última Fatia de Pizza: Utilidade Marginal e TMS

Na seção anterior, a TMS era uma inclinação que "víamos" no gráfico. Agora queremos *calculá-la* — sem desenhar nada. O truque: a TMS é simplesmente a razão entre as **utilidades marginais** dos dois bens. A utilidade marginal mede o "quanto a mais de satisfação" que uma unidade extra de um bem proporciona (nosso velho amigo *ceteris paribus*). Se a próxima fatia de pizza te dá prazer 3 e a próxima cerveja te dá prazer 6, você toparia trocar até 2 pizzas por 1 cerveja — e a TMS é exatamente 2. Vejamos isso com rigor.

Formalmente, a **utilidade marginal** do bem $i$ é a derivada parcial da função de utilidade em relação à quantidade desse bem:

$$
\text{UMg}_i = \frac{\partial u}{\partial x_i}. \label{eq:3.5.3} \tag{3.5.3}
$$

Se a utilidade marginal é positiva — o que é garantido pela monotonicidade —, o consumidor sempre se beneficia de uma unidade adicional do bem $i$, mantendo tudo o mais constante. Contudo, é importante lembrar que, como a utilidade é ordinal (Seção 3.2), o valor numérico da utilidade marginal *em si* não possui significado econômico absoluto — ele depende da escala escolhida para representar as preferências. O que *tem* significado é a razão entre utilidades marginais, como veremos imediatamente.


::: {.warningbox title="Cuidado: utilidade marginal não tem significado isolado"}
A utilidade marginal $\text{UMg}_i$ muda de valor quando aplicamos uma transformação monotônica à função de utilidade (Seção 3.7). Se $\hat{u} = \ln(u)$, a utilidade marginal passa de $\partial u / \partial x_i$ para $\frac{1}{u} \cdot \partial u / \partial x_i$ — um valor completamente diferente. Por isso, afirmações como "a utilidade marginal do bem 1 é 5" não possuem conteúdo econômico: o número 5 depende arbitrariamente da escala escolhida.

O que **tem** significado econômico é a **razão** $\text{UMg}_1 / \text{UMg}_2$, que é a TMS — invariante sob transformações monotônicas. Não confunda, ainda, "utilidade marginal decrescente" (propriedade cardinal, sem significado ordinal) com "TMS decrescente" (propriedade ordinal, com significado econômico preciso: preferências convexas).
:::


A relação fundamental entre a utilidade marginal, definida pela equação (\ref{eq:3.5.3}), e a TMS, definida pela equação (\ref{eq:3.4.2}), revela que a inclinação da curva de indiferença pode ser inteiramente expressa em termos de derivadas da função de utilidade. Essa ponte entre geometria e cálculo — entre a inclinação visual da curva e as derivadas parciais da função — é dada pela proposição a seguir.


::: {.theorembox title="Proposição 3.2 — TMS como razão de utilidades marginais"}
Se $u(x_1, x_2)$ é diferenciável e $\text{UMg}_2 > 0$, então:

$$
\text{TMS}_{12} = \frac{\text{UMg}_1}{\text{UMg}_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} \label{eq:3.5.4} \tag{3.5.4}
$$
:::


::: {.proofbox title="Demonstração"}
Considere o consumidor sobre uma curva de indiferença, de modo que $u(x_1, x_2) = \bar{u}$. Tomando o **diferencial total** da função de utilidade ao longo dessa curva:

$$
du = \frac{\partial u}{\partial x_1} dx_1 + \frac{\partial u}{\partial x_2} dx_2 = 0,
$$

pois o nível de utilidade é constante ($du = 0$) ao longo da curva de indiferença. Reorganizando:

$$
\frac{\partial u}{\partial x_2} dx_2 = -\frac{\partial u}{\partial x_1} dx_1,
$$

$$
\frac{dx_2}{dx_1} = -\frac{\partial u / \partial x_1}{\partial u / \partial x_2}.
$$

Como a TMS é definida como o valor absoluto (com sinal positivo) da inclinação da curva de indiferença:

$$
\text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \frac{\text{UMg}_1}{\text{UMg}_2}. \qquad \blacksquare
$$
:::


\figurePlaceholder{/micro-book/graficos/cap03/tms-ponto.html}


**Figura 3.2 — Taxa Marginal de Substituição (TMS).** Arraste o ponto P ao longo da curva de indiferença para ver a reta tangente e o cálculo da $\text{TMS} = \text{UMg}_1/\text{UMg}_2$ em tempo real. Selecione entre Cobb-Douglas, linear, Leontief, CES e quase-linear.


::: {.exresolvidobox title="Exercício Resolvido 3.1"}
**Enunciado:** Um consumidor tem preferências representadas por $u(x_1, x_2) = x_1^{2/5} \, x_2^{3/5}$. Calcule a TMS no ponto $(x_1, x_2) = (10, 15)$ e interprete o resultado.

**Dados:** $a = 2/5$, $b = 3/5$, $x_1 = 10$, $x_2 = 15$.

**Resolução:**

**Passo 1 — Cálculo das utilidades marginais**

$$
\text{UMg}_1 = \frac{\partial u}{\partial x_1} = \frac{2}{5} \, x_1^{-3/5} \, x_2^{3/5}
$$

$$
\text{UMg}_2 = \frac{\partial u}{\partial x_2} = \frac{3}{5} \, x_1^{2/5} \, x_2^{-2/5}
$$

**Passo 2 — Cálculo da TMS**

$$
\text{TMS}_{12} = \frac{\text{UMg}_1}{\text{UMg}_2} = \frac{\frac{2}{5} \, x_1^{-3/5} \, x_2^{3/5}}{\frac{3}{5} \, x_1^{2/5} \, x_2^{-2/5}} = \frac{2}{3} \cdot \frac{x_2}{x_1}
$$

Note que, para qualquer Cobb-Douglas $u = x_1^a x_2^b$, a TMS assume a forma geral $\text{TMS}_{12} = \frac{a}{b} \cdot \frac{x_2}{x_1}$.

**Passo 3 — Avaliação no ponto dado**

$$
\text{TMS}_{12}(10, 15) = \frac{2}{3} \cdot \frac{15}{10} = \frac{2}{3} \cdot 1{,}5 = 1
$$

**Resultado:** $\text{TMS}_{12} = 1$ no ponto $(10, 15)$.

**Interpretação econômica:** No ponto $(10, 15)$, o consumidor está disposto a trocar exatamente 1 unidade do bem 2 por 1 unidade adicional do bem 1, mantendo-se indiferente. Se pensarmos no bem 1 como transporte e no bem 2 como alimentação fora de casa no orçamento de uma família brasileira, a TMS igual a 1 significa que o consumidor valoriza igualmente uma unidade adicional de cada bem naquela composição de cesta. Se o preço relativo diferir de 1, haverá incentivo para realocar o consumo — tema do Capítulo 4.
:::



## 3.6–3.7 Formas Funcionais e Transformações Monotônicas

### 3.6 O Cardápio das Preferências: Cobb-Douglas, CES e Companhia

Até aqui, a função de utilidade era abstrata — uma $u$ genérica sem rosto. Agora é hora de conhecer as protagonistas pelo nome. Cada família de funções de utilidade captura um tipo diferente de consumidor: o que substitui facilmente (Cobb-Douglas), o que não substitui de jeito nenhum (Leontief), o que trata os bens como idênticos (substitutos perfeitos), e o camaleão que se adapta a qualquer grau de substituição (CES). Conhecer essas "personagens" é essencial porque elas reaparecerão em *todo* capítulo daqui para frente — da derivação de demandas à análise de comércio internacional.

#### 3.6.1 Cobb-Douglas

A função Cobb-Douglas é, sem dúvida, a forma funcional mais utilizada em microeconomia — tanto pela sua notável tratabilidade analítica quanto por suas propriedades econômicas intuitivas e empiricamente relevantes. Proposta originalmente por Charles Cobb e Paul Douglas (1928) no contexto da teoria da produção, ela rapidamente migrou para a teoria do consumidor, onde se tornou o "cavalo de batalha" de inúmeros modelos teóricos e aplicados. A função é definida como:

$$
u(x_1, x_2) = x_1^a \, x_2^b, \quad a, b > 0. \label{eq:3.6.5} \tag{3.6.5}
$$

Geometricamente, as curvas de indiferença da Cobb-Douglas são hipérboles convexas, estritamente decrescentes e assintóticas aos eixos coordenados. A assíntota implica que o consumidor nunca deseja quantidades nulas de qualquer bem: por maior que seja a quantidade de $x_1$, uma pequena quantidade positiva de $x_2$ sempre é necessária para manter a utilidade positiva. A TMS é:

$$
\text{TMS}_{12} = \frac{a \, x_2}{b \, x_1}. \label{eq:3.6.6} \tag{3.6.6}
$$

Observe que a TMS depende da razão $x_2/x_1$: quando o consumidor tem muito do bem 2 e pouco do bem 1, a TMS é alta — ele valoriza muito uma unidade adicional do bem 1. À medida que adquire mais do bem 1, a TMS cai, refletindo a TMS decrescente discutida na Seção 3.4.

A função Cobb-Douglas é extremamente conveniente por gerar funções de demanda com forma fechada, o que simplifica consideravelmente os cálculos. A participação de cada bem na despesa total é constante: $\frac{a}{a+b}$ para o bem 1 e $\frac{b}{a+b}$ para o bem 2 — uma propriedade notável que independe tanto dos preços quanto da renda. A elasticidade de substituição é $\sigma = 1$, indicando que, quando o preço relativo de um bem sobe 1%, a razão entre as quantidades consumidas se ajusta exatamente 1% na direção oposta.

#### 3.6.2 Substitutos Perfeitos

No extremo oposto da substituibilidade, considere bens que o consumidor troca livremente entre si a uma taxa fixa — como, para muitos consumidores, manteiga e margarina, ou gasolina comum e aditivada. Para esse consumidor, o que importa é apenas a quantidade total de "gordura para cozinhar" ou de "combustível", não a composição específica da cesta. Nesse caso, a função de utilidade assume a forma linear:

$$
u(x_1, x_2) = a x_1 + b x_2, \quad a, b > 0. \label{eq:3.6.7} \tag{3.6.7}
$$

As curvas de indiferença são **linhas retas** com inclinação $-a/b$, paralelas entre si no espaço $(x_1, x_2)$. Curvas de indiferença mais altas (maiores níveis de utilidade) estão mais afastadas da origem. A TMS é constante em todos os pontos:

$$
\text{TMS}_{12} = \frac{a}{b}. \label{eq:3.6.8} \tag{3.6.8}
$$

O consumidor troca os bens a uma taxa fixa, independente da composição da cesta — não há TMS decrescente, pois a disposição a substituir nunca se altera. A elasticidade de substituição é $\sigma = \infty$, refletindo a perfeita substituibilidade.


::: {.warningbox title="Substitutos perfeitos geram soluções de canto"}
Diferentemente das demais formas funcionais, a solução ótima com substitutos perfeitos tipicamente **não é interior**: o consumidor gasta toda a renda no bem que oferece maior "valor por unidade monetária" — isto é, maior razão $a_i/p_i$. Formalmente:

- Se $a/p_1 > b/p_2$: $x_1^* = m/p_1$, $x_2^* = 0$ — especialização total no bem 1.
- Se $a/p_1 < b/p_2$: $x_1^* = 0$, $x_2^* = m/p_2$ — especialização total no bem 2.
- Se $a/p_1 = b/p_2$: qualquer cesta na reta orçamentária é ótima (caso-faca).

Na prática, isso significa que a condição de tangência $\text{TMS} = p_1/p_2$ não se aplica: como a TMS é constante e a reta orçamentária também tem inclinação constante, as duas nunca se "encontram" em um ponto interior (a menos do caso-faca). Essa é uma exceção importante à regra geral de otimização do Capítulo 4.
:::


#### 3.6.3 Complementos Perfeitos

Se os substitutos perfeitos representam a máxima disposição a trocar entre bens, os complementos perfeitos ocupam o extremo oposto do espectro de substituibilidade: os bens só têm valor quando consumidos juntos, em proporções fixas.[^shrubbery]

[^shrubbery]: Em *Monty Python and the Holy Grail*, os Cavaleiros Que Dizem Ni exigem um arbusto (*shrubbery*) — e nenhum substituto é aceito. "We want... a shrubbery!" A demanda é perfeitamente inelástica ao preço: não importa quanto custe, nada além de um arbusto satisfaz a restrição. É o complemento perfeito levado ao absurdo: sem o arbusto, a utilidade é zero, independente de quanto mais se tenha de qualquer outra coisa. Pense em um pé esquerdo e um pé direito de sapato — um sem o outro é inútil. Ter dez pés esquerdos e apenas um pé direito não é melhor do que ter um par, pois os pés extras não podem ser aproveitados. A função de utilidade que captura essa rigidez é:

$$
u(x_1, x_2) = \min\{a x_1, \, b x_2\}, \quad a, b > 0. \label{eq:3.6.9} \tag{3.6.9}
$$

As curvas de indiferença têm formato de **L** (ângulo reto), com vértice na reta $a x_1 = b x_2$, que define a proporção ótima de consumo. A TMS é indefinida no vértice (onde a curva faz uma "quina"), zero nos segmentos horizontais (o consumidor não valoriza mais do bem 1 sem mais do bem 2) e infinita nos segmentos verticais (o consumidor não valoriza mais do bem 2 sem mais do bem 1). A elasticidade de substituição é $\sigma = 0$, indicando que nenhum ajuste de preços relativos pode induzir o consumidor a alterar a proporção entre os bens. Exemplos clássicos incluem sapato esquerdo e sapato direito, CPU e monitor, e, em contextos mais modernos, cartucho de impressora e a impressora correspondente.

#### 3.6.4 CES (Elasticidade de Substituição Constante)

Os três casos anteriores — Cobb-Douglas (\ref{eq:3.6.5}), substitutos perfeitos (\ref{eq:3.6.7}) e complementos perfeitos (\ref{eq:3.6.9}) — podem parecer categorias isoladas e desconexas, mas na verdade são membros de uma mesma família: a função de utilidade com **Elasticidade de Substituição Constante** (CES, do inglês *Constant Elasticity of Substitution*). Introduzida por Arrow, Chenery, Minhas e Solow (1961) no contexto da teoria da produção, a CES permite capturar *qualquer* grau de substituibilidade entre os bens por meio de um único parâmetro $\rho$, que governa a curvatura das curvas de indiferença. Ao variar $\rho$ continuamente, transitamos suavemente dos complementos perfeitos aos substitutos perfeitos, passando pela Cobb-Douglas como caso intermediário — o que torna a CES uma ferramenta extremamente versátil tanto na teoria quanto na estimação empírica.

$$
u(x_1, x_2) = \left(x_1^{\rho} + x_2^{\rho}\right)^{1/\rho}, \quad \rho \leq 1, \; \rho \neq 0. \label{eq:3.6.10} \tag{3.6.10}
$$

A elasticidade de substituição — que mede a sensibilidade da razão $x_1/x_2$ a variações no preço relativo — é determinada diretamente pelo parâmetro $\rho$:

$$
\sigma = \frac{1}{1 - \rho}. \label{eq:3.6.11} \tag{3.6.11}
$$

Essa relação é a chave para entender a versatilidade da CES: ao variar um único parâmetro, percorremos todo o espectro de substituibilidade. A função CES engloba como casos especiais as três formas funcionais anteriores:

- $\rho \to 0$: Cobb-Douglas ($\sigma = 1$). A passagem ao limite requer a regra de L'Hôpital aplicada ao logaritmo da função.
- $\rho = 1$: Substitutos perfeitos ($\sigma = \infty$). A utilidade se reduz a uma combinação linear dos bens.
- $\rho \to -\infty$: Complementos perfeitos ($\sigma = 0$). A utilidade converge para o mínimo das quantidades ponderadas.

Para valores intermediários de $\rho$, a CES produz curvas de indiferença com curvatura intermediária — nem tão "redondas" quanto as da Cobb-Douglas, nem tão "angulosas" quanto as dos complementos perfeitos. Isso a torna ideal para estimação empírica, pois os dados podem "escolher" o grau de substituibilidade que melhor se ajusta ao comportamento observado.

A TMS para a CES assume uma forma compacta e elegante:

$$
\text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho - 1}. \label{eq:3.6.12} \tag{3.6.12}
$$

Note que, quando $\rho < 1$ (o caso economicamente relevante), o expoente $\rho - 1$ é negativo, de modo que a TMS é decrescente em $x_1/x_2$ — confirmando a convexidade das curvas de indiferença.

\figurePlaceholder{/micro-book/graficos/cap03/ces-continua.html}


**Figura 3.3 — CES Contínua: de Leontief a Substitutos Perfeitos.** Arraste o slider de $\rho$ para observar a transformação contínua das curvas de indiferença: de ângulos retos ($\rho \to -\infty$, complementos perfeitos) a hipérboles suaves ($\rho = 0$, Cobb-Douglas) a retas ($\rho \to 1$, substitutos perfeitos). A elasticidade de substituição $\sigma = 1/(1-\rho)$ é exibida em tempo real.


::: {.examplebox title="Exemplo numérico: CES com diferentes valores de ρ"}
Considere o ponto $(x_1, x_2) = (4, 8)$. A TMS da CES é $\text{TMS}_{12} = (x_1/x_2)^{\rho-1} = (4/8)^{\rho-1} = (0{,}5)^{\rho-1}$. Veja como ela varia com $\rho$:

| $\rho$ | $\sigma = \frac{1}{1-\rho}$ | $\text{TMS}_{12}(4,8)$ | Interpretação |
|---|---|---|---|
| $0{,}5$ | $2$ | $(0{,}5)^{-0,5} = 1{,}41$ | Substituição fácil: troca 1,41 unidades de $x_2$ por 1 de $x_1$ |
| $0$ (Cobb-Douglas) | $1$ | $(0{,}5)^{-1} = 2$ | Substituição moderada |
| $-1$ | $0{,}5$ | $(0{,}5)^{-2} = 4$ | Substituição difícil: exige 4 unidades de $x_2$ por 1 de $x_1$ |
| $-5$ | $0{,}17$ | $(0{,}5)^{-6} = 64$ | Quase complementares: compensação altíssima |

À medida que $\rho$ diminui (e $\sigma$ cai), a TMS cresce explosivamente para cestas desequilibradas — o consumidor resiste cada vez mais a trocar o bem escasso. Para $\rho \to -\infty$, a TMS diverge para infinito fora do vértice, recuperando os complementos perfeitos.
:::


::: {.boxbrasilbox title="Box Brasil 3.1 — Etanol versus gasolina: preferências CES reveladas nas bombas brasileiras"}
**Contexto:** O Brasil oferece um laboratório natural único para observar a elasticidade de substituição entre bens de consumo. Desde a introdução dos veículos flex-fuel em 2003, motoristas brasileiros escolhem, a cada abastecimento, entre etanol hidratado e gasolina comum — bens que são substitutos próximos, mas não perfeitos (o etanol rende aproximadamente 70% da quilometragem por litro em relação à gasolina). A regra prática difundida entre consumidores — "abasteça etanol se o preço for inferior a 70% do preço da gasolina" — é, na essência, uma aplicação intuitiva da condição de otimização com preferências CES.

**Dados:** Segundo a ANP (Agência Nacional do Petróleo), a participação do etanol no consumo total de combustíveis leves oscila fortemente com o preço relativo. Em São Paulo, onde o etanol é mais barato (média de 65–70% do preço da gasolina em 2023), a participação do etanol atingiu cerca de 45% do volume total. No Rio de Janeiro e nos estados do Sul, onde a razão de preços frequentemente supera 75%, a participação do etanol caiu para 15–20%. Estimativas econométricas de Santos (2013, *Energy Economics*) e Salvo e Huse (2013, *Journal of Environmental Economics and Management*) encontraram elasticidades de substituição entre etanol e gasolina na faixa de $\sigma \approx 3$ a $5$ para proprietários de veículos flex — valores que situam esses combustíveis na região intermediária do espectro CES, entre a Cobb-Douglas ($\sigma = 1$) e os substitutos perfeitos ($\sigma = \infty$).

**Análise:** O caso brasileiro do etanol ilustra com precisão como o parâmetro $\rho$ da função CES se manifesta em decisões reais. Se etanol e gasolina fossem substitutos perfeitos ($\sigma \to \infty$), observaríamos soluções de canto puras: 100% etanol ou 100% gasolina em cada estado, sem transição gradual. O fato de a participação variar *suavemente* com o preço relativo — em vez de saltar descontinuamente — revela que $\sigma$ é alto, mas finito: diferenças na autonomia, na disponibilidade de postos, na percepção de desempenho do motor e em hábitos de consumo impedem a substituição perfeita. A curva de indiferença entre etanol e gasolina é convexa, mas relativamente "achatada", refletindo alta substituibilidade com fricções.

**Para refletir:** Se o governo aumentar a tributação sobre a gasolina em 10%, que mudança percentual na razão etanol/gasolina consumida você esperaria observar com $\sigma = 4$? Compare com o que ocorreria se $\sigma = 1$ (Cobb-Douglas) ou $\sigma = \infty$ (substitutos perfeitos).
:::


#### 3.6.5 Quase-linear

As formas funcionais anteriores compartilham uma propriedade importante: são todas homotéticas (como veremos na Seção 3.6.6), o que significa que a proporção entre os bens consumidos não se altera quando a renda varia — o consumidor simplesmente "escala" sua cesta ótima. Na prática, porém, existem situações em que a demanda por um bem específico é essencialmente insensível à renda: por exemplo, o consumo de sal de cozinha dificilmente se altera quando uma família recebe um aumento salarial. Nesses casos, todo o acréscimo de renda é direcionado aos demais bens. A função de utilidade quase-linear captura exatamente essa assimetria:

$$
u(x_1, x_2) = v(x_1) + x_2, \quad v' > 0, \; v'' < 0. \label{eq:3.6.13} \tag{3.6.13}
$$

A TMS depende apenas de $x_1$ — e não de $x_2$, o que é uma peculiaridade notável:

$$
\text{TMS}_{12} = v'(x_1). \label{eq:3.6.14} \tag{3.6.14}
$$

Como $v'' < 0$, a TMS é decrescente em $x_1$: à medida que o consumidor obtém mais do bem 1, sua disposição a trocar o bem 2 por unidades adicionais do bem 1 diminui — preservando a convexidade das curvas de indiferença.


::: {.notebox title="TMS independente de x₂: a assinatura da quase-linearidade"}
A propriedade mais distintiva da utilidade quase-linear é que a TMS depende *exclusivamente* de $x_1$ — a quantidade do bem 2 é irrelevante para a taxa de troca subjetiva do consumidor. Em todas as demais formas funcionais deste capítulo (Cobb-Douglas, CES, complementos perfeitos), a TMS depende da composição *completa* da cesta. Na quase-linear, o consumidor que possui 10 ou 1.000 unidades de $x_2$ atribui exatamente o mesmo valor marginal relativo ao bem 1, desde que $x_1$ seja o mesmo. É essa independência que elimina o efeito renda sobre $x_1$ e gera curvas de indiferença que são translações verticais.
:::


As curvas de indiferença são **translações verticais** umas das outras: possuem a mesma forma, apenas deslocadas paralelamente ao eixo $x_2$. Essa propriedade geométrica tem uma implicação econômica direta e poderosa: não há efeito renda sobre o bem 1 (para soluções interiores), pois a demanda por $x_1$ depende apenas dos preços, não da renda. Todo acréscimo de renda é absorvido pelo bem 2, que funciona como um "numerário" — um bem residual que absorve as variações de poder aquisitivo. A utilidade quase-linear é particularmente útil em análises de equilíbrio parcial e em modelos de organização industrial, onde se deseja isolar o mercado de um bem específico sem que efeitos renda contaminem a análise.


::: {.theorembox title="Proposição — Propriedades da utilidade quase-linear"}
Seja $u(x_1, x_2) = v(x_1) + x_2$ com $v' > 0$ e $v'' < 0$. Então, para soluções interiores:

1. **Efeito renda nulo sobre $x_1$**: a demanda marshalliana por $x_1$ depende apenas de $p_1/p_2$, não da renda $I$.
2. **Translação vertical**: fixado $x_1$, a curva de indiferença de nível $\bar{u}$ é $x_2 = \bar{u} - v(x_1)$. Ao passar para o nível $\bar{u}' > \bar{u}$, a curva se desloca verticalmente em $\bar{u}' - \bar{u}$.
3. **Medidas de bem-estar coincidem**: variação compensatória, variação equivalente e variação do excedente do consumidor são iguais — $VC = VE = \Delta EC$ — porque a demanda hicksiana por $x_1$ independe do nível de utilidade (ver Cap. 5, §5.8.4).
4. **Função dispêndio**: $E(\mathbf{p}, \bar{u}) = c(p_1, p_2) + p_2 \bar{u}$, onde $c(\cdot)$ é uma função apenas dos preços. A função dispêndio é **linear** em $\bar{u}$.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Na utilidade quase-linear, o bem 2 funciona como "dinheiro" — todo aumento de renda vai para $x_2$, sem afetar a escolha de $x_1$.

**Pense assim:** Imagine que você decide quanto café tomar por dia baseado apenas no preço do café, e todo o resto do seu orçamento vai para "outros gastos" ($x_2$). Se você ganha um aumento de salário, continua tomando a mesma quantidade de café — a renda extra vai toda para os outros gastos. Essa é a essência da quase-linearidade.

**Por que isso importa:** Essa propriedade torna a utilidade quase-linear a preferida em modelos de organização industrial e análises de equilíbrio parcial: como $VC = VE = \Delta EC$, a medida de bem-estar é única e não ambígua.
:::


**Quase-linear vs. homotética.** É importante distinguir claramente a utilidade quase-linear das preferências homotéticas, pois ambas são amplamente utilizadas mas possuem implicações opostas sobre o efeito renda. A utilidade quase-linear **não** é homotética (exceto no caso trivial em que $v$ é linear). Enquanto as preferências homotéticas geram curvas de indiferença que se expandem radialmente a partir da origem — mantendo constante a razão $x_1/x_2$ ao longo do caminho de expansão da renda —, as curvas da utilidade quase-linear se deslocam por translação vertical: a razão $x_1/x_2$ muda com a renda, pois todo o aumento vai para $x_2$, violando a condição das funções homotéticas (ver §3.6.6).

#### 3.6.6 Funções homotéticas

Após examinar a quase-linearidade — onde todo o efeito renda recai sobre um único bem —, é natural perguntar: existe uma classe de preferências em que a composição *relativa* da cesta permanece inalterada quando a renda varia? Ou seja, preferências tais que ricos e pobres, ao enfrentarem os mesmos preços, escolham as mesmas *proporções* entre os bens, diferindo apenas na *escala* de consumo? A resposta são as preferências **homotéticas**, que ocupam um papel central tanto na teoria do consumidor quanto nos modelos de equilíbrio geral e macroeconômico. A homoteticidade é a propriedade que permite agregar consumidores heterogêneos em um "consumidor representativo" — uma simplificação poderosa, embora nem sempre realista, como discutiremos adiante.


::: {.definitionbox title="Função homotética"}
Uma função de utilidade $u(x_1, x_2)$ é **homotética** se pode ser escrita como uma transformação monotônica crescente de uma função homogênea de grau 1:

$$
u(x_1, x_2) = g\!\big(h(x_1, x_2)\big), \quad g' > 0, \quad h(\lambda x_1, \lambda x_2) = \lambda \, h(x_1, x_2) \;\;\forall\, \lambda > 0.
$$
:::


**Propriedade fundamental.** Para preferências homotéticas, a TMS depende apenas da **razão** $x_1/x_2$, e não das quantidades absolutas:

$$
\text{TMS}_{12}(x_1, x_2) = \phi\!\left(\frac{x_1}{x_2}\right). \label{eq:3.6.15} \tag{3.6.15}
$$

A implicação geométrica é elegante: ao longo de qualquer raio que parte da origem ($x_2 = k \cdot x_1$), a TMS é constante — todas as curvas de indiferença cruzam esse raio com a mesma inclinação. Isso significa que as curvas de indiferença são **expansões radiais** umas das outras: escalar uma curva de indiferença a partir da origem produz outra curva de indiferença. Visualmente, o mapa de indiferença possui uma simetria radial que contrasta com o deslocamento puramente vertical da utilidade quase-linear. Essa simetria é precisamente o que garante que o caminho de expansão da renda — o conjunto de cestas ótimas para diferentes níveis de renda, a preços fixos — seja uma reta que passa pela origem.


::: {.theorembox title="Proposição — Propriedades das preferências homotéticas"}
Se $u$ é homotética, então:

1. **Caminho de expansão da renda linear**: a reta que passa pela origem e pela cesta ótima contém todas as cestas ótimas para diferentes níveis de renda (preços fixos). A razão $x_1^*/x_2^*$ é constante em $I$.
2. **Curvas de Engel lineares**: $x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I$, onde $\alpha_i$ depende apenas dos preços.
3. **Elasticidade-renda unitária**: $\varepsilon_{x_i, I} = 1$ para todo bem $i$. Todos os bens são normais e nem de luxo nem de necessidade.
4. **Participação constante na despesa**: $p_i x_i^* / I$ é constante para variações da renda.
5. **Função dispêndio separável**: $E(\mathbf{p}, \bar{u}) = b(\mathbf{p}) \cdot e(\bar{u})$, onde $b$ depende apenas dos preços e $e$ apenas da utilidade.
:::


**Exemplos.** A maioria das funções de utilidade estudadas neste capítulo é homotética — o que não é coincidência, pois a homoteticidade simplifica enormemente a análise. Vale, portanto, classificar cada uma delas:

- **Cobb-Douglas** $u = x_1^a x_2^b$: é homotética, pois é homogênea de grau $a+b$. A razão ótima é $x_1^*/x_2^* = (a p_2)/(b p_1)$, constante em $I$ — a participação de cada bem na despesa total não se altera com a renda.
- **CES** $u = (x_1^\rho + x_2^\rho)^{1/\rho}$: homotética (homogênea de grau 1). A razão ótima depende apenas de $p_1/p_2$ e $\rho$, nunca da renda.
- **Substitutos perfeitos** e **complementos perfeitos**: ambos são homotéticos (homogêneos de grau 1). No caso dos substitutos, a solução de canto faz com que toda a renda vá para um único bem, mas a *proporção* não depende de $I$.
- **Quase-linear** $u = v(x_1) + x_2$: **não** é homotética. A TMS depende de $x_1$ isoladamente, não da razão $x_1/x_2$. A razão ótima $x_1^*/x_2^*$ varia com a renda, pois todo o acréscimo de renda é absorvido por $x_2$.


::: {.boxbrasilbox title="Box Brasil 3.2 — Lei de Engel e a POF: evidência contra a homoteticidade"}
A **Lei de Engel** (1857) afirma que a participação da alimentação no orçamento familiar *cai* à medida que a renda *sobe*. Essa regularidade empírica — uma das mais robustas de toda a economia — implica que a elasticidade-renda da alimentação é menor que 1 (bem necessário), violando a previsão de elasticidade unitária das preferências homotéticas.

Os dados da **POF 2017-2018** (IBGE) confirmam a Lei de Engel para o Brasil com notável clareza:

| Faixa de renda familiar (R$/mês) | Participação da alimentação (%) | Participação de transporte (%) | Participação de educação (%) |
|---|---|---|---|
| Até 1.908 | 22,0 | 11,5 | 1,6 |
| 1.908 a 2.862 | 18,5 | 14,2 | 2,0 |
| 5.724 a 9.540 | 12,1 | 18,8 | 3,7 |
| Acima de 23.850 | 7,6 | 15,4 | 6,2 |

A alimentação segue o padrão engeliano clássico (de 22% para 7,6%), enquanto educação exibe comportamento oposto — bem de luxo, com participação crescente na renda. Transporte apresenta uma relação não monotônica: cresce nas faixas intermediárias e recua nas mais altas (possivelmente refletindo a troca de transporte público por automóvel próprio já amortizado).

**Implicação teórica:** preferências homotéticas — incluindo a Cobb-Douglas — são uma aproximação razoável *dentro* de uma faixa de renda estreita, mas não capturam a variação *entre* faixas. Modelos aplicados ao Brasil, como os que estimam impactos distributivos de reformas tributárias, devem usar especificações não homotéticas (como o AIDS de Deaton e Muellbauer) para capturar esses padrões.

**Fonte:** IBGE, Pesquisa de Orçamentos Familiares 2017-2018.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Com preferências homotéticas, ricos e pobres gastam a mesma *proporção* da renda em cada bem — só a escala muda.

**Pense assim:** Uma família homotética que gasta 30% da renda com alimentação e 70% com outros bens manterá essa proporção se sua renda dobrar, triplicar ou cair pela metade. O caminho de expansão da renda é uma reta que sai da origem — escalar a cesta ótima é como "dar zoom" na mesma cesta.

**Por que isso importa:** Essa propriedade permite agregar consumidores com rendas diferentes em um "consumidor representativo" — base de grande parte dos modelos macroeconômicos. Contudo, os dados da POF (ver Box Brasil, §3.6.6) mostram que preferências reais raramente são homotéticas: a participação da alimentação cai com a renda (Lei de Engel), evidenciando preferências não homotéticas na prática.
:::


A [Tabela 3.1](#tabela-3-1) a seguir sintetiza as principais formas funcionais de utilidade discutidas neste capítulo, reunindo em uma única referência a expressão da função, a TMS, o formato das curvas de indiferença e a elasticidade de substituição de cada caso. Recomenda-se consultá-la sempre que surgir dúvida sobre as propriedades de uma forma funcional específica.


| Tipo | Função $u(x_1, x_2)$ | TMS$_{12}$ | Curvas de indiferença | Elasticidade de substituição ($\sigma$) |
|---|---|---|---|---|
| Cobb-Douglas | $x_1^a x_2^b$ | $\dfrac{a\, x_2}{b\, x_1}$ | Hipérboles convexas | $1$ |
| Substitutos perfeitos | $ax_1 + bx_2$ | $\dfrac{a}{b}$ (constante) | Retas paralelas | $\infty$ |
| Complementos perfeitos | $\min\{ax_1, bx_2\}$ | Indefinida no vértice | Ângulo reto (L) | $0$ |
| CES | $(x_1^{\rho}+x_2^{\rho})^{1/\rho}$ | $\left(\frac{x_1}{x_2}\right)^{\rho-1}$ | Convexa (curvatura varia com $\rho$) | $\dfrac{1}{1-\rho}$ |
| Quase-linear | $v(x_1) + x_2$ | $v'(x_1)$ | Translações verticais | Variável |
| Homotética (geral) | $g(h(x_1,x_2))$, $h$ homogênea grau 1 | $\phi(x_1/x_2)$ | Expansões radiais | Depende de $h$ |


**Tabela 3.1 — Comparativa das funções de utilidade.**


::: {.tipbox title="Como escolher a forma funcional certa?"}
Diante de tantas opções, como decidir qual função de utilidade usar em um modelo ou exercício? A escolha depende do objetivo da análise:

- **Cobb-Douglas**: primeira escolha para modelos teóricos que exigem soluções analíticas em forma fechada. Ideal para exercícios e demonstrações pedagógicas. Limitação: elasticidade de substituição fixa em 1 e participação constante na despesa.
- **CES**: preferida em trabalhos empíricos e modelos de comércio internacional (Armington), pois permite estimar a elasticidade de substituição $\sigma$ a partir dos dados. Também útil quando se deseja generalidade teórica sem perder tratabilidade.
- **Substitutos perfeitos**: para mercados em que os bens são essencialmente intercambiáveis (commodities homogêneas, marcas genéricas). Gera soluções de canto — útil para ilustrar especialização.
- **Complementos perfeitos (Leontief)**: para insumos que devem ser usados em proporções fixas. Aparece frequentemente na teoria da produção (Capítulo 10) e em modelos de equilíbrio geral computável.
- **Quase-linear**: a escolha natural para análises de equilíbrio parcial e modelos de organização industrial, pois elimina efeitos renda e garante $VC = VE = \Delta EC$. Ideal quando o foco é um mercado específico.

**Regra prática:** comece com a forma mais simples que capture o fenômeno de interesse. Se a Cobb-Douglas for suficiente, não use a CES.
:::


\figurePlaceholder{/micro-book/graficos/cap03/tipos-preferencias.html}


**Figura 3.4 — Comparação dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais).**


\figurePlaceholder{/micro-book/graficos/cap03/funcoes-utilidade.html}


**Figura 3.5 — Superfície 3D da função de utilidade.** Rotacione e aplique zoom com o mouse. Use o menu para trocar entre Cobb-Douglas, substitutos perfeitos (plano), complementos perfeitos (superfície em cunha), CES e quase-linear. Ajuste os parâmetros nos sliders.


\figurePlaceholder{/micro-book/graficos/cap03/homotetica-vs-quaselinear.html}


**Figura 3.6 — Homotética vs quase-linear: compare a expansão da renda.** À esquerda (Cobb-Douglas), o caminho de expansão é um raio da origem — a razão $x_1/x_2$ é constante. À direita (quase-linear), o caminho é vertical — $x_1$ não muda com a renda. Ajuste $I$ e $p_1/p_2$ nos sliders.


::: {.exresolvidobox title="Exercício Resolvido 3.2"}
**Enunciado:** Considere a função CES $u(x_1, x_2) = (x_1^{\rho} + x_2^{\rho})^{1/\rho}$ com $\rho = -1$. (a) Calcule a elasticidade de substituição. (b) Derive a TMS. (c) Compare as curvas de indiferença com os casos Cobb-Douglas e complementos perfeitos.

**Dados:** $\rho = -1$, logo $u(x_1, x_2) = (x_1^{-1} + x_2^{-1})^{-1}$.

**Resolução:**

**Passo 1 — Elasticidade de substituição**

$$
\sigma = \frac{1}{1-\rho} = \frac{1}{1-(-1)} = \frac{1}{2}
$$

A elasticidade de substituição é $1/2$, um valor entre 0 (complementos perfeitos) e 1 (Cobb-Douglas). Isso indica substituibilidade baixa, mas não nula.

**Passo 2 — Cálculo da TMS**

Usando a fórmula geral da CES:

$$
\text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho-1} = \left(\frac{x_1}{x_2}\right)^{-2} = \left(\frac{x_2}{x_1}\right)^{2}
$$

**Passo 3 — Comparação com outros casos**

Com $\sigma = 1/2$, as curvas de indiferença são convexas e mais "encurvadas" do que as da Cobb-Douglas ($\sigma = 1$), mas sem o ângulo reto dos complementos perfeitos ($\sigma = 0$). Intuitivamente, o consumidor aceita trocar um bem pelo outro, mas exige compensações crescentes de maneira mais acentuada do que no caso Cobb-Douglas.

**Resultado:** $\sigma = 1/2$; $\text{TMS}_{12} = (x_2/x_1)^2$.

**Interpretação econômica:** No contexto brasileiro, uma elasticidade de substituição baixa como $\sigma = 1/2$ pode descrever, por exemplo, a relação entre energia elétrica e gás de cozinha para cocção: o consumidor pode substituir parcialmente um pelo outro (fogão elétrico vs. fogão a gás), mas com dificuldade crescente — refletindo custos de troca de equipamentos e hábitos de consumo enraizados.
:::


::: {.boxmundobox title="Box Mundo 3.2 — Elasticidades de substituição no comércio internacional: as elasticidades de Armington"}

**Contexto:** A função CES apresentada na Seção 3.6.4 não é apenas uma ferramenta teórica para modelar preferências individuais — ela é a base de praticamente todos os modelos de comércio internacional utilizados por organizações como a OMC, o FMI e o Banco Mundial. Em 1969, Paul Armington propôs tratar bens importados de diferentes países como substitutos imperfeitos, modelando as preferências dos compradores (consumidores, firmas ou governos) por bens diferenciados por origem com uma função CES. Nesse enquadramento, a elasticidade de substituição $\sigma$ mede o grau em que compradores estão dispostos a trocar, por exemplo, aço brasileiro por aço chinês em resposta a variações de preços relativos.

**Dados:** A estimação das chamadas "elasticidades de Armington" é uma indústria acadêmica por si só. O trabalho de referência de Broda e Weinstein (2006) estimou elasticidades de substituição para mais de 10.000 categorias de produtos importados pelos Estados Unidos no período 1972–2001 e encontrou uma mediana de $\sigma \approx 3{,}1$, com variação enorme entre setores: commodities homogêneas como petróleo bruto apresentam $\sigma > 20$ (quase substitutos perfeitos entre origens), enquanto bens diferenciados como automóveis e vinhos apresentam $\sigma$ entre 1 e 3 (substituição limitada). O modelo GTAP (*Global Trade Analysis Project*), utilizado pela OMC para avaliar rodadas de negociação, adota elasticidades de Armington calibradas setorialmente: $\sigma = 5{,}2$ para grãos, $\sigma = 2{,}8$ para manufaturas e $\sigma = 1{,}9$ para serviços. Hertel et al. (2007) mostram que os resultados de simulação são altamente sensíveis a esses parâmetros: dobrar a elasticidade de Armington pode triplicar os ganhos estimados de uma liberalização comercial.

**Análise:** A aplicação das elasticidades de Armington ao comércio internacional ilustra três pontos centrais da Seção 3.6. Primeiro, a flexibilidade da função CES: ao variar $\sigma$, o mesmo arcabouço analítico cobre desde bens quase homogêneos ($\sigma \to \infty$, substitutos perfeitos) até bens altamente diferenciados ($\sigma \to 0$, complementos perfeitos). Segundo, a importância empírica do parâmetro $\sigma$: políticas comerciais que parecem benéficas sob elasticidades altas podem ser inócuas ou até prejudiciais sob elasticidades baixas. Terceiro, a conexão entre microeconomia e macroeconomia: preferências CES de consumidores individuais, quando agregadas, determinam fluxos de comércio entre nações e os efeitos de políticas tarifárias sobre o bem-estar global. Para o Brasil, as elasticidades de Armington são particularmente relevantes na avaliação de acordos comerciais como o Mercosul-UE, onde o grau de substituibilidade entre produtos brasileiros e europeus determina os ganhos e perdas setoriais esperados.

**Fonte:** Armington, P. S. (1969). A theory of demand for products distinguished by place of production. *IMF Staff Papers*, 16(1), 159–178. Broda, C.; Weinstein, D. E. (2006). Globalization and the gains from variety. *Quarterly Journal of Economics*, 121(2), 541–585. Hertel, T.; Hummels, D.; Ivanic, M.; Keeney, R. (2007). How confident can we be of CGE-based assessments of free trade agreements? *Economic Modelling*, 24(4), 611–635.
:::


Em resumo: a Cobb-Douglas é a melhor amiga do microeconomista — fácil de usar, gera soluções fechadas, e nunca reclama. A CES é mais versátil mas exige mais trabalho. A Leontief é inflexível — literalmente: só aceita proporções fixas. E a quase-linear é a favorita da análise de bem-estar, porque isola efeito renda em um único bem. Escolher a forma funcional certa para cada problema é metade da arte.

---

### 3.7 Troque o Rótulo, Não o Ranking: Transformações Monotônicas

*And now for something completely different* — ou melhor, *exactly the same thing, but with different numbers*. Aqui vai uma informação libertadora: a função de utilidade que você escolhe *não importa* — desde que preserve o ranking. Se $u$ diz que pizza é melhor que salada, e você aplica logaritmo, $\ln u$ *continua* dizendo que pizza é melhor que salada. Pode elevar ao cubo, multiplicar por mil, somar uma constante — nada muda na economia. É como medir temperatura em Celsius ou Fahrenheit: os números são diferentes, mas a água ferve no mesmo ponto.

Essa liberdade é um presente prático enorme: quando uma Cobb-Douglas $u = x_1^{0{,}3} x_2^{0{,}7}$ está dando dor de cabeça, basta tomar o log e trabalhar com $\ln u = 0{,}3 \ln x_1 + 0{,}7 \ln x_2$ — que é linear e muito mais tratável. As preferências são as mesmas; só a embalagem mudou.


::: {.theorembox title="Proposição 3.3 — Invariância sob transformação monotônica"}
Se $u(\mathbf{x})$ representa $\succsim$ e $f: \mathbb{R} \to \mathbb{R}$ é estritamente crescente, então $\hat{u}(\mathbf{x}) = f(u(\mathbf{x}))$ também representa $\succsim$.
:::


A demonstração é direta e vale a pena percorrer, pois ilustra a simplicidade do argumento ordinal: como $f$ é estritamente crescente, a desigualdade $u(\mathbf{x}) \geq u(\mathbf{y})$ é preservada pela aplicação de $f$, de modo que $f(u(\mathbf{x})) \geq f(u(\mathbf{y}))$. Reciprocamente, se $f(u(\mathbf{x})) \geq f(u(\mathbf{y}))$, a monotonicidade estrita de $f$ garante que $u(\mathbf{x}) \geq u(\mathbf{y})$. Portanto, $\hat{u}$ preserva exatamente o mesmo ordenamento que $u$.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Você pode trocar a "régua" que mede a utilidade sem alterar as preferências — qualquer escala que preserve a ordem serve.

**Pense assim:** É como converter temperatura de Celsius para Fahrenheit: os números mudam, mas a água continua fervendo antes do metal derreter. Da mesma forma, se você aplica logaritmo na utilidade Cobb-Douglas para facilitar as contas, o consumidor continua preferindo as mesmas cestas de antes.

**Por que isso importa:** Isso dá ao economista liberdade para escolher a forma funcional que facilite os cálculos — por exemplo, trabalhar com $\ln u$ em vez de $u$ — sem perder informação econômica.
:::


**Exemplos de transformações monotônicas úteis.** Duas aplicações da invariância ordinal são especialmente frequentes na prática:

- A Cobb-Douglas $u = x_1^a x_2^b$ pode ser transformada em $\hat{u} = a \ln x_1 + b \ln x_2$ via $f(u) = \ln(u)$. O logaritmo transforma o produto em soma, eliminando os expoentes e simplificando consideravelmente as derivadas parciais e a resolução das condições de primeira ordem.
- Qualquer Cobb-Douglas pode ser normalizada de modo que $\hat{u} = \frac{a}{a+b} \ln x_1 + \frac{b}{a+b} \ln x_2$, com coeficientes somando 1. Essa normalização é conveniente porque os coeficientes passam a coincidir com as participações na despesa — tornando a interpretação econômica imediata.

\figurePlaceholder{/micro-book/graficos/cap03/transformacao-monotonica.html}


**Figura 3.7 — Transformação Monotônica e Invariância Ordinal.** Esquerda: curvas de indiferença de $U = x_1 x_2$. Direita: curvas da transformada $\hat{U} = f(U)$. As curvas são **idênticas** — apenas os rótulos numéricos mudam. Escolha entre $\ln$, $\sqrt{}$, $U^2$, $U^3$ e $-1/U$. Mova o ponto de referência para verificar que a TMS é a mesma em ambos os painéis.


::: {.examplebox title="Transformação monotônica em ação: simplificando a CES"}
A função CES $u = (x_1^\rho + x_2^\rho)^{1/\rho}$ envolve uma raiz que complica as derivadas parciais. Aplique a transformação monotônica $f(u) = u^\rho$ (estritamente crescente para $u > 0$ quando $\rho > 0$, e estritamente decrescente — mas aí tomamos $f(u) = -u^\rho$ — para $\rho < 0$). O resultado é:

$$
\hat{u} = x_1^\rho + x_2^\rho
$$

Agora as CPOs ficam muito mais simples:

$$
\frac{\partial \hat{u}}{\partial x_1} = \rho \, x_1^{\rho-1}, \qquad \frac{\partial \hat{u}}{\partial x_2} = \rho \, x_2^{\rho-1}
$$

E a TMS se obtém diretamente: $\text{TMS}_{12} = (x_1/x_2)^{\rho-1}$ — o mesmo resultado da equação (\ref{eq:3.6.12}), mas com cálculo muito mais rápido. Essa é a essência da invariância ordinal: simplificar a álgebra sem alterar a economia.
:::


::: {.warningbox title="Erro Comum"}
**Tratar a utilidade como grandeza cardinal — dizer que "Maria tem utilidade 2 vezes maior que João".**

A função de utilidade ordinal mede apenas *ordem*, não *intensidade*. Se $u(\text{pizza}) = 10$ e $u(\text{salada}) = 5$, isso significa apenas que pizza é preferida a salada — **não** que pizza é "duas vezes melhor". Qualquer transformação monotônica (como $\hat{u} = \ln u$) preserva as preferências mas muda a razão entre os valores numéricos. Comparações interpessoais ("Maria gosta mais de pizza que João") também são impossíveis com utilidade ordinal — um ponto que se torna crucial na economia do bem-estar (Capítulo 17).
:::


::: {.tipbox title="Implicações práticas da ordinalidade"}
A TMS é invariante sob transformações monotônicas. A utilidade marginal, porém, **não é invariante**: ela muda com a transformação. Por isso, a utilidade marginal não tem significado cardinal — apenas a razão entre utilidades marginais (a TMS) possui significado econômico bem definido.
:::


::: {.exresolvidobox title="Exercício Resolvido 3.3"}
**Enunciado:** Mostre que $u(x_1, x_2) = \ln x_1 + 2\ln x_2$ e $v(x_1, x_2) = x_1 \cdot x_2^2$ representam as mesmas preferências, e verifique que ambas produzem a mesma TMS.

**Resolução:**

**Passo 1 — Identificar a transformação monotônica**

Note que $u = \ln x_1 + 2\ln x_2 = \ln(x_1 \cdot x_2^2) = \ln(v)$. Portanto, $u = f(v)$ com $f(v) = \ln(v)$, que é estritamente crescente para $v > 0$. Pela Proposição 3.3, $u$ e $v$ representam as mesmas preferências.

**Passo 2 — TMS pela função $u$**

$$
\text{TMS}_{12}^{(u)} = \frac{\partial u/\partial x_1}{\partial u/\partial x_2} = \frac{1/x_1}{2/x_2} = \frac{x_2}{2x_1}
$$

**Passo 3 — TMS pela função $v$**

$$
\text{TMS}_{12}^{(v)} = \frac{\partial v/\partial x_1}{\partial v/\partial x_2} = \frac{x_2^2}{2x_1 x_2} = \frac{x_2}{2x_1}
$$

**Resultado:** $\text{TMS}_{12}^{(u)} = \text{TMS}_{12}^{(v)} = \dfrac{x_2}{2x_1}$.

**Interpretação econômica:** As utilidades marginais diferem — para $u$, $\text{UMg}_1 = 1/x_1$; para $v$, $\text{UMg}_1 = x_2^2$ — mas a TMS é idêntica. Isso confirma que a TMS é a grandeza economicamente relevante: ela mede a taxa de troca subjetiva do consumidor, independentemente da "escala" escolhida para medir a utilidade. Na prática, o economista pode escolher a representação que facilite os cálculos sem perda de conteúdo econômico.
:::


---

As seções anteriores construíram progressivamente o arcabouço teórico das preferências: partimos de axiomas mínimos de coerência, chegamos à função de utilidade via o Teorema de Debreu, derivamos curvas de indiferença e TMS como ferramentas geométricas e analíticas, exploramos as principais formas funcionais — Cobb-Douglas, substitutos e complementos perfeitos, CES e quase-linear — e, por fim, demonstramos que a invariância ordinal confere liberdade ao analista na escolha da representação. A progressão foi deliberada: cada conceito se construiu sobre os anteriores, formando uma cadeia lógica que vai da abstração dos axiomas à concretude das formas funcionais.

Antes de consolidar esses conceitos no resumo do capítulo, vale observar como esse arcabouço se manifesta — e, por vezes, é posto à prova — em um contexto histórico concreto do Brasil. O Box a seguir mostra que as mudanças nos padrões de consumo após a estabilização monetária de 1994 podem ser interpretadas à luz da teoria das preferências desenvolvida nestas páginas.


::: {.boxbrasilbox title="Box Brasil 3.3 — O Plano Real e a revolução no consumo"}
A hiperinflação brasileira que antecedeu o Plano Real (julho de 1994) distorcia profundamente as preferências reveladas dos consumidores. Com taxas de inflação que chegaram a superar 2.000% ao ano em 1993, o comportamento de compra era dominado pela **antecipação de consumo**: famílias corriam ao supermercado no dia do pagamento para converter salários em bens antes que os preços subissem.

Dados da Pesquisa de Orçamentos Familiares (POF) do IBGE revelam mudanças marcantes nos padrões de consumo ao longo das décadas:

- **Antes da estabilização (POF 1987-88)**: famílias de baixa renda concentravam até 53% dos gastos em alimentação, com forte preferência por produtos estocáveis e não perecíveis — um reflexo racional da tentativa de manter o valor real da renda.
- **Após a estabilização (POF 1995-96 e 2002-03)**: a participação da alimentação caiu para cerca de 33% nas famílias de menor renda, com diversificação para bens duráveis, serviços de lazer e educação.
- **POF 2017-18**: a tendência de diversificação se manteve, com crescimento expressivo dos gastos com comunicação (telefonia móvel) e transporte.

Do ponto de vista da teoria das preferências, a estabilização monetária não apenas alterou a **restrição orçamentária** (via ganho de renda real, sobretudo para os mais pobres), mas também permitiu que as **preferências subjacentes** se manifestassem sem a distorção imposta pelo imposto inflacionário.

O conceito de TMS decrescente ganha concretude nesse contexto: à medida que cestas de alimentação básica se tornaram acessíveis com menor fração da renda, os consumidores puderam mover-se ao longo de suas curvas de indiferença em direção a cestas mais diversificadas.

Vasconcellos e Garcia (2014) contextualizam os ciclos econômicos brasileiros que moldaram essas transformações nas escolhas de consumo.

**Fonte**: IBGE, Pesquisa de Orçamentos Familiares (várias edições); Barros, R. P. de; Foguel, M. N.; Ulyssea, G. (orgs.). *Desigualdade de renda no Brasil: uma análise da queda recente*. Brasília: IPEA, 2007.
:::


::: {.boxmundobox title="Box Mundo 3.3 — Preferência revelada em big data: dados de scanner de supermercados e testes do GARP"}

**Contexto:** A teoria do consumidor desenvolvida neste capítulo repousa sobre axiomas — completude, transitividade, continuidade, monotonicidade — que são hipóteses sobre as preferências dos agentes. Mas como verificar empiricamente se consumidores reais se comportam de acordo com esses axiomas? A resposta clássica vem da teoria da preferência revelada (que será formalizada na Seção 5.9): se observarmos as escolhas de um consumidor em diferentes situações de preço e renda, podemos testar se essas escolhas são compatíveis com a maximização de alguma função de utilidade. O critério operacional é o **Axioma Generalizado da Preferência Revelada** (GARP, *Generalized Axiom of Revealed Preference*), formulado por Varian (1982): se as escolhas observadas satisfazem o GARP, então existe uma função de utilidade que as racionaliza. A revolução dos dados de scanner de supermercados — registros eletrônicos de cada item comprado por cada consumidor — abriu, a partir dos anos 2000, a possibilidade de testar essa hipótese com milhões de observações individuais.

**Dados:** Echenique, Lee e Shum (2011, *American Economic Review*) utilizaram dados de scanner do painel Homescan da Nielsen, que rastreia todas as compras de supermercado de uma amostra representativa de famílias americanas ao longo de vários anos. Com observações de preços e quantidades de centenas de produtos para cada família, os autores testaram o GARP individualmente para mais de 500 famílias. O resultado principal: apenas cerca de 5% das famílias apresentaram violações do GARP, e mesmo essas violações foram de magnitude pequena — medidas pelo índice de Afriat (1967), que quantifica o grau de inconsistência, as violações raramente ultrapassaram 1% do orçamento. Dean e Martin (2016, *American Economic Review*) confirmaram esses resultados usando dados experimentais com escolhas sobre cestas reais de bens, encontrando taxas de violação do GARP inferiores a 10%. Na Europa, Cherchye, De Rock e Vermeulen (2011, *Review of Economics and Statistics*) aplicaram testes de preferência revelada a microdados belgas e holandeses, concluindo que o modelo coletivo de consumo domiciliar (onde marido e mulher têm preferências distintas) racionaliza os dados significativamente melhor do que o modelo unitário — evidência de que a unidade de decisão importa para a validade dos axiomas.

**Análise:** Esses resultados fornecem suporte empírico notável para os axiomas apresentados na Seção 3.1: na grande maioria dos casos, as escolhas de consumo observadas em dados de alta frequência são compatíveis com a existência de uma função de utilidade racional. A taxa de violação de 5% é consistente com a evidência de intransitividade discutida no Box Mundo 3.1 — violações existem, mas são a exceção, não a regra. Do ponto de vista da Seção 3.7 (invariância ordinal), os testes de preferência revelada são particularmente elegantes: eles verificam se existe *alguma* função de utilidade compatível com os dados, sem impor uma forma funcional específica (Cobb-Douglas, CES, etc.) — exatamente porque a utilidade é ordinal e qualquer transformação monotônica preserva o ordenamento. A explosão de dados de scanner e de compras online oferece oportunidades sem precedentes para testar a teoria do consumidor em escala, transformando os axiomas deste capítulo de postulados filosóficos em hipóteses empiricamente verificáveis.

**Fonte:** Varian, H. R. (1982). The nonparametric approach to demand analysis. *Econometrica*, 50(4), 945–973. Echenique, F.; Lee, S.; Shum, M. (2011). The money pump as a measure of revealed preference violations. *American Economic Review*, 101(4), 1645–1651. Cherchye, L.; De Rock, B.; Vermeulen, F. (2011). The revealed preference approach to collective consumption behaviour. *Review of Economics and Statistics*, 93(1), 223–238.
:::


Três convicções para levar deste capítulo:

1. **Os axiomas são modestos — as consequências, não.** Exigir que o consumidor saiba comparar cestas e não se contradiga parece pouco. Mas desse ponto de partida modesto emerge todo o edifício: função de utilidade, curvas de indiferença, TMS, demandas, bem-estar. A desproporção entre premissa e consequência é o que torna a teoria elegante.

2. **A forma funcional importa — e muito.** Cobb-Douglas, CES, Leontief e quase-linear não são caprichos algébricos: cada uma implica um comportamento de demanda, uma elasticidade de substituição e uma resposta à renda *qualitativamente diferente*. Escolher a forma funcional errada é como usar o mapa errado — tecnicamente bonito, mas te leva ao destino errado.

3. **A utilidade é ordinal — e isso é liberdade, não limitação.** A invariância sob transformações monotônicas significa que você pode trocar a "régua" sem perder informação econômica. Logaritmo, raiz, cubo — nada muda na economia. A TMS é a grandeza real; os números da utilidade são mera conveniência.

*Sabemos o que o consumidor quer. No próximo capítulo, descobrimos o que ele pode — e o que ele escolhe.*


## Exercícios e ANPEC


::: {.tipbox title="Dados para exercicios empiricos"}
- **POF/IBGE (cestas de consumo):** [sidra.ibge.gov.br](https://sidra.ibge.gov.br) — Tabelas 7169–7175 (POF 2017-2018). Explore como familias de diferentes faixas de renda alocam gastos entre alimentacao, transporte e lazer — revelando preferencias diferentes.
- **PNAD Continua (consumo e renda):** [ibge.gov.br/pnadc](https://www.ibge.gov.br/estatisticas/sociais/trabalho/9171-pesquisa-nacional-por-amostra-de-domicilios-continua-mensal.html) — Series trimestrais para analisar como a composicao do consumo muda com a renda (curvas de Engel).
- **Notebook:** N1 — Elasticidades de alimentos (POF 2017-2018, metodo de Deaton).
:::


\figurePlaceholder{/micro-book/graficos/cap03/webr-utilidade.html}


**WebR 3.1 — Curvas de indiferença comparadas.** Troque entre Cobb-Douglas, CES, quaselinear e substitutos perfeitos. Altere o parâmetro ρ na CES para ver a transição de substitutos (isoquantas retas) a complementos (formato de L).


\figurePlaceholder{/micro-book/graficos/cap03/webr-tms.html}


**WebR 3.2 — TMS ao longo da curva de indiferença.** Calcule a TMS em vários pontos de uma Cobb-Douglas e veja a tangente mudar. Observe: quanto mais x você tem, menos y está disposto a trocar — convexidade em ação.


\figurePlaceholder{/micro-book/graficos/cap03/webr-preferencias.html}


**WebR 3.3 — Zoológico de preferências.** Quatro famílias em 4 painéis: Cobb-Douglas (suave), substitutos perfeitos (retas), Leontief (L) e quase-linear (paralelas). Cada forma de CI conta uma história diferente sobre como o consumidor troca bens.


\figurePlaceholder{/micro-book/graficos/cap03/webr-transf-monotonica.html}


**WebR 3.4 — Transformação monotônica preserva tudo.** Três funções utilidade (U, ln U, U²) geram a *mesma* curva de indiferença e a *mesma* TMS. A utilidade é ordinal: só o ranking importa, não o número.


---


::: {.classroombox title="Atividade 3.1 — Desenhando suas próprias curvas de indiferença (20 min)"}
**Objetivo:** Descobrir, por introspecção guiada, que preferências pessoais geram curvas de indiferença — e que a TMS varia ao longo delas.

**Material:** Folha quadriculada, caneta colorida.

**Protocolo:**

1. **Setup** (3 min): "Eixo horizontal = horas de Netflix por semana. Eixo vertical = horas de academia por semana. Marque o ponto (10, 2) — sua dotação atual."
2. **Revelação de preferências** (7 min): "Agora responda honestamente: se eu tirasse 2 horas de Netflix, quantas horas a mais de academia você precisaria para ficar *igualmente feliz*?" Marque o novo ponto. Repita para tirar mais 2 horas. E mais 2. Conecte os pontos — isso é sua curva de indiferença.
3. **Comparação em duplas** (4 min): Duplas comparam curvas. Pergunte: "As curvas são iguais? Deveriam ser?" → Não! Preferências são subjetivas. "Qual é a TMS de cada um no ponto (10, 2)?"
4. **Debrief** (6 min):
    - "A curva ficou convexa (curvada para a origem)? Por quê?" → TMS decrescente: quando você já tem pouca Netflix, cada hora a menos dói mais.
    - "Alguém desenhou uma reta?" → Substitutos perfeitos. "Alguém fez um L?" → Complementos perfeitos.
    - "Se eu multiplicar todos os números de utilidade por 2, a curva muda?" → Não. Transformação monotônica (Seção 3.7).
    - Conecte: o exercício que vocês fizeram é exatamente como Edgeworth imaginou as curvas em 1881 — só que ele não tinha Netflix.

**Conexão com o conteúdo:** Seções 3.3 (curvas de indiferença), 3.4 (TMS), 3.6 (formas funcionais), 3.7 (transformações monotônicas).
:::


::: {.classroombox title="Atividade 3.2 — O teste da transitividade: flagrando incoerência (10 min)"}
**Objetivo:** Testar se as preferências declaradas dos alunos satisfazem os axiomas — e mostrar que violações existem (e importam).

**Material:** 3 cartões por aluno com opções escritas (ou projeção no slide).

**Protocolo:**

1. **As opções** (2 min): Apresente três "cestas" de lazer para o fim de semana: (A) Cinema + pizza, (B) Futebol + churrasco, (C) Praia + açaí. Cada aluno vota nas comparações dois a dois: A vs. B, B vs. C, A vs. C (levantar a mão ou usar Mentimeter).
2. **Contagem** (3 min): O professor registra as proporções. Tipicamente, com preferências heterogêneas na turma, o resultado *agregado* pode violar transitividade: A > B, B > C, mas C > A (Paradoxo de Condorcet!).
3. **Debrief** (5 min):
    - "Se a *turma* fosse uma pessoa, ela seria irracional — prefere A a B, B a C, e C a A. Isso é possível para um indivíduo?" → Não, se satisfaz o axioma de transitividade.
    - "Mas o *grupo* violou. O que isso significa?" → Agregação de preferências individuais racionais pode gerar intransitividade coletiva — antecipe o Teorema de Arrow (Capítulo 14, Seção 14.12).
    - Feche: "Os axiomas do Capítulo 3 são sobre *indivíduos*. Para *sociedades*, a coisa complica — e Arrow ganhou o Nobel por explicar por quê."

**Conexão com o conteúdo:** Seções 3.1 (axiomas de completude e transitividade), antecipação do Capítulo 14, Seção 14.12 (Escolha Social e Teorema de Arrow).
:::


---


### Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.


::: {.infobox title="1. O axioma de transitividade das preferências implica que:"}
- (a) O consumidor sempre prefere mais a menos
- (b) Se $A \succsim B$ e $B \succsim C$, então $A \succsim C$
- (c) O consumidor consegue comparar quaisquer duas cestas
- (d) A utilidade marginal é sempre decrescente

??? success "Resposta"
    **(b)** Transitividade exige consistência nas ordenações: se A é pelo menos tão bom quanto B, e B pelo menos tão bom quanto C, então A deve ser pelo menos tão bom quanto C. A alternativa (a) descreve monotonicidade; (c) descreve completude; (d) é uma propriedade da função de utilidade, não um axioma sobre preferências.
:::


::: {.infobox title="2. Se $u(x_1, x_2) = x_1^{0{,}5} x_2^{0{,}5}$ e $v = 2u + 10$, é correto afirmar que:"}
- (a) $v$ representa preferências diferentes de $u$, pois os valores numéricos mudam
- (b) $v$ representa as mesmas preferências, pois é uma transformação monotônica crescente de $u$
- (c) $v$ só representa as mesmas preferências se a renda do consumidor não mudar
- (d) $v$ inverte a ordenação das cestas em relação a $u$

??? success "Resposta"
    **(b)** A função de utilidade é ordinal: qualquer transformação monotônica crescente $v = g(u)$ com $g' > 0$ preserva a ordenação das cestas e, portanto, representa as mesmas preferências. A alternativa (a) confunde valores cardinais com ordinais; (c) adiciona condição inexistente; (d) seria verdade apenas para transformações decrescentes.
:::


::: {.infobox title="3. A Taxa Marginal de Substituição (TMS) entre dois bens mede:"}
- (a) A razão entre os preços dos dois bens no mercado
- (b) A quantidade de um bem que o consumidor está disposto a abrir mão para obter uma unidade adicional do outro, mantendo a utilidade constante
- (c) A variação percentual na demanda de um bem quando o preço do outro varia
- (d) O custo de oportunidade de produzir um bem em vez do outro

??? success "Resposta"
    **(b)** A TMS é a inclinação da curva de indiferença e mede a taxa subjetiva de troca entre bens que mantém o consumidor indiferente. Matematicamente, $\text{TMS}_{12} = -dx_2/dx_1|_{u=\bar{u}} = \text{UMg}_1/\text{UMg}_2$. A alternativa (a) descreve a inclinação da restrição orçamentária; (c) descreve elasticidade cruzada; (d) refere-se à produção.
:::


::: {.infobox title="4. As curvas de indiferença de preferências estritamente convexas são:"}
- (a) Retas com inclinação constante
- (b) Convexas em relação à origem (curvadas para fora)
- (c) Côncavas em relação à origem (curvadas para dentro, 'arqueadas')
- (d) Círculos concêntricos

??? success "Resposta"
    **(c)** Preferências convexas implicam que médias são preferidas a extremos, gerando curvas de indiferença côncavas em relação à origem (convexas do ponto de vista do conjunto preferido). A TMS é decrescente em valor absoluto. A alternativa (a) descreve substitutos perfeitos; (b) descreve preferências côncavas (não convexas); (d) não é uma forma padrão.
:::


::: {.infobox title="5. Qual das seguintes funções de utilidade representa preferências por complementos perfeitos?"}
- (a) $u(x_1, x_2) = x_1 + x_2$
- (b) $u(x_1, x_2) = \min(x_1, x_2)$
- (c) $u(x_1, x_2) = x_1 \cdot x_2$
- (d) $u(x_1, x_2) = x_1^2 + x_2^2$

??? success "Resposta"
    **(b)** Complementos perfeitos são consumidos em proporções fixas; a utilidade é determinada pelo bem em menor quantidade relativa, representada pela função $\min$. As curvas de indiferença são em L. A alternativa (a) representa substitutos perfeitos; (c) representa preferências Cobb-Douglas; (d) representa preferências côncavas (não convexas), onde o consumidor prefere extremos a médias.
:::


::: {.infobox title="6. Preferências homotéticas implicam que:"}
- (a) A demanda pelo bem 1 é independente da renda
- (b) A participação de cada bem na despesa total é constante quando a renda varia
- (c) A TMS depende apenas da quantidade absoluta de $x_1$
- (d) As curvas de indiferença são translações verticais

??? success "Resposta"
    **(b)** Preferências homotéticas geram curvas de Engel lineares e elasticidade-renda unitária para todos os bens, o que implica participação constante na despesa (Proposição §3.6.6). A alternativa (a) descreve preferências quase-lineares, não homotéticas; (c) também é propriedade da quase-linear (TMS depende só de $x_1$); (d) descreve curvas de indiferença quase-lineares. A assinatura das homotéticas é que a TMS depende da *razão* $x_1/x_2$, gerando expansão radial — não vertical — das curvas.
:::


---

### Resumo do Capítulo

- A teoria do consumidor parte de **axiomas sobre preferências** — completude, transitividade, continuidade e monotonicidade — que estabelecem regras mínimas de coerência para ordenar cestas de consumo. Esses axiomas são o alicerce sobre o qual todo o resto se constrói: sem eles, não há função de utilidade, não há curvas de indiferença e não há otimização.
- Sob esses axiomas, o **Teorema de Debreu** (1954) garante a existência de uma **função de utilidade** contínua que representa as preferências. Essa função é **ordinal**: apenas o ordenamento das cestas importa, não os valores numéricos em si. A ordinalidade implica que qualquer transformação monotônica crescente da função de utilidade representa as mesmas preferências (Seção 3.7).
- As **curvas de indiferença** são curvas de nível da função de utilidade: cobrem todo o espaço de consumo, não se cruzam (pela transitividade), têm inclinação negativa (pela monotonicidade) e, sob convexidade estrita, são abauladas em direção à origem — refletindo a ideia de que o consumidor valoriza a diversidade na composição de sua cesta.
- A **taxa marginal de substituição (TMS)** mede a taxa de troca subjetiva entre bens ao longo da curva de indiferença e equivale à razão das utilidades marginais: $\text{TMS}_{12} = \text{UMg}_1 / \text{UMg}_2$. A TMS decrescente — que reflete a disposição cada vez menor do consumidor a abrir mão de um bem à medida que ele se torna mais escasso na cesta — é matematicamente equivalente à convexidade estrita das preferências.
- O capítulo apresenta as principais famílias de funções de utilidade — **Cobb-Douglas**, **substitutos perfeitos**, **complementos perfeitos**, **CES** e **quase-linear** — cada uma com formato de curvas de indiferença e elasticidade de substituição distintos. A função CES unifica as três primeiras como casos especiais de um único parâmetro $\rho$, enquanto a quase-linear se distingue por eliminar o efeito renda sobre um dos bens.
- **Preferências homotéticas** (TMS depende apenas da razão $x_1/x_2$) geram curvas de Engel lineares, elasticidade-renda unitária e participação constante na despesa — propriedades que permitem a agregação em um consumidor representativo. Preferências **quase-lineares**, por contraste, concentram todo o efeito renda em um único bem e garantem que as medidas de bem-estar (VC, VE, $\Delta$EC) coincidam.

### Conceitos-Chave


| Conceito | Definição |
|----------|-----------|
| Relação de preferência ($\succsim$) | Ordenamento sobre cestas de consumo indicando que uma cesta é "pelo menos tão boa quanto" outra. |
| Completude | Axioma que exige que o consumidor consiga comparar quaisquer duas cestas. |
| Transitividade | Axioma de consistência: se $\mathbf{x} \succsim \mathbf{y}$ e $\mathbf{y} \succsim \mathbf{z}$, então $\mathbf{x} \succsim \mathbf{z}$. |
| Monotonicidade | "Mais é melhor": cestas com mais de pelo menos um bem são estritamente preferidas. |
| Função de utilidade | Função $u: X \to \mathbb{R}$ que representa preferências: $\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y})$. É ordinal. |
| Curva de indiferença | Conjunto de cestas que proporcionam o mesmo nível de utilidade; curva de nível de $u$. |
| Taxa marginal de substituição (TMS) | Quantidade do bem 2 que o consumidor abre mão por uma unidade adicional do bem 1, mantendo a utilidade constante; igual a $\text{UMg}_1/\text{UMg}_2$. |
| Elasticidade de substituição ($\sigma$) | Mede a facilidade com que o consumidor substitui entre bens; varia de 0 (complementos perfeitos) a $\infty$ (substitutos perfeitos). |
| Preferências homotéticas | Preferências cuja TMS depende apenas da razão $x_1/x_2$; geram elasticidade-renda unitária e participação constante na despesa. |
| Utilidade quase-linear | Função $u = v(x_1) + x_2$ em que todo aumento de renda vai para $x_2$; elimina o efeito renda sobre $x_1$ e iguala as medidas de bem-estar (VC = VE = $\Delta$EC). |


**Tabela 3.2 — Conceitos-chave.**


---

### Exercícios

Os exercícios a seguir cobrem os principais tópicos do capítulo — axiomas, funções de utilidade, TMS, formas funcionais e transformações monotônicas. Eles progridem em dificuldade: os primeiros requerem cálculos diretos de TMS para funções específicas, enquanto os últimos exigem demonstrações e raciocínio mais abstrato sobre propriedades das preferências. As soluções detalhadas estão disponíveis na seção de soluções.

**Exercício 3.1.** Considere um consumidor com preferências sobre dois bens ($x_1, x_2$) representadas pela função de utilidade $u(x_1, x_2) = x_1^{1/3} x_2^{2/3}$.

(a) Calcule a TMS$_{12}$.

(b) Qual o valor da TMS no ponto $(x_1, x_2) = (4, 8)$? Interprete economicamente.

(c) Mostre que a TMS é decrescente ao longo de uma curva de indiferença (ou seja, $\partial \text{TMS}_{12} / \partial x_1 < 0$ ao longo de $u = \bar{u}$).

→ Ver solução (Cap. 3)

---

**Exercício 3.2.** Mostre que a função de utilidade $u(x_1, x_2) = \ln x_1 + 2 \ln x_2$ representa as mesmas preferências que $v(x_1, x_2) = x_1 \cdot x_2^2$. Verifique que ambas produzem a mesma TMS.

→ Ver solução (Cap. 3)

---

**Exercício 3.3.** Um consumidor tem preferências do tipo CES com $\rho = -1$:

$$
u(x_1, x_2) = \left(x_1^{-1} + x_2^{-1}\right)^{-1}.
$$

(a) Calcule a elasticidade de substituição.

(b) Derive a TMS$_{12}$.

(c) Esboce as curvas de indiferença. Elas estão mais próximas do caso Cobb-Douglas ou do caso de complementos perfeitos? Justifique.

→ Ver solução (Cap. 3)

---

**Exercício 3.4.** Considere preferências quase-lineares $u(x_1, x_2) = \sqrt{x_1} + x_2$.

(a) Calcule a TMS$_{12}$ e mostre que ela depende apenas de $x_1$.

(b) Desenhe duas curvas de indiferença e mostre que elas são translações verticais uma da outra.

(c) Explique por que, nesse caso, a demanda pelo bem 1 é independente da renda (para soluções interiores).

→ Ver solução (Cap. 3)

---

**Exercício 3.5.** Um economista propõe representar as preferências de um consumidor pela função $u(x_1, x_2) = x_1^2 + x_2^2$.

(a) As curvas de indiferença dessa função são convexas em relação à origem? Justifique.

(b) A TMS é decrescente ao longo de uma curva de indiferença?

(c) Essa função satisfaz o axioma de preferências estritamente convexas? Que problema isso gera para a existência de soluções interiores no problema de otimização do consumidor?

→ Ver solução (Cap. 3)

---

**Exercício 3.6.** Considere a função de utilidade CES generalizada com pesos:

$$
u(x_1, x_2) = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho}, \quad 0 < \alpha < 1, \; \rho < 1, \; \rho \neq 0.
$$

(a) Derive a TMS$_{12}$ e mostre que ela depende de $\alpha$, $\rho$ e da razão $x_1/x_2$.

(b) Mostre que, no caso $\alpha = 1/2$, a TMS no ponto $x_1 = x_2$ é igual a 1, independentemente de $\rho$.

(c) Interprete economicamente o papel do parâmetro $\alpha$: o que acontece com as curvas de indiferença quando $\alpha$ aumenta?

→ Ver solução (Cap. 3)

---

**Exercício 3.7.** Sejam duas funções de utilidade:

$$
u(x_1, x_2) = x_1^{1/2} \, x_2^{1/2}, \qquad v(x_1, x_2) = -\frac{1}{x_1 \, x_2}.
$$

(a) Mostre que $v$ é uma transformação monotônica de $u$ e identifique a função $f$ tal que $v = f(u)$.

(b) Calcule a TMS$_{12}$ usando $u$ e usando $v$. Verifique que ambas coincidem.

(c) Compare as utilidades marginais de $u$ e de $v$. Embora ambas representem as mesmas preferências, os valores das utilidades marginais coincidem? Explique por que a utilidade marginal não possui significado econômico isolado.

→ Ver solução (Cap. 3)

---

**Exercício 3.8.** Um consumidor tem preferências representadas por $u(x_1, x_2) = \min\{2x_1, x_2\}$.

(a) Em que proporção o consumidor deseja consumir os dois bens? Justifique a partir da função de utilidade.

(b) Suponha que o consumidor possui renda $m = 120$ e enfrenta preços $p_1 = 10$ e $p_2 = 5$. Encontre a cesta ótima.

(c) Se o preço do bem 1 dobrar para $p_1 = 20$, qual será a nova cesta ótima? Calcule a variação percentual no consumo de cada bem e interprete.

→ Ver solução (Cap. 3)

---

**Exercício 3.9.** Demonstre que, para preferências homotéticas, a TMS depende apenas da razão $x_1/x_2$.

*Dica:* Seja $u(x_1, x_2) = g(h(x_1, x_2))$, onde $g' > 0$ e $h$ é homogênea de grau 1. Use o Teorema de Euler para mostrar que $\text{TMS}_{12} = h_1/h_2$, e depois explore a homogeneidade de grau zero das derivadas de uma função homogênea de grau 1.

→ Ver solução (Cap. 3)

---

**Exercício 3.10.** A Pesquisa de Orçamentos Familiares (POF 2017-2018) mostra que famílias com renda mensal de R\$ 1.908 gastam 22% da renda em alimentação, enquanto famílias com renda de R\$ 23.850 gastam 7,6%.

(a) Calcule a elasticidade-renda aproximada da alimentação entre essas duas faixas de renda, usando a fórmula de arco-elasticidade:

$$
\varepsilon \approx \frac{\Delta Q / \bar{Q}}{\Delta I / \bar{I}}
$$

onde $Q = s \cdot I$ é o gasto com alimentação ($s$ = participação), e $\bar{Q}$ e $\bar{I}$ são as médias dos dois pontos.

(b) A alimentação é um bem normal ou inferior? É um bem de luxo ou de necessidade? Justifique com base na elasticidade calculada.

(c) Esse padrão é compatível com preferências homotéticas? E com preferências Cobb-Douglas? Explique, relacionando com as propriedades da Seção 3.6.6.

→ Ver solução (Cap. 3)

---

### Vem, ANPEC!


::: {.infobox title="ANPEC 2019 — Questão 01"}
Com relação às preferências do consumidor, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

| Item | Afirmação |
|------|-----------|
| 0 | Sendo $U(x, y)$ a função de utilidade em dois bens $x$ e $y$, $U(x, y) = \ln x \cdot \ln y$ representa uma função de utilidade quase-linear. |
| 1 | Podemos sempre extrair a transformação monotônica da função de utilidade do tipo Cobb-Douglas. |
| 2 | Uma função de utilidade do tipo $U(x, y) = (x + y)^{0,5}$ implica que $x$ e $y$ são bens substitutos perfeitos. |
| 3 | Uma função de utilidade do tipo $U(x, y) = x + y$ implica que $x$ e $y$ são bens complementares perfeitos. |
| 4 | $f(U) = U^2$ é uma transformação monotônica apenas para $U$ positivo. |

??? success "Gabarito"
    **Respostas: F V V F V**

    **Justificativa por item:**

    - **Item 0 — F:** A função $U(x,y) = \ln x \cdot \ln y$ não é quase-linear. Uma função quase-linear tem a forma $v(x_1) + x_2$, isto é, é linear em um dos bens e não linear no outro. O produto de logaritmos não se enquadra nessa estrutura.
    - **Item 1 — V:** Da Cobb-Douglas $u = x^a y^b$, podemos aplicar a transformação monotônica $f(u) = \ln(u)$, obtendo $\hat{u} = a\ln x + b\ln y$. Como $f$ é estritamente crescente para $u > 0$ (e a Cobb-Douglas é positiva no interior do consumo), a transformação é sempre válida.
    - **Item 2 — V:** A função $U(x,y) = (x+y)^{0,5}$ é uma transformação monotônica de $V(x,y) = x + y$, via $f(V) = V^{0,5}$, que é estritamente crescente para $V > 0$. Como $V = x + y$ representa substitutos perfeitos (TMS constante igual a 1), $U$ também representa substitutos perfeitos (Proposição 3.3).
    - **Item 3 — F:** A função $U(x,y) = x + y$ é a representação clássica de substitutos perfeitos, com curvas de indiferença retas e TMS constante igual a 1. Complementares perfeitos seriam representados por $\min\{x, y\}$.
    - **Item 4 — V:** A função $f(U) = U^2$ tem derivada $f'(U) = 2U$. Para $U > 0$, $f'(U) > 0$ e a transformação é estritamente crescente (monotônica). Para $U < 0$, $f'(U) < 0$ e a função é decrescente, invertendo o ordenamento — logo, não é uma transformação monotônica nesse domínio.
:::


::: {.infobox title="ANPEC 2021 — Questão 01"}
Seja um consumidor com função de utilidade dada por $U = X^2 + Y^2$, em que $X$ é a quantidade consumida de entradas de cinema e $Y$ é a quantidade consumida de pizzas. Com relação a este consumidor, verifique quais das seguintes afirmações são verdadeiras e quais são falsas:

| Item | Afirmação |
|------|-----------|
| 0 | A taxa marginal de substituição deste consumidor é $X/Y$. |
| 1 | A cesta $(X = 2, Y = 1)$ e a cesta $(X = 1, Y = 2)$ se encontram sobre a mesma curva de indiferença. |
| 2 | As curvas de indiferença do consumidor são estritamente convexas entre as cestas $(X = 2, Y = 1)$ e $(X = 1, Y = 2)$. |
| 3 | $X$ e $Y$ são substitutos perfeitos. |
| 4 | O bem $Y$ é um mal. |

??? success "Gabarito"
    **Respostas: V V F F F**

    **Justificativa por item:**

    - **Item 0 — V:** $\text{TMS} = \frac{\text{UMg}_X}{\text{UMg}_Y} = \frac{2X}{2Y} = \frac{X}{Y}$. Correto.
    - **Item 1 — V:** $U(2,1) = 4 + 1 = 5$ e $U(1,2) = 1 + 4 = 5$. Ambas geram o mesmo nível de utilidade, logo pertencem à mesma curva de indiferença.
    - **Item 2 — F:** As curvas de indiferença de $U = X^2 + Y^2 = c$ são arcos de circunferência — côncavas em relação à origem, não convexas. O conjunto superior $\{(X,Y): X^2+Y^2 \geq c\}$ não é convexo. Este é exatamente o caso discutido no Exercício 3.5 do capítulo.
    - **Item 3 — F:** Substitutos perfeitos têm curvas de indiferença retas (TMS constante). Aqui, a TMS $= X/Y$ varia com a composição da cesta e as curvas são circulares, não retas.
    - **Item 4 — F:** $\text{UMg}_Y = 2Y > 0$ para $Y > 0$, logo mais pizza aumenta a utilidade. O bem $Y$ não é um mal.
:::


::: {.infobox title="ANPEC 2021 — Questão 02"}
Considere a Teoria da Utilidade para responder quais das afirmações a seguir são verdadeiras e quais são falsas:

| Item | Afirmação |
|------|-----------|
| 0 | Todos os tipos de preferências podem ser representados pela função de utilidade. |
| 1 | Sejam dois bens, $X$ e $Y$. A uma função de utilidade dada por $U(X, Y) = XY$ corresponde uma curva de indiferença típica dada por $Y = cX$, em que $c$ é uma constante. |
| 2 | Se dois bens ($A$ e $B$) forem substitutos perfeitos, pode-se, em geral, representar sua função de utilidade na forma $U(A, B) = c_1 A + c_2 B$, em que $c_1$ e $c_2$ são constantes positivas. |
| 3 | A inclinação de uma curva de indiferença típica da função de utilidade $U(A, B) = c_1 A + c_2 B$, em que $c_1$ e $c_2$ são constantes positivas, é $-c_1/c_2$. |
| 4 | A transformação monotônica de uma função de utilidade não altera a taxa marginal de substituição (TMS), porque a TMS é medida ao longo de uma curva de indiferença, e a utilidade permanece constante ao longo da curva de indiferença. |

??? success "Gabarito"
    **Respostas: F F V V V**

    **Justificativa por item:**

    - **Item 0 — F:** Nem todos os tipos de preferências admitem representação por função de utilidade. As preferências lexicográficas, por exemplo, são completas e transitivas mas violam o axioma de continuidade — e, conforme discutido na Seção 3.1, sem continuidade não se garante a existência de uma função de utilidade contínua (Teorema 3.1).
    - **Item 1 — F:** Para $U(X,Y) = XY$, as curvas de indiferença são $XY = k$, ou seja, $Y = k/X$ — hipérboles retangulares, não retas pela origem. A equação $Y = cX$ descreveria retas, o que é incorreto.
    - **Item 2 — V:** A função $U(A,B) = c_1 A + c_2 B$, com $c_1, c_2 > 0$, gera curvas de indiferença retas com TMS constante $= c_1/c_2$, que é a definição de substitutos perfeitos.
    - **Item 3 — V:** A inclinação da curva de indiferença é $dB/dA|_{U=\bar{u}} = -c_1/c_2$. Correto, conforme a Seção 3.6.2.
    - **Item 4 — V:** Uma transformação monotônica $\hat{u} = f(u)$ preserva as curvas de indiferença (mesmos conjuntos de nível, apenas com rótulos diferentes). Como a TMS depende apenas da inclinação da curva de indiferença, ela é invariante (Proposição 3.3 e Seção 3.7).
:::


::: {.infobox title="ANPEC 2023 — Questão 03"}
Com relação à Teoria do Consumidor, julgue as afirmações abaixo:

| Item | Afirmação |
|------|-----------|
| 0 | Se $U(X, Y) = \sqrt{X} + \sqrt{Y}$, então a elasticidade de substituição é igual a 2. |
| 1 | Se $U(X, Y)$ é uma função de utilidade diferenciável homogênea de grau $k$, com $U(X, Y) \neq 0$, e se $\eta_X(X, Y)$ e $\eta_Y(X, Y)$ denotam a elasticidade de $U$ relativamente a $X$ e $Y$, respectivamente, então $\eta_X(X, Y) + \eta_Y(X, Y) = k$. |
| 2 | Considere o conjunto $X = \bigcup_{n=1}^{\infty}\{1 - 1/n\}$ e defina $\succsim$ sobre $X$ por: $x \succsim y$ se, e somente se, $\lvert x - 1/2 \rvert \geq \lvert y - 1/2 \rvert$. Então $\succsim$ é contínua. |
| 3 | Considere o conjunto $X = [0,2] \times [0,2]$ e defina $\succsim$ sobre $X$ por: $(x,y) \succsim (z,w)$ se, e somente se, $\lVert (x,y) - (1,1) \rVert \geq \lVert (z,w) - (1,1) \rVert$. Então $(0,0)$ é um elemento maximal. |
| 4 | A ordem lexicográfica é contínua. |

??? success "Gabarito"
    **Respostas: V V F V F**

    **Justificativa por item:**

    - **Item 0 — V:** A função $U = X^{1/2} + Y^{1/2}$ é uma CES com $\rho = 1/2$. A elasticidade de substituição é $\sigma = \frac{1}{1-\rho} = \frac{1}{1-1/2} = 2$. Correto — ver Seção 3.6.4.
    - **Item 1 — V:** Pelo teorema de Euler para funções homogêneas de grau $k$: $X \frac{\partial U}{\partial X} + Y \frac{\partial U}{\partial Y} = kU$. Dividindo ambos os lados por $U \neq 0$: $\eta_X + \eta_Y = k$, onde $\eta_i = \frac{x_i}{U}\frac{\partial U}{\partial x_i}$ é a elasticidade de $U$ em relação ao bem $i$.
    - **Item 2 — F:** A relação $\succsim$ definida pela distância a $1/2$ não satisfaz a propriedade de continuidade nesse conjunto. O conjunto $X = \{0, 1/2, 2/3, 3/4, \ldots\}$ acumula em $1 \notin X$, e a "utilidade" $|x - 1/2|$ converge para $1/2$ ao longo da sequência $x_n = 1 - 1/n$ sem nunca atingir esse supremo em $X$, o que compromete o fechamento dos conjuntos de contorno superiores quando se considera a topologia induzida pela reta real.
    - **Item 3 — V:** A relação ordena cestas pela distância à cesta $(1,1)$: quanto **maior** a distância, melhor. A cesta $(0,0)$ tem distância $\lVert(0,0)-(1,1)\rVert = \sqrt{2}$, que é a distância máxima possível em $[0,2] \times [0,2]$ a partir de $(1,1)$ (empatando com $(2,2)$, $(0,2)$ e $(2,0)$). Logo, $(0,0)$ é maximal.
    - **Item 4 — F:** A ordem lexicográfica não é contínua — este é o exemplo clássico discutido na Seção 3.1. Os conjuntos de contorno superior não são fechados, o que impede a representação por função de utilidade contínua (Teorema 3.1).
:::



## Pesquisa em Ação


::: {.pesquisabox title="Falk, A.; Becker, A.; Dohmen, T.; Enke, B.; Huffman, D.; Sunde, U. (2018). [Global Evidence on Economic Preferences](https://doi.org/10.1093/qje/qjy013). *Quarterly Journal of Economics*, 133(4), 1645–1692."}
**Pergunta central:** Os axiomas de preferência apresentados na Seção 3.1 são abstrações teóricas — mas como as preferências reais dos indivíduos variam entre países e dentro de cada sociedade? Existem padrões sistemáticos que conectem preferências a características demográficas, culturais e econômicas? Este artigo é o maior esforço empírico já realizado para responder a essas perguntas.

**Método:** Falk e coautores construíram o *Global Preference Survey* (GPS), um instrumento de pesquisa experimentalmente validado, aplicado a amostras representativas de 80.000 pessoas em 76 países — incluindo o Brasil. O GPS mede seis dimensões de preferências: paciência (preferência temporal), disposição a assumir riscos, reciprocidade positiva e negativa, altruísmo e confiança. A validação experimental foi realizada comparando as respostas da pesquisa com escolhas em experimentos com incentivos monetários reais.

**Resultado principal:** Há substancial heterogeneidade de preferências entre países, mas a variação *dentro* de cada país é ainda maior. Globalmente, preferências variam sistematicamente com idade, gênero e habilidade cognitiva — porém essas relações são parcialmente específicas de cada país. O Brasil apresenta níveis intermediários de paciência e disposição ao risco na comparação internacional, com heterogeneidade interna significativa — consistente com a elevada desigualdade socioeconômica do país.

**Por que isso importa:** O estudo demonstra que as preferências — fundamento de toda a teoria do consumidor — não são uniformes nem entre nem dentro de países. Diferenças de preferência ajudam a explicar variações em poupança, investimento em educação e comportamento de consumo, complementando os modelos baseados apenas em diferenças de renda e preços.

**Relevância para o capítulo:** O artigo conecta diretamente os axiomas da Seção 3.1 com evidências empíricas: se as preferências variam sistematicamente entre indivíduos, as funções de utilidade que as representam também diferem — o que justifica a diversidade de formas funcionais apresentadas na Seção 3.6. Além disso, a heterogeneidade de preferências dentro do Brasil reforça a importância de modelos que permitam diferenças individuais, como a análise por faixa de renda da POF discutida no Box Brasil sobre Cobb-Douglas.
:::


::: {.pesquisabox title="Choi, S.; Kariv, S.; Müller, W.; Silverman, D. (2014). [Who Is (More) Rational?](https://doi.org/10.1257/aer.104.6.1518) *American Economic Review*, 104(6), 1518–1550."}
**Pergunta central:** Os axiomas de preferência — especialmente a transitividade e a completude — são *de fato* satisfeitos pelas escolhas dos consumidores reais? E se houver variação na "racionalidade" das decisões, ela está correlacionada com resultados econômicos importantes, como a acumulação de riqueza?

**Método:** Choi e coautores conduziram um experimento em larga escala com uma amostra representativa da população holandesa (painel CentERpanel). Cada participante tomou 25 decisões de alocação entre dois bens sob restrições orçamentárias variadas. Os autores testaram se as escolhas observadas satisfazem o GARP (*Generalized Axiom of Revealed Preference*) — a condição necessária e suficiente para que os dados sejam consistentes com a maximização de alguma função de utilidade bem comportada (Teorema 3.1).

**Resultado principal:** A consistência com GARP varia substancialmente entre indivíduos: enquanto muitos participantes fazem escolhas quase perfeitamente racionais, outros violam sistematicamente os axiomas. Crucialmente, a consistência com a maximização de utilidade está fortemente correlacionada com a riqueza: um aumento de um desvio-padrão na consistência está associado a 15-19% a mais de riqueza acumulada. Essa associação é robusta mesmo controlando para renda, educação e outras variáveis.

**Por que isso importa:** O resultado sugere que a capacidade de tomar decisões consistentes com uma função de utilidade — ou seja, de satisfazer os axiomas da Seção 3.1 na prática — não é apenas uma abstração teórica, mas uma habilidade com consequências econômicas reais e mensuráveis.

**Relevância para o capítulo:** Este artigo testa empiricamente os fundamentos do Capítulo 3. O GARP é a tradução operacional dos axiomas de completude e transitividade para dados de consumo observados. Os resultados mostram que, embora a maioria dos consumidores se comporte de forma aproximadamente consistente com os axiomas, há variação significativa — o que justifica tanto o uso do arcabouço axiomático como ponto de partida quanto a atenção a seus limites, discutidos na observação sobre preferências lexicográficas (Seção 3.1).
:::


::: {.pesquisabox title="Atkin, D. (2013). [Trade, Tastes, and Nutrition in India](https://doi.org/10.1257/aer.103.5.1629). *American Economic Review*, 103(5), 1629–1663."}
**Pergunta central:** As preferências dos consumidores — que a Seção 3.1 trata como dadas e estáveis — podem ser moldadas por forças econômicas como a abertura comercial? E, se as preferências mudam, quais são as consequências para o bem-estar, especialmente em dimensões como a nutrição?

**Método:** Atkin explora a liberalização comercial na Índia a partir de 1991 para investigar como a queda nos preços relativos de certos alimentos afetou não apenas as quantidades consumidas, mas os *hábitos alimentares* de longo prazo. Utilizando dados de consumo domiciliar de mais de 500.000 observações ao longo de duas décadas, o autor estima um modelo estrutural de demanda que permite distinguir entre movimentos *ao longo* de curvas de indiferença (substituição padrão) e *deslocamentos* das próprias curvas (mudança de preferências — formação de hábitos).

**Resultado principal:** A abertura comercial reduziu os preços de calorias, mas parte dos ganhos calóricos potenciais foi dissipada por mudanças nos gostos: consumidores expostos a preços mais baixos de certos alimentos desenvolveram preferências por esses alimentos que persistiram mesmo após os preços retornarem. O efeito-hábito reduziu em até 10% os ganhos nutricionais da liberalização, especialmente entre os mais pobres.

**Relevância para o capítulo:** O artigo questiona a hipótese de preferências estáveis que sustenta o arcabouço axiomático da Seção 3.1. Se as preferências são endógenas aos preços (via formação de hábitos), a função de utilidade $u(\mathbf{x})$ não é fixa — ela se desloca com o histórico de consumo. Isso tem implicações diretas para a interpretação das curvas de indiferença e da TMS: a "taxa de troca subjetiva" de hoje pode diferir da de amanhã, não por mudança de preços, mas por mudança nos próprios gostos. O resultado é especialmente relevante para países em desenvolvimento como o Brasil, onde mudanças estruturais rápidas (como o Plano Real, discutido no Box Brasil §3.7) alteram simultaneamente preços e hábitos.
:::


::: {.pesquisabox title="Aguiar, M.; Bils, M. (2015). [Has Consumption Inequality Mirrored Income Inequality?](https://doi.org/10.1257/aer.20120599) *American Economic Review*, 105(9), 2725–2756."}
**Pergunta central:** A desigualdade de consumo acompanhou o aumento da desigualdade de renda nos Estados Unidos nas últimas décadas? Se as preferências são homotéticas (Seção 3.6.6), a resposta deveria ser sim — mas os dados contam uma história mais complexa.

**Método:** Aguiar e Bils utilizam dados da *Consumer Expenditure Survey* (CEX) e da *Nielsen Homescan* para construir medidas de desigualdade de consumo que corrigem problemas de mensuração nos dados de pesquisas domiciliares. A estratégia empírica central explora a Lei de Engel: bens com alta elasticidade-renda (bens de luxo) servem como "indicadores" de renda permanente, permitindo inferir desigualdade de consumo a partir da composição das cestas — e não apenas dos valores totais declarados, que sofrem viés de subdeclaração.

**Resultado principal:** Contrariamente a estudos anteriores que sugeriam estabilidade, a desigualdade de consumo *cresceu significativamente* entre 1980 e 2010, acompanhando de perto a desigualdade de renda. A chave metodológica foi usar a composição das cestas (participações engelianas) em vez de valores totais. As famílias mais ricas deslocaram seu consumo fortemente para bens de luxo (educação, lazer, serviços), enquanto as mais pobres mantiveram alta participação em necessidades (alimentação, moradia).

**Relevância para o capítulo:** O artigo mobiliza diretamente dois conceitos centrais do capítulo: a **Lei de Engel** (discutida no Box Brasil sobre homoteticidade, §3.6.6) e a distinção entre **preferências homotéticas e não homotéticas**. Se as preferências fossem homotéticas, a composição das cestas seria idêntica entre ricos e pobres — e a estratégia de identificação dos autores não funcionaria. O fato de que a estratégia é bem-sucedida é, em si, evidência empírica contra a homoteticidade. O resultado reforça a importância de modelos não homotéticos (como o AIDS) para análises distributivas — inclusive no contexto brasileiro, onde a POF revela padrões engelianos ainda mais pronunciados.
:::


::: {.pesquisabox title="Thomas, D.; Strauss, J.; Henriques, M. H. (1991). [How Does Mother's Education Affect Child Height?](https://doi.org/10.2307/145920) *Journal of Human Resources*, 26(2), 183–211."}
**Pergunta central:** A educação materna afeta a nutrição infantil por meio de mudanças nas *preferências* (função de utilidade) ou apenas por mudanças na *restrição orçamentária* (renda e preços)? Utilizando dados brasileiros, este artigo seminal testa se mães mais educadas fazem escolhas alimentares qualitativamente diferentes para seus filhos — e não apenas quantitativamente maiores.

**Método:** Thomas, Strauss e Henriques utilizam microdados do **ENDEF** (*Estudo Nacional da Despesa Familiar*) de 1974-75, com informações antropométricas de crianças e características socioeconômicas de mais de 50.000 domicílios brasileiros. O modelo estima o efeito da educação materna sobre a estatura infantil (*height-for-age*), controlando para renda familiar, preços locais, acesso a serviços de saúde e região geográfica. A estratégia de identificação compara crianças dentro de faixas de renda similares, isolando o efeito da educação que opera *via preferências* (escolha de alimentos mais nutritivos, práticas de higiene) do efeito que opera *via renda*.

**Resultado principal:** A educação materna tem um efeito forte e robusto sobre a nutrição infantil, mesmo após controlar para renda: um ano adicional de escolaridade da mãe aumenta a estatura da criança em 0,3-0,5 cm. Crucialmente, o efeito é muito maior para a educação da *mãe* do que para a do *pai*, sugerindo que o canal relevante não é apenas renda (ambos os pais contribuem para a renda), mas a forma como a mãe *aloca* os recursos do domicílio entre as diferentes categorias de consumo — alimentação nutritiva, cuidados de saúde, saneamento.

**Relevância para o capítulo:** O artigo ilustra, com dados brasileiros, que a *forma* da função de utilidade — não apenas a restrição orçamentária — é determinante para os resultados de consumo. Nos termos do capítulo, mães com diferentes níveis de educação possuem *curvas de indiferença* com formatos distintos: mães mais educadas atribuem TMS mais alta a alimentos nutritivos em relação a outros bens, mesmo quando enfrentam os mesmos preços e a mesma renda. Isso reforça a mensagem do artigo de Falk et al. (2018) sobre a heterogeneidade de preferências e conecta-se à discussão sobre a Lei de Engel (Box Brasil §3.6.6): a composição da cesta depende não apenas de quanto se ganha, mas de *quem* decide como gastar.
:::


### Referências do Capítulo

- Aguiar, Mark, e Mark Bils. 2015. "[Has Consumption Inequality Mirrored Income Inequality?](https://doi.org/10.1257/aer.20120599)" *American Economic Review* 105 (9): 2725–2756.
- Arrow, Kenneth J., Hollis B. Chenery, Bagicha S. Minhas, e Robert M. Solow. 1961. "[Capital-Labor Substitution and Economic Efficiency.](https://doi.org/10.2307/1927286)" *Review of Economics and Statistics* 43 (3): 225–250.
- Atkin, David. 2013. "[Trade, Tastes, and Nutrition in India.](https://doi.org/10.1257/aer.103.5.1629)" *American Economic Review* 103 (5): 1629–1663.
- Barros, Ricardo Paes de, Miguel Nathan Foguel, e Gabriel Ulyssea, orgs. 2007. [*Desigualdade de renda no Brasil: uma análise da queda recente*](https://repositorio.ipea.gov.br/handle/11058/3249). Brasília: IPEA.
- Besanko, David, e Ronald R. Braeutigam. 2014. [*Microeconomics*](https://books.google.com.br/books?id=BeoengEACAAJ). 5ª ed. Hoboken: Wiley. Capítulos 3–4.
- Choi, Syngjoo, Shachar Kariv, Wieland Müller, e Dan Silverman. 2014. "[Who Is (More) Rational?](https://doi.org/10.1257/aer.104.6.1518)" *American Economic Review* 104 (6): 1518–1550.
- Debreu, Gerard. 1954. "[Representation of a preference ordering by a numerical function](https://www.cambridge.org/core/books/abs/mathematical-economics/representation-of-a-preference-ordering-by-a-numerical-function/009AEFFF2E07235C5BBFFEF226353FE8)." In *Decision Processes*, editado por Robert M. Thrall, Clyde H. Coombs, e Robert L. Davis, 159–165. New York: Wiley.
- Falk, Armin, Anke Becker, Thomas Dohmen, Benjamin Enke, David Huffman, e Uwe Sunde. 2018. "[Global Evidence on Economic Preferences.](https://doi.org/10.1093/qje/qjy013)" *Quarterly Journal of Economics* 133 (4): 1645–1692.
- IBGE — Instituto Brasileiro de Geografia e Estatística. 2019. [*Pesquisa de Orçamentos Familiares (POF) 2017–2018: Primeiros Resultados*](https://www.ibge.gov.br/estatisticas/sociais/rendimento-despesa-e-consumo/9050-pesquisa-de-orcamentos-familiares.html). Rio de Janeiro: IBGE.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulo 3.
- Thomas, Duncan, John Strauss, e Maria-Helena Henriques. 1991. "[How Does Mother's Education Affect Child Height?](https://doi.org/10.2307/145920)" *Journal of Human Resources* 26 (2): 183–211.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 3.
- Vasconcellos, Marco Antonio Sandoval de, e Manuel Enriquez Garcia. 2014. [*Fundamentos de economia*](https://books.google.com.br/books?id=LSb8oAEACAAJ). 5ª ed. São Paulo: Saraiva.
- Varian, Hal R. 2015. [*Microeconomia: uma abordagem moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulos 3–5.


\newpage

\setcounter{chapter}{14}

\setcounter{section}{0}

# Capítulo 15 — Sozinho, Feliz e Cobrando Caro

Se no Capítulo 14 vivíamos no paraíso da concorrência perfeita — milhares de firmas, ninguém mandando em nada —, agora entramos no lado sombrio do mercado: um único vendedor, zero concorrência e um sorriso no rosto de quem define o preço. O monopólio representa a antítese da concorrência perfeita. Enquanto no modelo competitivo cada firma é uma tomadora de preço, incapaz de influenciar individualmente as condições de mercado, o monopolista é o único ofertante e, portanto, enfrenta toda a curva de demanda do mercado. Essa posição privilegiada lhe confere **poder de mercado** — a capacidade de fixar preços acima do custo marginal e obter lucros econômicos persistentes.[^black-knight-monopolio]

A análise do monopólio não é meramente teórica: monopólios naturais regulados dominam setores fundamentais da economia brasileira — energia elétrica, saneamento, telecomunicações fixas —, e o exercício de poder de mercado é uma preocupação central da política antitruste em todo o mundo. A fusão que criou a Ambev, os contratos de concessão da ANEEL, o teto de preços da ANATEL — todos esses casos envolvem, em sua essência, a economia do monopólio apresentada neste capítulo. Compreender como o monopolista fixa preços, por que essa fixação gera ineficiência e quais instrumentos regulatórios podem mitigá-la é, portanto, indispensável tanto para o economista teórico quanto para o formulador de políticas públicas.

Este capítulo examina as causas do monopólio, a lógica de sua maximização de lucro, as perdas de eficiência decorrentes do poder de mercado, as estratégias de discriminação de preços e os mecanismos de regulação. Ao longo da exposição, utilizaremos intensivamente os conceitos de receita marginal, elasticidade-preço e excedente desenvolvidos nos capítulos anteriores — em particular, a relação entre preço, custo marginal e elasticidade que constituirá o fio condutor de toda a análise. Nos Capítulos 16a e 16b, generalizaremos essa estrutura para mercados com poucos competidores — os oligopólios —, onde a interação estratégica entre firmas substitui o isolamento do monopolista.[^spanish-inquisition-oligopolio]

---

## Roteiro do Capítulo


| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 15.1 | O que impede a concorrência de derrubar o monopolista? | Barreiras à entrada: legais, tecnológicas, estratégicas | Barreiras |
| 15.2 | Como o monopolista escolhe preço e quantidade? | Maximização de lucro, RMg = CMg | Maximização |
| 15.3 | Como medir o poder de mercado com uma fórmula? | Índice de Lerner e elasticidade | Lerner |
| 15.4 | Quanto a sociedade perde com o monopólio? | Peso morto, ineficiência alocativa | Ineficiência |
| 15.5 | O que acontece com o monopólio quando a demanda ou os custos mudam? | Estática comparativa, pass-through | Estática comp. |
| 15.6 | O monopolista escolhe qualidade alta ou baixa? | Qualidade endógena sob monopólio | Qualidade |
| 15.7 | Por que a Netflix cobra preços diferentes em países diferentes? | Discriminação de preços: 1º, 2º e 3º graus | Discriminação |
| 15.8 | Por que o parque cobra entrada e depois cobra por brinquedo? | Tarifa em duas partes, bundling | Tarifas |
| 15.9 | Como o regulador doma o monopolista sem destruir o incentivo a investir? | Regulação: preço teto, taxa de retorno, price cap | Regulação |
| 15.10 | O monopólio pode ser bom para a inovação? | Schumpeter, destruição criativa, patentes | Visão dinâmica |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | Exercícios |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | Pesquisa |


---


::: {.classroombox title="Atividade de Sala — O Leilão do Monopólio: Poder de Mercado, Discriminação e Regulação"}

**Formato:** Simulação de mercado + debrief analítico (45–55 min)

**Objetivo:** Vivenciar como o poder de mercado afeta preços, quantidades e bem-estar; comparar preço único com discriminação de preços; experimentar regulação como resposta.

**Preparação (professor):**

- Divida a turma em grupos de 5–6 alunos. Em cada grupo: 1 aluno é o monopolista, os demais são consumidores.
- Distribua fichas de **valoração** aos consumidores: cada consumidor recebe uma carta com sua disposição a pagar (valores diferentes: R$ 10, R$ 8, R$ 6, R$ 4, R$ 2).
- O monopolista tem custo marginal constante de R$ 2 por unidade.
- Prepare uma planilha de registro no quadro (preço, quantidade, lucro, EC, PPM).

**Rodada 1 — Preço único (10 min):**

1. O monopolista anuncia um preço único. Consumidores cuja valoração ≥ preço compram; os demais ficam de fora.
2. O monopolista pode mudar o preço em até 3 tentativas (tâtonnement), observando quantos compram.
3. Registre o preço final, a quantidade vendida, o lucro e o excedente do consumidor.
4. Calcule a perda de peso morto (consumidores excluídos cujo valor > CMg).

**Rodada 2 — Discriminação perfeita (10 min):**

1. O monopolista agora pode fazer ofertas individuais secretas a cada consumidor (bilhetes escritos).
2. Cada consumidor aceita ou rejeita a oferta.
3. Registre os resultados: quantos compraram? A que preço? Qual o lucro? Qual o EC?

**Rodada 3 — Regulação (10 min):**

1. Um aluno assume o papel de regulador (ANEEL/ANATEL) e impõe $p = CMg = 2$.
2. O monopolista reclama: "Não cubro meus custos fixos!" (professor adiciona CF = R$ 8).
3. O regulador tenta a alternativa $p = CMe$. Calcule e compare.

**Debrief (15–20 min):**

- Compare os três regimes: preço único, discriminação perfeita e regulação. Quem ganhou e quem perdeu em cada caso?
- O monopolista descobriu sozinho o preço ótimo (RMg = CMg) ou precisou de tentativa e erro?
- Na Rodada 2, o EC caiu a zero — isso é "justo"? Discuta eficiência vs. equidade.
- Na Rodada 3, como o regulador resolveu o dilema do prejuízo? Conecte com o modelo da ANEEL.
- Referência Monty Python: "Bring me a shrubbery!" — os cavaleiros Ni são monopolistas perfeitos: demanda inelástica (sem shrubbery, não te deixo passar) e preço acima do custo marginal. A regulação equivale a chamar o Rei Arthur para negociar.

**Variante avançada:** Na Rodada 2, em vez de discriminação perfeita, use discriminação de 3º grau — divida os consumidores em dois grupos (estudantes e executivos) e peça ao monopolista para definir preços diferentes para cada grupo.

**Referência:** Holt, C.A. (2007). *Markets, Games, and Strategic Behavior*, Cap. 24 (Monopoly).
:::


[^black-knight-monopolio]: O monopolista é como o Black Knight de *Monty Python and the Holy Grail*: "'Tis but a scratch!" — ele insiste que está tudo bem enquanto o CADE corta suas margens. A diferença é que, no caso do monopólio, o cavaleiro negro realmente tem uma espada grande o suficiente para fazer estrago. E ao contrário do sketch, ele não perde os braços: a barreira à entrada os protege.

[^spanish-inquisition-oligopolio]: "Nobody expects the Spanish Inquisition!" E ninguém espera que um capítulo sobre monopólio termine com a preparação para o oligopólio. Mas como os Pythons, nós vamos aos próximos capítulos (16a–16b) com três armas: medo, surpresa e uma devoção quase fanática pela interação estratégica.


## 15.1–15.2 Barreiras à Entrada e Maximização de Lucro

### 15.1 Muralhas, Fossos e Portões Levadiços: Barreiras à Entrada {#151}

Se o monopólio é tão lucrativo, por que todo mundo não entra nesse mercado e acaba com a festa? Imagine uma fortaleza medieval: o castelo só sobrevive porque tem muralhas, fossos e portões levadiços. O monopólio funciona da mesma forma — ele só se sustenta porque existem **barreiras à entrada**. Sem elas, o monopólio seria uma posição transitória, rapidamente contestada por rivais ávidos por lucro — como veremos na Seção 15.10 ao discutir mercados contestáveis. É precisamente a existência de obstáculos à entrada que permite ao monopolista sustentar sua posição privilegiada no longo prazo.

Historicamente, a reflexão sobre barreiras à entrada remonta pelo menos a Joe Bain (1956), que as classificou em três categorias — vantagens absolutas de custo, economias de escala e diferenciação de produto. A taxonomia moderna, apresentada a seguir, preserva a essência dessa classificação enquanto incorpora contribuições posteriores de Stigler (1968) e da teoria dos jogos.

#### Barreiras legais

O Estado pode conceder a uma firma o direito exclusivo de operar em um mercado. Exemplos incluem:

- **Patentes**: conferem ao inventor o monopólio temporário sobre a exploração de uma inovação. No Brasil, a Lei de Propriedade Industrial (Lei 9.279/1996) estabelece prazo de 20 anos para patentes de invenção. Esse prazo resulta de um trade-off deliberado de política pública: um período mais longo aumenta o incentivo à inovação (recompensando o inventor com lucros de monopólio), mas prolonga a ineficiência alocativa associada ao poder de mercado.
- **Concessões e licenças**: o poder público pode restringir o número de operadores em um mercado, como ocorre nos serviços de distribuição de energia elétrica e nas concessões rodoviárias.
- **Direitos autorais**: protegem obras intelectuais contra reprodução não autorizada, garantindo aos criadores o controle sobre a exploração comercial de suas obras.

#### Barreiras naturais

Em alguns mercados, as condições tecnológicas tornam ineficiente a presença de mais de uma firma. Isso ocorre quando há **economias de escala** significativas ao longo de toda a faixa relevante de produção. Note que a barreira é "natural" no sentido de que decorre da estrutura de custos, não de uma decisão governamental ou de uma ação estratégica — nenhuma lei proíbe a entrada, mas a tecnologia a torna economicamente inviável.


::: {.definitionbox title="Monopólio Natural"}
Um mercado constitui um **monopólio natural** quando a função de custo é **subaditiva**, isto é, quando uma única firma pode produzir qualquer quantidade a um custo total menor do que duas ou mais firmas produzindo conjuntamente a mesma quantidade:

$$
C(q) < C(q_1) + C(q_2), \quad \text{para todo } q_1, q_2 > 0 \text{ com } q_1 + q_2 = q
$$

No caso de um único produto, a subaditividade é implicada por economias de escala ao longo de toda a faixa relevante de produção — ou seja, o custo médio é decrescente.
:::


Exemplos clássicos incluem redes de distribuição de água, gás, eletricidade e telecomunicações fixas, nas quais a duplicação da infraestrutura seria socialmente custosa. É importante distinguir monopólio natural de monopólio *de fato*: uma firma pode ser a única no mercado por razões históricas ou estratégicas sem que o mercado seja um monopólio natural. A subaditividade dos custos é condição necessária para caracterizar o monopólio natural.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Em um monopólio natural, uma única empresa atende todo o mercado a um custo menor do que duas ou mais fariam — duplicar a infraestrutura seria desperdício.

**Pense assim:** Pense na rede de água encanada do seu bairro. Faz sentido ter uma empresa com uma rede de canos, não duas redes paralelas competindo na mesma rua. O custo fixo de enterrar a tubulação é tão alto que, quanto mais casas uma única rede atende, menor o custo por casa. Construir uma segunda rede seria jogar dinheiro fora — literalmente cavar buracos à toa.

**Por que isso importa:** É por isso que setores como saneamento, distribuição de energia e ferrovias são regulados por agências como [ANEEL](https://www.aneel.gov.br) e [ANA](https://www.gov.br/ana), em vez de simplesmente liberados à concorrência.
:::


#### Barreiras estratégicas

Além das barreiras criadas pela natureza da tecnologia ou pela ação do Estado, as próprias firmas incumbentes podem erguer obstáculos deliberados à entrada de concorrentes. Essas barreiras estratégicas refletem o comportamento racional de uma firma que antecipa a possibilidade de entrada e age preventivamente para torná-la não lucrativa. A análise formal dessas estratégias envolve teoria dos jogos e será aprofundada nos Capítulos 16a–16b; aqui, destacamos os principais mecanismos.

Firmas incumbentes podem adotar comportamentos deliberados para dificultar a entrada de rivais:

- **Excesso de capacidade instalada**: sinaliza que o incumbente pode expandir a produção rapidamente em resposta à entrada, tornando-a não lucrativa. Spence (1977) formalizou esse argumento mostrando que o investimento em capacidade funciona como um compromisso crível (*commitment*).
- **Preços predatórios**: fixar preços temporariamente abaixo do custo para expulsar ou dissuadir concorrentes (prática ilícita no direito concorrencial brasileiro, conforme a Lei 12.529/2011). A eficácia dessa estratégia depende da capacidade financeira do incumbente de sustentar prejuízos temporários.
- **Proliferação de marcas**: ocupar nichos de mercado para reduzir o espaço disponível para entrantes — estratégia documentada empiricamente no mercado americano de cereais matinais por Schmalensee (1978).
- **Controle de insumos essenciais**: adquirir ou controlar o acesso a recursos sem os quais rivais não podem operar.


::: {.boxmundobox title="Box Mundo 15.1 — Patentes farmacêuticas nos EUA: o preço do monopólio legal"}

**Contexto:** A indústria farmacêutica dos Estados Unidos é o exemplo contemporâneo mais saliente de monopólio criado por barreiras legais. Patentes de 20 anos conferem às empresas farmacêuticas o direito exclusivo de comercializar novas moléculas, gerando margens de lucro que figuram entre as maiores de qualquer indústria. Além disso, o *Hatch-Waxman Act* (1984) criou extensões de patente que podem estender a exclusividade por até 5 anos adicionais, além de períodos de exclusividade de dados de 5 a 12 anos para biológicos.

**Dados:** Segundo o *Congressional Budget Office* (CBO), o preço médio dos medicamentos de marca nos EUA é 3,4 vezes maior do que em outros países do G7 (CBO, 2022). Quando uma patente expira e genéricos entram no mercado, o preço cai tipicamente 80–90% dentro de dois anos — uma demonstração direta do efeito do poder de monopólio sobre os preços. Em 2022, os americanos gastaram US\$ 405 bilhões em medicamentos prescritos (CMS National Health Expenditure Data). Estratégias como *pay-for-delay* — acordos nos quais o detentor da patente paga ao fabricante de genéricos para atrasar a entrada — custaram aos consumidores americanos US\$ 3,5 bilhões por ano, segundo estimativa da FTC (2010).

**Análise:** A patente farmacêutica ilustra o dilema central do monopólio legal: sem a promessa de lucros temporários de monopólio, empresas teriam menos incentivo para investir os bilhões necessários ao desenvolvimento de novos medicamentos (o custo médio de levar um fármaco ao mercado é estimado em US\$ 1,3 bilhão pelo *Tufts Center for the Study of Drug Development*). Mas a duração e amplitude da proteção patentária determinam o tamanho da perda de peso morto imposta à sociedade durante a vigência do monopólio. O debate sobre a duração ótima de patentes é, essencialmente, uma análise de custo-benefício entre incentivo à inovação (benefício dinâmico) e ineficiência alocativa (custo estático) — tema que retomaremos na Seção 15.10.

**Fonte:** Congressional Budget Office (2022). *Prescription Drugs: Spending, Use, and Prices*. FTC (2010). *Pay-for-Delay: How Drug Company Pay-Offs Cost Consumers Billions*. CMS National Health Expenditure Data, 2022.
:::


---

### 15.2 O Sorriso de Quem Define o Preço: Maximização de Lucro do Monopolista {#152}

Agora que sabemos *por que* o monopolista reina sozinho, vem a pergunta que realmente interessa: o que ele faz com todo esse poder? Imagine que você é o único vendedor de guarda-chuvas em uma cidade onde chove todos os dias. Você cobra quanto quiser? Não exatamente — se exagerar no preço, ninguém compra. O monopolista vive esse dilema: ele tem poder, mas não é onipotente. A resposta exige uma análise cuidadosa da relação entre receita marginal, custo marginal e elasticidade da demanda — relação esta que se tornará um instrumento analítico recorrente ao longo do restante do livro.

Diferentemente da firma competitiva, que toma o preço como dado e escolhe apenas a quantidade, o monopolista reconhece que suas decisões de quantidade afetam o preço de mercado. Ao expandir a produção, ele enfrenta dois efeitos opostos sobre a receita: o *efeito quantidade* (vende mais unidades) e o *efeito preço* (precisa reduzir o preço de *todas* as unidades, inclusive as que já venderia ao preço mais alto). Essa tensão entre os dois efeitos é a essência do problema de monopólio e explica por que a receita marginal é sempre inferior ao preço.

#### O problema do monopolista

O monopolista enfrenta toda a curva de demanda do mercado. Se a demanda inversa é $p(q)$, o problema de maximização é:

$$
\max_q \; \pi(q) = p(q) \cdot q - C(q)
\label{eq:15.1} \tag{15.1} 
$$


A condição de primeira ordem é:

$$
\frac{d\pi}{dq} = \underbrace{p(q) + q \cdot p'(q)}_{\text{Receita Marginal (RMg)}} - \underbrace{C'(q)}_{\text{Custo Marginal (CMg)}} = 0
\label{eq:15.2} \tag{15.2} 
$$


Portanto, a regra de maximização é:

$$
\boxed{RMg(q^m) = CMg(q^m)}
\label{eq:15.3} \tag{15.3} 
$$


A condição de segunda ordem exige que $\frac{d^2\pi}{dq^2} < 0$, ou seja, que a receita marginal corte o custo marginal "de cima para baixo". Geometricamente, essa condição garante que o ponto encontrado é um máximo (e não um mínimo) de lucro.

Note que a expressão $RMg = p + q \cdot p'(q)$ tem uma interpretação econômica direta: o primeiro termo é a receita obtida pela unidade adicional vendida; o segundo (negativo, pois $p'(q) < 0$ para demanda decrescente) é a perda de receita nas unidades que já seriam vendidas ao preço mais alto. Para uma firma competitiva, $p'(q) = 0$ (a firma não afeta o preço) e $RMg = p$. Para o monopolista, $RMg < p$: cada unidade adicional vale menos que seu preço, porque deprime o preço de todas as unidades.

No gráfico interativo abaixo, ajuste os parâmetros da demanda e do custo marginal para visualizar como o equilíbrio de monopólio se modifica. Observe que o monopolista sempre escolhe a quantidade onde a curva de $RMg$ cruza a de $CMg$, e o preço é lido sobre a curva de demanda — acima do $CMg$.

\figurePlaceholder{/micro-book/graficos/cap15/monopolio.html}


**Figura 15.1 — Equilíbrio de monopólio.** Ajuste os parâmetros da demanda ($a$, $b$) e do custo marginal ($c$) para visualizar o equilíbrio de monopólio, o lucro, o excedente do consumidor, a perda de peso morto e o índice de Lerner. Compare com o resultado competitivo.


#### Receita marginal e elasticidade

A receita marginal pode ser expressa em termos da elasticidade-preço da demanda $\varepsilon_{p}$ (definida como valor negativo, $\varepsilon_p < 0$):

$$
RMg = p\left(1 + \frac{1}{\varepsilon_p}\right) = p\left(1 - \frac{1}{|\varepsilon_p|}\right)
\label{eq:15.4} \tag{15.4} 
$$


Pela equação (\ref{eq:15.4}), como o monopolista opera onde $RMg > 0$, ele necessariamente produz na faixa **elástica** da demanda ($|\varepsilon_p| > 1$). Na faixa inelástica, a receita marginal seria negativa, e o monopolista poderia aumentar a receita (e o lucro) simplesmente reduzindo a produção — uma situação que contradiz a otimização. Esse resultado, embora simples, é frequentemente esquecido por alunos e tem implicações práticas importantes: se um governo observa que a demanda por um bem fornecido por um monopolista é inelástica, pode concluir que o monopolista não está maximizando lucro — ou que há restrições regulatórias limitando seu preço.

#### A regra de markup

A relação entre receita marginal e elasticidade nos conduz a um resultado fundamental: o monopolista não fixa preços arbitrariamente, mas obedece a uma regra de markup que conecta o preço cobrado ao custo marginal e à sensibilidade dos consumidores a variações de preço. Quanto menos sensíveis forem os consumidores — isto é, quanto mais inelástica a demanda —, maior a margem que o monopolista consegue extrair.

Da condição $RMg = CMg$, obtemos:

$$
p\left(1 - \frac{1}{|\varepsilon_p|}\right) = CMg \implies p = \frac{CMg}{1 - \frac{1}{|\varepsilon_p|}}
\label{eq:15.5} \tag{15.5} 
$$


O monopolista aplica um **markup** sobre o custo marginal que é inversamente proporcional à elasticidade-preço da demanda. Quando $|\varepsilon_p| \to \infty$ (demanda perfeitamente elástica), o markup desaparece e $p \to CMg$ — recuperamos o resultado competitivo. Quando $|\varepsilon_p|$ é baixo (demanda inelástica), o markup explode — o monopolista extrai margens cada vez maiores. É essa relação que fundamenta toda a análise empírica do poder de mercado.


::: {.definitionbox title="Índice de Lerner"}
O **índice de Lerner** mede o poder de mercado de uma firma como a diferença percentual entre preço e custo marginal:

$$
L = \frac{p - CMg}{p}
\label{eq:15.6} \tag{15.6} 
$$


Para uma firma em concorrência perfeita, $L = 0$. Para um monopolista, $L = \frac{1}{|\varepsilon_p|}$. O índice varia entre 0 e 1.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** O markup do monopolista é maior quando os consumidores têm poucas alternativas — quanto mais "preso" o cliente, mais caro o produto.

**Pense assim:** Compare o preço de uma garrafa d'água no supermercado (R$ 2) com o preço no estádio de futebol (R$ 10). No estádio, você não pode sair para comprar em outro lugar — sua demanda é inelástica — e o vendedor explora isso cobrando um markup enorme. No supermercado, com dez marcas na prateleira, ninguém consegue cobrar muito acima do custo. O índice de Lerner mede exatamente esse "poder de espremer" o consumidor.

**Por que isso importa:** O [CADE](https://www.gov.br/cade) usa medidas como o índice de Lerner para avaliar se fusões e aquisições criarão poder de mercado excessivo — como na análise da fusão que criou a Ambev.
:::


::: {.warningbox title="Erro Comum"}

**Achar que o monopolista pode operar na faixa inelástica da demanda.**

Um erro frequente é esquecer que o monopolista maximizador de lucro **nunca** produz na região onde $|\varepsilon_p| < 1$. Na faixa inelástica, a receita marginal é negativa: ao reduzir a produção, a firma aumenta a receita *e* reduz o custo — logo, o lucro sobe. O monopolista sempre opera onde $|\varepsilon_p| > 1$. Se uma questão de prova apresenta uma demanda com $|\varepsilon_p| < 1$ no ponto calculado, revise o cálculo: algo está errado, ou trata-se de uma solução de canto.
:::


O exercício a seguir aplica as ferramentas recém-desenvolvidas a um problema numérico completo, ilustrando cada etapa do cálculo do equilíbrio de monopólio.


::: {.exresolvidobox title="Exercício Resolvido 15.1 — Monopólio com demanda linear: preço, lucro e PPM"}
**Enunciado.** Um monopolista enfrenta demanda $p = 80 - 2q$ e tem custo total $C(q) = 200 + 8q$. (a) Encontre preço, quantidade e lucro de monopólio. (b) Calcule o índice de Lerner. (c) Calcule a perda de peso morto e o excedente total. (d) Compare com o resultado competitivo.

---

**(a)** A receita marginal é $RMg = 80 - 4q$. Igualando ao custo marginal $CMg = 8$:

$$
80 - 4q = 8 \implies q^m = 18, \quad p^m = 80 - 36 = 44
$$

Lucro: $\pi = 44 \times 18 - (200 + 8 \times 18) = 792 - 344 = 448$.

**(b)** Índice de Lerner: $L = (p - CMg)/p = (44 - 8)/44 = 36/44 \approx 0{,}818$.

Verificação pela elasticidade: no ponto de monopólio, $\varepsilon_p = (dq/dp)(p/q) = (-1/2)(44/18) \approx -1{,}222$. Logo $L = 1/|\varepsilon_p| = 1/1{,}222 \approx 0{,}818$. ✓

**(c)** Resultado competitivo: $p^c = CMg = 8$, $q^c = (80-8)/2 = 36$.

$$
PPM = \frac{1}{2}(p^m - CMg)(q^c - q^m) = \frac{1}{2}(44 - 8)(36 - 18) = \frac{1}{2} \times 36 \times 18 = 324
$$

Excedente total sob monopólio: $W^m = EC^m + EP^m$.

$EC^m = \frac{1}{2}(80 - 44)(18) = \frac{1}{2} \times 36 \times 18 = 324$.

O excedente do produtor é a área acima do CMg: $EP^m = (p^m - CMg) \times q^m = (44 - 8)(18) = 648$.

$W^m = 324 + 648 = 972$.

**(d)** Sob concorrência perfeita: $EC^c = \frac{1}{2}(80-8)(36) = 1.296$, $EP^c = 0$ (com CMg constante). $W^c = 1.296$.

$PPM = W^c - W^m = 1.296 - 972 = 324$. ✓

**Interpretação:** O monopolista captura R$ 648 de excedente, mas destrói R$ 324 de bem-estar social que ninguém captura — o triângulo de Harberger.
:::


\figurePlaceholder{/micro-book/graficos/cap15/webr-monopolio-basico.html}


**WebR 15.1 — Monopólio de ponta a ponta: do cálculo ao gráfico.** O código resolve o ER 15.1 completo em R: calcula preço, quantidade, lucro, índice de Lerner, excedentes e perda de peso morto, comparando monopólio com concorrência perfeita. Altere os parâmetros `a`, `b` e `c` e observe como o triângulo de Harberger se expande ou encolhe.



## 15.3–15.5 Índice de Lerner, Ineficiência e Estática Comparativa

### 15.3 A Régua do Poder: Demonstração do Índice de Lerner {#153}

A derivação formal a seguir explicita a conexão algébrica entre o poder de mercado do monopolista — medido pelo índice de Lerner — e a elasticidade-preço da demanda que ele enfrenta. Embora o resultado já tenha sido antecipado na seção anterior, a demonstração rigorosa é instrutiva porque revela a estrutura lógica subjacente e prepara o terreno para generalizações em contextos de oligopólio (Capítulos 16a–16b), onde o índice de Lerner de cada firma dependerá não apenas da elasticidade de mercado, mas também de sua participação de mercado e do grau de colusão.


::: {.proofbox title="Demonstração"}
Seja $p(q)$ a demanda inversa do mercado e $C(q)$ a função de custo do monopolista. O problema de maximização de lucro é:

$$
\max_q \; \pi(q) = p(q) \cdot q - C(q)
$$

A condição de primeira ordem é:

$$
\frac{d\pi}{dq} = p(q) + q \cdot p'(q) - C'(q) = 0
$$

Reescrevendo:

$$
p + q \cdot p'(q) = CMg
$$

Multiplicamos e dividimos o segundo termo por $p$:

$$
p + p \cdot \frac{q \cdot p'(q)}{p} = CMg
$$

Observe que a elasticidade-preço da demanda é definida como:

$$
\varepsilon_p = \frac{dq}{dp} \cdot \frac{p}{q}
$$

Portanto:

$$
\frac{q \cdot p'(q)}{p} = \frac{q}{p} \cdot \frac{dp}{dq} = \frac{1}{\varepsilon_p}
$$

Substituindo:

$$
p\left(1 + \frac{1}{\varepsilon_p}\right) = CMg
$$

Rearranjando:

$$
p - CMg = -\frac{p}{\varepsilon_p}
$$

Dividindo ambos os lados por $p$:

$$
\frac{p - CMg}{p} = -\frac{1}{\varepsilon_p} = \frac{1}{|\varepsilon_p|}
$$

Portanto:

$$
\boxed{L = \frac{p - CMg}{p} = \frac{1}{|\varepsilon_p|}}
\label{eq:15.7} \tag{15.7} 
$$


O índice de Lerner é igual ao inverso do valor absoluto da elasticidade-preço da demanda. Quanto mais inelástica a demanda (menor $|\varepsilon_p|$), maior o poder de mercado. Em concorrência perfeita, a firma enfrenta demanda perfeitamente elástica ($|\varepsilon_p| \to \infty$), de modo que $L = 0$. $\blacksquare$
:::


---

### 15.4 Quem Paga a Conta: Ineficiência do Monopólio {#154}

Até aqui, contamos a história do monopólio pelo ângulo do vilão — e, convenhamos, para o monopolista a vida é boa: ele escolhe preço, quantidade e vai dormir tranquilo. Mas e o resto da sociedade? Alguém está pagando a conta dessa tranquilidade. Em que medida o poder de mercado do monopolista compromete a eficiência alocativa que os Teoremas do Bem-Estar (Capítulo 14) garantem para mercados competitivos? A resposta a essas perguntas fundamenta a justificativa econômica para a regulação e a política antitruste — e, como veremos, envolve não apenas o conhecido "triângulo de Harberger", mas também custos mais sutis associados ao *rent-seeking* e à ineficiência organizacional.

#### Perda de peso morto

O monopolista produz menos e cobra mais do que o resultado competitivo. Essa distorção gera uma **perda de peso morto** (PPM) — uma redução no excedente total que não é capturada por nenhum agente. A PPM representa transações mutuamente benéficas que deixam de ocorrer: consumidores que estariam dispostos a pagar mais do que o custo marginal de produção, mas são excluídos pelo preço de monopólio.

Considere um mercado com demanda linear $p = a - bq$ e custo marginal constante $CMg = c$.

**Resultado competitivo** ($p = CMg$):

$$
q^c = \frac{a - c}{b}, \quad p^c = c
$$

**Resultado monopolístico** ($RMg = CMg$):

$$
RMg = a - 2bq = c \implies q^m = \frac{a - c}{2b}, \quad p^m = \frac{a + c}{2}
\label{eq:15.8} \tag{15.8} 
$$


Pela equação (\ref{eq:15.8}), o monopolista produz **metade** da quantidade competitiva e cobra um preço **acima** do custo marginal. Essa relação — com demanda linear, a produção de monopólio é exatamente metade da competitiva — é um resultado útil que merece ser lembrado; ele decorre do fato de que, com demanda linear, a curva de $RMg$ tem o mesmo intercepto e o dobro da inclinação da curva de demanda.

#### O triângulo de Harberger

A perda de peso morto corresponde à área do triângulo entre a curva de demanda e o custo marginal, entre $q^m$ e $q^c$:

$$
PPM = \frac{1}{2}(p^m - c)(q^c - q^m) = \frac{(a-c)^2}{8b}
\label{eq:15.9} \tag{15.9} 
$$


Arnold Harberger (1954) pioneirou a mensuração empírica dessa perda e estimou que a PPM nos Estados Unidos seria da ordem de 0,1% do PIB — um valor surpreendentemente pequeno que provocou intenso debate na profissão. Estimativas posteriores, incorporando *rent-seeking* (os recursos desperdiçados na tentativa de obter ou manter o monopólio, como atividades de lobby) e ineficiências organizacionais (*X-inefficiency* de Leibenstein, 1966 — a ideia de que a ausência de pressão competitiva permite à firma operar aquém de sua fronteira de custos), sugerem valores significativamente maiores. Cowling e Mueller (1978) estimaram que o custo social do monopólio poderia chegar a 4–13% do PIB quando o lucro do monopolista é incluído como custo social (na hipótese de que é inteiramente dissipado em *rent-seeking*).

Richard Posner (1975) formalizou esse argumento: se firmas gastam recursos para obter e manter poder de mercado (por exemplo, em lobby, litígios e barreiras estratégicas), o custo social total pode ser muito maior que o triângulo de Harberger — podendo, no limite, ser tão grande quanto o retângulo de lucro do monopolista, como veremos no Exercício Resolvido 15.2.


::: {.examplebox title="Poder de mercado e o CADE"}
O Conselho Administrativo de Defesa Econômica (CADE) utiliza o índice de Lerner e medidas correlatas para avaliar poder de mercado em atos de concentração e investigações de conduta. No caso da fusão Ambev (1999), o CADE estimou que a empresa resultante deteria cerca de 70% do mercado de cervejas, com significativo poder de precificação. Mais recentemente, em 2022, o CADE aplicou multa de R$ 539 milhões ao Google por abuso de posição dominante no mercado de *ad tech* — um caso em que o poder de mercado decorre não de barreiras tecnológicas clássicas, mas de efeitos de rede e controle de dados. O índice de Lerner é uma ferramenta analítica central nessas investigações: um $L$ elevado e persistente sinaliza poder de mercado que justifica intervenção regulatória. A [Tabela 15.1](#tabela-15-1) compara os resultados dos dois regimes.
:::


| Variável | Concorrência Perfeita | Monopólio | Variação |
|---|---|---|---|
| **Preço** | $p^c = c$ | $p^m = \frac{a+c}{2}$ | $\uparrow$ |
| **Quantidade** | $q^c = \frac{a-c}{b}$ | $q^m = \frac{a-c}{2b}$ | $\downarrow$ |
| **Excedente do Consumidor** | $\frac{(a-c)^2}{2b}$ | $\frac{(a-c)^2}{8b}$ | $\downarrow$ |
| **Excedente do Produtor** | $0$ | $\frac{(a-c)^2}{4b}$ | $\uparrow$ |
| **Excedente Total** | $\frac{(a-c)^2}{2b}$ | $\frac{3(a-c)^2}{8b}$ | $\downarrow$ |
| **Perda de Peso Morto** | $0$ | $\frac{(a-c)^2}{8b}$ | — |


**Tabela 15.1 — Comparação concorrência perfeita versus monopólio.**


::: {.tipbox title="Interpretação"}
A passagem de concorrência perfeita para monopólio envolve duas transferências: (i) parte do excedente do consumidor é capturada pelo monopolista (retângulo de transferência); (ii) parte do excedente total simplesmente desaparece (triângulo de Harberger). A PPM representa uma perda **líquida** de bem-estar social.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** O monopólio produz menos e cobra mais do que um mercado competitivo, e a diferença de bem-estar que se perde no caminho não vai para ninguém — simplesmente evapora.

**Pense assim:** Imagine que, em vez de vários postos de gasolina no bairro, houvesse apenas um. Ele reduziria a quantidade vendida e aumentaria o preço. Parte do que os consumidores perdem vai para o bolso do dono do posto (lucro de monopólio), mas outra parte — os litros que deixaram de ser vendidos porque o preço ficou alto demais — é pura perda. É como se alguém queimasse dinheiro: nem o consumidor nem o produtor ficam com ele.

**Por que isso importa:** A perda de peso morto do monopólio é o principal argumento econômico para a existência de órgãos como o CADE, que combatem concentração excessiva de mercado para proteger o bem-estar dos consumidores brasileiros.
:::


::: {.boxmundobox title="Box Mundo 15.2 — O custo social do monopólio: de Harberger (EUA) à OCDE"}

**Contexto:** Quanto custa o monopólio para a sociedade? A resposta depende criticamente do que se inclui na conta. Arnold Harberger (1954), em estudo seminal com dados de 73 indústrias manufatureiras dos EUA no período 1924–1928, inaugurou a tradição de mensuração empírica das perdas de eficiência do poder de mercado — e obteve um resultado que surpreendeu a profissão por sua modéstia.

**Dados:** A estimativa original de Harberger foi de apenas 0,1% do PIB americano — tão pequena que levantou a questão de se o monopólio era realmente um problema econômico relevante. Entretanto, estimativas posteriores usando metodologias mais abrangentes chegaram a valores muito maiores. Cowling e Mueller (1978), utilizando dados de firmas individuais nos EUA (734 firmas) e no Reino Unido, estimaram perdas de 4–13% do PIB americano e 3–7% do PIB britânico, ao incluir o lucro de monopólio como custo social (seguindo a lógica de Posner de que os lucros de monopólio são dissipados em *rent-seeking*). Mais recentemente, o *OECD Competition Assessment Toolkit* (2019) estima que reformas pró-concorrência em mercados com poder de mercado significativo podem elevar o PIB em 0,5% a 1,5% nos países membros — cifras que indicam perdas correntes nessa magnitude.

**Análise:** A discrepância entre as estimativas reflete diferenças conceituais profundas sobre o que constitui o "custo social" do monopólio. O triângulo de Harberger captura apenas a ineficiência alocativa estática (transações não realizadas). A abordagem de Posner/Cowling-Mueller adiciona os custos de *rent-seeking* — recursos reais desviados para obter ou manter poder de mercado, como lobby, litígios e publicidade persuasiva. A teoria da *X-inefficiency* de Leibenstein (1966) sugere ainda que, na ausência de pressão competitiva, as firmas operam acima de sua fronteira de custos mínimos, gerando desperdício interno. Essas três fontes de custo — alocativo, *rent-seeking* e organizacional — se somam e podem tornar o monopólio um problema econômico substancial.

**Fonte:** Harberger, A. C. (1954). Monopoly and resource allocation. *AER*, 44(2), 77–87. Cowling, K.; Mueller, D. C. (1978). The social costs of monopoly power. *Economic Journal*, 88(352), 727–748. OECD (2019). *Competition Assessment Toolkit*.
:::


O exercício a seguir formaliza o argumento de Posner sobre os custos de *rent-seeking*.


::: {.exresolvidobox title="Exercício Resolvido 15.2 — Custo social do monopólio com rent-seeking"}
**Enunciado.** Em um mercado com demanda $p = 120 - 3q$, um monopolista tem $CMg = 30$. (a) Calcule o equilíbrio de monopólio e a PPM (triângulo de Harberger). (b) Se o monopolista gasta até a totalidade do lucro em atividades de *rent-seeking* para manter o monopólio, qual é o custo social máximo? (c) Compare com o excedente total sob concorrência perfeita.

---

**(a)** $RMg = 120 - 6q = 30 \implies q^m = 15$, $p^m = 120 - 45 = 75$.

Lucro: $\pi^m = (75 - 30) \times 15 = 675$.

Resultado competitivo: $p^c = 30$, $q^c = (120-30)/3 = 30$.

$$
PPM = \frac{1}{2}(75 - 30)(30 - 15) = \frac{1}{2} \times 45 \times 15 = 337{,}5
$$

**(b)** Segundo Posner (1975), se o monopolista dissipa todo o lucro em *rent-seeking*, o custo social total é:

$$
CS_{\text{total}} = PPM + \pi^m = 337{,}5 + 675 = 1.012{,}5
$$

**(c)** Excedente total sob concorrência perfeita:

$$
W^c = EC^c = \frac{1}{2}(120 - 30)(30) = 1.350
$$

O custo social máximo (1.012,5) representa 75% do excedente competitivo. Sob monopólio com *rent-seeking* total, o bem-estar social restante seria apenas $EC^m = \frac{1}{2}(120-75)(15) = 337{,}5$ — exatamente 25% do excedente competitivo.

**Interpretação:** O triângulo de Harberger sozinho subestima o custo social do monopólio. Quando incluímos o desperdício de recursos em *rent-seeking*, o custo pode ser até três vezes maior. Este é o argumento central de Posner para uma política antitruste vigorosa.
:::


---

### 15.5 Mexeu no Tabuleiro: Estática Comparativa do Monopólio {#155}

Estabelecido o equilíbrio de monopólio, podemos agora investigar como ele se altera diante de mudanças nos parâmetros exógenos. Que efeito tem um imposto sobre o preço e a quantidade de monopólio? Como o monopolista responde a um deslocamento da demanda? Essas perguntas de estática comparativa são particularmente relevantes para a formulação de políticas públicas, pois revelam como instrumentos tributários e regulatórios interagem com o poder de mercado. Os resultados, como veremos, diferem qualitativamente do caso competitivo — o que implica que intuições desenvolvidas para mercados competitivos podem ser enganosas quando aplicadas a mercados com poder de mercado.

#### Efeito de um imposto unitário

Suponha que o governo impõe um imposto unitário $t$ sobre cada unidade produzida. O novo custo marginal efetivo é $CMg + t$. Com demanda linear:

$$
q^m(t) = \frac{a - c - t}{2b}, \quad p^m(t) = \frac{a + c + t}{2}
\label{eq:15.10} \tag{15.10} 
$$


Observe que $\frac{dp^m}{dt} = \frac{1}{2}$: o monopolista repassa apenas **metade** do imposto ao consumidor. Isso contrasta com a concorrência perfeita, na qual, com oferta perfeitamente elástica, o repasse é integral. A diferença tem implicações diretas para a política tributária: um imposto sobre um monopolista é parcialmente absorvido pelo lucro da firma, o que pode ser desejável do ponto de vista distributivo — o monopolista "paga" metade do imposto.


::: {.notebox title="Repasse imperfeito"}
O fato de o monopolista absorver parte do imposto decorre da curvatura da curva de demanda que ele enfrenta. A incidência do imposto depende crucialmente da forma funcional da demanda: com demanda isoelástica ($q = Ap^{\varepsilon}$), por exemplo, o repasse pode *exceder* 100% — o preço sobe mais do que o valor do imposto. Esse resultado aparentemente paradoxal ocorre porque a demanda isoelástica é mais convexa que a linear, fazendo com que a $RMg$ se desloque mais do que proporcionalmente. A forma funcional da demanda, portanto, é crucial para a análise de incidência tributária em mercados com poder de mercado.
:::


#### Deslocamento da demanda

Um aumento na demanda (deslocamento paralelo de $a$ para $a + \Delta$) eleva tanto o preço quanto a quantidade de monopólio:

$$
\Delta p^m = \frac{\Delta}{2}, \quad \Delta q^m = \frac{\Delta}{2b}
$$

O lucro do monopolista é crescente e convexo na demanda, o que implica que o monopolista tem incentivos fortes para investir em publicidade ou atividades que expandam a demanda. Essa convexidade do lucro na demanda é uma propriedade geral do monopólio (não restrita à demanda linear) e tem uma consequência importante: o monopolista valora aumentos de demanda mais do que proporcionalmente, o que explica os elevados gastos em publicidade observados em mercados monopolísticos ou altamente concentrados.

No gráfico interativo abaixo, experimente ajustar o slider do imposto $t$ e observe como o equilíbrio de monopólio se desloca. Note que o preço sobe apenas metade do valor do imposto, enquanto a quantidade cai. Observe também o retângulo de receita fiscal e como a perda de peso morto se altera.

\figurePlaceholder{/micro-book/graficos/cap15/estatica-comparativa.html}


**Figura 15.2 — Estática comparativa: efeito de um imposto sobre o monopólio.** Ajuste o imposto unitário $t$ e os parâmetros da demanda para visualizar como o equilíbrio se desloca. Observe que o monopolista repassa apenas metade do imposto (com demanda linear) e compare com o resultado competitivo.


::: {.exresolvidobox title="Exercício Resolvido 15.3 — Imposto sobre o monopolista"}
**Enunciado.** Um monopolista enfrenta demanda $p = 60 - q$ e tem $CMg = 12$. O governo impõe imposto unitário $t = 8$. (a) Encontre $(p, q, \pi)$ antes e depois do imposto. (b) Que fração do imposto é repassada ao consumidor? (c) Calcule a variação no excedente do consumidor.

---

**(a) Antes do imposto:**

$RMg = 60 - 2q = 12 \implies q^m = 24$, $p^m = 36$. $\pi = (36-12)(24) = 576$.

**Depois do imposto:** CMg efetivo = $12 + 8 = 20$.

$RMg = 60 - 2q = 20 \implies q^m(t) = 20$, $p^m(t) = 40$. $\pi = (40 - 20)(20) = 400$.

**(b)** Repasse: $\Delta p = 40 - 36 = 4$. Fração repassada: $4/8 = 50\%$. ✓ (Resultado geral para demanda linear.)

**(c)** $EC_{\text{antes}} = \frac{1}{2}(60-36)(24) = 288$.

$EC_{\text{depois}} = \frac{1}{2}(60-40)(20) = 200$.

$\Delta EC = 200 - 288 = -88$.

**Interpretação:** O consumidor perde R$ 88 de excedente. O monopolista absorve R$ 176 de perda de lucro ($576 - 400$). A receita fiscal é $8 \times 20 = 160$. A soma $88 + 176 = 264$ excede a receita fiscal de 160 em $264 - 160 = 104$ — esta diferença é o aumento na perda de peso morto causado pelo imposto.
:::


\figurePlaceholder{/micro-book/graficos/cap15/webr-imposto-monopolio.html}


**WebR 15.2 — O monopolista absorve metade do imposto.** O código implementa o ER 15.3: calcula o equilíbrio antes e depois do imposto, mostrando que o repasse é exatamente 50% com demanda linear. No gráfico da direita, observe que o lucro é uma parábola invertida no imposto — existe um $t$ que maximiza a receita fiscal. Experimente alterar `t` e compare o efeito sobre consumidor, produtor e governo.



## 15.6–15.8 Qualidade, Discriminação de Preços e Tarifas

### 15.6 Bom o Bastante para o Último Cliente: Qualidade sob Monopólio {#156}

Até este ponto, tratamos o produto do monopolista como dado — variando apenas preço e quantidade. Na prática, porém, o monopolista também decide sobre a **qualidade** do que oferece. Será que um monopolista investe adequadamente em qualidade, ou a ausência de pressão competitiva o leva a oferecer produtos inferiores ao que seria socialmente desejável? A resposta, como veremos, é surpreendentemente ambígua — e depende de detalhes da distribuição de preferências entre os consumidores.

O monopolista também escolhe a **qualidade** $s$ do produto. Se a demanda é $p(q, s)$ e o custo é $C(q, s)$, o problema torna-se:

$$
\max_{q, s} \; \pi(q, s) = p(q, s) \cdot q - C(q, s)
$$

A condição para a escolha ótima de qualidade é:

$$
\frac{\partial p}{\partial s} \cdot q = \frac{\partial C}{\partial s}
\label{eq:15.11} \tag{15.11} 
$$


O monopolista iguala a receita marginal da qualidade ao custo marginal da qualidade. A receita marginal da qualidade é avaliada no **consumidor marginal** (o último a adquirir o bem), não no consumidor médio. Se o consumidor marginal valora a qualidade menos que o consumidor médio — o que é plausível quando os consumidores com maior disposição a pagar também valorizam mais a qualidade —, o monopolista subprovê qualidade em relação ao ótimo social. Intuitivamente, o monopolista ajusta a qualidade para agradar ao consumidor que está "na margem" de comprar ou não, não ao consumidor que já está disposto a pagar caro.


::: {.notebox title="Qualidade e bem-estar"}
Spence (1975) demonstrou que o monopolista provê qualidade eficiente quando o consumidor marginal tem a mesma valoração de qualidade que o consumidor médio. Em geral, não há resultado inequívoco: o monopolista pode oferecer qualidade excessiva ou insuficiente. Esse resultado contrasta com a intuição popular de que "monopólio implica qualidade ruim" — na verdade, a direção da distorção depende de como as preferências por qualidade se distribuem entre os consumidores.
:::


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** O monopolista ajusta a qualidade pensando no cliente que está quase desistindo de comprar — não no cliente mais entusiasmado.

**Pense assim:** Imagine uma operadora de TV a cabo monopolista decidindo quantos canais oferecer. Ela não pergunta "quantos canais o cinéfilo fanático quer?", mas "quantos canais preciso para convencer a última família a assinar?". Se as famílias que assinam mais facilmente (alta disposição a pagar) também são as que mais valorizam variedade de canais, a operadora oferecerá *menos* canais do que seria socialmente ótimo — porque está calibrando pelo consumidor marginal, menos exigente.

**Por que isso importa:** Esse resultado é relevante para a regulação de serviços monopolísticos no Brasil: a ANATEL, ao regular planos de telecomunicações, precisa considerar não apenas preços, mas também padrões mínimos de qualidade — porque o monopolista não tem incentivos automáticos para fornecer a qualidade socialmente desejável.
:::


---

### 15.7 Um Preço para Cada Bolso: Discriminação de Preços {#157}

Você já se perguntou por que a mesma passagem de avião custa R$ 400 para quem compra com antecedência e R$ 2.000 para quem compra na véspera — sendo que os dois sentam no mesmo avião, comem o mesmo amendoim e chegam ao mesmo destino? A resposta é que o monopolista (ou quase-monopolista) aprendeu um truque poderoso: abandonar a prática de preço único. Se o monopolista consegue identificar — ou induzir a autorevelação de — diferentes disposições a pagar entre consumidores, ele pode explorar essa heterogeneidade para extrair mais excedente do que seria possível com um preço uniforme. Essa prática, conhecida como discriminação de preços, é onipresente no mundo real e assume formas sofisticadas que variam de passagens aéreas a planos de software, de ingressos de cinema a tarifas de eletricidade.

A discriminação de preços exige duas condições: (i) algum grau de poder de mercado e (ii) impossibilidade de revenda (arbitragem) entre consumidores. A segunda condição é crucial: se consumidores que pagam preço baixo pudessem revender para os que pagam preço alto, a discriminação seria impossível. A taxonomia clássica, devida a Pigou (1920), distingue três graus de discriminação conforme a informação disponível ao monopolista.

#### 15.7.1 Discriminação de primeiro grau (perfeita)

Na discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Cada unidade é vendida a um preço diferente — é o caso limite em que o monopolista possui informação perfeita sobre as preferências de cada consumidor individual.


::: {.definitionbox title="Discriminação de Primeiro Grau"}
Na **discriminação de preços de primeiro grau**, o monopolista extrai todo o excedente do consumidor, cobrando o preço máximo que cada consumidor está disposto a pagar por cada unidade.
:::


Resultado:

- A quantidade produzida é **eficiente**: $q = q^c$ (idêntica à concorrência perfeita).
- Não há perda de peso morto.
- Todo o excedente é capturado pelo produtor: $EC = 0$, $EP = \frac{(a-c)^2}{2b}$.

A discriminação perfeita é um caso limite teórico — na prática, o monopolista raramente conhece as disposições a pagar individuais. Sua importância analítica reside em dois pontos: primeiro, ela serve como benchmark contra o qual comparar as demais formas de discriminação; segundo, ela mostra que o poder de mercado *per se* não gera ineficiência alocativa — é a *uniformidade* do preço que gera a PPM. Se o monopolista pudesse cobrar preços diferentes de cada consumidor, a eficiência seria restaurada (embora a distribuição do excedente fosse radicalmente diferente).

#### 15.7.2 Discriminação de segundo grau (não-linear)

A discriminação de primeiro grau é um caso limite que pressupõe informação perfeita sobre cada consumidor — uma hipótese heroica na maioria dos contextos reais. O que acontece quando o monopolista sabe que os consumidores diferem em suas preferências, mas não consegue observar diretamente o "tipo" de cada um? Nesse cenário, o monopolista recorre a uma estratégia engenhosa: em vez de atribuir preços a consumidores, ele oferece um menu de opções e deixa que os próprios consumidores se revelem por meio de suas escolhas. Esse é um caso particular do problema de desenho de mecanismos sob informação assimétrica, formalizado por Mirrlees (Nobel 1996) e Maskin (Nobel 2007).

Quando o monopolista não observa as características dos consumidores, ele pode oferecer um **menu de contratos** (combinações preço-quantidade) e permitir que os consumidores se **autosselecionem**. Consumidores com alta disposição a pagar escolhem o pacote premium; consumidores com baixa disposição escolhem o pacote básico.

A estrutura ótima envolve:

- O tipo de **alta valoração** recebe a quantidade eficiente, mas paga um preço que lhe deixa algum excedente (renda informacional).
- O tipo de **baixa valoração** recebe uma quantidade **distorcida para baixo** (abaixo do eficiente) e extrai exatamente zero de excedente.

Essa distorção no consumo do tipo baixo é o custo da **compatibilidade de incentivos**: é necessário tornar o pacote básico suficientemente pouco atrativo para que o tipo alto não queira "imitar" o tipo baixo e capturar renda informacional excessiva.


::: {.tipbox title="Exemplos práticos"}
- Passagens aéreas com classes tarifárias (econômica, executiva, primeira classe).
- Versões de software (básica, profissional, enterprise).
- Descontos por quantidade em supermercados.
- Planos de streaming com e sem anúncios.
:::


::: {.boxbrasilbox title="Box Brasil 15.1 — Discriminação de preços nas passagens aéreas"}
O mercado brasileiro de aviação civil, dominado por três companhias (Latam, Gol e Azul, que juntas detêm mais de 98% do mercado doméstico segundo dados da [ANAC](https://www.anac.gov.br)), é um exemplo rico de discriminação de preços de segundo e terceiro grau.

**Discriminação de segundo grau (autosseleção):**

As companhias oferecem múltiplas classes tarifárias para o mesmo voo — desde tarifas promocionais sem direito a bagagem ou remarcação até tarifas flexíveis com reembolso integral. Passageiros corporativos, com alta disposição a pagar e demanda inelástica (viagens de última hora), autosselecionam-se para tarifas mais caras. Passageiros a lazer, com demanda elástica e flexibilidade de datas, escolhem as tarifas promocionais. Essa estrutura replica o menu de contratos descrito na teoria: o tipo de alta valoração paga mais, mas recebe serviços adicionais.

**Discriminação de terceiro grau (segmentação observável):**

Companhias oferecem tarifas diferenciadas para idosos (desconto de 5% obrigatório pela ANAC), estudantes e militares. A segmentação por antecedência de compra (preços mais baixos para compras com 30-60 dias de antecedência) também funciona como discriminação de terceiro grau, separando viajantes a lazer (antecedência) de viajantes corporativos (última hora).

Segundo dados da ANAC, a tarifa aérea média doméstica por km variou entre R$ 0,35 e R$ 0,55 em 2023, mas a dispersão de preços dentro de um mesmo voo pode facilmente superar 300% — evidência direta de discriminação de preços.
:::


#### 15.7.3 Discriminação de terceiro grau (segmentação de mercados)

Na discriminação de terceiro grau, o monopolista divide os consumidores em **grupos observáveis** (por exemplo, por idade, localização, status profissional) e cobra preços diferentes de cada grupo. Diferentemente da discriminação de segundo grau, aqui a firma observa diretamente a que grupo cada consumidor pertence e condiciona o preço a essa observação.

Se há dois mercados com demandas $p_1(q_1)$ e $p_2(q_2)$, o monopolista resolve:

$$
\max_{q_1, q_2} \; p_1(q_1) \cdot q_1 + p_2(q_2) \cdot q_2 - C(q_1 + q_2)
$$

As condições de primeira ordem são:

$$
RMg_1(q_1) = RMg_2(q_2) = CMg(q_1 + q_2) \label{eq:15.12} \tag{15.12}
$$

A equação (\ref{eq:15.12}) mostra que o monopolista iguala as receitas marginais em todos os mercados ao custo marginal. O mercado com demanda **mais inelástica** paga o preço **mais alto**:

$$
\frac{p_1}{p_2} = \frac{1 - \frac{1}{|\varepsilon_2|}}{1 - \frac{1}{|\varepsilon_1|}}
\label{eq:15.13} \tag{15.13} 
$$


Essa equação formaliza a intuição de que o monopolista "espreme" mais os consumidores com poucas alternativas. A razão de preços entre mercados depende exclusivamente da razão de elasticidades — e não dos custos, que são comuns. É por isso que passagens aéreas para executivos custam mais do que para turistas: não porque custe mais transportar um executivo, mas porque ele é menos sensível ao preço.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Discriminar preços significa cobrar mais de quem está mais disposto a pagar e menos de quem é mais sensível ao preço.

**Pense assim:** Pense nas passagens aéreas da Latam ou Gol. O executivo que compra na véspera paga R$ 2.000 porque *precisa* viajar (demanda inelástica). O estudante que compra com dois meses de antecedência paga R$ 400 porque tem flexibilidade (demanda elástica). A companhia aérea não está sendo "generosa" com o estudante — está maximizando lucro ao extrair mais de quem pode pagar mais e ainda assim vender para quem pagaria menos.

**Por que isso importa:** A discriminação de preços pode, em alguns casos, aumentar a quantidade total vendida e até reduzir a perda de peso morto — o que complica o juízo de política concorrencial e exige análise caso a caso pelo CADE.
:::


::: {.boxmundobox title="Box Mundo 15.3 — Discriminação de preços nas ferrovias europeias"}

**Contexto:** O transporte ferroviário europeu oferece um exemplo notável de discriminação de preços sofisticada, combinando técnicas de segundo e terceiro grau em escala continental. Operadoras como a Deutsche Bahn (Alemanha), a SNCF (França) e a Eurostar (Londres–Paris–Bruxelas) praticam estratégias de precificação que espelham as do setor aéreo, com uma particularidade: as ferrovias europeias operam em um regime de concorrência limitada, protegidas pela infraestrutura fixa das linhas férreas (uma barreira natural clássica).

**Dados:** Uma passagem Eurostar Londres–Paris pode variar de £39 (compra com 3 meses de antecedência, horário fora de pico) a £400+ (compra de última hora, horário de pico, classe business) — uma razão de preços superior a 10:1 para o mesmo trajeto. A Deutsche Bahn oferece o sistema *BahnCard*: uma tarifa em duas partes (Seção 15.8) na qual o passageiro paga uma anuidade (€59,90 para BahnCard 25; €244,90 para BahnCard 50) e recebe, em troca, desconto de 25% ou 50% em todas as viagens. Segundo dados da Deutsche Bahn (Relatório Anual 2023), mais de 5 milhões de passageiros possuem algum tipo de BahnCard — evidência de que a tarifa em duas partes é eficaz na extração de excedente de viajantes frequentes.

**Análise:** A estrutura tarifária das ferrovias europeias combina discriminação de terceiro grau (descontos para jovens, idosos e grupos) com discriminação de segundo grau (autosseleção por antecedência de compra e classe de serviço). O sistema BahnCard é particularmente elegante do ponto de vista teórico: funciona exatamente como a tarifa em duas partes da Seção 15.8, onde a anuidade é a taxa de entrada $T$ e o desconto reduz o preço marginal por viagem $p$. Viajantes frequentes (alta demanda, tipo A) se autosselecionam para BahnCards mais caras, revelando sua alta disposição a pagar.

**Fonte:** Eurostar Group Limited, *Annual Report 2023*. Deutsche Bahn AG, *Integrated Report 2023*. European Commission, DG MOVE, *Statistical Pocketbook: EU Transport in Figures 2023*.
:::


No gráfico interativo abaixo, alterne entre os três graus de discriminação e observe como cada tipo afeta a extração de excedente e a eficiência alocativa.

\figurePlaceholder{/micro-book/graficos/cap15/discriminacao-precos.html}


**Figura 15.3 — Discriminação de preços.** Alterne entre discriminação de 1º grau (perfeita), 2º grau (tarifa em duas partes) e 3º grau (dois mercados). Observe como cada tipo afeta a extração de excedente e a eficiência alocativa.


O exercício a seguir aplica a discriminação de terceiro grau a um problema com dois mercados.


::: {.exresolvidobox title="Exercício Resolvido 15.4 — Discriminação de terceiro grau com dois mercados"}
**Enunciado.** Um monopolista vende em dois mercados: $p_1 = 120 - 2q_1$ e $p_2 = 80 - q_2$. O custo marginal é constante $CMg = 20$. (a) Com discriminação de 3º grau, encontre preços e quantidades em cada mercado. (b) Calcule os índices de Lerner e relacione com as elasticidades. (c) Calcule o lucro total.

---

**(a)** Receitas marginais: $RMg_1 = 120 - 4q_1$ e $RMg_2 = 80 - 2q_2$.

Igualando ao CMg:

$$
120 - 4q_1 = 20 \implies q_1 = 25, \quad p_1 = 120 - 50 = 70
$$

$$
80 - 2q_2 = 20 \implies q_2 = 30, \quad p_2 = 80 - 30 = 50
$$

**(b)** Lerner no mercado 1: $L_1 = (70-20)/70 = 50/70 \approx 0{,}714$.

Elasticidade: $\varepsilon_1 = (-1/2)(70/25) = -1{,}4$, logo $L_1 = 1/1{,}4 \approx 0{,}714$. ✓

Lerner no mercado 2: $L_2 = (50-20)/50 = 30/50 = 0{,}60$.

Elasticidade: $\varepsilon_2 = (-1)(50/30) = -1{,}667$, logo $L_2 = 1/1{,}667 = 0{,}60$. ✓

O mercado 1 tem demanda mais inelástica ($|\varepsilon_1| = 1{,}4 < |\varepsilon_2| = 1{,}667$) e paga o preço mais alto ($p_1 = 70 > p_2 = 50$). Isso confirma a regra: o monopolista cobra mais do segmento com demanda mais inelástica.

**(c)** Lucro total:

$$
\pi = (70 - 20)(25) + (50 - 20)(30) = 1.250 + 900 = 2.150
$$
:::


\figurePlaceholder{/micro-book/graficos/cap15/webr-discriminacao-3grau.html}


**WebR 15.3 — Um preço para cada bolso: discriminação de 3º grau.** O código implementa o ER 15.4 com dois mercados segmentados. Observe que o mercado com demanda mais inelástica paga o preço mais alto — e verifique pela fórmula das elasticidades. Altere as inclinações `b1` e `b2` para ver como a diferença de preços responde à diferença de elasticidades.


::: {.exresolvidobox title="Exercício Resolvido 15.5 — Comparação dos três regimes: concorrência, monopólio e discriminação perfeita"}
**Enunciado.** Considere demanda $p = 50 - q$ e $CMg = 10$ (constante, sem custos fixos). (a) Encontre $(p, q, \pi)$ sob: (i) concorrência perfeita; (ii) monopólio com preço único; (iii) discriminação de primeiro grau. (b) Para cada caso, calcule EC, EP e PPM.

---

**(a)**

**(i) Concorrência perfeita:** $p = CMg = 10$, $q^c = 40$. $\pi = 0$.

**(ii) Monopólio:** $RMg = 50 - 2q = 10 \implies q^m = 20$, $p^m = 30$. $\pi = (30-10)(20) = 400$.

**(iii) Discriminação perfeita:** $q^{dp} = q^c = 40$ (quantidade eficiente). O monopolista cobra a disposição a pagar de cada consumidor. $\pi = \frac{1}{2}(50-10)(40) = 800$.

**(b)**

| Regime | EC | EP | PPM | W = EC + EP |
|---|---|---|---|---|
| Concorrência | 800 | 0 | 0 | 800 |
| Monopólio | 200 | 400 | 200 | 600 |
| Disc. perfeita | 0 | 800 | 0 | 800 |

**Interpretação:** A discriminação perfeita restaura a eficiência alocativa ($PPM = 0$), mas redistribui todo o excedente para o produtor. O excedente total é o mesmo que em concorrência perfeita (800), mas o consumidor não fica com nada. Isso mostra que eficiência e equidade são questões distintas — um tema central do Capítulo 14 (Teoremas do Bem-Estar).
:::


---

### 15.8 Pague para Entrar, Pague para Brincar: Tarifas em Duas Partes {#158}

Se você já pagou mensalidade de academia e *depois* pagou por aula extra, ou comprou o cartão do Sam's Club para ter o "privilégio" de comprar lá dentro, você já foi vítima (voluntária) de uma tarifa em duas partes. Essa é uma das formas mais elegantes e difundidas de precificação não-linear. Diferentemente dos esquemas de discriminação discutidos na seção anterior, que exigem observar ou induzir a revelação de tipos, a tarifa em duas partes combina simplicidade operacional com capacidade de extração de excedente, razão pela qual é amplamente utilizada em setores que vão de telecomunicações a academias de ginástica, de parques de diversões a clubes de compras.

Uma tarifa em duas partes consiste em uma **taxa de entrada** (tarifa fixa $T$) e um **preço por unidade** ($p$). O gasto total do consumidor é $G = T + p \cdot q$. O papel de cada componente é distinto: a taxa fixa extrai excedente inframarginal (que o consumidor obteria ao preço $p$); o preço por unidade governa a quantidade demandada e, portanto, a eficiência alocativa.

#### Consumidores homogêneos

Se todos os consumidores são idênticos, a estratégia ótima é simples e elegante:

1. Fixar $p = CMg$ (preço eficiente).
2. Fixar $T = EC$ (capturar todo o excedente do consumidor).

Isso replica o resultado da discriminação de primeiro grau: quantidade eficiente e extração completa do excedente. A intuição é direta: o preço unitário garante eficiência (elimina a PPM) e a taxa fixa transfere todo o benefício para o produtor.

#### Consumidores heterogêneos

Com consumidores heterogêneos, o problema é mais complexo e envolve o trade-off fundamental da discriminação de segundo grau: extrair mais de cada consumidor versus manter consumidores de baixa demanda no mercado. Se a taxa de entrada for muito alta, consumidores com baixa demanda deixam o mercado. O monopolista enfrenta um trade-off entre:

- Cobrar uma taxa alta e perder consumidores marginais.
- Cobrar uma taxa baixa e atender mais consumidores, mas extrair menos excedente de cada um.

A solução ótima tipicamente envolve $p > CMg$ e $T < EC$ do consumidor com menor demanda. O preço acima do custo marginal gera uma PPM residual — o custo da heterogeneidade informacional.


::: {.tipbox title="Exemplos de tarifas em duas partes"}
- Clubes de compras como o Sam's Club (anuidade + preço por produto).
- Parques de diversões como a Disney (entrada + valor por brinquedo — ou entrada com tudo incluso, que é um caso limite).
- Planos telefônicos (assinatura mensal + tarifa por minuto/dados).
- Serviços de streaming (assinatura fixa com acesso ao catálogo).
- Academias de ginástica (mensalidade + taxa por aula ou mensalidade fixa com acesso livre).
:::


::: {.exresolvidobox title="Exercício Resolvido 15.6 — Tarifa em duas partes com dois tipos de consumidores"}
**Enunciado.** Uma academia de ginástica (monopolista local) cobra tarifa em duas partes $(T, p)$ por aula. Tipo A: $q_A = 30 - p$, 50 consumidores. Tipo B: $q_B = 20 - p$, 50 consumidores. $CMg = 2$ por aula. (a) Se a academia atende ambos os tipos, encontre $(T^*, p^*)$. (b) Se atende apenas o Tipo A, encontre $(T^*, p^*)$ e compare os lucros.

---

**(a) Atendendo ambos os tipos:**

A taxa fixa é limitada pelo excedente do Tipo B (o mais restrito): $T = EC_B(p) = \frac{1}{2}(20-p)^2$.

Lucro total: $\Pi = 50 \times [\text{lucro por A}] + 50 \times [\text{lucro por B}]$, onde o lucro por consumidor é $T + (p-2) \cdot q_i$.

Após simplificação e otimização (derivando em relação a $p$):

$$
\frac{d\Pi}{dp} = 0 \implies p^* = 7
$$

Logo $T^* = \frac{1}{2}(20-7)^2 = 84{,}50$. Quantidades: $q_A = 23$, $q_B = 13$.

Lucro por A: $84{,}50 + (7-2)(23) = 199{,}50$. Lucro por B: $84{,}50 + (7-2)(13) = 149{,}50$.

$\Pi = 50 \times (199{,}50 + 149{,}50) = 17.450$.

**(b) Atendendo apenas o Tipo A:**

Maximizar extração sobre A: $p^* = CMg = 2$, $T^* = EC_A(2) = \frac{1}{2}(30-2)^2 = 392$.

Verificação: Tipo B não participa, pois $EC_B(2) = \frac{1}{2}(18)^2 = 162 < T = 392$. ✓

$\Pi = 50 \times 392 = 19.600$.

**Resultado:** Atender apenas o Tipo A ($\Pi = 19.600$) é mais lucrativo do que atender ambos ($\Pi = 17.450$). O monopolista prefere excluir o Tipo B e extrair o máximo do Tipo A — ilustrando como a heterogeneidade de demanda pode levar à exclusão ineficiente de consumidores.
:::



## 15.9–15.10 Regulação e Visão Dinâmica do Monopólio

### 15.9 Domar a Fera: Regulação de Monopólios {#159}

As seções anteriores documentaram os custos sociais do monopólio — perda de peso morto, distorção de preços e quantidades — e as estratégias que o monopolista utiliza para maximizar a extração de excedente. Diante dessas ineficiências, surge naturalmente a questão: o que a sociedade pode fazer? Em mercados onde o monopólio pode ser eliminado (por exemplo, removendo barreiras legais desnecessárias), a promoção da concorrência é o caminho mais direto. Mas em monopólios naturais — nos quais a tecnologia torna ineficiente a presença de múltiplas firmas — a regulação torna-se o instrumento central de política pública.

O dilema central da regulação é: como induzir a firma a produzir mais e cobrar menos, sem eliminar seus incentivos ao investimento e à eficiência? Como veremos, os diferentes regimes regulatórios representam soluções distintas para esse dilema, cada uma com seus trade-offs.

#### Regulação pelo custo marginal (first-best)

A solução ideal seria impor $p = CMg$. Entretanto, em um monopólio natural com custos médios decrescentes, $CMg < CMe$, de modo que $p = CMg$ gera **prejuízo**. A firma não cobre seus custos fixos e, a menos que receba um subsídio, sairá do mercado. O governo precisaria subsidiar a firma, o que acarreta distorções em outros mercados (custo dos fundos públicos). Estimativas típicas do custo marginal dos fundos públicos no Brasil variam de 0,20 a 0,50 — ou seja, cada R$ 1 de subsídio impõe um custo adicional de R$ 0,20 a R$ 0,50 em distorções tributárias em outros mercados.

#### Regulação pelo custo médio (second-best)

A alternativa mais comum é impor $p = CMe$, garantindo lucro zero. A firma produz mais do que o monopólio sem regulação, mas menos do que o first-best. Há uma PPM residual, menor que a do monopólio não regulado. Esse é o modelo conceitual por trás da regulação das distribuidoras de energia no Brasil pela ANEEL: nas revisões tarifárias periódicas, a agência calcula uma "receita requerida" que cobre os custos eficientes (não os custos reais, para preservar incentivos) e divide pelo volume esperado de energia, chegando a uma tarifa que, em princípio, garante lucro econômico zero.

#### Regulação por teto de preços (price cap)

O regulador fixa um teto de preço que é reajustado periodicamente pela inflação menos um fator de produtividade:

$$
\Delta p \leq \text{inflação} - X
$$

O fator $X$ captura ganhos de eficiência esperados. A firma retém ganhos de produtividade acima de $X$ até a próxima revisão, o que incentiva a redução de custos. Entre as revisões, a firma é uma "maximizadora residual" — quanto mais cortar custos, maior seu lucro. Esse incentivo à eficiência é a principal vantagem do price cap sobre a regulação por taxa de retorno.


::: {.notebox title="Vantagem do price cap"}
O sistema de price cap, introduzido no Reino Unido por Stephen Littlechild (1983) para a privatização da British Telecom, possui vantagens informacionais sobre a regulação por taxa de retorno: o regulador não precisa conhecer detalhadamente a estrutura de custos da firma. Em contrapartida, pode induzir redução de qualidade se os padrões de serviço não forem adequadamente monitorados — razão pela qual reguladores como a ANATEL complementam o price cap com metas de qualidade.
:::


#### Regulação por taxa de retorno (rate of return)

O regulador permite que a firma obtenha uma taxa de retorno "justa" $s$ sobre o capital investido $K$:

$$
pq - wL - rK \leq (s - r)K
\label{eq:15.14} \tag{15.14} 
$$


Averch e Johnson (1962) demonstraram que esse esquema induz a firma a **sobreinvestir em capital** para inflar a base de remuneração — o chamado **efeito Averch-Johnson**. A firma substitui trabalho por capital além do socialmente ótimo, resultando em ineficiência produtiva. Intuitivamente, se a firma lucra proporcionalmente ao capital empregado, ela tem incentivo para empregar mais capital do que o necessário — como um taxista que compra um carro de luxo desnecessário se pudesse repassar o custo ao regulador. Esse resultado é um exemplo clássico de consequências não intencionais da regulação.


::: {.infobox title="Prêmio Nobel — Jean Tirole (2014)"}

**Jean Tirole** (1953–presente) é um economista francês. Obteve o PhD no MIT sob orientação de Eric Maskin e é professor na Toulouse School of Economics (TSE), que ajudou a transformar em um dos principais centros de pesquisa econômica do mundo.

**Por que ganhou o Nobel:**
Premiado por sua análise do poder de mercado e da regulação. Tirole desenvolveu a teoria moderna de regulação de monopólios sob informação assimétrica (com Jean-Jacques Laffont), mostrando como desenhar contratos regulatórios quando o regulador não conhece os custos da firma. Suas contribuições à organização industrial unificaram a teoria do monopólio, oligopólio e barreiras à entrada em um framework analítico coerente baseado na teoria dos jogos.

**Conexão com este capítulo:**
A análise de regulação de monopólio natural — regulação por custo marginal, custo médio e tarifas em duas partes — apresentada neste capítulo é o ponto de partida da agenda de pesquisa de Tirole. Sua contribuição foi mostrar que, na prática, o regulador enfrenta informação assimétrica sobre os custos da firma, o que torna o problema de regulação fundamentalmente um problema de desenho de mecanismos — conectando este capítulo diretamente ao Capítulo 19 (Informação Assimétrica).
:::


::: {.boxbrasilbox title="Box Brasil 15.2 — Monopólios naturais regulados: o setor elétrico e telecomunicações pós-privatização"}
O Brasil passou por extenso processo de privatização e regulação de monopólios naturais nos anos 1990. Dois casos emblemáticos ilustram os desafios da regulação:

**Setor Elétrico**

A reestruturação do setor elétrico brasileiro, iniciada em 1995 (Lei 8.987/1995 e Lei 9.074/1995), separou as atividades de geração, transmissão e distribuição. A distribuição de energia — um monopólio natural em cada área de concessão — é regulada pela ANEEL (Agência Nacional de Energia Elétrica), criada em 1996. A ANEEL realiza revisões tarifárias periódicas (a cada 4 ou 5 anos) utilizando o modelo de **empresa de referência** e aplica reajustes anuais baseados no IGP-M. Segundo dados da ANEEL, o Brasil possui 53 distribuidoras reguladas, atendendo mais de 90 milhões de unidades consumidoras. A tarifa média residencial brasileira, em 2024, situava-se entre R$ 0,60 e R$ 0,90 por kWh (com tributos), uma das mais altas do mundo em proporção à renda.

**Telecomunicações**

A privatização do Sistema Telebrás em 1998 transferiu ao setor privado o monopólio estatal de telecomunicações. A [ANATEL](https://www.anatel.gov.br) (Agência Nacional de Telecomunicações), criada pela Lei 9.472/1997, regula concessões e autorizações. Na telefonia fixa, as concessionárias originais (Oi, Telefônica/Vivo, Embratel) enfrentaram obrigações de universalização e controle tarifário (price cap com fator X de produtividade). A telefonia móvel, operando em regime de autorização, desenvolveu-se em um oligopólio com quatro operadoras principais (Vivo, Claro, TIM, Oi). A venda dos ativos móveis da Oi em 2022 para Vivo, Claro e TIM reduziu o mercado a três grandes operadoras, levantando preocupações concorrenciais analisadas pelo CADE.

| Indicador | Setor Elétrico | Telecomunicações |
|---|---|---|
| Agência reguladora | ANEEL (1996) | ANATEL (1997) |
| Modelo regulatório | Empresa de referência + price cap | Price cap com fator X |
| Nº de distribuidoras/operadoras | 53 distribuidoras | 3 grandes operadoras (móvel) |
| Universalização | ~99,8% de acesso | ~98% de cobertura 4G |
| Principal desafio atual | Transição energética e tarifas | 5G e competição em banda larga |

Ambos os setores ilustram o dilema fundamental da regulação de monopólios naturais: garantir eficiência produtiva e preços acessíveis sem eliminar os incentivos ao investimento. Para o contexto institucional e fiscal da regulação de monopólios naturais no Brasil, ver Giambiagi & Além (2016).
:::


::: {.boxbrasilbox title="Box Brasil 15.3 — ANS e a regulação dos planos de saúde como controle de monopólio"}

**Contexto:** A **Agência Nacional de Saúde Suplementar (ANS)**, criada pela Lei n.º 9.961/2000, regula o mercado de planos de saúde no Brasil — um setor com características de oligopólio concentrado e fortes assimetrias de informação. Em 2024, o setor atendia cerca de 51 milhões de beneficiários (aproximadamente 25% da população), movimentando mais de R$ 300 bilhões em receitas anuais. As quatro maiores operadoras (Hapvida-NotreDame Intermédica, Bradesco Saúde, SulAmérica e Amil) concentram mais de 35% do mercado, e em muitas regiões uma ou duas operadoras detêm posição dominante — configurando monopólios ou duopólios locais.

**Dados:** A ANS utiliza diversos instrumentos regulatórios que espelham os mecanismos discutidos neste capítulo: (i) **teto de reajuste** para planos individuais — análogo ao *price cap* (Seção 15.9), fixado anualmente pela ANS com base na variação de custos do setor (reajuste máximo de 6,91% em 2024); (ii) **rol de procedimentos obrigatórios** — que funciona como regulação de qualidade mínima, impedindo que operadoras reduzam custos eliminando coberturas essenciais; (iii) **ressarcimento ao SUS** — quando beneficiários de planos usam o sistema público, a operadora deve reembolsar o SUS, internalizando parte do custo social. A sinistralidade média do setor (razão entre despesas assistenciais e receitas de contraprestações) situou-se em torno de 85% em 2023, indicando margens operacionais comprimidas.

**Análise:** O mercado de planos de saúde combina duas falhas de mercado estudadas neste livro: **poder de mercado** (Capítulo 15) e **informação assimétrica** (Capítulo 19). A concentração regional confere às operadoras poder de precificação, enquanto a complexidade dos contratos gera assimetria entre operadora e beneficiário. A regulação da ANS enfrenta o dilema clássico de Tirole: sem informação perfeita sobre os custos das operadoras, o regulador não consegue distinguir ineficiência operacional de custos genuinamente elevados. O teto de reajuste para planos individuais protege consumidores cativos, mas pode desestimular a entrada de novos competidores e levar à deterioração da qualidade — exatamente o trade-off previsto pela teoria de regulação por price cap.

**Para refletir:** Os planos coletivos (empresariais e por adesão), que representam mais de 80% do mercado, não estão sujeitos ao teto de reajuste da ANS — seus preços são negociados livremente. Usando a teoria de discriminação de preços do Capítulo 15, analise: por que a ANS regula os reajustes individuais mas não os coletivos? A resposta envolve a diferença de poder de barganha (elasticidade da demanda) entre os dois segmentos.
:::


No gráfico interativo abaixo, visualize como diferentes regimes regulatórios afetam preço, quantidade e bem-estar em um monopólio natural com custo médio decrescente. Alterne entre os três regimes e observe os trade-offs.

\figurePlaceholder{/micro-book/graficos/cap15/regulacao-monopolio.html}


**Figura 15.4 — Regulação de monopólio natural.** Alterne entre monopólio não regulado, regulação pelo custo marginal (first-best, com subsídio) e regulação pelo custo médio (second-best, lucro zero). Compare preços, quantidades e perda de peso morto em cada regime.


O exercício a seguir aplica os três regimes regulatórios a um caso numérico de monopólio natural.


::: {.exresolvidobox title="Exercício Resolvido 15.7 — Regulação de monopólio natural"}
**Enunciado.** Uma distribuidora de água (monopólio natural) tem custo total $C(q) = 500 + 10q$ e enfrenta demanda $p = 60 - 0{,}5q$. (a) Calcule o equilíbrio sem regulação. (b) Calcule o resultado com regulação *first-best* ($p = CMg$) e mostre o prejuízo. (c) Calcule o resultado *second-best* ($p = CMe$).

---

**(a) Monopólio não regulado:**

$RMg = 60 - q$, $CMg = 10$.

$$
60 - q = 10 \implies q^m = 50, \quad p^m = 60 - 25 = 35
$$

$\pi^m = (p^m - CMg) \times q^m - CF = (35-10)(50) - 500 = 1.250 - 500 = 750$.

$$
q^m = 50, \quad p^m = 35, \quad \pi^m = 750
$$

**(b) Regulação first-best ($p = CMg = 10$):**

$$
10 = 60 - 0{,}5q \implies q^{fb} = 100, \quad p^{fb} = 10
$$

$\pi^{fb} = 10 \times 100 - (500 + 1.000) = 1.000 - 1.500 = -500$.

O prejuízo de R$ 500 corresponde exatamente ao custo fixo: com $p = CMg$, a receita cobre apenas o custo variável. O governo precisaria subsidiar R$ 500 para manter a firma no mercado.

**(c) Regulação second-best ($p = CMe$):**

$CMe = 500/q + 10$. Igualando à demanda inversa:

$$
60 - 0{,}5q = \frac{500}{q} + 10 \implies 50 - 0{,}5q = \frac{500}{q}
$$

$$
50q - 0{,}5q^2 = 500 \implies 0{,}5q^2 - 50q + 500 = 0 \implies q^2 - 100q + 1.000 = 0
$$

$$
q = \frac{100 \pm \sqrt{10.000 - 4.000}}{2} = \frac{100 \pm \sqrt{6.000}}{2} = \frac{100 \pm 77{,}46}{2}
$$

Tomando a raiz maior (mais produção): $q^{sb} \approx 88{,}7$, $p^{sb} = 60 - 44{,}4 = 15{,}6$.

Lucro: $\pi^{sb} = 0$ (por construção). A PPM residual é a área do triângulo entre $q^{sb}$ e $q^{fb}$:

$$
PPM^{sb} = \frac{1}{2}(p^{sb} - CMg)(q^{fb} - q^{sb}) = \frac{1}{2}(15{,}6 - 10)(100 - 88{,}7) = \frac{1}{2}(5{,}6)(11{,}3) \approx 31{,}6
$$

Compare: $PPM^m = \frac{1}{2}(35-10)(100-50) = 625$. A regulação *second-best* reduz a PPM de 625 para apenas 31,6 — uma melhoria de 95%.

**Interpretação:** A regulação por custo médio é o modelo adotado pela ANEEL para distribuidoras de energia no Brasil. Ela garante lucro zero para a concessionária enquanto expande significativamente o acesso, a um custo de eficiência relativamente baixo.
:::


\figurePlaceholder{/micro-book/graficos/cap15/webr-regulacao.html}


**WebR 15.4 — Três regimes de regulação: do monopólio ao first-best.** O código resolve o ER 15.7 completo: monopólio não regulado, regulação por custo marginal (first-best, com prejuízo) e regulação por custo médio (second-best, lucro zero). Compare os três pontos no gráfico e observe como a PPM cai 95% com a regulação second-best. Altere `CF` para ver como o custo fixo afeta a viabilidade do first-best.


---

### 15.10 O Vilão Também Inova: Visões Dinâmicas do Monopólio {#1510}

Hora de virar a mesa. Passamos o capítulo inteiro tratando o monopolista como o grande vilão da economia — e com razão: ele produz menos, cobra mais e destrói excedente. Mas e se o monopólio, visto com outros olhos, fosse também o motor que faz a economia avançar? A análise conduzida até aqui é predominantemente estática: comparamos o monopólio com a concorrência perfeita em um dado momento do tempo. Entretanto, quando adotamos uma perspectiva dinâmica — incorporando inovação, progresso tecnológico e entrada potencial —, o julgamento sobre os custos e benefícios do monopólio torna-se mais nuançado. Será que o monopólio é sempre prejudicial à sociedade, ou pode ele desempenhar um papel positivo como motor de inovação e progresso técnico? Essa questão, levantada originalmente por Joseph Schumpeter no contexto da Grande Depressão, permanece no centro dos debates contemporâneos sobre política antitruste — especialmente em setores tecnológicos dominados por grandes plataformas como Google, Amazon e Meta.

#### Schumpeter e a destruição criativa

Joseph Schumpeter (1942) argumentou que o monopólio pode ser socialmente benéfico quando considerado em perspectiva dinâmica. Segundo essa visão:

- Lucros de monopólio são a **recompensa pela inovação** e constituem o incentivo fundamental para o progresso tecnológico. Sem a perspectiva de lucros extraordinários, as firmas não assumiriam os riscos e custos do investimento em pesquisa e desenvolvimento.
- A concorrência relevante não é a concorrência de preços estática, mas a **concorrência por inovação** — a "destruição criativa" pela qual novos produtos e processos tornam obsoletos os anteriores. O smartphone destruiu o mercado de câmeras fotográficas compactas; o streaming destruiu as videolocadoras; os aplicativos de transporte transformaram o mercado de táxis.
- Firmas com poder de mercado têm maiores recursos para investir em P&D e podem proteger os frutos da inovação por mais tempo, o que fortalece os incentivos para inovar.

A hipótese schumpeteriana gerou extensa literatura empírica, com resultados ambíguos. A relação entre concentração de mercado e inovação parece seguir uma curva em U invertido (Aghion et al., 2005): algum grau de poder de mercado estimula a inovação, mas poder excessivo a inibe. Em setores com poder de mercado moderado, as firmas inovam mais para escapar da concorrência; em setores altamente concentrados, o incentivo diminui porque o incumbente já é lucrativo.

#### Mercados contestáveis

Baumol, Panzar e Willig (1982) propuseram a teoria dos **mercados contestáveis**: se a entrada e a saída do mercado são livres e sem custos irrecuperáveis (sunk costs), a mera **ameaça** de entrada é suficiente para disciplinar o monopolista. Mesmo um monopolista cobraria preços competitivos se a entrada fosse perfeitamente livre.


::: {.definitionbox title="Mercado Contestável"}
Um mercado é **perfeitamente contestável** se: (i) não há custos irrecuperáveis de entrada e saída; (ii) entrantes potenciais têm acesso à mesma tecnologia do incumbente; (iii) consumidores respondem instantaneamente a diferenças de preço. Nessas condições, a ameaça de "hit-and-run" — entrada para capturar lucros seguida de saída — disciplina o incumbente.
:::


Na prática, poucos mercados satisfazem essas condições rigorosas. Custos irrecuperáveis são a norma, não a exceção — fábricas, equipamentos especializados, marcas construídas ao longo de anos não podem ser recuperados à saída. Ainda assim, a teoria da contestabilidade fornece um benchmark útil e lembra que barreiras à entrada — não a estrutura de mercado per se — são o determinante fundamental do poder de mercado. Um mercado com uma única firma mas baixas barreiras à entrada pode ser mais competitivo do que um mercado com muitas firmas mas altas barreiras.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Para Schumpeter, os lucros de monopólio são o combustível da inovação — sem a promessa de lucros extraordinários, ninguém assume o risco de inventar algo novo.

**Pense assim:** Imagine que desenvolver um novo medicamento custa R$ 5 bilhões e leva 10 anos. Se, ao final do processo, qualquer concorrente pudesse copiar a fórmula e vender a preço de custo, nenhuma empresa investiria na pesquisa. A patente — que cria um monopólio temporário — é a "cenoura" que justifica o investimento. A perda de peso morto durante a vigência da patente é o "preço" que a sociedade paga pela inovação futura.

**Por que isso importa:** Esse argumento é central no debate sobre a duração de patentes farmacêuticas e sobre a regulação de big techs: punir poder de mercado de forma muito agressiva pode sufocar a inovação que gera bem-estar no longo prazo. A política antitruste ótima precisa equilibrar eficiência estática (eliminar PPM) e eficiência dinâmica (preservar incentivos à inovação).
:::


::: {.exresolvidobox title="Exercício Resolvido 15.8 — Inovação sob monopólio vs. concorrência (hipótese schumpeteriana)"}
**Enunciado.** Um monopolista farmacêutico pode investir $I$ em P&D, reduzindo seu custo marginal de $c_0 = 40$ para $c_1 = 40 - \sqrt{I}$ (com $I \leq 1.600$). A demanda é $p = 100 - q$. (a) Qual o investimento ótimo em P&D? (b) Se o mercado fosse competitivo e a inovação fosse imediatamente imitável (spillover total), qual seria o investimento? (c) Comente sobre a hipótese schumpeteriana.

---

**(a)** Com CMg = $40 - \sqrt{I}$, o monopolista resolve:

$RMg = 100 - 2q = 40 - \sqrt{I} \implies q^m = 30 + \frac{\sqrt{I}}{2}$.

$p^m = 100 - q^m = 70 - \frac{\sqrt{I}}{2}$.

$\pi = (p^m - CMg) \cdot q^m - I = \left(30 + \frac{\sqrt{I}}{2}\right)^2 - I$.

Seja $s = \sqrt{I}$:

$\pi(s) = \left(30 + \frac{s}{2}\right)^2 - s^2 = 900 + 30s + \frac{s^2}{4} - s^2 = 900 + 30s - \frac{3s^2}{4}$.

$\frac{d\pi}{ds} = 30 - \frac{3s}{2} = 0 \implies s^* = 20 \implies I^* = 400$.

Resultado: CMg cai para 20, $q^m = 40$, $p^m = 60$, $\pi = 1.200$ (líquido de I).

**(b)** Sob concorrência com spillover total, qualquer redução de custo é imediatamente copiada. Como $p = CMg$ e $\pi = 0$, nenhuma firma recupera o investimento. Logo $I^* = 0$.

**(c)** Este resultado ilustra a hipótese schumpeteriana: o monopolista investe 400 em P&D (reduzindo o custo marginal pela metade), enquanto o mercado competitivo não investe nada. O poder de mercado é a "recompensa" que viabiliza a inovação. Contudo, o argumento depende criticamente da hipótese de spillover total; na prática, patentes e segredos industriais permitem que firmas competitivas também se apropriem de inovações, atenuando a vantagem schumpeteriana do monopólio.
:::


\figurePlaceholder{/micro-book/graficos/cap15/webr-inovacao-schumpeter.html}


**WebR 15.5 — O vilão também inova: P&D sob monopólio.** O código implementa o ER 15.8: o monopolista escolhe quanto investir em P&D para reduzir seu custo marginal. Compare o investimento ótimo ($I^* = 400$) com o investimento zero da concorrência com spillover total. Altere `c0` e observe como o incentivo à inovação muda com o nível inicial de custo.


---

Abrimos o capítulo com um único vendedor, zero concorrência e um sorriso no rosto. Ao longo da análise, vimos que esse sorriso tem consequências: preço acima do custo marginal, produção abaixo do socialmente desejável e uma perda de peso morto que ninguém captura. Mas também vimos que o monopólio não é um vilão unidimensional — Schumpeter nos lembrou que, sem a promessa de lucros extraordinários, talvez não houvesse iPhone, Netflix nem vacina de mRNA.

*O monopolista reina sozinho. Mas e quando há dois? Três? Poucos — e isso muda tudo. É o próximo capítulo.*


## Exercícios e ANPEC — Capítulo 15


::: {.tipbox title="Dados para exercicios empiricos"}
- **ANEEL (tarifas de energia):** [aneel.gov.br/dados-abertos](https://www.aneel.gov.br/dados-abertos) — Tarifas por distribuidora para calcular indices de Lerner e avaliar regulacao de monopolio natural (price cap vs. taxa de retorno).
- **CADE (atos de concentracao):** [cade.gov.br](https://www.gov.br/cade/pt-br) — Pareceres publicos sobre monopolio e abuso de posicao dominante. Analise o caso Ambev ou da Souza Cruz.
- **ANS (planos de saude):** [ans.gov.br/dados-abertos](https://dados.gov.br/dados/organizacoes/visualizar/agencia-nacional-de-saude-suplementar-ans) — Dados de concentracao de mercado por municipio para identificar monopolios regionais em saude.
:::


### Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.


::: {.infobox title="1. O monopolista maximiza lucro igualando receita marginal ao custo marginal. A receita marginal é menor que o preço porque:"}
- (a) O monopolista opera com custos mais altos que firmas competitivas
- (b) Para vender uma unidade adicional, o monopolista deve reduzir o preço de todas as unidades, gerando um efeito negativo sobre a receita das unidades inframarginais
- (c) O governo taxa a receita do monopolista
- (d) A demanda pelo bem do monopolista é perfeitamente elástica

??? success "Resposta"
    **(b)** Diferentemente da firma competitiva (que é tomadora de preço), o monopolista enfrenta toda a curva de demanda. Vender mais exige reduzir o preço, o que diminui a receita das unidades já vendidas. Assim, $\text{RMg} = p + q \cdot dp/dq = p(1 + 1/\varepsilon_d) < p$. A alternativa (d) descreve concorrência perfeita, não monopólio.
:::


::: {.infobox title="2. O índice de Lerner mede o poder de mercado como:"}
- (a) $L = (p - \text{CMe})/p$
- (b) $L = (p - \text{CMg})/p = -1/\varepsilon_d$
- (c) $L = \text{lucro total}/\text{receita total}$
- (d) $L = \text{CMg}/p$

??? success "Resposta"
    **(b)** O índice de Lerner $L = (p - \text{CMg})/p$ mede o markup percentual sobre o custo marginal. Em equilíbrio, $L = -1/\varepsilon_d$: quanto menos elástica a demanda, maior o poder de mercado. Em concorrência perfeita, $L = 0$ ($p = \text{CMg}$). A alternativa (a) usa custo médio em vez de marginal; (c) é uma medida de lucratividade, não de poder de mercado.
:::


::: {.infobox title="3. Na discriminação de preços de primeiro grau (perfeita), o monopolista:"}
- (a) Cobra o mesmo preço de todos os consumidores
- (b) Cobra de cada consumidor exatamente sua disposição a pagar, extraindo todo o excedente do consumidor
- (c) Divide os consumidores em dois grupos e cobra preços diferentes
- (d) Reduz a quantidade abaixo do nível competitivo

??? success "Resposta"
    **(b)** Na discriminação perfeita, o monopolista conhece a disposição a pagar de cada consumidor e cobra preços personalizados. O excedente do consumidor é zero e todo o excedente vai para o monopolista. Curiosamente, a quantidade produzida é eficiente (igual à competitiva) — não há peso morto, embora a distribuição seja extremamente desigual. A alternativa (d) descreve o monopólio sem discriminação.
:::


::: {.infobox title="4. Um monopólio natural ocorre quando:"}
- (a) A firma detém uma patente sobre o produto
- (b) O custo médio é decrescente em toda a faixa relevante de demanda, de modo que uma única firma atende o mercado a custo menor do que duas ou mais
- (c) O governo concede exclusividade legal à firma
- (d) A firma possui o único recurso natural necessário à produção

??? success "Resposta"
    **(b)** O monopólio natural surge de economias de escala extremas: subaditividade de custos na faixa relevante. Duplicar a infraestrutura (ex.: rede elétrica, saneamento) seria socialmente custoso. A alternativa (a) descreve monopólio por patente; (c) descreve monopólio legal; (d) descreve monopólio por controle de recurso — todos são fontes de monopólio, mas não 'natural'.
:::


::: {.infobox title="5. A regulação por preço-teto (price cap) de um monopólio natural, fixando $p = \\text{CMe}$, resulta em:"}
- (a) Lucro econômico positivo para a firma
- (b) Produção eficiente ao nível de custo marginal
- (c) Lucro econômico zero (second-best), mas quantidade inferior ao ótimo de primeiro melhor ($p = \text{CMg}$)
- (d) Prejuízo para a firma, exigindo subsídio

??? success "Resposta"
    **(c)** Fixar $p = \text{CMe}$ garante viabilidade financeira (lucro zero) mas a quantidade é menor que a de $p = \text{CMg}$. A alternativa (d) descreve o que ocorre quando se tenta impor $p = \text{CMg}$ em monopólio natural com custos médios decrescentes — nesse caso, $\text{CMg} < \text{CMe}$ e a firma tem prejuízo. A regulação por CMe é o second-best que evita esse problema.
:::


---

### Resumo do Capítulo

- O monopólio surge quando barreiras à entrada (legais, naturais ou estratégicas) impedem a concorrência, permitindo que uma única firma fixe preços acima do custo marginal e obtenha lucros persistentes.
- O monopolista maximiza lucro igualando receita marginal ao custo marginal (RMg = CMg), operando sempre na faixa elástica da demanda. O markup sobre o custo marginal é inversamente proporcional à elasticidade-preço, conforme medido pelo índice de Lerner.
- O monopólio gera ineficiência alocativa: produz menos e cobra mais do que o resultado competitivo, criando uma perda de peso morto (triângulo de Harberger) que não é capturada por nenhum agente. O custo social total pode ser significativamente maior quando se incluem gastos com *rent-seeking*.
- A discriminação de preços (primeiro, segundo e terceiro graus) permite ao monopolista extrair mais excedente do consumidor, podendo, em alguns casos, aumentar a quantidade produzida e reduzir a perda de peso morto.
- A regulação de monopólios naturais enfrenta um dilema fundamental: a precificação pelo custo marginal gera prejuízos (first-best impraticável), enquanto a precificação pelo custo médio ou por teto de preços (price cap) representa soluções de second-best com trade-offs entre eficiência e incentivos ao investimento.
- As visões dinâmicas de Schumpeter (destruição criativa) e de Baumol (mercados contestáveis) relativizam os custos do monopólio, sugerindo que lucros de monopólio podem incentivar inovação e que a ameaça de entrada pode disciplinar o incumbente.

### Conceitos-Chave


| Conceito | Definição |
|----------|-----------|
| Poder de mercado | Capacidade de uma firma fixar preços acima do custo marginal e obter lucros econômicos persistentes |
| Monopólio natural | Mercado em que a função de custo é subaditiva, de modo que uma única firma produz a qualquer quantidade a custo menor do que duas ou mais firmas |
| Barreiras à entrada | Fatores (legais, naturais ou estratégicos) que impedem a entrada de concorrentes e protegem os lucros do monopolista |
| Índice de Lerner | Medida de poder de mercado dada por $L = (p - CMg)/p = 1/|\varepsilon_p|$; varia entre 0 (concorrência perfeita) e 1 |
| Perda de peso morto (triângulo de Harberger) | Redução no excedente total causada pela restrição de produção do monopolista, que não é capturada por nenhum agente |
| Discriminação de preços | Prática de cobrar preços diferentes de consumidores diferentes (ou por unidades diferentes), classificada em primeiro, segundo e terceiro graus |
| Tarifa em duas partes | Esquema de precificação com taxa fixa de entrada mais preço por unidade consumida |
| Regulação por price cap | Regime regulatório em que o preço é reajustado pela inflação menos um fator de produtividade (X), incentivando redução de custos |
| Efeito Averch-Johnson | Tendência de firmas reguladas por taxa de retorno a sobreinvestir em capital para inflar a base de remuneração |
| Mercado contestável | Mercado em que a ameaça de entrada e saída sem custos irrecuperáveis disciplina o incumbente, mesmo que haja apenas uma firma |


**Tabela 15.2 — Conceitos-chave.**


---

### Exercícios


::: {.exresolvidobox title="Exercício 15.1"}
Considere um monopolista com custo total $C(q) = 100 + 10q$ enfrentando demanda $p = 50 - 2q$.

a) Encontre o preço, a quantidade e o lucro de monopólio.

b) Calcule o índice de Lerner e a elasticidade-preço da demanda no ponto de equilíbrio.

c) Calcule a perda de peso morto e compare com o excedente total sob concorrência perfeita.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.2"}
Um monopolista atende dois mercados segmentados com demandas $p_1 = 100 - q_1$ e $p_2 = 60 - 2q_2$. O custo marginal é constante e igual a 20.

a) Encontre os preços e quantidades ótimos em cada mercado com discriminação de terceiro grau.

b) Calcule os índices de Lerner em cada mercado e relacione com as elasticidades.

c) Compare o lucro com discriminação ao lucro sem discriminação (preço uniforme ótimo).

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.3"}
O governo impõe um imposto unitário $t = 4$ sobre um monopolista com custo marginal constante $c = 10$ e demanda $p = 30 - q$.

a) Calcule preço, quantidade e lucro antes e depois do imposto.

b) Qual fração do imposto é repassada ao consumidor?

c) Compare a receita fiscal com a variação na perda de peso morto.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.4"}
Um monopolista natural tem custo total $C(q) = 1000 + 5q$. A demanda é $p = 45 - q$.

a) Calcule o resultado do monopólio não regulado.

b) Calcule o resultado sob regulação de custo marginal ($p = CMg$). Mostre que a firma tem prejuízo.

c) Calcule o resultado sob regulação de custo médio ($p = CMe$) e a PPM residual.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.5"}
Um monopolista pode adotar uma tarifa em duas partes $(T, p)$ para atender dois tipos de consumidores. O tipo 1 tem demanda $q_1 = 20 - p$ e o tipo 2 tem demanda $q_2 = 10 - p$. Há 100 consumidores de cada tipo. O custo marginal é $c = 2$.

a) Se o monopolista usa preço uniforme, qual é o preço ótimo?

b) Se usa tarifa em duas partes atendendo ambos os tipos, encontre $(T^*, p^*)$.

c) Se usa tarifa em duas partes atendendo apenas o tipo 1 (excluindo o tipo 2), encontre $(T^*, p^*)$ e compare os lucros.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.6"}
Um monopolista enfrenta a demanda $p = 80 - 0{,}5q$ e tem custo total $C(q) = 200 + 20q$.

a) Encontre a quantidade, o preço e o lucro de monopólio.

b) Calcule o índice de Lerner e verifique a relação $L = 1/|\varepsilon_d|$.

c) Se a demanda mudar para $p = 80 - 2q$ (mantendo o mesmo custo), recalcule o equilíbrio de monopólio e compare o poder de mercado nos dois casos.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.7"}
Um monopolista pode praticar discriminação de preços. A demanda individual de cada consumidor é $q = 10 - p$ e há 50 consumidores idênticos. O custo marginal é constante $c = 2$.

a) Calcule o lucro sob preço uniforme de monopólio (sem discriminação).

b) Calcule o lucro sob discriminação de primeiro grau (preços personalizados perfeitos).

c) Compare os excedentes do consumidor e do produtor nos dois casos. Há perda de peso morto sob discriminação perfeita?

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.8"}
Um monopolista natural opera com custo total $C(q) = 500 + 2q$ e demanda $p = 52 - q$.

a) Calcule o resultado do monopólio não regulado (preço, quantidade, lucro).

b) Calcule o resultado sob regulação de custo marginal ($p = CMg$). A firma é viável?

c) Calcule o resultado sob regulação de custo médio ($p = CMe$) e determine o subsídio necessário (se houver) para viabilizar a firma em cada regime regulatório.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.9"}
Considere um monopolista com custo marginal constante $c = 10$ e demanda $p = 100 - 2q$.

a) Calcule o equilíbrio de monopólio e a perda de peso morto (DWL).

b) Calcule a DWL como fração da receita do monopolista e como fração do excedente total competitivo.

c) Suponha que o custo marginal suba para $c' = 30$. Recalcule a DWL e mostre como ela varia com o nível do custo marginal. Interprete.

→ Ver solução (Cap. 15)
:::


::: {.exresolvidobox title="Exercício 15.10"}
Um monopolista de parque de diversões enfrenta consumidores idênticos, cada um com demanda por brinquedos $q = 24 - 2p$, onde $p$ é o preço por brinquedo. O custo marginal de cada brinquedo é $c = 2$. O monopolista usa uma tarifa em duas partes: cobra uma entrada fixa $T$ e um preço por brinquedo $p$.

a) Encontre a tarifa ótima em duas partes $(T^*, p^*)$ e o lucro por consumidor.

b) Compare com o lucro que o monopolista obteria usando apenas preço uniforme (sem entrada).

c) Suponha agora que haja dois tipos de consumidores: tipo A com demanda $q_A = 24 - 2p$ e tipo B com demanda $q_B = 12 - 2p$, em proporções iguais. Encontre a tarifa em duas partes ótima que atenda ambos os tipos.

→ Ver solução (Cap. 15)
:::


---

### Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).


::: {.infobox title="ANPEC 2016 — Questão 08"}
Com relação a poder de mercado, monopólio e monopsônio, é correto afirmar que:

**(0)** Se o custo marginal da empresa em monopólio for constante e igual a \$ 10, e a elasticidade-preço da demanda for igual a $-2$, o preço do produto será \$ 20;

**(1)** Quanto menos elástica for a curva de demanda de uma empresa, maior poder de monopólio ela terá;

**(2)** O poder de monopsônio permite à empresa compradora adquirir o produto por um preço inferior ao competitivo;

**(3)** Quanto menos elástica for a curva de oferta, maior será a diferença entre a despesa marginal e a despesa média, e maior será o poder de monopsônio do comprador;

**(4)** Chama-se captura de renda ao processo pelo qual as empresas aplicam recursos produtivos em atividade de lobby para adquirir, manter ou exercer seu poder de monopólio.

??? success "Gabarito"
    **Gabarito oficial: V-V-V-V-V**

    **(0) VERDADEIRO.** Pela regra de markup: $p = CMg/(1 - 1/|\varepsilon|) = 10/(1 - 1/2) = 10/0{,}5 = 20$.

    **(1) VERDADEIRO.** O índice de Lerner é $L = 1/|\varepsilon|$. Quanto menos elástica (menor $|\varepsilon|$), maior o Lerner e maior o poder de monopólio.

    **(2) VERDADEIRO.** O monopsonista iguala a despesa marginal (que excede o preço de oferta) ao valor do produto marginal do insumo, contratando menos unidades a um preço inferior ao que prevaleceria em concorrência.

    **(3) VERDADEIRO.** Com oferta $w = w(L)$, a despesa marginal é $DM = w + L \cdot dw/dL$. A diferença $DM - w = L \cdot dw/dL$ é maior quanto mais inclinada (menos elástica) for a curva de oferta, pois $dw/dL$ é maior.

    **(4) VERDADEIRO.** O comportamento descrito — aplicar recursos em lobby para obter ou manter poder de monopólio — corresponde ao conceito de *rent-seeking* (busca/captura de rendas), introduzido por Tullock (1967) e formalizado por Krueger (1974).
:::


::: {.infobox title="ANPEC 2015 — Questão 09"}
Julgue as afirmações relativas à Teoria do Monopólio:

**(0)** Uma firma monopolista, que opera com várias fábricas, aloca sua produção entre elas de forma a igualar o custo médio em cada uma das fábricas.

**(1)** Uma firma capaz de discriminação de preços de terceiro grau obtém lucro maior ou igual, em comparação com a situação na qual ela não fosse capaz de discriminar.

**(2)** Uma firma monopolista, que se depara com curva de demanda com elasticidade constante, é indiferente sobre a quantidade produzida.

**(3)** Para obter eficiência econômica, o regulador de um monopólio natural deve escolher a alocação que minimiza o custo médio unitário da firma.

**(4)** Se o monopolista for capaz de realizar discriminação de preços de primeiro grau, a alocação de recursos será eficiente em termos paretianos.

??? success "Gabarito"
    **Gabarito oficial: F-V-F-F-V**

    **(0) FALSO.** A firma multi-planta minimiza custos igualando os **custos marginais** (não os custos médios) entre fábricas: $CMg_1(q_1) = CMg_2(q_2) = \ldots$. Essa é a condição de Lagrange para a minimização de custo total sujeita a uma meta de produção.

    **(1) VERDADEIRO.** A capacidade de discriminar nunca reduz o lucro, pois o monopolista pode sempre replicar o preço uniforme como caso especial (cobrando o mesmo preço em todos os segmentos). Logo, $\pi_{\text{discriminação}} \geq \pi_{\text{uniforme}}$.

    **(2) FALSO.** Com demanda isoelástica ($q = Ap^{\varepsilon}$) e custo marginal positivo, a regra de markup $p = CMg/(1 - 1/|\varepsilon|)$ determina univocamente o preço e a quantidade ótimos. O monopolista não é indiferente.

    **(3) FALSO.** Eficiência econômica requer $p = CMg$ (*first-best*), que é a condição em que o benefício marginal do consumidor iguala o custo marginal da produção. Minimizar o custo médio gera uma alocação diferente e, em geral, ineficiente.

    **(4) VERDADEIRO.** Com discriminação perfeita, o monopolista produz a quantidade eficiente ($q^c$, onde $p = CMg$), eliminando toda a perda de peso morto. A alocação é Pareto-eficiente, embora todo o excedente seja apropriado pelo produtor ($EC = 0$).
:::


::: {.infobox title="ANPEC 2018 — Questão 08"}
Com relação à análise de discriminação de preços, indique quais das afirmativas a seguir são verdadeiras e quais são falsas:

**(0)** Na discriminação de preços de terceiro grau, a receita marginal deve ser igual para os diferentes grupos de consumidores e igual ao custo marginal;

**(1)** Na discriminação de preços de terceiro grau, o preço mais elevado será cobrado dos consumidores com demanda mais elástica;

**(2)** A discriminação de preços intertemporal cobra preços mais elevados dos consumidores mais impacientes, reduzindo o preço mais tarde para incentivar o consumo de massa;

**(3)** A tarifa em duas partes é eficaz quando as demandas dos consumidores são relativamente homogêneas;

**(4)** Quando as demandas são heterogêneas e estão positivamente correlacionadas, a prática do pacote pode ser uma técnica eficaz para a fixação de preços.

??? success "Gabarito"
    **Gabarito oficial: V-F-V-V-F**

    **(0) VERDADEIRO.** A condição de ótimo na discriminação de 3º grau é $RMg_1 = RMg_2 = \ldots = CMg$. O monopolista iguala as receitas marginais de todos os segmentos ao custo marginal.

    **(1) FALSO.** O preço mais elevado é cobrado do grupo com demanda **mais inelástica** (menor $|\varepsilon|$), não mais elástica. Pela relação $p_i = CMg/(1 - 1/|\varepsilon_i|)$, menor elasticidade implica maior preço.

    **(2) VERDADEIRO.** Na discriminação intertemporal, consumidores impacientes (alta disposição a pagar, demanda inelástica no tempo) compram imediatamente ao preço alto. O preço cai ao longo do tempo para capturar consumidores com menor disposição a pagar. Exemplos: livros em capa dura seguidos de edição de bolso, eletrônicos no lançamento.

    **(3) VERDADEIRO.** Com consumidores homogêneos, a tarifa em duas partes é particularmente eficaz: fixa-se $p = CMg$ e $T = EC$ do consumidor representativo, extraindo todo o excedente com eficiência alocativa plena.

    **(4) FALSO.** O *bundling* (venda em pacote) é mais eficaz quando as demandas dos bens estão **negativamente** correlacionadas, pois isso reduz a dispersão da disposição a pagar pelo pacote, permitindo melhor extração de excedente. Com correlação positiva, o pacote não reduz a heterogeneidade e o *bundling* é pouco eficaz.
:::


---


::: {.tipbox title="Exercício com IA"}
**IA.3 — Deadweight Loss do Monopólio**

Peça à IA para calcular o deadweight loss de um monopólio com demanda $P = 100 - 2Q$ e $CMg = 20$. Depois peça para ela comparar com discriminação de preços de 1º grau. A IA distinguiu corretamente os excedentes? Desenhe os gráficos para confirmar.

→ Ver exercício completo
:::



## Pesquisa em Ação — Capítulo 15

### Pesquisa em Ação


::: {.pesquisabox title="De Loecker, J., Eeckhout, J. & Unger, G. (2020). The Rise of Market Power and the Macroeconomic Implications. *Quarterly Journal of Economics*, 135(2), 561–644."}
**DOI:** [10.1093/qje/qjz041](https://doi.org/10.1093/qje/qjz041)

**Contexto.** O Capítulo 15 analisa o monopólio como estrutura de mercado, mas até que ponto o poder de mercado é um fenômeno relevante empiricamente? De Loecker, Eeckhout e Unger (2020) respondem a essa pergunta com uma análise abrangente do *markup* praticado pelas firmas nos Estados Unidos ao longo de seis décadas.

**Metodologia.** Os autores estimam *markups* firma a firma usando dados contábeis (Compustat) e a abordagem de produção de Hall (1988), que infere o *markup* como a razão entre a elasticidade-produto de um insumo variável e a participação desse insumo na receita. A grande inovação é aplicar esse método a um painel de milhares de firmas de 1955 a 2016, permitindo documentar a evolução do poder de mercado agregado.

**Resultados.** O *markup* médio na economia americana era relativamente estável em torno de 1,21 (21% acima do custo marginal) até 1980, mas subiu para 1,61 em 2016 — um aumento de 33%. Esse aumento é concentrado nas firmas do topo da distribuição: as 10% mais lucrativas elevaram seus *markups* de 1,5 para mais de 2,5. Os autores documentam que essa tendência está associada a menor participação do trabalho na renda, menor dinamismo empresarial e maior desigualdade.

**Conexão com o capítulo.** O artigo fornece evidência empírica maciça sobre o índice de Lerner (Seção 15.3) em escala agregada. Os *markups* estimados podem ser diretamente interpretados como $1/(1 - L)$, conectando a teoria do monopólio à mensuração empírica do poder de mercado. A tendência ascendente documentada sugere que o modelo de concorrência perfeita se torna progressivamente menos adequado como descrição da economia moderna.
:::


::: {.pesquisabox title="Bergemann, D., Brooks, B. & Morris, S. (2015). The Limits of Price Discrimination. *American Economic Review*, 105(3), 921–957."}
**DOI:** [10.1257/aer.20130848](https://doi.org/10.1257/aer.20130848)

**Contexto.** A Seção 15.7 classifica a discriminação de preços em três graus, mas essa taxonomia assume que sabemos exatamente quanta informação o monopolista possui sobre os consumidores. Bergemann, Brooks e Morris (2015) fazem uma pergunta mais fundamental: dada uma demanda de mercado, quais são os **limites** do que a discriminação de preços pode alcançar, considerando toda estrutura de informação possível?

**Contribuição teórica.** Os autores mostram que, para qualquer segmentação de mercado (qualquer partição informacional dos consumidores), o resultado da discriminação de preços deve satisfazer duas restrições: (i) o lucro do monopolista deve ser pelo menos tão grande quanto o lucro de preço uniforme; (ii) o excedente do consumidor agregado não pode ser negativo. O resultado central é que **qualquer** par (lucro, excedente do consumidor) satisfazendo essas duas restrições é alcançável por alguma segmentação.

**Resultados.** O artigo demonstra que os efeitos de bem-estar da discriminação de preços dependem crucialmente da informação disponível ao monopolista. A produção total pode subir, cair ou permanecer constante conforme a segmentação. Isso contrasta com o resultado clássico de Pigou (1920) para demandas lineares, em que a discriminação de 3º grau não altera a quantidade total.

**Conexão com o capítulo.** O paper aprofunda a análise de discriminação de preços das Seções 15.7.1–15.7.3, mostrando que a distinção entre 1º, 2º e 3º grau é apenas uma parte de um espectro muito mais rico de possibilidades informacionais.
:::


::: {.pesquisabox title="Posner, R. A. (1975). The Social Costs of Monopoly and Regulation. *Journal of Political Economy*, 83(4), 807–827."}
**DOI:** [10.1086/260357](https://doi.org/10.1086/260357)

**Contexto.** A Seção 15.4 apresenta a perda de peso morto (triângulo de Harberger) como a medida convencional do custo social do monopólio. Posner (1975) argumenta que essa medida subestima dramaticamente o custo real, ao ignorar os recursos desperdiçados na *obtenção e manutenção* do poder de mercado.

**Contribuição teórica.** Posner observa que, se firmas competem para obter uma posição de monopólio lucrativa (por exemplo, disputando uma concessão governamental, investindo em lobby ou em litígios para bloquear concorrentes), os recursos gastos nessa competição representam um custo social adicional. No limite, se a competição pelo monopólio dissipa todos os lucros esperados, o custo social total é a soma do triângulo de Harberger e do retângulo de lucro do monopolista — potencialmente muito maior que o triângulo sozinho.

**Resultados.** Posner estima que, para setores regulados nos EUA, o custo social total (incluindo *rent-seeking*) pode ser várias vezes maior que o triângulo de Harberger. Ele argumenta, provocativamente, que a regulação governamental — ao criar monopólios legais e oportunidades de *rent-seeking* — pode gerar custos sociais tão grandes ou maiores que o monopólio não regulado.

**Conexão com o capítulo.** O artigo fundamenta o Exercício Resolvido 15.2, que calcula o custo social total incluindo *rent-seeking*. A análise de Posner é essencial para entender por que estimativas empíricas do custo do monopólio variam tão amplamente (de 0,1% a 13% do PIB, conforme discutido no Box Mundo 15.2).
:::


::: {.pesquisabox title="Borenstein, S. & Rose, N. L. (1994). Competition and Price Dispersion in the U.S. Airline Industry. *Journal of Political Economy*, 102(4), 653–683."}
**DOI:** [10.1086/261950](https://doi.org/10.1086/261950)

**Contexto.** A Seção 15.7 e o Box Brasil 15.1 discutem a discriminação de preços no setor aéreo. Borenstein e Rose (1994) fornecem a primeira análise empírica rigorosa da relação entre concorrência e dispersão de preços no setor aéreo americano — uma relação que se revela mais complexa do que a teoria simples sugeriria.

**Metodologia.** Os autores utilizam dados do *Databank 1A* do Departamento de Transportes dos EUA (DOT) com informações sobre tarifas individuais para milhares de rotas domésticas. A medida de dispersão de preços é a diferença entre o percentil 80 e o percentil 20 das tarifas em cada rota, normalizada pela tarifa mediana. A variável explicativa central é a concentração de mercado (índice de Herfindahl-Hirschman) em cada rota.

**Resultados.** O resultado central é surpreendente: rotas mais competitivas apresentam *maior* dispersão de preços, não menor. A dispersão de preços aumenta cerca de 10% quando a concentração cai de monopólio para duopólio. Os autores interpretam isso como evidência de que a concorrência intensifica a discriminação de preços: em rotas competitivas, companhias aéreas oferecem tarifas promocionais agressivas para preencher assentos, enquanto mantêm tarifas altas para viajantes de última hora — gerando ampla dispersão.

**Conexão com o capítulo.** O artigo desafia a intuição de que mais concorrência sempre reduz diferenças de preço. Ele mostra que a discriminação de preços (Seção 15.7) não é exclusividade do monopólio — firmas com algum poder de mercado em oligopólios também a praticam intensamente. Esse resultado antecipa temas dos Capítulos 16a–16b (Oligopólio) e conecta-se diretamente ao Box Brasil sobre passagens aéreas.
:::


::: {.pesquisabox title="Wallsten, S. (2001). An Econometric Analysis of Telecom Competition, Privatization, and Regulation in Africa and Latin America. *Journal of Industrial Economics*, 49(1), 1–19."}
**DOI:** [10.1111/1468-2354.t01-1-00106](https://doi.org/10.1111/1468-2354.t01-1-00106)

**Contexto.** A Seção 15.9 discute a regulação de monopólios naturais em teoria. Wallsten (2001) fornece evidência empírica crucial sobre os efeitos reais da desregulamentação e privatização no setor de telecomunicações — um dos exemplos mais importantes de monopólio natural regulado do século XX.

**Metodologia.** O autor utiliza dados em painel de 30 países da África e da América Latina entre 1984 e 1997, período em que muitas nações promoveram reformas regulatórias no setor de telecomunicações (privatização, criação de agências reguladoras independentes e abertura à competição). A estratégia empírica explora a variação temporal e entre países nessas reformas para identificar seus efeitos sobre investimento, acesso (linhas per capita), qualidade do serviço e tarifas.

**Resultados.** A privatização combinada com a entrada de concorrentes aumentou significativamente o investimento em telecomunicações e o número de linhas telefônicas per capita. No entanto, a privatização *sem* introdução de competição — isto é, a mera transferência do monopólio estatal para um monopólio privado — teve efeitos muito menores ou nulos sobre o bem-estar dos consumidores. A criação de agências reguladoras independentes também se mostrou relevante para a credibilidade das reformas e a atração de investimento privado.

**Conexão com o capítulo.** O artigo conecta-se diretamente à análise de regulação de monopólios naturais (Seção 15.9) e ao Box Brasil 15.2 sobre concessões de serviços públicos no Brasil. Ele ilustra empiricamente o trade-off entre eficiência alocativa e viabilidade financeira discutido nos Exercícios 15.4 e 15.8, mostrando que a estrutura regulatória — não apenas a propriedade — determina os resultados de bem-estar.
:::


---

### Referências do Capítulo

- Aghion, Philippe, Nick Bloom, Richard Blundell, Rachel Griffith, e Peter Howitt. 2005. "[Competition and Innovation: An Inverted-U Relationship.](https://doi.org/10.1093/qje/120.2.701)" *Quarterly Journal of Economics* 120 (2): 701–728.
- Averch, Harvey, e Leland L. Johnson. 1962. "[Behavior of the Firm Under Regulatory Constraint.](https://doi.org/10.2307/1812181)" *American Economic Review* 52 (5): 1052–1069.
- Bain, Joe S. 1956. [*Barriers to New Competition*](https://books.google.com/books/about/Barriers_to_New_Competition.html?id=KyFCAAAAIAAJ). Cambridge: Harvard University Press.
- Baumol, William J., John C. Panzar, e Robert D. Willig. 1982. [*Contestable Markets and the Theory of Industry Structure*](https://books.google.com/books/about/Contestable_Markets_and_the_Theory_of_In.html?id=N2c6AAAAIAAJ). New York: Harcourt Brace Jovanovich.
- Bergemann, Dirk, Benjamin Brooks, e Stephen Morris. 2015. "[The Limits of Price Discrimination.](https://doi.org/10.1257/aer.20130848)" *American Economic Review* 105 (3): 921–957.
- Besanko, David, e Ronald Braeutigam. 2014. [*Microeconomics*](https://books.google.com.br/books?id=BeoengEACAAJ). 5ª ed. New York: Wiley. Caps. 11–12.
- Borenstein, Severin, e Nancy L. Rose. 1994. "[Competition and Price Dispersion in the U.S. Airline Industry.](https://doi.org/10.1086/261950)" *Journal of Political Economy* 102 (4): 653–683.
- Cowling, Keith, e Dennis C. Mueller. 1978. "[The Social Costs of Monopoly Power.](https://doi.org/10.2307/2231972)" *Economic Journal* 88 (352): 727–748.
- De Loecker, Jan, Jan Eeckhout, e Gabriel Unger. 2020. "[The Rise of Market Power and the Macroeconomic Implications.](https://doi.org/10.1093/qje/qjz041)" *Quarterly Journal of Economics* 135 (2): 561–644.
- Giambiagi, Fabio, e Ana Cláudia Além. 2016. [*Finanças Públicas: Teoria e Prática no Brasil*](https://books.google.com.br/books?id=Xqf-jwEACAAJ). 5ª ed. Rio de Janeiro: Elsevier.
- Harberger, Arnold C. 1954. "[Monopoly and Resource Allocation.](https://doi.org/10.2307/1923808)" *American Economic Review* 44 (2): 77–87.
- Leibenstein, Harvey. 1966. "[Allocative Efficiency vs. 'X-Efficiency'.](https://doi.org/10.2307/1823775)" *American Economic Review* 56 (3): 392–415.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 12.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage. Caps. 14–15.
- Posner, Richard A. 1975. "[The Social Costs of Monopoly and Regulation.](https://doi.org/10.1086/260357)" *Journal of Political Economy* 83 (4): 807–827.
- Spence, Michael. 1975. "[Monopoly, Quality, and Regulation.](https://doi.org/10.2307/3003237)" *Bell Journal of Economics* 6 (2): 417–429.
- Tirole, Jean. 1988. [*The Theory of Industrial Organization*](https://books.google.com/books/about/The_Theory_of_Industrial_Organization.html?id=HIjsF0XONF8C). Cambridge: MIT Press. Caps. 1–3.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Caps. 14, 24.
- Wallsten, Scott. 2001. "[An Econometric Analysis of Telecom Competition, Privatization, and Regulation in Africa and Latin America.](https://doi.org/10.1111/1468-2354.t01-1-00106)" *Journal of Industrial Economics* 49 (1): 1–19.


\newpage

\setcounter{chapter}{19}

\setcounter{section}{0}

# Capítulo 20 — Fumaça, Caronas e Tragédias

Seu vizinho resolve criar galos. Às 5h da manhã, o canto ecoa pelo quarteirão — e o preço do imóvel ao lado despenca. O vizinho não pagou nada por isso. O mercado de galos funcionou perfeitamente; o mercado de noites bem dormidas, não. Bem-vindo ao mundo das externalidades — onde o prejuízo de um não aparece na conta de ninguém.[^life-of-brian]

[^life-of-brian]: *"What have the Romans ever done for us?"* Em *A Vida de Brian*, os rebeldes tentam enumerar motivos para odiar os romanos — mas só conseguem listar bens públicos: aquedutos, estradas, saneamento, irrigação, saúde pública, educação, vinho, ordem pública e a paz. A cena é a melhor análise custo-benefício de bens públicos já filmada. O líder do grupo, frustrado, repete a pergunta — e a cada repetição alguém lembra de mais um benefício. É a condição de Samuelson em ação: a soma dos benefícios marginais (aqueduto + estrada + saneamento + ...) excede claramente o custo marginal (a ocupação romana). Até os rebeldes, relutantemente, concordam. *"All right, but apart from the sanitation, the medicine, education, wine, public order, irrigation, roads, a fresh water system, and public health, what have the Romans ever done for us?"*

Nos capítulos anteriores, demonstramos que mercados competitivos com informação completa conduzem a alocações Pareto-eficientes — o resultado central dos Teoremas do Bem-Estar. Entretanto, essa conclusão depende criticamente da hipótese de que todas as interações entre agentes econômicos ocorrem via mecanismo de preços. Quando as ações de um agente afetam diretamente o bem-estar de outros **fora do sistema de preços**, surgem as **externalidades** — e a alocação de mercado deixa de ser eficiente.

Da mesma forma, certos bens possuem características que tornam o mecanismo de mercado inadequado para sua provisão: bens **não-rivais** e **não-excludentes** — os chamados **bens públicos** — tendem a ser subprovidos pelo mercado devido ao problema do **carona** (free rider).

Este capítulo analisa essas duas importantes **falhas de mercado** e discute as principais soluções propostas pela teoria econômica: impostos pigouvianos, o Teorema de Coase, mercados de permissão de emissão, preços de Lindahl e mecanismos de revelação de preferências. Essas questões assumem importância crescente no debate sobre políticas ambientais, saúde pública e infraestrutura.

A análise de externalidades e bens públicos tem raízes profundas na história do pensamento econômico. Já Alfred Marshall, nos *Principles of Economics* (1890), reconhecia a existência de "economias externas" — benefícios que a atividade de uma firma gerava para outras firmas ou para a sociedade sem compensação pelo mercado. Contudo, foi Arthur Cecil Pigou quem, em *The Economics of Welfare* (1920), sistematizou a análise das externalidades como divergência entre custo privado e custo social, propondo a intervenção fiscal como mecanismo de correção. Quatro décadas depois, Ronald Coase (1960) desafiou a prescrição pigouviana, argumentando que a negociação privada poderia, sob certas condições, alcançar a eficiência sem intervenção estatal. Esse debate Pigou–Coase permanece no centro da economia ambiental e da análise econômica do direito até hoje. Do lado dos bens públicos, a contribuição seminal de Paul Samuelson (1954) formalizou a condição de eficiência que distingue radicalmente bens públicos de bens privados, inaugurando a moderna teoria da economia do setor público.

---

## Roteiro do Capítulo


| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 20.1 | Quando a ação de um afeta o bem-estar de outro sem passar pelo mercado? | Definição e tipologia de externalidades | Externalidades |
| 20.2 | Por que a poluição é excessiva se ninguém paga por ela? | Externalidades e ineficiência alocativa | Ineficiência |
| 20.3 | Como medir o custo social de uma externalidade? | Modelo de equilíbrio parcial com externalidade | Modelo |
| 20.4 | Imposto, negociação ou regulação — o que resolve melhor? | Pigou, Coase, cap-and-trade | Soluções |
| 20.5 | O que torna um bem "público" — e por que o mercado falha em provê-lo? | Não rivalidade, não exclusibilidade | Bens públicos |
| 20.6 | Quanto de bem público a sociedade deveria produzir? | Condição de Samuelson, soma vertical | Alocação |
| 20.7 | Existe um preço personalizado que faz todo mundo pagar pelo que valoriza? | Preços de Lindahl | Lindahl |
| 20.8 | Por que todo mundo quer pegar carona e ninguém quer pagar? | Free-rider, provisão voluntária | Carona |
| 20.9 | A maioria vota bem — ou vota mal? | Votação, teorema do eleitor mediano | Votação |
| 20.10 | Como fazer as pessoas revelarem quanto realmente valorizam o bem público? | Mecanismos de revelação, VCG | Revelação |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | Exercícios |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | Pesquisa |


---


::: {.classroombox title="Atividade de Sala — Jogo de Bens Públicos (Contribuição Voluntária)"}

**Formato:** Experimento de contribuição voluntária com e sem punição
**Duração:** 40–45 minutos (20 rodadas + 15 debrief + 10 discussão)
**Material:** Fichas ou moedas (10 por aluno), quadro para registrar contribuições.

**Preparação (5 min):**

- Divida a turma em grupos de 4–5 alunos.
- Cada aluno recebe 10 fichas por rodada.
- Regra: cada ficha mantida rende 1 ponto ao aluno. Cada ficha contribuída ao "fundo público" do grupo rende 0,4 pontos **para cada membro** do grupo (incluindo o contribuidor).
- Com 5 membros, o retorno social de 1 ficha contribuída = 5 × 0,4 = 2,0 > 1,0 (custo privado). Contribuir é socialmente eficiente. Mas individualmente, contribuir 1 ficha retorna apenas 0,4 para o contribuidor — menos que manter (1,0). Free-riding é individualmente racional.

**Fase 1 — Sem punição (rodadas 1–8, 10 min):**

- Cada rodada: alunos decidem secretamente quantas fichas contribuir (0–10).
- O professor soma as contribuições, calcula o retorno e registra no quadro.
- **Resultado esperado:** Contribuições começam em 40–60% e caem para 10–20% até a rodada 8. O free-riding emerge.

**Fase 2 — Com punição (rodadas 9–16, 10 min):**

- Nova regra: após a revelação, cada aluno pode gastar 1 ficha para retirar 3 fichas de outro membro (punição).
- **Resultado esperado:** Contribuições sobem para 60–90%. Free-riders são punidos. Cooperação se sustenta (Fehr & Gächter, 2000).

**Fase 3 — Com comunicação (rodadas 17–20, 5 min, opcional):**

- Permita 2 min de conversa antes de cada rodada.
- **Resultado esperado:** Contribuições próximas de 100%. Comunicação é poderosamente eficaz (Ostrom et al., 1992).

**Debrief (15 min):**

1. Plote as contribuições médias por rodada no quadro. Identifique os padrões.
2. Pergunte: *"Por que as contribuições caíram sem punição?"* → Problema do carona (Seção 20.8).
3. Pergunte: *"Por que a punição funciona, mesmo sendo custosa para quem pune?"* → Punição altruísta, normas sociais.
4. Pergunte: *"O que muda quando vocês podem conversar?"* → Compromissos, reputação (Ostrom).
5. Conecte: condição de Samuelson (retorno social > custo), subprovisão (Nash), Lindahl (preços personalizados).

**Conexão com o capítulo:** Seções 20.5–20.8. O experimento segue Fehr & Gächter (2000) e Holt (2007, Cap. 23).
:::



## Externalidades: Definição e Ineficiência

### 20.1 O Vizinho Que Cria Galos às 5h da Manhã: Definição de Externalidades {#201}


::: {.definitionbox title="Externalidade"}
Uma **externalidade** ocorre quando a ação de um agente econômico afeta diretamente a utilidade ou a função de produção de outro agente, sem que essa interação seja mediada pelo sistema de preços. A externalidade representa um efeito **externo ao mercado** que não é capturado nas decisões privadas dos agentes.
:::


#### Classificação das externalidades

As externalidades podem ser classificadas em duas dimensões:

**Pelo sinal (efeito sobre terceiros):**

- **Externalidade negativa**: a ação de um agente prejudica outros (poluição, congestionamento, ruído).
- **Externalidade positiva**: a ação de um agente beneficia outros (vacinação, pesquisa básica, preservação de paisagem).

**Pela esfera (produção ou consumo):**

- **Externalidade de produção**: a função de produção de uma firma é afetada pela produção de outra. Exemplo: uma fábrica que polui o rio usado por um pesqueiro.
- **Externalidade de consumo**: a utilidade de um consumidor é afetada pelo consumo de outro. Exemplo: o prazer (ou desprazer) causado pelo hábito de fumar de um vizinho.

Para além desses exemplos clássicos, externalidades permeiam a vida cotidiana de maneiras muitas vezes sutis. A poluição sonora de um aeroporto reduz o valor dos imóveis residenciais ao redor — uma externalidade negativa de produção sobre consumidores. As **externalidades de rede** constituem uma categoria especialmente relevante na economia digital: quando mais pessoas adotam uma plataforma de comunicação (WhatsApp, por exemplo), o valor do serviço para cada usuário existente aumenta. Trata-se de uma externalidade positiva de consumo, pois a decisão de adesão de um indivíduo beneficia todos os demais participantes da rede sem que haja compensação monetária por esse benefício. De modo análogo, a polinização realizada por abelhas de um apicultor beneficia lavouras vizinhas — uma externalidade positiva de produção que atravessa fronteiras de propriedade sem passar pelo sistema de preços.

Formalmente, uma externalidade de produção existe quando a função de produção da firma $j$ depende do nível de produção da firma $i$:

$$
q_j = f_j(L_j, K_j, q_i) \label{eq:20.1} \tag{20.1}
$$

Uma externalidade de consumo existe quando a utilidade do indivíduo $B$ depende do consumo do indivíduo $A$:

$$
U_B = U_B(x_B^1, x_B^2, \ldots, x_A^k)
\label{eq:20.2} \tag{20.2} 
$$


onde $x_A^k$ é o consumo do bem $k$ pelo indivíduo $A$.


::: {.notebox title="Externalidades Pecuniárias vs. Tecnológicas"}
É importante distinguir **externalidades tecnológicas** (reais) de **externalidades pecuniárias**. Externalidades pecuniárias operam *via preços*: quando uma firma expande sua produção e reduz o preço do produto, prejudicando concorrentes. Essas não são verdadeiras externalidades no sentido econômico, pois são mediadas pelo mercado e não geram ineficiência. Apenas externalidades tecnológicas — que afetam diretamente funções de produção ou utilidade — constituem falhas de mercado.
:::


A distinção entre externalidades pecuniárias e tecnológicas merece um exemplo concreto. Suponha que uma grande rede varejista se instale em uma cidade pequena, reduzindo os preços dos produtos e levando comerciantes locais a perder clientes. Os comerciantes são "prejudicados", mas esse efeito opera *via mercado* — trata-se de uma externalidade pecuniária que não gera ineficiência alocativa (na verdade, reflete o funcionamento competitivo do mercado). Agora compare com uma siderúrgica cujas emissões de material particulado causam doenças respiratórias nos moradores vizinhos. Este efeito *não* passa pelo sistema de preços: a saúde dos moradores é afetada diretamente, sem qualquer transação de mercado. Trata-se de uma externalidade tecnológica — e é esta, e somente esta, que constitui uma falha de mercado requerendo correção.


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Uma externalidade existe quando o preço de um produto não reflete todo o custo (ou benefício) que sua produção ou consumo impõe à sociedade.

**Pense assim:** Quando uma fábrica em Cubatão polui o rio, o preço do produto que ela vende não inclui o custo da água contaminada para os pescadores e moradores rio abaixo. A fábrica "exporta" parte do seu custo para a sociedade sem pagar por isso. Da mesma forma, quem se vacina protege não só a si mesmo, mas também quem está ao redor — um benefício que não entra no cálculo individual.

**Por que isso importa:** Externalidades são a principal justificativa econômica para intervenção do governo via impostos, subsídios ou regulação — do controle de emissões ao financiamento público da vacinação.
:::


---

### 20.2 O Preço Que Mente: Externalidades e Ineficiência Alocativa {#202}

Definido o conceito, vem a pergunta que realmente importa: por que externalidades fazem o mercado errar? A resposta é quase ofensivamente simples. O preço — aquele mecanismo que Adam Smith celebrou como o grande coordenador da economia — mente. Ou melhor, conta apenas metade da história: reflete os custos e benefícios privados da transação, mas ignora solenemente os efeitos sobre terceiros. Como resultado, as decisões tomadas individualmente por agentes racionais conduzem a um nível de produção ou consumo que difere do socialmente ótimo — o mercado "erra" sistematicamente.

É instrutivo conectar essa falha ao Primeiro Teorema do Bem-Estar. Recordemos que esse teorema garante que todo equilíbrio competitivo é Pareto-eficiente — mas sob hipóteses específicas, entre as quais a de **mercados completos**: deve existir um mercado para cada bem que afeta a utilidade ou a produção de qualquer agente. Quando uma externalidade está presente, *falta* exatamente um mercado: não existe mercado para a poluição, para o silêncio, para o ar limpo ou para a imunidade de rebanho. Essa "lacuna" no sistema de mercados viola a hipótese central do Primeiro Teorema e é a razão profunda pela qual externalidades geram ineficiência. Em termos técnicos, a externalidade cria uma **cunha** (wedge) entre os custos (ou benefícios) privados e os custos (ou benefícios) sociais. Essa cunha distorce os sinais de preço: o produtor vê um custo menor do que o verdadeiro custo social, ou o consumidor percebe um benefício menor do que o verdadeiro benefício social. A magnitude da ineficiência é proporcional ao tamanho dessa cunha.

A presença de externalidades implica que as decisões privadas dos agentes divergem do ótimo social. A razão fundamental é que os agentes não incorporam em seus cálculos os efeitos que suas ações impõem sobre terceiros (Browning & Zupan, 2014, Cap. 20, apresentam aplicações detalhadas).

#### Externalidade negativa de produção

Considere uma firma que produz um bem $q$ com custo privado $C(q)$ e que gera poluição como subproduto. A poluição impõe um **custo externo** $E(q)$ sobre a sociedade (danos à saúde, degradação ambiental). O **custo social** é:

$$
CS(q) = C(q) + E(q)
\label{eq:20.3} \tag{20.3} 
$$


A firma, buscando maximizar lucro, iguala o custo marginal privado ao preço:

$$
P = C'(q) \quad \text{(CMg privado)}
$$

Mas a condição de eficiência social requer:

$$
P = C'(q) + E'(q) \quad \text{(CMg social)}
\label{eq:20.4} \tag{20.4} 
$$


Como $E'(q) > 0$, a firma produz **mais do que o ótimo social**: $q^{priv} > q^{soc}$.

#### Externalidade positiva de consumo

No caso de uma externalidade positiva — por exemplo, vacinação —, o **benefício social** excede o benefício privado:

$$
BS(q) = B^{priv}(q) + B^{ext}(q)
$$

O indivíduo consome até onde seu benefício marginal privado iguala o preço:

$$
B'^{priv}(q) = P
\label{eq:20.5} \tag{20.5} 
$$


Mas a eficiência requer:

$$
B'^{priv}(q) + B'^{ext}(q) = P
\label{eq:20.6} \tag{20.6} 
$$


Como $B'^{ext}(q) > 0$, o consumo privado fica **aquém do ótimo social**: $q^{priv} < q^{soc}$.


::: {.tipbox title="Regra Geral"}
- **Externalidade negativa** → produção/consumo privado **excessivo** em relação ao ótimo social.
- **Externalidade positiva** → produção/consumo privado **insuficiente** em relação ao ótimo social.
- Em ambos os casos, o mercado **falha** em atingir eficiência de Pareto.
:::


::: {.boxmundobox title="Box Mundo 20.1 — Pedágios urbanos: precificando o congestionamento em Estocolmo, Londres e Singapura"}

**Contexto:** O congestionamento viário é uma externalidade negativa clássica: cada motorista que entra em uma via já congestionada impõe custos a todos os demais usuários (tempo de viagem, consumo extra de combustível, poluição) sem pagar por esse efeito. A solução pigouviana natural é cobrar um pedágio que reflita o custo marginal externo do congestionamento — é exatamente o que três cidades pioneiras fizeram.

**Dados:** Singapura introduziu o primeiro sistema de pedágio urbano do mundo em 1975 (Electronic Road Pricing desde 1998), cobrando tarifas que variam de SGD 0,50 a SGD 6,00 conforme o horário e o nível de congestionamento. Londres implementou a *Congestion Charge* em 2003, cobrando inicialmente £5 (atualizada para £15 em 2023) para veículos que entram na zona central. Estocolmo adotou um sistema em 2006 após um período experimental com referendo: as tarifas variam entre SEK 15 e SEK 45 conforme o horário do dia.

**Análise:** Os resultados são consistentes nas três cidades. Em Estocolmo, o tráfego na zona central caiu 20-25% e as emissões de CO₂ na área taxada reduziram-se em 10-14% (Eliasson et al., 2009). Em Londres, o congestionamento diminuiu 30% no primeiro ano, embora parte do efeito tenha se dissipado com o tempo. O caso de Estocolmo é especialmente instrutivo: a população inicialmente opunha-se ao pedágio, mas após o período experimental, ao constatar a melhoria na qualidade do tráfego, votou pela manutenção permanente do sistema em referendo. Essa sequência — resistência inicial seguida de apoio após a experiência — ilustra como a percepção pública dos benefícios de uma taxa pigouviana pode mudar quando os cidadãos vivenciam a redução da externalidade.

**Fonte:** Eliasson, J.; Hultkrantz, L.; Nerhagen, L.; Rosqvist, L. S. (2009). The Stockholm congestion-charging trial 2006: overview of effects. *Transportation Research Part A*, 43(3), 240-250.
:::



## Modelo de Equilíbrio Parcial e Soluções

### 20.3 Medindo a Mentira: Modelo de Equilíbrio Parcial de Externalidades {#203}

Sabemos que o preço mente — mas quanto ele mente? A intuição da seção anterior nos disse que externalidades negativas levam à sobreprodução e positivas à subprodução. Agora, formalizamos essa análise em um modelo de equilíbrio parcial com duas firmas, o que nos permitirá medir exatamente o tamanho da mentira e, na seção seguinte, calibrar os instrumentos de política necessários para corrigi-la.

Formalizemos o problema usando um modelo de equilíbrio parcial com duas firmas.

**Firma 1** (poluidora): produz $q_1$ com custo $C_1(q_1)$ e gera emissões $e = e(q_1)$, com $e' > 0$.

**Firma 2** (afetada): produz $q_2$ com custo $C_2(q_2, e)$, onde $\partial C_2 / \partial e > 0$ — a poluição de 1 eleva os custos de 2.

**Equilíbrio privado**: cada firma maximiza seu próprio lucro, ignorando o efeito sobre a outra.

Firma 1:

$$
\max_{q_1} \; p_1 q_1 - C_1(q_1) \implies p_1 = C_1'(q_1)
$$

**Ótimo social**: o planejador maximiza o lucro conjunto:

$$
\max_{q_1, q_2} \; p_1 q_1 - C_1(q_1) + p_2 q_2 - C_2(q_2, e(q_1))
$$

A condição de primeira ordem para $q_1$ é:

$$
p_1 = C_1'(q_1) + \frac{\partial C_2}{\partial e} \cdot e'(q_1)
\label{eq:20.7} \tag{20.7} 
$$


O termo $\frac{\partial C_2}{\partial e} \cdot e'(q_1)$ é o **custo marginal externo** (CME) — o dano marginal imposto pela firma 1 sobre a firma 2. No equilíbrio privado, esse termo é ignorado, levando a $q_1^{priv} > q_1^{soc}$.

A **perda de peso morto** (deadweight loss) associada à externalidade é a área entre as curvas de custo marginal social e custo marginal privado, entre $q_1^{soc}$ e $q_1^{priv}$:

$$
DWL = \int_{q_1^{soc}}^{q_1^{priv}} \left[ C_1'(q) + E'(q) - P \right] dq
$$

Geometricamente, essa integral corresponde à área do "triângulo" entre a curva de custo marginal social (CMg + CME) e a reta de preço, delimitado pelas quantidades $q^{soc}$ e $q^{priv}$. A interpretação é direta: para cada unidade produzida além do ótimo social, o custo social marginal excede o benefício marginal (preço), e a área acumulada dessas "perdas marginais" constitui o peso morto. Note que a magnitude do peso morto depende crucialmente de dois fatores: (i) o tamanho da cunha entre CMg privado e CMg social (ou seja, a magnitude do custo marginal externo) e (ii) a distância entre $q^{priv}$ e $q^{soc}$, que por sua vez depende das **elasticidades** das curvas de oferta e demanda. Se a oferta privada for muito inelástica (CMg privado muito inclinado), a sobreprodução será pequena mesmo com um custo externo grande, pois a quantidade responde pouco à divergência. Inversamente, se a oferta for elástica, um custo externo modesto pode gerar uma distorção quantitativa — e um peso morto — substancial. Essa relação entre elasticidades e magnitude da ineficiência tem implicações diretas para a política pública: setores com oferta elástica e externalidades significativas são os candidatos prioritários à intervenção regulatória.

---

\figurePlaceholder{/micro-book/graficos/cap20/externalidade-negativa.html}


**Figura 20.1 — Externalidade negativa e imposto pigouviano.** A curva vermelha (CMg social) inclui o custo externo. A área sombreada representa a perda de peso morto da sobreprodução. O imposto pigouviano ótimo iguala o custo marginal externo no ótimo social.


### 20.4 A Receita para a Fumaça: Soluções para Externalidades Negativas {#204}

#### 20.4.1 Imposto Pigouviano


::: {.definitionbox title="Imposto Pigouviano"}
Imposto por unidade de produção (ou de emissão) igual ao **custo marginal externo** avaliado no ótimo social. Nomeado em homenagem a Arthur Cecil Pigou (1920), que primeiro propôs essa correção.
:::


O imposto $t^*$ é definido como:

$$
t^* = E'(q^{soc}) = \left. \frac{\partial C_2}{\partial e} \cdot e'(q_1) \right|_{q_1 = q_1^{soc}}
\label{eq:20.8} \tag{20.8} 
$$


Com o imposto, a firma poluidora resolve:

$$
\max_{q_1} \; p_1 q_1 - C_1(q_1) - t^* q_1
$$

Condição de primeira ordem:

$$
p_1 = C_1'(q_1) + t^*
\label{eq:20.9} \tag{20.9} 
$$


Como $t^* = E'(q^{soc})$, a firma internaliza o custo externo e produz $q_1^{soc}$.


::: {.proofbox title="Demonstração: O Imposto Pigouviano Ótimo Restaura a Eficiência"}
**Objetivo**: Mostrar que um imposto $t^*$ igual ao custo marginal externo no ótimo social induz a firma poluidora a escolher o nível de produção socialmente eficiente.

**Configuração**: Considere uma economia com uma firma poluidora que produz $q$ unidades de um bem ao preço $P$. O custo privado de produção é $C(q)$, com $C'(q) > 0$ e $C''(q) > 0$. A produção gera um custo externo $E(q)$, com $E'(q) > 0$ e $E''(q) \geq 0$. O benefício social líquido é:

$$
W(q) = Pq - C(q) - E(q)
$$

**Passo 1 — Ótimo social.** O planejador maximiza $W(q)$:

$$
\frac{dW}{dq} = P - C'(q) - E'(q) = 0
$$

Logo, o nível ótimo $q^*$ satisfaz:

$$
P = C'(q^*) + E'(q^*) \tag{i}
$$

**Passo 2 — Equilíbrio privado sem imposto.** A firma maximiza $\pi(q) = Pq - C(q)$:

$$
P = C'(q^{priv}) \tag{ii}
$$

Como $E'(q) > 0$, comparando (i) e (ii), e dado que $C''(q) > 0$, temos $q^{priv} > q^*$. A firma produz em excesso.

**Passo 3 — Introdução do imposto pigouviano.** Defina o imposto unitário:

$$
t^* = E'(q^*)
$$

Com o imposto, o lucro da firma é $\pi^t(q) = Pq - C(q) - t^* q$. A condição de maximização é:

$$
P = C'(q^t) + t^* = C'(q^t) + E'(q^*) \tag{iii}
$$

**Passo 4 — Comparação.** Comparando (iii) com (i), ambas requerem:

$$
P - E'(q^*) = C'(q)
$$

Como $C'(\cdot)$ é estritamente crescente (por $C'' > 0$), a solução é única: $q^t = q^*$.

**Conclusão.** O imposto $t^* = E'(q^*)$ faz com que a firma internalize o custo marginal externo e produza exatamente o nível socialmente ótimo $q^*$. A perda de peso morto é eliminada. $\blacksquare$
:::


::: {.tipbox title="Subsídio Pigouviano"}
De forma simétrica, para externalidades positivas, o instrumento pigouviano é um **subsídio** por unidade igual ao benefício marginal externo: $s^* = B'^{ext}(q^{soc})$. Isso eleva a quantidade produzida/consumida até o nível socialmente eficiente.
:::


::: {.exresolvidobox title="Exercício Resolvido 20.1 —Imposto pigouviano ótimo com custo quadrático"}

**Enunciado.** Uma firma produz $q$ unidades ao preço $P = 100$, com custo $C(q) = 10q + q^2$. A produção gera custo externo $E(q) = 0{,}5q^2$. (a) Encontre $q^{priv}$ e $q^{soc}$. (b) Calcule o imposto pigouviano ótimo. (c) Calcule o DWL eliminado.

**Solução.**

**(a)** Sem regulação: $P = C'(q) \implies 100 = 10 + 2q \implies q^{priv} = 45$.

Ótimo social: $P = C'(q) + E'(q) \implies 100 = 10 + 2q + q = 10 + 3q \implies q^{soc} = 30$.

**(b)** $t^* = E'(q^{soc}) = q^{soc} = 30$.

Verificação: com imposto, $100 = 10 + 2q + 30 \implies q = 30 = q^{soc}$. $\checkmark$

**(c)** $DWL = \int_{30}^{45} (10 + 3q - 100)\,dq = \int_{30}^{45}(3q - 90)\,dq = \left[\frac{3q^2}{2} - 90q\right]_{30}^{45} = (3037{,}5 - 4050) - (1350 - 2700) = -1012{,}5 - (-1350) = 337{,}5$.
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/webr-pigou.html}


**WebR 20.1 — Simulação de imposto pigouviano.** Altere os parâmetros de custo e externalidade e observe como o imposto ótimo e o DWL se ajustam.


---

#### 20.4.2 O Teorema de Coase


::: {.theorembox title="Teorema de Coase (Coase, 1960)"}
Se os **direitos de propriedade** estão claramente definidos e os **custos de transação** são nulos, a barganha privada entre as partes levará à alocação eficiente de recursos, **independentemente** de qual parte detém o direito de propriedade. A distribuição dos direitos afeta apenas a distribuição de riqueza, não a eficiência.
:::


Formalmente, suponha que a firma poluidora e a firma afetada podem negociar. Se a firma afetada tem o direito a um ambiente limpo, a poluidora deve compensá-la pelo dano. Se a poluidora tem o direito de poluir, a firma afetada paga para que ela reduza a produção. Em ambos os casos, a produção converge para $q^{soc}$ onde:

$$
C'(q) + E'(q) = P
\label{eq:20.10} \tag{20.10} 
$$


**Limites do Teorema de Coase:**

1. **Custos de transação**: na prática, negociar é custoso, especialmente quando há muitas partes envolvidas.
2. **Externalidades difusas**: quando a poluição afeta milhões de pessoas, a barganha bilateral é inviável.
3. **Assimetria de informação**: as partes podem ter incentivos estratégicos para não revelar verdadeiramente seus custos e benefícios.
4. **Efeitos riqueza**: com utilidade marginal da renda decrescente, a atribuição inicial dos direitos pode afetar a alocação final.
5. **Problemas de hold-up**: investimentos específicos à relação podem gerar comportamento oportunista.


::: {.infobox title="Nobel de Economia 1991 — Ronald Coase"}
Ronald Coase recebeu o Prêmio Nobel "por sua descoberta e elucidação do significado dos custos de transação e dos direitos de propriedade para a estrutura institucional e o funcionamento da economia." O artigo seminal "The Problem of Social Cost" (1960) desafiou a prescrição pigouviana dominante, mostrando que a atribuição de direitos de propriedade e a barganha privada podem, sob certas condições, resolver o problema das externalidades sem intervenção estatal. Coase também introduziu o conceito de custos de transação como determinante da fronteira entre firma e mercado em "The Nature of the Firm" (1937).
:::


::: {.exresolvidobox title="Exercício Resolvido 20.2 —Negociação coaseana: fazendeiro vs. apicultor"}

**Enunciado.** Um fazendeiro cria gado ($n$ cabeças) com lucro $\pi_F(n) = 80n - 2n^2$. O gado danifica a lavoura vizinha em $D(n) = n^2$. (a) Encontre $n^{priv}$ e $n^{soc}$. (b) Mostre que a negociação leva a $n^{soc}$ independentemente de quem detém o direito.

**Solução.**

**(a)** Sem negociação: $\pi_F'(n) = 80 - 4n = 0 \implies n^{priv} = 20$.

Ótimo social: $\max_n \pi_F(n) - D(n) = 80n - 2n^2 - n^2 = 80n - 3n^2$. CPO: $80 - 6n = 0 \implies n^{soc} = 40/3 \approx 13{,}33$.

**(b)** Se o fazendeiro tem o direito: parte de $n = 20$. O lavrador oferece compensação $T$ para reduzir a $n^{soc}$. Perda do fazendeiro: $\pi_F(20) - \pi_F(40/3) = 800 - 711{,}11 = 88{,}89$. Ganho do lavrador: $D(20) - D(40/3) = 400 - 177{,}78 = 222{,}22$. Como $222{,}22 > 88{,}89$, há espaço para acordo.

Se o lavrador tem o direito: parte de $n = 0$. O fazendeiro oferece $T'$ para criar $n^{soc}$ cabeças. Ganho do fazendeiro: $\pi_F(40/3) = 711{,}11$. Dano ao lavrador: $D(40/3) = 177{,}78$. Como $711{,}11 > 177{,}78$, há espaço para acordo. Em ambos os casos, $n = n^{soc}$.
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/teorema-coase.html}


**Figura 20.2 — Teorema de Coase.** Alterne entre atribuir o direito de propriedade ao poluidor ou à vítima. Em ambos os casos, a negociação leva ao mesmo nível eficiente de poluição onde BMg = DMg. Apenas a direção da transferência muda.


---

\figurePlaceholder{/micro-book/graficos/cap20/webr-coase.html}


**WebR 20.2 — Simulação do Teorema de Coase.** Varie os parâmetros de lucro e dano e observe o intervalo de compensação viável.


---

#### 20.4.3 Regulação direta (command and control)

A regulação direta consiste em impor limites quantitativos de emissão ou padrões tecnológicos às firmas poluidoras. Exemplos incluem:

- Limites máximos de emissão de poluentes (ex.: padrão CONAMA para emissões veiculares);
- Obrigatoriedade de uso de tecnologia de controle (ex.: catalisadores);
- Zoneamento industrial (restrições de localização).

A principal desvantagem da regulação direta é que ela tipicamente não é **custo-efetiva**: ao impor o mesmo padrão a todas as firmas, não explora as diferenças nos custos marginais de abatimento. Firmas com custos de abatimento baixos deveriam reduzir mais emissões, e firmas com custos altos, menos — algo que um imposto ou mercado de permissões faz automaticamente.

#### 20.4.4 Mercados de permissão de emissão (cap and trade)


::: {.definitionbox title="Mercado de Permissões de Emissão (Cap and Trade)"}
Sistema em que o regulador fixa um **teto** (cap) total de emissões e distribui **permissões negociáveis** entre as firmas. As firmas podem comprar e vender permissões no mercado. Em equilíbrio, o preço da permissão iguala o custo marginal de abatimento entre todas as firmas, garantindo **custo-efetividade**.
:::


Se o teto é fixado no nível socialmente ótimo de emissões $\bar{E}$, e o mercado de permissões é competitivo, o preço de equilíbrio da permissão é exatamente igual ao imposto pigouviano ótimo:

$$
p_E = t^* = E'(q^{soc})
$$

A equivalência entre imposto e cap-and-trade sob certeza (Weitzman, 1974) é um resultado fundamental. Sob **incerteza**, porém, os instrumentos diferem: o imposto fixa o preço e deixa a quantidade flutuar; o cap fixa a quantidade e deixa o preço flutuar. A escolha ótima depende das elasticidades relativas dos custos de abatimento e dos danos marginais.


::: {.exresolvidobox title="Exercício Resolvido 20.3 —Cap-and-trade com duas firmas"}

**Enunciado.** Duas firmas emitem 100 ton cada. Custos de abatimento: $CA_1(a_1) = 3a_1^2$, $CA_2(a_2) = a_2^2$. O regulador impõe redução total de 80 ton. (a) Encontre a alocação custo-efetiva. (b) Calcule o preço de equilíbrio da permissão. (c) Compare com abatimento uniforme.

**Solução.**

**(a)** Equalização de custos marginais: $CMgA_1 = CMgA_2 \implies 6a_1 = 2a_2 \implies a_2 = 3a_1$. Restrição: $a_1 + 3a_1 = 80 \implies a_1 = 20$, $a_2 = 60$.

**(b)** $p = CMgA_1(20) = 6 \times 20 = 120 = CMgA_2(60) = 2 \times 60 = 120$. $\checkmark$

**(c)** Custo eficiente: $3(20)^2 + (60)^2 = 1200 + 3600 = 4800$. Uniforme ($a_i = 40$): $3(40)^2 + (40)^2 = 4800 + 1600 = 6400$. Economia: $6400 - 4800 = 1600$ (25%).
:::


::: {.exresolvidobox title="Exercício Resolvido 20.4 —Imposto vs. cap-and-trade sob incerteza (Weitzman)"}

**Enunciado.** O regulador estima o custo marginal de abatimento como $CMgA = 2a$, mas o verdadeiro é $CMgA = 4a$. O dano marginal é constante: $D' = 60$. Compare os resultados sob imposto $t = 60$ e cap $\bar{a} = 30$.

**Solução.**

Com **imposto** $t = 60$: a firma abate até $4a = 60 \implies a = 15$ (abaixo da meta de 30). Custo de abatimento: $2(15)^2 = 450$. Dano residual extra: $60 \times 15 = 900$. Mas o custo marginal = dano marginal no nível escolhido.

Com **cap** $\bar{a} = 30$: obriga abatimento de 30, com custo marginal $4 \times 30 = 120 \gg 60 = D'$. Custo de abatimento: $2(30)^2 = 1800$. A meta é atingida, mas a um custo marginal muito acima do dano marginal.

Conclusão: com dano marginal plano e custos subestimados, o **imposto domina** (resultado de Weitzman, 1974).
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/webr-cap-trade.html}


**WebR 20.3 — Cap-and-trade e alocação custo-efetiva.** Ajuste os custos de abatimento das firmas e a meta de redução para ver como o mercado de permissões aloca o esforço.


---


::: {.boxmundobox title="Box Mundo 20.2 — O EU Emissions Trading System (EU ETS)"}

**Contexto:** Lançado em 2005, o EU ETS é o maior mercado de carbono do mundo, cobrindo cerca de 40% das emissões de gases de efeito estufa da União Europeia. O sistema opera por cap-and-trade: a UE fixa um teto total de emissões que diminui anualmente, e as empresas dos setores cobertos (energia, indústria pesada, aviação intra-EU) devem possuir permissões correspondentes às suas emissões.

**Evolução:** O preço das permissões (EU Allowances, EUA) flutuou enormemente: de menos de €5 na Fase I (2005-2007, com excesso de permissões distribuídas gratuitamente) a mais de €100 em 2023 (Fase IV, com teto mais apertado e reserva de estabilidade de mercado). O preço reflete a escassez crescente à medida que o teto diminui.

**Lições:** O EU ETS demonstra que mercados de permissões funcionam — as emissões dos setores cobertos caíram ~35% entre 2005 e 2022 — mas que o *design* importa criticamente. A alocação gratuita inicial gerou windfall profits; o excesso de permissões deprimiu preços por uma década; e a introdução de mecanismos de estabilidade (como o Market Stability Reserve em 2019) foi necessária para corrigir o desequilíbrio.
:::


::: {.boxmundobox title="Box Mundo 20.3 — O programa americano de SO₂: cap-and-trade em ação"}

**Contexto:** O Acid Rain Program, criado pelo Clean Air Act de 1990 nos EUA, foi o primeiro grande sistema de cap-and-trade do mundo, voltado para a redução de emissões de dióxido de enxofre (SO₂) — o principal causador da chuva ácida. O programa impôs um teto nacional de emissões e distribuiu permissões negociáveis entre usinas termelétricas.

**Resultados:** As emissões de SO₂ caíram de 15,7 milhões de toneladas em 1990 para menos de 3 milhões em 2010 — uma redução de mais de 80%. O custo total de abatimento ficou substancialmente abaixo das estimativas ex ante, em grande parte porque o mercado de permissões permitiu que as firmas com menores custos de abatimento reduzissem mais.

**Análise econômica:** Estudos estimam que os custos de compliance com o mercado foram 15-50% menores do que teriam sido sob regulação uniforme (command-and-control). O programa é amplamente considerado um dos casos de maior sucesso de política ambiental baseada em instrumentos de mercado.
:::


::: {.boxbrasilbox title="Box Brasil 20.1 — REDD+ e o mercado voluntário de carbono florestal"}

**Contexto:** O mecanismo REDD+ (Redução de Emissões por Desmatamento e Degradação Florestal) busca atribuir valor econômico ao carbono estocado nas florestas, criando incentivos para a conservação. O Brasil é um dos principais participantes, com programas de REDD+ em vários estados amazônicos. O princípio é coaseano: criar um "direito de propriedade" sobre o carbono florestal e permitir transações de mercado.

**Dados:** O Fundo Amazônia, criado em 2008, recebeu aportes superiores a R$ 3,4 bilhões da Noruega e Alemanha até 2023. O Brasil aprovou em 2024 a regulamentação do Sistema Brasileiro de Comércio de Emissões (SBCE), um sistema de cap-and-trade que abrange grandes emissores.

**Lições:** O caso brasileiro ilustra a aplicação integrada dos instrumentos discutidos: subsídio pigouviano (Fundo Amazônia), mercado de permissões (SBCE, REDD+), regulação direta (Código Florestal) e os limites do Teorema de Coase quando os custos de transação são elevados e as externalidades são difusas e globais.
:::



## Bens Públicos: Atributos e Alocação

### 20.5 Quem Paga Pelo Poste de Luz?: Atributos dos Bens Públicos {#205}


::: {.definitionbox title="Bem Público"}
Um **bem público puro** é aquele que possui simultaneamente duas propriedades:

1. **Não-rivalidade**: o consumo do bem por um indivíduo não reduz a quantidade disponível para outros. Formalmente, se $G$ é a quantidade provida, cada consumidor pode consumir $G$ integralmente: $g_i = G$ para todo $i$.

2. **Não-exclusão**: não é possível (ou é excessivamente custoso) impedir indivíduos de consumir o bem, mesmo que não paguem por ele.
:::


#### Classificação de bens

A combinação dessas duas propriedades gera uma classificação de bens em quatro categorias:

**Tabela 20.1 — Classificação de bens por rivalidade e excludência**

| | **Excludente** | **Não-excludente** |
|---|---|---|
| **Rival** | **Bem privado** (alimento, vestuário, combustível) | **Recurso comum** (cardume no oceano, pasto comunitário, água de aquífero) |
| **Não-rival** | **Bem de clube** (TV a cabo, pedágio, parque com entrada paga) | **Bem público puro** (defesa nacional, iluminação pública, ar limpo) |

A tabela abaixo apresenta exemplos brasileiros para cada categoria:

**Tabela 20.2 — Exemplos brasileiros de cada categoria de bem**

| Categoria | Propriedades | Exemplos Brasileiros |
|---|---|---|
| **Bem privado** | Rival e excludente | Pão de queijo, gasolina, corte de cabelo, ingresso de cinema |
| **Bem público puro** | Não-rival e não-excludente | Defesa nacional (Forças Armadas), iluminação de via pública, sinal de rádio aberto, conhecimento científico básico |
| **Bem de clube** | Não-rival (até congestionamento) e excludente | Netflix, rodovia com pedágio (Via Dutra, Rodovia dos Bandeirantes), clube recreativo, sistema de streaming de futebol |
| **Recurso comum** | Rival e não-excludente | Peixes no rio Amazonas, pastagem no semiárido, água do Aquífero Guarani, vagas de estacionamento público |


::: {.boxbrasilbox title="Brasil na Prática — O SUS como bem público: universalidade, free-riding e congestionamento"}

**Contexto.** O Sistema Único de Saúde (SUS) — criado pela Constituição de 1988 — é o maior sistema público de saúde do mundo, cobrindo **150 milhões de brasileiros** que dependem exclusivamente dele (IBGE/PNS, 2019). O SUS opera sob o princípio da **universalidade**: qualquer pessoa, independentemente de contribuição, pode acessar seus serviços. Isso o torna, por desenho institucional, **não-excludente**.

**É bem público?** Tecnicamente, o SUS é um caso limítrofe na Tabela 20.1. Consultas e cirurgias são **rivais** — se o médico atende um paciente, não pode atender outro simultaneamente. Mas o *acesso ao sistema* tem características de bem público: o direito à saúde é não-excludente e a cobertura universal gera **externalidades positivas** (vacinação, vigilância epidemiológica, controle de endemias). Na prática, o SUS funciona como um **recurso comum congestionável** — não-excludente, mas rival quando a demanda excede a capacidade instalada.

**Dados.** O Brasil gasta ~3,9% do PIB em saúde pública (2023) — abaixo da média da OCDE (~6,5%). O SUS realizou **4,1 bilhões de procedimentos ambulatoriais** e **11,3 milhões de internações** em 2022 (DATASUS). O tempo médio de espera para cirurgia eletiva chega a **180 dias** em alguns estados (TCU, 2023). Em 2019, 28,5% da população possuía plano de saúde privado — um mecanismo de **auto-exclusão** que alivia a pressão sobre o recurso comum.

**Conexão com a teoria.** O SUS ilustra o dilema central da Seção 20.6: a provisão pública de um bem (quase) público financiado por impostos gerais enfrenta inevitavelmente o **problema do carona** — quem paga mais impostos financia desproporcionalmente o sistema, e não há como condicionar acesso à contribuição. A subprovisão (filas, falta de leitos, defasagem salarial de profissionais) é a manifestação empírica da inequação $G^{priv} < G^*$.

**Fonte:** IBGE, *Pesquisa Nacional de Saúde*, 2019; DATASUS, *Informações de Saúde*, 2022; TCU, *Relatório de Auditoria Operacional — Saúde*, 2023.
:::


::: {.notebox title="Bens Públicos Locais e Globais"}
A provisão de bens públicos pode ter escala local (iluminação de uma rua), regional (defesa costeira), nacional (sistema judiciário) ou global (estabilidade climática, erradicação de doenças). A escala determina qual nível de governo (ou cooperação internacional) é mais adequado para a provisão.
:::


::: {.exresolvidobox title="Exercício Resolvido 20.5 — Classificação de bens"}

**Enunciado.** Classifique os seguintes bens como privado, público puro, de clube ou recurso comum: (a) Wi-Fi aberto em praça pública; (b) Vacina contra febre amarela; (c) Peixe no Rio São Francisco; (d) Pedágio da Rodovia dos Bandeirantes; (e) Código-fonte do Linux.

**Solução.**

**(a)** Wi-Fi aberto: **bem público puro** (até congestionamento) — não-excludente (qualquer pessoa pode acessar) e não-rival (até o ponto de saturação da rede). Com congestionamento, torna-se recurso comum.

**(b)** Vacina: **bem privado** — rival (cada dose é usada por uma pessoa) e excludente (administrada individualmente). Porém, a *imunidade de rebanho* gerada é um **bem público** (externalidade positiva), o que justifica o financiamento público.

**(c)** Peixe no Rio São Francisco: **recurso comum** — rival (peixe capturado por um pescador não está disponível para outro) e não-excludente (difícil impedir acesso ao rio).

**(d)** Pedágio: **bem de clube** — não-rival (até congestionamento) e excludente (só entra quem paga a tarifa).

**(e)** Código-fonte do Linux: **bem público puro** — não-rival (copiar não reduz disponibilidade) e não-excludente (licença open-source garante acesso livre).
:::


---

### 20.6 Some Verticalmente, Não Horizontalmente: Bens Públicos e Alocação de Recursos {#206}

#### Condição de eficiência (Samuelson, 1954)

Para um bem privado, a eficiência requer que todos os consumidores se deparem com o mesmo preço, que iguala o custo marginal. Para um bem público, a condição de eficiência é fundamentalmente diferente.


::: {.theorembox title="Condição de Samuelson para Bens Públicos"}
A provisão eficiente de um bem público requer que a **soma das taxas marginais de substituição** de todos os indivíduos iguale a **taxa marginal de transformação** (custo marginal de produção):

$$
\sum_{i=1}^{N} TMS_i^{G,x} = TMT^{G,x}
\label{eq:20.11} \tag{20.11} 
$$


onde $TMS_i^{G,x} = \frac{\partial U_i / \partial G}{\partial U_i / \partial x_i}$ é a taxa marginal de substituição entre o bem público $G$ e o bem privado $x$ para o indivíduo $i$.
:::


**Intuição**: Como o bem público é não-rival, todos consomem a mesma quantidade $G$. O benefício social marginal de uma unidade adicional é a soma dos benefícios marginais de todos os indivíduos. Eficiência requer que esse benefício agregado iguale o custo marginal.

Diferentemente, para um bem privado, a eficiência requer $TMS_i = TMT$ para cada $i$ individualmente (não a soma).


::: {.intuitionbox title="Intuição Econômica"}
**Em uma frase:** Para bens privados, some as *quantidades* demandadas (soma horizontal); para bens públicos, some as *valorações marginais* (soma vertical).

**Pense assim:** Quando três amigos querem pizza (bem privado), cada um come a sua — a demanda de mercado é a soma horizontal das demandas individuais. Quando três amigos querem iluminação na rua (bem público), todos "consomem" a mesma luz — o que importa é quanto cada um valoriza marginalmente aquela luz. A demanda social é a soma vertical das disposições a pagar.

**Por que isso importa:** Essa distinção é a razão pela qual mercados funcionam bem para pizza mas mal para iluminação pública. O mecanismo de preços revela a demanda individual por bens privados (cada um compra sua quantidade ao preço de mercado), mas não revela a valoração individual por bens públicos (todos consomem a mesma quantidade independentemente do que pagam).
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/bem-publico.html}


**Figura 20.3 — Provisão ótima de bem público.** A soma vertical dos benefícios marginais individuais determina o benefício marginal social. O nível ótimo (Samuelson) ocorre onde a soma dos BMg iguala o CMg. Os preços de Lindahl mostram a contribuição personalizada de cada consumidor.


#### Subprovisão pelo mercado

O mercado tende a **subprover** bens públicos porque cada indivíduo, ao decidir sua contribuição voluntária, considera apenas **seu** benefício marginal, ignorando o benefício que gera para os demais.

Considere $N$ indivíduos idênticos com utilidade $U_i = u(x_i) + v(G)$, onde $G = \sum g_i$ é a contribuição total ao bem público. Cada indivíduo escolhe $g_i$ para maximizar:

$$
u(W_i - g_i) + v\!\left(g_i + \sum_{j \neq i} g_j\right)
$$

A condição de primeira ordem é:

$$
u'(W_i - g_i) = v'(G) \implies TMS_i = 1
\label{eq:20.12} \tag{20.12} 
$$


Mas a condição de eficiência requer $\sum TMS_i = 1$, ou seja, $TMS_i = 1/N$ para indivíduos idênticos. Como $1 > 1/N$, cada indivíduo demanda benefício marginal excessivamente alto, resultando em $G^{priv} < G^*$: o bem público é **subprovido**.


::: {.exresolvidobox title="Exercício Resolvido 20.6 — Condição de Samuelson com utilidade Cobb-Douglas"}

**Enunciado.** Dois consumidores com utilidade $U_i = x_i^{1/2} \cdot G^{1/2}$ e renda $W_i = 100$. Custo do bem público: $C(G) = G$. Derive a condição de Samuelson e encontre $G^*$.

**Solução.**

$TMS_i^{G,x} = \frac{\partial U_i / \partial G}{\partial U_i / \partial x_i} = \frac{(1/2)x_i^{1/2} G^{-1/2}}{(1/2)x_i^{-1/2} G^{1/2}} = \frac{x_i}{G}$.

Condição de Samuelson: $\frac{x_1}{G} + \frac{x_2}{G} = 1 \implies x_1 + x_2 = G$.

Restrição de recursos: $x_1 + x_2 + G = 200$. Substituindo: $G + G = 200 \implies G^* = 100$.

Cada consumidor consome $x_i = 50$ do bem privado.
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/webr-samuelson.html}


**WebR 20.4 — Condição de Samuelson e subprovisão.** Compare o nível ótimo (Samuelson) com o nível de contribuição voluntária (Nash) variando o número de consumidores.



## Preços de Lindahl e o Problema do Carona

### 20.7 Um Preço Para Cada Cidadão: Preços de Lindahl {#207}


::: {.definitionbox title="Equilíbrio de Lindahl"}
Mecanismo hipotético de provisão de bens públicos em que cada indivíduo paga um **preço personalizado** ($\tau_i$) pelo bem público, igual à sua taxa marginal de substituição. A soma dos preços de Lindahl iguala o custo marginal de produção:

$$
\sum_{i=1}^{N} \tau_i = CMg(G)
\label{eq:20.13} \tag{20.13} 
$$


Cada indivíduo, enfrentando seu preço personalizado, demanda a mesma quantidade $G^*$, e a condição de Samuelson é satisfeita.
:::


O equilíbrio de Lindahl é eficiente por construção, mas enfrenta um problema prático fundamental: para implementá-lo, o governo (ou o mecanismo) precisa conhecer as preferências individuais de cada cidadão — informação que os cidadãos têm incentivo para **não revelar de forma verdadeira**, conforme discutiremos na seção sobre o problema do carona.


::: {.exresolvidobox title="Exercício Resolvido 20.7 — Preços de Lindahl com três consumidores"}

**Enunciado.** Três consumidores com benefícios marginais $BMg_A = 50 - 2G$, $BMg_B = 40 - G$, $BMg_C = 30 - G$. O custo marginal é $CMg = 60$. Encontre o nível eficiente e os preços de Lindahl.

**Solução.**

Condição de Samuelson: $\sum BMg_i = CMg$.

$(50 - 2G) + (40 - G) + (30 - G) = 60 \implies 120 - 4G = 60 \implies G^* = 15$.

Preços de Lindahl: $\tau_A = 50 - 2(15) = 20$, $\tau_B = 40 - 15 = 25$, $\tau_C = 30 - 15 = 15$.

Verificação: $20 + 25 + 15 = 60 = CMg$. $\checkmark$

O consumidor com maior valoração marginal (B, no nível ótimo) paga mais. Cada consumidor, enfrentando seu preço personalizado, demanda exatamente $G^* = 15$.
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/tragedia-comuns.html}


**Figura 20.4 — Tragédia dos comuns.** Cada usuário iguala o produto médio ao custo (equilíbrio privado), enquanto o ótimo social requer igualar o produto marginal ao custo. A área sombreada indica a região de sobreuso do recurso comum.


---

### 20.8 Eu Não Pago, Mas Uso: O Problema do Carona (Free Rider) {#208}


::: {.definitionbox title="Problema do Carona"}
Ocorre quando indivíduos racionais subinvestem na provisão de um bem público (ou na revelação de suas preferências) porque esperam se beneficiar das contribuições alheias sem pagar por elas. O bem público é não-excludente: mesmo quem não paga pode consumir.
:::


No contexto do equilíbrio de Lindahl, cada indivíduo tem incentivo para subreportar sua valoração pelo bem público, pagando um preço de Lindahl menor e deixando que outros financiem a provisão. Formalmente, se o preço de Lindahl é determinado pela valoração reportada $\hat{\tau}_i$:

$$
\hat{\tau}_i < \tau_i^{verdadeiro} = TMS_i
$$

O comportamento de carona é mais severo quando:

- O grupo é **grande** (a contribuição individual tem efeito desprezível sobre $G$);
- O bem é **puramente não-excludente** (não há como punir quem não contribui);
- Não há **interação repetida** ou mecanismos de reputação.


::: {.infobox title="Nobel de Economia 2009 — Elinor Ostrom"}
Elinor Ostrom recebeu o Prêmio Nobel "por sua análise da governança econômica, especialmente dos bens comuns" — o primeiro Nobel para uma mulher em Economia. O trabalho de Ostrom desafiou a visão convencional de que recursos comuns (commons) inevitavelmente sofrem a "tragédia dos comuns" de Hardin (1968). Através de extenso trabalho de campo e análise comparativa, Ostrom demonstrou que comunidades frequentemente desenvolvem **instituições locais** — regras de uso, monitoramento entre pares, sanções graduais — que sustentam a cooperação e previnem o esgotamento dos recursos, sem necessidade de privatização ou regulação estatal centralizada. Seu *Governing the Commons* (1990) documentou exemplos de florestas comunitárias na Suíça, sistemas de irrigação no Nepal e pesqueiros costeiros no Japão que foram geridos com sucesso por séculos.
:::


::: {.notebox title="Evidência Experimental"}
Experimentos de bens públicos (jogos de contribuição voluntária) mostram que as contribuições iniciais são tipicamente 40-60% do ótimo social, mas declinam ao longo do tempo para 10-20%, convergindo para a previsão teórica de subprovisão. Mecanismos de punição entre pares (peer punishment) e comunicação face a face aumentam significativamente as contribuições (Fehr & Gächter, 2000; Ostrom et al., 1992).
:::


::: {.boxbrasilbox title="Box Brasil 20.2 — Cobrança pelo uso da água no Brasil: o preço do recurso comum"}

**Contexto:** A Política Nacional de Recursos Hídricos (Lei 9.433/1997) instituiu a cobrança pelo uso da água bruta no Brasil, reconhecendo a água como **recurso comum** sujeito à tragédia dos comuns. Sem precificação, o uso excessivo levaria ao esgotamento dos mananciais.

**Mecanismo:** A cobrança é implementada pelos Comitês de Bacia Hidrográfica — instâncias de governança local que ecoam os princípios de Ostrom. Usuários que captam água, consomem ou lançam efluentes pagam pelo uso, com valores definidos coletivamente. A receita é reinvestida na bacia.

**Dados:** Na bacia do rio Paraíba do Sul (RJ/SP/MG), a cobrança arrecadou mais de R$ 200 milhões entre 2003 e 2023. O valor cobrado por metro cúbico varia entre R$ 0,01 e R$ 0,02 — baixo em termos absolutos, mas simbolicamente importante como sinal de escassez.

**Análise:** A cobrança combina dois instrumentos: um preço pigouviano (internalizar o custo do uso sobre outros usuários) e governança coaseana descentralizada (os próprios usuários definem as regras via comitê). É um dos exemplos mais sofisticados de gestão de recursos comuns no mundo em desenvolvimento.
:::


::: {.boxbrasilbox title="Brasil na Prática — Tragédia dos comuns na pesca artesanal do Nordeste"}

**Contexto.** O litoral nordestino abriga mais de **500 mil pescadores artesanais** — a maior concentração do país (MPA/IBGE, 2023). A pesca artesanal opera em regime de **acesso aberto**: qualquer pescador pode lançar redes no mesmo trecho de mar ou estuário, sem direitos de propriedade definidos sobre o estoque pesqueiro. Essa é a configuração clássica da **tragédia dos comuns** de Hardin (1968).

**Dados.** A produção pesqueira extrativa marinha do Nordeste caiu de ~350 mil toneladas/ano (anos 2000) para ~230 mil toneladas/ano (2020) — uma redução de 34% em duas décadas (IBGE, *Pesquisa da Pecuária Municipal*). A lagosta vermelha (*Panulirus argus*), espécie de alto valor comercial, teve sua captura reduzida em mais de 80% desde os anos 1990. O ICMBio estima que 15% das espécies marinhas exploradas comercialmente estão **sobreexplotadas**.

**O modelo em ação.** Cada pescador iguala seu benefício marginal privado (receita da captura) ao custo marginal privado (combustível, mão de obra), ignorando o **custo externo** que impõe sobre os demais: a redução do estoque pesqueiro futuro. O equilíbrio privado ocorre onde $PMe = w/p$ (produto médio = custo por unidade de esforço), mas o ótimo social requer $PMg = w/p$ (produto marginal = custo) — exatamente como mostra a Figura 20.4. Como $PMe > PMg$ para recursos congestionáveis, o esforço de pesca no equilíbrio privado excede sistematicamente o nível sustentável.

**Soluções tentadas.** O *defeso* (período de proibição da pesca, com seguro-defeso pago pelo governo) tenta limitar o esforço total. Reservas extrativistas marinhas (RESEX) — como a RESEX de Canavieiras (BA) e a RESEX Acaú-Goiana (PB/PE) — implementam governança à la Ostrom, com regras comunitárias de uso. Evidências sugerem que RESEX com gestão participativa efetiva conseguem manter estoques pesqueiros 25-40% acima de áreas não protegidas (Lopes et al., 2013).

**Fonte:** IBGE, *Pesquisa da Pecuária Municipal*, 2020; ICMBio, *Livro Vermelho da Fauna Brasileira*, 2018; Lopes, P.F.M. et al. (2013). Sugestões para melhorar a gestão de unidades de conservação costeiras e marinhas no Brasil. *Ambiente & Sociedade*, 16(4), 93-112.
:::



## Votação e Mecanismos de Revelação

### 20.9 Enfiar 200 Milhões de Preferências Numa Urna: Votação e Alocação de Recursos {#209}

Na ausência de mecanismos de mercado eficientes para bens públicos, as sociedades recorrem a processos políticos — especialmente a **votação** — para decidir o nível de provisão.

#### Votação por maioria simples

Considere uma comunidade de $N$ cidadãos que deve decidir o nível de gastos $G$ com um bem público, financiado por imposto uniforme $T = CMg(G)/N$ por pessoa. Cada cidadão $i$ tem nível preferido $G_i^*$ que maximiza $U_i(G) - T$.


::: {.theorembox title="Teorema do Eleitor Mediano"}
Se as preferências dos eleitores são **unimodais** (single-peaked) e a escolha é unidimensional, a regra de maioria simples seleciona o nível preferido pelo **eleitor mediano** — aquele cujo nível preferido $G_m^*$ é tal que metade dos eleitores prefere mais e metade prefere menos.

Formalmente, se $G_1^* \leq G_2^* \leq \cdots \leq G_N^*$, o resultado da votação por maioria é $G_m^* = G_{(N+1)/2}^*$ (para $N$ ímpar).
:::


**Relação com eficiência**: O nível escolhido pelo eleitor mediano geralmente **não** coincide com o nível eficiente de Samuelson, exceto por coincidência. A provisão pode ser excessiva ou insuficiente dependendo da distribuição de preferências e renda na população.

#### Paradoxo de Condorcet

Quando as preferências não são unimodais ou a escolha é multidimensional, a votação por maioria pode produzir **ciclos** (A vence B, B vence C, C vence A), não existindo um vencedor de Condorcet.

**Exemplo:** Três eleitores (1, 2, 3) e três alternativas (A, B, C).

| Eleitor | 1.ª preferência | 2.ª preferência | 3.ª preferência |
|---------|-----------------|-----------------|-----------------|
| 1       | A               | B               | C               |
| 2       | B               | C               | A               |
| 3       | C               | A               | B               |

- A vs. B: A vence (eleitores 1 e 3).
- B vs. C: B vence (eleitores 1 e 2).
- C vs. A: C vence (eleitores 2 e 3).

Resultado: ciclo A ≻ B ≻ C ≻ A. Não existe vencedor de Condorcet.

#### Teorema da Impossibilidade de Arrow


::: {.theorembox title="Teorema da Impossibilidade de Arrow (1951)"}
Não existe regra de agregação de preferências (com três ou mais alternativas e dois ou mais indivíduos) que satisfaça simultaneamente as seguintes quatro condições:

1. **Domínio irrestrito**: a regra funciona para qualquer perfil de preferências individuais.
2. **Princípio de Pareto (unanimidade)**: se todos preferem A a B, a escolha social deve preferir A a B.
3. **Independência de alternativas irrelevantes (IIA)**: a ordenação social entre A e B depende apenas das preferências individuais entre A e B, não das preferências sobre C.
4. **Não-ditadura**: não existe um indivíduo cuja preferência sempre determine a escolha social.
:::


O teorema de Arrow demonstra que qualquer sistema de votação com três ou mais alternativas necessariamente viola pelo menos uma dessas condições. Em outras palavras: não existe sistema de votação perfeito.

**Regras de votação e suas violações:**

| Regra | Violação principal |
|-------|-------------------|
| Maioria simples | Pode gerar ciclos (viola transitividade) |
| Ditadura | Viola não-ditadura |
| Unanimidade (veto) | Viola completude |
| Contagem de Borda | Viola IIA |
| Votação por aprovação | Viola IIA |


::: {.infobox title="Nobel de Economia 1972 — Kenneth Arrow"}
Kenneth Arrow recebeu o Prêmio Nobel (compartilhado com John Hicks) "por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar." O Teorema da Impossibilidade, publicado em *Social Choice and Individual Values* (1951), é um dos resultados mais profundos das ciências sociais: demonstra que a democracia, por mais desejável que seja, não pode ser "perfeita" em sentido formal — todo sistema de votação envolve trade-offs fundamentais. O teorema inspirou décadas de pesquisa em teoria da escolha social, design de mecanismos e economia política.
:::


---

### 20.10 Fazendo Você Dizer a Verdade: Mecanismos de Revelação de Preferências {#2010}

O desafio central na provisão de bens públicos é induzir os indivíduos a **revelar honestamente** suas preferências. O mecanismo de Vickrey-Clarke-Groves (VCG) fornece uma solução elegante.


::: {.definitionbox title="Mecanismo VCG (Vickrey-Clarke-Groves)"}
Classe de mecanismos de revelação de preferências em que cada indivíduo paga um imposto igual ao **custo externo** que sua participação impõe sobre os demais membros do grupo. Sob esse mecanismo, é estratégia dominante para cada indivíduo revelar sua verdadeira valoração.
:::


#### Funcionamento do mecanismo de Clarke (imposto pivotal)

1. Cada indivíduo $i$ reporta sua valoração $\hat{v}_i$ pelo bem público.
2. O bem é provido se $\sum_i \hat{v}_i \geq C$ (custo de provisão).
3. O indivíduo $i$ é **pivotal** se sua presença altera a decisão (o bem é provido com ele mas não sem ele).
4. Se $i$ é pivotal, paga um imposto igual a:

$$
t_i = C - \sum_{j \neq i} \hat{v}_j
\label{eq:20.14} \tag{20.14} 
$$


Esse imposto corresponde ao "custo" que a presença de $i$ impõe sobre os demais (que precisam financiar a diferença).

**Por que funciona**: Se $i$ reporta $\hat{v}_i > v_i$, pode tornar-se pivotal quando não deveria, e pagar um imposto superior ao seu benefício real. Se reporta $\hat{v}_i < v_i$, pode impedir a provisão de um bem que lhe seria benéfico. Em ambos os casos, o desvio não é lucrativo, e a verdade é estratégia dominante.


::: {.notebox title="Limitações do VCG"}
O mecanismo VCG não é equilibrado orçamentariamente (os impostos pivotais não cobrem o custo total), pode ser vulnerável a coalizões, e requer que as valorações sejam **quase-lineares** (utilidade transferível). Na prática, sua aplicação direta é rara, mas o princípio inspira mecanismos em leilões (como o leilão de Vickrey) e em design de mercados.
:::


::: {.exresolvidobox title="Exercício Resolvido 20.8 — Mecanismo de Clarke para bem público discreto"}

**Enunciado.** Três vizinhos decidem se constroem uma calçada (custo = R$900, dividido igualmente em R$300 cada). Valorações: $v_A = 400$, $v_B = 350$, $v_C = 100$. (a) A calçada deve ser construída? (b) Quem é pivotal? (c) Calcule os impostos pivotais.

**Solução.**

**(a)** $\sum v_i = 400 + 350 + 100 = 850 < 900$. Pelo critério de eficiência, a calçada **não** deve ser construída ($\sum v_i < C$).

Mas calculemos os excedentes líquidos: $\sum (v_i - c_i) = (400 - 300) + (350 - 300) + (100 - 300) = 100 + 50 - 200 = -50 < 0$. Confirmado: não construir.

**(b)** Sem A: $\sum_{j \neq A}(v_j - c_j) = 50 + (-200) = -150 < 0$. Decisão sem A: não construir. Decisão com A: não construir. A **não é pivotal**.

Sem B: $\sum_{j \neq B}(v_j - c_j) = 100 + (-200) = -100 < 0$. Decisão sem B: não construir. Decisão com B: não construir. B **não é pivotal**.

Sem C: $\sum_{j \neq C}(v_j - c_j) = 100 + 50 = 150 > 0$. Decisão sem C: **construir**. Decisão com C: não construir. C **é pivotal** — sua presença muda a decisão de "construir" para "não construir".

**(c)** C é pivotal e impede um ganho líquido de 150 para os demais. Contudo, como a decisão final é "não construir", não há imposto a cobrar neste caso — o imposto pivotal só se aplica quando o agente pivotal altera a decisão *para provisão*. Se reformularmos com valorações mais altas ($v_C = 200$), a construção ocorreria e C pagaria um imposto pelo dano imposto aos demais.
:::


---

\figurePlaceholder{/micro-book/graficos/cap20/webr-vcg.html}


**WebR 20.5 — Mecanismo VCG e imposto pivotal.** Insira as valorações dos participantes e o custo do bem público para ver quem é pivotal e os impostos correspondentes.


---


::: {.boxbrasilbox title="Box Brasil 20.3 — Desmatamento na Amazônia e precificação de carbono"}

**Contexto:** O desmatamento na Amazônia brasileira é um caso emblemático de **externalidade negativa de escala global**. A remoção da floresta gera custos externos que incluem emissões de CO₂ (contribuindo para a mudança climática), perda de biodiversidade, alteração do ciclo hidrológico (inclusive os "rios voadores" que transportam umidade para o Centro-Sul do Brasil) e erosão do solo.

**Dimensão do problema:** Segundo dados do INPE/PRODES, o desmatamento acumulado na Amazônia Legal superou 85 milhões de hectares até 2023 (cerca de 17% da floresta original). Após queda expressiva entre 2004 e 2012 (de 27.772 km² para 4.571 km² anuais), as taxas voltaram a subir, atingindo 13.235 km² em 2021, antes de recuar para cerca de 9.001 km² em 2023 com o reforço de políticas de fiscalização.

**Análise econômica:** O desmatamento persiste porque os **benefícios privados** (expansão da pecuária, agricultura, extração madeireira) excedem os **custos privados** para os agentes locais, embora os **custos sociais** — incluindo danos climáticos globais — superem largamente os benefícios. Trata-se de uma externalidade negativa clássica.

**Instrumentos de política:** O Fundo Amazônia (subsídio pigouviano), REDD+ (mecanismo coaseano de direitos sobre carbono florestal), o Sistema Brasileiro de Comércio de Emissões — SBCE (cap-and-trade, regulamentado em 2024) e o Código Florestal (command-and-control). Este caso ilustra a aplicação integrada de todos os instrumentos discutidos no capítulo.
:::


::: {.boxmundobox title="Box Mundo 20.4 — BBC e NHK: financiamento de radiodifusão pública"}

**Contexto:** A radiodifusão é um bem público clássico (não-rival e não-excludente via ondas de rádio/TV). Como financiar sua provisão sem subprovisão?

**Modelos:** A BBC (Reino Unido) é financiada pela *licence fee* — uma taxa anual obrigatória de £159 (2023) para qualquer domicílio com aparelho de TV. A NHK (Japão) cobra uma taxa semelhante de ¥13.650/ano. Ambos os modelos evitam o problema do carona tornando o pagamento compulsório.

**Alternativas:** Nos EUA, a PBS é financiada por uma combinação de doações voluntárias, subsídio federal e patrocínio corporativo — resultando em orçamento muito menor per capita que BBC ou NHK. O modelo americano ilustra a subprovisão prevista pela teoria quando o financiamento é voluntário.

**Análise:** A taxa compulsória é economicamente equivalente a um imposto de Lindahl uniforme — não personalizado (todos pagam o mesmo), mas que garante provisão. A discussão sobre o nível adequado da taxa e a abrangência do serviço público é essencialmente um debate sobre a condição de Samuelson na prática.
:::



## Exercícios e ANPEC — Capítulo 20


::: {.tipbox title="Dados para exercicios empiricos"}
- **SEEG (emissoes de GEE):** [seeg.eco.br](https://seeg.eco.br/) — Sistema de Estimativas de Emissoes de Gases de Efeito Estufa do Observatorio do Clima. Dados por setor e estado para estimar custos sociais de externalidades.
- **INPE (desmatamento):** [terrabrasilis.dpi.inpe.br](http://terrabrasilis.dpi.inpe.br/) — Dados PRODES e DETER para analisar a tragedia dos comuns na Amazonia.
- **ANA (recursos hidricos):** [snirh.gov.br](https://www.snirh.gov.br/) — Dados sobre outorgas e cobranca pelo uso da agua — precificacao de externalidade em acao.
- **Notebook:** N17 — Modelo DICE simplificado (trajetorias otimas de emissao).
:::


### 🧠 Revisão Rápida


::: {.infobox title="1. O que distingue uma externalidade tecnológica de uma externalidade pecuniária?"}
Uma externalidade **tecnológica** (real) afeta diretamente a função de produção ou utilidade de outro agente, sem passar pelo sistema de preços (ex.: poluição). Uma externalidade **pecuniária** opera *via preços* (ex.: uma firma grande que reduz o preço de mercado e prejudica concorrentes). Apenas externalidades tecnológicas geram ineficiência alocativa e constituem falhas de mercado.
:::


::: {.infobox title="2. Por que o imposto pigouviano restaura a eficiência?"}
O imposto pigouviano $t^* = E'(q^{soc})$ faz a firma pagar exatamente o custo marginal externo que impõe à sociedade. Ao incluir esse custo no cálculo de maximização de lucro, a firma "internaliza" a externalidade e escolhe o nível de produção socialmente ótimo (onde CMg social = preço).
:::


::: {.infobox title="3. Qual é a diferença fundamental entre a condição de eficiência para bens privados e bens públicos?"}
Para bens privados: $TMS_i = TMT$ para cada indivíduo (igualdade individual). Para bens públicos: $\sum_i TMS_i = TMT$ (soma das TMS). A diferença reflete a não-rivalidade: todos consomem a mesma quantidade do bem público, então o benefício social é a *soma* dos benefícios individuais.
:::


::: {.infobox title="4. Por que o Teorema de Coase tem aplicação prática limitada?"}
Porque requer: (i) custos de transação nulos, (ii) direitos de propriedade bem definidos, (iii) poucas partes envolvidas e (iv) informação simétrica. Na prática, externalidades difusas (como poluição do ar) envolvem milhões de partes, custos de negociação proibitivos e assimetria de informação — tornando a solução coaseana inviável.
:::


::: {.infobox title="5. O que garante que o mecanismo VCG induz revelação verdadeira?"}
No VCG, cada agente paga um imposto igual ao custo externo que sua presença impõe sobre os demais. Se subreporta sua valoração, pode impedir a provisão de um bem que lhe seria benéfico. Se sobrereporta, pode tornar-se pivotal quando não deveria, pagando mais do que vale. Em ambos os casos, desviar da verdade não é lucrativo — a verdade é estratégia dominante.
:::


---

### 📋 Resumo do Capítulo

1. **Externalidades** surgem quando as ações de um agente afetam diretamente o bem-estar de outros fora do sistema de preços, gerando divergência entre custos/benefícios privados e sociais.
2. Externalidades negativas levam a **sobreprodução**; positivas, a **subprodução** em relação ao ótimo social.
3. As principais soluções são: **imposto/subsídio pigouviano** (internaliza o custo externo via preço), **Teorema de Coase** (negociação privada sob custos de transação nulos), **regulação direta** (limites quantitativos) e **cap-and-trade** (mercado de permissões).
4. **Bens públicos** (não-rivais e não-excludentes) são subprovidos pelo mercado devido ao **problema do carona**. A condição de Samuelson ($\sum TMS = TMT$) difere fundamentalmente da eficiência para bens privados.
5. **Preços de Lindahl** resolvem o problema em teoria, mas requerem informação que os agentes têm incentivo para não revelar. O **mecanismo VCG** torna a revelação verdadeira uma estratégia dominante.
6. O **Teorema da Impossibilidade de Arrow** mostra que nenhum sistema de votação satisfaz simultaneamente todos os critérios desejáveis de agregação de preferências.

---

###  Conceitos-Chave

**Tabela 20.3 — Conceitos-chave do Capítulo 20**

| Conceito | Definição Resumida |
|---|---|
| **Externalidade** | Efeito da ação de um agente sobre outro, fora do sistema de preços |
| **Imposto pigouviano** | Imposto unitário = custo marginal externo no ótimo social |
| **Teorema de Coase** | Barganha privada alcança eficiência se custos de transação = 0 e direitos de propriedade definidos |
| **Cap-and-trade** | Teto de emissões + permissões negociáveis → custo-efetividade |
| **Bem público** | Bem não-rival e não-excludente |
| **Condição de Samuelson** | $\sum TMS_i = TMT$ para provisão eficiente de bem público |
| **Preço de Lindahl** | Preço personalizado = TMS individual; soma = CMg |
| **Problema do carona** | Incentivo a subinvestir na provisão de bens públicos |
| **Teorema de Arrow** | Impossibilidade de regra de agregação perfeita com ≥3 alternativas |
| **Mecanismo VCG** | Imposto pivotal torna revelação verdadeira estratégia dominante |

---

###  Exercícios

**Exercício 20.1.** {#ex-20-1} Uma fábrica de celulose produz $q$ toneladas com custo total $C(q) = 10q + q^2$ e vende ao preço $P = 110$. A produção gera poluição com custo externo $E(q) = 2q^2$.

(a) Determine a quantidade produzida pela firma na ausência de regulação.
(b) Determine a quantidade socialmente ótima.
(c) Calcule o imposto pigouviano ótimo $t^*$ e verifique que ele induz a firma a produzir a quantidade eficiente.
(d) Calcule a perda de peso morto associada à ausência de regulação.

 Solução (Cap. 20)

---

**Exercício 20.2.** {#ex-20-2} Considere três indivíduos ($A$, $B$, $C$) com as seguintes valorações marginais por um bem público $G$ (medido em unidades):

| $G$ | $BMg_A$ | $BMg_B$ | $BMg_C$ | $CMg$ |
|-------|-----------|-----------|-----------|---------|
| 1     | 40        | 30        | 20        | 60      |
| 2     | 35        | 25        | 15        | 60      |
| 3     | 25        | 20        | 10        | 60      |
| 4     | 15        | 10        | 5         | 60      |
| 5     | 5         | 5         | 2         | 60      |

(a) Determine o nível eficiente de provisão do bem público.
(b) Calcule os preços de Lindahl para cada indivíduo no nível eficiente.
(c) Explique por que a provisão voluntária (contribuição individual) resultaria em $G < G^*$.
(d) Verifique se os preços de Lindahl são equilibrados orçamentariamente.

 Solução (Cap. 20)

---

**Exercício 20.3.** {#ex-20-3} Duas firmas emitem poluentes. A firma 1 tem custo de abatimento $CA_1(a_1) = 2a_1^2$ e a firma 2, $CA_2(a_2) = a_2^2$, onde $a_i$ é o abatimento em toneladas. Cada firma emite 100 toneladas sem regulação. O regulador deseja reduzir as emissões totais em 60 toneladas.

(a) Qual é a alocação custo-efetiva de abatimento entre as duas firmas?
(b) Qual seria o custo total se o regulador impusesse abatimento uniforme (30 toneladas cada)?
(c) Compare com o custo da solução custo-efetiva e calcule a economia.
(d) Se for utilizado um mercado de permissões (cap-and-trade), qual será o preço de equilíbrio da permissão?

 Solução (Cap. 20)

---

**Exercício 20.4.** {#ex-20-4} Uma comunidade com 100 moradores deve decidir se constrói um parque público (bem público discreto) ao custo de R$50.000. Cada morador $i$ tem valoração $v_i$ pela praça, distribuída uniformemente entre R$200 e R$800.

(a) O parque deve ser construído? (Compare a soma das valorações esperadas com o custo.)
(b) Se a construção for financiada por contribuição voluntária uniforme de R$500 por morador, quantos moradores estariam dispostos a contribuir?
(c) Explique o problema do carona nesta situação.
(d) Descreva como um mecanismo de imposto pivotal (Clarke) funcionaria neste contexto.

 Solução (Cap. 20)

---

**Exercício 20.5.** {#ex-20-5} Considere uma economia com dois bens — um privado ($x$) e um público ($G$) — e dois consumidores com utilidades:

$$
U_1 = \ln(x_1) + 2\ln(G), \quad U_2 = \ln(x_2) + \ln(G)
$$

O preço do bem privado é 1 e o custo marginal do bem público é $c$. Cada consumidor tem renda $W$.

(a) Derive a condição de Samuelson para a provisão eficiente de $G$.
(b) Determine o nível eficiente $G^*$ em função de $W$ e $c$.
(c) Se cada consumidor contribui voluntariamente (equilíbrio de Nash em contribuições), determine o nível de $G$ de equilíbrio.
(d) Mostre que $G^{Nash} < G^*$ e interprete economicamente.

 Solução (Cap. 20)

---

**Exercício 20.6.** {#ex-20-6} Uma indústria siderúrgica produz $q$ toneladas de aço com custo total $C(q) = 20q + 0{,}5q^2$, vende ao preço $P = 80$. Custo externo: $E(q) = q^2$.

(a) Encontre a quantidade sem regulação e a socialmente ótima.
(b) Calcule o imposto pigouviano ótimo e verifique.
(c) Calcule a receita fiscal e o peso morto eliminado pelo imposto.
(d) Se o regulador fixar incorretamente $t = 30$, qual será a quantidade e o peso morto residual?

 Solução (Cap. 20)

---

**Exercício 20.7.** {#ex-20-7} Um fazendeiro cria $n$ cabeças de gado com lucro $\pi_F(n) = 120n - 3n^2$. O gado causa dano à lavoura vizinha de $D(n) = 2n^2$.

(a) Encontre o equilíbrio sem negociação.
(b) Encontre o número socialmente ótimo de cabeças.
(c) Se o fazendeiro tem o direito de criar gado livremente, mostre que a negociação coaseana leva ao ótimo social. Determine o intervalo de compensação.
(d) Se o lavrador tem o direito a não sofrer danos, mostre que a negociação leva ao mesmo ótimo. Determine o intervalo de compensação.

 Solução (Cap. 20)

---

**Exercício 20.8.** {#ex-20-8} $N = 50$ consumidores idênticos, renda $W = 100$, utilidade $U_i = x_i + 10\sqrt{G}$, custo $C(G) = G$.

(a) Derive a condição de Samuelson e encontre $G^*$.
(b) Encontre o equilíbrio de Nash de contribuição voluntária $G^{Nash}$.
(c) Calcule a razão $G^{Nash}/G^*$ e interprete.
(d) O que acontece se $N$ aumenta para 200? O problema do carona se agrava ou se atenua?

 Solução (Cap. 20)

---

**Exercício 20.9.** {#ex-20-9} (**Tragédia dos comuns.**) Num lago de acesso aberto, a captura total é $Q = E(100 - E)$, onde $E$ é o esforço total de pesca. Preço do peixe: $p = 1$. Custo por unidade de esforço: $w = 10$. Há $n = 10$ pescadores idênticos.

(a) Encontre o esforço total de equilíbrio (acesso aberto).
(b) Encontre o esforço socialmente eficiente.
(c) Calcule o peso morto do acesso aberto.
(d) Proponha duas políticas para alcançar o ótimo social.

 Solução (Cap. 20)

---

**Exercício 20.10.** {#ex-20-10} (**Cap-and-trade vs. imposto sob incerteza.**) Três firmas com custos marginais de abatimento: $CMgA_1 = 2a_1$, $CMgA_2 = 4a_2$, $CMgA_3 = a_3$. Meta: redução total de 100 toneladas.

(a) Encontre a alocação custo-efetiva e o preço de equilíbrio das permissões. Mostre a equivalência com o imposto uniforme ótimo.
(b) Compare o custo total da alocação custo-efetiva com abatimento uniforme.
(c) Se os verdadeiros custos forem 50% maiores que o estimado e o dano marginal for constante ($D' = 40$), compare imposto $t = 40$ com cap = 100.
(d) Relacione o resultado com Weitzman (1974).

 Solução (Cap. 20)

---

###  Vem, ANPEC!


::: {.infobox title="ANPEC 2017, Questão 10"}
Sobre externalidades e bens públicos, classifique as afirmativas como Verdadeiras (V) ou Falsas (F):

(0) Na presença de externalidade negativa de produção, o equilíbrio competitivo gera quantidade superior à socialmente ótima.

(1) O Teorema de Coase afirma que, havendo custos de transação nulos e direitos de propriedade bem definidos, a negociação privada sempre conduzirá à alocação eficiente, independentemente da atribuição inicial dos direitos.

(2) A condição de Samuelson para provisão eficiente de bens públicos estabelece que cada consumidor deve igualar sua taxa marginal de substituição ao custo marginal de produção.

(3) Em um sistema de cap-and-trade, o preço de equilíbrio da permissão de emissão iguala os custos marginais de abatimento entre as firmas participantes.

(4) O problema do carona (free rider) tende a ser mais severo em grupos maiores.

??? tip "Gabarito"
    (0) **V** — Com externalidade negativa, CMg social > CMg privado, levando a sobreprodução.

    (1) **V** — Enunciado correto do Teorema de Coase.

    (2) **F** — A condição de Samuelson exige que a **soma** das TMS iguale o CMg, não a TMS individual.

    (3) **V** — No equilíbrio do mercado de permissões, os custos marginais de abatimento se equalizam.

    (4) **V** — Em grupos maiores, a contribuição individual tem efeito menor sobre a provisão total, aumentando o incentivo ao free-riding (Olson, 1965).
:::


::: {.infobox title="ANPEC 2022, Questão 08"}
Considere uma economia com dois consumidores (1 e 2), um bem privado $x$ e um bem público $G$. As utilidades são $U_1 = x_1 + 8\sqrt{G}$ e $U_2 = x_2 + 4\sqrt{G}$. O custo do bem público é $C(G) = G$. Cada consumidor tem renda $W = 100$.

(0) A condição de Samuelson para provisão eficiente é $\frac{4}{\sqrt{G}} + \frac{2}{\sqrt{G}} = 1$.

(1) O nível eficiente de bem público é $G^* = 36$.

(2) No equilíbrio de Nash de contribuição voluntária, $G^{Nash} = 16$.

(3) A provisão voluntária produz $G^{Nash}/G^* = 4/9$ do nível eficiente.

(4) A introdução de um mecanismo de Clarke resolveria o problema de subprovisão induzindo revelação verdadeira das preferências.

??? tip "Gabarito"
    (0) **V** — $TMS_1 = 4/\sqrt{G}$, $TMS_2 = 2/\sqrt{G}$. Soma = $6/\sqrt{G} = 1$... Espere: $TMS_1 = 8/(2\sqrt{G}) = 4/\sqrt{G}$, $TMS_2 = 4/(2\sqrt{G}) = 2/\sqrt{G}$. Soma: $(4+2)/\sqrt{G} = 6/\sqrt{G}$. A questão diz $4/\sqrt{G} + 2/\sqrt{G}$, que é o mesmo que $6/\sqrt{G} = 1$. **V**.

    (1) **V** — $6/\sqrt{G} = 1 \implies \sqrt{G} = 6 \implies G^* = 36$.

    (2) **V** — No Nash, cada consumidor iguala sua TMS individual ao CMg. Consumidor 1: $4/\sqrt{G} = 1 \implies G = 16$. Se 1 contribui sozinho, $G = 16$. Consumidor 2: $2/\sqrt{G} = 1 \implies G = 4$. Mas 2 não contribui se 1 já provê $G = 16$ (pois $2/\sqrt{16} = 0{,}5 < 1$). Nash: $G = 16$. **V**.

    (3) **V** — $16/36 = 4/9$. **V**.

    (4) **V** — O mecanismo de Clarke torna a revelação verdadeira estratégia dominante, resolvendo o problema do carona. **V**.
:::


::: {.infobox title="ANPEC 2020, Questão 12"}
Sobre o Teorema da Impossibilidade de Arrow:

(0) O teorema se aplica quando há pelo menos três alternativas e dois indivíduos.

(1) A condição de independência de alternativas irrelevantes (IIA) exige que a ordenação social entre A e B dependa apenas das preferências individuais entre A e B.

(2) A contagem de Borda satisfaz todas as condições de Arrow.

(3) O Teorema do Eleitor Mediano é válido quando as preferências são unimodais e a escolha é unidimensional.

(4) O resultado do eleitor mediano sempre coincide com o nível eficiente de Samuelson para bens públicos.

??? tip "Gabarito"
    (0) **V** — Condição necessária para o teorema.

    (1) **V** — Definição correta de IIA.

    (2) **F** — A contagem de Borda viola IIA (a ordenação entre A e B pode mudar com a introdução de C).

    (3) **V** — Condições suficientes para o Teorema do Eleitor Mediano.

    (4) **F** — O eleitor mediano reflete a preferência de um indivíduo específico, não a soma das TMS. Coincidência só ocorre em casos especiais.
:::



## Pesquisa em Ação — Capítulo 20

###  Pesquisa em Ação


::: {.pesquisabox title="[Eliasson, J.; Hultkrantz, L.; Nerhagen, L.; Rosqvist, L. S. (2009). The Stockholm Congestion-Charging Trial 2006: Overview of Effects. *Transportation Research Part A*, 43(3), 240–250.](https://doi.org/10.1016/j.tra.2008.09.007)"}
**DOI:** [10.1016/j.tra.2008.09.007](https://doi.org/10.1016/j.tra.2008.09.007)

**Contexto.** O congestionamento viário é uma externalidade negativa clássica. Em 2006, Estocolmo implementou um período experimental de pedágio urbano (taxa pigouviana sobre congestionamento), seguido de referendo. O paper avalia os efeitos do experimento.

**Método.** Comparação antes-depois das condições de tráfego na zona tarifada, usando dados de fluxo veicular, tempos de viagem e emissões. O período experimental de 7 meses permitiu avaliação abrangente.

**Resultado.** O tráfego na zona central caiu 20-25% durante o período de cobrança. As emissões de CO₂ na área tarifada reduziram-se em 10-14%. Os tempos de viagem diminuíram significativamente. Crucialmente, a população, que inicialmente se opunha ao pedágio, votou pela manutenção permanente no referendo — um caso raro de preferência revelada *ex post* superando resistência *ex ante*.

**Conexão com o capítulo.** O paper demonstra empiricamente a eficácia do imposto pigouviano para externalidades de congestionamento (Seção 20.4.1). A mudança de opinião pública ilustra como a experiência concreta com a redução da externalidade pode alterar preferências políticas.
:::


::: {.pesquisabox title="[Fehr, E.; Gächter, S. (2000). Cooperation and Punishment in Public Goods Experiments. *American Economic Review*, 90(4), 980–994.](https://doi.org/10.1257/aer.90.4.980)"}
**DOI:** [10.1257/aer.90.4.980](https://doi.org/10.1257/aer.90.4.980)

**Contexto.** A teoria prevê que contribuições voluntárias a bens públicos convergem para zero (free-riding). Mas isso ocorre na prática? E mecanismos de punição podem sustentar a cooperação?

**Método.** Experimentos de contribuição voluntária com e sem possibilidade de punição entre pares. Participantes decidem quanto contribuir ao fundo público e, na condição com punição, podem gastar para penalizar free-riders.

**Resultado.** Sem punição, contribuições declinam de ~50% para ~20% do ótimo ao longo de 10 rodadas. Com punição, contribuições *aumentam* para 60-90% e se sustentam. A punição é usada ativamente contra free-riders, mesmo sendo custosa para quem pune ("punição altruísta"). O resultado sugere que normas sociais de reciprocidade e justiça são forças poderosas na provisão de bens públicos.

**Conexão com o capítulo.** O paper é a referência central do experimento de sala de aula proposto na abertura do capítulo (Seções 20.5-20.8). Demonstra que o problema do carona é real, mas mitigável por mecanismos sociais.
:::


::: {.pesquisabox title="[Schmalensee, R.; Stavins, R. N. (2013). The SO₂ Allowance Trading System: The Ironic History of a Grand Policy Experiment. *Journal of Economic Perspectives*, 27(1), 103–122.](https://doi.org/10.1257/jep.27.1.103)"}
**DOI:** [10.1257/jep.27.1.103](https://doi.org/10.1257/jep.27.1.103)

**Contexto.** O programa americano de cap-and-trade para SO₂ (Acid Rain Program, 1990) é frequentemente citado como o caso de maior sucesso de política ambiental baseada em instrumentos de mercado. Mas qual é o balanço completo?

**Método.** Revisão abrangente dos resultados econômicos e ambientais do programa, incluindo custos de compliance, padrões de comércio de permissões e reduções de emissão.

**Resultado.** Emissões caíram de 15,7 milhões de toneladas (1990) para menos de 3 milhões (2010) — redução de ~80%. Os custos de compliance foram 15-50% menores que estimativas ex ante. A "ironia" do título refere-se ao declínio do programa como modelo político: apesar do sucesso, o instrumento de mercado perdeu apoio político nos EUA, enquanto regulação direta voltou a ser preferida.

**Conexão com o capítulo.** O paper valida empiricamente a teoria de cap-and-trade (Seção 20.4.4) e ilustra a equivalência imposto/cap sob certeza. A "ironia" política conecta-se ao Teorema de Arrow (Seção 20.9): preferências sociais sobre instrumentos de política podem ser intransitivas.
:::


::: {.pesquisabox title="[Ostrom, E. (1990). *Governing the Commons: The Evolution of Institutions for Collective Action*. Cambridge University Press.](https://doi.org/10.1017/CBO9780511807763)"}
**DOI:** [10.1017/CBO9780511807763](https://doi.org/10.1017/CBO9780511807763)

**Contexto.** A "tragédia dos comuns" (Hardin, 1968) sugere que recursos de acesso aberto serão inevitavelmente esgotados. A única solução seria privatização ou regulação estatal. Ostrom desafiou essa dicotomia.

**Método.** Análise comparativa de dezenas de casos de gestão comunitária de recursos comuns em diferentes países e épocas: florestas na Suíça e no Japão, sistemas de irrigação na Espanha e no Nepal, pesqueiros costeiros na Turquia e no Canadá.

**Resultado.** Comunidades frequentemente desenvolvem instituições locais eficazes — regras de uso, monitoramento entre pares, sanções graduais — que sustentam a cooperação por séculos. Ostrom identificou 8 "princípios de design" para gestão bem-sucedida de commons, incluindo fronteiras bem definidas, congruência entre regras e condições locais, participação dos usuários na governança e mecanismos de resolução de conflitos.

**Conexão com o capítulo.** O livro complementa as Seções 20.7-20.8, mostrando que entre a solução de mercado (Lindahl) e a solução estatal (imposto pigouviano) existe um terceiro caminho: a governança comunitária. O exemplo da cobrança pelo uso da água no Brasil (Box Brasil 20.2) reflete os princípios de Ostrom.
:::


::: {.pesquisabox title="[Greenstone, M.; Jack, B. K. (2015). Envirodevonomics: A Research Agenda for an Emerging Field. *Journal of Economic Literature*, 53(1), 5–42.](https://doi.org/10.1257/jel.53.1.5)"}
**DOI:** [10.1257/jel.53.1.5](https://doi.org/10.1257/jel.53.1.5)

**Contexto.** Países em desenvolvimento enfrentam simultaneamente pobreza e degradação ambiental severa. Como a teoria das externalidades se aplica quando instituições são fracas, direitos de propriedade são mal definidos e capacidade regulatória é limitada?

**Método.** Survey da literatura emergente em "envirodevonomics" — a interseção entre economia ambiental e economia do desenvolvimento. Os autores revisam evidências sobre: valoração de serviços ambientais, custo da poluição para saúde e produtividade, e eficácia de políticas ambientais em países em desenvolvimento.

**Resultado.** A poluição do ar em Delhi equivale a fumar 3 cigarros por dia; a água contaminada em Bangladesh causa perdas cognitivas mensuráveis em crianças. Porém, instrumentos clássicos (imposto pigouviano, cap-and-trade) têm implementação limitada em países com capacidade fiscal e regulatória fraca. Soluções adaptadas — pagamentos por serviços ambientais, auditoria ambiental com incentivos, informação pública sobre qualidade do ar — mostram resultados promissores.

**Conexão com o capítulo.** O paper contextualiza os instrumentos de política das Seções 20.4 no mundo real de países em desenvolvimento, onde os pressupostos do modelo (custos de transação baixos, capacidade regulatória, enforcement) frequentemente não se verificam.
:::


---


::: {.tipbox title="Exercício com IA — Externalidades e Bens Públicos"}
**Prompt sugerido para ChatGPT/Claude:**

*"Considere uma cidade com 500.000 habitantes que enfrenta congestionamento viário severo. O custo externo do congestionamento é estimado em R$15 por viagem no horário de pico. A elasticidade-preço da demanda por viagens de carro é -0,3. (a) Projete um sistema de pedágio urbano pigouviano: qual deveria ser a tarifa no horário de pico? (b) Estime a redução no número de viagens. (c) Que problemas distributivos surgem? (d) Compare com alternativas: ampliação do transporte público, rodízio de placas, home office obrigatório."*

Use o modelo de IA como interlocutor para explorar as múltiplas dimensões do problema — mas verifique as contas e questione as premissas!
:::


---

###  Referências do Capítulo

- Arrow, Kenneth J. 1951. [*Social Choice and Individual Values*](https://books.google.com/books/about/Social_Choice_and_Individual_Values.html?id=1W0PAQAAMAAJ). New Haven: Yale University Press.
- Coase, Ronald H. 1960. "[The Problem of Social Cost](https://doi.org/10.1086/466560)." *Journal of Law and Economics* 3: 1–44.
- Eliasson, Jonas, Lars Hultkrantz, Lena Nerhagen, e Lena Smidfelt Rosqvist. 2009. "[The Stockholm Congestion-Charging Trial 2006: Overview of Effects](https://doi.org/10.1016/j.tra.2008.09.007)." *Transportation Research Part A* 43 (3): 240–250.
- Fehr, Ernst, e Simon Gächter. 2000. "[Cooperation and Punishment in Public Goods Experiments](https://doi.org/10.1257/aer.90.4.980)." *American Economic Review* 90 (4): 980–994.
- Greenstone, Michael, e B. Kelsey Jack. 2015. "[Envirodevonomics: A Research Agenda for an Emerging Field](https://doi.org/10.1257/jel.53.1.5)." *Journal of Economic Literature* 53 (1): 5–42.
- Ostrom, Elinor. 1990. [*Governing the Commons: The Evolution of Institutions for Collective Action*](https://doi.org/10.1017/CBO9780511807763). Cambridge: Cambridge University Press.
- Pigou, Arthur Cecil. 1920. [*The Economics of Welfare*](https://www.econlib.org/library/NPDBooks/Pigou/pgEW.html). London: Macmillan.
- Samuelson, Paul A. 1954. "[The Pure Theory of Public Expenditure](https://doi.org/10.2307/1925895)." *Review of Economics and Statistics* 36 (4): 387–389.
- Schmalensee, Richard, e Robert N. Stavins. 2013. "[The SO₂ Allowance Trading System: The Ironic History of a Grand Policy Experiment](https://doi.org/10.1257/jep.27.1.103)." *Journal of Economic Perspectives* 27 (1): 103–122.
- Weitzman, Martin L. 1974. "[Prices vs. Quantities](https://doi.org/10.2307/2296698)." *Review of Economic Studies* 41 (4): 477–491.


\newpage
