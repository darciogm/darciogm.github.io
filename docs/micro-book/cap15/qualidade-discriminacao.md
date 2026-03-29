# 15.6–15.8 Qualidade, Discriminação de Preços e Tarifas

## 15.6 Bom o Bastante para o Último Cliente: Qualidade sob Monopólio {#156}

Até este ponto, tratamos o produto do monopolista como dado — variando apenas preço e quantidade. Na prática, porém, o monopolista também decide sobre a **qualidade** do que oferece. Será que um monopolista investe adequadamente em qualidade, ou a ausência de pressão competitiva o leva a oferecer produtos inferiores ao que seria socialmente desejável? A resposta, como veremos, é surpreendentemente ambígua — e depende de detalhes da distribuição de preferências entre os consumidores.

O monopolista também escolhe a **qualidade** \(s\) do produto. Se a demanda é \(p(q, s)\) e o custo é \(C(q, s)\), o problema torna-se:

\[
\max_{q, s} \; \pi(q, s) = p(q, s) \cdot q - C(q, s)
\]

A condição para a escolha ótima de qualidade é:

\[
\frac{\partial p}{\partial s} \cdot q = \frac{\partial C}{\partial s}
\label{eq:15.11} \tag{15.11} \]

O monopolista iguala a receita marginal da qualidade ao custo marginal da qualidade. A receita marginal da qualidade é avaliada no **consumidor marginal** (o último a adquirir o bem), não no consumidor médio. Se o consumidor marginal valora a qualidade menos que o consumidor médio — o que é plausível quando os consumidores com maior disposição a pagar também valorizam mais a qualidade —, o monopolista subprovê qualidade em relação ao ótimo social. Intuitivamente, o monopolista ajusta a qualidade para agradar ao consumidor que está "na margem" de comprar ou não, não ao consumidor que já está disposto a pagar caro.

!!! note "Qualidade e bem-estar"
    Spence (1975) demonstrou que o monopolista provê qualidade eficiente quando o consumidor marginal tem a mesma valoração de qualidade que o consumidor médio. Em geral, não há resultado inequívoco: o monopolista pode oferecer qualidade excessiva ou insuficiente. Esse resultado contrasta com a intuição popular de que "monopólio implica qualidade ruim" — na verdade, a direção da distorção depende de como as preferências por qualidade se distribuem entre os consumidores.

!!! idea "Intuição Econômica"
    **Em uma frase:** O monopolista ajusta a qualidade pensando no cliente que está quase desistindo de comprar — não no cliente mais entusiasmado.

    **Pense assim:** Imagine uma operadora de TV a cabo monopolista decidindo quantos canais oferecer. Ela não pergunta "quantos canais o cinéfilo fanático quer?", mas "quantos canais preciso para convencer a última família a assinar?". Se as famílias que assinam mais facilmente (alta disposição a pagar) também são as que mais valorizam variedade de canais, a operadora oferecerá *menos* canais do que seria socialmente ótimo — porque está calibrando pelo consumidor marginal, menos exigente.

    **Por que isso importa:** Esse resultado é relevante para a regula��ão de serviços monopolísticos no Brasil: a ANATEL, ao regular planos de telecomunicações, precisa considerar não apenas preços, mas também padrões mínimos de qualidade — porque o monopolista não tem incentivos automáticos para fornecer a qualidade socialmente desejável.

---

## 15.7 Um Preço para Cada Bolso: Discriminação de Preços {#157}

Você já se perguntou por que a mesma passagem de avião custa R$ 400 para quem compra com antecedência e R$ 2.000 para quem compra na véspera — sendo que os dois sentam no mesmo avião, comem o mesmo amendoim e chegam ao mesmo destino? A resposta é que o monopolista (ou quase-monopolista) aprendeu um truque poderoso: abandonar a prática de preço único. Se o monopolista consegue identificar — ou induzir a autorevelação de — diferentes disposições a pagar entre consumidores, ele pode explorar essa heterogeneidade para extrair mais excedente do que seria possível com um preço uniforme. Essa prática, conhecida como discriminação de preços, é onipresente no mundo real e assume formas sofisticadas que variam de passagens aéreas a planos de software, de ingressos de cinema a tarifas de eletricidade.

A discriminação de preços exige duas condições: (i) algum grau de poder de mercado e (ii) impossibilidade de revenda (arbitragem) entre consumidores. A segunda condição é crucial: se consumidores que pagam preço baixo pudessem revender para os que pagam preço alto, a discriminação seria impossível. A taxonomia clássica, devida a Pigou (1920), distingue três graus de discriminação conforme a informação disponível ao monopolista.

### 15.7.1 Discriminação de primeiro grau (perfeita)

Na discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Cada unidade é vendida a um preço diferente — é o caso limite em que o monopolista possui informação perfeita sobre as preferências de cada consumidor individual.

!!! definition "Discriminação de Primeiro Grau"
    Na **discriminação de preços de primeiro grau**, o monopolista extrai todo o excedente do consumidor, cobrando o preço máximo que cada consumidor está disposto a pagar por cada unidade.

Resultado:

- A quantidade produzida é **eficiente**: \(q = q^c\) (idêntica à concorrência perfeita).
- Não há perda de peso morto.
- Todo o excedente é capturado pelo produtor: \(EC = 0\), \(EP = \frac{(a-c)^2}{2b}\).

A discriminação perfeita é um caso limite teórico — na prática, o monopolista raramente conhece as disposições a pagar individuais. Sua importância analítica reside em dois pontos: primeiro, ela serve como benchmark contra o qual comparar as demais formas de discriminação; segundo, ela mostra que o poder de mercado *per se* não gera ineficiência alocativa — é a *uniformidade* do preço que gera a PPM. Se o monopolista pudesse cobrar preços diferentes de cada consumidor, a eficiência seria restaurada (embora a distribuição do excedente fosse radicalmente diferente).

### 15.7.2 Discriminação de segundo grau (não-linear)

A discriminação de primeiro grau é um caso limite que pressupõe informação perfeita sobre cada consumidor — uma hipótese heroica na maioria dos contextos reais. O que acontece quando o monopolista sabe que os consumidores diferem em suas preferências, mas não consegue observar diretamente o "tipo" de cada um? Nesse cenário, o monopolista recorre a uma estratégia engenhosa: em vez de atribuir preços a consumidores, ele oferece um menu de opções e deixa que os próprios consumidores se revelem por meio de suas escolhas. Esse é um caso particular do problema de desenho de mecanismos sob informação assimétrica, formalizado por Mirrlees (Nobel 1996) e Maskin (Nobel 2007).

Quando o monopolista não observa as características dos consumidores, ele pode oferecer um **menu de contratos** (combinações preço-quantidade) e permitir que os consumidores se **autosselecionem**. Consumidores com alta disposição a pagar escolhem o pacote premium; consumidores com baixa disposição escolhem o pacote básico.

A estrutura ótima envolve:

- O tipo de **alta valoração** recebe a quantidade eficiente, mas paga um preço que lhe deixa algum excedente (renda informacional).
- O tipo de **baixa valoração** recebe uma quantidade **distorcida para baixo** (abaixo do eficiente) e extrai exatamente zero de excedente.

Essa distorção no consumo do tipo baixo é o custo da **compatibilidade de incentivos**: é necessário tornar o pacote básico suficientemente pouco atrativo para que o tipo alto não queira "imitar" o tipo baixo e capturar renda informacional excessiva.

!!! tip "Exemplos práticos"
    - Passagens aéreas com classes tarifárias (econômica, executiva, primeira classe).
    - Versões de software (básica, profissional, enterprise).
    - Descontos por quantidade em supermercados.
    - Planos de streaming com e sem anúncios.

!!! box-brasil "Box Brasil 15.1 — Discriminação de preços nas passagens aéreas"
    O mercado brasileiro de aviação civil, dominado por três companhias (Latam, Gol e Azul, que juntas detêm mais de 98% do mercado doméstico segundo dados da [ANAC](https://www.anac.gov.br)), é um exemplo rico de discriminação de preços de segundo e terceiro grau.

    **Discriminação de segundo grau (autosseleção):**

    As companhias oferecem múltiplas classes tarifárias para o mesmo voo — desde tarifas promocionais sem direito a bagagem ou remarcação até tarifas flex��veis com reembolso integral. Passageiros corporativos, com alta disposição a pagar e demanda inelástica (viagens de última hora), autosselecionam-se para tarifas mais caras. Passageiros a lazer, com demanda elástica e flexibilidade de datas, escolhem as tarifas promocionais. Essa estrutura replica o menu de contratos descrito na teoria: o tipo de alta valoração paga mais, mas recebe serviços adicionais.

    **Discriminação de terceiro grau (segmentação observável):**

    Companhias oferecem tarifas diferenciadas para idosos (desconto de 5% obrigatório pela ANAC), estudantes e militares. A segmentação por antecedência de compra (preços mais baixos para compras com 30-60 dias de antecedência) também funciona como discriminação de terceiro grau, separando viajantes a lazer (antecedência) de viajantes corporativos (última hora).

    Segundo dados da ANAC, a tarifa a��rea média dom��stica por km variou entre R$ 0,35 e R$ 0,55 em 2023, mas a dispersão de preços dentro de um mesmo voo pode facilmente superar 300% — evidência direta de discriminação de preços.

### 15.7.3 Discriminação de terceiro grau (segmentação de mercados)

Na discriminação de terceiro grau, o monopolista divide os consumidores em **grupos observáveis** (por exemplo, por idade, localização, status profissional) e cobra preços diferentes de cada grupo. Diferentemente da discriminação de segundo grau, aqui a firma observa diretamente a que grupo cada consumidor pertence e condiciona o preço a essa observação.

Se há dois mercados com demandas \(p_1(q_1)\) e \(p_2(q_2)\), o monopolista resolve:

\[
\max_{q_1, q_2} \; p_1(q_1) \cdot q_1 + p_2(q_2) \cdot q_2 - C(q_1 + q_2)
\]

As condições de primeira ordem são:

\[
RMg_1(q_1) = RMg_2(q_2) = CMg(q_1 + q_2) \label{eq:15.12} \tag{15.12}
\]

A equação $\eqref{eq:15.12}$ mostra que o monopolista iguala as receitas marginais em todos os mercados ao custo marginal. O mercado com demanda **mais inelástica** paga o preço **mais alto**:

\[
\frac{p_1}{p_2} = \frac{1 - \frac{1}{|\varepsilon_2|}}{1 - \frac{1}{|\varepsilon_1|}}
\label{eq:15.13} \tag{15.13} \]

Essa equação formaliza a intuição de que o monopolista "espreme" mais os consumidores com poucas alternativas. A razão de preços entre mercados depende exclusivamente da razão de elasticidades — e não dos custos, que são comuns. É por isso que passagens aéreas para executivos custam mais do que para turistas: não porque custe mais transportar um executivo, mas porque ele é menos sensível ao pre��o.

!!! idea "Intuição Econômica"
    **Em uma frase:** Discriminar preços significa cobrar mais de quem está mais disposto a pagar e menos de quem é mais sensível ao preço.

    **Pense assim:** Pense nas passagens aéreas da Latam ou Gol. O executivo que compra na véspera paga R$ 2.000 porque *precisa* viajar (demanda inelástica). O estudante que compra com dois meses de antecedência paga R$ 400 porque tem flexibilidade (demanda elástica). A companhia aérea não está sendo "generosa" com o estudante — está maximizando lucro ao extrair mais de quem pode pagar mais e ainda assim vender para quem pagaria menos.

    **Por que isso importa:** A discriminação de preços pode, em alguns casos, aumentar a quantidade total vendida e até reduzir a perda de peso morto — o que complica o juízo de política concorrencial e exige análise caso a caso pelo CADE.

!!! box-mundo "Box Mundo 15.3 — Discriminação de preços nas ferrovias europeias"

    **Contexto:** O transporte ferroviário europeu oferece um exemplo notável de discriminação de preços sofisticada, combinando técnicas de segundo e terceiro grau em escala continental. Operadoras como a Deutsche Bahn (Alemanha), a SNCF (França) e a Eurostar (Londres–Paris–Bruxelas) praticam estratégias de precificação que espelham as do setor aéreo, com uma particularidade: as ferrovias europeias operam em um regime de concorrência limitada, protegidas pela infraestrutura fixa das linhas férreas (uma barreira natural clássica).

    **Dados:** Uma passagem Eurostar Londres–Paris pode variar de £39 (compra com 3 meses de antecedência, horário fora de pico) a £400+ (compra de última hora, horário de pico, classe business) — uma razão de preços superior a 10:1 para o mesmo trajeto. A Deutsche Bahn oferece o sistema *BahnCard*: uma tarifa em duas partes (Seção 15.8) na qual o passageiro paga uma anuidade (€59,90 para BahnCard 25; €244,90 para BahnCard 50) e recebe, em troca, desconto de 25% ou 50% em todas as viagens. Segundo dados da Deutsche Bahn (Relatório Anual 2023), mais de 5 milhões de passageiros possuem algum tipo de BahnCard — evidência de que a tarifa em duas partes é eficaz na extração de excedente de viajantes frequentes.

    **Análise:** A estrutura tarifária das ferrovias europeias combina discriminação de terceiro grau (descontos para jovens, idosos e grupos) com discriminação de segundo grau (autosseleção por antecedência de compra e classe de serviço). O sistema BahnCard é particularmente elegante do ponto de vista teórico: funciona exatamente como a tarifa em duas partes da Seção 15.8, onde a anuidade é a taxa de entrada \(T\) e o desconto reduz o preço marginal por viagem \(p\). Viajantes frequentes (alta demanda, tipo A) se autosselecionam para BahnCards mais caras, revelando sua alta disposição a pagar.

    **Fonte:** Eurostar Group Limited, *Annual Report 2023*. Deutsche Bahn AG, *Integrated Report 2023*. European Commission, DG MOVE, *Statistical Pocketbook: EU Transport in Figures 2023*.

No gráfico interativo abaixo, alterne entre os três graus de discriminação e observe como cada tipo afeta a extração de excedente e a eficiência alocativa.

<iframe src="/micro-book/graficos/cap15/discriminacao-precos.html" title="Figura 15.3 — Discriminação de preços" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 15.3 — Discriminação de preços.** Alterne entre discriminação de 1º grau (perfeita), 2º grau (tarifa em duas partes) e 3º grau (dois mercados). Observe como cada tipo afeta a extração de excedente e a eficiência alocativa.
</div>

O exercício a seguir aplica a discriminação de terceiro grau a um problema com dois mercados.

??? exercicio-resolvido "Exercício Resolvido 15.4 — Discriminação de terceiro grau com dois mercados"
    **Enunciado.** Um monopolista vende em dois mercados: \(p_1 = 120 - 2q_1\) e \(p_2 = 80 - q_2\). O custo marginal é constante \(CMg = 20\). (a) Com discrimina��ão de 3º grau, encontre preços e quantidades em cada mercado. (b) Calcule os índices de Lerner e relacione com as elasticidades. (c) Calcule o lucro total.

    ---

    **(a)** Receitas marginais: \(RMg_1 = 120 - 4q_1\) e \(RMg_2 = 80 - 2q_2\).

    Igualando ao CMg:

    \[
    120 - 4q_1 = 20 \implies q_1 = 25, \quad p_1 = 120 - 50 = 70
    \]

    \[
    80 - 2q_2 = 20 \implies q_2 = 30, \quad p_2 = 80 - 30 = 50
    \]

    **(b)** Lerner no mercado 1: \(L_1 = (70-20)/70 = 50/70 \approx 0{,}714\).

    Elasticidade: \(\varepsilon_1 = (-1/2)(70/25) = -1{,}4\), logo \(L_1 = 1/1{,}4 \approx 0{,}714\). ✓

    Lerner no mercado 2: \(L_2 = (50-20)/50 = 30/50 = 0{,}60\).

    Elasticidade: \(\varepsilon_2 = (-1)(50/30) = -1{,}667\), logo \(L_2 = 1/1{,}667 = 0{,}60\). ✓

    O mercado 1 tem demanda mais inelástica (\(|\varepsilon_1| = 1{,}4 < |\varepsilon_2| = 1{,}667\)) e paga o preço mais alto (\(p_1 = 70 > p_2 = 50\)). Isso confirma a regra: o monopolista cobra mais do segmento com demanda mais inelástica.

    **(c)** Lucro total:

    \[
    \pi = (70 - 20)(25) + (50 - 20)(30) = 1.250 + 900 = 2.150
    \]

<iframe src="/micro-book/graficos/cap15/webr-discriminacao-3grau.html" title="WebR — Discriminação de Preços de 3º Grau" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 15.3 — Um preço para cada bolso: discriminação de 3º grau.** O código implementa o ER 15.4 com dois mercados segmentados. Observe que o mercado com demanda mais inelástica paga o preço mais alto — e verifique pela fórmula das elasticidades. Altere as inclinações `b1` e `b2` para ver como a diferença de preços responde à diferença de elasticidades.
</div>

??? exercicio-resolvido "Exercício Resolvido 15.5 — Comparação dos três regimes: concorrência, monopólio e discriminação perfeita"
    **Enunciado.** Considere demanda \(p = 50 - q\) e \(CMg = 10\) (constante, sem custos fixos). (a) Encontre \((p, q, \pi)\) sob: (i) concorrência perfeita; (ii) monopólio com preço único; (iii) discriminação de primeiro grau. (b) Para cada caso, calcule EC, EP e PPM.

    ---

    **(a)**

    **(i) Concorrência perfeita:** \(p = CMg = 10\), \(q^c = 40\). \(\pi = 0\).

    **(ii) Monopólio:** \(RMg = 50 - 2q = 10 \implies q^m = 20\), \(p^m = 30\). \(\pi = (30-10)(20) = 400\).

    **(iii) Discriminação perfeita:** \(q^{dp} = q^c = 40\) (quantidade eficiente). O monopolista cobra a disposição a pagar de cada consumidor. \(\pi = \frac{1}{2}(50-10)(40) = 800\).

    **(b)**

    | Regime | EC | EP | PPM | W = EC + EP |
    |---|---|---|---|---|
    | Concorrência | 800 | 0 | 0 | 800 |
    | Monopólio | 200 | 400 | 200 | 600 |
    | Disc. perfeita | 0 | 800 | 0 | 800 |

    **Interpretação:** A discriminação perfeita restaura a eficiência alocativa (\(PPM = 0\)), mas redistribui todo o excedente para o produtor. O excedente total é o mesmo que em concorrência perfeita (800), mas o consumidor não fica com nada. Isso mostra que eficiência e equidade são questões distintas — um tema central do Capítulo 14 (Teoremas do Bem-Estar).

---

## 15.8 Pague para Entrar, Pague para Brincar: Tarifas em Duas Partes {#158}

Se você já pagou mensalidade de academia e *depois* pagou por aula extra, ou comprou o cartão do Sam's Club para ter o "privilégio" de comprar lá dentro, você já foi vítima (voluntária) de uma tarifa em duas partes. Essa é uma das formas mais elegantes e difundidas de precificação não-linear. Diferentemente dos esquemas de discriminação discutidos na seção anterior, que exigem observar ou induzir a revelação de tipos, a tarifa em duas partes combina simplicidade operacional com capacidade de extração de excedente, razão pela qual �� amplamente utilizada em setores que vão de telecomunicações a academias de ginástica, de parques de diversões a clubes de compras.

Uma tarifa em duas partes consiste em uma **taxa de entrada** (tarifa fixa \(T\)) e um **preço por unidade** (\(p\)). O gasto total do consumidor é \(G = T + p \cdot q\). O papel de cada componente é distinto: a taxa fixa extrai excedente inframarginal (que o consumidor obteria ao preço \(p\)); o preço por unidade governa a quantidade demandada e, portanto, a eficiência alocativa.

### Consumidores homogêneos

Se todos os consumidores são idênticos, a estratégia ótima é simples e elegante:

1. Fixar \(p = CMg\) (preço eficiente).
2. Fixar \(T = EC\) (capturar todo o excedente do consumidor).

Isso replica o resultado da discriminação de primeiro grau: quantidade eficiente e extração completa do excedente. A intuição é direta: o preço unitário garante eficiência (elimina a PPM) e a taxa fixa transfere todo o benefício para o produtor.

### Consumidores heterogêneos

Com consumidores heterogêneos, o problema é mais complexo e envolve o trade-off fundamental da discriminação de segundo grau: extrair mais de cada consumidor versus manter consumidores de baixa demanda no mercado. Se a taxa de entrada for muito alta, consumidores com baixa demanda deixam o mercado. O monopolista enfrenta um trade-off entre:

- Cobrar uma taxa alta e perder consumidores marginais.
- Cobrar uma taxa baixa e atender mais consumidores, mas extrair menos excedente de cada um.

A solução ótima tipicamente envolve \(p > CMg\) e \(T < EC\) do consumidor com menor demanda. O preço acima do custo marginal gera uma PPM residual — o custo da heterogeneidade informacional.

!!! tip "Exemplos de tarifas em duas partes"
    - Clubes de compras como o Sam's Club (anuidade + preço por produto).
    - Parques de diversões como a Disney (entrada + valor por brinquedo — ou entrada com tudo incluso, que é um caso limite).
    - Planos telefônicos (assinatura mensal + tarifa por minuto/dados).
    - Serviços de streaming (assinatura fixa com acesso ao catálogo).
    - Academias de ginástica (mensalidade + taxa por aula ou mensalidade fixa com acesso livre).

??? exercicio-resolvido "Exercício Resolvido 15.6 — Tarifa em duas partes com dois tipos de consumidores"
    **Enunciado.** Uma academia de ginástica (monopolista local) cobra tarifa em duas partes \((T, p)\) por aula. Tipo A: \(q_A = 30 - p\), 50 consumidores. Tipo B: \(q_B = 20 - p\), 50 consumidores. \(CMg = 2\) por aula. (a) Se a academia atende ambos os tipos, encontre \((T^*, p^*)\). (b) Se atende apenas o Tipo A, encontre \((T^*, p^*)\) e compare os lucros.

    ---

    **(a) Atendendo ambos os tipos:**

    A taxa fixa é limitada pelo excedente do Tipo B (o mais restrito): \(T = EC_B(p) = \frac{1}{2}(20-p)^2\).

    Lucro total: \(\Pi = 50 \times [\text{lucro por A}] + 50 \times [\text{lucro por B}]\), onde o lucro por consumidor é \(T + (p-2) \cdot q_i\).

    Após simplificação e otimizaç��o (derivando em relação a \(p\)):

    \[
    \frac{d\Pi}{dp} = 0 \implies p^* = 7
    \]

    Logo \(T^* = \frac{1}{2}(20-7)^2 = 84{,}50\). Quantidades: \(q_A = 23\), \(q_B = 13\).

    Lucro por A: \(84{,}50 + (7-2)(23) = 199{,}50\). Lucro por B: \(84{,}50 + (7-2)(13) = 149{,}50\).

    \(\Pi = 50 \times (199{,}50 + 149{,}50) = 17.450\).

    **(b) Atendendo apenas o Tipo A:**

    Maximizar extração sobre A: \(p^* = CMg = 2\), \(T^* = EC_A(2) = \frac{1}{2}(30-2)^2 = 392\).

    Verificação: Tipo B não participa, pois \(EC_B(2) = \frac{1}{2}(18)^2 = 162 < T = 392\). ✓

    \(\Pi = 50 \times 392 = 19.600\).

    **Resultado:** Atender apenas o Tipo A (\(\Pi = 19.600\)) é mais lucrativo do que atender ambos (\(\Pi = 17.450\)). O monopolista prefere excluir o Tipo B e extrair o máximo do Tipo A — ilustrando como a heterogeneidade de demanda pode levar à exclusão ineficiente de consumidores.
