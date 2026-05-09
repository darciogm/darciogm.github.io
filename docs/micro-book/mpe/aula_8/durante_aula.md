# Aula 8 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 10/06/2026. Tema: **Seleção Adversa e Risco Moral** — Akerlof (1970), Rothschild-Stiglitz (1976), Holmström (1979), Mirrlees (1971), Grossman-Hart (1983).

> **Disclaimer pedagógico explícito.** Esta é a aula que **abre a terceira das três falhas clássicas do EG**. Aula 5 montou o canônico AD; Aula 6 introduziu incompletude (1ª falha); Aula 7 catalogou externalidades + bens públicos não-precificáveis (2ª falha); aqui catalogamos **informação assimétrica** (3ª falha). Aula 9 vai introduzir sinalização (Spence) + matching (Gale-Shapley) como mecanismos de coordenação. Mantenha o fio cada vez que abrir um exemplo: **qual mecanismo específico do 1º TBE deixou de valer?**

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 10/06/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Seleção Adversa e Risco Moral — Akerlof, Rothschild-Stiglitz, Holmström, aplicações
- **Objetivo de aprendizagem:** diagnosticar assimetria informacional (hidden type vs. hidden action); derivar Akerlof unraveling; caracterizar equilíbrio R-S separador; resolver principal-agente canônico (first-best vs. second-best) com Lagrangiano IR + IC; reconhecer aplicações (planos de saúde, ACA, Bolsa Família, stock options).
- **Pré-requisitos assumidos:** Aulas 1–7 consolidadas; UMP, Lagrangiano com restrições, 1º TBE estendido + duas falhas anteriores. Pré-aula 8 concluída (ZaE Cap. 19 + N&S Cap. 18; 9 seções da plataforma + quiz pré-aula 10🟡).
- **Nível pedagógico:** **piso N&S 12e Cap. 18** (Asymmetric Information); ZaE Cap. 19 como leitura principal; J-R 3e §7.1/§7.3 como teto; MWG Cap. 13 citado em 🔴 cirurgicamente.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + ponte Aula 7 | 19:30 | 19:35 | **5 min** |
| 1 | Diagnóstico + Akerlof (1970) lemons | 19:35 | 20:15 | **40 min** (inclui triagem das reflexões nos 3 primeiros) |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | Rothschild-Stiglitz (1976) — seguro com seleção adversa | 20:25 | 21:05 | **40 min** |
| 3 | Holmström (1979) — principal-agente + risco moral | 21:05 | 21:50 | **45 min** |
| P2 | Pausa | 21:50 | 22:00 | **10 min** |
| 4 | Aplicações + extensões (Mirrlees, Grossman-Hart, ACA, Bolsa Família) + ponte Aula 9 | 22:00 | 22:25 | **25 min** |
| 5 | Síntese + ponte Aula 9 (sinalização + matching) | 22:25 | 22:30 | **5 min** |

**Soma:** \(5 + 40 + 10 + 40 + 45 + 10 + 25 + 5 = 180\) min. ✓

> **Calibração de timing pós-padrão Aulas 5–7.** Bloco 3 (Holmström) tem **45 min** — é o bloco mais técnico (Lagrangiano com IR+IC + interpretação first-best vs. second-best) e merece tempo. Bloco 1 mantém os **40 min** canônicos (diagnóstico + Akerlof completo). Bloco 2 fica em **40 min** — R-S é gráfico-intensivo (curvas de indiferença + single-crossing); precisa do tempo. Bloco 4 fica em **25 min** — aplicações são panorâmicas, sem derivação adicional. **Variáveis de ajuste:** se Bloco 1 derrapa em 5 min, Bloco 4 absorve cortando Mirrlees ou Grossman-Hart; se Bloco 1 fecha adiantado, Bloco 4 ganha ar para discussão socrática sobre regulação ANS no Brasil ou lições do ACA US 2010.

---

## Bloco 0 — Abertura + recall + ponte Aula 7 (5 min)

**19:30–19:35.**

### Roteiro

- **Cumprimento e check-in (1 min).** "Aula 8 — Seleção Adversa e Risco Moral. Hoje fechamos o **catálogo das três falhas clássicas** do EG. Aula 6: incompletude. Aula 7: externalidades + bens públicos. Hoje: **informação assimétrica**. Aula 9 (próxima): mecanismos de coordenação descentralizada — sinalização (Spence) + matching (Gale-Shapley)."
- **Recall da Aula 7 + ponte (4 min, no quadro):**
  > "Em uma frase: o que o teorema de Samuelson nos disse?"

  Resposta esperada da sala:

  - "Para bem público não-rival, eficiência exige soma vertical das valorações: \(\sum_i \text{TMS}^i = \text{TMT}\)."

  Se a sala não devolve em 30s, **resgate ágil em 60s**: lembre que provisão voluntária Nash entrega \(\text{TMS}^i = \text{TMT}\) **agente-por-agente** — daí a subprovisão de free-rider, e daí a necessidade de mecanismos (Lindahl, VCG, Ostrom). **Não esticar.**

### Transição

> "Aula 6 quebrou o 1º TBE por **escopo institucional** — faltavam ativos no span. Aula 7 quebrou por **escopo da interação** — faltavam preços para externalidades. Hoje quebramos por **escopo da observabilidade** — o vetor de bens transacionados existe, mas o principal não consegue verificar tudo. As três falhas são **cumulativas**: economias reais têm todas. Catalogamos uma de cada vez para entender mecanismo."

---

## Bloco 1 — Diagnóstico + Akerlof (1970) lemons (40 min)

**19:35–20:15.**

### Triagem rápida das reflexões (3 min, no início do Bloco 1)

Antes de entrar em diagnóstico, pegue **2–3 reflexões "nebuloso"** da pré-aula 8 e responda em 1 frase cada apontando o slide/bloco onde o tema será tratado. Padrões frequentes a aproveitar se aparecerem: "Por que pooling não é Nash em R-S?" → Bloco 2; "Single-crossing geometricamente?" → Bloco 2; "Por que neutralidade do agente leva a first-best?" → Bloco 3; "Bolsa Família como contrato condicional?" → Bloco 4. **Não esticar.** Reflexões mais densas viram material de pré-monitoria 5.

### Objetivo

Cravar:

1. Tipologia: *hidden type* (seleção adversa) vs. *hidden action* (risco moral).
2. Por que assimetria quebra o 1º TBE — restrições IR + IC limitam o conjunto factível.
3. Akerlof (1970): unraveling — bons saem, qualidade média cai, mercado pode colapsar.
4. Box Brasil: mercado de carros usados Brasil + plataformas online.

### Estrutura interna (40 min)

#### B1.a (5 min) — Pergunta-driver + tipologia

> "Aula 7: 1º TBE valia em economia sem externalidades. Hoje: e quando agentes têm informação privada que afeta a transação?"

Quadro com tipologia 2×1:

| Regime | Quando? | Exemplo |
|---|---|---|
| **Hidden type (seleção adversa)** | Antes da contratação | Vendedor de carro conhece qualidade; segurado conhece risco |
| **Hidden action (risco moral)** | Após a contratação | Segurado age com menos cuidado; CEO alocoa esforço |

> *"Vamos modelar as duas em sequência: Akerlof + R-S para seleção adversa; Holmström para risco moral."*

#### B1.b (5 min) — Por que isso quebra o 1º TBE

Quadro:

\[
\text{Conjunto factível AD} \supsetneq \text{Conjunto factível com IR + IC}.
\]

Escreva os dois pontos no quadro:

- **(IR)** O agente **aceita** o contrato se utilidade esperada \(\ge \bar U\).
- **(IC)** O agente **escolhe** ação compatível se desviar não compensa.

> "Sob assimetria, contratos que violam IC ou IR são *inviáveis* — agente desviaria ou recusaria. Equilíbrio competitivo ocorre **dentro** do conjunto restrito; tipicamente é Pareto-dominado pelo first-best."

> *"Aula 6 restringia por dimensão (faltavam ativos). Aula 7 restringia por escopo (faltavam preços). Aqui restringe por observabilidade (faltam medidas)."*

#### B1.c (15 min) — Akerlof (1970) — derivação completa

Cite: Akerlof, G. A. (1970). "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *Quarterly Journal of Economics* 84(3), 488–500, [DOI 10.2307/1879431](https://doi.org/10.2307/1879431).

> "Vamos derivar Akerlof formal — equilíbrio competitivo + média condicional. Calibre N&S §18.7."

Quadro, em ordem:

1. **Setup.** Carros usados; vendedor conhece \(\theta \in [\underline\theta, \overline\theta] = [0, 1]\) (uniforme para simplicidade); comprador valoriza \(\beta \theta\) com \(\beta > 1\); vendedor reserva \(\theta\).
2. **Equilíbrio simétrico.** \(\beta \theta > \theta \Rightarrow\) toda transação ocorre. Eficiência completa.
3. **Equilíbrio assimétrico.** Vendedor aceita preço \(p\) se \(\theta \le p\). Comprador propõe \(p\) tal que \(p = \beta E[\theta | \theta \le p] = \beta p/2\) (sob uniforme em [0, p]).
4. **Solução:** \(p(1 - \beta/2) = 0\). Se \(\beta < 2\), única solução interior é \(p = 0\) — **mercado colapsa**.
5. **Resultado:** unraveling. Bons saem primeiro, média condicional cai, preço cai, mais bons saem. Limite: zero transação — Pareto-dominado por simétrico.

**Eq-punch (no quadro, em destaque):**

\[
\boxed{\;p^* = \beta \cdot E[\theta | \theta \le p^*] \quad\text{e se}\quad \beta < 2 \implies p^* = 0.\;}
\]

> **Por quê.** Cada bom carro que existe em [p, 1] (dado \(p\) atual) sai do mercado quando o preço é abaixo de sua qualidade. Mas seu sair reduz a qualidade média condicional — comprador racional reduz preço. Cascata de saídas até \(p = 0\). **Adverse selection unraveling completo.**

**Exemplo numérico (no quadro, 4 min).** \(\beta = 1{,}5\), \(\theta \sim U[0, 1]\). Verifique: \(p = 1{,}5 \cdot p/2 \Rightarrow p \cdot 0{,}25 = 0 \Rightarrow p = 0\) ✓. **Colapso.**

#### B1.d (10 min) — Box Brasil (carros usados) + Box Mundo (Akerlof referência canônica)

**Box Brasil 🇧🇷 (5 min):** Mercado de carros usados Brasil + Webmotors/OLX.

> "Vendedor conhece histórico (manutenção, sinistros, batidas); comprador vê apenas inspeção visual. Plataformas reduzem assimetria: laudo cautelar, garantia de loja, histórico de manutenção. **Concessionária com 'seminovos certificados' cobra prêmio de informação** — preço maior porque inspeção + garantia reduzem incerteza."

> "Empiricamente: distribuição **bimodal** dos preços de transação. Carros 'concessionária' aproximam-se do novo; carros 'OLX particular' sofrem **lemons discount** substancial. **A teoria prevê o que vemos.**"

**Box Mundo 🌍 (5 min):** Akerlof 1970 como referência canônica.

> "O paper original é o de carros usados nos EUA. Rendeu Nobel 2001 (Akerlof + Stiglitz + Spence). O mecanismo central — informação privada do vendedor — generaliza-se para seguros (Stiglitz), trabalho (Spence), crédito (Stiglitz-Weiss 1981), M&A (Myers-Majluf 1984). Toda a literatura subsequente sobre informação assimétrica desce daqui."

#### B1.e (2 min) — Hipóteses precisas + onde Akerlof falha

**Hipóteses canônicas:**

- Distribuição uniforme (relaxa-se com cuidado: qualquer distribuição contínua entrega versão do unraveling).
- Comprador toma preço dado (forma-padrão de equilíbrio competitivo).
- Sem mecanismos de revelação (sem garantia, reputação, sinalização).

**Onde falha:**

- **Reputação** (vendedor com nome) gera incentivo a manter qualidade — Klein-Leffler 1981, Shapiro 1983.
- **Garantia/seguro** (sinal de qualidade) atenua unraveling — Spence 1973 (Aula 9).
- **Inspeção por terceiros** (laudo cautelar) reduz assimetria — instituição mediadora.

> *"Aula 9 vai introduzir sinalização (Spence) como mecanismo do agente informado para resolver o problema do principal não-informado. Hoje, nos limitamos ao diagnóstico."*

### Saída do Bloco 1

A sala tem que poder responder em uma palavra:

- "Tipologia da assimetria?" → hidden type (sel.adv.) vs. hidden action (risco moral).
- "O que Akerlof prevê?" → unraveling — colapso possível do mercado por adverse selection.
- "Por que isso quebra 1º TBE?" → conjunto factível restrito por IR + IC.

Se 30%+ tropeça, **use os primeiros 5 min do Bloco 2 para revisitar e siga**.

### Transição (P1)

> "Pausa de 10 min. Quando voltarem: e em mercado de seguro, com 2 tipos de risco e single-crossing? Rothschild-Stiglitz 1976."

---

## Pausa 1 — 10 min (20:15–20:25)

Café. Banheiro. Não tente "explicar mais um ponto" — cansa a turma e detona o Bloco 2.

---

## Bloco 2 — Rothschild-Stiglitz (1976) — seguro com seleção adversa (40 min)

**20:25–21:05.**

### Objetivo

Cravar:

1. Setup R-S: 2 tipos de risco, single-crossing, contrato \((\alpha, \beta)\) — ou forma reduzida prêmio + cobertura.
2. First-best simétrico: cobertura completa a prêmio justo para cada tipo.
3. Equilíbrio separador: \(H\) cobertura completa; \(L\) distorcido para baixo; IC do \(H\) binding.
4. Inexistência possível do equilíbrio (\(\lambda\) baixo).
5. Box Brasil: ANS regulação dos planos de saúde.
6. Box Mundo: ACA mandato + proibição de underwriting.

### Estrutura interna (40 min)

#### B2.a (5 min) — Setup: 2 tipos + Bernoulli côncava

Cite: Rothschild, M., & Stiglitz, J. (1976). "Equilibrium in Competitive Insurance Markets." *Quarterly Journal of Economics* 90(4), 629–649, [DOI 10.2307/1885326](https://doi.org/10.2307/1885326).

Quadro:

**Setup.** Riqueza inicial \(W\). Sinistro de tamanho \(L\) com probabilidade \(\pi^\theta\), \(\theta \in \{H, L\}\), \(\pi^H > \pi^L\). Proporção: \(\lambda\) high, \(1-\lambda\) low. **Agente conhece** \(\theta\); **seguradora não**.

Contrato: prêmio \(p\) (paga sempre) + cobertura \(c \in [0, L]\) (recebe se sinistro). Riqueza ex-post: \(W - p\) sem sinistro; \(W - p - L + c\) com sinistro.

Bernoulli \(u(\cdot)\) côncava (avesso). Utilidade esperada: \(EU^\theta(p, c) = (1-\pi^\theta) u(W - p) + \pi^\theta u(W - p - L + c)\).

#### B2.b (10 min) — First-best simétrico

> "Sob informação simétrica, seguradora pode oferecer contrato condicional ao tipo. Vamos derivar."

Quadro: programa para cada tipo separado. Lucro esperado da seguradora sob \(\theta\) com contrato \((p, c)\) aceito: \(\Pi^\theta = p - \pi^\theta c\). Em equilíbrio competitivo (livre entrada → lucro zero): \(p = \pi^\theta c\).

CPO do agente: \(\partial EU/\partial c = -p + \pi^\theta (\partial u/\partial \cdot)\) — análise gráfica de tangência. Sob avessão, **cobertura completa** \(c = L\) é Pareto-eficiente: agente quer suavizar consumo entre estados; seguradora neutra absorve risco. \(p^\theta = \pi^\theta L\) — actuarialmente justo.

> *"First-best: cada tipo recebe cobertura completa a prêmio justo. Tipo H paga mais (\(\pi^H L\)); tipo L paga menos (\(\pi^L L\)). Pareto. Sem perda de bem-estar.**

#### B2.c (15 min) — Equilíbrio separador R-S

Agora o coração do bloco. Quadro com gráfico (no espaço prêmio × cobertura):

1. **Curva de indiferença** de cada tipo. Sob avessão, são curvas convexas; \(\partial \text{TMS}/\partial \pi^\theta\) tem sinal definido — **single-crossing**: tipos altos têm curvas mais inclinadas (maior disposição a pagar por cobertura adicional na margem).
2. **Linha de oferta competitiva** para cada tipo: \(p = \pi^\theta c\). Tipo H tem inclinação maior; tipo L menor.
3. **First-best:** tangência da indiferença com a linha de oferta correspondente — para cada tipo, cobertura completa.
4. **IC:** sob assimetria, contratos têm de satisfazer \(EU^H(\cdot) \ge EU^H(\cdot_L)\) e \(EU^L(\cdot) \ge EU^L(\cdot_H)\).

**Resultado R-S (separador):** único candidato a equilíbrio competitivo:

- **Tipo H recebe cobertura completa ao prêmio justo \(p^H = \pi^H L\)** — sem distorção, porque seu IC contra mimetizar L é trivialmente satisfeito (L tem prêmio menor mas cobertura inferior).
- **Tipo L recebe cobertura parcial** — distorcida para baixo. A cobertura é tal que **IC do H é binding**: tipo H é indiferente entre seu próprio contrato e o de L. Geometricamente: contrato de L está na linha de oferta justa de L, no ponto onde a indiferença de H (que passa pelo seu próprio contrato) cruza essa linha.

> **Eq-punch:** *"Os bons riscos pagam o preço da assimetria — recebem menos seguro do que mereceriam, para que os altos riscos não os imitem. Distorção de second-best."*

**Quadro com diagrama mental:**

\[
(p^H, c^H) = (\pi^H L, L) \qquad (p^L, c^L_{\text{distorcido}}, p^L = \pi^L c^L) \quad \text{com IC do H binding.}
\]

#### B2.d (5 min) — Inexistência possível do equilíbrio

> "R-S provam: se proporção \(\lambda\) de altos riscos é **suficientemente baixa**, **não existe** equilíbrio competitivo separador."

Quadro: argumento informal.

- Se \(\lambda\) é baixo, média ponderada de risco \(\approx \pi^L\). Seguradora poderia oferecer **contrato pooling** — cobertura completa ao prêmio médio próximo de \(\pi^L\). Pareto-domina o separador (L recebe mais cobertura; H recebe seguro mais barato que justo).
- **Mas pooling não é Nash:** uma seguradora desviante pode oferecer contrato que atrai apenas L (cobertura parcial mais barata) e quebra o pooling. Tipo H sobrava apenas no pool — pool quebra.
- Logo, pooling não-Nash; separador domina por pooling se \(\lambda\) baixo. **Nem um nem outro sobrevivem.** **Não existe equilíbrio competitivo.**

> *"Inexistência é o resultado intelectualmente mais surpreendente de R-S — abre porta para regulação como solução."*

**Pausa pedagógica de 1 min:** "Isso significa que mercados de seguro 100% competitivos sem regulação podem **não fechar**. Daí a regulação ANS no Brasil, daí o ACA mandato nos EUA. A teoria prevê a necessidade de instituição mediadora."

#### B2.e (5 min) — Box Brasil 🇧🇷 (ANS) + Box Mundo 🌍 (ACA)

**Box Brasil (3 min):** ANS — Lei 9.656/1998.

> "Sem regulação, seguradoras *cherry-pick*: triagem médica, carências longas, prêmios diferenciados por idade. ANS impõe: faixas etárias máximas, rol de cobertura mínima obrigatória, **portabilidade**. Efeito líquido: pooling regulado — cross-subsidy explícito de baixos para altos riscos. Resolve a inexistência R-S, ao custo de second-best regulado."

**Box Mundo (2 min):** ACA — Affordable Care Act 2010.

> "ACA é resposta institucional canônica ao problema R-S. (i) **Proibição de underwriting baseado em saúde** força pooling. (ii) **Mandato individual** força participação dos baixos riscos — evita unraveling. (iii) **Subsídios cruzados** redistribuem. Sem mandato, baixos riscos saem; equilíbrio R-S inviável. Com mandato + subsídio, pooling regulado é viabilizado. Literatura empírica (Hackmann-Kolstad-Kowalski 2015) confirma: estados que removeram mandato sofreram unraveling parcial."

### Saída do Bloco 2

A sala tem que poder responder:

- "Equilíbrio R-S separador?" → H cobertura completa; L distorcido; IC de H binding.
- "Inexistência?" → \(\lambda\) baixo; pooling Pareto-domina mas não é Nash.
- "ACA + ANS?" → mandato + proibição de underwriting + cross-subsidy → resolvem inexistência via regulação.

### Transição (Bloco 3)

> "Seleção adversa cobre *hidden type*. Falta *hidden action* — risco moral. Holmström 1979."

---

## Bloco 3 — Holmström (1979) — principal-agente + risco moral (45 min)

**21:05–21:50.**

### Objetivo

Cravar:

1. Setup canônico 2-estados / 2-esforços. P neutro, A avesso. \(y \in \{y_L, y_H\}\), \(a \in \{a_L, a_H\}\).
2. First-best (ação observável): salário fixo, IR binding, P absorve risco.
3. Second-best (ação não-observável): IR + IC, ambos podem ser binding; \(w_H > w_L\) com agente avesso.
4. Equivalência sob neutralidade do agente: \(u\) linear \(\Rightarrow\) second-best = first-best.
5. Aplicação canônica: stock options, Bolsa Família condicionada.

### Estrutura interna (45 min)

#### B3.a (5 min) — Setup canônico

Cite: Holmström, B. (1979). "Moral Hazard and Observability." *Bell Journal of Economics* 10(1), 74–91, [DOI 10.2307/3003320](https://doi.org/10.2307/3003320).

Quadro:

**Setup.** Principal (P, neutro). Agente (A, avesso, Bernoulli \(u\) côncava). Esforço \(a \in \{a_L, a_H\}\), custo \(c(a)\), \(c(a_H) > c(a_L) = 0\). Output \(y \in \{y_L, y_H\}\), \(y_H > y_L\). Probabilidade: \(\pi_a = \Pr(y_H | a)\), \(\pi_H > \pi_L\) (alto esforço aumenta chance de \(y_H\)).

Contrato: salário \(w(y)\) — depende apenas do output observável. Reservation utility \(\bar U\).

#### B3.b (10 min) — First-best (ação observável)

> "Se \(a\) é observável, contrato direto: principal especifica \(a\) e oferece salário fixo."

Quadro:

\[
\min_w \quad w \quad \text{s.a.} \quad u(w) - c(a) \ge \bar U \quad (\text{IR binding}).
\]

Solução: \(w^* = u^{-1}(\bar U + c(a))\). **Salário fixo** — principal absorve todo o risco. Pareto-eficiente sob avessão de A + neutralidade de P.

**Exemplo numérico (no quadro, 4 min).** Bernoulli \(u(w) = \sqrt w\). \(\bar U = 4\). \(c(a_H) = 4\), \(c(a_L) = 0\). Para induzir \(a_H\): \(\sqrt{w^*_H} - 4 = 4 \Rightarrow w^*_H = 64\). Para \(a_L\): \(\sqrt{w^*_L} = 4 \Rightarrow w^*_L = 16\).

Agora compare lucros: principal escolhe esforço que maximiza \(\pi_a y_H + (1-\pi_a) y_L - w^*_a\). Se \(y_H = 100\), \(y_L = 0\), \(\pi_H = 0{,}7\), \(\pi_L = 0{,}3\):

- Sob \(a_H\): \(0{,}7 \cdot 100 - 64 = 6\).
- Sob \(a_L\): \(0{,}3 \cdot 100 - 16 = 14\).

Principal prefere \(a_L\)! Surpresa pedagógica — alto esforço **não compensa** seu custo neste exemplo. Para forçar \(a_H\) ser preferido, ajuste \(\pi\)s ou \(c\)s. (Bom momento para fazer no quadro.)

#### B3.c (15 min) — Second-best (ação não-observável)

> "Sob *hidden action*, salário fixo é inviável: agente desviaria para \(a_L\) sem ser detectado. Para induzir \(a_H\), salário tem de **depender** do output."

Quadro: programa do principal (induzindo \(a_H\)):

\[
\min_{w_H, w_L} \;\; \pi_H w_H + (1-\pi_H) w_L
\]

s.a.

- **(IR)** \(\pi_H u(w_H) + (1-\pi_H) u(w_L) - c(a_H) \ge \bar U\)
- **(IC)** \(\pi_H u(w_H) + (1-\pi_H) u(w_L) - c(a_H) \ge \pi_L u(w_H) + (1-\pi_L) u(w_L) - c(a_L)\)

A IC simplifica para:

\[
(\pi_H - \pi_L) [u(w_H) - u(w_L)] \ge c(a_H) - c(a_L).
\]

**Lagrangiano:**

\[
\mathcal{L} = \pi_H w_H + (1-\pi_H) w_L - \mu \cdot [\text{IR}] - \nu \cdot [\text{IC}].
\]

CPO em \(w_H\) e \(w_L\) (após reorganização):

\[
\boxed{\frac{1}{u'(w_H)} = \mu + \nu \cdot \frac{\pi_H - \pi_L}{\pi_H}, \qquad \frac{1}{u'(w_L)} = \mu - \nu \cdot \frac{\pi_H - \pi_L}{1-\pi_H}.}
\]

**Interpretação.** Sob first-best (\(\nu = 0\), IC não-binding), \(u'(w_H) = u'(w_L) \Rightarrow w_H = w_L\). Sob second-best (\(\nu > 0\), IC binding), \(u'(w_H) < u'(w_L) \Rightarrow w_H > w_L\) — agente carrega risco para sinalizar esforço.

> **Eq-punch (no quadro):** *"Risco moral força o principal a quebrar o seguro do agente para criar incentivo. Cada centavo a mais em \(w_H - w_L\) é seguro perdido (custo) e incentivo ganho (benefício). Second-best resolve o trade-off."*

**Exemplo numérico (10 min).** Mesmos parâmetros do EP-2/EP-3 da pré-aula. \(u(w) = \sqrt w\), \(\bar U = 4\), \(c(a_H) = 4\), \(\pi_H = 0{,}7\), \(\pi_L = 0{,}3\).

- IR binding: \(0{,}7 \sqrt{w_H} + 0{,}3 \sqrt{w_L} - 4 = 4 \Rightarrow 0{,}7 \sqrt{w_H} + 0{,}3 \sqrt{w_L} = 8\). (eq.A)
- IC binding: \((0{,}7 - 0{,}3) [\sqrt{w_H} - \sqrt{w_L}] = 4 \Rightarrow \sqrt{w_H} - \sqrt{w_L} = 10\). (eq.B)

Sistema: de (B), \(\sqrt{w_H} = 10 + \sqrt{w_L}\). Substituindo em (A): \(0{,}7(10 + \sqrt{w_L}) + 0{,}3 \sqrt{w_L} = 8 \Rightarrow 7 + \sqrt{w_L} = 8 \Rightarrow \sqrt{w_L} = 1\), logo \(w_L = 1\). E \(\sqrt{w_H} = 11\), logo \(w_H = 121\). **Salário esperado:** \(0{,}7 \cdot 121 + 0{,}3 \cdot 1 = 84{,}7\). Compare com first-best \(w^*_H = 64\) — diferença \(84{,}7 - 64 = 20{,}7\) é o **prêmio de risco moral**.

#### B3.d (8 min) — Equivalência sob neutralidade do agente

> "E se o agente também é neutro ao risco?"

Quadro: \(u(w)\) linear \(\Rightarrow u'(w) = 1\) constante. CPOs viram:

\[
1 = \mu + \nu \cdot \frac{\pi_H - \pi_L}{\pi_H}, \qquad 1 = \mu - \nu \cdot \frac{\pi_H - \pi_L}{1-\pi_H}.
\]

Subtraindo: \(0 = \nu \cdot (\pi_H - \pi_L) [1/\pi_H + 1/(1-\pi_H)] = \nu \cdot (\pi_H - \pi_L)/[\pi_H(1-\pi_H)]\). Como \(\pi_H \neq \pi_L\), conclui-se \(\nu = 0\). **IC não é binding em second-best com agente neutro.**

> *"Por quê? Porque o principal pode 'vender o output' ao agente: principal recebe taxa fixa = lucro esperado, agente fica residual claimant, escolhe \(a_H\) por interesse próprio. Sem perda de seguro porque agente neutro. Second-best = first-best.**

**Implicação.** O custo do risco moral é **especificamente** o custo de "quebrar o seguro do agente avesso". Sob neutralidade, o trade-off some.

#### B3.e (7 min) — Aplicação: stock options + Bolsa Família + relative performance evaluation

**Stock options para CEO (3 min):** O modelo padrão. Acionistas (P, neutros — diversificados) contratam CEO (A, avesso — não pode diversificar exposição à firma). Esforço CEO não-observável; preço da ação observável e ruidoso. Stock options dão ao CEO fração crescente do preço acima de strike — \(w_H > w_L\) na nossa notação. Holmström-Milgrom (1987) generaliza para contínuo.

**Box Brasil 🇧🇷 — Bolsa Família como contrato condicional (2 min):** transferência condicionada a frequência escolar (\(\ge 85\%\)) + acompanhamento de saúde. Esses são **sinais verificáveis** do "esforço educacional/sanitário" da família. Sem condicionalidade: salário fixo, agente desvia. Com condicionalidade: implementa IC formal. Glewwe-Olinto 2004, Soares et al. 2010 documentam efeitos positivos sobre frequência atribuíveis à condicionalidade.

**Relative Performance Evaluation (2 min):** quando há ruído **comum** entre múltiplos agentes (e.g., choque setorial), comparar com peers filtra o ruído. Salário ótimo depende de \(y - \bar y_{-i}\) (relativo aos outros), não \(y\) bruto. Holmström (1979) **fórmula informativa**: pesos proporcionais à informatividade de cada sinal.

### Saída do Bloco 3

A sala tem que poder responder:

- "First-best em P-A?" → salário fixo, IR binding, P neutro absorve risco.
- "Second-best em P-A com agente avesso?" → \(w_H > w_L\), IR + IC binding, perda de bem-estar.
- "Quando second-best = first-best?" → agente neutro ao risco.

### Transição (P2)

> "Pausa de 10 min. Quando voltarem, fechamos com aplicações + extensões: Mirrlees (taxação ótima), Grossman-Hart (fronteiras da firma), e ponte Aula 9."

---

## Pausa 2 — 10 min (21:50–22:00)

---

## Bloco 4 — Aplicações + extensões (Mirrlees, Grossman-Hart, ACA, Bolsa Família) (25 min)

**22:00–22:25.**

### Objetivo

1. Mirrlees (1971) — taxação ótima como mecanismo de revelação de tipo.
2. Grossman-Hart (1983) — principal-agente como framework para fronteiras da firma + contratos incompletos.
3. Síntese: 3 falhas + 3 vias institucionais (regulação, contratos condicionados, sinalização).

### Estrutura interna (25 min)

#### B4.a (8 min) — Mirrlees (1971): taxação ótima

Cite: Mirrlees, J. A. (1971). "An Exploration in the Theory of Optimum Income Taxation." *Review of Economic Studies* 38(2), 175–208, [DOI 10.2307/2296779](https://doi.org/10.2307/2296779). (Nobel 1996.)

> "Mirrlees aplicou a teoria de seleção adversa à taxação progressiva: governo (P) quer redistribuir mas não observa **produtividade individual** (\(\theta\) — *hidden type*); observa apenas **renda** \(y = \theta a\) (esforço × produtividade). Tributo ótimo \(T(y)\) deve resolver IC + IR sobre a coleção contínua de tipos."

Quadro: forma reduzida do problema:

\[
\max_{T(\cdot)} \int W^\theta \cdot V(\theta, T) \, dF(\theta)
\]

s.a. **IC para todos os pares de tipos**: agente de tipo \(\theta\) prefere reportar verdadeiramente. Resolve via *envelope theorem* + integração de IC ao longo do intervalo de tipos.

**Resultado central:** alíquota marginal **não é monotonicamente crescente em renda**; pode ser zero no topo (porque tipo mais produtivo é "irrelevante" para IC dos abaixos) e não-negativa em baixos. **Estrutura U-invertida** da alíquota marginal ótima sob hipóteses padrão.

> *"Mirrlees é um dos resultados mais surpreendentes da teoria — a 'sabedoria popular' diria alíquota crescente; teoria diz U-invertida (zero no topo, baixa-mas-positiva no meio, mais alta nos baixos como compensação por desincentivo). Implicação política: design tributário ótimo não é trivialmente progressivo."*

**Box Brasil 🇧🇷 — IR progressivo brasileiro:** estrutura de alíquotas atual (até R\$ 22.847,76 isento, depois 7,5%, 15%, 22,5%, 27,5%) é uniformemente progressiva — não U-invertida. Pode-se argumentar que essa estrutura é second-best por restrições adicionais (informalidade, capacidade fiscal). Discussão:

- **Informalidade:** alíquota marginal alta no meio incentiva informalidade (sair do registro). Mirrlees-puro ignora; Brasil real tem que considerar.
- **Capacidade fiscal:** alíquota zero no topo da Mirrlees pura é resultado teórico que requer alta credibilidade do governo.

Limites: Mirrlees é instrutivo como referência teórica; aplicação requer ajustes substanciais.

#### B4.b (7 min) — Grossman-Hart (1983) e extensões

Cite: Grossman, S. J., & Hart, O. D. (1983). "An Analysis of the Principal-Agent Problem." *Econometrica* 51(1), 7–45, [DOI 10.2307/1912246](https://doi.org/10.2307/1912246).

> "Grossman-Hart (1983) estende Holmström para o framework canônico de principal-agente com aplicação a fronteiras da firma e contratos incompletos."

Quadro: ideia central.

- **Contratos incompletos.** Em economia real, não se pode escrever contrato que cobre todas as contingências futuras. **Direitos residuais de controle** (quem decide o que não está especificado) tornam-se cruciais.
- **Aplicação a fronteiras da firma:** quando duas atividades produtivas têm interação não-completamente contratável (e.g., investimento específico + comportamento ex-post), **integração vertical** — colocar as duas sob mesmo principal — pode ser Pareto-superior.
- **Hart-Moore (1990)** e **Hart-Tirole (1988)** desenvolveram esse framework. Hart, Williamson e Coase tiveram Nobel 1991, 2009, 2016 — toda a tradição de "Property Rights Theory of the Firm" desce daqui.

> *"Para o MPE: a literatura tem 50+ anos e desce de Holmström + Grossman-Hart + Williamson. Aplicação principal: contratos de M&A, terceirização vs. integração, governança corporativa."*

#### B4.c (10 min) — Síntese das 3 falhas + 3 vias institucionais

Quadro com tabela síntese (importante!):

| Falha (Aula) | Mecanismo | Vias institucionais |
|---|---|---|
| **Incompletude (Aula 6)** | Faltam ativos no span | Mercados completos (idealizado); Radner com expectativas; ativos derivativos; AD |
| **Externalidade + bem público (Aula 7)** | Ação fora do preço | Pigou (taxa); Coase (barganha); cap-and-trade; Lindahl; VCG; Ostrom |
| **Informação assimétrica (Aula 8)** | Restrição IR + IC | Sinalização (Spence — Aula 9); contratos com revelação (mecanismos diretos VCG); regulação + mandato (ACA, ANS); reputação |

> *"Cada falha tem múltiplas vias institucionais. Economias reais usam combinações. **A teoria não dá receita única — dá vocabulário para diagnóstico e desenho.**"*

#### B4.d (Box Mundo + ponte) — Grossman-Hart como framework canônico

> "Grossman-Hart 1983 é o paper canônico de principal-agente. Aplicações industriais: design de stock options, terceirização vs. integração, governança corporativa. Hart Nobel 2016."

### Saída do Bloco 4

A sala tem que poder responder:

- "Mirrlees aplicação?" → taxação progressiva como mecanismo de revelação de tipo; alíquota marginal U-invertida.
- "Grossman-Hart aplicação?" → fronteiras da firma + contratos incompletos.
- "3 falhas + vias?" → incompletude, externalidade, info assimétrica; cada uma com suas vias institucionais.

---

## Bloco 5 — Síntese + ponte Aula 9 (5 min)

**22:25–22:30.**

### Roteiro

#### B5.a (3 min) — Síntese da Aula 8

Quadro com tabela síntese:

| Conceito | Resultado |
|---|---|
| Tipologia | hidden type (sel.adv.) vs. hidden action (risco moral) |
| Akerlof | unraveling: \(p^* \to 0\) sob \(\beta < 2\); colapso completo |
| R-S | separador (H completo, L distorcido); inexistência possível sob \(\lambda\) baixo |
| Holmström first-best | \(w\) fixo, P absorve risco |
| Holmström second-best | \(w_H > w_L\) com IC binding; perda de bem-estar |
| Equivalência | agente neutro \(\Rightarrow\) second-best = first-best |

> *"Aula 8 catalogou a terceira das três falhas clássicas do EG. Aulas 6–7–8 montaram o quadro completo das falhas. Aula 9 vai introduzir mecanismos descentralizados que respondem: sinalização (Spence) + matching (Gale-Shapley)."*

#### B5.b (2 min) — Ponte Aula 9 (sinalização + matching)

> "Aula 9 (17 de junho): **Sinalização e Matching**. Pergunta-driver: e se o agente *informado* (não o principal) tomar a iniciativa? Spence (1973): educação como sinal de produtividade. Gale-Shapley (1962): mecanismos de matching estável (residency match medical, escolas públicas). **A revelação como ação estratégica do agente.**"

> "**Pré-monitoria 5** com Alberto, sábado 20/06, cobre Aulas 8 + 9 + revisão para a Avaliação Final (24/06). **Avaliação Final:** quarta 24/06, 19:00, 3h, presencial, A4 de consulta."

> *"Boa noite. Quinta 03/07 às 00:00 BRT sai o gabarito 5-passos dos exercícios avaliativos das Aulas 1–9. Vejo todos na quarta 17/06 com a Aula 9."*

---

## Apêndices operacionais

### A. Material para o quadro

- Slide 1 (Bloco 1): "Diagnóstico — assimetria quebra 1º TBE via IR + IC."
- Slide 2 (Bloco 1): Tipologia — hidden type vs. hidden action.
- Slide 3 (Bloco 1): Akerlof setup + equilíbrio simétrico.
- Slide 4 (Bloco 1): Akerlof equilíbrio assimétrico + unraveling.
- Slide 5 (Bloco 1): Box Brasil carros usados + Box Mundo Akerlof referência.
- Slide 6 (Bloco 2): R-S setup + first-best.
- Slide 7 (Bloco 2): Single-crossing geométrico.
- Slide 8 (Bloco 2): Equilíbrio separador R-S.
- Slide 9 (Bloco 2): Inexistência possível.
- Slide 10 (Bloco 2): Box Brasil ANS + Box Mundo ACA.
- Slide 11 (Bloco 3): Holmström setup.
- Slide 12 (Bloco 3): First-best (ação observável).
- Slide 13 (Bloco 3): Second-best Lagrangiano + CPOs.
- Slide 14 (Bloco 3): Exemplo numérico Bernoulli √.
- Slide 15 (Bloco 3): Equivalência sob neutralidade.
- Slide 16 (Bloco 3): Box Brasil Bolsa Família + Box Mundo stock options.
- Slide 17 (Bloco 4): Mirrlees taxação ótima.
- Slide 18 (Bloco 4): Grossman-Hart fronteiras da firma.
- Slide 19 (Bloco 4): Síntese 3 falhas + 3 vias.
- Slide 20 (Bloco 5): Tabela síntese da aula.
- Slide 21 (Bloco 5): Ponte Aula 9 (Spence + Gale-Shapley).

### B. Variáveis de ajuste em tempo real

| Sintoma | Ajuste |
|---|---|
| Sala fluindo, Bloco 1 acaba em 30 min | Usa 10 min extra no Bloco 3 (Holmström com numerical exemplo expandido) ou no Bloco 4 (Mirrlees IR brasileiro mais detalhado) |
| Sala travada em Akerlof (Bloco 1) | Encolhe Bloco 4 em 5 min; usa pra repetir o exemplo numérico Akerlof no Bloco 1.c ainda |
| Pergunta sobre derivação de IC com tipos contínuos (Mirrlees) | "É integração de IC ao longo dos tipos via envelope theorem. Resultado: alíquota U-invertida sob hipóteses padrão. Demonstração detalhada: Salanié 2003 ou MWG §13.D." |
| Pergunta sobre Stiglitz-Weiss racionamento de crédito | "Stiglitz-Weiss 1981 *AER*: bancos racionam crédito (não emprestam mais a juros mais altos) porque juros altos atraem riscos altos (sel.adv.) ou induzem risk-shifting (risco moral). Citamos como aplicação canônica." |
| Pergunta sobre Myers-Majluf | "Myers-Majluf 1984 *J. Financial Econ*: emissão de ações sinaliza informação privada — empresas com info positiva escolhem dívida; com info negativa, ações. Pecking order theory desce daqui." |
| Pergunta sobre cheap talk / Crawford-Sobel | "Crawford-Sobel 1982 *Econometrica*: comunicação não-verificável tem informação parcial; eq. de babbling (silêncio total) ou eq. com partições. Fora do escopo desta aula." |
| Pergunta sobre VCG vs. Mirrlees | "VCG (Aula 7): mecanismo direto para decisão pública discreta com revelação dominante. Mirrlees: extensão para taxação contínua. Estrutura conceitual idêntica; aplicação distinta." |

### C. Telemetria pós-aula (admin dashboard)

Após a aula, conferir em `admin.html`:

- **Confidence ratings post-Bloco 1** (Akerlof + tipologia): se P50 < 3 (de 5), unraveling não cravou — ajustar pré-monitoria 5 com Alberto.
- **Quiz pós-aula 8 — Q3 ou Q4 (R-S)**: se acerto 1ª < 50%, R-S separador precisa de mais tempo na pré-M5.
- **Quiz pós-aula 8 — Q5/Q6 (Holmström)**: se acerto 1ª < 40%, derivação Lagrangiano second-best foi rápida demais; revisitar Bloco 3.c.
- **Quiz pós-aula 8 — Q9/Q10 (extensões)**: se acerto 1ª < 30%, Mirrlees + Grossman-Hart foram densos demais; cortar amplitude na pré-M5.
- **Reflexão "nebuloso"**: se >30% mencionam "single-crossing" ou "second-best", Bloco 2/3 foi denso demais.

---

## Anti-padrões (Referee 2)

- ❌ **Não derivar Mirrlees formalmente.** Cite o resultado (alíquota U-invertida); sketch via envelope theorem.
- ❌ **Não derivar inexistência de equilíbrio R-S formalmente** (precisa de teoria de jogos contínua). Argumento informal + intuição "pooling não-Nash".
- ❌ **Não invocar Crawford-Sobel cheap talk como teorema central.** Citar como extensão.
- ❌ **Não pedir álgebra desnecessária no Lagrangiano de Holmström.** Manter \(u(w) = \sqrt w\) e parâmetros que facilitem o sistema 2x2.
- ❌ **Não introduzir mecanismos de revelação de Myerson sem motivação.** Manter o foco em IR + IC + Lagrangiano.
- ❌ **Não citar artigos sem confirmação de DOI.** DOIs validados em 2026-05-08:
  - Akerlof (1970) [10.2307/1879431](https://doi.org/10.2307/1879431)
  - Rothschild-Stiglitz (1976) [10.2307/1885326](https://doi.org/10.2307/1885326)
  - Holmström (1979) [10.2307/3003320](https://doi.org/10.2307/3003320)
  - Mirrlees (1971) [10.2307/2296779](https://doi.org/10.2307/2296779)
  - Grossman-Hart (1983) [10.2307/1912246](https://doi.org/10.2307/1912246)
  - Hardin (1968) — irrelevante aqui (Aula 7)
  - Wilson (1977) — *J. Econ Theory* 16(2): 167–207; **DOI [verificar]** se citado em quiz/exerc, sem fabricação.
  - Stiglitz-Weiss (1981) — *AER* 71(3): 393–410; sem DOI canônico, citar por veículo.
- ❌ **Não fechar com "isso resolve assimetria".** Fecha com **questão**: e se o agente *informado* tomar iniciativa? (Aula 9 — sinalização + matching.)
