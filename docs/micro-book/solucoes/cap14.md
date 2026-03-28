---
title: "Soluções — Capítulo 14"
---

# Soluções dos Exercícios — Capítulo 14

[← Voltar ao Capítulo 14](../cap14/index.md)

---

## ✏️ Exercício 14.1 {#ex-14-1}

**Solução.**

**(a)** No ótimo de Pareto: \(TMS_A = TMS_B\). Com \(U_i = x_1^i x_2^i\): \(TMS_i = x_2^i/x_1^i\). Logo \(x_2^A/x_1^A = x_2^B/x_1^B\).

Com dotações totais \(\bar{x}_1 = 12\), \(\bar{x}_2 = 10\): \(x_1^B = 12 - x_1^A\), \(x_2^B = 10 - x_2^A\).

\[
\frac{x_2^A}{x_1^A} = \frac{10 - x_2^A}{12 - x_1^A}
\]

Curva de contrato: \(x_2^A(12 - x_1^A) = x_1^A(10 - x_2^A) \implies 12x_2^A - x_1^A x_2^A = 10x_1^A - x_1^A x_2^A\).

\[
\boxed{x_2^A = \frac{10}{12}x_1^A = \frac{5}{6}x_1^A}
\]

A curva de contrato é uma reta passando pela origem na Caixa de Edgeworth.

**(b)** Demandas de A: \(x_1^A = I^A/(2p_1)\), \(x_2^A = I^A/(2p_2)\), onde \(I^A = 10p_1 + 2p_2\). Normalizando \(p_2 = 1\):

\(x_1^A = (10p_1 + 2)/(2p_1)\), \(x_2^A = (10p_1 + 2)/2\).

Demandas de B: \(x_1^B = (2p_1 + 8)/(2p_1)\), \(x_2^B = (2p_1 + 8)/2\).

Market clearing (bem 1): \(x_1^A + x_1^B = 12\):

\[
\frac{10p_1 + 2}{2p_1} + \frac{2p_1 + 8}{2p_1} = 12
\]

\[
\frac{12p_1 + 10}{2p_1} = 12 \implies 12p_1 + 10 = 24p_1 \implies p_1 = 5/6
\]

Alocações: \(x_1^A = (50/6 + 2)/(10/6) = (62/6)/(10/6) = 6{,}2\), \(x_2^A = (50/6 + 2)/2 = 62/12 \approx 5{,}17\).

**(c)** Lei de Walras: \(p_1 Z^1 + p_2 Z^2 = 0\). Se o mercado 1 está em equilíbrio (\(Z^1 = 0\)), então \(Z^2 = 0\) automaticamente. ✓

**(d)** No núcleo, nenhuma coalizão pode melhorar. Para 2 agentes, o núcleo coincide com a curva de contrato entre as alocações individuais racionais. Verificando: \(U_A(6{,}2; 5{,}17) = 32{,}05 > U_A(10, 2) = 20\). \(U_B(5{,}8; 4{,}83) = 28{,}01 > U_B(2, 8) = 16\). Ambos melhoram. ✓


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-1)

---

## ✏️ Exercício 14.2 {#ex-14-2}

**Solução.**

**(a)** Se \(TMS_A \neq TMS_B\), existe troca mutuamente benéfica. Suponha \(TMS_A > TMS_B\): A valoriza o bem 1 mais que B (relativamente ao bem 2). A pode trocar bem 2 por bem 1 com B, melhorando ambos. Logo, a alocação inicial não era eficiente. Contradição. ✓

**(b)** Se \(TMST_1 \neq TMST_2\), pode-se realocar insumos entre os setores para produzir mais de um bem sem produzir menos do outro. Suponha \(TMST_1 > TMST_2\): transferir trabalho do setor 2 para o 1 (e capital na direção oposta) aumenta a produção total. Contradição com eficiência. ✓

**(c)** Se \(TMT \neq TMS\), pode-se realinhar a composição do produto e melhorar o bem-estar. Suponha \(TMS > TMT\): os consumidores valorizam o bem 1 relativamente mais que o custo de produzi-lo. Produzir mais de 1 e menos de 2 melhora o bem-estar. Contradição. ✓


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-2)

---

## ✏️ Exercício 14.3 {#ex-14-3}

**Solução.**

**(a)** \(Z^1(t\mathbf{p}) = 3(tp_2)/(tp_1) + 2(tp_3)/(tp_1) - 5 = 3p_2/p_1 + 2p_3/p_1 - 5 = Z^1(\mathbf{p})\). ✓ (grau 0). Analogamente para \(Z^2\).

**(b)** Lei de Walras: \(\sum_k p_k Z^k = 0\):

\[
p_1 Z^1 + p_2 Z^2 + p_3 Z^3 = 0
\]

Normalizando \(p_1 = 1\):

\[
(3p_2 + 2p_3 - 5) + p_2(-p_2 + p_3 + 1) + p_3 Z^3 = 0
\]

\[
Z^3 = -\frac{(3p_2 + 2p_3 - 5) + p_2(-p_2 + p_3 + 1)}{p_3}
\]

**(c)** Com \(p_1 = 1\), equilíbrio: \(Z^1 = 0\) e \(Z^2 = 0\).

\[
3p_2 + 2p_3 = 5 \tag{i}
\]

\[
-p_2 + p_3 = -1 \implies p_3 = p_2 - 1 \tag{ii}
\]

Substituindo (ii) em (i): \(3p_2 + 2(p_2 - 1) = 5 \implies 5p_2 = 7 \implies p_2 = 1{,}4\), \(p_3 = 0{,}4\).

\(\mathbf{p}^* = (1;\ 1{,}4;\ 0{,}4)\).


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-3)

---

## ✏️ Exercício 14.4 {#ex-14-4}

**Solução.**

Em concorrência perfeita:

**Eficiência na troca:** Cada consumidor \(i\) iguala \(TMS_i = p_1/p_2\). Como todos enfrentam os mesmos preços: \(TMS_A = p_1/p_2 = TMS_B\). ✓

**Eficiência na produção:** Cada firma minimiza custo igualando \(TMST = w/r\). Como todas enfrentam os mesmos preços de insumos: \(TMST_1 = w/r = TMST_2\). ✓

**Eficiência no mix:** Maximização de lucro implica \(p_k = CMg_k\) para cada bem \(k\). Logo, \(TMT = CMg_1/CMg_2 = p_1/p_2 = TMS\). ✓

Cada condição emerge naturalmente da otimização individual diante de preços uniformes — a "mão invisível" de Smith formalizada.


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-4)

---

## ✏️ Exercício 14.5 {#ex-14-5}

**Solução.**

**(a)** Equilíbrio parcial ignora interdependências: a eliminação de tarifas sobre industrializados reduz preços desses bens, mas realoca trabalho e capital entre setores. A demanda por commodities (setor não afetado diretamente) pode mudar via efeito-renda. O EP pode superestimar o ganho (ignora ajustes adversos em outros setores) ou subestimar (ignora ganhos de eficiência alocativa intersetorial).

**(b)** Três canais: (i) **Mercado de trabalho:** indústrias que perdem proteção demitem, pressionando salários em outros setores; (ii) **Mercado de insumos:** queda na demanda doméstica por insumos industriais afeta fornecedores; (iii) **Efeito-renda agregado:** consumidores pagam menos por importados, liberando renda para outros bens e serviços.

**(c)** Um modelo CGE (Computable General Equilibrium) resolve simultaneamente equilíbrio em todos os mercados. Dados necessários: SAM (Social Accounting Matrix) com fluxos entre setores, elasticidades de substituição (Armington para comércio), parâmetros de funções de produção setoriais, e distribuição de renda entre agentes. No Brasil, o GTAP e modelos do IPEA usam SAMs baseadas nas Contas Nacionais do IBGE.

**(d)** Hipóteses problemáticas para o Brasil: (i) **Pleno emprego:** o Brasil tem desemprego estrutural significativo; a liberalização pode agravar o desemprego em setores protegidos sem absorção imediata em outros. (ii) **Concorrência perfeita:** muitos setores industriais brasileiros são oligopolísticos; a abertura pode afetar comportamento estratégico (não capturado pelo modelo competitivo). (iii) **Retornos constantes:** a indústria brasileira pode ter rendimentos crescentes em alguns setores, onde a proteção permite escala.

↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-5)

---

## ✏️ Exercício 14.6 {#ex-14-6}

**Solução.**

**(a)** A Caixa de Edgeworth tem dimensões \(\bar{x} = 8 + 2 = 10\) e \(\bar{y} = 2 + 6 = 8\). A dotação inicial é o ponto \((x_A, y_A) = (8, 2)\) (equivalentemente, \((x_B, y_B) = (2, 6)\)).

A curva de indiferença de A passando pela dotação: \(U_A(8, 2) = \min(8, 4) = 4\). Essa é uma curva em L com vértice em \((4, 2)\) — a região \(\{(x, y) : \min(x, 2y) \geq 4\}\) é delimitada por \(x \geq 4\) e \(y \geq 2\).

A curva de indiferença de B passando pela dotação: \(U_B(2, 6) = 2^{1/3} \cdot 6^{2/3} \approx 1{,}26 \cdot 3{,}30 \approx 4{,}16\). Essa é uma curva suave convexa usual de Cobb-Douglas.

**(b)** Para A com preferências Leontief \(U_A = \min(x_A, 2y_A)\), no ótimo o consumidor está no vértice: \(x_A = 2y_A\). A TMS de A não é definida classicamente, mas no vértice o "preço de reserva" abrange qualquer razão de preços. Ao longo da curva de contrato, a eficiência requer que não haja trocas mutuamente benéficas.

Para B: \(TMS_B = \frac{(1/3)x_B^{-2/3}y_B^{2/3}}{(2/3)x_B^{1/3}y_B^{-1/3}} = \frac{y_B}{2x_B}\).

A eficiência de Pareto requer que A esteja no vértice de suas curvas de indiferença (caso contrário, A pode melhorar sem custo). Portanto: \(x_A = 2y_A\). Substituindo \(x_B = 10 - x_A\), \(y_B = 8 - y_A\):

\[
\boxed{x_A = 2y_A, \quad 0 \leq y_A \leq 8}
\]

Na caixa, a curva de contrato é o segmento de reta \(x_A = 2y_A\), de \((0, 0)\) a \((10, 5)\) (limitado pelas dimensões da caixa, i.e., \(x_A \leq 10\) implica \(y_A \leq 5\); e como \(y_A \leq 8\), o limite efetivo é \(y_A \leq 5\)).

**(c)** Normalizando \(p_y = 1\), seja \(p = p_x\).

**Demanda de A (Leontief):** No ótimo, \(x_A = 2y_A\). A restrição orçamentária é \(p \cdot x_A + y_A = p \cdot 8 + 2 = 8p + 2\). Substituindo \(x_A = 2y_A\):

\[
2p \cdot y_A + y_A = 8p + 2 \implies y_A = \frac{8p + 2}{2p + 1}, \quad x_A = \frac{2(8p + 2)}{2p + 1} = \frac{16p + 4}{2p + 1}
\]

**Demanda de B (Cobb-Douglas \(1/3, 2/3\)):** \(x_B = \frac{I_B}{3p} = \frac{2p + 6}{3p}\), \(y_B = \frac{2I_B}{3} = \frac{2(2p + 6)}{3}\).

**Market clearing (bem \(x\)):** \(x_A + x_B = 10\):

\[
\frac{16p + 4}{2p + 1} + \frac{2p + 6}{3p} = 10
\]

Multiplicando por \(3p(2p + 1)\):

\[
3p(16p + 4) + (2p + 6)(2p + 1) = 30p(2p + 1)
\]

\[
48p^2 + 12p + 4p^2 + 2p + 12p + 6 = 60p^2 + 30p
\]

\[
52p^2 + 26p + 6 = 60p^2 + 30p
\]

\[
8p^2 + 4p - 6 = 0 \implies 4p^2 + 2p - 3 = 0
\]

\[
p = \frac{-2 + \sqrt{4 + 48}}{8} = \frac{-2 + \sqrt{52}}{8} = \frac{-2 + 2\sqrt{13}}{8} = \frac{-1 + \sqrt{13}}{4} \approx \frac{-1 + 3{,}606}{4} \approx 0{,}651
\]

Alocações: \(y_A = \frac{8(0{,}651) + 2}{2(0{,}651) + 1} = \frac{7{,}211}{2{,}303} \approx 3{,}131\), \(x_A = 2(3{,}131) \approx 6{,}263\).

\(\boxed{p_x^* = \frac{-1 + \sqrt{13}}{4} \approx 0{,}651}\)

**(d)** Verificação: \(x_A \approx 6{,}263\) e \(2y_A \approx 6{,}263\), logo \(x_A = 2y_A\). A alocação de equilíbrio está sobre a curva de contrato. ✓


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-6)

---

## ✏️ Exercício 14.7 {#ex-14-7}

**Solução.**

**(a)** Com \(U_A = x_A + y_A\) (preferências lineares), \(TMS_A = 1\) em todos os pontos. Para B: \(TMS_B = y_B/x_B\).

Eficiência de Pareto requer que não haja troca mutuamente benéfica. Há três casos:

1. **Interior:** \(TMS_A = TMS_B \implies 1 = y_B/x_B \implies y_B = x_B\). Usando \(x_B = 8 - x_A\), \(y_B = 8 - y_A\): \(8 - y_A = 8 - x_A \implies y_A = x_A\). Portanto, qualquer alocação interior com \(y_B = x_B\) (equivalentemente \(y_A = x_A\)) é eficiente.

2. **A recebe tudo:** \((x_A, y_A) = (8, 8)\) é trivialmente eficiente (não se pode melhorar B sem piorar A, pois A tem tudo).

3. **B recebe tudo:** \((x_B, y_B) = (8, 8)\) é eficiente pelo mesmo argumento.

Além disso, alocações na fronteira da caixa com \(TMS_B \leq 1\) (lado onde \(y_B/x_B \leq 1\), i.e., \(x_A = 0\)) ou \(TMS_B \geq 1\) (\(y_A = 0\)) também são eficientes.

**(b)** Com preferências lineares, A é indiferente entre \(x\) e \(y\) — a taxa a que A está disposto a trocar é sempre 1:1. Qualquer alocação em que B já esteja no "ótimo local" (sua TMS igual à de A) ou em que B esteja em uma solução de canto é eficiente. Como A nunca "exige" uma razão de troca diferente, o conjunto eficiente é amplo: inclui a diagonal \(y_B = x_B\) e segmentos das bordas da caixa. A "flexibilidade" de A (indiferença entre os bens) expande o conjunto de Pareto.

**(c)** Normalizando \(p_y = 1\), seja \(p = p_x\).

A com preferências lineares: se \(p > 1\), A consome apenas \(x\); se \(p < 1\), apenas \(y\); se \(p = 1\), é indiferente.

B (Cobb-Douglas simétrica \(U_B = x_B y_B\)): \(x_B = I_B/(2p)\), \(y_B = I_B/2\), onde \(I_B = 4p + 4\).

Para \(p = 1\): \(I_B = 8\), \(x_B = 4\), \(y_B = 4\). Market clearing requer \(x_A + x_B = 8\) e \(y_A + y_B = 8\), logo \(x_A = 4\), \(y_A = 4\). Renda de A: \(I_A = 4(1) + 4 = 8\), utilidade de A: \(4 + 4 = 8 = I_A/p = I_A\). ✓

A é indiferente, então qualquer cesta \((x_A, y_A)\) com \(x_A + y_A = 8\) e \(x_A + x_B = 8\), \(y_A + y_B = 8\) funciona — mas a demanda de B fixa \(x_B = 4, y_B = 4\), o que determina \(x_A = 4, y_A = 4\).

Há, contudo, multiplicidade: para \(p \neq 1\), A vai a um canto. Se \(p > 1\): A compra só \(x\), \(x_A = (4p + 4)/p\), \(y_A = 0\). B: \(x_B = (4p + 4)/(2p)\), \(y_B = (4p + 4)/2\). Market clearing (bem \(x\)): \((4p+4)/p + (4p+4)/(2p) = 8 \implies (4p+4)(3)/(2p) = 8 \implies 12p + 12 = 16p \implies p = 3\).

Com \(p = 3\): \(x_A = 16/3\), \(y_A = 0\); \(x_B = 16/6 = 8/3\), \(y_B = 16/2 = 8\). Verificação: \(16/3 + 8/3 = 24/3 = 8\) ✓, \(0 + 8 = 8\) ✓.

Se \(p < 1\): A compra só \(y\), \(x_A = 0\), \(y_A = 4p + 4\). B: \(x_B = (4p+4)/(2p)\), \(y_B = (4p+4)/2\). Bem \(y\): \(4p + 4 + (4p+4)/2 = 8 \implies (4p+4)(3/2) = 8 \implies 4p + 4 = 16/3 \implies p = 1/3\).

Com \(p = 1/3\): \(x_A = 0\), \(y_A = 16/3\); \(x_B = (16/3)/(2/3) = 8\), \(y_B = 8/3\). Verificação: \(0 + 8 = 8\) ✓, \(16/3 + 8/3 = 24/3 = 8\) ✓.

\(\boxed{\text{Três equilíbrios walrasianos: } p = 1/3,\ p = 1,\ p = 3}\)

Todos estão sobre a curva de contrato (verificável: nos dois equilíbrios de canto, B está em \(y_B = x_B\) apenas no caso \(p=1\); nos outros, as alocações estão nas fronteiras da caixa, que fazem parte do conjunto eficiente).


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-7)

---

## ✏️ Exercício 14.8 {#ex-14-8}

**Solução.**

**(a)** A TMST (Taxa Marginal de Substituição Técnica) para cada setor:

Setor 1: \(q_1 = L_1^{1/2}K_1^{1/2}\). \(PMgL_1 = \frac{1}{2}L_1^{-1/2}K_1^{1/2}\), \(PMgK_1 = \frac{1}{2}L_1^{1/2}K_1^{-1/2}\).

\[
TMST_1 = \frac{PMgL_1}{PMgK_1} = \frac{K_1}{L_1}
\]

Setor 2: \(q_2 = L_2^{1/3}K_2^{2/3}\). \(PMgL_2 = \frac{1}{3}L_2^{-2/3}K_2^{2/3}\), \(PMgK_2 = \frac{2}{3}L_2^{1/3}K_2^{-1/3}\).

\[
TMST_2 = \frac{PMgL_2}{PMgK_2} = \frac{K_2}{2L_2}
\]

Eficiência na produção: \(TMST_1 = TMST_2\):

\[
\frac{K_1}{L_1} = \frac{K_2}{2L_2}
\]

Com \(L_2 = 100 - L_1\) e \(K_2 = 100 - K_1\):

\[
\frac{K_1}{L_1} = \frac{100 - K_1}{2(100 - L_1)}
\]

\[
2K_1(100 - L_1) = L_1(100 - K_1)
\]

\[
200K_1 - 2K_1 L_1 = 100L_1 - K_1 L_1
\]

\[
200K_1 - K_1 L_1 = 100L_1
\]

\[
\boxed{K_1 = \frac{100L_1}{200 - L_1}}
\]

**(b)** Com \(L_1 = 60\):

\[
K_1 = \frac{100 \cdot 60}{200 - 60} = \frac{6000}{140} = \frac{300}{7} \approx 42{,}86
\]

\(L_2 = 40\), \(K_2 = 100 - 300/7 = 400/7 \approx 57{,}14\).

\[
q_1 = 60^{1/2} \cdot (300/7)^{1/2} = \sqrt{60 \cdot 300/7} = \sqrt{18000/7} = \sqrt{2571{,}4} \approx 50{,}71
\]

\[
q_2 = 40^{1/3} \cdot (400/7)^{2/3} = 40^{1/3} \cdot 400^{2/3}/7^{2/3}
\]

\(40^{1/3} \approx 3{,}420\), \(400^{2/3} = (400^2)^{1/3} = 160000^{1/3} \approx 54{,}29\), \(7^{2/3} \approx 3{,}659\).

\[
q_2 \approx \frac{3{,}420 \times 54{,}29}{3{,}659} \approx 50{,}73
\]

**(c)** A TMT é a razão dos custos marginais, ou equivalentemente, a inclinação da FPP. Para derivá-la, note que ao longo da curva de contrato de produção, um aumento em \(L_1\) (com redução correspondente em \(L_2\)) altera \(q_1\) e \(q_2\). Pela regra da cadeia:

\[
TMT = -\frac{dq_2}{dq_1} = \frac{dq_2/dL_1}{-dq_1/dL_1}
\]

Ao longo da curva de contrato (onde \(K_1 = 100L_1/(200 - L_1)\)), o cálculo envolve derivar \(q_1(L_1, K_1(L_1))\) e \(q_2(100 - L_1, 100 - K_1(L_1))\) com respeito a \(L_1\). A TMT depende de \(L_1\) porque as funções de produção têm diferentes intensidades fatoriais: o setor 1 é simétrico em \(L\) e \(K\), enquanto o setor 2 é capital-intensivo (\(\alpha_K = 2/3\)). Mover insumos entre setores altera as produtividades marginais de forma diferente, fazendo com que o custo de oportunidade (TMT) varie ao longo da FPP. A FPP é, portanto, côncava (e não linear).


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-8)

---

## ✏️ Exercício 14.9 {#ex-14-9}

**Solução.**

**(a)** **Segundo Teorema do Bem-Estar:** Se as preferências de todos os consumidores são contínuas, convexas e localmente não saciadas, e se os conjuntos de produção são convexos, então qualquer alocação Pareto-eficiente pode ser descentralizada como um equilíbrio competitivo após transferências lump-sum adequadas das dotações.

**Hipóteses:**

1. Preferências contínuas, convexas e localmente não saciadas;
2. Conjuntos de produção convexos (retornos não crescentes de escala);
3. Existência de um mecanismo de transferências lump-sum (não distorcivas).

**(b)** Transferências lump-sum redistribuem renda sem alterar os preços relativos — os consumidores continuam enfrentando os mesmos incentivos marginais, e o mecanismo de preços funciona normalmente.

Impostos sobre bens (ad valorem) criam uma cunha entre o preço pago pelo consumidor e o preço recebido pelo produtor. Isso distorce as decisões de consumo e produção: o consumidor iguala sua TMS à razão de preços brutos (com imposto), enquanto o produtor iguala sua TMST à razão de preços líquidos (sem imposto). Resultado: \(TMS \neq TMST\), violando a condição de eficiência. O imposto sobre bens redistribui, mas ao custo de ineficiência — a alocação resultante não será Pareto-eficiente.

**(c)** Verificação de eficiência: \(TMS_A = y_A/x_A = 3/3 = 1\) e \(TMS_B = y_B/x_B = 7/7 = 1\). Como \(TMS_A = TMS_B\), a alocação é Pareto-eficiente. ✓

**Preços de equilíbrio:** No equilíbrio que sustenta \(\hat{\mathbf{x}}\), os preços devem satisfazer \(p_x/p_y = TMS = 1\). Normalizando \(p_y = 1\): \(p_x = 1\).

**Transferências:** A renda necessária de A para consumir \((3, 3)\) é \(I_A = 1 \cdot 3 + 1 \cdot 3 = 6\). A renda de A a partir de suas dotações é \(I_A^0 = 1 \cdot 5 + 1 \cdot 5 = 10\). Logo, A deve transferir \(10 - 6 = 4\) unidades de renda para B.

Verificação para B: \(I_B^0 = 10\), recebe transferência de 4, \(I_B = 14\). Demanda de B: \(x_B = 14/2 = 7\), \(y_B = 14/2 = 7\). ✓

\[
\boxed{\text{Transferência lump-sum: } T_A = -4, \; T_B = +4 \text{ (unidades monetárias)}}
\]

A transfere 4 unidades de renda a B. Com os preços \(p_x = p_y = 1\), ambos maximizam utilidade e os mercados se equilibram na alocação desejada.


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-9)

---

## ✏️ Exercício 14.10 {#ex-14-10}

**Solução.**

**(a)** **Vantagem comparativa:** O custo de oportunidade de produzir 1 unidade de tecido (T):

- H: \(2/6 = 1/3\) unidade de vinho
- F: \(4/3\) unidade de vinho

H tem menor custo de oportunidade em T (\(1/3 < 4/3\)), logo **H tem vantagem comparativa em T**.

O custo de oportunidade de produzir 1 unidade de vinho (V):

- H: \(6/2 = 3\) unidades de tecido
- F: \(3/4\) unidade de tecido

F tem menor custo de oportunidade em V (\(3/4 < 3\)), logo **F tem vantagem comparativa em V**.

**FPP:**

- H: \(2T + 6V = 120 \implies T + 3V = 60\). Interceptos: \((60, 0)\) e \((0, 20)\).
- F: \(4T + 3V = 120 \implies 4T + 3V = 120\). Interceptos: \((30, 0)\) e \((0, 40)\).

**(b)** Em autarquia, cada país maximiza \(U = TV\) sujeito à sua FPP.

**País H:** \(\max TV\) s.a. \(T + 3V = 60\). Substituindo \(T = 60 - 3V\): \(\max (60 - 3V)V = 60V - 3V^2\). CPO: \(60 - 6V = 0 \implies V_H = 10\), \(T_H = 30\). \(U_H = 300\).

Preço relativo em autarquia: pela FPP, \(p_T/p_V = 3\) (inclinação da FPP, pois com preferências Cobb-Douglas simétricas e FPP linear, a TMS no ótimo iguala a TMT = 3).

Verificação: \(TMS = V/T = 10/30 = 1/3\). Mas a inclinação da FPP é \(dV/dT = -1/3\), logo \(TMT = |dT/dV| = 3\). Preço relativo: \(p_T/p_V = TMT\)... Na verdade, \(p_T/p_V\) deve igualar o custo de oportunidade. A FPP é \(T + 3V = 60\), com inclinação \(-1/3\) (em unidades \(\Delta V/\Delta T\)), logo produzir 1 T a mais custa \(1/3\) V. Portanto \(p_T/p_V = 1/3\).

\(\boxed{p_T^H/p_V^H = 1/3}\)

**País F:** \(\max TV\) s.a. \(4T + 3V = 120\). \(T = 30 - 3V/4\). \(\max (30 - 3V/4)V\). CPO: \(30 - 3V/2 = 0 \implies V_F = 20\), \(T_F = 15\). \(U_F = 300\).

Preço relativo: FPP é \(4T + 3V = 120\), inclinação \(\Delta V/\Delta T = -4/3\), logo \(p_T/p_V = 4/3\).

\(\boxed{p_T^F/p_V^F = 4/3}\)

**(c)** O comércio ocorre para \(1/3 < p_T/p_V < 4/3\) (entre os preços autárquicos). Com especialização completa: H produz apenas T (\(T_H = 60\), \(V_H = 0\)) e F produz apenas V (\(T_F = 0\), \(V_F = 40\)).

Com \(p_T/p_V = 1\):

**País H** (vende T, compra V): renda = \(60 \cdot p_T = 60p_T\). Com preferências \(U = TV\): \(T_H^c = 60p_T/(2p_T) = 30\), \(V_H^c = 60p_T/(2p_V) = 60/2 = 30\). \(U_H = 30 \cdot 30 = 900\).

**País F** (vende V, compra T): renda = \(40 \cdot p_V = 40p_V\). \(T_F^c = 40p_V/(2p_T) = 40/2 = 20\), \(V_F^c = 40p_V/(2p_V) = 20\). \(U_F = 20 \cdot 20 = 400\).

Verificação de equilíbrio: \(T_H^c + T_F^c = 30 + 20 = 50 \neq 60\). A demanda mundial de T é 50, mas a oferta é 60 — há excesso de oferta de T. Logo \(p_T/p_V = 1\) não é o preço de equilíbrio exato com especialização completa.

Recalculando o preço de equilíbrio: Com especialização completa, H produz \(T = 60\), F produz \(V = 40\). Demanda mundial: \(T^d = I_H/(2p_T) + I_F/(2p_T) = 60p_T/(2p_T) + 40p_V/(2p_T) = 30 + 20p_V/(p_T)\). Oferta: \(T^s = 60\).

\(30 + 20/(p_T/p_V) = 60 \implies 20/(p_T/p_V) = 30 \implies p_T/p_V = 2/3\).

Verificação: \(1/3 < 2/3 < 4/3\) ✓ — está no intervalo de comércio.

Com \(p_T/p_V = 2/3\):

**H:** \(I_H = 60 \cdot (2/3) = 40\) (em unidades de V). \(T_H^c = 40/(2 \cdot 2/3) = 40/(4/3) = 30\). \(V_H^c = 40/2 = 20\). \(U_H = 30 \cdot 20 = 600 > 300\). ✓

**F:** \(I_F = 40 \cdot 1 = 40\) (em unidades de V). \(T_F^c = 40/(2 \cdot 2/3) = 30\). \(V_F^c = 40/2 = 20\). \(U_F = 30 \cdot 20 = 600 > 300\). ✓

Market clearing: \(T^d = 30 + 30 = 60 = T^s\) ✓. \(V^d = 20 + 20 = 40 = V^s\) ✓.

Ambos os países ganham: \(U = 600 > 300\) para cada um.

Nota: o enunciado propõe \(p_T/p_V = 1\), mas o preço de equilíbrio correto com especialização completa é \(p_T/p_V = 2/3\). Com \(p_T/p_V = 1\), a especialização não seria completa (haveria excesso de oferta de T). Usando o preço correto de equilíbrio, ambos os países ganham com o comércio.

**(d)** Em autarquia, cada país opera sobre sua FPP individual, sem possibilidade de trocar bens com o outro — como se dois consumidores numa Caixa de Edgeworth estivessem presos às suas dotações iniciais. A abertura ao comércio é análoga à permissão de troca: cada país se especializa segundo sua vantagem comparativa (eficiência na produção) e troca a preços de equilíbrio que refletem as escassezes relativas globais.

Os ganhos do comércio (\(U = 600\) vs. \(U = 300\) para cada país) refletem a passagem de uma alocação ineficiente (autarquia, onde os custos de oportunidade diferem entre países) para uma alocação mais eficiente (comércio, onde os preços relativos se equalizam). Isso é exatamente o que o Primeiro Teorema do Bem-Estar prevê: quando os mercados funcionam sem distorções (livre comércio, tomada de preços), o equilíbrio resultante é Pareto-eficiente. A autarquia impõe uma "restrição" artificial que impede a realização dos ganhos de troca — removê-la move a economia mundial em direção à fronteira de Pareto.


↩ [Voltar ao enunciado](../cap14/exercicios.md#ex-14-10)
