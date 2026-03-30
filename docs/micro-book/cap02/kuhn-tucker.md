# Condições de Kuhn-Tucker

## 2.7 E Se a Resposta For "Nada"? Soluções de Canto e Restrições de Desigualdade {#27}

O Lagrange funciona perfeitamente quando a restrição é uma igualdade e a solução é interior — o consumidor compra um pouco de *cada* bem. Mas o mundo real é cheio de zeros: o vegano consome zero carne; a firma que não consegue cobrir o custo variável produz zero; o investidor avesso ao risco pode alocar zero em ações. Quando a solução pode estar na *fronteira* do domínio, precisamos das condições de Kuhn-Tucker (KKT).[^knights-ni]

[^knights-ni]: *"We are the Knights Who Say 'Ni!'"* Os cavaleiros exigem condições absurdas para permitir a passagem — e se qualquer condição não for satisfeita, o deal é cancelado. As condições KKT funcionam de maneira semelhante: são um conjunto de exigências simultâneas (CPO, factibilidade, não-negatividade do multiplicador, *complementary slackness*) que *todas* devem ser satisfeitas para caracterizar o ótimo. Esqueça uma e o equilíbrio desmorona — como Arthur e seus cavaleiros descobriram ao tentar dizer "Ni" sem a licença.

### Formulação

!!! definition "Condições de Kuhn-Tucker (KKT)"
    Considere o problema:

    $$
    \max_{x \geq 0} f(x) \quad \text{sujeito a} \quad g_j(x) \leq c_j, \quad j = 1, \ldots, m
    \label{eq:2.16} \tag{2.16}
    $$

    As condições necessárias (sob *constraint qualification*) são:

    **1. CPO (estacionariedade):**

    $$
    \frac{\partial f}{\partial x_i} - \sum_{j=1}^m \lambda_j \frac{\partial g_j}{\partial x_i} \leq 0, \quad i = 1, \ldots, n
    \label{eq:2.17} \tag{2.17}
    $$

    **2. Complementary slackness (variáveis):**

    $$
    x_i \left(\frac{\partial f}{\partial x_i} - \sum_j \lambda_j \frac{\partial g_j}{\partial x_i}\right) = 0, \quad i = 1, \ldots, n
    \label{eq:2.18} \tag{2.18}
    $$

    **3. Factibilidade primal:**

    $$
    g_j(x) \leq c_j, \quad j = 1, \ldots, m
    \label{eq:2.19} \tag{2.19}
    $$

    **4. Não-negatividade dual:**

    $$
    \lambda_j \geq 0, \quad j = 1, \ldots, m
    \label{eq:2.20} \tag{2.20}
    $$

    **5. Complementary slackness (restrições):**

    $$
    \lambda_j (c_j - g_j(x)) = 0, \quad j = 1, \ldots, m
    \label{eq:2.21} \tag{2.21}
    $$

### Complementary slackness: o coração do KKT

!!! idea "Intuição Econômica"
    **Em uma frase:** *Complementary slackness* diz que, no ótimo, ou a restrição é ativa ($g_j = c_j$ e $\lambda_j > 0$) ou o recurso sobra ($g_j < c_j$ e $\lambda_j = 0$) — nunca os dois ao mesmo tempo.

    **Pense assim:** Se você não gastou toda a renda ($g < c$), então a renda não é escassa — seu preço-sombra é zero ($\lambda = 0$). Mas se a restrição é apertada ($g = c$), o recurso é valioso e $\lambda > 0$.

    **Para as variáveis:** Se o consumidor escolhe $x_i > 0$, a utilidade marginal por real deve ser exatamente igual ao preço-sombra (igualdade na CPO). Se $x_i = 0$ (solução de canto), a utilidade marginal por real pode ser *menor* que o preço-sombra — o bem "não vale o que custa".

### Solução interior vs. solução de canto

A distinção é fundamental para toda a teoria do consumidor:

| Caso | Condição | Interpretação |
|:--|:--|:--|
| **Interior** ($x_i^* > 0$) | $\frac{\partial f}{\partial x_i} = \lambda \frac{\partial g}{\partial x_i}$ | UMg/preço é igual para todos os bens consumidos |
| **Canto** ($x_i^* = 0$) | $\frac{\partial f}{\partial x_i} \leq \lambda \frac{\partial g}{\partial x_i}$ | UMg/preço é baixa demais para justificar o consumo |

No [Capítulo 4](../cap04/index.md), essa distinção aparece na escolha de cestas com bens substitutos perfeitos (o consumidor compra *apenas* o mais barato) e em soluções com preferências quase-lineares (o consumidor pode consumir zero do bem "luxo").

!!! example "Exemplo: Consumidor com dois bens e possível solução de canto"
    $U(x_1, x_2) = x_1 + 2\ln(x_2)$, sujeito a $x_1 + 4x_2 = 10$, $x_1, x_2 \geq 0$.

    **Lagrangeano:** $\mathcal{L} = x_1 + 2\ln(x_2) - \lambda(x_1 + 4x_2 - 10)$

    **KKT:**

    - $\partial \mathcal{L}/\partial x_1 = 1 - \lambda \leq 0$, $x_1(1 - \lambda) = 0$
    - $\partial \mathcal{L}/\partial x_2 = 2/x_2 - 4\lambda = 0$ (assumindo $x_2 > 0$)
    - $x_1 + 4x_2 = 10$

    **Caso 1: Interior** ($x_1 > 0$). Então $\lambda = 1$ e $2/x_2 = 4 \Rightarrow x_2 = 1/2$, $x_1 = 8$. Verificar: $U = 8 + 2\ln(0.5) = 8 - 1.39 = 6.61$.

    **Caso 2: Canto** ($x_1 = 0$). Então $4x_2 = 10 \Rightarrow x_2 = 2.5$, $\lambda = 2/(4 \cdot 2.5) = 0.2$. Verificar $1 - 0.2 = 0.8 > 0$... **viola** a CPO ($\leq 0$). Logo este caso é infactível.

    **Solução:** Interior, $x_1^* = 8$, $x_2^* = 0.5$.

### Condições suficientes

!!! definition "Suficiência via concavidade"
    Se $f$ é côncava e cada $g_j$ é convexa, as condições KKT são **necessárias e suficientes** para um máximo global.

    Na prática, funções de utilidade côncavas e restrições orçamentárias lineares (portanto convexas) satisfazem automaticamente essa condição — o que explica por que as KKT funcionam tão bem nos problemas do consumidor e da firma.

!!! danger "Erro Comum"
    **Ignorar a** ***constraint qualification*****.** As condições KKT exigem que os gradientes das restrições ativas sejam linearmente independentes no ótimo. Quando isso falha (caso raro mas possível), o KKT pode não ser necessário. Em termos práticos: se a restrição tem uma "ponta" (não é diferenciável) no ótimo, cuidado.

??? r-interactive "R Interativo"
    ```r
    # Solução de canto vs. interior
    # U = x1 + 2*ln(x2), restrição: x1 + 4*x2 = 10

    x2 <- seq(0.01, 2.5, length.out = 200)
    x1 <- 10 - 4 * x2
    x1[x1 < 0] <- NA

    U <- x1 + 2 * log(x2)

    plot(x2, U, type = "l", lwd = 2, col = "steelblue",
         xlab = expression(x[2]), ylab = "U",
         main = "Utilidade ao longo da restrição orçamentária")

    # Ótimo
    x2_star <- 0.5
    U_star <- (10 - 4*0.5) + 2*log(0.5)
    points(x2_star, U_star, pch = 19, col = "red", cex = 1.5)
    text(x2_star + 0.15, U_star, paste0("x2*=", x2_star), col = "red")
    abline(v = x2_star, lty = 2, col = "red")
    ```

---

**Conexão.** O Lagrange e o KKT nos dizem *como* encontrar o ótimo. Mas nem sempre nos dizem se as CPOs *bastam*. A resposta depende da **curvatura** da função objetivo — e é precisamente isso que a [Seção 2.8](curvatura.md) examina: concavidade, convexidade e quase-concavidade.
