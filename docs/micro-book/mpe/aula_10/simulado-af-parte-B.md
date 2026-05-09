# Simulado AF — Parte B (Aulas 6-9)

> **Foco.** 20 questões cobrindo **Aulas 6-9** do MPE 2026/32 (Arrow-Debreu II, Externalidades/Bens Públicos, Sel. Adversa/Risco Moral, Sinalização/Matching).
>
> **Composição.** **1 🟢 + 3 🟡 + 1 🔴 por aula** (5 × 4 = 20). Tipos misturados: cálculo numérico, manipulação literal, prova curta, V/F com justificativa, abertas-discursivas.
>
> **Tempo-alvo em casa.** ~2h30 (calibre intermediário-superior, similar à Parte A do simulado em `simulado-af.md`). Não cronometre como prova; use para fechar lacunas finais antes da AF.
>
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

5. **Calibre.** ~7/20 numéricos ($Q1, Q3, Q6, Q8, Q14, Q16, Q18$); ~3/20 manipulação literal ($Q12, Q17$ majoritariamente, $Q3$ parcialmente); 4/20 V/F ($Q2, Q7, Q13, Q19$); 5/20 provas curtas ($Q4, Q9, Q15, Q20$, e $Q17$ parcial); 2/20 abertas-discursivas ($Q5, Q10$).
