# Pré-Aula 17 — Maximização de Lucro e Oferta

!!! info "Leitura obrigatória"
    **Cap. 11, Seções 11.1–11.5** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar a condição de maximização de lucro $P = CMg$ para uma firma competitiva e verificar a condição de segunda ordem
2. Explicar a decisão de fechamento e identificar a curva de oferta individual como o trecho do CMg acima do CVMe mínimo
3. Calcular o excedente do produtor e enunciar o Lema de Hotelling

---

## 1. Lucro e a firma competitiva

O **lucro econômico** é a diferença entre receita total e custo total (incluindo custos de oportunidade):

$$\pi(q) = RT(q) - CT(q) = Pq - C(q)$$

Uma firma **competitiva** (tomadora de preço) não pode influenciar $P$ — trata o preço de mercado como dado. Sua receita marginal é simplesmente:

$$RMg = \frac{dRT}{dq} = P$$

---

## 2. Condições de ótimo

### Condição de Primeira Ordem (CPO)

$$\frac{d\pi}{dq} = P - CMg(q) = 0 \implies \boxed{P = CMg(q^*)}$$

A firma produz até o ponto em que o preço iguala o custo marginal.

### Condição de Segunda Ordem (CSO)

$$\frac{d^2\pi}{dq^2} = -\frac{dCMg}{dq} < 0 \implies \frac{dCMg}{dq} > 0$$

O CMg deve ser **crescente** no ponto ótimo. Isso garante que estamos num máximo, não num mínimo.

!!! example "Exemplo numérico"
    $C(q) = q^3 - 4q^2 + 8q + 5$ e $P = 11$.

    CPO: $P = CMg \implies 11 = 3q^2 - 8q + 8$

    $3q^2 - 8q - 3 = 0 \implies q = \frac{8 \pm \sqrt{64 + 36}}{6} = \frac{8 \pm 10}{6}$

    $q^* = 3$ (descartamos $q = -1/3 < 0$)

    CSO: $\frac{dCMg}{dq} = 6q - 8 = 6(3) - 8 = 10 > 0$ ✓

    $\pi = 11(3) - (27 - 36 + 24 + 5) = 33 - 20 = 13$

---

## 3. A decisão de fechamento

Mesmo com $P = CMg$, a firma pode ter **prejuízo** ($\pi < 0$). Deve continuar operando?

**No curto prazo**, a firma compara duas opções:

| Opção | Resultado |
|---|---|
| Produzir $q^*$ | $\pi = Pq^* - CV(q^*) - CF$ |
| Fechar ($q = 0$) | $\pi = -CF$ |

Produzir é melhor se $Pq^* - CV(q^*) - CF > -CF$, ou seja:

$$P > \frac{CV(q^*)}{q^*} = CVMe(q^*)$$

Como $q^*$ é o ponto onde $P = CMg$, a condição de operação se resume a:

$$\boxed{P \geq CVMe_{\min}}$$

Se $P < CVMe_{\min}$, a firma fecha no curto prazo (produz $q = 0$).

---

## 4. A curva de oferta individual

Combinando as condições de ótimo e fechamento:

$$q^S(P) = \begin{cases} CMg^{-1}(P) & \text{se } P \geq CVMe_{\min} \\ 0 & \text{se } P < CVMe_{\min} \end{cases}$$

A **curva de oferta** é o trecho da curva de CMg **acima** do ponto mínimo do CVMe.

!!! tip "Resumo visual"
    - Para $P$ acima do $CVMe_{\min}$: a firma produz onde $P = CMg$
    - Para $P$ entre $CVMe_{\min}$ e $CMe_{\min}$: a firma produz com prejuízo, mas cobre parte dos custos fixos
    - Para $P$ abaixo do $CVMe_{\min}$: a firma fecha

---

## 5. Excedente do produtor

O **excedente do produtor** (EP) é a diferença entre a receita e o custo variável:

$$EP = RT - CV = Pq^* - CV(q^*)$$

Graficamente, é a área entre a linha de preço e a curva de CMg (que é a curva de oferta):

$$EP = \int_0^{q^*} \big[P - CMg(q)\big] \, dq$$

O EP mede o ganho da firma acima do mínimo necessário para induzi-la a produzir.

---

## 6. Lema de Hotelling

O **Lema de Hotelling** estabelece que a oferta pode ser obtida diretamente da função lucro:

$$q^*(P) = \frac{\partial \pi^*(P)}{\partial P}$$

Onde $\pi^*(P) = \max_q [Pq - C(q)]$ é a **função lucro** (lucro máximo como função do preço).

Analogamente, as demandas de fatores são:

$$L^*(P, w, v) = -\frac{\partial \pi^*}{\partial w}, \qquad K^*(P, w, v) = -\frac{\partial \pi^*}{\partial v}$$

---

## Gráfico interativo: maximização de lucro

<div id="graph-max-lucro" style="min-height: 450px;">
<iframe src="../../graficos/cap11/maximizacao-lucro.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Varie o preço $P$ e observe como $q^*$ se ajusta ao longo do CMg
    - Reduza $P$ abaixo do $CVMe_{\min}$ e veja a firma fechar
    - Note a área do excedente do produtor (entre $P$ e CMg)

---

## Box: Por que preço igual a custo marginal?

!!! note "Intuição Econômica"
    **A lógica marginalista da decisão de produção**

    Se $P > CMg$, a última unidade vendida gera mais receita do que custa — vale a pena produzir mais. Se $P < CMg$, a última unidade custa mais do que rende — é melhor produzir menos. Somente quando $P = CMg$ a firma não tem incentivo para ajustar. Essa lógica é o coração da teoria da oferta: o preço de mercado "sinaliza" à firma exatamente quanto produzir, e a firma responde seguindo sua curva de custo marginal.

---

## Exercícios de preparação

**Exercício 1.** Uma firma competitiva tem $C(q) = 2q^2 + 4q + 50$. O preço de mercado é $P = 20$. Encontre $q^*$, o lucro e determine se a firma deve operar no curto prazo.

??? success "Solução"
    $CMg = 4q + 4$

    CPO: $20 = 4q + 4 \implies q^* = 4$

    CSO: $\frac{dCMg}{dq} = 4 > 0$ ✓

    $\pi = 20(4) - [2(16) + 4(4) + 50] = 80 - [32 + 16 + 50] = 80 - 98 = -18$

    A firma tem prejuízo. Deve operar?

    $CV(q) = 2q^2 + 4q \implies CVMe = 2q + 4$

    $CVMe_{\min} = 4$ (quando $q \to 0^+$, mas como CVMe é crescente, o mínimo é $4$)

    Como $P = 20 > CVMe(4) = 12$, a firma **deve operar**. O prejuízo de $-18$ é menor que o prejuízo de $-50$ (custo fixo) se fechar.

**Exercício 2.** Para a firma do exercício anterior, qual é o preço de fechamento? Qual é o preço de lucro zero?

??? success "Solução"
    Preço de fechamento = $CVMe_{\min}$.

    $CVMe = 2q + 4$ é linear e crescente, então $CVMe_{\min} = 4$ (em $q \to 0$). Na prática, o ponto relevante é onde $CMg = CVMe$: $4q + 4 = 2q + 4 \implies q = 0$, confirmando $CVMe_{\min} = 4$.

    Preço de lucro zero = $CMe_{\min}$.

    $CMe = 2q + 4 + \frac{50}{q}$

    $\frac{d(CMe)}{dq} = 2 - \frac{50}{q^2} = 0 \implies q = 5$

    $CMe(5) = 10 + 4 + 10 = 24$

    Verificação: $CMg(5) = 24 = CMe(5)$ ✓

    Preço de fechamento: $P = 4$. Preço de lucro zero: $P = 24$.

**Exercício 3.** Explique geometricamente por que o excedente do produtor é a área acima da curva de oferta e abaixo do preço.

??? success "Solução"
    A curva de oferta é o trecho crescente do CMg acima do CVMe mínimo. Para cada unidade $q$, o CMg representa o custo adicional de produzi-la. O preço $P$ é a receita adicional por unidade.

    A diferença $P - CMg(q)$ é o "excedente marginal" daquela unidade. Somando (integrando) sobre todas as unidades de $0$ a $q^*$, obtemos o excedente total do produtor:

    $$EP = \int_0^{q^*}[P - CMg(q)]\,dq = Pq^* - CV(q^*)$$

    Graficamente, é exatamente a área entre a linha horizontal de preço e a curva de CMg (oferta), do eixo vertical até $q^*$.

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

**Q2.** Uma firma deve fechar no curto prazo quando:

- [ ] (a) O lucro econômico é negativo
- [ ] (b) $P < CMe_{\min}$
- [x] (c) $P < CVMe_{\min}$
- [ ] (d) $P < CMg$

**Q3.** A curva de oferta individual de curto prazo é:

- [ ] (a) A curva de CMe acima do CMg
- [ ] (b) A curva de CMg inteira
- [x] (c) O trecho do CMg acima do CVMe mínimo
- [ ] (d) O trecho do CMg acima do CMe mínimo

**Q4.** O excedente do produtor é igual a:

- [x] (a) Receita total menos custo variável
- [ ] (b) Receita total menos custo total
- [ ] (c) Lucro econômico
- [ ] (d) Custo fixo

**Q5.** Pelo Lema de Hotelling, a quantidade ofertada pode ser obtida como:

- [ ] (a) $q^* = -\partial \pi^*/\partial P$
- [x] (b) $q^* = \partial \pi^*/\partial P$
- [ ] (c) $q^* = \partial C/\partial P$
- [ ] (d) $q^* = \partial RT/\partial q$

</div>

---

!!! abstract "Próxima aula"
    **Aula 17**: Mini-lecture sobre maximização de lucro + construção da curva de oferta com exercícios aplicados. Traga calculadora!
