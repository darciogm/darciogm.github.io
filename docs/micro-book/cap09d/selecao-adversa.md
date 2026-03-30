# O Mercado dos Limões: Seleção Adversa

## 9d.5 O Mercado dos Limões: Seleção Adversa

Moral hazard é sobre o que o agente *faz* depois do contrato. Seleção adversa é sobre o que o agente *é* antes do contrato. A diferença: se o problema é que o motorista dirige mal *após* contratar o seguro, é moral hazard. Se o problema é que *quem procura seguro já é mau motorista*, é seleção adversa. Timing diferente, soluções diferentes. Confundir os dois é o erro mais clássico em provas de micro — e a distinção é sempre a mesma pergunta: ações ocultas (pós) ou tipos ocultos (pré)?

!!! definition "Seleção Adversa"
    Situação em que uma parte tem informação privada sobre suas próprias características *antes* de firmar um contrato, e a parte desinformada não consegue distinguir os tipos. Em equilíbrio, a parte desinformada oferece condições baseadas na qualidade *média* do pool, o que:

    1. **Atrai desproporcionalmente os tipos "ruins":** quem sabe que é de alto risco, baixa qualidade ou alta demanda tem mais incentivo para transacionar nessas condições.
    2. **Afasta os tipos "bons":** para quem é de baixo risco ou alta qualidade, o preço médio é desfavorável — eles pagam mais do que seu tipo justificaria.
    3. **Deteriora o pool:** a saída dos tipos bons piora a composição média, forçando preços ainda mais altos, numa espiral que pode culminar no colapso do mercado.

    A seleção adversa é um problema de *características ocultas* (antes do contrato), em contraste com o moral hazard, que é de *ações ocultas* (após o contrato). Formulação original: Akerlof (1970).

!!! info "🏅 Prêmio Nobel — George A. Akerlof e Joseph E. Stiglitz (2001)"

    **George A. Akerlof** (1940–presente) e **Joseph E. Stiglitz** (1943–presente) dividiram o Nobel de 2001 com Michael Spence, pelos trabalhos fundadores sobre mercados com informação assimétrica.

    **Akerlof:** Em "The Market for 'Lemons'" (1970), mostrou que informação assimétrica sobre qualidade pode levar ao colapso completo de mercados. O artigo foi rejeitado por três grandes revistas antes de ser publicado no *Quarterly Journal of Economics*[^akerlof-rejeicao] — ironia frequentemente citada como exemplo de seleção adversa no mercado editorial acadêmico.

    **Stiglitz:** Com Michael Rothschild, desenvolveu a teoria do equilíbrio em mercados de seguros competitivos com informação assimétrica (Rothschild e Stiglitz, 1976), mostrando que o equilíbrio de mercado — quando existe — envolve separação de tipos por menus de contratos, e que pode não existir equilíbrio pooling estável. Stiglitz também contribuiu para a teoria de screening em mercados de crédito e trabalho.

    **Conexão com este capítulo:** O trabalho conjunto desses três pesquisadores forma o núcleo teórico deste capítulo: Akerlof (seleção adversa), Spence (sinalização) e Stiglitz (screening e equilíbrio de mercados com informação assimétrica).

[^akerlof-rejeicao]: A saga de rejeições do paper dos limões é uma das melhores anedotas da profissão. A *American Economic Review* rejeitou-o por ser "trivial"; o *Journal of Political Economy* rejeitou-o por ser "incorreto" (o mercado não pode colapsar se os agentes forem racionais!); a *Review of Economic Studies* simplesmente não se interessou. Três décadas depois, o paper rendeu o Nobel. Se isso não é evidência de seleção adversa no mercado editorial — onde os referees não observam a qualidade do artigo com precisão e frequentemente rejeitam "pêssegos" — nada é. Akerlof provavelmente apreciou a ironia.

Akerlof ilustrou o mecanismo com o mercado de carros usados — o artigo que lhe valeu o Nobel de 2001.[^cheese-shop] O argumento é elegante: o vendedor sabe se o carro é confiável ("pêssego") ou defeituoso ("limão"). O comprador não sabe.

<iframe src="/micro-book/graficos/cap09d/selecao-adversa.html" title="Figura 9d.6 — Seleção adversa e market unraveling" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9d.6 — Market unraveling (Akerlof).** Ajuste o ganho de troca \(\alpha\) e observe o mercado colapsar iterativamente quando \(\alpha < 2\): a cada rodada, os vendedores de melhor qualidade saem, o preço cai, e mais vendedores saem. Com \(\alpha \geq 2\), o ganho de troca é suficiente para sustentar o mercado.
</div>

[^cheese-shop]: Os devotos de Monty Python reconhecerão a seleção adversa levada ao extremo no sketch do *Cheese Shop*. John Cleese entra em uma loja de queijos e tenta comprar queijo — qualquer queijo. O vendedor (Michael Palin) informa educadamente que não tem Cheddar, nem Stilton, nem Brie, nem Camembert, nem Gruyère, nem nenhum dos 40+ queijos solicitados. O comprador progressivamente desiste de cada opção, exatamente como no modelo de Akerlof os tipos bons progressivamente abandonam o mercado. No final, a loja não tem *nenhum* queijo — o market unraveling é completo. A diferença é que no modelo de Akerlof o colapso é endógeno (causado pela assimetria de informação); no Cheese Shop, é simplesmente uma loja de queijos sem queijos. Mas a frustração do comprador é idêntica. O preço que o comprador aceita pagar reflete a qualidade *média* do mercado. Mas, a esse preço, os vendedores de "pêssegos" (cujo carro vale mais do que o preço médio) saem do mercado. O que resta é predominantemente "limões". O comprador, antecipando isso, reduz seu preço de reserva. Mais "pêssegos" saem. O processo pode continuar até que o mercado colapse completamente — nenhuma transação ocorre, embora existam vendedores e compradores dispostos a negociar ao preço correto. A ineficiência é gerada inteiramente pela assimetria de informação, não por falhas no mecanismo de preços em si.

O mecanismo de desintegração do mercado (*market unraveling*) pode ser descrito em etapas formais. Considere um contínuo de qualidades \(q \sim U[0, 1]\), onde o vendedor conhece \(q\) e o comprador não. O valor do carro para o vendedor é \(v_S(q) = q\), e para o comprador é \(v_B(q) = \alpha q\) com \(\alpha > 1\) (o comprador valoriza mais). Se o comprador acredita que todos os tipos estão no mercado, o valor esperado é \(\alpha / 2\). Mas a esse preço, apenas vendedores com \(q \leq \alpha / 2\) aceitam vender. O comprador antecipa isso e revisa o valor esperado para \(\alpha \cdot E[q \mid q \leq \alpha / 2] = \alpha^2 / 4\). Vendedores com \(q > \alpha^2 / 4\) saem. O processo converge iterativamente: a cada rodada, o pior vendedor remanescente é o melhor da rodada anterior, e o preço que o comprador aceita pagar cai. Se \(\alpha < 2\), o mercado colapsa completamente — nenhuma transação ocorre. Quando \(\alpha \geq 2\) (ganho de troca suficientemente grande), o mercado sobrevive parcialmente, mas sempre com ineficiência: transações que beneficiariam ambas as partes não se realizam.

### Soluções para a seleção adversa

O mercado e o Estado desenvolveram respostas institucionais ao problema de Akerlof. Essas respostas podem ser classificadas conforme a parte que age para mitigar a assimetria informacional.

**Sinalização** (a parte informada age): o vendedor de um carro bom oferece garantia estendida, a empresa saudável distribui dividendos, o trabalhador qualificado investe em educação. A eficácia da sinalização depende da condição de single-crossing — o custo do sinal deve ser menor para o tipo bom.

**Screening** (a parte desinformada age): a seguradora oferece um menu de contratos com diferentes combinações de prêmio e franquia, desenhado para que cada tipo se auto-selecione revelando informação. O resultado fundamental de Rothschild e Stiglitz (1976) é que, em mercados competitivos, o equilíbrio — quando existe — é necessariamente separador: o tipo de baixo risco recebe cobertura incompleta (distorção downward) para impedir que o tipo de alto risco o imite. O tipo de alto risco recebe cobertura total ao prêmio atuarialmente justo. A distorção no contrato do tipo baixo é o preço da informação assimétrica.

**Certificação** (um terceiro age): agências de rating (Serasa, S&P, Fitch), laudos de vistoria (carros), selos de qualidade (Inmetro), e auditorias externas reduzem a assimetria ao produzir informação verificável sobre a qualidade do agente. O terceiro tem credibilidade porque sua receita depende da precisão — uma agência que sistematicamente dá ratings inflados perde reputação e clientes.

**Regulação** (o Estado age): seguros obrigatórios (como o extinto DPVAT), cobertura universal (SUS), e restrições sobre práticas de exclusão (como as regras da ANS) combatem a seleção adversa ao forçar todos os tipos a participar do pool. Quando o pool é obrigatório, não há autosseleção — o mecanismo de Akerlof é neutralizado. O custo é que os tipos de baixo risco subsidiam os de alto risco, o que é redistributivo (e pode ser socialmente desejável) mas gera uma ineficiência do lado da demanda.

!!! idea "Intuição Econômica"
    **O mercado dos limões (Akerlof, 1970):** Por que carros usados valem tão menos que carros novos, mesmo quando saem da concessionária com zero quilômetros?

    **A lógica:** Você compra um carro novo hoje. Amanhã, precisa vender. O comprador potencial sabe que carros usados são colocados à venda por dois motivos: o dono não gosta mais (nenhum problema) ou descobriu um defeito (problema!). Como o comprador não sabe qual é o caso, desconta o preço para se proteger do segundo cenário. Isso afasta os vendedores do primeiro tipo — que não conseguem preço justo — e reforça a suspeita do comprador. O resultado: mesmo carros perfeitamente bons valem menos no mercado de usados, simplesmente porque fazem parte de um pool onde "limões" existem.

    **A generalização:** O mesmo mecanismo opera em mercados de crédito (o tomador sabe mais sobre seu risco de inadimplência do que o banco), em seguros de saúde (o segurado sabe mais sobre sua saúde do que a seguradora) e em mercados de trabalho (o candidato sabe mais sobre sua produtividade do que o empregador). Em todos esses casos, a informação assimétrica faz com que o preço médio de equilíbrio seja "errado" para ambos os lados — caro demais para os tipos bons, barato demais para os ruins.

    **Por que isso importa para políticas públicas?** Quando a seleção adversa leva ao colapso de mercados com valor social positivo (como seguros de saúde para idosos ou crédito para pequenas empresas), há espaço para intervenção estatal que melhore o bem-estar de Pareto: seguro obrigatório, garantias públicas de crédito e regulação de screening.

### Desenho de mecanismos: o fio condutor

Sinalização, moral hazard e seleção adversa podem parecer problemas distintos, mas compartilham uma estrutura unificadora: em todos os casos, uma parte tem informação privada (sobre tipo ou sobre ação), e a eficiência depende de um **mecanismo** que induza a revelação ou o alinhamento de comportamento. O campo do *desenho de mecanismos* (*mechanism design*) — desenvolvido por Leonid Hurwicz, Eric Maskin e Roger Myerson (Nobel 2007) — formaliza essa ideia: dado um objetivo social (eficiência, maximização de receita, redistribuição), qual é o melhor conjunto de regras que pode ser implementado quando os agentes são estratégicos e informados? O **Princípio da Revelação** garante que, para qualquer mecanismo e equilíbrio, existe um mecanismo direto e equivalente em que os agentes reportam seus tipos verdadeiros. Esse resultado não resolve o problema — apenas mostra que podemos restringir a busca a mecanismos diretos e incentivo-compatíveis —, mas é a pedra angular da teoria moderna de contratos e leilões. O Capítulo 19 desenvolve essas ideias em maior profundidade; aqui, basta reconhecer que os contratos de seguro de Rothschild-Stiglitz, os sinais de Spence e os contratos de incentivo de Holmström são todos exemplos específicos de mecanismos desenhados para lidar com informação assimétrica.

No mercado de seguros, o mecanismo de Akerlof opera com especial virulência. Considere um mercado de planos de saúde individual: quem sabe que tem histórico familiar de doenças graves, hábitos de vida prejudiciais à saúde ou condições preexistentes tem muito mais incentivo para comprar um plano abrangente a qualquer preço razoável. A seguradora, não podendo observar esses fatores com precisão, precifica pela média — e isso afasta as pessoas jovens e saudáveis, que percebem o plano como caro para seu risco efetivo. O pool que permanece é progressivamente mais doente, o custo médio sobe, o prêmio sobe, mais pessoas saudáveis saem. A espiral pode ser travada por regulação (cobertura obrigatória, que força todos a entrar no pool) ou por screening (menus de contratos com carências e coparticipações que induzem cada tipo a se revelar).

A [Tabela 9d.1](#tabela-9d-1) resume os mecanismos de mitigação:

<a id="tabela-9d-1"></a>

| Mecanismo | Exemplo | Quem age |
|:----------|:--------|:---------|
| **Sinalização** | Garantia do vendedor (carro usado) | Parte informada |
| **Screening** | Menu de contratos (seguro com franquias) | Parte desinformada |
| **Certificação** | Rating de crédito (Serasa, S&P) | Terceiro |
| **Regulação** | Seguro obrigatório (DPVAT) | Estado |

<div class="caption-obj" markdown>
**Tabela 9d.1 — Mecanismos de mitigação da seleção adversa.**
</div>

---

!!! box-brasil "Box Brasil — Seleção adversa nos planos de saúde individuais (ANS)"
    O mercado brasileiro de planos de saúde individuais é um dos exemplos mais documentados de seleção adversa em economia aplicada. A Lei 9.656/1998 e a criação da **ANS** (Agência Nacional de Saúde Suplementar) em 2000 foram, em larga medida, respostas regulatórias ao colapso desse mercado que a teoria de Akerlof prediz.

    **O problema pré-ANS**

    Antes da regulação, operadoras podiam recusar cobertura para doenças preexistentes, excluir beneficiários que se tornavam custosos e diferenciar prêmios livremente por histórico médico. O resultado teórico é exatamente o previsto pelo modelo de seleção adversa: planos individuais tornaram-se proibitivamente caros para quem mais precisava deles, e acessíveis apenas para quem menos precisava — exatamente o inverso do papel social do seguro.

    **Mecanismos regulatórios da ANS e sua lógica econômica**

    | Instrumento regulatório | Problema que mitiga | Mecanismo teórico |
    |:------------------------|:--------------------|:------------------|
    | Cobertura obrigatória (rol mínimo) | Seleção adversa por exclusão de cobertura | Obriga o pool a ser heterogêneo |
    | Proibição de cancelamento unilateral | Seleção adversa dinâmica | Impede exclusão dos tipos "ruins" após revelação do tipo |
    | Carência (período de espera) | Seleção adversa por doenças preexistentes | Screening implícito: quem tem condição preexistente revela tipo ao tentar acionar imediatamente |
    | **Portabilidade de carências** (RN 438/2018) | Moral hazard de aprisionamento (*lock-in*) | Reduz custo de migração, aumentando concorrência |
    | Variação por faixa etária limitada (máx. 6x entre faixa 1 e 10) | Seleção adversa de idosos | Subsídio cruzado entre jovens e idosos |

    **A portabilidade de carências** merece atenção especial: ao permitir que o beneficiário transfira seu histórico de carências cumpridas ao migrar de operadora, a ANS reduziu o *lock-in* que antes aprisionava beneficiários doentes (que precisavam da cobertura e não podiam sair sem recumprir carências). Economicamente, isso aumenta a concorrência entre operadoras sem agravar a seleção adversa — um avanço regulatório que usa a teoria dos contratos para resolver simultaneamente dois problemas de informação assimétrica.

    **Evidência:** O mercado de planos individuais encolheu de ~12 milhões de beneficiários no início dos anos 2000 para ~8–9 milhões em 2023, mesmo com crescimento da renda. O crescimento ocorreu nos planos coletivos por adesão (onde o grupo funciona como mecanismo de pooling), confirmando que a seleção adversa continua sendo uma força poderosa no segmento individual.

    **Fonte:** ANS, Caderno de Informação da Saúde Suplementar; RN ANS 438/2018.

---

!!! box-brasil "Box Brasil — Forward guidance do BCB: cheap talk ou sinalização crível?"
    O **Banco Central do Brasil** comunica suas intenções de política monetária por meio de comunicados, atas do Copom e o Relatório de Inflação. Essa comunicação pode ser analisada como um jogo de sinalização:

    **Estrutura do jogo**

    - O BCB (remetente) tem informação privada sobre o estado da economia e suas preferências.
    - O mercado (receptor) observa o comunicado e forma expectativas sobre a taxa Selic futura.
    - A ação do mercado (expectativas de inflação, curva de juros) afeta a eficácia da política monetária.

    **Quando a comunicação é eficaz?**

    No framework de Crawford-Sobel, a eficácia depende do alinhamento de interesses:

    - Se o mercado acredita que o BCB tem viés inflacionário (interesses desalinhados), a comunicação é parcialmente descontada → equilibrium com partição grosseira.
    - Se o BCB tem credibilidade (autonomia institucional, meta de inflação bem definida), a comunicação é quase revelação completa.

    **Evidência recente**: A autonomia formal do BCB (LC 179/2021) aumentou a credibilidade — evidenciada pela redução da volatilidade da curva de juros em torno dos comunicados do Copom.

    **Fonte**: BCB, Relatório de Inflação; BACEN, Comunicados do COPOM.

---

!!! box-brasil "Box Brasil — Regulação de telecom: quando a Anatel não sabe os custos"
    A regulação de telecomunicações no Brasil enfrenta um problema clássico de informação assimétrica: a **Anatel** precisa fixar tarifas, mas não observa os custos verdadeiros das operadoras (Vivo, Claro, TIM).

    **O dilema do regulador (moral hazard)**

    Se a Anatel fixa a tarifa com base no custo reportado pela operadora, esta tem incentivo para inflar os custos (*cost padding*). Se fixa com base em um benchmark (*price cap*), a operadora tem incentivo para reduzir custos e embolsar a diferença.

    **Mecanismos regulatórios brasileiros**

    | Mecanismo | Período | Lógica teórica |
    |:----------|:--------|:---------------|
    | Rate-of-return | até 2005 | Sem incentivo a eficiência (moral hazard) |
    | Price cap (IST-IGPM) | 2005–2019 | Incentivo a eficiência; risco de subinvestimento |
    | Revenue cap | 2019– | Equilíbrio entre incentivos e investimento |

    A transição de rate-of-return para price cap é exatamente a resposta teórica ao problema de moral hazard: ao desvincular a tarifa do custo reportado, o regulador cria incentivos para a firma se tornar mais eficiente.

    **Fonte**: Anatel, Planos Gerais de Outorgas; OECD, Telecom Regulatory Reviews — Brazil.

---

!!! box-mundo "Box Mundo 9d.2 — Garantias, lemon laws e proteção ao consumidor: sinais contra limões"

    **Contexto:** O modelo de Akerlof prevê que mercados com informação assimétrica sobre qualidade podem colapsar — mas na prática, mercados de carros usados existem e movimentam trilhões de dólares globalmente. Uma das razões é que vendedores e legisladores desenvolveram mecanismos de sinalização e proteção que mitigam o problema dos limões: garantias oferecidas pelo vendedor e leis que protegem o comprador (*lemon laws*).

    **Garantias como sinalização.** Uma garantia estendida é um sinal crível de qualidade porque satisfaz a condição de single-crossing: o custo esperado de honrar a garantia é muito menor para o vendedor de um carro bom do que para o vendedor de um limão. Se o carro é bom, a probabilidade de acionamento é baixa e o custo esperado é pequeno; se é um limão, o acionamento é quase certo e o custo pode exceder o lucro da venda. Assim, apenas vendedores de carros bons oferecem garantias longas de forma sustentável — exatamente como no equilíbrio separador de Spence, onde o tipo bom investe em um sinal que o tipo ruim acha proibitivamente custoso.

    **Lemon laws nos EUA.** Todos os 50 estados americanos possuem alguma forma de *lemon law*, legislação que garante ao comprador de um veículo novo o direito de substituição ou reembolso caso o veículo apresente defeitos recorrentes dentro de um período especificado (tipicamente 1–2 anos ou 12.000–24.000 milhas). A Lei Magnuson-Moss (1975), federal, complementa as leis estaduais ao exigir que garantias sejam claramente redigidas e que fabricantes que ofereçam garantias cumpram obrigações mínimas. A FTC (Federal Trade Commission) estima que lemon laws cobrem aproximadamente 150.000 reclamações por ano nos EUA. O efeito econômico é duplo: (i) reduzem o custo do limão para o comprador, aumentando sua disposição a pagar e sustentando o mercado; (ii) criam incentivos para fabricantes investirem em qualidade, pois o custo de honrar lemon laws recai sobre quem produziu o defeito.

    **Proteção ao consumidor na UE.** A Diretiva 1999/44/CE (atualizada pela Diretiva 2019/771) garante uma garantia legal mínima de 2 anos para bens de consumo em todos os estados-membros. Diferentemente das lemon laws americanas (focadas em automóveis), a proteção europeia cobre qualquer bem de consumo. A inversão do ônus da prova durante os primeiros 12 meses (o vendedor deve provar que o defeito não existia na entrega) é um mecanismo de screening implícito: reduz o custo de reclamação para o consumidor de boa-fé e aumenta o custo para vendedores de produtos defeituosos.

    **No Brasil**, o Código de Defesa do Consumidor (1990) estabelece garantia legal de 30 dias para bens não duráveis e 90 dias para bens duráveis, complementada por garantias contratuais voluntárias dos fabricantes. No mercado automotivo, plataformas como iCarros e Webmotors passaram a oferecer laudos de vistoria veicular (cautelares) — um mecanismo de certificação por terceiros que reduz a assimetria informacional no mercado secundário. A Tabela FIPE funciona como um benchmark público de preços, facilitando a precificação mesmo sob informação imperfeita.

    **Dados:** O mercado global de carros usados movimentou aproximadamente US$ 1,5 trilhão em 2023 (Statista). Nos EUA, carros usados certificados (*certified pre-owned*, CPO) — que vêm com garantia estendida do fabricante — representam ~15% das vendas de usados e comandam um prêmio de preço de 5–10% sobre veículos não certificados, evidência direta do valor de mercado da sinalização via garantia.

    **Análise:** Lemon laws e garantias são soluções complementares ao problema de Akerlof. Garantias são sinais de mercado (parte informada age voluntariamente); lemon laws são regulação estatal (força todas as partes a internalizar o risco de limões). Juntas, elas impedem o colapso total do mercado previsto pelo modelo — mas não eliminam a ineficiência. Compradores ainda descontam preços de usados (o chamado *depreciation cliff* do primeiro ano), e mercados de carros usados em países com proteção ao consumidor fraca (como muitos países em desenvolvimento) sofrem de seleção adversa mais severa.

    **Fonte:** FTC, *Understanding Used Car Warranty Protection*; EU, Directive 2019/771; IBGE/DENATRAN, Frota de Veículos Automotores.

---

!!! box-mundo "Box Mundo 9d.3 — Remuneração de CEOs e o problema principal-agente: evidência internacional"

    **Contexto:** A remuneração de executivos de grandes corporações é um dos campos de aplicação mais visíveis e controversos da teoria do principal-agente. Os acionistas (principais) não podem observar diretamente o esforço e a qualidade das decisões dos CEOs (agentes); por isso, desenham contratos que vinculam a remuneração ao desempenho da empresa — stock options, bônus por lucro, ações restritas. A teoria de Holmström (1979) prevê que o contrato ótimo equilibra incentivos (alta sensibilidade da remuneração ao desempenho) e seguro (baixa variabilidade salarial), e que a parcela variável deve depender de indicadores informativos sobre o esforço do CEO.

    **Dados internacionais.** A razão entre a remuneração do CEO e a do trabalhador mediano (CEO pay ratio) varia dramaticamente entre países e ao longo do tempo:

    | País | CEO pay ratio (aprox., 2023) | Estrutura predominante |
    |:-----|:----------------------------|:-----------------------|
    | EUA | 344:1 | Stock options + ações restritas (~70% variável) |
    | Reino Unido | 120:1 | Bônus + ações (~55% variável) |
    | Alemanha | 65:1 | Salário fixo + bônus moderado (~40% variável) |
    | Japão | 50:1 | Salário fixo alto (~70% fixo) |
    | Brasil | 35–50:1 | Misto (salário + bônus; stock options em crescimento) |

    **Fonte:** Economic Policy Institute (EPI), 2023; Towers Watson Global CEO Pay Study; CVM (Brasil).

    Nos EUA, a razão CEO/trabalhador era de ~20:1 nos anos 1960, cresceu para ~60:1 nos anos 1990 e explodiu para mais de 300:1 após a difusão massiva de stock options nos anos 2000. A SEC (Securities and Exchange Commission) passou a exigir a divulgação do CEO pay ratio a partir de 2018 (Dodd-Frank Act, Seção 953b).

    **Análise pela teoria do principal-agente.** A remuneração variável elevada nos EUA é consistente com a teoria de Holmström: mercados de capitais líquidos e diversificados permitem que acionistas imponham risco elevado aos CEOs (que, por sua vez, exigem compensação pelo risco — o prêmio de risco é parte do custo de agência). No Japão, onde a cultura corporativa valoriza relações de longo prazo e a mobilidade entre empresas é menor, o salário fixo alto funciona como um contrato relacional (*implicit contract*): o CEO é incentivado pela perspectiva de manutenção do emprego e pela reputação dentro do keiretsu, não pela remuneração variável de curto prazo. A Alemanha, com seu sistema de codeterminação (*Mitbestimmung*, onde trabalhadores têm assento no conselho), impõe restrições institucionais que moderam a remuneração variável.

    O debate normativo é intenso. Bebchuk e Fried (2004), em *Pay Without Performance*, argumentam que a remuneração de CEOs nos EUA reflete não o contrato ótimo de Holmström, mas o poder de barganha do CEO sobre o conselho (*managerial power theory*): CEOs influenciam seus próprios contratos, capturando rendas que não correspondem ao esforço. A evidência empírica de Bertrand e Mullainathan (2001) mostra que CEOs são recompensados por aumentos de lucro que decorrem de fatores exógenos (como o preço do petróleo para empresas petrolíferas) — uma violação direta do Princípio da Informatividade de Holmström, que recomenda filtrar choques não informativos do contrato.

    No Brasil, a CVM (Comissão de Valores Mobiliários) regulamenta a divulgação da remuneração de administradores de empresas listadas (Instrução 480/2009), mas a transparência ainda é limitada comparada aos EUA. A cultura de remuneração variável em empresas brasileiras listadas na B3 cresceu significativamente nas últimas duas décadas, com adoção crescente de stock options e ações restritas — um movimento consistente com a profissionalização da governança corporativa e a influência do modelo anglo-saxão.

    **Fonte:** Bebchuk, Lucian A. e Fried, Jesse M. (2004). *Pay Without Performance: The Unfulfilled Promise of Executive Compensation*. Harvard University Press. Bertrand, Marianne e Mullainathan, Sendhil (2001). "Are CEOs Rewarded for Luck?" *Quarterly Journal of Economics*, 116(3), 901–932. Economic Policy Institute, "CEO Pay Has Skyrocketed 1,460% Since 1978" (2023).

---

??? code "R Interativo — Modelo de Spence: custo da sinalização e equilíbrio separador"
    Este box permite explorar o modelo de Spence variando os parâmetros de produtividade e custo da educação. Veja como o equilíbrio separador muda quando a diferença de custos entre tipos diminui.

    <iframe src="/micro-book/graficos/cap09/webr-spence.html" title="Figura 9d.1 — Modelo de Spence" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.1 — Modelo de Spence: equilíbrio separador.** Altere as produtividades e custos para ver o nível de educação mínimo que separa os tipos.
    </div>

---

??? code "R Interativo — Seleção adversa: simulação de mercado de seguros (Adams, 2025, Cap. 13)"
    Este box simula um mercado de seguros de saúde com tipos heterogêneos (risco alto/baixo). Veja como a seleção adversa pode levar ao colapso do mercado quando o prêmio é calculado pela média.

    <iframe src="/micro-book/graficos/cap09/webr-insurance.html" title="Figura 9d.2 — Mercado de seguros com seleção adversa" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.2 — Seleção adversa no mercado de seguros.** Varie a proporção de tipos de alto risco para ver quando o mercado colapsa. Baseado em Adams (2025, Cap. 13).
    </div>

---

Abrimos este módulo com uma observação simples: quando alguém age primeiro e os outros observam, a ação *fala*. O MBA de Spence, a garantia do carro usado, o contrato do seguro — em cada caso, a ação é mensagem, e o equilíbrio é uma conversa estratégica entre quem sabe e quem precisa adivinhar. Do PBE à seleção adversa, mapeamos as três faces da assimetria informacional: sinalização (o informado grita), moral hazard (o informado se esconde) e seleção adversa (o informado aparece demais).

*Informação assimétrica não é só teoria dos jogos — é o tecido do mercado. Os Capítulos 10–12 voltam à firma; o Capítulo 19 aprofunda contratos e mecanismos. And now for something completely different — a firma.*

---

## Visão Geral do Capítulo 9: Os Quatro Módulos

A tabela abaixo sintetiza os quatro módulos de teoria dos jogos, fechando o arco narrativo iniciado no Módulo 9a. Cada linha corresponde a uma combinação de timing (estático/dinâmico) e informação (completa/incompleta), com o conceito de equilíbrio correspondente e a aplicação-âncora.

| | **9a — Pedra, Papel, Nash** | **9b — Primeiro Você, Depois Eu** | **9c — Jogando no Escuro** | **9d — O Diploma É Caro** |
|:--|:--|:--|:--|:--|
| **Timing** | Estático (simultâneo) | Dinâmico (sequencial) | Estático (simultâneo) | Dinâmico (sequencial) |
| **Informação** | Completa | Completa | Incompleta | Incompleta |
| **Equilíbrio** | Nash (EN) | Perfeito em Subjogos (EPS) | Bayesiano de Nash (BNE) | Bayesiano Perfeito (PBE) |
| **Ideia central** | Melhor resposta mútua | Ameaças críveis | Otimização com tipos privados | Sinais e crenças |
| **Aplicação-âncora** | Oligopólio (Cournot/Bertrand) | Barganha, jogos repetidos | Leilões, desenho de mecanismos | Sinalização, moral hazard, seleção adversa |
| **Box Brasil** | CADE e cervejas | Guerra fiscal do ICMS | ANP e ANEEL | ANS e planos de saúde |
| **Monty Python** | — | Spanish Inquisition (indução retroativa) | Holy Hand Grenade (mecanismos) | Dead Parrot (cheap talk), Cheese Shop (market unraveling) |

A progressão dos módulos segue a taxonomia de Gibbons (1992): cada módulo relaxa uma hipótese e introduz o conceito de equilíbrio correspondente. O leitor que domina os quatro módulos está equipado para a análise de qualquer interação estratégica — de leilões de petróleo a negociações salariais, de cartéis a contratos de seguro.
