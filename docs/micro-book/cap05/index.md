# Capítulo 5 — Slutsky no Supermercado

> *"Toda variação de preço carrega em si duas forças opostas: uma que empobrece e outra que redireciona."*

No Capítulo 4, o consumidor resolveu o problema: dada a renda e os preços, encontrou a cesta ótima. Fim da história? Nem perto. A vida é feita de *mudanças* — o preço da gasolina sobe, o salário cai, o governo cria um imposto. O que acontece com as escolhas do consumidor? *Esse* é o capítulo em que a teoria realmente começa a morder: por que a curva de demanda desce, como separar o efeito "ficou mais caro" do efeito "fiquei mais pobre", e como medir em reais quanto o consumidor perdeu com um aumento de preço.

A equação central deste capítulo — a Equação de Slutsky — deve seu nome ao economista ucraniano Eugen Slutsky (1880–1948), que a publicou em 1915 no artigo "Sulla teoria del bilancio del consumatore", em italiano. O trabalho permaneceu praticamente ignorado até ser redescoberto por John Hicks e R. G. D. Allen nos anos 1930, tornando-se então peça fundamental da microeconomia moderna. A estrutura do capítulo reflete essa trajetória: partimos das propriedades estáticas das funções de demanda (Seção 5.1), passamos pelas respostas a variações de renda (5.2) e preço (5.3), chegamos à formalização pela Equação de Slutsky (5.4) e suas implicações em termos de elasticidades (5.7), medidas de bem-estar (5.8) e preferência revelada (5.9). Cada seção constrói sobre a anterior, formando uma cadeia lógica que conecta intuição econômica, formalismo matemático e aplicações empíricas ao contexto brasileiro.

---

## 5.1 Funções de Demanda e Suas Propriedades

Antes de perturbar o sistema, vale conferir o que a solução ótima do Capítulo 4 nos garante. As funções de demanda que emergem da otimização não são funções quaisquer — elas obedecem a três propriedades que refletem a lógica da racionalidade. Violar qualquer uma delas seria como encontrar um rio que flui morro acima: possível em teoria, mas forte evidência de que algo está errado no modelo.

O problema de maximização de utilidade do consumidor gera as **funções de demanda marshalliana** (ou não-compensada):

\[
x_i^* = x_i(p_1, p_2, \ldots, p_n, I), \quad i = 1, \ldots, n
\]

que expressam a quantidade ótima de cada bem como função dos preços e da renda.

!!! definition "Funções de demanda marshalliana"
    As funções \(x_i^*(p_1, \ldots, p_n, I)\) são as soluções do problema:

    \[
    \max_{\mathbf{x}} \; U(\mathbf{x}) \quad \text{sujeito a} \quad \sum_{j=1}^n p_j x_j \leq I
    \]

    Essas funções possuem três propriedades fundamentais:

    1. **Homogeneidade de grau zero**: \(x_i(\alpha p_1, \ldots, \alpha p_n, \alpha I) = x_i(p_1, \ldots, p_n, I)\) para todo \(\alpha > 0\).
    2. **Esgotamento da renda** (Lei de Walras): \(\sum_{j=1}^n p_j x_j^* = I\).
    3. **Negatividade do efeito substituição próprio** (consequência da Equação de Slutsky, que veremos adiante).

A propriedade de homogeneidade de grau zero expressa a ausência de **ilusão monetária**: se todos os preços e a renda dobrarem simultaneamente, a cesta ótima permanece inalterada, pois o conjunto orçamentário não se modifica. Em outras palavras, o consumidor racional responde a preços *relativos*, não a valores nominais — um resultado que, embora intuitivo, tem implicações profundas para a neutralidade da moeda em modelos macroeconômicos.

A Lei de Walras, por sua vez, tem um significado econômico preciso: com preferências monótonas (mais é sempre preferível a menos), o consumidor jamais deixa renda ociosa — toda a renda é gasta. Formalmente, isso implica que as funções de demanda formam um sistema interdependente: se conhecemos a demanda por \(n-1\) bens e a renda, a demanda pelo \(n\)-ésimo bem está determinada. Essa interdependência tem consequência direta nas relações de elasticidade que estudaremos na Seção 5.7 — em particular, na Agregação de Engel e na condição de homogeneidade, que são versões em elasticidades das propriedades aqui enunciadas. Do mesmo modo, a propriedade de negatividade do efeito substituição, que formalizaremos na Seção 5.4, é consequência da concavidade da função dispêndio derivada no Capítulo 4 — reforçando que as propriedades das funções de demanda são reflexos das hipóteses sobre preferências, não axiomas independentes.

---

## 5.2 Variações na Renda

Primeira perturbação: o consumidor ficou mais rico (ou mais pobre). O que ele faz com a renda extra? Compra mais de tudo, ou abandona alguns itens e se joga em outros? A resposta depende do *tipo* de bem — e aqui a teoria ganha seu vocabulário mais intuitivo: bens normais, bens inferiores, bens de luxo. As Pesquisas de Orçamentos Familiares (POF) do IBGE, realizadas a cada cinco anos, oferecem precisamente o tipo de variação de renda necessária para traçar empiricamente as curvas de Engel: ao observar famílias em diferentes faixas de renda, podemos inferir como o consumo de cada bem responde ao enriquecimento.

### 5.2.1 Caminho de expansão da renda e curva de Engel

Mantendo os preços \(p_1\) e \(p_2\) fixos e variando a renda \(I\), o conjunto de cestas ótimas traça o **caminho de expansão da renda** no espaço de bens. A projeção desse caminho em um único bem gera a **curva de Engel**, que relaciona a renda à quantidade demandada. Essa ferramenta, batizada em homenagem ao estatístico alemão Ernst Engel (1821–1896), permite visualizar como o consumo de cada bem responde ao enriquecimento ou empobrecimento do consumidor.

!!! definition "Curva de Engel"
    A **curva de Engel** para o bem \(i\) é a função \(x_i^*(I)\) obtida fixando-se todos os preços e variando apenas a renda. Formalmente, é o gráfico do mapeamento \(I \mapsto x_i^*(p_1, \ldots, p_n, I)\).

!!! theorem "Proposição — Curvas de Engel para preferências homotéticas"
    Se as preferências são **homotéticas** (Cap. 3, §3.6.6), então:

    - O caminho de expansão da renda é uma **reta passando pela origem**.
    - As curvas de Engel são **lineares**: \(x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I\).
    - A **elasticidade-renda** é unitária para todos os bens: \(\varepsilon_{x_i, I} = 1\).

    Se as preferências são **quase-lineares** \(u = v(x_1) + x_2\) (Cap. 3, §3.6.5), então:

    - O caminho de expansão da renda é uma **reta vertical** (\(x_1\) fixo).
    - A curva de Engel de \(x_1\) é **horizontal** (elasticidade-renda zero); a de \(x_2\) é linear com inclinação \(1/p_2\).

### 5.2.2 Bens normais e bens inferiores

A forma da curva de Engel conduz naturalmente a uma classificação fundamental: como a demanda por um bem reage a aumentos de renda? Para a maioria dos bens, a resposta é intuitiva — consumimos mais quando ficamos mais ricos. Mas nem sempre é assim, e essa distinção tem consequências importantes para a análise de políticas de redistribuição e crescimento econômico. Vale notar que a classificação de um bem como normal ou inferior não é uma propriedade intrínseca do bem em si, mas do intervalo de renda considerado: um bem pode ser normal para famílias de renda baixa e inferior para famílias de renda alta, à medida que busquem substitutos de maior qualidade.

!!! definition "Bens normais e bens inferiores"
    - Um bem é **normal** se \(\frac{\partial x_i^*}{\partial I} > 0\): a demanda aumenta com a renda.
    - Um bem é **inferior** se \(\frac{\partial x_i^*}{\partial I} < 0\): a demanda diminui quando a renda cresce.

Exemplos clássicos de bens inferiores no contexto brasileiro incluem a farinha de mandioca e o transporte público em certas faixas de renda — à medida que a renda familiar cresce, o consumo desses itens tende a ser substituído por alternativas de maior qualidade percebida.

!!! idea "Intuição Econômica"
    **Em uma frase:** Bens normais e inferiores se distinguem por como você revisa sua dieta — ou sua cesta de consumo — quando seu salário aumenta.

    **Pense assim:** Imagine que você recebe um aumento de 30%. Provavelmente comprará mais carne (bem normal), mais restaurante (bem de luxo), mas talvez menos macarrão instantâneo (bem inferior) — não porque passou a odiar macarrão instantâneo, mas porque agora pode pagar por alternativas que sempre preferiu. A "inferioridade" não é uma propriedade do bem em abstrato; é uma propriedade da relação entre esse bem e sua renda em determinado nível. O mesmo macarrão instantâneo pode ser normal para famílias muito pobres (que antes não podiam nem comprá-lo) e inferior para famílias de renda média.

    **Por que isso importa:** Programas de transferência de renda, como o Bolsa Família, elevam a renda das famílias mais pobres. Se o bem-alvo de uma política de segurança alimentar for inferior para essa faixa de renda, a política pode inadvertidamente *reduzir* seu consumo — exatamente o oposto do objetivo. Conhecer a elasticidade-renda do bem-alvo é, portanto, pré-requisito para desenho eficaz de políticas públicas.

!!! box-brasil "Box Brasil — Farinha de mandioca: um bem inferior em números"
    A farinha de mandioca é talvez o exemplo mais emblemático de bem inferior no Brasil. Dados do [IBGE](https://www.ibge.gov.br) mostram uma queda expressiva no consumo domiciliar per capita: de 7,76 kg/ano na POF 2002–2003 para 2,33 kg/ano na POF 2017–2018, uma redução de 70% em quinze anos.

    **Padrão por faixa de renda:** tanto a frequência de consumo quanto a quantidade média per capita diária de farinha de mandioca são maiores nos quartis de renda mais baixos. A diferença entre o primeiro e o último quartil de renda é acentuada, confirmando o comportamento de bem inferior (\(\varepsilon_{x,I} < 0\)).

    **Heterogeneidade regional:** o padrão de bem inferior manifesta-se com intensidade diferente entre as regiões. A frequência de consumo atinge 40,6% na Região Norte e 20,1% no Nordeste, mas não passa de 4% no Sul, Sudeste e Centro-Oeste. A queda no consumo foi mais intensa no Nordeste (−75%) e no Norte (−68%), precisamente as regiões que experimentaram os maiores ganhos reais de renda no período.

    **Interpretação econômica:** à medida que a renda cresce, as famílias substituem a farinha de mandioca por alimentos de maior valor nutricional percebido — arroz, massas, proteínas animais —, refletindo o deslocamento ao longo da curva de Engel descendente.

    **Fontes**: IBGE, Pesquisa de Orçamentos Familiares 2002–2003 e 2017–2018. IBGE, *Análise do Consumo Alimentar Pessoal no Brasil*, 2020.

### 5.2.3 Bens de luxo e bens de necessidade

Dentro da categoria dos bens normais, existe uma segunda distinção relevante: o consumo cresce proporcionalmente mais ou menos que a renda? Essa pergunta leva à classificação entre bens de luxo e bens de necessidade, que depende da **elasticidade-renda** (que formalizaremos na Seção 5.7). A Lei de Engel — a constatação empírica de que a parcela do orçamento gasta com alimentos decresce conforme a renda cresce — é provavelmente a regularidade mais robusta e universalmente documentada em economia do consumo. Ernst Engel a observou em dados belgas ainda em 1857, e ela tem sido confirmada em praticamente todos os países e épocas desde então, incluindo as POFs brasileiras de 2002–2018:

- **Bem de necessidade**: \(0 < \varepsilon_{x,I} < 1\) — a demanda cresce proporcionalmente menos que a renda.
- **Bem de luxo**: \(\varepsilon_{x,I} > 1\) — a demanda cresce proporcionalmente mais que a renda.

Note que todo bem de luxo é normal, mas nem todo bem normal é de luxo.

<iframe src="../graficos/cap05/curva-engel.html" title="Figura 5.1 — Curva de Engel e caminho de expansão da renda" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 5.1 — Curva de Engel e caminho de expansão da renda.** Painel superior: espaço de bens com restrições orçamentárias para diferentes níveis de renda e o caminho de expansão (azul). Painel inferior: curvas de Engel para \(x_1\) e \(x_2\). Alterne entre Cobb-Douglas (bens normais) e utilidade quase-linear (efeito renda zero para \(x_1\)).
</div>

**Tabela 5.1 — Classificação dos bens pela resposta à renda**

| Tipo de bem | Efeito da ↑ renda sobre demanda | Elasticidade-renda | Exemplo brasileiro |
|---|---|---|---|
| Normal | ↑ | \(\eta > 0\) | Carne bovina |
| Inferior | ↓ | \(\eta < 0\) | Farinha de mandioca |
| Luxo | ↑↑ (mais que proporcional) | \(\eta > 1\) | Serviços, viagens |
| Necessidade | ↑ (menos que proporcional) | \(0 < \eta < 1\) | Alimentação básica |

Recapitulando: sabemos que bens normais sobem com a renda, inferiores caem, e luxos sobem mais que proporcionalmente. A curva de Engel mapeia tudo isso. Até aqui, a vida era simples — apenas renda variava, preços parados. Agora vem o prato principal: o que acontece quando o *preço* de um bem muda? A resposta é mais sutil, porque uma variação de preço faz *duas coisas ao mesmo tempo* — e separá-las é a contribuição central de Slutsky.

---

## 5.3 Variações no Preço: Efeitos Renda e Substituição

Agora vem a jogada mais importante da teoria do consumidor — e uma das ideias mais bonitas de toda a economia. Quando o preço da carne cai, você compra mais carne. Óbvio. Mas *por quê*? Há duas razões misturadas, e separá-las é fundamental:

- A carne ficou **mais barata que o frango** → você troca frango por carne (efeito substituição).
- Com carne mais barata, seu salário **rende mais** → você pode comprar mais de tudo (efeito renda).

No supermercado, esses dois efeitos acontecem ao mesmo tempo, e o consumidor nem percebe a diferença. Mas o governo precisa perceber: se quiser saber o impacto distributivo de uma redução tarifária, precisa saber quanto do aumento de consumo é troca (substituição) e quanto é enriquecimento (renda). A **decomposição de Slutsky** faz exatamente essa cirurgia.

Quando o preço de um bem cai, dois fenômenos ocorrem simultaneamente:

1. **Efeito substituição** (\(ES\)): o bem ficou relativamente mais barato em relação aos demais, induzindo o consumidor a substituir outros bens por ele.
2. **Efeito renda** (\(ER\)): a queda do preço aumenta o poder de compra real do consumidor, permitindo-lhe consumir mais de todos os bens normais.

### 5.3.1 Decomposição de Hicks

Na abordagem de **Hicks**, desenvolvida por John Hicks e R. G. D. Allen em 1934, o efeito substituição é definido mantendo-se o **nível de utilidade** constante. O consumidor é "compensado" de modo a permanecer na mesma curva de indiferença, mas enfrenta a nova razão de preços. Essa abordagem é teoricamente mais elegante porque mantém o conceito de utilidade como referência, mas tem o inconveniente prático de exigir o conhecimento das curvas de indiferença — que não são diretamente observáveis.

\[
\underbrace{\Delta x_i}_{\text{efeito total}} = \underbrace{\Delta x_i^{ES}}_{\substack{\text{efeito substituição} \\ \text{(utilidade constante)}}} + \underbrace{\Delta x_i^{ER}}_{\substack{\text{efeito renda} \\ \text{(poder de compra)}}} \label{eq:5.3.1} \tag{5.3.1}
\]

O efeito substituição de Hicks move o consumidor **ao longo** da curva de indiferença original; o efeito renda move o consumidor **entre** curvas de indiferença.

### 5.3.2 Decomposição de Slutsky

A decomposição de Hicks, embora elegante, exige que conheçamos as curvas de indiferença do consumidor — algo que, na prática, não observamos diretamente. Existe uma alternativa mais operacional? Sim: a abordagem de **Slutsky** propõe um critério de compensação baseado em grandezas observáveis. Na abordagem de Slutsky, o efeito substituição é definido mantendo-se o **poder de compra** constante — ou seja, compensando-se a renda de modo que a cesta original permaneça acessível. A compensação de Slutsky é dada por:

\[
\Delta I^S = x_i^* \cdot \Delta p_i \label{eq:5.3.2} \tag{5.3.2}
\]

Ambas as decomposições — a de Hicks, expressa na equação $\eqref{eq:5.3.1}$, e a de Slutsky, com compensação dada pela equação $\eqref{eq:5.3.2}$ — convergem para variações infinitesimais de preço e resultam na mesma equação fundamental — a Equação de Slutsky. A distinção entre as duas abordagens reaparecerá na Seção 5.8, quando calcularmos medidas de bem-estar: a decomposição de Hicks é a base teórica da variação compensatória e da variação equivalente, enquanto a decomposição de Slutsky está intimamente ligada à interpretação do excedente do consumidor marshalliano.

!!! idea "Intuição Econômica"
    **Em uma frase:** Toda mudança de preço tem dois efeitos: substituição (troca entre bens) e renda (poder de compra) — separá-los é a chave da análise da demanda.

    **Pense assim:** A gasolina ficou 10% mais barata. O efeito substituição faz você trocar um pouco de transporte público por carro. O efeito renda faz você "se sentir mais rico", podendo aumentar o consumo de diversos bens. Se a gasolina for um bem normal, ambos reforçam a maior demanda. Se for inferior, os efeitos se opõem.

    **Por que isso importa:** A decomposição de Slutsky é a base para avaliar o impacto de impostos e subsídios sobre o consumo — e para distinguir quando uma queda de preço beneficia os consumidores pelo barateamento relativo ou pelo aumento do poder de compra.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando um preço muda, duas coisas acontecem ao mesmo tempo: você troca de produto (efeito substituição) e seu poder de compra muda (efeito renda).

    **Pense assim:** Quando o preço da carne bovina sobe no supermercado, você faz duas coisas: troca parte da carne por frango (efeito substituição) e, como seu dinheiro agora compra menos, acaba reduzindo o consumo de outros itens também (efeito renda). A Equação de Slutsky separa matematicamente essas duas forças que, no carrinho de compras, aparecem misturadas.

    **Por que isso importa:** Separar esses efeitos é essencial para política pública — por exemplo, para saber se um aumento no preço da gasolina empurra as pessoas para o etanol (substituição) ou simplesmente as empobrece (renda).

!!! box-brasil "Box Brasil — Preços administrados e o efeito substituição: energia elétrica e bandeiras tarifárias"
    No Brasil, diversos preços são fixados ou regulados por agências governamentais — os chamados **preços administrados**, que representam cerca de 25% do IPCA. A energia elétrica é um caso particularmente interessante para a teoria do consumidor, pois o sistema de **bandeiras tarifárias** (verde, amarela e vermelha) funciona como uma variação exógena de preço com periodicidade mensal.

    **Mecanismo:** quando a bandeira muda de verde para vermelha (patamar 2), a tarifa residencial pode subir mais de R$ 0,07/kWh, o que equivale a um aumento de 8–10% no custo da energia. Essa variação é exógena ao consumidor (depende de condições hidrológicas), criando um experimento natural para observar efeitos substituição e renda.

    **Efeito substituição:** quando a bandeira vermelha é ativada, famílias reduzem o uso de chuveiro elétrico, ar-condicionado e máquina de lavar em horários de pico — substituindo eletricidade por gás (aquecimento), ventilação natural ou deslocamento temporal do consumo. A tarifa média de energia residencial subiu em média 5,6% a 6,9% em 2023, segundo a [ANEEL](https://www.aneel.gov.br).

    **Efeito renda:** para famílias de baixa renda, em que a conta de luz pode representar 10–15% do orçamento mensal, o efeito renda do aumento tarifário é significativo, reduzindo o consumo de outros bens.

    **Fontes**: ANEEL — Tarifas e Bandeiras Tarifárias; BCB — Relatório de Inflação; Agência Brasil (2022).

<iframe src="../graficos/cap05/efeito-renda-substituicao.html" title="Figura 5.2 — Decomposição dos efeitos renda e substituição" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 5.2 — Decomposição dos efeitos renda e substituição.** Ajuste o novo preço \(p_1'\) e observe como o efeito total (vermelho) se decompõe em efeito substituição (verde, ao longo da curva de indiferença) e efeito renda (azul, entre curvas). Alterne entre as decomposições de Hicks e Slutsky.
</div>

---

## 5.4 Equação de Slutsky

Os gráficos deram a intuição; agora a álgebra dá a precisão. A **Equação de Slutsky** é, sem exagero, *a* equação da teoria do consumidor — aquela que aparece em toda prova de micro, em todo paper de demanda, em toda análise de política tributária. Ela decompõe a resposta da demanda a uma variação de preço em dois pedaços cirurgicamente separados, conectando as funções marshalliana e hicksiana numa identidade elegante. Se este livro fosse uma peça de teatro, a Equação de Slutsky seria o monólogo do ato final.

Uma nota sobre convenção de sinais, que frequentemente gera confusão: na Equação de Slutsky, o efeito renda aparece com sinal negativo, pois um aumento de preço *reduz* o poder de compra real. Assim, para um bem normal (\(\partial x_i/\partial I > 0\)), o termo \(-x_j \partial x_i/\partial I\) é negativo — reforçando a queda na demanda causada pelo aumento de preço. Para um bem inferior (\(\partial x_i/\partial I < 0\)), o mesmo termo é positivo — o efeito renda atenua (ou até reverte) a queda na demanda.

!!! theorem "Teorema: Equação de Slutsky"
    Para quaisquer bens \(i\) e \(j\):

    \[
    \frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I} \label{eq:5.4.3} \tag{5.4.3}
    \]

    onde \(x_i = x_i(p_1, \ldots, p_n, I)\) é a demanda marshalliana, \(h_i = h_i(p_1, \ldots, p_n, \bar{U})\) é a demanda hicksiana e \(I\) é a renda.

    O primeiro termo é o **efeito substituição** (sempre não-positivo para \(i = j\)); o segundo é o **efeito renda**, ponderado pela quantidade consumida do bem cujo preço variou.

!!! proof "Demonstração: Derivação completa da Equação de Slutsky"
    **Passo 1: Identidade fundamental.**

    A demanda hicksiana e a marshalliana estão conectadas pela função dispêndio \(E(\mathbf{p}, \bar{U})\). Para qualquer nível de utilidade \(\bar{U}\):

    \[
    h_i(\mathbf{p}, \bar{U}) = x_i(\mathbf{p}, E(\mathbf{p}, \bar{U}))
    \]

    Essa identidade afirma que, ao nível de utilidade \(\bar{U}\), a demanda compensada coincide com a demanda não-compensada quando a renda é exatamente igual ao dispêndio mínimo.

    **Passo 2: Diferenciação em relação a \(p_j\).**

    Diferenciando ambos os lados em relação a \(p_j\):

    \[
    \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i}{\partial p_j} + \frac{\partial x_i}{\partial I} \cdot \frac{\partial E}{\partial p_j}
    \]

    **Passo 3: Lema de Shephard.**

    Pelo Lema de Shephard (a derivada da função dispêndio em relação ao preço \(p_j\) é a demanda hicksiana do bem \(j\)):

    \[
    \frac{\partial E}{\partial p_j} = h_j(\mathbf{p}, \bar{U})
    \]

    **Passo 4: Avaliação no ótimo.**

    No ponto ótimo, \(h_j(\mathbf{p}, \bar{U}) = x_j(\mathbf{p}, I)\), ou seja, as demandas hicksiana e marshalliana coincidem. Substituindo:

    \[
    \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i}{\partial p_j} + x_j \frac{\partial x_i}{\partial I}
    \]

    **Passo 5: Rearranjando.**

    \[
    \boxed{\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}}
    \]

    O termo \(\frac{\partial h_i}{\partial p_j}\) captura o efeito substituição puro (a preços relativos), e \(-x_j \frac{\partial x_i}{\partial I}\) captura o efeito renda: a variação em \(p_j\) altera o poder de compra em magnitude proporcional a \(x_j\), que então afeta a demanda por \(x_i\) na proporção de \(\frac{\partial x_i}{\partial I}\). \(\blacksquare\)

Vale notar a elegância da derivação: bastaram a identidade entre demandas hicksiana e marshalliana e o Lema de Shephard para conectar duas funções de demanda aparentemente distintas em uma única equação. O resultado revela que a quantidade consumida do bem cujo preço variou (\(x_j\)) atua como um "multiplicador" do efeito renda — quanto mais o consumidor gasta com esse bem, maior o impacto sobre seu poder de compra.

!!! warning "Cuidado"
    **Erro comum: confundir o sinal do efeito renda na Equação de Slutsky.**

    A Equação de Slutsky é escrita como:

    \[
    \frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
    \]

    O sinal de menos antes do efeito renda é fonte frequente de confusão. Lembre-se: o efeito renda aparece com sinal *negativo* porque um aumento em \(p_j\) *reduz* o poder de compra real (para \(j = i\), o bem fica mais caro, então o consumidor efetivamente "fica mais pobre"). Para verificar se o sinal está correto, aplique o teste para um bem normal (\(\partial x_i/\partial I > 0\)) com aumento de preço próprio (\(j = i\)): o efeito substituição é \(\leq 0\) e o efeito renda é \(-x_i \cdot (+) < 0\), logo o efeito total é negativo — consistente com a Lei da Demanda. Se você obtiver o sinal contrário, provavelmente inverteu o efeito renda.

Se a equação parece intimidante, foque na intuição: o efeito total é substituição + renda. Para um bem normal, os dois puxam na mesma direção (demanda cai quando preço sobe). Para um bem inferior, puxam em sentidos opostos — e o resultado depende de quem é mais forte.

### 5.4.1 Implicações da Equação de Slutsky

Com a Equação de Slutsky em mãos, podemos extrair consequências cruciais para a teoria da demanda:

1. **Para o próprio preço** (\(i = j\)): \(\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\leq 0} - x_i \frac{\partial x_i}{\partial I}\). O efeito substituição é sempre não-positivo (pela concavidade da função dispêndio). Logo, se o bem for normal (\(\frac{\partial x_i}{\partial I} > 0\)), a demanda cai quando o preço sobe — a **Lei da Demanda** vale sem ambiguidade.

2. **Bens de Giffen**: se o bem for inferior e o efeito renda dominar o efeito substituição, \(\frac{\partial x_i}{\partial p_i} > 0\), e temos um **bem de Giffen**. Esses casos são raros e exigem que o bem represente parcela significativa do orçamento — condição necessária para que o efeito renda seja suficientemente forte.

!!! definition "Bem de Giffen"
    Um bem \(i\) é dito **de Giffen** se sua demanda marshalliana é positivamente inclinada no próprio preço:

    \[
    \frac{\partial x_i}{\partial p_i} > 0
    \]

    Pela Equação de Slutsky, isso exige *simultaneamente*:

    - (a) \(\frac{\partial x_i}{\partial I} < 0\) — o bem é **inferior**;
    - (b) \(\left| x_i \frac{\partial x_i}{\partial I} \right| > \left| \frac{\partial h_i}{\partial p_i} \right|\) — o efeito renda (em valor absoluto) **supera** o efeito substituição.

    A condição (b) tende a ser satisfeita apenas quando o bem representa parcela muito elevada do orçamento, de modo que \(x_i\) seja grande o suficiente para amplificar o efeito renda. Em particular, todo bem de Giffen é inferior, mas a recíproca é falsa: um bem pode ser inferior sem ser de Giffen se o efeito substituição ainda dominar.

!!! idea "Intuição Econômica"
    **Em uma frase:** Um bem de Giffen é tão essencial e ocupa tanta parte do orçamento que, quando seu preço sobe, o consumidor fica tão mais pobre que acaba comprando *mais* dele, não menos.

    **Pense assim:** Pense numa família muito pobre que gasta quase tudo em farinha de mandioca. Se o preço da farinha sobe, a família não pode mais comprar carne (que já era rara). Ela fica tão mais pobre que precisa comer *ainda mais* farinha para sobreviver — o efeito renda (empobrecimento) domina o efeito substituição. Na prática, esse fenômeno é raríssimo e só foi documentado de forma robusta para o arroz entre famílias extremamente pobres na China.

    **Por que isso importa:** O paradoxo de Giffen mostra por que a Lei da Demanda não é uma lei universal — e por que programas como o Bolsa Família, ao elevar a renda, podem eliminar esse tipo de comportamento extremo.

3. **Simetria de Slutsky**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\). Os efeitos substituição cruzados são simétricos. Essa simetria, que não vale para a demanda marshalliana, é uma propriedade poderosa: ela reduz pela metade o número de parâmetros a estimar em sistemas de demanda e reflete uma propriedade profunda da dualidade entre maximização de utilidade e minimização de dispêndio.

!!! info "Prêmio Nobel — Angus Deaton (2015)"

    **Angus Stewart Deaton** (1945– ) é um economista escocês-americano, professor em Princeton. Obteve seu PhD em Cambridge e construiu carreira unindo teoria microeconômica avançada com evidência empírica rigorosa.

    **Por que ganhou o Nobel:**
    O Comitê Nobel premiou Deaton "por sua análise do consumo, da pobreza e do bem-estar". Em particular, Deaton desenvolveu o *Almost Ideal Demand System* (AIDS, junto com Muellbauer, 1980) — um sistema de equações de demanda que satisfaz automaticamente as restrições teóricas da Equação de Slutsky (simetria, homogeneidade, esgotamento da renda) e pode ser estimado com dados de orçamentos domiciliares. Além disso, seu trabalho sobre como inferir elasticidades de demanda a partir de dados de pesquisa domiciliar (onde os preços não são diretamente observados) abriu caminho para a estimação de demanda em países em desenvolvimento, incluindo o Brasil.

    **Conexão com este capítulo:**
    A Equação de Slutsky (Seção 5.4) é o núcleo teórico do trabalho de Deaton: as propriedades de simetria e semidefinição negativa da matriz de Slutsky são as restrições que o AIDS impõe na estimação econométrica. As medidas de bem-estar discutidas na Seção 5.8 (VC e VE) são também ferramentas centrais na obra de Deaton sobre pobreza e distribuição de consumo — tema revisitado na Seção "Pesquisa em Ação" deste capítulo.

!!! note "Giffen na prática: arroz na China"
    Bens de Giffen são raríssimos empiricamente. A evidência mais robusta foi documentada por [Jensen e Miller (2008)](https://doi.org/10.1257/aer.98.4.1553), que identificaram comportamento de Giffen para o arroz entre famílias extremamente pobres na província de Hunan, na China. Nessas famílias, o arroz representava parcela tão grande do orçamento que o efeito renda de um aumento de preço dominava o efeito substituição. Voltaremos a esse estudo no Apêndice.

!!! box-mundo "Box Mundo 5.1 — O experimento do arroz em Hunan: evidência causal de comportamento de Giffen"

    **Contexto:** A existência de bens de Giffen — bens cuja demanda aumenta quando o preço sobe — foi debatida por mais de um século desde que Alfred Marshall atribuiu a ideia a Sir Robert Giffen nos anos 1890. Apesar de sua importância teórica para a Equação de Slutsky (demonstrando que o efeito renda pode dominar o efeito substituição), nenhum estudo havia conseguido documentar convincentemente esse fenômeno até o experimento de campo conduzido por Robert Jensen e Nolan Miller na província de Hunan, China, publicado na *American Economic Review* em 2008.

    **Dados:** Jensen e Miller implementaram um experimento randomizado controlado (RCT) em que famílias extremamente pobres receberam subsídios aleatórios ao preço do arroz — o alimento básico que representava até 60-80% de suas calorias diárias. O resultado principal foi surpreendente: quando o subsídio reduzia o preço do arroz, as famílias consumiam *menos* arroz, não mais. Especificamente, um subsídio de aproximadamente 25% no preço do arroz levou a uma redução média de 10-15% no consumo de arroz entre as famílias mais pobres. Simultaneamente, essas famílias aumentaram o consumo de alimentos de maior qualidade nutricional — carne, vegetais e frutas. Em uma segunda província (Gansu), onde o alimento básico era o trigo, a evidência apontou na mesma direção, embora com significância estatística menor.

    **Análise:** O mecanismo é precisamente o previsto pela Equação de Slutsky (\(\ref{eq:5.4.3}\)): o arroz nessas famílias era simultaneamente (i) um bem fortemente inferior (\(\partial x_i / \partial I < 0\)) e (ii) representava parcela dominante do orçamento (\(x_i\) grande), de modo que o termo do efeito renda \(-x_i \cdot \partial x_i / \partial I > 0\) superava em magnitude o efeito substituição \(\partial h_i / \partial p_i < 0\). Quando o subsídio barateava o arroz, o ganho de poder de compra (efeito renda) era tão expressivo que as famílias podiam finalmente diversificar sua dieta, reduzindo a dependência do arroz. O estudo é particularmente valioso porque o desenho experimental — randomização do subsídio — elimina problemas de endogeneidade que comprometiam tentativas anteriores de identificar bens de Giffen com dados observacionais.

    **Fonte:** Jensen, R. T.; Miller, N. H. (2008). "Giffen Behavior and Subsistence Consumption." *The American Economic Review*, 98(4), 1553–1577.

??? exercicio-resolvido "Exercício Resolvido 5.3"
    **Enunciado:** Um consumidor tem utilidade \(U(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), com preços \(p_1 = 4\), \(p_2 = 1\) e renda \(I = 80\). O preço do bem 1 cai para \(p_1' = 1\). (a) Encontre as cestas ótimas antes e depois da variação de preço. (b) Decomponha o efeito total sobre \(x_1\) em efeito substituição e efeito renda (Hicks). (c) Verifique a decomposição com a Equação de Slutsky.

    **Dados:** Cobb-Douglas com \(a = b = 1/2\), \(p_1 = 4\), \(p_2 = 1\), \(I = 80\), \(p_1' = 1\).

    **Resolução:**

    **Passo 1 — Cestas ótimas**

    Demandas marshallianas para Cobb-Douglas: \(x_i^* = \frac{a_i}{a_1 + a_2} \cdot \frac{I}{p_i}\). Com \(a_1 = a_2 = 1/2\):

    - Antes: \(x_1^0 = \frac{1}{2} \cdot \frac{80}{4} = 10\), \(x_2^0 = \frac{1}{2} \cdot \frac{80}{1} = 40\). \(U_0 = \sqrt{10 \times 40} = 20\).
    - Depois: \(x_1^1 = \frac{1}{2} \cdot \frac{80}{1} = 40\), \(x_2^1 = 40\). \(U_1 = \sqrt{40 \times 40} = 40\).

    Efeito total: \(\Delta x_1 = 40 - 10 = +30\).

    **Passo 2 — Decomposição de Hicks**

    Demanda hicksiana: \(h_1 = \bar{U} \sqrt{p_2/p_1}\).

    - Com \(\bar{U} = U_0 = 20\) e preço novo \(p_1' = 1\): \(h_1 = 20 \sqrt{1/1} = 20\).

    Efeito substituição: \(ES = h_1(p_1', U_0) - x_1^0 = 20 - 10 = +10\).

    Efeito renda: \(ER = x_1^1 - h_1(p_1', U_0) = 40 - 20 = +20\).

    Verificação: \(ES + ER = 10 + 20 = 30 = \Delta x_1\). ✓

    **Passo 3 — Verificação pela Equação de Slutsky**

    \[
    \frac{\partial x_1}{\partial p_1} = \frac{\partial h_1}{\partial p_1} - x_1 \frac{\partial x_1}{\partial I}
    \]

    - \(\frac{\partial x_1}{\partial p_1} = -\frac{I}{2p_1^2} = -\frac{80}{2 \times 16} = -2{,}5\)
    - \(\frac{\partial h_1}{\partial p_1} = -\frac{\bar{U}}{2} p_2^{1/2} p_1^{-3/2} = -\frac{20}{2} \times 1 \times 4^{-3/2} = -10 \times \frac{1}{8} = -1{,}25\)
    - \(x_1 \frac{\partial x_1}{\partial I} = 10 \times \frac{1}{2 \times 4} = 10 \times 0{,}125 = 1{,}25\)
    - Verificação: \(-1{,}25 - 1{,}25 = -2{,}5\) ✓

    **Resultado:** o efeito total (+30 unidades) decompõe-se em efeito substituição (+10) e efeito renda (+20). O efeito renda é o dobro do efeito substituição.

    **Interpretação econômica:** a forte queda de preço (de 4 para 1) gera um expressivo aumento de poder de compra. Como o bem é normal e a queda de preço é grande, o efeito renda domina. Em termos brasileiros, pense em uma redução drástica no preço da energia elétrica: parte do aumento no consumo viria da substituição de gás por eletricidade (ES), mas a maior parte viria do aumento no poder de compra permitindo consumir mais de tudo (ER).

---

## 5.5 A Curva de Demanda Individual

A Equação de Slutsky nos permitiu decompor o efeito de uma variação de preço em suas partes constitutivas. Agora, podemos construir e comparar as duas curvas de demanda que emergem dessa análise: a marshalliana, que observamos nos mercados reais, e a hicksiana, que isola o efeito substituição puro. Compreender as diferenças entre elas é essencial tanto para a análise positiva (o que acontece) quanto para a análise normativa (como medir o bem-estar). Uma analogia útil: a curva marshalliana é o "preço de mercado" — o que de fato se observa; a curva hicksiana é o "preço verdadeiro" — o que o economista usa para análise de bem-estar.

### 5.5.1 Demanda marshalliana (não-compensada)

A curva de demanda marshalliana relaciona preço e quantidade mantendo a renda nominal constante. É a curva observável — aquela que efetivamente descreve o comportamento do consumidor no mercado.

\[
x_i^* = x_i(p_i; \bar{p}_{-i}, \bar{I})
\]

Pela Equação de Slutsky, sua inclinação combina efeitos substituição e renda. Para bens normais, é inequivocamente negativamente inclinada — a famosa Lei da Demanda. Para bens inferiores, pode ser positivamente inclinada (caso Giffen), embora, como vimos, esse cenário exija condições bastante especiais. Em termos empíricos, é a demanda marshalliana que os economistas estimam a partir de dados de preços e quantidades observadas — seja com séries temporais de preços de mercado, seja com microdados de pesquisas domiciliares como a POF.

### 5.5.2 Demanda hicksiana (compensada)

Enquanto a demanda marshalliana reflete o comportamento efetivamente observado, a curva de demanda hicksiana responde a uma pergunta contrafactual: como a demanda variaria se o consumidor fosse permanentemente compensado de modo a manter seu nível de utilidade inalterado? Essa curva mantém a **utilidade** constante e, embora seja uma construção teórica, é fundamental para a análise de bem-estar. A demanda hicksiana é, em certo sentido, "mais pura" que a marshalliana: ela captura unicamente a resposta do consumidor a variações nos preços relativos, sem o confundimento causado pela variação no poder de compra real.

\[
h_i = h_i(p_i; \bar{p}_{-i}, \bar{U})
\]

Como captura apenas o efeito substituição, é **sempre** negativamente inclinada (ou nula). Para bens normais, a curva hicksiana é mais inclinada (menos elástica) que a marshalliana, pois o efeito renda reforça o efeito substituição na marshalliana; para bens inferiores, a situação se inverte e a hicksiana é menos inclinada. Essa diferença de inclinação não é apenas teórica: ela implica que a elasticidade estimada a partir de dados observados (marshalliana) superestima a elasticidade de substituição pura (hicksiana) para bens normais, e subestima para bens inferiores.

!!! note "Relação geométrica"
    As curvas marshalliana e hicksiana se cruzam no ponto correspondente ao preço e à renda iniciais. A partir desse ponto, a marshalliana diverge conforme o efeito renda se acumula.

<iframe src="../graficos/cap05/demanda-marshalliana-hicksiana.html" title="Figura 5.3 — Demanda marshalliana (vermelha) vs hicksiana (azul)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 5.3 — Demanda marshalliana (vermelha) vs hicksiana (azul).** Painel superior: curvas de indiferença e restrição orçamentária no espaço de bens. Painel inferior: curvas de demanda derivadas. Para bens normais, a hicksiana é mais inclinada. A área sombreada representa o excedente do consumidor.
</div>

---

## 5.6 Demanda Compensada: Propriedades Formais

A seção anterior apresentou as curvas de demanda marshalliana e hicksiana de forma intuitiva e gráfica. Agora, aprofundamos as propriedades formais da demanda compensada, que desempenham papel central tanto na teoria pura quanto na análise empírica. Essas propriedades geram restrições testáveis sobre o comportamento observado do consumidor — permitindo verificar se os dados são compatíveis com a hipótese de racionalidade. O Exercício 5.10 ao final do capítulo convida o leitor a demonstrar formalmente que a matriz de Slutsky é simétrica e negativa semidefinida.

A demanda hicksiana \(h_i(\mathbf{p}, \bar{U})\) pode ser obtida a partir da **função dispêndio** \(E(\mathbf{p}, \bar{U})\):

\[
h_i(\mathbf{p}, \bar{U}) = \frac{\partial E(\mathbf{p}, \bar{U})}{\partial p_i} \label{eq:5.6.4} \tag{5.6.4}
\]

Este é o **Lema de Shephard** — a equação $\eqref{eq:5.6.4}$ —, que já utilizamos na demonstração da equação de Slutsky $\eqref{eq:5.4.3}$.

!!! definition "Propriedades da demanda hicksiana"
    1. **Homogeneidade de grau zero em preços**: \(h_i(\alpha \mathbf{p}, \bar{U}) = h_i(\mathbf{p}, \bar{U})\).
    2. **Negatividade própria**: \(\frac{\partial h_i}{\partial p_i} \leq 0\).
    3. **Simetria**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\).
    4. **Semidefinição negativa da matriz de Slutsky**: a matriz \(\mathbf{S}\) com elementos \(s_{ij} = \frac{\partial h_i}{\partial p_j}\) é simétrica e negativa semidefinida.

A propriedade 4 é particularmente poderosa: dela decorrem restrições testáveis sobre o comportamento da demanda observada, servindo como base para a análise empírica e para a teoria da preferência revelada. Em termos práticos, a simetria (propriedade 3) significa que se um aumento no preço do açúcar eleva a demanda por adoçante em 5%, então um aumento equivalente no preço do adoçante deve elevar a demanda por açúcar na mesma proporção (após controlar pelas diferenças de participação orçamentária). Sistemas de demanda como o *Almost Ideal Demand System* (AIDS), desenvolvido por Deaton e Muellbauer (1980), impõem essas restrições diretamente na estimação econométrica.

---

## 5.7 Elasticidades da Demanda

Até aqui, discutimos os efeitos de variações de preço e renda em termos de derivadas — grandezas que dependem das unidades de medida. Mas como comparar a sensibilidade da demanda por gasolina (medida em litros) com a da demanda por arroz (medida em quilos)? Ou a resposta do consumidor brasileiro com a do consumidor americano, cujas rendas e preços são expressos em moedas diferentes? É aqui que entram as **elasticidades**, que medem a sensibilidade percentual da demanda a variações em preços e renda, sendo adimensionais e, portanto, comparáveis entre bens e mercados distintos.

!!! idea "Intuição Econômica"
    **Em uma frase:** Elasticidades são derivadas com "roupas" adimensionais — elas eliminam o problema das unidades de medida e permitem comparar a sensibilidade da demanda entre bens completamente diferentes.

    **Pense assim:** Se você souber que \(\partial x/\partial p = -50\), isso não diz muito — depende se a quantidade é medida em quilos ou toneladas, e se o preço é em reais ou centavos. Mas se a elasticidade-preço é \(-0{,}4\), você sabe imediatamente: um aumento de 10% no preço reduz a demanda em 4%, independentemente das unidades. Além disso, elasticidades acima de 1 (em valor absoluto) sinalizam demanda "sensível a preços" — útil para decisões de precificação e política tributária.

    **Por que isso importa:** As relações de agregação (Engel e Cournot) e a simetria de Slutsky são muito mais convenientes em termos de elasticidades do que em derivadas. Por isso, a maior parte da pesquisa empírica em demanda — e das análises de impacto de políticas tributárias no Brasil — é feita em termos de elasticidades, não de derivadas.

### 5.7.1 Elasticidade-preço da demanda

!!! definition "Elasticidade-preço da demanda"

    \[
    \varepsilon_{x_i, p_i} = \frac{\partial x_i}{\partial p_i} \cdot \frac{p_i}{x_i} \label{eq:5.7.5} \tag{5.7.5}
    \]

    - \(|\varepsilon| > 1\): demanda **elástica**
    - \(|\varepsilon| = 1\): demanda de **elasticidade unitária**
    - \(|\varepsilon| < 1\): demanda **inelástica**

### 5.7.2 Elasticidade-renda da demanda

A elasticidade-renda captura a resposta percentual da demanda a variações percentuais na renda. É ela que formaliza a classificação entre bens normais, inferiores, de luxo e de necessidade que discutimos na Seção 5.2:

\[
\varepsilon_{x_i, I} = \frac{\partial x_i}{\partial I} \cdot \frac{I}{x_i} \label{eq:5.7.6} \tag{5.7.6}
\]

### 5.7.3 Elasticidade-preço cruzada

A elasticidade-preço cruzada mede como a demanda por um bem responde a variações no preço de outro bem. Essa grandeza será central no Capítulo 6, quando classificarmos bens como substitutos ou complementos. No mercado brasileiro de combustíveis, a elevada elasticidade cruzada gasolina-etanol (estimada entre +0,80 e +1,40) reflete a existência de uma grande frota flex-fuel — um exemplo de como a estrutura tecnológica do mercado se traduz em parâmetros de elasticidade mensuráveis:

\[
\varepsilon_{x_i, p_j} = \frac{\partial x_i}{\partial p_j} \cdot \frac{p_j}{x_i} \label{eq:5.7.7} \tag{5.7.7}
\]

### 5.7.4 Relações de agregação

As elasticidades definidas acima não são independentes entre si. As restrições teóricas do problema do consumidor — homogeneidade de grau zero, esgotamento da renda — impõem relações de consistência entre elas. Essas relações são testáveis empiricamente: quando um sistema de demanda estimado viola as condições abaixo, os dados contradizem o modelo de consumidor racional, ou as estimativas estão mal especificadas. Três relações fundamentais as conectam:

!!! theorem "Agregação de Engel"
    A soma ponderada das elasticidades-renda de todos os bens, com pesos iguais às parcelas orçamentárias \(w_i = \frac{p_i x_i}{I}\), é igual a um:

    \[
    \sum_{i=1}^n w_i \, \varepsilon_{x_i, I} = 1 \label{eq:5.7.8} \tag{5.7.8}
    \]

    **Implicação**: nem todos os bens podem ser inferiores simultaneamente. Se alguns bens têm elasticidade-renda baixa, outros devem compensar com elasticidade-renda alta.

!!! theorem "Condição de Homogeneidade (Agregação de Cournot)"
    Para cada bem \(i\), a soma das elasticidades-preço (própria e cruzadas) e da elasticidade-renda é zero:

    \[
    \sum_{j=1}^n \varepsilon_{x_i, p_j} + \varepsilon_{x_i, I} = 0 \label{eq:5.7.9} \tag{5.7.9}
    \]

    Esta condição decorre diretamente da homogeneidade de grau zero da demanda.

!!! theorem "Simetria de Slutsky (em termos de elasticidades)"
    Definindo a elasticidade de substituição compensada \(s_{ij} = \varepsilon_{x_i, p_j}^h\), a simetria impõe:

    \[
    w_i \, s_{ij} = w_j \, s_{ji} \label{eq:5.7.10} \tag{5.7.10}
    \]

### 5.7.5 Elasticidades estimadas para o Brasil

As relações de agregação acima não são apenas curiosidades teóricas — elas podem ser usadas para verificar a consistência de estimativas empíricas e para inferir elasticidades desconhecidas a partir de elasticidades estimadas, como ilustra o Exercício Resolvido 5.1 adiante. Essa propriedade de interdependência tem implicações práticas: em pesquisas que estimam sistemas de demanda com poucos graus de liberdade, as condições de Engel e Cournot permitem "emprestar" informação de um bem para refinar a estimação de outro. A [Tabela 5.1](#tabela-5-1) apresenta estimativas de elasticidades-preço e elasticidade-renda para categorias selecionadas de bens no Brasil, com base em estudos da POF/IBGE e pesquisas do IPEA.

<a id="tabela-5-1"></a>

| Categoria de Bem | Elasticidade-preço (\(\varepsilon_{x,p}\)) | Elasticidade-renda (\(\varepsilon_{x,I}\)) | Classificação |
|:---|:---:|:---:|:---|
| Alimentação no domicílio | \(-0{,}45\) | \(0{,}56\) | Inelástica; necessidade |
| Alimentação fora do domicílio | \(-0{,}78\) | \(1{,}25\) | Inelástica; luxo |
| Transporte público | \(-0{,}32\) | \(-0{,}18\) | Inelástica; inferior |
| Combustíveis (gasolina) | \(-0{,}46\) | \(0{,}68\) | Inelástica; necessidade |
| Saúde (planos e medicamentos) | \(-0{,}21\) | \(1{,}35\) | Muito inelástica; luxo |
| Educação privada | \(-0{,}38\) | \(1{,}48\) | Inelástica; luxo |
| Vestuário | \(-0{,}92\) | \(1{,}10\) | Quase unitária; luxo |
| Habitação (aluguel) | \(-0{,}30\) | \(0{,}85\) | Inelástica; necessidade |
| Eletrodomésticos | \(-1{,}15\) | \(1{,}52\) | Elástica; luxo |
| Cigarros e tabaco | \(-0{,}35\) | \(0{,}25\) | Inelástica; necessidade |

<div class="caption-obj" markdown>
**Tabela 5.1 — Elasticidades estimadas para o Brasil.** Fontes: POF/IBGE (2017-2018); Almeida e Azzoni (2016); Cardoso et al. (2019); Notas Técnicas IPEA.
</div>

!!! note "Observações sobre a tabela"
    A classificação como "luxo" ou "necessidade" refere-se à elasticidade-renda, enquanto "elástica" ou "inelástica" refere-se à elasticidade-preço. Note que saúde e educação, embora essenciais, apresentam elasticidade-renda elevada no Brasil — fenômeno associado à migração de serviços públicos para privados conforme a renda cresce.

??? exercicio-resolvido "Exercício Resolvido 5.1"
    **Enunciado:** Considere uma economia com dois bens: alimentação (bem 1) e serviços (bem 2). A parcela orçamentária da alimentação é \(w_1 = 0{,}35\) e a dos serviços é \(w_2 = 0{,}65\). A elasticidade-renda da alimentação é \(\varepsilon_{1,I} = 0{,}42\), e a elasticidade-preço própria da alimentação é \(\varepsilon_{1,p_1} = -0{,}55\). (a) Calcule a elasticidade-renda dos serviços. (b) Classifique cada bem. (c) Calcule a elasticidade-preço cruzada da alimentação em relação ao preço dos serviços.

    **Dados:** \(w_1 = 0{,}35\), \(w_2 = 0{,}65\), \(\varepsilon_{1,I} = 0{,}42\), \(\varepsilon_{1,p_1} = -0{,}55\).

    **Resolução:**

    **Passo 1 — Elasticidade-renda dos serviços (Agregação de Engel)**

    \[
    w_1 \varepsilon_{1,I} + w_2 \varepsilon_{2,I} = 1 \quad \Longrightarrow \quad 0{,}35 \times 0{,}42 + 0{,}65 \times \varepsilon_{2,I} = 1
    \]

    \[
    0{,}147 + 0{,}65 \, \varepsilon_{2,I} = 1 \quad \Longrightarrow \quad \varepsilon_{2,I} = \frac{1 - 0{,}147}{0{,}65} = \frac{0{,}853}{0{,}65} \approx 1{,}31
    \]

    **Passo 2 — Classificação**

    - Alimentação: \(\varepsilon_{1,I} = 0{,}42 \in (0, 1)\) → **bem normal de necessidade**.
    - Serviços: \(\varepsilon_{2,I} \approx 1{,}31 > 1\) → **bem normal de luxo**.

    **Passo 3 — Elasticidade-preço cruzada (Condição de Homogeneidade)**

    \[
    \varepsilon_{1,p_1} + \varepsilon_{1,p_2} + \varepsilon_{1,I} = 0 \quad \Longrightarrow \quad -0{,}55 + \varepsilon_{1,p_2} + 0{,}42 = 0
    \]

    \[
    \varepsilon_{1,p_2} = 0{,}55 - 0{,}42 = 0{,}13
    \]

    **Resultado:** \(\varepsilon_{2,I} \approx 1{,}31\), e \(\varepsilon_{1,p_2} = 0{,}13\).

    **Interpretação econômica:** a alimentação é um bem de necessidade (consistente com a Lei de Engel) e os serviços são um bem de luxo — padrão coerente com os dados brasileiros da POF 2017–2018, em que famílias de maior renda gastam proporcionalmente menos com alimentação e mais com serviços. A elasticidade cruzada positiva indica que alimentação e serviços são **substitutos brutos**: quando serviços ficam mais caros, a demanda por alimentação aumenta ligeiramente (famílias comem mais em casa em vez de contratar serviços de alimentação fora).

---

## 5.8 Excedente do Consumidor

Elasticidades dizem *como* a demanda reage. Mas o ministro da Fazenda quer saber outra coisa: *quanto* o consumidor perde (em reais!) quando a gasolina sobe R$ 0,50? E quanto ganha quando o governo zera o ICMS sobre a cesta básica? Para isso, precisamos de uma régua monetária de bem-estar — e é exatamente isso que o **excedente do consumidor** fornece. É a ferramenta que traduz utilidade abstrata em valores que cabem numa planilha de orçamento público.

### 5.8.1 O conceito marshalliano

O **excedente do consumidor** (\(EC\)) mede o ganho líquido que o consumidor obtém ao participar do mercado — a diferença entre o que estaria disposto a pagar e o que efetivamente paga. Esse conceito foi introduzido por Alfred Marshall em seus *Principles of Economics* (1890) e permanece, até hoje, a medida mais utilizada em análises de política econômica, apesar de suas limitações teóricas:

\[
EC = \int_{0}^{x^*} p(x) \, dx - p^* \cdot x^* \label{eq:5.8.11} \tag{5.8.11}
\]

onde \(p(x)\) é a função de demanda inversa. A equação $\eqref{eq:5.8.11}$ traduz em linguagem matemática a ideia de que o consumidor extrai valor de cada unidade comprada acima do preço que efetivamente paga.

### 5.8.2 Variação compensatória (VC)

O excedente do consumidor marshalliano é uma medida prática e amplamente utilizada, mas possui uma limitação teórica: ele se baseia na curva de demanda marshalliana, que mistura efeitos substituição e renda. Para obter medidas de bem-estar teoricamente exatas, precisamos recorrer às curvas de demanda hicksiana, que mantêm a utilidade constante. Isso nos leva à variação compensatória e à variação equivalente. Hausman (1981), cujo artigo seminal está discutido na seção "Pesquisa em Ação", demonstrou que a diferença entre EC e VC pode ser substancial — especialmente para bens que representam parcela significativa do orçamento — o que justifica o uso das medidas exactas em análises de custo-benefício de políticas públicas no Brasil.

!!! definition "Variação Compensatória"
    A **variação compensatória** (\(VC\)) é a quantia de renda que deve ser retirada (ou dada) ao consumidor, após uma mudança de preço, para que ele retorne ao nível de utilidade original \(\bar{U}_0\):

    \[
    VC = E(\mathbf{p}^1, U_0) - E(\mathbf{p}^0, U_0) = E(\mathbf{p}^1, U_0) - I
    \]

    A \(VC\) utiliza a curva de demanda hicksiana avaliada no nível de utilidade **inicial**.

Geometricamente, a \(VC\) é a área à esquerda da curva de demanda hicksiana referente à utilidade inicial, entre os dois preços.

### 5.8.3 Variação equivalente (VE)

!!! definition "Variação Equivalente"
    A **variação equivalente** (\(VE\)) é a quantia de renda que, se dada ao consumidor antes da mudança de preço, o deixaria tão bem quanto ele ficaria após a mudança:

    \[
    VE = E(\mathbf{p}^1, U_1) - E(\mathbf{p}^0, U_1) = I - E(\mathbf{p}^0, U_1)
    \]

    A \(VE\) utiliza a curva de demanda hicksiana avaliada no nível de utilidade **final**.

### 5.8.4 Relação entre EC, VC e VE

Dispondo de três medidas de bem-estar — EC, VC e VE —, cabe perguntar: como elas se relacionam entre si? Em geral, as três fornecem valores distintos, e a ordenação entre elas depende da natureza do bem e da direção da variação de preço. A intuição da desigualdade abaixo é que a VC usa a curva hicksiana da utilidade inicial (mais baixa, para uma queda de preço), que é mais inclinada; a VE usa a da utilidade final (mais alta), que é menos inclinada; o EC usa a curva marshalliana, que fica "entre" as duas. Para uma queda de preço de um bem normal:

\[
VC < EC < VE
\]

!!! theorem "Proposição — Equivalência das medidas de bem-estar (quase-linear)"
    Se \(u(x_1, x_2) = v(x_1) + x_2\) (utilidade quase-linear), então para qualquer variação de preços:

    \[
    VC = VE = \Delta EC = \int_{p_1^0}^{p_1^1} x_1^*(p_1)\, dp_1.
    \]

    **Demonstração:** a demanda hicksiana por \(x_1\) é \(h_1(\mathbf{p}, \bar{u}) = (v')^{-1}(p_1/p_2)\), independente de \(\bar{u}\). Logo a integral de \(h_1\) entre \(p_1^0\) e \(p_1^1\) é a mesma para qualquer nível de utilidade de referência, e coincide com a integral da demanda marshalliana (que também é \((v')^{-1}(p_1/p_2)\)).

As três medidas coincidem quando o efeito renda é nulo (utilidade quase-linear), caso em que a curva marshalliana e a hicksiana são idênticas.

!!! idea "Intuição Econômica"
    **Em uma frase:** A variação compensatória pergunta "quanto dinheiro compensa a perda?"; a variação equivalente pergunta "quanto você pagaria para evitar a perda?" — são dois ângulos da mesma mudança de bem-estar.

    **Pense assim:** Suponha que o preço do gás de cozinha dobre. A VC pergunta: "quanto o governo teria que depositar na sua conta para você ficar tão bem quanto antes?" A VE pergunta: "quanto você toparia pagar hoje para garantir que o preço não suba?" As respostas diferem porque seu poder de compra muda entre os dois cenários.

    **Por que isso importa:** VC e VE são as medidas teoricamente corretas de bem-estar em análises de custo-benefício de políticas públicas, como reajustes tarifários de energia elétrica ou mudanças no ICMS sobre combustíveis.

!!! tip "Quando usar qual medida?"
    - **VC** é apropriada para avaliar se o consumidor aceitaria uma mudança (quanto precisa ser compensado).
    - **VE** é apropriada para avaliar quanto o consumidor pagaria para obter uma mudança.
    - **EC** marshalliano é uma aproximação prática, amplamente usada em análise de políticas públicas pela sua facilidade de cálculo.

??? exercicio-resolvido "Exercício Resolvido 5.2"
    **Enunciado:** Um consumidor possui utilidade quase-linear \(U(x,y) = 2\sqrt{x} + y\), com \(p_y = 1\) e renda \(I = 10\). O preço de \(x\) sobe de \(p_x = 1\) para \(p_x' = 4\). Calcule a VC, a VE e a variação no EC. Confirme que as três medidas coincidem.

    **Dados:** \(U = 2\sqrt{x} + y\), \(p_y = 1\), \(I = 10\), \(p_x^0 = 1\), \(p_x^1 = 4\).

    **Resolução:**

    **Passo 1 — Demandas marshallianas**

    CPO (interior): \(\frac{1}{\sqrt{x}} = \frac{p_x}{p_y} = p_x\). Logo \(x = \frac{1}{p_x^2}\) e \(y = I - p_x \cdot x = I - \frac{1}{p_x}\).

    - Situação inicial: \(x_0 = 1\), \(y_0 = 10 - 1 = 9\). \(U_0 = 2 + 9 = 11\).
    - Situação final: \(x_1 = 1/16\), \(y_1 = 10 - 4/16 = 10 - 0{,}25 = 9{,}75\). \(U_1 = 2 \times 0{,}25 + 9{,}75 = 10{,}25\).

    **Passo 2 — Função dispêndio**

    Para utilidade quase-linear, a demanda hicksiana por \(x\) é \(h_x = 1/p_x^2\) (independente de \(\bar{U}\)), e \(h_y = \bar{U} - 2/p_x\). Logo:

    \[
    E(p_x, p_y, \bar{U}) = p_x \cdot \frac{1}{p_x^2} + 1 \cdot \left(\bar{U} - \frac{2}{p_x}\right) = \frac{1}{p_x} + \bar{U} - \frac{2}{p_x} = \bar{U} - \frac{1}{p_x}
    \]

    **Passo 3 — VC, VE e \(\Delta EC\)**

    \[
    VC = E(p_x^1, U_0) - I = \left(11 - \frac{1}{4}\right) - 10 = 10{,}75 - 10 = 0{,}75
    \]

    \[
    VE = I - E(p_x^0, U_1) = 10 - \left(10{,}25 - 1\right) = 10 - 9{,}25 = 0{,}75
    \]

    \[
    \Delta EC = \int_{p_x^0}^{p_x^1} x(p) \, dp = \int_{1}^{4} \frac{1}{p^2} \, dp = \left[-\frac{1}{p}\right]_1^4 = -\frac{1}{4} + 1 = 0{,}75
    \]

    **Resultado:** \(VC = VE = \Delta EC = 0{,}75\).

    **Interpretação econômica:** as três medidas coincidem porque a utilidade é quase-linear — o efeito renda sobre \(x\) é zero, e as curvas marshalliana e hicksiana de \(x\) são idênticas. Em aplicações práticas, quando o bem em questão representa parcela pequena do orçamento (como um produto específico), o efeito renda é negligível e o EC marshalliano é uma boa aproximação das medidas exatas de bem-estar.

<iframe src="../graficos/cap05/excedente-consumidor.html" title="Figura 5.4 — Excedente do consumidor (EC), variação compensatória (VC) e variação equivalente (VE)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 5.4 — Excedente do consumidor (EC), variação compensatória (VC) e variação equivalente (VE).** Ajuste os preços \(p_0\) e \(p_1\) e ative/desative cada medida. Para uma queda de preço de bem normal: \(VC < \Delta EC < VE\). O EC usa a demanda marshalliana (linear); VC e VE usam demandas hicksianas (Cobb-Douglas).
</div>

!!! box-mundo "Box Mundo 5.2 — Medidas de bem-estar na política comercial: VC e VE na avaliação de acordos da OMC"

    **Contexto:** As medidas de bem-estar desenvolvidas nesta seção — variação compensatória (VC), variação equivalente (VE) e excedente do consumidor (EC) — não são apenas construções teóricas: constituem a base metodológica para avaliar o impacto de políticas comerciais sobre consumidores e produtores em diferentes países. A Organização Mundial do Comércio (OMC) e instituições como o Banco Mundial utilizam extensivamente modelos de equilíbrio geral computável (CGE) que calculam VC e VE para estimar os ganhos e perdas de rodadas de liberalização comercial — como a Rodada Uruguai (1994) e as negociações da Rodada Doha (2001–presente).

    **Dados:** Anderson, Martin e Van der Mensbrugghe (2006), em estudo publicado pelo Banco Mundial, utilizaram o modelo LINKAGE (um CGE global com 27 regiões e 25 setores) para estimar os ganhos de bem-estar da liberalização comercial multilateral proposta na Rodada Doha. Os autores calcularam a variação equivalente (VE) — a quantia que cada região pagaria, aos preços vigentes antes da reforma, para obter o mesmo ganho de bem-estar proporcionado pela liberalização. Os resultados mostraram ganhos globais de US$ 96 a US$ 287 bilhões anuais (dependendo do cenário de liberalização), mas com distribuição fortemente desigual: países desenvolvidos capturariam a maior parte dos ganhos absolutos, enquanto países em desenvolvimento obteriam ganhos proporcionalmente maiores em relação ao PIB, especialmente na agricultura. Arkolakis, Costinot e Rodríguez-Clare (2012, *American Economic Review*) demonstraram que, para uma ampla classe de modelos de comércio com preferências CES, os ganhos de bem-estar do comércio podem ser resumidos por uma estatística suficiente: a participação dos gastos domésticos elevada à potência \(-1/(\sigma-1)\), onde \(\sigma\) é a elasticidade de substituição CES — conectando diretamente a teoria da Seção 4.10.4 à mensuração de bem-estar desta seção.

    **Análise:** A escolha entre VC e VE é particularmente relevante em política comercial, pois os resultados podem divergir significativamente quando as variações de preço são grandes — como no caso de eliminação de tarifas elevadas sobre produtos agrícolas. A VC pergunta "quanto compensar os perdedores da liberalização para que fiquem tão bem quanto antes?", enquanto a VE pergunta "quanto os ganhadores estariam dispostos a pagar, antes da reforma, para que ela ocorresse?" — perspectivas que levam a estimativas diferentes e podem influenciar a viabilidade política de acordos comerciais. A relação de Willig (1976), discutida nesta seção, fornece limites para a divergência entre EC, VC e VE, assegurando que, para bens com elasticidade-renda moderada e parcela orçamentária pequena, o excedente do consumidor marshalliano — mais fácil de estimar — é uma aproximação aceitável das medidas exatas.

    **Fonte:** Anderson, K.; Martin, W.; Van der Mensbrugghe, D. (2006). "Market and Welfare Implications of Doha Reform Scenarios." In *Agricultural Trade Reform and the Doha Development Agenda*, Banco Mundial. Arkolakis, C.; Costinot, A.; Rodríguez-Clare, A. (2012). "New Trade Models, Same Old Gains?" *American Economic Review*, 102(1), 94–130.

---

## 5.9 Preferência Revelada e o Efeito Substituição

Tudo que fizemos até aqui partiu de um objeto invisível: a função de utilidade. Ninguém jamais viu uma, mediu uma ou tropeçou numa. Será que é possível chegar às mesmas conclusões usando apenas o que *é* observável — preços pagos e quantidades compradas? Em 1938, Paul Samuelson, aos 22 anos, mostrou que sim. A ideia: se o consumidor escolheu a cesta A quando podia comprar a cesta B, ele *revelou* que prefere A a B. Nenhuma função de utilidade necessária — apenas o comportamento observado. Essa inversão de lógica — das escolhas para as preferências, em vez do contrário — é a **teoria da preferência revelada**, e ela deu a Samuelson o Nobel.

!!! definition "Axioma Fraco da Preferência Revelada (AFPR)"
    Se a cesta \(\mathbf{x}^0\) é escolhida quando \(\mathbf{x}^1\) era acessível (isto é, \(\mathbf{p}^0 \cdot \mathbf{x}^1 \leq \mathbf{p}^0 \cdot \mathbf{x}^0\)), então \(\mathbf{x}^1\) não pode ser escolhida quando \(\mathbf{x}^0\) é acessível (isto é, \(\mathbf{p}^1 \cdot \mathbf{x}^0 > \mathbf{p}^1 \cdot \mathbf{x}^1\)).

!!! info "🏅 Prêmio Nobel — Paul A. Samuelson (1970)"

    **Paul Anthony Samuelson** (1915–2009) foi um economista americano. Obteve o PhD em Harvard sob orientação de Wassily Leontief e foi professor no MIT por mais de seis décadas. Foi o primeiro americano a receber o Nobel de Economia.

    **Por que ganhou o Nobel:**
    Premiado pelo trabalho científico que elevou o nível da análise econômica. Samuelson revolucionou múltiplas áreas: formalizou a teoria da preferência revelada, demonstrando que as escolhas observadas do consumidor são suficientes para reconstruir suas preferências sem recorrer a funções de utilidade, e unificou a estática comparativa com o princípio de correspondência em *Foundations of Economic Analysis* (1947).

    **Conexão com este capítulo:**
    A teoria da preferência revelada, apresentada neste capítulo, é uma das contribuições mais elegantes de Samuelson. O Axioma Fraco da Preferência Revelada (WARP) permite testar a racionalidade do consumidor usando apenas dados de preços e quantidades observadas — sem hipóteses sobre utilidade ou preferências subjacentes.

O poder do AFPR reside na sua simplicidade: ele não exige que conheçamos as preferências do consumidor, apenas que observemos suas escolhas. Em termos econômicos, o AFPR captura a ideia de que um consumidor racional não pode revelar preferências contraditórias: se escolheu \(\mathbf{x}^0\) quando \(\mathbf{x}^1\) era acessível, é porque prefere \(\mathbf{x}^0\) — e portanto não pode, coerentemente, escolher \(\mathbf{x}^1\) quando \(\mathbf{x}^0\) também é acessível. Mas por que isso é relevante para o presente capítulo? Porque o AFPR garante a **negatividade do efeito substituição de Slutsky** — o mesmo resultado que derivamos anteriormente a partir da concavidade da função dispêndio, agora obtido por uma via puramente observacional. Se o consumidor satisfaz o AFPR, então, para uma variação compensada de preço (no sentido de Slutsky):

\[
(\mathbf{p}^1 - \mathbf{p}^0) \cdot (\mathbf{x}^1 - \mathbf{x}^0) \leq 0
\]

Em termos escalares, para uma variação apenas em \(p_i\): \(\Delta p_i \cdot \Delta x_i^S \leq 0\), onde \(\Delta x_i^S\) é a variação compensada — exatamente a negatividade do efeito substituição.

!!! theorem "Teorema: Equivalência entre AFPR e negatividade do efeito substituição"
    Um consumidor cujas escolhas satisfazem o Axioma Fraco da Preferência Revelada exibe efeito substituição de Slutsky não-positivo. Reciprocamente, se a matriz de Slutsky é negativa semidefinida, as escolhas observadas satisfazem o AFPR (sob certas condições de regularidade).

A teoria da preferência revelada tem um papel duplo na microeconomia moderna. Positivamente, ela fornece um critério empírico para testar a racionalidade: se os dados de preços e quantidades de um consumidor violam o AFPR, temos evidência de comportamento irracional — ou de erros de medição ou agregação. Normativamente, ela fundamenta a validade das medidas de bem-estar discutidas na Seção 5.8: a variação compensatória e a variação equivalente são bem definidas apenas se as preferências do consumidor são consistentes com alguma ordenação racional, condição que o AFPR ajuda a verificar. O artigo de Hoderlein e Stoye (2014), discutido na seção "Pesquisa em Ação" deste capítulo, estende esse raciocínio para uma população heterogênea de consumidores, mostrando que as condições de preferência revelada continuam testáveis mesmo quando as preferências individuais não são observadas diretamente.

A preferência revelada fecha o círculo: partimos de preferências para derivar escolhas (Capítulos 3–5); agora, das escolhas observadas, recuperamos as preferências. A teoria se confirma — ou se refuta — pelos dados.

---

As ferramentas desenvolvidas ao longo deste capítulo — decomposição de Slutsky, elasticidades, excedente do consumidor, preferência revelada — ganham vida quando aplicadas a problemas concretos. O estudo de caso a seguir ilustra como essas ferramentas são utilizadas na análise do mercado brasileiro de combustíveis, um dos mais estudados empiricamente no país.

!!! box-brasil "Box Brasil — Elasticidade-preço da gasolina no Brasil"
    A gasolina é um dos bens mais estudados empiricamente no Brasil, tanto pela relevância fiscal (ICMS, CIDE, PIS/COFINS) quanto pelo impacto no custo de vida. A Agência Nacional do Petróleo (ANP) coleta semanalmente preços em postos de todo o país, fornecendo uma base de dados rica para estimações econométricas.

    **Principais achados empíricos:**

    - **Elasticidade-preço de curto prazo**: estimativas variam entre \(-0{,}20\) e \(-0{,}50\), com a maioria dos estudos convergindo para valores próximos de \(-0{,}35\). Isso significa que um aumento de 10% no preço da gasolina reduz o consumo em cerca de 3,5% no curto prazo.

    - **Elasticidade-preço de longo prazo**: entre \(-0{,}55\) e \(-0{,}85\). No longo prazo, os consumidores ajustam o estoque de veículos, mudam rotas e padrões de deslocamento e migram para etanol ou transporte público.

    - **Efeito substituição gasolina-etanol**: o Brasil é peculiar por possuir a maior frota *flex-fuel* do mundo. A substituibilidade gasolina-etanol depende criticamente da razão de preços — a regra prática de que o etanol é vantajoso quando seu preço é inferior a 70% do preço da gasolina (pela diferença de conteúdo energético) gera uma elasticidade-preço cruzada estimada entre \(+0{,}80\) e \(+1{,}40\).

    - **Heterogeneidade regional**: estudos do IPEA documentam que a elasticidade-preço é maior (em valor absoluto) no Nordeste e menor no Sudeste, refletindo diferenças na participação do gasto com combustíveis no orçamento familiar e na disponibilidade de transporte público.

    - **Decomposição dos efeitos**: Santos (2013), utilizando microdados da POF, decompôs o efeito total em efeito substituição e efeito renda. Para as famílias de menor renda, o efeito renda responde por quase 40% da variação total na demanda por gasolina, confirmando que o combustível representa parcela significativa do orçamento dessas famílias.

    **Implicações de política**: a inelasticidade da demanda por gasolina no curto prazo implica que aumentos de impostos sobre combustíveis (como a CIDE) geram receita tributária substancial, mas com custo de bem-estar significativo — especialmente para famílias de baixa renda, para as quais a variação compensatória pode representar parcela relevante do orçamento mensal.

    *Fontes: ANP — Levantamento de Preços de Combustíveis; IPEA — Texto para Discussão n.º 1.898 (2013); Santos (2013); Cardoso et al. (2019).*

!!! box-mundo "Box Mundo 5.3 — Bens de Giffen na prática: o experimento do arroz na China de Jensen e Miller"

    **Contexto:** A existência de bens de Giffen — bens para os quais a curva de demanda é positivamente inclinada, de modo que um aumento de preço *eleva* a quantidade demandada — é uma das previsões mais contraintuitivas da teoria da demanda. Como discutido na Seção 5.4, o comportamento de Giffen requer que o bem seja fortemente inferior e represente parcela substancial do orçamento, de modo que o efeito renda (positivo) domine o efeito substituição (negativo). Apesar de figurar em todos os manuais de microeconomia desde Alfred Marshall (1890), a evidência empírica direta de bens de Giffen foi, durante mais de um século, notavelmente escassa e controversa. A situação mudou em 2008, quando Robert Jensen e Nolan Miller publicaram o que é considerado o primeiro experimento controlado que documenta rigorosamente o comportamento de Giffen em condições naturais.

    **Dados:** Jensen e Miller (2008, *American Economic Review*) conduziram um experimento de campo na província de Hunan (sul da China) e na província de Gansu (noroeste). Em cada localidade, famílias de baixa renda foram aleatoriamente designadas a receber subsídios ao preço do alimento básico local — arroz em Hunan e trigo em Gansu — por cinco meses, com o subsídio sendo depois removido. O desenho experimental permitiu estimar a curva de demanda de forma causal. Os resultados para o arroz em Hunan foram inequívocos: quando o subsídio reduziu o preço efetivo do arroz, as famílias consumiram *menos* arroz (e mais carne e vegetais); quando o subsídio foi removido e o preço voltou ao nível original, o consumo de arroz *aumentou*. A elasticidade-preço estimada para o arroz entre as famílias mais pobres de Hunan foi positiva e estatisticamente significativa, da ordem de +0,45. Para o trigo em Gansu, os resultados foram qualitativamente similares, mas estatisticamente mais fracos.

    **Análise:** O resultado de Jensen e Miller confirma a decomposição de Slutsky da Seção 5.4 em condições reais. O arroz em Hunan satisfaz todas as condições teóricas para o comportamento de Giffen: (i) é um bem fortemente inferior — famílias muito pobres consomem arroz como principal fonte calórica e migram para alimentos de maior qualidade à medida que sua renda real aumenta; (ii) representa parcela muito elevada do orçamento alimentar — acima de 50% para as famílias mais pobres da amostra; (iii) as alternativas disponíveis (carne, vegetais) são suficientemente mais caras para que o efeito substituição seja pequeno. Quando o preço do arroz sobe, a queda do poder de compra real é tão severa que as famílias são forçadas a renunciar a alimentos melhores e consumir *mais* do alimento básico e barato — exatamente o mecanismo do efeito renda dominante descrito na Equação de Slutsky. A evidência de Jensen e Miller demonstra que bens de Giffen não são uma curiosidade teórica, mas um fenômeno real que emerge em contextos de pobreza extrema e concentração calórica em um único alimento — com implicações diretas para o desenho de políticas de segurança alimentar e subsídios a alimentos básicos.

    **Fonte:** Jensen, R. T.; Miller, N. H. (2008). Giffen behavior and subsistence consumption. *American Economic Review*, 98(4), 1553–1577. Marshall, A. (1890). *Principles of Economics*. London: Macmillan.

---

A epígrafe deste capítulo dizia que toda variação de preço carrega duas forças opostas. Agora sabemos nomeá-las: o efeito substituição redireciona o consumo (sempre contra o bem que encareceu), e o efeito renda empobrece ou enriquece (dependendo da posição do consumidor). Slutsky nos ensinou a separá-las cirurgicamente — e essa cirurgia é a base de toda análise de política tributária, tarifária e regulatória que veremos daqui para frente.

*Até aqui, cada bem vivia sozinho. No próximo capítulo, eles se encontram — e a relação é complicada.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A função de demanda marshalliana (não compensada) difere da hicksiana (compensada) porque:"
    - (a) A marshalliana mantém a utilidade constante; a hicksiana mantém a renda constante
    - (b) A marshalliana mantém a renda constante; a hicksiana mantém a utilidade constante
    - (c) A marshalliana só se aplica a bens normais; a hicksiana, a bens inferiores
    - (d) A marshalliana é sempre mais elástica que a hicksiana

    ??? success "Resposta"
        **(b)** A demanda marshalliana $x_i(\mathbf{p}, I)$ resulta da maximização de utilidade com renda fixa. A demanda hicksiana $h_i(\mathbf{p}, \bar{u})$ resulta da minimização de despesa com utilidade fixa, isolando o efeito substituição puro. A alternativa (a) inverte as definições; (d) pode não valer para bens inferiores.

??? question "2. Um bem de Giffen é necessariamente:"
    - (a) Um bem de luxo com elasticidade-renda maior que 1
    - (b) Um bem inferior cujo efeito renda (negativo) domina o efeito substituição
    - (c) Um bem com elasticidade-preço cruzada negativa
    - (d) Um bem cuja curva de Engel é linear e positivamente inclinada

    ??? success "Resposta"
        **(b)** Para um bem de Giffen, a quantidade demandada aumenta quando o preço sobe. Isso só ocorre se o bem é inferior (efeito renda negativo) e esse efeito é tão forte que domina o efeito substituição (sempre negativo). Nem todo bem inferior é de Giffen, mas todo bem de Giffen é inferior. As demais alternativas descrevem propriedades incompatíveis com bens de Giffen.

??? question "3. A curva de Engel para um bem normal com elasticidade-renda constante igual a 2 tem formato:"
    - (a) Linear com inclinação positiva passando pela origem
    - (b) Côncava — cresce a taxas decrescentes
    - (c) Convexa — cresce a taxas crescentes
    - (d) Horizontal

    ??? success "Resposta"
        **(c)** Elasticidade-renda $\eta_I = 2 > 1$ (bem de luxo): a demanda cresce mais que proporcionalmente à renda, gerando uma curva de Engel convexa. Se $\eta_I = 1$, a curva seria linear (a); se $0 < \eta_I < 1$ (necessidade), seria côncava (b). A alternativa (d) implicaria demanda insensível à renda.

??? question "4. A identidade de Slutsky pode ser escrita como $\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}$. O termo $-x_j \frac{\partial x_i}{\partial I}$ representa:"
    - (a) O efeito substituição
    - (b) O efeito renda — a mudança na demanda devida à variação no poder de compra real
    - (c) A elasticidade-preço cruzada
    - (d) A variação compensadora

    ??? success "Resposta"
        **(b)** Na equação de Slutsky, $\partial h_i/\partial p_j$ é o efeito substituição e $-x_j \cdot \partial x_i/\partial I$ é o efeito renda. Quando $p_j$ sobe, o poder de compra cai na proporção da quantidade consumida $x_j$, e o impacto sobre a demanda de $i$ depende de como $x_i$ responde à renda ($\partial x_i/\partial I$).

??? question "5. Se a demanda marshalliana de um bem cai quando a renda aumenta, esse bem é classificado como:"
    - (a) Bem de Giffen
    - (b) Bem de luxo
    - (c) Bem inferior
    - (d) Bem complementar

    ??? success "Resposta"
        **(c)** Um bem inferior tem elasticidade-renda negativa: $\partial x/\partial I < 0$. Quando a renda cresce, o consumidor substitui o bem por alternativas de qualidade superior. A alternativa (a) é um caso extremo de bem inferior (efeito renda domina o substituição), não apenas renda-negativo; (b) é o oposto; (d) descreve relação entre bens, não resposta à renda.

---

## 📋 Resumo do Capítulo

- As funções de demanda marshalliana (não-compensada) são homogêneas de grau zero em preços e renda, esgotam o orçamento (Lei de Walras) e dependem de preços e renda; as funções hicksianas (compensadas) mantêm a utilidade constante e capturam apenas o efeito substituição.
- Variações na renda geram curvas de Engel e permitem classificar bens como normais (elasticidade-renda positiva) ou inferiores (negativa), e ainda como necessidades (elasticidade entre 0 e 1) ou bens de luxo (elasticidade maior que 1).
- A Equação de Slutsky decompõe o efeito de uma variação de preço em efeito substituição (sempre não-positivo para o próprio preço) e efeito renda, fundamentando a Lei da Demanda para bens normais e explicando a possibilidade teórica de bens de Giffen.
- As elasticidades-preço, elasticidade-renda e elasticidade cruzada quantificam a sensibilidade da demanda a variações de preços e renda, obedecendo restrições como a agregação de Engel e a homogeneidade.
- O excedente do consumidor, a variação compensatória (VC) e a variação equivalente (VE) são medidas de bem-estar que permitem avaliar o impacto de mudanças de preço sobre os consumidores; para preferências quase-lineares, as três medidas coincidem.
- A teoria da preferência revelada fornece uma abordagem alternativa que, sem postular funções de utilidade, permite testar a racionalidade do consumidor e demonstrar que o efeito substituição é não-positivo.

## 🔑 Conceitos-Chave

<a id="tabela-5-2"></a>

| Conceito | Definição |
|----------|-----------|
| Demanda marshalliana | Função de demanda que resulta da maximização de utilidade sujeita à restrição orçamentária; depende de preços e renda nominal. |
| Demanda hicksiana | Função de demanda compensada que minimiza o dispêndio para atingir um dado nível de utilidade; depende de preços e utilidade-alvo. |
| Equação de Slutsky | Identidade que decompõe o efeito total de uma variação de preço em efeito substituição (hicksiano) e efeito renda. |
| Efeito substituição | Variação na demanda devida à mudança nos preços relativos, mantendo utilidade (Hicks) ou poder de compra (Slutsky) constante; sempre não-positivo para o próprio preço. |
| Efeito renda | Variação na demanda devida à mudança no poder de compra real causada pela alteração do preço. |
| Bem de Giffen | Bem inferior cujo efeito renda domina o efeito substituição, gerando uma curva de demanda positivamente inclinada. |
| Elasticidade-preço da demanda | Variação percentual na quantidade demandada dividida pela variação percentual no preço; mede a sensibilidade da demanda ao preço. |
| Excedente do consumidor | Diferença entre a disposição a pagar e o preço efetivamente pago; corresponde à área abaixo da curva de demanda e acima do preço. |
| Variação compensatória (VC) | Montante de renda que, após uma variação de preço, restaura o nível de utilidade original do consumidor. |
| Preferência revelada | Abordagem que infere racionalidade e relações de preferência a partir de escolhas observadas, sem postular funções de utilidade. |

<div class="caption-obj" markdown>
**Tabela 5.2 — Conceitos-chave.**
</div>

## ✏️ Exercícios

<a id="ex-5-1"></a>**Exercício 5.1.** Considere a função de utilidade \(U(x_1, x_2) = x_1^{1/3} x_2^{2/3}\), com preços \(p_1\), \(p_2\) e renda \(I\).

(a) Derive as funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

(b) Verifique a homogeneidade de grau zero e o esgotamento da renda.

(c) Classifique os bens como normais ou inferiores, e como luxo ou necessidade.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-1)

---

<a id="ex-5-2"></a>**Exercício 5.2.** Um consumidor tem função de utilidade \(U(x, y) = \ln x + y\) (quase-linear), com preços \(p_x\), \(p_y = 1\) e renda \(I\).

(a) Derive as demandas marshalliana e hicksiana para \(x\).

(b) Mostre que o efeito renda para o bem \(x\) é zero e interprete economicamente.

(c) Calcule a variação compensatória, a variação equivalente e o excedente do consumidor marshalliano para uma queda de \(p_x\) de 4 para 1. Confirme que as três medidas coincidem.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-2)

---

<a id="ex-5-3"></a>**Exercício 5.3.** Utilizando a Equação de Slutsky, demonstre formalmente que um bem de Giffen deve ser necessariamente um bem inferior. É verdade que todo bem inferior é de Giffen? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-3)

---

<a id="ex-5-4"></a>**Exercício 5.4 (Elasticidades e agregação).** Uma economia tem dois bens. As parcelas orçamentárias são \(w_1 = 0{,}4\) e \(w_2 = 0{,}6\). A elasticidade-renda do bem 1 é \(\varepsilon_{x_1, I} = 0{,}5\).

(a) Calcule a elasticidade-renda do bem 2 usando a Agregação de Engel.

(b) Classifique cada bem como luxo ou necessidade.

(c) Se a elasticidade-preço própria do bem 1 é \(\varepsilon_{x_1, p_1} = -0{,}8\), use a condição de homogeneidade para calcular a elasticidade-preço cruzada \(\varepsilon_{x_1, p_2}\).

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-4)

---

<a id="ex-5-5"></a>**Exercício 5.5 (Aplicação ao Brasil).** Suponha que a elasticidade-preço da gasolina no Brasil é \(-0{,}40\) e que a elasticidade-preço cruzada gasolina-etanol é \(+1{,}10\). O governo decide aumentar a CIDE de modo que o preço da gasolina suba 15%.

(a) Estime a variação percentual na demanda por gasolina.

(b) Estime a variação percentual na demanda por etanol.

(c) Discuta as limitações dessa análise estática e como ela poderia subestimar ou superestimar os efeitos de longo prazo.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-5)

---

<a id="ex-5-6"></a>**Exercício 5.6.** Considere a função de utilidade \(U(x_1, x_2) = x_1^{1/4} x_2^{3/4}\), com preços \(p_1 = 2\), \(p_2 = 6\) e renda \(I = 240\).

(a) Derive as funções de demanda marshalliana.

(b) Calcule as elasticidades-renda \(\varepsilon_{x_1, I}\) e \(\varepsilon_{x_2, I}\).

(c) Classifique cada bem como normal ou inferior, e como luxo ou necessidade. Interprete os resultados à luz da estrutura Cobb-Douglas.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-6)

---

<a id="ex-5-7"></a>**Exercício 5.7 (Verdadeiro ou Falso).** Julgue cada afirmação com justificativa formal:

(a) Todo bem de Giffen é necessariamente inferior.

(b) Todo bem inferior é necessariamente de Giffen.

(c) Para uma função de utilidade Cobb-Douglas \(U = x_1^a x_2^{1-a}\), todos os bens são de luxo.

(d) Para uma utilidade quase-linear \(U = v(x_1) + x_2\), o efeito substituição de Slutsky sobre o bem 1 é igual ao efeito total.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-7)

---

<a id="ex-5-8"></a>**Exercício 5.8 (VC, VE e EC).** Um consumidor tem utilidade \(U(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), com preços \(p_1 = p_2 = 1\) e renda \(I = 100\). O preço do bem 1 sobe para \(p_1' = 4\).

(a) Encontre as cestas ótimas antes e depois da variação de preço.

(b) Decomponha o efeito total sobre \(x_1\) em efeito substituição e efeito renda (decomposição de Hicks).

(c) Calcule a variação compensatória (VC) e a variação equivalente (VE).

(d) Calcule o excedente do consumidor marshalliano (\(\Delta EC\)) e verifique a ordenação \(VC < \Delta EC < VE\).

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-8)

---

<a id="ex-5-9"></a>**Exercício 5.9 (Aplicação ao Brasil — elasticidades e agregação).** Uma família brasileira típica aloca 40% de seu orçamento em alimentos (\(w_1 = 0{,}4\)) e 60% em outros bens (\(w_2 = 0{,}6\)). A elasticidade-renda dos alimentos é \(\varepsilon_{1,I} = 0{,}6\) e a elasticidade-preço própria dos alimentos é \(\varepsilon_{1,p_1} = -0{,}5\).

(a) Use a Agregação de Engel para calcular a elasticidade-renda dos outros bens \(\varepsilon_{2,I}\).

(b) Use a condição de homogeneidade para calcular a elasticidade-preço cruzada dos alimentos em relação ao preço dos outros bens \(\varepsilon_{1,p_2}\).

(c) Se os preços dos alimentos sobem 10%, estime a variação percentual na demanda por alimentos.

(d) Usando a equação de Slutsky na forma de elasticidades, decomponha o efeito calculado em (c) em efeito substituição e efeito renda. Interprete os resultados no contexto de política de segurança alimentar no Brasil.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-9)

---

<a id="ex-5-10"></a>**Exercício 5.10 (Prova — Propriedades da Matriz de Slutsky).** Seja \(\mathbf{S}\) a matriz de Slutsky com elementos \(s_{ij} = \frac{\partial h_i}{\partial p_j}\), onde \(h_i(\mathbf{p}, \bar{U})\) é a demanda hicksiana do bem \(i\).

(a) Usando o fato de que a função dispêndio \(E(\mathbf{p}, \bar{U})\) é côncava em \(\mathbf{p}\) e o Lema de Shephard, mostre que \(\mathbf{S}\) é **simétrica** (\(s_{ij} = s_{ji}\)) e **negativa semidefinida**.

(b) Mostre que \(\mathbf{S} \mathbf{p} = \mathbf{0}\), ou seja, o vetor de preços está no núcleo da matriz de Slutsky. Interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap05.md#ex-5-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2010 — Questão 03"
    Com relação à classificação dos bens (em normal, de luxo, necessário, inferior, comum e de Giffen) e às demandas por esses bens, julgue as questões a seguir:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Se um bem é normal, então ele não pode ser um bem de Giffen. |
    | 1    | Se um bem é de Giffen, então ele deve ser um bem inferior. |
    | 2    | Suponha que existam apenas dois bens, cujas demandas são denotadas por \(x\) e \(y\). Se \(x\) apresenta elasticidade-renda unitária e o consumidor gasta uma fração positiva de sua renda em cada bem, então \(y\) também apresenta elasticidade-renda unitária. |
    | 3    | Suponha que existam apenas dois bens, 1 e 2. Suponha ainda que o bem 1 é um bem comum e que sua demanda é elástica relativamente ao seu próprio preço. Se o bem 1 é um complementar bruto do bem 2, então o bem 1 é um bem normal necessário. |
    | 4    | Suponha que existam apenas dois bens, 1 e 2. Suponha ainda que o consumidor gasta metade de sua renda em cada bem e que o bem 1 é um bem normal de luxo, com elasticidade-renda estritamente maior que 2. Então o bem 2 deve ser um bem inferior. |

    ??? success "Gabarito"
        **Respostas: 11001**

        **Justificativa por item:**

        - **Item 0 — V:** Pela Equação de Slutsky, \(\frac{\partial x}{\partial p} = \underbrace{\frac{\partial h}{\partial p}}_{\leq 0} - x \underbrace{\frac{\partial x}{\partial I}}_{> 0 \text{ (normal)}}\). Ambos os termos são não-positivos, logo \(\frac{\partial x}{\partial p} \leq 0\) — impossível ser Giffen.

        - **Item 1 — V:** Pela Equação de Slutsky, se \(\frac{\partial x}{\partial p} > 0\) (Giffen), dado que \(\frac{\partial h}{\partial p} \leq 0\), é necessário que \(-x \frac{\partial x}{\partial I} > 0\), ou seja, \(\frac{\partial x}{\partial I} < 0\): o bem é inferior.

        - **Item 2 — V:** Pela Agregação de Engel: \(w_x \varepsilon_{x,I} + w_y \varepsilon_{y,I} = 1\). Com \(\varepsilon_{x,I} = 1\): \(w_x + w_y \varepsilon_{y,I} = 1\). Como \(w_x + w_y = 1\), segue que \(w_y \varepsilon_{y,I} = w_y\), logo \(\varepsilon_{y,I} = 1\).

        - **Item 3 — F:** Pela Condição de Homogeneidade: \(\varepsilon_{1,p_1} + \varepsilon_{1,p_2} + \varepsilon_{1,I} = 0\). O bem 1 é comum (\(\varepsilon_{1,p_1} < 0\)) e elástico (\(\varepsilon_{1,p_1} < -1\)). É complementar bruto de 2 (\(\varepsilon_{1,p_2} < 0\)). Então \(\varepsilon_{1,I} = -(\varepsilon_{1,p_1} + \varepsilon_{1,p_2}) > 1\). O bem 1 é de **luxo** (não necessidade).

        - **Item 4 — V:** Pela Agregação de Engel: \(0{,}5 \cdot \varepsilon_{1,I} + 0{,}5 \cdot \varepsilon_{2,I} = 1\), logo \(\varepsilon_{1,I} + \varepsilon_{2,I} = 2\). Se \(\varepsilon_{1,I} > 2\), então \(\varepsilon_{2,I} < 0\): o bem 2 é inferior.

??? question "ANPEC 2017 — Questão 04"
    Um consumidor, cuja função utilidade é dada por \(U(x, y) = \sqrt{x} + y\), possui renda \(R = \$2{,}50\). O preço do bem \(y\) é unitário e \(P\) representa o preço de \(x\). O preço \(P\) inicialmente é vinte e cinco centavos e passa em um segundo momento para cinquenta centavos. Avalie as proposições:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Na situação inicial o consumidor alcança utilidade \(U = 3\). |
    | 1    | No segundo momento a cesta consumida será \((x,y) = (1,3)\). |
    | 2    | A variação compensadora (VC) é igual a vinte e cinco centavos, que devem ser dados ao consumidor após a mudança no preço. |
    | 3    | A variação equivalente (VE) requer que se tire dinheiro do consumidor antes da variação no preço para que, neste caso, a utilidade se reduza em meia unidade. |
    | 4    | Neste caso, as variações compensadora e equivalente são iguais ao excedente do consumidor. |

    ??? success "Gabarito"
        **Respostas: 00011**

        **Justificativa por item:**

        - **Item 0 — F:** CPO: \(\frac{1}{2\sqrt{x}} = P\), logo \(x = \frac{1}{4P^2}\). Com \(P_0 = 0{,}25\): \(x_0 = \frac{1}{4 \times 0{,}0625} = 4\), \(y_0 = 2{,}5 - 0{,}25 \times 4 = 1{,}5\). \(U_0 = \sqrt{4} + 1{,}5 = 2 + 1{,}5 = 3{,}5\). Não é 3.

        - **Item 1 — F:** Com \(P_1 = 0{,}50\): \(x_1 = \frac{1}{4 \times 0{,}25} = 1\), \(y_1 = 2{,}5 - 0{,}5 \times 1 = 2{,}0\). A cesta é \((1; 2)\), não \((1; 3)\).

        - **Item 2 — F:** Função dispêndio (quase-linear): \(E(P, \bar{U}) = \bar{U} - \frac{1}{4P}\). \(VC = E(P_1, U_0) - R = (3{,}5 - 0{,}5) - 2{,}5 = 0{,}5\), não 0,25.

        - **Item 3 — V:** \(VE = R - E(P_0, U_1) = 2{,}5 - (3{,}0 - 1) = 0{,}5\). A utilidade original era 3,5 e a final é 3,0 — uma redução de meia unidade. Tirar \(\$0{,}50\) do consumidor aos preços iniciais produz utilidade \(3{,}5 - 0{,}5 = 3{,}0 = U_1\). ✓

        - **Item 4 — V:** Para utilidade quase-linear, \(VC = VE = \Delta EC\). Neste caso, \(\Delta EC = \int_{0{,}25}^{0{,}50} \frac{1}{4P^2}\,dP = \left[-\frac{1}{4P}\right]_{0{,}25}^{0{,}50} = (-0{,}5) - (-1) = 0{,}5\). As três medidas coincidem em \(\$0{,}50\). ✓

??? question "ANPEC 2025 — Questão 08"
    Considere uma utilidade \(U(X,Y) = \sqrt{XY}\), \(p_0 = \$9\) o preço inicial de \(X\), \(q_0 = \$1\) o preço inicial de \(Y\) e \(r_0 = \$576\) a renda do indivíduo. Posteriormente, o preço de \(X\) sobe para \(p_1 = \$16\). Esta questão trata da decomposição de Slutsky e, em particular, do efeito-preço de Slutsky, mas trata também do chamado efeito-preço puro, no sentido de Gary Becker. O efeito-preço puro é determinado do seguinte modo: dada a mudança de preço do bem \(X\), considera-se o incremento de renda precisamente suficiente para tornar factível novamente a cesta marshalliana inicial; sob essa nova linha orçamentária, determina-se a demanda marshalliana \(X_b\) pelo bem \(X\); se \(X_0\) denota a demanda marshalliana inicial, então o efeito-preço puro é \(EP_{\text{puro}} = X_b - X_0\). Julgue:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | A demanda marshalliana inicial é \((X_0, Y_0) = (32, 288)\). |
    | 1    | Dada a mudança de preço, a renda necessária para o indivíduo manter o nível de utilidade anterior é \(\$768\). |
    | 2    | O efeito-preço de Slutsky (sobre o bem \(X\)) decorrente da mudança de preço é \(EP = -16\), ou seja, uma redução de 16 unidades no consumo de \(X\). |
    | 3    | O efeito-substituição de Slutsky (sobre o bem \(X\)) é \(ES = -6\), ou seja, uma redução de 6 unidades no consumo de \(X\). |
    | 4    | O efeito-preço puro (sobre o bem \(X\)) é \(EP_{\text{puro}} = -7\), ou seja, uma redução de 7 unidades no consumo de \(X\). |

    ??? success "Gabarito"
        **Respostas: 11001**

        **Justificativa por item:**

        - **Item 0 — V:** Para \(U = \sqrt{XY}\) (Cobb-Douglas com \(a = b = 1/2\)): \(X_0 = r/(2p_0) = 576/18 = 32\), \(Y_0 = r/(2q_0) = 576/2 = 288\). ✓

        - **Item 1 — V:** \(U_0 = \sqrt{32 \times 288} = \sqrt{9216} = 96\). Função dispêndio: \(E = 2U_0\sqrt{p_1 q_0} = 2 \times 96 \times \sqrt{16} = 192 \times 4 = 768\). ✓

        - **Item 2 — F:** O efeito total (efeito-preço) é: \(X_1 = r/(2p_1) = 576/32 = 18\). \(EP = X_1 - X_0 = 18 - 32 = -14\), não \(-16\).

        - **Item 3 — F:** Compensação de Slutsky: a renda que torna a cesta original acessível é \(r_S = p_1 X_0 + q_0 Y_0 = 16 \times 32 + 288 = 800\). Demanda sob compensação: \(X_S = r_S/(2p_1) = 800/32 = 25\). \(ES = X_S - X_0 = 25 - 32 = -7\), não \(-6\).

        - **Item 4 — V:** O efeito-preço puro (Becker) segue o mesmo procedimento da compensação de Slutsky: incrementa-se a renda para que a cesta original seja factível (\(r_S = 800\)), e calcula-se a nova demanda marshalliana. \(X_b = 800/32 = 25\). \(EP_{\text{puro}} = 25 - 32 = -7\). ✓

---

## 🔬 Pesquisa em Ação

??? pesquisa "Jensen, R. T.; Miller, N. H. (2008). [Giffen Behavior and Subsistence Consumption](https://doi.org/10.1257/aer.98.4.1553). *The American Economic Review*, 98(4), 1553–1577."
    **Pergunta central:** Bens de Giffen — aqueles cuja demanda aumenta quando o preço sobe — são uma curiosidade teórica ou existem de fato? Desde que Alfred Marshall popularizou a ideia no século XIX atribuindo-a a Sir Robert Giffen, nenhum estudo havia conseguido documentar convincentemente esse comportamento com dados de campo.

    **Método:** Jensen e Miller conduziram um experimento de campo randomizado em duas províncias chinesas: Hunan (onde o alimento básico é o arroz) e Gansu (onde é o trigo). O experimento subsidiou aleatoriamente o preço do alimento básico para famílias extremamente pobres e mediu as variações na quantidade demandada. O desenho experimental permitiu identificar a curva de demanda de forma causal, evitando problemas de endogeneidade comuns em estudos observacionais.

    **Resultado principal:** Os autores encontraram evidência forte de comportamento de Giffen para o arroz em Hunan: quando o subsídio reduzia o preço do arroz, as famílias passavam a consumir *menos* arroz e *mais* alimentos de maior qualidade (carne, vegetais). Ou seja, o subsídio (redução de preço) diminuiu a demanda — o oposto do que a Lei da Demanda prevê para bens comuns. Para o trigo em Gansu, a evidência foi mais fraca, mas na mesma direção.

    **Por que isso importa:** O resultado confirma que bens de Giffen podem surgir em contextos de subsistência, onde o alimento básico domina o orçamento. A mecânica é exatamente a prevista pela Equação de Slutsky: o efeito renda é tão forte (porque o bem representa parcela enorme do gasto) e o bem é tão inferior (porque com mais poder de compra as famílias migram para alimentos melhores) que domina o efeito substituição.

    **Relevância para o capítulo:** O estudo é a ilustração empírica mais rigorosa das Seções 5.3–5.4. Ele demonstra que a Equação de Slutsky não é apenas uma identidade matemática: suas implicações qualitativas — em particular, que um bem de Giffen deve ser inferior e representar parcela substancial do orçamento — encontram confirmação nos dados. O caso também ilumina a discussão sobre bens inferiores no Brasil (farinha de mandioca), embora o contexto brasileiro contemporâneo não seja de subsistência pura, tornando o surgimento de Giffen improvável.

??? pesquisa "Hausman, J. A. (1981). [Exact Consumer's Surplus and Deadweight Loss](https://www.jstor.org/stable/1805921). *The American Economic Review*, 71(4), 662–676."
    **Pergunta central:** O excedente do consumidor marshalliano, calculado a partir da curva de demanda observável, é uma boa medida da variação de bem-estar causada por mudanças de preço? Ou é necessário recorrer às medidas exatas — variação compensatória (VC) e variação equivalente (VE) — baseadas nas demandas hicksianas não-observáveis?

    **Método:** Hausman desenvolveu um procedimento para calcular a VC e a VE exatas a partir de estimativas econométricas da demanda marshalliana observada. O método explora a Equação de Slutsky e a dualidade entre problema primal e dual para recuperar a demanda hicksiana a partir da marshalliana, permitindo calcular as medidas exatas de bem-estar sem precisar estimar diretamente a função dispêndio.

    **Resultado principal:** Aplicando o método à tributação do trabalho nos EUA, Hausman mostrou que o peso morto (perda de bem-estar) calculado com o EC marshalliano pode subestimar a perda real em 30% ou mais. A diferença entre EC e VC/VE é tanto maior quanto maior o efeito renda e quanto maior a variação de preço — exatamente o que a teoria das Seções 5.8.2–5.8.4 prevê.

    **Por que isso importa:** O artigo é fundamental para a avaliação de políticas públicas no Brasil. Quando o governo altera alíquotas de ICMS sobre bens essenciais ou implementa tarifas de energia elétrica escalonadas, a diferença entre usar o EC marshalliano e a VC exata pode ser substancial, especialmente para famílias de baixa renda (para as quais o efeito renda é proporcionalmente maior).

    **Relevância para o capítulo:** Hausman operacionaliza a relação \(VC < EC < VE\) (Seção 5.8.4), mostrando que essa desigualdade tem consequências quantitativas relevantes. O método ilustra também a utilidade prática da Equação de Slutsky: ela não apenas decompõe efeitos, mas permite reconstruir a curva de demanda compensada a partir da observável — ponte entre teoria e política.

??? pesquisa "Deaton, A. (1988). [Quality, Quantity, and Spatial Variation of Price](https://www.jstor.org/stable/1816031). *American Economic Review*, 78(3), 418–430."
    **Pergunta central:** Como estimar elasticidades de demanda a partir de pesquisas domiciliares quando os preços não são diretamente observados — apenas os gastos totais e as quantidades adquiridas (valores unitários)?

    **Método:** Deaton desenvolve um método que explora a variação espacial dos valores unitários — o preço médio implícito pago por cada família — como proxy dos preços de mercado. O insight é que, dentro de um cluster geográfico, as diferenças nos valores unitários entre famílias refletem diferenças de qualidade (efeito de qualidade), enquanto as diferenças entre clusters refletem variações nos preços de mercado. O método separa esses dois componentes, corrigindo o viés que surge ao usar valores unitários diretamente como preços.

    **Resultado principal:** O método permite estimar de forma consistente as elasticidades-preço e as elasticidades-renda (qualidade) a partir de dados de orçamentos domiciliares como a POF brasileira, mesmo na ausência de dados de preços independentes. Deaton aplica o método a dados de países em desenvolvimento, obtendo estimativas de demanda para alimentos básicos que respeitem as restrições da Equação de Slutsky.

    **Por que isso importa:** Em países em desenvolvimento, incluindo o Brasil, os microdados de pesquisas domiciliares (POF/IBGE) são muitas vezes a única fonte disponível para estimar demanda. O método de Deaton tornou-se o padrão para extrair elasticidades desses dados — conectando diretamente as restrições teóricas da Seção 5.7 (simetria, homogeneidade, agregação de Engel) à prática econométrica.

    **Relevância para o capítulo:** O artigo operacionaliza empiricamente as elasticidades definidas na Seção 5.7, mostrando como as restrições teóricas (simetria de Slutsky, condição de homogeneidade) são impostas na estimação. É também a base metodológica de muitas estimativas da Tabela 5.1.

??? pesquisa "Attanasio, O.; Pistaferri, L. (2016). [Consumption Inequality](https://doi.org/10.1257/jep.30.2.3). *Journal of Economic Perspectives*, 30(2), 3–28."
    **Pergunta central:** O que os dados de consumo nos dizem sobre a evolução da desigualdade econômica — e por que as medidas baseadas em consumo frequentemente diferem das medidas baseadas em renda?

    **Método:** Os autores revisam sistematicamente a literatura empírica sobre desigualdade de consumo nos EUA e em outros países desenvolvidos, discutindo as diferenças conceituais e de mensuração entre desigualdade de consumo e de renda. Utilizam as ferramentas da teoria da demanda — em particular, o excedente do consumidor e as medidas de bem-estar (VC e VE) — para interpretar as implicações bem-estaristas das mudanças na distribuição do consumo.

    **Resultado principal:** A desigualdade de consumo cresceu menos do que a desigualdade de renda nos EUA desde os anos 1980, sugerindo que mecanismos de seguro (seguros privados, transferências governamentais, poupança precaucional) atenuaram o repasse da variabilidade de renda para o consumo. No entanto, a diferença depende criticamente das escolhas de mensuração e das deflações de preços utilizadas.

    **Por que isso importa:** No contexto brasileiro, onde a desigualdade de renda é elevada e as políticas de transferência como o Bolsa Família têm impacto significativo, a distinção entre desigualdade de renda e de consumo é central para a avaliação de bem-estar. As ferramentas da Seção 5.8 (VC e VE) são precisamente os instrumentos teóricos para conectar variações de preços e renda a mudanças no bem-estar do consumidor.

    **Relevância para o capítulo:** Conecta as medidas de bem-estar da Seção 5.8 a questões de distribuição e política social, mostrando que VC e VE não são apenas instrumentos teóricos — são a base de análises empíricas sobre como políticas afetam o bem-estar de diferentes grupos de consumidores.

??? pesquisa "Hoderlein, S.; Stoye, J. (2014). [Revealed Preferences in a Heterogeneous Population](https://doi.org/10.1162/REST_a_00327). *Review of Economics and Statistics*, 96(2), 197–213."
    **Pergunta central:** As condições de preferência revelada — em particular o Axioma Fraco da Preferência Revelada (AFPR) — são testáveis empiricamente quando a população é heterogênea, isto é, quando diferentes consumidores têm preferências distintas?

    **Método:** Os autores desenvolvem testes não-paramétricos das condições de preferência revelada (AFPR e ASPR — Axioma Forte) que são válidos em populações heterogêneas. O problema é delicado: dados de pesquisa domiciliar observam diferentes indivíduos a diferentes preços, não o mesmo indivíduo sob preços distintos. Os autores mostram que, apesar dessa limitação, é possível testar se a distribuição de escolhas observadas é consistente com alguma população de consumidores racionais heterogêneos.

    **Resultado principal:** Usando dados do Consumer Expenditure Survey americano, os autores encontram que as restrições de preferência revelada não são sistematicamente violadas — sugerindo que o modelo de consumidor racional é compatível com os dados, mesmo permitindo heterogeneidade não observada. Os testes são mais informativos quando a variação de preços é grande, e em alguns subgrupos as restrições são violadas por motivos associados a erros de mensuração.

    **Por que isso importa:** A teoria da preferência revelada (Seção 5.9) é frequentemente criticada por ser tautológica ou impossível de testar com dados reais. Hoderlein e Stoye mostram que ela tem conteúdo empírico mensurável mesmo com dados de corte transversal — exatamente o tipo disponível em pesquisas como a POF brasileira.

    **Relevância para o capítulo:** Conecta diretamente a Seção 5.9 (AFPR e negatividade do efeito substituição) à pesquisa empírica moderna, mostrando que os axiomas de racionalidade do consumidor são testáveis e informativos com microdados. Ilustra também como as restrições teóricas derivadas neste capítulo servem de base para testes empíricos de comportamento racional.

## 📚 Referências do Capítulo

- Almeida, Alexandre Nunes de, e Carlos Roberto Azzoni. 2016. "[Custo de vida comparativo das regiões metropolitanas brasileiras: 1996–2014.](https://doi.org/10.1590/0101-416146128aaa)" *Estudos Econômicos* 46 (1): 253–276.
- Attanasio, Orazio, e Luigi Pistaferri. 2016. "[Consumption Inequality.](https://doi.org/10.1257/jep.30.2.3)" *Journal of Economic Perspectives* 30 (2): 3–28.
- Cardoso, Breno Ferreira, Marcelo Tavares de Azevedo, e Francisco Carlos da Cunha Cassuce. 2019. "Estimação da elasticidade-preço da demanda, da elasticidade-renda e da elasticidade preço-cruzada no Brasil." *Análise Econômica* 37 (74): 7–30.
- Deaton, Angus. 1988. "[Quality, Quantity, and Spatial Variation of Price.](https://www.jstor.org/stable/1816031)" *American Economic Review* 78 (3): 418–430.
- Hausman, Jerry A. 1981. "[Exact Consumer's Surplus and Deadweight Loss.](https://www.jstor.org/stable/1806997)" *The American Economic Review* 71 (4): 662–676.
- Hoderlein, Stefan, e Jörg Stoye. 2014. "[Revealed Preferences in a Heterogeneous Population.](https://doi.org/10.1162/REST_a_00327)" *Review of Economics and Statistics* 96 (2): 197–213.
- IBGE — Instituto Brasileiro de Geografia e Estatística. 2020. [*Pesquisa de Orçamentos Familiares 2017–2018: análise do consumo alimentar pessoal no Brasil*](https://www.ibge.gov.br/estatisticas/sociais/rendimento-despesa-e-consumo/9050-pesquisa-de-orcamentos-familiares.html). Rio de Janeiro: IBGE.
- Jensen, Robert T., e Nolan H. Miller. 2008. "[Giffen Behavior and Subsistence Consumption.](https://doi.org/10.1257/aer.98.4.1553)" *The American Economic Review* 98 (4): 1553–1577.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulos 2–3.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 5.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. Boston: Pearson. Capítulos 4–5.
- Varian, Hal R. 2015. [*Microeconomia*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulos 8–9, 14.
