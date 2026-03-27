# Capítulo 10 — Mais Mãos, Mais Máquinas — Mais Produto?

Três padeiros, três fornos, mesma farinha — e um produz o dobro do outro. Os padeiros são parecidos, os fornos são iguais. O que difere? A *tecnologia*: a forma como insumos são combinados para gerar produto. Se você já se perguntou por que uma padaria com três fornos não triplica a produção só de contratar mais gente, parabéns — você já intuiu a lei mais testada da microeconomia.[^silly-walks-prod] Até agora, estudamos consumidores tentando espremer o máximo de felicidade de cada real. Agora trocamos de lado do balcão: entramos no mundo das **firmas**, agentes cuja razão de existir é transformar insumos (trabalho, capital, terra, materiais) em produtos e serviços. Compreender *como* essa transformação ocorre, quais são suas regularidades empíricas e como representá-la matematicamente é o objetivo central deste capítulo.

[^silly-walks-prod]: Os devotos de Monty Python reconhecerão aqui a lógica do *Ministry of Silly Walks*: o ministério emprega cada vez mais burocratas para desenvolver caminhadas absurdas, mas o produto marginal de cada burocrata adicional é claramente decrescente. O décimo funcionário provavelmente está apenas replicando o andar do terceiro com variação mínima. John Cleese, como Ministro, é o único insumo genuinamente produtivo — o resto é rendimento marginal decrescente em ação.

A **função de produção** é o instrumento analítico que sintetiza a tecnologia disponível para a firma. A partir dela, derivamos conceitos fundamentais — produtividade marginal, isoquantas, taxa marginal de substituição técnica (TMST), rendimentos de escala e elasticidade de substituição — que serão mobilizados nos capítulos seguintes para construir as curvas de custo e de oferta.

O capítulo está organizado em sete seções. Começamos pela produtividade marginal e pelas relações entre produto total, médio e marginal (Seção 10.1). Em seguida, introduzimos as isoquantas e a TMST (Seção 10.2), o conceito de rendimentos de escala (Seção 10.3) e a elasticidade de substituição (Seção 10.4). A Seção 10.5 apresenta quatro famílias de funções de produção clássicas — linear, Leontief, Cobb-Douglas e CES —, a Seção 10.6 incorpora o progresso técnico, e a Seção 10.7 discute funções de produção homotéticas e suas implicações para a função custo. Boxes Brasil e Mundo ao longo do capítulo ilustram como a teoria encontra expressão concreta — da revolução agrícola da [Embrapa](https://www.embrapa.br) ao debate sobre o declínio da participação do trabalho na renda nas economias avançadas.

O material deste capítulo pressupõe familiaridade com as ferramentas matemáticas do Capítulo 2 — em especial diferenciação de funções multivariadas, regra da cadeia e diferenciação implícita — e conecta-se à teoria do consumidor do Capítulo 4 por meio de uma dualidade formal: a firma que minimiza custos sujeita a uma restrição de produto resolve um problema analiticamente idêntico ao do consumidor que minimiza gastos sujeita a uma restrição de utilidade. Essa dualidade, explorada nos Capítulos 11 e 12, permite derivar resultados sobre oferta e custos aproveitando diretamente a intuição desenvolvida no lado do consumidor.

---

## 10.1 Produtividade Marginal

### A função de produção

Duas fábricas de cerveja, mesma quantidade de cevada e de funcionários — e uma produz o dobro da outra. Mágica? Não: **tecnologia**. A diferença está no conjunto de conhecimentos e processos que determinam como insumos são combinados para gerar produto. A função de produção é a representação matemática dessa "receita secreta".

A teoria da produção ocupa na análise da firma o mesmo papel que a teoria das preferências ocupa na análise do consumidor: ela descreve o que é *tecnologicamente possível*, sem ainda incorporar considerações de preço ou custo. Assim como no Capítulo 2 aprendemos as ferramentas matemáticas de diferenciação e otimização com restrições, aqui as mobilizamos para caracterizar como o produto reage a variações nos insumos. E assim como no Capítulo 4 a função de utilidade descrevia as preferências do consumidor, a função de produção descreve as possibilidades tecnológicas da firma — os capítulos seguintes (11 e 12) irão adicionar os preços dos fatores para derivar custos e a oferta.

É útil pensar na função de produção como uma "receita técnica" que a firma conhece: para cada combinação de máquinas e trabalhadores, ela sabe qual é o máximo de produto que pode obter. Esse *máximo* é a chave — a função de produção descreve a **fronteira** das possibilidades produtivas, não qualquer combinação ineficiente abaixo dela. Na prática, a econometria de produção (um campo ativo desde os trabalhos de Solow em 1957 e dos estudos de Griliches sobre a agricultura americana na década de 1960) busca estimar esses parâmetros tecnológicos a partir de dados observacionais, separando a eficiência técnica da firma da tecnologia do setor.

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

A relação entre produto marginal $\eqref{eq:10.2}$ e produto médio $\eqref{eq:10.3}$ é análoga àquela entre custo marginal e custo médio: quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é crescente; quando \(\mathrm{PMg}_L < \mathrm{PMe}_L\), o produto médio é decrescente; e quando \(\mathrm{PMg}_L = \mathrm{PMe}_L\), o produto médio atinge seu máximo.

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
    **Em uma frase:** O 10º trabalhador produz menos que o 1º não porque é menos capaz, mas porque tem menos capital com que trabalhar.

    **Pense assim:** Em uma cozinha de restaurante com quatro bocas de fogão, o primeiro cozinheiro é muito produtivo. O segundo ajuda bastante. O terceiro já começa a esbarrar nos outros. O quarto fica esperando uma boca liberar. O fogão não mudou — é o trabalhador extra que rende menos. Numa linha de montagem com 5 máquinas de solda, o décimo operário fica ocioso boa parte do turno aguardando uma máquina liberar. O problema não é o trabalhador — é a proporção de máquinas por trabalhador, que cai com cada contratação. Matematicamente: \(\partial^2 f/\partial L^2 < 0\).

    **Por que isso importa:** Essa intuição explica tanto por que simplesmente contratar mais gente não resolve o problema de produtividade da economia brasileira quanto o retorno elevado à mecanização: cada máquina adicional "libera" o potencial de múltiplos trabalhadores. A Embrapa documentou esse efeito na agricultura do Cerrado, onde a introdução de maquinário pesado elevou substancialmente o produto por trabalhador mesmo sem aumentar o número de trabalhadores.

!!! example "Exemplo: Rendimentos marginais na cafeicultura mineira"
    Considere uma fazenda de café em Minas Gerais com área fixa de 50 hectares. Com poucos trabalhadores, cada contratação adicional eleva significativamente a colheita — há muita terra por trabalhador. À medida que se adicionam trabalhadores, porém, eles passam a competir pelas mesmas fileiras de café, e o ganho marginal de cada um diminui. Em termos formais, o produto marginal do trabalho \(\mathrm{PMg}_L\) decresce com \(L\) para \(\bar{K}\) (terra) fixo. Esse padrão é amplamente documentado na agricultura brasileira, onde a mecanização da colheita (que efetivamente aumenta \(\bar{K}\)) deslocou a curva de produto marginal para cima, mitigando o efeito dos rendimentos decrescentes.

!!! box-brasil "Box Brasil: Produtividade do trabalho na indústria brasileira"

    A produtividade do trabalho — medida como valor adicionado por hora trabalhada — é uma aplicação direta do conceito de produto médio do trabalho (\(\mathrm{PMe}_L\)). Dados das Contas Nacionais do IBGE e da PNAD Contínua, compilados pelo FGV/IBRE, mostram que a produtividade por hora trabalhada no Brasil cresceu em média **+1,6% ao ano entre 2000 e 2010**, mas desacelerou para apenas **+0,3% ao ano entre 2010 e 2023** — e a média de longo prazo (1981–2023) é de modestos **+0,5% ao ano**.

    A teoria da produção ajuda a explicar esse padrão. Com investimento em capital (\(K\)) crescendo lentamente, o produto marginal e o produto médio do trabalho avançam de forma modesta. A **intensidade de capital** (\(K/L\)) varia enormemente entre setores: a PIA/IBGE mostra que setores intensivos em capital (como refino de petróleo e extração mineral) apresentam VTI por trabalhador ordens de grandeza acima de setores intensivos em trabalho (como confecções e calçados). Essa dispersão setorial é uma consequência direta da função de produção: para dado nível tecnológico, mais capital por trabalhador implica maior produto médio do trabalho.

---

## 10.2 Isoquantas e a Taxa Marginal de Substituição Técnica

Na Seção 10.1, mantivemos o capital preso no chão e só mexemos no trabalho — como um chef que só pode variar a quantidade de sal, sem tocar nos outros temperos. A vida real é mais generosa: firmas podem trocar máquinas por gente, robôs por operários, caixas de supermercado por totens de autoatendimento. Que instrumento analítico nos permite estudar essas possibilidades de troca entre insumos?

A resposta está nas **isoquantas** e na **taxa marginal de substituição técnica (TMST)**, ferramentas que capturam, respectivamente, o conjunto de combinações de insumos que geram o mesmo produto e a "taxa de câmbio" entre um fator e outro ao longo desse conjunto. A analogia com a teoria do consumidor é direta — e proposital: as isoquantas são o equivalente produtivo das curvas de indiferença estudadas no Capítulo 4, e a TMST desempenha papel análogo à taxa marginal de substituição do consumidor. Mais do que uma analogia superficial, trata-se de uma dualidade profunda: a firma que minimiza custos para um dado produto resolve um problema formalmente idêntico ao do consumidor que maximiza utilidade para um dado orçamento. Essa simetria, explorada em detalhes nos Capítulos 11 e 12, permite importar diretamente os resultados do lado da demanda para o lado da oferta.

A figura interativa a seguir ilustra como diferentes tecnologias de produção geram mapas de isoquantas com formatos distintos — da reta (substitutos perfeitos) ao ângulo reto (complementares perfeitos), passando pela hipérbole convexa da Cobb-Douglas e pela curva intermediária da CES. Compreender visualmente esses formatos é fundamental para desenvolver intuição sobre substituibilidade antes de passar às fórmulas.

<iframe src="../graficos/cap10/isoquantas.html" title="Figura 10.1 — Mapa de isoquantas interativo" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

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

!!! warning "Cuidado"
    **Rendimentos marginais decrescentes ≠ rendimentos de escala decrescentes.** Esses dois conceitos são frequentemente confundidos, mas descrevem fenômenos completamente distintos.

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

## 10.3 Rendimentos de Escala

Até aqui, mexemos em um insumo de cada vez (Seção 10.1) e trocamos um pelo outro (Seção 10.2). Agora vem a pergunta que todo dono de franquia se faz: se eu clonar a operação inteira — dobrar fábricas, máquinas, funcionários, tudo —, o faturamento dobra junto? Quem dera fosse tão simples. A resposta, que define os rendimentos de escala, tem implicações profundas para a estrutura de mercado — pois determina se há vantagem em ser grande ou pequeno, e por que algumas indústrias são dominadas por gigantes enquanto outras florescem com milhares de pequenas firmas.

<iframe src="../graficos/cap10/rendimentos-escala.html" title="Figura 10.2 — Rendimentos de escala" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

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

---

## 10.4 Elasticidade de Substituição

Quando o salário mínimo sobe, o iFood substitui motoboys por drones? Quando o juro cai, a montadora troca robôs por operários? A TMST nos diz *que* a firma pode trocar um insumo por outro — mas não responde o quanto essa troca é fácil ou dolorosa. É aqui que entra a elasticidade de substituição: um único número que resume se a tecnologia da firma é flexível como um canivete suíço ou rígida como uma receita de bolo.

A **elasticidade de substituição** é o parâmetro que responde a essa pergunta. Trata-se de uma medida adimensional que sintetiza a curvatura da isoquanta e, portanto, a facilidade de substituição entre insumos. Esse conceito é central não apenas para a teoria da produção, mas também para a análise da distribuição funcional da renda e o debate contemporâneo sobre automação e desigualdade.

É importante compreender a intuição geométrica por trás da definição: a elasticidade de substituição captura o quanto a isoquanta "se dobra". Uma isoquanta muito curvada (quase em forma de L) implica baixa elasticidade — mover-se ao longo dela exige uma grande variação percentual na TMST para obter uma pequena variação na razão \(K/L\). Uma isoquanta mais reta implica alta elasticidade — uma pequena mudança na TMST já provoca uma grande mudança na proporção de insumos. Matematicamente, \(\sigma\) é o inverso da elasticidade da TMST em relação à razão \(K/L\): quanto menos a isoquanta "resiste" ao movimento, maior é \(\sigma\).

A ligação com a distribuição de renda é fundamental. Sob mercados competitivos, o salário real iguala o produto marginal do trabalho e o retorno ao capital iguala o produto marginal do capital. A participação do trabalho na renda é \(wL/q = \mathrm{PMg}_L \cdot L/q\). Para a Cobb-Douglas com CRS, essa participação é sempre \(\beta\) — constante, independentemente dos preços dos fatores. Para a CES com \(\sigma \neq 1\), a participação do trabalho varia com \(w/r\): se \(\sigma > 1\), uma queda no custo do capital eleva a participação do capital; se \(\sigma < 1\), ocorre o contrário. Esse mecanismo está no centro das preocupações de economistas como Lawrence Katz, Alan Krueger e, mais recentemente, Daron Acemoglu sobre os impactos distributivos da automação. Acemoglu e Restrepo (2019) modelam o efeito da automação como substituição de *tarefas* antes realizadas por trabalho: quando \(\sigma\) é alto, a automação desloca trabalhadores para novas tarefas; quando \(\sigma\) é baixo, o deslocamento é mais doloroso e lento — exatamente a tensão que define o debate sobre IA e futuro do trabalho.[^black-knight-prod]

[^black-knight-prod]: O Black Knight de Monty Python é o caso extremo de rendimentos marginais decrescentes do trabalho sob ataque tecnológico. A cada braço cortado pelo Rei Arthur (automação), sua capacidade produtiva de luta cai drasticamente. Mas ele insiste: "'Tis but a scratch!" — exatamente como o gerente que acredita que mais um funcionário numa fábrica já automatizada vai fazer diferença. O Black Knight é, essencialmente, um trabalhador com \(\sigma \approx 0\): não há substituição possível entre braços e determinação.

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

!!! box-mundo "Box Mundo 10.2 — A elasticidade de substituição capital-trabalho na Europa"

    **Contexto:** A participação do trabalho na renda nacional — a fração do PIB que vai para salários e remunerações — declinou em quase todos os países desenvolvidos entre 1975 e 2012. Entender esse fenômeno exige estimar a elasticidade de substituição \(\sigma\) entre capital e trabalho: se \(\sigma > 1\), a queda no preço relativo do capital (impulsionada pela revolução das TIC e pela globalização) leva as firmas a substituir trabalho por capital tão intensamente que a participação do capital na renda *aumenta* e a do trabalho *cai*.

    **Dados:** Karabarbounis e Neiman (2014) compilaram dados de 59 países ao longo de três décadas e documentaram uma queda média da participação do trabalho na renda de aproximadamente **5 pontos percentuais** — um declínio expressivo e generalizável. O preço relativo dos bens de capital (máquinas, equipamentos) caiu em média 25% no mesmo período, refletindo os ganhos de produtividade na indústria de TI. No Brasil, o IBGE registra participação dos salários no valor adicionado em torno de 40–45%, abaixo da média de economias avançadas (50–55%).

    **Análise:** Usando uma especificação CES para a função de produção agregada, Karabarbounis e Neiman estimam \(\hat{\sigma} \approx 1{,}25\) — *acima* de 1. Isso significa que, com a queda no custo do capital, as firmas o substituíram pelo trabalho mais do que proporcionalmente, reduzindo a participação salarial. A implicação para a teoria da produção é direta: a escolha entre Cobb-Douglas (\(\sigma = 1\)) e CES (\(\sigma \neq 1\)) não é indiferente — ela determina previsões qualitativas distintas sobre distribuição de renda. Oberfield & Raval (2021, *Econometrica*), usando microdados de plantas industriais americanas, chegam a estimativas menores (\(\sigma \approx 0{,}7\)), ilustrando que a elasticidade de substituição é sensível ao nível de agregação analisado.

    **Fonte:** Karabarbounis, L.; Neiman, B. (2014). "The Global Decline of the Labor Share." *Quarterly Journal of Economics*, 129(1), 61–103. Oberfield, E.; Raval, D. (2021). "Micro Data and Macro Technology." *Econometrica*, 89(2), 703–732.

---

## 10.5 Funções de Produção Clássicas

Temos os conceitos — produtividade marginal, isoquantas, TMST, rendimentos de escala, elasticidade de substituição. Falta o corpo: quais equações concretas damos a essas ideias quando sentamos para resolver um problema ou estimar um modelo? Esta seção apresenta o "cardápio" clássico — quatro funções de produção que cobrem todo o espectro de substituibilidade, da rigidez absoluta (Leontief, o brigadeiro que só funciona com a proporção exata) à flexibilidade total (linear, o suco que aceita qualquer fruta). Cada uma captura um padrão tecnológico distinto, e a escolha da forma funcional adequada depende do setor e do problema em análise. Dominar essas quatro formas é indispensável tanto para provas da ANPEC quanto para trabalhos empíricos.

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

Entre a rigidez total do Leontief e a flexibilidade ilimitada da linear, situa-se a função mais célebre da economia: a **Cobb-Douglas**. Proposta por Charles Cobb (matemático) e Paul Douglas (economista) em 1928 para descrever a produção industrial nos EUA, ela se tornou a forma funcional mais utilizada em trabalhos empíricos — da contabilidade do crescimento à estimação de funções de custo — graças a uma combinação invejável de flexibilidade e tratabilidade analítica.

O trabalho original de Cobb e Douglas (1928, *American Economic Review*) ajustou a função \(q = AK^{\alpha}L^{1-\alpha}\) a dados da manufatura americana entre 1899 e 1922 e obteve \(\hat{\alpha} \approx 0{,}25\) — sugerindo que a participação do capital na renda era cerca de 25%, valor surpreendentemente próximo das estimativas das Contas Nacionais. Essa consistência entre o parâmetro estimado da função de produção e a participação fatorial observada não é coincidência: com rendimentos constantes de escala e mercados competitivos, os parâmetros \(\alpha\) e \(1-\alpha\) da Cobb-Douglas correspondem exatamente às parcelas de capital e trabalho na renda, respectivamente. Foi Robert Solow (1957) quem mostrou que essa propriedade poderia ser usada para medir a contribuição do progresso técnico ao crescimento — o chamado "resíduo de Solow" discutido na Seção 10.6.

A Cobb-Douglas é também a base analítica para a derivação das funções de custo de longo prazo no Capítulo 11: com CRS e preços de fatores \(w\) (salário) e \(r\) (custo do capital), a função de custo mínimo assume a forma \(C(w,r,q) = \tilde{c}(w,r) \cdot q\), onde \(\tilde{c}\) depende apenas dos preços. Essa separabilidade é uma propriedade direta da homoteticidade da Cobb-Douglas, explorada na Seção 10.7.

\[
q = A K^{\alpha} L^{\beta}, \qquad A > 0, \; \alpha, \beta > 0
\label{eq:10.9} \tag{10.9}
\]

As propriedades dependem dos parâmetros: rendimentos constantes se \(\alpha + \beta = 1\), crescentes se \(\alpha + \beta > 1\), decrescentes se \(\alpha + \beta < 1\). A TMST é \((\beta/\alpha)(K/L)\) e \(\sigma = 1\).

### Função de produção CES (Elasticidade de Substituição Constante)

A função CES (*Constant Elasticity of Substitution*), introduzida por Arrow, Chenery, Minhas e Solow no seminal artigo de 1961 no *American Economic Review*, representa o passo decisivo na direção de uma forma funcional verdadeiramente geral. A motivação era clara: a Cobb-Douglas impõe \(\sigma = 1\) por construção, mas não há razão teórica para que todas as tecnologias apresentem essa elasticidade específica. Arrow et al. derivaram a CES mostrando que ela é a única forma funcional compatível com três hipóteses: (i) isoquantas convexas, (ii) homogeneidade de grau \(\gamma\), e (iii) elasticidade de substituição **constante** (não necessariamente igual a 1) ao longo de qualquer isoquanta. O resultado é uma família paramétrica que engloba todas as formas anteriores como casos limite ou especiais — um teorema de unificação para a teoria da produção.

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

!!! idea "Intuição Econômica"
    **Em uma frase:** A CES é o "canivete suíço" das funções de produção — um único modelo que, ao variar o parâmetro \(\rho\), reproduz toda a família de tecnologias, dos complementares perfeitos aos substitutos perfeitos.

    **Pense assim:** Imagine um controle deslizante com "Leontief" em um extremo (proporções rígidas, como uma receita química) e "Linear" no outro (substituição total, como dois tipos de combustível). A posição atual do controle é determinada por \(\rho\). Em \(\rho = 0\) (ou seja, \(\sigma = 1\)), o controle está exatamente no meio — e a tecnologia é Cobb-Douglas. Ao empurrar o controle para a esquerda (\(\rho \to -\infty\), \(\sigma \to 0\)), as isoquantas ficam cada vez mais "anguladas" até se tornarem um L perfeito. Ao empurrar para a direita (\(\rho \to 1\), \(\sigma \to \infty\)), as isoquantas ficam mais retas até serem linhas paralelas.

    **Por que isso importa:** Na estimação empírica, a CES permite *testar* se a Cobb-Douglas é uma boa aproximação (\(\sigma = 1\)) ou se a tecnologia exige uma elasticidade diferente. Arrow et al. (1961) encontraram \(\sigma\) sistematicamente abaixo de 1 em dados industriais internacionais — o que motivou décadas de pesquisa sobre a verdadeira elasticidade de substituição nas economias modernas.

!!! info "🏅 Prêmio Nobel — Kenneth J. Arrow (1972)"

    **Kenneth Joseph Arrow** (1921–2017) dividiu o Nobel de 1972 com John Hicks por suas contribuições à teoria do equilíbrio geral e à economia do bem-estar. Mas suas contribuições vão muito além: o Teorema da Impossibilidade de Arrow (Capítulo 16), o modelo Arrow-Debreu de equilíbrio geral com mercados completos (Capítulo 14), os fundamentos da economia da informação e, diretamente relevante para este capítulo, a função de produção CES.

    **Conexão com este capítulo:** Arrow, junto com Chenery, Minhas e Solow, derivou a CES (1961) como a forma funcional mais geral compatível com elasticidade de substituição constante — unificando linear, Leontief e Cobb-Douglas num único modelo. A CES é provavelmente o objeto mais versátil da caixa de ferramentas do economista empírico: de funções de produção a funções de utilidade, de modelos de comércio internacional a modelos de crescimento, ela aparece em toda parte. Arrow demonstrou que restringir \(\sigma = 1\) (Cobb-Douglas) era uma hipótese desnecessária — e a evidência empírica lhe deu razão.

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

Até aqui, cada função de produção era uma fotografia — um instantâneo congelado no tempo. Mas o Cerrado conta outra história: a mesma terra e o mesmo número de braços que arrancavam 1.700 kg de soja por hectare nos anos 1970 hoje entregam mais de 3.300 kg. Ninguém dobrou o Cerrado nem clonou os agricultores. De onde vem esse ganho?

A resposta reside no **progresso técnico** — o deslocamento da própria função de produção ao longo do tempo. Incorporar essa dimensão temporal é essencial para conectar a microeconomia da produção à macroeconomia do crescimento, e o instrumento-chave para essa conexão é o **resíduo de Solow**, que mede a parcela do crescimento do produto não explicada pela acumulação de fatores.

A ideia é elegante em sua simplicidade. Se observamos o produto crescendo a 4% ao ano, o capital crescendo a 3% e o trabalho a 1%, e se sabemos que a participação do capital na renda é de 40% e a do trabalho é de 60%, então a acumulação de fatores explica \(0{,}4 \times 3\% + 0{,}6 \times 1\% = 1{,}8\%\) do crescimento. Os restantes \(4\% - 1{,}8\% = 2{,}2\%\) constituem o resíduo — a fração não explicada, atribuída ao progresso técnico. Esse exercício de contabilidade, introduzido por Solow (1957) e refinado por Griliches (1963), revelou que o progresso técnico era quantitativamente mais importante para o crescimento de longo prazo do que a simples acumulação de capital — uma conclusão que redirecionou toda a teoria do crescimento econômico para o papel da inovação, da educação e da pesquisa.

Do ponto de vista microeconômico, o progresso técnico manifesta-se visualmente como um **deslocamento para dentro das isoquantas**: a mesma quantidade de produto \(q_0\) pode ser produzida com *menos* de ambos os insumos. Geometricamente, a função de produção "sobe" — para qualquer combinação \((K, L)\), o produto aumenta. Algebricamente, o parâmetro \(A(t)\) cresce ao longo do tempo. A questão de *como* ele cresce — se de forma que favoreça capital ou trabalho, ou de forma neutra — é classificada pelas diferentes definições de neutralidade discutidas a seguir.

<iframe src="../graficos/cap10/progresso-tecnico.html" title="Figura 10.3 — Progresso técnico e deslocamento de isoquantas" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

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

O termo \(\dot{A}/A\) é a **produtividade total dos fatores** (PTF), frequentemente chamada de **resíduo de Solow**.[^ignorancia] Ele capta o crescimento do produto que não é explicado pelo crescimento dos insumos — isto é, o efeito puro do progresso técnico.

[^ignorancia]: Moses Abramovitz chamou o resíduo de Solow de "a medida da nossa ignorância" — e não estava sendo modesto. Tudo o que não sabemos medir nos insumos acaba no resíduo: qualidade do trabalho, inovação organizacional, infraestrutura, clima institucional, estabilidade macroeconômica. É como atribuir a melhora de um prato a "tempero" — quando "tempero" inclui desde sal até o humor do chef. A história da contabilidade do crescimento, de Solow (1957) a Hsieh e Klenow (2009), é em grande parte uma tentativa de reduzir essa ignorância, decompondo o resíduo em componentes identificáveis. No caso brasileiro, a queda da PTF nos anos 1980 (Bonelli e Fonseca, 1998; Gomes, Pessôa e Veloso, 2003) provavelmente reflete menos uma "piora tecnológica" e mais a desorganização alocativa causada pela hiperinflação — uma forma particularmente destrutiva de "tempero ruim".

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

!!! box-brasil "Box Brasil: A revolução da Embrapa — progresso técnico no Cerrado"

    A agropecuária brasileira vivenciou, nas últimas cinco décadas, uma das mais impressionantes transformações produtivas do mundo. O protagonista dessa revolução foi a **Empresa Brasileira de Pesquisa Agropecuária ([Embrapa](https://www.embrapa.br))**, fundada em 1973, cuja atuação é um caso emblemático de progresso técnico aplicado à produção.

    | Cultura | Produtividade ~1977 | Produtividade ~2024 | Fator de multiplicação |
    |---------|-------------------:|-------------------:|:-----:|
    | **Soja** | ~1.700 kg/ha | ~3.300 kg/ha | ×1,9 |
    | **Milho** | ~1.600 kg/ha | ~6.000 kg/ha | ×3,8 |

    *Fontes: [CONAB](https://www.conab.gov.br) (safras 2023/24); IBGE/PAM.*

    A área de soja expandiu-se de 7 para 46 milhões de hectares no período, mas a produtividade por hectare quase dobrou — evidenciando que o crescimento do produto decorreu tanto da expansão extensiva (mais terra) quanto do progresso técnico (mais produto por unidade de terra). A transformação do Cerrado — via calagem, cultivares tropicais e plantio direto — converteu solos antes improdutivos no maior polo agropecuário do país.

    **Interpretação microeconômica.** Em termos da teoria da produção, a atuação da Embrapa representa um deslocamento da função de produção agrícola — um aumento do parâmetro \(A(t)\). Trata-se predominantemente de progresso técnico **aumentador de terra** (análogo ao neutro de Solow aplicado ao fator terra), pois a inovação principal foi tornar produtivos solos antes imprestáveis, multiplicando o fator terra efetivo. A Embrapa estima que a tecnologia gerada pela pesquisa agropecuária foi responsável por cerca de **60% do crescimento da PTF** na agricultura brasileira entre 1975 e 2020. Goolsbee, Levitt & Syverson (2020, Cap. 6) documentam padrões similares na agricultura estadunidense.

!!! box-mundo "Box Mundo 10.3 — O resíduo de Solow e o milagre do Leste Asiático"

    **Contexto:** Entre 1960 e 1990, as economias de Coreia do Sul, Singapura, Taiwan e Hong Kong cresceram a taxas entre 6% e 9% ao ano — o "milagre" do Leste Asiático. O debate econômico em torno desse crescimento tornou-se uma das mais acesas controvérsias da macroeconomia do desenvolvimento: o crescimento derivou de acumulação extraordinária de fatores (capital e trabalho) ou de ganhos genuínos de produtividade total dos fatores (PTF)?

    **Dados:** Alwyn Young (1995, *Quarterly Journal of Economics*) aplicou a contabilidade de crescimento de Solow a dados de Coreia, Singapura, Taiwan e Hong Kong para o período 1966–1990. Seus resultados foram surpreendentes: **quase todo o crescimento** era explicado por acumulação de capital e aumento da força de trabalho — a PTF crescia muito pouco ou até negativamente em Singapura. As taxas de investimento (capital físico + capital humano) excepcionalmente elevadas — em Singapura, a taxa de poupança chegou a 47% do PIB — explicavam os números, não a inovação.

    **Análise:** O resultado de Young foi contestado por Hsieh (2002, *AER*), que usou dados de remuneração de fatores em vez de quantidades físicas e encontrou PTF positiva e relevante para Singapura e Taiwan. A divergência ilustra um ponto metodológico central: o resíduo de Solow é medido como **diferença** entre crescimento do produto e crescimento ponderado dos insumos — e qualquer erro de medição nos insumos se reflete diretamente na estimativa de PTF. Para o Brasil, Bonelli & Fonseca (1998, IPEA) e Gomes et al. (2003) aplicaram a mesma metodologia ao período 1970–2000 e encontraram PTF **negativa** nos anos 1980 (a "década perdida"), consistente com a crise e a hiperinflação que desorganizaram a alocação de recursos. O "milagre econômico" brasileiro de 1968–1973 apresentou PTF positiva, mas calcada em combinação de acumulação de capital, redução do subemprego e importação tecnológica.

    **Fonte:** Young, A. (1995). "The Tyranny of Numbers: Confronting the Statistical Realities of the East Asian Growth Experience." *Quarterly Journal of Economics*, 110(3), 641–680. Hsieh, C.-T. (2002). "What Explains the Industrial Revolution in East Asia?" *American Economic Review*, 92(3), 502–526. Solow, R. M. (1957). "Technical Change and the Aggregate Production Function." *Review of Economics and Statistics*, 39(3), 312–320.

## 10.7 Funções de Produção Homotéticas

Ao longo deste capítulo, notamos que certas propriedades das funções de produção — como o fato de a TMST depender apenas da razão \(K/L\), e não dos níveis absolutos dos insumos — simplificam enormemente a análise. Essas propriedades não são acidentais: elas decorrem de uma estrutura matemática particular chamada **homoteticidade**. Compreender essa estrutura é importante porque ela determina se o caminho de expansão da firma é linear (o que simplifica a função custo) e se firmas de diferentes tamanhos utilizam a mesma "receita" de insumos.

A relevância econômica da homoteticidade vai além da elegância matemática. Quando a função de produção é homotética, a separação entre as decisões de *quais insumos usar* (determinada pelos preços relativos) e *quanto produzir* (determinada pela demanda e pelos preços dos produtos) é total. Em outras palavras, uma firma homotética que decide dobrar sua produção simplesmente dobra todas as quantidades de insumos na mesma proporção — ela não altera sua "receita". Essa propriedade é a chave que conecta a teoria da produção (Capítulo 10) à teoria dos custos (Capítulo 11): funções de custo derivadas de tecnologias homotéticas têm a forma \(C(w, r, q) = c(w, r) \cdot g(q)\), onde os custos se separam em um componente de preços e um componente de quantidade. Sem homoteticidade, a análise de custos se torna muito mais complexa, pois a proporção ótima de insumos muda a cada nível de produção.

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

A padaria com três fornos que não triplica a produção — lembra? Agora sabemos exatamente por quê: rendimentos marginais decrescentes no curto prazo, rendimentos de escala no longo prazo, e uma elasticidade de substituição que determina se a firma pode trocar braços por máquinas ou está presa à receita original. Da Cobb-Douglas à CES, do resíduo de Solow à homoteticidade, mapeamos a "receita secreta" da firma. Falta um ingrediente crucial: o preço.

*Sabemos produzir. Falta saber quanto custa. And now for something completely different: o próximo capítulo, onde a conta chega.*

---

!!! classroom "Atividade 10.1 — Fábrica de aviões de papel: rendimentos marginais ao vivo (20 min)"
    **Objetivo:** Demonstrar empiricamente a lei dos rendimentos marginais decrescentes — e a diferença entre produto marginal e produto médio.

    **Material:** Folhas de papel A4 (muitas), 1 tesoura e 1 régua por grupo (capital fixo), cronômetro.

    **Protocolo:**

    1. **Setup** (3 min): Grupos de 6 alunos. Cada grupo é uma "firma" com capital fixo: 1 tesoura, 1 régua, 1 mesa. O "produto" é um avião de papel padronizado (deve voar pelo menos 2 metros). Um aluno fica de fora como "gerente de qualidade" (controle).
    2. **Rodada 1 — 1 trabalhador** (2 min): Apenas 1 aluno do grupo produz aviões por 2 minutos. O gerente conta os aviões aprovados. Anote: TP₁.
    3. **Rodadas 2–5** (8 min): Adicione 1 trabalhador por rodada (2 min cada). Com 2 trabalhadores, com 3, com 4, com 5. Anote TP₂, TP₃, TP₄, TP₅.
    4. **Cálculos** (3 min): Cada grupo calcula PMg (= TPₙ - TPₙ₋₁) e PMe (= TPₙ/n) para cada rodada. Projete os resultados de todos os grupos.
    5. **Debrief** (4 min):
        - "O PMg cresceu ou caiu nas últimas rodadas?" → Tipicamente cai a partir do 3º ou 4º trabalhador (esbarrando na mesa, disputando a tesoura).
        - "Em que rodada PMe atingiu o máximo? Era a rodada em que PMg = PMe?"  → Confirme a relação marginal-médio (Seção 10.1).
        - "Se eu desse a cada grupo uma segunda tesoura (dobrasse o capital), o que aconteceria?" → O PMg se deslocaria para cima. Isso é investimento.
        - Conecte: "Vocês acabaram de estimar uma função de produção de curto prazo. A Embrapa fez a mesma coisa com a soja — mas com dados de 50 anos."

    **Conexão com o conteúdo:** Seção 10.1 (PMg, PMe, rendimentos marginais decrescentes). Inspirado em Bergstrom e Miller (2000, Cap. 3) e Holt (2007, Cap. 24).

!!! classroom "Atividade 10.2 — Clonar a firma: rendimentos de escala por setor (10 min)"
    **Objetivo:** Desenvolver intuição sobre quando rendimentos de escala são crescentes, constantes ou decrescentes — e por que isso determina a estrutura de mercado.

    **Material:** Nenhum (projeção de cenários).

    **Protocolo:**

    1. **Cenários** (5 min): Projete quatro setores e pergunte para cada um: "Se você clonar a operação inteira — dobrar tudo (trabalhadores, máquinas, espaço) —, o produto mais que dobra, dobra exatamente, ou menos que dobra?" Vote com Mentimeter ou mão levantada.
        - **(a) Barraca de açaí na praia** → CRS (dobrar tudo ≈ dobra o produto). Fácil replicar.
        - **(b) Refinaria de petróleo** → IRS (o volume do tanque cresce com o cubo do raio, o custo com o quadrado). Por isso refinarias são enormes.
        - **(c) Escritório de advocacia boutique** → DRS? O principal ativo é o capital humano do sócio-fundador, que não "dobra". Crescer dilui a qualidade.
        - **(d) Plataforma digital (Netflix, Uber)** → IRS extremos. O custo marginal de um usuário adicional é quase zero; o custo fixo (conteúdo, algoritmo) é enorme.
    2. **Debrief** (5 min):
        - "Percebam o padrão: IRS → poucas firmas grandes (refinarias, plataformas). CRS → muitas firmas médias (barracas). DRS → muitas firmas pequenas especializadas (advocacia)."
        - "Rendimentos de escala explicam *por que* alguns mercados são oligopólios naturais e outros são competitivos — tema do Capítulo 12."
        - "O CADE analisa alegações de economias de escala em toda fusão — exatamente este cálculo que vocês fizeram de cabeça."

    **Conexão com o conteúdo:** Seção 10.3 (rendimentos de escala), Box Brasil sobre CADE (Seção 10.3), preparação para Capítulos 12–13.

!!! classroom "Atividade 10.3 — Quem substitui quem? Elasticidade de substituição na prática (10 min)"
    **Objetivo:** Calibrar a intuição sobre σ — o parâmetro que determina se a automação é suave ou traumática.

    **Material:** Nenhum (projeção).

    **Protocolo:**

    1. **Ranking** (4 min): Projete 5 setores e peça que os alunos os ordenem do *mais fácil* ao *mais difícil* de substituir trabalho por capital (automação):
        - Caixa de supermercado → Motorista de caminhão → Cirurgião → Atendente de call center → Pedreiro
    2. **Debate** (3 min): Compare os rankings. Tipicamente: call center > caixa > motorista > pedreiro > cirurgião. Pergunte: "Qual tem σ mais alto? Qual tem σ mais baixo?"
    3. **Debrief** (3 min):
        - "O σ alto (call center → chatbot) significa isoquanta quase reta: a firma facilmente troca pessoas por máquinas. O σ baixo (cirurgião) significa isoquanta quase em L: a máquina não substitui o humano."
        - "Chirinko (2008) encontrou σ ≈ 0,4–0,6 para a manufatura como um todo. Mas varia enormemente entre setores — e é por isso que a automação não desloca todos os trabalhadores igualmente."
        - Conecte com Acemoglu e Restrepo (2019) e o debate sobre IA e futuro do trabalho.

    **Conexão com o conteúdo:** Seção 10.4 (elasticidade de substituição), Box Mundo 10.2 (labor share), Chirinko (2008).

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Uma função de produção $f(K,L)$ apresenta rendimentos crescentes de escala se:"
    - (a) $f(tK, tL) = t \cdot f(K,L)$ para todo $t > 1$
    - (b) $f(tK, tL) > t \cdot f(K,L)$ para todo $t > 1$
    - (c) O produto marginal do trabalho é crescente
    - (d) A TMST é constante ao longo de uma isoquanta

    ??? success "Resposta"
        **(b)** Rendimentos crescentes de escala significam que dobrar todos os insumos mais que dobra o produto. Formalmente, $f(tK,tL) > t \cdot f(K,L)$ para $t > 1$. A alternativa (a) descreve rendimentos constantes (homogeneidade de grau 1); (c) descreve rendimentos crescentes do fator trabalho, não de escala; (d) descreve substitutos perfeitos na produção.

??? question "2. Para a função Cobb-Douglas $f(K,L) = A K^\alpha L^\beta$, os rendimentos de escala são determinados por:"
    - (a) O valor de $A$
    - (b) A soma $\alpha + \beta$: crescentes se $> 1$, constantes se $= 1$, decrescentes se $< 1$
    - (c) O produto $\alpha \cdot \beta$
    - (d) A razão $\alpha / \beta$

    ??? success "Resposta"
        **(b)** Para Cobb-Douglas, $f(tK,tL) = t^{\alpha+\beta} f(K,L)$. Se $\alpha + \beta > 1$, rendimentos crescentes; se $= 1$, constantes; se $< 1$, decrescentes. O parâmetro $A$ (a) é um fator de produtividade que não afeta os rendimentos de escala; (c) e (d) não determinam a homogeneidade.

??? question "3. A Taxa Marginal de Substituição Técnica (TMST) entre capital e trabalho mede:"
    - (a) O custo de substituir uma unidade de capital por trabalho no mercado
    - (b) A quantidade de capital que a firma pode dispensar ao empregar uma unidade adicional de trabalho, mantendo a produção constante
    - (c) A razão entre os preços dos insumos
    - (d) A elasticidade de substituição entre os insumos

    ??? success "Resposta"
        **(b)** A TMST é a inclinação da isoquanta: $\text{TMST}_{LK} = -dK/dL|_{q=\bar{q}} = \text{PMg}_L/\text{PMg}_K$. Mede a taxa à qual a firma pode trocar capital por trabalho mantendo o produto. A alternativa (c) descreve a inclinação da isocusto; (a) confunde TMST com custo de mercado; (d) é um conceito relacionado mas distinto ($\sigma$ mede a curvatura da isoquanta).

??? question "4. A lei dos rendimentos marginais decrescentes afirma que:"
    - (a) Quando todos os insumos aumentam, o produto total eventualmente diminui
    - (b) Quando um insumo aumenta com os demais fixos, seu produto marginal eventualmente diminui
    - (c) O custo médio é sempre crescente
    - (d) As isoquantas se tornam retas à medida que a produção aumenta

    ??? success "Resposta"
        **(b)** A lei dos rendimentos marginais decrescentes aplica-se ao curto prazo: mantendo pelo menos um insumo fixo, o produto marginal do insumo variável eventualmente cai. Isso não diz que o produto total diminui (a) — apenas que cresce a taxas decrescentes. A alternativa (a) confunde rendimentos decrescentes do fator com rendimentos de escala; (c) não segue necessariamente.

??? question "5. Uma função de produção é homotética quando:"
    - (a) Os rendimentos de escala são sempre constantes
    - (b) A TMST depende apenas da razão $K/L$, não do nível de produção — as isoquantas são 'cópias ampliadas' umas das outras
    - (c) O produto marginal de cada insumo é constante
    - (d) A elasticidade de substituição é infinita

    ??? success "Resposta"
        **(b)** Homoteticidade significa que a TMST em qualquer ponto da isoquanta depende apenas da razão capital-trabalho, não da escala. A expansão da produção ao longo de um raio a partir da origem mantém a proporção ótima dos insumos. A alternativa (a) é restritiva — funções homotéticas podem ter rendimentos variáveis; (c) descreve uma função linear nos insumos; (d) descreve substitutos perfeitos.

---

## 📋 Resumo do Capítulo

- A **função de produção** $q = f(K, L)$ descreve a quantidade máxima de produto obtida a partir de capital e trabalho, sintetizando a tecnologia da firma. Dela derivam-se o produto marginal, o produto médio e a lei dos rendimentos marginais decrescentes.
- As **isoquantas** representam combinações de insumos que geram o mesmo nível de produto, e a **TMST** (taxa marginal de substituição técnica) mede a taxa à qual a firma pode trocar um insumo por outro mantendo a produção constante.
- Os **rendimentos de escala** classificam a tecnologia segundo o que ocorre com o produto quando todos os insumos são multiplicados por um mesmo fator: crescentes, constantes ou decrescentes. Esse conceito é distinto da lei dos rendimentos marginais decrescentes, que se aplica à variação de um único insumo.
- A **elasticidade de substituição** ($\sigma$) mede a facilidade com que a firma substitui capital por trabalho ao longo de uma isoquanta, sendo um parâmetro central que diferencia as famílias de funções de produção (linear, Leontief, Cobb-Douglas e CES).
- As quatro funções de produção clássicas — **linear** ($\sigma = \infty$), **Leontief** ($\sigma = 0$), **Cobb-Douglas** ($\sigma = 1$) e **CES** ($\sigma$ livre) — cobrem todo o espectro de substituibilidade entre insumos e são amplamente utilizadas na análise empírica.
- O **progresso técnico** desloca a função de produção para cima ao longo do tempo, podendo ser neutro (Hicks, Harrod ou Solow) ou enviesado, e é o principal motor do crescimento da produtividade no longo prazo — como ilustra a revolução agrícola da Embrapa no Brasil.

## 🔑 Conceitos-Chave

<a id="tabela-10-2"></a>

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

<div class="caption-obj" markdown>
**Tabela 10.2 — Conceitos-chave.**
</div>

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

<a id="ex-10-6"></a>**Exercício 10.6.** *(Fácil)*
Considere a função de produção \(f(K, L) = K^{0,3} L^{0,7}\).

(a) Calcule os produtos marginais \(\mathrm{PMg}_K\) e \(\mathrm{PMg}_L\).

(b) Verifique o Teorema de Euler: \(\mathrm{PMg}_K \cdot K + \mathrm{PMg}_L \cdot L = f(K, L)\) (o que implica sobre os rendimentos de escala?).

(c) Mostre que os produtos marginais são decrescentes.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-6)

---

<a id="ex-10-7"></a>**Exercício 10.7.** *(Fácil)*
Classifique os rendimentos de escala das funções de produção abaixo, justificando cada caso:

(a) \(f(K, L) = KL\)

(b) \(f(K, L) = K + L\)

(c) \(f(K, L) = \min\{K, 2L\}\)

(d) \(f(K, L) = K^{0,4} L^{0,4}\)

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-7)

---

<a id="ex-10-8"></a>**Exercício 10.8.** *(Médio)*
Uma firma opera com a função de produção CES \(q = \left[\delta K^{\rho} + (1-\delta)L^{\rho}\right]^{1/\rho}\), com \(\delta = 0{,}5\) e \(\rho = -1\) (portanto, \(\sigma = 0{,}5\)). Os preços dos fatores são \(r = 5\) e \(w = 3\), e a firma utiliza \(K = 10\) e \(L = 20\).

(a) Calcule a TMST nessa combinação.

(b) Verifique se a firma está minimizando custos (compare a TMST com a razão de preços \(w/r\)).

(c) Se a firma não está no ótimo, em que direção deve ajustar a combinação de insumos?

(d) Calcule a elasticidade de substituição e interprete.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-8)

---

<a id="ex-10-9"></a>**Exercício 10.9.** *(Médio — contexto brasileiro)*
Um produtor de soja no Cerrado opera com a função de produção \(f(K, L) = A \cdot K^{0,4} L^{0,6}\), onde \(A = A(t)\) representa o nível tecnológico fornecido por variedades desenvolvidas pela Embrapa.

(a) Se \(A\) cresce a uma taxa constante de 3% ao ano, em quanto tempo o produto dobra, mantendo os insumos \(K\) e \(L\) constantes? (Use a regra de 70 como aproximação e confirme com o cálculo exato.)

(b) Entre 2000 e 2023, a produtividade média da soja brasileira cresceu de 2.403 para 3.509 kg/ha, um crescimento de aproximadamente 1,9% ao ano. Que fração desse crescimento é consistente com um crescimento anual de \(A\) de 3%, supondo insumos constantes?

(c) Como a teoria da produção interpretaria o fato de que a área plantada de soja no Brasil cresceu muito mais do que a produtividade por hectare? Isso é uma evidência de rendimentos crescentes ou decrescentes?

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-9)

---

<a id="ex-10-10"></a>**Exercício 10.10.** *(Difícil)*
Considere uma função de produção homotética \(f(K, L)\), que pode ser escrita como \(f(K, L) = g(h(K, L))\), onde \(h\) é homogênea de grau 1 e \(g\) é estritamente crescente.

(a) Prove que o caminho de expansão (locus de combinações ótimas de insumos à medida que o produto varia, para preços \(w\) e \(r\) fixos) é um raio a partir da origem.

(b) Mostre que, como consequência, a função de custo mínimo pode ser escrita na forma separável \(C(w, r, q) = c(w, r) \cdot g^{-1}(q)\), onde \(c(w, r)\) é o custo de atingir \(h = 1\). O que essa separabilidade implica sobre como o custo varia com o produto?

(c) Verifique a propriedade (b) explicitamente para a função Cobb-Douglas \(f(K, L) = K^{\alpha} L^{1-\alpha}\) com rendimentos constantes de escala.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-10)

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

??? pesquisa "Solow, Robert M. (1957). Technical Change and the Aggregate Production Function. *Review of Economics and Statistics*, 39(3), 312–320."
    **Pergunta central:** Quanto do crescimento do produto nos EUA entre 1909 e 1949 se deveu à acumulação de capital e trabalho, e quanto decorreu do progresso técnico? O artigo fundacional de Solow introduz a metodologia da contabilidade do crescimento — hoje conhecida como "resíduo de Solow" — e aplica-a pela primeira vez a dados macroeconômicos americanos.

    **Método:** Solow parte de uma função de produção agregada \(Q = A(t) \cdot F(K, L)\) e diferencia ao longo do tempo. Sob hipótese de mercados competitivos (cada fator é remunerado pelo seu produto marginal), as participações factoriais na renda podem ser usadas como pesos para os fatores, permitindo isolar \(\dot{A}/A\) como resíduo. O método não requer assumir uma forma funcional específica para \(F\) — apenas que a função seja homogênea de grau 1 (rendimentos constantes de escala).

    **Resultado principal:** Solow encontrou que apenas **12,5% do crescimento** do produto por hora trabalhada nos EUA no período era explicado pela acumulação de capital — os **87,5% restantes** constituíam o resíduo, interpretado como progresso técnico. Esse resultado, hoje reproduzido em inúmeras economias, foi decisivo para redirecionar a pesquisa em crescimento econômico da acumulação de fatores para a inovação e o conhecimento.

    **Por que isso importa:** O artigo é a base empírica e metodológica de tudo que se estuda sobre PTF e progresso técnico, tanto em macroeconomia quanto na microeconomia da produção. O Prêmio Nobel de 1987 concedido a Solow reconhece precisamente esse legado.

    **Relevância para o capítulo:** A equação de contabilidade do crescimento $\eqref{eq:10.12}$ apresentada na Seção 10.6 é diretamente derivada da metodologia deste artigo. O "resíduo de Solow" é o parâmetro \(\dot{A}/A\) — e sua estimação para o Brasil, nos estudos de Gasques et al. e Bonelli & Fonseca, replica a metodologia pioneira deste trabalho.

??? pesquisa "Griliches, Zvi. (1963). The Sources of Measured Productivity Growth: United States Agriculture, 1940–60. *Journal of Political Economy*, 71(4), 331–346."
    **Pergunta central:** Quanto cresceu a produtividade da agricultura americana nas décadas de 1940 e 1950, e quais foram as fontes desse crescimento? Griliches aplica a contabilidade de Solow ao setor agrícola americano, com foco especial na adoção tecnológica e na qualidade dos insumos.

    **Método:** O trabalho constrói índices de produto agrícola e insumos ajustados pela qualidade: trabalho ponderado por educação, capital ajustado pela vintage tecnológica dos equipamentos. A ideia central é que parte do "resíduo" de Solow reflete mudanças na *qualidade* dos insumos, não apenas progresso técnico desincorporado. Griliches distingue entre progresso técnico **incorporado** (embodied — melhorias nos bens de capital, como tratores mais eficientes) e **desincorporado** (disembodied — aumentos de produtividade independentes dos insumos).

    **Resultado principal:** A produtividade da agricultura americana cresceu a aproximadamente 2% ao ano entre 1940 e 1960. Quando os insumos são ajustados pela qualidade, o resíduo não explicado pelo crescimento dos fatores cai substancialmente — sugerindo que parte significativa do "milagre" da produtividade agrícola americana refletia melhorias na qualidade do capital e do trabalho, e não apenas progresso técnico puro.

    **Por que isso importa:** O trabalho de Griliches inaugurou a tradição de medir a PTF ajustada pela qualidade dos insumos, uma linha de pesquisa central em econometria da produção até hoje. Seus estudos posteriores sobre P&D e spillovers de conhecimento influenciaram diretamente a política de apoio à pesquisa agrícola nos EUA — e a criação de instituições como a Embrapa no Brasil.

    **Relevância para o capítulo:** A decomposição entre progresso técnico incorporado e desincorporado é uma extensão natural do conceito de PTF apresentado na Seção 10.6. No contexto brasileiro, a Embrapa produz tanto progresso incorporado (sementes de alto rendimento, máquinas adaptadas ao Cerrado) quanto desincorporado (técnicas agronômicas, manejo de solo) — e a distinção de Griliches ajuda a interpretar quanto de cada tipo explicou a revolução agrícola brasileira.

??? pesquisa "Bustos, Paula; Caprettini, Bruno; Ponticelli, Jacopo. (2016). Agricultural Productivity and Structural Transformation: Evidence from Brazil. *American Economic Review*, 106(6), 1320–1365. DOI: [10.1257/aer.20131061](https://doi.org/10.1257/aer.20131061)"
    **Pergunta central:** A introdução de novas tecnologias agrícolas de alta produtividade leva ao desenvolvimento econômico e à transformação estrutural? O artigo usa a adoção da soja transgênica de alta tecnologia (HT — *high-yield* varieties) no Brasil como experimento natural para estimar o impacto do progresso técnico agrícola sobre a alocação de trabalho entre setores.

    **Método:** Bustos, Caprettini e Ponticelli exploram a variação geográfica na adequação das novas variedades de soja HT (introduzidas no Brasil a partir dos anos 2000): municípios onde as condições climáticas e de solo favoreciam a adoção da nova tecnologia experimentaram maiores aumentos de produtividade agrícola. Usando essa variação como instrumento, os autores estimam o efeito causal do progresso técnico agrícola sobre o emprego industrial e o processo de urbanização.

    **Resultado principal:** A adoção de HT causou aumento significativo da produtividade agrícola e, simultaneamente, **liberação de trabalho** do campo em direção ao setor industrial. Municípios com maior adequação à HT experimentaram maior crescimento do emprego industrial, consistente com um processo de transformação estrutural clássico: ganhos de produtividade na agricultura liberam mão de obra que se emprega em atividades de maior valor adicionado. O efeito foi quantitativamente relevante — municípios com alta adequação à HT cresceram o emprego industrial cerca de 10 pontos percentuais a mais que os demais.

    **Por que isso importa:** O artigo conecta diretamente a teoria da produção (progresso técnico, PTF) ao desenvolvimento econômico. O "resíduo de Solow" agrícola não é apenas um número contábil — ele tem consequências reais sobre a estrutura do emprego e o nível de renda per capita. Para o Brasil, onde a agropecuária continua sendo setor fundamental, a pesquisa da Embrapa tem impactos que vão muito além da porteira da fazenda.

    **Relevância para o capítulo:** O artigo é uma aplicação direta da decomposição do crescimento (Seção 10.6) a dados brasileiros reais, conectando o parâmetro \(A(t)\) da função de produção agrícola a transformações macroeconômicas de longo prazo. Combina os instrumentais de teoria da produção e econometria para identificar causalidade, exemplificando como os conceitos deste capítulo fundamentam pesquisa empírica de fronteira.

## 📚 Referências do Capítulo

- Acemoglu, Daron, e Pascual Restrepo. 2019. "[Automation and New Tasks: How Technology Displaces and Reinstates Labor](https://doi.org/10.1257/jep.33.2.3)." *Journal of Economic Perspectives* 33 (2): 3–30.
- Arrow, Kenneth J., Hollis B. Chenery, Bagicha S. Minhas, e Robert M. Solow. 1961. "[Capital-Labor Substitution and Economic Efficiency](https://doi.org/10.2307/1926559)." *Review of Economics and Statistics* 43 (3): 225–250.
- Bonelli, Regis, e Renato Fonseca. 1998. "[Ganhos de Produtividade e de Eficiência: Novos Resultados para a Economia Brasileira](https://repositorio.ipea.gov.br/entities/publication/c9dd506b-0768-4cac-9b67-aaa1fdbb159a)." Texto para Discussão No. 557. Rio de Janeiro: IPEA.
- Bustos, Paula, Bruno Caprettini, e Jacopo Ponticelli. 2016. "[Agricultural Productivity and Structural Transformation: Evidence from Brazil](https://doi.org/10.1257/aer.20131061)." *American Economic Review* 106 (6): 1320–1365.
- Chirinko, Robert S. 2008. "[σ: The Long and Short of It](https://doi.org/10.1016/j.jmacro.2007.10.010)." *Journal of Macroeconomics* 30 (2): 671–686.
- Cobb, Charles W., e Paul H. Douglas. 1928. "[A Theory of Production](https://www.jstor.org/stable/1811556)." *American Economic Review* 18 (1): 139–165.
- Friedlaender, Ann F., Clifford Winston, e Kung Wang. 1983. "Costs, Technology, and Productivity in the U.S. Automobile Industry." *Bell Journal of Economics* 14 (1): 1–20.
- Gasques, José Garcia, Eliana Teles Bastos, Mirian Rumenos Piedade Bacchi, e Constanza Valdes. 2010. "Produtividade Total dos Fatores e Transformações da Agricultura Brasileira." In *A Agricultura Brasileira: Desempenho, Desafios e Perspectivas*, org. J. G. Gasques, J. E. R. Vieira Filho e Z. Navarro, 19–44. Brasília: IPEA.
- Gomes, Viktoria, Samuel de Abreu Pessôa, e Fernando A. Veloso. 2003. "[Evolução da Produtividade Total dos Fatores na Economia Brasileira: Uma Análise Comparativa](https://bibliotecadigital.fgv.br/dspace/handle/10438/916)." *Pesquisa e Planejamento Econômico* 33 (3): 389–434.
- Goolsbee, Austan, Steven Levitt, e Chad Syverson. 2020. [*Microeconomics*](https://www.macmillanlearning.com/college/us/product/Microeconomics/p/1319245420). 3ª ed. New York: Worth Publishers.
- Griliches, Zvi. 1963. "[The Sources of Measured Productivity Growth: United States Agriculture, 1940–60](https://doi.org/10.1086/258782)." *Journal of Political Economy* 71 (4): 331–346.
- Hsieh, Chang-Tai. 2002. "[What Explains the Industrial Revolution in East Asia? Evidence from the Factor Markets](https://doi.org/10.1257/00028280260136372)." *American Economic Review* 92 (3): 502–526.
- Karabarbounis, Loukas, e Brent Neiman. 2014. "[The Global Decline of the Labor Share](https://doi.org/10.1093/qje/qjt032)." *Quarterly Journal of Economics* 129 (1): 61–103.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 5.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 9.
- Oberfield, Ezra, e Devesh Raval. 2021. "[Micro Data and Macro Technology](https://doi.org/10.3982/ECTA12807)." *Econometrica* 89 (2): 703–732.
- Piketty, Thomas. 2014. [*O Capital no Século XXI*](https://www.intrinseca.com.br/livro/o-capital-no-seculo-xxi/). Trad. Monica Baumgarten de Bolle. Rio de Janeiro: Intrínseca.
- Solow, Robert M. 1957. "[Technical Change and the Aggregate Production Function](https://doi.org/10.2307/1926047)." *Review of Economics and Statistics* 39 (3): 312–320.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Cap. 1–4 (teoria da produção).
- Young, Alwyn. 1995. "[The Tyranny of Numbers: Confronting the Statistical Realities of the East Asian Growth Experience](https://doi.org/10.2307/2946695)." *Quarterly Journal of Economics* 110 (3): 641–680.
