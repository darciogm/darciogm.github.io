## 23.2 Demanda por saúde e por cuidados médicos {#232}

### 23.2.1 Demanda derivada: saúde vs. cuidados médicos

A distinção central do modelo de Grossman (Seção 23.1.2) é que **cuidados médicos não são o bem final** — saúde é. A demanda por consultas, exames e medicamentos é *derivada* da demanda por saúde, assim como a demanda por aço é derivada da demanda por automóveis (Capítulo 10).

Isso tem implicações profundas para política pública. Se o governo constrói 100 novas UPAs, isso aumenta a oferta de cuidados médicos — mas não necessariamente a saúde da população. Saneamento básico, educação nutricional e redução da poluição podem ser insumos mais produtivos na "função de produção de saúde" do que mais consultas médicas.

Formalmente, a função de produção de saúde do indivíduo é:

\[
I_t = I(m_t, \tau_t^H; E) \tag{23.6}
\]

onde \(m_t\) são cuidados médicos, \(\tau_t^H\) é tempo dedicado à saúde e \(E\) é educação. A demanda por \(m_t\) depende do preço dos cuidados (\(p_m\)), do salário (\(w\), que determina o custo de oportunidade do tempo), da taxa de depreciação (\(\delta_t\)) e da educação:

\[
m_t^* = m(p_m, w, \delta_t, E) \tag{23.7}
\]

A elasticidade-preço da demanda por cuidados médicos é uma das questões empíricas mais importantes da economia da saúde: se a demanda é muito inelástica, copagamentos são ineficazes para conter custos; se é elástica, copagamentos reduzem uso mas podem reduzir cuidados necessários junto com os desnecessários.

### 23.2.2 O RAND Health Insurance Experiment

O **RAND Health Insurance Experiment** (Manning et al., 1987) é um dos maiores e mais influentes experimentos sociais já realizados — e, para economistas da saúde, é o equivalente do experimento de Michelson-Morley para a física: antes e depois dele, o mundo é diferente.

Entre 1974 e 1982, o RAND Corporation designou aleatoriamente 2.750 famílias americanas para planos de saúde com diferentes níveis de copagamento:

| Plano | Copagamento | Gasto médio anual |
|:------|:------------|:------------------|
| Gratuito | 0% | US$ 750 (referência) |
| 25% | 25% | US$ 617 (−18%) |
| 50% | 50% | US$ 573 (−24%) |
| 95% | 95% | US$ 540 (−28%) |

!!! definition "Copagamento (cost-sharing)"
    **Copagamento** é a parcela do custo do cuidado médico paga pelo paciente no momento do uso. Pode assumir formas de coparticipação percentual (*coinsurance*), valor fixo por serviço (*copay*), ou franquia anual (*deductible*). No RAND, copagamento de 25% significa que o paciente paga 25% do custo e o seguro paga 75%.

Os resultados principais:

1. **A demanda por cuidados médicos é elástica**, mas moderadamente: a elasticidade-preço estimada foi de aproximadamente **−0,2** (em valor absoluto). Passar de gratuito para copagamento de 95% reduziu o gasto em ~28%.

2. **O copagamento reduz uso de forma indiscriminada**: tanto cuidados "necessários" (e.g., controle de hipertensão) quanto "desnecessários" (e.g., visitas a pronto-socorro por resfriado) caem com o copagamento.

3. **Os efeitos em saúde foram limitados** para a maioria da população — exceto para os **pobres e doentes crônicos**, que tiveram piora significativa em indicadores como pressão arterial e mortalidade evitável quando sujeitos a copagamentos altos.

!!! idea "Intuição Econômica"
    **Em uma frase:** A demanda por cuidados médicos responde a preços, mas copagamentos são uma faca de dois gumes — cortam o desperdício e o cuidado necessário por igual.

    **Pense assim:** Imagine que você paga R$ 0 por cada ida ao médico. Você vai até quando está apenas um pouco gripado. Agora imagine que paga R$ 200. Você pensa duas vezes — e às vezes pensa demais, adiando uma consulta que realmente precisava. O RAND mostrou que ambos os efeitos são reais.

    **Por que isso importa:** O RAND é a base empírica para o design de praticamente todos os planos de saúde modernos. A ideia de franquias, copagamentos e tetos de gastos (*out-of-pocket maximums*) vem diretamente dos achados do RAND.

!!! exercicio-resolvido "ER 23.1 — Elasticidade e gasto com saúde"
    **Problema:** Se a elasticidade-preço da demanda por cuidados médicos é \(\varepsilon = -0{,}2\) e o governo introduz um copagamento de 20% (o preço efetivo para o paciente passa de 0 para 20% do custo), qual a variação percentual esperada no gasto?

    **Solução:**

    A elasticidade-preço é:

    \[
    \varepsilon = \frac{\Delta Q / Q}{\Delta p / p}
    \]

    O problema é que o preço efetivo vai de 0 a 0,2 — uma variação percentual infinita (de zero para qualquer valor positivo). É por isso que o RAND usou a **elasticidade do arco** (entre faixas), não a pontual.

    Usando a abordagem do arco entre os planos 0% e 25% do RAND:

    \[
    \varepsilon \approx \frac{(617 - 750)/750}{(0{,}25 - 0)/0{,}125} = \frac{-0{,}177}{2{,}0} = -0{,}09
    \]

    Note que a elasticidade do arco aqui é menor que −0,2 porque estamos na parte inferior da curva de demanda, onde a resposta percentual é menor. A estimativa de −0,2 do RAND é uma média ponderada entre todas as faixas.

    **Lição:** Cuidado ao aplicar elasticidades pontuais a mudanças discretas grandes — especialmente quando o preço inicial é zero.

### 23.2.3 Elasticidade e desenho de seguros

A elasticidade estimada pelo RAND tem implicações diretas para o desenho ótimo de seguros de saúde. O trade-off fundamental é:

- **Sem copagamento** (seguro completo): máximo *risk-sharing*, mas máximo risco moral (Seção 23.4). O paciente não tem incentivo para economizar.
- **Copagamento alto**: mínimo risco moral, mas transfere risco para o paciente — violando o propósito do seguro.

O seguro ótimo equilibra esses dois efeitos. A fórmula clássica de Zeckhauser (1970) sugere que o copagamento ótimo é maior para serviços com elasticidade alta (onde o risco moral é maior) e menor para serviços com elasticidade baixa (onde o risco moral é menor):

\[
c^* \propto \frac{|\varepsilon|}{r + |\varepsilon|} \tag{23.8}
\]

onde \(c^*\) é o copagamento ótimo, \(|\varepsilon|\) é a elasticidade-preço e \(r\) é o coeficiente de aversão ao risco.

Na prática, isso implica que internações hospitalares (demanda inelástica, consequências graves) devem ter copagamento baixo, enquanto consultas eletivas (demanda mais elástica) podem ter copagamento mais alto. É exatamente assim que a maioria dos planos modernos é desenhada.

No gráfico interativo abaixo, ajuste a taxa de cobertura do seguro e observe como o risco moral afeta a quantidade demandada de cuidados médicos e a perda de bem-estar associada.

<iframe src="/micro-book/graficos/cap23/demanda-saude.html" title="Figura 23.1 — Seguro de Saúde e Risco Moral" class="graph-iframe" style="height:600px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 23.1 — Seguro de Saúde e Risco Moral.** Ajuste a taxa de cobertura \(\alpha\) do seguro e observe como o preço percebido pelo paciente cai, a quantidade demandada aumenta além do ótimo e o triângulo de perda de bem-estar (risco moral) se expande.
</div>

---

## 23.3 Oferta de serviços de saúde {#233}

### 23.3.1 O médico como agente imperfeito

Em um mercado normal, o consumidor decide o que comprar. No mercado de saúde, **o médico decide** — ou, no mínimo, influencia fortemente a decisão. Quando seu médico diz que você precisa de uma ressonância magnética, você não abre o celular para comparar preços e necessidade com outros médicos (pelo menos não no calor do momento). Você confia.

Essa relação é um caso clássico de **problema de agência** (Capítulo 19). O médico é simultaneamente:

- **Conselheiro** (agente do paciente): diagnostica, informa, recomenda.
- **Ofertante** (com interesse financeiro): recebe pelo procedimento que prescreve.

A **demanda induzida pelo ofertante** (*supplier-induced demand*, SID) ocorre quando o médico prescreve mais procedimentos do que o clinicamente necessário, motivado pela remuneração. O modelo formal é:

\[
\max_n \; U^M(R(n), n - n^*) \tag{23.9}
\]

onde \(U^M\) é a utilidade do médico, \(R(n)\) é a receita com \(n\) procedimentos, \(n^*\) é o número clinicamente adequado, e \(n - n^*\) é o excesso (que gera desutilidade ética). O médico escolhe \(n > n^*\) se o ganho marginal de receita excede a desutilidade marginal do sobretratamento.

A evidência empírica para SID é mista mas sugestiva:

- **Teste de Roemer**: regiões com mais médicos per capita têm mais procedimentos per capita, mesmo após controlar por morbidade — consistente com SID (Roemer, 1961).
- **Experimentos naturais**: quando a remuneração médica muda de *fee-for-service* para *capitation* (pagamento fixo por paciente), o número de procedimentos cai significativamente (Devlin & Sarma, 2008).

!!! box-mundo "Box Mundo 23.1 — O NHS britânico: quando o governo é médico, hospital e seguradora"
    O **National Health Service** (NHS), criado em 1948, é o exemplo mais puro do modelo Beveridge: financiamento por impostos gerais, cobertura universal, serviços predominantemente públicos. O médico generalista (*GP*) é a porta de entrada obrigatória (*gatekeeper*) — sem encaminhamento do GP, o paciente não acessa o especialista.

    O GP britânico é remunerado por **capitation** (valor fixo por paciente registrado), não por procedimento. Isso elimina o incentivo à demanda induzida — mas cria outro problema: o incentivo a *sub*tratar, já que a receita não depende da intensidade do cuidado. O NHS enfrenta permanentemente filas de espera (*waiting lists*) que chegam a meses para procedimentos eletivos. Em 2024, mais de 7 milhões de pessoas estavam na fila de espera na Inglaterra (NHS England, 2024).

    A tensão fundamental do NHS é entre **contenção de custos** (gasto de ~10% do PIB, abaixo dos EUA) e **acesso oportuno** (filas que podem ser clinicamente perigosas). É o trade-off clássico entre eficiência produtiva e qualidade de acesso.

### 23.3.2 Hospitais: sem fins lucrativos, com muitos fins

Por que tantos hospitais são organizações sem fins lucrativos? Arrow (1963) argumentou que a forma organizacional *não-lucrativa* é uma resposta à assimetria de informação: o paciente não consegue avaliar a qualidade do cuidado hospitalar *ex ante* (antes de receber o serviço) nem *ex post* (como saber se a cirurgia foi "bem feita" se você não é cirurgião?). A ausência de resíduo distribuível (*non-distribution constraint*) sinaliza que o hospital não tem incentivo para maximizar lucro à custa da qualidade.

O modelo de Newhouse (1970) formaliza o hospital sem fins lucrativos como uma entidade que maximiza uma combinação de **qualidade** e **quantidade** de serviços, sujeita a uma restrição de equilíbrio orçamentário:

\[
\max_{Q, q} \; V(Q, q) \quad \text{s.a.} \quad R(Q, q) \geq C(Q, q) \tag{23.10}
\]

onde \(Q\) é a quantidade de pacientes, \(q\) é a qualidade dos serviços, \(R\) é a receita e \(C\) é o custo. O hospital sem fins lucrativos tende a ofertar qualidade acima do nível que maximizaria lucro — mas também tende a não minimizar custos, já que não há acionistas para disciplinar a gestão.

### 23.3.3 A indústria farmacêutica: patentes, preços e acesso

A indústria farmacêutica é um caso fascinante de **monopólio temporário por design** (Capítulo 15). Patentes conferem exclusividade de 20 anos para incentivar P&D — sem a perspectiva de lucro monopolista, nenhuma empresa investiria US$ 1–2 bilhões para desenvolver uma molécula nova. Mas durante a vigência da patente, o preço excede o custo marginal, restringindo acesso.

O dilema é intertemporal:

\[
W = \underbrace{W_{\text{patente}}}_{\text{perda de bem-estar}} + \underbrace{\beta^T \cdot W_{\text{genérico}}}_{\text{ganho futuro com genéricos}} \tag{23.11}
\]

onde \(T\) é a duração da patente e \(\beta\) é o fator de desconto. A duração ótima da patente equilibra o incentivo à inovação com a perda de acesso durante o período de monopólio.

!!! box-mundo "Box Mundo 23.2 — Preços de medicamentos: por que a mesma pílula custa 10x mais nos EUA?"
    Em 2023, o preço de lista do Humira (adalimumab, para artrite reumatoide) era ~US$ 7.000/mês nos EUA e ~US$ 1.400 na Europa. A diferença não é custo de produção — é **discriminação de preços de terceiro grau** (Capítulo 15). Os EUA são o único país desenvolvido que não negocia preços de medicamentos centralmente. Cada seguradora negocia individualmente, sem poder de monopsônio comparável ao NHS britânico ou ao sistema canadense.

    O *Inflation Reduction Act* (2022) autorizou pela primeira vez o Medicare a negociar preços de 10 medicamentos — um passo tímido em relação ao modelo europeu, mas politicamente revolucionário nos EUA. Os primeiros preços negociados, anunciados em 2024, representaram descontos de 38–79% sobre os preços de lista.

    O debate econômico é genuíno: preços mais baixos aumentam o acesso hoje, mas podem reduzir o incentivo à inovação amanhã. A questão empírica é se os lucros farmacêuticos atuais já excedem o necessário para financiar P&D — evidência sugere que sim (Cutler, 2004).

!!! box-brasil "Box Brasil 23.1 — O SUS: universalismo na prática"
    O **Sistema Único de Saúde** (SUS), criado pela Constituição de 1988, é um sistema de cobertura universal financiado por impostos — inspirado no modelo Beveridge (NHS), mas com uma peculiaridade: a coexistência com um setor privado robusto (planos de saúde) que atende ~25% da população.

    **O que o SUS faz bem:**

    - **Cobertura universal**: 190+ milhões de brasileiros têm acesso a serviços de saúde sem custo direto no ponto de uso.
    - **Imunização**: o Programa Nacional de Imunizações (PNI) é referência mundial, com cobertura vacinal historicamente alta.
    - **Transplantes**: o Brasil tem o maior programa público de transplantes do mundo.
    - **HIV/AIDS**: distribuição universal de antirretrovirais desde 1996, modelo replicado por outros países.
    - **Atenção básica**: o programa Estratégia Saúde da Família (ESF) cobre ~76% da população (Ministério da Saúde, 2024).

    **Desafios persistentes:**

    - **Subfinanciamento**: gasto público em saúde de ~4% do PIB, versus 6–8% em países com sistemas universais comparáveis (OECD, 2023).
    - **Filas**: tempos de espera longos para especialistas e cirurgias eletivas.
    - **Judicialização**: decisões judiciais obrigam o SUS a fornecer medicamentos e tratamentos de alto custo, distorcendo prioridades orçamentárias.
    - **Desigualdade regional**: qualidade e acesso variam enormemente entre Sul/Sudeste e Norte/Nordeste.

    **Dados:** Em 2023, o gasto total em saúde no Brasil foi de ~9,6% do PIB, mas apenas ~4% público e ~5,6% privado. Compare com o Reino Unido (~10,3% do PIB, quase todo público) e os EUA (~17,3% do PIB, misto) (OECD, 2023).
