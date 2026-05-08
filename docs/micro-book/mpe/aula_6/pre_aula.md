# Pré-Aula 6 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 6. É o "esqueleto narrativo" do `platform/aula-06.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Arrow-Debreu II — Existência, Radner Sequencial, Mercados Incompletos** (Brouwer/Kakutani como ferramentas, equivalência AD↔Radner sob mercado completo, Hart 1975 para incompletude, equação de Euler / SDF como conexão tempo↔risco).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 27/05/2026 (quarta-feira), 19:30–22:30
- **Pré-aula abre:** quinta 21/05 madrugada
- **Pré-aula fecha:** quarta 03/06 às 18:00 BRT (canônico, 1h30 antes da Aula 7)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–5 consolidadas. Em particular, da Aula 5: \(\mathbb{R}^{LS}\), bens contingentes, equilíbrio AD canônico, 1º TBE estendido, equação fundamental do SDF \(p_s/p_{s'} = \pi^i_s (v^i)'(x^{i*}_s)/[\pi^i_{s'} (v^i)'(x^{i*}_{s'})]\). **Sem isso, esta pré-aula não decola.**

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. Reconhecer **existência** de equilíbrio AD como teorema, não axioma — entender que a Aula 5 a assumiu, e identificar o ferramental (excesso de demanda contínuo + ponto fixo) sem se perder na prova.
2. Enunciar o **Teorema do Ponto Fixo de Brouwer** e o **Teorema de Kakutani** (extensão a correspondências), e entender por que precisamos de Kakutani quando a demanda não é necessariamente única (preferências quasi-côncavas mas não estritamente côncavas).
3. Distinguir **Arrow-Debreu canônico** (todos os \(LS\) preços negociados ex-ante em \(t = 0\)) de **Radner sequencial** (mercado spot estado-a-estado em cada nó + \(N\) ativos transacionados em \(t = 0\)).
4. Provar (ou reconhecer a prova de) que **AD canônico ↔ Radner com mercado completo**: equilíbrio AD se realiza como equilíbrio de Radner sse \(\text{rank}(A) = |S|\), onde \(A \in \mathbb{R}^{S \times N}\) é a matriz de payoffs dos ativos.
5. Caracterizar **mercados incompletos** (\(\text{rank}(A) < |S|\)): equilíbrio existe (sob hipóteses padrão), é **constrained Pareto-eficiente** mas **genericamente Pareto-ineficiente** (Hart 1975).
6. Derivar a **equação de Euler intertemporal** sob CRRA / log e reconhecê-la como caso particular da equação fundamental do SDF da Aula 5 com \(s = (t, \omega)\).
7. Reconhecer **SELIC** (Brasil) e **VIX** (Mundo) como objetos cuja interpretação econômica passa pela equação SDF.

**Não-objetivos** (para Aulas 7+):

- **Externalidades, bens públicos** — Aula 7. Aqui só citamos como "outra fonte de falha do 1º TBE".
- **Seleção adversa, risco moral** — Aula 8.
- **Sinalização, matching** — Aula 9.
- **Black-Scholes formal** (modelo contínuo) — fora do escopo. Citamos como caso particular do span-replication.
- **Equilíbrio em economia infinita-dimensional** (Bewley, modelos macroeconômicos completos) — fora.
- **CAPM** como teoria de portfólio com investidores avessos — citado, não derivado.

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura J-R 3e — §5.5 (revisão) + §5.6 (Existência) — **piso obrigatório** | Leitura dirigida (PDF) | 25 min |
| 2 | Leitura N&S 12e — §13.6 (EG com incerteza, sketch de existência) — **complemento panorâmico** | Leitura dirigida (PDF) | 15 min |
| 3 | Conceitual 1 — Existência via ponto fixo: Brouwer e Kakutani | Texto + 2 micro-checkpoints | 14 min |
| 4 | Conceitual 2 — Radner sequencial e equivalência com AD | Texto + 2 micro-checkpoints | 14 min |
| 5 | Conceitual 3 — Mercados incompletos + SDF como equação de Euler | Texto + 2 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (calibre J-R §5.6 / Hart 1975 simplificado) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~115 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel e caneta. **Mercados incompletos** se entendem com matrizes — escreva ao menos uma vez \(A \in \mathbb{R}^{S \times N}\) e calcule rank por inspeção.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Existência → Radner → incompletude é cadeia lógica.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

> **Aviso de calibre.** Esta aula tem o sabor de "fechando o EG". Você sai com a teoria geral do equilíbrio competitivo **completa** — Aulas 7–9 vão catalogar os modos de falha. A demonstração de existência usa ponto fixo (Brouwer/Kakutani); vamos tratar como **roteiro** (não prova linha-a-linha em sala). O ferramental técnico fica disponível em J-R §5.6 e MWG §17.B/C para quem quiser ver.

---

## Seção 1 — Jehle-Reny 3e — §5.5 (revisão) + §5.6 (Existência)

Leitura dirigida do **Jehle & Reny — *Advanced Microeconomic Theory*, 3rd ed.** Esta é a **leitura formal principal** desta aula: J-R §5.5 oferece a revisão completa de mercados sob incerteza (necessária); J-R §5.6 trata existência walrasiana com rigor.

**Por que J-R e não N&S como referência principal:**

- N&S §13.6 (EG com incerteza) trata existência apenas em sketch probabilístico — adequado como complemento, mas não como piso.
- J-R §5.6 (Existence in Pure Exchange Economies) prova existência via Kakutani com rigor adequado ao MPE: hipóteses precisas, sketch da demonstração, ponte para Radner.

**O que ler em J-R §5.5 (revisão de Aula 5):**

- Revisitar definição de mercado completo, equilíbrio AD walrasiano, 1º TBE estendido — apenas para fixar notação.

**O que ler em J-R §5.6 (núcleo da Aula 6):**

- **§5.6.1** — Hipóteses sobre preferências e dotações (continuidade, monotonicidade, convexidade, dotação positiva).
- **§5.6.2** — O excesso de demanda \(z(p)\) é **contínuo**, **homogêneo de grau zero**, **limitado por baixo**, e satisfaz a **lei de Walras** \(p \cdot z(p) = 0\) e a **propriedade de fronteira** (\(z\) explode quando algum preço \(\to 0\)).
- **§5.6.3** — Aplicação de Brouwer/Kakutani sobre o simplex de preços \(\Delta = \{p : p \ge 0, \sum_l p_l = 1\}\) para construir \(p^*\) com \(z(p^*) \le 0\), e por LNS, \(z(p^*) = 0\).
- **Exercício 5.39, 5.40** (J-R 3e) — equivalência AD↔Radner com mercado completo. **Cobre exatamente a Aula 6**.

PDF acessado via `MPE.openMaterial('jehle-reny-3e-cap5.pdf', this)` (✓ confirmado no bucket Supabase em 2026-05-07).

---

## Seção 2 — N&S 12e — §13.6 (complemento panorâmico)

Leitura dirigida do Nicholson & Snyder 12e como **complemento opcional** ao J-R §5.6. Use se o tratamento de Kakutani em J-R estiver denso demais — N&S é mais "leitor de graduação".

**Foco**:

- **§13.6 General Equilibrium with Uncertainty** — apresentação alternativa do mesmo conteúdo, com sketch de existência via "função de mapeamento contínua sobre o simplex" (essencialmente Brouwer aplicado).
- **§13.4 e §13.5** (existência walrasiana sem incerteza) — leitura panorâmica se você quer ver a versão sem incerteza primeiro. Não é pré-requisito desta aula porque a Aula 5 já fechou o caso com incerteza.

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap13.pdf', this)`.

> **Calibre.** Esta pré-aula posiciona **J-R §5.6 como piso obrigatório** e N&S §13.6 como complemento. MWG §17.B/C/E (existência walrasiana) e §19.E (mercados incompletos) ficam como teto opcional para aluno motivado.

---

## Seção 3 — Conceitual 1: Existência via ponto fixo (Brouwer e Kakutani)

### Por que existência não é grátis

Na Aula 5, **assumimos** existência de equilíbrio AD para provar 1º TBE. Faz sentido — bem-estar pressupõe alocação a comparar. Mas existência é **teorema**, não axioma. Sob que hipóteses um par \((p^*, x^*)\) com a propriedade de equilíbrio existe?

A intuição é simples e antiga (Walras, 1874): preços ajustam até zerar excesso de demanda agregada. Se \(z(p) > 0\) em algum mercado, preço sobe; se \(z(p) < 0\), desce. **Tâtonnement.**

A formalização rigorosa só veio em 1954 (Arrow-Debreu, Econometrica 22(3): 265–290, [DOI 10.2307/1907353](https://doi.org/10.2307/1907353)) — e usa **teoremas de ponto fixo** como aparelho central.

### Brouwer (1911) — o ponto fixo da função contínua

> **Teorema (Brouwer).** Seja \(K \subset \mathbb{R}^n\) compacto, convexo, não-vazio. Toda função contínua \(f: K \to K\) tem ponto fixo: \(\exists x^* \in K\) tal que \(f(x^*) = x^*\).

**Por que isso ajuda em equilíbrio:** o "ajuste de preços" \(p \mapsto T(p)\) (subir preço onde \(z(p) > 0\), descer onde \(z(p) < 0\), normalizando para o simplex) é função contínua do simplex \(\Delta\) nele mesmo. Brouwer entrega \(p^*\) com \(T(p^*) = p^*\) — o que (sob LNS + Walras) implica \(z(p^*) = 0\).

**Esquema concreto** (sketch — J-R §5.6.3 detalha):

\[
T_l(p) = \frac{p_l + \max(z_l(p), 0)}{1 + \sum_k \max(z_k(p), 0)}.
\]

\(T\) é contínua (porque \(z\) é contínua), mapeia \(\Delta\) em si mesmo, e seus pontos fixos satisfazem \(z(p^*) \le 0\) — combinado com Walras (\(p^* \cdot z(p^*) = 0\)) e \(p^* > 0\), conclui-se \(z(p^*) = 0\).

### Kakutani (1941) — quando a demanda é correspondência, não função

E se a UMP **não tem solução única**? Acontece quando \(\succeq\) é convexa mas não estritamente convexa (ex.: preferências lineares). A demanda \(x(p, m)\) então é **correspondência** \(\Delta \rightrightarrows \mathbb{R}^L\), e Brouwer não se aplica.

**Solução:** generalização de Brouwer para correspondências.

> **Teorema (Kakutani, 1941).** Seja \(K \subset \mathbb{R}^n\) compacto, convexo, não-vazio. Seja \(F: K \rightrightarrows K\) correspondência **convexa-valorada** (\(F(x)\) convexo para cada \(x\)) e **semi-contínua superior** (gráfico fechado). Então \(\exists x^* \in K\) tal que \(x^* \in F(x^*)\).

**Por que isso resolve UMP com preferências apenas convexas:** o conjunto de soluções da UMP (excesso de demanda como correspondência) é **convexo** (combinação convexa de soluções é solução, sob preferências convexas) e **fecha-se em limite** (demanda Berge). Kakutani entrega ponto fixo \(p^*\) com \(0 \in z(p^*)\) (algum elemento do conjunto de excessos é zero), o que define equilíbrio.

> **Decisão pedagógica.** Em sala vamos tratar Brouwer como ferramenta central e Kakutani como **extensão necessária quando preferências não são estritamente convexas**. Não vamos demonstrar nem Brouwer nem Kakutani — citamos. Quem quer ver a prova: J-R §5.6, MWG §17.C, ou Border (*Fixed Point Theorems*, Cambridge, 1985).

### As 4 propriedades canônicas do excesso de demanda

Para que a aplicação de ponto fixo funcione, \(z(p)\) precisa ter:

1. **Continuidade.** \(z: \Delta_+ \to \mathbb{R}^L\) é contínua. (Garantida por preferências contínuas + dotações positivas + teorema do máximo de Berge.)
2. **Homogeneidade grau 0.** \(z(\lambda p) = z(p)\) para \(\lambda > 0\). (Pode normalizar em \(\Delta\).)
3. **Lei de Walras.** \(p \cdot z(p) = 0\) para todo \(p > 0\). (LNS individual + agregação.)
4. **Propriedade de fronteira.** Se \(p^n \to p\) com \(p_l = 0\) para algum \(l\), então \(\|z(p^n)\| \to \infty\). (Monotonicidade + dotações positivas.)

Sob estas, Brouwer/Kakutani entrega \(p^* \in \Delta_{++}\) com \(z(p^*) = 0\).

### Existência em economia AD com incerteza

**A boa notícia:** as 4 propriedades **sobrevivem** em \(\mathbb{R}^{LS}\). A prova é palavra-por-palavra a mesma, com \(p \in \Delta^{LS-1}\) (simplex em dimensão \(LS\)).

> **Corolário.** Em economia AD com mercado completo, sob preferências (i) contínuas, (ii) estritamente monótonas, (iii) convexas, e dotações \(\omega^i \in \mathbb{R}^{LS}_{++}\), existe equilíbrio Arrow-Debreu \((p^*, x^*)\) com \(p^* \in \mathbb{R}^{LS}_{++}\).

### Micro-checkpoints (2 itens — obrigatórios)

**MC1.** Considere as 4 propriedades canônicas do excesso de demanda \(z(p)\). A propriedade que falha quando algum bem tem **dotação zero agregada** (\(\sum_i \omega^i_\ell = 0\)) é:

- (a) Continuidade.
- (b) Homogeneidade grau 0.
- (c) Lei de Walras.
- (d) **Propriedade de fronteira.** **[correta]** Quando \(p_\ell \to 0\), agentes com \(\omega^i_\ell > 0\) têm renda finita e demanda finita; se **nenhum** agente tem dotação positiva no bem \(\ell\) (i.e., \(\sum_i \omega^i_\ell = 0\)), \(z\) pode permanecer limitado, e a fronteira falha. (Por isso a hipótese padrão é \(\omega^i \in \mathbb{R}^{LS}_{++}\) — dotação estritamente positiva em todo bem para todo agente, o que implica \(\sum_i \omega^i_\ell > 0\).)

**MC2.** A diferença essencial entre o uso de **Brouwer** e o uso de **Kakutani** em provas de existência é:

- (a) Brouwer requer convexidade; Kakutani não.
- (b) **Kakutani lida com demanda como correspondência** (multi-valorada), enquanto Brouwer requer que a demanda seja função (uni-valorada). **[correta]** Quando preferências são apenas convexas (não estritamente), a UMP pode ter conjunto de soluções com mais de um elemento, e Brouwer não se aplica diretamente.
- (c) Brouwer existe em \(\mathbb{R}^n\); Kakutani só em dimensão finita.
- (d) Kakutani é equivalente a Hahn-Banach.

---

## Seção 4 — Conceitual 2: Radner sequencial e equivalência com AD

### A pergunta que motiva Radner

No modelo Arrow-Debreu canônico (Aula 5), **todos os \(LS\) preços contingentes** são negociados ex-ante (em \(t = 0\), antes de o estado se realizar). Para uma economia com \(L = 1\) bem e \(|S|\) estados, isso requer \(|S|\) preços de Arrow simultaneamente cotados.

**Pergunta econômica:** isso é realista? Em mercados financeiros reais, não vemos um preço por estado da natureza. Vemos **ações, bonds, opções, futuros** — ativos cujos payoffs **dependem** dos estados. O equilíbrio competitivo se realiza através desses ativos, não de preços-Arrow diretamente cotados.

**Radner (1972, Econometrica 40(2): 289–303, [DOI 10.2307/1909407](https://doi.org/10.2307/1909407))** propôs o modelo **sequencial**: agentes formam portfolio em \(t = 0\) com \(N\) ativos disponíveis, e em cada estado \(s\), há **mercado spot** onde se transaciona o bem físico aos preços spot \(p^s \in \mathbb{R}^L\).

### Setup formal de Radner sequencial

**Em \(t = 0\):**

- Agente \(i\) escolhe portfolio \(\theta^i \in \mathbb{R}^N\) (quantidade comprada de cada ativo \(j = 1, \ldots, N\)).
- Restrição orçamentária em \(t = 0\): \(q \cdot \theta^i = 0\), onde \(q \in \mathbb{R}^N\) é o vetor de preços dos ativos. (Convenção: dotação inicial em \(t = 0\) é zero; toda riqueza vem das dotações estado-contingentes.)

**Em cada estado \(s\):**

- O ativo \(j\) entrega payoff \(A_{sj}\) (em unidades do bem físico, ou em "valor"; aqui simplifico assumindo \(L = 1\)).
- Renda do agente \(i\) no estado \(s\): \(m^{i,s} = \omega^i_s + \sum_j A_{sj}\, \theta^i_j = \omega^i_s + (A \theta^i)_s\).
- Mercado spot fecha: \(\sum_i x^{i,s} = \sum_i \omega^i_s\) para cada \(s\).

**Equilíbrio de Radner:** \((q^*, p^{*,s}_{s \in S}, \theta^{i*}_{i}, x^{i*,s}_{i,s})\) tal que (i) cada \((\theta^{i*}, x^{i*})\) é ótimo para \(i\) dada a estrutura de preços, e (ii) mercado de ativos fecha (\(\sum_i \theta^{i*} = 0\)) **e** mercado spot fecha em cada \(s\).

### Teorema da equivalência (Arrow 1953, formalizado por Radner 1972)

> **Teorema.** Suponha que a matriz de payoffs \(A \in \mathbb{R}^{S \times N}\) tem **rank completo** (\(\text{rank}(A) = |S|\)). Então a alocação de equilíbrio AD canônico **coincide com a alocação de equilíbrio de Radner sequencial**. Equivalentemente: se mercados são completos via portfolio, AD e Radner produzem o mesmo equilíbrio.

**Sketch da prova:**

*(\(\Rightarrow\))* Dado equilíbrio AD \((p^*_s)_{s \in S}\), defina preços spot \(\hat p^s = 1\) (numerário em cada estado) e preços de ativos \(q^*_j = \sum_s p^*_s\, A_{sj}\). Pela condição de **não-arbitragem**: o preço de cada ativo é a soma ponderada (pelos preços-Arrow) dos seus payoffs. O portfolio que cada agente escolhe é \(\theta^{i*} = A^{-1}(x^{i*} - \omega^i)\) (existe porque \(\text{rank}(A) = |S|\)). Verifica-se que esse \(\theta^{i*}\) é ótimo dada a estrutura de preços de Radner.

*(\(\Leftarrow\))* Dado equilíbrio Radner com \(\text{rank}(A) = |S|\), os preços de ativos \(q^*\) determinam univocamente os preços-Arrow \(p^*_s\) (por inversão da matriz \(A\)). A alocação resultante é ótima em AD.

### Por que rank importa: replicação por portfolio

A intuição é álgebra linear pura. Cada **ação Arrow** \(e_s\) (paga 1 em \(s\), 0 em \(s' \neq s\)) é um vetor canônico em \(\mathbb{R}^S\). O conjunto \(\{e_1, \ldots, e_{|S|}\}\) é base de \(\mathbb{R}^S\). 

**Pergunta:** quais combinações de ações Arrow são replicáveis com os \(N\) ativos disponíveis?

**Resposta:** o subespaço gerado pelas colunas de \(A\) — chamado **span** ou **payoff space** \(\mathcal{M} := \{A\theta : \theta \in \mathbb{R}^N\} \subseteq \mathbb{R}^S\).

**Mercado completo** \(\Leftrightarrow \mathcal{M} = \mathbb{R}^S \Leftrightarrow \text{rank}(A) = |S|\).

Em \(|S| = 3\) com 2 ativos, \(\mathcal{M}\) é plano em \(\mathbb{R}^3\) — incompleto. Para completar, precisaríamos de pelo menos um terceiro ativo linearmente independente.

### Exemplo concreto: ação + bond em 2 estados

\(|S| = 2\). Bond livre de risco: \(D^{\text{bond}} = (1, 1)\). Ação: \(D^{\text{ação}} = (D_1, D_2)\) com \(D_1 \neq D_2\).

Matriz de payoffs:
\[
A = \begin{pmatrix} 1 & D_1 \\ 1 & D_2 \end{pmatrix}, \quad \det A = D_2 - D_1 \neq 0.
\]

Logo \(\text{rank}(A) = 2 = |S|\) — **mercado completo**. Equilíbrio Radner = equilíbrio AD canônico.

**Réplica das ações Arrow.** \(e_1 = (1, 0)\). Resolvendo \(A\theta = e_1\): \(\theta_{\text{bond}} + D_1 \theta_{\text{ação}} = 1\), \(\theta_{\text{bond}} + D_2 \theta_{\text{ação}} = 0 \Rightarrow \theta_{\text{ação}} = -1/(D_2 - D_1)\), \(\theta_{\text{bond}} = D_2/(D_2 - D_1)\). Esse portfolio paga 1 em \(s = 1\) e 0 em \(s = 2\) — replica \(e_1\).

**Preço de Arrow** \(p^*_1\): \(q_{\text{bond}} \cdot D_2/(D_2 - D_1) - q_{\text{ação}}/(D_2 - D_1)\). Substitui-se em fórmulas reais quando \(q_{\text{bond}}, q_{\text{ação}}\) são observados.

### Caso \(|S| = 3\) com 2 ativos: incompleto

\(|S| = 3\). Bond \(D^{\text{bond}} = (1, 1, 1)\). Ação \(D^{\text{ação}} = (0, 1, 3)\). Matriz:

\[
A = \begin{pmatrix} 1 & 0 \\ 1 & 1 \\ 1 & 3 \end{pmatrix}.
\]

Span\((A) = \{(a, a + b, a + 3b) : a, b \in \mathbb{R}\}\) — plano em \(\mathbb{R}^3\), dimensão 2. \(\text{rank}(A) = 2 < 3\). **Mercado incompleto.**

\(e_1 = (1, 0, 0)\) está fora do span — não é replicável por portfolio.

### Micro-checkpoints (2 itens — obrigatórios)

**MC3.** Considere economia com \(|S| = 4\) estados e 3 ativos com matriz de payoffs \(A \in \mathbb{R}^{4 \times 3}\) com \(\text{rank}(A) = 3\). Sobre o mercado financeiro:

- (a) É completo.
- (b) **É incompleto:** \(\text{rank}(A) = 3 < 4 = |S|\), logo span tem dimensão 3, falta 1 dimensão; nem toda alocação contingente é replicável. **[correta]**
- (c) Não há equilíbrio.
- (d) Existência depende dos preços de equilíbrio.

**MC4.** Em equilíbrio Radner sequencial com mercado completo, o **preço do ativo \(j\)** em \(t = 0\) é determinado por:

- (a) \(q^*_j = 1/N\) — divide-se igualmente.
- (b) **\(q^*_j = \sum_s p^*_s\, A_{sj}\)** — soma ponderada dos payoffs pelos preços-Arrow. **[correta]** Não-arbitragem garante essa fórmula; é a versão estática da fórmula de precificação por SDF.
- (c) \(q^*_j = E[A_{\cdot j}] = \sum_s \pi_s\, A_{sj}\) — valor esperado simples.
- (d) \(q^*_j\) indeterminado sem mais informações.

---

## Seção 5 — Conceitual 3: Mercados incompletos + SDF como Euler intertemporal

### Quando rank é deficiente: Hart (1975)

Em mercado incompleto (\(\text{rank}(A) < |S|\)), o equilíbrio Radner ainda **existe** sob hipóteses padrão (preferências contínuas, monotônicas, convexas; dotações positivas). Hart (1974, JET 11(3): 418–443) e GP (Geanakoplos-Polemarchakis 1986, Cap. 3 de *Uncertainty, Information, and Communication*, Cambridge UP) detalham. Mas o equilíbrio:

1. É **constrained Pareto-eficiente:** dada a estrutura de ativos disponíveis (o subespaço \(\mathcal{M}\)), não há realocação Pareto-superior **dentro** de \(\mathcal{M}\).
2. É **genericamente Pareto-ineficiente** (em sentido absoluto): existem alocações Pareto-superiores **fora** de \(\mathcal{M}\) — alocações que requereriam ativos adicionais para serem implementadas.

> **Teorema (Hart 1975, JET 11(3): 418–443, [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9)).** Em economia com mercados incompletos, equilíbrio competitivo é genericamente Pareto-ineficiente. Mais ainda: introduzir um novo ativo financeiro pode **piorar** o bem-estar (alguns agentes melhoram, outros pioram).

A última parte é contra-intuitiva e politicamente importante. **Mais mercados não é necessariamente melhor.** Justifica intervenção regulatória em produtos financeiros complexos. Geanakoplos-Polemarchakis (1986) generalizam.

### Diagrama mental: por que Pareto pode falhar

Em AD canônico (Aula 5), o argumento de Pareto era:
\[
\text{Se } \tilde x \succ x^* \text{ é viável, então } p^* \cdot \tilde x > p^* \cdot \omega \;\Rightarrow\; \text{contradição com viabilidade.}
\]

Em Radner com mercado incompleto, a alocação alternativa \(\tilde x\) precisa estar **no span dos ativos disponíveis** para ser implementável. Se \(\tilde x \notin \mathcal{M}\), ela não é "viável" no sentido institucional — mesmo que seja viável no sentido físico (\(\sum_i \tilde x^i = \sum_i \omega^i\) estado-a-estado).

O argumento de contradição **falha** porque o conjunto de \(\tilde x\) potenciais é menor. Resultado: equilíbrio Radner é eficiente **dentro** desse conjunto restrito (constrained PE), mas não em sentido absoluto.

### Equação de Euler como caso particular do SDF

Volte à Aula 5: equação fundamental do SDF é
\[
\frac{p^*_s}{p^*_{s'}} = \frac{\pi^i_s\, (v^i)'(x^{i*}_s)}{\pi^i_{s'}\, (v^i)'(x^{i*}_{s'})} \quad \forall i.
\]

**Especialização para tempo + risco.** Faça \(s = (t, \omega)\). Em \(|\Omega| = 1\) (sem incerteza), só varia \(t\). A equação vira
\[
\frac{p^*_t}{p^*_{t+1}} = \frac{u'(c_t)}{\beta\, u'(c_{t+1})},
\]
onde \(\beta\) absorve o desconto subjetivo (caso particular: \(\pi_{t+1}/\pi_t = \beta\) interpretado como peso temporal).

A razão de preços é **a taxa bruta de juros** \(R = p^*_t/p^*_{t+1}\). Reescrevendo:

\[
\boxed{\;u'(c_t) = \beta\, R\, u'(c_{t+1}).\;}
\]

**Esta é a equação de Euler intertemporal.** Lucas (1978, Econometrica 46(6): 1429–1445, [DOI 10.2307/1913837](https://doi.org/10.2307/1913837)) generaliza para \(|\Omega| > 1\):

\[
1 = E^\pi_t\!\left[\beta \cdot \frac{u'(c_{t+1})}{u'(c_t)} \cdot R_{t+1}\right] = E^\pi_t[m_{t+1} R_{t+1}],
\]
onde \(m_{t+1} := \beta\, u'(c_{t+1})/u'(c_t)\) é o **stochastic discount factor**. Cada ativo financeiro satisfaz essa equação com seu próprio \(R_{t+1}\) específico.

> **Síntese pedagógica.** SDF = equação fundamental de Aula 5 vista no tempo. Toda a macro-finanças moderna (CAPM, modelos C-CAPM, asset pricing) é uma conta sobre essa equação. **Não derivaremos formalmente em sala** — citamos como ponte de Aula 5 para finanças.

### Box Mundo — VIX como preço de Arrow do "estado ruim"

O **VIX** (CBOE Volatility Index) mede a volatilidade implícita de opções sobre o S&P 500 com 30 dias para o vencimento. Em modelos asset pricing, sob aversão ao risco, **o preço de Arrow do estado de alta volatilidade** (\(p^*_{\text{stress}}\)) é desproporcionalmente alto comparado à probabilidade objetiva — agentes pagam prêmio para se proteger.

VIX persistentemente alto sinaliza \(\pi_s\, m_s\) elevado para \(s = \text{stress}\), ou seja, alto SDF nesse estado. Aquilo se traduz em derivativos caros (puts), prêmios de risco elevados em ações, e fluxo para tesouros. Hansen-Jagannathan (1991, J. Political Economy 99(2): 225–262, [DOI 10.1086/261749](https://doi.org/10.1086/261749)) testaram empiricamente os bounds do SDF.

### Box Brasil — SELIC como SDF macro

A **SELIC** é a taxa básica de juros nominal do Brasil. Em economia AD intertemporal sob expectativas racionais, a SELIC nominal aproxima
\[
\text{SELIC} \approx \frac{1}{E[m_{t+1}]} = \frac{1}{\beta\, E[u'(c_{t+1})/u'(c_t)]} \cdot (1 + \pi^e),
\]
onde \(\pi^e\) é a expectativa de inflação. Em estado de stress (recessão profunda), \(c_{t+1}\) cai, \(u'(c_{t+1})\) sobe, \(E[m_{t+1}]\) sobe, **SELIC cai** — política monetária expansionista. Em estado de boom, inverso. **A teoria SDF dá fundamentação microeconômica à curva de juros e à função de reação do BCB.**

> **Anti-overclaim.** Modelos macro reais usam SDF apenas como **bloco de construção**. Curva de juros real depende também de prêmio de risco, fricções financeiras, e regra de política monetária (Taylor 1993). Aulas 8 (sel.adv.) e 9 (sinalização) dão pistas de como fricções entram. Pré-monitoria 4 (Aulas 6–7) detalha.

### Micro-checkpoints (2 itens — obrigatórios)

**MC5.** Em mercado incompleto com matriz de payoffs \(A\) e \(\text{rank}(A) < |S|\), o equilíbrio Radner é:

- (a) Pareto-eficiente — sempre, pelo 1º TBE.
- (b) **Constrained Pareto-eficiente** (não há realocação Pareto-superior no span dos ativos disponíveis) **mas genericamente Pareto-ineficiente** em sentido absoluto (existem alocações Pareto-superiores fora do span). **[correta]** Hart (1975).
- (c) Não existe.
- (d) Equivalente a autarquia.

**MC6.** A equação de Euler intertemporal \(u'(c_t) = \beta\, R\, u'(c_{t+1})\) é caso particular da equação fundamental do SDF da Aula 5 quando:

- (a) Não há incerteza (\(|\Omega| = 1\)) e o agente escolhe consumo em 2 períodos.
- (b) **Identifica-se \(s = (t, \omega)\), \(\pi_{t+1}/\pi_t \equiv \beta\) (peso temporal absorvido na probabilidade subjetiva), e \(p^*_t/p^*_{t+1} \equiv R\) (taxa bruta de juros).** **[correta]** Tempo é caso particular de estado, e juros é caso particular de razão de preços contingentes.
- (c) O agente é avesso ao risco com Bernoulli logarítmica.
- (d) Mercados são incompletos.

---

## Seção 6 — Exercícios de papel

**Tempo-alvo:** 15 min para abordagem (não para resolução completa). Resolução pode ser feita até a aula presencial.

> **Calibração.** Os enunciados são **auto-contidos** e calibrados ao **piso J-R 3e §5.6**, com paridade temática aos exercícios 5.39 e 5.40 do J-R 3e (equivalência AD↔Radner) e Hart 1975 (mercados incompletos simplificado). Quem preferir abordagem panorâmica encontra material equivalente em N&S §13.6.

### EP-1 (obrigatório, calibre intermediário)

> **Nota.** Os parâmetros aqui (dotações, ativos) são **distintos** dos do Exercício 1 dos avaliativos — mesma estrutura conceitual (AD↔Radner sob mercado completo), mas calibração numérica diferente. Faça este aqui como treino formativo; os avaliativos virão com economia diferente.

Considere economia \(L = 1\), \(|S| = 2\), \(I = 2\) agentes. Probabilidades de consenso \(\pi_1 = 0{,}5\), \(\pi_2 = 0{,}5\). Bernoullis \(v_A = v_B = \ln c\). Dotações \(\omega^A = (50, 110)\), \(\omega^B = (110, 50)\). Total \(\bar\omega = (160, 160)\) — agregado livre de risco.

Mercado financeiro: 2 ativos. **Bond:** \(D^{\text{bond}} = (1, 1)\). **Ação:** \(D^{\text{ação}} = (0, 2)\). Matriz \(A = \begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix}\).

(a) Mostre que o mercado é completo: calcule \(\det A\) e conclua \(\text{rank}(A) = 2\).  
(b) Calcule preços de equilíbrio AD canônico \((p^*_1, p^*_2)\) (use o argumento "agregado simétrico + Bernoulli idêntica + crenças uniformes \(\Rightarrow\) totalmente segurados"). Normalize \(p^*_1 + p^*_2 = 1\).  
(c) Por arbitragem, calcule preços de equilíbrio dos ativos: \(q^*_{\text{bond}} = p^*_1 + p^*_2\) e \(q^*_{\text{ação}} = 0 \cdot p^*_1 + 2 \cdot p^*_2\).  
(d) Calcule o portfolio \(\theta^A = (\theta^A_{\text{bond}}, \theta^A_{\text{ação}})\) que implementa a alocação de seguro completo \(x^{A*} = (80, 80)\). *Dica:* \(A\theta^A = x^{A*} - \omega^A = (30, -30)\).  
(e) Verifique restrição orçamentária em \(t = 0\): \(q^* \cdot \theta^A = 0\).

**Abordagem (textarea, mín. 10 caracteres):** descreva em 2-3 linhas como você calculará \(\theta^A\) e como verifica a restrição.

### EP-2 (obrigatório, calibre intermediário)

> **Nota.** Os parâmetros (dotações) aqui também são **distintos** dos do Exercício 2 dos avaliativos. Estrutura conceitual paralela (Hart 1975 com \(|S|=3\), 2 ativos), calibração numérica diferente.

Considere economia \(L = 1\), \(|S| = 3\), \(I = 2\). Probabilidades de consenso \(\pi = (1/3, 1/3, 1/3)\). Bernoullis \(v_A = v_B = \ln c\). Dotações \(\omega^A = (100, 60, 20)\), \(\omega^B = (20, 60, 100)\). Total \(\bar\omega = (120, 120, 120)\) — agregado livre de risco.

Mercado financeiro: **2 ativos apenas**. Bond \(D^{\text{bond}} = (1, 1, 1)\) e ação \(D^{\text{ação}} = (0, 1, 3)\). Matriz \(A \in \mathbb{R}^{3 \times 2}\).

(a) Mostre que \(\text{rank}(A) = 2 < 3\). Conclua que mercado é incompleto.  
(b) Em AD canônico (3 ativos Arrow disponíveis), o equilíbrio levaria \(A\) e \(B\) a consumir \((60, 60, 60)\) cada (totalmente segurados). Por que essa alocação **não pode** ser implementada com o mercado de 2 ativos? *Dica:* analise se \((60, 60, 60) - \omega^A = (-40, 0, 40)\) está em \(\text{span}(A)\).  
(c) Argumente em prosa: o equilíbrio Radner com 2 ativos é **constrained Pareto-eficiente** (no span) mas Pareto-inferior à alocação AD ideal. Esta é a versão simplificada de Hart (1975).

**Abordagem (textarea, mín. 10 caracteres):** explique por que o vetor \((60, 60, 60) - \omega^A = (-40, 0, 40)\) precisa estar no span de \(A\), e por que está/não está.

### EP-3 (bônus, calibre intermediário-difícil)

Em \(|S| = 2\), considere mercado de Radner com **única ação** \(D^{\text{ação}} = (D_1, D_2)\) com \(D_1 \neq D_2\) (sem bond). Matriz \(A = (D_1, D_2)^\top \in \mathbb{R}^{2 \times 1}\), \(\text{rank}(A) = 1\).

(a) Argumente que esse mercado é incompleto.  
(b) **Pergunta-chave:** mesmo sendo \(N = 1\) ativo apenas, agentes ainda podem fazer transações intertemporais que reduzem risco? Discuta. (*Dica:* o que importa é o **span**; com 1 ativo, span é unidimensional — agentes podem trocar uma fração do risco, mas não eliminá-lo.)

**Abordagem (textarea, opcional):** descreva o que falta nesse mercado e o que está disponível.

---

## Seção 7 — Checkpoint final de síntese

3 questões sintetizando existência → Radner → mercados incompletos → SDF/Euler.

**Q1 (síntese — existência).** A demonstração de existência de equilíbrio Arrow-Debreu em economia com incerteza e mercado completo usa:

- (a) Apenas Lei de Walras.
- (b) **Teorema do ponto fixo (Brouwer ou Kakutani) aplicado ao excesso de demanda agregada \(z(p)\) sobre o simplex \(\Delta^{LS - 1}\)**, sob continuidade, homogeneidade grau 0, lei de Walras, e propriedade de fronteira. **[correta]**
- (c) Apenas Hahn-Banach.
- (d) Apenas convexidade das preferências.

**Q2 (síntese — Radner).** Equilíbrio Radner sequencial replica equilíbrio AD canônico **se e somente se**:

- (a) Existe agente neutro ao risco.
- (b) Probabilidades subjetivas são idênticas.
- (c) **A matriz de payoffs \(A \in \mathbb{R}^{S \times N}\) tem \(\text{rank}(A) = |S|\)** — mercado completo via portfolio. **[correta]**
- (d) Não existe nenhuma condição que assegure equivalência.

**Q3 (síntese — Hart 1975).** Em mercados incompletos (\(\text{rank}(A) < |S|\)), o equilíbrio competitivo (Radner) é:

- (a) Pareto-eficiente sempre.
- (b) **Constrained Pareto-eficiente (no span dos ativos), mas genericamente Pareto-ineficiente em sentido absoluto** — introduzir um novo ativo pode ser Pareto-melhorador (ou não, conforme Geanakoplos-Polemarchakis 1986). **[correta]**
- (c) Sempre Pareto-inferior à autarquia.
- (d) Equivalente a equilíbrio em economia sem incerteza.

---

## Seção 8 — Reflexão qualitativa

Dois campos obrigatórios (mín. 10 caracteres cada):

1. **"Que conceito ou passagem ainda está nebuloso pra você?"**  
   Sugestões de auto-diagnóstico: "Por que precisamos de Kakutani quando Brouwer já existe?", "Como visualizar o span de uma matriz \(A\) com 2 ativos em \(\mathbb{R}^3\)?", "Onde a fronteira do simplex aparece na prova de existência?".

2. **"Qual ponto você quer ver discutido em sala?"**  
   Sugestões: "Quero ver o cálculo do portfolio replicador no quadro com números.", "Quero entender por que mais ativos pode piorar bem-estar (Hart 1975).", "Como a equação de Euler conecta Aula 5 com macroeconomia aplicada?".

---

## Apêndice A — Tabela de notação canônica desta aula

| Símbolo | Significado |
|---|---|
| \(\Delta\) | simplex de preços, \(\Delta = \{p \ge 0 : \sum_l p_l = 1\}\) |
| \(z(p)\) | excesso de demanda agregada |
| \(T(p)\) | mapa de ajuste de preços (função no simplex) |
| \(F\) | correspondência (Kakutani) |
| \(N\) | número de ativos no mercado de Radner |
| \(A \in \mathbb{R}^{S \times N}\) | matriz de payoffs dos ativos |
| \(\theta^i \in \mathbb{R}^N\) | portfolio do agente \(i\) |
| \(q \in \mathbb{R}^N\) | preços dos ativos em \(t = 0\) |
| \(p^s \in \mathbb{R}^L\) | preços spot no estado \(s\) |
| \(\mathcal{M}\) | payoff space, \(\mathcal{M} = \{A\theta : \theta \in \mathbb{R}^N\}\) |
| \(\text{rank}(A)\) | dimensão de \(\mathcal{M}\) |
| \(R = p_t/p_{t+1}\) | taxa bruta de juros (intertemporal) |
| \(m_{t+1} = \beta u'(c_{t+1})/u'(c_t)\) | SDF intertemporal |

---

## Apêndice B — O que esta aula **não** faz (anti-overclaim)

- **Não demonstra Brouwer nem Kakutani.** Cita; não prova.
- **Não derivaremos a prova de existência linha-a-linha.** Sketch + roteiro; J-R §5.6 detalha.
- **Não trata economia infinito-dimensional.** \(|S| < \infty\), \(|T| < \infty\). Bewley (1972) e Aliprantis-Border (1999) cobrem o infinito.
- **Não cobre Black-Scholes formal.** Cita como caso particular contínuo de span-replication.
- **Não deriva CAPM nem fórmulas de portfolio ótimo (Markowitz).** Citamos.
- **Não trata ajuste de preços fora do equilíbrio (tâtonnement como dinâmica real).** Existência é estática; estabilidade dinâmica é tópico próprio (Sonnenschein-Mantel-Debreu).
- **Não aborda heterogeneidade radical de crenças (Bewley 1986, ambiguity).** Probabilidades subjetivas \(\pi^i\) são ainda probabilidades padrão.

> **Disclaimer estilístico.** Esta aula é deliberadamente **densa no roteiro técnico** (existência via ponto fixo, equivalência AD↔Radner, Hart 1975) e **leve nas demonstrações**. O conteúdo cabe folgado em 180 min — *e tem que caber*, porque as Aulas 7–9 vão usar incompletude como pano de fundo (info assimétrica é forma específica de incompletude). Saia desta aula com `rank(A) = |S|` na ponta da língua e a equação de Euler como caso particular do SDF.
