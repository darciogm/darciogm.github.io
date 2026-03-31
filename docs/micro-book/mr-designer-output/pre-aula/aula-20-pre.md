# Pré-Aula 20 — Maximização de Lucro I

!!! info "Leitura obrigatória"
    **Cap. 12, Seções 12.1–12.3** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar a condição de maximização de lucro $P = CMg$ para uma firma tomadora de preços e verificar a condição de segunda ordem
2. Explicar a relação $VPMg = w$ e sua interpretação como demanda por fatores
3. Enunciar as propriedades da função lucro, o Lema de Hotelling e a lei da oferta

---

## 1. A firma tomadora de preços

Uma firma **competitiva** (tomadora de preço, ou *price taker*) não consegue influenciar o preço de mercado. Ela pode vender qualquer quantidade ao preço $P$ vigente. Sua receita total é:

$$RT(q) = Pq$$

e a receita marginal é simplesmente $RMg = P$. O **lucro econômico** é:

$$\pi(q) = Pq - C(q)$$

onde $C(q)$ inclui todos os custos de oportunidade.

---

## 2. Condições de ótimo

### CPO (Condição de Primeira Ordem)

$$\frac{d\pi}{dq} = P - CMg(q) = 0 \implies \boxed{P = CMg(q^*)}$$

### CSO (Condição de Segunda Ordem)

$$\frac{d^2\pi}{dq^2} = -\frac{dCMg}{dq} < 0 \implies \frac{dCMg}{dq} > 0$$

O custo marginal deve ser **crescente** no ponto ótimo. Se o CMg fosse decrescente, teríamos um mínimo de lucro, não um máximo.

!!! note "Intuição Econômica"
    **O preço é o sinal, o custo marginal é a resposta.** Se $P > CMg$, a última unidade gera mais receita do que custa — vale produzir mais. Se $P < CMg$, a última unidade custa mais do que rende — é melhor produzir menos. O equilíbrio $P = CMg$ é o ponto em que a firma esgota todas as oportunidades de lucro marginal positivo.

---

## 3. VPMg e a demanda por fatores

No problema de maximização de lucro com um fator variável (trabalho):

$$\max_L \; Pf(L,\bar{K}) - wL - v\bar{K}$$

**CPO:**

$$P \cdot PMg_L = w \implies \boxed{VPMg_L = w}$$

O **valor do produto marginal** ($VPMg = P \cdot PMg$) é o que vale para a firma a última unidade de trabalho contratada. A firma contrata até o ponto em que $VPMg = w$.

Com dois fatores variáveis:

$$VPMg_L = w \quad \text{e} \quad VPMg_K = v$$

Dividindo: $PMg_L/PMg_K = w/v$, que recupera a condição de minimização de custos.

---

## 4. A função lucro e suas propriedades

A **função lucro** $\pi^*(P, w, v)$ dá o lucro máximo como função dos preços:

$$\pi^*(P, w, v) = \max_q \big[Pq - C(w,v,q)\big]$$

**Propriedades:**

1. **Não decrescente em $P$** e **não crescente em $w$, $v$**
2. **Homogênea de grau 1** em $(P, w, v)$: dobrar todos os preços dobra o lucro nominal
3. **Convexa em $P$**: a firma responde mais do que proporcionalmente a aumentos de preço
4. **Convexa em $(w,v)$**: idem para preços dos fatores

### Lema de Hotelling

$$q^*(P) = \frac{\partial \pi^*}{\partial P}, \quad L^* = -\frac{\partial \pi^*}{\partial w}, \quad K^* = -\frac{\partial \pi^*}{\partial v}$$

A oferta e as demandas de fatores são obtidas por simples diferenciação da função lucro.

---

## 5. Convexidade e lei da oferta

A convexidade de $\pi^*$ em $P$ implica que:

$$\frac{\partial^2 \pi^*}{\partial P^2} = \frac{\partial q^*}{\partial P} \geq 0$$

Isso é a **lei da oferta**: a quantidade ofertada é não decrescente no preço. Um aumento de preço nunca reduz a produção ótima da firma.

Analogamente, a convexidade em $w$ implica $\partial L^*/\partial w \leq 0$: a demanda (incondicional) por trabalho é não crescente no salário.

!!! note "Intuição Econômica"
    **A convexidade da função lucro reflete a flexibilidade da firma.** Se o preço sobe, a firma pode ajustar a produção para cima e capturar mais lucro; se cai, pode reduzir a produção e limitar perdas. Essa capacidade de ajuste é o que torna o lucro convexo — os ganhos com preços altos superam as perdas com preços baixos.

---

## Gráfico interativo: maximização de lucro

<div id="graph-max-lucro" style="min-height: 450px;">
<iframe src="graficos/cap12/maximizacao-lucro.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Varie o preço $P$ e observe como $q^*$ se ajusta ao longo da curva de CMg
    - Note a área de lucro (retângulo entre $P$ e CMe no ponto $q^*$)
    - Verifique que a CSO exige CMg crescente no ótimo

---

## Gráfico interativo: lucro máximo como função do preço

<div id="graph-funcao-lucro" style="min-height: 450px;">
<iframe src="graficos/cap12/lucro-maximo.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe a convexidade de $\pi^*(P)$ — a curva "abre para cima"
    - A inclinação em cada ponto é $q^*(P)$ (Lema de Hotelling)
    - Note que $\pi^*$ nunca fica abaixo de zero para preços suficientemente altos

---

## Exercícios de preparação

**Exercício 1.** Uma firma competitiva tem $C(q) = 2q^2 + 4q + 18$. O preço é $P = 20$. Encontre $q^*$, o lucro e verifique a CSO.

??? success "Solução"
    $CMg = 4q + 4$. CPO: $20 = 4q + 4 \implies q^* = 4$.

    CSO: $dCMg/dq = 4 > 0$ (CMg crescente no ótimo).

    $\pi = 20(4) - [2(16) + 4(4) + 18] = 80 - [32 + 16 + 18] = 80 - 66 = 14$.

**Exercício 2.** Para $f(L) = 10L^{1/2}$ com $P = 5$ e $w = 2$, encontre a quantidade ótima de trabalho.

??? success "Solução"
    $PMg_L = 5L^{-1/2}$. Condição $VPMg_L = w$:

    $5 \times 5L^{-1/2} = 2 \implies 25L^{-1/2} = 2 \implies L^{-1/2} = 2/25$

    $L^{1/2} = 25/2 \implies L^* = 156{,}25$

    Verificação: $VPMg_L(156{,}25) = 25/12{,}5 = 2 = w$.

**Exercício 3.** Mostre que a função lucro é homogênea de grau 1 em $(P,w,v)$. O que isso significa economicamente?

??? success "Solução"
    Se multiplicamos $P$, $w$ e $v$ por $t > 0$:

    $\pi^*(tP, tw, tv) = \max_q [tPq - C(tw, tv, q)]$

    Como $C$ é homogênea de grau 1 em $(w,v)$: $C(tw, tv, q) = tC(w, v, q)$.

    $\pi^*(tP, tw, tv) = \max_q\, t[Pq - C(w,v,q)] = t\,\pi^*(P, w, v)$

    Economicamente: o lucro é medido em unidades monetárias. Uma inflação uniforme (todos os preços dobram) dobra o lucro nominal sem alterar decisões reais. A firma não sofre de "ilusão monetária".

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A condição de maximização de lucro para uma firma competitiva é:

- [ ] (a) $RMg = CMe$
- [x] (b) $P = CMg$ com CMg crescente
- [ ] (c) $P = CMe$
- [ ] (d) $CMg = CVMe$

**Q2.** A condição $VPMg_L = w$ significa que a firma contrata trabalho até:

- [ ] (a) O produto marginal ser zero
- [ ] (b) O salário igualar o custo médio
- [x] (c) O valor monetário da produção adicional igualar o salário
- [ ] (d) O produto total ser máximo

**Q3.** Pelo Lema de Hotelling, a oferta da firma é:

- [x] (a) $q^* = \partial\pi^*/\partial P$
- [ ] (b) $q^* = -\partial\pi^*/\partial P$
- [ ] (c) $q^* = \partial C/\partial P$
- [ ] (d) $q^* = \pi^*/P$

**Q4.** A lei da oferta decorre de qual propriedade da função lucro?

- [ ] (a) Homogeneidade de grau 1
- [x] (b) Convexidade em $P$
- [ ] (c) Concavidade em $P$
- [ ] (d) Monotonicidade em $w$

**Q5.** Se todos os preços (produto e fatores) dobram, o lucro máximo:

- [x] (a) Dobra (homogeneidade de grau 1)
- [ ] (b) Quadruplica
- [ ] (c) Não se altera
- [ ] (d) Cai pela metade

</div>

---

!!! abstract "Próxima aula"
    **Aula 21**: Maximização de lucro II — receita marginal, decisão de fechamento, curva de oferta e excedente do produtor. Revise a relação entre CMg e CVMe!
