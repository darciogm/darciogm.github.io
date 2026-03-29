# 3.4–3.5 TMS e Utilidade Marginal

## 3.4 Quanto Cerveja Vale um Café? A Taxa Marginal de Substituição

As curvas de indiferença mostram *o quê* o consumidor aceita; a TMS diz *a que preço*. Imagine que você tem 10 fatias de pizza e 2 cervejas. Alguém te oferece trocar 1 pizza por 1 cerveja. Você aceita? Provavelmente sim — pizza está sobrando, cerveja está escassa. Mas e se já tiver 10 cervejas e 2 pizzas? Agora a troca é desvantajosa. A **taxa marginal de substituição (TMS)** captura exatamente essa lógica: quantas unidades do bem 2 você topa ceder por uma unidade a mais do bem 1, *sem perder satisfação*.

A TMS é, talvez, o conceito mais operacional de toda a teoria do consumidor. No próximo capítulo, veremos que o consumidor está no ótimo quando sua TMS (o quanto ele *quer* trocar) se iguala à razão de preços (o quanto o mercado *cobra* para trocar). Se o valor subjetivo e o preço de mercado divergem, há um negócio a ser feito — e o consumidor faz.

!!! atividade "Atividade — Sua TMS pessoal"

    **Passo 1 (individual, 2 min):** Você tem 10 fatias de pizza e 2 latas de cerveja. Quantas fatias de pizza você toparia trocar por 1 cerveja extra? Anote um número.

    **Passo 2 (individual, 1 min):** Agora inverta: você tem 2 fatias de pizza e 10 cervejas. Quantas fatias toparia trocar por 1 cerveja? Anote.

    **Passo 3 (em dupla, 3 min):** Compare com o colega. (a) Os números de vocês são iguais? Provavelmente não — preferências são subjetivas. (b) O número do Passo 2 é menor que o do Passo 1? Quase certamente sim. Esse é o fenômeno da **TMS decrescente**.

    **Debrief (turma):** O professor formaliza: a TMS caiu porque pizza ficou escassa e cerveja abundante. A disposição a trocar não é fixa — depende da composição da cesta. Isso é a convexidade estrita em ação.

!!! definition "Taxa marginal de substituição"
    A **taxa marginal de substituição** do bem 1 pelo bem 2 é definida como o valor absoluto da inclinação da curva de indiferença no ponto \((x_1, x_2)\):

    \[
    \text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} \label{eq:3.4.2} \tag{3.4.2}
    \]

    A TMS mede a quantidade do bem 2 que o consumidor está disposto a abrir mão para obter uma unidade adicional do bem 1, mantendo o nível de utilidade constante.

!!! info "Prêmio Nobel — John R. Hicks (1972)"

    **John Richard Hicks** (1904–1989) foi um economista britânico, formado na Universidade de Oxford. Foi professor em Manchester, Oxford e na London School of Economics. Dividiu o Nobel com Kenneth Arrow.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Em *Value and Capital* (1939), Hicks axiomatizou a teoria do consumidor, introduzindo a taxa marginal de substituição como ferramenta central, e desenvolveu o conceito de demanda compensada (hicksiana), que separa efeitos renda e substituição.

    **Conexão com este capítulo:**
    A taxa marginal de substituição (TMS) formalizada por Hicks é o conceito central deste capítulo. A condição de tangência entre a curva de indiferença e a restrição orçamentária — que exige igualdade entre TMS e razão de preços — é a base da teoria da escolha do consumidor desenvolvida aqui.

**Interpretação econômica.** A TMS é a **taxa de troca subjetiva** do consumidor — o "preço pessoal" que ele atribui ao bem 1 em termos do bem 2. Se \(\text{TMS}_{12} = 3\), o consumidor está disposto a abrir mão de até 3 unidades do bem 2 para obter 1 unidade adicional do bem 1, permanecendo no mesmo nível de satisfação. Note que essa taxa é puramente subjetiva e pode diferir radicalmente da razão de preços do mercado — é precisamente essa diferença que cria incentivos para o consumidor realocar seu consumo.

**TMS decrescente.** Sob preferências estritamente convexas, a TMS é decrescente ao longo da curva de indiferença: à medida que o consumidor adquire mais do bem 1, cada unidade adicional torna-se relativamente menos valiosa em relação ao bem 2, que se torna cada vez mais escasso na cesta. O consumidor, portanto, está disposto a sacrificar cada vez menos do bem 2 para obter mais uma unidade do bem 1. Esta propriedade — matematicamente equivalente à convexidade estrita das curvas de indiferença — reflete a ideia intuitiva de que os consumidores valorizam a diversidade: cestas equilibradas são preferidas a cestas extremas.

!!! idea "Intuição Econômica"
    **Em uma frase:** A TMS mede "quanto do bem 2 você toparia trocar por mais uma unidade do bem 1" — é o seu preço pessoal de troca.

    **Pense assim:** Imagine que você tem muito arroz e pouco feijão em casa. Você toparia trocar bastante arroz por um pouco de feijão. Mas à medida que ganha feijão e perde arroz, cada porção adicional de feijão vale menos para você, e cada porção de arroz que abre mão dói mais. Essa "taxa de troca pessoal" que vai caindo é a TMS decrescente.

    **Por que isso importa:** No capítulo seguinte veremos que o consumidor otimiza quando sua TMS iguala a razão de preços do mercado — é o ponto onde o "preço pessoal" coincide com o "preço de mercado".

!!! info "Exemplo — TMS e escolhas alimentares no Brasil"
    Considere um consumidor brasileiro escolhendo entre alimentação dentro de casa (\(x_1\)) e alimentação fora de casa (\(x_2\)). Segundo a POF 2017-2018 do IBGE, a despesa média per capita com alimentação no domicílio era de aproximadamente R\$ 136 mensais, contra R\$ 73 com alimentação fora. Uma família com muito gasto em alimentação domiciliar (cesta "extrema") teria uma TMS alta: estaria disposta a abrir mão de várias refeições caseiras por uma refeição fora. À medida que aumenta a alimentação fora de casa, a TMS diminui — o consumidor valoriza cada vez menos uma refeição adicional fora. Essa TMS decrescente é a manifestação empírica da convexidade estrita das preferências.

---

## 3.5 A Última Fatia de Pizza: Utilidade Marginal e TMS

Na seção anterior, a TMS era uma inclinação que "víamos" no gráfico. Agora queremos *calculá-la* — sem desenhar nada. O truque: a TMS é simplesmente a razão entre as **utilidades marginais** dos dois bens. A utilidade marginal mede o "quanto a mais de satisfação" que uma unidade extra de um bem proporciona (nosso velho amigo *ceteris paribus*). Se a próxima fatia de pizza te dá prazer 3 e a próxima cerveja te dá prazer 6, você toparia trocar até 2 pizzas por 1 cerveja — e a TMS é exatamente 2. Vejamos isso com rigor.

Formalmente, a **utilidade marginal** do bem \(i\) é a derivada parcial da função de utilidade em relação à quantidade desse bem:

\[
\text{UMg}_i = \frac{\partial u}{\partial x_i}. \label{eq:3.5.3} \tag{3.5.3}
\]

Se a utilidade marginal é positiva — o que é garantido pela monotonicidade —, o consumidor sempre se beneficia de uma unidade adicional do bem \(i\), mantendo tudo o mais constante. Contudo, é importante lembrar que, como a utilidade é ordinal (Seção 3.2), o valor numérico da utilidade marginal *em si* não possui significado econômico absoluto — ele depende da escala escolhida para representar as preferências. O que *tem* significado é a razão entre utilidades marginais, como veremos imediatamente.

!!! warning "Cuidado: utilidade marginal não tem significado isolado"
    A utilidade marginal \(\text{UMg}_i\) muda de valor quando aplicamos uma transformação monotônica à função de utilidade (Seção 3.7). Se \(\hat{u} = \ln(u)\), a utilidade marginal passa de \(\partial u / \partial x_i\) para \(\frac{1}{u} \cdot \partial u / \partial x_i\) — um valor completamente diferente. Por isso, afirmações como "a utilidade marginal do bem 1 é 5" não possuem conteúdo econômico: o número 5 depende arbitrariamente da escala escolhida.

    O que **tem** significado econômico é a **razão** \(\text{UMg}_1 / \text{UMg}_2\), que é a TMS — invariante sob transformações monotônicas. Não confunda, ainda, "utilidade marginal decrescente" (propriedade cardinal, sem significado ordinal) com "TMS decrescente" (propriedade ordinal, com significado econômico preciso: preferências convexas).

A relação fundamental entre a utilidade marginal, definida pela equação $\eqref{eq:3.5.3}$, e a TMS, definida pela equação $\eqref{eq:3.4.2}$, revela que a inclinação da curva de indiferença pode ser inteiramente expressa em termos de derivadas da função de utilidade. Essa ponte entre geometria e cálculo — entre a inclinação visual da curva e as derivadas parciais da função — é dada pela proposição a seguir.

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

<iframe src="/micro-book/graficos/cap03/tms-ponto.html" title="Figura 3.2 — Taxa Marginal de Substituição (TMS)" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 3.2 — Taxa Marginal de Substituição (TMS).** Arraste o ponto P ao longo da curva de indiferença para ver a reta tangente e o cálculo da \(\text{TMS} = \text{UMg}_1/\text{UMg}_2\) em tempo real. Selecione entre Cobb-Douglas, linear, Leontief, CES e quase-linear.
</div>

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
