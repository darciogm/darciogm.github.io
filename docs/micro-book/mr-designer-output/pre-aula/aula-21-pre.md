# Pré-Aula 21 — Maximização de Lucro II: Receita Marginal e Oferta

!!! info "Leitura obrigatória"
    **Cap. 12, Seções 12.4–12.6** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Relacionar receita marginal com elasticidade-preço da demanda e aplicar à decisão de produção
2. Derivar a curva de oferta de curto prazo a partir da condição de fechamento ($P \geq CVMe_{\min}$)
3. Decompor o efeito de uma variação de preço de fator em efeito substituição e efeito produto

---

## 1. Receita marginal e elasticidade

Para uma firma com poder de mercado, a receita marginal depende da elasticidade-preço da demanda $\varepsilon_D$:

$$RMg = P\left(1 + \frac{1}{\varepsilon_D}\right) = P\left(1 - \frac{1}{|\varepsilon_D|}\right)$$

| Elasticidade | $RMg$ | Implicação |
|---|---|---|
| $|\varepsilon_D| > 1$ (elástica) | $RMg > 0$ | Aumentar $q$ eleva $RT$ |
| $|\varepsilon_D| = 1$ (unitária) | $RMg = 0$ | $RT$ é máxima |
| $|\varepsilon_D| < 1$ (inelástica) | $RMg < 0$ | Aumentar $q$ reduz $RT$ |

Para a firma **competitiva**, a demanda individual é perfeitamente elástica ($|\varepsilon_D| \to \infty$), logo $RMg = P$.

!!! note "Intuição Econômica"
    **A firma nunca opera na faixa inelástica da demanda.** Se $|\varepsilon_D| < 1$, reduzir a produção aumenta a receita e diminui o custo — o lucro sobe dos dois lados. O ponto de maximização de lucro sempre ocorre onde a demanda é elástica ($|\varepsilon_D| \geq 1$).

---

## 2. Decisão de operar ou fechar

Mesmo com $P = CMg$, a firma pode ter **prejuízo** ($\pi < 0$). No curto prazo, o custo fixo é irrecuperável (*sunk*), então a firma compara:

| Opção | Resultado |
|---|---|
| Produzir $q^*$ | $\pi = Pq^* - CV(q^*) - CF$ |
| Fechar ($q = 0$) | $\pi = -CF$ |

Produzir é melhor se $Pq^* - CV(q^*) > 0$, ou seja:

$$\boxed{P \geq CVMe_{\min}}$$

Se $P < CVMe_{\min}$, a firma fecha no curto prazo (produz $q = 0$).

---

## 3. Curva de oferta de curto prazo

Combinando as condições de ótimo e fechamento:

$$q^S(P) = \begin{cases} CMg^{-1}(P) & \text{se } P \geq CVMe_{\min} \\ 0 & \text{se } P < CVMe_{\min} \end{cases}$$

A curva de oferta individual é o trecho da curva de CMg **acima** do ponto mínimo do CVMe. Para preços entre $CVMe_{\min}$ e $CMe_{\min}$, a firma opera com prejuízo mas cobre parte dos custos fixos.

---

## 4. Excedente do produtor

O **excedente do produtor** (EP) mede o ganho da firma acima do mínimo necessário para induzi-la a produzir:

$$EP = RT - CV = Pq^* - \int_0^{q^*} CMg(q)\,dq$$

Graficamente, é a área entre a linha de preço e a curva de oferta (CMg). Note que $EP = \pi + CF$: o excedente do produtor inclui o lucro econômico mais os custos fixos.

---

## 5. Demanda condicionada vs. incondicional por fatores

**Demanda condicional** $L^c(w,v,q)$: minimiza o custo para produzir $q$ dado (problema de minimização de custos).

**Demanda incondicional** $L^*(P,w,v)$: maximiza o lucro escolhendo tanto $q$ quanto $L$ (problema de maximização de lucro).

A relação: $L^*(P,w,v) = L^c\big(w, v, q^*(P,w,v)\big)$.

### Decomposição: efeito substituição + efeito produto

Quando $w$ aumenta:

$$\underbrace{\frac{\partial L^*}{\partial w}}_{\text{efeito total}} = \underbrace{\frac{\partial L^c}{\partial w}\bigg|_{q=q^*}}_{\text{efeito substituição (}\leq 0\text{)}} + \underbrace{\frac{\partial L^c}{\partial q}\cdot\frac{\partial q^*}{\partial w}}_{\text{efeito produto (}\leq 0\text{)}}$$

- **Efeito substituição** ($\leq 0$): salário mais alto leva a substituir trabalho por capital, mantendo $q$ fixo
- **Efeito produto** ($\leq 0$): custo mais alto reduz a produção ótima, que reduz a demanda por trabalho

Ambos vão na mesma direção: a demanda incondicional é mais elástica que a condicional.

!!! note "Intuição Econômica"
    **Essa decomposição é análoga à de Slutsky para o consumidor.** Lá, o efeito preço se decompunha em efeito substituição (ao longo da curva de indiferença) e efeito renda. Aqui, temos substituição (ao longo da isoquanta) e efeito produto (mudança no nível ótimo de produção). A simetria entre as duas teorias é uma das belezas da microeconomia.

---

## Gráfico interativo: receita marginal

<div id="graph-rmg" style="min-height: 450px;">
<iframe src="graficos/cap12/receita-marginal.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe como a RMg está sempre abaixo da curva de demanda
    - Identifique o ponto onde $RMg = 0$ (elasticidade unitária) e a RT máxima
    - Note que a firma nunca produz na faixa onde $RMg < 0$

---

## Gráfico interativo: curva de oferta e fechamento

<div id="graph-oferta" style="min-height: 450px;">
<iframe src="graficos/cap12/maximizacao-lucro.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Reduza o preço abaixo do CVMe mínimo e veja a firma fechar
    - Identifique a faixa de preços onde a firma opera com prejuízo mas não fecha
    - Observe a área do excedente do produtor para diferentes preços

---

## Exercícios de preparação

**Exercício 1.** Uma firma enfrenta demanda $P = 100 - 2q$. Encontre a função de receita marginal e determine para qual $q$ a receita total é máxima.

??? success "Solução"
    $RT = Pq = 100q - 2q^2$. $RMg = 100 - 4q$.

    $RT$ máxima quando $RMg = 0$: $q = 25$. $RT(25) = 1.250$.

    No ponto $q = 25$: $P = 50$ e $\varepsilon_D = -P/(dP/dq \cdot q) = -50/(2 \times 25) = -1$ (elasticidade unitária).

**Exercício 2.** Uma firma competitiva tem $C(q) = q^3 - 4q^2 + 8q + 5$. Encontre o preço mínimo de operação e a curva de oferta.

??? success "Solução"
    $CV = q^3 - 4q^2 + 8q$. $CVMe = q^2 - 4q + 8$.

    Mínimo: $2q - 4 = 0 \implies q = 2$. $CVMe(2) = 4 - 8 + 8 = 4$.

    Verificação: $CMg = 3q^2 - 8q + 8$. $CMg(2) = 12 - 16 + 8 = 4 = CVMe(2)$.

    Preço mínimo de operação: $P = 4$.

    Oferta: $P = 3q^2 - 8q + 8$ para $P \geq 4$, i.e., $q = \frac{8 + \sqrt{12P - 32}}{6}$.

**Exercício 3.** Explique por que a demanda incondicional por trabalho é mais elástica que a condicional.

??? success "Solução"
    A demanda condicional captura apenas o **efeito substituição**: quando $w$ sobe, a firma substitui trabalho por capital mantendo $q$ fixo. A demanda incondicional captura adicionalmente o **efeito produto**: o custo mais alto reduz $q^*$, o que reduz ainda mais a demanda por trabalho. Como ambos os efeitos são negativos, $|\partial L^*/\partial w| > |\partial L^c/\partial w|$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A receita marginal é negativa quando a demanda é:

- [ ] (a) Elástica ($|\varepsilon| > 1$)
- [ ] (b) Unitária ($|\varepsilon| = 1$)
- [x] (c) Inelástica ($|\varepsilon| < 1$)
- [ ] (d) Perfeitamente elástica

**Q2.** Uma firma deve fechar no curto prazo quando:

- [ ] (a) O lucro econômico é negativo
- [ ] (b) $P < CMe_{\min}$
- [x] (c) $P < CVMe_{\min}$
- [ ] (d) $P < CMg$

**Q3.** A curva de oferta individual de curto prazo é:

- [ ] (a) A curva de CMg inteira
- [x] (b) O trecho do CMg acima do CVMe mínimo
- [ ] (c) O trecho do CMg acima do CMe mínimo
- [ ] (d) A curva de CMe

**Q4.** O excedente do produtor é igual a:

- [ ] (a) Lucro econômico
- [x] (b) Lucro econômico mais custos fixos
- [ ] (c) Receita total menos custo total
- [ ] (d) Custo fixo

**Q5.** O efeito produto na demanda por trabalho é:

- [ ] (a) Positivo (aumento de $w$ aumenta $L$)
- [x] (b) Negativo (aumento de $w$ eleva custos, reduz $q^*$ e $L$)
- [ ] (c) Zero
- [ ] (d) Ambíguo em sinal

</div>

---

!!! abstract "Próxima aula"
    **Aula 22**: Concorrência perfeita e bem-estar — equilíbrio marshalliano, excedentes e o Primeiro Teorema do Bem-Estar. Revise soma horizontal de curvas de oferta!
