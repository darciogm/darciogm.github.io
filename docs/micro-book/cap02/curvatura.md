# Concavidade, Homogeneidade e Teorema de Euler

## 2.8 Quando as CPOs Bastam: Concavidade e Quase-Concavidade {#28}

Nas seções anteriores, encontramos candidatos a ótimo (CPO) e os classificamos (CSO). Mas em muitos problemas econômicos, podemos pular a CSO inteiramente — porque a *forma* da função garante que qualquer ponto estacionário é automaticamente o ótimo global. Essa garantia vem de propriedades de **curvatura**: concavidade, convexidade e, especialmente, quase-concavidade.

### Conjuntos convexos

!!! definition "Conjunto Convexo"
    Um conjunto $S \subseteq \mathbb{R}^n$ é **convexo** se, para quaisquer $x, y \in S$ e $\theta \in [0, 1]$:

    $$
    \theta x + (1 - \theta) y \in S
    $$

    Geometricamente: o segmento de reta entre quaisquer dois pontos do conjunto está inteiramente contido nele.

Exemplos econômicos: a restrição orçamentária $\{x : px \leq m\}$ é convexa; o conjunto de cestas preferidas $\{x : U(x) \geq \bar{u}\}$ é convexo quando $U$ é quase-côncava.

### Funções côncavas e convexas

!!! definition "Concavidade e Convexidade"
    Uma função $f: S \to \mathbb{R}$ (com $S$ convexo) é:

    - **Côncava** se, para todo $x, y \in S$ e $\theta \in [0, 1]$:

    $$
    f(\theta x + (1 - \theta) y) \geq \theta f(x) + (1 - \theta) f(y)
    \label{eq:2.22} \tag{2.22}
    $$

    - **Convexa** se a desigualdade é invertida ($\leq$).
    - **Estritamente côncava/convexa** se a desigualdade é estrita para $x \neq y$ e $\theta \in (0, 1)$.

!!! idea "Intuição Econômica"
    **Em uma frase:** Uma função côncava "fica abaixo das cordas" — qualquer média ponderada dos inputs dá um output pelo menos tão bom quanto a média dos outputs.

    **Pense assim:** A utilidade côncava é o fundamento da aversão ao risco ([Capítulo 7](../cap07/index.md)): o consumidor prefere o valor esperado da loteria à loteria em si, porque a curva de utilidade está acima da corda que liga os dois resultados possíveis. A Desigualdade de Jensen ($E[U(x)] \leq U(E[x])$) é literalmente a definição de concavidade aplicada a esperanças.

### Caracterização via derivadas

| Propriedade | Condição em $f''$ (1 var.) | Condição na Hessiana $H$ ($n$ var.) |
|:--|:--|:--|
| Côncava | $f'' \leq 0$ | $H$ semidefinida negativa |
| Estritamente côncava | $f'' < 0$ | $H$ definida negativa |
| Convexa | $f'' \geq 0$ | $H$ semidefinida positiva |

### Quase-concavidade: a curvatura que importa para as preferências

!!! definition "Quase-Concavidade"
    $f$ é **quase-côncava** se, para todo $x, y$ com $f(x) \geq f(y)$ e $\theta \in [0, 1]$:

    $$
    f(\theta x + (1 - \theta) y) \geq f(y)
    \label{eq:2.23} \tag{2.23}
    $$

    Equivalentemente: os **conjuntos de nível superior** $\{x : f(x) \geq c\}$ são convexos para todo $c$.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quase-concavidade garante curvas de indiferença "bem comportadas" — convexas em direção à origem.

    **Por que importa mais que concavidade para preferências:** A utilidade é *ordinal* no [Capítulo 3](../cap03/index.md) — transformações monotônicas crescentes não alteram as preferências. Concavidade **não** é preservada por transformações monotônicas, mas quase-concavidade **sim**. Logo, quase-concavidade é a propriedade "certa" para curvas de indiferença: ela garante que a tangência com a reta orçamentária encontra um máximo global, sem depender da escala de $U$.

### Concavidade, quase-concavidade e suficiência

| Propriedade de $f$ | CPO necessária? | CPO suficiente? | Exemplo econômico |
|:--|:---:|:---:|:---|
| Estritamente côncava | ✅ | ✅ (máx global único) | $U = \ln x_1 + \ln x_2$ |
| Côncava | ✅ | ✅ (máx global, possivelmente múltiplo) | $U = \min(x_1, x_2)$ |
| Quase-côncava | ✅ | ✅ (com restrição convexa) | $U = x_1 x_2$ |
| Nenhuma das anteriores | ✅ | ❌ (CSO necessária) | $U = x_1^2 + x_2^2$ |

!!! danger "Erro Comum"
    **Confundir côncava com quase-côncava.** Toda função côncava é quase-côncava, mas a recíproca é **falsa**. $f(x) = x^3$ é quase-côncava (em $\mathbb{R}$) mas não côncava. Para preferências, quase-concavidade basta; para aversão ao risco, precisa-se de concavidade "de verdade".

---

## 2.9 Funções Homogêneas e o Teorema de Euler {#29}

### Homogeneidade

!!! definition "Função Homogênea de Grau $k$"
    $f: \mathbb{R}^n_+ \to \mathbb{R}$ é **homogênea de grau $k$** se, para todo $t > 0$:

    $$
    f(tx) = t^k f(x)
    \label{eq:2.24} \tag{2.24}
    $$

Exemplos centrais:

| Função | Grau $k$ | Onde aparece |
|:--|:---:|:---|
| $f(L, K) = AL^\alpha K^\beta$ (Cobb-Douglas) | $\alpha + \beta$ | [Cap. 10](../cap10/index.md): retornos de escala |
| Demanda marshalliana $x(p, m)$ | 0 em $(p, m)$ | [Cap. 5](../cap05/index.md): ausência de ilusão monetária |
| Função custo $C(w, q)$ | 1 em $w$ | [Cap. 11](../cap11/index.md): custos sobem proporcionalmente aos preços |

### Retornos de escala

A homogeneidade da função de produção determina os retornos de escala — um dos conceitos mais importantes da [teoria da firma](../cap10/index.md):

| Grau | $f(tL, tK)$ vs. $tf(L, K)$ | Retornos |
|:---:|:---|:---|
| $k > 1$ | $>$ | Crescentes (IRS) |
| $k = 1$ | $=$ | Constantes (CRS) |
| $k < 1$ | $<$ | Decrescentes (DRS) |

### Teorema de Euler

!!! definition "Teorema de Euler"
    Se $f$ é homogênea de grau $k$ e diferenciável, então:

    $$
    \sum_{i=1}^n x_i \frac{\partial f}{\partial x_i} = k \cdot f(x)
    \label{eq:2.25} \tag{2.25}
    $$

**Prova:** Derive $f(tx) = t^k f(x)$ em relação a $t$ pela regra da cadeia: $\sum_i x_i f_i(tx) = kt^{k-1}f(x)$. Avalie em $t = 1$. $\blacksquare$

### Aplicações econômicas do Teorema de Euler

1. **Esgotamento do produto** (CRS): Se $f(L, K)$ é homogênea de grau 1, então $L \cdot PMg_L + K \cdot PMg_K = f(L, K)$ — pagar a cada fator seu produto marginal esgota exatamente o produto total. Este resultado é a base da teoria da distribuição de renda ([Capítulo 17](../cap17/index.md)).

2. **Funções de demanda**: A demanda marshalliana $x(p, m)$ é homogênea de grau 0 em $(p, m)$ — dobrar todos os preços e a renda não muda a cesta escolhida. Pelo Teorema de Euler: $\sum_j \frac{\partial x_i}{\partial p_j} p_j + \frac{\partial x_i}{\partial m} m = 0$, que gera a agregação de elasticidades do [Capítulo 5](../cap05/elasticidades.md).

!!! idea "Intuição Econômica"
    **Em uma frase:** O Teorema de Euler é a garantia de que, em concorrência perfeita com retornos constantes de escala, a conta fecha: a firma paga todos os fatores o que eles "merecem" e não sobra nada.

    **Por que isso importa:** Se há retornos crescentes ($k > 1$), pagar cada fator seu produto marginal geraria um *déficit* — a soma das fatias excede o bolo. Isso é uma das razões pelas quais rendimentos crescentes e concorrência perfeita são incompatíveis, tema central do [Capítulo 15](../cap15/index.md) (monopólio).

### Derivadas de funções homogêneas

!!! definition "Propriedade das derivadas"
    Se $f$ é homogênea de grau $k$, então $\partial f / \partial x_i$ é homogênea de grau $k - 1$.

**Corolário:** O produto marginal de uma função de produção CRS ($k = 1$) depende apenas das *proporções* dos insumos, não dos *níveis*. Se $f(L, K) = L^\alpha K^{1-\alpha}$, então $PMg_L = \alpha(K/L)^{1-\alpha}$ — função apenas da razão capital-trabalho.

??? r-interactive "R Interativo"
    ```r
    # Verificação do Teorema de Euler para Cobb-Douglas
    alpha <- 0.3; beta <- 0.7
    f <- function(L, K) L^alpha * K^beta

    L <- 10; K <- 20
    k <- alpha + beta  # grau de homogeneidade

    # Derivadas parciais (numéricas)
    dL <- (f(L + 0.001, K) - f(L, K)) / 0.001
    dK <- (f(L, K + 0.001) - f(K, K)) / 0.001

    # Lado esquerdo de Euler
    euler_lhs <- L * dL + K * dK

    # Lado direito
    euler_rhs <- k * f(L, K)

    cat("Euler LHS:", round(euler_lhs, 4), "\n")
    cat("Euler RHS:", round(euler_rhs, 4), "\n")
    cat("Diferença:", round(abs(euler_lhs - euler_rhs), 6), "\n")

    # Homogeneidade: f(tL, tK) = t^k * f(L, K)
    t <- 2
    cat("\nf(2L, 2K) =", f(t*L, t*K), "\n")
    cat("t^k * f(L,K) =", t^k * f(L, K), "\n")
    ```

---

**Conexão.** Este capítulo cobriu o essencial do cálculo multivariado para microeconomia. As [Seções 2.10–2.13](complementos.md) apresentam ferramentas complementares — integração (para excedentes), equações diferenciais (para dinâmica intertemporal), probabilidade (para incerteza) e teoremas de ponto fixo (para existência de equilíbrio) — que serão mobilizadas em capítulos específicos.
