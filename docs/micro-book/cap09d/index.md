# Capítulo 9d — O Diploma É Caro, Mas O Sinal É Grátis?

No módulo anterior, jogadores com informação privada agiam ao mesmo tempo — cada um no escuro sobre os demais. Agora, adicionamos sequencialidade: alguém age *primeiro*, e os outros *observam*. Essa combinação muda tudo, porque a ação do primeiro jogador *fala*. Quando um candidato a emprego exibe um MBA de escola prestigiosa, ele não está apenas consumindo educação — está *dizendo* algo ao empregador sobre sua qualidade. Quando uma empresa oferece garantia de 5 anos no produto, está *comunicando* que confia na própria qualidade. A ação se torna **sinal** — e o jogo vira uma conversa estratégica onde cada movimento é uma mensagem.

O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito** (PBE), que combina otimalidade sequencial (como no EPS) com consistência bayesiana das crenças (como no BNE). As aplicações centrais são **sinalização** (Spence, 1973), **moral hazard** e **seleção adversa** — os problemas clássicos de informação assimétrica que George Akerlof, Michael Spence e Joseph Stiglitz formalizaram ao longo das décadas de 1970 e 1980, trabalho que culminou no Prêmio Nobel de Economia de 2001.

A importância prática desse arcabouço dificilmente pode ser subestimada. Mercados de carros usados, planos de saúde, crédito bancário, relações de emprego e regulação pública todos exibem, em maior ou menor grau, problemas gerados pela assimetria informacional. A teoria desenvolvida neste capítulo oferece uma linguagem precisa para identificar esses problemas e avaliar mecanismos de mitigação. Ela também dialoga diretamente com o Capítulo 7 (risco e decisão em condições de incerteza) — pois o moral hazard é inseparável da aversão ao risco do agente — e com o Capítulo 8 (economia comportamental), cuja agenda em parte questiona até que ponto os agentes reais atualizam crenças de forma bayesiana e respondem racionalmente a incentivos contratuais.

Este módulo completa a taxonomia de Gibbons (1992, Cap. 4) e faz ponte com o Capítulo 19 (Limões, Sinais e Contratos), que aprofunda os modelos de seleção adversa e screening em mercados competitivos. Enquanto o presente capítulo desenvolve a teoria dos jogos que fundamenta esses fenômenos — PBE, sinalização, incentivos —, o Capítulo 19 os estuda na perspectiva de equilíbrio de mercado e de desenho de mecanismos. Os dois capítulos são complementares: o leitor que dominar a formalização de jogos aqui terá a base necessária para a análise de mecanismos de revelação e contratos ótimos lá. A conexão com o módulo 9c também é direta: naquele capítulo, estudamos leilões como jogos bayesianos simultâneos; aqui, veremos que os mesmos problemas de informação privada ganham uma dimensão estratégica adicional quando as ações são sequenciais e observáveis.

---

## 9d.1 Equilíbrio Bayesiano Perfeito (PBE)

Precisamos de um conceito de equilíbrio que faça duas coisas ao mesmo tempo: exigir que cada jogador aja racionalmente *em cada ponto do jogo* (herança do EPS, Seção 9b.1) e que as crenças sejam atualizadas de forma consistente quando nova informação chega (herança do BNE, Seção 9c.2). O **Equilíbrio Bayesiano Perfeito** é esse casamento: EPS + Bayes.

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

Aqui está a aplicação mais famosa — e mais provocativa — do PBE. A pergunta de Spence (1973): por que as pessoas fazem faculdade? Resposta óbvia: para aprender. Resposta de Spence: *talvez não*. Talvez o diploma seja apenas um **sinal** — uma forma custosa de dizer ao empregador "sou do tipo produtivo", mesmo que o conteúdo do curso seja irrelevante. O truque: ir à faculdade é mais *fácil* (menos custoso) para quem é produtivo. Logo, o diploma funciona como filtro.

Essa lógica se estende muito além da educação: garantia de 5 anos no carro usado (só quem confia oferece), dividendos altos (só firma saudável distribui caixa), e até o pavão com cauda absurdamente grande (só quem é geneticamente apto sobrevive com aquilo). O mecanismo é sempre o mesmo: uma ação custosa que o tipo ruim acha proibitiva demais para imitar.

Formalmente, jogos de sinalização são jogos sequenciais com informação incompleta nos quais a parte informada (o "remetente") age primeiro, escolhendo um sinal observável.

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

A condição de **single-crossing** da equação $\eqref{eq:9d.1}$ é o ingrediente-chave que torna a sinalização possível. Se os custos fossem iguais para ambos os tipos, nada impediria a imitação — e o sinal perderia conteúdo informacional. É a assimetria de custos que garante que, em equilíbrio separador, o nível de educação que o tipo alto aceita obter seja proibitivamente custoso para o tipo baixo.

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

Note que o equilíbrio separador não é único: qualquer \(e^* \in [1, 2]\) sustenta um equilíbrio separador, pois ambas as restrições de incentivo são satisfeitas. A multiplicidade de equilíbrios é uma característica geral dos jogos de sinalização — e motiva o uso de refinamentos como o **Critério de Dominância Intuitiva de Cho e Kreps (1987)**. Esse critério seleciona o equilíbrio separador de menor custo (\(e^* = 1\)) ao eliminar equilíbrios sustentados por crenças off-path implausíveis. O argumento é o seguinte: se o receptor observa um nível de educação \(e \in (1, 2)\), ele deveria atribuir probabilidade 1 ao tipo H — porque o tipo L jamais se beneficiaria de escolher esse nível, independentemente da crença do receptor, ao passo que o tipo H poderia se beneficiar se o receptor respondesse favoravelmente. O critério disciplina as crenças fora do caminho de equilíbrio e reduz a multiplicidade, tornando a previsão teórica mais precisa.

A intuição do Critério de Cho-Kreps é elegante: quando um desvio nunca seria racional para um tipo mas poderia ser racional para outro, o receptor deve atribuir o desvio ao tipo para o qual ele faz sentido. Em termos formais, seja \(D(\theta)\) o conjunto de respostas do receptor que tornam o desvio lucrativo para o tipo \(\theta\). Se \(D(\theta_L) = \varnothing\) e \(D(\theta_H) \neq \varnothing\), então o receptor deve colocar probabilidade zero no tipo L ao observar o desvio.

### Equilíbrio agregador (pooling): quando a separação falha

Nem todo jogo de sinalização produz separação. No equilíbrio agregador, ambos os tipos escolhem o mesmo nível de sinal, e o receptor não consegue distingui-los. Isso ocorre quando o intervalo de sinais que satisfazem as condições de incentivo dos dois tipos é vazio — ou seja, quando não existe um \(e^*\) suficientemente alto para deter a imitação do tipo baixo sem ser excessivamente custoso para o tipo alto.

Formalmente, no equilíbrio pooling em \(e_P\), ambos os tipos escolhem o mesmo sinal e o receptor paga o salário da produtividade média: \(w_P = p \cdot \theta_H + (1-p) \cdot \theta_L\), onde \(p\) é a probabilidade prior de tipo H. Para que o pooling seja sustentável, é necessário que nenhum tipo desvie para outro nível de sinal. Isso requer crenças off-path suficientemente pessimistas: se o receptor acredita que qualquer desvio de \(e_P\) provém do tipo L, o salário pós-desvio é \(\theta_L\), o que pode tornar o desvio não lucrativo para ambos os tipos.

No exemplo acima, se \(\theta_H = 1{,}2\) e \(\theta_L = 1\) (tipos muito próximos), a diferença de custo entre os tipos é pequena. As ICs se tornam incompatíveis num sentido prático: o nível de educação que deters o tipo L de imitar o tipo H exige um custo tão alto que o tipo H prefere não sinalizar. O resultado é um equilíbrio agregador em que ambos os tipos escolhem \(e = 0\) e recebem o salário da produtividade média — exatamente como no problema de informação oculta sem sinalização.

A comparação entre os dois tipos de equilíbrio revela um trade-off fundamental: o equilíbrio separador é informacionalmente eficiente (revela os tipos) mas alocativamente ineficiente (o custo da sinalização é puro desperdício); o equilíbrio pooling é informacionalmente ineficiente (não revela tipos) mas pode ser alocativamente menos custoso (evita o gasto com sinalização). Qual equilíbrio prevalece depende da magnitude da diferença de produtividade entre os tipos, do custo da sinalização e das crenças fora do caminho de equilíbrio. Quando o Critério de Dominância Intuitiva elimina o pooling, o equilíbrio separador de menor custo é a previsão teórica selecionada — mas isso não significa que o equilíbrio separador seja socialmente ótimo.

O modelo brasileiro oferece um exemplo instrutivo. O diploma universitário no Brasil tornou-se, nas últimas décadas, progressivamente mais difundido. Se no final dos anos 1980 apenas uma fração pequena dos trabalhadores tinha formação superior, hoje a proporção é consideravelmente maior. A teoria de Spence prevê que, com isso, o valor de sinalização do diploma genérico diminuiu: como mais pessoas o detêm, ele discrimina menos entre tipos. A resposta do mercado foi buscar sinais de maior resolução — pós-graduação, certificações técnicas, universidades de prestígio — num processo de corrida armamentista informacional que o modelo formaliza com precisão.

!!! tip "Sinalização vs. Capital Humano"
    Na realidade, a educação provavelmente combina sinalização e capital humano: parte do retorno é habilidades genuinamente adquiridas, e parte é sinalização. Separar empiricamente os dois canais é um dos desafios metodológicos centrais da economia da educação — tema que o Box Mundo 9d.1, a seguir, explora em profundidade.

!!! box-mundo "Box Mundo 9d.1 — Retornos à educação como sinalização: Caplan, inflação de diplomas e evidência internacional"

    **Contexto:** A questão central levantada pelo modelo de Spence — a educação aumenta a produtividade ou apenas sinaliza habilidade preexistente? — permanece um dos debates mais vivos da economia aplicada. Bryan Caplan, economista da George Mason University, levou o argumento da sinalização ao seu limite no livro *The Case Against Education* (2018), defendendo que a maior parte do retorno privado à educação (estimado em 80% por Caplan) provém de sinalização, não de capital humano genuíno. Se Caplan estiver correto, o investimento público massivo em educação superior seria largamente um desperdício social: uma corrida armamentista informacional em que cada indivíduo investe em credenciais para se diferenciar, mas o efeito agregado é nulo quando todos investem igualmente — exatamente o equilíbrio pooling ineficiente previsto pelo modelo de Spence quando a sinalização se generaliza.

    O fenômeno da *inflação de diplomas* (*credential inflation*) é global e particularmente agudo na Ásia Oriental. No Japão, a proporção de jovens com educação superior passou de 15% em 1970 para mais de 60% em 2020, mas os retornos salariais do diploma universitário genérico comprimiram-se significativamente — enquanto os retornos de universidades de elite (Todai, Kyoto, Waseda) permaneceram elevados, consistente com a teoria de sinalização em que o *ranking* da instituição funciona como sinal de resolução superior. Na Coreia do Sul, o fenômeno é ainda mais extremo: mais de 70% dos jovens adultos possuem diploma universitário (a maior taxa da OCDE), e o país gasta aproximadamente US$ 20 bilhões por ano em *hagwons* (academias privadas preparatórias), numa corrida armamentista educacional que reproduz, em escala nacional, a dinâmica do modelo de Spence com inflação de sinais. Nos Estados Unidos, a exigência de diploma de bacharelado para empregos que anteriormente não o requeriam — um fenômeno documentado como *degree inflation* por Burning Glass Technologies (2017) — reduziu o valor informacional do diploma genérico enquanto elevou os retornos relativos de credenciais especializadas (mestrado, certificações técnicas, bootcamps de programação).

    **Dados:** Caplan (2018) cita três tipos de evidência a favor da sinalização: (i) o *sheepskin effect* — saltos discretos de salário associados à conclusão do diploma, não ao acúmulo gradual de anos de estudo, inconsistente com o modelo de capital humano em que cada ano adicional deveria aumentar a produtividade marginalmente; (ii) a irrelevância do conteúdo curricular — trabalhadores raramente usam no emprego o que aprenderam na faculdade, sugerindo que o diploma atesta capacidade genérica, não habilidade específica; (iii) o efeito nulo sobre produtividade em estudos quasi-experimentais que exploram variação exógena no acesso à educação.

    Clark e Martorell (2014), usando dados do Texas, exploraram a descontinuidade no limiar de aprovação do exame de conclusão do ensino médio e encontraram retornos à conclusão do diploma de ~8%, atribuíveis inteiramente ao efeito sheepskin (sinalização), sem evidência de aumento de produtividade. Lange e Topel (2006) estimaram que entre 30% e 50% do retorno à educação nos EUA é atribuível a sinalização. Hanushek e Woessmann (2012), usando dados do PISA e PIAAC para 23 países, mostraram que habilidades cognitivas efetivamente mensuradas — não anos de escolaridade — explicam diferenças de renda entre países, sugerindo que o canal de capital humano opera via competências adquiridas, não via credenciais formais.

    No Brasil, Barbosa Filho e Pessôa (2008) estimaram retornos à educação de 10–15% por ano adicional de escolaridade, entre os mais altos do mundo — consistente tanto com capital humano (baixa oferta de trabalhadores qualificados eleva o prêmio) quanto com sinalização (em mercados com alta assimetria informacional, sinais formais são mais valiosos). A expansão do ensino superior brasileiro — de 3 milhões de matrículas em 2000 para mais de 9 milhões em 2023 — começou a comprimir os retornos do diploma genérico, enquanto os retornos de universidades federais de elite e de pós-graduação permaneceram elevados.

    **Análise:** O debate Caplan-Becker é, na essência, uma questão empírica sobre a decomposição do retorno à educação entre sinalização e capital humano — e a resposta depende do contexto. Em mercados com alta assimetria informacional (mercado de trabalho brasileiro, onde o empregador conhece pouco o candidato), a sinalização tende a ser mais importante. Em mercados com melhor informação (profissões com exames de certificação, como medicina e advocacia), o capital humano adquirido tem peso maior. A condição de single-crossing (equação $\eqref{eq:9d.1}$) é satisfeita em ambos os casos — o custo de obter o diploma é menor para quem tem mais habilidade —, mas a implicação de política difere radicalmente: se a educação é principalmente sinalização, subsidiar universidades é transferir renda para a classe média sem ganho social líquido; se é principalmente capital humano, o subsídio é investimento com retorno social positivo. A evidência empírica sugere que ambos os canais coexistem, com proporções que variam por nível educacional (sinalização mais forte no diploma de bacharelado genérico; capital humano mais forte em formação técnica e profissional), por país (sinalização mais forte onde o mercado de trabalho é mais opaco) e por período histórico (sinalização cresce à medida que a inflação de diplomas reduz o conteúdo informacional das credenciais).

    **Fonte:** Caplan, Bryan (2018). *The Case Against Education: Why the Education System Is a Waste of Time and Money*. Princeton University Press. Clark, Damon e Martorell, Paco (2014). "The Signaling Value of a High School Diploma." *Journal of Political Economy*, 122(2), 282–318. Hanushek, Eric A. e Woessmann, Ludger (2012). "Do Better Schools Lead to More Growth? Cognitive Skills, Economic Outcomes, and Causation." *Journal of Economic Growth*, 17(4), 267–321.

---

## 9d.3 Cheap Talk e Comunicação Estratégica

No modelo de Spence, o sinal é crível porque é custoso. Mas o que acontece quando a comunicação não envolve custo direto? Crawford e Sobel (1982) mostraram que, quando o sinal é sem custo (*cheap talk*), a quantidade de informação transmitida em equilíbrio depende do **alinhamento de interesses** entre remetente e receptor.

- Se os interesses são perfeitamente alinhados: revelação completa é possível.
- Se os interesses divergem: a comunicação é parcial — o remetente envia "intervalos" de informação (*partition equilibrium*).

Quanto maior o desalinhamento de interesses, mais grosseira é a partição e menos informação é transmitida — o receptor racionalmente desconta mensagens de um remetente com incentivo para exagerar.

**Aplicação:** Comunicação entre o Banco Central e o mercado (*forward guidance*). O BCB tem incentivo para comunicar claramente suas intenções de política monetária, mas o grau de credibilidade depende do alinhamento percebido entre os objetivos do BCB e do mercado.

---

## 9d.4 Moral Hazard (Risco Moral)

Mudança de cenário. Até aqui, o problema era de *tipo*: o agente sabe quem ele é, o receptor não. Agora o problema é de *ação*: o agente escolhe o que faz depois de assinar o contrato, e o principal não consegue ver. Você contrata um seguro de carro e passa a estacionar em lugar perigoso — porque, afinal, está segurado. A empresa contrata o gerente e não consegue verificar se ele está trabalhando duro ou navegando na internet. O governo empresta dinheiro ao banco e o banco assume riscos excessivos — sabendo que, se der errado, o governo socorre.

Esse é o **moral hazard** (risco moral): a ação oculta que muda de comportamento *porque* alguém está protegido. O desafio: como desenhar um contrato que faça o agente *querer* se esforçar, mesmo quando ninguém está olhando?

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

### Primeiro melhor vs. segundo melhor

A distinção entre primeiro melhor (*first-best*) e segundo melhor (*second-best*) é central na teoria de contratos e permeia toda a análise de moral hazard. No **primeiro melhor**, o esforço é observável e verificável: o principal pode escrever um contrato que especifica diretamente o nível de esforço desejado e paga um salário fixo condicionado à execução desse esforço. Como o agente é avesso ao risco, o contrato ótimo é um salário fixo \(w^{FB}\) que satisfaz exatamente a restrição de participação — sem variabilidade, sem risco para o agente, sem custo de incentivos. O agente é perfeitamente segurado.

No **segundo melhor**, o esforço não é observável. O principal só pode condicionar o pagamento ao resultado, que é um indicador ruidoso do esforço. O contrato ótimo deve satisfazer duas restrições simultaneamente:

\[
\text{IC:} \quad E[u(w(q)) \mid e_H] - c(e_H) \geq E[u(w(q)) \mid e_L] - c(e_L)
\label{eq:9d.2} \tag{9d.2}
\]

\[
\text{IR:} \quad E[u(w(q)) \mid e_H] - c(e_H) \geq \bar{u}
\label{eq:9d.3} \tag{9d.3}
\]

A IC (compatibilidade de incentivos, equação $\eqref{eq:9d.2}$) garante que o agente prefira esforço alto a esforço baixo. A IR (restrição de participação, equação $\eqref{eq:9d.3}$) garante que o agente prefira aceitar o contrato a sua alternativa externa. No ótimo do segundo melhor, ambas as restrições vinculam: a IC força variabilidade salarial (\(w_B > w_R\)), e a IR fixa o nível de utilidade esperada do agente. A diferença de custo esperado entre o segundo melhor e o primeiro melhor é o **custo de agência** — o preço que a sociedade paga pela informação assimétrica sobre o esforço.

O resultado fundamental de Holmström (1979) é que o contrato ótimo de segundo melhor segue o **Princípio da Informatividade**: a remuneração do agente deve depender de qualquer estatística do resultado que contenha informação sobre o esforço. Se o desempenho de outros agentes em circunstâncias semelhantes é observável, ele deve entrar no contrato — não porque o principal queira incentivar competição, mas porque a comparação permite filtrar o ruído do choque aleatório, melhorando a inferência sobre o esforço. Isso fundamenta o uso de benchmarks setoriais em contratos de executivos, avaliações relativas de desempenho entre professores e comparação entre hospitais na regulação de saúde.

### Multitarefa e os limites dos incentivos

O modelo básico assume que o agente tem uma única dimensão de esforço. Na prática, a maioria dos trabalhos envolve múltiplas tarefas — um professor ensina, pesquisa, orienta e faz extensão; um médico trata, previne e documenta; um gestor gera lucro, gerencia risco e investe em inovação. Holmström e Milgrom (1991) mostraram que, quando o esforço é multidimensional e algumas dimensões são mais facilmente mensuráveis que outras, incentivos fortes na dimensão mensurável podem distorcer o esforço *para longe* das dimensões não mensuráveis. Esse é o problema de **multitarefa**: um professor avaliado exclusivamente por notas de alunos em provas padronizadas pode *ensinar para a prova* (dimensão mensurável) às custas do desenvolvimento de pensamento crítico (dimensão não mensurável).

A implicação prática é que incentivos muito potentes podem ser piores do que incentivos moderados ou até do que salário fixo — quando o agente tem margem para realocar esforço entre tarefas. A regulação educacional brasileira enfrenta esse dilema diretamente: programas como o IDESP (São Paulo) e o SPAECE (Ceará) vinculam recursos e bônus ao desempenho em avaliações padronizadas, criando incentivos potencialmente distorcivos na dimensão do ensino que a prova não captura.

A conexão com o Capítulo 7 é direta: o moral hazard existe, na sua forma mais intratável, precisamente porque os agentes são avessos ao risco. Se o agente fosse neutro ao risco, o principal poderia transferir toda a renda residual para o agente ("vender a empresa"), tornando-o o reclamante residual completo — e eliminando o problema de incentivos sem custo de seguro. É a aversão ao risco que torna esse contrato inviável e força a solução de segunda ordem: uma participação parcial nos resultados que equilibra incentivos e proteção.

O Capítulo 8 (economia comportamental) acrescenta uma camada adicional: evidências experimentais de Kahneman e Tversky sugerem que agentes são mais sensíveis a perdas do que a ganhos de mesma magnitude (aversão à perda). Isso afeta o design de contratos: penalidades pecuniárias por baixo desempenho podem ter poder de incentivo desproporcional ao seu valor monetário, o que tem implicações para contratos de gestores e para políticas de bônus.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando alguém não arca com as consequências de suas ações, tende a agir de forma mais arriscada.

    **Pense assim:** Uma pessoa com seguro de saúde completo pode cuidar menos da saúde (alimentação, exercício, prevenção) do que alguém sem seguro. O seguro *causa* comportamento mais arriscado — não apenas o cobre.

    **No mundo corporativo:** Um CEO com salário fixo (sem bônus vinculado ao desempenho) tem menos incentivo para se esforçar. Contratos com stock options e bônus por performance são mecanismos para mitigar o moral hazard.

    **Cross-reference:** O Capítulo 19 aprofunda o desenho de contratos ótimos e mecanismos de screening.

---

## 9d.5 Seleção Adversa

Moral hazard é sobre o que o agente *faz* depois do contrato. Seleção adversa é sobre o que o agente *é* antes do contrato. A diferença: se o problema é que o motorista dirige mal *após* contratar o seguro, é moral hazard. Se o problema é que *quem procura seguro já é mau motorista*, é seleção adversa. Timing diferente, soluções diferentes. Confundir os dois é o erro mais clássico em provas de micro — e a distinção é sempre a mesma pergunta: ações ocultas (pós) ou tipos ocultos (pré)?

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

O mecanismo de desintegração do mercado (*market unraveling*) pode ser descrito em etapas formais. Considere um contínuo de qualidades \(q \sim U[0, 1]\), onde o vendedor conhece \(q\) e o comprador não. O valor do carro para o vendedor é \(v_S(q) = q\), e para o comprador é \(v_B(q) = \alpha q\) com \(\alpha > 1\) (o comprador valoriza mais). Se o comprador acredita que todos os tipos estão no mercado, o valor esperado é \(\alpha / 2\). Mas a esse preço, apenas vendedores com \(q \leq \alpha / 2\) aceitam vender. O comprador antecipa isso e revisa o valor esperado para \(\alpha \cdot E[q \mid q \leq \alpha / 2] = \alpha^2 / 4\). Vendedores com \(q > \alpha^2 / 4\) saem. O processo converge iterativamente: a cada rodada, o pior vendedor remanescente é o melhor da rodada anterior, e o preço que o comprador aceita pagar cai. Se \(\alpha < 2\), o mercado colapsa completamente — nenhuma transação ocorre. Quando \(\alpha \geq 2\) (ganho de troca suficientemente grande), o mercado sobrevive parcialmente, mas sempre com ineficiência: transações que beneficiariam ambas as partes não se realizam.

### Soluções para a seleção adversa

O mercado e o Estado desenvolveram respostas institucionais ao problema de Akerlof. Essas respostas podem ser classificadas conforme a parte que age para mitigar a assimetria informacional.

**Sinalização** (a parte informada age): o vendedor de um carro bom oferece garantia estendida, a empresa saudável distribui dividendos, o trabalhador qualificado investe em educação. A eficácia da sinalização depende da condição de single-crossing — o custo do sinal deve ser menor para o tipo bom.

**Screening** (a parte desinformada age): a seguradora oferece um menu de contratos com diferentes combinações de prêmio e franquia, desenhado para que cada tipo se auto-selecione revelando informação. O resultado fundamental de Rothschild e Stiglitz (1976) é que, em mercados competitivos, o equilíbrio — quando existe — é necessariamente separador: o tipo de baixo risco recebe cobertura incompleta (distorção downward) para impedir que o tipo de alto risco o imite. O tipo de alto risco recebe cobertura total ao prêmio atuarialmente justo. A distorção no contrato do tipo baixo é o preço da informação assimétrica.

**Certificação** (um terceiro age): agências de rating (Serasa, S&P, Fitch), laudos de vistoria (carros), selos de qualidade (Inmetro), e auditorias externas reduzem a assimetria ao produzir informação verificável sobre a qualidade do agente. O terceiro tem credibilidade porque sua receita depende da precisão — uma agência que sistematicamente dá ratings inflados perde reputação e clientes.

**Regulação** (o Estado age): seguros obrigatórios (como o extinto DPVAT), cobertura universal (SUS), e restrições sobre práticas de exclusão (como as regras da ANS) combatem a seleção adversa ao forçar todos os tipos a participar do pool. Quando o pool é obrigatório, não há autosseleção — o mecanismo de Akerlof é neutralizado. O custo é que os tipos de baixo risco subsidiam os de alto risco, o que é redistributivo (e pode ser socialmente desejável) mas gera uma ineficiência do lado da demanda.

!!! idea "Intuição Econômica"
    **O mercado dos limões (Akerlof, 1970):** Por que carros usados valem tão menos que carros novos, mesmo quando saem da concessionária com zero quilômetros?

    **A lógica:** Você compra um carro novo hoje. Amanhã, precisa vender. O comprador potencial sabe que carros usados são colocados à venda por dois motivos: o dono não gosta mais (nenhum problema) ou descobriu um defeito (problema!). Como o comprador não sabe qual é o caso, desconta o preço para se proteger do segundo cenário. Isso afasta os vendedores do primeiro tipo — que não conseguem preço justo — e reforça a suspeita do comprador. O resultado: mesmo carros perfeitamente bons valem menos no mercado de usados, simplesmente porque fazem parte de um pool onde "limões" existem.

    **A generalização:** O mesmo mecanismo opera em mercados de crédito (o tomador sabe mais sobre seu risco de inadimplência do que o banco), em seguros de saúde (o segurado sabe mais sobre sua saúde do que a seguradora) e em mercados de trabalho (o candidato sabe mais sobre sua produtividade do que o empregador). Em todos esses casos, a informação assimétrica faz com que o preço médio de equilíbrio seja "errado" para ambos os lados — caro demais para os tipos bons, barato demais para os ruins.

    **Por que isso importa para políticas públicas?** Quando a seleção adversa leva ao colapso de mercados com valor social positivo (como seguros de saúde para idosos ou crédito para pequenas empresas), há espaço para intervenção estatal que melhore o bem-estar de Pareto: seguro obrigatório, garantias públicas de crédito e regulação de screening.

### Desenho de mecanismos: o fio condutor

Sinalização, moral hazard e seleção adversa podem parecer problemas distintos, mas compartilham uma estrutura unificadora: em todos os casos, uma parte tem informação privada (sobre tipo ou sobre ação), e a eficiência depende de um **mecanismo** que induza a revelação ou o alinhamento de comportamento. O campo do *desenho de mecanismos* (*mechanism design*) — desenvolvido por Leonid Hurwicz, Eric Maskin e Roger Myerson (Nobel 2007) — formaliza essa ideia: dado um objetivo social (eficiência, maximização de receita, redistribuição), qual é o melhor conjunto de regras que pode ser implementado quando os agentes são estratégicos e informados? O **Princípio da Revelação** garante que, para qualquer mecanismo e equilíbrio, existe um mecanismo direto e equivalente em que os agentes reportam seus tipos verdadeiros. Esse resultado não resolve o problema — apenas mostra que podemos restringir a busca a mecanismos diretos e incentivo-compatíveis —, mas é a pedra angular da teoria moderna de contratos e leilões. O Capítulo 19 desenvolve essas ideias em maior profundidade; aqui, basta reconhecer que os contratos de seguro de Rothschild-Stiglitz, os sinais de Spence e os contratos de incentivo de Holmström são todos exemplos específicos de mecanismos desenhados para lidar com informação assimétrica.

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

!!! box-mundo "Box Mundo 9d.2 — Garantias, lemon laws e proteção ao consumidor: sinais contra limões"

    **Contexto:** O modelo de Akerlof prevê que mercados com informação assimétrica sobre qualidade podem colapsar — mas na prática, mercados de carros usados existem e movimentam trilhões de dólares globalmente. Uma das razões é que vendedores e legisladores desenvolveram mecanismos de sinalização e proteção que mitigam o problema dos limões: garantias oferecidas pelo vendedor e leis que protegem o comprador (*lemon laws*).

    **Garantias como sinalização.** Uma garantia estendida é um sinal crível de qualidade porque satisfaz a condição de single-crossing: o custo esperado de honrar a garantia é muito menor para o vendedor de um carro bom do que para o vendedor de um limão. Se o carro é bom, a probabilidade de acionamento é baixa e o custo esperado é pequeno; se é um limão, o acionamento é quase certo e o custo pode exceder o lucro da venda. Assim, apenas vendedores de carros bons oferecem garantias longas de forma sustentável — exatamente como no equilíbrio separador de Spence, onde o tipo bom investe em um sinal que o tipo ruim acha proibitivamente custoso.

    **Lemon laws nos EUA.** Todos os 50 estados americanos possuem alguma forma de *lemon law*, legislação que garante ao comprador de um veículo novo o direito de substituição ou reembolso caso o veículo apresente defeitos recorrentes dentro de um período especificado (tipicamente 1–2 anos ou 12.000–24.000 milhas). A Lei Magnuson-Moss (1975), federal, complementa as leis estaduais ao exigir que garantias sejam claramente redigidas e que fabricantes que ofereçam garantias cumpram obrigações mínimas. A FTC (Federal Trade Commission) estima que lemon laws cobrem aproximadamente 150.000 reclamações por ano nos EUA. O efeito econômico é duplo: (i) reduzem o custo do limão para o comprador, aumentando sua disposição a pagar e sustentando o mercado; (ii) criam incentivos para fabricantes investirem em qualidade, pois o custo de honrar lemon laws recai sobre quem produziu o defeito.

    **Proteção ao consumidor na UE.** A Diretiva 1999/44/CE (atualizada pela Diretiva 2019/771) garante uma garantia legal mínima de 2 anos para bens de consumo em todos os estados-membros. Diferentemente das lemon laws americanas (focadas em automóveis), a proteção europeia cobre qualquer bem de consumo. A inversão do ônus da prova durante os primeiros 12 meses (o vendedor deve provar que o defeito não existia na entrega) é um mecanismo de screening implícito: reduz o custo de reclamação para o consumidor de boa-fé e aumenta o custo para vendedores de produtos defeituosos.

    **No Brasil**, o Código de Defesa do Consumidor (1990) estabelece garantia legal de 30 dias para bens não duráveis e 90 dias para bens duráveis, complementada por garantias contratuais voluntárias dos fabricantes. No mercado automotivo, plataformas como iCarros e Webmotors passaram a oferecer laudos de vistoria veicular (cautelares) — um mecanismo de certificação por terceiros que reduz a assimetria informacional no mercado secundário. A Tabela FIPE funciona como um benchmark público de preços, facilitando a precificação mesmo sob informação imperfeita.

    **Dados:** O mercado global de carros usados movimentou aproximadamente US$ 1,5 trilhão em 2023 (Statista). Nos EUA, carros usados certificados (*certified pre-owned*, CPO) — que vêm com garantia estendida do fabricante — representam ~15% das vendas de usados e comandam um prêmio de preço de 5–10% sobre veículos não certificados, evidência direta do valor de mercado da sinalização via garantia.

    **Análise:** Lemon laws e garantias são soluções complementares ao problema de Akerlof. Garantias são sinais de mercado (parte informada age voluntariamente); lemon laws são regulação estatal (força todas as partes a internalizar o risco de limões). Juntas, elas impedem o colapso total do mercado previsto pelo modelo — mas não eliminam a ineficiência. Compradores ainda descontam preços de usados (o chamado *depreciation cliff* do primeiro ano), e mercados de carros usados em países com proteção ao consumidor fraca (como muitos países em desenvolvimento) sofrem de seleção adversa mais severa.

    **Fonte:** FTC, *Understanding Used Car Warranty Protection*; EU, Directive 2019/771; IBGE/DENATRAN, Frota de Veículos Automotores.

---

!!! box-mundo "Box Mundo 9d.3 — Remuneração de CEOs e o problema principal-agente: evidência internacional"

    **Contexto:** A remuneração de executivos de grandes corporações é um dos campos de aplicação mais visíveis e controversos da teoria do principal-agente. Os acionistas (principais) não podem observar diretamente o esforço e a qualidade das decisões dos CEOs (agentes); por isso, desenham contratos que vinculam a remuneração ao desempenho da empresa — stock options, bônus por lucro, ações restritas. A teoria de Holmström (1979) prevê que o contrato ótimo equilibra incentivos (alta sensibilidade da remuneração ao desempenho) e seguro (baixa variabilidade salarial), e que a parcela variável deve depender de indicadores informativos sobre o esforço do CEO.

    **Dados internacionais.** A razão entre a remuneração do CEO e a do trabalhador mediano (CEO pay ratio) varia dramaticamente entre países e ao longo do tempo:

    | País | CEO pay ratio (aprox., 2023) | Estrutura predominante |
    |:-----|:----------------------------|:-----------------------|
    | EUA | 344:1 | Stock options + ações restritas (~70% variável) |
    | Reino Unido | 120:1 | Bônus + ações (~55% variável) |
    | Alemanha | 65:1 | Salário fixo + bônus moderado (~40% variável) |
    | Japão | 50:1 | Salário fixo alto (~70% fixo) |
    | Brasil | 35–50:1 | Misto (salário + bônus; stock options em crescimento) |

    **Fonte:** Economic Policy Institute (EPI), 2023; Towers Watson Global CEO Pay Study; CVM (Brasil).

    Nos EUA, a razão CEO/trabalhador era de ~20:1 nos anos 1960, cresceu para ~60:1 nos anos 1990 e explodiu para mais de 300:1 após a difusão massiva de stock options nos anos 2000. A SEC (Securities and Exchange Commission) passou a exigir a divulgação do CEO pay ratio a partir de 2018 (Dodd-Frank Act, Seção 953b).

    **Análise pela teoria do principal-agente.** A remuneração variável elevada nos EUA é consistente com a teoria de Holmström: mercados de capitais líquidos e diversificados permitem que acionistas imponham risco elevado aos CEOs (que, por sua vez, exigem compensação pelo risco — o prêmio de risco é parte do custo de agência). No Japão, onde a cultura corporativa valoriza relações de longo prazo e a mobilidade entre empresas é menor, o salário fixo alto funciona como um contrato relacional (*implicit contract*): o CEO é incentivado pela perspectiva de manutenção do emprego e pela reputação dentro do keiretsu, não pela remuneração variável de curto prazo. A Alemanha, com seu sistema de codeterminação (*Mitbestimmung*, onde trabalhadores têm assento no conselho), impõe restrições institucionais que moderam a remuneração variável.

    O debate normativo é intenso. Bebchuk e Fried (2004), em *Pay Without Performance*, argumentam que a remuneração de CEOs nos EUA reflete não o contrato ótimo de Holmström, mas o poder de barganha do CEO sobre o conselho (*managerial power theory*): CEOs influenciam seus próprios contratos, capturando rendas que não correspondem ao esforço. A evidência empírica de Bertrand e Mullainathan (2001) mostra que CEOs são recompensados por aumentos de lucro que decorrem de fatores exógenos (como o preço do petróleo para empresas petrolíferas) — uma violação direta do Princípio da Informatividade de Holmström, que recomenda filtrar choques não informativos do contrato.

    No Brasil, a CVM (Comissão de Valores Mobiliários) regulamenta a divulgação da remuneração de administradores de empresas listadas (Instrução 480/2009), mas a transparência ainda é limitada comparada aos EUA. A cultura de remuneração variável em empresas brasileiras listadas na B3 cresceu significativamente nas últimas duas décadas, com adoção crescente de stock options e ações restritas — um movimento consistente com a profissionalização da governança corporativa e a influência do modelo anglo-saxão.

    **Fonte:** Bebchuk, Lucian A. e Fried, Jesse M. (2004). *Pay Without Performance: The Unfulfilled Promise of Executive Compensation*. Harvard University Press. Bertrand, Marianne e Mullainathan, Sendhil (2001). "Are CEOs Rewarded for Luck?" *Quarterly Journal of Economics*, 116(3), 901–932. Economic Policy Institute, "CEO Pay Has Skyrocketed 1,460% Since 1978" (2023).

---

??? code "R Interativo — Modelo de Spence: custo da sinalização e equilíbrio separador"
    Este box permite explorar o modelo de Spence variando os parâmetros de produtividade e custo da educação. Veja como o equilíbrio separador muda quando a diferença de custos entre tipos diminui.

    <iframe src="../graficos/cap09/webr-spence.html" title="Figura 9d.1 — Modelo de Spence" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.1 — Modelo de Spence: equilíbrio separador.** Altere as produtividades e custos para ver o nível de educação mínimo que separa os tipos.
    </div>

---

??? code "R Interativo — Seleção adversa: simulação de mercado de seguros (Adams, 2025, Cap. 13)"
    Este box simula um mercado de seguros de saúde com tipos heterogêneos (risco alto/baixo). Veja como a seleção adversa pode levar ao colapso do mercado quando o prêmio é calculado pela média.

    <iframe src="../graficos/cap09/webr-insurance.html" title="Figura 9d.2 — Mercado de seguros com seleção adversa" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9d.2 — Seleção adversa no mercado de seguros.** Varie a proporção de tipos de alto risco para ver quando o mercado colapsa. Baseado em Adams (2025, Cap. 13).
    </div>

---

Abrimos este módulo com uma observação simples: quando alguém age primeiro e os outros observam, a ação *fala*. O MBA de Spence, a garantia do carro usado, o contrato do seguro — em cada caso, a ação é mensagem, e o equilíbrio é uma conversa estratégica entre quem sabe e quem precisa adivinhar. Do PBE à seleção adversa, mapeamos as três faces da assimetria informacional: sinalização (o informado grita), moral hazard (o informado se esconde) e seleção adversa (o informado aparece demais).

*Informação assimétrica não é só teoria dos jogos — é o tecido do mercado. Os Capítulos 10–12 voltam à firma; o Capítulo 19 aprofunda contratos e mecanismos.*

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No modelo de sinalização de Spence, a educação funciona como sinal de habilidade porque:"
    - (a) A educação sempre aumenta a produtividade do trabalhador
    - (b) O custo de obter educação é menor para trabalhadores de alta habilidade (condição de single-crossing)
    - (c) Os empregadores observam diretamente a habilidade dos candidatos
    - (d) Todos os trabalhadores obtêm o mesmo nível de educação

    ??? success "Resposta"
        **(b)** A sinalização funciona porque o custo do sinal é negativamente correlacionado com o tipo: trabalhadores de alta habilidade obtêm educação a custo menor. No equilíbrio separador, apenas os de alta habilidade se educam, revelando seu tipo. A alternativa (a) é irrelevante — no modelo de Spence, a educação pode ter produtividade zero; (c) eliminaria a necessidade de sinal; (d) descreve o equilíbrio pooling.

??? question "2. Em um equilíbrio separador, diferentes tipos de agentes:"
    - (a) Escolhem a mesma ação, tornando impossível distingui-los
    - (b) Escolhem ações diferentes, permitindo que a parte desinformada infira o tipo
    - (c) São agrupados e recebem o mesmo contrato
    - (d) Revelam seu tipo verbalmente antes de agir

    ??? success "Resposta"
        **(b)** No equilíbrio separador, cada tipo escolhe uma ação distinta (ex.: nível de educação diferente), permitindo que o receptor do sinal identifique o tipo do emissor. A alternativa (a) descreve equilíbrio pooling; (c) também descreve pooling; (d) ignora que 'cheap talk' sem custo não é crível.

??? question "3. O Equilíbrio Bayesiano Perfeito (PBE) exige:"
    - (a) Apenas otimalidade das estratégias, sem restrições sobre crenças
    - (b) Que as crenças sejam consistentes com a regra de Bayes nos conjuntos de informação alcançados em equilíbrio, e que as estratégias sejam sequencialmente racionais
    - (c) Que os jogadores tenham informação completa sobre os payoffs
    - (d) Que o jogo seja de soma zero

    ??? success "Resposta"
        **(b)** O PBE combina otimalidade sequencial (cada jogador maximiza dado crenças e estratégias dos demais em cada conjunto de informação) com consistência bayesiana das crenças (atualizadas pela regra de Bayes onde possível). A alternativa (a) é insuficiente; (c) descreve jogos de informação completa; (d) é uma restrição desnecessária.

??? question "4. O risco moral (moral hazard) difere da seleção adversa porque:"
    - (a) No risco moral, a assimetria informacional é sobre ações (pós-contrato); na seleção adversa, sobre tipos (pré-contrato)
    - (b) O risco moral ocorre apenas em mercados de seguros
    - (c) A seleção adversa sempre leva ao colapso total do mercado
    - (d) No risco moral, o principal conhece perfeitamente o tipo do agente e suas ações

    ??? success "Resposta"
        **(a)** A seleção adversa é um problema de informação oculta (hidden information) sobre características do agente antes da contratação. O risco moral é um problema de ação oculta (hidden action) após a contratação — o agente pode reduzir esforço ou tomar mais risco sem ser observado. A alternativa (b) é restritiva; (c) não é necessário; (d) contradiz a definição.

??? question "5. O critério de Cho-Kreps (Critério de Dominância Intuitiva) refina o PBE ao:"
    - (a) Eliminar todos os equilíbrios separadores, mantendo apenas os pooling
    - (b) Restringir crenças fora do caminho de equilíbrio, eliminando equilíbrios sustentados por crenças implausíveis sobre desvios
    - (c) Exigir que todos os tipos escolham a mesma ação
    - (d) Permitir comunicação direta entre os jogadores

    ??? success "Resposta"
        **(b)** Cho-Kreps restringe crenças off-path: se um desvio observado só poderia beneficiar um tipo específico (e nunca outro), a crença deve atribuir probabilidade 1 a esse tipo. Isso elimina equilíbrios pooling 'ruins' e seleciona tipicamente o equilíbrio separador de menor custo. A alternativa (a) é o oposto do efeito usual; (c) descreve pooling; (d) não faz parte do conceito.

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação incompleta combinam ação sequencial com assimetria informacional. O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito (PBE)**, que exige otimalidade sequencial das estratégias e consistência bayesiana das crenças em cada conjunto de informação. O Critério de Dominância Intuitiva de Cho e Kreps (1987) refina o PBE eliminando equilíbrios sustentados por crenças off-path implausíveis.
- No **modelo de sinalização de Spence** (Nobel 2001), a educação funciona como sinal de habilidade mesmo sem aumentar a produtividade: a condição de single-crossing (custo menor para tipos melhores) permite que o equilíbrio separador revele o tipo do trabalhador. O mesmo mecanismo explica garantias no mercado de carros usados, dividendos em finanças corporativas e o valor do ENEM como sinal de aptidão. O equilíbrio separador tipicamente não é único; refinamentos como Cho-Kreps selecionam o de menor custo.
- Existem três tipos de equilíbrio em jogos de sinalização: **separador** (tipos revelados), **agregador/pooling** (nenhuma informação revelada) e **semi-separador** (revelação parcial). O Critério de Dominância Intuitiva tende a selecionar equilíbrios separadores. O trade-off fundamental é entre eficiência informacional (separador) e eficiência alocativa (pooling evita o custo de sinalização).
- **Cheap talk** (comunicação sem custo) transmite informação apenas quando os interesses de remetente e receptor estão suficientemente alinhados (Crawford-Sobel, 1982). A autonomia institucional do BCB é um mecanismo para aumentar a credibilidade do forward guidance.
- O **moral hazard** (risco moral) surge quando o agente toma ações não observáveis pelo principal; o contrato ótimo equilibra incentivos ao esforço com seguro contra risco. **Moral hazard não é fraude**: é desalinhamento de incentivos, não intenção de enganar. A aversão ao risco do agente (Capítulo 7) é o que torna o problema intratável. A distinção entre **primeiro melhor** (esforço observável → salário fixo) e **segundo melhor** (esforço não observável → contrato contingente) é central: a diferença de custo é o **custo de agência**.
- O **Princípio da Informatividade** (Holmström, 1979) afirma que qualquer variável correlacionada com o esforço do agente deve ser incluída no contrato ótimo. O problema de **multitarefa** (Holmström e Milgrom, 1991) mostra que incentivos fortes em uma dimensão podem distorcer o esforço para longe de dimensões não mensuráveis.
- A **seleção adversa** (Nobel 2001 — Akerlof) ocorre quando informação privada pré-contratual atrai desproporcionalmente os tipos "ruins", podendo destruir mercados inteiros. O modelo de Rothschild e Stiglitz (1976) mostra que o equilíbrio em mercados de seguros competitivos é separador, com o tipo baixo risco recebendo cobertura incompleta. Mecanismos de mitigação incluem sinalização, screening, certificação e regulação obrigatória — como as regras da ANS para planos de saúde individuais no Brasil. Garantias e *lemon laws* são respostas institucionais que reduzem a assimetria informacional e sustentam mercados que, sem elas, colapsariam.
- O **desenho de mecanismos** (Hurwicz, Maskin, Myerson — Nobel 2007) unifica os problemas de sinalização, moral hazard e seleção adversa sob um framework comum: dado que agentes são estratégicos e informados, qual é o melhor conjunto de regras? O Princípio da Revelação garante que a busca pode ser restrita a mecanismos diretos e incentivo-compatíveis.

## 🔑 Conceitos-Chave

<a id="tabela-9d-2"></a>

| Conceito | Definição |
|----------|-----------|
| Equilíbrio Bayesiano Perfeito (PBE) | Combinação de estratégias e crenças satisfazendo otimalidade sequencial e consistência bayesiana em cada conjunto de informação. |
| Jogo de sinalização | Jogo sequencial em que a parte informada (remetente) escolhe um sinal observável antes que a parte desinformada (receptor) tome sua decisão. |
| Equilíbrio separador | Equilíbrio em que tipos diferentes escolhem sinais diferentes, revelando perfeitamente a informação privada. |
| Equilíbrio agregador (pooling) | Equilíbrio em que todos os tipos escolhem o mesmo sinal, impedindo o receptor de aprender sobre o tipo. |
| Condição de single-crossing | O custo marginal do sinal é menor para os tipos de alta qualidade, garantindo que a imitação não seja lucrativa. |
| Critério de Cho-Kreps | Refinamento que elimina equilíbrios sustentados por crenças off-path implausíveis; seleciona o equilíbrio separador de menor custo. |
| Cheap talk | Comunicação sem custo direto; a quantidade de informação transmitida depende do alinhamento de interesses entre remetente e receptor. |
| Moral hazard (risco moral) | Problema de incentivos em que o agente toma ações não observáveis pelo principal, exigindo contratos que vinculem pagamento a resultados. |
| Primeiro melhor vs. segundo melhor | Primeiro melhor: esforço observável, salário fixo ótimo. Segundo melhor: esforço não observável, contrato contingente com custo de agência positivo. |
| Princípio da Informatividade | Qualquer variável correlacionada com o esforço do agente deve ser incluída no contrato ótimo (Holmström, 1979). |
| Multitarefa | Quando o agente aloca esforço entre múltiplas dimensões, incentivos fortes em uma podem distorcer o esforço para longe das demais (Holmström-Milgrom, 1991). |
| Seleção adversa | Situação pré-contratual em que informação privada sobre qualidade leva os piores tipos a se auto-selecionarem para a transação. |
| Market unraveling | Processo iterativo de deterioração do pool de vendedores/segurados que pode levar ao colapso completo do mercado. |
| Screening | Mecanismo pelo qual a parte desinformada oferece um menu de contratos desenhado para que cada tipo se auto-selecione revelando informação. |
| Desenho de mecanismos | Campo que estuda as regras ótimas para induzir revelação de informação ou alinhamento de comportamento quando agentes são estratégicos. |
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

??? exercicio-resolvido "Exercício Resolvido 9d.3 — Seleção adversa e equilíbrio de Akerlof com tipos contínuos"
    **Enunciado:** No mercado de carros usados, a qualidade \(q\) é distribuída uniformemente em \([0, 10]\). O valor do carro para o vendedor é \(v_S = q\), e para o comprador é \(v_B = 1{,}5q\). O vendedor conhece \(q\); o comprador não. Apenas carros cujo preço de mercado \(P\) é pelo menos igual ao valor de reserva do vendedor (\(v_S = q\)) são colocados à venda. (a) Se o comprador acredita que todos os carros estão à venda, qual é o preço máximo que aceita pagar? (b) Dado esse preço, quais carros são realmente oferecidos? O mercado funciona? (c) Encontre o equilíbrio. (d) Que valor mínimo de \(\alpha\) (onde \(v_B = \alpha q\)) sustenta um mercado com transações?

    **Resolução:**

    **(a)** Se todos os carros estão à venda, \(q \sim U[0, 10]\) e o valor esperado para o comprador é:

    \[
    E[v_B] = 1{,}5 \cdot E[q] = 1{,}5 \times 5 = 7{,}5
    \]

    O comprador aceita pagar até \(P = 7{,}5\).

    **(b)** A \(P = 7{,}5\), vendem-se apenas carros com \(q \leq 7{,}5\). A qualidade média dos carros à venda é:

    \[
    E[q \mid q \leq 7{,}5] = 7{,}5 / 2 = 3{,}75
    \]

    Valor esperado do comprador dado o pool efetivo: \(1{,}5 \times 3{,}75 = 5{,}625\). Mas o comprador racional antecipa que o pool é \([0, 7{,}5]\) — logo, revisa \(P\) para \(5{,}625\). A esse novo preço, só vendem-se carros com \(q \leq 5{,}625\), e o valor esperado cai para \(1{,}5 \times 5{,}625/2 = 4{,}22\). O processo iterativo converge a zero: o mercado colapsa.

    **(c)** Formalmente, seja \(\bar{q}_n\) o limiar de qualidade na rodada \(n\). Temos \(\bar{q}_0 = 10\) e:

    \[
    \bar{q}_{n+1} = 1{,}5 \times \bar{q}_n / 2 = 0{,}75 \bar{q}_n
    \]

    Como \(0{,}75 < 1\), a sequência converge a \(\bar{q}^* = 0\). O único equilíbrio é o colapso total: nenhum carro é vendido. Isso ocorre apesar de existirem ganhos de troca em todas as transações (\(v_B = 1{,}5q > q = v_S\) para todo \(q > 0\)).

    **(d)** Para \(v_B = \alpha q\), a recursão é \(\bar{q}_{n+1} = (\alpha/2) \bar{q}_n\). O mercado não colapsa se e somente se \(\alpha / 2 \geq 1\), ou seja, \(\alpha \geq 2\). Com \(\alpha = 2\), o comprador valoriza o carro duas vezes mais que o vendedor, e o preço de equilíbrio sustenta todo o mercado (\(\bar{q}^* = 10\)). Com \(\alpha < 2\), o mercado colapsa integralmente.

    **Interpretação econômica:** O resultado \(\alpha \geq 2\) é surpreendentemente restritivo — exige que o comprador valorize o bem pelo menos o dobro do vendedor para que a seleção adversa não destrua o mercado. Na prática, mercados sobrevivem porque mecanismos como garantias, vistorias e lemon laws reduzem a assimetria informacional, efetivamente aumentando o "\(\alpha\) efetivo" ao diminuir o risco percebido pelo comprador. O modelo ilustra por que a seleção adversa é mais severa em mercados onde esses mecanismos são fracos — como mercados informais de veículos em economias em desenvolvimento.

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

<a id="ex-9d-10"></a>**Exercício 9d.10.** *(Médio — Sinalização com custo quadrático e três tipos)* Considere um modelo de Spence com **três** tipos de trabalhadores: \(\theta_H = 6\), \(\theta_M = 3\) e \(\theta_L = 1\), com proporções iguais (\(1/3\) cada). O custo da educação é \(c(e, \theta) = e^2 / (2\theta)\). Firmas competitivas pagam salário igual à produtividade esperada.

**(a)** Encontre o equilíbrio separador completo de menor custo, em que cada tipo escolhe um nível de educação diferente e recebe salário igual à sua produtividade. Especifique os limiares \(e_M^*\) e \(e_H^*\) (assuma \(e_L = 0\)).

**(b)** Calcule o payoff de cada tipo no equilíbrio separador.

**(c)** Considere agora um equilíbrio semi-separador em que os tipos M e L fazem *pooling* em \(e = 0\) (recebendo salário médio \((3 + 1)/2 = 2\)) e o tipo H se separa com \(e_H = e^{**}\). Encontre o menor \(e^{**}\) que sustenta esse equilíbrio. Compare o payoff do tipo M neste equilíbrio com o do equilíbrio separador completo.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-10)

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

??? question "ANPEC — Sinalização, moral hazard e contratos (questão adaptada)"
    Sobre sinalização, moral hazard e desenho de contratos em mercados com informação assimétrica, julgue os itens:

    | Item | Afirmação |
    |------|-----------|
    | 0    | No modelo de Spence, se o custo de obter educação fosse idêntico para trabalhadores de alta e baixa produtividade, o equilíbrio separador ainda seria sustentável, pois bastaria que o tipo alto investisse mais. |
    | 1    | O problema do moral hazard surge porque o agente toma ações não observáveis pelo principal *após* a celebração do contrato; se o esforço fosse observável e verificável, o primeiro melhor seria alcançável com salário fixo. |
    | 2    | No modelo de Rothschild-Stiglitz, o equilíbrio de mercado competitivo com informação assimétrica é sempre do tipo *pooling*, em que ambos os tipos recebem o mesmo contrato. |
    | 3    | O Princípio da Informatividade de Holmström (1979) implica que o contrato ótimo de incentivos deve incluir qualquer variável correlacionada com o esforço do agente, mesmo que essa variável seja um indicador imperfeito. |
    | 4    | No equilíbrio separador do modelo de sinalização, o custo social da sinalização é zero, pois a informação é revelada e os salários correspondem às produtividades verdadeiras. |

    ??? success "Gabarito"
        **Respostas: 01010**

        - **Item 0 — F:** A condição de single-crossing (custo diferencial entre tipos) é essencial para a sustentabilidade do equilíbrio separador. Se o custo da educação fosse idêntico para ambos os tipos, o tipo baixo poderia imitar qualquer nível de educação escolhido pelo tipo alto sem desvantagem, destruindo a separação. A sinalização funciona precisamente porque "fingir" é mais caro para o tipo ruim.
        - **Item 1 — V:** O moral hazard é um problema de ação oculta pós-contratual. Se o esforço fosse observável e verificável por um tribunal, o principal poderia escrever um contrato condicionado diretamente ao esforço, pagando um salário fixo que satisfaz a restrição de participação — sem necessidade de vincular pagamento a resultados e sem expor o agente avesso ao risco à variabilidade salarial. Esse é o primeiro melhor.
        - **Item 2 — F:** O resultado central de Rothschild e Stiglitz (1976) é exatamente o oposto: o equilíbrio, quando existe, é necessariamente **separador**. Nenhum equilíbrio *pooling* estável existe em mercados competitivos de seguros com informação assimétrica, porque uma seguradora entrante sempre poderia oferecer um contrato que atraia apenas os tipos de baixo risco, quebrando o pool.
        - **Item 3 — V:** Esse é o conteúdo exato do Princípio da Informatividade. Qualquer estatística que seja informativa sobre o esforço do agente — mesmo ruidosa — deve ser incluída no contrato, pois melhora a inferência e reduz o custo de agência. Isso fundamenta o uso de benchmarks setoriais e desempenho relativo em contratos de executivos.
        - **Item 4 — F:** No equilíbrio separador, a informação é revelada e os salários correspondem às produtividades, mas o custo social da sinalização é **positivo**, não zero. O tipo alto investe em educação que, no modelo puro de Spence, não aumenta a produtividade — é puro desperdício social. O custo \(c(e^*, \theta_H)\) é o preço da credibilidade informacional.

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
- Holmström, Bengt, e Paul Milgrom. 1991. "Multitask Principal-Agent Analyses: Incentive Contracts, Asset Ownership, and Job Design." *Journal of Law, Economics, & Organization* 7: 24–52.
- Rothschild, Michael, e Joseph Stiglitz. 1976. "Equilibrium in Competitive Insurance Markets." *Quarterly Journal of Economics* 90 (4): 629–649. [DOI](https://doi.org/10.2307/1885326)
- Spence, Michael. 1973. "Job Market Signaling." *Quarterly Journal of Economics* 87 (3): 355–374. [DOI](https://doi.org/10.2307/1882010)
