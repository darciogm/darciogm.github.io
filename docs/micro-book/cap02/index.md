# Capítulo 2 — A Caixa de Ferramentas Matemática do Economista

## Introdução

A microeconomia moderna é uma disciplina intrinsecamente matemática. Os modelos apresentados no Capítulo 1 — maximização de utilidade, maximização de lucro, equilíbrio de mercado — requerem um aparato formal para serem formulados com precisão e para que suas implicações possam ser derivadas rigorosamente. Este capítulo apresenta as ferramentas matemáticas essenciais para o estudo da microeconomia em nível avançado.

O objetivo não é substituir um curso de matemática, mas fornecer uma referência autocontida dos resultados e técnicas que serão utilizados ao longo do livro. O leitor familiarizado com cálculo multivariado e álgebra linear pode percorrer este capítulo rapidamente, concentrando-se nas aplicações econômicas e nos resultados menos habituais, como o teorema do envelope e as condições de Kuhn-Tucker.

---

## 2.1 Maximização de funções de uma variável

### Condições de primeira ordem

Seja \(f: \mathbb{R} \to \mathbb{R}\) uma função duas vezes diferenciável. Se \(x^*\) é um máximo interior de \(f\), então:

\[
f'(x^*) = 0 \quad \text{(condição necessária de primeira ordem — CPO)}
\]

A CPO identifica **pontos críticos** (máximos, mínimos ou pontos de inflexão), mas não os distingue entre si.

### Condições de segunda ordem

Para garantir que o ponto crítico é um máximo (e não um mínimo), exige-se:

\[
f''(x^*) < 0 \quad \text{(condição suficiente de segunda ordem — CSO)}
\]

Se \(f''(x^*) > 0\), o ponto é um mínimo local. Se \(f''(x^*) = 0\), o teste é inconclusivo.

!!! example "Aplicação: receita marginal decrescente"
    Considere uma firma monopolista com função de demanda inversa \(P(q) = 100 - 2q\) e custo total \(CT(q) = 10q + q^2\). O lucro é:

    \[
    \pi(q) = P(q) \cdot q - CT(q) = (100 - 2q)q - (10q + q^2) = 90q - 3q^2
    \]

    CPO: \(\pi'(q) = 90 - 6q = 0 \implies q^* = 15\).

    CSO: \(\pi''(q) = -6 < 0\). Confirmado: \(q^* = 15\) é um máximo.

    Lucro máximo: \(\pi(15) = 90(15) - 3(225) = 1350 - 675 = 675\).

---

## 2.2 Funções de várias variáveis

### Derivadas parciais

Seja \(f: \mathbb{R}^n \to \mathbb{R}\). A **derivada parcial** de \(f\) em relação a \(x_i\), denotada \(\frac{\partial f}{\partial x_i}\) ou \(f_i\), mede a taxa de variação de \(f\) quando apenas \(x_i\) varia, mantendo todas as demais variáveis constantes — é o equivalente matemático do *ceteris paribus*.

### Diferencial total

A **diferencial total** de \(f(x_1, x_2, \ldots, x_n)\) é:

\[
df = \sum_{i=1}^{n} \frac{\partial f}{\partial x_i} \, dx_i = f_1 \, dx_1 + f_2 \, dx_2 + \cdots + f_n \, dx_n
\]

A diferencial total expressa a variação aproximada de \(f\) quando todas as variáveis mudam simultaneamente por quantidades infinitesimais.

### Teorema da função implícita

!!! definition "Teorema da Função Implícita"
    Seja \(F(x, y) = 0\) uma relação implícita entre \(x\) e \(y\), com \(F\) continuamente diferenciável e \(F_y \neq 0\) em um ponto \((x_0, y_0)\). Então, em uma vizinhança de \((x_0, y_0)\), existe uma função \(y = g(x)\) tal que \(F(x, g(x)) = 0\), e:

    \[
    \frac{dy}{dx} = -\frac{F_x}{F_y}
    \]

Este resultado é fundamental em estática comparativa: permite calcular como uma variável endógena responde a mudanças em uma variável exógena quando a relação entre elas é dada implicitamente por uma condição de equilíbrio.

**Aplicação.** Considere a condição de equilíbrio \(D(P, Y) - S(P) = 0\), onde \(P\) é o preço e \(Y\) é a renda. Pelo teorema da função implícita:

\[
\frac{dP}{dY} = -\frac{\partial D / \partial Y}{\partial D / \partial P - \partial S / \partial P} = -\frac{D_Y}{D_P - S_P}
\]

Se \(D_Y > 0\) (bem normal) e \(D_P - S_P < 0\) (inclinação da demanda menor que a da oferta), então \(\frac{dP}{dY} > 0\): um aumento na renda eleva o preço de equilíbrio.

!!! example "Box Brasil — Elasticidades de demanda: o cálculo a serviço da política pública"

    A **elasticidade-preço da demanda** — definida como \(\varepsilon = \frac{\partial Q}{\partial P} \cdot \frac{P}{Q}\) — é uma aplicação direta de derivadas parciais ao problema do consumidor. No Brasil, estimativas empíricas dessas elasticidades fundamentam decisões de política tributária, regulação de tarifas e política comercial.

    **Alguns valores estimados para o Brasil:**

    | Bem/Serviço | Elasticidade-preço | Fonte |
    |---|---|---|
    | Gasolina | \(-0{,}20\) a \(-0{,}33\) (curto prazo) | Alves & Bueno (2003); Burnquist & Bacchi (2002) |
    | Energia elétrica residencial | \(-0{,}06\) a \(-0{,}26\) (curto/longo prazo) | Schmidt & Lima (2004); Mattos & Lima (2005) |
    | Cigarros | \(-0{,}13\) a \(-0{,}48\) (curto/longo prazo) | Iglesias et al. (2007) |

    A demanda inelástica por gasolina (\(|\varepsilon| < 1\)) explica por que aumentos nos impostos sobre combustíveis geram receita significativa com perda de bem-estar relativamente baixa. A elasticidade também é crucial para a estática comparativa discutida nesta seção: pelo teorema da função implícita, a magnitude do ajuste do preço de equilíbrio a um choque de oferta depende diretamente das elasticidades de oferta e demanda.

---

## 2.3 Maximização com várias variáveis

Para maximizar \(f(x_1, x_2, \ldots, x_n)\) sem restrições, as condições necessárias de primeira ordem são:

\[
\frac{\partial f}{\partial x_i} = 0, \quad i = 1, 2, \ldots, n
\]

Isso gera um sistema de \(n\) equações com \(n\) incógnitas.

As **condições de segunda ordem** envolvem a **matriz hessiana**:

\[
H = \begin{pmatrix}
f_{11} & f_{12} & \cdots & f_{1n} \\
f_{21} & f_{22} & \cdots & f_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
f_{n1} & f_{n2} & \cdots & f_{nn}
\end{pmatrix}
\]

onde \(f_{ij} = \frac{\partial^2 f}{\partial x_i \partial x_j}\).

!!! definition "Condição Suficiente de Segunda Ordem (caso irrestrito)"
    O ponto crítico \(\mathbf{x}^*\) é um **máximo local** se a matriz hessiana \(H(\mathbf{x}^*)\) for **negativa definida**, ou seja, se todos os seus autovalores forem negativos. Equivalentemente, os menores principais líderes devem alternar em sinal: \(f_{11} < 0\), \(f_{11}f_{22} - f_{12}^2 > 0\), etc.

---

## 2.4 Teorema do envelope

O teorema do envelope é um dos resultados mais úteis e elegantes da microeconomia. Ele permite calcular como o valor ótimo de uma função objetivo muda quando um parâmetro varia, sem necessidade de recalcular a solução ótima.

!!! abstract "Teorema do Envelope (caso irrestrito)"
    Seja \(f(x, a)\) uma função de \(x\) (variável de escolha) e \(a\) (parâmetro), e seja \(x^*(a)\) a solução do problema \(\max_x f(x, a)\). Defina a **função valor** como:

    \[
    V(a) = f(x^*(a), a)
    \]

    Então:

    \[
    \frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial direta de \(f\) em relação a \(a\), avaliada na solução ótima — ignorando o efeito indireto via \(x^*(a)\).

**Demonstração.**

Pela regra da cadeia:

\[
\frac{dV}{da} = \frac{\partial f}{\partial x}\bigg|_{x^*(a)} \cdot \frac{dx^*}{da} + \frac{\partial f}{\partial a}\bigg|_{x^*(a)}
\]

Mas, pela condição de primeira ordem, \(\frac{\partial f}{\partial x}\big|_{x^*(a)} = 0\). Logo, o primeiro termo desaparece e:

\[
\boxed{\frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}}
\]

\(\blacksquare\)

!!! note "Intuição econômica"
    O resultado é intuitivo: no ótimo, o agente já ajustou \(x\) da melhor forma possível. Uma pequena mudança em \(x\) a partir do ótimo tem efeito de segunda ordem sobre \(f\) (pelo fato de que a derivada é zero no ótimo). Portanto, o único efeito de primeira ordem de uma mudança em \(a\) é o efeito **direto**.

---

## 2.5 Maximização com restrições: o método de Lagrange

### Formulação do problema

O problema canônico da microeconomia é:

\[
\max_{x_1, \ldots, x_n} f(x_1, \ldots, x_n) \quad \text{sujeito a} \quad g(x_1, \ldots, x_n) = c
\]

onde \(f\) é a função objetivo e \(g(\mathbf{x}) = c\) é a restrição.

### O Lagrangeano

Define-se a **função de Lagrange** (ou Lagrangeano):

\[
\mathcal{L}(x_1, \ldots, x_n, \lambda) = f(x_1, \ldots, x_n) + \lambda \left[c - g(x_1, \ldots, x_n)\right]
\]

onde \(\lambda\) é o **multiplicador de Lagrange**.

### Condições de primeira ordem

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial f}{\partial x_i} - \lambda \frac{\partial g}{\partial x_i} = 0, \quad i = 1, \ldots, n
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = c - g(x_1, \ldots, x_n) = 0
\]

Das primeiras \(n\) condições, obtém-se:

\[
\frac{f_i}{g_i} = \lambda, \quad \forall \, i
\]

Isso implica que as **razões das derivadas parciais** da função objetivo e da restrição são iguais para todas as variáveis — um resultado com interpretação econômica profunda.

### Interpretação do multiplicador de Lagrange

!!! definition "Interpretação de \(\lambda\)"
    O multiplicador de Lagrange \(\lambda\) mede o **valor marginal da restrição**: é a taxa à qual o valor ótimo da função objetivo aumenta quando a constante da restrição é relaxada marginalmente.

    \[
    \lambda^* = \frac{dV}{dc}
    \]

    onde \(V(c) = f(\mathbf{x}^*(c))\) é a função valor.

**Exemplo: maximização de utilidade.** No problema do consumidor:

\[
\max_{x_1, x_2} U(x_1, x_2) \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = m
\]

O multiplicador \(\lambda\) é a **utilidade marginal da renda**: mede o aumento na utilidade máxima quando a renda \(m\) aumenta em uma unidade monetária. As CPOs implicam:

\[
\frac{UMg_1}{p_1} = \frac{UMg_2}{p_2} = \lambda
\]

Ou seja, no ótimo, a utilidade marginal por unidade monetária gasta é igual para todos os bens — o famoso princípio da **equimarginalidade**.

---

## 2.6 Teorema do envelope na maximização restrita

!!! abstract "Teorema do Envelope (caso restrito)"
    Considere o problema \(\max_{\mathbf{x}} f(\mathbf{x}, a)\) sujeito a \(g(\mathbf{x}, a) = c\), e defina a função valor \(V(a) = f(\mathbf{x}^*(a), a)\). Então:

    \[
    \frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*(a), \lambda^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial do **Lagrangeano** (não apenas de \(f\)) em relação ao parâmetro, avaliada na solução ótima.

**Demonstração completa.**

Defina a função valor:

\[
V(a) = f(\mathbf{x}^*(a), a)
\]

O Lagrangeano é \(\mathcal{L} = f(\mathbf{x}, a) + \lambda[c - g(\mathbf{x}, a)]\). Como a restrição é satisfeita no ótimo, \(g(\mathbf{x}^*(a), a) = c\), temos:

\[
V(a) = f(\mathbf{x}^*(a), a) = \mathcal{L}(\mathbf{x}^*(a), \lambda^*(a), a)
\]

Diferenciando \(V(a)\) em relação a \(a\):

\[
\frac{dV}{da} = \sum_{i=1}^{n} \frac{\partial f}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial f}{\partial a}
\]

Pelas CPOs, \(\frac{\partial f}{\partial x_i} = \lambda^* \frac{\partial g}{\partial x_i}\). Substituindo:

\[
\frac{dV}{da} = \lambda^* \sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial f}{\partial a}
\]

Diferenciando a restrição \(g(\mathbf{x}^*(a), a) = c\) em relação a \(a\):

\[
\sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial g}{\partial a} = 0
\]

Portanto:

\[
\sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} = -\frac{\partial g}{\partial a}
\]

Substituindo:

\[
\frac{dV}{da} = -\lambda^* \frac{\partial g}{\partial a} + \frac{\partial f}{\partial a} = \frac{\partial f}{\partial a} - \lambda^* \frac{\partial g}{\partial a} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*, \lambda^*}
\]

\[
\boxed{\frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*(a), \lambda^*(a)}}
\]

\(\blacksquare\)

---

## 2.7 Restrições de desigualdade: condições de Kuhn-Tucker

Em muitos problemas econômicos, as restrições são **desigualdades** (por exemplo, \(x_i \geq 0\), ou restrições orçamentárias do tipo \(\leq\)):

\[
\max_{\mathbf{x}} f(\mathbf{x}) \quad \text{s.a.} \quad g_j(\mathbf{x}) \leq c_j, \quad j = 1, \ldots, m; \quad x_i \geq 0, \quad i = 1, \ldots, n
\]

### Condições de Kuhn-Tucker (KKT)

O Lagrangeano generalizado é:

\[
\mathcal{L} = f(\mathbf{x}) + \sum_{j=1}^{m} \lambda_j \left[c_j - g_j(\mathbf{x})\right]
\]

As condições KKT são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} \leq 0, \quad x_i \geq 0, \quad x_i \cdot \frac{\partial \mathcal{L}}{\partial x_i} = 0 \quad \forall \, i
\]

\[
\lambda_j \geq 0, \quad c_j - g_j(\mathbf{x}) \geq 0, \quad \lambda_j \left[c_j - g_j(\mathbf{x})\right] = 0 \quad \forall \, j
\]

!!! definition "Condições de folga complementar"
    As condições \(x_i \cdot \frac{\partial \mathcal{L}}{\partial x_i} = 0\) e \(\lambda_j [c_j - g_j(\mathbf{x})] = 0\) são chamadas de **condições de folga complementar** (*complementary slackness*). Elas expressam que:

    - Se \(x_i > 0\), então \(\frac{\partial \mathcal{L}}{\partial x_i} = 0\) (a CPO usual vale).
    - Se a restrição \(j\) não é ativa (\(g_j < c_j\)), então \(\lambda_j = 0\) (a restrição é irrelevante e seu multiplicador é zero).

!!! tip "Interpretação econômica"
    As condições KKT generalizam o método de Lagrange para situações em que o agente pode estar em uma "solução de canto". Por exemplo, um consumidor pode decidir não consumir nenhuma quantidade de um bem (solução \(x_i = 0\)), caso a utilidade marginal por unidade monetária desse bem seja inferior à dos demais bens, mesmo ao nível zero de consumo.

!!! example "Box Brasil — O teto de gastos e a otimização sob restrições de desigualdade"

    A **Emenda Constitucional nº 95/2016** (posteriormente substituída pelo novo arcabouço fiscal da EC 126/2022) impôs um **teto para os gastos primários** da União: a despesa primária total de um exercício não poderia exceder a despesa do exercício anterior corrigida pela inflação (IPCA).

    **Formalização como problema de Kuhn-Tucker.** O governo maximiza uma função de bem-estar social \(W(g_1, g_2, \ldots, g_n)\) — onde \(g_i\) é o gasto na área \(i\) (saúde, educação, defesa, etc.) — sujeito à restrição de desigualdade:

    \[
    \sum_{i=1}^{n} g_i \leq \bar{G}
    \]

    onde \(\bar{G}\) é o teto fiscal. As condições de Kuhn-Tucker (Seção 2.7) implicam que, se o teto é ativo (\(\sum g_i = \bar{G}\)), o multiplicador \(\lambda > 0\) mede o **custo social marginal** da restrição fiscal — quanto de bem-estar a sociedade sacrifica por não poder gastar uma unidade adicional. Se o teto não é ativo, \(\lambda = 0\) e a restrição fiscal é irrelevante.

    **Folga complementar na prática.** Na maioria dos exercícios fiscais desde 2017, o teto foi uma restrição ativa (vinculante), com \(\lambda > 0\). A transição para o novo arcabouço fiscal em 2023 modificou os parâmetros da restrição, mas preservou a lógica de otimização sob restrição de desigualdade. As pressões por ampliação do teto revelam, na prática, que o multiplicador \(\lambda\) é percebido como significativamente positivo — o custo social da restrição é elevado.

---

## 2.8 Condições de segunda ordem e curvatura

### Concavidade e convexidade

!!! definition "Concavidade"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **côncava** se, para todo \(\mathbf{x}, \mathbf{y} \in \mathbb{R}^n\) e todo \(t \in [0,1]\):

    \[
    f(t\mathbf{x} + (1-t)\mathbf{y}) \geq t \, f(\mathbf{x}) + (1-t) \, f(\mathbf{y})
    \]

    Se a desigualdade é estrita para \(\mathbf{x} \neq \mathbf{y}\) e \(t \in (0,1)\), a função é **estritamente côncava**.

Para funções duas vezes diferenciáveis, a concavidade equivale à condição de que a **hessiana seja negativa semidefinida** em todos os pontos.

Uma função côncava tem a propriedade crucial de que **todo ponto crítico é um máximo global** — o que simplifica enormemente os problemas de otimização.

### Quase-concavidade

!!! definition "Quase-concavidade"
    Uma função \(f\) é **quase-côncava** se seus **conjuntos de nível superior** \(\{x : f(x) \geq k\}\) são convexos para todo \(k\).

A quase-concavidade é mais fraca que a concavidade, mas é suficiente para garantir que curvas de indiferença têm o formato convexo usual (abauladas em direção à origem). A maioria das funções utilidade usadas em microeconomia é quase-côncava, embora nem todas sejam côncavas.

!!! note "Condições de segunda ordem em problemas restritos"
    Para problemas de maximização com restrições de igualdade, as condições de segunda ordem envolvem o **hessiano orlado** (*bordered Hessian*), que incorpora as derivadas da restrição. A quase-concavidade da função objetivo é suficiente para garantir que as CSO são satisfeitas em problemas restritos.

---

## 2.9 Funções homogêneas e Teorema de Euler

!!! definition "Função Homogênea"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **homogênea de grau \(k\)** se, para todo escalar \(t > 0\):

    \[
    f(t x_1, t x_2, \ldots, t x_n) = t^k \, f(x_1, x_2, \ldots, x_n)
    \]

Exemplos em economia:

- Uma função de produção com **retornos constantes de escala** é homogênea de grau 1.
- Funções de demanda são homogêneas de grau 0 em preços e renda (ausência de ilusão monetária).

!!! abstract "Teorema de Euler"
    Se \(f\) é homogênea de grau \(k\) e diferenciável, então:

    \[
    \sum_{i=1}^{n} x_i \frac{\partial f}{\partial x_i} = k \cdot f(x_1, \ldots, x_n)
    \]

**Aplicação.** Para uma função de produção \(F(K, L)\) homogênea de grau 1 (retornos constantes de escala):

\[
K \cdot \frac{\partial F}{\partial K} + L \cdot \frac{\partial F}{\partial L} = F(K, L)
\]

Se cada fator recebe sua produtividade marginal (\(r = F_K\) e \(w = F_L\)), então \(rK + wL = F(K,L)\) — o produto é exatamente esgotado pela remuneração dos fatores. Este resultado é conhecido como o **problema da exaustão do produto** (Nicholson & Snyder, 2017).

---

## 2.10 Integração

Em microeconomia, a integração aparece em diversos contextos:

- **Excedente do consumidor**: \(EC = \int_{0}^{Q^*} D^{-1}(q) \, dq - P^* Q^*\)
- **Excedente do produtor**: \(EP = P^* Q^* - \int_{0}^{Q^*} CMg(q) \, dq\)
- **Valor esperado**: \(E[X] = \int_{-\infty}^{\infty} x \, f(x) \, dx\)

O **Teorema Fundamental do Cálculo** conecta integração e diferenciação:

\[
\frac{d}{dx} \int_{a}^{x} f(t) \, dt = f(x)
\]

Em análise de bem-estar, a integração permite calcular a **variação compensatória** e a **variação equivalente**, medidas exatas de mudança no bem-estar do consumidor.

---

## 2.11 Otimização dinâmica: uma breve introdução

Muitos problemas econômicos envolvem decisões ao longo do tempo:

- Quanto consumir hoje versus poupar para amanhã?
- Quanto investir em capital em cada período?
- Qual a trajetória ótima de extração de um recurso natural?

### Otimização intertemporal discreta

O problema canônico em tempo discreto é:

\[
\max \sum_{t=0}^{T} \beta^t \, u(c_t) \quad \text{s.a.} \quad a_{t+1} = (1+r)(a_t - c_t)
\]

onde \(\beta \in (0,1)\) é o fator de desconto, \(c_t\) é o consumo, \(a_t\) é a riqueza e \(r\) é a taxa de juros.

A **equação de Euler** resultante é:

\[
u'(c_t) = \beta(1+r) \, u'(c_{t+1})
\]

que expressa a condição de que o agente é indiferente entre consumir uma unidade hoje e poupá-la para consumir \((1+r)\) unidades amanhã, descontadas pelo fator \(\beta\).

### Otimização contínua: cálculo de variações e controle ótimo

Em tempo contínuo, problemas de otimização dinâmica são resolvidos pelo **cálculo de variações** ou pela **teoria do controle ótimo** (princípio do máximo de Pontryagin). Esses métodos são particularmente usados em teoria do crescimento, economia dos recursos naturais e finanças.

---

## 2.12 Estatística matemática: valor esperado e variância

A incerteza é onipresente em decisões econômicas. As ferramentas básicas de probabilidade são essenciais para a análise de escolha sob risco.

### Valor esperado

\[
E[X] = \sum_{i} x_i \, p_i \quad \text{(discreto)} \qquad E[X] = \int_{-\infty}^{\infty} x \, f(x) \, dx \quad \text{(contínuo)}
\]

### Variância

\[
\text{Var}(X) = E\left[(X - E[X])^2\right] = E[X^2] - (E[X])^2
\]

### Utilidade esperada

No modelo de **von Neumann-Morgenstern**, o agente avesso ao risco maximiza a utilidade esperada:

\[
E[U(W)] = \sum_{i} p_i \, U(W_i)
\]

A **aversão ao risco** corresponde à concavidade da função utilidade (\(U'' < 0\)), e pode ser medida pelo coeficiente de Arrow-Pratt:

\[
r_A(W) = -\frac{U''(W)}{U'(W)}
\]

!!! tip "Conexão com a concavidade"
    A desigualdade de Jensen afirma que, para funções côncavas, \(E[U(W)] \leq U(E[W])\). Isso significa que um agente avesso ao risco prefere a renda esperada com certeza à loteria em si — ele estaria disposto a pagar um prêmio para eliminar o risco.

---

## Gráficos interativos

### Otimização de função de uma variável

<iframe src="../graficos/cap02/otimizacao-1var.html" width="100%" height="880" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.1</strong> — Arraste o ponto sobre a curva para explorar \(f'(x)\): a reta tangente mostra a inclinação em tempo real. No máximo, \(f'(x^*)=0\) e \(f''(x^*)<0\). Use os sliders para alterar curvatura e posição do pico.
</p>

### Otimização com restrição: Lagrangeano

<iframe src="../graficos/cap02/lagrangeano.html" width="100%" height="920" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.2</strong> — Maximização de \(f(x,y)=xy\) sujeita a \(x+y=c\). O ótimo ocorre na tangência entre a curva de nível e a restrição, onde \(\nabla f = \lambda \nabla g\). Varie \(c\) e observe os gradientes paralelos.
</p>

### Teorema do envelope

<iframe src="../graficos/cap02/envelope.html" width="100%" height="880" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.3</strong> — Família de curvas \(f(x,\alpha)\) e a envoltória \(V(\alpha)=\max_x f(x,\alpha)\). O teorema do envelope mostra que \(dV/d\alpha = \partial f/\partial \alpha|_{x^*}\) — basta a derivada parcial direta, sem recalcular o ótimo.
</p>

---

## Tabela-resumo: condições de otimização

| Tipo de Problema | Condição de Primeira Ordem | Condição de Segunda Ordem | Observação |
|---|---|---|---|
| **Sem restrição** (1 variável) | \(f'(x^*) = 0\) | \(f''(x^*) < 0\) para máx. | Teste da derivada segunda |
| **Sem restrição** (\(n\) variáveis) | \(\nabla f(\mathbf{x}^*) = \mathbf{0}\) | \(H(\mathbf{x}^*)\) negativa definida para máx. | \(H\) é a hessiana |
| **Restrição de igualdade** | \(\nabla f = \lambda \nabla g\); \(g(\mathbf{x}) = c\) | Hessiano orlado com menores alternando em sinal | \(\lambda\) = valor sombra da restrição |
| **Restrição de desigualdade** | Condições KKT: folga complementar | Mesmas do caso com igualdade nas restrições ativas | Restrições inativas: \(\lambda_j = 0\) |

---

## Box Brasil: A matemática por trás do IPCA

!!! example "Box Brasil — O IPCA e as funções de agregação de Laspeyres"

    O **Índice Nacional de Preços ao Consumidor Amplo (IPCA)**, calculado mensalmente pelo IBGE, é o indicador oficial de inflação no Brasil e meta do regime de metas de inflação adotado desde 1999. Por trás de sua aparente simplicidade — "quanto subiram os preços?" — há um arcabouço matemático preciso baseado em **funções de agregação de preços**.

    **A fórmula de Laspeyres.** O IPCA utiliza uma variação da fórmula de **Laspeyres**, que mede a variação no custo de uma **cesta fixa de bens** entre dois períodos. Para \(n\) bens, o índice de Laspeyres é:

    \[
    I_L = \frac{\sum_{i=1}^{n} p_i^t \, q_i^0}{\sum_{i=1}^{n} p_i^0 \, q_i^0} = \sum_{i=1}^{n} w_i^0 \cdot \frac{p_i^t}{p_i^0}
    \]

    onde \(p_i^t\) é o preço do bem \(i\) no período \(t\), \(q_i^0\) é a quantidade consumida no período-base e \(w_i^0 = \frac{p_i^0 q_i^0}{\sum_j p_j^0 q_j^0}\) é o peso do bem \(i\) na cesta de consumo do período-base.

    **Estrutura de pesos.** O IPCA utiliza pesos derivados da **Pesquisa de Orçamentos Familiares (POF)** do IBGE, que levanta os padrões de consumo das famílias brasileiras com renda de 1 a 40 salários mínimos. Os principais grupos e seus pesos aproximados (base POF 2017-2018) são: Alimentação e bebidas (19%), Habitação (15%), Transportes (21%), Saúde (14%), Educação (6%), entre outros.

    **O viés de substituição.** Uma propriedade matemática importante: o índice de Laspeyres tende a **superestimar** a inflação verdadeira porque mantém a cesta fixa. Quando o preço de um bem sobe, o consumidor tende a substituí-lo por alternativas mais baratas — mas a fórmula de Laspeyres não captura essa substituição. Em termos formais, se o consumidor maximiza utilidade, o verdadeiro índice de custo de vida (baseado na função dispêndio) é menor ou igual ao índice de Laspeyres. Este resultado é uma aplicação direta da teoria do consumidor: a cesta do período-base é uma cesta viável (mas geralmente não ótima) aos preços do período corrente.

    **Agregação geográfica e temporal.** Na prática, o IBGE calcula o IPCA em 16 regiões metropolitanas e usa médias ponderadas pela população para obter o índice nacional. Os preços são coletados ao longo de cada mês, exigindo técnicas de agregação temporal. A fórmula final combina índices elementares (nível de produto) em índices superiores (subitens, itens, subgrupos, grupos) mediante uma estrutura hierárquica de agregação.

    O IPCA é, portanto, um exemplo concreto de como funções de agregação, teoria dos números-índice e conceitos de otimização do consumidor se combinam para produzir uma estatística que afeta diretamente a vida de milhões de brasileiros — desde a meta de juros fixada pelo Copom até o reajuste de contratos de aluguel e tarifas públicas.

---

## Exercícios Resolvidos

!!! example "Exercício Resolvido 2.1 — Maximização de utilidade via Lagrange"

    **Enunciado:** Um consumidor tem função utilidade \(U(x_1, x_2) = x_1^{1/2} x_2^{1/2}\) e enfrenta preços \(p_1 = 4\) e \(p_2 = 1\), com renda \(m = 100\). Encontre a cesta ótima, o multiplicador de Lagrange e interprete o resultado.

    **Dados:** \(U = x_1^{1/2} x_2^{1/2}\), \(p_1 = 4\), \(p_2 = 1\), \(m = 100\).

    **Resolução:**

    **Passo 1 — Montar o Lagrangeano**

    \[
    \mathcal{L} = x_1^{1/2} x_2^{1/2} + \lambda(100 - 4x_1 - x_2)
    \]

    **Passo 2 — Condições de primeira ordem**

    \[
    \frac{\partial \mathcal{L}}{\partial x_1} = \frac{1}{2} x_1^{-1/2} x_2^{1/2} - 4\lambda = 0 \quad \Rightarrow \quad \frac{x_2^{1/2}}{2x_1^{1/2}} = 4\lambda
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial x_2} = \frac{1}{2} x_1^{1/2} x_2^{-1/2} - \lambda = 0 \quad \Rightarrow \quad \frac{x_1^{1/2}}{2x_2^{1/2}} = \lambda
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial \lambda} = 100 - 4x_1 - x_2 = 0
    \]

    **Passo 3 — Resolver o sistema**

    Dividindo a primeira CPO pela segunda: \(\frac{x_2}{x_1} = 4\), logo \(x_2 = 4x_1\).

    Substituindo na restrição: \(4x_1 + 4x_1 = 100 \implies x_1^* = 12{,}5\) e \(x_2^* = 50\).

    Da segunda CPO: \(\lambda^* = \frac{(12{,}5)^{1/2}}{2(50)^{1/2}} = \frac{\sqrt{12{,}5}}{2\sqrt{50}} = \frac{1}{4\sqrt{4}} = \frac{1}{8} = 0{,}125\).

    **Resultado:** Cesta ótima: \((x_1^*, x_2^*) = (12{,}5;\ 50)\). Multiplicador: \(\lambda^* = 0{,}125\).

    **Interpretação econômica:** O consumidor gasta metade da renda em cada bem: \(4 \times 12{,}5 = 50\) e \(1 \times 50 = 50\). Isso é uma propriedade geral da Cobb-Douglas com expoentes iguais. O multiplicador \(\lambda^* = 0{,}125\) significa que um real adicional de renda aumentaria a utilidade máxima em 0,125 unidades — é a utilidade marginal da renda. No contexto do Bolsa Família, por exemplo, \(\lambda\) mede o ganho de bem-estar por real transferido a uma família beneficiária.

!!! example "Exercício Resolvido 2.2 — Teorema do envelope aplicado ao monopolista"

    **Enunciado:** Uma firma monopolista enfrenta demanda \(P = a - Q\) e tem custo \(CT = cQ\), com \(a > c > 0\). Use o teorema do envelope para determinar como o lucro máximo varia quando o custo marginal \(c\) aumenta.

    **Dados:** \(P = a - Q\), \(CT = cQ\), parâmetros \(a, c > 0\).

    **Resolução:**

    **Passo 1 — Encontrar a solução ótima**

    Lucro: \(\pi(Q, c) = (a - Q)Q - cQ = aQ - Q^2 - cQ = (a - c)Q - Q^2\).

    CPO: \(\frac{\partial \pi}{\partial Q} = a - c - 2Q = 0 \implies Q^*(c) = \frac{a - c}{2}\).

    Lucro máximo: \(\pi^*(c) = \frac{(a - c)^2}{4}\).

    **Passo 2 — Aplicar o teorema do envelope**

    Pelo teorema do envelope (Seção 2.4):

    \[
    \frac{d\pi^*}{dc} = \frac{\partial \pi}{\partial c}\bigg|_{Q = Q^*} = -Q^* = -\frac{a - c}{2}
    \]

    **Passo 3 — Verificar por diferenciação direta**

    \[
    \frac{d\pi^*}{dc} = \frac{d}{dc}\left[\frac{(a-c)^2}{4}\right] = \frac{2(a-c)(-1)}{4} = -\frac{a-c}{2} \quad \checkmark
    \]

    **Resultado:** \(\frac{d\pi^*}{dc} = -\frac{a-c}{2} < 0\).

    **Interpretação econômica:** Um aumento unitário no custo marginal reduz o lucro máximo em \(\frac{a-c}{2}\), que é exatamente a quantidade ótima produzida. A elegância do teorema do envelope está em dispensar o cálculo de como \(Q^*\) se ajusta: basta a derivada parcial direta do lucro em relação a \(c\), avaliada no ótimo. No Brasil, quando a Petrobras eleva o preço dos derivados (aumento de \(c\) para distribuidoras), o teorema do envelope permite estimar rapidamente o impacto sobre o lucro do setor sem recalcular toda a cadeia de ajustes de quantidade.

!!! example "Exercício Resolvido 2.3 — Condições de Kuhn-Tucker com solução de canto"

    **Enunciado:** Um consumidor com utilidade \(U(x_1, x_2) = 2\sqrt{x_1} + x_2\) enfrenta preços \(p_1 = 4\), \(p_2 = 1\) e renda \(m\). Encontre a cesta ótima para \(m = 20\) e \(m = 0{,}5\), identificando soluções interiores e de canto.

    **Dados:** \(U = 2x_1^{1/2} + x_2\), \(p_1 = 4\), \(p_2 = 1\).

    **Resolução:**

    **Passo 1 — Montar o Lagrangeano e condições KKT**

    \[
    \mathcal{L} = 2\sqrt{x_1} + x_2 + \lambda(m - 4x_1 - x_2)
    \]

    Condições KKT:

    - \(\frac{\partial \mathcal{L}}{\partial x_1} = x_1^{-1/2} - 4\lambda \leq 0\), com igualdade se \(x_1 > 0\)
    - \(\frac{\partial \mathcal{L}}{\partial x_2} = 1 - \lambda \leq 0\), com igualdade se \(x_2 > 0\)
    - \(4x_1 + x_2 \leq m\), com igualdade se \(\lambda > 0\)

    **Passo 2 — Caso \(m = 20\) (solução interior)**

    Se \(x_2 > 0\): da segunda condição, \(\lambda = 1\). Da primeira: \(x_1^{-1/2} = 4 \implies x_1^* = 1/16\). Gasto em \(x_1\): \(4 \times 1/16 = 1/4\). Sobra: \(x_2^* = 20 - 1/4 = 19{,}75\).

    Verificação: \(x_1 > 0\), \(x_2 > 0\), restrição ativa. Todas as condições KKT satisfeitas.

    **Passo 3 — Caso \(m = 0{,}5\) (solução de canto)**

    Se \(x_2 > 0\), então \(\lambda = 1\) e \(x_1 = 1/16\), exigindo gasto de \(4 \times 1/16 = 0{,}25\). Sobraria \(x_2 = 0{,}25\). Mas verifiquemos: com \(m = 0{,}5\), o consumidor pode alocar tudo em \(x_1\): \(x_1 = 0{,}5/4 = 0{,}125\), obtendo \(U = 2\sqrt{0{,}125} \approx 0{,}707\). Ou alocar como na solução interior: \(U = 2\sqrt{1/16} + 0{,}25 = 0{,}5 + 0{,}25 = 0{,}75\). A solução interior é melhor.

    De fato, com \(m = 0{,}5\), a solução interior \(x_1 = 1/16\), \(x_2 = 0{,}25\) é viável e satisfaz as KKT. A solução de canto (\(x_2 = 0\)) só ocorreria se a renda fosse menor que \(0{,}25\), pois o gasto mínimo em \(x_1\) na solução interior é \(1/4\).

    **Resultado:** Para \(m = 20\): \((x_1^*, x_2^*) = (1/16,\ 19{,}75)\). Para \(m = 0{,}5\): \((x_1^*, x_2^*) = (1/16,\ 0{,}25)\). A solução de canto (\(x_2 = 0\)) ocorre para \(m < 0{,}25\).

    **Interpretação econômica:** A utilidade quase-linear implica que a demanda por \(x_1\) é independente da renda (quando a solução é interior): \(x_1^* = 1/16\) para qualquer \(m \geq 0{,}25\). Todo aumento de renda é absorvido por \(x_2\). Isso é uma propriedade importante: com preferências quase-lineares, não há efeito-renda sobre o bem \(x_1\), simplificando a análise de bem-estar — o excedente do consumidor é uma medida exata da variação de utilidade.

---

## Exercícios

**Exercício 2.1.** Considere a função \(f(x) = 12x - 3x^2 + 2x^3 - \frac{1}{4}x^4\).

a) Encontre todos os pontos críticos.

b) Classifique cada ponto crítico como máximo local, mínimo local ou ponto de inflexão usando a condição de segunda ordem.

c) Identifique o máximo global no intervalo \([0, 4]\).

**Exercício 2.2.** Um consumidor tem função utilidade \(U(x_1, x_2) = x_1^{1/3} x_2^{2/3}\) e enfrenta preços \(p_1\) e \(p_2\) com renda \(m\).

a) Formule o Lagrangeano do problema de maximização de utilidade.

b) Derive as condições de primeira ordem.

c) Obtenha as funções de demanda marshallianas \(x_1^*(p_1, p_2, m)\) e \(x_2^*(p_1, p_2, m)\).

d) Verifique que as funções de demanda são homogêneas de grau 0 em \((p_1, p_2, m)\).

e) Interprete economicamente o multiplicador de Lagrange \(\lambda^*\).

**Exercício 2.3.** Considere a função de produção Cobb-Douglas \(Q = A K^\alpha L^\beta\) com \(\alpha, \beta > 0\).

a) Mostre que \(Q\) é homogênea de grau \(\alpha + \beta\).

b) Verifique o Teorema de Euler para esta função.

c) Sob que condição a função apresenta retornos constantes de escala? E retornos decrescentes?

d) Calcule a taxa marginal de substituição técnica (\(TMST\)) entre capital e trabalho e interprete economicamente.

**Exercício 2.4 (Teorema do Envelope).** Uma firma monopolista enfrenta a demanda \(P = a - bQ\) e tem custo total \(CT = cQ\), onde \(a\), \(b\) e \(c\) são parâmetros positivos com \(a > c\).

a) Encontre a quantidade ótima \(Q^*(a, b, c)\) e o lucro máximo \(\pi^*(a, b, c)\).

b) Use o teorema do envelope para calcular \(\frac{\partial \pi^*}{\partial a}\), \(\frac{\partial \pi^*}{\partial b}\) e \(\frac{\partial \pi^*}{\partial c}\).

c) Verifique os resultados do item (b) diferenciando diretamente a expressão do lucro máximo.

d) Interprete economicamente o sinal de cada derivada.

**Exercício 2.5 (Kuhn-Tucker).** Um consumidor tem utilidade \(U(x_1, x_2) = \ln(x_1) + x_2\) (preferências quase-lineares), preços \(p_1 = 2\) e \(p_2 = 1\), e renda \(m\).

a) Formule o problema com restrição de não-negatividade e restrição orçamentária de desigualdade.

b) Escreva as condições de Kuhn-Tucker.

c) Para \(m = 10\), encontre a solução ótima e verifique todas as condições KKT.

d) Para \(m = 0{,}3\), mostre que a solução envolve \(x_2 = 0\) (solução de canto) e encontre \(x_1^*\).

e) Qual o valor mínimo de \(m\) a partir do qual o consumidor passa a adquirir quantidades positivas de ambos os bens?

---

## Vem, ANPEC! 🏆

### Prova de Matemática

!!! question "ANPEC 2010 — Matemática — Questão 02"
    Seja \(f: \mathbb{R}^2 \to \mathbb{R}\) diferenciável e homogênea de grau 4, tal que \(f(1,1) = 2\). Julgue os itens abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A soma das derivadas parciais de \(f\) no ponto \((2,2)\) é igual a 32. |
    | 1 | Em um ponto crítico \((x_0, y_0)\) de \(f\) temos que \(f(x_0, y_0) = 0\). |
    | 2 | As derivadas parciais de primeira ordem de \(f\) são também funções homogêneas de grau 4. |
    | 3 | As identidades \(x f_{xx}(x,y) + y f_{yx}(x,y) = 3f_x(x,y)\) e \(x f_{xy}(x,y) + y f_{yy}(x,y) = 3f_y(x,y)\) são válidas para todo ponto \((x,y) \in \mathbb{R}^2\). |
    | 4 | Se \(p = (x_0, y_0)\) e o gradiente de \(f\) em \(p\) são ortogonais, então \(f(p) = 0\). |

    ??? success "Gabarito"
        **Respostas: F V F V V**

        **Justificativa por item:**

        - **Item 0 — F:** Por homogeneidade de grau 4: \(f(2,2) = 2^4 \cdot f(1,1) = 16 \times 2 = 32\). Pelo Teorema de Euler: \(x f_x + y f_y = 4f\). Em \((2,2)\): \(2(f_x + f_y) = 4 \times 32 = 128\), logo \(f_x + f_y = 64 \neq 32\).
        - **Item 1 — V:** Se \((x_0, y_0)\) é ponto crítico, \(f_x = f_y = 0\). Pelo Teorema de Euler: \(x_0 \cdot 0 + y_0 \cdot 0 = 4f(x_0,y_0)\), portanto \(f(x_0,y_0) = 0\).
        - **Item 2 — F:** Se \(f\) é homogênea de grau \(k\), suas derivadas parciais de primeira ordem são homogêneas de grau \(k - 1 = 3\), não de grau 4.
        - **Item 3 — V:** Diferenciando a identidade de Euler \(xf_x + yf_y = 4f\) em relação a \(x\): \(f_x + xf_{xx} + yf_{yx} = 4f_x\), donde \(xf_{xx} + yf_{yx} = 3f_x\). Analogamente em relação a \(y\): \(xf_{xy} + yf_{yy} = 3f_y\).
        - **Item 4 — V:** Se \(p\) e \(\nabla f(p)\) são ortogonais: \(x_0 f_x + y_0 f_y = 0\). Pelo Teorema de Euler, \(x_0 f_x + y_0 f_y = 4f(p)\), logo \(4f(p) = 0 \implies f(p) = 0\).

        **Conexão com o capítulo:** Esta questão testa diretamente o Teorema de Euler (Seção 2.9) e suas consequências para funções homogêneas — incluindo propriedades das derivadas parciais, comportamento em pontos críticos e relação entre o vetor posição e o gradiente.

!!! question "ANPEC 2018 — Matemática — Questão 13"
    Seja \(f(x,y) = xy\) e \(g(x,y) = \alpha x + \beta y\), em que \(\alpha\) e \(\beta\) são estritamente maiores que zero. Seja \(a > 0\) e considere o problema de otimização:

    \[
    \max_{x,y} f(x,y) \quad \text{s.a.} \quad x \geq 0, \; y \geq 0, \; g(x,y) \leq a
    \]

    Identifique abaixo quais são as questões verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Podemos garantir que a restrição \(g(x,y) \leq a\) é inativa para a solução do problema acima, para quaisquer valores estritamente positivos de \(a\), \(\alpha\) e \(\beta\). |
    | 1 | Podemos garantir que a restrição \(x \geq 0\) é inativa para a solução do problema acima, para quaisquer valores estritamente positivos de \(a\), \(\alpha\) e \(\beta\). |
    | 2 | Se \(g(x,y) = 2x + y\), então a solução é \((x^*, y^*) = \left(\frac{a}{4}, \frac{a}{2}\right)\). |
    | 3 | Se \(g(x,y) = 2x + y\), então \(\frac{d}{da} f(x^*(a), y^*(a)) = \frac{a}{8}\). |
    | 4 | Se a solução do problema satisfizer \(g(x^*, y^*) - a = 0\), então os gradientes de \(f\) e de \(g\) em \((x^*, y^*)\) são perpendiculares. |

    ??? success "Gabarito"
        **Respostas: F V V F F**

        **Justificativa por item:**

        - **Item 0 — F:** Como \(f(x,y) = xy\) é crescente em ambos os argumentos (para \(x, y > 0\)), a solução ótima sempre esgota o orçamento: \(\alpha x + \beta y = a\). A restrição é ativa, com \(\lambda > 0\).
        - **Item 1 — V:** A solução do Lagrangeano é \(x^* = \frac{a}{2\alpha} > 0\) e \(y^* = \frac{a}{2\beta} > 0\) para quaisquer \(\alpha, \beta, a > 0\). Portanto, a restrição \(x \geq 0\) nunca é ativa (é de folga).
        - **Item 2 — V:** Com \(\alpha = 2\), \(\beta = 1\): as CPOs do Lagrangeano dão \(y = 2\lambda\) e \(x = \lambda\), logo \(y = 2x\). Substituindo na restrição \(2x + 2x = a\): \(x^* = a/4\), \(y^* = a/2\).
        - **Item 3 — F:** O valor ótimo é \(f^* = (a/4)(a/2) = a^2/8\). Derivando: \(df^*/da = a/4\). Pelo teorema do envelope: \(df^*/da = \lambda^*\). Das CPOs: \(\lambda = x = a/4\). A afirmação diz \(a/8\), que está incorreta.
        - **Item 4 — F:** Pela condição de Lagrange, \(\nabla f = \lambda \nabla g\), ou seja, os gradientes são **paralelos** (proporcionais), não perpendiculares. Gradientes perpendiculares significariam que a curva de nível de \(f\) cruza a restrição transversalmente — o oposto de uma tangência.

        **Conexão com o capítulo:** Questão central para as Seções 2.5 (Lagrange), 2.6 (envelope restrito) e 2.7 (Kuhn-Tucker). Testa simultaneamente: atividade de restrições, folga complementar, cálculo do multiplicador e o significado geométrico da condição de tangência.

!!! question "ANPEC 2024 — Matemática — Questão 02"
    Sejam os números \(a \in \mathbb{R}\) e \(b \in \mathbb{R}\) parâmetros do problema de maximizar a função \(f: \mathbb{R}^2 \to \mathbb{R}\) definida por:

    \[
    f(x_1, x_2) = -x_1^4 + x_1^2 - \frac{x_2^2}{2} + 2x_2
    \]

    sujeito às restrições \(ax_1 + x_2 = b\), \(x_1 \geq 0\) e \(x_2 \geq 0\). Chamamos esse problema de P. Julgue as afirmativas abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A matriz Hessiana da função \(f\) em qualquer ponto \(\mathbf{x} \in \mathbb{R}^2\) é negativa definida. |
    | 1 | Quaisquer que sejam os valores de \(a\) e \(b\), se o gradiente \(\nabla f(x_1^*, x_2^*) = (0,0)\), então \((x_1^*, x_2^*)\) resolve o problema P. |
    | 2 | Quando \(a = b = 0\), o problema P não tem solução. |
    | 3 | Quando \(a > 0\) e \(b = 0\), qualquer solução \((x_1^*, x_2^*)\) do problema P satisfaz \(x_2^* = 2x_1^*\). |
    | 4 | Quando \(a = b = 1\), em qualquer solução \((x_1^*, x_2^*)\) do problema P, o gradiente satisfaz \(\nabla f(x_1^*, x_2^*) \neq (0,0)\). |

    ??? success "Gabarito"
        **Respostas: F F F V V**

        **Justificativa por item:**

        - **Item 0 — F:** A Hessiana é \(H = \begin{pmatrix} -12x_1^2 + 2 & 0 \\ 0 & -1 \end{pmatrix}\). Em \(x_1 = 0\): \(H_{11} = 2 > 0\), logo \(H\) não é negativa definida (tem autovalor positivo). A função \(f\) não é globalmente côncava — isso complica a verificação das CSO (Seção 2.8).
        - **Item 1 — F:** Mesmo que \(\nabla f = \mathbf{0}\), o ponto pode não satisfazer as restrições de P (pode violar \(ax_1 + x_2 = b\), \(x_1 \geq 0\) ou \(x_2 \geq 0\)). Além disso, como \(f\) não é côncava, um ponto com gradiente nulo pode ser um mínimo ou ponto de sela.
        - **Item 2 — F:** Com \(a = b = 0\): a restrição \(x_2 = 0\), \(x_1 \geq 0\). O problema reduz-se a \(\max_{x_1 \geq 0} (-x_1^4 + x_1^2)\), que tem máximo em \(x_1 = 1/\sqrt{2}\). O problema tem solução.
        - **Item 3 — V:** Com \(b = 0\) e \(a > 0\): a restrição \(ax_1 + x_2 = 0\) com \(x_1, x_2 \geq 0\) força \(x_1 = x_2 = 0\). Portanto \(x_2^* = 0 = 2 \times 0 = 2x_1^*\).
        - **Item 4 — V:** Com \(a = b = 1\): a restrição \(x_1 + x_2 = 1\). Na solução restrita, as condições de Lagrange exigem \(\nabla f = \lambda \nabla g\), ou seja, \(\nabla f = \lambda(1, 1)\). Se \(\nabla f = (0,0)\), então \(\lambda = 0\), mas a segunda componente exige \(-x_2 + 2 = 0\), ou seja, \(x_2 = 2\). Isso violaria \(x_1 + x_2 = 1\) com \(x_1 \geq 0\). Contradição. Logo \(\nabla f \neq (0,0)\) em qualquer solução.

        **Conexão com o capítulo:** Integra vários temas: análise da Hessiana e concavidade (Seção 2.8), relação entre solução irrestrita e restrita (Seção 2.5), condições KKT com restrições de igualdade e não-negatividade (Seção 2.7), e o papel da concavidade na garantia de soluções globais (Seção 2.3).

---

## Apêndice: A Pesquisa em Ação 🔬

### Estatísticas suficientes e o teorema do envelope na avaliação de políticas públicas

> **Referência completa:** Chetty, Raj. "Sufficient Statistics for Welfare Analysis: A Bridge Between Structural and Reduced-Form Methods." *Annual Review of Economics*, 1: 451-488, 2009. DOI: 10.1146/annurev.economics.050708.142910

**A pergunta**
Como avaliar o impacto de uma política pública sobre o bem-estar social sem precisar estimar um modelo estrutural completo da economia? A estimação de modelos estruturais é custosa e depende de suposições sobre formas funcionais e distribuições — será possível responder a perguntas de política usando apenas algumas "estatísticas suficientes"?

**Como o autor respondeu**
Chetty mostra que, para uma ampla classe de problemas de política pública — tributação, seguro-desemprego, regulação —, o impacto sobre o bem-estar pode ser expresso como função de um pequeno número de **estatísticas suficientes**, tipicamente elasticidades comportamentais estimáveis. A chave é o **teorema do envelope**: como os agentes estão otimizando, os efeitos de primeira ordem de mudanças comportamentais sobre a utilidade são nulos. O único efeito relevante é o efeito **direto** da política sobre a restrição — exatamente o resultado das Seções 2.4 e 2.6.

**O que descobriu**
Chetty demonstra que a perda de peso morto (*deadweight loss*) de um imposto pode ser expressa como \(DWL \approx \frac{1}{2} \varepsilon \cdot t^2 \cdot p \cdot Q\), onde \(\varepsilon\) é a elasticidade compensada da demanda, \(t\) é a alíquota e \(pQ\) é a receita base. O ponto crucial: não é necessário conhecer a função utilidade, a distribuição de renda ou a heterogeneidade dos agentes — basta a elasticidade. Analogamente, o nível ótimo de seguro-desemprego depende essencialmente de duas estatísticas: a elasticidade da duração do desemprego em relação ao benefício e a queda no consumo durante o desemprego.

**Por que isso importa**
A abordagem de estatísticas suficientes tornou-se um dos paradigmas dominantes em economia pública empírica. No Brasil, ela é aplicável à avaliação do Simples Nacional, à calibração de alíquotas do ICMS e ao desenho do seguro-desemprego — bastam estimativas de elasticidades comportamentais, sem necessidade de modelos estruturais complexos.

**Conexão com este capítulo**
O artigo é uma aplicação magistral do teorema do envelope (Seções 2.4 e 2.6): ao reconhecer que agentes otimizadores "já fizeram o melhor possível", Chetty transforma problemas aparentemente intratáveis em expressões simples envolvendo derivadas parciais avaliadas no ótimo. A mensagem é que as ferramentas matemáticas deste capítulo — derivadas parciais, multiplicadores de Lagrange, teorema do envelope — não são mero formalismo: são a base de uma revolução metodológica na economia empírica.

---

### Estática comparativa monotônica e a matemática da previsão econômica

> **Referência completa:** Milgrom, Paul; Shannon, Chris. "Monotone Comparative Statics." *Econometrica*, 62(1): 157-180, 1994. DOI: 10.2307/2951479

**A pergunta**
Quando podemos afirmar que a solução ótima de um problema de maximização é *monotonamente crescente* em um parâmetro? A estática comparativa clássica — "se o preço sobe, a quantidade cai" — depende de condições sobre derivadas segundas (concavidade, condições de segunda ordem). Será possível obter resultados de estática comparativa sem essas condições?

**Como os autores responderam**
Milgrom e Shannon desenvolveram a teoria da **estática comparativa monotônica** usando conceitos de teoria dos reticulados (*lattice theory*). A ideia central é substituir as condições tradicionais de segunda ordem (hessiana negativa definida, concavidade) por uma condição mais fraca: **supermodularidade** da função objetivo. Uma função é supermodular quando "fazer mais de uma coisa aumenta o retorno de fazer mais de outra" — uma forma de complementaridade.

**O que descobriram**
Os autores provaram que, se a função objetivo satisfaz a **condição de cruzamento único** (*single crossing property*) no par (variável de escolha, parâmetro), então a solução ótima é monotonamente crescente no parâmetro — sem necessidade de diferenciabilidade, concavidade ou condições de segunda ordem. Esse resultado unifica e generaliza numerosos teoremas de estática comparativa em microeconomia: demanda crescente em renda (para bens normais), oferta crescente em preço, investimento crescente em produtividade.

**Por que isso importa**
A contribuição de Milgrom e Shannon é metodológica: mostra que muitas previsões qualitativas da microeconomia ("mais de X leva a mais de Y") são mais robustas do que se pensava — não dependem das formas funcionais específicas usadas nos modelos. Em aplicações empíricas, isso justifica o uso de previsões de sinais (positivo/negativo) mesmo quando a forma funcional exata é desconhecida.

**Conexão com este capítulo**
O artigo dialoga com as Seções 2.2 (função implícita e estática comparativa), 2.3 (condições de segunda ordem) e 2.8 (concavidade e curvatura). As ferramentas clássicas deste capítulo — derivar a CPO, verificar a CSO, aplicar o teorema da função implícita — produzem resultados de estática comparativa sob condições de regularidade. Milgrom e Shannon mostram que esses resultados sobrevivem sob hipóteses muito mais gerais, sugerindo que a estrutura matemática da otimização é mais profunda do que a maquinaria de cálculo diferencial captura.

---

## Leituras Recomendadas

- Nicholson, W. & Snyder, C. *Microeconomic Theory: Basic Principles and Extensions*, Apêndice Matemático.
- Mas-Colell, A., Whinston, M. & Green, J. *Microeconomic Theory*, Apêndice Matemático.
- Simon, C. P. & Blume, L. *Mathematics for Economists*. New York: W. W. Norton, 1994.
- Varian, H. *Microeconomic Analysis*, Cap. 27 (Apêndice Matemático).
- Chiang, A. & Wainwright, K. *Fundamental Methods of Mathematical Economics*. 4. ed. McGraw-Hill, 2005.
