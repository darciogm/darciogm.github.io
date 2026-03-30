# Pré-Aula 11 — Escolha sob Incerteza e Utilidade Esperada

!!! info "Leitura obrigatória"
    **Cap. 7, Seções 7.1–7.4** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Calcular o valor esperado de uma loteria e distinguir valor esperado de utilidade esperada
2. Classificar atitudes frente ao risco (avesso, neutro, amante) usando a concavidade da função utilidade
3. Calcular equivalente de certeza, prêmio de risco e o coeficiente de Arrow-Pratt

---

## 1. Por que incerteza importa?

Na vida real, quase nenhuma decisão é tomada com certeza: investir na bolsa, fazer seguro, escolher uma carreira. Precisamos de um modelo que permita ao consumidor **comparar resultados incertos**.

Uma **loteria** é um conjunto de resultados possíveis, cada um com uma probabilidade:

$$L = \{(x_1, p_1), (x_2, p_2), \dots, (x_n, p_n)\} \quad \text{com } \sum_{i} p_i = 1$$

O **valor esperado** da loteria é:

$$E[L] = \sum_{i} p_i x_i$$

---

## 2. O Paradoxo de São Petersburgo

Considere o seguinte jogo: uma moeda é lançada repetidamente até sair cara. Se a primeira cara sai no lançamento $n$, você recebe $2^n$ reais.

O valor esperado é:

$$E[L] = \sum_{n=1}^{\infty} \frac{1}{2^n} \cdot 2^n = \sum_{n=1}^{\infty} 1 = \infty$$

O valor esperado é **infinito**, mas ninguém pagaria mais do que algumas dezenas de reais para jogar. Por quê?

A resposta de Daniel Bernoulli (1738): as pessoas não maximizam **valor esperado**, mas **utilidade esperada** — e a utilidade é **côncava** (cada real adicional vale menos).

---

## 3. Axiomas de Von Neumann-Morgenstern (VNM)

Para que a utilidade esperada funcione como critério de decisão, precisamos de axiomas sobre preferências entre loterias:

| Axioma | Significado |
|:---|:---|
| **Completude** | O agente compara quaisquer duas loterias |
| **Transitividade** | Sem ciclos entre loterias |
| **Continuidade** | Pequenas mudanças nas probabilidades geram pequenas mudanças na preferência |
| **Independência** | Se $L_1 \succ L_2$, então misturar cada uma com uma terceira loteria $L_3$ preserva a preferência |

**Teorema VNM:** Se os axiomas são satisfeitos, existe uma função $u$ (utilidade de Bernoulli) tal que:

$$L_1 \succeq L_2 \iff E[u(L_1)] \geq E[u(L_2)]$$

$$E[u(L)] = \sum_{i} p_i \, u(x_i)$$

!!! warning "Utilidade cardinal"
    Diferentemente da utilidade ordinal do consumidor (onde $V = f(U)$ com $f' > 0$ preserva preferências), aqui a função $u$ é definida **a menos de transformações afins**: $v = a + bu$ com $b > 0$. Isso significa que a curvatura de $u$ tem significado — ela mede a atitude frente ao risco.

---

## 4. Aversão ao risco e concavidade

Considere uma loteria $L$ com valor esperado $E[L]$ e compare com receber $E[L]$ com certeza.

**Desigualdade de Jensen:**

Se $u$ é **côncava**: $u(E[L]) > E[u(L)]$ — prefere o valor esperado certo à loteria.

Se $u$ é **convexa**: $u(E[L]) < E[u(L)]$ — prefere a loteria ao valor esperado certo.

| Tipo | Função $u$ | Comportamento |
|:---|:---|:---|
| **Avesso ao risco** | Côncava ($u'' < 0$) | Prefere certeza; faz seguro |
| **Neutro ao risco** | Linear ($u'' = 0$) | Indiferente |
| **Amante do risco** | Convexa ($u'' > 0$) | Prefere a loteria; joga |

!!! example "Exemplo: cara ou coroa"
    Loteria: R$ 100 com prob. 50% ou R$ 0 com prob. 50%. $E[L] = 50$.

    Se $u(x) = \sqrt{x}$:

    $E[u(L)] = 0{,}5 \cdot \sqrt{100} + 0{,}5 \cdot \sqrt{0} = 0{,}5 \cdot 10 = 5$

    $u(E[L]) = \sqrt{50} \approx 7{,}07$

    Como $u(50) > E[u(L)]$: o agente é **avesso ao risco**.

---

## 5. Equivalente de certeza e prêmio de risco

O **equivalente de certeza** $EC$ é o valor certo que dá a mesma utilidade que a loteria:

$$u(EC) = E[u(L)] \implies EC = u^{-1}\big(E[u(L)]\big)$$

O **prêmio de risco** $\pi$ é quanto o agente paga para eliminar o risco:

$$\pi = E[L] - EC$$

Para um avesso ao risco: $EC < E[L]$, logo $\pi > 0$.

!!! example "Continuação do exemplo"
    $E[u(L)] = 5$, logo $EC = u^{-1}(5) = 5^2 = 25$.

    $\pi = E[L] - EC = 50 - 25 = 25$.

    O agente aceitaria receber R$ 25 com certeza em vez de jogar a loteria de R$ 0/R$ 100.

---

## Gráfico interativo: utilidade esperada e aversão ao risco

<div id="graph-expected-utility" style="min-height: 450px;">
<iframe src="../../graficos/cap07/utilidade-esperada.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Mude a curvatura de $u$ e observe como $EC$ e $\pi$ mudam
    - Compare os casos côncavo, linear e convexo
    - Arraste as probabilidades e veja o impacto na utilidade esperada

---

## 6. Coeficiente de Arrow-Pratt

O **coeficiente de aversão absoluta ao risco** de Arrow-Pratt mede a intensidade da aversão ao risco:

$$A(x) = -\frac{u''(x)}{u'(x)}$$

O **coeficiente de aversão relativa ao risco**:

$$R(x) = -\frac{x \cdot u''(x)}{u'(x)} = x \cdot A(x)$$

| Função | $A(x)$ | $R(x)$ | Tipo |
|:---|:---|:---|:---|
| $u = \sqrt{x}$ | $\frac{1}{2x}$ | $\frac{1}{2}$ | CRRA |
| $u = \ln x$ | $\frac{1}{x}$ | $1$ | CRRA |
| $u = -e^{-ax}$ | $a$ | $ax$ | CARA |

- **CARA** (Constant Absolute Risk Aversion): $A(x) = $ constante
- **CRRA** (Constant Relative Risk Aversion): $R(x) = $ constante

---

## 7. Seguro: aplicação da aversão ao risco

Um indivíduo avesso ao risco com riqueza $W$ enfrenta uma perda $D$ com probabilidade $p$.

Uma seguradora oferece cobertura $K$ ao prêmio $\gamma K$ (onde $\gamma$ é o preço por unidade de cobertura).

**Riqueza nos estados:**

$$W_{\text{sem perda}} = W - \gamma K$$
$$W_{\text{com perda}} = W - D - \gamma K + K = W - D + K(1 - \gamma)$$

**Seguro atuarialmente justo**: $\gamma = p$. Neste caso, o avesso ao risco faz **seguro completo** ($K = D$).

!!! note "Intuição Econômica"
    **Por que seguros existem?**

    O seguro é uma transferência de risco: o consumidor avesso ao risco paga um prêmio para transferir o risco à seguradora. A seguradora, por diversificar entre milhares de contratos, enfrenta risco muito menor (Lei dos Grandes Números). Assim, o **risco desaparece** no agregado — mas não por mágica: é a diversificação que o elimina.

    Para o seguro justo ($\gamma = p$), o teorema é elegante: o avesso ao risco iguala a riqueza em todos os estados — elimina completamente a incerteza.

---

## Exercícios de preparação

**Exercício 1.** Uma loteria paga R$ 400 com probabilidade 0,3 e R$ 100 com probabilidade 0,7. Se $u(x) = \ln(x)$, calcule o valor esperado, a utilidade esperada, o equivalente de certeza e o prêmio de risco.

??? success "Solução"
    $E[L] = 0{,}3(400) + 0{,}7(100) = 120 + 70 = 190$

    $E[u(L)] = 0{,}3 \ln(400) + 0{,}7 \ln(100) = 0{,}3(5{,}991) + 0{,}7(4{,}605) = 1{,}797 + 3{,}224 = 5{,}021$

    $EC = e^{5{,}021} \approx 151{,}6$

    $\pi = 190 - 151{,}6 = 38{,}4$

    O agente aceitaria R$ 151,60 com certeza em vez da loteria de valor esperado R$ 190.

**Exercício 2.** Mostre que, para $u(x) = -e^{-2x}$, o coeficiente de aversão absoluta é constante e calcule seu valor.

??? success "Solução"
    $u'(x) = 2e^{-2x}$

    $u''(x) = -4e^{-2x}$

    $A(x) = -\frac{u''(x)}{u'(x)} = -\frac{-4e^{-2x}}{2e^{-2x}} = \frac{4}{2} = 2$

    $A(x) = 2$ para todo $x$. Trata-se de uma função CARA com parâmetro $a = 2$.

**Exercício 3.** Um fazendeiro com riqueza $W = 1000$ enfrenta risco de perda $D = 600$ com probabilidade $p = 0{,}2$. Se o seguro tem preço atuarialmente justo ($\gamma = 0{,}2$) e $u = \sqrt{x}$, mostre que o seguro completo é ótimo.

??? success "Solução"
    Com seguro completo ($K = D = 600$): prêmio $= 0{,}2 \times 600 = 120$.

    $W_{\text{final}} = 1000 - 120 = 880$ em ambos os estados.

    $U_{\text{seguro}} = \sqrt{880} \approx 29{,}66$

    Sem seguro: $U_{\text{sem}} = 0{,}8\sqrt{1000} + 0{,}2\sqrt{400} = 0{,}8(31{,}62) + 0{,}2(20) = 25{,}30 + 4{,}00 = 29{,}30$

    $U_{\text{seguro}} = 29{,}66 > 29{,}30 = U_{\text{sem}}$. Seguro completo é melhor.

    De fato, para $\gamma = p$ e $u'' < 0$, o seguro completo sempre é ótimo (pode-se provar via CPO: $u'(W_1) = u'(W_2) \implies W_1 = W_2$).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O Paradoxo de São Petersburgo mostra que as pessoas:

- [ ] (a) Maximizam o valor esperado
- [x] (b) Não maximizam o valor esperado — a utilidade marginal da renda é decrescente
- [ ] (c) São amantes do risco
- [ ] (d) São neutras ao risco

**Q2.** Se $u(x) = x^2$, o agente é:

- [ ] (a) Avesso ao risco
- [ ] (b) Neutro ao risco
- [x] (c) Amante do risco
- [ ] (d) Impossível determinar

**Q3.** O equivalente de certeza é:

- [ ] (a) O valor esperado da loteria
- [x] (b) O valor certo que dá a mesma utilidade que a loteria
- [ ] (c) O prêmio de seguro
- [ ] (d) O lucro esperado

**Q4.** Se o prêmio de risco é positivo, o agente é:

- [x] (a) Avesso ao risco
- [ ] (b) Neutro ao risco
- [ ] (c) Amante do risco
- [ ] (d) Indiferente ao risco

**Q5.** No seguro atuarialmente justo, um avesso ao risco:

- [x] (a) Compra seguro completo
- [ ] (b) Não compra seguro
- [ ] (c) Compra seguro parcial
- [ ] (d) É indiferente entre comprar ou não

</div>

---

!!! abstract "Próxima aula"
    **Aula 11**: Mini-lecture sobre utilidade esperada e aversão ao risco + Peer Instruction sobre classificação de atitudes frente ao risco.
