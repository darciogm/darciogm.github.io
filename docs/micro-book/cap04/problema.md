# 4.1–4.3 O Problema do Consumidor

## 4.1 A Conta Que Não Fecha: O Problema do Consumidor

O problema central da teoria do consumidor pode ser enunciado de forma surpreendentemente simples: dado um orçamento limitado, como o consumidor distribui seus gastos para obter a maior satisfação possível? Essa pergunta, formulada pela primeira vez de modo rigoroso por Alfred Marshall (1890) e formalizada por John Hicks (1939) e Paul Samuelson (1947), é o ponto de partida de toda a análise de demanda.

A ideia visual é simples e vale antecipar: o consumidor busca a curva de indiferença mais alta que ainda cabe dentro do triângulo orçamentário. O ponto ótimo é onde a curva *tangencia* a reta — nem acima (impossível), nem abaixo (desperdício). A Seção 4.2 desenvolve essa intuição graficamente; aqui, traduzimos a mesma ideia em equações.

O consumidor resolve o seguinte problema de **maximização da utilidade**:

\[
\max_{x_1, x_2} \; u(x_1, x_2) \quad \text{sujeito a} \quad p_1 x_1 + p_2 x_2 \leq I, \quad x_1 \geq 0, \quad x_2 \geq 0, \label{eq:4.1.1} \tag{4.1.1}
\]

onde \(p_1, p_2 > 0\) são os preços dos bens e \(I > 0\) é a renda nominal do consumidor.

!!! definition "Conjunto orçamentário"
    O **conjunto orçamentário** é definido como:

    \[
    B(p_1, p_2, I) = \{(x_1, x_2) \in \mathbb{R}^2_+ : p_1 x_1 + p_2 x_2 \leq I\}. \label{eq:4.1.2} \tag{4.1.2}
    \]

    A fronteira deste conjunto, \(p_1 x_1 + p_2 x_2 = I\), é a **reta orçamentária**. Sua inclinação é \(-p_1/p_2\), refletindo o **custo de oportunidade** de uma unidade do bem 1 em termos do bem 2.

Sob monotonicidade das preferências (Axioma 4 do Capítulo 3), a restrição orçamentária é satisfeita com igualdade na solução ótima: o consumidor gasta toda a renda. Afinal, se sobrasse dinheiro, ele poderia comprar mais de algum bem e aumentar sua utilidade — contradizendo a suposição de que estava no ótimo. Esse resultado é a **lei de Walras** aplicada ao consumidor individual: \(\mathbf{p} \cdot \mathbf{x}^* = I\). A restrição de desigualdade da equação $\eqref{eq:4.1.1}$ se reduz, portanto, a uma igualdade — o que nos permite aplicar diretamente o método de Lagrange (Seção 2.5). Essa conclusão, aparentemente simples, tem implicações profundas: ela nos diz que a análise do comportamento do consumidor pode se concentrar na *fronteira* do conjunto orçamentário, e não no seu interior. É na reta orçamentária que as escolhas ótimas acontecem — e é aí que os preços relativos exercem seu papel decisivo.

A formulação em \eqref{eq:4.1.1} admite generalizações naturais: para \(n\) bens, a restrição passa a ser \(\sum_{i=1}^n p_i x_i \leq I\). Para bens com externalidades ou racionamento, o conjunto viável pode diferir. Para consumo intertemporal, a renda \(I\) é substituída pelo valor presente da riqueza. Essas extensões serão exploradas nos Capítulos 7 e 8; por ora, trabalhamos com a formulação estática e com dois bens, que já contém toda a riqueza conceitual do problema.

!!! idea "Intuição Econômica"
    **Em uma frase:** A restrição orçamentária diz que toda escolha tem um custo de oportunidade — comprar mais de um bem significa abrir mão de outro.

    **Pense assim:** Imagine que você tem R$ 300 para gastar no mês entre carne e transporte. Cada real a mais gasto em carne é um real a menos em passagem de ônibus. A inclinação da reta orçamentária (\(-p_1/p_2\)) é exatamente esse "preço" da troca: se a carne custa R$ 40/kg e a passagem R$ 5, cada quilo de carne "custa" 8 passagens.

    **Por que isso importa:** Todo debate sobre política de preços — subsídios ao gás de cozinha, tarifa zero no transporte público — é, no fundo, sobre como deslocar ou rotacionar essa reta orçamentária das famílias.

<iframe src="/micro-book/graficos/cap04/restricao-orcamentaria.html" title="Figura 4.1 — Restrição Orçamentária" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 4.1 — Restrição Orçamentária.** Ajuste renda e preços com os sliders. Observe como a reta orçamentária se desloca e como a inclinação reflete o custo de oportunidade.
</div>

!!! box-brasil "Box Brasil 4.1 — Combustíveis e a reta orçamentária das famílias brasileiras"
    Um exemplo concreto de como preços afetam a restrição orçamentária vem do mercado de combustíveis no Brasil. Segundo dados da [ANP](https://www.gov.br/anp) (Agência Nacional do Petróleo), o preço médio da gasolina comum ao consumidor passou de cerca de R$ 4,50/litro no início de 2020 para R$ 7,26/litro em março de 2022 — um aumento superior a 60%. Esse aumento expressivo alterou significativamente a reta orçamentária das famílias, especialmente as de renda mais baixa.

    De acordo com a POF 2017–2018 ([IBGE](https://www.ibge.gov.br)), famílias com renda de até 2 salários mínimos destinavam cerca de 3,5% de seus gastos a combustíveis, enquanto famílias com renda acima de 25 salários mínimos destinavam 6,1%. Porém, como proporção da renda disponível para outros bens, o impacto é relativamente maior para as famílias mais pobres.

    Em termos do modelo, se \(x_1\) = litros de gasolina e \(x_2\) = cesta de demais bens (com preço normalizado), o aumento de \(p_1\) de 4,50 para 7,26 **rotaciona** a reta orçamentária para dentro ao longo do eixo \(x_1\): a quantidade máxima de gasolina que a família pode comprar (intercepto horizontal \(I/p_1\)) cai drasticamente, enquanto o intercepto vertical \(I/p_2\) permanece inalterado.

    **Fonte**: ANP, Levantamento de Preços de Combustíveis; IBGE, Pesquisa de Orçamentos Familiares 2017–2018.

---

## 4.2 O Ponto de Tangência: Análise Gráfica com Dois Bens

Antes de soltar o Lagrangeano, vamos *ver* o problema. A abordagem gráfica, aperfeiçoada por Edgeworth e Hicks, é tão boa que muitos economistas resolvem problemas no guardanapo antes de abrir o caderno. A ideia é visualmente irresistível: pegue o mapa de curvas de indiferença (Seção 3.3) e sobreponha a reta orçamentária. O consumidor quer chegar à curva mais alta possível — mas sem sair do triângulo que o bolso permite. A solução? O ponto onde a curva de indiferença *tangencia* a reta orçamentária. É como um alpinista que sobe o mais alto que consegue sem ultrapassar a cerca.

Para uma **solução interior** (\(x_1^* > 0\) e \(x_2^* > 0\)), a condição necessária é a **tangência**:

\[
\text{TMS}_{12} = \frac{p_1}{p_2}. \label{eq:4.2.3} \tag{4.2.3}
\]

Essa condição captura uma ideia fundamental: no ótimo, a taxa subjetiva com que o consumidor está disposto a trocar o bem 2 pelo bem 1 (dada pela inclinação da curva de indiferença) deve ser exatamente igual à taxa objetiva com que o mercado permite essa troca (dada pela inclinação da reta orçamentária). Se as duas taxas diferissem, haveria possibilidade de realocação mutuamente benéfica — e o consumidor não estaria no ótimo.

!!! definition "Condição de tangência"
    No ponto ótimo interior, a taxa marginal de substituição iguala a razão de preços. A **taxa de troca subjetiva** do consumidor (TMS) coincide com a **taxa de troca objetiva** dada pelo mercado (\(p_1/p_2\)). Se a TMS excedesse \(p_1/p_2\), o consumidor poderia aumentar sua utilidade comprando mais do bem 1 e menos do bem 2.

A condição de tangência pode ser reescrita em termos de utilidade marginal ponderada pelo preço:

\[
\frac{\text{UMg}_1}{p_1} = \frac{\text{UMg}_2}{p_2}. \label{eq:4.2.4} \tag{4.2.4}
\]

Esta é a **lei da utilidade marginal ponderada igualada**: no ótimo, a última unidade monetária gasta em cada bem produz o mesmo incremento de utilidade. A intuição é poderosa: se um bem proporcionasse mais utilidade por real do que outro, valeria a pena realocar gastos até que as utilidades marginais por real se igualassem.

Por exemplo, se uma família gasta R$ 200 por mês em streaming e R$ 50 em livros, e percebe que o último real em livros lhe dá mais prazer do que o último real em streaming, a teoria prevê que ela deveria realocar gastos — até o ponto em que o benefício marginal por real seja igual nos dois bens. É esse ajuste contínuo na margem que define o equilíbrio do consumidor.

!!! idea "Intuição Econômica"
    **Em uma frase:** No ponto ótimo, o último real gasto em qualquer bem deve render a mesma satisfação — senão, valeria a pena realocar.

    **Pense assim:** Suponha que o último real gasto em café no supermercado te dá mais prazer que o último real gasto em pão. Então faz sentido comprar menos pão e mais café, até que a satisfação marginal por real se iguale nos dois. É como distribuir água entre vasos: você para quando o nível está igual em todos.

    **Por que isso importa:** Essa condição de tangência (TMS = razão de preços) é a base de toda a análise de demanda — dela derivamos as curvas de demanda e avaliamos o impacto de mudanças de preços.

!!! atividade "Think-Pair-Share — Lump sum ou imposto específico?"
    **Antes de prosseguir, vote individualmente (1 minuto):**

    Um governo precisa arrecadar exatamente R$ 500 de cada família. Considere duas opções:

    - **Opção A:** Imposto de R$ 2 por litro de gasolina.
    - **Opção B:** Imposto fixo de R$ 500 descontado da renda, sem alterar preço nenhum.

    **Pergunta:** Qual opção deixa a família *mais satisfeita* (maior utilidade)?

    - (a) Opção A — porque pelo menos ela pode decidir dirigir menos
    - (b) Opção B — porque não distorce nenhum preço
    - (c) Tanto faz — ambas tiram R$ 500

    **Depois de votar, discuta com um colega (2 minutos) e revote.**

    ??? success "Debrief"
        A resposta é **(b)**. A Opção A arrecada R$ 500 *e* distorce a razão de preços, forçando uma substituição artificial contra a gasolina. A Opção B arrecada os mesmos R$ 500 sem mexer nos preços relativos — a família "perde" o mesmo poder de compra, mas pode realocar livremente. Esse é o **Princípio do Montante Fixo** (Seção 4.5). A alternativa (c) é a armadilha: mesma receita *não* significa mesmo bem-estar. A Seção 4.5 demonstra formalmente por quê.

!!! tip "Soluções de canto"
    Nem todas as soluções são interiores. Para substitutos perfeitos, por exemplo, o consumidor tipicamente consome apenas o bem com maior razão \(a_i/p_i\). Soluções de canto ocorrem quando a TMS no ponto \(x_i = 0\) já é inferior (ou superior) à razão de preços, de modo que a condição de tangência não se verifica em nenhum ponto interior.

<iframe src="/micro-book/graficos/cap04/equilibrio-consumidor.html" title="Figura 4.2 — Equilíbrio do Consumidor" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 4.2 — Equilíbrio do Consumidor.** Varie os preços, a renda e o parâmetro α para visualizar a tangência entre a curva de indiferença e a reta orçamentária. O ponto ótimo é calculado analiticamente.
</div>

---

## 4.3 Do Desenho à Equação: O Lagrangeano com *n* Bens

!!! tip "Ferramentas do Cap. 2"
    Esta seção usa o [método de Lagrange e preço-sombra](../cap02/lagrange.md). Se precisar relembrar, volte lá — leva 10 minutos.

A intuição gráfica da Seção 4.2 e a solução algébrica que segue são *duas formas de dizer a mesma coisa*: tangência = TMS igual à razão de preços = condição de Lagrange. A geometria dá a intuição; a álgebra dá a precisão. Nenhuma substitui a outra.

A análise gráfica, contudo, é limitada a dois bens. No mundo real, consumidores escolhem entre dezenas ou centenas de categorias de bens e serviços — a POF 2017-2018 do IBGE classifica o consumo das famílias brasileiras em mais de 1.500 itens. Como generalizar a condição de tangência para esse cenário multidimensional? Para isso, precisamos do **método de Lagrange**, que traduz a condição geométrica de tangência em um sistema de equações algébricas resolvível para qualquer número de bens. Para uma revisão detalhada do método, incluindo o passo a passo completo e um exercício resolvido com a função CES, veja a [Seção 2.5](../cap02/index.md#25-maximizacao-com-restricoes-o-metodo-de-lagrange).

Para \(n\) bens, o problema do consumidor é:

\[
\max_{\mathbf{x} \in \mathbb{R}^n_+} \; u(\mathbf{x}) \quad \text{sujeito a} \quad \mathbf{p} \cdot \mathbf{x} \leq I. \label{eq:4.3.5} \tag{4.3.5}
\]

Montamos o **lagrangeano**:

\[
\mathcal{L}(\mathbf{x}, \lambda) = u(\mathbf{x}) + \lambda \left(I - \sum_{i=1}^{n} p_i x_i\right). \label{eq:4.3.6} \tag{4.3.6}
\]

As **condições de primeira ordem** (CPOs) para uma solução interior são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial u}{\partial x_i} - \lambda p_i = 0, \quad i = 1, 2, \ldots, n, \label{eq:4.3.7} \tag{4.3.7}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = I - \sum_{i=1}^{n} p_i x_i = 0.
\]

Das CPOs, obtemos:

\[
\frac{\text{UMg}_i}{p_i} = \lambda, \quad \forall \, i. \label{eq:4.3.8} \tag{4.3.8}
\]

Este resultado merece atenção: a equação $\eqref{eq:4.3.8}$ generaliza para \(n\) bens a condição de igualdade da utilidade marginal por real gasto que derivamos graficamente para dois bens na equação $\eqref{eq:4.2.4}$. Em palavras, no ótimo, o último real gasto em *qualquer* bem produz exatamente o mesmo acréscimo de utilidade — e esse acréscimo comum é precisamente \(\lambda\).

O **multiplicador de Lagrange** \(\lambda\) tem, portanto, interpretação econômica precisa: é a **utilidade marginal da renda**, ou seja, o aumento na utilidade máxima quando a renda aumenta em uma unidade marginal. Formalmente, pelo teorema do envelope (Seção 2.6), \(\lambda^* = \partial V / \partial I\), onde \(V\) é a função de utilidade indireta que definiremos na Seção 4.4. Trata-se de uma das grandezas mais importantes da teoria do consumidor, pois conecta variações na renda a variações no bem-estar — informação essencial para avaliar o impacto de políticas de transferência de renda, como o Bolsa Família, sobre o bem-estar das famílias beneficiárias. Um valor elevado de \(\lambda\) indica que a renda adicional produz ganhos substanciais de utilidade — situação típica de consumidores de baixa renda, para quem cada real conta muito. Um valor baixo de \(\lambda\) corresponde a consumidores com renda folgada, nos quais a utilidade marginal da renda já se reduziu.

!!! note "Condições de segunda ordem"
    Para garantir que o ponto encontrado é um máximo, exige-se que a matriz hessiana orlada seja definida negativa sob a restrição. Sob preferências estritamente quase-côncavas (curvas de indiferença estritamente convexas), as condições de segunda ordem são automaticamente satisfeitas.

!!! idea "Intuição Econômica"
    **Em uma frase:** O multiplicador \(\lambda\) é o "preço sombra" da renda — ele mede quanto vale, em termos de utilidade, ter um real a mais.

    **Pense assim:** Se \(\lambda = 3\), isso significa que a cada R$ 1 adicional de renda, o consumidor ganha 3 unidades de utilidade. Para uma família na linha da pobreza, \(\lambda\) é alto: cada real tem muito valor. Para um consumidor de alta renda já satisfeito com seus padrões de consumo, \(\lambda\) é baixo. Essa assimetria está por trás da lógica das transferências progressivas de renda — o mesmo real redistribuído gera mais utilidade agregada quando vai para quem tem \(\lambda\) alto.

    **Por que isso importa:** \(\lambda\) é o elo entre renda e bem-estar. Nas Seções 4.4 e 4.8, veremos que \(\lambda\) reaparece na Identidade de Roy e conecta as funções de utilidade indireta e dispêndio.

### 4.3.1 Demanda Marshalliana

Resolvido o problema de otimização, as quantidades ótimas de cada bem ficam expressas como funções dos preços e da renda. Essas funções — que encapsulam toda a informação sobre o comportamento do consumidor diante de variações em preços e renda — são as **funções de demanda marshalliana** (ou walrasiana), batizadas em homenagem ao economista britânico Alfred Marshall (1842–1924), que sistematizou a análise da demanda em sua obra *Principles of Economics* (1890). Marshall foi o primeiro a apresentar a curva de demanda como relação entre preço e quantidade, estabelecendo o vocabulário analítico que usamos até hoje:

\[
x_i^* = x_i(p_1, p_2, \ldots, p_n, I), \quad i = 1, \ldots, n. \label{eq:4.3.9} \tag{4.3.9}
\]

Essas funções expressam a quantidade ótima de cada bem como função dos preços e da renda.

**Propriedades da demanda marshalliana**:

1. **Homogeneidade de grau zero**: \(x_i(t\mathbf{p}, tI) = x_i(\mathbf{p}, I)\) para todo \(t > 0\). Duplicar todos os preços e a renda não altera as quantidades demandadas — o que importa são preços relativos e renda real.
2. **Lei de Walras**: \(\mathbf{p} \cdot \mathbf{x}(\mathbf{p}, I) = I\). O consumidor gasta toda a renda.
3. **Negatividade do efeito substituição** (via equação de Slutsky — Capítulo 5).

As propriedades da demanda marshalliana revelam regularidades profundas do comportamento do consumidor. A homogeneidade de grau zero, por exemplo, expressa o princípio de que consumidores reagem a preços *relativos*, não nominais — um insight fundamental tanto para a teoria quanto para a compreensão de fenômenos como a ilusão monetária. A lei de Walras, por sua vez, confirma que, sob monotonicidade, o consumidor jamais "desperdiça" renda. A terceira propriedade — negatividade do efeito substituição — será desenvolvida formalmente no Capítulo 5 por meio da equação de Slutsky, que decompõe a resposta da demanda a uma variação de preço em dois componentes: o efeito substituição (sempre negativo) e o efeito renda (cujo sinal depende de o bem ser normal ou inferior).

Essas propriedades não são meras curiosidades teóricas: elas impõem restrições testáveis sobre dados de consumo observados. Se um conjunto de dados de preços e quantidades viola a homogeneidade ou a simetria de Slutsky, então os dados são inconsistentes com a maximização de utilidade — uma aplicação direta da teoria da preferência revelada (GARP), discutida brevemente no Capítulo 3.
