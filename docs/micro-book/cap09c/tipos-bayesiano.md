# Quem É Quem? Informação Incompleta, Tipos e Equilíbrio Bayesiano

## 9c.1 Quem É Quem? Informação Incompleta e Tipos

A mecânica da transformação de Harsanyi é simples. Cada jogador recebe um **tipo** — uma característica privada (custo, valor, produtividade) sorteada pela natureza. Cada um vê seu tipo, mas não o dos outros. A distribuição de probabilidade sobre os tipos é conhecida por todos (é a "prior comum"). Com essa reformulação, o jogo se torna analisável: cada jogador escolhe uma estratégia que depende do seu tipo, maximizando o payoff esperado dadas suas crenças sobre os tipos alheios.

Para fixar ideias, um exemplo concreto antes da formalização. Uma empresa incumbente pode ter custo marginal baixo (\(\theta = L\), firma eficiente) ou alto (\(\theta = H\), firma ineficiente). Uma entrante potencial não observa o tipo da incumbente, mas sabe que a probabilidade de enfrentar uma firma eficiente é \(p\). A decisão de entrar ou não no mercado depende crucialmente da crença sobre \(p\): se \(p\) é alto (a incumbente provavelmente é eficiente), a entrada é arriscada; se \(p\) é baixo, a entrada pode ser lucrativa. O jogo bayesiano formaliza exatamente essa situação — a natureza sorteia o tipo da incumbente, a entrante forma suas crenças usando \(p\), e ambas as partes agem racionalmente dado o que sabem.

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

A hipótese de **distribuição a priori comum** (*common prior*) — de que todos os jogadores compartilham a mesma distribuição de probabilidade sobre os tipos — merece atenção especial. Essa hipótese, formalmente \(p(\theta)\) na equação $\eqref{eq:9c.1}$, significa que a incerteza dos jogadores não vem de discordância sobre o modelo do mundo, mas apenas de *informação privada*: cada um sabe algo que os outros não sabem, mas todos concordam sobre a estrutura probabilística subjacente. Sem essa hipótese, seria necessário modelar crenças sobre crenças sobre crenças ad infinitum — o que Harsanyi mostrou ser equivalente a uma hierarquia infinita de tipos que pode ser colapsada em uma prior comum sob condições razoáveis.

Com a formalização do jogo bayesiano e a noção de estratégias contingentes ao tipo, estamos em posição de definir o conceito de equilíbrio — o Equilíbrio Bayesiano de Nash — que captura o comportamento racional quando cada jogador utiliza sua informação privada de forma ótima.

---

## 9c.2 Chutar Com Base no Que Você Sabe: Equilíbrio Bayesiano de Nash

O jogo está definido; falta o conceito de equilíbrio. A ideia é natural: cada *tipo* de cada jogador deve estar jogando a melhor resposta, dadas suas crenças sobre os tipos dos adversários. É um equilíbrio de Nash, mas "por tipo" — como se cada tipo fosse um jogador separado que sabe seu próprio tipo e forma expectativas sobre os demais usando a prior. Esse é o **Equilíbrio Bayesiano de Nash** (BNE). O jogador tipo \(\theta_i\) não sabe quais tipos os outros receberam, mas pode calcular a expectativa de seu payoff usando a distribuição condicional \(p(\theta_{-i} | \theta_i)\) e as estratégias de equilíbrio \(\sigma_{-i}^*(\theta_{-i})\). Se tipos são independentes — como ocorre no modelo de valores privados independentes que será central na teoria de leilões — a distribuição condicional coincide com a prior marginal, simplificando consideravelmente o cálculo.

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
