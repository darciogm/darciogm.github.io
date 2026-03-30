# 14.8–14.10 Modelo Matemático de Equilíbrio Geral

## 14.8 Das Caixas às Equações: Modelo Matemático de Troca {#148}

A Caixa de Edgeworth é uma ferramenta visual maravilhosa — mas funciona apenas para dois consumidores e dois bens. Para uma economia com \(I\) consumidores e \(n\) bens, precisamos de algo mais robusto: um sistema de equações. A passagem da geometria para a álgebra é o salto que separa a intuição da prova — e é aqui que a história fica realmente interessante.[^dead-parrot-existencia]

### Funções de excesso de demanda

Para cada bem \(k\), a **função de excesso de demanda** agrega a diferença entre o que todos os consumidores querem e o que está disponível:

\[
Z^k(\mathbf{p}) = \sum_{i=1}^{I} x_i^k(\mathbf{p}) - \bar{x}_k, \qquad k = 1, \ldots, n
\label{eq:14.10} \tag{14.10} \]

onde \(\bar{x}_k = \sum_{i} \omega_i^k\) é a dotação total do bem \(k\). O equilíbrio geral competitivo é simplesmente um vetor de preços \(\mathbf{p}^*\) tal que \(Z^k(\mathbf{p}^*) = 0\) para todo \(k\) — todos os mercados se equilibram simultaneamente.

!!! definition "Função de excesso de demanda"
    A **função de excesso de demanda agregada** para o bem \(k\) é \(Z^k(\mathbf{p}) = \sum_{i=1}^{I} [x_i^k(\mathbf{p}) - \omega_i^k]\). Um equilíbrio walrasiano é um vetor \(\mathbf{p}^* \gg 0\) tal que \(Z^k(\mathbf{p}^*) \leq 0\) para todo \(k\), com igualdade se \(p_k^* > 0\).

### Propriedades das funções de excesso de demanda

As funções de excesso de demanda herdam propriedades das escolhas individuais dos consumidores:

1. **Homogeneidade de grau zero:** \(Z^k(t\mathbf{p}) = Z^k(\mathbf{p})\) para todo \(t > 0\). Apenas preços relativos importam — resultado direto da homogeneidade das funções de demanda individuais. Isso permite normalizar os preços ao simplex \(S = \{\mathbf{p} \in \mathbb{R}^n_+ : \sum_k p_k = 1\}\).

2. **Continuidade:** Se as preferências são contínuas, estritamente convexas e localmente não saciadas, e se as dotações são estritamente positivas (\(\omega_i \gg 0\)), então \(Z^k(\mathbf{p})\) é contínua em \(\mathbf{p}\) para \(\mathbf{p} \gg 0\).

3. **Lei de Walras:** Para todo vetor de preços \(\mathbf{p}\):

\[
\sum_{k=1}^{n} p_k Z^k(\mathbf{p}) = 0
\label{eq:14.11} \tag{14.11} \]

A Lei de Walras é uma identidade — vale para *qualquer* vetor de preços, não apenas no equilíbrio — e decorre do fato de que cada consumidor esgota sua renda (restrição orçamentária com igualdade, garantida pela não saciedade local).

!!! idea "Intuição Econômica"
    **Em uma frase:** A Lei de Walras diz que o valor monetário total dos excessos de demanda é sempre zero.

    **Pense assim:** Se a economia está "querendo mais pizza do que existe" (excesso de demanda de pizza), necessariamente está "querendo menos refrigerante do que existe" (excesso de oferta de refrigerante), e os valores se compensam exatamente. É como um balanço contábil: todo débito tem um crédito correspondente.

    **Implicação poderosa:** Se \(n-1\) mercados estão em equilíbrio, o \(n\)-ésimo mercado *automaticamente* também está. Não é coincidência — é contabilidade.

!!! proof "Demonstração da Lei de Walras"
    Para cada consumidor \(i\), a restrição orçamentária com igualdade (garantida pela não saciedade local) implica:

    \[
    \sum_{k=1}^{n} p_k x_i^k(\mathbf{p}) = \sum_{k=1}^{n} p_k \omega_i^k \quad \Longleftrightarrow \quad \sum_{k=1}^{n} p_k [x_i^k(\mathbf{p}) - \omega_i^k] = 0
    \]

    Somando sobre todos os consumidores \(i = 1, \ldots, I\):

    \[
    \sum_{k=1}^{n} p_k \underbrace{\sum_{i=1}^{I} [x_i^k(\mathbf{p}) - \omega_i^k]}_{= Z^k(\mathbf{p})} = 0 \quad \Longrightarrow \quad \sum_{k=1}^{n} p_k Z^k(\mathbf{p}) = 0 \quad \blacksquare
    \]

### O Teorema de Sonnenschein-Mantel-Debreu

Uma pergunta natural é: as funções de excesso de demanda agregadas carregam informação sobre as preferências individuais dos consumidores? A resposta, surpreendente e um tanto perturbadora, é *não*. O **Teorema de Sonnenschein-Mantel-Debreu** (Sonnenschein, 1973; Mantel, 1974; Debreu, 1974) estabelece que *qualquer* função contínua, homogênea de grau zero e que satisfaça a Lei de Walras pode ser racionalizada como a função de excesso de demanda agregada de alguma economia com consumidores racionais.

Em outras palavras: observando apenas o comportamento agregado dos mercados, não é possível deduzir nada sobre as preferências individuais — a agregação destrói informação. Esse resultado tem implicações profundas: significa que, sem restrições adicionais, não podemos garantir unicidade nem estabilidade do equilíbrio geral. A função de excesso de demanda pode ter praticamente qualquer formato, o que permite múltiplos zeros (múltiplos equilíbrios).

??? exercicio-resolvido "Exercício Resolvido 14.6 — Verificação da Lei de Walras"
    **Enunciado:** Considere uma economia de troca com 2 consumidores e 2 bens. As preferências são Cobb-Douglas: \(U_A = x_1^{1/3} x_2^{2/3}\) e \(U_B = x_1^{2/3} x_2^{1/3}\). As dotações são \(\boldsymbol{\omega}_A = (4, 2)\) e \(\boldsymbol{\omega}_B = (2, 4)\). Normalize \(p_2 = 1\) e seja \(p = p_1\).

    **(a)** Derive as funções de excesso de demanda \(Z^1(p)\) e \(Z^2(p)\).

    **(b)** Verifique que a Lei de Walras \(p \cdot Z^1(p) + Z^2(p) = 0\) vale para todo \(p > 0\).

    **(c)** Encontre o preço de equilíbrio \(p^*\) e as alocações de equilíbrio.

    ---

    **Solução:**

    **(a)** As demandas Cobb-Douglas são:

    - Consumidor A (\(\alpha = 1/3\)): renda \(I_A = 4p + 2\).

    \[
    x_1^A = \frac{I_A}{3p} = \frac{4p + 2}{3p}, \qquad x_2^A = \frac{2I_A}{3} = \frac{2(4p + 2)}{3}
    \]

    - Consumidor B (\(\alpha = 2/3\)): renda \(I_B = 2p + 4\).

    \[
    x_1^B = \frac{2I_B}{3p} = \frac{2(2p + 4)}{3p}, \qquad x_2^B = \frac{I_B}{3} = \frac{2p + 4}{3}
    \]

    Excesso de demanda do bem 1:

    \[
    Z^1(p) = x_1^A + x_1^B - 6 = \frac{4p + 2}{3p} + \frac{4p + 8}{3p} - 6 = \frac{8p + 10}{3p} - 6 = \frac{8p + 10 - 18p}{3p} = \frac{10 - 10p}{3p}
    \]

    Excesso de demanda do bem 2:

    \[
    Z^2(p) = x_2^A + x_2^B - 6 = \frac{8p + 4}{3} + \frac{2p + 4}{3} - 6 = \frac{10p + 8}{3} - 6 = \frac{10p + 8 - 18}{3} = \frac{10p - 10}{3}
    \]

    **(b)** Verificando a Lei de Walras:

    \[
    p \cdot Z^1(p) + 1 \cdot Z^2(p) = p \cdot \frac{10 - 10p}{3p} + \frac{10p - 10}{3} = \frac{10 - 10p}{3} + \frac{10p - 10}{3} = 0 \quad \checkmark
    \]

    Vale para *todo* \(p > 0\), como previsto — é uma identidade, não uma equação.

    **(c)** Equilíbrio: \(Z^1(p^*) = 0 \Rightarrow 10 - 10p^* = 0 \Rightarrow p^* = 1\).

    Alocações: \(x_1^A = 2, x_2^A = 4; \quad x_1^B = 4, x_2^B = 2\).

    Pela Lei de Walras, \(Z^2(1) = 0\) automaticamente. \(\checkmark\)

**WebR 14.3 — Lei de Walras: a contabilidade que nunca falha.** O código calcula as funções de excesso de demanda \(Z^1(p)\) e \(Z^2(p)\) para o ER 14.6 e plota ambas no mesmo gráfico. Observe que \(Z^1\) e \(Z^2\) cruzam o zero no mesmo preço — consequência direta da Lei de Walras. Mude os parâmetros `aA` e `aB` (expoentes Cobb-Douglas) e observe como o preço de equilíbrio se desloca, mas a Lei de Walras continua valendo em *todos* os preços.

<iframe src="/micro-book/graficos/cap14/webr-lei-walras.html" title="WebR 14.3 — Funções de excesso de demanda e Lei de Walras" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 14.3 — Lei de Walras: a contabilidade que nunca falha.** Funções de excesso de demanda e verificação da Lei de Walras. Altere os expoentes Cobb-Douglas para explorar como o equilíbrio se desloca.
</div>

---

## 14.9 O Castelo Existe? Prova de Existência do Equilíbrio {#149}

Temos um sistema de equações — mas será que ele tem solução? A pergunta pode parecer acadêmica, mas é absolutamente fundamental. Se o sistema de equações do equilíbrio geral não tiver solução, todo o edifício teórico desmorona: os Teoremas do Bem-Estar perdem o objeto, e a teoria dos preços se torna uma ficção elegante sem referente no mundo. A busca pela prova de existência foi, como disse a nota de rodapé do capítulo, uma verdadeira *Quest for the Holy Grail* da teoria econômica.

### O Teorema do Ponto Fixo de Brouwer

!!! tip "Ferramentas do Cap. 2"
    Esta seção usa [teoremas de ponto fixo e conjuntos convexos](../cap02/complementos.md). Se precisar relembrar, volte lá — leva 10 minutos.

A ferramenta matemática que permite provar a existência do equilíbrio é o **Teorema do Ponto Fixo de Brouwer** (1911): toda função contínua de um conjunto convexo e compacto nele mesmo possui pelo menos um ponto fixo.

!!! theorem "Teorema do Ponto Fixo de Brouwer"
    Seja \(S \subset \mathbb{R}^n\) um conjunto convexo, compacto e não vazio, e \(f: S \to S\) uma função contínua. Então existe \(\mathbf{x}^* \in S\) tal que \(f(\mathbf{x}^*) = \mathbf{x}^*\).

A intuição é surpreendentemente simples em uma dimensão: se \(f: [0,1] \to [0,1]\) é contínua, então o gráfico de \(f\) necessariamente cruza a diagonal \(y = x\) em pelo menos um ponto — pelo Teorema do Valor Intermediário. Em dimensões superiores, a prova é mais sofisticada (usa o Lema de Sperner ou técnicas de topologia algébrica), mas a intuição permanece: uma função contínua que "mexe" pontos dentro de uma caixa fechada não pode evitar deixar pelo menos um ponto parado.

!!! idea "Intuição Econômica"
    **A analogia do café com leite.** Pegue uma xícara de café e mexa com uma colher. Cada molécula de café se move — mas Brouwer garante que *pelo menos uma molécula* está exatamente na mesma posição onde começou. Não importa quão vigorosamente você mexa: a continuidade do movimento dentro de um espaço fechado força a existência de um ponto fixo. Arrow e Debreu fizeram a mesma coisa com preços: "mexeram" os preços de todos os bens usando a função de ajuste walrasiano e mostraram que pelo menos uma configuração de preços permanece parada — e essa é o equilíbrio.

### Estratégia da prova de existência

A prova de existência do equilíbrio segue uma estratégia engenhosa: construímos uma função de ajuste de preços que "corrige" os desequilíbrios e mostramos que seu ponto fixo é o equilíbrio.

**Passo 1 — Normalização.** Pela homogeneidade de grau zero, podemos restringir os preços ao simplex:

\[
S = \left\{\mathbf{p} \in \mathbb{R}^n_+ : \sum_{k=1}^{n} p_k = 1\right\}
\label{eq:14.12} \tag{14.12} \]

O simplex é convexo e compacto — exatamente o que Brouwer precisa.

**Passo 2 — Função de ajuste de preços.** Para cada bem \(k\), defina:

\[
g_k(\mathbf{p}) = \frac{p_k + \max\{0,\, Z^k(\mathbf{p})\}}{1 + \sum_{j=1}^{n} \max\{0,\, Z^j(\mathbf{p})\}}
\label{eq:14.13} \tag{14.13} \]

A lógica é intuitiva: se há excesso de demanda do bem \(k\) (\(Z^k > 0\)), o numerador de \(g_k\) é maior que \(p_k\), o que eleva o preço de \(k\); se há excesso de oferta (\(Z^k \leq 0\)), o numerador permanece \(p_k\), e o preço relativo de \(k\) cai (pois outros preços estão subindo). É a formalização do tâtonnement walrasiano — o "leilão" imaginário de Walras em que um leiloeiro anuncia preços, coleta demandas e ajusta os preços na direção do excesso de demanda.

**Passo 3 — Verificação das condições de Brouwer.**

- \(g: S \to S\) — o denominador garante que \(\sum_k g_k = 1\) e cada \(g_k \geq 0\).
- \(g\) é contínua — composição de funções contínuas (\(Z^k\) é contínua por hipótese, \(\max\) é contínua).

**Passo 4 — Aplicação do Teorema de Brouwer.** Existe \(\mathbf{p}^* \in S\) tal que \(g(\mathbf{p}^*) = \mathbf{p}^*\). Isso implica:

\[
p_k^* = \frac{p_k^* + \max\{0,\, Z^k(\mathbf{p}^*)\}}{1 + \sum_{j} \max\{0,\, Z^j(\mathbf{p}^*)\}} \quad \forall\, k
\]

Multiplicando ambos os lados por \(1 + \sum_j \max\{0, Z^j\}\):

\[
p_k^*(1 + \Sigma) = p_k^* + \max\{0, Z^k\} \quad \Rightarrow \quad p_k^* \Sigma = \max\{0, Z^k\}
\]

onde \(\Sigma = \sum_j \max\{0, Z^j(\mathbf{p}^*)\}\). Multiplicando por \(Z^k\) e somando:

\[
\Sigma \sum_k p_k^* Z^k = \sum_k Z^k \max\{0, Z^k\}
\]

Pela Lei de Walras, o lado esquerdo é zero. O lado direito é \(\sum_k [Z^k]^+ \cdot Z^k \geq \sum_k (\max\{0, Z^k\})^2 \geq 0\). Como é igual a zero, cada termo é zero, logo \(\max\{0, Z^k(\mathbf{p}^*)\} = 0\) para todo \(k\), ou seja, \(Z^k(\mathbf{p}^*) \leq 0\). Para bens com \(p_k^* > 0\), a equação \(p_k^* \Sigma = 0\) com \(\Sigma = 0\) é satisfeita. E se \(Z^k < 0\) com \(p_k^* > 0\), a Lei de Walras e a não saciedade garantem que isso não ocorre.

Logo, \(\mathbf{p}^*\) é um equilíbrio walrasiano. \(\blacksquare\)

!!! theorem "Existência do Equilíbrio Walrasiano (Arrow-Debreu, 1954)"
    Considere uma economia de troca com \(I\) consumidores cujas preferências são contínuas, estritamente convexas e localmente não saciadas, e cujas dotações são estritamente positivas (\(\boldsymbol{\omega}_i \gg 0\)). Então existe pelo menos um equilíbrio walrasiano.

    **Hipóteses-chave:** (i) preferências contínuas e estritamente convexas (garantem continuidade e unicidade das demandas individuais); (ii) não saciedade local (garante a Lei de Walras); (iii) dotações estritamente positivas (garante que cada consumidor pode comprar algo de cada bem, evitando "armadilhas" na fronteira do simplex).

!!! box-mundo "Prêmio Nobel e o Equilíbrio Geral"
    **Kenneth Arrow** (Nobel 1972) e **Gérard Debreu** (Nobel 1983) formalizaram a teoria do equilíbrio geral competitivo no artigo seminal "Existence of an Equilibrium for a Competitive Economy" (*Econometrica*, 1954). Arrow, um dos economistas mais versáteis do século XX, contribuiu também para escolha social, economia da saúde e teoria da informação. Debreu, matemático francês radicado nos EUA, trouxe um rigor axiomático sem precedentes à teoria econômica em seu livro *Theory of Value* (1959). Juntos, eles transformaram a intuição centenária de Walras — de que todos os mercados podem se equilibrar simultaneamente — em um teorema com hipóteses explícitas e demonstração rigorosa. Como escreveu Debreu, o objetivo não era provar que o mundo real é eficiente, mas sim "identificar as condições precisas sob as quais a metáfora da mão invisível é justificada — e, por implicação, entender quando ela falha."

??? exercicio-resolvido "Exercício Resolvido 14.7 — Equilíbrio com preferências CES"
    **Enunciado:** Considere uma economia de troca com 2 consumidores e 2 bens. Ambos têm preferências CES: \(U_i = (a_i (x_1^i)^\rho + (1-a_i)(x_2^i)^\rho)^{1/\rho}\), com \(\rho = -1\) (elasticidade de substituição \(\sigma = 1/(1-\rho) = 1/2\)). Parâmetros: \(a_A = 0{,}7\), \(a_B = 0{,}3\). Dotações: \(\boldsymbol{\omega}_A = (6, 2)\), \(\boldsymbol{\omega}_B = (2, 6)\).

    **(a)** Derive as demandas individuais.

    **(b)** Encontre o equilíbrio walrasiano numericamente.

    ---

    **Solução:**

    **(a)** Com CES e \(\rho = -1\), a função de utilidade indireta gera demandas:

    \[
    x_1^i = \frac{a_i^{\sigma} p_1^{-\sigma}}{a_i^{\sigma} p_1^{1-\sigma} + (1-a_i)^{\sigma} p_2^{1-\sigma}} \cdot I_i
    \]

    Com \(\sigma = 1/2\): \(x_1^i = \frac{\sqrt{a_i}/\sqrt{p_1}}{\sqrt{a_i}\sqrt{p_1} + \sqrt{1-a_i}\sqrt{p_2}} \cdot I_i\).

    Normalizando \(p_2 = 1\), seja \(p = p_1\):

    \[
    x_1^A = \frac{\sqrt{0{,}7}/\sqrt{p}}{\sqrt{0{,}7}\sqrt{p} + \sqrt{0{,}3}} \cdot (6p + 2), \qquad x_1^B = \frac{\sqrt{0{,}3}/\sqrt{p}}{\sqrt{0{,}3}\sqrt{p} + \sqrt{0{,}7}} \cdot (2p + 6)
    \]

    **(b)** A equação de equilíbrio \(x_1^A(p) + x_1^B(p) = 8\) não tem solução analítica fechada para CES genérica. Resolvendo numericamente (ver WebR 14.4), obtém-se \(p^* \approx 0{,}846\).

    A alocação de equilíbrio é aproximadamente: \(x_1^A \approx 5{,}28\), \(x_2^A \approx 3{,}53\); \(x_1^B \approx 2{,}72\), \(x_2^B \approx 4{,}47\). Ambos os consumidores melhoram em relação às dotações iniciais — ganhos de troca realizados pelo mecanismo de preços.

**WebR 14.4 — Existência do equilíbrio: vendo Brouwer em ação.** O código resolve numericamente o equilíbrio para o ER 14.7 com preferências CES. O gráfico mostra a função \(g(p)\) do algoritmo de ajuste de preços e a diagonal — o ponto fixo (onde \(g(p) = p\)) é o equilíbrio. Altere \(\rho\) para ver como a elasticidade de substituição afeta o preço de equilíbrio: quando \(\rho \to 0\) (Cobb-Douglas), o equilíbrio converge ao caso analítico; quando \(\rho \to -\infty\) (Leontief), os preços se ajustam mais drasticamente.

<iframe src="/micro-book/graficos/cap14/webr-existencia.html" title="WebR 14.4 — Existência do equilíbrio com preferências CES" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 14.4 — Existência do equilíbrio: vendo Brouwer em ação.** Resolução numérica do equilíbrio com preferências CES. Altere \(\rho\) para explorar diferentes elasticidades de substituição.
</div>

!!! box-mundo "A Reunificação Alemã como Experimento de Equilíbrio Geral"
    A reunificação da Alemanha em 1990 oferece um caso notável de "choque de equilíbrio geral". Duas economias com preços relativos, estruturas produtivas e dotações de fatores radicalmente diferentes foram subitamente integradas. A conversão do marco oriental a uma taxa artificialmente elevada (1:1 para salários) criou desemprego massivo no Leste, pois a produtividade não justificava os novos salários. A migração de trabalhadores do Leste para o Oeste pressionou salários e mercados imobiliários ocidentais. Os subsídios de transição (Solidaritätszuschlag) redistribuíram renda entre regiões — uma aplicação forçada do Segundo Teorema do Bem-Estar. Akerlof et al. (1991, "East Germany in from the Cold: The Economic Aftermath of Currency Union", *Brookings Papers on Economic Activity*) documentaram que a análise de equilíbrio parcial seria completamente inadequada para entender as consequências da reunificação — os efeitos cruzados entre mercados de trabalho, bens, capital e câmbio eram o fenômeno central.

---

## 14.10 Quando Alguém Precisa Fabricar: Produção e Troca {#1410}

Até aqui, analisamos uma economia de troca pura — os bens existem como dotações e os consumidores apenas os redistribuem. Mas na maioria das economias, os bens precisam ser *produzidos*. A extensão do modelo para incluir firmas é conceitualmente direta, embora adicione novas condições de equilíbrio.

### Economia com produção

Considere agora uma economia com \(I\) consumidores, \(J\) firmas e \(n\) bens. Cada firma \(j\) tem um conjunto de produção \(Y_j \subset \mathbb{R}^n\) e escolhe um plano de produção \(\mathbf{y}_j \in Y_j\) para maximizar lucro:

\[
\max_{\mathbf{y}_j \in Y_j} \mathbf{p} \cdot \mathbf{y}_j
\]

O lucro da firma \(j\) é distribuído aos consumidores que a possuem. Cada consumidor \(i\) detém uma fração \(\theta_{ij} \geq 0\) da firma \(j\), com \(\sum_i \theta_{ij} = 1\). A renda do consumidor \(i\) é:

\[
I_i(\mathbf{p}) = \mathbf{p} \cdot \boldsymbol{\omega}_i + \sum_{j=1}^{J} \theta_{ij} \, \pi_j(\mathbf{p})
\label{eq:14.14} \tag{14.14} \]

onde \(\pi_j(\mathbf{p}) = \mathbf{p} \cdot \mathbf{y}_j^*(\mathbf{p})\) é o lucro maximizado da firma \(j\).

!!! definition "Equilíbrio walrasiano com produção"
    Um **equilíbrio walrasiano com produção** é um vetor de preços \(\mathbf{p}^*\), alocações de consumo \((\mathbf{x}_1^*, \ldots, \mathbf{x}_I^*)\) e planos de produção \((\mathbf{y}_1^*, \ldots, \mathbf{y}_J^*)\) tais que:

    1. Cada consumidor \(i\) maximiza utilidade sujeito à sua restrição orçamentária (incluindo renda de lucros);
    2. Cada firma \(j\) maximiza lucro dado \(\mathbf{p}^*\);
    3. Todos os mercados se equilibram:

    \[
    \sum_{i=1}^{I} x_i^{k*} = \sum_{i=1}^{I} \omega_i^k + \sum_{j=1}^{J} y_j^{k*}, \qquad \forall\, k
    \label{eq:14.15} \tag{14.15} \]

A Lei de Walras continua valendo na economia com produção — agora a identidade orçamentária incorpora também os lucros das firmas, que se cancelam na agregação. Os Teoremas do Bem-Estar se estendem naturalmente: o Primeiro Teorema vale com a hipótese adicional de que os conjuntos de produção são convexos (retornos não crescentes), e o Segundo Teorema requer convexidade estrita dos conjuntos de produção para a existência de preços de suporte.

A extensão para produção completa a arquitetura do equilíbrio geral: temos consumidores que demandam, firmas que ofertam, dotações que definem o ponto de partida, e preços que coordenam tudo. O próximo passo natural é operacionalizar essa teoria — transformar o modelo abstrato em algo que um computador possa resolver e que um formulador de políticas possa usar. Esse é o tema da [Seção 14.11](cge.md).

[^dead-parrot-existencia]: A história da prova de existência tem algo do sketch do Dead Parrot: durante oitenta anos, os economistas insistiam que o equilíbrio "estava apenas descansando" — até que Arrow e Debreu finalmente provaram que o papagaio estava, de fato, vivo. Ou mais precisamente: provaram que, sob certas condições, *existe* um papagaio vivo. Se ele fala, canta ou está pregado ao poleiro é outra questão (unicidade e estabilidade são problemas em aberto).
