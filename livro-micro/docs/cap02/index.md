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

## Referências

- MAS-COLELL, A.; WHINSTON, M. D.; GREEN, J. R. *Microeconomic Theory*. New York: Oxford University Press, 1995.
- NICHOLSON, W.; SNYDER, C. *Microeconomic Theory: Basic Principles and Extensions*. 12. ed. Boston: Cengage Learning, 2017.
- PINDYCK, R. S.; RUBINFELD, D. L. *Microeconomia*. 8. ed. São Paulo: Pearson, 2013.
- SIMON, C. P.; BLUME, L. *Mathematics for Economists*. New York: W. W. Norton, 1994.
- VARIAN, H. R. *Microeconomia: uma abordagem moderna*. 9. ed. Rio de Janeiro: Elsevier, 2015.
