# Simulado AF — Parte A (Aulas 1-5)

> **Status.** Subset focado em **Aulas 1-5** (Preferências/Utilidade · UMP/EMP/Dualidade · Slutsky/Elasticidades · EG Trocas e Produção · Arrow-Debreu I) do simulado completo (`simulado-af.md`). Pensado para ser feito num bloco só (~3h em casa, sem cronometrar) cobrindo o **eixo central da AF** (40% Aulas 1–3 + 30% Aulas 4–6). Parte B (Aulas 6–9) em arquivo separado.
>
> **Composição.** 25 questões = **5 aulas × (1 🟢 + 3 🟡 + 1 🔴)**. Tipos misturados: ~7 numéricos + ~5 manipulação literal + ~5 V/F com justificativa + ~5 provas curtas + ~3 abertas-discursivas.
>
> **Tempo-alvo.** 3h em casa. Não cronometre. Use para fechar lacunas.
>
> **Como usar.** Tente cada questão com lápis e papel **antes** de abrir o gabarito (`gabarito-simulado-af-parte-A.md`). Onde travar, anote a dúvida e leve para a Pré-Monitoria 5 (sáb 20/06 com Alberto).
>
> **Calibre.** Maioria N&S 12e (🟡); minoria estratégica J-R 3e (🔴). Notação canônica: $\succeq$ (não `\succsim`), $\text{TMS}$ em módulo, vírgula em decimais via `\{,\}`, expoentes CES na forma canônica $(\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}$.

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

**(c)** Suponha que restringimos $\succeq^*$ a $X^Q = \mathbb{Q}^2_+$. Argumente: $\succeq^*$ admite representação numérica em $X^Q$? E continua descontínua na topologia induzida em $X^Q$? Esclareça por que essas duas perguntas têm respostas distintas.

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
