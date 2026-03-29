# 11.7 O Apartamento de Dois Quartos no Natal: Curto Prazo, Longo Prazo e a Envoltória

Imagine que você comprou um apartamento de dois quartos e agora precisa hospedar dez parentes no Natal. No curto prazo, a planta do apê é fixa — você empilha colchões, improvisa, e o custo por hóspede dispara. No longo prazo, você poderia ter alugado uma casa maior pagando menos por cabeça. A firma enfrenta exatamente esse dilema: no curto prazo, pelo menos um insumo (tipicamente o capital) está travado, e ela faz o que pode; no longo prazo, tudo é ajustável. A relação entre esses dois horizontes produz a célebre **curva envoltória** — e entendê-la é entender por que firmas investem, desinvestem e, às vezes, fecham as portas.[^silly-walks-burocracia]

[^silly-walks-burocracia]: O Ministry of Silly Walks de Monty Python é a melhor metáfora já inventada para custos fixos burocráticos. O ministério inteiro existe para subsidiar formas absurdas de caminhar — e o solicitante precisa preencher formulários, aguardar aprovação e seguir protocolos kafkianos para receber financiamento. É custo de transação puro à la Williamson: recursos desviados da produção para cumprir requisitos institucionais. No Brasil, o "custo de compliance tributária" (1.501 horas/ano segundo o Banco Mundial) seria um departamento inteiro no Ministry of Silly Walks.

A curva envoltória tem uma história intelectual curiosa. Jacob Viner (1931), ao escrever seu artigo seminal sobre curvas de custo e oferta, pediu a seu assistente gráfico que desenhasse a curva de custo médio de longo prazo como a envoltória das curvas de curto prazo. O assistente acreditava que as curvas de curto prazo deveriam *cruzar* a curva de longo prazo no ponto de tangência (não tangenciá-la), o que é matematicamente incorreto. Viner percebeu o erro, mas o artigo foi publicado com uma nota de rodapé famosa explicando o problema — exemplo precioso de como conceitos aparentemente simples podem conter armadilhas até para os maiores economistas.

### Custos de curto prazo

No **curto prazo**, o capital é fixo em \(\bar{K}\). A firma só pode ajustar o trabalho. O custo total de curto prazo é:

\[
CT_{CP}(q; \bar{K}) = v\bar{K} + w \cdot L(q, \bar{K})
\label{eq:11.9} \tag{11.9}
\]

onde \(L(q, \bar{K})\) é a quantidade de trabalho necessária para produzir \(q\) dado \(\bar{K}\), obtida invertendo a função de produção de curto prazo.

### Custos de longo prazo

No **longo prazo**, todos os insumos são variáveis. A firma escolhe simultaneamente \(K\) e \(L\) para minimizar custos:

\[
CT_{LP}(q) = \min_{K, L} \{wL + vK \mid f(K, L) = q\}
\label{eq:11.10} \tag{11.10}
\]

### A curva envoltória

A Figura 11.3 mostra a envoltória em termos de **custo total**. Cada curva colorida representa o \(CT_{CP}(q; \bar{K}) = wq^2/\bar{K} + v\bar{K}\) para um nível fixo de capital, assumindo a tecnologia Cobb-Douglas \(q = K^{0{,}5}L^{0{,}5}\). A curva azul — o custo total de longo prazo — é calculada **numericamente** como \(CT_{LP}(q) = \min_{\bar{K}} CT_{CP}(q; \bar{K})\) para cada \(q\), confirmando que a envoltória inferior emerge da minimização ponto a ponto. Nos pontos de tangência (marcadores verdes), a inclinação do \(CT_{CP}\) é igual à do \(CT_{LP}\) — uma aplicação direta do **Teorema do Envelope**: a derivada da função valor em relação ao parâmetro (\(q\)) coincide com a derivada parcial do objetivo avaliada no ótimo.

<iframe src="/micro-book/graficos/cap11/envoltoria-custo-total.html" title="Figura 11.3 — Envoltória de custo total" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 11.3 — Envoltória de custo total: cada curva colorida é um \(CT_{CP}\) para um nível fixo de capital \(\bar{K}\); a curva azul (\(CT_{LP}\)) é a envoltória inferior, obtida numericamente.** Os pontos verdes indicam onde cada \(CT_{CP}\) tangencia a envoltória. Use os controles para alterar \(w\) e \(v\), e as caixas de seleção para mostrar/ocultar curvas individuais e pontos de tangência.
</div>

!!! theorem "Teorema da curva envoltória"
    A curva de custo médio de longo prazo (\(\mathrm{CMe}_{LP}\)) é a **envoltória** das curvas de custo médio de curto prazo. Para cada nível de produto \(q\):

    \[
    \mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}) \quad \text{para todo } \bar{K}
    \label{eq:11.11} \tag{11.11}
    \]

    com igualdade quando \(\bar{K} = K^*(q)\), o nível ótimo de capital de longo prazo para produzir \(q\).

!!! idea "Intuição Econômica"
    **Em uma frase:** No longo prazo, a firma pode ajustar tudo — por isso seus custos nunca superam os de curto prazo.

    **Pense assim:** Um restaurante com cozinha pequena (capital fixo) gasta muito para atender 200 clientes no sábado — precisa de horas extras, delivery externo. Mas se pudesse escolher o tamanho da cozinha (longo prazo), dimensionaria para 200 e gastaria menos. A curva de CMe de longo prazo "tangencia" cada curva de curto prazo no ponto ótimo de cada configuração.

    **Por que isso importa:** A envoltória de custos de longo prazo determina a escala eficiente da firma e, portanto, o número de firmas que o mercado comporta — informação crucial para política antitruste e regulação.

!!! idea "Intuição Econômica"
    **Em uma frase:** Cada curva de custo de curto prazo é tangente à curva de longo prazo em exatamente um ponto — onde o capital fixo coincide com o capital ótimo de longo prazo para aquele nível de produto.

    **Pense assim:** Imagine três tamanhos de planta industrial: pequena, média e grande. Para baixos volumes, a planta pequena é mais barata; para médios volumes, a planta média; para altos volumes, a grande. O LRAC é construído "selecionando" a parte mais barata de cada curva de curto prazo — tangenciando cada uma no volume para o qual aquela planta é ótima.

    **Por que isso importa:** Essa propriedade, derivada formalmente do Teorema do Envelope, conecta o curto e o longo prazo de forma precisa. Ela mostra por que firmas que antecipam crescimento forte investem em plantas maiores do que o necessário no presente — porque o SRAC da planta maior tangenciará o LRAC no volume futuro esperado, e isso representa uma vantagem de custo de longo prazo.

Propriedade importante: no ponto de tangência, conforme a equação $\eqref{eq:11.12}$, o CMg de curto prazo é igual ao CMg de longo prazo:

\[
\mathrm{CMg}_{CP}(q^*; \bar{K}^*) = \mathrm{CMg}_{LP}(q^*)
\label{eq:11.12} \tag{11.12}
\]

A Figura 11.4 complementa a visão anterior, agora em termos de **custo médio**. Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória.

<iframe src="/micro-book/graficos/cap11/curto-longo-prazo.html" title="Figura 11.4 — Curva envoltória: CMe de curto e longo prazo" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 11.4 — Curva envoltória: CMe de curto e longo prazo.** Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória. Selecione \(\bar{K}\) para destacar o SRAC correspondente e ver o ponto de tangência.
</div>

### Economias e deseconomias de escala

A forma da curva \(\mathrm{CMe}_{LP}\) reflete os rendimentos de escala:

- **Rendimentos crescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) decrescente \(\Leftrightarrow\) **economias de escala**.
- **Rendimentos constantes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) constante.
- **Rendimentos decrescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) crescente \(\Leftrightarrow\) **deseconomias de escala**.

A **escala mínima eficiente** (EME) é o menor nível de produto para o qual o CMe de longo prazo atinge seu mínimo. A EME tem implicações diretas para a estrutura de mercado: se a EME é grande em relação ao tamanho do mercado, o setor tende a ter poucas firmas (oligopólio ou monopólio natural). Por exemplo, se a EME de uma montadora de automóveis é de 200 mil veículos por ano e o mercado brasileiro absorve 2 milhões, o mercado comporta no máximo dez montadoras eficientes — o que ajuda a explicar a estrutura oligopolística observada nesse setor.

!!! idea "Intuição Econômica"
    **Em uma frase:** Economias de escala significam que produzir mais sai mais barato por unidade — o custo médio cai conforme a firma cresce.

    **Pense assim:** Uma fábrica de cerveja artesanal paga quase o mesmo aluguel, energia e licença sanitária que uma grande cervejaria, mas produz muito menos garrafas para diluir esses custos. Por isso a Ambev consegue vender a R$ 3 a lata enquanto a artesanal cobra R$ 15 — a escala mínima eficiente do setor é alta.

    **Por que isso importa:** Economias de escala explicam a concentração em setores como aviação, telecomunicações e siderurgia no Brasil, e são o principal argumento em análises de fusões pelo [CADE](https://www.gov.br/cade).

Uma última propriedade relevante da envoltória é que, no mínimo da curva de LRAC, a curva de curto prazo ótima tangencia a de longo prazo *e* também tem seu próprio mínimo no mesmo ponto — ou seja, no mínimo do LRAC, o SRAC ótimo também está em seu mínimo. Isso ocorre porque, nesse ponto, o capital fixo é exatamente igual ao capital ótimo de longo prazo para aquela quantidade, e não há "deformação" de curto prazo. Esse ponto especial define a **escala eficiente mínima** da firma.

??? exercicio-resolvido "Exercício Resolvido 11.3 — Curto prazo versus longo prazo"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/4}L^{1/4}\) com \(w = 10\) e \(v = 10\).

    (a) Derive a função custo de longo prazo e mostre que o CMg é crescente.

    (b) No curto prazo, o capital está fixo em \(\bar{K} = 1\). Derive a função custo de curto prazo.

    (c) Mostre que \(CT_{LP}(q) \leq CT_{CP}(q)\) para todo \(q\), com igualdade em um ponto.

    **Solução.**

    **(a)** Com \(\alpha = \beta = 1/4\) e \(\alpha + \beta = 1/2 < 1\) (retornos decrescentes), pela condição de tangência:

    \[
    \frac{1/4 \cdot L}{1/4 \cdot K} = \frac{v}{w} = 1 \implies K = L
    \]

    Substituindo: \(K^{1/4} K^{1/4} = q \implies K^{1/2} = q \implies K^c = L^c = q^2\).

    \[
    CT_{LP} = 10q^2 + 10q^2 = 20q^2
    \]

    \[
    \mathrm{CMg}_{LP} = 40q \quad (\text{crescente em } q)
    \]

    Isso confirma: retornos decrescentes (\(\alpha + \beta < 1\)) geram CMg crescente.

    **(b)** Com \(\bar{K} = 1\): \(q = 1^{1/4} L^{1/4} = L^{1/4} \implies L = q^4\).

    \[
    CT_{CP} = v\bar{K} + wL = 10 \cdot 1 + 10 \cdot q^4 = 10 + 10q^4
    \]

    **(c)** Comparando:

    \[
    CT_{CP} - CT_{LP} = 10 + 10q^4 - 20q^2 = 10(1 - 2q^2 + q^4) = 10(1 - q^2)^2 \geq 0
    \]

    A diferença é sempre não negativa, com igualdade quando \(q^2 = 1\), ou seja, \(q = 1\). Nesse ponto, \(K^*(q=1) = 1 = \bar{K}\) — o capital fixo coincide com o ótimo de longo prazo. Para qualquer outro nível de produto, o curto prazo é mais caro, pois a firma não pode ajustar o capital.

<iframe src="/micro-book/graficos/cap11/webr-envoltoria.html" title="WebR — Envoltória de Custos" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 11.5 — Envoltória de custos: curto prazo versus longo prazo.** O código plota as curvas de CMe de curto prazo para diferentes níveis de capital fixo e a envoltória de longo prazo. Altere os parâmetros da Cobb-Douglas e os preços dos insumos para ver como a envoltória muda de forma.
</div>

---

!!! box-brasil "Box Brasil 11.2 — O peso do 'custo Brasil' na indústria de alimentos"

    O termo **"custo Brasil"** designa o conjunto de ineficiências sistêmicas que elevam os custos de produção no país acima dos padrões internacionais. Segundo levantamentos da **Confederação Nacional da Indústria (CNI)** e da **FIESP**, o custo Brasil representava, em estimativas recentes, um sobrecusto de cerca de **R$ 1,7 trilhão por ano** para a economia brasileira — equivalente a aproximadamente 20% do PIB.

    **Componentes do custo Brasil na indústria de alimentos:**

    | Componente | Impacto estimado | Descrição |
    |:---|:---|:---|
    | Carga tributária | 25–35% do faturamento | ICMS, PIS/COFINS, IPI, contribuições sobre folha |
    | Logística e transporte | 12–15% do custo total | Dependência do modal rodoviário, infraestrutura precária |
    | Energia elétrica | 8–12% dos custos industriais | Tarifas entre as mais altas do mundo |
    | Burocracia regulatória | 3–5% dos custos | Licenças, fiscalizações, cumprimento de obrigações acessórias |
    | Custo de capital | Variável | Taxas de juros historicamente elevadas |

    **Logística: o gargalo mais visível.**
    O Brasil transporta cerca de **65% de sua carga** pelo modal rodoviário, contra 25–30% nos EUA e menos de 10% na Europa. Para a indústria de alimentos, que opera com margens estreitas e produtos perecíveis, essa dependência eleva drasticamente os custos de distribuição. O frete de uma tonelada de soja de Sorriso (MT) ao Porto de Santos percorre mais de 2.000 km por estrada, a um custo estimado em US$ 90–120/tonelada — cerca do triplo do custo equivalente nos EUA (dados CNI, 2023).

    **Interpretação microeconômica.**
    Em termos da teoria dos custos, o "custo Brasil" representa um deslocamento para cima das curvas de custo das firmas brasileiras em relação a competidores internacionais. Trata-se, em grande parte, de **custos fixos** (burocracia, tributação fixa) e **custos variáveis** elevados (logística, energia). A consequência é que a **escala mínima eficiente** das firmas brasileiras tende a ser maior, dificultando a sobrevivência de empresas menores e reduzindo a competitividade internacional. A reforma tributária de 2023 (EC 132/2023), com a unificação de tributos sobre consumo (CBS e IBS), representa uma tentativa de reduzir uma das principais fontes do custo Brasil.

---

!!! box-brasil "Box Brasil 11.3 — Escala mínima eficiente e concentração na produção de soja"

    A produção de soja no Brasil ilustra de forma nítida o papel das economias de escala na determinação da estrutura produtiva. Segundo dados do **Censo Agropecuário do [IBGE](https://www.ibge.gov.br) (2017)**, enquanto 70% dos estabelecimentos produtores de soja possuem menos de 100 hectares, esses estabelecimentos respondem por apenas 10% da produção total. Os 5% maiores produtores (acima de 1.000 ha) respondem por mais de 50% da produção nacional.

    **Por que a escala importa?**

    | Componente de custo | Pequeno produtor (<100 ha) | Grande produtor (>1.000 ha) |
    |:---|:---:|:---:|
    | Custo de máquinas/ha | Elevado (subutilização) | Baixo (diluição do CF) |
    | Custo de insumos/ha | Maior (menor poder de barganha) | Menor (compras em escala) |
    | Custo logístico/tonelada | Elevado (lotes pequenos) | Menor (contratos de frete) |
    | Assistência técnica | Custo fixo alto relativo | Diluído na produção |

    Esses dados são consistentes com uma curva de CMe de longo prazo em formato de L: custos médios decrescentes até uma escala mínima eficiente (EME) em torno de 500–1.000 hectares, após a qual os ganhos de escala se estabilizam. A **CONAB** estima que o custo total de produção de soja no Mato Grosso (safra 2023/24) foi de aproximadamente R$ 4.800/ha, com produtividade média de 57 sacas/ha, resultando em custo por saca de cerca de R$ 84 para produtores de grande escala — valor significativamente inferior ao de produtores menores.

    **Implicação para política pública:** programas como o **PRONAF** (Programa Nacional de Fortalecimento da Agricultura Familiar) podem ser interpretados como subsídios que deslocam a curva de custo de pequenos produtores para baixo, compensando parcialmente a desvantagem de escala e permitindo sua permanência no mercado.

    *Fontes: IBGE — Censo Agropecuário 2017; CONAB — Custos de Produção; [CEPEA/ESALQ](https://www.cepea.esalq.usp.br).*

---

!!! box-brasil "Box Brasil 11.4 — Custo Brasil: burocracia, logística e tributação como deslocadores de custos"

    **Contexto:** O conceito de "Custo Brasil" vai além dos componentes setoriais analisados no Box Brasil anterior. Trata-se de um conjunto estrutural de ineficiências — tributárias, regulatórias, logísticas e institucionais — que desloca para cima as curvas de custo de *todas* as firmas que operam no país, independentemente do setor. Do ponto de vista da teoria dos custos, o Custo Brasil equivale a um aumento generalizado nos preços efetivos dos insumos (\(w\) e \(v\)), reduzindo a competitividade das firmas brasileiras em relação a concorrentes internacionais que operam com a mesma tecnologia, mas enfrentam custos institucionais menores.

    **Dados:** Estimativas da CNI (Confederação Nacional da Indústria, 2022) quantificam o Custo Brasil em R$ 1,7 trilhão anuais, distribuídos entre os seguintes componentes principais:

    | Componente | Custo estimado (R$ bi/ano) | Efeito teórico |
    |:---|:---:|:---|
    | Complexidade tributária | 684 | Eleva custos fixos (compliance) e variáveis (cumulatividade) |
    | Infraestrutura e logística | 382 | Eleva custo variável de transporte de insumos e produtos |
    | Insegurança jurídica | 250 | Eleva custo de capital (prêmio de risco) |
    | Burocracia e regulação | 224 | Eleva custos fixos de entrada e operação |
    | Custo do crédito | 160 | Eleva \(v\) (preço efetivo do capital) |

    Segundo o *Doing Business* do Banco Mundial (última edição, 2020), uma firma brasileira gastava em média **1.501 horas por ano** para cumprir obrigações tributárias — contra 175 horas na média da OCDE e 138 horas no Chile. Abrir uma empresa demandava 17 dias no Brasil versus 4 na Nova Zelândia. Esses custos de transação, embora não apareçam diretamente na função de produção \(f(L,K)\), funcionam como um imposto implícito sobre todos os insumos.

    **Análise:** A teoria dos custos oferece um enquadramento preciso para o Custo Brasil. Pelo Lema de Shephard, \(\partial C / \partial w = L^c > 0\): qualquer elevação no preço efetivo de um insumo desloca a função custo para cima proporcionalmente à intensidade de uso daquele insumo. A burocracia tributária funciona como um aumento em \(w\) (horas de trabalho desviadas para compliance em vez de produção); a infraestrutura precária funciona como um aumento no custo de transporte (insumo intermediário); e o custo elevado do crédito funciona como um aumento em \(v\), encarecendo o capital. O efeito combinado é uma elevação da escala mínima eficiente (EME): firmas menores, que não conseguem diluir esses custos fixos, são desproporcionalmente penalizadas — o que ajuda a explicar a alta informalidade empresarial brasileira (cerca de 40% do PIB, segundo estimativas do IBRE/FGV).

    **Para refletir:** Se a reforma tributária (EC 132/2023) reduzir o tempo de compliance de 1.501 para 500 horas/ano e o custo logístico cair 20% com investimentos em ferrovias, qual seria o efeito esperado sobre a curva de CMe das firmas brasileiras? Que tipos de firma — intensivas em trabalho ou em capital, grandes ou pequenas — se beneficiariam mais?
