# Pré-Aula 04 — Lab: Curvas de Indiferença (Prática)

!!! info "Leitura obrigatória"
    **Cap. 3, Seções 3.4–3.6** do livro interativo | Tempo estimado: **40 min**

## Objetivos de aprendizagem

1. Calcular e interpretar a elasticidade de substituição $\sigma$ para as funções clássicas
2. Demonstrar como a CES aninha Linear, Cobb-Douglas e Leontief via parâmetro $\rho$
3. Preparar uma "ficha técnica" completa para uma função utilidade atribuída (atividade Jigsaw)

---

## 1. Elasticidade de substituição

A elasticidade de substituição $\sigma$ mede a **facilidade** com que o consumidor troca um bem pelo outro ao longo da curva de indiferença:

$$\sigma = \frac{d\ln(y/x)}{d\ln(\text{TMS})}$$

- $\sigma$ alto: curvas "suaves" — o consumidor substitui facilmente (ex.: Coca vs. Pepsi)
- $\sigma$ baixo: curvas "angulosas" — o consumidor exige proporções fixas (ex.: café e açúcar)
- $\sigma = \infty$: substitutos perfeitos (Linear)
- $\sigma = 1$: Cobb-Douglas
- $\sigma = 0$: complementares perfeitos (Leontief)

---

## 2. A função CES: a grande unificadora

A função CES (Constant Elasticity of Substitution) é:

$$U(x,y) = \left(\alpha x^{\rho} + (1-\alpha) y^{\rho}\right)^{1/\rho}, \quad \rho \leq 1, \ \rho \neq 0$$

onde:

- $\alpha \in (0,1)$: peso relativo do bem $x$
- $\rho$: parâmetro de substituição, com $\sigma = \frac{1}{1-\rho}$

### TMS da CES

$$\text{TMS}_{x,y} = \frac{\alpha}{1-\alpha} \left(\frac{y}{x}\right)^{1-\rho}$$

---

## 3. Casos especiais da CES

| Parâmetro | $\sigma$ | Função | Curvas de indiferença |
|:---|:---|:---|:---|
| $\rho \to 1$ | $\sigma \to \infty$ | **Linear**: $\alpha x + (1-\alpha)y$ | Retas paralelas |
| $\rho \to 0$ | $\sigma = 1$ | **Cobb-Douglas**: $x^{\alpha} y^{1-\alpha}$ | Hipérboles convexas |
| $\rho \to -\infty$ | $\sigma \to 0$ | **Leontief**: $\min\{\alpha x, (1-\alpha)y\}$ | L's com vértice na ray |

!!! note "Intuição Econômica"
    **Por que a CES é tão importante?**

    Porque ela captura um **espectro contínuo** de comportamentos de substituição com um único parâmetro $\rho$. Em vez de escolher entre modelos separados, o economista estima $\rho$ e os dados "escolhem" se os bens são mais parecidos com substitutos perfeitos ou complementares perfeitos. Na prática empírica, quase todos os modelos de demanda partem da CES.

---

## 4. Quase-concavidade e preferências convexas

Uma função $U$ é **quase-côncava** se seus conjuntos de nível superior são convexos:

$$\{(x,y) : U(x,y) \geq \bar{U}\} \text{ é convexo para todo } \bar{U}$$

Quase-concavidade garante que:

- As curvas de indiferença são **convexas** (arqueiam em direção à origem)
- A TMS é **decrescente** ao longo da curva
- A solução do problema do consumidor é um **máximo** (não mínimo)

!!! tip "Teste prático"
    Verifique quase-concavidade calculando o **Hessiano Orlado**. Se o determinante do Hessiano orlado for positivo, a função é quase-côncava na região relevante.

---

## 5. Preparação para o Jigsaw: ficha técnica

Na aula, cada grupo será "especialista" em uma função. Prepare sua ficha:

!!! example "Modelo de ficha técnica"
    **Função:** Cobb-Douglas $U = x^{0{,}4} y^{0{,}6}$

    | Item | Resultado |
    |:---|:---|
    | TMS | $\frac{0{,}4 \cdot y}{0{,}6 \cdot x} = \frac{2y}{3x}$ |
    | $\sigma$ | $1$ (sempre) |
    | Curvas | Hipérboles convexas, nunca tocam os eixos |
    | Quase-côncava? | Sim |
    | Particularidade | Gasto fixo: fração $a=0{,}4$ da renda em $x$ |

---

## Gráfico interativo: famílias de funções utilidade

<div id="graph-utility-functions" style="min-height: 450px;">
<iframe src="../../graficos/cap03/funcoes-utilidade.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Varie $\rho$ de $-5$ até $0{,}9$ e observe a transição de Leontief a Linear
    - Compare as curvas com $\alpha = 0{,}3$ vs. $\alpha = 0{,}7$
    - Identifique visualmente a elasticidade de substituição pela "curvatura"

---

## Exercícios de preparação

**Exercício 1.** Para a CES com $\rho = 0{,}5$ e $\alpha = 0{,}5$, calcule $\sigma$ e a TMS no ponto $(4, 1)$.

??? success "Solução"
    $\sigma = \frac{1}{1-\rho} = \frac{1}{1-0{,}5} = 2$

    $\text{TMS} = \frac{0{,}5}{0{,}5}\left(\frac{1}{4}\right)^{1-0{,}5} = \left(\frac{1}{4}\right)^{0{,}5} = \frac{1}{2} = 0{,}5$

    O consumidor aceita perder 0,5 unidade de $y$ por 1 unidade a mais de $x$.

**Exercício 2.** Mostre que quando $\rho \to 0$, a CES converge para Cobb-Douglas.

??? success "Solução"
    Tomando $\ln U = \frac{1}{\rho}\ln(\alpha x^{\rho} + (1-\alpha)y^{\rho})$. Quando $\rho \to 0$, aplicamos L'Hôpital: $x^{\rho} = e^{\rho \ln x} \approx 1 + \rho \ln x$. Substituindo:

    $\ln U \approx \frac{1}{\rho}\ln\left(1 + \rho[\alpha \ln x + (1-\alpha)\ln y]\right) \to \alpha \ln x + (1-\alpha)\ln y$

    Portanto $U \to x^{\alpha} y^{1-\alpha}$, que é Cobb-Douglas.

**Exercício 3.** Na Leontief $U = \min\{2x, 3y\}$, se o consumidor tem $(6, 4)$, quanto de $x$ está sendo "desperdiçado"?

??? success "Solução"
    O vértice ocorre quando $2x = 3y$, ou seja, $x = \frac{3y}{2}$. Com $y = 4$: $x^* = 6$. Neste caso, $2(6) = 12 = 3(4) = 12$. O consumidor está **exatamente no vértice** — nada é desperdiçado. A utilidade é $U = \min\{12, 12\} = 12$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Na CES, o que acontece com as curvas de indiferença quando $\rho \to -\infty$?

- [ ] (a) Tornam-se retas paralelas
- [ ] (b) Tornam-se hipérboles
- [x] (c) Tornam-se L's (ângulo reto)
- [ ] (d) Desaparecem

**Q2.** Qual é a elasticidade de substituição da Cobb-Douglas?

- [ ] (a) 0
- [x] (b) 1
- [ ] (c) $\infty$
- [ ] (d) Depende dos expoentes

**Q3.** Se $U = \min\{3x, 2y\}$, qual é a proporção ótima de consumo $x/y$?

- [ ] (a) $3/2$
- [x] (b) $2/3$
- [ ] (c) $1$
- [ ] (d) $6$

**Q4.** A quase-concavidade de $U$ garante que:

- [ ] (a) A utilidade é cardinal
- [ ] (b) A TMS é crescente
- [x] (c) Os conjuntos de nível superior são convexos
- [ ] (d) A função é diferenciável

**Q5.** Na CES com $\rho = 0{,}5$, a elasticidade de substituição vale:

- [ ] (a) 0,5
- [x] (b) 2
- [ ] (c) 1
- [ ] (d) $\infty$

</div>

---

!!! abstract "Próxima aula"
    **Aula 04**: Lab Jigsaw — cada grupo apresenta sua função utilidade e ensina os demais. Traga sua ficha técnica preparada!
