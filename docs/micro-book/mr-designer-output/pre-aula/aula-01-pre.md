# Pré-Aula 01 — Ferramentas Matemáticas do Economista

!!! info "Leitura obrigatória"
    **Cap. 2, Seções 2.1–2.4** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Resolver problemas de otimização sem restrição (CPO e CSO)
2. Calcular derivadas parciais e montar o gradiente
3. Formular o Lagrangiano para problemas com restrição de igualdade

---

## 1. Por que otimização?

Quase todo problema em Microeconomia se reduz a uma forma:

$$\max_{x} f(x) \quad \text{sujeito a} \quad g(x) \leq c$$

O consumidor maximiza **utilidade** sujeito ao orçamento. A firma minimiza **custos** sujeita a uma meta de produção. O monopolista maximiza **lucro** escolhendo preço ou quantidade.

As ferramentas desta aula são o motor matemático de todo o curso.

---

## 2. Otimização univariada — revisão

Dada $f(x)$, queremos encontrar $x^*$ que maximiza (ou minimiza) $f$.

**Condição de Primeira Ordem (CPO):**

$$f'(x^*) = 0$$

A CPO identifica os **candidatos** — pontos onde a inclinação é zero.

**Condição de Segunda Ordem (CSO):**

$$f''(x^*) < 0 \implies \text{máximo local}$$
$$f''(x^*) > 0 \implies \text{mínimo local}$$

!!! example "Exemplo rápido"
    $f(x) = -2x^2 + 12x - 10$

    CPO: $f'(x) = -4x + 12 = 0 \implies x^* = 3$

    CSO: $f''(x) = -4 < 0$ ✓ É máximo.

    $f(3) = -18 + 36 - 10 = 8$

---

## 3. Funções multivariáveis

Quando a função depende de mais de uma variável — $f(x, y)$ — usamos **derivadas parciais**:

$$\frac{\partial f}{\partial x} \quad \text{(derivada em relação a } x \text{, mantendo } y \text{ constante)}$$

O **gradiente** é o vetor de todas as parciais:

$$\nabla f = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}\right)$$

A **Hessiana** é a matriz de derivadas segundas:

$$H = \begin{pmatrix} f_{xx} & f_{xy} \\ f_{yx} & f_{yy} \end{pmatrix}$$

Para um máximo sem restrição: $\nabla f = \mathbf{0}$ e $H$ definida negativa.

---

## 4. O Lagrangiano — a ferramenta central

Quando há uma **restrição** (por exemplo, orçamento limitado), não podemos simplesmente fazer $\nabla f = 0$. Precisamos incorporar a restrição.

**O método**: criar uma nova função que combina o objetivo com a restrição:

$$\mathcal{L}(x, y, \lambda) = f(x, y) + \lambda \big[ c - g(x, y) \big]$$

Onde $\lambda$ é o **multiplicador de Lagrange**.

**As CPOs** (3 equações, 3 incógnitas — $x, y, \lambda$):

$$\frac{\partial \mathcal{L}}{\partial x} = f_x - \lambda g_x = 0$$

$$\frac{\partial \mathcal{L}}{\partial y} = f_y - \lambda g_y = 0$$

$$\frac{\partial \mathcal{L}}{\partial \lambda} = c - g(x,y) = 0$$

Das duas primeiras equações: $\frac{f_x}{f_y} = \frac{g_x}{g_y}$ — **condição de tangência**.

---

## Gráfico interativo: otimização com restrição

<div id="graph-lagrange" style="min-height: 450px;">
<iframe src="../../graficos/cap02/lagrangiano.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Mova os sliders de preço ($p_x$, $p_y$) e renda ($I$)
    - Observe como a restrição orçamentária rotaciona e desloca
    - Note que o ponto ótimo está sempre na **tangência**

---

## 5. Interpretação de $\lambda$

O multiplicador $\lambda^*$ tem uma interpretação econômica poderosa:

$$\lambda^* = \frac{\partial f^*}{\partial c}$$

> **$\lambda^*$ mede quanto o valor ótimo melhora se a restrição relaxar em 1 unidade.**

No problema do consumidor: $\lambda^* = \frac{\partial U^*}{\partial I}$ — a **utilidade marginal da renda**.

Se $\lambda^* = 0{,}05$ e a renda sobe de $100$ para $101$: a utilidade sobe aproximadamente $0{,}05$.

---

## Box: O Lagrangiano na prática

!!! note "Intuição Econômica"
    **Por que o Lagrangiano funciona?**

    Geometricamente, o ótimo com restrição ocorre onde as curvas de nível de $f$ são **tangentes** à curva de restrição. Nesse ponto, os gradientes de $f$ e $g$ são paralelos:

    $$\nabla f = \lambda \nabla g$$

    O $\lambda$ é o "fator de proporcionalidade" entre os gradientes. Economicamente, ele nos diz o **preço-sombra** da restrição — quanto pagaríamos para relaxá-la.

---

## Exercícios de preparação

**Exercício 1.** Encontre o máximo de $f(x) = -x^2 + 8x - 12$.

??? success "Solução"
    $f'(x) = -2x + 8 = 0 \implies x^* = 4$

    $f''(x) = -2 < 0$ ✓ Máximo.

    $f(4) = -16 + 32 - 12 = 4$

**Exercício 2.** Para $f(x,y) = x^2 y + xy^2$, calcule $\frac{\partial f}{\partial x}$ e $\frac{\partial f}{\partial y}$.

??? success "Solução"
    $f_x = 2xy + y^2$

    $f_y = x^2 + 2xy$

**Exercício 3.** Maximize $U = x^{1/2} y^{1/2}$ sujeito a $2x + 4y = 100$. Encontre $x^*$, $y^*$ e $\lambda^*$.

??? success "Solução"
    $\mathcal{L} = x^{1/2}y^{1/2} + \lambda(100 - 2x - 4y)$

    CPOs: $\frac{1}{2}x^{-1/2}y^{1/2} = 2\lambda$ e $\frac{1}{2}x^{1/2}y^{-1/2} = 4\lambda$

    Dividindo: $y/x = 1/2 \implies x = 2y$

    Substituindo: $4y + 4y = 100 \implies y^* = 12{,}5$, $x^* = 25$

    $U^* = 5\sqrt{5} \approx 11{,}18$; $\lambda^* \approx 0{,}056$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Dada $f(x) = 3x^2 - 12x + 5$, qual é o ponto crítico e é máximo ou mínimo?

- [ ] (a) $x = 2$, máximo
- [x] (b) $x = 2$, mínimo
- [ ] (c) $x = 4$, máximo
- [ ] (d) $x = 4$, mínimo

**Q2.** Para $f(x,y) = x^2 y + xy^2$, qual é $\frac{\partial f}{\partial x}$?

- [ ] (a) $2x + y^2$
- [x] (b) $2xy + y^2$
- [ ] (c) $x^2 + 2xy$
- [ ] (d) $2xy + 2y$

**Q3.** O que significa a CSO $f''(x^*) < 0$?

- [ ] (a) O ponto é um mínimo
- [x] (b) O ponto é um máximo
- [ ] (c) O ponto é um ponto de inflexão
- [ ] (d) A função é côncava em todo domínio

**Q4.** No Lagrangiano, o que o multiplicador $\lambda$ representa?

- [ ] (a) O valor ótimo da função objetivo
- [ ] (b) A inclinação da restrição
- [x] (c) A sensibilidade do ótimo a mudanças na restrição
- [ ] (d) O número de variáveis do problema

**Q5.** V ou F: "Se a CPO é satisfeita, o ponto é necessariamente um máximo."

- [ ] (a) Verdadeiro
- [x] (b) Falso — a CPO é condição necessária, não suficiente

</div>

---

!!! abstract "Próxima aula"
    **Aula 01**: Mini-lecture sobre otimização + Lagrangiano com exercícios guiados. Traga calculadora!
