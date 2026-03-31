# Pré-Aula 02 — Restrição Orçamentária

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.1–4.2** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Representar graficamente o conjunto orçamentário e a reta orçamentária
2. Interpretar a inclinação da reta orçamentária como a razão de preços (custo de oportunidade)
3. Analisar como mudanças na renda e nos preços alteram o conjunto de escolhas do consumidor

---

## 1. O problema do consumidor: visão geral

O consumidor deseja escolher a melhor cesta de bens que pode pagar. Isso envolve dois ingredientes:

- **Preferências** (o que ele quer) — estudaremos nas Aulas 03–04
- **Restrição orçamentária** (o que ele pode comprar) — o tema de hoje

Considere dois bens, $x_1$ e $x_2$, com preços $p_1 > 0$ e $p_2 > 0$. O consumidor tem renda monetária $I > 0$.

---

## 2. A reta orçamentária

O gasto total não pode exceder a renda:

$$p_1 x_1 + p_2 x_2 \leq I$$

O **conjunto orçamentário** $B$ é o conjunto de todas as cestas acessíveis:

$$B = \{(x_1, x_2) \in \mathbb{R}^2_+ : p_1 x_1 + p_2 x_2 \leq I\}$$

A **reta orçamentária** é a fronteira desse conjunto, onde o consumidor gasta toda a renda:

$$p_1 x_1 + p_2 x_2 = I$$

Isolando $x_2$:

$$x_2 = \frac{I}{p_2} - \frac{p_1}{p_2} x_1$$

!!! note "Intuição Econômica"
    A inclinação da reta orçamentária é $-p_1/p_2$. Ela mede o **custo de oportunidade** do bem 1 em termos do bem 2: para comprar uma unidade adicional de $x_1$, o consumidor precisa abrir mão de $p_1/p_2$ unidades de $x_2$.

### Interceptos

- Intercepto vertical: $x_2 = I/p_2$ (gastando tudo em $x_2$)
- Intercepto horizontal: $x_1 = I/p_1$ (gastando tudo em $x_1$)

## Gráfico interativo: Restrição Orçamentária

<iframe src="graficos/cap04/restricao-orcamentaria.html"></iframe>

!!! tip "Explore o gráfico"
    Use os controles para alterar $p_1$, $p_2$ e $I$. Observe como a reta orçamentária se desloca (mudanças de renda) ou rotaciona (mudanças de preço). A área sombreada é o conjunto orçamentário.

---

## 3. Mudanças na renda e nos preços

### 3.1 Aumento de renda ($I \to I'$, com $I' > I$)

A reta se desloca paralelamente para fora. A inclinação $-p_1/p_2$ não muda, pois os preços relativos permanecem os mesmos. O consumidor pode comprar mais de ambos os bens.

### 3.2 Aumento no preço de $x_1$ ($p_1 \to p_1'$, com $p_1' > p_1$)

O intercepto horizontal encolhe para $I/p_1'$, mas o intercepto vertical permanece $I/p_2$. A reta rotaciona em torno do intercepto vertical, tornando-se mais inclinada:

$$\text{Nova~inclinação:~} -\frac{p_1'}{p_2} \quad (\text{mais~íngreme~em~valor~absoluto})$$

### 3.3 Variação proporcional de preços

Se ambos os preços dobram ($p_1 \to 2p_1$, $p_2 \to 2p_2$), a reta orçamentária se contrai como se a renda caísse pela metade. Formalmente:

$$2p_1 x_1 + 2p_2 x_2 = I \iff p_1 x_1 + p_2 x_2 = \frac{I}{2}$$

Logo, apenas preços **relativos** e renda **real** importam.

!!! note "Intuição Econômica"
    Se todos os preços e a renda dobram simultaneamente, a reta orçamentária não muda. A restrição é **homogênea de grau zero** em $(p_1, p_2, I)$: $B(\lambda p_1, \lambda p_2, \lambda I) = B(p_1, p_2, I)$ para $\lambda > 0$.

---

## 4. Restrições não-lineares e extensões

Nem sempre a restrição é linear. Exemplos comuns:

- **Impostos por quantidade**: um imposto de $t$ por unidade sobre $x_1$ eleva o preço efetivo para $p_1 + t$, mantendo a linearidade mas mudando a inclinação.
- **Racionamento**: se $x_1 \leq \bar{x}_1$, o conjunto orçamentário ganha uma "parede" vertical.
- **Descontos por quantidade**: se o preço de $x_1$ cai para unidades acima de $\bar{x}_1$, a reta orçamentária apresenta uma **quebra** (kink), tornando o conjunto não-convexo.
- **Dotações**: se o consumidor parte de uma dotação $(\omega_1, \omega_2)$ em vez de renda monetária, $I = p_1\omega_1 + p_2\omega_2$ e a reta orçamentária passa pelo ponto de dotação.

## Gráfico interativo: Equilíbrio do Consumidor

<iframe src="graficos/cap04/equilibrio-consumidor.html"></iframe>

!!! tip "Explore o gráfico"
    Observe como a curva de indiferença tangencia a reta orçamentária no ponto ótimo. Altere os parâmetros e veja como o equilíbrio se ajusta.

---

## Exercícios de preparação

**Exercício 1.** Um consumidor tem renda $I = 120$, e os preços são $p_1 = 4$ e $p_2 = 6$. (a) Escreva a equação da reta orçamentária. (b) Calcule os interceptos. (c) Qual o custo de oportunidade de uma unidade de $x_1$?

??? success "Solução"
    (a) $4x_1 + 6x_2 = 120$, ou seja, $x_2 = 20 - \frac{2}{3}x_1$. (b) Intercepto horizontal: $x_1 = 120/4 = 30$. Intercepto vertical: $x_2 = 120/6 = 20$. (c) O custo de oportunidade é $p_1/p_2 = 4/6 = 2/3$ unidades de $x_2$ por unidade de $x_1$.

**Exercício 2.** Com os dados do exercício anterior, o governo impõe um imposto de $t = 2$ por unidade de $x_1$. (a) Qual o novo preço efetivo de $x_1$? (b) Escreva a nova reta orçamentária. (c) O conjunto orçamentário aumentou ou diminuiu?

??? success "Solução"
    (a) Novo preço efetivo: $p_1 + t = 4 + 2 = 6$. (b) $6x_1 + 6x_2 = 120 \implies x_1 + x_2 = 20$. (c) Diminuiu — o novo intercepto horizontal é $120/6 = 20 < 30$, enquanto o vertical permanece 20. A área do conjunto orçamentário caiu de $\frac{1}{2}(30)(20) = 300$ para $\frac{1}{2}(20)(20) = 200$.

**Exercício 3.** Mostre que a restrição orçamentária é homogênea de grau zero: se multiplicarmos $p_1$, $p_2$ e $I$ por $\lambda > 0$, o conjunto orçamentário não muda.

??? success "Solução"
    O conjunto orçamentário com preços $\lambda p_1$, $\lambda p_2$ e renda $\lambda I$ é $\{(x_1,x_2) : \lambda p_1 x_1 + \lambda p_2 x_2 \leq \lambda I\}$. Dividindo ambos os lados por $\lambda > 0$: $\{(x_1,x_2) : p_1 x_1 + p_2 x_2 \leq I\}$, que é idêntico ao conjunto original. $\blacksquare$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A inclinação da reta orçamentária $p_1x_1 + p_2x_2 = I$ é:

- [ ] (a) $-I/p_1$
- [x] (b) $-p_1/p_2$
- [ ] (c) $-p_2/p_1$
- [ ] (d) $-I/(p_1 p_2)$

**Q2.** Se a renda do consumidor dobra e os preços não mudam, a reta orçamentária:

- [ ] (a) Rotaciona em torno do intercepto vertical
- [x] (b) Desloca-se paralelamente para fora
- [ ] (c) Não muda
- [ ] (d) Rotaciona em torno da origem

**Q3.** Se $p_1 = 5$ e $p_2 = 10$, o custo de oportunidade de uma unidade de $x_1$ em termos de $x_2$ é:

- [ ] (a) 2
- [x] (b) 0,5
- [ ] (c) 5
- [ ] (d) 10

**Q4.** Se todos os preços e a renda são multiplicados por 3, o conjunto orçamentário:

- [ ] (a) Triplica de tamanho
- [ ] (b) Reduz a um terço
- [x] (c) Permanece inalterado
- [ ] (d) Depende dos valores iniciais

**Q5.** Um imposto de $t$ por unidade sobre o bem 1 equivale a:

- [x] (a) Aumentar $p_1$ para $p_1 + t$, rotacionando a reta
- [ ] (b) Reduzir a renda em $t$ unidades monetárias
- [ ] (c) Deslocar a reta paralelamente para dentro
- [ ] (d) Aumentar $p_2$ para $p_2 + t$

</div>

---

!!! abstract "Próxima aula"
    **Aula 03**: Preferências e Axiomas — as propriedades fundamentais que descrevem os gostos do consumidor.
