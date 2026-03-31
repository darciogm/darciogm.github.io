# Pré-Aula 06 — Minimização do Dispêndio e Demanda Hicksiana

!!! info "Leitura obrigatória"
    **Cap. 4, Seções 4.6–4.8** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Formular o problema de minimização do dispêndio (dual do consumidor)
2. Derivar demandas Hicksianas e a função dispêndio, enunciando o Lema de Shephard
3. Relacionar as soluções primal e dual via dualidade $V \leftrightarrow E$

---

## 1. O problema dual: minimização do dispêndio

Enquanto o problema **primal** maximiza utilidade dada a renda, o **dual** minimiza o gasto necessário para atingir um nível de utilidade $\bar{u}$:

$$\min_{x_1, x_2} \; p_1 x_1 + p_2 x_2 \quad \text{s.a.} \quad u(x_1, x_2) \geq \bar{u}$$

### 1.1 Lagrangiano do dual

$$\mathcal{L} = p_1 x_1 + p_2 x_2 - \mu\big(u(x_1, x_2) - \bar{u}\big)$$

CPOs:

$$p_1 = \mu \, u_1, \qquad p_2 = \mu \, u_2, \qquad u(x_1, x_2) = \bar{u}$$

Dividindo as duas primeiras:

$$\frac{p_1}{p_2} = \frac{u_1}{u_2} = \text{TMS}_{12}$$

A condição de tangência é **idêntica** à do primal! A diferença está em qual restrição é usada para fechar o sistema.

!!! note "Intuição Econômica"
    Primal e dual são dois lados da mesma moeda. No primal, o consumidor fica na reta orçamentária e sobe para a curva de indiferença mais alta. No dual, ele fica na curva de indiferença e desce para a reta de isocusto mais baixa. O ponto ótimo é o mesmo.

---

## 2. Demandas Hicksianas (compensadas)

As soluções do dual são as **demandas Hicksianas**:

$$h_i = h_i(p_1, p_2, \bar{u}), \quad i = 1, 2$$

Diferentemente das Marshallianas $x_i^M(p, I)$, as Hicksianas dependem de preços e do nível de utilidade (não da renda).

### Propriedades

1. **HOD0 em preços**: $h_i(\lambda p, \bar{u}) = h_i(p, \bar{u})$
2. **Lei da demanda compensada**: $\partial h_i / \partial p_i \leq 0$ — sempre! (Não há exceção Giffen)
3. **Simetria**: $\partial h_i / \partial p_j = \partial h_j / \partial p_i$ (Teorema de Slutsky)

## Gráfico interativo: Dualidade Primal-Dual

<iframe src="graficos/cap04/dualidade.html"></iframe>

!!! tip "Explore o gráfico"
    Visualize os dois problemas simultaneamente: a maximização de utilidade (primal) e a minimização do dispêndio (dual). Observe que o ponto ótimo é o mesmo, apenas a perspectiva muda.

---

## 3. Função dispêndio

Substituindo as demandas Hicksianas na função objetivo:

$$E(p_1, p_2, \bar{u}) = p_1 h_1(p, \bar{u}) + p_2 h_2(p, \bar{u})$$

$E$ dá o **custo mínimo** para atingir utilidade $\bar{u}$ aos preços $p$.

### Propriedades de $E$

1. **Crescente** em cada $p_i$ e em $\bar{u}$
2. **HOD1 em preços**: $E(\lambda p, \bar{u}) = \lambda E(p, \bar{u})$ — se preços dobram, o custo dobra
3. **Côncava** em preços (importante para a equação de Slutsky)

### Exemplo Cobb-Douglas

Para $u = x_1^a x_2^{1-a}$:

$$h_1 = \left(\frac{a}{1-a} \cdot \frac{p_2}{p_1}\right)^{1-a} \bar{u}, \qquad h_2 = \left(\frac{1-a}{a} \cdot \frac{p_1}{p_2}\right)^{a} \bar{u}$$

$$E(p, \bar{u}) = \bar{u} \cdot \frac{p_1^a p_2^{1-a}}{a^a (1-a)^{1-a}}$$

---

## 4. Lema de Shephard

$$h_i(p, \bar{u}) = \frac{\partial E(p, \bar{u})}{\partial p_i}$$

!!! note "Intuição Econômica"
    O Lema de Shephard é análogo à identidade de Roy, mas para o lado dual. Derivando a função dispêndio em relação ao preço de um bem, obtemos diretamente a demanda Hicksiana daquele bem. É uma aplicação do **Teorema do Envelope**: no ótimo, o efeito de uma mudança de parâmetro sobre o valor ótimo depende apenas do efeito direto.

---

## 5. Dualidade $V \leftrightarrow E$

As funções $V$ (utilidade indireta) e $E$ (dispêndio) são **inversas** uma da outra:

$$V(p, E(p, \bar{u})) = \bar{u} \qquad \text{e} \qquad E(p, V(p, I)) = I$$

A primeira diz: se você dá ao consumidor exatamente a renda mínima para atingir $\bar{u}$, ele atinge exatamente $\bar{u}$.

A segunda diz: o custo mínimo para atingir a utilidade que a renda $I$ proporciona é exatamente $I$.

### Relação entre demandas

No ponto inicial $(p, I)$, com $\bar{u} = V(p, I)$:

$$x_i^M(p, I) = h_i(p, V(p, I))$$

As demandas Marshalliana e Hicksiana coincidem quando a utilidade-alvo é a utilidade ótima do primal.

## Gráfico interativo: Demandas Marshalliana e Hicksiana

<iframe src="graficos/cap05/demanda-marshalliana-hicksiana.html"></iframe>

!!! tip "Explore o gráfico"
    Varie o preço $p_1$ e compare as duas curvas de demanda. Para bens normais, a Marshalliana é mais elástica (mais horizontal) que a Hicksiana. Elas se cruzam no preço inicial.

---

## Exercícios de preparação

**Exercício 1.** Para $u = x_1^{1/2} x_2^{1/2}$, derive as demandas Hicksianas resolvendo o problema de minimização do dispêndio. Verifique usando o Lema de Shephard.

??? success "Solução"
    Tangência: $(1/2)(x_2/x_1) = p_1/p_2 \implies x_2 = (p_1/p_2)x_1$. Restrição: $x_1^{1/2}[(p_1/p_2)x_1]^{1/2} = \bar{u} \implies x_1(p_1/p_2)^{1/2} = \bar{u}$. Logo $h_1 = \bar{u}(p_2/p_1)^{1/2}$ e $h_2 = \bar{u}(p_1/p_2)^{1/2}$. Função dispêndio: $E = p_1 h_1 + p_2 h_2 = 2\bar{u}(p_1 p_2)^{1/2}$. Verificação: $\partial E/\partial p_1 = \bar{u}(p_2/p_1)^{1/2} = h_1$. $\checkmark$

**Exercício 2.** Verifique que $E(p, V(p, I)) = I$ para o caso Cobb-Douglas com $a = 1/2$.

??? success "Solução"
    $V = (1/2)(1/2) \cdot I/(p_1^{1/2} p_2^{1/2}) = I/(2\sqrt{p_1 p_2})$. Então $E = 2\bar{u}\sqrt{p_1 p_2} = 2 \cdot \frac{I}{2\sqrt{p_1 p_2}} \cdot \sqrt{p_1 p_2} = I$. $\checkmark$

**Exercício 3.** Explique intuitivamente por que $\partial h_i/\partial p_i \leq 0$ sempre (sem exceção Giffen), enquanto $\partial x_i^M/\partial p_i$ pode ser positivo.

??? success "Solução"
    A Hicksiana mantém utilidade constante, isolando o **efeito substituição puro**: quando $p_i$ sobe, o consumidor substitui para bens mais baratos. Esse efeito é sempre negativo. A Marshalliana inclui também o **efeito renda**: o aumento de preço reduz poder de compra. Para bens inferiores, o efeito renda é positivo. Se superar o efeito substituição (caso Giffen), $\partial x_i^M/\partial p_i > 0$. A Hicksiana "neutraliza" o efeito renda por construção.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O problema de minimização do dispêndio consiste em:

- [ ] (a) Maximizar utilidade sujeito ao orçamento
- [x] (b) Minimizar gasto sujeito a um nível mínimo de utilidade
- [ ] (c) Minimizar utilidade sujeito ao orçamento
- [ ] (d) Maximizar gasto sujeito à utilidade

**Q2.** O Lema de Shephard afirma que:

- [x] (a) $h_i = \partial E / \partial p_i$
- [ ] (b) $h_i = \partial V / \partial p_i$
- [ ] (c) $x_i^M = \partial E / \partial p_i$
- [ ] (d) $E = \partial h_i / \partial p_i$

**Q3.** A função dispêndio é homogênea de grau ___ em preços:

- [ ] (a) 0
- [x] (b) 1
- [ ] (c) 2
- [ ] (d) -1

**Q4.** A demanda Hicksiana satisfaz $\partial h_i / \partial p_i \leq 0$ porque:

- [x] (a) Ela isola o efeito substituição, que é sempre negativo
- [ ] (b) A função dispêndio é convexa
- [ ] (c) Todos os bens são normais
- [ ] (d) O multiplicador de Lagrange é positivo

**Q5.** A relação $V(p, E(p, \bar{u})) = \bar{u}$ expressa:

- [ ] (a) A Lei de Walras
- [ ] (b) A identidade de Roy
- [x] (c) A dualidade entre utilidade indireta e função dispêndio
- [ ] (d) A homogeneidade das demandas

</div>

---

!!! abstract "Próxima aula"
    **Aula 07**: Dualidade na Teoria do Consumidor — o mapa completo primal-dual e as identidades fundamentais.
