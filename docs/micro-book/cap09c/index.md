# Capítulo 9c — Jogando no Escuro: Jogos com Informação Incompleta

Nos módulos anteriores, todos os jogadores conheciam perfeitamente a estrutura do jogo — payoffs, estratégias e número de jogadores. Na realidade, informação completa é a exceção. Uma firma entrante não sabe o custo marginal da incumbente; um licitante não conhece os valores dos concorrentes; um regulador não observa a eficiência da firma regulada.

Harsanyi (1967–68) resolveu o problema de modelar jogos com **informação incompleta** ao introduzir a noção de "tipos": cada jogador tem um tipo privado (sorteado pela natureza), e as crenças sobre os tipos dos outros são descritas por uma distribuição de probabilidade (prior comum). O conceito de equilíbrio correspondente é o **Equilíbrio Bayesiano de Nash** (BNE).

Este módulo cobre jogos bayesianos estáticos e sua principal aplicação: a **teoria de leilões** (Gibbons, 1992, Cap. 3). Os conceitos aqui desenvolvidos conectam-se diretamente ao Capítulo 9a (jogos estáticos com informação completa, cujo equilíbrio de Nash é o caso especial sem tipos privados), ao Capítulo 9b (jogos dinâmicos com informação completa, que introduz credibilidade e ameaças — cruciais nos leilões ascendentes) e ao Capítulo 9d (jogos dinâmicos com informação incompleta, que aprofunda sinalização e reputação). O leitor que domina o BNE estará preparado para os modelos de sinalização em 9d, nos quais a assimetria informacional persiste ao longo de múltiplos estágios.

---

## 9c.1 Informação Incompleta e Tipos

Como modelar formalmente uma situação em que os jogadores não conhecem as características uns dos outros? A solução engenhosa de Harsanyi consiste em introduzir um novo "jogador" — a natureza — que sorteia, no início do jogo, um perfil de *tipos* para os participantes. Cada jogador observa apenas o próprio tipo, mas conhece a distribuição de probabilidade sobre os tipos dos demais. Com essa reformulação, o jogo com informação incompleta se transforma em um jogo com informação imperfeita, passível de análise com as ferramentas já desenvolvidas.

!!! definition "Jogo Bayesiano"
    Um **jogo Bayesiano** é definido por:

    \[
    \Gamma^B = \langle N, (S_i)_{i \in N}, (\Theta_i)_{i \in N}, (u_i)_{i \in N}, p \rangle
    \label{eq:9c.1} \tag{9c.1}
    \]

    onde \(\Theta_i\) é o conjunto de tipos do jogador \(i\), \(u_i(s, \theta)\) é o payoff, e \(p(\theta)\) é a distribuição conjunta sobre o perfil de tipos (prior comum).

A transformação de Harsanyi converte um jogo com informação incompleta em um jogo com informação imperfeita (mas completa): a "natureza" sorteia os tipos, cada jogador observa apenas o próprio tipo, e o jogo prossegue como um jogo simultâneo em que cada tipo é tratado como um "jogador" separado. O que antes era genuína ignorância sobre a estrutura do jogo, formalizada pela equação $\eqref{eq:9c.1}$, torna-se meramente incerteza sobre um lance aleatório — algo que as ferramentas probabilísticas podem tratar rigorosamente.

É importante notar a diferença entre **informação incompleta** e **informação imperfeita** (introduzida no Capítulo 9b). Informação imperfeita significa que os jogadores não observam todas as ações passadas; informação incompleta significa que não conhecem as características fundamentais dos adversários — custos, valores, preferências. A genialidade da transformação de Harsanyi é reduzir o segundo tipo ao primeiro, unificando o tratamento analítico. Uma vez que o jogo bayesiano está definido, as estratégias passam a ser *funções dos tipos*: em vez de escolher uma ação, cada jogador escolhe um plano contingente que especifica o que fazer para cada possível realização do seu tipo privado.

---

## 9c.2 Equilíbrio Bayesiano de Nash

Com a estrutura do jogo bayesiano definida, qual é o conceito de equilíbrio apropriado? A resposta natural é exigir que cada *tipo* de cada jogador maximize seu payoff esperado, condicionando na sua informação privada e nas estratégias de equilíbrio dos demais. Essa extensão do equilíbrio de Nash ao contexto bayesiano — o Equilíbrio Bayesiano de Nash (BNE) — é a contribuição central de Harsanyi.

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

---

## 9c.3 Leilões de Valor Privado

A aplicação mais importante dos jogos bayesianos estáticos é a teoria de leilões. Em um leilão, cada participante possui informação privada sobre seu próprio valor pelo objeto e deve decidir quanto oferecer sem conhecer os valores dos concorrentes — um jogo bayesiano por excelência.

A teoria moderna de leilões foi inaugurada por Vickrey (1961), que demonstrou a propriedade de revelação de verdade no leilão de segundo preço e estabeleceu as bases para a análise de bem-estar. Duas décadas depois, Myerson (1981) e Riley e Samuelson (1981) completaram o edifício com a derivação do leilão ótimo e o teorema da equivalência de receita. William Vickrey dividiu o Nobel de 1996 com James Mirrlees precisamente por essas contribuições — e Roger Myerson recebeu o Nobel de 2007 (junto com Hurwicz e Maskin) pelo desenho de mecanismos. Raramente uma área da teoria econômica gerou tanto reconhecimento tão rápido, o que reflete a importância prática imediata dos resultados.

### Modelo básico: IPV (Valores Privados Independentes)

\(N\) licitantes com valores \(v_i\) sorteados independentemente de \(F\) no intervalo \([0, \bar{v}]\). Cada licitante conhece \(v_i\) mas não os valores dos demais.

**Leilão de segundo preço (Vickrey):** O licitante com o maior lance ganha e paga o *segundo* maior lance. Lançar \(b_i = v_i\) é **estratégia fracamente dominante** — não depende das crenças sobre os outros.

!!! proof "Demonstração: Verdade é ótimo no leilão de Vickrey"
    Seja \(b_i = v_i\) o lance do jogador \(i\) e \(b_{(1)}^{-i}\) o maior lance dos demais. Se \(b_i > b_{(1)}^{-i}\), \(i\) ganha e paga \(b_{(1)}^{-i}\), obtendo \(v_i - b_{(1)}^{-i} \geq 0\). Suponha que \(i\) desvie:

    - **Lance acima** (\(b_i' > v_i\)): Ganha com mais frequência, mas nos casos extras paga \(b_{(1)}^{-i} > v_i\) — lucro negativo.
    - **Lance abaixo** (\(b_i' < v_i\)): Perde quando \(b_i' < b_{(1)}^{-i} < v_i\) — desiste de lucro positivo.

    Portanto, \(b_i = v_i\) é fracamente dominante. \(\blacksquare\)

No leilão de Vickrey, portanto, a verdade é ótima independentemente do que os outros fazem. Mas e quando o vencedor paga seu *próprio* lance? Nesse caso, lançar o valor verdadeiro seria desastroso, e a estratégia ótima exige *sombreamento*.

**Leilão de primeiro preço:** O vencedor paga seu próprio lance. BNE simétrico com \(v_i \sim U[0, \bar{v}]\):

\[
b(v) = v \cdot \frac{N-1}{N}
\label{eq:9c.3} \tag{9c.3}
\]

Pela equação $\eqref{eq:9c.3}$, cada licitante "sombreia" seu lance por um fator \((N-1)/N\). Com 2 licitantes, o lance é metade do valor; com muitos, converge para o valor verdadeiro. Com mais concorrentes, o risco de perder o leilão aumenta e o sombreamento diminui — no limite, com infinitos licitantes, cada um lança (quase) seu valor verdadeiro.

A intuição por trás do sombreamento é fundamental: no leilão de primeiro preço, o licitante enfrenta um *trade-off* entre a probabilidade de ganhar e o lucro condicional à vitória. Lançar mais alto aumenta a chance de ganhar, mas reduz o ganho se vencer. A fórmula do BNE simétrico resolve esse trade-off de forma ótima: o sombreamento ótimo é exatamente proporcional ao valor, com fator \((N-1)/N\) que cresce em \(N\). Essa elegância matemática reflete uma lógica econômica profunda — o licitante "compra" probabilidade de vitória ao custo de lucro esperado, e o equilíbrio iguala os benefícios marginais de ambos os lados.

**Receita esperada:** Com \(v_i \sim U[0, 1]\):

\[
E[\text{Receita}] = \frac{N-1}{N+1}
\label{eq:9c.4} \tag{9c.4}
\]

### Teorema da Equivalência de Receita

Os leilões de primeiro e segundo preço parecem radicalmente distintos. As receitas deveriam diferir, certo? Surpreendentemente, não: sob condições bastante gerais, a receita esperada é *idêntica* em todos os formatos padrão.

!!! theorem "Revenue Equivalence Theorem (Myerson, 1981; Riley e Samuelson, 1981)"
    Com licitantes simétricos, IPV, risco-neutros, e qualquer mecanismo que (i) atribui o objeto ao licitante com maior valor e (ii) dá payoff zero ao tipo mais baixo, a **receita esperada** do leiloeiro é a mesma.

    Consequência: leilão de 1º preço, 2º preço, inglês e holandês geram a mesma receita esperada, como confirma a equação $\eqref{eq:9c.4}$.

!!! note "Quando a equivalência falha"
    A equivalência de receita falha com: (i) aversão ao risco (1º preço gera mais receita); (ii) assimetria entre licitantes; (iii) valores afiliados/comuns; (iv) colusão. Nesses casos, o formato do leilão importa — e o desenho ótimo de mecanismo (Myerson, 1981) se torna relevante.

!!! warning "Cuidado"
    **A maldição do vencedor não é sobre má sorte — é sobre seleção adversa**

    Um erro comum ao estudar leilões de valor comum é pensar que a "maldição do vencedor" é apenas um desvio comportamental ou resultado de irracionalidade. Na verdade, trata-se de um **problema estrutural de seleção adversa**: vencer um leilão de valor comum revela que sua estimativa era a mais alta entre todos os participantes, o que é uma *má notícia* sobre o valor real do objeto.

    **Erro típico:** "Minha estimativa é R$ 120 milhões, então vou lançar R$ 120 milhões." — Errado! Se você ganha, significa que todos os outros estimaram *menos* que R$ 120 milhões. O valor real provavelmente é menor.

    **Correção:** O lance ótimo condiciona na informação revelada pela vitória: \(b^* = E[V \mid s_i = \max_j s_j]\), que é *sempre menor* que \(s_i\) quando há mais de um licitante. A diferença \(s_i - b^*\) cresce com o número de concorrentes — mais licitantes significa mais seleção adversa.

    **Aplicação brasileira:** Em licitações de obras públicas, empresas que ignoram a maldição do vencedor frequentemente ganham contratos que se tornam prejudiciais, levando a renegociações ou abandono de obras — um problema crônico na infraestrutura nacional.

### Leilões de valor comum e a maldição do vencedor

Até aqui, assumimos valores privados. Em muitos contextos, porém, o objeto tem um valor *comum* que ninguém conhece com certeza — em leilões de petróleo, por exemplo, o volume de óleo é o mesmo para qualquer empresa, mas cada uma tem sua estimativa. Essa mudança de premissa introduz um fenômeno perverso.

!!! idea "Intuição Econômica"
    **Em uma frase:** Em leilões de valor comum, ganhar é uma má notícia — significa que você estimou o valor mais alto que todos.

    **Pense assim:** Num leilão de direitos de exploração de petróleo (como os da ANP), o bloco vale o mesmo para todos, mas cada empresa tem uma estimativa diferente do volume de óleo. Quem ganha é quem estimou mais. Se todos cometem erros simétricos de estimação, o vencedor é o mais otimista — e provavelmente pagou demais.

    **Solução:** Licitantes racionais *sombreiam* seus lances adicionalmente para corrigir a maldição. A magnitude do ajuste depende do número de concorrentes: mais licitantes → mais seleção adversa → mais sombreamento.

    **Evidência:** Capen, Clapp e Campbell (1971) documentaram que empresas de petróleo no Golfo do México sistematicamente superestimaram o valor dos blocos — a maldição do vencedor em ação.

!!! box-mundo "🌍 Box Mundo 9c.1 — Desenho de leilões de espectro: o Nobel de 2020 e as lições dos leilões da FCC"

    **Contexto:** Em outubro de 2020, o Prêmio Nobel de Economia foi concedido a Paul Milgrom e Robert Wilson "por melhorias na teoria de leilões e invenções de novos formatos de leilão". A distinção reconheceu não apenas contribuições teóricas fundamentais — como o modelo de valores afiliados de Milgrom e Weber (1982) e a formalização da maldição do vencedor por Wilson (1969, 1977) — mas, sobretudo, a aplicação prática dessas ideias ao desenho de leilões de espectro eletromagnético pela Federal Communications Commission (FCC) dos Estados Unidos. Antes de 1994, a FCC alocava licenças de espectro por *beauty contests* (processos administrativos discricionários) e loterias — métodos que não revelavam informação sobre valores e geravam alocações ineficientes, além de oportunidades de rent-seeking. A transição para leilões competitivos, informada pela teoria de Milgrom e Wilson, transformou radicalmente a alocação de um dos recursos públicos mais valiosos do mundo.

    O desafio técnico era formidável. Licenças de espectro são complementares: uma operadora que detém frequências adjacentes em regiões geográficas contíguas obtém valor substancialmente maior do que a soma das partes. Essa complementaridade cria o *problema da exposição* — em leilões separados para cada licença, um licitante pode acabar comprando parte de um pacote desejado a preços inflados, sem garantia de obter as peças restantes. Milgrom, em colaboração com Wilson e outros economistas, desenhou o *Simultaneous Multiple Round Auction* (SMRA): todas as licenças são leiloadas simultaneamente em rodadas ascendentes, permitindo que os licitantes ajustem seus lances entre licenças à medida que os preços relativos se revelam. Posteriormente, Milgrom desenvolveu o *Combinatorial Clock Auction* (CCA) e o *incentive auction* (2016–17), que simultaneamente realocou espectro de TV para uso de banda larga — um "leilão reverso" para comprar licenças de emissoras combinado com um "leilão direto" para vendê-las a operadoras de telecomunicações.

    **Dados:** Desde 1994, os leilões de espectro da FCC arrecadaram mais de US$ 230 bilhões em receita para o Tesouro americano. O leilão de espectro AWS-3 (2015) arrecadou US$ 44,9 bilhões; o incentive auction (Leilão 1000–1002, 2016–17) arrecadou US$ 19,8 bilhões e liberou 84 MHz de espectro para banda larga 5G. Na Europa, os leilões de espectro 5G realizados entre 2018 e 2022 geraram resultados heterogêneos: a Itália arrecadou €6,6 bilhões (2018), a Alemanha €6,5 bilhões (2019), mas a Espanha apenas €438 milhões (2018) — diferenças atribuídas em grande parte ao desenho do leilão (número de lotes, preço de reserva, obrigações de cobertura). Cramton (2013) documentou que leilões mal desenhados — como o leilão 3G do Reino Unido em 2000 (£22,5 bilhões, com vencedores que subsequentemente enfrentaram dificuldades financeiras) e o fiasco do leilão neozelandês de 1990 (formato de segundo preço que gerou receita mínima) — demonstram que a qualidade do desenho de mecanismo importa tanto quanto a competição entre licitantes.

    **Análise:** Os leilões de espectro são a aplicação mais direta e espetacular dos conceitos desenvolvidos neste capítulo. O formato SMRA de Milgrom e Wilson resolve simultaneamente três problemas teóricos: (i) a maldição do vencedor (leilões ascendentes com informação revelada reduzem o risco de superestimação, pelo *linkage principle* de Milgrom e Weber); (ii) complementaridade entre licenças (licitação simultânea permite ajuste entre mercados); e (iii) colusão (regras de atividade e lances mínimos dificultam sinalização entre licitantes). O Teorema da Equivalência de Receita, demonstrado na seção anterior, pressupõe licitantes simétricos e valores privados independentes — condições que *não* valem nos leilões de espectro, onde licitantes são assimétricos (incumbentes vs. entrantes) e os valores são afiliados (o valor de uma licença depende do valor das licenças adjacentes). É precisamente por essas violações que o formato do leilão importa e que o desenho de mecanismos — a "engenharia reversa" do jogo desenvolvida na Seção 9c.4 — tem consequências econômicas da ordem de dezenas de bilhões de dólares. O leilão brasileiro de 5G da ANATEL (2021, R$ 47,2 bilhões) inspirou-se diretamente nos formatos desenvolvidos por Milgrom e Wilson, adaptados ao contexto regulatório brasileiro com obrigações de cobertura em áreas rurais.

    **Fonte:** Milgrom, Paul (2004). *Putting Auction Theory to Work*. Cambridge University Press. Cramton, Peter (2013). "Spectrum Auction Design." *Review of Industrial Organization*, 42(2), 161–190. The Royal Swedish Academy of Sciences (2020). "Improvements to Auction Theory and Inventions of New Auction Formats." Scientific Background on the Sveriges Riksbank Prize in Economic Sciences.

---

## 9c.4 Desenho de Mecanismos

A teoria de leilões levanta uma pergunta mais ampla: se a receita depende do formato, qual formato é *ótimo*? Mais geralmente, dado o resultado desejado, qual "jogo" o implementa? Essa inversão — do equilíbrio ao desenho — é o campo do *desenho de mecanismos*.

!!! definition "Princípio da Revelação"
    Para qualquer mecanismo e qualquer BNE desse mecanismo, existe um mecanismo de **revelação direta** (onde cada agente simplesmente reporta seu tipo) em que reportar verdadeiramente é um BNE e que produz o mesmo resultado.

    Implicação prática: ao buscar o mecanismo ótimo, basta considerar mecanismos de revelação direta com compatibilidade de incentivos.

O desenho de mecanismos inverte a pergunta da teoria dos jogos: em vez de "dado o jogo, qual é o equilíbrio?", pergunta-se "dado o resultado desejado, qual jogo gera esse resultado em equilíbrio?" Essa inversão é profundamente prática: o regulador que projeta um leilão, o governo que desenha uma licitação, a empresa que cria um processo seletivo — todos estão fazendo desenho de mecanismos. O Princípio da Revelação simplifica a tarefa ao mostrar que basta considerar mecanismos nos quais os participantes reportam seus tipos — desde que dizer a verdade seja ótimo.

!!! idea "Intuição Econômica"
    **Desenho de mecanismos: engenharia reversa do jogo**

    **Em uma frase:** Desenho de mecanismos é a arte de construir o "jogo" para que o comportamento racional e egoísta dos participantes produza o resultado que o designer quer.

    **Pense assim:** Um governo quer vender uma licença de espectro de rádio ao operador que mais valoriza o recurso (eficiência alocativa) e maximizar a receita para os cofres públicos. Não pode simplesmente perguntar "quanto você paga?", pois as empresas mentiriam. A solução do mecanismo design é construir um formato de leilão em que dizer a verdade *ou* lançar o lance estrategicamente ótimo resulte, em equilíbrio, na alocação eficiente.

    **Por que isso importa:** O campo surgiu do reconhecimento de que as regras do jogo não são dadas — elas são *escolhas de política*. Myerson (2007), Hurwicz (2007) e Maskin (2007) receberam o Nobel por formalizar como desenhar mecanismos que funcionam mesmo quando os participantes têm informação privada e interesses próprios.

O resultado central do desenho de mecanismos para leilões — o *leilão ótimo* de Myerson — combina dois elementos: um **preço de reserva** (que exclui licitantes com valores baixos, aumentando a receita esperada ao custo de ineficiência ocasional) e **discriminação entre licitantes assimétricos** (um licitante sistematicamente mais fraco recebe tratamento favorável para aumentar a competição e extrair mais receita do licitante mais forte). Esse resultado surpreende a intuição: às vezes, excluir participantes ou distorcer a alocação *aumenta* a receita esperada. O Princípio da Revelação torna esse resultado tratável ao permitir que o designer procure entre mecanismos com compatibilidade de incentivos, em vez de entre todos os mecanismos possíveis.

O desenho de mecanismos conecta-se diretamente ao Capítulo 9d: nos jogos dinâmicos com informação incompleta, a questão não é apenas "qual equilíbrio?" mas também "como desenhar a sequência de comunicação e ação para que o equilíbrio desejado seja sustentável?". Os conceitos de compatibilidade de incentivos e racionalidade individual desenvolvidos aqui são os blocos fundamentais para essa análise mais avançada.

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

## 📋 Resumo do Capítulo

- Jogos com **informação incompleta** modelam situações em que os jogadores não conhecem plenamente as características dos demais (payoffs, custos, tipo). A transformação de Harsanyi converte essa incerteza em um jogo bayesiano com "tipos" privados sorteados pela natureza.
- O conceito de equilíbrio é o **Equilíbrio Bayesiano de Nash (BNE)**: cada tipo de cada jogador maximiza seu payoff esperado, condicionando nas crenças sobre os tipos dos outros e nas estratégias de equilíbrio dos demais.
- Em **leilões de valor privado**, a estratégia ótima depende do formato: no leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia fracamente dominante; no de primeiro preço, licitantes "sombreiam" seus lances por um fator \((N-1)/N\).
- O **Teorema da Equivalência de Receita** estabelece que, sob hipóteses padrão (simetria, IPV, risco-neutralidade), todos os formatos de leilão que atribuem o objeto ao maior valor geram a mesma receita esperada.
- Em **leilões de valor comum**, a **maldição do vencedor** faz com que o ganhador tenda a superestimar o valor do objeto, exigindo sombreamento adicional dos lances.
- O **desenho de mecanismos** inverte a pergunta da teoria dos jogos: dado o resultado desejado, qual jogo o implementa em equilíbrio? O Princípio da Revelação simplifica a busca ao limitar a análise a mecanismos de revelação direta.

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
| Maldição do vencedor | Fenômeno em leilões de valor comum: o vencedor tende a ser o licitante mais otimista, pagando acima do valor real. |
| Princípio da Revelação | Para qualquer mecanismo e BNE, existe um mecanismo de revelação direta equivalente em que reportar o tipo verdadeiro é equilíbrio. |

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

---

## 📚 Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 9–11.
- Athey, Susan, e Philip A. Haile. 2007. "Nonparametric Approaches to Auctions." In *Handbook of Econometrics*, Vol. 6A, 3847–3965. [DOI](https://doi.org/10.1016/S1573-4412(07)06060-6)
- Capen, Edward C., Robert V. Clapp, e William M. Campbell. 1971. "Competitive Bidding in High-Risk Situations." *Journal of Petroleum Technology* 23 (6): 641–653.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press. Cap. 3.
- Harsanyi, John C. 1967–68. "Games with Incomplete Information Played by 'Bayesian' Players." *Management Science* 14 (3, 5, 7): 159–182, 320–334, 486–502.
- Krishna, Vijay. 2010. [*Auction Theory*](https://books.google.com/books?id=QDnmDVfSyhUC). 2nd ed. San Diego: Academic Press.
- McAfee, R. Preston, e John McMillan. 1992. "Bidding Rings." *American Economic Review* 82 (3): 579–599.
- Milgrom, Paul R. 2004. [*Putting Auction Theory to Work*](https://books.google.com/books?id=AkeHTU7XW4kC). Cambridge: Cambridge University Press.
- Milgrom, Paul R., e Robert J. Weber. 1982. "A Theory of Auctions and Competitive Bidding." *Econometrica* 50 (5): 1089–1122. [DOI](https://doi.org/10.2307/1911865)
- Myerson, Roger B. 1981. "Optimal Auction Design." *Mathematics of Operations Research* 6 (1): 58–73. [DOI](https://doi.org/10.1287/moor.6.1.58)
- Riley, John G., e William F. Samuelson. 1981. "Optimal Auctions." *American Economic Review* 71 (3): 381–392.
- Vickrey, William. 1961. "Counterspeculation, Auctions, and Competitive Sealed Tenders." *Journal of Finance* 16 (1): 8–37. [DOI](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x)
