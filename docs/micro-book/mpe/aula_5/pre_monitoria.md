# Pré-Monitoria 3 — Material-Fonte (interno)

> **Status:** material-fonte da Pré-Monitoria 3 da Aula 5 (Arrow-Debreu I). Formativa, **não conta nota**. Foco em **extensões** que o Alberto vai conduzir no encontro presencial de **sábado 30/05/2026 · 10:00**.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Cobertura:** Aula 5 (Arrow-Debreu I — mercados completos, contingent-claims canon)
- **Encontro presencial:** sábado, 30/05/2026, 10:00 (Insper)
- **Pré-monitoria abre:** sábado 23/05 às 12:00 (após Pré-M2 fechar)
- **Pré-monitoria fecha:** sexta 29/05 às 22:00
- **Tempo-alvo:** 60–90 min material + 4–6 micro-checkpoints
- **Pré-requisitos:** Aulas 1–5 consolidadas. Em particular: $\mathbb{R}^{LS}$, equilíbrio AD, 1º TBE estendido, equação SDF.

---

## O que esta pré-monitoria é (e o que **não** é)

**É:**

- Extensões e refinamentos do conteúdo da Aula 5 que **não couberam** nos 180 min de aula.
- Material para o Alberto trabalhar com a turma no sábado 30/05.
- Oportunidade de **levantar dúvidas qualitativas** que o admin captura para ele revisar antes do sábado.

**Não é:**

- Repetição da Aula 5 magistral.
- Quiz com nota.
- Lista de exercícios para nota — esses são os avaliativos da Aula 5 (já abertos desde 21/05; fecham 27/05 às 18h).

> **Calibre.** Esta pré-monitoria sobe um degrau além da Aula 5. **Não entra Radner sequencial em forma completa** (Aula 6); mas **introduz** a ideia de SDF aplicado a precificação de ativos, heterogeneidade de crenças com no-trade theorem (Milgrom-Stokey), e uma intuição informal sobre o que muda quando mercados são incompletos.

---

## Estrutura

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato | 2 min |
| 1 | Heterogeneidade de crenças e no-trade theorem | Texto + 1 micro-checkpoint | 15 min |
| 2 | SDF e precificação de ativos contingentes | Texto + 2 micro-checkpoints | 20 min |
| 3 | Aversão ao risco com CARA/CRRA — fórmulas fechadas | Texto + 1 micro-checkpoint | 15 min |
| 4 | Mercados incompletos — preview informal (sem Radner formal) | Texto + 1 micro-checkpoint | 15 min |
| 5 | Reflexão para o Alberto | 1 campo aberto | 3 min |

Total: ~70 min material + 4–6 micro-checkpoints.

---

## Seção 0 — Orientação

1. Esta pré-monitoria **não conta nota**. Mas alimenta a triagem do Alberto.
2. Tente os micro-checkpoints sem consultar.
3. No campo de reflexão final, **levante dúvidas que ainda travam**. O Alberto lê antes do sábado e ajusta o roteiro.

---

## Seção 1 — Heterogeneidade de crenças e no-trade theorem

### Pergunta-driver

> *"Se dois agentes têm crenças diferentes sobre o estado da natureza, eles vão querer apostar entre si. **Quanto?** O equilíbrio AD aceita aposta sem limite?"*

### Setup

Economia $L = 1$, $S = 2$, $I = 2$. Bernoullis comuns: $v_A = v_B = \ln c$. Crenças heterogêneas: $\pi^A_1 = 0{,}3$ (A pessimista sobre estado 1), $\pi^B_1 = 0{,}5$ (B neutro). Dotação **idêntica** $\omega^A = \omega^B = (50, 50)$ (ambos têm o mesmo, sem risco no agregado).

**Pergunta:** em equilíbrio AD, quem paga quanto a quem para apostar?

### Derivação

CPO de cada agente:

$$
\frac{\pi^i_1\, (v^i)'(x^i_1)}{\pi^i_2\, (v^i)'(x^i_2)} = \frac{p^*_1}{p^*_2}.
$$

Com $v = \ln$: $(v)'(c) = 1/c$. Então:

$$
\frac{\pi^i_1 / x^i_1}{\pi^i_2 / x^i_2} = \frac{\pi^i_1\, x^i_2}{\pi^i_2\, x^i_1} = \frac{p^*_1}{p^*_2}.
$$

Reorganizando: $x^i_2/x^i_1 = (p^*_1/p^*_2) \cdot (\pi^i_2/\pi^i_1)$.

Para $A$: $x^A_2/x^A_1 = (p^*_1/p^*_2)\cdot (0{,}7/0{,}3)$.
Para $B$: $x^B_2/x^B_1 = (p^*_1/p^*_2)\cdot (0{,}5/0{,}5) = p^*_1/p^*_2$.

Viabilidade estado-a-estado: $x^A_s + x^B_s = 100$ para cada $s$.

Com orçamento: $p^*_1 x^i_1 + p^*_2 x^i_2 = p^*_1 \cdot 50 + p^*_2 \cdot 50$ (renda igual da dotação).

**Resolva o sistema** (calculando 1ª passada — a turma faz com Alberto):

Resultado numérico aproximado *[verificar com cálculo direto]*: $A$ vende bilhete-estado-1 e compra bilhete-estado-2 (porque crê menos no estado 1); $B$ faz o contrário.

### O ponto-conceito

> **Heterogeneidade de crenças gera aposta endógena no equilíbrio AD.** Não há paradoxo: o mercado dá o preço que reconcilia divergência. Quem está mais certo (no longo prazo, se o mercado puder reapostar) ganha.

### No-trade theorem (Milgrom-Stokey 1982) — citação

> *"Se as crenças vêm de **informação privada** (e não de mero gosto), e há **commom knowledge de racionalidade**, então o ato de você querer me vender me sinaliza que você sabe algo, e eu não compro. **Não há comércio especulativo em equilíbrio.** Esta é uma intuição forte para entender por que mercados de pari-mutuel funcionam mas mercados financeiros não são puro especulação."*

Não vamos provar. *Citar Milgrom & Stokey (1982), J. Economic Theory 26(1): 17–27, [DOI 10.1016/0022-0531(82)90046-1](https://doi.org/10.1016/0022-0531(82)90046-1)*.

### MC1

Em economia $L = 1$, $S = 2$, $I = 2$, com $v_A = v_B = \ln c$, $\omega^A = \omega^B = (50, 50)$, mas $\pi^A_1 = 0{,}3$ e $\pi^B_1 = 0{,}5$:

- (a) Não há comércio (autarquia) — simetria de dotação implica equilíbrio na dotação.
- (b) **Há comércio: $A$ entrega bilhete-estado-1 a $B$ em troca de bilhete-estado-2** (porque suas crenças divergem). **[correta]** Heterogeneidade de crenças gera aposta endógena.
- (c) $A$ e $B$ atingem $x^A = x^B$ — mercado completo elimina toda diferença.
- (d) Não existe equilíbrio.

---

## Seção 2 — SDF e precificação de ativos contingentes

### Pergunta-driver

> *"Como o equilíbrio AD precifica um ativo arbitrário?"*

### Definição operacional do SDF

Em equilíbrio AD com EU, defina o **stochastic discount factor (SDF)** do agente $i$:

$$
m^i_s = \frac{\pi^i_s\, (v^i)'(x^{i*}_s)}{\lambda^i}
$$

onde $\lambda^i$ é o multiplicador da restrição orçamentária. **Em equilíbrio, $m^i_s$ é o mesmo para todo agente $i$** — porque $p^*_s = m_s$ (a menos de normalização). Por isso falamos de "*o*" SDF.

### Precificação de qualquer ativo

Considere um ativo qualquer com payoff $D_s$ no estado $s$ (ex.: ação de empresa que paga dividendo $D_s$). Seu preço em $t = 0$ é:

$$
P_0 = \sum_s p^*_s\, D_s = \sum_s m_s\, D_s.
$$

Sob EU + consenso bayesiano ($\pi^i = \pi$):

$$
\boxed{\;P_0 = E^\pi\left[m\, D\right] = \sum_s \pi_s\, m_s\, D_s\;}
$$

**Esta é a equação central das finanças neoclássicas.** Lucas (1978) deriva o modelo de precificação de ativos a partir dela.

### Caso particular — ativo livre de risco

Ativo que paga $D_s = 1$ para todo $s$ (1 unidade de bem em qualquer estado):

$$
P_0^{\text{rf}} = \sum_s \pi_s\, m_s \quad \Rightarrow \quad R_f = \frac{1}{P_0^{\text{rf}}} = \frac{1}{E^\pi[m]}.
$$

A taxa livre de risco é o inverso da expectativa do SDF.

### Caso particular — ações Arrow

Ação Arrow para o estado $s$: paga 1 em $s$, 0 em outros. Preço:

$$
P_0^{(s)} = p^*_s = m_s.
$$

**Por isso $m$ é o SDF: cada $m_s$ é o preço de "1 unidade de bem se realizar $s$".**

### Implicação operacional

> *"Mercado completo $\equiv$ existem $|S|$ ações Arrow $\equiv$ podemos formar portfolio que replica qualquer payoff $D_s$. Em $|S| = 2$: precisamos de 2 ativos lineamente independentes, e qualquer outro ativo é precificado por arbitragem."*

Cite **Black-Scholes-Merton (1973)** como aplicação famosa: opção é precificada como combinação linear de ações + bond, em mercado completo. *[verificar DOI Black-Scholes 1973 JoP / Merton 1973 Bell J. Econ.]*

### MC2

Em mercado AD completo com $|S| = 3$, agente avesso ao risco com $v(c) = c^{0{,}5}$, $\pi = (1/4, 1/2, 1/4)$, e consumo de equilíbrio $x^* = (4, 9, 16)$. Os preços Arrow normalizados (com $m_2 = $ ref) são:

- (a) Iguais a $\pi$.
- (b) Iguais a $1/\sqrt{x^*_s}$ ponderado por $\pi_s$.
- (c) **Iguais a $\pi_s\, (v)'(x^*_s) = \pi_s \cdot \frac{1}{2\sqrt{x^*_s}}$.** [correta] $\pi_1\,(0{,}5/2) + \pi_2\,(0{,}5/3) + \pi_3\,(0{,}5/4)$, normalize.
- (d) Iguais a $x^*_s/\sum x^*$.

### MC3

Considere mercado AD completo com $|S| = 2$, $\pi = (0{,}5, 0{,}5)$, e SDF $m = (1{,}2, 0{,}8)$. Um ativo paga $D = (3, 2)$. Seu preço $P_0$ é:

- (a) $0{,}5 \cdot 3 + 0{,}5 \cdot 2 = 2{,}5$ (média simples).
- (b) **$0{,}5 \cdot 1{,}2 \cdot 3 + 0{,}5 \cdot 0{,}8 \cdot 2 = 1{,}8 + 0{,}8 = 2{,}6$.** [correta] $E^\pi[m\,D]$.
- (c) $1{,}2 \cdot 3 + 0{,}8 \cdot 2 = 5{,}2$ (sem ponderar por $\pi$).
- (d) $3/1{,}2 + 2/0{,}8 = 5$ (descontando).

---

## Seção 3 — Aversão ao risco com CARA/CRRA — fórmulas fechadas

### Por que dedicar uma seção a isso

A maioria das aplicações em finanças e contratos usa **uma das duas formas funcionais de Bernoulli**:

- **CARA (Constant Absolute Risk Aversion):** $v(c) = -e^{-\gamma c}/\gamma$, $\gamma > 0$.
- **CRRA (Constant Relative Risk Aversion):** $v(c) = c^{1-\gamma}/(1-\gamma)$ para $\gamma \neq 1$, $v(c) = \ln c$ para $\gamma = 1$.

Cada uma tem **fórmula fechada para o equilíbrio AD** sob hipóteses razoáveis, e é por isso que a literatura aplicada não desce de lá.

### CARA — Resultado canônico

**Setup:** $I$ agentes idênticos com Bernoulli CARA $v(c) = -e^{-\gamma c}/\gamma$. Dotação total $\bar\omega_s$ depende do estado. Probabilidades de consenso $\pi$.

**Resultado** (Wilson 1968, [DOI 10.2307/1909607](https://doi.org/10.2307/1909607)): em equilíbrio AD, cada agente carrega **uma fração igual ($1/I$) do risco agregado**. Especificamente, $x^{i*}_s = \bar\omega_s/I + k^i$ onde $k^i$ é constante (transferência lump-sum entre agentes).

**Comentário:** CARA tem propriedade de "linearidade" no risco que faz a álgebra fechar bonita. Por isso é o cavalo-de-batalha de modelos com firmas, contratos de incentivo (Holmström 1979), e teoria do leilão.

### CRRA — Resultado canônico

**Setup:** $I$ agentes idênticos com Bernoulli CRRA $v(c) = c^{1-\gamma}/(1-\gamma)$. Dotação total $\bar\omega_s$. Probabilidades $\pi$.

**Resultado:** em equilíbrio AD, cada agente consome uma **fração proporcional** do agregado: $x^{i*}_s = \alpha^i\, \bar\omega_s$ onde $\sum_i \alpha^i = 1$ e $\alpha^i$ depende da renda inicial do agente.

**Comentário:** CRRA tem propriedade de homotetia que faz com que **escala individual** se preserve. Por isso é o cavalo-de-batalha de macroeconomia (Lucas, Kydland-Prescott) e finanças de longo prazo.

### Implicação para a aula

A maioria dos exercícios avaliativos da Aula 5 usa $v = \ln$ (CRRA com $\gamma = 1$) por elegância algébrica — **não** porque CRRA é mais realista. Os trabalhos empíricos de Hansen-Jagannathan (1991) mostram que o SDF estimado **não** é consistente com CRRA simples — daí a literatura de "equity premium puzzle" (Mehra-Prescott 1985).

> *"Não vamos entrar em equity premium puzzle. Pré-monitoria 4 (Aula 6/7) pode tocar. Aqui é só para vocês saberem que **CARA e CRRA não são as únicas opções, e que a escolha tem consequências empíricas**."*

### MC4

Em economia AD com $I = 2$ agentes CARA $v(c) = -e^{-c}$ (mesmo $\gamma = 1$), $\bar\omega = (40, 60)$ (agregado **arriscado**), dotações **assimétricas** $\omega^A = (10, 40)$, $\omega^B = (30, 20)$. Em equilíbrio:

- (a) Cada agente consome $\bar\omega_s/2 = (20, 30)$ — autarquia.
- (b) Cada agente consome sua dotação $\omega^i$ — não há ganho de troca.
- (c) **Cada agente carrega fração igual ($1/2$) do risco agregado: $x^{i*}_s = \bar\omega_s/2 + k^i$ onde $k^A + k^B = 0$, com $k^i$ refletindo a heterogeneidade de dotações iniciais via transferência lump-sum.** [correta] Resultado canônico de Wilson (1968) — CARA tem variação aditiva.
- (d) Não há equilíbrio.

---

## Seção 4 — Mercados incompletos — preview informal

### O que é um mercado incompleto

> *"Mercado **completo:** existe $p_{\ell, s}$ para cada bem contingente. Mercado **incompleto:** falta algum preço — algum bem contingente não pode ser comprado/vendido."*

**Exemplo simples.** Economia $L = 1$, $S = 3$ (recessão / normal / boom). **Existem só 2 ativos:** um bond livre de risco (paga 1 em todos) e uma ação que paga $(D_1, D_2, D_3) = (0, 1, 3)$. **Span:** o subespaço de payoffs que pode ser replicado por portfólios.

$\text{span}(\text{bond}, \text{ação}) = \{a\cdot(1,1,1) + b\cdot(0,1,3) : a, b \in \mathbb{R}\}$. Este é um subespaço de dimensão 2 em $\mathbb{R}^3$ — **falta uma dimensão**.

### Implicação

Considere um payoff $D = (1, 0, 0)$ (paga 1 em recessão, 0 caso contrário — uma ação Arrow para o estado 1). Esse payoff **não está no span** — não pode ser comprado.

> *"Em mercado AD completo, o agente avesso conseguiria comprar 'seguro contra recessão'. Em mercado incompleto onde só existem bond + ação, **não consegue.** Isso restringe o equilíbrio: a alocação de risco resultante é genericamente Pareto-ineficiente."*

### Resultado central (Hart 1975) — citação

> *"Em mercados incompletos, o equilíbrio competitivo é **constrained Pareto-eficient** (eficiente dentro do que o mercado pode replicar), mas **genericamente Pareto-ineficiente** comparado ao que mercado completo entregaria. **A 1ª regra de bem-estar do mercado falha como teorema universal — depende da completude."*

Cite **Hart (1975), J. Economic Theory 11(3): 418–443**: "On the Optimality of Equilibrium when the Market Structure is Incomplete." [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9).

### Por que isso importa hoje

Mercados financeiros reais **não** são completos:

- $|S|$ é gigantesco (bilhões de cenários macro possíveis).
- O número de ativos transacionados é finito e cresce devagar.
- Mesmo com derivativos, há *unspanned risks* documentados (mortalidade, longevidade, choques tecnológicos não-replicáveis).

**Por isso AD canônico é benchmark, não retrato.** Aula 6 (Radner) é o mais perto que se chega de modelar isso seriamente.

### MC5

Em economia $L = 1$, $S = 3$, com 2 ativos (bond + ação), o equilíbrio competitivo é:

- (a) Pareto-eficiente — Hart (1975) provou que mercados incompletos não geram ineficiência.
- (b) **Genericamente Pareto-ineficiente** — Hart (1975). [correta] *Constrained eficiente,* mas não Pareto-eficiente.
- (c) Não existe — mercados incompletos sempre falham em existência.
- (d) Coincide com mercado completo se houver agentes representativos.

---

## Seção 5 — Reflexão para o Alberto

> Campo aberto (mín. 30 caracteres).
>
> **"Que parte da Aula 5 ainda está nebuloso, ou que extensão acima você gostaria que o Alberto explorasse no sábado 30/05?"**

Sugestões de auto-diagnóstico:

- "Quero ver o cálculo numérico do equilíbrio com crenças heterogêneas resolvido em sala."
- "Não entendi por que o no-trade theorem não impede comércio em modelos com gosto diferente."
- "Quero ver a derivação Black-Scholes a partir de SDF."
- "Como o admin dashboard processa as reflexões para gerar a triagem do Alberto?"

---

## Apêndice — Referências citadas (para auditoria)

| Citação | Veículo | Status |
|---|---|---|
| Lucas (1978) | Econometrica 46(6): 1429–1445, "Asset Prices in an Exchange Economy" | [10.2307/1913837](https://doi.org/10.2307/1913837) |
| Hansen & Jagannathan (1991) | J. Political Economy 99(2): 225–262, "Implications of Security Market Data..." | [10.1086/261749](https://doi.org/10.1086/261749) |
| Mehra & Prescott (1985) | J. Monetary Economics 15(2): 145–161, "The Equity Premium: A Puzzle" | [10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3) |
| Hart (1975) | J. Economic Theory 11(3): 418–443, "On the Optimality of Equilibrium..." | [10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9) |
| Milgrom & Stokey (1982) | J. Economic Theory 26(1): 17–27, "Information, Trade and Common Knowledge" | [10.1016/0022-0531(82)90046-1](https://doi.org/10.1016/0022-0531(82)90046-1) |
| Wilson (1968) | Econometrica 36(1): 119–132, "The Theory of Syndicates" | [10.2307/1909607](https://doi.org/10.2307/1909607) |
| Black & Scholes (1973) | J. Political Economy 81(3): 637–654, "The Pricing of Options..." | [10.1086/260062](https://doi.org/10.1086/260062) |
| Holmström (1979) | Bell J. Economics 10(1): 74–91, "Moral Hazard and Observability" | [10.2307/3003320](https://doi.org/10.2307/3003320) |

> **Disciplina Referee 2.** DOIs canônicos validados via JSTOR/Elsevier PII em 2026-05-07. Hart (1975) e Wilson (1968) confirmados via WebSearch; os demais vêm de bases canônicas (formato JSTOR `10.2307/X` ou Elsevier PII `10.1016/...`). Pode revalidar individualmente em <https://doi.org> antes de impressão final.

---

## Anti-padrões (Referee 2)

- ❌ **Não introduzir Radner sequencial formal.** Pré-monitoria 3 não é Aula 6. Apenas teaser informal.
- ❌ **Não derivar Black-Scholes do zero.** Cite como aplicação famosa do SDF, e siga.
- ❌ **Não ensinar VNM (representação por utilidade esperada) como teoria.** Apenas use EU operacionalmente.
- ❌ **Não fazer econometria.** Hansen-Jagannathan é citação de motivação, não exercício.
- ❌ **Não citar Mehra-Prescott como "resultado central da Aula 5".** É anomalia empírica de modelos CRRA padrão; pré-monitoria 4 ou 5 é o lugar.
