# Capítulo 5 — Quando o Preço Muda: Os Dois Lados da Moeda

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

### 5.2.2 Bens normais e bens inferiores

!!! definition "Bens normais e bens inferiores"
    - Um bem é **normal** se \(\frac{\partial x_i^*}{\partial I} > 0\): a demanda aumenta com a renda.
    - Um bem é **inferior** se \(\frac{\partial x_i^*}{\partial I} < 0\): a demanda diminui quando a renda cresce.

Exemplos clássicos de bens inferiores no contexto brasileiro incluem a farinha de mandioca e o transporte público em certas faixas de renda — à medida que a renda familiar cresce, o consumo desses itens tende a ser substituído por alternativas de maior qualidade percebida.

### 5.2.3 Bens de luxo e bens de necessidade

A distinção entre luxo e necessidade depende da **elasticidade-renda** (que formalizaremos na Seção 5.7):

- **Bem de necessidade**: \(0 < \varepsilon_{x,I} < 1\) — a demanda cresce proporcionalmente menos que a renda.
- **Bem de luxo**: \(\varepsilon_{x,I} > 1\) — a demanda cresce proporcionalmente mais que a renda.

Note que todo bem de luxo é normal, mas nem todo bem normal é de luxo.

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

Ambas as decomposições convergem para variações infinitesimais de preço, e resultam na mesma equação fundamental — a Equação de Slutsky.

!!! tip "Intuição"
    Imagine que a gasolina ficou 10% mais barata. O efeito substituição faz você trocar um pouco de transporte público por carro. O efeito renda faz você "se sentir mais rico", podendo aumentar o consumo de diversos bens. Se a gasolina for um bem normal, ambos os efeitos reforçam a maior demanda. Se for inferior (implausível neste caso), os efeitos se opõem.

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

2. **Bens de Giffen**: se o bem for inferior e o efeito renda dominar o efeito substituição, \(\frac{\partial x_i}{\partial p_i} > 0\), e temos um **bem de Giffen**. Esses casos são raros e exigem que o bem represente parcela significativa do orçamento.

3. **Simetria de Slutsky**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\). Os efeitos substituição cruzados são simétricos.

---

## 5.5 A Curva de Demanda Individual

### 5.5.1 Demanda marshalliana (não-compensada)

A curva de demanda marshalliana relaciona preço e quantidade mantendo a renda nominal constante. É a curva observável — aquela que efetivamente descreve o comportamento do consumidor no mercado.

\[
x_i^* = x_i(p_i; \bar{p}_{-i}, \bar{I})
\]

Pela Equação de Slutsky, sua inclinação combina efeitos substituição e renda. Para bens normais, é inequivocamente negativamente inclinada. Para bens inferiores, pode ser positivamente inclinada (caso Giffen).

### 5.5.2 Demanda hicksiana (compensada)

A curva de demanda hicksiana mantém a **utilidade** constante. É uma construção teórica, mas fundamental para análise de bem-estar.

\[
h_i = h_i(p_i; \bar{p}_{-i}, \bar{U})
\]

Como captura apenas o efeito substituição, é **sempre** negativamente inclinada (ou nula). Para bens normais, a curva hicksiana é mais inclinada (menos elástica) que a marshalliana; para bens inferiores, é menos inclinada.

!!! note "Relação geométrica"
    As curvas marshalliana e hicksiana se cruzam no ponto correspondente ao preço e à renda iniciais. A partir desse ponto, a marshalliana diverge conforme o efeito renda se acumula.

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

*Fontes: POF/IBGE (2017-2018); Almeida e Azzoni (2016); Cardoso et al. (2019); Notas Técnicas IPEA.*

!!! note "Observações sobre a tabela"
    A classificação como "luxo" ou "necessidade" refere-se à elasticidade-renda, enquanto "elástica" ou "inelástica" refere-se à elasticidade-preço. Note que saúde e educação, embora essenciais, apresentam elasticidade-renda elevada no Brasil — fenômeno associado à migração de serviços públicos para privados conforme a renda cresce.

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

As três medidas coincidem quando o efeito renda é nulo (utilidade quase-linear), caso em que a curva marshalliana e a hicksiana são idênticas.

!!! tip "Quando usar qual medida?"
    - **VC** é apropriada para avaliar se o consumidor aceitaria uma mudança (quanto precisa ser compensado).
    - **VE** é apropriada para avaliar quanto o consumidor pagaria para obter uma mudança.
    - **EC** marshalliano é uma aproximação prática, amplamente usada em análise de políticas públicas pela sua facilidade de cálculo.

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

!!! example "Elasticidade-preço da gasolina no Brasil"
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
