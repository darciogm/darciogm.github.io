# 7.6 Seguro, Diversificação e Informação: A Caixa de Ferramentas Contra o Risco

Até aqui, tratamos o risco como algo dado — uma propriedade das loterias que o agente enfrenta. Mas, na prática, agentes e instituições desenvolvem mecanismos engenhosos para **reduzir**, **redistribuir** ou **gerenciar** os riscos a que estão expostos. Esses mecanismos não eliminam a incerteza do mundo; eles a realocam para quem pode suportá-la melhor ou a diluem entre muitos agentes. Nesta seção, examinamos quatro estratégias fundamentais: seguros, diversificação, flexibilidade e informação.

### 7.6.1 Seguros

O mecanismo de seguro permite transferir risco de agentes mais avessos para agentes menos avessos (ou mais diversificados). Considere um agente com riqueza \(W\) que enfrenta uma perda \(d\) com probabilidade \(p\).

- **Prêmio atuarialmente justo**: \(P = p \cdot d\). Sob esse prêmio, o agente avesso ao risco contrata cobertura total.
- **Prêmio com carregamento**: \(P = (1+\lambda) p \cdot d\), \(\lambda > 0\). Nesse caso, a cobertura ótima pode ser parcial.

!!! theorem "Teorema: Seguro total sob prêmio atuarialmente justo"
    Se o prêmio do seguro é atuarialmente justo e o agente é estritamente avesso ao risco, então o contrato ótimo é de **cobertura total** (\(q^* = d\)), onde \(q\) é a indenização contratada.

A intuição por trás deste teorema é direta: quando o prêmio é justo, o agente pode "comprar" certeza sem custo atuarial. Como ele prefere certeza à incerteza (por ser avesso ao risco), ele maximiza a utilidade eliminando todo o risco. Com carregamento (\(\lambda > 0\)), a certeza passa a ter um preço adicional, e o agente pondera entre redução de risco e custo do prêmio — a solução intermediária pode envolver franquias, cobertura parcial ou mesmo a decisão de não contratar seguro.

Na prática, os mercados de seguros brasileiros exibem carregamentos que variam amplamente. O seguro de automóvel pode ter \(\lambda\) entre 30% e 60% sobre o prêmio puro, enquanto resseguros de catástrofes naturais (como enchentes e secas) têm carregamentos ainda maiores, refletindo riscos sistemáticos que não se diversificam dentro da carteira da seguradora. Esse ponto é crucial: a diversificação pela seguradora só funciona quando os sinistros são *independentes* entre segurados. Uma seca que atinge todos os produtores de uma região simultaneamente não é diversificável na escala de uma única seguradora — o que explica o papel indispensável do resseguro e da participação do Estado em programas como o Proagro.

!!! box-brasil "Box Brasil 7.1: Proagro e o seguro rural no Brasil"
    O **Proagro** (Programa de Garantia da Atividade Agropecuária) é o principal instrumento de proteção à renda dos agricultores brasileiros contra perdas causadas por eventos climáticos adversos, pragas e doenças. Criado em 1973 (Lei 5.969/73) e operado pelo Banco Central do Brasil em parceria com agentes financeiros, o Proagro garante a cobertura de financiamentos rurais quando a lavoura sofre perdas que impedem o pagamento do crédito.

    **Como funciona na prática**

    O produtor que toma crédito rural pelo Sistema Nacional de Crédito Rural (SNCR) pode aderir ao Proagro pagando um adicional (o "prêmio" do Proagro) de 2% a 6% sobre o valor financiado. Em caso de sinistro comprovado — quebra de safra por geada, seca, excesso de chuva, granizo ou pragas —, o Proagro cobre as obrigações financeiras do produtor junto ao banco. Para pequenos produtores enquadrados no Pronaf, existe o **Proagro Mais**, com condições mais favoráveis e custo subsidiado pelo Tesouro Nacional.

    **A lógica microeconômica**

    Do ponto de vista da teoria desenvolvida neste capítulo, o Proagro é um mecanismo de seguro com prêmio *subsidiado*. O prêmio atuarialmente justo para cobrir os riscos climáticos de regiões como o Semiárido nordestino ou o Cerrado goiano seria muito superior ao que os produtores conseguem pagar, especialmente os de menor escala. O subsídio — financiado pelo Tesouro e computado no orçamento do Ministério da Agricultura — funciona como uma redução do carregamento \(\lambda\), tornando o seguro acessível para produtores que de outra forma permaneceriam sem cobertura.

    Rosenzweig e Binswanger (1993), usando dados de agricultores indianos, mostram que a exposição ao risco climático reduz significativamente a lucratividade e o investimento agropecuário — especialmente para produtores mais pobres que não têm acesso a mercados de crédito ou seguro. O Proagro atua exatamente nessa fronteira: sem cobertura, o produtor reduz o risco *ex ante* escolhendo tecnologias menos produtivas mas mais seguras (como plantio tardio ou variedades de menor rendimento mas maior resistência à seca). Com o seguro, ele pode adotar tecnologias de maior risco e maior retorno médio, aumentando a produtividade e a renda agrícola.

    **Desafios e limitações**

    O Proagro enfrenta problemas clássicos de informação assimétrica (Seção 7.8): **seleção adversa** (produtores em regiões de maior risco climático têm mais incentivo a aderir) e **risco moral** (após a contratação, o produtor pode reduzir investimentos em irrigação e práticas preventivas). Além disso, a verificação dos sinistros é custosa e sujeita a disputas, o que eleva os custos administrativos do programa.

    **Fonte**: Banco Central do Brasil, Manual de Crédito Rural (MCR), Capítulo 16; Ministério da Agricultura e Pecuária, Relatório Proagro 2023.

<iframe src="/micro-book/graficos/cap07/seguro.html" title="Figura 7.3 — Mercado de seguros no espaço estado-contingente" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 7.3 — Mercado de seguros no espaço estado-contingente.** Ajuste a riqueza inicial, a perda, a probabilidade de sinistro e o carregamento. Observe como a cobertura ótima se move em direção à linha de 45 graus (seguro total) quando o prêmio é atuarialmente justo (\(\lambda = 0\)).
</div>

??? exercicio-resolvido "Exercício Resolvido 7.2"
    **Enunciado:** Uma produtora de café no Sul de Minas possui riqueza de R\$ 500.000 e enfrenta risco de geada que, com probabilidade \(0{,}2\), causa perda de R\$ 200.000. Sua utilidade é \(u(W) = \sqrt{W}\). (a) Calcule o prêmio atuarialmente justo. (b) Verifique que a produtora contrata cobertura total. (c) Se a seguradora cobra carregamento \(\lambda = 0{,}3\), qual o prêmio de risco máximo que a produtora aceita pagar?

    **Dados:** \(W = 500.000\), \(d = 200.000\), \(p = 0{,}2\), \(u(W) = \sqrt{W}\).

    **Resolução:**

    **Passo 1 — Prêmio atuarialmente justo**

    \[
    P_{justo} = p \times d = 0{,}2 \times 200.000 = \text{R\$ } 40.000
    \]

    **Passo 2 — Cobertura total sob prêmio justo**

    Sem seguro: \(E[u] = 0{,}8 \times \sqrt{500.000} + 0{,}2 \times \sqrt{300.000} = 0{,}8 \times 707{,}11 + 0{,}2 \times 547{,}72 = 565{,}69 + 109{,}54 = 675{,}23\).

    Com seguro total (\(P = 40.000\)): riqueza certa = \(500.000 - 40.000 = 460.000\).

    \(u(460.000) = \sqrt{460.000} = 678{,}23\).

    Como \(678{,}23 > 675{,}23\), a produtora prefere o seguro total. De fato, para agente avesso ao risco, seguro total é ótimo sob prêmio justo (Seção 7.6.1).

    **Passo 3 — Prêmio máximo que aceita pagar**

    O prêmio máximo \(P_{max}\) satisfaz \(u(W - P_{max}) = E[u]\) sem seguro:

    \[
    \sqrt{500.000 - P_{max}} = 675{,}23 \implies 500.000 - P_{max} = 675{,}23^2 = 455.936
    \]

    \[
    P_{max} = 500.000 - 455.936 = \text{R\$ } 44.064
    \]

    **Passo 4 — Decisão com carregamento**

    Prêmio com carregamento: \(P_\lambda = (1 + 0{,}3) \times 40.000 = \text{R\$ } 52.000\).

    Como \(P_\lambda = 52.000 > P_{max} = 44.064\), a produtora **não contrata** cobertura total a esse preço.

    **Resultado:** O prêmio atuarialmente justo é R\$ 40.000, e a produtora pagaria até R\$ 44.064 (prêmio de risco de R\$ 4.064). O carregamento de 30% torna a cobertura total inviável.

    **Interpretação econômica:** A diferença \(P_{max} - P_{justo} = \text{R\$ } 4.064\) é o prêmio de risco da produtora — o valor monetário da sua aversão ao risco. Com carregamento de 30%, a seguradora cobra mais do que a produtora está disposta a pagar por cobertura total, o que pode levar à contratação de cobertura parcial (franquia elevada). Este é precisamente o mecanismo que explica por que pequenos produtores brasileiros, com baixa capacidade de absorção de risco, dependem do subsídio do PSR para viabilizar o seguro.

### 7.6.2 Diversificação

Se o seguro transfere risco de um agente para outro, a diversificação opera por um mecanismo diferente: ela **dilui** o risco ao distribuir a exposição entre múltiplas fontes de incerteza. A lógica é simples, mas poderosa: quando os resultados de diferentes ativos não se movem perfeitamente em conjunto, as perdas de uns tendem a ser parcialmente compensadas pelos ganhos de outros.

A diversificação reduz o risco total de uma carteira sem necessariamente reduzir o retorno esperado. Se os retornos dos ativos não são perfeitamente correlacionados, a variância da carteira é menor que a média ponderada das variâncias individuais.

Para \(n\) ativos independentes e identicamente distribuídos com retorno \(\tilde{r}_i\) (média \(\mu\), variância \(\sigma^2\)), a variância da carteira igualmente ponderada é:

\[
\text{Var}\left(\frac{1}{n}\sum_{i=1}^{n}\tilde{r}_i\right) = \frac{\sigma^2}{n} \xrightarrow{n \to \infty} 0
\]

No caso mais geral de dois ativos com correlação \(\rho\), pesos \(w\) e \((1-w)\), e variâncias \(\sigma_1^2\) e \(\sigma_2^2\), a variância da carteira é:

\[
\sigma_p^2 = w^2 \sigma_1^2 + (1-w)^2 \sigma_2^2 + 2w(1-w)\rho\sigma_1\sigma_2
\]

Quando \(\rho < 1\), existe um peso \(w^*\) que minimiza \(\sigma_p^2\), gerando o benefício da diversificação. Quanto menor a correlação entre os ativos, maior o ganho. No caso extremo \(\rho = -1\), é possível eliminar completamente o risco da carteira. Esse resultado fundamenta toda a teoria moderna de portfólios, iniciada por Markowitz (1952).

!!! note "Risco diversificável vs. risco sistemático"
    Em uma economia com muitos ativos, a diversificação elimina o **risco idiossincrático** (específico de cada ativo), mas não elimina o **risco sistemático** (que afeta todos os ativos simultaneamente). Essa distinção é central no modelo CAPM (Capital Asset Pricing Model), no qual apenas o risco sistemático — medido pelo coeficiente beta — é remunerado pelo mercado.

A diversificação tem um limite fundamental: ela não elimina o risco agregado, apenas realoca e dilui o risco idiossincrático. Um fundo de ações com 500 empresas distintas ainda estará sujeito às flutuações do ciclo econômico, à variação da taxa Selic e aos choques cambiais — todos riscos sistemáticos que afetam todas as empresas simultaneamente. No Brasil, a elevada correlação entre setores da Bolsa de Valores — especialmente entre commodities agrícolas, petróleo e setor financeiro, que juntos representam uma parcela desproporcional do Ibovespa — limita os benefícios práticos da diversificação doméstica. Por isso, fundos de previdência e investidores institucionais brasileiros buscam crescentemente a diversificação internacional, alocando parte do patrimônio em ativos de outras economias com ciclos menos correlacionados com o Brasil.

!!! idea "Intuição Econômica"
    **Em uma frase:** Diversificar é não colocar todos os ovos na mesma cesta — o risco total cai mesmo sem reduzir o retorno esperado.

    **Pense assim:** Um pequeno agricultor do Paraná que planta só soja fica à mercê da seca ou da queda de preço. Se ele divide a terra entre soja, milho e feijão, uma safra ruim de um produto pode ser compensada pela boa safra de outro. O retorno médio pode ser parecido, mas o risco de "quebrar" cai muito.

    **Por que isso importa:** A diversificação é o princípio por trás dos fundos de investimento, dos planos de previdência e até da política de crédito agrícola do Banco do Brasil, que incentiva a rotação de culturas.

??? exercicio-resolvido "Exercício Resolvido 7.3"
    **Enunciado:** Um investidor aloca sua riqueza entre dois ativos: ações de uma empresa de energia (\(\mu_1 = 12\%\), \(\sigma_1 = 20\%\)) e títulos do agronegócio (\(\mu_2 = 8\%\), \(\sigma_2 = 15\%\)). A correlação entre os retornos é \(\rho = -0{,}3\). (a) Calcule o retorno e a variância da carteira para \(w = 0{,}5\). (b) Encontre o peso \(w^*\) que minimiza a variância. (c) Compare o desvio padrão da carteira de variância mínima com os desvios individuais.

    **Dados:** \(\mu_1 = 0{,}12\), \(\sigma_1 = 0{,}20\), \(\mu_2 = 0{,}08\), \(\sigma_2 = 0{,}15\), \(\rho = -0{,}3\).

    **Resolução:**

    **Passo 1 — Carteira igualmente ponderada (\(w = 0{,}5\))**

    \[
    \mu_p = 0{,}5 \times 0{,}12 + 0{,}5 \times 0{,}08 = 0{,}10 = 10\%
    \]

    \[
    \sigma_p^2 = (0{,}5)^2(0{,}20)^2 + (0{,}5)^2(0{,}15)^2 + 2(0{,}5)(0{,}5)(-0{,}3)(0{,}20)(0{,}15)
    \]

    \[
    = 0{,}01 + 0{,}005625 + (-0{,}0045) = 0{,}011125
    \]

    \[
    \sigma_p = \sqrt{0{,}011125} = 0{,}1055 = 10{,}55\%
    \]

    **Passo 2 — Peso de variância mínima**

    \[
    w^* = \frac{\sigma_2^2 - \rho\sigma_1\sigma_2}{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}
    \]

    \[
    = \frac{0{,}0225 - (-0{,}3)(0{,}20)(0{,}15)}{0{,}04 + 0{,}0225 - 2(-0{,}3)(0{,}20)(0{,}15)} = \frac{0{,}0225 + 0{,}009}{0{,}0625 + 0{,}018} = \frac{0{,}0315}{0{,}0805} = 0{,}3913
    \]

    **Passo 3 — Variância mínima e comparação**

    \[
    \sigma_p^2(w^*) = (0{,}3913)^2(0{,}04) + (0{,}6087)^2(0{,}0225) + 2(0{,}3913)(0{,}6087)(-0{,}009)
    \]

    \[
    = 0{,}006125 + 0{,}008337 - 0{,}004288 = 0{,}010174
    \]

    \[
    \sigma_p(w^*) = \sqrt{0{,}010174} = 0{,}1009 = 10{,}09\%
    \]

    O retorno desta carteira: \(\mu_p(w^*) = 0{,}3913 \times 12\% + 0{,}6087 \times 8\% = 9{,}57\%\).

    **Resultado:**

    | Carteira | Retorno | Desvio padrão |
    |:---------|:--------|:-------------|
    | Ativo 1 puro | 12,00% | 20,00% |
    | Ativo 2 puro | 8,00% | 15,00% |
    | Igualmente ponderada | 10,00% | 10,55% |
    | Variância mínima | 9,57% | 10,09% |

    **Interpretação econômica:** A correlação negativa (\(\rho = -0{,}3\)) gera um forte benefício de diversificação. O desvio padrão da carteira de variância mínima (10,09%) é **menor** que o de ambos os ativos individuais — um resultado impossível quando \(\rho = 1\). Essa é a essência do resultado de Markowitz: combinando ativos com correlação imperfeita, um investidor brasileiro pode reduzir o risco total sem sacrificar proporcionalmente o retorno.

### 7.6.3 Flexibilidade e valor da opção

Seguros e diversificação lidam com riscos que já estão presentes. Mas e quando o agente pode **escolher o momento** de se expor ao risco? Existe valor em simplesmente esperar, observar como o mundo se desenrola e decidir depois? A resposta, surpreendentemente rica, é que sim — e esse valor pode ser substancial.

Manter opções abertas tem valor positivo sob incerteza. A possibilidade de adiar uma decisão irreversível até que nova informação se torne disponível é análoga a uma **opção real**, cujo valor cresce com a volatilidade do ambiente.

Formalmente, considere um agente que pode tomar uma decisão irreversível hoje ou esperar um período para obter informação adicional. Se o custo de esperar é baixo e a incerteza é alta, o **valor da opção de espera** pode ser substancial. Esse conceito, desenvolvido por Dixit e Pindyck (1994), tem aplicações importantes em decisões de investimento, exploração de recursos naturais e políticas públicas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Sob incerteza, a irreversibilidade cria um custo de oportunidade — agir hoje "mata" a opção de decidir melhor amanhã.

    **Pense assim:** Você recebeu uma proposta de emprego em outra cidade, mas espera uma resposta de um concurso público que sai em 30 dias. Aceitar agora é irreversível. Se a incerteza sobre o concurso é grande, o valor de esperar — mesmo perdendo um mês de salário — pode compensar. O VPL positivo da mudança não basta; ele precisa superar o valor da opção de espera.

    **Por que isso importa:** Esse raciocínio explica por que empresas adiam investimentos mesmo com VPL positivo, por que a Petrobras pode postergar a exploração do pré-sal quando o preço do petróleo é volátil, e por que políticas públicas irreversíveis merecem cautela extra.

A teoria das opções reais ganhou proeminência justamente porque o critério simples do valor presente líquido (VPL) — que é, no fundo, uma aplicação do critério do valor esperado — ignora a flexibilidade gerencial. Uma empresa que pode fechar uma mina durante períodos de baixo preço do minério e reabri-la quando os preços sobem possui uma opção de abandono e uma opção de reativação. Ambas têm valor positivo que não aparece num cálculo de VPL estático. No Brasil, projetos de energia elétrica (termoelétricas a gás, usinas hidrelétricas) e de exploração de petróleo no pré-sal são contextos nos quais o valor da flexibilidade operacional — a possibilidade de ajustar a produção conforme os preços variam — pode representar parcela substancial do valor total do empreendimento.

### 7.6.4 Informação

O último mecanismo para lidar com o risco não redistribui nem adia a incerteza — ele a **reduz diretamente**. A informação reduz a incerteza e permite decisões mais bem fundamentadas. O **valor da informação** pode ser definido como a diferença entre a utilidade esperada com e sem a informação. Para um agente avesso ao risco, informação completa é sempre (fracamente) valiosa.

Seja \(\theta\) o estado da natureza desconhecido e \(a\) a ação do agente. Sem informação, o agente maximiza \(E_\theta[u(a, \theta)]\). Com informação perfeita (observa \(\theta\) antes de agir), maximiza \(u(a^*(\theta), \theta)\) para cada realização. O **valor da informação perfeita** é:

\[
VI = E_\theta\left[\max_a u(a, \theta)\right] - \max_a E_\theta[u(a, \theta)]
\]

Pela desigualdade de Jensen aplicada ao operador \(\max\), temos \(VI \geq 0\): informação nunca tem valor negativo para um agente que pode ignorá-la. Informação **imperfeita** (um sinal correlacionado com \(\theta\)) também tem valor não negativo, calculado de forma análoga usando a atualização bayesiana das crenças.

O valor da informação tem aplicações diretas em contextos brasileiros. Uma empresa que considera expandir sua fábrica em Goiás pode contratar uma consultoria para avaliar a demanda regional — o valor da consultoria é exatamente o VI definido acima. Um agricultor que assina um contrato de venda antecipada de soja está, em parte, pagando para converter uma renda incerta em renda certa (comprando informação sobre o preço futuro via contrato). O governo que financia pesquisas climáticas para melhorar as previsões de seca no Nordeste está investindo em informação cujo valor é proporcional ao quanto essa informação permite melhorar as decisões de plantio e de ativação do Proagro.

Uma distinção importante é que o valor da informação depende de *quão* boa é a decisão sem ela. Se o agente já escolhe quase otimamente sem a informação adicional, o ganho é pequeno. Se a incerteza é grande e a decisão sem informação é muito sub-ótima, o valor pode ser enorme. Isso sugere que o retorno de investimentos em coleta e processamento de dados é maior em ambientes de alta incerteza — exatamente o caso do agronegócio brasileiro sujeito a variabilidade climática, oscilações cambiais e volatilidade de preços internacionais de commodities.

!!! box-mundo "Box Mundo 7.3 — Penetração global de seguros: como a aversão ao risco se traduz em mercados reais"

    **Contexto:** A Seção 7.6.1 demonstrou que um agente avesso ao risco contrata seguro total quando o prêmio é atuarialmente justo, e seguro parcial quando há carregamento positivo. Mas como essas previsões teóricas se manifestam na prática ao redor do mundo? A **taxa de penetração de seguros** — prêmios totais como proporção do PIB — é a medida-padrão utilizada pela indústria e por reguladores para avaliar o grau em que uma economia utiliza mecanismos formais de transferência de risco. As disparidades internacionais são enormes e revelam como fatores institucionais, culturais e de desenvolvimento econômico modulam a demanda por seguros prevista pelo modelo teórico.

    **Dados:** O *sigma* report da Swiss Re (2023) documenta que a penetração global de seguros em 2022 foi de 6,8% do PIB mundial, totalizando US$ 6,8 trilhões em prêmios. Porém, a variação entre países é dramática: o Reino Unido lidera com penetração de 14,5% do PIB, seguido pelos EUA (11,7%), França (9,3%) e Japão (8,2%). Em contraste, países em desenvolvimento apresentam penetração muito inferior: Brasil (3,8%), Índia (4,2%), Nigéria (0,4%) e Bangladesh (0,5%). A penetração em seguros de vida é especialmente baixa na África Subsaariana (média de 0,7% do PIB) e no Sul da Ásia (1,1%), contra 5,0% na Europa Ocidental. Segundo dados da OECD (*Insurance Statistics*, 2023), os gastos com seguros per capita variam de US$ 8.600 nos EUA e US$ 6.200 na Suíça a menos de US$ 20 em países como Paquistão e Mianmar. A Superintendência de Seguros Privados (Susep) reporta que, no Brasil, o seguro de automóvel é o ramo mais contratado (cerca de 30% dos veículos segurados), enquanto o seguro residencial cobre menos de 15% dos domicílios — refletindo tanto a parcela orçamentária do bem quanto a percepção de risco.

    **Análise:** As disparidades internacionais na penetração de seguros refletem a interação entre os fatores teóricos deste capítulo e as condições institucionais de cada país. Primeiro, a aversão ao risco (Seção 7.3) é necessária mas não suficiente: mesmo em países onde os agentes são avessos ao risco, a ausência de seguradoras com capacidade de *pooling*, a falta de dados atuariais confiáveis e os altos custos de transação elevam o carregamento \(\lambda\) a níveis que tornam o seguro inacessível ou não atrativo — como previsto pela Seção 7.6.1. Segundo, a **informação assimétrica** (Seção 7.8) — seleção adversa e risco moral — é mais severa em mercados com menor infraestrutura de monitoramento, o que explica por que o seguro agrícola e de saúde é particularmente raro em países em desenvolvimento. Terceiro, a renda per capita é um determinante fundamental: seguros são bens normais, e a elasticidade-renda da demanda por seguros é estimada entre 1,0 e 1,5 pela Swiss Re, indicando que o seguro é um bem de luxo relativo. Essa constatação conecta a teoria da demanda (Capítulo 5) à teoria da incerteza: a participação orçamentária de seguros cresce mais que proporcionalmente com a renda, o que explica a enorme lacuna de proteção (*protection gap*) nos países mais pobres e fundamenta o caso para intervenções públicas como o Proagro no Brasil e os microsseguros indexados discutidos no Box Mundo 7.2.

    **Fonte:** Swiss Re Institute (2023). *sigma No. 3/2023: World insurance: stirring satisfactory resilience amid turbulence*. Zurich: Swiss Re. OECD (2023). *Insurance Statistics*. Paris: OECD. Susep — Superintendência de Seguros Privados (2023). *Relatório de Análise e Acompanhamento dos Mercados Supervisionados*.

!!! box-mundo "Box Mundo 7.2 — Microsseguros em países em desenvolvimento"

    **Contexto:** A teoria dos seguros desenvolvida nesta seção pressupõe mercados de seguros funcionais — seguradoras com capacidade de *pooling* de riscos, consumidores informados e prêmios atuarialmente justos ou próximos disso. Nos países em desenvolvimento, contudo, centenas de milhões de pequenos agricultores, trabalhadores informais e microempreendedores enfrentam riscos severos (secas, enchentes, doenças, flutuações de preços) sem acesso a seguros tradicionais. O **microsseguro** — produtos de seguro de baixo custo e cobertura simplificada, desenhados para populações de baixa renda — surgiu como resposta a essa lacuna, e o **seguro indexado** (*index-based insurance*) representa sua variante mais inovadora.

    **Dados:** Na Índia, a ICICI Lombard lançou em 2003, em parceria com o Banco Mundial, um dos primeiros programas de seguro indexado climático em larga escala: o produto pagava indenizações automaticamente quando a precipitação pluviométrica medida por estações meteorológicas caía abaixo de um limiar pré-definido, eliminando a necessidade de vistoria individual. Cole et al. (2013, *Quarterly Journal of Economics*) estudaram a adoção desse seguro em Gujarat e Andhra Pradesh e encontraram que a demanda é altamente sensível ao preço, à liquidez dos agricultores e à confiança na seguradora — mas também que a simples provisão de informação financeira eleva substancialmente a adesão. Nas Filipinas, Karlan et al. (2014) mostraram que o acesso a seguro indexado contra tufões induziu agricultores a investir em culturas de maior retorno (e maior risco), elevando a renda esperada em 16%. Na África Subsaariana, o programa *R4 Rural Resilience Initiative* do Programa Mundial de Alimentos cobria, até 2022, mais de 90.000 agricultores em Etiópia, Senegal, Malaui e Zâmbia com seguros indexados vinculados a programas de trabalho comunitário.

    **Análise:** O seguro indexado resolve parcialmente dois problemas clássicos da informação assimétrica que veremos na Seção 7.8: o **risco moral** (o agricultor segurado não reduz esforço porque a indenização depende do índice climático, não da colheita individual) e a **seleção adversa** (o preço é baseado em dados meteorológicos observáveis, não em informação privada do segurado). Porém, introduz um novo problema — o **risco de base** (*basis risk*): a discrepância entre a perda real do agricultor e o que o índice climático indica. Se chove pouco na estação meteorológica, mas o suficiente na fazenda específica do segurado, ele recebe uma indenização desnecessária; na situação inversa, sofre perda sem cobertura. A persistência de baixas taxas de adesão em muitos programas de microsseguro — tipicamente entre 5% e 30% da população elegível — sugere que risco de base, desconfiança institucional e restrições de liquidez são barreiras tão importantes quanto o nível do prêmio.

    **Fonte:** Cole, S.; Giné, X.; Tobacman, J.; Topalova, P.; Townsend, R.; Vickery, J. (2013). "Barriers to Household Risk Management: Evidence from India." *American Economic Journal: Applied Economics*, 5(1), 104–135. Karlan, D.; Osei, R.; Osei-Akoto, I.; Udry, C. (2014). "Agricultural Decisions after Relaxing Credit and Risk Constraints." *Quarterly Journal of Economics*, 129(2), 597–652. World Food Programme (2022). *R4 Rural Resilience Initiative Annual Report*.
