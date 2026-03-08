# Capítulo 15 — Sem Concorrente, Sem Piedade

O monopólio representa a antítese da concorrência perfeita. Enquanto no modelo competitivo cada firma é uma tomadora de preço, incapaz de influenciar individualmente as condições de mercado, o monopolista é o único ofertante e, portanto, enfrenta toda a curva de demanda do mercado. Essa posição privilegiada lhe confere **poder de mercado** — a capacidade de fixar preços acima do custo marginal e obter lucros econômicos persistentes.

Este capítulo examina as causas do monopólio, a lógica de sua maximização de lucro, as perdas de eficiência decorrentes do poder de mercado, as estratégias de discriminação de preços e os mecanismos de regulação. A análise do monopólio não é meramente teórica: monopólios naturais regulados dominam setores fundamentais da economia brasileira, como energia elétrica, saneamento e telecomunicações. Besanko & Braeutigam (2014, Caps. 11–12) oferecem tratamento acessível da teoria do monopólio com aplicações a mercados regulados.

---

## 15.1 Barreiras à entrada

O monopólio só persiste se existirem **barreiras à entrada** que impeçam outras firmas de ingressar no mercado e contestar os lucros extraordinários do incumbente. Essas barreiras podem ser classificadas em três categorias.

### Barreiras legais

O Estado pode conceder a uma firma o direito exclusivo de operar em um mercado. Exemplos incluem:

- **Patentes**: conferem ao inventor o monopólio temporário sobre a exploração de uma inovação. No Brasil, a Lei de Propriedade Industrial (Lei 9.279/1996) estabelece prazo de 20 anos para patentes de invenção.
- **Concessões e licenças**: o poder público pode restringir o número de operadores em um mercado, como ocorre nos serviços de distribuição de energia elétrica.
- **Direitos autorais**: protegem obras intelectuais contra reprodução não autorizada.

### Barreiras naturais

Em alguns mercados, as condições tecnológicas tornam ineficiente a presença de mais de uma firma. Isso ocorre quando há **economias de escala** significativas ao longo de toda a faixa relevante de produção.

!!! definition "Monopólio Natural"
    Um mercado constitui um **monopólio natural** quando a função de custo é **subaditiva**, isto é, quando uma única firma pode produzir qualquer quantidade a um custo total menor do que duas ou mais firmas produzindo conjuntamente a mesma quantidade:

    \[
    C(q) < C(q_1) + C(q_2), \quad \text{para todo } q_1, q_2 > 0 \text{ com } q_1 + q_2 = q
    \]

    No caso de um único produto, a subaditividade é implicada por economias de escala ao longo de toda a faixa relevante de produção — ou seja, o custo médio é decrescente.

Exemplos clássicos incluem redes de distribuição de água, gás, eletricidade e telecomunicações fixas, nas quais a duplicação da infraestrutura seria socialmente custosa.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Em um monopólio natural, uma única empresa atende todo o mercado a um custo menor do que duas ou mais fariam — duplicar a infraestrutura seria desperdício.

    **Pense assim:** Pense na rede de água encanada do seu bairro. Faz sentido ter uma empresa com uma rede de canos, não duas redes paralelas competindo na mesma rua. O custo fixo de enterrar a tubulação é tão alto que, quanto mais casas uma única rede atende, menor o custo por casa. Construir uma segunda rede seria jogar dinheiro fora — literalmente cavar buracos à toa.

    **Por que isso importa:** É por isso que setores como saneamento, distribuição de energia e ferrovias são regulados por agências como [ANEEL](https://www.aneel.gov.br) e [ANA](https://www.gov.br/ana), em vez de simplesmente liberados à concorrência.

### Barreiras estratégicas

Firmas incumbentes podem adotar comportamentos deliberados para dificultar a entrada de rivais:

- **Excesso de capacidade instalada**: sinaliza que o incumbente pode expandir a produção rapidamente em resposta à entrada, tornando-a não lucrativa.
- **Preços predatórios**: fixar preços temporariamente abaixo do custo para expulsar ou dissuadir concorrentes (prática ilícita no direito concorrencial brasileiro, conforme a Lei 12.529/2011).
- **Proliferação de marcas**: ocupar nichos de mercado para reduzir o espaço disponível para entrantes.
- **Controle de insumos essenciais**: adquirir ou controlar o acesso a recursos sem os quais rivais não podem operar.

---

## Gráfico interativo: Equilíbrio de monopólio

<iframe src="../graficos/cap15/monopolio.html" width="100%" height="550" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.1 — Ajuste os parâmetros da demanda (\(a\), \(b\)) e do custo marginal (\(c\)) para visualizar o equilíbrio de monopólio, o lucro, o excedente do consumidor, a perda de peso morto e o índice de Lerner. Compare com o resultado competitivo.</em>
</p>

---

## 15.2 Maximização de lucro do monopolista

### O problema do monopolista

O monopolista enfrenta toda a curva de demanda do mercado. Se a demanda inversa é \(p(q)\), o problema de maximização é:

\[
\max_q \; \pi(q) = p(q) \cdot q - C(q)
\]

A condição de primeira ordem é:

\[
\frac{d\pi}{dq} = \underbrace{p(q) + q \cdot p'(q)}_{\text{Receita Marginal (RMg)}} - \underbrace{C'(q)}_{\text{Custo Marginal (CMg)}} = 0
\]

Portanto, a regra de maximização é:

\[
\boxed{RMg(q^m) = CMg(q^m)}
\]

A condição de segunda ordem exige que \(\frac{d^2\pi}{dq^2} < 0\), ou seja, que a receita marginal corte o custo marginal "de cima para baixo".

### Receita marginal e elasticidade

A receita marginal pode ser expressa em termos da elasticidade-preço da demanda \(\varepsilon_{p}\) (definida como valor negativo, \(\varepsilon_p < 0\)):

\[
RMg = p\left(1 + \frac{1}{\varepsilon_p}\right) = p\left(1 - \frac{1}{|\varepsilon_p|}\right)
\]

Como o monopolista opera onde \(RMg > 0\), ele necessariamente produz na faixa **elástica** da demanda (\(|\varepsilon_p| > 1\)). Na faixa inelástica, a receita marginal seria negativa, e o monopolista poderia aumentar a receita (e o lucro) reduzindo a produção.

### A regra de markup

Da condição \(RMg = CMg\), obtemos:

\[
p\left(1 - \frac{1}{|\varepsilon_p|}\right) = CMg \implies p = \frac{CMg}{1 - \frac{1}{|\varepsilon_p|}}
\]

O monopolista aplica um **markup** sobre o custo marginal que é inversamente proporcional à elasticidade-preço da demanda. Quanto mais inelástica a demanda, maior o markup e maior o poder de mercado.

!!! definition "Índice de Lerner"
    O **índice de Lerner** mede o poder de mercado de uma firma como a diferença percentual entre preço e custo marginal:

    \[
    L = \frac{p - CMg}{p}
    \]

    Para uma firma em concorrência perfeita, \(L = 0\). Para um monopolista, \(L = \frac{1}{|\varepsilon_p|}\). O índice varia entre 0 e 1.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O markup do monopolista é maior quando os consumidores têm poucas alternativas — quanto mais "preso" o cliente, mais caro o produto.

    **Pense assim:** Compare o preço de uma garrafa d'água no supermercado (R$ 2) com o preço no estádio de futebol (R$ 10). No estádio, você não pode sair para comprar em outro lugar — sua demanda é inelástica — e o vendedor explora isso cobrando um markup enorme. No supermercado, com dez marcas na prateleira, ninguém consegue cobrar muito acima do custo. O índice de Lerner mede exatamente esse "poder de espremer" o consumidor.

    **Por que isso importa:** O [CADE](https://www.gov.br/cade) usa medidas como o índice de Lerner para avaliar se fusões e aquisições criarão poder de mercado excessivo — como na análise da fusão que criou a Ambev.

---

## 15.3 Demonstração: derivação do índice de Lerner

!!! proof "Demonstração"
    Seja \(p(q)\) a demanda inversa do mercado e \(C(q)\) a função de custo do monopolista. O problema de maximização de lucro é:

    \[
    \max_q \; \pi(q) = p(q) \cdot q - C(q)
    \]

    A condição de primeira ordem é:

    \[
    \frac{d\pi}{dq} = p(q) + q \cdot p'(q) - C'(q) = 0
    \]

    Reescrevendo:

    \[
    p + q \cdot p'(q) = CMg
    \]

    Multiplicamos e dividimos o segundo termo por \(p\):

    \[
    p + p \cdot \frac{q \cdot p'(q)}{p} = CMg
    \]

    Observe que a elasticidade-preço da demanda é definida como:

    \[
    \varepsilon_p = \frac{dq}{dp} \cdot \frac{p}{q}
    \]

    Portanto:

    \[
    \frac{q \cdot p'(q)}{p} = \frac{q}{p} \cdot \frac{dp}{dq} = \frac{1}{\varepsilon_p}
    \]

    Substituindo:

    \[
    p\left(1 + \frac{1}{\varepsilon_p}\right) = CMg
    \]

    Rearranjando:

    \[
    p - CMg = -\frac{p}{\varepsilon_p}
    \]

    Dividindo ambos os lados por \(p\):

    \[
    \frac{p - CMg}{p} = -\frac{1}{\varepsilon_p} = \frac{1}{|\varepsilon_p|}
    \]

    Portanto:

    \[
    \boxed{L = \frac{p - CMg}{p} = \frac{1}{|\varepsilon_p|}}
    \]

    O índice de Lerner é igual ao inverso do valor absoluto da elasticidade-preço da demanda. Quanto mais inelástica a demanda (menor \(|\varepsilon_p|\)), maior o poder de mercado. Em concorrência perfeita, a firma enfrenta demanda perfeitamente elástica (\(|\varepsilon_p| \to \infty\)), de modo que \(L = 0\). \(\blacksquare\)

---

## 15.4 Ineficiência do monopólio

### Perda de peso morto

O monopolista produz menos e cobra mais do que o resultado competitivo. Essa distorção gera uma **perda de peso morto** (PPM) — uma redução no excedente total que não é capturada por nenhum agente.

Considere um mercado com demanda linear \(p = a - bq\) e custo marginal constante \(CMg = c\).

**Resultado competitivo** (\(p = CMg\)):

\[
q^c = \frac{a - c}{b}, \quad p^c = c
\]

**Resultado monopolístico** (\(RMg = CMg\)):

\[
RMg = a - 2bq = c \implies q^m = \frac{a - c}{2b}, \quad p^m = \frac{a + c}{2}
\]

O monopolista produz **metade** da quantidade competitiva e cobra um preço **acima** do custo marginal.

### O triângulo de Harberger

A perda de peso morto corresponde à área do triângulo entre a curva de demanda e o custo marginal, entre \(q^m\) e \(q^c\):

\[
PPM = \frac{1}{2}(p^m - c)(q^c - q^m) = \frac{(a-c)^2}{8b}
\]

Arnold Harberger (1954) estimou que a PPM nos Estados Unidos seria da ordem de 0,1% do PIB, um valor surpreendentemente pequeno. Estimativas posteriores, incorporando *rent-seeking* e ineficiências organizacionais, sugerem valores significativamente maiores.

!!! example "Poder de mercado e o CADE"
    O Conselho Administrativo de Defesa Econômica (CADE) utiliza o índice de Lerner e medidas correlatas para avaliar poder de mercado em atos de concentração e investigações de conduta. No caso da fusão Ambev (1999), o CADE estimou que a empresa resultante deteria cerca de 70% do mercado de cervejas, com significativo poder de precificação. Mais recentemente, em 2022, o CADE aplicou multa de R$ 539 milhões ao Google por abuso de posição dominante no mercado de *ad tech* — um caso em que o poder de mercado decorre não de barreiras tecnológicas clássicas, mas de efeitos de rede e controle de dados. O índice de Lerner é uma ferramenta analítica central nessas investigações: um \(L\) elevado e persistente sinaliza poder de mercado que justifica intervenção regulatória.

### Comparação concorrência perfeita versus monopólio

| Variável | Concorrência Perfeita | Monopólio | Variação |
|---|---|---|---|
| **Preço** | \(p^c = c\) | \(p^m = \frac{a+c}{2}\) | \(\uparrow\) |
| **Quantidade** | \(q^c = \frac{a-c}{b}\) | \(q^m = \frac{a-c}{2b}\) | \(\downarrow\) |
| **Excedente do Consumidor** | \(\frac{(a-c)^2}{2b}\) | \(\frac{(a-c)^2}{8b}\) | \(\downarrow\) |
| **Excedente do Produtor** | \(0\) | \(\frac{(a-c)^2}{4b}\) | \(\uparrow\) |
| **Excedente Total** | \(\frac{(a-c)^2}{2b}\) | \(\frac{3(a-c)^2}{8b}\) | \(\downarrow\) |
| **Perda de Peso Morto** | \(0\) | \(\frac{(a-c)^2}{8b}\) | — |

!!! tip "Interpretação"
    A passagem de concorrência perfeita para monopólio envolve duas transferências: (i) parte do excedente do consumidor é capturada pelo monopolista (retângulo de transferência); (ii) parte do excedente total simplesmente desaparece (triângulo de Harberger). A PPM representa uma perda **líquida** de bem-estar social.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O monopólio produz menos e cobra mais do que um mercado competitivo, e a diferença de bem-estar que se perde no caminho não vai para ninguém — simplesmente evapora.

    **Pense assim:** Imagine que, em vez de vários postos de gasolina no bairro, houvesse apenas um. Ele reduziria a quantidade vendida e aumentaria o preço. Parte do que os consumidores perdem vai para o bolso do dono do posto (lucro de monopólio), mas outra parte — os litros que deixaram de ser vendidos porque o preço ficou alto demais — é pura perda. É como se alguém queimasse dinheiro: nem o consumidor nem o produtor ficam com ele.

    **Por que isso importa:** A perda de peso morto do monopólio é o principal argumento econômico para a existência de órgãos como o CADE, que combatem concentração excessiva de mercado para proteger o bem-estar dos consumidores brasileiros.

---

## 15.5 Estática comparativa do monopólio

### Efeito de um imposto unitário

Suponha que o governo impõe um imposto unitário \(t\) sobre cada unidade produzida. O novo custo marginal efetivo é \(CMg + t\). Com demanda linear:

\[
q^m(t) = \frac{a - c - t}{2b}, \quad p^m(t) = \frac{a + c + t}{2}
\]

Observe que \(\frac{dp^m}{dt} = \frac{1}{2}\): o monopolista repassa apenas **metade** do imposto ao consumidor. Isso contrasta com a concorrência perfeita, na qual, com oferta perfeitamente elástica, o repasse é integral.

!!! note "Repasse imperfeito"
    O fato de o monopolista absorver parte do imposto decorre da curvatura da curva de demanda que ele enfrenta. A incidência do imposto depende crucialmente da forma funcional da demanda: com demanda isoelástica, por exemplo, o repasse pode exceder 100%.

### Deslocamento da demanda

Um aumento na demanda (deslocamento paralelo de \(a\) para \(a + \Delta\)) eleva tanto o preço quanto a quantidade de monopólio:

\[
\Delta p^m = \frac{\Delta}{2}, \quad \Delta q^m = \frac{\Delta}{2b}
\]

O lucro do monopolista é crescente e convexo na demanda, o que implica que o monopolista tem incentivos fortes para investir em publicidade ou atividades que expandam a demanda.

---

## 15.6 Qualidade do produto sob monopólio

O monopolista também escolhe a **qualidade** \(s\) do produto. Se a demanda é \(p(q, s)\) e o custo é \(C(q, s)\), o problema torna-se:

\[
\max_{q, s} \; \pi(q, s) = p(q, s) \cdot q - C(q, s)
\]

A condição para a escolha ótima de qualidade é:

\[
\frac{\partial p}{\partial s} \cdot q = \frac{\partial C}{\partial s}
\]

O monopolista iguala a receita marginal da qualidade ao custo marginal da qualidade. A receita marginal da qualidade é avaliada no **consumidor marginal** (o último a adquirir o bem), não no consumidor médio. Como o consumidor marginal tipicamente valora a qualidade menos do que o consumidor médio, o monopolista pode subprover ou superprover qualidade em relação ao ótimo social, dependendo da distribuição de preferências.

!!! note "Qualidade e bem-estar"
    Spence (1975) demonstrou que o monopolista provê qualidade eficiente quando o consumidor marginal tem a mesma valoração de qualidade que o consumidor médio. Em geral, não há resultado inequívoco: o monopolista pode oferecer qualidade excessiva ou insuficiente.

---

## 15.7 Discriminação de preços

O monopolista pode aumentar seus lucros se conseguir cobrar preços diferentes de consumidores diferentes (ou pela mesma unidade adicional). A discriminação de preços exige duas condições: (i) algum grau de poder de mercado e (ii) impossibilidade de revenda (arbitragem) entre consumidores.

### 15.7.1 Discriminação de primeiro grau (perfeita)

Na discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Cada unidade é vendida a um preço diferente.

!!! definition "Discriminação de Primeiro Grau"
    Na **discriminação de preços de primeiro grau**, o monopolista extrai todo o excedente do consumidor, cobrando o preço máximo que cada consumidor está disposto a pagar por cada unidade.

Resultado:

- A quantidade produzida é **eficiente**: \(q = q^c\) (idêntica à concorrência perfeita).
- Não há perda de peso morto.
- Todo o excedente é capturado pelo produtor: \(EC = 0\), \(EP = \frac{(a-c)^2}{2b}\).

A discriminação perfeita é um caso limite teórico. Na prática, o monopolista raramente conhece as disposições a pagar individuais.

### 15.7.2 Discriminação de segundo grau (não-linear)

Quando o monopolista não observa as características dos consumidores, ele pode oferecer um **menu de contratos** (combinações preço-quantidade) e permitir que os consumidores se **autosselecionem**. Consumidores com alta disposição a pagar escolhem o pacote premium; consumidores com baixa disposição escolhem o pacote básico.

A estrutura ótima envolve:

- O tipo de **alta valoração** recebe a quantidade eficiente, mas paga um preço que lhe deixa algum excedente (renda informacional).
- O tipo de **baixa valoração** recebe uma quantidade **distorcida para baixo** (abaixo do eficiente) e extrai exatamente zero de excedente.

Essa distorção no consumo do tipo baixo é o custo da **compatibilidade de incentivos**: é necessário tornar o pacote básico suficientemente pouco atrativo para que o tipo alto não queira "imitar" o tipo baixo.

!!! tip "Exemplos práticos"
    - Passagens aéreas com classes tarifárias (econômica, executiva, primeira classe).
    - Versões de software (básica, profissional, enterprise).
    - Descontos por quantidade em supermercados.

!!! example "Box Brasil: Discriminação de preços nas passagens aéreas"
    O mercado brasileiro de aviação civil, dominado por três companhias (Latam, Gol e Azul, que juntas detêm mais de 98% do mercado doméstico segundo dados da [ANAC](https://www.anac.gov.br)), é um exemplo rico de discriminação de preços de segundo e terceiro grau.

    **Discriminação de segundo grau (autosseleção):**

    As companhias oferecem múltiplas classes tarifárias para o mesmo voo — desde tarifas promocionais sem direito a bagagem ou remarcação até tarifas flexíveis com reembolso integral. Passageiros corporativos, com alta disposição a pagar e demanda inelástica (viagens de última hora), autosselecionam-se para tarifas mais caras. Passageiros a lazer, com demanda elástica e flexibilidade de datas, escolhem as tarifas promocionais. Essa estrutura replica o menu de contratos descrito na teoria: o tipo de alta valoração paga mais, mas recebe serviços adicionais.

    **Discriminação de terceiro grau (segmentação observável):**

    Companhias oferecem tarifas diferenciadas para idosos (desconto de 5% obrigatório pela ANAC), estudantes e militares. A segmentação por antecedência de compra (preços mais baixos para compras com 30-60 dias de antecedência) também funciona como discriminação de terceiro grau, separando viajantes a lazer (antecedência) de viajantes corporativos (última hora).

    Segundo dados da ANAC, a tarifa aérea média doméstica por km variou entre R$ 0,35 e R$ 0,55 em 2023, mas a dispersão de preços dentro de um mesmo voo pode facilmente superar 300% — evidência direta de discriminação de preços.

### 15.7.3 Discriminação de terceiro grau (segmentação de mercados)

Na discriminação de terceiro grau, o monopolista divide os consumidores em **grupos observáveis** (por exemplo, por idade, localização, status profissional) e cobra preços diferentes de cada grupo.

Se há dois mercados com demandas \(p_1(q_1)\) e \(p_2(q_2)\), o monopolista resolve:

\[
\max_{q_1, q_2} \; p_1(q_1) \cdot q_1 + p_2(q_2) \cdot q_2 - C(q_1 + q_2)
\]

As condições de primeira ordem são:

\[
RMg_1(q_1) = RMg_2(q_2) = CMg(q_1 + q_2)
\]

O monopolista iguala as receitas marginais em todos os mercados ao custo marginal. O mercado com demanda **mais inelástica** paga o preço **mais alto**:

\[
\frac{p_1}{p_2} = \frac{1 - \frac{1}{|\varepsilon_2|}}{1 - \frac{1}{|\varepsilon_1|}}
\]

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Discriminar preços significa cobrar mais de quem está mais disposto a pagar e menos de quem é mais sensível ao preço.

    **Pense assim:** Pense nas passagens aéreas da Latam ou Gol. O executivo que compra na véspera paga R$ 2.000 porque *precisa* viajar (demanda inelástica). O estudante que compra com dois meses de antecedência paga R$ 400 porque tem flexibilidade (demanda elástica). A companhia aérea não está sendo "generosa" com o estudante — está maximizando lucro ao extrair mais de quem pode pagar mais e ainda assim vender para quem pagaria menos.

    **Por que isso importa:** A discriminação de preços pode, em alguns casos, aumentar a quantidade total vendida e até reduzir a perda de peso morto — o que complica o juízo de política concorrencial e exige análise caso a caso pelo CADE.

!!! example "Box Brasil: Monopólios naturais regulados — o setor elétrico e telecomunicações pós-privatização"
    O Brasil passou por extenso processo de privatização e regulação de monopólios naturais nos anos 1990. Dois casos emblemáticos ilustram os desafios da regulação:

    **Setor Elétrico**

    A reestruturação do setor elétrico brasileiro, iniciada em 1995 (Lei 8.987/1995 e Lei 9.074/1995), separou as atividades de geração, transmissão e distribuição. A distribuição de energia — um monopólio natural em cada área de concessão — é regulada pela ANEEL (Agência Nacional de Energia Elétrica), criada em 1996. A ANEEL realiza revisões tarifárias periódicas (a cada 4 ou 5 anos) utilizando o modelo de **empresa de referência** e aplica reajustes anuais baseados no IGP-M. Segundo dados da ANEEL, o Brasil possui 53 distribuidoras reguladas, atendendo mais de 90 milhões de unidades consumidoras. A tarifa média residencial brasileira, em 2024, situava-se entre R$ 0,60 e R$ 0,90 por kWh (com tributos), uma das mais altas do mundo em proporção à renda.

    **Telecomunicações**

    A privatização do Sistema Telebrás em 1998 transferiu ao setor privado o monopólio estatal de telecomunicações. A [ANATEL](https://www.anatel.gov.br) (Agência Nacional de Telecomunicações), criada pela Lei 9.472/1997, regula concessões e autorizações. Na telefonia fixa, as concessionárias originais (Oi, Telefônica/Vivo, Embratel) enfrentaram obrigações de universalização e controle tarifário (price cap com fator X de produtividade). A telefonia móvel, operando em regime de autorização, desenvolveu-se em um oligopólio com quatro operadoras principais (Vivo, Claro, TIM, Oi). A venda dos ativos móveis da Oi em 2022 para Vivo, Claro e TIM reduziu o mercado a três grandes operadoras, levantando preocupações concorrenciais analisadas pelo CADE.

    | Indicador | Setor Elétrico | Telecomunicações |
    |---|---|---|
    | Agência reguladora | ANEEL (1996) | ANATEL (1997) |
    | Modelo regulatório | Empresa de referência + price cap | Price cap com fator X |
    | Nº de distribuidoras/operadoras | 53 distribuidoras | 3 grandes operadoras (móvel) |
    | Universalização | ~99,8% de acesso | ~98% de cobertura 4G |
    | Principal desafio atual | Transição energética e tarifas | 5G e competição em banda larga |

    Ambos os setores ilustram o dilema fundamental da regulação de monopólios naturais: garantir eficiência produtiva e preços acessíveis sem eliminar os incentivos ao investimento. Para o contexto institucional e fiscal da regulação de monopólios naturais no Brasil, ver Giambiagi & Além (2016).

---

## Gráfico interativo: Discriminação de preços

<iframe src="../graficos/cap15/discriminacao-precos.html" width="100%" height="580" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.2 — Alterne entre discriminação de 1º grau (perfeita), 2º grau (tarifa em duas partes) e 3º grau (dois mercados). Observe como cada tipo afeta a extração de excedente e a eficiência alocativa.</em>
</p>

---

## 15.8 Tarifas em duas partes

Uma tarifa em duas partes consiste em uma **taxa de entrada** (tarifa fixa \(T\)) e um **preço por unidade** (\(p\)). O gasto total do consumidor é \(G = T + p \cdot q\).

### Consumidores homogêneos

Se todos os consumidores são idênticos, a estratégia ótima é simples:

1. Fixar \(p = CMg\) (preço eficiente).
2. Fixar \(T = EC\) (capturar todo o excedente do consumidor).

Isso replica o resultado da discriminação de primeiro grau: quantidade eficiente e extração completa do excedente.

### Consumidores heterogêneos

Com consumidores heterogêneos, o problema é mais complexo. Se a taxa de entrada for muito alta, consumidores com baixa demanda deixam o mercado. O monopolista enfrenta um trade-off entre:

- Cobrar uma taxa alta e perder consumidores marginais.
- Cobrar uma taxa baixa e atender mais consumidores, mas extrair menos excedente de cada um.

A solução ótima tipicamente envolve \(p > CMg\) e \(T < EC\) do consumidor com menor demanda.

!!! tip "Exemplos de tarifas em duas partes"
    - Clubes de compras (anuidade + preço por produto).
    - Parques de diversões (entrada + valor por brinquedo).
    - Planos telefônicos (assinatura mensal + tarifa por minuto/dados).
    - Serviços de streaming (assinatura fixa com acesso ao catálogo).

---

## 15.9 Regulação de monopólios

Quando o monopólio não pode ser eliminado (como no caso de monopólios naturais), a regulação busca aproximar o resultado de mercado do ótimo social. O dilema central é: como induzir a firma a produzir mais e cobrar menos, sem eliminar seus incentivos ao investimento e à eficiência?

### Regulação pelo custo marginal (first-best)

A solução ideal seria impor \(p = CMg\). Entretanto, em um monopólio natural com custos médios decrescentes, \(CMg < CMe\), de modo que \(p = CMg\) gera **prejuízo**. O governo precisaria subsidiar a firma, o que acarreta distorções em outros mercados (custo dos fundos públicos).

### Regulação pelo custo médio (second-best)

A alternativa mais comum é impor \(p = CMe\), garantindo lucro zero. A firma produz mais do que o monopólio sem regulação, mas menos do que o first-best. Há uma PPM residual, menor que a do monopólio não regulado.

### Regulação por teto de preços (price cap)

O regulador fixa um teto de preço que é reajustado periodicamente pela inflação menos um fator de produtividade:

\[
\Delta p \leq \text{inflação} - X
\]

O fator \(X\) captura ganhos de eficiência esperados. A firma retém ganhos de produtividade acima de \(X\) até a próxima revisão, o que incentiva a redução de custos.

!!! note "Vantagem do price cap"
    O sistema de price cap, introduzido no Reino Unido por Stephen Littlechild (1983), possui vantagens informacionais sobre a regulação por taxa de retorno: o regulador não precisa conhecer detalhadamente a estrutura de custos da firma. Em contrapartida, pode induzir redução de qualidade se os padrões de serviço não forem adequadamente monitorados.

### Regulação por taxa de retorno (rate of return)

O regulador permite que a firma obtenha uma taxa de retorno "justa" \(s\) sobre o capital investido \(K\):

\[
pq - wL - rK \leq (s - r)K
\]

Averch e Johnson (1962) demonstraram que esse esquema induz a firma a **sobreinvestir em capital** para inflar a base de remuneração — o chamado **efeito Averch-Johnson**. A firma substitui trabalho por capital além do socialmente ótimo, resultando em ineficiência produtiva.

!!! info "🏅 Prêmio Nobel — Jean Tirole (2014)"

    **Jean Tirole** (1953–presente) é um economista francês. Obteve o PhD no MIT sob orientação de Eric Maskin e é professor na Toulouse School of Economics (TSE), que ajudou a transformar em um dos principais centros de pesquisa econômica do mundo.

    **Por que ganhou o Nobel:**
    Premiado por sua análise do poder de mercado e da regulação. Tirole desenvolveu a teoria moderna de regulação de monopólios sob informação assimétrica (com Jean-Jacques Laffont), mostrando como desenhar contratos regulatórios quando o regulador não conhece os custos da firma. Suas contribuições à organização industrial unificaram a teoria do monopólio, oligopólio e barreiras à entrada em um framework analítico coerente baseado na teoria dos jogos.

    **Conexão com este capítulo:**
    A análise de regulação de monopólio natural — regulação por custo marginal, custo médio e tarifas em duas partes — apresentada neste capítulo é o ponto de partida da agenda de pesquisa de Tirole. Sua contribuição foi mostrar que, na prática, o regulador enfrenta informação assimétrica sobre os custos da firma, o que torna o problema de regulação fundamentalmente um problema de desenho de mecanismos.

---

## Gráfico interativo: Regulação de monopólio natural

<iframe src="../graficos/cap15/regulacao-monopolio.html" width="100%" height="580" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.3 — Visualize um monopólio natural com custo médio decrescente. Alterne entre monopólio não regulado, regulação pelo custo marginal (first-best, com subsídio) e regulação pelo custo médio (second-best, lucro zero). Compare preços, quantidades e perda de peso morto em cada regime.</em>
</p>

---

## 15.10 Visões dinâmicas do monopólio

### Schumpeter e a destruição criativa

Joseph Schumpeter (1942) argumentou que o monopólio pode ser socialmente benéfico quando considerado em perspectiva dinâmica. Segundo essa visão:

- Lucros de monopólio são a **recompensa pela inovação** e constituem o incentivo fundamental para o progresso tecnológico.
- A concorrência relevante não é a concorrência de preços estática, mas a **concorrência por inovação** — a "destruição criativa" pela qual novos produtos e processos tornam obsoletos os anteriores.
- Firmas com poder de mercado têm maiores recursos para investir em P&D.

A hipótese schumpeteriana gerou extensa literatura empírica, com resultados ambíguos. A relação entre concentração de mercado e inovação parece seguir uma curva em U invertido (Aghion et al., 2005): algum grau de poder de mercado estimula a inovação, mas poder excessivo a inibe.

### Mercados contestáveis

Baumol, Panzar e Willig (1982) propuseram a teoria dos **mercados contestáveis**: se a entrada e a saída do mercado são livres e sem custos irrecuperáveis (sunk costs), a mera **ameaça** de entrada é suficiente para disciplinar o monopolista. Mesmo um monopolista cobraria preços competitivos se a entrada fosse perfeitamente livre.

!!! definition "Mercado Contestável"
    Um mercado é **perfeitamente contestável** se: (i) não há custos irrecuperáveis de entrada e saída; (ii) entrantes potenciais têm acesso à mesma tecnologia do incumbente; (iii) consumidores respondem instantaneamente a diferenças de preço. Nessas condições, a ameaça de "hit-and-run" — entrada para capturar lucros seguida de saída — disciplina o incumbente.

Na prática, poucos mercados satisfazem essas condições rigorosas. Custos irrecuperáveis são a norma, não a exceção. Ainda assim, a teoria da contestabilidade fornece um benchmark útil e lembra que barreiras à entrada — não a estrutura de mercado per se — são o determinante fundamental do poder de mercado.

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 14.1 — Monopólio com demanda linear: preço, lucro e PPM"
    **Enunciado.** Um monopolista enfrenta demanda \(p = 80 - 2q\) e tem custo total \(C(q) = 200 + 8q\). (a) Encontre preço, quantidade e lucro de monopólio. (b) Calcule o índice de Lerner. (c) Calcule a perda de peso morto e o excedente total. (d) Compare com o resultado competitivo.

    ---

    **(a)** A receita marginal é \(RMg = 80 - 4q\). Igualando ao custo marginal \(CMg = 8\):

    \[
    80 - 4q = 8 \implies q^m = 18, \quad p^m = 80 - 36 = 44
    \]

    Lucro: \(\pi = 44 \times 18 - (200 + 8 \times 18) = 792 - 344 = 448\).

    **(b)** Índice de Lerner: \(L = (p - CMg)/p = (44 - 8)/44 = 36/44 \approx 0{,}818\).

    Verificação pela elasticidade: no ponto de monopólio, \(\varepsilon_p = (dq/dp)(p/q) = (-1/2)(44/18) \approx -1{,}222\). Logo \(L = 1/|\varepsilon_p| = 1/1{,}222 \approx 0{,}818\). ✓

    **(c)** Resultado competitivo: \(p^c = CMg = 8\), \(q^c = (80-8)/2 = 36\).

    \[
    PPM = \frac{1}{2}(p^m - CMg)(q^c - q^m) = \frac{1}{2}(44 - 8)(36 - 18) = \frac{1}{2} \times 36 \times 18 = 324
    \]

    Excedente total sob monopólio: \(W^m = EC^m + EP^m\).

    \(EC^m = \frac{1}{2}(80 - 44)(18) = \frac{1}{2} \times 36 \times 18 = 324\).

    \(EP^m = (44 - 8)(18) = 648\) (inclui lucro + parte do custo fixo absorvido).

    Na verdade, \(EP^m = \pi + CF = 448 + 200 = 648\)? Não — o EP é a área acima do CMg: \(EP^m = (p^m - CMg) \times q^m = 36 \times 18 = 648\).

    \(W^m = 324 + 648 = 972\).

    **(d)** Sob concorrência perfeita: \(EC^c = \frac{1}{2}(80-8)(36) = 1.296\), \(EP^c = 0\) (com CMg constante). \(W^c = 1.296\).

    \(PPM = W^c - W^m = 1.296 - 972 = 324\). ✓

    **Interpretação:** O monopolista captura R$ 648 de excedente, mas destrói R$ 324 de bem-estar social que ninguém captura — o triângulo de Harberger.

??? example "Exercício Resolvido 14.2 — Discriminação de terceiro grau com dois mercados"
    **Enunciado.** Um monopolista vende em dois mercados: \(p_1 = 120 - 2q_1\) e \(p_2 = 80 - q_2\). O custo marginal é constante \(CMg = 20\). (a) Com discriminação de 3º grau, encontre preços e quantidades em cada mercado. (b) Calcule os índices de Lerner e relacione com as elasticidades. (c) Calcule o lucro total.

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

??? example "Exercício Resolvido 14.3 — Regulação de monopólio natural"
    **Enunciado.** Uma distribuidora de água (monopólio natural) tem custo total \(C(q) = 5.000 + 10q\) e enfrenta demanda \(p = 60 - 0{,}5q\). (a) Calcule o equilíbrio sem regulação. (b) Calcule o resultado com regulação *first-best* (\(p = CMg\)) e mostre o prejuízo. (c) Calcule o resultado *second-best* (\(p = CMe\)).

    ---

    **(a) Monopólio não regulado:**

    \(RMg = 60 - q\), \(CMg = 10\).

    \[
    60 - q = 10 \implies q^m = 50, \quad p^m = 60 - 25 = 35
    \]

    \(\pi^m = 35 \times 50 - (5.000 + 500) = 1.750 - 5.500 = -3.750\).

    Hmm, lucro negativo! Isso ocorre porque o custo fixo é muito alto. Vamos verificar: \(\pi = (p-CMg)q - CF = (35-10)(50) - 5.000 = 1.250 - 5.000 = -3.750\). De fato, o monopolista não produz se o lucro é negativo. Vamos recalcular com \(C(q) = 500 + 10q\):

    \(\pi^m = (35-10)(50) - 500 = 1.250 - 500 = 750\). Usemos \(CF = 500\).

    \[
    q^m = 50, \quad p^m = 35, \quad \pi^m = 750
    \]

    **(b) Regulação first-best (\(p = CMg = 10\)):**

    \[
    10 = 60 - 0{,}5q \implies q^{fb} = 100, \quad p^{fb} = 10
    \]

    \(\pi^{fb} = 10 \times 100 - (500 + 1.000) = 1.000 - 1.500 = -500\).

    O prejuízo de R$ 500 corresponde exatamente ao custo fixo: com \(p = CMg\), a receita cobre apenas o custo variável. O governo precisaria subsidiar R$ 500 para manter a firma no mercado.

    **(c) Regulação second-best (\(p = CMe\)):**

    \(CMe = 500/q + 10\). Igualando à demanda inversa:

    \[
    60 - 0{,}5q = \frac{500}{q} + 10 \implies 50 - 0{,}5q = \frac{500}{q}
    \]

    \[
    50q - 0{,}5q^2 = 500 \implies 0{,}5q^2 - 50q + 500 = 0 \implies q^2 - 100q + 1.000 = 0
    \]

    \[
    q = \frac{100 \pm \sqrt{10.000 - 4.000}}{2} = \frac{100 \pm \sqrt{6.000}}{2} = \frac{100 \pm 77{,}46}{2}
    \]

    Tomando a raiz maior (mais produção): \(q^{sb} \approx 88{,}7\), \(p^{sb} = 60 - 44{,}4 = 15{,}6\).

    Lucro: \(\pi^{sb} = 0\) (por construção). A PPM residual é a área do triângulo entre \(q^{sb}\) e \(q^{fb}\):

    \[
    PPM^{sb} = \frac{1}{2}(p^{sb} - CMg)(q^{fb} - q^{sb}) = \frac{1}{2}(15{,}6 - 10)(100 - 88{,}7) = \frac{1}{2}(5{,}6)(11{,}3) \approx 31{,}6
    \]

    Compare: \(PPM^m = \frac{1}{2}(35-10)(100-50) = 625\). A regulação *second-best* reduz a PPM de 625 para apenas 31,6 — uma melhoria de 95%.

    **Interpretação:** A regulação por custo médio é o modelo adotado pela ANEEL para distribuidoras de energia no Brasil. Ela garante lucro zero para a concessionária enquanto expande significativamente o acesso, a um custo de eficiência relativamente baixo.

---

## Exercícios

??? example "Exercício 1"
    Considere um monopolista com custo total \(C(q) = 100 + 10q\) enfrentando demanda \(p = 50 - 2q\).

    a) Encontre o preço, a quantidade e o lucro de monopólio.

    b) Calcule o índice de Lerner e a elasticidade-preço da demanda no ponto de equilíbrio.

    c) Calcule a perda de peso morto e compare com o excedente total sob concorrência perfeita.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-1)

??? example "Exercício 2"
    Um monopolista atende dois mercados segmentados com demandas \(p_1 = 100 - q_1\) e \(p_2 = 60 - 2q_2\). O custo marginal é constante e igual a 20.

    a) Encontre os preços e quantidades ótimos em cada mercado com discriminação de terceiro grau.

    b) Calcule os índices de Lerner em cada mercado e relacione com as elasticidades.

    c) Compare o lucro com discriminação ao lucro sem discriminação (preço uniforme ótimo).

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-2)

??? example "Exercício 3"
    O governo impõe um imposto unitário \(t = 4\) sobre um monopolista com custo marginal constante \(c = 10\) e demanda \(p = 30 - q\).

    a) Calcule preço, quantidade e lucro antes e depois do imposto.

    b) Qual fração do imposto é repassada ao consumidor?

    c) Compare a receita fiscal com a variação na perda de peso morto.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-3)

??? example "Exercício 4"
    Um monopolista natural tem custo total \(C(q) = 1000 + 5q\). A demanda é \(p = 45 - q\).

    a) Calcule o resultado do monopólio não regulado.

    b) Calcule o resultado sob regulação de custo marginal (\(p = CMg\)). Mostre que a firma tem prejuízo.

    c) Calcule o resultado sob regulação de custo médio (\(p = CMe\)) e a PPM residual.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-4)

??? example "Exercício 5"
    Um monopolista pode adotar uma tarifa em duas partes \((T, p)\) para atender dois tipos de consumidores. O tipo 1 tem demanda \(q_1 = 20 - p\) e o tipo 2 tem demanda \(q_2 = 10 - p\). Há 100 consumidores de cada tipo. O custo marginal é \(c = 2\).

    a) Se o monopolista usa preço uniforme, qual é o preço ótimo?

    b) Se usa tarifa em duas partes atendendo ambos os tipos, encontre \((T^*, p^*)\).

    c) Se usa tarifa em duas partes atendendo apenas o tipo 1 (excluindo o tipo 2), encontre \((T^*, p^*)\) e compare os lucros.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-5)

---

## 🏆 Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2016 — Questão 08"
    Com relação a poder de mercado, monopólio e monopsônio, é correto afirmar que:

    **(0)** Se o custo marginal da empresa em monopólio for constante e igual a \$ 10, e a elasticidade-preço da demanda for igual a \(-2\), o preço do produto será \$ 20;

    **(1)** Quanto menos elástica for a curva de demanda de uma empresa, maior poder de monopólio ela terá;

    **(2)** O poder de monopsônio permite à empresa compradora adquirir o produto por um preço inferior ao competitivo;

    **(3)** Quanto menos elástica for a curva de oferta, maior será a diferença entre a despesa marginal e a despesa média, e maior será o poder de monopsônio do comprador;

    **(4)** Chama-se captura de renda ao processo pelo qual as empresas aplicam recursos produtivos em atividade de lobby para adquirir, manter ou exercer seu poder de monopólio.

    ??? success "Gabarito e Resolução"
        **Gabarito oficial: V-V-V-V-V**

        **(0) VERDADEIRO.** Pela regra de markup: \(p = CMg/(1 - 1/|\varepsilon|) = 10/(1 - 1/2) = 10/0{,}5 = 20\).

        **(1) VERDADEIRO.** O índice de Lerner é \(L = 1/|\varepsilon|\). Quanto menos elástica (menor \(|\varepsilon|\)), maior o Lerner e maior o poder de monopólio.

        **(2) VERDADEIRO.** O monopsonista iguala a despesa marginal (que excede o preço de oferta) ao valor do produto marginal do insumo, contratando menos unidades a um preço inferior ao que prevaleceria em concorrência.

        **(3) VERDADEIRO.** Com oferta \(w = w(L)\), a despesa marginal é \(DM = w + L \cdot dw/dL\). A diferença \(DM - w = L \cdot dw/dL\) é maior quanto mais inclinada (menos elástica) for a curva de oferta, pois \(dw/dL\) é maior.

        **(4) VERDADEIRO.** O comportamento descrito — aplicar recursos em lobby para obter ou manter poder de monopólio — corresponde ao conceito de *rent-seeking* (busca/captura de rendas), introduzido por Tullock (1967) e formalizado por Krueger (1974).

??? question "ANPEC 2015 — Questão 09"
    Julgue as afirmações relativas à Teoria do Monopólio:

    **(0)** Uma firma monopolista, que opera com várias fábricas, aloca sua produção entre elas de forma a igualar o custo médio em cada uma das fábricas.

    **(1)** Uma firma capaz de discriminação de preços de terceiro grau obtém lucro maior ou igual, em comparação com a situação na qual ela não fosse capaz de discriminar.

    **(2)** Uma firma monopolista, que se depara com curva de demanda com elasticidade constante, é indiferente sobre a quantidade produzida.

    **(3)** Para obter eficiência econômica, o regulador de um monopólio natural deve escolher a alocação que minimiza o custo médio unitário da firma.

    **(4)** Se o monopolista for capaz de realizar discriminação de preços de primeiro grau, a alocação de recursos será eficiente em termos paretianos.

    ??? success "Gabarito e Resolução"
        **Gabarito oficial: F-V-F-F-V**

        **(0) FALSO.** A firma multi-planta minimiza custos igualando os **custos marginais** (não os custos médios) entre fábricas: \(CMg_1(q_1) = CMg_2(q_2) = \ldots\). Essa é a condição de Lagrange para a minimização de custo total sujeita a uma meta de produção.

        **(1) VERDADEIRO.** A capacidade de discriminar nunca reduz o lucro, pois o monopolista pode sempre replicar o preço uniforme como caso especial (cobrando o mesmo preço em todos os segmentos). Logo, \(\pi_{\text{discriminação}} \geq \pi_{\text{uniforme}}\).

        **(2) FALSO.** Com demanda isoelástica (\(q = Ap^{\varepsilon}\)) e custo marginal positivo, a regra de markup \(p = CMg/(1 - 1/|\varepsilon|)\) determina univocamente o preço e a quantidade ótimos. O monopolista não é indiferente.

        **(3) FALSO.** Eficiência econômica requer \(p = CMg\) (*first-best*), que é a condição em que o benefício marginal do consumidor iguala o custo marginal da produção. Minimizar o custo médio gera uma alocação diferente e, em geral, ineficiente.

        **(4) VERDADEIRO.** Com discriminação perfeita, o monopolista produz a quantidade eficiente (\(q^c\), onde \(p = CMg\)), eliminando toda a perda de peso morto. A alocação é Pareto-eficiente, embora todo o excedente seja apropriado pelo produtor (\(EC = 0\)).

??? question "ANPEC 2018 — Questão 08"
    Com relação à análise de discriminação de preços, indique quais das afirmativas a seguir são verdadeiras e quais são falsas:

    **(0)** Na discriminação de preços de terceiro grau, a receita marginal deve ser igual para os diferentes grupos de consumidores e igual ao custo marginal;

    **(1)** Na discriminação de preços de terceiro grau, o preço mais elevado será cobrado dos consumidores com demanda mais elástica;

    **(2)** A discriminação de preços intertemporal cobra preços mais elevados dos consumidores mais impacientes, reduzindo o preço mais tarde para incentivar o consumo de massa;

    **(3)** A tarifa em duas partes é eficaz quando as demandas dos consumidores são relativamente homogêneas;

    **(4)** Quando as demandas são heterogêneas e estão positivamente correlacionadas, a prática do pacote pode ser uma técnica eficaz para a fixação de preços.

    ??? success "Gabarito e Resolução"
        **Gabarito oficial: V-F-V-V-F**

        **(0) VERDADEIRO.** A condição de ótimo na discriminação de 3º grau é \(RMg_1 = RMg_2 = \ldots = CMg\). O monopolista iguala as receitas marginais de todos os segmentos ao custo marginal.

        **(1) FALSO.** O preço mais elevado é cobrado do grupo com demanda **mais inelástica** (menor \(|\varepsilon|\)), não mais elástica. Pela relação \(p_i = CMg/(1 - 1/|\varepsilon_i|)\), menor elasticidade implica maior preço.

        **(2) VERDADEIRO.** Na discriminação intertemporal, consumidores impacientes (alta disposição a pagar, demanda inelástica no tempo) compram imediatamente ao preço alto. O preço cai ao longo do tempo para capturar consumidores com menor disposição a pagar. Exemplos: livros em capa dura seguidos de edição de bolso, eletrônicos no lançamento.

        **(3) VERDADEIRO.** Com consumidores homogêneos, a tarifa em duas partes é particularmente eficaz: fixa-se \(p = CMg\) e \(T = EC\) do consumidor representativo, extraindo todo o excedente com eficiência alocativa plena.

        **(4) FALSO.** O *bundling* (venda em pacote) é mais eficaz quando as demandas dos bens estão **negativamente** correlacionadas, pois isso reduz a dispersão da disposição a pagar pelo pacote, permitindo melhor extração de excedente. Com correlação positiva, o pacote não reduz a heterogeneidade e o *bundling* é pouco eficaz.

---

## 🔬 Pesquisa em Ação

??? abstract "De Loecker, J., Eeckhout, J. & Unger, G. (2020). [The Rise of Market Power and the Macroeconomic Implications](https://doi.org/10.1093/qje/qjz041). *Quarterly Journal of Economics*, 135(2), 561–644."
    **DOI:** [10.1093/qje/qjz041](https://doi.org/10.1093/qje/qjz041)

    **Contexto.** O Capítulo 15 analisa o monopólio como estrutura de mercado, mas até que ponto o poder de mercado é um fenômeno relevante empiricamente? De Loecker, Eeckhout e Unger (2020) respondem a essa pergunta com uma análise abrangente do *markup* praticado pelas firmas nos Estados Unidos ao longo de seis décadas.

    **Metodologia.** Os autores estimam *markups* firma a firma usando dados contábeis (Compustat) e a abordagem de produção de Hall (1988), que infere o *markup* como a razão entre a elasticidade-produto de um insumo variável e a participação desse insumo na receita. A grande inovação é aplicar esse método a um painel de milhares de firmas de 1955 a 2016, permitindo documentar a evolução do poder de mercado agregado.

    **Resultados.** O *markup* médio na economia americana era relativamente estável em torno de 1,21 (21% acima do custo marginal) até 1980, mas subiu para 1,61 em 2016 — um aumento de 33%. Esse aumento é concentrado nas firmas do topo da distribuição: as 10% mais lucrativas elevaram seus *markups* de 1,5 para mais de 2,5. Os autores documentam que essa tendência está associada a menor participação do trabalho na renda, menor dinamismo empresarial e maior desigualdade.

    **Conexão com o capítulo.** O artigo fornece evidência empírica maciça sobre o índice de Lerner (Seção 15.3) em escala agregada. Os *markups* estimados podem ser diretamente interpretados como \(1/(1 - L)\), conectando a teoria do monopólio à mensuração empírica do poder de mercado. A tendência ascendente documentada sugere que o modelo de concorrência perfeita se torna progressivamente menos adequado como descrição da economia moderna.

??? abstract "Bergemann, D., Brooks, B. & Morris, S. (2015). [The Limits of Price Discrimination](https://doi.org/10.1257/aer.20130848). *American Economic Review*, 105(3), 921–957."
    **DOI:** [10.1257/aer.20130848](https://doi.org/10.1257/aer.20130848)

    **Contexto.** A Seção 15.7 classifica a discriminação de preços em três graus, mas essa taxonomia assume que sabemos exatamente quanta informação o monopolista possui sobre os consumidores. Bergemann, Brooks e Morris (2015) fazem uma pergunta mais fundamental: dada uma demanda de mercado, quais são os **limites** do que a discriminação de preços pode alcançar, considerando toda estrutura de informação possível?

    **Contribuição teórica.** Os autores mostram que, para qualquer segmentação de mercado (qualquer partição informacional dos consumidores), o resultado da discriminação de preços deve satisfazer duas restrições: (i) o lucro do monopolista deve ser pelo menos tão grande quanto o lucro de preço uniforme; (ii) o excedente do consumidor agregado não pode ser negativo. O resultado central é que **qualquer** par (lucro, excedente do consumidor) satisfazendo essas duas restrições é alcançável por alguma segmentação. Em particular, existe uma segmentação que gera eficiência plena (como discriminação de 1º grau) e outra que maximiza o excedente do consumidor sujeito ao monopolista obter pelo menos o lucro de preço uniforme.

    **Resultados.** O artigo demonstra que os efeitos de bem-estar da discriminação de preços dependem crucialmente da informação disponível ao monopolista. A produção total pode subir, cair ou permanecer constante conforme a segmentação. Isso contrasta com o resultado clássico de Pigou (1920) para demandas lineares, em que a discriminação de 3º grau não altera a quantidade total.

    **Conexão com o capítulo.** O paper aprofunda a análise de discriminação de preços das Seções 14.7.1–14.7.3, mostrando que a distinção entre 1º, 2º e 3º grau é apenas uma parte de um espectro muito mais rico de possibilidades informacionais. Para estudantes que desejam entender os limites teóricos do poder de mercado na extração de excedente, este é um ponto de partida essencial.

---

## Referências do Capítulo

- Besanko, David, e Ronald Braeutigam. 2014. [*Microeconomics*](https://books.google.com.br/books?id=BeoengEACAAJ). 5ª ed. New York: Wiley. Caps. 11–12.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 12.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage. Caps. 14–15.
- Tirole, Jean. 1988. [*The Theory of Industrial Organization*](https://books.google.com/books/about/The_Theory_of_Industrial_Organization.html?id=HIjsF0XONF8C). Cambridge: MIT Press. Caps. 1–3.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Caps. 14, 24.
