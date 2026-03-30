# Pré-Aula 23 — Oligopólio: Cournot, Bertrand, Stackelberg

!!! info "Leitura obrigatória"
    **Cap. 15, Seções 15.1–15.5** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar as funções de melhor resposta no modelo de Cournot e encontrar o equilíbrio de Nash
2. Explicar o paradoxo de Bertrand e as condições sob as quais ele se aplica
3. Resolver o modelo de Stackelberg por indução retroativa e identificar a vantagem do primeiro movimento

---

## 1. Oligopólio e interdependência estratégica

No **oligopólio**, poucas firmas dominam o mercado. A decisão de cada firma afeta as demais — há **interdependência estratégica**. Essa é a diferença fundamental em relação à concorrência perfeita (firmas são insignificantes) e ao monopólio (uma só firma).

A ferramenta central para analisar oligopólios é a **teoria dos jogos**: cada firma escolhe uma estratégia levando em conta o que as outras farão.

---

## 2. Modelo de Bertrand — competição em preços

Duas firmas vendem um produto **homogêneo** e escolhem **preços** simultaneamente. Os consumidores compram da firma mais barata.

**Resultado (Paradoxo de Bertrand):**

$$P_1^* = P_2^* = \text{CMg} = c$$

Mesmo com apenas **duas** firmas, o resultado é competitivo! Cada firma tem incentivo para cortar o preço marginalmente abaixo da rival. O processo só para em $P = c$.

!!! warning "Condições do paradoxo"
    O resultado depende de: (1) produto homogêneo, (2) capacidade ilimitada, (3) jogo simultâneo e de uma rodada. Relaxando qualquer condição, o resultado muda.

---

## 3. Modelo de Cournot — competição em quantidades

Duas firmas escolhem **quantidades** simultaneamente. O preço de mercado é determinado pela demanda inversa:

$$P = a - b(q_1 + q_2)$$

### Derivação das funções de melhor resposta

A firma 1 maximiza:

$$\pi_1 = P \cdot q_1 - c \cdot q_1 = [a - b(q_1 + q_2)]q_1 - cq_1$$

CPO ($\partial \pi_1 / \partial q_1 = 0$):

$$a - 2bq_1 - bq_2 - c = 0$$

$$\boxed{q_1^*(q_2) = \frac{a - c}{2b} - \frac{q_2}{2}}$$

Por simetria:

$$q_2^*(q_1) = \frac{a - c}{2b} - \frac{q_1}{2}$$

### Equilíbrio de Nash

Resolvemos o sistema substituindo uma na outra:

$$q_1^* = q_2^* = \frac{a - c}{3b}$$

$$Q^* = \frac{2(a-c)}{3b}, \quad P^* = \frac{a + 2c}{3}$$

!!! example "Exemplo numérico completo"
    $P = 100 - (q_1 + q_2)$, $c = 10$ (ou seja, $a = 100$, $b = 1$, $c = 10$).

    **Melhor resposta da firma 1:**

    $q_1^*(q_2) = \frac{100 - 10}{2} - \frac{q_2}{2} = 45 - \frac{q_2}{2}$

    **Equilíbrio:** $q_1^* = 45 - q_2^*/2$ e $q_2^* = 45 - q_1^*/2$

    Substituindo: $q_1^* = 45 - (45 - q_1^*/2)/2 = 45 - 22{,}5 + q_1^*/4$

    $\frac{3}{4}q_1^* = 22{,}5 \implies q_1^* = 30$

    $q_2^* = 30$; $Q^* = 60$; $P^* = 40$

    $\pi_i = (40 - 10) \times 30 = 900$

---

## 4. Modelo de Stackelberg — competição sequencial

A firma **líder** (firma 1) escolhe $q_1$ primeiro; a firma **seguidora** (firma 2) observa $q_1$ e então escolhe $q_2$.

### Resolução por indução retroativa

**Passo 1 — Seguidora:** a firma 2 usa sua melhor resposta de Cournot:

$$q_2^*(q_1) = \frac{a - c}{2b} - \frac{q_1}{2}$$

**Passo 2 — Líder:** a firma 1 antecipa a reação de 2 e substitui na sua função lucro:

$$\pi_1 = \left[a - b\left(q_1 + \frac{a-c}{2b} - \frac{q_1}{2}\right)\right]q_1 - cq_1$$

Simplificando e aplicando a CPO:

$$q_1^S = \frac{a - c}{2b}, \quad q_2^S = \frac{a - c}{4b}$$

!!! example "Exemplo numérico (continuação)"
    $P = 100 - (q_1 + q_2)$, $c = 10$.

    $q_1^S = \frac{90}{2} = 45$; $q_2^S = \frac{90}{4} = 22{,}5$

    $Q^S = 67{,}5$; $P^S = 32{,}5$

    $\pi_1^S = (32{,}5 - 10) \times 45 = 1.012{,}5$

    $\pi_2^S = (32{,}5 - 10) \times 22{,}5 = 506{,}25$

    A líder produz mais e lucra mais — **vantagem do primeiro movimento**.

---

## 5. Comparação entre modelos

| Modelo | $Q$ | $P$ | $\pi_{\text{total}}$ | Tipo de competição |
|--------|-----|-----|-----------------------|-------------------|
| **Monopólio** | $45$ | $55$ | $2.025$ | — |
| **Cournot** | $60$ | $40$ | $1.800$ | Quantidade, simultâneo |
| **Stackelberg** | $67{,}5$ | $32{,}5$ | $1.518{,}75$ | Quantidade, sequencial |
| **Bertrand** | $90$ | $10$ | $0$ | Preço, simultâneo |
| **Conc. Perfeita** | $90$ | $10$ | $0$ | Preço, muitas firmas |

$$Q_{\text{monopólio}} < Q_{\text{Cournot}} < Q_{\text{Stackelberg}} \leq Q_{\text{Bertrand}} = Q_{\text{competitivo}}$$

---

## Gráfico interativo: funções de melhor resposta de Cournot

<div id="graph-cournot" style="min-height: 450px;">
<iframe src="../../graficos/cap15/cournot-best-response.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe como as duas funções de melhor resposta se cruzam no equilíbrio de Nash
    - Altere o custo marginal e veja como o equilíbrio se desloca
    - Compare com o ponto de monopólio e o ponto competitivo

---

## Box: A lógica da interdependência

!!! note "Intuição Econômica"
    **Por que Cournot gera resultado entre monopólio e concorrência?**

    No monopólio, uma única firma internaliza todo o efeito preço. Em Cournot, cada firma internaliza apenas **sua parcela** do efeito preço: ao produzir mais, firma 1 reduz o preço para todos, mas ela se importa apenas com a perda sobre **suas** $q_1$ unidades, não sobre as $q_2$ da rival.

    Quanto mais firmas no mercado, menor a parcela individual e menor o efeito internalizado. Com $n$ firmas de Cournot simétricas: $Q = \frac{n}{n+1} \cdot \frac{a-c}{b}$. Quando $n \to \infty$, o resultado converge para o competitivo.

---

## Exercícios de preparação

**Exercício 1.** Duas firmas competem à la Cournot com $P = 120 - 2(q_1 + q_2)$ e $c_1 = c_2 = 20$. Encontre as quantidades e o preço de equilíbrio.

??? success "Solução"
    Melhor resposta da firma 1: $q_1^* = \frac{120 - 20}{2 \times 2} - \frac{q_2}{2} = 25 - \frac{q_2}{2}$

    Simetria: $q_1^* = q_2^* = q^*$

    $q^* = 25 - q^*/2 \implies \frac{3}{2}q^* = 25 \implies q^* = \frac{50}{3} \approx 16{,}67$

    $Q^* = \frac{100}{3} \approx 33{,}33$; $P^* = 120 - 2 \times \frac{100}{3} = \frac{160}{3} \approx 53{,}33$

**Exercício 2.** No mesmo mercado do Exercício 1, suponha que a firma 1 é líder de Stackelberg. Encontre $q_1^S$, $q_2^S$ e $P^S$.

??? success "Solução"
    Melhor resposta da seguidora: $q_2^*(q_1) = 25 - q_1/2$

    Líder substitui: $\pi_1 = [120 - 2(q_1 + 25 - q_1/2)]q_1 - 20q_1$

    $\pi_1 = [120 - 2q_1 - 50 + q_1]q_1 - 20q_1 = [70 - q_1]q_1 - 20q_1 = (50 - q_1)q_1$

    CPO: $50 - 2q_1 = 0 \implies q_1^S = 25$

    $q_2^S = 25 - 25/2 = 12{,}5$

    $Q^S = 37{,}5$; $P^S = 120 - 75 = 45$

    $\pi_1^S = (45 - 20) \times 25 = 625$; $\pi_2^S = (45 - 20) \times 12{,}5 = 312{,}5$

**Exercício 3.** Explique intuitivamente por que o paradoxo de Bertrand não se aplica quando os produtos são diferenciados.

??? success "Solução"
    Com produtos homogêneos, cortar o preço marginalmente abaixo do rival captura **todo** o mercado — o incentivo é enorme. Com diferenciação, um corte de preço atrai apenas **alguns** consumidores da rival (aqueles que estão "na margem" entre as duas marcas). Os consumidores leais à outra marca não migram.

    Formalmente, a elasticidade-preço cruzada é finita (não infinita como no caso homogêneo). Isso dá a cada firma algum poder de mercado, e o equilíbrio resulta em $P > \text{CMg}$, com margens positivas para ambas.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** No modelo de Cournot, as firmas escolhem:

- [ ] (a) Preços, simultaneamente
- [x] (b) Quantidades, simultaneamente
- [ ] (c) Quantidades, sequencialmente
- [ ] (d) Preços, sequencialmente

**Q2.** O paradoxo de Bertrand afirma que com duas firmas e produto homogêneo:

- [ ] (a) O lucro é igual ao de monopólio dividido por dois
- [ ] (b) O preço fica entre o competitivo e o monopolista
- [x] (c) O preço é igual ao custo marginal (resultado competitivo)
- [ ] (d) As firmas colundem para maximizar lucro conjunto

**Q3.** No equilíbrio de Cournot com $P = 100 - (q_1 + q_2)$ e $c = 10$, a quantidade total é:

- [ ] (a) 45
- [x] (b) 60
- [ ] (c) 90
- [ ] (d) 30

**Q4.** No modelo de Stackelberg, a vantagem do primeiro movimento ocorre porque:

- [ ] (a) A líder tem custos menores
- [ ] (b) A seguidora não maximiza lucro
- [x] (c) A líder se compromete com uma quantidade alta, e a seguidora se acomoda
- [ ] (d) O jogo é repetido infinitas vezes

**Q5.** Ordene os modelos do menor para o maior nível de produção total:

- [ ] (a) Bertrand < Cournot < Stackelberg < Monopólio
- [x] (b) Monopólio < Cournot < Stackelberg < Bertrand
- [ ] (c) Monopólio < Stackelberg < Cournot < Bertrand
- [ ] (d) Cournot < Monopólio < Stackelberg < Bertrand

</div>

---

!!! abstract "Próxima aula"
    **Aula 23**: Derivação formal dos modelos de oligopólio com exercícios numéricos. Traga calculadora!
