# O MBA Não Ensina Nada — Mas Sinaliza Tudo: O Modelo de Spence

## 9d.2 O MBA Não Ensina Nada — Mas Sinaliza Tudo: O Modelo de Spence

!!! tip "Onde estou no livro?"
    Este capítulo desenvolve a **teoria dos jogos** por trás da sinalização: derivação formal do PBE separador e agregador, *single-crossing condition*, refinamento de Cho-Kreps. Para **aplicações a mercados de trabalho, educação e políticas públicas**, incluindo dados da PNAD e do Enem/Sisu, veja o [Capítulo 19 — Sinalização e Screening](../cap19/sinalizacao-screening.md).

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
    - *Dividendos elevados:* uma firma com fluxo de caixa fraco não poderia distribuí-los de forma sustentável.
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

<iframe src="/micro-book/graficos/cap09d/sinalizacao-spence.html" title="Figura 9d.3 — Sinalização de Spence: equilíbrio separador e agregador" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9d.3 — Sinalização de Spence.** Ajuste as produtividades \(\theta_H\) e \(\theta_L\) e a prior \(p\) para ver como a região de equilíbrios separadores se expande ou contrai. Quando os tipos são próximos, a separação exige sinalização cara — e o equilíbrio pooling pode dominar.
</div>

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

No exemplo acima, se \(\theta_H = 1{,}2\) e \(\theta_L = 1\) (tipos muito próximos), a diferença de custo entre os tipos é pequena. As ICs se tornam incompatíveis num sentido prático: o nível de educação que dissuadiria o tipo L de imitar o tipo H exige um custo tão alto que o tipo H prefere não sinalizar. O resultado é um equilíbrio agregador em que ambos os tipos escolhem \(e = 0\) e recebem o salário da produtividade média — exatamente como no problema de informação oculta sem sinalização.

A comparação entre os dois tipos de equilíbrio revela um trade-off fundamental: o equilíbrio separador é informacionalmente eficiente (revela os tipos) mas alocativamente ineficiente (o custo da sinalização é puro desperdício); o equilíbrio pooling é informacionalmente ineficiente (não revela tipos) mas pode ser alocativamente menos custoso (evita o gasto com sinalização). Qual equilíbrio prevalece depende da magnitude da diferença de produtividade entre os tipos, do custo da sinalização e das crenças fora do caminho de equilíbrio. Quando o Critério de Dominância Intuitiva elimina o pooling, o equilíbrio separador de menor custo é a previsão teórica selecionada — mas isso não significa que o equilíbrio separador seja socialmente ótimo.

O modelo brasileiro oferece um exemplo instrutivo. O diploma universitário no Brasil tornou-se, nas últimas décadas, progressivamente mais difundido. Se no final dos anos 1980 apenas uma fração pequena dos trabalhadores tinha formação superior, hoje a proporção é consideravelmente maior. A teoria de Spence prevê que, com isso, o valor de sinalização do diploma genérico diminuiu: como mais pessoas o detêm, ele discrimina menos entre tipos. A resposta do mercado foi buscar sinais de maior resolução — pós-graduação, certificações técnicas, universidades de prestígio — num processo de corrida armamentista informacional que o modelo formaliza com precisão.

!!! box-brasil "Brasil na Prática — O diploma universitário no Brasil como sinal: dados da PNAD"

    **Contexto.** O Brasil tem um dos maiores prêmios salariais para educação superior do mundo: em 2023, trabalhadores com diploma de graduação ganhavam em média 2,5× mais que trabalhadores com ensino médio completo — um prêmio de ~150% (PNAD Contínua/IBGE, 2023). Nos EUA, o prêmio equivalente é ~65%; na OCDE, ~45%.

    **Sinalização ou capital humano?** O prêmio elevado é consistente com *ambas* as teorias. Se sinalização: alta assimetria de informação no mercado de trabalho brasileiro (poucas referências profissionais, baixa qualidade de informação sobre candidatos) torna o diploma um sinal valioso. Se capital humano: a escassez de trabalhadores qualificados (apenas ~21% dos adultos têm diploma superior, vs. ~50% na OCDE) eleva o retorno marginal da educação.

    **Evidência discriminante.** A expansão das universidades privadas pós-2005 (FIES/PROUNI) aumentou o número de graduados de ~3 milhões para ~9 milhões de matriculados (2023). Se o diploma fosse *apenas* sinal, o prêmio deveria ter caído proporcionalmente (inflação de diplomas). A queda foi modesta (~10–15 p.p.), sugerindo que parte significativa do retorno é capital humano genuíno — mas a compressão nos retornos de diplomas de instituições de menor prestígio é consistente com a teoria de sinalização.

    **Fonte:** IBGE, PNAD Contínua 2023; Barbosa Filho e Pessôa (2008), "Retorno da educação no Brasil", *Pesquisa e Planejamento Econômico*, 38(1), 97–125.

!!! box-brasil "Brasil na Prática — Enem/Sisu como mecanismo de screening"

    **Contexto.** O Sistema de Seleção Unificada (Sisu), criado em 2010, usa a nota do Enem como critério de entrada em universidades federais. O sistema é um mecanismo de **screening** (Capítulo 19): a universidade (parte desinformada) usa a nota do Enem como filtro para selecionar alunos de maior habilidade (parte informada).

    **Conexão com a teoria.** No modelo de Rothschild-Stiglitz, o principal (universidade) oferece um "menu de contratos" (cursos com notas de corte diferentes) e o agente (aluno) se autoseleciona. Cursos mais concorridos (Medicina, Engenharia em federais de elite) funcionam como contratos com "prêmio alto e exigência alta" — atraindo alunos de tipo alto. Cursos com nota de corte baixa funcionam como contratos com "prêmio modesto" — atraindo tipos menos competitivos. A condição de single-crossing é satisfeita: alunos mais habilidosos têm custo menor de obter nota alta no Enem.

    **Dados.** Em 2024, a nota de corte para Medicina na USP/Sisu foi ~820/1000; para Pedagogia na mesma universidade, ~620. A diferença de 200 pontos funciona como a "educação custosa" do modelo de Spence: só quem é genuinamente preparado consegue ultrapassar o limiar. O Sisu resolveu um problema de coordenação do vestibular tradicional (alunos tinham que "apostar" em uma única universidade), mas criou novos problemas — como a migração de alunos de alta nota para vagas em universidades distantes, gerando evasão.

    **Fonte:** MEC/INEP, *Relatório do Sisu*, 2024.

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
