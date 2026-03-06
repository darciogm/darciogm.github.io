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

---

## 9.2 Isoquantas e a Taxa Marginal de Substituição Técnica

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

---

## 9.3 Rendimentos de Escala

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

---

## 9.5 Funções de Produção Clássicas

### Função de produção linear

\[
q = aK + bL, \qquad a, b > 0
\]

Os insumos são **substitutos perfeitos**. A TMST é constante e igual a \(b/a\). A elasticidade de substituição é \(\sigma = \infty\). Os rendimentos de escala são constantes (a função é homogênea de grau 1).

### Função de produção de proporções fixas (Leontief)

\[
q = \min\left\{\frac{K}{a}, \frac{L}{b}\right\}, \qquad a, b > 0
\]

Os insumos são **complementares perfeitos**: devem ser utilizados na proporção fixa \(K/L = a/b\). A TMST não é definida no vértice, e \(\sigma = 0\). Rendimentos de escala constantes.

### Função de produção Cobb-Douglas

\[
q = A K^{\alpha} L^{\beta}, \qquad A > 0, \; \alpha, \beta > 0
\]

As propriedades dependem dos parâmetros: rendimentos constantes se \(\alpha + \beta = 1\), crescentes se \(\alpha + \beta > 1\), decrescentes se \(\alpha + \beta < 1\). A TMST é \((\beta/\alpha)(K/L)\) e \(\sigma = 1\).

### Função de produção CES (Elasticidade de Substituição Constante)

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

---

## 9.6 Progresso Técnico

O progresso técnico desloca a função de produção, permitindo obter mais produto com os mesmos insumos. Formalmente, introduzimos o tempo \(t\) na função de produção:

\[
q = A(t) \cdot f(K, L)
\]

quando o progresso é **neutro de Hicks**: ele aumenta o produto na mesma proporção para qualquer combinação de insumos, sem alterar a TMST para uma dada razão \(K/L\).

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
    Em termos da teoria da produção, a atuação da Embrapa representa um deslocamento da função de produção agrícola — um aumento do parâmetro \(A(t)\). Trata-se predominantemente de progresso técnico **aumentador de terra** (análogo ao neutro de Solow aplicado ao fator terra), pois a inovação principal foi tornar produtivos solos antes imprestáveis, equivalendo a multiplicar o fator terra efetivo disponível. A elasticidade de substituição entre terra e outros insumos (fertilizantes, maquinário) aumentou, refletindo a maior flexibilidade tecnológica na produção agrícola moderna.

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
