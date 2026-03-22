# Capítulo 3 — Mais É Melhor — Será?

Por que um consumidor escolhe arroz em vez de macarrão? Por que alguém prefere gastar mais com lazer do que com roupas? A teoria das preferências e da utilidade constitui o alicerce da microeconomia do consumidor. Neste capítulo, formalizamos as preferências individuais por meio de axiomas e mostramos sob quais condições essas preferências podem ser representadas por uma função de utilidade.

Em seguida, exploramos as ferramentas analíticas que nos permitem descrever e comparar cestas de consumo: curvas de indiferença, taxa marginal de substituição e famílias específicas de funções de utilidade. O capítulo segue a abordagem axiomática presente em Mas-Colell, Whinston e Green (1995), complementada pela exposição mais intuitiva de Varian (2015) e Nicholson e Snyder (2017). Para uma abordagem particularmente acessível, com ênfase em intuição econômica e exemplos aplicados, ver Besanko e Braeutigam (2014, Caps. 3–4). Ao final, o leitor estará preparado para resolver o problema de otimização do consumidor — tema do Capítulo 4.

---

## 3.1 Axiomas da Escolha Racional

Antes de construir qualquer modelo de escolha do consumidor, precisamos estabelecer regras mínimas sobre como ele ordena suas opções. Afinal, se não soubermos ao menos *como* o consumidor compara alternativas, qualquer tentativa de prever seu comportamento estará fadada ao fracasso. Essas regras mínimas são os **axiomas** das preferências — e, como veremos, a partir delas toda a teoria do consumidor pode ser edificada.

Seja \(X \subseteq \mathbb{R}^n_+\) o **conjunto de consumo**, isto é, o conjunto de todas as cestas de bens fisicamente disponíveis. Uma **relação de preferência** \(\succsim\) sobre \(X\) indica que, dadas duas cestas \(\mathbf{x}\) e \(\mathbf{y}\), o consumidor considera \(\mathbf{x}\) pelo menos tão boa quanto \(\mathbf{y}\).

A partir de \(\succsim\), definimos:

- **Preferência estrita**: \(\mathbf{x} \succ \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e não \(\mathbf{y} \succsim \mathbf{x}\).
- **Indiferença**: \(\mathbf{x} \sim \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{x}\).

Para que as preferências do consumidor sejam "bem comportadas" e passíveis de análise formal, exigimos um conjunto de axiomas. Cada um deles captura uma exigência de coerência que, embora possa parecer óbvia isoladamente, desempenha um papel específico na construção do edifício teórico.

!!! definition "Axioma 1 — Completude"
    Para quaisquer \(\mathbf{x}, \mathbf{y} \in X\), vale \(\mathbf{x} \succsim \mathbf{y}\) ou \(\mathbf{y} \succsim \mathbf{x}\) (ou ambos). Em outras palavras, o consumidor é sempre capaz de comparar duas cestas quaisquer.

!!! definition "Axioma 2 — Transitividade"
    Para quaisquer \(\mathbf{x}, \mathbf{y}, \mathbf{z} \in X\), se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{z}\), então \(\mathbf{x} \succsim \mathbf{z}\). A transitividade garante consistência interna nas escolhas.

!!! definition "Axioma 3 — Continuidade"
    Para todo \(\mathbf{y} \in X\), os conjuntos \(\{\mathbf{x} \in X : \mathbf{x} \succsim \mathbf{y}\}\) (conjunto de pelo menos tão bom quanto) e \(\{\mathbf{x} \in X : \mathbf{y} \succsim \mathbf{x}\}\) (conjunto de no máximo tão bom quanto) são fechados. A continuidade exclui "saltos" nas preferências — pequenas mudanças na cesta não causam inversões bruscas no ordenamento.

!!! definition "Axioma 4 — Monotonicidade (não saciedade local)"
    Se \(\mathbf{x} \geq \mathbf{y}\) (componente a componente) e \(\mathbf{x} \neq \mathbf{y}\), então \(\mathbf{x} \succ \mathbf{y}\). "Mais é melhor" — o consumidor sempre prefere ter mais de pelo menos um bem, tudo o mais constante.

!!! tip "Observação sobre preferências lexicográficas"
    As preferências lexicográficas satisfazem completude, transitividade e monotonicidade, mas **não** satisfazem continuidade. Por isso, não podem ser representadas por uma função de utilidade contínua. Este é um caso clássico que ilustra a importância do axioma de continuidade.

!!! info "Exemplo — Racionalidade nas escolhas de consumo no Brasil"
    Os axiomas de completude e transitividade podem parecer abstratos, mas refletem exigências mínimas de consistência nas escolhas cotidianas. A Pesquisa de Orçamentos Familiares (POF 2017-2018) do [IBGE](https://www.ibge.gov.br) mostra que famílias brasileiras, mesmo as de baixa renda, alocam seus orçamentos de forma estável e internamente consistente: quando a renda aumenta, a participação relativa da alimentação cai de maneira suave e previsível (de 22% para famílias com renda até R$ 1.908 a 7,6% para famílias acima de R$ 23.850). Essa regularidade empírica é compatível com preferências que satisfazem os axiomas acima — especialmente transitividade e monotonicidade — e justifica o uso do arcabouço axiomático como ponto de partida para modelar o consumidor.

!!! idea "Intuição Econômica"
    **Em uma frase:** Os axiomas de preferência são apenas regras mínimas de coerência — exigem que o consumidor saiba comparar opções e não se contradiga.

    **Pense assim:** Quando você vai à feira e decide que prefere banana a maçã, e maçã a pera, seria estranho voltar e dizer que prefere pera a banana. Completude é conseguir comparar qualquer par de frutas; transitividade é não entrar em contradição. A monotonicidade diz que, entre dois sacos de frutas, você prefere o maior — desde que goste de todas.

    **Por que isso importa:** Sem essas regras mínimas, não seria possível prever o comportamento do consumidor nem formular políticas públicas baseadas em escolhas racionais.

---

## 3.2 Relações de Preferência e Função de Utilidade

Os axiomas da seção anterior descrevem propriedades qualitativas das preferências: sabemos que o consumidor é capaz de comparar cestas, que suas comparações são consistentes e que ele prefere ter mais a ter menos. Porém, trabalhar diretamente com a relação \(\succsim\) é analiticamente pouco prático — comparar cestas duas a duas, sem uma escala numérica, torna difícil formular e resolver problemas de otimização. O próximo passo natural é, portanto, perguntar: podemos traduzir essas preferências em uma **função numérica** que facilite a análise? A resposta é sim, sob certas condições — e o resultado é um dos pilares mais importantes da teoria microeconômica.

Uma **função de utilidade** \(u: X \to \mathbb{R}\) **representa** a relação de preferência \(\succsim\) se, para todo \(\mathbf{x}, \mathbf{y} \in X\):

\[
\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y}). \label{eq:3.2.1} \tag{3.2.1}
\]

A existência de tal função não é trivial. O teorema a seguir fornece condições suficientes.

!!! theorem "Teorema 3.1 — Existência da Função de Utilidade (Debreu, 1954)"
    Se a relação de preferência \(\succsim\) sobre \(X \subseteq \mathbb{R}^n_+\) é **completa**, **transitiva**, **contínua** e **monótona**, então existe uma função de utilidade contínua \(u: X \to \mathbb{R}\) que representa \(\succsim\).

A demonstração completa pode ser encontrada em Mas-Colell, Whinston e Green (1995, Proposição 3.C.1). A ideia central é construir \(u(\mathbf{x})\) como o escalar \(t\) tal que \(\mathbf{x} \sim t \cdot \mathbf{1}\), onde \(\mathbf{1} = (1, 1, \ldots, 1)\). A monotonicidade garante que tal \(t\) é único, e a continuidade garante que a função resultante é contínua.

!!! note "Utilidade é ordinal, não cardinal"
    A função de utilidade atribui números a cestas apenas para preservar o **ordenamento**. Os valores absolutos não têm significado econômico intrínseco. Se \(u(\mathbf{x}) = 10\) e \(u(\mathbf{y}) = 5\), sabemos apenas que \(\mathbf{x} \succ \mathbf{y}\), **não** que \(\mathbf{x}\) é "duas vezes melhor" que \(\mathbf{y}\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Os números da utilidade funcionam como a ordem de chegada numa corrida — só importa quem chegou antes, não por quantos segundos.

    **Pense assim:** Imagine que você dá nota 10 para um prato de feijoada e nota 5 para uma salada. Isso não significa que a feijoada é "duas vezes mais gostosa" — apenas que você a prefere. Se um amigo desse nota 100 e 50, as preferências seriam as mesmas. O ranking é o que importa, não o placar.

    **Por que isso importa:** Essa propriedade ordinal nos liberta de medir "felicidade" em unidades absolutas — basta saber o que o consumidor prefere para analisar suas escolhas.

---

## 3.3 Curvas de Indiferença

Com a função de utilidade em mãos, passamos da abstração algébrica para a representação geométrica. Assim como mapas topográficos representam a altitude do terreno por curvas de nível, podemos visualizar as preferências do consumidor por meio das curvas de nível da função de utilidade. Essas curvas — as *curvas de indiferença* — constituem a ferramenta gráfica central da teoria do consumidor e serão essenciais para a análise de otimização do Capítulo 4.

!!! definition "Curva de indiferença"
    A curva de indiferença associada ao nível de utilidade \(\bar{u}\) é o conjunto \(\{\mathbf{x} \in X : u(\mathbf{x}) = \bar{u}\}\). Trata-se de uma **curva de nível** da função de utilidade.

**Propriedades das curvas de indiferença** (sob os axiomas da Seção 3.1):

1. **Cobrem todo o espaço de consumo**: pela completude, toda cesta pertence a alguma curva de indiferença.
2. **Não se cruzam**: se duas curvas se cruzassem em um ponto, a transitividade seria violada.
3. **Possuem inclinação negativa**: pela monotonicidade, para manter o mesmo nível de utilidade, um aumento em \(x_1\) deve ser compensado por uma redução em \(x_2\).
4. **Cestas em curvas mais altas (a nordeste) são preferidas**: consequência direta da monotonicidade.

O **mapa de indiferença** é a família de todas as curvas de indiferença. Ele oferece uma representação visual completa das preferências do consumidor no espaço bidimensional.

<iframe src="../graficos/cap03/curvas-indiferenca.html" title="Figura 3.1 — Mapa de curvas de indiferença" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 3.1 — Mapa de curvas de indiferença.** Arraste o ponto sobre a curva para ver a TMS. Use os sliders para alterar os parâmetros e o menu para trocar o tipo de preferência (Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES, quase-linear).
</div>

!!! tip "Convexidade estrita"
    Se as preferências forem **estritamente convexas** — isto é, se \(\mathbf{x} \sim \mathbf{y}\) e \(\mathbf{x} \neq \mathbf{y}\) implicarem \(t\mathbf{x} + (1-t)\mathbf{y} \succ \mathbf{x}\) para todo \(t \in (0,1)\) — então as curvas de indiferença são estritamente convexas em relação à origem. Isso reflete a ideia de que consumidores preferem variedade: uma cesta "mista" é preferida a cestas extremas. A seção sobre a TMS (a seguir) mostrará que essa propriedade equivale a uma TMS decrescente.

---

## 3.4 Taxa Marginal de Substituição (TMS)

As curvas de indiferença nos dizem *quais* cestas o consumidor considera equivalentes — mas não nos dizem *quão facilmente* ele aceita trocar um bem pelo outro. Em cada ponto da curva, existe uma taxa de troca subjetiva: quantas unidades do bem 2 o consumidor estaria disposto a ceder por uma unidade adicional do bem 1? Essa é exatamente a informação capturada pela **taxa marginal de substituição (TMS)** — um conceito que conectará preferências a preços no capítulo seguinte.

!!! definition "Taxa marginal de substituição"
    A **taxa marginal de substituição** do bem 1 pelo bem 2 é definida como o valor absoluto da inclinação da curva de indiferença no ponto \((x_1, x_2)\):

    \[
    \text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} \label{eq:3.4.2} \tag{3.4.2}
    \]

    A TMS mede a quantidade do bem 2 que o consumidor está disposto a abrir mão para obter uma unidade adicional do bem 1, mantendo o nível de utilidade constante.

!!! info "🏅 Prêmio Nobel — John R. Hicks (1972)"

    **John Richard Hicks** (1904–1989) foi um economista britânico, formado na Universidade de Oxford. Foi professor em Manchester, Oxford e na London School of Economics. Dividiu o Nobel com Kenneth Arrow.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Em *Value and Capital* (1939), Hicks axiomatizou a teoria do consumidor, introduzindo a taxa marginal de substituição como ferramenta central, e desenvolveu o conceito de demanda compensada (hicksiana), que separa efeitos renda e substituição.

    **Conexão com este capítulo:**
    A taxa marginal de substituição (TMS) formalizada por Hicks é o conceito central deste capítulo. A condição de tangência entre a curva de indiferença e a restrição orçamentária — que exige igualdade entre TMS e razão de preços — é a base da teoria da escolha do consumidor desenvolvida aqui.

**Interpretação econômica**: A TMS é a **taxa de troca subjetiva** do consumidor. Se \(\text{TMS}_{12} = 3\), o consumidor está disposto a trocar até 3 unidades do bem 2 por 1 unidade adicional do bem 1.

**TMS decrescente**: Sob preferências estritamente convexas, a TMS é decrescente ao longo da curva de indiferença. À medida que o consumidor adquire mais do bem 1, cada unidade adicional torna-se relativamente menos valiosa, e ele está disposto a sacrificar cada vez menos do bem 2. Esta propriedade é equivalente à convexidade estrita das curvas de indiferença.

!!! idea "Intuição Econômica"
    **Em uma frase:** A TMS mede "quanto do bem 2 você toparia trocar por mais uma unidade do bem 1" — é o seu preço pessoal de troca.

    **Pense assim:** Imagine que você tem muito arroz e pouco feijão em casa. Você toparia trocar bastante arroz por um pouco de feijão. Mas à medida que ganha feijão e perde arroz, cada porção adicional de feijão vale menos para você, e cada porção de arroz que abre mão dói mais. Essa "taxa de troca pessoal" que vai caindo é a TMS decrescente.

    **Por que isso importa:** No capítulo seguinte veremos que o consumidor otimiza quando sua TMS iguala a razão de preços do mercado — é o ponto onde o "preço pessoal" coincide com o "preço de mercado".

!!! info "Exemplo — TMS e escolhas alimentares no Brasil"
    Considere um consumidor brasileiro escolhendo entre alimentação dentro de casa (\(x_1\)) e alimentação fora de casa (\(x_2\)). Segundo a POF 2017-2018 do IBGE, a despesa média per capita com alimentação no domicílio era de aproximadamente R\$ 136 mensais, contra R\$ 73 com alimentação fora. Uma família com muito gasto em alimentação domiciliar (cesta "extrema") teria uma TMS alta: estaria disposta a abrir mão de várias refeições caseiras por uma refeição fora. À medida que aumenta a alimentação fora de casa, a TMS diminui — o consumidor valoriza cada vez menos uma refeição adicional fora. Essa TMS decrescente é a manifestação empírica da convexidade estrita das preferências.

---

## 3.5 Utilidade Marginal e TMS

Na seção anterior, definimos a TMS geometricamente como a inclinação da curva de indiferença. Mas como calcular essa inclinação na prática? A resposta passa por uma ferramenta do cálculo diferencial — a **utilidade marginal** — que mede o acréscimo de utilidade proporcionado por uma unidade adicional de um bem, *ceteris paribus*. Como veremos, a TMS pode ser expressa de forma elegante como a razão entre as utilidades marginais dos dois bens.

A **utilidade marginal** do bem \(i\) é:

\[
\text{UMg}_i = \frac{\partial u}{\partial x_i}. \label{eq:3.5.3} \tag{3.5.3}
\]

A relação fundamental entre utilidade marginal e TMS é dada pela proposição a seguir.

!!! theorem "Proposição 3.2 — TMS como razão de utilidades marginais"
    Se \(u(x_1, x_2)\) é diferenciável e \(\text{UMg}_2 > 0\), então:

    \[
    \text{TMS}_{12} = \frac{\text{UMg}_1}{\text{UMg}_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} \label{eq:3.5.4} \tag{3.5.4}
    \]

!!! proof "Demonstração"
    Considere o consumidor sobre uma curva de indiferença, de modo que \(u(x_1, x_2) = \bar{u}\). Tomando o **diferencial total** da função de utilidade ao longo dessa curva:

    \[
    du = \frac{\partial u}{\partial x_1} dx_1 + \frac{\partial u}{\partial x_2} dx_2 = 0,
    \]

    pois o nível de utilidade é constante (\(du = 0\)) ao longo da curva de indiferença. Reorganizando:

    \[
    \frac{\partial u}{\partial x_2} dx_2 = -\frac{\partial u}{\partial x_1} dx_1,
    \]

    \[
    \frac{dx_2}{dx_1} = -\frac{\partial u / \partial x_1}{\partial u / \partial x_2}.
    \]

    Como a TMS é definida como o valor absoluto (com sinal positivo) da inclinação da curva de indiferença:

    \[
    \text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \frac{\text{UMg}_1}{\text{UMg}_2}. \qquad \blacksquare
    \]

<iframe src="../graficos/cap03/tms-ponto.html" title="Figura 3.2 — Taxa Marginal de Substituição (TMS)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 3.2 — Taxa Marginal de Substituição (TMS).** Arraste o ponto P ao longo da curva de indiferença para ver a reta tangente e o cálculo da \(\text{TMS} = \text{UMg}_1/\text{UMg}_2\) em tempo real. Selecione entre Cobb-Douglas, linear, Leontief, CES e quase-linear.
</div>

## 🎯 Exercícios Resolvidos

Os exercícios resolvidos a seguir aplicam os conceitos desenvolvidos neste capítulo. Recomenda-se tentar resolver cada exercício antes de consultar a solução.

??? exercicio-resolvido "Exercício Resolvido 3.1"
    **Enunciado:** Um consumidor tem preferências representadas por \(u(x_1, x_2) = x_1^{2/5} \, x_2^{3/5}\). Calcule a TMS no ponto \((x_1, x_2) = (10, 15)\) e interprete o resultado.

    **Dados:** \(a = 2/5\), \(b = 3/5\), \(x_1 = 10\), \(x_2 = 15\).

    **Resolução:**

    **Passo 1 — Cálculo das utilidades marginais**

    \[
    \text{UMg}_1 = \frac{\partial u}{\partial x_1} = \frac{2}{5} \, x_1^{-3/5} \, x_2^{3/5}
    \]

    \[
    \text{UMg}_2 = \frac{\partial u}{\partial x_2} = \frac{3}{5} \, x_1^{2/5} \, x_2^{-2/5}
    \]

    **Passo 2 — Cálculo da TMS**

    \[
    \text{TMS}_{12} = \frac{\text{UMg}_1}{\text{UMg}_2} = \frac{\frac{2}{5} \, x_1^{-3/5} \, x_2^{3/5}}{\frac{3}{5} \, x_1^{2/5} \, x_2^{-2/5}} = \frac{2}{3} \cdot \frac{x_2}{x_1}
    \]

    Note que, para qualquer Cobb-Douglas \(u = x_1^a x_2^b\), a TMS assume a forma geral \(\text{TMS}_{12} = \frac{a}{b} \cdot \frac{x_2}{x_1}\).

    **Passo 3 — Avaliação no ponto dado**

    \[
    \text{TMS}_{12}(10, 15) = \frac{2}{3} \cdot \frac{15}{10} = \frac{2}{3} \cdot 1{,}5 = 1
    \]

    **Resultado:** \(\text{TMS}_{12} = 1\) no ponto \((10, 15)\).

    **Interpretação econômica:** No ponto \((10, 15)\), o consumidor está disposto a trocar exatamente 1 unidade do bem 2 por 1 unidade adicional do bem 1, mantendo-se indiferente. Se pensarmos no bem 1 como transporte e no bem 2 como alimentação fora de casa no orçamento de uma família brasileira, a TMS igual a 1 significa que o consumidor valoriza igualmente uma unidade adicional de cada bem naquela composição de cesta. Se o preço relativo diferir de 1, haverá incentivo para realocar o consumo — tema do Capítulo 4.

---

## 3.6 Funções de Utilidade para Preferências Específicas

Até aqui, tratamos a função de utilidade e a TMS em termos gerais, sem impor uma forma funcional específica. Agora é hora de dar conteúdo concreto a esses conceitos. Diferentes padrões de preferência — desde a disposição a substituir livremente entre bens até a necessidade de consumi-los em proporções fixas — geram diferentes formatos de curvas de indiferença e diferentes expressões para a TMS. Nesta seção, apresentamos as famílias de funções de utilidade mais utilizadas em microeconomia, cada uma capturando um tipo distinto de relação entre os bens. Dominar essas formas funcionais é essencial, pois elas reaparecerão sistematicamente na derivação de demandas nos capítulos seguintes.

### 3.6.1 Cobb-Douglas

A função Cobb-Douglas é, sem dúvida, a forma funcional mais utilizada em microeconomia — tanto pela sua tratabilidade analítica quanto por suas propriedades econômicas intuitivas. Ela é definida como:

\[
u(x_1, x_2) = x_1^a \, x_2^b, \quad a, b > 0. \label{eq:3.6.5} \tag{3.6.5}
\]

As curvas de indiferença são hipérboles convexas. A TMS é:

\[
\text{TMS}_{12} = \frac{a \, x_2}{b \, x_1}. \label{eq:3.6.6} \tag{3.6.6}
\]

A função Cobb-Douglas é extremamente conveniente por gerar funções de demanda com forma fechada. A participação de cada bem na despesa total é constante: \(\frac{a}{a+b}\) para o bem 1 e \(\frac{b}{a+b}\) para o bem 2. A elasticidade de substituição é \(\sigma = 1\).

### 3.6.2 Substitutos Perfeitos

No extremo oposto da substituibilidade, considere bens que o consumidor troca livremente entre si a uma taxa fixa — como, para muitos consumidores, manteiga e margarina. Nesse caso, a função de utilidade assume a forma linear:

\[
u(x_1, x_2) = a x_1 + b x_2, \quad a, b > 0. \label{eq:3.6.7} \tag{3.6.7}
\]

As curvas de indiferença são **linhas retas** com inclinação \(-a/b\). A TMS é constante:

\[
\text{TMS}_{12} = \frac{a}{b}. \label{eq:3.6.8} \tag{3.6.8}
\]

O consumidor troca os bens a uma taxa fixa, independente da composição da cesta. A elasticidade de substituição é \(\sigma = \infty\). Tipicamente, o consumidor se especializa no bem com menor preço relativo ajustado pela taxa de troca.

### 3.6.3 Complementos Perfeitos

Se os substitutos perfeitos representam a máxima disposição a trocar entre bens, os complementos perfeitos ocupam o extremo oposto: os bens só têm valor quando consumidos juntos, em proporções fixas. Pense em um pé esquerdo e um pé direito de sapato — um sem o outro é inútil. A função de utilidade que captura essa rigidez é:

\[
u(x_1, x_2) = \min\{a x_1, \, b x_2\}, \quad a, b > 0. \label{eq:3.6.9} \tag{3.6.9}
\]

As curvas de indiferença têm formato de **L** (ângulo reto), com vértice na reta \(a x_1 = b x_2\). A TMS é indefinida no vértice, zero nos segmentos horizontais e infinita nos segmentos verticais. A elasticidade de substituição é \(\sigma = 0\). Exemplos clássicos: sapato esquerdo e sapato direito, CPU e monitor.

### 3.6.4 CES (Elasticidade de Substituição Constante)

Os três casos anteriores — Cobb-Douglas, substitutos perfeitos e complementos perfeitos — podem parecer categorias isoladas, mas na verdade são membros de uma mesma família: a função CES. Essa generalização permite capturar qualquer grau de substituibilidade entre os bens por meio de um único parâmetro \(\rho\), tornando-a uma ferramenta extremamente versátil tanto na teoria quanto na aplicação empírica.

\[
u(x_1, x_2) = \left(x_1^{\rho} + x_2^{\rho}\right)^{1/\rho}, \quad \rho \leq 1, \; \rho \neq 0. \label{eq:3.6.10} \tag{3.6.10}
\]

A elasticidade de substituição é:

\[
\sigma = \frac{1}{1 - \rho}. \label{eq:3.6.11} \tag{3.6.11}
\]

A função CES engloba como casos especiais:

- \(\rho \to 0\): Cobb-Douglas (\(\sigma = 1\)).
- \(\rho = 1\): Substitutos perfeitos (\(\sigma = \infty\)).
- \(\rho \to -\infty\): Complementos perfeitos (\(\sigma = 0\)).

A TMS para a CES é:

\[
\text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho - 1}. \label{eq:3.6.12} \tag{3.6.12}
\]

### 3.6.5 Quase-linear

As formas funcionais anteriores compartilham uma propriedade importante: são todas homotéticas (como veremos na Seção 3.6.6), o que significa que a proporção entre os bens consumidos não se altera com a renda. Na prática, porém, existem bens cuja demanda é essencialmente insensível à renda — por exemplo, o consumo de sal de cozinha. A função de utilidade quase-linear captura exatamente essa situação:

\[
u(x_1, x_2) = v(x_1) + x_2, \quad v' > 0, \; v'' < 0. \label{eq:3.6.13} \tag{3.6.13}
\]

A TMS depende apenas de \(x_1\):

\[
\text{TMS}_{12} = v'(x_1). \label{eq:3.6.14} \tag{3.6.14}
\]

As curvas de indiferença são **translações verticais** umas das outras: possuem a mesma forma, apenas deslocadas paralelamente ao eixo \(x_2\). Isso implica que não há efeito renda sobre o bem 1 (para soluções interiores). A utilidade quase-linear é particularmente útil em análises de equilíbrio parcial e em modelos de organização industrial.

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

**Quase-linear vs. homotética.** A utilidade quase-linear **não** é homotética (exceto no caso trivial em que \(v\) é linear). As curvas de indiferença se deslocam por translação vertical, não por expansão radial a partir da origem. A razão \(x_1/x_2\) muda com a renda (todo o aumento vai para \(x_2\)), violando a condição das funções homotéticas (ver §3.6.6).

### 3.6.6 Funções homotéticas

Após examinar a quase-linearidade, é natural perguntar: existe uma classe de preferências em que a composição relativa da cesta — e não o nível absoluto de um bem — permanece inalterada quando a renda varia? A resposta são as preferências **homotéticas**, que ocupam um papel central tanto na teoria do consumidor quanto nos modelos de equilíbrio geral e macroeconômico.

!!! definition "Função homotética"
    Uma função de utilidade \(u(x_1, x_2)\) é **homotética** se pode ser escrita como uma transformação monotônica crescente de uma função homogênea de grau 1:

    \[
    u(x_1, x_2) = g\!\big(h(x_1, x_2)\big), \quad g' > 0, \quad h(\lambda x_1, \lambda x_2) = \lambda \, h(x_1, x_2) \;\;\forall\, \lambda > 0.
    \]

**Propriedade fundamental.** Para preferências homotéticas, a TMS depende apenas da **razão** \(x_1/x_2\):

\[
\text{TMS}_{12}(x_1, x_2) = \phi\!\left(\frac{x_1}{x_2}\right). \label{eq:3.6.15} \tag{3.6.15}
\]

Isso significa que ao longo de qualquer raio que parte da origem (\(x_2 = k \cdot x_1\)), a TMS é constante. Geometricamente, as curvas de indiferença são **expansões radiais** umas das outras — ao escalar uma curva de indiferença a partir da origem, obtemos outra curva de indiferença.

!!! theorem "Proposição — Propriedades das preferências homotéticas"
    Se \(u\) é homotética, então:

    1. **Caminho de expansão da renda linear**: a reta que passa pela origem e pela cesta ótima contém todas as cestas ótimas para diferentes níveis de renda (preços fixos). A razão \(x_1^*/x_2^*\) é constante em \(I\).
    2. **Curvas de Engel lineares**: \(x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I\), onde \(\alpha_i\) depende apenas dos preços.
    3. **Elasticidade-renda unitária**: \(\varepsilon_{x_i, I} = 1\) para todo bem \(i\). Todos os bens são normais e nem de luxo nem de necessidade.
    4. **Participação constante na despesa**: \(p_i x_i^* / I\) é constante para variações da renda.
    5. **Função dispêndio separável**: \(E(\mathbf{p}, \bar{u}) = b(\mathbf{p}) \cdot e(\bar{u})\), onde \(b\) depende apenas dos preços e \(e\) apenas da utilidade.

**Exemplos.**

- **Cobb-Douglas** \(u = x_1^a x_2^b\): é homotética, pois é homogênea de grau \(a+b\). A razão ótima é \(x_1^*/x_2^* = (a p_2)/(b p_1)\), constante em \(I\).
- **CES** \(u = (x_1^\rho + x_2^\rho)^{1/\rho}\): homotética (homogênea de grau 1). A razão ótima depende apenas de \(p_1/p_2\) e \(\rho\).
- **Substitutos perfeitos** e **complementos perfeitos**: ambos são homotéticos (homogêneos de grau 1).
- **Quase-linear** \(u = v(x_1) + x_2\): **não** é homotética. A TMS depende de \(x_1\) isoladamente, não de \(x_1/x_2\). A razão ótima \(x_1^*/x_2^*\) varia com a renda.

!!! idea "Intuição Econômica"
    **Em uma frase:** Com preferências homotéticas, ricos e pobres gastam a mesma *proporção* da renda em cada bem — só a escala muda.

    **Pense assim:** Uma família homotética que gasta 30% da renda com alimentação e 70% com outros bens manterá essa proporção se sua renda dobrar, triplicar ou cair pela metade. O caminho de expansão da renda é uma reta que sai da origem — escalar a cesta ótima é como "dar zoom" na mesma cesta.

    **Por que isso importa:** Essa propriedade permite agregar consumidores com rendas diferentes em um "consumidor representativo" — base de grande parte dos modelos macroeconômicos. Contudo, os dados da POF (ver Box Brasil, §3.6.4) mostram que preferências reais raramente são homotéticas: a participação da alimentação cai com a renda (Lei de Engel), evidenciando preferências não homotéticas na prática.

A [Tabela 3.1](#tabela-3-1) compara as principais formas funcionais de utilidade discutidas neste capítulo.

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

<iframe src="../graficos/cap03/tipos-preferencias.html" title="Figura 3.3 — Comparação dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 3.3 — Comparação dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais).**
</div>

<iframe src="../graficos/cap03/funcoes-utilidade.html" title="Figura 3.4 — Superfície 3D da função de utilidade" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 3.4 — Superfície 3D da função de utilidade.** Rotacione e aplique zoom com o mouse. Use o menu para trocar entre Cobb-Douglas, substitutos perfeitos (plano), complementos perfeitos (superfície em cunha), CES e quase-linear. Ajuste os parâmetros nos sliders.
</div>

<iframe src="../graficos/cap03/homotetica-vs-quaselinear.html" title="Figura 3.5 — Homotética vs quase-linear: compare a expansão da renda" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 3.5 — Homotética vs quase-linear: compare a expansão da renda.** À esquerda (Cobb-Douglas), o caminho de expansão é um raio da origem — a razão \(x_1/x_2\) é constante. À direita (quase-linear), o caminho é vertical — \(x_1\) não muda com a renda. Ajuste \(I\) e \(p_1/p_2\) nos sliders.
</div>

!!! box-brasil "Box Brasil — Cobb-Douglas e a POF: participação constante na despesa?"
    A propriedade mais marcante da função Cobb-Douglas é que a **participação de cada bem na despesa total é constante**, independente do nível de renda. Os dados da Pesquisa de Orçamentos Familiares (POF 2017-2018, IBGE) permitem confrontar essa previsão teórica com a realidade brasileira.

    A POF revela que a participação da alimentação no orçamento familiar **varia substancialmente** com a renda: famílias com renda de até R$ 1.908 destinam cerca de 22% à alimentação, enquanto famílias com renda acima de R$ 23.850 destinam apenas 7,6%. Essa variação contraria a previsão de participação constante da Cobb-Douglas, sugerindo que essa função não é adequada para modelar preferências entre alimentação e outros bens *ao longo de diferentes faixas de renda*.

    Em termos formais, a lei de Engel — que afirma que a participação da alimentação no orçamento cai com a renda — implica que a elasticidade-renda da alimentação é menor que 1 (bem necessário). Uma função Cobb-Douglas, por ter elasticidade-renda unitária para todos os bens, não consegue capturar esse padrão.

    **Implicação para a modelagem:** Em estudos aplicados sobre o consumidor brasileiro, a função CES ou especificações não homotéticas (como o sistema Almost Ideal Demand System, de [Deaton e Muellbauer](https://www.jstor.org/stable/1805222)) frequentemente oferecem ajuste superior à Cobb-Douglas, especialmente quando a análise envolve comparações entre faixas de renda.

    **Fonte:** IBGE, Pesquisa de Orçamentos Familiares 2017-2018 — Primeiros Resultados.

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

---

## 3.7 Transformações Monotônicas e Invariância Ordinal

Ao longo das seções anteriores, enfatizamos que a utilidade é ordinal: apenas o ordenamento das cestas importa, não os valores numéricos em si. Mas o que exatamente isso implica para a liberdade do economista na escolha da forma funcional? A consequência é notável: podemos transformar a função de utilidade sem alterar as preferências subjacentes — desde que a transformação preserve a ordenação. Essa liberdade tem implicações práticas importantes, pois permite ao analista escolher a representação mais conveniente para cada problema.

!!! theorem "Proposição 3.3 — Invariância sob transformação monotônica"
    Se \(u(\mathbf{x})\) representa \(\succsim\) e \(f: \mathbb{R} \to \mathbb{R}\) é estritamente crescente, então \(\hat{u}(\mathbf{x}) = f(u(\mathbf{x}))\) também representa \(\succsim\).

A demonstração é direta: como \(f\) é estritamente crescente, \(u(\mathbf{x}) \geq u(\mathbf{y})\) se e somente se \(f(u(\mathbf{x})) \geq f(u(\mathbf{y}))\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Você pode trocar a "régua" que mede a utilidade sem alterar as preferências — qualquer escala que preserve a ordem serve.

    **Pense assim:** É como converter temperatura de Celsius para Fahrenheit: os números mudam, mas a água continua fervendo antes do metal derreter. Da mesma forma, se você aplica logaritmo na utilidade Cobb-Douglas para facilitar as contas, o consumidor continua preferindo as mesmas cestas de antes.

    **Por que isso importa:** Isso dá ao economista liberdade para escolher a forma funcional que facilite os cálculos — por exemplo, trabalhar com \(\ln u\) em vez de \(u\) — sem perder informação econômica.

**Exemplos de transformações monotônicas úteis**:

- A Cobb-Douglas \(u = x_1^a x_2^b\) pode ser transformada em \(\hat{u} = a \ln x_1 + b \ln x_2\) via \(f(u) = \ln(u)\), o que simplifica os cálculos.
- Qualquer função pode ser normalizada de modo que \(\hat{u} = \frac{a}{a+b} \ln x_1 + \frac{b}{a+b} \ln x_2\), com expoentes somando 1.

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

As seções anteriores construíram progressivamente o arcabouço teórico das preferências: partimos de axiomas, chegamos à função de utilidade, derivamos curvas de indiferença e TMS, exploramos formas funcionais específicas e, por fim, demonstramos a invariância ordinal. Antes de consolidar esses conceitos no resumo do capítulo, vale observar como esse arcabouço se manifesta — e, por vezes, é posto à prova — em um contexto histórico concreto do Brasil.

## 🇧🇷 Box Brasil: Mudança de Preferências do Consumidor Brasileiro Pós-Estabilização

!!! box-brasil "Box Brasil — O Plano Real e a revolução no consumo"
    A hiperinflação brasileira que antecedeu o Plano Real (julho de 1994) distorcia profundamente as preferências reveladas dos consumidores. Com taxas de inflação que chegaram a superar 2.000% ao ano em 1993, o comportamento de compra era dominado pela **antecipação de consumo**: famílias corriam ao supermercado no dia do pagamento para converter salários em bens antes que os preços subissem.

    Dados da Pesquisa de Orçamentos Familiares (POF) do IBGE revelam mudanças marcantes nos padrões de consumo ao longo das décadas:

    - **Antes da estabilização (POF 1987-88)**: famílias de baixa renda concentravam até 53% dos gastos em alimentação, com forte preferência por produtos estocáveis e não perecíveis — um reflexo racional da tentativa de manter o valor real da renda.
    - **Após a estabilização (POF 1995-96 e 2002-03)**: a participação da alimentação caiu para cerca de 33% nas famílias de menor renda, com diversificação para bens duráveis, serviços de lazer e educação.
    - **POF 2017-18**: a tendência de diversificação se manteve, com crescimento expressivo dos gastos com comunicação (telefonia móvel) e transporte.

    Do ponto de vista da teoria das preferências, a estabilização monetária não apenas alterou a **restrição orçamentária** (via ganho de renda real, sobretudo para os mais pobres), mas também permitiu que as **preferências subjacentes** se manifestassem sem a distorção imposta pelo imposto inflacionário.

    O conceito de TMS decrescente ganha concretude nesse contexto: à medida que cestas de alimentação básica se tornaram acessíveis com menor fração da renda, os consumidores puderam mover-se ao longo de suas curvas de indiferença em direção a cestas mais diversificadas.

    Vasconcellos e Garcia (2014) contextualizam os ciclos econômicos brasileiros que moldaram essas transformações nas escolhas de consumo.

    **Fonte**: IBGE, Pesquisa de Orçamentos Familiares (várias edições); Barros, R. P. de; Foguel, M. N.; Ulyssea, G. (orgs.). *Desigualdade de renda no Brasil: uma análise da queda recente*. Brasília: IPEA, 2007.

---

## 📋 Resumo do Capítulo

- A teoria do consumidor parte de **axiomas sobre preferências** — completude, transitividade, continuidade e monotonicidade — que estabelecem regras mínimas de coerência para ordenar cestas de consumo.
- Sob esses axiomas, o **Teorema de Debreu** garante a existência de uma **função de utilidade** contínua que representa as preferências. A utilidade é **ordinal** (apenas o ordenamento importa, não os valores absolutos).
- As **curvas de indiferença** são curvas de nível da função de utilidade: cobrem todo o espaço, não se cruzam, têm inclinação negativa e, sob convexidade estrita, são abauladas em direção à origem (refletindo preferência por variedade).
- A **taxa marginal de substituição (TMS)** mede a taxa de troca subjetiva entre bens ao longo da curva de indiferença e equivale à razão das utilidades marginais: \(\text{TMS}_{12} = \text{UMg}_1 / \text{UMg}_2\). A TMS decrescente equivale à convexidade estrita das preferências.
- O capítulo apresenta as principais famílias de funções de utilidade — **Cobb-Douglas**, **substitutos perfeitos**, **complementos perfeitos**, **CES** e **quase-linear** — cada uma com formato de curvas de indiferença e elasticidade de substituição distintos.
- **Preferências homotéticas** (TMS depende apenas da razão \(x_1/x_2\)) geram curvas de Engel lineares e participação constante na despesa, enquanto preferências **quase-lineares** eliminam o efeito renda sobre um dos bens.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Relação de preferência (\(\succsim\)) | Ordenamento sobre cestas de consumo indicando que uma cesta é "pelo menos tão boa quanto" outra. |
| Completude | Axioma que exige que o consumidor consiga comparar quaisquer duas cestas. |
| Transitividade | Axioma de consistência: se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{z}\), então \(\mathbf{x} \succsim \mathbf{z}\). |
| Monotonicidade | "Mais é melhor": cestas com mais de pelo menos um bem são estritamente preferidas. |
| Função de utilidade | Função \(u: X \to \mathbb{R}\) que representa preferências: \(\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y})\). É ordinal. |
| Curva de indiferença | Conjunto de cestas que proporcionam o mesmo nível de utilidade; curva de nível de \(u\). |
| Taxa marginal de substituição (TMS) | Quantidade do bem 2 que o consumidor abre mão por uma unidade adicional do bem 1, mantendo a utilidade constante; igual a \(\text{UMg}_1/\text{UMg}_2\). |
| Elasticidade de substituição (\(\sigma\)) | Mede a facilidade com que o consumidor substitui entre bens; varia de 0 (complementos perfeitos) a \(\infty\) (substitutos perfeitos). |
| Preferências homotéticas | Preferências cuja TMS depende apenas da razão \(x_1/x_2\); geram elasticidade-renda unitária e participação constante na despesa. |
| Utilidade quase-linear | Função \(u = v(x_1) + x_2\) em que todo aumento de renda vai para \(x_2\); elimina o efeito renda sobre \(x_1\) e iguala as medidas de bem-estar (VC = VE = \(\Delta\)EC). |

---

## ✏️ Exercícios

<a id="ex-3-1"></a>**Exercício 3.1.** Considere um consumidor com preferências sobre dois bens (\(x_1, x_2\)) representadas pela função de utilidade \(u(x_1, x_2) = x_1^{1/3} x_2^{2/3}\).

(a) Calcule a TMS\(_{12}\).

(b) Qual o valor da TMS no ponto \((x_1, x_2) = (4, 8)\)? Interprete economicamente.

(c) Mostre que a TMS é decrescente ao longo de uma curva de indiferença (ou seja, \(\partial \text{TMS}_{12} / \partial x_1 < 0\) ao longo de \(u = \bar{u}\)).

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-1)

---

<a id="ex-3-2"></a>**Exercício 3.2.** Mostre que a função de utilidade \(u(x_1, x_2) = \ln x_1 + 2 \ln x_2\) representa as mesmas preferências que \(v(x_1, x_2) = x_1 \cdot x_2^2\). Verifique que ambas produzem a mesma TMS.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-2)

---

<a id="ex-3-3"></a>**Exercício 3.3.** Um consumidor tem preferências do tipo CES com \(\rho = -1\):

\[
u(x_1, x_2) = \left(x_1^{-1} + x_2^{-1}\right)^{-1}.
\]

(a) Calcule a elasticidade de substituição.

(b) Derive a TMS\(_{12}\).

(c) Esboce as curvas de indiferença. Elas estão mais próximas do caso Cobb-Douglas ou do caso de complementos perfeitos? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-3)

---

<a id="ex-3-4"></a>**Exercício 3.4.** Considere preferências quase-lineares \(u(x_1, x_2) = \sqrt{x_1} + x_2\).

(a) Calcule a TMS\(_{12}\) e mostre que ela depende apenas de \(x_1\).

(b) Desenhe duas curvas de indiferença e mostre que elas são translações verticais uma da outra.

(c) Explique por que, nesse caso, a demanda pelo bem 1 é independente da renda (para soluções interiores).

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-4)

---

<a id="ex-3-5"></a>**Exercício 3.5.** Um economista propõe representar as preferências de um consumidor pela função \(u(x_1, x_2) = x_1^2 + x_2^2\).

(a) As curvas de indiferença dessa função são convexas em relação à origem? Justifique.

(b) A TMS é decrescente ao longo de uma curva de indiferença?

(c) Essa função satisfaz o axioma de preferências estritamente convexas? Que problema isso gera para a existência de soluções interiores no problema de otimização do consumidor?

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2019 — Questão 01"
    Com relação às preferências do consumidor, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Sendo \(U(x, y)\) a função de utilidade em dois bens \(x\) e \(y\), \(U(x, y) = \ln x \cdot \ln y\) representa uma função de utilidade quase-linear. |
    | 1 | Podemos sempre extrair a transformação monotônica da função de utilidade do tipo Cobb-Douglas. |
    | 2 | Uma função de utilidade do tipo \(U(x, y) = (x + y)^{0,5}\) implica que \(x\) e \(y\) são bens substitutos perfeitos. |
    | 3 | Uma função de utilidade do tipo \(U(x, y) = x + y\) implica que \(x\) e \(y\) são bens complementares perfeitos. |
    | 4 | \(f(U) = U^2\) é uma transformação monotônica apenas para \(U\) positivo. |

    ??? success "Gabarito"
        **Respostas: F V V F V**

        **Justificativa por item:**

        - **Item 0 — F:** A função \(U(x,y) = \ln x \cdot \ln y\) não é quase-linear. Uma função quase-linear tem a forma \(v(x_1) + x_2\), isto é, é linear em um dos bens e não linear no outro. O produto de logaritmos não se enquadra nessa estrutura.
        - **Item 1 — V:** Da Cobb-Douglas \(u = x^a y^b\), podemos aplicar a transformação monotônica \(f(u) = \ln(u)\), obtendo \(\hat{u} = a\ln x + b\ln y\). Como \(f\) é estritamente crescente para \(u > 0\) (e a Cobb-Douglas é positiva no interior do consumo), a transformação é sempre válida.
        - **Item 2 — V:** A função \(U(x,y) = (x+y)^{0,5}\) é uma transformação monotônica de \(V(x,y) = x + y\), via \(f(V) = V^{0,5}\), que é estritamente crescente para \(V > 0\). Como \(V = x + y\) representa substitutos perfeitos (TMS constante igual a 1), \(U\) também representa substitutos perfeitos (Proposição 3.3).
        - **Item 3 — F:** A função \(U(x,y) = x + y\) é a representação clássica de substitutos perfeitos, com curvas de indiferença retas e TMS constante igual a 1. Complementares perfeitos seriam representados por \(\min\{x, y\}\).
        - **Item 4 — V:** A função \(f(U) = U^2\) tem derivada \(f'(U) = 2U\). Para \(U > 0\), \(f'(U) > 0\) e a transformação é estritamente crescente (monotônica). Para \(U < 0\), \(f'(U) < 0\) e a função é decrescente, invertendo o ordenamento — logo, não é uma transformação monotônica nesse domínio.

??? question "ANPEC 2021 — Questão 01"
    Seja um consumidor com função de utilidade dada por \(U = X^2 + Y^2\), em que \(X\) é a quantidade consumida de entradas de cinema e \(Y\) é a quantidade consumida de pizzas. Com relação a este consumidor, verifique quais das seguintes afirmações são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A taxa marginal de substituição deste consumidor é \(X/Y\). |
    | 1 | A cesta \((X = 2, Y = 1)\) e a cesta \((X = 1, Y = 2)\) se encontram sobre a mesma curva de indiferença. |
    | 2 | As curvas de indiferença do consumidor são estritamente convexas entre as cestas \((X = 2, Y = 1)\) e \((X = 1, Y = 2)\). |
    | 3 | \(X\) e \(Y\) são substitutos perfeitos. |
    | 4 | O bem \(Y\) é um mal. |

    ??? success "Gabarito"
        **Respostas: V V F F F**

        **Justificativa por item:**

        - **Item 0 — V:** \(\text{TMS} = \frac{\text{UMg}_X}{\text{UMg}_Y} = \frac{2X}{2Y} = \frac{X}{Y}\). Correto.
        - **Item 1 — V:** \(U(2,1) = 4 + 1 = 5\) e \(U(1,2) = 1 + 4 = 5\). Ambas geram o mesmo nível de utilidade, logo pertencem à mesma curva de indiferença.
        - **Item 2 — F:** As curvas de indiferença de \(U = X^2 + Y^2 = c\) são arcos de circunferência — côncavas em relação à origem, não convexas. O conjunto superior \(\{(X,Y): X^2+Y^2 \geq c\}\) não é convexo. Este é exatamente o caso discutido no Exercício 3.5 do capítulo.
        - **Item 3 — F:** Substitutos perfeitos têm curvas de indiferença retas (TMS constante). Aqui, a TMS \(= X/Y\) varia com a composição da cesta e as curvas são circulares, não retas.
        - **Item 4 — F:** \(\text{UMg}_Y = 2Y > 0\) para \(Y > 0\), logo mais pizza aumenta a utilidade. O bem \(Y\) não é um mal.

??? question "ANPEC 2021 — Questão 02"
    Considere a Teoria da Utilidade para responder quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Todos os tipos de preferências podem ser representados pela função de utilidade. |
    | 1 | Sejam dois bens, \(X\) e \(Y\). A uma função de utilidade dada por \(U(X, Y) = XY\) corresponde uma curva de indiferença típica dada por \(Y = cX\), em que \(c\) é uma constante. |
    | 2 | Se dois bens (\(A\) e \(B\)) forem substitutos perfeitos, pode-se, em geral, representar sua função de utilidade na forma \(U(A, B) = c_1 A + c_2 B\), em que \(c_1\) e \(c_2\) são constantes positivas. |
    | 3 | A inclinação de uma curva de indiferença típica da função de utilidade \(U(A, B) = c_1 A + c_2 B\), em que \(c_1\) e \(c_2\) são constantes positivas, é \(-c_1/c_2\). |
    | 4 | A transformação monotônica de uma função de utilidade não altera a taxa marginal de substituição (TMS), porque a TMS é medida ao longo de uma curva de indiferença, e a utilidade permanece constante ao longo da curva de indiferença. |

    ??? success "Gabarito"
        **Respostas: F F V V V**

        **Justificativa por item:**

        - **Item 0 — F:** Nem todos os tipos de preferências admitem representação por função de utilidade. As preferências lexicográficas, por exemplo, são completas e transitivas mas violam o axioma de continuidade — e, conforme discutido na Seção 3.1, sem continuidade não se garante a existência de uma função de utilidade contínua (Teorema 3.1).
        - **Item 1 — F:** Para \(U(X,Y) = XY\), as curvas de indiferença são \(XY = k\), ou seja, \(Y = k/X\) — hipérboles retangulares, não retas pela origem. A equação \(Y = cX\) descreveria retas, o que é incorreto.
        - **Item 2 — V:** A função \(U(A,B) = c_1 A + c_2 B\), com \(c_1, c_2 > 0\), gera curvas de indiferença retas com TMS constante \(= c_1/c_2\), que é a definição de substitutos perfeitos.
        - **Item 3 — V:** A inclinação da curva de indiferença é \(dB/dA|_{U=\bar{u}} = -c_1/c_2\). Correto, conforme a Seção 3.6.2.
        - **Item 4 — V:** Uma transformação monotônica \(\hat{u} = f(u)\) preserva as curvas de indiferença (mesmos conjuntos de nível, apenas com rótulos diferentes). Como a TMS depende apenas da inclinação da curva de indiferença, ela é invariante (Proposição 3.3 e Seção 3.7).

??? question "ANPEC 2023 — Questão 03"
    Com relação à Teoria do Consumidor, julgue as afirmações abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se \(U(X, Y) = \sqrt{X} + \sqrt{Y}\), então a elasticidade de substituição é igual a 2. |
    | 1 | Se \(U(X, Y)\) é uma função de utilidade diferenciável homogênea de grau \(k\), com \(U(X, Y) \neq 0\), e se \(\eta_X(X, Y)\) e \(\eta_Y(X, Y)\) denotam a elasticidade de \(U\) relativamente a \(X\) e \(Y\), respectivamente, então \(\eta_X(X, Y) + \eta_Y(X, Y) = k\). |
    | 2 | Considere o conjunto \(X = \bigcup_{n=1}^{\infty}\{1 - 1/n\}\) e defina \(\succsim\) sobre \(X\) por: \(x \succsim y\) se, e somente se, \(\lvert x - 1/2 \rvert \geq \lvert y - 1/2 \rvert\). Então \(\succsim\) é contínua. |
    | 3 | Considere o conjunto \(X = [0,2] \times [0,2]\) e defina \(\succsim\) sobre \(X\) por: \((x,y) \succsim (z,w)\) se, e somente se, \(\lVert (x,y) - (1,1) \rVert \geq \lVert (z,w) - (1,1) \rVert\). Então \((0,0)\) é um elemento maximal. |
    | 4 | A ordem lexicográfica é contínua. |

    ??? success "Gabarito"
        **Respostas: V V F V F**

        **Justificativa por item:**

        - **Item 0 — V:** A função \(U = X^{1/2} + Y^{1/2}\) é uma CES com \(\rho = 1/2\). A elasticidade de substituição é \(\sigma = \frac{1}{1-\rho} = \frac{1}{1-1/2} = 2\). Correto — ver Seção 3.6.4.
        - **Item 1 — V:** Pelo teorema de Euler para funções homogêneas de grau \(k\): \(X \frac{\partial U}{\partial X} + Y \frac{\partial U}{\partial Y} = kU\). Dividindo ambos os lados por \(U \neq 0\): \(\eta_X + \eta_Y = k\), onde \(\eta_i = \frac{x_i}{U}\frac{\partial U}{\partial x_i}\) é a elasticidade de \(U\) em relação ao bem \(i\).
        - **Item 2 — F:** A relação \(\succsim\) definida pela distância a \(1/2\) não satisfaz a propriedade de continuidade nesse conjunto. O conjunto \(X = \{0, 1/2, 2/3, 3/4, \ldots\}\) acumula em \(1 \notin X\), e a "utilidade" \(|x - 1/2|\) converge para \(1/2\) ao longo da sequência \(x_n = 1 - 1/n\) sem nunca atingir esse supremo em \(X\), o que compromete o fechamento dos conjuntos de contorno superiores quando se considera a topologia induzida pela reta real.
        - **Item 3 — V:** A relação ordena cestas pela distância à cesta \((1,1)\): quanto **maior** a distância, melhor. A cesta \((0,0)\) tem distância \(\lVert(0,0)-(1,1)\rVert = \sqrt{2}\), que é a distância máxima possível em \([0,2] \times [0,2]\) a partir de \((1,1)\) (empatando com \((2,2)\), \((0,2)\) e \((2,0)\)). Logo, \((0,0)\) é maximal.
        - **Item 4 — F:** A ordem lexicográfica não é contínua — este é o exemplo clássico discutido na Seção 3.1. Os conjuntos de contorno superior não são fechados, o que impede a representação por função de utilidade contínua (Teorema 3.1).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Falk, A.; Becker, A.; Dohmen, T.; Enke, B.; Huffman, D.; Sunde, U. (2018). [Global Evidence on Economic Preferences](https://doi.org/10.1093/qje/qjy013). *Quarterly Journal of Economics*, 133(4), 1645–1692."
    **Pergunta central:** Os axiomas de preferência apresentados na Seção 3.1 são abstrações teóricas — mas como as preferências reais dos indivíduos variam entre países e dentro de cada sociedade? Existem padrões sistemáticos que conectem preferências a características demográficas, culturais e econômicas? Este artigo é o maior esforço empírico já realizado para responder a essas perguntas.

    **Método:** Falk e coautores construíram o *Global Preference Survey* (GPS), um instrumento de pesquisa experimentalmente validado, aplicado a amostras representativas de 80.000 pessoas em 76 países — incluindo o Brasil. O GPS mede seis dimensões de preferências: paciência (preferência temporal), disposição a assumir riscos, reciprocidade positiva e negativa, altruísmo e confiança. A validação experimental foi realizada comparando as respostas da pesquisa com escolhas em experimentos com incentivos monetários reais.

    **Resultado principal:** Há substancial heterogeneidade de preferências entre países, mas a variação *dentro* de cada país é ainda maior. Globalmente, preferências variam sistematicamente com idade, gênero e habilidade cognitiva — porém essas relações são parcialmente específicas de cada país. O Brasil apresenta níveis intermediários de paciência e disposição ao risco na comparação internacional, com heterogeneidade interna significativa — consistente com a elevada desigualdade socioeconômica do país.

    **Por que isso importa:** O estudo demonstra que as preferências — fundamento de toda a teoria do consumidor — não são uniformes nem entre nem dentro de países. Diferenças de preferência ajudam a explicar variações em poupança, investimento em educação e comportamento de consumo, complementando os modelos baseados apenas em diferenças de renda e preços.

    **Relevância para o capítulo:** O artigo conecta diretamente os axiomas da Seção 3.1 com evidências empíricas: se as preferências variam sistematicamente entre indivíduos, as funções de utilidade que as representam também diferem — o que justifica a diversidade de formas funcionais apresentadas na Seção 3.6. Além disso, a heterogeneidade de preferências dentro do Brasil reforça a importância de modelos que permitam diferenças individuais, como a análise por faixa de renda da POF discutida no Box Brasil sobre Cobb-Douglas.

??? pesquisa "Choi, S.; Kariv, S.; Müller, W.; Silverman, D. (2014). [Who Is (More) Rational?](https://doi.org/10.1257/aer.104.6.1518) *American Economic Review*, 104(6), 1518–1550."
    **Pergunta central:** Os axiomas de preferência — especialmente a transitividade e a completude — são *de fato* satisfeitos pelas escolhas dos consumidores reais? E se houver variação na "racionalidade" das decisões, ela está correlacionada com resultados econômicos importantes, como a acumulação de riqueza?

    **Método:** Choi e coautores conduziram um experimento em larga escala com uma amostra representativa da população holandesa (painel CentERpanel). Cada participante tomou 25 decisões de alocação entre dois bens sob restrições orçamentárias variadas. Os autores testaram se as escolhas observadas satisfazem o GARP (*Generalized Axiom of Revealed Preference*) — a condição necessária e suficiente para que os dados sejam consistentes com a maximização de alguma função de utilidade bem comportada (Teorema 3.1).

    **Resultado principal:** A consistência com GARP varia substancialmente entre indivíduos: enquanto muitos participantes fazem escolhas quase perfeitamente racionais, outros violam sistematicamente os axiomas. Crucialmente, a consistência com a maximização de utilidade está fortemente correlacionada com a riqueza: um aumento de um desvio-padrão na consistência está associado a 15-19% a mais de riqueza acumulada. Essa associação é robusta mesmo controlando para renda, educação e outras variáveis.

    **Por que isso importa:** O resultado sugere que a capacidade de tomar decisões consistentes com uma função de utilidade — ou seja, de satisfazer os axiomas da Seção 3.1 na prática — não é apenas uma abstração teórica, mas uma habilidade com consequências econômicas reais e mensuráveis.

    **Relevância para o capítulo:** Este artigo testa empiricamente os fundamentos do Capítulo 3. O GARP é a tradução operacional dos axiomas de completude e transitividade para dados de consumo observados. Os resultados mostram que, embora a maioria dos consumidores se comporte de forma aproximadamente consistente com os axiomas, há variação significativa — o que justifica tanto o uso do arcabouço axiomático como ponto de partida quanto a atenção a seus limites, discutidos na observação sobre preferências lexicográficas (Seção 3.1).

## 📚 Referências do Capítulo

- Barros, Ricardo Paes de, Miguel Nathan Foguel, e Gabriel Ulyssea, orgs. 2007. [*Desigualdade de renda no Brasil: uma análise da queda recente*](https://repositorio.ipea.gov.br/handle/11058/3249). Brasília: IPEA.
- Besanko, David, e Ronald R. Braeutigam. 2014. [*Microeconomics*](https://books.google.com.br/books?id=BeoengEACAAJ). 5ª ed. Hoboken: Wiley. Capítulos 3–4.
- Choi, Syngjoo, Shachar Kariv, Wieland Müller, e Dan Silverman. 2014. "[Who Is (More) Rational?](https://doi.org/10.1257/aer.104.6.1518)" *American Economic Review* 104 (6): 1518–1550.
- Debreu, Gerard. 1954. "[Representation of a preference ordering by a numerical function](https://www.cambridge.org/core/books/abs/mathematical-economics/representation-of-a-preference-ordering-by-a-numerical-function/009AEFFF2E07235C5BBFFEF226353FE8)." In *Decision Processes*, editado por Robert M. Thrall, Clyde H. Coombs, e Robert L. Davis, 159–165. New York: Wiley.
- Falk, Armin, Anke Becker, Thomas Dohmen, Benjamin Enke, David Huffman, e Uwe Sunde. 2018. "[Global Evidence on Economic Preferences.](https://doi.org/10.1093/qje/qjx003)" *Quarterly Journal of Economics* 133 (4): 1645–1692.
- IBGE — Instituto Brasileiro de Geografia e Estatística. 2019. [*Pesquisa de Orçamentos Familiares (POF) 2017–2018: Primeiros Resultados*](https://www.ibge.gov.br/estatisticas/sociais/rendimento-despesa-e-consumo/9050-pesquisa-de-orcamentos-familiares.html). Rio de Janeiro: IBGE.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulo 3.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 3.
- Varian, Hal R. 2015. [*Microeconomia: uma abordagem moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulos 3–5.
