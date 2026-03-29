## 24.3 Economia das Mudanças Climáticas {#243}

### 24.3.1 A maior externalidade do mundo

Se as externalidades que analisamos até aqui — a fábrica que polui o rio, a chaminé que suja o ar do bairro — são como buracos no telhado de uma casa, as mudanças climáticas são o equivalente a uma rachadura estrutural no planeta inteiro. As mudanças climáticas representam, nas palavras de Nicholas Stern, "o maior fracasso de mercado que o mundo já viu". As características econômicas do problema são excepcionais:

1. **Externalidade global**: uma tonelada de \(\text{CO}_2\) emitida em Cubatão causa o mesmo dano climático que uma tonelada emitida em Xangai. Não há como "localizar" a poluição — o problema é inerentemente planetário.

2. **Horizonte intergeracional**: o \(\text{CO}_2\) persiste na atmosfera por séculos. As emissões de hoje causam danos que se estendem por gerações futuras que não participam das decisões atuais.

3. **Incerteza radical**: os modelos climáticos preveem aquecimento de 1,5°C a 4,5°C para uma duplicação da concentração de \(\text{CO}_2\), mas eventos de cauda (*tail risks*) — aquecimento de 6°C ou mais — não podem ser descartados.

4. **Irreversibilidade**: alguns impactos (extinção de espécies, derretimento de geleiras, elevação do nível do mar) são efetivamente irreversíveis em escalas de tempo humanas.

5. **Problema de ação coletiva**: como o clima é um bem público global (Capítulo 20), cada país tem incentivo para ser *free rider* — beneficiar-se das reduções alheias sem arcar com os custos.

Essas características fazem das mudanças climáticas um problema de externalidade *maximamente difícil*: global (não local), intertemporal (não estático), incerto (não determinístico), irreversível (não reversível) e com incentivos para carona (não cooperativo).

### 24.3.2 O custo social do carbono (SCC)

O **custo social do carbono** (SCC — *social cost of carbon*) é o conceito central da economia climática. Mede o dano econômico total (presente e futuro, em todo o mundo) causado pela emissão de uma tonelada adicional de \(\text{CO}_2\) hoje:

\[
\text{SCC} = \sum_{t=0}^{T} \frac{D_t(\Delta E)}{(1 + r)^t} \label{eq:24.6} \tag{24.6}
\]

onde \(D_t(\Delta E)\) é o dano marginal no período \(t\) causado por uma unidade adicional de emissão hoje, \(r\) é a taxa de desconto e \(T\) é o horizonte temporal (tipicamente centenas de anos).

O SCC é, em essência, o **imposto pigouviano ótimo** sobre carbono — o valor que, se cobrado por tonelada de \(\text{CO}_2\), internalizaria a externalidade climática e levaria a economia ao nível eficiente de emissões. É também a referência para análise de custo-benefício de qualquer política climática: uma regulação que reduz emissões a um custo por tonelada inferior ao SCC gera benefícios líquidos positivos.

As estimativas do SCC variam enormemente dependendo de três parâmetros cruciais: (i) a sensibilidade climática (quanto o aquecimento responde às emissões); (ii) a função de dano (quanto o aquecimento reduz o PIB); e (iii) a taxa de desconto. A estimativa do governo dos EUA (IWG, 2021) é de aproximadamente **US\$ 51 por tonelada de \(\text{CO}_2\)** (em dólares de 2020, taxa de desconto de 3%). Estimativas com taxas de desconto mais baixas podem ultrapassar US\$ 200/tCO₂.

!!! definition "Custo social do carbono (SCC)"
    O **custo social do carbono** é o valor presente dos danos econômicos futuros causados pela emissão de uma tonelada adicional de \(\text{CO}_2\). Equivale ao imposto pigouviano ótimo sobre carbono. A estimação do SCC requer um **modelo de avaliação integrada** (IAM) que combine modelos climáticos (relação emissões → aquecimento) com modelos econômicos (relação aquecimento → danos). As estimativas são extremamente sensíveis à taxa de desconto, à sensibilidade climática e à especificação da função de dano.

### 24.3.3 O modelo DICE de Nordhaus

William Nordhaus, Prêmio Nobel de 2018, desenvolveu o primeiro e mais influente modelo de avaliação integrada: o **DICE** (*Dynamic Integrated model of Climate and the Economy*). O DICE conecta quatro módulos:

1. **Módulo econômico**: um modelo de crescimento de Ramsey (Capítulo 18) que determina consumo, investimento e produção global como função do capital, trabalho e tecnologia.

2. **Módulo de emissões**: as emissões de \(\text{CO}_2\) são proporcionais à produção, reduzidas pela intensidade de carbono da economia e por investimentos em abatimento.

3. **Módulo climático**: converte emissões acumuladas em concentração atmosférica de \(\text{CO}_2\) e em aumento de temperatura, com base em modelos geofísicos simplificados.

4. **Módulo de danos**: traduz o aumento de temperatura em perda de PIB, via uma função de dano quadrática:

\[
\Omega(T) = \frac{1}{1 + \pi_1 T + \pi_2 T^2} \label{eq:24.7} \tag{24.7}
\]

onde \(T\) é o aumento de temperatura em relação ao nível pré-industrial e \(\pi_1, \pi_2 > 0\) são parâmetros calibrados. A fração do PIB perdida cresce mais que proporcionalmente com a temperatura.

O planejador social no modelo DICE maximiza o bem-estar intertemporal:

\[
W = \sum_{t=0}^{T} \frac{L(t) \cdot u(c(t))}{(1 + \rho)^t} \label{eq:24.8} \tag{24.8}
\]

onde \(L(t)\) é a população, \(c(t)\) é o consumo per capita, \(u(\cdot)\) é a utilidade (com aversão ao risco \(\eta\) na função CRRA: \(u(c) = c^{1-\eta}/(1-\eta)\)), e \(\rho\) é a taxa pura de preferência temporal.

A trajetória ótima de abatimento no modelo DICE de Nordhaus (2017) sugere uma **redução gradual** das emissões, começando com um imposto de carbono modesto (cerca de US\$ 35/tCO₂ em 2020) que cresce ao longo do tempo, atingindo aproximadamente US\$ 100/tCO₂ em 2050. A meta de temperatura ótima resultante é de cerca de 3,5°C de aquecimento até 2100 — bem acima da meta de 2°C do Acordo de Paris.

### 24.3.4 Stern vs. Nordhaus: o debate da taxa de desconto

O **Stern Review** (2007), encomendado pelo governo britânico, chegou a conclusões radicalmente diferentes: recomendou ação imediata e agressiva para limitar o aquecimento a 2°C, com investimento de 1–2% do PIB global em mitigação — muito mais do que o modelo DICE sugere. A diferença fundamental está na **taxa de desconto**.

Recorde do Capítulo 18 a equação de Ramsey para a taxa de desconto social:

\[
r = \rho + \eta \cdot g \label{eq:24.9} \tag{24.9}
\]

onde \(\rho\) é a taxa pura de preferência temporal (quanto "descontamos" o futuro simplesmente por ser futuro), \(\eta\) é a elasticidade marginal da utilidade do consumo (medida de aversão à desigualdade intergeracional), e \(g\) é a taxa de crescimento do consumo per capita.

| Parâmetro | Nordhaus | Stern |
|:----------|:---------|:------|
| \(\rho\) (preferência temporal) | 1,5% | 0,1% |
| \(\eta\) (aversão à desigualdade) | 2 | 1 |
| \(g\) (crescimento) | ~2% | ~1,3% |
| **\(r\) (taxa de desconto)** | **~5,5%** | **~1,4%** |

Com \(r = 5{,}5\%\), danos daqui a 100 anos têm valor presente de apenas 0,5% do valor nominal. Com \(r = 1{,}4\%\), o valor presente é 25% — 50 vezes maior. Essa diferença explica quase toda a divergência nas recomendações de política.

!!! idea "Intuição Econômica"
    **Em uma frase:** A taxa de desconto determina quanto valorizamos o futuro — e pequenas diferenças nesse parâmetro geram enormes divergências nas recomendações de política climática.

    **Pense assim:** Imagine que uma catástrofe climática causará um dano de R\$ 100 trilhões daqui a 100 anos. Quanto vale investir hoje para evitá-la? Com taxa de desconto de 5%, o valor presente é R\$ 760 bilhões — significativo, mas gerenciável. Com taxa de 1,4%, o valor presente é R\$ 25 trilhões — uma emergência planetária que justifica ação imediata e maciça. O dano futuro é o mesmo; o que muda é quanto nos importamos com as gerações futuras.

    **Por que isso importa:** O debate Nordhaus–Stern não é técnico — é fundamentalmente ético. Nordhaus adota uma abordagem "descritiva" (a taxa de desconto reflete o comportamento observado dos mercados financeiros). Stern adota uma abordagem "prescritiva" (é eticamente injustificável descontar o bem-estar de gerações futuras). Ambos estão certos dentro de suas premissas — e a escolha entre eles depende de valores, não de ciência.

### 24.3.5 O Acordo de Paris e as NDCs

O **Acordo de Paris** (2015) estabeleceu o framework internacional para ação climática:

- **Meta**: limitar o aquecimento global a "bem abaixo de 2°C" em relação ao nível pré-industrial, com esforços para limitá-lo a 1,5°C.
- **NDCs** (*Nationally Determined Contributions*): cada país define voluntariamente suas metas de redução de emissões. Não há mecanismo coercitivo — o acordo depende de pressão dos pares e revisão periódica.
- **Revisão quinquenal**: as NDCs são revisadas a cada 5 anos, com expectativa de "ambição crescente" (*ratchet mechanism*).

Do ponto de vista da teoria econômica, o Acordo de Paris é uma tentativa de resolver o problema de ação coletiva (Capítulo 20) através de um mecanismo de compromisso voluntário. A ausência de enforcement é sua maior fraqueza: as NDCs atuais, mesmo se plenamente cumpridas, levariam a um aquecimento de aproximadamente 2,5–2,8°C até 2100 — muito acima da meta declarada.

!!! box-mundo "Box Mundo 24.1 — O Acordo de Paris como jogo de bens públicos"

    **Contexto:** O Acordo de Paris (2015) é o principal instrumento internacional de combate às mudanças climáticas. Assinado por 196 países na COP21, estabelece a meta de limitar o aquecimento global a "bem abaixo de 2°C" (idealmente 1,5°C) em relação ao nível pré-industrial.

    **Dados:** As NDCs apresentadas pelos países antes da COP28 (2023) implicavam emissões globais de ~52 GtCO₂e em 2030 — quando o necessário para a meta de 1,5°C seria ~22 GtCO₂e. O "gap de emissões" (diferença entre NDCs e meta) permanece enorme. Os 10 maiores emissores (China, EUA, Índia, UE, Rússia, Japão, Brasil, Indonésia, Irã, Canadá) respondem por ~70% das emissões globais.

    **Análise:** Formalmente, a mitigação climática é um jogo de bens públicos com \(N \approx 200\) jogadores (países). Como vimos no Capítulo 20, o equilíbrio de Nash de um jogo de contribuição voluntária prevê subprovisão — cada país contribui menos do que o ótimo coletivo porque internaliza apenas sua fração \(1/N\) do benefício global. O Acordo de Paris tenta superar esse equilíbrio ineficiente por meio de transparência (cada país publica suas NDCs), revisão periódica (pressão por ambição crescente) e normas sociais internacionais. Mas sem mecanismo coercitivo, os incentivos para *free riding* persistem — como evidenciado pelo gap crescente entre metas e ações.

    **Fonte:** UNEP. 2023. [*Emissions Gap Report 2023*](https://www.unep.org/resources/emissions-gap-report-2023). Nairobi: United Nations Environment Programme.

---

## 24.4 Mercados de Carbono {#244}

### 24.4.1 O EU ETS: o maior mercado de carbono do mundo

A teoria é bonita no quadro-negro — mas funciona na prática? A Europa decidiu descobrir. O **European Union Emissions Trading System** (EU ETS), lançado em 2005, é o maior e mais antigo mercado de carbono obrigatório do mundo. Cobre cerca de 40% das emissões de gases de efeito estufa da UE, incluindo setores de energia, indústria pesada e, desde 2012, aviação intra-europeia.

**Fases do EU ETS:**

- **Fase I (2005–2007)**: "aprendizado". Alocação excessiva de permissões → preço colapsou para zero em 2007. Lição: o cap precisa ser restritivo.
- **Fase II (2008–2012)**: coincidiu com a crise financeira → queda na atividade industrial → excesso de permissões → preço caiu para ~€3/tCO₂.
- **Fase III (2013–2020)**: introdução de leilão como método primário de alocação; Reserva de Estabilidade de Mercado (MSR) para absorver excesso de permissões.
- **Fase IV (2021–2030)**: meta de redução de 62% nas emissões cobertas (em relação a 2005); preço atingiu ~€90/tCO₂ em 2023; extensão gradual a setores de transporte e edificações.

A história do preço do EU ETS é instrutiva: de ~€30 em 2005, colapsou para €0 em 2007, flutuou entre €3 e €30 de 2008 a 2018, e disparou para €50–100 entre 2021 e 2023. Essa volatilidade ilustra o argumento de Weitzman: instrumentos de quantidade geram incerteza de preço, o que dificulta o planejamento de investimentos de longo prazo em descarbonização.

!!! box-mundo "Box Mundo 24.2 — O EU ETS: lições de três décadas de mercado de carbono"

    **Contexto:** O EU ETS cobre mais de 10.000 instalações industriais e de energia em 30 países (UE + EEE), responsáveis por cerca de 1,4 bilhão de toneladas de CO₂ por ano — aproximadamente 36% das emissões da UE.

    **Dados:** O preço das permissões (EUA — European Union Allowance) evoluiu: €22 (2005), €0,03 (2007), €3–8 (2012–2017), €25 (2019), €50 (2021), €90 (fev. 2023), €55–70 (2024). A receita acumulada de leilões desde 2013 ultrapassa €175 bilhões. As emissões cobertas pelo EU ETS caíram ~37% entre 2005 e 2023 — embora parte dessa redução se deva à crise financeira e à pandemia, análises econométricas (Bayer e Aklin, 2020) atribuem ~25–35% da redução ao próprio EU ETS.

    **Análise:** O EU ETS ilustra simultaneamente as virtudes e os desafios dos mercados de carbono. A virtude: quando o preço subiu para €50–100 (Fase IV), empresas aceleraram investimentos em energia renovável e eficiência energética — confirmando que o sinal de preço funciona. O desafio: a volatilidade extrema (de €0 a €90 em menos de duas décadas) mina a previsibilidade necessária para investimentos de descarbonização de longo prazo. A solução institucional — a Reserva de Estabilidade de Mercado (MSR), que automaticamente retira permissões excedentes do mercado — é um exemplo de design de mecanismo (Capítulo 9d) aplicado à política climática.

    **Fonte:** European Commission. 2024. *EU Emissions Trading System (EU ETS) data viewer*. European Environment Agency.

### 24.4.2 RGGI e outros mercados regionais

O **Regional Greenhouse Gas Initiative** (RGGI), lançado em 2009, foi o primeiro mercado de carbono obrigatório dos Estados Unidos. Cobre emissões do setor elétrico em 12 estados do nordeste americano (Connecticut, Delaware, Maine, Maryland, Massachusetts, New Hampshire, New Jersey, New York, Pennsylvania, Rhode Island, Vermont e Virginia).

Características distintivas do RGGI:

- **Foco estreito**: cobre apenas usinas termelétricas (>25 MW), diferentemente do EU ETS que abrange múltiplos setores industriais.
- **100% leilão**: todas as permissões são leiloadas (não distribuídas gratuitamente), gerando mais de US\$ 6,5 bilhões em receita acumulada (2009–2023).
- **Preço moderado**: o preço das permissões flutuou entre US\$ 2 e US\$ 15/tCO₂ — muito abaixo do EU ETS, mas com piso de preço (*price floor*) que evita o colapso.
- **Receita reciclada**: os estados investem a receita dos leilões em eficiência energética, energia renovável e assistência a consumidores de baixa renda.

Outros mercados regionais relevantes incluem o sistema da **Califórnia** (vinculado ao Quebec, Canadá), o **mercado nacional chinês** (lançado em 2021, o maior do mundo em cobertura de emissões), e o **Sistema de Comércio de Emissões da Coreia do Sul** (KETS).

No gráfico interativo abaixo, simule um mercado de carbono com múltiplas firmas. Ajuste o cap e observe como o mercado de permissões aloca o abatimento de forma custo-efetiva, comparado com regulação uniforme.

<iframe src="/micro-book/graficos/cap24/mercado-carbono.html" title="Figura 24.2 — Mercado de Carbono: Equilíbrio com N Firmas" class="graph-iframe" style="height:600px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 24.2 — Equilíbrio no Mercado de Carbono.** Firmas com custos marginais de abatimento diferentes negociam permissões. A firma mais barata abate mais e vende permissões; a mais cara abate menos e compra. O resultado: mesmo nível de abatimento total, mas a custo menor que regulação uniforme.
</div>

### 24.4.3 O mercado de carbono brasileiro: RenovaBio e CBIOs

O Brasil possui um instrumento de precificação de carbono singular: o **RenovaBio**, política nacional de biocombustíveis criada pela Lei nº 13.576/2017. O programa opera por meio de Créditos de Descarbonização (CBIOs):

1. **Emissão**: produtores de biocombustíveis (etanol, biodiesel, biometano) recebem CBIOs proporcionais ao volume de carbono evitado em relação ao combustível fóssil equivalente.
2. **Demanda**: distribuidoras de combustíveis fósseis são obrigadas a adquirir CBIOs em quantidade proporcional ao volume de gasolina e diesel vendido — cada CBIO representa uma tonelada de \(\text{CO}_2\) equivalente evitada.
3. **Mercado**: CBIOs são negociados na B3 (bolsa de valores brasileira), com preço determinado pela oferta e demanda.

!!! box-brasil "Box Brasil 24.1 — RenovaBio e o mercado de CBIOs"

    **Contexto:** O RenovaBio é a principal política de precificação de carbono do Brasil, focada no setor de combustíveis. Lançado operacionalmente em 2020, estabelece metas anuais de descarbonização para distribuidoras de combustíveis fósseis, que devem adquirir CBIOs no mercado para cumpri-las.

    **Dados:** Em 2023, foram emitidos ~39 milhões de CBIOs e aposentados ~36 milhões, a um preço médio de ~R\$ 90/CBIO (~US\$ 18/tCO₂e). A meta para 2024 era de ~39,6 milhões de CBIOs. Desde o início do programa, mais de 100 milhões de CBIOs foram emitidos. O Brasil também avança na regulamentação de um mercado regulado de carbono mais amplo (PL 412/2022, aprovado no Senado em 2023), que cobriria emissões industriais e de energia acima de 25.000 tCO₂/ano.

    **Análise:** O RenovaBio é um caso interessante de cap-and-trade setorial: o "cap" é a meta de descarbonização, e o "trade" ocorre via CBIOs negociados em bolsa. O preço relativamente baixo dos CBIOs (comparado ao EU ETS) reflete tanto a abundância de biocombustíveis no Brasil quanto a meta ainda modesta. O PL do mercado regulado de carbono, se implementado, criaria um sistema mais abrangente — mas enfrenta resistências da indústria e desafios de monitoramento, reportagem e verificação (MRV), especialmente para emissões do setor agropecuário.

    **Fonte:** ANP. 2024. *RenovaBio — Relatório anual*. Agência Nacional do Petróleo, Gás Natural e Biocombustíveis.

### 24.4.4 CBAM: mecanismo de ajuste de carbono na fronteira

O **Carbon Border Adjustment Mechanism** (CBAM) da União Europeia, que entrou em fase de transição em 2023, é uma inovação regulatória que conecta política climática e política comercial.

O problema que o CBAM resolve é o **vazamento de carbono** (*carbon leakage*): quando um país (ou bloco) impõe um preço de carbono ambicioso, suas indústrias ficam em desvantagem competitiva em relação a concorrentes em países sem precificação — criando incentivos para relocação de produção para jurisdições com regulação mais frouxa. O resultado paradoxal é que o preço de carbono não reduz emissões globais, apenas as desloca.

O CBAM funciona como uma **tarifa ambiental**: importadores de produtos cobertos (aço, alumínio, cimento, fertilizantes, eletricidade, hidrogênio) devem adquirir certificados CBAM proporcionais às emissões embutidas nos produtos importados. O preço do certificado é vinculado ao preço do EU ETS. Assim, o produto importado enfrenta o mesmo preço de carbono que o produto fabricado na UE.

!!! box-mundo "Box Mundo 24.3 — CBAM: a tarifa climática da Europa"

    **Contexto:** O Carbon Border Adjustment Mechanism (CBAM) da UE entrou em fase de transição em outubro de 2023, com aplicação plena prevista para 2026. Cobre importações de produtos intensivos em carbono: ferro e aço, alumínio, cimento, fertilizantes, eletricidade e hidrogênio.

    **Dados:** As importações cobertas pelo CBAM representam ~3,5% do valor total das importações da UE. O impacto estimado sobre países exportadores depende da intensidade de carbono de suas exportações. Para o Brasil, os setores mais afetados são ferro e aço (US\$ 3,2 bilhões em exportações para a UE em 2022), alumínio (US\$ 600 milhões) e fertilizantes (US\$ 200 milhões). Se o preço do EU ETS estiver em €70/tCO₂, o custo adicional para exportadores brasileiros de aço pode chegar a 5–8% do valor FOB — dependendo da intensidade de carbono da produção.

    **Análise:** O CBAM pode ser interpretado como uma internalização da externalidade de carbono na fronteira — impedindo que a diferença de preços de carbono entre jurisdições distorça o comércio internacional. Críticos argumentam que viola princípios da OMC (discriminação entre produtos baseada em processos de produção) e funciona como protecionismo disfarçado. Defensores respondem que, sem o CBAM, o preço de carbono europeu simplesmente desloca emissões para países sem precificação — piorando o problema climático global. Para o Brasil, o CBAM cria incentivos para implementar precificação doméstica de carbono: emissões já "precificadas" no país de origem podem ser descontadas do CBAM.

    **Fonte:** European Commission. 2023. *Carbon Border Adjustment Mechanism — Factsheet*. Brussels: European Commission.

### 24.4.5 Mercado voluntário de carbono e greenwashing: quando a sinalização falha

Além dos mercados regulados (EU ETS, RGGI, RenovaBio), existe um mercado **voluntário** de créditos de carbono, no qual empresas compram créditos para compensar suas emissões e reivindicar o rótulo "carbono neutro" ou "net zero". Esse mercado movimentou aproximadamente US$ 2 bilhões em 2023 (Ecosystem Marketplace, 2024) e é especialmente relevante para o Brasil, que concentra grande parte da oferta global de créditos de conservação florestal (REDD+).

O problema econômico é clássico — e conecta este capítulo diretamente ao Capítulo 19 (informação assimétrica). Um crédito de carbono é um **bem de crença** (*credence good*): o comprador não pode verificar diretamente se o crédito representa uma redução real de emissões. Isso cria um mercado de *limões* à la Akerlof:

- **Assimetria de informação:** O vendedor do crédito sabe se o projeto florestal é real, adicional e permanente. O comprador — tipicamente uma empresa que quer marketing verde — frequentemente não sabe.
- **Seleção adversa:** Créditos de baixa qualidade (projetos que existiriam de qualquer forma, ou florestas que não estavam realmente ameaçadas) são mais baratos de produzir. Se compradores não distinguem qualidade, os créditos baratos e ruins expulsam os caros e bons — o mecanismo clássico de Akerlof.
- **Greenwashing como sinalização falsa:** Empresas usam créditos baratos para *sinalizar* responsabilidade ambiental sem reduzir emissões reais. Isso é o oposto da sinalização de Spence (Cap. 9d): em vez de um sinal custoso que revela qualidade, é um sinal barato que *oculta* a falta de qualidade.

!!! idea "Intuição Econômica"
    **Em uma frase:** O mercado voluntário de carbono sofre de seleção adversa porque créditos ruins são indistinguíveis de créditos bons — e mais baratos de produzir.

    **Pense assim:** Imagine que "compensar carbono" fosse como comprar um carro usado. Alguns créditos são Corollas impecáveis (projetos rigorosos com adicionalidade verificada). Outros são limões (projetos que existiriam de qualquer forma, contabilidades infladas). Se o comprador não distingue, paga preço médio — e os Corollas saem do mercado.

    **Por que isso importa:** Sem mecanismos de certificação crível (Verra, Gold Standard) e regulação transparente, o mercado voluntário pode ser contraproducente: permite que empresas substituam reduções reais de emissões por compras baratas de créditos duvidosos, retardando a descarbonização efetiva.

!!! box-brasil "Box Brasil 24.2 — O Brasil no mercado voluntário de carbono: oportunidade e risco"

    O Brasil é um dos maiores ofertantes potenciais de créditos de carbono do mundo, graças à sua cobertura florestal (~60% do território) e ao potencial de projetos REDD+ na Amazônia. Em 2023, o país respondeu por ~15% dos créditos florestais emitidos globalmente no mercado voluntário (Ecosystem Marketplace).

    **Oportunidades:** O Artigo 6 do Acordo de Paris abre espaço para o comércio internacional de créditos de carbono. Com o avanço do SBCE (Sistema Brasileiro de Comércio de Emissões, PL 182/2024), o Brasil pode se posicionar como grande exportador de créditos florestais de alta qualidade — a preços significativamente acima dos R$ 90/CBIO do RenovaBio.

    **Riscos:** Investigações jornalísticas e acadêmicas (West et al., 2023, *Science*) revelaram que até 94% dos créditos de conservação florestal certificados pela Verra não representaram reduções reais de emissões. Isso mina a credibilidade do mercado inteiro e pode transformar o "ativo verde" brasileiro em um passivo reputacional.

    **Conexão com a teoria:** O caso é uma aplicação direta de seleção adversa (Cap. 19): sem informação verificável sobre adicionalidade, o mercado colapsa em direção à baixa qualidade. A solução passa por mecanismos de *screening* (certificação independente, monitoramento por satélite, registro blockchain) e regulação que imponha padrões mínimos — exatamente os mecanismos que Rothschild e Stiglitz (1976) preveem como resposta à assimetria informacional.

    **Fonte:** West, T.A.P. et al. (2023). "Action needed to make carbon offsets from tropical forest conservation work for climate change mitigation." *Science*, 381(6660), 873–877. Ecosystem Marketplace (2024). *State of the Voluntary Carbon Market*.
