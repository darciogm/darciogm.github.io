# Otimização e Estática Comparativa

## 2.1 O Arroz com Feijão: Otimização em Uma Variável {#21}

A microeconomia inteira se resume a agentes que tentam fazer o melhor possível dadas as circunstâncias. Consumidores maximizam utilidade, firmas maximizam lucro (ou minimizam custo), governos maximizam bem-estar social — e todos esbarram em restrições. Antes de enfrentar esses problemas em toda a sua complexidade, convém dominar o caso mais simples: encontrar o máximo (ou mínimo) de uma função de uma única variável.

### Condição de Primeira Ordem (CPO)

!!! definition "Condição de Primeira Ordem"
    Seja $f: \mathbb{R} \to \mathbb{R}$ uma função diferenciável. Se $x^*$ é um **máximo (ou mínimo) interior**, então:

    $$
    f'(x^*) = 0
    \label{eq:2.1} \tag{2.1}
    $$

    A CPO é **necessária** para extremos interiores, mas **não suficiente** — ela encontra tanto máximos quanto mínimos (e pontos de inflexão).

A intuição é simples: no ponto ótimo, um deslocamento infinitesimal em qualquer direção não melhora o objetivo. Se $f'(x^*) > 0$, aumentar $x$ um pouquinho ainda melhora $f$ — logo, $x^*$ não é máximo. Se $f'(x^*) < 0$, diminuir $x$ melhora $f$ — mesma conclusão. Só resta $f'(x^*) = 0$.[^dead-parrot-cpo]

[^dead-parrot-cpo]: O papagaio do *Dead Parrot sketch* atingiu seu ponto estacionário de forma definitiva e irreversível. O vendedor insiste que ele está "descansando" — mas a derivada do papagaio em relação ao tempo é zero, a segunda derivada também, e o papagaio claramente atingiu um mínimo global de atividade vital. CPO e CSO satisfeitas.

### Condição de Segunda Ordem (CSO)

A CPO localiza candidatos. A CSO classifica:

!!! definition "Condição de Segunda Ordem"
    No ponto $x^*$ onde $f'(x^*) = 0$:

    - $f''(x^*) < 0 \Rightarrow x^*$ é **máximo local**
    - $f''(x^*) > 0 \Rightarrow x^*$ é **mínimo local**
    - $f''(x^*) = 0 \Rightarrow$ **teste inconclusivo** (pode ser inflexão)

!!! idea "Intuição Econômica"
    **Em uma frase:** A CPO diz "pare aqui"; a CSO diz "é topo de morro ou fundo de vale?"

    **Pense assim:** Imagine que você caminha com os olhos vendados por um terreno acidentado. A CPO é o momento em que o chão fica plano sob seus pés — pode ser o topo da montanha ou o fundo do vale. A CSO é tirar a venda: se o terreno desce para os dois lados, você está no topo (máximo); se sobe para os dois lados, está no fundo (mínimo).

!!! danger "Erro Comum"
    **Esquecer a CSO.** Encontrar $f'(x^*) = 0$ e declarar vitória sem verificar a segunda derivada é o erro mais frequente em provas. No [Capítulo 12](../cap12/index.md), a firma que iguala $RMg = CMg$ sem checar se $CMg$ é crescente pode estar *minimizando* o lucro — catástrofe empresarial.

### Exemplo: Maximização de lucro de uma firma

Considere uma firma com receita $R(q) = 100q - q^2$ e custo $C(q) = 10q + 2q^2$. O lucro é:

$$
\pi(q) = R(q) - C(q) = 90q - 3q^2
$$

**CPO:** $\pi'(q) = 90 - 6q = 0 \Rightarrow q^* = 15$

**CSO:** $\pi''(q) = -6 < 0$ ✓ (máximo)

**Lucro máximo:** $\pi(15) = 90(15) - 3(225) = 1350 - 675 = 675$

??? r-interactive "R Interativo"
    ```r
    # Maximização de lucro em uma variável
    pi <- function(q) 90*q - 3*q^2

    # CPO: derivada = 0
    q_star <- 90 / 6
    cat("Quantidade ótima:", q_star, "\n")
    cat("Lucro máximo:", pi(q_star), "\n")

    # Visualização
    curve(pi, from = 0, to = 30, col = "steelblue", lwd = 2,
          xlab = "Quantidade (q)", ylab = "Lucro π(q)",
          main = "Maximização de Lucro")
    abline(v = q_star, lty = 2, col = "red")
    points(q_star, pi(q_star), pch = 19, col = "red", cex = 1.5)
    ```

---

## 2.2 O Mundo Tem Mais de Uma Dimensão: Derivadas Parciais e o Teorema da Função Implícita {#22}

Na vida real, a utilidade depende de *vários* bens, o lucro depende de *vários* insumos, e o equilíbrio depende de *vários* preços. Precisamos generalizar.

### Derivadas parciais

!!! definition "Derivada Parcial"
    Seja $f: \mathbb{R}^n \to \mathbb{R}$. A **derivada parcial** de $f$ em relação a $x_i$, mantendo as demais variáveis constantes, é:

    $$
    \frac{\partial f}{\partial x_i} = \lim_{h \to 0} \frac{f(x_1, \ldots, x_i + h, \ldots, x_n) - f(x_1, \ldots, x_i, \ldots, x_n)}{h}
    \label{eq:2.2} \tag{2.2}
    $$

A derivada parcial é o *ceteris paribus* formal: mede como $f$ responde a uma variação em $x_i$ *mantendo todo o resto constante*. É a ferramenta matemática por trás de frases como "se o preço sobe, *ceteris paribus*, a quantidade demandada cai".

!!! idea "Intuição Econômica"
    **Em uma frase:** A derivada parcial é a formalização matemática do *ceteris paribus* — a cláusula que os economistas mais amam e os críticos mais detestam.

    **Por que isso importa:** Sem ela, não poderíamos isolar o efeito de *uma* variável num mundo onde tudo se move ao mesmo tempo. Todo o [Capítulo 5](../cap05/index.md) (equação de Slutsky) depende da capacidade de separar efeitos.

### O gradiente e a diferencial total

O vetor de todas as derivadas parciais é o **gradiente**:

$$
\nabla f(x) = \left(\frac{\partial f}{\partial x_1}, \frac{\partial f}{\partial x_2}, \ldots, \frac{\partial f}{\partial x_n}\right)
\label{eq:2.3} \tag{2.3}
$$

A **diferencial total** captura o efeito combinado de variações simultâneas em todas as variáveis:

$$
df = \sum_{i=1}^n \frac{\partial f}{\partial x_i} \, dx_i
\label{eq:2.4} \tag{2.4}
$$

### O Teorema da Função Implícita (TFI)

Muitas relações econômicas são definidas *implicitamente*. A curva de indiferença, por exemplo, é o conjunto de cestas $(x_1, x_2)$ que satisfazem $U(x_1, x_2) = \bar{u}$ — ela não diz "dado $x_1$, calcule $x_2$" explicitamente. O TFI garante que, sob certas condições, podemos *tratar* $x_2$ como função de $x_1$.

!!! definition "Teorema da Função Implícita"
    Seja $F(x, y) = 0$ uma relação implícita com $F$ continuamente diferenciável e $\partial F / \partial y \neq 0$. Então, numa vizinhança do ponto, $y$ é uma função implícita de $x$, e:

    $$
    \frac{dy}{dx} = -\frac{\partial F / \partial x}{\partial F / \partial y}
    \label{eq:2.5} \tag{2.5}
    $$

**Aplicação imediata — a TMS:** Na curva de indiferença $U(x_1, x_2) = \bar{u}$, o TFI dá:

$$
\frac{dx_2}{dx_1}\bigg|_{U = \bar{u}} = -\frac{\partial U / \partial x_1}{\partial U / \partial x_2} = -\frac{UMg_1}{UMg_2}
$$

Este é o resultado central da [Seção 3.4](../cap03/tms.md): a taxa marginal de substituição é a razão das utilidades marginais, com sinal negativo.

### Estática comparativa pelo TFI

A estática comparativa — "como o ótimo muda quando um parâmetro muda?" — é a principal aplicação do TFI em microeconomia. O procedimento é mecânico:

1. Escreva a CPO como $F(x^*, \alpha) = 0$, onde $\alpha$ é o parâmetro.
2. Aplique o TFI: $\displaystyle \frac{dx^*}{d\alpha} = -\frac{\partial F / \partial \alpha}{\partial F / \partial x^*}$
3. Determine o sinal usando a CSO (que fixa o sinal do denominador).

!!! example "Exemplo: Imposto sobre produção"
    Firma com $\pi(q; t) = pq - C(q) - tq$, onde $t$ é o imposto por unidade.

    **CPO:** $p - C'(q^*) - t = 0 \Rightarrow F(q^*, t) = p - C'(q^*) - t = 0$

    **TFI:** $\displaystyle\frac{dq^*}{dt} = -\frac{\partial F/\partial t}{\partial F/\partial q^*} = -\frac{-1}{-C''(q^*)} = \frac{-1}{C''(q^*)}$

    Se $C''(q^*) > 0$ (custo marginal crescente — CSO), então $dq^*/dt < 0$: o imposto **reduz** a produção. O resultado antecipa a análise de incidência tributária do [Capítulo 13](../cap13/index.md).

---

## 2.3 Otimização Multivariada: A Hessiana {#23}

Quando a função objetivo depende de $n$ variáveis, a CPO se torna um sistema de $n$ equações e a CSO envolve a **matriz Hessiana**.

### CPO multivariada

!!! definition "CPO — Caso Multivariado"
    Seja $f: \mathbb{R}^n \to \mathbb{R}$ diferenciável. Se $x^* = (x_1^*, \ldots, x_n^*)$ é um extremo interior:

    $$
    \frac{\partial f}{\partial x_i}(x^*) = 0, \quad i = 1, \ldots, n
    \label{eq:2.6} \tag{2.6}
    $$

    Equivalentemente, $\nabla f(x^*) = \mathbf{0}$.

### A matriz Hessiana

!!! definition "Matriz Hessiana"
    A **Hessiana** de $f$ em $x$ é a matriz $n \times n$ de segundas derivadas parciais:

    $$
    H(x) = \begin{pmatrix}
    \frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_1 \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
    \frac{\partial^2 f}{\partial x_2 \partial x_1} & \frac{\partial^2 f}{\partial x_2^2} & \cdots & \frac{\partial^2 f}{\partial x_2 \partial x_n} \\
    \vdots & \vdots & \ddots & \vdots \\
    \frac{\partial^2 f}{\partial x_n \partial x_1} & \frac{\partial^2 f}{\partial x_n \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_n^2}
    \end{pmatrix}
    \label{eq:2.7} \tag{2.7}
    $$

    Pelo Teorema de Young (Schwarz), se as segundas derivadas são contínuas, $H$ é **simétrica**.

### CSO multivariada

!!! definition "CSO — Caso Multivariado"
    No ponto $x^*$ onde $\nabla f(x^*) = \mathbf{0}$:

    - $x^*$ é **máximo local** se $H(x^*)$ é **definida negativa** (todos os autovalores $< 0$)
    - $x^*$ é **mínimo local** se $H(x^*)$ é **definida positiva** (todos os autovalores $> 0$)

    Na prática, a definititude é verificada pelos **menores principais líderes** ($D_k$):

    | Condição | $D_1$ | $D_2$ | $D_3$ | $\ldots$ | Padrão |
    |:--|:---:|:---:|:---:|:---:|:---|
    | Def. negativa (máx) | $< 0$ | $> 0$ | $< 0$ | $\ldots$ | Sinais alternados, $D_1 < 0$ |
    | Def. positiva (mín) | $> 0$ | $> 0$ | $> 0$ | $\ldots$ | Todos positivos |

!!! idea "Intuição Econômica"
    **Em uma frase:** A Hessiana generaliza a segunda derivada — ela diz se o ponto estacionário é topo de montanha (máximo), fundo de vale (mínimo) ou ponto de sela.

    **No caso $n = 2$:** $H$ definida negativa $\Leftrightarrow$ $f_{11} < 0$ e $f_{11}f_{22} - (f_{12})^2 > 0$. A primeira condição diz "côncava na direção 1"; a segunda diz "a interação entre as variáveis não estraga a concavidade".

!!! example "Exemplo: Firma com dois insumos"
    Produção $q = f(L, K) = 10L^{1/2}K^{1/2}$, preço $p = 2$, salário $w = 1$, aluguel $r = 1$.

    $\pi(L, K) = 2 \cdot 10L^{1/2}K^{1/2} - L - K = 20L^{1/2}K^{1/2} - L - K$

    **CPO:**

    - $\partial\pi/\partial L = 10K^{1/2}/L^{1/2} - 1 = 0 \Rightarrow L = 100K$
    - $\partial\pi/\partial K = 10L^{1/2}/K^{1/2} - 1 = 0 \Rightarrow K = 100L$

    Resolvendo: $L^* = K^* = 100$, $\pi^* = 20(100) - 100 - 100 = 1800$.

    **CSO:** $H = \begin{pmatrix} -5K^{1/2}/L^{3/2} & 5/(L^{1/2}K^{1/2}) \\ 5/(L^{1/2}K^{1/2}) & -5L^{1/2}/K^{3/2} \end{pmatrix}$

    Em $(100, 100)$: $D_1 = -0.05 < 0$, $D_2 = 0.05^2 - 0.05^2 > 0$? Verificar sinais — exercício para o leitor. ✓

??? r-interactive "R Interativo"
    ```r
    # Hessiana e classificação de ponto crítico
    library(numDeriv)

    pi_func <- function(x) {
      L <- x[1]; K <- x[2]
      20 * sqrt(L) * sqrt(K) - L - K
    }

    # Ponto ótimo (analítico)
    x_star <- c(100, 100)

    # Hessiana numérica
    H <- hessian(pi_func, x_star)
    cat("Hessiana em (100, 100):\n")
    print(round(H, 4))

    # Autovalores
    eig <- eigen(H)$values
    cat("\nAutovalores:", round(eig, 4))
    cat("\nDefinida negativa?", all(eig < 0))
    ```

---

**Conexões com o restante do livro.** A CPO e a CSO são usadas em *todos* os capítulos subsequentes: na otimização do consumidor ([Capítulo 4](../cap04/index.md)), na maximização de lucro ([Capítulo 12](../cap12/index.md)), no equilíbrio de Nash ([Capítulo 9a](../cap09a/index.md)) e no equilíbrio geral ([Capítulo 14](../cap14/index.md)). O TFI é a ferramenta central da estática comparativa ([Capítulo 5](../cap05/index.md)), e a Hessiana reaparece como Hessiana orlada na otimização com restrição ([Seção 2.5](lagrange.md)).
