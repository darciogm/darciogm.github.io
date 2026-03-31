# Pré-Aula 09 — Equação de Slutsky: Exercícios

!!! info "Leitura obrigatória"
    **Cap. 5, Seções 5.1–5.4** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Aplicar a equação de Slutsky em forma de elasticidades
2. Realizar a decomposição ES/ER completa para preferências Cobb-Douglas
3. Realizar a decomposição ES/ER para preferências quase-lineares e interpretar a ausência de efeito renda

---

## 1. Revisão: a equação de Slutsky

Relembrando a equação fundamental:

$$\frac{\partial x_i^M}{\partial p_i} = \frac{\partial h_i}{\partial p_i} - x_i^M \frac{\partial x_i^M}{\partial I}$$

$$\underbrace{\text{ET}}_{\text{efeito~total}} = \underbrace{\text{ES}}_{\text{substituição}} + \underbrace{\text{ER}}_{\text{renda}}$$

O ES é o movimento ao longo da curva de indiferença (compensado). O ER é a mudança devida à alteração do poder de compra.

---

## 2. Slutsky em elasticidades

Multiplicando ambos os lados da equação de Slutsky por $p_i/x_i^M$:

$$\varepsilon_{ii} = \varepsilon_{ii}^h - s_i \eta_i$$

onde:

- $\varepsilon_{ii} = \frac{\partial x_i^M}{\partial p_i} \cdot \frac{p_i}{x_i^M}$ — elasticidade-preço Marshalliana
- $\varepsilon_{ii}^h = \frac{\partial h_i}{\partial p_i} \cdot \frac{p_i}{h_i}$ — elasticidade-preço Hicksiana (compensada)
- $s_i = \frac{p_i x_i^M}{I}$ — parcela do orçamento gasta no bem $i$
- $\eta_i = \frac{\partial x_i^M}{\partial I} \cdot \frac{I}{x_i^M}$ — elasticidade-renda

!!! note "Intuição Econômica"
    A versão em elasticidades mostra que a diferença entre as elasticidades Marshalliana e Hicksiana é $s_i \eta_i$. Para bens com pequena parcela do orçamento ($s_i$ pequeno), a diferença é desprezível — ES e ET são quase iguais. Para bens com grande parcela (como moradia), o ER é significativo.

### Formulário útil para exercícios

| Fórmula | Descrição |
|---------|-----------|
| $\varepsilon_{ii} = \varepsilon_{ii}^h - s_i \eta_i$ | Slutsky em elasticidades (efeito próprio) |
| $\varepsilon_{ij} = \varepsilon_{ij}^h - s_j \eta_i$ | Slutsky em elasticidades (efeito cruzado) |
| $\sum_j s_j \varepsilon_{ji} = -s_i$ | Agregação de Cournot |
| $\sum_i s_i \eta_i = 1$ | Agregação de Engel |

---

## 3. Exercício preparatório: Cobb-Douglas

Seja $u = x_1^{1/3} x_2^{2/3}$, com $p_1 = 2$, $p_2 = 1$ e $I = 60$.

### Passo 1: Demandas Marshallianas

$$x_1^M = \frac{(1/3)(60)}{2} = 10, \qquad x_2^M = \frac{(2/3)(60)}{1} = 40$$

Utilidade: $\bar{u} = 10^{1/3} \cdot 40^{2/3}$

### Passo 2: Suponha que $p_1$ sobe para $p_1' = 3$

Novo equilíbrio: $x_1^{M'} = (1/3)(60)/3 = 20/3 \approx 6{,}67$

**ET** $= 6{,}67 - 10 = -3{,}33$

### Passo 3: Demanda Hicksiana no novo preço

$$h_1(3, 1, \bar{u}) = \bar{u} \left(\frac{1/3}{2/3} \cdot \frac{1}{3}\right)^{2/3} = \bar{u} \left(\frac{1}{6}\right)^{2/3}$$

Com $\bar{u} = 10^{1/3} \cdot 40^{2/3}$, calculamos numericamente:

$\bar{u} = 2{,}154 \cdot 11{,}696 = 25{,}198$

$h_1 = 25{,}198 \cdot (1/6)^{2/3} = 25{,}198 \cdot 0{,}3015 = 7{,}60$

**ES** $= 7{,}60 - 10 = -2{,}40$

**ER** $= -3{,}33 - (-2{,}40) = -0{,}93$

Confirmação: bem normal, ambos os efeitos negativos, ER reforça ES.

## Gráfico interativo: Efeitos Renda e Substituição

<iframe src="graficos/cap05/efeito-renda-substituicao.html"></iframe>

!!! tip "Explore o gráfico"
    Reproduza o exercício Cobb-Douglas acima no gráfico interativo. Ajuste $a = 1/3$, os preços e a renda conforme especificado. Visualize os três pontos: original, compensado de Hicks e final.

---

## 4. Exercício preparatório: quase-linear

Seja $u = \sqrt{x_1} + x_2$, com $p_1 = 1$, $p_2 = 1$ e $I = 10$.

### Passo 1: Demandas Marshallianas

Tangência: $\frac{1}{2\sqrt{x_1}} = \frac{p_1}{p_2} = 1 \implies x_1^M = \frac{1}{4}$

Orçamento: $x_2^M = I - p_1 x_1^M = 10 - 1/4 = 9{,}75$

Utilidade: $\bar{u} = \sqrt{1/4} + 9{,}75 = 0{,}5 + 9{,}75 = 10{,}25$

### Passo 2: $p_1$ sobe para $p_1' = 4$

Tangência: $\frac{1}{2\sqrt{x_1}} = 4 \implies x_1^{M'} = \frac{1}{64}$

$x_2^{M'} = 10 - 4(1/64) = 10 - 1/16 = 9{,}9375$

**ET para $x_1$** $= 1/64 - 1/4 = -0{,}234$

### Passo 3: Demanda Hicksiana

A demanda Hicksiana de $x_1$ na quase-linear depende apenas dos preços (não de $\bar{u}$!):

$$h_1(p_1, p_2, \bar{u}) = \left(\frac{p_2}{2p_1}\right)^2 = \frac{1}{4p_1^2}$$

Isso porque a TMS depende apenas de $x_1$, e a tangência fixa $x_1$ independentemente de $\bar{u}$.

$h_1(4, 1, \bar{u}) = 1/64$

**ES** $= 1/64 - 1/4 = -0{,}234$

**ER** $= -0{,}234 - (-0{,}234) = 0$

!!! note "Intuição Econômica"
    Nas preferências quase-lineares, o **efeito renda sobre $x_1$ é zero**! Toda a variação no poder de compra é absorvida por $x_2$ (o bem "linear"). A demanda Marshalliana de $x_1$ coincide com a Hicksiana. Isso simplifica enormemente a análise empírica e é uma das razões pelas quais a utilidade quase-linear é tão popular em economia aplicada.

---

## 5. Slutsky em elasticidades: verificação Cobb-Douglas

Para $u = x_1^a x_2^{1-a}$, sabemos:

- $\varepsilon_{11} = -1$ (elasticidade-preço unitária)
- $\eta_1 = 1$ (elasticidade-renda unitária)
- $s_1 = a$ (parcela do orçamento)

Slutsky: $\varepsilon_{11} = \varepsilon_{11}^h - s_1 \eta_1 \implies -1 = \varepsilon_{11}^h - a \cdot 1 \implies \varepsilon_{11}^h = -(1-a)$

Verificação: a elasticidade Hicksiana é $-(1-a)$, que é menor em valor absoluto que a Marshalliana ($-1$). Faz sentido: a Hicksiana não inclui o ER (que reforça o ES para bens normais).

## Gráfico interativo: Elasticidade e Receita

<iframe src="graficos/cap06/elasticidade-receita.html"></iframe>

!!! tip "Explore o gráfico"
    Observe a relação entre elasticidade-preço e receita total. Para a Cobb-Douglas ($\varepsilon = -1$), a receita é constante. Para demandas mais elásticas, um aumento de preço reduz a receita.

---

## Exercícios de preparação

**Exercício 1.** Um bem tem $\varepsilon_{11} = -0{,}8$, $\eta = 1{,}5$ e $s = 0{,}2$. (a) Calcule a elasticidade Hicksiana. (b) O bem é normal ou inferior? (c) O ES é maior ou menor que o ET em valor absoluto?

??? success "Solução"
    (a) $\varepsilon_{11}^h = \varepsilon_{11} + s \eta = -0{,}8 + 0{,}2 \times 1{,}5 = -0{,}8 + 0{,}3 = -0{,}5$. (b) $\eta = 1{,}5 > 0$, logo o bem é **normal** (e de luxo, pois $\eta > 1$). (c) $|\varepsilon_{11}^h| = 0{,}5 < |\varepsilon_{11}| = 0{,}8$: o ES é menor em valor absoluto — o ER reforça o ES para bens normais, tornando o ET maior.

**Exercício 2.** Para $u = 2\ln(x_1) + x_2$ (quase-linear) com $p_1 = 2$, $p_2 = 1$, $I = 20$: (a) Encontre as demandas. (b) Se $p_1$ sobe para 4, decomponha o ET em ES e ER.

??? success "Solução"
    (a) Tangência: $2/x_1 = p_1/p_2 = 2 \implies x_1^M = 1$. Orçamento: $x_2^M = 20 - 2(1) = 18$. (b) Novo preço: $2/x_1 = 4 \implies x_1^{M'} = 0{,}5$. ET $= 0{,}5 - 1 = -0{,}5$. Como é quase-linear, $h_1 = 2/p_1$ depende só do preço: $h_1(4) = 0{,}5$. ES $= 0{,}5 - 1 = -0{,}5$. ER $= 0$. Todo o efeito é substituição.

**Exercício 3.** Usando a agregação de Engel ($\sum s_i \eta_i = 1$), mostre que é impossível que todos os bens sejam inferiores simultaneamente.

??? success "Solução"
    Se todos os bens fossem inferiores, teríamos $\eta_i < 0$ para todo $i$. Como $s_i > 0$ (parcelas positivas), cada termo $s_i \eta_i < 0$. Logo $\sum s_i \eta_i < 0$. Mas a agregação de Engel exige $\sum s_i \eta_i = 1 > 0$. Contradição. Portanto, pelo menos um bem deve ser normal ($\eta_i > 0$). $\blacksquare$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Na versão em elasticidades da equação de Slutsky, $\varepsilon_{ii} = \varepsilon_{ii}^h - s_i \eta_i$, o termo $s_i \eta_i$ representa:

- [ ] (a) O efeito substituição
- [x] (b) O efeito renda em forma de elasticidade
- [ ] (c) A parcela do orçamento
- [ ] (d) A elasticidade cruzada

**Q2.** Para preferências quase-lineares $u = v(x_1) + x_2$, o efeito renda sobre $x_1$ é:

- [x] (a) Zero
- [ ] (b) Positivo
- [ ] (c) Negativo
- [ ] (d) Depende de $v$

**Q3.** Na Cobb-Douglas $u = x_1^a x_2^{1-a}$, a elasticidade-preço Hicksiana de $x_1$ é:

- [ ] (a) $-1$
- [x] (b) $-(1-a)$
- [ ] (c) $-a$
- [ ] (d) $0$

**Q4.** A agregação de Engel ($\sum s_i \eta_i = 1$) implica que:

- [ ] (a) Todos os bens são normais
- [ ] (b) Todos os bens são de luxo
- [x] (c) Pelo menos um bem deve ser normal
- [ ] (d) A soma das elasticidades-preço é 1

**Q5.** Se um bem tem parcela orçamentária $s = 0{,}01$ (muito pequena), a diferença entre as elasticidades Marshalliana e Hicksiana é:

- [x] (a) Desprezível
- [ ] (b) Grande
- [ ] (c) Exatamente 1
- [ ] (d) Negativa

</div>

---

!!! abstract "Próxima aula"
    **Aula 10**: Aplicações da teoria do consumidor — dotações, oferta de trabalho e escolha intertemporal.
