# Pré-Aula 13 — Função de Produção e Tecnologia

!!! info "Leitura obrigatória"
    **Cap. 9, Seções 9.1–9.4** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Definir a função de produção, calcular produto marginal e produto médio, e identificar rendimentos marginais decrescentes
2. Traçar isoquantas, calcular a TMST e interpretar seu significado econômico
3. Classificar rendimentos de escala (crescentes, constantes, decrescentes) para funções de produção clássicas

---

## 1. A função de produção

A **função de produção** descreve a relação tecnológica entre insumos e produto:

$$q = f(L, K)$$

onde $L$ = trabalho, $K$ = capital, e $q$ = quantidade produzida.

Pressupostos básicos:

- $f(0, K) = f(L, 0) = 0$ (ambos os insumos são essenciais)
- $f$ é crescente em cada insumo ($f_L > 0$, $f_K > 0$)
- $f$ é côncava (tecnologia "bem-comportada")

---

## 2. Curto prazo vs. longo prazo

| Horizonte | Definição | Variáveis |
|:---|:---|:---|
| **Curto prazo** | Pelo menos um insumo é fixo | $K = \bar{K}$; só $L$ varia |
| **Longo prazo** | Todos os insumos podem variar | $L$ e $K$ variam |

No curto prazo, a função de produção se reduz a:

$$q = f(L, \bar{K}) \equiv g(L)$$

---

## 3. Produto marginal e produto médio

**Produto Marginal do Trabalho (PMgL):**

$$PMgL = \frac{\partial f}{\partial L} = f_L$$

> "Quanto produto adicional se obtém com 1 unidade a mais de trabalho, mantendo $K$ fixo."

**Produto Médio do Trabalho (PMeL):**

$$PMeL = \frac{f(L, K)}{L}$$

> "Produto por trabalhador."

Relação fundamental: **o PMgL corta o PMeL no ponto máximo do PMeL**.

- Se $PMgL > PMeL$: o PMeL está subindo
- Se $PMgL < PMeL$: o PMeL está caindo

!!! example "Exemplo numérico"
    $f(L, K) = 10 L^{0{,}5} K^{0{,}5}$ com $K = 25$.

    $g(L) = 10 L^{0{,}5} \cdot 5 = 50 L^{0{,}5}$

    $PMgL = 25 L^{-0{,}5} = \frac{25}{\sqrt{L}}$

    $PMeL = 50 L^{-0{,}5} = \frac{50}{\sqrt{L}}$

    Para $L = 100$: $PMgL = 2{,}5$ e $PMeL = 5$. O PMgL está abaixo do PMeL.

---

## 4. Lei dos rendimentos marginais decrescentes

$$\frac{\partial^2 f}{\partial L^2} = f_{LL} < 0$$

> "Cada trabalhador adicional produz **menos** que o anterior, mantendo o capital fixo."

Isso **não** significa que a produção total cai — apenas que os **acréscimos** ficam menores.

!!! warning "Atenção"
    A lei dos rendimentos marginais decrescentes é um fenômeno de **curto prazo** (um insumo fixo). Não confundir com rendimentos de escala (longo prazo, todos os insumos variam).

---

## 5. Isoquantas

Uma **isoquanta** é o conjunto de combinações $(L, K)$ que produzem a mesma quantidade $\bar{q}$:

$$\{(L, K) : f(L, K) = \bar{q}\}$$

Propriedades (análogas às curvas de indiferença):

1. **Decrescentes** (PMgL, PMgK > 0)
2. **Não se cruzam**
3. **Convexas** (substituição entre insumos é possível mas cada vez mais difícil)

---

## 6. Taxa Marginal de Substituição Técnica (TMST)

$$\text{TMST}_{L,K} = -\frac{dK}{dL}\bigg|_{\bar{q}} = \frac{PMgL}{PMgK} = \frac{f_L}{f_K}$$

> "Quanto de capital a firma pode **dispensar** se contratar 1 trabalhador a mais, mantendo a produção constante."

A TMST é **decrescente** ao longo da isoquanta: à medida que se usa mais trabalho e menos capital, cada trabalhador adicional substitui menos capital.

---

## Gráfico interativo: isoquantas

<div id="graph-isoquants" style="min-height: 450px;">
<iframe src="../../graficos/cap09/isoquantas.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Mude os parâmetros da função de produção e observe como as isoquantas se alteram
    - Arraste um ponto ao longo da isoquanta e observe a TMST mudar
    - Compare as formas de isoquantas para Cobb-Douglas, Leontief e Linear

---

## 7. Rendimentos de escala

Se multiplicamos **todos** os insumos por $t > 1$:

$$f(tL, tK) \begin{cases} > t \cdot f(L,K) & \text{Rendimentos crescentes} \\ = t \cdot f(L,K) & \text{Rendimentos constantes} \\ < t \cdot f(L,K) & \text{Rendimentos decrescentes} \end{cases}$$

Equivalentemente, se $f$ é **homogênea de grau $k$**: $f(tL, tK) = t^k f(L,K)$

- $k > 1$: crescentes (dobrar insumos mais que dobra produção)
- $k = 1$: constantes (dobrar insumos dobra produção)
- $k < 1$: decrescentes (dobrar insumos menos que dobra produção)

---

## 8. As funções de produção clássicas

| Função | Forma | TMST | Isoquantas | Rend. escala |
|:---|:---|:---|:---|:---|
| **Cobb-Douglas** | $A L^a K^b$ | $\frac{aK}{bL}$ | Hipérboles | $a + b$ |
| **Linear** | $aL + bK$ | $\frac{a}{b}$ (cte) | Retas | Constantes |
| **Leontief** | $\min\{aL, bK\}$ | 0 ou $\infty$ | L's | Constantes |
| **CES** | $A(\alpha L^\rho + (1-\alpha)K^\rho)^{1/\rho}$ | $\frac{\alpha}{1-\alpha}\left(\frac{K}{L}\right)^{1-\rho}$ | Variável | Depende de $A$ |

!!! note "Intuição Econômica"
    **A função de produção como um "mapa tecnológico"**

    Assim como as curvas de indiferença representam as preferências do consumidor, as isoquantas representam a **tecnologia** da firma. A TMST é o análogo da TMS: mede a taxa na qual um insumo pode substituir outro.

    A grande diferença: enquanto preferências são subjetivas (cada consumidor tem as suas), a tecnologia é **objetiva** — dada pela engenharia, pela física, pela organização do processo produtivo. Duas firmas no mesmo setor, com a mesma tecnologia, têm as mesmas isoquantas.

    Porém, a escolha de **onde operar** na isoquanta depende dos preços dos insumos — e isso é o problema de minimização de custos, tema das próximas aulas.

---

## Exercícios de preparação

**Exercício 1.** Para $f(L,K) = 4L^{0{,}3}K^{0{,}7}$: (a) calcule $PMgL$ e $PMgK$; (b) determine a TMST; (c) classifique os rendimentos de escala.

??? success "Solução"
    (a) $PMgL = 4 \cdot 0{,}3 \cdot L^{-0{,}7} K^{0{,}7} = 1{,}2 L^{-0{,}7} K^{0{,}7}$

    $PMgK = 4 \cdot 0{,}7 \cdot L^{0{,}3} K^{-0{,}3} = 2{,}8 L^{0{,}3} K^{-0{,}3}$

    (b) $\text{TMST} = \frac{PMgL}{PMgK} = \frac{1{,}2 L^{-0{,}7} K^{0{,}7}}{2{,}8 L^{0{,}3} K^{-0{,}3}} = \frac{1{,}2}{2{,}8} \cdot \frac{K}{L} = \frac{3K}{7L}$

    (c) $a + b = 0{,}3 + 0{,}7 = 1$. **Rendimentos constantes de escala.**

**Exercício 2.** Explique por que a Lei dos Rendimentos Marginais Decrescentes não contradiz rendimentos crescentes de escala.

??? success "Solução"
    A lei dos rendimentos marginais decrescentes diz que $f_{LL} < 0$ quando $K$ é **fixo** (curto prazo). Rendimentos crescentes de escala dizem que $f(tL, tK) > tf(L,K)$ quando **ambos** os insumos crescem proporcionalmente (longo prazo).

    Exemplo: $f(L,K) = L^{0{,}7} K^{0{,}7}$. Temos $f_{LL} = -0{,}21 L^{-1{,}3}K^{0{,}7} < 0$ (rendimentos marginais decrescentes), mas $a + b = 1{,}4 > 1$ (rendimentos crescentes de escala).

    No curto prazo, adicionar mais trabalho com capital fixo é cada vez menos eficiente. No longo prazo, aumentar ambos proporcionalmente gera ganhos de especialização e escala.

**Exercício 3.** Para a função Leontief $f(L,K) = \min\{3L, 2K\}$, qual a combinação eficiente para produzir $q = 12$?

??? success "Solução"
    Eficiência requer $3L = 2K = q$:

    $3L = 12 \implies L = 4$

    $2K = 12 \implies K = 6$

    Combinação eficiente: $(L, K) = (4, 6)$. Qualquer desvio desperdiça um insumo.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O produto marginal do trabalho ($PMgL$) mede:

- [ ] (a) A produção total dividida pelo número de trabalhadores
- [x] (b) A produção adicional gerada pelo último trabalhador contratado
- [ ] (c) A inclinação da isoquanta
- [ ] (d) O custo de contratar um trabalhador

**Q2.** A Lei dos Rendimentos Marginais Decrescentes se aplica ao:

- [x] (a) Curto prazo, com pelo menos um insumo fixo
- [ ] (b) Longo prazo, com todos os insumos variáveis
- [ ] (c) Qualquer horizonte temporal
- [ ] (d) Apenas à função Cobb-Douglas

**Q3.** Se $f(L,K) = L^{0{,}4}K^{0{,}8}$, os rendimentos de escala são:

- [x] (a) Crescentes ($0{,}4 + 0{,}8 = 1{,}2 > 1$)
- [ ] (b) Constantes
- [ ] (c) Decrescentes
- [ ] (d) Impossível determinar

**Q4.** A TMST mede:

- [ ] (a) Quanto a produção muda quando se contrata mais trabalho
- [x] (b) Quanto de capital a firma pode dispensar por 1 trabalhador adicional, mantendo produção constante
- [ ] (c) O preço relativo dos insumos
- [ ] (d) A elasticidade de substituição

**Q5.** Na função Leontief $f = \min\{aL, bK\}$, as isoquantas têm formato:

- [ ] (a) Hipérboles
- [ ] (b) Retas
- [x] (c) Ângulos retos (L)
- [ ] (d) Círculos

</div>

---

!!! abstract "Próxima aula"
    **Aula 13**: Mini-lecture sobre função de produção e isoquantas + exercícios guiados de TMST e rendimentos de escala.
