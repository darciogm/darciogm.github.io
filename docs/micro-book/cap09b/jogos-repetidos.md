# Amanhã Nos Encontramos de Novo: Jogos Repetidos e Cooperação

## 9b.2 Amanhã Nos Encontramos de Novo: Jogos Repetidos e Cooperação

A seção anterior tratou de interações que acontecem uma vez e acabam. Mas pense nas relações econômicas que realmente importam: Ambev e Heineken competem *todo mês*. Brasil e Argentina negociam comércio *todo ano*. Você e seu colega de trabalho interagem *todo dia*. Quando o jogo se repete, uma possibilidade fascinante emerge: **a sombra do futuro disciplina o presente**. Se eu sei que te encontro amanhã, tenho incentivo para não te trair hoje — porque amanhã você pode me punir. Será que a cooperação pode nascer do puro egoísmo, sem contratos, sem regulador, sem lei?

É fundamental distinguir entre dois conceitos relacionados: o **jogo de estágio** (o jogo original, jogado a cada período) e o **jogo repetido** (a sequência de interações ao longo do tempo). O jogo de estágio captura a estrutura de incentivos de cada interação isolada; o jogo repetido adiciona a dimensão temporal e a possibilidade de condicionamento das ações à história passada. Estratégias no jogo repetido são, portanto, **planos contingentes** que podem depender de tudo que aconteceu até o período corrente — e essa riqueza estratégica é o que abre espaço para a cooperação.

### Jogos finitamente repetidos

A primeira pergunta é natural: se o Dilema dos Prisioneiros é jogado repetidamente entre os mesmos jogadores, a cooperação pode emergir? Se o número de repetições é finito e conhecido, a resposta é decepcionantemente negativa. A lógica é a seguinte: no último período \(T\), não há futuro — e portanto nenhuma ameaça de punição futura funciona. Ambos traem em \(T\). Mas então, em \(T-1\), ambos sabem que a traição ocorrerá em \(T\) independentemente do que aconteça em \(T-1\) — logo não há incentivo para cooperar em \(T-1\). O argumento se desenrola até o primeiro período, como um dominó que desmorona de trás para frente.

Se o Dilema dos Prisioneiros é repetido um número finito \(T\) de vezes (e isso é conhecimento comum), a indução retroativa a partir do período \(T\) implica que o único EPS é a repetição do equilíbrio de estágio (Trair, Trair) em todos os períodos.

O resultado de *unraveling* tem uma implicação prática importante para a economia brasileira: acordos de leniência no CADE frequentemente geram o rompimento do cartel precisamente porque introduzem a possibilidade de que o jogo "termine" — um membro pode delatar e romper a cooperação antes que os outros o façam. A perspectiva de um término iminente destrói o mecanismo de sustentação cooperativa.

Vale notar que o *unraveling* é um fenômeno geral que aparece em diversos contextos econômicos além do Dilema dos Prisioneiros. No mercado de trabalho, a contratação antecipada de profissionais (recrutamento de estudantes universitários antes da formatura) é um exemplo de *unraveling*: cada empregador tem incentivo para antecipar sua oferta antes dos demais, e esse incentivo se propaga retroativamente até que ofertas são feitas cada vez mais cedo — resultando em ineficiência. O fenômeno é tão disseminado que motivou a criação de mecanismos centralizados de alocação, como o *matching* hospitalar (Roth e Peranson, 1999), analisado no Capítulo 22.

!!! note "Unraveling e exceções"
    O resultado de "desvendamento" (*unraveling*) é forte mas depende de hipóteses restritivas: (i) jogo de estágio com equilíbrio único; (ii) horizonte finito conhecido. Se o jogo de estágio tem múltiplos equilíbrios (como BoS), ou se há incerteza sobre o horizonte, a cooperação pode ser sustentada mesmo em jogos finitos (Benoit e Krishna, 1985).

    Kreps, Milgrom, Roberts e Wilson (1982) mostraram que, mesmo com horizonte finito, a cooperação pode emergir no Dilema dos Prisioneiros se houver *incerteza sobre os tipos dos jogadores* — por exemplo, se cada jogador acredita que há uma pequena probabilidade de o outro ser "irracional" e cooperar incondicionalmente. Essa possibilidade, por menor que seja, é suficiente para sustentar cooperação nos primeiros períodos, colapsando apenas perto do final. Esse resultado conecta jogos finitos repetidos com os modelos de informação incompleta do Módulo 9c.

### Jogos infinitamente repetidos

O resultado de *unraveling* em jogos finitos é desanimador para quem espera cooperação. Mas o que acontece quando o horizonte é infinito — ou, de forma mais realista, quando os jogadores não sabem exatamente quando o jogo terminará? Nesse caso, o argumento de indução retroativa deixa de funcionar (não há "último período" para iniciar o raciocínio), e a cooperação pode emergir como equilíbrio. Na prática, a maioria das relações econômicas se encaixa melhor no caso de horizonte incerto do que no finito conhecido: uma empresa não sabe exatamente quando seu concorrente principal encerrará as atividades; um empregado não sabe com certeza por quantos anos trabalhará com o mesmo chefe. Modelar o horizonte como infinito — ou, equivalentemente, como finito com probabilidade de continuação \(\delta\) a cada período — é, portanto, não apenas matematicamente conveniente, mas economicamente mais realista.

!!! definition "Estratégia de gatilho (*Grim Trigger*)"
    A estratégia de gatilho prescreve: coopere no primeiro período e continue cooperando enquanto todos cooperarem. Se qualquer jogador desviar, puna jogando a estratégia não cooperativa **para sempre**.

No Dilema dos Prisioneiros repetido infinitamente com fator de desconto \(\delta \in (0,1)\) e payoffs \(T > R > P > S\) (onde \(T\) = tentação de trair, \(R\) = recompensa da cooperação mútua, \(P\) = punição da traição mútua e \(S\) = *sucker's payoff* — conforme definido no Módulo 9a, Seção 9a.2), a cooperação é sustentável pela estratégia de gatilho se e somente se:

\[
\frac{R}{1 - \delta} \geq T + \frac{\delta P}{1 - \delta} \quad \Longleftrightarrow \quad \delta \geq \frac{T - R}{T - P} \equiv \delta^*
\label{eq:9b.1} \tag{9b.1}
\]

O fator de desconto \(\delta\) na equação $\eqref{eq:9b.1}$ pode ser interpretado como a "paciência" dos jogadores ou a probabilidade de que o jogo continue. A condição é intuitivamente clara: a cooperação exige que o ganho imediato de trair (\(T - R\)) seja compensado pela perda futura de ser punido (diferença entre \(R\) e \(P\), descontada por \(\delta\)). Quanto mais pacientes os jogadores (maior \(\delta\)), mais fácil é sustentar a cooperação.

No gráfico interativo abaixo, ajuste os payoffs do Dilema dos Prisioneiros e observe como o limiar \(\delta^*\) se move — e como as curvas de payoff de cooperação e desvio se cruzam.

<iframe src="/micro-book/graficos/cap09b/repeated-game-threshold.html" title="Figura 9b.4 — Limiar de Cooperação em Jogos Repetidos" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.4 — Limiar de Cooperação \(\delta^*\).** A curva azul é o payoff de cooperar para sempre; a curva laranja é o payoff de trair e ser punido. Quando \(\delta > \delta^*\), a cooperação compensa — a sombra do futuro é longa o suficiente.
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** A cooperação é sustentável quando a "sombra do futuro" é longa o suficiente para que a ameaça de punição supere o ganho imediato de trair.

    **O que é a sombra do futuro?** É a influência das consequências futuras sobre as decisões presentes. Quanto mais o jogador valoriza o que acontece amanhã (maior \(\delta\)), mais pesada é essa sombra — e mais eficaz a ameaça de punição. A metáfora é de Axelrod (1984): em relações de longo prazo, o futuro "projeta uma sombra" sobre o presente que disciplina o comportamento oportunista.

    **Por que \(\delta\) pode ser baixo mesmo em interações de longo prazo?**

    - **Instabilidade do ambiente:** Quando há risco de a empresa fechar ou ser vendida, o \(\delta\) efetivo cai mesmo que as interações sejam recorrentes.
    - **Mudança de gestão:** Executivos com horizontes curtos (bônus anuais, rotatividade alta) têm \(\delta\) efetivo baixo, mesmo que a empresa exista indefinidamente.
    - **Inflação e taxa de juros altas:** No Brasil das décadas de 1980–90, taxas de juros reais altíssimas comprimiam o valor do futuro. Isso tornava a cooperação de longo prazo estruturalmente mais difícil — e pode explicar a prevalência de conluios de curto prazo e contratos spot em detrimento de relações de longo prazo.

    **Pense assim:** Dois vizinhos que se encontram todo dia no elevador cooperam mais do que dois desconhecidos que interagem uma única vez. O vizinho sabe que se agir de forma oportunista hoje, enfrentará a hostilidade do outro por anos. É o mesmo princípio que sustenta o conluio tácito entre postos de gasolina: a interação repetida e a facilidade de monitoramento (preços em totens) criam as condições para cooperação.

    **Quando a cooperação falha:**

    - **Horizonte curto** (\(\delta\) baixo): governadores com mandatos de 4 anos têm incentivo para atrair investimentos com guerra fiscal (ICMS), sem internalizar os custos de longo prazo.
    - **Monitoramento difícil**: cartéis em mercados com preços opacos ou transações customizadas são mais frágeis.
    - **Muitos jogadores**: quanto mais firmas no mercado, mais difícil sustentar cooperação (cada uma ganha menos com cooperação e a detecção de desvios é mais lenta).

### Folk Theorem

A estratégia de gatilho mostra que a cooperação *pode* ser sustentada. Mas até que ponto a repetição amplia o conjunto de resultados possíveis? O Folk Theorem — assim chamado porque circulava informalmente entre teóricos antes de ser formalmente demonstrado — fornece uma resposta surpreendente e, ao mesmo tempo, perturbadora.

!!! theorem "Folk Theorem (versão informal)"
    Em jogos infinitamente repetidos com fator de desconto suficientemente próximo de 1, **qualquer** payoff individualmente racional e factível pode ser sustentado como equilíbrio de Nash do jogo repetido.

    Um payoff é **individualmente racional** para o jogador \(i\) se é pelo menos tão bom quanto seu **payoff de minimax**. Um payoff é **factível** se pertence ao fecho convexo dos payoffs realizáveis do jogo de estágio.

!!! note "Implicações do Folk Theorem"
    O Folk Theorem é simultaneamente poderoso e problemático. Poderoso porque mostra que a repetição pode resolver dilemas de cooperação. Problemático porque gera uma **multiplicidade** enorme de equilíbrios — praticamente qualquer resultado razoável pode ser sustentado, o que limita o poder preditivo da teoria.

O Folk Theorem tem versões progressivamente mais fortes. A versão para equilíbrios de Nash (sem refinamento) é devida a Friedman (1971), que mostrou que qualquer payoff acima do equilíbrio de Nash do jogo de estágio pode ser sustentado. Fudenberg e Maskin (1986) fortaleceram o resultado para EPS: com \(\delta\) suficientemente próximo de 1, qualquer payoff estritamente acima do minimax pode ser sustentado como EPS — desde que a dimensão do conjunto de payoffs factíveis seja suficientemente grande. O resultado é notável: a cooperação não é apenas *um* equilíbrio possível, mas sim *qualquer grau* de cooperação pode ser sustentado, junto com qualquer nível de assimetria na distribuição dos ganhos.

Para a economia aplicada, essa multiplicidade é tanto uma benção quanto uma maldição. É uma benção porque implica que a cooperação é robustamente sustentável — não é um resultado frágil que depende de parâmetros específicos. É uma maldição porque a teoria, por si só, não prevê *qual* equilíbrio será selecionado. Isso abre espaço para fatores institucionais, culturais e históricos determinarem o grau de cooperação observado — o que explica por que cartéis em alguns mercados são estáveis por décadas enquanto em outros colapsam rapidamente, mesmo quando a estrutura de incentivos é similar.

Uma resposta à multiplicidade de equilíbrios do Folk Theorem é o conceito de **prova de renegociação** (*renegotiation-proofness*), proposto por Farrell e Maskin (1989) e Bernheim e Ray (1989). A ideia central é simples mas poderosa: uma estratégia de punição é crível apenas se, no momento de executá-la, os jogadores não teriam incentivo para renegociar e retornar a um equilíbrio mais favorável para todos. O grim trigger, por exemplo, falha nesse critério: após um desvio, a punição perpétua (Nash para sempre) é Pareto-dominada pela retomada da cooperação. Se os jogadores podem se comunicar, por que ambos se puniriam eternamente quando poderiam voltar a cooperar? A exigência de prova de renegociação elimina muitos equilíbrios do Folk Theorem e produz previsões mais realistas, embora o conjunto de equilíbrios remanescente continue sendo grande.

!!! idea "Intuição Econômica"
    **Em uma frase:** O Folk Theorem diz que "quase tudo é possível" em jogos repetidos — o que é poderoso mas também frustrante para quem quer previsões precisas.

    **O problema da multiplicidade:** Imagine um mercado com três empresas que interagem repetidamente. O Folk Theorem garante que é possível sustentar como equilíbrio: conluio perfeito (monopólio dividido em três), concorrência branda (lucros intermediários), conluio parcial (duas cooperam e excluem a terceira), ou qualquer outra combinação factível. A teoria não diz qual desses cenários ocorrerá — isso depende de fatores que o modelo não captura (história do mercado, personalidade dos gestores, regulação).

    **Para que serve, então?** O Folk Theorem é útil não por *prever* o equilíbrio, mas por *delimitar* o que é possível. Ele diz ao analista antitruste: "se o \(\delta\) efetivo for alto o suficiente, a cooperação é *possível* neste mercado". A pergunta empírica — se de fato *ocorre* — requer dados, não apenas teoria.

    **Renegociação como critério de seleção:** Punições extremas (como o grim trigger) podem ser teóricas mas não práticas: nenhum cartel manteria uma guerra de preços destrutiva *para sempre* quando ambos poderiam lucrar retomando a cooperação. A prova de renegociação captura essa intuição e seleciona equilíbrios com punições moderadas e temporárias — mais próximas do que observamos empiricamente em oligopólios reais.

!!! box-mundo "Box Mundo 9b.2 — Guerras de preços em aviação e tecnologia: punição em ação"

    **Contexto:** Os modelos de jogos repetidos preveem que a cooperação tácita (conluio) é periodicamente interrompida por "guerras de preços" — fases de punição que restauram a disciplina cooperativa. Guerras de preços são a execução, no mundo real, das estratégias de punição modeladas neste capítulo. A aviação comercial e o setor de tecnologia oferecem exemplos paradigmáticos.

    **Dados — Aviação comercial:**

    A guerra de preços entre companhias aéreas americanas no início dos anos 1990 é um dos casos mais estudados. Em 1992, American Airlines lançou a promoção "Value Pricing" que reduziu tarifas em até 38%. As rivais (United, Delta, Northwest) retaliaram com descontos agressivos, gerando perdas estimadas em US$ 4 bilhões para o setor em um único ano (Morrison e Winston, 1996). A dinâmica seguiu o padrão previsto pelo modelo de Green e Porter (1984): um choque (queda de demanda pós-recessão) tornou impossível distinguir entre queda legítima de demanda e desvio do conluio, desencadeando a fase de punição. O episódio terminou com retorno gradual aos preços pré-guerra — exatamente como prevê o *tit-for-tat*.

    No Brasil, a entrada da Gol em 2001 como companhia *low-cost* desencadeou respostas agressivas de TAM e Varig. A Varig, incapaz de sustentar as perdas da guerra de preços (seu \(\delta\) efetivo era baixo devido à crise financeira), foi a primeira a sair do mercado — falindo em 2006. Esse resultado é consistente com o modelo: em guerras de preços, sobrevive quem é mais paciente (maior \(\delta\)).

    **Dados — Tecnologia e plataformas:**

    A guerra de subsídios entre Uber e Lyft nos EUA (2014–2019) custou bilhões de dólares: ambas ofereciam corridas abaixo do custo para conquistar participação de mercado. A dinâmica é a de um jogo de entrada com deterrência: cada plataforma investia em capacidade (rede de motoristas) para tornar crível a ameaça de permanência no mercado. Após o IPO de ambas em 2019, os subsídios diminuíram e os preços subiram — o retorno ao equilíbrio cooperativo previsto pela teoria.

    Na guerra do streaming (2019–2024), Disney+, HBO Max, Peacock e Apple TV+ entraram com preços abaixo do custo e orçamentos inflacionados de conteúdo, competindo com a Netflix. Em 2023–2024, após perdas acumuladas superiores a US$ 30 bilhões, a maioria elevou preços e reduziu investimentos — o fim da fase de punição/entrada e o início da consolidação cooperativa.

    **Análise:** Em todos esses casos, a guerra de preços foi *temporária* — exatamente como prevê a teoria de jogos repetidos. A fase de punição é custosa para todos os jogadores, mas funciona como mecanismo disciplinador: ao demonstrar que o desvio será punido, restaura as condições para o retorno à cooperação. O padrão empírico confirma a previsão teórica: guerras de preços são mais prováveis após choques de demanda, entrada de novos concorrentes ou mudanças regulatórias que alteram os payoffs do jogo.

    **Para refletir:** Por que as guerras de preços tendem a ser mais longas em setores com altos custos fixos e baixos custos marginais (como aviação e streaming)? Como o conceito de prova de renegociação se aplica a esses episódios?

    **Fonte:** Morrison, Steven A. e Winston, Clifford. (1996). "Causes and Consequences of Airline Fare Wars." *Brookings Papers on Economic Activity: Microeconomics*, 85–131. Green, Edward J. e Porter, Robert H. (1984). "Noncooperative Collusion under Imperfect Price Information." *Econometrica*, 52(1), 87–100.

### Estratégias de punição alternativas

O grim trigger é a estratégia de punição mais simples e severa: uma única traição condena os jogadores à não cooperação perpétua. Mas será que essa punição draconiana é realista? No mundo real, relações comerciais se recuperam de rupturas, parceiros se reconciliam após conflitos. Estratégias mais sofisticadas capturam essa possibilidade de "perdão" e, em muitos contextos, se mostram mais robustas.

Além do grim trigger, existem estratégias mais sofisticadas, comparadas na [Tabela 9b.1](#tabela-9b-1):

<a id="tabela-9b-1"></a>

| Estratégia | Descrição | \(\delta^*\) | Vantagem | Desvantagem |
|:-----------|:----------|:------------|:---------|:------------|
| **Grim Trigger** | Coopera até primeiro desvio, depois pune para sempre | \(\frac{T-R}{T-P}\) | Máxima deterrência | Punição desproporcional; não perdoa erros |
| **Tit-for-Tat** | Coopera no 1º período; depois copia a ação do oponente no período anterior | \(\frac{T-R}{T-P}\) | Simples, "perdoa"; venceu os torneios de Axelrod | Vulnerável a erros; ciclos de retaliação |
| **Win-Stay, Lose-Shift** | Mantém a ação se o payoff foi bom, muda se foi ruim | Variável | Autocorreção | Pode não ser EPS |

<div class="caption-obj" markdown>
**Tabela 9b.1 — Estratégias de cooperação em jogos repetidos.**
</div>

<iframe src="/micro-book/graficos/cap09/delta-cooperacao.html" title="Figura 9b.2 — Cooperação no Dilema dos Prisioneiros repetido" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.2 — Cooperação no Dilema dos Prisioneiros repetido.** Altere os payoffs \(T\), \(R\), \(P\) e o fator de desconto \(\delta\) para ver quando a cooperação é sustentável pela estratégia de gatilho. A curva verde (\(V_{\text{coop}}\)) deve estar acima da vermelha (\(V_{\text{desvio}}\)).
</div>

!!! box-brasil "Box Brasil — Conluio na Distribuição de Combustíveis: o CADE em Ação"
    O mercado de distribuição de combustíveis no Brasil oferece um laboratório privilegiado para os modelos de jogos repetidos. Entre 2010 e 2023, o **CADE** julgou mais de trinta processos administrativos envolvendo cartéis em distribuidoras de combustíveis — de grandes grupos nacionais como Raízen (Shell/Cosan) e Vibra (BR Distribuidora) a distribuidoras regionais.

    **A estrutura do jogo de conluio**

    Distribuidoras maiores fixam margens acima do nível competitivo e monitoram os preços dos concorrentes via anúncios públicos e associações setoriais. O mercado de distribuição tem características que favorecem a sustentação do conluio:

    - **Poucos participantes** no atacado: concentração facilita a punição de desvios.
    - **Preços observáveis**: tabelas de preços publicadas no atacado reduzem o custo de monitoramento.
    - **Interação repetida densa**: negociações diárias entre distribuidoras e postos revendem.

    **O papel do Programa de Leniência**

    O Programa de Leniência do CADE (Lei 12.529/2011) é, do ponto de vista da teoria dos jogos, um mecanismo que destrói a estabilidade do equilíbrio cooperativo: ao oferecer imunidade ao primeiro a delatar, o programa converte o jogo em um **Dilema dos Prisioneiros de uma rodada** — cada membro do cartel tem incentivo para ser o primeiro a cooperar com o CADE, antes que os outros o façam.

    **Fator de desconto e taxas de juros brasileiras**

    A taxa Selic elevada (historicamente entre 10% e 14% a.a.) reduz o fator de desconto efetivo das firmas. Com \(r = 0{,}12\) ao ano e periodicidade mensal, \(\delta = 1/(1+r/12) \approx 0{,}99\) — ainda alto. Mas choques regulatórios ou mudanças de gestão podem comprimir \(\delta\) abruptamente, desestabilizando o conluio de dentro para fora.

    **Fonte:** CADE, Processos Administrativos 08012.010936/2007-01 (Distribuidoras de GLP) e relatórios anuais do DEE/CADE.

!!! box-mundo "Box Mundo 9b.1 — Cooperação comercial internacional: a OMC como jogo repetido e a guerra comercial EUA-China"

    **Contexto:** O sistema multilateral de comércio — institucionalizado pelo GATT (1947) e pela Organização Mundial do Comércio (OMC, 1995) — pode ser interpretado como um mecanismo de sustentação de cooperação em um jogo repetido entre nações. Cada país tem incentivo unilateral para proteger sua indústria doméstica com tarifas, subsídios ou barreiras não tarifárias — exatamente como no Dilema dos Prisioneiros, onde "trair" (proteger) domina "cooperar" (abrir o mercado) no jogo de estágio. Mas como o comércio é uma interação repetida indefinidamente entre os mesmos parceiros, a OMC funciona como arcabouço institucional que reduz o custo de monitoramento (mecanismo de revisão de políticas comerciais), aumenta o custo da punição (sistema de solução de controvérsias com autorização de retaliação) e, portanto, sustenta um equilíbrio cooperativo — desde que os fatores de desconto efetivos dos membros sejam suficientemente altos.

    A escalada tarifária entre Estados Unidos e China iniciada em 2018 é o episódio mais dramático de defecção desse equilíbrio cooperativo desde a criação da OMC. A administração Trump impôs tarifas sobre US$ 360 bilhões em importações chinesas (seções 201, 232 e 301); a China retaliou com tarifas sobre US$ 110 bilhões em produtos americanos. A dinâmica replicou com precisão a estratégia de *tit-for-tat*: cada rodada de tarifas americanas foi respondida com retaliação proporcional chinesa, seguida de nova escalada. O "Phase One Deal" de janeiro de 2020 representou uma tentativa de retorno ao equilíbrio cooperativo, mas com compromissos de compra quantitativa que se mostraram largamente descumpridos.

    **Dados:** Fajgelbaum et al. (2020), em estudo publicado no *Quarterly Journal of Economics*, estimaram que as tarifas da guerra comercial EUA-China custaram aos consumidores e importadores americanos US$ 51 bilhões por ano (em preços de 2018), com perda líquida de bem-estar de US$ 7,2 bilhões anuais — uma estimativa conservadora que não inclui efeitos de incerteza sobre investimento. Amiti, Redding e Weinstein (2019) mostraram que a incidência das tarifas recaiu quase integralmente sobre consumidores e firmas americanas, não sobre exportadores chineses — contradizendo a narrativa política de que "a China paga as tarifas". Do lado chinês, Handley, Kamal e Monarch (2020) documentaram redução de 25% nas exportações chinesas nos produtos tarifados, com desvio de comércio significativo para Vietnã, México e outros países — evidência de substituição estratégica no comércio internacional.

    Bagwell e Staiger (1999, 2002) formalizaram a OMC como mecanismo de sustentação cooperativa em jogos repetidos entre governos: as regras de reciprocidade e de nação mais favorecida funcionam como estratégias de cooperação condicional (análogas ao *tit-for-tat*), e o Órgão de Solução de Controvérsias (OSC) da OMC como mecanismo de enforcement que reduz o limiar \(\delta^*\) necessário para sustentar a cooperação. A paralisia do Órgão de Apelação da OMC desde dezembro de 2019 — resultado do bloqueio americano à nomeação de novos juízes — enfraqueceu precisamente esse mecanismo de punição, elevando o \(\delta^*\) efetivo e tornando a cooperação mais difícil de sustentar.

    **Análise:** A guerra comercial EUA-China ilustra a fragilidade do equilíbrio cooperativo quando os fatores de desconto se alteram. Do lado americano, a percepção de que a China não cumpria compromissos de abertura (propriedade intelectual, subsídios a estatais) equivale a uma reavaliação do payoff de cooperação \(R\), reduzindo-o relativamente ao payoff de desvio \(T\) — o que eleva o \(\delta^*\) mínimo para sustentar cooperação. Do lado chinês, a retaliação proporcional segue a lógica exata do *tit-for-tat*: punir a defecção alheia para sinalizar que a cooperação futura exige reciprocidade. A teoria prevê que o retorno à cooperação é possível (*tit-for-tat* "perdoa" após punir), mas a acumulação de retaliações e a erosão institucional da OMC criam histerese — o custo de reconstruir a confiança excede o custo de um simples retorno ao status quo ante. Para o Brasil, as implicações são diretas: como beneficiário líquido do sistema multilateral (exportações de commodities dependem de regras estáveis), o enfraquecimento da OMC aumenta a incerteza e reduz o valor esperado do comércio — um custo que não aparece nas estimativas de impacto direto das tarifas bilaterais.

    **Fonte:** Fajgelbaum, Pablo D. et al. (2020). "The Return to Protectionism." *Quarterly Journal of Economics*, 135(1), 1–55. Amiti, Mary, Redding, Stephen J. e Weinstein, David E. (2019). "The Impact of the 2018 Tariffs on Prices and Welfare." *Journal of Economic Perspectives*, 33(4), 187–210. Bagwell, Kyle e Staiger, Robert W. (2002). *The Economics of the World Trading System*. Cambridge, MA: MIT Press.

??? r-interactive "R Interativo — Dinâmica de Cournot com melhor resposta iterativa"

    Simule a convergência para o equilíbrio de Nash-Cournot via dinâmica de melhor resposta (*best-response dynamics*). Duas firmas ajustam suas quantidades iterativamente, cada uma respondendo de forma ótima à produção da outra no período anterior.

    ```r
    # Parâmetros
    a <- 100   # Intercepto da demanda inversa: P = a - b*Q
    b <- 1     # Inclinação
    c1 <- 10   # Custo marginal firma 1
    c2 <- 20   # Custo marginal firma 2

    # Funções de melhor resposta: q_i = (a - c_i - b*q_j) / (2*b)
    br1 <- function(q2) max(0, (a - c1 - b * q2) / (2 * b))
    br2 <- function(q1) max(0, (a - c2 - b * q1) / (2 * b))

    # Dinâmica iterativa
    T <- 20
    q1 <- q2 <- numeric(T)
    q1[1] <- 0; q2[1] <- 0  # Ponto inicial

    for(t in 2:T) {
      q1[t] <- br1(q2[t-1])
      q2[t] <- br2(q1[t-1])
    }

    # Equilíbrio analítico
    q1_star <- (a - 2*c1 + c2) / (3*b)
    q2_star <- (a - 2*c2 + c1) / (3*b)

    # Gráfico da convergência
    par(mfrow = c(1,2))
    plot(1:T, q1, type = "b", pch = 16, col = "blue", ylim = c(0, 50),
         xlab = "Iteração", ylab = "Quantidade", main = "Convergência para Nash-Cournot")
    lines(1:T, q2, type = "b", pch = 17, col = "red")
    abline(h = q1_star, lty = 2, col = "blue")
    abline(h = q2_star, lty = 2, col = "red")
    legend("right", c("Firma 1", "Firma 2"), col = c("blue","red"), pch = c(16,17))

    # Funções de melhor resposta no espaço (q1, q2)
    q_range <- seq(0, 50, length.out = 100)
    plot(q_range, sapply(q_range, br1), type = "l", col = "blue", lwd = 2,
         xlab = "q2", ylab = "q1", main = "Funções de Melhor Resposta")
    lines(sapply(q_range, br2), q_range, col = "red", lwd = 2)
    points(q2_star, q1_star, pch = 19, cex = 2)
    text(q2_star + 3, q1_star, paste0("Nash (", round(q1_star,1), ", ", round(q2_star,1), ")"))
    for(t in 1:(T-1)) arrows(q2[t], q1[t], q2[t+1], q1[t+1], length = 0.08, col = "gray40")
    legend("topright", c("BR Firma 1", "BR Firma 2"), col = c("blue","red"), lwd = 2)
    ```

    **Experimente:** Altere os custos marginais `c1` e `c2`. Quando as firmas são simétricas ($c_1 = c_2$), o equilíbrio é simétrico. Quando uma firma tem custo muito maior, ela pode ser expulsa do mercado ($q_i^* = 0$). Teste com $c_2 = 80$.
