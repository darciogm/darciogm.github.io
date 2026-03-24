# Capítulo 9d — Sinais, Contratos e Credibilidade: Jogos Dinâmicos com Informação Incompleta

No módulo anterior (9c), os jogadores faziam escolhas simultâneas sem observar as ações dos demais. Quando ações são **sequenciais** e a informação é **incompleta**, surge uma nova possibilidade: jogadores informados podem usar suas ações para **sinalizar** informação privada, e jogadores desinformados podem **atualizar crenças** via regra de Bayes.

O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito** (PBE), que combina otimalidade sequencial (como no EPS) com consistência bayesiana das crenças (como no BNE). As aplicações centrais são **sinalização** (Spence, 1973), **moral hazard** e **seleção adversa** — os problemas clássicos de informação assimétrica que George Akerlof, Michael Spence e Joseph Stiglitz formalizaram ao longo das décadas de 1970 e 1980, trabalho que culminou no Prêmio Nobel de Economia de 2001.

A importância prática desse arcabouço dificilmente pode ser subestimada. Mercados de carros usados, planos de saúde, crédito bancário, relações de emprego e regulação pública todos exibem, em maior ou menor grau, problemas gerados pela assimetria informacional. A teoria desenvolvida neste capítulo oferece uma linguagem precisa para identificar esses problemas e avaliar mecanismos de mitigação. Ela também dialoga diretamente com o Capítulo 7 (risco e decisão em condições de incerteza) — pois o moral hazard, como veremos, é inseparável da aversão ao risco do agente — e com o Capítulo 8 (economia comportamental), cuja agenda em parte questiona até que ponto os agentes reais atualizam crenças de forma bayesiana e respondem racionalmente a incentivos contratuais.

Este módulo completa a taxonomia de Gibbons (1992, Cap. 4) e faz ponte com o Capítulo 19 (Limões, Sinais e Contratos).

---

## 9d.1 Equilíbrio Bayesiano Perfeito (PBE)

Quando combinamos ação sequencial com informação incompleta, precisamos de um conceito de equilíbrio que una as exigências do EPS (otimalidade em cada ponto do jogo) com as do BNE (consistência das crenças). O Equilíbrio Bayesiano Perfeito realiza essa síntese: cada jogador age otimamente em cada conjunto de informação, dado o que acredita sobre os tipos dos demais, e essas crenças são atualizadas pela regra de Bayes sempre que possível.

!!! definition "Equilíbrio Bayesiano Perfeito"
    Um PBE consiste em:

    1. **Estratégias** \(\sigma^*\) para cada jogador em cada conjunto de informação.
    2. **Crenças** \(\mu\) (distribuição sobre os nós em cada conjunto de informação).

    satisfazendo:

    - **Otimalidade sequencial:** Dado \(\mu\), cada jogador maximiza seu payoff esperado em cada conjunto de informação.
    - **Consistência bayesiana:** Onde possível, \(\mu\) é derivada das estratégias de equilíbrio \(\sigma^*\) pela regra de Bayes.

O PBE refina o BNE ao exigir que as crenças sejam consistentes com as estratégias *em cada ponto do jogo*, não apenas no início. Isso elimina equilíbrios sustentados por crenças arbitrárias em conjuntos de informação fora do caminho de equilíbrio. Em termos econômicos, a exigência força o analista a especificar *o que o receptor acreditaria* caso observasse um sinal inesperado, distinguindo equilíbrios robustos daqueles sustentados por suposições arbitrárias.

A consistência bayesiana das crenças é, ao mesmo tempo, a virtude e a limitação do PBE. A virtude é que ela disciplina o comportamento fora do caminho de equilíbrio: o analista não pode simplesmente "atribuir" crenças convenientes para sustentar um equilíbrio. A limitação é que, fora do caminho de equilíbrio, a regra de Bayes não se aplica diretamente (o evento observado tem probabilidade zero sob as estratégias de equilíbrio), abrindo espaço para múltiplos equilíbrios. Refinamentos como o Critério de Dominância Intuitiva de Cho e Kreps (1987) foram desenvolvidos exatamente para reduzir essa multiplicidade, eliminando equilíbrios sustentados por crenças "implausíveis" fora do caminho.

---

## 9d.2 Sinalização: O Modelo de Spence

O PBE encontra sua aplicação mais célebre nos jogos de sinalização. A pergunta central é: pode uma parte informada *revelar credivelmente* sua informação privada por meio de ações observáveis? A resposta de Spence (1973) é que sim, desde que o custo da ação seja diferencialmente menor para os tipos de alta qualidade.

O insight de Spence foi desenvolver esse argumento no contexto do mercado de trabalho, mas suas implicações alcançam muito além. No mercado de carros usados, o vendedor pode oferecer uma garantia estendida como sinal de que o veículo é confiável: um vendedor de "limão" acharia essa garantia demasiado custosa de honrar, ao passo que o vendedor de um carro bom a oferta com baixo risco. No mercado de crédito, uma empresa pode distribuir dividendos elevados para sinalizar lucratividade — só uma empresa genuinamente saudável poderia fazê-lo de forma sustentável. No Brasil, o sistema do ENEM e o vestibular funcionam, em parte, como sinais de habilidade: o investimento em cursinho, horas de estudo e a própria taxa de inscrição são custos que sinalizam dedicação e aptidão ao mercado de trabalho. Em todos esses casos, o mecanismo é o mesmo: uma ação custosa cujo custo é inversamente proporcional à qualidade do agente.

Os jogos de sinalização, formalizados por Spence (1973), são jogos sequenciais com informação incompleta nos quais a parte informada (o "remetente") age primeiro, escolhendo um sinal observável.

!!! definition "Estrutura de um jogo de sinalização"
    1. A natureza sorteia o tipo \(\theta \in \Theta\) do remetente.
    2. O remetente observa \(\theta\) e escolhe um sinal \(m \in M\).
    3. O receptor observa \(m\) (mas não \(\theta\)), atualiza crenças via Bayes e escolhe \(a \in A\).
    4. Payoffs: \(u_R(m, a, \theta)\) e \(u_S(m, a, \theta)\).

!!! info "🏅 Prêmio Nobel — A. Michael Spence (2001)"

    **Andrew Michael Spence** (1943–presente) é um economista americano. Obteve o PhD em Harvard sob orientação de Kenneth Arrow e foi professor em Harvard e Stanford, onde foi também reitor da Graduate School of Business. Dividiu o Nobel com George Akerlof e Joseph Stiglitz.

    **Por que ganhou o Nobel:**
    Premiado por sua análise de mercados com informação assimétrica. Em *Job Market Signaling* (1973), Spence mostrou como um agente mais bem informado pode usar ações custosas e observáveis — como investir em educação — para sinalizar credivelmente suas características não observáveis ao mercado. A chave é que o custo do sinal é menor para os tipos de alta qualidade, tornando a imitação não lucrativa.

    **Conexão com este capítulo:**
    O modelo de Spence — em que trabalhadores de alta produtividade investem em educação para se distinguir dos de baixa produtividade — é o exemplo central de jogo de sinalização analisado neste capítulo. Os conceitos de equilíbrio separador e agregador, e as condições para que a sinalização funcione como mecanismo de revelação de informação, são desenvolvidos diretamente a partir do framework de Spence.

!!! idea "Intuição Econômica"
    **A lógica da sinalização em uma frase:** Uma ação cara e observável revela informação oculta — mas só funciona quando o custo é menor para quem realmente tem a qualidade que está sendo sinalizada.

    **Por que o custo precisa ser diferencial?** Se o sinal custasse o mesmo para todos os tipos, qualquer agente de baixa qualidade poderia imitá-lo sem desvantagem. A separação de tipos depende precisamente de que o custo de "fingir" seja proibitivo para o tipo ruim. Essa é a condição de single-crossing: as curvas de indiferença dos dois tipos só se cruzam uma vez no espaço (sinal, salário/preço), o que garante que o nível de sinal que o tipo bom aceita obter seja alto demais para o tipo ruim.

    **Exemplos práticos:**

    - *Garantia estendida de carro:* um vendedor de "limão" não oferece porque sabe que vai ter que honrá-la.
    - *Dividendos elevados:* uma firma com fluxo de caixa fraco não poderia distribui-los de forma sustentável.
    - *ENEM de alto desempenho:* o custo de obter a nota exige capacidade que o candidato fraco não tem, ou tem a um custo muito maior de esforço.

    **A eficiência importa:** No equilíbrio separador, a informação privada é revelada — o que é bom para a parte desinformada. Mas o custo da sinalização é puro desperdício social se o sinal não cria valor (educação que não aumenta produtividade, garantias que nunca são acionadas). Esse é o dilema de Spence: credibilidade tem um custo.

### Tipos de equilíbrio

Os jogos de sinalização admitem uma rica variedade de equilíbrios, dependendo de como os diferentes tipos escolhem seus sinais. A classificação a seguir é fundamental para toda a análise subsequente.

- **Separador**: tipos diferentes escolhem sinais diferentes → o sinal revela perfeitamente o tipo.
- **Agregador** (*pooling*): todos os tipos escolhem o mesmo sinal → o receptor não aprende nada.
- **Semi-separador**: alguns tipos randomizam, permitindo revelação parcial.

### Modelo de Spence (sinalização educacional)

Trabalhadores têm habilidade \(\theta_H\) (alta) ou \(\theta_L\) (baixa). A educação \(e\) é custosa, com custo menor para trabalhadores hábeis:

\[
c(e, \theta_H) < c(e, \theta_L) \quad \text{para todo } e > 0
\label{eq:9d.1} \tag{9d.1}
\]

A condição de **single-crossing** da equação $\eqref{eq:9d.1}$ é o ingrediente-chave que torna a sinalização possível. Se os custos fossem iguais para ambos os tipos, nada impediria a imitação — e o sinal perderia conteúdo informacional. É a assimetria de custos que cria a possibilidade de separação: o nível de educação que o tipo alto aceita obter é proibitivamente custoso para o tipo baixo, garantindo que, em equilíbrio separador, trabalhadores de alta habilidade investem em educação suficiente para se diferenciar.

!!! idea "Intuição Econômica"
    **Em uma frase:** No modelo de Spence, a educação tem valor de sinalização *mesmo que não aumente a produtividade*.

    **Pense assim:** Uma empresa não sabe se o candidato é talentoso ou não. O candidato talentoso acha mais fácil (menos custoso) obter um MBA. Então ele faz o MBA não porque aprende algo novo, mas para *provar* que é talentoso. A educação funciona como um filtro que separa tipos.

    **O teste da redundância:** Se todo mundo fosse obrigado a ter MBA, o sinal perderia valor — porque deixaria de separar. Isso é exatamente o que ocorre quando a inflação de diplomas torna certificações ubíquas.

    **Spence vs. Becker:** Na teoria do capital humano (Becker, 1964), a educação aumenta a produtividade diretamente. Na teoria de sinalização (Spence, 1973), a educação não precisa aumentar a produtividade — basta que satisfaça a condição $\eqref{eq:9d.1}$ de custo diferencialmente menor para o tipo hábil. Na prática, ambos os canais coexistem.

### Equilíbrio separador: derivação

Como encontrar formalmente o equilíbrio? O método consiste em determinar o nível mínimo de educação que separa os tipos, usando duas restrições de compatibilidade de incentivos (IC) que delimitam o intervalo de equilíbrios separadores.

Com \(\theta_H = 2\), \(\theta_L = 1\), \(c(e, \theta) = e/\theta\), e firmas competitivas que pagam salário igual à produtividade esperada:

No equilíbrio separador, o tipo L escolhe \(e_L = 0\) e o tipo H escolhe \(e_H = e^*\), onde \(e^*\) deve satisfazer:

- **Tipo H não desvia para \(e = 0\):** \(2 - e^*/2 \geq 1\), logo \(e^* \leq 2\).
- **Tipo L não desvia para \(e = e^*\):** \(1 \geq 2 - e^*\), logo \(e^* \geq 1\).

O equilíbrio separador menos custoso (preferido pelo jogador informado) é \(e^* = 1\). Nesse equilíbrio, o custo da sinalização é puro desperdício social — se os empregadores pudessem observar a habilidade diretamente, nenhum investimento em sinalização seria necessário.

### Equilíbrio agregador (pooling): quando a separação falha

Nem todo jogo de sinalização produz separação. No equilíbrio agregador, ambos os tipos escolhem o mesmo nível de sinal, e o receptor não consegue distingui-los. Isso ocorre quando o intervalo de sinais que satisfazem as condições de incentivo dos dois tipos é vazio — ou seja, quando não existe um \(e^*\) suficientemente alto para deter a imitação do tipo baixo sem ser excessivamente custoso para o tipo alto.

No exemplo acima, se \(\theta_H = 1{,}2\) e \(\theta_L = 1\) (tipos muito próximos), a diferença de custo entre os tipos é pequena. As ICs se tornam incompatíveis num sentido prático: o nível de educação que deters o tipo L de imitar o tipo H exige um custo tão alto que o tipo H prefere não sinalizar. O resultado é um equilíbrio agregador em que ambos os tipos escolhem \(e = 0\) e recebem o salário da produtividade média — exatamente como no problema de informação oculta sem sinalização.

O modelo brasileiro oferece um exemplo instrutivo. O diploma universitário no Brasil tornou-se, nas últimas décadas, progressivamente mais difundido. Se no final dos anos 1980 apenas uma fração pequena dos trabalhadores tinha formação superior, hoje a proporção é consideravelmente maior. A teoria de Spence prevê que, com isso, o valor de sinalização do diploma genérico diminuiu: como mais pessoas o detêm, ele discrimina menos entre tipos. A resposta do mercado foi buscar sinais de maior resolução — pós-graduação, certificações técnicas, universidades de prestígio — num processo de corrida armamentista informacional que o modelo formaliza com precisão.

!!! tip "Sinalização vs. Capital Humano"
    No modelo de Spence, a educação tem valor de sinalização **mesmo que não aumente a produtividade**. Isso contrasta com a teoria do capital humano de Becker. Na realidade, a educação provavelmente combina ambos os papéis: parte do retorno à educação é capital humano genuíno (habilidades adquiridas), e parte é sinalização. Separar empiricamente os dois canais é um dos desafios metodológicos centrais da economia da educação.

---

## 9d.3 Cheap Talk e Comunicação Estratégica

No modelo de Spence, o sinal é crível porque é custoso. Mas o que acontece quando a comunicação não envolve custo direto? Se falar é gratuito, a credibilidade depende inteiramente do alinhamento de interesses entre as partes.

Quando o sinal é sem custo (*cheap talk*), a sinalização é mais difícil. Crawford e Sobel (1982) mostraram que a quantidade de informação transmitida em equilíbrio depende do **alinhamento de interesses** entre remetente e receptor.

- Se os interesses são perfeitamente alinhados: revelação completa é possível.
- Se os interesses divergem: a comunicação é parcial — o remetente envia "intervalos" de informação (*partition equilibrium*).

Quanto maior o desalinhamento de interesses, mais grosseira é a partição e menos informação é transmitida — o receptor racionalmente desconta mensagens de um remetente com incentivo para exagerar.

**Aplicação:** Comunicação entre o Banco Central e o mercado (*forward guidance*). O BCB tem incentivo para comunicar claramente suas intenções de política monetária, mas o grau de credibilidade depende do alinhamento percebido entre os objetivos do BCB e do mercado.

---

## 9d.4 Moral Hazard (Risco Moral)

As seções anteriores trataram de informação privada sobre *características* (tipos). Agora passamos a um problema distinto: o que acontece quando a assimetria se refere a *ações* tomadas após a celebração de um contrato? Se o principal não pode observar o esforço do agente, como desenhar incentivos que alinhem os interesses de ambos? Esse é o problema do moral hazard — ou risco moral — introduzido formalmente na literatura econômica por Arrow (1963) no contexto de seguros de saúde e formalizado em termos de teoria dos contratos por Holmström (1979).

!!! definition "Moral Hazard"
    Situação em que uma parte (o **agente**) toma uma ação não observável que afeta o payoff de outra parte (o **principal**). O principal não pode monitorar diretamente o esforço do agente.

!!! warning "Cuidado"
    **Moral hazard não é fraude.** Um equívoco frequente — mesmo em provas e concursos — é tratar risco moral como sinônimo de comportamento desonesto ou fraudulento. A distinção é precisa e juridicamente relevante.

    **Moral hazard:** O agente age *racionalmente* em resposta a incentivos gerados pelo próprio contrato. Não há intenção de enganar: o agente simplesmente maximiza sua utilidade dado o ambiente que o seguro, o emprego ou o crédito criou. O comportamento é previsível e, em tese, evitável com o redesenho do contrato.

    **Fraude:** Ação intencional para obter benefício indevido — tipicamente por declarações falsas, ocultação deliberada de informação ou falsificação de documentos. Fraude é crime; moral hazard é ineficiência contratual.

    **Exemplo no mercado de saúde brasileiro:** Uma pessoa com plano de saúde que faz check-ups adicionais por serem gratuitos ao ponto de uso está exibindo *moral hazard* (responde ao preço zero da consulta). Uma pessoa que declara uma doença preexistente que não possui para acionar a cobertura está praticando *fraude*. A ANS regula ambos por instrumentos distintos: copagamentos e carências mitigam moral hazard; auditoria médica e perícias combatem fraude.

    O tratamento correto: moral hazard requer redesenho dos incentivos (franquias, copagamentos, bônus por desempenho); fraude requer monitoramento, auditoria e sanções legais.

O modelo básico de principal-agente formaliza essa situação: o principal oferece um contrato, o agente decide se aceita e, em caso positivo, escolhe seu nível de esforço. O desafio é que o esforço não é verificável — apenas o resultado, que depende tanto do esforço quanto de choques aleatórios, pode ser contratado.

- O principal oferece um contrato \(w(q)\) (pagamento condicionado ao resultado \(q\)).
- O agente escolhe esforço \(e\) (não observável). Esforço é custoso: \(c(e)\).
- O resultado \(q\) depende de \(e\) e de choque aleatório \(\varepsilon\): \(q = f(e, \varepsilon)\).
- O principal quer maximizar \(E[q - w(q)]\); o agente quer maximizar \(E[w(q)] - c(e)\).

**Trade-off central:** Para incentivar esforço, o contrato deve vincular pagamento ao resultado. Mas isso expõe o agente (avesso ao risco) a risco — gerando custo de seguro. O contrato ótimo equilibra incentivos e seguro. Esse dilema entre risco e incentivos é onipresente na economia.

A conexão com o Capítulo 7 é direta: o moral hazard existe, na sua forma mais intratável, precisamente porque os agentes são avessos ao risco. Se o agente fosse neutro ao risco, o principal poderia transferir toda a renda residual para o agente ("vender a empresa"), tornando-o o reclamante residual completo — e eliminando o problema de incentivos sem custo de seguro. É a aversão ao risco que torna esse contrato inviável e força a solução de segunda ordem: uma participação parcial nos resultados que equilibra incentivos e proteção.

O Capítulo 8 (economia comportamental) acrescenta uma camada adicional: evidências experimentais de Kahneman e Tversky sugerem que agentes são mais sensíveis a perdas do que a ganhos de mesma magnitude (aversão à perda). Isso afeta o design de contratos: penalidades pecuniárias por baixo desempenho podem ter poder de incentivo desproporcional ao seu valor monetário, o que tem implicações para contratos de gestores e para políticas de bônus.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando alguém não arca com as consequências de suas ações, tende a agir de forma mais arriscada.

    **Pense assim:** Uma pessoa com seguro de saúde completo pode cuidar menos da saúde (alimentação, exercício, prevenção) do que alguém sem seguro. O seguro *causa* comportamento mais arriscado — não apenas o cobre.

    **No mundo corporativo:** Um CEO com salário fixo (sem bônus vinculado ao desempenho) tem menos incentivo para se esforçar. Contratos com stock options e bônus por performance são mecanismos para mitigar o moral hazard.

    **Cross-reference:** O Capítulo 19 aprofunda o desenho de contratos ótimos e mecanismos de screening.

---

## 9d.5 Seleção Adversa

Se o moral hazard é um problema pós-contratual (ações ocultas), a seleção adversa é pré-contratual (características ocultas). Confundir os dois — como fazem os itens 0 e 1 da questão ANPEC ao final deste capítulo — é um erro frequente mas evitável: basta perguntar se a assimetria surge *antes* ou *depois* da celebração do contrato.

!!! definition "Seleção Adversa"
    Situação em que uma parte tem informação privada sobre suas próprias características *antes* de firmar um contrato, e a parte desinformada não consegue distinguir os tipos. Em equilíbrio, a parte desinformada oferece condições baseadas na qualidade *média* do pool, o que:

    1. **Atrai desproporcionalmente os tipos "ruins":** quem sabe que é de alto risco, baixa qualidade ou alta demanda tem mais incentivo para transacionar nessas condições.
    2. **Afasta os tipos "bons":** para quem é de baixo risco ou alta qualidade, o preço médio é desfavorável — eles pagam mais do que seu tipo justificaria.
    3. **Deteriora o pool:** a saída dos tipos bons piora a composição média, forçando preços ainda mais altos, numa espiral que pode culminar no colapso do mercado.

    A seleção adversa é um problema de *características ocultas* (antes do contrato), em contraste com o moral hazard, que é de *ações ocultas* (após o contrato). Formulação original: Akerlof (1970).

!!! info "🏅 Prêmio Nobel — George A. Akerlof e Joseph E. Stiglitz (2001)"

    **George A. Akerlof** (1940–presente) e **Joseph E. Stiglitz** (1943–presente) dividiram o Nobel de 2001 com Michael Spence, pelos trabalhos fundadores sobre mercados com informação assimétrica.

    **Akerlof:** Em "The Market for 'Lemons'" (1970), mostrou que informação assimétrica sobre qualidade pode levar ao colapso completo de mercados. O artigo foi rejeitado por três grandes revistas antes de ser publicado no *Quarterly Journal of Economics* — ironia frequentemente citada como exemplo de seleção adversa no mercado editorial acadêmico. Além de carros usados, Akerlof aplicou o framework a seguros de saúde para idosos e ao mercado de crédito em países em desenvolvimento.

    **Stiglitz:** Com Michael Rothschild, desenvolveu a teoria do equilíbrio em mercados de seguros competitivos com informação assimétrica (Rothschild e Stiglitz, 1976), mostrando que o equilíbrio de mercado — quando existe — envolve separação de tipos por menus de contratos, e que pode não existir equilíbrio pooling estável. Stiglitz também contribuiu para a teoria de screening em mercados de crédito e trabalho.

    **Conexão com este capítulo:** O trabalho conjunto desses três pesquisadores forma o núcleo teórico deste capítulo: Akerlof (seleção adversa), Spence (sinalização) e Stiglitz (screening e equilíbrio de mercados com informação assimétrica).

Akerlof ilustrou o mecanismo com o mercado de carros usados — o artigo que lhe valeu o Nobel de 2001. O argumento é elegante: o vendedor sabe se o carro é confiável ("pêssego") ou defeituoso ("limão"). O comprador não sabe. O preço que o comprador aceita pagar reflete a qualidade *média* do mercado. Mas, a esse preço, os vendedores de "pêssegos" (cujo carro vale mais do que o preço médio) saem do mercado. O que resta é predominantemente "limões". O comprador, antecipando isso, reduz seu preço de reserva. Mais "pêssegos" saem. O processo pode continuar até que o mercado colapse completamente — nenhuma transação ocorre, embora existam vendedores e compradores dispostos a negociar ao preço correto. A ineficiência é gerada inteiramente pela assimetria de informação, não por falhas no mecanismo de preços em si.

!!! idea "Intuição Econômica"
    **O mercado dos limões (Akerlof, 1970):** Por que carros usados valem tão menos que carros novos, mesmo quando saem da concessionária com zero quilômetros?

    **A lógica:** Você compra um carro novo hoje. Amanhã, precisa vender. O comprador potencial sabe que carros usados são colocados à venda por dois motivos: o dono não gosta mais (nenhum problema) ou descobriu um defeito (problema!). Como o comprador não sabe qual é o caso, desconta o preço para se proteger do segundo cenário. Isso afasta os vendedores do primeiro tipo — que não conseguem preço justo — e reforça a suspeita do comprador. O resultado: mesmo carros perfeitamente bons valem menos no mercado de usados, simplesmente porque fazem parte de um pool onde "limões" existem.

    **A generalização:** O mesmo mecanismo opera em mercados de crédito (o tomador sabe mais sobre seu risco de inadimplência do que o banco), em seguros de saúde (o segurado sabe mais sobre sua saúde do que a seguradora) e em mercados de trabalho (o candidato sabe mais sobre sua produtividade do que o empregador). Em todos esses casos, a informação assimétrica faz com que o preço médio de equilíbrio seja "errado" para ambos os lados — caro demais para os tipos bons, barato demais para os ruins.

    **Por que isso importa para políticas públicas?** Quando a seleção adversa leva ao colapso de mercados com valor social positivo (como seguros de saúde para idosos ou crédito para pequenas empresas), há espaço para intervenção estatal que melhore o bem-estar de Pareto: seguro obrigatório, garantias públicas de crédito e regulação de screening.

No mercado de seguros, o mecanismo de Akerlof opera com especial virulência. Considere um mercado de planos de saúde individual: quem sabe que tem histórico familiar de doenças graves, hábitos de vida prejudiciais à saúde ou condições preexistentes tem muito mais incentivo para comprar um plano abrangente a qualquer preço razoável. A seguradora, não podendo observar esses fatores com precisão, precifica pela média — e isso afasta as pessoas jovens e saudáveis, que percebem o plano como caro para seu risco efetivo. O pool que permanece é progressivamente mais doente, o custo médio sobe, o prêmio sobe, mais pessoas saudáveis saem. A espiral pode ser travada por regulação (cobertura obrigatória, que força todos a entrar no pool) ou por screening (menus de contratos com carências e coparticipações que induzem cada tipo a se revelar).

A [Tabela 9d.1](#tabela-9d-1) resume os mecanismos de mitigação:

<a id="tabela-9d-1"></a>

| Mecanismo | Exemplo | Quem age |
|:----------|:--------|:---------|
| **Sinalização** | Garantia do vendedor (carro usado) | Parte informada |
| **Screening** | Menu de contratos (seguro com franquias) | Parte desinformada |
| **Certificação** | Rating de crédito (Serasa, S&P) | Terceiro |
| **Regulação** | Seguro obrigatório (DPVAT) | Estado |

<div class="caption-obj" markdown>
**Tabela 9d.1 — Mecanismos de mitigação da seleção adversa.**
</div>

---

!!! box-brasil "Box Brasil — Seleção adversa nos planos de saúde individuais (ANS)"
    O mercado brasileiro de planos de saúde individuais é um dos exemplos mais documentados de seleção adversa em economia aplicada. A Lei 9.656/1998 e a criação da **ANS** (Agência Nacional de Saúde Suplementar) em 2000 foram, em larga medida, respostas regulatórias ao colapso desse mercado que a teoria de Akerlof prediz.

    **O problema pré-ANS**

    Antes da regulação, operadoras podiam recusar cobertura para doenças preexistentes, excluir beneficiários que se tornavam custosos e diferenciar prêmios livremente por histórico médico. O resultado teórico é exatamente o previsto pelo modelo de seleção adversa: planos individuais tornaram-se proibitivamente caros para quem mais precisava deles, e acessíveis apenas para quem menos precisava — exatamente o inverso do papel social do seguro.

    **Mecanismos regulatórios da ANS e sua lógica econômica**

    | Instrumento regulatório | Problema que mitiga | Mecanismo teórico |
    |:------------------------|:--------------------|:------------------|
    | Cobertura obrigatória (rol mínimo) | Seleção adversa por exclusão de cobertura | Obriga o pool a ser heterogêneo |
    | Proibição de cancelamento unilateral | Seleção adversa dinâmica | Impede exclusão dos tipos "ruins" após revelação do tipo |
    | Carência (período de espera) | Seleção adversa por doenças preexistentes | Screening implícito: quem tem condição preexistente revela tipo ao tentar acionar imediatamente |
    | **Portabilidade de carências** (RN 438/2018) | Moral hazard de aprisionamento (*lock-in*) | Reduz custo de migração, aumentando concorrência |
    | Variação por faixa etária limitada (máx. 6x entre faixa 1 e 10) | Seleção adversa de idosos | Subsídio cruzado entre jovens e idosos |

    **A portabilidade de carências** merece atenção especial: ao permitir que o beneficiário transfira seu histórico de carências cumpridas ao migrar de operadora, a ANS reduziu o *lock-in* que antes aprisionava beneficiários doentes (que precisavam da cobertura e não podiam sair sem recumprir carências). Economicamente, isso aumenta a concorrência entre operadoras sem agravar a seleção adversa — um avanço regulatório que usa a teoria dos contratos para resolver simultaneamente dois problemas de informação assimétrica.

    **Evidência:** O mercado de planos individuais encolheu de ~12 milhões de beneficiários no início dos anos 2000 para ~8–9 milhões em 2023, mesmo com crescimento da renda. O crescimento ocorreu nos planos coletivos por adesão (onde o grupo funciona como mecanismo de pooling), confirmando que a seleção adversa continua sendo uma força poderosa no segmento individual.

    **Fonte:** ANS, Caderno de Informação da Saúde Suplementar; RN ANS 438/2018.

---

Os conceitos desenvolvidos neste capítulo encontram aplicações diretas na realidade institucional brasileira. Os dois Boxes a seguir ilustram como a comunicação do Banco Central pode ser analisada como cheap talk e como a regulação de telecomunicações enfrenta informação assimétrica entre regulador e firma.

!!! box-brasil "Box Brasil — Forward guidance do BCB: cheap talk ou sinalização crível?"
    O **Banco Central do Brasil** comunica suas intenções de política monetária por meio de comunicados, atas do Copom e o Relatório de Inflação. Essa comunicação pode ser analisada como um jogo de sinalização:

    **Estrutura do jogo**

    - O BCB (remetente) tem informação privada sobre o estado da economia e suas preferências.
    - O mercado (receptor) observa o comunicado e forma expectativas sobre a taxa Selic futura.
    - A ação do mercado (expectativas de inflação, curva de juros) afeta a eficácia da política monetária.

    **Quando a comunicação é eficaz?**

    No framework de Crawford-Sobel, a eficácia depende do alinhamento de interesses:

    - Se o mercado acredita que o BCB tem viés inflacionário (interesses desalinhados), a comunicação é parcialmente descontada → equilibrium com partição grosseira.
    - Se o BCB tem credibilidade (autonomia institucional, meta de inflação bem definida), a comunicação é quase revelação completa.

    **Evidência recente**: A autonomia formal do BCB (LC 179/2021) aumentou a credibilidade — evidenciada pela redução da volatilidade da curva de juros em torno dos comunicados do Copom.

    **Fonte**: BCB, Relatório de Inflação; BACEN, Comunicados do COPOM.

---

O próximo Box ilustra o lado operacional da informação assimétrica na regulação setorial.

!!! box-brasil "Box Brasil — Regulação de telecom: quando a Anatel não sabe os custos"
    A regulação de telecomunicações no Brasil enfrenta um problema clássico de informação assimétrica: a **Anatel** precisa fixar tarifas, mas não observa os custos verdadeiros das operadoras (Vivo, Claro, TIM).

    **O dilema do regulador (moral hazard)**

    Se a Anatel fixa a tarifa com base no custo reportado pela operadora, esta tem incentivo para inflar os custos (*cost padding*). Se fixa com base em um benchmark (*price cap*), a operadora tem incentivo para reduzir custos e embolsar a diferença.

    **Mecanismos regulatórios brasileiros**

    | Mecanismo | Período | Lógica teórica |
    |:----------|:--------|:---------------|
    | Rate-of-return | até 2005 | Sem incentivo a eficiência (moral hazard) |
    | Price cap (IST-IGPM) | 2005–2019 | Incentivo a eficiência; risco de subinvestimento |
    | Revenue cap | 2019– | Equilíbrio entre incentivos e investimento |

    A transição de rate-of-return para price cap é exatamente a resposta teórica ao problema de moral hazard: ao desvincular a tarifa do custo reportado, o regulador cria incentivos para a firma se tornar mais eficiente.

    **Fonte**: Anatel, Planos Gerais de Outorgas; OECD, Telecom Regulatory Reviews — Brazil.

---

### R Interativo: Sinalização e Separação de Tipos

??? code "R Interativo — Modelo de Spence: custo da sinalização e equilíbrio separador"
    Este box permite explorar o modelo de Spence variando os parâmetros de produtividade e custo da educação. Veja como o equilíbrio separador muda quando a diferença de custos entre tipos diminui.

    <iframe src="../graficos/cap09/webr-spence.html" title="Figura 9d.1 — Modelo de Spence" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.1 — Modelo de Spence: equilíbrio separador.** Altere as produtividades e custos para ver o nível de educação mínimo que separa os tipos.
    </div>

---

### R Interativo: Seleção Adversa no Mercado de Seguros

??? code "R Interativo — Seleção adversa: simulação de mercado de seguros (Adams, 2025, Cap. 13)"
    Este box simula um mercado de seguros de saúde com tipos heterogêneos (risco alto/baixo). Veja como a seleção adversa pode levar ao colapso do mercado quando o prêmio é calculado pela média.

    <iframe src="../graficos/cap09/webr-insurance.html" title="Figura 9d.2 — Mercado de seguros com seleção adversa" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.2 — Seleção adversa no mercado de seguros.** Varie a proporção de tipos de alto risco para ver quando o mercado colapsa. Baseado em Adams (2025, Cap. 13).
    </div>

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação incompleta combinam ação sequencial com assimetria informacional. O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito (PBE)**, que exige otimalidade sequencial das estratégias e consistência bayesiana das crenças em cada conjunto de informação. O Critério de Dominância Intuitiva de Cho e Kreps (1987) refina o PBE eliminando equilíbrios sustentados por crenças off-path implausíveis.
- No **modelo de sinalização de Spence** (Nobel 2001), a educação funciona como sinal de habilidade mesmo sem aumentar a produtividade: a condição de single-crossing (custo menor para tipos melhores) permite que o equilíbrio separador revele o tipo do trabalhador. O mesmo mecanismo explica garantias no mercado de carros usados, dividendos em finanças corporativas e o valor do ENEM como sinal de aptidão.
- Existem três tipos de equilíbrio em jogos de sinalização: **separador** (tipos revelados), **agregador/pooling** (nenhuma informação revelada) e **semi-separador** (revelação parcial). O Critério de Dominância Intuitiva tende a selecionar equilíbrios separadores.
- **Cheap talk** (comunicação sem custo) transmite informação apenas quando os interesses de remetente e receptor estão suficientemente alinhados (Crawford-Sobel, 1982). A autonomia institucional do BCB é um mecanismo para aumentar a credibilidade do forward guidance.
- O **moral hazard** (risco moral) surge quando o agente toma ações não observáveis pelo principal; o contrato ótimo equilibra incentivos ao esforço com seguro contra risco. **Moral hazard não é fraude**: é desalinhamento de incentivos, não intenção de enganar. A aversão ao risco do agente (Capítulo 7) é o que torna o problema intratável.
- A **seleção adversa** (Nobel 2001 — Akerlof) ocorre quando informação privada pré-contratual atrai desproporcionalmente os tipos "ruins", podendo destruir mercados inteiros. O modelo de Rothschild e Stiglitz (1976) mostra que o equilíbrio em mercados de seguros competitivos é separador, com o tipo baixo risco recebendo cobertura incompleta. Mecanismos de mitigação incluem sinalização, screening, certificação e regulação obrigatória — como as regras da ANS para planos de saúde individuais no Brasil.

## 🔑 Conceitos-Chave

<a id="tabela-9d-2"></a>

| Conceito | Definição |
|----------|-----------|
| Equilíbrio Bayesiano Perfeito (PBE) | Combinação de estratégias e crenças satisfazendo otimalidade sequencial e consistência bayesiana em cada conjunto de informação. |
| Jogo de sinalização | Jogo sequencial em que a parte informada (remetente) escolhe um sinal observável antes que a parte desinformada (receptor) tome sua decisão. |
| Equilíbrio separador | Equilíbrio em que tipos diferentes escolhem sinais diferentes, revelando perfeitamente a informação privada. |
| Equilíbrio agregador (pooling) | Equilíbrio em que todos os tipos escolhem o mesmo sinal, impedindo o receptor de aprender sobre o tipo. |
| Condição de single-crossing | O custo marginal do sinal é menor para os tipos de alta qualidade, garantindo que a imitação não seja lucrativa. |
| Cheap talk | Comunicação sem custo direto; a quantidade de informação transmitida depende do alinhamento de interesses entre remetente e receptor. |
| Moral hazard (risco moral) | Problema de incentivos em que o agente toma ações não observáveis pelo principal, exigindo contratos que vinculem pagamento a resultados. |
| Seleção adversa | Situação pré-contratual em que informação privada sobre qualidade leva os piores tipos a se auto-selecionarem para a transação. |
| Screening | Mecanismo pelo qual a parte desinformada oferece um menu de contratos desenhado para que cada tipo se auto-selecione revelando informação. |
| Princípio da Revelação | Para qualquer mecanismo e equilíbrio, existe um mecanismo direto equivalente em que reportar o tipo verdadeiro é ótimo. |

<div class="caption-obj" markdown>
**Tabela 9d.2 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9d.1 — Equilíbrio separador de Spence"
    **Enunciado:** Trabalhadores têm produtividade \(\theta_H = 2\) (prob. 0,5) ou \(\theta_L = 1\) (prob. 0,5). O custo da educação é \(c(e, \theta) = e/\theta\). Firmas pagam salário = produtividade esperada condicionada em \(e\). Encontre o equilíbrio separador com menor custo.

    **Resolução:**

    No equilíbrio separador: tipo L escolhe \(e_L = 0\) (salário = 1); tipo H escolhe \(e_H = e^*\) (salário = 2).

    **Restrição IC do tipo L (não imitar H):** \(1 - 0 \geq 2 - e^*/1 \implies e^* \geq 1\)

    **Restrição IC do tipo H (não imitar L):** \(2 - e^*/2 \geq 1 \implies e^* \leq 2\)

    **Equilíbrio separador menos custoso:** \(e^* = 1\).

    Payoffs: tipo H obtém \(2 - 1/2 = 1{,}5\); tipo L obtém 1.

    **Eficiência:** Se a informação fosse simétrica, cada tipo receberia sua produtividade sem custo de sinalização. O custo total da sinalização é \(0{,}5 \times (1/2) = 0{,}25\) — puro desperdício social, pois a educação não aumenta a produtividade neste modelo.

??? exercicio-resolvido "Exercício Resolvido 9d.2 — Contrato ótimo com moral hazard"
    **Enunciado:** Um principal contrata um agente. O agente pode exercer esforço alto (\(e_H\), custo 2) ou baixo (\(e_L\), custo 0). Com esforço alto, o resultado é bom (100) com prob. 0,8 e ruim (0) com prob. 0,2. Com esforço baixo, é bom com prob. 0,3 e ruim com prob. 0,7. O agente é neutro ao risco e tem utilidade de reserva 0.

    (a) Qual contrato implementa esforço alto?

    **Resolução:**

    Contrato: \(w_B\) se resultado bom, \(w_R\) se resultado ruim.

    **Restrição de incentivo (IC):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0{,}3 w_B + 0{,}7 w_R\)

    \(\implies 0{,}5 w_B - 0{,}5 w_R \geq 2 \implies w_B - w_R \geq 4\)

    **Restrição de participação (IR):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0\)

    Minimizando o custo para o principal: \(w_R = 0\), \(w_B = 2/(0{,}5) = 4\)... Verificando: \(0{,}8 \times 4 + 0{,}2 \times 0 - 2 = 1{,}2 \geq 0\). ✓

    Mas podemos fazer melhor: com \(w_R = 0\), IC dá \(w_B \geq 4\). IR com \(w_B = 4\): \(3{,}2 - 2 = 1{,}2 > 0\) — renda extra para o agente.

    O contrato ótimo iguala IR: \(0{,}8 w_B + 0{,}2 w_R - 2 = 0\) e IC: \(w_B - w_R = 4\).

    Sistema: \(w_B = w_R + 4\) e \(0{,}8(w_R + 4) + 0{,}2 w_R = 2 \implies w_R = -1{,}2\), \(w_B = 2{,}8\).

    Com \(w_R < 0\) (multa), o principal implementa esforço alto ao menor custo. Se multas não são possíveis (\(w_R \geq 0\)), o custo sobe — limitação de responsabilidade encarece os incentivos.

---

## ✏️ Exercícios

<a id="ex-9d-1"></a>**Exercício 9d.1.** No modelo de Spence com \(\theta_H = 3\) e \(\theta_L = 1\), e custo \(c(e, \theta) = e^2/(2\theta)\), encontre o equilíbrio separador de menor custo. Compare o custo social da sinalização com o caso \(\theta_H = 2\).

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-1)

---

<a id="ex-9d-2"></a>**Exercício 9d.2.** (Cheap talk) Um vendedor sabe que o carro vale 0 (limão) ou 10 (bom), cada com prob. 0,5. O vendedor pode dizer "bom" ou "limão". O comprador decide se compra por preço fixo 6. Existe equilíbrio em que o comprador acredita no vendedor? Por quê?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-2)

---

<a id="ex-9d-3"></a>**Exercício 9d.3.** (Seleção adversa) Num mercado de seguros, 60% dos agentes são de baixo risco (custo esperado 1.000) e 40% de alto risco (custo esperado 5.000). Se o seguro cobra um prêmio atuarialmente justo para a média, qual tipo compra? Que prêmio equilibra o mercado? Existe equilíbrio?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-3)

---

<a id="ex-9d-4"></a>**Exercício 9d.4.** (Moral hazard) Discuta como as seguintes instituições brasileiras mitigam problemas de moral hazard: (a) bônus por desempenho de professores (Ceará); (b) DPVAT com franquia; (c) stock options de executivos em empresas listadas na B3.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-4)

---

<a id="ex-9d-5"></a>**Exercício 9d.5.** *(Fácil — Seleção adversa: equilíbrio de Akerlof)* No mercado de carros usados, existem dois tipos de veículos: bons (valor 12.000) e limões (valor 4.000). A proporção de carros bons é \(\lambda\). Os vendedores conhecem o tipo do próprio carro; os compradores não. O valor de reserva do vendedor é 0,9 do valor do carro (ele prefere ficar com o carro se o preço for inferior a esse limiar).

**(a)** Qual é o preço máximo que um comprador racional aceita pagar se acredita que a fração \(\lambda\) dos carros à venda são bons?

**(b)** Para quais valores de \(\lambda\) existe um equilíbrio em que ambos os tipos são vendidos? Para quais valores o mercado colapsa para somente limões?

**(c)** Se \(\lambda = 0{,}6\), descreva o equilíbrio. O que acontece com o bem-estar quando o mercado colapsa?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-5)

---

<a id="ex-9d-6"></a>**Exercício 9d.6.** *(Fácil — Identificação: moral hazard vs. seleção adversa)* Para cada situação abaixo, identifique se o problema primário é de **moral hazard**, **seleção adversa** ou **ambos**, e justifique em uma ou duas frases.

**(a)** Um banco oferece crédito pessoal a uma taxa uniforme. Os tomadores que mais solicitam o empréstimo são exatamente os que têm maior probabilidade de não pagar.

**(b)** Uma empresa contrata um gerente a salário fixo. O gerente dedica parte do seu tempo a projetos pessoais em vez de projetos da empresa.

**(c)** Uma seguradora de automóveis percebe que, após a contratação, os segurados batem mais o carro do que antes de ter seguro.

**(d)** Uma empresa de plano de saúde coletivo nota que os funcionários que aderem ao plano são sistematicamente mais doentes do que a média da população.

**(e)** Um sistema de crédito imobiliário subsidiado pelo governo atrai compradores que sabem que não conseguirão pagar as prestações no médio prazo.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-6)

---

<a id="ex-9d-7"></a>**Exercício 9d.7.** *(Médio — Equilíbrio pooling vs. separador de Spence)* No modelo de Spence com dois tipos, \(\theta_H = 4\) e \(\theta_L = 1\), custo de educação \(c(e, \theta) = e/\theta\), e proporção de tipos altos igual a \(p = 0{,}5\):

**(a)** Encontre o equilíbrio separador de menor custo.

**(b)** Existe equilíbrio *pooling* em \(e = 0\)? Especifique as crenças off-path que sustentam esse equilíbrio.

**(c)** O equilíbrio pooling em \(e = 0\) sobrevive ao Critério de Dominância Intuitiva de Cho e Kreps (1987)? Justifique.

**(d)** Compare o bem-estar do tipo H nos dois equilíbrios. Qual equilíbrio o tipo H prefere?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-7)

---

<a id="ex-9d-8"></a>**Exercício 9d.8.** *(Médio — Brasil: triagem (screening) da ANS)* Uma operadora de planos de saúde individual enfrenta dois tipos de beneficiários: baixo risco (custo esperado anual R\$ 2.000, fração 70%) e alto risco (custo esperado anual R\$ 10.000, fração 30%). A operadora não observa o tipo, mas pode oferecer um menu de contratos \(\{(P_L, C_L), (P_H, C_H)\}\), onde \(P\) é o prêmio anual e \(C\) é a cobertura (em fração do custo coberto, \(0 \leq C \leq 1\)). Assuma que a utilidade de cada tipo é \(U = C \cdot \text{custo esperado} - P\) (linear na cobertura).

**(a)** Qual é o prêmio atuarialmente justo para cada tipo se a operadora observasse o tipo?

**(b)** Se a operadora oferecer apenas um contrato com prêmio médio \(P_{\text{med}}\) e cobertura total (\(C = 1\)), que tipos aceitam? Calcule o lucro esperado por beneficiário.

**(c)** Projete um menu de contratos que separe os tipos: especifique \((P_L, C_L)\) e \((P_H, C_H)\) satisfazendo as restrições de incentivo (IC) e participação (IR) de cada tipo. (Dica: o tipo alto recebe contrato com cobertura total; o tipo baixo recebe contrato com cobertura reduzida.)

**(d)** A Resolução Normativa ANS 195/2009 limita a variação de prêmios por faixa etária (razão máxima de 6x entre a primeira e a última faixa). Analise como essa restrição afeta a capacidade da operadora de fazer screening eficiente.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-8)

---

<a id="ex-9d-9"></a>**Exercício 9d.9.** *(Difícil — Contrato ótimo com moral hazard e aversão ao risco)* Um principal contrata um agente avesso ao risco com função de utilidade \(u(w) = \sqrt{w}\) e custo de esforço \(c(e_H) = 1{,}5\), \(c(e_L) = 0\). Com esforço alto (\(e_H\)), o resultado é bom (R\$ 100) com prob. 0,8 e ruim (R\$ 0) com prob. 0,2. Com esforço baixo (\(e_L\)), as probabilidades são 0,4 e 0,6, respectivamente. A utilidade de reserva do agente é \(\bar{u} = 2\) (equivalente a salário certo de 4).

**(a)** Escreva as restrições IC (incentivo) e IR (participação) para que o contrato \((w_B, w_R)\) implemente esforço alto.

**(b)** Resolva o problema de minimização de custo para o principal. Encontre \((w_B^*, w_R^*)\).

**(c)** Compare com o primeiro melhor (informação simétrica): qual seria o salário ótimo se o esforço fosse observável? Calcule o custo de agência (diferença entre os custos esperados nos dois casos).

**(d)** Como a aversão ao risco do agente aumenta o custo de agência em comparação com o caso de agente neutro ao risco? Intuição econômica.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-9)

---

## 🏆 Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2017 — Questão 11"
    Com relação aos problemas de assimetria de informação, indique quais entre as afirmativas abaixo estão corretas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Seleção adversa diz respeito a uma ação não observável. |
    | 1    | Problemas morais dizem respeito a características não observáveis. |
    | 2    | Quando empresas de seguros reúnem informações sobre demandantes de seguros, diz-se que elas estão fazendo screening. |
    | 3    | Certificações de produtos são uma forma de reduzir o "problema dos limões" decorrente de seleção adversa. |
    | 4    | Seguros com cobertura universal obrigatória podem ser uma forma de prevenir seleção adversa. |

    ??? success "Gabarito"
        **Respostas: 00111**

        - **Item 0 — F:** Seleção adversa diz respeito a **características** (tipos) não observáveis, não a ações. Ações não observáveis configuram **risco moral** (moral hazard). A seleção adversa é pré-contratual (tipos ocultos); o risco moral é pós-contratual (ações ocultas).
        - **Item 1 — F:** "Problemas morais" (risco moral / *moral hazard*) dizem respeito a **ações** não observáveis, não a características. O item inverte as definições: quem se refere a características não observáveis é a **seleção adversa**.
        - **Item 2 — V:** *Screening* (triagem) é o mecanismo pelo qual a parte desinformada (seguradoras) coleta informações sobre a parte informada (segurados) para classificá-los por risco.
        - **Item 3 — V:** Certificações de produtos (como laudos de vistoria, selos de qualidade, garantias de fábrica) reduzem a assimetria de informação entre vendedores e compradores, atenuando o problema dos limões de Akerlof.
        - **Item 4 — V:** Se o seguro é **universal e obrigatório**, não há autosseleção: todos os tipos (alto e baixo risco) participam do pool. Isso elimina o mecanismo de seleção adversa. O SUS brasileiro é um exemplo de cobertura universal que evita a antisseleção.

        **Nota:** Esta questão também aparece no Capítulo 19 (Limões, Sinais e Contratos), onde é discutida no contexto mais amplo dos mecanismos de mercado para informação assimétrica.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Spence, Michael (1973). [Job Market Signaling](https://doi.org/10.2307/1882010). *Quarterly Journal of Economics*, 87(3), 355–374."
    **Contribuição:** Spence formalizou a ideia de que a educação pode funcionar como sinal de habilidade, mesmo sem aumentar a produtividade. O modelo introduziu os conceitos de equilíbrio separador, pooling e a condição de single-crossing.

    **Impacto:** O artigo fundamentou a teoria de sinalização, aplicada hoje a finanças (dividendos como sinal de qualidade), marketing (preço como sinal de qualidade) e regulação (certificações como sinal de competência).

??? pesquisa "Akerlof, George A. (1970). [The Market for 'Lemons'](https://doi.org/10.2307/1879431). *Quarterly Journal of Economics*, 84(3), 488–500."
    **Contribuição:** Akerlof mostrou que informação assimétrica sobre qualidade pode levar ao colapso de mercados — o problema dos "limões". Se vendedores sabem a qualidade e compradores não, o preço reflete a qualidade *média*, afastando vendedores de carros bons.

    **Relevância para o Brasil:** Mercados de carros usados, crédito (spread bancário elevado reflete seleção adversa) e planos de saúde (cobertura obrigatória como resposta ao problema de seleção). Cross-reference com Capítulo 19.

??? pesquisa "Adams, Brian W. (2025). *Game Theory for Applied Econometricians*. Caps. 12–13."
    **Escopo:** Parte IV cobre moral hazard (Cap. 12: corporações baleeiras como principal-agente) e seleção adversa (Cap. 13: seguros de saúde). Ambos com datasets e scripts R.

    **Relevância:** Os R Boxes deste módulo são inspirados nos scripts de Adams, demonstrando como estimar empiricamente o efeito de informação assimétrica em dados reais.

??? pesquisa "Rothschild, Michael, e Joseph Stiglitz (1976). [Equilibrium in Competitive Insurance Markets](https://doi.org/10.2307/1885326). *Quarterly Journal of Economics*, 90(4), 629–649."
    **Contribuição:** Rothschild e Stiglitz analisaram o equilíbrio em mercados de seguros competitivos com informação assimétrica. Mostraram que o equilíbrio — quando existe — é necessariamente separador: a seguradora oferece um menu de contratos que induz cada tipo a se autoidentificar via escolha de cobertura. Provaram que nenhum equilíbrio *pooling* estável existe em mercados competitivos de seguros, e que o equilíbrio separador pode não existir quando a proporção de tipos ruins é suficientemente grande.

    **Relevância para o Brasil:** O modelo Rothschild-Stiglitz é o fundamento teórico direto das regras de carência e coparticipação da ANS. Os menus de contratos que a ANS obriga as operadoras a oferecer (planos com diferentes coberturas e preços) são implementações práticas do mecanismo de screening de Rothschild-Stiglitz.

??? pesquisa "Holmström, Bengt (1979). Moral Hazard and Observability. *Bell Journal of Economics*, 10(1), 74–91."
    **Contribuição:** Holmström formalizou o problema do principal-agente com moral hazard e derivou o **Princípio da Informatividade**: qualquer sinal que contenha informação sobre o esforço do agente, mesmo que imperfeitamente, deve ser incluído no contrato ótimo. Isso fundamenta o uso de benchmarks de desempenho relativo em contratos de executivos (comparação com pares do setor) e explica por que contratos reais raramente dependem de um único indicador.

    **Relevância:** Holmström recebeu o Prêmio Nobel de 2016 (com Oliver Hart) por sua contribuição à teoria dos contratos. O princípio da informatividade é aplicado no Brasil em contratos de gestores públicos (remuneração vinculada a indicadores de desempenho setorial) e na regulação por incentivos da Aneel e Anatel.

---

## 📚 Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 12–13.
- Akerlof, George A. 1970. "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *Quarterly Journal of Economics* 84 (3): 488–500. [DOI](https://doi.org/10.2307/1879431)
- Becker, Gary S. 1964. [*Human Capital*](https://books.google.com/books?id=9t69iICmrZ0C). New York: Columbia University Press.
- Cho, In-Koo, e David M. Kreps. 1987. "Signaling Games and Stable Equilibria." *Quarterly Journal of Economics* 102 (2): 179–221. [DOI](https://doi.org/10.2307/1885060)
- Crawford, Vincent P., e Joel Sobel. 1982. "Strategic Information Transmission." *Econometrica* 50 (6): 1431–1451. [DOI](https://doi.org/10.2307/1913390)
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press. Cap. 4.
- Holmström, Bengt. 1979. "Moral Hazard and Observability." *Bell Journal of Economics* 10 (1): 74–91.
- Rothschild, Michael, e Joseph Stiglitz. 1976. "Equilibrium in Competitive Insurance Markets." *Quarterly Journal of Economics* 90 (4): 629–649. [DOI](https://doi.org/10.2307/1885326)
- Spence, Michael. 1973. "Job Market Signaling." *Quarterly Journal of Economics* 87 (3): 355–374. [DOI](https://doi.org/10.2307/1882010)
