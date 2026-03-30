# Teorema do Envelope

## 2.4 No Ótimo, Só Importa o Efeito Direto {#24}

Imagine que você resolve o problema de maximização de lucro e encontra $\pi^*(p, w) = \max_q \{pq - C(q; w)\}$. Agora o preço do produto sobe em $dp$. Quanto muda o lucro ótimo? Sua primeira reação pode ser: "preciso recalcular $q^*$ para o novo preço, depois calcular o novo lucro, depois...". O Teorema do Envelope diz: **não precisa**. No ótimo, o efeito indireto (via reotimização de $q$) é zero, e só resta o efeito direto do parâmetro sobre a função objetivo.

Esse resultado — um dos mais elegantes e úteis da microeconomia — é o atalho que torna tratáveis problemas que, de outra forma, seriam algebraicamente monstruosos. Ele explica por que o Lema de Shephard ([Capítulo 11](../cap11/index.md)), a Identidade de Roy ([Capítulo 4](../cap04/index.md)) e o Lema de Hotelling ([Capítulo 12](../cap12/index.md)) funcionam — todos são instâncias do mesmo teorema.[^envelope-magic]

[^envelope-magic]: Quando perguntaram a Paul Samuelson qual era seu resultado favorito em economia, ele respondeu: "o princípio de Le Chatelier". Que é, essencialmente, o Teorema do Envelope em roupas de termodinâmica. Os físicos chegaram primeiro; os economistas chegaram com mais estilo.

### Formulação sem restrição

!!! definition "Teorema do Envelope (sem restrição)"
    Seja $f(x; \alpha)$ uma função objetivo que depende da variável de escolha $x$ e do parâmetro $\alpha$. Defina o **valor ótimo** como:

    $$
    V(\alpha) = \max_x f(x; \alpha), \quad \text{com solução } x^*(\alpha)
    $$

    Então:

    $$
    \frac{dV}{d\alpha} = \frac{\partial f}{\partial \alpha}\bigg|_{x = x^*(\alpha)}
    \label{eq:2.8} \tag{2.8}
    $$

    ou seja, a derivada do valor ótimo em relação ao parâmetro é simplesmente a derivada parcial da função objetivo avaliada no ótimo — **ignorando** o efeito indireto via $x^*(\alpha)$.

### Prova

A prova é curta e instrutiva. Pela regra da cadeia:

$$
\frac{dV}{d\alpha} = \frac{\partial f}{\partial x} \cdot \frac{dx^*}{d\alpha} + \frac{\partial f}{\partial \alpha}
$$

Mas no ótimo, a CPO garante $\partial f / \partial x\big|_{x^*} = 0$. Logo o primeiro termo se anula, e resta:

$$
\frac{dV}{d\alpha} = \frac{\partial f}{\partial \alpha}\bigg|_{x^*}
$$

$\blacksquare$

!!! idea "Intuição Econômica"
    **Em uma frase:** No topo da montanha, um empurrãozinho lateral não muda a altitude — porque a inclinação é zero lá em cima.

    **Pense assim:** Você está no ótimo, como alguém no topo de uma colina. Quando um parâmetro muda, a colina inteira se desloca. Mas como você *já estava no topo* (CPO satisfeita), o reposicionamento que o ótimo faz é de segunda ordem — tão pequeno que desaparece para variações infinitesimais. O único efeito que sobra é o direto: como a mudança no parâmetro afeta a função no ponto onde você já está.

### Formulação com restrição (Lagrangeano)

A versão restrita é igualmente poderosa e surge em praticamente todos os modelos do livro.

!!! definition "Teorema do Envelope (com restrição)"
    Considere o problema $V(\alpha) = \max_x f(x; \alpha)$ sujeito a $g(x; \alpha) = 0$. O Lagrangeano é $\mathcal{L} = f - \lambda g$. Então:

    $$
    \frac{dV}{d\alpha} = \frac{\partial \mathcal{L}}{\partial \alpha}\bigg|_{x^*, \lambda^*}
    \label{eq:2.9} \tag{2.9}
    $$

### Aplicações-chave no livro

O Teorema do Envelope é a mãe de vários resultados célebres que aparecerão nos próximos capítulos:

| Resultado | Capítulo | Problema | $\alpha$ | $V(\alpha)$ | Derivada |
|:--|:---:|:---|:---|:---|:---|
| **Identidade de Roy** | [4](../cap04/dualidade.md) | Max $U$ s.a. $px = m$ | $p_i$ | $V(p, m)$ | $x_i^* = -\frac{\partial V/\partial p_i}{\partial V/\partial m}$ |
| **Lema de Shephard** | [11](../cap11/index.md) | Min $wx$ s.a. $f(x) = \bar{q}$ | $w_i$ | $C(w, \bar{q})$ | $x_i^c = \frac{\partial C}{\partial w_i}$ |
| **Lema de Hotelling** | [12](../cap12/index.md) | Max $pq - C(q)$ | $p$ | $\pi^*(p, w)$ | $q^* = \frac{\partial \pi^*}{\partial p}$ |

!!! idea "Intuição Econômica"
    **Em uma frase:** Shephard, Roy e Hotelling não são três resultados diferentes — são três fantasias que o Teorema do Envelope veste para ir a festas diferentes.

    **Por que isso importa:** Essa unificação é uma das belezas ocultas da microeconomia. Se você entende o envelope, entende 80% da maquinaria de dualidade dos Capítulos 4–5 e 10–12 de uma vez.

!!! example "Exemplo: Envelope na função lucro"
    Firma com $\pi(q; p) = pq - q^2$. CPO: $p - 2q = 0 \Rightarrow q^*(p) = p/2$.

    Valor ótimo: $\pi^*(p) = p \cdot p/2 - (p/2)^2 = p^2/4$.

    **Pelo Teorema do Envelope:** $d\pi^*/dp = \partial(pq - q^2)/\partial p\big|_{q=q^*} = q^* = p/2$ ✓

    **Pela derivada direta:** $d(p^2/4)/dp = p/2$ ✓

    O envelope nos deu a resposta sem precisar substituir $q^*(p)$ na função objetivo — a economia de trabalho é enorme em problemas mais complexos.

??? r-interactive "R Interativo"
    ```r
    # Demonstração visual do Teorema do Envelope
    # Família de funções f(q; p) = pq - q^2 para diferentes preços p

    q <- seq(0, 5, length.out = 200)
    precos <- seq(1, 8, by = 1)
    cores <- rainbow(length(precos))

    plot(NULL, xlim = c(0, 5), ylim = c(-2, 16),
         xlab = "q", ylab = "f(q; p)",
         main = "Teorema do Envelope: a envoltória dos máximos")

    for (i in seq_along(precos)) {
      p <- precos[i]
      f_vals <- p * q - q^2
      lines(q, f_vals, col = adjustcolor(cores[i], alpha = 0.4))
      # Marcar o máximo
      q_star <- p / 2
      pi_star <- p^2 / 4
      points(q_star, pi_star, pch = 19, col = cores[i])
    }

    # Curva de envoltória: pi*(p) avaliada em q*(p) = p/2
    p_cont <- seq(1, 8, length.out = 100)
    lines(p_cont / 2, p_cont^2 / 4, lwd = 3, col = "black")
    legend("topleft", "Envoltória π*(p) = p²/4", lwd = 3, col = "black")
    ```

---

**O que vem a seguir.** O Teorema do Envelope é um atalho *dado* que estamos no ótimo. Mas como chegar ao ótimo quando há restrições? É o que veremos na [Seção 2.5 — Método de Lagrange](lagrange.md), a ferramenta mais usada de todo o livro.
