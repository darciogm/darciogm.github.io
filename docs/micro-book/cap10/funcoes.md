# 10.5 O Cardápio Tecnológico: Quatro Receitas para uma Firma

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

!!! info "Prêmio Nobel — Kenneth J. Arrow (1972)"

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
