# Pré-Aula 04 — Utilidade e Curvas de Indiferença

!!! info "Leitura obrigatória"
    **Cap. 3, Seções 3.4–3.6** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Calcular a Taxa Marginal de Substituição (TMS) e interpretá-la geometricamente
2. Identificar e trabalhar com as principais funções de utilidade: Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES e quase-linear
3. Explicar o princípio da TMS decrescente e sua relação com a convexidade das preferências

---

## 1. Taxa Marginal de Substituição (TMS)

A TMS mede a taxa à qual o consumidor está disposto a trocar $x_2$ por $x_1$ ao longo de uma curva de indiferença:

$$\text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}}$$

Usando o diferencial total $du = u_1 dx_1 + u_2 dx_2 = 0$ ao longo da curva:

$$\text{TMS}_{12} = \frac{u_1}{u_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2}$$

onde $u_i = \partial u / \partial x_i$ é a utilidade marginal do bem $i$.

!!! note "Intuição Econômica"
    A TMS é a "taxa de câmbio subjetiva" do consumidor. Se $\text{TMS}_{12} = 3$, ele está disposto a trocar até 3 unidades de $x_2$ por 1 unidade adicional de $x_1$. Se o mercado oferece essa troca por menos de 3 (ou seja, $p_1/p_2 < 3$), ele compra mais $x_1$.

### TMS decrescente

A convexidade das preferências implica que a TMS é **decrescente** ao longo da curva de indiferença: quanto mais $x_1$ o consumidor já possui, menos $x_2$ ele está disposto a ceder por mais uma unidade de $x_1$.

## Gráfico interativo: TMS em um ponto

<iframe src="graficos/cap03/tms-ponto.html"></iframe>

!!! tip "Explore o gráfico"
    Arraste o ponto ao longo da curva de indiferença e observe como a reta tangente (cuja inclinação é $-\text{TMS}$) muda. Verifique que a TMS diminui à medida que você se move para a direita.

---

## 2. Funções de utilidade clássicas

### 2.1 Cobb-Douglas

$$u(x_1, x_2) = x_1^a x_2^b \quad (a, b > 0)$$

Propriedades:

- TMS: $\text{TMS}_{12} = \frac{a}{b} \cdot \frac{x_2}{x_1}$ — decrescente em $x_1$
- Curvas de indiferença: hipérboles convexas que nunca tocam os eixos
- Fração da renda gasta em cada bem é constante: $\frac{a}{a+b}$ em $x_1$, $\frac{b}{a+b}$ em $x_2$

A transformação monotônica $v = a \ln x_1 + b \ln x_2$ é equivalente e mais conveniente para cálculos.

### 2.2 Substitutos perfeitos

$$u(x_1, x_2) = ax_1 + bx_2 \quad (a, b > 0)$$

- TMS: $a/b$ — **constante** em todos os pontos
- Curvas de indiferença: retas paralelas com inclinação $-a/b$
- O consumidor só se importa com a "quantidade total ponderada"

### 2.3 Complementos perfeitos

$$u(x_1, x_2) = \min\{ax_1, bx_2\} \quad (a, b > 0)$$

- TMS: indefinida no vértice ($ax_1 = bx_2$); zero ou infinita nos segmentos
- Curvas de indiferença: formato de "L" com vértice na reta $x_2 = (a/b)x_1$
- O consumidor sempre consome na proporção $x_1/x_2 = b/a$

### 2.4 CES (Elasticidade de Substituição Constante)

$$u(x_1, x_2) = \left(\alpha x_1^\rho + (1-\alpha) x_2^\rho\right)^{1/\rho} \quad (\rho \leq 1, \rho \neq 0)$$

O parâmetro $\rho$ controla a curvatura. A **elasticidade de substituição** é:

$$\sigma = \frac{1}{1 - \rho}$$

Casos especiais:

| $\rho$ | $\sigma$ | Tipo |
|---------|----------|------|
| $\rho \to 1$ | $\sigma \to \infty$ | Substitutos perfeitos |
| $\rho \to 0$ | $\sigma = 1$ | Cobb-Douglas |
| $\rho \to -\infty$ | $\sigma \to 0$ | Complementos perfeitos |

!!! note "Intuição Econômica"
    A família CES unifica os três tipos clássicos num único framework. A elasticidade de substituição $\sigma$ mede quão facilmente o consumidor troca um bem pelo outro: $\sigma$ alto = fácil substituição; $\sigma$ baixo = difícil.

### 2.5 Quase-linear

$$u(x_1, x_2) = v(x_1) + x_2 \quad \text{com~} v' > 0, \; v'' < 0$$

- TMS: $v'(x_1)$ — depende **apenas** de $x_1$
- Curvas de indiferença: translações verticais umas das outras
- Não há efeito renda para o bem 1 (toda renda extra vai para $x_2$)

## Gráfico interativo: Funções de Utilidade

<iframe src="graficos/cap03/funcoes-utilidade.html"></iframe>

!!! tip "Explore o gráfico"
    Selecione diferentes funções de utilidade e ajuste os parâmetros. Compare a forma das curvas de indiferença entre Cobb-Douglas, CES e quase-linear.

## Gráfico interativo: Família CES

<iframe src="graficos/cap03/ces-continua.html"></iframe>

!!! tip "Explore o gráfico"
    Varie o parâmetro $\rho$ continuamente e observe a transição suave entre substitutos perfeitos ($\rho \to 1$), Cobb-Douglas ($\rho \to 0$) e complementos perfeitos ($\rho \to -\infty$).

---

## Exercícios de preparação

**Exercício 1.** Para $u(x_1,x_2) = x_1^{1/3} x_2^{2/3}$, calcule a TMS no ponto $(8, 4)$. Interprete o resultado.

??? success "Solução"
    $\text{TMS}_{12} = \frac{a}{b} \cdot \frac{x_2}{x_1} = \frac{1/3}{2/3} \cdot \frac{4}{8} = \frac{1}{2} \cdot \frac{1}{2} = \frac{1}{4}$. O consumidor está disposto a ceder no máximo $1/4$ de unidade de $x_2$ por uma unidade adicional de $x_1$. Ele já tem relativamente bastante $x_1$, então valoriza pouco uma unidade extra.

**Exercício 2.** Um consumidor tem utilidade $u = 2x_1 + 3x_2$ (substitutos perfeitos). Se $p_1 = 4$, $p_2 = 9$ e $I = 36$, qual cesta ele escolhe?

??? success "Solução"
    A TMS é $a/b = 2/3$. A razão de preços é $p_1/p_2 = 4/9$. Como $\text{TMS} = 2/3 > 4/9 = p_1/p_2$, o consumidor valoriza $x_1$ relativamente mais do que o mercado. Solução de canto: gasta tudo em $x_1$. $x_1^* = I/p_1 = 36/4 = 9$, $x_2^* = 0$.

**Exercício 3.** Para a função CES $u = (x_1^\rho + x_2^\rho)^{1/\rho}$, mostre que quando $\rho \to 0$, a TMS converge para $x_2/x_1$ (caso Cobb-Douglas com pesos iguais).

??? success "Solução"
    A TMS da CES é $\text{TMS} = \frac{x_1^{\rho-1}}{x_2^{\rho-1}} = \left(\frac{x_1}{x_2}\right)^{\rho-1} = \left(\frac{x_2}{x_1}\right)^{1-\rho}$. Quando $\rho \to 0$: $\text{TMS} \to (x_2/x_1)^1 = x_2/x_1$, que é a TMS de $u = x_1 x_2$ (Cobb-Douglas com $a=b=1$). $\blacksquare$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A TMS de uma Cobb-Douglas $u = x_1^a x_2^b$ é:

- [ ] (a) $a/b$
- [x] (b) $(a/b)(x_2/x_1)$
- [ ] (c) $(a/b)(x_1/x_2)$
- [ ] (d) $ax_1 + bx_2$

**Q2.** Para substitutos perfeitos $u = 3x_1 + 5x_2$, a TMS é:

- [ ] (a) $5/3$
- [x] (b) $3/5$
- [ ] (c) Depende do ponto
- [ ] (d) Indefinida

**Q3.** Na família CES, quando $\sigma \to 0$ (elasticidade de substituição tende a zero), as preferências se aproximam de:

- [ ] (a) Substitutos perfeitos
- [ ] (b) Cobb-Douglas
- [x] (c) Complementos perfeitos
- [ ] (d) Quase-lineares

**Q4.** Nas preferências quase-lineares $u = v(x_1) + x_2$, as curvas de indiferença:

- [ ] (a) São retas paralelas
- [x] (b) São translações verticais umas das outras
- [ ] (c) Têm formato de L
- [ ] (d) São círculos concêntricos

**Q5.** Se a TMS é decrescente ao longo de uma curva de indiferença, as preferências são:

- [ ] (a) Lineares
- [ ] (b) Não-monotônicas
- [x] (c) Convexas
- [ ] (d) Não-contínuas

</div>

---

!!! abstract "Próxima aula"
    **Aula 05**: Maximização de Utilidade e Demanda Marshalliana — o problema completo de otimização do consumidor.
