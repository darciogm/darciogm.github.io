# Exercícios Avaliativos — Aula 5 (Arrow-Debreu I)

> **SSOT em Markdown.** Espelho narrativo de `platform/aula-05-exerc.html`. Mantenha em sincronia 1:1 quando editar qualquer um dos dois.

> **Tema:** Equilíbrio Geral em Mercados Completos (Arrow-Debreu I) — estados, bens contingentes, $\mathbb{R}^{LS}$, equilíbrio AD, 1º TBE estendido, seguro completo, SDF.

> **Calibre:** **Jehle-Reny 3e §5.5 (piso obrigatório)**; N&S 12e §7.5 + §13.6 (complemento panorâmico). MWG §19.B citado como referência opcional. ZaE Cap. 14 fora (não cobre incerteza).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula correspondente:** Aula 5 — 20/05/2026 (quarta), 19:30–22:30
- **Abertura:** quinta 21/05 madrugada
- **Fechamento:** quarta 27/05 às 18:00 BRT (canônico, 1h30 antes da Aula 6)
- **Liberação do gabarito:** quinta 28/05 às 00:00 BRT
- **Tempo-alvo:** 2h30–3h
- **Composição:** 6 exercícios = **1 🟢 + 3 🟡 + 2 🔴**, totalizando ~26 sub-itens de múltipla escolha + 6 gabaritos 5-passos.

---

## Exercício 1 — 🟢 EC AD em economia $L = 1$, $S = 2$, $I = 2$ com agente neutro

### Enunciado

Economia de troca pura com $L = 1$ bem físico, $S = 2$ estados (chuva/sol), $I = 2$ agentes. Probabilidades de consenso $\pi_1 = 0{,}4$ (chuva), $\pi_2 = 0{,}6$ (sol). Preferências:

- Agente $A$: EU com Bernoulli $v_A(c) = \ln c$ (avesso ao risco, CRRA $\gamma = 1$).
- Agente $B$: EU com Bernoulli $v_B(c) = c$ (neutro ao risco).

Dotações:

- $\omega^A = (40, 100)$.
- $\omega^B = (60, 60)$.

Total $\bar\omega = (100, 160)$. Numerário: $p_2 = 1$.

### Sub-itens

**(a)** A condição que B (neutro) impõe sobre os preços de equilíbrio é:

- (i) $p^*_1 = p^*_2$.
- (ii) $\mathbf{p^*_1/p^*_2 = \pi_1/\pi_2 = 2/3}$. **[correta]**
- (iii) $p^*_1/p^*_2 = \omega^B_1/\omega^B_2 = 1$.
- (iv) $p^*_1/p^*_2$ indeterminado.

**(b)** Em $p^*_1 = 2/3$, a renda de $A$ é:

- (i) $40$.
- (ii) $\mathbf{m^A = (2/3) \cdot 40 + 1 \cdot 100 = 80/3 + 100 = 380/3 \approx 126{,}67}$. **[correta]**
- (iii) $140$.
- (iv) $100$.

**(c)** Em equilíbrio com Bernoulli $v_A = \ln$, a CPO de $A$ implica:

- (i) $x^{A*}_1 < x^{A*}_2$ — A consome menos no estado menos provável (intuição "consumo segue probabilidade").
- (ii) $x^{A*}_1 = (\pi_1/\pi_2)\, x^{A*}_2 = (2/3)\, x^{A*}_2$.
- (iii) $\mathbf{(\pi_1/x^{A*}_1)/(\pi_2/x^{A*}_2) = p^*_1/p^*_2 \Rightarrow x^{A*}_2/x^{A*}_1 = (p^*_1/p^*_2)\cdot (\pi_2/\pi_1) = (2/3)(0{,}6/0{,}4) = 1}$. **[correta]** $x^{A*}_1 = x^{A*}_2$ (totalmente segurado pela igualdade preço-probabilidade que vem do agente neutro).
- (iv) $x^{A*}_1 \neq x^{A*}_2$ — A não consegue se segurar com $B$ neutro.

**(d)** O consumo de equilíbrio $x^{A*} = (x^{A*}_1, x^{A*}_2)$ vale:

- (i) $\mathbf{x^{A*}_1 = x^{A*}_2 = m^A/(p^*_1 + p^*_2) = (380/3)/(2/3 + 1) = (380/3)/(5/3) = 76}$. **[correta]**
- (ii) $(40, 100)$ — autarquia.
- (iii) $(76, 76)$, mas calculado por outro caminho.
- (iv) $(50, 50)$ — meio do caminho.

**(e)** O consumo de equilíbrio de $B$ é:

- (i) $(60, 60)$ — autarquia.
- (ii) $\mathbf{x^{B*}_1 = 100 - 76 = 24}$, $x^{B*}_2 = 160 - 76 = 84$. **[correta]** Por viabilidade.
- (iii) $(76, 76)$.
- (iv) $(40, 100)$.

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Quando há agente neutro ao risco em equilíbrio AD com mercado completo, os preços contingentes saem **atuarialmente justos** ($p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$), e o agente avesso fica **totalmente segurado** ($x^{A*}_s$ não depende de $s$).

**2. Derivação.** Neutralidade de $B$: $u^B(x) = \pi_1 x_1 + \pi_2 x_2$ — função linear. Em ótimo interior, marginais ($\pi_s$) têm que ser proporcionais a $p_s$, daí $p^*_1/p^*_2 = \pi_1/\pi_2 = 2/3$. CPO de $A$ com $v = \ln$: $\frac{\pi_1/x^A_1}{\pi_2/x^A_2} = \frac{p^*_1}{p^*_2} \Rightarrow \frac{x^A_2}{x^A_1} = \frac{p^*_1 \pi_2}{p^*_2 \pi_1} = \frac{(2/3)(0{,}6)}{(1)(0{,}4)} = 1$. Logo $x^A_1 = x^A_2 = \bar c^A$. Renda $m^A = (2/3)(40) + 1(100) = 380/3$. Orçamento: $(p^*_1 + p^*_2)\bar c^A = m^A \Rightarrow (5/3)\bar c^A = 380/3 \Rightarrow \bar c^A = 76$. Por viabilidade, $x^B = (100 - 76, 160 - 76) = (24, 84)$.

**3. Armadilha.** Item (a): aluno marca (i) "$p^*_1 = p^*_2$" achando que neutralidade implica preços iguais — falso, neutralidade implica que preços são proporcionais a probabilidades, e probabilidades são desiguais aqui. Item (d): aluno calcula $\bar c = 380/3 / 1 = 126{,}67$ esquecendo que $p^*_1 + p^*_2 = 5/3 \neq 1$.

**4. Extensão.** Pareto: o equilíbrio $(76, 76; 24, 84)$ é Pareto-eficiente pelo 1º TBE. Verifique que $\text{TMS}^A = (\pi_1 v'_A(76))/(\pi_2 v'_A(76)) = \pi_1/\pi_2 = 2/3 = p^*_1/p^*_2$ (consistente com CPO). $B$ neutro tem TMS constante $= \pi_1/\pi_2$. Tangência ✓. **Em Aula 6**, este resultado se reproduz com Radner sequencial se houver $|S| = 2$ ativos linearmente independentes; com apenas 1 ativo (mercado incompleto), $A$ não conseguiria se segurar.

**5. Peer-review.** Calibre 🟢. Aluno que erra (a) ou (c) ainda confunde "agente neutro" com "preços iguais" — voltar à pré-aula 5 §5. Aluno que erra (d) tem aritmética. Distratores plausíveis (item (a) (iii) usa razão errada de dotação; item (e) (iii) confunde $A$ com $B$). Não há ambiguidade no enunciado, o exercício é didático e calibrador. **Sem risco residual.**

---

## Exercício 2 — 🟡 SDF e equação fundamental sob heterogeneidade

### Enunciado

Economia $L = 1$, $S = 2$, $I = 2$. Bernoullis idênticas $v_A = v_B = \ln c$. **Crenças heterogêneas:** $\pi^A_1 = 0{,}3$, $\pi^A_2 = 0{,}7$; $\pi^B_1 = 0{,}5$, $\pi^B_2 = 0{,}5$. Dotações $\omega^A = (50, 50)$, $\omega^B = (50, 50)$ (ambos sem risco individual; agregado também sem risco: $\bar\omega = (100, 100)$).

### Sub-itens

**(a)** A CPO de $A$ em ótimo interior é:

- (i) $p^*_1/p^*_2 = 1$.
- (ii) $\mathbf{p^*_1/p^*_2 = (\pi^A_1/\pi^A_2)(x^{A*}_2/x^{A*}_1) = (0{,}3/0{,}7)(x^{A*}_2/x^{A*}_1)}$. **[correta]**
- (iii) $p^*_1/p^*_2 = \pi^A_1/\pi^A_2 = 3/7$.
- (iv) $p^*_1/p^*_2 = x^{A*}_1/x^{A*}_2$.

**(b)** A CPO análoga para $B$ é:

- (i) $\mathbf{p^*_1/p^*_2 = (\pi^B_1/\pi^B_2)(x^{B*}_2/x^{B*}_1) = (1)(x^{B*}_2/x^{B*}_1)}$. **[correta]** $\pi^B_1/\pi^B_2 = 1$ porque $B$ acha estados equiprováveis.
- (ii) $p^*_1/p^*_2 = 1$.
- (iii) $p^*_1/p^*_2 = \pi^B_1/\pi^B_2$.
- (iv) $p^*_1/p^*_2 = x^{B*}_1/x^{B*}_2$.

**(c)** Combinando (a) e (b) — ambos enxergam o mesmo $p^*_1/p^*_2$ em equilíbrio — e usando viabilidade $x^A_s + x^B_s = 100$ para cada $s$:

- (i) $x^{A*} = x^{B*} = (50, 50)$ — autarquia.
- (ii) $\mathbf{x^{A*}_1 < 50}$ e $x^{A*}_2 > 50$ ($A$ vende bilhete-estado-1 a $B$ porque acha estado 2 mais provável); por simetria invertida, $B$ faz o oposto. **[correta]**
- (iii) $x^{A*}_1 > 50$ e $x^{A*}_2 < 50$.
- (iv) Não existe equilíbrio.

**(d)** O preço relativo $p^*_1/p^*_2$ em equilíbrio satisfaz (use Cobb-Douglas/log: cada $i$ tem demanda $x^i_s = \pi^i_s\, m^i/p_s$):

- (i) $\mathbf{p^*_1/p^*_2 = (\pi^A_1 + \pi^B_1)/(\pi^A_2 + \pi^B_2) = 0{,}8/1{,}2 = 2/3}$. **[correta]** Média das crenças ponderada pelas rendas; aqui rendas iguais por simetria de dotação.
- (ii) $p^*_1/p^*_2 = 1$ porque o agregado é livre de risco.
- (iii) $p^*_1/p^*_2 = \pi^A_1 \cdot \pi^B_1 = 0{,}15$ (produto das probabilidades subjetivas do estado 1).
- (iv) Indefinido sem informação adicional sobre a riqueza inicial dos agentes.

**(e)** O fato de o agregado ser livre de risco ($\bar\omega_1 = \bar\omega_2 = 100$) **não** implica $p^*_1 = p^*_2$ (em geral) porque:

- (i) Os agentes têm Bernoullis diferentes.
- (ii) **Os** agentes têm **crenças diferentes**, e o preço relativo reflete uma média ponderada das crenças (não a média simples). **[correta]** Quando crenças coincidem, o agregado livre de risco implica $p_1 = p_2$; com crenças divergentes, isso falha.
- (iii) Não há agente neutro.
- (iv) O equilíbrio é Pareto-ineficiente.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** A equação fundamental do SDF, $p^*_s/p^*_{s'} = (\pi^i_s v_s')/(\pi^i_{s'} v_{s'}')$, tem que valer **para cada agente** em equilíbrio — todos veem o mesmo preço. Quando crenças são heterogêneas, as marginais individuais ($v_s'/v_{s'}'$) **se ajustam endogenamente**. Para Bernoullis log + dotações iguais, há **fórmula fechada limpa**: $p^*_1/p^*_2 = (\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2)$ — média das crenças ponderada pelas rendas (aqui pesos iguais por simetria).

**2. Derivação rigorosa.** Em $v = \ln c$, a UMP de $i$ com renda $m^i$ entrega demandas Cobb-Douglas em log: $x^i_s = \pi^i_s\, m^i/p_s$ (multiplicador $\lambda^i = 1/m^i$, e $p_s x^i_s = \pi^i_s m^i$). Some viabilidade $s = 1$: $\sum_i x^i_1 = (\sum_i \pi^i_1 m^i)/p_1 = 100$. Análogo para $s=2$. Razão:

$$
\boxed{\;\frac{p^*_1}{p^*_2} = \frac{\sum_i \pi^i_1\, m^i}{\sum_i \pi^i_2\, m^i}\;}
$$

Com $\omega^A = \omega^B = (50, 50)$: $m^A = m^B = 50(p_1+p_2)$ (rendas iguais), os $m^i$ cancelam:

$$
\frac{p^*_1}{p^*_2} = \frac{\pi^A_1+\pi^B_1}{\pi^A_2+\pi^B_2} = \frac{0{,}8}{1{,}2} = \frac{2}{3}.
$$

**Verificação numérica.** Em $p_2=1, p_1=2/3$: $m^i = 50 \cdot 5/3 = 250/3$. Logo $x^A_1 = 0{,}3 \cdot 125 = 37{,}5$; $x^A_2 = 0{,}7 \cdot 250/3 = 175/3 \approx 58{,}33$; $x^B_1 = 0{,}5 \cdot 125 = 62{,}5$; $x^B_2 = 0{,}5 \cdot 250/3 \approx 41{,}67$. Viabilidades: $37{,}5 + 62{,}5 = 100$ ✓; $58{,}33 + 41{,}67 = 100$ ✓. Note $x^A_1 < 50 < x^A_2$: A acha estado 1 menos provável e por isso vende reivindicação-estado-1; B acha estado 2 menos provável e vende reivindicação-estado-2.

**3. Armadilha.** Item (d): aluno marca (ii) achando que "agregado livre de risco $\Rightarrow p_1=p_2$" — falso, isso só vale quando crenças coincidem. Marca (iii) (produto das probabilidades) — combinação errada de crenças. Marca (iv) — ignora que sob simetria de dotação as rendas se cancelam, fechando a fórmula. Item (e): aluno marca (i) "Bernoullis diferentes" — falso, Bernoullis são idênticas; o que difere são crenças.

**4. Extensão.** Quando $\pi^A = \pi^B$ (crenças idênticas) e $\omega^A = \omega^B$ (dotações idênticas), o equilíbrio é **autarquia** ($x^i = \omega^i$) — sem comércio. **Heterogeneidade** (de crença ou de dotação) gera comércio. A fórmula fechada $p^*_1/p^*_2 = (\sum_i \pi^i_1 m^i)/(\sum_i \pi^i_2 m^i)$ generaliza para qualquer Bernoulli homotética com mesma elasticidade entre agentes (Cobb-Douglas/log dá pesos pelas rendas; CRRA com $\gamma$ comum também). **No-trade theorem (Milgrom-Stokey 1982)**: se a heterogeneidade vier de informação privada e houver common knowledge, o comércio puramente especulativo desaparece. Aula 6 detalha quando $|S|$ ativos $\neq |S|$ estados.

**5. Peer-review.** Calibre 🟡 confirmado. **Bug detectado e corrigido em pass-3 (Referee 2, 07/05/2026):** versões anteriores afirmavam que "$p^*_1/p^*_2$ é calculável mas não trivial" e marcavam o distrator com fórmula fechada $(0{,}8/1{,}2 = 2/3)$ como **incorreto**. Auditoria rigorosa refez a álgebra usando a estrutura Cobb-Douglas em log e mostrou que **existe fórmula fechada simples** — exatamente $0{,}8/1{,}2 = 2/3$. A alternativa marcada como correta agora é a (i). Distratores recalibrados. **Sem risco residual de ambiguidade após pass-3.**

---

## Exercício 3 — 🟡 Equilíbrio AD com 2 agentes ambos avessos, agregado livre de risco

### Enunciado

Economia $L = 1$, $S = 2$. Probabilidades de consenso $\pi_1 = \pi_2 = 1/2$. Bernoullis idênticas $v_A = v_B = \ln c$. Dotações *espelhadas*: $\omega^A = (60, 100)$, $\omega^B = (100, 60)$. Total $\bar\omega = (160, 160)$ — **agregado livre de risco** (não há risco no nível agregado, só individual).

### Sub-itens

**(a)** **Sob $\pi_1 = \pi_2 = 1/2$**, por simetria, em equilíbrio:

- (i) $x^{A*} = (60, 100), x^{B*} = (100, 60)$ — autarquia.
- (ii) $\mathbf{x^{A*} = x^{B*} = (80, 80)}$ — ambos totalmente segurados, igualmente. **[correta]**
- (iii) $x^{A*} = (160, 0), x^{B*} = (0, 160)$.
- (iv) Indefinido sem mais informação.

**(b)** **Sob $\pi_1 = \pi_2 = 1/2$**, a razão de equilíbrio $p^*_1/p^*_2$ vale:

- (i) $1/2$.
- (ii) $\mathbf{1}$. **[correta]** Em CPO com $\pi_1 = \pi_2$ e $x^{A*}_1 = x^{A*}_2$: $(p^*_1/p^*_2) = (\pi_1/\pi_2)(x^{A*}_2/x^{A*}_1) = 1 \cdot 1 = 1$.
- (iii) $\pi_1/\pi_2 = 1$.
- (iv) Depende da Bernoulli específica.

**(c)** A razão $1$ obtida em (b) **não** depende crucialmente de qual Bernoulli usamos (CRRA com $\gamma = 1$, CARA com $\gamma$ qualquer, etc.) porque:

- (i) Bernoullis log são especiais.
- (ii) **O** resultado vem de **simetria total** (probabilidades iguais + dotações espelhadas + Bernoullis idênticas), não da forma específica de $v$. **[correta]**
- (iii) Probabilidades equiprováveis sempre dão preço unitário.
- (iv) Agregado livre de risco implica preços iguais sempre.

**(d)** Modificação: $\pi_1 = 0{,}3$, $\pi_2 = 0{,}7$ (probabilidades **desiguais**, dotações espelhadas como antes). Em equilíbrio:

- (i) Continua $x^{A*} = x^{B*} = (80, 80)$.
- (ii) $x^{A*}_1 < x^{A*}_2$ porque o estado 1 é menos provável (intuição "consumo segue probabilidade").
- (iii) $\mathbf{x^{A*} = (88, 88)}$ e $\mathbf{x^{B*} = (72, 72)}$ — **cada agente individualmente fica livre de risco** ($x^i_1 = x^i_2$), mas em **níveis diferentes**: $A$ se beneficia porque sua dotação $(60, 100)$ está concentrada no estado **mais provável (mais caro)**. **[correta]**
- (iv) Não há equilíbrio.

**(e)** No caso (d), com $\pi_1 = 0{,}3$, a razão $p^*_1/p^*_2$ vale:

- (i) $\mathbf{\pi_1/\pi_2 = 3/7 \approx 0{,}429}$. **[correta]** Direto da CPO com $r = x^*_2/x^*_1 = 1$ (livre de risco individual): $(p^*_1/p^*_2) = (\pi_1/\pi_2) \cdot r = \pi_1/\pi_2$.
- (ii) $1$.
- (iii) $0{,}3$ (confunde $\pi_1$ com a razão).
- (iv) Depende da Bernoulli específica.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** Quando o **agregado é livre de risco** ($\bar\omega_s$ constante em $s$) e os agentes têm Bernoullis idênticas, o mercado completo permite que **cada agente individualmente fique livre de risco** ($x^i_1 = x^i_2$), mesmo sem agente neutro. As probabilidades aparecem em $p^*_s/p^*_{s'}$ via SDF; o **nível** de consumo de cada agente depende de quão correlacionada sua dotação é com os estados mais valorados (mais prováveis sob $\pi$ comum).

**2. Derivação rigorosa.** Da CPO em $\ln$ aplicada a $i = A, B$: a razão $r := x^i_2/x^i_1 = (\pi_1/\pi_2)(p_2/p_1)$ é **a mesma** para os dois agentes (depende só de preços e crenças comuns). Da viabilidade do estado 2: $x^A_2 + x^B_2 = 160$. Substituindo $x^i_2 = r \cdot x^i_1$: $r (x^A_1 + x^B_1) = 160$. Da viabilidade do estado 1: $x^A_1 + x^B_1 = 160$. Logo $r = 1 \Rightarrow x^A_1 = x^A_2$ e $x^B_1 = x^B_2$ (livre de risco individual). Da CPO + $r = 1$: $\boxed{p^*_1/p^*_2 = \pi_1/\pi_2}$. Renda de $A$: $m^A = 60 p_1 + 100 p_2$. Com $x^A_1 = x^A_2 \equiv c^A$: $c^A (p_1 + p_2) = 60 p_1 + 100 p_2$. Normalizando $p_2 = 1$, $p_1 = \pi_1/\pi_2$, e usando $\pi_1 + \pi_2 = 1$: $c^A = 60 \pi_1 + 100 \pi_2$. Analogamente $c^B = 100 \pi_1 + 60 \pi_2$. Verificação: $c^A + c^B = 160 (\pi_1 + \pi_2) = 160$ ✓. **Casos numéricos:**

- $\pi_1 = \pi_2 = 0{,}5$: $c^A = 30 + 50 = 80$; $c^B = 50 + 30 = 80$ → alocação $(80,80)/(80,80)$.
- $\pi_1 = 0{,}3, \pi_2 = 0{,}7$: $c^A = 18 + 70 = 88$; $c^B = 30 + 42 = 72$ → alocação $(88,88)/(72,72)$.
- $\pi_1 = 0{,}7, \pi_2 = 0{,}3$: $c^A = 42 + 30 = 72$; $c^B = 70 + 18 = 88$ → alocação $(72,72)/(88,88)$.

**3. Armadilha.** Distrator (i) "$x^A = (80,80)$ ainda" é a **intuição rápida** de que simetria entre agentes sobrevive a $\pi$ assimétrica — falso. A simetria $A \leftrightarrow B$ do problema **só** é simétrica sob $\pi_1 = \pi_2$ (a transformação "trocar $A$ com $B$ e estado 1 com estado 2" deixa o problema invariante apenas se $\pi$ for simétrico). Sob $\pi$ assimétrica, $A$ se beneficia da concentração de sua dotação no estado mais provável (= mais caro em equilíbrio). Distrator (ii) "$x^A_1 < x^A_2$" também é falso: o **agregado livre de risco** + Bernoullis idênticas força $r = 1$ para cada agente individualmente, mesmo sob $\pi$ assimétrica.

**4. Extensão.** Este exercício isola um ponto pedagógico não-óbvio: probabilidades subjetivas afetam **não só preços, mas também a distribuição de riqueza entre agentes**. Em equilíbrio AD, o agente cuja dotação é mais correlacionada com o estado mais provável consome em nível mais alto. A alocação resultante é **Pareto-eficiente** (1º TBE), mas **não igualitária**. O 2º TBE diz que qualquer Pareto-eficiente desejada (ex: $c^A = c^B = 80$ sob $\pi$ assimétrica) é alcançável via redistribuição lump-sum em $t = 0$ (transferir riqueza para igualar dotações esperadas). Aulas 7-8 mostrarão que info assimétrica torna lump-sum infactível.

**5. Peer-review.** Calibre 🟡 confirmado. **Bug detectado e corrigido em pass-2 (07/05/2026):** versão original do gabarito (escrita pelo agente em primeira passagem) afirmava incorretamente que $x^A = x^B = (80, 80)$ sobrevive sob $\pi$ assimétrica. Auditoria rigorosa pelo Darcio mostrou que a viabilidade do estado 2 + CPO força $r = 1$ (livre de risco individual) MAS níveis de consumo dependentes de $\pi$ via $c^i = \omega^i \cdot \pi$ (produto interno entre dotação e crenças). Distratores no item (d) recalibrados para refletir a álgebra correta; resposta correta agora é $(88, 88)/(72, 72)$. Bernoulli $\ln$ funciona perfeitamente — não há motivo para trocar para CARA (CARA tem a mesma estrutura sob agregado livre de risco). **Sem risco residual de ambiguidade após pass-2.**

---

## Exercício 4 — 🟡 EC AD com 2 períodos, 1 bem, agentes com $\beta$ heterogêneos (intertemporal)

### Enunciado

Economia intertemporal: $L = 1$ bem (consumo), $T = 2$ períodos ($t = 1$ e $t = 2$), **sem incerteza** ($|S| = 1$ por período). Espaço de bens: $\mathbb{R}^2_+$ ($t = 1$ e $t = 2$). $I = 2$ agentes.

Preferências: $u^i(c^i_1, c^i_2) = \ln c^i_1 + \beta^i \ln c^i_2$. Agente $A$ paciente: $\beta^A = 0{,}9$. Agente $B$ impaciente: $\beta^B = 0{,}5$.

Dotações: $\omega^A = \omega^B = (50, 50)$.

Numerário $p_2 = 1$. O preço $p_1$ é o preço relativo de consumo no período 1 vs. período 2.

### Sub-itens

**(a)** A taxa de juros $r$ definida por $1 + r = p_1/p_2 = p_1$ é:

- (i) Determinada exogenamente.
- (ii) **Determinada** endogenamente pelo equilíbrio competitivo. **[correta]**
- (iii) Sempre igual a $\beta$.
- (iv) Não existe em economia sem moeda.

**(b)** A CPO de $A$ é:

- (i) $c^A_1 = c^A_2$.
- (ii) $\mathbf{c^A_2/c^A_1 = \beta^A (1 + r) = 0{,}9 (p_1)}$, ou equivalentemente $p_1/p_2 = (1/\beta^A)(c^A_2/c^A_1)$. **[correta]**
- (iii) $c^A_1 = (1 + \beta^A)/(2 + \beta^A) \cdot \text{renda}$.
- (iv) $c^A_2 = \beta^A c^A_1$.

**(c)** Por simetria da dotação ($\omega^A = \omega^B$) mas **assimetria das preferências** ($\beta^A \neq \beta^B$), em equilíbrio:

- (i) $c^A = c^B = (50, 50)$ — autarquia.
- (ii) $\mathbf{c^A_1 < c^B_1}$ e $c^A_2 > c^B_2$ — agente paciente $A$ vende consumo no período 1 (poupa) para o impaciente $B$ (consome mais cedo). **[correta]**
- (iii) $c^A_1 > c^B_1$ e $c^A_2 < c^B_2$.
- (iv) Indeterminado.

**(d)** O preço $p_1$ de equilíbrio (taxa bruta de juros) satisfaz **qual desigualdade**?

- (i) $p_1 = 1/\beta^A = 1{,}11$ — taxa de $A$.
- (ii) $p_1 = 1/\beta^B = 2$ — taxa de $B$.
- (iii) $\mathbf{1/\beta^A < p_1 < 1/\beta^B}$, ou seja $1{,}11 < p_1 < 2$. **[correta]** Médias dos $\beta$s ponderadas pela contribuição relativa ao mercado.
- (iv) $p_1 = (\beta^A + \beta^B)/2 = 0{,}7$.

**(e)** O resultado canônico do exercício é o **trade entre paciente e impaciente**. A direção da troca depende exclusivamente de:

- (i) A renda inicial.
- (ii) **A** diferença de $\beta^i$ — paciente vende presente, compra futuro; impaciente faz o oposto. **[correta]**
- (iii) A inflação.
- (iv) A taxa de juros nominal.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** Bens datados são caso particular de bens contingentes ($|S| = 1$ por período). O equilíbrio AD em economia intertemporal **endogeniza a taxa de juros** $r = p_1/p_2 - 1$ pelo mecanismo de mercado: agentes pacientes oferecem poupança ao mercado, impacientes demandam, e o preço $p_1$ reflete a média ponderada dos descontos $1/\beta^i$.

**2. Derivação.** UMP de $i$: $\max \ln c_1 + \beta^i \ln c_2$ s.a. $p_1 c_1 + p_2 c_2 = p_1 \omega^i_1 + p_2 \omega^i_2 = 50 (p_1 + p_2)$ (em $\omega = (50, 50)$). CPO: $1/c_1 = \lambda p_1$, $\beta^i/c_2 = \lambda p_2$. Razão: $c_2/(c_1 \beta^i) = p_1/p_2 \Rightarrow c^i_2 = \beta^i c^i_1 (p_1/p_2)$. Soma com orçamento: $p_1 c^i_1 + p_2 \beta^i c^i_1 (p_1/p_2) = 50(p_1 + p_2) \Rightarrow c^i_1 [p_1 + \beta^i p_1] = 50(p_1 + p_2) \Rightarrow c^i_1 = 50(p_1 + p_2)/[p_1(1 + \beta^i)]$. Em $p_2 = 1$: $c^i_1 = 50(p_1 + 1)/[p_1(1 + \beta^i)]$. Viabilidade $t = 1$: $c^A_1 + c^B_1 = 100 \Rightarrow 50(p_1 + 1)/[p_1(1 + \beta^A)] + 50(p_1 + 1)/[p_1(1 + \beta^B)] = 100$. Substituindo $\beta^A = 0{,}9$, $\beta^B = 0{,}5$: resolve $(p_1 + 1)/[p_1] \cdot [1/1{,}9 + 1/1{,}5] = 2$. Calculando: $1/1{,}9 + 1/1{,}5 = 0{,}5263 + 0{,}6667 = 1{,}1930$. Equação: $(p_1 + 1)/p_1 \cdot 1{,}1930 = 2 \Rightarrow (p_1 + 1)/p_1 = 1{,}677 \Rightarrow 1 + 1/p_1 = 1{,}677 \Rightarrow p_1 = 1/0{,}677 \approx 1{,}48$. Então $p^*_1 \approx 1{,}48$, dentro do intervalo $(1{,}11, 2)$. ✓

Consumo: $c^A_1 = 50(1{,}48 + 1)/[1{,}48 \cdot 1{,}9] \approx 124/2{,}81 \approx 44{,}1$. $c^B_1 = 50 \cdot 2{,}48/(1{,}48 \cdot 1{,}5) \approx 124/2{,}22 \approx 55{,}9$. Soma $\approx 100$ ✓. $c^A_1 < c^B_1$ ✓ (paciente consome menos cedo).

**3. Armadilha.** Item (b): aluno marca (i) "$c^A_1 = c^A_2$" achando que paciência implica suavização perfeita — **falso, suavização perfeita seria com $\beta = 1$ + $r = 0$, que não é o caso aqui**. Item (d): aluno marca (i) ou (ii) achando que o equilíbrio é exatamente em uma das taxas individuais — **errado**, é uma média. Item (e): aluno marca (i) "renda" — falso, dotações são iguais; só $\beta$ difere.

**4. Extensão.** Em economia com **incerteza intertemporal** (próxima aula via Radner sequencial, Aula 6), o preço $p_1$ é substituído por **conjunto de preços contingentes datados**: $p_{1,s}$ para cada estado $s$ no período 1, e $p_{2,s'}$ para cada $s'$ no período 2. O equilíbrio AD canônico precifica todos eles simultaneamente. O modelo de Radner separa em mercado spot por período + ativos transacionados em $t = 0$. Lucas (1978) usa este modelo para precificar ativos.

**5. Peer-review.** Calibre 🟡. **Risco residual no item (d):** o aluno meticuloso pode calcular $p_1 \approx 1{,}48$ exatamente e estranhar que a opção (iii) é apenas uma desigualdade. **Decisão Referee 2:** mantemos a desigualdade como resposta porque o ponto pedagógico é que **a taxa de juros agregada é uma média ponderada das taxas individuais** — não um número específico. Aluno que entende a desigualdade entende a economia. Distratores: (i) e (ii) são "primeiras tentativas"; (iv) é média simples (errada).

---

## Exercício 5 — 🔴 1º TBE em AD com 3 estados e 2 agentes

### Enunciado

Economia $L = 1$, $S = 3$, $I = 2$. Probabilidades de consenso $\pi = (0{,}3, 0{,}5, 0{,}2)$. Bernoullis: $v_A(c) = \ln c$, $v_B(c) = c$ (B neutro).

Dotações: $\omega^A = (10, 30, 20)$, $\omega^B = (20, 10, 30)$. Total $\bar\omega = (30, 40, 50)$.

Numerário $p_3 = 1$.

### Sub-itens

**(a)** Pelo argumento padrão (B neutro + ótimo interior + concorrência), as razões de preço de equilíbrio satisfazem:

- (i) $\mathbf{p^*_1/p^*_3 = \pi_1/\pi_3 = 0{,}3/0{,}2 = 1{,}5}$ e $p^*_2/p^*_3 = \pi_2/\pi_3 = 0{,}5/0{,}2 = 2{,}5$. **[correta]**
- (ii) $p^*_1/p^*_3 = \omega^A_1/\omega^A_3$.
- (iii) $p^*_1 = p^*_2 = p^*_3$.
- (iv) Não há restrição: agente neutro não impõe condição sobre 3 preços.

**(b)** A CPO de $A$ ($v = \ln$) implica:

- (i) $\mathbf{x^{A*}_1 = x^{A*}_2 = x^{A*}_3 = \bar c^A}$, totalmente segurado nos 3 estados. **[correta]**
- (ii) $x^{A*}_1 = (\pi_1/\pi_2) x^{A*}_2$.
- (iii) $x^{A*}$ depende dos preços individualmente.
- (iv) $A$ não consegue se segurar com 3 estados.

**(c)** O nível de consumo $\bar c^A$ que $A$ atinge em equilíbrio é (use orçamento):

- (i) $\bar c^A = \omega^A_1 + \omega^A_2 + \omega^A_3 = 60$.
- (ii) $\bar c^A = (\omega^A_1 + \omega^A_2 + \omega^A_3)/3 = 20$.
- (iii) $\mathbf{\bar c^A}$ tal que $\bar c^A \cdot (p^*_1 + p^*_2 + p^*_3) = p^*_1 \omega^A_1 + p^*_2 \omega^A_2 + p^*_3 \omega^A_3$. Numericamente, em $p^* = (1{,}5, 2{,}5, 1)$: $\bar c^A \cdot 5 = 1{,}5 \cdot 10 + 2{,}5 \cdot 30 + 1 \cdot 20 = 15 + 75 + 20 = 110 \Rightarrow \bar c^A = 22$. **[correta]**
- (iv) $\bar c^A$ depende da Bernoulli específica.

**(d)** Use o argumento do 1º TBE para mostrar que a alocação encontrada é **Pareto-eficiente**. A linha-chave do argumento é:

- (i) Por construção é Pareto.
- (ii) A prova é a mesma da Aula 4 substituindo $L$ por $LS$.
- (iii) **Suponha** por contradição que existe $\tilde x$ Pareto-superior. Pela UMP em $p^*$, $p^* \cdot \tilde x^j > p^* \cdot \omega^j$ para o $j$ estritamente melhor. Por LNS, $p^* \cdot \tilde x^A \ge p^* \cdot \omega^A$ e $p^* \cdot \tilde x^B \ge p^* \cdot \omega^B$. Soma: $p^* \cdot (\tilde x^A + \tilde x^B) > p^* \cdot \bar\omega$, contradizendo viabilidade. **[correta]**
- (iv) Vem do 2º TBE.

**(e)** O **passo crítico da prova** que requer mais cuidado em $\mathbb{R}^{LS}$ é:

- (i) A continuidade de $u^i$.
- (ii) A LNS de $\succeq^i$.
- (iii) **A** viabilidade ser **estado-a-estado**, não em soma agregada — se fosse só soma, $\tilde x$ Pareto-superior poderia satisfazer $\sum_s \sum_i \tilde x_s = \sum_s \sum_i \omega_s$ sem satisfazer $\sum_i \tilde x_s = \bar\omega_s$ para cada $s$, e a contradição quebra. **[correta]**
- (iv) A convexidade da preferência.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** Em mercado completo AD com agente neutro, **independentemente de quantos estados há**, os preços saem atuarialmente justos ($p_s/p_{s'} = \pi_s/\pi_{s'}$) e o agente avesso fica totalmente segurado em todos os estados ($x^*_s$ não depende de $s$). O 1º TBE estende sem alteração — só substituindo $\mathbb{R}^L$ por $\mathbb{R}^{LS}$. O **passo crítico é a viabilidade estado-a-estado**.

**2. Derivação.** Item (a): linearidade de $v_B = c$ + ótimo interior + concorrência ⇒ marginais de $B$ ($\pi_s$) proporcionais aos preços ⇒ $p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$. Item (b): CPO de $A$ ($v = \ln$): $(\pi_s/x^A_s)/(\pi_{s'}/x^A_{s'}) = p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$. Cancela $\pi$: $x^A_{s'}/x^A_s = 1 \Rightarrow x^A_s$ constante em $s$. Item (c): orçamento de $A$ em $\bar c^A$ constante: $\bar c^A (p^*_1 + p^*_2 + p^*_3) = p^*_1 \omega^A_1 + p^*_2 \omega^A_2 + p^*_3 \omega^A_3$. Numericamente $\bar c^A = 22$. Por viabilidade: $x^B_s = \bar\omega_s - \bar c^A = (8, 18, 28)$. Item (d): prova padrão Aula 4 reaproveitada. Item (e): a viabilidade estado-a-estado é o que faz a contradição funcionar.

**3. Armadilha.** Item (a): aluno marca (iv) "agente neutro não impõe condição sobre 3 preços" — falso, neutro impõe $|S| - 1$ razões (proporcionalidade às probabilidades). Item (e) é o mais sutil — aluno apressado marca (i) ou (ii) (resposta clichê de teoria de bem-estar), mas a **especificidade da extensão a $\mathbb{R}^{LS}$** é precisamente a estado-a-estado.

**4. Extensão.** Em mercado **incompleto** (Aula 6, Aula 8), o passo (a) e (b) falham: B neutro não está numa "cesta interior" do mercado completo (porque o mercado não é completo), e o agente avesso $A$ não consegue se segurar. O equilíbrio resultante (Radner com ativos limitados) é **constrained Pareto-eficiente** mas **genericamente Pareto-ineficiente** (Hart 1975, [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9)). Esta é a fronteira teórica que define todas as falhas de mercado de Aulas 7–9.

**5. Peer-review.** Calibre 🔴. Item (d) e (e) são as questões-mestras — testam se o aluno entende que **a prova do 1º TBE em AD é ipsis litteris a da Aula 4, substituindo o espaço**. Item (e) é deliberadamente sutil — distinguir "viabilidade agregada" de "viabilidade estado-a-estado" é um ponto frequentemente perdido. **Risco residual:** item (e) pode confundir alunos que não viram a prova com cuidado; recomendo revisar slide 6 do Bloco 3 da aula presencial. **Sem ambiguidade no enunciado.**

---

## Exercício 6 — 🔴 Mercados incompletos: ineficiência fora da fronteira

### Enunciado

> **Atenção:** este exercício **introduz informalmente** mercados incompletos para preparar Aula 6. Você não precisa fazer Radner formal aqui — apenas comparar a economia AD canônica do Exercício 5 com uma economia onde existe **apenas um ativo Arrow** (para o estado 1) em vez do mercado completo.

Considere a economia do Exercício 5 (3 estados, 2 agentes), mas agora suponha que **só existe um ativo: um título que paga 1 unidade de bem se o estado for 1, e 0 nos demais estados**. Não há ativos para os estados 2 e 3 separadamente. O bem físico em $t = 0$ pode ser trocado por unidades desse título a um preço $q_1$ a determinar. **Não há mecanismo de transação direta entre $\omega$ e $x$ nos estados 2 e 3.**

Adicionalmente, suponha que cada agente recebe sua dotação **diretamente** em cada estado (não em $t = 0$). Ou seja, $\omega^i_s$ é o que ele tem em cada $s$, e ele pode comprar/vender o título $q_1$ apenas para reorganizar seu consumo no estado 1.

### Sub-itens

**(a)** O agente $A$ avesso ao risco gostaria de poder **comprar seguro nos estados 2 e 3** para suavizar consumo. Com apenas o título do estado 1 disponível:

- (i) Pode comprar seguro contra o estado 1 e isso suaviza consumo nos 3 estados.
- (ii) **Não** pode suavizar consumo nos estados 2 e 3 — o ativo **não cobre** essas dimensões. **[correta]**
- (iii) O equilíbrio é o mesmo do Exercício 5.
- (iv) Pode replicar o mercado completo via combinação linear.

**(b)** Pelo argumento de **span**: o subespaço de payoffs replicáveis com o ativo do estado 1 é:

- (i) Todo $\mathbb{R}^3$.
- (ii) **O** subespaço $\{(x, 0, 0) : x \in \mathbb{R}\}$ — só 1 dimensão. **[correta]**
- (iii) O subespaço $\{(x, y, z) : x + y + z = 0\}$.
- (iv) O subespaço $\{(x, y, z) : x = y = z\}$.

**(c)** Para spanning $\mathbb{R}^3$ com **mercado completo**, precisa-se de quantos ativos linearmente independentes?

- (i) 1.
- (ii) 2.
- (iii) $\mathbf{3}$. **[correta]** Em $|S| = 3$, são necessários 3 ativos linearmente independentes (uma base de $\mathbb{R}^3$).
- (iv) Mais de 3.

**(d)** Em equilíbrio com mercado incompleto (apenas 1 ativo), $A$ atinge consumo:

- (i) Igual ao do Exercício 5: $(22, 22, 22)$.
- (ii) Próximo do Exercício 5, com pequeno desvio.
- (iii) **Genericamente** diferente do Exercício 5: $A$ pode ajustar consumo no estado 1 (via título), mas fica **preso** nas dotações $\omega^A_2 = 30, \omega^A_3 = 20$ — não atinge alocação livre de risco. **[correta]**
- (iv) Nulo: $A$ não consome nada.

**(e)** O equilíbrio resultante é:

- (i) Pareto-eficiente — qualquer equilíbrio é Pareto pelo 1º TBE.
- (ii) Pareto-eficiente, **mas** apenas em $\{$estado 1$\}$.
- (iii) **Constrained Pareto-eficiente** (eficiente dentro do que o mercado pode replicar) **mas genericamente Pareto-ineficiente** comparado ao mercado completo. **[correta]** Resultado de Hart (1975).
- (iv) Não existe equilíbrio.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Mercados completos requerem **$|S|$ ativos linearmente independentes** para spannar $\mathbb{R}^S$. Quando há menos ativos, o equilíbrio resultante é genericamente **Pareto-ineficiente**: agentes avessos não conseguem se segurar contra estados não cobertos por ativos. Este é o resultado de Hart (1975), **a fronteira que define as falhas de mercado das Aulas 7–9**.

**2. Derivação.** Item (b): com 1 ativo que paga $(1, 0, 0)$, span $= \{a (1, 0, 0) : a \in \mathbb{R}\}$ — 1 dimensão. Item (c): para spannar $\mathbb{R}^3$, 3 ativos linearmente independentes. Item (d): com apenas o ativo do estado 1, $A$ pode escolher livremente $x^A_1$, mas não pode reorganizar $x^A_2$ nem $x^A_3$ — fica preso em $\omega^A_2 = 30, \omega^A_3 = 20$. Em equilíbrio, $x^A = (\hat x^A_1, 30, 20)$ onde $\hat x^A_1$ depende de $q_1$ (preço do ativo) que se determina endogenamente. Compare com Exercício 5: $A$ atingia $(22, 22, 22)$ — alocação totalmente segura. Aqui, $A$ permanece exposto ao risco dos estados 2 e 3.

**3. Armadilha.** Item (e): aluno desinformado marca (i) "Pareto pelo 1º TBE" — **falso, o 1º TBE de hoje (Aula 5) requer mercado completo**. Quando o mercado é incompleto (Aula 6+), o teorema falha. Item (a): aluno apressado marca (iv) "pode replicar via combinação linear" — falso, com 1 ativo apenas, não há combinação possível para outros estados.

**4. Extensão.** Aula 6 vai derivar **equilíbrio de Radner** formalmente, mostrar quando ele coincide com AD canônico (resposta: quando ativos disponíveis spannam $\mathbb{R}^S$) e quando não. **Implicação política para o regulador:** introduzir um novo ativo financeiro pode ser **Pareto-melhorador** se preencher uma "dimensão faltante" do span. Esta é a justificativa neoclássica para a expansão de mercados de derivativos. **Mas:** Aulas 7–9 vão mostrar que quando há externalidade, info assimétrica ou bem público, **mais ativos não bastam**. Hart (1975, [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9)), Stiglitz-Weiss (1981, AER 71(3): 393–410, [JSTOR 1802787](https://www.jstor.org/stable/1802787)), Akerlof (1970, [DOI 10.2307/1879431](https://doi.org/10.2307/1879431)).

**5. Peer-review.** Calibre 🔴. Este é o exercício mais ambicioso da lista, e **deliberadamente preview de Aula 6**. Aluno que faz este exercício chega a Aula 6 já com framework. **Risco residual:** aluno pode achar que o exercício "exige Radner formal" e travar — o enunciado é cuidadoso em dizer "informalmente" e em descrever o setup operacionalmente. Sub-itens (a), (b), (c) são calibradores; (d), (e) são onde se separa quem entendeu de quem não. **Verificação cruzada:** o exercício força o aluno a confrontar **a fronteira do 1º TBE da Aula 5** — exatamente o ponto pedagógico de virada. Sem ambiguidade.

---

## Apêndice — Critérios de auditoria Referee 2

### Verificação cruzada com pré-aula

Todos os 6 exercícios usam **apenas** ferramentas que estão na pré-aula 5 ou na Aula 5 magistral:

- $\mathbb{R}^{LS}$ + bens contingentes (todos os exercícios).
- Equilíbrio AD walrasiano + UMP em $\mathbb{R}^{LS}$ (todos).
- Equação SDF / razão de preços contingentes (Ex 2, 3, 5 — em Ex2/Ex3 a razão emerge via Cobb-Douglas direta; o SDF generaliza).
- 1º TBE estendido (Ex 5, prova reaproveitada).
- Seguro completo (Ex 1, 5).
- Tempo como caso particular de estado (Ex 4).
- Mercados incompletos como **preview informal** (Ex 6) — declarado.

### Verificação cruzada com lecionado

- Não há exercício que exija Radner formal (Aula 6).
- Não há exercício que exija prova de existência (Aula 6).
- Não há exercício que exija EU como teoria (Aulas 8 / J-R §8 / MWG §6).
- Não há exercício de teoria do leilão, info assimétrica, etc. (Aulas 7–9).

### Verificação algébrica

- Exercício 1: $\bar c^A = 76$, $x^B = (24, 84)$. **Verificar viabilidade:** $76 + 24 = 100$ ✓; $76 + 84 = 160$ ✓.
- Exercício 3: $\bar c^A = \bar c^B = 80$. **Viabilidade:** $80 + 80 = 160$ ✓.
- Exercício 4: $p^*_1 \approx 1{,}48$ ∈ $(1{,}11, 2)$ ✓. Aritmética: $1/1{,}9 + 1/1{,}5 \approx 1{,}19$; $(p+1)/p \cdot 1{,}19 = 2 \Rightarrow p \approx 1{,}48$.
- Exercício 5: $\bar c^A = 22$ em $p^* = (1{,}5, 2{,}5, 1)$. **Verificar:** $22 \cdot 5 = 110 = 1{,}5 \cdot 10 + 2{,}5 \cdot 30 + 1 \cdot 20 = 15 + 75 + 20 = 110$ ✓. $x^B = (8, 18, 28)$, viabilidade: $22+8=30, 22+18=40, 22+28=50$ ✓.

### Verificação pedagógica

- 🟢 Ex 1 calibra (preview do que vai aparecer em todos).
- 🟡 Ex 2, 3, 4 são casos canônicos de literatura (heterogeneidade de crenças, agregado livre de risco, intertemporal).
- 🔴 Ex 5 é a versão $|S| = 3$ do Ex 1 + 1º TBE explícito.
- 🔴 Ex 6 é a fronteira: introduz informalmente mercados incompletos.

### Risco residual declarado

- **Ex 2 (d):** corrigido em pass-3 (Referee 2). Existe fórmula fechada $p^*_1/p^*_2 = 2/3$ (média das crenças sob simetria de dotação) — distratores recalibrados; resposta correta agora é (i).
- **Ex 4 (d):** desigualdade em vez de número específico. Aceitamos — ponto pedagógico é a média ponderada.
- **Ex 6:** preview de Aula 6. Aceitamos — declarado no enunciado.

### Notação canônica respeitada

- $\succeq$ (não $\succsim$). ✓
- $\text{TMS}$ (não $MRS$). ✓ (usado no gabarito do Ex 1; convenção respeitada em todo o bundle).
- Decimais com vírgula `\{,\}`. ✓
- $\pi_s$ (não $p_s$ — colide com preço). ✓
- Estados $s \in S$. ✓
