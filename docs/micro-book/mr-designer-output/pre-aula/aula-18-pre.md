# Pré-Aula 18 — Função de Produção II

!!! info "Leitura obrigatória"
    **Cap. 10, Seções 10.4–10.6** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Classificar funções de produção específicas (linear, Leontief, Cobb-Douglas, CES) e calcular a elasticidade de substituição $\sigma$ para cada uma
2. Distinguir os três tipos de progresso técnico (Hicks-neutro, Harrod-neutro, Solow-neutro) e interpretar o resíduo de Solow
3. Identificar funções homotéticas e traçar o caminho de expansão da firma

---

## 1. Funções de produção específicas

### Linear

$$f(K,L) = aK + bL$$

Fatores são **substitutos perfeitos**. As isoquantas são retas com inclinação $-a/b$. A TMST é constante:

$$TMST = \frac{a}{b}$$

### Leontief (proporções fixas)

$$f(K,L) = \min\left\{\frac{K}{a},\; \frac{L}{b}\right\}$$

Fatores são **complementares perfeitos**. As isoquantas têm formato de "L" com vértice em $K = aq$, $L = bq$. Não há possibilidade de substituição: $\sigma = 0$.

### Cobb-Douglas

$$f(K,L) = AK^\alpha L^\beta$$

Com $\alpha, \beta > 0$. Os rendimentos de escala dependem de $\alpha + \beta$:

- $\alpha + \beta > 1$: rendimentos crescentes
- $\alpha + \beta = 1$: rendimentos constantes
- $\alpha + \beta < 1$: rendimentos decrescentes

A TMST é $\displaystyle TMST = \frac{\alpha}{\beta}\cdot\frac{L}{K}$.

### CES (Elasticidade de Substituição Constante)

$$f(K,L) = A\!\left[\delta K^\rho + (1-\delta)L^\rho\right]^{1/\rho}$$

onde $\rho \leq 1$, $\rho \neq 0$, e $0 < \delta < 1$.

!!! note "Intuição Econômica"
    **A família CES unifica tudo.** Para $\rho = 1$ obtemos a linear; para $\rho \to 0$ a Cobb-Douglas; para $\rho \to -\infty$ a Leontief. O parâmetro $\rho$ governa a facilidade de substituição entre fatores — quanto maior $\rho$, mais fácil substituir capital por trabalho e vice-versa.

---

## 2. Elasticidade de substituição

A **elasticidade de substituição** $\sigma$ mede a variação percentual na razão capital-trabalho quando a TMST varia em 1%:

$$\sigma = \frac{d\ln(K/L)}{d\ln(TMST)}$$

| Função | $\sigma$ |
|---|---|
| Linear | $\infty$ |
| Cobb-Douglas | $1$ |
| CES | $\dfrac{1}{1-\rho}$ |
| Leontief | $0$ |

Para a CES, a relação $\sigma = 1/(1-\rho)$ mostra que $\rho$ e $\sigma$ movem-se juntos: maior $\rho$ implica maior substituibilidade.

---

## 3. Progresso técnico

O progresso técnico desloca a função de produção para cima ao longo do tempo. Classificamos pelo efeito sobre a razão $K/L$:

**Hicks-neutro:** $f(K,L,t) = A(t)\cdot g(K,L)$. Multiplica a produção por um fator crescente no tempo. A TMST não se altera para uma dada razão $K/L$.

**Harrod-neutro (labour-augmenting):** $f(K,L,t) = g\big(K,\, A(t)L\big)$. Equivale a aumentar a eficiência do trabalho — cada trabalhador produz como se fossem $A(t)$ trabalhadores.

**Solow-neutro (capital-augmenting):** $f(K,L,t) = g\big(A(t)K,\, L\big)$. Equivale a aumentar a eficiência do capital.

!!! note "Intuição Econômica"
    **O resíduo de Solow mede nossa ignorância.** Ao estimar $\dot{Y}/Y = \dot{A}/A + \alpha\dot{K}/K + \beta\dot{L}/L$, o termo $\dot{A}/A$ — a PTF (produtividade total dos fatores) — captura tudo aquilo que explica o crescimento do produto além da acumulação de fatores: inovação, eficiência institucional e melhorias na qualidade dos insumos.

---

## 4. Funções homotéticas e caminho de expansão

Uma função de produção é **homotética** se pode ser escrita como $f(K,L) = h\big(g(K,L)\big)$, onde $g$ é homogênea de grau 1 e $h$ é crescente. As isoquantas são "versões ampliadas" umas das outras — ao longo de qualquer raio, a TMST é constante.

O **caminho de expansão** conecta os pontos de minimização de custos à medida que $q$ varia, com preços dos fatores fixos. Para funções homotéticas, o caminho de expansão é uma **reta** partindo da origem: a razão $K/L$ ótima depende apenas dos preços relativos, não do nível de produção.

---

## Gráfico interativo: rendimentos de escala

<div id="graph-rendimentos" style="min-height: 450px;">
<iframe src="graficos/cap10/rendimentos-escala.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare as isoquantas de Cobb-Douglas com $\alpha + \beta < 1$, $= 1$ e $> 1$
    - Observe como o espaçamento entre isoquantas muda com os rendimentos de escala
    - Trace o caminho de expansão e verifique que é linear para funções homotéticas

---

## Gráfico interativo: progresso técnico

<div id="graph-progresso" style="min-height: 450px;">
<iframe src="graficos/cap10/progresso-tecnico.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Alterne entre Hicks-neutro, Harrod-neutro e Solow-neutro
    - Observe como cada tipo de progresso técnico desloca as isoquantas de forma diferente
    - Verifique que o Hicks-neutro mantém a TMST constante ao longo de raios

---

## Exercícios de preparação

**Exercício 1.** Para a CES com $\rho = 0{,}5$ e $\delta = 0{,}5$, calcule $\sigma$ e mostre que quando $\rho \to 0$ a CES converge para a Cobb-Douglas.

??? success "Solução"
    $\sigma = \frac{1}{1-\rho} = \frac{1}{1-0{,}5} = 2$

    Para a convergência, tome $\ln f = \ln A + \frac{1}{\rho}\ln[\delta K^\rho + (1-\delta)L^\rho]$. Usando $K^\rho \approx 1 + \rho\ln K$ quando $\rho \to 0$:

    $$\frac{1}{\rho}\ln[1 + \rho(\delta\ln K + (1-\delta)\ln L)] \to \delta\ln K + (1-\delta)\ln L$$

    Logo $f \to AK^\delta L^{1-\delta}$, que é Cobb-Douglas.

**Exercício 2.** Uma economia tem $Y = AK^{0{,}3}L^{0{,}7}$. Em um ano, $\dot{Y}/Y = 5\%$, $\dot{K}/K = 4\%$ e $\dot{L}/L = 2\%$. Calcule o resíduo de Solow.

??? success "Solução"
    $$\frac{\dot{A}}{A} = \frac{\dot{Y}}{Y} - \alpha\frac{\dot{K}}{K} - \beta\frac{\dot{L}}{L} = 5\% - 0{,}3 \times 4\% - 0{,}7 \times 2\% = 5\% - 1{,}2\% - 1{,}4\% = 2{,}4\%$$

    O resíduo de Solow é $2{,}4\%$ — quase metade do crescimento do produto é atribuída ao progresso técnico.

**Exercício 3.** Mostre que a Cobb-Douglas é homotética e determine o caminho de expansão quando $w/v = 2$.

??? success "Solução"
    A Cobb-Douglas é homogênea de grau $\alpha + \beta$: $f(tK,tL) = t^{\alpha+\beta}f(K,L)$. Toda função homogênea é homotética.

    Minimização de custos: $TMST = v/w \implies \frac{\alpha L}{\beta K} = \frac{1}{2} \implies L = \frac{\beta}{2\alpha}K$.

    O caminho de expansão é uma reta pela origem com inclinação $\beta/(2\alpha)$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A elasticidade de substituição da função Cobb-Douglas é:

- [ ] (a) $0$
- [x] (b) $1$
- [ ] (c) $\infty$
- [ ] (d) Depende dos parâmetros $\alpha$ e $\beta$

**Q2.** Na CES, quando $\rho \to -\infty$, obtemos:

- [ ] (a) Função linear
- [ ] (b) Cobb-Douglas
- [x] (c) Leontief
- [ ] (d) Rendimentos constantes

**Q3.** O progresso técnico Harrod-neutro é equivalente a:

- [ ] (a) Aumentar a eficiência do capital
- [x] (b) Aumentar a eficiência do trabalho
- [ ] (c) Multiplicar a produção por um fator constante
- [ ] (d) Reduzir os rendimentos de escala

**Q4.** O resíduo de Solow mede:

- [ ] (a) A taxa de depreciação do capital
- [ ] (b) O crescimento da força de trabalho
- [x] (c) O crescimento da produtividade total dos fatores
- [ ] (d) A elasticidade de substituição

**Q5.** Para uma função homotética, o caminho de expansão é:

- [x] (a) Uma reta partindo da origem
- [ ] (b) Uma curva côncava
- [ ] (c) Uma isoquanta
- [ ] (d) A diagonal principal do espaço de fatores

</div>

---

!!! abstract "Próxima aula"
    **Aula 19**: Custos de produção e minimização de custos — derivação formal via Lagrangiano, funções custo e o Lema de Shephard. Revise derivadas parciais e multiplicadores de Lagrange!
