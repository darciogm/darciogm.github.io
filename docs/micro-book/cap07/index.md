# Capítulo 7 — O Preço do Talvez

A maior parte das decisões econômicas relevantes envolve algum grau de incerteza. Quando um agricultor decide o que plantar, quando um investidor aloca recursos entre ativos financeiros ou quando um consumidor contrata um plano de saúde, nenhum deles conhece com precisão os resultados futuros de suas escolhas. A microeconomia da incerteza fornece o arcabouço analítico para modelar essas decisões, permitindo compreender como agentes racionais avaliam alternativas cujos resultados dependem de estados do mundo que ainda não se materializaram.

Este capítulo desenvolve a teoria da escolha sob incerteza a partir do conceito de **loteria**, passando pela formulação axiomática da **utilidade esperada** de Von Neumann e Morgenstern, pela caracterização da **aversão ao risco** e suas medidas quantitativas, até os mecanismos institucionais que permitem reduzir ou redistribuir riscos. Ao final, introduzimos a abordagem de **estado-preferência** e oferecemos uma visão preliminar dos problemas de **informação assimétrica** que serão aprofundados em capítulos posteriores.

---

## 7.1 Loterias e Valor Esperado

Para modelar decisões sob incerteza, precisamos primeiro de uma linguagem formal que descreva as alternativas disponíveis ao agente. Essa linguagem é fornecida pelo conceito de **loteria** — uma representação matemática de qualquer situação cujo resultado depende do acaso. De um bilhete de rifa a um investimento em ações, toda escolha arriscada pode ser descrita como uma loteria com resultados e probabilidades bem definidos.

!!! definition "Loteria simples"
    Uma **loteria simples** é uma distribuição de probabilidade sobre um conjunto finito de resultados. Formalmente, uma loteria \(L\) é descrita por:

    \[
    L = \{(x_1, p_1), (x_2, p_2), \ldots, (x_n, p_n)\}
    \]

    onde \(x_i \in \mathbb{R}\) são os possíveis resultados (payoffs monetários) e \(p_i \geq 0\) são as probabilidades associadas, com \(\sum_{i=1}^{n} p_i = 1\).

O **valor esperado** de uma loteria é a média ponderada dos resultados pelas respectivas probabilidades:

\[
E[L] = \sum_{i=1}^{n} p_i \, x_i
\]

!!! example "Exemplo numérico"
    Considere a loteria \(L = \{(100, 0{,}5); (0, 0{,}5)\}\). O valor esperado é:

    \[
    E[L] = 0{,}5 \times 100 + 0{,}5 \times 0 = 50
    \]

    Um agente que aceita ou rejeita essa loteria em troca de receber \(R\$ 50\) com certeza revela sua atitude em relação ao risco.

Uma **loteria composta** é uma loteria cujos resultados são, eles mesmos, loterias. Sob o axioma de redução de loterias compostas, toda loteria composta pode ser reduzida a uma loteria simples equivalente pela aplicação da regra de probabilidade total. Essa propriedade é conveniente porque nos permite trabalhar apenas com loterias simples sem perda de generalidade.

O valor esperado é um critério natural de avaliação — ele nos diz, em média, quanto a loteria "vale". Mas será que ele é suficiente para guiar as decisões de agentes reais? Um exemplo clássico sugere que não.

### O Paradoxo de São Petersburgo

O valor esperado, por si só, não é suficiente para descrever o comportamento dos agentes diante do risco. O célebre **Paradoxo de São Petersburgo**, proposto por Nicolau Bernoulli em 1713, ilustra essa limitação. Considere um jogo em que uma moeda justa é lançada repetidamente até sair cara. Se a cara aparece no \(n\)-ésimo lançamento, o jogador recebe \(2^n\) reais. O valor esperado desse jogo é:

\[
E[L] = \sum_{n=1}^{\infty} \frac{1}{2^n} \cdot 2^n = \sum_{n=1}^{\infty} 1 = \infty
\]

No entanto, nenhuma pessoa racional pagaria uma quantia arbitrariamente alta para participar desse jogo. Daniel Bernoulli (1738) propôs que os agentes avaliam os resultados não pelo seu valor monetário, mas pela **utilidade** que deles extraem — inaugurando a ideia de utilidade esperada. Essa intuição genial — a de que o que importa não é o dinheiro em si, mas a satisfação que ele proporciona — é o ponto de partida para a construção axiomática que veremos a seguir.

---

## 7.2 Hipótese da Utilidade Esperada (Von Neumann–Morgenstern)

O Paradoxo de São Petersburgo mostrou que o valor esperado, embora intuitivo, não é um critério satisfatório para descrever as decisões dos agentes diante do risco. É necessário um arcabouço mais sofisticado, que leve em conta não apenas os resultados e suas probabilidades, mas também a forma como o agente os avalia subjetivamente. Esse arcabouço é a **Hipótese da Utilidade Esperada**.

A formalização moderna da teoria da utilidade esperada foi apresentada por John von Neumann e Oskar Morgenstern em 1944. Ela estabelece condições sob as quais as preferências de um agente sobre loterias podem ser representadas por uma função de utilidade com propriedade de linearidade nas probabilidades.

!!! definition "Axiomas de Von Neumann–Morgenstern"
    Sejam \(L_1, L_2, L_3\) loterias no conjunto \(\mathcal{L}\). As preferências \(\succsim\) satisfazem os axiomas VNM se:

    1. **Completude**: Para quaisquer \(L_1, L_2 \in \mathcal{L}\), vale \(L_1 \succsim L_2\) ou \(L_2 \succsim L_1\) (ou ambos).

    2. **Transitividade**: Se \(L_1 \succsim L_2\) e \(L_2 \succsim L_3\), então \(L_1 \succsim L_3\).

    3. **Continuidade (Arquimediana)**: Se \(L_1 \succ L_2 \succ L_3\), então existe \(\alpha \in (0,1)\) tal que \(L_2 \sim \alpha L_1 + (1-\alpha) L_3\).

    4. **Independência**: Se \(L_1 \succsim L_2\), então para todo \(L_3\) e todo \(\alpha \in (0,1)\): \(\alpha L_1 + (1-\alpha)L_3 \succsim \alpha L_2 + (1-\alpha) L_3\).

!!! theorem "Teorema da Utilidade Esperada"
    Se as preferências \(\succsim\) sobre o espaço de loterias \(\mathcal{L}\) satisfazem os axiomas de completude, transitividade, continuidade e independência, então existe uma função \(u: \mathbb{R} \to \mathbb{R}\) tal que, para quaisquer loterias \(L_1\) e \(L_2\):

    \[
    L_1 \succsim L_2 \iff E[u(L_1)] \geq E[u(L_2)]
    \]

    onde \(E[u(L)] = \sum_{i=1}^{n} p_i \, u(x_i)\).

    Além disso, \(u\) é única a menos de transformações afins positivas: se \(v(x) = a \cdot u(x) + b\), com \(a > 0\), então \(v\) representa as mesmas preferências.

O axioma mais controverso é o de **independência**. Ele afirma, em essência, que se você prefere a loteria A à loteria B, então misturar ambas com uma mesma terceira loteria não deveria alterar essa preferência — a "adição" de uma alternativa irrelevante não contamina a comparação original. O **Paradoxo de Allais** (1953) demonstra que, em certas situações, agentes reais violam sistematicamente esse axioma, o que motivou o desenvolvimento de teorias alternativas como a **teoria dos prospectos** de Kahneman e Tversky (1979), que estudaremos no Capítulo 8.

!!! idea "Intuição Econômica"
    **Em uma frase:** A utilidade esperada diz que pessoas racionais avaliam apostas pela "felicidade média" que elas proporcionam, não pelo dinheiro médio.

    **Pense assim:** Imagine que você concorre a um sorteio de R$ 10.000 com 50% de chance. O valor esperado é R$ 5.000, mas a alegria que R$ 10.000 trazem não é o dobro da alegria de R$ 5.000 — assim como o segundo prato de comida no rodízio nunca é tão bom quanto o primeiro.

    **Por que isso importa:** Toda a regulação de seguros, previdência e mercados financeiros no Brasil se apoia na ideia de que as pessoas transformam dinheiro em bem-estar de forma não linear.

---

## 7.3 Aversão ao Risco

Com o arcabouço da utilidade esperada em mãos, podemos agora investigar uma questão central: como os agentes se posicionam diante do risco? Intuitivamente, sabemos que a maioria das pessoas prefere evitar incertezas desnecessárias — é por isso que existem seguros, contratos de trabalho com salário fixo e fundos de previdência. A teoria formaliza essa intuição por meio da curvatura da função de utilidade, conectando um conceito geométrico (concavidade) a um comportamento econômico observável (a preferência pela estabilidade).

!!! definition "Classificação de atitudes frente ao risco"
    Seja \(u\) uma função de utilidade VNM. Um agente é:

    - **Avesso ao risco** se, para toda loteria \(L\): \(u(E[L]) > E[u(L)]\).
    - **Neutro ao risco** se, para toda loteria \(L\): \(u(E[L]) = E[u(L)]\).
    - **Propenso ao risco** se, para toda loteria \(L\): \(u(E[L]) < E[u(L)]\).

A aversão ao risco está intimamente ligada à **concavidade** da função de utilidade. Pela **desigualdade de Jensen**, se \(u\) é estritamente côncava, então para qualquer variável aleatória \(\tilde{x}\) não degenerada:

\[
u(E[\tilde{x}]) > E[u(\tilde{x})]
\]

Intuitivamente, o agente avesso ao risco prefere receber o valor esperado de uma loteria com certeza a participar da loteria. A curvatura de \(u\) captura a intensidade dessa preferência: quanto mais côncava a função, maior a aversão ao risco.

Graficamente, a aversão ao risco se manifesta pelo fato de que a corda ligando dois pontos na curva de utilidade fica **abaixo** da própria curva — ou seja, a utilidade esperada da loteria (ponto na corda) é inferior à utilidade do valor esperado (ponto na curva).

!!! idea "Intuição Econômica"
    **Em uma frase:** Aversão ao risco significa preferir o certo ao duvidoso, mesmo quando o valor médio é igual.

    **Pense assim:** Um trabalhador brasileiro prefere um salário fixo de R$ 3.000 a um emprego que paga R$ 6.000 em meses bons e zero em meses ruins — mesmo que a média seja a mesma. A dor de ficar sem renda pesa mais do que a alegria do mês gordo.

    **Por que isso importa:** É por isso que existem seguros, previdência e CLT — instituições que transferem risco de quem não quer carregar para quem consegue absorvê-lo melhor.

<iframe src="../graficos/cap07/aversao-risco.html" width="100%" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>

<div class="caption-obj" markdown>
**Figura 7.1 — Aversão ao risco e função de utilidade.** Arraste os pontos \(W_1\) e \(W_2\), ajuste a probabilidade \(\pi\) e alterne entre agente avesso, neutro e propenso ao risco. A área sombreada indica o prêmio de risco.
</div>

---

## 7.4 Medidas de Aversão ao Risco (Arrow-Pratt)

Saber que um agente é avesso ao risco já é informativo, mas para muitas aplicações precisamos ir além: quanto avesso? Mais avesso que outro agente? Mais avesso hoje, com pouca riqueza, do que seria amanhã, se ficasse mais rico? Para responder a essas perguntas, é necessário dispor de uma **medida quantitativa** da aversão ao risco — algo que converta a noção intuitiva de "gostar mais ou menos de risco" em um número comparável entre agentes e entre níveis de riqueza.

Para comparar a aversão ao risco entre agentes ou ao longo de diferentes níveis de riqueza, Kenneth Arrow e John Pratt desenvolveram medidas locais baseadas na curvatura da função de utilidade.

!!! definition "Coeficiente de aversão absoluta ao risco (ARA)"
    O coeficiente de aversão absoluta ao risco de Arrow-Pratt é definido como:

    \[
    A(W) = -\frac{u''(W)}{u'(W)}
    \]

    onde \(W\) é o nível de riqueza do agente.

!!! definition "Coeficiente de aversão relativa ao risco (RRA)"
    O coeficiente de aversão relativa ao risco é definido como:

    \[
    R(W) = -\frac{W \cdot u''(W)}{u'(W)} = W \cdot A(W)
    \]

Essas medidas possuem interpretação direta: \(A(W)\) mede a aversão ao risco para apostas de magnitude absoluta fixa, enquanto \(R(W)\) mede a aversão ao risco para apostas proporcionais à riqueza. Note que ambas dependem da razão entre a segunda e a primeira derivadas da função de utilidade — a primeira derivada captura a utilidade marginal (quanto vale um real a mais), enquanto a segunda derivada captura como essa utilidade marginal muda (o quanto o agente "satura" à medida que enriquece).

A escolha de qual medida utilizar depende do contexto. Se o risco é de magnitude fixa (por exemplo, uma aposta de R\$ 1.000 independentemente da riqueza do agente), a medida absoluta \(A(W)\) é a mais relevante. Se o risco é proporcional à riqueza (por exemplo, investir 10% do patrimônio em ações), a medida relativa \(R(W)\) é mais informativa.

### Classes importantes de funções de utilidade

| Classe | Função \(u(W)\) | \(A(W)\) | \(R(W)\) | Propriedade |
|:-------|:----------------|:---------|:---------|:------------|
| CARA (Aversão Absoluta Constante) | \(-e^{-aW}\), \(a > 0\) | \(a\) (constante) | \(aW\) (crescente) | A atitude frente a apostas de valor fixo não muda com a riqueza |
| CRRA (Aversão Relativa Constante) | \(\frac{W^{1-\gamma}}{1-\gamma}\), \(\gamma > 0, \gamma \neq 1\) | \(\frac{\gamma}{W}\) (decrescente) | \(\gamma\) (constante) | A atitude frente a apostas proporcionais não muda com a riqueza |
| CRRA (caso log) | \(\ln(W)\) | \(\frac{1}{W}\) (decrescente) | \(1\) (constante) | Caso limite quando \(\gamma \to 1\) |
| DARA (Aversão Absoluta Decrescente) | \(\ln(W)\), \(\frac{W^{1-\gamma}}{1-\gamma}\) | Decrescente em \(W\) | Depende da forma | Agentes mais ricos aceitam mais risco absoluto |
| Quadrática | \(W - bW^2\), \(b > 0\) | \(\frac{2b}{1-2bW}\) (crescente) | \(\frac{2bW}{1-2bW}\) (crescente) | IARA — propriedade pouco realista |

<div class="caption-obj" markdown>
**Tabela 7.1 — Classes importantes de funções de utilidade.**
</div>

!!! tip "DARA como propriedade desejável"
    A evidência empírica sugere fortemente que a aversão absoluta ao risco é **decrescente** na riqueza (DARA): indivíduos mais ricos estão dispostos a aceitar apostas de valor fixo que indivíduos mais pobres recusariam. A função de utilidade quadrática, embora matematicamente conveniente, viola essa propriedade (apresenta IARA) e possui a limitação adicional de que a utilidade marginal se torna negativa para riquezas suficientemente altas.

!!! info "🏅 Prêmio Nobel — Kenneth J. Arrow (1972)"

    **Kenneth Joseph Arrow** (1921–2017) foi um economista americano. Obteve o PhD na Universidade de Columbia e foi professor em Stanford e Harvard. Dividiu o Nobel com John Hicks. É considerado um dos economistas mais influentes do século XX.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Arrow fez contribuições fundamentais em múltiplas áreas: provou (com Debreu) a existência do equilíbrio geral competitivo, formulou o teorema da impossibilidade em escolha social, e desenvolveu a teoria de mercados contingentes (Arrow-Debreu) para alocação eficiente de risco.

    **Conexão com este capítulo:**
    O coeficiente de Arrow-Pratt de aversão ao risco — medida central para classificar atitudes frente ao risco — foi desenvolvido independentemente por Arrow e John W. Pratt. As medidas de aversão absoluta e relativa ao risco, que determinam como a demanda por seguros e ativos arriscados varia com a riqueza, são ferramentas essenciais da análise de risco apresentada neste capítulo.

---

## 7.5 Prêmio de Risco e Equivalente de Certeza

As medidas de Arrow-Pratt descrevem a aversão ao risco em termos da curvatura da função de utilidade — uma grandeza matemática. Mas como traduzir essa curvatura em termos econômicos concretos? Quanto, em reais, um agente pagaria para se livrar de um risco? É exatamente isso que os conceitos de **equivalente de certeza** e **prêmio de risco** fazem: eles transformam a informação contida na função de utilidade em valores monetários que podem ser diretamente observados ou estimados no mercado.

!!! definition "Equivalente de certeza e prêmio de risco"
    Seja \(\tilde{W} = W + \tilde{\varepsilon}\) a riqueza aleatória, onde \(\tilde{\varepsilon}\) é um risco justo (isto é, \(E[\tilde{\varepsilon}] = 0\)) com variância \(\sigma^2\).

    - O **equivalente de certeza** \(W_{EC}\) é o valor certo que proporciona a mesma utilidade esperada da loteria:

    \[
    u(W_{EC}) = E[u(\tilde{W})]
    \]

    - O **prêmio de risco** \(\pi\) é a quantia máxima que o agente pagaria para eliminar o risco:

    \[
    \pi = E[\tilde{W}] - W_{EC} = W - W_{EC}
    \]

    Para um agente avesso ao risco, \(\pi > 0\); para um neutro, \(\pi = 0\).

!!! idea "Intuição Econômica"
    **Em uma frase:** O equivalente certo é o "preço de saída" de uma aposta — quanto você aceitaria receber para não ter que jogar.

    **Pense assim:** Se você tem um bilhete de rifa que vale R$ 1.000 com 50% de chance (valor esperado = R$ 500), mas toparia vendê-lo por R$ 350, então R$ 350 é seu equivalente certo e os R$ 150 de diferença são o prêmio de risco — o desconto que você dá só para dormir tranquilo.

    **Por que isso importa:** O prêmio de risco explica por que títulos do Tesouro pagam menos que ações na Bolsa — investidores exigem compensação para aceitar incerteza.

### Aproximação de Arrow-Pratt para o prêmio de risco

!!! proof "Demonstração: Derivação do prêmio de risco de Arrow-Pratt"
    **Objetivo**: Mostrar que, para riscos pequenos, o prêmio de risco é aproximadamente:

    \[
    \pi \approx \frac{1}{2} A(W) \sigma^2
    \]

    **Demonstração**:

    Considere a riqueza aleatória \(\tilde{W} = W + \tilde{\varepsilon}\), onde \(E[\tilde{\varepsilon}] = 0\) e \(\text{Var}(\tilde{\varepsilon}) = \sigma^2\).

    **Passo 1**: Expanda \(u(W + \tilde{\varepsilon})\) em série de Taylor de segunda ordem em torno de \(W\):

    \[
    u(W + \tilde{\varepsilon}) \approx u(W) + u'(W)\tilde{\varepsilon} + \frac{1}{2}u''(W)\tilde{\varepsilon}^2
    \]

    **Passo 2**: Tome o valor esperado de ambos os lados:

    \[
    E[u(W + \tilde{\varepsilon})] \approx u(W) + u'(W) \underbrace{E[\tilde{\varepsilon}]}_{=\,0} + \frac{1}{2}u''(W) \underbrace{E[\tilde{\varepsilon}^2]}_{=\,\sigma^2}
    \]

    \[
    E[u(\tilde{W})] \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    **Passo 3**: Por definição do prêmio de risco, \(u(W - \pi) = E[u(\tilde{W})]\). Expanda o lado esquerdo em Taylor de primeira ordem:

    \[
    u(W - \pi) \approx u(W) - u'(W)\pi
    \]

    **Passo 4**: Iguale as duas expressões:

    \[
    u(W) - u'(W)\pi \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    -u'(W)\pi \approx \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    \pi \approx -\frac{1}{2}\frac{u''(W)}{u'(W)}\sigma^2 = \frac{1}{2}A(W)\sigma^2 \qquad \blacksquare
    \]

    **Interpretação**: O prêmio de risco é (aproximadamente) proporcional a dois fatores: (i) a medida de aversão absoluta ao risco \(A(W)\), que captura a curvatura da função de utilidade; e (ii) a variância \(\sigma^2\) do risco, que captura a magnitude da incerteza. Para riscos multiplicativos (proporcionais à riqueza), uma derivação análoga mostra que \(\pi/W \approx \frac{1}{2}R(W)\sigma_r^2\), onde \(\sigma_r^2\) é a variância do retorno relativo.

A fórmula de Arrow-Pratt é notavelmente elegante: ela decompõe o "preço" que o agente paga pelo risco em dois fatores — um subjetivo (quão avesso ele é) e outro objetivo (quão arriscada é a loteria). Essa decomposição tem implicações práticas imediatas: para um dado nível de risco, agentes mais avessos pagam prêmios maiores; para um dado nível de aversão, riscos mais voláteis custam mais caro. É exatamente essa lógica que as seguradoras utilizam ao precificar apólices, cobrando mais de quem enfrenta riscos maiores e oferecendo descontos a quem demonstra menor exposição.

<iframe src="../graficos/cap07/premio-risco.html" width="100%" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>

<div class="caption-obj" markdown>
**Figura 7.2 — Prêmio de risco de Arrow-Pratt.** Ajuste a riqueza \(W\), a variância \(\sigma^2\) e a curvatura da função de utilidade. Alterne entre CARA, CRRA e quadrática para comparar o prêmio de risco exato com a aproximação \(\tfrac{1}{2}\sigma^2 A(W)\).
</div>

---

## 7.6 Métodos para Reduzir o Risco

Até aqui, tratamos o risco como algo dado — uma propriedade das loterias que o agente enfrenta. Mas, na prática, agentes e instituições desenvolvem mecanismos engenhosos para **reduzir**, **redistribuir** ou **gerenciar** os riscos a que estão expostos. Esses mecanismos não eliminam a incerteza do mundo; eles a realocam para quem pode suportá-la melhor ou a diluem entre muitos agentes. Nesta seção, examinamos quatro estratégias fundamentais: seguros, diversificação, flexibilidade e informação.

### 7.6.1 Seguros

O mecanismo de seguro permite transferir risco de agentes mais avessos para agentes menos avessos (ou mais diversificados). Considere um agente com riqueza \(W\) que enfrenta uma perda \(d\) com probabilidade \(p\).

- **Prêmio atuarialmente justo**: \(P = p \cdot d\). Sob esse prêmio, o agente avesso ao risco contrata cobertura total.
- **Prêmio com carregamento**: \(P = (1+\lambda) p \cdot d\), \(\lambda > 0\). Nesse caso, a cobertura ótima pode ser parcial.

!!! theorem "Teorema: Seguro total sob prêmio atuarialmente justo"
    Se o prêmio do seguro é atuarialmente justo e o agente é estritamente avesso ao risco, então o contrato ótimo é de **cobertura total** (\(q^* = d\)), onde \(q\) é a indenização contratada.

<iframe src="../graficos/cap07/seguro.html" width="100%" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>

<div class="caption-obj" markdown>
**Figura 7.3 — Mercado de seguros no espaço estado-contingente.** Ajuste a riqueza inicial, a perda, a probabilidade de sinistro e o carregamento. Observe como a cobertura ótima se move em direção à linha de 45 graus (seguro total) quando o prêmio é atuarialmente justo (\(\lambda = 0\)).
</div>

### 7.6.2 Diversificação

Se o seguro transfere risco de um agente para outro, a diversificação opera por um mecanismo diferente: ela **dilui** o risco ao distribuir a exposição entre múltiplas fontes de incerteza. A lógica é simples, mas poderosa: quando os resultados de diferentes ativos não se movem perfeitamente em conjunto, as perdas de uns tendem a ser parcialmente compensadas pelos ganhos de outros.

A diversificação reduz o risco total de uma carteira sem necessariamente reduzir o retorno esperado. Se os retornos dos ativos não são perfeitamente correlacionados, a variância da carteira é menor que a média ponderada das variâncias individuais.

Para \(n\) ativos independentes e identicamente distribuídos com retorno \(\tilde{r}_i\) (média \(\mu\), variância \(\sigma^2\)), a variância da carteira igualmente ponderada é:

\[
\text{Var}\left(\frac{1}{n}\sum_{i=1}^{n}\tilde{r}_i\right) = \frac{\sigma^2}{n} \xrightarrow{n \to \infty} 0
\]

No caso mais geral de dois ativos com correlação \(\rho\), pesos \(w\) e \((1-w)\), e variâncias \(\sigma_1^2\) e \(\sigma_2^2\), a variância da carteira é:

\[
\sigma_p^2 = w^2 \sigma_1^2 + (1-w)^2 \sigma_2^2 + 2w(1-w)\rho\sigma_1\sigma_2
\]

Quando \(\rho < 1\), existe um peso \(w^*\) que minimiza \(\sigma_p^2\), gerando o benefício da diversificação. Quanto menor a correlação entre os ativos, maior o ganho. No caso extremo \(\rho = -1\), é possível eliminar completamente o risco da carteira. Esse resultado fundamenta toda a teoria moderna de portfólios, iniciada por Markowitz (1952).

!!! note "Risco diversificável vs. risco sistemático"
    Em uma economia com muitos ativos, a diversificação elimina o **risco idiossincrático** (específico de cada ativo), mas não elimina o **risco sistemático** (que afeta todos os ativos simultaneamente). Essa distinção é central no modelo CAPM (Capital Asset Pricing Model), no qual apenas o risco sistemático — medido pelo coeficiente beta — é remunerado pelo mercado.

!!! idea "Intuição Econômica"
    **Em uma frase:** Diversificar é não colocar todos os ovos na mesma cesta — o risco total cai mesmo sem reduzir o retorno esperado.

    **Pense assim:** Um pequeno agricultor do Paraná que planta só soja fica à mercê da seca ou da queda de preço. Se ele divide a terra entre soja, milho e feijão, uma safra ruim de um produto pode ser compensada pela boa safra de outro. O retorno médio pode ser parecido, mas o risco de "quebrar" cai muito.

    **Por que isso importa:** A diversificação é o princípio por trás dos fundos de investimento, dos planos de previdência e até da política de crédito agrícola do Banco do Brasil, que incentiva a rotação de culturas.

### 7.6.3 Flexibilidade e valor da opção

Seguros e diversificação lidam com riscos que já estão presentes. Mas e quando o agente pode **escolher o momento** de se expor ao risco? Existe valor em simplesmente esperar, observar como o mundo se desenrola e decidir depois? A resposta, surpreendentemente rica, é que sim — e esse valor pode ser substancial.

Manter opções abertas tem valor positivo sob incerteza. A possibilidade de adiar uma decisão irreversível até que nova informação se torne disponível é análoga a uma **opção real**, cujo valor cresce com a volatilidade do ambiente.

Formalmente, considere um agente que pode tomar uma decisão irreversível hoje ou esperar um período para obter informação adicional. Se o custo de esperar é baixo e a incerteza é alta, o **valor da opção de espera** pode ser substancial. Esse conceito, desenvolvido por Dixit e Pindyck (1994), tem aplicações importantes em decisões de investimento, exploração de recursos naturais e políticas públicas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Sob incerteza, a irreversibilidade cria um custo de oportunidade — agir hoje "mata" a opção de decidir melhor amanhã.

    **Pense assim:** Você recebeu uma proposta de emprego em outra cidade, mas espera uma resposta de um concurso público que sai em 30 dias. Aceitar agora é irreversível. Se a incerteza sobre o concurso é grande, o valor de esperar — mesmo perdendo um mês de salário — pode compensar. O VPL positivo da mudança não basta; ele precisa superar o valor da opção de espera.

    **Por que isso importa:** Esse raciocínio explica por que empresas adiam investimentos mesmo com VPL positivo, por que a Petrobras pode postergar a exploração do pré-sal quando o preço do petróleo é volátil, e por que políticas públicas irreversíveis merecem cautela extra.

### 7.6.4 Informação

O último mecanismo para lidar com o risco não redistribui nem adia a incerteza — ele a **reduz diretamente**. A informação reduz a incerteza e permite decisões mais bem fundamentadas. O **valor da informação** pode ser definido como a diferença entre a utilidade esperada com e sem a informação. Para um agente avesso ao risco, informação completa é sempre (fracamente) valiosa.

Seja \(\theta\) o estado da natureza desconhecido e \(a\) a ação do agente. Sem informação, o agente maximiza \(E_\theta[u(a, \theta)]\). Com informação perfeita (observa \(\theta\) antes de agir), maximiza \(u(a^*(\theta), \theta)\) para cada realização. O **valor da informação perfeita** é:

\[
VI = E_\theta\left[\max_a u(a, \theta)\right] - \max_a E_\theta[u(a, \theta)]
\]

Pela desigualdade de Jensen aplicada ao operador \(\max\), temos \(VI \geq 0\): informação nunca tem valor negativo para um agente que pode ignorá-la. Informação **imperfeita** (um sinal correlacionado com \(\theta\)) também tem valor não negativo, calculado de forma análoga usando a atualização bayesiana das crenças.

---

## 7.7 Abordagem Estado-Preferência (*State-Preference*)

Até aqui, abordamos a incerteza pelo lado do agente individual: como ele avalia loterias, quão avesso ao risco ele é, quanto pagaria por um seguro. Mas existe uma perspectiva complementar e igualmente poderosa, que reconecta a teoria da incerteza à teoria do consumidor que já conhecemos dos capítulos anteriores. Em vez de pensar em "loterias", podemos pensar em "bens contingentes" — bens que existem condicionalmente à ocorrência de determinados estados do mundo. Essa reformulação, devida a Arrow e Debreu, revela uma elegância profunda: escolher sob incerteza é, no fundo, escolher um cesto de consumo, exatamente como no problema do consumidor determinístico.

A abordagem de estado-preferência, desenvolvida por Arrow (1964) e Debreu (1959), oferece uma perspectiva alternativa para modelar a incerteza.

!!! definition "Espaço de estados e ativos contingentes"
    - Um **estado da natureza** \(s \in S = \{1, 2, \ldots, S\}\) descreve uma configuração completa e mutuamente exclusiva do mundo.
    - Um **ativo contingente ao estado \(s\)** (ou ativo de Arrow-Debreu) paga 1 unidade monetária se o estado \(s\) ocorre e 0 caso contrário.
    - O preço de um ativo contingente ao estado \(s\) é denotado por \(\psi_s\).

Nessa estrutura, o consumo contingente do agente é um vetor \((c_1, c_2, \ldots, c_S)\), e o problema de escolha sob incerteza é reduzido a um problema de escolha do consumidor padrão, com a restrição orçamentária:

\[
\sum_{s=1}^{S} \psi_s \, c_s = W
\]

e a função objetivo:

\[
\max_{(c_1, \ldots, c_S)} \sum_{s=1}^{S} \pi_s \, u(c_s)
\]

onde \(\pi_s\) é a probabilidade do estado \(s\).

A condição de primeira ordem implica:

\[
\frac{\pi_s \, u'(c_s)}{\pi_{s'} \, u'(c_{s'})} = \frac{\psi_s}{\psi_{s'}} \quad \forall \; s, s'
\]

Se os mercados de ativos contingentes são **completos** (existe um ativo para cada estado), todo risco pode ser alocado eficientemente. Se, adicionalmente, o agente é avesso ao risco e os preços são atuarialmente justos (\(\psi_s = \pi_s\) para todo \(s\)), a solução ótima é \(c_s = c_{s'}\) para todo \(s, s'\) — ou seja, **consumo perfeitamente suavizado** entre estados. Esse resultado é a contrapartida, no espaço de estados, do resultado que vimos na Seção 7.6.1: assim como o agente avesso ao risco contrata cobertura total quando o prêmio é justo, ele equaliza o consumo entre todos os estados quando os preços dos ativos contingentes são atuarialmente justos. Em ambos os casos, a aversão ao risco conduz à eliminação completa da incerteza sempre que isso pode ser feito sem custo.

!!! note "Mercados completos e eficiência"
    A completude dos mercados é uma condição forte. Na prática, muitos riscos não são seguráveis (desemprego, saúde futura), o que gera incompletude dos mercados e potenciais ineficiências de Pareto. A incompletude dos mercados é um dos temas centrais da teoria financeira moderna.

---

## 7.8 Introdução à Informação Assimétrica

A análise até aqui pressupôs que todos os agentes compartilham a mesma informação sobre os riscos envolvidos. Mas o que acontece quando uma das partes sabe mais do que a outra? Essa assimetria de informação é, na prática, a regra — não a exceção. O vendedor de um carro usado conhece os defeitos ocultos; o paciente sabe mais sobre seus hábitos de saúde do que a seguradora; o gerente de uma empresa sabe mais sobre o desempenho de sua equipe do que o acionista. Essas assimetrias geram problemas que podem comprometer o funcionamento eficiente dos mercados de risco.

Os problemas de informação assimétrica surgem quando uma das partes de uma transação possui informação relevante que a outra desconhece. Esses problemas são centrais para a compreensão de falhas de mercado e serão tratados em profundidade em capítulos posteriores. Apresentamos aqui uma visão preliminar dos dois tipos fundamentais.

### Seleção adversa

A **seleção adversa** ocorre *antes* da celebração do contrato, quando uma das partes possui informação privada sobre suas características. O exemplo clássico é o mercado de carros usados de Akerlof (1970): vendedores conhecem a qualidade de seus veículos, mas compradores não conseguem distinguir carros bons de ruins (*lemons*). O resultado é que carros de boa qualidade podem ser expulsos do mercado.

Mecanismos para mitigar a seleção adversa incluem:

- **Sinalização**: a parte informada toma ações custosas para revelar sua qualidade (Spence, 1973).
- **Triagem** (*screening*): a parte desinformada oferece um menu de contratos que induz a autorevelação.

### Risco moral

Se a seleção adversa é um problema de **informação oculta** (quem é o agente?), o risco moral é um problema de **ação oculta** (o que o agente faz?). O **risco moral** ocorre *depois* da celebração do contrato, quando uma das partes pode tomar ações não observáveis que afetam o resultado. Por exemplo, após contratar um seguro, o segurado pode reduzir seus cuidados preventivos. A solução envolve o desenho de contratos com incentivos adequados (franquias, copagamentos, bônus por desempenho).

!!! tip "Terminologia"
    Em português, o termo consagrado é **risco moral** (tradução de *moral hazard*), e **não** "risco de inadimplência". "Risco moral" refere-se ao problema de incentivos gerado pela impossibilidade de observar as ações do agente após a contratação.

---

Os conceitos desenvolvidos ao longo deste capítulo — loterias, utilidade esperada, aversão ao risco, prêmio de risco, diversificação e informação assimétrica — ganham vida quando aplicados a mercados reais. Os boxes a seguir ilustram como a teoria se manifesta em três contextos brasileiros: o mercado de seguros de automóvel, a Mega-Sena e o seguro agrícola.

## 🇧🇷 Box Brasil: O Mercado de Seguros de Automóvel no Brasil

!!! box-brasil "Box Brasil — Seguros de automóvel: risco, precificação e regulação"
    O mercado de seguros de automóvel no Brasil é um campo fértil para a aplicação dos conceitos de incerteza e aversão ao risco. Regulado pela **[SUSEP](https://www.susep.gov.br)** (Superintendência de Seguros Privados), esse mercado apresenta características que ilustram os desafios teóricos discutidos neste capítulo.

    **Estrutura de mercado e concentração**

    O mercado brasileiro de seguros de automóvel é moderadamente concentrado. As cinco maiores seguradoras respondem por aproximadamente 55–60% dos prêmios emitidos. As principais são Porto Seguro, Tokio Marine, Bradesco Seguros, SulAmérica e HDI. Essa concentração permite algum poder de precificação, mas a competição é suficiente para limitar os carregamentos sobre o prêmio atuarialmente justo.

    **Precificação baseada em risco**

    A precificação dos seguros automotivos no Brasil envolve sofisticados modelos atuariais que incorporam variáveis como:

    - **Perfil do condutor**: idade, sexo, estado civil, tempo de habilitação.
    - **Veículo**: marca, modelo, ano, valor de mercado (tabela FIPE).
    - **Localização geográfica**: CEP de pernoite, índice de furto/roubo da região.
    - **Histórico**: bônus por ausência de sinistros (classes de bônus de 0 a 10).

    **Sinistralidade e variação regional**

    A sinistralidade (razão entre indenizações pagas e prêmios ganhos) varia significativamente entre regiões. Dados do setor indicam que estados como São Paulo e Rio de Janeiro apresentam sinistralidade mais alta em furto e roubo, enquanto estados do interior têm maior incidência relativa de colisões. A sinistralidade média do ramo automóvel situa-se tipicamente entre 55% e 65%.

    | Região | Sinistralidade típica | Principal tipo de sinistro |
    |:-------|:---------------------|:--------------------------|
    | SP (Capital) | 60–70% | Furto/roubo |
    | RJ (Capital) | 65–75% | Furto/roubo |
    | Interior SP | 50–60% | Colisão |
    | Sul | 50–60% | Colisão, granizo |
    | Nordeste | 45–55% | Colisão |

    **Problemas informacionais**

    O mercado de seguros automotivos enfrenta tanto **seleção adversa** (motoristas de alto risco têm mais incentivos para contratar seguros) quanto **risco moral** (a cobertura pode reduzir os cuidados com o veículo). As seguradoras mitigam esses problemas por meio de franquias (que funcionam como copagamento), classes de bônus (que premiam o histórico positivo) e inspeções veiculares prévias.

    **Papel da SUSEP**

    A SUSEP fiscaliza a solvência das seguradoras, regulamenta as condições gerais dos contratos e monitora as práticas de mercado. A exigência de provisões técnicas adequadas assegura que as seguradoras mantenham capacidade financeira para honrar os sinistros, reduzindo o risco sistêmico do setor.

---

## 🇧🇷 Box Brasil: A Mega-Sena e a Economia da Loteria

!!! box-brasil "Box Brasil — Mega-Sena: quando apostar é irracional (mas compreensível)"
    A **Mega-Sena**, operada pela Caixa Econômica Federal, é a maior loteria do Brasil e ilustra de maneira contundente o contraste entre valor esperado e comportamento observado.

    **Os números da Mega-Sena**

    A probabilidade de acertar as 6 dezenas em um jogo simples (6 números) é de \(1/50.063.860\) — ou aproximadamente 0,000002%. Pela legislação brasileira, 43,35% da arrecadação bruta é destinada ao pagamento de prêmios (incluindo quadra, quina e sena). Para a faixa principal (sena), a parcela é de cerca de 35% da arrecadação.

    **Valor esperado negativo**

    Para uma aposta simples de R\$ 5,00, o retorno esperado — considerando todas as faixas de premiação — é tipicamente inferior a R\$ 2,20. Isso implica um retorno esperado líquido de aproximadamente **−R\$ 2,80 por aposta**, ou uma "sinistralidade" de cerca de 44% para a Caixa. Do ponto de vista da utilidade esperada, um agente estritamente avesso ao risco *jamais* compraria um bilhete de loteria.

    **Por que as pessoas apostam?**

    A teoria econômica oferece duas explicações complementares:

    1. **Hipótese de Friedman-Savage (1948)**: a função de utilidade pode ser côncava para níveis baixos e altos de riqueza, mas **convexa** em uma faixa intermediária, correspondente à região onde um "grande prêmio" faria o indivíduo mudar de classe social. Nessa faixa, o agente se comporta como propenso ao risco.

    2. **Teoria dos prospectos**: os agentes *sobreponderam* probabilidades muito pequenas. Assim, a probabilidade subjetiva atribuída ao prêmio máximo é muito maior do que a probabilidade objetiva.

    **Conexão com este capítulo**

    A Mega-Sena demonstra que o critério do valor esperado (Seção 7.1) é insuficiente para explicar o comportamento observado. A disposição de milhões de brasileiros a aceitar uma loteria com valor esperado negativo desafia a hipótese de aversão ao risco universal e motiva os refinamentos teóricos discutidos nas Seções 7.2–7.3.

    **Fonte**: Caixa Econômica Federal, regulamento da Mega-Sena; Lei 13.756/2018 (destinação da arrecadação de loterias).

---

## 🇧🇷 Box Brasil: O Seguro Agrícola e o PSR

!!! box-brasil "Box Brasil — Programa de Subvenção ao Prêmio do Seguro Rural (PSR)"
    O setor agropecuário brasileiro — responsável por cerca de 24% do PIB quando considerada toda a cadeia — está intrinsecamente exposto a riscos climáticos, fitossanitários e de preços. O **Programa de Subvenção ao Prêmio do Seguro Rural (PSR)**, criado em 2003, é a principal política pública de gestão de risco agrícola no país.

    **Como funciona**

    O governo federal subsidia parte do prêmio do seguro rural pago pelo produtor. Em 2024, o orçamento do PSR foi de **R\$ 1,15 bilhão**, permitindo a cobertura de mais de 62 atividades agropecuárias. O percentual de subvenção varia por cultura: em média cerca de 40%, mas para culturas como soja o subsídio gira em torno de 20%.

    **Justificativa econômica**

    O subsídio se justifica por três razões microeconômicas:

    1. **Completude de mercados**: sem subvenção, muitos produtores — especialmente pequenos e médios — não teriam acesso ao seguro, deixando o mercado de risco incompleto (Seção 7.7).

    2. **Externalidades positivas**: a estabilidade da renda agrícola reduz a inadimplência no crédito rural e suaviza o consumo em regiões dependentes do agronegócio.

    3. **Seleção adversa**: sem incentivo, apenas os produtores de maior risco contratariam seguro, elevando o prêmio e expulsando os de baixo risco — o clássico problema de Akerlof (Seção 7.8).

    **Desafios**

    O PSR enfrenta limitações: orçamento frequentemente insuficiente para atender toda a demanda, concentração das apólices em grandes produtores do Centro-Oeste e Sul, e dificuldades na precificação atuarial de eventos climáticos extremos (que estão se tornando mais frequentes).

    **Fonte**: Ministério da Agricultura e Pecuária, Relatório do PSR 2023/2024; Atlas do Seguro Rural ([Embrapa](https://www.embrapa.br)).

---

## 📋 Resumo do Capítulo

- Uma loteria é uma distribuição de probabilidade sobre resultados monetários; o valor esperado é a média ponderada dos payoffs, mas não captura a atitude do agente em relação ao risco.
- A Hipótese da Utilidade Esperada (Von Neumann-Morgenstern) axiomatiza a escolha sob incerteza: agentes racionais maximizam a esperança de uma função de utilidade, com os axiomas de completude, transitividade, continuidade e independência fundamentando o teorema.
- A aversão ao risco corresponde à concavidade da função de utilidade (desigualdade de Jensen): o agente prefere o valor esperado com certeza à própria loteria; neutralidade e propensão ao risco correspondem a linearidade e convexidade, respectivamente.
- As medidas de Arrow-Pratt quantificam a aversão ao risco: a medida absoluta (ARA) determina o comportamento frente a riscos de magnitude fixa, enquanto a medida relativa (RRA) se aplica a riscos proporcionais à riqueza; funções CARA, CRRA e DARA capturam diferentes padrões.
- O prêmio de risco e o equivalente de certeza conectam a teoria à prática: o prêmio de risco é o valor que o agente pagaria para eliminar a incerteza, e a aproximação de Arrow-Pratt o relaciona à variância da loteria e à curvatura da utilidade.
- Diversificação, seguros e mercados de ativos contingentes (abordagem estado-preferência) são mecanismos para reduzir ou redistribuir riscos; problemas de informação assimétrica (seleção adversa e risco moral) limitam a eficiência desses mercados.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Loteria | Distribuição de probabilidade sobre um conjunto finito de resultados monetários. |
| Utilidade esperada (VNM) | Representação de preferências sob incerteza em que o agente maximiza a esperança matemática de uma função de utilidade. |
| Aversão ao risco | Preferência pelo valor esperado de uma loteria (com certeza) em relação à própria loteria; implica função de utilidade côncava. |
| Medida de Arrow-Pratt (ARA) | Coeficiente de aversão ao risco absoluta, definido como \(-u''(W)/u'(W)\); mede a curvatura local da utilidade. |
| Medida de Arrow-Pratt (RRA) | Coeficiente de aversão ao risco relativa, definido como \(-W \cdot u''(W)/u'(W)\); mede a aversão a riscos proporcionais à riqueza. |
| Equivalente de certeza | Valor certo que proporciona a mesma utilidade esperada de uma loteria; é menor que o valor esperado para agentes avessos ao risco. |
| Prêmio de risco | Diferença entre o valor esperado da loteria e o equivalente de certeza; mede quanto o agente pagaria para eliminar o risco. |
| Diversificação | Estratégia de alocação de riqueza entre ativos imperfeitamente correlacionados para reduzir o risco total do portfólio. |
| Seleção adversa | Problema de informação assimétrica pré-contratual em que a parte menos informada atrai desproporcionalmente agentes de alto risco. |
| Risco moral | Problema de informação assimétrica pós-contratual em que o agente segurado altera seu comportamento de forma não observável. |

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 7.1"
    **Enunciado:** Um investidor com função de utilidade \(u(W) = \ln(W)\) possui riqueza inicial \(W_0 = 10.000\). Ele é convidado a participar de uma loteria que paga \(+6.000\) com probabilidade \(0{,}4\) e \(-4.000\) com probabilidade \(0{,}6\). Calcule o equivalente de certeza, o prêmio de risco exato e compare com a aproximação de Arrow-Pratt.

    **Dados:** \(u(W) = \ln(W)\), \(W_0 = 10.000\), \(L = \{(+6.000,\; 0{,}4);\; (-4.000,\; 0{,}6)\}\).

    **Resolução:**

    **Passo 1 — Resultados possíveis e valor esperado**

    - Estado favorável: \(W_1 = 10.000 + 6.000 = 16.000\) com \(p_1 = 0{,}4\)
    - Estado desfavorável: \(W_2 = 10.000 - 4.000 = 6.000\) com \(p_2 = 0{,}6\)
    - Valor esperado: \(E[W] = 0{,}4 \times 16.000 + 0{,}6 \times 6.000 = 6.400 + 3.600 = 10.000\)

    Note que \(E[W] = W_0\): trata-se de um risco justo (\(E[\tilde{\varepsilon}] = 0\)).

    **Passo 2 — Utilidade esperada**

    \[
    E[u(W)] = 0{,}4 \times \ln(16.000) + 0{,}6 \times \ln(6.000)
    \]

    \[
    = 0{,}4 \times 9{,}6803 + 0{,}6 \times 8{,}6995 = 3{,}8721 + 5{,}2197 = 9{,}0918
    \]

    **Passo 3 — Equivalente de certeza**

    \[
    u(W_{EC}) = E[u(W)] \implies \ln(W_{EC}) = 9{,}0918 \implies W_{EC} = e^{9{,}0918} \approx 8.879
    \]

    **Passo 4 — Prêmio de risco exato**

    \[
    \pi = E[W] - W_{EC} = 10.000 - 8.879 = \text{R\$ } 1.121
    \]

    **Passo 5 — Aproximação de Arrow-Pratt**

    Para \(u(W) = \ln(W)\): \(A(W) = 1/W\). Em \(W_0 = 10.000\): \(A = 1/10.000 = 0{,}0001\).

    A variância do risco: \(\sigma^2 = 0{,}4 \times (6.000)^2 + 0{,}6 \times (-4.000)^2 = 14.400.000 + 9.600.000 = 24.000.000\).

    \[
    \pi_{AP} \approx \frac{1}{2} \times 0{,}0001 \times 24.000.000 = \text{R\$ } 1.200
    \]

    **Resultado:** \(\pi_{\text{exato}} = \text{R\$ } 1.121\) vs. \(\pi_{AP} \approx \text{R\$ } 1.200\). A aproximação superestima em cerca de 7%.

    **Interpretação econômica:** O investidor exigiria pelo menos R\$ 1.121 para aceitar esse risco justo — equivalente a 11,2% de sua riqueza. A discrepância entre o valor exato e a aproximação reflete que o risco não é "pequeno" em relação à riqueza (desvio padrão de R\$ 4.899 ≈ 49% de \(W_0\)), o que compromete a precisão da expansão de Taylor.

??? exercicio-resolvido "Exercício Resolvido 7.2"
    **Enunciado:** Uma produtora de café no Sul de Minas possui riqueza de R\$ 500.000 e enfrenta risco de geada que, com probabilidade \(0{,}2\), causa perda de R\$ 200.000. Sua utilidade é \(u(W) = \sqrt{W}\). (a) Calcule o prêmio atuarialmente justo. (b) Verifique que a produtora contrata cobertura total. (c) Se a seguradora cobra carregamento \(\lambda = 0{,}3\), qual o prêmio de risco máximo que a produtora aceita pagar?

    **Dados:** \(W = 500.000\), \(d = 200.000\), \(p = 0{,}2\), \(u(W) = \sqrt{W}\).

    **Resolução:**

    **Passo 1 — Prêmio atuarialmente justo**

    \[
    P_{justo} = p \times d = 0{,}2 \times 200.000 = \text{R\$ } 40.000
    \]

    **Passo 2 — Cobertura total sob prêmio justo**

    Sem seguro: \(E[u] = 0{,}8 \times \sqrt{500.000} + 0{,}2 \times \sqrt{300.000} = 0{,}8 \times 707{,}11 + 0{,}2 \times 547{,}72 = 565{,}69 + 109{,}54 = 675{,}23\).

    Com seguro total (\(P = 40.000\)): riqueza certa = \(500.000 - 40.000 = 460.000\).

    \(u(460.000) = \sqrt{460.000} = 678{,}23\).

    Como \(678{,}23 > 675{,}23\), a produtora prefere o seguro total. De fato, para agente avesso ao risco, seguro total é ótimo sob prêmio justo (Seção 7.6.1).

    **Passo 3 — Prêmio máximo que aceita pagar**

    O prêmio máximo \(P_{max}\) satisfaz \(u(W - P_{max}) = E[u]\) sem seguro:

    \[
    \sqrt{500.000 - P_{max}} = 675{,}23 \implies 500.000 - P_{max} = 675{,}23^2 = 455.936
    \]

    \[
    P_{max} = 500.000 - 455.936 = \text{R\$ } 44.064
    \]

    **Passo 4 — Decisão com carregamento**

    Prêmio com carregamento: \(P_\lambda = (1 + 0{,}3) \times 40.000 = \text{R\$ } 52.000\).

    Como \(P_\lambda = 52.000 > P_{max} = 44.064\), a produtora **não contrata** cobertura total a esse preço.

    **Resultado:** O prêmio atuarialmente justo é R\$ 40.000, e a produtora pagaria até R\$ 44.064 (prêmio de risco de R\$ 4.064). O carregamento de 30% torna a cobertura total inviável.

    **Interpretação econômica:** A diferença \(P_{max} - P_{justo} = \text{R\$ } 4.064\) é o prêmio de risco da produtora — o valor monetário da sua aversão ao risco. Com carregamento de 30%, a seguradora cobra mais do que a produtora está disposta a pagar por cobertura total, o que pode levar à contratação de cobertura parcial (franquia elevada). Este é precisamente o mecanismo que explica por que pequenos produtores brasileiros, com baixa capacidade de absorção de risco, dependem do subsídio do PSR para viabilizar o seguro.

??? exercicio-resolvido "Exercício Resolvido 7.3"
    **Enunciado:** Um investidor aloca sua riqueza entre dois ativos: ações de uma empresa de energia (\(\mu_1 = 12\%\), \(\sigma_1 = 20\%\)) e títulos do agronegócio (\(\mu_2 = 8\%\), \(\sigma_2 = 15\%\)). A correlação entre os retornos é \(\rho = -0{,}3\). (a) Calcule o retorno e a variância da carteira para \(w = 0{,}5\). (b) Encontre o peso \(w^*\) que minimiza a variância. (c) Compare o desvio padrão da carteira de variância mínima com os desvios individuais.

    **Dados:** \(\mu_1 = 0{,}12\), \(\sigma_1 = 0{,}20\), \(\mu_2 = 0{,}08\), \(\sigma_2 = 0{,}15\), \(\rho = -0{,}3\).

    **Resolução:**

    **Passo 1 — Carteira igualmente ponderada (\(w = 0{,}5\))**

    \[
    \mu_p = 0{,}5 \times 0{,}12 + 0{,}5 \times 0{,}08 = 0{,}10 = 10\%
    \]

    \[
    \sigma_p^2 = (0{,}5)^2(0{,}20)^2 + (0{,}5)^2(0{,}15)^2 + 2(0{,}5)(0{,}5)(-0{,}3)(0{,}20)(0{,}15)
    \]

    \[
    = 0{,}01 + 0{,}005625 + (-0{,}0045) = 0{,}011125
    \]

    \[
    \sigma_p = \sqrt{0{,}011125} = 0{,}1055 = 10{,}55\%
    \]

    **Passo 2 — Peso de variância mínima**

    \[
    w^* = \frac{\sigma_2^2 - \rho\sigma_1\sigma_2}{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}
    \]

    \[
    = \frac{0{,}0225 - (-0{,}3)(0{,}20)(0{,}15)}{0{,}04 + 0{,}0225 - 2(-0{,}3)(0{,}20)(0{,}15)} = \frac{0{,}0225 + 0{,}009}{0{,}0625 + 0{,}018} = \frac{0{,}0315}{0{,}0805} = 0{,}3913
    \]

    **Passo 3 — Variância mínima e comparação**

    \[
    \sigma_p^2(w^*) = (0{,}3913)^2(0{,}04) + (0{,}6087)^2(0{,}0225) + 2(0{,}3913)(0{,}6087)(-0{,}009)
    \]

    \[
    = 0{,}006125 + 0{,}008337 - 0{,}004288 = 0{,}010174
    \]

    \[
    \sigma_p(w^*) = \sqrt{0{,}010174} = 0{,}1009 = 10{,}09\%
    \]

    O retorno desta carteira: \(\mu_p(w^*) = 0{,}3913 \times 12\% + 0{,}6087 \times 8\% = 9{,}57\%\).

    **Resultado:**

    | Carteira | Retorno | Desvio padrão |
    |:---------|:--------|:-------------|
    | Ativo 1 puro | 12,00% | 20,00% |
    | Ativo 2 puro | 8,00% | 15,00% |
    | Igualmente ponderada | 10,00% | 10,55% |
    | Variância mínima | 9,57% | 10,09% |

    **Interpretação econômica:** A correlação negativa (\(\rho = -0{,}3\)) gera um forte benefício de diversificação. O desvio padrão da carteira de variância mínima (10,09%) é **menor** que o de ambos os ativos individuais — um resultado impossível quando \(\rho = 1\). Essa é a essência do resultado de Markowitz: combinando ativos com correlação imperfeita, um investidor brasileiro pode reduzir o risco total sem sacrificar proporcionalmente o retorno.

---

## ✏️ Exercícios

<a id="ex-7-1"></a>**Exercício 7.1.** Um investidor com função de utilidade \(u(W) = \ln(W)\) e riqueza inicial \(W_0 = 10.000\) pode participar de uma loteria que paga \(+5.000\) com probabilidade \(0{,}5\) e \(-5.000\) com probabilidade \(0{,}5\).

(a) Calcule a utilidade esperada da loteria.

(b) Calcule o equivalente de certeza.

(c) Calcule o prêmio de risco exato e compare com a aproximação de Arrow-Pratt.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-1)

---

<a id="ex-7-2"></a>**Exercício 7.2.** Mostre que a função de utilidade \(u(W) = -e^{-aW}\), com \(a > 0\), apresenta aversão absoluta ao risco constante (CARA). Calcule \(A(W)\) e \(R(W)\) e discuta as implicações econômicas de cada medida.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-2)

---

<a id="ex-7-3"></a>**Exercício 7.3.** Um agricultor no Cerrado brasileiro enfrenta a seguinte situação: com probabilidade \(0{,}7\) a safra é boa e ele obtém receita de R\$ 200.000; com probabilidade \(0{,}3\) há seca e a receita cai para R\$ 50.000. Sua função de utilidade é \(u(W) = \sqrt{W}\).

(a) Qual o valor esperado da receita?

(b) Qual o equivalente de certeza?

(c) Qual o prêmio máximo que ele pagaria por um seguro de cobertura total?

(d) Se uma seguradora oferece seguro a um prêmio de R\$ 60.000, o agricultor contrata? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-3)

---

<a id="ex-7-4"></a>**Exercício 7.4.** Considere dois estados da natureza, \(s_1\) (expansão) e \(s_2\) (recessão), com probabilidades \(\pi_1 = 0{,}6\) e \(\pi_2 = 0{,}4\). Um agente com riqueza \(W = 100\) e utilidade \(u(c) = \ln(c)\) pode comprar ativos contingentes ao preço \(\psi_1 = 0{,}6\) e \(\psi_2 = 0{,}4\).

(a) Formule o problema de maximização.

(b) Encontre a alocação ótima \((c_1^*, c_2^*)\).

(c) Interprete o resultado à luz da suavização de consumo entre estados.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-4)

---

<a id="ex-7-5"></a>**Exercício 7.5.** Considere dois agentes, A com \(u_A(W) = \ln(W)\) e B com \(u_B(W) = -e^{-0{,}001W}\), ambos com riqueza \(W = 10.000\).

(a) Calcule \(A(W)\) e \(R(W)\) para cada agente.

(b) Compare o prêmio de risco (aproximado) que cada um exigiria para aceitar uma loteria com valor esperado zero e desvio padrão de R\$ 1.000.

(c) Como o prêmio de risco de cada agente se altera se a riqueza aumenta para \(W = 50.000\)? Discuta a relação com DARA e CARA.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 06"
    A função utilidade \(U\) em termos da renda \(w\) de um consumidor é dada por \(U(w) = w^3\). Tal consumidor se encontra diante de uma loteria na qual possui \(w = \$0\) com probabilidade \(p = 0{,}5\) e \(w = \$4\) com probabilidade \(p = 0{,}5\). Avalie as seguintes proposições a respeito da escolha sob incerteza:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Como a função utilidade é convexa em relação à origem, o consumidor é avesso ao risco. |
    | 1    | A utilidade esperada da loteria é igual a trinta e dois. |
    | 2    | A utilidade do valor esperado dessa loteria é superior à utilidade esperada da loteria. |
    | 3    | O equivalente certeza é igual a 2,5. |
    | 4    | O coeficiente absoluto de aversão ao risco é constante. |

    ??? success "Gabarito"
        **Respostas: 01000**

        **Justificativa por item:**

        - **Item 0 — F:** Função utilidade convexa (\(u''(w) = 6w > 0\)) implica **propensão** ao risco, não aversão. A aversão ao risco requer concavidade (\(u'' < 0\)).

        - **Item 1 — V:** \(E[U] = 0{,}5 \times U(0) + 0{,}5 \times U(4) = 0{,}5 \times 0 + 0{,}5 \times 64 = 32\). Correto.

        - **Item 2 — F:** O valor esperado da loteria é \(E[w] = 0{,}5 \times 0 + 0{,}5 \times 4 = 2\). A utilidade do valor esperado é \(U(2) = 2^3 = 8\). Como \(U(E[w]) = 8 < 32 = E[U]\), a utilidade do valor esperado é *inferior* à utilidade esperada. Isso é precisamente a propriedade de um agente propenso ao risco (desigualdade de Jensen invertida para funções convexas).

        - **Item 3 — F:** O equivalente de certeza satisfaz \(U(EC) = E[U]\), ou seja, \(EC^3 = 32\). Portanto, \(EC = \sqrt[3]{32} = 2\sqrt[3]{4} \approx 3{,}17\), não 2,5.

        - **Item 4 — F:** \(A(w) = -u''(w)/u'(w) = -6w/(3w^2) = -2/w\). O coeficiente é negativo (confirmando propensão ao risco) e depende de \(w\) — portanto, não é constante.

??? question "ANPEC 2020 — Questão 11"
    Com relação à teoria de decisão sob incerteza, julgue os itens abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Suponha que um indivíduo tem utilidade Von Neumann-Morgenstern \(U(W) = \ln(W+1)\). Então sua medida relativa de aversão ao risco de Pratt \(R(W)\) satisfaz \(\lim_{W \to \infty} R(W) = 1\). |
    | 1    | Considere um indivíduo avesso ao risco, com utilidade Von Neumann-Morgenstern e que investe em um ativo arriscado. Se o rendimento do ativo arriscado é taxado, então o consumidor tem um incentivo para investir menos nesse ativo. |
    | 2    | Suponha que o \(\beta\) de um ativo é igual a 1,25, que o retorno de mercado é de 10,5% e que o retorno do ativo sem risco é de 4,5%. O valor esperado do ativo é de \$56. Então, de acordo com o Modelo CAPM, o preço que esse ativo deveria ser vendido hoje é de \$50. |
    | 3    | Considere o Modelo Média-Variância e um indivíduo avesso ao risco. Suponha que o retorno de mercado é de 11%, que o retorno do ativo sem risco é de 5% e que a variância do ativo arriscado é de 25%. Então o preço do risco é \(p = 0{,}24\). |
    | 4    | Suponha que um indivíduo tem utilidade Von Neumann-Morgenstern e é neutro ao risco. Se sua riqueza é aleatória, então a utilidade esperada da riqueza é maior que a utilidade da riqueza esperada. |

    ??? success "Gabarito"
        **Respostas: 10110**

        **Justificativa por item:**

        - **Item 0 — V:** Para \(U(W) = \ln(W+1)\): \(U'(W) = 1/(W+1)\), \(U''(W) = -1/(W+1)^2\). A medida relativa de aversão ao risco é \(R(W) = -W \cdot U''(W)/U'(W) = W/(W+1)\). Calculando o limite: \(\lim_{W \to \infty} W/(W+1) = 1\). Correto.

        - **Item 1 — F:** Pelo resultado clássico de Domar-Musgrave, um imposto proporcional sobre o retorno do ativo arriscado (com compensação simétrica de perdas) faz o governo "compartilhar" o risco com o investidor. O investidor pode restaurar sua exposição original ao risco aumentando a posição no ativo arriscado. O efeito líquido depende das propriedades da função de utilidade (DARA/IARA), mas a afirmação de que *sempre* há incentivo para investir menos é incorreta.

        - **Item 2 — V:** Pelo CAPM, o retorno esperado do ativo é \(E[r] = r_f + \beta(E[r_m] - r_f) = 4{,}5\% + 1{,}25 \times (10{,}5\% - 4{,}5\%) = 4{,}5\% + 7{,}5\% = 12\%\). Se o valor esperado do ativo é \$56, o preço hoje deve ser \(P_0 = 56/1{,}12 = \$50\). Correto.

        - **Item 3 — V:** No modelo média-variância, o preço do risco é definido como \(p = (E[r_m] - r_f)/\sigma^2 = (11\% - 5\%)/25\% = 0{,}06/0{,}25 = 0{,}24\). Correto.

        - **Item 4 — F:** Um indivíduo neutro ao risco possui função de utilidade linear. Pela linearidade, \(E[U(W)] = U(E[W])\) — a utilidade esperada é *igual* à utilidade da riqueza esperada, não maior.

??? question "ANPEC 2025 — Questão 02"
    Considere uma aposta na qual, pagando \$15, você pode ganhar \$5 se sair um número ímpar ou \$20 se sair um número par, no lançamento de um dado não viciado. Julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | O valor esperado do retorno da aposta é \$15. |
    | 1    | Trata-se de uma aposta justa. |
    | 2    | Uma aposta justa não possui risco. |
    | 3    | Se o custo da aposta fosse de \$12,50, um indivíduo com aversão ao risco aceitaria jogar. |
    | 4    | Uma função de utilidade estritamente côncava é associada a um comportamento de aversão ao risco. |

    ??? success "Gabarito"
        **Respostas: 00001**

        **Justificativa por item:**

        - **Item 0 — F:** Os resultados da aposta são \$5 (se ímpar, \(p = 1/2\)) e \$20 (se par, \(p = 1/2\)). O valor esperado do retorno bruto é \(E[R] = 0{,}5 \times 5 + 0{,}5 \times 20 = 12{,}50\), não \$15.

        - **Item 1 — F:** Uma aposta justa tem retorno esperado líquido igual a zero. Aqui, o retorno líquido esperado é \(12{,}50 - 15 = -2{,}50\). Como \(E[\text{líquido}] < 0\), a aposta é desfavorável ao apostador.

        - **Item 2 — F:** Uma aposta justa tem valor esperado zero, mas ainda apresenta variância positiva — logo, possui risco. "Justo" refere-se ao valor esperado, não à ausência de incerteza.

        - **Item 3 — F:** Se o custo fosse \$12,50, teríamos \(E[\text{líquido}] = 12{,}50 - 12{,}50 = 0\): aposta justa. Um indivíduo avesso ao risco **rejeita** apostas justas (ou, no máximo, é indiferente), pois \(u(E[W]) > E[u(W)]\).

        - **Item 4 — V:** Concavidade estrita de \(u\) (\(u'' < 0\)) implica, pela desigualdade de Jensen, que \(u(E[X]) > E[u(X)]\) para toda variável aleatória não degenerada — definição de aversão ao risco.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Chiappori, Pierre-André; Salanié, Bernard. (2000). [Testing for Asymmetric Information in Insurance Markets](https://doi.org/10.1086/262111). *Journal of Political Economy*, 108(1), 56–78. DOI: [10.1086/262111](https://doi.org/10.1086/262111)"
    **Pergunta central:** A teoria prevê que, sob informação assimétrica, indivíduos de maior risco escolhem contratos com mais cobertura (seleção adversa) e/ou reduzem seus cuidados após a contratação (risco moral). Mas essas previsões se verificam empiricamente? Existe, de fato, uma correlação positiva entre cobertura e sinistralidade nos dados reais de seguros?

    **Método:** Chiappori e Salanié propuseram um teste empírico geral: se há informação assimétrica (seja por seleção adversa, risco moral ou ambos), deve existir uma correlação positiva condicional entre a cobertura contratada e a ocorrência de sinistros, mesmo após controlar todas as variáveis observáveis usadas pelas seguradoras na precificação. Utilizaram dados detalhados do mercado francês de seguros de automóvel, com informações sobre contratos, prêmios, características dos condutores e histórico de acidentes.

    **Resultado principal:** Surpreendentemente, os autores **não encontraram** evidência estatisticamente significativa de correlação positiva entre cobertura e sinistralidade para motoristas jovens e inexperientes — o grupo mais sujeito a assimetria informacional. Esse resultado sugere que as seguradoras são eficazes em usar variáveis observáveis (idade, bônus/malus, localização) para classificar os riscos, reduzindo o escopo residual da informação assimétrica.

    **Por que isso importa:** O artigo inaugurou uma ampla literatura empírica de testes de informação assimétrica em mercados de seguros, saúde, crédito e trabalho. Para o Brasil, a metodologia é diretamente aplicável ao mercado de seguros de automóvel (Box Brasil acima) e ao sistema de saúde suplementar, onde o desenho de contratos com franquias e copagamentos busca mitigar tanto seleção adversa quanto risco moral.

    **Relevância para o capítulo:** O artigo testa empiricamente as previsões teóricas da Seção 7.8. A correlação positiva entre cobertura e risco é uma implicação testável da teoria de informação assimétrica. A ausência dessa correlação em alguns mercados sugere que os mecanismos de triagem (*screening*) e sinalização funcionam razoavelmente bem — ou que as fontes de heterogeneidade são mais complexas do que o modelo básico prevê.

??? pesquisa "Mehra, Rajnish; Prescott, Edward C. (1985). [The Equity Premium: A Puzzle](https://doi.org/10.1016/0304-3932(85)90061-3). *Journal of Monetary Economics*, 15(2), 145–161. DOI: [10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3)"
    **Pergunta central:** Historicamente, ações renderam cerca de 6 pontos percentuais a mais por ano do que títulos públicos nos Estados Unidos. Essa diferença — o *equity premium* — pode ser racionalizada pelo modelo padrão de utilidade esperada com aversão ao risco (CRRA)?

    **Método:** Mehra e Prescott calibraram um modelo de equilíbrio geral com agente representativo, utilidade CRRA e consumo estocástico baseado em dados macroeconômicos americanos de 1889 a 1978. Calcularam qual coeficiente de aversão relativa ao risco \(\gamma\) seria necessário para gerar o prêmio de risco observado nos dados.

    **Resultado principal:** Para reproduzir o *equity premium* observado de aproximadamente 6%, o modelo exigia um coeficiente \(\gamma\) superior a 30 — muito acima das estimativas empíricas plausíveis (tipicamente entre 1 e 10). Com valores razoáveis de \(\gamma\), o modelo previa um prêmio de risco de no máximo 0,35%. Esse hiato entre teoria e dados ficou conhecido como o **enigma do prêmio de risco** (*equity premium puzzle*).

    **Por que isso importa:** O puzzle motivou décadas de pesquisa em finanças e macroeconomia, incluindo modelos com formação de hábito, perdas mais salientes que ganhos (aversão à perda), custos de participação no mercado acionário e mercados incompletos. No Brasil, estudos usando dados do Ibovespa e da taxa Selic encontram um *equity premium* ainda mais elevado do que nos EUA, tornando o enigma ainda mais agudo no contexto brasileiro.

    **Relevância para o capítulo:** O artigo demonstra que as medidas de Arrow-Pratt (Seção 7.4) — em particular o coeficiente de aversão relativa constante \(\gamma\) da utilidade CRRA — têm implicações quantitativas testáveis para os preços dos ativos financeiros. O *puzzle* revela os limites do modelo VNM padrão (Seção 7.2) e motiva extensões teóricas que relaxam os axiomas clássicos.

## 📚 Referências do Capítulo

- Akerlof, George A. 1970. "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *The Quarterly Journal of Economics* 84 (3): 488–500. [DOI](https://doi.org/10.2307/1879431)
- Arrow, Kenneth J. 1964. "The Role of Securities in the Optimal Allocation of Risk-Bearing." *The Review of Economic Studies* 31 (2): 91–96. [DOI](https://doi.org/10.2307/2296612)
- Chiappori, Pierre-André, e Bernard Salanié. 2000. "Testing for Asymmetric Information in Insurance Markets." *Journal of Political Economy* 108 (1): 56–78. [DOI](https://doi.org/10.1086/317671)
- Friedman, Milton, e Leonard J. Savage. 1948. "The Utility Analysis of Choices Involving Risk." *Journal of Political Economy* 56 (4): 279–304. [DOI](https://doi.org/10.1086/256692)
- Kahneman, Daniel, e Amos Tversky. 1979. "Prospect Theory: An Analysis of Decision under Risk." *Econometrica* 47 (2): 263–292. [DOI](https://doi.org/10.2307/1914185)
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulo 6.
- Mehra, Rajnish, e Edward C. Prescott. 1985. "The Equity Premium: A Puzzle." *Journal of Monetary Economics* 15 (2): 145–161. [DOI](https://doi.org/10.1016/0304-3932(85)90061-3)
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 7.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. Boston: Pearson. Capítulo 17.
- Pratt, John W. 1964. "Risk Aversion in the Small and in the Large." *Econometrica* 32 (1–2): 122–136. [DOI](https://doi.org/10.2307/1913738)
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulo 12.
- Von Neumann, John, e Oskar Morgenstern. 1944. [*Theory of Games and Economic Behavior*](https://books.google.com/books?id=jCN5aNJ-n-0C). Princeton: Princeton University Press.
