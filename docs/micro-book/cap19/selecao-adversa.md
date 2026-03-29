# 19.4 Seleção Adversa

## 19.4 Só Sobram os Abacaxis: Seleção Adversa {#194}

Se o risco moral é sobre o que a pessoa *faz* depois de assinar o contrato, a seleção adversa é sobre quem ela *é* antes de assinar. Pense no rodízio de pizza: quem frequenta mais o rodízio a R$ 49,90 — quem come duas fatias ou quem come doze? O restaurante atrai desproporcionalmente os glutões, e o preço médio do bufê não cobre o custo. No mundo dos seguros, dos carros usados e do crédito, a lógica é a mesma: quando o vendedor não consegue distinguir os "bons" dos "ruins", os ruins aparecem em peso — e os bons somem. Essa distinção temporal é fundamental: o risco moral é um problema pós-contratual, enquanto a seleção adversa é um problema pré-contratual. E as consequências podem ser ainda mais dramáticas — como demonstrou Akerlof, a seleção adversa pode levar ao desaparecimento completo de mercados.

!!! definition "Seleção Adversa (Adverse Selection)"
    Problema de informação assimétrica que surge quando uma parte de uma transação possui **informação privada sobre suas características** (seu "tipo") antes da celebração do contrato, e essa informação não é observável pela outra parte. A seleção adversa é um problema **pré-contratual**.

### 19.4.1 O mercado de limões (Akerlof, 1970)

George Akerlof demonstrou, em um dos artigos mais influentes de toda a história da economia, que a assimetria de informação pode levar ao colapso de mercados inteiros. O artigo, inicialmente rejeitado por três journals (incluindo AER e JPE) por ser "trivial" ou "errado", acabou publicado no *Quarterly Journal of Economics* e viria a render a Akerlof o Nobel em 2001. Considere um mercado de carros usados com dois tipos:

- **Carros bons** ("cerejas"): valor \(V_H\) para o comprador, \(C_H\) para o vendedor, com \(V_H > C_H\).
- **Carros ruins** ("limões"): valor \(V_L\) para o comprador, \(C_L\) para o vendedor, com \(V_L > C_L\).

Suponha \(V_H > C_H > V_L > C_L\) e que uma fração \(\lambda\) dos carros são bons. O vendedor conhece a qualidade do seu carro (ele sabe se trocou o óleo regularmente, se teve acidentes, se a transmissão faz barulhos estranhos); o comprador, não. Sob informação simétrica, ambos os tipos seriam transacionados com ganhos mútuos — pois \(V_H > C_H\) e \(V_L > C_L\). A questão central é: o que acontece quando o comprador não consegue distinguir os tipos?

A resposta de Akerlof é surpreendente em sua simplicidade e devastadora em suas implicações. O raciocínio opera em etapas, cada uma reforçando a anterior em uma espiral descendente que pode destruir o mercado inteiro:

Se o comprador não distingue os tipos, está disposto a pagar no máximo:

\[
\bar{V} = \lambda V_H + (1 - \lambda) V_L
\label{eq:19.9} \tag{19.9} \]

Se \(\bar{V} < C_H\), os donos de carros bons não aceitam vender pelo preço médio. Somente carros ruins permanecem no mercado, e o comprador, antecipando isso, oferece no máximo \(V_L\). A **qualidade média do mercado cai**, configurando a seleção adversa: os "bons" saem, os "ruins" ficam. Em casos extremos, o mercado desaparece completamente — uma situação conhecida como *market unraveling*.

!!! note "Resultado de Akerlof"
    Em casos extremos, a seleção adversa pode provocar o **desaparecimento completo** do mercado (market unraveling), mesmo quando ganhos de troca existiriam sob informação simétrica. Esse resultado mostra que a informação assimétrica é uma genuína **falha de mercado** — distinta das falhas de concorrência (monopólio) e das externalidades, e que justifica intervenções como regulação de qualidade, garantias obrigatórias e certificação.

!!! info "🏅 Prêmio Nobel — George A. Akerlof, A. Michael Spence e Joseph E. Stiglitz (2001)"

    **George Arthur Akerlof** (1940–presente) é um economista americano, PhD no MIT, professor em Berkeley e Georgetown. **Andrew Michael Spence** (1943–presente) é um economista americano, PhD em Harvard, professor em Harvard e Stanford. **Joseph Eugene Stiglitz** (1943–presente) é um economista americano, PhD no MIT sob orientação de Paul Samuelson, professor na Universidade de Columbia.

    **Por que ganharam o Nobel:**
    Premiados por suas análises de mercados com informação assimétrica. Akerlof mostrou que a assimetria de informação sobre qualidade pode levar ao colapso de mercados (*The Market for "Lemons"*, 1970). Spence demonstrou como agentes informados podem usar ações custosas para sinalizar suas características (*Job Market Signaling*, 1973). Stiglitz (com Rothschild) analisou como a parte desinformada pode usar menus de contratos para induzir autosseleção (*screening*), com aplicação seminal a mercados de seguros (1976).

    **Conexão com este capítulo:**
    Os três problemas fundamentais de informação assimétrica analisados neste capítulo — seleção adversa (Akerlof), sinalização (Spence) e triagem (Stiglitz) — correspondem diretamente às contribuições premiadas em 2001.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando o comprador não consegue distinguir produtos bons de ruins, os bons somem do mercado — porque ninguém paga o preço justo por eles.

    **Pense assim:** No mercado de carros usados no Brasil, quem vende um carro bem cuidado compete com quem vende um carro cheio de problemas escondidos. O comprador, desconfiado, só topa pagar um preço médio. Mas esse preço é baixo demais para quem tem carro bom, que desiste de vender. Sobram só os "abacaxis" — e o comprador, sabendo disso, oferece menos ainda.

    **Por que isso importa:** Plataformas como OLX, laudos de vistoria cautelar e garantias de concessionária existem justamente para quebrar esse ciclo, reduzindo a assimetria de informação e permitindo que transações boas aconteçam.

No gráfico interativo abaixo, ajuste a fração de limões e observe como a seleção adversa pode levar ao colapso do mercado.

<iframe src="/micro-book/graficos/cap19/mercado-limoes.html" title="Figura 19.2 — Mercado de limões (Akerlof, 1970)" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 19.2 — Mercado de limões (Akerlof, 1970).** Ajuste a fração de limões e observe como a seleção adversa leva ao colapso do mercado quando a disposição a pagar do comprador cai abaixo do custo de reserva dos vendedores de carros bons.
</div>

!!! box-mundo "Box Mundo 19.1 — O problema dos limões no mundo: inspeção veicular no Japão"

    **Contexto:** O Japão desenvolveu um dos sistemas mais rigorosos do mundo para mitigar o "problema dos limões" no mercado de veículos usados. O sistema *shaken* (車検) — inspeção veicular obrigatória — exige que todos os veículos passem por inspeções a cada dois anos (para carros com mais de 3 anos), com custo que varia de ¥80.000 a ¥200.000 (US$ 550–1.400). A rigidez e o custo da inspeção tornam economicamente inviável manter veículos antigos, gerando um fluxo constante de carros usados de alta qualidade a preços acessíveis.

    **Dados:** Segundo dados da Japan Automobile Dealers Association (JADA), o Japão exporta anualmente mais de 1,3 milhão de veículos usados, principalmente para mercados em desenvolvimento na África, Ásia e América Latina. A idade média dos veículos exportados é de apenas 7–10 anos, com quilometragem frequentemente inferior a 100.000 km — muito abaixo do padrão de "limões" previsto pelo modelo de Akerlof. O mercado interno japonês de usados movimentou ¥3,8 trilhões (US$ 26 bilhões) em 2023, com sistemas de certificação por pontuação (*auction grade*) de 1 a 5 que reduzem drasticamente a assimetria de informação.

    **Análise:** O sistema japonês combina dois mecanismos teóricos: (i) *certificação obrigatória* — a inspeção shaken funciona como um sinal crível de qualidade, análogo à sinalização de Spence (Seção 19.5), onde o custo do sinal (inspeção cara) é arcado pelo vendedor; (ii) *padronização de informação* — o sistema de pontuação nos leilões (auction grade) converte informação privada sobre qualidade em informação pública, eliminando a assimetria que causa a seleção adversa. O resultado é um mercado de usados que funciona eficientemente, contrariando a previsão pessimista do modelo de Akerlof para mercados sem mecanismos de revelação.

    **Fonte:** Japan Automobile Dealers Association (JADA), *Used Car Market Statistics 2023*. Japan Used Motor Vehicle Exporters Association (JUMVEA), *Annual Report 2023*.

O exercício a seguir aplica o modelo de Akerlof a um caso numérico.

??? exercicio-resolvido "Exercício Resolvido 19.3 — Seleção adversa no mercado de limões"
    **Enunciado:** Em um mercado de carros usados à la Akerlof, 40% dos carros são bons e 60% são ruins. Carros bons valem R$ 24.000 para compradores e R$ 20.000 para vendedores. Carros ruins valem R$ 10.000 para compradores e R$ 6.000 para vendedores. (a) O mercado de carros bons funciona? (b) Qual é a perda de bem-estar causada pela assimetria? (c) Se um serviço de vistoria confiável custasse R$ 500, valeria a pena para o vendedor de carro bom?

    ---

    **(a)** Preço máximo do comprador desinformado:

    \[
    \bar{V} = 0{,}4 \times 24.000 + 0{,}6 \times 10.000 = 9.600 + 6.000 = 15.600
    \]

    Como \(\bar{V} = 15.600 < C_H = 20.000\), os vendedores de carros bons **não aceitam** o preço médio. Apenas carros ruins são ofertados. O mercado de carros bons **colapsa**.

    **(b)** Sob informação simétrica, haveria ganhos de troca de R$ 4.000 por carro bom e R$ 4.000 por carro ruim. Com seleção adversa, os ganhos dos carros bons (40% do mercado) são perdidos: \(0{,}4 \times 4.000 = \text{R\$}\, 1.600\) por carro em média.

    **(c)** Com vistoria, o carro bom pode ser vendido a até R$ 24.000. O vendedor ganha \(24.000 - 20.000 = 4.000\) na transação. O custo da vistoria (R$ 500) é amplamente compensado. **Sim, vale a pena** — o que explica a existência de serviços como a Cautelar Express e laudos do Detran.

<iframe src="/micro-book/graficos/cap19/webr-limoes.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 19.3 — Mercado de limões (Akerlof).** Altere a fração de carros bons e os valores de comprador/vendedor para ver quando a seleção adversa leva ao colapso do mercado. Encontre o limiar crítico de λ.

</div>

### 19.4.2 Precificação não linear: menus de contratos

Uma forma de lidar com a seleção adversa é oferecer um **menu de contratos** desenhado para que cada tipo de agente selecione voluntariamente o contrato destinado a ele. Esse é o princípio da **autosseleção** (self-selection) ou **triagem** (screening), que será aprofundado na Seção 19.6.

Considere um monopolista vendendo um bem a consumidores de dois tipos: alta valoração (\(\theta_H\)) e baixa valoração (\(\theta_L\)), com proporções \(\mu\) e \(1-\mu\), respectivamente. O monopolista oferece dois pacotes \((q_L, T_L)\) e \((q_H, T_H)\), onde \(q\) é a quantidade e \(T\) o pagamento total.

As restrições de autosseleção (incentivo-compatibilidade) são:

\[
\theta_H v(q_H) - T_H \geq \theta_H v(q_L) - T_L \quad \text{(RCI do tipo alto)}
\label{eq:19.10} \tag{19.10} \]

\[
\theta_L v(q_L) - T_L \geq \theta_L v(q_H) - T_H \quad \text{(RCI do tipo baixo)}
\label{eq:19.11} \tag{19.11} \]

E as restrições de participação:

\[
\theta_i v(q_i) - T_i \geq 0 \quad \text{para } i \in \{L, H\}
\]

A solução ótima apresenta um padrão recorrente e profundo na teoria de contratos, que vale a pena internalizar pois reaparece em virtualmente todas as aplicações:

1. **No topo, sem distorção** (*no distortion at the top*): o tipo alto recebe a quantidade eficiente (\(q_H = q_H^*\)). Não há razão para distorcer o consumo do tipo mais valioso.
2. **No fundo, distorção para baixo**: o tipo baixo recebe quantidade **distorcida para baixo** (\(q_L < q_L^*\)). Essa distorção é o "preço" que o mecanismo cobra pela revelação de informação — é necessário tornar o pacote do tipo baixo suficientemente pouco atrativo para que o tipo alto não queira imitá-lo.
3. **Renda informacional**: o tipo alto obtém excedente positivo, acima de sua utilidade de reserva. Essa renda é o custo que o principal paga pela impossibilidade de observar tipos diretamente.
4. **Participação binding no fundo**: o tipo baixo fica exatamente na fronteira de participação (renda zero).

Esse padrão — conhecido como *distortion at the bottom* — é um dos resultados mais gerais da economia da informação. Ele reaparece na regulação de monopólios sob informação assimétrica (Laffont-Tirole, onde a firma regulada é o "agente" e o regulador é o "principal"), na tributação ótima da renda (Mirrlees, Nobel 1996, onde o governo é o principal e os contribuintes são os agentes), e na discriminação de preços de segundo grau (Capítulo 15, Seção 15.7.2). A lição unificadora é que, quando tipos não são observáveis, a eficiência deve ser sacrificada para obter revelação de informação — e o sacrifício recai sempre sobre o tipo de baixa valoração.

### 19.4.3 Seleção adversa em seguros: o modelo de Rothschild-Stiglitz

[Rothschild e Stiglitz (1976)](https://doi.org/10.2307/1885326) analisaram o mercado de seguros competitivo com dois tipos de consumidores: alto risco (\(p_H\)) e baixo risco (\(p_L\)), com \(p_H > p_L\). As seguradoras não observam o tipo de cada consumidor. Este modelo é talvez a aplicação mais influente da teoria da seleção adversa e fundamenta toda a regulação moderna de mercados de seguros.

Um contrato de seguro é representado por um par \((\alpha_1, \alpha_2)\), onde \(\alpha_1\) é o prêmio pago e \(\alpha_2\) é a indenização líquida em caso de sinistro.

!!! theorem "Resultado de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)"
    Em equilíbrio competitivo com informação assimétrica: (a) não existe equilíbrio agregador (pooling) — um contrato único para ambos os tipos é sempre destruído por um contrato desviante; (b) um equilíbrio separador existe somente se a proporção de tipos de alto risco for suficientemente grande; (c) no equilíbrio separador, o tipo de alto risco recebe seguro completo (atuarialmente justo para ele) e o tipo de baixo risco recebe seguro parcial (distorção para baixo).

!!! proof "Demonstração: Condição de Incentivo-Compatibilidade no Modelo de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)"
    Considere dois tipos de consumidores, \(i \in \{L, H\}\), com probabilidades de sinistro \(p_L < p_H\). Cada consumidor possui riqueza inicial \(W\) e enfrenta perda potencial \(d\). Um contrato de seguro \(C_i = (\alpha_i, \beta_i)\) especifica um prêmio \(\alpha_i\) e uma cobertura \(\beta_i\), de modo que a riqueza nos dois estados é:

    \[
    W_i^{NS} = W - \alpha_i \quad \text{(sem sinistro)}
    \]

    \[
    W_i^{S} = W - d + \beta_i - \alpha_i \quad \text{(com sinistro)}
    \]

    A utilidade esperada do tipo \(i\) com o contrato \(C_j\) é:

    \[
    EU_i(C_j) = (1 - p_i) \, U(W_j^{NS}) + p_i \, U(W_j^{S})
    \]

    **Condições de incentivo-compatibilidade** requerem que cada tipo prefira seu próprio contrato:

    \[
    EU_H(C_H) \geq EU_H(C_L) \quad \text{(o tipo H prefere } C_H \text{)}
    \]

    \[
    EU_L(C_L) \geq EU_L(C_H) \quad \text{(o tipo L prefere } C_L \text{)}
    \]

    **Passo 1.** Em equilíbrio competitivo com lucro zero, cada contrato é atuarialmente justo para o tipo que o escolhe:

    \[
    \alpha_H = p_H \beta_H, \quad \alpha_L = p_L \beta_L
    \]

    **Passo 2.** Mostramos que \(C_H\) oferece seguro completo, ou seja, \(\beta_H = d\). Como a seguradora oferece contrato atuarialmente justo ao tipo \(H\), a condição de ótimo do consumidor avesso ao risco com preço justo implica equalização da riqueza nos dois estados:

    \[
    W_H^{NS} = W_H^{S} \implies W - \alpha_H = W - d + \beta_H - \alpha_H \implies \beta_H = d
    \]

    Logo, \(\alpha_H = p_H d\) e \(W_H^{NS} = W_H^{S} = W - p_H d\).

    **Passo 3.** Para que o tipo \(H\) não desvie para \(C_L\), precisamos de:

    \[
    U(W - p_H d) \geq (1 - p_H) \, U(W - p_L \beta_L) + p_H \, U(W - d + \beta_L - p_L \beta_L)
    \]

    **Passo 4.** Para que o tipo \(L\) não desvie para \(C_H\):

    \[
    (1 - p_L) \, U(W - p_L \beta_L) + p_L \, U(W - d + \beta_L - p_L \beta_L) \geq U(W - p_H d)
    \]

    **Passo 5.** Combinando, a RCI do tipo \(H\) impõe um **limite superior** sobre a cobertura \(\beta_L\). Se \(\beta_L = d\), então \(U(W - p_L d) > U(W - p_H d)\) (pois \(p_L < p_H\)), violando a RCI de \(H\). Portanto:

    \[
    \beta_L < d
    \]

    O tipo de baixo risco recebe **seguro parcial** — uma distorção que é o "custo" da assimetria de informação. \(\blacksquare\)

No gráfico interativo abaixo, explore o equilíbrio separador de Rothschild-Stiglitz no espaço de riqueza contingente.

<iframe src="/micro-book/graficos/cap19/seguros-rs.html" title="Figura 19.3 — Modelo de seguros de Rothschild-Stiglitz" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 19.3 — Modelo de seguros de Rothschild-Stiglitz.** No espaço de riqueza contingente, observe o equilíbrio separador: o tipo de alto risco recebe seguro completo (sobre a linha de 45°) enquanto o tipo de baixo risco recebe seguro parcial. As curvas de indiferença refletem as diferentes probabilidades de sinistro.
</div>

!!! box-mundo "Box Mundo 19.2 — Seleção adversa e o NHS: por que o Reino Unido optou pelo sistema universal"

    **Contexto:** O *National Health Service* (NHS) britânico, criado em 1948, é um dos exemplos mais duradouros de resposta institucional ao problema da seleção adversa em saúde. Antes do NHS, o mercado privado de seguros de saúde no Reino Unido sofria exatamente o tipo de espiral de seleção adversa descrita pelo modelo de Rothschild-Stiglitz: seguradoras cobravam prêmios baseados no risco médio; indivíduos saudáveis (baixo risco) consideravam os prêmios excessivos e abandonavam o mercado; o pool remanescente tornava-se mais arriscado, elevando os prêmios e expulsando mais segurados — o *unraveling* clássico.

    **Dados:** O NHS atende 67 milhões de pessoas, financiado por impostos gerais, com cobertura universal e gratuita no ponto de uso. Segundo dados da OECD Health Statistics (2023), o Reino Unido gasta 11,3% do PIB em saúde (incluindo setores público e privado), comparado a 16,6% nos EUA — que dependem mais fortemente de seguros privados e enfrentam problemas crônicos de seleção adversa (46 milhões de americanos sem seguro antes do *Affordable Care Act* de 2010). O gasto per capita britânico (US$ 5.138 PPP) é menos da metade do americano (US$ 12.555 PPP), embora a expectativa de vida seja comparável (81,0 vs. 77,5 anos em 2022).

    **Análise:** O NHS resolve o problema da seleção adversa pela via mais direta possível: torna a participação obrigatória e universal, eliminando a autosseleção. Na linguagem do modelo de Rothschild-Stiglitz, o NHS impõe um equilíbrio *pooling* por lei — todos os tipos (alto e baixo risco) participam do mesmo pool, financiado por impostos progressivos. Isso evita o *unraveling*, mas ao custo de potencial ineficiência alocativa (os saudáveis subsidiam os doentes) e de possível risco moral (acesso gratuito pode gerar sobreuso). O debate sobre o design ótimo de sistemas de saúde é, essencialmente, um debate sobre o trade-off entre controlar seleção adversa (favorece universalidade) e controlar risco moral (favorece coparticipação).

    **Fonte:** OECD Health Statistics 2023. NHS England, *Annual Report 2023*.

!!! example "Antisseleção e regulação por faixas etárias ([ANS](https://www.gov.br/ans))"
    O mercado brasileiro de saúde suplementar, com cerca de 51 milhões de beneficiários, é um caso emblemático de seleção adversa. Pessoas mais doentes (alto risco) têm maior incentivo para contratar planos de saúde, enquanto jovens saudáveis (baixo risco) tendem a considerar os prêmios elevados e permanecer sem plano — o clássico mecanismo de antisseleção.

    **Regulação por faixas etárias:**

    A ANS (Agência Nacional de Saúde Suplementar) estabelece 10 faixas etárias para os reajustes dos planos individuais e familiares. A regra-chave: a mensalidade da última faixa não pode ser superior a **6 vezes** a mensalidade da primeira.

    Essa regulação funciona como um **subsídio cruzado** entre faixas etárias: jovens pagam mais do que seu risco atuarial justificaria, subsidiando os idosos, cujo risco é maior. Na linguagem do modelo de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326), a ANS impõe um equilíbrio parcialmente agregador (pooling), usando a lei para evitar o unraveling do mercado.

    *Fonte: ANS, Dados Gerais do Setor, 2025; Resolução Normativa ANS n.º 63/2003.*

??? exercicio-resolvido "Exercício Resolvido 19.4 — Seleção adversa em seguros"
    **Enunciado:** Dois tipos de segurados: alto risco (\(p_H = 0{,}5\)) e baixo risco (\(p_L = 0{,}1\)). Riqueza \(W = 1.000\), perda \(d = 600\). 60% são tipo L. \(U(W) = \ln(W)\). (a) Calcule os contratos de seguro completo atuarialmente justos para cada tipo. (b) Mostre que um contrato pooling com seguro completo à taxa média não é equilíbrio.

    ---

    **(a)** Tipo H: prêmio = \(0{,}5 \times 600 = 300\). Riqueza certa: \(1.000 - 300 = 700\).

    Tipo L: prêmio = \(0{,}1 \times 600 = 60\). Riqueza certa: \(1.000 - 60 = 940\).

    **(b)** Taxa média: \(\bar{p} = 0{,}6 \times 0{,}1 + 0{,}4 \times 0{,}5 = 0{,}26\). Prêmio pooling: \(0{,}26 \times 600 = 156\).

    Utilidade do tipo L com pooling: \(U = \ln(1.000 - 156) = \ln(844) \approx 6{,}739\).

    Utilidade do tipo L *sem seguro*: \(EU = 0{,}9 \ln(1.000) + 0{,}1 \ln(400) = 0{,}9 \times 6{,}908 + 0{,}1 \times 5{,}991 = 6{,}816\).

    Como \(6{,}816 > 6{,}739\), o tipo L **prefere não se segurar** a aceitar o contrato pooling. O equilíbrio pooling é destruído — confirmando o resultado de Rothschild-Stiglitz.

    **Interpretação:** O prêmio médio é "caro demais" para o tipo L, que prefere correr o risco. Isso inicia a espiral de seleção adversa: sem os tipos L, o pool piora e o prêmio sobe.
