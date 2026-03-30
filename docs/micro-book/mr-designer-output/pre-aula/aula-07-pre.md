# Pré-Aula 07 — Efeitos Renda e Substituição

!!! info "Leitura obrigatória"
    **Cap. 5, Seções 5.1–5.4** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

1. Classificar bens como normais/inferiores e de luxo/necessidade usando curvas de Engel e elasticidade-renda
2. Decompor o efeito total de uma variação de preço em efeitos substituição (Hicks) e renda
3. Enunciar a equação de Slutsky e identificar as condições para a existência de bens de Giffen

---

## 1. Propriedades da demanda Marshalliana

A demanda Marshalliana $x^*(p_x, p_y, m)$ satisfaz:

**Homogeneidade de grau zero:**

$$x^*(tp_x, tp_y, tm) = x^*(p_x, p_y, m) \quad \forall \, t > 0$$

> Se todos os preços e a renda mudam na mesma proporção, a demanda não se altera — o que importa são **preços relativos** e **renda real**.

**Lei de Walras (esgotamento da renda):**

$$p_x x^* + p_y y^* = m$$

> O consumidor sempre gasta toda a renda (monotonicidade).

---

## 2. Curvas de Engel e classificação de bens

A **curva de Engel** mostra como a demanda de um bem varia com a renda, mantendo preços fixos:

$$x^*(m) = x^*(p_x, p_y, m) \quad \text{com } p_x, p_y \text{ fixos}$$

A **elasticidade-renda** classifica os bens:

$$\eta_m = \frac{\partial x^*}{\partial m} \cdot \frac{m}{x^*}$$

| Classificação | Condição | Curva de Engel | Exemplo |
|:---|:---|:---|:---|
| **Normal** | $\partial x^*/\partial m > 0$ ($\eta_m > 0$) | Inclinação positiva | Maioria dos bens |
| **Inferior** | $\partial x^*/\partial m < 0$ ($\eta_m < 0$) | Inclinação negativa | Macarrão instantâneo |
| **Necessidade** | $0 < \eta_m < 1$ | Côncava (cresce menos que renda) | Alimentos básicos |
| **Luxo** | $\eta_m > 1$ | Convexa (cresce mais que renda) | Viagens internacionais |

---

## 3. Decomposição de Hicks

Quando $p_x$ sobe, acontecem **dois efeitos simultâneos**:

### Efeito Substituição (ES)

Movimento **ao longo** da curva de indiferença original: o consumidor substitui $x$ (agora relativamente mais caro) por $y$.

- **Sempre negativo**: $\Delta x_{ES} < 0$ quando $p_x$ sobe (lei da demanda compensada)

### Efeito Renda (ER)

Deslocamento **entre** curvas de indiferença: o aumento de $p_x$ reduz o poder de compra real.

- **Bem normal**: $\Delta x_{ER} < 0$ (reforça o ES)
- **Bem inferior**: $\Delta x_{ER} > 0$ (contraria o ES)

### Efeito Total (ET)

$$\Delta x_{ET} = \underbrace{\Delta x_{ES}}_{<0} + \underbrace{\Delta x_{ER}}_{\text{depende}}$$

!!! note "Intuição Econômica"
    **Pense em gasolina a R\$ 7,00/litro.**

    Efeito substituição: você troca carro por ônibus, bicicleta ou carona — consome menos gasolina porque ficou relativamente mais cara.

    Efeito renda: com gasolina mais cara, seu orçamento "encolheu" — como se tivesse ficado mais pobre. Se gasolina é um bem normal, esse efeito também reduz o consumo. Ambos puxam na mesma direção: você compra menos gasolina.

    Mas se fosse arroz (bem inferior para famílias ricas)? O efeito renda poderia ir na direção oposta.

---

## 4. A Equação de Slutsky

A decomposição formal é expressa pela **equação de Slutsky**:

$$\boxed{\frac{\partial x^*}{\partial p_x} = \frac{\partial h_x}{\partial p_x} - x^* \frac{\partial x^*}{\partial m}}$$

$$\underbrace{\text{Efeito Total}}_{\partial x^*/\partial p_x} = \underbrace{\text{Efeito Substituição}}_{\partial h_x/\partial p_x} - \underbrace{\text{Efeito Renda}}_{x^* \cdot \partial x^*/\partial m}$$

Em termos de elasticidades:

$$\varepsilon_{x, p_x} = \varepsilon^h_{x, p_x} - s_x \cdot \eta_m$$

onde $s_x = p_x x^* / m$ é a participação orçamentária de $x$.

---

## 5. Bens de Giffen

Um **bem de Giffen** é aquele cuja demanda Marshalliana **sobe** quando o preço sobe:

$$\frac{\partial x^*}{\partial p_x} > 0$$

Pela equação de Slutsky, isso requer:

1. Bem **inferior** ($\partial x^*/\partial m < 0$)
2. Efeito renda **maior em módulo** que o efeito substituição
3. Geralmente: bem que ocupa **grande parcela** do orçamento ($s_x$ alto)

!!! warning "Giffen é raro, mas existe"
    Jensen e Miller (2008) documentaram comportamento Giffen para arroz em regiões pobres da China: quando o preço do arroz subiu, famílias muito pobres compraram **mais** arroz (cortando carne, que ficou inalcançável) para sobreviver.

---

## Gráfico interativo: decomposição de Slutsky

<div id="graph-slutsky" style="min-height: 450px;">
<iframe src="../../graficos/cap05/decomposicao-slutsky.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aumente $p_x$ e observe os três pontos: original, compensado (Hicks) e final
    - Identifique visualmente ES (azul) e ER (vermelho)
    - Alterne entre bem normal e inferior para ver como o ER muda de direção

---

## Exercícios de preparação

**Exercício 1.** Para $U = x^{0{,}5} y^{0{,}5}$ com $m = 100$, se $p_x$ sobe de 2 para 4 (com $p_y = 2$), decomponha o efeito total em ES e ER.

??? success "Solução"
    **Situação inicial** ($p_x = 2$): $x^* = \frac{0{,}5 \times 100}{2} = 25$, $y^* = 25$, $U^* = 25$.

    **Situação final** ($p_x = 4$): $x^* = \frac{0{,}5 \times 100}{4} = 12{,}5$, $y^* = 25$.

    **Ponto compensado** (Hicks): manter $\bar{U} = 25$ com $p_x = 4$.

    $h_x = 25\sqrt{p_y/p_x} = 25\sqrt{2/4} = 25/\sqrt{2} \approx 17{,}68$

    **Decomposição:**

    - ET: $12{,}5 - 25 = -12{,}5$
    - ES: $17{,}68 - 25 = -7{,}32$
    - ER: $12{,}5 - 17{,}68 = -5{,}18$

    Ambos negativos (bem normal): ES + ER = ET ✓

**Exercício 2.** Explique por que o efeito substituição é sempre negativo (quando o preço sobe).

??? success "Solução"
    O efeito substituição move o consumidor **ao longo** da mesma curva de indiferença. Quando $p_x$ sobe, a reta de gasto tangente "gira" — fica mais íngreme. Pela convexidade das curvas de indiferença, o novo ponto de tangência sempre terá **menos $x$** e **mais $y$**. Formalmente, a matriz de Slutsky é negativa semidefinida, garantindo $\partial h_x / \partial p_x \leq 0$.

**Exercício 3.** Dê um exemplo de bem que seja de necessidade para famílias de baixa renda e de luxo para famílias de alta renda. É possível?

??? success "Solução"
    Sim, a classificação pode depender da faixa de renda. **Carne bovina** pode ser necessidade para classe média (já consome regularmente, elasticidade-renda < 1) e luxo para famílias de baixa renda (começam a consumir quando renda sobe, elasticidade-renda > 1). A curva de Engel teria formato em S: convexa para rendas baixas (luxo) e côncava para rendas altas (necessidade).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Um bem inferior é aquele cuja demanda:

- [ ] (a) Cai quando o preço sobe
- [x] (b) Cai quando a renda sobe
- [ ] (c) Tem elasticidade-preço positiva
- [ ] (d) Tem curva de Engel convexa

**Q2.** O efeito substituição de Hicks, quando $p_x$ sobe, é:

- [x] (a) Sempre negativo (reduz $x$)
- [ ] (b) Sempre positivo (aumenta $x$)
- [ ] (c) Positivo para bens normais, negativo para inferiores
- [ ] (d) Zero para Cobb-Douglas

**Q3.** Para que um bem seja de Giffen, ele deve ser:

- [ ] (a) Normal e de luxo
- [ ] (b) Normal e de necessidade
- [x] (c) Inferior com efeito renda dominando o efeito substituição
- [ ] (d) Inferior com efeito substituição dominando o efeito renda

**Q4.** A curva de Engel de um bem de luxo é:

- [ ] (a) Reta horizontal
- [ ] (b) Côncava (cresce a taxas decrescentes)
- [x] (c) Convexa (cresce a taxas crescentes)
- [ ] (d) Decrescente

**Q5.** Na equação de Slutsky, $\frac{\partial x^*}{\partial p_x} = \frac{\partial h_x}{\partial p_x} - x^* \frac{\partial x^*}{\partial m}$, o termo $x^* \frac{\partial x^*}{\partial m}$ é o:

- [ ] (a) Efeito substituição
- [x] (b) Efeito renda
- [ ] (c) Efeito total
- [ ] (d) Efeito preço-cruzado

</div>

---

!!! abstract "Próxima aula"
    **Aula 07**: Mini-lecture sobre decomposição de Slutsky + simulação interativa com Peer Instruction sobre classificação de bens e condições de Giffen.
