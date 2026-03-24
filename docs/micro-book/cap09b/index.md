# Capítulo 9b — Pensando de Trás para Frente: Jogos Dinâmicos com Informação Completa

No módulo anterior (9a), todos os jogadores escolhiam suas ações simultaneamente. Muitas interações econômicas, porém, ocorrem em **sequência**: uma firma investe primeiro e a concorrente reage; um sindicato apresenta uma proposta e a empresa aceita ou recusa; um banco central anuncia uma meta e os agentes privados ajustam expectativas. Nesses contextos, a ordem das ações não é irrelevante — ela cria assimetrias de informação, possibilidades de comprometimento e oportunidades para o exercício estratégico de influência.

Quando as ações são observáveis e o jogo se desenrola ao longo do tempo, o conceito de equilíbrio de Nash pode sustentar resultados baseados em **ameaças não críveis** — promessas de ações que o jogador não teria incentivo para cumprir se o momento chegasse. O remédio é pensar "de trás para frente": a **indução retroativa** e o conceito de **Equilíbrio Perfeito em Subjogos** (EPS).

Este módulo cobre jogos sequenciais, jogos repetidos (finitos e infinitos) e barganha, completando a análise de informação completa da taxonomia de Gibbons (1992, Caps. 2). O material aqui conecta-se diretamente ao Módulo 9a (que trata dos fundamentos do equilíbrio de Nash em jogos estáticos) e prepara o terreno para os Módulos 9c e 9d, onde a informação deixa de ser completa e a análise se torna substancialmente mais complexa. A intuição central — racionalidade sequencial e credibilidade de ameaças — permanece, contudo, o fio condutor de toda a teoria dos jogos.

---

## 9b.1 Jogos Sequenciais e Indução Retroativa

### Forma extensiva e indução retroativa

Nos jogos sequenciais, os jogadores se movem em ordem cronológica, e jogadores posteriores podem observar as ações dos anteriores. A **forma extensiva** — representada por uma árvore de decisão — é a ferramenta natural para descrever esses jogos: cada nó corresponde a um momento de decisão, cada ramo a uma ação possível, e cada folha terminal a um vetor de payoffs. Diferentemente da forma normal (a matriz de payoffs do Módulo 9a), a forma extensiva captura explicitamente a sequência temporal das ações e a informação disponível em cada ponto do jogo.

O conceito de solução apropriado é a **indução retroativa** (*backward induction*): resolve-se o jogo "de trás para frente", determinando as ações ótimas nos últimos nós de decisão e retrocedendo até o início. O procedimento é simples na prática: identificam-se os nós terminais do jogo, determina-se a ação ótima do último decisor em cada um deles, substitui-se esses nós pelo payoff correspondente, e repete-se o processo até o nó inicial. O resultado é um conjunto de ações — uma estratégia completa para cada jogador — que constitui o Equilíbrio Perfeito em Subjogos.

!!! definition "Equilíbrio Perfeito em Subjogos (EPS)"
    Um perfil de estratégias constitui um **Equilíbrio Perfeito em Subjogos** se induz um equilíbrio de Nash em **todo subjogo** do jogo na forma extensiva.

    Formalmente, um subjogo é qualquer parte do jogo que: (i) começa em um nó de decisão que é um conjunto de informação unitário (singleton); (ii) contém todos os sucessores desse nó; (iii) não "corta" nenhum conjunto de informação.

!!! definition "Equilíbrio Perfeito em Subjogos — Definição Formal"
    Seja \(\Gamma\) um jogo na forma extensiva com conjunto de jogadores \(I = \{1, \ldots, n\}\). Um **subjogo** de \(\Gamma\) é qualquer componente \(\Gamma'\) da árvore que começa em um nó de informação singleton \(h\), contém todos os nós que sucedem \(h\) e não divide nenhum conjunto de informação.

    Um perfil de estratégias \(s^* = (s_1^*, \ldots, s_n^*)\) é um **Equilíbrio Perfeito em Subjogos** se, para **todo** subjogo \(\Gamma'\) de \(\Gamma\), a restrição \(s^*|_{\Gamma'}\) constitui um equilíbrio de Nash de \(\Gamma'\).

    **Implicação imediata:** Em jogos de horizonte finito com informação perfeita (cada conjunto de informação é singleton), a indução retroativa identifica o único EPS.

O EPS é um **refinamento** do equilíbrio de Nash: todo EPS é um equilíbrio de Nash, mas nem todo equilíbrio de Nash é perfeito em subjogos. O EPS elimina equilíbrios sustentados por **ameaças não críveis** em subjogos fora do caminho de equilíbrio. Por que essa distinção importa? Porque em jogos dinâmicos, o equilíbrio de Nash permite que um jogador "ameace" com ações que nunca seriam racionais caso ele efetivamente precisasse executá-las. A exigência de racionalidade *em cada subjogo* — mesmo naqueles que nunca são alcançados em equilíbrio — é o que confere ao EPS seu poder de seleção.

!!! warning "Cuidado — EPS vs. Equilíbrio de Nash"
    Todo EPS é um equilíbrio de Nash, mas a recíproca é **falsa**. A diferença é sutil, mas economicamente crucial.

    **Por que todo EPS é NE?** Porque o jogo completo é, ele próprio, um subjogo. Logo, um EPS — que exige NE em todo subjogo — exige NE no jogo inteiro.

    **Por que NE não implica EPS?** O equilíbrio de Nash só exige que nenhum jogador queira desviar *dada a estratégia dos outros*. Nada impede que estratégias fora do caminho de equilíbrio sejam irracionais. No jogo de entrada, o equilíbrio (Não entra, Lutar) é um NE — I nunca é chamado a agir, então a ameaça de lutar não é testada. Mas se E entrasse, I preferiria acomodar (\(1 > -1\)): a ameaça é vazia.

    **Regra prática:** Use indução retroativa para encontrar o EPS. Se você encontrar múltiplos NE, verifique cada um: o(s) NE que envolve(m) ameaças não críveis em algum subjogo não é(são) EPS.

!!! info "🏅 Prêmio Nobel — Reinhard Selten (1994)"

    **Reinhard Selten** (1930–2016) foi um economista alemão, nascido em Breslau (atual Wrocław, Polônia). Obteve o PhD na Universidade de Frankfurt e foi professor na Universidade de Bonn. Dividiu o Nobel com Nash e Harsanyi.

    **Por que ganhou o Nobel:**
    Selten introduziu refinamentos do equilíbrio de Nash que eliminam equilíbrios sustentados por ameaças não críveis. O equilíbrio perfeito em subjogos (1965) exige que a estratégia de cada jogador seja ótima em todo subjogo — não apenas no jogo como um todo. Posteriormente, propôs o conceito de *trembling hand perfection* (1975), que testa a robustez do equilíbrio a pequenos erros.

    **Conexão com este capítulo:**
    O equilíbrio perfeito em subjogos (EPS) é a ferramenta central deste capítulo sobre jogos dinâmicos. A indução retroativa — o método de resolução que identifica o EPS — elimina ameaças não críveis e gera previsões mais refinadas do que o equilíbrio de Nash simples, como demonstrado nos jogos sequenciais analisados aqui.

!!! idea "Intuição Econômica"
    **Em uma frase:** Indução retroativa significa pensar "de trás para frente" — comece pelo final do jogo, determine o que é racional ali, e trabalhe em direção ao início.

    **O método passo a passo:** (1) Identifique o último nó de decisão da árvore. (2) Determine a ação ótima do jogador nesse nó. (3) Substitua esse nó pelo payoff resultante e "corte" o galho. (4) Repita o processo para o penúltimo nó, e assim por diante. (5) O resultado é o EPS.

    **Pense assim:** Quando uma grande rede de supermercados ameaça derrubar preços para expulsar um mercadinho de bairro, o mercadinho precisa avaliar: essa ameaça é crível? Se a guerra de preços der prejuízo também para a rede, ela não vai cumprir a ameaça. Pensar de trás para frente revela quais ameaças são blefe.

    **Por que isso importa:** O CADE usa essa lógica ao analisar se barreiras à entrada são reais ou apenas ameaças vazias de empresas dominantes. A credibilidade da ameaça — não apenas sua existência — é o que determina o resultado do jogo.

    **O paradoxo da credibilidade:** Para que uma ameaça funcione, ela *não* pode ser executada em equilíbrio. Se o rival acredita na ameaça e não entra, a ameaça nunca é testada. Mas se ela não seria executada caso fosse testada, por que o rival acreditaria? Esse é o papel do comprometimento (Schelling, 1960).

Para tornar esses conceitos concretos, considere o problema clássico de deterrência de entrada — uma situação onipresente em mercados concentrados. Uma firma incumbente ameaça "lutar" caso uma rival entre no mercado. Mas essa ameaça é crível? A indução retroativa nos permite responder com rigor.

### Exemplo: Jogo de entrada

!!! example "Jogo de entrada (deterrência)"
    A firma entrante (E) decide se entra ou não. Se E entra, a firma incumbente (I) decide se luta (L) ou acomoda (A).

    Payoffs: Se E não entra: \((0, 2)\). Se E entra e I acomoda: \((1, 1)\). Se E entra e I luta: \((-1, -1)\).

    **Equilíbrios de Nash**: (Não entra, Luta) e (Entra, Acomoda). Porém, no primeiro equilíbrio a ameaça de I de lutar **não é crível**: no subjogo após a entrada, Lutar dá \(-1\) a I, enquanto Acomodar dá \(1\). Logo, por indução retroativa, o único EPS é **(Entra, Acomoda)**.

    A ameaça "se você entrar, eu luto" não é crível porque, no momento em que I precisa decidir, lutar é pior do que acomodar. O EPS descarta esse equilíbrio.

<iframe src="../graficos/cap09/jogo-sequencial.html" title="Figura 9b.1 — Jogo sequencial na forma extensiva" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.1 — Jogo sequencial na forma extensiva.** Selecione um jogo predefinido (Deterrência de Entrada ou Stackelberg), edite os payoffs nos nós terminais e resolva por indução retroativa. O caminho do EPS é destacado em vermelho.
</div>

### Comprometimento e vantagem estratégica

O exemplo anterior mostra que ameaças vazias são descartadas pela indução retroativa. Mas será que a incumbente está condenada a acomodar a entrada? Não necessariamente. Se ela puder tomar ações *antes* do jogo que alterem seus próprios payoffs futuros, a ameaça pode se tornar crível. Esse é o papel do comprometimento — a arte de restringir as próprias opções para ganhar poder estratégico. Parece paradoxal: como se limitar pode ser vantajoso? A resposta é que, ao eliminar a possibilidade de recuar, o jogador torna sua ameaça inevitável aos olhos do rival.

A impossibilidade de ameaças não críveis pode ser contornada pelo **comprometimento**:

- **Investimento irreversível em capacidade**: se I investe em uma fábrica grande *antes* da decisão de entrada, o custo de lutar cai (a capacidade já existe), tornando a ameaça crível. Esse mecanismo, formalizado por Dixit (1980), explica por que firmas incumbentes frequentemente superdimensionam sua capacidade produtiva: não por ineficiência, mas como sinalização estratégica.
- **Contratos vinculantes**: cláusulas de "preço mais baixo garantido" comprometem a firma a igualar preços, alterando os payoffs do jogo. No setor de telecomunicações brasileiro, contratos de fidelidade com penalidades elevadas funcionam como mecanismo de comprometimento contra novas entradas.
- **Reputação**: em jogos repetidos com múltiplos entrantes, lutar contra o primeiro pode ser racional para estabelecer reputação de dureza. A Ambev, ao responder agressivamente às entradas de cervejas importadas em determinados segmentos, construiu reputação que desincentivou futuros concorrentes.

A lógica do comprometimento conecta-se diretamente aos resultados do Módulo 9a sobre estratégias dominantes e ao Módulo 9d sobre sinalização: em todos esses contextos, ações cujo custo direto parece injustificado adquirem racionalidade quando se considera seu efeito sobre as crenças e ações do oponente.

---

## 9b.2 Jogos Repetidos

A análise de jogos sequenciais na seção anterior tratou de interações que ocorrem uma única vez. Mas a maioria das relações econômicas de interesse — entre firmas concorrentes, entre empregador e empregado, entre países que comerciam — envolve interações repetidas ao longo do tempo. Essa repetição muda fundamentalmente a lógica estratégica: quando os mesmos jogadores se encontram novamente amanhã, a possibilidade de punição futura cria incentivos que não existem em jogos de uma só rodada. Será que a cooperação pode emergir do puro autointeresse, sem necessidade de contratos ou regulação externa?

Quando um jogo é jogado repetidamente entre os mesmos jogadores, a possibilidade de **punição futura** pode sustentar a cooperação em equilíbrio, mesmo quando o jogo de estágio tem um único equilíbrio não cooperativo.

É fundamental distinguir entre dois conceitos relacionados: o **jogo de estágio** (o jogo original, jogado a cada período) e o **jogo repetido** (a sequência de interações ao longo do tempo). O jogo de estágio captura a estrutura de incentivos de cada interação isolada; o jogo repetido adiciona a dimensão temporal e a possibilidade de condicionamento das ações à história passada. Estratégias no jogo repetido são, portanto, **planos contingentes** que podem depender de tudo que aconteceu até o período corrente — e essa riqueza estratégica é o que abre espaço para a cooperação.

### Jogos finitamente repetidos

A primeira pergunta é natural: se o Dilema dos Prisioneiros é jogado repetidamente entre os mesmos jogadores, a cooperação pode emergir? Se o número de repetições é finito e conhecido, a resposta é decepcionantemente negativa. A lógica é a seguinte: no último período \(T\), não há futuro — e portanto nenhuma ameaça de punição futura funciona. Ambos traem em \(T\). Mas então, em \(T-1\), ambos sabem que a traição ocorrerá em \(T\) independentemente do que aconteça em \(T-1\) — logo não há incentivo para cooperar em \(T-1\). O argumento se desenrola até o primeiro período, como um dominó que desmorona de trás para frente.

Se o Dilema dos Prisioneiros é repetido um número finito \(T\) de vezes (e isso é conhecimento comum), a indução retroativa a partir do período \(T\) implica que o único EPS é a repetição do equilíbrio de estágio (Trair, Trair) em todos os períodos.

O resultado de *unraveling* tem uma implicação prática importante para a economia brasileira: acordos de leniência no CADE frequentemente geram o rompimento do cartel precisamente porque introduzem a possibilidade de que o jogo "termine" — um membro pode delatar e romper a cooperação antes que os outros o façam. A perspectiva de um término iminente destrói o mecanismo de sustentação cooperativa.

!!! note "Unraveling e exceções"
    O resultado de "desvendamento" (*unraveling*) é forte mas depende de hipóteses restritivas: (i) jogo de estágio com equilíbrio único; (ii) horizonte finito conhecido. Se o jogo de estágio tem múltiplos equilíbrios (como BoS), ou se há incerteza sobre o horizonte, a cooperação pode ser sustentada mesmo em jogos finitos (Benoit e Krishna, 1985).

### Jogos infinitamente repetidos

O resultado de *unraveling* em jogos finitos é desanimador para quem espera cooperação. Mas o que acontece quando o horizonte é infinito — ou, de forma mais realista, quando os jogadores não sabem exatamente quando o jogo terminará? Nesse caso, o argumento de indução retroativa deixa de funcionar (não há "último período" para iniciar o raciocínio), e a cooperação pode emergir como equilíbrio.

Se o jogo é repetido infinitamente (ou com probabilidade de continuação \(\delta\) a cada período), a cooperação pode ser sustentada como equilíbrio.

Na prática, a maioria das relações econômicas se encaixa melhor no caso de horizonte incerto do que no finito conhecido: uma empresa não sabe exatamente quando seu concorrente principal encerrará as atividades; um empregado não sabe com certeza por quantos anos trabalhará com o mesmo chefe. Modelar o horizonte como infinito — ou, equivalentemente, como finito com probabilidade de continuação \(\delta\) a cada período — é, portanto, não apenas matematicamente conveniente, mas economicamente mais realista.

!!! definition "Estratégia de gatilho (*Grim Trigger*)"
    A estratégia de gatilho prescreve: coopere no primeiro período e continue cooperando enquanto todos cooperarem. Se qualquer jogador desviar, puna jogando a estratégia não cooperativa **para sempre**.

No Dilema dos Prisioneiros repetido infinitamente com fator de desconto \(\delta \in (0,1)\) e payoffs \(T > R > P > S\), a cooperação é sustentável pela estratégia de gatilho se e somente se:

\[
\frac{R}{1 - \delta} \geq T + \frac{\delta P}{1 - \delta} \quad \Longleftrightarrow \quad \delta \geq \frac{T - R}{T - P} \equiv \delta^*
\label{eq:9b.1} \tag{9b.1}
\]

O fator de desconto \(\delta\) na equação $\eqref{eq:9b.1}$ pode ser interpretado como a "paciência" dos jogadores ou a probabilidade de que o jogo continue. A condição é intuitivamente clara: a cooperação exige que o ganho imediato de trair (\(T - R\)) seja compensado pela perda futura de ser punido (diferença entre \(R\) e \(P\), descontada por \(\delta\)). Quanto mais pacientes os jogadores (maior \(\delta\)), mais fácil é sustentar a cooperação.

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

<iframe src="../graficos/cap09/delta-cooperacao.html" title="Figura 9b.2 — Cooperação no Dilema dos Prisioneiros repetido" class="graph-iframe"></iframe>

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

!!! box-mundo "🌍 Box Mundo 9b.1 — Cooperação comercial internacional: a OMC como jogo repetido e a guerra comercial EUA-China"

    **Contexto:** O sistema multilateral de comércio — institucionalizado pelo GATT (1947) e pela Organização Mundial do Comércio (OMC, 1995) — pode ser interpretado como um mecanismo de sustentação de cooperação em um jogo repetido entre nações. Cada país tem incentivo unilateral para proteger sua indústria doméstica com tarifas, subsídios ou barreiras não tarifárias — exatamente como no Dilema dos Prisioneiros, onde "trair" (proteger) domina "cooperar" (abrir o mercado) no jogo de estágio. Mas como o comércio é uma interação repetida indefinidamente entre os mesmos parceiros, a OMC funciona como arcabouço institucional que reduz o custo de monitoramento (mecanismo de revisão de políticas comerciais), aumenta o custo da punição (sistema de solução de controvérsias com autorização de retaliação) e, portanto, sustenta um equilíbrio cooperativo — desde que os fatores de desconto efetivos dos membros sejam suficientemente altos.

    A escalada tarifária entre Estados Unidos e China iniciada em 2018 é o episódio mais dramático de defecção desse equilíbrio cooperativo desde a criação da OMC. A administração Trump impôs tarifas sobre US$ 360 bilhões em importações chinesas (seções 201, 232 e 301); a China retaliou com tarifas sobre US$ 110 bilhões em produtos americanos. A dinâmica replicou com precisão a estratégia de *tit-for-tat*: cada rodada de tarifas americanas foi respondida com retaliação proporcional chinesa, seguida de nova escalada. O "Phase One Deal" de janeiro de 2020 representou uma tentativa de retorno ao equilíbrio cooperativo, mas com compromissos de compra quantitativa que se mostraram largamente descumpridos.

    **Dados:** Fajgelbaum et al. (2020), em estudo publicado no *Quarterly Journal of Economics*, estimaram que as tarifas da guerra comercial EUA-China custaram aos consumidores e importadores americanos US$ 51 bilhões por ano (em preços de 2018), com perda líquida de bem-estar de US$ 7,2 bilhões anuais — uma estimativa conservadora que não inclui efeitos de incerteza sobre investimento. Amiti, Redding e Weinstein (2019) mostraram que a incidência das tarifas recaiu quase integralmente sobre consumidores e firmas americanas, não sobre exportadores chineses — contradizendo a narrativa política de que "a China paga as tarifas". Do lado chinês, Handley, Kamal e Monarch (2020) documentaram redução de 25% nas exportações chinesas nos produtos tarifados, com desvio de comércio significativo para Vietnã, México e outros países — evidência de substituição estratégica no comércio internacional.

    Bagwell e Staiger (1999, 2002) formalizaram a OMC como mecanismo de sustentação cooperativa em jogos repetidos entre governos: as regras de reciprocidade e de nação mais favorecida funcionam como estratégias de cooperação condicional (análogas ao tit-for-tat), e o Órgão de Solução de Controvérsias (OSC) da OMC como mecanismo de enforcement que reduz o limiar \(\delta^*\) necessário para sustentar a cooperação. A paralisia do Órgão de Apelação da OMC desde dezembro de 2019 — resultado do bloqueio americano à nomeação de novos juízes — enfraqueceu precisamente esse mecanismo de punição, elevando o \(\delta^*\) efetivo e tornando a cooperação mais difícil de sustentar.

    **Análise:** A guerra comercial EUA-China ilustra a fragilidade do equilíbrio cooperativo quando os fatores de desconto se alteram. Do lado americano, a percepção de que a China não cumpria compromissos de abertura (propriedade intelectual, subsídios a estatais) equivale a uma reavaliação do payoff de cooperação \(R\), reduzindo-o relativamente ao payoff de desvio \(T\) — o que eleva o \(\delta^*\) mínimo para sustentar cooperação. Do lado chinês, a retaliação proporcional segue a lógica exata do tit-for-tat: punir a defecção alheia para sinalizar que a cooperação futura exige reciprocidade. A teoria prevê que o retorno à cooperação é possível (tit-for-tat "perdoa" após punir), mas a acumulação de retaliações e a erosão institucional da OMC criam histerese — o custo de reconstruir a confiança excede o custo de um simples retorno ao status quo ante. Para o Brasil, as implicações são diretas: como beneficiário líquido do sistema multilateral (exportações de commodities dependem de regras estáveis), o enfraquecimento da OMC aumenta a incerteza e reduz o valor esperado do comércio — um custo que não aparece nas estimativas de impacto direto das tarifas bilaterais.

    **Fonte:** Fajgelbaum, Pablo D. et al. (2020). "The Return to Protectionism." *Quarterly Journal of Economics*, 135(1), 1–55. Amiti, Mary, Redding, Stephen J. e Weinstein, David E. (2019). "The Impact of the 2018 Tariffs on Prices and Welfare." *Journal of Economic Perspectives*, 33(4), 187–210. Bagwell, Kyle e Staiger, Robert W. (2002). *The Economics of the World Trading System*. Cambridge, MA: MIT Press.

---

## 9b.3 Barganha

Os jogos repetidos mostram como a interação prolongada pode sustentar cooperação. Mas muitas situações econômicas envolvem um tipo diferente de dinâmica: não a repetição de um mesmo jogo, mas uma negociação sequencial sobre a divisão de um excedente. Compradores e vendedores, sindicatos e empresas, países em disputas comerciais — todos enfrentam o problema de como dividir os ganhos do acordo. Os modelos de barganha formalizam essa questão, e a análise por indução retroativa revela resultados que, embora matematicamente elegantes, frequentemente desafiam as intuições comportamentais.

### O Jogo do Ultimato

O jogo mais simples de barganha: o jogador 1 (proponente) oferece uma divisão \(x\) de um bolo de tamanho 1. O jogador 2 (respondedor) aceita ou rejeita. Se aceita, payoffs são \((x, 1-x)\). Se rejeita, ambos recebem 0.

**Equilíbrio Perfeito em Subjogos:** A análise por indução retroativa começa pelo respondedor. No subjogo após qualquer oferta \(x\), aceitar dá \(1-x \geq 0\) e rejeitar dá \(0\). Portanto, o respondedor aceita qualquer oferta (mesmo a mais miserável). Antecipando isso, o proponente oferece \(x = 1\) (fica com tudo), pois sabe que o respondedor aceitará.

!!! warning "Teoria vs. Evidência"
    A previsão teórica — proponente oferece quase nada, respondedor aceita — é sistematicamente rejeitada em experimentos. Ofertas modais são 40-50% do bolo, e ofertas abaixo de 20% são frequentemente rejeitadas. Isso motivou modelos de preferências sociais (Fehr-Schmidt, Módulo 8) e de racionalidade limitada.

### Barganha de Rubinstein (ofertas alternadas)

O jogo do ultimato é extremo: uma única oferta, sem possibilidade de contraproposta. Na prática, a maioria das negociações envolve rodadas de ofertas e contraofertas, e o custo do atraso — salários não pagos durante uma greve, produção perdida, oportunidades desperdiçadas — é o que impele as partes ao acordo. O modelo de Rubinstein captura essa dinâmica com elegância e produz um resultado notavelmente preciso.

Dois jogadores alternam propostas com fator de desconto \(\delta \in (0,1)\). No período 1, o jogador 1 propõe; se 2 rejeita, no período 2 o jogador 2 propõe; e assim por diante.

Rubinstein (1982) demonstrou que esse jogo, apesar de ter infinitas rodadas de ofertas e contraofertas, possui um **único EPS**. A divisão, dada pela equação $\eqref{eq:9b.2}$, é determinada exclusivamente pelos fatores de desconto dos dois jogadores:

O **único EPS** (Rubinstein, 1982) é:

\[
x_1^* = \frac{1 - \delta_2}{1 - \delta_1 \delta_2}, \qquad x_2^* = \frac{\delta_2(1 - \delta_1)}{1 - \delta_1 \delta_2}
\label{eq:9b.2} \tag{9b.2}
\]

Quando \(\delta_1 = \delta_2 = \delta\), a equação $\eqref{eq:9b.2}$ simplifica-se para:

\[
x_1^* = \frac{1}{1 + \delta} \quad \text{(share do proponente)}
\label{eq:9b.3} \tag{9b.3}
\]

A derivação do resultado de Rubinstein ilustra com precisão a força da indução retroativa: para que o jogador 2 aceite a proposta do jogador 1 no período 1, deve receber ao menos tanto quanto receberia sendo o proponente no período 2 (descontado por \(\delta_2\)). Mas o que o jogador 2 obteria como proponente no período 2 depende do que o jogador 1 aceitaria no período 3 (descontado por \(\delta_1\)). Esse encadeamento de condições de indiferença — repetido para todas as rodadas possíveis — determina unicamente a divisão do excedente. O resultado é notável: um jogo com infinitas rodadas possíveis tem um único equilíbrio, encontrado pela aplicação sistemática do princípio de racionalidade retrospectiva.

!!! idea "Intuição Econômica"
    **Em uma frase:** Na barganha de Rubinstein, quem é mais paciente (maior \(\delta\)) fica com a maior fatia.

    **Pense assim:** Numa negociação salarial entre o sindicato dos metalúrgicos e uma montadora, cada rodada sem acordo custa para ambos (trabalhadores perdem salário, empresa perde produção). Quem aguenta mais tempo sem acordo — quem tem mais "reservas" — consegue extrair mais valor.

    **Limite:** Quando \(\delta \to 1\) (ambos muito pacientes), a divisão converge para 50/50 — o resultado "justo". Quando \(\delta \to 0\) (ambos impacientes), o proponente fica com quase tudo — como no jogo do ultimato.

    **Conexão com Nash Bargaining:** Rubinstein (1982) mostrou que o EPS de ofertas alternadas converge para a solução de barganha de Nash quando o intervalo entre ofertas vai a zero — uma fundamentação não cooperativa para o modelo cooperativo.

---

Os modelos de jogos repetidos e barganha desenvolvidos neste capítulo encontram aplicações diretas na economia brasileira. Os dois Boxes a seguir ilustram, respectivamente, como a lógica do Dilema dos Prisioneiros repetido explica a persistência da guerra fiscal entre estados e como o modelo de Rubinstein ilumina as negociações salariais na indústria automotiva.

!!! box-brasil "Box Brasil — A guerra fiscal do ICMS: uma corrida ao fundo"
    A competição entre estados brasileiros pela atração de investimentos via benefícios fiscais no **ICMS** é um dos exemplos mais claros do Dilema dos Prisioneiros na política econômica brasileira.

    **A estrutura do jogo**

    |  | Estado B: Não concede | Estado B: Concede |
    |:---|:---:|:---:|
    | **Estado A: Não concede** | \((100, 100)\) | \((60, 120)\) |
    | **Estado A: Concede** | \((120, 60)\) | \((70, 70)\) |

    Conceder incentivos é estratégia dominante. O resultado (70, 70) é Pareto-dominado por (100, 100).

    **Por que a cooperação falhou?**

    Usando os payoffs acima: \(\delta^* = (T-R)/(T-P) = (120-100)/(120-70) = 0{,}4\). Bastaria \(\delta \geq 0{,}4\) para sustentar cooperação com grim trigger — um limiar baixo! Então por que a guerra fiscal persiste?

    1. **Horizonte curto dos governadores**: mandatos de 4 anos geram \(\delta\) efetivo baixo (desconto político é altíssimo).
    2. **Confaz fraco**: o mecanismo de enforcement (unanimidade para novos benefícios) foi sistematicamente violado.
    3. **Assimetria entre estados**: estados menores ganham mais com o desvio, pois atraem investimentos proporcionalmente maiores.

    **A Reforma Tributária como mudança de regras do jogo**

    A EC 132/2023 (IBS com alíquota uniforme e cobrança no destino) não tenta sustentar cooperação no jogo existente — ela **redesenha o jogo** eliminando o instrumento (ICMS na origem) que permitia a concessão unilateral de benefícios.

---

!!! box-brasil "Box Brasil — Metalúrgicos vs. Montadoras: barganha à brasileira"
    As negociações salariais anuais entre o **Sindicato dos Metalúrgicos do ABC** e as montadoras (Volkswagen, Mercedes-Benz, Toyota) são um exemplo clássico de barganha com ofertas alternadas.

    **Estrutura da barganha**

    - O sindicato apresenta uma pauta de reivindicações (reajuste + PLR + benefícios).
    - A empresa contrapropõe.
    - Se não há acordo, pode haver greve (custo para ambos: trabalhadores perdem salários, empresa perde produção).
    - Rodadas se sucedem até o acordo.

    **Fatores que afetam o poder de barganha (\(\delta\))**

    | Fator | Efeito sobre o sindicato | Efeito sobre a empresa |
    |:------|:------------------------|:----------------------|
    | Fundo de greve | Aumenta \(\delta_{\text{sind}}\) | — |
    | Estoques altos | — | Aumenta \(\delta_{\text{emp}}\) |
    | Desemprego alto | Reduz \(\delta_{\text{sind}}\) | — |
    | Demanda aquecida | — | Reduz \(\delta_{\text{emp}}\) |

    **Dados recentes**

    Em 2024, o Sindicato dos Metalúrgicos do ABC negociou reajuste de **5,5%** (inflação + ganho real) com a Volkswagen, após duas rodadas de negociação — consistente com o modelo de Rubinstein onde o proponente com informação sobre o custo do atraso faz uma oferta próxima do EPS logo na primeira rodada.

    **Fonte**: DIEESE, Subsistema de Negociações Coletivas; Sindicato dos Metalúrgicos do ABC.

---

### R Interativo: Ultimatum Game — Evidência Experimental

??? code "R Interativo — Ultimatum Game: teoria vs. experimento (Adams, 2025, Cap. 8)"
    O jogo do ultimato é um dos mais estudados em economia experimental. A previsão teórica (oferta mínima, aceitação total) é sistematicamente violada: ofertas modais são 40-50% e ofertas abaixo de 20% são frequentemente rejeitadas.

    Andersen et al. (2011) realizaram experimentos na Índia com stakes variando de US\$ 0,50 a US\$ 200 (até 8 meses de salário local). Com stakes muito altos, as ofertas convergem para a previsão teórica — sugerindo que preferências por fairness têm um preço.

    <iframe src="../graficos/cap09/webr-ultimatum.html" title="Figura 9b.3 — Ultimatum Game" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.3 — Simulação de um experimento de ultimatum game com modelo logit.** Altere os parâmetros da simulação e estime a probabilidade de aceitar em função da oferta.
    </div>

---

### R Interativo: Conluio em Postos de Gasolina

??? code "R Interativo — Dinâmica de preços e conluio em Perth (Adams, 2025, Cap. 7)"
    Wang (2009) e Clark e Roos (2019) documentaram padrões de preços cíclicos ("Edgeworth cycles") no mercado de gasolina de Perth, Austrália — evidência empírica da dinâmica cooperação/punição prevista pelos modelos de jogos repetidos.

    Este box simula os ciclos de Edgeworth: preços sobem gradualmente (fase cooperativa) e depois desabam (fase de punição/undercut), gerando o padrão "dente de serra".

    <iframe src="../graficos/cap09/webr-gasoline.html" title="Figura 9b.4 — Dinâmica de preços e conluio" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.4 — Simulação de ciclos de Edgeworth no mercado de gasolina.** Baseado em Adams (2025, Cap. 7) e dados de Perth.
    </div>

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação completa envolvem jogadores que agem em sequência, podendo observar as ações anteriores. O conceito de solução central é o **Equilíbrio Perfeito em Subjogos (EPS)**, obtido por **indução retroativa**.
- O EPS refina o equilíbrio de Nash ao eliminar equilíbrios sustentados por **ameaças não críveis** — ações que o jogador não teria incentivo para executar se o momento chegasse. Todo EPS é NE, mas a recíproca é falsa.
- Em **jogos finitamente repetidos** com equilíbrio de estágio único, a indução retroativa implica repetição do equilíbrio de estágio em todos os períodos (*unraveling*).
- Em **jogos repetidos infinitamente**, a cooperação pode ser sustentada em equilíbrio via estratégias de punição (grim trigger, tit-for-tat), desde que os jogadores sejam suficientemente pacientes (\(\delta \geq \delta^*\)). A "sombra do futuro" é o mecanismo disciplinador.
- O **Folk Theorem** mostra que, com \(\delta\) suficientemente alto, qualquer payoff individualmente racional e factível pode ser sustentado como equilíbrio — gerando multiplicidade de equilíbrios e limitando o poder preditivo.
- Na **barganha de Rubinstein** (ofertas alternadas), o único EPS gera uma divisão determinada pelos fatores de desconto: o jogador mais paciente obtém a maior fatia.
- O **comprometimento** — investimento irreversível, contratos vinculantes ou reputação — é o mecanismo que torna ameaças críveis e confere vantagem estratégica.

## 🔑 Conceitos-Chave

<a id="tabela-9b-2"></a>

| Conceito | Definição |
|----------|-----------|
| Indução retroativa | Método de solução que resolve o jogo "de trás para frente", determinando ações ótimas a partir dos últimos nós de decisão. |
| Equilíbrio Perfeito em Subjogos (EPS) | Perfil de estratégias que constitui um equilíbrio de Nash em todo subjogo do jogo na forma extensiva. |
| Ameaça não crível | Ação que um jogador ameaça executar mas que não seria ótima no momento da decisão; eliminada pelo EPS. |
| Comprometimento | Ação irreversível que altera os payoffs futuros, tornando uma ameaça ou promessa crível. |
| Estratégia de gatilho (Grim Trigger) | Coopera enquanto todos cooperam; se alguém desvia, pune para sempre jogando a estratégia não cooperativa. |
| Tit-for-Tat | Coopera no primeiro período; depois copia a ação do oponente no período anterior. |
| Folk Theorem | Resultado que afirma que qualquer payoff factível e individualmente racional pode ser sustentado em equilíbrio de jogo repetido infinitamente com \(\delta\) suficientemente alto. |
| Fator de desconto (\(\delta\)) | Medida da paciência dos jogadores ou da probabilidade de continuação do jogo; determina a viabilidade da cooperação. |
| Barganha de Rubinstein | Modelo de ofertas alternadas com desconto cujo único EPS gera divisão proporcional à paciência relativa dos jogadores. |
| Jogo do Ultimato | Jogo de barganha em que o proponente faz uma oferta e o respondedor aceita ou rejeita; o EPS prevê oferta mínima, mas experimentos mostram ofertas de 40-50%. |

<div class="caption-obj" markdown>
**Tabela 9b.2 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9b.1 — Grim Trigger em postos de combustíveis"
    **Enunciado:** Dois postos de combustíveis interagem repetidamente. Payoffs: se ambos mantêm preço alto (cooperam), cada um lucra R\$ 8.000/mês; se ambos cortam preço (traem), cada um lucra R\$ 2.000/mês; se um corta e outro mantém, o que cortou lucra R\$ 12.000 e o outro lucra R\$ 0. Qual o fator de desconto mínimo para sustentar cooperação com grim trigger?

    **Dados:** \(T = 12.000\), \(R = 8.000\), \(P = 2.000\), \(S = 0\).

    **Resolução:**

    Valor presente de cooperar: \(V_{\text{coop}} = 8.000/(1-\delta)\)

    Valor presente de desviar: \(V_{\text{desvio}} = 12.000 + 2.000\delta/(1-\delta)\)

    Condição: \(V_{\text{coop}} \geq V_{\text{desvio}}\)

    \[
    \frac{8.000}{1-\delta} \geq 12.000 + \frac{2.000\delta}{1-\delta}
    \]

    \[
    8.000 - 2.000\delta \geq 12.000(1-\delta) \implies 10.000\delta \geq 4.000 \implies \delta \geq 0{,}4
    \]

    Pela fórmula: \(\delta^* = (T-R)/(T-P) = 4.000/10.000 = 0{,}4\). ✓

    **Interpretação:** \(\delta^* = 0{,}4\) é baixo, indicando que a cooperação é fácil de sustentar — consistente com a prevalência de cartéis no setor. Com interação diária, o fator efetivo é próximo de 1, muito acima de 0,4. Isso explica por que o CADE precisa intervir ativamente.

??? exercicio-resolvido "Exercício Resolvido 9b.2 — Barganha de Rubinstein"
    **Enunciado:** Dois agentes negociam a divisão de R\$ 1 milhão com ofertas alternadas. O jogador 1 (proponente) tem \(\delta_1 = 0{,}9\) e o jogador 2 (respondedor) tem \(\delta_2 = 0{,}8\). Encontre a divisão no EPS.

    **Resolução:**

    No EPS de Rubinstein:

    \[
    x_1^* = \frac{1 - \delta_2}{1 - \delta_1\delta_2} = \frac{1 - 0{,}8}{1 - 0{,}72} = \frac{0{,}2}{0{,}28} \approx 0{,}714
    \]

    \[
    x_2^* = 1 - x_1^* \approx 0{,}286
    \]

    **Resultado:** Jogador 1 (mais paciente) fica com ≈ R\$ 714.000 e jogador 2 fica com ≈ R\$ 286.000.

    **Interpretação:** A paciência confere poder na barganha. O jogador 1, com \(\delta_1 = 0{,}9 > \delta_2 = 0{,}8\), obtém uma fatia 2,5 vezes maior. No caso simétrico (\(\delta_1 = \delta_2 = 0{,}9\)), a divisão seria \(1/(1+0{,}9) \approx 52{,}6\%\) vs \(47{,}4\%\) — a vantagem do proponente (first-mover).

---

## ✏️ Exercícios

<a id="ex-9b-1"></a>**Exercício 9b.1.** (Credibilidade de ameaças) Considere o jogo de entrada com 3 estágios: (1) E decide se entra; (2) I decide se investe K em capacidade; (3) se E entrou, I decide se luta ou acomoda.

Payoffs sem investimento: como no exemplo da Seção 9b.1.
Payoffs com investimento: se E entra e I luta, I obtém 0 (em vez de –1); o custo K reduz o payoff de I quando não luta em 1.

(a) Para que valores de K a ameaça de lutar se torna crível?

(b) Encontre o EPS para K que torna a ameaça crível.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-1)

---

<a id="ex-9b-2"></a>**Exercício 9b.2.** (Tit-for-Tat) No Dilema dos Prisioneiros repetido com payoffs \(T = 5\), \(R = 3\), \(P = 1\), \(S = 0\):

(a) Mostre que a cooperação com Tit-for-Tat requer \(\delta \geq (T-R)/(T-P) = 2/4 = 1/2\).

(b) Compare com o grim trigger. Qual estratégia requer menor \(\delta^*\)?

(c) Discuta as vantagens do Tit-for-Tat à luz dos torneios de Axelrod (1984).

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-2)

---

<a id="ex-9b-3"></a>**Exercício 9b.3.** (Barganha) Dois sindicatos negociam com uma empresa. O sindicato A tem \(\delta_A = 0{,}95\) e o sindicato B tem \(\delta_B = 0{,}7\). Qual sindicato obtém um acordo melhor no modelo de Rubinstein? Quantifique.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-3)

---

<a id="ex-9b-4"></a>**Exercício 9b.4.** (Conluio com N firmas) Mostre que no Cournot repetido infinitamente com \(N\) firmas simétricas, a cooperação requer \(\delta \geq \frac{(N-1)^2(N+1)^2}{(N+1)^4 - 16N^2}\). Para \(N = 2\), qual é \(\delta^*\)? E para \(N = 10\)?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-4)

---

<a id="ex-9b-5"></a>**Exercício 9b.5.** (Fácil — Indução retroativa num jogo de entrada em 2 estágios) Uma firma entrante (E) decide se entra num mercado. Se entrar, a incumbente (I) decide se luta ou acomoda. Os payoffs são os seguintes:

- E não entra: \((0, 10)\)
- E entra, I acomoda: \((4, 4)\)
- E entra, I luta: \((-2, -2)\)

(a) Represente o jogo na forma extensiva (árvore) e identifique todos os subjogos.

(b) Encontre todos os equilíbrios de Nash do jogo (em forma normal).

(c) Aplique indução retroativa e identifique o único EPS. Qual ameaça é eliminada?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-5)

---

<a id="ex-9b-6"></a>**Exercício 9b.6.** (Fácil — EPS em barganha sequencial de 2 rodadas) Dois agentes negociam a divisão de R\$ 100. Na rodada 1, o agente A propõe uma divisão \((x, 100-x)\). Se B aceita, o jogo termina. Se B rejeita, na rodada 2 o agente B propõe \((y, 100-y)\); A aceita ou rejeita (se A rejeita, ambos recebem 0). Ambos têm fator de desconto \(\delta = 0{,}8\) (o valor do acordo diminui em 20% a cada rodada rejeitada).

(a) Resolva por indução retroativa, começando pela rodada 2.

(b) Qual é a oferta de equilíbrio de A na rodada 1?

(c) Como muda a divisão se \(\delta\) cai para 0,5? Interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-6)

---

<a id="ex-9b-7"></a>**Exercício 9b.7.** (Médio — Dilema dos Prisioneiros finitamente repetido) Dois concorrentes jogam o seguinte Dilema dos Prisioneiros exatamente \(T = 3\) vezes:

|  | C | D |
|:---|:---:|:---:|
| **C** | \((3, 3)\) | \((0, 5)\) |
| **D** | \((5, 0)\) | \((1, 1)\) |

(a) Usando indução retroativa, mostre que o único EPS prescreve (D, D) em todos os 3 períodos.

(b) Agora suponha que no período 3, além de (D, D), existe um segundo equilíbrio de estágio \((C, C)\) com payoff \((3, 3)\) — por exemplo, por efeitos reputacionais externos. Como isso afeta a possibilidade de cooperação nos períodos 1 e 2? (Discuta qualitativamente, com base em Benoit e Krishna, 1985.)

(c) Quantos EPS existem no jogo finitamente repetido do item (a)?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-7)

---

<a id="ex-9b-8"></a>**Exercício 9b.8.** (Médio — Brasil — Sustentabilidade do conluio com taxa Selic) Duas distribuidoras de combustível interagem mensalmente. Os payoffs mensais (em R\$ mil) são: cooperar = (50, 50); desviar unilateralmente = (80, 0) ou (0, 80); punição mútua permanente = (20, 20).

(a) Qual é o \(\delta^*\) mínimo para sustentar cooperação com grim trigger?

(b) Com a taxa Selic a **13,75% a.a.** (pico de 2023), calcule o fator de desconto mensal \(\delta = 1/(1 + r_{\text{mensal}})\) e verifique se a cooperação é sustentável.

(c) Com a Selic a **10,5% a.a.** (referência de 2024), recalcule \(\delta\) e compare. Taxas de juros mais baixas facilitam ou dificultam o conluio? Discuta as implicações para a política antitruste.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-8)

---

<a id="ex-9b-9"></a>**Exercício 9b.9.** (Difícil — Barganha de Rubinstein com paciência assimétrica) Dois agentes negociam a divisão de um bolo de tamanho 1 com ofertas alternadas. O agente 1 (proponente ímpar) tem fator de desconto \(\delta_1\) e o agente 2 (proponente par) tem \(\delta_2\), com \(\delta_1 \neq \delta_2\).

(a) Derive o único EPS de Rubinstein usando as condições de indiferença: o respondedor deve ser indiferente entre aceitar e rejeitar em equilíbrio. Mostre que as equações de ponto fixo levam à fórmula \eqref{eq:9b.2}.

(b) Calcule a divisão para \(\delta_1 = 0{,}9\) e \(\delta_2 = 0{,}5\). Quem tem maior poder de barganha?

(c) Mostre que quando \(\delta_1 = \delta_2 = \delta\), a vantagem do proponente desaparece quando \(\delta \to 1\). Qual é a interpretação econômica desse limite?

(d) **Aplicação:** Uma negociação trabalhista no Brasil tem \(\delta_{\text{sind}} = 0{,}95\) (sindicato com fundo de greve robusto) e \(\delta_{\text{emp}} = 0{,}7\) (empresa com estoque baixo e demanda aquecida). Qual fração do excedente o sindicato captura se ele propõe primeiro? E se a empresa propõe primeiro?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-9)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2010 — Questão 10"
    Considere o jogo "caça ao cervo":

    |  | Caçador 2: Cervo | Caçador 2: Lebre |
    |:---|:---:|:---:|
    | **Caçador 1: Cervo** | \((3, 3)\) | \((x, 1)\) |
    | **Caçador 1: Lebre** | \((1, x)\) | \((1, 1)\) |

    com \(0 \leq x < 1\). Avalie:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Trata-se de um jogo de informação imperfeita. |
    | 1    | Há dois equilíbrios de Nash. |
    | 2    | Os dois caçadores possuem estratégias fracamente dominantes. |
    | 3    | Se \(x = 0\), o equilíbrio misto prescreve Cervo com probabilidade \(1/3\). |
    | 4    | Se \(x \to 1\), o equilíbrio misto converge para o EN Pareto-dominado (Lebre, Lebre). |

    ??? success "Gabarito"
        **Respostas: 11011**

        - **Item 0 — V:** Jogos simultâneos são de informação imperfeita (cada jogador desconhece a ação do outro no momento da decisão).

        - **Item 1 — V:** Dois EN em puras: (Cervo, Cervo) e (Lebre, Lebre). Em ambos, nenhum desvia (\(3 > 1\) e \(1 > x\)).

        - **Item 2 — F:** Nenhuma estratégia é dominante. Cervo é melhor se o outro joga Cervo (\(3 > 1\)), mas Lebre é melhor se o outro joga Lebre (\(1 > x\)).

        - **Item 3 — V:** Com \(x=0\): \(U_2(\text{Cervo}; p) = 3p\), \(U_2(\text{Lebre}; p) = 1\). Igualando: \(p = 1/3\).

        - **Item 4 — V:** Probabilidade de Cervo: \(p = (1-x)/(3-x)\). Quando \(x \to 1\): \(p \to 0\), convergindo para (Lebre, Lebre).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Porter, Robert H. (1983). [A Study of Cartel Stability: The Joint Executive Committee, 1880–1886](https://doi.org/10.2307/3003634). *The Bell Journal of Economics*, 14(2), 301–314."
    **Pergunta:** Os modelos de jogos repetidos preveem alternância entre conluio e guerras de preço. Essa dinâmica é observável em dados reais?

    **Método:** Dados semanais do *Joint Executive Committee* (cartel ferroviário, EUA, 1880–86). Modelo de *switching regression* para identificar fases cooperativas e de guerra de preços.

    **Resultado:** O cartel alternava entre cooperação (preços altos) e guerras de preço (preços baixos), precipitadas por choques de demanda — consistente com Green e Porter (1984).

    **Relevância:** Metodologia aplicável à investigação do CADE: padrões de preços que alternam "estabilidade" e "guerra" podem indicar conluio tácito.

??? pesquisa "Axelrod, Robert (1984). [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books."
    **Contribuição:** Axelrod organizou dois torneios de computador onde especialistas submeteram estratégias para o Dilema dos Prisioneiros repetido. A vencedora foi **Tit-for-Tat** (Anatol Rapoport): simples, "nice" (coopera primeiro), retaliadora (pune imediatamente) e "forgiving" (volta a cooperar).

    **Resultado:** Estratégias "nice" (que nunca iniciam a traição) dominaram. A cooperação emerge não por altruísmo, mas por auto-interesse esclarecido — a "sombra do futuro" é suficiente.

    **Relevância:** Os torneios de Axelrod influenciaram o desenho de mecanismos de regulação (programas de leniência, que exploram a instabilidade do conluio via incentivos à delação).

??? pesquisa "Rubinstein, Ariel (1982). [Perfect Equilibrium in a Bargaining Model](https://doi.org/10.2307/1912531). *Econometrica*, 50(1), 97–109."
    **Contribuição:** Rubinstein mostrou que o jogo de ofertas alternadas com desconto tem um **único** EPS, com divisão determinada pelos fatores de desconto. Quando o intervalo entre ofertas vai a zero, o resultado converge para a solução de barganha de Nash — uma fundamentação não cooperativa para a teoria cooperativa.

    **Relevância:** Base teórica para a análise de negociações salariais, disputas comerciais e arbitragem.

??? pesquisa "Selten, Reinhard (1965). [Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit](https://doi.org/10.1007/BF01299206). *Zeitschrift für die gesamte Staatswissenschaft*, 121(2), 301–324 e 667–689."
    **Contribuição:** Selten introduziu o conceito de **equilíbrio perfeito em subjogos** neste artigo seminal. Ao analisar um modelo de oligopólio com inercia de demanda, Selten percebeu que o equilíbrio de Nash permitia ameaças que nunca seriam executadas racionalmente — e propôs o refinamento que exige equilíbrio de Nash em todo subjogo.

    **Relevância:** O EPS é a ferramenta central deste capítulo e de toda a teoria dos jogos dinâmicos com informação completa. A contribuição de Selten foi decisiva para o Prêmio Nobel de 1994.

??? pesquisa "Dixit, Avinash K. (1980). [The Role of Investment in Entry-Deterrence](https://doi.org/10.2307/2231658). *The Economic Journal*, 90(357), 95–106."
    **Contribuição:** Dixit formalizou como investimento irreversível em capacidade pode tornar crível a ameaça de guerra de preços. O modelo demonstra que a capacidade instalada muda os payoffs do jogo subsequente, convertendo uma ameaça vazia em comprometimento estratégico.

    **Relevância:** Explica comportamentos de firmas incumbentes em telecomunicações, energia e outras indústrias intensivas em capital no Brasil — inclusive algumas investigações do CADE sobre sobreinvestimento estratégico.

---

## 📚 Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 6–8.
- Andersen, Steffen, Seda Ertaç, Uri Gneezy, Moshe Hoffman, e John A. List. 2011. "Stakes Matter in Ultimatum Games." *American Economic Review* 101 (7): 3427–3439. [DOI](https://doi.org/10.1257/aer.101.7.3427)
- Axelrod, Robert. 1984. [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books.
- Benoit, Jean-Pierre, e Vijay Krishna. 1985. "Finitely Repeated Games." *Econometrica* 53 (4): 905–922. [DOI](https://doi.org/10.2307/1912660)
- Clark, Robert, e Jean-François Roos. 2019. "Learning to Coordinate: A Study in Retail Gasoline." Working Paper.
- Dixit, Avinash K. 1980. "The Role of Investment in Entry-Deterrence." *The Economic Journal* 90 (357): 95–106. [DOI](https://doi.org/10.2307/2231658)
- Fudenberg, Drew, e Jean Tirole. 1991. [*Game Theory*](https://books.google.com/books/about/Game_Theory.html?id=pFPHKwXro3QC). Cambridge, MA: MIT Press.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press.
- Green, Edward J., e Robert H. Porter. 1984. "Noncooperative Collusion under Imperfect Price Information." *Econometrica* 52 (1): 87–100. [DOI](https://doi.org/10.2307/1911462)
- Porter, Robert H. 1983. "A Study of Cartel Stability: The Joint Executive Committee, 1880–1886." *The Bell Journal of Economics* 14 (2): 301–314. [DOI](https://doi.org/10.2307/3003634)
- Rubinstein, Ariel. 1982. "Perfect Equilibrium in a Bargaining Model." *Econometrica* 50 (1): 97–109. [DOI](https://doi.org/10.2307/1912531)
- Schelling, Thomas C. 1960. [*The Strategy of Conflict*](https://books.google.com/books?id=7RkL4Z8Yg5AC). Cambridge, MA: Harvard University Press.
- Selten, Reinhard. 1965. "Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit." *Zeitschrift für die gesamte Staatswissenschaft* 121 (2): 301–324. [DOI](https://doi.org/10.1007/BF01299206)
- Wang, Zhongmin. 2009. "(Mixed) Strategy in Oligopoly Pricing: Evidence from Gasoline Price Cycles Before and Under a Timing Regulation." *Journal of Political Economy* 117 (6): 987–1030. [DOI](https://doi.org/10.1086/649801)
