# Exercícios Avaliativos — Aula 8 (Seleção Adversa + Risco Moral)

> **SSOT em Markdown.** Espelho narrativo de `platform/aula-08-exerc.html`. Mantenha em sincronia 1:1 quando editar qualquer um dos dois.

> **Tema:** Akerlof (1970) lemons; Rothschild-Stiglitz (1976) seguro com seleção adversa; Holmström (1979) principal-agente; aplicações brasileiras (planos de saúde + ANS, Bolsa Família como contrato condicional) e mundiais (ACA US 2010, stock options).

> **Calibre:** **Nicholson & Snyder 12e Cap. 18 (piso obrigatório)**; ZaE Cap. 19 como leitura principal do aluno; Jehle-Reny 3e §7.1 e §7.3 como teto de conforto; MWG Cap. 13 citado cirurgicamente em 🔴.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula correspondente:** Aula 8 — 10/06/2026 (quarta), 19:30–22:30
- **Abertura:** acesso livre desde 2026-04-15 (regra unificada)
- **Fechamento:** quarta 02/07/2026 às 18:00 BRT (deadline único de submissão)
- **Liberação do gabarito:** quinta 03/07/2026 às 00:00 BRT
- **Tempo-alvo:** 2h30–3h
- **Composição:** 6 exercícios = **1 🟢 + 3 🟡 + 2 🔴**, totalizando ~28 sub-itens de múltipla escolha + 6 gabaritos 5-passos.

---

## Exercício 1 — 🟢 Diagnóstico: hidden type vs. hidden action + Akerlof preliminar

### Enunciado

Considere as três situações abaixo, todas envolvendo informação assimétrica entre dois agentes. Para cada uma, classifique o regime informacional (*hidden type* — seleção adversa — vs. *hidden action* — risco moral) e identifique a restrição binding (IR ou IC).

**S1.** Plano de saúde individual: agente conhece sua propensão a doenças crônicas (\(\theta\)) antes de assinar o contrato; seguradora oferece cobertura sem exame médico prévio.

**S2.** Empregador contrata vendedor com salário fixo + comissão. Após assinado, vendedor escolhe quanto se esforçar (\(a\)) na prospecção; vendas observadas são sinal ruidoso do esforço.

**S3.** Mercado de carros usados: vendedor conhece histórico (sinistros, manutenção); comprador vê apenas inspeção visual; preço é fechado antes de o comprador "abrir o capô" para inspeção mais funda.

### Sub-itens

**(a)** A situação **S1** corresponde a:

- (i) Hidden action — agente escolhe se se cuida ou não.
- (ii) **Hidden type — agente conhece \(\theta\) (propensão a doença) *antes* da contratação; seguradora não vê \(\theta\); restrição binding em equilíbrio competitivo é IC (cada tipo prefere seu contrato a se passar pelo outro).** **[correta]**
- (iii) Sem assimetria — exame de admissão padroniza.
- (iv) Hidden action + IR.

**(b)** A situação **S2** corresponde a:

- (i) Hidden type — vendedor é alto/baixo risco.
- (ii) **Hidden action — vendedor escolhe \(a\) *após* assinar; empregador observa apenas vendas \(y(a, \varepsilon)\); restrição binding sob induzir alto esforço é IC (vendedor não desvia para baixo esforço).** **[correta]**
- (iii) Sem assimetria — comissão revela tudo.
- (iv) Hidden type + IC sobre tipos.

**(c)** A situação **S3** corresponde a:

- (i) Hidden action.
- (ii) **Hidden type — vendedor conhece a qualidade do carro \(\theta\) *antes* da venda; comprador não; é o setup canônico de Akerlof (1970).** **[correta]**
- (iii) Risco moral.
- (iv) Sem assimetria.

**(d)** No setup de Akerlof com qualidade \(\theta \sim U[0, 1]\) e comprador valorizando \(\beta\theta\) com \(\beta = 1{,}3\), o equilíbrio competitivo \(p^*\) tal que \(p^* = \beta \cdot \mathbb{E}[\theta \mid \theta \le p^*]\) (sob distribuição uniforme em \([0, p^*]\)) é:

- (i) \(p^* = \beta = 1{,}3\).
- (ii) **\(p^* = 0\)**: \(p = 1{,}3 \cdot p/2 = 0{,}65 p \Rightarrow p(1 - 0{,}65) = 0 \Rightarrow p \cdot 0{,}35 = 0 \Rightarrow p = 0\) (única solução interior; \(\beta = 1{,}3 < 2\)). **Mercado colapsa por unraveling.** **[correta]**
- (iii) \(p^* = 0{,}5\).
- (iv) \(p^* = \beta/2 = 0{,}65\).

**(e)** A condição \(\beta < 2\) no setup de Akerlof com uniforme em \([0, 1]\) é:

- (i) Apenas técnica — não muda o resultado.
- (ii) **A condição que separa colapso completo (\(p^* = 0\)) de eq. interior. Para \(\beta < 2\), unraveling completo. Para \(\beta = 2\), continuum de equilíbrios degenerados. Para \(\beta > 2\), todos os tipos transacionam (\(\beta\) suficientemente alto compensa a média baixa do conjunto truncado).** **[correta]**
- (iii) Indica que comprador é avesso ao risco.
- (iv) Implica que vendedor sempre lucra.

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** O diagnóstico operacional da assimetria é a primeira coisa a fazer em qualquer problema da Aula 8. **Hidden type** = informação privada *antes* do contrato (sel. adversa); **hidden action** = ação privada *depois* do contrato (risco moral). Cada regime gera restrições distintas: IC sobre tipos vs. IC sobre ações. Akerlof (1970) é o caso canônico de hidden type em mercado de qualidade não-observável; o cálculo do preço de equilíbrio passa por \(p = \beta \cdot \mathbb{E}[\theta \mid \theta \le p]\), que sob uniforme entrega solução analítica imediata.

**2. Derivação.** Para uniforme \(\theta \sim U[0, 1]\), conjunto de vendedores ativos a preço \(p\) é \(\{\theta : \theta \le p\}\), distribuído uniformemente em \([0, p]\) — média \(p/2\). Comprador competitivo paga \(\beta \cdot \mathbb{E}[\theta \mid \theta \le p] = \beta p/2\). Equilíbrio: \(p = \beta p / 2 \Leftrightarrow p(1 - \beta/2) = 0\). Para \(\beta = 1{,}3\): \(p \cdot 0{,}35 = 0 \Rightarrow p = 0\). Limite \(\beta = 2\): qualquer \(p\) é eq. (degenerada). \(\beta > 2\): \(p = 0\) deixa de ser estável; eq. interior em \(p^* = \beta/2\) (eventualmente truncado em 1 pela viabilidade).

**3. Armadilha.** Item (a)(i): aluno confunde "doença crônica = ação" — não, propensão é *atributo* do agente, conhecido antes. Item (b)(i): aluno acha que vendedor "tem tipo" — para essa modelagem, o ponto é a *ação*. Item (d)(i): aluno aplica fórmula sem cuidado e usa \(\beta\) bruto. Item (d)(iv): aluno calcula \(\beta/2\) sem checar se 0 também é solução. Item (e)(iii): aluno confunde aversão a risco com a estrutura do unraveling.

**4. Extensão.** Diagnóstico vale para Aulas 8 *e* 9. Em **Aula 9** (sinalização — Spence 1973), o agente *informado* toma iniciativa via sinal \(e\) — variante do hidden type onde o equilíbrio é separador. Matching (Gale-Shapley 1962) lida com hidden type sob domínio combinatório (sem preços). **Empírico:** Akerlof, Spence e Stiglitz dividiram o **Nobel 2001** "for their analyses of markets with asymmetric information"; toda a tradição de informação assimétrica desce desses três papers.

**5. Peer-review.** Calibre 🟢. Cinco sub-itens cobrindo diagnóstico (3) + cálculo direto Akerlof (2). Distratores em (a)/(b)/(c) testam exatamente a confusão "tipo vs. ação" — pedagogicamente decisiva. Item (d) é o cálculo numérico de Akerlof com parâmetros simples; o aluno que sai sabendo apertar \(p = \beta p / 2\) tem o mecanismo na ponta da língua. Item (e) é conceitual sobre o threshold \(\beta = 2\). **Sem risco residual.** Aluno que faz tudo está consolidado em Akerlof e na tipologia operacional.

---

## Exercício 2 — 🟡 Akerlof unraveling com truncamento e proporção de tipos

### Enunciado

Mercado de carros usados com **dois tipos discretos** de qualidade: tipo \(L\) (limão) com qualidade \(\theta_L = 1\); tipo \(H\) (bom) com qualidade \(\theta_H = 4\). Proporção de limões: \(\lambda \in (0, 1)\). Vendedor conhece o tipo; comprador não. Vendedor reserva o próprio \(\theta\) (mínimo aceitável \(=\) qualidade); comprador valoriza \(\beta\theta\) com \(\beta = 1{,}3\) (assume-se \(\beta > 1\) para haver ganho potencial do comércio sob simetria). Comprador competitivo paga preço igual à valoração esperada condicional ao conjunto de vendedores ativos.

### Sub-itens

**(a)** Sob informação simétrica, ambos os tipos transacionam (\(\beta\theta > \theta\) para todo \(\theta\) com \(\beta > 1\)). Os preços competitivos por tipo seriam:

- (i) Preço único \(\bar p = \beta(\lambda \theta_L + (1 - \lambda)\theta_H) = 1{,}3(1 \cdot \lambda + 4(1-\lambda)) = 1{,}3(4 - 3\lambda)\).
- (ii) **\(p_L^{\text{sim}} = \beta\theta_L = 1{,}3\); \(p_H^{\text{sim}} = \beta\theta_H = 5{,}2\). Sob simetria, comprador identifica o tipo e paga valoração específica de cada um.** **[correta]**
- (iii) \(p^L = \theta_L = 1\); \(p^H = \theta_H = 4\) (preço igual à reserva do vendedor).
- (iv) Indeterminado sem mais hipóteses.

**(b)** Considere o **candidato a equilíbrio pooling** em que ambos os tipos transacionam ao mesmo preço \(\bar p\). Para que o equilíbrio pooling exista, \(\bar p\) precisa simultaneamente: (i) ser aceito pelo tipo \(H\) (\(\bar p \ge \theta_H = 4\)) e (ii) coincidir com a valoração esperada do comprador (\(\bar p = \beta(\lambda \theta_L + (1-\lambda) \theta_H)\)). A condição sobre \(\lambda\) para que pooling exista é:

- (i) Pooling sempre existe.
- (ii) **Pooling exige \(\beta(\lambda + 4(1-\lambda)) \ge 4 \Leftrightarrow \beta(4 - 3\lambda) \ge 4 \Leftrightarrow \lambda \le (4\beta - 4)/(3\beta) = (4 \cdot 1{,}3 - 4)/(3 \cdot 1{,}3) = 1{,}2/3{,}9 \approx 0{,}308\). Logo, pooling existe se e só se \(\lambda \lesssim 0{,}31\).** **[correta]**
- (iii) Pooling exige \(\lambda \ge 0{,}5\) (maioria de \(L\) "puxa o preço para baixo").
- (iv) Pooling existe sempre que \(\beta > 1\).

**(c)** Para \(\lambda = 0{,}5\) (alta proporção de limões), o que ocorre?

- (i) Pooling se mantém: \(\bar p = 1{,}3(4 - 1{,}5) = 3{,}25\); ambos transacionam.
- (ii) **Apenas o tipo \(L\) transaciona em equilíbrio (unraveling parcial). Sob \(\lambda = 0{,}5\), o "preço pooling implícito" \(1{,}3 \cdot 2{,}5 = 3{,}25 < 4 = \theta_H\); tipo \(H\) recusa. Removendo tipo \(H\) do conjunto ativo, comprador paga \(\beta \theta_L = 1{,}3\); tipo \(L\) aceita. Equilíbrio: apenas limões, preço \(p^* = 1{,}3\). **Bons saíram do mercado.****[correta]**
- (iii) Mercado colapsa para \(p^* = 0\); ninguém transaciona.
- (iv) Apenas o tipo \(H\) transaciona.

**(d)** Para \(\lambda = 0{,}1\) (poucos limões), o que ocorre?

- (i) Apenas \(L\) transaciona (mesmo resultado de (c)).
- (ii) **Pooling sustentável: \(\bar p = 1{,}3(4 - 0{,}3) = 4{,}81 > 4\). Comprador paga \(4{,}81\); ambos os tipos aceitam (tipo \(H\) recebe acima de \(\theta_H = 4\); tipo \(L\) recebe acima de \(\theta_L = 1\)). Mas tipo \(H\) sai com preço **abaixo** de seu first-best \(p^H_{\text{sim}} = 5{,}2\) — bom subsidia ruim no pool.** **[correta]**
- (iii) Mercado colapsa.
- (iv) Apenas \(H\) transaciona.

**(e)** A interpretação econômica geral é:

- (i) Pooling sempre Pareto-domina separação.
- (ii) **Sob \(\lambda\) suficientemente baixo, pooling sobrevive mas tipo \(H\) é cross-subsidizado por tipo \(L\) (recebe \(\bar p < p^H_{\text{sim}}\)). Sob \(\lambda\) alto, tipo \(H\) sai do mercado e sobra apenas \(L\) (lemons). Em ambos os casos, alocação é Pareto-dominada pelo first-best simétrico — ou pela perda de bem-estar do tipo \(H\) sub-cobrado, ou pela falha completa em transacionar bons carros.** **[correta]**
- (iii) Akerlof prevê que mercados sempre funcionam.
- (iv) Vendedor sempre lucra com a assimetria.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Akerlof com 2 tipos discretos é a versão pedagogicamente mais limpa do unraveling: a proporção \(\lambda\) de limões controla **se o pooling sobrevive** (\(\lambda\) baixo) **ou desaba** (\(\lambda\) alto, tipo \(H\) sai). O insight central — "bons saem primeiro, qualidade média cai, mais bons saem" — fica visível na comparação entre os dois regimes. A perda de bem-estar é a diferença entre a alocação simétrica (cada tipo recebe sua valoração) e a assimétrica (pooling subótimo ou unraveling parcial).

**2. Derivação.** Sob simetria: \(p^L_{\text{sim}} = 1{,}3 \cdot 1 = 1{,}3\); \(p^H_{\text{sim}} = 1{,}3 \cdot 4 = 5{,}2\). Pooling viável requer \(\bar p \ge \theta_H = 4\) e \(\bar p = \beta(\lambda \theta_L + (1-\lambda)\theta_H) = 1{,}3(\lambda + 4(1-\lambda)) = 1{,}3(4 - 3\lambda)\). Combinando: \(1{,}3(4 - 3\lambda) \ge 4 \Leftrightarrow 4 - 3\lambda \ge 4/1{,}3 \approx 3{,}077 \Leftrightarrow 3\lambda \le 0{,}923 \Leftrightarrow \lambda \le 0{,}308\). Para \(\lambda = 0{,}1\): \(\bar p = 1{,}3 \cdot 3{,}7 = 4{,}81 \ge 4\) ✓; pooling. Para \(\lambda = 0{,}5\): \(\bar p_{\text{cand}} = 1{,}3 \cdot 2{,}5 = 3{,}25 < 4\); tipo \(H\) recusa; pool quebra; equilíbrio com apenas \(L\) ativo, preço \(\beta \theta_L = 1{,}3\).

**3. Armadilha.** Item (a)(iii): aluno confunde "preço competitivo" com "reserva do vendedor" — sob simetria, comprador paga sua valoração, não a reserva. Item (b)(iii): aluno inverte o sentido da desigualdade. Item (c)(iii): aluno extrapola o caso uniforme contínuo (\(p^* = 0\)) para o caso discreto sem ajustar — em discreto, tipo \(L\) ainda é vendido a \(\beta \theta_L\) > 0. Item (d)(i): aluno aplica regra "alto \(\lambda \Rightarrow\) pooling falha" sem condicionar em \(\lambda\) realmente alto. Item (e)(i): aluno acha que pooling é sempre Pareto-superior — não é, pode ser Pareto-incomparável (\(H\) prefere separação se pudesse).

**4. Extensão.** O resultado generaliza a Akerlof contínuo (uniforme em \([0, \overline{\theta}]\)) — versão do Exercício 1 deste bundle. Conexão com **Aula 9 (Spence)**: sinalização (educação como sinal) é um dos mecanismos pelos quais tipo \(H\) pode "sair do pool" sem ser confundido com \(L\) — refinamento Cho-Kreps (1987) aplicado. Outra via: **garantia/reputação** (Klein-Leffler 1981, *J. Political Economy* 89(4): 615–641 — DOI [10.1086/260996](https://doi.org/10.1086/260996)) cria mecanismo de auto-revelação. **No Brasil:** concessionárias com programa de "seminovos certificados" cobram prêmio precisamente porque a inspeção + garantia atenuam a assimetria; preço de transação tem distribuição bimodal (concessionária vs. OLX particular) — fato empírico consistente com Akerlof.

**5. Peer-review.** Calibre 🟡. Cálculo numérico em duas regiões de \(\lambda\) + interpretação econômica. Item (b) é o mais técnico — exige derivar a desigualdade que define o threshold. Itens (c) e (d) testam o aluno em pontos opostos do parâmetro \(\lambda\); a comparação entre eles revela se ele entendeu o mecanismo. **Tradeoff de tempo:** ~14 min, dentro do alvo. **Risco residual:** moderado — aluno com pressa pode aplicar a fórmula contínua sem checar viabilidade discreta no item (c). **Decisão pedagógica explícita:** modelo discreto 2-tipos foi escolhido para isolar a intuição "\(\lambda\) baixo \(\Rightarrow\) pooling, \(\lambda\) alto \(\Rightarrow\) unraveling parcial"; o caso contínuo do Exercício 1 cobre o limite de unraveling completo.

---

## Exercício 3 — 🟡 Rothschild-Stiglitz separador com 2 tipos + single-crossing

### Enunciado

Mercado de seguro competitivo com **2 tipos de risco**. Riqueza inicial \(W = 100\). Sinistro de tamanho \(L = 56\). Probabilidade de sinistro: tipo \(H\) com \(\pi^H = 0{,}5\); tipo \(L\) com \(\pi^L = 0{,}25\). Proporção \(\lambda\) high, \(1-\lambda\) low. Bernoulli (utilidade do agente sob riqueza ex-post): \(u(W) = \sqrt{W}\) (avesso ao risco). Agente conhece o próprio tipo; seguradora não. Contratos competitivos: cada contrato \((p, c)\) — prêmio \(p\) (paga sempre) + cobertura \(c \in [0, L]\) (recebe se sinistro). Lucro esperado da seguradora sob tipo \(\theta\): \(\Pi^\theta = p - \pi^\theta c\); equilíbrio competitivo entrega \(\Pi^\theta = 0\). **Single-crossing** sob avessão de risco e \(\pi^H > \pi^L\): tipo \(H\) tem maior disposição-marginal-a-pagar por cobertura. *(Calibração escolhida para que a IC do tipo \(H\) reduza a uma quadrática com raiz inteira — fechamento algébrico exibível.)*

### Sub-itens

**(a)** Sob informação simétrica e equilíbrio competitivo (lucro zero por tipo), o contrato ótimo para cada tipo é:

- (i) \(c^H = c^L = 0\) (sem seguro).
- (ii) **\(c^H = c^L = L = 56\) (cobertura completa); prêmios actuarialmente justos: \(p^H = \pi^H L = 28\); \(p^L = \pi^L L = 14\). Cada tipo atinge \(\sqrt{W - p^\theta}\) — utilidade certa sem risco residual.** **[correta]**
- (iii) \(c^H = L; c^L = 0\) (apenas \(H\) compra seguro).
- (iv) Indeterminado.

**(b)** Sob informação **assimétrica** (seguradora não observa tipo), considere o candidato a equilíbrio **separador**: \((p^H_*, c^H_*)\) e \((p^L_*, c^L_*)\). Em equilíbrio competitivo separador:

- (i) Tipo \(L\) recebe cobertura completa; tipo \(H\) recebe cobertura parcial.
- (ii) **Tipo \(H\) recebe cobertura completa ao prêmio justo \(p^H_* = \pi^H L = 28, c^H_* = L = 56\); tipo \(L\) recebe cobertura *parcial* a prêmio justo \(p^L_* = \pi^L c^L_*\), com \(c^L_* < L\) tal que **IC do tipo \(H\) é binding** (tipo \(H\) é indiferente entre seu próprio contrato e o de \(L\)).** **[correta]**
- (iii) Ambos recebem cobertura completa ao prêmio médio.
- (iv) Não existe equilíbrio.

**(c)** A IC do tipo \(H\) binding implica:

\[\sqrt{W - p^H_*} = (1 - \pi^H)\sqrt{W - p^L_*} + \pi^H \sqrt{W - p^L_* - L + c^L_*}.\]

Substituindo \(p^H_* = 28\), \(W = 100\), \(\pi^H = 0{,}5\), \(p^L_* = 0{,}25 c^L_*\), \(L = 56\):

- (i) \(\sqrt{72} = 0{,}5\sqrt{100 - 0{,}25 c^L_*} + 0{,}5\sqrt{100 - 0{,}25 c^L_* - 56 + c^L_*}\) reduz para \(c^L_* = 56\).
- (ii) **\(\sqrt{72} = 0{,}5\sqrt{100 - 0{,}25 c^L_*} + 0{,}5\sqrt{44 + 0{,}75 c^L_*}\); elevando ao quadrado e simplificando, a equação reduz à quadrática \((c^L_*)^2 - 400 c^L_* + 3136 = 0\), com discriminante \(160000 - 12544 = 147456 = 384^2\). Raízes \(c^L_* \in \{8,\ 392\}\); a solução econômica (\(c^L_* < L = 56\)) é \(\boxed{c^L_* = 8}\), com prêmio \(p^L_* = 0{,}25 \cdot 8 = 2\). Cobertura estritamente parcial.** **[correta]**
- (iii) \(c^L_* = 56\) (cobertura completa).
- (iv) \(c^L_* = 0\) (sem seguro).

**(d)** A interpretação econômica do equilíbrio separador é:

- (i) Tipo \(H\) é punido injustamente.
- (ii) **Tipo \(L\) (baixo risco) **carrega o ônus da assimetria**: recebe cobertura sub-ótima (estritamente abaixo do seu first-best simétrico de cobertura completa) para que o tipo \(H\) (alto risco) não seja incentivado a se passar por \(L\). Distorção de second-best: o "bom risco paga o preço da assimetria". Aqui \(c^L_*/L = 8/56 \approx 14\%\) — distorção severa, ilustração quantitativa da força do mecanismo.** **[correta]**
- (iii) Tipo \(H\) e \(L\) ficam indiferentes ao tipo simétrico.
- (iv) Tipo \(L\) lucra com a assimetria.

**(e)** Sobre **inexistência possível** do equilíbrio competitivo (resultado central de R-S 1976):

- (i) Equilíbrio separador sempre existe.
- (ii) **Para \(\lambda\) (proporção de altos riscos) **suficientemente baixo**, o pooling Pareto-domina o separador (ambos os tipos preferem o pooling). Mas pooling não é Nash em equilíbrio competitivo: uma seguradora desviante pode oferecer contrato que atrai apenas tipo \(L\) (cobertura parcial mais barata) e quebra o pooling. Logo nem separador (Pareto-pior) nem pooling (não-Nash) sobrevivem como equilíbrio — **R-S provam que pode não existir equilíbrio competitivo**.** **[correta]**
- (iii) Pooling é sempre Nash.
- (iv) Inexistência ocorre apenas com \(\lambda\) alto.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** O equilíbrio R-S separador é a estrutura canônica de seguro com seleção adversa: tipo \(H\) sai com seu first-best (cobertura completa, prêmio justo); tipo \(L\) carrega a distorção (cobertura parcial). A propriedade **single-crossing** (sob avessão + \(\pi^H > \pi^L\), curvas de indiferença \(H\) e \(L\) cruzam exatamente uma vez) é o que garante que o separador é factível. Inexistência ocorre quando \(\lambda\) é baixo: pooling Pareto-domina mas é não-Nash; nem separador nem pooling sobrevivem. **Distorção do "bom risco" é o preço estrutural da assimetria** — aqui materializada em \(c^L_*/L \approx 14\%\), severa por construção pedagógica.

**2. Derivação.** **First-best simétrico:** lucro zero \(\Rightarrow p = \pi c\); CPO do agente avesso (igualar utilidade marginal entre estados) \(\Rightarrow c = L\). \(p^H = 0{,}5 \cdot 56 = 28\); \(p^L = 0{,}25 \cdot 56 = 14\). **Separador R-S:** \(H\) pega seu first-best (\(c^H_* = 56,\ p^H_* = 28\)); \(L\) pega contrato sobre sua linha de oferta justa (\(p^L_* = 0{,}25 c^L_*\)) com \(c^L_*\) tal que IC do \(H\) é binding. IC do \(H\): \(EU^H(\text{contrato }H) = EU^H(\text{contrato }L)\). LHS: \(\sqrt{W - p^H_*} = \sqrt{72}\) (sob cobertura completa, sem risco). RHS: \(0{,}5\sqrt{W - p^L_*} + 0{,}5\sqrt{W - p^L_* - L + c^L_*} = 0{,}5\sqrt{100 - 0{,}25 c^L_*} + 0{,}5\sqrt{44 + 0{,}75 c^L_*}\). **Fechamento algébrico.** Sejam \(A = \sqrt{100 - 0{,}25 c^L_*},\ B = \sqrt{44 + 0{,}75 c^L_*}\). Note que \(B^2 - A^2 = c^L_* - 56\), e a IC vira \(A + B = 2\sqrt{72}\). Logo \(B - A = (c^L_* - 56)/(2\sqrt{72})\), e somando: \(2B = 2\sqrt{72} + (c^L_* - 56)/(2\sqrt{72})\). Substituindo em \(B^2 = 44 + 0{,}75 c^L_*\) e simplificando, \((c^L_* - 56)^2 = 4 \cdot 72 \cdot c^L_* = 288\, c^L_*\), donde \((c^L_*)^2 - 400 c^L_* + 3136 = 0\). Discriminante: \(160000 - 4 \cdot 3136 = 160000 - 12544 = 147456 = 384^2\). Raízes: \(c^L_* = (400 \pm 384)/2 \in \{8,\ 392\}\). A raiz \(392\) viola \(c \le L = 56\) (e a viabilidade econômica), donde **\(c^L_* = 8\) e \(p^L_* = 2\)**. **Verificação:** LHS \(= \sqrt{72} = 6\sqrt{2} \approx 8{,}485\). RHS \(= 0{,}5\sqrt{98} + 0{,}5\sqrt{50} = 0{,}5 \cdot 7\sqrt{2} + 0{,}5 \cdot 5\sqrt{2} = 6\sqrt{2}\) ✓. **Riquezas ex-post do tipo \(L\) no separador:** estado-1 \(W - p^L_* = 98\); estado-2 \(W - p^L_* - L + c^L_* = 50\). Como \(\sqrt{98} \neq \sqrt{50}\), o tipo \(L\) carrega risco residual — característica do second-best.

**3. Armadilha.** Três armadilhas estruturais. **(i) Falsa simetria do separador** — item (b)(i) inverte tipos, esperando "alto risco fica com menos seguro" por intuição moralista. O mecanismo é o oposto: tipo \(H\) recebe seu first-best precisamente porque é o tipo *com mais incentivo a mimetizar*; quem se distorce é \(L\). **(ii) Confusão entre IR e IC** — aluno tenta achar \(c^L_*\) impondo lucro zero ou utilidade reservada, e não percebe que o que define \(c^L_*\) é a IC binding do *outro* tipo (\(H\)). É o tradeoff seguro-vs-prêmio que NÃO está em jogo aqui — em jogo está o tradeoff *fazer o \(H\) recusar o contrato de \(L\)*. **(iii) Aproximar em vez de fechar** — o aluno cético tenta resolver numericamente, chega em algum valor entre 5 e 15, e marca "(ii) \(c^L_* < L\)" sem perceber que a álgebra fecha em inteiro \(c^L_* = 8\). Item (e)(iii) revisita o erro do "pooling sempre sobrevive" — se sobrevivesse, R-S não seria interessante.

**4. Extensão.** Inexistência de R-S abre porta para **regulação institucional**. Aplicações canônicas: (a) **ANS no Brasil** (Lei 9.656/1998) força *pooling regulado* via faixas etárias máximas, rol mínimo de cobertura, portabilidade — cross-subsidy explícito. (b) **ACA US 2010** combina (i) proibição de underwriting, (ii) mandato individual, (iii) subsídios cruzados — viabiliza pooling que mercado puro não sustenta. **Empírico:** Hackmann-Kolstad-Kowalski (2015, *AER* 105(3): 1030–1066, DOI [10.1257/aer.20130758](https://doi.org/10.1257/aer.20130758)) documentaram unraveling parcial em estados US que removeram mandato. **Conexão com Exercício 6 desta lista:** lá comparamos pooling regulado com first-best em economia de saúde simplificada, materializando esses boxes em modelo formal. **Aula 9** (sinalização) introduz mecanismo descentralizado via revelação do agente informado — alternativa às regulações coletivas. **Generalização:** com utilidade \(u = \sqrt{\cdot}\), \(\pi^H = 1/2\) e \(\pi^L = 1/4\), a álgebra fecha em \((c^L_*)^2 - 4W c^L_* + L^2 = 0\); raízes inteiras quando \((2W)^2 - L^2\) é quadrado perfeito. Aqui, \((W, L) = (100, 56)\) é tripla pitagórica via \(56^2 + 192^2 = 200^2\) — escolha pedagógica deliberada.

**5. Peer-review.** Calibre 🟡 (mantido). Item (a) revisa first-best com novos números; (b)–(d) cobrem separador R-S com IC binding e fechamento algébrico exibível; (e) abre inexistência. **Tradeoff de tempo:** ~18 min — no topo do alvo para 🟡 (a derivação algébrica do item (c) é a parte mais densa, ~8 min). **Risco residual:** baixo — diferente da versão anterior (com \(L = 64\), que dava aproximação numérica entre 25 e 35), aqui o aluno tem **fechamento exibível**: \((c^L_*)^2 - 400 c^L_* + 3136 = 0\) com raiz inteira \(c^L_* = 8\). **Decisão pedagógica explícita:** recalibrei \(L = 64 \to 56\) precisamente para entregar fechamento — \(56^2 + 192^2 = 200^2\) garante discriminante quadrado perfeito. **Tradeoff dessa escolha:** \(c^L_*/L \approx 14\%\) é severo (intuitivamente "muita distorção"), mas isso é *precisamente* o ponto: o modelo R-S pode entregar distorções arbitrariamente fortes — a regulação institucional do Exercício 6 é a resposta. Não tentei suavizar para "\(c/L \approx 50\%\)" porque (i) isso exigiria parâmetros menos canônicos (e.g., \(\pi^L\) próximo de \(\pi^H\), violando single-crossing claro) e (ii) a severidade aqui é *feature*, não *bug*. **Risco residual aberto:** aluno que ignora a estrutura da quadrática pode tentar tentativa-e-erro e gastar tempo demais; o sub-item (c) explicita o caminho (elevar ao quadrado, reduzir, resolver) para mitigar.

---

## Exercício 4 — 🟡 Holmström principal-agente: first-best (ação observável)

> **Nota notacional.** A partir deste exercício (e idem no Ex 5), a letra \(c\) denota **custo de esforço** \(c(a)\) — distinta da **cobertura** \(c\) usada no Exercício 3 (R-S) e no Exercício 6 (ANS+ACA). Mude o chip mental.

### Enunciado

Principal (P, neutro ao risco) contrata Agente (A, avesso ao risco, Bernoulli \(u(w) = \sqrt{w}\)) para realizar tarefa. Esforço \(a \in \{a_L, a_H\}\) com custos \(c(a_L) = 0\), \(c(a_H) = 5\). Output \(y \in \{y_L = 0, y_H = 144\}\). Probabilidade de \(y_H\): \(\pi_H = 0{,}75\) sob \(a_H\); \(\pi_L = 0{,}25\) sob \(a_L\). Reservation utility \(\bar U = 7\) (alternativa fora). **Contrato:** salário \(w(y)\) condicional ao output observável.

### Sub-itens

**(a)** Sob ação **observável** (first-best), Principal especifica diretamente \(a\) e oferece **salário fixo** \(w^*\) que satisfaz IR com igualdade. Para induzir \(a_H\), o salário fixo \(w^*_H\) é:

- (i) \(w^*_H = 25\): IR é \(\sqrt{w^*_H} - 5 = 7 \Rightarrow \sqrt{w^*_H} = 12 \Rightarrow w^*_H = 144\). Mas o aluno calcula \(5 + 7 = 12\) e ao invés de elevar ao quadrado divide por raiz, errando.
- (ii) **\(w^*_H = 144\): IR binding \(\sqrt{w^*_H} - c(a_H) = \bar U \Rightarrow \sqrt{w^*_H} = \bar U + c(a_H) = 7 + 5 = 12 \Rightarrow w^*_H = 144\). Salário fixo (independente de \(y\)) — Principal absorve todo o risco.** **[correta]**
- (iii) \(w^*_H = 49\): aluno usa \(\sqrt{w} = 7\), ignora custo de esforço.
- (iv) \(w^*_H = 12\).

**(b)** Para induzir \(a_L\), o salário fixo \(w^*_L\) é:

- (i) \(w^*_L = 0\): aluno acha que sem esforço o agente "trabalha de graça".
- (ii) **\(w^*_L = 49\): IR binding \(\sqrt{w^*_L} - c(a_L) = \bar U \Rightarrow \sqrt{w^*_L} = \bar U + 0 = 7 \Rightarrow w^*_L = 49\).** **[correta]**
- (iii) \(w^*_L = 12\).
- (iv) \(w^*_L = 7\).

**(c)** Sob first-best, **se Principal contratar**, qual esforço maximiza o **lucro esperado**?

\[E\Pi(a) = \pi_a y_H + (1-\pi_a) y_L - w^*_a.\]

- (i) \(a_L\): \(0{,}25 \cdot 144 - 49 = -13\); \(a_H\): \(0{,}75 \cdot 144 - 144 = -36\). Principal não contrata em nenhum esforço (tecnicamente verdadeiro sob outside option \(\Pi^P_{\text{out}} = 0\); fora do escopo desta pergunta, que assume contratação como dado).
- (ii) **\(a_H\): \(E\Pi(a_H) = 0{,}75 \cdot 144 + 0{,}25 \cdot 0 - 144 = 108 - 144 = -36\). \(a_L\): \(E\Pi(a_L) = 0{,}25 \cdot 144 + 0{,}75 \cdot 0 - 49 = 36 - 49 = -13\). Sob first-best, **\(a_L\) é preferido** porque o ganho de output (108 - 36 = 72) não compensa a diferença de salário (144 - 49 = 95).** **[correta]**
- (iii) \(a_H\) sempre — alto esforço gera mais output.
- (iv) Empate.

**(d)** A intuição econômica do resultado de (c) é:

- (i) Agente avesso ao risco paga "prêmio de risco" — por isso \(a_H\) é caro.
- (ii) **Os parâmetros foram escolhidos para que o ganho marginal de output induzido por \(a_H\) (\(\Delta y_H \cdot \Delta\pi = 144 \cdot 0{,}5 = 72\)) seja menor que o custo marginal de salário (\(\Delta w^* = 144 - 49 = 95\)). É uma decisão de viabilidade econômica: nem todo esforço alto vale a pena, mesmo sob first-best. Mudando \(\pi_H\) para 0,9 ou \(c(a_H)\) para 2, \(a_H\) viraria preferido.** **[correta]**
- (iii) Sob first-best, sempre é melhor induzir baixo esforço.
- (iv) Sob first-best, sempre é melhor induzir alto esforço.

**(e)** Suponha agora que o reservation utility do agente caia para \(\bar U = 5\) (o agente tem alternativa fora menos atraente). Como muda \(w^*_H\) e a decisão do Principal entre \(a_L\) e \(a_H\)?

- (i) \(w^*_H\) sobe para 196.
- (ii) **\(w^*_H\) cai: \(\sqrt{w^*_H} = 5 + 5 = 10 \Rightarrow w^*_H = 100\). \(w^*_L = 25\) (\(\sqrt{w^*_L} = 5\)). \(E\Pi(a_H) = 108 - 100 = 8\); \(E\Pi(a_L) = 36 - 25 = 11\). **\(a_L\) ainda preferido**, mas margem caiu — \(a_H\) está agora mais perto de viabilidade. Se \(\bar U\) cair mais (e.g., para 2), em algum ponto \(a_H\) vira preferido.** **[correta]**
- (iii) Decisão muda imediatamente para \(a_H\).
- (iv) Não muda nada.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** No principal-agente de Holmström sob ação **observável** (first-best), o contrato ótimo é **salário fixo** que satisfaz IR binding. Principal neutro absorve **todo o risco** — Pareto-eficiente sob avessão de A. A questão "qual esforço induzir" depende da comparação entre ganho de output esperado e custo de salário; **não é automaticamente alto esforço**. Os parâmetros importam: aumentar \(\pi_H\) ou reduzir \(c(a_H)\) torna alto esforço mais atraente.

**2. Derivação.** IR sob \(a_H\): \(\sqrt{w^*_H} - c(a_H) = \bar U \Rightarrow \sqrt{w^*_H} = 7 + 5 = 12 \Rightarrow w^*_H = 144\). IR sob \(a_L\): \(\sqrt{w^*_L} = 7 + 0 = 7 \Rightarrow w^*_L = 49\). Lucros: \(E\Pi(a_H) = 108 - 144 = -36\); \(E\Pi(a_L) = 36 - 49 = -13\). Principal prefere \(a_L\) (menos negativo). **Sensibilidade a \(\bar U\):** \(\bar U = 5 \Rightarrow w^*_H = 100, w^*_L = 25\); \(E\Pi(a_H) = 8\); \(E\Pi(a_L) = 11\); ainda \(a_L\). Se \(\bar U = 0\) (limite): \(w^*_H = 25, w^*_L = 0\); \(E\Pi(a_H) = 83, E\Pi(a_L) = 36\); aí \(a_H\) preferido — alto esforço viabilizado por reservation baixa.

**3. Armadilha.** Item (a)(i)/(iii): erros aritméticos clássicos com raiz quadrada. Item (b)(i): aluno acha que sem esforço o salário é zero — ignora IR. Item (c)(iii): aluno aplica regra "alto esforço = mais output \(\Rightarrow\) sempre escolher" sem checar viabilidade econômica. Item (d)(iii)/(iv): aluno generaliza incorretamente — não há regra universal, depende dos parâmetros. Item (e)(iii): aluno acha que mudança em \(\bar U\) tem efeito imediato e binário; na verdade, há threshold contínuo.

**4. Extensão.** First-best é o **benchmark** contra o qual second-best (Exercício 5) será comparado. Sob neutralidade de risco do agente (\(u\) linear), first-best é facilmente alcançável mesmo com ação não-observável via "contrato franchise" (agente paga taxa fixa, fica residual claimant) — o problema do risco moral **desaparece**. **No Brasil:** consultorias de gestão (Big 4 em projetos com performance bonus) operam em regime próximo ao first-best quando esforço é observável via supervisão de cliente; quando não, viram principal-agente clássico. **Aula 9** introduz sinalização do agente — mecanismo *descendente* de revelação que pode alcançar first-best em alguns regimes.

**5. Peer-review.** Calibre 🟡. Cinco sub-itens cobrindo cálculo de IR com Bernoulli \(\sqrt{\cdot}\) (limpo); comparação de lucros; sensibilidade. Item (c) é o mais formativo — quebra a intuição ingênua "alto esforço sempre". Item (e) testa raciocínio comparativo. **Tradeoff de tempo:** ~12 min, dentro do alvo. **Risco residual:** baixo — todas as contas são lineares ou de raiz quadrada simples. **Decisão pedagógica explícita:** parâmetros escolhidos para que \(a_L\) seja preferido em first-best, contrariando a intuição "máximo esforço sempre" — efeito pedagógico forte. O Exercício 5 (second-best) inverte: usa parâmetros distintos onde \(a_H\) é desejado e o problema de incentivo aparece.

---

## Exercício 5 — 🔴 Holmström principal-agente: second-best (ação não-observável)

### Enunciado

Mesmo setup do Exercício 4 com **parâmetros recalibrados** para tornar \(a_H\) o esforço desejado: Principal neutro; Agente avesso com \(u(w) = \sqrt{w}\); \(c(a_L) = 0\), \(c(a_H) = 4\); \(y_L = 0\), \(y_H = 100\); \(\pi_H = 0{,}7\), \(\pi_L = 0{,}3\); \(\bar U = 4\). Sob **ação observável** (verifique como warm-up): \(w^*_H = 64\), \(E\Pi(a_H) = 70 - 64 = 6\); \(w^*_L = 16\), \(E\Pi(a_L) = 30 - 16 = 14\). Pelo padrão do Exercício 4, *a_L* é first-best. **Mas** suponha que Principal **deseja** induzir \(a_H\) (porque \(y_H\) tem efeito de longo prazo não-modelado, ou política de empresa). O foco aqui é o programa de second-best: ação não-observável, Principal força \(a_H\) via contrato dependente de \(y\).

### Sub-itens

**(a)** Sob ação **não-observável**, induzir \(a_H\) com **salário fixo** é incompatível porque:

- (i) IR não pode ser satisfeito.
- (ii) **Salário fixo \(w_H = w_L = w\) implica utilidade do agente \(\sqrt{w} - c(a)\) — agente desviaria para \(a_L\) (custo zero) sem reduzir salário. **IC sob salário fixo é violada para \(a_H\).** Para induzir \(a_H\), salário tem de **depender** do output observável \(y\).** **[correta]**
- (iii) Agente sempre escolhe \(a_H\) sob salário fixo.
- (iv) Salário fixo é Pareto-superior.

**(b)** O programa de second-best (induzindo \(a_H\)) é

\[\min_{w_H, w_L} \pi_H w_H + (1-\pi_H) w_L \quad\text{s.a.}\]

\[\text{(IR)}\quad \pi_H \sqrt{w_H} + (1-\pi_H)\sqrt{w_L} - c(a_H) \ge \bar U,\]
\[\text{(IC)}\quad (\pi_H - \pi_L)[\sqrt{w_H} - \sqrt{w_L}] \ge c(a_H) - c(a_L).\]

Sob hipótese padrão (P induz \(a_H\), agente avesso, IC e IR ambas binding), o sistema linear em \((\sqrt{w_H}, \sqrt{w_L})\) é:

- (i) IR: \(0{,}7\sqrt{w_H} + 0{,}3\sqrt{w_L} = 8\); IC: \(\sqrt{w_H} - \sqrt{w_L} = 4\). **Erro:** ignora o coeficiente \((\pi_H - \pi_L) = 0{,}4\) na IC binding, dividindo por 1 em vez de 0{,}4 (ou seja, esquece que IC vem ponderada pela diferença de probabilidades).
- (ii) **IR: \(0{,}7\sqrt{w_H} + 0{,}3\sqrt{w_L} = 8\); IC: \(\sqrt{w_H} - \sqrt{w_L} = 10\).** Substituindo \(c(a_H) = 4, \bar U = 4\) na IR: \(0{,}7\sqrt{w_H} + 0{,}3\sqrt{w_L} - 4 = 4 \Rightarrow 0{,}7\sqrt{w_H} + 0{,}3\sqrt{w_L} = 8\); na IC: \((0{,}7 - 0{,}3)[\sqrt{w_H} - \sqrt{w_L}] = 4 - 0 \Rightarrow 0{,}4(\sqrt{w_H} - \sqrt{w_L}) = 4 \Rightarrow \sqrt{w_H} - \sqrt{w_L} = 10\). **[correta]**
- (iii) Sistema diferente: IR e IC simultaneamente impossíveis sob esses parâmetros.
- (iv) Sistema é não-linear (raízes quadradas) — exigiria método numérico.

**(c)** Resolvendo o sistema de (b): das equações IR e IC binding,

- (i) \(\sqrt{w_H} = 11, \sqrt{w_L} = 1; w_H = 121, w_L = 1\): de IC, \(\sqrt{w_H} = 10 + \sqrt{w_L}\); substituindo em IR: \(0{,}7(10 + \sqrt{w_L}) + 0{,}3\sqrt{w_L} = 8 \Rightarrow 7 + \sqrt{w_L} = 8 \Rightarrow \sqrt{w_L} = 1\); logo \(\sqrt{w_H} = 11\). [correta]
- (ii) \(\sqrt{w_H} = \sqrt{w_L} = 8\) (salário fixo).
- (iii) \(w_H = 100, w_L = 0\).
- (iv) Sistema sem solução.

**(d)** Salário esperado sob second-best: \(\mathbb{E}[w] = \pi_H w_H + (1-\pi_H) w_L\):

- (i) \(\mathbb{E}[w] = 64\) (igual ao first-best).
- (ii) **\(\mathbb{E}[w] = 0{,}7 \cdot 121 + 0{,}3 \cdot 1 = 84{,}7 + 0{,}3 = 85\). **Diferença em relação ao first-best (\(w^*_H = 64\)) é \(85 - 64 = 21\)** — esse é o **prêmio de risco moral**: custo extra que Principal paga para induzir \(a_H\) com agente avesso sob ação não-observável.** **[correta]**
- (iii) \(\mathbb{E}[w] = 60\) (mais barato que first-best).
- (iv) \(\mathbb{E}[w] = 121\) (sempre paga máximo).

**(e)** A interpretação econômica do prêmio de risco moral é:

- (i) Custo de mentira do agente.
- (ii) **O Principal está forçado a impor variabilidade no salário (\(w_H = 121, w_L = 1\)) para criar incentivo (IC binding); essa variabilidade impõe risco ao agente avesso, que exige compensação adicional na média (IR binding na nova condição de utilidade esperada). Em first-best, \(w\) seria fixo em 64; em second-best, \(\mathbb{E}[w] = 85\). **A diferença \(\mathbb{E}[w]_{SB} - w_{FB} = 21\) é a "sombra" da assimetria informacional**.** **[correta]**
- (iii) Custo de tecnologia.
- (iv) Diferencial entre \(a_H\) e \(a_L\) — sem relação com risco.

**(f)** **Equivalência sob neutralidade do agente.** Suponha que o agente seja **neutro ao risco** (Bernoulli \(u(w) = w\) linear) — todos os outros parâmetros do Exercício 5 mantidos. Sob essas condições, o Principal pode induzir \(a_H\) sob ação não-observável com:

- (i) Mesma estrutura de second-best (salário variável).
- (ii) **Contrato franchise: Principal "vende" o output bruto ao agente cobrando taxa fixa \(F\), agente fica residual claimant. Agente neutro escolhe \(a_H\) por interesse próprio. Sob neutralidade de A, **second-best = first-best**: o trade-off "seguro vs. incentivo" desaparece porque agente não tem aversão a risco para "comprar". A perda de bem-estar por risco moral nasce **especificamente** da aversão de risco do agente.** **[correta]**
- (iii) Sem solução factível.
- (iv) Salário fixo igual ao first-best.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** O contrato second-best em Holmström com ação não-observável e agente avesso resolve o trade-off **seguro vs. incentivo**: Principal força \(w_H > w_L\) para criar IC (incentivo); agente avesso paga "prêmio de risco" para a perda de seguro (IR sobe). **Prêmio de risco moral** = \(\mathbb{E}[w]_{SB} - w_{FB}\) é a "sombra da informação assimétrica". Sob agente **neutro** ao risco, second-best = first-best (contrato franchise) — o problema desaparece.

**2. Derivação.** Sistema linear em \((\sqrt{w_H}, \sqrt{w_L})\): de IC binding \(0{,}4(\sqrt{w_H} - \sqrt{w_L}) = 4 \Rightarrow \sqrt{w_H} - \sqrt{w_L} = 10\). De IR binding \(0{,}7\sqrt{w_H} + 0{,}3\sqrt{w_L} = 8\). Substituindo a 1ª na 2ª: \(0{,}7(10 + \sqrt{w_L}) + 0{,}3\sqrt{w_L} = 8 \Rightarrow 7 + \sqrt{w_L} = 8 \Rightarrow \sqrt{w_L} = 1, w_L = 1\); \(\sqrt{w_H} = 11, w_H = 121\). \(\mathbb{E}[w] = 0{,}7(121) + 0{,}3(1) = 84{,}7 + 0{,}3 = 85\). Comparação com first-best (\(w^* = 64\)): prêmio = 21. **Equivalência neutra:** sob \(u(w) = w\) linear, a CPO em \(w\) substitui \(1/u'(w) = \mu + \nu \cdot \text{score}\) por constante = constante; resolve-se com \(\nu = 0\), IC não binding — Principal pode pagar fixo. Equivalentemente: vende output ao agente, agente residual claimant escolhe \(a_H\) endogenamente.

**3. Armadilha.** Item (a)(iii): aluno acha que agente "trabalha duro por padrão" — falso, ação não-observável \(\Rightarrow\) agente desvia. Item (c)(ii): aluno aplica solução de first-best (salário fixo). Item (d)(i): aluno confunde first-best com second-best em valor médio. Item (e)(i): aluno usa narrativa moralista — "custo de mentira". Item (f)(i): aluno generaliza second-best avesso para neutro sem checar.

**4. Extensão.** **Fórmula informativa de Holmström (1979):** em modelo contínuo, salário ótimo \(w(y)\) depende de \(y\) **apenas via** o score de likelihood \(\partial \ln f(y\mid a)/\partial a\). Sinais informativos sobre \(a\) entram no contrato; sinais não-informativos não. **Aplicação:** **Holmström-Milgrom (1987, *Econometrica* 55(2): 303–328, DOI [10.2307/1913238](https://doi.org/10.2307/1913238))** estendem para domínio contínuo + relative performance evaluation (filtrar ruído comum entre agentes via comparação com peers). **Stock options para CEO** são o exemplo canônico: variabilidade do salário em função do preço da ação cria incentivo; "claw-back" e "RSU" são refinamentos para alinhar leque de ações. **No Brasil:** **Bolsa Família** com condicionalidade de frequência escolar (\(\ge 85\%\)) é um *contrato condicional* implementando IC para "esforço educacional" — Glewwe-Olinto (2004, World Bank) documenta efeitos. **Aula 9 (sinalização)** lida com o caso *dual*: agente *informado* toma iniciativa via sinal — Spence é o complemento natural do principal-agente.

**5. Peer-review.** Calibre 🔴. Item (b) é "sub-item de redundância" intencional — força aluno a verificar a derivação (não cair em distrator (iii)/(iv)). Item (c) é cálculo do sistema 2x2 — limpo com \(\sqrt{w}\). Item (d) calcula prêmio de risco moral. Item (e) testa interpretação. Item (f) introduz equivalência neutra como fechamento conceitual. **Tradeoff de tempo:** ~22 min — no topo do alvo para 🔴 (justificado: é o ferramental central). **Risco residual:** moderado — aluno com pressa pode não verificar IR e IC ambas binding antes de resolver; o gabarito explicita que isso é hipótese padrão (otimal sob avessão estrita do agente). **Decisão pedagógica explícita:** parâmetros escolhidos para que sistema 2x2 entregue solução de números inteiros (\(w_L = 1, w_H = 121\)) — visualização limpa do prêmio de risco moral (21).

---

## Exercício 6 — 🔴 Aplicação: Affordable Care Act + ANS como resposta institucional a R-S

### Enunciado

Considere uma economia simplificada de seguros de saúde com **2 tipos** de risco e proporções fixas. Tipo \(H\) (alto risco): \(\pi^H = 0{,}5\), proporção \(\lambda = 0{,}2\). Tipo \(L\) (baixo risco): \(\pi^L = 0{,}1\), proporção \(1 - \lambda = 0{,}8\). Riqueza inicial \(W = 100\); sinistro \(L = 50\). Bernoulli \(u(W) = \sqrt{W}\). Mercado **competitivo livre** (sem regulação) gera (sob hipóteses do Exercício 3) candidato a separador R-S; mas com \(\lambda = 0{,}2\), pooling em \(\bar\pi = 0{,}2 \cdot 0{,}5 + 0{,}8 \cdot 0{,}1 = 0{,}18\) (baixo) Pareto-domina o separador para tipo \(L\) — **inexistência possível**. Considere agora **regulação institucional** que força pooling com cobertura completa.

### Sub-itens

**(a)** **Pooling regulado** com cobertura completa (\(c = L = 50\)) ao prêmio único \(\bar p = \bar\pi \cdot L = 0{,}18 \cdot 50 = 9\) (médio actuarialmente justo agregado). Sob esse regime, qual é a **utilidade esperada** de cada tipo?

- (i) \(EU^H = EU^L = \sqrt{91}\) (ambos atingem mesma utilidade).
- (ii) **\(EU^H = \sqrt{100 - 9} = \sqrt{91} \approx 9{,}54\) (cobertura completa, sem sinistro residual). Mesmo valor para tipo \(L\). \(EU^L = \sqrt{91}\). **Ambos têm consumo certo \(W - \bar p = 91\) — essa é a propriedade do pooling com cobertura completa: utilidade pessoal coincide para os dois tipos.** **[correta]**
- (iii) \(EU^H \neq EU^L\) (asimetria pelo prêmio).
- (iv) Indeterminado.

**(b)** Compare com **first-best simétrico** (cada tipo paga seu prêmio justo, cobertura completa): \(EU^{H,FB} = \sqrt{100 - 25} = \sqrt{75}\); \(EU^{L,FB} = \sqrt{100 - 5} = \sqrt{95}\). **Quem ganha e quem perde** com o pooling regulado em comparação ao first-best?

- (i) Ambos ganham com pooling.
- (ii) **Tipo \(H\) ganha (\(\sqrt{91} > \sqrt{75}\)) — paga prêmio menor que justo (9 vs. 25); cross-subsidy a seu favor. Tipo \(L\) perde (\(\sqrt{91} < \sqrt{95}\)) — paga prêmio maior que justo (9 vs. 5); cross-subsidy contra ele. **Pooling redistribui: bom risco subsidia alto risco.****[correta]**
- (iii) Ambos perdem.
- (iv) Tipo \(L\) ganha; tipo \(H\) perde.

**(c)** Sob **mercado competitivo sem regulação** (livre), o que ocorreria?

- (i) Pooling sustentado pelo mercado.
- (ii) **Pooling não-Nash em mercado competitivo: uma seguradora desviante pode oferecer contrato com cobertura *parcial* a prêmio que atrai apenas tipo \(L\), levando-os para fora do pool (cross-subsidy quebra). Tipo \(H\) sobra no pool — pool quebra. R-S separador é candidato, mas para \(\lambda = 0{,}2\), o pooling Pareto-domina o separador para tipo \(L\); **resultado clássico de inexistência**. Mercado livre falha em entregar equilíbrio competitivo.** **[correta]**
- (iii) Mercado livre sempre entrega first-best.
- (iv) Apenas tipo \(H\) tem seguro.

**(d)** **Mandato individual** (à la ACA US 2010): força ambos os tipos a participar do pooling, **sem permitir desvio**. Compare com pooling voluntário sem mandato:

- (i) Mandato é Pareto-pior (força tipo \(L\) a entrar contra sua preferência).
- (ii) **Mandato resolve o problema da inexistência R-S forçando participação dos baixos riscos no pool; sem mandato, baixos riscos sairiam (revelando seu tipo via não-compra), causando unraveling. **Custo:** tipo \(L\) carrega cross-subsidy (pioria \(\sqrt{91}\) vs. \(\sqrt{95}\)). **Benefício:** mecanismo viabilizado — tipo \(H\) (que de outra forma não conseguiria seguro a preço viável) tem cobertura. **Pareto-incomparável** entre mandato e mercado livre, mas mandato sustenta funcionamento que livre não consegue.** **[correta]**
- (iii) Mandato é estritamente Pareto-superior (todos ganham).
- (iv) Mandato é arbitrário sem base teórica.

**(e)** **Comparação Brasil (ANS) vs. US (ACA).** Indique a afirmação mais correta sobre as duas regulações no contexto R-S:

- (i) ANS e ACA são equivalentes.
- (ii) ANS força pooling apenas via faixa etária; ACA via mandato individual.
- (iii) **Ambas implementam pooling regulado mas com instrumentos distintos: **ANS** (Lei 9.656/1998) impõe rol mínimo de cobertura, faixas etárias máximas, portabilidade — pooling implícito sustentado por barreiras de saída regulatórias e padronização de produto. **ACA** (US 2010) usa instrumentos diretos: proibição de underwriting baseado em saúde + mandato individual + subsídios cruzados. **Ambos resolvem inexistência R-S**, mas via mecanismos distintos: ANS é "regulação de produto"; ACA é "regulação de participação". Em ambos, tipo \(L\) carrega cross-subsidy.** **[correta]**
- (iv) ANS é R-S puro; ACA é Akerlof puro.

**(f)** **Empírico crítico:** após decisão da Suprema Corte (2012) sobre Medicaid expansion no contexto ACA, alguns estados US relaxaram efetivamente o mandato. O resultado empírico documentado por Hackmann-Kolstad-Kowalski (2015, *AER* 105(3): 1030–1066) foi:

- (i) Mercado funcionou normalmente.
- (ii) **Unraveling parcial nos estados que removeram mandato — baixos riscos saíram do pool, prêmios subiram, mais saídas ocorreram. Confirma teoria R-S empiricamente: mecanismo de pooling regulado depende crucialmente do mandato; sem ele, inexistência reaparece.** **[correta]**
- (iii) Custo administrativo subiu mas alocação não mudou.
- (iv) Mandato é irrelevante empiricamente.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Mercados de seguro com seleção adversa frequentemente **não entregam equilíbrio competitivo** (resultado de inexistência R-S 1976 sob \(\lambda\) baixo). **Resposta institucional canônica:** regulação que força pooling (rol mínimo, faixas etárias, mandato, subsídios). ANS (Brasil) e ACA (US) são as duas implementações comparáveis em economias grandes. **Tradeoff fundamental:** tipo \(L\) carrega cross-subsidy em cima de seu first-best, mas mecanismo é viabilizado e tipo \(H\) tem acesso. Pareto-incomparável com mercado livre, mas Pareto-superior com mercado falho.

**2. Derivação.** **Pooling regulado:** \(\bar\pi = 0{,}2 \cdot 0{,}5 + 0{,}8 \cdot 0{,}1 = 0{,}18\); \(\bar p = \bar\pi \cdot 50 = 9\); \(EU^H = EU^L = \sqrt{91} \approx 9{,}54\). **First-best simétrico:** \(p^H = 25 \Rightarrow EU^H = \sqrt{75} \approx 8{,}66\); \(p^L = 5 \Rightarrow EU^L = \sqrt{95} \approx 9{,}75\). **Comparação:** \(\sqrt{91} - \sqrt{75} = 9{,}54 - 8{,}66 = 0{,}88\) (ganho \(H\)); \(\sqrt{95} - \sqrt{91} = 9{,}75 - 9{,}54 = 0{,}21\) (perda \(L\)). Cross-subsidy: tipo \(L\) paga 4 a mais que justo; tipo \(H\) paga 16 a menos que justo. Mecanismo viabilizado via mandato.

**3. Armadilha.** Item (a)(iii): aluno esquece que cobertura completa elimina risco — utilidade fica determinística para todos. Item (b)(iv): aluno inverte direção do cross-subsidy. Item (c)(i): aluno não internalizou inexistência R-S. Item (d)(iii): aluno não vê tradeoff distributivo do mandato. Item (e)(iv): confusão entre Akerlof (qualidade) e R-S (seguro). Item (f)(iv): negação do empírico — falsa.

**4. Extensão.** Aplicações comparativas: **Suíça** (Lamal 1996) usa modelo similar a ACA com mandato + subsídio. **Singapura** (CPF 1955+) usa modelo médico parcialmente individual. **Brasil tradicional pré-1998:** mercado privado de saúde tinha unraveling parcial em determinadas faixas — Lei 9.656 foi resposta. **Conexão com Aula 9:** sinalização (Spence) é mecanismo *descentralizado* — agente *informado* toma iniciativa para revelar tipo (e.g., compra plano premium para sinalizar baixo risco). Em saúde privada brasileira, há sinalização via "plano executivo com check-up" (revela proxy de "se cuida") — mecanismo de mercado parcial além da regulação. **Empírico-econométrico:** Hackmann-Kolstad-Kowalski (2015) é referência canônica de teste empírico de R-S em mercado real; Cutler-Reber (1998, *QJE* 113(2): 433–466) é antecedente em mercado plano de Harvard. **Aula 9** introduz *signaling games* formais com refinamento Cho-Kreps.

**5. Peer-review.** Calibre 🔴. Aplicação avançada que exige (a) cálculo de utilidade esperada com Bernoulli \(\sqrt{}\); (b) comparação cross-subsidy; (c) reconhecimento de inexistência R-S; (d) tradeoff de mandato; (e) comparação institucional Brasil-US; (f) teste empírico. **Item (e) é o mais formativo** — força aluno a articular *como* regulações distintas implementam mesmo mecanismo. **Tradeoff de tempo:** ~25 min — no topo do alvo para 🔴 (justificado: é a aplicação capstone que conecta teoria + empírico + Brasil/US). **Risco residual:** moderado — item (b) exige cálculo cuidadoso de \(\sqrt{}\) em três pontos; aluno deve verificar sinal da diferença antes de marcar. **Decisão pedagógica explícita:** parâmetros escolhidos para que cross-subsidy seja substancial mas não absurdo; aluno pode visualizar redistribuição numericamente. **Em sala (durante-aula):** Box Brasil (ANS) + Box Mundo (ACA) já apresentados no Bloco 4 — exercício materializa esses boxes em modelo formal.

---

## Apêndice — Notação canônica desta lista

| Símbolo | Significado |
|---|---|
| \(\theta\) | tipo do agente (privado) — *hidden type* |
| \(a\) | ação do agente (privada após contrato) — *hidden action* |
| \(\pi^\theta\) ou \(\pi_a\) | probabilidade de sinistro/output sob tipo/ação |
| \(\beta\) | razão de valoração comprador/vendedor (Akerlof) |
| \(p^*\) | preço competitivo |
| \(\bar p\) | preço pooling |
| \(L\) | dano (loss) sob sinistro |
| \(W\) | riqueza inicial |
| \(c\) | cobertura do contrato de seguro |
| \(p\) | prêmio do contrato de seguro |
| \(u(W) = \sqrt{W}\) | Bernoulli côncava do agente avesso |
| \(c(a)\) | custo do esforço |
| \(\bar U\) | utilidade reservada do agente (IR) |
| \(w_H, w_L\) | salário sob output alto / baixo |
| \(\mu\) | multiplicador de IR |
| \(\nu\) | multiplicador de IC |
| **IR** | restrição de participação (*individual rationality*) |
| **IC** | restrição de compatibilidade de incentivo (*incentive compatibility*) |
| **first-best** | alocação ótima sob informação simétrica |
| **second-best** | alocação ótima sob restrições informacionais |
| \(\lambda\) | proporção de tipo \(H\) |
| \(\bar\pi\) | probabilidade média ponderada |
