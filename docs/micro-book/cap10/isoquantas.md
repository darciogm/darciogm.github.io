# 10.2–10.3 Isoquantas, TMST e Rendimentos de Escala

## 10.2 A Curva da Troca: Isoquantas e TMST {#102}

Na Seção 10.1, mantivemos o capital preso no chão e só mexemos no trabalho — como um chef que só pode variar a quantidade de sal, sem tocar nos outros temperos. A vida real é mais generosa: firmas podem trocar máquinas por gente, robôs por operários, caixas de supermercado por totens de autoatendimento. Que instrumento analítico nos permite estudar essas possibilidades de troca entre insumos?

A resposta está nas **isoquantas** e na **taxa marginal de substituição técnica (TMST)**, ferramentas que capturam, respectivamente, o conjunto de combinações de insumos que geram o mesmo produto e a "taxa de câmbio" entre um fator e outro ao longo desse conjunto. A analogia com a teoria do consumidor é direta — e proposital: as isoquantas são o equivalente produtivo das curvas de indiferença estudadas no Capítulo 4, e a TMST desempenha papel análogo à taxa marginal de substituição do consumidor. Mais do que uma analogia superficial, trata-se de uma dualidade profunda: a firma que minimiza custos para um dado produto resolve um problema formalmente idêntico ao do consumidor que maximiza utilidade para um dado orçamento. Essa simetria, explorada em detalhes nos Capítulos 11 e 12, permite importar diretamente os resultados do lado da demanda para o lado da oferta.

A figura interativa a seguir ilustra como diferentes tecnologias de produção geram mapas de isoquantas com formatos distintos — da reta (substitutos perfeitos) ao ângulo reto (complementares perfeitos), passando pela hipérbole convexa da Cobb-Douglas e pela curva intermediária da CES. Compreender visualmente esses formatos é fundamental para desenvolver intuição sobre substituibilidade antes de passar às fórmulas.

<iframe src="/micro-book/graficos/cap10/isoquantas.html" title="Figura 10.1 — Mapa de isoquantas interativo" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 10.1 — Mapa de isoquantas interativo.** Alterne entre Cobb-Douglas, Leontief, Linear e CES. Arraste o ponto sobre a isoquanta para visualizar a TMST em cada combinação de insumos.
</div>

### Isoquantas

!!! definition "Isoquanta"
    Uma **isoquanta** é o conjunto de todas as combinações de insumos \((K, L)\) que geram o mesmo nível de produto \(q_0\):

    \[
    \{(K, L) \mid f(K, L) = q_0\}
    \]

As isoquantas são o análogo, na teoria da produção, das curvas de indiferença na teoria do consumidor. Suas propriedades são:

1. **Completude**: para cada nível de produto existe uma isoquanta.
2. **Não se cruzam**: se duas isoquantas se cruzassem, a mesma combinação de insumos geraria dois níveis distintos de produto, contradizendo a definição de função.
3. **Inclinação negativa**: sob a hipótese de que os produtos marginais são positivos, aumentar um insumo exige reduzir o outro para manter o mesmo produto.
4. **Convexidade**: a TMST é decrescente ao longo da isoquanta (as isoquantas são convexas em relação à origem).

### Taxa marginal de substituição técnica (TMST)

!!! definition "TMST"
    A **taxa marginal de substituição técnica** de \(L\) por \(K\) mede a taxa à qual a firma pode substituir capital por trabalho mantendo o produto constante:

    \[
    \mathrm{TMST}_{L,K} = -\frac{dK}{dL}\bigg|_{q = q_0} = \frac{\mathrm{PMg}_L}{\mathrm{PMg}_K} = \frac{f_L}{f_K}
    \label{eq:10.5} \tag{10.5}
    \]

A derivação da equação $\eqref{eq:10.5}$ segue da diferenciação total da isoquanta \(f(K, L) = q_0\):

\[
f_K \, dK + f_L \, dL = 0 \implies -\frac{dK}{dL} = \frac{f_L}{f_K}
\label{eq:10.6} \tag{10.6}
\]

O que essa expressão nos diz economicamente? A TMST decrescente reflete a dificuldade crescente de substituir um fator pelo outro à medida que a combinação se torna mais extrema. Quando a firma já emprega muito trabalho e pouco capital, cada unidade adicional de trabalho compensa menos capital perdido — exatamente porque os rendimentos marginais do trabalho são decrescentes. Esse fenômeno é intuitivamente análogo à taxa marginal de substituição decrescente no consumo, e a convexidade das isoquantas é sua expressão geométrica.

!!! idea "Intuição Econômica"
    **Em uma frase:** A TMST mede quantas unidades de um insumo a firma pode trocar por uma unidade do outro sem perder produção.

    **Pense assim:** Numa fazenda de café altamente mecanizada, cada colheitadeira a menos exige muitos trabalhadores extras para compensar. Mas numa fazenda com muita mão de obra e pouca máquina, dispensar um trabalhador custa pouca mecanização adicional. A troca fica mais difícil conforme a firma se torna mais "desequilibrada".

    **Por que isso importa:** Quando o salário mínimo sobe no Brasil, a TMST indica o quanto as firmas conseguem substituir trabalho por máquinas — e em setores com baixa substituibilidade, o impacto no emprego é menor.

!!! warning "⚠️ Erro Comum"
    **Confundir rendimentos marginais decrescentes com rendimentos de escala decrescentes.** Esses dois conceitos são frequentemente confundidos, mas descrevem fenômenos completamente distintos.

    **Rendimentos marginais decrescentes** referem-se ao comportamento do produto quando **um único fator** aumenta mantendo os demais fixos — é um fenômeno de **curto prazo** (quando pelo menos um insumo está fixo). Formalmente: \(\partial^2 f / \partial L^2 < 0\), mantendo \(\bar{K}\) fixo.

    **Rendimentos de escala** referem-se ao que ocorre quando **todos os fatores** aumentam na mesma proporção — é um fenômeno de **longo prazo** (todos os insumos são variáveis). Formalmente: comparar \(f(tK, tL)\) com \(t \cdot f(K, L)\) para \(t > 1\).

    Uma firma pode ter **simultaneamente** rendimentos marginais decrescentes (em cada fator isoladamente) e rendimentos **crescentes** de escala. Exemplo: \(f(K,L) = K^{0,6}L^{0,8}\) tem \(\partial^2 f/\partial L^2 < 0\) e \(\partial^2 f/\partial K^2 < 0\), mas \(f(tK,tL) = t^{1,4} f(K,L) > tf(K,L)\) — rendimentos crescentes de escala. A distinção temporal e conceitual é fundamental: não confunda "o fogão está lotado" (curto prazo, fator fixo) com "a padaria cresceu" (longo prazo, tudo dobrou).

??? exercicio-resolvido "Exercício Resolvido 10.1"
    **Enunciado:** Uma firma produz com a função \(q = 20K^{0,5}L^{0,5}\). Atualmente utiliza \(K = 25\) e \(L = 16\). Calcule o produto total, os produtos marginais e a TMST.

    **Dados:** \(A = 20\), \(\alpha = 0{,}5\), \(\beta = 0{,}5\), \(K = 25\), \(L = 16\).

    **Resolução:**

    **Passo 1 — Produto total**

    \[
    q = 20 \cdot 25^{0,5} \cdot 16^{0,5} = 20 \times 5 \times 4 = 400
    \]

    **Passo 2 — Produtos marginais**

    \[
    \mathrm{PMg}_L = \beta A K^{\alpha} L^{\beta - 1} = 0{,}5 \times 20 \times 25^{0,5} \times 16^{-0,5} = 0{,}5 \times 20 \times 5 \times 0{,}25 = 12{,}5
    \]

    \[
    \mathrm{PMg}_K = \alpha A K^{\alpha - 1} L^{\beta} = 0{,}5 \times 20 \times 25^{-0,5} \times 16^{0,5} = 0{,}5 \times 20 \times 0{,}2 \times 4 = 8
    \]

    **Passo 3 — TMST**

    \[
    \mathrm{TMST}_{L,K} = \frac{\mathrm{PMg}_L}{\mathrm{PMg}_K} = \frac{12{,}5}{8} = 1{,}5625
    \]

    Verificação pela fórmula direta: \(\mathrm{TMST} = \dfrac{\beta}{\alpha} \cdot \dfrac{K}{L} = \dfrac{0{,}5}{0{,}5} \cdot \dfrac{25}{16} = 1{,}5625\) ✓

    **Resultado:** \(q = 400\), \(\mathrm{PMg}_L = 12{,}5\), \(\mathrm{PMg}_K = 8\), \(\mathrm{TMST} = 1{,}5625\).

    **Interpretação econômica:** A TMST de 1,56 indica que, nessa combinação, a firma pode substituir 1 unidade de capital por aproximadamente 1,56 unidades de trabalho sem alterar o produto. O trabalho é relativamente mais produtivo na margem porque a firma opera com proporção capital-trabalho elevada (\(K/L = 1{,}56\)), o que torna cada trabalhador adicional mais valioso.

---

## 10.3 Clonar a Firma: Quando o Tamanho Compensa {#103}

Até aqui, mexemos em um insumo de cada vez (Seção 10.1) e trocamos um pelo outro (Seção 10.2). Agora vem a pergunta que todo dono de franquia se faz: se eu clonar a operação inteira — dobrar fábricas, máquinas, funcionários, tudo —, o faturamento dobra junto? Quem dera fosse tão simples. A resposta, que define os rendimentos de escala, tem implicações profundas para a estrutura de mercado — pois determina se há vantagem em ser grande ou pequeno, e por que algumas indústrias são dominadas por gigantes enquanto outras florescem com milhares de pequenas firmas.

<iframe src="/micro-book/graficos/cap10/rendimentos-escala.html" title="Figura 10.2 — Rendimentos de escala" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 10.2 — Rendimentos de escala.** Compare o espaçamento das isoquantas sob rendimentos constantes (CRS), crescentes (IRS) e decrescentes (DRS). O slider \(t\) controla o fator de escala aplicado aos insumos.
</div>

!!! definition "Rendimentos de escala"
    Considere a função de produção \(f(K, L)\) e um escalar \(t > 1\). Os **rendimentos de escala** classificam-se em:

    - **Constantes** (CRS): \(f(tK, tL) = t \cdot f(K, L)\) — a função é homogênea de grau 1.
    - **Crescentes** (IRS): \(f(tK, tL) > t \cdot f(K, L)\) — dobrar os insumos mais que dobra o produto.
    - **Decrescentes** (DRS): \(f(tK, tL) < t \cdot f(K, L)\) — dobrar os insumos menos que dobra o produto.

Uma medida local dos rendimentos de escala é dada pela **elasticidade de escala** \(e\):

\[
e = \frac{\partial \ln f(tK, tL)}{\partial \ln t}\bigg|_{t=1} = \frac{f_K \cdot K + f_L \cdot L}{f(K, L)} = \varepsilon_K + \varepsilon_L
\label{eq:10.7} \tag{10.7}
\]

onde \(\varepsilon_K\) e \(\varepsilon_L\) são as elasticidades do produto em relação a cada insumo. Se \(e = 1\), rendimentos constantes; se \(e > 1\), crescentes; se \(e < 1\), decrescentes.

A elasticidade de escala $\eqref{eq:10.7}$ é uma medida **local**: pode variar ao longo da função de produção, de modo que a mesma firma pode exibir rendimentos crescentes em escalas baixas, constantes em escalas intermediárias e decrescentes em escalas altas. Esse padrão em "U" da elasticidade de escala é, aliás, o que fundamenta a curva de custo médio de longo prazo em "U" que estudaremos no Capítulo 11. A noção de **escala mínima eficiente** (EME) — o nível de produção a partir do qual as economias de escala se esgotam — é uma aplicação direta: é o ponto em que \(e\) passa de maior que 1 para igual a 1.

Para funções Cobb-Douglas \(f = AK^{\alpha}L^{\beta}\), a elasticidade de escala é constante e igual a \(\alpha + \beta\), o que explica sua popularidade em modelos teóricos: o pesquisador pode calibrar os rendimentos de escala simplesmente escolhendo os expoentes. Para a CES, a elasticidade de escala é o parâmetro \(\gamma\), independente de \(\rho\) (elasticidade de substituição) — as duas propriedades são parametrizadas de forma ortogonal, o que facilita enormemente a análise empírica.

Note que, pela equação $\eqref{eq:10.7}$, uma função pode apresentar simultaneamente rendimentos crescentes de escala e produtos marginais decrescentes em cada fator isoladamente. Isso não é uma contradição: rendimentos de escala referem-se à variação conjunta de todos os insumos, enquanto produtos marginais decrescentes referem-se à variação de um único fator com os demais fixos. Confundir esses dois conceitos é um erro recorrente — e compreensível, pois ambos tratam de "rendimentos". A distinção é temporal e conceitual: os rendimentos marginais decrescentes são um fenômeno de curto prazo (um fator fixo); os rendimentos de escala são um fenômeno de longo prazo (todos os fatores variáveis). Uma siderúrgica pode ter rendimentos crescentes de escala (produzir mais aço por real investido ao dobrar toda a operação) e, simultaneamente, rendimentos marginais decrescentes do trabalho (cada operário adicional em uma planta fixa produz menos que o anterior).

!!! idea "Intuição Econômica"
    **Em uma frase:** Rendimentos de escala respondem à pergunta: se a firma dobrar tudo — máquinas, trabalhadores, espaço —, o produto mais que dobra, dobra exatamente ou menos que dobra?

    **Pense assim:** Uma padaria de bairro que abre uma segunda unidade idêntica produz o dobro de pães (rendimentos constantes). Já uma siderúrgica que duplica o alto-forno produz mais que o dobro de aço, porque o volume do forno cresce com o cubo do raio enquanto o custo do material cresce com o quadrado (rendimentos crescentes). É a lógica que explica por que usinas são enormes e padarias são pequenas.

    **Por que isso importa:** Rendimentos crescentes de escala justificam a existência de grandes empresas e são o principal argumento usado em fusões analisadas pelo [CADE](https://www.gov.br/cade).

!!! example "Exemplo: Economias de escala na indústria automobilística brasileira"
    A indústria automobilística ilustra rendimentos crescentes de escala na faixa relevante de produção. Uma linha de montagem exige investimento fixo elevado em robôs, estamparia e pintura, independentemente do volume produzido. Estudos setoriais indicam que a escala mínima eficiente de uma planta de montagem situa-se entre 100 e 200 mil veículos/ano — abaixo desse patamar, o custo médio por veículo é significativamente mais alto. Essa lógica de rendimentos crescentes explica a concentração geográfica da produção automotiva brasileira no ABC paulista e em polos como Betim (MG) e Camaçari (BA), onde a escala viabiliza custos competitivos.

!!! box-brasil "Box Brasil: Economias de escala e fusões no CADE"

    O **Conselho Administrativo de Defesa Econômica (CADE)** avalia rotineiramente alegações de economias de escala em processos de fusão e aquisição. Um caso emblemático foi a fusão entre **Sadia e Perdigão** (2009), que criou a BRF — uma das maiores empresas de alimentos do mundo. As partes argumentaram que a fusão geraria ganhos de eficiência por meio de economias de escala na produção de aves e suínos, na logística de distribuição refrigerada e na diluição de custos fixos de P&D.

    O CADE aprovou a operação com restrições, exigindo a venda de marcas e ativos em mercados onde a concentração era excessiva. Em termos da teoria da produção, o argumento das empresas equivale a afirmar que a função de produção conjunta apresenta rendimentos crescentes de escala (\(e > 1\)) na faixa relevante — a firma maior produz a um custo médio menor que as duas firmas separadas. O CADE, por sua vez, ponderou que os ganhos de escala precisavam ser contrastados com os riscos de poder de mercado — tema que retomaremos nos capítulos sobre concorrência imperfeita.

??? exercicio-resolvido "Exercício Resolvido 10.2"
    **Enunciado:** Classifique os rendimentos de escala das seguintes funções de produção: (a) \(q = 3K + 7L\); (b) \(q = K^{0,4}L^{0,8}\); (c) \(q = \min\{2K, 5L\}\).

    **Resolução:**

    **Passo 1 — Função linear \(q = 3K + 7L\)**

    \[
    f(tK, tL) = 3tK + 7tL = t(3K + 7L) = t \cdot f(K, L)
    \]

    A função é homogênea de grau 1. Rendimentos **constantes** de escala.

    **Passo 2 — Cobb-Douglas \(q = K^{0,4}L^{0,8}\)**

    \[
    f(tK, tL) = (tK)^{0,4}(tL)^{0,8} = t^{0,4 + 0,8} K^{0,4}L^{0,8} = t^{1,2} \cdot f(K, L)
    \]

    Como \(t^{1,2} > t\) para \(t > 1\), os rendimentos são **crescentes**. A elasticidade de escala é \(e = \alpha + \beta = 0{,}4 + 0{,}8 = 1{,}2\).

    **Passo 3 — Leontief \(q = \min\{2K, 5L\}\)**

    \[
    f(tK, tL) = \min\{2tK, 5tL\} = t \cdot \min\{2K, 5L\} = t \cdot f(K, L)
    \]

    Rendimentos **constantes** de escala.

    **Resultado:** (a) constantes; (b) crescentes (\(e = 1{,}2\)); (c) constantes.

    **Interpretação econômica:** Na função (b), dobrar ambos os insumos aumenta o produto em \(2^{1,2} \approx 2{,}30\) vezes — quase 15% a mais do que o dobro. Em setores com essa tecnologia, há incentivo natural à concentração em firmas maiores, como ocorre na siderurgia e na petroquímica brasileiras.

!!! box-mundo "Box Mundo 10.1 — Rendimentos de escala na indústria automobilística: EUA e Japão"

    **Contexto:** A indústria automobilística é um laboratório clássico para o estudo de rendimentos de escala. Desde a introdução da linha de montagem por Henry Ford em 1913, a produção em massa explorou intensamente as economias de escala — mas o modelo japonês de produção enxuta (*lean manufacturing*) desenvolvido pela Toyota a partir da década de 1950 mostrou que escala e eficiência não precisam ser sinônimos.

    **Dados:** Estudos setoriais compilados pela OCDE e pelo Bureau of Labor Statistics (BLS) dos EUA estimam que a **escala mínima eficiente** (EME) de uma planta de montagem de automóveis situa-se entre 150 e 250 mil veículos por ano — volume abaixo do qual o custo médio por veículo é significativamente superior ao da fronteira tecnológica. A GM, em seu auge na década de 1970, produzia mais de 5 milhões de veículos anuais em plantas de grande escala, aproveitando as economias estáticas de escala. A Toyota, com volumes inicialmente menores, compensou com eficiência operacional: o **Sistema Toyota de Produção** (STP) reduziu estoques, minimizou desperdícios e elevou a produtividade do trabalho sem exigir mega-plantas.

    **Análise:** Estimativas econométricas de funções de custo para a indústria automobilística mundial (Friedlaender, Winston & Wang, 1983, *Bell Journal of Economics*) encontram elasticidades de escala entre 1,10 e 1,25 na faixa de 100 a 300 mil veículos/ano — rendimentos **crescentes** de escala. Acima de 300 mil unidades, as economias de escala se esgotam e a elasticidade converge para 1 (rendimentos constantes). No caso japonês, a vantagem competitiva veio não de escala absoluta, mas de um deslocamento para cima da função de produção (\(A\) maior) — progresso técnico organizacional e não expansão do volume. A comparação GM vs. Toyota ilustra a diferença fundamental entre *mover-se ao longo* de uma isoquanta (mais capital e trabalho para produzir mais) e *deslocar* a função de produção (inovar para produzir mais com os mesmos insumos).

    **Fonte:** Friedlaender, A. F.; Winston, C.; Wang, K. (1983). "Costs, Technology, and Productivity in the U.S. Automobile Industry." *Bell Journal of Economics*, 14(1), 1–20. OCDE (2023). *Automotive Industry: Productivity and Technology*. Paris: OECD Publishing. Bureau of Labor Statistics (2023). *Industry Productivity Statistics, Motor Vehicles*.
