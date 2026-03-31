# Pré-Aula 05 — Maximização de Utilidade e Demanda Marshalliana

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.3–4.5** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Montar o Lagrangiano do problema do consumidor e derivar as condições de primeira ordem
2. Derivar demandas Marshallianas para o caso Cobb-Douglas e interpretar suas propriedades
3. Definir a função utilidade indireta $V(p,I)$ e enunciar a identidade de Roy

---

## 1. O problema de maximização de utilidade

O consumidor resolve:

$$\max_{x_1, x_2} \; u(x_1, x_2) \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I$$

Sob as hipóteses de monotonicidade (gastar toda a renda é ótimo) e convexidade (solução interior), usamos o **método de Lagrange**.

### 1.1 O Lagrangiano

$$\mathcal{L} = u(x_1, x_2) - \lambda(p_1 x_1 + p_2 x_2 - I)$$

Condições de primeira ordem (CPOs):

$$\frac{\partial \mathcal{L}}{\partial x_1} = u_1 - \lambda p_1 = 0$$

$$\frac{\partial \mathcal{L}}{\partial x_2} = u_2 - \lambda p_2 = 0$$

$$\frac{\partial \mathcal{L}}{\partial \lambda} = -(p_1 x_1 + p_2 x_2 - I) = 0$$

### 1.2 Condição de tangência

Das duas primeiras CPOs:

$$\frac{u_1}{u_2} = \frac{p_1}{p_2} \quad \Longleftrightarrow \quad \text{TMS}_{12} = \frac{p_1}{p_2}$$

!!! note "Intuição Econômica"
    No ótimo, a taxa à qual o consumidor está *disposto* a trocar os bens (TMS) iguala a taxa à qual o mercado *permite* a troca ($p_1/p_2$). Se a TMS fosse maior que $p_1/p_2$, o consumidor valorizaria $x_1$ mais do que o mercado e deveria comprar mais — logo não estaria no ótimo.

O multiplicador $\lambda$ tem interpretação: é a **utilidade marginal da renda**:

$$\lambda = \frac{u_1}{p_1} = \frac{u_2}{p_2} = \frac{\partial V}{\partial I}$$

---

## 2. Demandas Marshallianas

Resolvendo as CPOs para $x_1$ e $x_2$ em função de $(p_1, p_2, I)$, obtemos as **demandas Marshallianas** (ou ordinárias):

$$x_i^* = x_i^M(p_1, p_2, I), \quad i = 1, 2$$

### Propriedades gerais

1. **Homogeneidade de grau zero (HOD0)**: $x_i^M(\lambda p_1, \lambda p_2, \lambda I) = x_i^M(p_1, p_2, I)$. Apenas preços relativos e renda real importam.

2. **Lei de Walras (esgotamento do orçamento)**: $p_1 x_1^M + p_2 x_2^M = I$. O consumidor gasta toda a renda.

3. **Adição das elasticidades (Engel)**: $\sum_i s_i \eta_i = 1$, onde $s_i$ é a parcela do gasto e $\eta_i$ é a elasticidade-renda.

## Gráfico interativo: Equilíbrio do Consumidor

<iframe src="graficos/cap04/equilibrio-consumidor.html"></iframe>

!!! tip "Explore o gráfico"
    Altere preços e renda para ver como o ponto ótimo (tangência) se move. Observe que a reta orçamentária sempre toca a curva de indiferença mais alta possível.

---

## 3. Exemplo: Cobb-Douglas

Seja $u = x_1^a x_2^{1-a}$ com $0 < a < 1$.

**CPO de tangência:**

$$\frac{a}{1-a} \cdot \frac{x_2}{x_1} = \frac{p_1}{p_2}$$

**Restrição:** $p_1 x_1 + p_2 x_2 = I$

Resolvendo:

$$x_1^M = \frac{aI}{p_1}, \qquad x_2^M = \frac{(1-a)I}{p_2}$$

Propriedades notáveis:

- Fração fixa da renda em cada bem: o gasto com $x_1$ é $p_1 x_1^M = aI$
- Demanda de $x_1$ não depende de $p_2$ (e vice-versa)
- Elasticidade-renda = 1 para ambos os bens (bens normais)
- Elasticidade-preço própria = $-1$ (demanda unitariamente elástica)

---

## 4. Função utilidade indireta e identidade de Roy

### 4.1 Função utilidade indireta

Substituindo as demandas ótimas na função utilidade:

$$V(p_1, p_2, I) = u\big(x_1^M(p,I), \; x_2^M(p,I)\big)$$

$V$ dá o **máximo de utilidade alcançável** dados preços e renda.

Para Cobb-Douglas: $V = a^a(1-a)^{1-a} \cdot \frac{I}{p_1^a p_2^{1-a}}$

Propriedades de $V$:

- **Decrescente** em preços, **crescente** em renda
- **HOD0** em $(p_1, p_2, I)$
- **Quase-convexa** em preços

### 4.2 Identidade de Roy

$$x_i^M(p, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}$$

!!! note "Intuição Econômica"
    A identidade de Roy permite recuperar as demandas Marshallianas diretamente da função utilidade indireta, sem resolver o problema de otimização novamente. É uma ferramenta poderosa em trabalho empírico.

## Gráfico interativo: Demanda Marshalliana e Hicksiana

<iframe src="graficos/cap05/demanda-marshalliana-hicksiana.html"></iframe>

!!! tip "Explore o gráfico"
    Compare as curvas de demanda Marshalliana (renda constante) e Hicksiana (utilidade constante). Observe como elas se cruzam no preço inicial e divergem para preços diferentes.

---

## Exercícios de preparação

**Exercício 1.** Para $u = x_1^{1/2} x_2^{1/2}$, com $p_1 = 2$, $p_2 = 4$ e $I = 100$: (a) Encontre as demandas Marshallianas. (b) Calcule a utilidade máxima.

??? success "Solução"
    (a) Com $a = 1/2$: $x_1^M = \frac{(1/2)(100)}{2} = 25$ e $x_2^M = \frac{(1/2)(100)}{4} = 12{,}5$. (b) $V = (25)^{1/2}(12{,}5)^{1/2} = 5 \cdot 3{,}536 \approx 17{,}68$. Ou usando a fórmula: $V = (1/2)^{1/2}(1/2)^{1/2} \cdot 100/(2^{1/2} \cdot 4^{1/2}) = 0{,}5 \cdot 100/2\sqrt{2} \approx 17{,}68$.

**Exercício 2.** Verifique que as demandas Cobb-Douglas $x_1^M = aI/p_1$ são HOD0 em $(p_1, p_2, I)$.

??? success "Solução"
    $x_1^M(\lambda p_1, \lambda p_2, \lambda I) = \frac{a(\lambda I)}{\lambda p_1} = \frac{a I}{p_1} = x_1^M(p_1, p_2, I)$. Os $\lambda$ se cancelam, confirmando HOD0. Note que a demanda não depende de $p_2$, logo a multiplicação de $p_2$ por $\lambda$ é irrelevante. $\blacksquare$

**Exercício 3.** Usando a identidade de Roy, recupere $x_1^M$ a partir de $V = a^a(1-a)^{1-a} I p_1^{-a} p_2^{-(1-a)}$.

??? success "Solução"
    $\frac{\partial V}{\partial p_1} = a^a(1-a)^{1-a} I \cdot (-a) p_1^{-a-1} p_2^{-(1-a)} = -\frac{a}{p_1} V$. $\frac{\partial V}{\partial I} = a^a(1-a)^{1-a} p_1^{-a} p_2^{-(1-a)} = \frac{V}{I}$. Logo: $x_1^M = -\frac{-aV/p_1}{V/I} = \frac{aI}{p_1}$. Correto! $\blacksquare$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A condição de tangência no ótimo do consumidor é:

- [ ] (a) $u_1 = u_2$
- [x] (b) $\text{TMS} = p_1/p_2$
- [ ] (c) $p_1 x_1 = p_2 x_2$
- [ ] (d) $\lambda = 0$

**Q2.** Para a Cobb-Douglas $u = x_1^{0.3} x_2^{0.7}$, a fração da renda gasta em $x_1$ é:

- [x] (a) 30%
- [ ] (b) 70%
- [ ] (c) 50%
- [ ] (d) Depende dos preços

**Q3.** As demandas Marshallianas são homogêneas de grau zero em $(p, I)$, o que significa:

- [ ] (a) A demanda não depende da renda
- [ ] (b) A demanda é sempre positiva
- [x] (c) Dobrar todos os preços e a renda não muda a demanda
- [ ] (d) A demanda é linear nos preços

**Q4.** O multiplicador de Lagrange $\lambda$ no problema do consumidor representa:

- [ ] (a) O preço relativo dos bens
- [x] (b) A utilidade marginal da renda
- [ ] (c) A quantidade demandada
- [ ] (d) A elasticidade-preço

**Q5.** A identidade de Roy afirma que $x_i^M$ pode ser obtida como:

- [ ] (a) $\partial V / \partial p_i$
- [ ] (b) $\partial V / \partial I$
- [x] (c) $-(\partial V / \partial p_i) / (\partial V / \partial I)$
- [ ] (d) $(\partial V / \partial I) / (\partial V / \partial p_i)$

</div>

---

!!! abstract "Próxima aula"
    **Aula 06**: Minimização do Dispêndio e Demanda Hicksiana — o problema dual do consumidor.
