# Complementos: Integração, Dinâmica, Estatística e Ponto Fixo

As seções anteriores cobriram o núcleo da caixa de ferramentas: otimização, Lagrange, Kuhn-Tucker, curvatura. Estas quatro seções complementares cobrem tópicos que não são usados em *todos* os capítulos, mas que são indispensáveis em capítulos específicos. Use-as como referência — volte quando o capítulo relevante exigir.

## 2.10 Integração e Excedentes {#210}

A integração é a operação inversa da derivação — e, em microeconomia, seu papel central é calcular **excedentes** e **variações de bem-estar**.

### Integral definida e área sob a curva

!!! definition "Integral Definida"
    Se $f$ é contínua em $[a, b]$:

    $$
    \int_a^b f(x)\,dx = F(b) - F(a)
    \label{eq:2.26} \tag{2.26}
    $$

    onde $F$ é uma primitiva de $f$ ($F' = f$).

### Aplicações econômicas

| Integral | Capítulo | Significado |
|:--|:---:|:---|
| $\int_0^{q^*} P(q)\,dq - p^*q^*$ | [5](../cap05/excedente.md), [13](../cap13/index.md) | **Excedente do consumidor** |
| $p^*q^* - \int_0^{q^*} CMg(q)\,dq$ | [12](../cap12/index.md), [13](../cap13/index.md) | **Excedente do produtor** |
| $\int_{p^0}^{p^1} x^h(p, \bar{u})\,dp$ | [5](../cap05/excedente.md) | **Variação compensatória** (VC) |

!!! idea "Intuição Econômica"
    **Em uma frase:** O excedente do consumidor é a área entre a curva de demanda e o preço — mede "quanto o consumidor pagaria *a mais* do que efetivamente paga".

    **Pense assim:** Se você estava disposto a pagar R$ 50 por um ingresso mas pagou R$ 30, seu excedente naquela unidade é R$ 20. Some isso para todas as unidades e você tem o excedente total — que é geometricamente a área do triângulo (ou trapézio) entre demanda e preço.

!!! example "Exemplo: Excedente com demanda linear"
    Demanda: $P(q) = 100 - 2q$. Preço de mercado: $p^* = 40$. Quantidade: $q^* = 30$.

    $$EC = \int_0^{30} (100 - 2q)\,dq - 40 \times 30 = [100q - q^2]_0^{30} - 1200 = 2100 - 1200 = 900$$

---

## 2.11 Equações Diferenciais e Dinâmica Intertemporal {#211}

Quando as decisões envolvem o **tempo** — poupar, investir, extrair recursos —, precisamos de equações diferenciais. O modelo mais importante neste livro é a **equação de Euler intertemporal**, que governa as decisões de consumo ao longo do tempo ([Capítulo 18](../cap18/index.md)).

### Equações diferenciais ordinárias (EDO)

!!! definition "EDO Linear de Primeira Ordem"
    Uma EDO da forma:

    $$
    \frac{dy}{dt} + a(t) y = b(t)
    \label{eq:2.27} \tag{2.27}
    $$

    tem solução geral via fator integrante: $\mu(t) = e^{\int a(t)\,dt}$.

### A equação de Euler intertemporal

O consumidor que maximiza utilidade ao longo do tempo resolve:

$$
\max \int_0^T e^{-\rho t} U(c(t))\,dt \quad \text{s.a.} \quad \dot{W} = rW - c
$$

A CPO (via cálculo de variações ou princípio do máximo de Pontryagin) gera:

$$
\frac{\dot{c}}{c} = \frac{r - \rho}{\sigma}
\label{eq:2.28} \tag{2.28}
$$

onde $\sigma = -cU''/U'$ é a elasticidade de substituição intertemporal e $\rho$ é a taxa de desconto subjetiva.

!!! idea "Intuição Econômica"
    **Em uma frase:** O consumo cresce ao longo do tempo se e somente se o retorno do investimento ($r$) supera a impaciência ($\rho$).

    **Onde aparece:** No [Capítulo 18](../cap18/index.md), essa equação fundamenta o modelo de Fisher de consumo intertemporal. No [Capítulo 8](../cap08/index.md), a inconsistência temporal do desconto hiperbólico viola exatamente essa condição.

### Valor presente e desconto

$$
VP = \int_0^T e^{-rt} f(t)\,dt \quad \text{(tempo contínuo)} \quad \text{ou} \quad VP = \sum_{t=0}^T \frac{f_t}{(1+r)^t} \quad \text{(discreto)}
\label{eq:2.29} \tag{2.29}
$$

Aplicações diretas: VPL e TIR ([Seções 18.6–18.7](../cap18/index.md)), Regra de Hotelling para recursos naturais ([Seção 18.11](../cap18/index.md)), custo social do carbono ([Capítulo 24](../cap24/index.md)).

---

## 2.12 Probabilidade e Estatística para Economistas {#212}

A teoria da escolha sob incerteza ([Capítulo 7](../cap07/index.md)) e a economia comportamental ([Capítulo 8](../cap08/index.md)) exigem um vocabulário mínimo de probabilidade.

### Conceitos essenciais

!!! definition "Valor Esperado e Variância"
    Para uma variável aleatória discreta $X$ com realizações $x_i$ e probabilidades $p_i$:

    $$
    E[X] = \sum_i p_i x_i
    \label{eq:2.30} \tag{2.30}
    $$

    $$
    Var(X) = E[(X - E[X])^2] = E[X^2] - (E[X])^2
    \label{eq:2.31} \tag{2.31}
    $$

### Desigualdade de Jensen

!!! definition "Desigualdade de Jensen"
    Se $f$ é **côncava** e $X$ é uma variável aleatória:

    $$
    E[f(X)] \leq f(E[X])
    \label{eq:2.32} \tag{2.32}
    $$

    Se $f$ é **convexa**, a desigualdade se inverte.

!!! idea "Intuição Econômica"
    **Em uma frase:** A Desigualdade de Jensen é a formalização matemática da aversão ao risco: com utilidade côncava, o agente prefere o valor esperado da loteria ($U(E[X])$) à loteria em si ($E[U(X)]$).

    **Onde aparece:** É o fundamento do prêmio de risco e do equivalente de certeza no [Capítulo 7, Seção 7.3](../cap07/risco.md). Também é essencial na prova de que a diversificação reduz o risco ([Seção 7.6](../cap07/ferramentas.md)).

### Teorema de Bayes

$$
P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}
\label{eq:2.33} \tag{2.33}
$$

Aplicação direta: atualização de crenças nos jogos bayesianos ([Capítulo 9c](../cap09c/index.md)) e na sinalização ([Capítulo 9d](../cap09d/index.md)).

---

## 2.13 Teoremas de Ponto Fixo e Existência de Equilíbrio {#213}

O equilíbrio de Nash ([Capítulo 9a](../cap09a/index.md)) e o equilíbrio geral walrasiano ([Capítulo 14](../cap14/index.md)) são **pontos fixos** de certas funções. Provar que eles *existem* requer teoremas de ponto fixo — ferramentas que garantem que uma função "se intercepta consigo mesma".[^ministry-ponto-fixo]

[^ministry-ponto-fixo]: O *Ministry of Silly Walks* é um ponto fixo institucional: uma burocracia cujo único produto é justificar a própria existência. O input (financiamento público) gera o output (caminhadas absurdas) que gera a demanda (por mais financiamento) que gera o input. O Teorema de Brouwer garante que tais ciclos autorreferentes possuem pelo menos um ponto estacionário — que, no caso do Ministério, é o orçamento de equilíbrio.

### Teorema de Brouwer

!!! definition "Teorema do Ponto Fixo de Brouwer"
    Seja $f: S \to S$ uma função **contínua**, onde $S \subseteq \mathbb{R}^n$ é **compacto** e **convexo**. Então existe $x^* \in S$ tal que:

    $$
    f(x^*) = x^*
    \label{eq:2.34} \tag{2.34}
    $$

!!! idea "Intuição Econômica"
    **Em uma frase:** Se você amassa um mapa e o coloca sobre o mapa original, pelo menos um ponto do mapa amassado está diretamente sobre sua posição original.

    **Aplicação:** No [Capítulo 14](../cap14/index.md), a função de excesso de demanda $z(p)$ mapeia preços em "desequilíbrios". O equilíbrio walrasiano é o vetor de preços $p^*$ onde $z(p^*) = 0$ — um ponto fixo de $p \mapsto p + z(p)$ (após normalização). Brouwer garante que ele existe, desde que $z$ seja contínua e definida num simplex de preços (compacto e convexo).

### Teorema de Kakutani

Para equilíbrios de Nash em que as melhores respostas podem ser **correspondências** (conjuntos, não funções), usa-se a generalização de Kakutani:

!!! definition "Teorema do Ponto Fixo de Kakutani"
    Seja $\Phi: S \rightrightarrows S$ uma correspondência de $S$ compacto e convexo em si mesmo, com gráfico fechado e valores convexos. Então existe $x^* \in S$ tal que $x^* \in \Phi(x^*)$.

**Aplicação:** Nash (1950) usou Kakutani para provar a existência de equilíbrio em jogos finitos. A correspondência de melhor resposta $BR_i(s_{-i})$ mapeia estratégias dos adversários no conjunto de melhores respostas do jogador $i$. O equilíbrio de Nash é um ponto fixo da correspondência conjunta $BR = (BR_1, \ldots, BR_n)$ — detalhes no [Capítulo 9a, Seção 9a.3](../cap09a/index.md).

### Contração e unicidade

!!! definition "Teorema do Mapeamento Contrativo (Banach)"
    Se $f: S \to S$ é uma **contração** ($\|f(x) - f(y)\| \leq c\|x - y\|$ com $c < 1$) em um espaço métrico completo, então o ponto fixo existe e é **único**.

    Esse teorema é mais forte que Brouwer (garante unicidade) mas exige mais (contração). Em economia, é usado para provar unicidade de equilíbrios em modelos dinâmicos (programação dinâmica, [Capítulo 18](../cap18/index.md)).

??? r-interactive "R Interativo"
    ```r
    # Ilustração visual do Teorema de Brouwer em 1D
    # f: [0,1] -> [0,1] contínua => existe x* com f(x*) = x*

    x <- seq(0, 1, length.out = 200)

    # Exemplo: f(x) = 0.5 + 0.3*sin(2*pi*x)
    f <- function(x) 0.5 + 0.3 * sin(2 * pi * x)

    plot(x, f(x), type = "l", lwd = 2, col = "steelblue",
         xlab = "x", ylab = "f(x)",
         main = "Teorema de Brouwer: f contínua de [0,1] em [0,1]",
         xlim = c(0, 1), ylim = c(0, 1))
    lines(x, x, lty = 2, col = "gray50", lwd = 1.5)  # 45 graus

    # Encontrar ponto fixo numericamente
    pf <- uniroot(function(x) f(x) - x, c(0, 1))$root
    points(pf, pf, pch = 19, col = "red", cex = 1.5)
    text(pf + 0.05, pf - 0.05, paste0("x* = ", round(pf, 3)), col = "red")
    legend("topleft", c("f(x)", "45°", "Ponto fixo"),
           col = c("steelblue", "gray50", "red"),
           lty = c(1, 2, NA), pch = c(NA, NA, 19), lwd = c(2, 1.5, NA))
    ```

---

## 2.14 Tabela de Referência Rápida: Otimização {#214}

Esta tabela resume os principais resultados do capítulo. Consulte-a sempre que precisar lembrar qual ferramenta usar em cada tipo de problema.

| Tipo de problema | Ferramenta | CPO | CSO | Capítulos |
|:--|:--|:--|:--|:---:|
| Max/min sem restrição, 1 var. | Derivada | $f'(x^*) = 0$ | $f'' \lessgtr 0$ | Todos |
| Max/min sem restrição, $n$ var. | Gradiente + Hessiana | $\nabla f = 0$ | $H$ def. neg./pos. | 10, 12 |
| Max/min com restrição de igualdade | Lagrange | $\nabla f = \lambda \nabla g$ | Hessiana orlada | 3–6, 11 |
| Max/min com restrição de desigualdade | Kuhn-Tucker | $\nabla \mathcal{L} \leq 0$, CS | Concavidade/convexidade | 4, 11, 15 |
| Como o ótimo muda com o parâmetro? | TFI ou Envelope | $dV/d\alpha = \partial \mathcal{L}/\partial \alpha$ | — | 4–6, 11–12 |
| O ótimo existe? | Ponto fixo (Brouwer/Kakutani) | — | — | 9a, 14 |
| O ótimo é global? | Concavidade/quase-concavidade | CPO basta se $f$ côncava | — | 3–4, 7, 10 |

!!! tip "Dica de estudo"
    Se você se perder em algum capítulo subsequente, volte a esta tabela. A microeconomia inteira é, em última análise, uma coleção de problemas de otimização com interpretações econômicas diferentes. A matemática é sempre a mesma — são os nomes que mudam.

---

**Parabéns — você sobreviveu.** Com as ferramentas deste capítulo, você está armado para enfrentar o restante do livro. No [Capítulo 3](../cap03/index.md), começamos a usá-las de verdade: as preferências do consumidor ganham forma matemática, as curvas de indiferença emergem como curvas de nível de funções de utilidade, e a TMS aparece como aplicação direta do Teorema da Função Implícita. A caixa de ferramentas está aberta — agora vamos construir.
