# Aula 5 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 20/05/2026. Estrutura paralela ao `durante_aula.md` da Aula 4, ajustada para o conteúdo de produção.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 20/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Equilíbrio Geral em Produção — tecnologia da firma, PPF, Robinson Crusoe, EG com $J$ firmas, 1º/2º TBE com produção
- **Objetivo de aprendizagem:** dominar a representação $Y \subseteq \mathbb{R}^L$ de tecnologia, construir PPF a partir de duas funções de produção, calcular EC de Robinson Crusoe, generalizar para EG com $J$ firmas e cotas $\theta^{ij}$, demonstrar 1º TBE com produção, anunciar 2º TBE com convexidade de $Y$.
- **Pré-requisitos assumidos:** Aulas 1–4 consolidadas (UMP, demanda, Slutsky, EG trocas + Edgeworth + Walras + 1º TBE em troca pura). Pré-aula 5 concluída (ZaE Caps. 10/12, N&S §9 + §13.3–13.5).
- **Nível pedagógico:** meio-termo entre graduação avançada e qualifier diluído. Piso N&S 12e §9 + §13.3–13.5; teto J-R §5.4 (sem invocar Kakutani).

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | 5 min |
| 1 | Tecnologia da firma + PPF | 19:35 | 20:20 | 45 min |
| P1 | Pausa | 20:20 | 20:30 | 10 min |
| 2 | Robinson Crusoe — equilíbrio competitivo | 20:30 | 21:20 | 50 min |
| 3 | EG com $J$ firmas + 1º/2º TBE com produção | 21:20 | 21:50 | 30 min |
| P2 | Pausa | 21:50 | 22:00 | 10 min |
| 4 | 3 Boxes Brasil/Mundo (PPF intertemporal · soja-indústria · ZFM) | 22:00 | 22:20 | 20 min |
| 5 | Síntese + ponte Aula 6 (Arrow-Debreu) | 22:20 | 22:30 | 10 min |

**Checagem de soma:** 5 + 45 + 10 + 50 + 30 + 10 + 20 + 10 = **180 min**. ✓

*Lição da Aula 4:* Bloco 1 (construção visual) é onde a turma trava se mal-conduzida. PPF deve ser desenhada ao vivo no quadro a partir das duas funções de produção — não apenas projetada. 45 min para Bloco 1 é defensável.

*Risco de Bloco 4:* 3 boxes em 20 min é apertado. Cada box ganha **6–7 min**. Se ZFM ficar curtinho, é OK — os outros dois (PPF intertemporal pré-sal/RenovaBio + soja-indústria) carregam o peso. Cap das transições no contraste: "uma economia escolhe **o quê** produzir (Boxes 1 e 2) e **onde** produzir (Box 3)".

---

## Bloco 0 — Abertura (5 min, 19:30–19:35)

- [ ] **Check-in (1 min):** chamada, "papel, caneta e lápis de cor — PPF se aprende com mão também".
- [ ] **Triagem oral das reflexões (3 min):** puxar do dashboard 2-3 dúvidas agregadas mais comuns da pré-aula 5 (D-1) e anunciar onde a aula resolve cada uma.
  - Se "por que TMT côncava?" estiver no top, anunciar Bloco 1.b (construção da PPF).
  - Se "Robinson Crusoe é só pedagógico?" aparece, anunciar Bloco 4 (Boxes Brasil/Mundo) com aplicação real.
  - Se "TMS = TMT por quê?" estiver no topo, anunciar Bloco 2.d (eficiência simultânea no EC).
- [ ] **Recall da Aula 4 (1 min):** "Aula 4: economia de troca pura, Walras, 1º TBE no consumidor. Hoje: adicionamos **firmas**. Quem **produz** é novo; o ferramental Walras + 1º TBE sobrevive (estendido)."

---

## Bloco 1 — Tecnologia da firma + PPF (45 min, 19:35–20:20)

### 1.a. Conjunto de produção $Y$ — definição e hipóteses (~10 min)

- [ ] **Quadro:** $y \in \mathbb{R}^L$ vetor de produção, sinais ($y_\ell > 0$ produto, $y_\ell < 0$ insumo). $Y$ = conjunto de produção.
- [ ] **Hipóteses canônicas:**
  - $0 \in Y$ (inação).
  - Livre descarte: $y \in Y, y' \le y \Rightarrow y' \in Y$.
  - Não-livre-almoço: $Y \cap \mathbb{R}^L_+ = \{0\}$.
  - Fechamento.
  - **Convexidade** — *destaque*: hipótese-chave do 2º TBE.
- [ ] **Frase-martelo:** "Convexidade é a fronteira entre 'mercado pode' e 'mercado não pode'. Aula 7 mostra os contraexemplos."
- [ ] **Função de produção como caso particular:** $Y = \{(-z, q) : z \ge 0, q \le f(z)\}$. Convenção de sinal de insumo.

### 1.b. Construção da PPF — ao vivo no quadro (~15 min)

- [ ] **Setup didático:** $\bar L$ unidades de trabalho, dois setores produtivos com $f_1(L_1)$ e $f_2(L_2)$, restrição $L_1 + L_2 = \bar L$. PPF = lugar geométrico de $(q_1, q_2)$ com alocação eficiente.
- [ ] **Caso canônico ao vivo:** $f_1(L_1) = \sqrt{L_1}$, $f_2(L_2) = \sqrt{L_2}$, $\bar L = 16$.
  - Substituir $L_\ell = q_\ell^2$ na restrição: $q_1^2 + q_2^2 = 16$.
  - PPF = arco de círculo de raio $4$ no quadrante positivo.
  - **Desenhar no quadro com lápis vermelho.** Marcar pontos $(0, 4)$, $(4, 0)$, e $(2, 2\sqrt{3})$ (em $L_1 = 4$).
- [ ] **PPF é côncava** — refletindo rendimentos decrescentes em cada setor. Convexa do "lado" da origem.
- [ ] **Frase-martelo:** "PPF é Edgeworth-da-produção. Onde a Aula 4 alocava bens entre consumidores, hoje alocamos fatores entre produtos."

### 1.c. Taxa marginal de transformação (TMT) (~10 min)

- [ ] **Definição:** $\text{TMT}_{12} = -dq_2/dq_1|_{\text{PPF}}$. "Quantas unidades de bem 2 a economia desiste para 1 unidade extra de bem 1, mantendo eficiência."
- [ ] **Caracterização via PMa:** derivar no quadro

  $\text{TMT}_{12} = \frac{\text{PMa}_L^2}{\text{PMa}_L^1}$

  via regra da cadeia. Mostrar que vem da CPO da firma sob mobilidade do fator.
- [ ] **Eficiência produtiva ⇔ TMT = $p_1/p_2$.** Da CPO da firma: $p_1\, \text{PMa}_L^1 = w = p_2\, \text{PMa}_L^2$, então $\text{TMT}_{12} = p_1/p_2$.
- [ ] **Numérico:** no exemplo $(\bar L = 16$, $f_\ell = \sqrt{L_\ell})$, em $q_1 = 2$ ⇒ $L_1 = 4$ ⇒ $L_2 = 12$ ⇒ $q_2 = 2\sqrt{3} \approx 3{,}46$. $\text{PMa}_L^1 = 1/(2\sqrt{4}) = 1/4$. $\text{PMa}_L^2 = 1/(2\sqrt{12}) = 1/(4\sqrt{3})$. $\text{TMT}_{12} = (1/(4\sqrt 3))/(1/4) = 1/\sqrt{3} \approx 0{,}577$. **Inverso de algo comum:** $\text{TMT}_{12} = q_2/q_1$ aqui (curva $q_1^2 + q_2^2 = 16$, derivada implícita).
- [ ] **Frase-martelo:** "TMT é 'preço relativo na produção'. TMS é 'preço relativo no consumo'. Em equilíbrio, mercado força os dois a coincidir."

### 1.d. Maximização de lucro: o ângulo da firma (~7 min)

- [ ] **Quadro:** dada tecnologia $f$ (função de produção) e preços $(p, w)$, firma resolve $\max_z p\, f(z) - w\cdot z$. CPO interior: **valor da produtividade marginal = preço do insumo**, $p\cdot \partial f/\partial z_\ell = w_\ell$.
- [ ] **Conexão com PPF:** firma maximiza lucro ⇒ aloca fator de modo a igualar VMa entre setores ⇒ TMT = $p_1/p_2$.
- [ ] **Frase-martelo:** "Lucro máximo descentralizado replica eficiência produtiva centralizada. Mas só se preços forem 'verdade' (sem distorção)."

### 1.e. Ponte (~3 min)

- [ ] "Tecnologia é o input. Mercado é o output. Bloco 2: introduzimos consumidor — Robinson Crusoe é o caso mais simples — e fechamos o circuito."

> **Armadilha a sinalizar (Bloco 1.c):** alunos confundem "PPF côncava" (rendimentos decrescentes em cada setor) com "tecnologia côncava" (rendimentos não-crescentes na escala). São relacionadas mas distintas — PPF côncava pode aparecer mesmo com retornos constantes nos setores se houver fator fixo (terra) ou heterogeneidade de fatores. Sinalizar e seguir.

---

## Pausa 1 (10 min, 20:20–20:30)

---

## Bloco 2 — Robinson Crusoe — equilíbrio competitivo (50 min, 20:30–21:20)

### 2.a. Setup: 1 consumidor + 1 firma + 2 bens (~5 min)

- [ ] **Quadro:** Robinson é simultaneamente **dono da firma** e **consumidor**. Variáveis: trabalho $L$ (insumo), bem de consumo $q$ (produto), lazer $\ell = \bar L - L$. Tecnologia: $q = f(L)$, $f$ côncava, $f(0) = 0$, $f' > 0$. Preferências: $u(q, \ell)$ monotônica, quase-côncava.
- [ ] **Frase-martelo:** "Mesmo agente, dois chapéus separados. Mercado finge que é entre 'duas pessoas' — análise se mantém."

### 2.b. Solução do planejador (eficiência sem mercado) (~10 min)

- [ ] **Quadro:** planejador resolve $\max_L u(f(L), \bar L - L)$. CPO interior:

  $\frac{\partial u/\partial \ell}{\partial u/\partial q} = f'(L)$

  ou seja $\text{TMS}_{\ell, q} = \text{TMT}_{L, q}$ (= PMa do trabalho).
- [ ] **Numérico canônico — calcular ao vivo:** $u = q^{1/2}\ell^{1/2}$, $f(L) = \sqrt{L}$, $\bar L = 16$.
  - Substituir: $\max_L L^{1/4}(16 - L)^{1/2}$. Derivar, igualar a zero, multiplicar por $4 L^{3/4}(16-L)^{1/2}$:

    $(16 - L) - 2 L = 0 \implies L^* = 16/3 \approx 5{,}33$.

  - $\ell^* = 32/3$, $q^* = \sqrt{16/3} = 4/\sqrt{3} \approx 2{,}31$.
- [ ] **Verificação:** $\text{TMS}_{\ell, q} = q/\ell = (4/\sqrt 3)/(32/3) = \sqrt{3}/8$. $\text{TMT} = f'(L^*) = 1/(2\sqrt{16/3}) = \sqrt{3}/8$. ✓
- [ ] **Frase-martelo:** "Planejador busca tangência $\text{TMS} = \text{TMT}$. Mercado vai ter que replicar via preços."

### 2.c. Equilíbrio competitivo descentralizado — os dois chapéus (~15 min)

- [ ] **Quadro:** introduzir $(p, w)$. **Chapéu da firma:** $\pi(p, w) = \max_L p\, f(L) - w\, L$. CPO: $f'(L^*) = w/p$. Saída: demanda de trabalho $L^d(p, w)$, oferta de produto $q^s = f(L^d)$, lucro $\pi^* = p\, q^s - w\, L^d$.
- [ ] **Chapéu do consumidor:** renda $m = w\, \bar L + \pi^*$ (salário pelas $\bar L$ horas + lucro como dividendo). $\max_{q, \ell} u(q, \ell)$ s.a. $p\, q + w\, \ell \le m$. CPO: $\text{TMS}_{\ell, q} = w/p$.
- [ ] **Pergunta para a turma:** *"Se Robinson é dono da firma, por que ele paga salário a si mesmo?"* — **Resposta:** o salário é **conta interna** da economia descentralizada: a firma paga $w$ pela hora trabalhada; o consumidor recebe $w\, L$ (salário) + $\pi^*$ (lucro) = $w\, L + p\, q - w\, L = p\, q$. Renda total é $w\, \bar L + \pi^*$ — equivalente. A separação contábil é o que permite estender para $J$ firmas e $I$ consumidores no Bloco 3.
- [ ] **Cálculo numérico do EC (continuação do exemplo):** $p = 1$ numerário. Da firma: $f'(L^*) = w \Rightarrow w^* = \sqrt{3}/8 \approx 0{,}217$. Lucro: $\pi^* = q^* - w^*\, L^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3} = 2\sqrt{3}/3$.
- [ ] **Renda total:** $m^* = w^*\, \bar L + \pi^* = (\sqrt{3}/8)\cdot 16 + 2\sqrt{3}/3 = 2\sqrt{3} + 2\sqrt{3}/3 = 8\sqrt{3}/3$. Demanda CD: $q^* = m^*/(2 p) = 4\sqrt{3}/3 = 4/\sqrt{3}$ ✓; $\ell^* = m^*/(2 w^*) = 32/3$ ✓.

### 2.d. A igualdade canônica $\text{TMS} = \text{TMT} = w/p$ (~10 min)

- [ ] **Quadro:** combinar CPO da firma ($f'(L^*) = w/p$) com CPO do consumidor ($\text{TMS}_{\ell, q} = w/p$):

  $\boxed{\text{TMS}_{\ell, q} \;=\; w/p \;=\; \text{TMT}_{L, q}\;}$

  **Mercado descentralizado replica solução do planejador.**
- [ ] **Frase-martelo:** "1º TBE no caso mais simples: 1 consumidor + 1 firma. Preços fazem todo o trabalho. Aula 4 foi ensaio; Aula 5 é a versão completa."
- [ ] **Verificação numérica:** $\text{TMS}^* = q^*/\ell^* = (4/\sqrt 3)/(32/3) = (4\cdot 3)/(\sqrt 3 \cdot 32) = 12/(32\sqrt 3) = 3/(8\sqrt 3) = \sqrt 3/8$. $\text{TMT}^* = f'(L^*) = \sqrt 3/8$. $w^*/p^* = \sqrt 3/8$. **Os três coincidem.** ✓

### 2.e. Caso degenerado: lucro zero em retornos constantes (~5 min)

- [ ] **Cuidado.** Se $f$ tiver retornos **constantes** de escala, $\pi^*(p, w) = 0$ no EC (por homogeneidade): $f(\lambda L) = \lambda f(L)$ ⇒ $p\, f(L) - w L$ é homogênea grau 1; máximo em $L \to 0$ ou $L \to \infty$, a menos que $p\, f'(L) = w$ uniformemente, e aí lucro = 0.
- [ ] **Implicação:** com retornos constantes, lucros zerados, renda do consumidor é só $w\, \bar L$. Modelo "sem firma" — Aula 4 com substituição reta $q = (1/w) p\, L$.
- [ ] **Frase-martelo:** "Retornos decrescentes ⇒ lucro positivo. Retornos constantes ⇒ lucro zero. Retornos crescentes ⇒ lucro infinito (mercado quebra) — Aula 7."

> **Armadilha a sinalizar (Bloco 2.c):** alunos confundem "renda do consumidor inclui lucro" com "consumidor recebe lucro como salário". **NÃO**: $w\, \bar L$ é o salário pelas horas de tempo (mesmo as horas em que vai dormir são "vendidas" via $\bar L$); $\pi^*$ é o resíduo da firma que volta ao dono via cota $\theta = 1$ (Robinson é único dono). São **duas componentes separadas** da renda agregada.

---

## Bloco 3 — EG com $J$ firmas + 1º/2º TBE com produção (30 min, 21:20–21:50)

### 3.a. Generalização: $I$ consumidores, $J$ firmas (~7 min)

- [ ] **Quadro:** $I$ consumidores ($i = 1, \ldots, I$) com preferências $\succeq^i$, dotações $\omega^i$, **cotas de propriedade** $\theta^{ij} \ge 0$, $\sum_i \theta^{ij} = 1$ para cada firma $j$. $J$ firmas ($j = 1, \ldots, J$) com conjuntos de produção $Y^j$.
- [ ] **Renda do consumidor:** $m^i(p) = p\cdot \omega^i + \sum_j \theta^{ij}\, \pi^j(p)$. Soma de salário/dotação + dividendos das firmas.
- [ ] **Frase-martelo:** "Robinson era $I = J = 1$, $\theta = 1$. Generalização: cada $i$ recebe sua fatia de cada firma."

### 3.b. Equilíbrio competitivo com produção — definição (~5 min)

- [ ] **Definição.** Terna $(p^*, x^*, y^*)$ com:
  1. Cada $y^{*j} \in \arg\max\{p^*\cdot y : y \in Y^j\}$.
  2. Cada $x^{*i}$ resolve UMP em $p^*$ com renda $m^{*i}$.
  3. $\sum_i x^{*i} = \sum_i \omega^i + \sum_j y^{*j}$.
- [ ] **Walras com produção:** somar UMPs + cotas $\sum_i \theta^{ij} = 1$ ⇒ $p\cdot z(p) = 0$ identicamente. Mesma estrutura, mesma redução dimensional.

### 3.c. 1º TBE com produção — prova esquemática (~12 min)

- [ ] **Enunciado.** Em economia com produção, sob LNS para todos os consumidores, todo EC é Pareto-eficiente.
- [ ] **Por contradição.** Suponha $(\tilde x, \tilde y)$ viável com $u^i(\tilde x^i) \ge u^i(x^{*i}) \;\forall i$ e $u^j(\tilde x^j) > u^j(x^{*j})$ para algum $j$ (consumidor).
- [ ] **Passo 1 (consumidor estritamente melhor):** $p^*\cdot \tilde x^j > m^{*j}$. UMP de $x^{*j}$.
- [ ] **Passo 2 (LNS, demais consumidores):** $p^*\cdot \tilde x^i \ge m^{*i}$. Mesmo argumento da Aula 4.
- [ ] **Passo 3 (NOVO — firmas):** cada $\tilde y^j \in Y^j$, então $p^*\cdot \tilde y^j \le \pi^{*j}(p^*) = p^*\cdot y^{*j}$, **por definição de $y^{*j}$ como maximizador**.
- [ ] **Passo 4 (somar):**

  $\sum_i p^*\cdot \tilde x^i > \sum_i m^{*i} = \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot y^{*j} \ge \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot \tilde y^j$.

  Mas $\sum_i \tilde x^i = \sum_i \omega^i + \sum_j \tilde y^j$ ⇒ $\sum_i p^*\cdot \tilde x^i = \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot \tilde y^j$. **Contradição.** $\blacksquare$
- [ ] **Frase-martelo:** "1º TBE com produção = LNS dos consumidores + maximização de lucro pelas firmas. O passo 3 é o único novo."

### 3.d. 2º TBE com produção — anúncio (~6 min)

- [ ] **Enunciado intuitivo.** Sob LNS + **convexidade dos $Y^j$** (e do agregado $Y = \sum_j Y^j$) + convexidade das preferências, toda alocação Pareto-eficiente $(x^*, y^*)$ é EC após redistribuição lump-sum.
- [ ] **Hipótese-chave.** Convexidade de $Y$ agregado é essencial para Hahn-Banach (separação por hiperplano-preço).
- [ ] **Onde quebra:**
  - **Retornos crescentes** em uma firma ⇒ $Y^j$ não-convexo ⇒ $Y$ pode ser não-convexo.
  - **Externalidades** (Aula 7) ⇒ $Y^j$ depende de $y^k$ — quebra estrutura.
- [ ] **Frase-martelo:** "1º TBE: produção ajustada por preços é Pareto. 2º TBE: Pareto pode ser implementado por mercado, *se* tudo for convexo e dotação puder ser redistribuída."

> **Armadilha a sinalizar (Bloco 3.c):** alunos confundem "1º TBE precisa de convexidade do $Y$" com "2º TBE precisa de convexidade do $Y$". **NÃO**: 1º TBE precisa apenas de LNS + max-lucro; 2º TBE é onde convexidade aparece. Repete-se a estrutura da Aula 4.

---

## Pausa 2 (10 min, 21:50–22:00)

---

## Bloco 4 — 3 Boxes Brasil/Mundo (20 min, 22:00–22:20)

### 4.a. Box Brasil — PPF intertemporal: Pré-sal vs renováveis (~7 min)

- [ ] **Setup.** Brasil tem dotação de **capital extrativo** (reservas de pré-sal, descobertas em 2007 — Lula, Marlim, Búzios) e **capital sustentável** (potencial eólico nordestino, solar nordeste/sudeste, etanol). Decisão intertemporal: explorar pré-sal hoje (alta produtividade marginal de curto prazo, mas exauste de recurso) ou investir em renováveis (PMa decrescente menor inicialmente, mas crescente em escala via aprendizado/Wright's law).
- [ ] **Estrutura PPF.** Eixo $q_1$ = produção fóssil (pré-sal); eixo $q_2$ = produção renovável. Fronteira **côncava** — alocar mais capital/labor a um setor reduz o outro. Mas **se desloca no tempo**: aprendizado em renováveis (Wright's law: custo cai 20-30% a cada dobra de capacidade instalada) joga a PPF para fora no eixo $q_2$ ao longo do tempo.
- [ ] **Conexão com Aula 4 (RenovaBio/CBIOs):** Aula 4 olhou o **mercado** de descarbonização (cap-and-trade); Aula 5 olha o **lado da produção** — a tecnologia que ofertará CBIOs precisa ser produzida (etanol sustentável, biodiesel). RenovaBio + CBIOs incentivam deslocamento da PPF nessa direção.
- [ ] **Pergunta-âncora:** *"O Brasil deve explorar todo o pré-sal antes do mundo descarbonizar (sob risco de stranded assets), ou priorizar transição? Como TMT = preço relativo informa essa escolha?"*
- [ ] **Referência:** EPE (Empresa de Pesquisa Energética) — Plano Nacional de Energia 2050. Goldemberg & Lucon (2007), *Energy Policy* 35(6): 3105-3114. doi:10.1016/j.enpol.2006.11.005

### 4.b. Box Mundo — Soja vs indústria (vantagem comparativa) (~7 min)

- [ ] **Setup.** Brasil produz $26\%$ da soja mundial (USDA 2024); maior produtor global desde 2018. Simultaneamente, participação da indústria de transformação no PIB caiu de $27\%$ (1985) para $11\%$ (2023). Decisão de mercado descentralizada: o que produzir?
- [ ] **Estrutura PPF.** Eixo $q_1$ = soja (alta vantagem comparativa: terra abundante, clima favorável, tecnologia Embrapa); eixo $q_2$ = manufaturas (média vantagem comparativa: menor que China/Coreia/Alemanha). PPF brasileira **inclinada na direção de soja** — TMT $q_1/q_2$ baixa quando produção concentrada em $q_1$.
- [ ] **Vantagem comparativa via Ricardo lite + Heckscher-Ohlin.** Produtividade do fator (terra fértil, clima) faz com que TMT no Brasil $\neq$ TMT em outros países. Comércio internacional move o ponto **fora** da PPF doméstica via importação.
- [ ] **2º TBE em ação política:** Política industrial (Plano BR Mais Produtivo, Lei 14.789/2023 — incentivos para indústria 4.0) é tentativa de **redistribuir lump-sum** os fatores entre setores (subsídio fiscal, crédito BNDES). Mas distorcionário, não estritamente lump-sum (afeta margem). Aula 7 retoma com externalidades (encadeamento industrial, learning-by-doing).
- [ ] **Pergunta-âncora:** *"Vantagem comparativa estática (Brasil-soja) vs. desenvolvimento estrutural dinâmico (Coreia-eletrônicos): mercado é cego à dinâmica?"*
- [ ] **Referência:** IBGE — Contas Nacionais Trimestrais. Hidalgo & Hausmann (2009), *PNAS* 106(26): 10570-10575. doi:10.1073/pnas.0900943106 (Atlas of Economic Complexity).

### 4.c. Box Brasil — ZFM Manaus / eficiência produtiva (~6 min)

- [ ] **Setup.** Zona Franca de Manaus (criada 1967, prorrogada até 2073 pela EC 109/2021): subsídios fiscais (IPI zerado, ICMS reduzido, II reduzido) para produzir bens em Manaus. Volume 2024: ~R$ 200 bilhões em faturamento.
- [ ] **Distorção de eficiência produtiva.** Sem subsídio, produção ótima alocaria fatores onde TMT = preço relativo *de mercado*. Com subsídio, produtor enxerga TMT-distorcida = $(p_1\cdot \tau_1)/(p_2\cdot \tau_2)$, com $\tau$ = fator-tributo. Resultado: locação ineficiente — produtos eletrônicos sendo fabricados em logística cara (4.000 km dos centros consumidores São Paulo/Rio).
- [ ] **1º TBE quebra parcialmente.** Mercado descentralizado **com** subsídio não atinge Pareto-eficiência *agregada* — ineficiência alocativa de fatores entre regiões. Pode ser "second-best" justificável por externalidades positivas (preservação Amazônia, ocupação populacional do norte) — mas isso é Aula 7, não Aula 5.
- [ ] **Pergunta-âncora:** *"Subsídio fiscal regional é sempre ineficiente? Como o 2º TBE preliminar enquadra essa discussão?"*
- [ ] **Referência:** Suframa — Boletim Indicadores 2024. Garcia & Castelar (2020), *Revista Brasileira de Economia* 74(2): 207-238 (sobre custos da ZFM).

### 4.d. Síntese aplicada (último ~30s — entra em síntese formal Bloco 5)

- [ ] **Frase-martelo:** "PPF muda no tempo (Box 1), molda comércio (Box 2), e é distorcida por política (Box 3). Os 3 momentos da microeconomia aplicada."

---

## Bloco 5 — Síntese + ponte Aula 6 (10 min, 22:20–22:30)

### 5.a. Síntese em 4 frases (~5 min)

- [ ] **(1)** **Tecnologia** = $Y \subseteq \mathbb{R}^L$. PPF = fronteira de $Y$ agregado em economia $2 \times 2$ com fatores fixos.
- [ ] **(2)** **Robinson Crusoe** = caso mínimo. $\text{TMS} = \text{TMT} = w/p$ no EC. Eficiência simultânea.
- [ ] **(3)** **EG com $J$ firmas** = generalização via cotas $\theta^{ij}$. Walras estendido. 1º TBE com produção: LNS (consumidor) + max-lucro (firma) ⇒ Pareto.
- [ ] **(4)** **2º TBE com produção** = Pareto pode ser implementado como EC após redistribuição lump-sum, **se** $Y$ for convexo. Hipótese-chave.

### 5.b. Ponte para Aula 6 — Arrow-Debreu (~3 min)

- [ ] **Pergunta da próxima aula.** "Adicionamos **incerteza**: estados da natureza $s = 1, \ldots, S$. Bens viram **bens contingentes** $(x_\ell, s)$. Cada bem em cada estado é um mercado próprio." Esta é a *grande* generalização — Arrow-Debreu.
- [ ] **Quadro: estrutura.** Equilíbrio Walrasiano em $\mathbb{R}^{L\times S}$. Mercados completos vs. incompletos. Existência via Brouwer/Kakutani — Aula 6 rigoroso.
- [ ] **1º TBE com produção** sobrevive em Arrow-Debreu sob mercados completos. **2º TBE** também — convexidade entra com tecnologias contingentes.
- [ ] **Frase-martelo:** "Aula 4: troca pura. Aula 5: produção. Aula 6: incerteza + tempo + risco. Cada aula é uma camada extra; a estrutura sobrevive."

### 5.c. Lembretes operacionais (~2 min)

- [ ] **Calendário:** quiz pós-aula 5 + exercícios avaliativos abertos desde 21/05 madrugada. **Prazo: quarta 27/05 18h.** Gabarito quinta 28/05 00:00.
- [ ] **Pré-monitoria 3** (cobre Aula 5 — EG produção) abre **sáb 23/05 12h**. Monitoria sáb 30/05 10h.
- [ ] **Pré-aula 6** (Arrow-Debreu I) abre **qui 21/05 madrugada**.

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (`aula_5/slides/aula-05.html` renderizado).
- [ ] Quadro com 3 cores: vermelho para PPF e curvas de produção, azul para curvas de indiferença, preto para argumentos do 1º TBE.
- [ ] Acesso ao dashboard da plataforma para triagem do Bloco 0.
- [ ] Lista de chamada.

---

## Notas para o professor (autocalibração em tempo real)

- **Se Bloco 1 (PPF) trava:** reduzir 1.d (max-lucro algébrico) para 4 min e preservar construção da PPF. Max-lucro pode ser revisado na monitoria 3.
- **Se Robinson Crusoe (Bloco 2) gera dúvida:** parar e refazer no caso $u = q\ell$ (CD simétrica), $f(L) = L$ (linear), $\bar L = 1$ — entrega $L^* = 1/2$, $q^* = 1/2$, $\ell^* = 1/2$, $w^* = p^* = 1$. Caso aritmeticamente trivial.
- **Se a prova do 1º TBE (Bloco 3.c) trava:** simplificar para $J = 1$ (uma firma) e fazer no quadro com $\sum_j$ removido — passos 1, 2, 4 são iguais à Aula 4; só passo 3 (max-lucro) é novo.
- **Se Box Brasil/Mundo estoura:** cortar Box ZFM (4.c) e manter os outros dois. ZFM aparece como exercício no quiz.
- **Sobre o iframe PPF (se houver):** decidir antes da aula se entra ou não. Aula 5 não tem JSXGraph implementado para PPF; pode improvisar com Desmos público (link no fim do slide). Se não tiver tempo, OK.
- **Sobre o 2º TBE com produção:** anunciar e seguir. Aula 6 prova rigorosamente. Hoje é teaser, não treino.

---

## Ganchos explícitos para a Pré-Monitoria 3 (com Alberto, sáb 30/05)

A monitoria 3 cobre Aula 5 (EG produção). Da Aula 5 especificamente, deixar para Alberto:

- **Cálculo de EC em economia com $J = 2$ firmas e $I = 2$ consumidores** com cotas $\theta^{ij}$ não-triviais — exemplo em CD/CD com pesos diferentes. Mostrar sensibilidade a $\theta$.
- **Robinson Crusoe com tecnologia CES** (em vez de $\sqrt{L}$) — paramétrico em $\sigma$.
- **Construção numérica fechada de violação do 2º TBE com retornos crescentes** — função $f(L) = L^2$ não-convexa, mostrar que nenhum $p^*$ sustenta Pareto-eficiente interior.
- **Eficiência produtiva via dual:** problema da minimização de custo $C(q) = \min w\cdot z$ s.a. $f(z) \ge q$. Conexão TMST = razão de preços.
- **Aplicações empíricas:** efeito do RenovaBio na PPF nacional (deslocamento na direção de etanol/biodiesel); exemplo da indústria automotiva pós-MERCOSUL.

---

## Checagem cruzada com pré-aula

A pré-aula 5 cobre exatamente os mesmos conceitos em ritmo diferente. Aula presencial:
- **Aprofunda** a prova do 1º TBE com produção (passo 3 das firmas).
- **Constrói** a PPF ao vivo a partir de duas funções de produção.
- **Calcula** Robinson Crusoe inteiro em CD-CD canônico.
- **Aplica** com 3 boxes Brasil/Mundo concretos.
- **Antecipa** Aula 6 (Arrow-Debreu, mercados contingentes, existência).

Quem fez a pré-aula entrega o Bloco 1 em 25 min e usa os 20 min restantes para PPF avançada. Quem não fez, perde Bloco 1.b (construção).
