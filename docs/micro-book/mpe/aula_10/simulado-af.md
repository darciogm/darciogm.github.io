# Simulado da Avaliação Final — Microeconomia I MPE 2026/32

> **Instrumento de estudo** para preparação à Avaliação Final (qua 24/06/2026, 19:00, 3h, presencial, A4 de consulta permitida, 70% da nota).
>
> **45 questões** cobrindo as 9 aulas do curso, distribuídas como **1 🟢 + 3 🟡 + 1 🔴 por aula**.
>
> **Composição.** Tipos misturados: ~12 numéricos · ~10 manipulação literal · ~8 provas curtas · ~10 V/F com justificativa · ~5 abertas-discursivas.
>
> **Tempo-alvo total em casa.** ~5–6 horas. Não cronometre — use para fechar lacunas e calibrar a A4 de consulta.
>
> **Material da AF real.** Folha A4 (frente e verso) com fórmulas e exemplos resolvidos. Treine a A4 enquanto faz este simulado.
>
> **Convenção canônica do bundle.** `\succeq` (preferência fraca), `\text{TMS}` em módulo, vírgula em decimais com `\{,\}`, expoentes CES canônicos $u = (\sum_i \alpha_i x_i^\rho)^{1/\rho}$ com $\sigma = 1/(1-\rho)$. Cobertura N&S 12e (piso) + J-R 3e (teto) + ZaE (leitura principal) + MWG (cirúrgico em 🔴).

---

# Parte A — Aulas 1–5

---

## Aula 1 — Preferências, Axiomas, Utilidade

### Q1 (🟢 fácil) — numérico CES + CD limite

Considere a preferência CES em $\mathbb{R}^2_{++}$:

$$
u_\rho(x_1, x_2) = \big(\tfrac{1}{2}\, x_1^\rho + \tfrac{1}{2}\, x_2^\rho\big)^{1/\rho}, \qquad \rho \in (-\infty, 1)\setminus\{0\}.
$$

**(a)** Calcule $\text{TMS}_{12}$ em $(x_1, x_2) = (1, 4)$ para $\rho = -1$ (substitutos imperfeitos, $\sigma = 1/2$). Mostre a passagem algébrica.

**(b)** A elasticidade de substituição $\sigma$ no regime $\rho = -1$ vale quanto? Em que regime CES esse $\sigma$ se enquadra (substitutos perfeitos, complementares, Cobb-Douglas, Leontief)?

**(c)** Qual o valor-limite de $\text{TMS}_{12}$ no mesmo ponto $(1, 4)$ quando $\rho \to 0$ (Cobb-Douglas)? Compare com (a) e justifique a direção da diferença em uma frase.

---

### Q2 (🟡 média) — V/F com justificativa: quasilinear e excedente

Julgue **V** ou **F** e **justifique em 2–3 linhas** (com contraexemplo se F, esboço de prova se V):

> *"Em qualquer preferência quasilinear $u(x_1, x_2) = v(x_1) + x_2$ com $v$ estritamente côncava, o excedente do consumidor com respeito ao bem 1 coincide com a variação compensatória (CV) de qualquer mudança de $p_1$, **independentemente** do nível de renda."*

---

### Q3 (🟡 média) — manipulação literal: transformação ordinal e TMS

Seja $u: \mathbb{R}^2_{++} \to \mathbb{R}$ contínua e diferenciável com $u_1, u_2 > 0$. Defina $v = f \circ u$ onde $f: \mathbb{R} \to \mathbb{R}$ é $C^1$.

**(a)** Mostre, derivando explicitamente, que $\text{TMS}^v_{12} = \text{TMS}^u_{12}$ em todo ponto interior **se e só se** $f'(u(x)) > 0$ em todo $u(x)$ relevante.

**(b)** Dê um exemplo concreto de $f$ estritamente crescente em $(0, +\infty)$ porém com $f'(u_0) = 0$ em algum $u_0$ específico. O que acontece com a TMS de $v$ no(s) ponto(s) onde $u(x) = u_0$?

**(c)** O contraexemplo de (b) viola a propriedade de invariância da TMS sob transformação monótona? Argumente em 2 linhas.

---

### Q4 (🟡 média) — prova curta: convexidade $\Rightarrow$ TMS decrescente

Seja $u: \mathbb{R}^2_{++} \to \mathbb{R}$ $C^2$, estritamente quasicôncava, com $u_1, u_2 > 0$. **Prove** que ao longo de uma curva de indiferença $\{(x_1, x_2) : u(x_1, x_2) = \bar u\}$, $\text{TMS}_{12}(x_1, x_2)$ é **estritamente decrescente** em $x_1$.

> *Sugestão.* Diferencie $\text{TMS} = u_1/u_2$ ao longo da curva implicitamente definida por $u(x_1, x_2) = \bar u$ e use o sinal do Hessiano bordado. Use $du = 0 \Rightarrow dx_2/dx_1 = -u_1/u_2$.

---

### Q5 (🔴 desafio) — Lex em $\mathbb{R}^2$ com bem composto + variação topológica

Considere a preferência $\succeq^*$ em $X = \mathbb{R}^2_+$ definida por:

$$
(x_1, x_2) \succeq^* (y_1, y_2) \iff
\begin{cases}
\phi(x_1, x_2) > \phi(y_1, y_2),\ \text{ou}\\
\phi(x_1, x_2) = \phi(y_1, y_2)\ \text{e}\ x_1 \geq y_1,
\end{cases}
$$

onde $\phi(x_1, x_2) = x_1 + x_2$.

**(a)** Mostre que $\succeq^*$ é completa, transitiva e monótona forte em $X$.

**(b)** Mostre, usando o argumento de Debreu adaptado, que **não existe** $u: X \to \mathbb{R}$ representando $\succeq^*$.

**(c)** *[Bônus avançado — fora do escopo da AF.]* Suponha que restringimos $\succeq^*$ a $X^Q = \mathbb{Q}^2_+$. Argumente: $\succeq^*$ admite representação numérica em $X^Q$? E continua descontínua na topologia induzida em $X^Q$? Esclareça por que essas duas perguntas têm respostas distintas.

> **Nota.** O item (c) testa a separação entre **cardinalidade** (que governa representabilidade) e **topologia** (que governa continuidade). É um ponto fino, mais perto de Jehle-Reny / Kreps do que do N&S 12e — **não cobrado na AF**. Resolva apenas se já fechou (a), (b) e (d) com folga; se travar, leve para a Pré-M5 com Alberto.

**(d)** Em 4–5 linhas: se $\succeq^*$ não é representável, quais consequências para EG (Aulas 4–6)?

---

## Aula 2 — UMP, EMP, Dualidade

### Q1 (🟢 fácil) — UMP CES com substitutos

Um consumidor tem preferências CES em $\mathbb{R}^2_{++}$ com $\alpha = 1/3$, $\rho = 1/2$ (logo $\sigma = 2$):

$$
u(x_1, x_2) = \big(\tfrac{1}{3}\, x_1^{1/2} + \tfrac{2}{3}\, x_2^{1/2}\big)^{2}.
$$

Preços $p_1 = 1$, $p_2 = 2$, renda $m = 60$.

**(a)** Use a fórmula fechada da Marshalliana CES para calcular $x_1^M$ e $x_2^M$:

$$
x_i^M = \dfrac{\alpha_i^\sigma\, p_i^{-\sigma}}{\sum_j \alpha_j^\sigma\, p_j^{1-\sigma}}\, m.
$$

**(b)** Calcule a parcela de gasto $s_1 = p_1 x_1^M / m$. Confirme via Walras que $s_1 + s_2 = 1$.

**(c)** Em duas frases, explique por que (com $\sigma > 1$) o aumento de $p_1$ relativo a $p_2$ **reduz** $s_1$.

---

### Q2 (🟡 média) — manipulação literal: indireta dada, recuperar Marshalliana

Suponha que um consumidor tem função utilidade indireta tipo Stone-Geary

$$
v(p_1, p_2, p_3, m) = \frac{m - p_1 \gamma_1 - p_2 \gamma_2 - p_3 \gamma_3}{p_1^{\beta_1}\, p_2^{\beta_2}\, p_3^{\beta_3}},
$$

com $\beta_i \geq 0$, $\sum_i \beta_i = 1$, $\gamma_i \geq 0$, e $m > \sum_k p_k \gamma_k$ (subsistência ativa).

**(a)** Aplique a identidade de Roy para derivar $x_1^M(p, m)$.

**(b)** Que forma funcional clássica primal corresponde a essa indireta? Explique em 2 linhas.

**(c)** A propriedade $\partial v/\partial m > 0$ é satisfeita? Mostre.

---

### Q3 (🟡 média) — prova curta: Hicksiana = Marshalliana em quasilinear

Seja $u(x_1, x_2) = v(x_1) + x_2$ com $v$ estritamente côncava, $v' > 0$, $x_2$ numerário ($p_2 = 1$). **Prove** que, em ótimo interior, $h_1(p_1, \bar u) = x_1^M(p_1, m)$.

> *Roteiro.* (i) Resolva UMP — mostre que $x_1^M$ não depende de $m$ no interior. (ii) Resolva EMP — mostre que $h_1$ não depende de $\bar u$. (iii) Como ambas dependem só de $p_1$ via a mesma CPO, conclua. Indique onde a hipótese de interioridade é usada.

---

### Q4 (🟡 média) — V/F com justificativa: propriedades de $v$ e $e$

Para cada item, julgue **V/F** e justifique em 2 linhas:

**(a)** *"Se $u$ é homogênea de grau 1 em $x$, então $v(p, m) = m \cdot \phi(p)$ para alguma $\phi$."*

**(b)** *"A função gasto $e(p, \bar u)$ é convexa em $p$."*

**(c)** *"$e(p, \bar u)$ é homogênea de grau 1 em $p$, portanto $\sum_i p_i\, h_i(p, \bar u) = e(p, \bar u)$."*

**(d)** *"Em qualquer preferência regular, $\partial h_i/\partial p_i \leq 0$. O mesmo vale para $\partial x_i^M/\partial p_i$."*

---

### Q5 (🔴 desafio) — derivar a função gasto CES e verificar Shephard

Considere CES com $n$ bens em $\mathbb{R}^n_{++}$:

$$
u(x) = \left(\sum_{i=1}^n \alpha_i\, x_i^\rho\right)^{1/\rho}, \quad \rho < 1,\ \rho \neq 0,\ \alpha_i > 0,\ \sum_i \alpha_i = 1.
$$

Defina $\sigma = 1/(1-\rho)$.

**(a)** Resolva o EMP $\min_{x \geq 0} p \cdot x$ s.a. $u(x) \geq \bar u$. Derive

$$
e(p, \bar u) = \bar u \cdot \left(\sum_{i=1}^n \alpha_i^\sigma\, p_i^{1-\sigma}\right)^{1/(1-\sigma)}.
$$

**(b)** Aplicando o Lema de Shephard, derive $h_i(p, \bar u)$ explicitamente.

**(c)** Verifique que $\partial h_i / \partial p_j$ é simétrica e $\sum_j p_j (\partial h_i / \partial p_j) = 0$.

**(d)** Em uma frase, explique por que essas duas propriedades valem em qualquer preferência regular.

---

## Aula 3 — Slutsky, Elasticidades, Bem-estar

### Q1 (🟢 fácil) — restrições agregadas em CES

CES em $\mathbb{R}^3_{++}$ com $(\alpha_1, \alpha_2, \alpha_3) = (0{,}5;\ 0{,}3;\ 0{,}2)$ e $\sigma = 2$. Em $p = (1, 1, 1)$, $m = 100$, parcelas $(s_1, s_2, s_3) = (0{,}5;\ 0{,}3;\ 0{,}2)$.

**(a)** Em CES com $\sigma$ comum, $\eta_i = 1$ (homotética). **Verifique** Engel $\sum_i s_i \eta_i = 1$.

**(b)** Em CES, $\varepsilon^c_{ii} = -(1 - s_i)\sigma$. Calcule $\varepsilon^c_{11}$.

**(c)** Use Slutsky em elasticidades $\varepsilon_{ii} = \varepsilon^c_{ii} - s_i\, \eta_i$ para calcular $\varepsilon_{11}$. Compatível com lei da demanda Marshalliana?

---

### Q2 (🟡 média) — V/F com justificativa: Slutsky e Giffen

Julgue **V/F** com justificativa em 2 linhas:

**(a)** *"Se $\partial x_i^M/\partial p_i > 0$ (Giffen), então $x_i$ é necessariamente inferior."*

**(b)** *"Em CD, $\partial x_i^M/\partial p_j = 0$ para $j \neq i$, logo $x_i, x_j$ não são substitutos nem complementos."*

**(c)** *"$\partial h_i/\partial p_j = \partial h_j/\partial p_i$ vale sempre, mas $\partial x_i^M/\partial p_j = \partial x_j^M/\partial p_i$ falha em geral."*

**(d)** *"Em quasilinear (interior), $\Delta\text{EC}_1 = \text{CV}_1 = \text{EV}_1$ exatamente, sem aproximação."*

---

### Q3 (🟡 média) — CV vs. EV em CES

CES com $\alpha = 1/2$, $\rho = -1$ ($\sigma = 1/2$), $\mathbb{R}^2_{++}$. Renda $m = 24$. $p^0 = (1, 1)$. Sobe para $p^1 = (4, 1)$.

**(a)** Use $e(p, \bar u) = \bar u \cdot \big(\alpha^\sigma p_1^{1-\sigma} + (1-\alpha)^\sigma p_2^{1-\sigma}\big)^{1/(1-\sigma)}$ e a relação $e(p, v(p, m)) = m$ para calcular $\bar u^0 = v(p^0, m)$ e $\bar u^1 = v(p^1, m)$.

**(b)** Calcule $\text{CV} = e(p^1, \bar u^0) - m$ e $\text{EV} = m - e(p^0, \bar u^1)$.

**(c)** Para alta de preço, é verdade que $\text{EV} \leq \text{CV}$? Confirme numericamente. Interpretação econômica em 2 linhas.

---

### Q4 (🟡 média) — manipulação literal / prova curta: simetria de Slutsky

Preferência regular em $\mathbb{R}^n_{++}$. Matriz Slutsky $S$ com $S_{ij} = \partial h_i/\partial p_j$.

**(a)** Mostre que $S_{ij} = \partial x_i^M/\partial p_j + x_j^M\cdot \partial x_i^M/\partial m$.

**(b)** Use Young aplicado a $\partial^2 e/\partial p_i \partial p_j$ para concluir que $S$ é simétrica.

**(c)** Econometrista estima Marshalliana e o ajuste de Slutsky em elasticidades não bate ($s_j\, \varepsilon_{ij} \neq s_i\, \varepsilon_{ji}$ após ajuste). Liste duas hipóteses para a falha.

---

### Q5 (🔴 desafio) — incidência tributária com 3 bens

Sistema com 3 bens: combustível ($i = 1$), transporte coletivo ($i = 2$), bens gerais ($i = 3$, numerário). Estimativas:

$$
s = (0{,}10;\ 0{,}05;\ 0{,}85),\quad \eta = (0{,}4;\ 1{,}1;\ 0{,}97),
$$

$$
\varepsilon^c_{11} = -0{,}30,\ \varepsilon^c_{12} = +0{,}15,\ \varepsilon^c_{13} = +0{,}15,
$$

$$
\varepsilon^c_{21} = +0{,}30,\ \varepsilon^c_{22} = -0{,}50,\ \varepsilon^c_{23} = +0{,}20.
$$

**(a)** Verifique $s_1\, \varepsilon^c_{12} = s_2\, \varepsilon^c_{21}$. Comente em uma frase.

**(b)** Use Slutsky em elasticidades para calcular $\varepsilon_{11}$ e $\varepsilon_{21}$.

**(c)** Para alta de 20% em $p_1$ ($\Delta\ln p_1 = 0{,}2$), calcule queda % de $x_1^M$ e alta % de $x_2^M$. Comente em uma frase.

**(d)** Aproxime CV/m por

$$
\frac{\text{CV}}{m} \approx s_1 \cdot \frac{\Delta p_1}{p_1}\cdot \left(1 + \frac{1}{2}\, \varepsilon^c_{11}\cdot \frac{\Delta p_1}{p_1}\right).
$$

**(e)** Em 2 frases: por que heterogeneidade de $s_1$ entre decis gera regressividade? E por que cashback (EC 132/2023) mitiga?

---

## Aula 4 — Equilíbrio Geral: Trocas e Produção

### Q1 (🟢 fácil) — EC numérico em troca pura assimétrica

Economia $2 \times 2$: $u^A = x_1^{1/4} x_2^{3/4}$, $u^B = x_1^{3/4} x_2^{1/4}$, $\omega^A = (4, 0)$, $\omega^B = (0, 4)$. Numerário $p_2 = 1$.

**(a)** Escreva $x_1^A(p_1)$ e $x_1^B(p_1)$.

**(b)** Resolva o mercado 1 e calcule $p_1^*$.

**(c)** Calcule a alocação $(x^{A*}, x^{B*})$. Verifique Walras.

---

### Q2 (🟡 média) — Robinson Crusoe com tecnologia côncava

Robinson com $u(q, \ell) = \ln q + \ln \ell$, tecnologia $q = f(L) = L^{1/3}$, dotação $\bar L = 8$. Numerário $p = 1$.

**(a)** Resolva o problema do planejador $\max_L \ln(f(L)) + \ln(\bar L - L)$. Calcule $L^*, q^*, \ell^*$.

**(b)** Em equilíbrio descentralizado, calcule $w^* = p\, f'(L^*)$ e $\pi^* = p\, q^* - w^*\, L^*$.

**(c)** Verifique $\text{TMS}_{\ell, q} = w^*/p = \text{TMT}_{L, q}$ no equilíbrio.

**(d)** Em uma frase: por que a coincidência planejador↔descentralizado é manifestação do 1º TBE com produção?

---

### Q3 (🟡 média) — prova curta: 1º TBE em troca pura via LNS

Economia de troca pura $L \times I$ com preferências satisfazendo **LNS**. Seja $(p^*, x^*)$ equilíbrio competitivo.

**Prove** que $x^*$ é Pareto-eficiente. Use o argumento canônico por contradição:

> *(i)* suponha $\tilde x$ Pareto-superior viável; *(ii)* $p^*\cdot \tilde x^j > p^*\cdot \omega^j$ para o agente $j$ estritamente melhor; *(iii)* LNS dá $p^*\cdot \tilde x^i \geq p^*\cdot \omega^i$ para os demais; *(iv)* some e contradiga viabilidade $\sum_i \tilde x^i = \sum_i \omega^i$.

Indique onde LNS é usado e por que monotonicidade estrita é suficiente mas não necessária.

---

### Q4 (🟡 média) — V/F com justificativa: TBE, Pareto e núcleo

Julgue **V/F** com justificativa em 2 linhas:

**(a)** *"O 1º TBE: toda alocação EC é Pareto. O 2º TBE: toda alocação Pareto é EC de alguma economia."*

**(b)** *"Em $2 \times 2$ com preferências convexas estritas, núcleo coincide com contract curve."*

**(c)** *"Convexidade dos $Y^j$ é necessária para o **1º** TBE com produção."*

**(d)** *"No Robinson canônico, $\pi^*$ é estritamente positivo se $f$ é estritamente côncava."*

---

### Q5 (🔴 desafio) — Walras dimensional + economia de produção

Economia com $L = 4$ bens, $I = 100$ consumidores, $J = 50$ firmas. Cada $\succeq^i$ contínua, monotônica estrita, convexa estrita; $Y^j \subset \mathbb{R}^4$ convexo, fechado, contendo $0$, com livre disponibilidade.

**(a)** Quantas equações independentes precisamos resolver para encontrar equilíbrio? Justifique (papel de Walras + homogeneidade grau 0).

**(b)** Liste as 4 hipóteses-chave para existência (J-R §5.6) com 1 frase cada.

**(c)** Suponha que **uma firma** tem retornos crescentes (logo $Y^j$ não é convexo). O que acontece com (i) existência e (ii) 2º TBE? Argumente em 4–5 linhas.

**(d)** Em economias com retornos crescentes, regulação tarifária impõe preço = custo médio. Por que isso é "second-best" comparado ao 1º TBE? Em 2 frases.

---

## Aula 5 — Arrow-Debreu I (Mercados Completos, Bens Contingentes)

### Q1 (🟢 fácil) — seguro completo numérico

Economia $L = 1$, $S = 2$, $I = 2$. $\pi_1 = 0{,}3$, $\pi_2 = 0{,}7$. Bernoulli: $v_A(c) = \ln c$, $v_B(c) = c$. Dotações $\omega^A = (50, 80)$, $\omega^B = (50, 20)$. Total $\bar\omega = (100, 100)$.

**(a)** Use a CPO de $B$ (neutro) para deduzir $p_1^*/p_2^*$.

**(b)** Use a CPO de $A$ ($v_A = \ln$) para deduzir $x^{A*}_1, x^{A*}_2$.

**(c)** Use viabilidade para calcular $x^{B*}$.

**(d)** Verifique $x^{A*}_1 = x^{A*}_2$. Em uma frase: papel do agente neutro.

---

### Q2 (🟡 média) — manipulação literal: SDF sob CRRA com agregado arriscado

$L = 1$, $S = 2$, $I = 1$ representativo. CRRA $v(c) = c^{1-\gamma}/(1-\gamma)$, $\gamma > 0$. Probabilidades $\pi$. Dotação agregada $\bar\omega$, com $\bar\omega_1 \neq \bar\omega_2$.

**(a)** Mostre que em equilíbrio com agente representativo, $x^* = \bar\omega$.

**(b)** Use a equação fundamental do SDF para escrever $p_1^*/p_2^*$ em função de $\pi, \gamma, \bar\omega$.

**(c)** Mostre que $p_1^*/p_2^* > \pi_1/\pi_2$ se $\bar\omega_1 < \bar\omega_2$. Interprete em termos de prêmio de risco (state-price premium).

---

### Q3 (🟡 média) — prova curta: agregado livre de risco $\Rightarrow$ preços = probabilidades

Economia $L = 1$, $S$ qualquer, $I$ agentes com Bernoullis idênticas $v$ estritamente côncava, crenças idênticas $\pi$. **Agregado livre de risco** ($\bar\omega_s = \bar\omega$ constante em $s$).

**Prove**:

**(a)** Cada $i$ tem $x^{i*}_s$ constante em $s$ (totalmente segurado).

**(b)** $p_s^*/p_{s'}^* = \pi_s/\pi_{s'}$.

> *Roteiro.* Use a equação fundamental do SDF + idêntica $v$ $\Rightarrow$ razão de marginais é a mesma para todos. Combine com viabilidade $\sum_i x^{i*}_s = \bar\omega$ para concluir.

---

### Q4 (🟡 média) — V/F com justificativa: bens contingentes vs. datados

Julgue **V/F** com justificativa em 2 linhas:

**(a)** *"Bens datados ($s = t$ sem incerteza) e contingentes ($s = (t, \omega)$) são casos do mesmo formalismo $\mathbb{R}^{LS}$, com a mesma estrutura para 1º TBE."*

**(b)** *"O 1º TBE em mercado completo AD requer hipóteses **adicionais** sobre crenças (homogêneas) que não aparecem na versão sem incerteza."*

**(c)** *"Sob mercado completo, AD é equivalente a Radner sequencial **se e só se** o número de ativos é exatamente $|S|$."*

**(d)** *"A equação de Euler $u'(c_t) = \beta R\, u'(c_{t+1})$ é caso particular da equação fundamental do SDF quando $|\Omega| = 1$."*

---

### Q5 (🔴 desafio) — Lucas (1978): árvore de Lucas

Economia de Lucas com agente representativo CRRA ($\gamma = 2$), $\beta = 0{,}95$. Dotação $\bar\omega_{t+1} \in \{0{,}9; 1{,}1\}$ com $\pi(0{,}9) = 0{,}5 = \pi(1{,}1)$, $\bar\omega_t = 1$.

**(a)** Em equilíbrio com agente representativo, $c_{t+1} = \bar\omega_{t+1}$. Calcule o SDF $m_{t+1}$ em cada estado.

**(b)** Calcule $R^f = 1/\mathbb{E}_t[m_{t+1}]$.

**(c)** Ativo arriscado paga $D_{t+1} = \bar\omega_{t+1}$. Calcule $P_t = \mathbb{E}_t[m_{t+1}\, D_{t+1}]$.

**(d)** Calcule $\mathbb{E}_t[R^a_{t+1}] = \mathbb{E}_t[D_{t+1}]/P_t$. Compare com $R^f$ e calcule prêmio de risco.

**(e)** Em 2 frases: conecte com **equity premium puzzle** (Mehra-Prescott 1985).

---

## Apêndice — Tabela de questões

| Aula | Q1 | Q2 | Q3 | Q4 | Q5 |
|---:|---|---|---|---|---|
| 1 | 🟢 num CES/CD | 🟡 V/F quasilinear | 🟡 literal: TMS sob $f$ | 🟡 prova: convex $\Rightarrow$ TMS↓ | 🔴 lex variante + Debreu |
| 2 | 🟢 num UMP CES | 🟡 literal: indireta $\to$ Marsh | 🟡 prova: $h_1=x_1^M$ em QL | 🟡 V/F: $v, e$ | 🔴 derivar $e$ CES + Shephard |
| 3 | 🟢 num restrições agreg | 🟡 V/F: Slutsky/Giffen | 🟡 num CV/EV CES | 🟡 prova: simetria Slutsky | 🔴 incidência tributária 3 bens |
| 4 | 🟢 num EC troca | 🟡 num Robinson | 🟡 prova: 1º TBE | 🟡 V/F: TBE/núcleo | 🔴 Walras + retornos crescentes |
| 5 | 🟢 num seguro completo | 🟡 literal: SDF CRRA | 🟡 prova: agregado livre risco | 🟡 V/F: contingentes/datados | 🔴 Lucas (1978) |

**Tipos cross-25** (mistura conforme contrato): ~7 numéricos (Q1 de cada aula + Aula 3-Q3 + Aula 4-Q2 + Aula 5-Q5) | ~5 manipulação literal (Aula 1-Q3 + Aula 2-Q2/Q5 + Aula 3-Q4 + Aula 5-Q2) | ~5 V/F (Aula 1-Q2 + Aula 2-Q4 + Aula 3-Q2 + Aula 4-Q4 + Aula 5-Q4) | ~5 provas curtas (Aula 1-Q4 + Aula 2-Q3 + Aula 3-Q4 + Aula 4-Q3 + Aula 5-Q3) | ~3 abertas-discursivas (Aula 1-Q5d + Aula 4-Q5c-d + Aula 5-Q5e).

---

**Boa sorte. Faça antes da AF; revise o gabarito; calibre sua A4.**

---

# Parte B — Aulas 6–9

> **Calibre.** N&S 12e (§13.6 para Aula 6; Cap 19 para Aula 7; Cap 18 para Aulas 8 e 9) é o piso. J-R 3e §5.5–5.6, §7.1–7.3, §9.5 é o teto de conforto. MWG citado cirurgicamente (§17, §19.B–E).
>
> **Notação canônica.** `\succeq` (não `\succsim`). `\text{TMS}` em módulo. Vírgula em decimais via `\{,\}`. Math: `$...$` inline, `$$...$$` display.
>
> **Não há "todas/nenhuma das anteriores".** V/F: justificar em 2–3 linhas com contraexemplo se F, esboço se V. Os enunciados aqui **não duplicam** os exercícios avaliativos das aulas (parâmetros e cenários novos).
>
> **Gabarito.** `aula_10/gabarito-simulado-af-parte-B.md` (5-passos enxuto: setup, derivação, resposta, armadilha + cross-aula).

---

## Aula 6 — Arrow-Debreu II (Existência via Brouwer/Kakutani · Radner sequencial · Mercados incompletos)

### Q1 (🟢 fácil) — numérico: rank de matriz de payoffs e diagnóstico de completude

Considere economia de troca pura com $L = 1$ bem físico, $|S| = 3$ estados em $t = 1$. Mercado financeiro de Radner com **3 ativos**:

- Ativo 1 (bond): $D^1 = (1, 1, 1)$
- Ativo 2 (ação): $D^2 = (2, 1, 0)$
- Ativo 3 (ativo composto): $D^3 = (4, 3, 2)$

Logo a matriz de payoffs é

$$
A = \begin{pmatrix} 1 & 2 & 4 \\ 1 & 1 & 3 \\ 1 & 0 & 2 \end{pmatrix} \in \mathbb{R}^{3 \times 3}.
$$

**(a)** Calcule $\det A$ explicitamente (mostre a expansão de Laplace por uma linha ou coluna).

**(b)** Determine o $\text{rank}(A)$ e classifique o mercado: **completo** ou **incompleto**?

**(c)** Em uma frase, qual é o teorema da Aula 6 que diz se a alocação Pareto-eficiente do problema AD canônico equivalente é ou não atingível neste mercado?

---

### Q2 (🟡 média) — V/F com justificativa: hipóteses para Brouwer

Julgue **V** ou **F** e **justifique em 2–3 linhas** (com contraexemplo se F, esboço de prova se V):

> *"Para que o teorema do ponto fixo de Brouwer entregue um equilíbrio Walrasiano em economia AD canônica de troca pura com preferências estritamente convexas, contínuas e localmente não-saciadas, basta que o excesso de demanda agregada $z(p)$ seja **contínuo no simplex aberto $\Delta^\circ$** e satisfaça a Lei de Walras $p \cdot z(p) = 0$. Continuidade na fronteira $\partial \Delta$ é dispensável porque, sob não-saciedade local, a demanda diverge na fronteira e o argumento de fronteira de Debreu redireciona o mapa para o interior."*

---

### Q3 (🟡 média) — Radner: replicação de opção europeia (call) com bond + ação

Economia de Radner com $|S| = 2$ estados em $t = 1$ ("alta" e "baixa"). Dois ativos disponíveis em $t = 0$:

- **Bond** com payoff $D^B = (1, 1)$ e preço $q^B = 0{,}95$.
- **Ação** com payoff $D^S = (4, 1)$ e preço $q^S = 2$.

Considere uma **opção europeia de compra** sobre a ação, com strike $K = 2$, payoff $D^C = (\max\{4-2,0\}, \max\{1-2,0\}) = (2, 0)$.

**(a)** Mostre que o mercado é completo (calcule $\det A$ para $A = [D^B \mid D^S]$).

**(b)** Encontre o portfolio de replicação $\theta = (\theta_B, \theta_S)$ tal que $A\theta = D^C$. Resolva o sistema $2 \times 2$ explicitamente.

**(c)** Calcule o preço de não-arbitragem da opção, $q^C = q^B \theta_B + q^S \theta_S$. Confira o sinal e interprete: o que significa $\theta_B < 0$, caso ocorra?

**(d)** Recupere os preços-Arrow $p^* = (p^*_1, p^*_2)$ a partir dos preços dos ativos resolvendo o sistema de não-arbitragem $q^j = \sum_s p^*_s D^j_s$ para $j \in \{B, S\}$. Verifique que $p^* \cdot D^C = q^C$.

---

### Q4 (🟡 média) — prova curta: equivalência preços-Arrow ↔ não-arbitragem

Seja economia de Radner com $|S|$ estados, $J$ ativos, matriz de payoffs $A \in \mathbb{R}^{S \times J}$ e preços de ativos $q \in \mathbb{R}^J$.

**Defina** "ausência de arbitragem (NA)" como: não existe $\theta \in \mathbb{R}^J$ tal que (i) $q \cdot \theta \leq 0$, (ii) $A\theta \geq 0$ em todos os estados, e (iii) pelo menos uma das desigualdades é estrita (ou em $t=0$ ou em algum $s \in S$).

**Prove** uma direção do teorema fundamental de finanças (Harrison-Kreps 1979 / Ross 1976):

> **NA implica existência de $p^* \in \mathbb{R}^{|S|}_{++}$ com $q = A^\top p^*$.**

*Sugestão.* Use o teorema da separação de hiperplanos (versão Stiemke/Farkas) sobre o cone $\{(q\cdot\theta,\, -A\theta) : \theta \in \mathbb{R}^J\}$ vs. $\mathbb{R}_+ \times \mathbb{R}^{|S|}_+ \setminus \{0\}$. **Não** precisa provar a recíproca. **Não** precisa lidar com infinitos estados. Demonstração de ~10 linhas é suficiente.

---

### Q5 (🔴 desafio) — Hart 1975: ineficiência genérica de equilíbrio com mercado incompleto

Considere a tese central de Hart (1975, *J. Economic Theory* 11(3): 418–443; DOI: 10.1016/0022-0531(75)90028-9):

> *"Em economias com mercados financeiros **incompletos** ($\text{rank}(A) < |S|$), preferências estritamente convexas e não-degenerescência genérica de dotações, o equilíbrio de Radner é **constrained-Pareto-eficiente** (no espaço de alocações implementáveis pelo span de $A$) mas **genericamente Pareto-ineficiente em sentido absoluto** — existem alocações fora do span que Pareto-dominariam o equilíbrio se fossem viáveis."*

**(a)** Em ~6 linhas, **explique a distinção** entre "constrained-Pareto-eficiente" e "Pareto-eficiente em sentido absoluto". Por que a primeira é fraca demais para garantir bem-estar?

**(b)** Geanakoplos & Polemarchakis (1986; em *Uncertainty, Information and Communication: Essays in Honor of K. J. Arrow, vol. III*, eds. Heller-Starr-Starrett, Cambridge UP) fortaleceram o resultado: mostraram que **adicionar um novo ativo** a um mercado incompleto pode mover o equilíbrio para uma alocação que é **constrained-Pareto-inferior** sob a nova estrutura. Em ~5 linhas, descreva o **mecanismo intuitivo** desse resultado: por que mais ativos podem piorar bem-estar, mesmo numa economia neoclássica padrão?

**(c)** Em 2–3 linhas, dê uma **implicação política** desse resultado para a regulação de derivativos OTC pós-Dodd-Frank (2010) / EMIR (2012).

---

## Aula 7 — Externalidades e Bens Públicos

### Q6 (🟢 fácil) — Pigou numérico: imposto ótimo em duopólio com poluição

Duas firmas $i \in \{1, 2\}$ produzem $q_i$ unidades a custo privado $C_i(q_i) = q_i^2$. Cada unidade gera dano externo $d = 4$ na vizinhança (independente de quem produz). Preço de mercado é $P = 24$, fixo (firmas competitivas).

**(a)** Calcule a quantidade $q_i^{\text{priv}}$ produzida por cada firma sem regulação (CPO privada $P = C_i'(q_i)$).

**(b)** Calcule a quantidade socialmente ótima $q_i^{\text{soc}}$ (CPO social: $P = C_i'(q) + d$).

**(c)** Calcule o **imposto pigouviano por unidade** $t^*$ que descentraliza o ótimo social. Mostre que sob $t = t^*$ a CPO da firma reproduz $q_i^{\text{soc}}$.

**(d)** Calcule a perda de bem-estar (DWL) total da economia sem regulação, somando as duas firmas.

---

### Q7 (🟡 média) — V/F com justificativa: Coase e custos de transação

Julgue **V** ou **F** e **justifique em 2–3 linhas** (com contraexemplo se F, esboço de prova se V):

> *"O teorema de Coase (1960, J. Law & Economics; DOI: 10.1086/466560) garante que, **quando direitos de propriedade são bem definidos e transferíveis**, a alocação Pareto-eficiente em presença de externalidade é atingida pela barganha bilateral entre as partes — **independentemente de a quem o direito é inicialmente atribuído**. Logo, em uma disputa entre uma fábrica poluidora e um pescador rio-abaixo, dar o direito de poluir à fábrica ou o direito ao rio limpo ao pescador conduz à **mesma** quantidade poluída de equilíbrio e **à mesma** distribuição de excedente."*

---

### Q8 (🟡 média) — Samuelson assimétrico: bem público com preferências heterogêneas

Economia com $I = 2$ agentes e um bem público $G \geq 0$. Utilidades:

$$
u_1(x_1, G) = x_1 + 6 \ln G, \qquad u_2(x_2, G) = x_2 + 2 \ln G,
$$

onde $x_i$ é o bem privado (numerário). Custo marginal de produzir $G$ é $c = 1$ (em unidades de numerário). Cada agente tem dotação $\omega_i = 10$ de numerário.

**(a)** Escreva a **condição de Samuelson** ($\sum_i \text{TMS}_i = c$) e resolva para $G^{\text{soc}}$.

**(b)** Calcule a **alocação Nash de contribuição voluntária**: cada agente escolhe $g_i \geq 0$ tomando $g_{-i}$ como dado, com $G = g_1 + g_2$. Encontre o equilíbrio de Nash $(g_1^*, g_2^*)$ e o $G^{\text{Nash}}$ resultante. *Atenção a soluções de canto.*

**(c)** Compare $G^{\text{soc}}$ e $G^{\text{Nash}}$. Quem subprovê: o agente "alta valoração" (1) ou o "baixa valoração" (2)? Comente em 2 linhas o **fenômeno de free-riding assimétrico** (Bergstrom-Blume-Varian 1986, *J. Public Economics*; DOI: 10.1016/0047-2727(86)90024-1).

---

### Q9 (🟡 média) — prova curta: VCG (Clarke pivot) é dominância-strategy proof

Considere mecanismo VCG para escolha entre dois projetos $a, b \in A$ com $I = 3$ agentes. Cada agente $i$ tem valor $v_i(a)$ ou $v_i(b)$, conhecido só por ele. Mecanismo:

1. Cada agente reporta $\hat v_i(\cdot)$.
2. Decisão: $a^* = \arg\max_{x \in \{a,b\}} \sum_i \hat v_i(x)$.
3. Pagamento de $i$ (regra de Clarke): $t_i = \max_{x} \sum_{j \neq i} \hat v_j(x) - \sum_{j \neq i} \hat v_j(a^*)$.

**Prove**, para um agente genérico $i$, que **reportar $\hat v_i = v_i$ verdadeiro é estratégia dominante** (independentemente do que $-i$ reportarem). Dica: utilidade líquida de $i$ é $v_i(a^*) - t_i$; mostre que esta é maximizada justamente em $a^* = \arg\max_x \sum_j v_j(x)$ quando $\hat v_j$ dos outros estão fixos. Demonstração de ~8–10 linhas.

---

### Q10 (🔴 desafio) — Common-pool / Hardin 1968: dinâmica + Ostrom

Considere o problema da pesca em um lago comum, dinâmico em $t = 1, 2$. Estoque inicial $S_1 = 100$. Lei de movimento:

$$
S_{t+1} = (S_t - h_t) \cdot (1 + r), \quad r = 0{,}10,
$$

onde $h_t$ é colheita total no período $t$ (soma das colheitas dos $I = 4$ pescadores idênticos: $h_t = \sum_i h_{i,t}$). Cada pescador maximiza valor presente (taxa de desconto $\delta = 1/(1+r) = 10/11$) com utilidade $u(h_{i,t}) = \ln(h_{i,t})$ por período (Bernoulli log na colheita individual).

**(a)** Resolva o **planejamento social** (planner escolhe $\{h_t\}_{t=1,2}$ tratando colheita total agregada e maximizando $\sum_i \sum_t \delta^{t-1} \ln(h_{i,t})$ com $h_{i,t} = h_t/I$ por simetria). Encontre $h^{\text{soc}}_1, h^{\text{soc}}_2$ e $S_2$ resultante. Mostre as CPOs.

**(b)** Resolva o **equilíbrio de Nash não-cooperativo**: cada pescador $i$ escolhe $\{h_{i,t}\}$ tomando $\{h_{j,t}\}_{j \neq i}$ como dado, em jogo simultâneo dentro de cada período. Use a hipótese padrão de Markov-perfect equilibrium (decisão em $t=2$ depende só de $S_2$). Encontre $h^{\text{Nash}}_1, h^{\text{Nash}}_2$.

**(c)** Compare $h^{\text{soc}}$ vs $h^{\text{Nash}}$ no período 1: quem colhe mais? Quanto fica de estoque $S_2$ em cada cenário? Calcule a **perda dinâmica** (diferença em utilidade total descontada) entre os dois cenários, **em forma fechada literal** (não precisa avaliar numericamente).

**(d)** Em ~4 linhas, conecte com o trabalho de **Elinor Ostrom** (1990, *Governing the Commons*; Nobel 2009) — quais são os mecanismos institucionais que permitem comunidades reais escaparem da tragédia, sem precisar nem de mercado nem de Estado? Cite ao menos **dois** dos seus oito "design principles" (não precisa nomear todos).

---

## Aula 8 — Seleção Adversa e Risco Moral

### Q11 (🟢 fácil) — diagnóstico de tipologia: identificar o problema

Para cada cenário abaixo, identifique se trata-se de (A) **seleção adversa** (hidden type — assimetria de informação **antes** do contrato), (B) **risco moral** (hidden action — assimetria **após** o contrato), (C) **ambos** ou (D) **nenhum**. Justifique em 1 linha por item.

**(a)** Banco oferece empréstimo a juros $r = 12\%$ a.a. Aplicantes "tipo bom" (probabilidade de inadimplência 2%) e "tipo ruim" (probabilidade 25%) chegam ao banco; banco não consegue distinguir tipos. Resultado: tipos bons saem do mercado, taxa sobe.

**(b)** Após assinar seguro contra roubo de carro, dono começa a deixar o carro destrancado em estacionamentos públicos.

**(c)** Empresa contrata um vendedor com salário fixo $w$. Após contratação, vendedor reduz esforço discricionário porque resultado de vendas tem componente aleatório e o esforço não é observável.

**(d)** Plano de saúde único e obrigatório (com prêmio comunitário) recebe inscrições; pessoas saudáveis e doentes entram, mas pessoas doentes usam o plano mais intensivamente após entrar.

---

### Q12 (🟡 média) — Akerlof contínuo: distribuição triangular de qualidade

Mercado de carros usados. Qualidade $\theta$ é privada do vendedor, distribuída em $[0, 60]$ com **densidade triangular** decrescente:

$$
f(\theta) = \frac{60 - \theta}{1800}, \quad \theta \in [0, 60].
$$

(Verifique: $\int_0^{60} f(\theta)\,d\theta = 1$.)

Vendedor avalia o próprio carro em $\theta$ (valor de uso). Comprador avalia em $\frac{4}{3}\theta$ (carro vale 33% mais para o comprador, condicional em conhecer $\theta$). Comprador é risco-neutro e oferece preço único $p$; vendedores aceitam vender se $p \geq \theta$.

**(a)** Escreva $E[\theta \mid \theta \leq p]$ como função de $p$ (esperança da qualidade truncada à esquerda). Use $E[\theta \mid \theta \leq p] = \frac{\int_0^p \theta f(\theta)\,d\theta}{F(p)}$ onde $F(p) = \int_0^p f(\theta)\,d\theta$. Mostre as integrais.

**(b)** Em equilíbrio Akerlof, comprador oferece $p^*$ tal que $p^* = \frac{4}{3} \cdot E[\theta \mid \theta \leq p^*]$. Resolva esta equação para $p^*$. *Há solução interior, ou apenas $p^* = 0$ (unraveling completo)?*

**(c)** Compare com o caso de **distribuição uniforme** em $[0, 60]$ (estudado em sala). Em qual distribuição há mais "lemons concentrados em baixa qualidade", e como isso afeta a existência ou não de equilíbrio com $p^* > 0$?

---

### Q13 (🟡 média) — V/F com justificativa: Rothschild-Stiglitz e existência de equilíbrio

Julgue **V** ou **F** e **justifique em 2–3 linhas** (com contraexemplo se F, esboço se V):

> *"No modelo de Rothschild-Stiglitz (1976, *QJE*; DOI: 10.2307/1885326), em mercado de seguros competitivo com 2 tipos (alto risco e baixo risco) e firmas neutras ao risco, o **equilíbrio separador sempre existe** desde que a proporção de tipos altos seja exógena. O equilíbrio pooling, por outro lado, é **nunca** equilíbrio competitivo, porque qualquer firma poderia desviar oferecendo um contrato que atrai apenas tipos baixos."*

---

### Q14 (🟡 média) — Holmström second-best com utilidade CARA (não $\sqrt{}$)

Modelo principal-agente. Agente avesso ao risco com utilidade

$$
u_A(w, e) = -\exp(-\rho\,(w - c(e))), \quad \rho = 1, \quad c(e) = \tfrac{1}{2} e^2,
$$

i.e., **CARA** com coeficiente de aversão absoluta $\rho = 1$ e custo de esforço quadrático. Output observável é

$$
y = e + \varepsilon, \quad \varepsilon \sim N(0, \sigma^2 = 1).
$$

Principal é risco-neutro, oferece contrato linear $w(y) = \alpha + \beta y$. Reservation utility do agente: $\bar U = -1$ (equivalente a equivalente-certeza de $0$ — outside option vale $0$ em CE-units).

**(a)** Sob CARA + ruído normal, o equivalente-certeza do agente é (resultado padrão; cite e use): $\text{CE}(w(y), e) = \alpha + \beta e - \tfrac{1}{2} \rho \beta^2 \sigma^2 - c(e)$. Escreva-o aqui explicitamente substituindo os parâmetros numéricos.

**(b)** **Incentive compatibility (IC):** dado o contrato, o agente escolhe $e^*$ maximizando seu CE. Encontre $e^*(\beta)$.

**(c)** **Participation (PC):** $\text{CE}(\cdot) \geq 0$ (CE-reservation = 0, equivalente a $\bar U = -1 = -\exp(0)$). Combine com IC e expresse $\alpha$ em função de $\beta$.

**(d)** Principal maximiza $E[y - w(y)] = e^* - \alpha - \beta e^*$ sujeito a IC + PC. Substitua e encontre $\beta^*$ ótimo. Mostre o trade-off **risco vs. incentivo**: o $\beta^*$ aqui é menor que $\beta = 1$ (first-best) por quanto, em termos de $\rho \sigma^2$?

---

### Q15 (🔴 desafio) — Equivalência First-Best = Second-Best sob neutralidade ao risco

**Prove** o seguinte resultado clássico de Holmström (1979, *Bell J. Economics*; DOI: 10.2307/3003320), Proposição 1:

> *"Se o agente é **neutro ao risco** ($u_A(w) = w$) e tem responsabilidade ilimitada (sem restrições de wealth não-negativa), então no problema principal-agente com hidden action, o **second-best coincide com o first-best**: o principal pode replicar a solução de ação observável vendendo o output ao agente por uma franquia fixa $F$."*

Estrutura sugerida:

**(a)** **Setup formal.** Output $y = e + \varepsilon$ com $\varepsilon$ ruído de média zero. Custo de esforço $c(e)$ estritamente crescente e convexo. Agente neutro, principal neutro. First-best: principal observa $e$ e impõe $e^{\text{FB}} = \arg\max_e e - c(e)$.

**(b)** **Construção do contrato pivô.** Defina $w(y) = y - F$ onde $F = e^{\text{FB}} - c(e^{\text{FB}}) - \bar U$. Mostre que sob esse contrato:

  (i) o agente escolhe $e^* = e^{\text{FB}}$ (IC);

  (ii) a participação é satisfeita com igualdade (PC binding);

  (iii) o principal recebe $E[F] = e^{\text{FB}} - c(e^{\text{FB}}) - \bar U$, que é exatamente o lucro de first-best.

**(c)** **Argumento de unicidade / coincidência.** Argumente que esse contrato é solução do problema do principal e portanto SB = FB.

**(d)** **Discussão.** Em ~3 linhas, **explique a economia da prova**: por que neutralidade ao risco do agente "resolve" o trade-off risco-incentivo? Onde a prova falha quando o agente é avesso ao risco?

---

## Aula 9 — Sinalização e Matching

### Q16 (🟢 fácil) — Spence: cálculo do separador menos custoso

Modelo Spence canônico com 2 tipos: $\theta_L = 4$ (baixa habilidade), $\theta_H = 12$ (alta habilidade). Custo de educação $e$ unidades:

$$
c_L(e) = 3e, \qquad c_H(e) = e.
$$

Empresas competitivas pagam $w(e)$ baseado em educação observada, com crença $\mu(\theta \mid e)$. Em equilíbrio Bayesiano sequencial separador, $w(e) = \theta$ se a crença é determinística no tipo associado a $e$.

**(a)** Escreva as duas **restrições de incentivo** (IC) para que o nível de educação $e^*$ separe os tipos:

  (i) IC do tipo $H$: $\theta_H - c_H(e^*) \geq \theta_L - c_H(0) = \theta_L$.

  (ii) IC do tipo $L$: $\theta_L - c_L(0) \geq \theta_H - c_L(e^*)$, i.e., $\theta_L \geq \theta_H - c_L(e^*)$.

**(b)** Encontre o intervalo $[e_{\min}, e_{\max}]$ de níveis $e^*$ que satisfazem ambas IC simultaneamente. Mostre as contas.

**(c)** Aplique o **critério intuitivo Cho-Kreps** (1987, *QJE*; DOI: 10.2307/1885060): o equilíbrio menos custoso e único sobrevivente é $e^* = e_{\min}$. Reporte o valor.

**(d)** Calcule a **perda social total** (deadweight loss) em equilíbrio separador vs. first-best (em que tipos seriam pagos $\theta_i$ sem qualquer educação). Diferencie por tipo, depois agregue.

---

### Q17 (🟡 média) — Single-crossing genérico: qual condição garante separação?

Modelo de sinalização com tipo contínuo $\theta \in [\underline\theta, \bar\theta]$, sinal $s \geq 0$, salário $w(s)$. Função de utilidade do tipo $\theta$:

$$
U(s, w; \theta) = w - C(s, \theta),
$$

onde $C: \mathbb{R}_+ \times [\underline\theta, \bar\theta] \to \mathbb{R}_+$ é o custo de sinalização.

A **propriedade single-crossing (Spence-Mirrlees)** diz: $\partial^2 C / \partial s\, \partial \theta < 0$ (custo marginal de sinalização decresce com tipo).

**(a)** Mostre que a propriedade single-crossing implica que as **curvas de indiferença** de tipos diferentes se cruzam **no máximo uma vez** no plano $(s, w)$. Faça um esboço (em palavras, com coordenadas) de duas indiferenças, uma para $\theta_L < \theta_H$, e indique onde elas se cruzam.

**(b)** Considere o exemplo: $C(s, \theta) = s^2 / \theta$. Verifique que satisfaz single-crossing.

**(c)** Considere o contraexemplo: $C(s, \theta) = s^2 + \theta s$. Verifique que **falha** single-crossing (o sinal de $\partial^2 C / \partial s\, \partial \theta$ é o oposto do exigido). O que acontece com a possibilidade de equilíbrio separador puro neste caso?

**(d)** Em ~3 linhas, conecte single-crossing com o **mecanismo direto-revelador** em screening (Mussa-Rosen 1978, *J. Economic Theory*; DOI: 10.1016/0022-0531(78)90085-6): em screening, single-crossing garante que a IC de tipo adjacente é suficiente para todas as IC.

---

### Q18 (🟡 média) — Deferred Acceptance: execução em mercado 3×3

Mercado de matching one-to-one com 3 firmas $\{F_1, F_2, F_3\}$ e 3 trabalhadores $\{T_1, T_2, T_3\}$. Preferências (estritas):

| Firma | 1ª | 2ª | 3ª |
|---|---|---|---|
| $F_1$ | $T_2$ | $T_1$ | $T_3$ |
| $F_2$ | $T_1$ | $T_2$ | $T_3$ |
| $F_3$ | $T_1$ | $T_3$ | $T_2$ |

| Trabalhador | 1ª | 2ª | 3ª |
|---|---|---|---|
| $T_1$ | $F_3$ | $F_1$ | $F_2$ |
| $T_2$ | $F_1$ | $F_3$ | $F_2$ |
| $T_3$ | $F_2$ | $F_1$ | $F_3$ |

**(a)** Execute o **algoritmo Deferred Acceptance com firmas propondo** (Gale-Shapley 1962, *American Mathematical Monthly* 69(1): 9–15; DOI: 10.2307/2312726). Liste cada rodada: quem propõe a quem, quem rejeita, quem fica em "espera". Pare quando ninguém é rejeitado em uma rodada.

**(b)** Reporte o matching final $\mu^F$. Verifique que é **estável** (não há par bloqueador): para cada par $(F_i, T_j) \notin \mu^F$, mostre que pelo menos um deles prefere o seu match atual a estar com o outro.

**(c)** Execute agora **DA com trabalhadores propondo**, $\mu^T$. Compare com $\mu^F$.

**(d)** Knuth (1976) — também em Roth-Sotomayor (1990, *Two-Sided Matching*, Cambridge UP) — provou: $\mu^F$ é o matching estável **firm-optimal** (todas as firmas fracamente preferem $\mu^F$ a qualquer outro estável) e simultaneamente **worker-pessimal**. Em uma frase, baseado nos seus matchings encontrados, **comprove ou refute** a afirmação para este exemplo específico.

---

### Q19 (🟡 média) — V/F com justificativa: Roth 1982 e estratégia em DA

Julgue **V** ou **F** e **justifique em 2–3 linhas** (com contraexemplo se F, esboço se V):

> *"No mecanismo Deferred Acceptance com **firmas propondo**, é estratégia dominante para cada **firma** reportar suas preferências verdadeiras. Roth (1982, *Mathematics of Operations Research* 7(4): 617–628; DOI: 10.1287/moor.7.4.617) provou esse resultado e mostrou ainda que **trabalhadores também** têm estratégia dominante de reportar verdade no mesmo mecanismo, **garantindo strategy-proofness completa em ambos os lados**."*

---

### Q20 (🔴🔴 desafio) — Prova: DA é M-ótimo (proponente-ótimo)

**Prove**, com argumento por indução / contradição, o **Lema de Otimização do Proponente** (Gale-Shapley 1962):

> *"No algoritmo DA com lado $M$ propondo (e lado $W$ aceitando/rejeitando), o matching estável resultante $\mu^M$ é tal que **todo $m \in M$ recebe seu match favorito entre todos os matchings estáveis**: para qualquer outro matching estável $\nu$ e qualquer $m \in M$, $\mu^M(m) \succeq_m \nu(m)$."*

Estrutura sugerida:

**(a)** **Setup.** Fixe um matching estável arbitrário $\nu$. Defina, para cada $m \in M$, "$w$ é alcançável por $m$" se existe matching estável $\nu'$ com $\nu'(m) = w$.

**(b)** **Indução sobre rodadas do DA.** Mostre que se $w$ rejeita $m$ na rodada $k$ do DA (porque $w$ recebeu proposta melhor de algum $m'$), então **$w$ não é alcançável por $m$ em nenhum matching estável**. Argumento por contradição: suponha que $w$ é alcançável por $m$ em algum estável $\nu$; derive um par bloqueador usando $m'$.

**(c)** **Conclusão.** Conclua que ao final do DA, cada $m$ está matched com a melhor mulher $w$ que **alguma vez** poderia ter sido sua sob estabilidade — i.e., com seu match favorito entre todos os matchings estáveis. Demonstração de ~12–15 linhas.

**(d)** **Reflexão pedagógica.** Em ~3 linhas, comente: o **dual** desse lema diz que DA com $M$ propondo é simultaneamente $W$-pessimal. Como isso explica por que mercados de matching (NRMP de medicina nos EUA até 1998, escolas de NY pós-2003) historicamente alteraram **quem propõe** ao invés de mudar o algoritmo? Cite a referência canônica: Roth-Peranson (1999, *AER* 89(4): 748–780; DOI: 10.1257/aer.89.4.748) e Abdulkadiroğlu-Pathak-Roth (2005, *AER P&P* 95(2): 364–367; DOI: 10.1257/000282805774670167).

---

## Apêndice — Como usar este simulado

1. **Tente cada questão com lápis e papel** antes de abrir `gabarito-simulado-af-parte-B.md`. As questões aqui foram calibradas para serem **distintas** dos exercícios avaliativos das aulas — refazer-os antes não substitui esta lista.

2. **Onde travar**, anote a dúvida específica (não "não sei", mas "não consigo verificar single-crossing em (c)") e leve à pré-monitoria 5 (sáb 20/06) com o Alberto.

3. **Tempo-alvo realista.** ~2h30 em casa de tentativa séria, distribuído em 2-3 sessões. A AF presencial cobre subconjunto similar em 3h **com A4 de consulta**.

4. **Pesos de aula na AF.** Aulas 6-9 valem ~30% do total (10% Aula 6, 8% Aula 7, 7% Aula 8, 5% Aula 9 — aproximadamente). Esta Parte B prepara essa fatia.

5. **Calibre.** 5/20 numéricos ($Q1, Q3, Q6, Q8, Q14$ parcialmente, $Q16, Q18$); 4/20 manipulação literal ($Q3$ parcial, $Q12, Q14, Q17$); 3/20 V/F ($Q2, Q7, Q13, Q19$ — na verdade 4/20); 5/20 provas curtas ($Q4, Q9, Q15, Q20$, $Q17$ parcial); 2/20 abertas-discursivas ($Q5, Q10$).
