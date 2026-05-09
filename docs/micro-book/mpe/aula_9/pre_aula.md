# Pré-Aula 9 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 9. É o "esqueleto narrativo" do `platform/aula-09.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Sinalização (Spence) e Matching (Gale-Shapley) — fechamento do curso.** Spence (1973), Cho-Kreps (1987), Gale-Shapley (1962), Roth (1982), Roth-Sotomayor (1990), Roth-Peranson (1999). Calibre N&S 12e Cap. 18 (signaling section); J-R 3e §7.2 (Spence) como teto de conforto; MWG Cap. 13 §C citado cirurgicamente em 🔴.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 17/06/2026 (quarta-feira), 19:30–22:30 — **última aula de conteúdo**
- **Acesso livre desde:** 2026-04-15 (regra unificada)
- **Fechamento único da plataforma:** quarta 02/07/2026 às 18:00 BRT
- **Gabarito 5-passos dos avaliativos:** quinta 03/07/2026 às 00:00 BRT
- **Avaliação Final:** quarta 24/06/2026 · 19:00 · 3h · presencial · consulta A4 permitida (70% da nota)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–8 consolidadas. Em particular: UMP/EMP (Aula 2); Slutsky (Aula 3); 1º TBE estendido (Aula 5); incompletude (Aula 6); externalidades + bens públicos (Aula 7); seleção adversa + risco moral (Aula 8 — em particular **single-crossing** apareceu lá em R-S 1976 e reaparece aqui em Spence). **Sem isso, esta pré-aula trava em §3.**

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. **Diagnosticar** o problema de Spence (1973) como **caso especial de seleção adversa com movimento estratégico do agente informado**: trabalhador conhece sua produtividade \(\theta \in \{\theta_L, \theta_H\}\) (informação privada), firma observa apenas educação \(e \ge 0\) (sinal escolhido pelo trabalhador) e oferece salário contingente \(w(e)\). Distinguir do problema R-S (Aula 8): lá quem move primeiro é o principal não-informado; aqui é o agente informado.
2. **Enunciar e usar** a **condição de single-crossing**: para todo \((e, w)\), \(\partial \text{TMS}_{e,w}^L / \partial \theta < 0\) — o tipo alto tem custo marginal de educação **estritamente menor** que o tipo baixo. É a propriedade que sustenta a separação.
3. **Construir** um **equilíbrio separador de Spence** com 2 tipos: \(e^*_L = 0\), \(e^*_H \ge \underline e\), \(w(e) = \theta_H \cdot \mathbf 1[e \ge \underline e] + \theta_L \cdot \mathbf 1[e < \underline e]\), com \(\underline e\) tal que tipo baixo é exatamente indiferente entre se passar por alto e ficar com seu salário verdadeiro. **Provar** que esse perfil é equilíbrio Bayesiano-perfeito (PBE).
4. **Reconhecer** que existem **múltiplos PBE** em jogos de sinalização — em geral, um contínuo de equilíbrios separadores e (sob crenças "pessimistas") **equilíbrios pooling**. **Aplicar** o **critério intuitivo de Cho-Kreps (1987)** para eliminar pooling: se há um sinal \(e\) tal que apenas o tipo alto teria incentivo a desviar para ele (mesmo no melhor caso), crenças razoáveis devem atribuir esse desvio ao tipo alto, e o pooling cai.
5. **Diagnosticar** o problema de **matching estável (Gale-Shapley 1962)**: dois lados disjuntos com preferências completas e estritas sobre o lado oposto (e a opção de ficar solteiro), buscar uma alocação \(\mu\) (matching) **estável**: nenhum par \((m, w)\) não-emparelhado em \(\mu\) prefere mutuamente desviar.
6. **Executar** o algoritmo de **Deferred Acceptance (DA)** num exemplo concreto 4×4 e verificar: (a) DA termina em tempo finito; (b) o matching produzido \(\mu_M\) é **estável**; (c) \(\mu_M\) é **ótimo do lado proponente** (todo \(m \in M\) recebe seu melhor parceiro entre todos os matchings estáveis); (d) \(\mu_M\) é o **pior do lado receptor**.
7. **Enunciar** as duas propriedades de incentivo de DA:
   - **Strategy-proofness assimétrica (Roth 1982):** declarar verdade é estratégia dominante para o lado proponente; **não** é dominante para o receptor (quem recebe tem incentivo a omitir certas alternativas).
   - **Não existe mecanismo estável que seja strategy-proof para ambos os lados** (Roth 1982).
8. Aplicar o ferramental a casos brasileiros (**SISU** como matching centralizado vagas-candidatos) e mundiais (**NRMP** matching de residência médica nos EUA, Roth-Peranson 1999; **kidney exchange** chains, Roth-Sönmez-Ünver 2004; **Boston/NYC school choice** redesign, Abdulkadiroğlu-Pathak-Roth 2005, *AER* 95(2): 364–367, [DOI 10.1257/000282805774670509](https://doi.org/10.1257/000282805774670509)).
9. **Sintetizar** o curso inteiro: as 9 aulas como uma sequência canônica — preferências (Aula 1) → escolha (Aula 2) → demanda agregada (Aula 3) → equilíbrio geral parcial e total (Aulas 4–6) → catálogo das 3 falhas do EG (Aulas 6–8) → mecanismos de coordenação descentralizada (Aula 9). Conhecer a estrutura da Avaliação Final (qua 24/06).

**Não-objetivos** (para AF, ANPEC, ou cursos avançados):

- **Sinalização contínua com tipos contínuos** (Mailath 1987, *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) — citamos, não derivamos.
- **Matching com transferências monetárias** (Shapley-Shubik 1972 assignment game; Becker 1973 marriage with utility transfer) — citamos como contraponto a matching sem transferências.
- **Mecanismos de matching com restrições** (capacidades distritais, *match variations* tipo top trading cycles, Boston mechanism) — citamos no Box mas não derivamos.
- **Equilíbrios sequenciais e perfeição em jogos com tipos contínuos** — fora.

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação + síntese do curso | Contrato com aluno | 3 min |
| 1 | Leitura ZaE — Cap. 19 (sinalização + matching) — orientação principal | Leitura dirigida | 22 min |
| 2 | Leitura N&S 12e — Cap. 18 (signaling section) — piso obrigatório | Leitura dirigida (PDF) | 18 min |
| 3 | Conceitual 1 — Spence (1973): single-crossing + equilíbrio separador | Texto + 2 micro-checkpoints | 17 min |
| 4 | Conceitual 2 — Cho-Kreps (1987): refinamento intuitivo + pooling | Texto + 2 micro-checkpoints | 13 min |
| 5 | Conceitual 3 — Gale-Shapley (1962) + execução em exemplo 4×4 | Texto + 2 micro-checkpoints | 20 min |
| 6 | Exercícios de papel (Spence numérico + DA execução + Cho-Kreps aplicado) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese + roteiro AF | 3 questões | 10 min |
| 8 | Reflexão qualitativa + fechamento do curso | 2 campos abertos | 3 min |

Total: ~121 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato + síntese do curso)

1. Papel e caneta. **Sinalização** se entende com gráfico de curvas de indiferença no plano (educação, salário) — uma curva por tipo, com inclinações distintas (single-crossing). **Matching** se entende executando o algoritmo num exemplo concreto. Faça pelo menos um gráfico de Spence e uma rodada de DA num 3×3 no papel.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Spence → Cho-Kreps → Gale-Shapley é cadeia: a primeira mostra como o agente informado revela tipo via custo; a segunda refina os equilíbrios resultantes; a terceira muda completamente de problema (mecanismo discreto sem preços) e fecha o curso com o contraste entre coordenação centralizada e descentralizada.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial (última do curso).

> **Aviso de calibre.** Esta é a **última aula de conteúdo do curso**. Aulas 1–3 montaram preferências/escolha/demanda; Aulas 4–5 fecharam EG canônico (Arrow-Debreu); Aulas 6–8 catalogaram as **três falhas do EG** (incompletude, externalidades/bens públicos, informação assimétrica). **Aula 9 fecha com mecanismos de coordenação descentralizada que respondem a algumas dessas falhas:** sinalização (Spence) faz o agente informado revelar tipo via custo; matching (Gale-Shapley) implementa alocação estável **sem usar preços** — relevante quando preços não conseguem agregar a informação, como em residência médica, escolas, casamento. **A Avaliação Final é qua 24/06**: 3h, presencial, consulta A4 permitida, cobre as 9 aulas — Seção 7 desta pré-aula tem o roteiro.

---

## Seção 1 — ZaE Cap. 19 (orientação estrutural + leitura principal)

Leitura dirigida do livro **Microeconomia: Do Zero ao Equilíbrio (e Além)** (Darcio Genicolo Martins) — **Capítulo 19** ("Quando Um Lado Sabe Mais (E Isso Estraga Tudo)").

**Por que ZaE como leitura primária:**

- Cobertura panorâmica de Spence + Cho-Kreps + Gale-Shapley com calibre adequado ao MPE.
- Boxes Brasil substantivos (SISU, Mais Médicos, MBAs executivos) — alinhados ao bundle.
- Notação consistente com as Aulas 1–8 (\(\succeq\), vírgula decimal, single-crossing introduzido formalmente).
- Atividade de sala (jogo de matching 4×4 com cartas) que serve como ponte para o Bloco 3 do durante-aula.

**O que ler:**

- **Sinalização: o problema de Spence.** Setup: 2 tipos, custo de educação dependente do tipo, função salário escolhida pela firma. Single-crossing como propriedade central.
- **Equilíbrio separador.** Construção de \((\underline e, w(\cdot))\); restrições de incentivo do tipo baixo e do tipo alto.
- **Equilíbrios múltiplos + Cho-Kreps.** Pooling vs. separador; intuitive criterion como refinamento padrão.
- **Matching: setup e estabilidade.** Definição de matching, blocking pair, estabilidade.
- **Algoritmo Deferred Acceptance.** Pseudo-código + exemplo trabalhado.
- **Propriedades.** Estabilidade, otimalidade lado proponente, strategy-proofness assimétrica, Roth 1982 negative result.
- **Aplicações.** SISU, NRMP, kidney exchange, school choice.

Recomendação: leia o capítulo com calma. **Faça a execução de DA no papel** — é o que mais cola na memória.

---

## Seção 2 — N&S 12e — Cap. 18 (signaling section) — piso obrigatório

Leitura dirigida do **Nicholson & Snyder, *Microeconomic Theory: Basic Principles and Extensions*, 12ª ed., Cap. 18** ("Asymmetric Information"), **seções de sinalização**. Mesma leitura referenciada na Aula 8; aqui o foco é a parte de signaling, que na Aula 8 ficou pré-anunciada.

**Foco de leitura (em ordem):**

- **§18.6 — Market Signaling.** Modelo de Spence (1973) com 2 tipos. Setup, custo de educação, função salário. Derivação do equilíbrio separador.
- **§18.7 — Auctions.** Conexão com mecanismos VCG (Aula 7) — leitura de aprofundamento, opcional.
- **§18.8 (se houver) — Mechanism Design Without Information.** Citação cirúrgica para alunos curiosos.

> **Calibre.** N&S §18.6 cobre Spence em nível MPE — é o piso. **Jehle-Reny 3e §7.2** (Signaling Games) sobe um degrau e cobre formalmente PBE + intuitive criterion — é o teto de conforto. **MWG Cap. 13 §C** dá o tratamento mais técnico (cirúrgico em 🔴).

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap18.pdf', this)`. Bucket: PDF é o mesmo que Aula 8 referencia; status no bucket precisa ser confirmado. Caso indisponível, use a versão impressa do Insper.

---

## Seção 3 — Conceitual 1: Spence (1973) — single-crossing + equilíbrio separador

### Setup canônico

**Spence, M. (1973). "Job Market Signaling." *Quarterly Journal of Economics* 87(3), 355–374, [DOI 10.2307/1882010](https://doi.org/10.2307/1882010).**

Trabalhador tem **produtividade privada** \(\theta \in \{\theta_L, \theta_H\}\) com \(\theta_H > \theta_L > 0\). Probabilidades \(\Pr(\theta = \theta_L) = \pi_L\), \(\Pr(\theta = \theta_H) = 1 - \pi_L\) — conhecimento comum.

Trabalhador escolhe **educação** \(e \ge 0\) com **custo dependente do tipo**:
\[
c(e, \theta) = \frac{e}{\theta}.
\]
(Educação custa menos para o tipo de produtividade alta — a hipótese-chave.)

Firma observa \(e\) (não \(\theta\)) e oferece **salário** \(w(e) \ge 0\). Em mercado competitivo, \(w(e) = \mathbb{E}[\theta \mid e]\) (expectativa condicional baseada em crença posterior \(\mu(\theta \mid e)\)).

Utilidade do trabalhador (quase-linear em \(w\)):
\[
U(e, w; \theta) = w - c(e, \theta) = w - \frac{e}{\theta}.
\]

> **Hipótese de produtividade exógena.** No modelo canônico de Spence, **educação não muda \(\theta\)** — é puro sinal. Esse é o ponto pedagogicamente provocador: a educação tem valor de mercado mesmo sem efeito direto sobre produtividade, **porque seleciona**. Mailath (1987, *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) e modelos posteriores de "ability + investment" misturam sinalização e capital humano; aqui isolamos o canal de sinalização para ver como funciona.

### A condição de single-crossing

**Definição.** A função de utilidade \(U(e, w; \theta)\) satisfaz **single-crossing** em \((e, w)\) se a taxa marginal de substituição entre educação e salário (TMS, neste caso o quanto o trabalhador exige em salário extra para aceitar educação extra) é **estritamente decrescente em \(\theta\)**:
\[
\text{TMS}(e, w; \theta) = \frac{\partial U/\partial e}{-\partial U/\partial w} = \frac{1/\theta}{1} \cdot \text{(sinal)} = \frac{1}{\theta},
\]
estritamente decrescente em \(\theta\) (alto tipo "exige menos" para topar mais educação).

**Por que single-crossing é a hipótese-chave.** No plano \((e, w)\) com curvas de indiferença, single-crossing significa que duas curvas — uma para \(\theta_L\) e outra para \(\theta_H\) — se cruzam **no máximo uma vez**. Isso permite construir um sinal \(\underline e\) que **só o tipo alto está disposto a pagar**: o tipo baixo, com TMS maior, pediria salário maior do que a firma topa pagar para ele.

### Construção do equilíbrio separador

**Conjectura.** Existem \((e^*_L, e^*_H, w(\cdot))\) com:

- \(e^*_L = 0\): tipo baixo escolhe educação zero.
- \(e^*_H = \underline e \ge 0\): tipo alto escolhe um nível mínimo \(\underline e\).
- \(w(e) = \theta_H\) se \(e \ge \underline e\); \(w(e) = \theta_L\) se \(e < \underline e\). (Crenças: \(\mu(\theta_H \mid e \ge \underline e) = 1\); \(\mu(\theta_L \mid e < \underline e) = 1\).)

**Condições de incentivo (IC).** Para isso ser equilíbrio:

- **IC-L (tipo baixo não desvia para se passar por alto):**
\[
\theta_L - 0 \ge \theta_H - \frac{\underline e}{\theta_L} \quad\Longleftrightarrow\quad \underline e \ge \theta_L (\theta_H - \theta_L).
\]
- **IC-H (tipo alto não desvia para baixo):**
\[
\theta_H - \frac{\underline e}{\theta_H} \ge \theta_L - 0 \quad\Longleftrightarrow\quad \underline e \le \theta_H (\theta_H - \theta_L).
\]

Como \(\theta_L < \theta_H\), o intervalo \([\theta_L(\theta_H - \theta_L), \, \theta_H(\theta_H - \theta_L)]\) é não-vazio: **existe um contínuo de equilíbrios separadores**. Cada \(\underline e\) nesse intervalo gera um PBE distinto. **Ineficiência social:** o tipo alto gasta \(\underline e/\theta_H\) em educação que não muda sua produtividade — desperdício puro.

> **Eficiência paretiana?** Comparado ao primeiro-best com informação simétrica (cada um pago \(\theta\), nenhum educa-se), o equilíbrio separador é **estritamente Pareto-pior**: tipo alto perde \(\underline e/\theta_H\) e tipo baixo fica indiferente. Mas é o melhor implementável sob informação assimétrica e mercado competitivo — é "Coase-equivalente sob assimetria".

### Box Brasil 🇧🇷 — Diploma como sinal no mercado brasileiro

Pesquisa do **IBGE-PNAD Contínua** documenta consistentemente prêmio salarial por escolaridade no Brasil: trabalhadores com ensino superior completo ganham, em média, ~3× mais que trabalhadores com fundamental completo (controlando por idade e UF, dados 2019–2022). Quanto desse prêmio é **capital humano** (efeito direto de educação sobre produtividade) e quanto é **sinalização** (educação seleciona quem já era produtivo)?

Resposta empírica não é trivial — Lange-Topel (2006, *Handbook of Education Economics*) revisam evidência: estimativas variam de 30% a 60% do prêmio salarial atribuível a sinalização (vs. capital humano), dependendo do método e da base. **Implicação prática:** políticas que expandem acesso a ensino superior sem expandir produtividade efetiva — como cotas de ingresso sem investimento proporcional em qualidade — podem reduzir o componente de sinalização do diploma sem reduzir o prêmio salarial agregado, pelo menos no curto prazo. Spence está vivo e operando no mercado brasileiro.

### Box Mundo 🌍 — Spence (1973) e o retorno empírico ao modelo

O modelo canônico de Spence rendeu o Nobel de Economia 2001 (junto com Akerlof e Stiglitz). Décadas depois, Lange-Topel (2006) e Tyler-Murnane-Willett (2000, *QJE* 115(2): 431–468, [DOI 10.1162/003355300554827](https://doi.org/10.1162/003355300554827) sobre o GED) revisitaram empiricamente: GED (General Educational Development), um diploma alternativo nos EUA, tem **valor de mercado puro de sinalização** — cobre exatamente a mesma matéria que o ensino médio formal mas é obtido em prova. Comparar ganhos salariais de quem fez GED vs. quem fez high school formal isola o componente de sinalização. Resultado: ~20–30% do prêmio do high school é sinalização pura (Tyler et al. 2000). **Spence continua sendo a referência teórica fundamental.**

### Micro-checkpoints (2 itens — obrigatórios)

**MC1.** No modelo de Spence (1973) com \(\theta_L = 1, \theta_H = 2\) e custo \(c(e, \theta) = e/\theta\), o **menor** nível de educação \(\underline e\) que sustenta um equilíbrio separador é:

- (a) \(\underline e = 0\) — basta o salário ser \(\theta_H\) em \(e \ge 0\).
- (b) **\(\underline e = 1\)**: pela IC-L, \(\theta_L \ge \theta_H - \underline e/\theta_L \Rightarrow 1 \ge 2 - \underline e/1 \Rightarrow \underline e \ge 1\). O menor \(\underline e\) é exatamente 1. **[correta]**
- (c) \(\underline e = 2\) — coincidência com IC-H.
- (d) \(\underline e = 4\) — produto dos tipos.

**MC2.** A condição de single-crossing no modelo de Spence é fundamental porque:

- (a) Garante que o tipo alto é mais produtivo.
- (b) Implica que custo de educação é zero para o tipo alto.
- (c) **Faz com que as curvas de indiferença dos dois tipos no plano \((e, w)\) se cruzem no máximo uma vez. Isso permite que exista um nível \(\underline e\) "barato o suficiente" para o tipo alto pagar mas "caro demais" para o tipo baixo imitá-lo — separação se sustenta.** **[correta]**
- (d) Garante que o equilíbrio é único.

---

## Seção 4 — Conceitual 2: Cho-Kreps (1987) — refinamento intuitivo

### O problema dos múltiplos equilíbrios

Como vimos no Bloco 3, há um **contínuo de equilíbrios separadores**, indexados por \(\underline e \in [\theta_L(\theta_H - \theta_L), \theta_H(\theta_H - \theta_L)]\). **Pior:** com crenças "pessimistas" do tipo \(\mu(\theta_L \mid e) = 1\) para todo \(e\) fora do equilíbrio, **qualquer pooling** \(e^*_L = e^*_H = e^p\) com \(w(e^p) = \pi_L \theta_L + (1-\pi_L) \theta_H\) também é PBE — desde que ninguém queira desviar dadas as crenças de "punição".

Multiplicidade de equilíbrios é problema canônico em jogos de sinalização. Solução padrão: **refinamentos** que restringem crenças "razoáveis" fora-do-equilíbrio.

### O critério intuitivo (Cho-Kreps 1987)

**Cho, I.-K. & Kreps, D. M. (1987). "Signaling Games and Stable Equilibria." *Quarterly Journal of Economics* 102(2), 179–221, [DOI 10.2307/1885060](https://doi.org/10.2307/1885060).**

**Ideia.** Para uma mensagem \(e\) **fora do equilíbrio**, pergunte: existe algum tipo \(\theta\) que **nunca** ganharia desviando para \(e\), independente da resposta \(w\)? Se sim, **crenças razoáveis** atribuem o desvio aos outros tipos. Se restou apenas um tipo que poderia ganhar, crenças devem concentrar peso 1 nele.

**Aplicação ao Spence.** Considere um pooling em \(e^p\) com \(w(e^p) = \bar w = \pi_L \theta_L + (1-\pi_L)\theta_H\). Considere desvio para \(e' > e^p\). 

- Tipo baixo desviaria se ganhasse: o melhor caso é \(w(e') = \theta_H\), ganho líquido \(\theta_H - e'/\theta_L - \bar w\). Tipo baixo desvia se \(e' < \theta_L(\theta_H - \bar w)\).
- Tipo alto desviaria se ganhasse: melhor caso \(w(e') = \theta_H\), ganho líquido \(\theta_H - e'/\theta_H - \bar w\). Tipo alto desvia se \(e' < \theta_H(\theta_H - \bar w)\).

Como \(\theta_H > \theta_L\), o **tipo alto está disposto a pagar mais** por desviar. Existe \(e'\) tal que: tipo baixo **não** desvia (mesmo no melhor caso), mas tipo alto **desvia** — o intervalo \((\theta_L(\theta_H - \bar w), \theta_H(\theta_H - \bar w))\). Para qualquer \(e'\) nesse intervalo, **só o tipo alto desviaria**, então crenças razoáveis devem ser \(\mu(\theta_H \mid e') = 1\), portanto \(w(e') = \theta_H\). Mas então tipo alto realmente desvia → **pooling cai.**

**Resultado.** O critério intuitivo de Cho-Kreps elimina **todos os equilíbrios pooling** no Spence canônico. Sobra o **equilíbrio separador menos custoso** (\(\underline e = \theta_L(\theta_H - \theta_L)\)) — também conhecido como **Riley equilibrium** (Riley 1979).

> **Por que "intuitivo"?** O nome reflete a leitura informal: "se eu vejo um sinal estranho, e só faria sentido para um tipo, atribuo a esse tipo." É refinamento de crenças baseado em uma forma de **eliminação iterativa de estratégias dominadas no jogo de respostas**. Há refinamentos mais fortes (D1, divinity, equilibrium dominance) — Cho-Kreps cobre o que precisamos para MPE.

### Box Mundo 🌍 — Riley (1979, 2001) e o equilíbrio separador menos custoso

**Riley, J. G. (2001). "Silver Signals: Twenty-Five Years of Screening and Signaling." *Journal of Economic Literature* 39(2), 432–478, [DOI 10.1257/jel.39.2.432](https://doi.org/10.1257/jel.39.2.432).**

Riley (1979, *Econometrica*) é o equilíbrio separador menos custoso — também chamado "Riley outcome". O critério de Cho-Kreps (1987) seleciona exatamente esse equilíbrio em jogos com 2 tipos no setup canônico. Riley (2001) revisita 25 anos de literatura e mostra: **a maioria dos refinamentos sensatos chega ao mesmo destino** (separador mínimo). O *intuitive criterion* virou padrão de fato em economia aplicada.

### Box Brasil 🇧🇷 — MBAs executivos como pooling-com-separating em sub-mercados

Programas de **MBA executivo** (Insper, FIA, FGV) têm matrículas com perfis amplos: gerentes seniores com 10+ anos de experiência misturados com analistas pleno em transição. Custos de oportunidade variam (gerente sênior abre mão de salário maior + tempo). Em equilíbrio, o sub-mercado se segmenta: **tier-1 schools** atraem o tipo alto via custo elevado (mensalidade + dedicação); **tier-2/3 schools** atraem o tipo médio via custo intermediário; quem fica fora não paga sinal e fica com salário "esperado".

Esse padrão é **pooling-com-separating em sub-mercados**: dentro do tier-1, há pooling parcial (vários tipos de gerentes seniores misturados); entre tiers, há separação. Modelos com tipos contínuos (Mailath 1987, *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) capturam essa estratificação em equilíbrio ótimo. Implicação: ranking de MBAs no Brasil opera como mecanismo de sinalização hierárquica, similar à hierarquia universitária americana — Top-10 vs. tier-2 nos EUA, Insper-FGV-USP vs. demais no Brasil.

### Micro-checkpoints (2 itens — obrigatórios)

**MC3.** O critério intuitivo de Cho-Kreps (1987) elimina equilíbrios pooling no modelo de Spence porque:

- (a) Pooling não é PBE.
- (b) **Existe um sinal \(e'\) ligeiramente acima do pooling tal que apenas o tipo alto teria incentivo a desviar para ele (mesmo no melhor caso). Crenças razoáveis devem atribuir esse desvio ao tipo alto, e o pooling deixa de ser robusto.** **[correta]**
- (c) Pooling é Pareto-inferior por construção.
- (d) O algoritmo de eliminação iterativa não converge sob pooling.

**MC4.** No modelo Spence canônico com tipos \(\theta_L = 1, \theta_H = 4\), o equilíbrio separador menos custoso (Riley/Cho-Kreps) tem \(\underline e\) igual a:

- (a) \(\underline e = 0\).
- (b) **\(\underline e = 3\)**: \(\underline e_{\min} = \theta_L(\theta_H - \theta_L) = 1 \cdot (4 - 1) = 3\). **[correta]**
- (c) \(\underline e = 4\).
- (d) \(\underline e = 12\) — coincide com a IC-H.

---

## Seção 5 — Conceitual 3: Gale-Shapley (1962) — matching estável

### Mudança de paradigma

Spence (Bloco 3) e Cho-Kreps (Bloco 4) operavam dentro do paradigma **preço + valoração**: salários, custos, mercado competitivo. **Aqui mudamos completamente:** problema de matching tem **preferências ordinais sobre o lado oposto**, **sem preços**. Casamento, residência médica, escolas, transplante de rins — domínios onde "preço de equilíbrio" não faz sentido institucional. Mas ainda queremos uma teoria de **alocação eficiente e estável**.

### Setup

**Gale, D. & Shapley, L. S. (1962). "College Admissions and the Stability of Marriage." *American Mathematical Monthly* 69(1), 9–15, [DOI 10.2307/2312726](https://doi.org/10.2307/2312726).**

Dois conjuntos finitos disjuntos \(M = \{m_1, \ldots, m_n\}\) (ex.: candidatos) e \(W = \{w_1, \ldots, w_k\}\) (ex.: vagas; usamos \(W\) por compatibilidade com a notação do texto original "marriage").

Cada \(m \in M\) tem **preferência completa e estrita** \(\succ_m\) sobre \(W \cup \{m\}\) (\(m\) ficar solteiro = ficar com si mesmo). Cada \(w \in W\) tem preferência \(\succ_w\) sobre \(M \cup \{w\}\).

**Matching** \(\mu\): função \(\mu: M \cup W \to M \cup W\) tal que (i) \(\mu(m) \in W \cup \{m\}\), (ii) \(\mu(w) \in M \cup \{w\}\), (iii) \(\mu(\mu(x)) = x\) (consistência). I.e., emparelhamentos são bilaterais.

### Estabilidade

**Definição.** \(\mu\) é **estável** se não há **par bloqueante** — par \((m, w)\) não-emparelhado em \(\mu\) tal que ambos preferem mutuamente: \(w \succ_m \mu(m)\) **e** \(m \succ_w \mu(w)\). Adicionalmente, ninguém prefere ficar solteiro a estar com seu par atual (estabilidade individual).

> **Pergunta-driver pedagógica.** *Existe sempre matching estável? E se sim, é único?* Resposta de Gale-Shapley: **sim, sempre existe** (em domínio finito + preferências estritas + sem restrição); **em geral, não é único**.

### Algoritmo Deferred Acceptance (DA) — versão "men propose"

**Pseudo-código:**

```
Iteração 1:
  Cada m ∈ M propõe ao melhor w ∈ W (segundo ≻_m).
  Cada w ∈ W:
    Recebe um conjunto S_w de propostas.
    Mantém em "pendente" o melhor m em S_w segundo ≻_w.
    Rejeita os outros (que voltam ao pool de m's "livres").

Iteração t > 1:
  Cada m rejeitado em t−1 propõe ao próximo melhor w (segundo ≻_m).
  Cada w compara nova proposta com pendente atual.
  Mantém em "pendente" o melhor entre {pendente atual} ∪ {nova proposta}.
  Rejeita os outros.

Termina quando: nenhum m foi rejeitado nesta iteração.
Saída: μ_M onde μ_M(m) = pendente final de m.
```

### Execução em exemplo 4×4

Considere \(M = \{m_1, m_2, m_3, m_4\}\) e \(W = \{w_1, w_2, w_3, w_4\}\) com preferências (do mais preferido ao menos):

| Agente | Ordem |
|---|---|
| \(m_1\) | \(w_1 \succ w_2 \succ w_3 \succ w_4\) |
| \(m_2\) | \(w_1 \succ w_2 \succ w_3 \succ w_4\) |
| \(m_3\) | \(w_2 \succ w_1 \succ w_3 \succ w_4\) |
| \(m_4\) | \(w_3 \succ w_4 \succ w_1 \succ w_2\) |
| \(w_1\) | \(m_3 \succ m_2 \succ m_1 \succ m_4\) |
| \(w_2\) | \(m_1 \succ m_4 \succ m_3 \succ m_2\) |
| \(w_3\) | \(m_4 \succ m_1 \succ m_2 \succ m_3\) |
| \(w_4\) | \(m_2 \succ m_4 \succ m_3 \succ m_1\) |

**Iteração 1.** Cada \(m\) propõe ao melhor:
- \(m_1 \to w_1\), \(m_2 \to w_1\), \(m_3 \to w_2\), \(m_4 \to w_3\).
- \(w_1\) recebe \(\{m_1, m_2\}\); prefere \(m_2\) (segundo \(\succ_{w_1}\): \(m_3 \succ m_2 \succ m_1\)). Mantém \(m_2\) pendente, rejeita \(m_1\).
- \(w_2\) recebe \(\{m_3\}\); mantém \(m_3\) pendente.
- \(w_3\) recebe \(\{m_4\}\); mantém \(m_4\) pendente.
- \(w_4\) não recebe nada.

**Iteração 2.** \(m_1\) (rejeitado) propõe ao próximo: \(w_2\).
- \(w_2\) compara \(m_3\) (pendente) com \(m_1\) (novo): \(\succ_{w_2}\) é \(m_1 \succ m_4 \succ m_3 \succ m_2\), prefere \(m_1\). Mantém \(m_1\) pendente, rejeita \(m_3\).
- Outros mantêm: \(w_1\)/\(m_2\), \(w_3\)/\(m_4\).

**Iteração 3.** \(m_3\) (rejeitado) propõe ao próximo: \(w_1\).
- \(w_1\) compara \(m_2\) (pendente) com \(m_3\) (novo): \(\succ_{w_1}\) é \(m_3 \succ m_2 \succ m_1 \succ m_4\), prefere \(m_3\). Mantém \(m_3\) pendente, rejeita \(m_2\).

**Iteração 4.** \(m_2\) (rejeitado) propõe ao próximo: \(w_2\).
- \(w_2\) compara \(m_1\) (pendente) com \(m_2\) (novo): \(\succ_{w_2}\) é \(m_1 \succ m_4 \succ m_3 \succ m_2\), prefere \(m_1\). Mantém \(m_1\), rejeita \(m_2\).

**Iteração 5.** \(m_2\) (rejeitado novamente) propõe ao próximo: \(w_3\).
- \(w_3\) compara \(m_4\) (pendente) com \(m_2\) (novo): \(\succ_{w_3}\) é \(m_4 \succ m_1 \succ m_2 \succ m_3\), prefere \(m_4\). Mantém \(m_4\), rejeita \(m_2\).

**Iteração 6.** \(m_2\) propõe ao próximo: \(w_4\).
- \(w_4\) recebe \(m_2\); mantém \(m_2\) pendente. Ninguém é rejeitado nesta iteração.

**Termina.** Matching \(\mu_M\): \(m_1 \leftrightarrow w_2\); \(m_2 \leftrightarrow w_4\); \(m_3 \leftrightarrow w_1\); \(m_4 \leftrightarrow w_3\).

**Verificação de estabilidade.** Existe par bloqueante? \(m_1 - w_1\)? \(m_1\) prefere \(w_1\) a \(w_2\), mas \(w_1\) prefere \(m_3\) (atual) a \(m_1\). Não bloqueia. \(m_2 - w_1\)? \(m_2\) prefere \(w_1\) a \(w_4\), mas \(w_1\) prefere \(m_3\) a \(m_2\). Não bloqueia. Repetir para todos os pares: nenhum bloqueio. **\(\mu_M\) é estável** ✓.

### Propriedades de DA (Gale-Shapley + Roth)

**Teorema 1 (Gale-Shapley 1962).** DA termina em tempo finito (\(\le n \cdot k\) iterações), e o output \(\mu_M\) é **estável**.

**Teorema 2 (Gale-Shapley 1962).** \(\mu_M\) é **\(M\)-ótimo**: para todo \(m \in M\) e todo matching estável \(\nu\), \(\mu_M(m) \succeq_m \nu(m)\). I.e., todo \(m\) recebe **seu melhor parceiro entre todos os matchings estáveis**.

**Teorema 3 (corollary).** \(\mu_M\) é **\(W\)-pessimo**: para todo \(w \in W\) e todo matching estável \(\nu\), \(\nu(w) \succeq_w \mu_M(w)\). I.e., toda \(w\) recebe **seu pior parceiro entre todos os matchings estáveis**. (O lado proponente captura todo o ganho da estabilidade.)

**Teorema 4 (Roth 1982).** Em DA com lado proponente \(M\): declarar verdade é **estratégia dominante** para todo \(m \in M\). Não é dominante para \(w \in W\) (alguns \(w\) podem manipular omitindo certas alternativas).

**Teorema 5 (Roth 1982, negative result).** **Não existe** mecanismo de matching simultaneamente (i) **estável** e (ii) **strategy-proof para ambos os lados**. DA escolhe (i) + strategy-proof apenas para o lado proponente.

> **Pedagogia.** A assimetria de incentivo é a propriedade pedagogicamente mais provocadora: ao escolher quem é "lado proponente", o desenhador do mecanismo escolhe **quem ganha a verdade**. Em NRMP, lado proponente é o **médico residente** (não o hospital) — protege os candidatos de manipulação. Em SISU brasileiro, lado proponente é o **candidato** (variantes do mecanismo, mas similar).

### Box Brasil 🇧🇷 — SISU como matching centralizado vagas-candidatos

O **Sistema de Seleção Unificada (SISU)**, lançado pelo MEC em 2010, faz matching entre candidatos do ENEM e vagas em instituições federais. Mecanismo: candidato declara ranking de preferência (até N escolhas); vagas têm corte de nota ENEM; algoritmo aproxima Deferred Acceptance com candidatos como lado proponente (variante: "boston mechanism" com ajustes — a literatura ainda discute se SISU é DA puro ou DA com restrições, ver Aygün & Bó 2020).

**Implicações empíricas:**
- Candidatos têm incentivo a declarar preferências verdadeiras (strategy-proof aprox.).
- Algoritmo executa em segundos para 2M+ candidatos / 200K+ vagas.
- Redistribuiu fluxo geográfico de candidatos: candidato do Maranhão pode entrar em UFRGS (RS) sem viajar para vestibular específico; antes do SISU, isso era inviável institucional e financeiramente.

Crítica empírica: estudos do INEP-MEC documentaram que parcela de calouros desiste no 1º semestre quando matchedearam-se a curso/local distante das preferências reais — sinal de que candidato declarou preferências que ele acreditava maximizarem chance, não as preferências reais. Aygün & Bó (2020) propõem variantes mais robustas.

### Box Mundo 🌍 — NRMP, kidney exchange, school choice

**National Resident Matching Program (NRMP, US 1952+).** Matching anual de ~30K médicos residentes a ~5K hospitais. Antes do NRMP (década de 1940), mercado era caótico: hospitais ofereciam contratos a alunos cada vez mais cedo, candidatos aceitavam ofertas precoces sem ter informação completa. NRMP institucionalizou **DA com candidatos como lado proponente** desde 1952. Roth (1984, *J. Political Economy*) explicou por que NRMP era estável (DA gera matching estável); Roth-Peranson (1999, *AER* 89(4): 748–780, [DOI 10.1257/aer.89.4.748](https://doi.org/10.1257/aer.89.4.748)) redesenharam para incorporar casais de médicos (que querem cidades coordenadas) e outras restrições.

**Kidney exchange (Roth, Sönmez & Ünver 2004, *Quarterly Journal of Economics* 119(2): 457–488, [DOI 10.1162/0033553041382157](https://doi.org/10.1162/0033553041382157)).** Pacientes com doadores incompatíveis (motivos imunológicos) podem fazer **chains de troca**: A doa para B (compatível), B doa para A's amigo, e assim por diante. Mecanismos estilo top trading cycles encontram chains eficientes em segundos. Operação **Northwestern altruistic donor chain** em 2006 fez 10 transplantes encadeados — primeiro chain real significativo, viabilizado por mecanismo de matching.

**Boston/NYC school choice (Abdulkadiroğlu-Pathak-Roth 2005, *AER* 95(2): 364–367, [DOI 10.1257/000282805774670509](https://doi.org/10.1257/000282805774670509)).** Boston Public Schools usava "Boston mechanism" pré-2005 — não era strategy-proof, candidatos perdiam vagas por declarar preferências verdadeiras se essas falhassem na 1ª rodada. Redesign 2005 substituiu por DA com candidatos como lado proponente. **Resultado empírico:** menos famílias ficaram fora do top-3 escolhas declaradas.

### Micro-checkpoints (2 itens — obrigatórios)

**MC5.** No exemplo 4×4 desta seção, o matching de DA \(\mu_M\) é:

- (a) \((m_1, w_1), (m_2, w_2), (m_3, w_3), (m_4, w_4)\).
- (b) **\((m_1, w_2), (m_2, w_4), (m_3, w_1), (m_4, w_3)\)** — output da execução completa nas 6 iterações. **[correta]**
- (c) \((m_1, w_4), (m_2, w_1), (m_3, w_2), (m_4, w_3)\).
- (d) Não existe matching estável neste exemplo.

**MC6.** Sobre as propriedades de Deferred Acceptance (DA) com lado proponente \(M\):

- (a) DA não é estável em geral; depende das preferências.
- (b) DA é \(W\)-ótimo (cada \(w\) recebe seu melhor parceiro estável).
- (c) **DA é estável, \(M\)-ótimo (cada \(m\) recebe seu melhor parceiro estável), \(W\)-pessimo (cada \(w\) recebe seu pior parceiro estável), e strategy-proof para o lado \(M\) (mas não para \(W\)). Roth (1982) provou também que não existe mecanismo estável que seja strategy-proof para ambos os lados.** **[correta]**
- (d) DA é strategy-proof para ambos os lados.

---

## Seção 6 — Exercícios de papel

**Tempo-alvo:** 15 min para abordagem (não para resolução completa). Resolução pode ser feita até a aula presencial.

> **Calibração.** Os enunciados são **auto-contidos** e calibrados ao **piso N&S 12e §18.6** + **J-R 3e §7.2** (signaling). **Parâmetros distintos** dos exercícios avaliativos.

### EP-1 (obrigatório, calibre intermediário) — Spence numérico com 2 tipos

> **Nota.** Parâmetros distintos do Exercício 1 dos avaliativos.

Considere o modelo de Spence com 2 tipos: \(\theta_L = 2, \theta_H = 5\), custo \(c(e, \theta) = e/\theta\), \(\pi_L = 0{,}5\). Mercado competitivo paga salário igual à expectativa condicional de \(\theta\).

(a) Calcule o **menor** \(\underline e\) que sustenta um equilíbrio separador (Riley/Cho-Kreps): \(\underline e_{\min} = \theta_L(\theta_H - \theta_L)\).
(b) Calcule o **maior** \(\underline e\) que ainda é PBE separador: \(\underline e_{\max} = \theta_H(\theta_H - \theta_L)\).
(c) Calcule o salário pooling sob crenças baseadas em prior: \(\bar w = \pi_L \theta_L + (1-\pi_L) \theta_H\).
(d) Argumente por que pooling em \(\bar w\) com algum \(e^p\) **não sobrevive ao critério de Cho-Kreps**.

**Abordagem (textarea, mín. 10 caracteres):** descreva como você vai resolver — ordem das contas e qual é o "ponto de fé" (e.g., "uso IC-L para mínimo, IC-H para máximo").

### EP-2 (obrigatório, calibre intermediário) — Deferred Acceptance num 3×3

> **Nota.** Parâmetros distintos do Exercício 5 dos avaliativos.

Considere \(M = \{m_1, m_2, m_3\}\) e \(W = \{w_1, w_2, w_3\}\). Preferências:

| Agente | Ordem |
|---|---|
| \(m_1\) | \(w_2 \succ w_1 \succ w_3\) |
| \(m_2\) | \(w_1 \succ w_3 \succ w_2\) |
| \(m_3\) | \(w_1 \succ w_2 \succ w_3\) |
| \(w_1\) | \(m_1 \succ m_3 \succ m_2\) |
| \(w_2\) | \(m_3 \succ m_1 \succ m_2\) |
| \(w_3\) | \(m_1 \succ m_2 \succ m_3\) |

(a) Execute DA com \(M\) como lado proponente. Liste cada iteração explicitamente.
(b) Verifique que o output é estável (procure pares bloqueantes).
(c) Repita com \(W\) como lado proponente. Compare os dois outputs. **Verifique** as propriedades \(M\)-ótimo (proponente) vs. \(W\)-ótimo (proponente).

**Abordagem (textarea, mín. 10 caracteres):** descreva o pseudo-código que você vai aplicar e qual é o ponto sutil (rejeições em cadeia).

### EP-3 (bônus, calibre avançado) — Cho-Kreps em pooling concreto

Considere \(\theta_L = 1, \theta_H = 3, \pi_L = 0{,}5\). Suponha um equilíbrio pooling em \(e^p = 1\), \(w(1) = \bar w = 2\); fora-do-equilíbrio, crenças "pessimistas" \(\mu(\theta_L \mid e \neq 1) = 1\), salário \(w(e) = 1\) para \(e \neq 1\).

(a) Verifique que o pooling \(e^p = 1\) é PBE: nenhum tipo desvia para \(e \neq 1\) sob crenças pessimistas.
(b) Identifique um \(e' > 1\) tal que **só o tipo alto desviaria para \(e'\) no melhor caso** (\(w(e') = \theta_H = 3\)). Calcule o intervalo de \(e'\) válido.
(c) Argumente como Cho-Kreps mata o pooling: crenças razoáveis em \(e' = 2\) (digamos) devem atribuir desvio a \(\theta_H\), portanto \(w(2) = 3\); mas então \(\theta_H\) realmente desvia → pooling cai.

**Abordagem (textarea, opcional):** descreva como você vai testar cada tipo separadamente.

---

## Seção 7 — Checkpoint final + roteiro Avaliação Final

3 questões sintetizando Spence → Cho-Kreps → Gale-Shapley + roteiro AF.

**Q1 (síntese — Spence).** A condição de single-crossing no modelo de Spence garante:

- (a) Que a educação é socialmente eficiente.
- (b) **Que as curvas de indiferença dos dois tipos no plano \((e, w)\) se cruzam no máximo uma vez, permitindo construir um \(\underline e\) que separa os tipos: tipo alto paga, tipo baixo não topa pagar mesmo no melhor caso.** **[correta]**
- (c) Que o pooling é Pareto-superior.
- (d) Que o equilíbrio é único.

**Q2 (síntese — Cho-Kreps).** O critério intuitivo de Cho-Kreps elimina equilíbrios pooling porque:

- (a) Pooling não é PBE.
- (b) **Identifica desvios "fora do equilíbrio" que apenas um tipo poderia querer fazer mesmo no melhor caso. Crenças razoáveis devem atribuir o desvio a esse tipo, e a resposta da firma muda — o pooling deixa de ser robusto à eliminação iterativa de crenças não-razoáveis.** **[correta]**
- (c) Apenas equilíbrios separadores são PBE.
- (d) O algoritmo de eliminação iterativa não converge.

**Q3 (síntese — DA).** Sobre o algoritmo Deferred Acceptance com lado proponente \(M\):

- (a) Não termina em geral.
- (b) Termina mas pode não ser estável.
- (c) **Termina em tempo finito, gera matching estável, é \(M\)-ótimo (cada \(m\) recebe seu melhor parceiro entre os matchings estáveis), \(W\)-pessimo, e strategy-proof apenas para o lado proponente. Roth (1982): não existe mecanismo estável strategy-proof para ambos os lados.** **[correta]**
- (d) É equivalente a leilão de Vickrey.

### Roteiro da Avaliação Final (qua 24/06 · 19:00 · 3h · presencial · A4 permitida)

**Estrutura provável** (pendendo confirmação do Prof. Darcio):

| Parte | Tópicos | Calibre | Número de itens |
|---|---|---|---|
| I (40%) | UMP/EMP/dualidade (Aula 2), Slutsky (Aula 3) | 🟡 N&S | 2–3 questões com sub-itens |
| II (30%) | EG: Edgeworth, 1º/2º TBE, AD (Aulas 4–5–6) | 🟡 N&S a 🔴 J-R | 2 questões |
| III (20%) | Falhas de mercado: externalidades, bens públicos, info assimétrica (Aulas 7–8) | 🟡 a 🔴 | 2 questões |
| IV (10%) | Sinalização ou matching (Aula 9) | 🟡 | 1 questão curta |

**Calibre AF.** Questões similares aos exercícios avaliativos das aulas (especialmente Aulas 2, 3, 5, 7, 8). Quem fez todos os bundles está calibrado.

**Dicas operacionais:**

- **Folha A4:** uma folha (frente e verso) com fórmulas e diagramas próprios. Não vale folha tipo "scanner" de slide.
- **Tempo-alvo por questão:** 25–35 min para questões com sub-itens (Parte I e II); 15–20 min para Partes III e IV.
- **AF favorece a primeira metade do curso (Aulas 1–6) em volume.** Aulas 7–9 entram em peso menor mas com calibre comparável.
- **Erros comuns:** (i) confundir Marshalliana com Hicksiana em Slutsky; (ii) esquecer 2º TBE em problemas de equilíbrio; (iii) em externalidades, avaliar Pigou no privado em vez do ótimo; (iv) em info assimétrica, esquecer IR (participação).

---

## Seção 8 — Reflexão qualitativa + fechamento do curso

Dois campos obrigatórios (mín. 10 caracteres cada):

1. **"Que conceito ou passagem ainda está nebuloso pra você?"**
   Sugestões de auto-diagnóstico: "Por que tipo alto educa-se mais que socialmente eficiente?", "Como executo Cho-Kreps num exemplo concreto?", "Por que DA é strategy-proof apenas para o lado proponente?", "Como SISU difere de DA puro?", "Onde Roth-Peranson 1999 diverge do DA original?"

2. **"Que ponto do curso inteiro você quer ver discutido na última aula?"**
   Sugestões: "Quero ver a derivação completa do equilíbrio separador no quadro com 2 tipos", "Quero entender DA com casais (NRMP)", "Quero saber como a Avaliação Final integra as 9 aulas", "Quero ver kidney exchange chains com pseudo-código", "Onde sinalização aparece no Brasil hoje?".

> **Fechamento do curso.** Esta é a última pré-aula. Sua reflexão alimenta o **Bloco 0 da última aula presencial**, que terá síntese dos 9 temas + revisão integrada para AF. **Pré-monitoria 5** (sábado 20/06 com Alberto Nishikawa) cobre Aulas 8–9 + revisão geral AF.

---

## Apêndice A — Tabela de notação canônica desta aula

| Símbolo | Significado |
|---|---|
| \(\theta\) | tipo do agente (produtividade ou outro atributo privado) |
| \(\theta_L, \theta_H\) | tipo baixo, tipo alto, com \(\theta_L < \theta_H\) |
| \(e\) | nível de educação (sinal escolhido pelo agente) |
| \(c(e, \theta) = e/\theta\) | custo de educação (depende do tipo) |
| \(w(e)\) | salário oferecido pela firma como função do sinal |
| \(\underline e\) | nível mínimo de educação que separa os tipos |
| \(\mu(\theta \mid e)\) | crença posterior da firma sobre o tipo dado o sinal |
| \(\bar w\) | salário pooling = \(\pi_L \theta_L + (1-\pi_L)\theta_H\) |
| \(M, W\) | dois conjuntos disjuntos de agentes a casar |
| \(\succ_m\) | preferência estrita do agente \(m\) sobre \(W \cup \{m\}\) |
| \(\mu\) | matching (função de emparelhamento) |
| \(\mu_M\) | matching produzido por DA com \(M\) proponente |
| (PBE) | Equilíbrio Bayesiano-Perfeito |
| (DA) | Deferred Acceptance algorithm (Gale-Shapley) |

---

## Apêndice B — O que esta aula **não** faz (anti-overclaim)

- **Não cobre sinalização contínua** (Mailath 1987, *Econometrica* 55(6): 1349–1365, [DOI 10.2307/1913560](https://doi.org/10.2307/1913560)) — citamos.
- **Não cobre matching com transferências** (Shapley-Shubik 1972 assignment, Becker 1973) — citamos.
- **Não cobre matching dinâmico** (Roth-Peranson 1999 incorporou casais; cursos avançados detalham).
- **Não derivar a prova rigorosa da estabilidade de DA** (Knuth 1976, livro). Sketch + intuição.
- **Não cobre top trading cycles em detalhe** — citamos Roth-Sönmez-Ünver 2004 no Box.
- **Não modela formalmente sinalização vs. screening** (Stiglitz 1975 introduziu screening como dual de signaling) — citamos.

> **Disclaimer estilístico.** Esta aula é **fechamento do curso**: alta em ferramental novo (DA, single-crossing), alta em integração com aulas anteriores (Spence é seleção adversa com agente informado movendo primeiro — extensão direta da Aula 8). Saia com 6 coisas na ponta da língua: (1) single-crossing como propriedade central de Spence; (2) construção do \(\underline e\) que separa os tipos via IC-L e IC-H; (3) Cho-Kreps elimina pooling; (4) DA termina, é estável e \(M\)-ótimo; (5) Roth 1982 — não há mecanismo estável SP para os dois lados; (6) aplicações reais: NRMP, SISU, kidney exchange, school choice. Esses são os 6 fatos pedagógicos da Aula 9. **Avaliação Final qua 24/06.**
