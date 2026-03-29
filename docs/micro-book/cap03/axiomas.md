# 3.1–3.3 Axiomas, Utilidade e Curvas de Indiferença

## 3.1 As Regras Mínimas da Sanidade: Axiomas da Escolha

Antes de construir qualquer modelo de escolha, precisamos responder a uma pergunta incômoda: o que *exatamente* estamos supondo sobre o consumidor? Não vamos supor que ele é gênio, nem que usa planilha Excel no supermercado. Vamos supor apenas que ele é *coerente* — que consegue comparar opções e não se contradiz.[^dead-parrot-prefs]

[^dead-parrot-prefs]: No sketch *Dead Parrot* de Monty Python, o cliente e o vendedor discordam se o papagaio está morto ou "descansando". O cliente insiste: "This parrot is no more! It has ceased to be!" O vendedor: "No, no, he's resting!" O axioma da completude exige que ambos *consigam* comparar as cestas "papagaio vivo" e "papagaio morto" — o que claramente fazem. O problema é que discordam. A boa notícia: a teoria do consumidor não exige que todos concordem sobre o ranking; exige apenas que *cada* consumidor seja coerente consigo mesmo. Essas exigências mínimas de bom senso são formalizadas como **axiomas** das preferências. A beleza da coisa: desse ponto de partida modesto, toda a teoria do consumidor pode ser construída. É como erguer um arranha-céu a partir de quatro tijolos bem colocados.

Seja \(X \subseteq \mathbb{R}^n_+\) o **conjunto de consumo**, isto é, o conjunto de todas as cestas de bens fisicamente disponíveis ao consumidor. Uma cesta \(\mathbf{x} = (x_1, x_2, \ldots, x_n)\) especifica a quantidade de cada um dos \(n\) bens — por exemplo, em um modelo com dois bens, \(\mathbf{x} = (x_1, x_2)\) poderia representar quilos de arroz e litros de leite. O conjunto de consumo inclui todas as combinações não negativas dessas quantidades, formando o quadrante positivo do espaço \(\mathbb{R}^n\).

Uma **relação de preferência** \(\succsim\) sobre \(X\) indica que, dadas duas cestas \(\mathbf{x}\) e \(\mathbf{y}\), o consumidor considera \(\mathbf{x}\) pelo menos tão boa quanto \(\mathbf{y}\). A notação \(\mathbf{x} \succsim \mathbf{y}\) se lê "\(\mathbf{x}\) é fracamente preferida a \(\mathbf{y}\)". Note que a relação \(\succsim\) é **primitiva** — ela é o ponto de partida da teoria, não algo derivado de uma função de utilidade. Tomamos como dado que o consumidor *possui* preferências; o que os axiomas fazem é impor estrutura sobre essas preferências, de modo a torná-las matematicamente tratáveis. A função de utilidade, como veremos na próxima seção, é uma *consequência* dos axiomas impostos sobre \(\succsim\), não uma hipótese adicional.

A partir de \(\succsim\), definimos duas relações derivadas que utilizaremos extensivamente:

- **Preferência estrita**: \(\mathbf{x} \succ \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e não \(\mathbf{y} \succsim \mathbf{x}\). O consumidor considera \(\mathbf{x}\) estritamente melhor que \(\mathbf{y}\).
- **Indiferença**: \(\mathbf{x} \sim \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{x}\). O consumidor é igualmente satisfeito com ambas as cestas.

Para que as preferências do consumidor sejam "bem comportadas" e passíveis de análise formal, exigimos um conjunto de axiomas. Cada um deles captura uma exigência de coerência que, embora possa parecer óbvia isoladamente, desempenha um papel específico e insubstituível na construção do edifício teórico. Abandonar qualquer um deles — como ilustra o caso das preferências lexicográficas — pode comprometer resultados fundamentais, como a própria existência de uma função de utilidade.

!!! definition "Axioma 1 — Completude"
    Para quaisquer \(\mathbf{x}, \mathbf{y} \in X\), vale \(\mathbf{x} \succsim \mathbf{y}\) ou \(\mathbf{y} \succsim \mathbf{x}\) (ou ambos). Em outras palavras, o consumidor é sempre capaz de comparar duas cestas quaisquer.

!!! definition "Axioma 2 — Transitividade"
    Para quaisquer \(\mathbf{x}, \mathbf{y}, \mathbf{z} \in X\), se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{z}\), então \(\mathbf{x} \succsim \mathbf{z}\). A transitividade garante consistência interna nas escolhas.

!!! definition "Axioma 3 — Continuidade"
    Para todo \(\mathbf{y} \in X\), os conjuntos \(\{\mathbf{x} \in X : \mathbf{x} \succsim \mathbf{y}\}\) (conjunto de pelo menos tão bom quanto) e \(\{\mathbf{x} \in X : \mathbf{y} \succsim \mathbf{x}\}\) (conjunto de no máximo tão bom quanto) são fechados. A continuidade exclui "saltos" nas preferências — pequenas mudanças na cesta não causam inversões bruscas no ordenamento.

!!! definition "Axioma 4 — Monotonicidade (não saciedade local)"
    Se \(\mathbf{x} \geq \mathbf{y}\) (componente a componente) e \(\mathbf{x} \neq \mathbf{y}\), então \(\mathbf{x} \succ \mathbf{y}\). "Mais é melhor" — o consumidor sempre prefere ter mais de pelo menos um bem, tudo o mais constante.

Uma nota de precaução que desenvolveremos na próxima seção: a função de utilidade que construiremos será *ordinal* — os números que ela atribui importam apenas pela ordem, não pela magnitude. Dizer que \(u(A) = 10\) e \(u(B) = 5\) significa que A é preferido a B, não que A é "duas vezes melhor".

!!! tip "Observação sobre preferências lexicográficas"
    As preferências lexicográficas satisfazem completude, transitividade e monotonicidade, mas **não** satisfazem continuidade. Por isso, não podem ser representadas por uma função de utilidade contínua. Este é um caso clássico que ilustra a importância do axioma de continuidade.

!!! info "Exemplo — Racionalidade nas escolhas de consumo no Brasil"
    Os axiomas de completude e transitividade podem parecer abstratos, mas refletem exigências mínimas de consistência nas escolhas cotidianas. A Pesquisa de Orçamentos Familiares (POF 2017-2018) do [IBGE](https://www.ibge.gov.br) mostra que famílias brasileiras, mesmo as de baixa renda, alocam seus orçamentos de forma estável e internamente consistente: quando a renda aumenta, a participação relativa da alimentação cai de maneira suave e previsível (de 22% para famílias com renda até R$ 1.908 a 7,6% para famílias acima de R$ 23.850). Essa regularidade empírica é compatível com preferências que satisfazem os axiomas acima — especialmente transitividade e monotonicidade — e justifica o uso do arcabouço axiomático como ponto de partida para modelar o consumidor.

!!! idea "Intuição Econômica"
    **Em uma frase:** Os axiomas de preferência são apenas regras mínimas de coerência — exigem que o consumidor saiba comparar opções e não se contradiga.

    **Pense assim:** Quando você vai à feira e decide que prefere banana a maçã, e maçã a pera, seria estranho voltar e dizer que prefere pera a banana. Completude é conseguir comparar qualquer par de frutas; transitividade é não entrar em contradição. A monotonicidade diz que, entre dois sacos de frutas, você prefere o maior — desde que goste de todas.

    **Por que isso importa:** Sem essas regras mínimas, não seria possível prever o comportamento do consumidor nem formular políticas públicas baseadas em escolhas racionais.

!!! note "Conexão com a teoria da preferência revelada"
    Os axiomas sobre \(\succsim\) são postulados sobre preferências *internas* do consumidor — algo que, em princípio, não podemos observar diretamente. Existe, porém, uma contrapartida observacional: o **Axioma Generalizado da Preferência Revelada (GARP)**, que traduz completude e transitividade em condições testáveis sobre *escolhas de consumo observadas*. Se as compras de um consumidor satisfazem o GARP, seus dados são consistentes com a maximização de alguma função de utilidade bem comportada. Na seção "Pesquisa em Ação" ao final deste capítulo, o artigo de Choi et al. (2014) testa exatamente essa hipótese em uma amostra representativa — com resultados surpreendentes sobre a relação entre consistência das escolhas e acumulação de riqueza.

Antes de prosseguir para a função de utilidade, vale uma pausa para quem quer saber: esses axiomas funcionam na prática? O Box a seguir examina a evidência experimental — e a resposta é surpreendente.

!!! box-mundo "Box Mundo 3.1 — Violações de transitividade: os experimentos de Tversky e replicações internacionais"

    **Contexto:** O axioma da transitividade — se \(A \succsim B\) e \(B \succsim C\), então \(A \succsim C\) — é um dos pilares da teoria da escolha racional. Sem ele, como discutido na Seção 3.1, não é possível construir uma função de utilidade que represente as preferências do consumidor. Porém, desde os anos 1960, psicólogos e economistas comportamentais têm documentado violações sistemáticas desse axioma em contextos experimentais. O trabalho mais influente é o de Amos Tversky (1969), que demonstrou que indivíduos frequentemente exibem preferências intransitivas quando as alternativas diferem em múltiplas dimensões e as diferenças em alguma dimensão são "imperceptíveis".

    **Dados:** Tversky (1969) apresentou a participantes do experimento escolhas entre pares de apostas que variavam em probabilidade de ganho e valor do prêmio. Quando a diferença de probabilidades entre duas apostas era pequena (por exemplo, 7/24 vs. 8/24), os participantes tendiam a escolher a aposta com prêmio maior — mas quando confrontados com comparações entre extremos da cadeia, a probabilidade dominava, gerando ciclos de intransitividade. A taxa de intransitividade observada chegou a 17% das tríades de escolha. Estudos subsequentes replicaram o fenômeno em diversos contextos e culturas: Regenwetter et al. (2011) conduziram meta-análises com dados de laboratórios nos EUA, Europa e Ásia e encontraram que, embora a frequência de intransitividade varie entre populações (de 5% a 25% das tríades), o padrão é robusto e não desaparece com incentivos monetários reais. Na Alemanha, Birnbaum e Schmidt (2015) replicaram o resultado com mais de 400 participantes e diferentes tipos de loterias.

    **Análise:** Essas violações não invalidam a teoria da escolha racional, mas delimitam seu domínio de aplicação — uma questão central para a verificação de modelos (Capítulo 1). A resposta da teoria econômica tem sido dupla. Primeiro, modelos de utilidade aleatória (*random utility*), como o de McFadden (1974, Nobel 2000), incorporam um componente estocástico que pode gerar intransitividade aparente mesmo quando as preferências subjacentes são transitivas — as violações refletem "erros" de percepção, não preferências genuinamente cíclicas. Segundo, a economia comportamental desenvolveu modelos alternativos, como a *regret theory* de Loomes e Sugden (1982), que relaxam a transitividade mantendo outras propriedades. Do ponto de vista prático, a evidência sugere que a transitividade é uma aproximação excelente para decisões familiares e repetidas, mas pode falhar em escolhas complexas e não habituais — exatamente a distinção entre modelos descritivos e normativos que permeia todo este livro.

    **Fonte:** Tversky, A. (1969). Intransitivity of preferences. *Psychological Review*, 76(1), 31–48. Regenwetter, M.; Dana, J.; Davis-Stober, C. P. (2011). Transitivity of preferences. *Psychological Review*, 118(1), 42–56. Birnbaum, M. H.; Schmidt, U. (2015). Testing transitivity in choice under risk. *Theory and Decision*, 79(4), 631–660.

Com essa ressalva empírica em mente — os axiomas são uma excelente aproximação para decisões cotidianas, mas podem falhar em escolhas complexas —, prossigamos para a recompensa teórica: a função de utilidade.

---

## 3.2 Do "Prefiro" ao Número: Função de Utilidade

Ótimo: o consumidor é coerente, prefere mais a menos e não dá saltos. Mas como *usar* essas preferências para resolver um problema de otimização? Comparar cestas duas a duas, sem uma escala numérica, é como tentar navegar sem mapa — dá para fazer, mas é dolorosamente lento. O que precisamos é de uma **função** que atribua um número a cada cesta, de modo que cestas melhores recebam números maiores. Se tivermos isso, todo o arsenal do Capítulo 2 — derivadas, Lagrange, condições de ótimo — entra em campo.

A pergunta, portanto, é: podemos traduzir a relação de preferência \(\succsim\) em uma **função de utilidade** \(u: X \to \mathbb{R}\)? A resposta é sim — e é exatamente para isso que precisávamos dos axiomas. A passagem de "eu prefiro A a B" para "\(u(A) > u(B)\)" é o passe de mágica que transforma a microeconomia de uma disciplina verbal em uma ciência analítica.

A definição formal de representação é a seguinte. Uma **função de utilidade** \(u: X \to \mathbb{R}\) **representa** a relação de preferência \(\succsim\) se, para todo \(\mathbf{x}, \mathbf{y} \in X\):

\[
\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y}). \label{eq:3.2.1} \tag{3.2.1}
\]

A condição expressa na equação $\eqref{eq:3.2.1}$ exige apenas que a função preserve o ordenamento das preferências — ela não atribui significado aos valores numéricos em si, apenas à sua ordenação relativa. A existência de tal função, contudo, não é trivial: não é para qualquer relação de preferência que conseguimos encontrar uma representação numérica. O teorema a seguir fornece condições suficientes e mostra que os axiomas da Seção 3.1 são exatamente o que precisamos para garantir essa representação.

!!! theorem "Teorema 3.1 — Existência da Função de Utilidade (Debreu, 1954)"
    Se a relação de preferência \(\succsim\) sobre \(X \subseteq \mathbb{R}^n_+\) é **completa**, **transitiva**, **contínua** e **monótona**, então existe uma função de utilidade contínua \(u: X \to \mathbb{R}\) que representa \(\succsim\).

!!! info "Prêmio Nobel — Gerard Debreu (1983)"

    **Gerard Debreu** (1921–2004) foi um economista e matemático franco-americano, formado pela École Normale Supérieure de Paris. Atuou na Cowles Commission e na Universidade da Califórnia, Berkeley.

    **Por que ganhou o Nobel:**
    Premiado por sua contribuição à teoria do equilíbrio geral e por ter incorporado novos métodos analíticos à teoria econômica. Em *Theory of Value* (1959), Debreu forneceu uma axiomatização rigorosa da teoria do consumidor e demonstrou a existência de equilíbrio geral competitivo sob condições precisas. O Teorema 3.1 deste capítulo é uma de suas contribuições mais fundamentais.

    **Conexão com este capítulo:**
    O teorema de existência da função de utilidade garante que os axiomas da Seção 3.1 — completude, transitividade, continuidade e monotonicidade — são suficientes para construir toda a maquinaria analítica que se segue: curvas de indiferença, TMS e otimização do consumidor.

A demonstração completa pode ser encontrada em Mas-Colell, Whinston e Green (1995, Proposição 3.C.1). A ideia central é elegante: para cada cesta \(\mathbf{x}\), encontramos o escalar \(t\) tal que \(\mathbf{x} \sim t \cdot \mathbf{1}\), onde \(\mathbf{1} = (1, 1, \ldots, 1)\) é a cesta com uma unidade de cada bem. Esse escalar \(t\) é o "nível de utilidade" atribuído a \(\mathbf{x}\). A monotonicidade garante que tal \(t\) é único — cestas melhores correspondem a valores maiores de \(t\) — e a continuidade garante que a função resultante é contínua, sem saltos que gerariam cestas impossíveis de classificar. Cada axioma desempenha, portanto, um papel preciso na construção.

!!! note "Utilidade é ordinal, não cardinal"
    A função de utilidade atribui números a cestas apenas para preservar o **ordenamento**. Os valores absolutos não têm significado econômico intrínseco. Se \(u(\mathbf{x}) = 10\) e \(u(\mathbf{y}) = 5\), sabemos apenas que \(\mathbf{x} \succ \mathbf{y}\), **não** que \(\mathbf{x}\) é "duas vezes melhor" que \(\mathbf{y}\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Os números da utilidade funcionam como a ordem de chegada numa corrida — só importa quem chegou antes, não por quantos segundos.

    **Pense assim:** Imagine que você dá nota 10 para um prato de feijoada e nota 5 para uma salada. Isso não significa que a feijoada é "duas vezes mais gostosa" — apenas que você a prefere. Se um amigo desse nota 100 e 50, as preferências seriam as mesmas. O ranking é o que importa, não o placar.

    **Por que isso importa:** Essa propriedade ordinal nos liberta de medir "felicidade" em unidades absolutas — basta saber o que o consumidor prefere para analisar suas escolhas. No Capítulo 7, veremos que a introdução de incerteza exige uma utilidade **cardinal** (VNM): a curvatura da função passa a ter significado econômico, determinando a aversão ao risco do agente.

---

## 3.3 O Mapa do "Tanto Faz": Curvas de Indiferença

Números são úteis, mas humanos pensam em imagens. A **curva de indiferença** é onde a microeconomia ganha olhos. A ideia: pegue todas as cestas que dão ao consumidor a *mesma* satisfação e ligue-as por uma curva. Pronto — você tem um "mapa topográfico" das preferências, onde cada curva é uma altitude de felicidade. Cestas em curvas mais altas são preferidas; cestas na mesma curva são equivalentes.

A forma das curvas conta uma história: se são quase retas, os bens são facilmente substituíveis (café e chá); se são em "L", devem ser consumidos juntos (pé esquerdo e pé direito de sapato). No Capítulo 4, quando sobrepormos essas curvas à reta orçamentária, o ponto ótimo do consumidor emergirá como o ponto de tangência — uma das imagens mais elegantes de toda a ciência econômica.

!!! definition "Curva de indiferença"
    A curva de indiferença associada ao nível de utilidade \(\bar{u}\) é o conjunto \(\{\mathbf{x} \in X : u(\mathbf{x}) = \bar{u}\}\). Trata-se de uma **curva de nível** da função de utilidade.

!!! tip "Propriedades das curvas de indiferença"
    Sob os axiomas da Seção 3.1:

    1. **Cobrem todo o espaço de consumo**: pela completude, toda cesta pertence a alguma curva de indiferença.
    2. **Não se cruzam**: se duas curvas se cruzassem em um ponto, a transitividade seria violada.
    3. **Possuem inclinação negativa**: pela monotonicidade, manter a utilidade constante exige compensar um aumento em \(x_1\) com uma redução em \(x_2\).
    4. **Cestas em curvas mais altas (a nordeste) são preferidas**: consequência direta da monotonicidade.

    O **mapa de indiferença** é a família de todas as curvas de indiferença. Ele oferece uma representação visual completa das preferências do consumidor no espaço bidimensional.

<iframe src="/micro-book/graficos/cap03/curvas-indiferenca.html" title="Figura 3.1 — Mapa de curvas de indiferença" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.1 — Mapa de curvas de indiferença.** Arraste o ponto sobre a curva para ver a TMS. Use os sliders para alterar os parâmetros e o menu para trocar o tipo de preferência (Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES, quase-linear).
</div>

!!! tip "Convexidade estrita"
    Se as preferências forem **estritamente convexas** — isto é, se \(\mathbf{x} \sim \mathbf{y}\) e \(\mathbf{x} \neq \mathbf{y}\) implicarem \(t\mathbf{x} + (1-t)\mathbf{y} \succ \mathbf{x}\) para todo \(t \in (0,1)\) — então as curvas de indiferença são estritamente convexas em relação à origem. Isso reflete a ideia de que consumidores preferem variedade: uma cesta "mista" é preferida a cestas extremas. A seção sobre a TMS (a seguir) mostrará que essa propriedade equivale a uma TMS decrescente.

!!! warning "⚠️ Erro Comum"
    **Confundir preferências convexas com função de utilidade côncava.** São conceitos relacionados, mas distintos:

    - **Preferências convexas** significam que os *conjuntos superiores* \(\{\mathbf{x} : u(\mathbf{x}) \geq \bar{u}\}\) são convexos — geometricamente, as curvas de indiferença são "abauladas" em direção à origem.
    - **Função côncava** é uma condição sobre a própria função \(u\), mais forte que a convexidade das preferências.

    Toda função de utilidade côncava gera preferências convexas, mas a recíproca é falsa: como a utilidade é ordinal, podemos sempre encontrar uma transformação monotônica que torne a função convexa (não côncava) sem alterar as preferências. O Exercício 3.5, com \(u = x_1^2 + x_2^2\), ilustra o caso oposto: uma função convexa que gera preferências *côncavas* (curvas de indiferença circulares, côncavas em relação à origem).
