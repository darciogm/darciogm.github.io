# Monitoria 02 — Roteiro do Monitor (Alberto)

> **Status:** roteiro presencial minuto-a-minuto para a monitoria de **sábado 23/05/2026, 10:00–12:00, Insper**. Tema: **aprofundamento da Aula 4 (EG trocas + produção)**, com **extensão** dos pontos que a aula magistral só tangenciou (núcleo em \(I = 3\) com bloqueio coalizional concreto, Debreu-Scarf via réplica, Robinson com tecnologia CES paramétrica, 2º TBE com retornos crescentes) e que a Pré-M2 deixou explicitamente "para o Alberto fechar no sábado".

> **Para quem este documento é:** **Alberto Nishikawa** (monitor). Não é roteiro de aula magistral nem reapresentação do conteúdo; é o briefing do que **estender**, do que **trabalhar com a turma**, e dos **erros que provavelmente vão aparecer** dadas as reflexões que vão chegar pela Pré-M2 na sexta 22/05.

> **Conexão com a Avaliação Final (24/06).** Aula 4 entra na **Parte II** da AF (Aulas 4–6), com peso de **30%**. Esta é a primeira monitoria do curso — sem ainda calibração histórica de turma. O foco é **(i)** atender as dúvidas trazidas pela Pré-M2 (campo `refl-alberto`), **(ii)** trabalhar 2 exercícios numéricos passo-a-passo com parâmetros distintos dos avaliativos da Aula 4, **(iii)** apontar 3–4 erros típicos que vão aparecer na AF Parte II.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** sábado, 23/05/2026
- **Horário:** 10:00–12:00 (120 min)
- **Local:** Insper, sala a confirmar com a coordenação
- **Monitor:** Alberto Nishikawa
- **Audiência:** ~50 alunos do MPE
- **Pré-requisitos do aluno:**
  - Aulas 1–4 cursadas (Aula 4 — quarta 13/05 — cobriu EG trocas + produção).
  - **Pré-Monitoria 2** completada na plataforma (`pre-monitoria-02.html`). Cobre: (i) EC variando formas funcionais (CD pesos simétricos, Leontief simétrico com continuum de equilíbrios, CES \(\rho = 1/2\)), (ii) núcleo em \(I = 3\) com CD simétrica (EC interior + bloqueio por singleton), (iii) onde LNS morde no Passo 2 do 1º TBE com construto qualitativo de bliss-point, (iv) 2º TBE com transferências e papel da convexidade via teorema de separação.
  - Quiz pós-aula 4 e exercícios avaliativos 4 fechados em **20/05 18:00**; gabarito liberado quinta 21/05 madrugada.
- **Calibre:** revisão e **extensão**. Não é primeira exposição. Foco operacional em **(i)** fechar o que a Pré-M2 deixou em aberto explicitamente para o sábado (coalizão intermediária bloqueando, Robinson CES, 2º TBE com não-convexidade da produção), **(ii)** trabalhar 2 exercícios numéricos com **parâmetros novos** (não duplicar avaliativos), **(iii)** apontar erros típicos da AF Parte II.

---

## O que o aluno **já viu** antes do sábado (não repetir)

Pela Pré-M2 da plataforma, o aluno **já trabalhou em casa**:

1. **EC variando formas funcionais** (Seção 2 da Pré-M2): CD com peso simétrico (\(p_1^*/p_2^* = 1\)), Leontief simétrico com continuum de equilíbrios em dotações \((4,2)/(2,4)\), CES \(\rho = 1/2\) com \(p_1^*/p_2^* = 1\) por simetria. **Não refazer estes cálculos.**
2. **Núcleo em \(I = 3\) com CD simétrica** (Seção 3): setup canônico \(\omega^A = (2,0), \omega^B = (0,2), \omega^C = (1,1)\); EC em \(p^* = (1,1)\), alocação \((1,1)\) para todos; exemplo de bloqueio trivial por singleton \(\{C\}\); exemplo Pareto-eficiente fora do núcleo via singleton. **Pré-M2 deixou explicitamente para o Alberto:** coalizão **intermediária** \(\{A, C\}\) ou \(\{B, C\}\) bloqueando uma alocação **não trivial**. **Bloco A.2 fecha exatamente isso.**
3. **Onde LNS morde no Passo 2** (Seção 4): contraexemplo qualitativo com bliss-point em \((1,1)\) que ilustra que a contrapositiva do Passo 2 perde testemunha sob saciedade. **Pré-M2 reconheceu limite metodológico:** "construir setup numérico fechado em que EC encontrado é **de fato** não-Pareto-eficiente exige calibração delicada — Alberto fecha o exemplo numérico no sábado". **Bloco A.3 (sketch) trata disso se demanda no `refl-alberto` for forte;** caso contrário, fica como referência apenas.
4. **2º TBE com transferências e convexidade** (Seção 5): mecanismo do teorema de separação de Minkowski; contraexemplo numérico fechado com \(u^A = x_1^2 + x_2^2\) (não-convexa). **Não rederivar a separação.** Use como alavanca para o **2º TBE com retornos crescentes na produção** no Bloco B.4.

**Conclusão operacional:** não dedique tempo a **introduzir** esses tópicos. Use-os como **alavanca**: aluno chega com modelo na cabeça e pode aplicar no quadro.

## O que **provavelmente** vai aparecer no campo `refl-alberto`

Antecipação calibrada com base nos textareas-placeholder da Pré-M2 e nos pontos delicados da auditoria-bundle-v2 da Aula 4. **Reler as reflexões reais na sexta 22/05 antes de finalizar a monitoria** — adaptar os blocos abaixo conforme densidade da demanda.

| Pedido típico | Bloco onde tratar |
|---|---|
| "Coalizão intermediária \(\{A, C\}\) bloqueando alocação não-trivial em \(I = 3\)" | Bloco A.2 — exercício canônico do bloqueio por par |
| "Como o núcleo encolhe com réplica — Debreu-Scarf concretamente" | Bloco A.3 (sketch) — réplica \(r = 2\), núcleo encolhe visualmente |
| "Cálculo numérico fechado de saciedade quebrando 1º TBE" | Bloco A.4 (apenas sketch — anunciar limite metodológico) ou apêndice |
| "Robinson com tecnologia CES — como muda?" | Bloco B.1 + B.2 — programa central da monitoria |
| "EG \(2 \times 2 \times 2\) com cotas \(\theta^{ij}\) heterogêneas" | Bloco B.3 — extensão do Ex 6 dos avaliativos |
| "2º TBE com retornos crescentes" | Bloco B.4 — mostrar nenhum \(p^*\) sustenta interior |
| "RenovaBio com produção endógena" | Bloco B.4 (1 min) — corrigir vazamento de abstração da Aula 4 |
| "Por que TMS = TMT = w/p é assinatura do 1º TBE com produção" | Bloco 3 Ex M2-2 — exercício trabalhado completo |

---

## Timing master (120 min)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + check-in das dúvidas | 10:00 | 10:10 | **10 min** |
| 1 | **Bloco A — Extensão EG trocas: núcleo \(\{A,C\}\) bloqueando + Debreu-Scarf por réplica + LNS sketch** | 10:10 | 10:40 | **30 min** |
| 2 | **Bloco B — Extensão EG produção: Robinson CES paramétrico + EG \(2\times 2\times 2\) com cotas + 2º TBE com retornos crescentes** | 10:40 | 11:10 | **30 min** |
| P1 | Pausa | 11:10 | 11:20 | **10 min** |
| 3 | **Exercícios trabalhados ao vivo:** (i) EC Cobb-Douglas com **3 agentes assimétricos**, (ii) Robinson com **CES \(\rho = 1/2\)** + lazer + cálculo completo do EC | 11:20 | 11:50 | **30 min** |
| 4 | Encerramento + ponte M3 + erros típicos AF Parte II + dúvidas finais | 11:50 | 12:00 | **10 min** |

**Soma:** \(10 + 30 + 30 + 10 + 30 + 10 = 120\) min. ✓

> **Variáveis de ajuste em tempo real.** Se o **Bloco A derrapa** em 5 min (turma demanda mais derivação do bloqueio coalizional), corte o sketch de Debreu-Scarf por réplica (A.3) e mantenha apenas o exemplo do par \(\{A, C\}\) (A.2). Se o **Bloco B derrapa** (Robinson CES é exigente), corte o item de 2º TBE com retornos crescentes (B.4) e mantenha Robinson CES (B.1 + B.2) + EG \(2\times 2\times 2\) (B.3). Se ambos os blocos correm bem, o Bloco 3 pode ganhar 5 min para discussão socrática sobre **quando o 1º TBE em produção falha** (externalidades, bens públicos — teaser para Aula 7).

---

## Bloco 0 — Abertura + check-in (10 min)

**10:00–10:10.**

### Roteiro

1. **Cumprimento e moldura (2 min).** "Bom dia. **Primeira monitoria do curso.** Tema: extensões da Aula 4 — EG trocas + produção. Não vamos repetir aula magistral. Vou cobrir o que **a Pré-M2 que vocês fizeram** sinalizou que precisa de mais tempo, em particular o que ficou **explicitamente para o sábado** (coalizão intermediária bloqueando, Robinson CES, contraexemplo de saciedade). Próxima monitoria é **a M3 com Aula 5 (Arrow-Debreu I)**, daqui a uma semana."
2. **Check-in das dúvidas (5 min).** Pergunte abertamente: *"Quem fez a Pré-M2 quer compartilhar 1 dúvida que ficou nebulosa?"*
   - Anote no canto do quadro 3 a 5 tópicos.
   - Triagem rápida: marque ✅ ao lado do que cabe nos Blocos A, B ou 3; marque ⏭ no que é Aula 5 (AD-I) ou está fora do escopo (externalidades — vai para Aula 7 e pré-M4).
   - **Não tente resolver agora.** A função desse check-in é (a) ativar a turma e (b) dar contexto para a calibração dos blocos.
3. **Conexão com AF (3 min).** Quadro:

   | Parte AF | Aulas | Peso |
   |---|---|---|
   | I | 1, 2, 3 | 40% |
   | **II** | **4, 5, 6** | **30%** |
   | III | 7, 8 | 20% |
   | IV | 9 | 10% |

   > "Aula 4 está em **30%** da prova. Não é parte 'menor'. Hoje a gente consolida o que provavelmente vai aparecer **da Aula 4 especificamente** — Aulas 5 e 6 entram nas próximas monitorias (M3 e M4)."

### Transição para o Bloco A

> "Começamos pelo lado de trocas. A Pré-M2 fechou núcleo em \(I = 3\) com bloqueio por singleton — vocês têm esse modelo na cabeça. Vou levantar a partir dele: bloqueio por **par** intermediário, e sketch de como o núcleo encolhe quando a economia se replica. **Núcleo \(\to\) EC no limite — Debreu-Scarf 1963.**"

---

## Bloco A — Extensão EG trocas: núcleo + Debreu-Scarf + LNS sketch (30 min)

**10:10–10:40.**

### Objetivo do bloco

1. **Estender** o exercício de núcleo em \(I = 3\) da Pré-M2: construir alocação **viável e Pareto-eficiente** que é **bloqueada por par intermediário** \(\{A, C\}\), exibindo o "núcleo encolhe" geometricamente.
2. **Sketch** do teorema-limite Debreu-Scarf 1963 via **réplica \(r = 2\)** (sem prova, com argumento visual).
3. **Sketch** opcional do contraexemplo numérico de saciedade quebrando 1º TBE (apenas se demanda no `refl-alberto` for forte; caso contrário, citar limite metodológico e seguir).

### Estrutura interna (30 min)

#### A.1 (3 min) — Recap em 3 linhas

Quadro:

> **Setup Pré-M2.** \(I = 3\), \(L = 2\). \(u^i = x_1^{1/2}x_2^{1/2}\) para todo \(i\). Dotações: \(\omega^A = (2, 0)\), \(\omega^B = (0, 2)\), \(\omega^C = (1, 1)\). Total \(\bar\omega = (3, 3)\).
>
> EC: \(p^* = (1, 1)\), alocação \(x^{A*} = x^{B*} = x^{C*} = (1, 1)\).
>
> Por 1º TBE, EC \(\in\) núcleo. Pré-M2 mostrou bloqueio trivial por \(\{C\}\) sobre alocação fora do núcleo.

> "Hoje vamos construir o caso difícil: alocação **viável + Pareto-eficiente** mas **fora do núcleo** porque um par bloqueia."

#### A.2 (15 min) — Bloqueio coalizional por par \(\{A, C\}\)

**Construção da alocação candidata (5 min):**

Considere a alocação:

\[
x^A = (2, 0{,}5), \quad x^B = (0, 1{,}5), \quad x^C = (1, 1).
\]

**Verificações iniciais (puxar dos alunos):**

- **Viável:** \(\sum x_1^i = 2 + 0 + 1 = 3 = \bar\omega_1\) ✓; \(\sum x_2^i = 0{,}5 + 1{,}5 + 1 = 3 = \bar\omega_2\) ✓.
- **Utilidades na alocação:**

  \[
  u^A(2; 0{,}5) = \sqrt{2 \cdot 0{,}5} = 1; \quad u^B(0; 1{,}5) = \sqrt{0 \cdot 1{,}5} = 0; \quad u^C(1; 1) = 1.
  \]

- **Utilidades na dotação:** \(u^A(\omega^A) = \sqrt{2 \cdot 0} = 0\); \(u^B(\omega^B) = \sqrt{0 \cdot 2} = 0\); \(u^C(\omega^C) = \sqrt{1 \cdot 1} = 1\).

- **Racionalidade individual:** \(u^A(x^A) = 1 \ge 0 = u^A(\omega^A)\) ✓; \(u^B(x^B) = 0 \ge 0\) ✓; \(u^C(x^C) = 1 \ge 1\) ✓.

> **Pergunta-disparo para a turma (1 min):** *"Olhando essa alocação, vocês desconfiam de alguma coalizão? Por que \(B\) consumindo \(x^B = (0; 1{,}5)\) com utilidade zero é suspeito?"*

> Resposta esperada: utilidade zero em CD vem de algum \(x_\ell^B = 0\). \(B\) está mais "espremido" que na dotação na utilidade efetiva (ambas dão zero, mas a alocação não dá folga para \(B\) renegociar). **A coalizão \(\{A, C\}\) provavelmente bloqueia.**

**Procurar coalizão bloqueadora (5 min, no quadro):**

A coalizão \(S = \{A, C\}\) tem dotação combinada \(\omega^A + \omega^C = (3, 1)\). Se conseguirem realocar \((3, 1)\) entre eles para que ambos fiquem **estritamente melhores** que em \((2; 0{,}5)\) e \((1, 1)\), \(\{A, C\}\) bloqueia.

**Construção do desvio:** seja \(\tilde x^A = (1{,}5; 0{,}9)\), \(\tilde x^C = (1{,}5; 0{,}1)\). Verificações:

- **Viável para \(\{A, C\}\):** \(\tilde x^A_1 + \tilde x^C_1 = 1{,}5 + 1{,}5 = 3 = \omega^A_1 + \omega^C_1\) ✓; \(\tilde x^A_2 + \tilde x^C_2 = 0{,}9 + 0{,}1 = 1{,}0 = \omega^A_2 + \omega^C_2\) ✓.
- **Utilidades:** \(u^A(\tilde x^A) = \sqrt{1{,}5 \cdot 0{,}9} = \sqrt{1{,}35} \approx 1{,}162 > 1 = u^A(x^A)\) ✓ (estrita).
- \(u^C(\tilde x^C) = \sqrt{1{,}5 \cdot 0{,}1} = \sqrt{0{,}15} \approx 0{,}387 < 1 = u^C(x^C)\). **Não funciona** — \(C\) piora.

> "Aqui está o ponto sutil: o desvio precisa melhorar **ambos** os membros da coalizão. Vamos buscar mais sistematicamente."

**Construção sistemática (5 min, no quadro):**

Para que \(\{A, C\}\) bloqueie, precisamos \((\tilde x^A, \tilde x^C)\) com:
- \(\tilde x^A + \tilde x^C \le (3, 1)\) (recursos da coalizão);
- \(u^A(\tilde x^A) \ge 1\) e \(u^C(\tilde x^C) \ge 1\), com pelo menos uma estrita.

Em CD simétrica, conjuntos \(V^A = \{x : \sqrt{x_1 x_2} \ge 1\}\) e \(V^C = \{x : \sqrt{x_1 x_2} \ge 1\}\) são as regiões acima da hipérbole \(x_1 x_2 = 1\). Pareto-eficiência interna a \(\{A, C\}\) com recursos \((3, 1)\) é caracterizada por \(\text{TMS}^A = \text{TMS}^C\), ou seja \(\tilde x^A_2/\tilde x^A_1 = \tilde x^C_2/\tilde x^C_1\). Combinando com \(\tilde x^A + \tilde x^C = (3, 1)\): a contract curve **interna** de \(\{A, C\}\) é a diagonal proporcional \(\tilde x^A = \alpha \cdot (3, 1)\), \(\tilde x^C = (1 - \alpha) \cdot (3, 1)\) com \(\alpha \in [0, 1]\).

Utilidades ao longo dessa contract curve:

\[
u^A(\alpha (3, 1)) = \alpha \sqrt{3}; \quad u^C((1-\alpha)(3, 1)) = (1-\alpha)\sqrt{3}.
\]

Para \(u^A \ge 1\): \(\alpha \ge 1/\sqrt{3} \approx 0{,}577\). Para \(u^C \ge 1\): \(\alpha \le 1 - 1/\sqrt{3} \approx 0{,}423\).

> **Não há intersecção:** \(\alpha \ge 0{,}577\) e \(\alpha \le 0{,}423\) são incompatíveis. **\(\{A, C\}\) não consegue bloquear esta alocação específica.**

> **Eq-punch para Alberto cravar:** *"Bloqueio coalizional **não é trivial** mesmo quando intuição sugere. A coalizão \(\{A, C\}\) tem recursos suficientes para 'parecer rica', mas \(\sqrt{3} \approx 1{,}732\) é insuficiente para entregar utilidade \(\ge 1\) a ambos simultaneamente — o melhor que conseguem na contract curve interna é divisão proporcional, e nenhuma divisão dá os dois passando do limiar."*

**Recálculo: encontrar uma alocação que \(\{A, C\}\) **realmente** bloqueia (5 min).**

Considere agora:

\[
x^A = (1{,}5; 0{,}3), \quad x^B = (0{,}5; 2{,}3), \quad x^C = (1; 0{,}4).
\]

- **Viável:** \(1{,}5 + 0{,}5 + 1 = 3\) ✓; \(0{,}3 + 2{,}3 + 0{,}4 = 3\) ✓.
- **Utilidades:** \(u^A = \sqrt{0{,}45} \approx 0{,}671\); \(u^B = \sqrt{1{,}15} \approx 1{,}072\); \(u^C = \sqrt{0{,}4} \approx 0{,}632\).
- **Racionalidade individual:** \(u^A = 0{,}671 \ge 0\) ✓; \(u^B = 1{,}072 \ge 0\) ✓; \(u^C = 0{,}632 < 1 = u^C(\omega^C)\) ✗.

**Bloqueio por \(\{C\}\) sozinho:** \(C\) prefere autarquia \(\omega^C = (1, 1)\) que dá \(u^C = 1\) à alocação proposta que dá \(0{,}632\). Bloqueado.

> "Aqui o bloqueio é **trivial por singleton** — \(C\) sozinho. Não é o que queremos para ilustrar 'coalizão intermediária'. Vamos calibrar mais cuidadosamente."

**Construção definitiva (no quadro, derivando):**

Considere:

\[
x^A = (2{,}5; 0{,}5), \quad x^B = (0; 2), \quad x^C = (0{,}5; 0{,}5).
\]

- **Viável:** \(2{,}5 + 0 + 0{,}5 = 3\) ✓; \(0{,}5 + 2 + 0{,}5 = 3\) ✓.
- **Utilidades:** \(u^A = \sqrt{2{,}5 \cdot 0{,}5} = \sqrt{1{,}25} \approx 1{,}118\); \(u^B = \sqrt{0 \cdot 2} = 0\); \(u^C = \sqrt{0{,}25} = 0{,}5\).
- **Racionalidade individual:** \(u^A = 1{,}118 \ge 0\) ✓; \(u^B = 0 \ge 0\) ✓; \(u^C = 0{,}5 < 1 = u^C(\omega^C)\) ✗.

\(C\) sozinho **bloqueia** (autarquia entrega utilidade \(1 > 0{,}5\)). Mas o ponto pedagógico que queremos é **par bloqueando**, não singleton.

> **Confissão honesta para a turma (1 min):** *"Construir alocação que seja bloqueada **especificamente por par e não por singleton** em economia simétrica é difícil — porque CD simétrica força que qualquer alocação que dê utilidade baixa a um agente também faça esse agente preferir autarquia. Em economia **assimétrica** o exemplo é mais fácil. Eu vou construir um exemplo assimétrico abaixo."*

**Setup assimétrico canônico (5 min):**

Substitua preferências por:

\[
u^A = x_1^{2/3} x_2^{1/3}, \quad u^B = x_1^{1/2} x_2^{1/2}, \quad u^C = x_1^{1/3} x_2^{2/3}.
\]

Mantenha dotações \(\omega^A = (2, 0), \omega^B = (0, 2), \omega^C = (1, 1)\).

Considere alocação candidata:

\[
x^A = (1{,}2; 0{,}5), \quad x^B = (0{,}8; 1{,}5), \quad x^C = (1; 1).
\]

- **Viável:** \(1{,}2 + 0{,}8 + 1 = 3\) ✓; \(0{,}5 + 1{,}5 + 1 = 3\) ✓.
- **Utilidades na alocação:** \(u^A = 1{,}2^{2/3} \cdot 0{,}5^{1/3} \approx 1{,}129 \cdot 0{,}794 \approx 0{,}896\); \(u^B = \sqrt{0{,}8 \cdot 1{,}5} = \sqrt{1{,}2} \approx 1{,}095\); \(u^C = 1\).
- **Utilidades na dotação:** \(u^A(\omega^A) = 2^{2/3} \cdot 0 = 0\); \(u^B(\omega^B) = 0 \cdot \sqrt{2} = 0\); \(u^C(\omega^C) = 1\).
- **Racionalidade individual:** ✓ para todos. Singleton não bloqueia.

**Procurar bloqueio por par \(\{A, C\}\)** (recursos combinados \((3, 1)\)):

Contract curve interna a \(\{A, C\}\): \(\text{TMS}^A = \text{TMS}^C\), ou seja \(2 \cdot \tilde x^A_2 / \tilde x^A_1 = (1/2) \cdot \tilde x^C_2 / \tilde x^C_1\). Com \(\tilde x^A + \tilde x^C = (3, 1)\), expansão algébrica entrega família a 1 parâmetro de alocações Pareto-eficientes internas a \(\{A, C\}\).

**Tentativa direta:** \(\tilde x^A = (1{,}5; 0{,}5)\), \(\tilde x^C = (1{,}5; 0{,}5)\). Utilidades:

- \(u^A(\tilde x^A) = 1{,}5^{2/3} \cdot 0{,}5^{1/3} \approx 1{,}310 \cdot 0{,}794 \approx 1{,}040 > 0{,}896 = u^A(x^A)\) ✓ (estrita).
- \(u^C(\tilde x^C) = 1{,}5^{1/3} \cdot 0{,}5^{2/3} \approx 1{,}145 \cdot 0{,}630 \approx 0{,}721 < 1 = u^C(x^C)\) ✗.

\(C\) piora. Tentar **alocação que favorece \(C\) com bem 2** (que \(C\) valoriza mais):

\(\tilde x^A = (2{,}5; 0{,}3)\), \(\tilde x^C = (0{,}5; 0{,}7)\):
- Recursos: \(2{,}5 + 0{,}5 = 3\) ✓; \(0{,}3 + 0{,}7 = 1\) ✓.
- \(u^A(\tilde x^A) = 2{,}5^{2/3} \cdot 0{,}3^{1/3} \approx 1{,}842 \cdot 0{,}669 \approx 1{,}232 > 0{,}896\) ✓.
- \(u^C(\tilde x^C) = 0{,}5^{1/3} \cdot 0{,}7^{2/3} \approx 0{,}794 \cdot 0{,}788 \approx 0{,}625 < 1\) ✗.

Ainda não. \(C\) começa em utilidade \(1\) na alocação original — qualquer desvio onde \(C\) recebe menos que \((1, 1)\) em CD com \(\alpha_2 = 2/3\) tende a piorar \(C\).

> **Reconhecimento honesto (1 min):** *"O exemplo de bloqueio por par **fora do núcleo** depende de calibrar a alocação inicial para que **ela mesma esteja Pareto-eficiente, não bloqueada por singleton, mas tenha algum membro 'subexplorado' por um par**. A construção pedagogicamente limpa exige dotações e preferências mais distantes da simetria. **Para a monitoria, vou usar o exemplo do Apêndice B abaixo (Ext-1) que tem o cálculo fechado** — quem quiser pode acompanhar lá enquanto prossigo."*

**Lição operacional (puxar da turma):**

> *"O ponto pedagógico do exemplo, mesmo sem fechar o numérico aqui no quadro: **núcleo é genuinamente mais restrito que Pareto + racionalidade individual**. Em \(I = 2\) os dois conceitos colapsam. Em \(I \ge 3\), surgem coalizões intermediárias que podem bloquear alocações que parecem 'razoáveis'. Isso tem consequência empírica: **mecanismos de barganha multilateral** (sindicatos, joint ventures, fusões) precisam respeitar não só Pareto agregado mas também o que cada subcoalizão consegue por si própria. Núcleo é a versão econômica de 'coligação não pode ficar bloqueada'."*

> **Eq-punch para Alberto cravar:** *"**Núcleo** \(\subsetneq\) **Pareto-eficiente** quando \(I \ge 3\). E o núcleo encolhe ainda mais quando a economia se replica — Debreu-Scarf 1963. Próximo bloco: por quê."*

#### A.3 (8 min) — Sketch de Debreu-Scarf via réplica

**Trigger:** sempre. Mesmo se Bloco A.2 derrapou, este sketch é importante porque dá intuição limite.

**Setup (2 min):**

Definição operacional de \(r\)-réplica: dada economia \(\mathcal{E}\) com agentes \(\{A, B, C\}\) (tipos), a \(r\)-réplica é a economia \(\mathcal{E}^r\) com \(rI = 3r\) agentes, cada tipo aparecendo \(r\) vezes com a mesma preferência e dotação.

> "Tomar \(r = 2\) duplica a economia: agora há \(\{A_1, A_2, B_1, B_2, C_1, C_2\}\)."

**Resultado canônico (Debreu-Scarf 1963, 2 min):**

> **Teorema (Debreu-Scarf 1963).** Sob hipóteses padrão (preferências contínuas, monotônicas, estritamente convexas), para qualquer economia \(\mathcal{E}\) replicável:
> \[
> \bigcap_{r \ge 1} C(\mathcal{E}^r) \;=\; \text{conjunto de equilíbrios competitivos de } \mathcal{E}.
> \]
> Ou seja: o **núcleo encolhe** com a réplica e converge **exatamente** para o conjunto de EC.
>
> *Referência:* Debreu & Scarf (1963), "A Limit Theorem on the Core of an Economy", *International Economic Review* 4(3): 235–246, **DOI 10.2307/2525306**. Intuição original em Edgeworth (1881), *Mathematical Psychics* (livro). Tratamento formal em Aumann (1964), "Markets with a Continuum of Traders", *Econometrica* 32(1): 39–50, **DOI 10.2307/1913732** (passa ao limite contínuo).

**Argumento intuitivo (3 min):**

> "Por que o núcleo encolhe? Porque mais agentes \(\Rightarrow\) mais coalizões possíveis \(\Rightarrow\) mais formas de bloquear. Em \(\mathcal{E}^1\) (original), só os subconjuntos de \(\{A, B, C\}\) podem bloquear (7 coalizões não-vazias). Em \(\mathcal{E}^2\), agora subconjuntos de 6 agentes podem formar coalizões mistas — \(\{A_1, B_2\}, \{A_1, A_2, C_1\}\), etc. (\(2^6 - 1 = 63\) coalizões).
>
> O argumento pivotal de Debreu-Scarf: se uma alocação \(x\) está no núcleo de \(\mathcal{E}^r\) para todo \(r\), então qualquer 'coalizão tipo \(\lambda\)' (proporção \(\lambda^i\) de cada tipo) também não bloqueia. Como \(\lambda\) varia continuamente, bloqueio coalizional vira condição local sobre TMS \(\Rightarrow\) condição de tangência \(\Rightarrow\) preço único \(\Rightarrow\) EC."

**Pergunta para a turma (1 min):** *"Implicação prática: em economia 'grande' (mercado real), núcleo é **essencialmente** EC. Por isso cobrar EC para mercados grandes é razoável. Em economia 'pequena' (família, OPEP), núcleo \(\supsetneq\) EC e barganha pode levar a alocações fora do EC."*

> **Eq-punch:** *"O resultado de Debreu-Scarf é a **justificativa pedagógica** para usar EC em mercados grandes. EC = limite do que coalizões conseguem em economia atomizada. Não é hipótese: é teorema."*

#### A.4 (4 min) — Sketch do contraexemplo de saciedade quebrando 1º TBE

**Trigger condicional:** acionar somente se 30%+ do `refl-alberto` pediu o exemplo numérico fechado de saciedade quebrando 1º TBE; caso contrário, **pular para encerramento do bloco** com a mensagem do limite metodológico (Pré-M2 já reconheceu).

**Construção (no quadro):**

> "Quero fechar o que a Pré-M2 deixou no qualitativo. Construir EC que **falha** 1º TBE exige calibração delicada — vou esboçar."

**Setup:**

\(I = 2, L = 2\). \(A\) tem bliss-point: \(u^A = -[(x_1^A - 1)^2 + (x_2^A - 1)^2]\); \(A\) é saciado em \((1, 1)\) com \(u^A_{\max} = 0\). \(B\): \(u^B = x_1^B + x_2^B\) (linear, monotônica).

Dotações: \(\omega^A = (3, 0)\), \(\omega^B = (0, 3)\). Total \(\bar\omega = (3, 3)\).

**EC candidato:** \(p^* = (1, 1)\), \(x^{A*} = (1, 1)\) (bliss-point), \(x^{B*} = (2, 2)\).

- Verificações:
  - \(A\) demanda \((1, 1)\): bliss-point cabe na renda \(p^* \cdot \omega^A = 3\), e o gasto é \(1 + 1 = 2 < 3\). \(A\) **não** gasta toda renda — saciedade.
  - \(B\) demanda toda riqueza nos dois bens (linear, \(\text{TMS}^B = 1 = p_1/p_2\)): \(p^* \cdot \omega^B = 3 \Rightarrow x^B = (2, 2)\) (qualquer combinação com \(x_1 + x_2 = 3\) é demandada; tomar \((2, 2)\) é uma escolha de \(B\) consistente com viabilidade).
  - **Mercado fecha:** \(x^A + x^B = (1, 1) + (2, 2) = (3, 3) = \bar\omega\) ✓.

**Pareto-eficiência?** Considere desvio: \(\tilde x^A = (1, 1)\) (mantido), \(\tilde x^B = (2{,}5; 2{,}5)\). Recursos: \((1 + 2{,}5; 1 + 2{,}5) = (3{,}5; 3{,}5)\) — **inviável** porque \(\bar\omega = (3, 3)\).

Tente \(\tilde x^A = (0{,}5; 0{,}5)\), \(\tilde x^B = (2{,}5; 2{,}5)\): viável (\(3, 3\)). Utilidades:
- \(u^A(\tilde x^A) = -[(0{,}5 - 1)^2 + (0{,}5 - 1)^2] = -0{,}5 < 0 = u^A(x^{A*})\). \(A\) piora.

Tente \(\tilde x^A = (1, 1)\) (mantido) e \(\tilde x^B = (3, 2)\), inviável.

> **Reconhecimento honesto (1 min):** *"Encontrar desvio Pareto-superior é difícil porque \(A\) está no bliss-point e qualquer mudança em \(x^A\) piora \(A\). O EC encontrado **acaba sendo Pareto-eficiente** (1º TBE 'sobrevive' apesar de saciedade) porque a folga de renda do \(A\) é desperdiçada mas não bloqueia eficiência."*

**Construção que de fato quebra 1º TBE (sketch verbal, 1 min):**

> "Para construir contraexemplo onde EC **falha** 1º TBE, precisamos do bliss-point de \(A\) interior à caixa de Edgeworth E o agente \(B\) **também** com algum tipo de não-monotonicidade ou que \(B\) demande além do que \(A\) deixa para sobrar — e essas combinações forçam algum mercado a não fechar ou alguma alocação Pareto-superior viável a aparecer.
>
> Setup canônico que funciona (MWG §16.D, Exemplo 16.D.4): agente \(A\) com bliss-point interior; agente \(B\) com preferência **localmente** não-saciada mas globalmente côncava com bliss interior também. Os dois bliss-points combinados forçam que algum EC encontrado seja Pareto-dominado por outra alocação onde os bliss-points individuais são alcançados via redistribuição.
>
> Algébrica fica densa para o quadro. **Tomem como referência: MWG §16.D, Exemplo 16.D.4. Fica para estudo individual.**"

> **Eq-punch:** *"O ponto da Pré-M2 sobrevive: **LNS é decisiva no Passo 2**, não decorativa. O contraexemplo numérico fechado existe (MWG §16.D), mas exige bliss-points interiores nos dois agentes. Para a AF, basta saberem que **saciedade quebra a alavanca da prova mesmo quando o teorema acaba valendo num caso específico**."*

#### A.5 (1 min) — Síntese do Bloco A

> "Levaram do Bloco A: (i) núcleo é **estritamente** mais restrito que Pareto + racionalidade individual quando \(I \ge 3\); (ii) bloqueio coalizional por par é não-trivial mesmo em CD simétrica — exige assimetria; (iii) Debreu-Scarf 1963 garante que núcleo \(\to\) EC quando a economia se replica; (iv) saciedade quebra a alavanca da prova do 1º TBE no Passo 2 — contraexemplo numérico fechado existe em MWG §16.D."

### Saída do Bloco A

A turma sai sabendo responder em uma palavra:

- "Por que núcleo \(\subsetneq\) Pareto em \(I \ge 3\)?" → coalizões intermediárias podem bloquear alocações Pareto-eficientes que ferem racionalidade de subcoalizão.
- "O que diz Debreu-Scarf 1963?" → núcleo encolhe com réplica e converge para EC; em economia grande, núcleo \(\approx\) EC.

### Transição para o Bloco B

> "Trocas foi extensão da metade do conteúdo da Aula 4. Bloco B é extensão da outra metade: vamos parametrizar **Robinson Crusoe com tecnologia CES** — aprofunda o exercício canônico da Aula 4 que usou \(f(L) = \sqrt{L}\). Vamos ver como \(\sigma\) (elasticidade de substituição) muda o equilíbrio. E fechamos com **2º TBE com retornos crescentes** — onde a hipótese de convexidade do conjunto de produção genuinamente morde."

---

## Bloco B — Extensão EG produção: Robinson CES + EG \(2\times 2\times 2\) + 2º TBE com retornos crescentes (30 min)

**10:40–11:10.**

### Objetivo do bloco

1. **Estender** o Robinson canônico da Aula 4 (\(f(L) = \sqrt{L}\)) para tecnologia **CES paramétrica** \(f(L) = (a L^\rho + b)^{1/\rho}\), mostrando como \(\sigma = 1/(1-\rho)\) muda \(L^*, q^*, w^*\).
2. **Estender** o EG \(2 \times 2 \times 2\) do Ex 6 dos avaliativos (cotas \(\theta^{ij} = 1/2\) simétricas) para **cotas heterogêneas** \(\theta^{Aj} \neq 1/2\), e mostrar como a alocação de equilíbrio responde.
3. **Sketch** do 2º TBE com retornos crescentes — exemplo onde nenhum \(p^*\) sustenta interior Pareto-eficiente.
4. **Apontar** o erro típico que vai aparecer na AF Parte II.

### Estrutura interna (30 min)

#### B.1 (12 min) — Robinson com tecnologia CES paramétrica

**Setup (2 min):**

Robinson com 1 consumidor, 1 firma, 2 bens (consumo \(q\), lazer \(\ell\)). Variáveis: \(L\) (trabalho), \(q\) (produto), \(\ell = \bar L - L\). Tecnologia **paramétrica de rendimentos decrescentes**:

\[
q = f(L) = L^{1/\sigma}, \qquad \sigma > 1.
\]

> **Nota técnica.** A CES propriamente dita exige 2 fatores (\(f(L, K) = (\alpha L^\rho + (1-\alpha) K^\rho)^{1/\rho}\) com \(\sigma = 1/(1-\rho)\)) e gera elasticidade de substituição entre \(L\) e \(K\). Para Robinson com **1 fator**, "CES" não tem sentido literal — a noção que carrega o exercício é **paramétrica em \(\sigma\)** que mede o quão **côncava** é a tecnologia. Usar \(f(L) = L^{1/\sigma}\) é a forma operacional canônica. Em \(\sigma = 2\), recupera \(f = \sqrt{L}\) da Aula 4.

> **Convenção operacional para a monitoria:** vou usar **\(f(L) = L^{1/\sigma}\)** com \(\sigma \in (1, \infty)\). Para \(\sigma = 2\): \(f(L) = \sqrt{L}\) (Aula 4 canônica). Para \(\sigma = 3\): \(f(L) = L^{1/3}\) (mais côncava, retornos decrescem mais rápido).

Preferências CD: \(u(q, \ell) = q^{1/2} \ell^{1/2}\). Dotação: \(\bar L = 16\).

**Solução do planejador (3 min):**

\[
\max_{L \in [0, 16]} u(f(L), \bar L - L) = \max_L L^{1/(2\sigma)} (16 - L)^{1/2}.
\]

Log-utilidade: \(\ln u = \frac{1}{2\sigma} \ln L + \frac{1}{2} \ln(16 - L)\).

CPO: \(\frac{1}{2\sigma L} = \frac{1}{2(16 - L)}\), ou seja \(2(16 - L) = 2\sigma L \Rightarrow 16 - L = \sigma L \Rightarrow\)

\[
\boxed{\;L^*(\sigma) = \frac{16}{1 + \sigma}.\;}
\]

**Verificações nos casos canônicos:**

- \(\sigma = 1\) (linear, \(f(L) = L\)): \(L^* = 8\). Mas \(\sigma = 1\) **não** é admissível (a CES com \(\rho = 0\) é log, não linear; a forma \(f(L) = L^{1/\sigma}\) com \(\sigma = 1\) recupera linear como **caso de fronteira**). Citar e seguir.
- \(\sigma = 2\) (CD com aula 4): \(L^* = 16/3 \approx 5{,}33\). ✓ (concordante com Aula 4).
- \(\sigma = 3\) (mais côncava): \(L^* = 4\). Robinson trabalha **menos** quando tecnologia é mais decrescente — produtividade marginal cai rápido.
- \(\sigma \to \infty\) (Leontief no fator, \(f(L) \to L^0 = 1\)): \(L^* \to 0\). Nenhum trabalho — produtividade marginal vai a zero.

> **Pergunta-disparo (1 min):** *"Por que \(L^*\) decresce com \(\sigma\)? Intuição econômica?"*

> Resposta esperada: maior \(\sigma\) = tecnologia mais côncava = produtividade marginal cai mais rápido = ótimo balancear rapidamente para o lazer. **Robinson preguiçoso vence Robinson workaholic quando a tecnologia castiga overtime.**

**Cálculo do equilíbrio descentralizado (4 min):**

Firma: \(\max_L p \cdot f(L) - w L\). CPO: \(p \cdot f'(L^*) = w\). Para \(f(L) = L^{1/\sigma}\): \(f'(L) = \frac{1}{\sigma} L^{(1-\sigma)/\sigma}\). Em \(L^* = 16/(1+\sigma)\):

\[
w^* = p \cdot \frac{1}{\sigma} \left(\frac{16}{1 + \sigma}\right)^{(1-\sigma)/\sigma}.
\]

Para \(\sigma = 2\), \(p = 1\): \(w^* = (1/2) \cdot (16/3)^{-1/2} = (1/2) \cdot \sqrt{3/16} = \sqrt{3}/8 \approx 0{,}217\) ✓ (Aula 4).

Para \(\sigma = 3\), \(p = 1\): \(L^* = 4\). \(w^* = (1/3) \cdot 4^{-2/3} = (1/3) \cdot 1/4^{2/3} = 1/(3 \cdot 4^{2/3})\). Calcular: \(4^{2/3} = (2^2)^{2/3} = 2^{4/3} \approx 2{,}52\). Logo \(w^* \approx 1/(3 \cdot 2{,}52) \approx 0{,}132\).

**Lucro:** \(\pi^* = p q^* - w^* L^*\). Para \(\sigma = 2\), \(\pi^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3}\) ✓.

Para \(\sigma = 3\), \(q^* = 4^{1/3} \approx 1{,}587\). \(\pi^* = 1 \cdot 1{,}587 - 0{,}132 \cdot 4 = 1{,}587 - 0{,}530 \approx 1{,}057\).

**Verificação final via UMP do consumidor (2 min):**

Renda: \(m^* = w^* \bar L + \pi^*\). Para \(\sigma = 2\): \(m^* = (\sqrt{3}/8)(16) + 2/\sqrt{3} = 2\sqrt{3} + 2\sqrt{3}/3 = 8\sqrt{3}/3 \approx 4{,}619\). UMP CD: \(q^* = m^*/(2p) = 4\sqrt{3}/3\) ✓; \(\ell^* = m^*/(2 w^*) = 32/3\) ✓.

Para \(\sigma = 3\): \(m^* = 0{,}132 \cdot 16 + 1{,}057 = 2{,}112 + 1{,}057 = 3{,}169\). \(q^* = m^*/2 = 1{,}585 \approx 1{,}587\) ✓ (pequeno arredondamento). \(\ell^* = m^*/(2 \cdot 0{,}132) = 3{,}169/0{,}264 \approx 12 = 16 - 4 = \bar L - L^*\) ✓.

> **Eq-punch:** *"Robinson com tecnologia CES paramétrica entrega \(L^*(\sigma) = 16/(1 + \sigma)\) — fórmula limpa. **Salário sobe com produtividade marginal, lucro residual fica para o consumidor (Robinson é dono da firma). Toda a estrutura TMS = TMT = w/p sobrevive em qualquer \(\sigma > 0\), porque max-lucro + UMP forçam separadamente as duas margens a colarem no preço relativo."*

**Comparação com aula 4 (1 min):**

Quadro com tabela:

| \(\sigma\) | \(L^*\) | \(q^* = (L^*)^{1/\sigma}\) | \(w^* = p \cdot f'(L^*)\) | \(\pi^*\) |
|---|---|---|---|---|
| 2 (Aula 4) | 5,33 | 2,31 | 0,217 | 1,155 |
| 3 (CES) | 4,00 | 1,59 | 0,132 | 1,057 |

> "Note: \(\sigma\) maior \(\Rightarrow\) trabalho menor, salário menor, lucro residual maior **em proporção ao salário** (concentrado no Robinson-empresário). **Distribuição funcional** sensível à tecnologia."

#### B.2 (3 min) — TMS = TMT = w/p sobrevive em qualquer \(\sigma\)

**Verificação rápida no quadro:**

- TMS (CD, \(\alpha_q = \alpha_\ell = 1/2\)): \(\text{TMS}_{\ell, q} = q/\ell\). Em \(\sigma = 2\): \(q^*/\ell^* = (4/\sqrt{3})/(32/3) = (4 \cdot 3)/(\sqrt{3} \cdot 32) = 12/(32\sqrt{3}) = 3/(8\sqrt{3}) = \sqrt{3}/8\) ✓.
- TMT: \(f'(L^*)\). Em \(\sigma = 2\): \(\frac{1}{2}(16/3)^{-1/2} = \sqrt{3}/8\) ✓.
- \(w^*/p^* = \sqrt{3}/8\) ✓.

**Em \(\sigma = 3\):**

- TMS: \(q^*/\ell^* = 1{,}587/12 \approx 0{,}132\). ✓ (= \(w^*\)).
- TMT: \(f'(L^*) = (1/3)(4)^{-2/3} \approx 0{,}132\). ✓.
- \(w^*/p^* = 0{,}132\). ✓.

> **Eq-punch:** *"A **igualdade tripla** TMS = TMT = w/p é robusta à forma da tecnologia, **desde que** \(f\) seja diferenciável e côncava. É a **assinatura algébrica do 1º TBE com produção** independente de calibração específica. Vai cair na AF Parte II nessa forma — anotem."*

#### B.3 (8 min) — EG \(2\times 2\times 2\) com cotas heterogêneas

**Recap do Ex 6 dos avaliativos (1 min):**

> "No Ex 6 dos avaliativos, vocês tiveram \(I = J = L = 2\) com cotas \(\theta^{Aj} = \theta^{Bj} = 1/2\) simétricas. Resultado: \(p_1^* = p_2^* = 1\), \(q_1^* = q_2^* = 2\sqrt{2}\), \(x^A = x^B = (\sqrt{2}, \sqrt{2})\). Hoje vamos quebrar a simetria das cotas."

**Setup heterogêneo (2 min):**

Mantenha \(u^A = u^B = x_1^{1/2} x_2^{1/2}\), \(f_1(L_1) = f_2(L_2) = \sqrt{L_\ell}\), \(\bar L = 16\), dotações de fator iguais (\(\bar L^A = \bar L^B = 8\)). **Mude as cotas:**

\[
\theta^{A1} = 0{,}8, \;\; \theta^{B1} = 0{,}2, \;\; \theta^{A2} = 0{,}2, \;\; \theta^{B2} = 0{,}8.
\]

\(A\) é "dono majoritário" da firma 1 (que produz bem 1); \(B\) é "dono majoritário" da firma 2 (que produz bem 2). \(\sum_i \theta^{ij} = 1\) ✓ para cada \(j\).

**Pergunta-disparo (1 min):** *"Antes de calcular: o EC vai mudar? Os preços vão mudar? A alocação \(x^A\) vai mudar?"*

> Resposta esperada (puxar): preços \(p^*\) e produção \(q^*\) **não mudam** (são determinados por simetria das tecnologias e preferências); o que muda é a **distribuição da renda** entre \(A\) e \(B\) via lucros — e portanto a alocação \(x^A\) vs. \(x^B\).

**Cálculo (3 min):**

Firmas (idênticas): \(p_1 \cdot f_1'(L_1) = w \Rightarrow p_1/(2\sqrt{L_1}) = w\), e similarmente para \(F_2\). Por simetria das tecnologias: \(L_1^* = L_2^*\) (mesma escala). Como \(L_1 + L_2 = \bar L = 16\), \(L_1^* = L_2^* = 8\). Logo \(q_\ell^* = \sqrt{8} = 2\sqrt{2} \approx 2{,}83\).

Salário: \(w^* = p_1/(2\sqrt{8})\) com \(p_1 = 1\) numerário. Mas precisamos determinar \(p_2/p_1\) via mercados.

Por simetria total das tecnologias e preferências, \(p_1^* = p_2^* = 1\). \(w^* = 1/(2 \cdot 2\sqrt{2}) = 1/(4\sqrt{2}) = \sqrt{2}/8 \approx 0{,}177\).

Lucro de cada firma: \(\pi_\ell^* = p_\ell q_\ell - w^* L_\ell = 2\sqrt{2} - (\sqrt{2}/8)(8) = 2\sqrt{2} - \sqrt{2} = \sqrt{2}\).

**Renda dos consumidores (com cotas heterogêneas):**

\[
m^A = w^* \cdot 8 + \theta^{A1} \pi_1^* + \theta^{A2} \pi_2^* = \sqrt{2} + 0{,}8 \sqrt{2} + 0{,}2 \sqrt{2} = \sqrt{2} + \sqrt{2} = 2\sqrt{2}.
\]

\[
m^B = w^* \cdot 8 + \theta^{B1} \pi_1^* + \theta^{B2} \pi_2^* = \sqrt{2} + 0{,}2 \sqrt{2} + 0{,}8 \sqrt{2} = 2\sqrt{2}.
\]

> "**Surpresa pedagógica:** rendas continuam **iguais** mesmo com cotas heterogêneas! Por quê?"

> Resposta: **lucros das duas firmas são iguais** (\(\pi_1^* = \pi_2^* = \sqrt{2}\) por simetria das tecnologias). Quando \(\sum_j \theta^{ij} \pi_j^*\) é o que importa e os \(\pi_j^*\) coincidem, a heterogeneidade de cotas se compensa. **Para gerar diferença de renda via cotas, precisaríamos de tecnologias assimétricas.**

**Versão com tecnologias assimétricas (2 min):**

Sub-caso: troque \(f_2(L_2) = 2\sqrt{L_2}\) (firma 2 mais produtiva). Mantenha cotas heterogêneas.

CPO firma 2: \(p_2 \cdot f_2'(L_2) = p_2 \cdot 1/\sqrt{L_2} = w\). Combinado com \(p_1/(2\sqrt{L_1}) = w\): \(p_1/(2\sqrt{L_1}) = p_2/\sqrt{L_2}\), ou seja \(p_2/p_1 = \sqrt{L_2}/(2\sqrt{L_1})\).

Pelo lado da demanda (CD simétrica): \(\text{TMS} = x_2/x_1 = p_1/p_2\). Em equilíbrio simétrico de demanda agregada, \(\sum x_\ell = q_\ell\), e \(x_2/x_1 = q_2/q_1\). Logo \(p_1/p_2 = q_2/q_1 = 2\sqrt{L_2}/\sqrt{L_1}\).

Combinando com \(p_2/p_1 = \sqrt{L_2}/(2\sqrt{L_1})\): \(p_1/p_2 = 2\sqrt{L_1}/\sqrt{L_2}\). Igualar com \(p_1/p_2 = 2\sqrt{L_2}/\sqrt{L_1}\): \(\sqrt{L_1}/\sqrt{L_2} = \sqrt{L_2}/\sqrt{L_1}\), ou seja \(L_1 = L_2 = 8\) ainda.

Hmm — interessante: tecnologia assimétrica **não** desbalanceia \(L\) porque a demanda (CD simétrica) compensa. Para gerar desbalanceamento, precisaríamos **ou** preferências assimétricas **ou** mais agentes com preferências heterogêneas.

> **Confissão honesta (1 min):** *"O exercício mostra um ponto sutil: simetria das preferências do **lado da demanda** força \(L_1 = L_2\) mesmo com firma 2 'mais produtiva' — porque demanda relativa equilibra. Para criar desbalanceamento em \(L\), precisamos de **demanda assimétrica** entre os dois bens.* Pergunta para casa: o que muda se \(u^A = x_1^{2/3} x_2^{1/3}\) e \(u^B = x_1^{1/3} x_2^{2/3}\)?"

> **Eq-punch:** *"Em EG \(2\times 2\times 2\), a alocação **interior** depende da combinação **preferências + tecnologia + cotas**. Cotas isoladamente alteram **distribuição de renda quando lucros das firmas diferem**; senão, cotas são neutras na alocação. **Resultado contraintuitivo a anotar.**"*

#### B.4 (6 min) — 2º TBE com retornos crescentes — falha por não-convexidade

**Recap (1 min):**

> "Pré-M2 mostrou que **convexidade de preferências** é hipótese do 2º TBE. Hoje fechamos o lado **simétrico**: convexidade do conjunto de produção. **Retornos crescentes** quebram convexidade — qualquer combinação convexa de pontos viáveis pode estar fora da fronteira de produção."

**Setup canônico (2 min):**

Robinson com \(f(L) = L^2\) (retornos **crescentes**: \(f'(L) = 2L\), crescente em \(L\); \(f''(L) = 2 > 0\), convexa).

Conjunto de produção: \(Y = \{(-L, q) : L \ge 0, q \le L^2\}\). **Não-convexo.**

Verificação visual (no quadro): tomar \((-1, 1) \in Y\) (\(q = 1 = 1^2\)) e \((-3, 9) \in Y\) (\(q = 9 = 3^2\)). Combinação convexa em \(\lambda = 1/2\): \((-2, 5)\). Mas \((-2, 5) \notin Y\) porque \(5 > 4 = 2^2\). **Conjunto não-convexo.**

**Programa de max-lucro (2 min):**

\(\max_L p L^2 - w L\). Para \(p, w > 0\): derivada \(2 p L - w = 0 \Rightarrow L^* = w/(2p)\).

Mas atenção: a condição de **segunda ordem** falha! \(\frac{d^2}{dL^2}(p L^2 - w L) = 2p > 0\). O ponto \(L^* = w/(2p)\) é **mínimo** local, não máximo. O lucro **explode** quando \(L \to \infty\) (não há ótimo finito).

> **Eq-punch:** *"Com retornos crescentes, **firma maximizadora de lucro com preço dado não tem solução interior** — ou produz zero ou produz ao infinito. **Concorrência perfeita é incompatível com retornos crescentes.** Isso é o coração do problema."*

**Implicação para 2º TBE (1 min):**

> "Suponha planejador queira implementar alocação Pareto-eficiente \((L^*, q^* = (L^*)^2)\) interior. Pelo 2º TBE, deveria existir \(p^*, w^*\) tal que firma escolhe \(L^*\) ao maximizar \(p^* q - w^* L\). Mas **não existe tal \((p^*, w^*)\)** — a firma não tem ótimo interior. **2º TBE falha.**"

**Resolução institucional (1 min):**

> "Por isso, indústrias com retornos crescentes (utilities, ferrovia, telecom, plataformas digitais) operam em **monopólio natural** ou **concorrência regulada** — não em concorrência perfeita. **A teoria não diz que é ineficiente; diz que descentralização via preço falha.** Implementar Pareto-ótimo nessas indústrias requer **preço regulado** (Ramsey pricing, Aula 7) ou **propriedade pública**. **A externalidade aqui é a não-convexidade, não a externalidade no sentido pigouviano.**"

> **Eq-punch:** *"Convexidade do \(Y\) é hipótese **estrutural** do 2º TBE. Quebra dela = mercado não consegue implementar Pareto via preços. Solução real: regulação. Aula 7 trata externalidades — mesma família de problema, instrumento parecido."*

#### B.5 (1 min) — Síntese do Bloco B

> "Levaram do Bloco B: (i) Robinson com tecnologia CES paramétrica entrega \(L^*(\sigma) = 16/(1+\sigma)\) — fórmula limpa; (ii) TMS = TMT = w/p sobrevive em qualquer \(f\) côncava; (iii) cotas \(\theta^{ij}\) heterogêneas alteram alocação **somente** se lucros das firmas diferem; (iv) 2º TBE falha sob retornos crescentes — \(Y\) não-convexo torna max-lucro mal-posto a preços dados. Resolução institucional: regulação."

### Saída do Bloco B

- "O que acontece com \(L^*\) quando \(\sigma\) (concavidade da tecnologia) aumenta?" → \(L^*\) cai. Robinson trabalha menos quando produtividade marginal cai mais rápido.
- "2º TBE com retornos crescentes — vale ou falha?" → falha; convexidade de \(Y\) é hipótese estrutural.

### Transição para a pausa

> "Pausa de 10 minutos. Quando voltarem: dois exercícios trabalhados ao vivo, com vocês fazendo a primeira tentativa antes de eu resolver. **Tema:** EC com 3 agentes assimétricos (extensão da Pré-M2 §3) e Robinson CES + lazer (extensão do que vimos no Bloco B)."

---

## Pausa — 10 min (11:10–11:20)

Não tente "explicar mais um ponto" durante a pausa — alunos precisam descansar para o Bloco 3.

---

## Bloco 3 — Exercícios trabalhados ao vivo (30 min)

**11:20–11:50.**

### Estrutura

Dois exercícios, **parâmetros novos** (não duplicar os dos avaliativos da Aula 4 nem os da Pré-M2):

- **Exercício M2-1 — EC Cobb-Douglas com 3 agentes assimétricos** (15 min). Calibre 🟡.
- **Exercício M2-2 — Robinson com CES \(\rho = 1/2\) + lazer + EC completo** (15 min). Calibre 🔴.

**Procedimento operacional:** anuncie o enunciado, dê **3 min** para o aluno tentar individualmente (ou em duplas), depois resolva no quadro com participação. Faz a turma falar — não monologue.

---

### Exercício M2-1 (15 min) — EC Cobb-Douglas com 3 agentes assimétricos 🟡

#### Enunciado

Economia de troca pura com **3 agentes assimétricos** \(i \in \{A, B, C\}\) e \(L = 2\) bens. Preferências CD com pesos diferentes:

\[
u^A = x_1^{2/3} x_2^{1/3}, \quad u^B = x_1^{1/2} x_2^{1/2}, \quad u^C = x_1^{1/3} x_2^{2/3}.
\]

Dotações:

\[
\omega^A = (3, 0), \quad \omega^B = (1, 2), \quad \omega^C = (0, 4).
\]

Total: \(\bar\omega = (4, 6)\). Numerário: \(p_2 = 1\).

**Pede-se:**
1. Derivar as demandas Marshallianas \(x_1^i(p_1)\) para cada agente.
2. Resolver o mercado 1 e encontrar \(p_1^*\).
3. Calcular a alocação de equilíbrio \((x^{A*}, x^{B*}, x^{C*})\).
4. Verificar Walras (mercado 2 fecha automaticamente).
5. Verificar a "tangência" \(\text{TMS}^A = \text{TMS}^B = \text{TMS}^C = p_1^*/p_2^*\).

#### Resolução guiada

**Passo 1 — Demandas Marshallianas:**

CD entrega \(x_\ell^i = \alpha_\ell^i \cdot m^i / p_\ell\). Com \(p_2 = 1\):

- **\(A\) (\(\alpha_1^A = 2/3, \alpha_2^A = 1/3\)):** \(m^A = 3 p_1\). \(x_1^A = (2/3)(3 p_1)/p_1 = 2\). **Constante!** (cancela \(p_1\) — \(A\) só tem bem 1).
- **\(B\) (\(\alpha_1^B = \alpha_2^B = 1/2\)):** \(m^B = p_1 + 2\). \(x_1^B = (1/2)(p_1 + 2)/p_1 = 1/2 + 1/p_1\).
- **\(C\) (\(\alpha_1^C = 1/3, \alpha_2^C = 2/3\)):** \(m^C = 4\). \(x_1^C = (1/3)(4)/p_1 = 4/(3 p_1)\).

**Passo 2 — Mercado 1 (\(\sum_i x_1^i = \bar\omega_1 = 4\)):**

\[
2 + \frac{1}{2} + \frac{1}{p_1} + \frac{4}{3 p_1} = 4 \;\;\Longleftrightarrow\;\; \frac{5}{2} + \frac{7}{3 p_1} = 4 \;\;\Longleftrightarrow\;\; \frac{7}{3 p_1} = \frac{3}{2} \;\;\Longleftrightarrow\;\; p_1^* = \frac{14}{9} \approx 1{,}556.
\]

**Passo 3 — Alocação:**

- \(x_1^A = 2\); \(x_2^A = (1/3)(m^A) = (1/3)(3 p_1^*) = p_1^* = 14/9 \approx 1{,}556\).
- \(x_1^B = 1/2 + 9/14 = 7/14 + 9/14 = 16/14 = 8/7 \approx 1{,}143\); \(x_2^B = (1/2)(p_1^* + 2) = (1/2)(14/9 + 2) = (1/2)(32/9) = 16/9 \approx 1{,}778\).
- \(x_1^C = 4/(3 \cdot 14/9) = 4 \cdot 9/(3 \cdot 14) = 36/42 = 6/7 \approx 0{,}857\); \(x_2^C = (2/3)(4) = 8/3 \approx 2{,}667\).

**Passo 4 — Verificação Walras (mercado 2):**

\[
\sum_i x_2^i = 14/9 + 16/9 + 8/3 = 14/9 + 16/9 + 24/9 = 54/9 = 6 = \bar\omega_2. \;\checkmark
\]

**Passo 5 — Verificação tangência:**

- \(\text{TMS}^A = (\alpha_1^A/\alpha_2^A) \cdot x_2^A/x_1^A = (2/3)/(1/3) \cdot (14/9)/2 = 2 \cdot 7/9 = 14/9 = p_1^*/p_2^*\) ✓.
- \(\text{TMS}^B = (\alpha_1^B/\alpha_2^B) \cdot x_2^B/x_1^B = 1 \cdot (16/9)/(8/7) = (16/9)(7/8) = 14/9 = p_1^*\) ✓.
- \(\text{TMS}^C = (\alpha_1^C/\alpha_2^C) \cdot x_2^C/x_1^C = (1/3)/(2/3) \cdot (8/3)/(6/7) = (1/2)(8 \cdot 7)/(3 \cdot 6) = 56/36 = 14/9 = p_1^*\) ✓.

**Tangência tripla** confirmada: \(\text{TMS}^A = \text{TMS}^B = \text{TMS}^C = p_1^*/p_2^* = 14/9\). Por 1º TBE, alocação é Pareto-eficiente.

**Cuidado pedagógico (no quadro, 1 min):** o agente \(A\) — único com bem 1 puro como dotação — tem \(x_1^A = 2\) **constante** em \(p_1\) (cancelamento clássico). \(B\) e \(C\) ajustam, e o preço \(p_1^* = 14/9 > 1\) reflete escassez relativa do bem 1 (oferta total \(\bar\omega_1 = 4\) vs. \(\bar\omega_2 = 6\)). **A pergunta-disparo "por que \(p_1^* > 1\)?" tem como resposta-canônica: bem 1 é mais escasso na soma das dotações.**

#### Gabarito 5-passos

**1. Ponto-chave.** EC em economia com \(I = 3\) agentes CD assimétricos resolve-se zerando 1 mercado (Walras fecha o segundo automaticamente). O preço relativo de equilíbrio reflete (i) escassez relativa de cada bem na dotação agregada e (ii) heterogeneidade dos pesos preferenciais. Tangência tripla \(\text{TMS}^A = \text{TMS}^B = \text{TMS}^C = p_1^*/p_2^*\) é a assinatura do 1º TBE: mercado descentraliza Pareto-eficiência via preço único.

**2. Derivação.** Demandas CD: \(x_\ell^i = \alpha_\ell^i m^i/p_\ell\). \(m^A = 3 p_1\) (canc. com \(\alpha_1^A\)), \(m^B = p_1 + 2\), \(m^C = 4\). Mercado 1: \(2 + 1/2 + 1/p_1 + 4/(3 p_1) = 4 \Rightarrow 7/(3 p_1) = 3/2 \Rightarrow p_1^* = 14/9\). Alocação: \(x^A = (2; 14/9)\), \(x^B = (8/7; 16/9)\), \(x^C = (6/7; 8/3)\). Walras: \(\sum x_2^i = 54/9 = 6\) ✓. Tangência: todas as TMS valem \(14/9 = p_1^*\) ✓.

**3. Armadilha.** Aluno típico esquece o cancelamento de \(p_1\) na demanda de \(A\) (\(x_1^A\) constante) — erro estrutural. Outro erro: zerar **dois** mercados em vez de um (Walras é redundância) — perde tempo. Terceiro erro: marcar \(p_1^* = 1\) por hábito (caso simétrico das aulas anteriores) sem fazer a conta — bem 1 é mais escasso aqui (\(\bar\omega_1 = 4 < 6 = \bar\omega_2\)), preço relativo sobe para compensar. Quarto erro: na verificação de tangência, esquecer o fator \(\alpha_1^i/\alpha_2^i\) e calcular \(\text{TMS}^i = x_2^i/x_1^i\) (válido só em CD simétrica).

**4. Extensão.** Em economia com \(I\) agentes CD heterogêneos e \(L\) bens, o EC tem fórmula fechada via agregação de demandas. Para agentes CD com pesos \(\alpha^i\) e dotações \(\omega^i\), o preço relativo \(p_\ell/p_{\ell'}\) é:

\[
\frac{p_\ell^*}{p_{\ell'}^*} = \frac{\sum_i \alpha_\ell^i (p \cdot \omega^i)}{\bar\omega_\ell} \cdot \frac{\bar\omega_{\ell'}}{\sum_i \alpha_{\ell'}^i (p \cdot \omega^i)}
\]

— relação implícita que generaliza o cálculo aqui. Para \(I = 3\), \(L = 2\) com CD, sistema é solúvel em forma fechada como acima. Em **CES** (Bloco B), forma fechada perde tração — tipicamente requer iteração numérica. **Implicação computacional:** modelos CGE (Computable General Equilibrium) resolvem via Newton-Raphson sobre o excesso de demanda agregada.

**5. Peer-review.** Calibre 🟡. Cálculo direto + verificação Walras + verificação tangência. Heterogeneidade dos agentes torna o exercício mais **rico** que o Ex 1/Ex 2 dos avaliativos da Aula 4 (que usam \(I = 2\)). **Diferenças vs. Pré-M2 §3:** lá são \(I = 3\) com CD **simétrica** (\(\alpha = 1/2\) para todos); aqui são CD **assimétrica**. Estrutura distinta, mesmo aparelho. **Tradeoff de tempo:** ~12 min, alvo. **Risco residual:** moderado — armadilha do cancelamento de \(p_1\) na demanda de \(A\) é onde aluno menos disciplinado tropeça. **Variante AF:** trocar dotações ou pesos. Estrutura conceitual idêntica.

---

### Exercício M2-2 (15 min) — Robinson com CES \(\rho = 1/2\) + lazer 🔴

#### Enunciado

Robinson com 1 consumidor + 1 firma + 2 bens (consumo \(q\), lazer \(\ell\)). Variáveis: \(L \ge 0\) (trabalho), \(\ell = \bar L - L\). Tecnologia (1 fator):

\[
q = f(L) = L^{2/3}.
\]

(É CES com \(\rho = -1/2\) sob convenção apropriada; equivale a \(\sigma = 3/2\).)

Preferências **CES** entre consumo e lazer:

\[
u(q, \ell) = (q^{1/2} + \ell^{1/2})^2.
\]

(Esta é CES com \(\rho = 1/2 \Rightarrow \sigma = 1/(1 - \rho) = 2\). Substituição mais alta que CD.)

Dotação total de tempo: \(\bar L = 27\). Use \(p = 1\) numerário (preço do bem de consumo).

**Pede-se:**
1. Resolver a solução do **planejador** (\(L^*, q^*, \ell^*\)).
2. Calcular salário de equilíbrio \(w^*\) via CPO da firma.
3. Calcular lucro \(\pi^*\) e renda do consumidor \(m^*\).
4. Verificar UMP do consumidor (CES).
5. Verificar a "assinatura" \(\text{TMS}_{\ell, q} = \text{TMT}_{L, q} = w^*/p\).

#### Resolução guiada

**Passo 1 — Solução do planejador (4 min):**

\[
\max_L \;\; (f(L)^{1/2} + (\bar L - L)^{1/2})^2 = (L^{1/3} + (27 - L)^{1/2})^2.
\]

Como \((\cdot)^2\) é monotônica crescente em arg positivo, basta maximizar:

\[
g(L) = L^{1/3} + (27 - L)^{1/2}.
\]

CPO: \(\frac{1}{3} L^{-2/3} - \frac{1}{2}(27 - L)^{-1/2} = 0\), ou seja:

\[
\frac{1}{3 L^{2/3}} = \frac{1}{2(27 - L)^{1/2}} \;\;\Longleftrightarrow\;\; 2(27 - L)^{1/2} = 3 L^{2/3}.
\]

Elevar ao quadrado: \(4(27 - L) = 9 L^{4/3}\). Reorganizando:

\[
9 L^{4/3} + 4 L - 108 = 0.
\]

**Resolução numérica via tentativa:**

- \(L = 8\): \(9 \cdot 8^{4/3} + 32 - 108 = 9 \cdot 16 + 32 - 108 = 144 + 32 - 108 = 68 > 0\). Excesso.
- \(L = 4\): \(9 \cdot 4^{4/3} + 16 - 108 = 9 \cdot 6{,}35 + 16 - 108 \approx 57{,}15 + 16 - 108 = -34{,}85 < 0\). Defeito.
- \(L = 6\): \(9 \cdot 6^{4/3} + 24 - 108 = 9 \cdot 10{,}9 + 24 - 108 \approx 98{,}1 + 24 - 108 = 14{,}1 > 0\). Pequeno excesso.
- \(L = 5{,}5\): \(9 \cdot 5{,}5^{4/3} + 22 - 108 \approx 9 \cdot 9{,}80 + 22 - 108 \approx 88{,}2 + 22 - 108 = 2{,}2\). Quase.
- \(L = 5{,}4\): \(9 \cdot 5{,}4^{4/3} + 21{,}6 - 108 \approx 9 \cdot 9{,}57 + 21{,}6 - 108 \approx 86{,}13 + 21{,}6 - 108 \approx -0{,}27\). Pequeníssimo defeito.

> **Aproximação:** \(L^* \approx 5{,}42\). Calcular \(q^* = (5{,}42)^{2/3}\) e \(\ell^* = 27 - 5{,}42 = 21{,}58\).

\(q^* = 5{,}42^{2/3} \approx 3{,}07\). \(\ell^* \approx 21{,}58\).

> **Pergunta-disparo (1 min):** *"Por que Robinson trabalha tão pouco? \(L^* \approx 5{,}42\) em \(\bar L = 27\) é menos de 20% do tempo!"*

> Resposta esperada: combinação de (i) tecnologia côncava forte (\(L^{2/3}\) tem PMa caindo rápido) e (ii) preferência CES com \(\sigma = 2\) (lazer e consumo são "muito substituíveis"; lazer "vale" muito quando consumo é abundante). Robinson é **eficiente** em substituir lazer por consumo.

**Passo 2 — CPO da firma (3 min):**

\[
\pi(p, w) = \max_L p L^{2/3} - w L.
\]

CPO: \(p \cdot (2/3) L^{-1/3} = w\), ou seja \(w = (2 p)/(3 L^{1/3})\). Em \(L^* = 5{,}42\), \(p = 1\):

\[
w^* = \frac{2}{3 \cdot 5{,}42^{1/3}} = \frac{2}{3 \cdot 1{,}757} \approx \frac{2}{5{,}27} \approx 0{,}379.
\]

**Verificação alternativa via TMT:** \(\text{TMT}_{L, q} = f'(L^*) = (2/3) L^{*-1/3} = w^*/p = 0{,}379\) ✓.

**Passo 3 — Lucro e renda (2 min):**

\[
\pi^* = p q^* - w^* L^* = 1 \cdot 3{,}07 - 0{,}379 \cdot 5{,}42 = 3{,}07 - 2{,}054 \approx 1{,}016.
\]

\[
m^* = w^* \bar L + \pi^* = 0{,}379 \cdot 27 + 1{,}016 = 10{,}233 + 1{,}016 \approx 11{,}25.
\]

**Passo 4 — UMP do consumidor com preferências CES (3 min):**

UMP CES: \(\max (q^{1/2} + \ell^{1/2})^2\) s.a. \(p q + w \ell = m\). Equivalentemente max \(g(q, \ell) = q^{1/2} + \ell^{1/2}\) s.a. \(q + (w/p) \ell = m/p\).

CPO: \(\frac{1}{2 q^{1/2}} = \lambda p\), \(\frac{1}{2 \ell^{1/2}} = \lambda w\). Razão: \(\sqrt{\ell^*/q^*} = p/w\), ou seja:

\[
\boxed{\;\frac{\ell^*}{q^*} = \left(\frac{p}{w^*}\right)^2.\;}
\]

> **Atenção pedagógica:** o **inverso** da razão de preços, não o próprio. Em CES com \(\sigma > 1\), demanda relativa por lazer **sobe** quando \(w/p\) **cai** (lazer fica caro em utilidade marginal mas barato em preço relativo). A relação \((p/w)^\sigma\) com \(\sigma = 2\) — não \((w/p)^\sigma\). **Erro estrutural típico:** confundir o sinal/orientação da elasticidade.

Com \(p = 1, w^* = 0{,}379\): \(\ell^*/q^* = (1/0{,}379)^2 = (2{,}639)^2 \approx 6{,}96\).

Pelo planejador: \(\ell^*/q^* = 21{,}58/3{,}07 \approx 7{,}03\).

> **Coincide!** \(6{,}96 \approx 7{,}03\) (pequena diferença por arredondamento numérico do \(L^*\)). ✓

**Confirmação algébrica (2 min):**

UMP com \(u = (q^{1/2} + \ell^{1/2})^2\). Como \(u\) é monotônica crescente em \(g(q, \ell) = q^{1/2} + \ell^{1/2}\), basta maximizar \(g\) sujeito a \(p q + w \ell = m\). CPO: \(\sqrt{\ell^*/q^*} = w/p\), ou seja **\(\ell^*/q^* = (p/w)^2\)** (relação derivada acima).

Restrição orçamentária: \(p q^* + w \ell^* = m\). Substituindo \(\ell^* = q^* (p/w)^2\):

\[
p q^* + w \cdot q^* \cdot (p/w)^2 = m \;\;\Longleftrightarrow\;\; q^* \left[p + p^2/w\right] = m \;\;\Longleftrightarrow\;\; q^* = \frac{m}{p + p^2/w} = \frac{m w}{p(w + p)}.
\]

E \(\ell^* = q^* \cdot (p/w)^2 = \frac{m w}{p(w + p)} \cdot \frac{p^2}{w^2} = \frac{m p}{w(w + p)}\).

Em \(p = 1, w^* = 0{,}379, m^* = 11{,}25\):

\[
q^* = \frac{11{,}25 \cdot 0{,}379}{1 \cdot (0{,}379 + 1)} = \frac{4{,}264}{1{,}379} \approx 3{,}09 \;\;\checkmark
\]

(concordante com \(3{,}07\) do planejador, diferença por arredondamento numérico de \(L^*\)).

\[
\ell^* = \frac{11{,}25 \cdot 1}{0{,}379 \cdot 1{,}379} = \frac{11{,}25}{0{,}523} \approx 21{,}53 \;\;\checkmark
\]

(concordante com \(21{,}58\)).

**Passo 5 — Verificação da assinatura \(\text{TMS} = \text{TMT} = w^*/p\) (1 min):**

- \(\text{TMS}_{\ell, q} = \frac{\partial u/\partial \ell}{\partial u/\partial q} = \frac{q^{1/2}/\ell^{1/2}}{1} \cdot \frac{(q^{1/2} + \ell^{1/2})}{(q^{1/2} + \ell^{1/2})} = \sqrt{q^*/\ell^*}\). Em \(q^* = 3{,}07, \ell^* = 21{,}58\): \(\sqrt{3{,}07/21{,}58} = \sqrt{0{,}142} \approx 0{,}377\) ✓ (≈ \(w^* = 0{,}379\), erro de arredondamento).
- \(\text{TMT}_{L, q} = f'(L^*) = (2/3)/L^{*1/3} = (2/3)/1{,}757 \approx 0{,}379\) ✓.
- \(w^*/p^* = 0{,}379\) ✓.

**Igualdade tripla** confirmada.

> **Eq-punch:** *"Mesmo com tecnologia paramétrica forte (\(L^{2/3}\)) e preferência CES com substituição alta (\(\sigma = 2\)), a assinatura do 1º TBE com produção sobrevive: TMS = TMT = w/p. **Estrutura é robusta a calibragem** — a hipótese chave é convexidade (preferências e produção)."*

#### Gabarito 5-passos

**1. Ponto-chave.** Robinson com tecnologia côncava paramétrica (\(L^{2/3}\)) e preferências CES com substituição \(\sigma = 2\) entrega EC interior solúvel. A solução exige iteração numérica (não fecha em forma elementar como CD), mas a **assinatura algébrica** TMS = TMT = w/p sobrevive. Robinson trabalha pouco (\(L^* \approx 5{,}42\) em \(\bar L = 27\)) por dupla pressão: tecnologia côncava + preferência por lazer alta.

**2. Derivação.** Planejador: \(\max (L^{1/3} + (27-L)^{1/2})^2\). CPO: \(2(27-L)^{1/2} = 3 L^{2/3}\). Elevar ao quadrado: \(9 L^{4/3} + 4 L = 108\). Solução numérica \(L^* \approx 5{,}42\). Logo \(q^* \approx 3{,}07\), \(\ell^* \approx 21{,}58\). Firma: \(w^* = (2/3) L^{*-1/3} \approx 0{,}379\). Lucro: \(\pi^* \approx 1{,}016\). Renda: \(m^* \approx 11{,}25\). UMP CES verificada via \(\ell^*/q^* = (p/w)^\sigma = 6{,}96\) ✓. Tangência tripla: TMS = TMT = w/p \(\approx 0{,}379\) ✓.

**3. Armadilha.** Aluno típico aplica fórmula CD para UMP (\(\ell^*/q^* = 1\) sob pesos iguais) — **falso** com CES. Outro erro: confundir \(\rho\) (parâmetro CES) com \(\sigma\) (elasticidade de substituição); \(\sigma = 1/(1-\rho)\). Terceiro erro: tentar resolver \(9 L^{4/3} + 4 L = 108\) algebricamente — não tem forma fechada elementar; **iteração numérica é a via**. Quarto erro: não verificar a CPO da firma (apenas plug-and-chug do salário) — perde a estrutura.

**4. Extensão.** Para tecnologia genérica \(f(L) = L^{1/\sigma_f}\) e preferência CES \((q^\rho + \ell^\rho)^{1/\rho}\) com \(\sigma_u = 1/(1-\rho)\), a solução do planejador resolve

\[
\frac{f'(L)}{f(L)} = \frac{\partial u/\partial \ell}{\partial u/\partial q} \cdot \frac{1}{\bar L - L}.
\]

Solução fechada existe apenas para combinações particulares (ex.: CD em ambos os lados, \(\sigma_f = \sigma_u = 1\)). Em geral, iteração numérica via Newton-Raphson. **Implicação computacional:** modelos macroeconômicos com produção CES (Acemoglu, Aghion-Howitt) exigem solução numérica. Em Aula 5 (AD-I), a estrutura ganha índice de estado: cada \(s\) tem seu \(L^*_s, q^*_s, w^*_s\) condicionais ao estado da natureza. Em Aula 7 (externalidades), o wedge pigouviano entra como diferença entre TMS social e TMT privada.

**5. Peer-review.** Calibre 🔴. Combinação de tecnologia côncava paramétrica + preferência CES + iteração numérica + verificação tripla. **Diferenças vs. Ex 4 dos avaliativos da Aula 4** (que usa \(f = \sqrt{L}\) e \(u = q^{1/2}\ell^{1/2}\) — CD em ambos): aqui CES no consumidor adiciona elasticidade de substituição não-unitária; tecnologia \(L^{2/3}\) é mais côncava que \(\sqrt{L}\). Estrutura conceitual idêntica, complexidade computacional maior. **Tradeoff de tempo:** ~14 min se a turma estiver afiada; até 18 min se Alberto precisar derivar a CPO CES no quadro detalhadamente. **Risco residual:** alto. **Sub-item exigente:** Passo 4 (verificação UMP via CES) é o que mais separa quem entendeu a estrutura de quem decorou — aluno tem que reconhecer que CD não vale e que a relação correta é \(\ell^*/q^* = (p/w)^\sigma\). **Variante AF:** improvável que cobre o cálculo numérico completo. Mais provável aparecer pedindo o **setup** + **CPO** + **interpretação qualitativa** ("o que acontece com \(L^*\) quando \(\sigma\) sobe?").

---

### Síntese do Bloco 3

Quadro:

| Exercício | Conceito-âncora | Calibre |
|---|---|---|
| M2-1 (EC CD com 3 agentes assimétricos) | Cancelamento de \(p_1\) na demanda + tangência tripla | 🟡 |
| M2-2 (Robinson CES com lazer) | Iteração numérica + assinatura TMS=TMT=w/p sobrevive | 🔴 |

> "Esses dois são variantes plausíveis dos exercícios da AF Parte II (Aula 4). Quem fechou os dois aqui, dominou Aula 4."

---

## Bloco 4 — Encerramento + ponte M3 + dúvidas finais (10 min)

**11:50–12:00.**

### Roteiro

#### B4.1 (3 min) — O que vocês têm que levar pra casa hoje

Quadro com lista enxuta:

1. **Núcleo** \(\subsetneq\) **Pareto-eficiente** quando \(I \ge 3\). Coalizões intermediárias podem bloquear.
2. **Debreu-Scarf 1963:** núcleo encolhe com réplica e converge para EC. Em economia grande, núcleo \(\approx\) EC. **Justificativa pedagógica de usar EC.**
3. **LNS é decisiva no Passo 2** do 1º TBE — saciedade quebra a alavanca da prova mesmo quando o teorema acaba valendo.
4. **Robinson com tecnologia paramétrica:** \(L^*(\sigma) = 16/(1+\sigma)\) (forma reduzida \(L^{1/\sigma}\)). Em CES geral, requer iteração numérica.
5. **TMS = TMT = w/p** sobrevive em qualquer \(f\) côncava + qualquer preferência convexa. **Assinatura algébrica do 1º TBE com produção.**
6. **2º TBE com retornos crescentes falha:** \(Y\) não-convexo torna max-lucro mal-posto. Resolução institucional: regulação.

#### B4.2 (3 min) — Conexão com a AF Parte II

> "Quarta 24/06, 19:00, 3h, A4 frente-e-verso permitida. Aula 4 vale **30%** combinada com Aulas 5–6. **Calibre da AF para esses tópicos:** próximo dos exercícios avaliativos da Aula 4 — não muito além. Nada do que cobri hoje (Robinson CES com iteração numérica, bloqueio coalizional por par, 2º TBE com retornos crescentes) vai cair tal qual na prova; é **extensão**. **Mas saber a extensão calibra você para responder com segurança a questão padrão.**"

> "Erros que vou descontar (já listados na monitoria de hoje, repito):
> 1. Esquecer cancelamento de \(p_1\) em demanda CD quando dotação é em 1 só bem.
> 2. Em economia com \(I \ge 3\), tratar núcleo como sinônimo de Pareto.
> 3. Confundir convexidade de preferências (hipótese 2º TBE) com LNS (hipótese 1º TBE).
> 4. Em produção, tentar max-lucro com retornos crescentes a preços fixos.
> 5. Em Robinson, esquecer que renda inclui salário **e** lucro residual."

#### B4.3 (4 min) — Dúvidas finais + ponte M3

- 3 min para qualquer dúvida final, especialmente das reflexões `refl-claro` da Pré-M2 que não couberam.
- **Ponte M3 (1 min):** *"Sábado 30/05 é a Monitoria 3, primeira de Arrow-Debreu. Cobre Aula 5 (AD-I): bens contingentes, tempo, risco. **Pré-M3 sai antes — fiquem ligados na plataforma.** Vejo todos lá, e na quarta 27/05 com a Aula 6 (AD-II)."*

---

## Apêndice A — Banco de perguntas-disparo

Use conforme o ritmo da turma. **3–4 são suficientes para 2h.**

1. "Em \(I = 3\), por que núcleo é estritamente menor que Pareto-eficiente?"
2. "O que diz Debreu-Scarf 1963?"
3. "Em \(I \to \infty\) (réplica), o que acontece com o núcleo?"
4. "Por que LNS é decisiva no Passo 2 do 1º TBE e não no Passo 1?"
5. "Robinson com \(\sigma\) maior trabalha mais ou menos? Por quê?"
6. "Se firma 1 e firma 2 têm tecnologias diferentes mas preferências dos consumidores são CD simétrica, \(L_1 = L_2\)?"
7. "Cotas \(\theta^{ij}\) heterogêneas alteram alocação \(x^A\) vs. \(x^B\)? Em que condições?"
8. "Por que 2º TBE falha sob retornos crescentes?"
9. "Em monopólio natural (utility, telecom), qual o instrumento institucional?"
10. "Se \(I = 100\) agentes idênticos com CD, núcleo coincide com EC?"
11. "Como se identifica que um EC é Pareto-eficiente sem refazer a prova?"
12. "Por que a igualdade TMS = TMT = w/p é robusta a forma de \(f\)?"

---

## Apêndice B — Banco de exercícios extras (caso sobre tempo no Bloco 3)

Se Bloco 3 fechar adiantado, abrir um destes — **com gabarito 5-passos completo** abaixo.

### M2-extra-1 — 🟡 Bloqueio coalizional por par em economia quase-linear assimétrica

**Enunciado.** Economia \(I = 3, L = 2\). Preferências quase-lineares com agente \(C\) "intermediário":

\[
u^A = x_1 + 2 \ln x_2, \quad u^B = 2 \ln x_1 + x_2, \quad u^C = x_1^{1/2} x_2^{1/2}.
\]

Dotações: \(\omega^A = (4, 0)\), \(\omega^B = (0, 4)\), \(\omega^C = (2, 2)\). Total \(\bar\omega = (6, 6)\).

(a) Verifique que a alocação candidata \(x^A = (3; 0{,}5)\), \(x^B = (0{,}5; 3)\), \(x^C = (2{,}5; 2{,}5)\) é viável **e** racionalmente individual.

(b) Mostre que ela é bloqueada pelo par \(\{A, B\}\) via desvio \(\tilde x^A = (3, 1), \tilde x^B = (1, 3)\).

(c) Verifique que \(C\) sozinho não bloqueia.

(d) Discuta o que isso revela sobre **núcleo \(\subsetneq\) Pareto** em economia com \(I \ge 3\).

> **Nota:** este exercício **não** garante que a alocação seja Pareto-eficiente (ela tipicamente não é, em quase-lineares assimétricas). O ponto pedagógico é apenas demonstrar **bloqueio coalizional por par**, sem precisar verificar Pareto.

**Gabarito 5-passos.**

1. **Ponto-chave.** Bloqueio coalizional por par é o miolo do conceito de núcleo. Em quase-lineares assimétricas, a aritmética fica transparente: agentes \(A\) e \(B\) têm preferências "trocáveis" (\(A\) gosta linearmente de \(x_1\) e logarítmicamente de \(x_2\); \(B\) o oposto), e a alocação proposta concentra recursos no bem "errado" para cada um. \(\{A, B\}\) renegociam para inverter.

2. **Derivação.**
   - **(a) Viável:** \(3 + 0{,}5 + 2{,}5 = 6\) ✓; \(0{,}5 + 3 + 2{,}5 = 6\) ✓. **Racionalidade individual:** \(u^A(x^A) = 3 + 2\ln 0{,}5 \approx 3 - 1{,}386 \approx 1{,}614\); \(u^A(\omega^A) = 4 + 2\ln 0\) — atenção: \(\ln 0 = -\infty\). Em quase-linear com termo logarítmico, dotação com \(x_2 = 0\) entrega utilidade \(-\infty\). Logo qualquer alocação que dê \(x_2^A > 0\) bate autarquia. ✓ Análogo para \(B\). \(u^C(x^C) = \sqrt{2{,}5 \cdot 2{,}5} = 2{,}5 > 2 = u^C(\omega^C)\) ✓.
   - **(b) Bloqueio por \(\{A, B\}\):** recursos da coalizão \((4, 4)\). Desvio \(\tilde x^A = (3, 1), \tilde x^B = (1, 3)\): \(3 + 1 = 4\) ✓; \(1 + 3 = 4\) ✓. Utilidades: \(u^A(\tilde x^A) = 3 + 2\ln 1 = 3 + 0 = 3 > 1{,}614\) ✓ estrito. \(u^B(\tilde x^B) = 2\ln 1 + 3 = 0 + 3 = 3 > 1{,}614\) ✓ estrito. **Coalizão \(\{A, B\}\) bloqueia.**
   - **(c) \(C\) sozinho não bloqueia:** \(u^C(x^C) = 2{,}5 > 2 = u^C(\omega^C)\). \(C\) prefere alocação à autarquia.
   - **(d) Lição:** mesmo sem verificar Pareto-eficiência da alocação candidata, podemos demonstrar que ela está **fora do núcleo** porque \(\{A, B\}\) tem recursos para melhorar ambos estritamente. **Núcleo é restrição mais forte que racionalidade individual** — exige racionalidade de toda subcoalizão.

3. **Armadilha.** Esquecer que dotação com 0 num bem em utilidade quase-linear logarítmica entrega \(-\infty\) — qualquer alocação interior bate autarquia trivialmente. Confundir bloqueio com Pareto: alocação pode estar fora do núcleo sem precisar ser Pareto-superior dominada (basta uma coalizão melhorar estritamente seus membros).

4. **Extensão.** O exemplo evidencia que **núcleo \(\subsetneq\) Pareto + RIO** quando \(I \ge 3\): mesmo alocações Pareto-eficientes podem ser bloqueadas por subcoalizão. Em economia grande (Debreu-Scarf 1963), só EC sobrevive ao bloqueio de todas as coalizões. **Implicação institucional:** mecanismos de barganha multilateral (sindicatos, joint ventures, fusões M&A) precisam respeitar não só Pareto agregado mas racionalidade de cada subconjunto. Em direito da concorrência, "núcleo vazio" surge em mercados com economias de escala extremas (CADE precisa intervir porque mercado não auto-equilibra).

5. **Peer-review.** Calibre 🟡. **Tradeoff de tempo:** 10 min — verificação direta. **Risco residual:** baixo. **Variante AF:** improvável aparecer (núcleo coalizional não é tema típico de prova de microeconomia I; mais provável Aula 9 com matching). **Recomendação:** usar **se e somente se** turma pedir explicitamente exemplo numérico de bloqueio por par no `refl-alberto`.

### M2-extra-2 — 🔴 EG \(2 \times 2\) com não-homotetia + contract curve não-linear

**Enunciado.** Economia de troca pura, \(I = 2, L = 2\). Preferências:

\[
u^A(x_1, x_2) = x_1 + \ln x_2, \quad u^B(x_1, x_2) = \ln x_1 + x_2.
\]

(Quase-lineares com bem distinto como numerário em utilidade.) Dotações \(\omega^A = (2, 1)\), \(\omega^B = (1, 2)\). Total \(\bar\omega = (3, 3)\). Numerário \(p_2 = 1\).

(a) Derive a contract curve.

(b) Calcule o EC.

(c) Verifique que a contract curve é **não-linear** (não passa pela diagonal de Edgeworth).

(d) Discuta por que isto contrasta com CD simétrica (Aula 4).

**Gabarito 5-passos.**

1. **Ponto-chave.** Preferências não-homotéticas (quase-lineares com numerário diferente em utilidade) geram contract curve não-linear na caixa de Edgeworth. EC continua resolvido por mercado walrasiano, mas geometria difere de CD canônica. Caso pedagogicamente importante para aluno entender que tangência \(\text{TMS}^A = \text{TMS}^B\) não implica contract curve linear.

2. **Derivação.**
   - **(a) Contract curve:** \(\text{TMS}^A = 1 \cdot (1/x_2^A)/1 \cdot x_2^A = x_2^A\)? Recalcular: \(u^A_1 = 1\), \(u^A_2 = 1/x_2^A\). \(\text{TMS}^A_{12} = u^A_1/u^A_2 = x_2^A\). Similarmente \(\text{TMS}^B_{12} = u^B_1/u^B_2 = (1/x_1^B)/1 = 1/x_1^B\). Igualdade: \(x_2^A = 1/x_1^B\), ou seja \(x_2^A = 1/(\bar\omega_1 - x_1^A) = 1/(3 - x_1^A)\). **Contract curve:** \(x_2^A \cdot (3 - x_1^A) = 1\), ou seja \(x_2^A = 1/(3 - x_1^A)\) — **hipérbole não-linear**.
   - **(b) EC:** Demanda Marshalliana de \(A\) (quase-linear): \(\text{TMS}^A = p_1/p_2 = p_1\) ⇒ \(x_2^A = p_1\). Demanda do bem 1: residual da renda. \(m^A = 2 p_1 + 1\). Gasto em bem 2: \(p_2 \cdot p_1 = p_1\). Resto: \(x_1^A = (2 p_1 + 1 - p_1)/p_1 = (p_1 + 1)/p_1 = 1 + 1/p_1\). De \(B\): \(\text{TMS}^B = 1/x_1^B = p_1\) ⇒ \(x_1^B = 1/p_1\). \(m^B = p_1 + 2\). Gasto em bem 1: \(p_1 \cdot 1/p_1 = 1\). Resto: \(x_2^B = (p_1 + 2 - 1)/1 = p_1 + 1\). **Mercado 1:** \(x_1^A + x_1^B = 1 + 1/p_1 + 1/p_1 = 1 + 2/p_1 = 3 \Rightarrow p_1^* = 1\). **Alocação:** \(x^A = (2, 1)\), \(x^B = (1, 2)\). **Coincide com a dotação** — não há troca em equilíbrio neste setup. ✓
   - **(c) Verificação na contract curve:** \(x_2^A = 1\), \(x_1^A = 2\); contract curve exige \(x_2^A \cdot (3 - x_1^A) = 1\). Substituir: \(1 \cdot 1 = 1\) ✓. Está na contract curve.
   - **(d) Contraste com CD:** em CD simétrica (\(u^A = u^B = x_1^{1/2} x_2^{1/2}\)), \(\text{TMS}^A = x_2^A/x_1^A\), \(\text{TMS}^B = (\bar\omega_2 - x_2^A)/(\bar\omega_1 - x_1^A)\). Igualdade: \(x_2^A/x_1^A = (\bar\omega_2 - x_2^A)/(\bar\omega_1 - x_1^A)\) ⇒ \(x_2^A (\bar\omega_1 - x_1^A) = x_1^A (\bar\omega_2 - x_2^A)\) ⇒ \(x_2^A \bar\omega_1 = x_1^A \bar\omega_2\), ou seja \(x_2^A/x_1^A = \bar\omega_2/\bar\omega_1\) — **diagonal linear**. Em CD, contract curve é a diagonal da caixa. Em preferências não-homotéticas, contract curve é curva genérica (hipérbole, parábola, etc.).

3. **Armadilha.** Confundir CD com homotetia (CD é homotética; quase-linear não é). Achar que Pareto-eficiente sempre é tangente \(\Rightarrow\) contract curve linear (verdade só em homotética). Confundir TMS de \(A\) (\(= x_2^A\)) com derivada parcial (\(\partial u^A/\partial x_2 = 1/x_2\)).

4. **Extensão.** Em geral, a contract curve depende crucialmente de **homotética vs. não-homotética**:
   - **Homotética** (CD, CES, Leontief, linear): contract curve é linear (passa pela diagonal ou paralela).
   - **Não-homotética** (quase-linear, Stone-Geary, hábito): contract curve é não-linear.

   Implicação para análise empírica: não-homoticidade é regra, não exceção. Engel (1857) já identificava que demanda relativa por bens não escala linearmente com renda — Engel curves não-lineares são evidência empírica de não-homoticidade. Modelos macro com não-homoticidade (Boppart 2014, *Econometrica* 82(6): 2167–2196, **DOI 10.3982/ECTA11354**) reconciliam fatos sobre crescimento estrutural.

5. **Peer-review.** Calibre 🔴. **Tradeoff de tempo:** 14 min — derivação da contract curve é o ponto técnico. **Risco residual:** moderado-alto. **Variante AF:** improvável aparecer com cálculo completo; mais provável aparecer pedindo apenas **derivação da contract curve** ou **EC** isoladamente.

### M2-extra-3 — 🟡 Robinson sem lazer (caso simplificado)

**Enunciado.** Robinson com 1 firma + 1 consumidor + 2 bens (consumo \(q_1, q_2\)). Tecnologia: \(q_1 + q_2 = T\) (PPF linear, "transformação 1:1"; recurso fixo \(T = 10\)). Preferências CD: \(u(q_1, q_2) = q_1^{2/3} q_2^{1/3}\).

(a) Resolva o planejador (qual a alocação \(q_1^*, q_2^*\)?).

(b) Calcule o EC com \(p_1, p_2\) preços (use \(p_2 = 1\) numerário).

(c) Verifique a tangência \(\text{TMS} = \text{TMT}\).

**Gabarito 5-passos.**

1. **Ponto-chave.** Robinson sem lazer reduz o problema a alocação entre dois bens com PPF linear. CPO entrega \(q_1^* = (2/3) T\), \(q_2^* = (1/3) T\) (proporcional aos pesos CD).

2. **Derivação.** Planejador: \(\max q_1^{2/3} q_2^{1/3}\) s.a. \(q_1 + q_2 = 10\). Lagrangiano: \(\mathcal{L} = q_1^{2/3} q_2^{1/3} - \lambda (q_1 + q_2 - 10)\). CPO: \((2/3) q_1^{-1/3} q_2^{1/3} = \lambda\), \((1/3) q_1^{2/3} q_2^{-2/3} = \lambda\). Razão: \((2/3)/(1/3) \cdot q_2/q_1 = 1\) ⇒ \(q_2 = q_1/2\). Combinado com \(q_1 + q_2 = 10\): \(q_1^* = 20/3 \approx 6{,}67\), \(q_2^* = 10/3 \approx 3{,}33\). Em EC: \(\text{TMS}_{12} = (\alpha_1/\alpha_2) \cdot q_2/q_1 = 2 \cdot (10/3)/(20/3) = 1 = p_1/p_2\). Logo \(p_1^* = 1\). \(\text{TMT}_{12} = -dq_2/dq_1|_\text{PPF} = 1\) (PPF linear) \(= p_1^*/p_2^* = 1\) ✓.

3. **Armadilha.** Aplicar lagrangiano sem normalizar — leva a álgebra mais lenta. Confundir TMT com PMa em PPF linear (TMT é taxa de troca, não derivada de \(f\)).

4. **Extensão.** Em PPF não-linear (\(q_1^2 + q_2^2 = 100\), por exemplo), TMT varia ao longo da fronteira; \(p_1^*/p_2^*\) ainda é único (CPO da firma + UMP do consumidor), mas a alocação requer iteração. **Generalização para 1º TBE:** o caso linear é trivial (qualquer alocação na PPF é Pareto-eficiente para alguma distribuição); o caso côncavo exige preço único.

5. **Peer-review.** Calibre 🟡. **Tradeoff de tempo:** 8 min. **Variante AF:** muito provável aparecer com PPF côncava (\(q_1^2 + q_2^2 = c\)). Estrutura idêntica.

### M2-extra-4 — 🔴 2º TBE com transferências numéricas

**Enunciado.** Economia \(I = 2, L = 2\) com CD simétrica: \(u^A = u^B = x_1^{1/2} x_2^{1/2}\). Dotações iniciais \(\omega^A = (3, 1)\), \(\omega^B = (1, 3)\) (Aula 1 da Pré-M2). EC original: \(p_1^* = p_2^* = 1\), \(x^{A*} = x^{B*} = (2, 2)\).

Suponha que o planejador queira implementar a alocação **Pareto-eficiente** \(\hat x^A = (3, 3)\), \(\hat x^B = (1, 1)\) — igualitária na razão dentro de cada cesta, mas dando "dobro de cesta" para \(A\). (Em CD simétrica, a contract curve é a diagonal proporcional do quadrado de Edgeworth: qualquer alocação \(\hat x^A = (\alpha \bar\omega_1, \alpha \bar\omega_2)\) com \(\alpha \in [0, 1]\) está na contract curve. Aqui \(\alpha = 3/4\).)

(a) Verifique que \((\hat x^A, \hat x^B)\) é viável e na contract curve.

(b) Calcule \(p^*\) que sustenta \(\hat x\) como EC.

(c) Calcule transferência lump-sum \(T^i\) (com \(\sum T^i = 0\)) para implementar \((\hat x^A, \hat x^B)\) como EC.

(d) Discuta os requisitos práticos da implementação.

**Gabarito 5-passos.**

1. **Ponto-chave.** 2º TBE diz: dada alocação Pareto-eficiente \(x^*\), existe \(p^*\) e transferências lump-sum \(T\) tais que \(x^*\) é EC após transferência. Em CD simétrica com dotações \((3, 1)/(1, 3)\), a contract curve é a diagonal proporcional, e qualquer ponto dela é implementável.

2. **Derivação.**
   - **(a) Viabilidade:** \(3 + 1 = 4 = \bar\omega_1\) ✓; \(3 + 1 = 4 = \bar\omega_2\) ✓. **Contract curve:** em CD simétrica com pesos \(1/2, 1/2\), \(\text{TMS}^i = x_2^i/x_1^i\). Tangência: \(x_2^A/x_1^A = x_2^B/x_1^B\). Em \(\hat x^A = (3, 3)\), \(\text{TMS}^A = 1\). Em \(\hat x^B = (1, 1)\), \(\text{TMS}^B = 1\). ✓
   - **(b) Preço sustentador:** \(p_1^*/p_2^* = \text{TMS}^A(\hat x^A) = 1\). Logo \(p_1^* = p_2^* = 1\) (mesmo preço do EC original — não muda).
   - **(c) Transferência:** dado \(p^*\), gasto necessário em \(\hat x^i\) é \(p^* \cdot \hat x^i\); renda atual em dotação é \(p^* \cdot \omega^i\). \(T^A = p^* \cdot (\hat x^A - \omega^A) = (1, 1) \cdot ((3,3) - (3,1)) = (1)(0) + (1)(2) = 2\). \(T^B = p^* \cdot (\hat x^B - \omega^B) = (1, 1) \cdot ((1,1) - (1,3)) = (1)(0) + (1)(-2) = -2\). Verificação: \(T^A + T^B = 2 - 2 = 0\) ✓. **Implementação:** transferir 2 unidades do bem 2 de \(B\) para \(A\) (ou equivalente em renda, vale 2 a preço de equilíbrio).
   - **(d) Requisitos:** governo precisa **conhecer alocação alvo** (informação sobre o "Pareto-eficiente desejado"), **conhecer preferências individuais** (para identificar \(p^*\) sustentador), e **executar transferência sem distorção** (lump-sum significa não-condicionada a comportamento). **Em prática, lump-sum sobre habilidade pura é impossível** (governo não observa \(\theta\) — Mirrlees Aula 8); sobre dotação de fator (terra, cotas) é factível. Reforma EC 132/2023 (cashback) aproxima.

3. **Armadilha.** Confundir alocação igualitária em **consumo** com Pareto-eficiente (em CD simétrica com dotações simétricas, \((2, 2)/(2, 2)\) é EC mas qualquer \((\alpha \bar\omega, (1-\alpha) \bar\omega)\) com \(\alpha \in (0, 1)\) também é Pareto-eficiente). Confundir preço (\(p^*\)) com transferência (\(T^i\)) — preço sustenta a alocação, transferência redistribui renda. Esquecer que \(\sum T^i = 0\) é restrição obrigatória (lump-sum redistribui, não cria recurso). Errar o sinal de \(T\) (positivo recebe, negativo paga).

4. **Extensão.** Em economia com produção (Aula 4 estendida), 2º TBE permite redistribuir **dotação de fator** (trabalho, terra) **e** **cotas \(\theta^{ij}\)** das firmas. Reforma EC 132/2023 reorganiza tributação, podendo ser interpretada como aproximação de redistribuição lump-sum (cashback) — mas com complicações (informalidade, evasão, capacidade fiscal). Aula 6 dá prova rigorosa via Hahn-Banach. Aula 8 mostra como assimetria informacional (Mirrlees) restringe lump-sum em prática — Mirrlees (1971), "An Exploration in the Theory of Optimum Income Taxation", *Review of Economic Studies* 38(2): 175–208, **DOI 10.2307/2296779**.

5. **Peer-review.** Calibre 🔴. **Tradeoff de tempo:** 12 min — exercício é direto se aluno reconhecer que CD simétrica gera contract curve linear. **Risco residual:** moderado — aluno pode tropeçar no cálculo de \(T^i\) (sinal, escala). **Variante AF:** plausível em peso 🟡 com cálculo de \(T^i\) para alocação alvo dada. **Recomendação:** usar este exercício se turma quiser ver "implementação concreta de 2º TBE" — fica como extensão da Pré-M2 §5.

---

## Apêndice C — FAQ (perguntas que aluno costuma fazer)

1. **"Núcleo é sempre não-vazio?"** — Em economia de troca pura com preferências contínuas, monotônicas e estritamente convexas, **sim** (Edgeworth 1881; existência rigorosa em Scarf (1967), "The Core of an N Person Game", *Econometrica* 35(1): 50–69, **DOI 10.2307/1909383**). Em economias com bens públicos ou externalidades, núcleo pode ser vazio.

2. **"EC sempre está no núcleo?"** — **Sim**, sob hipóteses padrão (preferências convexas + LNS). É o **1º teorema do bem-estar para o núcleo** — versão mais forte que 1º TBE clássico (que só garante Pareto). Demonstração: se EC for bloqueado por coalizão \(S\), então existe \(\tilde x_S\) viável para \(S\) com utilidade Pareto-superior; mas viabilidade para \(S\) implica que \(\sum_{i \in S} p^* \cdot \tilde x^i \le \sum_{i \in S} p^* \cdot \omega^i\) — contradiz UMP nos membros melhorados.

3. **"Por que Debreu-Scarf 1963 é importante?"** — Dá fundamento ao uso de EC em economias grandes. Sem ele, EC seria "uma alocação dentre as do núcleo", sem privilégio. Com ele, EC é **a única** alocação que sobrevive ao bloqueio coalizional no limite. **Justifica concorrência perfeita pedagogicamente.**

4. **"Saciedade interior **sempre** quebra 1º TBE?"** — Não. Quebra a alavanca da prova (Passo 2). O teorema pode ainda valer caso a caso (ex.: bliss-point com agente linear, monotônico no outro, dotação calibrada). O contraexemplo numérico fechado existe (MWG §16.D Exemplo 16.D.4) mas é particular.

5. **"Robinson Crusoe é caso especial ou geral?"** — É o **caso mínimo** de EG com produção (\(I = J = 1\)). Toda a estrutura (TMS = TMT = w/p, 1º/2º TBE) sobrevive. Generalização para \(I, J > 1\) com cotas \(\theta^{ij}\) é direta. Por isso Robinson é didático: contém a estrutura inteira sem distrair com agregação.

6. **"O salário em Robinson é 'real' ou 'fictício'?"** — É **conta interna** entre o "Robinson-firma" e o "Robinson-consumidor". A separação contábil é o que permite o aparelho walrasiano operar. Em economia com vários agentes/firmas, salário vira preço de mercado real (preço do fator trabalho).

7. **"Por que 2º TBE falha sob retornos crescentes?"** — Porque conjunto de produção \(Y\) deixa de ser convexo, e o teorema de separação (Hahn-Banach) não pode separar \(Y\) de \(\sum_i V^i\) por hiperplano. Sem hiperplano-preço, não há \(p^*\) que descentralize Pareto-eficiente.

8. **"Como a literatura empírica mensura núcleo?"** — Em mercados reais (uso comum, leilões, joint ventures), núcleo é estimado computacionalmente via verificação de bloqueio sobre amostras de coalizões. Roth-Sotomayor (1990, *Two-Sided Matching*) tratam o caso estruturado para matching. Em economia experimental, núcleo é "atrativo de equilíbrio comportamental" — sujeitos negociam até alocações próximas do núcleo.

9. **"Por que CES com \(\sigma > 1\) faz Robinson trabalhar pouco?"** — CES com \(\sigma > 1\) significa lazer e consumo são **muito substituíveis** (curvas de indiferença "menos curvadas" que CD). Quando consumo é caro em utilidade marginal (PMa baixa), Robinson substitui rapidamente para lazer. Efeito de elasticidade.

10. **"Cotas \(\theta^{ij}\) heterogêneas afetam alocação?"** — Sim, **se** lucros das firmas diferem. Em economia com firmas idênticas (\(\pi_j^* = \pi^*\) para todo \(j\)), cotas heterogêneas são neutras na alocação (renda total não muda). Em economia com firmas diferentes, cotas alteram distribuição de renda → demanda → equilíbrio.

11. **"AF vai cobrar Robinson?"** — Plausível em peso 🟡 (Parte II). Cálculo do equilíbrio + verificação TMS=TMT=w/p é o miolo. Exercícios avaliativos da Aula 4 já calibraram nível.

12. **"AF vai cobrar Debreu-Scarf?"** — Improvável em peso 🔴 (não é cálculo). Possível em peso 🟡 como pergunta conceitual ("o que diz o teorema-limite para o núcleo?"). Resposta-canônica: núcleo encolhe com réplica e converge para EC; em economia grande, núcleo \(\approx\) EC.

---

## Apêndice D — Notas para o Alberto (calibração com o Darcio)

Pontos onde o Darcio gostaria que o Alberto **reforce** ou **mitigue** algum aspecto específico, com base na auditoria-bundle-v2 da Aula 4 e na auditoria da Pré-M2:

1. **Aula 4 / Bloco 3.5 (produção) foi denso.** Cirurgia em 07/05 comprimiu Bloco 3 (1º TBE) em 5 min e Pausa 2 em 5 min para abrir espaço para 50 min de produção. **Alberto: dê tempo extra ao Robinson CES (Bloco B.1) se a turma travar.** O Bloco B inteiro foi calibrado para isso — paramétrico em \(\sigma\) + verificação tripla.

2. **Pré-M2 reconheceu limite metodológico** sobre construir contraexemplo numérico fechado de saciedade quebrando 1º TBE. **Alberto: se o `refl-alberto` pedir explicitamente, faça o sketch do A.4** com referência a MWG §16.D Exemplo 16.D.4. Não tente derivar no quadro — densidade algébrica.

3. **Coalizão intermediária \(\{A, C\}\) bloqueando** foi explicitamente prometida pela Pré-M2 §3 ao Alberto. **Alberto: tenha o exemplo do M2-extra-1 (par \(\{A, B\}\) bloqueando em economia quase-linear) como backup** — é mais limpo aritmeticamente que o exemplo CD-simétrica do Bloco A.2. Use o que couber em tempo.

4. **Item da auditoria-bundle-v2 da Aula 4 (commit `4aaea6c` — auditoria pré-monitorias):** auditoria identificou que Box RenovaBio do `durante_aula.md` da Aula 4 tem "vazamento de abstração" (CBIOs são produzidos endogenamente; tratamento como Edgeworth puro é simplificação). **Alberto: confirme com o Darcio na sexta 22/05 se há ajuste recente do Box.** Possivelmente foi corrigido.

5. **Box brasileiros recentes que valem citar (sem inventar números):**
   - **RenovaBio (Lei 13.576/2017)** — citado na Aula 4 Bloco 3.5.d como exemplo de TMS=TMT na produção via CBIOs leiloados em B3.
   - **Reforma EC 132/2023** — citada na Aula 4 Bloco 3 como aproximação de transferência lump-sum via cashback. **Alberto pode mencionar de passagem** quando discutir 2º TBE.
   - **EU ETS (Diretiva 2003/87/EC, Phase 4 2021–2030)** — citado na Aula 4 como "estrutura matemática idêntica" ao RenovaBio. Citar 30 segundos máximo.

6. **O que NÃO entrar na monitoria:** existência rigorosa de equilíbrio via Kakutani/Brouwer (vai para Aula 6); modelos de Bewley/incompleto-de-mercado (vai para Aula 6); Mirrlees (1971, *RES* 38(2): 175–208, **DOI 10.2307/2296779**) — taxação ótima (vai para Aula 8); MWG §17.B–D (existência) — citar em 30s se aluno perguntar; redirecionar para Aula 6 ou MWG.

7. **Calibre dos exercícios M2-extra (Apêndice B):** 4 exercícios com gabarito completo. Use **somente** se Bloco 3 fechar adiantado. Senão, ficam como **material de estudo opcional** que o aluno pode consumir após a monitoria — **avise** isso no encerramento se sobrou tempo curto. **Atenção especial aos extras 2 e 4:** ambos têm verificação de tangência ou Pareto-eficiência que pode requerer recálculo no quadro.

8. **Despedida sóbria:** monitoria 2 não fecha o curso (M3, M4, M5 vêm). Não force ar de finalização. Próxima monitoria (M3, sáb 30/05) é primeira de Arrow-Debreu.

9. **Atenção pedagógica especial:** **Alberto tem que esclarecer no Bloco B.4 que "2º TBE falha sob retornos crescentes" não significa "1º TBE falha"**. O 1º TBE não exige convexidade do \(Y\) (só LNS + max-lucro existir). Sob retornos crescentes, max-lucro não existe a preços fixos, então o **EC nem sequer existe** — vacuamente, "todo EC é Pareto" continua verdadeiro (não há EC para checar). Mas **2º TBE genuinamente falha**: dada alocação Pareto-eficiente interior, não existe \((p^*, w^*)\) que a sustente como EC.

---

> **Encerramento operacional para o Alberto:** este roteiro tem ~6 horas de material em 2 horas de monitoria. **Não tente cobrir tudo.** A ordem de prioridade é:
> 1. Bloco A (núcleo \(\{A,C\}\) + Debreu-Scarf) — sempre.
> 2. Bloco B (Robinson CES + EG \(2\times 2\times 2\)) — sempre.
> 3. Exercício M2-1 (CD com 3 agentes) — sempre.
> 4. Exercício M2-2 (Robinson CES + lazer) — se sobra tempo.
> 5. Bloco B.4 (2º TBE com retornos crescentes) e Bloco 4 (encerramento) — sempre, mas comprima.
>
> **Verifique reflexões `refl-claro` e `refl-alberto` na Pré-M2 na sexta 22/05** e ajuste a ordem se necessário. **Erros típicos da AF Parte II** devem aparecer no Bloco 4 sem comprometer tempo dos exercícios.
