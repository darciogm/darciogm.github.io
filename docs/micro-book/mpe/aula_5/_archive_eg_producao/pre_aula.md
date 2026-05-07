# Pré-Aula 5 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 5. É o "esqueleto narrativo" do `platform/aula-05.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Equilíbrio Geral em Produção** (tecnologia da firma, conjuntos de produção, PPF, Robinson Crusoe, EG com firmas, 1º/2º TBE com produção).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 20/05/2026 (quarta-feira), 19:30–22:30
- **Pré-aula abre:** quinta 14/05 madrugada
- **Pré-aula fecha:** quarta 27/05 às 18:00 BRT (canônico, 1h30 antes da Aula 6)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–4 consolidadas (preferências, UMP/EMP/Roy/Shephard, Slutsky/elasticidades, EG trocas + Edgeworth + Walras + 1º/2º TBE preliminar).

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. Definir **conjunto de produção** $Y \subseteq \mathbb{R}^L$ e listar suas hipóteses canônicas (livre descarte, possibilidade de inação, fechamento, convexidade, irreversibilidade).
2. Reconhecer a **função de produção** $f: \mathbb{R}^k_+ \to \mathbb{R}_+$ como caso particular ($Y = \{(z, q) : q \le f(z)\}$, com convenção de sinal sobre insumos).
3. Construir a **fronteira de possibilidades de produção (PPF)** em economia $2 \times 2$ a partir de fatores fixos e duas funções de produção.
4. Definir a **taxa marginal de transformação (TMT)** como inclinação (em valor absoluto) da PPF e relacioná-la à razão de produtividades marginais.
5. Resolver o problema de **Robinson Crusoe** (1 consumidor + 1 firma + 2 bens, lazer e bem de consumo) e identificar o equilíbrio competitivo descentralizado.
6. Verificar a igualdade canônica em equilíbrio: $\text{TMS} = \text{TMT} = p_1/p_2$ (eficiência produtiva + eficiência alocativa simultaneamente).
7. Antecipar o enunciado dos **1º e 2º TBE com firma**: hipóteses adicionais (convexidade do conjunto de produção agregado), papel da maximização de lucro.

Não-objetivos (ficam para Aula 6 e seguintes):
- Existência de EC com produção via Brouwer/Kakutani (Aula 6).
- Bens contingentes, tempo, risco (Aulas 6 — Arrow-Debreu).
- Externalidades, bens públicos (Aula 7).
- Tecnologias com retornos crescentes e o que o 1º TBE diz sobre elas (Aula 7, parcialmente).

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura ZaE — Caps. 10 (produção) e 12 (firma), seções selecionadas | Leitura dirigida | 25 min |
| 2 | Leitura N&S 12e Cap. 9 (produção) + Cap. 13.3–13.5 (EG produção) | Leitura dirigida (PDF) | 25 min |
| 3 | Conceitual 1 — Conjunto de produção, função de produção, PPF | Texto + 2 micro-checkpoints | 12 min |
| 4 | Conceitual 2 — Robinson Crusoe e equilíbrio competitivo | Texto + 2 micro-checkpoints | 14 min |
| 5 | Conceitual 3 — EG com firmas + 1º/2º TBE com produção | Texto + 3 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (N&S 9.* / 13.5 + bônus) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~120 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel, caneta e **lápis de cor**. PPF e Edgeworth-da-produção se aprendem com mão.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Tecnologia → PPF → Robinson Crusoe → EG geral é cadeia lógica.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

---

## Seção 1 — ZaE Caps. 10 e 12 (seções selecionadas)

Leitura dirigida do livro do Prof. Darcio (*Microeconomia: Do Zero ao Equilíbrio (e Além)*):

- **Cap. 10 (Produção)** — `docs/micro-book/cap10/`. Foco em §10.1 (função de produção e produtividade marginal), §10.3 (isoquantas e TMST), §10.4 (rendimentos de escala). Pular §10.5+ (progresso técnico, elasticidade de substituição).
- **Cap. 12 (Firma)** — `docs/micro-book/cap12/`. Foco em §12.1 (natureza da firma), §12.2 (maximização de lucro), §12.3 (função de lucro). Pular §12.4 (oferta de longo prazo) — Aula 5 não chega lá.

**Por que cap. 10 + 12 e não outros:** Cap. 10 é a base tecnológica (função de produção como ferramenta). Cap. 12 é onde a firma aparece como agente otimizador. A junção dos dois — tecnologia + maximização de lucro — é o que entra na economia de equilíbrio geral da Aula 5. Cap. 11 (custos) é caminho equivalente via dualidade, mas opcional para esta pré-aula.

**Fallback escrito da aula:** se a aula presencial estiver acelerada na construção da PPF a partir de duas funções de produção, releia §10.3 (isoquantas) e visualize a PPF como "envoltória eficiente das alocações de fatores entre as duas funções de produção".

---

## Seção 2 — N&S 12e Cap. 9 (produção) + Cap. 13.3–13.5 (EG produção)

Leitura dirigida do Nicholson & Snyder 12e. **Foco**:

- **Cap. 9 — Production Functions.** §9.1–9.3 (definição, marginal productivity, isoquantas, RTS). §9.4 (elasticidade de substituição) é opcional.
- **Cap. 13 §13.3 — A Mathematical Model of Production and Exchange.** Entra na fronteira de produção, na PPF como envoltória, e no problema de eficiência produtiva.
- **Cap. 13 §13.4 — The Efficiency of Perfect Competition (with production).** É a versão com firmas do 1º TBE: enunciado, intuição, hipóteses.
- **Cap. 13 §13.5 — Departures from the Competitive Assumption** — leitura panorâmica; aprofundamento na Aula 7.
- **Pular** §13.6+ (existence via Brouwer) — vai para Aula 6.

PDFs acessados via `MPE.openMaterial('nicholson-snyder-12e-cap09.pdf', this)` e `MPE.openMaterial('nicholson-snyder-12e-cap13.pdf', this)`.

---

## Seção 3 — Conceitual 1: Conjunto de produção, função de produção, PPF

### Conjunto de produção

Convenção de sinais (canônica em N&S e MWG): $y \in \mathbb{R}^L$ é um **vetor de produção** com $y_\ell > 0$ se $\ell$ é produto e $y_\ell < 0$ se $\ell$ é insumo. O **conjunto de produção** é

$$
Y \subseteq \mathbb{R}^L
$$

contendo todos os vetores $y$ tecnologicamente factíveis para a firma.

**Hipóteses canônicas (subset operativo da Aula 5):**

- **Possibilidade de inação:** $0 \in Y$ (firma pode não produzir).
- **Livre descarte:** $y \in Y$ e $y' \le y$ ⇒ $y' \in Y$ (pode-se desperdiçar insumo ou produto).
- **Não-livre-almoço:** $Y \cap \mathbb{R}^L_+ = \{0\}$ (não há produto sem insumo).
- **Fechamento:** $Y$ é fechado (limite de processos factíveis é factível).
- **Convexidade:** $Y$ é convexo (combinação de processos factíveis é factível). É a hipótese-chave para 2º TBE com produção.

**Não-canônicas (citamos brevemente):**
- **Irreversibilidade:** $y \in Y$ e $y \neq 0$ ⇒ $-y \notin Y$ (não há "desproduzir").
- **Retornos não-crescentes / constantes:** $y \in Y$, $\alpha \in [0, 1]$ ⇒ $\alpha y \in Y$ / $\alpha y \in Y$ para todo $\alpha \ge 0$.

### Função de produção como caso particular

Quando há **um único produto** $q$ e $k$ insumos $z = (z_1, \ldots, z_k)$, podemos descrever $Y$ via função de produção $f: \mathbb{R}^k_+ \to \mathbb{R}_+$:

$$
Y = \{(-z, q) \in \mathbb{R}^{k+1} : z \ge 0,\; 0 \le q \le f(z)\}.
$$

**Hipóteses sobre $f$:**

- $f(0) = 0$ (não-livre-almoço).
- $f$ contínua, monotônica e (geralmente) **côncava** (rendimentos não-crescentes; quase-concavidade entrega convexidade do conjunto superior, suficiente para o que nos interessa).

**Maximização de lucro.** Dados preços $(w, p)$ ($w$ vetor de salários para insumos, $p$ preço do produto), a firma resolve

$$
\max_{z \ge 0} \;\; p\, f(z) - w\cdot z.
$$

CPO interior: $p\cdot \partial f/\partial z_\ell = w_\ell$ — produtividade marginal em valor iguala preço do insumo.

### Fronteira de possibilidades de produção (PPF)

Em economia com **dois produtos** ($1$ e $2$) e fatores fixos no agregado, definimos a PPF como o lugar geométrico dos pares $(q_1, q_2)$ alcançáveis quando alocamos os fatores eficientemente entre as duas funções de produção.

**Construção em $2 \times 2$ (exemplo canônico).** Seja $\bar L$ a oferta total de trabalho (único fator). Funções de produção:

$$
q_1 = f_1(L_1) = \sqrt{L_1}, \qquad q_2 = f_2(L_2) = \sqrt{L_2}.
$$

Restrição: $L_1 + L_2 = \bar L$. Substituindo $L_\ell = q_\ell^2$:

$$
q_1^2 + q_2^2 = \bar L.
$$

A PPF é o **arco do círculo** de raio $\sqrt{\bar L}$ no quadrante positivo. **Côncava** (do lado de fora) — refletindo rendimentos decrescentes em cada setor.

### Taxa marginal de transformação (TMT)

A **TMT entre o bem 1 e o bem 2** é a inclinação (em valor absoluto) da PPF:

$$
\text{TMT}_{12}(q_1, q_2) \equiv -\frac{dq_2}{dq_1}\bigg|_{\text{PPF}}.
$$

**Interpretação:** quantas unidades de bem 2 a economia desiste para produzir 1 unidade extra de bem 1, mantendo eficiência produtiva.

**Caracterização via produtividades marginais.** Da identidade $L_1 = f_1^{-1}(q_1)$, $L_2 = \bar L - L_1$, $q_2 = f_2(L_2)$:

$$
\text{TMT}_{12} = \frac{dL_1/dq_1}{dL_2/dq_2}\cdot 1 = \frac{1/(\partial f_1/\partial L_1)}{1/(\partial f_2/\partial L_2)} = \frac{\partial f_2/\partial L_2}{\partial f_1/\partial L_1} = \frac{\text{PMa}_L^2}{\text{PMa}_L^1}.
$$

Ou equivalentemente, da CPO da firma sob preços $(p_1, p_2, w)$ e mobilidade do fator $L$:

$$
p_1\cdot \text{PMa}_L^1 = w = p_2\cdot \text{PMa}_L^2 \implies \text{TMT}_{12} = \frac{\text{PMa}_L^2}{\text{PMa}_L^1} = \frac{p_1}{p_2}.
$$

**Eficiência produtiva ⇔ TMT igual à razão de preços** — produtor aloca fator marginal exatamente até onde o valor marginal se equipara nos dois setores.

### Micro-checkpoints

**Q1 (s3q1).** No exemplo canônico $f_1(L_1) = \sqrt{L_1}$, $f_2(L_2) = \sqrt{L_2}$, $\bar L = 16$, em $q_1 = 2$ a TMT é:
- (a) $\text{TMT} = 1$.
- (b) $\text{TMT} = 2$.
- (c) $\text{TMT} = q_2/q_1$ — calculando, em $q_1 = 2 \implies L_1 = 4 \implies L_2 = 12 \implies q_2 = \sqrt{12} = 2\sqrt{3}$, $\text{TMT} = q_2/q_1 = \sqrt{3} \approx 1{,}73$. **← CORRETA**
- (d) $\text{TMT} = 0$ — fronteira plana.

**Q2 (s3q2).** Hipótese **canônica** sobre $Y$ usada para o **2º TBE com produção**:
- (a) Livre descarte.
- (b) Possibilidade de inação.
- (c) Convexidade de $Y$ (e do agregado $Y = \sum_j Y^j$). **← CORRETA**
- (d) Irreversibilidade.

---

## Seção 4 — Conceitual 2: Robinson Crusoe e equilíbrio competitivo

### Setup do modelo

Robinson Crusoe é a economia mais simples com produção. **Um único agente** que é **simultaneamente consumidor e proprietário da firma**. **Dois bens:** trabalho/lazer ($L$, ou tempo livre $\ell = \bar L - L$) e bem de consumo ($q$).

**Tecnologia:** firma usa trabalho $L$ e produz $q = f(L)$, com $f$ côncava, $f(0) = 0$, $f'(L) > 0$.

**Preferências:** consumidor tem utilidade $u(q, \ell)$ sobre consumo e lazer, monotônica e quase-côncava.

**Dotação total de tempo:** $\bar L$.

### Solução do planejador (eficiência sem mercado)

O planejador resolve

$$
\max_{q, L \in [0, \bar L]} u(q, \bar L - L) \;\;\text{s.a.}\;\; q = f(L).
$$

Substituindo $q = f(L)$:

$$
\max_{L \in [0, \bar L]} u(f(L), \bar L - L).
$$

CPO interior:

$$
\frac{\partial u}{\partial q}\cdot f'(L) - \frac{\partial u}{\partial \ell} = 0 \implies \underbrace{\frac{\partial u/\partial \ell}{\partial u/\partial q}}_{\text{TMS}_{\ell, q}} = f'(L) = \underbrace{\text{PMa}_L}_{\text{TMT}_{L, q}}.
$$

**Eficiência ⇔ TMS = TMT.** Trocando uma unidade marginal de lazer por consumo, a economia toda é indiferente.

### Equilíbrio competitivo descentralizado

Agora introduzimos preços $(p, w)$ — $p$ é o preço do bem de consumo, $w$ é o salário. Robinson opera na cabeça com **dois chapéus separados**:

**(1) Como dono da firma**, ele resolve a **maximização de lucro**:

$$
\pi(p, w) = \max_{L \ge 0} p\, f(L) - w\, L.
$$

CPO: $p\, f'(L^*) = w \implies f'(L^*) = w/p$. A **demanda de trabalho** $L^d(p, w)$ e a **oferta de produto** $q^s(p, w) = f(L^d)$ saem disso. Lucro $\pi^* = p\, q^s - w\, L^d$.

**(2) Como consumidor**, com renda total $m = w\, \bar L + \pi^*$ (salário pelas $\bar L$ horas + lucro como dividendo):

$$
\max_{q, \ell} u(q, \ell) \;\;\text{s.a.}\;\; p\, q + w\, \ell \le w\, \bar L + \pi^*.
$$

CPO interior: $\partial u/\partial q$ e $\partial u/\partial \ell$ proporcionais a $(p, w)$:

$$
\frac{\partial u/\partial \ell}{\partial u/\partial q} = \frac{w}{p} = \text{TMS}_{\ell, q}.
$$

### Equilíbrio: condição de fechamento

**Definição.** Um EC de Robinson Crusoe é um trio $(p^*, w^*, q^*, L^*)$ tal que:

1. Firma maximiza lucro a $(p^*, w^*)$: $f'(L^*) = w^*/p^*$.
2. Consumidor maximiza utilidade dada renda $m^* = w^*\, \bar L + \pi^*$: $\text{TMS}^* = w^*/p^*$.
3. **Mercado de trabalho fecha:** $L^* = \bar L - \ell^*$, com $\ell^*$ = demanda de lazer.
4. **Mercado de bem fecha:** $q^* = f(L^*)$.

### Igualdade canônica em equilíbrio

Combinando (1) e (2): $\text{TMS}^* = w^*/p^* = f'(L^*) = \text{TMT}^*$. Em equilíbrio:

$$
\boxed{\;\text{TMS}_{\ell, q} \;=\; w/p \;=\; \text{TMT}_{L, q}\;}
$$

**Eficiência alocativa (TMS = preço relativo) e eficiência produtiva (TMT = preço relativo) acontecem simultaneamente.** Mesmo resultado do planejador. Mercado descentralizado replica a solução central — esse é o **1º TBE com produção** no caso mais simples.

### Cálculo numérico — Robinson Crusoe canônico

**Setup.** $u(q, \ell) = q^{1/2}\ell^{1/2}$ (CD); $f(L) = \sqrt{L}$ (rendimentos decrescentes); $\bar L = 16$.

**Solução do planejador.** Substituir $q = \sqrt{L}$, $\ell = 16 - L$:

$$
\max_L L^{1/4}(16 - L)^{1/2}.
$$

Diferenciar e igualar a zero: $\frac{1}{4 L^{3/4}}(16-L)^{1/2} - \frac{L^{1/4}}{2(16-L)^{1/2}} = 0$. Multiplicar por $4 L^{3/4}(16-L)^{1/2}$:

$$
(16-L) - 2 L = 0 \implies L^* = 16/3 \approx 5{,}33.
$$

Logo $\ell^* = 32/3 \approx 10{,}67$, $q^* = \sqrt{16/3} = 4/\sqrt{3} \approx 2{,}31$.

**Verificação de eficiência.** $\text{TMS}_{\ell,q} = q/\ell = (4/\sqrt 3)/(32/3) = (4/\sqrt 3)(3/32) = 3/(8\sqrt 3) = \sqrt{3}/8$. $\text{TMT}_{L,q} = f'(L) = 1/(2\sqrt{L}) = 1/(2\sqrt{16/3}) = \sqrt{3}/8$. **TMS = TMT.** ✓

**Equilíbrio competitivo.** Com $p = 1$ numerário: $w^* = f'(L^*) = \sqrt{3}/8$. Lucro: $\pi^* = p\, q^* - w^*\, L^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3} = 2\sqrt{3}/3$. Renda total: $m^* = w^*\, \bar L + \pi^* = (\sqrt{3}/8)\cdot 16 + 2\sqrt{3}/3 = 2\sqrt{3} + 2\sqrt{3}/3 = 8\sqrt{3}/3$. Demanda CD: $q^* = m^*/(2 p) = 4\sqrt{3}/3 = 4/\sqrt{3}$ ✓; $\ell^* = m^*/(2 w^*) = (8\sqrt{3}/3)/(2\cdot \sqrt{3}/8) = (8\sqrt{3}/3)(8/(2\sqrt{3})) = 32/3$ ✓.

Mercado de trabalho fecha: $L^* = \bar L - \ell^* = 16 - 32/3 = 16/3$ ✓.
Mercado de bem fecha: $q^* = f(L^*) = \sqrt{16/3} = 4/\sqrt 3$ ✓.

**Conclusão.** EC e ótimo de planejador coincidem — versão Robinson do 1º TBE.

### Micro-checkpoints

**Q1 (s4q1).** Em equilíbrio competitivo de Robinson Crusoe, a igualdade canônica é:
- (a) $\text{TMS} = \text{PMa}_L$ apenas.
- (b) $\text{TMS} = \text{TMT} = w/p$. **← CORRETA**
- (c) $\text{TMS} = 0$ (sem trabalho).
- (d) $w = p$ obrigatoriamente.

**Q2 (s4q2).** No exemplo canônico $u = q^{1/2}\ell^{1/2}$, $f(L) = \sqrt L$, $\bar L = 16$, o trabalho ofertado em equilíbrio é:
- (a) $L^* = 16$ (todo o tempo).
- (b) $L^* = 8$ (metade).
- (c) $L^* = 16/3 \approx 5{,}33$. **← CORRETA**
- (d) $L^* = 0$ (lazer puro).

---

## Seção 5 — Conceitual 3: EG com firmas + 1º/2º TBE com produção

### Generalização: $I$ consumidores, $J$ firmas, $L$ bens

**Consumidores** $i = 1, \ldots, I$: preferências $\succeq^i$ representáveis por $u^i$, dotação $\omega^i \in \mathbb{R}^L_+$, **cotas de propriedade** $\theta^{ij} \ge 0$ com $\sum_i \theta^{ij} = 1$ para cada firma $j$ (consumidor $i$ recebe fração $\theta^{ij}$ dos lucros da firma $j$).

**Firmas** $j = 1, \ldots, J$: conjunto de produção $Y^j \subseteq \mathbb{R}^L$, satisfazendo as hipóteses canônicas (incluindo convexidade de cada $Y^j$).

### Maximização de lucro

Cada firma resolve:

$$
\pi^j(p) = \max_{y^j \in Y^j} p\cdot y^j.
$$

Solução $y^j(p) \in \arg\max\{p\cdot y : y \in Y^j\}$ (pode ser correspondência se $Y^j$ não estritamente convexo). Lucro $\pi^j(p) = p\cdot y^j(p)$.

### Maximização de utilidade

Cada consumidor $i$ tem renda $m^i(p) = p\cdot \omega^i + \sum_j \theta^{ij}\, \pi^j(p)$. UMP:

$$
x^i(p) \in \arg\max_{x \ge 0} u^i(x) \;\;\text{s.a.}\;\; p\cdot x \le m^i(p).
$$

### Equilíbrio competitivo com produção

Um EC com produção é uma terna $(p^*, x^*, y^*)$ onde:

1. Cada $y^{*j} \in \arg\max\{p^*\cdot y : y \in Y^j\}$ — firmas maximizam lucro.
2. Cada $x^{*i}$ resolve UMP em $p^*$ com renda $m^{*i} = p^*\cdot \omega^i + \sum_j \theta^{ij} p^*\cdot y^{*j}$.
3. **Mercados fecham:**

$$
\sum_i x^{*i} = \sum_i \omega^i + \sum_j y^{*j}.
$$

(Em forma de excesso de demanda agregado: $z(p^*) = \sum_i x^i(p^*) - \sum_i \omega^i - \sum_j y^j(p^*) = 0$.)

### Lei de Walras estendida

Por LNS dos consumidores, cada UMP exausta orçamento: $p\cdot x^i = p\cdot \omega^i + \sum_j \theta^{ij}\, \pi^j(p)$. Somando sobre $i$, e usando $\sum_i \theta^{ij} = 1$:

$$
p\cdot \sum_i x^i = p\cdot \sum_i \omega^i + p\cdot \sum_j y^j(p) \implies p\cdot \left(\sum_i x^i - \sum_i \omega^i - \sum_j y^j\right) = 0.
$$

**Lei de Walras com produção:** $p\cdot z(p) = 0$ identicamente. Mesma estrutura da Aula 4 — em $L$ bens, basta zerar $L - 1$ mercados.

### 1º Teorema do Bem-Estar (com produção)

**Enunciado.** Em economia com produção, sob LNS para todos os consumidores, todo equilíbrio competitivo $(p^*, x^*, y^*)$ é Pareto-eficiente.

**Esboço da prova.** Por contradição. Suponha que $(x^*, y^*)$ NÃO é Pareto. Então existe alocação viável $(\tilde x, \tilde y)$ com $\sum_i \tilde x^i = \sum_i \omega^i + \sum_j \tilde y^j$, $u^i(\tilde x^i) \ge u^i(x^{*i})$ para todo $i$, e $u^j(\tilde x^j) > u^j(x^{*j})$ para algum $j$ (consumidor).

**Passo 1 (consumidor estritamente melhor).** Para esse $j$ (consumidor), $p^*\cdot \tilde x^j > m^{*j}$. Caso contrário, $\tilde x^j$ era viável e $x^{*j}$ não maximizava.

**Passo 2 (LNS, demais consumidores).** Para os outros $i$, $p^*\cdot \tilde x^i \ge m^{*i}$ (mesmo argumento da Aula 4 com LNS).

**Passo 3 (firmas).** Cada $\tilde y^j$ é viável em $Y^j$, então $p^*\cdot \tilde y^j \le \pi^{*j}(p^*) = p^*\cdot y^{*j}$ (definição de $y^{*j}$ como maximizador).

**Passo 4 (somar).** $\sum_i p^*\cdot \tilde x^i > \sum_i m^{*i} = \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot y^{*j} \ge \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot \tilde y^j$. Mas viabilidade de $\tilde x$ dá $\sum_i p^*\cdot \tilde x^i = \sum_i p^*\cdot \omega^i + \sum_j p^*\cdot \tilde y^j$. **Contradição.** $\blacksquare$

**O que muda em relação à Aula 4:** entra o **passo 3** (maximização de lucro das firmas). LNS dos consumidores + maximização de lucro das firmas = combo mínimo para 1º TBE com produção.

### 2º Teorema do Bem-Estar (com produção) — anúncio

**Enunciado intuitivo.** Sob LNS + **convexidade dos $Y^j$** + convexidade das preferências, toda alocação Pareto-eficiente $(x^*, y^*)$ pode ser implementada como EC após **redistribuição lump-sum** das dotações iniciais.

**Hipótese-chave: convexidade do $Y$ agregado** $Y = \sum_j Y^j$. Isso é a versão produção do Hahn-Banach — separação por hiperplano-preço requer convexidade.

**Onde quebra (Aula 7 retoma):**
- Retornos crescentes em uma firma ⇒ $Y^j$ não-convexo ⇒ $Y$ agregado pode ser não-convexo.
- Externalidades ⇒ $Y^j$ depende de $y^k$ de outras firmas, quebrando estrutura.

**Atenção pedagógica:** o 2º TBE com produção não vai ser provado nesta aula. Apenas anunciado. A prova rigorosa via Hahn-Banach é Aula 6.

### Eficiência produtiva (TMT = TMS) em $2 \times 2$

Em economia com $I$ consumidores idênticos (ou um "consumidor representativo") e dois bens produzíveis, a alocação Pareto-eficiente interior caracteriza-se por:

$$
\text{TMS}_{12}^i(x^i) = \frac{p_1}{p_2} = \text{TMT}_{12}(q_1, q_2) \quad\forall i.
$$

**Geometricamente:** PPF da economia tangencia a curva de indiferença social no ponto de produção/consumo eficiente, com inclinação comum = preço relativo. É a versão produção da tangência $\text{TMS}^A = \text{TMS}^B$ da Aula 4.

### Micro-checkpoints

**Q1 (s5q1).** A hipótese **adicional** que aparece no 1º TBE com produção (em comparação com o 1º TBE da Aula 4 em troca pura) é:
- (a) Convexidade das preferências.
- (b) Maximização de lucro pelas firmas. **← CORRETA**
- (c) LNS para as firmas.
- (d) Homotetia das tecnologias.

**Q2 (s5q2).** Para o 2º TBE com produção, a hipótese-chave que substitui "convexidade das preferências" por algo mais é:
- (a) Convexidade do conjunto de produção agregado $Y = \sum_j Y^j$ (e das preferências de consumidores). **← CORRETA**
- (b) Apenas convexidade das preferências.
- (c) LNS para firmas.
- (d) Continuidade de $f$ apenas.

**Q3 (s5q3).** No exemplo de Robinson Crusoe com $u = q^{1/2}\ell^{1/2}$, $f(L) = \sqrt L$, $\bar L = 16$, o salário relativo de equilíbrio (com $p = 1$ numerário) é:
- (a) $w^* = 1$ (igual ao preço do bem).
- (b) $w^* = \sqrt{3}/8 \approx 0{,}217$. **← CORRETA**
- (c) $w^* = 16$ (oferta total de trabalho).
- (d) $w^* = 0$ (trabalho gratuito em equilíbrio).

---

## Seção 6 — Exercícios de papel

Análogos a N&S 12e §9.* (produção) e §13.5 (EG com produção).

**Exercício proposto 1 (N&S 9.* análogo) — obrigatório.** Considere $f(L, K) = L^{1/3} K^{2/3}$ (CD na produção). (a) Calcule TMST entre $L$ e $K$ no ponto $(L, K) = (8, 8)$. (b) Mostre que $f$ apresenta retornos constantes de escala. (c) Suponha preço do produto $p = 1$, salário $w = 1$, aluguel de capital $r = 2$. Encontre a demanda condicional de fatores que minimiza custo para produzir $q = 4$.

**Exercício proposto 2 (N&S 13.5 / Robinson Crusoe) — obrigatório.** Robinson Crusoe com $u(q, \ell) = q^{2/3}\ell^{1/3}$ (mais "viciado em consumo" que CD simétrica), $f(L) = L^{1/2}$, $\bar L = 9$. (a) Resolva o problema do planejador: encontre $L^*, q^*, \ell^*$. (b) Encontre o EC com $p = 1$ numerário: calcule $w^*$ e $\pi^*$. (c) Verifique numericamente $\text{TMS}^* = \text{TMT}^* = w^*/p^*$.

**Exercício proposto 3 (bônus) — opcional.** Para a economia do Ex 2, mostre que a alocação $(L^*, q^*, \ell^*)$ é Pareto-eficiente verificando a igualdade $\text{TMS}^* = \text{TMT}^*$ e argumentando por contradição: se houvesse $(\tilde L, \tilde q, \tilde \ell)$ Pareto-superior, então o consumidor escolheria $\tilde \ell$ em vez de $\ell^*$, contradizendo UMP.

---

## Seção 7 — Checkpoint final (3 questões de síntese)

**Q1 (síntese — PPF e TMT).** A inclinação (em valor absoluto) da PPF entre dois bens é igual a:
- (a) Razão de preços absolutos $p_1/p_2$.
- (b) Razão de produtividades marginais do fator $\text{PMa}^2/\text{PMa}^1$ (igual à razão de preços em equilíbrio competitivo). **← CORRETA**
- (c) Razão de quantidades $q_1/q_2$.
- (d) $1$ sempre (PPF linear).

**Q2 (síntese — Robinson Crusoe).** A condição canônica de equilíbrio competitivo no modelo Robinson Crusoe interior é:
- (a) $\text{TMS} = 0$ (sem trabalho em equilíbrio).
- (b) $\text{TMS}_{\ell, q} = \text{TMT}_{L, q} = w/p$ — alocação eficiente em todos os mercados. **← CORRETA**
- (c) $w = p$ obrigatoriamente.
- (d) Lucro $\pi^* = 0$ por construção.

**Q3 (síntese — 1º TBE com produção).** O 1º TBE com produção exige:
- (a) Apenas LNS dos consumidores (igual à Aula 4).
- (b) LNS dos consumidores + maximização de lucro pelas firmas (combo mínimo). **← CORRETA**
- (c) Convexidade do conjunto de produção (essa é hipótese do 2º TBE).
- (d) Existência de leiloeiro implícito.

---

## Seção 8 — Reflexão qualitativa

Dois campos abertos obrigatórios:

1. Que conceito ainda está **nebuloso** (ex.: "por que $\text{TMS} = \text{TMT}$ é eficiência?", "como ler PPF côncava intuitivamente?")?
2. Qual ponto você quer ver **discutido em sala** (ex.: "Robinson Crusoe com 2 firmas?", "exemplos brasileiros de eficiência produtiva quebrada por subsídio")?

---

## Calibre — checagem

- **N&S 12e:** Cap. 9 (produção, isoquantas, RTS) + §13.3 (modelo matemático com produção) + §13.4 (EC com firmas) + §13.5 (departures). Piso obrigatório.
- **J-R 3e:** §5.4 (EG com produção, 1º/2º TBE com firma). Sem entrar em existência (Kakutani, §5.5).
- **MWG:** Cap. 5 (firma) + §16.D-E (EG com produção). Citado cirurgicamente apenas se aluno mais maduro perguntar.
- **ZaE:** Cap. 10 (produção) + Cap. 12 (firma). Cap. 14 (EG) já visitado na pré-aula 4 — agora retomado com produção.

Calibre da pré-aula: **definicional + 1 cálculo numérico Robinson + intuição do 1º TBE com firma**. Não exigir prova rigorosa do 2º TBE (essa é da Aula 6).
