# Capítulo 9b — Primeiro Você, Depois Eu (E Ninguém Confia em Ninguém)

No módulo anterior, todo mundo jogava ao mesmo tempo — como num "já!" de par ou ímpar. Agora, entra o tempo. Uma firma investe *antes* de a concorrente reagir. Um sindicato faz a proposta *primeiro* e a empresa responde *depois*. O Banco Central anuncia a meta de inflação *hoje* e os agentes ajustam expectativas *amanhã*. Quando a ordem importa, tudo muda.

O problema: o equilíbrio de Nash, que funcionava bem para jogos simultâneos, começa a aceitar blefes. Ele permite que jogadores "ameacem" com ações que nunca executariam de verdade — como a mãe que ameaça "se não comer o espinafre, ninguém vai para a Disney" sabendo que ela mesma quer ir. O remédio: pensar **de trás para frente**. Começar pelo fim do jogo, perguntar "nesse ponto, o que cada jogador *de fato* faria?" e retroceder até o início. Esse procedimento é a **indução retroativa**, e o resultado é o **Equilíbrio Perfeito em Subjogos** — um Nash que só aceita ameaças críveis.

Este módulo cobre jogos sequenciais, jogos repetidos (finitos e infinitos) e barganha, completando a análise de informação completa da taxonomia de Gibbons (1992, Cap. 2). O material aqui conecta-se diretamente ao Módulo 9a (que trata dos fundamentos do equilíbrio de Nash em jogos estáticos) e prepara o terreno para os Módulos 9c e 9d, onde a informação deixa de ser completa e a análise se torna substancialmente mais complexa. A intuição central — racionalidade sequencial e credibilidade de ameaças — permanece, contudo, o fio condutor de toda a teoria dos jogos.

A dimensão temporal transforma radicalmente a análise estratégica. A sequencialidade importa porque permite que jogadores observem as ações passadas dos rivais e condicionem seu comportamento a essa história — algo impossível em jogos simultâneos. Essa capacidade de condicionamento é a base tanto da cooperação em jogos repetidos (onde a ameaça de punição futura disciplina o comportamento presente) quanto da barganha (onde a impaciência relativa dos negociadores determina a divisão do excedente). As aplicações são vastas: a análise de oligopólios no Capítulo 16, por exemplo, utiliza extensivamente os modelos de Stackelberg (líder-seguidora) e de conluio tácito desenvolvidos aqui; os modelos de sinalização do Módulo 9d dependem da estrutura sequencial; e as decisões intertemporais de consumo e poupança do Capítulo 18 envolvem a mesma lógica de desconto e paciência que governa a barganha e a cooperação em jogos repetidos.

---

## 9b.1 Pense de Trás para Frente: Jogos Sequenciais e Indução Retroativa

### Forma extensiva e indução retroativa

A ferramenta visual dos jogos sequenciais é a **árvore de decisão** (forma extensiva): nós são momentos de escolha, ramos são ações, folhas são payoffs. É como um fluxograma — mas onde cada "caixa de decisão" pertence a um jogador diferente, e cada um vê o que os anteriores fizeram.

Como resolver? **Comece pelo fim.** Olhe os últimos nós da árvore e pergunte: "o que o jogador faria aqui?" Anote a resposta, "pode" esses nós, suba um nível e repita. Quando chegar ao início, você tem a solução completa. Esse procedimento de "descascar a cebola de fora para dentro" é a **indução retroativa**, e o equilíbrio que ela produz é o EPS.[^spanish-inquisition]

[^spanish-inquisition]: *"Nobody expects the Spanish Inquisition!"* — Os fãs de Monty Python reconhecerão a analogia: no famoso sketch, os cardeais aparecem *depois* que alguém os menciona, repetidamente, cada vez com um conjunto diferente de "armas" ("fear, surprise, and a ruthless efficiency..."). A indução retroativa funciona ao contrário: você *antecipa* o que vai acontecer em cada nó futuro — inclusive nos que ninguém espera alcançar — e usa essa antecipação para decidir o que fazer agora. Nobody expects backward induction, mas ela funciona.

!!! definition "Equilíbrio Perfeito em Subjogos (EPS)"
    Um perfil de estratégias constitui um **Equilíbrio Perfeito em Subjogos** se induz um equilíbrio de Nash em **todo subjogo** do jogo na forma extensiva.

    Formalmente, um subjogo é qualquer parte do jogo que: (i) começa em um nó de decisão que é um conjunto de informação unitário (singleton); (ii) contém todos os sucessores desse nó; (iii) não "corta" nenhum conjunto de informação.

!!! definition "Equilíbrio Perfeito em Subjogos — Definição Formal"
    Seja \(\Gamma\) um jogo na forma extensiva com conjunto de jogadores \(I = \{1, \ldots, n\}\). Um **subjogo** de \(\Gamma\) é qualquer componente \(\Gamma'\) da árvore que começa em um nó de informação singleton \(h\), contém todos os nós que sucedem \(h\) e não divide nenhum conjunto de informação.

    Um perfil de estratégias \(s^* = (s_1^*, \ldots, s_n^*)\) é um **Equilíbrio Perfeito em Subjogos** se, para **todo** subjogo \(\Gamma'\) de \(\Gamma\), a restrição \(s^*|_{\Gamma'}\) constitui um equilíbrio de Nash de \(\Gamma'\).

    **Implicação imediata:** Em jogos de horizonte finito com informação perfeita (cada conjunto de informação é singleton), a indução retroativa identifica o único EPS.

O EPS é um **refinamento** do equilíbrio de Nash: todo EPS é um equilíbrio de Nash, mas nem todo equilíbrio de Nash é perfeito em subjogos. O EPS elimina equilíbrios sustentados por **ameaças não críveis** em subjogos fora do caminho de equilíbrio. Por que essa distinção importa? Porque em jogos dinâmicos, o equilíbrio de Nash permite que um jogador "ameace" com ações que nunca seriam racionais caso ele efetivamente precisasse executá-las. A exigência de racionalidade *em cada subjogo* — mesmo naqueles que nunca são alcançados em equilíbrio — é o que confere ao EPS seu poder de seleção.

A noção de **credibilidade de ameaças** é, portanto, o coração conceitual do EPS. Uma ameaça é crível se, e somente se, o jogador que a profere teria interesse em executá-la caso fosse chamado a agir. Essa distinção é sutil mas economicamente poderosa. Considere um exemplo cotidiano: um pai que ameaça "se você não estudar, vou cancelar as férias da família inteira" profere uma ameaça que prejudica a si mesmo tanto quanto ao filho. Se o filho antecipa que o pai não cumprirá a ameaça (porque o próprio pai quer as férias), a ameaça perde efeito. Esse é precisamente o problema da ameaça não crível no jogo de entrada: a incumbente que ameaça lutar contra a entrante está ameaçando com uma ação que a prejudicaria caso fosse efetivamente executada.

A distinção entre equilíbrios de Nash e EPS tem consequências práticas diretas. No Módulo 9a, analisamos jogos simultâneos nos quais todos os equilíbrios de Nash são automaticamente perfeitos em subjogos (porque o jogo inteiro é o único subjogo). Em jogos dinâmicos, a multiplicidade de equilíbrios de Nash é frequentemente ilusória: muitos deles dependem de ameaças vazias que ninguém cumpriria. A indução retroativa, ao descartar sistematicamente essas ameaças, reduz o conjunto de equilíbrios e produz previsões mais afinadas e empiricamente mais relevantes.

!!! warning "⚠️ Erro Comum"
    **Tratar EPS e equilíbrio de Nash como sinônimos.**

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

<iframe src="/micro-book/graficos/cap09/jogo-sequencial.html" title="Figura 9b.1 — Jogo sequencial na forma extensiva" class="graph-iframe" style="height:620px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.1 — Jogo sequencial na forma extensiva.** Selecione um jogo predefinido (Deterrência de Entrada ou Stackelberg), edite os payoffs nos nós terminais e resolva por indução retroativa. O caminho do EPS é destacado em vermelho.
</div>

<iframe src="/micro-book/graficos/cap09b/backward-induction.html" title="Figura 9b.3 — Indução retroativa: jogo de entrada com payoffs ajustáveis" class="graph-iframe" style="height:560px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.3 — Indução retroativa interativa.** Ajuste os payoffs do entrante e do incumbente e veja a indução retroativa em ação: o EPS muda em tempo real. Quando a ameaça de guerra não é crível, o algoritmo identifica e sinaliza.
</div>

### Comprometimento e vantagem estratégica

No gráfico interativo abaixo, visualize o modelo de Stackelberg vs. Cournot. A líder escolhe \(q_1\) primeiro e a seguidora responde sobre sua curva de melhor resposta.

<iframe src="/micro-book/graficos/cap09b/commitment-stackelberg.html" title="Figura 9b.5 — Stackelberg vs. Cournot: Comprometimento e Vantagem de Primeiro Movimento" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9b.5 — Stackelberg vs. Cournot.** As curvas são as melhores respostas das firmas 1 (vermelho) e 2 (azul). O ponto verde é o equilíbrio de Cournot (simultâneo); o ponto laranja é o de Stackelberg (sequencial). A líder produz mais e lucra mais — o comprometimento de mover primeiro confere vantagem.
</div>

O exemplo anterior mostra que ameaças vazias são descartadas pela indução retroativa. Mas será que a incumbente está condenada a acomodar a entrada? Não necessariamente. Se ela puder tomar ações *antes* do jogo que alterem seus próprios payoffs futuros, a ameaça pode se tornar crível. Esse é o papel do **comprometimento** — a arte de restringir as próprias opções para ganhar poder estratégico. Parece paradoxal: como se limitar pode ser vantajoso? A resposta é que, ao eliminar a possibilidade de recuar, o jogador torna sua ameaça inevitável aos olhos do rival. Na prática, o comprometimento assume diversas formas:

- **Investimento irreversível em capacidade**: se I investe em uma fábrica grande *antes* da decisão de entrada, o custo de lutar cai (a capacidade já existe), tornando a ameaça crível. Esse mecanismo, formalizado por Dixit (1980), explica por que firmas incumbentes frequentemente superdimensionam sua capacidade produtiva: não por ineficiência, mas como sinalização estratégica.
- **Contratos vinculantes**: cláusulas de "preço mais baixo garantido" comprometem a firma a igualar preços, alterando os payoffs do jogo. No setor de telecomunicações brasileiro, contratos de fidelidade com penalidades elevadas funcionam como mecanismo de comprometimento contra novas entradas.
- **Reputação**: em jogos repetidos com múltiplos entrantes, lutar contra o primeiro pode ser racional para estabelecer reputação de dureza. A Ambev, ao responder agressivamente às entradas de cervejas importadas em determinados segmentos, construiu reputação que desincentivou futuros concorrentes.

A lógica do comprometimento conecta-se diretamente aos resultados do Módulo 9a sobre estratégias dominantes e ao Módulo 9d sobre sinalização: em todos esses contextos, ações cujo custo direto parece injustificado adquirem racionalidade quando se considera seu efeito sobre as crenças e ações do oponente.

O conceito de **dispositivo de comprometimento** (*commitment device*) vai além do contexto estratégico. No Capítulo 18, sobre escolha intertemporal, veremos que indivíduos com preferências inconsistentes no tempo (desconto hiperbólico) ganham ao restringir suas próprias opções futuras — contas de poupança com penalidade por saque, metas públicas de política fiscal. O princípio é o mesmo: reduzir o conjunto de ações disponíveis pode ser estrategicamente vantajoso quando essa redução altera as expectativas dos demais agentes (ou do "eu futuro"). Na política econômica, a independência do Banco Central (LC 179/2021) e as regras fiscais (arcabouço fiscal) são dispositivos de comprometimento: a restrição voluntária torna as ações futuras previsíveis e as promessas críveis.

!!! idea "Intuição Econômica"
    **Em uma frase:** Comprometer-se é ganhar poder ao restringir suas próprias opções — um paradoxo que está no coração da estratégia.

    **O paradoxo de Schelling:** Thomas Schelling (1960) demonstrou que, em negociações, a fraqueza pode ser uma força. Um negociador que *não pode* fazer concessões — porque está vinculado a um mandato rígido, ou porque destruiu a ponte de volta — está em posição mais forte do que um negociador flexível. O oponente sabe que não adianta pressionar: o comprometimento é irrevogável.

    **Exemplos no dia a dia:** (1) Queimar navios — Cortés eliminou a retirada. (2) Cláusulas contratuais de rescisão elevada — tornam a saída custosa e, portanto, crível a permanência. (3) Investimento em marca e reputação — uma empresa que investiu bilhões em sua marca tem mais a perder com comportamento oportunista, tornando crível seu comprometimento com a qualidade. (4) Metas de inflação públicas — o Banco Central que anuncia uma meta e se submete a prestação de contas torna crível seu comprometimento com a estabilidade de preços.

    **Quando o comprometimento falha:** O dispositivo de comprometimento perde efeito se: (i) pode ser revertido (a "regra" tem tantas exceções que é letra morta); (ii) o custo do comprometimento excede o benefício estratégico (investir K > 9 no modelo de Dixit); (iii) os rivais não observam ou não acreditam no comprometimento (problema de informação — conecta-se ao Módulo 9d sobre sinalização).

---

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

---

## 9b.3 Dividir o Bolo: Modelos de Barganha

Última peça do módulo — e talvez a mais intuitiva. Jogos repetidos tratam de cooperação ao longo do tempo; **barganha** trata de *como dividir o bolo*. Compradores e vendedores pechinchando, sindicatos negociando salário, países dividindo quotas de pesca — todos enfrentam a mesma pergunta: "quanto fica para mim, quanto fica para você?" A teoria da barganha formaliza essa negociação, e o resultado depende de um fator que a sabedoria popular já conhece: **quem pode esperar mais, leva mais**. A paciência é poder.

### O Jogo do Ultimato

O jogo mais simples de barganha: o jogador 1 (proponente) oferece uma divisão \(x\) de um bolo de tamanho 1. O jogador 2 (respondedor) aceita ou rejeita. Se aceita, payoffs são \((x, 1-x)\). Se rejeita, ambos recebem 0.

**Equilíbrio Perfeito em Subjogos:** A análise por indução retroativa começa pelo respondedor. No subjogo após qualquer oferta \(x\), aceitar dá \(1-x \geq 0\) e rejeitar dá \(0\). Portanto, o respondedor aceita qualquer oferta (mesmo a mais miserável). Antecipando isso, o proponente oferece \(x = 1\) (fica com tudo), pois sabe que o respondedor aceitará.

!!! warning "Teoria vs. Evidência"
    A previsão teórica — proponente oferece quase nada, respondedor aceita — é sistematicamente rejeitada em experimentos. Ofertas modais são 40-50% do bolo, e ofertas abaixo de 20% são frequentemente rejeitadas. Isso motivou modelos de preferências sociais (Fehr-Schmidt, Módulo 8) e de racionalidade limitada.

### Barganha de Rubinstein (ofertas alternadas)

O jogo do ultimato é extremo: uma única oferta, sem possibilidade de contraproposta. Na prática, a maioria das negociações envolve rodadas de ofertas e contraofertas, e o custo do atraso — salários não pagos durante uma greve, produção perdida, oportunidades desperdiçadas — é o que impele as partes ao acordo. O modelo de Rubinstein captura essa dinâmica com elegância e produz um resultado notavelmente preciso.

Dois jogadores alternam propostas com fator de desconto \(\delta \in (0,1)\). No período 1, o jogador 1 propõe; se 2 rejeita, no período 2 o jogador 2 propõe; e assim por diante. Rubinstein (1982) demonstrou que esse jogo, apesar de ter infinitas rodadas de ofertas e contraofertas, possui um **único EPS**, com divisão determinada exclusivamente pelos fatores de desconto dos dois jogadores:

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
    **Em uma frase:** Na barganha de Rubinstein, quem é mais paciente (maior \(\delta\)) fica com a maior fatia — mas o proponente sempre tem uma ligeira vantagem.

    **Dois efeitos em ação:** O resultado de Rubinstein reflete a interação de dois determinantes do poder de barganha:

    1. **Vantagem do proponente** (*first-mover advantage*): mesmo com desconto simétrico (\(\delta_1 = \delta_2 = \delta\)), o jogador que faz a primeira proposta obtém \(1/(1+\delta) > 1/2\) — mais do que a metade. Essa vantagem vem do fato de que o respondedor enfrenta a escolha entre aceitar *agora* e esperar (perdendo \(\delta\) do valor pelo atraso). A vantagem é pequena quando ambos são pacientes (\(\delta \to 1 \implies 1/(1+\delta) \to 1/2\)) e grande quando são impacientes (\(\delta \to 0 \implies 1/(1+\delta) \to 1\), como no jogo do ultimato).

    2. **Vantagem da paciência** (*patience advantage*): quando \(\delta_1 \neq \delta_2\), o jogador mais paciente extrai mais do bolo, independentemente de quem propõe primeiro. Pela equação $\eqref{eq:9b.2}$, se \(\delta_1 > \delta_2\), o jogador 1 obtém um share maior. A paciência funciona como poder de barganha porque quem pode esperar mais sem custos elevados é mais difícil de pressionar.

    **Pense assim:** Numa negociação salarial entre o sindicato dos metalúrgicos e uma montadora, cada rodada sem acordo custa para ambos (trabalhadores perdem salário, empresa perde produção). Quem aguenta mais tempo sem acordo — quem tem mais "reservas" — consegue extrair mais valor.

    **Conexão com Nash Bargaining:** Rubinstein (1982) mostrou que o EPS de ofertas alternadas converge para a solução de barganha de Nash quando o intervalo entre ofertas vai a zero — uma fundamentação não cooperativa para o modelo cooperativo.

!!! box-mundo "Box Mundo 9b.3 — Brexit: barganha sequencial com prazo e paciência assimétrica"

    **Contexto:** A negociação do Brexit (2017–2020) entre o Reino Unido e a União Europeia é um caso notável de barganha sequencial em que a estrutura temporal e a paciência relativa das partes determinaram o resultado — precisamente como prevê o modelo de Rubinstein. O Artigo 50 do Tratado de Lisboa estabelecia um prazo de dois anos para a conclusão das negociações (extensível por unanimidade), criando uma barganha com horizonte finito e deadline conhecido.

    **Dados:** O processo de negociação durou de março de 2017 (ativação do Artigo 50) a dezembro de 2020 (acordo comercial final). O Reino Unido enfrentou três deadlines de saída (março de 2019, abril de 2019 e outubro de 2019), tendo solicitado duas extensões. O acordo final (Trade and Cooperation Agreement, TCA) foi fechado em 24 de dezembro de 2020, apenas sete dias antes do prazo. A análise do Institute for Government (2021) estimou que o custo anual do Brexit para o PIB britânico seria de 4–5% no longo prazo, enquanto o impacto sobre o PIB da UE-27 seria inferior a 0,5%.

    **Análise:** A assimetria de paciência era estrutural. Para o Reino Unido, o custo de não-acordo (*no-deal Brexit*) era alto: disrupção de cadeias de suprimento, tarifas da OMC sobre 43% das exportações, perda imediata de acesso ao mercado financeiro europeu. Para a UE, o custo era menor: o Reino Unido representava ~15% do comércio externo da UE, mas a UE representava ~45% do comércio do Reino Unido. Em termos do modelo de Rubinstein, \(\delta_{UK} < \delta_{UE}\) — a UE era mais paciente porque tinha menos a perder com o atraso. O resultado é previsto pela teoria: o jogador menos paciente (UK) fez concessões desproporcionais. O acordo final incluiu fronteira aduaneira no Mar da Irlanda (concessão britânica), acesso limitado ao mercado de serviços financeiros (antes pleno), e regime de pesca com quotas gradualmente reduzidas — termos significativamente mais próximos da posição inicial da UE do que da britânica. O prazo fixo (deadline) exacerbou a assimetria: à medida que o deadline se aproximava, o custo do atraso para o UK aumentava enquanto a UE podia simplesmente esperar — uma versão real do efeito da impaciência no modelo de Rubinstein.

    **Para refletir:** Como a existência de uma opção externa para o Reino Unido (acordos bilaterais com EUA, Austrália, Japão) alterou a dinâmica de barganha? O modelo de Rubinstein com opções externas prevê que essas opções só são relevantes se superiores ao payoff de equilíbrio sem elas — foram?

    **Fonte:** Sampson, Thomas. (2017). "Brexit: The Economics of International Disintegration." *Journal of Economic Perspectives*, 31(4), 163–184. Institute for Government. (2021). *The Brexit Effect: How Brexit Has Changed the UK's Approach to Trade*.

### Opções externas e poder de barganha

O modelo básico de Rubinstein supõe que as partes só podem alcançar um acordo entre si. Na prática, porém, a maioria dos negociadores possui **opções externas** (*outside options*): o trabalhador pode aceitar uma oferta de outra empresa; o sindicato pode decretar greve e recorrer ao fundo de greve; a empresa pode transferir a produção para outra planta. A presença de opções externas altera fundamentalmente o equilíbrio de barganha.

O **princípio da opção externa** (Binmore, Shaked e Sutton, 1989) estabelece que a opção externa de um jogador afeta o resultado da barganha somente se essa opção for suficientemente atraente — mais precisamente, se o payoff da opção externa exceder o que o jogador obteria sem ela no EPS de Rubinstein. Quando a opção externa é "boa o suficiente" para ser vinculante, o jogador recebe exatamente o valor da opção externa (e o outro fica com o resíduo). Quando a opção externa é inferior ao que o jogador obteria de qualquer forma pela barganha, ela é irrelevante para o equilíbrio.

Essa lógica tem implicações diretas para a economia do trabalho e para a análise de fusões. Na negociação salarial, o "salário reserva" do trabalhador — determinado pelo seguro-desemprego, por oportunidades alternativas de emprego e pela renda informal — funciona como opção externa. Políticas que elevam o salário reserva (como o seguro-desemprego mais generoso ou um mercado de trabalho aquecido) aumentam o poder de barganha dos trabalhadores. Em fusões e aquisições, a existência de um comprador alternativo ("white knight") eleva o preço que o primeiro comprador precisa oferecer — a opção externa do vendedor é vinculante e extrai valor do adquirente.

A paciência (\(\delta\)) e as opções externas são os dois determinantes fundamentais do poder de barganha. É instrutivo notar que ambos operam pelo mesmo canal: eles determinam o quanto o jogador perde ao *não* chegar a um acordo. Um jogador paciente perde pouco com o atraso; um jogador com boa opção externa perde pouco com o impasse. Em ambos os casos, a relutância em aceitar termos desfavoráveis confere poder. A aplicação ao mercado de trabalho no Capítulo 16 (modelos de salário de eficiência e barganha entre firma e sindicato) utiliza extensivamente essa lógica.

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

??? code "R Interativo — Ultimatum Game: teoria vs. experimento (Adams, 2025, Cap. 8)"
    O jogo do ultimato é um dos mais estudados em economia experimental. A previsão teórica (oferta mínima, aceitação total) é sistematicamente violada: ofertas modais são 40-50% e ofertas abaixo de 20% são frequentemente rejeitadas.

    Andersen et al. (2011) realizaram experimentos na Índia com stakes variando de US\$ 0,50 a US\$ 200 (até 8 meses de salário local). Com stakes muito altos, as ofertas convergem para a previsão teórica — sugerindo que preferências por fairness têm um preço.

    <iframe src="/micro-book/graficos/cap09/webr-ultimatum.html" title="Figura 9b.3 — Ultimatum Game" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.3 — Simulação de um experimento de ultimatum game com modelo logit.** Altere os parâmetros da simulação e estime a probabilidade de aceitar em função da oferta.
    </div>

---

??? code "R Interativo — Dinâmica de preços e conluio em Perth (Adams, 2025, Cap. 7)"
    Wang (2009) e Clark e Roos (2019) documentaram padrões de preços cíclicos ("Edgeworth cycles") no mercado de gasolina de Perth, Austrália — evidência empírica da dinâmica cooperação/punição prevista pelos modelos de jogos repetidos.

    Este box simula os ciclos de Edgeworth: preços sobem gradualmente (fase cooperativa) e depois desabam (fase de punição/undercut), gerando o padrão "dente de serra".

    <iframe src="/micro-book/graficos/cap09/webr-gasoline.html" title="Figura 9b.4 — Dinâmica de preços e conluio" class="graph-iframe" style="height:1020px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.4 — Simulação de ciclos de Edgeworth no mercado de gasolina.** Baseado em Adams (2025, Cap. 7) e dados de Perth.
    </div>

---

*Jogos repetidos e barganha revelam o poder do tempo. No próximo módulo, tiramos a última certeza: os jogadores nem sabem contra quem estão jogando. And now for something completely different.*

---

## 🧪 Atividades de Sala de Aula

!!! classroom "Atividade 9b.1 — Jogo do Ultimato com dinheiro real (20 min)"
    **Objetivo:** Confrontar a previsão teórica (proponente oferece quase nada, respondedor aceita) com o comportamento observado — e motivar a discussão sobre preferências sociais (Capítulo 8) e limites da racionalidade.

    **Material:** Envelopes com R$ 10 em moedas de R$ 1 (ou fichas/pontos equivalentes); formulários de proposta e resposta.

    **Protocolo:**

    1. **Formação de pares anônimos** (3 min): Divida a turma em proponentes e respondedores. Pares são formados anonimamente (proponente não sabe quem é seu respondedor e vice-versa). Use números aleatórios.
    2. **Proposta** (3 min): Cada proponente decide como dividir R$ 10: escreve em papel fechado "Ofereço R$ X ao respondedor, fico com R$ (10 - X)".
    3. **Resposta** (3 min): Cada respondedor recebe a oferta (sem saber quem fez) e decide: Aceitar (ambos recebem conforme a divisão) ou Rejeitar (ambos recebem R$ 0).
    4. **Coleta de dados** (3 min): Registre todas as ofertas e respostas. Projete a distribuição.
    5. **Debrief** (8 min):
        - **Previsão teórica**: proponente oferece R$ 0 (ou R$ 1), respondedor aceita. Quantas ofertas foram ≤ R$ 2? Quantas foram rejeitadas?
        - **Resultado típico**: ofertas modais entre R$ 4 e R$ 5; ofertas abaixo de R$ 2 frequentemente rejeitadas.
        - **Discussão**: "Por que respondedores rejeitam ofertas positivas (recusam dinheiro grátis)?" → Aversão à inequidade (Fehr-Schmidt, Cap. 8), punição altruísta, normas de fairness.
        - "Se fossem dois bots racionais, qual seria o resultado?" → EPS por indução retroativa.
        - "O que muda se o proponente sabe o nome do respondedor?" → Normas sociais, identidade, efeito do anonimato.

    **Conexão com o conteúdo:** Jogo do ultimato (Seção 9b.3), EPS vs. comportamento observado, ponte com economia comportamental (Cap. 8). Referência: Güth, Schmittberger e Schwarze (1982), "An Experimental Analysis of Ultimatum Bargaining", *Journal of Economic Behavior & Organization*.

!!! classroom "Atividade 9b.2 — Mercado de limões ao vivo (25 min)"
    **Objetivo:** Demonstrar visualmente o *market unraveling* de Akerlof — observar a seleção adversa destruindo o mercado em tempo real.

    **Material:** Cartas de baralho (Ás a 10 = qualidades 1 a 10); fichas de "dinheiro"; quadro para registrar transações.

    **Protocolo:**

    1. **Setup** (5 min): Metade da turma são vendedores, metade compradores. Cada vendedor sorteia uma carta (qualidade \(q\), secreta). Valor do carro para o vendedor = \(q\); valor para o comprador = \(1{,}5q\). Há ganhos de troca em *toda* transação (comprador valoriza mais).
    2. **Rodada 1 — Informação simétrica** (5 min): Vendedores mostram a carta. Compradores e vendedores negociam livremente. Registre preços e qualidades transacionadas. Resultado esperado: todas as transações ocorrem a preços entre \(q\) e \(1{,}5q\).
    3. **Rodada 2 — Informação assimétrica** (8 min): Vendedores *não* mostram a carta. O comprador sabe apenas a distribuição (uniforme de 1 a 10). Negociação livre. Registre o que acontece.
    4. **Debrief** (7 min):
        - Compare a quantidade de transações nas Rodadas 1 e 2. Na Rodada 2, carros de alta qualidade foram vendidos?
        - "Quem saiu do mercado primeiro?" → Vendedores de carros bons (o preço médio era baixo demais).
        - "Isso acontece no mundo real?" → Carros usados, planos de saúde individuais (Box Brasil ANS, Cap. 9d).
        - "Que mecanismo poderia resolver?" → Garantias (sinalização), vistoria (certificação), obrigatoriedade (regulação).

    **Conexão com o conteúdo:** Seleção adversa de Akerlof (Módulo 9d, Seção 9d.5), *market unraveling*, mecanismos de mitigação. Inspirado em Holt (2007, Cap. 24) e Bergstrom e Miller (2000, Cap. 32).

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O Equilíbrio Perfeito em Subjogos (EPS) refina o equilíbrio de Nash ao:"
    - (a) Exigir que todos os jogadores usem estratégias dominantes
    - (b) Eliminar equilíbrios sustentados por ameaças não críveis em subjogos
    - (c) Permitir que jogadores revisem suas estratégias a cada rodada
    - (d) Garantir que o resultado seja Pareto-ótimo

    ??? success "Resposta"
        **(b)** O EPS exige que a estratégia de cada jogador constitua um equilíbrio de Nash em todo subjogo do jogo, eliminando ameaças que o jogador não teria incentivo a cumprir se o momento chegasse. Todo EPS é EN, mas nem todo EN é EPS. A alternativa (d) é falsa — o EPS pode ser ineficiente.

??? question "2. A indução retroativa (backward induction) resolve jogos sequenciais começando:"
    - (a) Pelo primeiro nó de decisão e avançando para frente
    - (b) Pelos nós terminais, determinando a melhor ação em cada nó de trás para frente
    - (c) Pelo jogador com mais estratégias disponíveis
    - (d) Pela eliminação aleatória de estratégias dominadas

    ??? success "Resposta"
        **(b)** A indução retroativa começa nos nós finais da árvore do jogo, determina a ação ótima do jogador que decide por último, substitui esse nó pelo payoff resultante e recua até o início. Isso garante credibilidade em cada estágio. A alternativa (a) descreve indução progressiva, que não elimina ameaças não críveis.

??? question "3. No Folk Theorem para jogos repetidos infinitamente, a cooperação pode ser sustentada em equilíbrio se:"
    - (a) Os jogadores são altruístas e se importam com o bem-estar dos outros
    - (b) O fator de desconto é suficientemente alto (jogadores são pacientes), permitindo que punições futuras disciplinem desvios presentes
    - (c) O jogo é jogado um número finito e conhecido de vezes
    - (d) Existe um mecanismo externo de enforcement

    ??? success "Resposta"
        **(b)** O Folk Theorem mostra que, se os jogadores são suficientemente pacientes ($\delta$ alto), qualquer payoff individualmente racional pode ser sustentado como equilíbrio do jogo repetido infinitamente, usando estratégias de punição (como trigger/grim). A alternativa (c) leva ao resultado oposto — pelo argumento de indução retroativa, a cooperação se desfaz; (a) não é necessário; (d) não é necessário quando a repetição fornece enforcement endógeno.

??? question "4. No modelo de barganha de Rubinstein com ofertas alternadas, o poder de barganha de um jogador aumenta quando:"
    - (a) Seu fator de desconto diminui (fica mais impaciente)
    - (b) Seu fator de desconto aumenta (fica mais paciente) em relação ao do oponente
    - (c) O número total de rodadas aumenta
    - (d) Ambos os jogadores têm o mesmo fator de desconto

    ??? success "Resposta"
        **(b)** No equilíbrio de Rubinstein, o jogador mais paciente obtém uma fatia maior do excedente. Paciência ($\delta$ alto) significa que o custo de esperar é menor, o que fortalece a posição de barganha. A alternativa (a) reduz o poder; (c) é irrelevante no modelo com horizonte infinito; (d) implica divisão simétrica, não aumento de poder.

??? question "5. Em um jogo finito repetido $T$ vezes (com $T$ conhecido), o argumento de 'unraveling' (desvendamento) implica que:"
    - (a) A cooperação é sustentável em todas as rodadas, desde que $T$ seja grande
    - (b) A cooperação se desfaz por indução retroativa: na última rodada não há incentivo a cooperar, logo na penúltima também não, e assim por diante
    - (c) Os jogadores cooperam nas primeiras rodadas e desviam apenas nas últimas
    - (d) O resultado depende exclusivamente do número de jogadores

    ??? success "Resposta"
        **(b)** Com $T$ finito e conhecido, a indução retroativa parte da rodada $T$ (onde não há futuro para punir, logo ninguém coopera), propaga para $T-1$, e assim por diante até a rodada 1. O único EPS é a repetição do EN do jogo estático em todas as rodadas. A alternativa (c) pode ocorrer com incerteza sobre $T$ ou com tipos comportamentais, mas não no modelo padrão com $T$ conhecido.

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação completa envolvem jogadores que agem em sequência, podendo observar as ações anteriores. O conceito de solução central é o **Equilíbrio Perfeito em Subjogos (EPS)**, obtido por **indução retroativa**.
- O EPS refina o equilíbrio de Nash ao eliminar equilíbrios sustentados por **ameaças não críveis** — ações que o jogador não teria incentivo para executar se o momento chegasse. Todo EPS é NE, mas a recíproca é falsa.
- Em **jogos finitamente repetidos** com equilíbrio de estágio único, a indução retroativa implica repetição do equilíbrio de estágio em todos os períodos (*unraveling*).
- Em **jogos repetidos infinitamente**, a cooperação pode ser sustentada em equilíbrio via estratégias de punição (grim trigger, *tit-for-tat*), desde que os jogadores sejam suficientemente pacientes (\(\delta \geq \delta^*\)). A "sombra do futuro" é o mecanismo disciplinador.
- O **Folk Theorem** mostra que, com \(\delta\) suficientemente alto, qualquer payoff individualmente racional e factível pode ser sustentado como equilíbrio — gerando multiplicidade de equilíbrios e limitando o poder preditivo.
- Na **barganha de Rubinstein** (ofertas alternadas), o único EPS gera uma divisão determinada pelos fatores de desconto: o jogador mais paciente obtém a maior fatia.
- O **comprometimento** — investimento irreversível, contratos vinculantes ou reputação — é o mecanismo que torna ameaças críveis e confere vantagem estratégica. Dispositivos de comprometimento restringem as próprias opções do agente para alterar as expectativas dos demais — um princípio que se estende à escolha intertemporal (Capítulo 18).
- A exigência de **prova de renegociação** refina os equilíbrios do Folk Theorem: estratégias de punição só são críveis se os jogadores não teriam incentivo para renegociar e retornar à cooperação durante a fase de punição.
- As **opções externas** dos negociadores afetam o resultado da barganha quando são suficientemente atrativas para serem vinculantes — alterando o ponto de referência do acordo.

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
| Dispositivo de comprometimento | Ação ou mecanismo que restringe as opções futuras do agente, tornando críveis suas ameaças ou promessas (ex.: investimento irreversível, regras fiscais, independência do Banco Central). |
| Prova de renegociação | Critério de refinamento que exige que a estratégia de punição não seja Pareto-dominada por um retorno à cooperação — punições que ambos os jogadores prefeririam abandonar não são críveis. |
| Opção externa (*outside option*) | Payoff disponível a um negociador fora da barganha corrente; vinculante quando excede o payoff de equilíbrio sem ela. |
| Payoff de minimax | Menor payoff que os demais jogadores podem impor ao jogador \(i\), supondo que \(i\) jogue sua melhor resposta; é o limiar inferior para payoffs sustentáveis no Folk Theorem. |

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

??? exercicio-resolvido "Exercício Resolvido 9b.3 — Cooperação com punição temporária (Tit-for-Two-Tats)"
    **Enunciado:** Dois duopolistas jogam o Dilema dos Prisioneiros repetido infinitamente com payoffs \(T = 10\), \(R = 6\), \(P = 2\), \(S = 0\) e fator de desconto \(\delta\). Considere a estratégia "Tit-for-Two-Tats" (TF2T): coopere no primeiro período; só puna (jogue D) se o oponente desviou nos *dois* últimos períodos consecutivos; caso contrário, coopere.

    (a) Qual é o \(\delta^*\) mínimo para sustentar cooperação com TF2T?

    (b) Compare com o grim trigger e o *tit-for-tat* padrão. Qual estratégia é mais "permissiva"?

    (c) Discuta a vantagem da TF2T em termos de prova de renegociação.

    **Resolução:**

    **(a)** Com TF2T, um desvio isolado em um período não é punido (o oponente "perdoa" um desvio). Para explorar a TF2T, o jogador precisa desviar em *dois* períodos consecutivos. O desvio mais lucrativo é:

    - Período \(t\): desviar → ganho \(T = 10\) (em vez de \(R = 6\)).
    - Período \(t+1\): desviar novamente → ganho \(T = 10\) (o oponente ainda coopera, pois foi apenas um desvio).
    - Período \(t+2\) em diante: punição ativada, oponente joga D. Retornando à cooperação após a punição.

    Na verdade, com TF2T, após dois desvios consecutivos, o oponente pune por um período. O fluxo de payoffs do desvio ótimo (desviar uma vez e voltar a cooperar) é:

    \[
    V_{\text{desvio}} = 10 + \frac{6\delta}{1-\delta}
    \]

    pois um único desvio não ativa punição. Para que a cooperação seja sustentável, precisamos que *nenhum* padrão de desvios seja lucrativo. O desvio permanente (desviar para sempre) dá:

    \[
    V_{\text{desvio permanente}} = 10 + 10\delta + \frac{2\delta^2}{1-\delta}
    \]

    (dois períodos de \(T = 10\) pois no segundo o oponente ainda coopera, depois punição perpétua).

    Cooperação: \(V_{\text{coop}} = 6/(1-\delta)\).

    A condição vinculante é contra o desvio permanente:

    \[
    \frac{6}{1-\delta} \geq 10 + 10\delta + \frac{2\delta^2}{1-\delta}
    \]

    \[
    6 \geq 10(1-\delta) + 10\delta(1-\delta) + 2\delta^2 = 10 - 10\delta + 10\delta - 10\delta^2 + 2\delta^2
    \]

    \[
    6 \geq 10 - 8\delta^2 \implies 8\delta^2 \geq 4 \implies \delta \geq \frac{1}{\sqrt{2}} \approx 0{,}707
    \]

    **(b)** Com grim trigger: \(\delta^* = (T-R)/(T-P) = 4/8 = 0{,}5\). Com *tit-for-tat* padrão: \(\delta^* = 0{,}5\) (mesma fórmula). Com TF2T: \(\delta^* \approx 0{,}707\).

    A TF2T é **mais exigente** em termos de paciência — requer \(\delta\) mais alto para sustentar cooperação, porque a punição é mais branda (tolera um desvio), o que reduz a deterrência.

    **(c)** A vantagem da TF2T é que ela é mais **robusta a erros** e mais **crível como punição**. Numa relação comercial real, é implausível que uma empresa abandone permanentemente a cooperação por causa de um único desvio (que poderia ser um erro ou um choque temporário). A TF2T filtra esses "ruídos" e só pune padrões consistentes de não-cooperação. Em termos de prova de renegociação, a punição da TF2T (um período de D) é temporária e proporcional, não envolvendo destruição mútua perpétua — é mais crível que a punição do grim trigger, que nenhum par de jogadores racionais manteria voluntariamente.

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

<a id="ex-9b-10"></a>**Exercício 9b.10.** (Difícil — Dilema dos Prisioneiros finitamente repetido com horizonte incerto) Dois jogadores jogam o Dilema dos Prisioneiros com payoffs \(T = 8\), \(R = 5\), \(P = 1\), \(S = 0\). O jogo é repetido, mas após cada período há uma probabilidade \(p\) de que o jogo termine (e \(1-p\) de que continue).

(a) Mostre que o fator de desconto efetivo é \(\delta_{\text{ef}} = \delta(1-p)\), onde \(\delta\) é o fator de desconto puro. Derive a condição para sustentabilidade da cooperação com grim trigger em termos de \(\delta\) e \(p\).

(b) Se \(\delta = 0{,}95\), qual é a probabilidade máxima de término \(p^*\) que ainda permite sustentar cooperação?

(c) Interprete o resultado: em mercados onde há alta probabilidade de saída de concorrentes (p alto), o conluio é mais ou menos estável? Relacione com a concentração do mercado de cimento no Brasil, onde poucas firmas operam com horizonte de longo prazo.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-10)

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

??? question "ANPEC — Jogos dinâmicos, EPS e jogos repetidos"
    Considere jogos dinâmicos com informação completa. Avalie as afirmações:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em todo jogo finito com informação perfeita, a indução retroativa identifica pelo menos um Equilíbrio Perfeito em Subjogos. |
    | 1    | No Dilema dos Prisioneiros repetido infinitamente, a cooperação pode ser sustentada como EPS para qualquer valor do fator de desconto \(\delta \in (0,1)\). |
    | 2    | No modelo de barganha de Rubinstein com fatores de desconto simétricos \(\delta_1 = \delta_2 = \delta\), o jogador que propõe primeiro sempre obtém mais do que metade do excedente, para qualquer \(\delta \in (0,1)\). |
    | 3    | O Folk Theorem garante que, em jogos infinitamente repetidos com \(\delta\) suficientemente alto, qualquer perfil de payoffs factível e individualmente racional pode ser sustentado como equilíbrio. |
    | 4    | No Dilema dos Prisioneiros repetido finitamente (com horizonte \(T\) conhecido), o único EPS é a repetição do equilíbrio de Nash do jogo de estágio em todos os \(T\) períodos, desde que o jogo de estágio tenha equilíbrio de Nash único. |

    ??? success "Gabarito"
        **Respostas: 10111**

        - **Item 0 — V:** Pelo Teorema de Kuhn, todo jogo finito com informação perfeita possui pelo menos um EPS, identificável por indução retroativa. Se os payoffs são genéricos (sem empates), o EPS é único.

        - **Item 1 — F:** A cooperação exige \(\delta \geq \delta^* = (T-R)/(T-P)\). Para \(\delta < \delta^*\), a cooperação não é sustentável — o ganho imediato da traição supera a perda futura da punição. Portanto, não é para *qualquer* \(\delta\), mas apenas para \(\delta\) suficientemente alto.

        - **Item 2 — V:** Com \(\delta_1 = \delta_2 = \delta\), o proponente obtém \(x_1^* = 1/(1+\delta)\). Como \(\delta \in (0,1)\), temos \(1+\delta \in (1,2)\), logo \(x_1^* \in (1/2, 1)\). O proponente sempre obtém mais da metade — é a "vantagem do primeiro movimento" (*first-mover advantage*). A vantagem diminui quando \(\delta \to 1\) (convergência para 50/50) mas nunca desaparece para \(\delta < 1\).

        - **Item 3 — V:** Essa é a afirmação central do Folk Theorem (Fudenberg e Maskin, 1986). A versão para EPS requer \(\delta\) suficientemente próximo de 1 e que a dimensão do conjunto de payoffs factíveis seja adequada, mas a afirmação geral é verdadeira.

        - **Item 4 — V:** Com jogo de estágio que possui equilíbrio de Nash único, a indução retroativa a partir do período \(T\) implica que o equilíbrio de estágio é jogado em todos os períodos. Esse é o resultado clássico de *unraveling*. A condição crucial é que o equilíbrio de estágio seja único — com múltiplos equilíbrios (Benoit e Krishna, 1985), a cooperação pode emergir mesmo em jogos finitos.

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

- Adams, Christopher P. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 6–8.
- Andersen, Steffen, Seda Ertaç, Uri Gneezy, Moshe Hoffman, e John A. List. 2011. "Stakes Matter in Ultimatum Games." *American Economic Review* 101 (7): 3427–3439. [DOI](https://doi.org/10.1257/aer.101.7.3427)
- Axelrod, Robert. 1984. [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books.
- Bernheim, B. Douglas, e Debraj Ray. 1989. "Collective Dynamic Consistency in Repeated Games." *Games and Economic Behavior* 1 (4): 295–326. [DOI](https://doi.org/10.1016/0899-8256(89)90024-3)
- Benoit, Jean-Pierre, e Vijay Krishna. 1985. "Finitely Repeated Games." *Econometrica* 53 (4): 905–922. [DOI](https://doi.org/10.2307/1912660)
- Binmore, Ken, Avner Shaked, e John Sutton. 1989. "An Outside Option Experiment." *Quarterly Journal of Economics* 104 (4): 753–770. [DOI](https://doi.org/10.2307/2937866)
- Clark, Robert, e Jean-François Roos. 2019. "Learning to Coordinate: A Study in Retail Gasoline." Working Paper.
- Dixit, Avinash K. 1980. "The Role of Investment in Entry-Deterrence." *The Economic Journal* 90 (357): 95–106. [DOI](https://doi.org/10.2307/2231658)
- Farrell, Joseph, e Eric Maskin. 1989. "Renegotiation in Repeated Games." *Games and Economic Behavior* 1 (4): 327–360. [DOI](https://doi.org/10.1016/0899-8256(89)90025-5)
- Friedman, James W. 1971. "A Non-cooperative Equilibrium for Supergames." *Review of Economic Studies* 38 (1): 1–12. [DOI](https://doi.org/10.2307/2296617)
- Fudenberg, Drew, e Eric Maskin. 1986. "The Folk Theorem in Repeated Games with Discounting or with Incomplete Information." *Econometrica* 54 (3): 533–554. [DOI](https://doi.org/10.2307/1911307)
- Fudenberg, Drew, e Jean Tirole. 1991. [*Game Theory*](https://books.google.com/books/about/Game_Theory.html?id=pFPHKwXro3QC). Cambridge, MA: MIT Press.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press.
- Green, Edward J., e Robert H. Porter. 1984. "Noncooperative Collusion under Imperfect Price Information." *Econometrica* 52 (1): 87–100. [DOI](https://doi.org/10.2307/1911462)
- Kreps, David M., Paul Milgrom, John Roberts, e Robert Wilson. 1982. "Rational Cooperation in the Finitely Repeated Prisoners' Dilemma." *Journal of Economic Theory* 27 (2): 245–252. [DOI](https://doi.org/10.1016/0022-0531(82)90029-1)
- Morrison, Steven A., e Clifford Winston. 1996. "Causes and Consequences of Airline Fare Wars." *Brookings Papers on Economic Activity: Microeconomics*, 85–131.
- Sampson, Thomas. 2017. "Brexit: The Economics of International Disintegration." *Journal of Economic Perspectives* 31 (4): 163–184. [DOI](https://doi.org/10.1257/jep.31.4.163)
- Porter, Robert H. 1983. "A Study of Cartel Stability: The Joint Executive Committee, 1880–1886." *The Bell Journal of Economics* 14 (2): 301–314. [DOI](https://doi.org/10.2307/3003634)
- Rubinstein, Ariel. 1982. "Perfect Equilibrium in a Bargaining Model." *Econometrica* 50 (1): 97–109. [DOI](https://doi.org/10.2307/1912531)
- Schelling, Thomas C. 1960. [*The Strategy of Conflict*](https://books.google.com/books?id=7RkL4Z8Yg5AC). Cambridge, MA: Harvard University Press.
- Selten, Reinhard. 1965. "Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit." *Zeitschrift für die gesamte Staatswissenschaft* 121 (2): 301–324. [DOI](https://doi.org/10.1007/BF01299206)
- Wang, Zhongmin. 2009. "(Mixed) Strategy in Oligopoly Pricing: Evidence from Gasoline Price Cycles Before and Under a Timing Regulation." *Journal of Political Economy* 117 (6): 987–1030. [DOI](https://doi.org/10.1086/649801)
