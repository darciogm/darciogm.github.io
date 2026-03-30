# Pré-Aula 05 — Escolha Ótima do Consumidor

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.1–4.3** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

1. Montar e resolver o problema de maximização do consumidor (primal) usando o Lagrangeano
2. Derivar a condição de tangência $\text{TMS} = p_x / p_y$ e interpretar o multiplicador $\lambda$
3. Calcular demandas Marshallianas e utilidade indireta para Cobb-Douglas

---

## 1. A restrição orçamentária

O consumidor tem renda $m$ e enfrenta preços $p_x$ e $p_y$. O conjunto orçamentário é:

$$B = \{(x, y) : p_x x + p_y y \leq m\}$$

A **reta orçamentária** (fronteira de $B$) é:

$$y = \frac{m}{p_y} - \frac{p_x}{p_y} x$$

- **Intercepto vertical:** $m / p_y$ (tudo em $y$)
- **Intercepto horizontal:** $m / p_x$ (tudo em $x$)
- **Inclinação:** $-p_x / p_y$ (custo de oportunidade de $x$ em termos de $y$)

!!! example "Exemplo numérico"
    Se $p_x = 4$, $p_y = 2$ e $m = 100$:

    $y = 50 - 2x$

    - Cada unidade de $x$ "custa" 2 unidades de $y$
    - Máximo de $x$: 25 unidades | Máximo de $y$: 50 unidades

---

## 2. O problema do consumidor (primal)

$$\max_{x,y} \ U(x,y) \quad \text{s.a.} \quad p_x x + p_y y = m$$

No ótimo, o consumidor **esgota toda a renda** (monotonicidade: mais é melhor).

### Método do Lagrangeano

$$\mathcal{L} = U(x,y) - \lambda(p_x x + p_y y - m)$$

Condições de primeira ordem (CPOs):

$$\frac{\partial \mathcal{L}}{\partial x} = \frac{\partial U}{\partial x} - \lambda p_x = 0 \quad \Rightarrow \quad UMg_x = \lambda p_x$$

$$\frac{\partial \mathcal{L}}{\partial y} = \frac{\partial U}{\partial y} - \lambda p_y = 0 \quad \Rightarrow \quad UMg_y = \lambda p_y$$

$$\frac{\partial \mathcal{L}}{\partial \lambda} = m - p_x x - p_y y = 0$$

---

## 3. A condição de tangência

Dividindo a primeira CPO pela segunda:

$$\frac{UMg_x}{UMg_y} = \frac{p_x}{p_y} \quad \Longleftrightarrow \quad \text{TMS}_{x,y} = \frac{p_x}{p_y}$$

!!! note "Intuição Econômica"
    **O que a tangência significa?**

    No ótimo, a taxa à qual o consumidor está **disposto** a trocar $y$ por $x$ (TMS) é exatamente igual à taxa à qual o **mercado** permite essa troca ($p_x/p_y$). Se a TMS fosse maior que o preço relativo, valeria a pena comprar mais $x$ e menos $y$ — o consumidor ainda não otimizou. A tangência é o ponto onde não há mais "arbitragem" possível entre os bens.

---

## 4. O multiplicador $\lambda$: utilidade marginal da renda

Das CPOs: $\lambda = UMg_x / p_x = UMg_y / p_y$

Interpretação: $\lambda$ mede **quantas unidades de utilidade** o consumidor ganha por 1 real adicional de renda. É a "utilidade marginal da renda" (ou "preço-sombra" da restrição orçamentária).

!!! tip "No ótimo"
    A última unidade monetária gasta em **qualquer** bem rende a mesma utilidade marginal: $\frac{UMg_x}{p_x} = \frac{UMg_y}{p_y} = \lambda$

---

## 5. Exemplo completo: Cobb-Douglas

Seja $U(x,y) = x^a y^{1-a}$, com $a \in (0,1)$.

**Passo 1: Lagrangeano**

$$\mathcal{L} = x^a y^{1-a} - \lambda(p_x x + p_y y - m)$$

**Passo 2: CPOs**

$$a x^{a-1} y^{1-a} = \lambda p_x$$
$$(1-a) x^a y^{-a} = \lambda p_y$$

**Passo 3: Tangência**

$$\frac{a}{1-a} \cdot \frac{y}{x} = \frac{p_x}{p_y} \quad \Rightarrow \quad y = \frac{(1-a) p_x x}{a p_y}$$

**Passo 4: Substituir na restrição**

$$p_x x + p_y \cdot \frac{(1-a) p_x x}{a p_y} = m \quad \Rightarrow \quad p_x x \left(1 + \frac{1-a}{a}\right) = m \quad \Rightarrow \quad \frac{p_x x}{a} = m$$

**Demandas Marshallianas:**

$$\boxed{x^*(p_x, p_y, m) = \frac{am}{p_x}} \qquad \boxed{y^*(p_x, p_y, m) = \frac{(1-a)m}{p_y}}$$

**Utilidade indireta:**

$$V(p_x, p_y, m) = \left(\frac{a}{p_x}\right)^a \left(\frac{1-a}{p_y}\right)^{1-a} m$$

---

## Gráfico interativo: restrição orçamentária e escolha ótima

<div id="graph-budget" style="min-height: 450px;">
<iframe src="../../graficos/cap04/restricao-orcamentaria.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aumente $p_x$ e observe a reta orçamentária girar (pivô no intercepto $y$)
    - Aumente $m$ e observe a reta se deslocar paralelamente
    - Veja o ponto de tangência se mover ao longo da curva de indiferença

---

## Exercícios de preparação

**Exercício 1.** Se $p_x = 5$, $p_y = 10$ e $m = 200$, qual é a inclinação da reta orçamentária e o custo de oportunidade de $x$?

??? success "Solução"
    Inclinação: $-p_x/p_y = -5/10 = -0{,}5$.

    Custo de oportunidade de $x$: cada unidade de $x$ custa $0{,}5$ unidade de $y$.

    Interceptos: $x_{\max} = 200/5 = 40$ e $y_{\max} = 200/10 = 20$.

**Exercício 2.** Para $U = x^{0{,}3} y^{0{,}7}$ com $p_x = 3$, $p_y = 7$ e $m = 210$, encontre as demandas Marshallianas e a utilidade no ótimo.

??? success "Solução"
    Pela fórmula Cobb-Douglas:

    $x^* = \frac{0{,}3 \times 210}{3} = 21$

    $y^* = \frac{0{,}7 \times 210}{7} = 21$

    $V = (21)^{0{,}3}(21)^{0{,}7} = 21$

**Exercício 3.** Se todos os preços e a renda dobram simultaneamente, o que acontece com a cesta ótima? Justifique usando a propriedade das demandas Marshallianas.

??? success "Solução"
    Nada muda. As demandas Marshallianas são **homogêneas de grau zero** em $(p_x, p_y, m)$:

    $x^*(tp_x, tp_y, tm) = \frac{a \cdot tm}{t \cdot p_x} = \frac{am}{p_x} = x^*(p_x, p_y, m)$

    Apenas o nível nominal mudou — o poder de compra real é o mesmo.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A inclinação da reta orçamentária é:

- [ ] (a) $-m / p_x$
- [x] (b) $-p_x / p_y$
- [ ] (c) $-p_y / p_x$
- [ ] (d) $-m / p_y$

**Q2.** A condição de tangência no ótimo do consumidor é:

- [ ] (a) $UMg_x = UMg_y$
- [ ] (b) $UMg_x / UMg_y = p_y / p_x$
- [x] (c) $UMg_x / UMg_y = p_x / p_y$
- [ ] (d) $UMg_x \cdot p_x = UMg_y \cdot p_y$

**Q3.** O multiplicador de Lagrange $\lambda$ representa:

- [ ] (a) O preço relativo dos bens
- [ ] (b) A utilidade total no ótimo
- [x] (c) A utilidade marginal da renda
- [ ] (d) A inclinação da curva de indiferença

**Q4.** Se os preços e a renda dobram simultaneamente, a demanda Marshalliana:

- [ ] (a) Dobra
- [ ] (b) Cai pela metade
- [x] (c) Não se altera
- [ ] (d) Depende das preferências

**Q5.** Na Cobb-Douglas $U = x^{0{,}4} y^{0{,}6}$, a fração da renda gasta em $x$ é:

- [x] (a) 40%
- [ ] (b) 60%
- [ ] (c) 50%
- [ ] (d) Depende dos preços

</div>

---

!!! abstract "Próxima aula"
    **Aula 05**: Mini-lecture sobre o problema do consumidor + resolução guiada do Lagrangeano com Peer Instruction sobre tangência e $\lambda$.
