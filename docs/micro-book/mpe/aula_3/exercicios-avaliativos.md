# Exercícios Avaliativos — Aula 3

**Tema:** Slutsky, Elasticidades, Bem-estar do Consumidor (CV, EV, EC)
**Calibre:** 1 🟢 + 3 🟡 + 2 🔴 (nesta ordem)
**Tempo-alvo:** 2h30–3h
**Formato:** Múltipla escolha pura, auto-grade (uma correta por sub-item)
**Prazo:** **quarta 13/05 às 18h BRT** (calendário canônico)
**Gabarito:** libera quinta 14/05 · 00:00 BRT

> **Orientações.** Cada exercício é autocontido: leia o enunciado, responda aos sub-itens, e **só então** consulte o gabarito 5-passos ao final (libera em 14/05). Distratores são plausíveis — se errou, articule *por que* o distrator parecia razoável.

> **Pré-requisito respeitado.** Tudo aqui usa exclusivamente Slutsky, elasticidades, restrições agregadas, CV/EV — ferramental da Aula 3. Equilíbrio Geral, Arrow-Debreu, externalidades **não aparecem** como exigência.

---

## Exercício 1 🟢 — Slutsky em Cobb-Douglas: sinais e cancelamento canônico

**Enunciado.** Um consumidor tem preferência em \(\mathbb{R}^2_{++}\) representada por

\[
u(x_1, x_2) = x_1^{1/2}\,x_2^{1/2}.
\]

Em \(p = (p_1, p_2) = (2, 1)\) e \(m = 12\), você quer aplicar a equação de Slutsky em \(\partial x_1^M/\partial p_2\). Use \(e(p, \bar u) = 2\bar u\sqrt{p_1 p_2}\) e \(h_1(p, \bar u) = \bar u\sqrt{p_2/p_1}\) (CD simétrica).

### (a) A demanda Marshalliana \((x_1^M, x_2^M)\) e a derivada \(\partial x_1^M/\partial p_2\) valem:

- (i) \(x^M = (3, 6), \partial x_1^M/\partial p_2 = -1\).
- (ii) \(x^M = (3, 6), \partial x_1^M/\partial p_2 = 0\). **← CORRETA**
- (iii) \(x^M = (6, 3), \partial x_1^M/\partial p_2 = 1\).
- (iv) \(x^M = (3, 6), \partial x_1^M/\partial p_2 = +6\).

### (b) Em \(p = (2, 1)\) e \(\bar u = v = \sqrt{3\cdot 6} = \sqrt{18}\), a Hicksiana cruzada \(\partial h_1/\partial p_2\) vale:

- (i) \(0\) — em CD, Hicksiana cruzada também zera.
- (ii) Negativa — substitutos brutos sempre se traduzem em \(\partial h/\partial p < 0\).
- (iii) \(\bar u/(2\sqrt{p_1 p_2}) = \sqrt{18}/(2\sqrt{2}) = 3/2\). **← CORRETA**
- (iv) \(+1\) — efeito de substituição é unitário em CD.

### (c) O efeito-renda em Slutsky, \(-x_2^M\cdot \partial x_1^M/\partial m\), em \((p, m) = (2, 1, 12)\) vale:

- (i) \(0\).
- (ii) \(-3/2\). **← CORRETA**
- (iii) \(+3/2\).
- (iv) \(-6\).

### (d) Confirma-se Slutsky?

- (i) Sim: \(0 = 3/2 + (-3/2)\), com \(\partial h_1/\partial p_2 = 3/2\) e \(-x_2^M\cdot \partial x_1^M/\partial m = -3/2\). **← CORRETA**
- (ii) Não: substitutos brutos não cancelam exatamente em CD.
- (iii) Sim, mas com fator multiplicativo \(\alpha\): \(0 = \alpha\cdot 3/2 - \alpha\cdot 3/2\) só vale para \(\alpha = 1/2\).
- (iv) Não, porque o sinal do efeito-renda é \(+\) em CD.

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Em CD, a Marshalliana \(x_1^M = m/(2 p_1)\) não depende de \(p_2\), logo \(\partial x_1^M/\partial p_2 = 0\). A equação de Slutsky entrega esse zero como **soma de duas peças não-nulas que se cancelam**: substituição (Hicksiana cruzada \(>0\)) compensada exatamente pelo efeito-renda \((<0\) com sinal de Slutsky).

**2. Derivação.** Com \(\alpha = 1/2\): \(x_1^M = m/(2 p_1) = 12/4 = 3\); \(x_2^M = m/(2 p_2) = 6\). Walras: \(2(3) + 1(6) = 12\). ✓ \(v = \sqrt{18}\); \(\partial h_1/\partial p_2 = \bar u/(2\sqrt{p_1 p_2}) = \sqrt{18}/(2\sqrt{2}) = 3/2\). ✓ Efeito-renda: \(\partial x_1^M/\partial m = 1/(2 p_1) = 1/4\); \(-x_2^M\cdot 1/4 = -3/2\). ✓ Soma: \(3/2 - 3/2 = 0\). ✓

**3. Armadilha.** Item (b)(i): "se Marshalliana cruzada zera, Hicksiana cruzada também zera." Erro clássico de quem confunde "independência marshalliana" com "ausência de substituição". A Hicksiana isola substituição pura — nunca é zero entre bens substituíveis. Item (c)(iii): inverter o sinal do efeito-renda. Sinal canônico em Slutsky é \(-x_j(\partial x_i/\partial m)\); subtrair, não somar.

**4. Extensão (Aulas 3+4).** Slutsky em sistema: matriz \(S = \partial h/\partial p\) é simétrica, semidef. neg., \(Sp = 0\). Em CD, \(S\) tem fator \(\bar u\) explícito; cruzadas positivas; diagonal negativa. Aula 4 (EG): demanda agregada satisfaz Walras (lei de Walras), uma das 4 restrições. Em equilíbrio, oferta = demanda, \(p\) endógeno.

**5. Peer-review.** Exercício de "calibração do termômetro" — testa se o aluno aplica Slutsky termo-a-termo num caso onde o resultado é conhecido (zero). Aluno que reportou \(\partial h_1/\partial p_2 = 0\) (item b-i) tem confusão estrutural; recuperação acontece ao reler Aula 2 (Hicksiana) e Aula 3 (substitutos brutos vs. líquidos).

---

## Exercício 2 🟡 — Stone-Geary com subsistência genuína: necessidade não-homotética

**Enunciado.** Considere a forma **Stone-Geary** \(u(x_1, x_2) = (x_1 - \gamma_1)^{\alpha}(x_2 - \gamma_2)^{1-\alpha}\) com \(\alpha = 1/2\), \(\gamma_1 = 1\) e \(\gamma_2 = 0{,}5\) (ambos positivos — subsistência genuína).

> **Fato dado (forma fechada da demanda LES):**
>
> \[
> x_i(p, m) \;=\; \gamma_i \;+\; \dfrac{\beta_i}{p_i}\,\Bigl(m - \textstyle\sum_k p_k\gamma_k\Bigr), \qquad \sum_i \beta_i = 1,\ m > \textstyle\sum_k p_k\gamma_k.
> \]
>
> Os parâmetros \(\gamma_i \ge 0\) representam **mínimos de subsistência** (consumo de "piso") e \(\beta_i\) é a **propensão marginal a consumir** o gasto excedente em \(i\). Aqui \(\beta_1 = \alpha\), \(\beta_2 = 1-\alpha\). Referência: N&S 12e §4.4 (Apêndice de formas funcionais); Stone (1954, *EJ*).
>
> **Você não precisa derivar essa fórmula a partir da utilidade — opere diretamente sobre ela.**

Em \(p = (1, 1)\), \(m = 8\), com \(\gamma_1 = 1\), \(\gamma_2 = 0{,}5\), \(\alpha = 0{,}5\):

### (a) A Marshalliana \((x_1^M, x_2^M)\) vale:

- (i) \((4{,}25,\; 3{,}75)\) — \(\sum p_k\gamma_k = 1{,}5\), residual \(6{,}5\); cada bem ganha \(0{,}5\cdot 6{,}5 = 3{,}25\) sobre seu piso. **← CORRETA**
- (ii) \((4, 4)\) — Cobb-Douglas pura.
- (iii) \((1,\; 0{,}5)\) — apenas as constantes \(\gamma_i\).
- (iv) \((5, 3)\) — chute "renda dividida em duas".

### (b) A elasticidade-renda \(\eta_1 = (m/x_1^M)\cdot \partial x_1^M/\partial m\) em \((p, m) = (1, 1, 8)\) é:

- (i) \(\eta_1 = 1\) — homotetia CD.
- (ii) \(\eta_1 = (8/4{,}25)\cdot 0{,}5 \approx 0{,}941\). **← CORRETA**
- (iii) \(\eta_1 = 0{,}5\) — apenas o \(\beta_1\).
- (iv) \(\eta_1\) é negativa — bem inferior.

### (c) Com \(\gamma_1, \gamma_2 > 0\) e \(\eta_1 \approx 0{,}94\) na faixa avaliada, o bem 1 é classificado como:

- (i) **Necessidade** — \(\eta_1 \in (0, 1)\); subsistência genuína "amortece" a resposta de \(x_1\) à renda. **← CORRETA**
- (ii) Luxo — \(\eta_1 > 1\) em qualquer Stone-Geary com \(\gamma > 0\).
- (iii) Inferior — \(\gamma_1 > 0\) implica \(\eta_1 < 0\).
- (iv) Homotético — Stone-Geary com \(\gamma > 0\) preserva homotetia.

### (d) Aplicando Slutsky em \(\partial x_1^M/\partial p_2\) (cruzada Marshalliana, com \(\gamma_2 > 0\)):

- (i) \(\partial x_1^M/\partial p_2 = 0\) — independência marshalliana automática em LES.
- (ii) \(\partial x_1^M/\partial p_2 = -\beta_1\gamma_2/p_1 = -0{,}25\) (negativo); substituição \(\partial h_1/\partial p_2 > 0\); renda \(-x_2^M(\partial x_1^M/\partial m) = -3{,}75\cdot 0{,}5 = -1{,}875 < 0\). Os dois efeitos não se cancelam: o termo "subsistência cruzada" \(-\beta_1\gamma_2\) entra na cruzada Marshalliana mesmo após Slutsky. **← CORRETA**
- (iii) Marshalliana cruzada \(> 0\); substituição zero; renda \(> 0\).
- (iv) Marshalliana cruzada zero; substituição zero; renda zero — independente em todos os níveis.

### (e) Sobre a estrutura de Stone-Geary como modelo empírico:

- (i) É forma funcional **não-homotética** que permite \(\eta_i \neq 1\) por bem, preservando integração de Slutsky. **← CORRETA**
- (ii) É equivalente a CD com mudança de variável trivial.
- (iii) Implica \(\eta_i = \alpha_i\) por bem (parcela = elasticidade-renda).
- (iv) Não é compatível com restrição orçamentária quando \(\gamma_i > 0\).

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Stone-Geary com \(\gamma_1, \gamma_2 > 0\) é o caso clássico de **subsistência genuína**: cada bem tem um "piso" \(\gamma_i\) que o consumidor compra antes de alocar o resíduo \(m - \sum p_k\gamma_k\) no formato CD. A consequência operacional é que **\(\eta_i\) deixa de ser 1** — a parcela CD \(\beta_i\) só governa o gasto *acima* do piso. Quando \(\gamma_i\) é importante na cesta (como aqui, com \(\gamma_1/x_1 \approx 0{,}24\)), \(\eta_i\) cai abaixo de 1 e o bem se comporta como **necessidade**: alguém que dobra a renda *não* dobra o consumo de \(x_1\), porque o piso já estava coberto.

**2. Derivação.** Soma de pisos: \(\sum p_k\gamma_k = 1\cdot 1 + 1\cdot 0{,}5 = 1{,}5\); residual \(m - \sum p_k\gamma_k = 6{,}5\). \(x_1^M = 1 + (0{,}5/1)(6{,}5) = 4{,}25\); \(x_2^M = 0{,}5 + (0{,}5/1)(6{,}5) = 3{,}75\). Walras: \(4{,}25 + 3{,}75 = 8\). ✓ \(\partial x_1^M/\partial m = \beta_1/p_1 = 0{,}5\); \(\eta_1 = (8/4{,}25)(0{,}5) = 4/4{,}25 \approx 0{,}941 < 1\) — necessidade. Cruzada Marshalliana: \(\partial x_1^M/\partial p_2 = -\beta_1\gamma_2/p_1 = -0{,}25\). Slutsky: substituição \(\partial h_1/\partial p_2 > 0\); renda \(-x_2^M(\partial x_1^M/\partial m) = -1{,}875\). Os dois somam exatamente \(-0{,}25\) (substituição compensa parcialmente o efeito-renda, mas não chega ao cancelamento perfeito da CD pura).

**3. Armadilha.** Item (b)(i): "qualquer extensão de CD é homotética". Falso — \(\gamma_i > 0\) quebra homotetia, é por isso que LES existe. Item (c)(ii): "Stone-Geary com \(\gamma > 0\) ⇒ luxo". Errado — com \(\gamma_i > 0\), o piso "rouba" parte da renda e \(\eta_i\) tipicamente fica **abaixo** de 1 (necessidade). Item (d)(i): aluno confunde com CD pura, onde a cruzada zera. Aqui \(\gamma_2 > 0\) entra explicitamente no termo \(-\beta_1\gamma_2\) da Marshalliana cruzada — *não* zera.

**4. Extensão (Aula 3 + sistemas empíricos).** Stone-Geary é o ponto de partida do *Linear Expenditure System* (Stone 1954, *Economic Journal*) e antecessor estrutural do AIDS (Deaton & Muellbauer 1980). Em estimação empírica com POF, calibra-se \(\gamma_i\) e \(\beta_i\) por bem; \(\gamma_i > 0\) gera \(\eta_i < 1\) tipicamente para alimentos básicos (necessidade), e \(\beta_i\) ganha leitura de "fração marginal do excedente". Em política tributária (Bloco 4 desta aula), CV depende crucialmente da heterogeneidade de \(\gamma_i\) entre decis — pobres têm \(\gamma_i\) relativo maior na cesta básica, daí a regressividade discutida no Box Brasil.

**5. Peer-review.** Calibre 🟡 — testa três pontos: (i) Stone-Geary é **não-homotética** mesmo com \(\gamma > 0\) (não confundir com luxo/saturação); (ii) elasticidade-renda na faixa avaliada é função explícita de \((m, \gamma, \beta)\), não do parâmetro CD sozinho; (iii) cruzada Marshalliana **não zera** quando \(\gamma_2 > 0\). Aluno que decora "Stone-Geary = CD com pequena correção" perde o (b) e o (d). Risco residual: a fórmula fechada é dada como fato — quem quiser mais rigor pode derivar via Lagrangiano sobre \((x_1 - \gamma_1, x_2 - \gamma_2)\), exercício rotineiro mas longo.

---

## Exercício 3 🟡 — Restrições agregadas em CD 3D

**Enunciado.** Um consumidor tem preferência

\[
u(x_1, x_2, x_3) = x_1^{0{,}3}\,x_2^{0{,}5}\,x_3^{0{,}2}, \qquad p = (1, 2, 5),\; m = 100.
\]

### (a) As parcelas \((s_1, s_2, s_3)\) valem:

- (i) \((0{,}3, 0{,}5, 0{,}2)\). **← CORRETA**
- (ii) \((1/3, 1/3, 1/3)\).
- (iii) \((0{,}5, 0{,}3, 0{,}2)\).
- (iv) Dependem de \((p, m)\) de forma não-trivial.

### (b) As elasticidades-renda \((\eta_1, \eta_2, \eta_3)\) valem:

- (i) \((0{,}3, 0{,}5, 0{,}2)\).
- (ii) \((1, 1, 1)\). **← CORRETA**
- (iii) \((1/0{,}3, 1/0{,}5, 1/0{,}2)\).
- (iv) \((0{,}3/0{,}5, 0{,}5/0{,}5, 0{,}2/0{,}5)\).

### (c) **Engel** (\(\sum_i s_i\eta_i = 1\)) verifica-se em CD como:

- (i) \(0{,}3\cdot 1 + 0{,}5\cdot 1 + 0{,}2\cdot 1 = 1\). **← CORRETA**
- (ii) \(0{,}3 + 0{,}5 + 0{,}2 = 1\) (apenas porque expoentes somam 1).
- (iii) \(1\cdot 1\cdot 1 = 1\) (multiplicativo).
- (iv) Engel viola em CD com \(n \geq 3\).

### (d) **Cournot** (\(\sum_i s_i\varepsilon_{i1} = -s_1 = -0{,}3\)). Em CD, \(\varepsilon_{i1} = -\delta_{i1}\) (cruzada Marshalliana zero, próprio preço \(-1\)). Confirme:

- (i) \(0{,}3\cdot (-1) + 0{,}5\cdot 0 + 0{,}2\cdot 0 = -0{,}3 = -s_1\). **← CORRETA**
- (ii) \(0{,}3 + 0{,}5 + 0{,}2 = 1\) — Cournot é sobre soma de parcelas.
- (iii) \(0{,}3\cdot 1 + 0{,}5\cdot 1 + 0{,}2\cdot 1 = 1\).
- (iv) Cournot exige Hicksiana, não vale para Marshalliana em CD.

### (e) **Homogeneidade** (\(\sum_j \varepsilon_{1j} + \eta_1 = 0\)) verifica-se como:

- (i) \(-1 + 0 + 0 + 1 = 0\). **← CORRETA**
- (ii) \(-1 + 1 = 0\) — apenas próprio preço e renda.
- (iii) \(-0{,}3 + 0{,}3 = 0\) — usa parcelas, não elasticidades.
- (iv) Homogeneidade só vale em sistemas com \(\eta_i \neq 1\).

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** Em CD, **parcelas iguais aos expoentes** (assinatura de homotetia + ordinalidade). **Elasticidades-renda todas 1** (homotetia perfeita). **Marshalliana cruzada zero** (linearidade em \(m\) de \(v\)). **Próprio preço Marshalliano \(-1\)** (parcela constante ⇒ \(p_i x_i^M = s_i m\) ⇒ \(\partial \ln x_i^M/\partial \ln p_i = -1\)). Todas as 3 restrições agregadas verificam-se trivialmente.

**2. Derivação.** \(s_i = \alpha_i\) (CD). \(\eta_i = 1\) (homotetia). \(\varepsilon_{ii} = -1\), \(\varepsilon_{ij} = 0\) (\(j \neq i\)). Engel: \(0{,}3(1) + 0{,}5(1) + 0{,}2(1) = 1\). ✓ Cournot em \(j = 1\): \(0{,}3(-1) + 0{,}5(0) + 0{,}2(0) = -0{,}3 = -s_1\). ✓ Homogeneidade em \(i = 1\): \(\varepsilon_{11} + \varepsilon_{12} + \varepsilon_{13} + \eta_1 = -1 + 0 + 0 + 1 = 0\). ✓

**3. Armadilha.** Item (b)(i): \((0{,}3, 0{,}5, 0{,}2)\) é a parcela, não a elasticidade-renda. Confusão clássica entre "expoente" e "elasticidade". Item (d)(ii) e (e)(iii): confunde restrições agregadas (elasticidades) com somas de parcelas (Walras). Walras é \(\sum s_i = 1\); restrições agregadas operam dentro de Walras + diferenciação.

**4. Extensão.** As restrições verificam-se em CD por construção. Em sistema empírico com elasticidades estimadas, **violações sinalizam** (i) má especificação funcional, (ii) viés de agregação, (iii) preferências não-coerentes. Em ANPEC, "verificar Engel/Cournot" aparece quase todo ano em formato fechado.

**5. Peer-review.** Exercício mecânico de aplicação. Calibre 🟡 porque exige fluência em **ler** restrições agregadas em forma de conta. Quem confunde "soma de parcelas" com "soma ponderada de elasticidades" não internalizou a estrutura. Risco residual: o item (e)(ii) é distrator delicado — quem esquece que Cournot envolve cruzadas (que são zero em CD) pode achar que "Cournot trivializa" e marcar errado.

---

## Exercício 4 🟡 — Bens normais, inferiores, Giffen como condição

**Enunciado.** Considere as seguintes afirmações sobre a equação de Slutsky aplicada ao próprio preço, \(\partial x_i^M/\partial p_i = \partial h_i/\partial p_i - x_i^M\,\partial x_i^M/\partial m\):

- **A.** Para qualquer preferência regular, \(\partial h_i/\partial p_i \leq 0\) (lei da demanda compensada).
- **B.** Bem inferior é condição **necessária** para Giffen.
- **C.** Bem inferior é condição **suficiente** para Giffen.
- **D.** Inferioridade alta combinada com parcela alta (\(s_i\) próximo de 1) gera Giffen.

### (a) Afirmação A é:

- (i) Verdadeira — concavidade de \(e\) em \(p\) garante diagonal do Hessiano \(\leq 0\). **← CORRETA**
- (ii) Verdadeira apenas em CD.
- (iii) Falsa — substituição pode ser positiva em casos especiais.
- (iv) Verdadeira apenas para bens normais.

### (b) Afirmação B é:

- (i) Verdadeira — sem inferioridade, efeito-renda em Slutsky entra como \(<0\) (subtraindo um \(>0\) dá \(<0\) firme). **← CORRETA**
- (ii) Falsa — Giffen pode ocorrer em normais, basta substituição forte.
- (iii) Verdadeira apenas em economia fechada.
- (iv) Falsa — inferioridade não é nem necessária nem suficiente.

### (c) Afirmação C é:

- (i) Verdadeira — bem inferior implica Giffen.
- (ii) Falsa — inferioridade leve com parcela baixa e substituição forte resulta em Marshalliana ainda decrescente. **← CORRETA**
- (iii) Verdadeira em CES com \(\sigma > 1\).
- (iv) Verdadeira apenas em quase-linear.

### (d) Afirmação D é:

- (i) Verdadeira — quando \(|x_i^M\,\partial x_i^M/\partial m| > |\partial h_i/\partial p_i|\), o sinal vira. **← CORRETA**
- (ii) Falsa — parcela alta amortece efeito-renda.
- (iii) Verdadeira apenas em domicílios pobres.
- (iv) Verdadeira mas exige \(\sigma > 1\) em CES.

### (e) **Aplicação numérica.** Para um bem com \(s_i = 0{,}6\), \(\eta_i = -0{,}8\) (inferioridade severa), \(\varepsilon^c_{ii} = -0{,}3\), a elasticidade-preço Marshalliana \(\varepsilon_{ii}\) (Slutsky) é:

- (i) \(-0{,}30 - 0{,}6\cdot (-0{,}8) = -0{,}30 + 0{,}48 = +0{,}18\) (Giffen — sinal positivo). **← CORRETA**
- (ii) \(-0{,}30 + 0{,}6\cdot 0{,}8 = +0{,}18\) (mesmo valor mas via cálculo trocado).
- (iii) \(-0{,}30 - 0{,}48 = -0{,}78\) (lei da demanda preservada).
- (iv) \(-0{,}30\) — efeito-renda zero.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** Giffen requer **3 condições simultâneas**: (i) inferioridade (\(\eta_i < 0\)); (ii) parcela suficientemente alta (\(s_i\) grande, multiplica o efeito-renda em magnitude); (iii) elasticidade compensada relativamente baixa em magnitude (\(|\varepsilon^c_{ii}|\) pequena, deixa renda dominar). Inferioridade sozinha não basta — é apenas condição necessária.

**2. Derivação.** Slutsky em elasticidades: \(\varepsilon_{ii} = \varepsilon^c_{ii} - s_i\eta_i\). Para \(\varepsilon_{ii} > 0\) (Giffen), exige-se \(s_i\eta_i < \varepsilon^c_{ii}\) (ambos negativos, então magnitude do efeito-renda \(s_i|\eta_i|\) supera \(|\varepsilon^c_{ii}|\)). Com \(s_i = 0{,}6\), \(\eta_i = -0{,}8\), \(\varepsilon^c_{ii} = -0{,}3\): \(s_i\eta_i = -0{,}48\); \(\varepsilon_{ii} = -0{,}3 - (-0{,}48) = +0{,}18\). Giffen confirmado.

**3. Armadilha.** Confundir condição **necessária** com **suficiente** é o erro estrutural. O exemplo Hunan (Jensen-Miller AER 2008) ilustra: arroz era inferior + parcela altíssima + alimento básico (substitutos baratos como carne) — três condições juntas. Em qualquer arranjo onde apenas uma é satisfeita, Giffen não aparece. Item (b)(ii): a maioria dos textos de graduação ensina "inferior é necessário para Giffen, mas não suficiente"; alguns alunos invertem.

**4. Extensão (Aula 3 + estimação).** Dados POF brasileiros raramente identificam Giffen porque mesmo o arroz tem \(\eta_i\) modestamente negativa apenas no decil mais baixo. Em sistemas empíricos (AIDS, QUAIDS), o teste rigoroso é \(\partial \ln x_i/\partial \ln p_i\) computada com \(\bar u\) calibrado. Em política pública, alta de preço de bem essencial é **regressiva** (Aula 3 Bloco 4 — CV) muito antes de virar Giffen.

**5. Peer-review.** Exercício de leitura conceitual estruturada. Calibre 🟡 porque exige distinguir necessidade vs. suficiência, ler 4 afirmações independentes, e aplicar Slutsky numericamente. Risco: aluno que só decora "inferior + parcela alta = Giffen" pode pular sobre a sutileza de \(|\varepsilon^c|\) ser baixa também. O item (e) força explicitar.

---

## Exercício 5 🔴 — CV, EV, EC em Cobb-Douglas com mudança de preço grande

**Enunciado.** Em \(\mathbb{R}^2_{++}\), \(u(x_1, x_2) = x_1^{1/2}\,x_2^{1/2}\), \(m = 16\). \(p_2 = 1\) fixo. \(p_1\) sobe de \(p^0_1 = 1\) para \(p^1_1 = 4\).

**Função gasto:** \(e(p_1, p_2, \bar u) = 2\bar u\sqrt{p_1 p_2}\). Marshalliana \(x_1^M = m/(2 p_1)\); Hicksiana \(h_1(p_1, p_2, \bar u) = \bar u\sqrt{p_2/p_1}\).

### (a) As Marshallianas \((x^{M,0}, x^{M,1})\) e utilidades \((u^0, u^1)\) são:

- (i) \((8, 8)\) e \((2, 8)\); \(u^0 = 8\), \(u^1 = 4\). **← CORRETA**
- (ii) \((8, 8)\) e \((2, 8)\); \(u^0 = 16\), \(u^1 = 8\).
- (iii) \((4, 4)\) e \((2, 4)\); \(u^0 = 4\), \(u^1 = \sqrt{8}\).
- (iv) \((16, 16)\) e \((4, 16)\); \(u^0 = 16\), \(u^1 = 8\).

### (b) A **variação compensatória** (CV) — quanta moeda tirar **depois** da alta para manter \(u^0\) — é:

- (i) \(8\).
- (ii) \(12\).
- (iii) \(16\). **← CORRETA**
- (iv) \(24\).

### (c) A **variação equivalente** (EV) — quanta moeda dar **antes** da alta para evitar a mudança — é:

- (i) \(4\).
- (ii) \(8\). **← CORRETA**
- (iii) \(12\).
- (iv) \(16\).

### (d) Aproximação trapezoidal do **excedente do consumidor** \(\Delta\text{EC} = \int_1^4 x_1^M(p_1, m)\,dp_1 = \int_1^4 8/p_1\,dp_1\). O valor exato (integral) é:

- (i) \(8\,\ln 4 \approx 11{,}09\). **← CORRETA**
- (ii) \(24\) — área de retângulo \(8\times 3\).
- (iii) \(15\) — média dos extremos de \(p_1\).
- (iv) \(16\) — sem efeito-renda corrigido.

### (e) Sobre a ordem **EV \(\leq \Delta\text{EC} \leq\) CV** para alta de preço:

- (i) Falsa em CD — a ordem inverte.
- (ii) Verdadeira: \(8 \leq 11{,}09 \leq 16\). **← CORRETA**
- (iii) Verdadeira apenas para mudanças pequenas (Willig 1976 fronteira).
- (iv) A ordem só vale em quase-linear.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** **CV usa \(u^0\)** (utilidade antiga) e mede gasto extra no preço novo; **EV usa \(u^1\)** (utilidade nova) e mede gasto extra no preço antigo. Para alta de preço com bem normal, \(\text{EV} < \text{CV}\) — a "compensação para manter o status quo" custa mais do que "comprar a desistência da mudança". \(\Delta\text{EC}\) (Marshalliana) fica entre os dois — Willig 1976 fundamenta como aproximação.

**2. Derivação.** Antes (\(p_1=1, m=16\)): \(x_1^M = 16/2 = 8\); \(x_2^M = 16/2 = 8\); \(u^0 = \sqrt{8\cdot 8} = 8\). Depois (\(p_1=4\)): \(x_1^M = 16/8 = 2\); \(x_2^M = 16/2 = 8\); \(u^1 = \sqrt{2\cdot 8} = 4\). CV: \(e(4, 1, 8) - e(1, 1, 8) = 2(8)(2) - 2(8)(1) = 32 - 16 = 16\). EV: \(e(4, 1, 4) - e(1, 1, 4) = 2(4)(2) - 2(4)(1) = 16 - 8 = 8\). \(\Delta\text{EC}\): \(\int_1^4 8/p\,dp = 8\ln 4 = 8(2\ln 2) \approx 16(0{,}693) \approx 11{,}09\). Ordem: \(8 \leq 11{,}09 \leq 16\). ✓

**3. Armadilha.** Item (b)(i) "8" confunde com EV. Item (d)(ii) "24" calcula área retangular \(8\times 3\) ignorando que demanda decresce com preço. Item (d)(iv) "16" é valor numérico de CV — confusão entre EC e CV. A separação CV/EV/EC é precisa em CD; em quase-linear, todos os três coincidem (\(\eta_1 = 0\) ⇒ Hicksiana = Marshalliana).

**4. Extensão (Aula 3 + 4).** A diferença \(\text{CV} - \text{EV} = 8\) mede o "tamanho" do efeito-renda no consumo de \(x_1\). Em CD com \(\alpha = 1/2\), o efeito-renda é grande em magnitude (\(s_1 = 1/2\) e a alta de preço é severa: \(p_1\) quadruplica). Willig (AER 1976): \(|\Delta\text{EC} - \text{CV}|/\Delta\text{EC} \leq \eta_1\,s_1\,\Delta p/(2 p)\). Aqui o limite teórico é elevado (\(\Delta p/p = 3\)), por isso a diferença empírica também é. Em política tributária real (alta de \(\sim 10\%\)), Willig garante aproximação \(<1\%\) entre EC e CV.

**5. Peer-review.** Calibre 🔴 porque exige (i) computar 3 medidas diferentes; (ii) conhecer e aplicar a fórmula de \(e\) CD; (iii) integrar Marshalliana exatamente em \(\ln\); (iv) reconhecer ordem canônica EV \(\leq\) EC \(\leq\) CV. Risco residual: aluno que confunde sentido de "antes/depois" em CV vs. EV inverte os números — manter sempre o lema "**CV: u-velha, p-nova; EV: u-nova, p-velha**" como mnemônico.

---

## Exercício 6 🔴 — Análise de incidência tributária com sistema de elasticidades

**Enunciado.** Um governo introduz imposto específico \(t\) sobre o bem 1 (combustível), elevando seu preço pré-imposto \(p_1\) em \(\Delta p_1 = t\). Estimativas estruturais (sistema AIDS calibrado em POF):

- Parcela: \(s_1 = 0{,}08\), \(s_2 = 0{,}30\) (viagens de lazer), \(s_3 = 0{,}62\) (resto).
- Elasticidade-renda: \(\eta_1 = 0{,}3\) (necessidade), \(\eta_2 = 1{,}2\) (luxo — viagens crescem mais que renda), \(\eta_3 = 0{,}97\) (mediana).
- Elasticidades compensadas (estimadas; verificam Engel, Cournot, simetria, semidef. neg.):
  \(\varepsilon^c_{11} = -0{,}25\), \(\varepsilon^c_{21} = +0{,}10\) (lazer e combustível são substitutos líquidos — viagem de carro vs. avião/ônibus), \(\varepsilon^c_{31} = +0{,}05\).

### (a) A elasticidade-preço Marshalliana de combustível \(\varepsilon_{11}\) é:

- (i) \(-0{,}25 - 0{,}08\cdot 0{,}3 = -0{,}274\). **← CORRETA**
- (ii) \(-0{,}25 + 0{,}08\cdot 0{,}3 = -0{,}226\).
- (iii) \(-0{,}25\) — sem ajuste de Slutsky.
- (iv) \(-0{,}25 - 0{,}30\cdot 0{,}3 = -0{,}340\).

### (b) A elasticidade-preço cruzada Marshalliana, viagens de lazer em relação a combustível, \(\varepsilon_{21}\), via Slutsky:

- (i) \(+0{,}10 - 0{,}08\cdot 1{,}2 = +0{,}004\). **← CORRETA**
- (ii) \(+0{,}10 + 0{,}08\cdot 1{,}2 = +0{,}196\).
- (iii) \(+0{,}10\) — Marshalliana = Hicksiana em cruzadas.
- (iv) \(0\) — combustível e viagens de lazer são independentes brutos.

### (c) Para uma alta de combustível de 10% (\(\Delta\ln p_1 = 0{,}10\)), a queda percentual em consumo Marshalliano de combustível é:

- (i) \(-0{,}25\%\).
- (ii) \(-2{,}74\%\). **← CORRETA**
- (iii) \(-7{,}40\%\).
- (iv) \(-25\%\).

### (d) Aproximação de **CV** por unidade de gasto, para a alta de 10% no combustível, usando a fórmula linearizada \(\text{CV}/m \approx s_1\,(\Delta p_1/p_1)\,(1 + (1/2)\,\varepsilon^c_{11}\,(\Delta p_1/p_1))\):

- (i) \(\approx 0{,}80\%\,m\) — \(s_1\Delta p_1/p_1 = 0{,}008\) e termo de 2ª ordem desprezível. **← CORRETA**
- (ii) \(\approx 8\%\,m\) — usar Marshalliana sem corrigir.
- (iii) \(\approx 0\%\,m\) — \(s_1\) muito pequeno.
- (iv) \(\approx 2{,}74\%\,m\) — confunde \(\varepsilon\) com CV.

### (e) Sobre **regressividade** da política, considerando que a parcela \(s_1\) é maior nos decis pobres (\(s_1 \approx 0{,}15\) no 1º decil; \(s_1 \approx 0{,}05\) no 9º):

- (i) A política é progressiva — combustível é luxo.
- (ii) A política é regressiva — CV/m é maior nos decis pobres porque \(s_1\) é maior. **← CORRETA**
- (iii) A política é neutra — \(\varepsilon^c\) é constante por decil.
- (iv) Não há informação suficiente.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Análise de incidência tributária requer **dois passos**: (i) Slutsky para passar de elasticidade compensada estimável (Hicksiana) para elasticidade Marshalliana observável; (ii) integração da Hicksiana para CV exato (ou aproximação linear). **Regressividade** vem da heterogeneidade de \(s_i\) entre decis — não dos parâmetros estruturais. Em qualquer alta de preço de bem essencial, CV/m é maior onde \(s_i\) é maior.

**2. Derivação.** Slutsky: \(\varepsilon_{11} = -0{,}25 - 0{,}08(0{,}3) = -0{,}274\). Cruzada: \(\varepsilon_{21} = +0{,}10 - 0{,}08(1{,}2) = +0{,}004\) (combustível e viagens de lazer são quase **independentes brutos** mesmo sendo **substitutos líquidos** — viajar de avião em vez de carro é o canal pelo qual o efeito-renda quase compensa a substituição líquida). Queda percentual: \(\Delta\ln x_1^M = \varepsilon_{11}\cdot \Delta\ln p_1 = -0{,}274\cdot 0{,}10 = -0{,}0274\) ⇒ \(-2{,}74\%\). CV linearizada: 1ª ordem \(s_1\Delta p_1/p_1 = 0{,}08(0{,}10) = 0{,}008 = 0{,}8\%\) de \(m\); 2ª ordem \((1/2)(-0{,}25)(0{,}10) = -0{,}0125\) — multiplicando, correção de \(0{,}008(1 - 0{,}0125) \approx 0{,}79\%\). Regressividade: 1º decil tem \(s_1 \approx 0{,}15\), CV/m \(\approx 0{,}015\cdot 0{,}10 = 0{,}15\%\); 9º decil tem \(s_1 \approx 0{,}05\), CV/m \(\approx 0{,}05\%\). 1º decil paga **3× mais** em proporção da renda.

**3. Armadilha.** Item (a)(ii) erra sinal de Slutsky. Item (b)(iii) "Marshalliana = Hicksiana em cruzadas" é erro grave — sempre há ajuste de renda (\(s_j\eta_i\)) na Slutsky cruzada. Item (c)(iii) "-7,4%" calcula \(\varepsilon\cdot (10\cdot \Delta p)\) — confunde fator de 10 nas escalas. Item (d)(ii) usa Marshalliana sem corrigir — aproximação grosseira que ignora 2ª ordem.

**4. Extensão (Aula 3 + welfare).** Em sistemas AIDS calibrados, parcelas dependem de log-preços e log-renda; a heterogeneidade entre decis vem dos termos quadráticos. Política compensatória ("cashback de imposto sobre essencial") é desenhada para zerar regressividade — paga-se ao decil pobre o equivalente à CV calculada para esse decil. EC 132/2023 (reforma tributária brasileira) tem mecanismo de cashback explícito.

**5. Peer-review.** Calibre 🔴 porque integra (i) Slutsky em sistema, (ii) elasticidade compensada vs. Marshalliana em cruzadas, (iii) CV linearizada com correção de 2ª ordem, (iv) leitura de regressividade. Esse é o pacote operacional de welfare aplicado — Banco Mundial, FMI, Tesouro Nacional usam exatamente esses cálculos. Risco residual: a fórmula CV linearizada com termo de 2ª ordem (Diewert) raramente aparece em livros-texto graduados; aqui é bom o aluno **derivar** a fórmula via expansão de Taylor de \(e(p, u^0)\) ao redor de \(p^0\) — fica claro que o termo quadrático envolve \(\partial^2 e/\partial p^2 = \partial h/\partial p\), portanto \(\varepsilon^c\). Sem esse detalhe, parece "fórmula de bolso"; com ele, é teoria viva.
