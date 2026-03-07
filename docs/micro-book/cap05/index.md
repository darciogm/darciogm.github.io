# Capítulo 5 — Slutsky no Supermercado

> *"Toda variação de preço carrega em si duas forças opostas: uma que empobrece e outra que redireciona."*

No Capítulo 4, derivamos as condições de otimalidade do consumidor e obtivemos as funções de demanda marshalliana e hicksiana. Agora, é hora de explorar o que acontece quando os parâmetros do problema — renda e preços — se alteram. Este capítulo é o coração da teoria da demanda: aqui compreenderemos por que a curva de demanda é (quase sempre) negativamente inclinada, como decompor o efeito de uma variação de preço em duas forças distintas e como medir o bem-estar do consumidor diante de mudanças no ambiente econômico.

---

## 5.1 Funções de Demanda e Suas Propriedades

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

A propriedade de homogeneidade de grau zero expressa a ausência de **ilusão monetária**: se todos os preços e a renda dobrarem simultaneamente, a cesta ótima permanece inalterada, pois o conjunto orçamentário não se modifica.

---

## 5.2 Variações na Renda

### 5.2.1 Caminho de expansão da renda e curva de Engel

Mantendo os preços \(p_1\) e \(p_2\) fixos e variando a renda \(I\), o conjunto de cestas ótimas traça o **caminho de expansão da renda** no espaço de bens. A projeção desse caminho em um único bem gera a **curva de Engel**, que relaciona a renda à quantidade demandada.

!!! definition "Curva de Engel"
    A **curva de Engel** para o bem \(i\) é a função \(x_i^*(I)\) obtida fixando-se todos os preços e variando apenas a renda. Formalmente, é o gráfico do mapeamento \(I \mapsto x_i^*(p_1, \ldots, p_n, I)\).

!!! abstract "Proposição — Curvas de Engel para preferências homotéticas"
    Se as preferências são **homotéticas** (Cap. 3, §3.6.6), então:

    - O caminho de expansão da renda é uma **reta passando pela origem**.
    - As curvas de Engel são **lineares**: \(x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I\).
    - A **elasticidade-renda** é unitária para todos os bens: \(\varepsilon_{x_i, I} = 1\).

    Se as preferências são **quase-lineares** \(u = v(x_1) + x_2\) (Cap. 3, §3.6.5), então:

    - O caminho de expansão da renda é uma **reta vertical** (\(x_1\) fixo).
    - A curva de Engel de \(x_1\) é **horizontal** (elasticidade-renda zero); a de \(x_2\) é linear com inclinação \(1/p_2\).

### 5.2.2 Bens normais e bens inferiores

!!! definition "Bens normais e bens inferiores"
    - Um bem é **normal** se \(\frac{\partial x_i^*}{\partial I} > 0\): a demanda aumenta com a renda.
    - Um bem é **inferior** se \(\frac{\partial x_i^*}{\partial I} < 0\): a demanda diminui quando a renda cresce.

Exemplos clássicos de bens inferiores no contexto brasileiro incluem a farinha de mandioca e o transporte público em certas faixas de renda — à medida que a renda familiar cresce, o consumo desses itens tende a ser substituído por alternativas de maior qualidade percebida.

!!! example "Box Brasil — Farinha de mandioca: um bem inferior em números"
    A farinha de mandioca é talvez o exemplo mais emblemático de bem inferior no Brasil. Dados do [IBGE](https://www.ibge.gov.br) mostram uma queda expressiva no consumo domiciliar per capita: de 7,76 kg/ano na POF 2002–2003 para 2,33 kg/ano na POF 2017–2018, uma redução de 70% em quinze anos.

    **Padrão por faixa de renda:** tanto a frequência de consumo quanto a quantidade média per capita diária de farinha de mandioca são maiores nos quartis de renda mais baixos. A diferença entre o primeiro e o último quartil de renda é acentuada, confirmando o comportamento de bem inferior (\(\varepsilon_{x,I} < 0\)).

    **Heterogeneidade regional:** o padrão de bem inferior manifesta-se com intensidade diferente entre as regiões. A frequência de consumo atinge 40,6% na Região Norte e 20,1% no Nordeste, mas não passa de 4% no Sul, Sudeste e Centro-Oeste. A queda no consumo foi mais intensa no Nordeste (−75%) e no Norte (−68%), precisamente as regiões que experimentaram os maiores ganhos reais de renda no período.

    **Interpretação econômica:** à medida que a renda cresce, as famílias substituem a farinha de mandioca por alimentos de maior valor nutricional percebido — arroz, massas, proteínas animais —, refletindo o deslocamento ao longo da curva de Engel descendente.

    **Fontes**: IBGE, Pesquisa de Orçamentos Familiares 2002–2003 e 2017–2018. IBGE, *Análise do Consumo Alimentar Pessoal no Brasil*, 2020.

### 5.2.3 Bens de luxo e bens de necessidade

A distinção entre luxo e necessidade depende da **elasticidade-renda** (que formalizaremos na Seção 5.7):

- **Bem de necessidade**: \(0 < \varepsilon_{x,I} < 1\) — a demanda cresce proporcionalmente menos que a renda.
- **Bem de luxo**: \(\varepsilon_{x,I} > 1\) — a demanda cresce proporcionalmente mais que a renda.

Note que todo bem de luxo é normal, mas nem todo bem normal é de luxo.

<figure markdown="span">
  <iframe src="../../graficos/cap05/curva-engel.html" width="100%" height="750" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 5.1</strong> — Curva de Engel e caminho de expansão da renda. Painel superior: espaço de bens com restrições orçamentárias para diferentes níveis de renda e o caminho de expansão (azul). Painel inferior: curvas de Engel para \(x_1\) e \(x_2\). Alterne entre Cobb-Douglas (bens normais) e utilidade quase-linear (efeito renda zero para \(x_1\)).</figcaption>
</figure>

---

## 5.3 Variações no Preço: Efeitos Renda e Substituição

Quando o preço de um bem cai, dois fenômenos ocorrem simultaneamente:

1. **Efeito substituição** (\(ES\)): o bem ficou relativamente mais barato em relação aos demais, induzindo o consumidor a substituir outros bens por ele.
2. **Efeito renda** (\(ER\)): a queda do preço aumenta o poder de compra real do consumidor, permitindo-lhe consumir mais de todos os bens normais.

### 5.3.1 Decomposição de Hicks

Na abordagem de **Hicks**, o efeito substituição é definido mantendo-se o **nível de utilidade** constante. O consumidor é "compensado" de modo a permanecer na mesma curva de indiferença, mas enfrenta a nova razão de preços.

\[
\underbrace{\Delta x_i}_{\text{efeito total}} = \underbrace{\Delta x_i^{ES}}_{\substack{\text{efeito substituição} \\ \text{(utilidade constante)}}} + \underbrace{\Delta x_i^{ER}}_{\substack{\text{efeito renda} \\ \text{(poder de compra)}}}
\]

O efeito substituição de Hicks move o consumidor **ao longo** da curva de indiferença original; o efeito renda move o consumidor **entre** curvas de indiferença.

### 5.3.2 Decomposição de Slutsky

Na abordagem de **Slutsky**, o efeito substituição é definido mantendo-se o **poder de compra** constante — ou seja, compensando-se a renda de modo que a cesta original permaneça acessível. A compensação de Slutsky é dada por:

\[
\Delta I^S = x_i^* \cdot \Delta p_i
\]

Ambas as decomposições convergem para variações infinitesimais de preço e resultam na mesma equação fundamental — a Equação de Slutsky.

!!! tip "Intuição"
    Imagine que a gasolina ficou 10% mais barata. O efeito substituição faz você trocar um pouco de transporte público por carro. O efeito renda faz você "se sentir mais rico", podendo aumentar o consumo de diversos bens. Se a gasolina for um bem normal, ambos os efeitos reforçam a maior demanda. Se for inferior (implausível neste caso), os efeitos se opõem.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Quando um preço muda, duas coisas acontecem ao mesmo tempo: você troca de produto (efeito substituição) e seu poder de compra muda (efeito renda).

    **Pense assim:** Quando o preço da carne bovina sobe no supermercado, você faz duas coisas: troca parte da carne por frango (efeito substituição) e, como seu dinheiro agora compra menos, acaba reduzindo o consumo de outros itens também (efeito renda). A Equação de Slutsky separa matematicamente essas duas forças que, no carrinho de compras, aparecem misturadas.

    **Por que isso importa:** Separar esses efeitos é essencial para política pública — por exemplo, para saber se um aumento no preço da gasolina empurra as pessoas para o etanol (substituição) ou simplesmente as empobrece (renda).

!!! example "Box Brasil — Preços administrados e o efeito substituição: energia elétrica e bandeiras tarifárias"
    No Brasil, diversos preços são fixados ou regulados por agências governamentais — os chamados **preços administrados**, que representam cerca de 25% do IPCA. A energia elétrica é um caso particularmente interessante para a teoria do consumidor, pois o sistema de **bandeiras tarifárias** (verde, amarela e vermelha) funciona como uma variação exógena de preço com periodicidade mensal.

    **Mecanismo:** quando a bandeira muda de verde para vermelha (patamar 2), a tarifa residencial pode subir mais de R$ 0,07/kWh, o que equivale a um aumento de 8–10% no custo da energia. Essa variação é exógena ao consumidor (depende de condições hidrológicas), criando um experimento natural para observar efeitos substituição e renda.

    **Efeito substituição:** quando a bandeira vermelha é ativada, famílias reduzem o uso de chuveiro elétrico, ar-condicionado e máquina de lavar em horários de pico — substituindo eletricidade por gás (aquecimento), ventilação natural ou deslocamento temporal do consumo. A tarifa média de energia residencial subiu em média 5,6% a 6,9% em 2023, segundo a [ANEEL](https://www.aneel.gov.br).

    **Efeito renda:** para famílias de baixa renda, em que a conta de luz pode representar 10–15% do orçamento mensal, o efeito renda do aumento tarifário é significativo, reduzindo o consumo de outros bens.

    **Fontes**: ANEEL — Tarifas e Bandeiras Tarifárias; BCB — Relatório de Inflação; Agência Brasil (2022).

<figure markdown="span">
  <iframe src="../../graficos/cap05/efeito-renda-substituicao.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 5.2</strong> — Decomposição dos efeitos renda e substituição. Ajuste o novo preço \(p_1'\) e observe como o efeito total (vermelho) se decompõe em efeito substituição (verde, ao longo da curva de indiferença) e efeito renda (azul, entre curvas). Alterne entre as decomposições de Hicks e Slutsky.</figcaption>
</figure>

---

## 5.4 Equação de Slutsky

A **Equação de Slutsky** é a pedra angular da teoria da demanda. Ela decompõe formalmente o efeito de uma variação de preço sobre a demanda marshalliana em efeito substituição (hicksiano) e efeito renda.

!!! abstract "Teorema: Equação de Slutsky"
    Para quaisquer bens \(i\) e \(j\):

    \[
    \frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
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

### 5.4.1 Implicações da Equação de Slutsky

Da Equação de Slutsky, extraímos consequências cruciais:

1. **Para o próprio preço** (\(i = j\)): \(\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\leq 0} - x_i \frac{\partial x_i}{\partial I}\). O efeito substituição é sempre não-positivo (pela concavidade da função dispêndio). Logo, se o bem for normal (\(\frac{\partial x_i}{\partial I} > 0\)), a demanda cai quando o preço sobe — a **Lei da Demanda** vale sem ambiguidade.

2. **Bens de Giffen**: se o bem for inferior e o efeito renda dominar o efeito substituição, \(\frac{\partial x_i}{\partial p_i} > 0\), e temos um **bem de Giffen**. Esses casos são raros e exigem que o bem represente parcela significativa do orçamento — condição necessária para que o efeito renda seja suficientemente forte.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Um bem de Giffen é tão essencial e ocupa tanta parte do orçamento que, quando seu preço sobe, o consumidor fica tão mais pobre que acaba comprando *mais* dele, não menos.

    **Pense assim:** Pense numa família muito pobre que gasta quase tudo em farinha de mandioca. Se o preço da farinha sobe, a família não pode mais comprar carne (que já era rara). Ela fica tão mais pobre que precisa comer *ainda mais* farinha para sobreviver — o efeito renda (empobrecimento) domina o efeito substituição. Na prática, esse fenômeno é raríssimo e só foi documentado de forma robusta para o arroz entre famílias extremamente pobres na China.

    **Por que isso importa:** O paradoxo de Giffen mostra por que a Lei da Demanda não é uma lei universal — e por que programas como o Bolsa Família, ao elevar a renda, podem eliminar esse tipo de comportamento extremo.

3. **Simetria de Slutsky**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\). Os efeitos substituição cruzados são simétricos.

!!! note "Giffen na prática: arroz na China"
    Bens de Giffen são raríssimos empiricamente. A evidência mais robusta foi documentada por [Jensen e Miller (2008)](https://doi.org/10.1257/aer.98.4.1553), que identificaram comportamento de Giffen para o arroz entre famílias extremamente pobres na província de Hunan, na China. Nessas famílias, o arroz representava parcela tão grande do orçamento que o efeito renda de um aumento de preço dominava o efeito substituição. Voltaremos a esse estudo no Apêndice.

---

## 5.5 A Curva de Demanda Individual

### 5.5.1 Demanda marshalliana (não-compensada)

A curva de demanda marshalliana relaciona preço e quantidade mantendo a renda nominal constante. É a curva observável — aquela que efetivamente descreve o comportamento do consumidor no mercado.

\[
x_i^* = x_i(p_i; \bar{p}_{-i}, \bar{I})
\]

Pela Equação de Slutsky, sua inclinação combina efeitos substituição e renda. Para bens normais, é inequivocamente negativamente inclinada. Para bens inferiores, pode ser positivamente inclinada (caso Giffen).

### 5.5.2 Demanda hicksiana (compensada)

A curva de demanda hicksiana mantém a **utilidade** constante. É uma construção teórica, mas fundamental para a análise de bem-estar.

\[
h_i = h_i(p_i; \bar{p}_{-i}, \bar{U})
\]

Como captura apenas o efeito substituição, é **sempre** negativamente inclinada (ou nula). Para bens normais, a curva hicksiana é mais inclinada (menos elástica) que a marshalliana; para bens inferiores, é menos inclinada.

!!! note "Relação geométrica"
    As curvas marshalliana e hicksiana se cruzam no ponto correspondente ao preço e à renda iniciais. A partir desse ponto, a marshalliana diverge conforme o efeito renda se acumula.

<figure markdown="span">
  <iframe src="../../graficos/cap05/demanda-marshalliana-hicksiana.html" width="100%" height="700" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 5.3</strong> — Demanda marshalliana (vermelha) vs hicksiana (azul). Painel superior: curvas de indiferença e restrição orçamentária no espaço de bens. Painel inferior: curvas de demanda derivadas. Para bens normais, a hicksiana é mais inclinada. A área sombreada representa o excedente do consumidor.</figcaption>
</figure>

---

## 5.6 Demanda Compensada: Propriedades Formais

A demanda hicksiana \(h_i(\mathbf{p}, \bar{U})\) pode ser obtida a partir da **função dispêndio** \(E(\mathbf{p}, \bar{U})\):

\[
h_i(\mathbf{p}, \bar{U}) = \frac{\partial E(\mathbf{p}, \bar{U})}{\partial p_i}
\]

Este é o **Lema de Shephard**, que já utilizamos na demonstração da Equação de Slutsky.

!!! definition "Propriedades da demanda hicksiana"
    1. **Homogeneidade de grau zero em preços**: \(h_i(\alpha \mathbf{p}, \bar{U}) = h_i(\mathbf{p}, \bar{U})\).
    2. **Negatividade própria**: \(\frac{\partial h_i}{\partial p_i} \leq 0\).
    3. **Simetria**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\).
    4. **Semidefinição negativa da matriz de Slutsky**: a matriz \(\mathbf{S}\) com elementos \(s_{ij} = \frac{\partial h_i}{\partial p_j}\) é simétrica e negativa semidefinida.

A propriedade 4 é particularmente poderosa: dela decorrem restrições testáveis sobre o comportamento da demanda observada, servindo como base para a análise empírica e para a teoria da preferência revelada.

---

## 5.7 Elasticidades da Demanda

As **elasticidades** medem a sensibilidade percentual da demanda a variações em preços e renda, sendo adimensionais e, portanto, comparáveis entre bens e mercados distintos.

### 5.7.1 Elasticidade-preço da demanda

!!! definition "Elasticidade-preço da demanda"

    \[
    \varepsilon_{x_i, p_i} = \frac{\partial x_i}{\partial p_i} \cdot \frac{p_i}{x_i}
    \]

    - \(|\varepsilon| > 1\): demanda **elástica**
    - \(|\varepsilon| = 1\): demanda de **elasticidade unitária**
    - \(|\varepsilon| < 1\): demanda **inelástica**

### 5.7.2 Elasticidade-renda da demanda

\[
\varepsilon_{x_i, I} = \frac{\partial x_i}{\partial I} \cdot \frac{I}{x_i}
\]

### 5.7.3 Elasticidade-preço cruzada

\[
\varepsilon_{x_i, p_j} = \frac{\partial x_i}{\partial p_j} \cdot \frac{p_j}{x_i}
\]

### 5.7.4 Relações de agregação

As elasticidades não são independentes entre si. Três relações fundamentais as conectam:

!!! abstract "Agregação de Engel"
    A soma ponderada das elasticidades-renda de todos os bens, com pesos iguais às parcelas orçamentárias \(w_i = \frac{p_i x_i}{I}\), é igual a um:

    \[
    \sum_{i=1}^n w_i \, \varepsilon_{x_i, I} = 1
    \]

    **Implicação**: nem todos os bens podem ser inferiores simultaneamente. Se alguns bens têm elasticidade-renda baixa, outros devem compensar com elasticidade-renda alta.

!!! abstract "Condição de Homogeneidade (Agregação de Cournot)"
    Para cada bem \(i\), a soma das elasticidades-preço (própria e cruzadas) e da elasticidade-renda é zero:

    \[
    \sum_{j=1}^n \varepsilon_{x_i, p_j} + \varepsilon_{x_i, I} = 0
    \]

    Esta condição decorre diretamente da homogeneidade de grau zero da demanda.

!!! abstract "Simetria de Slutsky (em termos de elasticidades)"
    Definindo a elasticidade de substituição compensada \(s_{ij} = \varepsilon_{x_i, p_j}^h\), a simetria impõe:

    \[
    w_i \, s_{ij} = w_j \, s_{ji}
    \]

### 5.7.5 Tabela de elasticidades estimadas para o Brasil

A tabela a seguir apresenta estimativas de elasticidades-preço e elasticidade-renda para categorias selecionadas de bens no Brasil, com base em estudos da POF/IBGE e pesquisas do IPEA.

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

*Fontes: POF/IBGE (2017–2018); Almeida e Azzoni (2016); Cardoso et al. (2019); Notas Técnicas IPEA.*

!!! note "Observações sobre a tabela"
    A classificação como "luxo" ou "necessidade" refere-se à elasticidade-renda, enquanto "elástica" ou "inelástica" refere-se à elasticidade-preço. Note que saúde e educação, embora essenciais, apresentam elasticidade-renda elevada no Brasil — fenômeno associado à migração de serviços públicos para privados conforme a renda cresce.

??? example "Exercício Resolvido 5.1"
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

### 5.8.1 O conceito marshalliano

O **excedente do consumidor** (\(EC\)) mede o ganho líquido que o consumidor obtém ao participar do mercado — a diferença entre o que estaria disposto a pagar e o que efetivamente paga:

\[
EC = \int_{0}^{x^*} p(x) \, dx - p^* \cdot x^*
\]

onde \(p(x)\) é a função de demanda inversa.

### 5.8.2 Variação compensatória (VC)

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

Para uma queda de preço de um bem normal:

\[
VC < EC < VE
\]

!!! abstract "Proposição — Equivalência das medidas de bem-estar (quase-linear)"
    Se \(u(x_1, x_2) = v(x_1) + x_2\) (utilidade quase-linear), então para qualquer variação de preços:

    \[
    VC = VE = \Delta EC = \int_{p_1^0}^{p_1^1} x_1^*(p_1)\, dp_1.
    \]

    **Demonstração:** a demanda hicksiana por \(x_1\) é \(h_1(\mathbf{p}, \bar{u}) = (v')^{-1}(p_1/p_2)\), independente de \(\bar{u}\). Logo a integral de \(h_1\) entre \(p_1^0\) e \(p_1^1\) é a mesma para qualquer nível de utilidade de referência, e coincide com a integral da demanda marshalliana (que também é \((v')^{-1}(p_1/p_2)\)).

As três medidas coincidem quando o efeito renda é nulo (utilidade quase-linear), caso em que a curva marshalliana e a hicksiana são idênticas.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A variação compensatória pergunta "quanto dinheiro compensa a perda?"; a variação equivalente pergunta "quanto você pagaria para evitar a perda?" — são dois ângulos da mesma mudança de bem-estar.

    **Pense assim:** Suponha que o preço do gás de cozinha dobre. A VC pergunta: "quanto o governo teria que depositar na sua conta para você ficar tão bem quanto antes?" A VE pergunta: "quanto você toparia pagar hoje para garantir que o preço não suba?" As respostas diferem porque seu poder de compra muda entre os dois cenários.

    **Por que isso importa:** VC e VE são as medidas teoricamente corretas de bem-estar em análises de custo-benefício de políticas públicas, como reajustes tarifários de energia elétrica ou mudanças no ICMS sobre combustíveis.

!!! tip "Quando usar qual medida?"
    - **VC** é apropriada para avaliar se o consumidor aceitaria uma mudança (quanto precisa ser compensado).
    - **VE** é apropriada para avaliar quanto o consumidor pagaria para obter uma mudança.
    - **EC** marshalliano é uma aproximação prática, amplamente usada em análise de políticas públicas pela sua facilidade de cálculo.

??? example "Exercício Resolvido 5.2"
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

<figure markdown="span">
  <iframe src="../../graficos/cap05/excedente-consumidor.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 5.4</strong> — Excedente do consumidor (EC), variação compensatória (VC) e variação equivalente (VE). Ajuste os preços \(p_0\) e \(p_1\) e ative/desative cada medida. Para uma queda de preço de bem normal: \(VC < \Delta EC < VE\). O EC usa a demanda marshalliana (linear); VC e VE usam demandas hicksianas (Cobb-Douglas).</figcaption>
</figure>

---

## 5.9 Preferência Revelada e o Efeito Substituição

A teoria da **preferência revelada**, desenvolvida por Paul Samuelson, fornece fundamentos observacionais para a teoria da demanda, sem recorrer diretamente ao conceito de utilidade.

!!! definition "Axioma Fraco da Preferência Revelada (AFPR)"
    Se a cesta \(\mathbf{x}^0\) é escolhida quando \(\mathbf{x}^1\) era acessível (isto é, \(\mathbf{p}^0 \cdot \mathbf{x}^1 \leq \mathbf{p}^0 \cdot \mathbf{x}^0\)), então \(\mathbf{x}^1\) não pode ser escolhida quando \(\mathbf{x}^0\) é acessível (isto é, \(\mathbf{p}^1 \cdot \mathbf{x}^0 > \mathbf{p}^1 \cdot \mathbf{x}^1\)).

O AFPR garante a **negatividade do efeito substituição de Slutsky**. Se o consumidor satisfaz o AFPR, então, para uma variação compensada de preço (no sentido de Slutsky):

\[
(\mathbf{p}^1 - \mathbf{p}^0) \cdot (\mathbf{x}^1 - \mathbf{x}^0) \leq 0
\]

Em termos escalares, para uma variação apenas em \(p_i\): \(\Delta p_i \cdot \Delta x_i^S \leq 0\), onde \(\Delta x_i^S\) é a variação compensada — exatamente a negatividade do efeito substituição.

!!! abstract "Teorema: Equivalência entre AFPR e negatividade do efeito substituição"
    Um consumidor cujas escolhas satisfazem o Axioma Fraco da Preferência Revelada exibe efeito substituição de Slutsky não-positivo. Reciprocamente, se a matriz de Slutsky é negativa semidefinida, as escolhas observadas satisfazem o AFPR (sob certas condições de regularidade).

---

## Box Brasil: Elasticidade-preço da gasolina no Brasil

!!! example "Box Brasil — Elasticidade-preço da gasolina no Brasil"
    A gasolina é um dos bens mais estudados empiricamente no Brasil, tanto pela relevância fiscal (ICMS, CIDE, PIS/COFINS) quanto pelo impacto no custo de vida. A Agência Nacional do Petróleo (ANP) coleta semanalmente preços em postos de todo o país, fornecendo uma base de dados rica para estimações econométricas.

    **Principais achados empíricos:**

    - **Elasticidade-preço de curto prazo**: estimativas variam entre \(-0{,}20\) e \(-0{,}50\), com a maioria dos estudos convergindo para valores próximos de \(-0{,}35\). Isso significa que um aumento de 10% no preço da gasolina reduz o consumo em cerca de 3,5% no curto prazo.

    - **Elasticidade-preço de longo prazo**: entre \(-0{,}55\) e \(-0{,}85\). No longo prazo, os consumidores ajustam o estoque de veículos, mudam rotas e padrões de deslocamento e migram para etanol ou transporte público.

    - **Efeito substituição gasolina-etanol**: o Brasil é peculiar por possuir a maior frota *flex-fuel* do mundo. A substituibilidade gasolina-etanol depende criticamente da razão de preços — a regra prática de que o etanol é vantajoso quando seu preço é inferior a 70% do preço da gasolina (pela diferença de conteúdo energético) gera uma elasticidade-preço cruzada estimada entre \(+0{,}80\) e \(+1{,}40\).

    - **Heterogeneidade regional**: estudos do IPEA documentam que a elasticidade-preço é maior (em valor absoluto) no Nordeste e menor no Sudeste, refletindo diferenças na participação do gasto com combustíveis no orçamento familiar e na disponibilidade de transporte público.

    - **Decomposição dos efeitos**: Santos (2013), utilizando microdados da POF, decompôs o efeito total em efeito substituição e efeito renda. Para as famílias de menor renda, o efeito renda responde por quase 40% da variação total na demanda por gasolina, confirmando que o combustível representa parcela significativa do orçamento dessas famílias.

    **Implicações de política**: a inelasticidade da demanda por gasolina no curto prazo implica que aumentos de impostos sobre combustíveis (como a CIDE) geram receita tributária substancial, mas com custo de bem-estar significativo — especialmente para famílias de baixa renda, para as quais a variação compensatória pode representar parcela relevante do orçamento mensal.

    *Fontes: ANP — Levantamento de Preços de Combustíveis; IPEA — Texto para Discussão n.º 1.898 (2013); Santos (2013); Cardoso et al. (2019).*

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 5.3"
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

## Exercícios

!!! tip "Exercícios do Capítulo 5"

**Exercício 5.1.** Considere a função de utilidade \(U(x_1, x_2) = x_1^{1/3} x_2^{2/3}\), com preços \(p_1\), \(p_2\) e renda \(I\).

(a) Derive as funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

(b) Verifique a homogeneidade de grau zero e o esgotamento da renda.

(c) Classifique os bens como normais ou inferiores, e como luxo ou necessidade.

---

**Exercício 5.2.** Um consumidor tem função de utilidade \(U(x, y) = \ln x + y\) (quase-linear), com preços \(p_x\), \(p_y = 1\) e renda \(I\).

(a) Derive as demandas marshalliana e hicksiana para \(x\).

(b) Mostre que o efeito renda para o bem \(x\) é zero e interprete economicamente.

(c) Calcule a variação compensatória, a variação equivalente e o excedente do consumidor marshalliano para uma queda de \(p_x\) de 4 para 1. Confirme que as três medidas coincidem.

---

**Exercício 5.3.** Utilizando a Equação de Slutsky, demonstre formalmente que um bem de Giffen deve ser necessariamente um bem inferior. É verdade que todo bem inferior é de Giffen? Justifique.

---

**Exercício 5.4 (Elasticidades e agregação).** Uma economia tem dois bens. As parcelas orçamentárias são \(w_1 = 0{,}4\) e \(w_2 = 0{,}6\). A elasticidade-renda do bem 1 é \(\varepsilon_{x_1, I} = 0{,}5\).

(a) Calcule a elasticidade-renda do bem 2 usando a Agregação de Engel.

(b) Classifique cada bem como luxo ou necessidade.

(c) Se a elasticidade-preço própria do bem 1 é \(\varepsilon_{x_1, p_1} = -0{,}8\), use a condição de homogeneidade para calcular a elasticidade-preço cruzada \(\varepsilon_{x_1, p_2}\).

---

**Exercício 5.5 (Aplicação ao Brasil).** Suponha que a elasticidade-preço da gasolina no Brasil é \(-0{,}40\) e que a elasticidade-preço cruzada gasolina-etanol é \(+1{,}10\). O governo decide aumentar a CIDE de modo que o preço da gasolina suba 15%.

(a) Estime a variação percentual na demanda por gasolina.

(b) Estime a variação percentual na demanda por etanol.

(c) Discuta as limitações dessa análise estática e como ela poderia subestimar ou superestimar os efeitos de longo prazo.

---

## Vem, ANPEC!

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

## Apêndice: A Pesquisa em Ação

??? abstract "Jensen, R. T.; Miller, N. H. (2008). [Giffen Behavior and Subsistence Consumption](https://doi.org/10.1257/aer.98.4.1553). *The American Economic Review*, 98(4), 1553–1577."
    **Pergunta central:** Bens de Giffen — aqueles cuja demanda aumenta quando o preço sobe — são uma curiosidade teórica ou existem de fato? Desde que Alfred Marshall popularizou a ideia no século XIX atribuindo-a a Sir Robert Giffen, nenhum estudo havia conseguido documentar convincentemente esse comportamento com dados de campo.

    **Método:** Jensen e Miller conduziram um experimento de campo randomizado em duas províncias chinesas: Hunan (onde o alimento básico é o arroz) e Gansu (onde é o trigo). O experimento subsidiou aleatoriamente o preço do alimento básico para famílias extremamente pobres e mediu as variações na quantidade demandada. O desenho experimental permitiu identificar a curva de demanda de forma causal, evitando problemas de endogeneidade comuns em estudos observacionais.

    **Resultado principal:** Os autores encontraram evidência forte de comportamento de Giffen para o arroz em Hunan: quando o subsídio reduzia o preço do arroz, as famílias passavam a consumir *menos* arroz e *mais* alimentos de maior qualidade (carne, vegetais). Ou seja, o subsídio (redução de preço) diminuiu a demanda — o oposto do que a Lei da Demanda prevê para bens comuns. Para o trigo em Gansu, a evidência foi mais fraca, mas na mesma direção.

    **Por que isso importa:** O resultado confirma que bens de Giffen podem surgir em contextos de subsistência, onde o alimento básico domina o orçamento. A mecânica é exatamente a prevista pela Equação de Slutsky: o efeito renda é tão forte (porque o bem representa parcela enorme do gasto) e o bem é tão inferior (porque com mais poder de compra as famílias migram para alimentos melhores) que domina o efeito substituição.

    **Relevância para o capítulo:** O estudo é a ilustração empírica mais rigorosa das Seções 5.3–5.4. Ele demonstra que a Equação de Slutsky não é apenas uma identidade matemática: suas implicações qualitativas — em particular, que um bem de Giffen deve ser inferior e representar parcela substancial do orçamento — encontram confirmação nos dados. O caso também ilumina a discussão sobre bens inferiores no Brasil (farinha de mandioca), embora o contexto brasileiro contemporâneo não seja de subsistência pura, tornando o surgimento de Giffen improvável.

??? abstract "Hausman, J. A. (1981). [Exact Consumer's Surplus and Deadweight Loss](https://www.jstor.org/stable/1805921). *The American Economic Review*, 71(4), 662–676."
    **Pergunta central:** O excedente do consumidor marshalliano, calculado a partir da curva de demanda observável, é uma boa medida da variação de bem-estar causada por mudanças de preço? Ou é necessário recorrer às medidas exatas — variação compensatória (VC) e variação equivalente (VE) — baseadas nas demandas hicksianas não-observáveis?

    **Método:** Hausman desenvolveu um procedimento para calcular a VC e a VE exatas a partir de estimativas econométricas da demanda marshalliana observada. O método explora a Equação de Slutsky e a dualidade entre problema primal e dual para recuperar a demanda hicksiana a partir da marshalliana, permitindo calcular as medidas exatas de bem-estar sem precisar estimar diretamente a função dispêndio.

    **Resultado principal:** Aplicando o método à tributação do trabalho nos EUA, Hausman mostrou que o peso morto (perda de bem-estar) calculado com o EC marshalliano pode subestimar a perda real em 30% ou mais. A diferença entre EC e VC/VE é tanto maior quanto maior o efeito renda e quanto maior a variação de preço — exatamente o que a teoria das Seções 5.8.2–5.8.4 prevê.

    **Por que isso importa:** O artigo é fundamental para a avaliação de políticas públicas no Brasil. Quando o governo altera alíquotas de ICMS sobre bens essenciais ou implementa tarifas de energia elétrica escalonadas, a diferença entre usar o EC marshalliano e a VC exata pode ser substancial, especialmente para famílias de baixa renda (para as quais o efeito renda é proporcionalmente maior).

    **Relevância para o capítulo:** Hausman operacionaliza a relação \(VC < EC < VE\) (Seção 5.8.4), mostrando que essa desigualdade tem consequências quantitativas relevantes. O método ilustra também a utilidade prática da Equação de Slutsky: ela não apenas decompõe efeitos, mas permite reconstruir a curva de demanda compensada a partir da observável — ponte entre teoria e política.

## Referências do Capítulo

- Almeida, Alexandre Nunes de, e Carlos Roberto Azzoni. 2016. "[Custo de vida comparativo das regiões metropolitanas brasileiras: 1996–2014.](https://doi.org/10.1590/0101-416146163aac)" *Estudos Econômicos* 46 (1): 253–276.
- Cardoso, Breno Ferreira, Marcelo Tavares de Azevedo, e Francisco Carlos da Cunha Cassuce. 2019. "[Estimação da elasticidade-preço da demanda, da elasticidade-renda e da elasticidade preço-cruzada no Brasil.](https://doi.org/10.22456/2176-5456.71934)" *Análise Econômica* 37 (74): 7–30.
- Hausman, Jerry A. 1981. "[Exact Consumer's Surplus and Deadweight Loss.](https://www.jstor.org/stable/1806997)" *The American Economic Review* 71 (4): 662–676.
- IBGE — Instituto Brasileiro de Geografia e Estatística. 2020. [*Pesquisa de Orçamentos Familiares 2017–2018: análise do consumo alimentar pessoal no Brasil*](https://www.ibge.gov.br/estatisticas/sociais/rendimento-despesa-e-consumo/9050-pesquisa-de-orcamentos-familiares.html). Rio de Janeiro: IBGE.
- Jensen, Robert T., e Nolan H. Miller. 2008. "[Giffen Behavior and Subsistence Consumption.](https://doi.org/10.1257/aer.98.4.1553)" *The American Economic Review* 98 (4): 1553–1577.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Capítulos 2–3.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Capítulo 5.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. Boston: Pearson. Capítulos 4–5.
- Varian, Hal R. 2015. [*Microeconomia*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Capítulos 8–9, 14.
