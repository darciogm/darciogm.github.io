# Competição entre Plataformas e Economia da Atenção

## 21.4 Quando Só Há Espaço Para Um Rei: Competição entre Plataformas {#214}

### 21.4.1 Dinâmicas de winner-take-all

Nos contos de fadas digitais, há espaço para apenas um rei no trono — e os perdedores não ficam com o segundo lugar, ficam com o esquecimento (alguém lembra do Orkut? Do Google+?). A combinação de efeitos de rede, custos fixos elevados e custos marginais baixos gera uma pergunta central: os mercados digitais tendem inevitavelmente ao monopólio? A resposta, como costuma ser em economia, é "depende" — e depende de uma série de fatores que modulam a intensidade dos retornos crescentes.

O cenário extremo é o **winner-take-all** (WTA): um mercado em que os efeitos de rede são tão fortes que, em equilíbrio, apenas uma plataforma sobrevive. Formalmente, o WTA ocorre quando o benefício de rede \(f(n)\) na equação $(21.2)$ é suficientemente côncavo e a diferenciação entre plataformas é insuficiente para sustentar mais de um concorrente. O Google Search (mais de 90% do mercado global) e o WhatsApp no Brasil (mais de 95% de penetração) são exemplos que se aproximam do WTA.

Contudo, o WTA não é universal nos mercados digitais. Diversos mercados sustentam dois ou mais concorrentes — o transporte por aplicativo (Uber e 99 no Brasil, Uber e Lyft nos EUA), o comércio eletrônico (Mercado Livre, Amazon e Shopee no Brasil), e as redes sociais (Instagram, TikTok, YouTube). O que diferencia esses mercados daqueles que tombam para o monopólio?

### 21.4.2 Multi-homing versus single-homing

A chave está na distinção entre **single-homing** e **multi-homing**:

- **Single-homing**: o agente utiliza apenas uma plataforma (e.g., a maioria das pessoas usa apenas um sistema de mensagens principal).
- **Multi-homing**: o agente utiliza simultaneamente múltiplas plataformas (e.g., um restaurante pode estar cadastrado no iFood, Rappi e no Uber Eats ao mesmo tempo; um passageiro pode ter Uber e 99 no celular).

Quando ambos os lados do mercado fazem single-homing, os efeitos de rede são maximamente fortes e o mercado tende ao WTA. Quando pelo menos um lado faz multi-homing, a competição se torna viável: o lado que faz multi-homing tem acesso a todas as plataformas, reduzindo o poder de cada uma. Armstrong (2006) demonstra que, num mercado bilateral, a plataforma extrai maiores margens do lado que faz single-homing (que está "preso") e compete mais agressivamente pelo lado que faz multi-homing (que pode facilmente trocar).

!!! warning "Cuidado: participação de mercado não implica poder de mercado em plataformas"
    É tentador concluir que uma plataforma com 80% de participação de mercado possui poder de monopólio. Contudo, em mercados com multi-homing extensivo, a disciplina competitiva pode ser feroz mesmo com alta concentração aparente. Se os motoristas do Uber também dirigem pela 99, e os passageiros têm ambos os apps instalados, a concorrência por cada corrida é intensa — a "participação" de cada plataforma é volátil e pode mudar rapidamente. A análise antitruste em mercados digitais deve considerar não apenas a participação de mercado (métrica estática), mas também a facilidade de multi-homing (métrica dinâmica) e a contestabilidade do mercado (existência de concorrentes potenciais).

### 21.4.3 Envelopment de plataforma

Uma estratégia competitiva particularmente relevante em mercados digitais é o **envelopment de plataforma** (Eisenmann, Parker e Van Alstyne, 2011): uma plataforma dominante em um mercado utiliza sua base de usuários para entrar em mercados adjacentes, "envolvendo" plataformas rivais menores. O mecanismo funciona porque a plataforma incumbente já possui uma base de usuários (e os efeitos de rede associados), que pode alavancar para obter vantagem no mercado adjacente.

A Amazon é o caso paradigmático de envelopment sequencial:

1. **Livros** (1994): marketplace bilateral original.
2. **E-commerce geral** (2000s): expansão do marketplace para todos os produtos.
3. **Computação em nuvem** (AWS, 2006): aproveitamento da infraestrutura de TI desenvolvida para o marketplace.
4. **Streaming** (Prime Video, 2011): conteúdo como complemento para fidelizar assinantes Prime.
5. **Assistente de voz** (Alexa/Echo, 2014): ponto de entrada para compras e serviços.
6. **Saúde** (Amazon Pharmacy, 2020): alavancagem da base de clientes para novo mercado.
7. **IA generativa** (Bedrock, 2023): infraestrutura de IA como extensão do AWS.

Cada expansão gera novos efeitos de rede cruzados: mais serviços no ecossistema Amazon → mais assinantes Prime → mais vendedores no marketplace → mais dados para algoritmos de recomendação → mais compras.

!!! box-mundo "Box Mundo 21.3 — O Digital Markets Act da União Europeia"

    **Contexto:** A resposta regulatória mais ambiciosa ao poder de mercado das plataformas digitais é o *Digital Markets Act* (DMA) da União Europeia, que entrou em vigor em maio de 2023 e cujas obrigações substantivas passaram a valer em março de 2024. O DMA identifica plataformas com receita europeia superior a 7,5 bilhões de euros ou capitalização de mercado acima de 75 bilhões de euros como **gatekeepers** — porteiros digitais que controlam o acesso a mercados essenciais.

    **Dados:** Em setembro de 2023, a Comissão Europeia designou seis empresas como gatekeepers: Alphabet (Google), Amazon, Apple, ByteDance (TikTok), Meta (Facebook/Instagram/WhatsApp) e Microsoft. As obrigações incluem: proibição de auto-preferência (Google não pode privilegiar seus produtos nos resultados de busca), interoperabilidade de mensagens (WhatsApp deve permitir receber mensagens de outras plataformas), portabilidade de dados (usuários devem poder transferir seus dados), e proibição de combinar dados pessoais de diferentes serviços sem consentimento.

    **Análise:** O DMA representa uma mudança paradigmática na política antitruste: em vez de aguardar o dano ao consumidor para agir *ex post* (abordagem tradicional), impõe obrigações *ex ante* sobre plataformas que atingem determinados limiares. A exigência de interoperabilidade ataca diretamente o lock-in e os custos de troca discutidos na Seção 21.2.4, enquanto a proibição de auto-preferência visa limitar o envelopment da Seção 21.4.3. As multas por descumprimento podem chegar a 10% da receita global — até 20% em caso de reincidência. A eficácia do DMA ainda está sendo testada, mas ele já inspirou legislação similar no Japão (Transparency Act), na Coreia do Sul e na Índia.

    **Fonte:** European Commission (2023). Digital Markets Act — List of Designated Gatekeepers. Regulation (EU) 2022/1925.

!!! box-brasil "Box Brasil 21.4 — CADE e a antitruste digital: os casos Google, iFood e Mercado Livre"

    **Contexto.** O **CADE** (Conselho Administrativo de Defesa Econômica) enfrenta, desde 2019, o desafio de adaptar a análise antitruste tradicional aos mercados digitais — onde os conceitos de mercado relevante, poder de mercado e barreiras à entrada são radicalmente diferentes dos mercados "de tijolo".

    **Casos emblemáticos:**

    - **Google Shopping (Inquérito Administrativo 08012.010483/2011-94).** O CADE investigou se o Google favorecia seu próprio comparador de preços nos resultados de busca (auto-preferência). Em 2019, encerrou a investigação com um **acordo de cessação** (TCC): o Google se comprometeu a exibir links de concorrentes com igual destaque por 5 anos. A decisão foi mais branda que a da Comissão Europeia, que multou o Google em €2,4 bilhões pelo mesmo comportamento. A diferença reflete as ferramentas limitadas do CADE para quantificar danos em mercados de preço zero — como medir o "dano ao consumidor" quando o produto é gratuito?

    - **iFood e cláusulas de exclusividade (Processo 08700.004588/2020-47).** Em 2021, o CADE determinou que o iFood suspendesse cláusulas de exclusividade com restaurantes, que impediam a listagem em plataformas concorrentes (Rappi, Uber Eats). A análise usou o framework exato da Seção 21.4.2: a exclusividade forçava *single-homing* no lado dos restaurantes, reforçando o poder de mercado do iFood (com ~80% de market share em delivery). Ao proibir a exclusividade, o CADE habilitou *multi-homing*, reduzindo barreiras à entrada para plataformas rivais.

    - **Mercado Livre (atos de concentração múltiplos).** O CADE acompanha a estratégia de *envelopment* do Mercado Livre — marketplace + Mercado Pago (fintech) + Mercado Envios (logística) + Mercado Ads (publicidade) — monitorando se a integração vertical gera foreclosure de concorrentes. O paralelo com a Amazon (Seção 21.4.3) é direto.

    **Desafio analítico.** O CADE publicou em 2022 os **Cadernos do CADE: Concorrência em Mercados Digitais**, reconhecendo três dificuldades centrais: (i) definir mercado relevante quando o produto é gratuito e a "moeda" é atenção e dados; (ii) avaliar poder de mercado quando a participação é volátil e o multi-homing é extensivo; (iii) distinguir eficiência de conduta anticompetitiva quando os ganhos de escala são reais. A lição microeconômica: as ferramentas do Capítulo 15 (poder de mercado) e do Capítulo 16 (oligopólio) precisam ser adaptadas — não abandonadas — para a era digital.

    **Fonte:** CADE — *Cadernos do CADE: Concorrência em Mercados Digitais*, 2022. Tribunal do CADE — decisões disponíveis em [cade.gov.br](https://www.gov.br/cade).

---

## 21.5 Sua Atenção, Por Favor — Ela Vale Bilhões: Economia da Atenção e Publicidade {#215}

Abra seu celular e conte quantos aplicativos gratuitos você usa diariamente. Google, Instagram, WhatsApp, YouTube — nenhum cobra um centavo. Generosidade corporativa? Filantropia do Vale do Silício? Claro que não. As seções anteriores analisaram como plataformas conectam diferentes grupos de agentes e competem entre si. Resta, porém, uma pergunta fundamental: como plataformas que não cobram nada dos usuários geram receita? A resposta reside no recurso que elas *realmente* comercializam — não dados, não tecnologia, mas algo mais primitivo e escasso: a sua atenção.

### 21.5.1 Atenção como recurso escasso

A atenção humana é, em termos econômicos, um recurso **rival** e **escasso**: o tempo dedicado a assistir um vídeo no YouTube é tempo *não* dedicado a ler um livro, trabalhar ou conversar com a família. Essa rivalidade fundamental foi identificada por Herbert Simon, prêmio Nobel de 1978, em uma passagem célebre:

> "Numa sociedade rica em informação, a riqueza de informação implica pobreza de outra coisa: escassez daquilo que a informação consome. E o que a informação consome é bastante óbvio: a atenção dos seus receptores." (Simon, 1971)

A **economia da atenção** modela mercados em que plataformas competem pela atenção dos usuários, que é então "revendida" a anunciantes. Trata-se, essencialmente, de um **mercado bilateral** (Seção 21.3) em que:

- **Lado 1 (usuários)**: recebem conteúdo gratuito (ou subsidiado) em troca de sua atenção.
- **Lado 2 (anunciantes)**: pagam à plataforma pelo acesso à atenção dos usuários.

A "moeda" desse mercado é o **tempo de atenção** do usuário, e a plataforma é o intermediário que agrega, segmenta e vende essa atenção.

### 21.5.2 Modelo de mídia bilateral

Formalize o mercado de atenção como um modelo de mídia bilateral (Anderson e Coate, 2005). Uma plataforma de conteúdo (Google, YouTube, Instagram) atrai \(n_U\) usuários com conteúdo de qualidade \(q\), e vende espaço publicitário a \(n_A\) anunciantes.

A utilidade do usuário é:

\[
u_U = \underbrace{\beta \cdot q}_{\text{benefício do conteúdo}} - \underbrace{\gamma \cdot a}_{\text{custo da publicidade}} - p_U \label{eq:21.14} \tag{21.14}
\]

onde \(a\) é a quantidade de publicidade por unidade de conteúdo e \(\gamma > 0\) captura a **desutilidade da publicidade** — o "preço" que o usuário paga em aborrecimento. Note que \(p_U\) pode ser zero (modelo ad-supported); nesse caso, a publicidade é, implicitamente, o "preço" pago pelo usuário.

A disposição a pagar do anunciante por uma impressão publicitária é:

\[
w_A = \delta \cdot n_U \label{eq:21.15} \tag{21.15}
\]

onde \(\delta > 0\) captura o valor que cada impressão de anúncio, atingindo \(n_U\) usuários, tem para o anunciante. A plataforma cobra \(p_A\) por anúncio.

A plataforma maximiza:

\[
\pi = p_A \cdot a \cdot n_U + p_U \cdot n_U - C(q, n_U) \label{eq:21.16} \tag{21.16}
\]

No modelo ad-supported (\(p_U = 0\)), a plataforma enfrenta um trade-off entre receita publicitária e qualidade da experiência do usuário: mais publicidade (\(a\) maior) gera mais receita direta, mas reduz a utilidade do usuário (via \(\gamma \cdot a\)), causando perda de audiência (\(n_U\) menor). A quantidade ótima de publicidade equilibra essas duas forças.

### 21.5.3 "Grátis" é realmente grátis?

O modelo acima revela que serviços "gratuitos" como Google, Facebook e YouTube não são de fato gratuitos: o usuário "paga" com dois ativos:

1. **Atenção**: tempo dedicado a anúncios (\(\gamma \cdot a\) na equação \(\eqref{eq:21.14}\)).
2. **Dados pessoais**: informações sobre comportamento, preferências e localização, que permitem à plataforma segmentar a publicidade e cobrar mais dos anunciantes.

A análise de bem-estar é ambígua. Por um lado, o modelo ad-supported permite que consumidores de baixa renda acessem serviços de alta qualidade (Google Maps, Gmail, YouTube) que, se fossem pagos, seriam excludentes. Por outro, os custos ocultos — perda de privacidade, manipulação da atenção, viés algorítmico — podem superar os benefícios percebidos, especialmente quando os consumidores subestimam sistematicamente esses custos (viés comportamental, Capítulo 8).

!!! idea "Intuição Econômica"
    **Em uma frase:** Se você não está pagando pelo produto, *você* é o produto — mas a história é mais complicada do que essa frase sugere.

    **Pense assim:** O Google oferece busca gratuita, mapas gratuitos, e-mail gratuito. Em troca, coleta dados sobre suas buscas, localização e comunicações, que usa para direcionar anúncios. O "preço" que você paga é a exposição a publicidade e a cessão de dados pessoais. Mas há um benefício real: sem o modelo ad-supported, o Google cobraria pelo buscador — e muitos consumidores de baixa renda seriam excluídos. A questão de bem-estar não é se "grátis é exploração" ou "grátis é generosidade", mas se os consumidores compreendem adequadamente o preço implícito que estão pagando.

    **Por que isso importa:** A regulação de plataformas ad-supported (como a LGPD no Brasil e o GDPR na Europa, discutidos na Seção 21.6) busca garantir que os consumidores tenham informação suficiente sobre o "preço" implícito que pagam — uma aplicação direta da lógica de informação assimétrica do Capítulo 19.

!!! transversal "Conexão Transversal — Economia Comportamental (Cap. 8) × Economia Digital (Cap. 21): Quando o Viés é o Produto"

    A economia digital e a economia comportamental são frequentemente tratadas como subcampos separados da microeconomia. Isso é um erro. As plataformas digitais mais lucrativas do mundo são, em essência, **máquinas de exploração de vieses comportamentais** — e entender como elas funcionam exige combinar as ferramentas dos Capítulos 8 e 21 simultaneamente.

    ---

    **1. Design aditivo e desconto hiperbólico**

    O *scroll* infinito do TikTok, o autoplay do YouTube e as notificações push do Instagram não são acidentes de design — são aplicações engenhosas do desconto quasi-hiperbólico (Seção 8.5). O usuário *sabe* que deveria parar de assistir e estudar para a prova. Seu "eu futuro" pagará o preço. Mas o \(\beta < 1\) do modelo de Laibson garante que o prazer imediato do próximo vídeo (período \(t = 0\)) recebe peso desproporcional em relação ao custo do sono perdido (período \(t = 1\)).

    As plataformas não apenas *exploram* esse viés — elas o **amplificam**. O algoritmo de recomendação otimiza para *engagement* (tempo na plataforma), não para utilidade do usuário. Cada vídeo recomendado é calibrado para ser *marginalmente mais atraente* que o anterior, mantendo o usuário na zona onde o benefício marginal percebido do próximo vídeo excede o custo marginal percebido de ficar mais um minuto — enquanto o custo *real* (acumulado em sono, produtividade e saúde mental) é sistematicamente subestimado pelo viés do presente.

    Formalmente: se a utilidade do usuário ao assistir o \(k\)-ésimo vídeo é \(u(k)\) e o custo oportunidade acumulado é \(c(k)\), um agente com desconto exponencial pararia quando \(u(k) < c(k)\). Mas um agente com \(\beta < 1\) para apenas quando \(u(k) < \beta \cdot c(k)\) — ou seja, consome \(k^* > k^{**}\) vídeos, onde \(k^{**}\) é a quantidade que ele *gostaria de ter consumido* ex post. O design aditivo da plataforma equivale a escolher \(u(k)\) para maximizar \(k^*\) — o engagement — sabendo que \(\beta < 1\).

    **Referência:** Allcott, H.; Braghieri, L.; Eichmeyer, S.; Gentzkow, M. (2020). The welfare effects of social media. *American Economic Review*, 110(3), 629–676.

    ---

    **2. Aversão à perda e discriminação algorítmica de preços**

    A precificação dinâmica das plataformas (Uber surge pricing, preços personalizados no e-commerce) explora sistematicamente a **aversão à perda** (Seção 8.3). Quando o Uber mostra "preço 1,8× — a demanda está alta!", o passageiro enfrenta duas forças:

    - **Aversão à perda:** não pegar a corrida *agora* é percebido como "perder" a oportunidade (framing de perda, Seção 8.4). O \(\lambda > 1\) de Kahneman e Tversky amplifica o custo percebido de esperar.
    - **Viés do presente:** a espera é um custo *agora*; a economia de dinheiro é um benefício *futuro* (quando a tarifa baixar). Com \(\beta < 1\), o custo presente domina.

    Resultado: consumidores aceitam *surge pricing* a taxas que excederiam sua disposição a pagar em condições de decisão "fria" — exatamente a previsão do modelo de preferências dependentes de referência (Seção 8.3) combinado com o viés do presente.

    Plataformas de e-commerce vão além: usam dados comportamentais para estimar a **função de valor** individual de cada consumidor (ponto de referência, grau de aversão à perda) e personalizar preços de acordo. Um consumidor que sempre compra no mesmo horário, nunca compara preços e demonstra alta urgência revelada recebe preços mais altos — discriminação de preços de primeiro grau (Seção 15.4) alimentada por dados comportamentais.

    **Referência:** Dubé, J.-P.; Misra, S. (2023). Personalized pricing and consumer welfare. *Journal of Political Economy*, 131(1), 131–189.

    ---

    **3. Implicações para regulação**

    A interseção entre vieses comportamentais e poder de plataforma cria falhas de mercado que nenhum dos dois campos, isoladamente, diagnostica por completo:

    | Problema | Ferramenta do Cap. 8 | Ferramenta do Cap. 21 | Combinação |
    |:---------|:--------------------|:---------------------|:-----------|
    | Uso excessivo de redes sociais | Desconto hiperbólico (\(\beta < 1\)) | Efeitos de rede + lock-in | A plataforma *amplifica* o viés via design aditivo e custos de troca |
    | Aceitação de preços altos sob urgência | Aversão à perda (\(\lambda > 1\)) | Poder de mercado bilateral | A plataforma *explora* o viés via precificação dinâmica personalizada |
    | Cessão excessiva de dados pessoais | Viés do presente + inatenção | Assimetria de informação sobre uso de dados | O usuário subestima custos futuros de privacidade e supervaloriza o serviço gratuito imediato |
    | Compras por impulso (dark patterns) | Framing, saliência, default | Fricções de escolha como estratégia de design | O "botão de compra com 1 clique" explora a impulsividade; adicionar fricção (e.g., timer de 24h) é um nudge |

    A regulação eficaz precisa, portanto, ser **behaviorally informed** *e* **platform-aware**. O DMA europeu (Box Mundo 21.3) aborda o poder de plataforma mas ignora os vieses comportamentais; a LGPD brasileira protege dados pessoais mas não regula o design aditivo. Uma regulação completa exigiria algo como um "Nudge Digital Act" — regras sobre design de interface que limitem a exploração de vieses documentados.

    ---

    **Para refletir:** O TikTok afirma que seu algoritmo "dá ao usuário o que ele quer". Usando o modelo \((\beta, \delta)\) da Seção 8.5, argumente por que o que o usuário *quer* no momento \(t = 0\) (mais um vídeo) pode ser diferente do que ele *gostaria de querer* avaliado em \(t = -1\) (ter dormido cedo). Quem deveria ter autoridade para resolver esse conflito — o próprio usuário, a plataforma, ou o regulador?
