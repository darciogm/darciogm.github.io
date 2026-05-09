# Gabarito — Simulado da Avaliação Final · MPE Microeconomia I 2026/32

> **Companion** de `simulado-af.md`. Resolução **passo-a-passo comentada** das 45 questões.
>
> **Formato por questão:** (1) Setup, (2) Derivação algébrica passo-a-passo, (3) Resposta destacada, (4) Armadilha comum + interpretação econômica + conexão cross-aula.
>
> **Como usar.** Tente cada questão sozinho primeiro. Use o gabarito **somente após tentativa**, para fechar lacunas. Se errar, leia a "armadilha" — quase sempre é o vetor pelo qual o aluno típico cai. Se acertar, leia a "interpretação econômica" — confirma se você acertou pelo motivo certo, não por sorte.
>
> **Convenção canônica.** `\succeq` (preferência fraca); $\text{TMS}$ em módulo $|U_x/U_y|$; vírgula em decimais com `\{,\}`; CES canônico $u = (\sum_i \alpha_i x_i^\rho)^{1/\rho}$, $\sigma = 1/(1-\rho)$.

---

# Parte A — Gabarito Aulas 1–5

## Aula 1 — Q1 (🟢) — TMS em CES, comparação com CD

**Resolução.**

1. **Setup.** $u_\rho(x_1, x_2) = (\tfrac12 x_1^\rho + \tfrac12 x_2^\rho)^{1/\rho}$. Para CES: $\text{TMS}_{12} = (\alpha/(1-\alpha))(x_2/x_1)^{1-\rho}$.

2. **Derivação.** Com $\alpha = 1/2$, $1-\alpha = 1/2$, $\rho = -1$, $1-\rho = 2$. Em $(1, 4)$: $\text{TMS} = 1\cdot (4/1)^2 = 16$. Para $\rho \to 0$ (CD com $\alpha = 1/2$): $\text{TMS} = (x_2/x_1)^1 = 4$. Elasticidade $\sigma = 1/(1 - (-1)) = 1/2$ → **substitutos imperfeitos** (entre Leontief $\sigma=0$ e CD $\sigma=1$).

3. **Resposta.** **(a)** $\text{TMS}_{(1,4)} = 16$ no regime $\rho = -1$. **(b)** $\sigma = 1/2$, regime de **substitutos imperfeitos** (mais complementar que CD). **(c)** $\lim_{\rho \to 0} \text{TMS}_{(1,4)} = 4$. **TMS cai** quando saímos de $\rho = -1$ para $\rho = 0$ porque com mais substituibilidade ($\sigma$ subindo de $1/2$ para $1$) o consumidor exige menos compensação para ceder $x_2$.

4. **Armadilha + cross-aula.** Erro clássico: usar $\sigma = \rho$ em vez de $\sigma = 1/(1-\rho)$ — gera $\sigma = -1$, sem sentido. Outra: confundir o sinal do expoente $1-\rho$ na fórmula da TMS — se você esquecer $1-\rho$, perde a informação de regime. Cross: **Aula 2** vai usar $\sigma$ na fórmula fechada da Marshalliana e parcela CES; **Aula 3** retoma com $\varepsilon^c_{ii} = -(1-s_i)\sigma$. Quem decora $(\alpha/(1-\alpha))(x_2/x_1)^{1-\rho}$ aqui colhe juros depois.

---

## Aula 1 — Q2 (🟡) — V/F: quasilinear, EC e CV

**Resolução.**

1. **Setup.** $u(x_1, x_2) = v(x_1) + x_2$. UMP no interior dá $v'(x_1^*) = p_1/p_2$ com $p_2 = 1$ → $x_1^M(p_1)$ não depende de $m$. Logo efeito-renda zero no bem 1, mas só no **interior**.

2. **Derivação.** Em ótimo interior, $\partial x_1^M/\partial m = 0$ e equação de Slutsky dá $\partial x_1^M/\partial p_1 = \partial h_1/\partial p_1$ — Marshalliana = Hicksiana. Logo $\Delta\text{EC}_1 = \text{CV}_1 = \text{EV}_1$ exatamente. **Mas** se $m$ é tão baixo que $x_2^* = 0$ (canto), efeito-renda no bem 1 reaparece: $x_1^M = m/p_1$, e a equivalência quebra.

3. **Resposta.** **F.** A equivalência EC = CV = EV é exata **somente em ótimo interior** ($x_2^* > 0$, ou seja, $m \geq p_1\cdot v'^{-1}(p_1)\cdot 1$ em formato genérico; em $u = 2\sqrt{x_1} + x_2$ com $p = (1,1)$, exige $m \geq 1$). Contraexemplo: $u = 2\sqrt{x_1} + x_2$, $p = (1,1)$, $m = 0{,}5$. Solução de canto $x_1^* = 0{,}5$, $x_2^* = 0$. Aumento de renda vai todo para $x_1$, efeito-renda positivo.

4. **Armadilha + cross-aula.** A propriedade "QL → EC = CV = EV" é frequentemente enunciada **sem ressalva de interioridade** (livro-texto mediano). O aluno memoriza incompleto. Cross: **Aula 3** vai formalizar Slutsky e mostrar a precisão de Willig (1976) sobre quando EC aproxima CV em demanda **não**-QL; aqui o ponto é que QL é o caso onde aproximação vira identidade.

---

## Aula 1 — Q3 (🟡) — Transformação ordinal e TMS

**Resolução.**

1. **Setup.** $v = f \circ u$, $u_1, u_2 > 0$. Regra da cadeia: $v_i = f'(u)\cdot u_i$.

2. **Derivação.** **(a)** $\text{TMS}^v = v_1/v_2 = (f'(u)\cdot u_1)/(f'(u)\cdot u_2) = u_1/u_2 = \text{TMS}^u$, **desde que** $f'(u) \neq 0$. Se $f'(u) > 0$ globalmente, igualdade vale em todo ponto interior. Se $f'(u_0) = 0$ em algum $u_0$, então $v_i = 0$ ali e $\text{TMS}^v$ fica $0/0$ — indefinida. **(b)** Exemplo: $f(u) = (u-1)^3$ em $\mathbb{R}$. É estritamente crescente (a função cúbica deslocada é injetiva e crescente), com $f'(u) = 3(u-1)^2 \geq 0$ e $f'(1) = 0$. Em pontos onde $u(x) = 1$, $\nabla v(x) = f'(u(x))\nabla u(x) = 0$ e portanto $\text{TMS}^v$ fica $0/0$ — indefinida. **(c)** Não viola a invariância "abstrata" (ordens das curvas de indiferença batem, pois $f$ é estritamente crescente), mas viola a fórmula diferencial (TMS via gradientes) — a propriedade de que **TMS é invariante via $\nabla v / \nabla u$** assume $f$ estritamente crescente E $C^1$ com $f' > 0$.

3. **Resposta.** **(a)** $\text{TMS}^v = \text{TMS}^u$ sse $f' > 0$. **(b)** $f(u) = (u-1)^3$ no domínio onde $u$ pode atingir 1; TMS vira indefinida ali. **(c)** A propriedade ordinal sobrevive (curvas de indiferença coincidem); a propriedade analítica via $\nabla v$ falha onde $f' = 0$. São propriedades de níveis diferentes.

4. **Armadilha + cross-aula.** O aluno comum acha que "estritamente crescente" equivale a "$f' > 0$ em todo ponto". Falso: $f(u) = u^3$ é estritamente crescente em $\mathbb{R}$ mas $f'(0) = 0$. Cross: **Aulas 2-5** sempre passam de $u$ para $\ln u$ ou $u^k$ por conveniência — o pré-requisito $f' > 0$ é sempre silencioso e válido para essas escolhas, mas o aluno deve saber por que.

---

## Aula 1 — Q4 (🟡) — Convexidade $\Rightarrow$ TMS decrescente

**Resolução.**

1. **Setup.** $u$ $C^2$, estritamente quasicôncava, $u_i > 0$. Curva de indiferença $u(x_1, x_2(x_1)) = \bar u$ define $x_2(x_1)$. Quero $d\,\text{TMS}/dx_1 < 0$.

2. **Derivação.** De $du = u_1\, dx_1 + u_2\, dx_2 = 0$: $dx_2/dx_1 = -u_1/u_2 = -\text{TMS}$. Definindo $T(x_1) := u_1(x_1, x_2(x_1))/u_2(x_1, x_2(x_1))$:
$$
\frac{dT}{dx_1} = \frac{u_2(u_{11} + u_{12}\frac{dx_2}{dx_1}) - u_1(u_{21} + u_{22}\frac{dx_2}{dx_1})}{u_2^2}.
$$
Substituindo $dx_2/dx_1 = -u_1/u_2$:
$$
\frac{dT}{dx_1} = \frac{u_2^2\, u_{11} - 2\, u_1 u_2\, u_{12} + u_1^2\, u_{22}}{u_2^3}.
$$
O numerador é $-|H_b|/u_2^0$ onde $|H_b|$ é o determinante do **Hessiano bordado** em duas variáveis com restrição linear. Quasiconcavidade estrita $\Leftrightarrow$ $|H_b| > 0$, ou seja, $u_2^2 u_{11} - 2 u_1 u_2 u_{12} + u_1^2 u_{22} < 0$. Logo $dT/dx_1 < 0$ (denominador $u_2^3 > 0$ pela hipótese $u_2 > 0$).

3. **Resposta.** $\frac{d\,\text{TMS}}{dx_1} = \frac{u_2^2 u_{11} - 2 u_1 u_2 u_{12} + u_1^2 u_{22}}{u_2^3} < 0$ pela quasiconcavidade estrita (Hessiano bordado). $\square$

4. **Armadilha + cross-aula.** Erro frequente: confundir **concavidade** (assina $u_{11}, u_{22} < 0$) com **quasiconcavidade** (assina o Hessiano bordado, mais fraco). $u = x_1^{1/2}x_2^{1/2}$ não é côncava (Hessiano não-semidefinido neg) mas é estritamente quasicôncava — e tem TMS decrescente. Cross: **Aula 2** UMP precisa de quasiconcavidade para CPO $\text{TMS} = p_1/p_2$ entregar máximo (e não sela). **Aula 6** existência de equilíbrio AD usa convexidade das preferências como peça-chave de Kakutani.

---

## Aula 1 — Q5 (🔴) — Lex com bem composto

**Resolução.**

1. **Setup.** $\succeq^*$ ordena por $\phi(x) = x_1+x_2$ primeiro, depois desempata por $x_1$. Argumento de Debreu (1954): se $u: \mathbb{R}^2_+ \to \mathbb{R}$ representasse, intervalos disjuntos não-vazios de $\mathbb{R}$ seriam parametrizados por um contínuo, contradizendo $|\mathbb{Q}| < |\mathbb{R}|$.

2. **Derivação.** **(a)** Completude: dados $x, y$, ou $\phi(x) \gtrless \phi(y)$ (decide), ou $\phi(x) = \phi(y)$ e aí $x_1 \gtrless y_1$ (decide); empate só se $x = y$. Transitividade: se $x \succeq^* y$ e $y \succeq^* z$, faça os casos por $\phi$: se $\phi(x) > \phi(y)$ ou $\phi(y) > \phi(z)$, então $\phi(x) \geq \phi(z)$ pelos casos transitivos de $>$ e $\geq$; se ambos com $\phi$ igual, desempate por $x_1$ é transitivo em $\geq$. Monotonicidade forte: $x \geq y$, $x \neq y$ → $\phi(x) > \phi(y)$ (estrito) → $x \succ^* y$.

**(b)** Argumento de Debreu por cardinalidade. Suponha $u: \mathbb{R}^2_+ \to \mathbb{R}$ representando $\succeq^*$. Para cada $c \geq 0$, considere o segmento de nível $L_c = \{(x_1, c-x_1): x_1 \in [0, c]\}$. Em $L_c$, o desempate por $x_1$ produz uma ordem estrita: para $x_1 < x_1'$ em $[0,c]$, $(x_1, c-x_1) \prec^* (x_1', c-x_1')$ porque $\phi$ é igual mas $x_1 < x_1'$. Por monotonicidade do desempate: $u(\cdot, c-\cdot)$ é **estritamente crescente** em $x_1$ ao longo de $L_c$. Como qualquer ponto em $L_{c'}$ com $c' > c$ é estritamente preferido a qualquer ponto em $L_c$ (porque $\phi$ é maior), os intervalos imagem $I_c := u(L_c) \subset \mathbb{R}$ são **disjuntos** e ordenados conforme $c$. Cada $I_c$ é não-degenerado (contém pontos com $x_1 = 0$ e $x_1 = c$, que são distintos via desempate quando $c > 0$). Pegue um racional $q_c \in I_c$ para cada $c > 0$: a aplicação $c \mapsto q_c$ é injeção $\mathbb{R}_{++} \hookrightarrow \mathbb{Q}$, contradizendo $|\mathbb{R}| > |\mathbb{Q}|$. Logo, $\succeq^*$ não admite representação numérica em $\mathbb{R}^2_+$.

**(c)** Em $\mathbb{Q}^2_+$ (domínio enumerável), o argumento de cardinalidade da parte (b) **não se aplica** — todo conjunto enumerável admite injeção em $\mathbb{Q}$, então existe $u: \mathbb{Q}^2_+ \to \mathbb{Q}$ representando $\succeq^*$ restrita. Construção explícita: enumere $\mathbb{Q}^2_+ = \{q^{(1)}, q^{(2)}, \ldots\}$ e defina $u$ recursivamente preservando a ordem. **Continuidade**, porém, falha mesmo em $\mathbb{Q}^2_+$ pela topologia induzida: a sequência $(c - 1/n, 1/n) \in \mathbb{Q}^2_+$ converge a $(c, 0) \in \mathbb{Q}^2_+$ (para $c \in \mathbb{Q}_{++}$), com $\phi$ constante $= c$ ao longo da sequência e no limite, mas $x_1 = c - 1/n < c$ na sequência e $x_1 = c$ no limite — então cada termo é $\prec^* (c, 0)$ e a preferência "salta". Resumindo: **representabilidade é questão de cardinalidade** (resolve em $\mathbb{Q}^2_+$), **continuidade é questão topológica** (falha mesmo em $\mathbb{Q}^2_+$ porque a topologia induzida ainda tem sequências convergentes à fronteira do segmento de nível).

**(d)** Sem representação por $u$ contínua, a UMP $\max_x u(x)$ s.a. $p\cdot x \leq m$ pode não atingir máximo (Berge requer continuidade) e a teoria de demanda padrão fica indefinida. EG (Aulas 4–6) **sempre assume** continuidade explicitamente exatamente para excluir lex — Debreu (1954) é o filtro silencioso que garante existência de utilidade contínua e, com isso, UMP bem-posta + continuidade da demanda + aplicação de Berge/Kakutani para existência de equilíbrio.

3. **Resposta.** **(a)** Os 3 axiomas valem. **(b)** Não-representável por argumento de cardinalidade (Debreu). **(c)** Em $\mathbb{Q}^2_+$: representável (cardinalidade), descontínua (topologia). **(d)** EG exclui lex de partida via hipótese de continuidade; na prática, todo modelo aplicado de EG tem $u$ contínua por construção.

4. **Armadilha + cross-aula.** Aluno comum confunde "viola continuidade" com "não tem representação". Lex viola continuidade **e** não tem representação, mas as razões são lógicamente independentes — em $\mathbb{Q}^2_+$ ainda viola continuidade, mas tem representação. Cross: **Aula 6** usa continuidade explicitamente em Brouwer/Kakutani; lex está fora do mapa por construção. Esse exercício é o teste de fogo do aluno que entendeu a hierarquia ordem→cardinalidade→topologia.

---

## Aula 2 — Q1 (🟢) — UMP CES com $\sigma = 2$

**Resolução.**

1. **Setup.** CES $\alpha = 1/3$, $\rho = 1/2$, $\sigma = 1/(1-1/2) = 2$. Pesos: $\alpha_1 = 1/3$, $\alpha_2 = 2/3$. $p = (1, 2)$, $m = 60$.

2. **Derivação.** Numerador de $x_1^M$: $\alpha_1^\sigma p_1^{-\sigma} = (1/3)^2\cdot 1^{-2} = 1/9$. Denominador (que é $\sum_j \alpha_j^\sigma p_j^{1-\sigma}$): $(1/3)^2\cdot 1^{-1} + (2/3)^2\cdot 2^{-1} = 1/9 + (4/9)(1/2) = 1/9 + 2/9 = 3/9 = 1/3$. Logo $x_1^M = (1/9)/(1/3)\cdot 60 = (1/3)\cdot 60 = 20$. Análogo para $x_2$: numerador $(2/3)^2\cdot 2^{-2} = (4/9)(1/4) = 1/9$. $x_2^M = (1/9)/(1/3)\cdot 60 = 20$. **Cheque Walras**: $1\cdot 20 + 2\cdot 20 = 60$. ✓

3. **Resposta.** $x_1^M = 20$, $x_2^M = 20$. $s_1 = 1\cdot 20/60 = 1/3$. $s_2 = 2\cdot 20/60 = 2/3$. $s_1 + s_2 = 1$. ✓ Sobre $\sigma > 1$: como o consumidor consegue substituir entre os bens facilmente, alta de $p_1$ relativo a $p_2$ não só desloca quantidade contra bem 1 — desloca **mais que proporcionalmente**, fazendo a parcela $s_1 = p_1 x_1^M/m$ cair (ganho de quantidade compensa subida de preço com folga apenas para $\sigma < 1$).

4. **Armadilha + cross-aula.** Confundir o expoente do $p$ no numerador ($-\sigma$ é o termo de quantidade na Marshalliana, $1-\sigma$ é o termo de gasto na fórmula de parcela). A fórmula da Marshalliana CES tem $p_i^{-\sigma}$ no numerador da quantidade; a parcela tem $p_i^{1-\sigma}$ porque é $p_i\cdot x_i$. Cross: **Aula 3** elasticidade de parcela $\partial s_i/\partial \ln p_i = (\sigma-1)(s_i - 1)$; com $\sigma > 1$, sinal **negativo** quando $s_i < 1$ — confirmando o argumento qualitativo de (c).

---

## Aula 2 — Q2 (🟡) — Stone-Geary indireta → Marshalliana

**Resolução.**

1. **Setup.** $v = (m - \sum_k p_k\gamma_k)/\prod_k p_k^{\beta_k}$. Roy: $x_i^M = -(\partial v/\partial p_i)/(\partial v/\partial m)$.

2. **Derivação.** Denote $D = \prod_k p_k^{\beta_k}$ e $M^* = m - \sum_k p_k\gamma_k$. **(a)** $\partial v/\partial m = 1/D$. Para $\partial v/\partial p_1$: regra do quociente. Numerador deriva $-\gamma_1$. Denominador deriva $\beta_1\, p_1^{\beta_1 - 1}\prod_{k\neq 1}p_k^{\beta_k} = \beta_1\, D/p_1$. Logo
$$
\frac{\partial v}{\partial p_1} = \frac{-\gamma_1\cdot D - M^*\cdot \beta_1\, D/p_1}{D^2} = \frac{-\gamma_1 - \beta_1 M^*/p_1}{D}.
$$
Roy: $x_1^M = -\frac{(-\gamma_1 - \beta_1 M^*/p_1)/D}{1/D} = \gamma_1 + \beta_1\, M^*/p_1$. **(b)** Forma primal: **Stone-Geary** (LES — Linear Expenditure System), $u(x) = \prod_i (x_i - \gamma_i)^{\beta_i}$, com $\gamma_i$ interpretados como subsistência mínima. **(c)** $\partial v/\partial m = 1/D > 0$ pois $D > 0$ (preços positivos, expoentes finitos). ✓

3. **Resposta.** **(a)** $x_1^M = \gamma_1 + \beta_1(m - \sum_k p_k\gamma_k)/p_1$. **(b)** Stone-Geary / LES. **(c)** Sim, $\partial v/\partial m = 1/\prod_k p_k^{\beta_k} > 0$.

4. **Armadilha + cross-aula.** Erro #1: aplicar Roy esquecendo o **sinal negativo** ($x_i = -v_{p_i}/v_m$). Erro #2: derivar o denominador como produto e esquecer $\beta_1\, p_1^{\beta_1 - 1}$. Cross: **Aula 3** elasticidades-renda em LES não são unitárias (ao contrário de CD): $\eta_i = \beta_i\, m/(p_i\, x_i^M)\cdot (1/(\partial p_k\gamma_k/\partial m))$ — depende de $\gamma_i$ e da "renda supranumerária" $M^*$. É o motivo de LES ser usado em Brasil para POF: parcelas variáveis com renda capturam Engel não-linear.

---

## Aula 2 — Q3 (🟡) — Hicksiana = Marshalliana em quasilinear

**Resolução.**

1. **Setup.** $u = v(x_1) + x_2$, $v$ estr. côncava, $v' > 0$, $p_2 = 1$, ótimo interior.

2. **Derivação.** **UMP**: $\max v(x_1) + x_2$ s.a. $p_1 x_1 + x_2 = m$. CPO: $v'(x_1) = p_1/1 = p_1$. Logo $x_1^M(p_1, m) = (v')^{-1}(p_1)$ — não depende de $m$ no interior (a renda é absorvida totalmente por $x_2 = m - p_1 x_1^M$). **EMP**: $\min p_1 x_1 + x_2$ s.a. $v(x_1) + x_2 = \bar u$. Substitua $x_2 = \bar u - v(x_1)$: minimize $p_1 x_1 + \bar u - v(x_1)$. CPO: $p_1 - v'(x_1) = 0$, ou seja, $v'(x_1) = p_1$. Idêntica à CPO da UMP. Logo $h_1(p_1, \bar u) = (v')^{-1}(p_1)$ — não depende de $\bar u$. As duas demandas são a mesma função de $p_1$, $h_1 = x_1^M$. **Hipótese de interioridade** entra duas vezes: na UMP, garante $x_2 > 0$ (senão restrição binding em $x_2 = 0$ muda CPO); na EMP, garante $x_2 = \bar u - v(x_1) > 0$ (idem). $\square$

3. **Resposta.** Em ótimo interior, ambas demandas reduzem-se a $v'(x) = p_1$, mesma equação implícita. Logo $h_1(p_1, \bar u) = x_1^M(p_1, m) = (v')^{-1}(p_1)$.

4. **Armadilha + cross-aula.** O ponto sutil é que **o efeito-renda no bem 1 é zero apenas no interior**. Em canto ($x_2 = 0$), $x_1^M = m/p_1$ depende de $m$ e Slutsky não cancela. Cross: **Aula 3** mostra que $\Delta\text{EC}_1 = \text{CV}_1 = \text{EV}_1$ exatamente em QL — corolário direto desta prova. Toda economia pública aplicada (Pigou, externalidades — Aula 7) usa "área sob demanda" pressupondo QL.

---

## Aula 2 — Q4 (🟡) — V/F: propriedades de $v$ e $e$

**Resolução.**

**(a) V.** Se $u$ é homogênea de grau 1, então a UMP é resolvida por raio: dobrar $m$ dobra $x^*$. Então $x^M(p, \lambda m) = \lambda\, x^M(p, m)$, e $v(p, \lambda m) = u(\lambda x^M(p, m)) = \lambda\, u(x^M(p, m)) = \lambda\, v(p, m)$. Linearidade em $m$ fatoriza como $v(p, m) = m\cdot v(p, 1) = m\cdot \phi(p)$. Esboço de prova.

**(b) F.** A afirmação é **falsa**: $e(p, \bar u)$ é **côncava** em $p$, não convexa. Prova direta: $e(p, \bar u) = \min_x\{p\cdot x : u(x) \geq \bar u\}$ é o **ínfimo de uma família de funções lineares em $p$** (uma para cada $x$ factível). Ínfimo de funções lineares é côncavo. Equivalentemente, dados $p^a, p^b$ e $\lambda \in [0,1]$, com $p^c = \lambda p^a + (1-\lambda)p^b$ e $h^c$ minimizador em $p^c$: $e(p^c, \bar u) = p^c\cdot h^c = \lambda p^a\cdot h^c + (1-\lambda)p^b\cdot h^c \geq \lambda\, e(p^a, \bar u) + (1-\lambda)\, e(p^b, \bar u)$ (cada termo é $\geq$ porque $h^c$ não é necessariamente o minimizador em $p^a$ ou $p^b$). Logo $e$ é côncava. Intuição: o consumidor reotimiza Hicksiana sob cada preço, então custo a preços médios é **menor ou igual** à média dos custos extremos. (A função indireta $v(p,m)$ é o oposto — quasiconvexa em $p$.)

**(c) V.** $e(p, \bar u)$ homogênea grau 1 em $p$ $\Rightarrow$ Euler: $\sum_i p_i\, \partial e/\partial p_i = 1\cdot e$. Pelo Lema de Shephard, $\partial e/\partial p_i = h_i$. Logo $\sum_i p_i\, h_i = e$. ✓ (Identidade de Walras Hicksiana.)

**(d) F.** $\partial h_i/\partial p_i \leq 0$ é universal (semidefinida negativa de $S$). Mas $\partial x_i^M/\partial p_i$ pode ser **positivo** se efeito-renda dominar (bem Giffen). Contraexemplo clássico: Marshall (1895) — batata na Irlanda; Jensen-Miller (2008) [DOI 10.1257/aer.98.4.1553] — arroz em Hunan. A lei Marshalliana só vale para bens normais ou quase isso.

**Resposta.** (a) V; (b) **F** ($e$ é côncava em $p$, não convexa); (c) V; (d) F.

**Armadilha + cross-aula.** A pegadinha é (b) — "convexa" vs "côncava" é um dos erros mais clássicos de prova oral. Mnemônico: o consumidor reotimiza (substitui contra o caro), então custo cresce **menos que linearmente** em $p$ — côncavo. $v(p, m)$ é o oposto: convexa em $p$ (mais caro tudo, pior). Cross: **Aula 3** Slutsky usa simetria de $\partial^2 e/\partial p_i \partial p_j$ (Young) — só faz sentido se $e$ for pelo menos $C^2$ em $p$.

---

## Aula 2 — Q5 (🔴) — Função gasto CES + Shephard + simetria

**Resolução.**

1. **Setup.** EMP $\min p\cdot x$ s.a. $(\sum_i \alpha_i x_i^\rho)^{1/\rho} \geq \bar u$. Lagrangiano: $\mathcal{L} = p\cdot x - \mu[(\sum_i \alpha_i x_i^\rho)^{1/\rho} - \bar u]$.

2. **Derivação.** **(a)** CPO: $p_i = \mu\cdot (\sum_j \alpha_j x_j^\rho)^{1/\rho - 1}\cdot \alpha_i\, x_i^{\rho-1}$. Tomando razão $i, j$ (cancelando $\mu$ e o termo agregado comum): $p_i/p_j = (\alpha_i/\alpha_j)(x_i/x_j)^{\rho-1}$. Invertendo (com $\sigma = 1/(1-\rho)$, logo $1/(1-\rho) = \sigma$ e $-1/(\rho-1) = \sigma$): $x_i/x_j = (\alpha_i/\alpha_j)^\sigma (p_i/p_j)^{-\sigma}$.

Define o **índice de preços CES** $P(p) = \left(\sum_j \alpha_j^\sigma p_j^{1-\sigma}\right)^{1/(1-\sigma)}$. Faça $x_j = x_i \cdot (\alpha_j/\alpha_i)^\sigma (p_i/p_j)^{\sigma}$ e substitua na restrição $\sum_j \alpha_j x_j^\rho = \bar u^\rho$. Note $\rho(\sigma-1)/\sigma = -\rho/(1-\rho) \cdot (1-\rho)/(1-\rho) \cdot \sigma/\sigma$... mais direto: $x_j^\rho = x_i^\rho \cdot (\alpha_j/\alpha_i)^{\sigma\rho} (p_i/p_j)^{\sigma\rho}$. Como $\sigma\rho = \sigma - 1$ (porque $\sigma(1-\rho) = 1$ ⇒ $\sigma - \sigma\rho = 1$ ⇒ $\sigma\rho = \sigma - 1$):

$$
\sum_j \alpha_j x_j^\rho = x_i^\rho \alpha_i^{1-\sigma} p_i^{\sigma-1} \sum_j \alpha_j^\sigma p_j^{1-\sigma} = x_i^\rho \cdot \alpha_i^{1-\sigma} p_i^{\sigma-1} \cdot P^{1-\sigma} = \bar u^\rho.
$$

Isolando $x_i$ e usando $\rho = (\sigma-1)/\sigma$:

$$
h_i(p,\bar u) = \bar u \cdot \alpha_i^\sigma p_i^{-\sigma} \cdot P^\sigma.
$$

Custo total: $e(p,\bar u) = \sum_i p_i h_i = \bar u \cdot P^\sigma \cdot \sum_i \alpha_i^\sigma p_i^{1-\sigma} = \bar u \cdot P^\sigma \cdot P^{1-\sigma} = \bar u \cdot P$. Logo

$$
e(p,\bar u) = \bar u \cdot \left(\sum_i \alpha_i^\sigma p_i^{1-\sigma}\right)^{1/(1-\sigma)}.
$$

**(b) Shephard:** $h_i = \partial e/\partial p_i$. Derivando $e = \bar u \cdot P$ com $P = (\sum_j \alpha_j^\sigma p_j^{1-\sigma})^{1/(1-\sigma)}$: $\partial P/\partial p_i = \frac{1}{1-\sigma}\cdot P^\sigma \cdot (1-\sigma)\, \alpha_i^\sigma p_i^{-\sigma} = P^\sigma \alpha_i^\sigma p_i^{-\sigma}$. Logo $h_i = \bar u\, \alpha_i^\sigma p_i^{-\sigma} P^\sigma$. Confere com (a). ✓

**(c) Simetria + Euler.** Derivando $h_i$ em $p_j$ (com $j \neq i$):

$$
\frac{\partial h_i}{\partial p_j} = \bar u\, \alpha_i^\sigma p_i^{-\sigma} \cdot \sigma\, P^{\sigma-1}\cdot \frac{\partial P}{\partial p_j} = \bar u\, \alpha_i^\sigma p_i^{-\sigma}\cdot \sigma P^{\sigma-1}\cdot P^\sigma \alpha_j^\sigma p_j^{-\sigma} = \sigma\, \bar u\, \alpha_i^\sigma \alpha_j^\sigma p_i^{-\sigma} p_j^{-\sigma}\, P^{2\sigma-1}.
$$

A expressão é **simétrica em $(i,j)$** (todos os fatores aparecem com $i$ e $j$ trocáveis). Para o caso $j=i$: $\partial h_i/\partial p_i = \bar u\, \alpha_i^\sigma\,[-\sigma p_i^{-\sigma-1} P^\sigma + p_i^{-\sigma}\sigma P^{\sigma-1}\cdot P^\sigma \alpha_i^\sigma p_i^{-\sigma}] = \sigma h_i [-1/p_i + \alpha_i^\sigma p_i^{-\sigma}P^{\sigma-1}/(p_i^{-\sigma})\cdot P^{-\sigma}\cdot\ldots]$ — obtém-se $\partial h_i/\partial p_i = -\sigma(1-s_i^*)h_i/p_i \leq 0$ onde $s_i^* = \alpha_i^\sigma p_i^{1-\sigma}/P^{1-\sigma}$ é a parcela. Para Euler 0: $h_i$ é homogênea grau 0 em $p$ (verifique: dobrar todos $p_j$ multiplica $P^\sigma$ por $2^\sigma\cdot 2^{-\sigma} = 1$ no produto $p_i^{-\sigma}P^\sigma$). Por Euler, $\sum_j p_j(\partial h_i/\partial p_j) = 0\cdot h_i = 0$. ✓

**(d)** Em qualquer preferência regular: simetria vem de $S_{ij} = \partial^2 e/\partial p_i\partial p_j$ por Shephard, e $e \in C^2$ ⇒ Young (Schwarz). Homogeneidade grau 0 de $h$ vem direto de $e$ homogênea grau 1 em $p$ + Lema de Shephard ⇒ Euler aplicado a $h$.

3. **Resposta.** **(a)** $e(p,\bar u) = \bar u\cdot \left(\sum_i \alpha_i^\sigma p_i^{1-\sigma}\right)^{1/(1-\sigma)}$. **(b)** $h_i(p,\bar u) = \bar u\, \alpha_i^\sigma p_i^{-\sigma}\cdot P^\sigma$ com $P = (\sum_j \alpha_j^\sigma p_j^{1-\sigma})^{1/(1-\sigma)}$. **(c)** Simetria $\partial h_i/\partial p_j = \partial h_j/\partial p_i$ verificada por inspeção; Euler 0 segue de $h$ homogênea grau 0 em $p$. **(d)** Em qualquer preferência regular: $S = \nabla^2_p e$ + Young dão simetria; $e$ homogênea grau 1 em $p$ + Shephard dão $h$ homogênea grau 0, daí Euler.

4. **Armadilha + cross-aula.** Maior erro: errar o expoente final $1/(1-\sigma)$ — depende crucialmente de manipular $\sigma = 1/(1-\rho)$ direito ($1-\sigma = -\rho/(1-\rho)$). Cross: **Aula 3** elasticidade compensada $\varepsilon^c_{ii} = -(1-s_i)\sigma$ sai derivando $\ln h_i = \ln \bar u + \sigma \ln \alpha_i - \sigma \ln p_i + \sigma \ln P$ e $\partial \ln P/\partial \ln p_i = s_i$.

---

## Aula 3 — Q1 (🟢) — Restrições agregadas em CES homotética

**Resolução.**

1. **Setup.** CES com $\sigma = 2$, parcelas em $p = (1,1,1)$: $s = (0{,}5; 0{,}3; 0{,}2)$ (porque parcelas coincidem com $\alpha$ quando preços iguais). Em CES homotética, todas $\eta_i = 1$.

2. **Derivação.** **(a)** Engel: $\sum_i s_i\eta_i = 0{,}5\cdot 1 + 0{,}3\cdot 1 + 0{,}2\cdot 1 = 1$. ✓ **(b)** $\varepsilon^c_{11} = -(1 - 0{,}5)\cdot 2 = -1$. **(c)** Slutsky: $\varepsilon_{11} = \varepsilon^c_{11} - s_1\eta_1 = -1 - 0{,}5\cdot 1 = -1{,}5$. Compatível com lei da demanda (Marshalliana): $\varepsilon_{11} < 0$. ✓

3. **Resposta.** **(a)** $\sum s_i\eta_i = 1$. **(b)** $\varepsilon^c_{11} = -1$. **(c)** $\varepsilon_{11} = -1{,}5$, lei da demanda satisfeita.

4. **Armadilha + cross-aula.** Erro frequente: usar $\varepsilon^c_{ii} = -s_i \sigma$ (perde o $1-s_i$) ou $-\sigma$ (regime puro Allen). A fórmula correta para CES vem da derivada de $\ln h_i$ em $\ln p_i$, que carrega contribuição direta ($-\sigma$) e indireta via $\ln P$ ($+s_i\sigma$). Cross: **Aula 5** estende para mercados contingentes — mesma fórmula, com $p_s$ em vez de $p_i$ e probabilidades como pesos.

---

## Aula 3 — Q2 (🟡) — V/F: Slutsky e Giffen

**Resolução.**

**(a) V.** Slutsky: $\partial x_i^M/\partial p_i = \partial h_i/\partial p_i - x_i^M\cdot \partial x_i^M/\partial m$. $\partial h_i/\partial p_i \leq 0$ (sempre). Para $\partial x_i^M/\partial p_i > 0$, precisa $-x_i^M\cdot \partial x_i^M/\partial m > 0$, isto é, $\partial x_i^M/\partial m < 0$ — bem inferior. (Necessário **e suficiente** depende do tamanho do efeito-renda; necessário é o ponto.)

**(b) F.** Em CD, $\partial x_i^M/\partial p_j = 0$ para $j \neq i$ na demanda **Marshalliana** (parcelas constantes), mas isso não significa "não-substitutos nem não-complementos" — significa que **efeito-substituição cancela exatamente efeito-renda cruzado**. Em Hicksiana ($\partial h_i/\partial p_j > 0$), são substitutos líquidos. Marshalliana cancela por causa da homotetia, não por ausência de relação substancial.

**(c) V.** Hicksiana $\partial h_i/\partial p_j = \partial h_j/\partial p_i$ vale **sempre** (Young aplicado a $\partial^2 e/\partial p_i \partial p_j$, com $e \in C^2$). Marshalliana **falha em geral**: por Slutsky, $\partial x_i^M/\partial p_j = \partial h_i/\partial p_j - x_j^M\partial x_i^M/\partial m$. Trocar $i \leftrightarrow j$ dá $\partial h_j/\partial p_i - x_i^M\partial x_j^M/\partial m$. Como $\partial h_i/\partial p_j = \partial h_j/\partial p_i$, a diferença é $x_i^M\partial x_j^M/\partial m - x_j^M\partial x_i^M/\partial m$, que **só é zero** sob preferências homotéticas (em que $\partial x_i^M/\partial m = x_i^M/m$, anulando a diferença) ou outros casos degenerados. As duas afirmações da frase são verdadeiras, então a composta é **V**.

**(d) V.** Em QL interior, $\partial x_1^M/\partial m = 0$ ⇒ Slutsky cancela ⇒ Marsh = Hicks ⇒ $\Delta\text{EC} = \text{CV} = \text{EV}$ exatamente. Esboço dado na Q3 da Aula 2.

**Resposta.** (a) V; (b) F; (c) V; (d) V.

**Armadilha + cross-aula.** Em (b), o aluno comum confunde "demanda Marsh independente de $p_j$" com "bens não-relacionados". Não. Hicksiana mostra que são substitutos brutos (utilidade compensada → mais $p_j$ joga consumo para $i$). Cross: **Aula 5** AD o mesmo cancelamento aparece em CES com bens contingentes — agentes CRRA com mesma $\gamma$ têm "demanda de consumo idiossincrática" Marsh independente de $\pi_j$ outras (sob agregado livre de risco).

---

## Aula 3 — Q3 (🟡) — CV vs. EV em CES

**Resolução.**

1. **Setup.** CES $\alpha=1/2$, $\rho=-1$, $\sigma=1/2$, $m=24$. $p^0=(1,1) \to p^1=(4,1)$. Use $e(p,\bar u) = \bar u\cdot (\sum \alpha_i^\sigma p_i^{1-\sigma})^{1/(1-\sigma)}$.

2. **Derivação.** Fatores: $\alpha^\sigma = (1/2)^{1/2} = 1/\sqrt 2$. $1-\sigma = 1/2$. $1/(1-\sigma) = 2$. Então $e(p,\bar u) = \bar u\cdot ((1/\sqrt2)p_1^{1/2} + (1/\sqrt 2)p_2^{1/2})^2 = \bar u\cdot (1/2)(p_1^{1/2}+p_2^{1/2})^2$. Em $p^0=(1,1)$: $e(p^0,\bar u) = \bar u\cdot (1/2)(1+1)^2 = 2\bar u$. Identidade $e(p^0,\bar u^0) = m$: $2\bar u^0 = 24 \Rightarrow \bar u^0 = 12$. Em $p^1=(4,1)$: $e(p^1,\bar u) = \bar u\cdot (1/2)(2+1)^2 = (9/2)\bar u$. Identidade: $(9/2)\bar u^1 = 24 \Rightarrow \bar u^1 = 48/9 = 16/3 \approx 5{,}33$. **CV** $= e(p^1,\bar u^0) - m = (9/2)\cdot 12 - 24 = 54 - 24 = 30$. **EV** $= m - e(p^0,\bar u^1) = 24 - 2\cdot(16/3) = 24 - 32/3 = 40/3 \approx 13{,}33$.

3. **Resposta.** $\bar u^0 = 12$, $\bar u^1 = 16/3$. $\text{CV} = 30$, $\text{EV} = 40/3 \approx 13{,}33$. $\text{EV} < \text{CV}$ (pois $40/3 < 30$). ✓ Para alta de preço, $\text{EV} \leq \text{CV}$ é teorema (bens normais).

4. **Armadilha + cross-aula.** Erros: (i) usar $1/(1-\sigma)$ com sinal trocado ($\sigma > 1$ gera expoente negativo, mas aqui $\sigma = 1/2 < 1$, expoente $=2$ positivo); (ii) esquecer $\alpha^\sigma$ e usar só $\alpha$. Interpretação: CV mede o que precisaríamos compensar **após** mudança para voltar ao bem-estar inicial; EV mede o que dispensaríamos **antes** da mudança para ficar igual. Para alta de preço, CV é maior porque preços novos são "piores" — mais caro compensar. Cross: **Aula 7** cap-and-trade vs. Pigou usa CV/EV para medir incidência de instrumentos de externalidade.

---

## Aula 3 — Q4 (🟡) — Simetria de Slutsky

**Resolução.**

1. **Setup.** $S_{ij} = \partial h_i/\partial p_j$. Equação de Slutsky relaciona com Marshalliana.

2. **Derivação.** **(a)** $h_i(p, \bar u) = x_i^M(p, e(p, \bar u))$ (identidade dual). Derive em $p_j$: $\partial h_i/\partial p_j = \partial x_i^M/\partial p_j + (\partial x_i^M/\partial m)\cdot \partial e/\partial p_j = \partial x_i^M/\partial p_j + (\partial x_i^M/\partial m)\cdot h_j$. Em ponto onde $h_j = x_j^M$ (interior), $S_{ij} = \partial x_i^M/\partial p_j + x_j^M\cdot \partial x_i^M/\partial m$. ✓ **(b)** Lema de Shephard: $h_i = \partial e/\partial p_i$. Então $S_{ij} = \partial^2 e/\partial p_j\partial p_i$. Por Young (Schwarz): $\partial^2 e/\partial p_j\partial p_i = \partial^2 e/\partial p_i\partial p_j$. Logo $S_{ij} = S_{ji}$. ✓ **(c)** Hipóteses para falha empírica: (1) preferências não são quasilineares-em-renda no agregado (heterogeneidade entre decis vira falha de simetria); (2) má especificação funcional (e.g., demanda especificada como linear quando o verdadeiro DGP é log); (3) erro de medida nas parcelas $s_i$; (4) viés de agregação (Lewbel 1989) — agente representativo não existe.

3. **Resposta.** **(a)** $S_{ij} = \partial x_i^M/\partial p_j + x_j^M \partial x_i^M/\partial m$. **(b)** Simetria por $\partial^2 e/\partial p_i\partial p_j$ Young. **(c)** Heterogeneidade entre agentes / má especificação / viés de agregação.

4. **Armadilha + cross-aula.** Tentativa errada comum: derivar $S_{ij} = S_{ji}$ direto da Marshalliana sem dualizar. Falha — em geral $\partial x_i^M/\partial p_j \neq \partial x_j^M/\partial p_i$. A simetria **só vive em Hicksiana** (compensada), a magia é $e$ ser $C^2$. Cross: **Aula 4** o ponto do agente representativo é exatamente esse — quando vale, simetria de Slutsky no agregado é teste empírico de existência de tal agente.

---

## Aula 3 — Q5 (🔴) — Incidência tributária

**Resolução.**

1. **Setup.** 3 bens, parcelas $s = (0{,}10; 0{,}05; 0{,}85)$, elasticidades-renda $\eta$, Hicksianas dadas.

2. **Derivação.** **(a)** $s_1\varepsilon^c_{12} = 0{,}10\cdot 0{,}15 = 0{,}015$. $s_2\varepsilon^c_{21} = 0{,}05\cdot 0{,}30 = 0{,}015$. ✓ Igualdade reflete simetria de Slutsky em forma de elasticidade ($s_i\varepsilon^c_{ij}/\sigma$ é simétrico em $(i,j)$ — aqui sem $\sigma$ porque em parcela e elasticidade compensada cruzada).
**(b)** Slutsky em elasticidades: $\varepsilon_{ij} = \varepsilon^c_{ij} - s_j\eta_i$. $\varepsilon_{11} = -0{,}30 - 0{,}10\cdot 0{,}4 = -0{,}30 - 0{,}04 = -0{,}34$. $\varepsilon_{21} = +0{,}30 - 0{,}10\cdot 1{,}1 = 0{,}30 - 0{,}11 = 0{,}19$.
**(c)** $\Delta\ln x_1^M = \varepsilon_{11}\cdot 0{,}2 = -0{,}068$ → queda **6,8%** em consumo de combustível. $\Delta\ln x_2^M = \varepsilon_{21}\cdot 0{,}2 = 0{,}19\cdot 0{,}2 = 0{,}038$ → alta **3,8%** em transporte coletivo. Magnitude: efeito-substituição cruzado bruto significativo (transporte aumenta como reflexo do combustível mais caro).
**(d)** $\text{CV}/m \approx 0{,}10\cdot 0{,}2\cdot (1 + 0{,}5\cdot (-0{,}30)\cdot 0{,}2) = 0{,}02\cdot (1 - 0{,}03) = 0{,}02\cdot 0{,}97 = 0{,}0194 \approx 1{,}94\%$ da renda.
**(e)** Pobres têm $s_1$ maior (combustível pesa mais como % da renda). $\text{CV}/m$ escala com $s_1$ — incidência regressiva. EC 132/2023 cashback faz transferência inversa (pobres recebem proporcionalmente mais), neutralizando a regressividade na renda disponível pós-imposto.

3. **Resposta.** Simetria OK (0,015). $\varepsilon_{11} = -0{,}34$, $\varepsilon_{21} = +0{,}19$. Combustível cai 6,8%, transporte sobe 3,8%. CV/m ≈ 1,94%. Regressividade via $s_1$ heterogêneo; cashback compensa.

4. **Armadilha + cross-aula.** Erro #1: aplicar Slutsky em **nível** quando a fórmula em **elasticidade** é $\varepsilon_{ij} = \varepsilon^c_{ij} - s_j\eta_i$ (note: o $s_j$ é da **coluna** $j$, não da linha $i$; multiplica a elasticidade-renda da linha). Erro #2: arredondar para 2% e perder a magnitude de 1,94% (pequeno desconto pelo termo de 2ª ordem). Cross: **Aula 7** Pigou retoma incidência sob externalidade — esse exercício é a pré-AD para externalidade.

---

## Aula 4 — Q1 (🟢) — EC em troca pura assimétrica

**Resolução.**

1. **Setup.** $u^A = x_1^{1/4}x_2^{3/4}$, $u^B = x_1^{3/4}x_2^{1/4}$. $\omega^A = (4,0)$, $\omega^B = (0,4)$. $p_2 = 1$. Renda: $m^A = 4 p_1$, $m^B = 4$.

2. **Derivação.** Demandas CD: $x_1^A = (\alpha^A m^A)/p_1 = (1/4)\cdot 4 p_1/p_1 = 1$. $x_1^B = (3/4)\cdot 4/p_1 = 3/p_1$. **(b)** Mercado 1: $x_1^A + x_1^B = \omega_1 = 4$. $1 + 3/p_1 = 4 \Rightarrow 3/p_1 = 3 \Rightarrow p_1^* = 1$. **(c)** Em $p_1 = 1$: $x_1^A = 1$, $x_1^B = 3$. $x_2^A = (3/4)\cdot 4/1 = 3$. $x_2^B = (1/4)\cdot 4/1 = 1$. Verifique mercado 2: $x_2^A + x_2^B = 3+1 = 4 = \omega_2$. ✓

3. **Resposta.** $p_1^* = 1$. $x^{A*} = (1, 3)$, $x^{B*} = (3, 1)$.

4. **Armadilha + cross-aula.** Erro: usar $x_1^A = (1/4) m^A$ esquecendo dividir por $p_1$ — gera $x_1^A = p_1$ e equilíbrio errado. Cross: **Aula 5** AD substitui dotações por dotações contingentes mas a aritmética é a mesma — preços contingentes resolvem mercados estado por estado. Note assimetria de preferências (A gosta mais de $x_2$, B gosta mais de $x_1$) gera comércio mútuo apesar de dotações extremas.

---

## Aula 4 — Q2 (🟡) — Robinson Crusoe com $f$ côncava

**Resolução.**

1. **Setup.** $u(q,\ell) = \ln q + \ln \ell$, $q = L^{1/3}$, $\bar L = 8$. $p = 1$.

2. **Derivação.** **(a)** Planejador: $\max_L \ln(L^{1/3}) + \ln(8 - L) = (1/3)\ln L + \ln(8-L)$. CPO: $1/(3L) - 1/(8-L) = 0 \Rightarrow 8-L = 3L \Rightarrow L^* = 2$. Logo $q^* = 2^{1/3} \approx 1{,}26$. $\ell^* = 6$. **(b)** Salário: $w^* = p\cdot f'(L^*) = (1/3)L^{*-2/3} = (1/3)(2)^{-2/3} = 1/(3\cdot 2^{2/3}) \approx 0{,}210$. Lucro: $\pi^* = p\, q^* - w^* L^* = 2^{1/3} - (1/3)\cdot 2^{-2/3}\cdot 2 = 2^{1/3} - (2/3)\cdot 2^{-2/3}$. Note $(2/3)\cdot 2^{-2/3}\cdot 2 = (2/3)\cdot 2^{1-2/3} = (2/3)\cdot 2^{1/3}$. Logo $\pi^* = 2^{1/3} - (2/3)\cdot 2^{1/3} = (1/3)\cdot 2^{1/3} \approx 0{,}420$. **(c)** $\text{TMS}_{\ell, q} = u_\ell/u_q = (1/\ell)/(1/q) = q/\ell = 2^{1/3}/6$. $w^*/p = 1/(3\cdot 2^{2/3})$. Confirme: $q/\ell = 2^{1/3}/6$ vs. $1/(3\cdot 2^{2/3}) = 2^{-2/3}/3 = 1/(3\cdot 2^{2/3})$. Multiplicando $q/\ell$ por $2^{2/3}/2^{2/3}$: $q/\ell = 2^{1/3}\cdot 2^{2/3}/(6\cdot 2^{2/3}) = 2/(6\cdot 2^{2/3}) = 1/(3\cdot 2^{2/3})$. ✓ Igualdade. $\text{TMT}_{L,q} = f'(L^*) = (1/3)L^{-2/3} = 1/(3\cdot 2^{2/3})$ — mesma coisa. Os 3 valores coincidem.

3. **Resposta.** $L^* = 2$, $q^* = 2^{1/3}$, $\ell^* = 6$. $w^* = 1/(3\cdot 2^{2/3})$, $\pi^* = (1/3)\cdot 2^{1/3} \approx 0{,}420 > 0$. $\text{TMS}_{\ell q} = w^*/p = \text{TMT}$. **(d)** Coincidência planejador↔descentralizado é 1º TBE com produção: cada CPO descentralizada (consumidor: TMS = $w/p$; firma: TMT = $w/p$) ecoa a CPO do planejador, e tecnologia côncava + utilidade côncava garantem unicidade.

4. **Armadilha + cross-aula.** Erro #1 (frequente): calcular $\pi^*$ com sinal errado ou esquecer o $\bar L$ na restrição de tempo. Erro #2: assumir $\pi^* = 0$ (válido só com retornos constantes); aqui $f$ estritamente côncava → lucro positivo é renda da firma, redistribuída para o consumidor (proprietário). Cross: **Aulas 5-6** Robinson AD adiciona estados contingentes — a firma vira um vetor de produção contingente e o lucro depende do estado.

---

## Aula 4 — Q3 (🟡) — 1º TBE em troca pura via LNS

**Resolução.**

1. **Setup.** $(p^*, x^*)$ EC. LNS: $\forall x, \forall \varepsilon > 0, \exists y \in B_\varepsilon(x): y \succ x$. Quero: $x^*$ Pareto-eficiente.

2. **Derivação.** Por contradição: suponha $\tilde x = (\tilde x^i)$ viável ($\sum_i \tilde x^i = \sum_i \omega^i$) e Pareto-superior — $\tilde x^i \succeq^i x^{i*}$ para todo $i$, com $\succ^i$ estrito para algum $j$. **Passo 2.** Para $j$ (estrito): $\tilde x^j \succ^j x^{j*}$. Como $x^{j*}$ é solução da UMP em $(p^*, m^j)$ com $m^j = p^*\cdot \omega^j$, e $\tilde x^j \succ^j x^{j*}$, então $\tilde x^j \notin B(p^*, m^j)$, ou seja, $p^*\cdot \tilde x^j > p^*\cdot \omega^j$. **Passo 3.** Para $i \neq j$: $\tilde x^i \succeq^i x^{i*}$. Se $p^*\cdot \tilde x^i < p^*\cdot \omega^i = m^i$, podemos por LNS encontrar $y$ próximo a $\tilde x^i$ com $y \succ^i \tilde x^i \succeq^i x^{i*}$ e ainda $p^*\cdot y \leq m^i$ — contradiz $x^{i*}$ ser solução da UMP de $i$ (pois $y$ é factível e estritamente preferido). Logo $p^*\cdot \tilde x^i \geq p^*\cdot \omega^i$. **Passo 4.** Some sobre $i$: $\sum_i p^*\cdot \tilde x^i > \sum_i p^*\cdot \omega^i$ (estrito por causa de $j$). Mas viabilidade dá $\sum_i \tilde x^i = \sum_i \omega^i \Rightarrow \sum_i p^*\cdot \tilde x^i = \sum_i p^*\cdot \omega^i$. Contradição. $\square$

3. **Resposta.** Argumento canônico em 4 passos: contradição, "não-factível na UMP de $j$", LNS dá "não-barato na UMP de $i$", soma viola viabilidade.

4. **Armadilha + cross-aula.** O passo 3 é **o** uso de LNS — sem LNS, $\tilde x^i$ poderia ser estritamente mais barato e mesmo assim $\succeq x^{i*}$ (saciedade local); aí a soma não fecha. Monotonicidade estrita ($x' > x \Rightarrow x' \succ x$) implica LNS (basta perturbar para cima), então é suficiente; mas LNS é mais geral (admite preferências quase saciadas, e.g., bens com utilidade marginal limitada). Cross: **Aula 6** existência de equilíbrio precisa de LNS na fronteira do simplex de preços; **Aula 7** falha do 1º TBE em externalidade: LNS vale mas há "renda externa" (poluição) não-precificada.

---

## Aula 4 — Q4 (🟡) — V/F: TBE, Pareto, núcleo

**Resolução.**

**(a) F (parcial).** 1º TBE: V (toda alocação EC competitiva é Pareto, sob LNS). 2º TBE: a versão correta é "toda alocação Pareto pode ser **suportada** como EC após **redistribuição de dotações** (transferências lump-sum)" — não "toda alocação Pareto é EC de alguma economia" (essa formulação é vaga). Logo a frase composta é tecnicamente **F** pela imprecisão da segunda parte.

**(b) V.** Em $2 \times 2$ com convexidade estrita, núcleo = contract curve é teorema clássico (Edgeworth-Debreu-Scarf no caso $I = 2$). Para $I$ grande, núcleo encolhe à contract curve via Debreu-Scarf (teorema do núcleo). Em $I = 2$, núcleo = curva inteira de Pareto entre $\omega^A$ e $\omega^B$ que está dentro da "lente" (ambos preferem ao status quo).

**(c) F.** Para o **1º** TBE não é necessária convexidade dos $Y^j$ — basta que firmas maximizem lucro sob $p^*$ e consumidores maximizem utilidade sob $p^*$, e LNS. Convexidade dos $Y^j$ é necessária para **existência** do EC e para o **2º** TBE. Aluno que confunde 1º e 2º TBE marca V; o 1º TBE é o "fácil", precisa apenas de LNS.

**(d) V.** Robinson canônico com $f$ estritamente côncava: $\pi^* = p\, q^* - w^* L^* > 0$ porque $w^* L^*$ paga produto marginal × quantidade, mas $p\, q^*$ paga acima (curva côncava está acima da tangente em 0). Concretamente: $\pi = p\, f(L) - w L$, com $w = p\, f'(L^*)$, dá $\pi = p\, [f(L^*) - f'(L^*)L^*]$, e $f$ estr. côncava em $[0, L^*]$ com $f(0) = 0$ implica $f(L^*) > f'(L^*)L^*$ (corda fica acima da tangente em $L^*$). Confirma com Q2: $\pi^* = (1/3)\cdot 2^{1/3} \approx 0{,}420 > 0$.

**Resposta.** (a) F (imprecisão na 2ª parte); (b) V; (c) F; (d) V.

**Armadilha + cross-aula.** (a) é o teste de pegada precisa do 2º TBE — formulação correta requer transferências lump-sum. (c) é o teste hierárquico 1º vs 2º TBE. Cross: **Aula 6** existência precisa de convexidade dos $Y^j$ (corolário de Kakutani sobre demanda agregada).

---

## Aula 4 — Q5 (🔴) — Walras dimensional + retornos crescentes

**Resolução.**

1. **Setup.** $L = 4$, $I = 100$, $J = 50$. $\succeq^i$ contínuas, monot. estritas, conv. estritas; $Y^j$ convexo, fechado, contém $0$, livre disponibilidade.

2. **Derivação.** **(a)** Mercados: 4 (um por bem). Lei de Walras: se 3 mercados clearam, o 4º clear automaticamente (identidade contábil). Homogeneidade grau 0 do excesso de demanda em $p$: liberdade de normalização (e.g., $p_4 = 1$). Logo: 4 mercados − 1 (Walras) − 1 (normalização) = **2 equações independentes** + 1 vetor de preços com 4 − 1 = 3 graus de liberdade após normalização. Wait: 4 incógnitas $p_1,\ldots,p_4$ → 3 razões após $p_4=1$. 4 equações de market clearing → 3 independentes pela Walras. Sistema 3×3 — bem-posto. **Resposta: 3 equações independentes** em 3 incógnitas (ou de forma equivalente, $L - 1 = 3$).
**(b)** 4 hipóteses-chave (J-R §5.6): (i) **Continuidade** das preferências (para Berge, max é correspondência fechada); (ii) **Convexidade** das preferências e $Y^j$ (para que demanda/oferta seja convexa-valorada → Kakutani); (iii) **Não-saciação local** + monotonicidade (para Walras valer com igualdade); (iv) **Compacidade** dos conjuntos de orçamento (preço estritamente positivo + dotação limitada → $B(p)$ compacto, max atingido).
**(c)** Se uma firma tem $Y^j$ não-convexo (retornos crescentes): (i) **existência** falha em geral — a oferta agregada pode dar saltos (não-convexa-valorada), Kakutani não aplica. Pode existir EC, mas não é garantido. (ii) **2º TBE** falha — para sustentar uma alocação Pareto envolvendo a firma de retornos crescentes, o lucro da firma seria negativo a preços Pareto-suportadores (a firma quer produzir mais ou menos, dependendo da concavidade). Não há sistema de preços lineares que sustente operação ótima da firma em escala não-convexa.
**(d)** Regulação tarifária $p = $ custo médio é "second-best" porque: (i) a alocação ótima sob retornos crescentes envolve $p = $ custo marginal, mas isso gera $\pi < 0$ (custo marginal decrescente, custo médio acima de marginal); (ii) preço = custo médio cobre custos da firma sem subsídio, mas distorce consumo (subconsumo do bem de retornos crescentes vs. ótimo pleno).

3. **Resposta.** **(a)** 3 equações independentes (Walras + normalização). **(b)** Continuidade, convexidade, LNS/monotonicidade, compacidade. **(c)** Existência precária; 2º TBE falha. **(d)** $p = $ custo médio cobre custos sem subsídio mas distorce; $p = $ custo marginal seria first-best mas exige subsídio.

4. **Armadilha + cross-aula.** Erro #1: contar $L$ equações sem aplicar Walras → sobre-determinação. Erro #2: confundir "1º TBE precisa de LNS" com "existência precisa de convexidade" — são pré-requisitos distintos. Cross: **Aula 7** monopólio natural (rede elétrica, distribuição de água) é o exemplo aplicado: regulação tarifária + subsídio ou regulação por custo médio são as duas opções práticas, ambas second-best.

---

## Aula 5 — Q1 (🟢) — Seguro completo numérico

**Resolução.**

1. **Setup.** $\pi=(0{,}3; 0{,}7)$, $v_A=\ln$, $v_B=c$. $\omega^A=(50,80)$, $\omega^B=(50,20)$. $\bar\omega=(100,100)$.

2. **Derivação.** **(a)** $B$ neutro: $u^B(x) = \pi_1 x_1 + \pi_2 x_2$ — linear. CPO: $\pi_s$ proporcional a $p_s$. Logo $p_1^*/p_2^* = \pi_1/\pi_2 = 0{,}3/0{,}7 = 3/7$. **(b)** $A$ avesso, $v_A=\ln$. UMP: $\max \pi_1 \ln x_1^A + \pi_2 \ln x_2^A$ s.a. $p_1 x_1^A + p_2 x_2^A = m^A$. CPO: $\pi_s/x_s^A = \lambda p_s$ ⇒ $x_s^A = \pi_s/(\lambda p_s)$. Razão $1/2$: $x_1^A/x_2^A = (\pi_1/p_1)/(\pi_2/p_2) = (\pi_1/\pi_2)\cdot(p_2/p_1) = (3/7)\cdot(7/3) = 1$. Logo $x_1^A = x_2^A$. Renda: $m^A = (3/7)\cdot 50 + 1\cdot 80 = 150/7 + 80 = (150 + 560)/7 = 710/7 \approx 101{,}43$ — usei $p_2 = 1$ como numerário. Orçamento: $(p_1 + p_2) x^A = m^A \Rightarrow (3/7 + 1) x^A = 10/7\cdot x^A = 710/7 \Rightarrow x^A = 71$. **(c)** $x^{B*} = \bar\omega - x^{A*} = (100-71, 100-71) = (29, 29)$. **(d)** $x_1^A = x_2^A = 71$ — totalmente segurado. ✓ Papel do agente neutro: ele absorve todo o risco agregado a preços atuarialmente justos, deixando A com consumo determinístico.

3. **Resposta.** $p_1^*/p_2^* = 3/7$. $x^{A*} = (71, 71)$. $x^{B*} = (29, 29)$. ✓ A totalmente segurado; agente neutro fecha o mercado.

4. **Armadilha + cross-aula.** Erro #1: calcular renda de A com preços nominais sem normalização (esquecer $p_2 = 1$). Erro #2: assumir $x_1^A = x_2^A$ "porque é seguro" sem checar — a igualdade só vale quando $p_s/\pi_s$ é constante (o que B garante). Cross: **Aula 6** mercados incompletos quebram a possibilidade de seguro completo; este exercício é o benchmark para Q5 da Aula 6 (Hart-GP).

---

## Aula 5 — Q2 (🟡) — SDF sob CRRA

**Resolução.**

1. **Setup.** $L=1$, $S=2$, agente representativo CRRA $\gamma > 0$. $v(c) = c^{1-\gamma}/(1-\gamma)$, $v'(c) = c^{-\gamma}$.

2. **Derivação.** **(a)** Em equilíbrio com agente único: viabilidade $x^* = \bar\omega$. Não há ninguém "do outro lado" para trocar (agente é representativo). **(b)** Equação fundamental do SDF (Lucas): $p_s/p_{s'} = \pi_s v'(\bar\omega_s)/[\pi_{s'} v'(\bar\omega_{s'})]$. Com CRRA: $v'(c) = c^{-\gamma}$. Logo $p_1^*/p_2^* = (\pi_1/\pi_2)(\bar\omega_1/\bar\omega_2)^{-\gamma} = (\pi_1/\pi_2)(\bar\omega_2/\bar\omega_1)^\gamma$. **(c)** Se $\bar\omega_1 < \bar\omega_2$, então $\bar\omega_2/\bar\omega_1 > 1$, e $(\bar\omega_2/\bar\omega_1)^\gamma > 1$. Logo $p_1^*/p_2^* > \pi_1/\pi_2$. Interpretação: estado escasso (1) tem preço-Arrow proporcionalmente maior que sua probabilidade — **state-price premium**. Marginal valoriza mais consumo no estado de baixa dotação (CRRA: utilidade marginal decrescente).

3. **Resposta.** **(a)** $x^* = \bar\omega$ por viabilidade no agente representativo. **(b)** $p_1^*/p_2^* = (\pi_1/\pi_2)(\bar\omega_2/\bar\omega_1)^\gamma$. **(c)** Se $\bar\omega_1 < \bar\omega_2$, $p_1^*/p_2^* > \pi_1/\pi_2$ — premium para estado escasso.

4. **Armadilha + cross-aula.** Erro: trocar exponente — alguns escrevem $(\bar\omega_1/\bar\omega_2)^\gamma$ em vez de $(\bar\omega_2/\bar\omega_1)^\gamma$. Mnemônico: state-price premium é **maior** para estado escasso, então $p_1$ tem que ser **maior** quando $\bar\omega_1$ é **menor** — a razão $\bar\omega_2/\bar\omega_1 > 1$ tem que aparecer no numerador. Cross: **Aula 5-Q5** (Lucas) é o caso particular numérico desta fórmula com $\gamma=2$.

---

## Aula 5 — Q3 (🟡) — Agregado livre de risco $\Rightarrow$ preços $=$ probabilidades

**Resolução.**

1. **Setup.** $I$ agentes, Bernoullis idênticas $v$ estr. côncava, crenças idênticas $\pi$. $\bar\omega_s = \bar\omega$ constante.

2. **Derivação.** **(a)** CPO de cada $i$ em mercado AD: $\pi_s v'(x^i_s)/p_s = \lambda^i$ (constante na escolha de $i$). Razão estados $s, s'$: $\pi_s v'(x^i_s)/p_s = \pi_{s'} v'(x^i_{s'})/p_{s'}$, ou seja, $v'(x^i_s)/v'(x^i_{s'}) = (\pi_{s'}/\pi_s)\cdot(p_s/p_{s'})$. Como o lado direito é independente de $i$ (probabilidades comuns + preços comuns), $v'(x^i_s)/v'(x^i_{s'})$ tem o mesmo valor para todo $i$. Mas $v$ estritamente côncava ⇒ $v'$ estritamente decrescente ⇒ a razão $v'(a)/v'(b)$ determina unicamente a razão $a/b$. Conclusão: $x^i_s/x^i_{s'}$ é constante em $i$ — todos os agentes têm a mesma proporção entre estados.
Agora viabilidade: $\sum_i x^i_s = \bar\omega_s = \bar\omega$ constante em $s$. Para que a soma das proporções iguais dê constante em $s$, **cada $x^i_s$ tem que ser constante em $s$** (caso contrário, com mesma proporção, todos cresceriam ou cairiam juntos). Mais formalmente: defina $r_s = x^i_s/x^i_{s'}$ (mesmo para todo $i$). Soma: $\sum_i x^i_s = r_s\sum_i x^i_{s'} = r_s\cdot \bar\omega$. Mas isso tem que ser $\bar\omega$ também, então $r_s = 1$. Isto é, $x^i_s = x^i_{s'}$. Cada agente totalmente segurado. ✓
**(b)** Com $x^i_s$ constante em $s$, $v'(x^i_s)$ é constante em $s$. Da CPO: $p_s/\pi_s = v'(x^i_s)/\lambda^i$ — constante em $s$. Logo $p_s/p_{s'} = \pi_s/\pi_{s'}$. ✓

3. **Resposta.** **(a)** Razão de marginais comum entre agentes (CPO + idêntica $v$) + viabilidade (soma constante em $s$) ⇒ $x^i_s$ constante em $s$. **(b)** CPO com $v'$ constante ⇒ $p_s/\pi_s$ constante em $s$ ⇒ $p_s/p_{s'} = \pi_s/\pi_{s'}$.

4. **Armadilha + cross-aula.** Erro: pular do "razão de marginais é a mesma para todos" direto para "todos consomem igual entre estados" sem usar viabilidade. A viabilidade é o passo crítico — sem ela, pode-se ter heterogeneidade de níveis (rico vs. pobre) coexistindo com proporção comum, e o agregado não precisa ser constante. Cross: **Aula 6** mercado incompleto quebra "razão de marginais comum" — agentes idiossincraticamente expostos ao risco não-segurável → preços-Arrow não coincidem com probabilidades.

---

## Aula 5 — Q4 (🟡) — V/F: contingentes vs. datados

**Resolução.**

**(a) V.** O formalismo $\mathbb{R}^{LS}$ trata estados $s$ uniformemente, sem distinguir se $s$ é "tempo" (intertemporal sem incerteza) ou "estado da natureza" (incerteza pura) ou "$(t, \omega)$" misto. 1º TBE depende de LNS + competição, não da interpretação dos estados. Estrutura matemática idêntica.

**(b) F.** O 1º TBE com mercado completo AD vale **independente de homogeneidade de crenças** — basta que cada agente tenha sua própria $\pi^i$ e maximize $\sum_s \pi^i_s v^i(x^i_s)$. O argumento da Q3 acima exigiu crenças idênticas só para concluir "preços = probabilidades", não para o 1º TBE. Aluno confunde "condição extra para resultado específico" com "condição para o teorema central".

**(c) F.** Equivalência AD ↔ Radner sequencial vale sempre que o **span dos ativos** abrange $\mathbb{R}^S$, isto é, rank da matriz de payoffs $= S$. Pode-se ter $N > S$ ativos (redundância) e ainda ter mercado completo. "Exatamente $|S|$" é demasiado forte. Forma correta: **rank = $|S|$**, com $N \geq |S|$.

**(d) V.** Equação de Euler $u'(c_t) = \beta R\, \mathbb{E}_t u'(c_{t+1})$ é caso particular de $1 = \mathbb{E}_t[m_{t+1} R_{t+1}]$ com $R_{t+1} = R$ (livre de risco) e $m_{t+1} = \beta u'(c_{t+1})/u'(c_t)$. Sem incerteza ($|\Omega| = 1$), expectativa colapsa: $1 = \beta R\, u'(c_{t+1})/u'(c_t)$, ou seja, $u'(c_t) = \beta R u'(c_{t+1})$.

**Resposta.** (a) V; (b) F; (c) F; (d) V.

**Armadilha + cross-aula.** (b) é a pegadinha — um livro mediano associa "1º TBE em AD" com "homogêneo + mercado completo", mas só o segundo é realmente necessário. (c) confunde "rank" com "número" — clássica. Cross: **Aula 6** Q1 testa exatamente esse rank.

---

## Aula 5 — Q5 (🔴) — Lucas (1978) árvore de Lucas

**Resolução.**

1. **Setup.** Agente representativo CRRA $\gamma=2$, $\beta=0{,}95$. $\bar\omega_t=1$, $\bar\omega_{t+1}\in\{0{,}9; 1{,}1\}$ equiprovável.

2. **Derivação.** Em equilíbrio: $c_{t+1} = \bar\omega_{t+1}$. SDF: $m_{t+1} = \beta\, v'(c_{t+1})/v'(c_t) = \beta\cdot c_{t+1}^{-2}/c_t^{-2} = 0{,}95\cdot c_{t+1}^{-2}/1^{-2} = 0{,}95\cdot c_{t+1}^{-2}$.
**(a)** Estado baixo: $m_b = 0{,}95\cdot (0{,}9)^{-2} = 0{,}95/0{,}81 \approx 1{,}1728$. Estado alto: $m_a = 0{,}95\cdot (1{,}1)^{-2} = 0{,}95/1{,}21 \approx 0{,}7851$.
**(b)** $\mathbb{E}_t[m_{t+1}] = 0{,}5\cdot 1{,}1728 + 0{,}5\cdot 0{,}7851 = 0{,}9790$. $R^f = 1/0{,}9790 \approx 1{,}0215$. Taxa livre de risco ≈ 2,15%.
**(c)** Ativo paga $D_{t+1} = \bar\omega_{t+1}$. $P_t = \mathbb{E}_t[m_{t+1}\cdot D_{t+1}] = 0{,}5\cdot 1{,}1728\cdot 0{,}9 + 0{,}5\cdot 0{,}7851\cdot 1{,}1 = 0{,}5\cdot 1{,}0556 + 0{,}5\cdot 0{,}8636 = 0{,}5278 + 0{,}4318 = 0{,}9596$.
**(d)** $\mathbb{E}_t[D_{t+1}] = 0{,}5\cdot 0{,}9 + 0{,}5\cdot 1{,}1 = 1$. $\mathbb{E}_t[R^a_{t+1}] = 1/0{,}9596 \approx 1{,}0421$. Prêmio: $\mathbb{E}_t[R^a_{t+1}] - R^f = 1{,}0421 - 1{,}0215 = 0{,}0206$, ou ≈ **2,06%**.
**(e)** Equity premium puzzle (Mehra-Prescott 1985, DOI 10.1016/0304-3932(85)90061-3): empiricamente, prêmio de risco do S&P sobre Treasuries é ~6% ao ano nos EUA pós-1947, mas calibração CRRA com $\gamma$ "razoável" (1 a 5) e volatilidade observada do consumo (~1% ao ano) gera prêmio teórico de ~0,1% — duas ordens de magnitude abaixo. Para casar 6% empírico em CRRA puro, precisaria $\gamma \approx 30$ — incompatível com Arrow's "experimentos de risco" (laboratório dá $\gamma \in [1, 5]$).

3. **Resposta.** $m_b \approx 1{,}1728$, $m_a \approx 0{,}7851$. $R^f \approx 1{,}0215$ (2,15%). $P_t \approx 0{,}9596$. $\mathbb{E}[R^a] \approx 1{,}0421$. Prêmio de risco $\approx 2{,}06\%$. **Empírico EUA $\approx 6\%$ — gap de 3pp+ é o equity premium puzzle.**

4. **Armadilha + cross-aula.** Erro #1: usar $v'(c) = c^{1-\gamma}$ (a utilidade) em vez de $v'(c) = c^{-\gamma}$ (a marginal) — pratique. Erro #2: arredondar $m$ a 2 dígitos e perder precisão de 0,001 no prêmio. Cross: **Aula 6** mercados incompletos podem aumentar o prêmio teórico (Constantinides-Duffie 1996), mas só parcialmente fecham o puzzle.

---

## Apêndice — Verificações numéricas críticas

| Questão | Cheque chave | Valor esperado |
|---|---|---|
| A1-Q1 | TMS CES $(1,4)$, $\rho=-1$, $\alpha=1/2$ | 16 |
| A1-Q1 | TMS CD limite $(1,4)$ | 4 |
| A2-Q1 | $x_1^M$ CES $\sigma=2$, $\alpha=1/3$ | 20 |
| A2-Q1 | Walras: $1\cdot 20 + 2\cdot 20$ | 60 = m ✓ |
| A2-Q5 | $e(p,\bar u)$ CES expoente | $1/(1-\sigma)$ |
| A3-Q1 | $\varepsilon^c_{11} = -(1-s_1)\sigma$ | $-1$ |
| A3-Q1 | $\varepsilon_{11}$ via Slutsky | $-1{,}5$ |
| A3-Q3 | $\bar u^0$ em CES $\sigma=1/2$, $p=(1,1)$, $m=24$ | 12 |
| A3-Q3 | CV / EV | 30 / $\approx 13{,}33$ |
| A3-Q5 | CV/m em alta de 20% combust | $\approx 1{,}94\%$ |
| A4-Q1 | $p_1^*$ em CD assimétrico | 1 |
| A4-Q1 | Verificação mercado 2 | $3+1=4=\omega_2$ ✓ |
| A4-Q2 | $L^*$ em Robinson $f=L^{1/3}$ | 2 |
| A4-Q2 | $\pi^*$ Robinson | $(1/3)\cdot 2^{1/3} \approx 0{,}420$ |
| A5-Q1 | $p_1^*/p_2^*$ via $B$ neutro | $3/7$ |
| A5-Q1 | $x^{A*}$ totalmente segurado | $(71, 71)$ |
| A5-Q1 | $x^{B*}$ por viabilidade | $(29, 29)$ |
| A5-Q5 | $R^f$ Lucas $\gamma=2$, $\beta=0{,}95$ | $\approx 1{,}0215$ |
| A5-Q5 | Prêmio de risco | $\approx 2{,}06\%$ |
| A5-Q5 | Empírico EUA (puzzle) | $\approx 6\%$ |

---

**Fim do gabarito Parte A.** Use após tentar com lápis e papel. Dúvidas → Pré-monitoria 5 (sáb 20/06) com Alberto.

---

# Parte B — Gabarito Aulas 6–9


## Aula 6 — Q1 (🟢) — Rank de matriz de payoffs

**Resolução.**

1. **Setup.** $A = \begin{pmatrix} 1 & 2 & 4 \\ 1 & 1 & 3 \\ 1 & 0 & 2 \end{pmatrix}$. Verificar se rank é 3 (completo) ou menor.

2. **Derivação.** Expansão de Laplace pela 1ª coluna (todas as entradas são 1):

$$
\det A = 1 \cdot \det\begin{pmatrix} 1 & 3 \\ 0 & 2 \end{pmatrix} - 1 \cdot \det\begin{pmatrix} 2 & 4 \\ 0 & 2 \end{pmatrix} + 1 \cdot \det\begin{pmatrix} 2 & 4 \\ 1 & 3 \end{pmatrix}
$$
$$
= 1 \cdot (2 - 0) - 1 \cdot (4 - 0) + 1 \cdot (6 - 4) = 2 - 4 + 2 = 0.
$$

Como $\det A = 0$, $\text{rank}(A) < 3$. O menor $2\times 2$ superior-esquerdo é $\det\begin{pmatrix}1&2\\1&1\end{pmatrix} = -1 \neq 0$, logo $\text{rank}(A) = 2$. Inspeção direta confirma a dependência linear: $D^3 = 2 D^1 + D^2$, pois $2(1,1,1) + (2,1,0) = (4,3,2)$. O ativo composto é redundante.

3. **Resposta.** $\det A = 0$, $\text{rank}(A) = 2 < |S| = 3$. **Mercado incompleto.** O ativo composto é redundante (combinação linear dos outros dois). Pelo teorema da Aula 6 (Hart 1975 + equivalência AD↔Radner), a alocação Pareto-eficiente do AD canônico **não é atingível**: equilíbrio Radner será constrained-Pareto-eficiente (no span 2D) mas Pareto-inferior em sentido absoluto.

4. **Armadilha + cross-aula.** Erro comum: aluno calcula determinante mecanicamente sem reconhecer a relação $D^3 = 2D^1 + D^2$ (que é a "razão econômica" do rank deficiente). Detectar a dependência linear primeiro economiza conta. **Cross-aula:** conecta com Aula 5 (preços-Arrow) — em mercado incompleto, preços-Arrow são apenas localmente identificados (no span). **Aula 7** vai mostrar que externalidades adicionam outra forma de incompletude (preferências fora do espaço $\mathbb{R}^{LS}$).

---

## Aula 6 — Q2 (🟡) — V/F: Brouwer e fronteira

**Resolução.**

1. **Setup.** Afirmação: continuidade de $z(p)$ em $\Delta^\circ$ + Walras é suficiente para Brouwer.

2. **Veredicto: FALSO.**

3. **Justificativa.** Continuidade só no interior **não é suficiente**. Brouwer exige que o mapa $T: \Delta \to \Delta$ seja contínuo no **compacto fechado** $\Delta$ (incluindo a fronteira). Sob não-saciedade local, demanda pode divergir quando $p_l \to 0$ — isto é uma **descontinuidade na fronteira**, não uma "redireção automática". A construção canônica (Debreu 1959, *Theory of Value*, Cap 5) para contornar isso é **modificar o mapa $T$** explicitamente (compactificar a demanda truncando-a, ou usar projeção sobre fronteira), garantindo continuidade em todo $\Delta$. Sem essa modificação, Brouwer falha.

   Contraexemplo conceitual: na economia de Cobb-Douglas pura, em $p_1 = 0$, demanda do bem 1 é $+\infty$ — descontinuidade clara. Argumento "redireção automática" é falso; é uma **construção** do teórico, não consequência da economia.

4. **Armadilha + cross-aula.** Aluno confunde "demanda diverge" (verdadeiro economicamente) com "Brouwer aplica direto" (falso tecnicamente). A construção da prova de existência (Debreu) é não-trivial precisamente por causa da fronteira. **Cross-aula:** Aula 7 — quando externalidades quebram a estrutura, o problema de existência reaparece em forma diferente (preferências dependem de variáveis fora do bundle do agente; espaço de preferências muda).

---

## Aula 6 — Q3 (🟡) — Replicação de call europeia

**Resolução.**

1. **Setup.** $D^B = (1,1)$, $D^S = (4,1)$, $q^B = 0{,}95$, $q^S = 2$, $D^C = (2,0)$. Procurar $\theta = (\theta_B, \theta_S)$ replicando $D^C$.

2. **Derivação.**

  **(a)** $A = \begin{pmatrix} 1 & 4 \\ 1 & 1 \end{pmatrix}$, $\det A = 1\cdot 1 - 4\cdot 1 = -3 \neq 0$. **Mercado completo** (rank 2 = $|S|$). ✓

  **(b)** Sistema $A\theta = D^C$:
$$
\begin{cases} \theta_B + 4\theta_S = 2 \\ \theta_B + \theta_S = 0 \end{cases}
$$
Subtraindo: $3\theta_S = 2 \Rightarrow \theta_S = 2/3$. E $\theta_B = -\theta_S = -2/3$.

  **(c)** $q^C = q^B \theta_B + q^S \theta_S = 0{,}95 \cdot (-2/3) + 2 \cdot (2/3) = (2/3)(2 - 0{,}95) = (2/3)(1{,}05) = 0{,}70$. **$q^C = 0{,}70$.** $\theta_B < 0$ significa **vender o bond a descoberto** (tomar emprestado a taxa livre de risco) para financiar a compra de $2/3$ unidades da ação.

  **(d)** Sistema $q^j = \sum_s p^*_s D^j_s$:
$$
\begin{cases} 0{,}95 = p^*_1 + p^*_2 \\ 2 = 4 p^*_1 + p^*_2 \end{cases}
$$
Subtraindo: $1{,}05 = 3 p^*_1 \Rightarrow p^*_1 = 0{,}35$, e $p^*_2 = 0{,}95 - 0{,}35 = 0{,}60$. Verificação $D^C$: $p^* \cdot D^C = 0{,}35 \cdot 2 + 0{,}60 \cdot 0 = 0{,}70 = q^C$. ✓

3. **Resposta.** Portfolio $\theta = (-2/3, 2/3)$; preço da call $q^C = 0{,}70$; preços-Arrow $p^* = (0{,}35;\, 0{,}60)$.

4. **Armadilha + cross-aula.** Erros frequentes: (i) tentar achar "probabilidade neutra ao risco" antes de simplesmente resolver $2\times 2$; (ii) confundir $\theta_B < 0$ com "erro de cálculo" — não, é alavancagem. **Cross-aula:** este é exatamente o argumento de Black-Scholes-Merton 1973 (Nobel 1997) em forma discreta — versão contínua está em Hull, *Options, Futures, and Other Derivatives*, Cap 13. **Aula 5** definiu SDF; aqui vimos como SDF discreto recupera preço de não-arbitragem.

---

## Aula 6 — Q4 (🟡) — Prova: NA ⇒ existência de $p^* > 0$

**Resolução.**

1. **Setup + hipóteses do teorema de Stiemke.** NA significa: $\nexists \theta$ com $(-q\cdot\theta, A\theta) \in \mathbb{R}_+^{1+|S|} \setminus \{0\}$. Trabalhamos em $\mathbb{R}^{1+|S|}$ (dimensão finita, $|S|, J < \infty$) — Stiemke é Hahn-Banach especializado a esse cenário e dispensa o aparato funcional. **Forma usada (alternativa de Stiemke):** dado $M \in \mathbb{R}^{m\times n}$, exatamente uma das duas vale: (i) $\exists\, x \geq 0,\, x \neq 0 : Mx = 0$, ou (ii) $\exists\, y : M^\top y \gg 0$ (estrito em todas as coordenadas). NA descarta (i) sobre a matriz $M = [-q^\top;\, A] \in \mathbb{R}^{(1+|S|)\times J}$, então (ii) entrega o $p^* \gg 0$. Em dimensão finita o cone $K$ é automaticamente fechado (imagem linear de $\mathbb{R}^J$), o que dispensa hipótese topológica adicional.

2. **Derivação (prova).** Defina o cone $K = \{(-q\cdot\theta, A\theta) : \theta \in \mathbb{R}^J\} \subseteq \mathbb{R}^{1+|S|}$. NA equivale a dizer $K \cap (\mathbb{R}_+^{1+|S|} \setminus \{0\}) = \emptyset$. Como $K$ é subespaço linear (imagem de $\theta \mapsto (-q\cdot\theta, A\theta)$, linear) e $\mathbb{R}_+^{1+|S|} \setminus \{0\}$ é o cone positivo perfurado (convexo, com interior não-vazio), pela **alternativa de Stiemke** (acima), existe $(\lambda_0, \lambda) \in \mathbb{R}_{++}^{1+|S|}$ (estritamente positivo em todas as coordenadas) tal que para todo $\theta \in \mathbb{R}^J$:
$$
\lambda_0 \cdot (-q\cdot\theta) + \lambda \cdot (A\theta) = 0.
$$
Reorganizando: $\theta^\top(A^\top \lambda - \lambda_0\, q) = 0$ para todo $\theta$, logo $A^\top \lambda = \lambda_0\, q$. Defina $p^* = \lambda/\lambda_0 \in \mathbb{R}_{++}^{|S|}$. Então $A^\top p^* = q$, ou equivalentemente $q_j = \sum_s p^*_s\, A_{sj}$ para cada ativo $j$. ✓

3. **Resposta / conclusão.** Existe $p^* \gg 0$ (estritamente positivo) com $q = A^\top p^*$, exatamente a fórmula de não-arbitragem.

4. **Armadilha + cross-aula.** Erro frequente: aluno usa Hahn-Banach genérico sem perceber que a versão necessária é **Stiemke** (separação estrita de cone fechado vs cone aberto positivo) — variante diferente de Farkas. Cobertura completa em Magill-Quinzii (1996) §6, e em Duffie (2001, *Dynamic Asset Pricing Theory*, 3e) §1. **Cross-aula:** o resultado dual (NA $\Leftrightarrow$ existência de $p^* \gg 0$) é o **First Fundamental Theorem of Asset Pricing**. Em finanças avançadas (Aula 8 menciona em risco moral assintótico), $p^*$ se torna probabilidade neutra-ao-risco (Girsanov).

---

## Aula 6 — Q5 (🔴) — Hart 1975 conceitual

**Resolução.**

1. **Setup.** Discutir distinção constrained-PE vs PE absoluto, mecanismo GP 1986, política.

2. **Derivação / discussão.**

  **(a) Distinção.** **Constrained-Pareto-eficiente (CPE):** alocação $x \in \omega + \text{span}(A)$ tal que não existe outra $\hat x \in \omega + \text{span}(A)$ Pareto-superior. Restrição: o conjunto de comparação é só **alocações implementáveis pelo span dos ativos disponíveis**. **PE absoluto:** comparação sobre **todas** as alocações viáveis fisicamente ($x$ tal que $\sum_i x^i = \sum_i \omega^i$). Sob mercado incompleto, $\text{span}(A) \subsetneq \mathbb{R}^{LS}$, então CPE $\not\Rightarrow$ PE absoluto. CPE é fraca demais porque **aceita** ineficiência institucional como dado: dois agentes podem ambos preferir uma alocação $\hat x \notin \text{span}(A)$ ao equilíbrio Radner $x^*$, mas $\hat x$ não é alcançável via os ativos existentes. O equilíbrio é "ótimo dado o que se pode comprar" — não "ótimo dado o que se quer".

  **(b) Mecanismo GP 1986.** Em mercado já incompleto, os **preços relativos** dos ativos existentes incorporam um *prêmio de incompletude* — agentes mais expostos a estados não-cobertos pagam mais por instrumentos parcialmente correlacionados. Adicionar um novo ativo amplia o span, **mas reajusta os preços de todos os ativos pré-existentes** (efeito-preço de portfólio). Como cada agente é heterogêneo no padrão de exposição, o reajuste de preços redistribui renda entre eles via efeito-riqueza indireto. Quem antes "vendia seguro implicitamente" via portfólio com preços altos perde valor de mercado quando o novo ativo torna o seguro mais barato. Em modelos dois-períodos com preferências quaselineares, esses efeitos-preço somados podem deixar **algum agente Pareto-pior**, mesmo com span estritamente maior. Pareto não é monótono em ativos.

  **(c) Política.** Implicação Dodd-Frank/EMIR: **derivativos OTC complexos não devem ser desregulamentados sob a hipótese ingênua "mais é sempre melhor"**. Análise de bem-estar de cada novo produto requer modelagem de quem ganha vs. quem perde. Justificativa teórica para regulação prudencial pós-crise.

3. **Resposta.** Itens (a), (b), (c) acima.

4. **Armadilha + cross-aula.** Aluno comum confunde CPE com "ótimo Pareto restringido aos preços de equilíbrio" — não, é **restrição ao span de alocações**, não restrição de preços. Outro erro: achar que GP 1986 é heterodoxo — é teoria neoclássica padrão (MWG §19.E; Magill-Quinzii §10.3). **Cross-aula:** **Aula 8** mostrará outra forma de incompletude — endógena via informação assimétrica (Akerlof: mercado pode "decidir não existir"). **Aula 9** (sinalização) sugere como mercados podem se autocompletar via sinais observáveis (Spence).

---

## Aula 7 — Q6 (🟢) — Pigou numérico

**Resolução.**

1. **Setup.** $C_i(q) = q^2$, $C_i'(q) = 2q$, $d = 4$, $P = 24$, $I = 2$ firmas idênticas.

2. **Derivação.**

  **(a)** Privado: $P = C_i'(q) \Rightarrow 24 = 2q \Rightarrow q^{\text{priv}} = 12$ por firma.

  **(b)** Social: $P = C_i'(q) + d \Rightarrow 24 = 2q + 4 \Rightarrow q^{\text{soc}} = 10$ por firma.

  **(c)** Imposto Pigou: $t^*$ tal que firma resolve $\max_q P\, q - C(q) - t^* q$, CPO $P - 2q - t^* = 0 \Rightarrow q = (P - t^*)/2$. Para $q = q^{\text{soc}} = 10$, $t^* = P - 20 = 24 - 20 = 4$. Note: $t^* = d$ exatamente (resultado canônico Pigou para externalidade marginal constante).

  **(d)** DWL: triângulo entre custo marginal social ($2q + 4$) e curva de demanda ($P = 24$) entre $q^{\text{soc}} = 10$ e $q^{\text{priv}} = 12$, por firma. Em $q = 12$: $C'_i + d = 24 + 4 = 28$; em $q = 10$: $C'_i + d = 20 + 4 = 24 = P$. DWL por firma = área triângulo de base $\Delta q = 2$ e altura $\Delta(C'+d) = 4$: $\text{DWL}_i = \tfrac{1}{2} \cdot 2 \cdot 4 = 4$. Total: $\text{DWL} = 8$.

3. **Resposta.** $q^{\text{priv}} = 12$, $q^{\text{soc}} = 10$, $t^* = 4$, $\text{DWL}_{\text{total}} = 8$ (em unidades de bem-estar).

4. **Armadilha + cross-aula.** Erros: (i) calcular DWL com base em $C'$ privado em vez de $C' + d$ — confunde dano marginal com diferença de quantidade; (ii) esquecer multiplicação por número de firmas. **Cross-aula:** Pigou (1920) descentralizou o ótimo via preço; **Coase (1960)** mostra rota alternativa via direitos de propriedade quando custo de transação é baixo. Quando há **incerteza** sobre custos marginais (Weitzman 1974, *Restud*; DOI: 10.2307/2296698), imposto vs cota não são equivalentes — preferência por imposto se MC mais inclinado que dano marginal.

---

## Aula 7 — Q7 (🟡) — V/F: Coase e custos de transação

**Resolução.**

1. **Setup.** Afirmação: Coase garante (i) mesma quantidade de equilíbrio, (ii) mesma distribuição de excedente, **independentemente** da atribuição inicial.

2. **Veredicto: FALSO** (em parte: a tese é meio-verdadeira).

3. **Justificativa.** Coase (1960) garante apenas (i) **mesma quantidade poluída de equilíbrio** sob barganha eficiente — porque maximização conjunta de excedente é independente de quem detém o direito. **Não** garante (ii) mesma distribuição de excedente: a atribuição inicial **transfere renda** (quem detém o direito recebe a compensação ou paga para poluir), o que muda fundamentalmente quem fica com o excedente. Além disso, **com efeitos-renda** (preferências quaselineares falham, ou agentes têm orçamentos limitados / restrições de wealth), a quantidade ótima também pode depender da atribuição inicial — porque a curva de demanda pelo bem-poluição muda com a renda. A condição **invariância** depende de quasilinearidade (Coase já notou implicitamente; Hovenkamp 2009 explicitou).

   Contraexemplo de distribuição: se direito é da fábrica, fábrica recebe pagamento do pescador para reduzir poluição; se direito é do pescador, fábrica paga pescador para tolerar. Em ambos casos quantidade poluída pode ser igual, mas o **excedente da fábrica é maior no primeiro caso** (fábrica recebe vs. fábrica paga).

4. **Armadilha + cross-aula.** Erro crônico: aluno repete "Coase = independência de tudo". É independência só de **eficiência alocativa**, não de **distribuição**. **Cross-aula:** quando há $I > 2$ agentes (e.g., bairro com muitos pescadores), Coase **falha** na prática por free-rider (cada pescador subreporta dano; coordenação difícil). É exatamente o problema de **provisão de bem público local** (Aula 7, Samuelson). Solução institucional: agência reguladora (CETESB, EPA), mecanismo VCG de preferência revelada.

---

## Aula 7 — Q8 (🟡) — Samuelson assimétrico vs Nash

**Resolução.**

1. **Setup.** $u_1 = x_1 + 6\ln G$, $u_2 = x_2 + 2 \ln G$, $c = 1$, $\omega_i = 10$.

2. **Derivação.**

  **(a) Samuelson.** $\text{TMS}_i = \partial u_i/\partial G \div \partial u_i/\partial x_i$. Com utilidade quaselinear, $\partial u_i/\partial x_i = 1$ e $\partial u_1/\partial G = 6/G$, $\partial u_2/\partial G = 2/G$. Logo $\text{TMS}_1 = 6/G$ e $\text{TMS}_2 = 2/G$.

  Condição: $\sum_i \text{TMS}_i = c \Rightarrow 6/G + 2/G = 1 \Rightarrow 8/G = 1 \Rightarrow G^{\text{soc}} = 8$.

  **(b) Nash.** Cada agente $i$ resolve $\max_{g_i \geq 0} (\omega_i - g_i) + \alpha_i \ln(g_1 + g_2)$ onde $\alpha_1 = 6, \alpha_2 = 2$. CPO interior: $\partial/\partial g_i = -1 + \alpha_i/G = 0 \Rightarrow g_i = \alpha_i$, **se ambos contribuem**.

  **Verificação:** se $g_1 = 6, g_2 = 2 \Rightarrow G = 8$. Mas então CPO de agente 2 dado $g_1 = 6$: $\partial u_2/\partial g_2 = -1 + 2/(6 + g_2)$, em $g_2 = 0$: $-1 + 2/6 = -2/3 < 0$. Logo agente 2 prefere $g_2 = 0$ (canto). Reanalise: dado $g_2 = 0$, agente 1 escolhe $g_1$ tal que $-1 + 6/g_1 = 0 \Rightarrow g_1 = 6$. **Verificação simétrica para agente 2:** dado $g_1 = 6$, ótimo de agente 2 é $-1 + 2/(6+g_2) = 0 \Rightarrow 6 + g_2 = 2$ (impossível, $g_2 \geq 0$) — logo canto $g_2 = 0$. ✓

  **Equilíbrio Nash:** $g_1^* = 6$, $g_2^* = 0$, $G^{\text{Nash}} = 6$.

  **(c) Comparação.** $G^{\text{soc}} = 8 > G^{\text{Nash}} = 6$. Subprovisão: faltam 2 unidades. **Quem subprovê?** Em Nash, agente 2 (baixa valoração) free-ride completamente — contribui zero. Agente 1 (alta valoração) sustenta sozinho o bem público. Resultado de **neutralidade de Bergstrom-Blume-Varian (1986)**: no Nash com utilidade quaselinear + um único bem público, alocação só depende da soma dos pesos $\sum_i \alpha_i$ via o agente "marginal" — quem tem o maior $\alpha_i$ contribui $\alpha_{\max}$, todos os outros free-rideiam. Aqui, $G^{\text{Nash}} = \max_i \alpha_i = 6$.

3. **Resposta.** $G^{\text{soc}} = 8$, $G^{\text{Nash}} = 6$. Subprovisão de 2 unidades. Agente 2 free-ride completamente.

4. **Armadilha + cross-aula.** Erros: (i) achar que $g_1^* = 4, g_2^* = 4$ por simetria — não, agentes são heterogêneos. (ii) Não verificar canto $g_2 = 0$. **Cross-aula:** mecanismo VCG (Q9) resolve subprovisão garantindo verdadeira valoração revelada; **Aula 9 (Spence)** mostra que sinalização privada pode parcialmente substituir (sub-)provisão pública via educação. Caso brasileiro: provisão de defesa nacional, segurança pública — Estado provê via tributação obrigatória precisamente porque Nash subprovê.

---

## Aula 7 — Q9 (🟡) — VCG é dominância-strategy proof

**Resolução.**

1. **Setup + hipótese quaselinear.** Agente $i$ reporta $\hat v_i$. Decisão $a^* = \arg\max_x \sum_j \hat v_j(x)$. Pagamento Clarke: $t_i = \max_x \sum_{j\neq i} \hat v_j(x) - \sum_{j\neq i} \hat v_j(a^*)$. **Hipótese crítica:** preferências **quaselineares** em dinheiro — utilidade de $i$ é $U_i(a, t_i) = v_i(a) - t_i$, com $v_i$ medida na mesma unidade de $t_i$ e **sem efeito-renda** sobre $v_i$. É essa hipótese que permite a separação aditiva $U_i = v_i(a^*) - t_i$ na linha (1) abaixo e que garante que o termo $\max_x \sum_{j\neq i}\hat v_j(x)$ entre como **constante** (não interage com $v_i$). Sem quaselinearidade, VCG **não** é estritamente strategy-proof — Hurwicz (1972) e a impossibilidade Green-Laffont (1979) mostram que dominância em domínio mais largo exige relaxar a estrutura.

2. **Derivação (prova).** Fixe $\hat v_{-i}$ (relatórios dos outros) arbitrário. Utilidade de $i$:
$$
U_i(\hat v_i) = v_i(a^*(\hat v_i, \hat v_{-i})) - t_i = v_i(a^*) - \max_x \sum_{j\neq i} \hat v_j(x) + \sum_{j \neq i} \hat v_j(a^*).
$$

O termo $\max_x \sum_{j\neq i} \hat v_j(x)$ não depende de $\hat v_i$ (só de $\hat v_{-i}$). Logo, a decisão de $i$ se reduz a **maximizar**:
$$
v_i(a^*) + \sum_{j\neq i} \hat v_j(a^*) = \text{soma reportada SE as outras forem fixadas, e } v_i \text{ honesto}.
$$

Comparando: se $i$ reporta verdade ($\hat v_i = v_i$), o mecanismo escolhe $a^* = \arg\max_x [v_i(x) + \sum_{j\neq i} \hat v_j(x)]$, que é exatamente o argumento que $i$ quer maximizar. ✓

Se $i$ mente reportando $\hat v_i \neq v_i$, o mecanismo escolhe outro $a^{**}$ que maximiza $\hat v_i + \sum_{j\neq i}\hat v_j$, **diferente** do $a^*$ que $i$ quer. Logo:
$$
v_i(a^{**}) + \sum_{j\neq i}\hat v_j(a^{**}) \leq v_i(a^*) + \sum_{j\neq i}\hat v_j(a^*),
$$
por construção do max. Logo verdade é fracamente dominante. $\blacksquare$

3. **Resposta / conclusão.** Verdade $\hat v_i = v_i$ é estratégia (fracamente) dominante para todo agente $i$, qualquer $\hat v_{-i}$.

4. **Armadilha + cross-aula.** Erro frequente: aluno tenta provar via casos discretos (testar $a$ vs $b$) — eficaz mas não-canônico. A elegância do VCG é justamente que o pagamento Clarke **realiniza incentivos** porque agente internaliza o efeito da sua mensagem sobre o bem-estar dos outros (externalidade!). **Cross-aula:** VCG é o **canônico mecanismo de revelação dominante** em ambientes quaselineares — limite teórico de Myerson 1981. Em ambientes não-quaselineares, **Gibbard-Satterthwaite** mostra que dominância-strategy proof é incompatível com não-ditadura — daí Roth (Aula 9) trabalha com noção mais fraca (DA é strategy-proof apenas para o lado proponente).

---

## Aula 7 — Q10 (🔴) — Hardin dinâmico + Ostrom

**Resolução.**

1. **Setup.** $S_1 = 100$, $S_{t+1} = (S_t - h_t)(1{,}10)$, $\delta = 1/1{,}10$, $I = 4$ pescadores idênticos com $u(h_{i,t}) = \ln h_{i,t}$. Horizonte $t = 1, 2$.

2. **Derivação.**

  **(a) Planejamento social.** Planner maximiza $\sum_i \sum_t \delta^{t-1} \ln(h_{i,t})$ sob $h_{i,t} = h_t/I$, equivalente a maximizar $I \cdot \ln(h_t/I) + I \delta \ln(h_2/I) = I\ln h_t + I\delta \ln h_2 + \text{const}$. Em $t=2$ não há continuação (último período): $h_2 = S_2 = (S_1 - h_1)(1{,}10)$, todo o estoque. CPO em $h_1$:
$$
\frac{I}{h_1} = \frac{I \delta}{S_2} \cdot \frac{\partial S_2}{\partial h_1}\cdot (-1) \cdot (-1) \Leftrightarrow \frac{1}{h_1} = \frac{\delta}{S_2} \cdot 1{,}10 = \frac{(1/1{,}10) \cdot 1{,}10}{S_2} = \frac{1}{S_2}.
$$
Logo $h_1 = S_2 = (S_1 - h_1)(1{,}10) \Rightarrow h_1 = 1{,}10 S_1 - 1{,}10 h_1 \Rightarrow 2{,}10 h_1 = 110 \Rightarrow h_1^{\text{soc}} = 110/2{,}10 \approx 52{,}38$.
$S_2^{\text{soc}} = (100 - 52{,}38)(1{,}10) \approx 52{,}38 = h_2^{\text{soc}}$.
**Por pescador:** $h_{i,1}^{\text{soc}} = 52{,}38/4 \approx 13{,}10$.

  **(b) Nash Markov-perfect.** Resolva por indução para trás.

  *Período $t=2$ (último).* Estoque $S_2$ dado, sem continuação. Equilíbrio simétrico do jogo simultâneo de extração: cada pescador extrai $h_{i,2} = S_2/I$ (rateio igual; única alocação simétrica viável factível com $\ln$-utilidade — o jogo é "tragédia degenerada" em $t=2$).

  *Período $t=1$.* Cada pescador $i$ resolve, tomando $h_{j,1}$ (outros) como dado e antecipando $h_{i,2} = S_2/I$:
$$
\max_{h_{i,1}} \ \ln h_{i,1} + \delta \ln(S_2/I), \quad S_2 = (S_1 - h_{i,1} - (I-1)\bar h_1)\cdot (1+r),
$$
onde $\bar h_1$ é a colheita simétrica dos outros. CPO em $h_{i,1}$:
$$
\frac{1}{h_{i,1}} = \delta \cdot \frac{1}{S_2/I} \cdot \frac{(1+r)}{I} = \frac{\delta(1+r)}{S_2}.
$$
Como $\delta(1+r) = (1/1{,}10)\cdot 1{,}10 = 1$, isso vira $h_{i,1} = S_2$. Em equilíbrio simétrico ($\bar h_1 = h_{i,1}$): $S_2 = (S_1 - I\,h_{i,1})\cdot (1+r) = (100 - 4\,h_{i,1})\cdot 1{,}10$. Substituindo:
$$
h_{i,1} = (100 - 4\,h_{i,1})\cdot 1{,}10 \Rightarrow h_{i,1}\,(1 + 4\cdot 1{,}10) = 110 \Rightarrow h_{i,1}^{\text{Nash}} = \frac{110}{5{,}40} \approx 20{,}37.
$$

  Total $h_1^{\text{Nash}} = 4 \cdot 20{,}37 \approx 81{,}48$. $S_2^{\text{Nash}} = (100 - 81{,}48)\cdot 1{,}10 \approx 20{,}37$. Por pescador em $t=2$: $h_{i,2}^{\text{Nash}} = S_2^{\text{Nash}}/4 \approx 5{,}09$.

  **Comparação social vs Nash.** A CPO social é $h_{i,1} = S_2$ com $S_2 = (S_1 - I\,h_{i,1})(1+r)$ porque o planner internaliza que aumentar $h_{i,1}$ reduz $S_2$ via *toda* a colheita agregada. O Nash leva à mesma forma da CPO ($1/h_{i,1} = 1/S_2$) mas com a equação de estado que cada agente individualmente percebe — e o resultado é que cada pescador trata só sua parte do estoque como interna, então em equilíbrio simétrico extrai $I$ vezes mais. **Daí a sobreexploração.**

  **(c) Comparação.** $h_1^{\text{Nash}} \approx 81{,}48$ vs $h_1^{\text{soc}} \approx 52{,}38$ — Nash colhe **55% mais** no período 1. $S_2^{\text{Nash}} \approx 20{,}37$ vs $S_2^{\text{soc}} \approx 52{,}38$ — Nash deixa **39% do estoque** que o social deixaria.

  **Perda dinâmica em forma fechada literal (por pescador).** As colheitas individuais em forma fechada são:
$$
h_{i,1}^{\text{soc}} = \frac{S_1\,(1+r)}{I\,(2+r)}, \qquad h_{i,1}^{\text{Nash}} = \frac{S_1\,(1+r)}{1 + I\,(1+r)}.
$$
A razão Nash/Social no período 1 (independente de $S_1$):
$$
\frac{h_{i,1}^{\text{Nash}}}{h_{i,1}^{\text{soc}}} = \frac{I\,(2+r)}{1 + I\,(1+r)} = \frac{8{,}40}{5{,}40} \approx 1{,}556 \quad (\text{Nash colhe 55\% mais}).
$$
A perda total descontada por pescador é
$$
\Delta U_i = \big[\ln h_{i,1}^{\text{soc}} - \ln h_{i,1}^{\text{Nash}}\big] + \delta \big[\ln h_{i,2}^{\text{soc}} - \ln h_{i,2}^{\text{Nash}}\big].
$$
**Avaliando numericamente** com $h_{i,1}^{\text{soc}} \approx 13{,}10$, $h_{i,1}^{\text{Nash}} \approx 20{,}37$, $h_{i,2}^{\text{soc}} \approx 13{,}10$, $h_{i,2}^{\text{Nash}} \approx 5{,}09$, $\delta = 1/1{,}10$:
$$
\Delta U_i = (\ln 13{,}10 - \ln 20{,}37) + (1/1{,}10)(\ln 13{,}10 - \ln 5{,}09) \approx (-0{,}441) + (0{,}909)(0{,}945) \approx +0{,}418.
$$
Positivo — social é melhor (como deve ser). Total agregado (4 pescadores): $4 \cdot 0{,}418 \approx 1{,}67$ em utilidade-log.

  **(d) Ostrom.** Elinor Ostrom (1990, *Governing the Commons*; Nobel 2009) documentou comunidades reais (pesca em Maine, irrigação em Bali, pastos em Suíça alpina) que escapam tragédia via **governança comunitária** — nem mercado nem Estado. Princípios de design relevantes (citando 2 dos 8): **(i) "Boundaries clearly defined"** — quem pode pescar e onde é institucionalmente fixado; **(ii) "Collective-choice arrangements"** — usuários participam ativamente da regra de uso (cota, época). Outros princípios: monitoramento mútuo, sanções graduadas, mecanismo de resolução de conflitos local, reconhecimento mínimo do governo central. A lição: tragédia de Hardin assume "nenhuma instituição" — Ostrom mostra que **instituições endógenas** existem e funcionam.

3. **Resposta.** $h_1^{\text{soc}} \approx 52{,}38$, $h_1^{\text{Nash}} \approx 81{,}48$ (sobreexploração). $S_2^{\text{soc}} \approx 52{,}38$, $S_2^{\text{Nash}} \approx 20{,}37$. Perda agregada $\approx 1{,}68$ em ln-utilidade.

4. **Armadilha + cross-aula.** Erros: (i) tratar Nash em $t=1$ ignorando que $t=2$ também é Nash (precisa subgame-perfect / Markov-perfect); (ii) confundir $h_t$ total com $h_{i,t}$ individual. **Cross-aula:** este resultado (número de extratores $\to$ taxa de exploração $\to \infty$) é o esqueleto da tragédia. **Aula 8** (R-S): em seguros, "pool" pode colapsar mesmo que mercado esteja "completo" — falha não-rivalidade. Caso brasileiro: pesca da sardinha no Sudeste (sobreexplorada nos anos 70-80), regulação via IBAMA/MAPA pós-1992 (instrumento Pigou-tipo: cota + época de defeso).

---

## Aula 8 — Q11 (🟢) — Tipologia: SA vs RM

**Resolução.**

1. **Setup.** Identificar SA (hidden type, antes), RM (hidden action, após), ambos ou nenhum.

2. **Análise.**

  **(a)** Banco com tipos heterogêneos, distinção impossível ex-ante: **SA puro**. Tipos bons saem (unraveling Akerlof).

  **(b)** Após contratação, segurado muda comportamento: **RM puro** (hidden action). Negligência crescente de cuidado é o ponto.

  **(c)** Esforço discricionário não-observável após contrato fixo: **RM puro** (Holmström canônico).

  **(d)** Inscrição (SA: pessoas saudáveis e doentes co-existem) + uso intensivo após (RM: utilização discricionária pós-contrato). **Ambos** (SA + RM). Caso típico de plano de saúde — combinação de problemas.

3. **Resposta.** (a) A; (b) B; (c) B; (d) C.

4. **Armadilha + cross-aula.** Erro comum: marcar (a) como ambos. **Não:** o problema descrito é puramente de seleção (tipos co-existem; banco não distingue). Risco moral entraria se, após contrato, "tipo bom" começasse a tomar mais risco — não está no enunciado. Distinção temporal é a chave: SA é **antes**, RM é **após**. **Cross-aula:** Aula 9 (Spence) é a **resposta** ao SA via sinal pré-contrato; **R-S (1976)** é resposta SA via screening pós-contrato. Holmström second-best (Q14) é resposta a RM puro.

---

## Aula 8 — Q12 (🟡) — Akerlof contínuo: distribuição triangular

**Resolução.**

1. **Setup.** $f(\theta) = (60-\theta)/1800$ em $[0, 60]$. Verificar: $\int_0^{60} (60-\theta)/1800\,d\theta = (1/1800)[60\theta - \theta^2/2]_0^{60} = (1/1800)(3600 - 1800) = 1$. ✓

2. **Derivação.**

  **(a)** $F(p) = \int_0^p (60-\theta)/1800\,d\theta = (1/1800)(60p - p^2/2) = (60p - p^2/2)/1800 = p(60 - p/2)/1800$. E
$$
\int_0^p \theta f(\theta)\,d\theta = (1/1800)\int_0^p \theta(60-\theta)\,d\theta = (1/1800)[30 p^2 - p^3/3].
$$
Logo:
$$
E[\theta\mid \theta\leq p] = \frac{30 p^2 - p^3/3}{60 p - p^2/2} = \frac{p^2(30 - p/3)}{p(60 - p/2)} = \frac{p(30 - p/3)}{60 - p/2} = \frac{p(90 - p)/3}{(120 - p)/2} = \frac{2p(90-p)}{3(120-p)}.
$$

  **(b)** Equilíbrio Akerlof: $p^* = (4/3) E[\theta\mid \theta\leq p^*]$. Substituindo:
$$
p^* = (4/3) \cdot \frac{2 p^*(90 - p^*)}{3(120 - p^*)} = \frac{8 p^*(90 - p^*)}{9(120 - p^*)}.
$$

Para $p^* > 0$, dividir ambos os lados por $p^*$:
$$
1 = \frac{8(90-p^*)}{9(120-p^*)} \Rightarrow 9(120 - p^*) = 8(90 - p^*) \Rightarrow 1080 - 9 p^* = 720 - 8 p^* \Rightarrow p^* = 360.
$$

Mas $360 > 60$, **fora do suporte $[0,60]$**. Logo a única solução em $[0,60]$ é $p^* = 0$ (unraveling completo). **Mercado colapsa.**

  **(c)** Comparação com uniforme em $[0,60]$ (caso de aula): $E[\theta\mid \theta\leq p] = p/2$. Equilíbrio Akerlof: $p = (4/3)(p/2) = 2p/3$, logo $p^* = 0$. **Ambas distribuições colapsam para $p^* = 0$ sob premium $\alpha = 4/3$.**

  **Direção da diferença qualitativa.** Na triangular, $E[\theta\mid \theta\leq p] = 2p(90-p)/(3(120-p)) < p/2$ para todo $p \in (0, 60)$ — a densidade decrescente puxa a esperança truncada **abaixo** de $p/2$. Numericamente: em $p = 60$, uniforme dá $30$, triangular dá $20$ (calcule). Logo, a "qualidade média esperada" abaixo do preço é **menor** na triangular, e o premium $\alpha$ necessário para sustentar mercado é **maior** na triangular. Especificamente: uniforme tem mercado funcional sse $\alpha \geq 2$; triangular requer $\alpha > 2$ para solução interior em $[0,60]$ e $\alpha > 3$ para mercado cheio. Em $\alpha = 4/3$, ambas colapsam, mas a triangular está "mais longe" do limiar — o lemons-pesadas piora a fronteira de existência.

3. **Resposta.** $p^* = 0$ (unraveling completo); na triangular, lemons-pesadas agravam o problema vs uniforme.

4. **Armadilha + cross-aula.** Erros: (i) integração indefinida sem cuidado com $f(\theta)$; (ii) achar que existe solução interior $p^* = 360$ sem checar suporte. **Cross-aula:** R-S (Q13) propõe solução com **screening** via menu de contratos; Spence (Q16) propõe solução com **sinal**. Aplicação: mercado de carros usados no Brasil (CARFAX, Nicho, OLX) — plataformas tentam "abrir o tipo" via histórico verificado.

---

## Aula 8 — Q13 (🟡) — V/F: R-S existência

**Resolução.**

1. **Setup.** Afirmação: separador sempre existe; pooling nunca é equilíbrio.

2. **Veredicto: FALSO** (em ambas as cláusulas).

3. **Justificativa.** **(i) Separador não sempre existe**: R-S (1976) provam que se a proporção de tipos altos é suficientemente baixa (\(\lambda^H\) baixo), pode **não** haver equilíbrio em estratégias puras (nem separador nem pooling). Contraexemplo: quando o contrato separador para tipo baixo é "atraente demais" para tipos altos relativamente à fração que paga prêmio mais alto, qualquer separador é desviado por uma firma oferecendo pooling-ish; ao mesmo tempo, pooling é sempre desviado oferecendo um contrato que cream-skim baixos. **Resultado clássico: não-existência em estratégias puras quando $\lambda^H$ é baixo.**

  **(ii) Pooling pode ser equilíbrio em refinamentos**: a afirmação de R-S sobre pooling não é teorema universal; depende do conceito de equilíbrio. Sob conceito de equilíbrio de Wilson (1977, *J. Economic Theory*; DOI: 10.1016/0022-0531(77)90011-5) ou refinamentos como E2-equilibrium (Riley 1979), pooling **pode** sobreviver em alguns ambientes. Em Bertrand-Nash puro, sim, pooling sempre é desviado por cream-skimming — mas o argumento depende do conceito.

4. **Armadilha + cross-aula.** Aluno repete o "teorema clássico" sem mencionar a condição $\lambda^H$ baixa nem a sensibilidade ao conceito de equilíbrio. R-S é mais sutil que se apresenta. **Cross-aula:** Cho-Kreps 1987 (Q16) refina noção de equilíbrio em sinalização para resolver este tipo de multiplicidade. Aplicação prática: ANS regula plano de saúde brasileiro precisamente para evitar não-existência (impõe pool obrigatório com preço regulado).

---

## Aula 8 — Q14 (🟡) — Holmström CARA

**Resolução.**

1. **Setup.** CARA $\rho = 1$, $c(e) = e^2/2$, $\varepsilon \sim N(0, 1)$, $\bar U = -1 \Leftrightarrow$ CE-reservation $= 0$. Contrato $w = \alpha + \beta y$, $y = e + \varepsilon$.

2. **Derivação.**

  **(a)** Resultado padrão (CARA + normal): $\text{CE}(w(y), e) = E[w(y)] - (\rho/2)\,\text{Var}(w(y)) - c(e)$. Substituindo $w(y) = \alpha + \beta y$, $E[w] = \alpha + \beta e$, $\text{Var}(w) = \beta^2 \sigma^2 = \beta^2$, $c(e) = e^2/2$, $\rho = 1$:
$$
\text{CE}(\alpha, \beta, e) = \alpha + \beta e - \tfrac{1}{2}\beta^2 - \tfrac{1}{2}e^2.
$$

  **(b) IC.** $\partial \text{CE}/\partial e = \beta - e = 0 \Rightarrow e^*(\beta) = \beta$.

  **(c) PC.** Substituindo $e^* = \beta$: $\text{CE}(\alpha, \beta, \beta) = \alpha + \beta^2 - \beta^2/2 - \beta^2/2 = \alpha$. PC: $\alpha \geq 0$. Bind: $\boxed{\alpha = 0}$.

  **(d) Principal.** Maximiza $\Pi = E[y - w(y)] = e^* - \alpha - \beta e^*$. Sob $e^* = \beta$ e $\alpha = 0$: $\Pi(\beta) = \beta - \beta^2$. CPO: $1 - 2\beta = 0 \Rightarrow \boxed{\beta^* = 1/2}$. Daí $e^* = 1/2$, $\Pi^{\text{SB}} = 1/4$.

  **First-best.** Com $e$ observável: principal impõe $e^{\text{FB}}$ via salário fixo. CPO: $1 = c'(e) = e \Rightarrow e^{\text{FB}} = 1$. Salário fixo iguala custo de esforço (PC bind, agente neutro ao risco do salário fixo): $w^{\text{FB}} = c(1) = 1/2$. $\Pi^{\text{FB}} = 1 - 1/2 = 1/2$.

  **Diferença SB vs FB e fórmula Holmström-Milgrom.** Lucro perdido: $1/2 - 1/4 = 1/4$ — o **prêmio de risco moral**. Forma fechada Holmström-Milgrom (1987, *Econometrica*; DOI: 10.2307/1911406): $\beta^* = 1/(1 + \rho \sigma^2\, c''(e^*))$. Aqui: $\beta^* = 1/(1 + 1 \cdot 1 \cdot 1) = 1/2$. ✓ O fator $\rho \sigma^2 c''$ mede precisamente o **trade-off risco-incentivo**: aumentar $\beta$ alinha incentivo (IC força $e^* = \beta$), mas aumenta variância do pagamento (custa prêmio de risco $\rho \sigma^2 \beta^2/2$). $\beta^* < 1$ por exatamente esse fator.

3. **Resposta.** $\beta^* = 1/2$, $e^* = 1/2$, $\alpha = 0$, $\Pi^{\text{SB}} = 1/4$, $\Pi^{\text{FB}} = 1/2$. Gap = $1/4$. Forma fechada: $\beta^* = 1/(1+\rho\sigma^2 c'')$.

4. **Armadilha + cross-aula.** Erros: (i) confundir CE com utilidade-CARA direto (esquece de subtrair prêmio de risco $\beta^2/2$); (ii) tratar PC como $\alpha + \beta e \geq 0$ sem subtrair custo e prêmio. **Cross-aula:** Q15 mostra que neutralidade ao risco do agente recupera FB (agente "compra" o output via franquia). Em prática: salário variável de CEOs (alto $\beta$, $\sigma^2$ baixo após filtro de mercado) vs salário fixo de servidores públicos (baixo $\beta$, output ruidoso, mensuração ruim) reflete o trade-off na vida real.

---

## Aula 8 — Q15 (🔴) — Equivalência SB = FB sob neutralidade

**Resolução.**

1. **Setup.** Agente neutro $u_A(w) = w$, principal neutro, $y = e + \varepsilon$, $E\varepsilon = 0$, $c(e)$ estritamente crescente convexa, sem restrição de wealth.

2. **Derivação (prova).**

  **(a) FB.** Principal observa $e$ e maximiza $E[y - w]$ s.a. $w - c(e) \geq \bar U$ e PC bind: $w^{\text{FB}} = c(e^{\text{FB}}) + \bar U$. Maximiza em $e$: $\max_e e - c(e^{\text{FB}}) - \bar U \Rightarrow e^{\text{FB}}: 1 = c'(e^{\text{FB}})$. Lucro: $\pi^{\text{FB}} = e^{\text{FB}} - c(e^{\text{FB}}) - \bar U$.

  **(b) Construção do contrato pivô.** Defina $w(y) = y - F$ com $F$ a determinar.

  **(i) IC.** Agente recebe $w(y) - c(e) = y - F - c(e)$, espera $E[y - F - c(e)] = e - F - c(e)$. Maximiza em $e$: $1 = c'(e^*)$, mesma CPO que FB. Logo $e^* = e^{\text{FB}}$. ✓

  **(ii) PC.** $E[w] - c(e^*) = e^{\text{FB}} - F - c(e^{\text{FB}}) \geq \bar U$. Bind: $F = e^{\text{FB}} - c(e^{\text{FB}}) - \bar U = \pi^{\text{FB}}$.

  **(iii) Lucro do principal.** $E[y - w] = E[y] - E[y - F] = F = \pi^{\text{FB}}$. ✓

  **(c) Unicidade.** Esse contrato pivô atinge FB. Como SB ≤ FB sempre (mais restrição), e SB ≥ pivô = FB, conclui-se SB = FB. $\blacksquare$

  **(d) Discussão.** A neutralidade do agente significa que **o risco do output não custa nada para ele**: princpal pode "vender-lhe" todo o output e cobrar uma franquia fixa $F$ ex-ante. Agente fica com todo o resíduo — internaliza completamente o efeito de seu esforço sobre $y$. Não há trade-off risco-incentivo porque o agente é indiferente ao risco. Quando agente é avesso ao risco (Q14), $w(y) = y - F$ implica que $\text{Var}(w) = \sigma^2$ — agente sofre com o risco e exige prêmio (PC fica mais caro). Para diminuir prêmio, principal reduz $\beta < 1$ (compartilha risco), mas isso enfraquece IC. Trade-off é genuíno apenas com aversão.

3. **Resposta.** Itens (a), (b), (c), (d) acima. SB = FB.

4. **Armadilha + cross-aula.** Erro: aluno tenta resolver SB e FB separadamente sem perceber a coincidência. Construção do "contrato pivô" $w(y) = y - F$ é a chave — bonita porque elimina o lagrangiano de IC. **Cross-aula:** este resultado **explica** por que franquias dedutíveis em seguros (DEKO em automóveis, dedutível em planos de saúde) são instrumento canônico de implementação SB ≈ FB para tipos quase-neutros. **Aula 9** (sinalização): se agente revela tipo via educação ($\theta$ verdadeiro), ele pode até pagar custo educacional positivo precisamente porque consegue extrair "renda informacional" no equilíbrio separador.

---

## Aula 9 — Q16 (🟢) — Spence cálculo

**Resolução.**

1. **Setup.** $\theta_L = 4, \theta_H = 12$, $c_L(e) = 3e$, $c_H(e) = e$.

2. **Derivação.**

  **(a) IC.**

  IC$_H$: $\theta_H - c_H(e^*) \geq \theta_L \Rightarrow 12 - e^* \geq 4 \Rightarrow e^* \leq 8$.

  IC$_L$: $\theta_L \geq \theta_H - c_L(e^*) \Rightarrow 4 \geq 12 - 3 e^* \Rightarrow 3 e^* \geq 8 \Rightarrow e^* \geq 8/3$.

  **(b) Intervalo.** $e^* \in [8/3, 8]$.

  **(c) Cho-Kreps.** Selecionar **menos custoso para tipo $H$**: $e^*_{\min} = 8/3 \approx 2{,}67$. Esse é o equilíbrio único sobrevivente ao critério intuitivo.

  **(d) DWL.**

  - **First-best.** Tipos $L$ e $H$ pagos $\theta_L = 4$ e $\theta_H = 12$ sem educação. Utilidade: $u_L^{\text{FB}} = 4 - 0 = 4$; $u_H^{\text{FB}} = 12 - 0 = 12$.

  - **Equilíbrio Spence ($e^* = 8/3$).** Tipo $L$ tem $e_L = 0$ (não educa, pago $\theta_L = 4$): $u_L = 4$. Tipo $H$ tem $e_H = 8/3$, pago $\theta_H = 12$, custo $c_H(8/3) = 8/3$. $u_H = 12 - 8/3 = 28/3 \approx 9{,}33$.

  - **DWL por tipo.** $\Delta u_L = 0$ (tipo baixo indiferente). $\Delta u_H = 12 - 28/3 = 8/3 \approx 2{,}67$. Em economia com proporção $\lambda^H$ de tipos altos: DWL agregada = $\lambda^H \cdot 8/3$.

3. **Resposta.** $e^* = 8/3$ (Cho-Kreps); DWL = $8/3$ por tipo $H$.

4. **Armadilha + cross-aula.** Erros: (i) selecionar $e^* = 8$ (extremo errado do intervalo) — esse é o pooling separador "caro demais"; (ii) Misturar IC$_H$ com IC$_L$ no sinal. **Cross-aula:** Aula 8 (R-S) é screening (firma desenha menus); Aula 9 (Spence) é signaling (agente educa-se). Ambos são respostas a SA, com instrumentos diferentes. Caso brasileiro: ENADE como sinal de qualidade de instituição de ensino — empresas usam para selecionar candidatos.

---

## Aula 9 — Q17 (🟡) — Single-crossing

**Resolução.**

1. **Setup.** $U = w - C(s, \theta)$. Single-crossing: $\partial^2 C/\partial s\, \partial \theta < 0$.

2. **Derivação.**

  **(a) Indiferenças se cruzam no máximo uma vez.** Inclinação da indiferença no plano $(s, w)$: $dw/ds = \partial C/\partial s$. Sob single-crossing, $\partial C/\partial s$ decresce em $\theta$. Logo, para $\theta_L < \theta_H$, a inclinação da indiferença de $\theta_L$ é maior que a de $\theta_H$ em qualquer ponto — graficamente, indiferença de $\theta_L$ é mais íngreme que de $\theta_H$. Duas curvas com inclinações que **sempre satisfazem** essa ordem (íngreme vs rasa) **se cruzam exatamente uma vez** (ou não cruzam). Esboço: dois traços crescentes em $(s,w)$, o de $\theta_L$ mais inclinado, cruzando o de $\theta_H$ em um ponto.

  **(b) Exemplo.** $C(s, \theta) = s^2/\theta$. $\partial C/\partial s = 2s/\theta$. $\partial^2 C/\partial s\, \partial \theta = -2s/\theta^2 < 0$ para $s > 0$. ✓ Satisfaz.

  **(c) Contraexemplo.** $C(s, \theta) = s^2 + \theta s$. $\partial C/\partial s = 2s + \theta$. $\partial^2 C/\partial s\, \partial \theta = 1 > 0$. **Falha** (sinal oposto). Tipos altos têm **mais** custo marginal de sinalização, não menos. Resultado: equilíbrio separador puro **não existe** porque tipos altos não conseguem sinalizar de forma menos custosa que tipos baixos — qualquer nível $s^*$ é mais barato para o baixo, tipos altos não conseguem distinguir-se. Equilíbrio Bayesiano só pode ser pooling (todos $s = 0$, salário = expectativa).

  **(d) Conexão screening Mussa-Rosen 1978.** Em screening, principal oferece menu de contratos $\{(q_\theta, t_\theta)\}_\theta$. Single-crossing garante que IC adjacente ($\theta$ não imita $\theta - \Delta\theta$) é suficiente para todas as IC — isto é, IC global se reduz a IC local (Myerson 1981 em mecanismos). Sem single-crossing, IC global é não-trivial; pode haver "pulando" tipos não-adjacentes.

3. **Resposta.** Itens (a)-(d) acima. Single-crossing é *sine qua non* para separação puro.

4. **Armadilha + cross-aula.** Erro: aluno calcula $\partial^2/\partial \theta\,\partial s$ (igual por simetria de Schwarz, tudo bem) mas erra sinal pelo cuidado com convenções. **Cross-aula:** Q19 (Roth 1982) sobre matching usa propriedade análoga (substituibilidade) para garantir DA estável. Aplicação: regulação de educação superior — bolsas mérito-puro (sinal) vs need-based (subsidiar todos) tem trade-off de SA.

---

## Aula 9 — Q18 (🟡) — DA execução 3×3

**Resolução.**

1. **Setup.** Preferências dadas. Executar DA-firmas-propondo, depois DA-trabalhadores-propondo.

2. **Derivação.**

  **(a) DA com firmas propondo.**

  - **Rodada 1.** $F_1$ propõe $T_2$ (1ª). $F_2$ propõe $T_1$ (1ª). $F_3$ propõe $T_1$ (1ª).
    - $T_1$ recebe $F_2, F_3$. $T_1$ prefere $F_3 > F_1 > F_2$. Mantém **$F_3$**, rejeita $F_2$.
    - $T_2$ recebe $F_1$. Mantém.
    - $T_3$ recebe ninguém.
  - **Rodada 2.** $F_2$ rejeitada → propõe próxima: $T_2$ (2ª).
    - $T_2$ tem $F_1$ provisório. Compara $F_1$ vs $F_2$: $T_2$ prefere $F_1 > F_3 > F_2$. Mantém $F_1$, rejeita $F_2$.
  - **Rodada 3.** $F_2$ rejeitada novamente → propõe $T_3$ (3ª).
    - $T_3$ recebe $F_2$. Aceita (única proposta até agora; e $T_3$ prefere $F_2 > F_1 > F_3$, $F_2$ é 1ª). Mantém **$F_2$**.
  - **Estabilização.** Ninguém mais rejeitado. Pareadas finais: $(F_1, T_2)$, $(F_2, T_3)$, $(F_3, T_1)$.

  **(b) Estabilidade $\mu^F$.** Para cada par não-matched, verificar:
  - $(F_1, T_1)$: $F_1$ tem $T_2$ (1ª) > $T_1$ (2ª); $F_1$ não desviaria. ✓ Estável.
  - $(F_1, T_3)$: $F_1$ tem $T_2$ > $T_3$ (3ª); ✓.
  - $(F_2, T_1)$: $F_2$ prefere $T_1$ a $T_3$. Mas $T_1$ tem $F_3$ (1ª); $T_1$ prefere $F_3 > F_2$. ✓.
  - $(F_2, T_2)$: $F_2$ prefere $T_2$ (2ª) a $T_3$; mas $T_2$ prefere $F_1$ a $F_2$. ✓.
  - $(F_3, T_2)$: $F_3$ prefere $T_1$ (1ª) a $T_2$ (3ª) — não desviaria mesmo. ✓.
  - $(F_3, T_3)$: $F_3$ prefere $T_1$; ✓.

  Estável. ✓

  **(c) DA com trabalhadores propondo.**

  - **Rodada 1.** $T_1$ propõe $F_3$ (1ª). $T_2$ propõe $F_1$ (1ª). $T_3$ propõe $F_2$ (1ª).
    - Cada firma recebe 1 proposta, todas diferentes. $F_1$ aceita $T_2$ (1ª preferência). $F_3$ aceita $T_1$. $F_2$ aceita $T_3$.
  - **Estabilização imediata.** Pares: $(F_1, T_2), (F_3, T_1), (F_2, T_3)$.

  $\mu^T = \mu^F$! Mesmo matching.

  **(d) Knuth 1976.** Quando $\mu^F = \mu^T$, o **lattice** de matchings estáveis é degenerado a um único elemento. Logo $\mu^F$ é firm-optimal e worker-optimal **simultaneamente** — a afirmação de "trabalhadores pessimal sob DA-firmas" não tem força aqui porque só existe um estável. **Confirma** o resultado de Knuth: DA-firmas dá firm-optimal — neste caso particular, trabalhadores também recebem seus melhores; coincide.

3. **Resposta.** $\mu^F = \mu^T = \{(F_1,T_2), (F_2,T_3), (F_3,T_1)\}$. Único matching estável.

4. **Armadilha + cross-aula.** Erros: (i) pular rodadas; (ii) confundir 1ª/2ª/3ª preferência. **Cross-aula:** NRMP de medicina nos EUA usa DA-residentes-propondo desde 1998 (mudança de DA-hospitais-propondo) precisamente para favorecer o lado mais "vulnerável" (estudantes). Caso brasileiro: SISU usa algoritmo deferred acceptance modificado — students proposing.

---

## Aula 9 — Q19 (🟡) — V/F: Roth 1982 e strategy-proofness

**Resolução.**

1. **Setup.** Afirmação: ambos os lados têm verdade dominante em DA-firmas-propondo.

2. **Veredicto: FALSO.**

3. **Justificativa.** Roth (1982) provou **assimetria fundamental**: no DA com firmas propondo, é estratégia (fracamente) dominante para **firmas** reportarem verdade — porque cada firma só "ganha" por subir suas preferências (fica mais agressiva); subreportar preferência de uma trabalhadora pode pular para uma menos preferida. **Trabalhadores, por outro lado, NÃO têm verdade dominante** no DA-firmas-propondo: trabalhadores podem **manipular** rejeitando estrategicamente uma proposta inicialmente para induzir reordenação que beneficia. 

  Roth (1982) também provou um teorema mais forte: **não existe** mecanismo de matching estável que seja strategy-proof para **ambos os lados** simultaneamente (resultado de impossibilidade — análogo a Gibbard-Satterthwaite no contexto de matching). Logo, escolher quem propõe = escolher qual lado é strategy-proof.

  Na prática, NRMP (US medicina) e SISU (BR) escolheram trabalhadores/students propondo precisamente porque querem que o **lado mais vulnerável** tenha estratégia dominante de verdade.

4. **Armadilha + cross-aula.** Erro grave: aluno aceita "ambos os lados strategy-proof" porque "soa simétrico". Não é. Roth-Sotomayor 1990 §4 detalha. **Cross-aula:** mesma assimetria aparece em mecanismos de school choice (Boston vs New Orleans) — escolhas algorítmicas de quem propõe afetam manipulabilidade. Abdulkadiroğlu-Pathak-Roth (2005, *AER P&P* 95(2): 364–367; DOI: 10.1257/000282805774670167) mostram a transição de Boston (manipulável) para DA-students-propondo em NYC.

---

## Aula 9 — Q20 (🔴🔴) — DA é M-ótimo

**Resolução.**

1. **Setup.** Provar que $\mu^M$ (DA com $M$ propondo) dá a cada $m \in M$ seu match favorito entre todos os matchings estáveis.

2. **Derivação (prova).**

  **(a) Setup.** Fixe $\nu$ matching estável arbitrário. Para cada $m \in M$, dizer "$w$ é alcançável por $m$" se existe matching estável $\nu'$ com $\nu'(m) = w$.

  **(b) Indução.** Afirmação a provar: **se $w$ rejeita $m$ na rodada $k$ do DA, então $w$ não é alcançável por $m$**.

  Base ($k = 0$, antes de qualquer rejeição): trivial — não há rejeição, nada a provar.

  Indução. Suponha que para toda rejeição em rodadas $< k$, a propriedade vale. Suponha que na rodada $k$, $w$ rejeita $m$. Isto significa que $w$ recebeu proposta de algum $m' \neq m$ em $k$, e $w \succ_w m$ (ou $m'$ era seu match provisório anterior, e $w$ prefere $m'$ a $m$ pelos critérios das preferências). De forma simétrica, podemos assumir $w$ prefere $m'$ a $m$.

  Por contradição: suponha que $w$ é alcançável por $m$, i.e., existe $\nu'$ estável com $\nu'(m) = w$. Em $\nu'$, $m'$ é matched com algum $w' = \nu'(m')$. 

  **Onde está a alcançabilidade de $w'$ por $m'$?** Por hipótese de indução: em rodadas $1, ..., k-1$ do DA, $m'$ não foi rejeitado por ninguém alcançável. Logo $m'$ chegou na rodada $k$ propondo a $w$ porque, em particular, $m'$ prefere $w$ a $w'$ (algumas das preferências mais altas de $m'$ não eram alcançáveis, e ele já passou por elas). Logo $m' \succ_{m'} w'$? Não, $w \succ_{m'} w'$.

  Resumindo: temos par $(m', w)$ tal que (i) $m'$ prefere $w$ a $w' = \nu'(m')$; (ii) $w$ prefere $m'$ a $m = \nu'(w)$. Logo $(m', w)$ é **par bloqueador** de $\nu'$ — contradição com estabilidade de $\nu'$.

  Logo $w$ não é alcançável por $m$. $\blacksquare$ (afirmação)

  **(c) Conclusão.** Ao final do DA, cada $m$ está pareado com algum $w_m^*$. Por construção da indução: todas as $w$ rejeitaram $m$ ao longo do algoritmo são as **não-alcançáveis** por $m$. Logo $w_m^*$ é a **melhor** $w$ alcançável (por exclusão das piores). Como $\mu^M$ é estável (Gale-Shapley 1962), e cada $m$ recebe sua melhor $w$ alcançável, conclui-se: **$\mu^M$ é M-ótimo entre todos os estáveis**. $\blacksquare$

  **(d) Reflexão pedagógica.** O dual diz: DA com $M$ propondo é simultaneamente $W$-pessimal — cada $w$ recebe seu match **menos favorito** entre estáveis. Isso explica reformas históricas: NRMP-medicina nos EUA mudou de hospitais-propondo (1952) para residentes-propondo (1998) **não** mudando o algoritmo, mas mudando o lado proponente (Roth-Peranson 1999, *AER* 89(4): 748–780; DOI: 10.1257/aer.89.4.748). Mesma lógica em escolha de escolas em Boston (mudança 2005, Abdulkadiroğlu-Pathak-Roth 2005, *AER P&P* 95(2): 364–367; DOI: 10.1257/000282805774670167) — alterar quem propõe favorece o lado mais vulnerável (estudantes), garantindo strategy-proofness ao lado fraco e dando-lhe match preferido entre estáveis.

3. **Resposta.** Itens (a)-(d) acima. $\mu^M$ é M-ótimo via indução sobre rejeições + estabilidade.

4. **Armadilha + cross-aula.** Erros: (i) tentar prova direta sem indução — fica caótica; (ii) confundir "alcançável" com "preferida" — alcançável é definida por **algum estável existir**, não por preferência. **Cross-aula:** mesma estrutura indutiva aparece em mecanismos top-trading-cycles (Roth-Sönmez-Ünver 2004, "Kidney Exchange", *Quarterly Journal of Economics* 119(2): 457–488; DOI: 10.1162/0033553041382157) para transplante de rins. **Aula 7** (VCG): também tem strategy-proofness por construção, mas em ambiente quase-linear (não-matching).

---

## Conferências numéricas críticas (resumo)

| Q | Verificação | OK? |
|---|---|---|
| Q1 | $\det A = 0$, rank 2 (não 3) — confirma incompletude | ✓ |
| Q3 | $\theta_S = 2/3, \theta_B = -2/3$; $q^C = 0{,}70$; $p^* = (0{,}35;\,0{,}60)$; $p^* \cdot D^C = 0{,}70$ | ✓ |
| Q6 | $q^{\text{priv}} = 12, q^{\text{soc}} = 10, t^* = 4 = d, \text{DWL} = 8$ | ✓ |
| Q8 | $G^{\text{soc}} = 8, G^{\text{Nash}} = 6$ (canto: $g_2 = 0$) | ✓ |
| Q10 | $h_1^{\text{soc}} \approx 52{,}38, h_1^{\text{Nash}} \approx 81{,}48$ — sobreexploração ~55% | ✓ |
| Q12 | $p^* = 0$ (unraveling) | ✓ |
| Q14 | $\beta^* = 1/2$, $\alpha = 0$, $\Pi^{\text{SB}} = 1/4$, $\Pi^{\text{FB}} = 1/2$; bate H-M 1987 | ✓ |
| Q16 | $e^* = 8/3$ (Cho-Kreps); DWL = 8/3 por tipo $H$ | ✓ |
| Q18 | $\mu^F = \mu^T$ — único estável | ✓ |

## Distribuição de calibre / tipo (resumo)

| Aula | 🟢 | 🟡 | 🟡 | 🟡 | 🔴 |
|---|---|---|---|---|---|
| 6 | Q1 (numérico) | Q2 (V/F) | Q3 (numérico replica) | Q4 (prova curta) | Q5 (aberta-discursiva) |
| 7 | Q6 (numérico Pigou) | Q7 (V/F) | Q8 (numérico Samuelson) | Q9 (prova VCG) | Q10 (aberta + numérico) |
| 8 | Q11 (diagnóstico) | Q12 (manipulação literal) | Q13 (V/F) | Q14 (numérico CARA) | Q15 (prova SB=FB) |
| 9 | Q16 (numérico Spence) | Q17 (manipulação literal) | Q18 (numérico DA) | Q19 (V/F) | Q20 (prova DA M-ótimo) |

**Cross-20:** ~7 numéricos · ~3 manipulação literal · 4 V/F · 5 provas curtas · 2 abertas/discursivas (Q5, Q10).
