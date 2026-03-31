# Pré-Aula 08 — Equação de Slutsky: Teoria

!!! info "Leitura obrigatória"
    **Cap. 5, Seções 5.1–5.3** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Decompor o efeito total de uma mudança de preço em efeito substituição (ES) e efeito renda (ER)
2. Enunciar a equação de Slutsky e explicar o sinal de cada componente
3. Classificar bens como normais, inferiores ou de Giffen com base na decomposição

---

## 1. O problema: por que decompor?

Quando o preço de um bem sobe, a quantidade demandada geralmente cai. Mas por quê? Dois mecanismos atuam simultaneamente:

1. **Efeito substituição (ES)**: o bem ficou relativamente mais caro — o consumidor substitui por alternativas.
2. **Efeito renda (ER)**: o poder de compra caiu — o consumidor é efetivamente mais pobre.

Separar esses efeitos é crucial porque eles podem apontar em direções opostas.

!!! note "Intuição Econômica"
    Imagine que o preço da carne dobra. Você compra menos carne por dois motivos: (1) frango ficou relativamente mais barato (ES), e (2) sua renda real caiu, reduzindo seu consumo geral (ER). Para bens normais, ambos reduzem a demanda. Mas para bens inferiores, o ER pode aumentar a demanda!

---

## 2. Decomposição de Hicks

A decomposição de Hicks usa a **curva de indiferença original** como referência.

Partindo de $(p_1, p_2, I)$ com utilidade $\bar{u} = V(p, I)$, quando $p_1$ muda para $p_1'$:

**Efeito Total (ET)**:

$$\text{ET} = x_1^M(p_1', p_2, I) - x_1^M(p_1, p_2, I)$$

**Efeito Substituição de Hicks (ES)**:

$$\text{ES}_H = h_1(p_1', p_2, \bar{u}) - h_1(p_1, p_2, \bar{u})$$

O ES move o consumidor ao longo da curva de indiferença original, mudando apenas preços relativos.

**Efeito Renda (ER)**:

$$\text{ER} = \text{ET} - \text{ES}_H = x_1^M(p_1', p_2, I) - h_1(p_1', p_2, \bar{u})$$

## Gráfico interativo: Efeitos Renda e Substituição

<iframe src="graficos/cap05/efeito-renda-substituicao.html"></iframe>

!!! tip "Explore o gráfico"
    Aumente o preço de $x_1$ e observe os três passos: (1) nova reta orçamentária, (2) reta compensada (paralela à nova, tangente à curva original), (3) ponto final. A distância entre o ponto original e o compensado é o ES; entre o compensado e o final é o ER.

---

## 3. A equação de Slutsky

Em forma diferencial, a decomposição é a célebre **equação de Slutsky**:

$$\frac{\partial x_i^M}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j^M \frac{\partial x_i^M}{\partial I}$$

Ou, para o efeito próprio ($i = j$):

$$\underbrace{\frac{\partial x_i^M}{\partial p_i}}_{\text{ET}} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\text{ES} \leq 0} - \underbrace{x_i^M \frac{\partial x_i^M}{\partial I}}_{\text{ER}}$$

### Sinais dos componentes

| Componente | Sinal | Justificativa |
|------------|-------|---------------|
| ES ($\partial h_i / \partial p_i$) | $\leq 0$ sempre | Lei da demanda compensada |
| ER ($-x_i^M \cdot \partial x_i^M / \partial I$) | Depende | Negativo se normal; positivo se inferior |
| ET ($\partial x_i^M / \partial p_i$) | Geralmente $< 0$ | Exceto bens de Giffen |

!!! note "Intuição Econômica"
    O ES é **sempre negativo** (a demanda compensada sempre cai com o preço). O ER depende do tipo de bem. Para bens normais ($\partial x_i^M/\partial I > 0$), o ER reforça o ES. Para bens inferiores ($\partial x_i^M/\partial I < 0$), o ER se opõe ao ES. No caso extremo (Giffen), o ER positivo domina o ES negativo.

---

## 4. Classificação de bens

### 4.1 Bens normais

$$\frac{\partial x_i^M}{\partial I} > 0 \implies \text{ER reforça ES} \implies \frac{\partial x_i^M}{\partial p_i} < 0$$

A Lei da Demanda sempre vale para bens normais.

### 4.2 Bens inferiores (não-Giffen)

$$\frac{\partial x_i^M}{\partial I} < 0 \quad \text{mas} \quad |\text{ES}| > |\text{ER}| \implies \frac{\partial x_i^M}{\partial p_i} < 0$$

O ER se opõe ao ES, mas não o domina. A Lei da Demanda ainda vale.

### 4.3 Bens de Giffen

$$\frac{\partial x_i^M}{\partial I} < 0 \quad \text{e} \quad |\text{ER}| > |\text{ES}| \implies \frac{\partial x_i^M}{\partial p_i} > 0$$

Caso extremamente raro: o preço sobe e a quantidade demandada sobe. Requer que o bem seja muito inferior e que represente grande parcela do orçamento (para que $x_i^M$ no ER seja grande).

!!! note "Intuição Econômica"
    Um bem de Giffen é necessariamente inferior, mas um bem inferior não é necessariamente Giffen. Para ser Giffen, a inferioridade precisa ser tão forte que o efeito renda domina o efeito substituição. Isso é logicamente possível mas empiricamente muito raro.

## Gráfico interativo: Curva de Engel

<iframe src="graficos/cap05/curva-engel.html"></iframe>

!!! tip "Explore o gráfico"
    A curva de Engel mostra como a demanda varia com a renda. Para bens normais, é positivamente inclinada; para inferiores, negativamente. Varie os parâmetros e observe a transição.

---

## 5. Matriz de Slutsky

A equação de Slutsky generaliza para todos os pares de bens. A **matriz de substituição de Slutsky** $S$ tem elementos:

$$s_{ij} = \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i^M}{\partial p_j} + x_j^M \frac{\partial x_i^M}{\partial I}$$

Propriedades de $S$:

- **Simétrica**: $s_{ij} = s_{ji}$ (integrabilidade)
- **Negativa semidefinida**: $v' S v \leq 0$ para todo $v$ (ES sempre reduz gasto)
- Diagonal: $s_{ii} \leq 0$ (Lei da demanda compensada)

---

## Exercícios de preparação

**Exercício 1.** Para $u = x_1^{1/2} x_2^{1/2}$ com $p_1 = 1$, $p_2 = 1$, $I = 100$, suponha que $p_1$ sobe para 4. (a) Calcule o ET. (b) Calcule o ES de Hicks. (c) Calcule o ER.

??? success "Solução"
    Inicial: $x_1^M = 50$, $\bar{u} = 50^{1/2} \cdot 50^{1/2} = 50$. Novo: $x_1^M = (1/2)(100)/4 = 12{,}5$. **ET** $= 12{,}5 - 50 = -37{,}5$. Hicksiana: $h_1(4, 1, 50) = 50 \cdot (1/4)^{1/2} = 25$. **ES** $= 25 - 50 = -25$. **ER** $= -37{,}5 - (-25) = -12{,}5$. Ambos negativos (bem normal), ER reforça ES.

**Exercício 2.** Um bem inferior tem $\partial x^M/\partial I = -0{,}2$ e $\partial h/\partial p = -3$. A demanda Marshalliana é $x^M = 5$. Calcule $\partial x^M/\partial p$ via Slutsky e classifique o bem.

??? success "Solução"
    $\partial x^M/\partial p = \partial h/\partial p - x^M \cdot \partial x^M/\partial I = -3 - 5(-0{,}2) = -3 + 1 = -2 < 0$. O bem é **inferior mas não Giffen**: o ES ($-3$) domina o ER ($+1$). A Lei da Demanda ainda vale.

**Exercício 3.** Modifique o exercício anterior para que o bem seja de Giffen. Qual valor mínimo de $|\partial x^M/\partial I|$ seria necessário?

??? success "Solução"
    Para Giffen, precisamos $\partial x^M/\partial p > 0$: $-3 - 5(\partial x^M/\partial I) > 0 \implies \partial x^M/\partial I < -3/5 = -0{,}6$. Logo $|\partial x^M/\partial I| > 0{,}6$. Com inferioridade tão forte e $x^M = 5$ (alta parcela do orçamento), o ER domina o ES.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Na equação de Slutsky, o efeito substituição é:

- [x] (a) Sempre negativo (ou zero)
- [ ] (b) Sempre positivo
- [ ] (c) Positivo para bens normais, negativo para inferiores
- [ ] (d) Depende da elasticidade-renda

**Q2.** Um bem de Giffen é necessariamente:

- [ ] (a) Normal
- [ ] (b) De luxo
- [x] (c) Inferior
- [ ] (d) Substituto

**Q3.** Se o efeito renda reforça o efeito substituição, o bem é:

- [x] (a) Normal
- [ ] (b) Inferior
- [ ] (c) De Giffen
- [ ] (d) Complementar

**Q4.** A matriz de substituição de Slutsky é:

- [ ] (a) Positiva definida
- [x] (b) Negativa semidefinida e simétrica
- [ ] (c) Diagonal
- [ ] (d) Identidade

**Q5.** Na decomposição de Hicks, o efeito substituição é medido:

- [x] (a) Ao longo da curva de indiferença original
- [ ] (b) Ao longo da nova curva de indiferença
- [ ] (c) Ao longo da reta orçamentária original
- [ ] (d) Mantendo a renda nominal constante

</div>

---

!!! abstract "Próxima aula"
    **Aula 09**: Equação de Slutsky — Exercícios práticos de decomposição para Cobb-Douglas e quase-linear.
