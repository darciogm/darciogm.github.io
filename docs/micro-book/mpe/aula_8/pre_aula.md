# Pré-Aula 8 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 8. É o "esqueleto narrativo" do `platform/aula-08.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Seleção Adversa e Risco Moral** — Akerlof (1970), Rothschild-Stiglitz (1976), Holmström (1979), Mirrlees (1971), Grossman-Hart (1983). Calibre N&S 12e Cap. 18; J-R 3e §7.1 e §7.3 como teto cirúrgico; MWG Cap. 13 cirurgicamente em 🔴.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 10/06/2026 (quarta-feira), 19:30–22:30
- **Acesso livre desde:** desde 2026-04-15 (regra unificada)
- **Fechamento único da plataforma:** quarta 02/07/2026 às 18:00 BRT
- **Gabarito 5-passos dos avaliativos:** quinta 03/07/2026 às 00:00 BRT
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–7 consolidadas. Em particular: UMP/EMP (Aula 2), Slutsky com efeito-renda (Aula 3), 1º TBE estendido + duas falhas anteriores — incompletude (Aula 6) e externalidades/bens públicos (Aula 7) — e familiaridade com Lagrangiano com restrição de incentivo. **Sem isso, esta pré-aula trava em §4.**

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. **Diagnosticar** assimetria de informação como "agente conhece um tipo, ação ou estado que o outro não observa", e enunciar por que isso quebra o 1º TBE — o conjunto de contratos implementáveis fica limitado pelas restrições de incentivo (IC) e de participação (IR).
2. **Distinguir** **seleção adversa** (informação privada **antes** da contratação — *hidden type*) de **risco moral** (ação privada **após** a contratação — *hidden action*) e de **sinalização** (movimento estratégico do agente informado — Aula 9).
3. **Derivar** o resultado canônico de Akerlof (1970): em mercado de qualidade não-observável com proporção fixa de tipos, **adverse selection pode colapsar o mercado** (unraveling) — o equilíbrio degenera para que apenas os piores tipos transacionem, ou para zero transação.
4. **Caracterizar** o equilíbrio separador de Rothschild-Stiglitz (1976) em mercados de seguro com dois tipos de risco e single-crossing: contrato de baixo risco distorcido vs. contrato de alto risco com cobertura completa; **inexistência possível de equilíbrio pooling competitivo**.
5. **Resolver** o problema principal-agente canônico (Holmström 1979) com 2 estados e 2 esforços: derivar o contrato ótimo sob (a) ação observável (first-best — risco totalmente carregado pelo principal) e (b) ação não-observável (second-best — trade-off seguro vs. incentivo via IC).
6. **Reconhecer** o teorema de equivalência: **sob informação simétrica + neutralidade ao risco do agente, second-best = first-best**. A perda de bem-estar do risco moral nasce do conflito entre seguro (eficiência ex-post) e incentivo (eficiência ex-ante) **quando o agente é avesso ao risco**.
7. Aplicar o ferramental a casos brasileiros (planos de saúde + ANS, Bolsa Família como contrato condicional, IR progressivo Mirrlees-style) e mundiais (mercado de carros usados Akerlof, Affordable Care Act US 2010, stock options Holmström-Milgrom).

**Não-objetivos** (para Aula 9 ou pré-monitoria 5):

- **Sinalização (Spence 1973)** — Aula 9. Aqui só citamos como mecanismo do agente informado para resolver o problema do principal não-informado.
- **Matching e Gale-Shapley** — Aula 9. Aqui só pré-anunciamos no fechamento.
- **Mecanismos de revelação para coleção contínua de tipos** (Mirrlees 1971 com integração de IC) — citamos Mirrlees mas não derivamos a fórmula da alíquota ótima.
- **Cheap talk e mecanismos com mensagens não-verificáveis** (Crawford-Sobel 1982) — fora.

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura ZaE — Cap. 19 (informação assimétrica) — orientação principal | Leitura dirigida | 25 min |
| 2 | Leitura N&S 12e — Cap. 18 (piso obrigatório) | Leitura dirigida (PDF) | 20 min |
| 3 | Conceitual 1 — Diagnóstico + lemons (Akerlof 1970) | Texto + 2 micro-checkpoints | 16 min |
| 4 | Conceitual 2 — Seguro com seleção adversa (R-S 1976) | Texto + 2 micro-checkpoints | 16 min |
| 5 | Conceitual 3 — Principal-agente + risco moral (Holmström 1979) | Texto + 2 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (calibre N&S §18.2 / §18.4 / §18.5) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~125 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel e caneta. **Risco moral** se entende com gráfico de incentivo: utilidade do agente sob salário fixo vs. salário contingente, e o "preço" da assimetria. Faça pelo menos um cálculo lápis-papel da utilidade esperada do agente sob cada contrato.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Diagnóstico → Akerlof → R-S → Holmström é cadeia lógica: cada bloco progride uma camada de complexidade institucional.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

> **Aviso de calibre.** Esta aula é a **terceira das três falhas clássicas do EG.** Aula 5 fechou o canônico AD; Aula 6 abriu com **incompletude** (1ª falha); Aula 7 catalogou **externalidades + bens públicos** (2ª falha); aqui catalogamos **informação assimétrica** (3ª falha). Aula 9 vai fechar com **sinalização** (Spence) e **matching** (Gale-Shapley) como mecanismos de coordenação descentralizada que respondem a algumas das três falhas. Mantenha o fio: cada aula expõe um mecanismo *específico* pelo qual o 1º TBE deixa de valer.

---

## Seção 1 — ZaE Cap. 19 (orientação estrutural + leitura principal)

Leitura dirigida do livro **Microeconomia: Do Zero ao Equilíbrio** (Darcio Genicolo Martins) — Capítulo 19 ("Quando Um Lado Sabe Mais (E Isso Estraga Tudo)").

**Por que ZaE como leitura primária:**

- Cobertura panorâmica das três figuras canônicas (Akerlof, R-S, Holmström) com calibre adequado ao MPE.
- Boxes Brasil substantivos (planos de saúde + ANS, Bolsa Família, IR progressivo) — alinhados ao bundle.
- Notação consistente com as Aulas 1–7 (\(\succeq\), vírgula decimal, Lagrangiano com restrição agregada estendido para IC + IR).
- Atividade de sala (jogo de seguro com 2 tipos) que serve como ponte para o Bloco 2 do durante-aula.

**O que ler:**

- **Tipologia da assimetria.** *Hidden type* (seleção adversa) vs. *hidden action* (risco moral). Por que cada uma quebra o 1º TBE de modo distinto.
- **O problema do limão (Akerlof 1970).** Modelo de qualidade não-observável; derivação do unraveling.
- **Mercados de seguro (R-S 1976).** Dois tipos de risco; equilíbrio separador; inexistência do pooling.
- **Principal-agente (Holmström 1979).** Setup canônico 2×2; first-best vs. second-best; fórmula informativa de Holmström.
- **Aplicações.** Planos de saúde + ANS; Bolsa Família condicional; IR progressivo Mirrlees-style.
- **Sinalização e screening.** Pré-anúncio da Aula 9 (Spence); aqui apenas citamos.

Recomendação: leia o capítulo com calma. A parte sobre sinalização e screening fica para a abertura da Aula 9 — não tente antecipar.

---

## Seção 2 — N&S 12e — Cap. 18 (piso obrigatório)

Leitura dirigida do **Nicholson & Snyder, *Microeconomic Theory: Basic Principles and Extensions*, 12ª ed., Cap. 18** ("Asymmetric Information"). Esta é a leitura formal canônica que estabelece o nível matemático mínimo da turma.

**Foco de leitura (em ordem):**

- **§18.1 — Complex Contracts as a Response to Asymmetric Information.** Tipologia.
- **§18.2 — Principal-Agent Model.** Setup canônico, IC + IR, first-best vs. second-best.
- **§18.3 — Hidden Actions.** Risco moral em economia de seguros e em emprego.
- **§18.4 — Owner-Manager Relationship.** Aplicação do principal-agente a corporate governance.
- **§18.5 — Moral Hazard in Insurance.** Risco moral pós-contratação em seguro.
- **§18.6 — Hidden Types.** Seleção adversa em seguro e mercado de trabalho.
- **§18.7 — The Lemons Model (Akerlof).** Derivação cuidadosa de unraveling.
- **§18.8 — Auctions and Mechanism Design.** Aqui aparecem ligações para VCG (Aula 7) e revelação. Leitura opcional para o quiz.

> **Calibre.** N&S §18.2 deriva o principal-agente via Lagrangiano com restrições IC + IR — **exatamente** o que vamos fazer no Bloco 3 do durante-aula. Quem dominar a derivação até CPO sai pronto. **MWG Cap. 13** (Adverse Selection, Signaling, and Screening + Moral Hazard) aparece cirurgicamente em 🔴 — não é leitura obrigatória.

> **📚 Leitura recomendada — Jehle-Reny 3e.** **J-R 3e §7.1 (Adverse Selection: Akerlof)** + **§7.3 (Moral Hazard)**. Sobe um degrau de formalismo em relação a N&S §18: derivações com Bayesian games explícitos, prova do equilíbrio separador R-S 1976, e principal-agente Holmström tratado com Lagrangiano formal. Útil para o aluno que quer ferramentas de qualifier/ANPEC. Não é obrigatório, mas é a referência canônica do calibre J-R.

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap18.pdf', this)`. Bucket: a confirmar — caso o PDF ainda não esteja no Supabase, use a versão impressa do Insper.

---

## Seção 3 — Conceitual 1: Diagnóstico + lemons (Akerlof 1970)

### Diagnóstico: por que assimetria informacional quebra o 1º TBE

**Tipologia operacional.** Há **dois grandes regimes** de assimetria:

- **Hidden type (seleção adversa):** o agente conhece, *antes da transação*, uma característica privada \(\theta\) (sua qualidade, seu risco, sua produtividade) que o principal não observa. Decisões dependem de \(\theta\).
- **Hidden action (risco moral):** o agente escolhe, *após assinar o contrato*, uma ação \(a\) (esforço, cuidado, alocação) que o principal não observa diretamente. O principal observa apenas um sinal ruidoso \(y = y(a, \varepsilon)\).

**Por que isso quebra o 1º TBE.** Recapitule o argumento do 1º TBE estendido (Aula 5): \(\tilde x \succ x^*\) viável \(\Rightarrow p^* \cdot \tilde x > p^* \cdot \omega \Rightarrow\) contradição. O passo crítico era que **todo agente observa as mesmas características do bundle transacionado**. Sob assimetria, o principal **não consegue distinguir** o tipo do agente nem verificar a ação tomada — então o conjunto de contratos *implementáveis* fica restrito a contratos que satisfazem **restrições de compatibilidade de incentivo (IC)** e de **participação (IR)**. Contratos que violam IC são *inviáveis* (o agente desviaria); contratos que violam IR são *inviáveis* (o agente recusaria). O conjunto factível é menor que o do AD canônico — equilíbrio competitivo entrega alocação restrita a esse conjunto, o que tipicamente é **estritamente Pareto-dominado** pelo first-best.

> **Microscópio pedagógico.** Aula 6 quebrou o 1º TBE por **incompletude** (faltavam ativos no span). Aula 7 quebrou por **escopo da interação** (a ação fora do preço). Aqui quebra por **escopo da observabilidade** — o vetor de bens transacionados existe, mas o principal não consegue medi-lo todo. São três mecanismos distintos. Aula 9 introduz mecanismos descentralizados (sinalização, matching) que tentam reabrir o conjunto factível.

### Akerlof (1970) — o problema do limão

**Akerlof, G. A. (1970). "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *Quarterly Journal of Economics* 84(3), 488–500, [DOI 10.2307/1879431](https://doi.org/10.2307/1879431).**

**Setup mínimo (versão didática).** Mercado de carros usados. Cada vendedor tem um carro com qualidade \(\theta \in [\underline\theta, \overline\theta]\) (distribuição uniforme, por simplicidade). O **vendedor conhece** \(\theta\); o **comprador não**. Vendedor reserva \(\theta\) (dispostado a vender por \(\ge \theta\)); comprador valoriza \(\beta \theta\) com \(\beta > 1\) (existem ganhos do comércio se houvesse simetria — comprador valoriza mais).

**Equilíbrio sob simetria.** Se ambos observassem \(\theta\), todo carro com \(\beta \theta > \theta\) (i.e., todo carro, dado \(\beta > 1\)) seria transacionado. **Eficiência completa.**

**Equilíbrio sob assimetria.** Comprador propõe preço \(p\) baseado na **qualidade média esperada** dos carros que aceitariam vender a \(p\). Vendedor aceita se \(\theta \le p\). Logo, à preço \(p\), o conjunto de vendedores ativos é \(\{\theta : \theta \le p\}\) — **distribuição truncada acima por \(p\)**. Qualidade média esperada condicional na venda: \(E[\theta | \theta \le p] = p/2\) (sob distribuição uniforme \([0, p]\)). Comprador disposto a pagar até \(\beta \cdot E[\theta | \theta \le p] = \beta p/2\).

**Equilíbrio competitivo:** \(p = \beta p/2 \Rightarrow p(1 - \beta/2) = 0\) na região interior. Se \(\beta < 2\), única solução interior é \(p = 0\) — **mercado colapsa** (toda massa de tipos abandonou o mercado). Se \(\beta = 2\), qualquer \(p \in [0, \overline\theta]\) é equilíbrio (degenerada). Se \(\beta > 2\), o equilíbrio interior \(p=0\) deixa de ser estável; o equilíbrio relevante é \(p^* = \beta \overline\theta / 2\) (eventualmente truncado em \(\overline\theta\) pela restrição de viabilidade da distribuição); o unraveling é **parcial** ou ausente — todos os tipos transacionam quando \(\beta\) é grande o bastante para compensar a média baixa do conjunto truncado.

> **Eq-punch:** *"Quando o **bom** subsidia o **ruim** via preço médio, os **bons** abandonam o mercado primeiro. O mercado *não consegue distinguir*, e o que sobra é o **pior**."* É unraveling: bons saem, qualidade média cai, preço cai, mais bons saem, e assim por diante.

**Por que isso é falha do 1º TBE.** Sem assimetria, todos os carros com \(\beta\theta > \theta\) seriam vendidos — eficiente. Com assimetria, sob \(\beta < 2\), nenhum carro é vendido — **alocação Pareto-dominada** pela alocação simétrica de informação completa. **O 1º TBE depende de informação simétrica.**

### Box Brasil 🇧🇷 — Mercado de carros usados Brasil + Webmotors/OLX

O **mercado brasileiro de carros usados** é o caso canônico de Akerlof aplicado: assimetria entre vendedor (conhece histórico, manutenção, sinistros) e comprador (vê apenas inspeção visual). Plataformas tipo **Webmotors, OLX, Mercado Livre** introduzem mecanismos parciais de redução de assimetria: histórico de manutenção, laudo cautelar (vistoria por terceiros), garantia de loja (sinalização via reputação), revisão pré-compra. **Concessionárias certificadas** (e.g., concessionária da marca com programa de "seminovos com garantia") cobram preço maior precisamente porque o programa de inspeção + garantia reduz a assimetria — o comprador paga **prêmio de informação**.

A diferença com o Akerlof puro: instituições brasileiras (CDC + Lei dos Veículos + concessionárias com reputação) reduzem mas não eliminam a assimetria. O resultado empírico é coerente com Akerlof: **distribuição bimodal** dos preços de transação — carros "garantidos" pela concessionária têm preço próximo ao novo; carros "OLX particulares" sofrem um *lemons discount* substancial.

### Box Mundo 🌍 — Akerlof's used cars como referência canônica

O exemplo de Akerlof (1970) é o de carros usados nos EUA — **canonicamente, é o paper que rendeu Nobel 2001** (compartilhado com Stiglitz e Spence, "for their analyses of markets with asymmetric information"). O mecanismo central — informação privada do vendedor sobre qualidade do carro — generaliza-se para: seguros (Stiglitz: tipo de risco), mercado de trabalho (Spence: produtividade), crédito (Stiglitz-Weiss 1981: risco do tomador), mercado de M&A (Myers-Majluf 1984: valor da firma). Toda a literatura subsequente sobre informação assimétrica desce de Akerlof + companhia.

### Micro-checkpoints (2 itens — obrigatórios)

**MC1.** No modelo de Akerlof com qualidade uniforme \(\theta \sim U[0, 1]\), comprador valoriza \(\beta\theta\) com \(\beta = 1{,}5\), vendedor reserva \(\theta\). Em equilíbrio competitivo:

- (a) Mercado funciona normalmente — todos transacionam.
- (b) **Mercado colapsa: \(p = \beta \cdot E[\theta | \theta \le p] = \beta p/2 \Rightarrow p(1 - \beta/2) = 0 \Rightarrow p = 0\) (única solução com \(\beta = 1{,}5 < 2\)). Nenhum carro transaciona em equilíbrio competitivo — *adverse selection unraveling completo*.** **[correta]**
- (c) Apenas carros com \(\theta > 0{,}5\) transacionam.
- (d) Equilíbrio é \(p = \beta = 1{,}5\) com qualidade média \(0{,}75\).

**MC2.** A diferença operacional entre **seleção adversa** e **risco moral** é:

- (a) Seleção adversa é positiva, risco moral é negativo.
- (b) **Seleção adversa: agente conhece *antes* da contratação um *tipo* (\(\theta\)) que o principal não vê — *hidden type*. Risco moral: agente escolhe *após* a contratação uma *ação* (\(a\)) que o principal não vê diretamente — *hidden action*. As duas geram restrições de incentivo distintas (IC para tipos vs. IC para ações).** **[correta]**
- (c) Seleção adversa é problema de risco; risco moral é problema de informação.
- (d) São equivalentes — vocabulário diferente para o mesmo fenômeno.

---

## Seção 4 — Conceitual 2: Seguro com seleção adversa (Rothschild-Stiglitz 1976)

### Setup do mercado de seguro com 2 tipos de risco

**Rothschild, M., & Stiglitz, J. (1976). "Equilibrium in Competitive Insurance Markets." *Quarterly Journal of Economics* 90(4), 629–649, [DOI 10.2307/1885326](https://doi.org/10.2307/1885326).**

**Setup mínimo.** Cada agente tem riqueza inicial \(W\) e enfrenta sinistro \(L\) com probabilidade \(\pi^\theta\) onde \(\theta \in \{H, L\}\) (high/low risk), com \(\pi^H > \pi^L\). Probabilidade do tipo: \(\lambda\) high, \(1-\lambda\) low. **Agente conhece** \(\theta\); **seguradora não**. Preferências: utilidade von Neumann-Morgenstern com Bernoulli \(u(\cdot)\) côncava (avesso ao risco).

Um contrato de seguro é par \((\alpha, \beta)\): paga \(\alpha\) sempre + cobre \(\beta\) em caso de sinistro. O lucro esperado da seguradora sob tipo \(\theta\) que aceitou contrato \((\alpha, \beta)\) é \(-\alpha + \pi^\theta (\alpha - \beta + \alpha) = \alpha (1 - \pi^\theta) - \pi^\theta(\beta - \alpha)\)... — equivale, em forma simplificada, a vender seguro a prêmio \(p\) que cobre dano \(L\) integralmente: lucro esperado = \(p - \pi^\theta L\). Equilíbrio competitivo: lucro esperado zero.

**Para fluência pedagógica desta pré-aula**, use a forma reduzida: em equilíbrio competitivo de informação simétrica, cada tipo recebe seguro completo a prêmio actuarialmente justo \(p^\theta = \pi^\theta L\). Tipo \(H\) paga mais; tipo \(L\) paga menos. Ambos atingem first-best: cobertura completa, sem perda de bem-estar.

### O problema com informação assimétrica

Sob assimetria, seguradora não pode oferecer \((p^H, p^L)\) condicional ao tipo (não os observa). Tem que oferecer um **menu de contratos** \((\alpha_H, \beta_H), (\alpha_L, \beta_L)\) e deixar o agente escolher. **Restrição de IC (incentive compatibility):**

\[
EU^H(\alpha_H, \beta_H) \ge EU^H(\alpha_L, \beta_L), \qquad EU^L(\alpha_L, \beta_L) \ge EU^L(\alpha_H, \beta_H).
\]

Cada tipo prefere o contrato a si destinado a se passar pelo outro.

**Crucial: single-crossing property** — \(\partial \text{TMS}/\partial \theta\) tem sinal definido. Sob \(\pi^H > \pi^L\) e Bernoulli côncava, alto-risco tem maior disposição-a-pagar por cobertura adicional na margem. Geometricamente: as curvas de indiferença de \(H\) e \(L\) (no espaço prêmio × cobertura) se cruzam **uma única vez**, e \(H\) está sempre "mais inclinado".

### Equilíbrio separador de Rothschild-Stiglitz

R-S provam: o único candidato a equilíbrio competitivo (sob entrada livre) é o **separador**:

- **Tipo \(H\) (alto risco):** recebe **cobertura completa** ao prêmio actuarialmente justo \(p^H = \pi^H L\) (mesmo first-best).
- **Tipo \(L\) (baixo risco):** recebe **cobertura parcial** — distorção deliberada para baixo — ao prêmio justo de tipo \(L\). A cobertura é tal que tipo \(H\) é **indiferente** entre seu próprio contrato e o de \(L\) (IC binding).

> **Eq-punch:** *"Os bons riscos pagam o preço da assimetria — recebem menos seguro que mereceriam, para que os altos riscos não os imitem."* É distorção de second-best: tipo \(L\) carrega o ônus da assimetria.

> **Spoiler do Exercício 3 dos avaliativos.** Com a calibração canônica do bundle \((W, L, \pi^H, \pi^L) = (100, 56, 1/2, 1/4)\) e Bernoulli \(\sqrt{\cdot}\), a cobertura ótima do tipo \(L\) no separador sai em \(c^L_* = 8\), i.e., **~14% do dano**. Distorção severa — e é *precisamente* por isso que reguladores (ANS no Brasil, ACA nos EUA) forçam padronização e mandato participação.

**Inexistência possível do equilíbrio.** R-S provam (resultado central): se a proporção \(\lambda\) de altos riscos é **suficientemente baixa**, não existe equilíbrio competitivo separador (o pooling Pareto-domina o separador, mas não é Nash; um desviante pode oferecer contrato que atrai apenas \(L\) e quebra o pooling). **Não-existência de equilíbrio competitivo** é o resultado intelectualmente mais surpreendente — abre porta para regulação (mandato + cross-subsidy explícito).

### Box Brasil 🇧🇷 — Planos de saúde brasileiros + ANS

O **mercado brasileiro de planos de saúde** (regulamentado pela ANS — Lei 9.656/1998) ilustra R-S aplicado. Na ausência de regulação, seguradoras seriam fortemente incentivadas a *cherry-pick* (selecionar baixos riscos) via:

- **Triagem médica** pré-contratação (declaração de saúde).
- **Carências** (exclusão temporária de coberturas para pré-existências).
- **Prêmios diferenciados por idade** (proxy de risco).

A regulação ANS impõe limites: faixas etárias máximas, cobertura mínima obrigatória (rol da ANS), e — especialmente — **portabilidade** (Resolução 186/2009) que reduz lock-in. O efeito líquido é uma forma de pooling regulado: a regulação força um menu mais homogêneo, redistribuindo o ônus da assimetria entre os tipos. Discussão de second-best: a regulação resolve a inexistência R-S, mas a custo de cross-subsidy explícito (baixos riscos pagam mais que justo actuarial; altos riscos pagam menos).

### Box Mundo 🌍 — Affordable Care Act (US 2010): mandato + proibição de underwriting

O **Affordable Care Act (ACA, US 2010)** é uma resposta institucional canônica ao problema R-S: (i) **proíbe underwriting baseado em saúde** (seguradoras não podem recusar cobertura nem precificar diferenciadamente por condição preexistente — força pooling); (ii) **mandato individual** (penalidade fiscal para quem não tem seguro — força participação dos baixos riscos, evita unraveling); (iii) **subsídios cruzados** via marketplaces (Pareto-melhoria via redistribuição). O mecanismo é exatamente a estrutura prevista pela teoria: sem mandato, baixos riscos saem do pool e o equilíbrio R-S se torna inviável; com mandato + subsídio, o pooling regulado é viabilizado.

A literatura empírica (Kowalski 2014, Hackmann-Kolstad-Kowalski 2015) documenta unraveling parcial em estados que removeram mandato individual (e.g., após decisão da Suprema Corte 2012 sobre Medicaid expansion). Direto do livro-texto.

### Micro-checkpoints (2 itens — obrigatórios)

**MC3.** No modelo R-S com 2 tipos (H, L), single-crossing, e probabilidade \(\lambda\) baixa de altos riscos, o equilíbrio competitivo separador é caracterizado por:

- (a) Ambos os tipos recebem cobertura completa ao prêmio justo de cada um.
- (b) **Tipo H recebe cobertura completa ao prêmio justo \(p^H = \pi^H L\); tipo L recebe cobertura parcial (distorcida para baixo) tal que tipo H seja indiferente entre os dois contratos. IC do tipo H é *binding*.** **[correta]**
- (c) Ambos recebem o mesmo contrato pooling.
- (d) Tipo L recebe cobertura completa; tipo H não tem cobertura.

**MC4.** A inexistência de equilíbrio competitivo separador em R-S sob \(\lambda\) baixa decorre de:

- (a) Falha de single-crossing.
- (b) **O pooling Pareto-domina o separador para \(\lambda\) suficientemente baixo (média de risco próxima de \(\pi^L\) faz pooling mais barato), mas pooling não é Nash em equilíbrio competitivo: uma seguradora pode desviar oferecendo contrato que atrai apenas L e quebra o pooling. Logo, nem separador nem pooling sobrevivem como Nash — não existe equilíbrio.** **[correta]**
- (c) Custos administrativos das seguradoras.
- (d) Incompatibilidade com first-best.

---

## Seção 5 — Conceitual 3: Principal-agente + risco moral (Holmström 1979)

### Setup canônico 2-estados / 2-esforços

**Holmström, B. (1979). "Moral Hazard and Observability." *Bell Journal of Economics* 10(1), 74–91, [DOI 10.2307/3003320](https://doi.org/10.2307/3003320).**

**Setup mínimo.** Principal (P, neutro ao risco) contrata Agente (A, avesso ao risco) para realizar tarefa. Agente escolhe esforço \(a \in \{a_L, a_H\}\) (baixo, alto) com custo \(c(a)\), \(c(a_H) > c(a_L) \ge 0\). Output \(y \in \{y_L, y_H\}\) com \(y_H > y_L\); probabilidade de \(y_H\) sob esforço \(a_k\): \(\pi_k = \Pr(y_H | a_k)\), \(\pi_H > \pi_L\).

Contrato: salário \(w(y) \in \{w_L, w_H\}\) (depende apenas do output observável \(y\)). Utilidade do agente sob salário \(w\) e esforço \(a\): \(EU(a, w) = \pi_a u(w_H) + (1-\pi_a) u(w_L) - c(a)\), com \(u\) côncava (avesso ao risco). Lucro esperado do principal: \(E\Pi = \pi_a (y_H - w_H) + (1-\pi_a) (y_L - w_L)\).

Reservation utility do agente: \(\bar U\) (utilidade fora — IR).

### Caso 1: ação observável (first-best)

Se \(a\) é observável, principal contrata diretamente \(a\) e oferece **salário fixo** que satisfaz IR com igualdade: \(u(w^*) - c(a) = \bar U\), logo \(w^* = u^{-1}(\bar U + c(a))\). **Risco totalmente carregado pelo principal** — ele é neutro, agente é avesso, então é Pareto-eficiente que principal absorva todo o risco. Esse é o **first-best**.

Pergunta-driver: **quais condições precisamos para que o principal queira induzir \(a_H\)?** Comparação dos lucros esperados sob cada esforço, fazendo conta. Se \(\pi_H y_H + (1-\pi_H) y_L - w^*_H > \pi_L y_H + (1-\pi_L) y_L - w^*_L\), induz \(a_H\). Caso contrário, \(a_L\).

### Caso 2: ação não-observável (second-best)

Sob *hidden action*, contrato com salário fixo é incompatível com \(a_H\): agente desviaria para \(a_L\) (poupando custo de esforço sem afetar salário). Para induzir \(a_H\), salário tem de **depender** do output (sinal ruidoso de \(a\)). Mas isso impõe **risco** ao agente — perda de seguro vs. ganho de incentivo.

**Programa do principal (induzindo \(a_H\)):**

\[
\min_{w_H, w_L} \pi_H w_H + (1-\pi_H) w_L \quad \text{s.a.}
\]

- **(IR)** \(\pi_H u(w_H) + (1-\pi_H) u(w_L) - c(a_H) \ge \bar U\)
- **(IC)** \(\pi_H u(w_H) + (1-\pi_H) u(w_L) - c(a_H) \ge \pi_L u(w_H) + (1-\pi_L) u(w_L) - c(a_L)\)

A IC simplifica para \((\pi_H - \pi_L) [u(w_H) - u(w_L)] \ge c(a_H) - c(a_L)\).

**Lagrangiano:**

\[
\mathcal{L} = \pi_H w_H + (1-\pi_H) w_L - \mu \cdot [\text{IR}] - \nu \cdot [\text{IC}].
\]

CPOs em \(w_H\) e \(w_L\):

\[
\pi_H = \mu \pi_H u'(w_H) + \nu (\pi_H - \pi_L) u'(w_H),
\]
\[
(1-\pi_H) = \mu (1-\pi_H) u'(w_L) - \nu (\pi_H - \pi_L) u'(w_L).
\]

Reorganizando:

\[
\frac{1}{u'(w_H)} = \mu + \nu \cdot \frac{\pi_H - \pi_L}{\pi_H},
\]
\[
\frac{1}{u'(w_L)} = \mu - \nu \cdot \frac{\pi_H - \pi_L}{1-\pi_H}.
\]

**Interpretação.** Sob first-best (\(\nu = 0\), porque IC não é restritiva), \(u'(w_H) = u'(w_L) \Rightarrow w_H = w_L\) (salário fixo) — confirma que principal absorve todo o risco. Sob second-best (\(\nu > 0\), IC é binding), \(u'(w_H) < u'(w_L) \Rightarrow w_H > w_L\) — agente carrega risco para receber sinal de incentivo.

> **Eq-punch:** *"Risco moral força o principal a quebrar o seguro do agente para criar incentivo. Cada unidade de variabilidade em \(w(y)\) é custo de seguro; cada centavo a menos em variabilidade é seguro recuperado mas incentivo perdido."* O second-best resolve o trade-off.

### Equivalência sob neutralidade do agente

Se o agente é **neutro ao risco** (\(u\) linear), \(u'(w) = \) constante, e a perda do seguro é zero. Sob essa condição, second-best = first-best — resolve-se via "contrato franchise": principal "vende" o output bruto ao agente cobrando taxa fixa = lucro esperado. Agente fica residual claimant; escolhe \(a_H\) por interesse próprio. Quando o agente é neutro, **o problema de risco moral desaparece** e o first-best é alcançável.

### Aplicação canônica (Holmström-Milgrom 1987): equação informativa

Em modelo contínuo, Holmström (1979) prova a **fórmula informativa**: o salário ótimo \(w(y)\) depende de \(y\) apenas através do **score de likelihood** \(\partial \ln f(y | a) / \partial a\). Sinais informativos sobre \(a\) entram no contrato; sinais não-informativos não. A intuição: você só paga pelo que sinaliza esforço.

**Aplicação prática:** em economia com múltiplos sinais, o salário ótimo combina **todos** os sinais informativos com pesos proporcionais à informatividade. Stock options (sensibilidade a desempenho da firma) é informativo se desempenho da firma reflete esforço do CEO; inflação geral do mercado não é (ruído correlacionado com todos). Daí o uso de **relative performance evaluation** (RPE) — comparar com peers para filtrar ruído de mercado.

### Box Brasil 🇧🇷 — Bolsa Família como contrato condicional

O **Programa Bolsa Família** (criado 2003, atual Bolsa Família 2023) é um contrato condicional clássico: transferência de renda condicionada a (i) frequência escolar mínima dos filhos (≥ 85%) e (ii) acompanhamento de saúde (vacinação, pré-natal). Esses são **sinais verificáveis** do "esforço" educacional/sanitário da família. Sem condicionalidades, transferência é "salário fixo" — agente (família) tem incentivo a desviar ações não observáveis. Com condicionalidades, contrato implementa restrição de IC: receber o benefício **exige** o esforço.

A literatura empírica brasileira (Glewwe-Olinto 2004, Soares et al. 2010) documenta efeitos positivos sobre frequência escolar atribuíveis à condicionalidade. **A condicionalidade é o IC formal do contrato.**

### Box Mundo 🌍 — Stock options para CEO (Holmström-Milgrom 1987)

Stock options para executivos seguram a estrutura básica do principal-agente: principal (acionistas, board) contrata agente (CEO) cuja ação (esforço estratégico, alocação de capital, escolhas de risco) é não-observável; output (preço da ação) é observável mas ruidoso. Stock options pagam ao CEO uma **fração crescente** do preço da ação acima de um *strike* — incentivo de cauda direita. Equivalente operacional ao \(w_H > w_L\) do nosso modelo simplificado.

A literatura empírica (Murphy 1999, Hall-Liebman 1998) documenta que executive compensation tem componente performance-pay crescente — observação consistente com a teoria. **Limites:** stock options podem incentivar tomada de risco excessivo (segundo problema agency: risk-shifting ao acionista). Daí o uso de restricted stock units (RSU), claw-back clauses, e ESG-linked compensation como refinamentos para alinhar o leque de ações desejadas.

### Micro-checkpoints (2 itens — obrigatórios)

**MC5.** No problema principal-agente canônico de Holmström com agente avesso ao risco e ação observável, o salário ótimo é:

- (a) Variável (\(w_H \neq w_L\)) — incentivo direto via output.
- (b) **Fixo (\(w_H = w_L\)) — principal neutro absorve todo o risco. IR é binding (utilidade reservada); IC é irrelevante porque ação é diretamente verificável. Este é o first-best.** **[correta]**
- (c) \(w = 0\) — principal extrai todo o excedente.
- (d) \(w = c(a)\) — salário igual ao custo do esforço, "compensando exatamente o trabalho". Erro: ignora utilidade reservada \(\bar U\), dando agente abaixo da participação.

**MC6.** Sob ação **não-observável** + agente **avesso ao risco**, o second-best ótimo satisfaz:

- (a) \(w_H = w_L\) (salário fixo).
- (b) **\(w_H > w_L\) com \(u'(w_H) < u'(w_L)\): IC binding força variabilidade do salário; agente carrega parte do risco para sinalizar esforço; second-best Pareto-dominado pelo first-best por causa da perda de seguro. Forma sintética da CPO: \(1/u'(w_y) = \mu + \nu \cdot \text{score}(y)\), onde \(\nu > 0\) reflete o ônus da IC.** **[correta]**
- (c) \(w_H < w_L\) — incentivo invertido.
- (d) \(w_H = w_L = w^*\) (salário fixo) com \(w^*\) escolhido para "saturar a IC". Erro: salário fixo viola a IC — agente desviaria para \(a_L\) sem reduzir \(w\), pois a ação não é diretamente verificável. Apenas variabilidade \(w_H \ne w_L\) cria incentivo.

---

## Seção 6 — Exercícios de papel

**Tempo-alvo:** 15 min para abordagem (não para resolução completa). Resolução pode ser feita até a aula presencial.

> **Calibração.** Os enunciados são **auto-contidos** e calibrados ao **piso N&S 12e §18.2 / §18.5 / §18.7**. Quem preferir abordagem panorâmica encontra material equivalente em ZaE Cap. 19.

### EP-1 (obrigatório, calibre intermediário) — Akerlof com qualidade uniforme

> **Nota.** Os parâmetros aqui são **distintos** dos do Exercício 1 dos avaliativos (que usa \(\beta = 1{,}3\) com escala diferente). Mesma estrutura conceitual (unraveling), calibração numérica diferente.

Mercado de carros usados. Qualidade \(\theta \sim U[1, 3]\). Vendedor reserva \(\theta\); comprador valoriza \(\beta \theta\) com \(\beta = 1{,}5\).

(a) Sob informação simétrica, em equilíbrio competitivo, a transação ocorre se \(\beta \theta > \theta\). Para \(\beta > 1\), todo carro é transacionado. Qual o preço de equilíbrio para um carro de qualidade \(\theta = 2\)?
(b) Sob informação assimétrica, o comprador propõe preço \(p\); vendedor aceita se \(\theta \le p\). Calcule a qualidade média esperada \(E[\theta | \theta \le p]\) condicional na venda, sob distribuição uniforme \([1, p]\) (assumindo \(p \in [1, 3]\)).
(c) Calcule o preço de equilíbrio competitivo \(p^*\) (onde \(p^* = \beta \cdot E[\theta | \theta \le p^*]\)).
(d) Argumente: o equilíbrio sobrevive ou colapsa?

**Abordagem (textarea, mín. 10 caracteres):** descreva como você vai resolver — em particular, qual a média condicional sob uniforme.

### EP-2 (obrigatório, calibre intermediário) — Principal-agente 2×2 (first-best)

> **Nota.** Parâmetros distintos dos do Exercício 4 dos avaliativos.

Principal neutro contrata agente avesso com Bernoulli \(u(w) = \sqrt{w}\). Esforços: \(a_L\) (custo 0) e \(a_H\) (custo 4). Output: \(y_L = 0\), \(y_H = 100\). Probabilidade de \(y_H\): \(\pi_L = 0{,}3\), \(\pi_H = 0{,}7\). Reservation utility: \(\bar U = 4\).

(a) Sob ação observável (first-best), calcule o salário fixo \(w^*_H\) tal que principal induza \(a_H\) — i.e., \(\sqrt{w^*_H} - 4 = \bar U = 4 \Rightarrow w^*_H = ?\).
(b) Calcule o salário \(w^*_L\) que induz \(a_L\) — \(\sqrt{w^*_L} - 0 = 4 \Rightarrow w^*_L = ?\).
(c) Para o principal, qual esforço é mais lucrativo? Compare \(\pi_a y_H + (1-\pi_a) y_L - w^*_a\).

**Abordagem (textarea, mín. 10 caracteres):** descreva o passo a passo.

### EP-3 (bônus, calibre intermediário) — Principal-agente 2×2 (second-best)

Mesmo setup do EP-2. Sob ação **não-observável**:

(a) Escreva as restrições IR e IC (com \(u(w) = \sqrt w\), \(\pi_H = 0{,}7\), \(\pi_L = 0{,}3\), \(c(a_H) = 4\), \(c(a_L) = 0\)).
(b) Resolva o sistema de 2 equações lineares em \((\sqrt{w_H}, \sqrt{w_L})\) — IR e IC ambas *binding*.
(c) Compare salário esperado \(\pi_H w_H + (1-\pi_H) w_L\) com first-best \(w^*_H\) do EP-2(a). A diferença é o **prêmio de risco moral**.

**Abordagem (textarea, opcional):** descreva o sistema 2x2 que resolverá.

---

## Seção 7 — Checkpoint final de síntese

3 questões sintetizando assimetria → Akerlof → R-S → Holmström.

**Q1 (síntese — diagnóstico).** Informação assimétrica quebra o 1º TBE da Aula 5 porque:

- (a) Os preços ficam incorretos.
- (b) **O conjunto de contratos implementáveis é restrito por IC + IR — apenas contratos compatíveis com incentivo (agente não desvia) e participação (agente aceita) são factíveis. Esse conjunto é estritamente menor que o conjunto AD canônico, e o equilíbrio competitivo restrito a ele tipicamente é Pareto-dominado pelo first-best com informação simétrica.** **[correta]**
- (c) Os agentes são irracionais.
- (d) O 1º TBE não vale em economias com produção.

**Q2 (síntese — Akerlof).** O resultado de unraveling de Akerlof (1970) implica que:

- (a) Mercados sempre funcionam apesar da assimetria.
- (b) **Sob seleção adversa em mercado de qualidade não-observável, o equilíbrio competitivo pode degenerar — bons saem do mercado primeiro, qualidade média condicional cai, preço cai, mais bons saem; o limite é colapso completo (\(p^* = 0\)) ou unraveling para mínima qualidade. A falha é Pareto-ineficiente — informação simétrica entregaria first-best com toda transação realizada.** **[correta]**
- (c) Comprador sempre paga preço alto.
- (d) Vendedor sempre lucra com a assimetria.

**Q3 (síntese — Holmström).** No principal-agente canônico de Holmström (1979) com agente avesso ao risco, o trade-off central do second-best é:

- (a) Eficiência ex-ante vs. eficiência ex-post.
- (b) **Seguro (eficiência ex-post — agente é avesso, principal é neutro, então first-best entrega salário fixo) vs. incentivo (eficiência ex-ante — sob ação não-observável, IC requer salário variável). O second-best resolve o trade-off via Lagrangiano com IC binding; perda de bem-estar é a "sombra" da informação assimétrica. Sob agente neutro, o trade-off desaparece e first-best volta.** **[correta]**
- (c) Lucro do principal vs. lucro do agente.
- (d) Risco do agente vs. risco da seguradora.

---

## Seção 8 — Reflexão qualitativa

Dois campos obrigatórios (mín. 10 caracteres cada):

1. **"Que conceito ou passagem ainda está nebuloso pra você?"**
   Sugestões de auto-diagnóstico: "Por que pooling não é Nash em R-S?", "Como visualizar single-crossing geometricamente?", "Por que neutralidade do agente leva a first-best em risco moral?", "Como a fórmula informativa de Holmström entrega o peso ótimo de cada sinal?".

2. **"Qual ponto você quer ver discutido em sala?"**
   Sugestões: "Quero ver a derivação do principal-agente no quadro com números.", "Quero entender como a ANS regula plano de saúde via R-S.", "Como o ACA mandato + proibição de underwriting resolve o problema de inexistência R-S?", "Onde a tragédia dos comuns reaparece em risco moral em equipe?".

---

## Apêndice A — Tabela de notação canônica desta aula

| Símbolo | Significado |
|---|---|
| \(\theta\) | tipo do agente (privado) — *hidden type* |
| \(a\) | ação do agente (privada após contrato) — *hidden action* |
| \(\pi^\theta\) ou \(\pi_a\) | probabilidade de sinistro/output sob tipo/ação |
| \(\beta\) | razão de valoração comprador/vendedor (Akerlof) |
| \(p^*\) | preço competitivo |
| \(L\) | dano (loss) sob sinistro |
| \(u(\cdot)\) | Bernoulli côncava do agente avesso |
| \(c(a)\) | custo do esforço |
| \(\bar U\) | utilidade reservada do agente (IR) |
| \(w_H, w_L\) | salário sob output alto / baixo |
| \(\mu\) | multiplicador de IR |
| \(\nu\) | multiplicador de IC |
| **IR** | restrição de participação (individual rationality) |
| **IC** | restrição de compatibilidade de incentivo (incentive compatibility) |
| **first-best** | alocação ótima sob informação simétrica |
| **second-best** | alocação ótima sob restrições informacionais |

---

## Apêndice B — O que esta aula **não** faz (anti-overclaim)

- **Não cobre sinalização (Spence 1973) nem matching (Gale-Shapley 1962).** Aula 9.
- **Não derivar a fórmula de Mirrlees (1971)** para alíquota ótima do imposto progressivo (envelope theorem + integração de IC sobre tipos contínuos). Citamos o resultado.
- **Não modelar mecanismos de revelação para tipos contínuos** (Myerson 1981 revenue equivalence). Citamos.
- **Não trata cheap talk** (Crawford-Sobel 1982). Citamos como extensão.
- **Não derivar a equivalência de receita** (Vickrey-Myerson) — Aula 7 já tocou VCG; aqui mantemos foco em adverse selection + moral hazard.
- **Não modela **Stiglitz-Weiss (1981)** racionamento de crédito formalmente.** Citamos como aplicação.
- **Não modela **Myers-Majluf (1984)** financiamento via emissão de ações.** Citamos.

> **Disclaimer estilístico.** Esta aula é **alta em diagnóstico + média em ferramental técnico + alta em conexão com o catálogo de falhas**. Saia com 5 coisas na ponta da língua: (1) a tipologia *hidden type* (sel.adv.) vs. *hidden action* (risco moral), (2) Akerlof unraveling \(p^* \to 0\), (3) R-S separador (\(H\) cobertura completa, \(L\) distorcido) + inexistência possível, (4) Holmström first-best (\(w\) fixo) vs. second-best (\(w_H > w_L\) com IC binding), (5) neutralidade do agente \(\Rightarrow\) first-best alcançável. Esses são os 5 fatos pedagógicos da Aula 8. **Aula 9** (próxima e última de conteúdo) vai introduzir sinalização (Spence) + matching (Gale-Shapley) como mecanismos de coordenação que respondem às três falhas catalogadas (Aulas 6–8).
