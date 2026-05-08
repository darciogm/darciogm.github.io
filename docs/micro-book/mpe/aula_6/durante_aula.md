# Aula 6 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 27/05/2026. Tema: **Arrow-Debreu II — Existência, Radner Sequencial, Mercados Incompletos**. Conteúdo central: existência via Brouwer/Kakutani (sketch para 🟡, roteiro para 🔴), equivalência AD↔Radner sob mercado completo, Hart (1975) para incompletude, equação de Euler como caso particular do SDF.

> **Disclaimer pedagógico explícito.** Esta é a aula que **fecha o EG** e prepara as falhas (Aulas 7–9). A "novidade técnica" é o ponto fixo (Brouwer/Kakutani); a "novidade conceitual" é distinguir AD canônico de Radner sequencial e entender por que rank deficiente da matriz de payoffs gera ineficiência. **Não vamos provar Brouwer nem Kakutani** — usamos como ferramentas. A prova de existência fica como sketch/roteiro; quem quer rigor consulta J-R §5.6.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 27/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Arrow-Debreu II — Existência, Radner, Mercados Incompletos
- **Objetivo de aprendizagem:** entender existência de equilíbrio AD como teorema (Brouwer/Kakutani); distinguir AD canônico de Radner sequencial; provar equivalência sob mercado completo (rank \(= |S|\)); diagnosticar ineficiência sob mercado incompleto (Hart 1975); identificar a equação de Euler intertemporal como caso particular do SDF da Aula 5.
- **Pré-requisitos assumidos:** Aulas 1–5 consolidadas. Pré-aula 6 concluída (J-R §5.5–§5.6 leitura formal principal, N&S §13.6 complemento panorâmico, 9 seções da plataforma + quiz pré-aula 10🟡).
- **Nível pedagógico:** **piso Jehle-Reny §5.6** (Existence in Pure Exchange Economies); J-R §5.5 revisado; N&S §13.6 panorâmico. Teto MWG §17.B/C/E + §19.E (mercados incompletos) opcional.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall Aula 5 (canônico) | 19:30 | 19:35 | **5 min** |
| 1 | Existência via Brouwer/Kakutani (sketch + propriedades de \(z\)) | 19:35 | 20:15 | **40 min** (inclui triagem rápida de reflexões nos 3 primeiros) |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | Radner sequencial + equivalência AD↔Radner (rank completo) | 20:25 | 21:05 | **40 min** |
| 3 | Mercados incompletos + Hart (1975) | 21:05 | 21:45 | **40 min** |
| P2 | Pausa | 21:45 | 21:55 | **10 min** |
| 4 | SDF + equação de Euler + boxes Brasil/Mundo (clímax pedagógico) | 21:55 | 22:25 | **30 min** |
| 5 | Síntese + ponte Aula 7 (externalidades + bens públicos) | 22:25 | 22:30 | **5 min** |

**Soma:** \(5 + 40 + 10 + 40 + 40 + 10 + 30 + 5 = 180\) min. ✓

> **Recalibração pós-pass-5 (2026-05-08).** Bloco 0 voltou ao **canônico de 5 min** das Aulas 1–5 (cumprimento + recall enxuto da equação fundamental do SDF da Aula 5). A triagem das reflexões "nebuloso" desce para os 3 primeiros minutos do Bloco 1 — sem checklist de "padrões esperados", o professor lê o que vier e diz "vai aparecer no Bloco X". **Bloco 4 (SDF + Euler + boxes Brasil/Mundo)** sobe de 20 para 30 min, ganhando os 10 min liberados pelo Bloco 0. Justificativa: SDF intertemporal + equity premium puzzle + Hansen-Jagannathan bounds + SELIC + VIX é o **clímax pedagógico** da aula (a ponte entre o aparelho AD e a macro-finanças aplicada) e não pode ser apressado. **Variáveis de ajuste:** se Bloco 1 derrapa em 5 min, Bloco 4 absorve cortando o lemma de Hansen-Jagannathan (vai para a pré-monitoria 4); se Bloco 1 fecha adiantado, Bloco 4 ganha ar para discussão socrática sobre equity premium puzzle. Bloco 0 nunca ultrapassa 5 min.

---

## Bloco 0 — Abertura + recall (5 min)

**19:30–19:35.**

### Roteiro

- **Cumprimento e check-in (1 min).** "Aula 6 — Arrow-Debreu II. Hoje fechamos a teoria geral do equilíbrio. Aulas 7–9 catalogam as falhas."
- **Recall da Aula 5 (4 min, no quadro):**
  > "Em uma frase: o que diz a equação fundamental do SDF?"

  Resposta esperada da sala:

  - "\(p^*_s/p^*_{s'} = \pi^i_s\, (v^i)'(x^{i*}_s) / [\pi^i_{s'}\, (v^i)'(x^{i*}_{s'})]\) — para todo agente \(i\)."

  Se a sala não devolve em 30s, **resgate ágil em 90s** com o cálculo numérico do seguro completo (agentes simétricos, \(\pi = (1/2, 1/2)\), \(\omega = (60, 100; 100, 60)\) resultado: \(p^*_1 = p^*_2\), todos consomem \((80, 80)\)). É o ponto-de-fé desta aula — sem ele, a equivalência AD↔Radner fica abstrata. **Não esticar.** A triagem das reflexões "nebuloso" foi desclocada para os 3 primeiros minutos do Bloco 1.

### Transição

> "Aula 5 assumiu existência. Hoje vamos provar — sketch, não linha-a-linha. Depois separamos AD canônico de Radner sequencial: o primeiro é teorético, o segundo é o que vemos em mercados financeiros reais. E aí surge a pergunta que define os Aulas 7–9: e quando faltam ativos? Falha do 1º TBE."

---

## Bloco 1 — Existência via Brouwer/Kakutani (40 min)

**19:35–20:15.**

### Triagem rápida das reflexões (3 min, no início do Bloco 1)

Antes de entrar em Brouwer/Kakutani, pegue **2–3 reflexões "nebuloso"** da pré-aula 6 e responda em 1 frase cada apontando o slide/bloco onde o tema será tratado. **Sem checklist de padrões esperados** (o professor lê o que vier; padrões frequentes a serem aproveitados se aparecerem: "por que Kakutani se Brouwer já existe?" → slide ~6; "como visualizar o span?" → Blocos 2 e 3; "fronteira do simplex?" → slide ~7; "mais ativos pode piorar?" → Bloco 3). **Não esticar.** Reflexões mais densas viram material de pré-monitoria 4.

### Objetivo

Cravar:

1. As 4 propriedades canônicas do excesso de demanda agregada \(z(p)\): continuidade, homogeneidade grau 0, lei de Walras, fronteira.
2. Brouwer (função contínua → ponto fixo) como ferramenta padrão.
3. Kakutani (correspondência semi-contínua superior, convexa-valorada → ponto fixo) como extensão necessária quando UMP não dá demanda única.
4. Sketch da prova de existência: aplicar Brouwer/Kakutani sobre o simplex de preços \(\Delta^{LS-1}\).

### Estrutura interna (40 min)

#### B1.a (4 min) — Pergunta-driver

> "Aula 5 assumiu \((p^*, x^*)\). Sob que hipóteses esse par existe? **A intuição:** preços ajustam até zerar excesso de demanda. **A formalização:** ponto fixo. Walras pensou em 1874; Arrow-Debreu (1954) provou."

Cite no quadro: Arrow-Debreu (1954, *Econometrica* 22(3): 265–290, [DOI 10.2307/1907353](https://doi.org/10.2307/1907353)). Não passe disso — o livro é histórico, mas a estética da prova é o que importa.

#### B1.b (10 min) — Excesso de demanda agregada e suas 4 propriedades

Quadro:

\[
z(p) = \sum_i (x^i(p, p \cdot \omega^i) - \omega^i) \in \mathbb{R}^{LS}.
\]

Liste **as 4 propriedades** uma a uma, com 1 frase de justificativa:

1. **Continuidade.** Berge + preferências contínuas + dotações positivas. *"Demanda muda continuamente com preço."*
2. **Homogeneidade grau 0.** \(z(\lambda p) = z(p)\). *"Restrição orçamentária só vê preços relativos."*
3. **Lei de Walras.** \(p \cdot z(p) = 0\). *"UMP individual + LNS exausta orçamento; agregação preserva."*
4. **Propriedade de fronteira.** \(p_l \to 0 \Rightarrow \|z\| \to \infty\). *"Bem livre estimula demanda infinita; monotonicidade."*

> **Pausa pedagógica de 1 min:** "Quem não viu propriedade de fronteira na Aula 4? Volte ao slide 4 da Aula 5 — vimos sketch. A novidade hoje é que **as 4 propriedades sobrevivem em \(\mathbb{R}^{LS}\)**, palavra-por-palavra."

#### B1.c (10 min) — Brouwer e Kakutani: enunciados e quando usar

**Brouwer (1911):**

> "Função contínua de compacto convexo nele mesmo tem ponto fixo."

Quadro: \(K \subset \mathbb{R}^n\) compacto convexo \(\neq \emptyset\), \(f: K \to K\) contínua \(\Rightarrow \exists x^*: f(x^*) = x^*\).

**Aplicação ao simplex de preços:**

\[
T_l(p) = \frac{p_l + \max(z_l(p), 0)}{1 + \sum_k \max(z_k(p), 0)}.
\]

**Verificação rápida:** (i) \(T\) mapeia \(\Delta\) em \(\Delta\) (somas vão a 1); (ii) \(T\) é contínua se \(z\) é contínua; (iii) ponto fixo \(p^*\) implica \(z_l(p^*) \le 0\) para todo \(l\). Combinado com Walras \(p^* \cdot z(p^*) = 0\) e \(p^* > 0\), conclui-se \(z(p^*) = 0\). \(\blacksquare\)

**Quando Brouwer falha — preferências não-estritas:** quando \(\succeq\) é apenas convexa (não estritamente), UMP pode ter conjunto de soluções com mais de um elemento. Demanda é correspondência \(\rightrightarrows\), não função. Brouwer não se aplica.

**Kakutani (1941):** mesma estrutura, com \(F: K \rightrightarrows K\) correspondência **convexa-valorada** e **semi-contínua superior**. Ponto fixo: \(x^* \in F(x^*)\).

> *"Pra mim, a melhor maneira de lembrar a diferença: Brouwer é Kakutani com correspondência singular. Kakutani é o ferramental que faz EG sobreviver com preferências apenas convexas (lineares incluídas)."*

#### B1.d (10 min) — Sketch da prova: existência em economia AD

Quadro, em 5 passos:

1. Defina \(\Delta = \{p \ge 0 : \sum_{(\ell, s)} p_{\ell, s} = 1\} \subset \mathbb{R}^{LS}\). Compacto, convexo, \(\neq \emptyset\). ✓
2. \(z(p)\) é contínua em \(\Delta_+ = \{p \in \Delta : p_{\ell, s} > 0 \forall (\ell, s)\}\) — interior de \(\Delta\). ✓
3. Aplica-se a fronteira: \(z\) explode quando \(p \to \partial \Delta\). Logo o ajuste \(T(p)\) volta para o interior. ✓
4. Brouwer (ou Kakutani, se demanda for correspondência): \(\exists p^* \in \Delta\) com \(p^* = T(p^*)\).
5. Walras + LNS + monotonicidade \(\Rightarrow\) \(z(p^*) = 0\), e por construção \(x^{i*}\) é ótimo individual em \(p^*\). \(\blacksquare\)

> *"Note que **não estamos provando** que existe equilíbrio único. Pode haver múltiplos. Aulas 8–9 vão revisitar quando equilíbrios múltiplos surgem (sinalização)."*

#### B1.e (6 min) — Hipóteses precisas + casos onde existência falha

**Hipóteses canônicas** (J-R §5.6, MWG §17.B):

- Preferências contínuas, estritamente monótonas, convexas.
- Dotações \(\omega^i \in \mathbb{R}^{LS}_{++}\) (estritamente positivas em todo bem).
- Conjunto de agentes finito.

**Onde falha:**

- Dotação zero em algum bem (\(\omega^i_\ell = 0\) para todo \(i\)) → fronteira pode falhar.
- Preferências não-monotônicas → Walras pode quebrar (LNS pode falhar).
- Bens públicos / externalidades → demanda agregada não bem-definida com individualismo (Aula 7).

> *"Aulas 7-9 vão diagnosticar exatamente onde existência ou eficiência falham. Hoje a história é: sob hipóteses canônicas, equilíbrio AD existe."*

### Saída do Bloco 1

Ao fechar 20:25, a sala tem que poder responder em uma palavra:

- "Qual ferramenta central?" → Brouwer (ou Kakutani).
- "Qual é a 4ª propriedade de \(z\)?" → fronteira.
- "Onde Kakutani entra?" → preferências apenas convexas.

Se 30%+ tropeça em alguma, **use os primeiros 5 min do Bloco 2 para revisitar e siga**.

### Transição (P1)

> "Pausa de 10 min. Quando voltarem, separamos teoria (AD canônico) da prática (Radner sequencial). E vocês vão entender por que o Black-Scholes-Merton vive nessa equivalência."

---

## Pausa 1 — 10 min (20:15–20:25)

Café. Banheiro. Não tente "explicar mais um ponto" — cansa a turma e detona o Bloco 2.

---

## Bloco 2 — Radner sequencial + equivalência AD↔Radner (40 min)

**20:25–21:05.**

### Objetivo

Cravar:

1. Setup formal de Radner: \(N\) ativos em \(t = 0\) + mercado spot em cada \(s\).
2. Equivalência AD↔Radner: vale **se e somente se** \(\text{rank}(A) = |S|\).
3. Cálculo numérico de portfolio replicador em \(|S| = 2\) com bond + ação.
4. Mensagem: AD é teoria; Radner é o que vemos em mercados financeiros reais.

### Estrutura interna (40 min)

#### B2.a (5 min) — Por que Radner

> "AD canônico cota \(LS\) preços ex-ante simultaneamente. **Não é o que vemos.** Mercados financeiros têm bonds, ações, opções, futuros — ativos cujos payoffs dependem dos estados. Radner (1972) modelou isso."

Cite: Radner (1972, *Econometrica* 40(2): 289–303, [DOI 10.2307/1909407](https://doi.org/10.2307/1909407)).

#### B2.b (10 min) — Setup formal de Radner

Quadro, organizando em 2 etapas temporais:

**Etapa \(t = 0\):**

- Agente \(i\) escolhe portfolio \(\theta^i \in \mathbb{R}^N\).
- Restrição: \(q \cdot \theta^i = 0\) (sem dotação inicial em \(t = 0\)).
- \(q \in \mathbb{R}^N\) é o vetor de preços dos ativos.

**Em cada estado \(s\):**

- Ativo \(j\) entrega payoff \(A_{sj}\).
- Renda do agente: \(m^{i,s} = \omega^i_s + (A\theta^i)_s\). [Aqui assumindo \(L = 1\) por simplicidade.]
- Mercado spot fecha: \(\sum_i x^{i,s} = \sum_i \omega^i_s\).

**Equilíbrio Radner:** \((q^*, \theta^{i*}, x^{i*})\) tal que (i) cada \((\theta^{i*}, x^{i*})\) maximiza utilidade do agente \(i\), (ii) mercado de ativos fecha (\(\sum_i \theta^{i*} = 0\)), (iii) mercado spot fecha em cada \(s\).

> *"Note: 'fechar mercado de ativos' significa que toda compra é igual a toda venda. \(\sum_i \theta^{i*}_j = 0\) para cada ativo \(j\). É contrato bilateral net-zero."*

#### B2.c (10 min) — Equivalência AD↔Radner sob rank completo

**Teorema** (Arrow 1953, Radner 1972):

> "Se \(\text{rank}(A) = |S|\) (mercado completo via portfolio), equilíbrio Radner = equilíbrio AD canônico (mesma alocação)."

**Sketch da prova** (no quadro, 2 direções):

*(\(\Rightarrow\) AD para Radner):* Dado equilíbrio AD com \(p^*_s\), defina \(q^*_j = \sum_s p^*_s\, A_{sj}\) (não-arbitragem). Defina \(\theta^{i*} = A^{-1}(x^{i*} - \omega^i)\) (existe porque \(\text{rank} = |S|\) implica \(A\) tem inversa quando \(N = |S|\); se \(N > |S|\), use pseudo-inversa).

Verifique: (i) \(q^* \cdot \theta^{i*} = \sum_j q^*_j (A^{-1}(x^{i*} - \omega^i))_j = \sum_s p^*_s\, (x^{i*}_s - \omega^i_s) = p^* \cdot x^{i*} - p^* \cdot \omega^i = 0\) (por Walras AD). ✓ Restrição em \(t=0\) satisfeita. (ii) Renda no estado \(s\): \(\omega^i_s + (A\theta^i)_s = \omega^i_s + (x^{i*}_s - \omega^i_s) = x^{i*}_s\). Logo agente consome \(x^{i*}_s\) — alocação AD. ✓

*(\(\Leftarrow\) Radner para AD):* Inverso. Dado equilíbrio Radner, identifique \(p^*_s = q^*\,(A^{-1})_{\cdot s}\) (preço-Arrow do estado \(s\)). Esse \(p^*\) é o vetor de preços AD canônico que sustenta a mesma alocação. \(\blacksquare\)

> **Eq-punch no slide:** *"AD canônico e Radner com mercado completo são o mesmo equilíbrio. A diferença é institucional, não econômica."*

#### B2.d (10 min) — Cálculo numérico: bond + ação em \(|S| = 2\)

Quadro:

\(|S| = 2\). Bond \(D^{\text{bond}} = (1, 1)\). Ação \(D^{\text{ação}} = (D_1, D_2)\) com \(D_1 \neq D_2\). Matriz:

\[
A = \begin{pmatrix} 1 & D_1 \\ 1 & D_2 \end{pmatrix}, \quad \det A = D_2 - D_1.
\]

\(\text{rank} = 2\) sse \(D_1 \neq D_2\). ✓ Mercado completo.

**Réplica de \(e_1 = (1, 0)\):** \(A\theta = e_1\):

- \(\theta_{\text{bond}} + D_1 \theta_{\text{ação}} = 1\)
- \(\theta_{\text{bond}} + D_2 \theta_{\text{ação}} = 0\)

Subtraindo: \((D_1 - D_2) \theta_{\text{ação}} = 1 \Rightarrow \theta_{\text{ação}} = -1/(D_2 - D_1) = 1/(D_1 - D_2)\).

\(\theta_{\text{bond}} = -D_1\, \theta_{\text{ação}} + 1 = D_2/(D_2 - D_1)\).

**Preço de Arrow:** \(p^*_1 = q^*_{\text{bond}} \theta_{\text{bond}} + q^*_{\text{ação}} \theta_{\text{ação}} = q^*_{\text{bond}}\, D_2/(D_2 - D_1) - q^*_{\text{ação}}/(D_2 - D_1)\).

> *"Esse é o **portfolio replicador**. Cada ação Arrow é replicável por combinação dos ativos disponíveis. Black-Scholes-Merton (1973) é a versão contínua: réplica dinâmica de uma opção via portfolio em ação + bond."*

#### B2.e (5 min) — Síntese do Bloco 2

Frase-chave: *"AD canônico é teorema; Radner é prática institucional. Sob mercado completo, são equivalentes."*

Tabela síntese (no quadro):

| Aspecto | AD canônico | Radner com rank completo |
|---|---|---|
| O que se cota em \(t=0\) | \(LS\) preços-Arrow | \(N \ge |S|\) preços de ativos |
| Implementação | Contratos contingentes | Portfolio + spot |
| Equilíbrio | \((p^*, x^*)\) | \((q^*, \theta^*, x^*)\) |
| Equivalência | — | sse rank\((A) = |S|\) |

### Saída do Bloco 2

A sala tem que poder responder:

- "Quando AD = Radner?" → \(\text{rank}(A) = |S|\).
- "Como replicar uma ação Arrow com bond + ação?" → resolver \(A\theta = e_s\).
- "O que muda se acrescenta uma opção?" → não muda nada se rank já é completo (redundância) — Lema do span é álgebra linear.

### Transição (Bloco 3)

> "E agora a pergunta-mãe das Aulas 7–9: **e se rank é deficiente?**"

---

## Bloco 3 — Mercados incompletos + Hart (1975) (40 min)

**21:05–21:45.**

### Objetivo

Cravar:

1. Definição precisa de mercado incompleto: \(\text{rank}(A) < |S|\).
2. Equilíbrio Radner com mercado incompleto **existe** (sob hipóteses padrão), é **constrained Pareto-eficiente** (no span), mas **genericamente Pareto-ineficiente** (Hart 1975).
3. Resultado contra-intuitivo: mais ativos pode piorar bem-estar (GP 1986).
4. Implicação política: regulação de produtos financeiros complexos não é nem trivialmente boa nem trivialmente ruim.

### Estrutura interna (40 min)

#### B3.a (5 min) — Definição e caso \(|S| = 3\) com 2 ativos

Quadro:

\(|S| = 3\). Bond \((1, 1, 1)\) + ação \((0, 1, 3)\). Matriz \(A \in \mathbb{R}^{3 \times 2}\). 

Span: \(\{(a, a+b, a+3b) : a, b \in \mathbb{R}\}\). Dimensão 2. \(\text{rank}(A) = 2 < 3\). **Incompleto.**

\(e_1 = (1, 0, 0)\): \(a = 1\), \(a + b = 0 \Rightarrow b = -1\), mas \(a + 3b = 1 - 3 = -2 \neq 0\). \(e_1 \notin \text{span}(A)\).

> *"Não há portfolio que pague 1 no estado 1 e 0 nos estados 2 e 3. Falta uma dimensão. Agente avesso não consegue se segurar contra o estado 1 isoladamente."*

#### B3.b (15 min) — Existência sob mercado incompleto + constrained PE

**Existência.** O equilíbrio Radner com mercado incompleto **existe** sob hipóteses padrão. A prova é elaboração da do Bloco 1 — Brouwer/Kakutani aplicado ao excesso de demanda de ativos. Ver J-R §5.6 (sketch para mercados completos) + Magill-Quinzii (*Theory of Incomplete Markets*, MIT Press 1996, Ch. 10) para versão com incompletude.

**Constrained Pareto-eficiência.** Defina alocação \(\bar x = (\bar x^1, \ldots, \bar x^I)\) **constrained-feasible** se existe \(\bar\theta = (\bar\theta^1, \ldots, \bar\theta^I)\) com \(\bar\theta\) somando a zero e \(\bar x^i = \omega^i + A\bar\theta^i\). 

> "Equilíbrio Radner com mercado incompleto é **constrained Pareto-eficiente:** dada a estrutura de ativos, não há realocação Pareto-superior **dentro** desse conjunto."

Prova: argumento padrão do 1º TBE, mas restrito ao conjunto constrained-feasible. Não detalhe linha-a-linha — cite J-R §5.5.3 / MWG §19.E. **3 min.**

**Pareto-ineficiência genérica (Hart 1975).** Aqui está a parte interessante.

> "**Em geral, o equilíbrio Radner com mercado incompleto é Pareto-inferior** à alocação que se obteria com mercado completo. Existe alocação \(\tilde x\) Pareto-superior, mas **fora do span dos ativos disponíveis**."

Cite: Hart (1975, *J. Economic Theory* 11(3): 418–443, [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9)).

**Por quê.** A prova de 1º TBE da Aula 4 (e Aula 5) usava: \(\tilde x \succ x^*\) viável \(\Rightarrow\) \(p^* \cdot \tilde x > p^* \cdot \omega \Rightarrow\) contradição. **Em mercado incompleto**, \(\tilde x\) tem que estar no span — e o conjunto dos \(\tilde x\) potenciais é menor. Pode existir \(\tilde x\) Pareto-superior **fora** do span, e o argumento da contradição não bloqueia. Equilíbrio é eficiente apenas dentro do conjunto restrito.

**Diagrama mental (no quadro):**

\[
\underbrace{\{\tilde x \succ x^*\}}_{\text{preferidas estritamente}} \cap \underbrace{\text{span}(A)}_{\text{implementáveis}} = \emptyset \quad ??? 
\]

A interseção pode ser não-vazia em sentido absoluto (se mercado fosse completo), mas **vazia restrita ao span**.

**5 min.**

#### B3.c (10 min) — Resultado de GP (1986): mais ativos pode piorar

> "Geanakoplos & Polemarchakis (1986, Cap. 3 de *Uncertainty, Information and Communication*, ed. Heller-Starr-Starrett, Cambridge UP) provaram: **introduzir um novo ativo financeiro pode piorar o bem-estar** de alguns agentes."

Intuição: cada agente otimiza dados os preços dos ativos. Quando entra um ativo novo, **todos os preços se reajustam**. O reajuste pode favorecer alguns agentes e prejudicar outros. Sem mercado completo (que estabilizaria via 2º TBE), não há garantia de Pareto-melhoria.

**Implicação política:** desregular criação de derivativos não é trivialmente bom. Regulação financeira tem fundamentação teórica em Hart 1975 + GP 1986. Aulas 8 (sel.adv) e 9 (sinalização) detalham mais fricções — mas a teoria base de incompletude já é forte.

> *"Por isso a teoria de assets pricing tem uma camada normativa: completar mercados pode ajudar — ou não. Análise tem que ser caso-a-caso."*

**Discussão socrática (3 min):**

> "Pergunta: 2008 financeira. CDOs (collateralized debt obligations) eram instrumentos novos. Argumento típico de mercado: 'mais ativos, mais hedging, mais bem-estar.' **Hart 1975 já dizia que isso não é automático.** Como vocês interpretam ex-post?"

Não tente resolver — só plante.

#### B3.d (10 min) — Box Brasil — Tesouro IPCA+ como ativo de hedge inflacionário

> "**Tesouro IPCA+** é um título do governo federal brasileiro que paga IPCA + juro real fixo. Em economia AD, IPCA+ é uma **ação Arrow para o estado de inflação alta** — paga mais quando o estado de natureza é 'inflação acima de X%'. Historicamente, antes de 2002, o mercado brasileiro tinha **ativo direto de hedge inflacionário ausente**: havia LFT (juros pós-fixado), pré-fixado, mas sem instrumento dedicado de hedge inflacionário pronto."

> "Lançamento do IPCA+ em 2002 foi **completamento parcial** do mercado financeiro brasileiro nessa dimensão. Mais agentes puderam diversificar inflação. Por Hart 1975: foi Pareto-melhorador? **Provavelmente sim**, no agregado — mas teoria GP 1986 alerta que pode haver perdedores (ex.: bancos que tinham exposição inflacionária implícita). Política de Tesouro Nacional dá razão prática a esses argumentos."

Cite ordens de grandeza qualitativas: Tesouro Direto IPCA+ tem hoje \(\sim\) milhões de investidores PF + bancos institucionais; estoque na ordem de centenas de bilhões de reais. **Não cite número exato — Tesouro Nacional publica relatórios mensais.**

#### B3.e (depois — não cabe explicitamente, fica no fade-out) 

(Reserva: se Bloco 3 sobrar 5 min, comente sobre Lehman Brothers como exemplo de "mercado de CDOs incompleto + correlação não modelada explodiu". Caso contrário, vai para a pré-monitoria 4.)

### Saída do Bloco 3

A sala tem que poder responder:

- "Equilíbrio existe sob mercado incompleto?" → Sim.
- "É Pareto-eficiente?" → Constrained sim, em geral não absolutamente.
- "Mais ativos sempre melhora?" → Não (GP 1986).

### Transição (P2)

> "Pausa de 10 min. Quando voltarem, fechamos com a equação que conecta Aula 5 à macroeconomia aplicada: SDF como Euler intertemporal. Boxes Brasil/Mundo concretos."

---

## Pausa 2 — 10 min (21:45–21:55)

---

## Bloco 4 — SDF + equação de Euler + boxes Brasil/Mundo (30 min)

**21:55–22:25.**

### Objetivo

Identificar a equação fundamental do SDF como caso particular intertemporal (equação de Euler). Conectar com SELIC (Brasil) e VIX (Mundo). Citar (com sketch) Lucas 1978, Hansen-Jagannathan 1991 e Mehra-Prescott 1985 (equity premium puzzle).

### Estrutura interna (30 min)

#### B4.a (10 min) — Especialização: \(s = (t, \omega)\) e Euler

Quadro:

\[
\frac{p^*_s}{p^*_{s'}} = \frac{\pi^i_s\, (v^i)'(x^{i*}_s)}{\pi^i_{s'}\, (v^i)'(x^{i*}_{s'})} \quad \forall i. \quad \text{(Aula 5)}
\]

**Especialização para tempo + risco:** \(s = (t, \omega)\). Em \(|\Omega| = 1\) (sem incerteza), só \(t\) varia. Caso \(s = t, s' = t+1\):

\[
\frac{p^*_t}{p^*_{t+1}} = \frac{u'(c_t)}{\beta\, u'(c_{t+1})}.
\]

Identifique \(p^*_t/p^*_{t+1} \equiv R\) (taxa bruta de juros) e \(\beta\) (peso temporal subjetivo absorvido em \(\pi_{t+1}/\pi_t\)). Reescrevendo:

\[
\boxed{\;u'(c_t) = \beta\, R\, u'(c_{t+1}).\;}
\]

**Esta é a equação de Euler.** Macroeconomia inteira (RBC, NK, modelos C-CAPM) parte daqui.

**Generalização para \(|\Omega| > 1\)** (Lucas 1978):

\[
1 = E^\pi_t [m_{t+1}\, R_{t+1}], \quad m_{t+1} = \beta\, \frac{u'(c_{t+1})}{u'(c_t)}.
\]

\(m_{t+1}\) é o **stochastic discount factor**. Cita Lucas (1978, Econometrica 46(6): 1429–1445, [DOI 10.2307/1913837](https://doi.org/10.2307/1913837)) e Hansen-Jagannathan (1991, J. Political Economy 99(2): 225–262, [DOI 10.1086/261749](https://doi.org/10.1086/261749)).

> *"**Não vamos derivar** essa equação no quadro. Citamos como porta de entrada para finanças. Pré-monitoria 4 com Alberto detalha aplicações."*

#### B4.b (8 min) — Box Brasil — SELIC como aproximação de \(1/E[m]\)

> "**SELIC nominal** \(\approx 1/E[m_{t+1}] \cdot (1 + \pi^e)\), onde \(\pi^e\) é expectativa de inflação. Em estado de stress (recessão), \(c_{t+1}\) cai, \(u'(c_{t+1})\) sobe, \(E[m_{t+1}]\) sobe, **SELIC cai** — política expansionista. Em boom, inverso."

> "BCB pode ser visto como agente que **escolhe** SELIC para mover \(E[m_{t+1}]\) na direção de equilibrar inflação e atividade. Função de reação tipo Taylor (1993). Mas isso é Aula 9 ou monitoria — hoje o ponto é que **SELIC é objeto microeconomicamente fundamentado** via SDF."

> "**Implicação operacional:** o COPOM, ao fixar SELIC, está implicitamente afirmando uma trajetória esperada de \(\beta R\). Quando o COPOM sobe SELIC, está cotando \(\beta R > 1\) — agentes preferem postergar consumo (suavização). Quando corta, \(\beta R < 1\) — incentivo para consumir hoje. **A política monetária opera via Euler.** Aula 9 pode formalizar a função de reação se houver tempo."

#### B4.c (8 min) — Box Mundo — VIX como preço de Arrow do estado de stress

> "**VIX** mede volatilidade implícita de opções S&P 500 a 30 dias. Em equilíbrio AD, sob aversão ao risco, \(p^*_{\text{stress}}\) é desproporcionalmente alto comparado a \(\pi_{\text{stress}}\) — agentes pagam prêmio para se proteger. **VIX é proxy desse prêmio.**"

> "VIX > 30 sinaliza \(\pi_s\, m_s\) elevado para estado de stress; tradução prática: opções de venda (puts) caras, prêmios de risco em ações elevados, fluxo para tesouros."

> "**VIX como termômetro do SDF.** Em quadrante normal (\(VIX \in [12, 20]\)), \(p^*_s\) acompanha \(\pi_s\) próximo da neutralidade ao risco. Em estresse (VIX > 30, e.g., março 2020 chegou a 82, fim 2008 chegou a 80), \(p^*_{\text{stress}}/\pi_{\text{stress}} \gg 1\) — aversão ao risco dispara. **Brasil:** IVol-BR é o equivalente local; em 2020, IVol-BR atingiu 50+. Esses números são empíricos; calibrar SDF que os reproduza é o desafio macro-finanças."

#### B4.d (4 min) — Hansen-Jagannathan bounds + equity premium puzzle

> "**Hansen-Jagannathan (1991, J. Political Economy 99(2): 225–262)** estabeleceram limites empíricos para o SDF: \(\sigma(m)/E(m) \ge |E(R^e)|/\sigma(R^e)\), onde \(R^e\) é excesso de retorno. Para o S&P 500 histórico: \(E(R^e) \approx 6\%\), \(\sigma(R^e) \approx 16\%\). Logo \(\sigma(m)/E(m) \ge 0{,}375\) — SDF tem que ser **muito volátil**."

> "**Equity premium puzzle (Mehra-Prescott 1985, JME 15(2): 145–161).** SDF de CRRA padrão com \(\gamma \le 10\) **não consegue** gerar volatilidade dessa ordem. Soluções propostas: aversão habit (Campbell-Cochrane 1999), risco de desastres (Barro 2006, Rietz 1988), preferências de Epstein-Zin (1989). **A teoria do SDF está empiricamente subdeterminada** — espaço aberto de pesquisa."

> *"Pergunta para a pré-monitoria 4: VIX é estado de natureza objetivo ou expectativa subjetiva agregada? Resposta curta: ambos misturados — derivativos precificam expectativas + aversão. Aula 8 (info assimétrica) detalha quando expectativas heterogêneas geram volatilidade endógena. **Equity premium puzzle pertence ao toolkit que vocês saem com**."*

### Saída do Bloco 4

A sala tem que poder responder:

- "Equação de Euler é caso particular do quê?" → Equação fundamental do SDF, Aula 5.
- "Por que SELIC e VIX são objetos relevantes?" → Conectam o aparelho AD com observações reais de mercado.
- "Por que CRRA padrão falha empiricamente?" → Equity premium puzzle (Mehra-Prescott 1985); SDF tem que ser mais volátil que CRRA com \(\gamma\) razoável permite.

---

## Bloco 5 — Síntese + ponte Aula 7 (5 min)

**22:25–22:30.**

### Roteiro

#### B5.a (3 min) — Síntese da Aula 6

Quadro com tabela síntese:

| Aspecto | Resultado |
|---|---|
| Existência (mercado completo) | Brouwer/Kakutani sobre simplex |
| AD canônico ↔ Radner | Equivalente sse rank\((A) = |S|\) |
| Mercado incompleto | Equilíbrio existe; constrained PE; genericamente Pareto-ineficiente (Hart 1975) |
| Mais ativos sempre melhora? | Não (GP 1986) |
| SDF intertemporal | Equação de Euler; SELIC e VIX como aplicações |

> *"Aula 6 fechou o EG. Existência, equivalência, incompletude. Tudo o que vem nas Aulas 7–9 é falha específica: externalidade (Aula 7), informação assimétrica (Aulas 8–9). Mas o aparelho técnico — \(\mathbb{R}^{LS}\), 1º TBE, ponto fixo — vocês têm na ponta da língua."*

#### B5.b (2 min) — Ponte Aula 7 (externalidades + bens públicos)

> "Aula 7 (3 de junho): **externalidades e bens públicos**. Pergunta-driver: mercado completo + competitivo + LNS implica Pareto. **Mas o que se mercado não consegue precificar todas as interações?** Pigou (1932), Coase (1960), Samuelson (1954) entram. **Pré-monitoria 4** com Alberto, sábado 13/06, cobre Aulas 6 e 7 juntas."

> *"Boa noite. Sábado 13/06 a Pré-M4 (cobre Aulas 6 e 7) abre. Vejo todos na quarta 03/06 com a Aula 7."*

---

## Apêndices operacionais

### A. Material para o quadro

- Slide 1 (Bloco 1): "Excesso de demanda agregada \(z(p)\) — 4 propriedades."
- Slide 2 (Bloco 1): Brouwer (enunciado).
- Slide 3 (Bloco 1): Mapa \(T(p) = (p_l + \max(z_l, 0))/\ldots\).
- Slide 4 (Bloco 1): Kakutani vs. Brouwer — tabela comparativa.
- Slide 5 (Bloco 2): Setup de Radner sequencial — duas etapas temporais.
- Slide 6 (Bloco 2): Equivalência AD↔Radner sob rank completo (eq-key).
- Slide 7 (Bloco 2): Réplica numérica de \(e_1\) com bond + ação.
- Slide 8 (Bloco 3): Span \(\mathcal{M}\) em \(|S|=3\) com 2 ativos — diagrama de plano em \(\mathbb{R}^3\).
- Slide 9 (Bloco 3): Hart 1975 + GP 1986 — eq-punch.
- Slide 10 (Bloco 4): Equação de Euler + SDF.
- Slide 11 (Bloco 4): Boxes SELIC e VIX.
- Slide 12 (Bloco 5): Tabela síntese.

### B. Variáveis de ajuste em tempo real

| Sintoma | Ajuste |
|---|---|
| Sala fluindo, Bloco 1 acaba em 30 min | Usa 10 min extra no Bloco 2 (Radner detalhado com mais conta numérica) ou no Bloco 3 (Hart com mais discussão) |
| Sala travada no excesso de demanda (Bloco 1) | Encolhe Bloco 4 em 5 min; usa pra repetir o exemplo \(|S|=2\) com bond+ação no Bloco 1.d ainda |
| Pergunta sobre Black-Scholes formal | "É a versão contínua de span-replication do Bloco 2.d. Macro/Finanças formal cobre. Aula 6 é a porta de entrada — não a derivação." |
| Pergunta sobre demonstração rigorosa de existência | "J-R §5.6 + MWG §17.B/C. Quem quiser, leia depois e tragam para a pré-monitoria 4." |
| Pergunta sobre ambiguity (Knightian uncertainty, Bewley 1986) | "Saímos do escopo. Modelos com ambiguity tratam \(\pi^i\) não-aditivas. Cite Hansen-Sargent (2008, *Robustness*) e siga." |

### C. Telemetria pós-aula (admin dashboard)

Após a aula, conferir em `admin.html`:

- **Confidence ratings post-Bloco 1** (existência via ponto fixo): se P50 < 3 (de 5), Brouwer/Kakutani não cravou — ajustar pré-monitoria 4 com Alberto.
- **Quiz pós-aula 6 — Q4 (equivalência)**: se acerto 1ª < 50%, equivalência AD↔Radner foi rápida demais; revisitar slide 5/6 do Bloco 2 na pré-monitoria.
- **Quiz pós-aula 6 — Q9 ou Q10 (Hart 1975)**: se acerto 1ª < 40%, Hart precisa de mais tempo na pré-M4.
- **Reflexão "nebuloso"**: se >30% mencionam "Kakutani" ou "ponto fixo", Bloco 1 foi denso demais — revisitar com Alberto.

---

## Anti-padrões (Referee 2)

- ❌ **Não derivar Brouwer nem Kakutani.** Cita; não prove. Use como ferramentas.
- ❌ **Não fazer prova de existência linha-a-linha.** Sketch + roteiro. Quem quer, J-R §5.6.
- ❌ **Não derivar Black-Scholes formal.** Cita Bloco 2.d como caso particular contínuo.
- ❌ **Não pedir álgebra linear desnecessária.** Mantenha exemplos com \(|S| \le 3\) e matrizes pequenas. Em sala, conta no quadro com 2x2 ou 3x2.
- ❌ **Não introduzir ambiguity (Bewley 1986, Hansen-Sargent 2008).** Fora do escopo. Bata-volta de 30s no máximo.
- ❌ **Não citar artigos sem confirmação de DOI.** DOIs validados em 2026-05-08: Arrow-Debreu (1954) [10.2307/1907353](https://doi.org/10.2307/1907353), Radner (1972) [10.2307/1909407](https://doi.org/10.2307/1909407), Hart (1975) [10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9), Lucas (1978) [10.2307/1913837](https://doi.org/10.2307/1913837), Mehra-Prescott (1985) [10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3), Hansen-Jagannathan (1991) [10.1086/261749](https://doi.org/10.1086/261749). Geanakoplos-Polemarchakis (1986) é capítulo de livro (Heller-Starr-Starrett, *Uncertainty, Information, and Communication*, Cambridge UP) — sem DOI canônico; cite por veículo. Harrison-Kreps (1979) não consta da lista: era citado na Q10 antiga do quiz pós (TFAP/Stiemke); pós-substituição da Q10 (M2, 2026-05-08), não é mais invocado afirmativamente em nenhum artefato da Aula 6.
- ❌ **Não fechar a aula com "isso é a teoria final do mercado".** Fecha com **questão**: e quando preferências/produção dependem de outros agentes? (Aula 7 — externalidades e bens públicos.)
