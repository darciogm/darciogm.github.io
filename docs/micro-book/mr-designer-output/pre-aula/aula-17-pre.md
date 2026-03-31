# Pré-Aula 17 — Função de Produção I

!!! info "Leitura obrigatória"
    **Cap. 10, Seções 10.1–10.3** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Definir a função de produção e distinguir entre curto prazo (CP) e longo prazo (LP).
2. Calcular produto marginal, produto médio e a TMST, e enunciar a lei dos rendimentos marginais decrescentes.
3. Classificar rendimentos de escala (CRS, IRS, DRS) e calcular a elasticidade de escala.

---

## 1. Função de Produção: CP vs. LP

A **função de produção** descreve a quantidade máxima de produto que pode ser obtida a partir de uma combinação de insumos:

$$q = f(K, L)$$

onde $K$ é capital e $L$ é trabalho. Assumimos $f$ contínua, diferenciável e $f(0, 0) = 0$.

**Curto prazo (CP):** pelo menos um insumo é fixo (tipicamente $K = \bar{K}$), e a função se reduz a $q = f(\bar{K}, L)$.

**Longo prazo (LP):** todos os insumos são variáveis. A firma escolhe livremente $(K, L)$.

!!! note "Intuição Econômica"
    A distinção CP/LP não é sobre tempo cronológico, mas sobre flexibilidade. Uma startup pode mudar tudo em meses (LP); uma siderúrgica leva anos para expandir um alto-forno (CP prolongado). O que define o "prazo" é a capacidade de ajustar todos os fatores.

---

## 2. Produto Marginal e Produto Médio

O **produto marginal** do trabalho é o acréscimo de produto gerado por uma unidade adicional de $L$:

$$PMg_L = \frac{\partial f(K, L)}{\partial L}$$

O **produto médio** do trabalho é o produto total por unidade de trabalho:

$$PMe_L = \frac{f(K, L)}{L}$$

Relação fundamental: $PMg_L = PMe_L$ quando $PMe_L$ atinge seu máximo.

**Lei dos rendimentos marginais decrescentes:** para $K$ fixo, a partir de certo ponto, $PMg_L$ decresce à medida que $L$ aumenta:

$$\frac{\partial^2 f}{\partial L^2} < 0 \quad \text{(eventualmente)}$$

!!! note "Intuição Econômica"
    Imagine uma cozinha de restaurante com 4 fogões. O 1.° cozinheiro é muito produtivo, o 2.° e 3.° também ajudam bastante, mas o 10.° cozinheiro mal tem onde ficar. O capital fixo limita a produtividade marginal do trabalho adicional.

---

## 3. Isoquantas e TMST

Uma **isoquanta** é o conjunto de combinações $(K, L)$ que produzem a mesma quantidade $q_0$:

$$f(K, L) = q_0$$

A **Taxa Marginal de Substituição Técnica (TMST)** é a taxa à qual a firma pode trocar capital por trabalho mantendo o produto constante:

$$TMST_{L,K} = -\frac{dK}{dL}\bigg|_{q = q_0} = \frac{PMg_L}{PMg_K}$$

A TMST é análoga à TMS na teoria do consumidor. Isoquantas convexas implicam TMST decrescente (em valor absoluto).

<iframe src="graficos/cap10/isoquantas.html"></iframe>

!!! tip "Explore o gráfico"
    Mova-se ao longo de uma isoquanta e observe como a inclinação (TMST) muda. Perto do eixo $L$, a TMST é alta (muito capital é necessário para substituir uma unidade de trabalho); perto do eixo $K$, é baixa.

---

## 4. Rendimentos de Escala

Os **rendimentos de escala** medem como o produto responde quando **todos** os insumos são multiplicados por $t > 1$:

- **Rendimentos constantes de escala (CRS):** $f(tK, tL) = t \cdot f(K, L)$
- **Rendimentos crescentes de escala (IRS):** $f(tK, tL) > t \cdot f(K, L)$
- **Rendimentos decrescentes de escala (DRS):** $f(tK, tL) < t \cdot f(K, L)$

Para a função **Cobb-Douglas** $q = AK^\alpha L^\beta$:

$$f(tK, tL) = A(tK)^\alpha(tL)^\beta = t^{\alpha+\beta} \cdot AK^\alpha L^\beta$$

Logo: CRS se $\alpha + \beta = 1$; IRS se $\alpha + \beta > 1$; DRS se $\alpha + \beta < 1$.

A **elasticidade de escala** generaliza:

$$e(q) = \frac{K \cdot PMg_K + L \cdot PMg_L}{f(K,L)}$$

Se $e > 1$: IRS; $e = 1$: CRS; $e < 1$: DRS.

<iframe src="graficos/cap10/rendimentos-escala.html"></iframe>

!!! tip "Explore o gráfico"
    Observe como as isoquantas se espaçam para CRS, IRS e DRS. Com IRS, isoquantas de nível maior ficam mais próximas (produção cresce mais rápido que os insumos); com DRS, ficam mais distantes.

!!! note "Intuição Econômica"
    Rendimentos de escala e rendimentos marginais decrescentes são conceitos **distintos**. A lei dos rendimentos decrescentes é sobre variar **um** insumo com outros fixos (CP). Rendimentos de escala são sobre variar **todos** os insumos proporcionalmente (LP). Uma firma pode ter rendimentos marginais decrescentes no CP e rendimentos crescentes de escala no LP.

---

## Exercícios Preparatórios

**Exercício 1.** Para $q = 4K^{0{,}5}L^{0{,}5}$, calcule $PMg_L$, $PMg_K$ e a TMST quando $K = 16$ e $L = 4$.

??? success "Solução"
    $PMg_L = 4 \times 0{,}5 \times K^{0,5} L^{-0,5} = 2\sqrt{K/L} = 2\sqrt{16/4} = 2 \times 2 = 4$.  
    $PMg_K = 4 \times 0{,}5 \times K^{-0,5} L^{0,5} = 2\sqrt{L/K} = 2\sqrt{4/16} = 2 \times 0{,}5 = 1$.  
    $TMST_{L,K} = PMg_L / PMg_K = 4/1 = 4$.  
    A firma pode reduzir 4 unidades de $K$ ao adicionar 1 unidade de $L$, mantendo $q$ constante.

**Exercício 2.** Classifique os rendimentos de escala: (a) $q = K + 3L$; (b) $q = K^{0{,}3}L^{0{,}8}$; (c) $q = \min(2K, 5L)$.

??? success "Solução"
    (a) $f(tK, tL) = tK + 3tL = t(K + 3L) = tf(K,L)$ → **CRS**.  
    (b) $\alpha + \beta = 0{,}3 + 0{,}8 = 1{,}1 > 1$ → **IRS**.  
    (c) $f(tK, tL) = \min(2tK, 5tL) = t\min(2K, 5L) = tf(K,L)$ → **CRS**.

**Exercício 3.** Uma firma tem $q = 10L - 0{,}5L^2$ no CP com $\bar{K} = 25$. Encontre o $L$ que maximiza $PMe_L$ e o $L$ em que $PMg_L = 0$.

??? success "Solução"
    $PMg_L = 10 - L$. Logo $PMg_L = 0$ quando $L = 10$.  
    $PMe_L = 10 - 0{,}5L$. Para encontrar o máximo de $PMe_L$, igualamos $PMg_L = PMe_L$:  
    $10 - L = 10 - 0{,}5L \Rightarrow -0{,}5L = 0 \Rightarrow L = 0$.  
    Nesta função, $PMe_L$ é decrescente desde $L = 0$ (máximo de 10) e $PMg_L$ cruza zero em $L = 10$. O produto total é máximo em $L = 10$ (onde $q = 50$).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** No curto prazo, a lei dos rendimentos marginais decrescentes afirma que:

- [ ] (a) O produto total eventualmente cai a zero
- [x] (b) O produto marginal de um fator variável eventualmente decresce, mantendo os demais fixos
- [ ] (c) Rendimentos de escala são decrescentes
- [ ] (d) O produto médio é sempre decrescente

**Q2.** A TMST é igual a:

- [ ] (a) $PMg_K / PMg_L$
- [x] (b) $PMg_L / PMg_K$
- [ ] (c) $PMe_L / PMe_K$
- [ ] (d) $K / L$

**Q3.** Para $q = AK^{0{,}6}L^{0{,}6}$, os rendimentos de escala são:

- [ ] (a) Constantes (CRS)
- [x] (b) Crescentes (IRS)
- [ ] (c) Decrescentes (DRS)
- [ ] (d) Depende dos valores de $K$ e $L$

**Q4.** O produto médio atinge seu máximo quando:

- [ ] (a) O produto marginal é zero
- [ ] (b) O produto total é máximo
- [x] (c) O produto marginal é igual ao produto médio
- [ ] (d) O produto marginal é máximo

**Q5.** Isoquantas mais próximas entre si (à medida que $q$ aumenta) indicam:

- [ ] (a) Rendimentos constantes de escala
- [x] (b) Rendimentos crescentes de escala
- [ ] (c) Rendimentos decrescentes de escala
- [ ] (d) Rendimentos marginais decrescentes

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 18**, estudaremos os custos de produção: custos fixos e variáveis, custo marginal, custo médio e as curvas de custo de curto e longo prazo.
