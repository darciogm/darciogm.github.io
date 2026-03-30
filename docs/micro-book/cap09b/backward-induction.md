# Pense de Trás para Frente: Jogos Sequenciais e Indução Retroativa

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
