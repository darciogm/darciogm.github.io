# Aula 5 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 20/05/2026. **Tema novo (recalibrado em 07/05/2026):** *Equilíbrio Geral em Mercados Completos — Arrow-Debreu I*. Conteúdo central: estados da natureza, bens contingentes, espaço $\mathbb{R}^{LS}$, equilíbrio AD walrasiano, 1º TBE estendido como corolário direto da Aula 4, aplicação canônica do seguro completo. **Não cobre Radner sequencial nem existência** (Aula 6).

> **Disclaimer pedagógico explícito.** A surpresa desta aula é que **o ferramental Walras + 1º TBE da Aula 4 sobrevive sem alteração de prova** ao trocar $\mathbb{R}^L$ por $\mathbb{R}^{LS}$. A "novidade" é conceitual (estado, bem contingente, mercado completo), não técnica. Por isso o Bloco 3 reaproveita a prova da Aula 4 e ocupa apenas 35 min — o tempo que sobra vai para a aplicação do seguro completo (Bloco 4) e para boxes Brasil/Mundo de mercados financeiros.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 20/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Equilíbrio Geral em Mercados Completos — Arrow-Debreu I
- **Objetivo de aprendizagem:** entender a extensão do espaço de bens para $\mathbb{R}^{LS}$, definir e calcular um equilíbrio Arrow-Debreu em economia simples ($I = 2$, $L = 1$, $S = 2$), reconhecer que o 1º TBE estende sem alteração estrutural, aplicar o ferramental ao caso canônico do seguro completo e ler a equação fundamental $p_s/p_{s'} = \pi_s v'(x_s)/[\pi_{s'} v'(x_{s'})]$ como SDF.
- **Pré-requisitos assumidos:** Aulas 1–4 consolidadas. Pré-aula 5 concluída (ZaE Cap. 14, N&S 12e §7.5 + §13.6, 9 seções da plataforma + quiz pré-aula 10🟡).
- **Nível pedagógico:** meio-termo entre graduação avançada e qualifier diluído. Piso N&S §7.5 + §13.6; teto J-R §5.5 (sem invocar existência via Brouwer/Kakutani — Aula 6).

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | **5 min** |
| 1 | Estados, bens contingentes, espaço $\mathbb{R}^{LS}$ | 19:35 | 20:15 | **40 min** |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | Equilíbrio AD em mercados completos | 20:25 | 21:05 | **40 min** |
| 3 | 1º TBE estendido + 2º TBE estendido | 21:05 | 21:40 | **35 min** |
| P2 | Pausa | 21:40 | 21:50 | **10 min** |
| 4 | Aplicação seguro completo + 2 boxes Brasil/Mundo | 21:50 | 22:20 | **30 min** |
| 5 | Síntese + ponte Aula 6 (existência + Radner) | 22:20 | 22:30 | **10 min** |

**Soma:** $5 + 40 + 10 + 40 + 35 + 10 + 30 + 10 = 180$ min. ✓

> **Note bem.** Os 35 min do Bloco 3 são suficientes **porque a prova é a da Aula 4** — apenas se relê substituindo $\mathbb{R}^L$ por $\mathbb{R}^{LS}$. Se você (Darcio) sentir a turma travada no espaço estendido, o Bloco 1 absorve; o Bloco 3 cabe em 25 min apertados desde que o Bloco 1 tenha cravado a substituição. **Variável de ajuste:** boxes (Bloco 4) podem encolher de 30 → 20 min sem prejuízo, liberando 10 min para Bloco 1 ou Bloco 3.

---

## Bloco 0 — Abertura + recall + triagem reflexões (5 min)

**19:30–19:35.**

### Roteiro

- **Cumprimento e check-in (1 min).** "Aula 5 — vamos para Arrow-Debreu I. Antes de tudo, três perguntas rápidas."
- **Recall da Aula 4 (2 min, no quadro):**
  > "Em uma frase: o que diz o 1º TBE em economia de troca + produção?"
  
  Resposta esperada do tom da sala:
  
  - "Sob LNS de cada $\succeq^i$ + maximização de lucro de cada firma, todo equilíbrio competitivo é Pareto-eficiente."
  
  Se a turma não devolve em 30s, **resgate em 60s** com o desenho-padrão: $p^* \cdot \tilde x > p^* \cdot \omega$ contradiz viabilidade. Não passar disso — Bloco 1 vai usar.
  
- **Triagem das reflexões (2 min).** Pegue 2 reflexões "nebuloso" da pré-aula. Padrões esperados:
  - "Por que viabilidade é estado-a-estado?" → Bloco 1, slide ~6.
  - "Como interpretar heterogeneidade de crenças no preço?" → Bloco 2, slide ~12.
  - "Onde a hipótese de mercado completo entra explicitamente no 1º TBE?" → Bloco 3, slide ~18.
  
  **Triagem é triagem** — diga "vai aparecer no Bloco X" e siga.

### Transição

> "A Aula 4 ensinou Walras + 1º TBE em $\mathbb{R}^L$. A Aula 5 mostra que o mesmo ferramental sobrevive em $\mathbb{R}^{LS}$, e que essa extensão cobre tempo, risco e finanças. A coisa toda em 180 min."

---

## Bloco 1 — Estados, bens contingentes, espaço $\mathbb{R}^{LS}$ (40 min)

**19:35–20:15.**

### Objetivo

Construir, de baixo para cima, o espaço de bens onde Arrow-Debreu vive. Cravar:

1. Estado da natureza $s \in S$, finito.
2. Probabilidade subjetiva $\pi^i_s$ — heterogênea.
3. Bem contingente $(\ell, s)$ — "$\ell$ se $s$".
4. Espaço $\mathbb{R}^{LS}$ — uma cópia de $\mathbb{R}^L$ por estado.
5. Tempo como caso particular: $s = (t, \omega)$.

### Estrutura interna (40 min)

#### B1.a (5 min) — Motivação

> "O mundo real tem incerteza e tempo. A Aula 4 não tinha incerteza. Hoje incorporamos."

Quadro: lista 3 economias canônicas com incerteza:

- **Agricultor**: pode chover ou fazer sol; safra depende.
- **Empresa**: vende mais em macroeconomia em alta.
- **Investidor**: ações sobem ou caem.

Pergunta-chave: *"Qual é a estrutura mínima para o ferramental Walras lidar com isso?"*

Resposta: estender o espaço de bens.

#### B1.b (8 min) — Estados da natureza

Definição formal no quadro:

$$
S = \{1, 2, \ldots, |S|\}, \quad |S| < \infty.
$$

**Exclusivos e exaustivos.** Discussão de 2 min: o que aconteceria se aceitássemos $|S| = \infty$? (Aula 6, ponto fixo precisa de compacidade — pode falhar.)

Probabilidade subjetiva $\pi^i_s \ge 0$, $\sum_s \pi^i_s = 1$. **Heterogeneidade permitida.** Exemplo: $A$ pessimista ($\pi^A_{\text{recessão}} = 0{,}4$), $B$ otimista ($\pi^B_{\text{recessão}} = 0{,}2$).

> *"Se vocês têm crenças diferentes, o mercado tem que dar conta disso. Vai dar."*

#### B1.c (10 min) — Bens contingentes e espaço $\mathbb{R}^{LS}$

**Bem contingente** $(\ell, s)$: "$\ell$ unidades **se** o estado for $s$".

Pergunta socrática: *"Quantos bens distintos existem em uma economia com $L$ bens físicos e $S$ estados da natureza?"*

Resposta: $L \cdot S$.

Quadro: espaço $\mathbb{R}^{LS}$. Vetor de consumo $x^i = (x^i_{\ell, s})_{\ell, s}$. Equivalentemente: $x^i = (x^i_1, \ldots, x^i_{|S|})$ com $x^i_s \in \mathbb{R}^L$.

**Exemplo concreto no quadro.** $L = 1$, $S = 2$. Estados: chuva, sol. Vetor de consumo de $A$: $x^A = (60, 100)$. Lê-se: "60 unidades se chover; 100 se fizer sol". Pergunta à sala: "$A$ está mais ou menos exposto ao risco que se tivesse $(80, 80)$?" — resposta: mais.

**Faça o diagrama no quadro:** eixo $x_{\text{chuva}}$, eixo $x_{\text{sol}}$, ponto $(60, 100)$. Reta de 45° = "sem risco". Distância à reta de 45° = exposição ao risco. **Esse diagrama vai voltar no Bloco 4.**

#### B1.d (8 min) — Tempo como caso particular

$s = (t, \omega)$, $t \in T$, $\omega \in \Omega$.

Casos:

- $|\Omega| = 1$: bens datados. Modelo intertemporal puro. Ex.: consumo $t = 0, 1, 2$.
- $|T| = 1$: bens contingentes em um período. Caso "seguro".
- Ambos: o pacote completo.

> *"O motivo pelo qual essa universalidade é importante: o aparelho EG não distingue tempo de incerteza. Black-Scholes-Merton vive aqui — Aula 6 toca, finanças derivativas é uma extensão direta."*

#### B1.e (9 min) — Preferências e EU como caso particular

**Preferências sobre $\mathbb{R}^{LS}_+$.** Continuidade, monotonicidade, convexidade — mesmas definições, espaço novo.

**Caso particular pedagógico (EU):**

$$
u^i(x^i) = \sum_s \pi^i_s\, v^i(x^i_s).
$$

> *"VNM 1944. Vocês conhecem; tratamento formal é Cap. 7 N&S, §6 MWG. Não é pré-requisito desta aula. Aqui EU é ferramenta — mais bonita do que necessária. Vou usar nas aplicações."*

Aversão ao risco $\Leftrightarrow$ $v^i$ côncava. **Cita** sem provar:

- Equivalente certo $\bar c$: $v(\bar c) = E[v(X)]$.
- Prêmio de risco $\rho = E[X] - \bar c$.
- $\rho > 0$ sse $v$ côncava (Jensen).

**Apenas cita Allais e Ellsberg como anomalias** (10 segundos): "Tem violação empírica documentada da EU. Fora do escopo. Cap. 7 N&S menciona. Aulas 8–9 não dependem."

### Saída do Bloco 1

Ao fechar 20:15, a sala tem que poder responder em uma palavra:

- "Quantos bens em $L = 2$, $S = 3$?" → 6.
- "Diferença entre datado e contingente?" → datado é determinístico, contingente é estocástico. Tempo é caso particular de estado.
- "EU é hipótese ou caso particular?" → caso particular.

Se 30%+ tropeça em alguma, **encolha o Bloco 4 em 5 min e refaça o exemplo concreto (B1.c) com paciência**.

### Transição (P1)

> "Pausa de 10 min. Quando voltarem, vamos meter Walras nesse $\mathbb{R}^{LS}$. Anota: nada novo na álgebra; apenas mais bens."

---

## Pausa 1 — 10 min (20:15–20:25)

Café. Banheiro. Não tente "explicar mais um ponto" — cansa a turma e detona o Bloco 2.

---

## Bloco 2 — Equilíbrio AD em mercados completos (40 min)

**20:25–21:05.**

### Objetivo

Definir EC AD, derivar UMP em $\mathbb{R}^{LS}$, mostrar Walras estendido, derivar a equação fundamental do SDF.

### Estrutura interna (40 min)

#### B2.a (4 min) — Mercado completo

> "**Mercado completo:** existe um preço $p_{\ell, s}$ para cada bem contingente. Negociação ex-ante, em $t = 0$. Quando $s$ se realiza, contratos são executados."

Cuidado importante (declaração explícita): *"Não é mercado spot estado-a-estado + ativos transacionados entre estados — isso é Radner, vai pra Aula 6. Hoje é AD canônico."*

Discussão socrática 1 min: *"Se há $L$ bens e $S$ estados, quantos preços precisamos?"* — $LS$.

#### B2.b (5 min) — Dotações e renda

$\omega^i \in \mathbb{R}^{LS}_+$ — **a dotação já é contingente.** Exemplo do agricultor: $\omega^A = (60, 100)$ = "tenho 60 se chover, 100 se fizer sol; saí da loteria com isso, não escolho".

Renda: $m^i(p) = p \cdot \omega^i = \sum_{(\ell, s)} p_{\ell, s} \omega^i_{\ell, s}$. Linear em preços.

#### B2.c (10 min) — UMP em $\mathbb{R}^{LS}$ + caracterização

Quadro:

$$
\max_{x^i \ge 0}\, u^i(x^i) \quad \text{s.a.} \quad p \cdot x^i \le p \cdot \omega^i.
$$

Lagrangiano (sob LNS, ótimo interior):

$$
\frac{\partial u^i / \partial x^i_{\ell, s}}{p_{\ell, s}} = \lambda^i \quad \text{para todo } (\ell, s).
$$

Logo:

$$
\frac{\partial u^i / \partial x^i_{\ell, s}}{\partial u^i / \partial x^i_{\ell', s'}} = \frac{p_{\ell, s}}{p_{\ell', s'}}.
$$

**Eq-key no slide:** TMS entre quaisquer dois bens contingentes = razão de preços.

> *"Aula 1 fez isso para 2 bens. Aula 5 faz para $LS$ bens. A álgebra é a mesma."*

**Sob EU**, caso $\ell = \ell'$ (mesmo bem físico, dois estados):

$$
\frac{\partial u^i / \partial x^i_{\ell, s}}{\partial u^i / \partial x^i_{\ell, s'}} = \frac{\pi^i_s\, (v^i)'(x^i_{\ell, s})}{\pi^i_{s'}\, (v^i)'(x^i_{\ell, s'})}.
$$

#### B2.d (10 min) — Equilíbrio AD: definição + Walras estendido

**Definição** (escrita formal no quadro):

$(p^*, x^*)$ é equilíbrio AD se:

1. **Otimalidade:** cada $x^{i*}$ resolve UMP de $i$ em $p^*$.
2. **Viabilidade:** $\sum_i x^{i*}_{\ell, s} = \sum_i \omega^i_{\ell, s}$ para cada $(\ell, s)$.

> *"Viabilidade é **estado-a-estado**. O que se entrega no estado $s$ vem do que está disponível no estado $s$. Não há transferência inter-estado de bem físico — só de promessas (preços)."*

**Walras estendido.** Sob LNS:

$$
p^* \cdot z(p^*) = 0, \quad z(p) = \sum_i (x^i(p) - \omega^i) \in \mathbb{R}^{LS}.
$$

Resolva: $LS - 1$ mercados independentes (Walras subtrai 1) + normalização (homogeneidade subtrai 1) = $LS - 1$ preços livres.

**Em $L = 1$, $S = 2$:** $LS = 2$. 1 mercado independente, 1 preço relativo livre ($p_2/p_1$).

#### B2.e (11 min) — Equação fundamental do SDF + cálculo numérico

**Eq-punch no slide:**

$$
\frac{p^*_s}{p^*_{s'}} = \frac{\pi^i_s\, (v^i)'(x^{i*}_s)}{\pi^i_{s'}\, (v^i)'(x^{i*}_{s'})} \quad \text{para todo agente } i.
$$

> *"Em equilíbrio com agentes heterogêneos, **todos veem o mesmo preço**. O lado direito é o mesmo para todos. Essa é a equação fundamental do **Stochastic Discount Factor**. Toda finança derivativa é uma conta sobre essa equação. Lucas (1978) deriva precificação de ativos a partir disso. Mas não fazemos Lucas hoje — só guardem que essa é a porta de entrada."*

**Cálculo numérico no quadro** (8 min): $L = 1$, $S = 2$, $I = 2$. $A$ avesso ($v_A = \ln c$), $B$ neutro ($v_B = c$). $\pi_1 = \pi_2 = 1/2$. $\omega^A = (60, 100)$, $\omega^B = (100, 60)$.

- **Total:** $\bar\omega = (160, 160)$.
- **CPO de $B$ (neutro):** $p^*_1/p^*_2 = \pi_1/\pi_2 = 1$.
- **CPO de $A$ (avesso):** $\pi_1/x^A_1 \cdot x^A_2/\pi_2 = p^*_1/p^*_2 = 1 \Rightarrow x^A_1 = x^A_2$.
- **Orçamento de $A$ em $p^* = (1, 1)$:** $x^A_1 + x^A_2 = 60 + 100 = 160 \Rightarrow x^A_1 = x^A_2 = 80$.
- **Viabilidade:** $x^B_1 = 160 - 80 = 80$, $x^B_2 = 160 - 80 = 80$.

Resultado: ambos consomem $(80, 80)$. **$A$ está totalmente segurado pela neutralidade de $B$ e pelos preços atuarialmente justos.**

### Saída do Bloco 2

> *"$p^*_s/p^*_{s'} = \pi^i_s v_s'/\pi^i_{s'} v_{s'}'$ — escreva no caderno em letras grandes. É a equação que vai aparecer no Bloco 3 e no Bloco 4."*

---

## Bloco 3 — 1º TBE estendido + 2º TBE estendido (35 min)

**21:05–21:40.**

### Objetivo

Mostrar que a prova do 1º TBE da Aula 4 sobrevive em $\mathbb{R}^{LS}$ sem alteração. Enunciar 2º TBE com convexidade. Cravar implicação política.

### Estrutura interna (35 min)

#### B3.a (3 min) — O movimento

> *"Aula 4 fez 1º TBE em $\mathbb{R}^L$ via LNS. Vamos fazer agora em $\mathbb{R}^{LS}$ usando a mesma prova. Atenção: isso **não** é truque. É genuíno. O argumento de bem-estar usa apenas LNS + viabilidade — não usa nada da estrutura do espaço."*

#### B3.b (15 min) — Prova reaproveitada

Quadro, em paralelo (duas colunas):

| **Aula 4 — em $\mathbb{R}^L$** | **Aula 5 — em $\mathbb{R}^{LS}$** |
|---|---|
| $(p^*, x^*)$ EC com LNS. | $(p^*, x^*)$ EC AD com LNS. |
| Suponha $\tilde x$ Pareto-superior. | Suponha $\tilde x$ Pareto-superior. |
| $j$ estritamente: $p^* \cdot \tilde x^j > p^* \cdot \omega^j$. | $j$ estritamente: $p^* \cdot \tilde x^j > p^* \cdot \omega^j$. |
| $i$ fracamente + LNS: $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$. | $i$ fracamente + LNS: $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$. |
| Soma: $p^* \cdot \sum_i \tilde x^i > p^* \cdot \sum_i \omega^i$. | Soma: $p^* \cdot \sum_i \tilde x^i > p^* \cdot \sum_i \omega^i$. |
| Viabilidade $\Rightarrow$ contradição. | Viabilidade $\Rightarrow$ contradição. |

> *"Linha por linha. O produto interno em $\mathbb{R}^{LS}$ é apenas mais coordenadas. A prova só usa que (a) UMP exausta orçamento, (b) LNS dá vizinhança preferida, (c) viabilidade é igualdade vetorial ponto a ponto (em $\mathbb{R}^{LS}$, isso é estado-a-estado). As três valem em qualquer $\mathbb{R}^N$."*

**Discussão de 3 min sobre LNS na nova versão:** o que é LNS em $\mathbb{R}^{LS}$? Em toda vizinhança de $x \in \mathbb{R}^{LS}_+$, existe $\tilde x$ estritamente preferido. Sob EU com $v$ estritamente crescente, vale automaticamente.

#### B3.c (8 min) — Ponto-chave: viabilidade é estado-a-estado

> *"O passo crucial é que a viabilidade da alocação alternativa $\tilde x$ exige $\sum_i \tilde x^i_{\ell, s} = \sum_i \omega^i_{\ell, s}$ **estado-a-estado**. Isso é o que faz o produto interno $p^* \cdot \sum_i \tilde x^i = p^* \cdot \sum_i \omega^i$ funcionar."*

Slide com a desigualdade-chave em destaque:

$$
\underbrace{p^* \cdot \sum_i \tilde x^i}_{\text{soma estrita}} > \underbrace{p^* \cdot \sum_i \omega^i}_{\text{soma estado-a-estado igual}} \quad\Rightarrow\quad \text{contradição.}
$$

#### B3.d (5 min) — 2º TBE estendido

**Enunciado** (sem prova):

> "Sob convexidade de $\succeq^i$ em $\mathbb{R}^{LS}_+$, toda alocação Pareto-eficiente é EC AD após redistribuição lump-sum em $t = 0$. Prova via Hahn-Banach — Aula 6, no rastro do existência."

**Implicação política:** *"Se você tem mercados completos e pode redistribuir antes de o estado se realizar, atinge qualquer Pareto-eficiente. Lump-sum no tempo $t = 0$ é o instrumento. **Mas:** mercados completos é hipótese forte. E lump-sum também."*

#### B3.e (4 min) — Por que isso importa

> *"O 1º TBE em AD é o teorema mais bonito do EG: tempo, risco, finanças — tudo coberto pela mesma estrutura. Quando ele falha (Aulas 7–9), a falha é diagnosticável: ou os mercados não são completos, ou as preferências não são bem-definidas (externalidade), ou a informação é assimétrica. Cada Aula 7, 8, 9 é uma falha específica do 1º TBE."*

### Saída do Bloco 3

A sala tem que poder responder:

- "O que estende exatamente?" → A prova do 1º TBE.
- "O que muda?" → Só o espaço de bens.
- "Onde a hipótese de mercado completo entra?" → Implicitamente, ao haver $p_{\ell, s}$ para cada $(\ell, s)$.

---

## Pausa 2 — 10 min (21:40–21:50)

Pausa firme. Bloco 4 é o que dá vida ao formalismo.

---

## Bloco 4 — Aplicação seguro completo + boxes Brasil/Mundo (30 min)

**21:50–22:20.**

### Objetivo

Mostrar a aplicação canônica (seguro completo com agente avesso + neutro). Conectar com casos brasileiros e mundiais reais.

### Estrutura interna (30 min)

#### B4.a (15 min) — Seguro completo

Setup: $L = 1$, $S = 2$, $I = 2$. $A$ avesso (Bernoulli $v_A$ estritamente côncava). $B$ neutro ao risco ($v_B(c) = c$). $\pi_1, \pi_2$ probabilidades de consenso.

**Resultado-chave** (4 min de derivação no quadro):

1. Neutralidade de $B$ + ótimo interior $\Rightarrow p^*_1/p^*_2 = \pi_1/\pi_2$ (preços atuarialmente justos).
2. CPO de $A$: $\frac{\pi_1 v_A'(x^A_1)}{\pi_2 v_A'(x^A_2)} = \frac{p^*_1}{p^*_2} = \frac{\pi_1}{\pi_2}$.
3. Cancela $\pi$: $v_A'(x^A_1) = v_A'(x^A_2) \Rightarrow x^A_1 = x^A_2$ (concavidade estrita injetora).

**Eq-punch:** *Em mercado completo + neutralidade do segurador, o segurado é totalmente segurado.*

**Diagrama no quadro** (5 min): $(x^A_1, x^A_2)$, reta 45°, dotação $\omega^A$ fora dela, ponto de equilíbrio $x^{A*}$ na 45°. Reta orçamentária com inclinação $-\pi_1/\pi_2$.

**Discussão socrática (6 min):**

- *"Por que $B$ aceita carregar o risco?"* Resposta: utilidade linear $\Rightarrow$ indiferente desde que valor esperado seja respeitado.
- *"Onde isso quebra na vida real?"* Lista no quadro:
  - Seleção adversa (Aula 8).
  - Risco moral (Aula 8).
  - Mercados incompletos (Aula 6).
  - Externalidades sistêmicas (Aula 7).

#### B4.b (8 min) — Box Brasil — Proagro / Proagro Mais

> *"O Proagro é um seguro agrícola público que garante o agricultor familiar contra perdas climáticas. Sob a ótica AD: o Estado faz o papel do agente neutro $B$ — pode diversificar risco entre agricultores (lei dos grandes números). Em equilíbrio AD ideal, o prêmio cobrado é atuarialmente justo. Na prática: subsídio cruzado, seleção adversa (agricultores em áreas de mais risco aderem mais), e custo fiscal documentado."*

Cite ordem de grandeza *[verificar fonte]*: cobertura Proagro ~R\$ X bilhões/ano para ~Y mil agricultores.

> *"Pergunta para vocês ruminarem: **se o Estado é neutro ao risco** (porque é grande), e **agricultores são avessos**, faz sentido o Estado fazer seguro? AD canônico diz que sim. Aula 8 (seleção adversa) vai dizer "depende"."*

#### B4.c (7 min) — Box Mundo — Mercados de carbono e SDF aplicado

> *"O European Union Emissions Trading System (EU ETS) é um mercado de bens contingentes onde o **estado é a temperatura agregada do planeta**. Cada permissão de emissão é um **direito de poluir contingente** ao cenário climático. O preço da permissão tem que refletir, em equilíbrio, expectativas de risco climático ponderadas pela aversão ao risco."*

> *"Stochastic Discount Factor aplicado: $p_{\text{permissão}} = E[\text{benefício marginal} \times m]$ onde $m$ é o SDF. Hansen-Jagannathan (1991) testaram a equação SDF empiricamente. **Não vamos fazer econometria hoje** — Aula 6 cita; Aula 8 retoma quando entrar info assimétrica."*

> *"Pergunta para a Aula 6: o EU ETS é um mercado completo? Resposta curta: não, apenas spans um subespaço. Mas **se for** completo, AD se aplica. Esse é o tipo de pergunta que o 2º TBE estendido endereça."*

### Saída do Bloco 4

A sala tem que ter visto **dois exemplos concretos** onde o ferramental AD é a linguagem natural — Proagro (Brasil) e EU ETS (Mundo). E tem que ter o diagrama $(x_1, x_2)$ com 45° gravado.

---

## Bloco 5 — Síntese + ponte Aula 6 (10 min)

**22:20–22:30.**

### Roteiro

#### B5.a (4 min) — Síntese

Quadro com a equação-martelo:

$$
\boxed{\;\frac{p^*_s}{p^*_{s'}} = \frac{\pi^i_s\, (v^i)'(x^{i*}_s)}{\pi^i_{s'}\, (v^i)'(x^{i*}_{s'})} \quad \forall i\;}
$$

> *"Equação fundamental do SDF. Toda finança derivativa é uma consequência. Toda Aula 6 é a pergunta: **e se o mercado não for completo?**. Toda Aula 7 é: **e se houver externalidade na realização do estado?**. Toda Aula 8 é: **e se o agente conhecer o estado e o mercado não?**."*

**Tabela síntese** (3 min):

| Conceito | Aula 4 (sem incerteza) | Aula 5 (com incerteza) |
|---|---|---|
| Espaço de bens | $\mathbb{R}^L$ | $\mathbb{R}^{LS}$ |
| Bens | $L$ | $LS$ |
| Preços | $p \in \mathbb{R}^L$ | $p \in \mathbb{R}^{LS}$ |
| Walras | $p \cdot z = 0$ | $p \cdot z = 0$ |
| 1º TBE | LNS $\Rightarrow$ Pareto | **mesma prova** |
| 2º TBE | Convexidade $\Rightarrow$ EC | **mesma estrutura** |

#### B5.b (6 min) — Ponte Aula 6

Três perguntas que ficam para a próxima:

1. **Existência.** Sob que hipóteses existe equilíbrio AD? Ferramentas: continuidade do excesso de demanda, Brouwer/Kakutani. *[N&S §13.6 ou capítulo dedicado, J-R §5.2]*
2. **Radner sequencial.** Em vez de **um** mercado completo ex-ante, suponha que há **mercado spot estado-a-estado** + alguns ativos transacionados em $t = 0$. Quando isso replica AD canônico? Quando é estritamente mais restritivo? *(Resposta-curta: replica se ativos *spans* $\mathbb{R}^S$.)*
3. **Mercados incompletos.** Se não há ações Arrow para todos os estados, a alocação de equilíbrio é genericamente Pareto-ineficiente. **A 1ª regra de bem-estar do mercado falha.** Hart (1975) deu o teorema-chave.

> *"Aula 6 fecha o EG. Aula 7 abre as falhas (externalidades, bens públicos). Boa noite, vejo vocês no sábado 30/05 com o Alberto na pré-monitoria 3. Ela cobre exatamente o conteúdo de hoje — vocês saem com $\mathbb{R}^{LS}$ na ponta da língua."*

---

## Apêndices operacionais

### A. Material para o quadro

- Slide 1 (Bloco 1): "Estado, probabilidade subjetiva, bem contingente."
- Slide 2 (Bloco 1): Diagrama $(x_{\text{chuva}}, x_{\text{sol}})$ com reta 45°.
- Slide 3 (Bloco 2): UMP em $\mathbb{R}^{LS}$.
- Slide 4 (Bloco 2): Walras estendido + redução $LS - 1$.
- Slide 5 (Bloco 2): Equação SDF.
- Slide 6 (Bloco 3): Tabela paralela 4 × 5 (Aula 4 vs. Aula 5).
- Slide 7 (Bloco 4): Diagrama do seguro completo.
- Slide 8 (Bloco 4): Box Proagro / Box EU ETS.
- Slide 9 (Bloco 5): Equação-martelo SDF + 3 perguntas Aula 6.

### B. Variáveis de ajuste em tempo real

| Sintoma | Ajuste |
|---|---|
| Sala travada no espaço $\mathbb{R}^{LS}$ (Bloco 1) | Encolhe Bloco 4.b ou .c em 5 min cada; usa pra repetir o exemplo $L = 1$, $S = 2$ no Bloco 1.c |
| Sala fluindo, Bloco 1 acaba em 30 min | Usa 10 min extra no Bloco 2.e (mais cálculo numérico) ou Bloco 4.a (mais derivação seguro completo) |
| Pergunta sobre Radner ou "por que mercado completo é necessário?" | "Aula 6, vai dar pra ver. Hoje cravamos AD canônico." Não entre. |
| Pergunta sobre Allais / Ellsberg | "Cap. 7 N&S menciona. Fora do escopo da Aula 5. Vou disponibilizar PDF de leitura panorâmica na pasta da pré-monitoria 3." |
| Pergunta sobre Black-Scholes | "Aula 6, e finanças derivativas é extensão direta. Hoje só citamos a porta de entrada (SDF)." |

### C. Telemetria pós-aula (admin dashboard)

Após a aula, conferir no dashboard `admin.html`:

- **Confidence ratings post-Bloco 1** (espaço $\mathbb{R}^{LS}$): se P50 < 3 (de 5), o conceito não cravou — ajustar pré-monitoria 3 com Alberto.
- **Quiz pós-aula 5 — Q4 (SDF)**: se acerto 1ª < 50%, o derivar foi rápido demais; revisitar slide 5 do Bloco 2 na pré-monitoria.
- **Reflexão "nebuloso"**: se mais de 30% das reflexões mencionam "Radner" ou "incompletude", a ponte para Aula 6 pode ser mais explícita.

---

## Anti-padrões (Referee 2)

- ❌ **Não introduzir Radner sequencial.** Foi explicitamente cortado do escopo. Se mencionar, é em 30 segundos no Bloco 5.b como "a outra forma de fazer EG com incerteza".
- ❌ **Não ensinar VNM como teoria.** EU é caso particular pedagógico — não dedique bloco. 90 segundos no Bloco 1.e e segue.
- ❌ **Não desenhar Edgeworth com bens contingentes.** A Edgeworth da Aula 4 é em $\mathbb{R}^L$; em $\mathbb{R}^{LS}$ vira hipercaixa, e desenhar isso em 2 dimensões é confusão. Use o diagrama $(x_{\text{chuva}}, x_{\text{sol}})$ — é o análogo em $L = 1$, $S = 2$.
- ❌ **Não derivar Black-Scholes.** Cita; não derive. Aula 6 toca.
- ❌ **Não citar artigos sem confirmação de DOI.** Hansen-Jagannathan (1991), Lucas (1978), Hart (1975), Debreu (1959): todos existem, mas mencione apenas título + ano sem DOI no slide. Se aluno pedir referência exata, *[verificar DOI]* no aftermath.
- ❌ **Não fechar a aula com "isso é a melhor versão do mercado, e tudo o que vem é decadência".** Fecha com **questão** (Aula 6: existência + Radner + incompletude).
