# Capítulo 9 — A Alquimia da Produção: Transformando Insumos em Produtos

## Introdução

A teoria da produção constitui o alicerce sobre o qual se ergue toda a análise da oferta em microeconomia. Enquanto os capítulos anteriores trataram das decisões dos consumidores — agentes que buscam maximizar utilidade —, voltamos agora a atenção para as **firmas**, agentes cuja razão de existir é transformar insumos (trabalho, capital, terra, materiais) em produtos e serviços. Compreender *como* essa transformação ocorre, quais são suas regularidades empíricas e como representá-la matematicamente é o objetivo central deste capítulo.

A função de produção é o instrumento analítico que sintetiza a tecnologia disponível para a firma. A partir dela, derivamos conceitos fundamentais — produtividade marginal, isoquantas, taxa marginal de substituição técnica (TMST), rendimentos de escala e elasticidade de substituição — que serão mobilizados nos capítulos seguintes para construir as curvas de custo e de oferta.

Ao longo do capítulo, examinaremos quatro famílias de funções de produção clássicas (linear, Leontief, Cobb-Douglas e CES), compararemos suas propriedades e discutiremos o papel do progresso técnico. Um box dedicado à revolução agrícola brasileira, impulsionada pela Embrapa, ilustra como a teoria encontra expressão concreta na transformação produtiva do país.

---

## 9.1 Produtividade Marginal

### A função de produção

!!! definition "Função de produção"
    A **função de produção** \(q = f(K, L)\) descreve a quantidade máxima de produto \(q\) que pode ser obtida a partir de quantidades de capital \(K\) e trabalho \(L\), dada a tecnologia disponível.

Quando um dos insumos é mantido fixo — por exemplo, o capital no curto prazo —, obtemos a **função de produção de curto prazo**:

\[
q = f(\bar{K}, L) \equiv \mathrm{TP}(L)
\]

onde \(\mathrm{TP}(L)\) é o produto total do trabalho.

### Produto marginal e produto médio

!!! definition "Produto marginal"
    O **produto marginal do trabalho** é a variação do produto total decorrente de uma unidade adicional de trabalho, mantido o capital constante:

    \[
    \mathrm{PMg}_L = \frac{\partial f(K, L)}{\partial L}
    \]

    Analogamente, o **produto marginal do capital** é:

    \[
    \mathrm{PMg}_K = \frac{\partial f(K, L)}{\partial K}
    \]

O **produto médio do trabalho** é definido como:

\[
\mathrm{PMe}_L = \frac{f(K, L)}{L}
\]

A relação entre produto marginal e produto médio é análoga àquela entre custo marginal e custo médio: quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é crescente; quando \(\mathrm{PMg}_L < \mathrm{PMe}_L\), o produto médio é decrescente; e quando \(\mathrm{PMg}_L = \mathrm{PMe}_L\), o produto médio atinge seu máximo.

### Lei dos rendimentos marginais decrescentes

!!! abstract "Lei dos rendimentos marginais decrescentes"
    Se um insumo variável é adicionado a um insumo fixo, a partir de certo ponto o produto marginal do insumo variável torna-se decrescente. Formalmente, existe \(L^*\) tal que para \(L > L^*\):

    \[
    \frac{\partial^2 f(\bar{K}, L)}{\partial L^2} < 0
    \]

É crucial observar que esta "lei" é uma regularidade empírica, não um resultado lógico necessário. Ela se aplica ao **curto prazo**, quando pelo menos um fator é fixo. Não deve ser confundida com rendimentos decrescentes de escala, que dizem respeito à variação simultânea de todos os insumos.

!!! example "Exemplo: Rendimentos marginais na cafeicultura mineira"
    Considere uma fazenda de café em Minas Gerais com área fixa de 50 hectares. Com poucos trabalhadores, cada contratação adicional eleva significativamente a colheita — há muita terra por trabalhador. À medida que se adicionam trabalhadores, porém, eles passam a competir pelas mesmas fileiras de café, e o ganho marginal de cada um diminui. Em termos formais, o produto marginal do trabalho \(\mathrm{PMg}_L\) decresce com \(L\) para \(\bar{K}\) (terra) fixo. Esse padrão é amplamente documentado na agricultura brasileira, onde a mecanização da colheita (que efetivamente aumenta \(\bar{K}\)) deslocou a curva de produto marginal para cima, mitigando o efeito dos rendimentos decrescentes.

---

## 9.2 Isoquantas e a Taxa Marginal de Substituição Técnica

<figure markdown="span">
  <iframe src="../graficos/cap09/isoquantas.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 9.1</strong> — Mapa de isoquantas interativo. Alterne entre Cobb-Douglas, Leontief, Linear e CES. Arraste o ponto sobre a isoquanta para visualizar a TMST em cada combinação de insumos.</figcaption>
</figure>

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
    \]

A derivação segue da diferenciação total da isoquanta \(f(K, L) = q_0\):

\[
f_K \, dK + f_L \, dL = 0 \implies -\frac{dK}{dL} = \frac{f_L}{f_K}
\]

A TMST decrescente reflete a dificuldade crescente de substituir um fator pelo outro à medida que a combinação se torna mais extrema — um fenômeno intuitivamente análogo à taxa marginal de substituição decrescente no consumo.

!!! example "Exercício Resolvido 9.1"
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

## 9.3 Rendimentos de Escala

<figure markdown="span">
  <iframe src="../graficos/cap09/rendimentos-escala.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 9.2</strong> — Rendimentos de escala. Compare o espaçamento das isoquantas sob rendimentos constantes (CRS), crescentes (IRS) e decrescentes (DRS). O slider \(t\) controla o fator de escala aplicado aos insumos.</figcaption>
</figure>

!!! definition "Rendimentos de escala"
    Considere a função de produção \(f(K, L)\) e um escalar \(t > 1\). Os **rendimentos de escala** classificam-se em:

    - **Constantes**: \(f(tK, tL) = t \cdot f(K, L)\) — a função é homogênea de grau 1.
    - **Crescentes**: \(f(tK, tL) > t \cdot f(K, L)\) — dobrar os insumos mais que dobra o produto.
    - **Decrescentes**: \(f(tK, tL) < t \cdot f(K, L)\) — dobrar os insumos menos que dobra o produto.

Uma medida local dos rendimentos de escala é dada pela **elasticidade de escala** \(e\):

\[
e = \frac{\partial \ln f(tK, tL)}{\partial \ln t}\bigg|_{t=1} = \frac{f_K \cdot K + f_L \cdot L}{f(K, L)} = \varepsilon_K + \varepsilon_L
\]

onde \(\varepsilon_K\) e \(\varepsilon_L\) são as elasticidades do produto em relação a cada insumo. Se \(e = 1\), rendimentos constantes; se \(e > 1\), crescentes; se \(e < 1\), decrescentes.

!!! example "Exemplo: Economias de escala na indústria automobilística brasileira"
    A indústria automobilística ilustra rendimentos crescentes de escala na faixa relevante de produção. Uma linha de montagem exige investimento fixo elevado em robôs, estamparia e pintura, independentemente do volume produzido. Estudos setoriais indicam que a escala mínima eficiente de uma planta de montagem situa-se entre 100 e 200 mil veículos/ano (Ebert, 2013) — abaixo desse patamar, o custo médio por veículo é significativamente mais alto. Essa lógica de rendimentos crescentes explica a concentração geográfica da produção automotiva brasileira no ABC paulista e em polos como Betim (MG) e Camaçari (BA), onde a escala viabiliza custos competitivos.

!!! example "Exercício Resolvido 9.2"
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

## 9.4 Elasticidade de Substituição

!!! definition "Elasticidade de substituição"
    A **elasticidade de substituição** \(\sigma\) mede a facilidade com que a firma pode substituir um insumo por outro ao longo de uma isoquanta. Formalmente:

    \[
    \sigma = \frac{d \ln(K/L)}{d \ln(\mathrm{TMST}_{L,K})} = \frac{d \ln(K/L)}{d \ln(f_L / f_K)}
    \]

Intuitivamente, \(\sigma\) capta a curvatura da isoquanta:

- Se \(\sigma \to \infty\), os insumos são **substitutos perfeitos** (isoquanta linear).
- Se \(\sigma \to 0\), os insumos são **complementares perfeitos** (isoquanta em L, Leontief).
- Se \(\sigma = 1\), temos o caso intermediário da **Cobb-Douglas**.

A elasticidade de substituição é um parâmetro central na análise da distribuição funcional da renda, pois determina como mudanças nos preços relativos dos fatores afetam as participações do capital e do trabalho na renda total.

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

---

## 9.5 Funções de Produção Clássicas

### Função de produção linear

A função linear captura situações em que os insumos realizam a mesma tarefa de forma intercambiável — por exemplo, uma linha de produção que pode ser operada por robôs ou por trabalhadores com resultado idêntico.

\[
q = aK + bL, \qquad a, b > 0
\]

Os insumos são **substitutos perfeitos**. A TMST é constante e igual a \(b/a\). A elasticidade de substituição é \(\sigma = \infty\). Os rendimentos de escala são constantes (a função é homogênea de grau 1).

### Função de produção de proporções fixas (Leontief)

No extremo oposto, a função Leontief descreve processos em que os insumos devem ser combinados em proporções rígidas — como receitas químicas ou postos de trabalho que exigem uma máquina por operador.

\[
q = \min\left\{\frac{K}{a}, \frac{L}{b}\right\}, \qquad a, b > 0
\]

Os insumos são **complementares perfeitos**: devem ser utilizados na proporção fixa \(K/L = a/b\). A TMST não é definida no vértice, e \(\sigma = 0\). Os rendimentos de escala são constantes.

### Função de produção Cobb-Douglas

A Cobb-Douglas é a forma funcional mais utilizada em trabalhos empíricos, pela combinação de flexibilidade e tratabilidade analítica. Foi proposta por Charles Cobb e Paul Douglas em 1928 para descrever a produção industrial nos EUA.

\[
q = A K^{\alpha} L^{\beta}, \qquad A > 0, \; \alpha, \beta > 0
\]

As propriedades dependem dos parâmetros: rendimentos constantes se \(\alpha + \beta = 1\), crescentes se \(\alpha + \beta > 1\), decrescentes se \(\alpha + \beta < 1\). A TMST é \((\beta/\alpha)(K/L)\) e \(\sigma = 1\).

### Função de produção CES (Elasticidade de Substituição Constante)

A função CES, introduzida por Arrow, Chenery, Minhas e Solow (1961), generaliza todas as formas anteriores ao permitir que a elasticidade de substituição assuma qualquer valor positivo.

\[
q = A\left[\delta K^{\rho} + (1 - \delta) L^{\rho}\right]^{\gamma/\rho}, \qquad \rho \leq 1, \; \rho \neq 0, \; 0 < \delta < 1
\]

onde:

- \(\sigma = \frac{1}{1 - \rho}\) é a elasticidade de substituição,
- \(\gamma\) é o parâmetro de rendimentos de escala (constantes se \(\gamma = 1\)),
- \(\delta\) é o parâmetro de distribuição.

A CES **generaliza** as três funções anteriores:

- \(\rho \to 0 \Rightarrow\) Cobb-Douglas \((\sigma = 1)\),
- \(\rho = 1 \Rightarrow\) Linear \((\sigma = \infty)\),
- \(\rho \to -\infty \Rightarrow\) Leontief \((\sigma = 0)\).

### Tabela comparativa das funções de produção

| Propriedade | Linear | Leontief | Cobb-Douglas | CES |
|:---|:---|:---|:---|:---|
| **Fórmula** | \(aK + bL\) | \(\min\{K/a, L/b\}\) | \(AK^{\alpha}L^{\beta}\) | \(A[\delta K^{\rho} + (1-\delta)L^{\rho}]^{\gamma/\rho}\) |
| **TMST** | \(b/a\) (constante) | Indefinida no vértice | \((\beta/\alpha)(K/L)\) | \(\frac{1-\delta}{\delta}\left(\frac{K}{L}\right)^{1-\rho}\) |
| **Elasticidade de substituição \(\sigma\)** | \(\infty\) | \(0\) | \(1\) | \(\frac{1}{1-\rho}\) |
| **Rendimentos de escala** | Constantes | Constantes | Depende de \(\alpha + \beta\) | Depende de \(\gamma\) |
| **Isoquantas** | Retas | Ângulos retos | Hipérboles convexas | Curvas convexas |
| **Casos especiais** | — | — | CES com \(\rho \to 0\) | Generaliza todas |

As quatro funções acima descrevem a tecnologia em um instante do tempo. Mas a tecnologia evolui — e a incorporação dessa evolução ao modelo é o tema da próxima seção.

---

## 9.6 Progresso Técnico

<figure markdown="span">
  <iframe src="../graficos/cap09/progresso-tecnico.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 9.3</strong> — Progresso técnico e deslocamento de isoquantas. Alterne entre Hicks-neutro, Harrod-neutro e Solow-neutro. Aumente \(A\) para observar a isoquanta se deslocando para dentro (menos insumos necessários para o mesmo produto).</figcaption>
</figure>

O progresso técnico desloca a função de produção, permitindo obter mais produto com os mesmos insumos. Formalmente, introduzimos o tempo \(t\) na função de produção. A formulação mais simples é:

\[
q = A(t) \cdot f(K, L)
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

Para funções de produção mais gerais (como a CES com \(\sigma \neq 1\)), as três classificações geram resultados distintos, e a escolha do tipo de progresso técnico tem implicações importantes para a dinâmica de crescimento e a distribuição funcional da renda.

### Medindo o progresso técnico: o resíduo de Solow

A taxa de crescimento do produto pode ser decomposta como:

\[
\frac{\dot{q}}{q} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + \beta \frac{\dot{L}}{L}
\]

O termo \(\dot{A}/A\) é a **produtividade total dos fatores** (PTF), frequentemente chamada de **resíduo de Solow**. Ele capta o crescimento do produto que não é explicado pelo crescimento dos insumos — isto é, o efeito puro do progresso técnico.

!!! example "Exercício Resolvido 9.3"
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

    **Interpretação econômica:** A predominância da PTF no crescimento é consistente com o padrão observado na agricultura brasileira pós-Embrapa (ver Box Brasil a seguir), onde a inovação tecnológica respondeu por parcela majoritária dos ganhos de produtividade. Como a função é Cobb-Douglas, o progresso técnico é simultaneamente neutro no sentido de Hicks, Harrod e Solow — as três classificações convergem (Seção 9.6).

---

## Box Brasil: A Revolução Tecnológica da Embrapa e a Produtividade Agrícola

!!! example "Box Brasil: Produtividade agrícola brasileira — a revolução da Embrapa"

    A agropecuária brasileira vivenciou, nas últimas cinco décadas, uma das mais impressionantes transformações produtivas do mundo. O protagonista dessa revolução foi a **Empresa Brasileira de Pesquisa Agropecuária (Embrapa)**, fundada em 1973, cuja atuação é um caso emblemático de progresso técnico aplicado à produção.

    **Soja: de cultura marginal a líder mundial.**
    Na safra 1976/77, o Brasil produzia cerca de 12 milhões de toneladas de soja em 7 milhões de hectares (produtividade de ~1.700 kg/ha). Na safra 2023/24, a produção superou **150 milhões de toneladas** em 46 milhões de hectares, com produtividade média de **3.300 kg/ha** (dados CONAB). A produtividade praticamente dobrou, enquanto a área expandiu-se aproximadamente 6,5 vezes — evidenciando que o crescimento do produto decorreu tanto da expansão extensiva quanto, crucialmente, do progresso técnico.

    **Milho: ganhos intensivos expressivos.**
    A produtividade do milho saltou de cerca de 1.600 kg/ha na década de 1970 para mais de **6.000 kg/ha** nas safras recentes, um aumento de quase quatro vezes. Boa parte desse ganho deve-se ao desenvolvimento do milho safrinha (segunda safra) e de cultivares adaptados ao Cerrado.

    **Cerrado: a fronteira tecnológica.**
    A correção da acidez dos solos do Cerrado (calagem), o desenvolvimento de cultivares tropicais e técnicas de plantio direto permitiram transformar uma região antes considerada improdutiva no maior polo agropecuário do país. A Embrapa estima que a tecnologia gerada pela pesquisa agropecuária foi responsável por cerca de **60% do crescimento da produtividade total dos fatores** na agricultura brasileira entre 1975 e 2020.

    **Interpretação microeconômica.**
    Em termos da teoria da produção, a atuação da Embrapa representa um deslocamento da função de produção agrícola — um aumento do parâmetro \(A(t)\). Trata-se predominantemente de progresso técnico **aumentador de terra** (análogo ao neutro de Solow aplicado ao fator terra), pois a inovação principal foi tornar produtivos solos antes imprestáveis, equivalendo a multiplicar o fator terra efetivo disponível. A elasticidade de substituição entre terra e outros insumos (fertilizantes, maquinário) aumentou, refletindo a maior flexibilidade tecnológica na produção agrícola moderna. Goolsbee, Levitt & Syverson (2020, Cap. 6) documentam padrões similares de adoção tecnológica e ganhos de produtividade na agricultura estadunidense.

---

## Exercícios

!!! tip "Exercícios do Capítulo 9"

**Exercício 9.1.**
Considere a função de produção \(q = 10K^{0,3}L^{0,7}\).

(a) Calcule os produtos marginais \(\mathrm{PMg}_K\) e \(\mathrm{PMg}_L\).

(b) Verifique que os produtos marginais são decrescentes (i.e., \(\partial^2 q / \partial K^2 < 0\) e \(\partial^2 q / \partial L^2 < 0\)).

(c) Determine a TMST e mostre que ela é decrescente ao longo de uma isoquanta.

(d) Classifique os rendimentos de escala.

(e) Confirme que \(\sigma = 1\).

---

**Exercício 9.2.**
Uma firma opera com a tecnologia CES:

\[
q = \left[0{,}5 K^{-1} + 0{,}5 L^{-1}\right]^{-1}
\]

(a) Identifique os parâmetros \(\delta\), \(\rho\) e \(\gamma\).

(b) Calcule a elasticidade de substituição \(\sigma\).

(c) Mostre que os rendimentos de escala são constantes.

(d) Compare a forma das isoquantas desta função com as da Cobb-Douglas.

---

**Exercício 9.3.**
Considere a função de produção Leontief \(q = \min\{2K, 3L\}\).

(a) Qual a proporção ótima de uso dos insumos?

(b) Se a firma deseja produzir \(q = 60\), quais as quantidades mínimas de \(K\) e \(L\)?

(c) Qual o efeito de dobrar apenas o trabalho, mantendo o capital constante? Interprete em termos de rendimentos marginais.

---

**Exercício 9.4.**
Uma função de produção é dada por \(q = K^{0,6} L^{0,8}\).

(a) Classifique os rendimentos de escala.

(b) Calcule a elasticidade de escala \(e\) e interprete.

(c) Se a firma dobrar ambos os insumos, por qual fator o produto aumentará?

(d) Explique por que rendimentos crescentes de escala podem existir mesmo com produtos marginais decrescentes em cada fator individualmente.

---

**Exercício 9.5.**
Suponha que a função de produção de uma firma é \(q = A(t) K^{0,4} L^{0,6}\), com \(A(t) = e^{0,02t}\).

(a) Qual a taxa de crescimento da PTF?

(b) Se \(K\) cresce a 3% ao ano e \(L\) cresce a 1% ao ano, qual a taxa de crescimento do produto?

(c) Decomponha o crescimento do produto nas contribuições do capital, do trabalho e da PTF.

(d) Este progresso técnico é neutro no sentido de Hicks, Harrod ou Solow? Justifique.

(e) Calcule a produtividade total dos fatores em \(t = 0\) e \(t = 10\). Se em \(t = 0\) a firma utiliza \(K = 100\) e \(L = 200\), qual o produto em \(t = 0\) e em \(t = 10\) (supondo que os insumos cresçam às taxas indicadas)?

---

## Leituras Recomendadas

- Nicholson, W. & Snyder, C. *Microeconomic Theory: Basic Principles and Extensions*, Cap. 9.
- Varian, H. *Microeconomic Analysis*, Cap. 1-4 (teoria da produção).
- Mas-Colell, A., Whinston, M. & Green, J. *Microeconomic Theory*, Cap. 5.
