# 8.2 Perder Dói Mais Que Ganhar Alegra: Teoria do Prospecto

A Seção 8.1 mostrou *onde* o modelo racional tropeça. Agora precisamos de um modelo que tropeça menos — sem perder a capacidade de gerar previsões. Esse modelo existe, tem nome, e rendeu um Nobel: a **Teoria do Prospecto**. Não é um remendo ad hoc; é uma teoria completa, com axiomas próprios e previsões testáveis. E a história de como ela surgiu é uma das melhores da ciência.

A **utilidade esperada** de Von Neumann e Morgenstern (Capítulo 7) pressupõe que os agentes avaliam resultados em termos de riqueza final e ponderam probabilidades linearmente. A Teoria do Prospecto, proposta por Kahneman e Tversky (1979) e refinada em sua versão cumulativa (Tversky e Kahneman 1992), substitui essas premissas por duas inovações fundamentais: uma **função valor** definida sobre ganhos e perdas relativos a um ponto de referência, e uma **função de ponderação de probabilidades** que distorce probabilidades objetivas.

É importante compreender o que a Teoria do Prospecto *não* é: ela não é uma teoria ad hoc construída para acomodar anomalias uma a uma. É uma teoria coerente, derivada sistematicamente de regularidades observadas, que gera previsões novas — muitas delas confirmadas em experimentos posteriores e em dados de campo. O par (função valor + ponderação de probabilidades) não foi escolhido arbitrariamente; cada elemento foi motivado por um conjunto específico de experimentos e pela busca de parsimônia: o menor número de inovações que acomode os fenômenos documentados. Essa é a marca de uma boa teoria científica.

### 8.2.1 O Paradoxo de Allais

Para motivar as inovações da Teoria do Prospecto, comecemos por um experimento mental que abalou a confiança no axioma da independência — o pilar mais controverso da utilidade esperada de Von Neumann e Morgenstern. Antes da Teoria do Prospecto, Maurice Allais (1953) já havia demonstrado uma violação elegante da utilidade esperada. Considere os seguintes problemas de decisão.

Vale notar que o Paradoxo de Allais foi apresentado, de forma provocativa, ao próprio grupo de economistas que havia desenvolvido a utilidade esperada — incluindo nomes como Savage e Samuelson — durante uma conferência em Paris em 1952. Muitos deles, ao responder intuitivamente, violaram os próprios axiomas que defendiam.[^spanish-inquisition-allais] Quando Savage percebeu que havia respondido de forma inconsistente, disse algo notável: a inconsistência não resultava de irracionalidade, mas de um "erro de cálculo" que ele corrigiria ao raciocinar com mais cuidado. Isso é precisamente o que Kahneman documentaria décadas depois: o Sistema 2 pode corrigir as intuições do Sistema 1, mas só quando acionado. A questão de política relevante é: nas decisões reais de consumo, poupança e investimento, os agentes acionam o Sistema 2 com frequência suficiente?

!!! example "Paradoxo de Allais"
    **Problema 1:** Escolha entre:

    - **A:** Ganhar R\$ 1.000.000 com certeza.
    - **B:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); R\$ 1.000.000 com probabilidade \(0{,}89\); nada com probabilidade \(0{,}01\).

    **Problema 2:** Escolha entre:

    - **C:** Ganhar R\$ 1.000.000 com probabilidade \(0{,}11\); nada com probabilidade \(0{,}89\).
    - **D:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); nada com probabilidade \(0{,}90\).

    A maioria das pessoas escolhe **A** no Problema 1 e **D** no Problema 2. Mas essa combinação viola o axioma da independência da utilidade esperada. Se \(A \succ B\), então pela UE teríamos \(C \succ D\) — mas o padrão observado é o contrário. A preferência por A reflete o **efeito certeza**: a sobrevalorização de resultados certos em relação a resultados meramente prováveis.

!!! atividade "Atividade — Think-Pair-Share: Você viola o axioma da independência?"

    **Formato:** Think-Pair-Share | **Tempo:** 10 minutos | **Material:** slides ou quadro com os dois problemas do Paradoxo de Allais

    **Etapa 1 — Think (2 min).** O professor projeta os Problemas 1 e 2 do Paradoxo de Allais *sem* revelar que existe uma "armadilha". Cada aluno anota suas escolhas individualmente (A ou B; C ou D) em silêncio.

    **Etapa 2 — Votação (1 min).** O professor pede que a turma vote (mãos levantadas ou Mentimeter). Registra a distribuição no quadro: quantos escolheram A+D? Quantos A+C? B+D? B+C?

    **Etapa 3 — Pair (3 min).** Em duplas, os alunos discutem: "Se eu escolhi A no Problema 1 e D no Problema 2, será que minhas escolhas são consistentes com a utilidade esperada?" O professor pode dar a dica: "Tente mostrar que A≻B implica C≻D sob a UE."

    **Etapa 4 — Share (4 min).** O professor revela a inconsistência formal e mostra a proporção da turma que violou o axioma da independência. Debrief: "Vocês acabaram de reproduzir, ao vivo, o resultado de Allais (1953). A maioria de vocês — como Savage em Paris — violou o axioma que a teoria exige. A pergunta agora é: o modelo precisa mudar, ou vocês é que precisam melhorar?"

    **Resultado esperado:** 60–80% da turma escolherá A+D, replicando o padrão clássico. A vivência pessoal da violação torna o axioma da independência — e sua falha — inesquecível.

### 8.2.2 A função valor

O Paradoxo de Allais revelou que as pessoas não tratam as probabilidades de forma linear. Mas há outra dimensão em que a utilidade esperada falha: a forma como os agentes avaliam os *resultados*. A utilidade esperada pressupõe que o que importa é a riqueza final — um investidor com patrimônio de R\$ 1 milhão se sente igualmente bem, independentemente de ter começado com R\$ 500 mil e ganhado R\$ 500 mil, ou de ter começado com R\$ 2 milhões e perdido R\$ 1 milhão. A experiência cotidiana, porém, nos diz que isso não é verdade: o contexto de onde partimos — o **ponto de referência** — importa, e muito.

A Teoria do Prospecto propõe que os agentes avaliam resultados como **ganhos ou perdas** relativos a um **ponto de referência** (tipicamente o *status quo*), e não em termos de riqueza absoluta. A **função valor** \(v(x)\) possui três propriedades fundamentais:

1. **Dependência de referência:** o portador de valor é a variação \(x\) em relação ao ponto de referência, não o nível absoluto de riqueza.
2. **Concavidade para ganhos, convexidade para perdas:** os agentes são avessos ao risco no domínio dos ganhos e propensos ao risco no domínio das perdas.
3. **Aversão à perda:** a função é mais íngreme para perdas do que para ganhos — perder R\$ 100 dói mais do que ganhar R\$ 100 agrada.

!!! definition "Aversão à perda"
    A **aversão à perda** é a assimetria na avaliação de ganhos e perdas: o impacto psicológico de uma perda de magnitude \(|x|\) é maior do que o de um ganho de mesma magnitude. Formalmente, \(|v(-x)| > v(x)\) para todo \(x > 0\). O coeficiente de aversão à perda \(\lambda = |v(-x)|/v(x)\) é tipicamente estimado em torno de \(2{,}0\) a \(2{,}5\) — ou seja, perdas "pesam" cerca de duas vezes mais que ganhos equivalentes.

!!! warning "Cuidado"
    **Aversão à perda ≠ Aversão ao risco.** É um erro frequente confundir esses dois conceitos. A **aversão ao risco** (Capítulo 7) descreve a preferência por um resultado certo em relação a uma aposta com o mesmo valor esperado — ela decorre da *concavidade* da função de utilidade sobre riqueza. A **aversão à perda** é um fenômeno distinto: mesmo que a função valor \(v(x)\) fosse linear (sem concavidade), a assimetria \(\lambda > 1\) geraria aversão à perda. Um agente pode, em princípio, ser neutro ao risco e ainda assim ser avesso à perda — pois os dois conceitos operam em dimensões diferentes. Concretamente: a aversão ao risco explica por que você prefere R\$ 500 certos a uma aposta de 50% de chance de R\$ 1.000; a aversão à perda explica por que você recusa uma aposta de 50% de ganhar R\$ 150 contra 50% de *perder* R\$ 100, mesmo com valor esperado positivo de R\$ 25. Misturar os dois conceitos leva a erros na calibração de modelos e na interpretação de evidências empíricas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Perder dói mais do que ganhar alegra — por isso as pessoas rejeitam apostas matematicamente favoráveis.

    **Pense assim:** Uma moeda justa paga R\$ 150 na cara e cobra R\$ 100 na coroa. O valor esperado é +R\$ 25, mas com \(\lambda \approx 2{,}25\), a perda potencial "pesa" R\$ 225 em termos psicológicos — mais do que os R\$ 150 do ganho. A maioria das pessoas recusa a aposta.

    **Por que isso importa:** A aversão à perda explica por que investidores seguram ações perdedoras tempo demais ("não quero realizar o prejuízo") e vendem vencedoras cedo demais ("melhor garantir o lucro") — o chamado efeito disposição, documentado na B3.[^black-knight-loss]

Uma especificação paramétrica comum é:

\[
v(x) =
\begin{cases}
x^{\alpha} & \text{se } x \geq 0 \\
-\lambda(-x)^{\beta} & \text{se } x < 0
\end{cases}
\label{eq:8.1} \tag{8.1}
\]

onde \(\alpha, \beta \in (0,1)\) capturam a concavidade/convexidade e \(\lambda > 1\) captura a aversão à perda. Na equação $\eqref{eq:8.1}$, as estimativas originais de Tversky e Kahneman (1992) são \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\).

<div class="graph-container" markdown>
  <iframe src="/micro-book/graficos/cap08/funcao-valor-pt.html" title="Figura 8.1 — Função Valor em Prospect Theory" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.1 — Função valor da Teoria do Prospecto.** Ajuste os parâmetros de curvatura e aversão à perda para observar a assimetria entre ganhos e perdas.
</div>

A [Tabela 8.2](#tabela-8-2) compara as estimativas dos parâmetros da Teoria do Prospecto em diferentes estudos:

<a id="tabela-8-2"></a>

| Estudo | \(\alpha\) | \(\beta\) | \(\lambda\) | \(\gamma^+\) | \(\gamma^-\) | Método |
|---|---|---|---|---|---|---|
| Tversky e Kahneman (1992) | 0,88 | 0,88 | 2,25 | 0,61 | 0,69 | Equivalentes de certeza |
| Camerer e Ho (1994) | 0,37 | — | — | 0,56 | — | Dados experimentais |
| Wu e Gonzalez (1996) | — | — | — | 0,71 | — | Loterias binárias |
| Abdellaoui (2000) | 0,89 | 0,92 | 2,54 | 0,60 | 0,70 | Trade-off method |
| Booij, van Praag e van de Kuilen (2010) | 0,86 | 0,86 | 2,09 | 0,65 | 0,65 | Meta-análise |

<div class="caption-obj" markdown>
**Tabela 8.2 — Estimativas dos parâmetros da Teoria do Prospecto.**
</div>

!!! info "🏅 Prêmio Nobel — Daniel Kahneman (2002)"

    **Daniel Kahneman** (1934–2024) foi um psicólogo israelense-americano. Formou-se na Universidade Hebraica de Jerusalém e obteve o PhD em Berkeley. Foi professor em Jerusalem, UBC e Princeton. Dividiu o Nobel de Economia com Vernon Smith — sendo um dos raros não-economistas a recebê-lo.

    **Por que ganhou o Nobel:**
    Premiado por integrar insights da psicologia à ciência econômica, especialmente no que diz respeito ao julgamento e tomada de decisão sob incerteza. Com Amos Tversky (1937–1996), Kahneman desenvolveu a Teoria do Prospecto, que substitui a utilidade esperada por uma função valor definida sobre ganhos e perdas relativos a um ponto de referência, com aversão a perdas (\(\lambda \approx 2{,}25\)) e sensibilidade decrescente.

    **Conexão com este capítulo:**
    A função valor da Teoria do Prospecto — côncava para ganhos, convexa para perdas, mais inclinada no domínio das perdas — é o ponto de partida deste capítulo. Os vieses cognitivos documentados por Kahneman e Tversky (representatividade, disponibilidade, ancoragem) explicam os desvios sistemáticos da racionalidade que motivam toda a economia comportamental discutida aqui.

??? exercicio-resolvido "Exercício Resolvido 8.1 — Função valor da Teoria do Prospecto"
    **Enunciado:** Usando a função valor paramétrica da Teoria do Prospecto com \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\), calcule o valor subjetivo dos seguintes resultados: \(v(100)\), \(v(-100)\), \(v(250)\) e \(v(-250)\). Em seguida, verifique a propriedade de aversão à perda e a sensibilidade decrescente.

    **Dados:** \(\alpha = 0{,}88\), \(\beta = 0{,}88\), \(\lambda = 2{,}25\).

    **Resolução:**

    **Passo 1 — Calcular \(v(x)\) para cada resultado**

    Para ganhos (\(x \geq 0\)): \(v(x) = x^{0{,}88}\).

    - \(v(100) = 100^{0{,}88} = e^{0{,}88 \ln 100} = e^{0{,}88 \times 4{,}605} = e^{4{,}052} \approx 57{,}54\)
    - \(v(250) = 250^{0{,}88} = e^{0{,}88 \times 5{,}521} = e^{4{,}859} \approx 128{,}82\)

    Para perdas (\(x < 0\)): \(v(x) = -\lambda(-x)^{0{,}88}\).

    - \(v(-100) = -2{,}25 \times 100^{0{,}88} \approx -2{,}25 \times 57{,}54 = -129{,}47\)
    - \(v(-250) = -2{,}25 \times 250^{0{,}88} \approx -2{,}25 \times 128{,}82 = -289{,}85\)

    **Passo 2 — Verificar a aversão à perda**

    \(|v(-100)| = 129{,}47 > 57{,}54 = v(100)\). Portanto, \(|v(-100)|/v(100) = 2{,}25 = \lambda\). A perda de R\$ 100 é sentida como 2,25 vezes mais intensa do que o ganho de R\$ 100.

    **Passo 3 — Verificar a sensibilidade decrescente**

    Para ganhos: o acréscimo de R\$ 100 para R\$ 250 (+ R\$ 150) gera aumento de valor de \(128{,}82 - 57{,}54 = 71{,}28\). Se a função fosse linear, o aumento seria proporcional: \(57{,}54 \times 1{,}5 = 86{,}31\). Como \(71{,}28 < 86{,}31\), confirma-se a concavidade (sensibilidade decrescente para ganhos).

    **Resultado:** A função valor atribui à perda de R\$ 100 um impacto 2,25 vezes maior que ao ganho de R\$ 100, e exibe sensibilidade decrescente tanto para ganhos quanto para perdas.

    **Interpretação econômica:** Essa assimetria ajuda a explicar por que consumidores brasileiros resistem a reajustes de preço (percebidos como perda) mas reagem pouco a promoções equivalentes (percebidas como ganho). No mercado de ações, ela fundamenta o efeito disposição documentado entre investidores da B3.

### 8.2.3 Ponderação de probabilidades

A função valor explica *como* os agentes avaliam resultados; falta agora entender *como* avaliam probabilidades. A utilidade esperada assume que uma probabilidade de 10% recebe exatamente um décimo do peso de um evento certo. Mas será que as pessoas processam probabilidades dessa forma? A evidência empírica é inequívoca: não.

Na utilidade esperada, as probabilidades entram linearmente na função objetivo. Na Teoria do Prospecto, as probabilidades objetivas \(p\) são transformadas por uma **função de ponderação** \(w(p)\) com formato de S invertido:

\[
w(p) = \frac{p^{\gamma}}{(p^{\gamma} + (1-p)^{\gamma})^{1/\gamma}}
\label{eq:8.2} \tag{8.2}
\]

onde \(\gamma \in (0,1)\) controla o grau de distorção. As propriedades principais são:

- **Sobrevalorização de probabilidades pequenas:** \(w(p) > p\) para \(p\) pequeno — o que explica a compra de bilhetes de loteria e seguros contra catástrofes.
- **Subvalorização de probabilidades moderadas a altas:** \(w(p) < p\) para \(p\) moderado a alto.
- **Subcerteza:** \(w(p) + w(1-p) < 1\) — as ponderações não somam 1, refletindo uma aversão global à incerteza.

O valor estimado por Tversky e Kahneman (1992) é \(\gamma^+ = 0{,}61\) para ganhos e \(\gamma^- = 0{,}69\) para perdas. Prelec (1998) propôs uma forma axiomática alternativa, \(w(p) = \exp(-(-\ln p)^{\alpha})\), com propriedades de auto-similitude (Dhami 2016, p. 153–157).

<div class="graph-container" markdown>
  <iframe src="/micro-book/graficos/cap08/ponderacao-prob.html" title="Figura 8.2 — Ponderação de Probabilidades" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.2 — Função de ponderação de probabilidades \(w(p)\).** Compare a ponderação com a linha de 45 graus para visualizar a sobrevalorização de probabilidades pequenas e a subvalorização de probabilidades altas.
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** A mesma pessoa compra loteria e contrata seguro contra catástrofe — ambos explicados pela sobrevalorização de eventos raros.

    **Pense assim:** Você joga na Mega-Sena (chance de 1 em 50 milhões) porque seu cérebro "infla" essa probabilidade minúscula. E contrata seguro contra incêndio (chance de 1 em 10.000) pelo mesmo motivo — a probabilidade pequena de perda também é inflada. Sob utilidade esperada, essas atitudes são inconsistentes; sob a Teoria do Prospecto, ambas decorrem da mesma distorção.

    **Por que isso importa:** A ponderação não linear de probabilidades é a peça que faltava para explicar simultaneamente comportamentos de risco (loterias, day trading) e aversão extrema a catástrofes (seguros caros, pânico financeiro).

!!! box-brasil "Box Brasil 8.2: A Mega-Sena e a sobrevalorização de probabilidades pequenas"
    A probabilidade de acertar as seis dezenas da Mega-Sena é de aproximadamente 1 em 50 milhões. Mesmo assim, milhões de brasileiros apostam regularmente. O valor esperado de uma aposta de R\$ 5,00 é tipicamente negativo (parte da arrecadação financia programas sociais via Caixa Econômica Federal). Sob utilidade esperada com probabilidades lineares, apostar seria irracional para qualquer agente avesso ao risco. A Teoria do Prospecto oferece uma explicação: a função de ponderação transforma a probabilidade objetiva minúscula (\(p \approx 0{,}00000002\)) em um peso decisório substancialmente maior, tornando a aposta subjetivamente atraente. O prazer antecipatório de imaginar o ganho faz parte do "produto" consumido — algo que o modelo neoclássico não captura.

### 8.2.4 Da PT Original à PT Cumulativa (CPT)

A combinação de função valor e ponderação de probabilidades confere à Teoria do Prospecto um poder descritivo notável. No entanto, como frequentemente ocorre em ciência, a primeira versão de uma boa teoria carrega imperfeições técnicas que precisam ser corrigidas. A Teoria do Prospecto original (OPT) de 1979 apresentava uma limitação técnica importante: a ponderação direta de probabilidades isoladas podia levar à violação de dominância estocástica — um agente poderia preferir uma loteria com resultados piores em todos os cenários (Dhami 2016, p. 158). A solução veio em dois passos.

**Utilidade Dependente de Rank (RDU).** Quiggin (1982) propôs ponderar **probabilidades acumuladas** em vez de probabilidades isoladas. Na RDU, os resultados são primeiro ordenados do pior ao melhor, e os pesos decisórios \(\pi_i\) são calculados a partir da função de ponderação aplicada às probabilidades acumuladas:

\[
\pi_i = w\!\left(\sum_{j=i}^{n} p_j\right) - w\!\left(\sum_{j=i+1}^{n} p_j\right)
\label{eq:8.3} \tag{8.3}
\]

A utilidade RDU é então \(\text{RDU}(L) = \sum_{i=1}^{n} \pi_i \, u(x_i)\). Diferentemente da ponderação direta, os pesos decisórios da equação $\eqref{eq:8.3}$ nunca violam a dominância estocástica (Dhami 2016, p. 159–164).

**PT Cumulativa (CPT).** Tversky e Kahneman (1992) combinaram a RDU com as inovações da OPT — dependência de referência, aversão à perda e funções de ponderação distintas para ganhos e perdas — criando a **Teoria do Prospecto Cumulativa**. Na CPT, ganhos são ordenados do menor ao maior e perdas do maior (menos negativo) ao menor (mais negativo), com pesos decisórios computados separadamente para cada domínio.

A [Tabela 8.3](#tabela-8-3) compara os quatro modelos:

<a id="tabela-8-3"></a>

| Característica | UE | RDU | OPT | CPT |
|---|---|---|---|---|
| Portador de valor | Riqueza final | Riqueza final | Ganhos/perdas | Ganhos/perdas |
| Ponderação de prob. | Linear | Cumulativa | Direta | Cumulativa |
| Aversão à perda | Não | Não | Sim (\(\lambda\)) | Sim (\(\lambda\)) |
| Respeita dominância | Sim | Sim | **Não** | Sim |
| \(w\) para ganhos e perdas | — | Uma única \(w\) | Duas \(w\) | Duas \(w^+, w^-\) |

<div class="caption-obj" markdown>
**Tabela 8.3 — Comparação dos modelos de decisão sob risco.**
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** A CPT corrige o defeito técnico da Teoria do Prospecto original — violação de dominância estocástica — preservando todas as suas inovações psicológicas.

    **Pense assim:** A OPT de 1979 era como um carro revolucionário que às vezes acelerava sozinho (violava dominância). A CPT de Tversky e Kahneman (1992) consertou o motor (ponderação cumulativa em vez de isolada) sem mudar o design — referência, aversão à perda e distorção de probabilidades continuam presentes.

    **Por que isso importa:** A CPT é o modelo de referência em economia comportamental e finanças comportamentais. Para loterias simples, OPT e CPT geram previsões semelhantes — a diferença técnica importa mais para loterias com muitos resultados e para consistência teórica.

### 8.2.5 Efeito dotação e efeito framing

A Teoria do Prospecto não é apenas um modelo abstrato de decisão sob risco — ela gera previsões concretas sobre o comportamento econômico que podem ser testadas em laboratório e observadas nos mercados. Duas dessas previsões são particularmente importantes, pois desafiam pilares fundamentais da teoria neoclássica: o efeito dotação, que questiona a igualdade entre disposição a pagar e disposição a aceitar, e o efeito framing, que questiona a invariância das preferências à forma de apresentação.

Duas consequências diretas da Teoria do Prospecto têm grande relevância econômica:

**Efeito dotação.** A aversão à perda implica que as pessoas exigem mais para abrir mão de um objeto que já possuem do que estariam dispostas a pagar para adquiri-lo. Esse hiato entre a **disposição a aceitar** (WTA) e a **disposição a pagar** (WTP) contradiz a previsão da teoria neoclássica de que WTA \(\approx\) WTP para bens sem efeito renda significativo.

!!! example "Canecas de Kahneman, Knetsch e Thaler"
    No experimento clássico de Kahneman, Knetsch e Thaler (1990), metade dos participantes recebeu uma caneca de café da universidade. Quando questionados sobre o preço mínimo para vendê-la, os "donos" pediram em média US\$ 7,12. Os "compradores" (que não receberam a caneca) ofereceram em média US\$ 2,87. A simples posse — a dotação — mais que dobrou a valoração do objeto.

!!! box-brasil "Box Brasil 8.3: Efeito dotação no mercado imobiliário"
    O mercado imobiliário brasileiro oferece uma ilustração vívida do efeito dotação. Dados do índice FipeZap mostram que, em períodos de desaceleração econômica, os preços de venda de imóveis residenciais resistem a cair mesmo quando o volume de transações despenca. Proprietários que compraram seus imóveis a preços elevados relutam em vender abaixo do preço de aquisição — o ponto de referência —, preferindo manter o imóvel fora do mercado por meses ou anos. Essa rigidez de preços para baixo é difícil de explicar pela teoria neoclássica pura, mas é uma previsão natural da aversão à perda: vender abaixo do preço de compra é codificado como "perda", e a dor dessa perda supera o benefício racional de liquidar o ativo e realocar o capital.

**Efeito framing.** Se o efeito dotação mostra que a posse de um objeto altera sua valoração, o efeito framing revela algo ainda mais perturbador para o modelo neoclássico: a forma como uma decisão é apresentada afeta sistematicamente as escolhas, mesmo quando as opções são logicamente equivalentes. Não é apenas o *conteúdo* da decisão que importa — é a *moldura* em que ela é colocada.

No plano da política pública, o efeito framing tem implicações práticas de primeira ordem. Comunicações governamentais sobre saúde pública, tributos ou programas sociais produzem respostas diferentes dependendo de se enfatizam o que os cidadãos *ganham* com a adesão ou o que *perdem* sem ela. Estudos de campo mostram que mensagens enquadradas em termos de perda ("você perderá R\$ X em benefícios caso não se inscreva") costumam gerar maior taxa de resposta do que mensagens equivalentes enquadradas em termos de ganho — um resultado direto da assimetria \(\lambda > 1\) da função valor. O efeito framing também aparece no design de contratos: um bônus por desempenho acima da meta ("ganho se superar") é avaliado de forma diferente de uma penalidade por desempenho abaixo da meta ("perda se ficar abaixo"), mesmo que os valores monetários sejam idênticos. A literatura sobre contratos de incentivo comportamental explora essa assimetria para desenhar contratos que motivam mais sem necessariamente custar mais.

!!! example "O problema das doenças asiáticas"
    Tversky e Kahneman (1981) apresentaram o seguinte cenário: uma doença incomum ameaça matar 600 pessoas. Dois programas são propostos:

    **Frame positivo (vidas salvas):**

    - Programa A: 200 pessoas serão salvas com certeza.
    - Programa B: \(1/3\) de probabilidade de salvar 600 e \(2/3\) de ninguém ser salvo.

    **Frame negativo (mortes):**

    - Programa C: 400 pessoas morrerão com certeza.
    - Programa D: \(1/3\) de probabilidade de ninguém morrer e \(2/3\) de 600 morrerem.

    Matematicamente, A = C e B = D. Mas 72% escolheram A no frame positivo (aversão ao risco no domínio dos ganhos) e 78% escolheram D no frame negativo (propensão ao risco no domínio das perdas) — exatamente como prevê a Teoria do Prospecto.

### 8.2.6 Contabilidade mental

O efeito framing já nos mostrou que a forma de apresentação importa. A contabilidade mental leva essa ideia um passo adiante: não apenas a apresentação externa, mas a organização interna — a forma como o próprio agente categoriza e acompanha suas transações financeiras — afeta sistematicamente suas decisões.

A **contabilidade mental** (*mental accounting*), conceito introduzido por Thaler (1985, 1999), descreve como as pessoas organizam, avaliam e acompanham suas atividades financeiras usando um sistema de "contas" mentais separadas — em vez de tratar o dinheiro como perfeitamente fungível, conforme prevê a teoria neoclássica.

A violação de fungibilidade é o fenômeno central. Do ponto de vista neoclássico, um real é um real, independentemente de sua origem (salário, bônus, herança, prêmio de loteria) ou de sua destinação planejada (alimentação, lazer, emergência). Mas na prática, as pessoas tratam o dinheiro de formas radicalmente diferentes conforme sua "conta mental" de origem. Um ganho inesperado — como uma restituição do Imposto de Renda — tende a ser gasto com maior "liberdade" do que o equivalente em salário mensal. Economicamente, ambos aumentam o orçamento disponível pela mesma quantia, mas psicologicamente são percebidos como recursos de diferentes "naturezas". O mesmo trabalhador que economiza rigorosamente em alimentação pode gastar o 13º salário de forma impulsiva — não porque mudou de preferências, mas porque o 13º pertence à conta mental de "dinheiro extraordinário".

No contexto brasileiro, a contabilidade mental aparece de forma particularmente vívida em dois contextos. Primeiro, na **Bolsa Família e no Auxílio Brasil**: pesquisas de avaliação do programa mostram que as famílias beneficiárias tendem a alocar os recursos recebidos prioritariamente para alimentação e material escolar — em proporção maior do que os recursos oriundos de outras fontes de renda. Isso não se deve apenas a restrições de uso formal (o benefício não tem destinação legalmente vinculada), mas à criação de uma "conta mental" específica associada ao benefício, com normas sociais implícitas sobre seu uso adequado. Segundo, na **conta salário**: a separação, promovida pelo sistema bancário brasileiro, entre a conta de depósito de salário (muitas vezes isenta de tarifas) e a conta corrente de movimentação cria divisões de contabilidade mental que afetam decisões de poupança. O dinheiro que "ainda não saiu da conta salário" é mentalmente tratado como mais disponível para poupança do que o dinheiro já transferido para a conta corrente.

!!! definition "Contabilidade mental"
    A **contabilidade mental** é o conjunto de operações cognitivas usadas por indivíduos e famílias para organizar, avaliar e acompanhar atividades financeiras (Thaler 1999). Inclui três componentes: (i) como os resultados são percebidos e avaliados; (ii) como as atividades são alocadas a contas específicas; e (iii) a frequência com que as contas são "fechadas" e avaliadas. Dhami (2016, p. 1486–1518) dedica um capítulo inteiro ao tema.

Como a contabilidade mental afeta as decisões concretas dos consumidores? Thaler (1985) identificou quatro **regras de edição hedônica** — princípios que descrevem como os agentes combinam ou separam ganhos e perdas para maximizar (ou minimizar) o impacto emocional percebido:

1. **Segregar ganhos:** é melhor apresentar dois ganhos separadamente (dois presentes distintos parecem melhores que um pacote).
2. **Integrar perdas:** é melhor combinar duas perdas em uma só (uma cobrança única dói menos que duas separadas).
3. **Cancelar uma pequena perda com um ganho maior:** integrar para perceber o resultado líquido positivo.
4. **Segregar um pequeno ganho de uma grande perda:** o "consolo" do pequeno ganho separado ameniza a dor.

Essas regras decorrem diretamente da curvatura da função valor da Teoria do Prospecto — concavidade para ganhos (ganhos separados são avaliados em regiões de maior sensibilidade) e convexidade para perdas (perdas combinadas são avaliadas em região de menor sensibilidade marginal).

!!! box-brasil "Box Brasil 8.4: Cartão de crédito e contas mentais"
    O uso intenso do cartão de crédito no Brasil — frequentemente como instrumento de parcelamento "sem juros" — ilustra a contabilidade mental em ação. O parcelamento separa uma grande perda (o preço total do bem) em pequenas perdas mensais, cada uma percebida como menos dolorosa. Além disso, a separação temporal entre o momento da compra (prazer imediato) e o pagamento (dor adiada) explora tanto a contabilidade mental quanto o viés do presente discutido na Seção 8.5. Prelec e Loewenstein (1998) modelaram formalmente essa "desvinculação" entre consumo e pagamento.

!!! info "🏅 Prêmio Nobel — Richard H. Thaler (2017)"

    **Richard Howard Thaler** (1945–presente) é um economista americano. Obteve o PhD na Universidade de Rochester e é professor na Booth School of Business da Universidade de Chicago.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à economia comportamental. Thaler demonstrou como limitações cognitivas — contabilidade mental, autocontrole limitado e preferências sociais — afetam sistematicamente as decisões econômicas individuais e os resultados de mercado. Sua agenda de pesquisa transformou a economia comportamental de curiosidade acadêmica em ferramenta prática de políticas públicas (*nudges*).

    **Conexão com este capítulo:**
    A contabilidade mental — a tendência de tratar diferentes categorias de dinheiro como não fungíveis, segregando gastos em "contas" separadas — é uma das anomalias comportamentais mais robustas e é discutida em detalhe neste capítulo. Thaler mostrou que essa tendência viola o princípio da fungibilidade e explica comportamentos como o tratamento diferenciado de ganhos inesperados (*windfall gains*) versus renda regular.

---

[^spanish-inquisition-allais]: *Nobody expects the independence axiom to fail!* O sketch *Spanish Inquisition* de Monty Python captura perfeitamente o momento Allais: assim como ninguém espera a Inquisição Espanhola, Savage não esperava violar seu próprio axioma — até que as perguntas mudaram e a intuição do Sistema 1 traiu a lógica do Sistema 2. Em economia, como no sketch, as hipóteses "inesperadas" mudam tudo.

[^black-knight-loss]: O investidor que segura uma ação em queda livre lembra o Cavaleiro Negro de Monty Python, que perde os braços e insiste: *"'Tis but a scratch!"* A aversão à perda transforma prejuízos reais em meros "arranhões" cognitivos — e o agente continua na luta muito depois de o momento racional de parar ter passado. O Cavaleiro Negro é a personificação perfeita da falácia do custo afundado turbinada por \(\lambda > 1\).
