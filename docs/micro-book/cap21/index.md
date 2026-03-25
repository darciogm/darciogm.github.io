# Capítulo 21 — Plataformas, Redes e Dados: Microeconomia da Era Digital

Por que o Google não cobra nada pelo seu buscador? Por que o WhatsApp se tornou praticamente universal no Brasil, mas concorrentes tecnicamente superiores fracassaram? Por que a Amazon pode vender livros abaixo do custo e, ainda assim, aumentar seu lucro? Essas perguntas — aparentemente desconexas — compartilham uma raiz microeconômica comum: os mercados digitais operam sob uma lógica fundamentalmente diferente daquela que governa os mercados de bens tradicionais analisados nos capítulos anteriores.

A economia digital é marcada por três características estruturais que, embora não sejam inteiramente novas, assumem proporções inéditas no ambiente online: **custos marginais próximos de zero** combinados com custos fixos elevados, **efeitos de rede** que tornam o valor de um produto dependente do número de usuários, e **mercados bilaterais** em que plataformas conectam dois ou mais grupos de agentes com interesses complementares. Cada uma dessas características desafia pressupostos centrais dos modelos competitivos estudados nos Capítulos 13 e 14, e gera estruturas de mercado que se assemelham mais ao monopólio (Capítulo 15) e ao oligopólio (Capítulo 16) — mas com mecanismos de poder de mercado e dinâmicas competitivas próprias.

Este capítulo constrói progressivamente o arcabouço analítico necessário para compreender esses mercados. Começamos pela natureza econômica dos bens de informação (Seção 21.1), passamos aos efeitos de rede e suas consequências para a dinâmica de adoção (Seção 21.2), formalizamos os mercados bilaterais à la Rochet e Tirole (Seção 21.3), analisamos a competição entre plataformas (Seção 21.4), discutimos a economia da atenção (Seção 21.5), examinamos a economia de dados e privacidade (Seção 21.6) e, por fim, conectamos leilões digitais ao desenho de mecanismos (Seção 21.7). O tratamento combina formalização rigorosa com exemplos reais e conexões explícitas com capítulos anteriores — especialmente os de teoria dos jogos (Capítulo 9), monopólio (Capítulo 15), oligopólio (Capítulo 16) e informação assimétrica (Capítulo 19).

A literatura acadêmica sobre economia digital é vasta e em rápida expansão. As referências centrais são Tirole (2023) para a análise de plataformas e regulação, Shapiro e Varian (1999) para a economia da informação, e Parker, Van Alstyne e Choudary (2016) para a estratégia de plataformas. O modelo de mercados bilaterais segue Rochet e Tirole (2003), que é discutido em detalhe na Seção 21.3 e na seção "Pesquisa em Ação". Para uma perspectiva regulatória europeia, ver Crémer, de Montjoye e Schweitzer (2019); para o contexto brasileiro, a análise do CADE (2020) sobre plataformas digitais é referência obrigatória.

---

## 21.1 Introdução: Por que a economia digital é diferente?

### 21.1.1 Bens de informação: custo marginal zero, custo fixo alto

A microeconomia tradicional — da teoria do consumidor (Capítulos 3–6) à firma competitiva (Capítulos 10–13) — assume implicitamente que os bens são **rivais**: se você consome uma maçã, eu não posso consumi-la. Os custos de produção, nesse mundo, são tipicamente convexos: produzir unidades adicionais custa cada vez mais. Nessas condições, o equilíbrio competitivo existe e é eficiente (Primeiro Teorema do Bem-Estar, Capítulo 14).

Bens de informação violam essa premissa de forma radical. Um software, um filme, uma música, uma notícia ou um algoritmo de busca têm custos de produção concentrados na **primeira cópia** — o custo fixo de desenvolvimento é alto, frequentemente na casa de bilhões de dólares. Porém, uma vez criada a primeira cópia, o custo de reprodução e distribuição digital é essencialmente **zero**. Formalmente:

\[
C(q) = F + c \cdot q, \quad \text{com } c \approx 0 \text{ e } F \gg 0
\label{eq:21.1} \tag{21.1}
\]

onde \(F\) é o custo fixo de desenvolvimento e \(c\) é o custo marginal de distribuição. Para um filme na Netflix, \(F\) pode ser de US\$ 200 milhões, mas \(c\) — o custo de transmitir uma cópia adicional via streaming — é de frações de centavo.

A implicação é profunda e conecta diretamente com a análise do monopólio natural do Capítulo 15: quando o custo médio \(CMe = F/q + c\) é decrescente para toda escala relevante, o mercado tende ao monopólio natural. A precificação pelo custo marginal (\(p = c \approx 0\)) é eficiente do ponto de vista alocativo, mas **não cobre os custos fixos**, tornando a produção financeiramente inviável. Esse é o dilema central dos mercados de informação: a eficiência alocativa requer preço zero, mas a viabilidade econômica requer preço positivo.

!!! definition "Bens de informação"
    Bens cujo valor reside em seu conteúdo informacional (software, música, dados, algoritmos), caracterizados por: (i) **custo fixo elevado** de produção da primeira cópia; (ii) **custo marginal de reprodução próximo de zero**; (iii) **não-rivalidade** no consumo (o uso por um agente não reduz a disponibilidade para outros). Bens de informação são, em essência, **bens públicos imperfeitos** — não-rivais, mas parcialmente excludentes (via DRM, patentes, senhas).

### 21.1.2 Não-rivalidade e não-excludibilidade

Recorde a classificação de bens do Capítulo 20:

| | Excludente | Não-excludente |
|:--|:-----------|:---------------|
| **Rival** | Bem privado (maçã) | Recurso comum (cardume) |
| **Não-rival** | Bem de clube (Netflix) | Bem público puro (defesa nacional) |

Bens digitais são **não-rivais** por natureza — a transmissão de um vídeo a um usuário não impede a transmissão a outro. Porém, são **parcialmente excludentes**: senhas, paywalls, criptografia e DRM (Digital Rights Management) permitem restringir o acesso. Isso os coloca na categoria de **bens de clube** — não-rivais, mas excludentes. A estratégia das empresas digitais consiste, em grande medida, em encontrar o nível ótimo de exclusão: cobrar demais exclui consumidores cujo benefício marginal excede o custo marginal (zero); cobrar de menos não cobre o custo fixo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Bens digitais custam muito para criar, mas quase nada para copiar — e é esse paradoxo que torna a economia digital tão diferente.

    **Pense assim:** Imagine que um padeiro gasta R$ 1 milhão para inventar uma receita de pão perfeita, mas depois consegue produzir cada pão adicional por R$ 0,001. Cobrar R$ 0,001 por pão é eficiente (todos que valorizam o pão acima desse preço consomem), mas o padeiro jamais recupera o investimento. A solução? Cobrar mais dos que valorizam muito (assinatura premium) e menos (ou nada) dos demais — exatamente o que Netflix, Spotify e Google fazem.

    **Por que isso importa:** A estrutura de custos dos bens digitais gera economias de escala tão extremas que mercados digitais tendem naturalmente ao monopólio ou oligopólio — tornando a análise do Capítulo 15 não uma exceção, mas a regra.

### 21.1.3 Economias de escala pelo lado da demanda

A segunda grande diferença da economia digital em relação à economia tradicional reside no **lado da demanda**, não da oferta. Nos modelos clássicos, a utilidade de um consumidor depende apenas de seu próprio consumo: \(u_i = u(x_i)\). No mundo digital, o valor de um produto para o consumidor \(i\) depende de **quantos outros consumidores** também o utilizam. Chamamos essa dependência de **efeitos de rede** — o tema da próxima seção.

Economias de escala pelo lado da oferta (custo médio decrescente) e pelo lado da demanda (valor crescente com o número de usuários) podem operar simultaneamente, criando um ciclo de retroalimentação positiva: mais usuários → mais valor → mais usuários → custos médios menores → preços menores → ainda mais usuários. Esse ciclo, quando presente, gera dinâmicas de *winner-take-all* que são raras em mercados tradicionais mas comuns em mercados digitais.

!!! box-mundo "Box Mundo 21.1 — A Lei de Moore e a economia de custo zero"

    **Contexto:** A estrutura de custos dos bens de informação não é apenas uma curiosidade teórica — ela se intensifica a cada geração tecnológica. A Lei de Moore (1965) observou que o número de transistores em um chip dobra aproximadamente a cada dois anos, reduzindo exponencialmente o custo de processamento. De modo análogo, o custo de armazenamento de dados caiu de US$ 300.000 por gigabyte em 1981 para menos de US$ 0,01 em 2024 — uma redução de 30 milhões de vezes em quatro décadas.

    **Dados:** Em 2024, o custo marginal de processar uma consulta no Google era estimado em menos de US$ 0,001. O custo de transmitir um filme em HD pela Netflix era de cerca de US$ 0,01–0,03. O custo de enviar uma mensagem pelo WhatsApp era de frações de milésimos de centavo. Em contraste, o custo fixo de desenvolvimento do buscador do Google acumula dezenas de bilhões de dólares; a Netflix investiu US$ 17 bilhões em conteúdo original em 2023; e a Meta investiu mais de US$ 36 bilhões em seu metaverso entre 2021 e 2024.

    **Análise:** Essa estrutura de custos cria **barreiras à entrada naturais** que dispensam as práticas anticompetitivas tradicionais. Um concorrente que queira desafiar o Google precisa investir bilhões em infraestrutura e algoritmos *antes* de atender o primeiro usuário — enquanto o custo marginal de servir mais um usuário para o Google é praticamente zero. A assimetria entre custo fixo irrecuperável (sunk cost) e custo marginal desprezível é a fonte primária do poder de mercado nas big techs, conectando diretamente com a análise de monopólio natural do Capítulo 15.

    **Fonte:** Nordhaus, W. D. (2007). Two Centuries of Productivity Growth in Computing. *Journal of Economic History*, 67(1), 128–159. Netflix Annual Report 2023.

---

## 21.2 Efeitos de Rede

### 21.2.1 Definição e classificação

O conceito de efeitos de rede é central para a compreensão dos mercados digitais. Um **efeito de rede** (ou **externalidade de rede**) ocorre quando o valor de um produto ou serviço para um usuário depende do número de outros usuários que também o utilizam. Diferentemente das externalidades discutidas no Capítulo 20, que tipicamente envolvem efeitos colaterais indesejados (poluição, congestionamento), os efeitos de rede são frequentemente **positivos**: mais usuários tornam o produto mais valioso para cada um deles.

!!! definition "Efeitos de rede diretos e indiretos"
    **Efeito de rede direto**: o valor do produto para um usuário aumenta diretamente com o número de outros usuários do *mesmo* produto ou serviço. Exemplo: um telefone é inútil se ninguém mais tiver um; quanto mais pessoas possuem telefones, mais valiosa é a rede para cada assinante.

    **Efeito de rede indireto** (ou **efeito de rede cruzado**): o valor do produto para os usuários de um lado do mercado aumenta com o número de participantes do *outro* lado. Exemplo: quanto mais desenvolvedores criam aplicativos para o iPhone (um lado), mais valioso o iPhone se torna para os consumidores (outro lado) — e vice-versa.

A distinção é importante porque os mecanismos econômicos diferem. Efeitos diretos operam *dentro* de um mesmo grupo (usuários de WhatsApp beneficiam outros usuários de WhatsApp); efeitos indiretos operam *entre* grupos distintos (desenvolvedores e usuários, compradores e vendedores), dando origem aos **mercados bilaterais** que formalizaremos na Seção 21.3.

### 21.2.2 Modelo formal: utilidade com efeitos de rede

Formalizemos os efeitos de rede diretos. Considere uma rede com \(N\) usuários potenciais. Cada agente \(i\) obtém utilidade:

\[
u_i = v + f(n) - p \label{eq:21.2} \tag{21.2}
\]

onde:

- \(v > 0\) é o valor intrínseco (standalone) do produto;
- \(f(n)\) é o **benefício de rede**, com \(f(0) = 0\), \(f'(n) > 0\) — a utilidade de rede cresce com o número de adotantes \(n\);
- \(p\) é o preço do produto.

O agente \(i\) adota a rede se e somente se \(u_i \geq 0\), ou seja:

\[
v + f(n) \geq p \label{eq:21.3} \tag{21.3}
\]

A condição $\eqref{eq:21.3}$ gera uma **complementaridade estratégica**: a decisão de adoção de cada agente depende de quantos outros adotam. Se mais pessoas aderem, o benefício \(f(n)\) aumenta, tornando a adesão mais atraente para quem ainda não aderiu — um feedback positivo que pode gerar dinâmicas explosivas de adoção.

### 21.2.3 Equilíbrio de adoção e massa crítica

Para simplificar, suponha que os agentes são heterogêneos no valor intrínseco: o agente \(i\) tem \(v_i\) distribuído uniformemente em \([0, \bar{v}]\). Em equilíbrio, o agente marginal é aquele com \(v_i = v^*\) tal que:

\[
v^* + f(n^*) = p \label{eq:21.4} \tag{21.4}
\]

e o número de adotantes é \(n^* = N \cdot (1 - v^*/\bar{v})\), ou seja, todos os agentes com \(v_i \geq v^*\) aderem. Substituindo na equação $\eqref{eq:21.4}$:

\[
v^* + f\!\left(N\left(1 - \frac{v^*}{\bar{v}}\right)\right) = p \label{eq:21.5} \tag{21.5}
\]

A equação $\eqref{eq:21.5}$ pode admitir **múltiplos equilíbrios**:

1. **Equilíbrio de adoção nula** (\(n^* = 0\)): ninguém adota porque ninguém adota — uma profecia autorrealizável. Se \(v^* = p\) e \(f(0) = 0\), qualquer agente com \(v_i < p\) não adere, e se \(p > v_{\max}\), ninguém adere.
2. **Equilíbrio de adoção baixa**: poucos adotantes, benefício de rede pequeno, equilíbrio frágil.
3. **Equilíbrio de adoção alta**: muitos adotantes, benefício de rede alto, equilíbrio estável.

A existência de equilíbrios múltiplos gera o conceito de **massa crítica**: o número mínimo de adotantes \(n_c\) acima do qual a dinâmica de adoção torna-se autossustentável — o equilíbrio "salta" da adoção baixa para a adoção alta.

!!! idea "Intuição Econômica"
    **Em uma frase:** Efeitos de rede criam um "efeito bola de neve" — depois de atingir uma massa crítica de usuários, a adoção se acelera sozinha.

    **Pense assim:** Imagine o primeiro usuário do WhatsApp no Brasil. Para ele, o aplicativo era inútil — não havia ninguém com quem conversar. À medida que amigos e familiares foram aderindo, o valor do WhatsApp cresceu exponencialmente. Em algum momento, a rede atingiu uma massa crítica em que *não ter* WhatsApp se tornou um custo social significativo. Hoje, com mais de 170 milhões de usuários no Brasil, o efeito de rede é tão forte que concorrentes com tecnologia superior (como o Telegram) lutam para conquistar uma fração do mercado.

    **Por que isso importa:** A massa crítica explica por que mercados digitais frequentemente "tombam" (tip) em favor de um único padrão — um fenômeno que economistas chamam de *tipping* — e por que plataformas investem pesadamente em crescimento inicial mesmo operando no prejuízo.

### 21.2.4 Tipping, lock-in e dependência de trajetória

A multiplicidade de equilíbrios descrita acima gera três fenômenos interligados:

**Tipping (tombamento):** Quando a competição entre redes rivais atinge um ponto de inflexão em que uma pequena vantagem inicial se amplia por meio do feedback positivo dos efeitos de rede, levando uma das redes a dominar o mercado e a outra a desaparecer. O exemplo clássico é a "guerra dos formatos" entre VHS e Betamax nos anos 1980: embora o Betamax fosse tecnicamente superior, o VHS atingiu a massa crítica primeiro (em parte por licenciamento mais amplo a fabricantes) e dominou o mercado.

**Lock-in (aprisionamento):** Uma vez que os usuários adotam uma plataforma e investem em ativos complementares (dados, contatos, aplicativos compatíveis), o custo de migrar para um concorrente torna-se proibitivo — mesmo que o concorrente seja superior. Formalmente, o custo de troca (*switching cost*) do agente \(i\) inclui:

\[
SC_i = \underbrace{c_{\text{dados}}}_{\text{perda de dados}} + \underbrace{c_{\text{rede}}}_{\text{perda de conexões}} + \underbrace{c_{\text{aprend.}}}_{\text{curva de aprendizado}} + \underbrace{c_{\text{compl.}}}_{\text{incompatibilidade}} \label{eq:21.6} \tag{21.6}
\]

**Dependência de trajetória (path dependence):** O resultado final — qual plataforma domina — depende não apenas de eficiência relativa, mas de **eventos iniciais** que podem ser aleatórios ou estratégicos. O teclado QWERTY é o exemplo canônico (embora controverso): adotado por razões mecânicas em máquinas de escrever do século XIX, persiste até hoje devido ao custo coletivo de migração, mesmo que layouts alternativos possam ser ergonomicamente superiores.

!!! tip "Conexão com Teoria dos Jogos"
    A multiplicidade de equilíbrios nos modelos de efeitos de rede é, formalmente, um **jogo de coordenação** (Capítulo 9a). Cada agente prefere adotar a mesma rede que os demais, mas não sabe *qual* rede os demais escolherão. Os equilíbrios de Nash correspondem à adoção universal de uma ou outra rede — e o problema de coordenação pode levar à adoção de uma rede inferior (ineficiência do equilíbrio), ecoando o dilema do prisioneiro e o resultado de que equilíbrios de Nash não são necessariamente Pareto-eficientes.

!!! box-mundo "Box Mundo 21.2 — O ecossistema de super-apps: WeChat e o modelo chinês"

    **Contexto:** Enquanto no Ocidente as funcionalidades digitais são distribuídas entre dezenas de aplicativos especializados (WhatsApp para mensagens, Uber para transporte, PayPal para pagamentos, Amazon para compras), a China desenvolveu o modelo do **super-app** — uma plataforma única que integra todas essas funcionalidades. O WeChat (微信, Weixin), da Tencent, é o exemplo paradigmático: com mais de 1,3 bilhão de usuários ativos mensais em 2024, funciona simultaneamente como rede social, sistema de pagamentos (WeChat Pay), plataforma de comércio eletrônico, serviço de transporte, aplicativo governamental e muito mais.

    **Dados:** Em 2024, cerca de 90% dos smartphones na China tinham o WeChat instalado. Os Mini Programs (mini-aplicativos dentro do WeChat) superavam 6 milhões, movimentando mais de US$ 400 bilhões em transações anuais. O WeChat Pay, junto com o Alipay (Ant Group), processava mais de 80% das transações de pagamento móvel na China, em um mercado que ultrapassou US$ 40 trilhões em 2023 — mais que Visa e Mastercard combinadas.

    **Análise:** O modelo do super-app ilustra a operação simultânea de múltiplos efeitos de rede indiretos: mais usuários atraem mais comerciantes que aceitam WeChat Pay, o que atrai mais usuários; mais usuários incentivam mais desenvolvedores de Mini Programs, que por sua vez atraem mais usuários. Cada nova funcionalidade integrada ao WeChat aumenta os custos de troca (lock-in), pois migrar significaria perder não apenas contatos, mas também métodos de pagamento, histórico de compras e acesso a serviços governamentais. A estratégia é um exemplo de **envelopment de plataforma** (Seção 21.4): a Tencent expandiu progressivamente o escopo do WeChat para abranger mercados adjacentes, dificultando a entrada de competidores especializados em qualquer segmento individual.

    **Fonte:** Tencent Holdings Annual Report 2023. iResearch (2024). China Third-Party Mobile Payment Market Report.

### 21.2.5 Bem-estar e política pública

Os efeitos de rede geram uma tensão entre eficiência estática e dinâmica que complica a análise de bem-estar. Por um lado, o domínio de uma única plataforma pode ser **eficiente** se os benefícios de rede são maximizados quando todos os usuários estão na mesma rede (a utilidade total é maior com uma rede universal do que com duas redes fragmentadas). Por outro lado, o poder de mercado resultante permite que a plataforma dominante cobre preços acima do custo marginal, restrinja a inovação e explore os dados dos usuários.

A intervenção regulatória enfrenta, portanto, um dilema: **fragmentar** a plataforma dominante (para aumentar a concorrência) pode **reduzir** o bem-estar se os efeitos de rede forem fortes. A solução mais discutida na literatura e na prática regulatória é exigir **interoperabilidade**: obrigar plataformas a permitir comunicação entre redes rivais (assim como operadoras de telefone são obrigadas a completar chamadas de outras operadoras). A interoperabilidade preserva os benefícios de rede ao mesmo tempo que reduz os custos de troca e, portanto, o poder de mercado.

<iframe src="../graficos/cap21/efeitos-rede.html" title="Figura 21.1 — Efeitos de Rede e Ponto de Virada" class="graph-iframe"></iframe>
<div class="caption-obj" markdown>
**Figura 21.1 — Efeitos de Rede e Ponto de Virada.** A curva mostra a disposição a pagar \(u(n) = v + \alpha\,n^{\beta}\) como função do número de usuários. O cruzamento com a linha de preço determina a massa crítica \(n^*\): abaixo dela a rede colapsa (armadilha de adoção); acima, a adoção decola rumo ao equilíbrio alto.
</div>

---

## 21.3 Mercados Bilaterais e Plataformas

### 21.3.1 O conceito de mercado bilateral

Muitos dos mercados mais importantes da economia digital não são mercados "unilaterais" tradicionais (onde uma firma vende a consumidores), mas **mercados bilaterais** (ou multilaterais) nos quais uma **plataforma** conecta dois ou mais grupos distintos de agentes, e o valor para cada grupo depende da participação do outro. Exemplos abundam:

| Plataforma | Lado 1 | Lado 2 | Externalidade cruzada |
|:-----------|:-------|:-------|:---------------------|
| Google Search | Usuários | Anunciantes | Mais usuários → mais valor p/ anunciantes |
| Uber | Passageiros | Motoristas | Mais motoristas → menor espera p/ passageiros |
| iFood | Consumidores | Restaurantes | Mais restaurantes → mais opções p/ consumidores |
| Mercado Livre | Compradores | Vendedores | Mais vendedores → mais variedade p/ compradores |
| iOS App Store | Usuários | Desenvolvedores | Mais desenvolvedores → mais apps p/ usuários |
| Visa/Mastercard | Portadores | Lojistas | Mais lojistas → mais utilidade p/ portadores |

O que diferencia um mercado bilateral de um simples intermediário é que a **estrutura de preços** importa, e não apenas o **nível total**. Cobrar R$ 10 do comprador e R$ 0 do vendedor gera um resultado diferente de cobrar R$ 5 de cada um, mesmo que a receita total da plataforma seja a mesma. Essa não-neutralidade da estrutura de preços é a assinatura econômica dos mercados bilaterais.

### 21.3.2 Modelo de Rochet e Tirole (2003)

O modelo seminal de Rochet e Tirole (2003) — que rendeu a Jean Tirole uma parte significativa do Prêmio Nobel de Economia de 2014 — formaliza os mercados bilaterais da seguinte maneira.

Considere uma plataforma monopolista que serve dois grupos: **compradores** (\(B\)) e **vendedores** (\(S\)). A plataforma cobra uma taxa de acesso \(p_B\) dos compradores e \(p_S\) dos vendedores. O número de participantes de cada lado é:

\[
n_B = D_B(p_B, n_S), \quad n_S = D_S(p_S, n_B) \label{eq:21.7} \tag{21.7}
\]

onde \(\partial D_B / \partial n_S > 0\) e \(\partial D_S / \partial n_B > 0\) capturam as **externalidades cruzadas**: mais vendedores atraem mais compradores, e vice-versa.

Para simplificar, suponha formas lineares. A utilidade de um comprador é:

\[
u_B = \alpha_B \cdot n_S - p_B \label{eq:21.8} \tag{21.8}
\]

onde \(\alpha_B > 0\) mede o benefício que cada comprador obtém de cada vendedor adicional. Simetricamente, a utilidade de um vendedor é:

\[
u_S = \alpha_S \cdot n_B - p_S \label{eq:21.9} \tag{21.9}
\]

Cada agente adere à plataforma se sua utilidade líquida é não-negativa. Se os agentes de cada lado são heterogêneos (com benefícios distribuídos uniformemente), a demanda de cada lado é:

\[
n_B = 1 - p_B + \alpha_B \cdot n_S, \quad n_S = 1 - p_S + \alpha_S \cdot n_B \label{eq:21.10} \tag{21.10}
\]

A plataforma maximiza lucro:

\[
\pi = (p_B - c_B) \cdot n_B + (p_S - c_S) \cdot n_S \label{eq:21.11} \tag{21.11}
\]

onde \(c_B\) e \(c_S\) são os custos marginais de servir cada lado.

Resolvendo o sistema $\eqref{eq:21.10}$ para obter \(n_B\) e \(n_S\) como funções dos preços, e otimizando $\eqref{eq:21.11}$, obtém-se que o **preço ótimo para o lado \(B\)** satisfaz:

\[
p_B^* = c_B + \frac{1}{2} - \frac{\alpha_S}{2} \cdot n_S^* \label{eq:21.12} \tag{21.12}
\]

A presença do termo \(-\frac{\alpha_S}{2} n_S^*\) é a novidade central: a plataforma reduz o preço cobrado dos compradores abaixo do que um monopolista unilateral cobraria, porque **cada comprador adicional gera uma externalidade positiva para os vendedores** (capturada pelo parâmetro \(\alpha_S\)). Quanto maior \(\alpha_S\), maior o benefício que os vendedores obtêm dos compradores, e mais a plataforma está disposta a subsidiar o lado dos compradores para atrair vendedores.

### 21.3.3 A lógica do subsídio cruzado

O resultado central do modelo é que a plataforma ótima tipicamente **subsidia um lado** do mercado (cobrando abaixo do custo, ou até oferecendo acesso gratuito) e **extrai lucro do outro**. A lógica é que o lado subsidiado gera externalidades positivas para o lado pagante, e a plataforma internaliza essa externalidade via preços assimétricos.

Qual lado subsidiar? A regra é subsidiar o lado cuja participação gera **maior externalidade para o outro lado** e/ou o lado com **maior elasticidade-preço da demanda**. Na prática:

- **Google**: gratuito para usuários (lado subsidiado), cobra de anunciantes (lado pagante). A participação de usuários é extremamente valiosa para anunciantes.
- **Cartões de crédito**: recompensas e cashback para portadores (lado subsidiado), taxas de intercâmbio para lojistas (lado pagante).
- **Uber**: preços subsidiados para passageiros em mercados novos (lado subsidiado), comissões sobre motoristas (lado pagante que também recebe incentivos).

!!! idea "Intuição Econômica"
    **Em uma frase:** Em plataformas, cobrar de todos pode ser pior do que dar de graça para um lado e cobrar caro do outro.

    **Pense assim:** Imagine uma casa noturna. Se cobrar R$ 100 de todos, pode ficar vazia. Se deixar mulheres entrarem de graça (lado subsidiado) e cobrar R$ 200 dos homens (lado pagante), pode lotar — porque a presença de mais pessoas de cada grupo atrai o outro. A "discriminação de preços" não é exploração; é a internalização de uma externalidade cruzada. O Google faz exatamente isso: a presença de bilhões de usuários torna o Google irresistivelmente atraente para anunciantes, que estão dispostos a pagar caro pela atenção desses usuários.

    **Por que isso importa:** A estrutura de preços de plataformas bilaterais viola a intuição de que "preço abaixo do custo marginal é predatório" (Capítulo 15, Seção sobre barreiras à entrada). Em mercados bilaterais, subsidiar um lado pode ser a estratégia ótima — e eficiente do ponto de vista social — porque internaliza a externalidade cruzada.

??? exercicio-resolvido "Exercício Resolvido 21.1 — Plataforma monopolista bilateral"
    **Enunciado.** Uma plataforma digital conecta compradores (B) e vendedores (S). A demanda de cada lado é dada por:

    \[
    n_B = 1 - p_B + 0{,}5 \cdot n_S, \quad n_S = 1 - p_S + 0{,}3 \cdot n_B
    \]

    O custo marginal de servir cada lado é \(c_B = c_S = 0{,}1\).

    (a) Resolva o sistema de demandas para expressar \(n_B\) e \(n_S\) como funções apenas de \(p_B\) e \(p_S\).

    (b) Determine os preços ótimos \(p_B^*\) e \(p_S^*\) que maximizam o lucro da plataforma.

    (c) Compare os preços ótimos com os que um monopolista cobraria se ignorasse as externalidades cruzadas (\(\alpha_B = \alpha_S = 0\)).

    **Resolução.**

    **Passo 1 — Resolver o sistema de demandas.**

    Substituindo \(n_B\) em \(n_S\):

    \[
    n_S = 1 - p_S + 0{,}3(1 - p_B + 0{,}5 \cdot n_S) = 1{,}3 - p_S - 0{,}3p_B + 0{,}15n_S
    \]

    \[
    0{,}85 \cdot n_S = 1{,}3 - p_S - 0{,}3p_B \implies n_S = \frac{1{,}3 - p_S - 0{,}3p_B}{0{,}85}
    \]

    Analogamente:

    \[
    n_B = 1 - p_B + 0{,}5 \cdot n_S = 1 - p_B + \frac{0{,}5(1{,}3 - p_S - 0{,}3p_B)}{0{,}85}
    \]

    \[
    n_B = 1 - p_B + \frac{0{,}65 - 0{,}5p_S - 0{,}15p_B}{0{,}85} = \frac{0{,}85 - 0{,}85p_B + 0{,}65 - 0{,}5p_S - 0{,}15p_B}{0{,}85}
    \]

    \[
    n_B = \frac{1{,}5 - p_B - 0{,}5p_S}{0{,}85}
    \]

    **Passo 2 — Lucro da plataforma.**

    \[
    \pi = (p_B - 0{,}1) \cdot n_B + (p_S - 0{,}1) \cdot n_S
    \]

    \[
    \pi = \frac{(p_B - 0{,}1)(1{,}5 - p_B - 0{,}5p_S) + (p_S - 0{,}1)(1{,}3 - p_S - 0{,}3p_B)}{0{,}85}
    \]

    **Passo 3 — Condições de primeira ordem.**

    \[
    \frac{\partial \pi}{\partial p_B} = 0: \quad 1{,}5 - 2p_B - 0{,}5p_S + 0{,}1 - 0{,}3(p_S - 0{,}1) = 0
    \]

    \[
    1{,}63 - 2p_B - 0{,}8p_S = 0 \tag{i}
    \]

    \[
    \frac{\partial \pi}{\partial p_S} = 0: \quad 1{,}3 - 2p_S - 0{,}3p_B + 0{,}1 - 0{,}5(p_B - 0{,}1) = 0
    \]

    \[
    1{,}45 - 0{,}8p_B - 2p_S = 0 \tag{ii}
    \]

    Resolvendo o sistema (i)–(ii):

    De (i): \(p_S = (1{,}63 - 2p_B)/0{,}8\).

    Substituindo em (ii):

    \[
    1{,}45 - 0{,}8p_B - 2 \cdot \frac{1{,}63 - 2p_B}{0{,}8} = 0
    \]

    \[
    1{,}45 - 0{,}8p_B - \frac{3{,}26 - 4p_B}{0{,}8} = 0
    \]

    \[
    1{,}16 - 0{,}64p_B - 3{,}26 + 4p_B = 0 \implies 3{,}36p_B = 2{,}1 \implies p_B^* \approx 0{,}625
    \]

    \[
    p_S^* = \frac{1{,}63 - 2(0{,}625)}{0{,}8} = \frac{0{,}38}{0{,}8} \approx 0{,}475
    \]

    **Passo 4 — Comparação com monopolista sem externalidades.**

    Se \(\alpha_B = \alpha_S = 0\), as demandas são independentes: \(n_B = 1 - p_B\), \(n_S = 1 - p_S\). O monopolista resolve:

    \[
    \max_{p_B} (p_B - 0{,}1)(1 - p_B) \implies p_B^{mono} = \frac{1 + 0{,}1}{2} = 0{,}55
    \]

    \[
    p_S^{mono} = 0{,}55
    \]

    **Resultado:** Com externalidades cruzadas, a plataforma cobra **mais** do lado dos compradores (\(p_B^* \approx 0{,}625 > 0{,}55\)) e **menos** dos vendedores (\(p_S^* \approx 0{,}475 < 0{,}55\)). Isso ocorre porque \(\alpha_B = 0{,}5 > \alpha_S = 0{,}3\): os compradores valorizam mais a presença de vendedores do que o inverso. Logo, a plataforma subsidia os vendedores (reduz \(p_S\)) para atrair mais deles, o que por sua vez atrai compradores que estão dispostos a pagar mais pela plataforma. A estrutura de preços assimétrica internaliza a externalidade cruzada.

### 21.3.4 Preço de Ramsey em mercados bilaterais

A regra de precificação ótima da plataforma bilateral pode ser expressa como uma **regra de Ramsey modificada**. Recorde que, no problema clássico de Ramsey (Capítulo 15), um monopolista regulado que precisa cobrir custos fixos deve desviar os preços do custo marginal proporcionalmente ao *inverso* da elasticidade-preço da demanda em cada mercado. Em mercados bilaterais, a regra é análoga, mas incorpora a externalidade cruzada:

\[
\frac{p_k^* - c_k}{p_k^*} = \frac{1}{\varepsilon_k} - \frac{\alpha_{-k} \cdot n_{-k}}{p_k^* \cdot \varepsilon_k} \label{eq:21.13} \tag{21.13}
\]

onde \(k \in \{B, S\}\), \(\varepsilon_k\) é a elasticidade-preço da demanda do lado \(k\), e \(\alpha_{-k}\) é a externalidade que o lado \(k\) gera para o outro lado. O segundo termo é o "desconto de externalidade": a plataforma reduz a margem no lado \(k\) na proporção da externalidade que esse lado gera.

!!! box-brasil "Box Brasil 21.1 — iFood, Uber e 99: plataformas bilaterais no cotidiano brasileiro"

    **Contexto:** O Brasil é um dos maiores mercados de plataformas digitais bilaterais do mundo. Em 2024, o iFood atendia mais de 60 milhões de pedidos por mês, conectando cerca de 55 milhões de consumidores a mais de 300 mil restaurantes, com uma frota de mais de 200 mil entregadores. A Uber Brasil tinha mais de 30 milhões de usuários ativos e 1 milhão de motoristas parceiros. A 99, adquirida pela chinesa DiDi, operava em mais de 3.000 cidades brasileiras.

    **Dados:** A estrutura de preços dessas plataformas ilustra perfeitamente a lógica do subsídio cruzado. O iFood cobra dos restaurantes parceiros uma comissão de 12% a 27% sobre o valor de cada pedido (lado pagante), enquanto frequentemente oferece cupons de desconto e frete grátis para consumidores (lado subsidiado). A Uber cobra uma comissão de 20–25% dos motoristas, mas subsidia corridas para passageiros com códigos promocionais, especialmente ao entrar em novas cidades. A 99 ofereceu durante anos corridas a R$ 0,99 em campanhas de conquista de mercado.

    **Análise:** Essas estratégias de "queima de caixa" para conquistar usuários — financiadas por capital de risco na casa dos bilhões — são racionais à luz do modelo de Rochet e Tirole: o investimento em atrair o lado subsidiado (consumidores) gera externalidades positivas para o lado pagante (restaurantes, motoristas), que está disposto a pagar comissões elevadas pela base de clientes que a plataforma acumula. O desafio regulatório é duplo: garantir que a competição entre plataformas beneficie ambos os lados (e não apenas o investidor) e proteger os trabalhadores de plataforma (entregadores e motoristas) cujas condições de trabalho são tema de intenso debate no Brasil.

    **Fonte:** iFood Report 2024. Uber Brasil — Relatório de Impacto Econômico 2023.

<iframe src="../graficos/cap21/plataforma-bilateral.html" title="Figura 21.2 — Precificação de Plataforma Bilateral" class="graph-iframe"></iframe>
<div class="caption-obj" markdown>
**Figura 21.2 — Precificação de Plataforma Bilateral.** O gráfico de barras compara os preços ótimos \(p_B^*\) e \(p_S^*\) cobrados pela plataforma a cada lado com o custo marginal \(c\). O lado que gera maior externalidade cruzada (\(\gamma\) mais alto) tende a ser subsidiado — recebendo preço abaixo do custo — enquanto o lado oposto paga mais.
</div>

---

## 21.4 Competição entre Plataformas

### 21.4.1 Dinâmicas de winner-take-all

A combinação de efeitos de rede, custos fixos elevados e custos marginais baixos gera uma pergunta central: os mercados digitais tendem inevitavelmente ao monopólio? A resposta depende de uma série de fatores que modulam a intensidade dos retornos crescentes.

O cenário extremo é o **winner-take-all** (WTA): um mercado em que os efeitos de rede são tão fortes que, em equilíbrio, apenas uma plataforma sobrevive. Formalmente, o WTA ocorre quando o benefício de rede \(f(n)\) na equação $\eqref{eq:21.2}$ é suficientemente côncavo e a diferenciação entre plataformas é insuficiente para sustentar mais de um concorrente. O Google Search (mais de 90% do mercado global) e o WhatsApp no Brasil (mais de 95% de penetração) são exemplos que se aproximam do WTA.

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

---

## 21.5 Economia da Atenção e Publicidade

As seções anteriores analisaram como plataformas conectam diferentes grupos de agentes e competem entre si. Resta, porém, uma pergunta fundamental: como plataformas que não cobram nada dos usuários geram receita? A resposta reside no recurso que elas *realmente* comercializam — a atenção.

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

1. **Atenção**: tempo dedicado a anúncios (\(\gamma \cdot a\) na equação $\eqref{eq:21.14}$).
2. **Dados pessoais**: informações sobre comportamento, preferências e localização, que permitem à plataforma segmentar a publicidade e cobrar mais dos anunciantes.

A análise de bem-estar é ambígua. Por um lado, o modelo ad-supported permite que consumidores de baixa renda acessem serviços de alta qualidade (Google Maps, Gmail, YouTube) que, se fossem pagos, seriam excludentes. Por outro, os custos ocultos — perda de privacidade, manipulação da atenção, viés algorítmico — podem superar os benefícios percebidos, especialmente quando os consumidores subestimam sistematicamente esses custos (viés comportamental, Capítulo 8).

!!! idea "Intuição Econômica"
    **Em uma frase:** Se você não está pagando pelo produto, *você* é o produto — mas a história é mais complicada do que essa frase sugere.

    **Pense assim:** O Google oferece busca gratuita, mapas gratuitos, e-mail gratuito. Em troca, coleta dados sobre suas buscas, localização e comunicações, que usa para direcionar anúncios. O "preço" que você paga é a exposição a publicidade e a cessão de dados pessoais. Mas há um benefício real: sem o modelo ad-supported, o Google cobraria pelo buscador — e muitos consumidores de baixa renda seriam excluídos. A questão de bem-estar não é se "grátis é exploração" ou "grátis é generosidade", mas se os consumidores compreendem adequadamente o preço implícito que estão pagando.

    **Por que isso importa:** A regulação de plataformas ad-supported (como a LGPD no Brasil e o GDPR na Europa, discutidos na Seção 21.6) busca garantir que os consumidores tenham informação suficiente sobre o "preço" implícito que pagam — uma aplicação direta da lógica de informação assimétrica do Capítulo 19.

---

## 21.6 Economia de Dados e Privacidade

### 21.6.1 Dados como bem econômico

A economia digital gera e consome quantidades colossais de dados. Em 2024, estimava-se que a humanidade produzia mais de 120 zettabytes de dados por ano — mais informação do que toda a informação acumulada na história da humanidade até o ano 2000. Mas qual é a natureza econômica dos dados?

Dados possuem características peculiares que não se encaixam perfeitamente na taxonomia tradicional de bens:

1. **Não-rivalidade**: o uso de um dado por um agente não impede o uso simultâneo por outro. A informação de que "o usuário X pesquisou voos para Paris" pode ser utilizada simultaneamente pelo Google, pela companhia aérea e pela agência de turismo.

2. **Excludibilidade parcial**: dados podem ser protegidos por criptografia, contratos e regulação, mas são facilmente copiáveis e transferíveis.

3. **Rendimentos crescentes**: o valor marginal de dados adicionais tende a ser crescente até certo ponto — um algoritmo de recomendação treinado com 1 bilhão de observações é substancialmente melhor que um treinado com 1 milhão, graças ao aprendizado de máquina.

4. **Complementaridade**: dados de fontes diversas são mais valiosos quando combinados do que isoladamente. A combinação de dados de busca (Google), navegação (Chrome), localização (Google Maps) e e-mail (Gmail) permite um perfil de consumidor muito mais preciso do que qualquer fonte isolada.

Essas propriedades geram **economias de escala e escopo em dados** que reforçam as vantagens competitivas das plataformas incumbentes: quanto mais usuários, mais dados; mais dados significam algoritmos melhores; algoritmos melhores atraem mais usuários — fechando o ciclo de retroalimentação.

!!! definition "Economias de escala e escopo em dados"
    **Economia de escala em dados**: o valor (ou a precisão) de um algoritmo cresce com o volume de dados de treinamento — cada observação adicional melhora marginalmente as previsões. **Economia de escopo em dados**: a combinação de dados de fontes diversas (busca + localização + compras + e-mail) gera valor superior à soma dos dados individuais, pois permite inferências que nenhuma fonte isolada possibilitaria.

### 21.6.2 Discriminação de preços e big data

A abundância de dados individuais permite que as firmas pratiquem **discriminação de preços** com precisão sem precedentes — tema que conecta diretamente com a análise do Capítulo 15 sobre poder de mercado e discriminação.

No modelo clássico de discriminação de primeiro grau (perfeita), o monopolista cobra de cada consumidor exatamente sua disposição a pagar. Na prática, essa discriminação era inviável porque a firma não conhecia a disposição a pagar individual. Com big data e aprendizado de máquina, essa barreira informacional está sendo progressivamente superada:

- **Precificação dinâmica**: plataformas como Uber (surge pricing), Amazon e companhias aéreas ajustam preços em tempo real com base na demanda observada, hora do dia, localização do usuário e histórico de compras.
- **Personalização de ofertas**: Netflix recomenda conteúdo diferente para cada usuário; Amazon mostra preços e ofertas personalizados com base no perfil de navegação.
- **Precificação algorítmica**: algoritmos de machine learning estimam a elasticidade-preço individual de cada consumidor e definem preços que se aproximam da discriminação de primeiro grau.

A análise de bem-estar é, novamente, ambígua. A discriminação de preços perfeita é eficiente no sentido de Pareto (não há peso morto), mas transfere todo o excedente do consumidor para o produtor. Quando a discriminação é imperfeita — como na prática — pode tanto aumentar quanto reduzir o bem-estar total, dependendo de se novos consumidores (antes excluídos) são incluídos pelo preço mais baixo ou se consumidores existentes são explorados pelo preço mais alto.

### 21.6.3 Privacidade como externalidade

Uma dimensão econômica da privacidade frequentemente negligenciada é seu caráter de **externalidade**. Os dados que eu compartilho com uma plataforma revelam informações não apenas sobre mim, mas também sobre meus contatos, minha comunidade e pessoas demograficamente semelhantes a mim. Formalmente, a decisão de privacidade do agente \(i\) gera uma externalidade informacional sobre o agente \(j\):

\[
U_j = U_j(x_j, d_i) \quad \text{com} \quad \frac{\partial U_j}{\partial d_i} < 0 \label{eq:21.17} \tag{21.17}
\]

onde \(d_i\) é a quantidade de dados compartilhados pelo agente \(i\) e \(U_j\) é a utilidade do agente \(j\). A externalidade é negativa: quando você compartilha sua lista de contatos com um aplicativo, está revelando informações sobre seus amigos *sem o consentimento deles*; quando um algoritmo infere que pessoas com seu perfil demográfico têm alta probabilidade de inadimplência, essa inferência afeta todas as pessoas similares, mesmo aquelas que não compartilharam dados.

Essa externalidade de privacidade tem consequências regulatórias diretas: mesmo que cada indivíduo decidisse "racionalmente" compartilhar seus dados (porque o benefício privado supera o custo privado), o nível agregado de compartilhamento seria **excessivo** do ponto de vista social — exatamente a lógica da Seção 20.2 sobre externalidades negativas. Isso justifica intervenção regulatória, como as leis de proteção de dados.

### 21.6.4 Regulação de dados: GDPR, LGPD e o framework global

A resposta regulatória ao desafio dos dados pessoais tem seguido duas tradições: a **europeia** (proteção de dados como direito fundamental) e a **norte-americana** (abordagem setorial, baseada em mercado).

O **General Data Protection Regulation (GDPR)** da União Europeia (2018) é a regulação de dados mais abrangente do mundo, estabelecendo princípios como consentimento explícito, minimização de dados, portabilidade e direito ao esquecimento. As multas podem chegar a 4% da receita global — o que, para empresas como Google ou Meta, significa bilhões de euros.

!!! box-brasil "Box Brasil 21.2 — LGPD, PIX e Open Banking: regulação digital brasileira"

    **Contexto:** O Brasil adotou uma abordagem regulatória que combina proteção de dados com estímulo à competição digital, posicionando-se como um dos países mais inovadores em regulação financeira digital no mundo.

    **LGPD (Lei Geral de Proteção de Dados, Lei n.º 13.709/2018):** Inspirada no GDPR europeu, a LGPD entrou em vigor em 2020 e estabelece regras para coleta, armazenamento, tratamento e compartilhamento de dados pessoais no Brasil. A lei exige consentimento do titular, finalidade específica, minimização de dados e garantias de segurança. A Autoridade Nacional de Proteção de Dados (ANPD) é responsável pela fiscalização, com poder de aplicar multas de até 2% do faturamento (limitadas a R$ 50 milhões por infração).

    **PIX:** Lançado pelo Banco Central em novembro de 2020, o PIX é um sistema de pagamentos instantâneos que se tornou o meio de pagamento mais utilizado no Brasil em menos de três anos, com mais de 160 milhões de usuários cadastrados e mais de 4 bilhões de transações por mês em 2024. Do ponto de vista microeconômico, o PIX é um exemplo notável de **efeito de rede direto** (quanto mais pessoas usam, mais útil se torna) combinado com **redução de custos de transação** (eliminando a necessidade de boletos, TEDs e DOCs). A interoperabilidade compulsória — qualquer banco ou fintech pode oferecer PIX — evita o lock-in e garante que os efeitos de rede beneficiem todo o sistema, não apenas uma plataforma.

    **Open Banking / Open Finance:** Implementado a partir de 2021, o Open Banking brasileiro permite que clientes autorizem o compartilhamento de seus dados financeiros entre instituições. A medida reduz assimetrias de informação (Capítulo 19), aumenta a contestabilidade do mercado bancário e dá ao consumidor controle sobre seus dados — alinhando-se ao princípio de portabilidade de dados da LGPD e do GDPR.

    **Análise:** A combinação LGPD + PIX + Open Banking representa uma estratégia regulatória que ataca simultaneamente várias falhas de mercado: a LGPD aborda a externalidade de privacidade; o PIX reduz o poder de mercado dos grandes bancos ao criar uma infraestrutura pública de pagamentos; e o Open Banking combate a assimetria informacional e os custos de troca no setor financeiro. O sucesso do PIX — adotado por 75% da população adulta em menos de três anos — ilustra o poder dos efeitos de rede quando a interoperabilidade é garantida desde o início.

    **Fonte:** Banco Central do Brasil — Relatório de Economia Bancária 2023. ANPD — Relatório Anual 2023.

---

## 21.7 Leilões Online e Desenho de Mecanismos Digitais

A economia da atenção e dos dados descrita nas seções anteriores depende, na prática, de mecanismos que alocam a atenção dos usuários entre anunciantes dispostos a pagar por ela. Esses mecanismos são, essencialmente, leilões — e operam em escala e velocidade sem precedentes.

### 21.7.1 O leilão de anúncios do Google

Talvez o mecanismo de mercado mais sofisticado e lucrativo da história econômica opere silenciosamente a cada fração de segundo: os leilões de anúncios online. Quando você digita uma busca no Google, um leilão instantâneo é conduzido entre os anunciantes que desejam exibir seus anúncios para aquela consulta específica — e o resultado determina quais anúncios você vê e em que posição. Em 2023, esses leilões geraram mais de US$ 230 bilhões em receita para o Google (Alphabet).

O mecanismo utilizado é uma variante do **Generalized Second Price (GSP) auction**, que tem conexão direta com os leilões de Vickrey discutidos no Capítulo 9c:

**Funcionamento do GSP:**

1. Cada anunciante \(i\) submete um lance \(b_i\) (o máximo que está disposto a pagar por clique).
2. Os anúncios são ordenados por um **score** que combina o lance com um índice de qualidade: \(s_i = b_i \times q_i\), onde \(q_i\) é o *quality score* (relevância do anúncio, taxa de clique esperada, qualidade da página de destino).
3. O anunciante com maior score recebe a primeira posição, o segundo maior a segunda, etc.
4. Cada anunciante paga, por clique, o **mínimo necessário para manter sua posição**: \(p_i = b_{i+1} \cdot q_{i+1} / q_i\) (preço do próximo anunciante ajustado pela qualidade).

A regra de pagamento (passo 4) é a versão generalizada do leilão de segundo preço de Vickrey: o vencedor não paga seu próprio lance, mas o lance do próximo concorrente (ajustado). Isso incentiva os anunciantes a revelarem seus valores verdadeiros — a mesma lógica de compatibilidade de incentivos do mecanismo VCG discutido no Capítulo 20.

!!! note "GSP versus VCG"
    Embora o GSP seja frequentemente comparado ao leilão de Vickrey (segundo preço), o GSP *não* é formalmente equivalente ao mecanismo VCG quando há múltiplas posições com taxas de clique diferentes. No leilão VCG com múltiplas posições, cada anunciante pagaria a externalidade que sua presença impõe sobre os demais — um valor geralmente menor que o preço GSP. Edelman, Ostrovsky e Schwarz (2007) mostram que o GSP possui um "equilíbrio de Nash localmente livre de inveja" (*locally envy-free equilibrium*) cujo resultado se situa entre o VCG e o leilão de primeiro preço. O Google migrou em 2019 para um formato de leilão de primeiro preço para anúncios display, simplificando a mecânica mas alterando os incentivos.

### 21.7.2 Lances em tempo real (Real-Time Bidding)

O mercado de publicidade digital evoluiu além dos leilões de busca para um sistema ainda mais sofisticado: o **Real-Time Bidding (RTB)**, ou leilão em tempo real. No RTB, cada vez que um usuário carrega uma página web ou aplicativo, um leilão é conduzido em milissegundos para determinar qual anúncio será exibido:

1. O usuário visita uma página → o navegador envia um pedido de anúncio ao servidor de publicidade.
2. O servidor transmite informações sobre o usuário (dados demográficos, histórico de navegação, localização) a uma *exchange* de anúncios.
3. Dezenas de anunciantes avaliam o valor daquele usuário específico e submetem lances em tempo real.
4. O leilão é resolvido, o anúncio vencedor é exibido, e o pagamento é processado — tudo em menos de 100 milissegundos.

O RTB processa mais de 500 bilhões de impressões por dia globalmente. A escala e a velocidade desse mercado seriam impensáveis sem a infraestrutura computacional descrita na Seção 21.1. Trata-se, literalmente, do maior leilão do mundo — e opera continuamente, 24 horas por dia.

### 21.7.3 Precificação algorítmica e risco de colusão

A crescente adoção de algoritmos de precificação por firmas em mercados digitais levanta uma questão nova para a política antitruste: podem algoritmos coordenar preços de forma tácita, sem que as firmas tenham intenção explícita de coludir?

A teoria sugere que sim. Calvano, Calzolari, Denicolò e Pastorello (2020) demonstram experimentalmente que algoritmos de aprendizado por reforço (Q-learning), quando competem repetidamente em um jogo de Bertrand (Capítulo 16), aprendem a sustentar preços acima do nível competitivo — essencialmente, "descobrem" estratégias colusivas sem comunicação explícita entre si. O mecanismo é análogo à colusão tácita em jogos repetidos (Capítulo 9b, folk theorem), mas sem necessidade de acordo prévio.

??? exercicio-resolvido "Exercício Resolvido 21.2 — Leilão GSP de anúncios"
    **Enunciado.** Três anunciantes (A, B, C) disputam duas posições de anúncio em um buscador. Os valores por clique são \(v_A = 10\), \(v_B = 6\), \(v_C = 2\). As taxas de clique por posição são: posição 1: \(\theta_1 = 200\) cliques; posição 2: \(\theta_2 = 100\) cliques. Os quality scores são iguais (\(q_A = q_B = q_C = 1\)).

    (a) Se os anunciantes revelam seus valores verdadeiros (\(b_i = v_i\)), determine a alocação e os preços por clique no GSP.

    (b) Calcule a receita total do leilão.

    (c) Calcule a receita que o mecanismo VCG geraria e compare com o GSP.

    **Resolução.**

    **Passo 1 — Alocação no GSP (lances verdadeiros).**

    Com quality scores iguais, a ordenação é por lance: A (lance 10) → posição 1, B (lance 6) → posição 2, C (lance 2) → não exibido.

    **Passo 2 — Preços no GSP.**

    - A paga o lance de B (próximo concorrente): \(p_A = b_B = 6\) por clique.
    - B paga o lance de C: \(p_B = b_C = 2\) por clique.

    **Passo 3 — Receita do GSP.**

    \[
    R_{GSP} = p_A \times \theta_1 + p_B \times \theta_2 = 6 \times 200 + 2 \times 100 = 1.200 + 200 = 1.400
    \]

    **Passo 4 — Receita do VCG.**

    No VCG, cada anunciante paga a **externalidade** que impõe sobre os demais:

    - **Pagamento de A**: sem A, B obteria posição 1 (200 cliques × 6 = 1.200) e C obteria posição 2 (100 × 2 = 200). Com A, B obtém posição 2 (100 × 6 = 600) e C não é exibido (0). Externalidade de A = (1.200 + 200) − (600 + 0) = 800. Preço por clique de A = 800/200 = 4.

    - **Pagamento de B**: sem B, C obteria posição 2 (100 × 2 = 200). Com B, C não é exibido (0). Externalidade de B = 200 − 0 = 200. Preço por clique de B = 200/100 = 2.

    \[
    R_{VCG} = 4 \times 200 + 2 \times 100 = 800 + 200 = 1.000
    \]

    **Resultado:** \(R_{GSP} = 1.400 > R_{VCG} = 1.000\). O GSP gera receita maior que o VCG neste exemplo. Isso é consistente com o resultado teórico de Edelman, Ostrovsky e Schwarz (2007): no equilíbrio do GSP, os preços situam-se entre o VCG e o primeiro preço.

??? exercicio-resolvido "Exercício Resolvido 21.3 — Efeitos de rede e massa crítica"
    **Enunciado.** Uma rede social tem \(N = 100\) usuários potenciais. Cada usuário \(i\) tem valor intrínseco \(v_i\) distribuído uniformemente em \([0, 10]\). O benefício de rede é \(f(n) = 0{,}05n\) e o preço de acesso é \(p = 3\).

    (a) Encontre os equilíbrios de adoção (número de usuários \(n^*\)).

    (b) Identifique quais equilíbrios são estáveis e qual é a massa crítica.

    (c) Se a plataforma reduzir o preço para \(p = 1\) temporariamente e depois voltar a \(p = 3\), qual é o efeito sobre a adoção de longo prazo?

    **Resolução.**

    **Passo 1 — Equação de equilíbrio.**

    O usuário marginal tem valor \(v^*\) tal que \(v^* + 0{,}05n^* = 3\). O número de adotantes é \(n^* = 100 \times (10 - v^*)/10 = 10(10 - v^*)\).

    Substituindo \(v^* = 3 - 0{,}05n^*\):

    \[
    n^* = 10(10 - 3 + 0{,}05n^*) = 10(7 + 0{,}05n^*) = 70 + 0{,}5n^*
    \]

    \[
    0{,}5n^* = 70 \implies n^* = 140
    \]

    Mas \(n^* \leq 100\)! Isso significa que, se o efeito de rede for suficientemente forte, o equilíbrio de adoção alta tem **todos** os 100 usuários aderindo. Verifiquemos: com \(n = 100\), o usuário com menor valor (\(v = 0\)) obtém utilidade \(0 + 0{,}05 \times 100 - 3 = 5 - 3 = 2 > 0\). Portanto, todos aderem.

    Existe também o equilíbrio com \(n^* = 0\): ninguém adere. Nesse caso, \(v^* = 3\) e qualquer usuário com \(v_i < 3\) não quer aderir. Mas os que têm \(v_i \geq 3\) gostariam — porém estão esperando que outros adiram primeiro.

    Há um equilíbrio instável intermediário? Suponha \(n\) adotantes com \(n < 100\). A condição é \(v^* + 0{,}05n = 3\) e \(n = 10(10 - v^*)\). Já encontramos \(n^* = 140\) (impossível) e \(n^* = 0\). O equilíbrio instável ocorre onde a curva de "melhor resposta" cruza a reta de 45 graus. Para um \(n\) pequeno, poucos querem aderir. Precisamos encontrar o \(n\) tal que exatamente \(n\) pessoas queiram aderir:

    \[
    n = 10(10 - (3 - 0{,}05n)) = 70 + 0{,}5n
    \]

    Essa equação só tem solução \(n = 140\). Portanto, neste exemplo, devido à força do efeito de rede, existem apenas dois equilíbrios:

    - **Equilíbrio baixo** (\(n^* = 0\)): ninguém adere.
    - **Equilíbrio alto** (\(n^* = 100\)): todos aderem.

    **Passo 2 — Estabilidade e massa crítica.**

    O equilíbrio \(n^* = 0\) é localmente estável (ninguém quer ser o primeiro a aderir sem que outros adiram). O equilíbrio \(n^* = 100\) é estável (ninguém quer sair). A massa crítica é o número mínimo de usuários \(n_c\) tal que, a partir dele, a adoção se torna autossustentável. Isso ocorre quando o usuário marginal (aquele com \(v = 0\)) é indiferente: \(0 + 0{,}05n_c = 3 \implies n_c = 60\). Se a rede atingir 60 usuários, todos os demais (mesmo aqueles com valor intrínseco baixo) desejarão aderir.

    **Passo 3 — Efeito de redução temporária de preço.**

    Com \(p = 1\), mesmo sem efeito de rede (\(f = 0\)), \(n = 10(10-1) = 90\) usuários aderem. Com efeito de rede, todos os 100 aderem. Quando o preço retorna a \(p = 3\), a rede já ultrapassou a massa crítica de 60. Como todos os 100 estão na rede, a utilidade do pior usuário é \(0 + 5 - 3 = 2 > 0\). Ninguém sai.

    **Resultado:** A redução temporária de preço ("promoção de lançamento") permite que a rede ultrapasse a massa crítica e se estabilize no equilíbrio alto — mesmo após o preço retornar ao nível original. Isso justifica economicamente a estratégia de "queima de caixa" das plataformas digitais.

!!! box-brasil "Box Brasil 21.3 — Mercado Livre: de startup a ecossistema"

    **Contexto:** O Mercado Livre, fundado em Buenos Aires em 1999, é a maior plataforma de comércio eletrônico da América Latina e um caso emblemático de construção de efeitos de rede em um mercado emergente. Em 2024, a empresa tinha capitalização de mercado superior a US$ 85 bilhões — maior que muitos bancos brasileiros tradicionais — e operava em 18 países.

    **Dados:** No Brasil, o Mercado Livre processava mais de 350 milhões de itens vendidos por trimestre em 2024, com mais de 85 milhões de compradores únicos e mais de 12 milhões de vendedores. O ecossistema inclui: Mercado Pago (fintech com mais de 50 milhões de usuários), Mercado Envios (logística com 5 centros de distribuição e frota própria), Mercado Crédito (empréstimos a vendedores e consumidores) e Mercado Ads (publicidade).

    **Análise:** O Mercado Livre ilustra a estratégia de **envelopment de plataforma** discutida na Seção 21.4.3. Partindo de um marketplace bilateral simples, a empresa progressivamente internalizou funcionalidades complementares (pagamentos, logística, crédito, publicidade), criando múltiplos loops de retroalimentação: mais vendedores → mais compradores → mais dados para Mercado Crédito → crédito mais barato para vendedores → mais vendedores. A criação do Mercado Pago, em particular, resolveu uma falha de mercado específica da América Latina — a desconfiança em transações online entre desconhecidos — atuando como mecanismo de escrow que reduziu a assimetria de informação (Capítulo 19) e viabilizou o crescimento do marketplace. Hoje, o Mercado Pago funciona como carteira digital independente, sendo utilizado inclusive fora do marketplace — o que amplia os efeitos de rede para o ecossistema financeiro como um todo.

    **Fonte:** MercadoLibre Inc. — Annual Report (Form 20-F) 2023.

---


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Bens de informação (software, música, conteúdo digital) apresentam estrutura de custos peculiar porque:"
    - (a) Seus custos fixos e marginais são ambos muito altos
    - (b) O custo fixo de criação é alto mas o custo marginal de reprodução é próximo de zero
    - (c) Não possuem custos fixos — a produção é inteiramente variável
    - (d) O custo marginal é crescente devido à escassez digital

    ??? success "Resposta"
        **(b)** A produção da 'primeira cópia' (custo fixo) é cara — compor uma música, desenvolver software. Mas cada cópia adicional custa praticamente zero (download, streaming). Isso gera economias de escala extremas e tendência a monopólio natural. A alternativa (a) contradiz a natureza digital; (d) é absurda — não há escassez na reprodução digital.

??? question "2. Externalidades de rede (efeitos de rede) ocorrem quando:"
    - (a) O custo de produção cai com o número de usuários
    - (b) O valor do produto para cada usuário aumenta com o número total de usuários na rede
    - (c) A rede de internet fica mais lenta com mais usuários
    - (d) A firma reduz o preço para atrair mais clientes

    ??? success "Resposta"
        **(b)** Efeitos de rede significam que a utilidade de um usuário é função crescente da base instalada: o telefone é mais valioso quanto mais pessoas o possuem. Isso gera dinâmicas de winner-takes-all e pode criar lock-in. A alternativa (a) descreve economias de escala na produção, não externalidade de rede; (c) descreve congestionamento (externalidade negativa); (d) descreve estratégia de preços.

??? question "3. Mercados de dois lados (two-sided markets/plataformas) são caracterizados por:"
    - (a) Apenas dois agentes participando da transação
    - (b) Externalidades cruzadas entre dois grupos de usuários, intermediados por uma plataforma que internaliza essas externalidades via estrutura de preços
    - (c) Competição entre exatamente duas firmas
    - (d) Preços iguais para ambos os lados

    ??? success "Resposta"
        **(b)** Plataformas como cartões de crédito (lojistas e consumidores), Uber (motoristas e passageiros) ou marketplaces conectam dois grupos cujo valor depende da participação do outro lado. A plataforma subsidia o lado mais sensível a preço para maximizar efeitos de rede cruzados. A alternativa (d) é tipicamente falsa — a assimetria de preços é uma característica central.

??? question "4. O problema de lock-in tecnológico é agravado por:"
    - (a) Baixos custos de troca (switching costs) entre plataformas
    - (b) Altos custos de troca, efeitos de rede e incompatibilidade entre sistemas
    - (c) Regulação governamental que garante interoperabilidade
    - (d) Ausência de economias de escala

    ??? success "Resposta"
        **(b)** Lock-in ocorre quando o custo de migrar para uma alternativa é proibitivo: dados incompatíveis, aprendizado específico, perda de rede de contatos. Efeitos de rede reforçam o lock-in porque sair significa perder as externalidades. A alternativa (a) facilitaria a troca, reduzindo lock-in; (c) é uma política para combater lock-in.

??? question "5. Na economia de dados e plataformas digitais, a precificação pelo custo marginal (próximo de zero) é problemática porque:"
    - (a) Geraria receita insuficiente para cobrir os altos custos fixos de criação e manutenção da plataforma
    - (b) Levaria a preços excessivamente altos
    - (c) É proibida pela legislação de concorrência
    - (d) Os consumidores não aceitam pagar preço zero

    ??? success "Resposta"
        **(a)** Com custo marginal próximo de zero, a precificação eficiente ($p = \text{CMg} \approx 0$) não cobre os custos fixos, inviabilizando o negócio. É o dilema fundamental dos bens de informação: eficiência alocativa exige preço zero, mas viabilidade econômica exige preço positivo. Modelos alternativos incluem bundling, freemium, publicidade e assinatura.

---

## 📋 Resumo do Capítulo

- **Bens de informação** são caracterizados por custo fixo alto e custo marginal próximo de zero, gerando economias de escala extremas que tendem ao monopólio natural. A precificação pelo custo marginal é eficiente mas inviável economicamente, criando um dilema fundamental para a política pública.

- **Efeitos de rede** ocorrem quando o valor de um produto para um usuário depende do número de outros usuários. Efeitos diretos operam dentro de um grupo; efeitos indiretos operam entre grupos. Efeitos de rede geram equilíbrios múltiplos, massa crítica, tipping e lock-in — dinâmicas que frequentemente levam a mercados dominados por uma ou poucas plataformas.

- **Mercados bilaterais** são estruturas em que uma plataforma conecta dois ou mais grupos de agentes com externalidades cruzadas. O modelo de Rochet e Tirole (2003) demonstra que a estrutura de preços (e não apenas o nível) é relevante: a plataforma ótima subsidia o lado que gera maior externalidade para o outro lado, o que pode significar preço zero ou negativo para um dos lados.

- **A competição entre plataformas** depende crucialmente da distinção entre single-homing (tendência ao monopólio) e multi-homing (competição viável). Plataformas incumbentes podem utilizar estratégias de envelopment para expandir seu domínio a mercados adjacentes.

- **A economia da atenção** modela plataformas que oferecem conteúdo gratuito em troca de atenção e dados do usuário, que são vendidos a anunciantes. Serviços "gratuitos" não são realmente grátis — o consumidor paga com atenção e dados pessoais.

- **Dados** são bens não-rivais com rendimentos crescentes e complementaridades, que geram economias de escala e escopo reforçando o poder de mercado das plataformas incumbentes. A privacidade tem caráter de externalidade: o compartilhamento individual de dados impõe custos a terceiros.

- **Leilões online** (GSP, RTB) são mecanismos sofisticados que alocam atenção publicitária em milissegundos, gerando centenas de bilhões em receita. A precificação algorítmica levanta riscos novos de colusão tácita que desafiam os paradigmas antitruste tradicionais.

## 🔑 Conceitos-Chave

<a id="tabela-21-1"></a>

| Conceito | Definição |
|----------|-----------|
| Bem de informação | Bem cujo valor reside no conteúdo informacional, com custo fixo alto e custo marginal de reprodução próximo de zero |
| Efeito de rede direto | O valor do produto para um usuário cresce com o número de outros usuários do mesmo produto |
| Efeito de rede indireto | O valor para os usuários de um lado do mercado cresce com o número de participantes do outro lado |
| Mercado bilateral | Mercado em que uma plataforma conecta dois ou mais grupos de agentes com externalidades cruzadas, e a estrutura de preços importa |
| Massa crítica | Número mínimo de adotantes acima do qual a dinâmica de adoção se torna autossustentável |
| Tipping | Processo pelo qual uma rede captura a totalidade (ou maioria) do mercado devido ao feedback positivo dos efeitos de rede |
| Lock-in | Situação em que custos de troca elevados prendem os usuários a uma plataforma, mesmo quando alternativas superiores existem |
| Subsídio cruzado | Estratégia de plataformas bilaterais de cobrar abaixo do custo (ou zero) de um lado e acima do custo do outro |
| Multi-homing | Uso simultâneo de múltiplas plataformas concorrentes por um mesmo agente |
| Envelopment de plataforma | Estratégia de expansão para mercados adjacentes alavancando a base de usuários existente |
| Economia da atenção | Framework que modela a atenção humana como recurso escasso comercializado em mercados de mídia bilateral |
| Economia de escala em dados | Melhoria da qualidade de algoritmos com o aumento do volume de dados de treinamento |
| GSP (Generalized Second Price) | Formato de leilão de anúncios em que cada posição paga o lance mínimo para manter sua posição |
| Precificação algorítmica | Uso de algoritmos de aprendizado de máquina para definir preços em tempo real com base em dados individuais |

<div class="caption-obj" markdown>
**Tabela 21.1 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-21-1"></a>**Exercício 21.1.** Uma plataforma de streaming oferece conteúdo a um custo fixo de desenvolvimento de \(F = 10.000\) e custo marginal de transmissão \(c = 0{,}01\) por usuário. A demanda é \(q = 500 - 100p\).

(a) Calcule a quantidade socialmente ótima (onde \(p = c\)) e o excedente total.
(b) Calcule a quantidade e o preço de monopólio. Determine o peso morto.
(c) O monopolista cobre os custos fixos no equilíbrio de monopólio? Calcule o lucro.
(d) Proponha e analise uma política de discriminação de preços (dois planos: básico e premium) que aumente o bem-estar e cubra os custos fixos.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-1)

<a id="ex-21-2"></a>**Exercício 21.2.** Uma rede de comunicação tem \(N = 200\) usuários potenciais com valores intrínsecos \(v_i\) uniformemente distribuídos em \([0, 8]\). O benefício de rede é \(f(n) = 0{,}02n\) e o preço é \(p = 2\).

(a) Determine todos os equilíbrios de adoção.
(b) Calcule a massa crítica.
(c) Se a plataforma puder escolher o preço para maximizar o número de adotantes no equilíbrio estável de alta adoção, qual preço deveria fixar?
(d) Discuta o trade-off entre receita e adoção.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-2)

<a id="ex-21-3"></a>**Exercício 21.3.** Considere uma plataforma bilateral com compradores (B) e vendedores (S). As demandas são:

\[
n_B = 100 - 2p_B + n_S, \quad n_S = 100 - 2p_S + 0{,}5n_B
\]

O custo marginal é \(c_B = c_S = 5\).

(a) Resolva o sistema de demandas para expressar \(n_B\) e \(n_S\) em função de \(p_B\) e \(p_S\).
(b) Determine os preços que maximizam o lucro da plataforma.
(c) Compare com os preços que maximizariam o bem-estar social (preço = custo marginal ajustado pela externalidade).
(d) Calcule o peso morto do monopólio bilateral.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-3)

<a id="ex-21-4"></a>**Exercício 21.4.** Duas redes sociais (A e B) competem por \(N = 100\) usuários. A utilidade de usar a rede \(k\) é \(u_k = v + \alpha n_k - p_k\), onde \(v = 3\), \(\alpha = 0{,}1\) e \(p_A = p_B = 1\). Suponha que cada usuário escolhe no máximo uma rede (single-homing).

(a) Mostre que existem três equilíbrios de Nash: todos em A, todos em B, e uma divisão instável.
(b) Encontre a divisão instável (\(n_A^*\) tal que o usuário marginal é indiferente).
(c) Se a rede A tiver uma vantagem de qualidade (\(v_A = 3{,}5\), \(v_B = 3\)), qual é o novo equilíbrio?
(d) Discuta a eficiência dos equilíbrios e o papel da política pública (interoperabilidade).

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-4)

<a id="ex-21-5"></a>**Exercício 21.5.** Uma plataforma de mídia (tipo YouTube) atrai \(n\) usuários com conteúdo de qualidade \(q = 10\). A utilidade do usuário é \(u = 10 - 2a - p_U\), onde \(a\) é a quantidade de publicidade e \(p_U\) é a assinatura. A demanda de usuários é \(n = 200(10 - 2a - p_U)\). Cada impressão publicitária gera receita \(r = 0{,}05n\) por unidade de anúncio.

(a) No modelo puramente ad-supported (\(p_U = 0\)), determine a quantidade ótima de publicidade \(a^*\).
(b) Compare com o modelo de assinatura puro (\(a = 0\), \(p_U > 0\)).
(c) Determine o modelo misto ótimo (escolha simultânea de \(a\) e \(p_U\)).
(d) Calcule o excedente do consumidor em cada modelo e discuta qual maximiza o bem-estar total.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-5)

<a id="ex-21-6"></a>**Exercício 21.6.** Um monopolista online utiliza big data para discriminar preços. A demanda é composta por dois grupos: sensíveis (\(D_S: q_S = 100 - 4p\), 60% dos consumidores) e insensíveis (\(D_I: q_I = 100 - p\), 40% dos consumidores). O custo marginal é \(c = 10\).

(a) Calcule o preço e lucro de monopólio com preço uniforme.
(b) Calcule preços e lucro com discriminação de terceiro grau (preços diferentes para cada grupo).
(c) Calcule o excedente do consumidor em cada cenário. Algum grupo está melhor com discriminação?
(d) Discuta as implicações para regulação de dados e privacidade.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-6)

<a id="ex-21-7"></a>**Exercício 21.7.** Uma empresa opera uma plataforma de e-commerce e deseja entrar no mercado de pagamentos (envelopment). A plataforma tem \(n_0 = 50\) milhões de usuários. O custo fixo de desenvolver o sistema de pagamentos é \(F_P = 500\) (em milhões de R$). O benefício incremental para cada usuário existente é \(\Delta v = 5\) (R$/usuário/ano) e a taxa de conversão esperada é de 60%.

(a) Calcule o benefício total para os usuários e compare com o custo.
(b) Se a plataforma cobrar \(p = 2\) por transação e esperar 10 transações/ano por usuário ativo, quando o investimento se paga?
(c) Compare com um entrante que não tem base de usuários (deve atrair desde zero). Qual é a barreira à entrada?
(d) Discuta implicações antitruste do envelopment.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-7)

<a id="ex-21-8"></a>**Exercício 21.8.** No modelo de externalidade de privacidade, 100 usuários decidem se compartilham dados pessoais com uma plataforma. O benefício privado de compartilhar é \(b = 5\) para cada usuário. O custo externo imposto sobre *todos os outros* usuários é \(e(n) = 0{,}02n\) por pessoa, onde \(n\) é o número que compartilha.

(a) No equilíbrio sem regulação, quantos usuários compartilham dados?
(b) Determine o nível socialmente ótimo de compartilhamento.
(c) Calcule a taxa pigouviana ótima sobre o compartilhamento de dados.
(d) Relacione o resultado com a LGPD e o consentimento informado.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-8)

<a id="ex-21-9"></a>**Exercício 21.9.** Três anunciantes (X, Y, Z) disputam duas posições em um buscador via leilão GSP. Os valores por clique são \(v_X = 8\), \(v_Y = 5\), \(v_Z = 3\). As taxas de clique são \(\theta_1 = 300\), \(\theta_2 = 150\). Os quality scores são \(q_X = 1{,}2\), \(q_Y = 1{,}0\), \(q_Z = 0{,}8\).

(a) Determine a alocação de posições considerando os quality scores.
(b) Calcule os preços por clique no GSP.
(c) Calcule a receita do buscador.
(d) Compare a alocação do GSP com uma alocação que considerasse apenas os lances (sem quality scores). Discuta eficiência.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-9)

<a id="ex-21-10"></a>**Exercício 21.10.** Considere um mercado de ride-hailing (tipo Uber) com dois períodos. No período 1, a plataforma pode fixar preço \(p_1\) abaixo do custo (\(c = 10\)) para atrair \(n_1\) usuários. No período 2, o efeito de rede é \(f(n_1) = 0{,}1n_1\) e a plataforma cobra \(p_2\). A demanda em cada período é \(n_t = 100 - 5p_t + f(n_{t-1})\) (com \(f(n_0) = 0\)).

(a) Calcule a demanda no período 1 com \(p_1 = 5\) (abaixo do custo).
(b) Calcule o lucro (prejuízo) no período 1.
(c) No período 2, com o efeito de rede de \(n_1\) usuários, determine o preço de monopólio \(p_2^*\) e o lucro.
(d) Compare o lucro total (períodos 1+2) com uma estratégia míope que cobra \(p_1 = p_2 = p^{mono}\) em ambos os períodos.

[:material-arrow-right: Ver solução](../solucoes/cap21.md#ex-21-10)

---

## 🏆 Vem, ANPEC!

As questões a seguir são formuladas no estilo ANPEC (itens Verdadeiro ou Falso). Cada item deve ser classificado como **V** ou **F**.

??? question "Questão estilo ANPEC — Plataformas e Efeitos de Rede"
    Com relação à teoria econômica de plataformas digitais, efeitos de rede e mercados bilaterais, julgue os itens:

    **(0)** Em mercados com efeitos de rede fortes e single-homing dos dois lados, a tendência é que apenas uma plataforma sobreviva no equilíbrio (winner-take-all).

    **(1)** Em um mercado bilateral, a plataforma monopolista que maximiza lucro deve sempre cobrar preços iguais dos dois lados do mercado.

    **(2)** Custos de troca (switching costs) elevados aumentam o poder de mercado das plataformas incumbentes ao reduzir a elasticidade-preço da demanda dos usuários existentes.

    **(3)** A regra de precificação ótima de uma plataforma bilateral é análoga à regra de Ramsey, mas incorpora um termo de desconto pela externalidade cruzada entre os lados.

    **(4)** Se os efeitos de rede são suficientemente fortes, um produto tecnologicamente inferior pode dominar o mercado e um produto superior pode fracassar, caracterizando uma falha de coordenação.

    ??? success "Gabarito"
        **Respostas: V-F-V-V-V**

        **Justificativa por item:**

        - **Item 0 — V:** Quando ambos os lados fazem single-homing, os efeitos de rede geram um feedback positivo que amplifica diferenças iniciais de tamanho entre plataformas, levando ao domínio de uma única (tipping). Este é o resultado central da análise de winner-take-all da Seção 21.4.1.

        - **Item 1 — F:** O resultado fundamental de Rochet e Tirole (2003) é que a **estrutura** de preços importa: a plataforma ótima tipicamente cobra preços assimétricos, subsidiando o lado que gera maior externalidade cruzada. Cobrar preços iguais geralmente não maximiza lucro nem bem-estar.

        - **Item 2 — V:** Custos de troca elevados reduzem a probabilidade de que usuários existentes migrem para plataformas concorrentes, mesmo se estas oferecerem preços menores ou qualidade superior. Isso torna a demanda residual mais inelástica, permitindo que a incumbente cobre preços mais altos — exatamente o mecanismo de lock-in da equação $\eqref{eq:21.6}$.

        - **Item 3 — V:** Conforme a equação $\eqref{eq:21.13}$, a margem ótima em cada lado do mercado é o inverso da elasticidade *menos* um termo proporcional à externalidade cruzada — uma regra de Ramsey modificada.

        - **Item 4 — V:** Este é o fenômeno de dependência de trajetória e falha de coordenação (Seção 21.2.4). O exemplo clássico é o VHS vs. Betamax. Formalmente, trata-se de um jogo de coordenação com múltiplos equilíbrios de Nash, em que o equilíbrio selecionado pode ser Pareto-dominado.

??? question "Questão estilo ANPEC — Economia de Dados e Regulação"
    Sobre a economia de dados, privacidade e regulação digital, julgue os itens:

    **(0)** Dados pessoais são bens rivais, pois o uso de um dado por uma firma impede que outra firma utilize o mesmo dado.

    **(1)** A discriminação de preços viabilizada por big data pode aumentar a eficiência alocativa ao reduzir o peso morto, mas tende a transferir excedente do consumidor para o produtor.

    **(2)** A privacidade tem caráter de externalidade: a decisão de um indivíduo de compartilhar dados pessoais revela informações sobre terceiros sem seu consentimento.

    **(3)** A LGPD brasileira e o GDPR europeu podem ser interpretados como instrumentos de regulação que visam internalizar a externalidade negativa do compartilhamento excessivo de dados.

    **(4)** Em mercados de plataformas ad-supported, o preço zero para o usuário garante que não há perda de bem-estar do consumidor, pois o excedente do consumidor é maximizado quando o preço é zero.

    ??? success "Gabarito"
        **Respostas: F-V-V-V-F**

        **Justificativa por item:**

        - **Item 0 — F:** Dados são bens não-rivais: a mesma informação (e.g., "usuário X tem 35 anos e mora em São Paulo") pode ser utilizada simultaneamente por múltiplas firmas sem que o uso por uma reduza a disponibilidade para as demais. A confusão surge porque dados podem ser *excludentes* (protegidos por contratos, criptografia), mas isso é excludibilidade, não rivalidade.

        - **Item 1 — V:** A discriminação de preços (Capítulo 15) reduz o peso morto ao permitir que consumidores com disposição a pagar menor que o preço de monopólio uniforme sejam atendidos. Porém, se a discriminação se aproxima do primeiro grau (perfeita), todo o excedente é capturado pelo produtor. O efeito líquido sobre o bem-estar do consumidor é tipicamente negativo.

        - **Item 2 — V:** Conforme a equação $\eqref{eq:21.17}$ e a discussão da Seção 21.6.3, o compartilhamento de dados por um indivíduo permite inferências sobre terceiros demograficamente similares — uma externalidade informacional negativa.

        - **Item 3 — V:** A LGPD e o GDPR impõem custos (consentimento explícito, limitações de uso) sobre o compartilhamento de dados, atuando de forma análoga a uma taxa pigouviana que internaliza o custo externo do compartilhamento excessivo.

        - **Item 4 — F:** Embora \(p = 0\) elimine a perda de bem-estar associada ao preço positivo, o consumidor em plataformas ad-supported incorre em custos implícitos: perda de privacidade (dados pessoais), desutilidade da publicidade (\(\gamma \cdot a\) na equação $\eqref{eq:21.14}$), e potencial manipulação comportamental. O excedente líquido do consumidor não é necessariamente maximizado com preço zero.

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Rochet, J.-C.; Tirole, J. (2003). Platform Competition in Two-Sided Markets. *Journal of the European Economic Association*, 1(4), 990–1029.](https://doi.org/10.1162/154247603322493212)"
    **Pergunta central:** Como as plataformas que conectam dois ou mais grupos de usuários devem definir sua estrutura de preços, e por que essa estrutura importa?

    **Método:** Os autores desenvolvem um modelo teórico de plataformas que servem dois lados do mercado (e.g., compradores e vendedores, portadores de cartão e lojistas). A inovação central é mostrar que, em mercados bilaterais, o *nível total* de preço não é suficiente para determinar a alocação — a *estrutura* (como o preço total é dividido entre os dois lados) também afeta o número de participantes de cada lado e, portanto, o volume de transações.

    **Resultado principal:** A plataforma que maximiza lucro tende a subsidiar o lado com maior elasticidade-preço e maior contribuição às externalidades cruzadas. O preço ótimo para cada lado difere do preço que igualaria custo marginal — e pode inclusive ser negativo (a plataforma paga para atrair participantes de um lado). O artigo demonstra que a análise antitruste baseada em custos e margens de um único lado do mercado pode levar a conclusões erradas.

    **Relevância para o capítulo:** Este é o artigo fundador da teoria econômica de plataformas bilaterais, discutido em detalhe na Seção 21.3. O modelo de Rochet e Tirole fornece o arcabouço analítico que unifica a compreensão de mercados aparentemente díspares (cartões de crédito, sistemas operacionais, buscadores, redes sociais) sob uma mesma lógica microeconômica.

??? pesquisa "[Parker, G. G.; Van Alstyne, M. W. (2005). Two-Sided Network Effects: A Theory of Information Product Design. *Management Science*, 51(10), 1494–1504.](https://doi.org/10.1287/mnsc.1050.0400)"
    **Pergunta central:** Como os efeitos de rede de dois lados influenciam o design ótimo de produtos de informação e a estratégia de precificação de plataformas?

    **Método:** Os autores desenvolvem um modelo de plataforma bilateral em que dois grupos de agentes (e.g., desenvolvedores e usuários) interagem por meio de uma plataforma tecnológica. O modelo permite que a plataforma escolha não apenas os preços para cada lado, mas também o grau de abertura (openness) do sistema — quanto da tecnologia é compartilhada com desenvolvedores terceiros.

    **Resultado principal:** A abertura da plataforma a desenvolvedores terceiros aumenta a variedade de aplicações (efeito de rede indireto) e pode compensar a perda de controle sobre a qualidade. Existe um grau ótimo de abertura que maximiza o valor total da rede. Plataformas que subsidiam desenvolvedores (por meio de APIs gratuitas, ferramentas de desenvolvimento, e compartilhamento de receita) podem superar concorrentes com tecnologia superior mas mais fechados.

    **Relevância para o capítulo:** O artigo formaliza a lógica de "subsidiar um lado para atrair o outro" em contextos de tecnologia e inovação. A análise é diretamente aplicável ao ecossistema de smartphones (iOS vs. Android), onde a decisão de abertura/fechamento da plataforma (Apple vs. Google) reflete trade-offs entre controle de qualidade e efeitos de rede indiretos.

??? pesquisa "[Katz, M. L.; Shapiro, C. (1985). Network Externalities, Competition, and Compatibility. *American Economic Review*, 75(3), 424–440.](https://www.jstor.org/stable/1814809)"
    **Pergunta central:** Como externalidades de rede afetam a competição entre firmas e as decisões de compatibilidade entre produtos?

    **Método:** Os autores desenvolvem um modelo de oligopólio em que o valor do produto para cada consumidor depende do número total de usuários da mesma "rede" (compatibilidade). Analisam o equilíbrio de mercado sob diferentes regimes de compatibilidade (compatibilidade total, parcial e nula) e as escolhas estratégicas de compatibilidade pelas firmas.

    **Resultado principal:** Quando os efeitos de rede são fortes, as firmas com maior base instalada preferem incompatibilidade (para proteger sua vantagem de rede), enquanto firmas menores preferem compatibilidade (para acessar os benefícios de rede da incumbente). A competição com efeitos de rede pode levar a equilíbrios ineficientes em que o produto de qualidade inferior domina — *excess inertia* — ou, inversamente, em que a troca para um novo padrão ocorre prematuramente — *excess momentum*.

    **Relevância para o capítulo:** Este é o artigo seminal sobre competição em mercados com externalidades de rede, fornecendo as bases teóricas para a análise de tipping, lock-in e dependência de trajetória da Seção 21.2. Os conceitos de excess inertia e excess momentum são diretamente relevantes para a análise antitruste em mercados de tecnologia e para o debate sobre interoperabilidade.

??? pesquisa "[Acquisti, A.; Taylor, C.; Wagman, L. (2016). The Economics of Privacy. *Journal of Economic Literature*, 54(2), 442–492.](https://doi.org/10.1257/jel.54.2.442)"
    **Pergunta central:** Quais são as consequências econômicas da perda de privacidade no ambiente digital, e como os agentes tomam decisões sobre compartilhamento de informações pessoais?

    **Método:** Os autores apresentam uma survey abrangente da literatura sobre economia da privacidade, organizando os resultados em três vertentes: (i) modelos teóricos de decisão de privacidade; (ii) evidências empíricas sobre comportamento de compartilhamento de dados; e (iii) análise de bem-estar e regulação.

    **Resultado principal:** A privacidade tem efeitos econômicos ambíguos. Por um lado, mais informação disponível reduz assimetrias informacionais (Capítulo 19), potencialmente melhorando a eficiência alocativa. Por outro, a perda de privacidade permite discriminação de preços mais eficaz (transferindo excedente do consumidor), facilita vigilância e controle, e gera externalidades negativas (a divulgação de dados por um agente afeta terceiros). Crucialmente, os autores documentam um "paradoxo da privacidade": consumidores declaram valorizar privacidade mas, na prática, revelam informações pessoais por benefícios triviais — sugerindo vieses comportamentais (Capítulo 8) que justificam intervenção regulatória.

    **Relevância para o capítulo:** O artigo sistematiza os fundamentos econômicos da regulação de dados discutida na Seção 21.6. A documentação do paradoxo da privacidade conecta a economia digital com a economia comportamental (Capítulo 8), mostrando que os modelos de agente racional podem subestimar os custos reais da perda de privacidade.

??? pesquisa "[Calvano, E.; Calzolari, G.; Denicolò, V.; Pastorello, S. (2020). Artificial Intelligence, Algorithmic Pricing, and Collusion. *American Economic Review*, 110(10), 3267–3297.](https://doi.org/10.1257/aer.20190623)"
    **Pergunta central:** Algoritmos de precificação baseados em inteligência artificial podem aprender a coludir sem comunicação explícita entre firmas?

    **Método:** Os autores conduzem experimentos computacionais em que algoritmos de Q-learning (aprendizado por reforço) competem repetidamente em um jogo de precificação do tipo Bertrand (Capítulo 16). Cada algoritmo maximiza seus lucros descontados, ajustando suas estratégias com base na experiência passada, sem qualquer comunicação ou coordenação explícita com o rival.

    **Resultado principal:** Os algoritmos consistentemente aprendem a sustentar preços supra-competitivos — isto é, acima do equilíbrio de Nash de Bertrand — por meio de estratégias de punição implícitas. Quando um algoritmo reduz seu preço (desviando da "colusão"), o rival responde reduzindo os preços nos períodos seguintes, punindo o desvio. Esse padrão emerge espontaneamente do processo de aprendizado, sem que os algoritmos tenham sido programados para coludir.

    **Relevância para o capítulo:** O artigo demonstra que a precificação algorítmica (Seção 21.7.3) pode gerar resultados colusivos sem que haja acordo ou comunicação entre firmas — um desafio fundamental para a legislação antitruste, que tradicionalmente exige prova de acordo explícito. A conexão com o folk theorem dos jogos repetidos (Capítulo 9b) é direta: os algoritmos "redescobrem" as estratégias de punição (trigger strategies) que a teoria prevê como sustentáculo da colusão em jogos repetidos.

---

!!! tip "🤖 Exercício com IA"
    **IA.8 — Plataforma Bilateral com Efeitos de Rede**

    Peça à IA para modelar uma plataforma bilateral com efeitos de rede cruzados. Dê os parâmetros: $a_B = 100$, $a_S = 80$, $\gamma_B = 0{,}5$, $\gamma_S = 0{,}3$, $c = 10$. Peça para ela encontrar os preços ótimos e identificar qual lado é subsidiado. Verifique com o gráfico interativo da Figura 21.2.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-8)

---

## 📚 Referências do Capítulo

- Anderson, S. P.; Coate, S. 2005. Market Provision of Broadcasting: A Welfare Analysis. *Review of Economic Studies*, 72(4), 947–972.
- Armstrong, M. 2006. Competition in Two-Sided Markets. *RAND Journal of Economics*, 37(3), 668–691.
- CADE. 2020. [*Concorrência em Mercados Digitais*](https://cdn.cade.gov.br/Portal/centrais-de-conteudo/publicacoes/estudos-economicos/documentos-de-trabalho/2020/documento-de-trabalho-n05-2020-concorrencia-em-mercados-digitais.pdf). Documento de Trabalho n.º 05/2020. Brasília: Conselho Administrativo de Defesa Econômica.
- Crémer, J.; de Montjoye, Y.-A.; Schweitzer, H. 2019. [*Competition Policy for the Digital Era*](https://op.europa.eu/en/publication-detail/-/publication/21dc175c-7b76-11e9-9f05-01aa75ed71a1). Luxembourg: European Commission.
- Edelman, B.; Ostrovsky, M.; Schwarz, M. 2007. Internet Advertising and the Generalized Second-Price Auction: Selling Billions of Dollars Worth of Keywords. *American Economic Review*, 97(1), 242–259.
- Eisenmann, T.; Parker, G.; Van Alstyne, M. 2011. Platform Envelopment. *Strategic Management Journal*, 32(12), 1270–1285.
- Katz, M. L.; Shapiro, C. 1985. Network Externalities, Competition, and Compatibility. *American Economic Review*, 75(3), 424–440.
- Parker, G. G.; Van Alstyne, M. W.; Choudary, S. P. 2016. [*Platform Revolution*](https://books.google.com.br/books?id=qT4JDAAAQBAJ). New York: W. W. Norton.
- Rochet, J.-C.; Tirole, J. 2003. Platform Competition in Two-Sided Markets. *Journal of the European Economic Association*, 1(4), 990–1029.
- Shapiro, C.; Varian, H. R. 1999. [*Information Rules: A Strategic Guide to the Network Economy*](https://books.google.com.br/books?id=aE_J4Iv_CYEC). Boston: Harvard Business School Press.
- Simon, H. A. 1971. Designing Organizations for an Information-Rich World. In: Greenberger, M. (Ed.), *Computers, Communications, and the Public Interest*. Baltimore: Johns Hopkins Press.
- Tirole, J. 2023. [*Competition, Regulation, and the New Digital Economy*](https://books.google.com.br/books?id=Ys6VEAAAQBAJ). Cambridge, MA: MIT Press.
