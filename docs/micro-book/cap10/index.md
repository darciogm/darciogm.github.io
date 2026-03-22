# Capítulo 10 — Mais Mãos, Mais Máquinas — Mais Produto?

A teoria da produção constitui o alicerce sobre o qual se ergue toda a análise da oferta em microeconomia. Enquanto os capítulos anteriores trataram das decisões dos consumidores — agentes que buscam maximizar utilidade —, voltamos agora a atenção para as **firmas**, agentes cuja razão de existir é transformar insumos (trabalho, capital, terra, materiais) em produtos e serviços. Compreender *como* essa transformação ocorre, quais são suas regularidades empíricas e como representá-la matematicamente é o objetivo central deste capítulo.

A **função de produção** é o instrumento analítico que sintetiza a tecnologia disponível para a firma. A partir dela, derivamos conceitos fundamentais — produtividade marginal, isoquantas, taxa marginal de substituição técnica (TMST), rendimentos de escala e elasticidade de substituição — que serão mobilizados nos capítulos seguintes para construir as curvas de custo e de oferta.

O capítulo está organizado em seis seções. Começamos pela produtividade marginal e pelas relações entre produto total, médio e marginal (Seção 10.1). Em seguida, introduzimos as isoquantas e a TMST (Seção 10.2), o conceito de rendimentos de escala (Seção 10.3) e a elasticidade de substituição (Seção 10.4). A Seção 10.5 apresenta quatro famílias de funções de produção clássicas — linear, Leontief, Cobb-Douglas e CES — e a Seção 10.6 incorpora o progresso técnico. Um Box Brasil dedicado à revolução agrícola impulsionada pela [Embrapa](https://www.embrapa.br) ilustra como a teoria encontra expressão concreta na transformação produtiva do país.

---

## 10.1 Produtividade Marginal

### A função de produção

Por que algumas firmas produzem mais que outras com quantidades semelhantes de insumos? A resposta está na **tecnologia** — o conjunto de conhecimentos e processos que determinam como insumos são combinados para gerar produto. A função de produção é a representação matemática dessa tecnologia.

!!! definition "Função de produção"
    A **função de produção** \(q = f(K, L)\) descreve a quantidade máxima de produto \(q\) que pode ser obtida a partir de quantidades de capital \(K\) e trabalho \(L\), dada a tecnologia disponível.

Quando um dos insumos é mantido fixo — por exemplo, o capital no curto prazo —, obtemos a **função de produção de curto prazo**:

\[
q = f(\bar{K}, L) \equiv \mathrm{TP}(L)
\label{eq:10.1} \tag{10.1}
\]

onde \(\mathrm{TP}(L)\) é o produto total do trabalho. Essa distinção entre curto e longo prazo será fundamental para a análise de custos no próximo capítulo.

### Produto marginal e produto médio

Definida a função de produção, a pergunta natural é: quanto produto adicional se obtém ao empregar mais uma unidade de trabalho? E como a produtividade por trabalhador evolui à medida que a firma cresce? Essas perguntas são respondidas por duas medidas essenciais de produtividade — o produto marginal e o produto médio —, cuja relação é uma das mais frequentemente cobradas em provas da ANPEC.

!!! definition "Produto marginal"
    O **produto marginal do trabalho** é a variação do produto total decorrente de uma unidade adicional de trabalho, mantido o capital constante:

    \[
    \mathrm{PMg}_L = \frac{\partial f(K, L)}{\partial L}
    \label{eq:10.2} \tag{10.2}
    \]

    Analogamente, o **produto marginal do capital** é:

    \[
    \mathrm{PMg}_K = \frac{\partial f(K, L)}{\partial K}
    \]

O **produto médio do trabalho** é definido como:

\[
\mathrm{PMe}_L = \frac{f(K, L)}{L}
\label{eq:10.3} \tag{10.3}
\]

A relação entre produto marginal e produto médio é análoga àquela entre custo marginal e custo médio: quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é crescente; quando \(\mathrm{PMg}_L < \mathrm{PMe}_L\), o produto médio é decrescente; e quando \(\mathrm{PMg}_L = \mathrm{PMe}_L\), o produto médio atinge seu máximo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Se o trabalhador adicional produz mais do que a média dos anteriores, ele "puxa" a média para cima; se produz menos, puxa para baixo.

    **Pense assim:** Numa partida de futebol, se o jogador que entra no segundo tempo faz mais gols que a média do time até ali, a média de gols por jogador sobe. Se ele erra tudo, a média cai. O produto marginal é o "gol do substituto" — e ele determina a direção do produto médio.

    **Por que isso importa:** Essa relação é a base para entender por que firmas contratam até o ponto em que o valor do produto marginal iguala o salário — e por que o produto médio é uma medida enganosa de produtividade quando usada isoladamente.

### Lei dos rendimentos marginais decrescentes

A relação entre produto marginal e produto médio revela um padrão importante: à medida que a firma emprega mais e mais trabalhadores com capital fixo, a produtividade marginal de cada trabalhador adicional tende a cair. Esse padrão é tão recorrente na prática que recebeu o estatuto de "lei" — embora, como veremos, trate-se de uma regularidade empírica, não de uma necessidade lógica.

!!! theorem "Lei dos rendimentos marginais decrescentes"
    Se um insumo variável é adicionado a um insumo fixo, a partir de certo ponto o produto marginal do insumo variável torna-se decrescente. Formalmente, existe \(L^*\) tal que para \(L > L^*\):

    \[
    \frac{\partial^2 f(\bar{K}, L)}{\partial L^2} < 0
    \label{eq:10.4} \tag{10.4}
    \]

É crucial observar que esta "lei" é uma regularidade empírica, não um resultado lógico necessário. Ela se aplica ao **curto prazo**, quando pelo menos um fator é fixo. Não deve ser confundida com rendimentos decrescentes de escala, que dizem respeito à variação simultânea de todos os insumos — uma distinção frequentemente cobrada em provas da ANPEC.

!!! idea "Intuição Econômica"
    **Em uma frase:** Cada trabalhador a mais produz menos que o anterior quando o espaço e os equipamentos são fixos.

    **Pense assim:** Em uma cozinha de restaurante com quatro bocas de fogão, o primeiro cozinheiro é muito produtivo. O segundo ajuda bastante. O terceiro já começa a esbarrar nos outros. O quarto fica esperando uma boca liberar. O fogão não mudou — é o trabalhador extra que rende menos.

    **Por que isso importa:** Esse princípio explica por que simplesmente contratar mais gente sem investir em equipamentos não resolve o problema de produtividade da economia brasileira.

!!! example "Exemplo: Rendimentos marginais na cafeicultura mineira"
    Considere uma fazenda de café em Minas Gerais com área fixa de 50 hectares. Com poucos trabalhadores, cada contratação adicional eleva significativamente a colheita — há muita terra por trabalhador. À medida que se adicionam trabalhadores, porém, eles passam a competir pelas mesmas fileiras de café, e o ganho marginal de cada um diminui. Em termos formais, o produto marginal do trabalho \(\mathrm{PMg}_L\) decresce com \(L\) para \(\bar{K}\) (terra) fixo. Esse padrão é amplamente documentado na agricultura brasileira, onde a mecanização da colheita (que efetivamente aumenta \(\bar{K}\)) deslocou a curva de produto marginal para cima, mitigando o efeito dos rendimentos decrescentes.

!!! box-brasil "Box Brasil: Produtividade do trabalho na indústria brasileira"

    A produtividade do trabalho — medida como valor adicionado por hora trabalhada — é uma aplicação direta do conceito de produto médio do trabalho (\(\mathrm{PMe}_L\)). Dados das Contas Nacionais do IBGE e da PNAD Contínua, compilados pelo FGV/IBRE, mostram que a produtividade por hora trabalhada no Brasil cresceu em média **+1,6% ao ano entre 2000 e 2010**, mas desacelerou para apenas **+0,3% ao ano entre 2010 e 2023** — e a média de longo prazo (1981–2023) é de modestos **+0,5% ao ano**.

    A teoria da produção ajuda a explicar esse padrão. Com investimento em capital (\(K\)) crescendo lentamente, o produto marginal e o produto médio do trabalho avançam de forma modesta. A **intensidade de capital** (\(K/L\)) varia enormemente entre setores: a PIA/IBGE mostra que setores intensivos em capital (como refino de petróleo e extração mineral) apresentam VTI por trabalhador ordens de grandeza acima de setores intensivos em trabalho (como confecções e calçados). Essa dispersão setorial é uma consequência direta da função de produção: para dado nível tecnológico, mais capital por trabalhador implica maior produto médio do trabalho.

---

## 10.2 Isoquantas e a Taxa Marginal de Substituição Técnica

A análise da Seção 10.1 tratou de situações em que apenas um insumo varia enquanto o outro permanece fixo — o cenário típico do curto prazo. Mas na prática, as firmas dispõem de margem para redesenhar seus processos produtivos: podem substituir máquinas por trabalhadores, ou vice-versa, buscando a combinação mais eficiente. Que instrumento analítico nos permite estudar essas possibilidades de troca entre insumos?

A resposta está nas **isoquantas** e na **taxa marginal de substituição técnica (TMST)**, ferramentas que capturam, respectivamente, o conjunto de combinações de insumos que geram o mesmo produto e a "taxa de câmbio" entre um fator e outro ao longo desse conjunto. A analogia com a teoria do consumidor é direta — e proposital: as isoquantas são o equivalente produtivo das curvas de indiferença, e a TMST desempenha papel análogo à taxa marginal de substituição.

<iframe src="../graficos/cap10/isoquantas.html" title="Figura 10.1 — Mapa de isoquantas interativo" class="graph-iframe"></iframe>

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

A derivação segue da diferenciação total da isoquanta \(f(K, L) = q_0\):

\[
f_K \, dK + f_L \, dL = 0 \implies -\frac{dK}{dL} = \frac{f_L}{f_K}
\label{eq:10.6} \tag{10.6}
\]

O que essa expressão nos diz economicamente? A TMST decrescente reflete a dificuldade crescente de substituir um fator pelo outro à medida que a combinação se torna mais extrema. Quando a firma já emprega muito trabalho e pouco capital, cada unidade adicional de trabalho compensa menos capital perdido — exatamente porque os rendimentos marginais do trabalho são decrescentes. Esse fenômeno é intuitivamente análogo à taxa marginal de substituição decrescente no consumo, e a convexidade das isoquantas é sua expressão geométrica.

!!! idea "Intuição Econômica"
    **Em uma frase:** A TMST mede quantas unidades de um insumo a firma pode trocar por uma unidade do outro sem perder produção.

    **Pense assim:** Numa fazenda de café altamente mecanizada, cada colheitadeira a menos exige muitos trabalhadores extras para compensar. Mas numa fazenda com muita mão de obra e pouca máquina, dispensar um trabalhador custa pouca mecanização adicional. A troca fica mais difícil conforme a firma se torna mais "desequilibrada".

    **Por que isso importa:** Quando o salário mínimo sobe no Brasil, a TMST indica o quanto as firmas conseguem substituir trabalho por máquinas — e em setores com baixa substituibilidade, o impacto no emprego é menor.

## 🎯 Exercícios Resolvidos

Os exercícios resolvidos a seguir aplicam os conceitos desenvolvidos neste capítulo. Recomenda-se tentar resolver cada exercício antes de consultar a solução.

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

## 10.3 Rendimentos de Escala

Até aqui, nossa análise caminhou em duas direções complementares: primeiro, variamos um insumo com o outro fixo (Seção 10.1, rendimentos marginais); depois, trocamos um insumo por outro ao longo de uma isoquanta (Seção 10.2, substituição). Resta uma terceira pergunta, talvez a mais relevante para decisões estratégicas de longo prazo: o que acontece quando a firma aumenta **todos** os insumos proporcionalmente? Se uma empresa duplica suas fábricas, seus trabalhadores e toda a sua estrutura, o produto necessariamente dobra? A resposta, que define os rendimentos de escala, tem implicações profundas para a estrutura de mercado — pois determina se há vantagem em ser grande ou pequeno.

<iframe src="../graficos/cap10/rendimentos-escala.html" title="Figura 10.2 — Rendimentos de escala" class="graph-iframe"></iframe>

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

Note que uma função pode apresentar simultaneamente rendimentos crescentes de escala e produtos marginais decrescentes em cada fator isoladamente. Isso não é uma contradição: rendimentos de escala referem-se à variação conjunta de todos os insumos, enquanto produtos marginais decrescentes referem-se à variação de um único fator com os demais fixos. Confundir esses dois conceitos é um erro recorrente — e compreensível, pois ambos tratam de "rendimentos". A distinção é temporal e conceitual: os rendimentos marginais decrescentes são um fenômeno de curto prazo (um fator fixo); os rendimentos de escala são um fenômeno de longo prazo (todos os fatores variáveis). Uma siderúrgica pode ter rendimentos crescentes de escala (produzir mais aço por real investido ao dobrar toda a operação) e, simultaneamente, rendimentos marginais decrescentes do trabalho (cada operário adicional em uma planta fixa produz menos que o anterior).

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

---

## 10.4 Elasticidade de Substituição

Vimos que a TMST mede a taxa à qual a firma pode trocar um insumo por outro ao longo de uma isoquanta. Mas a TMST varia conforme nos movemos ao longo da curva. Surge então uma pergunta natural: quão sensível é a combinação de insumos a mudanças na TMST? Em outras palavras, quando os preços relativos dos fatores se alteram — por exemplo, quando o salário mínimo sobe ou o custo do capital cai —, a firma ajusta significativamente sua proporção capital-trabalho, ou a tecnologia impõe rigidez nessa escolha?

A **elasticidade de substituição** é o parâmetro que responde a essa pergunta. Trata-se de uma medida adimensional que sintetiza a curvatura da isoquanta e, portanto, a facilidade de substituição entre insumos. Esse conceito é central não apenas para a teoria da produção, mas também para a análise da distribuição funcional da renda e o debate contemporâneo sobre automação e desigualdade.

!!! definition "Elasticidade de substituição"
    A **elasticidade de substituição** \(\sigma\) mede a facilidade com que a firma pode substituir um insumo por outro ao longo de uma isoquanta. Formalmente:

    \[
    \sigma = \frac{d \ln(K/L)}{d \ln(\mathrm{TMST}_{L,K})} = \frac{d \ln(K/L)}{d \ln(f_L / f_K)}
    \label{eq:10.8} \tag{10.8}
    \]

Intuitivamente, \(\sigma\) capta a curvatura da isoquanta:

- Se \(\sigma \to \infty\), os insumos são **substitutos perfeitos** (isoquanta linear).
- Se \(\sigma \to 0\), os insumos são **complementares perfeitos** (isoquanta em L, Leontief).
- Se \(\sigma = 1\), temos o caso intermediário da **Cobb-Douglas**.

A elasticidade de substituição é um parâmetro central na análise da distribuição funcional da renda, pois determina como mudanças nos preços relativos dos fatores afetam as participações do capital e do trabalho na renda total. Quando \(\sigma > 1\), um barateamento relativo do capital leva a uma substituição tão intensa que a participação do capital na renda *aumenta*; quando \(\sigma < 1\), o efeito é o oposto. Esse mecanismo está no centro do debate contemporâneo sobre desigualdade, como argumentou Thomas Piketty em *O Capital no Século XXI* (2014).

!!! idea "Intuição Econômica"
    **Em uma frase:** A elasticidade de substituição mede o quão fácil é trocar máquinas por pessoas (ou vice-versa) sem perder produção.

    **Pense assim:** Em um call center, substituir atendentes humanos por chatbots de IA é relativamente fácil (elasticidade alta). Já em uma cirurgia cardíaca, trocar o cirurgião por um robô é muito mais difícil (elasticidade baixa). Quanto mais rígida a receita de produção, menor a elasticidade.

    **Por que isso importa:** A elasticidade de substituição determina quem ganha e quem perde quando o salário mínimo sobe ou quando a automação avança — questões centrais no debate sobre desigualdade e futuro do trabalho no Brasil.

### Demonstração: Elasticidade de substituição para Cobb-Douglas

!!! proof "Demonstração: \(\sigma = 1\) para a função Cobb-Douglas"
    Considere a função de produção Cobb-Douglas:

    \[
    q = A K^{\alpha} L^{\beta}
    \]

    **Passo 1.** Calculamos os produtos marginais:

    \[
    f_K = \alpha A K^{\alpha - 1} L^{\beta}, \qquad f_L = \beta A K^{\alpha} L^{\beta - 1}
    \]

    **Passo 2.** A TMST é:

    \[
    \mathrm{TMST}_{L,K} = \frac{f_L}{f_K} = \frac{\beta A K^{\alpha} L^{\beta - 1}}{\alpha A K^{\alpha - 1} L^{\beta}} = \frac{\beta}{\alpha} \cdot \frac{K}{L}
    \]

    **Passo 3.** Portanto:

    \[
    \ln\left(\frac{K}{L}\right) = \ln\left(\frac{\alpha}{\beta}\right) + \ln(\mathrm{TMST}_{L,K})
    \]

    **Passo 4.** Diferenciando:

    \[
    \sigma = \frac{d \ln(K/L)}{d \ln(\mathrm{TMST}_{L,K})} = 1
    \]

    Portanto, a elasticidade de substituição da função Cobb-Douglas é unitária, independentemente dos valores de \(\alpha\) e \(\beta\). \(\blacksquare\)

!!! example "Exemplo: Elasticidade de substituição na indústria brasileira"
    A elasticidade de substituição tem implicações diretas para o mercado de trabalho. Quando \(\sigma\) é alto, as firmas substituem trabalho por capital (automação) com relativa facilidade. A literatura empírica aponta valores de \(\sigma\) entre 0,4 e 0,6 para o setor manufatureiro em diversas economias (Chirinko, 2008), e estudos com dados brasileiros encontram valores consistentemente abaixo de 1. Isso indica que capital e trabalho são complementares — mas não tanto quanto no caso Leontief puro (\(\sigma = 0\)). Esse grau intermediário de complementaridade ajuda a explicar por que a automação industrial desloca trabalhadores de forma menos abrupta do que ocorreria com \(\sigma\) mais elevado, mas ainda assim gera pressão sobre ocupações de baixa qualificação.

??? exercicio-resolvido "Exercício Resolvido 10.4"
    **Enunciado:** Uma firma opera com a função de produção CES \(q = \left[0{,}5 K^{-1} + 0{,}5 L^{-1}\right]^{-1}\). Calcule a elasticidade de substituição e a TMST quando \(K = 8\) e \(L = 2\).

    **Dados:** \(\delta = 0{,}5\), \(\rho = -1\), \(\gamma = 1\).

    **Resolução:**

    **Passo 1 — Elasticidade de substituição**

    Para a CES, \(\sigma = \frac{1}{1 - \rho} = \frac{1}{1 - (-1)} = \frac{1}{2} = 0{,}5\).

    **Passo 2 — Produto total**

    \[
    q = \left[0{,}5 \cdot 8^{-1} + 0{,}5 \cdot 2^{-1}\right]^{-1} = \left[0{,}5 \cdot 0{,}125 + 0{,}5 \cdot 0{,}5\right]^{-1} = \left[0{,}0625 + 0{,}25\right]^{-1} = (0{,}3125)^{-1} = 3{,}2
    \]

    **Passo 3 — TMST**

    Para a CES: \(\mathrm{TMST}_{L,K} = \frac{1 - \delta}{\delta} \left(\frac{K}{L}\right)^{1-\rho} = \frac{0{,}5}{0{,}5} \left(\frac{8}{2}\right)^{1-(-1)} = 1 \cdot 4^{2} = 16\)

    **Resultado:** \(\sigma = 0{,}5\), \(q = 3{,}2\), \(\mathrm{TMST} = 16\).

    **Interpretação econômica:** Com \(\sigma = 0{,}5 < 1\), capital e trabalho são mais complementares do que na Cobb-Douglas. A TMST de 16 indica que, nessa combinação capital-intensiva (\(K/L = 4\)), a firma precisaria de 16 unidades adicionais de trabalho para compensar a perda de 1 unidade de capital — a substituição é muito difícil, justamente porque a baixa elasticidade torna os insumos pouco intercambiáveis. Esse padrão é compatível com setores industriais brasileiros como a petroquímica, onde a substituição entre trabalho e capital é limitada pela natureza dos processos produtivos.

---

## 10.5 Funções de Produção Clássicas

As seções anteriores desenvolveram os conceitos — produtividade marginal, isoquantas, TMST, rendimentos de escala e elasticidade de substituição — que caracterizam qualquer tecnologia de produção. Mas como esses conceitos se materializam em formas funcionais concretas, aplicáveis à modelagem empírica e à resolução de problemas? Apresentamos agora quatro famílias de funções de produção que cobrem todo o espectro de substituibilidade entre insumos, da rigidez absoluta (Leontief) à flexibilidade total (linear). Cada uma captura um padrão tecnológico distinto, e a escolha da forma funcional adequada depende do setor e do problema em análise. O domínio dessas quatro formas é indispensável tanto para provas da ANPEC quanto para trabalhos empíricos.

### Função de produção linear

Comecemos pelo caso extremo de máxima flexibilidade na substituição entre insumos. A função linear captura situações em que os insumos realizam a mesma tarefa de forma intercambiável — por exemplo, uma linha de produção que pode ser operada por robôs ou por trabalhadores com resultado idêntico, ou uma usina que pode gerar eletricidade queimando gás natural ou óleo combustível.

\[
q = aK + bL, \qquad a, b > 0
\]

Os insumos são **substitutos perfeitos**. A TMST é constante e igual a \(b/a\). A elasticidade de substituição é \(\sigma = \infty\). Os rendimentos de escala são constantes (a função é homogênea de grau 1).

### Função de produção de proporções fixas (Leontief)

No extremo oposto da escala de substituibilidade, encontramos a função Leontief, que descreve processos em que os insumos devem ser combinados em proporções rígidas — como receitas químicas, onde cada molécula de água exige exatamente dois átomos de hidrogênio e um de oxigênio, ou postos de trabalho que exigem uma máquina por operador, como um taxista e seu veículo.

\[
q = \min\left\{\frac{K}{a}, \frac{L}{b}\right\}, \qquad a, b > 0
\]

Os insumos são **complementares perfeitos**: devem ser utilizados na proporção fixa \(K/L = a/b\). A TMST não é definida no vértice, e \(\sigma = 0\). Os rendimentos de escala são constantes.

### Função de produção Cobb-Douglas

Entre a rigidez total do Leontief e a flexibilidade ilimitada da linear, situa-se a função mais célebre da economia: a **Cobb-Douglas**. Proposta por Charles Cobb e Paul Douglas em 1928 para descrever a produção industrial nos EUA, ela se tornou a forma funcional mais utilizada em trabalhos empíricos — da contabilidade do crescimento à estimação de funções de custo — graças a uma combinação invejável de flexibilidade e tratabilidade analítica.

\[
q = A K^{\alpha} L^{\beta}, \qquad A > 0, \; \alpha, \beta > 0
\label{eq:10.9} \tag{10.9}
\]

As propriedades dependem dos parâmetros: rendimentos constantes se \(\alpha + \beta = 1\), crescentes se \(\alpha + \beta > 1\), decrescentes se \(\alpha + \beta < 1\). A TMST é \((\beta/\alpha)(K/L)\) e \(\sigma = 1\).

### Função de produção CES (Elasticidade de Substituição Constante)

A função CES, introduzida por Arrow, Chenery, Minhas e Solow (1961), generaliza todas as formas anteriores ao permitir que a elasticidade de substituição assuma qualquer valor positivo.

\[
q = A\left[\delta K^{\rho} + (1 - \delta) L^{\rho}\right]^{\gamma/\rho}, \qquad \rho \leq 1, \; \rho \neq 0, \; 0 < \delta < 1
\label{eq:10.10} \tag{10.10}
\]

onde:

- \(\sigma = \frac{1}{1 - \rho}\) é a elasticidade de substituição,
- \(\gamma\) é o parâmetro de rendimentos de escala (constantes se \(\gamma = 1\)),
- \(\delta\) é o parâmetro de distribuição.

A CES **generaliza** as três funções anteriores:

- \(\rho \to 0 \Rightarrow\) Cobb-Douglas \((\sigma = 1)\),
- \(\rho = 1 \Rightarrow\) Linear \((\sigma = \infty)\),
- \(\rho \to -\infty \Rightarrow\) Leontief \((\sigma = 0)\): \(q \to A\min\{K, L\}\). (Para obter a forma geral \(\min\{K/a, L/b\}\), é necessário colocar os coeficientes dentro da função \(\min\), e não como pesos \(\delta, 1-\delta\) na CES.)

A [Tabela 10.1](#tabela-10-1) compara as propriedades das quatro funções de produção.

<a id="tabela-10-1"></a>

| Propriedade | Linear | Leontief | Cobb-Douglas | CES |
|:---|:---|:---|:---|:---|
| **Fórmula** | \(aK + bL\) | \(\min\{K/a, L/b\}\) | \(AK^{\alpha}L^{\beta}\) | \(A[\delta K^{\rho} + (1-\delta)L^{\rho}]^{\gamma/\rho}\) |
| **TMST** | \(b/a\) (constante) | Indefinida no vértice | \((\beta/\alpha)(K/L)\) | \(\frac{1-\delta}{\delta}\left(\frac{K}{L}\right)^{1-\rho}\) |
| **Elasticidade de substituição \(\sigma\)** | \(\infty\) | \(0\) | \(1\) | \(\frac{1}{1-\rho}\) |
| **Rendimentos de escala** | Constantes | Constantes | Depende de \(\alpha + \beta\) | Depende de \(\gamma\) |
| **Isoquantas** | Retas | Ângulos retos | Hipérboles convexas | Curvas convexas |
| **Casos especiais** | — | — | CES com \(\rho \to 0\) | Generaliza todas |

<div class="caption-obj" markdown>
**Tabela 10.1 — Comparativa das funções de produção.**
</div>

As quatro funções acima descrevem a tecnologia em um instante do tempo. Mas a tecnologia evolui — e a incorporação dessa evolução ao modelo é o tema da próxima seção.

??? exercicio-resolvido "Exercício Resolvido 10.5"
    **Enunciado:** A função de produção de uma pizzaria é \(Q = 30K^{0,5}L^{0,5}\), com \(K\) fornos fixados em 4 no curto prazo. (a) Escreva a função de produção de curto prazo. (b) Calcule o produto total com 9 trabalhadores. (c) Calcule o produto marginal e o produto médio com 9 trabalhadores. (d) Classifique os rendimentos de escala.

    **Dados:** \(A = 30\), \(\alpha = 0{,}5\), \(\beta = 0{,}5\), \(\bar{K} = 4\).

    **Resolução:**

    **Passo 1 — Função de curto prazo**

    \[
    Q = 30 \cdot 4^{0,5} \cdot L^{0,5} = 30 \times 2 \times L^{0,5} = 60L^{0,5}
    \]

    **Passo 2 — Produto total com \(L = 9\)**

    \[
    Q = 60 \times 9^{0,5} = 60 \times 3 = 180 \text{ pizzas}
    \]

    **Passo 3 — Produto marginal e produto médio**

    \[
    \mathrm{PMg}_L = 60 \times 0{,}5 \times L^{-0,5} = 30L^{-0,5} = \frac{30}{3} = 10
    \]

    \[
    \mathrm{PMe}_L = \frac{Q}{L} = \frac{180}{9} = 20
    \]

    Como \(\mathrm{PMg}_L = 10 < 20 = \mathrm{PMe}_L\), o produto médio é decrescente — cada trabalhador adicional puxa a média para baixo.

    **Passo 4 — Rendimentos de escala**

    \(\alpha + \beta = 0{,}5 + 0{,}5 = 1\): rendimentos **constantes** de escala.

    **Resultado:** (a) \(Q = 60L^{0,5}\); (b) 180 pizzas; (c) \(\mathrm{PMg}_L = 10\), \(\mathrm{PMe}_L = 20\); (d) CRS.

    **Interpretação econômica:** Embora os rendimentos de escala sejam constantes (dobrar fornos e trabalhadores dobra a produção), no curto prazo, com fornos fixos, cada trabalhador adicional produz menos que o anterior — os rendimentos marginais são decrescentes. Esse exemplo ilustra a diferença entre rendimentos de escala (conceito de longo prazo) e rendimentos marginais decrescentes (curto prazo), uma distinção muito explorada pela ANPEC.

---

## 10.6 Progresso Técnico

As quatro funções de produção apresentadas na seção anterior descrevem a tecnologia em um instante do tempo — uma "fotografia" das possibilidades produtivas. Contudo, a história econômica nos ensina que a tecnologia é dinâmica: a mesma quantidade de terra e trabalho que produzia 1.700 kg de soja por hectare na década de 1970 produz mais de 3.300 kg hoje. De onde vem esse ganho, se os insumos não mudaram proporcionalmente?

A resposta reside no **progresso técnico** — o deslocamento da própria função de produção ao longo do tempo. Incorporar essa dimensão temporal é essencial para conectar a microeconomia da produção à macroeconomia do crescimento, e o instrumento-chave para essa conexão é o **resíduo de Solow**, que mede a parcela do crescimento do produto não explicada pela acumulação de fatores.

<iframe src="../graficos/cap10/progresso-tecnico.html" title="Figura 10.3 — Progresso técnico e deslocamento de isoquantas" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 10.3 — Progresso técnico e deslocamento de isoquantas.** Alterne entre Hicks-neutro, Harrod-neutro e Solow-neutro. Aumente \(A\) para observar a isoquanta se deslocando para dentro (menos insumos necessários para o mesmo produto).
</div>

Formalmente, introduzimos o tempo \(t\) na função de produção. A formulação mais simples é:

\[
q = A(t) \cdot f(K, L)
\label{eq:10.11} \tag{10.11}
\]

Essa especificação corresponde ao progresso **neutro de Hicks**: o parâmetro \(A(t)\) aumenta o produto na mesma proporção para qualquer combinação de insumos, sem alterar a TMST para uma dada razão \(K/L\).

### Classificações do progresso técnico

!!! definition "Tipos de progresso técnico"
    - **Neutro de Hicks**: \(q = A(t) \cdot f(K, L)\). A TMST depende apenas de \(K/L\), não de \(t\). As isoquantas se contraem homoteticamente em direção à origem.

    - **Neutro de Harrod** (aumentador de trabalho): \(q = f(K, A(t) \cdot L)\). O progresso técnico equivale a um aumento na quantidade efetiva de trabalho. A razão capital-produto \(K/q\) permanece constante quando a razão \(K/(AL)\) é constante. Este é o tipo de progresso técnico compatível com crescimento equilibrado no modelo de Solow.

    - **Neutro de Solow** (aumentador de capital): \(q = f(A(t) \cdot K, L)\). O progresso técnico equivale a um aumento na quantidade efetiva de capital. A razão trabalho-produto \(L/q\) permanece constante quando \(L\) é constante.

Na função Cobb-Douglas \(q = A(t) K^{\alpha} L^{1-\alpha}\), os três tipos de neutralidade são equivalentes, pois:

\[
A(t) K^{\alpha} L^{1-\alpha} = K^{\alpha} [A(t)^{1/(1-\alpha)} L]^{1-\alpha} = [A(t)^{1/\alpha} K]^{\alpha} L^{1-\alpha}
\]

Para funções de produção mais gerais (como a CES com \(\sigma \neq 1\)), as três classificações geram resultados distintos, e a escolha do tipo de progresso técnico tem implicações importantes para a dinâmica de crescimento e a distribuição funcional da renda. A razão pela qual a classificação de Harrod é a mais utilizada em modelos de crescimento econômico é que apenas o progresso técnico aumentador de trabalho é compatível com um "estado estacionário" (trajetória de crescimento equilibrado) em que todas as variáveis per capita crescem a taxas constantes — uma propriedade desejável para a modelagem de longo prazo.

### Medindo o progresso técnico: o resíduo de Solow

As classificações de neutralidade nos dizem *como* o progresso técnico opera, mas não *quanto* dele há. Como medir, em termos quantitativos, a contribuição do progresso técnico para o crescimento do produto? A resposta é a decomposição do crescimento, que permite isolar o **resíduo de Solow** — a parcela do crescimento não explicada pela acumulação de fatores.

A taxa de crescimento do produto pode ser decomposta como:

\[
\frac{\dot{q}}{q} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + \beta \frac{\dot{L}}{L}
\label{eq:10.12} \tag{10.12}
\]

O termo \(\dot{A}/A\) é a **produtividade total dos fatores** (PTF), frequentemente chamada de **resíduo de Solow**. Ele capta o crescimento do produto que não é explicado pelo crescimento dos insumos — isto é, o efeito puro do progresso técnico.

!!! info "🏅 Prêmio Nobel — Robert M. Solow (1987)"

    **Robert Merton Solow** (1924–2023) foi um economista americano. Obteve o PhD em Harvard sob orientação de Wassily Leontief e foi professor no MIT por mais de cinco décadas.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à teoria do crescimento econômico. Solow desenvolveu o modelo neoclássico de crescimento (1956) e introduziu a contabilidade do crescimento (1957), que decompõe o crescimento do produto nas contribuições de capital, trabalho e um resíduo — a produtividade total dos fatores (PTF). O "resíduo de Solow" revelou que o progresso técnico, e não a mera acumulação de fatores, é o principal motor do crescimento de longo prazo.

    **Conexão com este capítulo:**
    A decomposição do crescimento — que atribui parcelas do crescimento do produto a capital, trabalho e PTF — é apresentada neste capítulo como aplicação direta da função de produção Cobb-Douglas. O resíduo de Solow, interpretado como medida de progresso técnico, conecta a teoria da produção à questão central do crescimento econômico.

??? exercicio-resolvido "Exercício Resolvido 10.3"
    **Enunciado:** Uma firma opera com \(q = A(t) \cdot K^{0,3} L^{0,7}\), onde \(A(0) = 1\) e \(A\) cresce a 2% ao ano. O capital cresce a 4% ao ano e o trabalho a 1% ao ano. Calcule a taxa de crescimento do produto e decomponha-a nas contribuições de cada fonte.

    **Dados:** \(\alpha = 0{,}3\), \(\beta = 0{,}7\), \(\dot{A}/A = 0{,}02\), \(\dot{K}/K = 0{,}04\), \(\dot{L}/L = 0{,}01\).

    **Resolução:**

    **Passo 1 — Aplicar a decomposição do crescimento**

    \[
    \frac{\dot{q}}{q} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + \beta \frac{\dot{L}}{L}
    \]

    **Passo 2 — Substituir os valores**

    \[
    \frac{\dot{q}}{q} = 0{,}02 + 0{,}3 \times 0{,}04 + 0{,}7 \times 0{,}01 = 0{,}02 + 0{,}012 + 0{,}007 = 0{,}039
    \]

    **Passo 3 — Decomposição percentual**

    | Fonte | Contribuição | % do total |
    |---|---|---|
    | PTF (progresso técnico) | 2,0 p.p. | 51,3% |
    | Capital | 1,2 p.p. | 30,8% |
    | Trabalho | 0,7 p.p. | 17,9% |
    | **Total** | **3,9 p.p.** | **100%** |

    **Resultado:** O produto cresce a 3,9% ao ano, com mais da metade explicada pelo progresso técnico.

    **Interpretação econômica:** A predominância da PTF no crescimento é consistente com o padrão observado na agricultura brasileira pós-Embrapa (ver Box Brasil a seguir), onde a inovação tecnológica respondeu por parcela majoritária dos ganhos de produtividade. Como a função é Cobb-Douglas, o progresso técnico é simultaneamente neutro no sentido de Hicks, Harrod e Solow — as três classificações convergem (Seção 10.6).

!!! box-brasil "Box Brasil: Produtividade agrícola e a função de produção da soja no Cerrado"

    Os dados do **[IBGE/SIDRA](https://sidra.ibge.gov.br)** (Pesquisa Agrícola Municipal) permitem estimar funções de produção para culturas brasileiras. Considere a soja no Cerrado. Entre 2000 e 2023, a área plantada de soja no Brasil cresceu de 13,6 para 44,1 milhões de hectares, enquanto a produção saltou de 32,8 para 154,6 milhões de toneladas (dados [CONAB](https://www.conab.gov.br), safra 2022/23). A produtividade média passou de 2.403 para 3.509 kg/ha.

    Uma decomposição simples do crescimento à la Solow revela que:

    - O crescimento da **área** (terra) respondeu por aproximadamente 60% do aumento da produção (expansão extensiva).
    - O crescimento da **produtividade** (PTF + intensificação de insumos) respondeu pelos 40% restantes.

    A parcela atribuída à PTF — novas cultivares, manejo de solo, integração lavoura-pecuária — é o "resíduo de Solow" aplicado à agricultura. Segundo estimativas da Embrapa, a pesquisa agropecuária respondeu por cerca de 60% dos ganhos de PTF na agricultura brasileira entre 1975 e 2020.

---

## 🇧🇷 Box Brasil: A Revolução Tecnológica da Embrapa e a Produtividade Agrícola

!!! box-brasil "Box Brasil: Produtividade agrícola brasileira — a revolução da Embrapa"

    A agropecuária brasileira vivenciou, nas últimas cinco décadas, uma das mais impressionantes transformações produtivas do mundo. O protagonista dessa revolução foi a **Empresa Brasileira de Pesquisa Agropecuária (Embrapa)**, fundada em 1973, cuja atuação é um caso emblemático de progresso técnico aplicado à produção.

    **Soja: de cultura marginal a líder mundial.**
    Na safra 1976/77, o Brasil produzia cerca de 12 milhões de toneladas de soja em 7 milhões de hectares (produtividade de ~1.700 kg/ha). Na safra 2023/24, a produção superou **150 milhões de toneladas** em 46 milhões de hectares, com produtividade média de **3.300 kg/ha** (dados CONAB). A produtividade praticamente dobrou, enquanto a área expandiu-se aproximadamente 6,5 vezes — evidenciando que o crescimento do produto decorreu tanto da expansão extensiva quanto, crucialmente, do progresso técnico.

    **Milho: ganhos intensivos expressivos.**
    A produtividade do milho saltou de cerca de 1.600 kg/ha na década de 1970 para mais de **6.000 kg/ha** nas safras recentes, um aumento de quase quatro vezes. Boa parte desse ganho deve-se ao desenvolvimento do milho safrinha (segunda safra) e de cultivares adaptados ao Cerrado.

    **Cerrado: a fronteira tecnológica.**
    A correção da acidez dos solos do Cerrado (calagem), o desenvolvimento de cultivares tropicais e técnicas de plantio direto permitiram transformar uma região antes considerada improdutiva no maior polo agropecuário do país. A Embrapa estima que a tecnologia gerada pela pesquisa agropecuária foi responsável por cerca de **60% do crescimento da produtividade total dos fatores** na agricultura brasileira entre 1975 e 2020.

    **Interpretação microeconômica.**
    Em termos da teoria da produção, a atuação da Embrapa representa um deslocamento da função de produção agrícola — um aumento do parâmetro \(A(t)\). Trata-se predominantemente de progresso técnico **aumentador de terra** (análogo ao neutro de Solow aplicado ao fator terra), pois a inovação principal foi tornar produtivos solos antes imprestáveis, equivalendo a multiplicar o fator terra efetivo disponível. A elasticidade de substituição entre terra e outros insumos (fertilizantes, maquinário) aumentou, refletindo a maior flexibilidade tecnológica na produção agrícola moderna. Goolsbee, Levitt & Syverson (2020, Cap. 6) documentam padrões similares de adoção tecnológica e ganhos de produtividade na agricultura estadunidense.

## 10.7 Funções de Produção Homotéticas

Ao longo deste capítulo, notamos que certas propriedades das funções de produção — como o fato de a TMST depender apenas da razão \(K/L\), e não dos níveis absolutos dos insumos — simplificam enormemente a análise. Essas propriedades não são acidentais: elas decorrem de uma estrutura matemática particular chamada **homoteticidade**. Compreender essa estrutura é importante porque ela determina se o caminho de expansão da firma é linear (o que simplifica a função custo) e se firmas de diferentes tamanhos utilizam a mesma "receita" de insumos.

Uma função de produção \(f(K, L)\) é **homotética** se pode ser escrita como uma transformação monotônica crescente de uma função homogênea de grau 1:

\[
f(K, L) = g\!\big(h(K, L)\big), \quad g' > 0, \quad h(\lambda K, \lambda L) = \lambda \, h(K, L).
\]

**Propriedade fundamental.** Para funções homotéticas, a TMST depende apenas da **razão capital-trabalho** \(K/L\):

\[
\text{TMST}_{LK}(K, L) = \phi\!\left(\frac{K}{L}\right).
\label{eq:10.13} \tag{10.13}
\]

Ao longo de qualquer raio da origem (\(K = c \cdot L\)), a TMST é constante. As isoquantas são **expansões radiais** umas das outras.

!!! theorem "Proposição — Propriedades de funções de produção homotéticas"
    Se \(f(K, L)\) é homotética, então:

    1. **Caminho de expansão linear**: para preços dos fatores \((w, v)\) fixos, a combinação ótima de insumos que minimiza custos satisfaz \(K^*/L^* = \psi(w/v)\), constante para todos os níveis de produto \(q\).
    2. **Custo médio de longo prazo constante em escala**: a função custo pode ser escrita como \(C(w, v, q) = c(w, v) \cdot \gamma(q)\), onde \(c\) depende apenas dos preços e \(\gamma\) apenas do produto.
    3. **Função custo separável**: consequência direta da propriedade 2 — os preços dos fatores afetam o nível de custos, mas não a forma como o custo varia com \(q\).

**Exemplos.**

- **Cobb-Douglas** \(f = K^\alpha L^\beta\): homotética (homogênea de grau \(\alpha + \beta\)). Caminho de expansão: \(K/L = (\alpha w)/(\beta v)\).
- **CES** \(f = [\delta K^\rho + (1-\delta)L^\rho]^{\gamma/\rho}\): homotética (transformação monotônica de uma função homogênea de grau 1).
- **Leontief** \(f = \min\{aK, bL\}\): homotética (homogênea de grau 1). Caminho de expansão fixo em \(K/L = b/a\).

!!! warning "Contraexemplo"
    A função \(f(K, L) = K + L + KL\) **não** é homotética: a TMST \(= (1 + L)/(1 + K)\) depende dos níveis absolutos de \(K\) e \(L\), não apenas da razão \(K/L\). As isoquantas mudam de forma conforme o nível de produto aumenta.

!!! idea "Intuição Econômica"
    **Em uma frase:** Com tecnologia homotética, firmas grandes e pequenas usam a mesma "receita" — a proporção de insumos depende apenas dos preços relativos, não da escala de produção.

    **Pense assim:** Uma padaria que usa 2 kg de farinha para cada litro de leite manterá essa proporção se produzir 100 ou 10.000 pães por dia — desde que os preços dos insumos não mudem. Isso é o caminho de expansão linear: "escalar" a produção é como dar zoom na mesma combinação ótima.

    **Por que isso importa:** A hipótese de homoteticidade simplifica enormemente a análise de custos. Se a tecnologia não for homotética, a proporção ótima de insumos muda com a escala, e a função custo não se separa em um componente de preços e outro de quantidade.

??? exercicio-resolvido "Exercício Resolvido 10.6"
    **Enunciado:** Considere a função de produção \(f(K, L) = \ln(1 + K^{0,5} L^{0,5})\). (a) Mostre que é homotética. (b) Determine a direção do caminho de expansão quando \(w = v\). (c) Calcule a TMST ao longo do raio \(K = L\).

    **Resolução:**

    **Passo 1 — Verificar homoteticidade**

    Defina \(h(K, L) = K^{0,5} L^{0,5}\), que é homogênea de grau 1: \(h(\lambda K, \lambda L) = \lambda K^{0,5} L^{0,5} = \lambda h(K, L)\). Então \(f = \ln(1 + h) = g(h)\), onde \(g(z) = \ln(1 + z)\) é estritamente crescente. Logo \(f\) é homotética.

    **Passo 2 — Caminho de expansão com \(w = v\)**

    A TMST é:

    \[
    \text{TMST}_{LK} = \frac{\partial f / \partial L}{\partial f / \partial K} = \frac{0{,}5 K^{0,5} L^{-0,5}}{0{,}5 K^{-0,5} L^{0,5}} = \frac{K}{L}
    \]

    No ótimo, \(\text{TMST} = w/v = 1\), logo \(K/L = 1\). O caminho de expansão é a reta \(K = L\).

    **Passo 3 — TMST ao longo de \(K = L\)**

    Se \(K = L\), então \(\text{TMST} = K/L = 1\) — constante ao longo do raio, confirmando a propriedade homotética.

    **Resultado:** A função é homotética (log de Cobb-Douglas). Com \(w = v\), a firma usa quantidades iguais de capital e trabalho em qualquer escala.

---

## 📋 Resumo do Capítulo

- A **função de produção** $q = f(K, L)$ descreve a quantidade máxima de produto obtida a partir de capital e trabalho, sintetizando a tecnologia da firma. Dela derivam-se o produto marginal, o produto médio e a lei dos rendimentos marginais decrescentes.
- As **isoquantas** representam combinações de insumos que geram o mesmo nível de produto, e a **TMST** (taxa marginal de substituição técnica) mede a taxa à qual a firma pode trocar um insumo por outro mantendo a produção constante.
- Os **rendimentos de escala** classificam a tecnologia segundo o que ocorre com o produto quando todos os insumos são multiplicados por um mesmo fator: crescentes, constantes ou decrescentes. Esse conceito é distinto da lei dos rendimentos marginais decrescentes, que se aplica à variação de um único insumo.
- A **elasticidade de substituição** ($\sigma$) mede a facilidade com que a firma substitui capital por trabalho ao longo de uma isoquanta, sendo um parâmetro central que diferencia as famílias de funções de produção (linear, Leontief, Cobb-Douglas e CES).
- As quatro funções de produção clássicas — **linear** ($\sigma = \infty$), **Leontief** ($\sigma = 0$), **Cobb-Douglas** ($\sigma = 1$) e **CES** ($\sigma$ livre) — cobrem todo o espectro de substituibilidade entre insumos e são amplamente utilizadas na análise empírica.
- O **progresso técnico** desloca a função de produção para cima ao longo do tempo, podendo ser neutro (Hicks, Harrod ou Solow) ou enviesado, e é o principal motor do crescimento da produtividade no longo prazo — como ilustra a revolução agrícola da Embrapa no Brasil.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Função de produção | Relação $q = f(K, L)$ que descreve a quantidade máxima de produto para dadas quantidades de insumos e tecnologia. |
| Produto marginal | Acréscimo ao produto total resultante de uma unidade adicional de um insumo, mantidos os demais constantes ($\mathrm{PMg}_L = \partial f / \partial L$). |
| Produto médio | Razão entre o produto total e a quantidade do insumo ($\mathrm{PMe}_L = f(K,L)/L$). |
| Lei dos rendimentos marginais decrescentes | A partir de certo ponto, cada unidade adicional de um insumo variável (com os demais fixos) gera acréscimos menores ao produto. |
| Isoquanta | Curva que representa todas as combinações de insumos que geram o mesmo nível de produto. |
| TMST | Taxa marginal de substituição técnica: razão dos produtos marginais ($\mathrm{PMg}_L / \mathrm{PMg}_K$), indicando a taxa de troca entre insumos ao longo da isoquanta. |
| Rendimentos de escala | Comportamento do produto quando todos os insumos são multiplicados por $t > 1$: crescentes se $f(tK, tL) > t \cdot f(K,L)$, constantes se igual, decrescentes se menor. |
| Elasticidade de substituição ($\sigma$) | Mede a variação percentual na razão $K/L$ em resposta a uma variação percentual na TMST, capturando a facilidade de substituição entre insumos. |
| Função CES | Função de produção com elasticidade de substituição constante, que engloba como casos especiais a linear, a Cobb-Douglas e a Leontief. |
| Progresso técnico | Deslocamento da função de produção ao longo do tempo, classificado como neutro à Hicks, Harrod ou Solow conforme o viés sobre os insumos. |

---

## ✏️ Exercícios

<a id="ex-10-1"></a>**Exercício 10.1.** 
Considere a função de produção \(q = 10K^{0,3}L^{0,7}\).

(a) Calcule os produtos marginais \(\mathrm{PMg}_K\) e \(\mathrm{PMg}_L\).

(b) Verifique que os produtos marginais são decrescentes (i.e., \(\partial^2 q / \partial K^2 < 0\) e \(\partial^2 q / \partial L^2 < 0\)).

(c) Determine a TMST e mostre que ela é decrescente ao longo de uma isoquanta.

(d) Classifique os rendimentos de escala.

(e) Confirme que \(\sigma = 1\).

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-1)

---

<a id="ex-10-2"></a>**Exercício 10.2.** 
Uma firma opera com a tecnologia CES:

\[
q = \left[0{,}5 K^{-1} + 0{,}5 L^{-1}\right]^{-1}
\]

(a) Identifique os parâmetros \(\delta\), \(\rho\) e \(\gamma\).

(b) Calcule a elasticidade de substituição \(\sigma\).

(c) Mostre que os rendimentos de escala são constantes.

(d) Compare a forma das isoquantas desta função com as da Cobb-Douglas.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-2)

---

<a id="ex-10-3"></a>**Exercício 10.3.** 
Considere a função de produção Leontief \(q = \min\{2K, 3L\}\).

(a) Qual a proporção ótima de uso dos insumos?

(b) Se a firma deseja produzir \(q = 60\), quais as quantidades mínimas de \(K\) e \(L\)?

(c) Qual o efeito de dobrar apenas o trabalho, mantendo o capital constante? Interprete em termos de rendimentos marginais.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-3)

---

<a id="ex-10-4"></a>**Exercício 10.4.** 
Uma função de produção é dada por \(q = K^{0,6} L^{0,8}\).

(a) Classifique os rendimentos de escala.

(b) Calcule a elasticidade de escala \(e\) e interprete.

(c) Se a firma dobrar ambos os insumos, por qual fator o produto aumentará?

(d) Explique por que rendimentos crescentes de escala podem existir mesmo com produtos marginais decrescentes em cada fator individualmente.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-4)

---

<a id="ex-10-5"></a>**Exercício 10.5.** 
Suponha que a função de produção de uma firma é \(q = A(t) K^{0,4} L^{0,6}\), com \(A(t) = e^{0,02t}\).

(a) Qual a taxa de crescimento da PTF?

(b) Se \(K\) cresce a 3% ao ano e \(L\) cresce a 1% ao ano, qual a taxa de crescimento do produto?

(c) Decomponha o crescimento do produto nas contribuições do capital, do trabalho e da PTF.

(d) Este progresso técnico é neutro no sentido de Hicks, Harrod ou Solow? Justifique.

(e) Calcule a produtividade total dos fatores em \(t = 0\) e \(t = 10\). Se em \(t = 0\) a firma utiliza \(K = 100\) e \(L = 200\), qual o produto em \(t = 0\) e em \(t = 10\) (supondo que os insumos cresçam às taxas indicadas)?

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2013 — Questão 6"
    Considere a teoria da produção e indique quais das afirmativas abaixo são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se a função de produção for \(f(K, L) = [K^a + L^a]^{v/a}\), com \(a \leq 1\), \(a \neq 0\) e \(v > 1\), ela apresenta retornos crescentes de escala. |
    | 1 | O coeficiente de elasticidade de substituição \(\sigma\) de uma função de produção como \(f(K, L) = [K^a + L^a]^{v/a}\), com \(a < 1\), \(a \neq 0\) e \(v > 1\), é \(\sigma = 1/(1-a)\). |
    | 2 | Funções de produção com elasticidade de substituição \(\sigma = 0\) possuem isoquantas em formato de L. |
    | 3 | Se a tecnologia for monotônica, isso significa que não é possível produzir ao menos a mesma quantidade aumentando a quantidade de um dos insumos. |
    | 4 | Funções de produção do tipo Cobb-Douglas possuem elasticidade de substituição \(\sigma = 1\). |

    ??? success "Gabarito"
        **Respostas: V V V F V**

        **Justificativa por item:**

        - **Item 0 — V:** \(f(tK, tL) = [t^a K^a + t^a L^a]^{v/a} = t^v [K^a + L^a]^{v/a} = t^v f(K,L)\). Como \(v > 1\), temos \(t^v > t\) para \(t > 1\), logo rendimentos crescentes.
        - **Item 1 — V:** Trata-se de uma CES com \(\rho = a\). A elasticidade de substituição é \(\sigma = 1/(1-\rho) = 1/(1-a)\). O parâmetro \(v\) (rendimentos de escala) não afeta \(\sigma\).
        - **Item 2 — V:** \(\sigma = 0\) corresponde ao caso Leontief (\(\rho \to -\infty\)), cujas isoquantas têm formato de L (ângulos retos).
        - **Item 3 — F:** Monotonia (livre descarte) significa exatamente o oposto: se é possível produzir \(q\) com \((K, L)\), então é possível produzir *ao menos* \(q\) com \((K', L')\) onde \(K' \geq K\) e \(L' \geq L\). Mais insumo nunca reduz o produto máximo possível.
        - **Item 4 — V:** Conforme demonstrado na Seção 10.4, a Cobb-Douglas possui \(\sigma = 1\), independentemente dos expoentes \(\alpha\) e \(\beta\).

??? question "ANPEC 2015 — Questão 7"
    Com relação à Teoria da Produção, indique quais das afirmativas abaixo são verdadeiras:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se o produto médio do fator variável é crescente, o seu produto marginal é maior do que o seu produto médio. |
    | 1 | A produtividade da mão de obra pode aumentar se houver progresso técnico, mesmo que o processo produtivo apresente rendimentos marginais decrescentes. |
    | 2 | Quando o processo produtivo apresenta retornos constantes de escala, se a produção aumentar proporcionalmente, o espaço entre as isoquantas aumenta progressivamente. |
    | 3 | Uma isoquanta nunca pode apresentar uma inclinação ascendente, se todos os insumos apresentam produtividades marginais positivas. |
    | 4 | As isoquantas são convexas se a taxa marginal de substituição técnica for decrescente. |

    ??? success "Gabarito"
        **Respostas: V V F V V**

        **Justificativa por item:**

        - **Item 0 — V:** Se \(\mathrm{PMe}_L\) é crescente, então \(\frac{d}{dL}\left(\frac{q}{L}\right) > 0\), o que requer \(\mathrm{PMg}_L > \mathrm{PMe}_L\). Essa é a relação padrão entre marginal e médio (Seção 10.1).
        - **Item 1 — V:** O progresso técnico desloca toda a função de produção para cima (aumento de \(A(t)\)), elevando a produtividade mesmo que os rendimentos marginais do trabalho sejam decrescentes para cada nível de \(A\).
        - **Item 2 — F:** Com retornos constantes de escala (CRS), dobrar os insumos dobra o produto. As isoquantas para \(q = 1, 2, 3, \ldots\) ficam **igualmente espaçadas** ao longo de raios partindo da origem, não progressivamente mais distantes.
        - **Item 3 — V:** Inclinação ascendente significaria \(dK/dL > 0\) ao longo da isoquanta, ou seja, seria necessário aumentar ambos os insumos para manter o produto constante — o que contradiz a hipótese de produtividades marginais positivas.
        - **Item 4 — V:** TMST decrescente ao longo da isoquanta (em valor absoluto) é a condição que garante convexidade das isoquantas em relação à origem.

??? question "ANPEC 2016 — Questão 5"
    Em relação à teoria da produção, é correto afirmar que:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A elasticidade de substituição para uma função de produção \(Q = AL^a K^b\) é \(a/b\). |
    | 1 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), apresenta no limite uma taxa marginal de substituição igual a \(-K/L\), quando \(p\) tende a zero. |
    | 2 | Quando a função de produção da empresa consegue produzir mais do que antes, com a quantidade de insumos na mesma proporção, diz-se que ela experimentou progresso técnico neutro. |
    | 3 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), no limite tende a uma Cobb-Douglas, quando \(p\) tende a zero. |
    | 4 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), apresenta uma elasticidade de substituição infinita, quando \(p = 1\). |

    ??? success "Gabarito"
        **Respostas: F V V V V**

        **Justificativa por item:**

        - **Item 0 — F:** A elasticidade de substituição da Cobb-Douglas é sempre \(\sigma = 1\), independentemente dos valores de \(a\) e \(b\) (Seção 10.4). A razão \(a/b\) aparece na TMST, não em \(\sigma\).
        - **Item 1 — V:** Para a CES com \(\delta = 0{,}5\), a TMST é \((K/L)^{1-p}\). Quando \(p \to 0\), a TMST tende a \(K/L\), e a inclinação da isoquanta (com sinal negativo) é \(-K/L\).
        - **Item 2 — V:** Essa é a definição de progresso técnico neutro de Hicks: mais produto com os mesmos insumos, sem alterar a TMST para uma dada razão \(K/L\) (Seção 10.6).
        - **Item 3 — V:** É um resultado clássico: quando \(\rho = p \to 0\), a CES converge para a Cobb-Douglas (com pesos iguais, neste caso \(Q = K^{0,5}L^{0,5}\)).
        - **Item 4 — V:** Com \(p = 1\), temos \(Q = L + K\) (função linear), cuja elasticidade de substituição é \(\sigma = \infty\) — insumos são substitutos perfeitos.

??? question "ANPEC 2017 — Questão 6"
    Com relação à Teoria da Produção no curto prazo, indique quais entre as afirmações abaixo são verdadeiras:

    | Item | Afirmação |
    |------|-----------|
    | 0 | O produto marginal é zero quando o volume produzido é máximo. |
    | 1 | O produto médio é decrescente quando o produto marginal é maior do que o produto médio. |
    | 2 | O produto marginal deve ser igual ao produto médio quando este último é máximo. |
    | 3 | A lei dos rendimentos marginais decrescentes resulta da queda na qualidade de unidades adicionais do insumo variável. |
    | 4 | Avanços tecnológicos anulam a operação da lei dos rendimentos marginais decrescentes. |

    ??? success "Gabarito"
        **Respostas: V F V F F**

        **Justificativa por item:**

        - **Item 0 — V:** No curto prazo, o produto total \(\mathrm{TP}(L)\) atinge seu máximo quando \(\mathrm{PMg}_L = \frac{\partial \mathrm{TP}}{\partial L} = 0\).
        - **Item 1 — F:** É o contrário. Quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é *crescente*, não decrescente. O marginal "puxa" a média para cima quando está acima dela.
        - **Item 2 — V:** A condição de primeira ordem para o máximo do produto médio é \(\frac{d(\mathrm{PMe}_L)}{dL} = 0\), que implica \(\mathrm{PMg}_L = \mathrm{PMe}_L\).
        - **Item 3 — F:** A lei dos rendimentos marginais decrescentes não resulta de queda na qualidade dos insumos (que são considerados homogêneos). Resulta da proporção desfavorável entre o fator variável e o fator fixo: cada unidade adicional do insumo variável dispõe de menos fator fixo para trabalhar.
        - **Item 4 — F:** Avanços tecnológicos deslocam a função de produção para cima (aumentam \(A\)), mas não eliminam a concavidade no curto prazo. Para qualquer nível de tecnologia, a adição contínua de um fator variável a um fator fixo eventualmente apresentará rendimentos marginais decrescentes.

??? question "ANPEC 2020 — Questão 4"
    Com relação ao comportamento do produtor, indique quais dos itens a seguir são verdadeiros e quais são falsos:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Em uma função de produção do tipo \(Q = Af(K, L)\), o parâmetro "A" representa o nível de produtividade total dos fatores. |
    | 1 | Uma empresa emprega 100 trabalhadores e 50 unidades de capital. O preço do trabalho é \$15/hora e o do capital é \$30/hora. O produto marginal do trabalho é 60 e o produto marginal do capital é 90. A empresa está minimizando seus custos. |
    | 2 | Se a taxa marginal de substituição técnica de uma empresa não varia ao longo da isoquanta, sendo sempre igual a \(-1\), os insumos são substitutos perfeitos. |
    | 3 | Custos fixos como proporção importante dos custos totais é uma fonte de retornos crescentes de escala. |
    | 4 | A presença de "aprender fazendo" (*learning by doing*) de forma significativa no processo produtivo de uma empresa é uma fonte de retornos crescentes de escala. |

    ??? success "Gabarito"
        **Respostas: V F V V V**

        **Justificativa por item:**

        - **Item 0 — V:** Na formulação \(Q = Af(K,L)\), o parâmetro \(A\) é o nível de PTF (produtividade total dos fatores), conforme definido na Seção 10.6.
        - **Item 1 — F:** Para minimizar custos, a firma deve igualar a TMST à razão de preços: \(\frac{\mathrm{PMg}_L}{\mathrm{PMg}_K} = \frac{w}{v}\). Aqui, \(\frac{60}{90} = 0{,}667\) e \(\frac{15}{30} = 0{,}5\). Como \(0{,}667 \neq 0{,}5\), a firma **não** está minimizando custos — deveria usar relativamente mais trabalho.
        - **Item 2 — V:** TMST constante e igual a \(-1\) significa isoquantas lineares com inclinação \(-1\), ou seja, \(q = aK + aL\) — os insumos são substitutos perfeitos (trocáveis na proporção 1:1).
        - **Item 3 — V:** Custos fixos elevados significam que o custo médio cai fortemente com a escala (diluição dos fixos), o que é uma manifestação de rendimentos crescentes de escala.
        - **Item 4 — V:** *Learning by doing* implica que a produtividade aumenta com a experiência acumulada (produção acumulada), gerando efetivamente rendimentos crescentes de escala dinâmicos.

??? question "ANPEC 2024 — Questão 3"
    Com relação à teoria da produção, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Seja \(f(z_1,\ldots,z_m) = \gamma(\delta_1 z_1^{-\rho} + \cdots + \delta_m z_m^{-\rho})^{-\nu/\rho}\) uma função de produção CES, em que \(\gamma, \nu, \delta_1,\ldots,\delta_m > 0\), \(\sum_{i=1}^{m} \delta_i = 1\) e \(\rho \geq -1\). Então o limite da CES quando a elasticidade de substituição diverge para \(+\infty\) é uma função de produção Leontief, independentemente do grau de homogeneidade de \(f\). |
    | 1 | Seja \(Q(t) = \gamma(t)K(t)^{\alpha}L(t)^{1-\alpha}\), com \(0 < \alpha < 1\), uma função de produção Cobb-Douglas que varia continuamente no tempo. Suponha que as elasticidades-produto do capital e do trabalho são, respectivamente, 0,5 e 0,5. Se o produto cresce 2% ao ano, o capital cresce 1,8% ao ano e o trabalho cresce 1% ao ano, então o resíduo de Solow é de 0,6% ao ano. |
    | 2 | Seja \(Q = \min\{K/2, L\}\) uma função de produção Leontief. Suponha que \(L\) está fixo e defina \(q = Q/L\) e \(k = K/L\). Defina \(\varphi(k) = \min\{k/2, 1\}\). Se \(k \in [0, 2)\), então a produção é tecnologicamente ineficiente. |
    | 3 | Considere \(f(K,L) = (K-L)^2\) se \(K \leq L\), e \(f(K,L) = (K-L)^3\) se \(K > L\). Então, ao longo de linhas retas que partem da origem, a taxa técnica de substituição é constante, mas a função não é homotética. |
    | 4 | Uma firma produz de acordo com dois processos de Leontief: \(\min\{K/3, L/2\}\) e \(\min\{K, L/3\}\). Suponha que \(K = 5\) e \(L = 8\). Se o trabalhador adicional custa 70 e o preço da unidade do produto é 210, então não vale a pena contratar o trabalhador adicional. |

    ??? success "Gabarito"
        **Respostas: F V V V V**

        **Justificativa por item:**

        - **Item 0 — F:** Quando \(\sigma \to +\infty\) (ou seja, \(\rho \to 1\) na parametrização com \(\sigma = 1/(1+\rho)\), ou equivalentemente \(\rho \to 1\) com \(\sigma = 1/(1-\rho)\) dependendo da convenção de sinal), a CES converge para a função *linear* (substitutos perfeitos), não para a Leontief. A Leontief é o limite quando \(\sigma \to 0\).
        - **Item 1 — V:** Resíduo de Solow: \(\dot{\gamma}/\gamma = \dot{Q}/Q - \alpha \dot{K}/K - (1-\alpha)\dot{L}/L = 0{,}02 - 0{,}5 \times 0{,}018 - 0{,}5 \times 0{,}01 = 0{,}02 - 0{,}009 - 0{,}005 = 0{,}006 = 0{,}6\%\).
        - **Item 2 — V:** Se \(k < 2\), temos \(k/2 < 1\), logo \(q = \varphi(k) = k/2 < 1\). Mas com o mesmo \(L\), a firma poderia atingir \(q = 1\) se tivesse \(k \geq 2\). Como \(k/2 < 1 = \min\{k'/2, 1\}\) para \(k' \geq 2\), a firma está usando capital insuficiente: há excesso relativo de trabalho, e a produção está abaixo da fronteira eficiente.
        - **Item 3 — V:** Ao longo de raios da origem, \(K = cL\), e a TMST depende apenas de \(c\), não do nível de \(L\) — logo é constante ao longo de raios. Porém, a função não é homotética porque a forma funcional muda (de quadrática para cúbica) na fronteira \(K = L\), impedindo que as isoquantas sejam contrações/expansões homotéticas umas das outras.
        - **Item 4 — V:** Com \(K = 5\) e \(L = 8\), a produção ótima combina os dois processos. No processo 1: \(\min\{5/3, 8/2\} = \min\{1{,}67;\ 4\} = 1{,}67\). No processo 2: \(\min\{5, 8/3\} = \min\{5;\ 2{,}67\} = 2{,}67\). A alocação ótima dos insumos entre os processos gera produção total de aproximadamente 4,33 unidades. Um trabalhador adicional (\(L = 9\)) aumenta a produção marginalmente — o ganho adicional multiplicado pelo preço do produto (210) é inferior ao custo do trabalhador (70), logo não compensa. [Cálculo detalhado da alocação ótima entre processos requer programação linear.]

---

## 🔬 Pesquisa em Ação

??? pesquisa "Gasques, José Garcia; Bastos, Eliana Teles; Bacchi, Mirian Rumenos Piedade; Valdes, Constanza. (2010). Produtividade Total dos Fatores e Transformações da Agricultura Brasileira: Análise dos Dados dos Censos Agropecuários. In: Gasques, J. G.; Vieira Filho, J. E. R.; Navarro, Z. (Orgs.). [*A Agricultura Brasileira: Desempenho, Desafios e Perspectivas*](https://repositorio.ipea.gov.br). Brasília: IPEA, Cap. 1, 19-44. ISBN: 978-85-7811-050-5"
    **Pergunta central:** Quanto do crescimento da produção agropecuária brasileira nas últimas décadas se deve ao uso de mais insumos (terra, trabalho, capital) e quanto se deve ao progresso técnico? A decomposição do crescimento entre acumulação de fatores e produtividade total dos fatores (PTF) é uma aplicação direta da contabilidade de crescimento à la Solow discutida na Seção 10.6.

    **Método:** Gasques et al. utilizam dados dos Censos Agropecuários do IBGE para construir índices de produtividade total dos fatores na agropecuária brasileira entre 1970 e 2006. A metodologia consiste em calcular índices de Törnqvist para produto e insumos agregados (terra, trabalho, capital, materiais) e obter a PTF como resíduo — o mesmo conceito do resíduo de Solow, agora aplicado a dados censitários reais.

    **Resultado principal:** A PTF agropecuária cresceu a uma taxa média de 3,3% ao ano entre 1970 e 2006, respondendo por mais de dois terços do crescimento do produto no período. A terra cultivada cresceu modestamente, o trabalho rural *declinou*, e o capital e os insumos intermediários cresceram — mas a maior parte do crescimento veio da produtividade. A taxa de crescimento da PTF acelerou após os anos 1990, coincidindo com a intensificação da pesquisa da Embrapa e a abertura comercial.

    **Por que isso importa:** O resultado tem implicações diretas para a política agrícola: investimento em pesquisa e extensão rural gera retornos sociais elevados, pois desloca a função de produção agregada da agricultura. Em um país onde a agropecuária responde por cerca de 25% do PIB (considerando toda a cadeia), a PTF agrícola é um dos principais motores do crescimento econômico.

    **Relevância para o capítulo:** O estudo é uma aplicação empírica da decomposição do crescimento apresentada na Seção 10.6. O parâmetro \(A(t)\) da função de produção não é uma abstração teórica: é medido, acompanhado e influenciado por políticas públicas. O caso da agricultura brasileira mostra que o progresso técnico — capturado pelo resíduo de Solow — pode ser a força dominante do crescimento, exatamente como previsto pela teoria quando a PTF cresce mais rápido que os insumos.

??? pesquisa "Oberfield, Ezra; Raval, Devesh. (2021). [Micro Data and Macro Technology](https://doi.org/10.3982/ECTA12807). *Econometrica*, 89(2), 703-732. DOI: [10.3982/ECTA12807](https://doi.org/10.3982/ECTA12807)"
    **Pergunta central:** Qual é a elasticidade de substituição entre capital e trabalho na economia? Esse parâmetro — o \(\sigma\) da função CES discutido na Seção 10.4 — é crucial para entender se a participação do capital na renda aumenta ou diminui quando o capital se torna mais abundante. Piketty (2014) argumentou que \(\sigma > 1\) explicaria o aumento da desigualdade; outros pesquisadores contestaram essa estimativa.

    **Método:** Oberfield e Raval propõem uma abordagem que usa microdados de plantas industriais (Census of Manufactures dos EUA) para estimar a elasticidade de substituição agregada. A ideia-chave é que a elasticidade agregada depende de dois componentes: a elasticidade de substituição *dentro* de cada planta (entre capital e trabalho) e a elasticidade de substituição *entre* plantas (realocação de recursos de plantas intensivas em trabalho para plantas intensivas em capital). Os autores estimam ambas separadamente.

    **Resultado principal:** A elasticidade de substituição dentro das plantas é de aproximadamente 0,5 a 0,7 — abaixo de 1, consistente com a complementaridade entre capital e trabalho. Porém, a elasticidade agregada pode ser maior que a elasticidade no nível da planta devido à realocação entre plantas. Para a manufatura americana, a elasticidade agregada estimada situa-se em torno de 0,7, ainda abaixo de 1. Isso sugere que capital e trabalho são complementares brutos e que a participação do capital na renda *cai* quando o capital se torna relativamente mais abundante.

    **Por que isso importa:** O resultado tem implicações diretas para o debate sobre desigualdade e para a calibração de modelos macroeconômicos. Se \(\sigma < 1\), a automação e a acumulação de capital não levam necessariamente a um aumento da participação do capital na renda — contrariando uma versão simplificada da tese de Piketty.

    **Relevância para o capítulo:** O artigo demonstra que a elasticidade de substituição \(\sigma\) — apresentada na Seção 10.4 como um parâmetro abstrato da CES — é um objeto empiricamente estimável e economicamente consequente. A distinção entre a CES no nível da planta e no nível agregado mostra que a escolha da forma funcional (Seção 10.5) tem implicações que vão muito além do exercício de sala de aula: ela determina previsões sobre distribuição de renda, política fiscal e futuro do trabalho.

## 📚 Referências do Capítulo

- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 5.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 9.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Cap. 1–4 (teoria da produção).
