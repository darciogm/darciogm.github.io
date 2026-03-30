# Método de Lagrange e Preço-Sombra

## 2.5 Otimização com Restrição: O Método de Lagrange {#25}

Até agora, o agente podia escolher livremente. A partir daqui, ele enfrenta a realidade: **restrições**. O consumidor quer maximizar utilidade, mas tem renda limitada. A firma quer minimizar custo, mas precisa produzir uma quantidade mínima. O governo quer maximizar bem-estar, mas tem orçamento finito. O método de Lagrange é *a* ferramenta para resolver esses problemas — e é, sem exagero, o instrumento mais usado neste livro inteiro.[^holy-hand-grenade-lagrange]

[^holy-hand-grenade-lagrange]: O Método de Lagrange é a Holy Hand Grenade da microeconomia: um protocolo infalível, desde que você siga os passos exatamente. *"First shalt thou take the derivative of the Lagrangean. Then shalt thou set it to zero. No more. No less. Three shall be the number of CPOs and the number of CPOs shall be three."* (adaptado livremente de *Monty Python and the Holy Grail*). Sir Lancelot que pula a condição de complementaridade acaba explodindo a si mesmo — e à nota da prova.

### Formulação

!!! definition "Problema de Otimização com Restrição de Igualdade"
    $$
    \max_{x_1, \ldots, x_n} f(x_1, \ldots, x_n) \quad \text{sujeito a} \quad g(x_1, \ldots, x_n) = c
    \label{eq:2.10} \tag{2.10}
    $$

    O **Lagrangeano** é:

    $$
    \mathcal{L}(x_1, \ldots, x_n, \lambda) = f(x_1, \ldots, x_n) - \lambda \left[g(x_1, \ldots, x_n) - c\right]
    \label{eq:2.11} \tag{2.11}
    $$

    onde $\lambda$ é o **multiplicador de Lagrange**.

### Condições de primeira ordem

As CPOs do Lagrangeano são:

$$
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial f}{\partial x_i} - \lambda \frac{\partial g}{\partial x_i} = 0, \quad i = 1, \ldots, n
\label{eq:2.12} \tag{2.12}
$$

$$
\frac{\partial \mathcal{L}}{\partial \lambda} = -(g(x) - c) = 0
\label{eq:2.13} \tag{2.13}
$$

São $n + 1$ equações em $n + 1$ incógnitas $(x_1^*, \ldots, x_n^*, \lambda^*)$.

!!! idea "Intuição Econômica"
    **Em uma frase:** No ótimo restrito, o benefício marginal de cada variável é proporcional ao custo marginal que ela impõe sobre a restrição — e a constante de proporcionalidade é $\lambda$.

    **Pense assim:** Imagine que você está alocando seu orçamento entre dois bens. No ótimo, o "retorno por real gasto" deve ser igual para ambos os bens. Se o café dá mais felicidade por real do que o pão, você deveria comprar mais café e menos pão — logo não está no ótimo. A condição $\eqref{eq:2.12}$ formaliza essa igualdade de retorno marginal.

    **Geometricamente:** No ótimo, as curvas de nível de $f$ e $g$ são tangentes — seus gradientes são paralelos: $\nabla f = \lambda \nabla g$. A Equação $\eqref{eq:2.12}$ é exatamente essa condição de tangência.

### Interpretação geométrica

O ponto ótimo é onde a maior curva de nível de $f$ que ainda toca a restrição $g = c$ é tangente a ela. Nos [Capítulos 3–4](../cap03/index.md), essa tangência se materializará como a condição $TMS = p_1/p_2$ — a curva de indiferença tangente à reta orçamentária.

### Exemplo canônico: maximização de utilidade

Considere $U(x_1, x_2) = x_1^{1/2} x_2^{1/2}$ sujeito a $p_1 x_1 + p_2 x_2 = m$.

**Lagrangeano:** $\mathcal{L} = x_1^{1/2} x_2^{1/2} - \lambda(p_1 x_1 + p_2 x_2 - m)$

**CPOs:**

- $\frac{1}{2}x_1^{-1/2}x_2^{1/2} = \lambda p_1 \quad \Rightarrow \quad \frac{x_2}{2x_1} = \lambda p_1 \cdot \frac{x_1^{1/2}}{x_2^{1/2}}$
- $\frac{1}{2}x_1^{1/2}x_2^{-1/2} = \lambda p_2$
- $p_1 x_1 + p_2 x_2 = m$

Dividindo a primeira pela segunda: $x_2/x_1 = p_1/p_2$, logo $x_2 = (p_1/p_2)x_1$.

Substituindo na restrição: $p_1 x_1 + p_1 x_1 = m \Rightarrow x_1^* = m/(2p_1)$, $x_2^* = m/(2p_2)$.

**Resultado:** Com Cobb-Douglas simétrica, o consumidor gasta metade da renda em cada bem — independentemente dos preços! Esse resultado é generalizado no [Capítulo 4, Seção 4.10](../cap04/catalogo.md).

!!! brasil "Lagrange no Salário Mínimo Brasileiro"
    **Aplicação numérica com dados reais.** Em 2024, o salário mínimo brasileiro era $m = \text{R\$ }1.412$. Suponha que uma família de baixa renda aloca sua cesta entre *alimentação* ($x_1$, preço médio por "unidade-cesta" de R$ 450/mês segundo a POF 2017–2018 atualizada pelo IPCA) e *todos os demais bens* ($x_2$, preço normalizado $p_2 = 1$, de modo que $x_2$ mede o gasto em reais).

    Com preferências Cobb-Douglas $U = x_1^\alpha x_2^{1-\alpha}$, a solução do Lagrange produz:

    $$x_1^* = \frac{\alpha \, m}{p_1} = \frac{0{,}22 \times 1412}{450} \approx 0{,}69 \quad ; \quad x_2^* = (1 - \alpha)\,m = 0{,}78 \times 1412 \approx \text{R\$ }1.101$$

    onde $\alpha \approx 0{,}22$ é a participação alimentar estimada pela POF para o primeiro quintil de renda. O preço-sombra $\lambda^* = \alpha^{\alpha}(1-\alpha)^{1-\alpha} m^{-1} p_1^{-\alpha}$ mede o ganho de bem-estar por real adicional de renda. Para essa família, cada R$ 1 a mais de salário vale significativamente mais em utilidade do que para famílias de renda alta — formalização direta da utilidade marginal decrescente da renda.

    **Fonte de dados:** POF 2017–2018 (IBGE/SIDRA, Tabela 7169); IPCA/IBGE; salário mínimo (Decreto 11.864/2023).

---

## 2.6 O Preço-Sombra: O Que $\lambda$ Realmente Significa {#26}

O multiplicador de Lagrange não é apenas um artifício algébrico — ele tem uma interpretação econômica profunda.

!!! definition "Multiplicador de Lagrange como preço-sombra"
    O multiplicador $\lambda^*$ mede a **taxa de variação do valor ótimo** quando a restrição é relaxada marginalmente:

    $$
    \lambda^* = \frac{dV}{dc}
    \label{eq:2.14} \tag{2.14}
    $$

    onde $V(c) = f(x^*(c))$ é o valor maximizado e $c$ é o lado direito da restrição.

**Prova:** Pelo [Teorema do Envelope](envelope.md): $dV/dc = \partial \mathcal{L}/\partial c\big|_{x^*, \lambda^*} = \lambda^*$. $\blacksquare$

### Interpretações econômicas de $\lambda$

| Problema | $\lambda^*$ mede | Nome usual | Capítulo |
|:--|:--|:--|:---:|
| Max $U$ s.a. $px = m$ | Utilidade marginal da renda | $\lambda = \partial V/\partial m$ | [4](../cap04/index.md) |
| Min $wx$ s.a. $f(x) = \bar{q}$ | Custo marginal | $\lambda = CMg = \partial C/\partial \bar{q}$ | [11](../cap11/index.md) |
| Max $W$ s.a. orçamento público | Preço-sombra do recurso público | Custo de oportunidade social | [20](../cap20/index.md) |

!!! idea "Intuição Econômica"
    **Em uma frase:** $\lambda$ é quanto você pagaria por uma unidade a mais de recurso — é o preço de mercado de uma restrição.

    **Pense assim:** Se sua renda aumentar em R$ 1, $\lambda$ diz quantas unidades de utilidade a mais você consegue. É por isso que $\lambda$ é chamado de "preço-sombra" (*shadow price*): mesmo que a restrição não tenha um preço explícito de mercado (como o orçamento público ou uma cota de emissão), $\lambda$ revela seu valor implícito.

!!! danger "Erro Comum"
    **Confundir o sinal da restrição no Lagrangeano.** Se você escreve $\mathcal{L} = f + \lambda(c - g)$ em vez de $\mathcal{L} = f - \lambda(g - c)$, o $\lambda$ sai com sinal trocado. A convenção deste livro é $\mathcal{L} = f - \lambda(g - c)$, o que garante $\lambda \geq 0$ em problemas de maximização com restrição de desigualdade ($g \leq c$). Essa convenção é consistente com Mas-Colell, Whinston e Green (1995).

### CSO com restrição: a Hessiana Orlada

No caso irrestrito, a CSO usa a Hessiana $H$. Com restrição, usamos a **Hessiana orlada** (*bordered Hessian*):

!!! definition "Hessiana Orlada"
    Para o Lagrangeano $\mathcal{L}$ com uma restrição de igualdade, a Hessiana orlada é:

    $$
    \bar{H} = \begin{pmatrix}
    0 & g_1 & g_2 \\
    g_1 & \mathcal{L}_{11} & \mathcal{L}_{12} \\
    g_2 & \mathcal{L}_{21} & \mathcal{L}_{22}
    \end{pmatrix}
    \label{eq:2.15} \tag{2.15}
    $$

    onde $g_i = \partial g/\partial x_i$ e $\mathcal{L}_{ij} = \partial^2 \mathcal{L}/\partial x_i \partial x_j$.

    Para **maximização** com $n = 2$ variáveis e $m = 1$ restrição: o ponto é máximo se $|\bar{H}| > 0$.

    **Regra geral ($n$ variáveis, $m$ restrições):** os últimos $n - m$ menores principais orlados devem ter sinal $(-1)^{m+k}$, onde $k$ indexa o menor.

!!! example "Exemplo: CSO para a Cobb-Douglas"
    Retomando o exemplo anterior com $U = x_1^{1/2}x_2^{1/2}$ e restrição $p_1x_1 + p_2x_2 = m$:

    No ótimo $(x_1^* = m/2p_1, x_2^* = m/2p_2)$, a Hessiana orlada tem determinante positivo — confirmando que é máximo. A verificação detalhada é deixada como exercício (Exercício 2.5).

??? r-interactive "R Interativo"
    ```r
    # Visualização: curvas de nível + restrição orçamentária
    x1 <- seq(0.1, 10, length.out = 100)
    x2 <- seq(0.1, 10, length.out = 100)
    grid <- expand.grid(x1 = x1, x2 = x2)

    # Utilidade: Cobb-Douglas U = x1^0.5 * x2^0.5
    grid$U <- sqrt(grid$x1) * sqrt(grid$x2)

    # Parâmetros
    p1 <- 1; p2 <- 2; m <- 10

    # Restrição orçamentária
    x2_budget <- (m - p1 * x1) / p2

    # Gráfico
    contour(x1, x2, matrix(grid$U, 100, 100),
            levels = seq(0.5, 5, by = 0.5),
            xlab = expression(x[1]), ylab = expression(x[2]),
            main = "Tangência: curva de indiferença e reta orçamentária",
            col = "steelblue")
    lines(x1, x2_budget, col = "red", lwd = 2)

    # Ótimo
    x1_star <- m / (2 * p1)
    x2_star <- m / (2 * p2)
    points(x1_star, x2_star, pch = 19, col = "red", cex = 1.5)
    text(x1_star + 0.3, x2_star + 0.3, "Ótimo", col = "red")
    ```

---

**Conexão.** O Lagrangeano assume que a restrição é *satisfeita com igualdade* — o consumidor gasta toda a renda. Mas e se ele *puder* não gastar tudo? E se houver múltiplas restrições, algumas ativas e outras não? É o território das **condições de Kuhn-Tucker**, tratadas na [Seção 2.7](kuhn-tucker.md).
