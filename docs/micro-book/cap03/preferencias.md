# 3.6–3.7 Formas Funcionais e Transformações Monotônicas

## 3.6 O Cardápio das Preferências: Cobb-Douglas, CES e Companhia

Até aqui, a função de utilidade era abstrata — uma \(u\) genérica sem rosto. Agora é hora de conhecer as protagonistas pelo nome. Cada família de funções de utilidade captura um tipo diferente de consumidor: o que substitui facilmente (Cobb-Douglas), o que não substitui de jeito nenhum (Leontief), o que trata os bens como idênticos (substitutos perfeitos), e o camaleão que se adapta a qualquer grau de substituição (CES). Conhecer essas "personagens" é essencial porque elas reaparecerão em *todo* capítulo daqui para frente — da derivação de demandas à análise de comércio internacional.

### 3.6.1 Cobb-Douglas

A função Cobb-Douglas é, sem dúvida, a forma funcional mais utilizada em microeconomia — tanto pela sua notável tratabilidade analítica quanto por suas propriedades econômicas intuitivas e empiricamente relevantes. Proposta originalmente por Charles Cobb e Paul Douglas (1928) no contexto da teoria da produção, ela rapidamente migrou para a teoria do consumidor, onde se tornou o "cavalo de batalha" de inúmeros modelos teóricos e aplicados. A função é definida como:

\[
u(x_1, x_2) = x_1^a \, x_2^b, \quad a, b > 0. \label{eq:3.6.5} \tag{3.6.5}
\]

Geometricamente, as curvas de indiferença da Cobb-Douglas são hipérboles convexas, estritamente decrescentes e assintóticas aos eixos coordenados. A assíntota implica que o consumidor nunca deseja quantidades nulas de qualquer bem: por maior que seja a quantidade de \(x_1\), uma pequena quantidade positiva de \(x_2\) sempre é necessária para manter a utilidade positiva. A TMS é:

\[
\text{TMS}_{12} = \frac{a \, x_2}{b \, x_1}. \label{eq:3.6.6} \tag{3.6.6}
\]

Observe que a TMS depende da razão \(x_2/x_1\): quando o consumidor tem muito do bem 2 e pouco do bem 1, a TMS é alta — ele valoriza muito uma unidade adicional do bem 1. À medida que adquire mais do bem 1, a TMS cai, refletindo a TMS decrescente discutida na Seção 3.4.

A função Cobb-Douglas é extremamente conveniente por gerar funções de demanda com forma fechada, o que simplifica consideravelmente os cálculos. A participação de cada bem na despesa total é constante: \(\frac{a}{a+b}\) para o bem 1 e \(\frac{b}{a+b}\) para o bem 2 — uma propriedade notável que independe tanto dos preços quanto da renda. A elasticidade de substituição é \(\sigma = 1\), indicando que, quando o preço relativo de um bem sobe 1%, a razão entre as quantidades consumidas se ajusta exatamente 1% na direção oposta.

### 3.6.2 Substitutos Perfeitos

No extremo oposto da substituibilidade, considere bens que o consumidor troca livremente entre si a uma taxa fixa — como, para muitos consumidores, manteiga e margarina, ou gasolina comum e aditivada. Para esse consumidor, o que importa é apenas a quantidade total de "gordura para cozinhar" ou de "combustível", não a composição específica da cesta. Nesse caso, a função de utilidade assume a forma linear:

\[
u(x_1, x_2) = a x_1 + b x_2, \quad a, b > 0. \label{eq:3.6.7} \tag{3.6.7}
\]

As curvas de indiferença são **linhas retas** com inclinação \(-a/b\), paralelas entre si no espaço \((x_1, x_2)\). Curvas de indiferença mais altas (maiores níveis de utilidade) estão mais afastadas da origem. A TMS é constante em todos os pontos:

\[
\text{TMS}_{12} = \frac{a}{b}. \label{eq:3.6.8} \tag{3.6.8}
\]

O consumidor troca os bens a uma taxa fixa, independente da composição da cesta — não há TMS decrescente, pois a disposição a substituir nunca se altera. A elasticidade de substituição é \(\sigma = \infty\), refletindo a perfeita substituibilidade.

!!! warning "Substitutos perfeitos geram soluções de canto"
    Diferentemente das demais formas funcionais, a solução ótima com substitutos perfeitos tipicamente **não é interior**: o consumidor gasta toda a renda no bem que oferece maior "valor por unidade monetária" — isto é, maior razão \(a_i/p_i\). Formalmente:

    - Se \(a/p_1 > b/p_2\): \(x_1^* = m/p_1\), \(x_2^* = 0\) — especialização total no bem 1.
    - Se \(a/p_1 < b/p_2\): \(x_1^* = 0\), \(x_2^* = m/p_2\) — especialização total no bem 2.
    - Se \(a/p_1 = b/p_2\): qualquer cesta na reta orçamentária é ótima (caso-faca).

    Na prática, isso significa que a condição de tangência \(\text{TMS} = p_1/p_2\) não se aplica: como a TMS é constante e a reta orçamentária também tem inclinação constante, as duas nunca se "encontram" em um ponto interior (a menos do caso-faca). Essa é uma exceção importante à regra geral de otimização do Capítulo 4.

### 3.6.3 Complementos Perfeitos

Se os substitutos perfeitos representam a máxima disposição a trocar entre bens, os complementos perfeitos ocupam o extremo oposto do espectro de substituibilidade: os bens só têm valor quando consumidos juntos, em proporções fixas.[^shrubbery]

[^shrubbery]: Em *Monty Python and the Holy Grail*, os Cavaleiros Que Dizem Ni exigem um arbusto (*shrubbery*) — e nenhum substituto é aceito. "We want... a shrubbery!" A demanda é perfeitamente inelástica ao preço: não importa quanto custe, nada além de um arbusto satisfaz a restrição. É o complemento perfeito levado ao absurdo: sem o arbusto, a utilidade é zero, independente de quanto mais se tenha de qualquer outra coisa. Pense em um pé esquerdo e um pé direito de sapato — um sem o outro é inútil. Ter dez pés esquerdos e apenas um pé direito não é melhor do que ter um par, pois os pés extras não podem ser aproveitados. A função de utilidade que captura essa rigidez é:

\[
u(x_1, x_2) = \min\{a x_1, \, b x_2\}, \quad a, b > 0. \label{eq:3.6.9} \tag{3.6.9}
\]

As curvas de indiferença têm formato de **L** (ângulo reto), com vértice na reta \(a x_1 = b x_2\), que define a proporção ótima de consumo. A TMS é indefinida no vértice (onde a curva faz uma "quina"), zero nos segmentos horizontais (o consumidor não valoriza mais do bem 1 sem mais do bem 2) e infinita nos segmentos verticais (o consumidor não valoriza mais do bem 2 sem mais do bem 1). A elasticidade de substituição é \(\sigma = 0\), indicando que nenhum ajuste de preços relativos pode induzir o consumidor a alterar a proporção entre os bens. Exemplos clássicos incluem sapato esquerdo e sapato direito, CPU e monitor, e, em contextos mais modernos, cartucho de impressora e a impressora correspondente.

### 3.6.4 CES (Elasticidade de Substituição Constante)

Os três casos anteriores — Cobb-Douglas $\eqref{eq:3.6.5}$, substitutos perfeitos $\eqref{eq:3.6.7}$ e complementos perfeitos $\eqref{eq:3.6.9}$ — podem parecer categorias isoladas e desconexas, mas na verdade são membros de uma mesma família: a função de utilidade com **Elasticidade de Substituição Constante** (CES, do inglês *Constant Elasticity of Substitution*). Introduzida por Arrow, Chenery, Minhas e Solow (1961) no contexto da teoria da produção, a CES permite capturar *qualquer* grau de substituibilidade entre os bens por meio de um único parâmetro \(\rho\), que governa a curvatura das curvas de indiferença. Ao variar \(\rho\) continuamente, transitamos suavemente dos complementos perfeitos aos substitutos perfeitos, passando pela Cobb-Douglas como caso intermediário — o que torna a CES uma ferramenta extremamente versátil tanto na teoria quanto na estimação empírica.

\[
u(x_1, x_2) = \left(x_1^{\rho} + x_2^{\rho}\right)^{1/\rho}, \quad \rho \leq 1, \; \rho \neq 0. \label{eq:3.6.10} \tag{3.6.10}
\]

A elasticidade de substituição — que mede a sensibilidade da razão \(x_1/x_2\) a variações no preço relativo — é determinada diretamente pelo parâmetro \(\rho\):

\[
\sigma = \frac{1}{1 - \rho}. \label{eq:3.6.11} \tag{3.6.11}
\]

Essa relação é a chave para entender a versatilidade da CES: ao variar um único parâmetro, percorremos todo o espectro de substituibilidade. A função CES engloba como casos especiais as três formas funcionais anteriores:

- \(\rho \to 0\): Cobb-Douglas (\(\sigma = 1\)). A passagem ao limite requer a regra de L'Hôpital aplicada ao logaritmo da função.
- \(\rho = 1\): Substitutos perfeitos (\(\sigma = \infty\)). A utilidade se reduz a uma combinação linear dos bens.
- \(\rho \to -\infty\): Complementos perfeitos (\(\sigma = 0\)). A utilidade converge para o mínimo das quantidades ponderadas.

Para valores intermediários de \(\rho\), a CES produz curvas de indiferença com curvatura intermediária — nem tão "redondas" quanto as da Cobb-Douglas, nem tão "angulosas" quanto as dos complementos perfeitos. Isso a torna ideal para estimação empírica, pois os dados podem "escolher" o grau de substituibilidade que melhor se ajusta ao comportamento observado.

A TMS para a CES assume uma forma compacta e elegante:

\[
\text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho - 1}. \label{eq:3.6.12} \tag{3.6.12}
\]

Note que, quando \(\rho < 1\) (o caso economicamente relevante), o expoente \(\rho - 1\) é negativo, de modo que a TMS é decrescente em \(x_1/x_2\) — confirmando a convexidade das curvas de indiferença.

<iframe src="/micro-book/graficos/cap03/ces-continua.html" title="Figura 3.3 — CES Contínua: de Leontief a Substitutos Perfeitos" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.3 — CES Contínua: de Leontief a Substitutos Perfeitos.** Arraste o slider de \(\rho\) para observar a transformação contínua das curvas de indiferença: de ângulos retos (\(\rho \to -\infty\), complementos perfeitos) a hipérboles suaves (\(\rho = 0\), Cobb-Douglas) a retas (\(\rho \to 1\), substitutos perfeitos). A elasticidade de substituição \(\sigma = 1/(1-\rho)\) é exibida em tempo real.
</div>

!!! example "Exemplo numérico: CES com diferentes valores de ρ"
    Considere o ponto \((x_1, x_2) = (4, 8)\). A TMS da CES é \(\text{TMS}_{12} = (x_1/x_2)^{\rho-1} = (4/8)^{\rho-1} = (0{,}5)^{\rho-1}\). Veja como ela varia com \(\rho\):

    | \(\rho\) | \(\sigma = \frac{1}{1-\rho}\) | \(\text{TMS}_{12}(4,8)\) | Interpretação |
    |---|---|---|---|
    | \(0{,}5\) | \(2\) | \((0{,}5)^{-0,5} = 1{,}41\) | Substituição fácil: troca 1,41 unidades de \(x_2\) por 1 de \(x_1\) |
    | \(0\) (Cobb-Douglas) | \(1\) | \((0{,}5)^{-1} = 2\) | Substituição moderada |
    | \(-1\) | \(0{,}5\) | \((0{,}5)^{-2} = 4\) | Substituição difícil: exige 4 unidades de \(x_2\) por 1 de \(x_1\) |
    | \(-5\) | \(0{,}17\) | \((0{,}5)^{-6} = 64\) | Quase complementares: compensação altíssima |

    À medida que \(\rho\) diminui (e \(\sigma\) cai), a TMS cresce explosivamente para cestas desequilibradas — o consumidor resiste cada vez mais a trocar o bem escasso. Para \(\rho \to -\infty\), a TMS diverge para infinito fora do vértice, recuperando os complementos perfeitos.

!!! box-brasil "Box Brasil 3.1 — Etanol versus gasolina: preferências CES reveladas nas bombas brasileiras"
    **Contexto:** O Brasil oferece um laboratório natural único para observar a elasticidade de substituição entre bens de consumo. Desde a introdução dos veículos flex-fuel em 2003, motoristas brasileiros escolhem, a cada abastecimento, entre etanol hidratado e gasolina comum — bens que são substitutos próximos, mas não perfeitos (o etanol rende aproximadamente 70% da quilometragem por litro em relação à gasolina). A regra prática difundida entre consumidores — "abasteça etanol se o preço for inferior a 70% do preço da gasolina" — é, na essência, uma aplicação intuitiva da condição de otimização com preferências CES.

    **Dados:** Segundo a ANP (Agência Nacional do Petróleo), a participação do etanol no consumo total de combustíveis leves oscila fortemente com o preço relativo. Em São Paulo, onde o etanol é mais barato (média de 65–70% do preço da gasolina em 2023), a participação do etanol atingiu cerca de 45% do volume total. No Rio de Janeiro e nos estados do Sul, onde a razão de preços frequentemente supera 75%, a participação do etanol caiu para 15–20%. Estimativas econométricas de Santos (2013, *Energy Economics*) e Salvo e Huse (2013, *Journal of Environmental Economics and Management*) encontraram elasticidades de substituição entre etanol e gasolina na faixa de \(\sigma \approx 3\) a \(5\) para proprietários de veículos flex — valores que situam esses combustíveis na região intermediária do espectro CES, entre a Cobb-Douglas (\(\sigma = 1\)) e os substitutos perfeitos (\(\sigma = \infty\)).

    **Análise:** O caso brasileiro do etanol ilustra com precisão como o parâmetro \(\rho\) da função CES se manifesta em decisões reais. Se etanol e gasolina fossem substitutos perfeitos (\(\sigma \to \infty\)), observaríamos soluções de canto puras: 100% etanol ou 100% gasolina em cada estado, sem transição gradual. O fato de a participação variar *suavemente* com o preço relativo — em vez de saltar descontinuamente — revela que \(\sigma\) é alto, mas finito: diferenças na autonomia, na disponibilidade de postos, na percepção de desempenho do motor e em hábitos de consumo impedem a substituição perfeita. A curva de indiferença entre etanol e gasolina é convexa, mas relativamente "achatada", refletindo alta substituibilidade com fricções.

    **Para refletir:** Se o governo aumentar a tributação sobre a gasolina em 10%, que mudança percentual na razão etanol/gasolina consumida você esperaria observar com \(\sigma = 4\)? Compare com o que ocorreria se \(\sigma = 1\) (Cobb-Douglas) ou \(\sigma = \infty\) (substitutos perfeitos).

### 3.6.5 Quase-linear

As formas funcionais anteriores compartilham uma propriedade importante: são todas homotéticas (como veremos na Seção 3.6.6), o que significa que a proporção entre os bens consumidos não se altera quando a renda varia — o consumidor simplesmente "escala" sua cesta ótima. Na prática, porém, existem situações em que a demanda por um bem específico é essencialmente insensível à renda: por exemplo, o consumo de sal de cozinha dificilmente se altera quando uma família recebe um aumento salarial. Nesses casos, todo o acréscimo de renda é direcionado aos demais bens. A função de utilidade quase-linear captura exatamente essa assimetria:

\[
u(x_1, x_2) = v(x_1) + x_2, \quad v' > 0, \; v'' < 0. \label{eq:3.6.13} \tag{3.6.13}
\]

A TMS depende apenas de \(x_1\) — e não de \(x_2\), o que é uma peculiaridade notável:

\[
\text{TMS}_{12} = v'(x_1). \label{eq:3.6.14} \tag{3.6.14}
\]

Como \(v'' < 0\), a TMS é decrescente em \(x_1\): à medida que o consumidor obtém mais do bem 1, sua disposição a trocar o bem 2 por unidades adicionais do bem 1 diminui — preservando a convexidade das curvas de indiferença.

!!! note "TMS independente de x₂: a assinatura da quase-linearidade"
    A propriedade mais distintiva da utilidade quase-linear é que a TMS depende *exclusivamente* de \(x_1\) — a quantidade do bem 2 é irrelevante para a taxa de troca subjetiva do consumidor. Em todas as demais formas funcionais deste capítulo (Cobb-Douglas, CES, complementos perfeitos), a TMS depende da composição *completa* da cesta. Na quase-linear, o consumidor que possui 10 ou 1.000 unidades de \(x_2\) atribui exatamente o mesmo valor marginal relativo ao bem 1, desde que \(x_1\) seja o mesmo. É essa independência que elimina o efeito renda sobre \(x_1\) e gera curvas de indiferença que são translações verticais.

As curvas de indiferença são **translações verticais** umas das outras: possuem a mesma forma, apenas deslocadas paralelamente ao eixo \(x_2\). Essa propriedade geométrica tem uma implicação econômica direta e poderosa: não há efeito renda sobre o bem 1 (para soluções interiores), pois a demanda por \(x_1\) depende apenas dos preços, não da renda. Todo acréscimo de renda é absorvido pelo bem 2, que funciona como um "numerário" — um bem residual que absorve as variações de poder aquisitivo. A utilidade quase-linear é particularmente útil em análises de equilíbrio parcial e em modelos de organização industrial, onde se deseja isolar o mercado de um bem específico sem que efeitos renda contaminem a análise.

!!! theorem "Proposição — Propriedades da utilidade quase-linear"
    Seja \(u(x_1, x_2) = v(x_1) + x_2\) com \(v' > 0\) e \(v'' < 0\). Então, para soluções interiores:

    1. **Efeito renda nulo sobre \(x_1\)**: a demanda marshalliana por \(x_1\) depende apenas de \(p_1/p_2\), não da renda \(I\).
    2. **Translação vertical**: fixado \(x_1\), a curva de indiferença de nível \(\bar{u}\) é \(x_2 = \bar{u} - v(x_1)\). Ao passar para o nível \(\bar{u}' > \bar{u}\), a curva se desloca verticalmente em \(\bar{u}' - \bar{u}\).
    3. **Medidas de bem-estar coincidem**: variação compensatória, variação equivalente e variação do excedente do consumidor são iguais — \(VC = VE = \Delta EC\) — porque a demanda hicksiana por \(x_1\) independe do nível de utilidade (ver Cap. 5, §5.8.4).
    4. **Função dispêndio**: \(E(\mathbf{p}, \bar{u}) = c(p_1, p_2) + p_2 \bar{u}\), onde \(c(\cdot)\) é uma função apenas dos preços. A função dispêndio é **linear** em \(\bar{u}\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Na utilidade quase-linear, o bem 2 funciona como "dinheiro" — todo aumento de renda vai para \(x_2\), sem afetar a escolha de \(x_1\).

    **Pense assim:** Imagine que você decide quanto café tomar por dia baseado apenas no preço do café, e todo o resto do seu orçamento vai para "outros gastos" (\(x_2\)). Se você ganha um aumento de salário, continua tomando a mesma quantidade de café — a renda extra vai toda para os outros gastos. Essa é a essência da quase-linearidade.

    **Por que isso importa:** Essa propriedade torna a utilidade quase-linear a preferida em modelos de organização industrial e análises de equilíbrio parcial: como \(VC = VE = \Delta EC\), a medida de bem-estar é única e não ambígua.

**Quase-linear vs. homotética.** É importante distinguir claramente a utilidade quase-linear das preferências homotéticas, pois ambas são amplamente utilizadas mas possuem implicações opostas sobre o efeito renda. A utilidade quase-linear **não** é homotética (exceto no caso trivial em que \(v\) é linear). Enquanto as preferências homotéticas geram curvas de indiferença que se expandem radialmente a partir da origem — mantendo constante a razão \(x_1/x_2\) ao longo do caminho de expansão da renda —, as curvas da utilidade quase-linear se deslocam por translação vertical: a razão \(x_1/x_2\) muda com a renda, pois todo o aumento vai para \(x_2\), violando a condição das funções homotéticas (ver §3.6.6).

### 3.6.6 Funções homotéticas

Após examinar a quase-linearidade — onde todo o efeito renda recai sobre um único bem —, é natural perguntar: existe uma classe de preferências em que a composição *relativa* da cesta permanece inalterada quando a renda varia? Ou seja, preferências tais que ricos e pobres, ao enfrentarem os mesmos preços, escolham as mesmas *proporções* entre os bens, diferindo apenas na *escala* de consumo? A resposta são as preferências **homotéticas**, que ocupam um papel central tanto na teoria do consumidor quanto nos modelos de equilíbrio geral e macroeconômico. A homoteticidade é a propriedade que permite agregar consumidores heterogêneos em um "consumidor representativo" — uma simplificação poderosa, embora nem sempre realista, como discutiremos adiante.

!!! definition "Função homotética"
    Uma função de utilidade \(u(x_1, x_2)\) é **homotética** se pode ser escrita como uma transformação monotônica crescente de uma função homogênea de grau 1:

    \[
    u(x_1, x_2) = g\!\big(h(x_1, x_2)\big), \quad g' > 0, \quad h(\lambda x_1, \lambda x_2) = \lambda \, h(x_1, x_2) \;\;\forall\, \lambda > 0.
    \]

**Propriedade fundamental.** Para preferências homotéticas, a TMS depende apenas da **razão** \(x_1/x_2\), e não das quantidades absolutas:

\[
\text{TMS}_{12}(x_1, x_2) = \phi\!\left(\frac{x_1}{x_2}\right). \label{eq:3.6.15} \tag{3.6.15}
\]

A implicação geométrica é elegante: ao longo de qualquer raio que parte da origem (\(x_2 = k \cdot x_1\)), a TMS é constante — todas as curvas de indiferença cruzam esse raio com a mesma inclinação. Isso significa que as curvas de indiferença são **expansões radiais** umas das outras: escalar uma curva de indiferença a partir da origem produz outra curva de indiferença. Visualmente, o mapa de indiferença possui uma simetria radial que contrasta com o deslocamento puramente vertical da utilidade quase-linear. Essa simetria é precisamente o que garante que o caminho de expansão da renda — o conjunto de cestas ótimas para diferentes níveis de renda, a preços fixos — seja uma reta que passa pela origem.

!!! theorem "Proposição — Propriedades das preferências homotéticas"
    Se \(u\) é homotética, então:

    1. **Caminho de expansão da renda linear**: a reta que passa pela origem e pela cesta ótima contém todas as cestas ótimas para diferentes níveis de renda (preços fixos). A razão \(x_1^*/x_2^*\) é constante em \(I\).
    2. **Curvas de Engel lineares**: \(x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I\), onde \(\alpha_i\) depende apenas dos preços.
    3. **Elasticidade-renda unitária**: \(\varepsilon_{x_i, I} = 1\) para todo bem \(i\). Todos os bens são normais e nem de luxo nem de necessidade.
    4. **Participação constante na despesa**: \(p_i x_i^* / I\) é constante para variações da renda.
    5. **Função dispêndio separável**: \(E(\mathbf{p}, \bar{u}) = b(\mathbf{p}) \cdot e(\bar{u})\), onde \(b\) depende apenas dos preços e \(e\) apenas da utilidade.

**Exemplos.** A maioria das funções de utilidade estudadas neste capítulo é homotética — o que não é coincidência, pois a homoteticidade simplifica enormemente a análise. Vale, portanto, classificar cada uma delas:

- **Cobb-Douglas** \(u = x_1^a x_2^b\): é homotética, pois é homogênea de grau \(a+b\). A razão ótima é \(x_1^*/x_2^* = (a p_2)/(b p_1)\), constante em \(I\) — a participação de cada bem na despesa total não se altera com a renda.
- **CES** \(u = (x_1^\rho + x_2^\rho)^{1/\rho}\): homotética (homogênea de grau 1). A razão ótima depende apenas de \(p_1/p_2\) e \(\rho\), nunca da renda.
- **Substitutos perfeitos** e **complementos perfeitos**: ambos são homotéticos (homogêneos de grau 1). No caso dos substitutos, a solução de canto faz com que toda a renda vá para um único bem, mas a *proporção* não depende de \(I\).
- **Quase-linear** \(u = v(x_1) + x_2\): **não** é homotética. A TMS depende de \(x_1\) isoladamente, não da razão \(x_1/x_2\). A razão ótima \(x_1^*/x_2^*\) varia com a renda, pois todo o acréscimo de renda é absorvido por \(x_2\).

!!! box-brasil "Box Brasil 3.2 — Lei de Engel e a POF: evidência contra a homoteticidade"
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

!!! idea "Intuição Econômica"
    **Em uma frase:** Com preferências homotéticas, ricos e pobres gastam a mesma *proporção* da renda em cada bem — só a escala muda.

    **Pense assim:** Uma família homotética que gasta 30% da renda com alimentação e 70% com outros bens manterá essa proporção se sua renda dobrar, triplicar ou cair pela metade. O caminho de expansão da renda é uma reta que sai da origem — escalar a cesta ótima é como "dar zoom" na mesma cesta.

    **Por que isso importa:** Essa propriedade permite agregar consumidores com rendas diferentes em um "consumidor representativo" — base de grande parte dos modelos macroeconômicos. Contudo, os dados da POF (ver Box Brasil, §3.6.6) mostram que preferências reais raramente são homotéticas: a participação da alimentação cai com a renda (Lei de Engel), evidenciando preferências não homotéticas na prática.

A [Tabela 3.1](#tabela-3-1) a seguir sintetiza as principais formas funcionais de utilidade discutidas neste capítulo, reunindo em uma única referência a expressão da função, a TMS, o formato das curvas de indiferença e a elasticidade de substituição de cada caso. Recomenda-se consultá-la sempre que surgir dúvida sobre as propriedades de uma forma funcional específica.

<a id="tabela-3-1"></a>

| Tipo | Função \(u(x_1, x_2)\) | TMS\(_{12}\) | Curvas de indiferença | Elasticidade de substituição (\(\sigma\)) |
|---|---|---|---|---|
| Cobb-Douglas | \(x_1^a x_2^b\) | \(\dfrac{a\, x_2}{b\, x_1}\) | Hipérboles convexas | \(1\) |
| Substitutos perfeitos | \(ax_1 + bx_2\) | \(\dfrac{a}{b}\) (constante) | Retas paralelas | \(\infty\) |
| Complementos perfeitos | \(\min\{ax_1, bx_2\}\) | Indefinida no vértice | Ângulo reto (L) | \(0\) |
| CES | \((x_1^{\rho}+x_2^{\rho})^{1/\rho}\) | \(\left(\frac{x_1}{x_2}\right)^{\rho-1}\) | Convexa (curvatura varia com \(\rho\)) | \(\dfrac{1}{1-\rho}\) |
| Quase-linear | \(v(x_1) + x_2\) | \(v'(x_1)\) | Translações verticais | Variável |
| Homotética (geral) | \(g(h(x_1,x_2))\), \(h\) homogênea grau 1 | \(\phi(x_1/x_2)\) | Expansões radiais | Depende de \(h\) |

<div class="caption-obj" markdown>
**Tabela 3.1 — Comparativa das funções de utilidade.**
</div>

!!! tip "Como escolher a forma funcional certa?"
    Diante de tantas opções, como decidir qual função de utilidade usar em um modelo ou exercício? A escolha depende do objetivo da análise:

    - **Cobb-Douglas**: primeira escolha para modelos teóricos que exigem soluções analíticas em forma fechada. Ideal para exercícios e demonstrações pedagógicas. Limitação: elasticidade de substituição fixa em 1 e participação constante na despesa.
    - **CES**: preferida em trabalhos empíricos e modelos de comércio internacional (Armington), pois permite estimar a elasticidade de substituição \(\sigma\) a partir dos dados. Também útil quando se deseja generalidade teórica sem perder tratabilidade.
    - **Substitutos perfeitos**: para mercados em que os bens são essencialmente intercambiáveis (commodities homogêneas, marcas genéricas). Gera soluções de canto — útil para ilustrar especialização.
    - **Complementos perfeitos (Leontief)**: para insumos que devem ser usados em proporções fixas. Aparece frequentemente na teoria da produção (Capítulo 10) e em modelos de equilíbrio geral computável.
    - **Quase-linear**: a escolha natural para análises de equilíbrio parcial e modelos de organização industrial, pois elimina efeitos renda e garante \(VC = VE = \Delta EC\). Ideal quando o foco é um mercado específico.

    **Regra prática:** comece com a forma mais simples que capture o fenômeno de interesse. Se a Cobb-Douglas for suficiente, não use a CES.

<iframe src="/micro-book/graficos/cap03/tipos-preferencias.html" title="Figura 3.4 — Comparação dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais)" class="graph-iframe" style="height:680px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.4 — Comparação dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais).**
</div>

<iframe src="/micro-book/graficos/cap03/funcoes-utilidade.html" title="Figura 3.5 — Superfície 3D da função de utilidade" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.5 — Superfície 3D da função de utilidade.** Rotacione e aplique zoom com o mouse. Use o menu para trocar entre Cobb-Douglas, substitutos perfeitos (plano), complementos perfeitos (superfície em cunha), CES e quase-linear. Ajuste os parâmetros nos sliders.
</div>

<iframe src="/micro-book/graficos/cap03/homotetica-vs-quaselinear.html" title="Figura 3.6 — Homotética vs quase-linear: compare a expansão da renda" class="graph-iframe" style="height:750px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.6 — Homotética vs quase-linear: compare a expansão da renda.** À esquerda (Cobb-Douglas), o caminho de expansão é um raio da origem — a razão \(x_1/x_2\) é constante. À direita (quase-linear), o caminho é vertical — \(x_1\) não muda com a renda. Ajuste \(I\) e \(p_1/p_2\) nos sliders.
</div>

??? exercicio-resolvido "Exercício Resolvido 3.2"
    **Enunciado:** Considere a função CES \(u(x_1, x_2) = (x_1^{\rho} + x_2^{\rho})^{1/\rho}\) com \(\rho = -1\). (a) Calcule a elasticidade de substituição. (b) Derive a TMS. (c) Compare as curvas de indiferença com os casos Cobb-Douglas e complementos perfeitos.

    **Dados:** \(\rho = -1\), logo \(u(x_1, x_2) = (x_1^{-1} + x_2^{-1})^{-1}\).

    **Resolução:**

    **Passo 1 — Elasticidade de substituição**

    \[
    \sigma = \frac{1}{1-\rho} = \frac{1}{1-(-1)} = \frac{1}{2}
    \]

    A elasticidade de substituição é \(1/2\), um valor entre 0 (complementos perfeitos) e 1 (Cobb-Douglas). Isso indica substituibilidade baixa, mas não nula.

    **Passo 2 — Cálculo da TMS**

    Usando a fórmula geral da CES:

    \[
    \text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho-1} = \left(\frac{x_1}{x_2}\right)^{-2} = \left(\frac{x_2}{x_1}\right)^{2}
    \]

    **Passo 3 — Comparação com outros casos**

    Com \(\sigma = 1/2\), as curvas de indiferença são convexas e mais "encurvadas" do que as da Cobb-Douglas (\(\sigma = 1\)), mas sem o ângulo reto dos complementos perfeitos (\(\sigma = 0\)). Intuitivamente, o consumidor aceita trocar um bem pelo outro, mas exige compensações crescentes de maneira mais acentuada do que no caso Cobb-Douglas.

    **Resultado:** \(\sigma = 1/2\); \(\text{TMS}_{12} = (x_2/x_1)^2\).

    **Interpretação econômica:** No contexto brasileiro, uma elasticidade de substituição baixa como \(\sigma = 1/2\) pode descrever, por exemplo, a relação entre energia elétrica e gás de cozinha para cocção: o consumidor pode substituir parcialmente um pelo outro (fogão elétrico vs. fogão a gás), mas com dificuldade crescente — refletindo custos de troca de equipamentos e hábitos de consumo enraizados.

!!! box-mundo "Box Mundo 3.2 — Elasticidades de substituição no comércio internacional: as elasticidades de Armington"

    **Contexto:** A função CES apresentada na Seção 3.6.4 não é apenas uma ferramenta teórica para modelar preferências individuais — ela é a base de praticamente todos os modelos de comércio internacional utilizados por organizações como a OMC, o FMI e o Banco Mundial. Em 1969, Paul Armington propôs tratar bens importados de diferentes países como substitutos imperfeitos, modelando as preferências dos compradores (consumidores, firmas ou governos) por bens diferenciados por origem com uma função CES. Nesse enquadramento, a elasticidade de substituição \(\sigma\) mede o grau em que compradores estão dispostos a trocar, por exemplo, aço brasileiro por aço chinês em resposta a variações de preços relativos.

    **Dados:** A estimação das chamadas "elasticidades de Armington" é uma indústria acadêmica por si só. O trabalho de referência de Broda e Weinstein (2006) estimou elasticidades de substituição para mais de 10.000 categorias de produtos importados pelos Estados Unidos no período 1972–2001 e encontrou uma mediana de \(\sigma \approx 3{,}1\), com variação enorme entre setores: commodities homogêneas como petróleo bruto apresentam \(\sigma > 20\) (quase substitutos perfeitos entre origens), enquanto bens diferenciados como automóveis e vinhos apresentam \(\sigma\) entre 1 e 3 (substituição limitada). O modelo GTAP (*Global Trade Analysis Project*), utilizado pela OMC para avaliar rodadas de negociação, adota elasticidades de Armington calibradas setorialmente: \(\sigma = 5{,}2\) para grãos, \(\sigma = 2{,}8\) para manufaturas e \(\sigma = 1{,}9\) para serviços. Hertel et al. (2007) mostram que os resultados de simulação são altamente sensíveis a esses parâmetros: dobrar a elasticidade de Armington pode triplicar os ganhos estimados de uma liberalização comercial.

    **Análise:** A aplicação das elasticidades de Armington ao comércio internacional ilustra três pontos centrais da Seção 3.6. Primeiro, a flexibilidade da função CES: ao variar \(\sigma\), o mesmo arcabouço analítico cobre desde bens quase homogêneos (\(\sigma \to \infty\), substitutos perfeitos) até bens altamente diferenciados (\(\sigma \to 0\), complementos perfeitos). Segundo, a importância empírica do parâmetro \(\sigma\): políticas comerciais que parecem benéficas sob elasticidades altas podem ser inócuas ou até prejudiciais sob elasticidades baixas. Terceiro, a conexão entre microeconomia e macroeconomia: preferências CES de consumidores individuais, quando agregadas, determinam fluxos de comércio entre nações e os efeitos de políticas tarifárias sobre o bem-estar global. Para o Brasil, as elasticidades de Armington são particularmente relevantes na avaliação de acordos comerciais como o Mercosul-UE, onde o grau de substituibilidade entre produtos brasileiros e europeus determina os ganhos e perdas setoriais esperados.

    **Fonte:** Armington, P. S. (1969). A theory of demand for products distinguished by place of production. *IMF Staff Papers*, 16(1), 159–178. Broda, C.; Weinstein, D. E. (2006). Globalization and the gains from variety. *Quarterly Journal of Economics*, 121(2), 541–585. Hertel, T.; Hummels, D.; Ivanic, M.; Keeney, R. (2007). How confident can we be of CGE-based assessments of free trade agreements? *Economic Modelling*, 24(4), 611–635.

Em resumo: a Cobb-Douglas é a melhor amiga do microeconomista — fácil de usar, gera soluções fechadas, e nunca reclama. A CES é mais versátil mas exige mais trabalho. A Leontief é inflexível — literalmente: só aceita proporções fixas. E a quase-linear é a favorita da análise de bem-estar, porque isola efeito renda em um único bem. Escolher a forma funcional certa para cada problema é metade da arte.

---

## 3.7 Troque o Rótulo, Não o Ranking: Transformações Monotônicas

*And now for something completely different* — ou melhor, *exactly the same thing, but with different numbers*. Aqui vai uma informação libertadora: a função de utilidade que você escolhe *não importa* — desde que preserve o ranking. Se \(u\) diz que pizza é melhor que salada, e você aplica logaritmo, \(\ln u\) *continua* dizendo que pizza é melhor que salada. Pode elevar ao cubo, multiplicar por mil, somar uma constante — nada muda na economia. É como medir temperatura em Celsius ou Fahrenheit: os números são diferentes, mas a água ferve no mesmo ponto.

Essa liberdade é um presente prático enorme: quando uma Cobb-Douglas \(u = x_1^{0{,}3} x_2^{0{,}7}\) está dando dor de cabeça, basta tomar o log e trabalhar com \(\ln u = 0{,}3 \ln x_1 + 0{,}7 \ln x_2\) — que é linear e muito mais tratável. As preferências são as mesmas; só a embalagem mudou.

!!! theorem "Proposição 3.3 — Invariância sob transformação monotônica"
    Se \(u(\mathbf{x})\) representa \(\succsim\) e \(f: \mathbb{R} \to \mathbb{R}\) é estritamente crescente, então \(\hat{u}(\mathbf{x}) = f(u(\mathbf{x}))\) também representa \(\succsim\).

A demonstração é direta e vale a pena percorrer, pois ilustra a simplicidade do argumento ordinal: como \(f\) é estritamente crescente, a desigualdade \(u(\mathbf{x}) \geq u(\mathbf{y})\) é preservada pela aplicação de \(f\), de modo que \(f(u(\mathbf{x})) \geq f(u(\mathbf{y}))\). Reciprocamente, se \(f(u(\mathbf{x})) \geq f(u(\mathbf{y}))\), a monotonicidade estrita de \(f\) garante que \(u(\mathbf{x}) \geq u(\mathbf{y})\). Portanto, \(\hat{u}\) preserva exatamente o mesmo ordenamento que \(u\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Você pode trocar a "régua" que mede a utilidade sem alterar as preferências — qualquer escala que preserve a ordem serve.

    **Pense assim:** É como converter temperatura de Celsius para Fahrenheit: os números mudam, mas a água continua fervendo antes do metal derreter. Da mesma forma, se você aplica logaritmo na utilidade Cobb-Douglas para facilitar as contas, o consumidor continua preferindo as mesmas cestas de antes.

    **Por que isso importa:** Isso dá ao economista liberdade para escolher a forma funcional que facilite os cálculos — por exemplo, trabalhar com \(\ln u\) em vez de \(u\) — sem perder informação econômica.

**Exemplos de transformações monotônicas úteis.** Duas aplicações da invariância ordinal são especialmente frequentes na prática:

- A Cobb-Douglas \(u = x_1^a x_2^b\) pode ser transformada em \(\hat{u} = a \ln x_1 + b \ln x_2\) via \(f(u) = \ln(u)\). O logaritmo transforma o produto em soma, eliminando os expoentes e simplificando consideravelmente as derivadas parciais e a resolução das condições de primeira ordem.
- Qualquer Cobb-Douglas pode ser normalizada de modo que \(\hat{u} = \frac{a}{a+b} \ln x_1 + \frac{b}{a+b} \ln x_2\), com coeficientes somando 1. Essa normalização é conveniente porque os coeficientes passam a coincidir com as participações na despesa — tornando a interpretação econômica imediata.

<iframe src="/micro-book/graficos/cap03/transformacao-monotonica.html" title="Figura 3.7 — Transformação Monotônica e Invariância Ordinal" class="graph-iframe" style="height:580px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.7 — Transformação Monotônica e Invariância Ordinal.** Esquerda: curvas de indiferença de \(U = x_1 x_2\). Direita: curvas da transformada \(\hat{U} = f(U)\). As curvas são **idênticas** — apenas os rótulos numéricos mudam. Escolha entre \(\ln\), \(\sqrt{}\), \(U^2\), \(U^3\) e \(-1/U\). Mova o ponto de referência para verificar que a TMS é a mesma em ambos os painéis.
</div>

!!! example "Transformação monotônica em ação: simplificando a CES"
    A função CES \(u = (x_1^\rho + x_2^\rho)^{1/\rho}\) envolve uma raiz que complica as derivadas parciais. Aplique a transformação monotônica \(f(u) = u^\rho\) (estritamente crescente para \(u > 0\) quando \(\rho > 0\), e estritamente decrescente — mas aí tomamos \(f(u) = -u^\rho\) — para \(\rho < 0\)). O resultado é:

    \[
    \hat{u} = x_1^\rho + x_2^\rho
    \]

    Agora as CPOs ficam muito mais simples:

    \[
    \frac{\partial \hat{u}}{\partial x_1} = \rho \, x_1^{\rho-1}, \qquad \frac{\partial \hat{u}}{\partial x_2} = \rho \, x_2^{\rho-1}
    \]

    E a TMS se obtém diretamente: \(\text{TMS}_{12} = (x_1/x_2)^{\rho-1}\) — o mesmo resultado da equação $\eqref{eq:3.6.12}$, mas com cálculo muito mais rápido. Essa é a essência da invariância ordinal: simplificar a álgebra sem alterar a economia.

!!! warning "⚠️ Erro Comum"
    **Tratar a utilidade como grandeza cardinal — dizer que "Maria tem utilidade 2 vezes maior que João".**

    A função de utilidade ordinal mede apenas *ordem*, não *intensidade*. Se \(u(\text{pizza}) = 10\) e \(u(\text{salada}) = 5\), isso significa apenas que pizza é preferida a salada — **não** que pizza é "duas vezes melhor". Qualquer transformação monotônica (como \(\hat{u} = \ln u\)) preserva as preferências mas muda a razão entre os valores numéricos. Comparações interpessoais ("Maria gosta mais de pizza que João") também são impossíveis com utilidade ordinal — um ponto que se torna crucial na economia do bem-estar (Capítulo 17).

!!! tip "Implicações práticas da ordinalidade"
    A TMS é invariante sob transformações monotônicas. A utilidade marginal, porém, **não é invariante**: ela muda com a transformação. Por isso, a utilidade marginal não tem significado cardinal — apenas a razão entre utilidades marginais (a TMS) possui significado econômico bem definido.

??? exercicio-resolvido "Exercício Resolvido 3.3"
    **Enunciado:** Mostre que \(u(x_1, x_2) = \ln x_1 + 2\ln x_2\) e \(v(x_1, x_2) = x_1 \cdot x_2^2\) representam as mesmas preferências, e verifique que ambas produzem a mesma TMS.

    **Resolução:**

    **Passo 1 — Identificar a transformação monotônica**

    Note que \(u = \ln x_1 + 2\ln x_2 = \ln(x_1 \cdot x_2^2) = \ln(v)\). Portanto, \(u = f(v)\) com \(f(v) = \ln(v)\), que é estritamente crescente para \(v > 0\). Pela Proposição 3.3, \(u\) e \(v\) representam as mesmas preferências.

    **Passo 2 — TMS pela função \(u\)**

    \[
    \text{TMS}_{12}^{(u)} = \frac{\partial u/\partial x_1}{\partial u/\partial x_2} = \frac{1/x_1}{2/x_2} = \frac{x_2}{2x_1}
    \]

    **Passo 3 — TMS pela função \(v\)**

    \[
    \text{TMS}_{12}^{(v)} = \frac{\partial v/\partial x_1}{\partial v/\partial x_2} = \frac{x_2^2}{2x_1 x_2} = \frac{x_2}{2x_1}
    \]

    **Resultado:** \(\text{TMS}_{12}^{(u)} = \text{TMS}_{12}^{(v)} = \dfrac{x_2}{2x_1}\).

    **Interpretação econômica:** As utilidades marginais diferem — para \(u\), \(\text{UMg}_1 = 1/x_1\); para \(v\), \(\text{UMg}_1 = x_2^2\) — mas a TMS é idêntica. Isso confirma que a TMS é a grandeza economicamente relevante: ela mede a taxa de troca subjetiva do consumidor, independentemente da "escala" escolhida para medir a utilidade. Na prática, o economista pode escolher a representação que facilite os cálculos sem perda de conteúdo econômico.

---

As seções anteriores construíram progressivamente o arcabouço teórico das preferências: partimos de axiomas mínimos de coerência, chegamos à função de utilidade via o Teorema de Debreu, derivamos curvas de indiferença e TMS como ferramentas geométricas e analíticas, exploramos as principais formas funcionais — Cobb-Douglas, substitutos e complementos perfeitos, CES e quase-linear — e, por fim, demonstramos que a invariância ordinal confere liberdade ao analista na escolha da representação. A progressão foi deliberada: cada conceito se construiu sobre os anteriores, formando uma cadeia lógica que vai da abstração dos axiomas à concretude das formas funcionais.

Antes de consolidar esses conceitos no resumo do capítulo, vale observar como esse arcabouço se manifesta — e, por vezes, é posto à prova — em um contexto histórico concreto do Brasil. O Box a seguir mostra que as mudanças nos padrões de consumo após a estabilização monetária de 1994 podem ser interpretadas à luz da teoria das preferências desenvolvida nestas páginas.

!!! box-brasil "Box Brasil 3.3 — O Plano Real e a revolução no consumo"
    A hiperinflação brasileira que antecedeu o Plano Real (julho de 1994) distorcia profundamente as preferências reveladas dos consumidores. Com taxas de inflação que chegaram a superar 2.000% ao ano em 1993, o comportamento de compra era dominado pela **antecipação de consumo**: famílias corriam ao supermercado no dia do pagamento para converter salários em bens antes que os preços subissem.

    Dados da Pesquisa de Orçamentos Familiares (POF) do IBGE revelam mudanças marcantes nos padrões de consumo ao longo das décadas:

    - **Antes da estabilização (POF 1987-88)**: famílias de baixa renda concentravam até 53% dos gastos em alimentação, com forte preferência por produtos estocáveis e não perecíveis — um reflexo racional da tentativa de manter o valor real da renda.
    - **Após a estabilização (POF 1995-96 e 2002-03)**: a participação da alimentação caiu para cerca de 33% nas famílias de menor renda, com diversificação para bens duráveis, serviços de lazer e educação.
    - **POF 2017-18**: a tendência de diversificação se manteve, com crescimento expressivo dos gastos com comunicação (telefonia móvel) e transporte.

    Do ponto de vista da teoria das preferências, a estabilização monetária não apenas alterou a **restrição orçamentária** (via ganho de renda real, sobretudo para os mais pobres), mas também permitiu que as **preferências subjacentes** se manifestassem sem a distorção imposta pelo imposto inflacionário.

    O conceito de TMS decrescente ganha concretude nesse contexto: à medida que cestas de alimentação básica se tornaram acessíveis com menor fração da renda, os consumidores puderam mover-se ao longo de suas curvas de indiferença em direção a cestas mais diversificadas.

    Vasconcellos e Garcia (2014) contextualizam os ciclos econômicos brasileiros que moldaram essas transformações nas escolhas de consumo.

    **Fonte**: IBGE, Pesquisa de Orçamentos Familiares (várias edições); Barros, R. P. de; Foguel, M. N.; Ulyssea, G. (orgs.). *Desigualdade de renda no Brasil: uma análise da queda recente*. Brasília: IPEA, 2007.

!!! box-mundo "Box Mundo 3.3 — Preferência revelada em big data: dados de scanner de supermercados e testes do GARP"

    **Contexto:** A teoria do consumidor desenvolvida neste capítulo repousa sobre axiomas — completude, transitividade, continuidade, monotonicidade — que são hipóteses sobre as preferências dos agentes. Mas como verificar empiricamente se consumidores reais se comportam de acordo com esses axiomas? A resposta clássica vem da teoria da preferência revelada (que será formalizada na Seção 5.9): se observarmos as escolhas de um consumidor em diferentes situações de preço e renda, podemos testar se essas escolhas são compatíveis com a maximização de alguma função de utilidade. O critério operacional é o **Axioma Generalizado da Preferência Revelada** (GARP, *Generalized Axiom of Revealed Preference*), formulado por Varian (1982): se as escolhas observadas satisfazem o GARP, então existe uma função de utilidade que as racionaliza. A revolução dos dados de scanner de supermercados — registros eletrônicos de cada item comprado por cada consumidor — abriu, a partir dos anos 2000, a possibilidade de testar essa hipótese com milhões de observações individuais.

    **Dados:** Echenique, Lee e Shum (2011, *American Economic Review*) utilizaram dados de scanner do painel Homescan da Nielsen, que rastreia todas as compras de supermercado de uma amostra representativa de famílias americanas ao longo de vários anos. Com observações de preços e quantidades de centenas de produtos para cada família, os autores testaram o GARP individualmente para mais de 500 famílias. O resultado principal: apenas cerca de 5% das famílias apresentaram violações do GARP, e mesmo essas violações foram de magnitude pequena — medidas pelo índice de Afriat (1967), que quantifica o grau de inconsistência, as violações raramente ultrapassaram 1% do orçamento. Dean e Martin (2016, *American Economic Review*) confirmaram esses resultados usando dados experimentais com escolhas sobre cestas reais de bens, encontrando taxas de violação do GARP inferiores a 10%. Na Europa, Cherchye, De Rock e Vermeulen (2011, *Review of Economics and Statistics*) aplicaram testes de preferência revelada a microdados belgas e holandeses, concluindo que o modelo coletivo de consumo domiciliar (onde marido e mulher têm preferências distintas) racionaliza os dados significativamente melhor do que o modelo unitário — evidência de que a unidade de decisão importa para a validade dos axiomas.

    **Análise:** Esses resultados fornecem suporte empírico notável para os axiomas apresentados na Seção 3.1: na grande maioria dos casos, as escolhas de consumo observadas em dados de alta frequência são compatíveis com a existência de uma função de utilidade racional. A taxa de violação de 5% é consistente com a evidência de intransitividade discutida no Box Mundo 3.1 — violações existem, mas são a exceção, não a regra. Do ponto de vista da Seção 3.7 (invariância ordinal), os testes de preferência revelada são particularmente elegantes: eles verificam se existe *alguma* função de utilidade compatível com os dados, sem impor uma forma funcional específica (Cobb-Douglas, CES, etc.) — exatamente porque a utilidade é ordinal e qualquer transformação monotônica preserva o ordenamento. A explosão de dados de scanner e de compras online oferece oportunidades sem precedentes para testar a teoria do consumidor em escala, transformando os axiomas deste capítulo de postulados filosóficos em hipóteses empiricamente verificáveis.

    **Fonte:** Varian, H. R. (1982). The nonparametric approach to demand analysis. *Econometrica*, 50(4), 945–973. Echenique, F.; Lee, S.; Shum, M. (2011). The money pump as a measure of revealed preference violations. *American Economic Review*, 101(4), 1645–1651. Cherchye, L.; De Rock, B.; Vermeulen, F. (2011). The revealed preference approach to collective consumption behaviour. *Review of Economics and Statistics*, 93(1), 223–238.

Três convicções para levar deste capítulo:

1. **Os axiomas são modestos — as consequências, não.** Exigir que o consumidor saiba comparar cestas e não se contradiga parece pouco. Mas desse ponto de partida modesto emerge todo o edifício: função de utilidade, curvas de indiferença, TMS, demandas, bem-estar. A desproporção entre premissa e consequência é o que torna a teoria elegante.

2. **A forma funcional importa — e muito.** Cobb-Douglas, CES, Leontief e quase-linear não são caprichos algébricos: cada uma implica um comportamento de demanda, uma elasticidade de substituição e uma resposta à renda *qualitativamente diferente*. Escolher a forma funcional errada é como usar o mapa errado — tecnicamente bonito, mas te leva ao destino errado.

3. **A utilidade é ordinal — e isso é liberdade, não limitação.** A invariância sob transformações monotônicas significa que você pode trocar a "régua" sem perder informação econômica. Logaritmo, raiz, cubo — nada muda na economia. A TMS é a grandeza real; os números da utilidade são mera conveniência.

*Sabemos o que o consumidor quer. No próximo capítulo, descobrimos o que ele pode — e o que ele escolhe.*
