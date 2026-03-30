# Mercados Bilaterais e Plataformas

## 21.3 O Shopping Center de Um Bilhão de Usuários: Mercados Bilaterais e Plataformas {#213}

### 21.3.1 O conceito de mercado bilateral

Pense no shopping center mais próximo de você. Ele não fabrica nada — seu negócio é colocar lojistas e consumidores sob o mesmo teto, cobrando aluguel de um lado e estacionamento (nem sempre gratuito) do outro. Agora multiplique essa lógica por um bilhão de usuários e velocidade de milissegundos: você tem uma plataforma digital. Muitos dos mercados mais importantes da economia digital não são mercados "unilaterais" tradicionais (onde uma firma vende a consumidores), mas **mercados bilaterais** (ou multilaterais) nos quais uma **plataforma** conecta dois ou mais grupos distintos de agentes, e o valor para cada grupo depende da participação do outro. Exemplos abundam:

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

Resolvendo o sistema \(\eqref{eq:21.10}\) para obter \(n_B\) e \(n_S\) como funções dos preços, e otimizando \(\eqref{eq:21.11}\), obtém-se que o **preço ótimo para o lado \(B\)** satisfaz:

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

<iframe src="/micro-book/graficos/cap21/plataforma-bilateral.html" title="Figura 21.2 — Precificação de Plataforma Bilateral" class="graph-iframe" style="height:600px;overflow:hidden" scrolling="no"></iframe>
<div class="caption-obj" markdown>
**Figura 21.2 — Precificação de Plataforma Bilateral.** O gráfico de barras compara os preços ótimos \(p_B^*\) e \(p_S^*\) cobrados pela plataforma a cada lado com o custo marginal \(c\). O lado que gera maior externalidade cruzada (\(\gamma\) mais alto) tende a ser subsidiado — recebendo preço abaixo do custo — enquanto o lado oposto paga mais.
</div>

??? r-interactive "R Interativo — Plataforma Bilateral: Preços Ótimos com Externalidades Cruzadas"
    ```r
    # Plataforma bilateral monopolista — modelo Rochet-Tirole simplificado
    # Demandas: n_B = 1 - p_B + alpha_B * n_S
    #           n_S = 1 - p_S + alpha_S * n_B

    # Parâmetros (altere para explorar)
    alpha_B <- 0.5   # benefício que cada vendedor gera para compradores
    alpha_S <- 0.3   # benefício que cada comprador gera para vendedores
    c_B     <- 0.1   # custo marginal lado B
    c_S     <- 0.1   # custo marginal lado S

    # Resolver sistema de otimização (CPOs do monopolista bilateral)
    # Solução analítica para o caso linear simétrico
    D <- 1 - alpha_B * alpha_S  # determinante do sistema
    if (D <= 0) stop("Externalidades cruzadas fortes demais — equilíbrio instável!")

    # Preços ótimos (derivados das CPOs)
    p_B_star <- (1 + c_B - alpha_S * (1 - c_S)) / (2 * D) * D  # simplificação
    p_S_star <- (1 + c_S - alpha_B * (1 - c_B)) / (2 * D) * D

    # Preços sem externalidade (benchmark)
    p_B_mono <- (1 + c_B) / 2
    p_S_mono <- (1 + c_S) / 2

    # Visualização
    labels <- c("Compradores\n(bilateral)", "Vendedores\n(bilateral)",
                "Compradores\n(unilateral)", "Vendedores\n(unilateral)")
    precos <- c(p_B_star, p_S_star, p_B_mono, p_S_mono)
    cores  <- c("#2196F3", "#F44336", "#90CAF9", "#EF9A9A")

    bp <- barplot(precos, names.arg = labels, col = cores, border = NA,
                  main = "Preços Ótimos: Bilateral vs. Unilateral",
                  ylab = "Preço", ylim = c(0, max(precos) * 1.3))
    abline(h = c_B, col = "gray50", lty = 2, lwd = 1.5)
    text(max(bp) * 0.8, c_B + 0.02, paste0("CMg = ", c_B), col = "gray50", cex = 0.8)
    text(bp, precos + 0.03, round(precos, 3), cex = 0.9, font = 2)

    cat(sprintf("Externalidades: α_B = %.1f, α_S = %.1f\n", alpha_B, alpha_S))
    cat(sprintf("Bilateral:  p_B* = %.3f, p_S* = %.3f\n", p_B_star, p_S_star))
    cat(sprintf("Unilateral: p_B  = %.3f, p_S  = %.3f\n", p_B_mono, p_S_mono))
    cat(sprintf("Subsídio ao lado S: %.3f (%.0f%% abaixo do unilateral)\n",
                p_S_mono - p_S_star, (p_S_mono - p_S_star)/p_S_mono * 100))
    ```

    **Experimente:** Aumente `alpha_B` para 0,8 (compradores valorizam muito os vendedores) e observe como o preço dos vendedores cai — a plataforma os subsidia mais intensamente para atrair compradores de alto valor. Iguale `alpha_B = alpha_S = 0` para ver o benchmark de monopólio unilateral clássico ([Seção 15.2](../cap15/barreiras-maximizacao.md#152)).

---

### 21.3.5 TikTok e a economia da recomendação algorítmica {#2135}

O TikTok (ByteDance) introduziu uma ruptura no modelo de plataformas bilaterais que merece atenção analítica: enquanto plataformas tradicionais (Facebook, Instagram) distribuem conteúdo com base no **grafo social** (quem você segue), o TikTok distribui conteúdo com base em **recomendação algorítmica pura** (o que o algoritmo prevê que você vai assistir). Isso altera a dinâmica competitiva de forma fundamental.

**Implicações microeconômicas:**

1. **Efeitos de rede enfraquecidos**: em plataformas baseadas em grafo social, o lock-in é forte porque migrar significa perder conexões (custo de troca alto, equação $\eqref{eq:21.6}$). No TikTok, o valor vem do algoritmo de recomendação, não da rede de contatos — o que significa que o custo de troca do lado do usuário é *menor*. A plataforma retém usuários pela qualidade do algoritmo, não pelo aprisionamento social.

2. **Competição por atenção, não por rede**: o TikTok compete diretamente com Netflix, YouTube e Instagram pelo recurso mais escasso da economia digital — a atenção (Seção 21.5). Com mais de 1,5 bilhão de usuários ativos mensais globalmente e tempo médio de uso de 95 minutos/dia (2024), o TikTok captura uma fração crescente do "orçamento de atenção" dos jovens, reduzindo a atenção disponível para plataformas incumbentes.

3. **Mercado de criadores como mercado bilateral**: o TikTok opera como plataforma bilateral entre criadores de conteúdo e audiência, com o algoritmo funcionando como mecanismo de matching. A monetização segue a lógica de subsídio cruzado: criadores recebem incentivos (Fundo de Criadores, TikTok Shop), e a plataforma monetiza via anúncios direcionados à audiência.

---

### 21.3.6 Regulação de plataformas: DMA, DSA e o PL das plataformas no Brasil {#2136}

A concentração de poder de mercado nas grandes plataformas digitais (*Big Tech*) gerou uma onda global de regulação que pode ser a transformação mais significativa na política antitruste desde o Sherman Act (1890). As três iniciativas regulatórias mais relevantes são:

**Digital Markets Act (DMA) — União Europeia (2022/2024):**

O DMA classifica plataformas com mais de 45 milhões de usuários mensais na UE e receita superior a €7,5 bilhões como **gatekeepers** (porteiros digitais), sujeitos a obrigações específicas:

- **Interoperabilidade**: serviços de mensagens (WhatsApp, iMessage) devem permitir interoperação com concorrentes — reduzindo o lock-in por efeitos de rede diretos.
- **Proibição de auto-preferência**: plataformas não podem favorecer seus próprios serviços em resultados de busca ou app stores (endereça o caso Google Shopping).
- **Portabilidade de dados**: usuários devem poder migrar seus dados entre plataformas — reduzindo custos de troca.
- **Proibição de tying**: plataformas não podem condicionar o acesso a um serviço à adoção de outro (endereça práticas de envelopment).

Foram designados como gatekeepers em 2024: Alphabet (Google), Amazon, Apple, ByteDance (TikTok), Meta e Microsoft.

**Digital Services Act (DSA) — União Europeia (2022/2024):**

O DSA complementa o DMA regulando o *conteúdo* das plataformas: transparência de algoritmos de recomendação, proibição de publicidade direcionada a menores, e obrigação de combater desinformação — temas que conectam diretamente com a economia da atenção (Seção 21.5) e a externalidade de privacidade (Seção 21.6).

!!! box-brasil "Box Brasil — PL das Plataformas e regulação digital brasileira"

    **Contexto:** O Brasil discute, desde 2020, um marco regulatório para plataformas digitais. O **PL 2630/2020** (Lei Brasileira de Liberdade, Responsabilidade e Transparência na Internet), popularmente conhecido como "PL das Fake News" ou "PL das Plataformas", é a iniciativa mais avançada.

    **Principais disposições (versão 2024):** (i) obrigação de transparência sobre algoritmos de recomendação e moderação de conteúdo; (ii) responsabilidade das plataformas por conteúdo que viole a lei quando notificadas e não atuarem; (iii) criação de uma entidade reguladora autônoma para plataformas digitais; (iv) proibição de publicidade direcionada a menores de 18 anos; (v) obrigação de interoperabilidade para serviços de mensagens com mais de 50 milhões de usuários.

    **Análise econômica:** O PL tenta equilibrar dois objetivos em tensão: (a) proteger consumidores e a democracia contra externalidades negativas das plataformas (desinformação, manipulação algorítmica, exploração de dados de menores) e (b) preservar a eficiência dos efeitos de rede e a inovação. A obrigação de interoperabilidade para mensageiros, em particular, é uma aplicação direta da teoria discutida na Seção 21.2.5: ao reduzir os custos de troca sem fragmentar a rede, a interoperabilidade pode manter os benefícios de rede enquanto contesta o poder de mercado do incumbente (WhatsApp, com mais de 170 milhões de usuários no Brasil). O desafio de implementação é significativo: quem arca com o custo técnico da interoperabilidade? Como garantir privacidade end-to-end entre plataformas diferentes? O DMA europeu enfrenta os mesmos desafios.

    **Fonte:** Câmara dos Deputados — PL 2630/2020. CADE — Cadernos do CADE: Concorrência em Mercados Digitais (2022).

A regulação de plataformas digitais ilustra um princípio geral do desenho de mecanismos (Seção 9c.5): todo desenho regulatório envolve trade-offs entre objetivos conflitantes — eficiência alocativa, inovação, proteção ao consumidor e competição —, e a solução ótima depende de parâmetros empíricos (intensidade dos efeitos de rede, magnitude dos custos de troca, velocidade de inovação) que variam entre mercados e jurisdições.
