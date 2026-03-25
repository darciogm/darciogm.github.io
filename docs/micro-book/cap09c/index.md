# Capítulo 9c — Jogando no Escuro: Jogos com Informação Incompleta

Nos módulos anteriores, todos os jogadores conheciam perfeitamente a estrutura do jogo — payoffs, estratégias e número de jogadores. Na realidade, informação completa é a exceção. Uma firma entrante não sabe o custo marginal da incumbente; um licitante não conhece os valores dos concorrentes; um regulador não observa a eficiência da firma regulada. Uma seguradora não distingue, a priori, clientes de alto e baixo risco; um empregador não observa diretamente a produtividade de um candidato; um banco não conhece a probabilidade de default de cada tomador de crédito. Em todas essas situações, os agentes econômicos precisam tomar decisões estratégicas sob incerteza genuína sobre quem está "do outro lado da mesa" — e essa incerteza é *estrutural*, não meramente acidental.

A pervasividade da informação incompleta na vida econômica motivou uma das maiores revoluções metodológicas da teoria dos jogos. Antes de Harsanyi, a análise de jogos com informação incompleta era considerada intratável: como definir equilíbrio quando os jogadores nem sequer conhecem as regras completas do jogo? A resposta, engenhosa em sua simplicidade conceitual, transformou o campo.

Harsanyi (1967–68) resolveu o problema de modelar jogos com **informação incompleta** ao introduzir a noção de "tipos": cada jogador tem um tipo privado (sorteado pela natureza), e as crenças sobre os tipos dos outros são descritas por uma distribuição de probabilidade (prior comum). O conceito de equilíbrio correspondente é o **Equilíbrio Bayesiano de Nash** (BNE). A ideia central é que, embora os jogadores não conheçam os tipos uns dos outros, eles *conhecem* a distribuição de probabilidade que governa esses tipos — a chamada *prior comum*. Essa hipótese, que pode parecer restritiva à primeira vista, é na verdade a condição mínima para que a análise de equilíbrio seja possível: sem concordância sobre a distribuição dos tipos, os jogadores nem sequer concordariam sobre qual jogo estão jogando.

Este módulo cobre jogos bayesianos estáticos e sua principal aplicação: a **teoria de leilões** (Gibbons, 1992, Cap. 3). Os conceitos aqui desenvolvidos conectam-se diretamente ao Capítulo 9a (jogos estáticos com informação completa, cujo equilíbrio de Nash é o caso especial sem tipos privados), ao Capítulo 9b (jogos dinâmicos com informação completa, que introduz credibilidade e ameaças — cruciais nos leilões ascendentes) e ao Capítulo 9d (jogos dinâmicos com informação incompleta, que aprofunda sinalização e reputação). O leitor que domina o BNE estará preparado para os modelos de sinalização em 9d, nos quais a assimetria informacional persiste ao longo de múltiplos estágios. Além disso, os conceitos de informação assimétrica formalizados aqui fornecem a linguagem para os modelos de economia da informação do Capítulo 19 — seleção adversa, risco moral e contratos ótimos são, em essência, aplicações do desenho de mecanismos a contextos específicos de mercado.

A estrutura do capítulo reflete uma progressão lógica. Começamos pela formalização do jogo bayesiano e do conceito de tipo (Seção 9c.1), passamos ao equilíbrio (Seção 9c.2), aplicamos o arcabouço à teoria de leilões (Seção 9c.3) e culminamos com a inversão do problema — o desenho de mecanismos (Seção 9c.4). Cada seção constrói sobre a anterior, e os exemplos e exercícios ilustram a aplicabilidade prática de cada conceito, desde leilões de petróleo no Brasil até leilões de publicidade online no Google.

---

## 9c.1 Informação Incompleta e Tipos

Como modelar formalmente uma situação em que os jogadores não conhecem as características uns dos outros? A solução engenhosa de Harsanyi consiste em introduzir um novo "jogador" — a natureza — que sorteia, no início do jogo, um perfil de *tipos* para os participantes. Cada jogador observa apenas o próprio tipo, mas conhece a distribuição de probabilidade sobre os tipos dos demais. Com essa reformulação, o jogo com informação incompleta se transforma em um jogo com informação imperfeita, passível de análise com as ferramentas já desenvolvidas.

Para fixar ideias, considere um exemplo concreto antes da formalização. Uma empresa incumbente pode ter custo marginal baixo (\(\theta = L\), firma eficiente) ou alto (\(\theta = H\), firma ineficiente). Uma entrante potencial não observa o tipo da incumbente, mas sabe que a probabilidade de enfrentar uma firma eficiente é \(p\). A decisão de entrar ou não no mercado depende crucialmente da crença sobre \(p\): se \(p\) é alto (a incumbente provavelmente é eficiente), a entrada é arriscada; se \(p\) é baixo, a entrada pode ser lucrativa. O jogo bayesiano formaliza exatamente essa situação — a natureza sorteia o tipo da incumbente, a entrante forma suas crenças usando \(p\), e ambas as partes agem racionalmente dado o que sabem.

!!! definition "Jogo Bayesiano"
    Um **jogo Bayesiano** é definido por:

    \[
    \Gamma^B = \langle N, (S_i)_{i \in N}, (\Theta_i)_{i \in N}, (u_i)_{i \in N}, p \rangle
    \label{eq:9c.1} \tag{9c.1}
    \]

    onde \(\Theta_i\) é o conjunto de tipos do jogador \(i\), \(u_i(s, \theta)\) é o payoff, e \(p(\theta)\) é a distribuição conjunta sobre o perfil de tipos (prior comum).

A transformação de Harsanyi converte um jogo com informação incompleta em um jogo com informação imperfeita (mas completa): a "natureza" sorteia os tipos, cada jogador observa apenas o próprio tipo, e o jogo prossegue como um jogo simultâneo em que cada tipo é tratado como um "jogador" separado. O que antes era genuína ignorância sobre a estrutura do jogo, formalizada pela equação $\eqref{eq:9c.1}$, torna-se meramente incerteza sobre um lance aleatório — algo que as ferramentas probabilísticas podem tratar rigorosamente.

É importante notar a diferença entre **informação incompleta** e **informação imperfeita** (introduzida no Capítulo 9b). Informação imperfeita significa que os jogadores não observam todas as ações passadas; informação incompleta significa que não conhecem as características fundamentais dos adversários — custos, valores, preferências. A genialidade da transformação de Harsanyi é reduzir o segundo tipo ao primeiro, unificando o tratamento analítico. Uma vez que o jogo bayesiano está definido, as estratégias passam a ser *funções dos tipos*: em vez de escolher uma ação, cada jogador escolhe um plano contingente que especifica o que fazer para cada possível realização do seu tipo privado.

Essa distinção tem consequências profundas para a modelagem econômica. Em jogos com informação completa (Cap. 9a), basta especificar uma ação para cada jogador. Em jogos bayesianos, uma estratégia é um *mapeamento* do espaço de tipos para o espaço de ações: \(\sigma_i: \Theta_i \to S_i\) (ou, em estratégias mistas, \(\sigma_i: \Theta_i \to \Delta(S_i)\)). Essa mudança de perspectiva — de ações para planos contingentes — é o que torna possível analisar mercados com informação assimétrica, leilões com licitantes heterogêneos, e toda a gama de problemas de economia da informação que exploraremos ao longo deste livro.

A hipótese de *prior comum* — de que todos os jogadores compartilham a mesma distribuição de probabilidade sobre os tipos — merece atenção especial. Essa hipótese, formalmente \(p(\theta)\) na equação $\eqref{eq:9c.1}$, significa que a incerteza dos jogadores não vem de discordância sobre o modelo do mundo, mas apenas de *informação privada*: cada um sabe algo que os outros não sabem, mas todos concordam sobre a estrutura probabilística subjacente. Sem essa hipótese, seria necessário modelar crenças sobre crenças sobre crenças ad infinitum — o que Harsanyi mostrou ser equivalente a uma hierarquia infinita de tipos que pode ser colapsada em uma prior comum sob condições razoáveis.

Com a formalização do jogo bayesiano e a noção de estratégias contingentes ao tipo, estamos em posição de definir o conceito de equilíbrio — o Equilíbrio Bayesiano de Nash — que captura o comportamento racional quando cada jogador utiliza sua informação privada de forma ótima.

---

## 9c.2 Equilíbrio Bayesiano de Nash

Com a estrutura do jogo bayesiano definida, qual é o conceito de equilíbrio apropriado? A resposta natural é exigir que cada *tipo* de cada jogador maximize seu payoff esperado, condicionando na sua informação privada e nas estratégias de equilíbrio dos demais. Essa extensão do equilíbrio de Nash ao contexto bayesiano — o Equilíbrio Bayesiano de Nash (BNE) — é a contribuição central de Harsanyi.

A ideia é intuitiva: assim como no equilíbrio de Nash padrão cada jogador deve estar jogando uma melhor resposta às estratégias dos demais, no BNE essa exigência deve valer para *cada tipo* de cada jogador. O jogador tipo \(\theta_i\) não sabe quais tipos os outros receberam, mas pode calcular a expectativa de seu payoff usando a distribuição condicional \(p(\theta_{-i} | \theta_i)\) e as estratégias de equilíbrio \(\sigma_{-i}^*(\theta_{-i})\). Se tipos são independentes — como ocorre no modelo de valores privados independentes que será central na teoria de leilões — a distribuição condicional coincide com a prior marginal, simplificando consideravelmente o cálculo.

!!! definition "Equilíbrio de Nash Bayesiano"
    Um perfil de estratégias \(\sigma^* = (\sigma_1^*, \ldots, \sigma_n^*)\), onde \(\sigma_i^*: \Theta_i \to \Delta(S_i)\), é um BNE se, para todo \(i\) e todo \(\theta_i \in \Theta_i\):

    \[
    \sigma_i^*(\theta_i) \in \arg\max_{s_i \in S_i} \; E_{\theta_{-i}|\theta_i}\left[u_i(s_i, \sigma_{-i}^*(\theta_{-i}), \theta_i, \theta_{-i})\right]
    \label{eq:9c.2} \tag{9c.2}
    \]

    Cada tipo de cada jogador maximiza seu payoff esperado, condicionando nas crenças sobre os tipos dos outros e nas estratégias de equilíbrio dos demais.

!!! definition "Equilíbrio Bayesiano de Nash — Definição Operacional"
    Dito de forma equivalente, \(\sigma^*\) é um **BNE** se e somente se, para cada jogador \(i\) e cada tipo \(\theta_i\) com probabilidade positiva, a ação \(\sigma_i^*(\theta_i)\) é uma melhor resposta às estratégias dos demais, tomando a expectativa sobre \(\theta_{-i}\) usando a distribuição posterior de \(i\) sobre os tipos dos outros, condicionada em \(\theta_i\).

    Em termos práticos: encontrar um BNE equivale a resolver um sistema de problemas de otimização interligados — um para cada par (jogador, tipo) — em que as melhores respostas devem ser mutuamente consistentes.

O BNE herda as propriedades do equilíbrio de Nash: em jogos finitos, sempre existe pelo menos um BNE (possivelmente em estratégias mistas). A diferença fundamental está na *dimensionalidade* do problema de equilíbrio: com \(n\) jogadores e \(|\Theta_i|\) tipos cada, o número de condições de otimização cresce proporcionalmente ao produto dos tamanhos dos conjuntos de tipos — muito mais complexo do que o jogo de informação completa correspondente.

Para resolver um jogo bayesiano e encontrar o BNE na prática, o procedimento padrão segue três passos. Primeiro, enumerar as estratégias possíveis de cada jogador — lembrando que uma estratégia é uma *função* do tipo para ações, não simplesmente uma ação. Segundo, para cada perfil de estratégias candidato, verificar se cada tipo de cada jogador está jogando uma melhor resposta, tomando a expectativa sobre os tipos dos demais. Terceiro, identificar os perfis que satisfazem a condição de melhor resposta simultaneamente para todos os pares (jogador, tipo). Em jogos com tipos contínuos — como os leilões que estudaremos a seguir — os passos são análogos, mas envolvem a solução de equações diferenciais em vez de enumeração discreta.

É útil contrastar o BNE com o equilíbrio de Nash de informação completa. No equilíbrio de Nash padrão (Cap. 9a), cada jogador maximiza contra as *ações* dos demais. No BNE, cada tipo maximiza contra a *distribuição de ações* dos demais, induzida pelas estratégias de equilíbrio e pela distribuição de tipos. A incerteza sobre os tipos dos adversários introduz uma camada adicional de raciocínio probabilístico que é, ao mesmo tempo, a riqueza e a dificuldade dos jogos bayesianos.

!!! idea "Intuição Econômica"
    **BNE: escolher melhor resposta dado o que você acredita sobre os tipos alheios**

    **Em uma frase:** No BNE, cada tipo de cada jogador age como o melhor que pode, dado o que acredita saber sobre quem está do outro lado da mesa.

    **Pense assim:** Imagine que você negocia um contrato com uma empresa fornecedora. Você não sabe se ela é eficiente (custo baixo) ou ineficiente (custo alto). Mas sabe que, historicamente, 40% das fornecedoras são eficientes. No BNE, você formula uma proposta ótima contra essa distribuição de 40/60, e cada tipo da fornecedora responde com sua melhor oferta. Ninguém sabe o tipo do outro, mas todos agem racionalmente dado o que sabem.

    **Por que isso importa:** O BNE é o conceito que unifica leilões, seguros, mercados de trabalho e regulação sob um mesmo arcabouço. Em todos esses contextos, há agentes com informação privada tomando decisões simultâneas — e o BNE captura exatamente o que acontece quando todos são racionais e as crenças são consistentes.

!!! info "🏅 Prêmio Nobel — John C. Harsanyi (1994)"

    **John Charles Harsanyi** (1920–2000) foi um economista húngaro-americano. Fugiu da Hungria comunista em 1950, obteve o PhD em Stanford sob orientação de Kenneth Arrow e foi professor na UC Berkeley. Dividiu o Nobel com Nash e Selten.

    **Por que ganhou o Nobel:**
    Harsanyi resolveu o problema fundamental de como analisar jogos em que os jogadores não conhecem as características uns dos outros. Sua *transformação de Harsanyi* (1967–68) converte um jogo com informação incompleta em um jogo com informação imperfeita, introduzindo a "Natureza" como jogador que sorteia os tipos privados. Isso tornou possível aplicar o conceito de equilíbrio de Nash a situações de incerteza sobre os adversários.

    **Conexão com este capítulo:**
    O equilíbrio bayesiano de Nash (BNE) — conceito central deste capítulo — é a aplicação direta da transformação de Harsanyi. A ideia de que cada jogador possui um "tipo" privado sorteado pela Natureza, e que as estratégias são funções do tipo, fundamenta toda a análise de jogos com informação incompleta apresentada aqui.

!!! idea "Intuição Econômica"
    **Em uma frase:** Em jogos bayesianos, cada jogador usa sua informação privada para extrair vantagem, mas o equilíbrio incorpora essa assimetria.

    **Pense assim:** Num leilão de arte, você sabe quanto o quadro vale para você, mas não para os outros. Se lançar seu valor verdadeiro num leilão de primeiro preço, paga demais quando ganha. O equilíbrio envolve *bid shading* — lançar abaixo do valor. Mas num leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia dominante!

    **Por que isso importa:** O desenho do mecanismo (formato do leilão, regra de pagamento) determina se os participantes revelam informação verdadeira ou estratégica. A ANP e a ANEEL precisam escolher formatos que maximizem receita e eficiência nos leilões de petróleo e energia.

Com o conceito de BNE firmemente estabelecido, passamos à aplicação que mais transformou a teoria em prática: a teoria de leilões. Veremos que os leilões são o campo de testes por excelência dos jogos bayesianos — cada formato de leilão define um jogo bayesiano específico, e a análise do BNE correspondente revela propriedades surpreendentes sobre receita, eficiência e incentivos.

---

## 9c.3 Leilões de Valor Privado

A aplicação mais importante dos jogos bayesianos estáticos é a teoria de leilões. Em um leilão, cada participante possui informação privada sobre seu próprio valor pelo objeto e deve decidir quanto oferecer sem conhecer os valores dos concorrentes — um jogo bayesiano por excelência. Os leilões são também o campo onde a teoria dos jogos mais demonstrou sua utilidade prática: bilhões de dólares em espectro eletromagnético, direitos de exploração de petróleo e contratos governamentais são alocados por mecanismos cujo desenho foi informado diretamente pela teoria que estudaremos nesta seção.

A teoria moderna de leilões foi inaugurada por Vickrey (1961), que demonstrou a propriedade de revelação de verdade no leilão de segundo preço e estabeleceu as bases para a análise de bem-estar. Duas décadas depois, Myerson (1981) e Riley e Samuelson (1981) completaram o edifício com a derivação do leilão ótimo e o teorema da equivalência de receita. William Vickrey dividiu o Nobel de 1996 com James Mirrlees precisamente por essas contribuições — e Roger Myerson recebeu o Nobel de 2007 (junto com Hurwicz e Maskin) pelo desenho de mecanismos. Raramente uma área da teoria econômica gerou tanto reconhecimento tão rápido, o que reflete a importância prática imediata dos resultados.

### Modelo básico: IPV (Valores Privados Independentes)

\(N\) licitantes com valores \(v_i\) sorteados independentemente de \(F\) no intervalo \([0, \bar{v}]\). Cada licitante conhece \(v_i\) mas não os valores dos demais. O modelo IPV captura situações em que o valor do objeto é puramente subjetivo — como em leilões de arte, onde cada colecionador tem uma apreciação pessoal pelo quadro que não depende do que os outros acham. A independência entre os valores significa que o fato de outro licitante valorizar muito o objeto não informa nada sobre seu próprio valor — uma hipótese que será relaxada quando discutirmos valores comuns e afiliados.

O modelo IPV é a bancada de trabalho (*workhorse*) da teoria de leilões porque permite derivar resultados limpos e elegantes. Quatro formatos de leilão merecem atenção especial, pois constituem os "blocos fundamentais" a partir dos quais formatos mais complexos são construídos:

1. **Leilão inglês (ascendente):** O preço sobe continuamente até que reste apenas um licitante. O vencedor paga o preço no qual o penúltimo desistiu — que equivale, sob IPV, ao segundo maior valor.

2. **Leilão holandês (descendente):** O preço começa alto e desce até que alguém aceite. O vencedor paga o preço que aceitou — equivalente, estrategicamente, ao leilão de primeiro preço em envelope fechado.

3. **Leilão de primeiro preço (envelope fechado):** Cada licitante submete um lance em envelope fechado. O maior lance ganha e paga o próprio lance.

4. **Leilão de segundo preço / Vickrey (envelope fechado):** Cada licitante submete um lance em envelope fechado. O maior lance ganha, mas paga o *segundo* maior lance.

**Leilão de segundo preço (Vickrey):** O licitante com o maior lance ganha e paga o *segundo* maior lance. Lançar \(b_i = v_i\) é **estratégia fracamente dominante** — não depende das crenças sobre os outros.

!!! proof "Demonstração: Verdade é ótimo no leilão de Vickrey"
    Seja \(b_i = v_i\) o lance do jogador \(i\) e \(b_{(1)}^{-i}\) o maior lance dos demais. Se \(b_i > b_{(1)}^{-i}\), \(i\) ganha e paga \(b_{(1)}^{-i}\), obtendo \(v_i - b_{(1)}^{-i} \geq 0\). Suponha que \(i\) desvie:

    - **Lance acima** (\(b_i' > v_i\)): Ganha com mais frequência, mas nos casos extras paga \(b_{(1)}^{-i} > v_i\) — lucro negativo.
    - **Lance abaixo** (\(b_i' < v_i\)): Perde quando \(b_i' < b_{(1)}^{-i} < v_i\) — desiste de lucro positivo.

    Portanto, \(b_i = v_i\) é fracamente dominante. \(\blacksquare\)

No leilão de Vickrey, portanto, a verdade é ótima independentemente do que os outros fazem. A elegância dessa propriedade não pode ser subestimada: o licitante não precisa se preocupar com quantos concorrentes tem, quais são suas distribuições de valor, ou se eles são racionais. A estratégia ótima é a mesma em todos os cenários — lançar o valor verdadeiro. Essa robustez é a razão pela qual o leilão de segundo preço é o ponto de partida natural para a teoria. Mas e quando o vencedor paga seu *próprio* lance? Nesse caso, lançar o valor verdadeiro seria desastroso, e a estratégia ótima exige *sombreamento*.

**Leilão de primeiro preço:** O vencedor paga seu próprio lance. BNE simétrico com \(v_i \sim U[0, \bar{v}]\):

\[
b(v) = v \cdot \frac{N-1}{N}
\label{eq:9c.3} \tag{9c.3}
\]

Pela equação $\eqref{eq:9c.3}$, cada licitante "sombreia" seu lance por um fator \((N-1)/N\). Com 2 licitantes, o lance é metade do valor; com muitos, converge para o valor verdadeiro. Com mais concorrentes, o risco de perder o leilão aumenta e o sombreamento diminui — no limite, com infinitos licitantes, cada um lança (quase) seu valor verdadeiro.

A intuição por trás do sombreamento é fundamental: no leilão de primeiro preço, o licitante enfrenta um *trade-off* entre a probabilidade de ganhar e o lucro condicional à vitória. Lançar mais alto aumenta a chance de ganhar, mas reduz o ganho se vencer. A fórmula do BNE simétrico resolve esse trade-off de forma ótima: o sombreamento ótimo é exatamente proporcional ao valor, com fator \((N-1)/N\) que cresce em \(N\). Essa elegância matemática reflete uma lógica econômica profunda — o licitante "compra" probabilidade de vitória ao custo de lucro esperado, e o equilíbrio iguala os benefícios marginais de ambos os lados.

Para derivar a equação $\eqref{eq:9c.3}$, considere o problema do licitante \(i\) com valor \(v\) que escolhe o lance \(b\), dado que os demais \(N-1\) licitantes usam a estratégia crescente \(\beta(\cdot)\). A probabilidade de ganhar é \(\Pr(\beta(v_j) < b \; \forall j \neq i) = F(\beta^{-1}(b))^{N-1}\). Com \(F\) uniforme em \([0, \bar{v}]\), o problema se simplifica consideravelmente:

\[
\max_b \; (v - b) \cdot \left(\frac{\beta^{-1}(b)}{\bar{v}}\right)^{N-1}
\]

No equilíbrio simétrico, \(\beta^{-1}(b) = v\) quando \(b = \beta(v)\). A condição de primeira ordem, após alguma álgebra, produz a equação diferencial cuja solução (com condição de fronteira \(\beta(0) = 0\)) é exatamente $\eqref{eq:9c.3}$. A derivação completa para distribuições gerais aparece no Exercício 9c.8.

**Receita esperada:** Com \(v_i \sim U[0, 1]\):

\[
E[\text{Receita}] = \frac{N-1}{N+1}
\label{eq:9c.4} \tag{9c.4}
\]

<iframe src="../graficos/cap09c/leilao-primeiro-preco.html" title="Figura 9c.2 — Leilao de primeiro preco com N licitantes" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 9c.2 — Leilao de primeiro preco com N licitantes.** A funcao de lance otimo \(b(v) = v \cdot (N-1)/N\) mostra o sombreamento (*bid shading*): cada licitante lanca abaixo do seu valor verdadeiro. Ajuste \(N\) para ver como o sombreamento diminui com mais concorrentes.
</div>

### Teorema da Equivalência de Receita

Os leilões de primeiro e segundo preço parecem radicalmente distintos. No primeiro preço, o vencedor paga seu próprio lance (sombreado); no segundo preço, paga o lance do competidor mais próximo (sem sombreamento). As receitas deveriam diferir, certo? Surpreendentemente, não: sob condições bastante gerais, a receita esperada é *idêntica* em todos os formatos padrão.

!!! theorem "Revenue Equivalence Theorem (Myerson, 1981; Riley e Samuelson, 1981)"
    Com licitantes simétricos, IPV, risco-neutros, e qualquer mecanismo que (i) atribui o objeto ao licitante com maior valor e (ii) dá payoff zero ao tipo mais baixo, a **receita esperada** do leiloeiro é a mesma.

    Consequência: leilão de 1º preço, 2º preço, inglês e holandês geram a mesma receita esperada, como confirma a equação $\eqref{eq:9c.4}$.

A intuição por trás da equivalência de receita é uma das mais elegantes da microeconomia. Considere dois leilões que satisfazem as condições do teorema. Em ambos, o objeto vai para quem tem o maior valor — portanto, a alocação é idêntica. Agora, o payoff esperado do licitante com o menor valor possível (\(v = 0\)) é zero em ambos os formatos (condição de participação). Pelo *envelope theorem*, o payoff esperado de um licitante com valor \(v\) é completamente determinado pela probabilidade de vencer — que é \(F(v)^{N-1}\) em ambos os formatos (pois a alocação é eficiente). Assim:

\[
\Pi(v) = \int_0^v F(t)^{N-1} \, dt
\label{eq:9c.5} \tag{9c.5}
\]

Como o excedente total (valor do vencedor) é o mesmo e os payoffs dos licitantes são os mesmos, a receita do leiloeiro — que é a diferença — também deve ser a mesma. O argumento formal é desenvolvido no Exercício 9c.8(c), mas a lógica é transparente: se a alocação e os payoffs dos agentes são fixados, o "resíduo" para o principal (leiloeiro) está determinado.

!!! note "Quando a equivalência falha"
    A equivalência de receita falha com: (i) aversão ao risco (1º preço gera mais receita); (ii) assimetria entre licitantes; (iii) valores afiliados/comuns; (iv) colusão. Nesses casos, o formato do leilão importa — e o desenho ótimo de mecanismo (Myerson, 1981) se torna relevante.

Cada uma dessas violações merece um comentário. A **aversão ao risco** faz com que licitantes no primeiro preço sombreiem *menos* seus lances — preferem pagar um pouco mais para reduzir o risco de perder, aumentando a receita. A **assimetria** — quando licitantes têm distribuições de valor diferentes — quebra a condição de que a alocação eficiente depende apenas do formato; licitantes mais "fracos" tendem a lançar mais agressivamente no primeiro preço, e o efeito líquido sobre a receita é ambíguo. Os **valores afiliados** introduzem uma ligação informacional entre os valores dos licitantes: quando os valores são correlacionados, o *linkage principle* de Milgrom e Weber (1982) mostra que leilões que revelam mais informação (como o inglês) geram mais receita do que leilões de envelope fechado. Por fim, a **colusão** — em que licitantes coordenam para suprimir a competição — é mais facilmente sustentável em certos formatos do que em outros, como discutiremos no Box Brasil sobre cartéis.

!!! warning "Cuidado"
    **A maldição do vencedor não é sobre má sorte — é sobre seleção adversa**

    Um erro comum ao estudar leilões de valor comum é pensar que a "maldição do vencedor" é apenas um desvio comportamental ou resultado de irracionalidade. Na verdade, trata-se de um **problema estrutural de seleção adversa**: vencer um leilão de valor comum revela que sua estimativa era a mais alta entre todos os participantes, o que é uma *má notícia* sobre o valor real do objeto.

    **Erro típico:** "Minha estimativa é R$ 120 milhões, então vou lançar R$ 120 milhões." — Errado! Se você ganha, significa que todos os outros estimaram *menos* que R$ 120 milhões. O valor real provavelmente é menor.

    **Correção:** O lance ótimo condiciona na informação revelada pela vitória: \(b^* = E[V \mid s_i = \max_j s_j]\), que é *sempre menor* que \(s_i\) quando há mais de um licitante. A diferença \(s_i - b^*\) cresce com o número de concorrentes — mais licitantes significa mais seleção adversa.

    **Aplicação brasileira:** Em licitações de obras públicas, empresas que ignoram a maldição do vencedor frequentemente ganham contratos que se tornam prejudiciais, levando a renegociações ou abandono de obras — um problema crônico na infraestrutura nacional.

### Leilões de valor comum e a maldição do vencedor

Até aqui, assumimos valores privados. Em muitos contextos, porém, o objeto tem um valor *comum* que ninguém conhece com certeza — em leilões de petróleo, por exemplo, o volume de óleo é o mesmo para qualquer empresa, mas cada uma tem sua estimativa. Essa mudança de premissa introduz um fenômeno perverso.

No modelo de valor comum puro, o objeto tem um valor \(V\) desconhecido, e cada licitante \(i\) observa um sinal ruidoso \(s_i = V + \varepsilon_i\), onde \(\varepsilon_i\) são erros de estimação independentes com média zero. A diferença crucial em relação ao modelo IPV é que agora a informação dos *outros* licitantes é relevante para o *próprio* valor — se todos os concorrentes estimaram valores baixos, é provável que o verdadeiro \(V\) seja baixo, independentemente da estimativa individual de \(i\).

A maldição do vencedor emerge da seguinte lógica: condicional a vencer, o licitante descobre (implicitamente) que sua estimativa era a mais alta entre todas. Como os erros são simétricos, a estimativa mais alta tende a ser a mais *otimista* — ou seja, aquela que mais sobreestimou \(V\). O licitante racional deve, portanto, *ajustar seu lance para baixo*, levando em conta a informação adversa contida na vitória.

Formalmente, o lance ótimo no modelo de valor comum satisfaz:

\[
b(s_i) = E[V \mid s_i, \; s_i = \max_j s_j]
\label{eq:9c.6} \tag{9c.6}
\]

A equação $\eqref{eq:9c.6}$ mostra que o licitante deve condicionar não apenas em seu sinal, mas no *evento de vencer* — ou seja, no fato de que seu sinal é o maior. Essa expectativa condicional é sempre menor que \(s_i\) quando há dois ou mais licitantes, e a diferença cresce com \(N\). A magnitude do ajuste depende da variância do ruído e do número de competidores: mais licitantes e mais ruído exigem sombreamento mais agressivo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Em leilões de valor comum, ganhar é uma má notícia — significa que você estimou o valor mais alto que todos.

    **Pense assim:** Num leilão de direitos de exploração de petróleo (como os da ANP), o bloco vale o mesmo para todos, mas cada empresa tem uma estimativa diferente do volume de óleo. Quem ganha é quem estimou mais. Se todos cometem erros simétricos de estimação, o vencedor é o mais otimista — e provavelmente pagou demais.

    **Solução:** Licitantes racionais *sombreiam* seus lances adicionalmente para corrigir a maldição. A magnitude do ajuste depende do número de concorrentes: mais licitantes → mais seleção adversa → mais sombreamento.

    **Evidência:** Capen, Clapp e Campbell (1971) documentaram que empresas de petróleo no Golfo do México sistematicamente superestimaram o valor dos blocos — a maldição do vencedor em ação.

A evidência empírica e experimental sobre a maldição do vencedor é robusta e consistente. Em laboratório, Kagel e Levin (1986) mostraram que participantes inexperientes sistematicamente lançam acima do ajuste ótimo em leilões de valor comum, obtendo lucros negativos em média. Apenas após repetida experiência — e, crucialmente, após sofrerem perdas — os licitantes aprendem a ajustar seus lances. No campo, a documentação de Capen, Clapp e Campbell (1971) sobre os leilões de petróleo offshore nos EUA foi seminal: empresas que venceram leilões no Golfo do México obtiveram retornos sistematicamente abaixo do custo de capital, evidência direta de que não ajustavam suficientemente para a maldição do vencedor.

!!! box-mundo "🌍 Box Mundo 9c.1 — Desenho de leilões de espectro: o Nobel de 2020 e as lições dos leilões da FCC"

    **Contexto:** Em outubro de 2020, o Prêmio Nobel de Economia foi concedido a Paul Milgrom e Robert Wilson "por melhorias na teoria de leilões e invenções de novos formatos de leilão". A distinção reconheceu não apenas contribuições teóricas fundamentais — como o modelo de valores afiliados de Milgrom e Weber (1982) e a formalização da maldição do vencedor por Wilson (1969, 1977) — mas, sobretudo, a aplicação prática dessas ideias ao desenho de leilões de espectro eletromagnético pela Federal Communications Commission (FCC) dos Estados Unidos. Antes de 1994, a FCC alocava licenças de espectro por *beauty contests* (processos administrativos discricionários) e loterias — métodos que não revelavam informação sobre valores e geravam alocações ineficientes, além de oportunidades de rent-seeking. A transição para leilões competitivos, informada pela teoria de Milgrom e Wilson, transformou radicalmente a alocação de um dos recursos públicos mais valiosos do mundo.

    O desafio técnico era formidável. Licenças de espectro são complementares: uma operadora que detém frequências adjacentes em regiões geográficas contíguas obtém valor substancialmente maior do que a soma das partes. Essa complementaridade cria o *problema da exposição* — em leilões separados para cada licença, um licitante pode acabar comprando parte de um pacote desejado a preços inflados, sem garantia de obter as peças restantes. Milgrom, em colaboração com Wilson e outros economistas, desenhou o *Simultaneous Multiple Round Auction* (SMRA): todas as licenças são leiloadas simultaneamente em rodadas ascendentes, permitindo que os licitantes ajustem seus lances entre licenças à medida que os preços relativos se revelam. Posteriormente, Milgrom desenvolveu o *Combinatorial Clock Auction* (CCA) e o *incentive auction* (2016–17), que simultaneamente realocou espectro de TV para uso de banda larga — um "leilão reverso" para comprar licenças de emissoras combinado com um "leilão direto" para vendê-las a operadoras de telecomunicações.

    **Dados:** Desde 1994, os leilões de espectro da FCC arrecadaram mais de US$ 230 bilhões em receita para o Tesouro americano. O leilão de espectro AWS-3 (2015) arrecadou US$ 44,9 bilhões; o incentive auction (Leilão 1000–1002, 2016–17) arrecadou US$ 19,8 bilhões e liberou 84 MHz de espectro para banda larga 5G. Na Europa, os leilões de espectro 5G realizados entre 2018 e 2022 geraram resultados heterogêneos: a Itália arrecadou €6,6 bilhões (2018), a Alemanha €6,5 bilhões (2019), mas a Espanha apenas €438 milhões (2018) — diferenças atribuídas em grande parte ao desenho do leilão (número de lotes, preço de reserva, obrigações de cobertura). Cramton (2013) documentou que leilões mal desenhados — como o leilão 3G do Reino Unido em 2000 (£22,5 bilhões, com vencedores que subsequentemente enfrentaram dificuldades financeiras) e o fiasco do leilão neozelandês de 1990 (formato de segundo preço que gerou receita mínima) — demonstram que a qualidade do desenho de mecanismo importa tanto quanto a competição entre licitantes.

    **Análise:** Os leilões de espectro são a aplicação mais direta e espetacular dos conceitos desenvolvidos neste capítulo. O formato SMRA de Milgrom e Wilson resolve simultaneamente três problemas teóricos: (i) a maldição do vencedor (leilões ascendentes com informação revelada reduzem o risco de superestimação, pelo *linkage principle* de Milgrom e Weber); (ii) complementaridade entre licenças (licitação simultânea permite ajuste entre mercados); e (iii) colusão (regras de atividade e lances mínimos dificultam sinalização entre licitantes). O Teorema da Equivalência de Receita, demonstrado na seção anterior, pressupõe licitantes simétricos e valores privados independentes — condições que *não* valem nos leilões de espectro, onde licitantes são assimétricos (incumbentes vs. entrantes) e os valores são afiliados (o valor de uma licença depende do valor das licenças adjacentes). É precisamente por essas violações que o formato do leilão importa e que o desenho de mecanismos — a "engenharia reversa" do jogo desenvolvida na Seção 9c.4 — tem consequências econômicas da ordem de dezenas de bilhões de dólares. O leilão brasileiro de 5G da ANATEL (2021, R$ 47,2 bilhões) inspirou-se diretamente nos formatos desenvolvidos por Milgrom e Wilson, adaptados ao contexto regulatório brasileiro com obrigações de cobertura em áreas rurais.

    **Fonte:** Milgrom, Paul (2004). *Putting Auction Theory to Work*. Cambridge University Press. Cramton, Peter (2013). "Spectrum Auction Design." *Review of Industrial Organization*, 42(2), 161–190. The Royal Swedish Academy of Sciences (2020). "Improvements to Auction Theory and Inventions of New Auction Formats." Scientific Background on the Sveriges Riksbank Prize in Economic Sciences.

!!! box-mundo "🌍 Box Mundo 9c.2 — O leilão de anúncios do Google: a Generalized Second Price Auction"

    **Contexto:** Quando você digita uma busca no Google, os anúncios que aparecem no topo da página não são escolhidos arbitrariamente — são alocados por um leilão que ocorre em milissegundos, repetido bilhões de vezes por dia. O mecanismo utilizado pelo Google (e, com variações, pelo Meta, Microsoft Bing e outras plataformas) é a *Generalized Second Price Auction* (GSP), um formato que combina elementos da teoria de leilões com as peculiaridades dos mercados de publicidade online. O GSP é, possivelmente, o mecanismo econômico mais frequentemente executado na história: o Google realiza centenas de bilhões de leilões por ano, alocando posições de anúncios em páginas de busca, vídeos do YouTube e aplicativos.

    **Dados:** Em 2024, a receita de publicidade do Alphabet (controladora do Google) atingiu aproximadamente US$ 265 bilhões, representando cerca de 27% do mercado global de publicidade digital. O leilão GSP aloca múltiplas posições de anúncio em cada página de resultados: a posição mais alta gera mais cliques (e portanto mais valor para o anunciante), mas o anunciante paga por clique o lance do próximo anunciante abaixo. Edelman, Ostrovsky e Schwarz (2007) e Varian (2007) — este último então economista-chefe do Google — formalizaram simultaneamente o modelo teórico da GSP e mostraram que, embora o GSP *não* seja estrategicamente equivalente ao mecanismo VCG (que garantiria revelação de verdade), seus equilíbrios sob certas condições geram receitas idênticas às do VCG. O Google migrou parcialmente para um sistema baseado em VCG com o chamado *Enhanced Cost Per Click* e, mais recentemente, para leilões automatizados com aprendizado de máquina (*smart bidding*), que estimam o valor de conversão de cada impressão em tempo real.

    **Análise:** A GSP é um caso fascinante em que a teoria de leilões encontra a engenharia de software. O mecanismo não é de segundo preço puro no sentido de Vickrey — trata-se de uma *generalização* para múltiplos objetos (posições) onde cada vencedor paga o lance do próximo. No leilão de Vickrey para um único objeto, lançar o valor verdadeiro é estratégia dominante. Na GSP, isso *não* vale: licitantes podem querer lançar abaixo de seus valores verdadeiros para pagar menos por uma posição inferior que ainda gera lucro positivo. Edelman, Ostrovsky e Schwarz (2007) identificaram o conceito de *equilíbrio localmente invejoso* (*locally envy-free equilibrium*), no qual nenhum anunciante preferiria trocar de posição e lance com o anunciante imediatamente acima. Esse conceito de equilíbrio refinado, específico para a GSP, produz receitas equivalentes às do mecanismo VCG — uma instância notável da equivalência de receita em um contexto multi-objeto. A transição recente para leilões de primeiro preço em publicidade programática (liderada pelo Google em 2019) ilustra que mesmo mercados digitais maduros continuam redesenhando seus mecanismos de alocação à luz da teoria.

    **Para refletir:** Se o Google adotasse um leilão de primeiro preço puro (em vez da GSP), como os anunciantes ajustariam seus lances? A equivalência de receita se manteria nesse contexto multi-objeto com valores assimétricos e orçamentos limitados?

    **Fonte:** Edelman, Benjamin, Michael Ostrovsky, e Michael Schwarz (2007). "Internet Advertising and the Generalized Second-Price Auction." *American Economic Review*, 97(1), 242–259. Varian, Hal R. (2007). "Position Auctions." *International Journal of Industrial Organization*, 25(6), 1163–1178.

!!! box-mundo "🌍 Box Mundo 9c.3 — Leilões de espectro 3G/4G/5G: bilhões de dólares e desenho de mecanismos na prática"

    **Contexto:** Os leilões de espectro de telecomunicações são o maior campo de aplicação prática da teoria de leilões, com transações que totalizam centenas de bilhões de dólares globalmente. Cada geração de tecnologia móvel — 3G, 4G e 5G — gerou uma nova rodada de leilões com desafios de desenho de mecanismos progressivamente mais complexos. A experiência acumulada ao longo de três décadas ilustra como a teoria econômica se traduziu em bilhões de dólares de diferença na receita pública, dependendo da qualidade do desenho institucional.

    **Dados:** O leilão 3G do Reino Unido (2000), desenhado por Ken Binmore e Paul Klemperer, arrecadou £22,5 bilhões — cinco vezes mais que a previsão inicial do governo — ao introduzir uma licença extra para atrair um entrante (aumentando \(N\) de 4 para 5, o que intensificou dramaticamente a competição). Em contraste, o leilão 3G da Holanda, com formato de leilão ascendente e número de licenças igual ao de incumbentes, arrecadou apenas €2,7 bilhões — menos de 30% per capita do resultado britânico. Na era 4G, o leilão brasileiro de 2012 (ANATEL) arrecadou R$ 2,9 bilhões, enquanto o leilão indiano de 2010 arrecadou US$ 14,6 bilhões. Os leilões 5G globais (2018–2023) movimentaram mais de US$ 200 bilhões: os EUA (banda C, 2021) arrecadaram US$ 81 bilhões; a Alemanha €6,5 bilhões (2019); o Japão, surpreendentemente, atribuiu espectro 5G sem leilão (por *beauty contest*), priorizando velocidade de implantação sobre receita. O Brasil (2021) arrecadou R$ 47,2 bilhões, dos quais R$ 40,5 bilhões em compromissos de investimento em cobertura.

    **Análise:** A variação dramática nos resultados entre países demonstra que o formato do leilão importa mais do que as condições macroeconômicas ou o tamanho do mercado. Três lições emergiram da experiência global. Primeira: o número de licenças relativo ao número de incumbentes é crucial — quando há mais licenças que incumbentes (como no Reino Unido), a competição por licenças é mais intensa. Segunda: leilões ascendentes simultâneos (SMRA) são superiores a leilões sequenciais quando as licenças são complementares, pois permitem que os licitantes gerenciem o risco de exposição. Terceira: obrigações de cobertura incorporadas ao leilão (como no caso brasileiro do 5G) transferem o objetivo de política industrial para dentro do mecanismo — um exemplo de desenho de mecanismos com múltiplos objetivos que vai além do leilão ótimo de Myerson (que maximiza uma única dimensão: receita). A teoria do Capítulo 9c.4 explica *por que* o formato importa: quando as condições da equivalência de receita falham (assimetria entre operadores, complementaridade entre faixas, valores afiliados), o desenho do mecanismo determina tanto a receita quanto a eficiência alocativa.

    **Para refletir:** O Japão optou por não leiloar espectro 5G, alocando por decisão administrativa. Quais são os custos de eficiência dessa escolha à luz do Teorema da Equivalência de Receita? E quais são os possíveis benefícios em termos de velocidade de implantação e coordenação de investimentos?

    **Fonte:** Klemperer, Paul (2002). "What Really Matters in Auction Design." *Journal of Economic Perspectives*, 16(1), 169–189. Cramton, Peter (2013). "Spectrum Auction Design." *Review of Industrial Organization*, 42(2), 161–190. ANATEL (2021). Edital de licitação do 5G.

A passagem dos leilões de valor privado para os de valor comum — e, mais geralmente, para modelos com valores afiliados que combinam elementos privados e comuns — revela a riqueza do arcabouço bayesiano. Mas a teoria levanta uma questão ainda mais fundamental: se a receita depende do formato, é possível encontrar o formato *ótimo*? Essa pergunta nos leva ao campo do desenho de mecanismos.

---

## 9c.4 Desenho de Mecanismos

A teoria de leilões levanta uma pergunta mais ampla: se a receita depende do formato, qual formato é *ótimo*? Mais geralmente, dado o resultado desejado, qual "jogo" o implementa? Essa inversão — do equilíbrio ao desenho — é o campo do *desenho de mecanismos*.

O desenho de mecanismos representa uma mudança de perspectiva fundamental em relação à teoria dos jogos "positiva" que estudamos nos capítulos anteriores. Na teoria dos jogos padrão (Caps. 9a–9c até aqui), o jogo é *dado* e perguntamos qual é o equilíbrio. No desenho de mecanismos, o *resultado desejado* é dado e perguntamos qual jogo o implementa. É a diferença entre analisar as regras existentes e *projetar* as regras para alcançar um objetivo.

!!! definition "Mecanismo"
    Um **mecanismo** \(\mathcal{M} = \langle M_1, \ldots, M_n, g \rangle\) consiste em: (i) um espaço de mensagens \(M_i\) para cada agente \(i\); e (ii) uma função de resultado \(g: M_1 \times \cdots \times M_n \to O\) que mapeia o perfil de mensagens em um resultado (alocação e pagamentos). O mecanismo define as "regras do jogo" — cada agente escolhe uma mensagem, e a função \(g\) determina o que acontece.

!!! definition "Princípio da Revelação"
    Para qualquer mecanismo e qualquer BNE desse mecanismo, existe um mecanismo de **revelação direta** (onde cada agente simplesmente reporta seu tipo) em que reportar verdadeiramente é um BNE e que produz o mesmo resultado.

    Implicação prática: ao buscar o mecanismo ótimo, basta considerar mecanismos de revelação direta com compatibilidade de incentivos.

O Princípio da Revelação é uma das ferramentas mais poderosas da teoria econômica. Sua importância prática é enorme: em vez de procurar entre *todos* os mecanismos possíveis (uma classe imensamente grande), o designer pode restringir a busca a mecanismos de revelação direta — nos quais cada agente simplesmente reporta seu tipo — e impor a condição de que dizer a verdade seja ótimo (compatibilidade de incentivos). Essa restrição simplifica dramaticamente o problema de otimização, transformando-o de uma busca sobre um espaço infinito-dimensional de mecanismos em um problema de otimização com restrições de compatibilidade de incentivos e racionalidade individual.

O desenho de mecanismos inverte a pergunta da teoria dos jogos: em vez de "dado o jogo, qual é o equilíbrio?", pergunta-se "dado o resultado desejado, qual jogo gera esse resultado em equilíbrio?" Essa inversão é profundamente prática: o regulador que projeta um leilão, o governo que desenha uma licitação, a empresa que cria um processo seletivo — todos estão fazendo desenho de mecanismos. O Princípio da Revelação simplifica a tarefa ao mostrar que basta considerar mecanismos nos quais os participantes reportam seus tipos — desde que dizer a verdade seja ótimo.

### O mecanismo VCG (Vickrey-Clarke-Groves)

Um resultado central do desenho de mecanismos é o **mecanismo VCG** (Vickrey, 1961; Clarke, 1971; Groves, 1973), que generaliza o leilão de segundo preço para contextos com múltiplos objetos e externalidades. No mecanismo VCG, cada agente reporta seu tipo (valor), o mecanismo aloca eficientemente (maximizando o bem-estar total), e cada agente paga um montante igual à *externalidade* que impõe aos demais — ou seja, a redução no bem-estar total dos outros agentes causada pela presença de \(i\).

Formalmente, o pagamento do agente \(i\) no mecanismo VCG é:

\[
t_i(\hat{\theta}) = \max_{a \in A} \sum_{j \neq i} u_j(a, \hat{\theta}_j) - \sum_{j \neq i} u_j(a^*(\hat{\theta}), \hat{\theta}_j)
\label{eq:9c.7} \tag{9c.7}
\]

onde \(a^*(\hat{\theta})\) é a alocação eficiente dado o perfil de tipos reportados \(\hat{\theta}\). O primeiro termo é o máximo bem-estar dos outros *sem* a presença de \(i\); o segundo é o bem-estar dos outros *com* \(i\). A diferença é a externalidade.

O leilão de segundo preço de Vickrey é o caso especial do mecanismo VCG com um único objeto: o vencedor (quem tem o maior valor) paga a externalidade que impõe — o valor que o segundo colocado teria obtido se o vencedor não existisse, que é exatamente o segundo maior lance. Essa conexão entre o leilão de Vickrey e o mecanismo VCG revela que a propriedade de revelação de verdade do segundo preço não é acidental: é uma instância de um princípio geral de que pagamentos baseados em externalidade induzem revelação verdadeira.

!!! idea "Intuição Econômica"
    **Desenho de mecanismos: engenharia reversa do jogo**

    **Em uma frase:** Desenho de mecanismos é a arte de construir o "jogo" para que o comportamento racional e egoísta dos participantes produza o resultado que o designer quer.

    **Pense assim:** Um governo quer vender uma licença de espectro de rádio ao operador que mais valoriza o recurso (eficiência alocativa) e maximizar a receita para os cofres públicos. Não pode simplesmente perguntar "quanto você paga?", pois as empresas mentiriam. A solução do mecanismo design é construir um formato de leilão em que dizer a verdade *ou* lançar o lance estrategicamente ótimo resulte, em equilíbrio, na alocação eficiente.

    **Por que isso importa:** O campo surgiu do reconhecimento de que as regras do jogo não são dadas — elas são *escolhas de política*. Myerson (2007), Hurwicz (2007) e Maskin (2007) receberam o Nobel por formalizar como desenhar mecanismos que funcionam mesmo quando os participantes têm informação privada e interesses próprios.

### O leilão ótimo de Myerson

O resultado central do desenho de mecanismos para leilões — o *leilão ótimo* de Myerson — combina dois elementos: um **preço de reserva** (que exclui licitantes com valores baixos, aumentando a receita esperada ao custo de ineficiência ocasional) e **discriminação entre licitantes assimétricos** (um licitante sistematicamente mais fraco recebe tratamento favorável para aumentar a competição e extrair mais receita do licitante mais forte). Esse resultado surpreende a intuição: às vezes, excluir participantes ou distorcer a alocação *aumenta* a receita esperada. O Princípio da Revelação torna esse resultado tratável ao permitir que o designer procure entre mecanismos com compatibilidade de incentivos, em vez de entre todos os mecanismos possíveis.

A derivação de Myerson (1981) procede em três passos. Primeiro, pelo Princípio da Revelação, restringe a busca a mecanismos de revelação direta incentivo-compatíveis. Segundo, usa a condição de compatibilidade de incentivos para expressar a receita esperada em termos dos *valores virtuais* dos licitantes:

\[
\psi(v) = v - \frac{1 - F(v)}{f(v)}
\label{eq:9c.8} \tag{9c.8}
\]

O valor virtual \(\psi(v)\) desconta o valor real \(v\) por um termo que captura a *renda informacional* que o licitante extrai — a quantidade \((1 - F(v))/f(v)\) é o inverso da taxa de risco (*hazard rate*), e mede o custo para o leiloeiro de "convencer" o tipo \(v\) a revelar-se. Terceiro, o leilão ótimo maximiza a soma dos valores virtuais, o que equivale a atribuir o objeto ao licitante com o maior valor virtual (não o maior valor real) e excluir licitantes com valor virtual negativo.

Quando a função de valor virtual \(\psi(v)\) é crescente (a chamada *condição de regularidade*, satisfeita por distribuições comuns como uniforme, exponencial e normal truncada), o leilão ótimo tem uma forma simples: atribuir o objeto ao licitante com maior valor virtual, desde que este seja não negativo. No caso simétrico com \(v \sim U[0, 1]\), o preço de reserva ótimo é \(r^* = 1/2\) — surpreendentemente alto, excluindo metade dos licitantes potenciais.

O desenho de mecanismos conecta-se diretamente ao Capítulo 9d: nos jogos dinâmicos com informação incompleta, a questão não é apenas "qual equilíbrio?" mas também "como desenhar a sequência de comunicação e ação para que o equilíbrio desejado seja sustentável?". Os conceitos de compatibilidade de incentivos e racionalidade individual desenvolvidos aqui são os blocos fundamentais para essa análise mais avançada. Além disso, o arcabouço de desenho de mecanismos reaparece no Capítulo 19, na análise de contratos ótimos sob seleção adversa — onde o "principal" (empregador, seguradora, regulador) desenha um menu de contratos para separar diferentes tipos de "agente", usando exatamente as ferramentas de incentivo-compatibilidade formalizadas nesta seção.

---

Os conceitos desenvolvidos nas seções anteriores — BNE, sombreamento de lances, maldição do vencedor e desenho de mecanismos — estão longe de ser abstrações acadêmicas. No Brasil, bilhões de reais são alocados anualmente por meio de leilões cujos formatos refletem diretamente as preocupações da teoria.

!!! box-brasil "Box Brasil — Leilões de petróleo e energia: quando o formato importa"
    O Brasil utiliza leilões em setores estratégicos onde a teoria de leilões tem aplicação direta:

    **Leilões de petróleo (ANP)**

    A **Agência Nacional do Petróleo** conduz rodadas de licitação para blocos exploratórios desde 1999. O formato é de **oferta em envelope fechado** (primeiro preço), com critérios que combinam bônus de assinatura, programa exploratório e conteúdo local.

    - A **maldição do vencedor** é relevante: blocos do pré-sal têm valor comum (volume de óleo incerto), e empresas que superestimam o potencial pagam prêmios excessivos.
    - O regime de **partilha de produção** (Lei 12.351/2010) para o pré-sal altera os incentivos: o bônus fixo e a oferta de excedente em óleo para a União reduzem o risco de maldição do vencedor para as empresas.

    **Leilões de energia (ANEEL)**

    A **ANEEL** organiza leilões de energia nova e existente para garantir o suprimento. O formato é de **leilão descendente** (relógio): o preço começa alto e cai até que a oferta iguale a demanda.

    - O leilão descendente com múltiplos vencedores reduz a maldição do vencedor e incentiva a participação.
    - Leilões de energia renovável (eólica, solar) geraram reduções de preço de **80%** entre 2009 e 2023 — evidência de que a competição entre licitantes funciona.

    **Fonte**: ANP, Rodadas de Licitação; ANEEL, Leilões de Energia.

---

Se os leilões de petróleo e energia ilustram o lado virtuoso da competição entre licitantes, as licitações públicas revelam o lado sombrio: quando os participantes se coordenam para suprimir a competição, os leilões podem se tornar instrumentos de extração de renda pública — exatamente o oposto do que a teoria prescreve.

!!! box-brasil "Box Brasil — Cartéis em licitações: o outro lado dos leilões"
    Leilões de compras governamentais (licitações) são vulneráveis a colusão entre licitantes — o oposto do que a teoria competitiva prevê.

    **Mecanismos de colusão**

    - **Rotação de vencedores**: firmas combinam quem ganha cada licitação, dividindo o mercado ao longo do tempo.
    - **Lances de cobertura** (*cover bidding*): firmas apresentam lances propositalmente altos para dar aparência de competição enquanto uma firma pré-determinada ganha.
    - **Supressão de lances**: algumas firmas simplesmente não participam de certas licitações.

    **Casos brasileiros**

    O CADE tem investigado cartéis em licitações de obras públicas, alimentos para merenda escolar e medicamentos. O "Cartel do Metrô de SP" (2013) envolveu construtoras que se coordenavam para dividir contratos de obras de metrô — com sobrepreço estimado em 30%.

    **Implicações da teoria:** A colusão é mais fácil em leilões de primeiro preço do que de segundo preço (McAfee e McMillan, 1992). Leilões ascendentes (ingleses) são ainda mais vulneráveis pois permitem sinalização durante o leilão. Isso explica por que o formato do leilão é um instrumento de política antitruste.

!!! box-brasil "Box Brasil — Leilões de espectro da ANATEL: teoria e prática"
    Os leilões de espectro de radiofrequências organizados pela **ANATEL** para concessão de bandas 4G e 5G são um laboratório de desenho de mecanismos aplicado ao contexto brasileiro.

    **O problema do designer (ANATEL):** Alocar faixas de espectro de forma eficiente (aos operadores que mais as valorizam), maximizar receita para a União e garantir cobertura em áreas remotas — objetivos frequentemente conflitantes.

    **Soluções de desenho de mecanismos adotadas:**

    - **Leilão combinatório:** Operadores fazem lances sobre *pacotes* de frequências, não sobre frequências individuais, evitando o problema de complementaridade (quando o valor de duas faixas juntas supera a soma dos valores individuais).
    - **Obrigações de cobertura:** Em vez de apenas maximizar o bônus de assinatura, o edital impõe metas de cobertura em municípios rurais — um mecanismo que transfere parte do excedente para regiões menos lucrativas.
    - **Preços de reserva diferenciados:** Lotes em regiões com menor demanda têm preços de reserva mais baixos, incentivando a participação e evitando lotes não arrematados.

    **Leilão do 5G (2021):** Arrecadou R$ 47,2 bilhões, incluindo R$ 40,5 bilhões em compromissos de cobertura e implantação de rede. A ANATEL escolheu deliberadamente um formato que priorizava cobertura sobre receita imediata — uma decisão de desenho de mecanismos com impacto estrutural de longo prazo.

    **Conexão teórica:** O formato do leilão de espectro da ANATEL ilustra que o "leilão ótimo" de Myerson raramente é adotado literalmente na prática. Em vez de maximizar receita pura, os reguladores combinam múltiplos objetivos usando restrições de equilíbrio bayesiano como ferramentas de planejamento.

    **Fonte**: ANATEL, Editais de licitação de radiofrequências (2014, 2021).

---

### R Interativo: Simulação de Leilões

??? code "R Interativo — Leilão de Valor Privado: Monte Carlo (Adams, 2025, Cap. 10)"
    Este box simula leilões de primeiro e segundo preço com N licitantes e valores uniformes. Compare as receitas e verifique o Teorema da Equivalência de Receita.

    **Exercício:** Mude `N` de 3 para 10. O que acontece com a receita? E com o surplus do vencedor?

    <iframe src="../graficos/cap09/webr-auction.html" title="Figura 9c.1 — Leilões" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9c.1 — Simulação Monte Carlo de leilões de 1º e 2º preço.** Altere <code>N</code> (licitantes) e <code>n_sim</code> (simulações) para explorar o Teorema da Equivalência de Receita.
    </div>

---


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No Equilíbrio Bayesiano de Nash (BNE), cada jogador:"
    - (a) Conhece perfeitamente o tipo de todos os demais jogadores
    - (b) Maximiza seu payoff esperado condicionando nas crenças sobre os tipos dos demais e nas estratégias de equilíbrio
    - (c) Escolhe a estratégia que maximiza o payoff no pior cenário possível (maximin)
    - (d) Observa as ações anteriores dos demais antes de decidir

    ??? success "Resposta"
        **(b)** No BNE, cada tipo de cada jogador escolhe a ação que maximiza seu payoff esperado, dado suas crenças (prior bayesiano) sobre os tipos dos demais e dado que os demais jogam suas estratégias de equilíbrio. A alternativa (a) descreve informação completa; (c) descreve maximin, não Nash bayesiano; (d) descreve jogos dinâmicos, não estáticos com informação incompleta.

??? question "2. Em um leilão de segundo preço (Vickrey) com valores privados independentes, a estratégia dominante de cada participante é:"
    - (a) Ofertar abaixo do próprio valor para obter lucro positivo
    - (b) Ofertar exatamente o próprio valor verdadeiro
    - (c) Ofertar acima do próprio valor para aumentar a chance de vencer
    - (d) Ofertar a média entre seu valor e o valor esperado dos demais

    ??? success "Resposta"
        **(b)** No leilão de Vickrey, o vencedor paga o segundo maior lance. Ofertar o valor verdadeiro é estratégia fracamente dominante: ofertar menos reduz a chance de vencer sem alterar o preço pago; ofertar mais pode levar a vencer e pagar mais do que o bem vale. A alternativa (a) descreve bid shading, ótimo em leilão de primeiro preço; (c) gera 'winner's curse'.

??? question "3. O Teorema da Equivalência de Receita afirma que, sob certas condições, todos os formatos de leilão padrão geram:"
    - (a) O mesmo vencedor e o mesmo preço pago em cada realização
    - (b) A mesma receita esperada para o leiloeiro
    - (c) O mesmo lance ótimo para cada participante
    - (d) Eficiência alocativa apenas em leilões de segundo preço

    ??? success "Resposta"
        **(b)** Com valores privados independentes, simetria, aversão ao risco neutra e certas condições de regularidade, todos os leilões padrão (primeiro preço, segundo preço, inglês, holandês) geram a mesma receita esperada para o vendedor. O vencedor é sempre o mesmo (quem tem maior valor), mas o preço pago pode diferir em cada realização — a equivalência é em expectativa. A alternativa (a) confunde valores realizados com esperados.

??? question "4. No leilão de primeiro preço com valores privados, o bid shading (ofertar abaixo do valor) é ótimo porque:"
    - (a) O participante quer minimizar seu gasto total
    - (b) Ofertar o valor verdadeiro resultaria em lucro zero quando vencer, então vale a pena sacrificar alguma probabilidade de vencer por lucro positivo
    - (c) É ilegal ofertar o valor verdadeiro
    - (d) Todos os outros participantes ofertam zero

    ??? success "Resposta"
        **(b)** No primeiro preço, o vencedor paga seu próprio lance. Ofertar $v_i$ garante lucro zero se vencer. Ao ofertar $b_i < v_i$, o participante obtém lucro $v_i - b_i > 0$ quando vence, ao custo de uma menor probabilidade de vitória. O lance ótimo equilibra esse trade-off. O grau de shading depende do número de competidores — com mais competidores, shading diminui.

??? question "5. A 'maldição do vencedor' (winner's curse) ocorre tipicamente em leilões de:"
    - (a) Valores privados independentes
    - (b) Valor comum, onde o fato de ter o maior lance sugere que se superestimou o valor do objeto
    - (c) Segundo preço, onde o pagamento é sempre justo
    - (d) Qualquer formato, independentemente da estrutura de valores

    ??? success "Resposta"
        **(b)** Em leilões de valor comum (ex.: leilão de direitos de exploração de petróleo), o objeto tem o mesmo valor para todos, mas cada um tem uma estimativa com ruído. O vencedor é quem teve a estimativa mais otimista, o que sistematicamente superestima o valor. Licitantes racionais antecipam isso e ajustam seus lances para baixo. Em valores privados (a), não há maldição do vencedor.

---

## 📋 Resumo do Capítulo

- Jogos com **informação incompleta** modelam situações em que os jogadores não conhecem plenamente as características dos demais (payoffs, custos, tipo). A transformação de Harsanyi converte essa incerteza em um jogo bayesiano com "tipos" privados sorteados pela natureza.
- O conceito de equilíbrio é o **Equilíbrio Bayesiano de Nash (BNE)**: cada tipo de cada jogador maximiza seu payoff esperado, condicionando nas crenças sobre os tipos dos outros e nas estratégias de equilíbrio dos demais.
- Em **leilões de valor privado**, a estratégia ótima depende do formato: no leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia fracamente dominante; no de primeiro preço, licitantes "sombreiam" seus lances por um fator \((N-1)/N\).
- O **Teorema da Equivalência de Receita** estabelece que, sob hipóteses padrão (simetria, IPV, risco-neutralidade), todos os formatos de leilão que atribuem o objeto ao maior valor geram a mesma receita esperada. A intuição vem do envelope theorem: os payoffs dos licitantes e a alocação são determinados pelas mesmas probabilidades, portanto o "resíduo" para o leiloeiro é fixo.
- Em **leilões de valor comum**, a **maldição do vencedor** faz com que o ganhador tenda a superestimar o valor do objeto, exigindo sombreamento adicional dos lances. O ajuste ótimo condiciona no evento de vencer.
- O **desenho de mecanismos** inverte a pergunta da teoria dos jogos: dado o resultado desejado, qual jogo o implementa em equilíbrio? O Princípio da Revelação simplifica a busca ao limitar a análise a mecanismos de revelação direta.
- O **mecanismo VCG** generaliza o leilão de Vickrey para contextos multi-objeto, cobrando de cada agente a externalidade que impõe aos demais.
- O **leilão ótimo de Myerson** maximiza receita usando valores virtuais, preço de reserva e possível discriminação entre licitantes assimétricos.

## 🔑 Conceitos-Chave

<a id="tabela-9c-1"></a>

| Conceito | Definição |
|----------|-----------|
| Jogo bayesiano | Jogo em que cada jogador possui um tipo privado sorteado pela natureza, com payoffs que dependem do perfil de tipos. |
| Transformação de Harsanyi | Técnica que converte um jogo com informação incompleta em um jogo com informação imperfeita, introduzindo a natureza como jogador que sorteia tipos. |
| Equilíbrio Bayesiano de Nash (BNE) | Perfil de estratégias (funções do tipo) em que cada tipo maximiza o payoff esperado, dadas as crenças e estratégias dos demais. |
| Valores Privados Independentes (IPV) | Modelo em que cada licitante conhece apenas seu próprio valor, sorteado independentemente dos demais. |
| Leilão de segundo preço (Vickrey) | Leilão em que o vencedor paga o segundo maior lance; lançar o valor verdadeiro é estratégia fracamente dominante. |
| Leilão de primeiro preço | Leilão em que o vencedor paga seu próprio lance; o BNE envolve sombreamento (\(bid\,shading\)) do lance abaixo do valor. |
| Teorema da Equivalência de Receita | Sob IPV, simetria e risco-neutralidade, todos os formatos de leilão padrão geram a mesma receita esperada. |
| Equivalência de receita (intuição) | O envelope theorem fixa os payoffs dos licitantes; como a alocação é a mesma, o "resíduo" (receita) é determinado. |
| Maldição do vencedor | Fenômeno em leilões de valor comum: o vencedor tende a ser o licitante mais otimista, pagando acima do valor real. |
| Princípio da Revelação | Para qualquer mecanismo e BNE, existe um mecanismo de revelação direta equivalente em que reportar o tipo verdadeiro é equilíbrio. |
| Mecanismo VCG | Mecanismo de revelação direta que aloca eficientemente e cobra de cada agente a externalidade que impõe aos demais; generaliza o leilão de Vickrey. |
| Valor virtual (Myerson) | \(\psi(v) = v - (1-F(v))/f(v)\); desconta o valor real pela renda informacional do agente. O leilão ótimo atribui ao maior valor virtual. |

<div class="caption-obj" markdown>
**Tabela 9c.1 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9c.1 — BNE em jogo de entrada com tipos"
    **Enunciado:** Uma incumbente pode ser forte (\(\theta_F\), prob. 0,6) ou fraca (\(\theta_W\), prob. 0,4). A entrante decide se entra. Payoffs: não entra → (10, 0); entra + forte → (3, –2); entra + fraca → (2, 4).

    **Resolução:**

    Lucro esperado da entrante se entrar:

    \[
    E[\pi_E] = 0{,}6 \times (-2) + 0{,}4 \times 4 = -1{,}2 + 1{,}6 = 0{,}4 > 0
    \]

    **BNE:** A entrante entra (independente do tipo da incumbente, pois \(E[\pi_E] > 0\)).

    Se \(p > 2/3\), \(E[\pi_E] < 0\) e a entrante não entra. O ponto de indiferença é \(p^* = 2/3\).

??? exercicio-resolvido "Exercício Resolvido 9c.2 — Leilão de primeiro preço com 3 licitantes"
    **Enunciado:** Três licitantes com valores \(v_i \sim U[0, 100]\) participam de um leilão de primeiro preço. (a) Encontre a estratégia de equilíbrio. (b) Calcule a receita esperada. (c) Compare com o leilão de segundo preço.

    **Resolução:**

    **(a)** BNE simétrico: \(b(v) = v \cdot (N-1)/N = v \cdot 2/3\). Cada licitante faz um lance igual a 2/3 de seu valor.

    **(b)** Receita esperada = \(E[\text{2º maior lance}]\). Com \(v \sim U[0,100]\) e \(N=3\):

    \[
    E[R] = 100 \cdot \frac{N-1}{N+1} = 100 \cdot \frac{2}{4} = 50
    \]

    **(c)** No leilão de segundo preço, \(b(v) = v\) e a receita esperada é a mesma (50), pelo Teorema da Equivalência. As distribuições de receita diferem — o segundo preço tem maior variância.

??? exercicio-resolvido "Exercício Resolvido 9c.3 — Leilão de primeiro preço com distribuição uniforme"
    **Enunciado:** Dois jogadores disputam um objeto em um leilão selado de primeiro preço. Os valores privados são i.i.d. com distribuição uniforme em \([0, 100]\). (a) Derive a estratégia de equilíbrio bayesiano de Nash (função de lance ótimo). (b) Calcule o lance ótimo se seu valor é \(v = 80\). (c) Calcule a receita esperada do leiloeiro. (d) Verifique o Teorema da Equivalência de Receita comparando com o leilão de segundo preço.

    **Resolução:**

    **(a)** Buscamos um BNE simétrico em estratégias estritamente crescentes \(\beta(v)\). Suponha que o oponente use \(\beta\). O licitante com valor \(v\) escolhe o lance \(b\) para maximizar o payoff esperado:

    \[
    \max_b \; (v - b) \cdot \Pr(\text{vencer com lance } b)
    \]

    Se o oponente usa \(\beta(v_j) = \frac{v_j}{2}\) (conjectura a ser verificada), vencer exige \(b > \beta(v_j)\), ou seja, \(v_j < 2b\). Como \(v_j \sim U[0, 100]\):

    \[
    \Pr(v_j < 2b) = \frac{2b}{100}
    \]

    O problema torna-se:

    \[
    \max_b \; (v - b) \cdot \frac{2b}{100}
    \]

    A condição de primeira ordem é:

    \[
    \frac{d}{db}\left[(v - b) \cdot 2b\right] = 2v - 4b = 0 \implies b^*(v) = \frac{v}{2}
    \]

    Isso confirma a conjectura. Para \(N\) licitantes com \(v_i \sim U[0, \bar{v}]\), a fórmula geral é:

    \[
    \boxed{\beta(v) = \frac{N-1}{N} \cdot v}
    \]

    Com \(N = 2\): \(\beta(v) = v/2\). Cada licitante faz um lance igual à metade de seu valor privado.

    **(b)** Para \(v = 80\):

    \[
    \beta(80) = \frac{80}{2} = 40
    \]

    O lance ótimo é **R$ 40**.

    **(c)** A receita do leiloeiro é o maior lance, que corresponde a \(\beta(v_{(1)})\), onde \(v_{(1)}\) é a maior estatística de ordem. Com \(N = 2\) e \(v \sim U[0, 100]\), a esperança da maior estatística de ordem é \(E[v_{(1)}] = 100 \cdot \frac{N}{N+1} = \frac{200}{3}\). Como cada licitante lança metade de seu valor:

    \[
    E[R] = E\!\left[\frac{v_{(1)}}{2}\right] = \frac{1}{2} \cdot \frac{200}{3} = \frac{100}{3} \approx 33{,}33
    \]

    Equivalentemente, pela fórmula direta:

    \[
    E[R] = \bar{v} \cdot \frac{N-1}{N+1} = 100 \cdot \frac{1}{3} = 33{,}33
    \]

    **(d)** No leilão de segundo preço, \(\beta(v) = v\) é estratégia dominante e a receita é a segunda maior estatística de ordem. Com \(N = 2\):

    \[
    E[v_{(2)}] = 100 \cdot \frac{N - 1}{N + 1} = 100 \cdot \frac{1}{3} = 33{,}33
    \]

    As receitas esperadas são idênticas (\(33{,}33\)), confirmando o **Teorema da Equivalência de Receita**: sob as hipóteses de valores privados independentes, simetria, neutralidade ao risco e mesma alocação ao tipo mais baixo, qualquer mecanismo eficiente gera a mesma receita esperada. A diferença está na **variância** — o leilão de segundo preço tem receita mais volátil.

---

## ✏️ Exercícios

<a id="ex-9c-1"></a>**Exercício 9c.1.** Em um jogo bayesiano 2×2, o jogador 1 tem tipo \(\theta \in \{H, L\}\) com \(\Pr(H) = 0{,}5\). O jogador 2 não tem tipo privado. Os payoffs dependem do tipo de 1. Encontre o BNE.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-1)

---

<a id="ex-9c-2"></a>**Exercício 9c.2.** Dois licitantes com \(v_i \sim U[0, 1]\) participam de um leilão *all-pay* (todos pagam seu lance, apenas o maior lance ganha). Encontre o BNE simétrico e a receita esperada. Compare com o primeiro preço.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-2)

---

<a id="ex-9c-3"></a>**Exercício 9c.3.** (Maldição do vencedor) Três empresas licitam por um bloco de petróleo cujo valor verdadeiro é \(V = 100\). Cada empresa observa um sinal \(s_i = V + \varepsilon_i\), onde \(\varepsilon_i \sim U[-20, 20]\) independentes. Se cada empresa lançar seu sinal, qual é o lucro esperado do vencedor? Como o lance ótimo deveria ser ajustado?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-3)

---

<a id="ex-9c-4"></a>**Exercício 9c.4.** (BNE em jogo de 2 tipos e 2 ações — Fácil) Considere um jogo bayesiano em que o Jogador 1 tem tipo \(\theta \in \{A, B\}\) com probabilidades \(\Pr(A) = 0{,}3\) e \(\Pr(B) = 0{,}7\). Cada jogador escolhe entre as ações \(\{X, Y\}\). Os payoffs (J1, J2) são:

- Tipo A: (X,X) = (4,1); (X,Y) = (2,3); (Y,X) = (1,2); (Y,Y) = (3,0)
- Tipo B: (X,X) = (1,1); (X,Y) = (3,2); (Y,X) = (2,3); (Y,Y) = (0,1)

Encontre todos os BNEs puros. Justifique o procedimento de solução passo a passo.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-4)

---

<a id="ex-9c-5"></a>**Exercício 9c.5.** (Leilão de segundo preço — Fácil) Dois licitantes com valores \(v_1 = 80\) e \(v_2 = 60\) (ambos conhecidos apenas pelo próprio detentor) participam de um leilão de segundo preço (Vickrey). (a) Mostre que \(b_i = v_i\) é estratégia fracamente dominante para ambos. (b) Quem ganha e quanto paga? (c) Qual é o excedente do vencedor? (d) O que acontece se o vendedor adiciona um preço de reserva de R$ 70?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-5)

---

<a id="ex-9c-6"></a>**Exercício 9c.6.** (Comparação de receitas — Médio) Quatro licitantes com valores \(v_i \sim U[0, 200]\) participam de um leilão. (a) Calcule a receita esperada no leilão de primeiro preço. (b) Calcule a receita esperada no leilão de segundo preço (use a fórmula da segunda estatística de ordem). (c) Verifique numericamente a equivalência de receitas. (d) Como a receita se altera se um dos licitantes tem custo de participação de R$ 10 e decide não participar?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-6)

---

<a id="ex-9c-7"></a>**Exercício 9c.7.** (Desenho de leilão da ANP — Médio, Brasileiro) A ANP quer leiloar um bloco de petróleo no pré-sal. Há dois tipos de empresas: *grandes* (custo de extração baixo, \(c_G = 20\)) e *pequenas* (custo alto, \(c_P = 50\)), com probabilidades iguais. O valor do bloco é \(V = 100\). (a) Se a ANP usa um leilão de primeiro preço com lance sobre o bônus de assinatura, quais são as estratégias de BNE de cada tipo? (b) Qual formato de leilão maximiza a receita esperada da ANP? (c) Como o regime de partilha de produção (onde a empresa oferece uma percentagem do excedente em óleo) altera os incentivos, comparado ao bônus de assinatura? (d) Discuta se o formato atual da ANP está próximo do leilão ótimo de Myerson.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-7)

---

<a id="ex-9c-8"></a>**Exercício 9c.8.** (Teorema da Equivalência de Receita — Difícil) Considere \(N\) licitantes com valores \(v_i\) sorteados i.i.d. de uma distribuição \(F\) com densidade \(f\) contínua e suporte \([0, 1]\). (a) Derive a condição de otimização de primeira ordem para o BNE simétrico de um leilão de primeiro preço, obtendo a equação diferencial ordinária que \(b(v)\) deve satisfazer. (b) Mostre que a solução é \(b(v) = v - \int_0^v F(t)^{N-1} dt / F(v)^{N-1}\), que é a esperança condicional da maior estatística de ordem entre os demais, dado que é menor que \(v\). (c) Use o envelope theorem para demonstrar que a receita esperada em qualquer mecanismo eficiente e individualmente racional é a mesma, independente do formato. (d) Identifique quais das hipóteses (IPV, simetria, risco-neutralidade, eficiência) são essenciais para o resultado e dê um contra-exemplo para cada uma.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-8)

---

<a id="ex-9c-9"></a>**Exercício 9c.9.** (BNE com tipos contínuos — Médio) Dois jogadores disputam um recurso. Cada jogador \(i\) tem tipo \(\theta_i \sim U[0, 1]\) (independentes) e escolhe um esforço \(e_i \geq 0\). O jogador com maior esforço ganha um prêmio de valor \(\theta_i\) (específico ao tipo), mas ambos pagam o custo do esforço. Formalmente, o payoff do jogador \(i\) é \(u_i = \theta_i \cdot \mathbf{1}_{[e_i > e_j]} - e_i\). (a) Interprete este jogo como um leilão *all-pay* com valores privados. (b) Encontre o BNE simétrico em estratégias puras crescentes \(e(\theta)\). (c) Calcule o esforço total esperado e compare com o valor esperado do prêmio para o vencedor. Há "desperdício" de recursos? (d) Discuta como este modelo se aplica a competições por promoção em empresas (*tournaments*) e investimentos em lobby político.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-9)

---

<a id="ex-9c-10"></a>**Exercício 9c.10.** (Desenho de mecanismo e preço de reserva ótimo — Difícil) Um leiloeiro vende um objeto a \(N = 2\) licitantes com valores \(v_i \sim U[0, 1]\). O valor de reserva do leiloeiro (seu valor pelo objeto se não vender) é \(v_0 = 0\). (a) Calcule a receita esperada do leilão de segundo preço *sem* preço de reserva. (b) Agora, suponha que o leiloeiro impõe um preço de reserva \(r\). Derive a receita esperada como função de \(r\). (c) Encontre o preço de reserva ótimo \(r^*\) que maximiza a receita esperada. (d) Calcule a receita esperada no ótimo e compare com o item (a). Qual é o ganho percentual? (e) Mostre que \(r^* = 1/2\) coincide com o preço de reserva do leilão ótimo de Myerson, usando a condição de valor virtual \(\psi(r^*) = v_0\).

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 10 (adaptada)"
    Considere um leilão de primeiro preço com dois licitantes cujos valores são sorteados independentemente de \(U[0, 1]\).

    | Item | Afirmação |
    |------|-----------|
    | 0    | A estratégia de equilíbrio simétrico é \(b(v) = v/2\). |
    | 1    | A receita esperada do leiloeiro é 1/3. |
    | 2    | No leilão de segundo preço, a receita esperada também é 1/3. |
    | 3    | Com aversão ao risco dos licitantes, o leilão de primeiro preço gera mais receita que o de segundo. |
    | 4    | A colusão é mais fácil de sustentar no leilão ascendente (inglês) do que no de envelope fechado. |

    ??? success "Gabarito"
        **Respostas: 11111**

        - **Item 0 — V:** Com \(N=2\) e \(v \sim U[0,1]\), BNE: \(b(v) = v(N-1)/N = v/2\).
        - **Item 1 — V:** \(E[R] = (N-1)/(N+1) = 1/3\).
        - **Item 2 — V:** Revenue Equivalence Theorem.
        - **Item 3 — V:** Com aversão ao risco, licitantes sombreiam menos no 1º preço → receita maior. A equivalência falha.
        - **Item 4 — V:** No leilão inglês, licitantes observam os lances uns dos outros, facilitando sinalização e punição de desvios do cartel (McAfee e McMillan, 1992).

??? question "ANPEC 2015 — Questão 8 (adaptada)"
    Sobre jogos bayesianos e leilões, avalie as seguintes afirmativas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | No equilíbrio bayesiano de Nash, cada tipo de cada jogador maximiza seu payoff esperado, condicionando na distribuição dos tipos dos demais e nas estratégias de equilíbrio. |
    | 1    | No leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia estritamente dominante. |
    | 2    | O Teorema da Equivalência de Receita implica que a receita de qualquer leilão é sempre a mesma, independentemente do formato. |
    | 3    | A maldição do vencedor é um fenômeno que ocorre exclusivamente em leilões de valor comum, não em leilões de valor privado. |
    | 4    | O Princípio da Revelação afirma que, para qualquer mecanismo e qualquer BNE, existe um mecanismo de revelação direta equivalente em que reportar o tipo verdadeiro é equilíbrio. |

    ??? success "Gabarito"
        **Respostas: 10011**

        - **Item 0 — V:** Definição correta do BNE — cada tipo maximiza contra a distribuição dos demais.
        - **Item 1 — F:** No leilão de Vickrey, lançar \(b_i = v_i\) é estratégia *fracamente* dominante, não *estritamente* dominante. A diferença é sutil mas importante: quando \(b_i = b_{(1)}^{-i}\), o lance não faz diferença (o jogador é indiferente).
        - **Item 2 — F:** O Teorema da Equivalência de Receita vale apenas sob condições específicas: IPV, simetria, risco-neutralidade e eficiência. Com aversão ao risco, assimetria ou valores comuns, a equivalência falha e o formato importa.
        - **Item 3 — V:** Em leilões de valor privado puro, o valor do objeto não depende das estimativas dos outros — portanto, vencer não é "má notícia". A maldição do vencedor é um fenômeno específico de valores comuns (ou, mais geralmente, valores afiliados).
        - **Item 4 — V:** Enunciado correto do Princípio da Revelação (Myerson, 1981). Note que o princípio garante a *existência* do mecanismo de revelação direta equivalente, não que este seja o mecanismo utilizado na prática.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Athey, Susan, e Philip A. Haile (2007). [Nonparametric Approaches to Auctions](https://doi.org/10.1016/S1573-4412(07)06060-6). In: *Handbook of Econometrics*, Vol. 6A, 3847–3965."
    **Contribuição:** Survey abrangente sobre métodos econométricos para estimar modelos estruturais de leilões. Mostra como recuperar a distribuição de valores privados a partir de dados de lances observados — identificação não paramétrica.

    **Relevância:** Base metodológica para análise empírica de leilões da ANP e ANEEL. Os métodos permitem testar se licitantes jogam o BNE, estimar o grau de colusão e avaliar formatos alternativos de leilão.

??? pesquisa "Myerson, Roger B. (1981). [Optimal Auction Design](https://doi.org/10.1287/moor.6.1.58). *Mathematics of Operations Research*, 6(1), 58–73."
    **Contribuição:** Myerson derivou o leilão ótimo (que maximiza receita esperada do leiloeiro) usando o Princípio da Revelação. O resultado inclui um preço de reserva ótimo e, com assimetria, discriminação entre licitantes.

    **Relevância:** Fundamentação teórica para o desenho de leilões governamentais. O preço de reserva — que exclui licitantes com valores baixos — aumenta a receita esperada mesmo ao risco de não vender o objeto.

??? pesquisa "Milgrom, Paul R., e Robert J. Weber (1982). [A Theory of Auctions and Competitive Bidding](https://doi.org/10.2307/1911865). *Econometrica*, 50(5), 1089–1122."
    **Contribuição:** Milgrom e Weber generalizaram a teoria de leilões para valores afiliados (correlacionados), demonstrando o "linkage principle": leilões que divulgam mais informação geram mais receita. Também mostraram que leilões abertos (inglês) dominam fechados quando os valores são afiliados.

    **Relevância:** Explica por que a ANP usa rodadas com publicação de dados sísmicos (aumenta a informação disponível, reduz a maldição do vencedor e aumenta a receita). O linkage principle é um dos resultados mais aplicados na política de leilões.

??? pesquisa "Edelman, Benjamin, Michael Ostrovsky, e Michael Schwarz (2007). [Internet Advertising and the Generalized Second-Price Auction](https://doi.org/10.1257/aer.97.1.242). *American Economic Review*, 97(1), 242–259."
    **Contribuição:** Formalização teórica do leilão de anúncios do Google (GSP — *Generalized Second Price*). Mostraram que, embora a GSP não tenha revelação de verdade como estratégia dominante, existe um equilíbrio "localmente invejoso" (*locally envy-free*) que gera receitas equivalentes ao mecanismo VCG. Conectaram a prática do mercado de publicidade digital à teoria de leilões multi-objeto.

    **Relevância:** O artigo demonstra que a teoria de leilões tem aplicação direta nos mercados digitais mais lucrativos do mundo. A análise do equilíbrio da GSP é fundamental para entender a formação de preços em publicidade online — um mercado de centenas de bilhões de dólares anuais.

??? pesquisa "Hendricks, Kenneth, e Robert H. Porter (1988). [An Empirical Study of an Auction with Asymmetric Information](https://doi.org/10.2307/1831115). *American Economic Review*, 78(5), 865–883."
    **Contribuição:** Estudo empírico seminal sobre leilões de petróleo no Golfo do México, testando as previsões da teoria de leilões com informação assimétrica. Compararam o comportamento de firmas vizinhas (*neighbors*), que possuem informação geológica superior sobre os blocos adjacentes, com firmas não vizinhas (*non-neighbors*). Os resultados confirmaram que firmas vizinhas lançam com mais frequência e obtêm retornos maiores — evidência direta da maldição do vencedor e de vantagem informacional.

    **Relevância:** Teste empírico clássico das previsões do modelo de valor comum. Os resultados são diretamente aplicáveis aos leilões de petróleo da ANP no Brasil, onde a Petrobras frequentemente possui vantagem informacional como operadora de blocos adjacentes — uma assimetria que o desenho do leilão deve considerar.

---

!!! tip "🤖 Exercício com IA"
    **IA.4 — Simulação de Leilões de Primeiro Preço**

    Peça à IA para simular 1000 leilões de primeiro preço com 5 licitantes e valores uniformes em $[0, 100]$, usando a estratégia de equilíbrio $b(v) = v \cdot 4/5$. Calcule a receita média e compare com a previsão teórica $E[R] = 66{,}67$. O resultado simulado convergiu?

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-4)

---

## 📚 Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 9–11.
- Athey, Susan, e Philip A. Haile. 2007. "Nonparametric Approaches to Auctions." In *Handbook of Econometrics*, Vol. 6A, 3847–3965. [DOI](https://doi.org/10.1016/S1573-4412(07)06060-6)
- Capen, Edward C., Robert V. Clapp, e William M. Campbell. 1971. "Competitive Bidding in High-Risk Situations." *Journal of Petroleum Technology* 23 (6): 641–653.
- Clarke, Edward H. 1971. "Multipart Pricing of Public Goods." *Public Choice* 11: 17–33.
- Edelman, Benjamin, Michael Ostrovsky, e Michael Schwarz. 2007. "Internet Advertising and the Generalized Second-Price Auction." *American Economic Review* 97 (1): 242–259. [DOI](https://doi.org/10.1257/aer.97.1.242)
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press. Cap. 3.
- Groves, Theodore. 1973. "Incentives in Teams." *Econometrica* 41 (4): 617–631.
- Harsanyi, John C. 1967–68. "Games with Incomplete Information Played by 'Bayesian' Players." *Management Science* 14 (3, 5, 7): 159–182, 320–334, 486–502.
- Hendricks, Kenneth, e Robert H. Porter. 1988. "An Empirical Study of an Auction with Asymmetric Information." *American Economic Review* 78 (5): 865–883. [DOI](https://doi.org/10.2307/1831115)
- Klemperer, Paul. 2002. "What Really Matters in Auction Design." *Journal of Economic Perspectives* 16 (1): 169–189.
- Krishna, Vijay. 2010. [*Auction Theory*](https://books.google.com/books?id=QDnmDVfSyhUC). 2nd ed. San Diego: Academic Press.
- McAfee, R. Preston, e John McMillan. 1992. "Bidding Rings." *American Economic Review* 82 (3): 579–599.
- Milgrom, Paul R. 2004. [*Putting Auction Theory to Work*](https://books.google.com/books?id=AkeHTU7XW4kC). Cambridge: Cambridge University Press.
- Milgrom, Paul R., e Robert J. Weber. 1982. "A Theory of Auctions and Competitive Bidding." *Econometrica* 50 (5): 1089–1122. [DOI](https://doi.org/10.2307/1911865)
- Myerson, Roger B. 1981. "Optimal Auction Design." *Mathematics of Operations Research* 6 (1): 58–73. [DOI](https://doi.org/10.1287/moor.6.1.58)
- Riley, John G., e William F. Samuelson. 1981. "Optimal Auctions." *American Economic Review* 71 (3): 381–392.
- Varian, Hal R. 2007. "Position Auctions." *International Journal of Industrial Organization* 25 (6): 1163–1178.
- Vickrey, William. 1961. "Counterspeculation, Auctions, and Competitive Sealed Tenders." *Journal of Finance* 16 (1): 8–37. [DOI](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x)
