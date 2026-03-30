# Quanto Produzir Quando o Rival Está Olhando: Cournot e Oligopólio

## 9a.5 Quanto Produzir Quando o Rival Está Olhando: Cournot e Oligopólio

Até agora, os jogos tinham botões: "cooperar ou trair", "futebol ou cinema". Clique numa opção, fim. Mas a Ambev não escolhe entre "produzir" e "não produzir" — ela escolhe *quantos milhões de litros* produzir. E o iFood não escolhe entre "cobrar caro" e "cobrar barato" — ele fixa um preço *exato*. Os jogos economicamente mais importantes têm estratégias contínuas: números reais, não botões. E os três modelos clássicos de oligopólio — Cournot (quantidades), Bertrand (preços) e Stackelberg (líder-seguidor) — são os exemplos paradigmáticos.

O conceito de oligopólio remonta, pelo menos, a Cournot (1838), que analisou a competição entre duas firmas que extraem água de um poço mineral — o duopólio de Cournot. Cinquenta anos depois, o matemático Joseph Bertrand (1883) publicou uma resenha do trabalho de Cournot sugerindo que, se as firmas competem em preços em vez de quantidades, o resultado é radicalmente diferente: o preço cai para o custo marginal mesmo com apenas dois concorrentes. O debate Cournot-Bertrand — mesma estrutura de mercado, variável estratégica diferente, resultados opostos — é um dos mais frutíferos da história do pensamento econômico e continua relevante para a análise antitruste moderna. Stackelberg (1934) acrescentou a dimensão da sequencialidade: o que acontece se uma firma é líder e move antes das demais? O resultado, como veremos, depende crucialmente da capacidade de comprometimento crível — tema que será aprofundado no Módulo 9b com o conceito de equilíbrio perfeito em subjogos.

A pergunta central desta seção é: como a forma da competição (preço vs. quantidade) e a ordem do movimento (simultâneo vs. sequencial) afetam o resultado de mercado? Extensões desses modelos — diferenciação de produto, colusão tácita, dissuasão de entrada, fusões e regulação — são tratadas nos Capítulos 16a e 16b.

### Competição de Cournot: quanto produzir quando o vizinho também está produzindo

Começamos pelo modelo mais antigo e, em muitos sentidos, mais intuitivo de oligopólio. No modelo de Cournot (1838), cada firma decide *quanto* produzir, e o preço de mercado se ajusta para equilibrar a oferta total com a demanda. A variável estratégica é a quantidade, e o jogo é simultâneo: nenhuma firma observa a decisão da outra antes de se comprometer com sua produção.

Duas firmas escolhem simultaneamente as quantidades \(q_1, q_2 \geq 0\). A demanda inversa é \(P(Q) = a - bQ\), onde \(Q = q_1 + q_2\), e o custo marginal é constante e igual a \(c\) para ambas as firmas.

O lucro da firma \(i\) é:

\[
\pi_i(q_i, q_j) = (a - b(q_i + q_j) - c) \, q_i
\label{eq:9a.4} \tag{9a.4}
\]

Observe que o lucro de cada firma depende não apenas da própria quantidade, mas também da quantidade produzida pela rival — a interdependência estratégica que motiva toda a teoria dos jogos. Cada firma maximiza seu lucro tomando como dada a quantidade da outra, o que gera a seguinte condição de primeira ordem e a correspondente **função de melhor-resposta** (melhor resposta):

\[
q_i^*(q_j) = \frac{a - c - bq_j}{2b}
\label{eq:9a.5} \tag{9a.5}
\]

A função de melhor-resposta é decrescente: quanto mais a rival produz, menos é ótimo para a firma produzir. Em linguagem estratégica, as quantidades são **substitutos estratégicos** — o aumento da ação de um jogador reduz a melhor resposta do outro. O equilíbrio de Nash (Cournot-Nash) é obtido pela interseção das funções de melhor-resposta:

\[
q_1^* = q_2^* = \frac{a-c}{3b}, \qquad Q^* = \frac{2(a-c)}{3b}, \qquad P^* = \frac{a + 2c}{3}
\label{eq:9a.6} \tag{9a.6}
\]

O lucro de cada firma no equilíbrio é:

\[
\pi_i^* = \frac{(a-c)^2}{9b}
\label{eq:9a.7} \tag{9a.7}
\]

**Extensão: \(N\) firmas simétricas.** Com \(N\) firmas idênticas, o equilíbrio de Cournot é:

\[
q_i^* = \frac{a-c}{(N+1)b}, \qquad P^* = \frac{a + Nc}{N+1}
\label{eq:9a.8} \tag{9a.8}
\]

Pela equação $\eqref{eq:9a.8}$, quando \(N \to \infty\), \(P^* \to c\): o resultado converge para competição perfeita. Esse resultado é notável: ele conecta a teoria dos jogos à teoria clássica de mercados competitivos, mostrando que a competição perfeita é o caso limite de um oligopólio de Cournot quando o número de firmas cresce indefinidamente.

**Extensão: Custos assimétricos.** Com custos marginais \(c_1 \neq c_2\):

\[
q_1^* = \frac{a - 2c_1 + c_2}{3b}, \qquad q_2^* = \frac{a - 2c_2 + c_1}{3b}
\]

Comparando com o equilíbrio simétrico $\eqref{eq:9a.6}$, a firma com menor custo produz mais e obtém lucro maior. Esse resultado tem implicação direta para a análise de fusões: se uma fusão reduz custos (gera eficiências), a firma resultante aumenta sua produção e pode até reduzir o preço de mercado. O CADE precisa ponderar esse efeito de eficiência contra o aumento de poder de mercado.

### Competição de Bertrand: o paradoxo de que dois é multidão

O que acontece quando as firmas competem em preços em vez de quantidades? A resposta, surpreendente e provocadora, é conhecida como o *paradoxo de Bertrand*: bastam duas firmas para que o preço caia até o custo marginal, eliminando completamente os lucros econômicos. A mudança da variável estratégica — de quantidade para preço — transforma radicalmente a natureza da competição.

Duas firmas com produtos homogêneos e custo marginal constante \(c\) escolhem simultaneamente os preços \(p_1, p_2\). Os consumidores compram da firma com menor preço.

O **paradoxo de Bertrand**: o único equilíbrio de Nash é \(p_1^* = p_2^* = c\), com lucro zero para ambas as firmas — mesmo com apenas dois concorrentes, o resultado é competitivo. Por que isso é paradoxal? Porque contradiz a intuição de que um mercado com apenas duas firmas deveria gerar lucros oligopolísticos substanciais. A razão é a extrema sensibilidade da demanda: com produtos perfeitamente homogêneos, uma diferença infinitesimal de preço desloca *toda* a demanda para a firma mais barata. Essa "competição à navalha" força ambas as firmas ao custo marginal — um resultado idêntico ao de competição perfeita com infinitas firmas.

!!! idea "Intuição Econômica"
    **Em uma frase:** A variável estratégica da firma — preço ou quantidade — determina radicalmente o equilíbrio do mercado.

    **Pense assim:** Imagine duas padarias vizinhas no mesmo bairro. Se cada uma decide *quantos pães* assar de manhã (capacidade), estamos no mundo de Cournot: a produção é decidida antes, e o preço se ajusta pela demanda. Se cada uma decide o *preço* na vitrine a cada hora (e pode atender toda a demanda), estamos no mundo de Bertrand: qualquer diferença de preço desvia todos os clientes.

    **Quando usar cada modelo:**

    - **Cournot** é mais apropriado quando a capacidade é comprometida antes da competição em preços — petróleo, aço, companhias aéreas em rotas com slots limitados.
    - **Bertrand** é mais apropriado quando os preços são flexíveis e a capacidade não é restrição — varejo online, serviços digitais, telecomunicações.
    - **Bertrand com diferenciação** (produtos não homogêneos) elimina o paradoxo e gera lucros positivos — a maioria dos mercados reais.

    **Por que isso importa para o Brasil:** O CADE precisa escolher o modelo correto ao simular fusões. Na aviação (Cournot por slots), fusões têm efeito grande sobre preços; no varejo online (Bertrand com diferenciação), o efeito pode ser menor.

!!! idea "Intuição Econômica"
    **Cournot vs. Bertrand: mesma estrutura de mercado, resultados opostos.**

    Considere dois mercados com exatamente duas firmas e produtos homogêneos. Em Cournot, o preço de equilíbrio é \(P^C = (a + 2c)/3\), com margens positivas para as firmas. Em Bertrand, \(P^B = c\) — margem zero. A única diferença é a variável estratégica escolhida: quantidade ou preço.

    Esse resultado — às vezes chamado de **paradoxo de Bertrand** — captura algo profundo sobre como a natureza da competição é tão importante quanto o número de concorrentes. Dois concorrentes podem gerar resultado competitivo (Bertrand com produtos homogêneos) ou resultado quase monopolístico (Cournot com poucas firmas).

    A resolução do paradoxo em contextos reais vem de três fontes: (i) **restrições de capacidade** — se cada firma não consegue atender toda a demanda sozinha, a competição Bertrand não leva mais ao custo marginal (resultado de Edgeworth-Kreps-Scheinkman); (ii) **diferenciação de produto** — com bens substitutos imperfeitos, os clientes não migram instantaneamente para o fornecedor mais barato, restaurando margens positivas; (iii) **custos de mudança** — lealdade do cliente e custos de troca (switching costs) tornam a demanda menos sensível a pequenas diferenças de preço. Nos mercados reais, os três fatores coexistem — e o julgamento de qual modelo é mais adequado é central para a análise antitruste.

<iframe src="/micro-book/graficos/cap09/cournot-reacao.html" title="Figura 9a.3 — Funções de melhor-resposta de Cournot" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.3 — Funções de melhor-resposta de Cournot.** Ajuste os parâmetros de demanda (\(a\), \(b\)) e os custos marginais (\(c_1\), \(c_2\)). O equilíbrio de Nash é a interseção. Clique em "Animar convergência" para visualizar a dinâmica de melhores respostas alternadas.
</div>

### Competição de Stackelberg: a vantagem de jogar primeiro

Os modelos de Cournot e Bertrand pressupõem decisões simultâneas. Mas em muitos mercados, uma firma estabelecida — por tamanho, reputação ou capacidade instalada — age como líder, tomando sua decisão antes das concorrentes. Existe vantagem em mover primeiro? E como a seguidora deve reagir? O modelo de Stackelberg (1934) responde a essas perguntas, introduzindo a dimensão temporal na competição por quantidades.

!!! note "Por que Stackelberg está neste módulo?"
    Stackelberg é, rigorosamente, um jogo *sequencial* — e portanto pertenceria ao Módulo 9b. Apresentamo-lo aqui por uma razão pedagógica: a comparação direta com Cournot e Bertrand (mesma estrutura de mercado, variável diferente) é mais iluminadora do que tratá-lo isoladamente. O leitor deve saber, porém, que a justificativa formal para o resultado de Stackelberg — a indução retroativa e o equilíbrio perfeito em subjogos — será desenvolvida no Módulo 9b (Seção 9b.1). Em particular, a "vantagem do primeiro movimento" só existe porque a líder se *compromete credivelmente* com uma quantidade; se pudesse mudar de ideia, o resultado voltaria a ser Cournot. A credibilidade desse comprometimento é o tema central do próximo módulo.

No modelo de Stackelberg, a firma 1 (líder) escolhe \(q_1\) *primeiro*, e a firma 2 (seguidora) observa \(q_1\) e escolhe \(q_2\). A solução é por **indução retroativa** (conceito formalizado no Módulo 9b, Seção 9b.1).

**Passo 1 — Seguidora.** Dado \(q_1\), a firma 2 maximiza \(\pi_2\):

\[
q_2^*(q_1) = \frac{a - c_2 - bq_1}{2b}
\]

**Passo 2 — Líder.** A firma 1 antecipa a reação da firma 2 e maximiza:

\[
\pi_1 = \left(a - bq_1 - b \cdot \frac{a - c_2 - bq_1}{2b} - c_1\right) q_1 = \left(\frac{a + c_2 - 2c_1}{2} - \frac{bq_1}{2}\right) q_1
\]

A CPO gera (para \(c_1 = c_2 = c\)):

\[
q_1^S = \frac{a-c}{2b}, \qquad q_2^S = \frac{a-c}{4b}, \qquad Q^S = \frac{3(a-c)}{4b}, \qquad P^S = \frac{a + 3c}{4}
\label{eq:9a.9} \tag{9a.9}
\]

A [Tabela 9a.5](#tabela-9a-5) compara Cournot, Stackelberg, monopólio e competição perfeita:

<a id="tabela-9a-5"></a>

| Modelo | \(Q\) total | Preço \(P\) | \(\pi_{\text{líder}}\) | \(\pi_{\text{seguidora}}\) |
|:-------|:-----------|:-----------|:----------------------|:--------------------------|
| Monopólio | \(\frac{a-c}{2b}\) | \(\frac{a+c}{2}\) | \(\frac{(a-c)^2}{4b}\) | — |
| Stackelberg | \(\frac{3(a-c)}{4b}\) | \(\frac{a+3c}{4}\) | \(\frac{(a-c)^2}{8b}\) | \(\frac{(a-c)^2}{16b}\) |
| Cournot | \(\frac{2(a-c)}{3b}\) | \(\frac{a+2c}{3}\) | \(\frac{(a-c)^2}{9b}\) | \(\frac{(a-c)^2}{9b}\) |
| Comp. Perfeita | \(\frac{a-c}{b}\) | \(c\) | 0 | 0 |

<div class="caption-obj" markdown>
**Tabela 9a.5 — Comparação Cournot, Stackelberg, monopólio e competição perfeita.**
</div>

A líder em Stackelberg produz *mais* e lucra *mais* que em Cournot. A seguidora produz *menos* e lucra *menos*. A quantidade total é maior e o preço é menor — o consumidor prefere Stackelberg a Cournot. Em termos econômicos, a tabela revela uma hierarquia clara de bem-estar do consumidor: competição perfeita > Stackelberg > Cournot > Monopólio. Quanto mais intensa a competição — seja pelo número de firmas ou pela estrutura do jogo — mais o excedente é transferido dos produtores para os consumidores.

!!! tip "Vantagem do primeiro movimento"
    A vantagem da líder em Stackelberg vem do **comprometimento crível** com uma quantidade alta. Se a líder pudesse mudar de ideia depois de observar \(q_2\), o resultado voltaria a ser Cournot. O comprometimento (ex: investimento irreversível em capacidade) é o que confere poder à líder.

<iframe src="/micro-book/graficos/cap09/stackelberg-reacao.html" title="Figura 9a.4 — Stackelberg vs Cournot" class="graph-iframe" style="height:610px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9a.4 — Stackelberg vs Cournot.** A isoprofit da líder tangencia a função de melhor-resposta da seguidora no ponto de Stackelberg. Compare com o equilíbrio de Cournot (interseção das funções de melhor-resposta). Altere os custos para ver o efeito de assimetrias.
</div>

!!! box-brasil "Box Brasil — CADE, fusões e o mercado de cervejas: Ambev, Heineken e Petrópolis"
    O mercado brasileiro de cervejas é um dos mais concentrados do mundo e ilustra com precisão como os modelos de Cournot, Bertrand e Stackelberg se articulam com a análise antitruste do **CADE** (Conselho Administrativo de Defesa Econômica).

    **Estrutura do mercado**

    O mercado de cervejas no Brasil é dominado por três grupos:

    | Grupo | Principais marcas | Market share estimado (2024) |
    |:------|:------------------|:----------------------------:|
    | Ambev (InBev) | Skol, Brahma, Antarctica, Bohemia, Corona | ~45% |
    | Heineken Brasil | Heineken, Kaiser, Amstel, Sol | ~20% |
    | Petrópolis | Itaipava, Crystal, TNT, Black Princess | ~11% |
    | Outros | Backer, Cervas artesanais, importadas | ~24% |

    Os três maiores grupos acumulam cerca de **76% do mercado**, configurando um oligopólio altamente concentrado — com **HHI** (Índice Herfindahl-Hirschman) estimado acima de 2.500, bem acima do limiar de 1.500 adotado pelo CADE como sinal de concentração elevada.

    **Modelos de oligopólio aplicados ao setor**

    A Ambev, como líder histórica de mercado e de custo mais baixo (economias de escala na produção e logística), opera frequentemente como **líder de Stackelberg**: define volumes de produção e promoções com antecedência, e os demais ajustam suas estratégias. Em episódios de guerra de preços — como a disputa pelo mercado popular (cervejas abaixo de R\$ 3,00 a lata) —, o mercado se aproxima do modelo de **Bertrand com diferenciação**: marcas são substitutos imperfeitos, e a migração de consumidores entre marcas depende de preço, disponibilidade no PDV e identidade de marca.

    **Análise do CADE: o caso Heineken/Brasil Kirin (2017)**

    Em 2017, o CADE analisou a aquisição da Brasil Kirin (Schincariol/Devassa) pela Heineken. Usando simulação de fusão baseada em modelo de Bertrand com diferenciação, o CADE estimou os efeitos sobre preços e market share. O órgão aprovou a operação com restrições: a Heineken foi obrigada a vender a marca Devassa para evitar concentração excessiva em cervejas populares no Nordeste — região em que as marcas eram substitutos mais próximos.

    **Lição teórica:** A escolha do modelo de oligopólio (Cournot vs. Bertrand vs. Stackelberg) não é indiferente para a análise antitruste. O método GUPPI (*Gross Upward Pricing Pressure Index*), padrão internacional em análise de fusões horizontais, é derivado diretamente de um modelo de Bertrand com diferenciação — e o CADE passou a adotá-lo sistematicamente a partir do Guia para Análise de Atos de Concentração Horizontal (2016).

    **Fonte**: CADE, Ato de Concentração nº 08700.001642/2017-05 (Heineken/Brasil Kirin); CADE, Guia para Análise de Atos de Concentração Horizontal (2016).

!!! box-mundo "Box Mundo 9a.1 — A OPEP como jogo repetido: cartéis, cotas e traição endêmica"

    **Contexto:** A Organização dos Países Exportadores de Petróleo (OPEP), fundada em 1960, é o cartel mais visível e longevo da economia mundial. Seus membros — incluindo Arábia Saudita, Iraque, Irã, Kuwait, Venezuela e, desde 2016, aliados como a Rússia no formato OPEP+ — controlam aproximadamente 40% da produção mundial de petróleo e detêm cerca de 80% das reservas provadas convencionais. O problema central da OPEP é um dilema dos prisioneiros em escala geopolítica: cada membro se beneficia individualmente ao produzir acima de sua cota (capturando receita extra a preços elevados sustentados pelos demais), mas se todos trapaceiam, a oferta excedente derruba o preço e todos perdem. A estrutura de payoffs satisfaz exatamente a condição \(T > R > P > S\) do Dilema dos Prisioneiros: trair a cota é a estratégia dominante de curto prazo, mas a traição mútua gera o pior resultado coletivo.

    A história da OPEP é, na prática, uma sequência de ciclos cooperação-traição-punição prevista pela teoria de jogos repetidos (Módulo 9b). A Arábia Saudita frequentemente desempenha o papel de *swing producer* — absorvendo cortes de produção para sustentar o preço, enquanto membros menores excedem suas cotas. Essa assimetria de custos e capacidade ociosa confere à Arábia Saudita uma posição análoga ao líder de Stackelberg: ela define o "tom" da produção e os demais reagem. Quando a traição se torna insustentável, episódios de punição coletiva — como a guerra de preços de 1985–86, a decisão de não cortar produção em 2014–16 e a breve guerra de preços saudita-russa de março de 2020 — restauram temporariamente a disciplina.

    **Dados:** Alhajji e Huettner (2000), analisando dados de produção da OPEP entre 1973 e 1998, estimaram que os membros excederam suas cotas em média 10–20% ao longo do período, com picos de até 30% em períodos de baixa fiscalização interna. Smith (2005) mostrou que o grau de cumprimento das cotas é positivamente correlacionado com o preço do petróleo (quando o preço está alto, o incentivo para trair é maior, mas o custo da punição também) e negativamente correlacionado com o número de membros efetivos — confirmando a previsão teórica de que cartéis maiores são mais difíceis de sustentar. Estudos mais recentes de Colgan (2014) documentaram que, entre 1980 e 2009, os membros da OPEP cumpriram integralmente suas cotas em apenas cerca de 40% dos trimestres observados.

    No acordo OPEP+ de abril de 2020 — o maior corte coordenado da história (9,7 milhões de barris/dia) —, o monitoramento foi reforçado por um comitê ministerial conjunto, mas Iraque e Nigéria consistentemente excederam suas cotas em 2020–2022, enquanto a Arábia Saudita fez cortes voluntários adicionais para compensar. Em 2024–2025, com a transição energética reduzindo a demanda projetada de longo prazo, a coesão do cartel enfrenta pressão estrutural: o fator de desconto efetivo \(\delta\) dos membros diminui à medida que o horizonte de relevância do petróleo encurta.

    **Análise:** A OPEP ilustra com precisão os modelos de oligopólio e jogos repetidos deste capítulo. A competição por cotas é um jogo de Cournot (firmas escolhem quantidades), e o equilíbrio não cooperativo de Nash-Cournot — em que cada membro produz sua quantidade de melhor resposta — gera preços substancialmente abaixo do nível de cartel. A cooperação (cotas restritivas) é sustentável como equilíbrio de jogo repetido apenas quando \(\delta \geq \delta^* = (T-R)/(T-P)\), condição que depende da paciência dos membros, da capacidade de monitoramento e do número de participantes. A persistência da traição endêmica confirma que a condição de sustentabilidade é frequentemente violada na prática — seja por heterogeneidade de interesses (países com necessidades fiscais urgentes, como Venezuela e Irã sob sanções, têm \(\delta\) efetivamente baixo), seja pela dificuldade de monitoramento preciso da produção real. A OPEP é, simultaneamente, o melhor exemplo de um cartel que funciona *parcialmente* e a confirmação empírica de que a cooperação plena em dilemas dos prisioneiros é extraordinariamente difícil.

    **Fonte:** Alhajji, A. F. e Huettner, D. (2000). "OPEC and Other Commodity Cartels: A Comparison." *Energy Policy*, 28(15), 1151–1164. Smith, James L. (2005). "Inscrutable OPEC? Behavioral Tests of the Cartel Hypothesis." *The Energy Journal*, 26(1), 51–82. Colgan, Jeff D. (2014). "The Emperor Has No Clothes: The Limits of OPEC in the Global Oil Market." *International Organization*, 68(3), 599–632.

!!! box-mundo "Box Mundo 9a.3 — Leilões de espectro de telecomunicações: bilhões em jogo na teoria dos jogos"

    **Contexto:** Os leilões de espectro eletromagnético para telecomunicações (3G, 4G, 5G) são uma das aplicações mais espetaculares — e lucrativas — da teoria dos jogos ao desenho de políticas públicas. Governos ao redor do mundo vendem licenças de uso de faixas de frequência para operadoras de telecomunicações, e o formato do leilão determina não apenas a receita arrecadada, mas também a eficiência alocativa (se as frequências vão para as empresas que mais as valorizam) e a estrutura de mercado resultante. Os economistas Paul Milgrom e Robert Wilson, laureados com o Nobel de Economia em 2020, revolucionaram esse campo ao desenvolver a teoria de leilões com múltiplos itens interdependentes e ao projetar o *Simultaneous Multiple Round Auction* (SMRA), adotado pela FCC americana em 1994.

    **Dados:** O leilão da FCC de 1994 (Broadband PCS) arrecadou US$ 7,7 bilhões — na época, o maior leilão da história. O leilão britânico de 3G em 2000, desenhado pelo economista Ken Binmore com base na teoria de jogos, arrecadou £22,5 bilhões (cerca de 2,5% do PIB do Reino Unido), superando todas as expectativas. Em contraste, o leilão de 3G da Holanda em 2000 arrecadou uma fração do esperado: com apenas cinco licenças e exatamente cinco incumbentes, o formato do leilão eliminou a competição efetiva — um caso clássico de falha no desenho de mecanismo. O leilão brasileiro de 5G em 2021 (Anatel) envolveu compromissos de investimento de R$ 47,2 bilhões e utilizou um formato de leilão combinatório com rodadas ascendentes, exigindo das operadoras (Claro, Vivo, TIM e entrantes regionais) estratégias de lance que são, formalmente, equilíbrios de Nash bayesianos em jogos com informação incompleta (Módulo 9c).

    **Análise:** Leilões de espectro ilustram vários conceitos deste capítulo e dos módulos seguintes. A interação estratégica entre poucos licitantes (tipicamente 3–6 operadoras) configura um jogo oligopolístico: cada empresa considera não apenas sua própria valoração das frequências, mas como seus lances afetam o comportamento dos rivais. O risco de conluio tácito — operadoras sinalizando intenções através dos dígitos finais dos lances, prática documentada por Cramton e Schwartz (2000) nos leilões da FCC — é um dilema dos prisioneiros: todas se beneficiariam de preços baixos, mas cada uma tem incentivo para desviar se acreditar que obterá uma licença valiosa. O desenho do leilão é, portanto, um exercício de **desenho de mecanismo** (Módulo 9d): o regulador escolhe as regras do jogo sabendo que os jogadores otimizarão dentro dessas regras.

    **Para refletir:** Por que o leilão britânico de 3G foi um sucesso e o holandês um fracasso, se ambos vendiam o mesmo tipo de ativo? (Dica: pense no número de licenças versus o número de incumbentes e como isso afeta a intensidade da competição.)

    **Fonte:** Milgrom, Paul (2004). *Putting Auction Theory to Work*. Cambridge University Press. Binmore, Ken e Klemperer, Paul (2002). "The Biggest Auction Ever: the Sale of the British 3G Telecom Licences." *Economic Journal*, 112(478), C74–C96. Cramton, Peter e Schwartz, Jesse (2000). "Collusive Bidding: Lessons from the FCC Spectrum Auctions." *Journal of Regulatory Economics*, 17(3), 229–252.

---

Os modelos de oligopólio apresentados acima não são meros exercícios teóricos — eles fornecem a estrutura analítica que órgãos reguladores como o CADE utilizam diariamente para avaliar práticas anticompetitivas. O primeiro Box Brasil deste capítulo examina precisamente essa conexão entre teoria e prática regulatória.

!!! box-brasil "Box Brasil — Cartéis de postos de combustíveis: conluio, detecção e punição"
    O mercado de revenda de combustíveis no Brasil é um dos campos mais ativos de investigação antitruste pelo **CADE** (Conselho Administrativo de Defesa Econômica). A frequência de cartéis nesse setor oferece um laboratório natural para a teoria dos jogos.

    **Por que o conluio é frequente nesse mercado?**

    A teoria dos jogos repetidos (Módulo 9b) identifica condições que facilitam a sustentação de conluio como equilíbrio: (i) poucas firmas no mercado relevante; (ii) produto homogêneo (gasolina comum é igual em qualquer posto); (iii) preços facilmente observáveis (placas na entrada); (iv) interação repetida entre os mesmos competidores. O mercado de revenda de combustíveis em muitas cidades brasileiras satisfaz todas essas condições.

    **Casos recentes**

    Apenas entre 2024 e 2025, o CADE condenou cartéis de revenda de combustíveis em três estados:

    - **Distrito Federal (2025)**: sete redes de postos condenadas, com multas superiores a **R\$ 150 milhões**.
    - **Paraná (2024)**: 12 postos e 2 pessoas físicas condenados em Francisco Beltrão, com multas de **R\$ 59 milhões**.
    - **Santa Catarina (2024)**: cartel em Joinville condenado com multas de **R\$ 55 milhões**.

    **Mecanismos de sustentação do cartel**

    Na linguagem da teoria dos jogos, os postos operam uma estratégia do tipo *grim trigger* informal: todos praticam preços elevados e, se algum desviar, os demais retomam a competição. A transparência dos preços (afixados em totens luminosos) funciona como mecanismo de monitoramento — qualquer desvio é imediatamente detectável.

    **O papel do CADE e do programa de leniência**

    O CADE atua como um mecanismo institucional que torna o conluio mais custoso: ao impor multas elevadas (até 20% do faturamento bruto), a autoridade antitruste reduz o payoff esperado da cooperação ilícita. O programa de leniência oferece redução de pena ao primeiro membro do cartel que denunciar, explorando a mesma lógica do Dilema dos Prisioneiros: a tentação de trair o cartel em troca de imunidade desestabiliza o acordo.

    **Fonte**: CADE, decisões do Tribunal Administrativo (2024–2025).

---

Se o mercado de combustíveis ilustra a dinâmica de cartéis em mercados locais, o transporte aéreo doméstico oferece um panorama complementar: um oligopólio altamente concentrado em escala nacional, no qual coexistem elementos de Cournot, Bertrand e Stackelberg dependendo da rota e do horizonte temporal.

!!! box-brasil "Box Brasil — Gol, Latam e Azul: competição estratégica a 10.000 metros"
    O transporte aéreo doméstico no Brasil é um dos mercados mais concentrados do país e ilustra diretamente os modelos de oligopólio.

    **Concentração extrema**

    Dados da **[ANAC](https://www.anac.gov.br)** para 2024 mostram que três companhias detêm **98,9%** do mercado doméstico:

    | Companhia | Market share (2024) |
    |:----------|:-------------------|
    | Latam     | 39,1%              |
    | Gol       | 30,7%              |
    | Azul      | 29,7%              |
    | Outras    | 0,5%               |

    **Qual modelo se aplica?**

    - Em **rotas com concorrência direta** (São Paulo–Rio), a competição se aproxima de **Bertrand com diferenciação**: preços são a variável estratégica.
    - Em **rotas com slots limitados** (Congonhas, Santos Dumont), a competição se aproxima de **Cournot**: a oferta de assentos é decidida antecipadamente.
    - A dinâmica de **liderança de preço** em promoções evoca o modelo de **Stackelberg**, com a Latam frequentemente agindo como líder.

    **Barreiras à entrada e credibilidade de ameaças**

    A entrada de novas companhias é dificultada por custos afundados (frota, certificação, slots), economias de escala e rede de rotas. A história do setor inclui episódios de guerras de preço que podem ser interpretados como estratégias de deterrência: companhias incumbentes praticaram preços agressivos em rotas disputadas por entrantes (Webjet, Avianca Brasil).

    **Fonte**: ANAC, Relatório de Demanda e Oferta do Transporte Aéreo 2024; CADE, Cadernos do CADE — Mercado de Transporte Aéreo.

---

??? code "R Interativo — Dados reais do game show Friend or Foe (Adams, 2025, Cap. 1)"
    No início dos anos 2000, o programa de TV *Friend or Foe* (Game Show Network) colocava duplas de participantes para jogar um Dilema dos Prisioneiros real — o *Trust Box* — com milhares de dólares em jogo. Cada jogador escolhia "Friend" (cooperar) ou "Foe" (trair). Se ambos cooperavam, dividiam o prêmio igualmente; se um traía e o outro cooperava, o traidor ficava com tudo; se ambos traíam, ninguém recebia nada.

    Os dados de 227 episódios (Kalist, 2004; List, 2006) estão disponíveis no pacote R `Ecdat`. Explore: qual fração coopera? A decisão depende do valor em jogo? Da idade?

    <iframe id="iframe-9a5" src="/micro-book/graficos/cap09/webr-friend-foe.html" title="Figura 9a.5 — Friend or Foe" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9a.5 — Análise do game show Friend or Foe com dados reais.** O WebR executa R diretamente no navegador (sem servidor). Altere o código para explorar: adicione <code>glm(play == "friend" ~ age + cash, family=binomial, data=df)</code> para estimar um modelo logit.
    </div>

---

??? code "R Interativo — Cournot Duopólio: equilíbrio analítico e gráfico (Adams, 2025, Cap. 3)"
    O modelo de Cournot com demanda linear admite solução analítica. Neste box interativo, você pode alterar os parâmetros de demanda (\(a\), \(b\)) e os custos marginais (\(c_1\), \(c_2\)) para explorar como o equilíbrio muda. O R calcula quantidades, preço e lucros de equilíbrio e plota as funções de melhor-resposta.

    **Exercício sugerido:** mude \(c_2\) para 40 e compare com o caso simétrico. A firma de custo alto produz menos — qual é o efeito sobre o preço de mercado?

    <iframe src="/micro-book/graficos/cap09/webr-proto.html" title="Figura 9a.6 — Proto" class="graph-iframe" style="height:1060px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9a.6 — Equilíbrio de Cournot com parâmetros editáveis.** Altere <code>a</code>, <code>b</code>, <code>c1</code>, <code>c2</code> e re-execute. Baseado em Adams (2025, Cap. 3).
    </div>

---

*Nos jogos simultâneos, todos apostam no escuro. No próximo módulo, alguém move primeiro — e isso muda tudo. And now for something completely different.*
