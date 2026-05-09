# Gabarito — Simulado AF Parte B (Aulas 6-9)

> Espelha `aula_10/simulado-af-parte-B.md`. Formato enxuto: **(1) setup, (2) derivação, (3) resposta, (4) armadilha + interpretação econômica + cross-aula**.
>
> **Notação canônica.** `\succeq`, `\text{TMS}` em módulo, vírgula em decimais, math `$...$`/`$$...$$`.

---

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

Como $\det A = 0$, $\text{rank}(A) < 3$. Verificando o menor $2\times 2$ superior-esquerdo: $\det\begin{pmatrix}1&2\\1&1\end{pmatrix} = -1 \neq 0 \Rightarrow \text{rank}(A) = 2$. **De fato**, observe que $D^3 = D^1 + D^2$ (coluna 3 = coluna 1 + coluna 2): $(1+2, 1+1, 1+0) = (3, 2, 1) \neq (4,3,2)$ — isso seria errado. Re-checando: $D^1 + D^2 = (1+2, 1+1, 1+0) = (3,2,1)$ e $D^3 = (4,3,2) = (3,2,1) + (1,1,1) = D^1 + D^2 + D^1 = 2D^1 + D^2$. ✓ Portanto $D^3 = 2D^1 + D^2$, dependência linear, rank 2.

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

1. **Setup.** NA significa: $\nexists \theta$ com $(-q\cdot\theta, A\theta) \in \mathbb{R}_+^{1+|S|} \setminus \{0\}$.

2. **Derivação (prova).** Defina o cone $K = \{(-q\cdot\theta, A\theta) : \theta \in \mathbb{R}^J\} \subseteq \mathbb{R}^{1+|S|}$. NA equivale a dizer $K \cap (\mathbb{R}_+^{1+|S|} \setminus \{0\}) = \emptyset$. Como $K$ é subespaço linear (imagem de $\theta \mapsto (-q\cdot\theta, A\theta)$, linear) e $\mathbb{R}_+^{1+|S|} \setminus \{0\}$ é o cone positivo perfurado (convexo, com interior não-vazio), pelo **teorema da separação de Stiemke** (variante de Farkas / Hahn-Banach para cones), existe $(\lambda_0, \lambda) \in \mathbb{R}_{++}^{1+|S|}$ (estritamente positivo em todas as coordenadas) tal que para todo $\theta \in \mathbb{R}^J$:
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

  **(b) Mecanismo GP 1986.** Em mercado já incompleto, **preços relativos dos ativos existentes incorporam um "prêmio de incompletude"**: agentes que conseguem se proteger melhor (dado o span) valoram menos o seguro adicional, agentes piores cobram prêmio. Adicionar um novo ativo **redistribui as oportunidades de seguro**: o novo ativo amplia o span, mas **reajusta** os preços de equilíbrio dos ativos pré-existentes. Quem antes ganhava "renda implícita por ser bem-posicionado no span velho" perde com o reajuste. Como utilidade depende não apenas do consumo final mas da estrutura de preços via UMP individual, o agente que antes era "vendedor implícito de seguro" pode ficar pior. Logo a mudança de bem-estar tem sinal ambíguo entre agentes; Pareto não é monótono em ativos.

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

1. **Setup.** Agente $i$ reporta $\hat v_i$. Decisão $a^* = \arg\max_x \sum_j \hat v_j(x)$. Pagamento Clarke: $t_i = \max_x \sum_{j\neq i} \hat v_j(x) - \sum_{j\neq i} \hat v_j(a^*)$.

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

  **(b) Nash.** Cada pescador $i$ resolve $\max \ln h_{i,1} + \delta \ln h_{i,2}$ sob $h_{i,2}$ que ele extrai em $t=2$ (último período: extrai todo seu "share fair" do estoque). Em $t=2$ (subgame perfect): cada pescador toma $h_{j,2}$ (outros) como dado em jogo simultâneo. Equilíbrio simétrico em $t=2$: $h_{i,2} = S_2/I$ por simetria (Nash em jogo de extração simultânea de bem comum). Substituindo na função objetivo: $\ln h_{i,1} + \delta \ln(S_2/I) = \ln h_{i,1} + \delta \ln((S_1 - h_1)\cdot 1{,}10/I)$. Como $h_1 = h_{i,1} + \sum_{j\neq i} h_{j,1}$, agente $i$ toma $\sum_{j\neq i} h_{j,1} = (I-1) h_{j,1}^*$ como dado em equilíbrio simétrico.

  CPO de $i$ em $h_{i,1}$:
$$
\frac{1}{h_{i,1}} = \frac{\delta}{S_2/I} \cdot \frac{1{,}10}{I} = \frac{\delta\cdot 1{,}10}{S_2} = \frac{1}{S_2}.
$$
**Mesma** equação que social! Mas a diferença é que $S_2 = (S_1 - I h_{i,1})(1{,}10)$ em equilíbrio simétrico Nash (com $I$ pescadores extraindo $h_{i,1}$ cada). Substituindo: $h_{i,1} = S_2 = (S_1 - I h_{i,1})(1{,}10)$. Logo:
$$
h_{i,1} = 1{,}10 S_1 - 1{,}10 \cdot I \cdot h_{i,1} \Rightarrow h_{i,1}(1 + 1{,}10 \cdot 4) = 110 \Rightarrow h_{i,1}^{\text{Nash}} = 110/5{,}40 \approx 20{,}37.
$$
$h_1^{\text{Nash}} = 4 \cdot 20{,}37 \approx 81{,}48$. $S_2^{\text{Nash}} = (100 - 81{,}48)(1{,}10) \approx 20{,}37$.

  **(c) Comparação.** $h_1^{\text{Nash}} \approx 81{,}48$ vs $h_1^{\text{soc}} \approx 52{,}38$. Em Nash colhe-se **muito mais** no período 1 (sobreexplora). $S_2^{\text{Nash}} \approx 20{,}37$ vs $S_2^{\text{soc}} \approx 52{,}38$ — Nash deixa **menos da metade** do estoque que o social. **Perda dinâmica** (em forma fechada literal, por pescador):
$$
\Delta U_i = [\ln h_{i,1}^{\text{soc}} + \delta \ln(S_2^{\text{soc}}/I)] - [\ln h_{i,1}^{\text{Nash}} + \delta \ln(S_2^{\text{Nash}}/I)].
$$
Substituindo simetria $h_{i,t}^{\text{soc}} = S_t^{\text{soc}}/I$ similarmente: $\Delta U_i = (1+\delta) \ln(S_2^{\text{soc}}/S_2^{\text{Nash}}) + \ln(h_1^{\text{soc}}/h_1^{\text{Nash}}) \cdot (\text{ajuste})$ — em valores: $\ln(52{,}38/13{,}10 \cdot 4) = ?$. Forma fechada literal pedida — $\Delta U_i = \ln(13{,}10) - \ln(20{,}37) + \delta[\ln(13{,}10) - \ln(5{,}09)] \approx -0{,}44 + 0{,}91 \cdot 0{,}94 \approx +0{,}42$ (positivo, ou seja, social é melhor). Por pescador. Total $4 \cdot 0{,}42 = 1{,}68$ em utilidade de log.

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

  **(c)** Comparação com uniforme em $[0,60]$ (caso de aula): $E[\theta\mid \theta\leq p] = p/2$ (uniforme). Equilíbrio: $p = (4/3)(p/2) = 2p/3$, ou seja $p/3 = 0 \Rightarrow p = 0$. **Também colapsa**, mas pelo motivo: incremento de qualidade médio ($\theta/2$) é menor que o gap de avaliação ($\theta/3$ porque comprador valoriza $4/3 \theta$, paga $p$; vendedor aceita $p \geq \theta$, ou seja $\theta \leq p$; precisa $(4/3)(p/2) \geq p$, falha). Na **triangular** (lemons concentrados em baixa qualidade — densidade decrescente), **piora ainda mais**: a esperança truncada $E[\theta\mid \theta\leq p]$ é puxada **mais para baixo** (quanto mais lemons-pesadas), agravando unraveling. Logo, ambas distribuições levam a $p^* = 0$, mas a triangular tem unraveling "mais forte" (se aumentássemos um pouco o premium do comprador, uniforme poderia salvar mercado, triangular não).

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

1. **Setup.** CARA $\rho = 1$, $c(e) = e^2/2$, $\varepsilon \sim N(0, 1)$, $\bar U = -\exp(-1) \Leftrightarrow$ CE reservation $= 1$. Contrato $w = \alpha + \beta y$, $y = e + \varepsilon$.

2. **Derivação.**

  **(a)** CE conhecido para CARA + normal: $\text{CE} = E[w(y)] - (\rho/2) \text{Var}(w(y)) - c(e) = (\alpha + \beta e) - (1/2)(1)(\beta^2)(1) - e^2/2 = \alpha + \beta e - \beta^2/2 - e^2/2$.

  **(b) IC.** $\partial \text{CE}/\partial e = \beta - e = 0 \Rightarrow e^*(\beta) = \beta$.

  **(c) PC.** $\text{CE}(\beta, e^*=\beta) = \alpha + \beta \cdot \beta - \beta^2/2 - \beta^2/2 = \alpha$. PC: $\alpha \geq 1$. Bind: $\alpha = 1$.

  **(d) Principal.** Sob $e^* = \beta$ e $\alpha$ ajustado por PC: o agente exige CE $\geq$ CE-reservation. Para o problema ficar bem-posto numericamente, **interprete $\bar U = -\exp(-1)$ como nível-utilidade com CE-reservation = 1** *e* tome a normalização canônica: $\alpha = 1 + \beta^2/2 + e^{*2}/2 - \beta e^* = 1 + \beta^2/2 + \beta^2/2 - \beta^2 = 1$ (PC bind). Logo $\Pi = E[y-w] = e^* - \alpha - \beta e^* = \beta(1-\beta) - 1$ — negativo para todo $\beta \in [0,1]$, indicando reservation alta demais para problema viável.

  **Versão canônica didática (CE-reservation = 0, equivalente a $\bar U = -1 = -\exp(0)$).** Com PC: $\alpha = 0$. $\Pi = \beta(1-\beta)$. Maximizar: $d\Pi/d\beta = 1 - 2\beta = 0 \Rightarrow \boxed{\beta^* = 1/2}$. Lucro SB = $1/4$.

  **First-best (CE-reservation = 0).** Com $e$ observável: $e^{\text{FB}}: 1 = c'(e) = e \Rightarrow e^{\text{FB}} = 1$. Salário fixo $w = c(1) = 1/2$. Lucro FB = $1 - 1/2 = 1/2$.

  **Diferença SB vs FB.** $\beta^{\text{FB}}_{\text{efetivo}} = 1$ (agente teria que carregar todo o risco, mas como agora $e$ é observável, principal pode pagar fixo) vs $\beta^* = 1/2$ em SB. Lucro perdido: $1/2 - 1/4 = 1/4$ — esse é o **prêmio de risco moral**. Forma fechada Holmström-Milgrom (1987, *Econometrica*; DOI: 10.2307/1911406): $\beta^* = 1/(1 + \rho \sigma^2\, c''(e^*))$. Aqui: $\beta^* = 1/(1 + 1 \cdot 1 \cdot 1) = 1/2$. ✓

3. **Resposta.** Sob $\bar U$ canônico (CE-reservation = 0): $\beta^* = 1/2, e^* = 1/2, \alpha = 0$, $\Pi^{\text{SB}} = 1/4$, $\Pi^{\text{FB}} = 1/2$. **Trade-off risco-incentivo:** $\beta^* < 1$ pelo fator $1/(1+\rho\sigma^2 c'')$.

4. **Armadilha + cross-aula.** Erro de calibração no enunciado: a $\bar U = -\exp(-1)$ implícita é alta demais para o problema ter solução positiva — interpretar como reservation = 0 para fechar a conta. Outro erro: confundir CE com utilidade-CARA direto. **Cross-aula:** Q15 mostra que neutralidade ao risco recupera FB (agente compra o output). Em prática: salário variável de CEOs (alto $\beta$) vs salário fixo de servidores públicos (baixo $\beta$) reflete trade-off na vida real — funcionalismo público tem ruído alto e mensuração ruim, justificando $\beta = 0$.

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

4. **Armadilha + cross-aula.** Erros: (i) tentar prova direta sem indução — fica caótica; (ii) confundir "alcançável" com "preferida" — alcançável é definida por **algum estável existir**, não por preferência. **Cross-aula:** mesma estrutura indutiva aparece em mecanismos top-trading-cycles (Roth-Sönmez-Ünver 2004, *J. Econ. Theory*; DOI: 10.1162/0033553041382157) para transplante de rins. **Aula 7** (VCG): também tem strategy-proofness por construção, mas em ambiente quase-linear (não-matching).

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
| Q14 | $\beta^* = 1/2$ (sob CE = 0); $\beta^*$ matches Holmström-Milgrom 1987 | ✓ |
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
