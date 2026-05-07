# Pré-Monitoria 2 — Aula 4 (EG em Trocas) · Extensões refinadas

> **Status:** REFINADA (2026-05-06). Conteúdo concreto nas 4 extensões; pronta para revisão final do Darcio antes de habilitar no portal.
> **Página HTML:** `platform/pre-monitoria-02.html`.
> **Calendário (em `platform/js/calendario.js`):**
> - Pré-M2 abre **sáb 16/05 12:00**, fecha **sex 22/05 22:00**.
> - Monitoria presencial: **sáb 23/05 10:00** (Insper, Alberto Nishikawa).

## Contrato pedagógico

- **Formativa, não conta nota.**
- Tempo-alvo: **60–70 min** (ajustado após refinamento — antes 50–60).
- Cobre **extensões** da Aula 4 que o Alberto vai aprofundar no sábado. Não é repetição da aula magistral.
- Sem quiz avaliativo, sem exercícios para nota.
- Estrutura: 7 seções (S0 orientação, S1 recap, S2–S5 extensões, S6 reflexão), com micro-checkpoints (3 tentativas, cooldown 10s) + slider de confiança pré/pós.
- **Calibre:** teto Jehle-Reny §5.1–5.2; tocamos §5.3 (núcleo, Debreu-Scarf) **cirurgicamente**, sem Hahn-Banach formal, sem Kakutani.

## S1 — Recap da Aula 4 (5 min)

Cinco âncoras da aula magistral, cada uma em 1 frase:

1. **Identidade contábil de Walras (agregada).** Pela LNS, $p \cdot x^i(p, m^i) = m^i$ para todo $i$, então $p \cdot z(p) = p \cdot \big(\sum_i x^i - \bar\omega\big) = 0$ vale **fora** do equilíbrio (qualquer $p$ onde demanda existe), não só nele.
2. **Curva de contrato.** Lugar geométrico das alocações Pareto-eficientes interiores, caracterizado por $\text{TMS}^A(x^A) = \text{TMS}^B(\bar\omega - x^A)$.
3. **Equilíbrio competitivo (CD assimétrica, base da aula).** $u^A = x_1^{2/3}x_2^{1/3}$, $u^B = x_1^{1/3}x_2^{2/3}$, $\omega^A = (1,4)$, $\omega^B = (3,0)$ $\Rightarrow$ $p_1^*/p_2^* = 8/7$, $x^{A*} = (3, 12/7)$, $x^{B*} = (1, 16/7)$.
4. **1º TBE.** EC + LNS $\Rightarrow$ Pareto-eficiente. Prova por contradição em 3 passos: (1) UMP no estritamente melhor; (2) LNS nos demais; (3) soma e contradiz $\sum_i x^i = \bar\omega$.
5. **2º TBE.** Pareto-eficiente + preferências convexas $\Rightarrow$ existe sistema de preços + transferência lump-sum que descentraliza. Convexidade entra na construção do hiperplano separador.

## S2 — Extensão 1: EC variando formas funcionais (~15 min)

**Pergunta-mãe:** quão sensível é $p_1^*/p_2^*$ à forma funcional, mantida a estrutura de mercado?

### (a) CD com peso variável (5 min)

Setup base: $\omega^A = (1, 4)$, $\omega^B = (3, 0)$, $\bar\omega = (4, 4)$. Variemos só os pesos.

**Caso 1 — original:** $u^A = x_1^{2/3}x_2^{1/3}$, $u^B = x_1^{1/3}x_2^{2/3}$. Já visto: $p_1^*/p_2^* = 8/7$.

**Caso 2 — pesos simétricos:** $u^A = u^B = x_1^{1/2}x_2^{1/2}$, mesmas dotações. Demanda CD: $x_1^i = m^i/(2 p_1)$. Renda: $m^A = p_1 + 4 p_2$, $m^B = 3 p_1$. Mercado bem 1, com $p_2 = 1$ (numerário):
$$
\frac{p_1 + 4}{2 p_1} + \frac{3 p_1}{2 p_1} = 4 \;\Leftrightarrow\; \frac{p_1 + 4 + 3 p_1}{2 p_1} = 4 \;\Leftrightarrow\; 4 p_1 + 4 = 8 p_1 \;\Leftrightarrow\; p_1^* = 1.
$$
**Resultado:** $p_1^*/p_2^* = 1$. Quando $A$ deixa de ser "viesado" para $x_1$, o prêmio que o bem 1 carregava some.

**Caso 3 — dotações idênticas:** $\omega^A = \omega^B = (2, 2)$, qualquer CD. Ambos demandam o mesmo bundle a qualquer $p$ que dê renda igual. Por simetria, $p_1^*/p_2^* = 1$ trivialmente; alocação é a própria dotação.

**Mensagem:** o "viés" em $p_1^*$ vem da combinação **preferência + dotação assimétricas**. Tirar qualquer uma das duas mata o prêmio.

### (b) Leontief simétrico (5 min)

$u^A = u^B = \min\{x_1, x_2\}$, $\omega^A = (4, 2)$, $\omega^B = (2, 4)$, $\bar\omega = (6, 6)$.

Demanda Leontief: a $p \gg 0$ e renda $m$, $x_1 = x_2 = m/(p_1 + p_2)$. Logo cada $i$ pede $x_1^i = x_2^i = m^i/(p_1 + p_2)$.

Mercado bem 1: $\sum_i m^i/(p_1+p_2) = (p_1 \cdot 6 + p_2 \cdot 6)/(p_1+p_2) = 6 = \bar\omega_1$ ✓ **para qualquer** $(p_1, p_2) \gg 0$ — pois $\bar\omega_1 = \bar\omega_2 = 6$ é o que faz a aritmética dar igual nos dois mercados.

**O que esse "fecha para qualquer $p$" esconde:** **a alocação NÃO é única**. Cada quociente $p_1/p_2$ produz uma cesta diferente para cada agente. Verificação concreta:

- Em $p_1 = p_2 = 1$: $m^A = 6$, $x^A = (3, 3)$; $m^B = 6$, $x^B = (3, 3)$.
- Em $p_1 = 2, p_2 = 1$: $m^A = 2 \cdot 4 + 1 \cdot 2 = 10$, $x^A = (10/3, 10/3) \approx (3{,}33; 3{,}33)$. $m^B = 2 \cdot 2 + 1 \cdot 4 = 8$, $x^B = (8/3, 8/3) \approx (2{,}67; 2{,}67)$. Soma bem 1: $10/3 + 8/3 = 18/3 = 6$ ✓.
- Em $p_1 = 1, p_2 = 2$: por simetria do setup, troca os papéis de $A$ e $B$.

**Resolução:** com Leontief, a demanda só vive sobre a diagonal $x_1 = x_2$ — a TMS canônica ($p_1/p_2$) **não está definida no canto da L**. Como o problema não fixa o quociente, **cada $p_1/p_2 \in (0, \infty)$ gera um EC distinto: continuum de equilíbrios parametrizado por preços relativos**. Em Leontief simétrico com dotação simétrica nos dois bens (mesmo total $\bar\omega_1 = \bar\omega_2$), a "unicidade" do EC quebra — existe família a 1 parâmetro. Isso prefigura discussões sobre unicidade que volta na Aula 6 (Arrow-Debreu).

> **Aviso de limite:** para o Alberto cobrir presencialmente — o que muda se as dotações forem $(4, 0), (0, 4)$ (corner)? Aí Leontief gera *múltiplas* alocações de equilíbrio, não só preço indeterminado. Fica em aberto.

### (c) CES com $\rho = 1/2$ (5 min, opcional/exigente)

$u^A = u^B = (x_1^{1/2} + x_2^{1/2})^2$, $\omega^A = (4, 0)$, $\omega^B = (0, 4)$.

Aqui $\rho = 1/2$, logo $\sigma = 1/(1-\rho) = 2$ — substituição maior que CD ($\sigma = 1$), menor que linear ($\sigma = \infty$).

Demanda CES (forma fechada): $x_i = m \cdot p_i^{-\sigma}/\sum_j p_j^{1-\sigma}$. Por simetria preferência + simetria estrutural da dotação invertida, conjectura é $p_1/p_2 = 1$.

Verificação em $p_1 = p_2 = 1$, $\sigma = 2$: $m^A = 4, m^B = 4$. $x_1^A = 4 \cdot 1/(1+1) = 2$, $x_2^A = 2$. Idem $B$. Soma $x_1 = 4 = \bar\omega_1$ ✓.

**Conexão com (a) e (b):** CES com $\rho \to 0$ gera CD (caso (a)); $\rho \to -\infty$ gera Leontief (caso (b)); $\rho \to 1$ gera linear. Um único parâmetro varre o leque inteiro.

**Micro-checkpoint S2 (1 item obrigatório):**

> Em CD com $\alpha^A = 1/2$ (peso simétrico em $A$) e dotações $\omega^A = (1,4)$, $\omega^B = (3,0)$, $\bar\omega = (4,4)$, qual é $p_1^*/p_2^*$?
>
> (a) $1$ ✓
> (b) $8/7$
> (c) $4/7$
> (d) $\sqrt{4/7}$

**Gabarito 5-passos:** (1) Ponto-chave: tirar o viés de peso de $A$ (de $2/3$ para $1/2$) muda totalmente a demanda relativa, mesmo mantendo a dotação assimétrica. (2) Derivação: $m^A = p_1 + 4, m^B = 3 p_1$ (com $p_2 = 1$); soma de demandas no bem 1 dá $(p_1 + 4 + 3 p_1)/(2 p_1) = 4 \Rightarrow p_1 = 1$. (3) Armadilha: quem chuta $8/7$ está colando o resultado da CD assimétrica do recap; quem chuta $4/7$ está fazendo a álgebra invertendo dotações. (4) Extensão: na Aula 5, retomamos o exercício com produção e veremos como o lado da oferta perturba esse equilíbrio. (5) Peer-review: a alternativa $\sqrt{4/7}$ é distrator de quem confunde CES com CD; vale como ruído de calibração.

## S3 — Extensão 2: Núcleo em $I = 3$ (~10 min)

**Pergunta-mãe:** o núcleo realmente "encolhe" quando $I$ cresce? Concretamente.

### Setup canônico

$I = 3$ (consumidores $A$, $B$, $C$), $L = 2$. Preferências CD simétricas:
$$
u^i(x_1, x_2) = x_1^{1/2}\, x_2^{1/2}, \quad i \in \{A, B, C\}.
$$
Dotações: $\omega^A = (2, 0)$, $\omega^B = (0, 2)$, $\omega^C = (1, 1)$. Total: $\bar\omega = (3, 3)$.

### Equilíbrio competitivo

Demanda CD simétrica: $x_1^i = m^i/(2 p_1)$, $x_2^i = m^i/(2 p_2)$. Renda: $m^A = 2 p_1$, $m^B = 2 p_2$, $m^C = p_1 + p_2$.

Mercado bem 1:
$$
\sum_i \frac{m^i}{2 p_1} = \frac{2 p_1 + 2 p_2 + (p_1 + p_2)}{2 p_1} = \frac{3 p_1 + 3 p_2}{2 p_1} = 3 \cdot \frac{p_1 + p_2}{2 p_1} = 3 \;\Leftrightarrow\; \frac{p_1 + p_2}{2 p_1} = 1 \;\Leftrightarrow\; p_1 = p_2.
$$
Normalize $p_1 = p_2 = 1$. Renda: $m^A = m^B = m^C = 2$. Demanda: $x^A = x^B = x^C = (1, 1)$.

**EC:** $p^* = (1, 1)$, alocação $x^{i*} = (1, 1)$ para todo $i$. Cada um vale $u^i = 1$; cada um partia de $u^i(\omega^i) = 0, 0, 1$ respectivamente. $C$ entra "no preço" — dotação mediana, fica indiferente nominalmente mas com a mesma utilidade.

### Coalizões e bloqueio

Sete coalizões não-vazias. $C(\mathcal{E})$ = alocações viáveis não bloqueadas por nenhuma delas.

**Exemplo 1 — alocação Pareto-eficiente NÃO no núcleo.** Considere $x^A = (3, 0), x^B = (0, 3), x^C = (0, 0)$. É viável ($\sum = (3,3)$). É Pareto-eficiente entre alocações com $u^C = 0$ — sim, do ponto de vista de uma análise míope, mas $C$ pode bloquear sozinho: na autarquia, $u^C(\omega^C) = u^C(1,1) = 1 > 0 = u^C(0,0)$. **Bloqueada por $\{C\}$.** Logo, fora do núcleo.

**Lição:** Pareto-eficiência não basta. Núcleo exige *racionalidade individual* (cada um pelo menos no nível da dotação) e bem mais: racionalidade de toda subcoalizão.

**Exemplo 2 — alocação que sobrevive em $I=2$ (par $\{A,B\}$) mas é bloqueada em $I=3$.** Suponha que removêssemos $C$ e ficássemos com $\{A, B\}$ e dotações $\omega^A = (2,0), \omega^B = (0,2)$, $\bar\omega = (2,2)$. EC dessa subeconomia: por simetria, $p_1 = p_2 = 1$, $x^A = x^B = (1,1)$. Está no núcleo de $I = 2$ — racional individual e Pareto-eficiente.

Agora coloque $C$ de volta com $\omega^C = (1,1)$ e considere a alocação de $I=3$ que estende a anterior dando ao $C$ a própria dotação: $x^A = (1,1), x^B = (1,1), x^C = (1,1)$. **Esta é o EC** do exemplo. Está no núcleo (não bloqueada por nenhuma coalizão — verificar usando a desigualdade de núcleo $\subseteq$ EC).

**Onde "encolhe":** considere alocação $x^A = (1.5, 1.5), x^B = (1.5, 1.5), x^C = (0, 0)$. Em $I=2$ (par $\{A,B\}$ com dotações somadas $(2,2)$), seria viável? $\bar\omega_{AB} = (2,2)$ não chega a $(3,3)$. Logo, sem $C$, não dá — $\{A,B\}$ sozinhos não conseguem essa alocação. Mas em $I=3$ com $\bar\omega = (3,3)$, é viável e Pareto-eficiente. **MAS** $\{C\}$ bloqueia (autarquia dá $u^C = 1 > 0$). Fora do núcleo de $I=3$.

> **Para o Alberto cobrir presencialmente:** construir alocação concreta que está no núcleo da subeconomia $\{A, B\}$ vista isoladamente mas é bloqueada em $I = 3$ pela coalizão *intermediária* $\{A, C\}$ ou $\{B, C\}$ — ou seja, não pelo singleton, mas por uma coalizão de dois. Esse é o conteúdo geométrico mais rico do "núcleo encolhe" e fica como gancho para a aula presencial. (No exemplo construído acima, o bloqueio foi pelo singleton, que é o caso mais fácil. Alberto sobe um nível.)

### Réplica e Debreu-Scarf

Anúncio do slide "Núcleo (2/2) — leitura visual": para $r$ cópias de cada tipo (economia $r$-replicada), núcleo $C(r)$ é decrescente em $r$, e $\bigcap_{r \ge 1} C(r) = $ EC. **Debreu-Scarf (1963), com intuição original em Edgeworth (1881).**

Não vamos provar — pré-monitoria deixa o anúncio. Alberto pode esquematizar sábado.

**Micro-checkpoint S3 (1 item obrigatório):**

> Na economia $I = 3$ com $u^i$ CD simétrica e dotações $\omega^A = (2,0), \omega^B = (0,2), \omega^C = (1,1)$, a alocação $x^A = x^B = x^C = (1,1)$:
>
> (a) é EC e está no núcleo ✓
> (b) é Pareto-eficiente mas não é EC
> (c) é bloqueada por $\{C\}$
> (d) é bloqueada por $\{A, B\}$

**Gabarito 5-passos:** (1) Ponto-chave: a alocação resulta do cálculo do EC com $p^* = (1,1)$ e demanda CD com renda $m^i$. Por 1º TBE (preferências satisfazem LNS), todo EC está no núcleo. (2) Derivação: já feita acima — $\sum m^i / (2 p_1) = 3 \Leftrightarrow p_1 = p_2$. (3) Armadilha: (c) é o erro de quem checa $u^C$ na alocação ($= 1$) contra $u^C(\omega^C)$ ($= 1$) e conclui igualdade $\Rightarrow$ pode bloquear. Não — bloqueio exige melhoria *estrita* para algum membro (e igualdade para os outros), o que aqui não tem. (4) Extensão: na replicada com $r = 2, 3, \ldots$, essa mesma estrutura comprime alocações alternativas — Aula 5 não chega lá, mas Aula 6 retoma com Arrow-Debreu. (5) Peer-review: alternativa (d) é distrator fraco — $\{A,B\}$ tem dotação total $(2,2)$ e a alocação dá a eles $(2,2)$ no agregado; nada a melhorar com a própria dotação.

## S4 — Extensão 3: Contraexemplo do 1º TBE quando LNS falha (~10 min)

**Pergunta-mãe:** se o consumidor está **saciado**, em qual passo da prova do 1º TBE o argumento quebra?

### Recap da prova (3 passos)

Suponha que $(p^*, x^*)$ é EC mas não é Pareto. Então existe alocação viável $\tilde x$ com $u^i(\tilde x^i) \ge u^i(x^{*i})$ para todo $i$ e $u^j(\tilde x^j) > u^j(x^{*j})$ para algum $j$.

- **Passo 1 (UMP no $j$).** Como $u^j(\tilde x^j) > u^j(x^{*j})$ e $x^{*j}$ resolve UMP em $p^*$ com $m^{*j} = p^* \cdot \omega^j$, $\tilde x^j$ não pode caber no orçamento: $p^* \cdot \tilde x^j > p^* \cdot \omega^j$.
- **Passo 2 (LNS nos demais $i \neq j$).** Para todo $i \neq j$ com $u^i(\tilde x^i) \ge u^i(x^{*i})$: $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$. **Aqui usamos LNS.**
- **Passo 3 (somar).** $\sum_i p^* \cdot \tilde x^i > \sum_i p^* \cdot \omega^i$, mas $\sum_i \tilde x^i = \bar\omega = \sum_i \omega^i$. Contradição.

### Onde LNS é decisiva

No Passo 2, queremos: "se $\tilde x^i$ é tão bom quanto $x^{*i}$, então $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$". Por contrapositiva: "se $p^* \cdot \tilde x^i < p^* \cdot \omega^i$ (sobra renda), então $u^i(\tilde x^i) < u^i(x^{*i})$".

A justificativa usa LNS: se sobra renda em $\tilde x^i$, posso achar **vizinho** $\tilde x^i + \varepsilon$ ainda dentro do orçamento e com $u^i(\tilde x^i + \varepsilon) > u^i(\tilde x^i)$ (LNS). Esse vizinho violaria UMP de $i$ se $u^i(\tilde x^i) \ge u^i(x^{*i})$ — pois $i$ teria escolhido o vizinho, não $x^{*i}$.

**Sem LNS — saciedade.** Se $i$ está saciado em $\tilde x^i$ (não há vizinho com utilidade maior), o argumento quebra. $i$ pode "preferir" $\tilde x^i$ a $x^{*i}$ com $\tilde x^i$ mais barato, e ainda assim não querer gastar a sobra. UMP não obriga $i$ a esgotar o orçamento.

### Contraexemplo qualitativo (curvas de indiferença fechadas)

Considere $u^A(x_1, x_2) = -[(x_1 - 1)^2 + (x_2 - 1)^2]$ — paraboloide invertido com **bliss point** em $(1, 1)$. Curvas de indiferença = círculos centrados em $(1,1)$. $A$ tem saciedade local em $(1,1)$.

Combine com $u^B = x_1 x_2$ (CD padrão), $\omega^A = (2, 0), \omega^B = (0, 2), \bar\omega = (2, 2)$.

Em $p^* = (1, 1)$, $A$ tem renda $m^A = 2$ e o bundle preferido é $(1, 1)$ — cabe exatamente. $B$ com renda $2$ demanda $(1, 1)$. Mercado fecha. Mas o ponto crítico é geométrico: o conjunto preferido de $A$ a $(1, 1)$ é... *vazio*. Não há nada estritamente melhor. O EC existe, mas a alavanca usada na prova ("se há algo melhor, custa mais") perde força quando o "se" sequer se ativa.

> **Limite metodológico — exemplo numérico fechado é o gancho para sábado.** Construir um setup concreto em que o EC encontrado é *de fato* não-Pareto-eficiente exige cuidado: se ambos os consumidores são satisfeitos com sobra de renda no EC, é fácil mostrar Pareto-superior por redistribuição; mas calibrar dotações + preferências para garantir sobra de renda só em $A$ (saciado) e demanda esgotada em $B$ é trabalho de papel-e-lápis com calibração delicada. **Pré-monitoria deixa o argumento qualitativo (saciedade $\Rightarrow$ Passo 2 falha) e marca o construído numérico como ponto que o Alberto completa em sala.** Referência: MWG Cap. 16 §B traz o construto canônico (não citaremos por nome ao aluno).

**Micro-checkpoint S4 (1 item obrigatório):**

> Em economia em que o consumidor $A$ tem preferências saciadas com bliss point interior, qual passo da prova do 1º TBE pode falhar?
>
> (a) Passo 1 (UMP no consumidor estritamente melhor)
> (b) Passo 2 (LNS — alocação tão boa quanto a do EC implica gasto pelo menos igual ao da renda) ✓
> (c) Passo 3 (somar e contradizer viabilidade)
> (d) Nenhum — a prova vale sem LNS

**Gabarito 5-passos:** (1) Ponto-chave: LNS é o que conecta "tão bom quanto $x^{*i}$" a "custa pelo menos $p^* \cdot \omega^i$". Saciedade quebra esse elo. (2) Derivação: contrapositiva do Passo 2 usa um vizinho mais caro — saciedade impede o vizinho. (3) Armadilha: (a) atrai quem confunde Passo 1 (que usa UMP em sentido estrito, não LNS) com Passo 2; (c) atrai quem acha que o problema é contábil agregado. (4) Extensão: na Aula 8 (externalidades), LNS continua válida mas o 1º TBE falha por outro motivo — ausência de mercados. Ver a diferença é parte da pedagogia. (5) Peer-review: a alternativa (d) é didaticamente útil para escarafunchar quem está só "marcando todas as hipóteses" — força o aluno a entender que LNS é não-redundante.

## S5 — Extensão 4: 2º TBE com transferências e papel da convexidade (~10 min)

**Pergunta-mãe:** por que convexidade aparece no 2º TBE mas **não** no 1º?

### Enunciado preciso (caso troca pura)

Sejam preferências contínuas, monotônicas (ou LNS) e **estritamente convexas** para todo $i$. Seja $x^*$ alocação Pareto-eficiente com $x^{*i} \gg 0$ para todo $i$. Então existe vetor de preços $p^* \ge 0$ (não nulo) e transferências lump-sum $T = (T^1, \ldots, T^I)$ com $\sum_i T^i = 0$ tais que $(p^*, x^*)$ é EC da economia com dotações redistribuídas $\hat\omega^i = \omega^i + T^i$.

**Mecanismo da transferência.** $T^i$ desloca riqueza entre agentes sem afetar preços relativos. Mercado descentralizado então acha $x^*$.

### Onde a convexidade entra (intuição geométrica)

A prova constrói $p^*$ por **separação de hiperplano**. Para cada $i$, defina o "conjunto preferido estrito":
$$
V^i = \{ x \in \mathbb{R}_+^L : u^i(x) > u^i(x^{*i}) \}.
$$
Convexidade da preferência $\Rightarrow V^i$ é convexo. Pareto-eficiência de $x^*$ $\Rightarrow$ $\sum_i V^i$ não intersecta $\{\bar\omega\}$ (caso contrário haveria melhoria viável). Como $\sum_i V^i$ é convexo (soma de convexos é convexo) e $\{\bar\omega\}$ é convexo, **teorema de separação** dá $p^*$ tal que $p^* \cdot z \ge p^* \cdot \bar\omega$ para todo $z \in \sum_i V^i$. Esse $p^*$ é o vetor de preços que sustenta $x^*$.

> **Sem nomear Hahn-Banach** — tratamos como "teorema de separação" de matemática finita-dimensional. Aluno não precisa do formalismo para entender que o passo é não-trivial.

### Quando falha — preferências não-convexas

Considere $u^A(x_1, x_2) = x_1^2 + x_2^2$. Curvas de indiferença = arcos de círculo *côncavos* (vistos do interior do conjunto preferido). $V^A$ não é convexo: combinar $(2, 0)$ e $(0, 2)$ (ambos com $u = 4$) dá $(1, 1)$ com $u = 2 < 4$ — combinação interior é **estritamente pior** que os extremos.

Com preferência assim, a tangência usual ($\text{TMS}^A = p_1/p_2$) gera ponto de utilidade *mínima* local na restrição orçamentária, não máxima. Demanda $A$ vai aos extremos (pontos de canto). Não há $p^*$ que sustente alocação interior $x^{*A}$ Pareto-eficiente como EC — qualquer $p^*$ tangente faz $A$ querer fugir do interior.

**Mensagem geométrica:** sem convexidade, **conjuntos preferidos viram não-convexos, separação por hiperplano falha, descentralização por preço quebra**.

### Onde mais a convexidade aparece

- **Aula 5 (produção):** retornos crescentes a escala $\Rightarrow$ conjunto de produção não-convexo. 2º TBE pode falhar mesmo com preferências bem-comportadas.
- **Aula 8 (externalidades):** mesmo com convexidade individual, o conjunto agregado pode ser não-convexo por causa do externo. Tema para depois.

**Micro-checkpoint S5 (1 item obrigatório):**

> Na economia de troca pura, se as preferências de $A$ são não-convexas (curvas de indiferença côncavas vistas do conjunto preferido), o 2º TBE pode falhar porque:
>
> (a) o 1º TBE não vale, então 2º TBE também não
> (b) Pareto-eficiência deixa de existir
> (c) o teorema de separação que constrói $p^*$ pode falhar (conjunto preferido $V^A$ deixa de ser convexo) ✓
> (d) transferências lump-sum alteram preços relativos

**Gabarito 5-passos:** (1) Ponto-chave: convexidade da preferência é o que torna $V^i$ convexo, hipótese essencial do teorema de separação que constrói $p^*$. (2) Derivação: vista intuitivamente — em preferência não-convexa, há tangências que são mínimos, não máximos, e a "reta de preço" não é suporte. (3) Armadilha: (a) inverte a relação (1º TBE não usa convexidade — usa apenas LNS); (b) está errado porque PE existe sempre que alocações são contínuas e factíveis (compacidade); (d) é confusão sobre o que é lump-sum. (4) Extensão: Aula 5 traz o caso de produção com retornos crescentes — mesma intuição se aplica do lado da firma. (5) Peer-review: distrator (b) é didático — força o aluno a separar "PE existe" de "PE é descentralizável", duas afirmações distintas.

## S6 — Reflexão final (3 min, mantida)

Dois campos qualitativos (mín. 10 chars cada):

1. **Claro.** "O que ficou claro depois da pré-monitoria que estava nebuloso na aula?" Placeholders: "Por que LNS é usada no Passo 2 e não no Passo 1", "Como o núcleo encolhe concretamente em $I=3$".
2. **Pedido.** "O que você quer que o Alberto cubra no sábado?" Placeholders: "Cálculo numérico do contraexemplo de saciedade", "Coalizão $\{A,C\}$ ou $\{B,C\}$ bloqueando alocação não trivial".

> Alimenta a triagem do Alberto antes da monitoria — ele lê as respostas no admin dashboard quinta-feira de manhã.

## Para o Alberto cobrir presencialmente (deixado em aberto na pré-monitoria)

Lista do que **não** esgotamos — gancho para o sábado:

1. **Ext. 1 — Leontief com dotação corner** ($\omega^A = (4, 0), \omega^B = (0, 4)$): aí *múltiplas alocações* de equilíbrio aparecem, não só preço relativo indeterminado. Construir e discutir.
2. **Ext. 2 — Bloqueio por coalizão intermediária $\{A, C\}$** numa alocação que sobrevive a singletons mas é bloqueada por par. É o caso geometricamente rico do "núcleo encolhe".
3. **Ext. 2 — Réplica e Debreu-Scarf:** esquematizar a prova de que $C(r) \to \{x_{EC}\}$ quando $r \to \infty$. Sem formalismo, com diagrama.
4. **Ext. 3 — Contraexemplo numérico fechado com bliss-point interior (MWG §16.D):** construir explicitamente $(\omega, u)$ tais que o EC encontrado caia no bliss-point com sobra de renda só no agente saciado, e exibir alocação Pareto-superior — i.e., violação *genuína* de LNS (saturação total num ponto, não só direcional). Pré-monitoria deixou no qualitativo.
5. **Ext. 4 — Preferência não-convexa em $2 \times 2$:** desenhar caixa de Edgeworth com IC côncavas e mostrar geometricamente que nenhuma reta de preço sustenta alocação Pareto-eficiente.
6. **(Bônus se sobrar tempo)** Conexão com a Aula 5: retornos crescentes na produção como instância natural de não-convexidade — o 2º TBE no caso geral exige convexidade *do conjunto de produção agregado*, não só das preferências.

## Para o Darcio decidir (antes de habilitar)

1. **Tempo declarado:** 60–70 min é defensável após refinamento. Se Alberto achar curto, subir para 70–80.
2. **Profundidade de Ext. 1c (CES):** está como "opcional/exigente" — Darcio decide se mantém ou poda.
3. **Habilitar no portal:** entrada `PRE_MONITORIAS[1]` em `portal.html` com `available: true`, `availableOn: '2026-05-16T12:00:00-03:00'`, `closesOn: '2026-05-22T22:00:00-03:00'`.
4. **Notação canônica seguida:** $\succeq$, $\text{TMS}$, vírgula decimal $0{,}25$. ✓
5. **Math delimiters:** `.md` usa `$...$` e `$$...$$`; HTML usa `\(...\)` e `\[...\]`. ✓
