# Pré-Aula 06 — Dualidade: Hicksiana e Função Gasto (Prática)

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.4–4.6** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

1. Formular e resolver o problema dual do consumidor (minimização do gasto)
2. Derivar a demanda Hicksiana e a função gasto, conectando-as ao primal via identidades de dualidade
3. Aplicar a identidade de Roy e o lema de Shephard para obter demandas sem resolver novamente o Lagrangeano

---

## 1. O problema dual: minimização do gasto

Enquanto o problema primal maximiza utilidade dada a renda, o **dual** minimiza o gasto necessário para atingir um nível de utilidade alvo $\bar{U}$:

$$\min_{x,y} \ p_x x + p_y y \quad \text{s.a.} \quad U(x,y) \geq \bar{U}$$

### Lagrangeano do dual

$$\mathcal{L} = p_x x + p_y y - \mu\left(U(x,y) - \bar{U}\right)$$

CPOs:

$$p_x = \mu \frac{\partial U}{\partial x}, \qquad p_y = \mu \frac{\partial U}{\partial y}, \qquad U(x,y) = \bar{U}$$

A condição de tangência é **a mesma**: $\text{TMS} = p_x / p_y$. Apenas o que é fixo muda (renda no primal, utilidade no dual).

---

## 2. Demanda Hicksiana (compensada)

A solução do dual gera a **demanda Hicksiana** (ou compensada):

$$h_x(p_x, p_y, \bar{U}) \qquad h_y(p_x, p_y, \bar{U})$$

Diferença fundamental em relação à Marshalliana:

| | Marshalliana $x^*(p, m)$ | Hicksiana $h(p, \bar{U})$ |
|:---|:---|:---|
| **Fixa** | Renda $m$ | Utilidade $\bar{U}$ |
| **Mede** | Efeito total do preço | Efeito substituição puro |
| **Observável?** | Sim (dados de mercado) | Não diretamente |

!!! note "Intuição Econômica"
    **Por que precisamos da Hicksiana se não a observamos?**

    Porque ela isola o **efeito substituição** puro — a resposta do consumidor a preços mantendo o bem-estar constante. Isso é essencial para política pública: quando o governo taxa um bem, quanto da redução de consumo vem da mudança de preços relativos (substituição) e quanto vem da perda de poder de compra (renda)? A Hicksiana responde à primeira pergunta.

---

## 3. Função gasto

A **função gasto** é o valor ótimo do problema dual:

$$E(p_x, p_y, \bar{U}) = p_x h_x(p_x, p_y, \bar{U}) + p_y h_y(p_x, p_y, \bar{U})$$

Propriedades:

1. **Crescente** em $p_x$, $p_y$ e $\bar{U}$
2. **Homogênea de grau 1** em preços: $E(tp, \bar{U}) = t \cdot E(p, \bar{U})$
3. **Côncava** em preços

!!! example "Cobb-Douglas: $U = x^a y^{1-a}$"
    Demandas Hicksianas:

    $h_x = \bar{U} \left(\frac{(1-a)p_x}{a \, p_y}\right)^{-(1-a)}$

    $h_y = \bar{U} \left(\frac{a \, p_y}{(1-a)p_x}\right)^{-a}$

    Função gasto:

    $E(p_x, p_y, \bar{U}) = \bar{U} \left(\frac{p_x}{a}\right)^a \left(\frac{p_y}{1-a}\right)^{1-a}$

---

## 4. Identidades de dualidade

O primal e o dual são **dois lados da mesma moeda**. As conexões fundamentais são:

$$h_x(p, \bar{U}) = x^*(p, E(p, \bar{U}))$$

$$x^*(p, m) = h_x(p, V(p, m))$$

$$E(p, V(p, m)) = m \qquad \text{e} \qquad V(p, E(p, \bar{U})) = \bar{U}$$

> Tradução: se você fixar a utilidade no nível que o consumidor atinge com renda $m$, a Hicksiana coincide com a Marshalliana.

---

## 5. Atalhos poderosos

### Lema de Shephard

$$h_x(p, \bar{U}) = \frac{\partial E(p, \bar{U})}{\partial p_x}$$

> "A derivada da função gasto em relação ao preço dá diretamente a demanda Hicksiana."

### Identidade de Roy

$$x^*(p, m) = -\frac{\partial V / \partial p_x}{\partial V / \partial m}$$

> "A derivada da utilidade indireta em relação ao preço, dividida pela derivada em relação à renda (com sinal negativo), dá a demanda Marshalliana."

!!! tip "Quando usar cada atalho"
    - Tem a **função gasto** $E$? Use **Shephard** para obter Hicksianas.
    - Tem a **utilidade indireta** $V$? Use **Roy** para obter Marshallianas.
    - Evite resolver o Lagrangeano do zero quando já tem $V$ ou $E$!

---

## Gráfico interativo: diagrama de dualidade

<div id="graph-duality" style="min-height: 450px;">
<iframe src="../../graficos/cap04/dualidade.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare os problemas primal e dual lado a lado
    - Observe como o ponto ótimo é o mesmo nos dois problemas
    - Mude $\bar{U}$ no dual e veja como $E$ se ajusta

---

## Exercícios de preparação

**Exercício 1.** Para $U = x^{1/2} y^{1/2}$ com $p_x = 2$, $p_y = 8$, encontre as demandas Hicksianas e a função gasto para atingir $\bar{U} = 10$.

??? success "Solução"
    Tangência: $\frac{y}{x} = \frac{p_x}{p_y} = \frac{2}{8} = \frac{1}{4}$, logo $y = x/4$.

    Restrição: $x^{1/2}(x/4)^{1/2} = 10 \Rightarrow x \cdot \frac{1}{2} = 10 \Rightarrow x = 20$.

    $h_x = 20, \quad h_y = 5$

    $E = 2(20) + 8(5) = 40 + 40 = 80$

**Exercício 2.** Verifique o lema de Shephard para o exercício anterior: calcule $\partial E / \partial p_x$ e confirme que é igual a $h_x$.

??? success "Solução"
    Para Cobb-Douglas com $a = 1/2$:

    $E = \bar{U} \left(\frac{p_x}{1/2}\right)^{1/2}\left(\frac{p_y}{1/2}\right)^{1/2} = \bar{U} \cdot 2\sqrt{p_x}\cdot 2\sqrt{p_y} = 4\bar{U}\sqrt{p_x p_y}$

    $\frac{\partial E}{\partial p_x} = 4\bar{U} \cdot \frac{\sqrt{p_y}}{2\sqrt{p_x}} = \frac{2\bar{U}\sqrt{p_y}}{\sqrt{p_x}}$

    Com $p_x = 2$, $p_y = 8$, $\bar{U} = 10$: $\frac{2(10)\sqrt{8}}{\sqrt{2}} = 20 \cdot 2 = 40$... Verificando: na verdade, usando a fórmula geral $E = 2p_x^{1/2}p_y^{1/2}\bar{U}$:

    $\frac{\partial E}{\partial p_x} = p_x^{-1/2}p_y^{1/2}\bar{U} = \frac{\sqrt{8}}{\sqrt{2}}\cdot 10 = 2 \cdot 10 = 20 = h_x$ ✓

**Exercício 3.** Explique em palavras: por que $E(p, V(p,m)) = m$?

??? success "Solução"
    Se o consumidor tem renda $m$ e atinge utilidade $V(p,m)$, o gasto mínimo para atingir essa mesma utilidade é exatamente $m$. Gastar menos não seria suficiente (não atingiria $V$), e gastar mais seria desnecessário (já resolve o problema primal com $m$). A identidade diz que primal e dual são **consistentes**: a renda disponível é exatamente o gasto mínimo para o nível de utilidade que ela permite.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O problema dual do consumidor é:

- [ ] (a) Maximizar utilidade sujeito à restrição orçamentária
- [x] (b) Minimizar gasto sujeito a atingir utilidade mínima $\bar{U}$
- [ ] (c) Maximizar gasto sujeito à restrição de utilidade
- [ ] (d) Minimizar utilidade sujeito à restrição orçamentária

**Q2.** A demanda Hicksiana difere da Marshalliana porque:

- [ ] (a) Usa preços diferentes
- [x] (b) Mantém utilidade constante em vez de renda
- [ ] (c) Sempre é maior que a Marshalliana
- [ ] (d) Não depende de preços

**Q3.** O lema de Shephard afirma que:

- [ ] (a) $x^* = -\frac{\partial V}{\partial p_x} / \frac{\partial V}{\partial m}$
- [x] (b) $h_x = \frac{\partial E}{\partial p_x}$
- [ ] (c) $\lambda = \frac{\partial V}{\partial m}$
- [ ] (d) $E = p_x h_x + p_y h_y$

**Q4.** A função gasto é homogênea de grau ___ em preços:

- [x] (a) 1
- [ ] (b) 0
- [ ] (c) 2
- [ ] (d) -1

**Q5.** Se a utilidade indireta é $V = m / (2\sqrt{p_x p_y})$, a demanda Marshalliana de $x$ (por Roy) é:

- [x] (a) $m / (2p_x)$
- [ ] (b) $m / (2p_y)$
- [ ] (c) $2p_x / m$
- [ ] (d) $\sqrt{p_y / p_x}$

</div>

---

!!! abstract "Próxima aula"
    **Aula 06**: Lab prático — resolver primal e dual lado a lado para CES, construir diagrama de dualidade e verificar identidades numericamente.
