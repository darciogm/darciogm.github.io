# Exercícios Avaliativos — Aula 2

**Tema:** UMP, EMP e Dualidade (Marshalliana, Hicksiana, Roy, Shephard)
**Calibre:** 1 🟢 + 3 🟡 + 2 🔴 (nesta ordem)
**Tempo-alvo:** 2h30–3h
**Formato:** Múltipla escolha pura, auto-grade (uma correta por sub-item)
**Prazo:** **quarta 06/05 às 18h BRT** (calendário unificado Aula 1 ∪ Aula 2)
**Gabarito:** libera quinta 07/05 · 00:00 BRT

> **Orientações.** Cada exercício é autocontido: leia o enunciado, responda aos sub-itens, e **só então** consulte o gabarito 5-passos ao final (libera em 07/05). Distratores são plausíveis — se você errou, consiga articular *por que* o distrator parecia razoável. Esse é o aprendizado.

> **Pré-requisito respeitado.** Toda derivação pedida aqui usa exclusivamente o ferramental da Aula 2 — UMP, EMP, Roy, Shephard, identidades recíprocas, concavidade/homogeneidade de \(e\). **A equação de Slutsky é Aula 3** e não aparece como exigência nestes exercícios. Onde o tema é tangenciado (Ex 5 e gabarito 4), fica como *ponte* declarada.

---

## Exercício 1 🟢 — UMP em Cobb-Douglas: tangência, parcelas, verificação

**Enunciado.** Um consumidor tem preferência em \(\mathbb{R}^2_{++}\) representada por

\[
u(x_1, x_2) = x_1^{1/3}\,x_2^{2/3}.
\]

Enfrenta preços \(p = (p_1, p_2) = (3, 2)\) e renda \(m = 36\).

### (a) A condição de tangência no ótimo interior (CPO do UMP) estabelece:

- (i) \(\text{TMS}_{12} = (p_1 + p_2)/(p_1 - p_2)\).
- (ii) \(\text{TMS}_{12} = p_1/p_2\). **← CORRETA**
- (iii) \(\text{TMS}_{12} = p_2/p_1\).
- (iv) \(\text{TMS}_{12} = \lambda\,(p_1 - p_2)\).
- (v) \(\text{TMS}_{12} = u_1\cdot u_2\).

### (b) A demanda Marshalliana \(x_1^M(p, m)\) é:

- (i) \(x_1^M = 12\).
- (ii) \(x_1^M = 4\). **← CORRETA**
- (iii) \(x_1^M = 8\).
- (iv) \(x_1^M = 24\).
- (v) \(x_1^M = 2\).

### (c) A parcela de gasto em bem 1, \(s_1 = p_1 x_1^M/m\), vale:

- (i) \(s_1 = 1/3\). **← CORRETA**
- (ii) \(s_1 = 2/3\).
- (iii) \(s_1 = 1/2\).
- (iv) \(s_1\) depende de \((p, m)\) de forma não-trivial.
- (v) \(s_1 = p_1/p_2 = 3/2\).

### (d) A função utilidade indireta \(v(p, m)\) em CD fatoriza como:

- (i) \(v = m/(p_1 + p_2)\).
- (ii) \(v = m\cdot \phi(p)\) com \(\phi(p) = \alpha^\alpha(1-\alpha)^{1-\alpha}/(p_1^\alpha\,p_2^{1-\alpha})\) — linear em \(m\), assinatura de homotetia. **← CORRETA**
- (iii) \(v = \max\{m/p_1,\; m/p_2\}\).
- (iv) \(v = m^\alpha/p_1^\alpha + m^{1-\alpha}/p_2^{1-\alpha}\).
- (v) \(v = \alpha\cdot m + (1-\alpha)\cdot m = m\).

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** UMP Cobb-Douglas resolve-se em 3 passos: tangência \(\text{TMS} = p_1/p_2\) combinada com restrição orçamentária fecha o sistema; as parcelas de gasto no ótimo são *os próprios expoentes*. Essa é a assinatura empírica da CD — motivo pelo qual toda discussão de dualidade usa CD como template de referência.

**2. Derivação.** \(\text{TMS} = (\alpha/(1-\alpha))\cdot (x_2/x_1)\). Igual a \(p_1/p_2\): \(x_2/x_1 = ((1-\alpha)/\alpha)\cdot (p_1/p_2) = (2)(3/2) = 3\). Combinada com \(3 x_1 + 2 x_2 = 36\): \(3 x_1 + 6 x_1 = 36\), \(x_1^M = 4\); \(x_2^M = 12\). Parcelas: \(s_1 = 3(4)/36 = 1/3 = \alpha\); \(s_2 = 2(12)/36 = 2/3 = 1-\alpha\). Walras confere: \(3(4) + 2(12) = 36\). ✓

**3. Armadilha.** Em (a), inverter para \(p_2/p_1\) é erro clássico de ordenação. Em (c), confundir parcela (em gasto) com quantidade. Em (d), (iv) "soma de razões" é o distrator estrutural — \(v\) em CD é *produto* (fatora como \(m\cdot \phi(p)\)), não soma; aluno que marca (iv) não internalizou a assinatura homotética.

**4. Extensão (Aulas 3/4).** Constância da parcela é o benchmark de homotetia. Parcelas variáveis nos dados (POF 2017–18 para alimentação) rejeitam CD e motivam AIDS/PIGLOG. Aula 4 (EG) explora consequências agregadas de parcelas constantes.

**5. Peer-review.** Item (d) separa "calcular" de "ler estrutura". Quem marcou (a)(b)(c) por cálculo e (d) por reconhecer a fatoração \(v = m\cdot \phi(p)\) dominou os dois registros. A verificação de Walras (\(3\cdot 4 + 2\cdot 12 = 36\)) é o filtro canônico de sanidade.

---

## Exercício 2 🟡 — CES: UMP, indireta, Marshalliana, parcela variável com preços

**Enunciado.** Considere a preferência CES em \(\mathbb{R}^2_{++}\):

\[
u(x_1, x_2) = \big(\alpha\,x_1^\rho + (1-\alpha)\,x_2^\rho\big)^{1/\rho}, \quad \alpha \in (0,1),\; \rho < 1,\; \rho \neq 0.
\]

Use \(\alpha = 1/2\), \(\rho = -1\) (portanto \(\sigma = 1/(1-\rho) = 1/2\)), preços \(p = (1, 4)\) e renda \(m = 10\).

**Fórmula fechada (use como atalho):**
\[
s_i(p) = \frac{\alpha_i^\sigma\,p_i^{1-\sigma}}{\sum_j \alpha_j^\sigma\,p_j^{1-\sigma}}, \qquad x_i^M = \frac{s_i\,m}{p_i}.
\]

### (a) A função indireta \(v(p, m)\) em CES genérica é:

- (i) \(v = m / \big[\alpha^\sigma\,p_1^{1-\sigma} + (1-\alpha)^\sigma\,p_2^{1-\sigma}\big]^{1/(1-\sigma)}\). **← CORRETA**
- (ii) \(v = m\cdot \alpha^\sigma p_1^\sigma + (1-\alpha)^\sigma p_2^\sigma\).
- (iii) \(v = m/(p_1^\alpha p_2^{1-\alpha})\) (sem dependência em \(\rho\)).
- (iv) \(v = m^\sigma\cdot (p_1 + p_2)\).
- (v) \(v\) não tem forma fechada em CES.

### (b) Com \(\sigma = 1/2\), \(\alpha = 1/2\) e \(p = (1, 4)\), a parcela \(s_1\) vale:

- (i) 2/3.
- (ii) 1/2.
- (iii) 1/3. **← CORRETA**
- (iv) 3/4.
- (v) 1/4.

### (c) Logo \(x_1^M\) nesse ponto vale aproximadamente:

- (i) 10.
- (ii) 6,67.
- (iii) 5.
- (iv) 2,5.
- (v) \(\approx 3{,}33\). **← CORRETA**

### (d) A parcela \(s_2\) nesse ponto é:

- (i) 1/3.
- (ii) 1/2.
- (iii) 2/3. **← CORRETA**
- (iv) 1/4.
- (v) 3/4.

### (e) Em CES com \(\sigma = 1/2 < 1\) (bens complementares), a parcela no bem **caro** \(p_2 = 4\) é:

- (i) Maior que no bem barato — \(s_2 = 2/3 > s_1 = 1/3\). **← CORRETA**
- (ii) Igual ao bem barato — em CES simétrica (\(\alpha = 1/2\)), parcelas são sempre iguais.
- (iii) Menor — bens complementares geram parcela decrescente com preço.
- (iv) Indeterminado sem conhecer renda.
- (v) A pergunta não se aplica em CES — só em preferências homotéticas.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Em CES, a Marshalliana tem forma fechada \(x_i^M = s_i(p)\cdot m/p_i\) com \(s_i(p) = \alpha_i^\sigma p_i^{1-\sigma}/\sum_j \alpha_j^\sigma p_j^{1-\sigma}\). A parcela *varia com preços* quando \(\sigma \neq 1\). Esse é o diagnóstico empírico central: parcelas constantes ⇒ CD; parcelas crescentes em preço ⇒ CES complementar (\(\sigma < 1\)); decrescentes em preço ⇒ CES substituta (\(\sigma > 1\)).

**2. Derivação.** Com \(\alpha = 1/2\), \(\sigma = 1/2\), \(\alpha^\sigma = (1/2)^{1/2} \approx 0{,}7071\); \(p_i^{1-\sigma} = p_i^{1/2}\). Denominador comum: \(0{,}7071\cdot 1 + 0{,}7071\cdot 2 = 0{,}7071\cdot 3\). \(s_1 = (0{,}7071\cdot 1)/(0{,}7071\cdot 3) = 1/3\); \(s_2 = 2/3\). \(x_1^M = s_1\,m/p_1 = (1/3)(10)/1 = 10/3 \approx 3{,}33\); \(x_2^M = (2/3)(10)/4 = 5/3\). Walras: \(1\cdot (10/3) + 4\cdot (5/3) = 10/3 + 20/3 = 10 = m\). ✓

**3. Armadilha.** A intuição ingênua "preço subiu, parcela cai" é *falsa* em bens complementares (\(\sigma < 1\)). Dois bens em proporção semi-rígida ⇒ alta de \(p_2\) obriga o consumidor a gastar relativamente mais em \(p_2\) (porque substituir é caro). Armadilha típica em (e): escolher (iii) por reflexo. Regra operacional: em CES, \(s_i\) aumenta com \(p_i\) quando \(\sigma < 1\) e diminui quando \(\sigma > 1\); só em \(\sigma = 1\) (CD) \(s_i\) é constante.

**4. Extensão (Aula 3).** A elasticidade-preço compensada é \(\varepsilon^c_{ii} = -(1-s_i)\sigma\). Aqui \(\varepsilon^c_{11} = -(1-1/3)(1/2) = -1/3\) — "10% alta em \(p_1\) reduz \(h_1\) em 3,33%". Essa fórmula conecta CES a política comercial (Feenstra 1994; Broda-Weinstein 2006).

**5. Peer-review.** O exercício testa *identificação* do sentido de \(\sigma\) vs. parcela. Um aluno que marcou (a-i), (b-iii), (c-v), (d-iii), (e-i) saiu fluentíssimo. Errar (e) e marcar (iii) é sinal de que o aluno ainda pensa "preço caro = gasto cai" — precisa rever o sentido de \(\sigma\) na monitoria 1. Risco residual: a convenção \(\sigma = 1/(1-\rho)\) é a padrão em J-R/N&S; alguns textos usam \(\sigma = 1/(\rho-1)\) ou \(\sigma = \rho/(1-\rho)\) — conferir antes de comparar com referências externas.

---

## Exercício 3 🟡 — EMP e Lema de Shephard em Cobb-Douglas 3D

**Enunciado.** Um consumidor tem preferência em \(\mathbb{R}^3_{++}\) representada por

\[
u(x_1, x_2, x_3) = x_1^{1/2}\,x_2^{1/4}\,x_3^{1/4},
\]

e deseja atingir \(\bar u = 4\). Preços \(p = (1, 2, 4)\).

**Fórmula fechada (use como atalho):**
\[
e(p, \bar u) = K\,\bar u\,\prod_i p_i^{\alpha_i}, \quad K = \frac{1}{\prod_i \alpha_i^{\alpha_i}}, \qquad h_i(p, \bar u) = \alpha_i\,\frac{e}{p_i}.
\]

### (a) A constante \(K\) nesse problema vale aproximadamente:

- (i) \(K \approx 1{,}41\).
- (ii) \(K \approx 2{,}83\). **← CORRETA**
- (iii) \(K = 1\).
- (iv) \(K = 4\).
- (v) \(K \approx 0{,}35\).

### (b) O valor de \(e(p, \bar u)\) é aproximadamente:

- (i) \(e \approx 11{,}3\).
- (ii) \(e \approx 19{,}0\). **← CORRETA**
- (iii) \(e = 16\).
- (iv) \(e = 8\).
- (v) \(e = 32\).

### (c) Aplicando Shephard para obter \(h_2\), a fórmula direta é:

- (i) \(h_2 = e/p_2\).
- (ii) \(h_2 = \alpha_2\cdot e/p_2 = (1/4)\cdot e/2\). **← CORRETA**
- (iii) \(h_2 = e - p_1 - p_3\).
- (iv) \(h_2 = \bar u/p_2\).
- (v) Shephard não se aplica em 3D.

### (d) O valor numérico de \(h_2\) é aproximadamente:

- (i) \(h_2 \approx 1{,}4\).
- (ii) \(h_2 = 4\).
- (iii) \(h_2 \approx 2{,}4\). **← CORRETA**
- (iv) \(h_2 = 8\).
- (v) \(h_2\) não está definido.

### (e) A verificação \(u(h_1, h_2, h_3) = \bar u\) com os valores calculados (\(h_1 \approx 9{,}5\), \(h_2 \approx 2{,}4\), \(h_3 \approx 1{,}2\)) dá:

- (i) \(\bar u = 4\) exatamente (a menos de erro numérico). **← CORRETA**
- (ii) Aproximadamente \(2\bar u\), com fator-2 oculto.
- (iii) \(\bar u/2\) — consequência de expoentes fracionários.
- (iv) \(\bar u^{1/3}\) (apenas a média geométrica).
- (v) Depende dos preços; verificação varia com \(p\).

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** CD em \(n\) dimensões: \(e(p, \bar u) = K\,\bar u\,\prod p_i^{\alpha_i}\) com \(K = 1/\prod \alpha_i^{\alpha_i}\). Shephard: \(h_i = \alpha_i\,e/p_i\). A fórmula fechada generaliza o caso 2D trivialmente.

**2. Derivação.** \(K = 1/((1/2)^{1/2}(1/4)^{1/4}(1/4)^{1/4})\). \((1/2)^{1/2} \approx 0{,}7071\); \((1/4)^{1/4} \approx 0{,}7071\). Produto: \(0{,}7071^3 \approx 0{,}3536\). \(K = 1/0{,}3536 \approx 2{,}828\). \(2^{1/4} \approx 1{,}189\); \(4^{1/4} \approx 1{,}414\). \(e = 2{,}828\cdot 4\cdot 1\cdot 1{,}189\cdot 1{,}414 = 11{,}31\cdot 1{,}682 \approx 19{,}02\). \(h_1 = (1/2)(19{,}02)/1 \approx 9{,}51\); \(h_2 = (1/4)(19{,}02)/2 \approx 2{,}378\); \(h_3 = (1/4)(19{,}02)/4 \approx 1{,}189\). Verificação: \(u(h) = 9{,}51^{1/2}\cdot 2{,}378^{1/4}\cdot 1{,}189^{1/4} \approx 3{,}084\cdot 1{,}241\cdot 1{,}044 \approx 4{,}00 = \bar u\). ✓ Walras: \(1(9{,}51) + 2(2{,}378) + 4(1{,}189) = 9{,}51 + 4{,}756 + 4{,}756 \approx 19{,}02\). ✓

**3. Armadilha.** O aluno pode tentar Lagrangiano com 4 CPOs e se perder em álgebra. Atalho: fórmula fechada CD + Shephard. A armadilha oposta é aplicar Shephard sem calcular \(K\) corretamente, errando por fator constante. Item (a) com \(K\approx 1{,}41\) é o erro de calcular só \((1/2)^{-1/2} \approx 1{,}414\) sem multiplicar pelos outros fatores.

**4. Extensão.** Em dimensões \(n \geq 3\), a estrutura multiplicativa de CD permite generalização limpa. Ubiquidade de CD em equilíbrio geral vem da escala trivial em \(n\). Em aplicações CGE (Computable General Equilibrium), CD é muitas vezes o default para funções consumer-agent.

**5. Peer-review.** Exercício puramente aritmético — testa se o aluno decorou a fórmula fechada em 2D e sabe estender para 3D. Quem chega sem \(K\) e tenta Lagrangiano, demora 30 min; quem usa atalho, 5 min. A verificação \(u(h) = \bar u\) é o filtro de sanidade final. Risco residual: \(K\) é numericamente sensível a pequenos erros nos expoentes fracionários; conferir em cada potência antes de multiplicar.

---

## Exercício 4 🟡 — Roy aplicado a indireta log-linear (PIGLOG-lite)

**Enunciado.** Um consumidor tem função utilidade indireta

\[
v(p, m) = \exp\!\left[\ln m - 0{,}3\ln p_1 - 0{,}5\ln p_2 - 0{,}2\ln p_3\right] = \frac{m}{p_1^{0{,}3}\,p_2^{0{,}5}\,p_3^{0{,}2}}.
\]

Esta é a forma CD em logs — PIGLOG em sua forma mais simples.

### (a) Aplicando Roy, \(x_1^M(p, m)\) é:

- (i) \(x_1^M = 0{,}3\cdot m/p_1\). **← CORRETA**
- (ii) \(x_1^M = 0{,}5\cdot m/p_1\).
- (iii) \(x_1^M = m/p_1\).
- (iv) \(x_1^M = 0{,}7\cdot m/p_1\).
- (v) \(x_1^M = 0{,}3\cdot m\) (sem divisão por preço).

### (b) A parcela de gasto \(s_2 = p_2 x_2^M/m\) é:

- (i) 0,3.
- (ii) 0,5. **← CORRETA**
- (iii) 0,2.
- (iv) 1,0.
- (v) Depende de \(p\).

### (c) Em \(m = 100\), \(p = (1, 2, 5)\), qual é \(v\)?

- (i) \(v = 100\).
- (ii) \(v \approx 12{,}5\).
- (iii) \(v \approx 51{,}2\). **← CORRETA**
- (iv) \(v = 100/(1 + 2 + 5) = 12{,}5\).
- (v) \(v = 100^{0{,}5}/(1\cdot 2\cdot 5)^{0{,}2}\).

### (d) Se \(p_1\) sobe de 1 para 1,1 (alta de 10%), \(v\) cai aproximadamente:

- (i) 10% — linear no preço.
- (ii) 3% — proporcional à parcela \(s_1 = 0{,}3\). **← CORRETA**
- (iii) 30% — proporcional a \(1/s_1\).
- (iv) Não muda — indireta é homogênea grau 0.
- (v) Depende de \(p_2, p_3\) de forma não-linear.

### (e) Sobre a forma dessa preferência, qual afirmação **é verdadeira**?

- (i) \(u\) é Cobb-Douglas com expoentes permutados \((0{,}5; \, 0{,}3; \, 0{,}2)\) — a indireta só "esconde" a ordem.
- (ii) \(u\) é Leontief com coeficientes \((0{,}3; \, 0{,}5; \, 0{,}2)\) — a soma 1 sugere pesos de proporção fixa.
- (iii) \(u\) é CES com \(\sigma \neq 1\) — a presença de expoentes fracionários na indireta identifica \(\sigma\).
- (iv) A preferência é **homotética** (\(v = m\cdot \phi(p)\), linear em \(m\)); a primal correspondente é Cobb-Douglas \(u = x_1^{0{,}3}\,x_2^{0{,}5}\,x_3^{0{,}2}\), com expoentes *alinhados a \(p_i\)* exatamente como na fórmula de \(v\). **← CORRETA**
- (v) A fórmula não representa preferência bem-definida (viola quasiconcavidade).

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** Roy aplicado a \(v\) em forma log-linear é atalho: coeficiente negativo de \(\ln p_i\) na fórmula é diretamente a *parcela* \(s_i\). Essa é a lógica empírica de PIGLOG (Muellbauer 1976): parametrizar \(\ln v\) como log-linear em \(\ln m\) e \(\ln p_i\) torna demanda Marshalliana *estimável por OLS*.

**2. Derivação.** \(\partial v/\partial p_1 = -0{,}3\,v/p_1\); \(\partial v/\partial m = v/m\). Roy: \(x_1^M = -(-0{,}3\,v/p_1)/(v/m) = 0{,}3\,m/p_1\). Parcela: \(s_1 = 0{,}3\). Idem \(s_2 = 0{,}5\), \(s_3 = 0{,}2\); soma \(= 1\). ✓ Para (c): \(v = 100/(1^{0{,}3}\cdot 2^{0{,}5}\cdot 5^{0{,}2}) = 100/(1\cdot 1{,}414\cdot 1{,}380) = 100/1{,}951 \approx 51{,}2\).

**3. Armadilha.** Item (d): o efeito de preço sobre \(v\) é *proporcional à parcela* — não a "1/preço" nem a "1". Em \(v = m\cdot p_1^{-s_1}\cdot (\ldots)\), uma alta de \(\Delta p_1/p_1 = 10\%\) induz queda de \(s_1\cdot 10\% = 3\%\) em \(v\). Armadilha: marcar 10% por reflexo.

**4. Extensão (Aula 3 + estimação).** AIDS (Deaton-Muellbauer 1980) parametriza \(\ln e = \alpha_0 + \sum_i \alpha_i\ln p_i + (1/2)\sum_{ij}\gamma_{ij}\ln p_i\ln p_j + \beta\ln m\,\ldots\). Via Shephard/dualidade, \(s_i = \alpha_i + \sum_j \gamma_{ij}\ln p_j + \beta_i\ln m\) — estimável por regressão linear. A versão PIGLOG-simples aqui é o caso \(\gamma_{ij} = 0\), \(\beta_i = 0\).

**5. Peer-review.** Item (e) exige leitura *estrutural* da indireta. (i) é distrator apertado — permuta os expoentes \((0{,}3; 0{,}5; 0{,}2) \to (0{,}5; 0{,}3; 0{,}2)\), que *não* é a primal correta, pois o expoente de \(x_i\) em \(u\) tem que bater com o expoente de \(p_i\) (com sinal trocado) em \(v\). (iv) é a resposta certa porque nomeia a característica estrutural (homotetia + fator de renda linear em \(m\)) *e* dá a primal com expoentes corretamente alinhados. Em prova ANPEC, reconhecer esse alinhamento em 30s é calibre de qualificação.

---

## Exercício 5 🔴 — Dualidade completa: identidades recíprocas, Shephard cruzado e simetria

**Enunciado.** Em \(\mathbb{R}^2_{++}\), considere \(u(x_1, x_2) = x_1^{2/3}\,x_2^{1/3}\), preços \(p = (p_1, p_2) = (1, 4)\) e renda \(m = 12\).

### (a) A demanda Marshalliana e a indireta são:

- (i) \(x^M = (8, 1)\), \(v = 4\). **← CORRETA**
- (ii) \(x^M = (6, 3/2)\), \(v \approx 3{,}8\).
- (iii) \(x^M = (4, 2)\), \(v \approx 3{,}18\).
- (iv) \(x^M = (12, 0)\), \(v \approx 5{,}24\).
- (v) \(x^M = (10, 1/2)\).

### (b) Com \(\bar u = v = 4\), as Hicksianas e o gasto mínimo:

- (i) \(h = (8, 1)\), \(e = 12\). **← CORRETA**
- (ii) \(h = (4, 2)\), \(e = 12\).
- (iii) \(h = (6, 3/2)\), \(e = 12\).
- (iv) \(h = (8, 1)\), \(e = 8\).
- (v) Impossível sem CPO do EMP explícito.

### (c) Verificando as identidades da dualidade:

- (i) Ambas falham — dualidade não vale em CD assimétrica.
- (ii) \(x^M = h\) vale; \(e = m\) falha.
- (iii) \(e = m\) vale; \(x^M = h\) falha.
- (iv) Ambas valem: \(x^M = h = (8, 1)\) e \(e = m = 12\). **← CORRETA**
- (v) Valem apenas em preferências homotéticas.

### (d) Aplicando Shephard duas vezes, calcule \(\partial h_1/\partial p_2\) **diretamente** (cross-price hicksiano — *pura dualidade*, sem Slutsky). Use o item (b) para extrair \(h_1(p, \bar u)\) como função explícita de \(p_1\) e \(p_2\); em seguida avalie em \(\bar u = 4\), \(p = (1, 4)\):

- (i) \(\partial h_1/\partial p_2 = 0\) — CD não tem efeito-preço cruzado.
- (ii) \(\partial h_1/\partial p_2 = 2/3\) (efeito-substituição cruzado positivo em CD). **← CORRETA**
- (iii) \(\partial h_1/\partial p_2 = -2/3\) (substituição sempre negativa).
- (iv) \(\partial h_1/\partial p_2 = 4/3\).
- (v) Shephard não permite calcular cruzado — precisa resolver o EMP em cada preço.

### (e) **Simetria de Shephard.** Pela aplicação de Young à função gasto (\(\partial^2 e/\partial p_i\partial p_j = \partial^2 e/\partial p_j\partial p_i\)) e pelo Lema de Shephard, conclui-se que:

- (i) \(\partial h_1/\partial p_2 = -\partial h_2/\partial p_1\) (anti-simetria).
- (ii) \(\partial h_1/\partial p_2 = \partial h_2/\partial p_1\) apenas em preferências homotéticas.
- (iii) \(\partial h_1/\partial p_2 = \partial h_2/\partial p_1\) sempre que \(e \in C^2\) — e neste problema ambas valem \(2/3\), o que confirma a simetria numericamente. **← CORRETA**
- (iv) A igualdade vale apenas quando \(u\) é quasicôncava estrita.
- (v) Nada segue de Young aqui — simetria exige hipótese adicional sobre o Hessiano bordado.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** Este exercício integra todo o aparato da **Aula 2**: UMP → Marshalliana → indireta → EMP → Shephard → verificação recíproca → *derivadas do gasto em preços cruzados*. Tudo permanece **dentro da dualidade** — Slutsky (que mistura Marshalliana + renda) fica para a Aula 3. Aqui, \(\partial h_i/\partial p_j\) é a *matriz de efeito-substituição pura*, obtida como Hessiano de \(e\) em \(p\).

**2. Derivação.** UMP: \(x_1^M = (2/3)(12)/1 = 8\); \(x_2^M = (1/3)(12)/4 = 1\). Walras: \(8 + 4 = 12\). ✓ \(v = 8^{2/3}\cdot 1^{1/3} = 4\). EMP: \(K = 1/((2/3)^{2/3}(1/3)^{1/3}) \approx 1{,}890\); \(e = 1{,}890\cdot 4\cdot 1^{2/3}\cdot 4^{1/3} = 7{,}56\cdot 1{,}587 \approx 12{,}00\). \(h_1 = (2/3)(12)/1 = 8\); \(h_2 = (1/3)(12)/4 = 1\). Cross-price via Shephard: com \(h_1 = (2/3)\,K\,\bar u\,p_1^{-1/3}\,p_2^{1/3}\), \(\partial h_1/\partial p_2 = (2/3)(1/3)\,K\,\bar u\,p_1^{-1/3}\,p_2^{-2/3} = (2/9)(1{,}890)(4)(1)(4^{-2/3}) \approx 2/3\). Analogamente, \(h_2 = (1/3)\,K\,\bar u\,p_1^{2/3}\,p_2^{-2/3}\); \(\partial h_2/\partial p_1 = (1/3)(2/3)\,K\,\bar u\,p_1^{-1/3}\,p_2^{-2/3} \approx 2/3\). **Simetria confirmada numericamente.** ✓

**3. Armadilha.** Em (d), é tentador marcar (i) "\(= 0\)" por analogia espúria com o fato de que \(x_1^M\) Marshalliana *não* depende de \(p_2\) em CD. Mas a Hicksiana *sim* depende — ela mantém \(\bar u\) fixo, então exige recomposição quando \(p_2\) muda. A confusão Marshalliana-vs-Hicksiana aqui é cirúrgica: Marshalliana tem efeito-renda que "cancela" a cruzada (a ser visto na Aula 3 via Slutsky); Hicksiana não tem efeito-renda e a cruzada sobrevive. Em (e), o distrator (ii) "só homotética" confunde simetria de \(S\) (que vale sempre que \(e\in C^2\)) com propriedades específicas de homotetia.

**4. Extensão (Aula 3).** A matriz \(S_{ij} = \partial h_i/\partial p_j\) é *a* matriz de Slutsky compensada — simétrica (Young), semidefinida negativa (concavidade de \(e\)), e com \(Sp = 0\) (homogeneidade grau 0 de \(h\)). Na Aula 3, a equação de Slutsky justapõe \(S\) à Marshalliana via \(\partial x_i^M/\partial p_j = S_{ij} - x_j^M\,\partial x_i^M/\partial m\). Em CD, \(x_1^M\) não depende de \(p_2\), então \(0 = S_{12} - x_2^M\cdot \partial x_1^M/\partial m = 2/3 - 1\cdot(2/3)\) — cancelamento exato. Esse *é* o resultado central da próxima aula, já antecipado pelas contas feitas aqui.

**5. Peer-review.** Exercício integra as ferramentas da Aula 2 sem importar nada da Aula 3. O aluno que resolve \((x^M, v, h, e, \partial h/\partial p)\) limpa toda a dualidade. Ambiguidade residual: a distinção Hicksiana-Marshalliana em cruzadas é sutil — quem errou (d) escolhendo \(0\) provavelmente confundiu com \(\partial x_1^M/\partial p_2\) (que *é* zero em CD). Essa confusão é exatamente o que a Aula 3 vai dissipar via Slutsky. Risco residual: aluno pode se frustrar em (e) se não aceitar que simetria vem de Young "de graça" — se insistir em derivar \(h_1, h_2\) a partir de \(e\) e conferir à mão (como fizemos), a simetria vira teorema vivido. Versão mais difícil: pedir também \(\partial h_1/\partial p_1\) e verificar que é negativa (concavidade de \(e\) em \(p_1\)).

---

## Exercício 6 🔴 — Propriedades estruturais: concavidade, \(Sp=0\) e recíproca da dualidade

**Enunciado.** Considere três afirmações sobre a estrutura da dualidade UMP↔EMP:

- **A.** A matriz de efeito-substituição compensada (o nome *Slutsky* é consolidado só na Aula 3) \(S_{ij}(p, \bar u) = \partial h_i/\partial p_j\) é *simétrica*, *semidefinida negativa*, e satisfaz \(Sp = \mathbf{0}\).
- **B.** A função gasto \(e(p, \bar u)\) é *côncava* em \(p\), mesmo quando a preferência não é convexa estrita.
- **C.** Dada uma função \(e\) satisfazendo as 5 propriedades estruturais (homog. grau 1, côncava em \(p\), monotônica em \(p\) e em \(\bar u\), contínua), existe *exatamente uma* preferência cuja função gasto é \(e\) — caracterização unívoca.

### (a) Afirmação A (propriedades de S) é:

- (i) Verdadeira — as três propriedades seguem de \(e\). **← CORRETA**
- (ii) Verdadeira, exceto \(Sp = 0\) (específico a preferências homotéticas).
- (iii) Verdadeira, exceto simetria (que exige preferência diferenciável).
- (iv) Falsa — \(S\) é em geral semidef. positiva.
- (v) Falsa — \(S\) é assimétrica quando \(u\) não é quasicôncava.

### (b) Afirmação B (concavidade de \(e\) em \(p\)) é:

- (i) Verdadeira sempre — \(e\) é ínfimo de funções lineares em \(p\). **← CORRETA**
- (ii) Verdadeira apenas se \(u\) é estritamente quasicôncava.
- (iii) Verdadeira apenas em CD.
- (iv) Falsa — \(e\) é convexa em \(p\).
- (v) Depende da forma funcional.

### (c) Afirmação C (recíproca da dualidade) é:

- (i) Verdadeira — teorema da recíproca da dualidade. **← CORRETA**
- (ii) Verdadeira apenas para preferências homotéticas.
- (iii) Falsa — \(e\) não identifica preferência univocamente.
- (iv) Verdadeira mas exige também conhecer \(v\).
- (v) Verdadeira apenas em \(\mathbb{R}^2_+\).

### (d) A reconstrução geométrica de \(U(\bar u) = \{x : u(x)\geq \bar u\}\) a partir de \(e\) usa:

- (i) Integração de \(h(p, \bar u)\) em \(p\).
- (ii) \(U(\bar u) = \bigcap_{p\gg 0}\{x : p\cdot x \geq e(p, \bar u)\}\), via teorema de separação. **← CORRETA**
- (iii) Inversão direta \(x(p, \bar u) = e(p, \bar u)/p\).
- (iv) Transformação monótona de \(e\).
- (v) Sistema de \(n\) equações diferenciais.

### (e) A relevância empírica combinada de A, B e C é:

- (i) Permitem parametrizar \(e\) empiricamente (AIDS, PIGLOG) e recuperar demanda via Shephard + preferência via reconstrução convexa — base teórica de estimação estrutural. **← CORRETA**
- (ii) Curiosidades matemáticas sem consequência empírica.
- (iii) Restringem estimação empírica a casos homotéticos.
- (iv) Invalidam Roy em casos não-CD.
- (v) Consequência do axioma de continuidade, equivalente a Debreu.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** As três afirmações formam o *núcleo estrutural* da dualidade: simetria + semidef. neg. + \(Sp = 0\) para Slutsky compensada; concavidade de \(e\) em \(p\); recuperação unívoca de preferência a partir de \(e\). Núcleo teórico de Jehle-Reny §2.1 e fundação empírica de AIDS.

**2. Derivação.** *A:* \(S_{ij} = \partial^2 e/\partial p_i\partial p_j\) por Shephard; Young ⇒ simetria; concavidade de \(e\) ⇒ Hessiano semidef. neg.; homog. grau 0 de \(h\) (via Euler em \(e\)) ⇒ \(Sp = 0\). *B:* \(e = \min_{u(x)\geq\bar u} p\cdot x\); ínfimo de funções lineares em \(p\) ⇒ côncavo. Sem precisar convexidade estrita de \(u\). *C:* Teorema de Diewert (1974) / Rockafellar (1970) / Jehle-Reny 2.1: toda \(e\) com (E1–E5) vem de uma única preferência; reconstrução via intersecção de semi-espaços suporte.

**3. Armadilha.** A mais sutil é subestimar a força de C (item c): muitos acham que \(e\) é "resumo estatístico" de preferência em vez de *representação dual completa*. Marcar (c-iii) sinaliza que o aluno não assimilou a simetria estrutural UMP↔EMP.

**4. Extensão.** Diewert (1974) operacionaliza: qualquer \(e\) com (E1–E5) gera preferência "flexível" estimável. Deaton-Muellbauer (1980): AIDS via \(\ln e = \alpha_0 + \sum_i \alpha_i\ln p_i + (1/2)\sum_{ij}\gamma_{ij}\ln p_i\ln p_j + \ldots\). Shephard → demanda Marshalliana estimável por regressão linear. Fundamentação teórica está em C.

**5. Peer-review.** Exercício conceitualmente denso — faz o aluno *ver* a arquitetura em vez de aplicá-la. Risco: aluno marca por reflexo sem entender. O item (e) ancora teoria em prática (AIDS), mostrando que o aparato é operacional. Aluno que acerta (a)(b)(c)(d)(e) está pronto para welfare rigoroso (Harberger, Konüs, Willig) na Aula 3 e segue sem obstáculos.
