# Pré-Aula 02 — Oficina de Otimização (Prática)

!!! info "Leitura obrigatória"
    **Cap. 2, Seções 2.5–2.7** (teorema do envelope, elasticidade, homogeneidade) + Rever soluções do PS0 | Tempo estimado: **40 min**

## Objetivos de aprendizagem

1. Aplicar o teorema do envelope para avaliar impactos de mudanças paramétricas
2. Calcular elasticidades e verificar grau de homogeneidade
3. Identificar e corrigir erros comuns na resolução de Lagrangianos

---

## 1. Teorema do Envelope

Suponha que resolvemos $\max_x f(x; a)$ sujeito a alguma restrição, onde $a$ é um parâmetro. O valor ótimo é $V(a) = f(x^*(a); a)$.

**Teorema do Envelope:**

$$\frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{x^*, \lambda^*}$$

> Para saber como o valor ótimo muda quando $a$ muda, basta derivar o Lagrangiano em relação a $a$ **no ponto ótimo** — sem precisar re-resolver o problema!

!!! example "Aplicação"
    No problema do consumidor, $V(I) = U(x^*(I), y^*(I))$.

    Pelo envelope: $\frac{dV}{dI} = \lambda^*$

    Se $\lambda^* = 0{,}05$, um aumento de R$ 1 na renda eleva a utilidade em ~0,05.

---

## 2. Elasticidade

A elasticidade mede a **sensibilidade percentual** de uma variável a outra:

$$\varepsilon_{x,p} = \frac{\partial x}{\partial p} \cdot \frac{p}{x} = \frac{\% \Delta x}{\% \Delta p}$$

| Valor | Classificação |
|:---:|:---|
| $|\varepsilon| = 0$ | Perfeitamente inelástica |
| $0 < |\varepsilon| < 1$ | Inelástica |
| $|\varepsilon| = 1$ | Elasticidade unitária |
| $|\varepsilon| > 1$ | Elástica |
| $|\varepsilon| = \infty$ | Perfeitamente elástica |

---

## 3. Homogeneidade

Uma função $f(x,y)$ é **homogênea de grau $k$** se:

$$f(tx, ty) = t^k \cdot f(x,y) \quad \forall t > 0$$

**Teorema de Euler:** Se $f$ é homogênea de grau $k$:

$$x \frac{\partial f}{\partial x} + y \frac{\partial f}{\partial y} = k \cdot f(x,y)$$

!!! note "Intuição Econômica"
    A demanda Marshalliana é homogênea de grau **zero** em preços e renda: $x^*(tp_x, tp_y, tI) = x^*(p_x, p_y, I)$.

    Significado: se todos os preços e a renda dobram, as quantidades demandadas **não mudam**. Não há ilusão monetária!

---

## Preparação para a oficina

A Aula 02 será uma **oficina prática** com:

- **Think-Pair-Share**: resolver problemas do PS0 que geraram mais dúvidas
- **Gallery Walk**: 4 estações com problemas de Lagrangiano diferentes
- **Desafio cronometrado**: 3 problemas em 15 minutos — ranking ao vivo!

### Para se preparar:

1. Revise as soluções do **Problem Set 0**
2. Identifique **2 dúvidas** que teve ao resolver
3. Pratique montar o Lagrangiano rapidamente (objetivo: < 2 minutos por problema)

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O que o teorema do envelope afirma sobre o valor ótimo de uma função?

- [x] (a) Sua sensibilidade a parâmetros pode ser calculada sem re-resolver o problema
- [ ] (b) O valor ótimo é sempre crescente nos parâmetros
- [ ] (c) O multiplicador de Lagrange é sempre positivo
- [ ] (d) A CSO é automaticamente satisfeita

**Q2.** Se $f(tx, ty) = t^2 f(x,y)$, qual é o grau de homogeneidade de $f$?

- [ ] (a) 0
- [ ] (b) 1
- [x] (c) 2
- [ ] (d) $1/2$

**Q3.** Qual a elasticidade-preço da demanda se $Q = 100/P$?

- [x] (a) $-1$ (unitária)
- [ ] (b) $-100$
- [ ] (c) $0$
- [ ] (d) $-P/100$

**Q4.** V/F: "No ótimo, o efeito de uma mudança no parâmetro sobre o valor da função objetivo pode ser calculado sem re-resolver o problema."

- [x] (a) Verdadeiro — é exatamente o teorema do envelope
- [ ] (b) Falso

**Q5.** O teorema de Euler para $f$ homogênea de grau $k$ afirma que:

- [ ] (a) $f(tx, ty) = t^k$
- [x] (b) $x f_x + y f_y = k f$
- [ ] (c) $f_x + f_y = k$
- [ ] (d) $\nabla f = k \cdot (x, y)$

</div>

---

!!! abstract "Próxima aula"
    **Aula 02**: Oficina prática com Gallery Walk + desafio cronometrado. Traga calculadora e disposição para competir!
