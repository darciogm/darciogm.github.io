# Pré-Aula 08 — Decomposição Slutsky + Case Brasil (Prática)

!!! info "Leitura obrigatória"
    **Cap. 6 completo** do livro interativo + Box Brasil | Tempo estimado: **45 min**

## Objetivos de aprendizagem

1. Distinguir substitutos/complementares brutos (Marshallianos) de líquidos (Hicksianos) e explicar por que a distinção importa
2. Aplicar a simetria dos efeitos cruzados Hicksianos e a equação de Slutsky cruzada
3. Analisar padrões de consumo brasileiros (arroz-feijão, carne-frango, gasolina-etanol) usando o ferramental de demanda

---

## 1. Efeitos preço-cruzados

Quando o preço de $y$ muda, o que acontece com a demanda de $x$? A resposta depende de **qual demanda** estamos usando.

### Substitutos e complementares brutos (Marshallianos)

Baseados na demanda Marshalliana $x^*(p_x, p_y, m)$:

$$\text{Substitutos brutos:} \quad \frac{\partial x^*}{\partial p_y} > 0 \qquad \text{(preço de } y \text{ sobe } \Rightarrow \text{ demanda de } x \text{ sobe)}$$

$$\text{Complementares brutos:} \quad \frac{\partial x^*}{\partial p_y} < 0 \qquad \text{(preço de } y \text{ sobe } \Rightarrow \text{ demanda de } x \text{ cai)}$$

!!! warning "Problema dos brutos"
    A relação **não é necessariamente simétrica**: é possível que $x$ seja substituto bruto de $y$, mas $y$ seja complementar bruto de $x$. Isso ocorre porque a Marshalliana mistura efeitos substituição e renda.

---

## 2. Substitutos e complementares líquidos (Hicksianos)

Baseados na demanda Hicksiana $h_x(p_x, p_y, \bar{U})$:

$$\text{Substitutos líquidos:} \quad \frac{\partial h_x}{\partial p_y} > 0$$

$$\text{Complementares líquidos:} \quad \frac{\partial h_x}{\partial p_y} < 0$$

### A grande vantagem: simetria

$$\boxed{\frac{\partial h_x}{\partial p_y} = \frac{\partial h_y}{\partial p_x}}$$

> Se $x$ é substituto líquido de $y$, então $y$ é substituto líquido de $x$. Sempre!

Essa simetria vem do **lema de Shephard** e do teorema de Young:

$$\frac{\partial h_x}{\partial p_y} = \frac{\partial^2 E}{\partial p_y \partial p_x} = \frac{\partial^2 E}{\partial p_x \partial p_y} = \frac{\partial h_y}{\partial p_x}$$

---

## 3. Equação de Slutsky cruzada

A decomposição de Slutsky também vale para efeitos cruzados:

$$\frac{\partial x^*}{\partial p_y} = \frac{\partial h_x}{\partial p_y} - y^* \frac{\partial x^*}{\partial m}$$

$$\underbrace{\text{Efeito bruto}}_{\text{observável}} = \underbrace{\text{Efeito líquido}}_{\text{substituição pura}} - \underbrace{\text{Efeito renda cruzado}}_{y^* \cdot \partial x^*/\partial m}$$

!!! note "Intuição Econômica"
    **Frango e carne bovina no Brasil.**

    Quando o preço da carne bovina sobe, os brasileiros compram mais frango (substituto bruto). Mas parte desse aumento é efeito renda: carne cara "empobrece" a família, que migra para proteína mais barata. O efeito líquido (compensado) isola a pura substituição: mesmo mantendo o poder de compra, o consumidor trocaria carne por frango porque o preço relativo mudou.

---

## 4. Elasticidade preço-cruzado

$$\varepsilon_{x, p_y} = \frac{\partial x^*}{\partial p_y} \cdot \frac{p_y}{x^*}$$

| Sinal de $\varepsilon_{x, p_y}$ | Classificação (bruta) | Exemplo BR |
|:---|:---|:---|
| $> 0$ | Substitutos brutos | Gasolina e etanol |
| $< 0$ | Complementares brutos | Arroz e feijão |
| $= 0$ | Independentes | Sapato e sorvete |

---

## 5. Agregação: da demanda individual à demanda de mercado

A demanda de mercado é a **soma horizontal** das demandas individuais:

$$X^D(p) = \sum_{i=1}^{n} x_i^*(p, m_i)$$

Propriedades:

- Se cada $x_i^*$ é decrescente em $p_x$, a demanda de mercado também é (a menos de Giffen)
- A **distribuição de renda** afeta a demanda de mercado (mesmo com renda agregada igual)
- A elasticidade de mercado é uma **média ponderada** das elasticidades individuais

---

## 6. Case Brasil: padrões de consumo

!!! example "Exemplos empíricos brasileiros"
    **Arroz e feijão** ($\varepsilon_{cross} < 0$): complementares clássicos na dieta brasileira. Quando o preço do feijão sobe, o consumo de arroz também cai — são consumidos juntos.

    **Carne bovina e frango** ($\varepsilon_{cross} > 0$): substitutos. Nas crises, o brasileiro migra de carne bovina para frango. A elasticidade cruzada estimada é $\approx 0{,}3$ a $0{,}5$.

    **Gasolina e etanol** ($\varepsilon_{cross} > 0$): no Brasil, graças aos carros flex, são substitutos quase perfeitos quando a relação de preço cruza o limiar de 70%. A elasticidade cruzada é alta ($\approx 0{,}8$ a $1{,}2$).

---

## Gráfico interativo: substitutos e complementares

<div id="graph-cross-effects" style="min-height: 450px;">
<iframe src="../../graficos/cap06/substitutos-complementares.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aumente $p_y$ e observe se $x^*$ sobe (substitutos) ou cai (complementares)
    - Compare o efeito bruto (Marshalliano) com o líquido (Hicksiano)
    - Teste o caso gasolina-etanol com elasticidade cruzada alta

---

## Exercícios de preparação

**Exercício 1.** Para $U = x^{0{,}5} y^{0{,}5}$, os bens são substitutos ou complementares brutos? E líquidos? Justifique.

??? success "Solução"
    **Marshallianas:** $x^* = m/(2p_x)$ e $y^* = m/(2p_y)$.

    $\frac{\partial x^*}{\partial p_y} = 0$ — bens **independentes** no sentido bruto (Cobb-Douglas tem elasticidade cruzada zero).

    **Hicksianas:** $h_x = \bar{U}\sqrt{p_y/p_x}$.

    $\frac{\partial h_x}{\partial p_y} = \frac{\bar{U}}{2\sqrt{p_x p_y}} > 0$ — **substitutos líquidos**.

    A Cobb-Douglas esconde a substituição líquida porque o efeito renda cruzado compensa exatamente o efeito substituição na Marshalliana.

**Exercício 2.** Se a elasticidade cruzada entre gasolina e etanol é $\varepsilon_{g,e} = 1{,}0$ e o preço do etanol sobe 20%, em quanto varia a demanda de gasolina?

??? success "Solução"
    $\Delta\% \, x_g \approx \varepsilon_{g,e} \times \Delta\% \, p_e = 1{,}0 \times 20\% = 20\%$

    A demanda de gasolina sobe 20% (são substitutos brutos).

**Exercício 3.** Verifique a simetria Hicksiana: se $\partial h_x / \partial p_y = 3$, quanto vale $\partial h_y / \partial p_x$?

??? success "Solução"
    Pela simetria da matriz de Slutsky: $\frac{\partial h_y}{\partial p_x} = \frac{\partial h_x}{\partial p_y} = 3$.

    Isso decorre do teorema de Young aplicado à função gasto (derivadas cruzadas de $E$ são simétricas).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Bens substitutos brutos são aqueles para os quais:

- [ ] (a) $\partial x^* / \partial p_y < 0$
- [x] (b) $\partial x^* / \partial p_y > 0$
- [ ] (c) $\partial h_x / \partial p_y < 0$
- [ ] (d) $\partial x^* / \partial m > 0$

**Q2.** A simetria $\partial h_x / \partial p_y = \partial h_y / \partial p_x$ vale para:

- [ ] (a) Demandas Marshallianas
- [x] (b) Demandas Hicksianas
- [ ] (c) Ambas
- [ ] (d) Nenhuma

**Q3.** Qual é a elasticidade preço-cruzado esperada entre arroz e feijão no Brasil?

- [ ] (a) Positiva (substitutos)
- [x] (b) Negativa (complementares)
- [ ] (c) Zero (independentes)
- [ ] (d) Infinita

**Q4.** No Brasil, a relação gasolina-etanol é de substitutibilidade alta porque:

- [ ] (a) Ambos são derivados de petróleo
- [ ] (b) O preço é tabelado pelo governo
- [x] (c) Carros flex permitem trocar entre os combustíveis
- [ ] (d) A elasticidade-renda é unitária

**Q5.** Na Cobb-Douglas, a elasticidade cruzada Marshalliana entre os bens é:

- [x] (a) Zero
- [ ] (b) Positiva
- [ ] (c) Negativa
- [ ] (d) Unitária

</div>

---

!!! abstract "Próxima aula"
    **Aula 08**: Lab prático — decomposição de Slutsky cruzada com dados brasileiros + debate sobre classificação de pares de bens e implicações para política tributária.
