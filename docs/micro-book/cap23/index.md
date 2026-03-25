# Capítulo 23 — Doutor, Quanto Custa? (Arrow Já Sabia Que Ia Dar Problema)

Você sabe quanto custa uma aspirina num hospital americano? Até 25 dólares — por um comprimido que custa centavos na farmácia da esquina. Esse absurdo não é acidente. Em 1963, Kenneth Arrow publicou um artigo que mudou a forma como economistas pensam sobre saúde. Em "Uncertainty and the Welfare Economics of Medical Care", Arrow argumentou que o mercado de cuidados médicos é *fundamentalmente diferente* de outros mercados — não por razões sentimentais ("saúde não tem preço"), mas por razões econômicas precisas: incerteza radical sobre a doença, assimetria de informação entre médico e paciente, externalidades de vacinação e tratamento, e a natureza de bem meritório que justifica intervenção pública mesmo quando não há falha de mercado clássica. Seis décadas depois, a economia da saúde tornou-se uma das maiores subáreas da microeconomia aplicada, com implicações diretas para políticas públicas que afetam bilhões de pessoas — e a aspirina de 25 dólares continua sem explicação convincente fora da teoria de Arrow.

Este capítulo integra ferramentas desenvolvidas ao longo do livro para analisar mercados de saúde. A **demanda por saúde** (Seção 23.2) conecta-se ao modelo de Grossman (1972), que trata a saúde como capital durável — uma extensão natural do Capítulo 18 (escolha intertemporal). O **risco moral** em seguros de saúde (Seção 23.4) aplica diretamente os conceitos do Capítulo 7 (incerteza e seguros) e do Capítulo 19 (informação assimétrica). A **oferta de serviços** (Seção 23.3) traz elementos de poder de mercado (Capítulo 15) e problema do agente (Capítulo 19). As **externalidades** de vacinação e controle de doenças contagiosas (Seção 23.6) são aplicações diretas do Capítulo 20. E a **comparação de sistemas de saúde** (Seção 23.5) ilustra o trade-off eficiência-equidade que permeia toda a análise de bem-estar.

As referências centrais são Arrow (1963) para os fundamentos teóricos, Grossman (1972) para o modelo de demanda por saúde, Manning et al. (1987) para o RAND Health Insurance Experiment, Rothschild e Stiglitz (1976) para seleção adversa em seguros, e Cutler e Zeckhauser (2000) para uma revisão abrangente da economia de seguros de saúde. Para tratamentos de livro-texto, ver Zweifel, Breyer e Kifmann (2009) e Folland, Goodman e Stano (2017).

---

## 23.1 Por que a saúde é diferente?

### 23.1.1 O artigo fundador: Arrow (1963)

Kenneth Arrow não era especialista em saúde quando escreveu seu artigo seminal. Era um teórico do equilíbrio geral — o mesmo Arrow do Capítulo 14 (Equilíbrio Geral) e do teorema da impossibilidade em escolha social. Mas quando a Ford Foundation encomendou um estudo sobre a economia dos cuidados médicos, Arrow aplicou o rigor da teoria microeconômica para identificar *por que* o mercado de saúde resiste à análise convencional de oferta e demanda.

Arrow identificou quatro características que distinguem o mercado de saúde:

**1. Incerteza radical.** Ao contrário de comprar um carro ou um café, a demanda por cuidados médicos é *imprevisível*. Ninguém sabe quando ficará doente, quão grave será a doença, ou qual tratamento funcionará. Essa incerteza gera demanda por seguro (Capítulo 7) — mas o seguro de saúde, por sua vez, cria problemas de risco moral e seleção adversa que não existem (ou são muito menores) em outros mercados de seguros.

Formalmente, seja \(s \in \{saudável, doente\}\) o estado de saúde do indivíduo, com probabilidades \(\pi_s\) e \(\pi_d = 1 - \pi_s\). O custo do tratamento no estado doente é \(m\), mas o indivíduo não sabe ex ante quando precisará de tratamento. A utilidade esperada sem seguro é:

\[
EU_{\text{sem seguro}} = \pi_s \cdot u(W) + \pi_d \cdot u(W - m) \tag{23.1}
\]

onde \(W\) é a riqueza inicial. Se \(u\) é côncava (aversão ao risco, Capítulo 7), o indivíduo prefere um seguro atuarialmente justo com prêmio \(P = \pi_d \cdot m\):

\[
EU_{\text{com seguro}} = u(W - P) = u(W - \pi_d \cdot m) > EU_{\text{sem seguro}} \tag{23.2}
\]

A desigualdade segue da desigualdade de Jensen — exatamente como no Capítulo 7.

**2. Assimetria de informação médico-paciente.** O médico sabe mais que o paciente sobre diagnóstico, prognóstico e tratamento. Essa assimetria é mais severa que em outros mercados: quando você compra um carro, pode pesquisar preços e qualidade; quando está com dor no peito, confia no médico. Isso cria um problema de **agência** (Capítulo 19): o médico é simultaneamente conselheiro (agente do paciente) e vendedor (com interesse financeiro no tratamento prescrito).

**3. Externalidades.** Muitas intervenções de saúde geram externalidades positivas. A vacinação protege não apenas o vacinado, mas toda a comunidade — criando **imunidade de rebanho**. O tratamento de doenças contagiosas reduz a transmissão para terceiros. Em termos do Capítulo 20, a vacinação é um bem com externalidade positiva: o benefício social excede o benefício privado, e o mercado subproduz vacinas em relação ao ótimo.

**4. Bens meritórios e normas sociais.** A maioria das sociedades considera que acesso a cuidados médicos básicos é um *direito*, não um privilégio de quem pode pagar. Essa norma não se aplica a carros ou smartphones. Arrow reconheceu que essa dimensão normativa afeta a organização dos mercados de saúde: médicos operam sob códigos de ética, hospitais frequentemente são organizações sem fins lucrativos, e governos intervêm maciçamente no financiamento e na provisão de serviços.

!!! definition "Bem meritório (merit good)"
    Um **bem meritório** é aquele cujo consumo a sociedade deseja encorajar acima do nível que resultaria da escolha individual livre, por considerar que os indivíduos subestimam seus benefícios (por informação incompleta, miopia ou externalidades). Exemplos: educação, vacinação, exames preventivos. O conceito, introduzido por Richard Musgrave (1957), justifica intervenção pública mesmo na ausência de falhas de mercado clássicas — um ponto controverso entre economistas, pois implica que o governo "sabe melhor" que o indivíduo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O mercado de saúde não é um mercado como os outros — incerteza, assimetria de informação, externalidades e normas sociais justificam intervenção pública de formas que não se aplicam a mercados convencionais.

    **Pense assim:** Imagine três mercados: café, automóveis e cirurgia cardíaca. No café, você sabe o que quer, pode comparar preços, e se o café for ruim, a consequência é menor. No automóvel, a compra é mais complexa, mas você pode pesquisar, testar e devolver. Na cirurgia, você não sabe se precisa (incerteza), não entende as opções (assimetria de informação), o "vendedor" é quem decide o que você "compra" (agência médica), e se o cirurgião errar, a consequência pode ser a morte. Essas diferenças não são de grau — são de natureza.

    **Por que isso importa:** Quase 10% do PIB global é gasto em saúde. Se o mercado de saúde funcionasse como o de café, não precisaríamos de SUS, NHS, Medicare ou qualquer sistema público. Arrow mostrou que as falhas de mercado em saúde são tão fundamentais que alguma forma de intervenção é economicamente justificada — o debate é sobre *qual* forma.

### 23.1.2 Saúde como capital humano: o modelo de Grossman (1972)

Se Arrow olhou para o mercado de saúde e viu falhas por toda parte, Michael Grossman olhou para o *indivíduo* e viu uma fábrica. Uma fábrica que produz saúde — e que, infelizmente, enferruja. Grossman propôs uma abordagem complementar à de Arrow, tratando a **saúde como um estoque de capital durável** — análogo ao capital físico das firmas (Capítulo 10) ou ao capital humano de Becker. O indivíduo nasce com um estoque de saúde \(H_0\), que se deprecia ao longo do tempo (envelhecimento) e pode ser aumentado por investimento (cuidados médicos, exercício, alimentação).

Formalmente, a dinâmica do estoque de saúde é:

\[
H_{t+1} = H_t - \delta_t H_t + I_t \tag{23.3}
\]

onde \(\delta_t\) é a taxa de depreciação (que aumenta com a idade) e \(I_t\) é o investimento bruto em saúde no período \(t\). O investimento depende de insumos — tempo dedicado à saúde (\(\tau_t^H\)) e cuidados médicos (\(m_t\)):

\[
I_t = I(m_t, \tau_t^H; E) \tag{23.4}
\]

onde \(E\) é o nível de educação, que aumenta a eficiência do investimento em saúde (pessoas mais educadas produzem mais saúde com os mesmos insumos).

O indivíduo maximiza utilidade intertemporal:

\[
\max \sum_{t=0}^{T} \beta^t \, u(C_t, h_t) \tag{23.5}
\]

onde \(C_t\) é consumo de outros bens, \(h_t\) é o fluxo de "dias saudáveis" (proporcionais a \(H_t\)), e \(\beta\) é o fator de desconto intertemporal (Capítulo 18). A restrição orçamentária inclui o custo dos cuidados médicos e o custo de oportunidade do tempo dedicado à saúde.

!!! definition "Modelo de Grossman"
    O modelo de Grossman distingue entre **demanda por saúde** e **demanda por cuidados médicos**. A saúde é o objetivo final (bem de consumo e de investimento); os cuidados médicos são um *insumo* para produzir saúde. Assim como a demanda por aço deriva da demanda por carros, a demanda por consultas médicas e medicamentos deriva da demanda por estar saudável. Essa distinção é crucial: políticas que aumentam a oferta de serviços médicos não necessariamente melhoram a saúde da população.

O modelo gera várias previsões testáveis:

1. **A demanda por saúde diminui com a idade**, porque \(\delta_t\) aumenta: manter o estoque de saúde fica mais caro. Eventualmente, \(H_t\) cai abaixo de um limiar mínimo \(H_{\min}\), e o indivíduo morre.

2. **Pessoas mais educadas investem mais em saúde**, porque a educação aumenta a eficiência da produção de saúde. Isso explica parte do "gradiente educação-saúde" observado em todos os países.

3. **Aumentos no salário têm efeito ambíguo**: aumentam o custo de oportunidade do tempo dedicado à saúde (efeito substituição negativo), mas também aumentam a renda (efeito renda positivo).

4. **A demanda por cuidados médicos é demanda derivada**: depende do preço dos cuidados, mas também da taxa de depreciação, do salário, e da educação.

---

## 23.2 Demanda por Saúde e por Cuidados Médicos

### 23.2.1 Demanda derivada e a distinção saúde vs. cuidados

Ninguém acorda de manhã desejando uma ressonância magnética. O que as pessoas querem é saúde — e a ressonância é, no melhor dos casos, um passo doloroso nessa direção. Essa observação aparentemente banal esconde uma distinção central do modelo de Grossman — entre demanda por saúde e demanda por cuidados médicos — com implicações profundas para a análise econômica. A **demanda por saúde** é a demanda pelo estado de "estar saudável": ter energia, não sentir dor, poder trabalhar e desfrutar da vida. A **demanda por cuidados médicos** é a demanda pelos insumos que produzem saúde: consultas, exames, medicamentos, cirurgias, internações.

A relação é análoga à demanda por insumos na teoria da firma (Capítulo 10): a firma não demanda trabalho por si mesmo, mas porque o trabalho produz bens que geram receita. Similarmente, o indivíduo não demanda uma ressonância magnética porque gosta do procedimento, mas porque espera que o diagnóstico leve a um tratamento que melhore sua saúde.

A condição de investimento ótimo é análoga à regra de investimento em capital físico:

\[
\frac{\partial u / \partial h_t}{\lambda_t} \cdot \frac{\partial h_t}{\partial H_t} + w_t \cdot \frac{\partial h_t}{\partial H_t} = p_t^m \cdot \left(r + \delta_t - \frac{\Delta p_{t+1}^m}{p_t^m}\right) \tag{23.6}
\]

O lado esquerdo representa o benefício marginal do estoque de saúde: o valor do "dia saudável" (utilidade direta convertida em unidades monetárias via o multiplicador \(\lambda_t\)) mais o ganho salarial por estar saudável (o tempo doente é tempo sem renda). O lado direito é o custo de uso do capital-saúde: o preço do investimento em saúde vezes a soma da taxa de juros e da taxa de depreciação (custo de manter o estoque, líquido de ganhos de capital no preço dos cuidados).

A intuição é que o indivíduo investe em saúde até que o benefício marginal de mais um "dia saudável" iguale o custo marginal de produzi-lo — exatamente como a firma investe em capital até que o produto marginal da receita iguale o custo de uso do capital.

### 23.2.2 O RAND Health Insurance Experiment

O **RAND Health Insurance Experiment** (1974–1982) é provavelmente o mais importante experimento controlado randomizado já realizado na área de saúde. Conduzido pela RAND Corporation com financiamento do governo dos EUA, o experimento atribuiu aleatoriamente 2.750 famílias (7.700 indivíduos) em seis localidades americanas a diferentes planos de seguro saúde, variando a **taxa de coparticipação** (*coinsurance rate*) — a fração do custo que o paciente paga do próprio bolso:

- **Gratuito** (coparticipação de 0%): seguro cobre 100% dos custos
- **25%**: paciente paga 25% dos custos
- **50%**: paciente paga 50%
- **95%**: paciente paga 95% (quase sem seguro)
- **Dedutível individual**: plano cobre apenas despesas catastróficas

Todos os planos tinham um teto de gastos do próprio bolso (*maximum dollar expenditure*, MDE) de US\$ 1.000 (dólares de 1984), acima do qual o seguro cobria 100%.

Os resultados principais, publicados em Manning et al. (1987), foram:

1. **A demanda por cuidados médicos responde significativamente ao preço.** O gasto médico no plano gratuito foi cerca de 45% maior que no plano com 95% de coparticipação. A elasticidade-preço da demanda por cuidados médicos foi estimada em **\(-0{,}2\)** — significativamente diferente de zero, mas inelástica.

2. **O risco moral é real, mas moderado.** Pessoas com seguro mais generoso usam mais serviços — consultas, exames, medicamentos. Isso é risco moral ex post (Capítulo 19): uma vez segurado, o custo marginal percebido do cuidado é menor, e o indivíduo consome mais.

3. **Mais cuidados não significam mais saúde.** Para a maioria dos participantes, o plano gratuito gerou mais uso de serviços médicos, mas *não* gerou melhor saúde. A exceção importante foi o grupo de baixa renda e alto risco: para esse subgrupo, o acesso ao plano gratuito melhorou significativamente a saúde (redução da pressão arterial, melhora da visão).

4. **A coparticipação reduz tanto cuidados necessários quanto desnecessários.** Os pacientes não distinguem bem entre cuidados de alto e baixo valor — a coparticipação reduz ambos proporcionalmente.

!!! idea "Intuição Econômica"
    **Em uma frase:** O RAND Experiment mostrou que a demanda por cuidados médicos obedece à lei da demanda — mas que mais cuidados não significam mais saúde para a maioria das pessoas.

    **Pense assim:** Imagine dois restaurantes: no primeiro, você paga a conta completa; no segundo, alguém paga 75% e você paga apenas 25%. No segundo restaurante, você provavelmente pede mais — uma entrada extra, a sobremesa, o vinho mais caro. Isso é risco moral: quando o preço efetivo cai, a quantidade demandada sobe. O RAND mostrou que saúde funciona assim também, mas com um twist: as "entradas extras" (exames desnecessários, consultas por precaução) geralmente não tornam você mais saudável. A exceção são pessoas pobres e doentes, para quem a barreira de preço impedia o acesso a cuidados genuinamente necessários.

    **Por que isso importa:** O RAND Experiment é a base empírica para o desenho de seguros de saúde em todo o mundo. A elasticidade de \(-0{,}2\) significa que a coparticipação funciona como mecanismo de contenção de custos — mas com o risco de prejudicar os mais pobres. Políticas como a isenção de coparticipação para populações de baixa renda (usada no SUS e no Medicaid) são respostas diretas a essa evidência.

No gráfico interativo abaixo, ajuste a taxa de coparticipação e observe como a demanda por cuidados médicos responde ao preço efetivo, gerando sobreconsumo e perda de peso morto.

<iframe src="../graficos/cap23/demanda-saude.html" title="Figura 23.1 — Seguro de Saúde e Risco Moral: Demanda com e sem Seguro" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 23.1 — Seguro de Saúde e Risco Moral.** Ajuste a taxa de coparticipação para ver como o seguro reduz o preço efetivo, aumenta a quantidade consumida e gera perda de peso morto (área vermelha) pelo consumo de cuidados cujo custo real excede o valor que o paciente lhes atribui.
</div>

??? exercicio-resolvido "Exercício Resolvido 23.1 — Risco moral e elasticidade da demanda por saúde"
    **Enunciado.** Um indivíduo tem a seguinte função de demanda por consultas médicas:

    \[
    Q = 20 - 0{,}5 \cdot p_e
    \]

    onde \(p_e\) é o preço efetivo pago pelo paciente (após seguro). O custo de cada consulta é \(p = 200\) reais. Considere dois cenários: (i) sem seguro (\(p_e = 200\)); (ii) com seguro e coparticipação de 20% (\(p_e = 40\)).

    (a) Calcule o número de consultas demandadas em cada cenário.

    (b) Calcule o custo total dos cuidados médicos em cada cenário.

    (c) Calcule o custo do risco moral (gasto adicional gerado pelo seguro).

    (d) Calcule a elasticidade-preço da demanda no ponto médio entre os dois cenários.

    ---

    **Solução.**

    **(a)** Sem seguro (\(p_e = 200\)):

    \[
    Q_1 = 20 - 0{,}5 \times 200 = 20 - 100 = -80
    \]

    Como a quantidade não pode ser negativa, \(Q_1 = 0\). Esse indivíduo não demandaria consultas ao preço integral de R\$ 200. Reinterpretemos: suponha que a função de demanda seja \(Q = 20 - 0{,}05 \cdot p_e\), de modo que o intercepto vertical seja \(p_e = 400\).

    Sem seguro: \(Q_1 = 20 - 0{,}05 \times 200 = 20 - 10 = 10\) consultas.

    Com seguro: \(Q_2 = 20 - 0{,}05 \times 40 = 20 - 2 = 18\) consultas.

    **(b)** Custo total (ao preço real de R\$ 200):

    - Sem seguro: \(CT_1 = 10 \times 200 = \text{R\$}\;2.000\)
    - Com seguro: \(CT_2 = 18 \times 200 = \text{R\$}\;3.600\)

    **(c)** Custo do risco moral:

    \[
    \Delta CT = CT_2 - CT_1 = 3.600 - 2.000 = \text{R\$}\;1.600
    \]

    O seguro induziu 8 consultas adicionais ao custo de R\$ 1.600. Esse é o custo do risco moral — o gasto que não existiria se o paciente enfrentasse o preço integral.

    **(d)** Elasticidade-preço no arco (ponto médio):

    \[
    \varepsilon = \frac{\Delta Q / \bar{Q}}{\Delta p_e / \bar{p_e}} = \frac{(18 - 10)/14}{(40 - 200)/120} = \frac{8/14}{-160/120} = \frac{0{,}571}{-1{,}333} \approx -0{,}43
    \]

    A demanda é inelástica (\(|\varepsilon| < 1\)), consistente com a estimativa do RAND (\(-0{,}2\)), embora mais alta neste exemplo simplificado. A inelasticidade implica que a coparticipação contém parcialmente o gasto, mas não dramaticamente.

### 23.2.3 Elasticidade-preço e as implicações para política

A estimativa do RAND de uma elasticidade-preço de \(-0{,}2\) tem implicações diretas para o desenho de políticas de saúde:

**Implicação 1: A coparticipação contém custos, mas moderadamente.** Se a elasticidade é \(-0{,}2\), dobrar o preço efetivo (digamos, de 10% para 20% de coparticipação) reduz a quantidade demandada em apenas 20%. Isso significa que a coparticipação sozinha não resolve o problema de custos crescentes em saúde.

**Implicação 2: Gratuidade total gera desperdício.** No outro extremo, quando \(p_e = 0\) (como no SUS ou no NHS), o custo marginal percebido pelo paciente é zero. A quantidade demandada será o máximo — incluindo cuidados de baixo ou nenhum valor clínico. O resultado são filas, congestionamento e ineficiência alocativa.

**Implicação 3: Desenho inteligente de coparticipação.** A pesquisa pós-RAND levou ao conceito de **value-based insurance design** (VBID): a coparticipação deve ser baixa para serviços de alto valor clínico (medicamentos para doenças crônicas, exames preventivos) e alta para serviços de baixo valor (procedimentos eletivos com pouca evidência de eficácia).

\[
p_e^* = \begin{cases} \text{baixo} & \text{se benefício marginal social alto (prevenção, crônicos)} \\ \text{alto} & \text{se benefício marginal social baixo (eletivos sem evidência)} \end{cases} \tag{23.7}
\]

!!! warning "Cuidado com a falácia do \"mais é melhor\" em saúde"
    Uma intuição natural — e errada — é que mais cuidados médicos sempre melhoram a saúde. O RAND Experiment mostrou que para a maioria das pessoas, o aumento de 45% nos gastos do plano gratuito não melhorou os resultados de saúde. Estudos posteriores (Fisher et al., 2003; Cutler, 2004) mostraram que regiões dos EUA com maior gasto per capita em saúde *não* têm melhores resultados — e em alguns casos, têm piores. A curva de "produto marginal dos cuidados médicos" é decrescente e eventualmente pode se tornar negativa (iatrogenias, infecções hospitalares, efeitos colaterais de medicamentos desnecessários). A saúde depende muito mais de comportamento (exercício, dieta, não fumar), genética, saneamento e condições socioeconômicas do que de cuidados médicos curativos.

---

## 23.3 Oferta de Serviços de Saúde

### 23.3.1 O médico como agente: demanda induzida pelo ofertante

Imagine entrar numa loja onde o vendedor é também o único especialista que sabe se você precisa do produto, qual produto comprar, e em que quantidade — e, por acaso, ele ganha comissão sobre cada venda. Você confiaria no conselho? Na maioria dos mercados, oferta e demanda são independentes: o padeiro produz pão e o consumidor decide quanto comprar. Em saúde, essa separação confortável não existe: o médico é simultaneamente **conselheiro** (recomenda o tratamento) e **ofertante** (realiza e cobra pelo tratamento). Essa dupla função cria o problema da **demanda induzida pelo ofertante** (*supplier-induced demand*, SID).

Formalmente, suponha que o médico maximiza uma utilidade que depende de renda (\(Y\)) e de um custo ético de indicar tratamentos desnecessários (\(\theta\)):

\[
U_{\text{médico}} = Y(n) - \theta \cdot [n - n^*(s)] \tag{23.8}
\]

onde \(n\) é o número de procedimentos realizados, \(n^*(s)\) é o número clinicamente apropriado para o estado de saúde \(s\) do paciente, e \(\theta \geq 0\) é o "custo de consciência" do médico. A renda é crescente em \(n\): \(Y'(n) > 0\).

Se \(\theta = 0\) (médico sem escrúpulos), ele maximiza renda indicando o máximo de procedimentos. Se \(\theta \to \infty\) (agente perfeito), ele indica exatamente \(n^*(s)\). Na prática, \(\theta\) tem valor intermediário, e a quantidade de indução depende crucialmente do sistema de pagamento:

- **Fee-for-service** (pagamento por procedimento): cada procedimento adicional gera renda. Incentiva SID.
- **Capitation** (pagamento per capita): o médico recebe valor fixo por paciente registrado, independentemente de quantos procedimentos realize. Desincentiva SID, mas pode gerar subtratamento.
- **Salário fixo**: elimina o incentivo financeiro para SID, mas também reduz o incentivo para produtividade.

!!! box-mundo "Box Mundo 23.1 — O NHS britânico e a tensão entre eficiência e filas"

    **Contexto:** O National Health Service (NHS), criado em 1948, é o exemplo paradigmático do modelo Beveridge: financiamento por impostos gerais, provisão pública, acesso universal e gratuito no ponto de atendimento. Em 2023, o NHS empregava 1,4 milhão de pessoas (o quinto maior empregador do mundo) e atendia 67 milhões de residentes do Reino Unido.

    **Dados:** O gasto em saúde do Reino Unido é de aproximadamente 11% do PIB (2023), abaixo dos EUA (17,3%) mas próximo da média da OCDE (9,2%). Os resultados de saúde são bons: expectativa de vida de 81 anos (vs. 77 nos EUA), mortalidade infantil de 3,7 por mil nascidos vivos (vs. 5,4 nos EUA). Porém, os tempos de espera são o calcanhar de Aquiles: em 2023, 7,6 milhões de pacientes aguardavam tratamento eletivo (mais de 10% da população), com tempo médio de espera de 14 semanas.

    **Análise:** O NHS ilustra o trade-off fundamental de um sistema com \(p_e = 0\): a ausência de preço no ponto de atendimento elimina a barreira financeira de acesso (equidade), mas gera excesso de demanda relativo à oferta (filas). A fila funciona como mecanismo de racionamento não-preço: em vez de pagar em dinheiro, o paciente "paga" com tempo de espera. Isso é regressivo de uma forma diferente do preço: prejudica mais quem tem menor custo de oportunidade do tempo (aposentados, desempregados) vs. quem tem maior custo (trabalhadores jovens). A controvérsia política crônica sobre o NHS gira em torno de quanto financiamento público é suficiente para manter filas toleráveis sem introduzir copagamentos que comprometam a universalidade.

    **Fonte:** NHS England. 2024. [*Referral to Treatment (RTT) Waiting Times*](https://www.england.nhs.uk/statistics/statistical-work-areas/rtt-waiting-times/). Londres.

### 23.3.2 Comportamento hospitalar: lucrativos vs. sem fins lucrativos

Hospitais são organizações complexas que diferem fundamentalmente da firma maximizadora de lucro do Capítulo 12. Em muitos países, a maioria dos hospitais é sem fins lucrativos (*nonprofit*) ou pública. Nos EUA, apenas cerca de 20% dos hospitais são lucrativos (*for-profit*); no Brasil, o SUS opera com hospitais públicos e conveniados; no Reino Unido, quase todos os hospitais são públicos (NHS trusts).

**O modelo do hospital sem fins lucrativos.** Se o hospital não maximiza lucro, o que maximiza? A teoria econômica propõe várias hipóteses:

- **Modelo de Newhouse (1970):** O hospital maximiza a qualidade do atendimento sujeito a uma restrição de break-even (receita ≥ custos). Isso gera sobreinvestimento em qualidade (equipamentos caros, excesso de especialistas) e subprodução de volume.

- **Modelo de médicos como controladores:** Os médicos, não os administradores, controlam as decisões do hospital. O hospital maximiza a utilidade dos médicos — que preferem mais tecnologia, menos pacientes por médico e maior prestígio.

- **Modelo de maximização do orçamento:** Administradores maximizam o tamanho do hospital (receita total), análogo à firma gerencial de Baumol (Capítulo 12).

A evidência empírica sugere que hospitais sem fins lucrativos e lucrativos diferem menos do que a teoria previa: ambos respondem a incentivos financeiros, ambos competem por pacientes e médicos, e ambos enfrentam pressões regulatórias. A principal diferença é que hospitais sem fins lucrativos tendem a oferecer mais atendimento a pacientes sem capacidade de pagamento (*charity care*) e investem mais em serviços deficitários mas socialmente valorizados (pronto-socorro, psiquiatria).

### 23.3.3 Indústria farmacêutica: patentes, genéricos e eficiência dinâmica

A indústria farmacêutica ilustra de forma exemplar o trade-off entre **eficiência estática** e **eficiência dinâmica** discutido no Capítulo 15 (Monopólio). O custo marginal de produzir um comprimido adicional é frequentemente centavos — mas o custo de desenvolver o medicamento (pesquisa, ensaios clínicos, aprovação regulatória) pode chegar a US\$ 2 bilhões ao longo de 10–15 anos.

Sem patentes, o preço cairia para o custo marginal (\(p = CMg\)) assim que o medicamento fosse lançado — eliminando qualquer incentivo para P&D. Com patentes (tipicamente 20 anos), o laboratório detém monopólio temporário e cobra \(p > CMg\), gerando peso morto (Capítulo 15) mas financiando a inovação.

O ciclo de vida de um medicamento segue um padrão previsível:

1. **Fase de patente (monopólio):** O laboratório cobra preço de monopólio \(p_M\), gera lucro supranormal e recupera o investimento em P&D.
2. **Expiração da patente:** Entram fabricantes de genéricos. O preço cai drasticamente — frequentemente para 10–20% do preço original.
3. **Competição de genéricos:** Com múltiplos fabricantes, o preço converge para algo próximo de \(CMg\), como prevê o modelo competitivo do Capítulo 13.

Formalmente, o bem-estar social ao longo do ciclo de vida é:

\[
W = \underbrace{\int_0^T \left[ W_M(t) + \pi_M(t) \right] dt}_{\text{fase de patente}} + \underbrace{\int_T^{\infty} W_C(t) \, dt}_{\text{fase competitiva}} - F \tag{23.9}
\]

onde \(W_M\) é o excedente do consumidor sob monopólio, \(\pi_M\) é o lucro de monopólio, \(W_C\) é o excedente total sob competição, \(T\) é a duração da patente e \(F\) é o custo fixo de P&D. A duração ótima da patente \(T^*\) maximiza \(W\): se \(T\) é muito curto, o incentivo a inovar é insuficiente; se é muito longo, o peso morto acumulado é excessivo.

!!! box-mundo "Box Mundo 23.2 — A batalha dos preços de medicamentos nos EUA"

    **Contexto:** Os Estados Unidos são o único país de alta renda que não negocia centralmente os preços de medicamentos. A Medicare (seguro público para idosos) foi explicitamente proibida de negociar preços farmacêuticos pelo Medicare Modernization Act de 2003. O resultado: americanos pagam, em média, 2 a 3 vezes mais por medicamentos de marca do que consumidores em outros países da OCDE.

    **Dados:** Em 2022, o gasto per capita em medicamentos nos EUA foi de US\$ 1.432 — contra US\$ 884 na Alemanha, US\$ 677 na França e US\$ 477 no Reino Unido. A insulina, descoberta em 1921 (patente vendida por US\$ 1), custava em média US\$ 98 por frasco nos EUA em 2023 — e menos de US\$ 10 em muitos países. O medicamento Humira (adalimumab), o mais vendido do mundo, custava US\$ 77.000/ano nos EUA vs. US\$ 16.000 no Reino Unido antes da entrada de biossimilares.

    **Análise:** O caso americano ilustra os extremos do modelo de patentes sem contrapeso monopsônico. Em países com sistema universal (NHS, Canadá, Austrália), o comprador único (*single payer*) negocia preços com as farmacêuticas, gerando preços menores — mas potencialmente reduzindo o incentivo à inovação. O Inflation Reduction Act de 2022 permitiu pela primeira vez que a Medicare negocie preços de certos medicamentos a partir de 2026, gerando intenso debate sobre o equilíbrio entre acesso e inovação.

    **Fonte:** OECD. 2023. [*Health at a Glance 2023*](https://doi.org/10.1787/7a7afb35-en). Paris: OECD Publishing.

!!! box-brasil "Box Brasil 23.1 — O SUS: cobertura universal no papel e na prática"

    **Contexto:** O Sistema Único de Saúde (SUS), criado pela Constituição de 1988, é um dos maiores sistemas públicos de saúde do mundo. Baseado nos princípios de universalidade, integralidade e equidade, o SUS oferece atendimento gratuito a todos os residentes do Brasil — 214 milhões de pessoas. Cerca de 75% da população depende exclusivamente do SUS; os outros 25% têm planos de saúde suplementar (regulados pela ANS).

    **Dados:** O gasto público em saúde no Brasil é de aproximadamente 4% do PIB (2023) — abaixo da média da OCDE (6,5%) e significativamente abaixo de países com sistemas universais semelhantes (Reino Unido: 8%, Canadá: 7,5%). O gasto privado (planos de saúde e desembolso direto) adiciona mais 5% do PIB. O SUS realiza mais de 4 bilhões de procedimentos ambulatoriais e 11 milhões de internações por ano. O Programa Nacional de Imunizações (PNI) é um dos mais abrangentes do mundo, responsável por campanhas de vacinação que erradicaram a poliomielite e controlaram o sarampo.

    **Análise:** O SUS enfrenta uma contradição estrutural: oferece direitos universais com financiamento insuficiente. O resultado é um sistema de "universalismo com racionamento": acesso universal no papel, mas filas longas, escassez de especialistas, e desigualdade regional na prática. O tempo médio de espera para cirurgia eletiva ultrapassa 6 meses em muitas localidades. Paradoxalmente, o sistema de saúde suplementar (planos privados) beneficia-se do SUS: procedimentos de alta complexidade (transplantes, tratamento de câncer, HIV/AIDS) são frequentemente realizados pelo SUS mesmo para pacientes com planos privados, configurando um subsídio cruzado implícito do setor público para o privado. A Emenda Constitucional 95/2016 (teto de gastos) agravou o subfinanciamento ao congelar as despesas federais em saúde em termos reais por 20 anos.

    **Fonte:** Ministério da Saúde. 2024. [*DATASUS — Informações de Saúde*](https://datasus.saude.gov.br/). Brasília.

---

## 23.4 Seguros de Saúde

### 23.4.1 Seleção adversa em seguros de saúde

Se você já se perguntou por que planos de saúde são tão caros mesmo para quem nunca vai ao médico, a resposta tem nome e sobrenome: Rothschild e Stiglitz. O mercado de seguros de saúde é a aplicação mais importante do modelo de Rothschild-Stiglitz (1976) estudado no Capítulo 19. A intuição é direta — e devastadora: se a seguradora cobra um prêmio único baseado no risco médio da população, os indivíduos de baixo risco consideram o prêmio caro demais e abandonam o mercado. Isso eleva o risco médio dos segurados, obrigando a seguradora a aumentar o prêmio — o que expulsa mais indivíduos de baixo risco. O processo pode se repetir até que apenas os indivíduos de mais alto risco permaneçam, ou o mercado desapareça completamente.

Formalmente, considere dois tipos de indivíduos: baixo risco (\(L\)) com probabilidade de doença \(\pi_L\) e alto risco (\(H\)) com \(\pi_H > \pi_L\). Ambos são aversos ao risco. Se a seguradora não observa o tipo, a seleção adversa emerge:

**Caso 1: Informação simétrica (benchmark).** Se a seguradora sabe quem é \(L\) e quem é \(H\), oferece contratos atuarialmente justos separados:

\[
P_L = \pi_L \cdot m \quad \text{e} \quad P_H = \pi_H \cdot m \tag{23.10}
\]

Ambos os tipos compram seguro completo. Resultado eficiente.

**Caso 2: Informação assimétrica (Rothschild-Stiglitz).** Se a seguradora não distingue os tipos, um contrato único com prêmio médio \(\bar{P} = \lambda \pi_H m + (1-\lambda) \pi_L m\) (onde \(\lambda\) é a fração de alto risco) gera seleção adversa: os tipo-\(L\) consideram \(\bar{P}\) caro demais (pois \(\bar{P} > P_L\)) e podem preferir não comprar seguro.

O **equilíbrio separador** de Rothschild-Stiglitz (Capítulo 19) resolve o problema parcialmente: a seguradora oferece dois contratos:

- Contrato \(H\): seguro completo ao preço \(P_H = \pi_H m\) (atuarialmente justo para alto risco)
- Contrato \(L\): seguro parcial (com dedutível ou coparticipação) ao preço \(P_L' < P_L\) (atuarialmente justo para baixo risco, mas com cobertura incompleta)

A lógica é que o alto risco não quer o contrato \(L\) (cobertura insuficiente), e o baixo risco prefere o contrato \(L\) ao contrato \(H\) (mais barato, mesmo com cobertura menor). A restrição de compatibilidade de incentivos (Capítulo 19) limita a cobertura oferecida ao tipo-\(L\):

\[
u(W - P_H) \geq \pi_H \cdot u(W - P_L' - d_L) + (1-\pi_H) \cdot u(W - P_L') \tag{23.11}
\]

onde \(d_L\) é o dedutível do contrato \(L\). Essa restrição garante que o tipo-\(H\) não tenha incentivo para se passar por tipo-\(L\).

!!! idea "Intuição Econômica"
    **Em uma frase:** A seleção adversa em saúde funciona como no mercado de limões de Akerlof — mas com consequências potencialmente fatais.

    **Pense assim:** Imagine uma seguradora que não pode ver seu histórico médico. Ela cobra R\$ 500/mês, o preço justo para o risco médio. Quem aceita pagar R\$ 500? Pessoas que sabem que vão ao médico frequentemente — ou que têm condição pré-existente. Pessoas jovens e saudáveis pensam: "R\$ 500/mês por algo que provavelmente não vou usar? Prefiro guardar o dinheiro." Quando os saudáveis saem, o pool de segurados fica mais arriscado, o prêmio sobe para R\$ 700... e mais saudáveis saem. Esse é o "espiral da morte" dos seguros de saúde.

    **Por que isso importa:** A seleção adversa é a principal justificativa econômica para a obrigatoriedade de seguros de saúde (como no ACA/Obamacare nos EUA, ou no modelo de planos empresariais). Se *todos* são obrigados a participar, os saudáveis subsidiam os doentes — que é exatamente como o seguro funciona. Sem obrigatoriedade, o mercado pode colapsar.

### 23.4.2 A espiral da morte e o desenrolamento do mercado

A dinâmica de seleção adversa pode levar ao **market unraveling** (desenrolamento do mercado) — também conhecido como **death spiral** (espiral da morte) no contexto de seguros de saúde. O mecanismo é:

1. A seguradora fixa o prêmio no custo médio esperado: \(P_0 = E[m]\).
2. Indivíduos de baixo risco saem (pois \(P_0 > \pi_L m\)).
3. O custo médio dos segurados restantes sobe: \(E[m \mid \text{segurados}] > P_0\).
4. A seguradora ajusta: \(P_1 = E[m \mid \text{segurados}] > P_0\).
5. Mais indivíduos de risco intermediário saem. O ciclo se repete.

No limite, apenas os indivíduos de mais alto risco permanecem segurados — ou o mercado desaparece.

Formalmente, se os tipos são distribuídos continuamente com \(\pi_i \sim F(\pi)\) e o custo é \(m_i = \pi_i \cdot L\) (onde \(L\) é a perda em caso de doença), o prêmio de equilíbrio satisfaz:

\[
P^* = E[\pi_i \cdot L \mid \pi_i \geq \pi^*(P^*)] \tag{23.12}
\]

onde \(\pi^*(P)\) é o tipo marginal que é indiferente entre comprar e não comprar seguro ao prêmio \(P\). O equilíbrio é um ponto fixo que pode não existir (mercado colapsa), existir com cobertura parcial (apenas alto risco segurado), ou existir com cobertura universal (se houver obrigatoriedade).

No gráfico interativo abaixo, simule a dinâmica da espiral da morte. Ajuste a dispersão de risco e o loading factor e observe como o prêmio sobe e o número de segurados cai a cada rodada.

<iframe src="../graficos/cap23/espiral-morte.html" title="Figura 23.2 — Espiral da Morte: Seleção Adversa em Seguros de Saúde" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 23.2 — Espiral da Morte em Mercados de Seguros.** A cada rodada, indivíduos de baixo risco abandonam o mercado, elevando o custo médio do pool segurado. O prêmio sobe (eixo esquerdo, vermelho) e a cobertura cai (eixo direito, verde). Aumente a dispersão de risco e o loading factor para observar o colapso total do mercado.
</div>

### 23.4.3 Risco moral: ex ante e ex post

O risco moral em seguros de saúde assume duas formas, ambas estudadas no Capítulo 19:

**Risco moral ex ante (prevenção).** Uma vez segurado, o indivíduo pode investir menos em prevenção: fumar mais, exercitar-se menos, comer pior — pois sabe que o seguro cobrirá os custos do tratamento. Formalmente, se \(e\) é o esforço de prevenção (custoso para o indivíduo), o seguro completo gera:

\[
\frac{\partial \pi}{\partial e} \cdot m = 0 \quad \text{(pois o custo } m \text{ é coberto pelo seguro)} \tag{23.13}
\]

O benefício marginal da prevenção cai a zero, e o indivíduo escolhe \(e^* = 0\). Sem seguro, o indivíduo internalizaria o custo \(m\) e escolheria prevenção positiva.

Na prática, a evidência empírica sugere que o risco moral ex ante é limitado: a maioria das pessoas não começa a fumar porque tem plano de saúde. Os custos da doença vão muito além dos financeiros (dor, sofrimento, perda de tempo, mortalidade) e não são cobertos pelo seguro.

**Risco moral ex post (utilização).** Esta é a forma principal e empiricamente mais relevante. Uma vez doente, o paciente segurado consome mais cuidados médicos do que consumiria se pagasse o preço integral. O RAND Experiment (Seção 23.2.2) documentou esse fenômeno quantitativamente: a elasticidade de \(-0{,}2\) representa o risco moral ex post.

A solução clássica é o **cost-sharing** (compartilhamento de custos): coparticipação, dedutíveis e tetos. O desenho ótimo do contrato de seguro equilibra dois objetivos conflitantes:

\[
\min_{(P, d, c)} \; \underbrace{\text{Risco não segurado}}_{\text{quanto maior } d \text{ e } c} + \underbrace{\text{Risco moral}}_{\text{quanto menor } d \text{ e } c} \tag{23.14}
\]

onde \(d\) é o dedutível e \(c\) é a taxa de coparticipação. Seguro completo (\(d = c = 0\)) elimina o risco mas maximiza o risco moral. Sem seguro (\(d \to \infty\)) elimina o risco moral mas expõe o indivíduo ao risco total.

### 23.4.4 Ajuste de risco e community rating

Reguladores de seguros de saúde usam duas ferramentas principais para lidar com seleção adversa:

**Community rating** (tarifa comunitária): a seguradora é obrigada a cobrar o mesmo prêmio de todos os segurados, independentemente de idade, sexo ou condição de saúde. Isso impede a discriminação de preços baseada em risco — mas agrava a seleção adversa, pois os saudáveis pagam mais que seu risco atuarial.

**Ajuste de risco** (*risk adjustment*): o regulador transfere recursos das seguradoras com segurados mais saudáveis para as que têm segurados mais doentes, compensando as diferenças de risco. Isso reduz o incentivo para as seguradoras "selecionar" (atrair saudáveis e evitar doentes) — prática conhecida como **cream-skimming** ou **cherry-picking**.

Formalmente, o pagamento de ajuste de risco para a seguradora \(j\) é:

\[
AR_j = \sum_i \left( \hat{m}_i - \bar{m} \right) \tag{23.15}
\]

onde \(\hat{m}_i\) é o custo previsto do segurado \(i\) (baseado em fatores observáveis como idade, sexo, diagnósticos prévios) e \(\bar{m}\) é o custo médio da população. Seguradoras com segurados mais caros (\(\hat{m}_i > \bar{m}\)) recebem transferências; seguradoras com segurados mais baratos pagam.

!!! box-mundo "Box Mundo 23.3 — O Obamacare e a luta contra a espiral da morte"

    **Contexto:** O Affordable Care Act (ACA), aprovado em 2010 e implementado a partir de 2014, foi a mais significativa reforma de saúde nos EUA em meio século. Seu objetivo principal era expandir a cobertura de seguro saúde a cerca de 50 milhões de americanos não segurados — sem criar um sistema universal público.

    **Dados:** A ACA combinou quatro instrumentos: (1) **mandato individual** — obrigatoriedade de ter seguro, com multa para quem não cumprisse (eliminado em 2019); (2) **subsídios** — ajuda financeira para famílias de baixa e média renda comprarem seguro nos marketplaces; (3) **community rating** — proibição de discriminação por condição pré-existente; (4) **expansão do Medicaid** — ampliação do seguro público para famílias com renda até 138% da linha de pobreza. Entre 2010 e 2023, o número de americanos sem seguro caiu de 48 milhões (16%) para 26 milhões (8%).

    **Análise:** A lógica econômica da ACA é uma aplicação direta do modelo de Rothschild-Stiglitz. O community rating (instrumento 3) cria o risco de espiral da morte — pois os saudáveis pagam mais que seu risco. O mandato individual (instrumento 1) resolve o problema forçando os saudáveis a permanecer no pool. Os subsídios (instrumento 2) tornam o seguro acessível para quem não pode pagar. A expansão do Medicaid (instrumento 4) cobre quem é pobre demais para o mercado privado. A eliminação do mandato em 2019 enfraqueceu o mecanismo anti-seleção adversa, gerando temores de espiral — mas os prêmios estabilizaram, em parte porque os subsídios foram ampliados e porque muitos estados mantiveram mandatos locais.

    **Fonte:** KFF (Kaiser Family Foundation). 2024. [*Key Facts about the Uninsured Population*](https://www.kff.org/uninsured/). Washington, DC.

??? exercicio-resolvido "Exercício Resolvido 23.2 — Seleção adversa e espiral da morte"
    **Enunciado.** Uma população de 1.000 indivíduos tem risco distribuído uniformemente: o indivíduo \(i\) tem probabilidade de doença \(\pi_i = i/1000\) (o indivíduo 1 tem \(\pi = 0{,}001\), o 1000 tem \(\pi = 1\)). O custo do tratamento é \(L = 10.000\) reais. Todos são neutros ao risco. O valor do seguro para o indivíduo \(i\) é \(V_i = 1{,}2 \cdot \pi_i \cdot L\) (o indivíduo está disposto a pagar 20% acima do valor atuarial).

    (a) Calcule o prêmio atuarialmente justo para toda a população.

    (b) A qual prêmio, quantos indivíduos compram seguro voluntariamente?

    (c) Se a seguradora ajusta o prêmio para o custo médio dos segurados, demonstre a dinâmica da espiral.

    (d) Encontre o equilíbrio (se existir) e calcule quantos ficam sem seguro.

    ---

    **Solução.**

    **(a)** Custo médio na população inteira:

    \[
    \bar{P} = E[\pi_i] \cdot L = 0{,}5005 \times 10.000 \approx \text{R\$}\;5.005
    \]

    (média de \(\pi\) uniformemente distribuída em \([0{,}001, 1]\) é \(\approx 0{,}5005\)).

    **(b)** O indivíduo \(i\) compra seguro se \(V_i \geq P\), ou seja, \(1{,}2 \cdot \pi_i \cdot 10.000 \geq P\), portanto \(\pi_i \geq P / 12.000\).

    Com \(P = 5.005\): \(\pi_i \geq 5.005/12.000 = 0{,}417\). Isso significa que indivíduos com \(i \geq 417\) compram: \(1.000 - 417 + 1 = 584\) compradores.

    **(c)** O custo médio dos 584 segurados (indivíduos 417 a 1000):

    \[
    P_1 = E[\pi_i \mid \pi_i \geq 0{,}417] \cdot 10.000 = \frac{0{,}417 + 1}{2} \times 10.000 = 0{,}709 \times 10.000 = \text{R\$}\;7.085
    \]

    Com \(P_1 = 7.085\): \(\pi_i \geq 7.085/12.000 = 0{,}591\). Agora apenas indivíduos com \(i \geq 591\) compram: 410 compradores.

    Custo médio dos 410: \(P_2 = \frac{0{,}591 + 1}{2} \times 10.000 = 7.955\). Novo limiar: \(\pi_i \geq 0{,}663\). Compradores: 338.

    O processo continua até convergir.

    **(d)** No equilíbrio, o prêmio \(P^*\) e o tipo marginal \(\pi^*\) satisfazem simultaneamente:

    \[
    P^* = \frac{\pi^* + 1}{2} \times 10.000 \quad \text{e} \quad \pi^* = \frac{P^*}{12.000}
    \]

    Substituindo: \(P^* = \frac{P^*/12.000 + 1}{2} \times 10.000 = \frac{P^*}{2{,}4} + 5.000\).

    \[
    P^* - \frac{P^*}{2{,}4} = 5.000 \implies P^* \left(1 - \frac{1}{2{,}4}\right) = 5.000 \implies P^* \times 0{,}583 = 5.000 \implies P^* \approx 8.571
    \]

    Tipo marginal: \(\pi^* = 8.571/12.000 \approx 0{,}714\). Apenas indivíduos com \(i \geq 714\) compram: **286 segurados** (28,6% da população). Os outros 714 ficam sem seguro — mesmo que todos se beneficiariam do seguro se pudessem obtê-lo ao preço justo individual. Essa é a ineficiência da seleção adversa: a informação assimétrica destrói o mercado para a maioria.

!!! box-brasil "Box Brasil 23.2 — ANS, planos privados e a regulação da saúde suplementar"

    **Contexto:** A Agência Nacional de Saúde Suplementar (ANS), criada em 2000, regula os planos de saúde privados no Brasil. Em 2023, cerca de 51 milhões de brasileiros (24% da população) possuíam planos de saúde — a grande maioria (70%) vinculados ao emprego. A ANS implementa regras de community rating parcial: os planos individuais devem oferecer cobertura sem exclusão por doença preexistente (após 24 meses de carência), e o reajuste de preços por faixa etária é limitado (a última faixa não pode custar mais que 6 vezes a primeira).

    **Dados:** O gasto médio com planos de saúde é de R\$ 350–R\$ 600/mês por beneficiário (2023), com variação significativa por região e operadora. A sinistralidade média (gastos com atendimento / receita de prêmios) oscila entre 80% e 85%, deixando margem reduzida para custos administrativos e lucro. Os reajustes anuais têm sistematicamente superado a inflação geral: entre 2015 e 2023, os planos individuais acumularam reajuste de 105%, contra 62% do IPCA.

    **Análise:** O modelo brasileiro combina elementos dos modelos Beveridge (SUS) e Bismarck (planos privados). A regulação da ANS tenta evitar a seleção adversa via regras de community rating e cobertura obrigatória — mas enfrenta desafios: (i) a vinculação ao emprego gera cobertura pró-cíclica (cai em recessões, quando a saúde é mais necessária); (ii) o Programa Farmácia Popular, que subsidia medicamentos, beneficia tanto usuários do SUS quanto de planos privados; (iii) a judicialização da saúde (pacientes que obtêm tratamentos caros via decisão judicial) pressiona os custos tanto do SUS quanto dos planos privados. Em 2022, mais de 600 mil processos judiciais envolveram demandas por tratamentos médicos no Brasil.

    **Fonte:** ANS. 2024. [*Dados do Setor*](https://www.gov.br/ans/pt-br/acesso-a-informacao/perfil-do-setor/dados-gerais). Brasília: Agência Nacional de Saúde Suplementar.

---

## 23.5 Sistemas de Saúde Comparados

### 23.5.1 Quatro modelos de organização

Se você ficar doente em Londres, o NHS cuida de você de graça — mas talvez depois de semanas na fila. Se ficar doente em Houston, será atendido na hora — mas a conta pode custar o equivalente a um carro. Se ficar doente em São Paulo, depende: tem plano ou não tem? Os sistemas de saúde do mundo podem ser classificados em quatro modelos básicos, cada um representando uma combinação diferente de financiamento e provisão — e cada um com suas dores de cabeça próprias:

**Modelo Beveridge (Serviço Nacional de Saúde).**
Financiamento: impostos gerais. Provisão: pública (hospitais e médicos públicos). Exemplos: Reino Unido (NHS), Espanha, Itália, países nórdicos, Brasil (SUS). Características: acesso universal, controle de custos, filas para eletivos.

**Modelo Bismarck (Seguro Social).**
Financiamento: contribuições obrigatórias de empregadores e empregados, via fundos de doença (*sickness funds*). Provisão: privada regulada. Exemplos: Alemanha, França, Japão, Holanda. Características: cobertura universal via emprego, competição entre fundos, regulação intensa.

**Modelo de Seguro Nacional.**
Financiamento: impostos (como Beveridge). Provisão: privada (como Bismarck). Exemplos: Canadá, Austrália, Taiwan, Coreia do Sul. Características: pagador único (*single payer*) público, prestadores privados, controle de custos moderado.

**Modelo de Mercado Privado.**
Financiamento: prêmios de seguro privado e pagamento direto. Provisão: privada. Exemplo: Estados Unidos (antes do ACA). Características: inovação tecnológica, alto gasto, cobertura incompleta, desigualdade.

| Modelo | Financiamento | Provisão | Cobertura | Gasto (% PIB) | Exemplo |
|:-------|:-------------|:---------|:----------|:--------------|:--------|
| Beveridge | Impostos | Pública | Universal | 7–11% | NHS (UK) |
| Bismarck | Contribuições | Privada regulada | Universal | 10–12% | Alemanha |
| Seguro Nacional | Impostos | Privada | Universal | 8–11% | Canadá |
| Mercado | Prêmios privados | Privada | Parcial | 17% | EUA |

### 23.5.2 O trade-off eficiência-equidade em saúde

Nenhum sistema de saúde resolve simultaneamente todos os objetivos desejáveis: acesso universal, qualidade clínica, inovação tecnológica, controle de custos e liberdade de escolha. Cada modelo faz trade-offs diferentes:

**Eficiência alocativa.** O sistema de mercado (EUA) é o que mais se aproxima da alocação de mercado, com preços sinalizando escassez. Mas as falhas de mercado identificadas por Arrow tornam essa "eficiência" ilusória: os EUA gastam 17,3% do PIB em saúde — quase o dobro da média da OCDE — com resultados de saúde medianos (expectativa de vida de 77 anos, 31o lugar na OCDE).

**Equidade de acesso.** Sistemas universais (Beveridge, Bismarck, Seguro Nacional) garantem acesso independente da renda. Mas a igualdade formal não implica igualdade real: no NHS, pacientes de regiões mais pobres esperam mais por cirurgias; no SUS, a qualidade do atendimento varia drasticamente entre municípios ricos e pobres.

**Inovação.** Os altos preços americanos financiam a maior parte da inovação farmacêutica global: cerca de 45% dos novos medicamentos são desenvolvidos por empresas baseadas nos EUA. Sistemas com controle de preços (NHS, Canadá) são "free-riders" parciais da inovação americana — beneficiam-se dos medicamentos sem financiar proporcionalmente seu desenvolvimento.

**Controle de custos.** Sistemas com pagador único (Canadá, NHS) têm mais poder para controlar custos — via orçamentos globais, negociação centralizada de preços e monopsônio na compra de insumos. Sistemas fragmentados (EUA) têm menor capacidade de controle: múltiplas seguradoras competem, mas os custos administrativos (faturamento, auditoria, marketing) consomem até 30% do gasto total.

!!! idea "Intuição Econômica"
    **Em uma frase:** Não existe sistema de saúde perfeito — cada modelo faz trade-offs diferentes entre acesso, qualidade, custo e inovação.

    **Pense assim:** Pense nos quatro modelos como quatro restaurantes. O Restaurante Beveridge (NHS) oferece menu fixo, gratuito, para todos — mas às vezes a comida é fria e a espera é longa. O Restaurante Bismarck (Alemanha) exige cartão de sócio (contribuição obrigatória) e permite escolher entre vários buffets concorrentes — boa qualidade, custo razoável. O Restaurante Single-Payer (Canadá) aceita todos, deixa o cliente escolher o prato (médico privado), mas o dono único decide o cardápio e os preços. O Restaurante Mercado (EUA) tem a melhor cozinha, pratos sofisticados — mas custa três vezes mais e nem todos podem entrar.

    **Por que isso importa:** O Brasil faz uma combinação curiosa: tem um Restaurante Beveridge (SUS) que aceita todos mas serve porções pequenas, e um Restaurante privado (planos) que atende um quarto da população com cardápio mais amplo. A pergunta central de política pública é: como financiar adequadamente o restaurante universal sem destruir os incentivos do sistema privado?

### 23.5.3 Gastos e resultados: a anomalia americana

Os Estados Unidos são um caso extremo instrutivo. Com gasto de US\$ 12.555 per capita em saúde (2022) — mais que o dobro da média da OCDE de US\$ 4.986 — os resultados de saúde estão abaixo da média: expectativa de vida de 77,5 anos (vs. 80,3 na OCDE), mortalidade infantil de 5,4 por mil (vs. 4,5 na OCDE), e 26 milhões de pessoas sem seguro (8% da população).

As explicações econômicas para a anomalia americana incluem:

1. **Preços, não quantidades.** Anderson et al. (2003) mostraram que a diferença de gasto entre EUA e outros países se deve principalmente a *preços mais altos* (de medicamentos, médicos, hospitais, dispositivos), não a maior utilização de serviços. A famosa conclusão: "It's the prices, stupid."

2. **Custos administrativos.** O sistema fragmentado (múltiplas seguradoras, múltiplos esquemas de faturamento, marketing, auditoria) consome 8% do gasto total em saúde em custos administrativos — contra 1–3% em sistemas de pagador único.

3. **Medicina defensiva.** O sistema jurídico americano de responsabilidade civil (*malpractice*) incentiva médicos a pedirem exames excessivos para se proteger de processos.

4. **Inovação cara.** Os EUA adotam novas tecnologias médicas rapidamente — e pagam preços de monopólio por elas.

---

## 23.6 Avaliação Econômica em Saúde

### 23.6.1 Tipos de avaliação econômica

Um governo tem R\$ 50 milhões. Gasta em vacinas que salvam mil vidas, ou em um medicamento de ponta que salva dez? Parece uma pergunta cruel — e é. Mas alguém precisa fazê-la, porque recursos em saúde são escassos e fingir o contrário não salva ninguém. A avaliação econômica em saúde desenvolveu um conjunto de ferramentas para informar essa decisão dolorosa mas inevitável. Os três métodos principais são:

**Análise custo-efetividade (ACE / CEA).** Compara intervenções em termos de custo por unidade de resultado de saúde (anos de vida ganhos, casos evitados, curas). A medida mais comum é o **custo por QALY ganho** (ver abaixo). A ACE não exige monetizar a saúde — apenas ordena intervenções pela relação custo-resultado.

\[
ICER = \frac{C_1 - C_0}{E_1 - E_0} = \frac{\Delta C}{\Delta E} \tag{23.16}
\]

onde \(C_1, C_0\) são os custos das alternativas e \(E_1, E_0\) são os efeitos (em QALYs). O **ICER** (*Incremental Cost-Effectiveness Ratio*) é o custo adicional por QALY adicional da intervenção 1 relativamente à intervenção 0.

**Análise custo-benefício (ACB / CBA).** Monetiza tanto custos quanto benefícios, incluindo o valor da saúde em termos monetários. A regra de decisão é simples: implementar se \(B > C\) (benefício líquido positivo). A ACB é mais geral que a ACE (permite comparar intervenções de saúde com intervenções de outros setores), mas requer atribuir valor monetário à vida e à saúde — o que é controverso.

**Análise custo-utilidade (ACU).** Caso especial da ACE em que o resultado é medido em **QALYs** — uma medida que combina quantidade e qualidade de vida. Um ano vivido em saúde perfeita vale 1 QALY; um ano vivido com doença grave pode valer 0,3 QALY; morte equivale a 0.

### 23.6.2 O QALY e o DALY

O **QALY** (*Quality-Adjusted Life Year*) é a unidade de medida mais usada em avaliação econômica em saúde. A ideia é ponderar os anos de vida pela qualidade:

\[
\text{QALYs} = \sum_{t=0}^{T} q_t \cdot \frac{1}{(1+r)^t} \tag{23.17}
\]

onde \(q_t \in [0, 1]\) é a qualidade de vida no ano \(t\) (1 = saúde perfeita, 0 = morte) e \(r\) é a taxa de desconto. Os pesos \(q_t\) são estimados por métodos como o *standard gamble* (quanto risco de morte a pessoa aceita para evitar o estado de saúde) ou o *time trade-off* (quantos anos de vida a pessoa trocaria por anos em saúde perfeita).

O **DALY** (*Disability-Adjusted Life Year*), desenvolvido pela OMS, mede a carga de doença: um DALY é um ano de vida saudável perdido. Se o QALY é "quanto ganhamos", o DALY é "quanto perdemos":

\[
\text{DALYs} = \underbrace{YLL}_{\text{anos de vida perdidos por morte prematura}} + \underbrace{YLD}_{\text{anos vividos com incapacidade}} \tag{23.18}
\]

!!! definition "QALY e limiar de custo-efetividade"
    Uma intervenção é considerada **custo-efetiva** se seu ICER está abaixo de um limiar socialmente definido. O NICE (National Institute for Health and Care Excellence) do Reino Unido usa um limiar de \(\pounds 20.000\)–\(\pounds 30.000\) por QALY. A OMS sugere um limiar de 1 a 3 vezes o PIB per capita por DALY evitado. No Brasil, a CONITEC (Comissão Nacional de Incorporação de Tecnologias no SUS) não tem limiar explícito, mas análises sugerem que decisões passadas são consistentes com um limiar implícito de R\$ 40.000–R\$ 100.000 por QALY.

### 23.6.3 Disposição a pagar pela vida e pela saúde

Quanto vale uma vida? Se você respondeu "não tem preço", parabéns — você tem bom coração, mas nunca elaborou um orçamento público. Na prática, governos colocam preço em vidas todos os dias: quando decidem quanto investir em rodovias mais seguras, em tratamentos de câncer, em regulação de poluição. A pergunta — central tanto para o Capítulo 20 (externalidades) quanto para a economia da saúde — é respondida pelo conceito de **valor de uma vida estatística** (VSL, *Value of Statistical Life*).

O VSL não é o valor de uma vida individual específica (que a maioria das pessoas considera infinito), mas o valor implícito de uma redução de risco. Se 10.000 trabalhadores aceitam um adicional de periculosidade de R\$ 1.000/ano para um trabalho com risco de morte 0,01% maior, o VSL implícito é:

\[
VSL = \frac{\text{adicional salarial}}{\text{redução de risco}} = \frac{1.000}{0{,}0001} = \text{R\$}\;10.000.000 \tag{23.19}
\]

As estimativas de VSL variam amplamente: US\$ 5–12 milhões nos EUA (Viscusi e Aldy, 2003), com valores mais baixos em países de menor renda. O VSL é usado para avaliar regulações de segurança (trânsito, poluição, alimentos), políticas ambientais e, crescentemente, para informar decisões de investimento em saúde pública.

??? exercicio-resolvido "Exercício Resolvido 23.3 — Análise custo-efetividade de duas intervenções"
    **Enunciado.** O governo considera duas intervenções de saúde pública:

    - **Intervenção A** (rastreamento de câncer): custo de R\$ 50 milhões, gera 2.000 QALYs adicionais.
    - **Intervenção B** (programa de vacinação): custo de R\$ 20 milhões, gera 1.500 QALYs adicionais.

    O orçamento disponível é de R\$ 60 milhões. O limiar de custo-efetividade é de R\$ 50.000/QALY.

    (a) Calcule o ICER de cada intervenção (relativo a "não fazer nada").

    (b) Qual intervenção é mais custo-efetiva?

    (c) Se o orçamento permite implementar ambas, qual é a decisão ótima?

    (d) Se o orçamento permite apenas uma, qual deve ser escolhida? Justifique.

    ---

    **Solução.**

    **(a)** ICER (relativo a não fazer nada, onde \(C_0 = 0\) e \(E_0 = 0\)):

    \[
    ICER_A = \frac{50.000.000}{2.000} = \text{R\$}\;25.000/\text{QALY}
    \]

    \[
    ICER_B = \frac{20.000.000}{1.500} = \text{R\$}\;13.333/\text{QALY}
    \]

    **(b)** A Intervenção B é mais custo-efetiva (menor ICER): custa R\$ 13.333 por QALY, contra R\$ 25.000 da Intervenção A. Ambas estão abaixo do limiar de R\$ 50.000/QALY.

    **(c)** O custo total de ambas: R\$ 50 + R\$ 20 = R\$ 70 milhões > R\$ 60 milhões. O orçamento *não* permite ambas.

    **(d)** Se apenas uma pode ser implementada, a decisão depende do critério:

    - **Pelo ICER** (custo-efetividade): escolher B (menor ICER).
    - **Pelo total de QALYs**: escolher A (2.000 > 1.500 QALYs).
    - **Pelo benefício líquido** (QALYs × limiar − custo): \(BL_A = 2.000 \times 50.000 - 50.000.000 = 50.000.000\); \(BL_B = 1.500 \times 50.000 - 20.000.000 = 55.000.000\). Pelo benefício líquido, B é superior.

    Na prática, a análise de custo-efetividade recomendaria B: gera mais saúde por real investido e libera R\$ 40 milhões para outras intervenções. Mas se o orçamento for "use ou perca" (sem possibilidade de realocar), A gera mais QALYs totais.

### 23.6.4 Externalidades e bens públicos em saúde

A vacinação é o exemplo paradigmático de externalidade positiva (Capítulo 20). Quando um indivíduo se vacina, ele se protege (benefício privado) *e* reduz a probabilidade de transmitir a doença a outros (benefício externo). A imunidade de rebanho ocorre quando a proporção de vacinados excede um limiar \(1 - 1/R_0\), onde \(R_0\) é o número básico de reprodução da doença.

Para sarampo (\(R_0 \approx 15\)), o limiar é \(1 - 1/15 \approx 93\%\). Para COVID-19 (variante original, \(R_0 \approx 3\)), o limiar é \(\approx 67\%\).

O problema é que o benefício externo não é internalizado pelo indivíduo. Seja \(B_p\) o benefício privado da vacinação, \(B_e\) o benefício externo, e \(c\) o custo (financeiro + efeitos colaterais):

\[
\text{Decisão privada: vacinar se } B_p > c \tag{23.20}
\]

\[
\text{Ótimo social: vacinar se } B_p + B_e > c \tag{23.21}
\]

Como \(B_p + B_e > B_p\), há indivíduos para quem \(c > B_p\) (não se vacinam) mas \(c < B_p + B_e\) (deveriam se vacinar do ponto de vista social). O mercado subprovê vacinação — justificando subsídios públicos ou obrigatoriedade, como discutido no Capítulo 20.

O controle de doenças contagiosas é análogo a um **bem público** (Capítulo 20): a erradicação da varíola beneficiou toda a humanidade, independentemente de quem contribuiu para o esforço. O problema do carona (*free-rider*) é severo: cada país tem incentivo para esperar que outros financiem a erradicação.

Lembra da aspirina de 25 dólares? Agora você entende por que ela custa tanto — e por que nenhuma solução simples resolve o problema. Incerteza, assimetria de informação, externalidades, bens meritórios e o dilema de financiar sistemas inteiros convergem para um mercado que desafia cada pressuposto do modelo competitivo. A economia da saúde é onde a microeconomia encontra a vida real em sua forma mais crua.

*A saúde desafia quase todos os pressupostos do modelo competitivo — e exige soluções que combinam economia, ética e política. No próximo e último capítulo, outro desafio existencial: o planeta.*

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Segundo Arrow (1963), o mercado de saúde é diferente de outros mercados porque:"
    - (a) Saúde é mais cara que outros bens
    - (b) Combina incerteza radical, assimetria de informação médico-paciente, externalidades e normas de bem meritório
    - (c) Os médicos são mais inteligentes que os consumidores típicos
    - (d) O governo sempre intervém em saúde

    ??? success "Resposta"
        **(b)** Arrow identificou quatro características que distinguem o mercado de saúde: (i) incerteza sobre doença e eficácia do tratamento; (ii) assimetria de informação entre médico e paciente; (iii) externalidades (vacinação, doenças contagiosas); (iv) normas sociais que tratam saúde como bem meritório. Essas características geram falhas de mercado que justificam intervenção pública. A alternativa (a) é insuficiente — diamantes são caros e não requerem intervenção.

??? question "2. No modelo de Grossman, a demanda por cuidados médicos é:"
    - (a) Independente da renda e do nível de educação
    - (b) Uma demanda derivada — o indivíduo demanda cuidados como insumo para produzir saúde
    - (c) Sempre crescente com a idade, pois idosos ficam mais doentes
    - (d) Perfeitamente elástica ao preço

    ??? success "Resposta"
        **(b)** Grossman distingue entre demanda por saúde (o objetivo) e demanda por cuidados médicos (o insumo). Assim como a demanda por aço deriva da demanda por carros, a demanda por consultas deriva da demanda por estar saudável. A alternativa (c) confunde demanda com necessidade: embora a necessidade aumente com a idade, a demanda depende também de preços, renda e eficiência do investimento.

??? question "3. O RAND Health Insurance Experiment mostrou que:"
    - (a) Planos gratuitos geram mais consultas e mais saúde para todos
    - (b) A elasticidade-preço da demanda por cuidados é zero — as pessoas vão ao médico independentemente do custo
    - (c) A demanda por cuidados responde ao preço (elasticidade ≈ −0,2), mas mais cuidados não melhoram a saúde para a maioria
    - (d) A coparticipação aumenta a demanda por serviços médicos

    ??? success "Resposta"
        **(c)** O RAND mostrou que a demanda por cuidados é inelástica mas significativamente diferente de zero (\(\varepsilon \approx -0{,}2\)). A descoberta central foi que mais cuidados (plano gratuito vs. com coparticipação) não melhoraram a saúde para a maioria dos participantes — a exceção foi o subgrupo de baixa renda e alto risco. A alternativa (a) é falsa para a maioria da população.

??? question "4. A 'espiral da morte' em seguros de saúde ocorre quando:"
    - (a) Todos os segurados ficam doentes simultaneamente
    - (b) A seleção adversa eleva progressivamente o prêmio, expulsando os saudáveis até o mercado colapsar
    - (c) O governo proíbe seguros de saúde privados
    - (d) Os hospitais aumentam seus preços indefinidamente

    ??? success "Resposta"
        **(b)** A espiral da morte é a dinâmica da seleção adversa: prêmio baseado no risco médio expulsa os saudáveis, elevando o risco médio dos remanescentes, forçando novo aumento do prêmio, e assim por diante. O Obamacare combateu isso com mandato individual (forçando os saudáveis a permanecer) e subsídios (tornando o seguro acessível).

??? question "5. O ICER (Incremental Cost-Effectiveness Ratio) de uma intervenção de saúde mede:"
    - (a) O custo total do tratamento dividido pelo número de pacientes
    - (b) O lucro da intervenção para o hospital
    - (c) O custo adicional por unidade adicional de resultado de saúde (geralmente QALY) em relação à alternativa
    - (d) A taxa de retorno financeiro do investimento em saúde

    ??? success "Resposta"
        **(c)** O ICER = \(\Delta C / \Delta E\) é o custo incremental por QALY adicional. Uma intervenção é custo-efetiva se seu ICER está abaixo do limiar socialmente definido (e.g., £20.000–£30.000/QALY no NHS). O ICER permite comparar intervenções com diferentes custos e efeitos em uma métrica comum.

---

## 📋 Resumo do Capítulo

- **O mercado de saúde é fundamentalmente diferente** de outros mercados. Arrow (1963) identificou quatro características — incerteza radical, assimetria de informação médico-paciente, externalidades e bens meritórios — que geram falhas de mercado severas e justificam intervenção pública em escala que não se aplica a mercados convencionais.

- **O modelo de Grossman (1972)** trata a saúde como estoque de capital durável que se deprecia com a idade. A demanda por cuidados médicos é *demanda derivada* — o indivíduo quer saúde, e os cuidados são insumos. Educação aumenta a eficiência da produção de saúde, explicando parte do gradiente educação-saúde.

- **O RAND Health Insurance Experiment** demonstrou que a demanda por cuidados responde ao preço (elasticidade ≈ −0,2), confirmando risco moral ex post. Para a maioria dos participantes, mais cuidados não geraram mais saúde — exceto para o subgrupo de baixa renda e alto risco, para quem a coparticipação era uma barreira ao cuidado necessário.

- **A oferta de serviços** enfrenta o problema da demanda induzida pelo ofertante (o médico é simultaneamente conselheiro e vendedor) e o comportamento distinto de hospitais sem fins lucrativos. A indústria farmacêutica exemplifica o trade-off entre eficiência estática (preço alto sob patente) e eficiência dinâmica (incentivo à inovação).

- **Seguros de saúde** são afetados por seleção adversa (Rothschild-Stiglitz) e risco moral (ex ante e ex post). A espiral da morte pode destruir mercados voluntários, justificando obrigatoriedade, community rating e ajuste de risco — instrumentos usados no ACA, na ANS brasileira e em sistemas europeus.

- **Sistemas de saúde comparados** revelam que não existe modelo perfeito: Beveridge (NHS), Bismarck (Alemanha), seguro nacional (Canadá) e mercado (EUA) fazem trade-offs diferentes entre acesso, qualidade, custo e inovação. A anomalia americana — gasto dobrado com resultados medianos — ilustra os custos de um sistema fragmentado.

- **A avaliação econômica** fornece ferramentas (CEA, CBA, QALY, DALY, VSL) para alocar recursos escassos em saúde. O ICER permite comparar intervenções e informar decisões de incorporação de tecnologias. A vacinação é o caso paradigmático de externalidade positiva que justifica intervenção pública.

## 🔑 Conceitos-Chave

<a id="tabela-23-1"></a>

| Conceito | Definição |
|----------|-----------|
| Bem meritório | Bem cujo consumo a sociedade deseja encorajar acima do nível de escolha individual livre |
| Modelo de Grossman | Saúde como capital durável: deprecia com a idade, investimento via cuidados médicos |
| Demanda derivada | Demanda por cuidados médicos como insumo para produzir saúde |
| Risco moral ex ante | Redução do esforço de prevenção por estar segurado |
| Risco moral ex post | Aumento do uso de serviços médicos por estar segurado |
| Demanda induzida pelo ofertante (SID) | Médico prescrevendo além do clinicamente necessário por incentivo financeiro |
| Seleção adversa | Indivíduos de alto risco comprando mais seguro, elevando o prêmio para todos |
| Espiral da morte | Dinâmica de seleção adversa que destrói progressivamente o mercado de seguros |
| Community rating | Obrigatoriedade de prêmio único independente do risco individual |
| Ajuste de risco | Transferência entre seguradoras para compensar diferenças de risco dos segurados |
| QALY | Ano de vida ajustado pela qualidade — combina quantidade e qualidade de vida |
| DALY | Ano de vida ajustado pela incapacidade — mede carga de doença |
| ICER | Razão de custo-efetividade incremental — custo adicional por QALY adicional |
| VSL | Valor de uma vida estatística — disposição a pagar por reduções marginais de risco |
| Imunidade de rebanho | Proteção coletiva quando a proporção de vacinados excede o limiar \(1 - 1/R_0\) |

<div class="caption-obj" markdown>
**Tabela 23.1 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-23-1"></a>**Exercício 23.1.** Um indivíduo com riqueza \(W = 100.000\) tem probabilidade \(\pi = 0{,}1\) de ficar doente, com custo de tratamento \(m = 50.000\). Sua utilidade é \(u(x) = \sqrt{x}\).

(a) Calcule a utilidade esperada sem seguro.
(b) Calcule o prêmio atuarialmente justo e a utilidade com seguro justo.
(c) Calcule o prêmio máximo que o indivíduo está disposto a pagar.
(d) Conecte com o Capítulo 7: por que o prêmio máximo excede o prêmio justo?

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-1)

<a id="ex-23-2"></a>**Exercício 23.2.** No modelo de Grossman, o estoque de saúde evolui segundo \(H_{t+1} = H_t(1 - \delta) + I_t\). Suponha \(H_0 = 100\), \(\delta = 0{,}05\) e investimento constante \(I = 8\) por período.

(a) Calcule o estoque de saúde em estado estacionário (\(H^*\) tal que \(H_{t+1} = H_t\)).
(b) Simule a trajetória de \(H_t\) para \(t = 0, 1, 2, ..., 10\).
(c) O que acontece se, a partir de \(t = 5\), a taxa de depreciação sobe para \(\delta' = 0{,}10\) (envelhecimento)?
(d) Interprete: o que representa um aumento de \(\delta\) em termos de saúde?

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-2)

<a id="ex-23-3"></a>**Exercício 23.3.** Uma seguradora enfrenta dois tipos de segurados: tipo L (baixo risco, \(\pi_L = 0{,}1\)) e tipo H (alto risco, \(\pi_H = 0{,}4\)). A perda em caso de doença é \(L = 20.000\). A população é composta por 60% de tipo L e 40% de tipo H.

(a) Calcule o prêmio atuarialmente justo para cada tipo e para o pool.
(b) Se a seguradora cobra o prêmio do pool, qual tipo prefere não comprar seguro (supondo ambos neutros ao risco com disposição a pagar 10% acima do valor atuarial)?
(c) Calcule o prêmio de equilíbrio se apenas tipo H permanece.
(d) Desenhe um diagrama mostrando a espiral da morte.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-3)

<a id="ex-23-4"></a>**Exercício 23.4.** Um médico remunerado por *fee-for-service* recebe R\$ 200 por procedimento. O número clinicamente apropriado de procedimentos para o paciente é 5. A utilidade do médico é \(U = 200n - 50(n-5)^2\) para \(n \geq 5\).

(a) Encontre o número de procedimentos que maximiza a utilidade do médico.
(b) Calcule o excesso de procedimentos (demanda induzida pelo ofertante).
(c) Se o sistema muda para *capitation* (R\$ 1.000 fixo por paciente, independentemente do número de procedimentos), qual é o novo número ótimo?
(d) Discuta o trade-off entre fee-for-service e capitation.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-4)

<a id="ex-23-5"></a>**Exercício 23.5.** Uma doença contagiosa tem \(R_0 = 4\). A vacina custa R\$ 100 por pessoa, o benefício privado é R\$ 80 (redução do risco individual), e o benefício externo é R\$ 60 (redução da transmissão a outros).

(a) O indivíduo se vacina voluntariamente? Justifique.
(b) É socialmente ótimo vacinar? Calcule o benefício social líquido.
(c) Qual o limiar de imunidade de rebanho?
(d) Proponha uma política pigouviana para alcançar a vacinação ótima.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-5)

<a id="ex-23-6"></a>**Exercício 23.6.** Um país gasta 10% do PIB em saúde, com os seguintes dados:

| Indicador | País A (sistema público) | País B (sistema de mercado) |
|:----------|:------------------------|:---------------------------|
| Gasto (% PIB) | 10% | 17% |
| Expectativa de vida | 82 anos | 77 anos |
| Mortalidade infantil (por mil) | 3,5 | 5,5 |
| % sem seguro | 0% | 8% |
| Tempo de espera (semanas) | 12 | 2 |

(a) Calcule um índice de eficiência simples (expectativa de vida / gasto % PIB) para cada país.
(b) Qual país é mais eficiente? Qual é mais equitativo?
(c) Discuta por que a comparação é mais complexa do que o índice sugere.
(d) Proponha uma métrica mais adequada.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-6)

<a id="ex-23-7"></a>**Exercício 23.7.** Um hospital considera duas intervenções:

- **A:** Cirurgia bariátrica para obesos mórbidos. Custo: R\$ 30.000 por paciente. Ganho: 5 QALYs.
- **B:** Tratamento de hipertensão com medicamento genérico. Custo: R\$ 500 por paciente. Ganho: 0,5 QALYs.

O orçamento é de R\$ 300.000.

(a) Calcule o ICER de cada intervenção.
(b) Quantos pacientes de cada tipo podem ser tratados com o orçamento total?
(c) Qual alocação maximiza os QALYs totais?
(d) Discuta as implicações éticas de alocar por custo-efetividade puro.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-7)

<a id="ex-23-8"></a>**Exercício 23.8.** No Brasil, o SUS atende 75% da população com 4% do PIB, e o sistema privado atende 25% com 5% do PIB.

(a) Calcule o gasto per capita relativo em cada sistema (normalizando pela participação no PIB).
(b) Se o PIB per capita é R\$ 50.000 e a população é de 200 milhões, estime o gasto absoluto em cada sistema.
(c) Discuta a "dupla porta": por que pacientes com plano privado às vezes usam o SUS?
(d) Proponha um mecanismo de ressarcimento do SUS pelas operadoras de planos privados.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-8)

<a id="ex-23-9"></a>**Exercício 23.9.** Uma seguradora implementa ajuste de risco com base em idade e sexo. Os custos médios observados e previstos são:

| Grupo | Custo médio observado | Custo previsto pelo modelo |
|:------|:---------------------|:--------------------------|
| Jovens homens | R\$ 2.000 | R\$ 2.500 |
| Jovens mulheres | R\$ 3.000 | R\$ 3.200 |
| Idosos homens | R\$ 8.000 | R\$ 7.500 |
| Idosas mulheres | R\$ 7.000 | R\$ 6.800 |

Custo médio geral: R\$ 5.000. Cada grupo tem 250 segurados.

(a) Calcule o pagamento de ajuste de risco para cada grupo.
(b) Qual seguradora (que atende predominantemente qual grupo) recebe transferências?
(c) Discuta se o modelo de ajuste de risco é adequado (compare custos previstos com observados).
(d) Que fatores adicionais poderiam melhorar o modelo?

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-9)

<a id="ex-23-10"></a>**Exercício 23.10.** Um estudo estima o valor de uma vida estatística (VSL) em R\$ 5 milhões. O governo considera duas políticas:

- **Política X:** Campanha antitabagismo que evita 500 mortes/ano. Custo: R\$ 400 milhões/ano.
- **Política Y:** Melhoria de estradas que evita 200 mortes/ano. Custo: R\$ 800 milhões/ano.

(a) Calcule o benefício monetário de cada política usando o VSL.
(b) Calcule o benefício líquido de cada política.
(c) Se o orçamento permite apenas uma, qual deve ser escolhida?
(d) Discuta as limitações éticas de usar o VSL para decisões de saúde pública.

[:material-arrow-right: Ver solução](../solucoes/cap23.md#ex-23-10)

---

## 🏆 Vem, ANPEC!

As questões a seguir são formuladas no estilo ANPEC (itens Verdadeiro ou Falso). Cada item deve ser classificado como **V** ou **F**.

??? question "Questão estilo ANPEC — Economia da Saúde: Fundamentos"
    Com relação à microeconomia da saúde, julgue os itens:

    **(0)** Segundo Arrow (1963), a incerteza sobre a ocorrência de doenças e a eficácia dos tratamentos é uma das características que distingue o mercado de saúde de mercados convencionais, gerando demanda por seguros de saúde.

    **(1)** No modelo de Grossman, um aumento na taxa de depreciação do estoque de saúde (por exemplo, devido ao envelhecimento) aumenta a demanda por cuidados médicos, pois é necessário maior investimento para manter o estoque de saúde constante.

    **(2)** O RAND Health Insurance Experiment mostrou que a elasticidade-preço da demanda por cuidados médicos é aproximadamente unitária, indicando que reduções de preço geram aumentos proporcionais na quantidade demandada.

    **(3)** A demanda induzida pelo ofertante ocorre quando o médico, explorando a assimetria de informação com o paciente, prescreve procedimentos além do clinicamente necessário para aumentar sua renda — um problema agravado pelo sistema de pagamento por procedimento (fee-for-service).

    **(4)** A vacinação é um exemplo de bem com externalidade negativa, pois o indivíduo vacinado impõe custos aos fabricantes de medicamentos ao reduzir a demanda futura por tratamentos.

    ??? success "Gabarito"
        **Respostas: V-V-F-V-F**

        **Justificativa por item:**

        - **Item 0 — V:** A incerteza é uma das quatro características centrais de Arrow. A imprevisibilidade da doença gera demanda por seguro, que por sua vez cria problemas de risco moral e seleção adversa.

        - **Item 1 — V:** Em estado estacionário, \(I^* = \delta H^*\). Se \(\delta\) aumenta, o investimento necessário para manter \(H^*\) sobe, aumentando a demanda por cuidados médicos (insumo do investimento em saúde).

        - **Item 2 — F:** A elasticidade estimada pelo RAND é de aproximadamente \(-0{,}2\) — significativamente *inelástica*, não unitária. A demanda por cuidados responde ao preço, mas pouco.

        - **Item 3 — V:** A SID é consequência direta da assimetria de informação médico-paciente. O fee-for-service agrava o problema por vincular a renda do médico ao número de procedimentos.

        - **Item 4 — F:** A vacinação é exemplo de externalidade *positiva*: protege o vacinado e reduz a transmissão para terceiros, gerando imunidade de rebanho. O mercado *subprovê* vacinação, justificando subsídios públicos.

??? question "Questão estilo ANPEC — Seguros de Saúde e Sistemas Comparados"
    Com relação a seguros de saúde e sistemas de saúde comparados, julgue os itens:

    **(0)** No modelo de Rothschild-Stiglitz aplicado a seguros de saúde, o equilíbrio separador implica que indivíduos de alto risco obtêm seguro completo ao preço justo, enquanto indivíduos de baixo risco obtêm seguro parcial — uma ineficiência causada pela informação assimétrica.

    **(1)** A "espiral da morte" nos mercados de seguros de saúde ocorre quando a seleção adversa eleva progressivamente os prêmios, expulsando os segurados de menor risco até que o mercado potencialmente colapse.

    **(2)** O community rating elimina completamente o problema de seleção adversa em seguros de saúde, pois ao cobrar o mesmo prêmio de todos, remove o incentivo para os saudáveis abandonarem o mercado.

    **(3)** A análise custo-efetividade compara intervenções de saúde em termos de custo por QALY ganho, permitindo que decisores aloquem recursos escassos para as intervenções que geram mais saúde por unidade monetária.

    **(4)** O sistema de saúde dos Estados Unidos gasta significativamente mais em proporção do PIB que os sistemas universais europeus e obtém resultados de saúde (expectativa de vida, mortalidade infantil) superiores, justificando a maior despesa.

    ??? success "Gabarito"
        **Respostas: V-V-F-V-F**

        **Justificativa por item:**

        - **Item 0 — V:** No equilíbrio separador de Rothschild-Stiglitz, o tipo-H obtém cobertura completa ao preço \(P_H = \pi_H m\); o tipo-L obtém cobertura parcial (com dedutível) para satisfazer a restrição de compatibilidade de incentivos. A cobertura parcial do tipo-L é ineficiente (ele preferiria cobertura completa ao preço justo \(P_L\)).

        - **Item 1 — V:** A espiral da morte é a dinâmica de seleção adversa descrita na Seção 23.4.2: prêmio médio → saída dos saudáveis → prêmio mais alto → mais saída → colapso potencial.

        - **Item 2 — F:** O community rating *agrava* a seleção adversa: ao cobrar o mesmo de todos, torna o seguro relativamente caro para os saudáveis e barato para os doentes. É por isso que o community rating geralmente é combinado com mandato individual (obrigatoriedade).

        - **Item 3 — V:** A ACE com QALYs permite comparar intervenções heterogêneas (vacinas vs. cirurgias vs. medicamentos) em uma métrica comum. O ICER = ΔC/ΔE ordena as intervenções pela relação custo-resultado.

        - **Item 4 — F:** Os EUA gastam ≈17% do PIB em saúde (vs. ≈10% na média OCDE), mas têm resultados de saúde *inferiores* em expectativa de vida (77 vs. 80 anos) e mortalidade infantil (5,4 vs. 4,5 por mil). É a "anomalia americana".

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Arrow, K. J. (1963). Uncertainty and the Welfare Economics of Medical Care. *American Economic Review*, 53(5), 941–973.](https://www.jstor.org/stable/1812044)"
    **Pergunta central:** Por que o mercado de cuidados médicos difere de outros mercados, e quais são as implicações para o bem-estar econômico?

    **Método:** Análise teórica comparando as características do mercado de saúde com as condições do primeiro teorema do bem-estar (Capítulo 14). Arrow identifica sistematicamente as falhas que impedem o equilíbrio competitivo de ser Pareto-eficiente em saúde.

    **Resultado principal:** O mercado de saúde viola as condições do primeiro teorema do bem-estar por quatro razões: incerteza (não existem mercados contingentes completos para todos os estados de saúde), informação assimétrica (o médico sabe mais que o paciente), externalidades (doenças contagiosas, vacinação) e bens meritórios (normas sociais sobre acesso a cuidados). Essas falhas explicam por que todas as economias de mercado intervêm pesadamente no setor de saúde.

    **Relevância para o capítulo:** Artigo fundador da economia da saúde como subdisciplina. Fornece o arcabouço conceitual que organiza todo o capítulo e conecta a análise com os conceitos de falhas de mercado dos Capítulos 19 e 20.

??? pesquisa "[Grossman, M. (1972). On the Concept of Health Capital and the Demand for Health. *Journal of Political Economy*, 80(2), 223–255.](https://doi.org/10.1086/259880)"
    **Pergunta central:** Como modelar a demanda por saúde distinguindo entre a demanda pelo estado de "estar saudável" e a demanda por cuidados médicos como insumo?

    **Método:** Modelo de otimização intertemporal em que o indivíduo maximiza utilidade ao longo da vida, escolhendo investimento em saúde (cuidados médicos, tempo) e consumo de outros bens. A saúde é tratada como um estoque de capital durável com depreciação crescente.

    **Resultado principal:** A saúde é simultaneamente um bem de consumo (gera utilidade direta) e um bem de investimento (determina o tempo disponível para trabalho e lazer). A demanda por cuidados médicos é *demanda derivada* e depende da taxa de depreciação (idade), do salário (custo de oportunidade do tempo), da educação (eficiência da produção de saúde) e do preço dos cuidados.

    **Relevância para o capítulo:** Fornece a base teórica da Seção 23.2. A distinção entre demanda por saúde e demanda por cuidados é essencial para a análise de políticas: aumentar o acesso a serviços médicos não é sinônimo de melhorar a saúde da população.

??? pesquisa "[Manning, W. G.; Newhouse, J. P.; Duan, N.; Keeler, E. B.; Leibowitz, A.; Marquis, M. S. (1987). Health Insurance and the Demand for Medical Care: Evidence from a Randomized Experiment. *American Economic Review*, 77(3), 251–277.](https://www.jstor.org/stable/1804094)"
    **Pergunta central:** Qual é o efeito causal do seguro de saúde (especificamente, da taxa de coparticipação) sobre a utilização de serviços médicos e os resultados de saúde?

    **Método:** O RAND Health Insurance Experiment (1974–1982) atribuiu aleatoriamente 2.750 famílias a planos de seguro com diferentes taxas de coparticipação (0%, 25%, 50%, 95%). Manning et al. estimam a elasticidade-preço da demanda por cuidados médicos usando os dados experimentais.

    **Resultado principal:** A elasticidade-preço da demanda por cuidados médicos é de aproximadamente \(-0{,}2\). O gasto no plano gratuito (0% coparticipação) é cerca de 45% maior que no plano com 95% de coparticipação. Para a maioria dos participantes, o aumento de cuidados não melhorou os resultados de saúde — exceto para o subgrupo de baixa renda e alto risco.

    **Relevância para o capítulo:** O RAND é o padrão-ouro para a estimação do risco moral em seguros de saúde. A elasticidade de \(-0{,}2\) é a base empírica para o desenho de mecanismos de cost-sharing e influencia diretamente a política de seguros em todo o mundo.

??? pesquisa "[Rothschild, M.; Stiglitz, J. (1976). Equilibrium in Competitive Insurance Markets: An Essay on the Economics of Imperfect Information. *Quarterly Journal of Economics*, 90(4), 629–649.](https://doi.org/10.2307/1885326)"
    **Pergunta central:** Qual é o equilíbrio em um mercado de seguros competitivo quando as seguradoras não podem distinguir entre segurados de alto e baixo risco?

    **Método:** Modelo teórico de dois tipos (alto e baixo risco) com seguradoras competitivas que oferecem contratos de seguro. Os autores analisam a existência e as propriedades do equilíbrio em três cenários: informação simétrica, equilíbrio agregador e equilíbrio separador.

    **Resultado principal:** Em equilíbrio separador, o tipo de alto risco obtém seguro completo ao preço atuarialmente justo; o tipo de baixo risco obtém seguro parcial (com dedutível). O equilíbrio agregador não existe (seria desviado por uma seguradora que oferecesse um contrato atrativo apenas para baixo risco). Em certas condições, nenhum equilíbrio existe — o mercado é inerentemente instável.

    **Relevância para o capítulo:** Modelo fundamental para a análise da seleção adversa em seguros de saúde (Seção 23.4). As soluções regulatórias (mandato individual, community rating, ajuste de risco) são respostas diretas aos problemas identificados por Rothschild e Stiglitz.

??? pesquisa "[Cutler, D. M.; Zeckhauser, R. J. (2000). The Anatomy of Health Insurance. In: Culyer, A. J.; Newhouse, J. P. (Eds.), *Handbook of Health Economics*, Vol. 1A, 563–643. Amsterdam: Elsevier.](https://doi.org/10.1016/S1574-0064(00)80170-5)"
    **Pergunta central:** Como a teoria econômica dos seguros se aplica ao mercado de saúde, e quais são os principais desafios de desenho de contratos e regulação?

    **Método:** Revisão abrangente da literatura teórica e empírica sobre seguros de saúde, cobrindo seleção adversa, risco moral, desenho de contratos, regulação e comparação internacional de sistemas.

    **Resultado principal:** Os autores organizam a literatura em torno de dois problemas centrais: (i) risco moral (como desenhar contratos que equilibrem proteção contra risco e incentivos de utilização); (ii) seleção adversa (como evitar o colapso do mercado quando os segurados têm informação privada sobre seu risco). Revisam a evidência empírica, incluindo o RAND e estudos observacionais, e discutem as soluções regulatórias adotadas em diferentes países.

    **Relevância para o capítulo:** Referência enciclopédica que conecta a teoria de seguros (Capítulos 7 e 19) com as especificidades do mercado de saúde. O capítulo de Cutler e Zeckhauser no *Handbook of Health Economics* é leitura essencial para qualquer curso avançado de economia da saúde.

---

!!! tip "🤖 Exercício com IA"
    **IA.10 — Simulando a espiral da morte em seguros de saúde**

    Peça à IA para simular a dinâmica de seleção adversa em um mercado de seguros de saúde com 1.000 indivíduos, riscos distribuídos uniformemente em \([0, 1]\), perda de R\$ 10.000 e disposição a pagar de 1,2× o valor atuarial. Peça para: (1) calcular o prêmio de equilíbrio e o número de segurados; (2) simular a dinâmica período a período da espiral da morte; (3) plotar prêmio e número de segurados ao longo das iterações; (4) comparar o resultado com e sem mandato individual.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-10)

---

## 📚 Referências do Capítulo

- Anderson, G. F.; Reinhardt, U. E.; Hussey, P. S.; Petrosyan, V. 2003. It's the Prices, Stupid: Why the United States Is So Different from Other Countries. *Health Affairs*, 22(3), 89–105.
- ANS. 2024. [*Dados do Setor*](https://www.gov.br/ans/pt-br/acesso-a-informacao/perfil-do-setor/dados-gerais). Brasília: Agência Nacional de Saúde Suplementar.
- Arrow, K. J. 1963. Uncertainty and the Welfare Economics of Medical Care. *American Economic Review*, 53(5), 941–973.
- Cutler, D. M. 2004. [*Your Money or Your Life: Strong Medicine for America's Health Care System*](https://books.google.com.br/books?id=zxP9DmKL9q0C). New York: Oxford University Press.
- Cutler, D. M.; Zeckhauser, R. J. 2000. The Anatomy of Health Insurance. In: Culyer, A. J.; Newhouse, J. P. (Eds.), *Handbook of Health Economics*, Vol. 1A, 563–643. Amsterdam: Elsevier.
- Fisher, E. S.; Wennberg, D. E.; Stukel, T. A.; Gottlieb, D. J.; Lucas, F. L.; Pinder, É. L. 2003. The Implications of Regional Variations in Medicare Spending. *Annals of Internal Medicine*, 138(4), 273–287.
- Folland, S.; Goodman, A. C.; Stano, M. 2017. [*The Economics of Health and Health Care*](https://books.google.com.br/books?id=C5s0DwAAQBAJ). 8th ed. London: Routledge.
- Grossman, M. 1972. On the Concept of Health Capital and the Demand for Health. *Journal of Political Economy*, 80(2), 223–255.
- Manning, W. G.; Newhouse, J. P.; Duan, N.; Keeler, E. B.; Leibowitz, A.; Marquis, M. S. 1987. Health Insurance and the Demand for Medical Care: Evidence from a Randomized Experiment. *American Economic Review*, 77(3), 251–277.
- Ministério da Saúde. 2024. [*DATASUS — Informações de Saúde*](https://datasus.saude.gov.br/). Brasília.
- Musgrave, R. A. 1957. A Multiple Theory of Budget Determination. *FinanzArchiv/Public Finance Analysis*, 17(3), 333–343.
- Newhouse, J. P. 1970. Toward a Theory of Nonprofit Institutions: An Economic Model of a Hospital. *American Economic Review*, 60(1), 64–74.
- NHS England. 2024. [*Referral to Treatment (RTT) Waiting Times*](https://www.england.nhs.uk/statistics/statistical-work-areas/rtt-waiting-times/). Londres.
- OECD. 2023. [*Health at a Glance 2023*](https://doi.org/10.1787/7a7afb35-en). Paris: OECD Publishing.
- Rothschild, M.; Stiglitz, J. 1976. Equilibrium in Competitive Insurance Markets: An Essay on the Economics of Imperfect Information. *Quarterly Journal of Economics*, 90(4), 629–649.
- Viscusi, W. K.; Aldy, J. E. 2003. The Value of a Statistical Life: A Critical Review of Market Estimates Throughout the World. *Journal of Risk and Uncertainty*, 27(1), 5–76.
- KFF (Kaiser Family Foundation). 2024. [*Key Facts about the Uninsured Population*](https://www.kff.org/uninsured/). Washington, DC.
- Zweifel, P.; Breyer, F.; Kifmann, M. 2009. [*Health Economics*](https://books.google.com.br/books?id=GBsIBgAAQBAJ). 2nd ed. Berlin: Springer.
