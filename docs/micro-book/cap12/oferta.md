# 12.4 Operar ou Fechar as Portas: Oferta de Curto Prazo {#124}

Firmas com poder de mercado são fascinantes, mas voltemos agora ao personagem mais humilde — e mais fundamental — da história: a firma tomadora de preços, a peça de Lego com que se monta toda a curva de oferta. A pergunta central desta seção é: dado o cardápio de custos que herdamos do Capítulo 11, para quais preços a firma decide produzir, e quanto? A resposta envolve não apenas a condição \(p = \mathrm{CMg}\), mas também uma decisão prévia que muitos estudantes esquecem na prova (e que todo empresário conhece de cor): a firma deve operar ou fechar as portas?[^black-knight-shutdown] Essa decisão de "shutdown" — para usar o termo consagrado na literatura anglófona — é analiticamente distinta da condição de otimalidade. Ela compara dois estados alternativos (operar vs. não operar) em vez de identificar um máximo em um conjunto contínuo. A curva de oferta que derivamos nesta seção é justamente o insumo fundamental para construir a oferta de mercado do Capítulo 13 e, por extensão, para analisar o equilíbrio competitivo de longo prazo. O Box Mundo 12.1 ao final desta seção documenta, com dados empíricos da pandemia de COVID-19, como firmas reais tomam essa decisão em situações extremas.

[^black-knight-shutdown]: O Black Knight dos Monty Python é o patrono espiritual de toda firma que insiste em operar com prejuízo. Depois de perder os dois braços, ele grita "'Tis but a scratch!" e continua lutando. É a sunk cost fallacy em sua forma mais pura: os braços já foram (custo irrecuperável), mas ele avalia a situação pelo investimento passado, não pelo retorno futuro. A firma racional, diferentemente do Black Knight, fecha as portas quando $p < \mathrm{CVMe}_{\min}$ — porque os braços que restam (custos variáveis) custam mais do que a luta rende.

<iframe src="/micro-book/graficos/cap12/maximizacao-lucro.html" title="Figura 12.2 — Maximização de lucro para firma tomadora de preços" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 12.2 — Maximização de lucro para firma tomadora de preços.** Ajuste o preço \(p\) e os parâmetros de custo. O gráfico mostra a quantidade ótima \(q^*\) onde \(p = \mathrm{CMg}\), o retângulo de lucro (ou prejuízo) sombreado e a condição de fechamento (\(p < \mathrm{CVMe}_{\min}\)).
</div>

### A decisão de produção no curto prazo

Para uma firma tomadora de preços (\(\mathrm{RMg} = p\)), a condição de maximização é \(p = \mathrm{CMg}(q)\). Contudo, essa condição não é suficiente — é preciso verificar se a firma deve **operar** ou **fechar**.

No curto prazo, a firma incorre em custos fixos independentemente de produzir ou não. Portanto:

- Se **opera**, o lucro é: \(\pi = p \cdot q - CV(q) - CF\)
- Se **fecha**, o lucro é: \(\pi = -CF\)

A firma deve operar se e somente se a condição da equação $\eqref{eq:12.8}$ for satisfeita:

\[
p \cdot q - CV(q) - CF \geq -CF \implies p \cdot q \geq CV(q) \implies p \geq \mathrm{CVMe}(q)
\label{eq:12.8} \tag{12.8}
\]

### Condições de oferta no curto prazo

A [Tabela 12.1](#tabela-12-1) resume as condições de oferta da firma no curto prazo.

<a id="tabela-12-1"></a>

| Condição de preço | Decisão | Lucro econômico |
|:---|:---|:---|
| \(p > \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Lucro positivo \((\pi > 0)\) |
| \(p = \mathrm{CMe}_{\min}\) | Produzir no ponto de lucro zero | Lucro zero (ponto de *break-even*) |
| \(\mathrm{CVMe}_{\min} < p < \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Prejuízo, mas menor que \(CF\) |
| \(p = \mathrm{CVMe}_{\min}\) | Indiferente entre operar e fechar | Prejuízo igual a \(CF\) (ponto de fechamento) |
| \(p < \mathrm{CVMe}_{\min}\) | Fechar (produção zero) | Prejuízo igual a \(CF\) |

<div class="caption-obj" markdown>
**Tabela 12.1 — Condições de oferta no curto prazo.**
</div>

!!! definition "Curva de oferta de curto prazo"
    A **curva de oferta de curto prazo** da firma tomadora de preços é o trecho da curva de custo marginal que está **acima** do custo variável médio mínimo:

    \[
    q^s(p) = \begin{cases} \mathrm{CMg}^{-1}(p) & \text{se } p \geq \mathrm{CVMe}_{\min} \\ 0 & \text{se } p < \mathrm{CVMe}_{\min} \end{cases}
    \label{eq:12.9} \tag{12.9}
    \]

!!! note "O excedente do produtor"
    O **excedente do produtor** no curto prazo é a diferença entre a receita total e o custo variável:

    \[
    EP = RT - CV = p \cdot q - CV(q) = \pi + CF
    \]

    Graficamente, é a área acima da curva de oferta (CMg) e abaixo do preço. O excedente do produtor é a medida apropriada de bem-estar do lado da oferta no curto prazo, pois mede a contribuição da produção para cobrir os custos fixos e gerar lucro. No longo prazo, quando todos os fatores são variáveis, o excedente do produtor de longo prazo coincide com o lucro econômico (pois não há custos fixos irrecuperáveis): \(EP_{LP} = \pi_{LP}\). Com livre entrada e saída e tecnologia constante, o Capítulo 13 mostrará que \(\pi_{LP} = 0\) em equilíbrio — e portanto o excedente do produtor de longo prazo tende a zero, sendo toda a renda capitalizada nos fatores escassos (terra, licenças, habilidades específicas).

!!! idea "Intuição Econômica"
    **Em uma frase:** Uma firma com prejuízo pode racionalmente continuar operando, desde que a receita cubra pelo menos os custos variáveis.

    **Pense assim:** Imagine um quiosque na praia que paga R$ 3.000 de aluguel por mês (custo fixo). Se fechar, perde os R$ 3.000 de qualquer jeito. Se abrir e faturar o suficiente para pagar funcionários, insumos e ainda sobrar R$ 500, é melhor abrir — mesmo com prejuízo. O aluguel já é "dinheiro perdido" no curto prazo. Fechar só vale a pena quando nem os custos variáveis se pagam.

    **Por que isso importa:** Essa lógica explica por que tantas MPEs brasileiras operam com prejuízo por meses antes de fechar — e por que o SEBRAE monitora a taxa de mortalidade empresarial nos primeiros cinco anos.

<iframe src="/micro-book/graficos/cap12/lucro-maximo.html" title="Figura 12.3 — Lucro maximo e excedente do produtor" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 12.3 — Lucro máximo e excedente do produtor.** Ajuste o preço \(p\) para visualizar a quantidade ótima \(q^*\) onde \(p = \mathrm{CMg}\), o retângulo de lucro (ou prejuízo) sombreado, o excedente do produtor (área entre \(p\) e CMg) e a condição de fechamento. Compare os três regimes: lucro positivo (\(p \geq \mathrm{CTMe}_{\min}\)), prejuízo com operação (\(\mathrm{CVMe}_{\min} \leq p < \mathrm{CTMe}_{\min}\)) e fechamento (\(p < \mathrm{CVMe}_{\min}\)).
</div>

---

!!! box-brasil "Box Brasil — Soja: quando o preço sobe, a área plantada responde"
    O Brasil é o maior produtor e exportador mundial de soja, e a evolução da área plantada nas últimas safras oferece uma demonstração empírica direta da **curva de oferta** derivada na Seção 12.4.

    **Dados da [CONAB](https://www.conab.gov.br) (Companhia Nacional de Abastecimento):**

    | Safra | Área plantada (milhões de ha) | Variação anual |
    |:---|:---|:---|
    | 2022/23 | 44,1 | — |
    | 2023/24 | 46,1 | +4,5% |
    | 2024/25 | 47,5 | +3,0% |
    | 2025/26 (est.) | 48,9 | +2,9% |

    Entre as safras 2022/23 e 2025/26, a área plantada expandiu cerca de **4,8 milhões de hectares** — equivalente a mais de duas vezes a área do estado de Sergipe. Essa expansão acompanhou um período de preços internacionais atrativos da soja, com a cotação em Chicago superando US$ 14/bushel em 2022.

    **Interpretação via teoria da firma**

    O produtor rural é, em boa aproximação, um **tomador de preços** (o preço é determinado em bolsa). Quando o preço da soja sobe acima do custo variável médio mínimo de terras marginais (cerrado ainda não convertido, áreas de segunda safra), a decisão de ofertar é racional: cada hectare adicional gera receita que supera o custo variável.

    No curto prazo, a oferta é relativamente inelástica — a safra já está plantada e a produção depende do clima. No longo prazo, porém, a resposta é substancial: abertura de novas áreas, conversão de pastagens, investimento em irrigação e tecnologia de sementes. A elasticidade-preço da oferta de longo prazo da soja brasileira é estimada entre 0,3 e 0,8, dependendo da região.

    A decisão de **fechar** também é observável: quando o preço cai abaixo do custo variável (como ocorreu em algumas regiões na safra 2023/24 devido a quebra climática e custos elevados de fertilizantes), produtores optam por não plantar a segunda safra — exatamente como prevê a condição \(p < \mathrm{CVMe}_{\min}\).

    **Fonte**: CONAB, Acompanhamento da Safra Brasileira de Grãos (2023–2026); [CEPEA/ESALQ](https://www.cepea.esalq.usp.br).

??? exercicio-resolvido "Exercício Resolvido 12.2 — Decisão de operar ou fechar no curto prazo"
    **Enunciado:** Uma firma tomadora de preços tem custo total de curto prazo \(CT(q) = 72 + 10q + 0{,}5q^2\). O preço de mercado é \(p = 16\). A firma deve operar ou fechar? Qual o lucro?

    **Dados:** \(CF = 72\); \(CV(q) = 10q + 0{,}5q^2\); \(p = 16\).

    **Resolução:**

    **Passo 1 — Funções de custo**
    \[
    \mathrm{CVMe}(q) = 10 + 0{,}5q, \qquad \mathrm{CMg}(q) = 10 + q
    \]
    \[
    \mathrm{CMe}(q) = \frac{72}{q} + 10 + 0{,}5q
    \]

    **Passo 2 — Ponto de fechamento**

    Como \(\mathrm{CVMe} = 10 + 0{,}5q\) é crescente para \(q > 0\), o custo variável médio mínimo é atingido quando \(q \to 0^+\), com \(\mathrm{CVMe}_{\min} = 10\). Logo, a firma opera se \(p \geq 10\).

    **Passo 3 — Quantidade ótima**
    \[
    p = \mathrm{CMg} \implies 16 = 10 + q \implies q^* = 6
    \]

    **Passo 4 — Lucro**
    \[
    RT = 16 \times 6 = 96, \qquad CT = 72 + 60 + 18 = 150
    \]
    \[
    \pi = 96 - 150 = -54
    \]

    **Passo 5 — Comparação: operar vs. fechar**

    | Decisão | Lucro |
    |:---|:---|
    | Operar (\(q = 6\)) | \(\pi = -54\) |
    | Fechar (\(q = 0\)) | \(\pi = -CF = -72\) |

    A receita (\(96\)) cobre todo o custo variável (\(78\)) e ainda gera \(18\) para abater parte dos custos fixos. Operar é racional mesmo com prejuízo.

    **Resultado:** A firma deve operar, produzindo \(q^* = 6\) com prejuízo de \(\pi = -54\), que é menor do que o prejuízo de \(-72\) caso fechasse.

    **Interpretação econômica:** Este é o dilema enfrentado por muitas MPEs brasileiras: operar com prejuízo no curto prazo para cobrir custos variáveis (salários, insumos) enquanto os custos fixos (aluguel, financiamentos) são parcialmente absorvidos. A pesquisa do SEBRAE mostra que empresas nessa faixa (\(\mathrm{CVMe}_{\min} < p < \mathrm{CMe}_{\min}\)) sobrevivem por algum tempo, mas fecham quando os contratos fixos vencem — exatamente como prevê a teoria.

<iframe src="/micro-book/graficos/cap12/webr-shutdown.html" title="WebR — Decisão de Shutdown" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 12.3 — Decisão de operar ou fechar: três regimes de preço.** O código reproduz o Exercício Resolvido 12.2 e mapeia graficamente as três zonas de decisão (lucro positivo, prejuízo com operação, fechamento). Altere `CF` e os preços para explorar como a estrutura de custos fixos afeta a resiliência da firma.
</div>

---

!!! box-mundo "Box Mundo 12.1 — Decisões de fechamento durante a COVID-19: o setor de restaurantes dos EUA"

    **Contexto.** A pandemia de COVID-19 ofereceu um experimento natural sem precedentes para testar a teoria da decisão de shutdown: quando preços caem abruptamente (pela queda abrupta de demanda) ou custos variáveis sobem (por requisitos sanitários), quais firmas fecham temporariamente e quais fecham permanentemente? O setor de alimentação fora do lar dos EUA, com mais de um milhão de estabelecimentos antes da pandemia, documentou em tempo real essa dinâmica.

    **Dados.** De acordo com o *Bureau of Labor Statistics* (BLS) e dados do *U.S. Census Bureau* (Business Formation Statistics e County Business Patterns):

    - Em abril de 2020, o emprego no setor de serviços de alimentação caiu **49%** em relação a fevereiro de 2020 — a maior contração registrada para qualquer setor em um único mês desde o início da série histórica.
    - A National Restaurant Association estimou que **110.000 restaurantes** (cerca de 17% do total) fecharam permanentemente entre março de 2020 e dezembro de 2021.
    - O fechamento **temporário** foi muito mais comum: no pico em abril/maio de 2020, mais de 60% dos estabelecimentos reduziram operações ou fecharam temporariamente, mas com intenção de reabrir.
    - A taxa de reabertura foi alta entre restaurantes que tinham custos fixos mais baixos (aluguéis por porcentagem da receita, empréstimos menores) e baixa entre aqueles com alto endividamento fixo.

    **Análise via teoria da firma.** A teoria prevê duas zonas críticas de preço:

    1. **Fechamento temporário** (\(p < \mathrm{CVMe}_{\min}\)): a receita não cobre nem os custos variáveis — salários de cozinheiros, insumos alimentares, entrega. A firma minimiza perdas parando. Corresponde ao comportamento dos estabelecimentos que suspenderam operações em abril de 2020 mas mantiveram seus ativos (cozinha, equipamentos) para reabrir.

    2. **Fechamento permanente** (\(p < \mathrm{CMe}_{\min}\) no longo prazo): mesmo com retomada parcial, a receita esperada não cobre os custos totais (incluindo aluguel, amortização de equipamentos). Corresponde ao fechamento definitivo de 110.000 estabelecimentos.

    O dado mais revelador é que restaurantes com **contratos de aluguel indexados à receita** (em vez de valor fixo mensal) tiveram taxa de sobrevivência significativamente maior — pois seus custos fixos efetivamente se tornaram variáveis em crise, elevando o preço de shutdown. Isso ilustra como a estrutura de custos (a composição entre CF e CV) determina a resiliência da firma a choques de demanda.

    *Fontes: Bureau of Labor Statistics. Current Employment Statistics (2020–2021). National Restaurant Association. (2021). State of the Restaurant Industry. Washington, D.C. Bartik, A. W. et al. (2020). The Impact of COVID-19 on Small Business Outcomes and Expectations. PNAS, 117(30), 17656–17666.*

---

!!! box-mundo "Box Mundo 12.2 — Produtores de petróleo e o preço de break-even: OPEP vs. shale americano"

    **Contexto.** A indústria de petróleo global oferece um laboratório privilegiado para a teoria da oferta de curto prazo: produtores com estruturas de custo radicalmente diferentes coexistem no mesmo mercado mundial, tomando o preço internacional como dado. O confronto entre a OPEP (dominada pelo custo de extração baixíssimo da Arábia Saudita) e os produtores de *shale* americanos (com custos marginais mais altos mas resposta mais ágil) é um caso real da Tabela 12.1 em ação.

    **Dados.** Segundo estimativas da *International Energy Agency* (IEA, World Energy Outlook 2023) e da *U.S. Energy Information Administration* (EIA):

    | Produtor / Região | Custo de extração (break-even) | Custo marginal médio (USD/barril) |
    |:---|:---|:---|
    | Arábia Saudita (Aramco) | ~USD 3–5/barril | ~USD 9–12/barril |
    | Iraque (OPEP) | ~USD 5–8/barril | ~USD 15–20/barril |
    | Shale EUA (Permian Basin) | ~USD 35–45/barril | ~USD 40–55/barril |
    | Shale EUA (Bakken) | ~USD 45–55/barril | ~USD 50–65/barril |
    | Pré-sal Brasil (Petrobras) | ~USD 35–50/barril | ~USD 40–60/barril |
    | Areias petrolíferas (Canadá) | ~USD 65–80/barril | ~USD 75–95/barril |

    **Análise via teoria da firma.** A curva de oferta do petróleo mundial é literalmente a curva de custo marginal ascendente da Seção 12.4, agregada entre produtores com tecnologias diferentes:

    - Com **preço abaixo de ~USD 35/barril**, os produtores de shale americanos operam abaixo do CVMe mínimo e interrompem a produção (shutdown). Isso foi observado em março–abril de 2020, quando o WTI chegou a USD 20/barril e o número de plataformas ativas nos EUA caiu de ~800 para ~300 em seis meses.
    - Com **preço entre USD 35–65/barril**, o shale americano opera, mas as areias petrolíferas canadenses e alguns projetos de offshore profundo permanecem inviáveis.
    - Com **preço acima de USD 80/barril**, toda a capacidade existente é viável, incluindo fontes de alto custo.

    O "preço de Hotelling" — o preço que equilibra extração hoje vs. futuro para um recurso exaurível — adiciona uma dimensão intertemporal ao problema que Hotelling (1931) formalizou pela primeira vez. A função lucro do produtor de petróleo inclui não apenas o markup corrente, mas o valor de manter reservas para o futuro.

    Para o Brasil, o pré-sal da Petrobras situa-se na faixa intermediária: competitivo acima de ~USD 40/barril, o que o torna viável na maior parte dos cenários de preço, mas vulnerável a choques negativos como o de 2020. A decisão de preço doméstico de combustíveis da Petrobras — que divergiu do preço internacional em vários períodos (2011–2014 e 2022) — é um caso de markup *negativo* (subsídio implícito), com consequências para o equilíbrio fiscal e a alocação de capital que o modelo deste capítulo permite analisar.

    *Fontes: International Energy Agency. (2023). World Energy Outlook 2023. Paris: IEA. U.S. Energy Information Administration. (2024). Short-Term Energy Outlook. Washington, D.C.: EIA. Petrobras. (2024). Relatório de Produção e Vendas — 4T2023. Rio de Janeiro.*

---

!!! box-mundo "Box Mundo 12.3 — Precificação dinâmica do Uber como precificação ao custo marginal"

    **Contexto.** O *surge pricing* (preço dinâmico) do Uber é um dos exemplos mais citados e controversos de implementação em tempo real da regra \(p = \mathrm{CMg}\) da teoria da firma. Diferentemente das firmas tradicionais, o Uber ajusta o preço continuamente (a cada poucos minutos, em cada célula geográfica) para equilibrar oferta e demanda instantânea de viagens.

    **Mecanismo econômico.** O modelo de negócios do Uber opera como um mercado bilateral (plataforma): de um lado, motoristas autônomos com funções de custo individuais; de outro, passageiros com demandas heterogêneas. Em períodos de baixa demanda, o preço-base cobre o custo variável do motorista (combustível, desgaste, custo de oportunidade do tempo). Em períodos de pico — chuva, festas, eventos esportivos —, a demanda desloca-se para cima, e o multiplicador de surge eleva o preço até que a quantidade demandada iguale a quantidade ofertada por motoristas dispostos a entrar no sistema.

    **Dados.** Segundo dados da *UK Competition and Markets Authority* (CMA, *Mobile Ecosystems: Final Report*, 2022) e estudos acadêmicos:

    - O multiplicador de surge no Uber UK varia tipicamente entre 1,2× e 3,5×, com picos documentados acima de 8× durante eventos extraordinários (réveillon em Londres, 2014: multiplicador de ~7,8×).
    - Estudos empíricos (Hall, Horton & Knoepfle, 2021, *NBER Working Paper*) estimam que o surge pricing aumenta o número de viagens disponíveis em **~17%** durante períodos de pico comparados com preço fixo — evidência de que o mecanismo de preços funciona como prevê a teoria da oferta.
    - A elasticidade-preço da oferta dos motoristas é estimada entre **0,3** (curto prazo, motoristas já em atividade) e **1,5** (longo prazo, entrada de novos motoristas).
    - A elasticidade-preço da demanda dos passageiros é estimada em torno de **−0,5** a **−0,7** para o preço base.

    **Análise via teoria da firma.** O surge pricing pode ser interpretado como a plataforma atuando como um "planejador social" que encontra o preço de equilíbrio instantâneo — \(p^* = \mathrm{CMg}\) — para o mercado de viagens. A "firma" aqui é a plataforma, cujo custo marginal de conectar mais um par motorista-passageiro é próximo de zero; o custo relevante é o de oportunidade do motorista (custo variável da viagem). O surge pricing resolve o problema de alocação que um preço fixo criaria: em períodos de pico com preço fixo, haveria escassez (filas, espera longa); com preço dinâmico, a oferta se ajusta ao longo do CMg crescente dos motoristas.

    A controversialidade política do surge pricing — frequentemente percebido como exploração em situações de necessidade — ilustra a tensão entre eficiência alocativa (\(p = \mathrm{CMg}\)) e equidade distributiva. A CMA identificou preocupações sobre transparência e poder de plataforma, mas concluiu que o mecanismo de surge, em si, é consistente com a competição e a eficiência alocativa.

    *Fontes: UK Competition and Markets Authority. (2022). Mobile Ecosystems: Final Report. London: CMA. Hall, J. V.; Horton, J. J.; Knoepfle, D. T. (2021). Pricing in Designed Markets: The Case of Ride-Sharing. NBER Working Paper 29413.*
