# Pré-Aula 07 — Dualidade na Teoria do Consumidor

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.8–4.9** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Descrever o mapa completo de relações entre as quatro funções fundamentais do consumidor
2. Demonstrar e aplicar as identidades de inversão $V(p, E(p,u)) = u$ e $E(p, V(p,I)) = I$
3. Resolver um exemplo completo Cobb-Douglas percorrendo todo o circuito primal-dual

---

## 1. O mapa primal-dual

A teoria do consumidor se organiza em torno de quatro funções interconectadas:

| Função | Notação | Argumentos | Obtida de |
|--------|---------|------------|-----------|
| Demanda Marshalliana | $x^M(p, I)$ | Preços, renda | Maximizar $u$ s.a. orçamento |
| Utilidade indireta | $V(p, I)$ | Preços, renda | $u(x^M)$ |
| Demanda Hicksiana | $h(p, \bar{u})$ | Preços, utilidade | Minimizar gasto s.a. $u \geq \bar{u}$ |
| Função dispêndio | $E(p, \bar{u})$ | Preços, utilidade | $p \cdot h$ |

As conexões entre elas formam um circuito fechado que é o coração da teoria.

---

## 2. Identidades fundamentais de inversão

### 2.1 Primeira identidade

$$V(p, E(p, \bar{u})) = \bar{u}$$

**Leitura**: se damos ao consumidor a renda mínima para atingir $\bar{u}$ (que é $E(p,\bar{u})$), ele maximiza e obtém exatamente $\bar{u}$.

### 2.2 Segunda identidade

$$E(p, V(p, I)) = I$$

**Leitura**: o custo mínimo para atingir a utilidade que $I$ proporciona ($V(p,I)$) é exatamente $I$ — nem mais, nem menos.

!!! note "Intuição Econômica"
    As duas identidades dizem que $V$ e $E$ são inversas uma da outra no argumento "renda/utilidade". Conhecer uma é conhecer a outra. Isso é a essência da **dualidade**: o problema de maximização e o de minimização carregam exatamente a mesma informação.

---

## 3. Conexões entre demandas

### 3.1 Marshalliana a partir da Hicksiana

Substituindo $\bar{u} = V(p, I)$ na Hicksiana:

$$x_i^M(p, I) = h_i(p, V(p, I))$$

### 3.2 Hicksiana a partir da Marshalliana

Substituindo $I = E(p, \bar{u})$ na Marshalliana:

$$h_i(p, \bar{u}) = x_i^M(p, E(p, \bar{u}))$$

### 3.3 Identidade de Roy (via dualidade)

Diferenciando $V(p, E(p, \bar{u})) = \bar{u}$ em relação a $p_i$:

$$\frac{\partial V}{\partial p_i} + \frac{\partial V}{\partial I} \cdot \frac{\partial E}{\partial p_i} = 0$$

Pelo Lema de Shephard, $\partial E / \partial p_i = h_i$. No ponto onde $I = E$, temos $h_i = x_i^M$. Logo:

$$x_i^M = -\frac{\partial V / \partial p_i}{\partial V / \partial I}$$

que é exatamente a **identidade de Roy** — deduzida aqui como consequência da dualidade!

## Gráfico interativo: Dualidade

<iframe src="graficos/cap04/dualidade.html"></iframe>

!!! tip "Explore o gráfico"
    Visualize como a solução do primal (maximizar utilidade na reta orçamentária) e do dual (minimizar gasto na curva de indiferença) convergem para o mesmo ponto. Altere os parâmetros e verifique.

---

## 4. Exemplo completo: Cobb-Douglas

Seja $u(x_1, x_2) = x_1^a x_2^{1-a}$ com $a \in (0,1)$.

### Passo 1: Demandas Marshallianas (primal)

$$x_1^M = \frac{aI}{p_1}, \qquad x_2^M = \frac{(1-a)I}{p_2}$$

### Passo 2: Utilidade indireta

$$V(p, I) = \left(\frac{a}{p_1}\right)^a \left(\frac{1-a}{p_2}\right)^{1-a} I = K \cdot \frac{I}{p_1^a p_2^{1-a}}$$

onde $K = a^a(1-a)^{1-a}$.

### Passo 3: Função dispêndio (invertendo $V$)

De $V = K \cdot I / (p_1^a p_2^{1-a})$, isolamos $I$:

$$E(p, \bar{u}) = \frac{\bar{u}}{K} \cdot p_1^a p_2^{1-a} = \frac{p_1^a p_2^{1-a}}{a^a(1-a)^{1-a}} \cdot \bar{u}$$

### Passo 4: Demandas Hicksianas (Lema de Shephard)

$$h_1 = \frac{\partial E}{\partial p_1} = \frac{a \, p_1^{a-1} p_2^{1-a}}{a^a(1-a)^{1-a}} \cdot \bar{u}$$

### Passo 5: Verificação das identidades

$V(p, E(p, \bar{u})) = K \cdot E/p_1^a p_2^{1-a} = K \cdot \frac{\bar{u}}{K} = \bar{u}$ $\checkmark$

$E(p, V(p, I)) = \frac{p_1^a p_2^{1-a}}{K} \cdot K \cdot \frac{I}{p_1^a p_2^{1-a}} = I$ $\checkmark$

!!! note "Intuição Econômica"
    O circuito completo Cobb-Douglas mostra que todas as funções são faces do mesmo objeto matemático. Na prática, basta resolver **um** dos problemas (primal ou dual) e usar as identidades para obter todo o resto.

---

## 5. O princípio do lump sum

Uma aplicação importante da dualidade é o **princípio do lump sum**: um imposto sobre a renda (lump sum) é sempre preferível a um imposto sobre o consumo que gera a mesma receita.

Formalmente: seja $t$ um imposto sobre $x_1$. A receita é $R = t \cdot x_1^M(p_1+t, p_2, I)$. Um imposto lump sum de $R$ sobre a renda deixa o consumidor com utilidade maior:

$$V(p_1, p_2, I - R) > V(p_1 + t, p_2, I)$$

## Gráfico interativo: Princípio Lump Sum

<iframe src="graficos/cap04/lump-sum-principle.html"></iframe>

!!! tip "Explore o gráfico"
    Compare o equilíbrio com imposto sobre consumo vs. imposto lump sum de mesma receita. Observe que o lump sum permite atingir uma curva de indiferença mais alta.

---

## Exercícios de preparação

**Exercício 1.** Para $u = x_1^{1/3} x_2^{2/3}$, com $p_1 = 3$, $p_2 = 6$ e $I = 90$: percorra o circuito completo — encontre $x^M$, $V$, $E$ e $h$.

??? success "Solução"
    **Marshallianas**: $x_1^M = (1/3)(90)/3 = 10$, $x_2^M = (2/3)(90)/6 = 10$. **Utilidade indireta**: $V = 10^{1/3} \cdot 10^{2/3} = 10$. **Função dispêndio**: $E = \frac{p_1^{1/3} p_2^{2/3}}{(1/3)^{1/3}(2/3)^{2/3}} \bar{u} = \frac{3^{1/3} \cdot 6^{2/3}}{(1/3)^{1/3}(2/3)^{2/3}} \bar{u}$. Simplificando: $= \frac{3^{1/3} \cdot 6^{2/3} \cdot 3^{1/3} \cdot (3/2)^{2/3}}{1} \bar{u} = 9\bar{u}$. Verificação: $E(p, V=10) = 90 = I$. $\checkmark$ **Hicksianas**: $h_1 = \partial E/\partial p_1$, calculada via Shephard.

**Exercício 2.** Demonstre a segunda identidade $E(p, V(p,I)) = I$ de forma geral (sem especificar a forma funcional).

??? success "Solução"
    Seja $\bar{u} = V(p,I)$ a utilidade máxima com renda $I$. A cesta ótima $x^M(p,I)$ atinge $\bar{u}$ e custa exatamente $I$ (Lei de Walras). Logo $E(p,\bar{u}) \leq I$ (pois $x^M$ é viável para o dual). Mas $E(p,\bar{u}) < I$ é impossível: se houvesse cesta mais barata atingindo $\bar{u}$, sobraria renda, e por monotonicidade o consumidor poderia atingir utilidade maior que $\bar{u}$, contradizendo que $\bar{u}$ é o máximo. Logo $E(p, V(p,I)) = I$. $\blacksquare$

**Exercício 3.** Explique intuitivamente por que o imposto lump sum é mais eficiente que o imposto sobre consumo.

??? success "Solução"
    O imposto sobre consumo distorce preços relativos, fazendo o consumidor substituir para longe do bem tributado — essa substituição gera **perda de peso morto** (excesso de carga). O imposto lump sum reduz a renda sem alterar preços relativos: a reta orçamentária se desloca paralelamente. O consumidor é mais pobre, mas não tem seus preços distorcidos, atingindo utilidade maior para a mesma receita extraída.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A identidade $V(p, E(p, \bar{u})) = \bar{u}$ expressa que:

- [x] (a) $V$ e $E$ são inversas no argumento renda/utilidade
- [ ] (b) A utilidade é cardinal
- [ ] (c) As demandas são homogêneas de grau zero
- [ ] (d) O efeito substituição é negativo

**Q2.** A relação $x_i^M(p, I) = h_i(p, V(p, I))$ mostra que:

- [ ] (a) Marshallianas e Hicksianas são sempre iguais
- [x] (b) As demandas coincidem quando a utilidade-alvo é a ótima do primal
- [ ] (c) Marshallianas dependem da utilidade
- [ ] (d) Hicksianas dependem da renda

**Q3.** No circuito Cobb-Douglas, a identidade de Roy é consequência de:

- [ ] (a) Monotonicidade
- [ ] (b) Convexidade
- [x] (c) Dualidade entre $V$ e $E$
- [ ] (d) Homogeneidade das demandas

**Q4.** O princípio do lump sum afirma que:

- [ ] (a) Impostos sobre consumo são mais eficientes
- [x] (b) Imposto sobre a renda gera menos distorção que imposto sobre consumo, para mesma receita
- [ ] (c) Todo imposto é neutro
- [ ] (d) O consumidor prefere imposto sobre consumo

**Q5.** Para obter as demandas Hicksianas a partir da função dispêndio, usamos:

- [ ] (a) A identidade de Roy
- [x] (b) O Lema de Shephard
- [ ] (c) O Teorema de Debreu
- [ ] (d) A condição de tangência

</div>

---

!!! abstract "Próxima aula"
    **Aula 08**: Equação de Slutsky — decompondo o efeito de uma mudança de preço em efeito substituição e efeito renda.
