# Pré-Aula 03 — Preferências, Axiomas e Utilidade

!!! info "Leitura obrigatória"
    **Cap. 3, Seções 3.1–3.3** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

1. Enunciar e interpretar os 4 axiomas de preferência racional
2. Explicar por que curvas de indiferença não se cruzam
3. Calcular a TMS para funções utilidade clássicas

---

## 1. O ponto de partida: preferências

Antes de falar em "utilidade" ou "demanda", precisamos de uma base: como o consumidor **compara** cestas de bens?

Dado duas cestas $A = (x_A, y_A)$ e $B = (x_B, y_B)$:

- $A \succ B$: "prefere $A$ estritamente a $B$"
- $A \sim B$: "indiferente entre $A$ e $B$"
- $A \succeq B$: "prefere $A$ ou é indiferente"

---

## 2. Os axiomas de racionalidade

Para que preferências gerem comportamento previsível, assumimos:

| Axioma | Significado | Consequência |
|:---|:---|:---|
| **Completude** | Para quaisquer $A, B$: ou $A \succeq B$ ou $B \succeq A$ (ou ambos) | Sempre consegue comparar |
| **Transitividade** | Se $A \succeq B$ e $B \succeq C$, então $A \succeq C$ | Sem ciclos de preferência |
| **Continuidade** | Pequenas mudanças na cesta não causam "saltos" de preferência | Garante utilidade contínua |
| **Monotonicidade** | Se $A$ tem mais de tudo que $B$, então $A \succ B$ | "Mais é melhor" |

!!! note "Intuição Econômica"
    **Por que transitividade importa?**

    Sem ela, alguém poderia preferir A a B, B a C, e C a A. Um vendedor esperto cobraria para "trocar" entre as opções infinitamente — o consumidor perderia dinheiro sem ganhar nada. A transitividade impede esse tipo de exploração.

---

## 3. De preferências a utilidade

**Teorema de Debreu (1954):** Se $\succeq$ satisfaz completude, transitividade e continuidade, existe uma função contínua $U: \mathbb{R}^n_+ \to \mathbb{R}$ tal que:

$$x \succeq y \iff U(x) \geq U(y)$$

A utilidade é **ordinal** (não cardinal): se $U$ representa $\succeq$, qualquer transformação monotônica $V = f(U)$ (com $f' > 0$) também representa.

> $U = xy$ e $V = \ln x + \ln y$ representam as **mesmas preferências**.

---

## 4. Curvas de indiferença

Uma curva de indiferença é o conjunto de cestas que dão a **mesma utilidade**:

$$\{(x, y) : U(x,y) = \bar{U}\}$$

### Propriedades

1. **Preenchem todo o espaço** (completude)
2. **Não se cruzam** (transitividade)
3. **Decrescentes** (monotonicidade)
4. **Convexas** (preferências convexas — diversificação é boa)

---

## Gráfico interativo: mapa de curvas de indiferença

<div id="graph-indifference" style="min-height: 450px;">
<iframe src="../../graficos/cap03/curvas-indiferenca.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Mude os parâmetros $a$ e $\rho$ com os sliders
    - Observe como as curvas mudam de retas (substitutos) para L's (complementares)
    - Arraste um ponto ao longo da curva e observe a TMS mudar

---

## 5. Taxa Marginal de Substituição (TMS)

$$\text{TMS}_{x,y} = -\frac{dy}{dx}\bigg|_{\bar{U}} = \frac{UMg_x}{UMg_y} = \frac{\partial U / \partial x}{\partial U / \partial y}$$

> "Quanto de $y$ o consumidor aceita **perder** por 1 unidade a mais de $x$, mantendo utilidade constante."

A TMS é **decrescente** ao longo da curva (para preferências convexas): quanto mais $x$ já tem, menos $y$ aceita trocar.

!!! example "Cálculo da TMS"
    Para $U(x,y) = x \cdot y$:

    $UMg_x = y$, $UMg_y = x$

    $\text{TMS} = \frac{y}{x}$

    No ponto $(4, 2)$: TMS $= 2/4 = 0{,}5$

    "Aceita perder 0,5 unidades de $y$ por 1 unidade a mais de $x$."

---

## 6. As funções utilidade clássicas

| Função | Forma | TMS | Curvas | Exemplo |
|:---|:---|:---|:---|:---|
| **Linear** | $\alpha x + \beta y$ | $\alpha/\beta$ (constante) | Retas | Marcas de arroz |
| **Leontief** | $\min\{\alpha x, \beta y\}$ | 0 ou ∞ | L | Sapato E/D |
| **Cobb-Douglas** | $x^a y^{1-a}$ | $\frac{ay}{(1-a)x}$ | Hipérboles | Caso geral |
| **CES** | $(x^\rho + y^\rho)^{1/\rho}$ | $(y/x)^{1-\rho}$ | Variável | Generaliza tudo |

---

## Box: Preferências reveladas — o que suas compras dizem sobre você

!!! note "Intuição Econômica"
    Na prática, não observamos preferências diretamente — observamos **escolhas**. O economista Paul Samuelson mostrou que, sob certas condições, as escolhas observadas **revelam** as preferências subjacentes.

    Se João escolheu a cesta $A$ quando $B$ estava disponível e custava menos, podemos inferir que $A \succeq B$.

    Essa ideia é a base da **teoria das preferências reveladas** — extraímos preferências a partir de dados de consumo, sem perguntar nada ao consumidor.

---

## Exercícios de preparação

**Exercício 1.** Se um consumidor prefere A a B e B a C, mas prefere C a A, qual axioma é violado?

??? success "Solução"
    **Transitividade.** $A \succ B$ e $B \succ C$ deveriam implicar $A \succ C$, mas temos $C \succ A$.

**Exercício 2.** Prove que curvas de indiferença não podem se cruzar.

??? success "Solução"
    Suponha cruzamento no ponto $C$. Então $C \in CI_A$ e $C \in CI_B$, logo $U(C) = U(A)$ e $U(C) = U(B)$, o que implica $U(A) = U(B)$. Mas $A$ e $B$ estão em curvas diferentes (por hipótese). Contradição com a definição.

**Exercício 3.** Calcule a TMS para $U(x,y) = x^{0.3} y^{0.7}$ no ponto $(10, 5)$.

??? success "Solução"
    $\text{TMS} = \frac{0{,}3 \cdot y}{0{,}7 \cdot x} = \frac{0{,}3(5)}{0{,}7(10)} = \frac{1{,}5}{7} \approx 0{,}214$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O que o axioma de completude garante?

- [x] (a) O consumidor sempre consegue comparar duas cestas
- [ ] (b) O consumidor sempre prefere mais a menos
- [ ] (c) As preferências são contínuas
- [ ] (d) Não existem ciclos de preferência

**Q2.** Se $A \succ B$ e $B \succ C$, mas $C \succ A$, qual axioma é violado?

- [ ] (a) Completude
- [x] (b) Transitividade
- [ ] (c) Continuidade
- [ ] (d) Monotonicidade

**Q3.** Curvas de indiferença de um consumidor racional podem se cruzar?

- [ ] (a) Sim, se as preferências são convexas
- [x] (b) Não — violaria transitividade
- [ ] (c) Sim, no ponto de saciedade
- [ ] (d) Depende da função utilidade

**Q4.** O que a TMS mede?

- [ ] (a) A inclinação da restrição orçamentária
- [x] (b) A taxa à qual o consumidor troca $y$ por $x$ mantendo utilidade constante
- [ ] (c) A utilidade marginal de $x$
- [ ] (d) O preço relativo dos bens

**Q5.** Se $U(x,y) = x \cdot y$, qual é a TMS no ponto $(4, 2)$?

- [ ] (a) 2
- [x] (b) 0,5
- [ ] (c) 8
- [ ] (d) 1

</div>

---

!!! abstract "Próxima aula"
    **Aula 03**: Mini-lecture sobre axiomas e utilidade + 3 questões de Peer Instruction sobre propriedades de preferências.
