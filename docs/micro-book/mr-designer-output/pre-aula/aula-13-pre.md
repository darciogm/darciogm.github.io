# Pré-Aula 13 — Escolha sob Incerteza I: Loterias e Utilidade Esperada

!!! info "Leitura obrigatória"
    **Cap. 7, Seções 7.1–7.3** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Definir loterias simples e compostas e operar com reduções de loterias compostas.
2. Enunciar os axiomas de Von Neumann-Morgenstern e o teorema da utilidade esperada.
3. Classificar as três atitudes perante o risco e aplicar a desigualdade de Jensen.

---

## 1. Loterias e o Paradoxo de São Petersburgo

Uma **loteria simples** é definida por:

$$L = (p, W_1;\; 1-p, W_2)$$

onde $W_1$ e $W_2$ são os resultados monetários e $p$ a probabilidade de $W_1$. O **valor esperado** é:

$$E[L] = pW_1 + (1-p)W_2$$

**Loterias compostas** são loterias cujos prêmios são outras loterias. O **axioma da redução** garante que toda loteria composta pode ser simplificada pela lei das probabilidades totais.

O **paradoxo de São Petersburgo** mostra que o valor esperado não basta para decisões: uma moeda é lançada repetidamente e o prêmio é $2^n$ se a primeira cara aparece no lançamento $n$:

$$E[\text{prêmio}] = \sum_{n=1}^{\infty} \frac{1}{2^n} \cdot 2^n = \sum_{n=1}^{\infty} 1 = \infty$$

Apesar do valor esperado infinito, ninguém pagaria uma quantia arbitrariamente grande para jogar.

!!! note "Intuição Econômica"
    O paradoxo de São Petersburgo motivou Daniel Bernoulli (1738) a propor que as pessoas avaliam **utilidade da riqueza**, não a riqueza em si. A utilidade marginal decrescente da riqueza explica por que prêmios cada vez maiores contribuem cada vez menos para o bem-estar.

---

## 2. Axiomas VNM e o Teorema da Utilidade Esperada

Os axiomas de **Von Neumann-Morgenstern** são:

1. **Completude**: para quaisquer loterias $L_1, L_2$, o agente pode compará-las ($L_1 \succeq L_2$, $L_2 \succeq L_1$ ou ambos).
2. **Transitividade**: se $L_1 \succeq L_2$ e $L_2 \succeq L_3$, então $L_1 \succeq L_3$.
3. **Continuidade**: se $L_1 \succeq L_2 \succeq L_3$, existe $\alpha \in [0,1]$ tal que $L_2 \sim \alpha L_1 + (1-\alpha) L_3$.
4. **Independência**: se $L_1 \succeq L_2$, então para qualquer $L_3$ e $\alpha \in (0,1]$: $\alpha L_1 + (1-\alpha)L_3 \succeq \alpha L_2 + (1-\alpha)L_3$.

**Teorema**: Se as preferências satisfazem esses axiomas, existe uma função $u(\cdot)$ tal que:

$$L_1 \succeq L_2 \iff E[u(L_1)] \geq E[u(L_2)]$$

onde $E[u(L)] = \sum_i p_i \, u(W_i)$ é a **utilidade esperada**.

!!! note "Intuição Econômica"
    O axioma da independência é o mais forte e controverso: ele diz que misturar a mesma loteria $L_3$ com duas alternativas não deve alterar a preferência entre elas. O paradoxo de Allais (que veremos na Aula 15) viola justamente este axioma.

---

## 3. Atitudes Perante o Risco

Considere a loteria $L = (p, W_1;\; 1-p, W_2)$ com valor esperado $E[W]$. Comparamos $u(E[W])$ com $E[u(W)]$:

- **Aversão ao risco**: $u(E[W]) > E[u(W)]$ → $u$ é **côncava**.
- **Neutralidade ao risco**: $u(E[W]) = E[u(W)]$ → $u$ é **linear**.
- **Propensão ao risco**: $u(E[W]) < E[u(W)]$ → $u$ é **convexa**.

Exemplos clássicos de funções côncavas (averso): $u(W) = \ln W$, $u(W) = \sqrt{W}$, $u(W) = W^\alpha$ com $0 < \alpha < 1$.

<iframe src="graficos/cap07/aversao-risco.html"></iframe>

!!! tip "Explore o gráfico"
    Observe a concavidade da função utilidade. A diferença vertical entre a corda (utilidade esperada) e a curva (utilidade do valor esperado) representa a "perda" que o averso ao risco percebe ao enfrentar incerteza.

---

## 4. Desigualdade de Jensen e Prêmio de Risco

A **desigualdade de Jensen** formaliza a aversão ao risco: se $u$ é côncava e $W$ é uma variável aleatória não degenerada:

$$u(E[W]) > E[u(W)]$$

O **prêmio de risco** $\pi$ é o valor máximo que o agente pagaria para eliminar a incerteza:

$$u(E[W] - \pi) = E[u(W)]$$

O **equivalente certo** é $CE = E[W] - \pi$: a quantia certa que dá a mesma utilidade que a loteria.

<iframe src="graficos/cap07/premio-risco.html"></iframe>

!!! tip "Explore o gráfico"
    Mova as probabilidades e os resultados da loteria. Observe como o prêmio de risco (distância horizontal entre $E[W]$ e $CE$) aumenta com a variância da loteria e com a concavidade de $u$.

---

## Exercícios Preparatórios

**Exercício 1.** Um agente com $u(W) = \sqrt{W}$ enfrenta a loteria $L = (0{,}5,\; 100;\; 0{,}5,\; 400)$. Calcule $E[W]$, $E[u(W)]$, o equivalente certo e o prêmio de risco.

??? success "Solução"
    $E[W] = 0{,}5(100) + 0{,}5(400) = 250$.  
    $E[u(W)] = 0{,}5\sqrt{100} + 0{,}5\sqrt{400} = 0{,}5(10) + 0{,}5(20) = 15$.  
    $CE$: $\sqrt{CE} = 15 \Rightarrow CE = 225$.  
    $\pi = E[W] - CE = 250 - 225 = 25$.

**Exercício 2.** Mostre que um agente com $u(W) = aW + b$ (com $a > 0$) é neutro ao risco.

??? success "Solução"
    $E[u(W)] = E[aW + b] = aE[W] + b = u(E[W])$.  
    Como $u(E[W]) = E[u(W)]$ para qualquer loteria, o agente é neutro ao risco. Além disso, $u''(W) = 0$, confirmando linearidade.

**Exercício 3.** Reduza a loteria composta: $L_c = (0{,}6, L_1;\; 0{,}4, L_2)$ onde $L_1 = (0{,}5,\; 100;\; 0{,}5,\; 200)$ e $L_2 = (0{,}25,\; 100;\; 0{,}75,\; 300)$.

??? success "Solução"
    $P(100) = 0{,}6 \times 0{,}5 + 0{,}4 \times 0{,}25 = 0{,}30 + 0{,}10 = 0{,}40$.  
    $P(200) = 0{,}6 \times 0{,}5 + 0{,}4 \times 0 = 0{,}30$.  
    $P(300) = 0{,}6 \times 0 + 0{,}4 \times 0{,}75 = 0{,}30$.  
    Loteria reduzida: $L = (0{,}40,\; 100;\; 0{,}30,\; 200;\; 0{,}30,\; 300)$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O paradoxo de São Petersburgo demonstra que:

- [ ] (a) O valor esperado é sempre finito
- [x] (b) O valor esperado não é suficiente para explicar decisões sob risco
- [ ] (c) Todos os agentes são propensos ao risco
- [ ] (d) Loterias compostas não podem ser reduzidas

**Q2.** O axioma da independência de VNM afirma que:

- [ ] (a) As preferências são transitivas
- [ ] (b) Existe sempre uma probabilidade de indiferença
- [x] (c) Misturar a mesma terceira loteria não altera a ordenação entre duas loterias
- [ ] (d) Todas as loterias podem ser comparadas

**Q3.** Se $u''(W) < 0$ para todo $W$, o agente é:

- [x] (a) Averso ao risco
- [ ] (b) Neutro ao risco
- [ ] (c) Propenso ao risco
- [ ] (d) Impossível determinar

**Q4.** O equivalente certo de uma loteria para um averso ao risco é:

- [ ] (a) Maior que o valor esperado
- [ ] (b) Igual ao valor esperado
- [x] (c) Menor que o valor esperado
- [ ] (d) Igual ao prêmio de risco

**Q5.** A desigualdade de Jensen para $u$ côncava implica:

- [x] (a) $u(E[W]) > E[u(W)]$
- [ ] (b) $u(E[W]) < E[u(W)]$
- [ ] (c) $u(E[W]) = E[u(W)]$
- [ ] (d) Depende da loteria específica

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 14**, aprofundaremos as medidas de aversão ao risco de Arrow-Pratt, estudaremos o mercado de seguros e a cobertura ótima.
