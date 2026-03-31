# Pré-Aula 03 — Preferências e Axiomas

!!! info "Leitura obrigatória"
    **Cap. 3, Seções 3.1–3.3** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Enunciar e interpretar os axiomas fundamentais das preferências (completude, transitividade, continuidade, monotonicidade, convexidade)
2. Explicar o Teorema de Debreu e a representação de preferências por funções de utilidade
3. Desenhar e interpretar curvas de indiferença, compreendendo que utilidade é ordinal

---

## 1. Relações de preferência

O consumidor compara cestas de bens usando uma **relação de preferência** $\succsim$ ("pelo menos tão boa quanto"). A partir dela, derivamos:

- **Preferência estrita**: $x \succ y \iff x \succsim y$ e não $y \succsim x$
- **Indiferença**: $x \sim y \iff x \succsim y$ e $y \succsim x$

A questão central é: sob quais condições podemos representar $\succsim$ por uma função $u(\cdot)$ tal que $x \succsim y \iff u(x) \geq u(y)$?

---

## 2. Axiomas das preferências

### 2.1 Completude

Para quaisquer cestas $x$ e $y$: $x \succsim y$ ou $y \succsim x$ (ou ambos).

O consumidor sempre consegue comparar duas cestas. Não há "não sei" — ele sabe se prefere $x$, se prefere $y$, ou se é indiferente.

### 2.2 Transitividade

Se $x \succsim y$ e $y \succsim z$, então $x \succsim z$.

!!! note "Intuição Econômica"
    A transitividade garante coerência nas escolhas. Sem ela, um agente poderia ser explorado em trocas circulares: paga para trocar $z$ por $y$, depois $y$ por $x$, depois $x$ por $z$ — voltando ao início mais pobre. Isso é chamado de *money pump*.

### 2.3 Continuidade

Para todo $x$, os conjuntos $\{y : y \succsim x\}$ (pelo menos tão bom) e $\{y : x \succsim y\}$ (no máximo tão bom) são **fechados**.

Intuitivamente: se uma sequência de cestas $y_n \succsim x$ converge para $y$, então $y \succsim x$. Não há "saltos" abruptos nas preferências.

### 2.4 Monotonicidade (não-saciedade local)

Se $x$ tem pelo menos tanto de cada bem quanto $y$ e mais de pelo menos um, então $x \succ y$. Formalmente: $x \geq y$ e $x \neq y \implies x \succ y$.

Consequência: o consumidor sempre prefere mais a menos. As curvas de indiferença têm inclinação **negativa**.

### 2.5 Convexidade

Para quaisquer $x \sim y$ e $\lambda \in (0,1)$: $\lambda x + (1-\lambda)y \succsim x$.

O consumidor prefere misturas a extremos. Conjuntos "pelo menos tão bom quanto" são **convexos**.

!!! note "Intuição Econômica"
    A convexidade reflete o gosto por diversificação. Um consumidor com 10 cafés e 0 chás (ou 0 cafés e 10 chás) ficaria mais satisfeito com 5 de cada — a mistura é pelo menos tão boa quanto os extremos.

---

## 3. Teorema de Debreu

**Teorema (Debreu, 1954):** Se $\succsim$ é completa, transitiva e contínua, então existe uma função contínua $u: \mathbb{R}^n_+ \to \mathbb{R}$ que representa $\succsim$:

$$x \succsim y \iff u(x) \geq u(y)$$

Além disso, se $v = f \circ u$ com $f$ estritamente crescente, então $v$ também representa $\succsim$. A utilidade é **ordinal**: apenas a ordenação importa, não os valores numéricos.

---

## 4. Curvas de indiferença

Uma **curva de indiferença** é o conjunto de cestas que proporcionam o mesmo nível de utilidade:

$$\{(x_1, x_2) : u(x_1, x_2) = \bar{u}\}$$

Propriedades fundamentais (dados os axiomas acima):

1. **Curvas mais altas = maior utilidade** (monotonicidade)
2. **Curvas não se cruzam** (transitividade)
3. **Inclinação negativa** (monotonicidade)
4. **Convexas em relação à origem** (convexidade)

## Gráfico interativo: Curvas de Indiferença

<iframe src="graficos/cap03/curvas-indiferenca.html"></iframe>

!!! tip "Explore o gráfico"
    Movimente o cursor sobre diferentes cestas para ver o nível de utilidade. Observe como curvas mais afastadas da origem representam níveis superiores de satisfação.

---

## 5. Tipos de preferências

Diferentes formas funcionais capturam diferentes padrões de preferência:

| Tipo | Curvas de indiferença | Propriedade-chave |
|------|----------------------|-------------------|
| Substitutos perfeitos | Retas paralelas | TMS constante |
| Complementos perfeitos | L invertido | Consumo em proporção fixa |
| Cobb-Douglas | Hipérboles convexas | TMS decrescente, suave |
| Quase-linear | Translações verticais | Sem efeito renda para um bem |

## Gráfico interativo: Tipos de Preferências

<iframe src="graficos/cap03/tipos-preferencias.html"></iframe>

!!! tip "Explore o gráfico"
    Alterne entre os diferentes tipos de preferência e observe como a forma das curvas de indiferença muda. Compare substitutos perfeitos (retas) com complementos perfeitos (ângulos retos).

---

## Exercícios de preparação

**Exercício 1.** Um consumidor diz: "Prefiro café a chá, chá a suco, e suco a café." Qual axioma é violado? Explique por que essa violação é problemática.

??? success "Solução"
    A **transitividade** é violada. Se café $\succ$ chá e chá $\succ$ suco, a transitividade exige café $\succ$ suco. Mas o consumidor afirma suco $\succ$ café, gerando um ciclo. Isso permite uma *money pump*: alguém poderia cobrar para trocar suco por chá, chá por café, e café por suco, extraindo dinheiro infinitamente.

**Exercício 2.** Mostre que curvas de indiferença não podem se cruzar. (Dica: use monotonicidade e transitividade.)

??? success "Solução"
    Suponha que duas curvas, $\bar{u}_1$ e $\bar{u}_2$ com $\bar{u}_2 > \bar{u}_1$, se cruzem no ponto $A$. Então $A$ está em ambas as curvas, logo $u(A) = \bar{u}_1$ e $u(A) = \bar{u}_2$. Mas $\bar{u}_2 > \bar{u}_1$ implica $u(A) > u(A)$, uma contradição. Alternativamente: tome $B$ na curva superior (não no cruzamento). Temos $B \sim A$ (mesma curva) e $A \sim C$ onde $C$ está na curva inferior. Transitividade dá $B \sim C$, mas monotonicidade exige $B \succ C$ (pois $B$ tem mais de algum bem). Contradição. $\blacksquare$

**Exercício 3.** Um consumidor tem preferências representadas por $u(x_1,x_2) = x_1 x_2$. A transformação $v(x_1,x_2) = \ln(x_1) + \ln(x_2)$ representa as mesmas preferências? E $w(x_1,x_2) = -x_1 x_2$?

??? success "Solução"
    $v = \ln(x_1 x_2) = \ln \circ \, u$, e $\ln$ é estritamente crescente. Logo $v$ representa as mesmas preferências. Já $w = -u$ é uma transformação estritamente **decrescente**, portanto inverte a ordenação: $w$ **não** representa as mesmas preferências.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O axioma que garante que o consumidor pode sempre comparar duas cestas é:

- [x] (a) Completude
- [ ] (b) Transitividade
- [ ] (c) Continuidade
- [ ] (d) Monotonicidade

**Q2.** Se $u(x_1,x_2) = x_1^2 x_2^2$, qual das seguintes também representa as mesmas preferências?

- [ ] (a) $v = -x_1^2 x_2^2$
- [x] (b) $v = \ln(x_1) + \ln(x_2)$
- [ ] (c) $v = x_1 + x_2$
- [ ] (d) $v = 1/(x_1 x_2)$

**Q3.** A convexidade das preferências implica que:

- [ ] (a) Curvas de indiferença são retas
- [ ] (b) O consumidor prefere extremos a misturas
- [x] (c) Misturas de cestas indiferentes são pelo menos tão boas quanto as cestas originais
- [ ] (d) A utilidade é cardinal

**Q4.** Pelo Teorema de Debreu, para que exista uma função utilidade contínua, as preferências devem ser:

- [ ] (a) Completas e convexas
- [ ] (b) Completas, transitivas e monotônicas
- [x] (c) Completas, transitivas e contínuas
- [ ] (d) Completas, transitivas, contínuas e convexas

**Q5.** Curvas de indiferença com formato de "L" (ângulo reto) representam:

- [ ] (a) Substitutos perfeitos
- [x] (b) Complementos perfeitos
- [ ] (c) Preferências Cobb-Douglas
- [ ] (d) Preferências quase-lineares

</div>

---

!!! abstract "Próxima aula"
    **Aula 04**: Utilidade e Curvas de Indiferença — TMS, funções Cobb-Douglas, CES e quase-linear em detalhe.
