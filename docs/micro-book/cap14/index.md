# Capítulo 14 — O Rei do Mercado: Poder, Preço e Monopólio

## Introdução

O monopólio representa a antítese da concorrência perfeita. Enquanto no modelo competitivo cada firma é uma tomadora de preço, incapaz de influenciar individualmente as condições de mercado, o monopolista é o único ofertante e, portanto, enfrenta toda a curva de demanda do mercado. Essa posição privilegiada lhe confere **poder de mercado** — a capacidade de fixar preços acima do custo marginal e obter lucros econômicos persistentes.

Este capítulo examina as causas do monopólio, a lógica de sua maximização de lucro, as perdas de eficiência decorrentes do poder de mercado, as estratégias de discriminação de preços e os mecanismos de regulação. A análise do monopólio não é meramente teórica: monopólios naturais regulados dominam setores fundamentais da economia brasileira, como energia elétrica, saneamento e telecomunicações. Besanko & Braeutigam (2014, Caps. 11–12) oferecem tratamento acessível da teoria do monopólio com aplicações a mercados regulados.

---

## 14.1 Barreiras à entrada

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

### Barreiras estratégicas

Firmas incumbentes podem adotar comportamentos deliberados para dificultar a entrada de rivais:

- **Excesso de capacidade instalada**: sinaliza que o incumbente pode expandir a produção rapidamente em resposta à entrada, tornando-a não lucrativa.
- **Preços predatórios**: fixar preços temporariamente abaixo do custo para expulsar ou dissuadir concorrentes (prática ilícita no direito concorrencial brasileiro, conforme a Lei 12.529/2011).
- **Proliferação de marcas**: ocupar nichos de mercado para reduzir o espaço disponível para entrantes.
- **Controle de insumos essenciais**: adquirir ou controlar o acesso a recursos sem os quais rivais não podem operar.

---

## Gráfico interativo: Equilíbrio de monopólio

<iframe src="../graficos/cap14/monopolio.html" width="100%" height="550" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.1 — Ajuste os parâmetros da demanda (\(a\), \(b\)) e do custo marginal (\(c\)) para visualizar o equilíbrio de monopólio, o lucro, o excedente do consumidor, a perda de peso morto e o índice de Lerner. Compare com o resultado competitivo.</em>
</p>

---

## 14.2 Maximização de lucro do monopolista

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

---

## 14.3 Demonstração: derivação do índice de Lerner

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

## 14.4 Ineficiência do monopólio

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

Arnold Harberger (1954) estimou que a PPM nos Estados Unidos seria da ordem de 0,1% do PIB, um valor surpreendentemente pequeno. Estimativas posteriores, incorporando rent-seeking e ineficiências organizacionais, sugerem valores significativamente maiores.

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

---

## 14.5 Estática comparativa do monopólio

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

## 14.6 Qualidade do produto sob monopólio

O monopolista também escolhe a **qualidade** \(s\) do produto. Se a demanda é \(p(q, s)\) e o custo é \(C(q, s)\), o problema torna-se:

\[
\max_{q, s} \; \pi(q, s) = p(q, s) \cdot q - C(q, s)
\]

A condição para a escolha ótima de qualidade é:

\[
\frac{\partial p}{\partial s} \cdot q = \frac{\partial C}{\partial s}
\]

O monopolista iguala a receita marginal da qualidade ao custo marginal da qualidade. A receita marginal da qualidade é avaliada no **consumidor marginal** (o último a adquirir o bem), não no consumidor médio. Como o consumidor marginal tipicamente valora a qualidade menos do que o consumidor médio, o monopolista pode sub ou superprover qualidade em relação ao ótimo social, dependendo da distribuição de preferências.

!!! note "Qualidade e bem-estar"
    Spence (1975) demonstrou que o monopolista provê qualidade eficiente quando o consumidor marginal tem a mesma valoração de qualidade que o consumidor médio. Em geral, não há resultado inequívoco: o monopolista pode oferecer qualidade excessiva ou insuficiente.

---

## 14.7 Discriminação de preços

O monopolista pode aumentar seus lucros se conseguir cobrar preços diferentes de consumidores diferentes (ou pela mesma unidade adicional). A discriminação de preços exige duas condições: (i) algum grau de poder de mercado e (ii) impossibilidade de revenda (arbitragem) entre consumidores.

### 14.7.1 Discriminação de primeiro grau (perfeita)

Na discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Cada unidade é vendida a um preço diferente.

!!! definition "Discriminação de Primeiro Grau"
    Na **discriminação de preços de primeiro grau**, o monopolista extrai todo o excedente do consumidor, cobrando o preço máximo que cada consumidor está disposto a pagar por cada unidade.

Resultado:

- A quantidade produzida é **eficiente**: \(q = q^c\) (idêntica à concorrência perfeita).
- Não há perda de peso morto.
- Todo o excedente é capturado pelo produtor: \(EC = 0\), \(EP = \frac{(a-c)^2}{2b}\).

A discriminação perfeita é um caso limite teórico. Na prática, o monopolista raramente conhece as disposições a pagar individuais.

### 14.7.2 Discriminação de segundo grau (não-linear)

Quando o monopolista não observa as características dos consumidores, ele pode oferecer um **menu de contratos** (combinações preço-quantidade) e permitir que os consumidores se **autosselecionem**. Consumidores com alta disposição a pagar escolhem o pacote premium; consumidores com baixa disposição escolhem o pacote básico.

A estrutura ótima envolve:

- O tipo de **alta valoração** recebe a quantidade eficiente, mas paga um preço que lhe deixa algum excedente (renda informacional).
- O tipo de **baixa valoração** recebe uma quantidade **distorcida para baixo** (abaixo do eficiente) e extrai exatamente zero de excedente.

Essa distorção no consumo do tipo baixo é o custo da **compatibilidade de incentivos**: é necessário tornar o pacote básico suficientemente pouco atrativo para que o tipo alto não queira "imitar" o tipo baixo.

!!! tip "Exemplos práticos"
    - Passagens aéreas com classes tarifárias (econômica, executiva, primeira classe).
    - Versões de software (básica, profissional, enterprise).
    - Descontos por quantidade em supermercados.

### 14.7.3 Discriminação de terceiro grau (segmentação de mercados)

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

!!! example "Box Brasil: Monopólios naturais regulados — o setor elétrico e telecomunicações pós-privatização"
    O Brasil passou por extenso processo de privatização e regulação de monopólios naturais nos anos 1990. Dois casos emblemáticos ilustram os desafios da regulação:

    **Setor Elétrico**

    A reestruturação do setor elétrico brasileiro, iniciada em 1995 (Lei 8.987/1995 e Lei 9.074/1995), separou as atividades de geração, transmissão e distribuição. A distribuição de energia — um monopólio natural em cada área de concessão — é regulada pela ANEEL (Agência Nacional de Energia Elétrica), criada em 1996. A ANEEL realiza revisões tarifárias periódicas (a cada 4 ou 5 anos) utilizando o modelo de **empresa de referência** e aplica reajustes anuais baseados no IGP-M. Segundo dados da ANEEL, o Brasil possui 53 distribuidoras reguladas, atendendo mais de 90 milhões de unidades consumidoras. A tarifa média residencial brasileira, em 2024, situava-se entre R$ 0,60 e R$ 0,90 por kWh (com tributos), uma das mais altas do mundo em proporção à renda.

    **Telecomunicações**

    A privatização do Sistema Telebrás em 1998 transferiu ao setor privado o monopólio estatal de telecomunicações. A ANATEL (Agência Nacional de Telecomunicações), criada pela Lei 9.472/1997, regula concessões e autorizações. Na telefonia fixa, as concessionárias originais (Oi, Telefônica/Vivo, Embratel) enfrentaram obrigações de universalização e controle tarifário (price cap com fator X de produtividade). A telefonia móvel, operando em regime de autorização, desenvolveu-se em um oligopólio com quatro operadoras principais (Vivo, Claro, TIM, Oi). A venda dos ativos móveis da Oi em 2022 para Vivo, Claro e TIM reduziu o mercado a três grandes operadoras, levantando preocupações concorrenciais analisadas pelo CADE.

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

<iframe src="../graficos/cap14/discriminacao-precos.html" width="100%" height="580" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.2 — Alterne entre discriminação de 1º grau (perfeita), 2º grau (tarifa em duas partes) e 3º grau (dois mercados). Observe como cada tipo afeta a extração de excedente e a eficiência alocativa.</em>
</p>

---

## 14.8 Tarifas em duas partes

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

## 14.9 Regulação de monopólios

Quando o monopólio não pode ser eliminado (como no caso de monopólios naturais), a regulação busca aproximar o resultado de mercado do ótimo social.

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

---

## Gráfico interativo: Regulação de monopólio natural

<iframe src="../graficos/cap14/regulacao-monopolio.html" width="100%" height="580" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<em>Figura 14.3 — Visualize um monopólio natural com custo médio decrescente. Alterne entre monopólio não regulado, regulação pelo custo marginal (first-best, com subsídio) e regulação pelo custo médio (second-best, lucro zero). Compare preços, quantidades e perda de peso morto em cada regime.</em>
</p>

---

## 14.10 Visões dinâmicas do monopólio

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

## Exercícios

!!! example "Exercício 1"
    Considere um monopolista com custo total \(C(q) = 100 + 10q\) enfrentando demanda \(p = 50 - 2q\).

    a) Encontre o preço, a quantidade e o lucro de monopólio.

    b) Calcule o índice de Lerner e a elasticidade-preço da demanda no ponto de equilíbrio.

    c) Calcule a perda de peso morto e compare com o excedente total sob concorrência perfeita.

!!! example "Exercício 2"
    Um monopolista atende dois mercados segmentados com demandas \(p_1 = 100 - q_1\) e \(p_2 = 60 - 2q_2\). O custo marginal é constante e igual a 20.

    a) Encontre os preços e quantidades ótimos em cada mercado com discriminação de terceiro grau.

    b) Calcule os índices de Lerner em cada mercado e relacione com as elasticidades.

    c) Compare o lucro com discriminação ao lucro sem discriminação (preço uniforme ótimo).

!!! example "Exercício 3"
    O governo impõe um imposto unitário \(t = 4\) sobre um monopolista com custo marginal constante \(c = 10\) e demanda \(p = 30 - q\).

    a) Calcule preço, quantidade e lucro antes e depois do imposto.

    b) Qual fração do imposto é repassada ao consumidor?

    c) Compare a receita fiscal com a variação na perda de peso morto.

!!! example "Exercício 4"
    Um monopolista natural tem custo total \(C(q) = 1000 + 5q\). A demanda é \(p = 45 - q\).

    a) Calcule o resultado do monopólio não regulado.

    b) Calcule o resultado sob regulação de custo marginal (\(p = CMg\)). Mostre que a firma tem prejuízo.

    c) Calcule o resultado sob regulação de custo médio (\(p = CMe\)) e a PPM residual.

!!! example "Exercício 5"
    Um monopolista pode adotar uma tarifa em duas partes \((T, p)\) para atender dois tipos de consumidores. O tipo 1 tem demanda \(q_1 = 20 - p\) e o tipo 2 tem demanda \(q_2 = 10 - p\). Há 100 consumidores de cada tipo. O custo marginal é \(c = 2\).

    a) Se o monopolista usa preço uniforme, qual é o preço ótimo?

    b) Se usa tarifa em duas partes atendendo ambos os tipos, encontre \((T^*, p^*)\).

    c) Se usa tarifa em duas partes atendendo apenas o tipo 1 (excluindo o tipo 2), encontre \((T^*, p^*)\) e compare os lucros.
