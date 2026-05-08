# Aula 7 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 03/06/2026. Tema: **Externalidades e Bens Públicos** — diagnóstico (falha do 1º TBE), Pigou (1920) + Coase (1960), Samuelson (1954), Lindahl (1919), VCG (Vickrey 1961, Clarke 1971, Groves 1973), Ostrom (1990).

> **Disclaimer pedagógico explícito.** Esta é a aula que **abre a segunda das três falhas clássicas do EG**. Aula 5 montou o canônico; Aula 6 introduziu incompletude (1ª falha); aqui catalogamos externalidades e bens públicos não-precificáveis (2ª falha); Aula 8 vai introduzir informação assimétrica (3ª). Mantenha o fio cada vez que abrir um exemplo: **qual mecanismo específico do 1º TBE deixou de valer?**

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 03/06/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Externalidades e Bens Públicos — Pigou, Coase, Samuelson, Lindahl, VCG
- **Objetivo de aprendizagem:** diagnosticar externalidade como ação fora do sistema de preços; derivar Pigou e Coase como soluções clássicas; provar Samuelson via Lagrangiano; reconhecer o problema do free-rider; introduzir Lindahl e VCG como mecanismos.
- **Pré-requisitos assumidos:** Aulas 1–6 consolidadas; \(\text{TMS}\), \(\text{TMT}\), Lagrangiano com restrições, 1º TBE estendido. Pré-aula 7 concluída (ZaE Cap. 20 + N&S Cap. 19; 9 seções da plataforma + quiz pré-aula 10🟡).
- **Nível pedagógico:** **piso N&S 12e Cap. 19** (Externalities and Public Goods); ZaE Cap. 20 como leitura principal; MWG §11.B–§11.D citado em 🔴 cirurgicamente.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + ponte Aula 6 | 19:30 | 19:35 | **5 min** |
| 1 | Externalidades: diagnóstico + tipologia + Pigou | 19:35 | 20:15 | **40 min** (inclui triagem das reflexões nos 3 primeiros) |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | Coase + cap-and-trade + Box Brasil/Mundo | 20:25 | 21:00 | **35 min** |
| 3 | Bens públicos: Samuelson + free-rider | 21:00 | 21:45 | **45 min** |
| P2 | Pausa | 21:45 | 21:55 | **10 min** |
| 4 | Mecanismos: Lindahl + VCG + Ostrom | 21:55 | 22:25 | **30 min** |
| 5 | Síntese + ponte Aula 8 (sel.adv.) | 22:25 | 22:30 | **5 min** |

**Soma:** \(5 + 40 + 10 + 35 + 45 + 10 + 30 + 5 = 180\) min. ✓

> **Calibração de timing pós-padrão Aulas 5–6.** Bloco 3 (bens públicos + Samuelson) tem **45 min** — é o bloco mais técnico (Lagrangiano + condição soma vertical) e merece tempo. Bloco 1 mantém os **40 min** canônicos (diagnóstico + tipologia + Pigou — três coisas em sequência). Bloco 4 fica em **30 min**, igual à Aula 6 — Lindahl + VCG + Ostrom é apresentação, não derivação detalhada. **Variáveis de ajuste:** se Bloco 1 derrapa em 5 min, Bloco 3 absorve cortando o teorema BBV (Bergstrom-Blume-Varian); se Bloco 1 fecha adiantado, Bloco 4 ganha ar para discussão socrática sobre Ostrom + commons brasileiros (pesca, pasto, recursos hídricos).

---

## Bloco 0 — Abertura + recall + ponte Aula 6 (5 min)

**19:30–19:35.**

### Roteiro

- **Cumprimento e check-in (1 min).** "Aula 7 — Externalidades e Bens Públicos. Hoje começamos o **catálogo de falhas** do EG. Aula 6 abriu com incompletude; hoje, segunda falha; Aula 8, terceira (info assimétrica)."
- **Recall da Aula 6 + ponte (4 min, no quadro):**
  > "Em uma frase: o que o teorema de Hart 1975 nos disse?"

  Resposta esperada da sala:

  - "Equilíbrio em mercado incompleto existe e é constrained Pareto-eficiente, mas genericamente Pareto-ineficiente em sentido absoluto."

  Se a sala não devolve em 30s, **resgate ágil em 60s**: lembre que o argumento do 1º TBE (Aula 5) falha porque \(\tilde x\) Pareto-superior pode estar fora do span dos ativos disponíveis. **Não esticar.**

### Transição

> "Aula 6 quebrou o 1º TBE por **escopo institucional** — faltavam ativos. Hoje quebramos por **escopo da interação** — faltam preços para externalidades. A tipologia das falhas é cumulativa, não exclusiva: economia real tem todas. Catalogamos uma de cada vez para entender mecanismo."

---

## Bloco 1 — Externalidades: diagnóstico + tipologia + Pigou (40 min)

**19:35–20:15.**

### Triagem rápida das reflexões (3 min, no início do Bloco 1)

Antes de entrar em diagnóstico, pegue **2–3 reflexões "nebuloso"** da pré-aula 7 e responda em 1 frase cada apontando o slide/bloco onde o tema será tratado. Padrões frequentes a aproveitar se aparecerem: "por que \(t^* = \text{MEC}(q^*)\)?" → slide ~5; "Coase com 1.000 vizinhos?" → Bloco 2; "soma vertical de demandas?" → Bloco 3; "VCG escapa Gibbard-Satterthwaite?" → Bloco 4. **Não esticar.** Reflexões mais densas viram material de pré-monitoria 4.

### Objetivo

Cravar:

1. Definição operacional de externalidade: ação de \(i\) entra em \(u^j\) ou \(f^j\) **fora dos preços**.
2. Tipologia: tecnológica vs. pecuniária; positiva vs. negativa; direta (Coase-aplicável) vs. difusa.
3. Pigou: \(t^* = \text{MEC}(q^*)\) — taxa internaliza no nível ótimo, não no privado.
4. Box Brasil: CBio como Pigou descentralizado.

### Estrutura interna (40 min)

#### B1.a (5 min) — Pergunta-driver + diagnóstico

> "Aula 5: 1º TBE valia em economia sem externalidades. Hoje: e quando a ação de \(i\) afeta \(j\) sem passar pelo mercado?"

Quadro:

\[
u^i(x^i) \quad \to \quad u^i(x^i, x^k), \quad k \neq i.
\]

**Por que isso quebra o 1º TBE.** Recapitule rápido: o argumento de contradição "\(\tilde x \succ x^* \text{ viável} \Rightarrow p^* \cdot \tilde x > p^* \cdot \omega \Rightarrow \text{contradição}\)" usava que **toda** interação passa por \(p^*\). Com externalidade, há interação fora de \(p^*\) — argumento não chega ao fim.

> *"Aula 6 quebrava por dimensão (faltavam ativos no span). Hoje quebra por argumento (faltam preços para a interação)."*

#### B1.b (8 min) — Tipologia (vai aparecer em prova)

Quadro com tabela:

| Eixo | Categorias | Exemplo canônico |
|---|---|---|
| Sinal | Positiva / Negativa | Vacinação / Poluição |
| Origem | Tecnológica / Pecuniária | Fumaça / Subida de preço |
| Intensidade | Direta / Difusa | Vizinho / Mudança climática |

**Ponto-chave operacional:** **externalidade pecuniária NÃO causa ineficiência no 1º TBE.**

> "Quando entra um competidor e o preço sobe, agentes existentes 'perdem' — mas via mercado. Aula 5 já contempla. **Apenas tecnológica + via consumo fora-de-preço quebram.**"

Pause de 30 segundos para a sala absorver.

#### B1.c (12 min) — Pigou: derivação completa em modelo parcial

Quadro, em ordem:

1. **Setup.** Demanda inversa \(P(q) = a - bq\). \(\text{MC}_p(q) = c + dq\). \(\text{MEC}(q) = eq\) (linear, \(e > 0\)).
2. **Equilíbrio privado:** \(P(q^p) = \text{MC}_p(q^p) \Rightarrow a - bq^p = c + dq^p \Rightarrow q^p = (a-c)/(b+d)\).
3. **Ótimo social:** \(P(q^*) = \text{MC}_s(q^*) = \text{MC}_p(q^*) + \text{MEC}(q^*) = c + dq^* + eq^* = c + (d+e)q^* \Rightarrow q^* = (a-c)/(b+d+e)\).
4. **Comparação:** \(q^* < q^p\) (denominador maior) — **produção privada é excessiva.**
5. **Pigou:** imponha imposto \(t\) por unidade. Produtor escolhe \(q\) tal que \(P(q) = \text{MC}_p(q) + t\). Para coincidir com \(q^*\), \(t^* = \text{MEC}(q^*) = e q^*\).

**Cuidado pedagógico (eq-punch):** \(t^* = \text{MEC}(q^*)\), **não** \(\text{MEC}(q^p)\). Avaliar **no ótimo**, não no equilíbrio privado.

> **Por quê.** Pense no produtor com imposto \(t\): ele escolhe \(q\) onde \(P = \text{MC}_p + t\). Para isso ser igual ao ótimo social (onde \(P = \text{MC}_p + \text{MEC}(q^*)\)), o \(t\) tem que ser \(\text{MEC}(q^*)\), não \(\text{MEC}\) avaliada em outro ponto. **A exigência informacional é alta: governo precisa saber a MEC e onde fica \(q^*\).**

**Exemplo numérico (no quadro, 4 min).** \(P = 24 - q\), \(\text{MC}_p = 6 + q\), \(\text{MEC} = q\). Privado: \(24 - q = 6 + q \Rightarrow q^p = 9\). Social: \(24 - q = 6 + q + q = 6 + 2q \Rightarrow q^* = 6\). Imposto: \(t^* = \text{MEC}(6) = 6\). Verificação: produtor com \(t=6\) escolhe \(24 - q = 6 + q + 6 \Rightarrow q = 6\) ✓. Triângulo de Harberger: \((q^p - q^*)\) com altura média \([\text{MC}_s - P]\) entre \(q^*\) e \(q^p\) — área \(= \frac{1}{2}(9-6)(\text{MEC}(9) - 0)/2 = ?\) — fazer no quadro como exercício (pegada gráfica).

#### B1.d (12 min) — Box Brasil (CBio) + Box Mundo (EU ETS) — Pigou descentralizado

**Box Brasil 🇧🇷 (6 min):** RenovaBio (Lei 13.576/2017) institui **Créditos de Descarbonização (CBio)**. Distribuidoras de combustíveis fósseis cumprem meta de descarbonização comprando CBios de produtores certificados de etanol/biodiesel.

> "Em equilíbrio competitivo, **\(p_{\text{CBio}}\) tem o papel de \(t^*\) Pigou descentralizado** — só que o canal é mercado de permissões, não imposto direto. Equivalência teórica sob hipóteses padrão; diferenças operacionais (Tesouro vs. certificadora) são institucionais."

**Box Mundo 🌍 (6 min):** EU ETS Phase 4 (2021–2030) com cap declinante; preço da tonelada de CO\(_2\) entre €25 e €100 nos últimos anos. **Mesmo mecanismo do CBio, em escala continental.**

> "Cap-and-trade é a versão descentralizada do Pigou: governo escolhe **quantidade** ótima (cap), mercado encontra **preço** que iguala custo marginal de mitigação entre firmas. Resultado: meta agregada cumprida ao **custo total mínimo** — exatamente o critério de Pareto sob restrição."

#### B1.e (3 min) — Hipóteses precisas + onde Pigou falha

**Hipóteses canônicas** (ZaE §20.4, N&S §19.3):

- Externalidade unidirecional (1 fonte, vários afetados, ou simétrica).
- Mensurabilidade da MEC.
- Capacidade institucional para arrecadar imposto / monitorar permissões.

**Onde falha:**

- MEC desconhecida (informação) → estimar empiricamente.
- Externalidade transfronteiriça (clima global) → quem cobra?
- Compliance custosa → distorção residual.

> *"Aulas 8–9 vão introduzir info assimétrica como camada adicional: o agente conhece sua MEC, planejador não. Mecanismos de design (Vickrey, VCG) entram para revelar."*

### Saída do Bloco 1

A sala tem que poder responder em uma palavra:

- "O que quebra o 1º TBE em externalidade?" → ação fora dos preços.
- "Em que ponto Pigou avalia MEC?" → no ótimo \(q^*\).
- "Tecnológica × pecuniária?" → só tecnológica gera ineficiência no 1º TBE.

Se 30%+ tropeça, **use os primeiros 5 min do Bloco 2 para revisitar e siga**.

### Transição (P1)

> "Pausa de 10 min. Quando voltarem: e se governo não cobrar imposto? Coase 1960 — barganha privada sob direitos."

---

## Pausa 1 — 10 min (20:15–20:25)

Café. Banheiro. Não tente "explicar mais um ponto" — cansa a turma e detona o Bloco 2.

---

## Bloco 2 — Coase + cap-and-trade + Boxes (35 min)

**20:25–21:00.**

### Objetivo

Cravar:

1. Coase (1960) com 3 hipóteses precisas.
2. Independência da atribuição inicial (sob hipóteses).
3. Onde Coase falha na prática (custos de transação, direitos mal-definidos, free-rider em barganha).
4. Cap-and-trade como Pigou descentralizado via mercado.

### Estrutura interna (35 min)

#### B2.a (5 min) — Coase: enunciado e intuição

Quadro:

> **Teorema (Coase 1960, versão informal).** Sob (i) direitos bem-definidos, (ii) custos de transação zero, (iii) sem efeito-renda relevante: barganha privada gera alocação **Pareto-eficiente**, **independente de quem detém o direito inicialmente**.

Cite: Coase, R. H. (1960). "The Problem of Social Cost." *Journal of Law and Economics* 3, 1–44, [DOI 10.1086/466560](https://doi.org/10.1086/466560).

#### B2.b (10 min) — Mecanismo: 1 firma + 1 morador

Quadro:

**Setup:** Fábrica A escolhe \(q_A\) (output, gera fumaça \(\propto q_A\)). \(\text{MC}^A(q_A) = q_A\), \(P^A = 20\) (constante por simplicidade). MEC sobre B (morador): \(\text{MEC}(q_A) = 5\) (constante, dano linear).

**Sem barganha (privado):** A escolhe \(20 = q_A \Rightarrow q^p_A = 20\).

**Ótimo social:** \(20 = q_A + 5 \Rightarrow q^*_A = 15\).

**Caso 1: B tem direito ao ar limpo.** A precisa pagar B para tolerar emissões. B aceita pagamento \(\ge \text{MEC} \cdot q_A = 5 q_A\). A está disposto a pagar \(\le \text{lucro adicional} = (20 - q_A)\) por unidade no margem. Equilíbrio onde \(20 - q_A = 5 \Rightarrow q_A = 15 = q^*_A\) ✓.

**Caso 2: A tem direito a poluir.** B paga A para reduzir. A aceita \(\ge \text{lucro perdido} = (20 - q_A)\) por unidade. B paga \(\le \text{dano evitado} = 5\) por unidade. Equilíbrio onde \(20 - q_A = 5 \Rightarrow q_A = 15\) ✓ (mesmo \(q^*\)).

> **Eq-punch:** *"A alocação eficiente é a mesma; o que muda é **quem paga quem**. Coase: o argumento de eficiência funciona sob qualquer atribuição de direitos, contanto que sejam claros e a barganha seja sem fricção."*

#### B2.c (8 min) — Onde Coase falha na prática

Quadro com tabela:

| Falha | Caso típico |
|---|---|
| Custos de transação positivos | 1.000 vizinhos coordenando vs. 1 fábrica |
| Direitos mal-definidos | Quem é dono do ar? Da bacia? Do clima? |
| Free-rider na barganha | Cada vizinho ganha pouco e paga custo individual de participar |
| Efeito-renda relevante | Transferência grande muda decisões |

**Implicação política:** Coase não é receita universal. É **teorema de eficiência condicional**, não política.

> *"A pergunta empírica importante: em que situações reais os custos de transação são baixos o suficiente? Resposta canônica: poucos agentes + direitos claros + ativo bem-definido."*

#### B2.d (10 min) — Cap-and-trade como Coase + Pigou aplicado

> "EU ETS, Acid Rain Program (US 1990), CBio (Brasil 2017). Mecanismo único: governo define **direito de emitir** (Coase: bem-definido); distribui inicialmente; mercado encontra alocação eficiente entre firmas com diferentes custos de mitigação."

Quadro:

\[
\min \sum_j C_j(\text{redução}_j) \quad \text{s.a.} \quad \sum_j \text{redução}_j = \text{cap}.
\]

CPO: \(\text{MC}_j = \lambda\) para todo \(j\) — todas as firmas igualam custo marginal de mitigação ao **preço da permissão** \(\lambda\). Resultado: meta agregada cumprida ao custo mínimo. Pigou descentralizado.

**Box Mundo aprofundado:** **Acid Rain Program (US 1990 Clean Air Act)** foi pioneiro em cap-and-trade aplicado a SO\(_2\) — reduziu emissões em 50% até 2007 a custo cerca de 4× menor que estimado pelas próprias agências regulatórias. Schmalensee-Stavins (2013, J. Econ Perspectives) documentaram. **Provou empiricamente o argumento Pigou-Coase descentralizado.**

> *"Para a Aula 7, o ponto é: **mecanismos de mercado podem ser desenhados para internalizar externalidades** sob hipóteses específicas. EU ETS, Acid Rain Program, CBio — todos esses são primos institucionais."*

#### B2.e (2 min) — Síntese do Bloco 2

Frase-chave: *"Pigou impõe taxa; Coase deixa barganhar; cap-and-trade descentraliza ambos via permissões."*

Tabela síntese (no quadro):

| Solução | Quem age | Quando funciona |
|---|---|---|
| Pigou | Governo (taxa) | MEC mensurável + capacidade fiscal |
| Coase | Agentes (barganha) | Poucos agentes + direitos claros + custos baixos |
| Cap-and-trade | Governo (cap) + mercado (preço) | Externalidade quantificável + monitoramento viável |

### Saída do Bloco 2

A sala tem que poder responder:

- "Coase eficiente sob 3 hipóteses?" → direitos definidos, custos zero, sem efeito-renda.
- "Em que casos Coase falha?" → muitos agentes, direitos vagos, custos altos.
- "Cap-and-trade é Pigou ou Coase?" → ambos: governo define cap (Pigou-tipo); mercado descentraliza (Coase-tipo).

### Transição (Bloco 3)

> "Externalidades introduziu a primeira variação. Bens públicos é a segunda — não-rivalidade obriga a repensar a regra de eficiência."

---

## Bloco 3 — Bens Públicos: Samuelson + Free-rider (45 min)

**21:00–21:45.**

### Objetivo

Cravar:

1. Definição: rival × excludente. Bem público puro = não-rival + não-excludente.
2. Condição de Samuelson \(\sum \text{TMS}^i = \text{TMT}\) — derivar via Lagrangiano no quadro.
3. Free-rider: provisão voluntária Nash entrega \(G^N < G^*\). Sub-provisão.
4. Caso brasileiro (SUS) e mundial (defesa nacional).

### Estrutura interna (45 min)

#### B3.a (5 min) — Definição: rival × excludente

Quadro com a matriz 2×2:

| | **Excludente** | **Não-excludente** |
|---|---|---|
| **Rival** | Bem privado (pão) | Recurso comum (pesca) |
| **Não-rival** | Bem-clube (TV cabo) | **Bem público puro** (defesa) |

> *"Bem público puro tem as duas propriedades. Meu consumo não diminui o seu (não-rival), e não consigo excluí-lo (não-excludente). **Mercado descentralizado falha em provê-lo** — falta o canal de cobrança."*

#### B3.b (15 min) — Samuelson: derivação completa via Lagrangiano

> "Vamos derivar a condição de Samuelson formal — Lagrangiano + CPO. Calibre N&S §19.5."

Cite: Samuelson, P. A. (1954). "The Pure Theory of Public Expenditure." *Review of Economics and Statistics* 36(4), 387–389, [DOI 10.2307/1925895](https://doi.org/10.2307/1925895).

**Setup canônico no quadro:**

- Economia com \(I\) consumidores, 1 bem privado \(x\), 1 bem público \(G\).
- Preferências \(u^i(x^i, G)\), continuamente diferenciáveis, monotônicas.
- Tecnologia: \(c\) unidades de \(x\) produzem 1 unidade de \(G\) (TMT constante = \(c\)).
- Recursos agregados: \(\sum_i \omega^i = \Omega\). Restrição: \(\sum_i x^i + cG \le \Omega\).

**Programa do planejador.** Maximize utilidade ponderada:

\[
\max_{\{x^i\}, G} \sum_i \alpha^i u^i(x^i, G) \quad \text{s.a.} \quad \sum_i x^i + cG \le \Omega.
\]

**Lagrangiano:**

\[
\mathcal{L} = \sum_i \alpha^i u^i(x^i, G) - \lambda \left(\sum_i x^i + cG - \Omega\right).
\]

**CPOs:**

- Em \(x^i\): \(\alpha^i u^i_x = \lambda\). Reorganizando: \(\alpha^i = \lambda/u^i_x\).
- Em \(G\): \(\sum_i \alpha^i u^i_G = \lambda c\).

**Substitua \(\alpha^i = \lambda/u^i_x\) na CPO de \(G\):**

\[
\sum_i \frac{\lambda}{u^i_x} u^i_G = \lambda c \quad\Longleftrightarrow\quad \sum_i \frac{u^i_G}{u^i_x} = c.
\]

E como \(u^i_G/u^i_x = \text{TMS}^i_{G,x}\) e \(c = \text{TMT}_{G,x}\):

\[
\boxed{\sum_{i=1}^I \text{TMS}^i_{G,x} = \text{TMT}_{G,x}.}
\]

**\(\blacksquare\)**

> **Pausa pedagógica de 1 min:** "Esta é a regra-mestra de bem público. Compare com bem privado: \(\text{TMS}^i = \text{TMT}\) **agente por agente** — todos pagam à mesma taxa marginal. Bem público: **soma vertical** das valorações."

**Por quê (intuição econômica, 2 min):**

- **Bem privado é rival:** uma unidade vai a um agente. Custo marginal de produzir 1 unidade extra deve igualar \(\text{TMS}\) **daquele** agente.
- **Bem público é não-rival:** uma unidade vai a **todos**. Custo marginal de produzir 1 unidade extra deve igualar a **soma** das valorações marginais — porque essa unidade beneficia simultaneamente todos.

> *"\(\sum_i \text{TMS}^i\) é a 'demanda agregada' do bem público — soma **vertical**, não horizontal. Conceito gráfico simples, fórmula que aparece em prova."*

#### B3.c (10 min) — Exemplo numérico no quadro

Quadro:

\(I = 4\) idênticos, \(u^i = x^i + 6\sqrt{G}\), \(\text{TMT} = 4\).

\(\text{TMS}^i = u^i_G/u^i_x = (3/\sqrt{G})/1 = 3/\sqrt{G}\). Samuelson:

\[
4 \cdot \frac{3}{\sqrt{G^*}} = 4 \;\Longrightarrow\; \frac{12}{\sqrt{G^*}} = 4 \;\Longrightarrow\; \sqrt{G^*} = 3 \;\Longrightarrow\; G^* = 9.
\]

**Provisão voluntária Nash.** Cada agente escolhe \(g^i\), tomando \(g_{-i} = \sum_{j \neq i} g^j\) como dado.

UMP individual: \(\max_{g^i} (\omega^i - g^i) + 6\sqrt{g^i + g_{-i}}\). CPO: \(-1 + 3/\sqrt{G} = 0 \Rightarrow G = 9\) **se um único agente provê todo o bem**. Em equilíbrio Nash simétrico \(g^i = G/4\), todos enfrentam o mesmo problema "tomando 3 outros como dados", e o cálculo entrega \(G^N = 9\) se cada um enfrenta efetivamente o mesmo trade-off — **mas só um precisa atingir esse nível**.

> **Cuidado:** o cálculo Nash exato com 4 agentes simétricos quase-lineares produz **\(G^N = 9\) se um agente provê tudo, ou subprovisão se distribuído**. Em geral, com Bernoulli quase-linear simétrica, **um agente provê tudo no Nash** (Bergstrom-Blume-Varian 1986, *J. Public Economics* 29(1): 25–49, [DOI 10.1016/0047-2727(86)90024-1](https://doi.org/10.1016/0047-2727(86)90024-1)) — mas isso é diferente de Samuelson eficiente: aqui só um paga; lá todos os 4 contribuem.

**Pedagogia em sala:** se o tempo permitir, mostrar com agente quase-linear assimétrico, onde free-rider é mais transparente (ricos pagam, pobres pegam carona). Caso contrário, ficar com a fórmula simétrica e citar BBV como leitura.

#### B3.d (10 min) — Free-rider: subprovisão

> "Quando \(I\) agentes contribuem voluntariamente, cada um considera apenas **sua própria** valoração marginal. Mas o ótimo de Samuelson exige **a soma** das valorações. Logo, equilíbrio Nash de provisão voluntária entrega menos bem público que o ótimo social."

Quadro com diagrama mental:

\[
\underbrace{\text{TMS}^i = \text{TMT}}_{\text{Nash de cada agente}} \quad\neq\quad \underbrace{\sum_i \text{TMS}^i = \text{TMT}}_{\text{Samuelson}}.
\]

Free-rider: ninguém quer "pagar pela festa" se outros podem fazê-lo. Resultado: \(G^N \le G^*\), tipicamente estritamente menor.

**Implicação:** mercado descentralizado **não** provê eficientemente bem público. Precisa-se de mecanismo institucional (tributo geral, tarifa especial, mecanismo VCG). 

#### B3.e (5 min) — Box Brasil 🇧🇷 (SUS) + Box Mundo 🌍 (Defesa nacional)

**Box Brasil (3 min):** SUS (1988) — financiamento via tributo geral; atendimento universal e gratuito.

> "**Por Samuelson:** SUS tem componente não-rival (vacinação, vigilância sanitária, controle de epidemias). Cada cidadão valoriza saúde agregada da população — bem público puro. Provisão privada via mercado teria fortíssimo free-rider; financiamento via tributo é a solução institucional canônica."

**Box Mundo (2 min):** Defesa nacional como bem público canônico. Cada pessoa beneficiada não rivaliza com outras; ninguém pode ser excluído. Por Samuelson, financiamento via tributo geral em quase todos os países. **A teoria prevê o que vemos.**

### Saída do Bloco 3

A sala tem que poder responder:

- "Condição de Samuelson?" → \(\sum_i \text{TMS}^i = \text{TMT}\).
- "Por que soma vertical?" → não-rivalidade.
- "O que prevê o free-rider?" → subprovisão sob provisão voluntária.

### Transição (P2)

> "Pausa de 10 min. Quando voltarem, fechamos com mecanismos: Lindahl (preços personalizados) + VCG (verdade dominante) + Ostrom (governance institucional)."

---

## Pausa 2 — 10 min (21:45–21:55)

---

## Bloco 4 — Mecanismos: Lindahl + VCG + Ostrom (30 min)

**21:55–22:25.**

### Objetivo

1. Lindahl como sistema competitivo de preços personalizados — implementa Samuelson.
2. Falha de Lindahl: revelação de preferências.
3. VCG: verdade-dominante via Clarke pivot. Sketch da prova.
4. Ostrom: governance institucional como quarta via (não Pigou, não Coase, não Estado puro).

### Estrutura interna (30 min)

#### B4.a (8 min) — Lindahl: preços personalizados

Cite: Lindahl, E. (1919/1958). "Just Taxation: A Positive Solution." Em Musgrave-Peacock (eds.), *Classics in the Theory of Public Finance*, Macmillan.

Quadro:

**Setup.** Cada agente \(i\) paga preço pessoal \(\tau^i\) por unidade de \(G\). Restrição orçamentária: \(x^i + \tau^i G \le \omega^i\).

UMP individual: CPO em \(G\): \(\tau^i = \text{TMS}^i_{G,x}\). Mercado fecha: \(\sum_i \tau^i = \text{TMT}\).

Combinando: \(\sum_i \text{TMS}^i = \text{TMT}\) — **Samuelson é o equilíbrio de Lindahl.**

> *"Lindahl 'mercaliza' o bem público via preços personalizados. O 'preço' que cada agente vê é exatamente sua valoração marginal — Pareto-eficiente em equilíbrio competitivo."*

**A falha:** revelar \(\text{TMS}^i\) ao planejador para construir \(\tau^i\) é estrategicamente ruim — agente declara \(\text{TMS}\) baixa para pagar menos. **Free-rider em forma de revelação.**

#### B4.b (15 min) — VCG: verdade-dominante

Cites:

- Vickrey, W. (1961). "Counterspeculation, Auctions, and Competitive Sealed Tenders." *J. Finance* 16(1), 8–37, [DOI 10.1111/j.1540-6261.1961.tb02789.x](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x).
- Clarke, E. H. (1971). "Multipart Pricing of Public Goods." *Public Choice* 11, 17–33, [DOI 10.1007/BF01726210](https://doi.org/10.1007/BF01726210).
- Groves, T. (1973). "Incentives in Teams." *Econometrica* 41(4), 617–631, [DOI 10.2307/1914085](https://doi.org/10.2307/1914085).

Quadro:

**Setup VCG.** Decisão pública \(d \in \mathcal{D}\). Agente \(i\) tem valoração privada \(v^i(d)\). Decisão socialmente ótima: \(d^* = \arg\max \sum_i v^i(d)\).

**Mecanismo (Clarke pivot):**

1. Cada agente declara \(\hat v^i\). Mecanismo escolhe \(d^* = \arg\max \sum_i \hat v^i(d)\).
2. Cada agente paga \(t^i = \max_{d} \sum_{j \neq i} \hat v^j(d) - \sum_{j \neq i} \hat v^j(d^*)\).

Em outras palavras: \(i\) paga **somente se** sua presença mudou a decisão (pivot) — paga o "dano externo" (em valoração) que sua opinião causou aos outros.

**Sketch da prova de dominância:**

Utilidade líquida do agente \(i\) (após pagar \(t^i\)):

\[
v^i(d^*) - t^i = v^i(d^*) - h^i(\hat v_{-i}) + \sum_{j \neq i} \hat v^j(d^*),
\]

onde \(h^i(\hat v_{-i}) = \max_d \sum_{j \neq i} \hat v^j(d)\) **não depende** de \(\hat v^i\).

Maximizar essa expressão sobre \(\hat v^i\) é equivalente a maximizar \(v^i(d^*) + \sum_{j \neq i} \hat v^j(d^*)\). Mas o mecanismo escolhe \(d^*\) como \(\arg\max\) de \(\hat v^i + \sum_{j \neq i} \hat v^j\) = (substituindo \(\hat v^i = v^i\)) = \(v^i + \sum_{j \neq i} \hat v^j\). Alinhado.

**Conclusão:** declarar \(\hat v^i = v^i\) (verdade) é estratégia dominante para todo \(i\), independente do que os outros declarem. \(\blacksquare\)

> **Eq-punch:** *"O 'truque' do VCG: a transferência paga por \(i\) **descola** a declaração do agente do seu pagamento. Maximizar utilidade individual então equivale a maximizar critério social — verdade alinha incentivos."*

**Custo:** VCG não é orçamento-balanceado em geral. \(\sum_i t^i\) pode ser positivo ou negativo. Para implementação real, governo absorve residual. Há limitações de domínio (Gibbard-Satterthwaite + Roberts), citamos sem detalhar.

**Aplicação real:** Box Mundo 🌍 — **FCC Spectrum Auctions (US 1994+).** Leilão de segundo preço (Vickrey) é VCG aplicado à decisão "quem leva o item". Verdade na valoração dominante. FCC arrecadou >US$ 100 bi via mecanismos VCG-derivados entre 1994 e 2020 (Milgrom 2000, Cramton 2013).

#### B4.c (5 min) — Ostrom 1990: governance institucional

Cite: Ostrom, E. (1990). *Governing the Commons: The Evolution of Institutions for Collective Action.* Cambridge UP. (Nobel 2009.)

> "Hardin (1968) previu que recursos comuns seriam sobre-explorados sob acesso aberto ('tragédia dos comuns'). **Mas Ostrom documentou o oposto:** comunidades reais coordenam soberania local — regras de uso, monitoramento mútuo, sanções graduadas — e evitam a tragédia sem privatizar nem nacionalizar."

Cite Hardin (1968): Hardin, G. (1968). "The Tragedy of the Commons." *Science* 162, 1243–1248, [DOI 10.1126/science.162.3859.1243](https://doi.org/10.1126/science.162.3859.1243).

**Os 8 princípios de Ostrom (mencionar 3 no quadro, citar resto):**

1. Limites bem-definidos do recurso e dos membros.
2. Regras adaptadas às condições locais.
3. Monitoramento mútuo dos usuários.

> *"**A quarta via.** Pigou + Coase + Estado puro não esgotam o espaço de soluções para externalidades. **Governance institucional** opera fora do binário taxa/barganha — via instituições comunitárias com regras de uso e enforcement. Ostrom é citação obrigatória depois do Nobel 2009."*

#### B4.d (2 min) — Box Brasil 🇧🇷 (PMCMV) — Lindahl implícito

> "**Programa Minha Casa, Minha Vida (PMCMV, 2009)** segmenta beneficiários por faixa de renda e aplica subsídios distintos: Faixa 1 recebe subsídio integral; Faixa 2 e 3 pagam parcela proporcional ao custo. **Equivale a preços personalizados** (Lindahl) pelo bem público 'habitação social', com renda como proxy de \(\text{TMS}\) implícita. Não é Lindahl puro (não vem de declaração); é **Lindahl com proxy** — funciona se renda e disposição-a-pagar forem correlacionadas."

### Saída do Bloco 4

A sala tem que poder responder:

- "Lindahl implementa qual condição?" → Samuelson \(\sum \text{TMS} = \text{TMT}\).
- "VCG: verdade-dominante?" → sim, porque pagamento descola da declaração do próprio.
- "Quarta via de Ostrom?" → governance institucional, não mercado nem Estado.

---

## Bloco 5 — Síntese + ponte Aula 8 (5 min)

**22:25–22:30.**

### Roteiro

#### B5.a (3 min) — Síntese da Aula 7

Quadro com tabela síntese:

| Falha | Mecanismo | Solução(ões) |
|---|---|---|
| Externalidade tecnológica | Ação fora dos preços | Pigou (taxa) / Coase (barganha) / Cap-and-trade |
| Bem público não-rival | Soma vertical de valorações | Tributo (Samuelson) / Lindahl (preços pessoais) / VCG (verdade dominante) |
| Common-pool | Acesso aberto + tragédia | Ostrom (governance institucional) |

> *"Aula 7 catalogou a segunda das três falhas clássicas do EG. Aula 8 abre a terceira — informação assimétrica. Mecanismos lá vão se conectar com VCG: Akerlof 1970, Rothschild-Stiglitz 1976, Spence 1973. **A revelação como problema central de design.**"*

#### B5.b (2 min) — Ponte Aula 8 (sel.adv. + risco moral)

> "Aula 8 (10 de junho): **Seleção adversa e Risco moral**. Pergunta-driver: e quando agentes têm informação privada que afeta a transação? Akerlof (1970) lemons; Rothschild-Stiglitz (1976) seguro; principal-agent (Holmström 1979). **Pré-monitoria 4** com Alberto, sábado 13/06, cobre Aulas 6 e 7 juntas."

> *"Boa noite. Quinta 04/06 às 00:00 sai o gabarito 5-passos dos exercícios avaliativos da Aula 7. Vejo todos na quarta 10/06 com a Aula 8."*

---

## Apêndices operacionais

### A. Material para o quadro

- Slide 1 (Bloco 1): "Diagnóstico — externalidade quebra 1º TBE."
- Slide 2 (Bloco 1): Tipologia 3-eixos.
- Slide 3 (Bloco 1): Pigou — modelo parcial completo + exemplo numérico.
- Slide 4 (Bloco 1): Box Brasil CBio + Box Mundo EU ETS.
- Slide 5 (Bloco 2): Coase — enunciado + 3 hipóteses.
- Slide 6 (Bloco 2): Coase — barganha bilateral, 2 cenários (eq-key).
- Slide 7 (Bloco 2): Onde Coase falha — tabela.
- Slide 8 (Bloco 2): Cap-and-trade descentralizado.
- Slide 9 (Bloco 3): Bem público — matriz rival × excludente.
- Slide 10 (Bloco 3): Samuelson — derivação Lagrangiano.
- Slide 11 (Bloco 3): Exemplo numérico Samuelson + Nash subprovisão.
- Slide 12 (Bloco 3): Boxes SUS + Defesa nacional.
- Slide 13 (Bloco 4): Lindahl — preços personalizados.
- Slide 14 (Bloco 4): VCG — Clarke pivot + sketch dominância.
- Slide 15 (Bloco 4): Ostrom + Box PMCMV.
- Slide 16 (Bloco 5): Tabela síntese.

### B. Variáveis de ajuste em tempo real

| Sintoma | Ajuste |
|---|---|
| Sala fluindo, Bloco 1 acaba em 30 min | Usa 10 min extra no Bloco 3 (Samuelson com numerical exemplo expandido) ou no Bloco 4 (Ostrom + commons no Brasil — pesca, hídricos) |
| Sala travada em Pigou (Bloco 1) | Encolhe Bloco 4 em 5 min; usa pra repetir o exemplo numérico Pigou no Bloco 1.c ainda |
| Pergunta sobre derivativos verdes / preço CO\(_2\) atual | "EU ETS Phase 4 entre €25–€100/tCO\(_2\). Mecanismo Pigou-Coase. Aula 7 não cobre dinâmica do preço." |
| Pergunta sobre rigorosa demonstração de Coase | "Coase (1960) é argumento de existência sob hipóteses; rigorosa formalização precisa de Hahn-Banach + barganha de Nash. MWG §11.D detalha." |
| Pergunta sobre VCG não-balanceado | "VCG não é orçamento-balanceado em geral. Mecanismos AGV/d'Aspremont-Gérard-Varet (1979) tentam balancear sob preferências quase-lineares; relaxam dominância para Bayes-Nash. Tópico avançado, fora do escopo." |
| Pergunta sobre Gibbard-Satterthwaite | "Em domínios irrestritos com 3+ alternativas, único mecanismo dominante é ditatorial. VCG escapa porque preferências são quase-lineares — domínio restrito. Roberts (1979) caracterizou. Pré-monitoria 5 menciona." |

### C. Telemetria pós-aula (admin dashboard)

Após a aula, conferir em `admin.html`:

- **Confidence ratings post-Bloco 1** (externalidade + Pigou): se P50 < 3 (de 5), Pigou não cravou — ajustar pré-monitoria 4 com Alberto.
- **Quiz pós-aula 7 — Q3 (Coase)**: se acerto 1ª < 50%, Coase com 3 hipóteses precisa de mais tempo na pré-M4.
- **Quiz pós-aula 7 — Q5 ou Q6 (Samuelson)**: se acerto 1ª < 40%, derivação Lagrangiano foi rápida demais; revisitar Bloco 3.b.
- **Quiz pós-aula 7 — Q9 ou Q10 (VCG)**: se acerto 1ª < 30%, dominância de VCG é o gargalo — revisitar com Alberto.
- **Reflexão "nebuloso"**: se >30% mencionam "Coase" ou "VCG", Bloco 4 foi denso demais.

---

## Anti-padrões (Referee 2)

- ❌ **Não derivar Gibbard-Satterthwaite ou Roberts.** Cita; não prove.
- ❌ **Não derivar a prova rigorosa de Coase via Hahn-Banach.** Sketch + intuição barganha bilateral. Quem quer rigor: MWG §11.D.
- ❌ **Não invocar Ostrom como teorema formal.** É documentação empírica + framework qualitativo. Mencione 3 dos 8 princípios e siga.
- ❌ **Não pedir álgebra desnecessária no Lagrangiano de Samuelson.** Mantenha tecnologia linear (\(\text{TMT}\) constante) e Bernoullis simples (quase-lineares ou logarítmicas) — exemplo numérico cabe em \(I = 3\) ou \(I = 4\).
- ❌ **Não introduzir mecanismos balanceados (AGV/d'Aspremont-Gérard-Varet).** Fora do escopo. VCG é o canônico; existência exata com balanço é tópico avançado.
- ❌ **Não citar artigos sem confirmação de DOI.** DOIs validados em 2026-05-08:
  - Coase (1960) [10.1086/466560](https://doi.org/10.1086/466560)
  - Samuelson (1954) [10.2307/1925895](https://doi.org/10.2307/1925895)
  - Hardin (1968) [10.1126/science.162.3859.1243](https://doi.org/10.1126/science.162.3859.1243)
  - Clarke (1971) [10.1007/BF01726210](https://doi.org/10.1007/BF01726210)
  - Groves (1973) [10.2307/1914085](https://doi.org/10.2307/1914085)
  - Vickrey (1961) [10.1111/j.1540-6261.1961.tb02789.x](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x)
  - Bergstrom-Blume-Varian (1986) [10.1016/0047-2727(86)90024-1](https://doi.org/10.1016/0047-2727(86)90024-1)
  - Pigou (1920) é livro: *The Economics of Welfare*, Macmillan — sem DOI canônico, cite por veículo.
  - Lindahl (1919/1958) é capítulo de livro (Musgrave-Peacock eds.), cite por veículo.
  - Ostrom (1990) é livro: *Governing the Commons*, Cambridge UP. — Nobel 2009.
- ❌ **Não fechar com "isso resolve poluição mundial".** Fecha com **questão**: e se um dos lados tem informação privada sobre suas valorações? (Aula 8 — informação assimétrica.)
