# Aula 4 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 13/05/2026. **Recalibrado em 07/05/2026** após mudança de ementa: a Aula 4 agora cobre **trocas + produção** (120 min trocas + 50 min produção + 10 min ponte AD-I). Estrutura paralela aos `durante_aula.md` das Aulas 1–3.

> **Trade-off declarado.** Os 50 min para produção são **piso**, não conforto. Robinson Crusoe é apresentado em forma simplificada (1 consumidor + 1 firma + 2 bens via $L/q$), sem $J$ firmas variáveis nem cota $\theta^{ij}$ explicitada algebricamente. A generalização para $J$ firmas é citada como corolário no Bloco 3.5.d em ~5 min, sem cálculo. Quem quiser ver a versão completa: pré-monitoria 2 com Alberto (sáb 23/05). **Bloco 4 (Box Brasil/Mundo) foi cortado de 30 → 15 min** — corte cirúrgico do Box ZFM/Manaus para abrir espaço; Box EU ETS foi comprimido a 1 slide condensado.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 13/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Equilíbrio Geral em Trocas Puras **e Produção** — Edgeworth, Pareto, equilíbrio competitivo, Walras, 1º TBE em troca, **PPF + Robinson Crusoe + 1º TBE com produção como corolário**, ponte AD-I
- **Objetivo de aprendizagem:** dominar a representação Edgeworth de uma economia $2\times 2$ de troca pura; calcular equilíbrio competitivo em CD; aplicar a lei de Walras; demonstrar o 1º TBE pedagogicamente; **construir a PPF a partir de duas funções de produção**; **calcular o equilíbrio descentralizado de Robinson Crusoe e ler $\text{TMS} = \text{TMT} = w/p$ como assinatura do 1º TBE com produção**; antecipar o 2º TBE e a ponte para Arrow-Debreu I.
- **Pré-requisitos assumidos:** Aulas 1–3 consolidadas (UMP, demanda Marshalliana, Walras a nível individual, dualidade, elasticidades). Pré-aula 4 concluída (ZaE EG, N&S 12e §13.1–§13.2; Apêndice de produção §11/§13.3 leitura passiva).
- **Nível pedagógico:** meio-termo entre graduação avançada e qualifier diluído. Piso N&S 12e §13.1–13.2 + §11 (intro a produção); teto J-R §5.1 (sem invocar Kakutani, sem Hahn-Banach formal).

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | **5 min** |
| 1 | Edgeworth, Pareto, contract curve, núcleo (núcleo em 6 min) | 19:35 | 20:13 | **38 min** |
| P1 | Pausa | 20:13 | 20:23 | **10 min** |
| 2 | EC + lei de Walras + cálculo CD (Leontief opcional) | 20:23 | 20:55 | **32 min** |
| 3 | 1º TBE prova + 2º TBE preliminar | 20:55 | 21:23 | **28 min** |
| P2 | Pausa curta | 21:23 | 21:30 | **7 min** |
| **3.5** | **Tecnologia + PPF + Robinson Crusoe + 1º TBE c/ produção** ✦ NOVO | **21:30** | **22:20** | **50 min** |
| 4' | Box único condensado (RenovaBio como TMS=TMT) | 22:20 | 22:25 | **5 min** |
| 5 | Síntese (1 min) + ponte AD-I (4 min) | 22:25 | 22:30 | **5 min** |

**Checagem de soma:** $5 + 38 + 10 + 32 + 28 + 7 + 50 + 5 + 5 = 180$ min. ✓

> **Trade-off explícito (Referee 2):** os Boxes Brasil/Mundo originais (EU ETS + RenovaBio, 30 min) foram comprimidos para **um único Box ultracurto (5 min)**. EU ETS é citado como "estrutura matemática idêntica" sem desenvolvimento. Box ZFM cortado integralmente — material reaproveitado em pré-monitoria 2 ou Aula 7 (externalidades regionais). **Perda real:** aplicação federalismo fiscal brasileiro perde tração. **Ganho real:** PPF + Robinson Crusoe entram com integridade matemática mínima.

> **Trade-off explícito do Bloco 3 (1º TBE):** comprimido em 5 min via supressão da discussão de "saturação direcional ≠ violação de LNS" (que migra integralmente para a pré-aula §5 e o quiz pós-aula Q6 🔴). A prova padrão fica intacta. Sinalizar em sala: "saturação direcional não derruba LNS — ver pré-aula e Q6".

> **Histórico de calibragem.** O timing acima foi resultado de 3 passadas iterativas durante a cirurgia da Aula 4 (07/05/2026). Versões intermediárias e cálculos de soma estão preservados em `aula_4/cirurgia-producao.md` (seção "Histórico de aritmética do roteiro") para auditoria.

*Lição das Aulas 1–3:* Bloco 1 (Edgeworth) é onde a turma trava se mal-conduzida. A construção *visual* tem que ser feita ao vivo no quadro — não apenas projetada. 38 min é o piso. Núcleo (1.d) reduzido a 6 min, sem cálculo de bloqueio em $I=3$ (vai para pré-monitoria 2).

---

## Bloco 0 — Abertura (5 min, 19:30–19:35)

- [ ] **Check-in (1 min):** chamada, "papel, caneta e lápis de cor — Edgeworth se aprende com mão. **Hoje a aula tem mais conteúdo: terminamos com firmas e produção.**"
- [ ] **Triagem oral das reflexões (3 min):** puxar do dashboard as 2-3 dúvidas agregadas mais comuns da pré-aula 4 (D-1) e anunciar onde a aula resolve cada uma.
  - Se "por que LNS é necessário?" estiver no top, anunciar que vai ser resolvido **na demonstração do 1º TBE no Bloco 3**.
  - Se "EC é único?" aparece, anunciar que entra em Bloco 2 (em CD sim; em geral, não — Aula 6).
  - Se "PPF é como Edgeworth?" aparece, anunciar Bloco 3.5.
- [ ] **Recall da Aula 3 (1 min):** quadro com Slutsky em elasticidades + lei de Walras a nível individual ($p\cdot x^M = m$) + as 4 restrições agregadas. "Hoje, o $p$ deixa de ser exógeno. É preço de equilíbrio. **No fim da aula, $p$ vai equilibrar não só consumo, mas também produção.**"

---

## Bloco 1 — Edgeworth, Pareto, contract curve, núcleo (38 min, 19:35–20:13)

### 1.a. Setup da economia de troca pura (~5 min)

- [ ] **Quadro:** $I=2$ consumidores ($A$, $B$), $L=2$ bens ($1$, $2$). Cada $i$ com $u^i: \mathbb{R}^2_+ \to \mathbb{R}$ contínua, monotônica, estritamente quase-côncava. Dotação $\omega^i \in \mathbb{R}^2_{++}$.
- [ ] **Alocação:** $x = (x^A, x^B)$. **Viável:** $x^A + x^B = \omega^A + \omega^B = \bar\omega$.
- [ ] **Frase-martelo:** "Não há produção *ainda*. Recursos fixos. Como redistribuir? **No Bloco 3.5 voltamos a essa frase para apagar 'ainda'**."

### 1.b. Caixa de Edgeworth — construção ao vivo no quadro (~12 min)

- [ ] **Quadro: desenhar a caixa.** Eixos com comprimento $\bar\omega_1$ horizontal e $\bar\omega_2$ vertical. Origem $A$ (canto inferior-esquerdo) e origem $B$ (canto superior-direito). **Cada ponto interior é uma alocação viável** — $x^A$ é lido a partir de $A$, e $x^B$ a partir de $B$.
- [ ] **Ponto de dotação $\omega$**: marcar como ponto de partida.
- [ ] **Curvas de indiferença de $A$**: convexas para $A$. Curvas de $B$: convexas para $B$ (parecem côncavas a olhos de $A$).
- [ ] **Lente de melhoria mútua**: na dotação $\omega$, marcar a interseção dos dois conjuntos preferidos. **"Aqui dentro: ambos ganham. Fora: pelo menos um perde."**
- [ ] **Frase-martelo:** "A caixa de Edgeworth é o microscópio mais barato que a teoria oferece."

### 1.c. Pareto-eficiência e contract curve (~10 min)

- [ ] **Definição formal de Pareto:** $x$ Pareto-eficiente se viável e não há $\tilde x$ viável com todos pelo menos iguais e algum estritamente melhor.
- [ ] **Caracterização interior** (com utilidades suaves, $x^i \gg 0$): $\text{TMS}^A(x^A) = \text{TMS}^B(x^B)$. Tangência das curvas.
- [ ] **Demonstração informal:** se $\text{TMS}^A \neq \text{TMS}^B$, existe troca infinitesimal ($A$ dá um pouco do bem para o qual valoriza menos, recebe do outro) que melhora ambos. Pareto exige tangência.
- [ ] **Contract curve:** lugar geométrico das alocações Pareto-eficientes. Curva contínua que conecta origem $A$ e origem $B$ (em economias suaves).
- [ ] **Frase-martelo:** "Tangência é a fronteira do que mercado pode fazer sem redistribuir."

### 1.d. Núcleo (~6 min)

- [ ] **Definição operacional:** alocação $x$ está no **núcleo** se (i) é individualmente racional ($u^i(x^i) \ge u^i(\omega^i)$) e (ii) não pode ser bloqueada por nenhuma coalizão.
- [ ] **Em $I=2$:** "coalizão" = ou um, ou outro, ou os dois. Bloqueio individual = $u^i(x^i) < u^i(\omega^i)$. Bloqueio do par = existe $\tilde x$ Pareto-superior.
- [ ] **Núcleo em economia $2\times 2$ = parte da contract curve dentro da lente de melhoria mútua passando pela dotação.** Subconjunto da contract curve.
- [ ] **Frase-martelo:** "Núcleo é Pareto + voluntariedade. Mais restrito que Pareto puro."
- [ ] **[15s extras — anunciar slide "Núcleo (2/2) — leitura visual" (núcleo encolhe com réplica):**] *"Debreu-Scarf (1963), com intuição original em Edgeworth (1881) — núcleo $\subseteq$ EC no limite. Quem quiser ver a prova: J-R §5.3. Na monitoria 2 com Alberto, **núcleo em $I=3$ explicitamente**."*

### 1.e. Ponte (~5 min)

- [ ] "Pareto e núcleo são *conjuntos* de alocações. Mercado escolhe **uma** delas via *preços*. Bloco 2."

> **Armadilha a sinalizar (Bloco 1.c):** alunos confundem "tangência ⇒ Pareto" com "Pareto ⇒ tangência". Em fronteira Pareto pode não ter tangência. Sinalizar e seguir.

---

## Pausa 1 (10 min, 20:13–20:23)

---

## Bloco 2 — EC + lei de Walras + cálculo CD (32 min, 20:23–20:55)

### 2.a. Tomadores de preço, UMP individual, excesso de demanda (~5 min)

- [ ] **Quadro:** preço $p = (p_1, p_2) \ge 0$, $p \neq 0$. Renda inicial $m^i = p\cdot \omega^i$.
- [ ] **UMP em $i$:** $x^i(p) \in \arg\max u^i(x^i)$ s.a. $p\cdot x^i \le p\cdot \omega^i$, $x^i \ge 0$.
- [ ] **Excesso de demanda individual:** $z^i(p) = x^i(p) - \omega^i$. **Excesso agregado:** $z(p) = \sum_i z^i(p)$.

### 2.b. Lei de Walras — derivação rápida (~5 min)

- [ ] **Quadro:** assumir LNS ⇒ $p\cdot x^i(p) = p\cdot \omega^i$. Logo $p\cdot z^i(p) = 0$ e por soma $p\cdot z(p) = 0$.
- [ ] **Implicação operacional em $L=2$:** zerar $z_1 = 0$ ⇒ $z_2 = 0$. Em $L$ bens, $L-1$ equações suficientes.
- [ ] **Homogeneidade grau 0:** podemos normalizar (ex.: $p_2 = 1$).

### 2.c. Equilíbrio competitivo — definição (~4 min)

- [ ] **Definição:** EC = $(p^*, x^*)$ com cada $x^{*i}$ resolvendo UMP em $p^*$ e $\sum_i x^{*i} = \sum_i \omega^i$. Em $L=2$, $z(p^*) = 0$ via Walras = zerar 1 mercado.
- [ ] **Frase-martelo:** "Tomadores de preço + viabilidade. Não há leiloeiro implícito; o $p^*$ é objeto matemático."

### 2.d. Cálculo numérico em CD simétrica (~8 min)

- [ ] **Setup:** $u^A = u^B = x_1^{1/2}x_2^{1/2}$. $\omega^A = (3, 1)$, $\omega^B = (1, 3)$. Total $\bar\omega = (4, 4)$.
- [ ] **Demanda CD:** $x_1^A(p) = m^A/(2 p_1)$. Mercado 1 fecha em $p_2/p_1 = 1$ ⇒ $p^* = (1,1)$, $x^{A*} = x^{B*} = (2, 2)$.
- [ ] **Verificação:** $\text{TMS}^A = \text{TMS}^B = 1$. Walras ✓.

### 2.e. Cálculo numérico em CD assimétrica (~7 min)

- [ ] **Setup canônico do bundle:** $u^A = x_1^{2/3}x_2^{1/3}$, $u^B = x_1^{1/3}x_2^{2/3}$. $\omega^A = (1, 4)$, $\omega^B = (3, 0)$. Numerário $p_2 = 1$.
- [ ] **Demanda:** $x_1^A = 2/3 + 8/(3 p_1)$. $x_1^B = 1$ — destacar cancelamento.
- [ ] **Mercado 1:** $p_1^* = 8/7$. Alocação $x^A = (3, 12/7)$, $x^B = (1, 16/7)$. $\text{TMS}^* = 8/7$ em ambos.
- [ ] **Frase-martelo:** "Preço relativo no EC reflete preferências **e** dotações."

### 2.f. Leontief — opcional (~3 min, se sobrar tempo)

- [ ] Comentário rápido: $u^A = x_1^{1/2}x_2^{1/2}$, $u^B = \min\{x_1, x_2\}$, $\omega^A = (10, 0)$, $\omega^B = (0, 10)$ ⇒ $p_1^* = 1$, ambos consomem $(5, 5)$. Se faltar tempo, **migrar para slide só com resultado** e remeter ao Exercício avaliativo 3.

> **Armadilha (Bloco 2.b):** "lei de Walras vale só em equilíbrio". **Falso.** Walras é identidade.

---

## Bloco 3 — 1º TBE + 2º TBE preliminar (28 min, 20:55–21:23)

### 3.a. Hipóteses (~3 min, ⬇ −2)

- [ ] **LNS** + intuição. "Mais geral que monotonicidade estrita."

### 3.b. Demonstração do 1º TBE — linha-a-linha (~14 min, ⬇ −1)

- [ ] **Enunciado.** Em troca pura com LNS, todo EC é Pareto-eficiente.
- [ ] **Por contradição.** ∃ $\tilde x$ viável com $u^i(\tilde x^i) \ge u^i(x^{*i})$ ∀ $i$, e estrita para algum $j$.
- [ ] **Passo 1.** $p^*\cdot \tilde x^j > p^*\cdot \omega^j$ (se cabia, $x^{*j}$ não maximizaria).
- [ ] **Passo 2 (LNS).** Para $i \neq j$: se $p^*\cdot \tilde x^i < p^*\cdot \omega^i$, LNS ⇒ vizinho $\hat x^i$ preferido, com $p^*\cdot \hat x^i \le p^*\cdot \omega^i$ por continuidade. Contradiz UMP. Logo $p^*\cdot \tilde x^i \ge p^*\cdot \omega^i$.
- [ ] **Passo 3.** Soma: $\sum p^*\cdot \tilde x^i > \sum p^*\cdot \omega^i$. Mas viabilidade força igualdade. Contradição. $\blacksquare$
- [ ] **Frase-martelo:** "Pareto-superior precisa custar mais que dotação. Mas tudo somado custa exatamente a dotação. Contradição."

### 3.c. O papel exato de LNS (~3 min, ⬇ −2)

- [ ] **Onde LNS aparece:** apenas no passo 2.
- [ ] **Sinalizar em sala (sem desenvolver):** "Saturação direcional ≠ violação de LNS — exemplo $u = \min\{x_1,1\} + x_2$ no §5 da pré-aula e Q6 do quiz pós. Para violar LNS de fato: bliss-point interior, MWG §16.D — pré-monitoria 2."

### 3.d. 2º TBE preliminar (~8 min, ⬇ −2)

- [ ] **Enunciado intuitivo.** Sob convexidade, todo Pareto-eficiente é EC após **redistribuição lump-sum** das dotações.
- [ ] **Hipótese-chave:** convexidade. Sem ela: retornos crescentes, indivisibilidades.
- [ ] **Frase-martelo:** "1º TBE: mercado é Pareto. 2º TBE: Pareto pode ser implementado por mercado — se você puder redistribuir."
- [ ] **Sinalizar:** prova rigorosa via Hahn-Banach é Aula 6.

> **Armadilha (3.d):** "1º TBE diz que EC é justo." Falso — eficiência ≠ justiça.

---

## Pausa 2 — curta (5 min, 21:23–21:30)

> **Pausa cortada de 10 → 5 min.** Sinalizar: "Pausa rápida; voltamos com firmas." Quem precisar de banheiro vai antes, sem cerimônia. Aviso explícito: "as últimas 50 min são dense — recomendo ficar."

---

## Bloco 3.5 — Tecnologia + PPF + Robinson Crusoe + 1º TBE com produção (50 min, 21:30–22:20) ✦

> **Conteúdo NOVO da Aula 4 (cirurgia 07/05).** Comprimido a partir do material de produção pré-existente (`aula_5/_archive_eg_producao/durante_aula.md`). Mantém integridade matemática mínima.

### 3.5.a. Conjunto de produção, função de produção, PPF (~12 min, 21:30–21:42)

- [ ] **Quadro (3 min):** $y \in \mathbb{R}^L$ vetor de produção, sinais ($y_\ell > 0$ produto, $y_\ell < 0$ insumo). $Y \subseteq \mathbb{R}^L$ = conjunto de produção. Hipóteses canônicas listadas em uma linha: $0 \in Y$, livre descarte, sem free lunch, fechamento, **convexidade** (destacar — chave do 2º TBE; quebra aparece com retornos crescentes).
- [ ] **Função de produção como caso particular (1 min):** $Y = \{(-z, q) : z \ge 0, q \le f(z)\}$.
- [ ] **PPF — construção ao vivo no quadro (8 min).** Setup didático canônico: $\bar L = 16$ unidades de trabalho; dois setores com $f_1(L_1) = \sqrt{L_1}$, $f_2(L_2) = \sqrt{L_2}$, restrição $L_1 + L_2 = \bar L$.
  - Substituir $L_\ell = q_\ell^2$: $q_1^2 + q_2^2 = 16$ ⇒ **PPF = arco de círculo de raio 4 no quadrante positivo**.
  - **Desenhar com lápis vermelho.** Marcar $(0, 4)$, $(4, 0)$, $(2, 2\sqrt{3}) \approx (2, 3{,}46)$ em $L_1 = 4$.
  - **PPF côncava** = rendimentos decrescentes nos setores. Comparação Edgeworth: "Onde a Aula 4 alocava bens entre **consumidores**, hoje alocamos fatores entre **produtos**."

### 3.5.b. Taxa marginal de transformação (TMT) (~10 min, 21:42–21:52)

- [ ] **Definição (1 min):** $\text{TMT}_{12} = -dq_2/dq_1|_{\text{PPF}}$ — quantas unidades de bem 2 a economia desiste para 1 unidade extra de bem 1, mantendo eficiência produtiva.
- [ ] **Caracterização via PMa (3 min):** derivar no quadro

  $$\text{TMT}_{12} = \frac{\text{PMa}_L^2}{\text{PMa}_L^1}$$

  via regra da cadeia. Vem da CPO da firma sob mobilidade do fator $L$.
- [ ] **Numérico no exemplo (3 min):** em $q_1 = 2$, $L_1 = 4$, $L_2 = 12$, $q_2 = 2\sqrt{3}$. $\text{PMa}_L^1 = 1/(2\sqrt{4}) = 1/4$, $\text{PMa}_L^2 = 1/(2\sqrt{12}) = 1/(4\sqrt{3})$. $\text{TMT}_{12} = (1/(4\sqrt{3}))/(1/4) = 1/\sqrt{3} \approx 0{,}577$. **Verificação alternativa:** derivada implícita de $q_1^2 + q_2^2 = 16$ ⇒ $\text{TMT}_{12} = q_1/q_2 = 2/(2\sqrt{3}) = 1/\sqrt{3}$. ✓
- [ ] **Eficiência produtiva ⇔ TMT = $p_1/p_2$ (3 min):** CPO da firma: $p_1 \cdot \text{PMa}_L^1 = w = p_2 \cdot \text{PMa}_L^2$ ⇒ $\text{TMT}_{12} = p_1/p_2$. Mercado descentralizado iguala TMT setorial via mobilidade do fator.
- [ ] **Frase-martelo:** "TMT é 'preço relativo na produção'. TMS é 'preço relativo no consumo'. Em equilíbrio, mercado força os dois a coincidir."

### 3.5.c. Robinson Crusoe — equilíbrio competitivo descentralizado (~20 min, 21:52–22:12)

> **Trade-off declarado em sala:** "Vamos ver Robinson na forma simplificada — 1 consumidor + 1 firma + 2 bens (lazer/produto). É o caso mínimo onde TMS=TMT=$w/p$ se materializa. A versão com $J$ firmas e cotas $\theta^{ij}$ vai para a pré-monitoria 2 com Alberto." **Não venda Robinson aqui como 'completo'**.

- [ ] **3.5.c.1 — Setup (3 min):** Robinson é simultaneamente **dono da firma** e **consumidor**. Variáveis: trabalho $L$ (insumo), bem de consumo $q$ (produto), lazer $\ell = \bar L - L$. Tecnologia: $q = f(L)$, $f$ côncava, $f(0) = 0$, $f' > 0$. Preferências: $u(q, \ell)$ monotônica, quase-côncava.
  - **Frase-martelo:** "Mesmo agente, dois chapéus separados. Mercado finge que é entre 'duas pessoas'."

- [ ] **3.5.c.2 — Solução do planejador (5 min, ao vivo no quadro):** $\max_L u(f(L), \bar L - L)$. CPO interior:

  $$\frac{\partial u/\partial \ell}{\partial u/\partial q} = f'(L), \qquad \text{ou seja} \qquad \text{TMS}_{\ell, q} = \text{TMT}_{L, q}.$$

  Numérico canônico: $u = q^{1/2}\ell^{1/2}$, $f(L) = \sqrt{L}$, $\bar L = 16$.
  - Substituir: $\max_L L^{1/4}(16 - L)^{1/2}$. CPO ⇒ $L^* = 16/3 \approx 5{,}33$. $\ell^* = 32/3$. $q^* = \sqrt{16/3} = 4/\sqrt{3} \approx 2{,}31$.
  - Verificação: $\text{TMS}_{\ell, q} = q/\ell = (4/\sqrt 3)/(32/3) = \sqrt{3}/8$. $\text{TMT} = f'(L^*) = 1/(2\sqrt{16/3}) = \sqrt{3}/8$. ✓

- [ ] **3.5.c.3 — Equilíbrio descentralizado: os dois chapéus (8 min):**
  - **Chapéu da firma:** $\pi(p, w) = \max_L p\, f(L) - w\, L$. CPO: $p \cdot f'(L^*) = w$, ou seja $f'(L^*) = w/p$. Saída: $L^d(p, w)$, $q^s = f(L^d)$, lucro $\pi^* = p\, q^s - w\, L^d$.
  - **Chapéu do consumidor:** renda $m = w\, \bar L + \pi^*$. UMP: $\max u(q, \ell)$ s.a. $p\, q + w\, \ell \le m$. CPO: $\text{TMS}_{\ell, q} = w/p$.
  - **Pergunta para a turma:** *"Se Robinson é dono da firma, por que ele paga salário a si mesmo?"* — **Resposta:** salário é **conta interna**. Firma paga $w$ pela hora; consumidor recebe $w\bar L + \pi^*$ = $w\bar L + p\, q - w\, L$. Renda total fechada. **A separação contábil é o que permite estender para $J$ firmas e $I$ consumidores** — pré-monitoria.
  - **Cálculo numérico do EC** (continuação): com $p = 1$ numerário, $w^* = \sqrt{3}/8 \approx 0{,}217$. Lucro: $\pi^* = q^* - w^*\, L^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3}$.
  - Renda: $m^* = w^*\bar L + \pi^* = (\sqrt{3}/8)(16) + 2/\sqrt{3} = 2\sqrt{3} + 2\sqrt{3}/3 = 8\sqrt{3}/3$.
  - CD: $q^* = m^*/(2p) = 4\sqrt{3}/3 = 4/\sqrt{3}$ ✓; $\ell^* = m^*/(2 w^*) = 32/3$ ✓.

- [ ] **3.5.c.4 — A igualdade canônica $\text{TMS} = \text{TMT} = w/p$ (4 min):**
  $$\boxed{\;\text{TMS}_{\ell, q} \;=\; \frac{w}{p} \;=\; \text{TMT}_{L, q}\;}$$
  **Mercado descentralizado replica solução do planejador.** Verificação no exemplo: os três valem $\sqrt{3}/8$. Frase-martelo: "1º TBE no caso mais simples: 1 consumidor + 1 firma. Preços fazem todo o trabalho."

> **Armadilha (3.5.c):** "renda do consumidor inclui lucro" ≠ "consumidor recebe lucro como salário". $w\bar L$ é o salário pelas horas; $\pi^*$ é o resíduo da firma que volta via cota $\theta=1$. **Duas componentes separadas**.

### 3.5.d. 1º TBE com produção como corolário + ponte (~8 min, 22:12–22:20)

- [ ] **Generalização rápida (3 min):** $I$ consumidores + $J$ firmas com cotas $\theta^{ij} \ge 0$, $\sum_i \theta^{ij} = 1$. Renda do consumidor: $m^i(p) = p\cdot \omega^i + \sum_j \theta^{ij}\pi^j(p)$. EC = $(p^*, x^*, y^*)$ com firmas maximizando lucro + UMP individual + viabilidade $\sum_i x^{*i} = \sum_i \omega^i + \sum_j y^{*j}$. **Robinson é o caso $I = J = 1$, $\theta = 1$.** "Detalhes de cota $\theta^{ij}$ explicítos: pré-monitoria."

- [ ] **1º TBE com produção como corolário (3 min) — não reprovar:** "A prova do 1º TBE em troca pura tem 3 passos. Com produção, ganha um quarto passo: cada $\tilde y^j \in Y^j$ ⇒ $p^*\cdot \tilde y^j \le \pi^{*j} = p^*\cdot y^{*j}$, **por definição de $y^{*j}$ como maximizador**. Soma os 4 passos, contradiz viabilidade. **Mesma estrutura, um passo a mais.**" Sinalizar: "passo 3 das firmas é o único novo. Ver pré-monitoria 2 e pré-aula §6b."

- [ ] **Box ÚNICO condensado (já aqui, embutido) — RenovaBio/CBIOs como TMS=TMT na produção (2 min):** "RenovaBio: distribuidoras compram CBIOs (créditos de descarbonização) emitidos por etanol/biodiesel. Preço único leiloado em B3 = $p^*$ walrasiano. Estrutura matemática **identica** ao EU ETS. **1º TBE em ação:** mercado replica solução do planejador — descarbonizar onde é mais barato. **2º TBE político:** alocação inicial das metas é redistribuição lump-sum entre distribuidoras. **Lado de produção (Aula 4 estendida):** produtores de etanol respondem a $p_{\text{CBIO}}$ — TMT (etanol vs. fóssil) iguala-se ao preço relativo. Sem produção essa parte da história fica truncada — por isso ela está aqui hoje."

> **Armadilha (3.5.d):** "1º TBE precisa de convexidade do $Y$." **Falso** — 1º TBE precisa apenas de LNS + max-lucro. Convexidade é hipótese do **2º** TBE.

---

## Bloco 4' — *(absorvido em 3.5.d)*

> Bloco 4 original (Box Brasil/Mundo, 30 min) foi absorvido no Bloco 3.5.d como **Box único de 2 min**. EU ETS citado como "estrutura matemática idêntica" sem desenvolvimento. Box ZFM cortado.

---

## Bloco 5 — Síntese + ponte Aula 5 (5 min, 22:20–22:25 / margem 22:25–22:30)

### 5.a. Síntese em 4 frases (~2 min)

- [ ] **(1)** Edgeworth: visualização $2\times 2$ da troca pura. Pareto = tangência. Núcleo = Pareto + voluntariedade.
- [ ] **(2)** Walras: $p\cdot z(p) = 0$ é identidade. EC: $z(p^*) = 0$.
- [ ] **(3)** 1º TBE: EC é Pareto sob LNS. 2º TBE preliminar: Pareto é EC após lump-sum sob convexidade.
- [ ] **(4)** **Produção:** PPF = "Edgeworth da produção". Robinson: $\text{TMS} = \text{TMT} = w/p$ no EC. 1º TBE com produção é corolário. 2º TBE estende com convexidade do $Y$.

### 5.b. Ponte para Aula 5 — Arrow-Debreu I (~3 min)

- [ ] **A pergunta da próxima aula.** "Adicionamos **incerteza**: estados da natureza $s = 1, \ldots, S$. Bens viram **bens contingentes** $(\ell, s)$ — mesmo bem físico em estados diferentes é **bem diferente**. Espaço de bens vira $\mathbb{R}^{LS}$. **Mercado completo = um preço para cada $(\ell, s)$.**"
- [ ] **Quadro: estrutura.** Equilíbrio walrasiano em $\mathbb{R}^{LS}$. Robinson de hoje vira "Robinson contingente". 1º TBE sobrevive sob mercados completos.
- [ ] **Frase-martelo:** "Aula 4 abriu com $p$ exógeno virando endógeno em consumo. Fechou com $p$ endógeno em consumo + produção. Aula 5: $p$ endógeno em consumo + produção + estados. Cada aula é uma camada."

### 5.c. Lembretes operacionais (~30s)

- [ ] **Calendário:** prazo Aula 4 — quarta 20/05 18h. Gabarito quinta 21/05 00:00. **Pré-aula 4 foi atualizada** em 07/05 com seções 5b e 6b (PPF + Robinson). Quem fez antes da atualização **não perdeu progresso**, mas precisa fazer 5b e 6b.
- [ ] **Pré-monitoria 2** (Aula 4 — trocas + produção) abre **sáb 16/05 12h**. Monitoria sáb 23/05 10h. Foco do Alberto: extensões — núcleo $I=3$, contraexemplo LNS bliss-point, 2º TBE com retornos crescentes, Robinson com $J=2$ firmas e cotas $\theta^{ij}$ explícitas.

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (`aula_4/slides/aula-04.html` re-renderizado após cirurgia).
- [ ] Quadro com 3 cores: verde para curvas de indiferença, **vermelho para PPF e curvas de produção**, preto para argumentos do 1º TBE.
- [ ] **Lápis de cor para a turma** (azul para $A$, vermelho para $B$, e **verde para PPF**).
- [ ] Acesso ao dashboard.
- [ ] Lista de chamada.

---

## Notas para o professor (autocalibração em tempo real)

- **Se Bloco 1 trava:** reduzir 1.d (núcleo) para 4 min. Núcleo migra integralmente para a monitoria.
- **Se Walras gera dúvida:** parar e refazer no caso $L=2$. "Demanda total = dotação total" + identidade dual.
- **Se Bloco 2.f (Leontief) faltar tempo:** cortar — sai como exercício avaliativo 3.
- **Se prova do 1º TBE trava:** simplificar para $I=2$ com nomes ($A$, $B$).
- **Se Bloco 3.5.a (PPF visual) trava:** reduzir 3.5.b (TMT formal) para 6 min e preservar construção da PPF; max-lucro pode ser visado na monitoria. **Não cortar Robinson Crusoe** — é o ponto pedagógico de toda a inserção.
- **Se Robinson Crusoe (3.5.c) gera dúvida:** parar e refazer no caso $u = q\ell$ + $f(L) = L$ + $\bar L = 1$ ⇒ $L^* = 1/2, q^* = 1/2, \ell^* = 1/2, w^* = p^* = 1$. Caso aritmeticamente trivial.
- **Se 3.5.d (1º TBE com produção) faltar tempo:** cortar até frase-martelo "passo 3 das firmas é o único novo" + lembrete da pré-monitoria. **Não tente ensaiar a prova de 4 passos no quadro.** Pré-aula §6b cobre.
- **Se Box ZFM aparecer no recall:** "ficou para Aula 7 (externalidades regionais)". Não improvise.

---

## Ganchos explícitos para a Pré-Monitoria 2 (com Alberto, sáb 23/05) — atualizado pós-cirurgia

A monitoria 2 cobre Aula 4 (EG **trocas + produção**). Da Aula 4 especificamente, deixar para Alberto:

- **Trocas (já contemplado):** EC com várias formas funcionais (CD assimétrica, Leontief, CES); núcleo em $I=3$ explicitamente; contraexemplo LNS bliss-point.
- **Produção (NOVO pós-cirurgia):**
  - Robinson Crusoe com tecnologia CES (em vez de $\sqrt{L}$) — paramétrico em $\sigma$.
  - **EG completo $2\times 2 \times J$**: $J = 2$ firmas com $\theta^{ij}$ não-trivial; mostrar sensibilidade a $\theta$.
  - **2º TBE com retornos crescentes** — função $f(L) = L^2$ não-convexa, mostrar que nenhum $p^*$ sustenta Pareto-eficiente interior.
  - **Eficiência produtiva via dual:** $C(q) = \min w\cdot z$ s.a. $f(z) \ge q$. Conexão TMST = razão de preços de fator.
  - **Robinson com lazer endógeno** como caso especial de UMP + lucro (lado da oferta).
- **Aplicação:** efeito do RenovaBio na PPF nacional (deslocamento etanol/biodiesel) + indústria automotiva pós-MERCOSUL como vantagem comparativa endógena.

---

## Checagem cruzada com pré-aula

A pré-aula 4 foi atualizada (07/05) para cobrir o conteúdo novo:

- **S0–S5 (inalterado):** preferências, Edgeworth, Pareto, contract curve, núcleo, Walras, EC, 1º TBE em troca, 2º TBE preliminar.
- **S5b (NOVO):** Conjunto de produção, função de produção, **PPF + Robinson Crusoe**.
- **S6b (NOVO):** **TMS = TMT = $p_1/p_2$ + 1º TBE com produção como corolário**.
- **S6 (Exercícios), S7 (Checkpoint), S8 (Reflexão):** preservados.

Aula presencial **aprofunda** a prova do 1º TBE (passos detalhados), **constrói** a PPF ao vivo, **calcula** Robinson em CD canônico, **antecipa** Aula 5 (Arrow-Debreu I).

Quem fez a pré-aula entrega o Bloco 1 em 30 min e reduz a chance de Bloco 3.5 estourar. Quem não fez S5b/S6b, perde o conteúdo de produção em sala — mas o material consolidativo está na plataforma.
