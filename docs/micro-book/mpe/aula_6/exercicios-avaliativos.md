# Exercícios Avaliativos — Aula 6 (Arrow-Debreu II)

> **SSOT em Markdown.** Espelho narrativo de `platform/aula-06-exerc.html`. Mantenha em sincronia 1:1 quando editar qualquer um dos dois.

> **Tema:** Arrow-Debreu II — Existência via Brouwer/Kakutani, Radner sequencial, equivalência AD↔Radner sob mercado completo, mercados incompletos (Hart 1975, GP 1986), equação de Euler como caso particular do SDF.

> **Calibre:** **Jehle-Reny 3e §5.6 (piso obrigatório)**; J-R §5.5 revisado; N&S 12e §13.6 (complemento panorâmico). MWG §17.B/C/E + §19.E citados como referência opcional.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula correspondente:** Aula 6 — 27/05/2026 (quarta), 19:30–22:30
- **Abertura:** quinta 28/05 madrugada
- **Fechamento:** quarta 03/06 às 18:00 BRT (canônico, 1h30 antes da Aula 7)
- **Liberação do gabarito:** quinta 04/06 às 00:00 BRT
- **Tempo-alvo:** 2h30–3h
- **Composição:** 6 exercícios = **1 🟢 + 3 🟡 + 2 🔴**, totalizando ~28 sub-itens de múltipla escolha + 6 gabaritos 5-passos.

---

## Exercício 1 — 🟢 Equivalência AD↔Radner sob mercado completo (\(|S| = 2\), bond + ação)

### Enunciado

Economia de troca pura com \(L = 1\) bem físico, \(|S| = 2\) estados, \(I = 2\) agentes. Probabilidades de consenso \(\pi_1 = 0{,}5\), \(\pi_2 = 0{,}5\). Bernoullis idênticas \(v_A = v_B = \ln c\). Dotações \(\omega^A = (60, 100)\), \(\omega^B = (100, 60)\). Total \(\bar\omega = (160, 160)\) — agregado livre de risco.

Mercado financeiro de Radner com 2 ativos: **Bond livre de risco** \(D^{\text{bond}} = (1, 1)\) e **Ação** \(D^{\text{ação}} = (0, 2)\). Matriz de payoffs \(A = \begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix}\). **Normalização canônica de preços-Arrow:** \(p^*_1 + p^*_2 = 1\) (mesma convenção da Aula 5).

### Sub-itens

**(a)** O determinante e o rank de \(A\) são:

- (i) \(\det A = 0\), rank \(=1\) — mercado incompleto.
- (ii) **\(\det A = 2\), rank \(=2\) — mercado completo.** **[correta]**
- (iii) \(\det A = -2\), rank \(=2\) — mercado completo (mas com sinal negativo).
- (iv) \(\det A\) indeterminado.

**(b)** Em equilíbrio AD canônico, com agregado livre de risco e Bernoullis idênticas + crenças uniformes, ambos agentes ficam totalmente segurados em:

- (i) \(x^A = (60, 100), x^B = (100, 60)\) — autarquia.
- (ii) **\(x^{A*} = (80, 80), x^{B*} = (80, 80)\)** — totalmente segurados pelo seguro mútuo. **[correta]**
- (iii) \(x^A = (100, 60), x^B = (60, 100)\) — troca total.
- (iv) Indeterminado.

**(c)** Os preços-Arrow de equilíbrio AD (com normalização \(p^*_1 + p^*_2 = 1\)) e os preços dos ativos no mercado de Radner são:

- (i) **\(p^*_1 = p^*_2 = 0{,}5\); \(q^*_{\text{bond}} = p^*_1 + p^*_2 = 1\); \(q^*_{\text{ação}} = 0 \cdot p^*_1 + 2 \cdot p^*_2 = 1\)** (não-arbitragem \(q^*_j = \sum_s p^*_s\, A_{sj}\)). **[correta]**
- (ii) \(p^*_1 = p^*_2 = 0{,}5\); \(q^*_{\text{bond}} = 2\), \(q^*_{\text{ação}} = 2\).
- (iii) \(p^*_1 = 0\), \(p^*_2 = 1\); \(q^*_{\text{bond}} = 1\), \(q^*_{\text{ação}} = 2\).
- (iv) Indeterminados.

**(d)** Para implementar a alocação de seguro completo \(x^{A*} = (80, 80)\), o agente \(A\) precisa de portfolio \(\theta^A\) tal que \(A\theta^A = x^{A*} - \omega^A = (20, -20)\). Resolvendo \(\theta^A_{\text{bond}} \cdot 1 + \theta^A_{\text{ação}} \cdot 0 = 20\) e \(\theta^A_{\text{bond}} \cdot 1 + \theta^A_{\text{ação}} \cdot 2 = -20\):

- (i) \(\theta^A = (20, -20)\) interpretado como \(x - \omega\) diretamente.
- (ii) **\(\theta^A_{\text{bond}} = 20\), \(\theta^A_{\text{ação}} = -20\)** — \(A\) compra 20 bonds e vende 20 ações. **[correta]** Verifique: \(20 \cdot 1 + (-20) \cdot 0 = 20\) ✓; \(20 \cdot 1 + (-20) \cdot 2 = -20\) ✓.
- (iii) \(\theta^A = (40, -20)\).
- (iv) Indeterminado.

**(e)** Verificação da restrição em \(t = 0\) (\(q^* \cdot \theta^A\)):

- (i) \(20 \neq 0\) — restrição violada.
- (ii) **\(1 \cdot 20 + 1 \cdot (-20) = 0\)** — restrição satisfeita ✓ (sob normalização \(\sum p = 1\), \(q^* = (1, 1)\)). **[correta]**
- (iii) \(20 \cdot 20 = 400\).
- (iv) Indeterminado.

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Equivalência AD↔Radner sob mercado completo (\(\text{rank}(A) = |S|\)) é o teorema central da Aula 6. A alocação é a mesma; o que muda é a institucional: no AD canônico cota-se preços-Arrow ex-ante, em Radner cota-se ativos. Não-arbitragem garante \(q^*_j = \sum_s p^*_s\, A_{sj}\).

**2. Derivação.** \(\det A = 1 \cdot 2 - 1 \cdot 0 = 2 \neq 0\), rank \(= 2 = |S|\). Mercado completo. ✓ Em AD canônico com Bernoullis idênticas + agregado livre de risco + crenças uniformes, simetria força \(x^{A*}_s = x^{B*}_s = \bar\omega_s/2 = 80\) para cada \(s\). Equação SDF: \(p^*_1/p^*_2 = (\pi_1/\pi_2)\,(v'(80)/v'(80)) = 1\). Sob normalização canônica \(p^*_1 + p^*_2 = 1\) (mesma da Aula 5): \(p^* = (0{,}5;\,0{,}5)\). Não-arbitragem \(q^*_j = \sum_s p^*_s\, A_{sj}\): \(q^*_{\text{bond}} = 0{,}5 + 0{,}5 = 1\); \(q^*_{\text{ação}} = 0 \cdot 0{,}5 + 2 \cdot 0{,}5 = 1\). Para \(\theta^A\): resolva \(A\theta^A = (20, -20)\). De \(\theta^A_{\text{bond}} = 20\) (linha 1) e \(\theta^A_{\text{bond}} + 2\theta^A_{\text{ação}} = -20\) (linha 2), obtém-se \(\theta^A_{\text{ação}} = -20\). **Verificação:** \(q^* \cdot \theta^A = 1 \cdot 20 + 1 \cdot (-20) = 0\) ✓ (restrição em \(t = 0\) satisfeita; equivalente algebricamente a Walras AD individual).

**3. Armadilha.** Item (a)(i): aluno calcula \(\det A\) errado (confunde com matriz singular) — basta substituir. Item (b)(i): aluno confunde "mercado completo" com "autarquia" — não, mercado completo permite trocas que segurem. Item (c)(ii): aluno acerta \(p^* = (0{,}5;\,0{,}5)\) mas mistura com a versão sem normalização (\(p^* = (1,1)\) ⇒ \(q^* = (2,2)\)) — atenção a manter uma única convenção. Item (d)(i): aluno confunde \(x - \omega = (20, -20)\) com \(\theta\) diretamente (não vê a operação \(A^{-1}\)).

**4. Extensão.** Em \(|S|\) maior, mesma estrutura: cada ação Arrow \(e_s\) é replicada por portfolio \(\theta = A^{-1} e_s\) (existe sse rank completo). Black-Scholes-Merton (1973) é a versão contínua: opção europeia replicada por portfolio dinâmico (delta-hedging). Hansen-Jagannathan (1991) testaram empiricamente os bounds do SDF. **Aula 7** vai mostrar que externalidades quebram a estrutura mesmo em mercado completo — porque preferências dependem de variáveis fora de \(\mathbb{R}^{LS}\).

**5. Peer-review.** Calibre 🟢. Aluno que erra (a) ou (b) ainda confunde rank com algo diferente de "número de pivôs". Aluno que erra (d) não internalizou não-arbitragem. Não há ambiguidade no enunciado. Distratores plausíveis. Risco residual: aluno que tenta "normalizar" os preços antes de calcular \(q^*\) pode bater na pegadinha — gabarito explicita os dois caminhos. **Sem risco residual.**

---

## Exercício 2 — 🟡 Mercado incompleto: rank deficiente em \(|S| = 3\) com 2 ativos

### Enunciado

Economia \(L = 1\), \(|S| = 3\), \(I = 2\). Bernoullis \(v_A = v_B = \ln c\). Probabilidades de consenso \(\pi = (1/3, 1/3, 1/3)\). Dotações \(\omega^A = (90, 60, 30)\), \(\omega^B = (30, 60, 90)\). Total \(\bar\omega = (120, 120, 120)\).

Mercado financeiro de Radner: 2 ativos. **Bond** \(D^{\text{bond}} = (1, 1, 1)\) e **Ação** \(D^{\text{ação}} = (0, 1, 3)\). Matriz \(A = \begin{pmatrix} 1 & 0 \\ 1 & 1 \\ 1 & 3 \end{pmatrix} \in \mathbb{R}^{3 \times 2}\).

### Sub-itens

**(a)** O rank da matriz de payoffs \(A\) é:

- (i) **2 (mercado incompleto, pois \(|S| = 3 > 2\))** — colunas linearmente independentes mas em número insuficiente. **[correta]**
- (ii) 3 (mercado completo).
- (iii) 1 (mercado incompleto, mas mais grave).
- (iv) Indeterminado sem mais informação.

**(b)** O span de \(A\) (payoff space \(\mathcal{M}\)) é o subespaço:

- (i) \(\mathbb{R}^3\) inteiro.
- (ii) **\(\{(a, a + b, a + 3b) : a, b \in \mathbb{R}\}\) — plano em \(\mathbb{R}^3\) gerado pelas colunas de \(A\), dimensão 2.** **[correta]**
- (iii) Todo \(\mathbb{R}^3_+\) (cone positivo).
- (iv) Apenas vetores constantes \((c, c, c)\).

**(c)** A alocação Pareto-eficiente que **seria** atingida em AD canônico (mercado completo via 3 ativos Arrow) é:

- (i) \(x^{A*} = \omega^A\), \(x^{B*} = \omega^B\) — autarquia.
- (ii) **\(x^{A*} = x^{B*} = (60, 60, 60)\)** — ambos totalmente segurados (agregado livre de risco + Bernoullis idênticas + crenças uniformes). **[correta]**
- (iii) \(x^{A*} = (120, 0, 0), x^{B*} = (0, 120, 120)\).
- (iv) Indeterminado.

**(d)** Para implementar \(x^{A*} - \omega^A = (60-90, 60-60, 60-30) = (-30, 0, 30)\), seria necessário portfolio \(\theta^A\) com \(A\theta^A = (-30, 0, 30)\). Sobre essa equação:

- (i) Tem solução com \(\theta^A_{\text{bond}} = -30\), \(\theta^A_{\text{ação}} = 30\) (verifique).
- (ii) **Não tem solução: \((-30, 0, 30) \notin \text{span}(A)\), porque \((-30, 0, 30) = a(1,1,1) + b(0,1,3)\) exigiria \(a = -30\), \(a+b = 0 \Rightarrow b = 30\), \(a+3b = -30 + 90 = 60 \neq 30\). Sistema inconsistente.** **[correta]** Mercado incompleto bloqueia a alocação de seguro completo.
- (iii) Tem infinitas soluções.
- (iv) Tem solução única \(\theta^A_{\text{bond}} = 0, \theta^A_{\text{ação}} = 0\).

**(e)** A consequência teórica do (d) é:

- (i) Não existe equilíbrio de Radner.
- (ii) **O equilíbrio de Radner é constrained Pareto-eficiente (no span dos ativos disponíveis), mas Pareto-inferior à alocação AD ideal (Hart 1975).** **[correta]**
- (iii) O equilíbrio coincide com autarquia.
- (iv) Os preços de equilíbrio são únicos e iguais aos preços-Arrow do AD canônico.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Quando \(\text{rank}(A) < |S|\), o payoff space \(\mathcal{M}\) é subespaço estrito (dimensão menor que \(|S|\)) de \(\mathbb{R}^S\). Alocações fora de \(\mathcal{M}\) não são implementáveis via portfolio — são "Pareto-superiores em sentido absoluto, mas inviáveis em sentido institucional". Equilíbrio existe mas é Pareto-inferior à alocação AD ideal: este é o teorema de Hart (1975).

**2. Derivação.** Colunas de \(A\): \((1,1,1)^\top\) e \((0,1,3)^\top\). Linearmente independentes (não múltiplas). Logo rank \(= 2\). Mas \(|S| = 3\), então mercado é incompleto. Span \(= \{a(1,1,1) + b(0,1,3) : a, b \in \mathbb{R}\} = \{(a, a+b, a+3b)\}\) — plano 2D em \(\mathbb{R}^3\). A alocação ideal AD seria \(x^{A*} = (60,60,60)\) por simetria. Para implementar: \(A\theta^A = (-30, 0, 30)\). Da 1ª linha: \(a = -30\); 2ª: \(a + b = 0 \Rightarrow b = 30\); 3ª: \(a + 3b = -30 + 90 = 60 \neq 30\). Inconsistente. Logo \((-30, 0, 30) \notin \mathcal{M}\). **A alocação de seguro completo não é implementável** com bond + ação. Equilíbrio Radner existirá em outra alocação \(\hat x \in \omega + \text{span}(A)\) que satisfaz UMP individual + LNS dada a estrutura de preços de Radner — em geral \(\hat x \neq (60, 60, 60)\). Esse \(\hat x\) é uma **alocação second-best sob a restrição de spanning** (também chamada de **constrained Pareto-eficiente** no sentido de Hart 1975 / Magill-Quinzii §10.3): não é Pareto-superável **dentro** das alocações implementáveis pelo span dos ativos disponíveis, mas é Pareto-inferior à alocação ideal AD \((60, 60, 60)\). Cálculo numérico explícito de \(\hat x\) exige resolver o equilíbrio Radner com 2 ativos (UMP individual + market-clearing simultâneo); ver Magill-Quinzii §10.

**3. Armadilha.** Item (d)(i): aluno se distrai e marca uma combinação aleatória sem testar todas as 3 linhas — só testou 1 e 2. Item (e)(i): aluno confunde "mercado incompleto" com "não existe equilíbrio" — equilíbrio existe sob hipóteses padrão (Magill-Quinzii 1996); só não é Pareto-eficiente.

**4. Extensão.** GP (1986) mostraram que adicionar um terceiro ativo nem sempre Pareto-melhora — pode haver perdedores. Esse é o resultado contra-intuitivo central da incompletude: política de "completar mercado" não é trivialmente boa. **Aula 8** (sel.adv./risco moral) detalha como info assimétrica adiciona uma camada de incompletude endógena. **Aula 9** (sinalização) dá pistas de como mercados podem se autocompletar via sinais observáveis.

**5. Peer-review.** Calibre 🟡. Questão direta sobre álgebra linear de span + interpretação econômica. Distratores em (a) e (b) confundem rank com número de colunas ou tamanho da matriz. Distrator em (d)(i) é a armadilha mais grave — força o aluno a verificar todas as 3 equações lineares (não só 2). **Tradeoff de tempo:** ~12 min/exercício, dentro do alvo. **Risco residual:** mínimo; o vetor \((-30, 0, 30)\) foi escolhido especificamente para que falhe na 3ª linha — facilita a verificação.

---

## Exercício 3 — 🟡 Existência via Brouwer: simplex e excesso de demanda

### Enunciado

Considere economia AD canônica com \(L = 1\), \(|S| = 2\), \(I = 2\). Probabilidades de consenso \(\pi = (1/2, 1/2)\). Bernoullis \(v_A = \ln c\), \(v_B = \ln c\). Dotações \(\omega^A = (90, 30)\), \(\omega^B = (30, 90)\) (espelhadas).

Defina \(p \in \Delta = \{p \in \mathbb{R}^2_+ : p_1 + p_2 = 1\}\) (simplex 1-dim, segmento). O excesso de demanda agregada \(z(p) = (z_1(p), z_2(p))\) tem propriedade: \(z_1(p) + z_2(p) = 0\) por viabilidade somada (Walras + simetria).

### Sub-itens

**(a)** Sob Bernoulli \(\ln\) e dotações dadas, a demanda do agente \(A\) por bem 1 é:

- (i) \(x^A_1(p) = \omega^A_1 = 90\) — autarquia.
- (ii) \(x^A_1(p) = \pi_1\, m^A/p_1 = (1/2)(90 p_1 + 30 p_2)/p_1\).
- (iii) **\(x^A_1(p) = \pi_1\, m^A/p_1\), com \(m^A = 90 p_1 + 30 p_2\). Em \(\pi_1 = 1/2\): \(x^A_1(p) = (45 p_1 + 15 p_2)/p_1 = 45 + 15 p_2/p_1\).** **[correta]** Demanda Cobb-Douglas (log) com peso \(\pi_1 = 1/2\) na renda.
- (iv) \(x^A_1(p) = 90 p_1\) — proporcional a \(p_1\).

**(b)** Por simetria entre \(A\) e \(B\) (dotações espelhadas, mesmas probabilidades, mesma Bernoulli), a demanda agregada por bem 1 é:

- (i) \(x^A_1(p) + x^B_1(p) = 90\).
- (ii) **\(x^A_1(p) + x^B_1(p) = (1/2)(\omega^A_1 + \omega^B_1) + (1/2)(\omega^A_2 + \omega^B_2) p_2/p_1 = 60 + 60 p_2/p_1\)** (substituindo \(\omega^A_1+\omega^B_1=120, \omega^A_2+\omega^B_2=120\)). **[correta]**
- (iii) \(120 p_1\).
- (iv) \(60\) constante.

**(c)** Em equilíbrio (\(z_1(p^*) = 0\)), os preços satisfazem:

- (i) \(p^*_1 = 0, p^*_2 = 1\).
- (ii) \(p^*_1 = 1, p^*_2 = 0\).
- (iii) **\(p^*_1 = p^*_2 = 1/2\)** — agregado livre de risco + simetria força preços iguais. **[correta]** Verifica-se: \(60 + 60(1/2)/(1/2) = 120\). Excesso \(z_1 = 120 - 120 = 0\) ✓.
- (iv) Indeterminado.

**(d)** O mapa de ajuste de preços de Brouwer \(T(p) = (p + \max(z, 0))/(\text{soma})\), restrito ao simplex \(\Delta\), tem **ponto fixo** em \(p^*\) porque:

- (i) \(T\) é função linear.
- (ii) **\(T\) é função contínua de compacto convexo (\(\Delta\)) nele mesmo, e Brouwer garante ponto fixo. O ponto fixo \(p^*\) tem \(z(p^*) \le 0\); combinado com Walras \(p^* \cdot z(p^*) = 0\) e \(p^* > 0\), conclui-se \(z(p^*) = 0\).** **[correta]**
- (iii) \(T\) é estritamente decrescente.
- (iv) Brouwer não se aplica a esse problema.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** Existência de equilíbrio AD se prova via ponto fixo. Brouwer aplicado ao mapa de ajuste \(T\) sobre o simplex \(\Delta\) entrega \(p^*\) com \(z(p^*) = 0\) (combinando com Walras + monotonicidade de \(p^*\)). Em casos simétricos com fórmula fechada (Cobb-Douglas log + agregado livre de risco), o equilíbrio é direto: preços iguais.

**2. Derivação.** Demanda log: \(x^i_s(p) = \pi_s\, m^i/p_s = \pi_s (\sum_{s'} p_{s'} \omega^i_{s'})/p_s\). Para \(A\): \(m^A = 90 p_1 + 30 p_2\), \(x^A_1 = (1/2)(90p_1 + 30p_2)/p_1 = 45 + 15 p_2/p_1\). Por simetria, \(x^B_1 = 15 + 45 p_2/p_1\). Agregada: \(x^A_1 + x^B_1 = 60 + 60 p_2/p_1\). Excesso: \(z_1 = (60 + 60 p_2/p_1) - 120 = 60(p_2/p_1 - 1)\). Em \(p_2 = p_1 = 1/2\): \(z_1 = 0\). ✓ Para Brouwer: \(T_l(p) = (p_l + \max(z_l, 0))/(1 + \sum_k \max(z_k, 0))\). \(T\) contínua porque \(z\) contínua. \(T(\Delta) \subset \Delta\) por construção. Brouwer entrega \(p^*\). Em \(p^*\), \(z(p^*) \le 0\); Walras \(p^* \cdot z(p^*) = 0\) + \(p^* > 0\) (interior, por fronteira) \(\Rightarrow z(p^*) = 0\). \(\blacksquare\)

**3. Armadilha.** Item (a)(i): "autarquia" está errado — preferências log + crenças uniformes + dotações desiguais \(\Rightarrow\) há gain from trade. Item (c)(iv): aluno marca "indeterminado" porque não tentou — simetria + agregado livre de risco força \(p^*_1 = p^*_2\). Item (d)(iii): aluno tenta forçar Brouwer onde não há monotonicidade.

**4. Extensão.** Em economia com mais agentes, mais bens, mais estados — mesma estrutura. As 4 propriedades canônicas (continuidade, homogeneidade, Walras, fronteira) sobrevivem; Brouwer/Kakutani entrega \(p^*\). **A prova é genuinamente o mesmo argumento da Aula 4 estendido para \(\mathbb{R}^{LS}\).** Caso clássico: preferências apenas convexas (não estritamente) \(\Rightarrow\) Kakutani. **Aula 7** vai mostrar onde existência pode falhar: dotação não-positiva, não-monotonicidade, externalidade.

**5. Peer-review.** Calibre 🟡. Questão de cálculo direto da demanda log + verificação que Brouwer se aplica. Distratores em (a) confundem demanda com dotação. Distrator em (c)(iv) é tentação para aluno que não tentou. Distrator em (d)(iii) é teoria errada de Brouwer. **Tradeoff de tempo:** ~10 min, dentro do alvo. **Risco residual:** baixo; a álgebra é direta para quem fez Aula 5.

---

## Exercício 4 — 🟡 Equação de Euler intertemporal sob CRRA

### Enunciado

Agente representativo em economia intertemporal \(t = 0, 1\), sem incerteza (\(|\Omega| = 1\)). Bernoulli CRRA \(u(c) = c^{1-\gamma}/(1 - \gamma)\) com \(\gamma = 2\). Fator de desconto \(\beta = 0{,}95\). Taxa bruta de juros \(R = 1{,}05\) (5% real). O agente otimiza consumo intertemporal sujeito a restrição orçamentária inter-temporal.

### Sub-itens

**(a)** A equação de Euler para esse agente é:

- (i) \(c_t = c_{t+1}\) — sem desconto.
- (ii) \(u'(c_t) = u'(c_{t+1})\) — sem juros nem desconto.
- (iii) **\(u'(c_t) = \beta R\, u'(c_{t+1})\)** — equação canônica intertemporal. **[correta]**
- (iv) \(u'(c_t) = (\beta + R)\, u'(c_{t+1})\).

**(b)** Substituindo \(u'(c) = c^{-\gamma}\) com \(\gamma = 2\), a equação fica:

- (i) \(c_t^{-2} = 0{,}95 \cdot 1{,}05 \cdot c_{t+1}^{-2}\), ou seja \((c_{t+1}/c_t)^2 = 1/(0{,}95 \cdot 1{,}05) = 1/0{,}9975 \approx 1{,}0025\).
- (ii) \(c_t^{-2} = c_{t+1}^{-2}\).
- (iii) **\(c_t^{-2} = 0{,}95 \cdot 1{,}05 \cdot c_{t+1}^{-2} \Rightarrow c_{t+1}/c_t = (0{,}95 \cdot 1{,}05)^{1/2} = (0{,}9975)^{1/2} \approx 0{,}9987\).** **[correta]** Em \(\gamma = 2\): a razão de consumo cresce a uma taxa que depende de \(\beta R\) elevada a \(1/\gamma\).
- (iv) \(c_t = c_{t+1} \cdot 1{,}05\).

**(c)** A interpretação do resultado \(c_{t+1}/c_t \approx 0{,}9987 < 1\) é:

- (i) Agente está poupando mais do que gastando.
- (ii) **Em \(\beta R < 1\) (\(0{,}95 \cdot 1{,}05 = 0{,}9975 < 1\)), o consumo decresce no tempo. O agente é "impaciente o suficiente" para que o desconto subjetivo (\(\beta\)) não compense a recompensa de poupar (\(R\)). Logo \(c_{t+1} < c_t\).** **[correta]**
- (iii) A taxa de juros é alta demais.
- (iv) O agente é averso ao risco.

**(d)** Considere agora **com incerteza** (\(|\Omega| = 2\) em \(t+1\), estados "boom" e "recessão" com \(\pi_b = 0{,}6\), \(\pi_r = 0{,}4\)), retornos brutos do ativo \((R_b, R_r) = (1{,}10, 0{,}90)\). A equação de precificação SDF é:

- (i) \(P_0 = 1\) — preço fixo.
- (ii) **\(1 = E_t[m_{t+1}\, R_{t+1}] = \pi_b\, m_b\, R_b + \pi_r\, m_r\, R_r\), onde \(m_s = \beta\, u'(c_{t+1, s})/u'(c_t)\).** **[correta]** Lucas (1978) generaliza Euler para incerteza.
- (iii) \(R = 1\) — taxa de juros nula.
- (iv) Equação não pode ser escrita.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** A equação de Euler intertemporal \(u'(c_t) = \beta R\, u'(c_{t+1})\) é caso particular da equação fundamental do SDF (Aula 5) quando se identifica \(s = (t, \omega)\), \(p^*_t/p^*_{t+1} = R\), e \(\pi_{t+1}/\pi_t = \beta\) (peso temporal absorvido na probabilidade subjetiva). Sob CRRA, a razão de consumo no tempo é \((\beta R)^{1/\gamma}\); sob log (\(\gamma = 1\)), simplifica para \(\beta R\).

**2. Derivação.** UMP intertemporal: \(\max_{c_t, c_{t+1}} u(c_t) + \beta\, u(c_{t+1})\) s.a. \(c_t + c_{t+1}/R = m_0\). Lagrangiano: \(\mathcal{L} = u(c_t) + \beta u(c_{t+1}) - \lambda(c_t + c_{t+1}/R - m_0)\). CPO: \(u'(c_t) = \lambda\); \(\beta u'(c_{t+1}) = \lambda/R\). Combinando: \(u'(c_t) = \beta R u'(c_{t+1})\). Sob CRRA \(u' = c^{-\gamma}\): \(c_t^{-\gamma} = \beta R c_{t+1}^{-\gamma} \Rightarrow (c_{t+1}/c_t)^\gamma = \beta R \Rightarrow c_{t+1}/c_t = (\beta R)^{1/\gamma}\). Em \(\gamma = 2, \beta R = 0{,}9975\): \(c_{t+1}/c_t = (0{,}9975)^{1/2} \approx 0{,}9987\). Para precificação de ativo arriscado: \(1 = E_t[m_{t+1} R_{t+1}]\), com \(m_{t+1} = \beta u'(c_{t+1})/u'(c_t)\).

**3. Armadilha.** Item (a)(i)/(a)(ii): aluno esquece o termo \(\beta R\). Item (b)(i): aluno pega o sinal errado (eleva à \(\gamma\) em vez de \(1/\gamma\)). Item (c)(iii): "taxa alta demais" não tem sentido — o ponto é \(\beta R\) total. Item (d)(i): preço fixo é absurdo.

**4. Extensão.** Em modelos macro (RBC, NK, C-CAPM), Euler é equação central. Sob CRRA, a elasticidade de substituição intertemporal é \(1/\gamma\). \(\gamma = 1\) (log) é caso onde elasticidade \(= 1\) — choque na taxa de juros não muda razão de consumo. Hansen-Jagannathan (1991) mostraram que SDFs CRRA com \(\gamma\) razoável (1-5) **não casam** com dados — abre o equity premium puzzle (Mehra-Prescott 1985). **Aulas 8-9** não cobrem; pré-monitoria 5 (revisão AF) menciona se houver tempo.

**5. Peer-review.** Calibre 🟡. Cálculo direto sob CRRA. Distratores tentam erro de sinal (item b) ou erro estrutural (itens a, c, d). **Tradeoff de tempo:** ~10 min/exercício. **Risco residual:** quando \(\gamma\) é "padrão" (2), aluno calcula \((0{,}9975)^{1/2}\) facilmente; em \(\gamma\) maior, conta fica chata sem calculadora — mas o ponto é a estrutura, não o número final.

---

## Exercício 5 — 🔴 Existência com Kakutani: preferências lineares e demanda multivalorada

### Enunciado

Considere agente único em economia \(L = 2\) com preferências **lineares** \(u(x_1, x_2) = x_1 + 2 x_2\) (apenas convexas, **não estritamente convexas**). Dotação \(\omega = (10, 10)\). Sob preços \((p_1, p_2) \gg 0\), agente otimiza UMP em \(\mathbb{R}^2_+\). Para análise de existência, considere economia análoga com \(I = 2\) agentes idênticos.

### Sub-itens

**(a)** Sob preços \(p = (1, 1)\), a demanda do agente (sob \(u = x_1 + 2 x_2\)) é:

- (i) Demanda multivalorada — todos os pontos da reta orçamentária.
- (ii) **Canto: \(x^* = (0, m/p_2) = (0, 20)\).** TMS \(= 1/2 <\) razão de preços \(= 1\) ⇒ consome só bem 2 (mais utilidade por unidade de moeda). **[correta]**
- (iii) Canto: \(x^* = (m/p_1, 0) = (20, 0)\).
- (iv) Indeterminada.

**(b)** Sob preços \(p = (1, 2)\) (i.e., \(p_1/p_2 = 1/2 = \) TMS):

- (i) Demanda única \(x^* = (m/p_1, 0)\).
- (ii) Demanda única \(x^* = (0, m/p_2)\).
- (iii) Demanda única no centro \(x^* = (m/(2p_1), m/(2p_2))\).
- (iv) **Demanda multivalorada: toda a fronteira da reta orçamentária \(\{(x_1, x_2) \ge 0 : p_1 x_1 + p_2 x_2 = m\}\).** TMS = razão de preços ⇒ todas as combinações são igualmente preferidas. **[correta]**

**(c)** Para mostrar existência de equilíbrio em economia com agentes com tais preferências lineares, a ferramenta apropriada é:

- (i) Brouwer aplicado à demanda \(x(p, m)\).
- (ii) **Kakutani aplicado à correspondência de excesso de demanda \(z(p) \rightrightarrows \mathbb{R}^L\)**, porque demanda linear pode ser multivalorada nos preços degenerados (TMS = razão de preços) — \(z\) também o é. Berge generalizado garante semi-continuidade superior + valores convexos compactos. **[correta]**
- (iii) Hahn-Banach.
- (iv) Existência não pode ser garantida.

**(d)** Para que Kakutani entregue ponto fixo, \(z(p) \rightrightarrows \mathbb{R}^L\) precisa ter:

- (i) Continuidade no sentido de função.
- (ii) **Semi-continuidade superior + valores convexos compactos não-vazios.** Vem das hipóteses sobre primitivos via Berge generalizado. **[correta]**
- (iii) Diferenciabilidade.
- (iv) Estrita convexidade (que justamente *não* temos aqui).

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** Preferências apenas convexas (não estritamente convexas) podem gerar demanda **multivalorada** — caso típico: preferências lineares em situações degeneradas onde TMS = razão de preços. Nesse caso, Brouwer falha (demanda não é função única) e precisamos de Kakutani: ponto fixo de correspondência convexa-valorada e semi-contínua superior. As hipóteses do Berge generalizado (continuidade + convexidade) garantem que \(z(p) \rightrightarrows \mathbb{R}^L\) é compacta-convexa-valorada e gráfico fechado.

**2. Derivação.** Para \(u = x_1 + 2 x_2\): TMS \(= u_1/u_2 = 1/2\) constante. Caso (a) — \(p = (1,1)\): \(p_1/p_2 = 1\). Util/moeda: bem 1 = \(1/1 = 1\); bem 2 = \(2/1 = 2\). Bem 2 vence — canto \(x^* = (0, m/p_2)\) com \(m = 1 \cdot 10 + 1 \cdot 10 = 20\), ou seja \(x^* = (0, 20)\). Caso (b) — \(p = (1, 2)\): \(p_1/p_2 = 1/2\) coincide com TMS; util/moeda do bem 1 = 1, do bem 2 = \(2/2 = 1\) — empate exato. Toda a reta orçamentária \(\{(x_1, x_2) \ge 0 : x_1 + 2 x_2 = m\}\) é solução; demanda é correspondência. Em geral, se \(p_1/p_2 < 1/2\) canto bem 1; se \(>1/2\) canto bem 2; se \(=1/2\) multivalor. **Existência via Kakutani:** \(z(p)\) é correspondência convexa-valorada (combinação convexa de soluções é solução, sob preferências convexas) e semi-contínua superior (limite de sequências de soluções é solução, sob continuidade + Berge). Ponto fixo \(p^*\) com \(0 \in z(p^*)\) é equilíbrio.

**3. Armadilha.** Item (a)(i): aluno acha que demanda é sempre multivalorada — não, só nos preços degenerados (TMS = razão preços). Item (a)(iii): inverte qual bem é "mais barato em utilidade por moeda". Item (b)(i)/(ii)/(iii): só seriam corretos se TMS \(\neq\) razão de preços. Item (c)(iii): Hahn-Banach é separação de hiperplanos, ferramenta diferente; aparece em 2º TBE. Item (d)(iv): "estrita convexidade" é exatamente a hipótese que *não* temos — daí a necessidade de Kakutani.

**4. Extensão.** Em economia EG geral, preferências CRRA, CES com \(\sigma > 0\) finito são estritamente convexas \(\Rightarrow\) Brouwer suficiente. Preferências lineares (e Leontief) geram demanda multivalorada em conjuntos de medida zero do simplex — Kakutani garante existência apesar disso. **A maioria dos modelos macro aplicados** usa CRRA/log → Brouwer suficiente; Kakutani entra teoricamente, raramente operacionalmente. Em finanças (Black-Scholes, equilíbrios CAPM com short-selling restrito), demanda multivalorada reaparece e Kakutani volta a ser indispensável.

**5. Peer-review.** Calibre 🔴. Questão técnica que separa quem entendeu a distinção Brouwer vs Kakutani de quem só decorou. Distrator (a)(i) é o mais armadilhoso — força aluno a checar a condição de degenerescência (não é o caso em \(p = (1,1)\)). Item (b) testa o reconhecimento do caso multivalorado quando TMS = razão de preços. **Tradeoff de tempo:** ~15 min, no limite. **Risco residual:** alto para alunos que não viram a distinção formal entre função e correspondência. Recomenda-se que o aluno volte ao Bloco 1 do durante-aula para a revisão antes de tentar.

---

## Exercício 6 — 🔴 Hart 1975: introduzir um novo ativo pode piorar bem-estar

### Enunciado

Considere economia \(L = 1\), \(|S| = 3\), \(I = 2\) agentes. Probabilidades \(\pi = (1/3, 1/3, 1/3)\). Bernoullis \(v_A = v_B = \ln c\). Dotações \(\omega^A = (90, 60, 30)\), \(\omega^B = (30, 60, 90)\). Total \(\bar\omega = (120, 120, 120)\).

**Cenário 1:** Mercado de Radner com **2 ativos**: bond \(D^{\text{bond}} = (1, 1, 1)\) e ação \(D^{\text{ação}} = (0, 1, 3)\). Matriz \(A_2 \in \mathbb{R}^{3 \times 2}\).

**Cenário 2:** Mercado com **3 ativos**: bond + ação + opção (\(D^{\text{opção}} = (0, 0, 1)\)). Matriz \(A_3 \in \mathbb{R}^{3 \times 3}\).

### Sub-itens

**(a)** Em Cenário 1 (2 ativos), o rank é 2 (já calculado em Exercício 2). Em Cenário 2 (3 ativos), o rank é:

- (i) 2 (mesmo que Cenário 1 — opção é redundante).
- (ii) **3 — colunas \((1,1,1), (0,1,3), (0,0,1)\) são linearmente independentes (forma triangular). Mercado completo.** **[correta]**
- (iii) Indeterminado.
- (iv) 4 (mais que dimensão de \(\mathbb{R}^3\)).

**(b)** No Cenário 2 (mercado completo), a alocação de equilíbrio é AD canônica: \(x^{A*} = x^{B*} = (60, 60, 60)\) (totalmente segurados, simetria). No Cenário 1 (mercado incompleto), a alocação será **diferente**, restrita ao span. Sobre a comparação:

- (i) Cenário 1 \(\succ_{\text{Pareto}}\) Cenário 2.
- (ii) Cenário 1 \(=_{\text{Pareto}}\) Cenário 2.
- (iii) **Cenário 2 \(\succ_{\text{Pareto}}\) Cenário 1: completar mercados elimina ineficiência. Ambos agentes preferem (60,60,60) — Pareto-superior à alocação de Cenário 1 (onde algum risco residual permanece).** **[correta]** Esta é a versão "fácil" de Hart 1975 — quando o completamento é genuinamente Pareto-melhorador.
- (iv) Não comparáveis.

**(c)** Considere agora uma variação: \(\omega^A = (90, 60, 30)\) e \(\omega^B = (60, 60, 60)\) (\(B\) já é livre de risco; **agregado é \(\bar\omega = (150, 120, 90)\) — arriscado**). Sob 2 ativos (bond + ação), os agentes atingem certo equilíbrio Radner \(\hat x^A, \hat x^B\). Adicionar uma opção (Cenário 2):

- (i) Sempre Pareto-melhora.
- (ii) **Pode Pareto-melhorar OU pode prejudicar algum agente — depende das preferências e dotações específicas. Esse é o resultado central de Geanakoplos & Polemarchakis (1986).** **[correta]** Quando agregado é arriscado, completar mercado redistribui risco entre agentes; o agente que estava se aproveitando da incompletude (e.g., \(B\) cobrando "preço de seguro" alto via ação na incompletude) pode perder.
- (iii) Sempre Pareto-piora.
- (iv) Não muda alocação.

**(d)** A intuição econômica do resultado contra-intuitivo (item c) é:

- (i) Mercados são monótonos em ativos — sempre melhora.
- (ii) **Quando rank é deficiente, alguns agentes têm "poder de mercado implícito" sobre o seguro residual. Adicionar um ativo elimina esse poder de mercado (preços se reajustam) — quem ganhava perde.** **[correta]**
- (iii) Concorrência perfeita garante Pareto-melhoria sempre.
- (iv) Resultado contradiz teoria padrão.

**(e)** Implicação política do resultado de Hart-GP:

- (i) Desregulamentar criação de derivativos é sempre Pareto-melhorador.
- (ii) **Política de "completar mercado" via novos derivativos não é trivialmente boa — análise caso-a-caso é necessária. Justifica regulação financeira em produtos complexos com base em fundamentação teórica de microeconomia.** **[correta]**
- (iii) Mercados financeiros são sempre completos.
- (iv) Hart-GP contradiz Pareto.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Hart (1975) provou que equilíbrio em mercado incompleto é genericamente Pareto-ineficiente em sentido absoluto. GP (1986) refinou: **adicionar um novo ativo financeiro pode piorar** o bem-estar de alguns agentes. Implicação política: completar mercado nem sempre é Pareto-melhorador. Justifica regulação de produtos financeiros complexos com base em microeconomia rigorosa.

**2. Derivação.** Cenário 1: \(A_2\) tem rank 2, span = plano em \(\mathbb{R}^3\). Equilíbrio Radner em alocação restrita ao span; constrained PE. Cenário 2: \(A_3\) tem rank 3 (matriz triangular não-singular: \(\det = 1 \cdot (1 \cdot 1 - 0 \cdot 3) = 1 \neq 0\)). Mercado completo, equilíbrio AD canônico atingível. Quando agregado é livre de risco + Bernoullis idênticas + crenças uniformes (a hipótese do item b), completar é Pareto-melhorador (ambos preferem (60,60,60) à alocação de span). Quando agregado é arriscado (item c), completar redistribui risco; preços de equilíbrio se reajustam; **algum agente pode ficar pior**.

> **Sobre o item (c) — declarativo, não numérico.** O exercício afirma como possibilidade teórica que adicionar opção pode prejudicar algum agente, mas **não exibe** o cálculo numérico do equilíbrio Radner constrained antes vs. depois (precisaria resolver UMP individual + market-clearing em \(|S|=3\) com 2 ativos e depois com 3 ativos — ~30 min de álgebra fora do calibre N&S/J-R desta lista). A justificativa formal está em duas referências canônicas: **Hart (1975, *J. Economic Theory* 11(3): 418–443, Section IV — "Welfare Properties of Equilibrium")** demonstra que equilíbrios de mercado incompleto são **genericamente Pareto-ineficientes em sentido absoluto**; e **Geanakoplos &amp; Polemarchakis (1986, "Existence, Regularity, and Constrained Suboptimality of Competitive Allocations When the Asset Market is Incomplete", em *Uncertainty, Information and Communication: Essays in Honor of Kenneth J. Arrow, vol. III*, ed. Heller-Starr-Starrett, Cambridge UP, Theorem 1)** mostra explicitamente que adicionar um ativo a um mercado já incompleto pode mover o equilíbrio para uma alocação **constrained-Pareto-inferior** sob a nova estrutura — é sempre <em>localmente</em> ambíguo, e o sinal global depende dos detalhes.

> **Mecanismo intuitivo.** Sob \(\bar\omega = (150, 120, 90)\) arriscado, no Cenário 1 (bond + ação) o equilíbrio Radner aloca riscos parcialmente. Os preços-Arrow implícitos (em \(\mathcal{M} = \text{span}(A_2)\)) cotam o "seguro residual disponível" entre os agentes; quem está short na ação implicitamente vende seguro contra o estado 3 (alta dotação agregada). Quando a opção \((0,0,1)\) entra no Cenário 2, o estado 3 passa a ser **diretamente segurado** — o agente que vendia seguro residual via ação perde a renda implícita; preços de bond e ação se reajustam para cima ou para baixo dependendo de elasticidades de substituição. **Quem ganhava com a incompletude perde**; quem perdia ganha. Pareto não-comparável.

**3. Armadilha.** Item (a)(i): aluno acha que opção é redundante porque "já tem ação" — não, opção amplia rank. Item (b)(i): aluno confunde "Pareto" com "soma de utilidades" — não, Pareto é vetorial. Item (c)(i)/(iii): aluno aplica "mais é sempre melhor" sem ver o teorema GP. Item (d)(iv): aluno acha que Hart-GP é heterodoxia — é teoria neoclássica padrão (citada em MWG §19.E e Magill-Quinzii §10.3).

**4. Extensão.** Magill-Quinzii (1996, *Theory of Incomplete Markets, Vol. 1*, MIT Press) §10.3 dá exemplos numéricos completos do mecanismo de GP 1986 — aluno interessado em ver "quem ganha vs. quem perde" com cálculo numérico explícito tem ali a referência. Aplicações práticas: regulação de derivativos OTC pós-2008 (Dodd-Frank, EMIR) tem fundamentação parcial em Hart-GP. **Aula 8** (sel.adv. + risco moral) detalha como **info assimétrica** adiciona uma camada de incompletude endógena: mercado pode "decidir não existir" mesmo com tecnologia para criar ativo. Akerlof (1970) lemons. **Aula 9** (sinalização) dá pistas de como mercados podem se autocompletar.

**5. Peer-review.** Calibre 🔴. Questão de mais alto nível conceitual da Aula 6: integra existência + incompletude + implicações políticas. Distratores (a) e (c) são pegadinhas algébricas; (d) e (e) são pegadinhas conceituais sobre o resultado contra-intuitivo. **Tradeoff de tempo:** ~18 min, no topo do alvo. **Risco residual:** moderado. **Decisão pedagógica explícita:** o item (c) é declarativo (sem cálculo numérico do equilíbrio Radner). Decisão justificada porque o cálculo exigiria UMP individual + market-clearing em duas estruturas de ativos — fora do calibre N&S/J-R. O ponto pedagógico — reconhecer que a mudança de bem-estar é **possível em ambas as direções** quando o agregado é arriscado — é preservado pelas referências exatas a Hart 1975 (Section IV) e GP 1986 (Theorem 1) acima. Aluno que quiser ver o cálculo encontra em Magill-Quinzii §10.3.

---

## Apêndice — Notação canônica desta lista

| Símbolo | Significado |
|---|---|
| \(A \in \mathbb{R}^{S \times N}\) | matriz de payoffs dos ativos |
| \(\theta^i \in \mathbb{R}^N\) | portfolio do agente \(i\) |
| \(\mathcal{M} = \text{span}(A)\) | payoff space |
| \(\text{rank}(A)\) | dimensão de \(\mathcal{M}\) |
| \(R = p^*_t/p^*_{t+1}\) | taxa bruta de juros |
| \(m_{t+1} = \beta u'(c_{t+1})/u'(c_t)\) | SDF intertemporal |
| \(z(p)\) | excesso de demanda agregada |
| \(\Delta\) | simplex de preços |
| \(T(p)\) | mapa de ajuste para Brouwer |
