# Capítulo 8 — Nem Tão Racionais Assim

Nos capítulos anteriores, construímos a teoria da escolha do consumidor sobre dois pilares: preferências racionais (completas e transitivas) e maximização da utilidade esperada sob incerteza. Esses modelos são elegantes, tratáveis e geram previsões poderosas. Mas quão fiéis são ao comportamento real dos seres humanos?

A partir da década de 1970, uma série de experimentos conduzidos por psicólogos e economistas revelou **violações sistemáticas** dos axiomas de racionalidade. Não se trata de erros aleatórios — os desvios seguem padrões previsíveis, enraizados na arquitetura cognitiva humana. Daniel Kahneman e Amos Tversky foram os pioneiros desse programa de pesquisa, que culminou na **Teoria do Prospecto** (Kahneman e Tversky 1979) e rendeu a Kahneman o Prêmio Nobel de Economia em 2002.

Este capítulo apresenta seis pilares da **economia comportamental**:

1. As **heurísticas e vieses cognitivos** que distorcem nossos julgamentos — e a arquitetura dual (Sistema 1 e Sistema 2) que os produz.
2. A **Teoria do Prospecto**, que substitui a utilidade esperada por uma descrição mais realista das decisões sob risco, incluindo a evolução da PT original à **PT Cumulativa** e o papel da **contabilidade mental**.
3. A **aversão à ambiguidade** e o Paradoxo de Ellsberg, que desafiam a utilidade esperada subjetiva.
4. As **preferências sociais** — aversão à inequidade, reciprocidade e cooperação — formalizadas pelo modelo de **Fehr-Schmidt**.
5. O **desconto hiperbólico**, que explica por que sistematicamente priorizamos o presente em detrimento do futuro.
6. Os ***nudges*** — intervenções que aproveitam esses vieses para melhorar as decisões sem restringir a liberdade de escolha.

**Conexão com o restante do livro.** Este capítulo se situa em uma encruzilhada. Do lado do passado, dialoga diretamente com dois conjuntos de resultados já estabelecidos: os axiomas de racionalidade do Capítulo 3 (completude, transitividade, continuidade e, especialmente, independência) e a teoria da utilidade esperada de Von Neumann–Morgenstern do Capítulo 7 (o axioma da independência e a representação linear das probabilidades). A economia comportamental não descarta esses modelos — ela os usa como referência precisa para identificar *onde* e *por que* os agentes se afastam das previsões canônicas. Do lado do futuro, os conceitos deste capítulo são insumos diretos para tópicos avançados: no Capítulo 14, sobre teoria dos jogos, as preferências sociais (Seção 8.4) modificam os equilíbrios previstos em jogos de barganha e de cooperação. Em teoria de mecanismos e desenho de contratos — temas que surgem no Capítulo 15 e além —, a contabilidade mental, o desconto quasi-hiperbólico e a aversão à perda determinam que tipos de incentivos funcionam na prática. Um governo que projeta um programa de previdência complementar ou um regulador que define o formato de um rótulo nutricional precisa incorporar as regularidades documentadas aqui; caso contrário, o mecanismo pode funcionar elegantemente no papel e falhar com agentes reais.

A abordagem deste capítulo é deliberadamente cumulativa: começamos pelos fundamentos psicológicos das heurísticas (Seção 8.1), passamos para o modelo formal mais influente de decisão sob risco (Teoria do Prospecto, Seção 8.2), estendemos a análise para situações com probabilidades desconhecidas (Seção 8.3) e para contextos de interação (preferências sociais, Seção 8.4), examinamos o eixo temporal (desconto hiperbólico, Seção 8.5) e concluímos com as implicações de política pública (nudges, Seção 8.6). A cada passo, privilegiamos a conexão entre o rigor formal e as evidências empíricas — porque a economia comportamental é, acima de tudo, uma ciência empírica.

!!! warning "Viés não é irracionalidade"
    A economia comportamental **não** afirma que os agentes são irracionais. Ela identifica **desvios sistemáticos** em relação ao modelo de racionalidade perfeita e propõe modelos alternativos que descrevem melhor o comportamento observado. Como observam Wilkinson e Klaes (2012, p. 17), os vieses cognitivos muitas vezes são subprodutos de heurísticas que funcionam bem na maioria das situações cotidianas — são atalhos adaptativos, não falhas de projeto.

---

## 8.1 Heurísticas e Vieses Cognitivos

Antes de examinar modelos alternativos de decisão, é preciso entender *por que* os agentes se desviam das previsões da teoria neoclássica. A resposta começa pela forma como o cérebro humano processa informações — não como uma calculadora bayesiana perfeita, mas como um sistema adaptativo que economiza recursos cognitivos por meio de atalhos mentais. Esses atalhos funcionam bem na maioria das vezes, mas em contextos específicos produzem erros previsíveis que a teoria econômica não pode ignorar.

O cérebro humano processa informações usando **heurísticas** — regras simplificadas que permitem tomar decisões rápidas com informação limitada. Na maioria das vezes, essas regras produzem resultados satisfatórios. Porém, em contextos específicos, elas geram **vieses** — desvios previsíveis em relação ao julgamento estatisticamente correto.

O programa de pesquisa sobre heurísticas e vieses não surgiu do nada. Ele foi motivado por uma insatisfação profunda com o modelo do agente perfeitamente racional — o chamado *Homo economicus* — que dominava a teoria econômica no pós-guerra. Na psicologia, Herbert Simon havia cunhado o conceito de **racionalidade limitada** (*bounded rationality*) ainda nos anos 1950: os agentes não maximizam de forma global e irrestrita, mas se satisfazem com soluções "suficientemente boas" dada sua capacidade cognitiva finita. O trabalho de Tversky e Kahneman foi um passo adiante: identificou os mecanismos específicos pelos quais essa limitação se manifesta, transformando a racionalidade limitada de um princípio geral em um conjunto preciso de previsões testáveis.

!!! definition "Heurística"
    Uma **heurística** é um atalho cognitivo que simplifica problemas complexos de julgamento e decisão, substituindo uma questão difícil por uma mais acessível. O termo foi popularizado por Tversky e Kahneman (1974), que identificaram três heurísticas fundamentais: representatividade, disponibilidade e ancoragem. Dhami (2016, p. 1377–1384) cataloga mais de uma dúzia de heurísticas adicionais documentadas nas décadas seguintes.

### 8.1.1 Representatividade

A heurística da **representatividade** consiste em julgar a probabilidade de um evento pela semelhança com um estereótipo ou categoria mental, ignorando informações estatísticas relevantes como a taxa base. O problema é que a semelhança e a probabilidade são conceitos radicalmente distintos: o fato de um indivíduo "parecer" com um médico não nos diz nada sobre quantos médicos existem no grupo em questão. Quando usamos a representatividade, substituímos uma pergunta difícil ("qual é a probabilidade de X?") por uma mais fácil ("X se parece com um típico membro da categoria Y?"), e essa substituição produz erros sistemáticos.

!!! example "O problema de Linda"
    Linda tem 31 anos, é solteira, franca e muito inteligente. Na faculdade, foi ativista pelos direitos das minorias e participou de manifestações antinucleares. Qual das alternativas é mais provável?

    **(A)** Linda é caixa de banco.
    **(B)** Linda é caixa de banco e ativista do movimento feminista.

    A maioria dos participantes escolhe (B) — mas isso viola a **regra da conjunção**: a probabilidade de dois eventos simultâneos nunca pode exceder a de cada evento isolado, ou seja, \(P(A \cap B) \leq P(A)\). A descrição de Linda "se parece" mais com uma feminista, e essa semelhança (representatividade) domina o raciocínio probabilístico correto.

Uma consequência importante da representatividade é a **lei dos pequenos números**: a crença de que amostras pequenas devem refletir as propriedades de amostras grandes (Dhami 2016, p. 1385–1395). Essa crença alimenta a **falácia do jogador** — a expectativa de que, após uma sequência de resultados iguais (por exemplo, cinco "caras" seguidas), o resultado oposto se torne mais provável, mesmo quando os eventos são independentes. A mesma lógica aparece nas finanças: analistas que observam três trimestres consecutivos de lucro crescente tendem a extrapolar essa tendência para o futuro, ignorando a regressão à média e superestimando a persistência dos resultados.

A **negligência da taxa base** (*base rate neglect*) é outra manifestação da representatividade com implicações econômicas diretas. Ao avaliar a probabilidade de sucesso de uma nova empresa, investidores tendem a focar nas características específicas do empreendimento — a qualidade do fundador, a clareza do plano de negócios, o nicho de mercado —, negligenciando a taxa base de falência de startups no setor (frequentemente superior a 80% nos primeiros cinco anos). Kahneman chamou isso de o **inside view** versus o **outside view**: quem está de dentro do projeto superestima suas chances porque foca nos detalhes representativos, enquanto uma perspectiva externa privilegia as taxas base históricas.

### 8.1.2 Disponibilidade

Se a representatividade nos engana pela semelhança, a próxima heurística nos engana pela facilidade de recordação. A heurística da **disponibilidade** consiste em estimar a frequência ou probabilidade de um evento pela facilidade com que exemplos vêm à mente. Eventos vívidos, recentes ou emocionalmente carregados são superestimados; eventos abstratos ou distantes, subestimados. A disponibilidade é uma heurística razoável em muitos contextos: se consigo lembrar facilmente de muitos casos de uma doença específica, provavelmente é porque ela é de fato frequente. O problema surge quando a disponibilidade é dissociada da frequência real — quando eventos raros, mas espetaculares, são lembrados com muito mais facilidade do que eventos comuns, mas prosaicos.

A mídia tem um papel amplificador crucial aqui. A cobertura intensiva de acidentes aéreos, ataques terroristas ou crimes violentos aumenta artificialmente a "disponibilidade cognitiva" desses eventos, levando à superestimação de sua frequência. Pesquisas de percepção de risco realizadas no Brasil mostram que os entrevistados consistentemente superestimam a probabilidade de morte por homicídio em relação à de doenças cardiovasculares — o inverso do que as estatísticas do SUS revelam. A morte por doença é silenciosa e estatística; a morte por violência é noticiada e memorável.

!!! example "Risco de avião vs. carro"
    Após um acidente aéreo amplamente noticiado, a percepção de risco de voar aumenta significativamente — mesmo que, estatisticamente, o transporte aéreo seja muito mais seguro por quilômetro percorrido do que o rodoviário. No Brasil, os dados da ANTT e da ANAC indicam que a taxa de fatalidade por passageiro-quilômetro no transporte rodoviário é dezenas de vezes superior à do transporte aéreo. A cobertura midiática intensa de acidentes aéreos torna esses eventos cognitivamente "disponíveis", distorcendo a avaliação de risco.

### 8.1.3 Ancoragem

Enquanto representatividade e disponibilidade distorcem o *conteúdo* do julgamento, a ancoragem distorce o *processo* de estimação — mostrando que até números completamente irrelevantes podem exercer influência sobre nossas avaliações.

A **ancoragem** ocorre quando um valor inicial — mesmo que arbitrário e irrelevante — influencia sistematicamente a estimativa final de uma quantidade desconhecida.

!!! example "O experimento da roda da fortuna"
    Tversky e Kahneman (1974) pediram a participantes que estimassem a porcentagem de países africanos nas Nações Unidas. Antes de responder, cada participante girava uma roda da fortuna que parava em um número aleatório (10 ou 65). Os participantes que viram o número 10 estimaram, em média, 25%; os que viram 65 estimaram 45%. O número da roda — completamente irrelevante para a questão — funcionou como **âncora**, puxando as estimativas em sua direção.

A ancoragem tem implicações importantes para a economia: negociações salariais, precificação de imóveis e até decisões judiciais são influenciadas por valores-âncora iniciais. Estudos mostram que o preço de listagem de um imóvel funciona como âncora mesmo para avaliadores profissionais (Northcraft e Neale 1987). No contexto de negociações contratuais, quem faz a primeira oferta frequentemente captura uma parcela maior do excedente — não porque a primeira oferta seja mais informativa, mas porque serve de âncora para o processo de ajuste subsequente. Para o economista comportamental, isso implica que a distribuição de poder em uma negociação pode depender de quem "lança a âncora", mais do que das posições de reserva objetivas das partes.

!!! idea "Intuição Econômica"
    **Em uma frase:** Heurísticas são atalhos mentais que evoluíram para funcionar bem em ambientes naturais — o problema surge quando os aplicamos a contextos modernos para os quais não foram calibrados.

    **Pense assim:** Nosso cérebro foi "programado" na savana africana, onde decidir rápido (fugir do leão) valia mais do que decidir com precisão. Essas mesmas regras de bolso — julgar pela semelhança, pelo que vem fácil à mente, pelo primeiro número que aparece — podem nos enganar quando avaliamos um investimento ou votamos numa política pública.

    **Por que isso importa:** Reconhecer as heurísticas permite desenhar políticas públicas que "desenviesam" decisões — os famosos *nudges* — em vez de presumir que basta dar informação para que as pessoas escolham bem.

### 8.1.4 Excesso de confiança

As heurísticas anteriores se referem a distorções no julgamento sobre eventos externos. Mas os agentes também cometem erros sistemáticos na avaliação de suas próprias capacidades e conhecimentos. O **excesso de confiança** (*overconfidence*) manifesta-se de várias formas: superestimação das próprias habilidades, calibração inadequada de intervalos de confiança e a ilusão de controle sobre eventos aleatórios. Quando perguntados, a maioria dos motoristas se declara "acima da média" — uma impossibilidade estatística. Investidores excessivamente confiantes tendem a negociar com frequência excessiva, reduzindo seus retornos líquidos (Barber e Odean 2001).

!!! box-brasil "Box Brasil — Efeito disposição na B3"
    O **efeito disposição** — a tendência a vender ações vencedoras cedo demais e manter ações perdedoras por tempo demais — é uma manifestação conjunta de aversão à perda e excesso de confiança. Estudos com dados de investidores pessoa física na B3 (antiga BM&FBovespa) documentam esse padrão de forma robusta. Estudos empíricos usando dados de corretoras brasileiras encontraram que investidores individuais realizam ganhos com frequência significativamente maior do que realizam perdas. Esse comportamento é custoso: as ações vendidas (vencedoras) tendem a ter desempenho futuro superior ao das ações mantidas (perdedoras), gerando retornos líquidos menores para o investidor.

### 8.1.5 Sistema 1 e Sistema 2: a arquitetura dual do pensamento

Todas as heurísticas e vieses documentados acima levantam uma questão natural: por que agentes inteligentes cometem erros tão previsíveis? A resposta reside na própria arquitetura do pensamento humano. Kahneman (2011) sintetizou décadas de pesquisa sobre heurísticas em um modelo de **dois sistemas** cognitivos:

- **Sistema 1:** rápido, automático, intuitivo, de baixo esforço. Opera por associação e reconhecimento de padrões. É responsável pelas heurísticas e por grande parte das decisões cotidianas.
- **Sistema 2:** lento, deliberado, analítico, de alto esforço. Requer atenção consciente e é acionado quando o Sistema 1 encontra uma situação inesperada ou quando precisamos fazer cálculos explícitos.

Os vieses cognitivos documentados nas subseções anteriores surgem quando o Sistema 1 fornece uma resposta rápida (baseada em representatividade, disponibilidade ou ancoragem) e o Sistema 2 — por preguiça, sobrecarga ou falta de treinamento — não a corrige. Dhami (2016, p. 1433–1441) discute como essa arquitetura dual se conecta à distinção entre raciocínio heurístico e raciocínio deliberativo na psicologia cognitiva.

Uma implicação importante é que os dois sistemas podem entrar em conflito. Kahneman documentou esse fenômeno com o famoso "teste do morcego e da bola": "Um morcego e uma bola juntos custam R\$ 1,10. O morcego custa R\$ 1,00 a mais que a bola. Quanto custa a bola?" O Sistema 1 dispara imediatamente a resposta "10 centavos" — que está errada. A resposta correta é 5 centavos, e exige que o Sistema 2 "freie" a intuição e faça o cálculo explícito. O fato de que universitários de instituições de prestígio erram esse problema com alta frequência demonstra que a intervenção do Sistema 2 não é automática nem garantida — requer esforço deliberado e motivação para questionar a própria intuição.

Para a teoria econômica, o modelo dual tem uma implicação metodológica profunda: os agentes se comportam de maneira diferente dependendo de *qual sistema está no comando*. Em ambientes de alta pressão de tempo, baixa motivação ou sobrecarga cognitiva, o Sistema 1 domina e os vieses são maximizados. Em ambientes de reflexão calma e baixa sobrecarga, o Sistema 2 pode corrigir as respostas intuitivas. Isso significa que o contexto da decisão — o "ambiente de escolha" — afeta sistematicamente o comportamento, independentemente das preferências subjacentes do agente. Essa é a fundação teórica dos nudges discutidos na Seção 8.6: ao redesenhar o ambiente de escolha, o arquiteto pode acionar o Sistema 2 nos momentos em que isso mais importa — ou, alternativamente, usar o Sistema 1 a favor de melhores decisões.

!!! idea "Intuição Econômica"
    **Em uma frase:** "Pensar devagar" (Sistema 2) corrige os erros do "pensar rápido" (Sistema 1) — mas exige esforço, e esse esforço frequentemente não vale o custo percebido.

    **Pense assim:** Quando você compra algo por impulso no checkout do supermercado, é o Sistema 1 que decide — rápido, baseado no que está visível e no que parece familiar. Se você para, pega o celular e compara preços, o Sistema 2 assumiu o controle. Supermercados, lojas de conveniência e marketplaces digitais são projetados para manter o Sistema 1 no comando: displays chamativos, promoções relâmpago e botões "comprar agora" exploram o pensamento automático.

    **Por que isso importa:** Políticas de rotulagem, advertências de saúde e formulários de consentimento informado tentam, com frequência, acionar o Sistema 2 antes de uma decisão importante. Mas a eficácia dessas intervenções depende de quanto esforço o agente médio está disposto a despender — e a evidência sugere que esse esforço é sistematicamente subestimado pelos policymakers.

!!! idea "Intuição Econômica"
    **Em uma frase:** O cérebro opera em dois modos — um rápido e automático (Sistema 1) e outro lento e deliberado (Sistema 2) — e a maioria das decisões econômicas do dia a dia usa o primeiro.

    **Pense assim:** Um contador experiente calcula um desconto composto quase "no automático" (Sistema 1 treinado), enquanto um iniciante precisa de papel e caneta (Sistema 2). A expertise transforma raciocínio deliberado em heurística eficiente — mas também cria "pontos cegos" quando as condições mudam.

    **Por que isso importa:** Se a maioria das decisões de consumo, poupança e investimento passa pelo Sistema 1, modelos que assumem otimização deliberada e completa podem errar sistematicamente nas previsões.

A [Tabela 8.1](#tabela-8-1) resume as principais heurísticas e seus vieses associados:

<a id="tabela-8-1"></a>

| Heurística | Viés principal | Experimento clássico | Referência |
|---|---|---|---|
| Representatividade | Falácia da conjunção; negligência da taxa base | Problema de Linda | Tversky e Kahneman (1974) |
| Disponibilidade | Superestimação de eventos vívidos | Frequência de letras | Tversky e Kahneman (1974) |
| Ancoragem | Estimativas enviesadas por valores iniciais | Roda da fortuna | Tversky e Kahneman (1974) |
| Excesso de confiança | Calibração inadequada | Intervalos de confiança | Lichtenstein, Fischhoff e Phillips (1982) |
| *Status quo* | Preferência pela opção-padrão | Alocação de investimentos | Samuelson e Zeckhauser (1988) |
| Afeição (*affect*) | Avaliação guiada por emoção | Percepção de risco nuclear | Slovic et al. (2007) |
| Hindsight | "Eu sabia o tempo todo" | Previsões retrospectivas | Fischhoff (1975) |
| Confirmação | Busca seletiva de evidências | Teste de hipóteses | Wason (1960) |

<div class="caption-obj" markdown>
**Tabela 8.1 — Principais heurísticas e vieses cognitivos.**
</div>

Com as heurísticas e vieses mapeados, passamos agora à teoria que reformula a análise da decisão sob risco incorporando esses fenômenos de forma estruturada.

!!! box-mundo "Box Mundo 8.1 — Kahneman e Tversky: como dois psicólogos israelenses transformaram a economia"

    **Contexto:** A revolução comportamental na economia não nasceu dentro da disciplina econômica. Foi gestada nos departamentos de psicologia da Universidade Hebraica de Jerusalém e da Universidade de British Columbia, a partir da colaboração entre Daniel Kahneman e Amos Tversky — dois psicólogos cognitivos israelenses cujo programa de pesquisa, iniciado no final dos anos 1960, desafiou frontalmente o axioma de racionalidade que sustenta a teoria microeconômica convencional. O trabalho conjunto produziu três contribuições seminais: o artigo sobre heurísticas e vieses (*Science*, 1974), a Teoria do Prospecto (*Econometrica*, 1979) e a versão cumulativa da Teoria do Prospecto (1992). Kahneman recebeu o Prêmio Nobel de Economia em 2002 — Tversky, falecido em 1996, teria certamente compartilhado a honraria.

    **Dados:** O programa de pesquisa de Kahneman e Tversky foi inicialmente baseado em experimentos com estudantes israelenses e americanos, o que levantou preocupações legítimas sobre validade externa. Nas décadas seguintes, contudo, os principais achados foram replicados em dezenas de países e culturas. A meta-análise de Ruggeri et al. (2020, *Nature Human Behaviour*), com dados de 19 países e mais de 4.000 participantes, confirmou que a aversão à perda — o fenômeno central da Teoria do Prospecto — é robusto cross-culturalmente, embora sua magnitude varie: o coeficiente \(\lambda\) médio estimado foi de aproximadamente 1,8 a 2,1, ligeiramente abaixo do valor canônico de 2,25 de Kahneman e Tversky, mas consistentemente superior a 1 em todas as amostras. O efeito de enquadramento (*framing effect*) também se mostrou replicável, embora com variação cultural significativa: populações do Leste Asiático tendem a ser mais sensíveis ao enquadramento do que populações ocidentais, possivelmente refletindo diferenças nos estilos cognitivos (pensamento holístico vs. analítico, conforme Nisbett et al., 2001).

    **Análise:** A importância do programa Kahneman-Tversky para a microeconomia vai além dos resultados empíricos específicos. Ele estabeleceu um novo padrão metodológico: a ideia de que anomalias comportamentais não são ruído aleatório, mas padrões **sistemáticos** e **previsíveis** que podem ser formalizados em modelos alternativos. Essa previsibilidade é o que torna a economia comportamental útil para políticas públicas — se os vieses fossem idiossincráticos, não haveria como desenhá-las para mitigá-los. A replicação cross-cultural dos principais achados sugere que as heurísticas identificadas nesta seção refletem propriedades profundas da arquitetura cognitiva humana (o Sistema 1 de Kahneman), não artefatos culturais específicos — embora a magnitude dos efeitos e os contextos de ativação variem entre culturas, o que impõe cautela na importação acrítica de nudges desenhados em um país para outro.

    **Fonte:** Kahneman, D.; Tversky, A. (1979). "Prospect Theory: An Analysis of Decision under Risk." *Econometrica*, 47(2), 263–292. Ruggeri, K. et al. (2020). "Replicating Patterns of Prospect Theory for Decision under Risk." *Nature Human Behaviour*, 4, 622–633. Kahneman, D. (2011). *Thinking, Fast and Slow*. New York: Farrar, Straus and Giroux.

---

## 8.2 Teoria do Prospecto

A Seção 8.1 mostrou *onde* o modelo racional tropeça. Agora precisamos de um modelo que tropeça menos — sem perder a capacidade de gerar previsões. Esse modelo existe, tem nome, e rendeu um Nobel: a **Teoria do Prospecto**. Não é um remendo ad hoc; é uma teoria completa, com axiomas próprios e previsões testáveis. E a história de como ela surgiu é uma das melhores da ciência.

A **utilidade esperada** de Von Neumann e Morgenstern (Capítulo 7) pressupõe que os agentes avaliam resultados em termos de riqueza final e ponderam probabilidades linearmente. A Teoria do Prospecto, proposta por Kahneman e Tversky (1979) e refinada em sua versão cumulativa (Tversky e Kahneman 1992), substitui essas premissas por duas inovações fundamentais: uma **função valor** definida sobre ganhos e perdas relativos a um ponto de referência, e uma **função de ponderação de probabilidades** que distorce probabilidades objetivas.

É importante compreender o que a Teoria do Prospecto *não* é: ela não é uma teoria ad hoc construída para acomodar anomalias uma a uma. É uma teoria coerente, derivada sistematicamente de regularidades observadas, que gera previsões novas — muitas delas confirmadas em experimentos posteriores e em dados de campo. O par (função valor + ponderação de probabilidades) não foi escolhido arbitrariamente; cada elemento foi motivado por um conjunto específico de experimentos e pela busca de parsimônia: o menor número de inovações que acomode os fenômenos documentados. Essa é a marca de uma boa teoria científica.

### 8.2.1 O Paradoxo de Allais

Para motivar as inovações da Teoria do Prospecto, comecemos por um experimento mental que abalou a confiança no axioma da independência — o pilar mais controverso da utilidade esperada de Von Neumann e Morgenstern. Antes da Teoria do Prospecto, Maurice Allais (1953) já havia demonstrado uma violação elegante da utilidade esperada. Considere os seguintes problemas de decisão.

Vale notar que o Paradoxo de Allais foi apresentado, de forma provocativa, ao próprio grupo de economistas que havia desenvolvido a utilidade esperada — incluindo nomes como Savage e Samuelson — durante uma conferência em Paris em 1952. Muitos deles, ao responder intuitivamente, violaram os próprios axiomas que defendiam. Quando Savage percebeu que havia respondido de forma inconsistente, disse algo notável: a inconsistência não resultava de irracionalidade, mas de um "erro de cálculo" que ele corrigiria ao raciocinar com mais cuidado. Isso é precisamente o que Kahneman documentaria décadas depois: o Sistema 2 pode corrigir as intuições do Sistema 1, mas só quando acionado. A questão de política relevante é: nas decisões reais de consumo, poupança e investimento, os agentes acionam o Sistema 2 com frequência suficiente?

!!! example "Paradoxo de Allais"
    **Problema 1:** Escolha entre:

    - **A:** Ganhar R\$ 1.000.000 com certeza.
    - **B:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); R\$ 1.000.000 com probabilidade \(0{,}89\); nada com probabilidade \(0{,}01\).

    **Problema 2:** Escolha entre:

    - **C:** Ganhar R\$ 1.000.000 com probabilidade \(0{,}11\); nada com probabilidade \(0{,}89\).
    - **D:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); nada com probabilidade \(0{,}90\).

    A maioria das pessoas escolhe **A** no Problema 1 e **D** no Problema 2. Mas essa combinação viola o axioma da independência da utilidade esperada. Se \(A \succ B\), então pela UE teríamos \(C \succ D\) — mas o padrão observado é o contrário. A preferência por A reflete o **efeito certeza**: a sobrevalorização de resultados certos em relação a resultados meramente prováveis.

### 8.2.2 A função valor

O Paradoxo de Allais revelou que as pessoas não tratam as probabilidades de forma linear. Mas há outra dimensão em que a utilidade esperada falha: a forma como os agentes avaliam os *resultados*. A utilidade esperada pressupõe que o que importa é a riqueza final — um investidor com patrimônio de R\$ 1 milhão se sente igualmente bem, independentemente de ter começado com R\$ 500 mil e ganhado R\$ 500 mil, ou de ter começado com R\$ 2 milhões e perdido R\$ 1 milhão. A experiência cotidiana, porém, nos diz que isso não é verdade: o contexto de onde partimos — o **ponto de referência** — importa, e muito.

A Teoria do Prospecto propõe que os agentes avaliam resultados como **ganhos ou perdas** relativos a um **ponto de referência** (tipicamente o *status quo*), e não em termos de riqueza absoluta. A **função valor** \(v(x)\) possui três propriedades fundamentais:

1. **Dependência de referência:** o portador de valor é a variação \(x\) em relação ao ponto de referência, não o nível absoluto de riqueza.
2. **Concavidade para ganhos, convexidade para perdas:** os agentes são avessos ao risco no domínio dos ganhos e propensos ao risco no domínio das perdas.
3. **Aversão à perda:** a função é mais íngreme para perdas do que para ganhos — perder R\$ 100 dói mais do que ganhar R\$ 100 agrada.

!!! definition "Aversão à perda"
    A **aversão à perda** é a assimetria na avaliação de ganhos e perdas: o impacto psicológico de uma perda de magnitude \(|x|\) é maior do que o de um ganho de mesma magnitude. Formalmente, \(|v(-x)| > v(x)\) para todo \(x > 0\). O coeficiente de aversão à perda \(\lambda = |v(-x)|/v(x)\) é tipicamente estimado em torno de \(2{,}0\) a \(2{,}5\) — ou seja, perdas "pesam" cerca de duas vezes mais que ganhos equivalentes.

!!! warning "Cuidado"
    **Aversão à perda ≠ Aversão ao risco.** É um erro frequente confundir esses dois conceitos. A **aversão ao risco** (Capítulo 7) descreve a preferência por um resultado certo em relação a uma aposta com o mesmo valor esperado — ela decorre da *concavidade* da função de utilidade sobre riqueza. A **aversão à perda** é um fenômeno distinto: mesmo que a função valor \(v(x)\) fosse linear (sem concavidade), a assimetria \(\lambda > 1\) geraria aversão à perda. Um agente pode, em princípio, ser neutro ao risco e ainda assim ser avesso à perda — pois os dois conceitos operam em dimensões diferentes. Concretamente: a aversão ao risco explica por que você prefere R\$ 500 certos a uma aposta de 50% de chance de R\$ 1.000; a aversão à perda explica por que você recusa uma aposta de 50% de ganhar R\$ 150 contra 50% de *perder* R\$ 100, mesmo com valor esperado positivo de R\$ 25. Misturar os dois conceitos leva a erros na calibração de modelos e na interpretação de evidências empíricas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Perder dói mais do que ganhar alegra — por isso as pessoas rejeitam apostas matematicamente favoráveis.

    **Pense assim:** Uma moeda justa paga R\$ 150 na cara e cobra R\$ 100 na coroa. O valor esperado é +R\$ 25, mas com \(\lambda \approx 2{,}25\), a perda potencial "pesa" R\$ 225 em termos psicológicos — mais do que os R\$ 150 do ganho. A maioria das pessoas recusa a aposta.

    **Por que isso importa:** A aversão à perda explica por que investidores seguram ações perdedoras tempo demais ("não quero realizar o prejuízo") e vendem vencedoras cedo demais ("melhor garantir o lucro") — o chamado efeito disposição, documentado na B3.

Uma especificação paramétrica comum é:

\[
v(x) =
\begin{cases}
x^{\alpha} & \text{se } x \geq 0 \\
-\lambda(-x)^{\beta} & \text{se } x < 0
\end{cases}
\label{eq:8.1} \tag{8.1}
\]

onde \(\alpha, \beta \in (0,1)\) capturam a concavidade/convexidade e \(\lambda > 1\) captura a aversão à perda. Na equação $\eqref{eq:8.1}$, as estimativas originais de Tversky e Kahneman (1992) são \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\).

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/funcao-valor-pt.html" title="Figura 8.1 — Função Valor em Prospect Theory" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.1 — Função valor da Teoria do Prospecto.** Ajuste os parâmetros de curvatura e aversão à perda para observar a assimetria entre ganhos e perdas.
</div>

A [Tabela 8.2](#tabela-8-2) compara as estimativas dos parâmetros da Teoria do Prospecto em diferentes estudos:

<a id="tabela-8-2"></a>

| Estudo | \(\alpha\) | \(\beta\) | \(\lambda\) | \(\gamma^+\) | \(\gamma^-\) | Método |
|---|---|---|---|---|---|---|
| Tversky e Kahneman (1992) | 0,88 | 0,88 | 2,25 | 0,61 | 0,69 | Equivalentes de certeza |
| Camerer e Ho (1994) | 0,37 | — | — | 0,56 | — | Dados experimentais |
| Wu e Gonzalez (1996) | — | — | — | 0,71 | — | Loterias binárias |
| Abdellaoui (2000) | 0,89 | 0,92 | 2,54 | 0,60 | 0,70 | Trade-off method |
| Booij, van Praag e van de Kuilen (2010) | 0,86 | 0,86 | 2,09 | 0,65 | 0,65 | Meta-análise |

<div class="caption-obj" markdown>
**Tabela 8.2 — Estimativas dos parâmetros da Teoria do Prospecto.**
</div>

!!! info "🏅 Prêmio Nobel — Daniel Kahneman (2002)"

    **Daniel Kahneman** (1934–2024) foi um psicólogo israelense-americano. Formou-se na Universidade Hebraica de Jerusalém e obteve o PhD em Berkeley. Foi professor em Jerusalem, UBC e Princeton. Dividiu o Nobel de Economia com Vernon Smith — sendo um dos raros não-economistas a recebê-lo.

    **Por que ganhou o Nobel:**
    Premiado por integrar insights da psicologia à ciência econômica, especialmente no que diz respeito ao julgamento e tomada de decisão sob incerteza. Com Amos Tversky (1937–1996), Kahneman desenvolveu a Teoria do Prospecto, que substitui a utilidade esperada por uma função valor definida sobre ganhos e perdas relativos a um ponto de referência, com aversão a perdas (\(\lambda \approx 2{,}25\)) e sensibilidade decrescente.

    **Conexão com este capítulo:**
    A função valor da Teoria do Prospecto — côncava para ganhos, convexa para perdas, mais inclinada no domínio das perdas — é o ponto de partida deste capítulo. Os vieses cognitivos documentados por Kahneman e Tversky (representatividade, disponibilidade, ancoragem) explicam os desvios sistemáticos da racionalidade que motivam toda a economia comportamental discutida aqui.

??? exercicio-resolvido "Exercício Resolvido 8.1 — Função valor da Teoria do Prospecto"
    **Enunciado:** Usando a função valor paramétrica da Teoria do Prospecto com \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\), calcule o valor subjetivo dos seguintes resultados: \(v(100)\), \(v(-100)\), \(v(250)\) e \(v(-250)\). Em seguida, verifique a propriedade de aversão à perda e a sensibilidade decrescente.

    **Dados:** \(\alpha = 0{,}88\), \(\beta = 0{,}88\), \(\lambda = 2{,}25\).

    **Resolução:**

    **Passo 1 — Calcular \(v(x)\) para cada resultado**

    Para ganhos (\(x \geq 0\)): \(v(x) = x^{0{,}88}\).

    - \(v(100) = 100^{0{,}88} = e^{0{,}88 \ln 100} = e^{0{,}88 \times 4{,}605} = e^{4{,}052} \approx 57{,}54\)
    - \(v(250) = 250^{0{,}88} = e^{0{,}88 \times 5{,}521} = e^{4{,}859} \approx 128{,}82\)

    Para perdas (\(x < 0\)): \(v(x) = -\lambda(-x)^{0{,}88}\).

    - \(v(-100) = -2{,}25 \times 100^{0{,}88} \approx -2{,}25 \times 57{,}54 = -129{,}47\)
    - \(v(-250) = -2{,}25 \times 250^{0{,}88} \approx -2{,}25 \times 128{,}82 = -289{,}85\)

    **Passo 2 — Verificar a aversão à perda**

    \(|v(-100)| = 129{,}47 > 57{,}54 = v(100)\). Portanto, \(|v(-100)|/v(100) = 2{,}25 = \lambda\). A perda de R\$ 100 é sentida como 2,25 vezes mais intensa do que o ganho de R\$ 100.

    **Passo 3 — Verificar a sensibilidade decrescente**

    Para ganhos: o acréscimo de R\$ 100 para R\$ 250 (+ R\$ 150) gera aumento de valor de \(128{,}82 - 57{,}54 = 71{,}28\). Se a função fosse linear, o aumento seria proporcional: \(57{,}54 \times 1{,}5 = 86{,}31\). Como \(71{,}28 < 86{,}31\), confirma-se a concavidade (sensibilidade decrescente para ganhos).

    **Resultado:** A função valor atribui à perda de R\$ 100 um impacto 2,25 vezes maior que ao ganho de R\$ 100, e exibe sensibilidade decrescente tanto para ganhos quanto para perdas.

    **Interpretação econômica:** Essa assimetria ajuda a explicar por que consumidores brasileiros resistem a reajustes de preço (percebidos como perda) mas reagem pouco a promoções equivalentes (percebidas como ganho). No mercado de ações, ela fundamenta o efeito disposição documentado entre investidores da B3.

### 8.2.3 Ponderação de probabilidades

A função valor explica *como* os agentes avaliam resultados; falta agora entender *como* avaliam probabilidades. A utilidade esperada assume que uma probabilidade de 10% recebe exatamente um décimo do peso de um evento certo. Mas será que as pessoas processam probabilidades dessa forma? A evidência empírica é inequívoca: não.

Na utilidade esperada, as probabilidades entram linearmente na função objetivo. Na Teoria do Prospecto, as probabilidades objetivas \(p\) são transformadas por uma **função de ponderação** \(w(p)\) com formato de S invertido:

\[
w(p) = \frac{p^{\gamma}}{(p^{\gamma} + (1-p)^{\gamma})^{1/\gamma}}
\label{eq:8.2} \tag{8.2}
\]

onde \(\gamma \in (0,1)\) controla o grau de distorção. As propriedades principais são:

- **Sobrevalorização de probabilidades pequenas:** \(w(p) > p\) para \(p\) pequeno — o que explica a compra de bilhetes de loteria e seguros contra catástrofes.
- **Subvalorização de probabilidades moderadas a altas:** \(w(p) < p\) para \(p\) moderado a alto.
- **Subcerteza:** \(w(p) + w(1-p) < 1\) — as ponderações não somam 1, refletindo uma aversão global à incerteza.

O valor estimado por Tversky e Kahneman (1992) é \(\gamma^+ = 0{,}61\) para ganhos e \(\gamma^- = 0{,}69\) para perdas. Prelec (1998) propôs uma forma axiomática alternativa, \(w(p) = \exp(-(-\ln p)^{\alpha})\), com propriedades de auto-similitude (Dhami 2016, p. 153–157).

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/ponderacao-prob.html" title="Figura 8.2 — Ponderação de Probabilidades" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.2 — Função de ponderação de probabilidades \(w(p)\).** Compare a ponderação com a linha de 45 graus para visualizar a sobrevalorização de probabilidades pequenas e a subvalorização de probabilidades altas.
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** A mesma pessoa compra loteria e contrata seguro contra catástrofe — ambos explicados pela sobrevalorização de eventos raros.

    **Pense assim:** Você joga na Mega-Sena (chance de 1 em 50 milhões) porque seu cérebro "infla" essa probabilidade minúscula. E contrata seguro contra incêndio (chance de 1 em 10.000) pelo mesmo motivo — a probabilidade pequena de perda também é inflada. Sob utilidade esperada, essas atitudes são inconsistentes; sob a Teoria do Prospecto, ambas decorrem da mesma distorção.

    **Por que isso importa:** A ponderação não linear de probabilidades é a peça que faltava para explicar simultaneamente comportamentos de risco (loterias, day trading) e aversão extrema a catástrofes (seguros caros, pânico financeiro).

!!! box-brasil "Box Brasil — A Mega-Sena e a sobrevalorização de probabilidades pequenas"
    A probabilidade de acertar as seis dezenas da Mega-Sena é de aproximadamente 1 em 50 milhões. Mesmo assim, milhões de brasileiros apostam regularmente. O valor esperado de uma aposta de R\$ 5,00 é tipicamente negativo (parte da arrecadação financia programas sociais via Caixa Econômica Federal). Sob utilidade esperada com probabilidades lineares, apostar seria irracional para qualquer agente avesso ao risco. A Teoria do Prospecto oferece uma explicação: a função de ponderação transforma a probabilidade objetiva minúscula (\(p \approx 0{,}00000002\)) em um peso decisório substancialmente maior, tornando a aposta subjetivamente atraente. O prazer antecipatório de imaginar o ganho faz parte do "produto" consumido — algo que o modelo neoclássico não captura.

### 8.2.4 Da PT Original à PT Cumulativa (CPT)

A combinação de função valor e ponderação de probabilidades confere à Teoria do Prospecto um poder descritivo notável. No entanto, como frequentemente ocorre em ciência, a primeira versão de uma boa teoria carrega imperfeições técnicas que precisam ser corrigidas. A Teoria do Prospecto original (OPT) de 1979 apresentava uma limitação técnica importante: a ponderação direta de probabilidades isoladas podia levar à violação de dominância estocástica — um agente poderia preferir uma loteria com resultados piores em todos os cenários (Dhami 2016, p. 158). A solução veio em dois passos.

**Utilidade Dependente de Rank (RDU).** Quiggin (1982) propôs ponderar **probabilidades acumuladas** em vez de probabilidades isoladas. Na RDU, os resultados são primeiro ordenados do pior ao melhor, e os pesos decisórios \(\pi_i\) são calculados a partir da função de ponderação aplicada às probabilidades acumuladas:

\[
\pi_i = w\!\left(\sum_{j=i}^{n} p_j\right) - w\!\left(\sum_{j=i+1}^{n} p_j\right)
\label{eq:8.3} \tag{8.3}
\]

A utilidade RDU é então \(\text{RDU}(L) = \sum_{i=1}^{n} \pi_i \, u(x_i)\). Diferentemente da ponderação direta, os pesos decisórios da equação $\eqref{eq:8.3}$ nunca violam a dominância estocástica (Dhami 2016, p. 159–164).

**PT Cumulativa (CPT).** Tversky e Kahneman (1992) combinaram a RDU com as inovações da OPT — dependência de referência, aversão à perda e funções de ponderação distintas para ganhos e perdas — criando a **Teoria do Prospecto Cumulativa**. Na CPT, ganhos são ordenados do menor ao maior e perdas do maior (menos negativo) ao menor (mais negativo), com pesos decisórios computados separadamente para cada domínio.

A [Tabela 8.3](#tabela-8-3) compara os quatro modelos:

<a id="tabela-8-3"></a>

| Característica | UE | RDU | OPT | CPT |
|---|---|---|---|---|
| Portador de valor | Riqueza final | Riqueza final | Ganhos/perdas | Ganhos/perdas |
| Ponderação de prob. | Linear | Cumulativa | Direta | Cumulativa |
| Aversão à perda | Não | Não | Sim (\(\lambda\)) | Sim (\(\lambda\)) |
| Respeita dominância | Sim | Sim | **Não** | Sim |
| \(w\) para ganhos e perdas | — | Uma única \(w\) | Duas \(w\) | Duas \(w^+, w^-\) |

<div class="caption-obj" markdown>
**Tabela 8.3 — Comparação dos modelos de decisão sob risco.**
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** A CPT corrige o defeito técnico da Teoria do Prospecto original — violação de dominância estocástica — preservando todas as suas inovações psicológicas.

    **Pense assim:** A OPT de 1979 era como um carro revolucionário que às vezes acelerava sozinho (violava dominância). A CPT de Tversky e Kahneman (1992) consertou o motor (ponderação cumulativa em vez de isolada) sem mudar o design — referência, aversão à perda e distorção de probabilidades continuam presentes.

    **Por que isso importa:** A CPT é o modelo de referência em economia comportamental e finanças comportamentais. Para loterias simples, OPT e CPT geram previsões semelhantes — a diferença técnica importa mais para loterias com muitos resultados e para consistência teórica.

### 8.2.5 Efeito dotação e efeito framing

A Teoria do Prospecto não é apenas um modelo abstrato de decisão sob risco — ela gera previsões concretas sobre o comportamento econômico que podem ser testadas em laboratório e observadas nos mercados. Duas dessas previsões são particularmente importantes, pois desafiam pilares fundamentais da teoria neoclássica: o efeito dotação, que questiona a igualdade entre disposição a pagar e disposição a aceitar, e o efeito framing, que questiona a invariância das preferências à forma de apresentação.

Duas consequências diretas da Teoria do Prospecto têm grande relevância econômica:

**Efeito dotação.** A aversão à perda implica que as pessoas exigem mais para abrir mão de um objeto que já possuem do que estariam dispostas a pagar para adquiri-lo. Esse hiato entre a **disposição a aceitar** (WTA) e a **disposição a pagar** (WTP) contradiz a previsão da teoria neoclássica de que WTA \(\approx\) WTP para bens sem efeito renda significativo.

!!! example "Canecas de Kahneman, Knetsch e Thaler"
    No experimento clássico de Kahneman, Knetsch e Thaler (1990), metade dos participantes recebeu uma caneca de café da universidade. Quando questionados sobre o preço mínimo para vendê-la, os "donos" pediram em média US\$ 7,12. Os "compradores" (que não receberam a caneca) ofereceram em média US\$ 2,87. A simples posse — a dotação — mais que dobrou a valoração do objeto.

!!! box-brasil "Box Brasil — Efeito dotação no mercado imobiliário"
    O mercado imobiliário brasileiro oferece uma ilustração vívida do efeito dotação. Dados do índice FipeZap mostram que, em períodos de desaceleração econômica, os preços de venda de imóveis residenciais resistem a cair mesmo quando o volume de transações despenca. Proprietários que compraram seus imóveis a preços elevados relutam em vender abaixo do preço de aquisição — o ponto de referência —, preferindo manter o imóvel fora do mercado por meses ou anos. Essa rigidez de preços para baixo é difícil de explicar pela teoria neoclássica pura, mas é uma previsão natural da aversão à perda: vender abaixo do preço de compra é codificado como "perda", e a dor dessa perda supera o benefício racional de liquidar o ativo e realocar o capital.

**Efeito framing.** Se o efeito dotação mostra que a posse de um objeto altera sua valoração, o efeito framing revela algo ainda mais perturbador para o modelo neoclássico: a forma como uma decisão é apresentada afeta sistematicamente as escolhas, mesmo quando as opções são logicamente equivalentes. Não é apenas o *conteúdo* da decisão que importa — é a *moldura* em que ela é colocada.

No plano da política pública, o efeito framing tem implicações práticas de primeira ordem. Comunicações governamentais sobre saúde pública, tributos ou programas sociais produzem respostas diferentes dependendo de se enfatizam o que os cidadãos *ganham* com a adesão ou o que *perdem* sem ela. Estudos de campo mostram que mensagens enquadradas em termos de perda ("você perderá R\$ X em benefícios caso não se inscreva") costumam gerar maior taxa de resposta do que mensagens equivalentes enquadradas em termos de ganho — um resultado direto da assimetria \(\lambda > 1\) da função valor. O efeito framing também aparece no design de contratos: um bônus por desempenho acima da meta ("ganho se superar") é avaliado de forma diferente de uma penalidade por desempenho abaixo da meta ("perda se ficar abaixo"), mesmo que os valores monetários sejam idênticos. A literatura sobre contratos de incentivo comportamental explora essa assimetria para desenhar contratos que motivam mais sem necessariamente custar mais.

!!! example "O problema das doenças asiáticas"
    Tversky e Kahneman (1981) apresentaram o seguinte cenário: uma doença incomum ameaça matar 600 pessoas. Dois programas são propostos:

    **Frame positivo (vidas salvas):**

    - Programa A: 200 pessoas serão salvas com certeza.
    - Programa B: \(1/3\) de probabilidade de salvar 600 e \(2/3\) de ninguém ser salvo.

    **Frame negativo (mortes):**

    - Programa C: 400 pessoas morrerão com certeza.
    - Programa D: \(1/3\) de probabilidade de ninguém morrer e \(2/3\) de 600 morrerem.

    Matematicamente, A = C e B = D. Mas 72% escolheram A no frame positivo (aversão ao risco no domínio dos ganhos) e 78% escolheram D no frame negativo (propensão ao risco no domínio das perdas) — exatamente como prevê a Teoria do Prospecto.

### 8.2.6 Contabilidade mental

O efeito framing já nos mostrou que a forma de apresentação importa. A contabilidade mental leva essa ideia um passo adiante: não apenas a apresentação externa, mas a organização interna — a forma como o próprio agente categoriza e acompanha suas transações financeiras — afeta sistematicamente suas decisões.

A **contabilidade mental** (*mental accounting*), conceito introduzido por Thaler (1985, 1999), descreve como as pessoas organizam, avaliam e acompanham suas atividades financeiras usando um sistema de "contas" mentais separadas — em vez de tratar o dinheiro como perfeitamente fungível, conforme prevê a teoria neoclássica.

A violação de fungibilidade é o fenômeno central. Do ponto de vista neoclássico, um real é um real, independentemente de sua origem (salário, bônus, herança, prêmio de loteria) ou de sua destinação planejada (alimentação, lazer, emergência). Mas na prática, as pessoas tratam o dinheiro de formas radicalmente diferentes conforme sua "conta mental" de origem. Um ganho inesperado — como uma restituição do Imposto de Renda — tende a ser gasto com maior "liberdade" do que o equivalente em salário mensal. Economicamente, ambos aumentam o orçamento disponível pela mesma quantia, mas psicologicamente são percebidos como recursos de diferentes "naturezas". O mesmo trabalhador que economiza rigorosamente em alimentação pode gastar o 13º salário de forma impulsiva — não porque mudou de preferências, mas porque o 13º pertence à conta mental de "dinheiro extraordinário".

No contexto brasileiro, a contabilidade mental aparece de forma particularmente vívida em dois contextos. Primeiro, na **Bolsa Família e no Auxílio Brasil**: pesquisas de avaliação do programa mostram que as famílias beneficiárias tendem a alocar os recursos recebidos prioritariamente para alimentação e material escolar — em proporção maior do que os recursos oriundos de outras fontes de renda. Isso não se deve apenas a restrições de uso formal (o benefício não tem destinação legalmente vinculada), mas à criação de uma "conta mental" específica associada ao benefício, com normas sociais implícitas sobre seu uso adequado. Segundo, na **conta salário**: a separação, promovida pelo sistema bancário brasileiro, entre a conta de depósito de salário (muitas vezes isenta de tarifas) e a conta corrente de movimentação cria divisões de contabilidade mental que afetam decisões de poupança. O dinheiro que "ainda não saiu da conta salário" é mentalmente tratado como mais disponível para poupança do que o dinheiro já transferido para a conta corrente.

!!! definition "Contabilidade mental"
    A **contabilidade mental** é o conjunto de operações cognitivas usadas por indivíduos e famílias para organizar, avaliar e acompanhar atividades financeiras (Thaler 1999). Inclui três componentes: (i) como os resultados são percebidos e avaliados; (ii) como as atividades são alocadas a contas específicas; e (iii) a frequência com que as contas são "fechadas" e avaliadas. Dhami (2016, p. 1486–1518) dedica um capítulo inteiro ao tema.

Como a contabilidade mental afeta as decisões concretas dos consumidores? Thaler (1985) identificou quatro **regras de edição hedônica** — princípios que descrevem como os agentes combinam ou separam ganhos e perdas para maximizar (ou minimizar) o impacto emocional percebido:

1. **Segregar ganhos:** é melhor apresentar dois ganhos separadamente (dois presentes distintos parecem melhores que um pacote).
2. **Integrar perdas:** é melhor combinar duas perdas em uma só (uma cobrança única dói menos que duas separadas).
3. **Cancelar uma pequena perda com um ganho maior:** integrar para perceber o resultado líquido positivo.
4. **Segregar um pequeno ganho de uma grande perda:** o "consolo" do pequeno ganho separado ameniza a dor.

Essas regras decorrem diretamente da curvatura da função valor da Teoria do Prospecto — concavidade para ganhos (ganhos separados são avaliados em regiões de maior sensibilidade) e convexidade para perdas (perdas combinadas são avaliadas em região de menor sensibilidade marginal).

!!! box-brasil "Box Brasil — Cartão de crédito e contas mentais"
    O uso intenso do cartão de crédito no Brasil — frequentemente como instrumento de parcelamento "sem juros" — ilustra a contabilidade mental em ação. O parcelamento separa uma grande perda (o preço total do bem) em pequenas perdas mensais, cada uma percebida como menos dolorosa. Além disso, a separação temporal entre o momento da compra (prazer imediato) e o pagamento (dor adiada) explora tanto a contabilidade mental quanto o viés do presente discutido na Seção 8.5. Prelec e Loewenstein (1998) modelaram formalmente essa "desvinculação" entre consumo e pagamento.

!!! info "🏅 Prêmio Nobel — Richard H. Thaler (2017)"

    **Richard Howard Thaler** (1945–presente) é um economista americano. Obteve o PhD na Universidade de Rochester e é professor na Booth School of Business da Universidade de Chicago.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à economia comportamental. Thaler demonstrou como limitações cognitivas — contabilidade mental, autocontrole limitado e preferências sociais — afetam sistematicamente as decisões econômicas individuais e os resultados de mercado. Sua agenda de pesquisa transformou a economia comportamental de curiosidade acadêmica em ferramenta prática de políticas públicas (*nudges*).

    **Conexão com este capítulo:**
    A contabilidade mental — a tendência de tratar diferentes categorias de dinheiro como não fungíveis, segregando gastos em "contas" separadas — é uma das anomalias comportamentais mais robustas e é discutida em detalhe neste capítulo. Thaler mostrou que essa tendência viola o princípio da fungibilidade e explica comportamentos como o tratamento diferenciado de ganhos inesperados (*windfall gains*) versus renda regular.

---

## 8.3 Ambiguidade e o Paradoxo de Ellsberg

A Teoria do Prospecto pressupõe que você *conhece* as probabilidades — só as processa de forma distorcida. Mas e quando você não faz *ideia* das probabilidades? Qual é a chance de uma pandemia? De um golpe de Estado? De a inteligência artificial substituir seu emprego? Nesses casos, não estamos diante de risco (probabilidades conhecidas) nem de ignorância total — estamos na terra da **ambiguidade**: sabemos que não sabemos, e isso nos assusta de um jeito que a teoria padrão não captura. Daniel Ellsberg mostrou isso de forma brilhante com duas urnas e umas bolinhas coloridas.

### 8.3.1 Risco, incerteza e ambiguidade

O Capítulo 7 tratou de decisões sob **risco** — situações em que as probabilidades dos estados do mundo são conhecidas. Knight (1921) distinguiu o risco da **incerteza** (*uncertainty*), em que as probabilidades são desconhecidas. Ellsberg (1961) identificou um fenômeno ainda mais específico: mesmo quando os agentes poderiam atribuir probabilidades subjetivas (como prescreve a UE de Savage), eles sistematicamente **evitam** situações em que as probabilidades são **ambíguas** — isto é, pouco informadas ou vagas. A [Tabela 8.4](#tabela-8-4) distingue esses três conceitos.

<a id="tabela-8-4"></a>

| Conceito | Probabilidades | Exemplo |
|---|---|---|
| **Risco** | Conhecidas e objetivas | Roleta: \(P(\text{vermelho}) = 18/37\) |
| **Incerteza knightiana** | Desconhecidas | Resultado de uma revolução política |
| **Ambiguidade** | Formalmente atribuíveis, mas vagas | Urna com composição desconhecida |

<div class="caption-obj" markdown>
**Tabela 8.4 — Risco, incerteza knightiana e ambiguidade.**
</div>

### 8.3.2 O Paradoxo de Ellsberg

Daniel Ellsberg — o mesmo que mais tarde ficaria famoso pelos *Pentagon Papers* — construiu um experimento mental engenhoso que demonstra a aversão à ambiguidade de forma irrefutável.

!!! example "Paradoxo de Ellsberg — Duas cores"
    Considere duas urnas, cada uma com 100 bolas:

    - **Urna A (conhecida):** 50 bolas vermelhas e 50 pretas.
    - **Urna B (ambígua):** 100 bolas, mas a proporção entre vermelhas e pretas é desconhecida.

    Você ganha R\$ 100 se uma bola da cor escolhida for sorteada.

    **Escolha 1:** Apostar em vermelho. A maioria prefere a **Urna A**.

    **Escolha 2:** Apostar em preto. A maioria *também* prefere a **Urna A**.

    Esse padrão viola a UE de Savage. Se o agente atribui probabilidade subjetiva \(P(\text{vermelho em B}) < 0{,}5\), deveria atribuir \(P(\text{preto em B}) > 0{,}5\) e preferir a Urna B na aposta em preto. A preferência simultânea pela Urna A em ambas as apostas revela uma aversão à **ambiguidade** — à falta de informação sobre as probabilidades — que vai além da aversão ao risco (Dhami 2016, p. 321–324).

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/ellsberg-urnas.html" title="Figura 8.3 — Paradoxo de Ellsberg" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.3 — Paradoxo de Ellsberg: duas urnas.** Visualize como a aversão à ambiguidade leva à preferência pela urna com probabilidades conhecidas.
</div>

### 8.3.3 Modelos de ambiguidade

O Paradoxo de Ellsberg estabelece o fenômeno empírico — a aversão à ambiguidade é real e robusta. Mas como formalizá-la? Que modelos matemáticos podem acomodar a preferência sistemática por probabilidades conhecidas sem abandonar completamente a estrutura da teoria da decisão? Diversas respostas foram propostas.

A aversão à ambiguidade motivou o desenvolvimento de vários modelos formais alternativos à UE de Savage:

- **Utilidade Esperada de Choquet (CEU):** aplica a RDU com capacidades não aditivas em vez de probabilidades, permitindo que as crenças do agente violem a aditividade (Dhami 2016, p. 324–326).
- **Maximin Expected Utility (MEU):** o agente considera um conjunto de distribuições de probabilidade possíveis e maximiza a utilidade esperada sob a distribuição mais pessimista (Gilboa e Schmeidler 1989).
- **Aversão à ambiguidade suave:** Klibanoff, Marinacci e Mukerji (2005) propõem um modelo em que o agente tem uma distribuição de segunda ordem sobre as probabilidades possíveis, avaliada por uma função côncava que captura a aversão à ambiguidade.

A conexão com a incerteza **knightiana** é direta. Knight (1921) distinguiu risco (probabilidades quantificáveis) de incerteza genuína (probabilidades não quantificáveis) precisamente porque reconheceu que os dois tipos de situações geram respostas comportamentais distintas. A sua intuição foi confirmada pelas evidências experimentais do paradoxo de Ellsberg e formalizou-se nos modelos de ambiguidade mencionados acima. Para a macroeconomia e as finanças, essa distinção é crucial: crises financeiras e recessões severas são frequentemente caracterizadas por um colapso da confiança nas próprias distribuições de probabilidade dos ativos — os agentes passam do estado de "risco" para o de "ambiguidade", e o comportamento muda qualitativamente. O aumento súbito dos spreads de crédito durante a crise financeira global de 2008-2009, ou durante a pandemia de Covid-19 em 2020, reflete parcialmente esse movimento: investidores não sabiam apenas *qual* cenário se materializaria, mas *quão confiáveis eram seus próprios modelos* para prever os possíveis cenários.

No Brasil, a instabilidade do marco regulatório e fiscal ao longo das últimas décadas cria um ambiente de ambiguidade persistente para investidores estrangeiros e domésticos. Quando as regras do jogo podem mudar de forma imprevisível — por via legislativa, por decisões judiciais ou por revisões de contratos —, a avaliação de risco usual (que pressupõe distribuições de probabilidade estacionárias) se torna inadequada. Os elevados spreads de crédito corporativo no Brasil, mesmo em períodos de inflação controlada, refletem em parte esse **prêmio de ambiguidade** que se sobrepõe ao prêmio de risco convencional.

!!! idea "Intuição Econômica"
    **Em uma frase:** Pessoas preferem riscos conhecidos a incertezas desconhecidas — mesmo quando as probabilidades objetivas são iguais.

    **Pense assim:** Você prefere apostar numa urna com 50 bolas vermelhas e 50 azuis (risco) ou numa urna com 100 bolas de proporção desconhecida (ambiguidade)? A maioria escolhe a primeira, mesmo que a melhor estimativa para a segunda também seja 50-50. A falta de informação sobre as probabilidades gera desconforto adicional.

    **Por que isso importa:** Em mercados financeiros, ativos com retornos difíceis de modelar carregam um **prêmio de ambiguidade** além do prêmio de risco. No Brasil, a imprevisibilidade da política fiscal e regulatória amplifica esse prêmio, contribuindo para os elevados spreads de crédito do mercado corporativo.

---

## 8.4 Preferências Sociais

Até aqui, discutimos como o agente erra ao avaliar riscos e probabilidades. Mas há uma suposição ainda mais básica que merece ser testada: a de que as pessoas *só se importam consigo mesmas*. Faça o teste: se alguém lhe oferecesse R$ 100, mas com a condição de que outra pessoa (que você não conhece) receba R$ 1.000, você aceitaria? A maioria aceita. Agora inverta: alguém recebe R$ 100, mas *você* ganha R$ 0. Justo? A maioria rejeita — mesmo que rejeitar signifique que *ninguém* recebe nada.

Esse resultado destruidor aparece em laboratório com a regularidade de um relógio. As pessoas *se importam* com a distribuição dos resultados, com a justiça e com as intenções dos outros. Essas **preferências sociais** — aversão à inequidade, reciprocidade, altruísmo punitivo — não são ruído: são padrões robustos que mudam equilíbrios de jogos e resultados de mercado.

A transição desta seção para as anteriores é relevante: nas Seções 8.2 e 8.3, os desvios comportamentais eram individuais — um único agente, tomando decisões sob risco ou ambiguidade, se afasta das previsões normativas. Aqui, entramos no domínio da interação estratégica, onde o comportamento de cada agente depende de suas crenças sobre os demais. Isso torna o fenômeno das preferências sociais duplamente interessante: ao mesmo tempo que desafia o pressuposto de autointeresse, conecta-se naturalmente à teoria dos jogos (Capítulo 14). A diferença é que, enquanto a teoria dos jogos padrão assume autointeresse e pergunta quais equilíbrios surgem, a economia comportamental das preferências sociais pergunta como os equilíbrios mudam quando os agentes se importam com a distribuição dos resultados e com as intenções alheias.

### 8.4.1 Evidência experimental: os jogos de laboratório

Três jogos experimentais formam a base empírica das preferências sociais (Dhami 2016, p. 384–404; Wilkinson e Klaes 2012, p. 397–420). A [Tabela 8.5](#tabela-8-5) sintetiza os resultados. O valor científico desses jogos de laboratório reside em sua **transparência estrutural**: as regras, os payoffs e os incentivos são conhecidos por todos os participantes e pelo experimentador. Isso permite isolar o papel das preferências dos demais fatores — informação assimétrica, reputação de longo prazo, normas legais — que normalmente tornam ambíguas as inferências sobre motivações em situações de campo.

**Jogo do Ultimato (Ultimatum Game).** Um proponente P divide uma quantia \(S\) com um respondedor R. P oferece \(x\) a R e fica com \(S - x\). R pode aceitar (ambos recebem os valores propostos) ou rejeitar (ambos recebem zero). O equilíbrio de Nash por indução retroativa prevê que P ofereça o mínimo possível e R aceite qualquer oferta positiva. Mas os resultados experimentais são sistematicamente diferentes:

- A oferta modal é de **40% a 50%** do bolo total (Güth, Schmittberger e Schwarze 1982).
- Ofertas abaixo de **20%** são rejeitadas em aproximadamente metade das vezes (Wilkinson e Klaes 2012, p. 416).
- Esses padrões são robustos a aumentos de *stakes*: mesmo com \(S = \text{US\$}\,400\), um quarto dos respondedores rejeitou ofertas de US\$ 100 (List e Cherry 2000).

**Jogo do Ditador (Dictator Game).** Idêntico ao jogo do ultimato, mas R não pode rejeitar — recebe passivamente o que P oferece. A previsão autointeressada é \(x = 0\). Na prática, ditadores oferecem em média **20%** do bolo (Forsythe et al. 1994), indicando algum grau de altruísmo genuíno (não motivado pelo medo de rejeição). Com duplo-anonimato, as ofertas caem para cerca de 10% (Hoffman et al. 1994).

**Jogo da Confiança (Trust Game).** O investidor I recebe uma dotação \(E\) e decide quanto enviar ao administrador A. O valor enviado é triplicado (representando os ganhos da cooperação). A então decide quanto devolver a I. O equilíbrio autointeressado prevê que A não devolva nada e, antecipando isso, I não envie nada. Na prática, investidores enviam em média **50%** de sua dotação, e administradores devolvem em média cerca de **1/3** do valor recebido — suficiente para gerar retorno positivo ao investidor em muitos casos (Berg, Dickhaut e McCabe 1995).

<a id="tabela-8-5"></a>

| Jogo | Previsão UE autointeressada | Resultado experimental típico |
|---|---|---|
| Ultimato | P oferece \(\approx 0\); R aceita qualquer \(x > 0\) | Oferta modal 40–50%; rejeição de ofertas \(< 20\%\) |
| Ditador | P oferece \(x = 0\) | Oferta média \(\approx 20\%\) |
| Confiança | I envia 0; A devolve 0 | I envia \(\approx 50\%\); A devolve \(\approx 33\%\) do recebido |
| Bens públicos (sem punição) | Contribuição = 0 | Contribuição inicial \(\approx 40{-}60\%\); decai com repetição |
| Bens públicos (com punição) | Contribuição = 0 | Contribuição estável \(\approx 50{-}80\%\) |

<div class="caption-obj" markdown>
**Tabela 8.5 — Resultados experimentais vs. previsão autointeressada.**
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** No jogo do ultimato, as pessoas rejeitam ofertas "injustas" mesmo perdendo dinheiro — porque a dor da desigualdade supera o benefício monetário da aceitação.

    **Pense assim:** Imagine que alguém vai dividir R\$ 200 com você. Ela fica com R\$ 170 e oferece R\$ 30 para você. Você aceita? A teoria padrão diz "sim, R\$ 30 > R\$ 0". Mas a maioria das pessoas rejeita — R\$ 30 de uma divisão de R\$ 200 (15%) é percebido como uma afrontação, e a dor de aceitar algo "injusto" supera o ganho de R\$ 30. Esse mesmo mecanismo aparece em negociações salariais: trabalhadores rejeitam propostas que percebem como desvantajosas em relação aos colegas, mesmo que o salário em valor absoluto seja adequado.

    **Por que isso importa:** O equilíbrio de Nash por indução retroativa prevê que qualquer oferta positiva seja aceita — mas essa previsão falha sistematicamente. Qualquer modelo de barganha aplicado a negociações trabalhistas, contratos públicos ou fusões corporativas precisa levar em conta que os agentes reais têm um "preço da dignidade" — um limiar abaixo do qual preferem o impasse à capitulação.

!!! box-brasil "Box Brasil — Preferências sociais e informalidade fiscal"
    A alta tolerância à informalidade fiscal no Brasil pode ser interpretada à luz das preferências sociais. Quando os contribuintes percebem que o sistema tributário é **inequitativo** — com altas alíquotas sobre o trabalho formal e baixa tributação sobre lucros e dividendos —, a reciprocidade negativa pode reduzir a disposição a pagar impostos. Pesquisas de opinião do Ipea indicam que a percepção de injustiça fiscal é um dos principais fatores associados à tolerância com a evasão tributária. O modelo de Fehr-Schmidt (Seção 8.4.2) prevê exatamente esse padrão: agentes com alta aversão à desvantagem (\(\alpha_i\) elevado) podem preferir a "punição" de não cooperar a aceitar uma distribuição percebida como injusta.

### 8.4.2 O modelo de Fehr-Schmidt (aversão à inequidade)

Os experimentos da subseção anterior documentam o fenômeno — as pessoas se importam com a justiça distributiva. Mas como incorporar essas preferências em um modelo formal que gere previsões testáveis? É necessário ir além da observação empírica e construir uma função de utilidade que capture a aversão à desigualdade de forma tratável e elegante.

O modelo de Fehr-Schmidt tem um mérito metodológico crucial: é parcimoniosa. Adiciona apenas dois parâmetros (\(\alpha_i\) e \(\beta_i\)) ao modelo padrão e, com isso, explica um conjunto muito amplo de resultados experimentais. Essa parcimônia não é cosmética — quanto mais parâmetros um modelo tem, mais fácil é ajustá-lo a dados já observados, mas menor é seu poder preditivo para novos contextos. A robustez do modelo de Fehr-Schmidt, confirmada em inúmeros estudos de replicação e em contextos culturais muito distintos, sugere que a aversão à inequidade é um traço humano genuinamente universal, ainda que com variações quantitativas entre populações e contextos.

Fehr e Schmidt (1999) formalizaram as preferências sociais com um modelo elegante de **aversão à inequidade**. Em um grupo de \(n\) jogadores com payoffs \(y_1, y_2, \ldots, y_n\), a utilidade do jogador \(i\) é:

\[
U_i(\mathbf{y}) = y_i - \frac{\alpha_i}{n-1} \sum_{j \neq i} \max(y_j - y_i,\, 0) - \frac{\beta_i}{n-1} \sum_{j \neq i} \max(y_i - y_j,\, 0)
\label{eq:8.4} \tag{8.4}
\]

onde:

- \(\alpha_i \geq 0\) mede a **aversão à inequidade desvantajosa** (a dor de ganhar menos que os outros).
- \(0 \leq \beta_i < 1\) mede a **aversão à inequidade vantajosa** (o desconforto de ganhar mais que os outros).
- Na equação $\eqref{eq:8.4}$, a restrição \(\beta_i \leq \alpha_i\) garante que a inequidade desvantajosa dói mais que a vantajosa — as pessoas sofrem mais quando estão "por baixo" do que quando estão "por cima".

!!! definition "Aversão à inequidade (Fehr-Schmidt)"
    O modelo de Fehr-Schmidt assume que os agentes comparam seus payoffs com os dos demais membros do grupo de referência. A utilidade diminui tanto quando o agente ganha menos que os outros (**inequidade desvantajosa**, ponderada por \(\alpha_i\)) quanto quando ganha mais (**inequidade vantajosa**, ponderada por \(\beta_i\)). A restrição \(\beta_i < \alpha_i\) reflete a assimetria empírica: o ressentimento de ficar atrás é mais forte que a culpa de ficar à frente.

**Aplicação ao jogo do ultimato (caso de 2 jogadores).** Com \(n = 2\), a utilidade do respondedor R ao aceitar uma oferta \(x\) de um bolo \(S\) é:

\[
U_R(\text{aceitar}) = x - \alpha_R \max(S - 2x,\, 0) - \beta_R \max(2x - S,\, 0)
\]

Se \(x < S/2\) (oferta abaixo da metade), a inequidade é desvantajosa: \(U_R = x - \alpha_R(S - 2x) = x(1 + 2\alpha_R) - \alpha_R S\). O respondedor rejeita se \(U_R < 0\), ou seja, se:

\[
x < \frac{\alpha_R}{ 1 + 2\alpha_R} \cdot S
\label{eq:8.5} \tag{8.5}
\]

Com \(\alpha_R = 1\), o limiar é \(x^* = S/3\) — ofertas abaixo de 33% são rejeitadas. Com \(\alpha_R = 4\), o limiar sobe para \(x^* \approx 0{,}44 \cdot S\). O modelo prevê corretamente que respondedores com maior aversão à desvantagem exigem ofertas mais generosas.

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/fehr-schmidt.html" title="Figura 8.4 — Modelo Fehr-Schmidt" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.4 — Utilidade de Fehr-Schmidt para dois jogadores.** Ajuste os parâmetros de aversão à desigualdade desvantajosa e vantajosa para observar o efeito sobre a utilidade.
</div>

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/ultimatum-game.html" title="Figura 8.5 — Jogo do Ultimato" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.5 — Jogo do ultimato: decisão do respondedor com preferências de Fehr-Schmidt.** Observe como a aversão à inequidade determina o limiar de rejeição.
</div>

??? exercicio-resolvido "Exercício Resolvido 8.2 — Fehr-Schmidt no jogo do ultimato"
    **Enunciado:** Em um jogo do ultimato com bolo \(S = 100\), o respondedor R tem parâmetros de Fehr-Schmidt \(\alpha_R = 2\) e \(\beta_R = 0{,}4\). (a) Qual é a oferta mínima que R aceita? (b) Se o proponente P tem \(\alpha_P = 0{,}5\) e \(\beta_P = 0{,}3\), qual é a oferta que maximiza a utilidade de P, sabendo que P conhece os parâmetros de R?

    **Dados:** \(S = 100\), \(\alpha_R = 2\), \(\beta_R = 0{,}4\), \(\alpha_P = 0{,}5\), \(\beta_P = 0{,}3\).

    **Resolução:**

    **Passo 1 — Oferta mínima aceita por R**

    R aceita se \(U_R \geq 0\). Para \(x < 50\): \(U_R = x(1 + 2\alpha_R) - \alpha_R S = x(1 + 4) - 200 = 5x - 200\).

    \(5x - 200 \geq 0 \implies x \geq 40\).

    Oferta mínima aceita: \(x^* = 40\) (ou seja, 40% do bolo).

    **Passo 2 — Oferta ótima de P**

    P fica com \(S - x = 100 - x\) e sua utilidade (para \(x \leq 50\)) é:

    \(U_P = (100 - x) - \beta_P \cdot ((100 - x) - x) = (100 - x) - 0{,}3(100 - 2x) = (100 - x) - 30 + 0{,}6x = 70 - 0{,}4x\)

    \(U_P\) é decrescente em \(x\), então P quer oferecer o **mínimo** aceito: \(x = 40\).

    **Resultado:** P oferece 40 e fica com 60. Ambos aceitam.

    \(U_P = 70 - 0{,}4 \times 40 = 54\); \(U_R = 5 \times 40 - 200 = 0\) (indiferente, aceita).

    **Interpretação econômica:** A aversão à inequidade eleva a oferta de equilíbrio de \(\approx 0\) (previsão autointeressada) para 40% do bolo — próximo aos valores observados experimentalmente. O modelo de Fehr-Schmidt explica *por que* proponentes fazem ofertas "justas" sem precisar assumir altruísmo: a ameaça crível de rejeição por respondedores avessos à inequidade disciplina os proponentes.

### 8.4.3 Reciprocidade e cooperação

O modelo de Fehr-Schmidt é um avanço importante, mas captura apenas a preocupação com a **distribuição final** dos resultados. Na prática, as pessoas também se importam com as *intenções* por trás das ações alheias: reagimos de forma diferente a uma oferta baixa feita por um computador e à mesma oferta feita por uma pessoa que sabemos estar agindo estrategicamente. Essa sensibilidade às intenções é o domínio da reciprocidade.

O modelo de Fehr-Schmidt captura a aversão à **desigualdade de resultados**, mas não explica completamente a **reciprocidade** — a tendência a recompensar comportamento cooperativo e punir comportamento injusto, mesmo a um custo pessoal. Fehr e Gächter (2000) demonstraram o poder da reciprocidade em **jogos de bens públicos com punição**: quando os participantes podem punir (a um custo para si mesmos) jogadores que contribuem pouco, as contribuições ao bem público sobem de níveis baixos e declinantes (sem punição) para níveis altos e estáveis.

Essa disposição à **punição altruísta** — pagar um custo para punir quem viola normas sociais — é difícil de explicar pelo autointeresse, mas emerge naturalmente de modelos que combinam aversão à inequidade com reciprocidade (Dhami 2016, p. 466–478).

As implicações para o mercado de trabalho são especialmente importantes. Akerlof (1982) havia proposto o modelo de **salário-eficiência**: trabalhadores que percebem seu salário como "justo" — acima do que o mercado exigiria como mínimo — respondem com maior esforço e lealdade, não por altruísmo puro, mas por reciprocidade. A firma faz uma "dádiva" ao trabalhador (salário acima do equilíbrio), e o trabalhador responde com uma "contradádiva" (esforço acima do mínimo contratável). Nesse modelo, os salários não caem até o equilíbrio walrasiano mesmo com desemprego, porque fazê-lo destruiria a reciprocidade e reduziria a produtividade.

A reciprocidade também tem implicações para o design de contratos de incentivo. Contratos de alto-monitoramento — câmeras, relatórios detalhados, métricas granulares de desempenho — podem transmitir a mensagem de que o empregador não confia no trabalhador, ativando reciprocidade negativa e reduzindo a motivação intrínseca. Fehr, Herz e Wilkening (2013) mostraram experimentalmente que contratos com forte controle externo podem ser menos eficientes do que contratos com menor monitoramento, porque destroem a reciprocidade positiva e substituem motivação intrínseca por motivação extrínseca. Essa tensão entre contratos formais e normas informais de reciprocidade é central para entender por que organizações bem-sucedidas muitas vezes dependem mais de cultura corporativa do que de sistemas de incentivo explícitos.

!!! idea "Intuição Econômica"
    **Em uma frase:** Reciprocidade positiva (recompensar cooperação) e negativa (punir deserção) criam um mecanismo descentralizado de imposição de normas — mais eficaz que contratos formais em comunidades pequenas.

    **Pense assim:** Num condomínio, o vizinho que sempre limpa a churrasqueira ganha convites para festas (reciprocidade positiva). O que nunca ajuda é excluído do grupo de WhatsApp (reciprocidade negativa). Ninguém precisa de contrato formal — a pressão social sustenta a cooperação.

    **Por que isso importa:** Henrich et al. (2001) mostraram que sociedades com maior integração de mercado exibem mais cooperação em jogos experimentais. Entender preferências sociais é essencial para desenhar mecanismos que funcionem com seres humanos reais, não com *homo economicus*.

---

## 8.5 Escolha Intertemporal e Desconto Hiperbólico

Agora vem o domínio onde o ser humano mais tropeça — e onde as consequências são mais dolorosas: o **tempo**. Você *sabe* que deveria poupar para a aposentadoria, mas gasta o bônus num iPhone. Você *sabe* que deveria estudar para a prova, mas assiste mais um episódio. Você *planeja* começar a dieta na segunda-feira — e na segunda-feira, planeja começar na *próxima* segunda. Esse padrão universal — querer uma coisa para o futuro e fazer outra no presente — é o **viés do presente**, e a microeconomia tem um modelo para ele.

O custo desse viés não é uma curiosidade de laboratório: é gente chegando aos 65 anos sem previdência, famílias afogadas no rotativo do cartão, e pacientes que não tomam remédio para hipertensão porque "agora" não dói. É o domínio onde a economia comportamental tem o impacto prático mais direto — e onde as intervenções de política (nudges) têm os resultados mais documentados.

### 8.5.1 O Modelo de Utilidade Descontada

O modelo formal de consumo intertemporal com desconto exponencial — incluindo a restrição orçamentária intertemporal, a equação de Euler e o Valor Presente Líquido — é desenvolvido no Capítulo 18.

O modelo padrão de escolha intertemporal — o **Modelo de Utilidade Descontada** (DUM), proposto por Samuelson (1937) — assume que os agentes avaliam fluxos de utilidade futura usando uma taxa de desconto **constante** \(\delta \in (0,1)\). É importante notar que Samuelson, ao propor o modelo, foi explicitamente cético sobre sua validade psicológica — ele o apresentou como uma conveniência analítica, não como uma descrição fiel do comportamento humano. Não obstante, o DUM tornou-se o paradigma dominante em macroeconomia e finanças, e suas implicações comportamentais — em particular, a consistência temporal — passaram a ser tratadas como referência normativa.

\[
U_0 = \sum_{t=0}^{T} \delta^t \, u(c_t)
\label{eq:8.6} \tag{8.6}
\]

A principal implicação comportamental do desconto exponencial é a **consistência temporal**: se o agente prefere a opção A à B quando ambas ocorrem no futuro, essa preferência se mantém quando o momento da decisão se aproxima. Em outras palavras, um agente exponencial nunca muda de ideia simplesmente porque o tempo passou — seus planos são confiáveis. Formalmente, se \(u(A)\) em \(t\) é preferido a \(u(B)\) em \(t+k\), então a mesma preferência vale para qualquer data de avaliação anterior.

### 8.5.2 Anomalias do desconto exponencial

A consistência temporal é uma propriedade poderosa — e, como se verifica, frequentemente violada. Você já prometeu a si mesmo que começaria a poupar "no mês que vem", e quando o mês chegou, adiou de novo? Ou que faria exercício pela manhã, mas quando o despertador tocou, preferiu dormir? Esses padrões não são anedóticos: eles refletem regularidades empíricas documentadas em dezenas de estudos.

Wilkinson e Klaes (2012, p. 282–297) e Frederick, Loewenstein e O'Donoghue (2002) documentam diversas anomalias que o desconto exponencial não consegue explicar:

1. **Taxas de desconto decrescentes com o horizonte.** Em experimentos, a taxa de desconto implícita entre hoje e amanhã é muito maior do que entre daqui a 30 e 31 dias — embora o intervalo seja o mesmo.

2. **Efeito magnitude.** Valores grandes são descontados a taxas menores do que valores pequenos.

3. **Assimetria ganhos-perdas.** Ganhos futuros são descontados mais fortemente do que perdas futuras.

4. **Preferências reversíveis.** Um agente pode preferir R\$ 100 hoje a R\$ 110 amanhã, mas preferir R\$ 110 em 31 dias a R\$ 100 em 30 dias — uma inversão que o desconto exponencial não permite.

!!! example "As maçãs de Thaler"
    Richard Thaler propôs o seguinte experimento mental: a maioria das pessoas prefere **1 maçã hoje** a **2 maçãs amanhã**, mas prefere **2 maçãs em 51 dias** a **1 maçã em 50 dias**. Essa inversão de preferência revela uma taxa de desconto decrescente — alta para o presente imediato, baixa para o futuro distante.

### 8.5.3 Desconto quasi-hiperbólico

Diante dessas anomalias, como construir um modelo que capture o viés do presente mantendo a tratabilidade analítica? A resposta mais influente é o desconto quasi-hiperbólico, que modifica o modelo exponencial de maneira mínima — adicionando um único parâmetro — mas com consequências profundas para as previsões de comportamento.

Para capturar o viés do presente sem abandonar completamente a tratabilidade do modelo exponencial, Laibson (1997) — com base em Phelps e Pollak (1968) — propôs o modelo de desconto **quasi-hiperbólico**.

!!! definition "Desconto quasi-hiperbólico (β-δ)"
    O modelo de desconto **quasi-hiperbólico** (\(\beta\)-\(\delta\)) modifica o DUM introduzindo um parâmetro adicional \(\beta \in (0,1)\) que captura o **viés do presente**:

    \[
    U_0 = u(c_0) + \beta \sum_{t=1}^{T} \delta^t \, u(c_t)
    \label{eq:8.7} \tag{8.7}
    \]

    O fator \(\beta\) aplica um desconto **extra** a todos os períodos futuros em relação ao presente, criando uma "fronteira psicológica" entre o hoje e tudo que vem depois. Quando \(\beta = 1\), o modelo se reduz ao desconto exponencial. Para qualquer \(\beta < 1\), o desconto entre o período presente e o primeiro período futuro é desproporcionalmente grande — esse é o viés do presente. Valores típicos estimados na literatura são \(\beta \approx 0{,}70\) e \(\delta \approx 0{,}99\).

    A taxa de desconto *implícita* entre os períodos \(t\) e \(t+1\) é \(\delta\) para \(t \geq 1\), mas \(\beta\delta\) entre \(t = 0\) e \(t = 1\). Como \(\beta\delta < \delta\), o agente desconta mais intensamente a transição do presente para o futuro do que qualquer outra transição intertemporal. Isso gera a taxa de desconto decrescente com o horizonte que caracteriza o desconto hiperbólico.

Os **fatores de desconto** para os períodos futuros são:

<a id="tabela-8-6"></a>

| Período | Exponencial | Quasi-hiperbólico |
|---|---|---|
| \(t = 0\) | \(1\) | \(1\) |
| \(t = 1\) | \(\delta\) | \(\beta\delta\) |
| \(t = 2\) | \(\delta^2\) | \(\beta\delta^2\) |
| \(t = s\) | \(\delta^s\) | \(\beta\delta^s\) |

<div class="caption-obj" markdown>
**Tabela 8.6 — Fatores de desconto exponencial e quasi-hiperbólico.**
</div>

A diferença crucial é que a queda no fator de desconto entre \(t=0\) e \(t=1\) é proporcionalmente muito maior (\(\beta\delta\) vs. 1) do que entre quaisquer dois períodos futuros consecutivos (\(\beta\delta^{t+1}/\beta\delta^t = \delta\)). Isso gera o viés do presente e permite preferências reversíveis.

A tabela a seguir resume estimativas dos parâmetros \(\beta\) e \(\delta\) em diferentes estudos:

<a id="tabela-8-7"></a>

| Estudo | Contexto | \(\beta\) | \(\delta\) (anual) |
|---|---|---|---|
| Laibson (1997) | Calibração poupança EUA | 0,70 | 0,99 |
| Angeletos et al. (2001) | Dados riqueza famílias EUA | 0,70 | 0,96 |
| Paserman (2008) | Busca de emprego | 0,40–0,90 | 0,99 |
| Augenblick, Niederle e Sprenger (2015) | Experimento tarefas reais | 0,75 | 0,99 |
| Frederick, Loewenstein e O'Donoghue (2002) | Meta-análise | 0,20–0,80 | 0,90–0,99 |

<div class="caption-obj" markdown>
**Tabela 8.7 — Estimativas dos parâmetros de desconto quasi-hiperbólico.**
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** O modelo \((\beta, \delta)\) captura a "fronteira psicológica" entre agora e tudo que vem depois — o futuro como um todo é descontado extra, mas dentro do futuro o desconto é normal.

    **Pense assim:** "Vou começar a dieta na segunda" é fácil de dizer na sexta — segunda e terça parecem igualmente distantes. Mas quando segunda chega e tem bolo no escritório, o presente ganha peso desproporcional. O \(\beta < 1\) é esse "puxão gravitacional" do agora.

    **Por que isso importa:** O desconto hiperbólico explica por que pessoas aderem a planos de previdência com desconto em folha (mecanismo de comprometimento) e por que políticas de "opt-out" — como a inscrição automática no FGTS — são mais eficazes que "opt-in" para promover poupança.

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/funcoes-desconto.html" title="Figura 8.6 — Funções de Desconto" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.6 — Funções de desconto: exponencial vs quasi-hiperbólico.** Compare a taxa de desconto constante do modelo exponencial com o viés do presente capturado pelo parâmetro \(\beta\).
</div>

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/indiferenca-intertemporal.html" title="Figura 8.7 — Indiferença Intertemporal" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.7 — Curvas de indiferença intertemporal: consumo presente \(c_0\) vs consumo futuro \(c_1\).** Visualize como o desconto quasi-hiperbólico altera a forma das curvas em relação ao modelo exponencial.
</div>

??? exercicio-resolvido "Exercício Resolvido 8.3 — Desconto quasi-hiperbólico e preferências reversíveis"
    **Enunciado:** Um consumidor com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}95)\) e utilidade linear \(u(x) = x\) pode escolher entre dois bônus salariais: **Bônus A**, que paga R\$ 1.000 no mês 6, e **Bônus B**, que paga R\$ 1.200 no mês 7. (a) Qual bônus o consumidor prefere quando avaliado em \(t = 0\)? (b) Qual bônus ele prefere quando avaliado em \(t = 6\) (isto é, quando o pagamento de A é iminente)? (c) Essa preferência é consistente ao longo do tempo?

    **Dados:** \(\beta = 0{,}70\), \(\delta = 0{,}95\), \(u(x) = x\).

    **Resolução:**

    **Passo 1 — Avaliação em \(t = 0\)**

    Ambos os bônus estão no futuro (\(t \geq 1\)), então o fator \(\beta\) se aplica a ambos:

    - \(U_0(A) = \beta \delta^6 \times 1000 = 0{,}70 \times 0{,}95^6 \times 1000 = 0{,}70 \times 0{,}7351 \times 1000 = 514{,}57\)
    - \(U_0(B) = \beta \delta^7 \times 1200 = 0{,}70 \times 0{,}95^7 \times 1200 = 0{,}70 \times 0{,}6983 \times 1200 = 586{,}59\)

    Como \(U_0(B) > U_0(A)\), o consumidor prefere **B** em \(t = 0\).

    **Passo 2 — Avaliação em \(t = 6\)**

    Agora o Bônus A é imediato (\(t = 0\) na perspectiva do mês 6) e o Bônus B está 1 período adiante:

    - \(U_6(A) = u(1000) = 1000\)
    - \(U_6(B) = \beta \delta^1 \times 1200 = 0{,}70 \times 0{,}95 \times 1200 = 798{,}00\)

    Como \(U_6(A) > U_6(B)\), o consumidor agora prefere **A** em \(t = 6\).

    **Passo 3 — Diagnóstico de inconsistência**

    As preferências se inverteram: B em \(t = 0\), mas A em \(t = 6\). Essa **reversão de preferência** é impossível sob desconto exponencial (onde \(\beta = 1\)), mas é o resultado natural do viés do presente \((\beta < 1)\).

    **Resultado:** O consumidor planeja escolher B, mas quando chega o mês 6, escolhe A. A preferência é **temporalmente inconsistente**.

    **Interpretação econômica:** Esse padrão é análogo ao comportamento observado em decisões de poupança previdenciária no Brasil: o trabalhador planeja aderir ao PGBL/VGBL "no mês que vem", mas quando o mês chega, o custo imediato (redução do salário líquido) domina o benefício futuro (aposentadoria mais confortável). A inconsistência temporal justifica políticas de adesão automática como a da Funpresp.

### 8.5.4 Autocontrole e estratégias de compromisso

O desconto quasi-hiperbólico prevê que os agentes tomarão decisões das quais se arrependerão — consumirão demais hoje, pouparão de menos, procrastinarão tarefas importantes. Mas será que os agentes são cegos a esse padrão, ou alguns deles reconhecem sua própria fragilidade e tentam se proteger de si mesmos? A resposta a essa pergunta nos leva ao fascinante tema do autocontrole.

Se os agentes reconhecem seu viés do presente, podem adotar **estratégias de compromisso** (*commitment devices*) para restringir seu comportamento futuro:

- **Poupança automática com desconto em folha:** ao aderir a um plano de previdência com desconto automático, o agente remove a decisão de poupar do âmbito da tentação cotidiana.
- **Metas públicas:** declarar publicamente uma meta (como parar de fumar) cria um custo reputacional para o descumprimento.
- **Restrições físicas:** o despertador Clocky, que foge da mesa de cabeceira quando o alarme toca, é um exemplo literal de compromisso — o "eu da noite" sabe que o "eu da manhã" vai querer apertar o soneca.

Essa tensão entre o eu presente e o eu futuro pode ser modelada como um **jogo intrapessoal** entre múltiplos "eus" sequenciais (Thaler e Shefrin 1981). O eu do período \(t\) maximiza a utilidade quasi-hiperbólica, mas sabe que o eu do período \(t+1\) fará o mesmo — e cada "versão futura" terá seu próprio viés do presente.

Agentes que reconhecem sua inconsistência temporal são chamados **sofisticados**; agentes que (erroneamente) acreditam que suas preferências futuras serão consistentes são chamados **ingênuos** (*naïfs*). Sofisticados buscam compromissos; ingênuos procrastinam repetidamente. O'Donoghue e Rabin (1999) mostraram formalmente que a procrastinação é mais severa para agentes ingênuos, enquanto sofisticados podem sofrer de **preproperation** — realizar tarefas desagradáveis cedo demais por medo de não fazê-las depois (Dhami 2016, p. 704–710).

No contexto brasileiro, as estratégias de compromisso aparecem de forma particularmente clara em dois produtos financeiros. Primeiro, o **crédito consignado**: ao contratar um empréstimo com desconto automático em folha de pagamento, o trabalhador — paradoxalmente — pode estar usando o crédito como mecanismo de compromisso de poupança forçada. A lógica é a seguinte: ao tomar um empréstimo consignado, o trabalhador recebe hoje (resolve o problema do viés do presente imediato) e amortiza por débito automático nos meses seguintes (remove a tentação de não pagar). Para muitos trabalhadores com acesso limitado a crédito convencional, o consignado funciona como um instrumento de suavização de consumo que, paradoxalmente, se torna mais atrativo quanto mais pronunciado for o viés do presente. Segundo, a **previdência complementar de servidores públicos federais (Funpresp)**: quando a reforma previdenciária criou a Funpresp em 2013, novos servidores passaram a ser automaticamente inscritos no plano complementar. Essa adesão automática com *opt-out* é precisamente um nudge direcionado ao viés do presente — remove do servidor a decisão ativa de poupar, que seria sistematicamente postergada por agentes ingênuos com \(\beta < 1\). A lógica é a mesma do estudo clássico de Madrian e Shea (2001) sobre 401(k) nos EUA: o *default* faz o trabalho que a disciplina individual não faz.

A distinção entre agentes sofisticados e ingênuos tem implicações práticas para o design de políticas. Nudges como a adesão automática são igualmente eficazes para ambos os tipos — tanto o agente que reconhece seu viés quanto o que não reconhece ficam no plano se o *default* for "aderir". Porém, mecanismos de compromisso mais sofisticados — como o *Save More Tomorrow*, em que o trabalhador se compromete a destinar aumentos salariais futuros à poupança — exigem um grau de sofisticação: o agente precisa reconhecer que seu "eu futuro" precisará de ajuda. Políticas bem calibradas combinam nudges universais (que funcionam para todos) com opções de compromisso voluntário (que beneficiam os sofisticados).

!!! box-brasil "Box Brasil — Crédito rotativo e viés do presente"
    O crédito rotativo do cartão de crédito no Brasil cobra taxas de juros que figuram entre as mais altas do mundo — segundo dados do Banco Central do Brasil, a taxa média do rotativo superou 400% ao ano em diversos momentos recentes. Muitos consumidores, ao optar por pagar apenas o valor mínimo da fatura, subestimam o custo total acumulado das parcelas futuras. Esse comportamento é consistente com o desconto quasi-hiperbólico: o alívio imediato de não pagar a fatura integral (benefício no período \(t = 0\)) é sobrevalorizado em relação ao custo dos juros compostos nos períodos seguintes (descontados por \(\beta\delta^t\) com \(\beta < 1\)). A Lei do Superendividamento (Lei nº 14.181/2021) reconheceu implicitamente esse padrão ao criar mecanismos de renegociação e preservação do mínimo existencial.

!!! box-mundo "Box Mundo 8.3 — Nudges na poupança previdenciária ao redor do mundo: auto-enrollment e o viés do presente como ferramenta de política"

    **Contexto:** A Seção 8.5 mostrou que o desconto quasi-hiperbólico (\(\beta < 1\)) gera procrastinação sistemática em decisões de poupança: o agente planeja poupar "amanhã", mas quando amanhã chega, o viés do presente o impede novamente. Esse padrão tem consequências macroeconômicas profundas: populações inteiras chegam à aposentadoria com poupança insuficiente, pressionando sistemas previdenciários públicos já sobrecarregados pelo envelhecimento demográfico. A resposta de política pública mais bem-sucedida para esse problema é a **inscrição automática** (*auto-enrollment*) em planos de poupança previdenciária — um nudge que explora a mesma inércia e viés do *status quo* que causam a subpoupança para, paradoxalmente, promover poupança adequada.

    **Dados:** O caso paradigmático é o dos planos 401(k) nos Estados Unidos. Madrian e Shea (2001, *Quarterly Journal of Economics*) documentaram que a mudança de opt-in para opt-out em uma grande empresa americana elevou a taxa de adesão de novos funcionários de 49% para 86% — um aumento de 37 pontos percentuais sem qualquer alteração na remuneração ou nos incentivos fiscais. Choi et al. (2004, *NBER Working Paper*) replicaram o resultado em múltiplas empresas e mostraram que o efeito persiste ao longo do tempo. No Reino Unido, o programa *NEST* (*National Employment Savings Trust*), implementado a partir de 2012, tornou a inscrição automática obrigatória para todos os empregadores. O Department for Work and Pensions (2023) reporta que o número de trabalhadores do setor privado com poupança previdenciária ativa passou de 2,7 milhões em 2012 para 19,4 milhões em 2022 — um aumento de mais de 600%. A taxa de opt-out permaneceu estável em torno de 9%, confirmando o poder da inércia. Na Nova Zelândia, o programa KiwiSaver (2007) combina inscrição automática com contribuição paritária do empregador e subsídio governamental, atingindo cobertura de 82% da população empregada até 2023 (IRD New Zealand). Na Turquia, a introdução de auto-enrollment em planos de previdência privada em 2017 triplicou o número de participantes no primeiro ano (OECD, 2019). O programa *Save More Tomorrow* (SMarT), desenhado por Thaler e Benartzi (2004), vai além: convida trabalhadores a comprometer aumentos salariais *futuros* à poupança, contornando simultaneamente o viés do presente (o sacrifício é futuro, não imediato) e a aversão à perda (o salário líquido nunca diminui). Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais consecutivos.

    **Análise:** Os resultados globais do auto-enrollment são uma validação empírica direta do modelo de desconto quasi-hiperbólico da Seção 8.5.3. Se os agentes tivessem desconto exponencial (\(\beta = 1\)), a mudança do default não deveria afetar significativamente a adesão — um agente racional com preferências consistentes aderiria ou não ao plano independentemente da opção pré-selecionada, pois o custo de fazer opt-in ou opt-out é trivial. O fato de que a mudança de default gera diferenças de 37 a 50 pontos percentuais na adesão revela que a inércia decisória — produto do viés do presente e do *status quo bias* — é quantitativamente dominante. O auto-enrollment funciona porque explora os próprios vieses que causam o problema: a mesma inércia que impediria o agente de aderir ativamente (opt-in) agora o impede de sair (opt-out). A lição para a política previdenciária brasileira é direta: a Funpresp adota esse princípio para servidores federais, mas o setor privado brasileiro ainda opera predominantemente sob regime de opt-in, sugerindo que há espaço significativo para elevar a cobertura previdenciária complementar via mudança de default — sem custo fiscal adicional e sem restrição de liberdade.

    **Fonte:** Madrian, B. C.; Shea, D. F. (2001). The power of suggestion: Inertia in 401(k) participation and savings behavior. *Quarterly Journal of Economics*, 116(4), 1149–1187. Thaler, R. H.; Benartzi, S. (2004). Save More Tomorrow: Using behavioral economics to increase employee saving. *Journal of Political Economy*, 112(S1), S164–S187. UK Department for Work and Pensions (2023). *Automatic Enrolment Evaluation Report 2023*. OECD (2019). *Pensions at a Glance 2019*. Paris: OECD Publishing.

---

## 8.6 Nudges e Arquitetura de Escolhas

Chegamos à seção mais prática do capítulo — e talvez a mais controversa. As seções anteriores mostraram que erramos de formas previsíveis: distorcemos probabilidades, odiamos perdas mais do que amamos ganhos, punimos injustiça mesmo a nosso custo e sacrificamos o futuro pelo presente. Diante disso, o que fazer? Proibir escolhas ruins (paternalismo)? Deixar que cada um se vire (laissez-faire)? Ou existe uma terceira via — que use os *próprios vieses* a favor das pessoas?

As respostas tradicionais oscilam entre dois extremos. O **paternalismo duro** — proibir cigarros, limitar o acesso ao crédito rotativo, tornar compulsória a contribuição previdenciária — é eficaz, mas restringe a liberdade individual e pode ser politicamente impraticável em democracias liberais. O **laissez-faire informacional** — fornecer mais e melhor informação e deixar que os agentes decidam — respeita a autonomia, mas frequentemente falha porque o problema não é falta de informação, mas a forma como o cérebro processa informação. A contribuição fundamental de Thaler e Sunstein (2008) foi mostrar que existe uma terceira via: preservar a liberdade de escolha enquanto se usa o que sabemos sobre psicologia humana para tornar as escolhas mais fáceis de acertar.

### 8.6.1 Paternalismo libertário

A resposta proposta por Thaler e Sunstein é o **paternalismo libertário** — uma filosofia que aceita os vieses como dado e busca utilizá-los a favor dos próprios agentes. A ferramenta central dessa abordagem é o *nudge*.

!!! definition "Nudge"
    Um **nudge** é qualquer aspecto da **arquitetura de escolha** que altera o comportamento das pessoas de forma previsível, sem proibir nenhuma opção nem alterar significativamente os incentivos econômicos. Para contar como nudge, a intervenção deve ser fácil e barata de evitar (Thaler e Sunstein 2008).

A filosofia por trás dos nudges é o **paternalismo libertário**: libertário porque preserva a liberdade de escolha; paternalista porque direciona as decisões no sentido do bem-estar do próprio agente (conforme julgado por ele mesmo em condições de reflexão cuidadosa).

### 8.6.2 Ferramentas de nudging

Como traduzir a filosofia do paternalismo libertário em intervenções concretas? As principais ferramentas de nudging exploram precisamente os vieses documentados nas seções anteriores — a mesma inércia que impede as pessoas de poupar pode ser usada a seu favor, bastando mudar a opção-padrão:

**Default options (opções-padrão).** A inércia e o viés do *status quo* fazem com que a maioria das pessoas aceite a opção pré-selecionada. Mudar o *default* de "opt-in" para "opt-out" pode ter efeitos dramáticos.

!!! example "Save More Tomorrow (SMarT)"
    O programa *Save More Tomorrow*, desenhado por Thaler e Benartzi (2004), convida trabalhadores a se comprometer, **hoje**, a destinar uma fração de seus **aumentos salariais futuros** à poupança previdenciária. Como o sacrifício é futuro (e não imediato), a taxa de adesão é alta. Além disso, a aversão à perda é atenuada porque o trabalhador nunca vê sua renda líquida diminuir — apenas cresce menos. Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais.

A tabela a seguir organiza as principais ferramentas de nudging:

<a id="tabela-8-8"></a>

| Tipo de nudge | Viés explorado | Mecanismo | Exemplo | Evidência |
|---|---|---|---|---|
| Opção-padrão (*default*) | *Status quo*, inércia | Pré-selecionar a opção desejável | Adesão automática 401(k) | 49% → 86% (Madrian e Shea 2001) |
| Framing / simplificação | Efeito framing | Alterar a forma de apresentação | Rótulos semáforo em alimentos | Melhora na qualidade da dieta |
| Feedback e saliência | Disponibilidade | Tornar consequências visíveis | Conta de energia com emoji | Redução de 2% no consumo |
| Normas sociais | Conformidade | Informar sobre comportamento de pares | "90% pagam IPTU em dia" | Aumento de 5–15% na conformidade |
| Compromisso prévio | Viés do presente | Vincular decisão futura agora | *Save More Tomorrow* | Poupança 3,5% → 13,6% |
| Simplificação | Sobrecarga cognitiva | Reduzir opções e burocracia | Formulário FAFSA simplificado | +8 p.p. na inscrição universitária |

<div class="caption-obj" markdown>
**Tabela 8.8 — Principais ferramentas de nudging.**
</div>

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/nudge-default.html" title="Figura 8.8 — Efeito Padrão (Default)" class="graph-iframe"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.8 — Efeito do default na adesão.** Compare as taxas de adesão sob regimes de opt-in e opt-out para diferentes programas.
</div>

**Framing e simplificação.** A forma como as informações são apresentadas importa: rótulos nutricionais em semáforo (verde/amarelo/vermelho) são mais eficazes do que tabelas numéricas detalhadas; cartas de cobrança com linguagem simplificada aumentam a taxa de pagamento de impostos.

**Feedback e saliência.** Tornar as consequências de uma decisão mais visíveis no momento da escolha — como mostrar o consumo de energia em tempo real — ajuda a alinhar o comportamento com as intenções de longo prazo.

**Normas sociais.** Informar as pessoas sobre o comportamento de seus pares ("90% dos seus vizinhos pagam o IPTU em dia") explora a tendência à conformidade social e pode ser mais eficaz do que apelos racionais ou ameaças de multa.

??? exercicio-resolvido "Exercício Resolvido 8.4 — Impacto do default na adesão previdenciária"
    **Enunciado:** Uma empresa com 1.000 funcionários adota um plano de previdência complementar. Sob o regime de adesão voluntária (*opt-in*), a taxa de adesão é de 40%. A empresa considera migrar para adesão automática (*opt-out*). Suponha que, com *opt-out*, 85% dos funcionários permanecem no plano, e que a contribuição média mensal é de R\$ 300. (a) Calcule o aumento na contribuição mensal agregada. (b) Se 20% dos funcionários que permaneceram por inércia teriam preferido não participar (revelando heterogeneidade de preferências), quantos funcionários são "nudgeados" em direção contrária às suas preferências?

    **Dados:** 1.000 funcionários, adesão *opt-in* = 40%, adesão *opt-out* = 85%, contribuição média = R\$ 300/mês.

    **Resolução:**

    **Passo 1 — Contribuição agregada sob cada regime**

    - *Opt-in*: \(1000 \times 0{,}40 \times 300 = \text{R\$ }120.000\)/mês.
    - *Opt-out*: \(1000 \times 0{,}85 \times 300 = \text{R\$ }255.000\)/mês.
    - Aumento: \(255.000 - 120.000 = \text{R\$ }135.000\)/mês (+112,5%).

    **Passo 2 — Funcionários "nudgeados" na direção errada**

    Novos aderentes por inércia: \(850 - 400 = 450\) funcionários.
    Desses, 20% prefeririam não participar: \(450 \times 0{,}20 = 90\) funcionários.

    **Resultado:** A mudança de *default* eleva a contribuição agregada em R\$ 135.000/mês, mas 90 funcionários (9% do total) permanecem no plano contra suas preferências reveladas.

    **Interpretação econômica:** O exercício ilustra o *trade-off* fundamental dos nudges: o ganho agregado é substancial, mas não é isento de custos. Os 90 funcionários "nudgeados" na direção errada representam a heterogeneidade de preferências que limita a eficácia de qualquer nudge universal. Políticas bem desenhadas minimizam esse custo tornando o *opt-out* simples e visível — como faz a Funpresp no serviço público federal brasileiro.

### 8.6.3 Limites e críticas

Os nudges oferecem um arsenal valioso, mas é essencial evitar o entusiasmo excessivo. Como toda ferramenta, eles têm limitações — e ignorá-las pode comprometer tanto sua eficácia quanto sua legitimidade.

A economia comportamental e os nudges não são panaceias:

- **Heterogeneidade de preferências.** O nudge "certo" para a maioria pode prejudicar uma minoria com preferências legítimas diferentes.
- **Manipulação.** A fronteira entre nudge benevolente e manipulação (*sludge*) depende da intenção do arquiteto de escolhas — e essa intenção nem sempre é transparente.
- **Persistência.** Muitos nudges perdem eficácia com o tempo, à medida que os agentes se habituam.
- **Problemas estruturais.** Nudges são complementos, não substitutos, de políticas públicas robustas. Nenhum nudge compensa salários insuficientes ou ausência de acesso a serviços financeiros.

O conceito de ***sludge*** — introduzido por Thaler e Sunstein — é particularmente relevante: enquanto nudges tornam comportamentos desejáveis mais fáceis, sludges são obstáculos burocráticos desnecessários que tornam comportamentos desejáveis mais difíceis. Formulários complexos, filas longas, requisitos de documentação excessivos e processos de *opt-out* deliberadamente difíceis são exemplos de sludge. A distinção entre nudge e sludge é normativa — depende de quem define o que é "desejável" —, e críticos apontam que governos e empresas frequentemente usam sludges para desviar os cidadãos de direitos e benefícios que seriam custosos para o Estado ou para a firma. A campanha de simplificação burocrática empreendida pelo governo federal brasileiro nos últimos anos — com a criação da Redesim para abertura de empresas e o Portal Gov.br para centralizar serviços digitais — é parcialmente uma estratégia de redução de sludge: ao tornar o acesso a serviços públicos mais rápido e fácil, remove-se uma barreira ao comportamento "desejável" (formalização, acesso a benefícios).

Uma crítica mais profunda vem da perspectiva normativa. O paternalismo libertário assume que existe um "eu verdadeiro" cujas preferências de longo prazo devem ser favorecidas em relação às preferências de curto prazo. Mas quem decide quais são as preferências "verdadeiras"? Esse problema — às vezes chamado de o problema do *arquiteto sábio* — é a objeção filosófica central a toda a agenda de nudges. Camerer et al. (2003) propuseram uma versão mais modesta: o **paternalismo assimétrico**, que intervém apenas quando o custo da intervenção para agentes totalmente racionais é baixo, mas o benefício para agentes com vieses é alto. Essa versão é mais defensável filosoficamente, mas também mais difícil de implementar na prática.

!!! box-brasil "Box Brasil — CPF na nota e previdência complementar: nudges brasileiros"
    O Brasil dispõe de dois exemplos marcantes do poder dos nudges em políticas públicas. O primeiro é o programa **Nota Fiscal Paulista** (São Paulo, 2008), depois replicado em outros estados sob o nome "CPF na nota": ao incluir o CPF nas notas fiscais, os consumidores recebem créditos e participam de sorteios, tornando-se fiscalizadores involuntários da evasão fiscal. Do ponto de vista comportamental, o programa explora a *sobrevalorização de eventos raros* (a chance de ganhar num sorteio) para induzir um comportamento — exigir nota fiscal — que tem externalidade positiva sobre a arrecadação tributária. A Secretaria da Fazenda de São Paulo reportou queda significativa na informalidade comercial nas regiões de maior adesão ao programa. O segundo exemplo é a **Funpresp**, o regime de previdência complementar dos servidores públicos federais criado pela Emenda Constitucional nº 41/2003 e regulamentado em 2012. Novos servidores enquadrados no regime são automaticamente inscritos no plano com contribuição-padrão de 8,5% da parcela remuneratória acima do teto do RGPS, podendo fazer *opt-out*. A adesão automática explora o viés do *status quo* e o viés do presente: ao remover a necessidade de ação ativa, o *default* supera a procrastinação que levaria muitos servidores a adiar indefinidamente a decisão de aderir. Estudos de adesão à Funpresp mostram taxas de participação substancialmente acima das previstas para um regime de *opt-in* equivalente.

!!! box-brasil "Box Brasil — Nudges em políticas públicas federais"
    O governo federal brasileiro tem incorporado gradualmente princípios de economia comportamental em políticas públicas. A rotulagem frontal com **lupa de advertência** da Anvisa (2022), para alimentos ricos em açúcar, gordura saturada e sódio, é um nudge clássico de saliência: destaca a informação mais relevante no momento da decisão de compra. O Programa Nacional de Imunizações (PNI) utiliza lembretes por SMS e notificações via aplicativo do SUS para aumentar a adesão a campanhas de vacinação — um exemplo de feedback e saliência. No sistema financeiro, o *Open Finance* do Banco Central (implementado a partir de 2021) facilita a comparação de produtos financeiros entre instituições, reduzindo a ancoragem ao banco de relacionamento e combatendo a inércia do *status quo* via portabilidade simplificada de crédito.

!!! box-mundo "Box Mundo 8.2 — Unidades de nudge ao redor do mundo"

    **Contexto:** A economia comportamental saiu dos laboratórios universitários e entrou nos gabinetes de governo. A partir de 2010, diversos países criaram unidades governamentais dedicadas a aplicar insights comportamentais ao desenho de políticas públicas — as chamadas *nudge units* ou *behavioural insights teams*. Esse movimento representa talvez a mais rápida transferência de conhecimento da pesquisa acadêmica básica para a implementação de políticas na história da economia: menos de quatro décadas separam os artigos seminais de Kahneman e Tversky da institucionalização de seus achados em estruturas permanentes de governo.

    **Dados:** O pioneiro foi o **Behavioural Insights Team** (BIT) do Reino Unido, criado em 2010 dentro do gabinete do Primeiro-Ministro David Cameron. O BIT demonstrou, por meio de ensaios controlados randomizados (*RCTs*), que pequenas alterações na redação de cartas de cobrança fiscal (incluindo a frase "a maioria das pessoas em sua região já pagou seus impostos") elevavam a taxa de pagamento em até 5 pontos percentuais — gerando milhões de libras adicionais em arrecadação sem qualquer alteração legislativa. Nos Estados Unidos, o **Social and Behavioral Sciences Team** (SBST), criado em 2015 por decreto executivo de Barack Obama, conduziu mais de 30 projetos piloto em áreas como adesão a programas de aposentadoria, inscrição em planos de saúde e acesso a benefícios de veteranos. Na área de doação de órgãos, a mudança do regime de *opt-in* (consentimento explícito) para *opt-out* (consentimento presumido) produziu resultados dramáticos: países com *opt-out*, como Áustria e Espanha, apresentam taxas de consentimento superiores a 90%, enquanto países com *opt-in*, como Alemanha e Dinamarca, ficam abaixo de 20% (Johnson & Goldstein, 2003). No campo previdenciário, Madrian e Shea (2001) documentaram que a inscrição automática (*auto-enrollment*) em planos 401(k) nos EUA elevou a participação de 49% para 86% entre novos empregados — um efeito atribuído ao viés do *status quo* e à inércia decisória.

    **Análise:** A OCDE mantém, desde 2017, a *Behavioural Insights and Public Policy Network*, que reúne mais de 200 instituições em 60 países aplicando economia comportamental a políticas públicas. O sucesso dessas iniciativas valida empiricamente a premissa central da Seção 8.6: quando os vieses são sistemáticos e previsíveis, é possível redesenhar a "arquitetura de escolhas" de modo a melhorar os resultados sem restringir a liberdade. Contudo, a evidência também revela limites. Os efeitos dos nudges tendem a ser modestos em magnitude (tipicamente 1 a 10 pontos percentuais), podem decair ao longo do tempo (*decay effect*) e funcionam melhor para decisões pontuais (pagar um imposto, inscrever-se num plano) do que para mudanças comportamentais persistentes (perder peso, reduzir consumo de energia). Além disso, o debate ético sobre paternalismo libertário ganha urgência à medida que os governos expandem o uso de nudges: quem define o que é o "bom comportamento" que o nudge deve promover?

    **Fonte:** Thaler, R. H.; Sunstein, C. R. (2008). *Nudge: Improving Decisions about Health, Wealth, and Happiness*. New Haven: Yale University Press. Johnson, E. J.; Goldstein, D. (2003). "Do Defaults Save Lives?" *Science*, 302(5649), 1338–1339. Madrian, B. C.; Shea, D. F. (2001). "The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior." *Quarterly Journal of Economics*, 116(4), 1149–1187. OECD (2017). *Behavioural Insights and Public Policy: Lessons from Around the World*. Paris: OECD Publishing.

---

*Sabemos onde a racionalidade falha. Agora, a pergunta muda: quando suas decisões afetam as minhas, o que acontece? Bem-vindo à teoria dos jogos.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Na Teoria do Prospecto de Kahneman e Tversky, a função valor é:"
    - (a) Côncava para ganhos e côncava para perdas, com simetria
    - (b) Côncava para ganhos e convexa para perdas, com inclinação mais acentuada para perdas
    - (c) Convexa para ganhos e côncava para perdas
    - (d) Linear tanto para ganhos quanto para perdas

    ??? success "Resposta"
        **(b)** A função valor é definida sobre ganhos e perdas relativos a um ponto de referência: côncava para ganhos (aversão ao risco), convexa para perdas (busca de risco) e mais íngreme para perdas do que para ganhos (aversão à perda, $\lambda \approx 2{,}25$). A alternativa (a) ignora a convexidade para perdas e a assimetria; (c) inverte; (d) descreve utilidade esperada linear.

??? question "2. A heurística de disponibilidade leva os agentes a:"
    - (a) Escolher sempre a opção mais recente apresentada
    - (b) Superestimar a probabilidade de eventos que são facilmente lembrados ou vívidos
    - (c) Subestimar sistematicamente todos os riscos
    - (d) Ignorar informações que contradizem suas crenças

    ??? success "Resposta"
        **(b)** A heurística de disponibilidade faz com que eventos que vêm à mente com facilidade (por serem recentes, emocionais ou midiáticos) sejam julgados como mais prováveis do que realmente são. A alternativa (a) descreve viés de recência de forma muito restrita; (c) é incorreta — pode causar tanto super quanto subestimação; (d) descreve viés de confirmação.

??? question "3. O desconto hiperbólico difere do desconto exponencial porque:"
    - (a) Implica taxa de desconto constante ao longo do tempo
    - (b) Gera preferências consistentes no tempo — o agente nunca muda de plano
    - (c) Implica taxa de desconto decrescente — o agente é muito impaciente no curto prazo mas relativamente paciente no longo prazo
    - (d) Só se aplica a decisões financeiras, não a decisões de consumo

    ??? success "Resposta"
        **(c)** No desconto hiperbólico, a taxa de desconto entre períodos adjacentes cai à medida que ambos os períodos se afastam no futuro. Isso gera inconsistência temporal: o agente pode preferir hoje receber R$100 agora a R$110 amanhã, mas preferir R$110 em 31 dias a R$100 em 30 dias — invertendo a preferência quando o momento se aproxima. A alternativa (a) descreve desconto exponencial; (b) é o oposto do que ocorre.

??? question "4. O Paradoxo de Allais demonstra uma violação de qual axioma da utilidade esperada?"
    - (a) Completude
    - (b) Transitividade
    - (c) Independência
    - (d) Continuidade

    ??? success "Resposta"
        **(c)** No Paradoxo de Allais, a maioria das pessoas faz escolhas entre loterias que violam o axioma de independência: a preferência entre duas opções muda quando se mistura uma terceira loteria comum. O 'efeito certeza' — sobrevalorizar resultados garantidos — é a causa principal. Os demais axiomas não são violados nesse experimento.

??? question "5. Um 'nudge' (empurrão) na arquitetura de escolhas é eficaz porque:"
    - (a) Proíbe escolhas ruins, forçando os agentes a agir racionalmente
    - (b) Altera o conjunto orçamentário, tornando opções ruins mais caras
    - (c) Explora vieses comportamentais previsíveis, como inércia e efeito default, sem eliminar a liberdade de escolha
    - (d) Oferece incentivos monetários diretos para comportamentos desejados

    ??? success "Resposta"
        **(c)** Nudges utilizam conhecimento sobre vieses cognitivos (inércia, ancoragem, aversão à perda) para direcionar escolhas sem restringir opções — o conceito de 'paternalismo libertário' de Thaler e Sunstein. A alternativa (a) descreve proibição, não nudge; (b) descreve tributos/subsídios; (d) descreve incentivos econômicos tradicionais.

---

## 📋 Resumo do Capítulo

- Heurísticas cognitivas (representatividade, disponibilidade, ancoragem, excesso de confiança) são atalhos mentais que produzem vieses previsíveis; o modelo dual de Kahneman (Sistema 1 rápido e intuitivo vs. Sistema 2 lento e deliberado) explica por que esses vieses persistem.
- A Teoria do Prospecto substitui a utilidade esperada por uma função valor definida sobre ganhos e perdas relativos a um ponto de referência, com três propriedades: concavidade para ganhos, convexidade para perdas e aversão à perda (perdas pesam cerca de 2,25 vezes mais que ganhos equivalentes).
- A ponderação não-linear de probabilidades sobrevaloriza eventos raros e subvaloriza probabilidades moderadas a altas, explicando simultaneamente a compra de loterias e a contratação de seguros contra catástrofes; a PT Cumulativa corrige a violação de dominância estocástica da versão original.
- A aversão à ambiguidade (Paradoxo de Ellsberg) mostra que agentes distinguem entre risco (probabilidades conhecidas) e ambiguidade (probabilidades vagas), preferindo sistematicamente o risco conhecido, o que viola a utilidade esperada subjetiva de Savage.
- Preferências sociais (aversão à inequidade, reciprocidade, punição altruísta) são formalizadas pelo modelo de Fehr-Schmidt e explicam os resultados dos jogos do ultimato, ditador e confiança que contradizem a hipótese de autointeresse puro.
- O desconto quasi-hiperbólico captura o viés do presente e gera inconsistência temporal, explicando procrastinação e subpoupança; nudges (opções-padrão, framing, normas sociais, compromisso prévio) aproveitam os vieses comportamentais para melhorar decisões sem restringir a liberdade de escolha.

## 🔑 Conceitos-Chave

<a id="tabela-8-9"></a>

| Conceito | Definição |
|----------|-----------|
| Heurística | Atalho cognitivo que simplifica julgamentos complexos, podendo gerar vieses sistemáticos em contextos específicos. |
| Sistema 1 e Sistema 2 | Modelo dual de Kahneman: Sistema 1 é rápido, automático e intuitivo; Sistema 2 é lento, deliberado e analítico. |
| Teoria do Prospecto | Modelo de decisão sob risco em que o valor é definido sobre ganhos e perdas relativos a um ponto de referência, com aversão à perda e ponderação não-linear de probabilidades. |
| Aversão à perda | Assimetria em que perdas produzem impacto psicológico maior que ganhos de mesma magnitude; o coeficiente \(\lambda\) é tipicamente estimado em torno de 2,25. |
| Ponderação de probabilidades | Função que transforma probabilidades objetivas em pesos decisórios, sobrevalorizando eventos raros e subvalorizando eventos prováveis. |
| Aversão à ambiguidade | Preferência sistemática por situações com probabilidades conhecidas em relação a situações com probabilidades vagas ou desconhecidas. |
| Modelo de Fehr-Schmidt | Modelo de preferências sociais em que a utilidade depende do próprio payoff e das diferenças em relação aos payoffs dos demais, com aversão à inequidade desvantajosa e vantajosa. |
| Desconto quasi-hiperbólico | Modelo de desconto intertemporal com parâmetros (\(\beta\), \(\delta\)) que captura o viés do presente: um desconto extra aplicado a todos os períodos futuros em relação ao presente. |
| Contabilidade mental | Tendência de organizar, avaliar e acompanhar atividades financeiras em contas mentais separadas, violando a fungibilidade do dinheiro. |
| Nudge | Intervenção na arquitetura de escolha que altera o comportamento de forma previsível sem proibir opções nem alterar incentivos econômicos significativos. |

<div class="caption-obj" markdown>
**Tabela 8.9 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-8-1"></a>**Exercício 8.1.** Um investidor avalia duas opções: (A) ganhar R\$ 500 com certeza; (B) ganhar R\$ 1.000 com probabilidade \(0{,}50\). Sob utilidade esperada com função de utilidade côncava, o investidor prefere A. Agora considere: (C) perder R\$ 500 com certeza; (D) perder R\$ 1.000 com probabilidade \(0{,}50\). Sob a Teoria do Prospecto, qual a escolha provável em cada par? Explique usando as propriedades da função valor.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-1)

<a id="ex-8-2"></a>**Exercício 8.2.** Usando a função valor paramétrica \(v(x) = x^{0{,}88}\) para ganhos e \(v(x) = -2{,}25 \cdot (-x)^{0{,}88}\) para perdas, calcule \(v(100)\), \(v(-100)\), \(v(200)\) e \(v(-200)\). Verifique que \(|v(-100)| > v(100)\) e interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-2)

<a id="ex-8-3"></a>**Exercício 8.3.** Um consumidor com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}99)\) avalia dois planos de poupança. O Plano X exige um depósito de R\$ 100 **hoje** e paga R\$ 150 em 1 ano. O Plano Y exige um depósito de R\$ 100 **em 6 meses** e paga R\$ 150 em 18 meses. (a) Calcule a utilidade descontada de cada plano sob desconto quasi-hiperbólico, assumindo \(u(x) = x\). (b) O consumidor prefere Y hoje, mas quando chegar o mês 6, ele vai aderir? Explique a diferença entre agentes sofisticados e ingênuos.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-3)

<a id="ex-8-4"></a>**Exercício 8.4.** Uma empresa oferece dois planos de academia: (A) pagamento mensal de R\$ 100; (B) pagamento anual antecipado de R\$ 960 (equivalente a R\$ 80/mês). DellaVigna e Malmendier (2006) mostram que muitos consumidores escolhem (A) e depois frequentam a academia menos de 5 vezes por mês, pagando mais de R\$ 20 por visita — quando poderiam comprar passes avulsos por R\$ 12. Explique esse comportamento usando: (i) excesso de confiança sobre o uso futuro; (ii) viés do presente.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-4)

<a id="ex-8-5"></a>**Exercício 8.5.** O governo está considerando duas políticas para aumentar a poupança previdenciária: (i) subsídio fiscal de 10% sobre contribuições voluntárias; (ii) adesão automática com *opt-out*. Com base na literatura comportamental, qual política provavelmente terá maior impacto sobre a taxa de poupança agregada? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-5)

<a id="ex-8-6"></a>**Exercício 8.6.** Explique por que o Paradoxo de Allais viola o axioma da independência da utilidade esperada. Mostre formalmente que as preferências \(A \succ B\) e \(D \succ C\) são inconsistentes com a existência de uma função de utilidade de Von Neumann–Morgenstern.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-6)

<a id="ex-8-7"></a>**Exercício 8.7.** No Paradoxo de Ellsberg (duas cores), mostre que a preferência simultânea pela Urna A em ambas as apostas (vermelho e preto) é incompatível com qualquer probabilidade subjetiva atribuída à composição da Urna B. Qual axioma da UE de Savage é violado?

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-7)

<a id="ex-8-8"></a>**Exercício 8.8.** Em um jogo do ultimato com \(S = 200\), o respondedor tem parâmetros de Fehr-Schmidt \(\alpha_R = 3\) e \(\beta_R = 0{,}5\). (a) Calcule a oferta mínima aceita. (b) Se o respondedor fosse puramente autointeressado (\(\alpha_R = \beta_R = 0\)), qual seria a oferta mínima? (c) Interprete a diferença à luz da aversão à inequidade.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-8)

<a id="ex-8-9"></a>**Exercício 8.9.** Usando as quatro regras de edição hedônica de Thaler (1985), explique por que: (a) lojas de departamento anunciam promoções como "20% de desconto + 10% extra" em vez de "28% de desconto"; (b) a cobrança de taxa condominial é mensal (não anual); (c) supermercados oferecem "cashback" em vez de desconto no preço.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-9)

<a id="ex-8-10"></a>**Exercício 8.10.** A função de ponderação de probabilidades de Tversky e Kahneman é \(w(p) = p^{\gamma}/(p^{\gamma} + (1-p)^{\gamma})^{1/\gamma}\). (a) Mostre que \(w(0) = 0\) e \(w(1) = 1\). (b) Calcule \(w(0{,}01)\), \(w(0{,}50)\) e \(w(0{,}99)\) para \(\gamma = 0{,}61\). (c) Verifique a propriedade de subcerteza: \(w(p) + w(1-p) < 1\) para \(p = 0{,}50\).

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-10)

<a id="ex-8-11"></a>**Exercício 8.11.** Um consumidor tem \(u(x) = x^{0{,}5}\) (utilidade esperada padrão) e riqueza inicial \(W = 1000\). Compare as seguintes opções: (a) Perda certa de R\$ 400 (riqueza final = 600); (b) Loteria: perde R\$ 800 com probabilidade \(0{,}5\) ou não perde nada com probabilidade \(0{,}5\) (riqueza esperada = 600). **(i)** Sob utilidade esperada, qual opção é preferida? **(ii)** Sob Teoria do Prospecto com ponto de referência \(r = 1000\), função valor \(v(x) = x^{0{,}88}\) para ganhos e \(v(x) = -2{,}25(-x)^{0{,}88}\) para perdas, e sem ponderação de probabilidades (\(w(p) = p\)), qual opção é preferida? **(iii)** Explique a diferença entre as previsões dos dois modelos.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-11)

<a id="ex-8-12"></a>**Exercício 8.12.** Julgue cada afirmação como Verdadeira (V) ou Falsa (F) e justifique brevemente: (a) A Teoria do Prospecto prevê que agentes exibem busca por risco no domínio das perdas. (b) O efeito dotação contradiz a teoria neoclássica da demanda, pois implica que a disposição a aceitar (WTA) sistematicamente excede a disposição a pagar (WTP). (c) Agentes com desconto quasi-hiperbólico (\(\beta < 1\)) sempre preferem recompensas imediatas a recompensas futuras, independentemente do horizonte. (d) Um nudge restringe o conjunto de escolhas disponíveis ao agente.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-12)

<a id="ex-8-13"></a>**Exercício 8.13.** Um agente com preferências \((\beta, \delta)\) e \(\beta = 0{,}70\), \(\delta = 0{,}95\), utilidade linear \(u(x) = x\), avalia três opções: (A) receber R\$ 100 hoje; (B) receber R\$ 120 daqui a 1 mês (\(t = 1\)); (C) receber R\$ 150 daqui a 3 meses (\(t = 3\)). **(a)** Calcule as utilidades descontadas de A, B e C avaliadas em \(t = 0\) e ordene as opções. **(b)** Quando chega o mês 1, o agente reavalia B (que agora é imediato) e C (a 2 meses). Calcule as utilidades em \(t = 1\) e ordene novamente. **(c)** Ocorre inversão de preferências entre \(t = 0\) e \(t = 1\)? Qual é a fonte da inconsistência?

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-13)

<a id="ex-8-14"></a>**Exercício 8.14.** Um trabalhador brasileiro pode escolher entre dois contratos: **(A)** salário fixo de R\$ 5.000/mês; **(B)** salário-base de R\$ 4.000 mais bônus uniformemente distribuído entre R\$ 0 e R\$ 2.000 dependendo do desempenho (valor esperado do bônus = R\$ 1.000, então renda esperada de R\$ 5.000). **(i)** Sob utilidade esperada com \(u(x) = x^{1-\gamma}/(1-\gamma)\), \(\gamma = 2\), calcule a utilidade esperada de cada contrato e determine qual é preferido. Normalize as rendas dividindo por 1000 para simplificar os cálculos. **(ii)** Sob Teoria do Prospecto com ponto de referência \(r = 5.000\), \(\lambda = 2\), função valor linear por partes (\(v(x) = x\) para \(x \geq 0\) e \(v(x) = 2x\) para \(x < 0\)) e sem ponderação de probabilidades, calcule o valor esperado do prospecto B e compare com o contrato A.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-14)

<a id="ex-8-15"></a>**Exercício 8.15.** *(Difícil)* Um agente enfrenta uma perda potencial \(L\) com probabilidade \(p\), e pode comprar seguro a preço atuarialmente justo. O agente tem preferências da Teoria do Prospecto com: ponto de referência = riqueza inicial \(W\), função valor \(v(x) = x\) para \(x \geq 0\) e \(v(x) = -\lambda(-x)\) para \(x < 0\) (com \(\lambda > 1\)), e função de ponderação \(w(p)\) satisfazendo \(w(p) > p\) para \(p\) pequeno e \(w(p) < p\) para \(p\) grande. **(a)** Mostre que, para perdas pequenas com probabilidade pequena (\(p \to 0\), \(L\) moderado), o agente **sobre-segura** — isto é, compra mais do que a cobertura completa seria necessária ou está disposto a pagar prêmio acima do atuarialmente justo. **(b)** Mostre que, para perdas catastróficas com probabilidade pequena (\(p\) pequeno, \(L \to W\)), a interação entre \(\lambda\) e \(w(p)\) pode gerar **sub-seguro** — o agente rejeita cobertura mesmo a preço justo. Interprete a diferença entre os dois resultados.

[:material-arrow-right: Ver solução](../solucoes/cap08.md#ex-8-15)

---

## 🏆 Vem, ANPEC!

!!! info "Nota sobre questões ANPEC"
    A economia comportamental é um campo relativamente recente na microeconomia e, até o momento, **não aparece como tópico explícito nas provas da ANPEC de Microeconomia** (período 2010–2025). As questões de decisão sob incerteza na ANPEC concentram-se na teoria da utilidade esperada, aversão ao risco e equivalente de certeza — temas tratados no Capítulo 7. As questões a seguir são elaboradas no **estilo ANPEC** para fins de preparação, caso o tema venha a ser cobrado.

??? question "ANPEC (estilo) — Teoria do Prospecto e função valor"
    Com relação à Teoria do Prospecto de Kahneman e Tversky (1979, 1992) e à função valor, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Na Teoria do Prospecto, os agentes avaliam resultados como ganhos ou perdas relativos a um ponto de referência, e não em termos de riqueza final — o que implica que dois indivíduos com a mesma riqueza total podem tomar decisões diferentes dependendo de suas trajetórias prévias. |
    | 1 | A aversão à perda e a aversão ao risco são conceitos equivalentes: ambas decorrem da concavidade da função de utilidade sobre a riqueza. |
    | 2 | A função valor da Teoria do Prospecto é côncava para ganhos e convexa para perdas, o que implica que os agentes são avessos ao risco no domínio dos ganhos e propensos ao risco no domínio das perdas. |
    | 3 | A função de ponderação de probabilidades \(w(p)\) na Teoria do Prospecto é linear, preservando a propriedade de que uma probabilidade de 10% recebe exatamente um décimo do peso de um evento certo. |
    | 4 | Considere a função valor paramétrica \(v(x) = x^{\alpha}\) para \(x \geq 0\) e \(v(x) = -\lambda(-x)^{\beta}\) para \(x < 0\), com \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\). Se um agente enfrenta uma aposta simétrica de 50% de ganhar R\$ 100 e 50% de perder R\$ 100, o valor subjetivo esperado dessa aposta (usando probabilidades não distorcidas) é negativo. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** A **dependência de referência** é uma das três propriedades fundamentais da função valor (Seção 8.2.2). O portador de valor é a variação \(x\) em relação ao ponto de referência (*status quo*), não o nível absoluto de riqueza. Dois indivíduos com riqueza idêntica, mas pontos de referência distintos (por exemplo, um que ganhou e outro que perdeu para chegar àquele nível), avaliarão as mesmas opções de forma diferente.
        - **Item 1 — F:** Aversão à perda e aversão ao risco são conceitos distintos (Seção 8.2.2, box "Cuidado"). A **aversão ao risco** decorre da concavidade da função de utilidade sobre a riqueza e descreve a preferência por um resultado certo sobre uma aposta de mesmo valor esperado. A **aversão à perda** é a assimetria \(\lambda > 1\) na função valor: \(|v(-x)| > v(x)\). Um agente pode ser neutro ao risco (função valor linear) e ainda assim ser avesso à perda.
        - **Item 2 — V:** A concavidade para ganhos implica sensibilidade decrescente e aversão ao risco nesse domínio; a convexidade para perdas implica sensibilidade decrescente e propensão ao risco no domínio das perdas. Esse é o **efeito reflexão** documentado por Kahneman e Tversky: no domínio dos ganhos, as pessoas preferem o certo; no das perdas, preferem arriscar para tentar evitar a perda (Seção 8.2.2).
        - **Item 3 — F:** A função de ponderação \(w(p)\) tem formato de S invertido (Equação 8.2, Seção 8.2.3). Probabilidades pequenas são **sobrevalorizadas** (\(w(p) > p\) para \(p\) pequeno) e probabilidades altas são **subvalorizadas** (\(w(p) < p\) para \(p\) grande). Essa não linearidade é justamente o que diferencia a Teoria do Prospecto da utilidade esperada no tratamento das probabilidades.
        - **Item 4 — V:** Com \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\): \(v(100) = 100^{0{,}88} \approx 57{,}54\) e \(v(-100) = -2{,}25 \times 100^{0{,}88} \approx -129{,}47\). O valor subjetivo esperado (sem distorção de probabilidades) é \(0{,}5 \times 57{,}54 + 0{,}5 \times (-129{,}47) = 28{,}77 - 64{,}74 = -35{,}97 < 0\). A aversão à perda torna a aposta subjetivamente negativa, embora seu valor esperado monetário seja zero — por isso a maioria das pessoas recusa apostas simétricas (Exercício Resolvido 8.1).

??? question "ANPEC (estilo) — Vieses cognitivos e efeitos comportamentais"
    Considere os vieses cognitivos e os efeitos comportamentais discutidos na economia comportamental. Indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A **ancoragem** é o viés pelo qual um valor inicial — mesmo que arbitrário e irrelevante para a decisão — influencia sistematicamente a estimativa final, como demonstrado no experimento da roda da fortuna de Tversky e Kahneman (1974). |
    | 1 | O **efeito framing** viola o axioma da invariância das preferências: no experimento das "doenças asiáticas" de Tversky e Kahneman (1981), a maioria dos participantes escolheu a opção certa (avessa ao risco) quando o problema foi enquadrado em termos de vidas salvas, mas escolheu a opção arriscada quando o mesmo problema foi enquadrado em termos de mortes. |
    | 2 | O **viés do *status quo*** e o **efeito dotação** são fenômenos independentes da aversão à perda: eles decorrem exclusivamente de custos de transação e assimetrias de informação, não de propriedades da função valor. |
    | 3 | A **contabilidade mental** implica que os agentes tratam o dinheiro como perfeitamente fungível, avaliando cada decisão financeira em relação ao orçamento total, conforme prevê a teoria neoclássica. |
    | 4 | No contexto de negociações, a ancoragem implica que quem faz a primeira oferta pode capturar uma parcela maior do excedente — não porque a oferta inicial seja mais informativa, mas porque serve de âncora para o processo de ajuste subsequente das partes. |

    ??? success "Gabarito"
        **Respostas: V V F F V**

        **Justificativa por item:**

        - **Item 0 — V:** A ancoragem é uma das três heurísticas fundamentais identificadas por Tversky e Kahneman (1974). No experimento da roda da fortuna, participantes que viram o número 10 estimaram a proporção de países africanos na ONU em 25%, enquanto os que viram 65 estimaram 45% — embora o número fosse gerado aleatoriamente e fosse irrelevante para a questão (Seção 8.1.3).
        - **Item 1 — V:** O experimento das doenças asiáticas é o exemplo clássico do efeito framing (Seção 8.2.5). Os programas A e C são matematicamente idênticos (200 salvas = 400 morrem, de 600), assim como B e D. Mas 72% escolheram A (certeza) no frame positivo e 78% escolheram D (risco) no frame negativo, o que é consistente com a Teoria do Prospecto: aversão ao risco para ganhos e propensão ao risco para perdas.
        - **Item 2 — F:** O viés do *status quo* e o efeito dotação são consequências diretas da **aversão à perda** da Teoria do Prospecto (Seções 8.2.5 e 8.6.2). Abrir mão de algo que se possui é codificado como perda, e a perda "pesa" mais do que o ganho equivalente (\(\lambda > 1\)). O experimento das canecas de Kahneman, Knetsch e Thaler (1990) demonstrou que a simples posse mais que dobrou a valoração do objeto (WTA = US\$ 7,12 vs. WTP = US\$ 2,87), sem que houvesse custos de transação ou assimetria informacional envolvidos.
        - **Item 3 — F:** A contabilidade mental descreve exatamente o oposto: os agentes **não** tratam o dinheiro como fungível (Seção 8.2.6). Thaler (1985, 1999) documentou que as pessoas segregam recursos em "contas mentais" separadas (salário, bônus, herança), e a propensão marginal a consumir difere entre essas categorias — violando a fungibilidade prevista pela teoria neoclássica.
        - **Item 4 — V:** A ancoragem em negociações é discutida na Seção 8.1.3. Estudos mostram que o preço de listagem de imóveis funciona como âncora mesmo para avaliadores profissionais (Northcraft e Neale 1987). A primeira oferta em uma negociação "ancora" o processo de ajuste, afetando o resultado final independentemente das posições de reserva objetivas.

??? question "ANPEC (estilo) — Desconto hiperbólico e inconsistência temporal"
    Com relação ao desconto intertemporal e à inconsistência temporal, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | No modelo de desconto exponencial (Samuelson 1937), a taxa de desconto entre dois períodos consecutivos é constante, o que garante a **consistência temporal**: se um agente prefere a opção A à B quando ambas estão no futuro distante, essa preferência se mantém quando o momento da decisão se aproxima. |
    | 1 | No modelo de desconto quasi-hiperbólico \((\beta, \delta)\), com \(\beta = 0{,}70\) e \(\delta = 0{,}95\), o fator de desconto entre \(t = 0\) e \(t = 1\) é \(\beta\delta = 0{,}665\), enquanto o fator de desconto entre \(t = 5\) e \(t = 6\) é \(\delta = 0{,}95\). Essa assimetria gera o viés do presente. |
    | 2 | Um agente com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}95)\) e utilidade linear avalia, em \(t = 0\), um pagamento de R\$ 1.000 em \(t = 1\) como equivalente a um pagamento de aproximadamente R\$ 665 hoje. Contudo, ao avaliar em \(t = 0\) dois pagamentos futuros — R\$ 1.000 em \(t = 10\) e R\$ 1.000 em \(t = 11\) —, a razão dos valores presentes é \(\delta = 0{,}95\), idêntica à do desconto exponencial. |
    | 3 | A distinção entre agentes **sofisticados** e **ingênuos** é irrelevante para o desenho de políticas públicas, pois nudges como a adesão automática (*opt-out*) só são eficazes para agentes sofisticados que reconhecem seu viés do presente. |
    | 4 | A demanda por **mecanismos de compromisso** — como planos de previdência com penalidade por resgate antecipado ou o programa *Save More Tomorrow* — é racional no contexto do modelo quasi-hiperbólico, pois o agente sofisticado reconhece que seu "eu futuro" terá viés do presente e busca restringir seu comportamento futuro. |

    ??? success "Gabarito"
        **Respostas: V V V F V**

        **Justificativa por item:**

        - **Item 0 — V:** O modelo de utilidade descontada (Equação 8.6, Seção 8.5.1) aplica o fator \(\delta^t\) ao período \(t\), de modo que a razão entre os fatores de desconto de dois períodos consecutivos é sempre \(\delta^{t+1}/\delta^t = \delta\), constante. Essa constância garante que as preferências não se invertem com a passagem do tempo — a propriedade de consistência temporal.
        - **Item 1 — V:** No modelo quasi-hiperbólico (Equação 8.7, Seção 8.5.3), o fator de desconto para \(t = 1\) visto de \(t = 0\) é \(\beta\delta = 0{,}70 \times 0{,}95 = 0{,}665\). Para períodos futuros consecutivos (\(t \geq 1\)), a razão entre os fatores é \(\beta\delta^{t+1}/\beta\delta^t = \delta = 0{,}95\). Assim, a transição do presente para o futuro imediato sofre um desconto desproporcionalmente grande (\(\beta\delta\) vs. \(\delta\)), criando o viés do presente (Tabela 8.6).
        - **Item 2 — V:** Em \(t = 0\): \(U_0(t=1) = \beta\delta \times 1000 = 0{,}665 \times 1000 = 665\). Para os pagamentos em \(t = 10\) e \(t = 11\): \(U_0(t=10) = \beta\delta^{10} \times 1000\) e \(U_0(t=11) = \beta\delta^{11} \times 1000\). A razão é \(\beta\delta^{11}/\beta\delta^{10} = \delta = 0{,}95\). Dentro do futuro, o desconto relativo entre dois períodos consecutivos é idêntico ao exponencial — o viés afeta apenas a fronteira presente/futuro.
        - **Item 3 — F:** Nudges como a adesão automática (*opt-out*) são eficazes tanto para agentes sofisticados quanto para ingênuos (Seção 8.5.4). Ambos os tipos permanecem no plano quando o *default* é "aderir", pois a inércia e o viés do *status quo* operam independentemente de o agente reconhecer ou não seu viés. A distinção é relevante para mecanismos de compromisso voluntário (como o *Save More Tomorrow*), que exigem sofisticação — mas nudges universais funcionam para todos.
        - **Item 4 — V:** Laibson (1997) formalizou a demanda por mecanismos de compromisso ("golden eggs") no modelo quasi-hiperbólico (Seção 8.5.4). O agente sofisticado antecipa que seu "eu futuro" terá \(\beta < 1\) e, portanto, consumirá mais do que o planejado. Ao se vincular a instrumentos ilíquidos (previdência com penalidade, poupança com desconto em folha), o agente restringe racionalmente seu comportamento futuro, protegendo a poupança da tentação de consumo imediato.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Kahneman, Daniel; Tversky, Amos. (1979). [Prospect Theory: An Analysis of Decision under Risk](https://doi.org/10.2307/1914185). *Econometrica*, 47(2): 263–291. DOI: [10.2307/1914185](https://doi.org/10.2307/1914185)"

    **A pergunta**

    O modelo de utilidade esperada de Von Neumann e Morgenstern era, até os anos 1970, o arcabouço dominante para analisar decisões sob risco. Mas uma série de experimentos revelava violações sistemáticas de seus axiomas — o paradoxo de Allais, o efeito certeza, a sensibilidade à forma de apresentação dos problemas. Kahneman e Tversky perguntaram: é possível construir um modelo alternativo que descreva melhor o comportamento observado, preservando poder preditivo?

    **Como os autores responderam**

    O artigo combina evidência experimental com construção teórica. Kahneman e Tversky apresentaram uma série de problemas de escolha a estudantes e docentes universitários, documentando padrões robustos de violação da utilidade esperada: o efeito certeza (sobrevalorização de resultados certos), o efeito reflexão (reversão de atitudes em relação ao risco entre ganhos e perdas) e o efeito isolamento (sensibilidade ao framing). A partir desses padrões, propuseram a Teoria do Prospecto — um modelo em que os agentes avaliam resultados como ganhos ou perdas relativos a um ponto de referência, usando uma função valor côncava para ganhos e convexa para perdas, com inclinação maior no domínio das perdas (aversão à perda). As probabilidades são transformadas por uma função de ponderação não linear.

    **O que descobriram**

    Os experimentos confirmaram três fenômenos centrais. Primeiro, a maioria dos participantes preferiu um ganho certo de 3.000 a uma loteria com valor esperado superior (4.000 com 80% de chance), mas inverteu a preferência no domínio das perdas (arriscando para evitar uma perda certa). Segundo, a função valor exibiu sensibilidade decrescente tanto para ganhos quanto para perdas — o impacto marginal de cada unidade adicional diminui à medida que nos afastamos do ponto de referência. Terceiro, a ponderação de probabilidades mostrou-se consistentemente não linear: probabilidades pequenas são sobrevalorizadas e probabilidades altas, subvalorizadas.

    **Por que isso importa**

    O artigo é um dos mais citados na história da economia (mais de 80.000 citações no Google Scholar). Inaugurou o campo da economia comportamental e rendeu a Kahneman o Prêmio Nobel de Economia em 2002 (Tversky havia falecido em 1996). A Teoria do Prospecto transformou áreas como finanças comportamentais, economia da saúde, direito e economia e desenho de políticas públicas.

    **Conexão com este capítulo**

    O artigo fornece os fundamentos teóricos e experimentais das Seções 8.2.1 a 8.2.5: a função valor em S, a aversão à perda, a ponderação de probabilidades e os efeitos de dotação e framing. Toda a estrutura analítica do capítulo sobre decisão sob risco se apoia neste trabalho seminal.

??? pesquisa "Fehr, Ernst; Schmidt, Klaus M. (1999). [A Theory of Fairness, Competition, and Cooperation](https://doi.org/10.1162/003355399556151). *Quarterly Journal of Economics*, 114(3): 817–868. DOI: [10.1162/003355399556151](https://doi.org/10.1162/003355399556151)"

    **A pergunta**

    A teoria microeconômica padrão assume que os agentes são puramente autointeressados, mas os resultados de jogos experimentais — ultimato, ditador, bens públicos — contradizem sistematicamente essa premissa. Ao mesmo tempo, em mercados competitivos, o comportamento autointeressado parece prevalecer. É possível construir um modelo que explique *ambos* os padrões com um único conjunto de preferências?

    **Como os autores responderam**

    Fehr e Schmidt propuseram um modelo de aversão à inequidade em que a utilidade de cada agente depende não apenas de seu próprio payoff, mas das diferenças entre seu payoff e os dos demais. O modelo tem dois parâmetros: \(\alpha_i\) (aversão à desvantagem) e \(\beta_i\) (aversão à vantagem), com \(\beta_i \leq \alpha_i\). Os autores mostraram que, com uma distribuição plausível de tipos na população (alguns autointeressados, outros avessos à inequidade), o modelo gera previsões consistentes com a evidência em jogos de barganha (ofertas generosas), bens públicos (cooperação condicional) *e* mercados competitivos (convergência para o equilíbrio walrasiano quando há muitos competidores).

    **O que descobriram**

    A chave é a interação entre tipos: mesmo uma minoria de jogadores com aversão à inequidade pode disciplinar o comportamento dos autointeressados, porque a ameaça crível de punição (rejeição no ultimato, punição em bens públicos) altera os incentivos de todos. Em mercados com muitos competidores, o poder de barganha individual é pequeno e os autointeressados dominam o resultado — explicando por que a teoria neoclássica funciona bem nesse contexto.

    **Por que isso importa**

    O modelo de Fehr-Schmidt tornou-se a formalização de preferências sociais mais influente em economia. É amplamente utilizado em economia do trabalho, economia experimental, desenho de mecanismos e economia pública. Mostra que a "irracionalidade" dos jogos experimentais é, na verdade, um comportamento racional — dado preferências que incluem aversão à inequidade.

    **Conexão com este capítulo**

    O modelo formal da Seção 8.4.2 reproduz diretamente a especificação de Fehr-Schmidt. A aplicação ao jogo do ultimato e a discussão sobre cooperação em bens públicos na Seção 8.4.3 se baseiam nas previsões deste artigo.

??? pesquisa "Madrian, Brigitte C.; Shea, Dennis F. (2001). [The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior](https://doi.org/10.1162/003355301753265543). *Quarterly Journal of Economics*, 116(4): 1149–1187. DOI: [10.1162/003355301753265543](https://doi.org/10.1162/003355301753265543)"

    **A pergunta**

    Os planos de poupança previdenciária nos Estados Unidos (401(k)) oferecem vantagens fiscais substanciais, mas muitos trabalhadores elegíveis simplesmente não aderem. A teoria da escolha racional prevê que, diante de incentivos tão generosos, a adesão deveria ser quase universal. Por que não é? E o que acontece quando a arquitetura de escolha muda?

    **Como os autores responderam**

    Madrian e Shea analisaram uma mudança natural de política em uma grande empresa americana que, em 1998, passou da adesão voluntária (*opt-in*) para a adesão automática (*opt-out*) em seu plano 401(k). Sob o novo regime, todos os novos funcionários eram automaticamente inscritos com uma contribuição de 3% do salário e investimento no fundo conservador padrão, podendo optar por sair ou alterar a configuração a qualquer momento. Os autores compararam coortes de funcionários contratados antes e depois da mudança, controlando por características observáveis.

    **O que descobriram**

    A taxa de participação no 401(k) saltou de **49% para 86%** entre funcionários com 3 a 15 meses de empresa. A adesão automática teve impacto particularmente forte entre grupos historicamente sub-representados: trabalhadores jovens, de menor renda e minorias étnicas. No entanto, os autores também identificaram um efeito colateral: muitos funcionários permaneceram na taxa de contribuição *default* de 3% e no fundo de investimento *default* — mesmo que uma análise individualizada pudesse sugerir contribuições maiores ou alocações diferentes. A inércia que promove a adesão é a mesma que impede a personalização.

    **Por que isso importa**

    O estudo demonstrou que a **arquitetura de escolha** — e não apenas os incentivos econômicos — pode ter impacto de primeira ordem sobre decisões financeiras de longo prazo. Inspirou o programa *Save More Tomorrow* (Thaler e Benartzi 2004) e influenciou legislações ao redor do mundo, incluindo a adesão automática na Funpresp (previdência complementar de servidores públicos federais brasileiros).

    **Conexão com este capítulo**

    O artigo é a demonstração empírica central dos conceitos da Seção 8.6: o poder do *default*, o viés do *status quo* e os limites dos nudges. Mostra que a inércia é uma faca de dois gumes — resolve o problema da não adesão, mas pode travar os participantes em configurações subótimas.

??? pesquisa "Laibson, David. (1997). [Golden Eggs and Hyperbolic Discounting](https://doi.org/10.1162/003355397555253). *Quarterly Journal of Economics*, 112(2): 443–478. DOI: [10.1162/003355397555253](https://doi.org/10.1162/003355397555253)"

    **A pergunta**

    Por que tantas pessoas poupam menos do que gostariam? Por que existem instrumentos financeiros ilíquidos — como planos de previdência com penalidade por resgate antecipado — que os consumidores voluntariamente escolhem, mesmo quando opções líquidas com retornos semelhantes estão disponíveis? A teoria do desconto exponencial não consegue explicar por que os agentes demandam restrições à sua própria liberdade futura.

    **Como os autores responderam**

    Laibson construiu um modelo de consumo intertemporal em que os agentes descontam o futuro de forma quasi-hiperbólica (usando a estrutura \(\beta, \delta\)), em vez de exponencial. Nesse modelo, o agente em cada período tem um viés em favor do consumo presente, mas é sofisticado — reconhece que seus "eus futuros" terão o mesmo viés. Isso cria uma demanda endógena por **mecanismos de compromisso**: ativos ilíquidos funcionam como "algemas douradas" (*golden eggs*) que protegem a poupança da tentação de consumir.

    **O que descobriram**

    O modelo explica simultaneamente vários fatos estilizados: (i) a baixa poupança observada em relação às previsões do modelo de ciclo de vida padrão; (ii) a coexistência de ativos líquidos (com baixa remuneração) e ilíquidos (com retornos maiores) nos portfólios dos consumidores; (iii) a queda abrupta do consumo na aposentadoria (o "enigma da aposentadoria"); e (iv) a alta sensibilidade do consumo a variações previsíveis de renda, incompatível com a suavização perfeita prevista pelo modelo padrão.

    **Por que isso importa**

    O artigo formalizou a ideia de que a demanda por iliquidez é racional em um mundo de agentes com viés do presente. Tornou-se a referência central para o uso do modelo \((\beta, \delta)\) em macroeconomia e finanças domésticas, e influenciou o desenho de produtos financeiros e políticas previdenciárias.

    **Conexão com este capítulo**

    O modelo de Laibson é a formalização teórica direta do desconto quasi-hiperbólico apresentado na Seção 8.5.3. O conceito de "ovos de ouro" conecta a teoria do viés do presente à demanda por instrumentos de compromisso discutida na Seção 8.5.4 e ao Box Brasil sobre crédito rotativo.

??? pesquisa "Ellsberg, Daniel. (1961). [Risk, Ambiguity, and the Savage Axioms](https://doi.org/10.2307/1884324). *Quarterly Journal of Economics*, 75(4): 643–669. DOI: [10.2307/1884324](https://doi.org/10.2307/1884324)"

    **A pergunta**

    A teoria da utilidade esperada subjetiva (UES) de Savage (1954) mostrou que, sob axiomas de racionalidade, todo tomador de decisão se comporta *como se* maximizasse a utilidade esperada com respeito a alguma distribuição de probabilidade subjetiva. Ellsberg perguntou: as pessoas realmente se comportam assim quando a informação sobre as probabilidades é vaga ou ausente?

    **Como os autores responderam**

    Ellsberg propôs experimentos mentais elegantes — o mais famoso envolvendo urnas com composição conhecida vs. desconhecida — e analisou as implicações lógicas das escolhas observadas. Mostrou que o padrão modal de preferências (preferir apostar em urnas com probabilidades conhecidas em *ambas* as direções) é logicamente incompatível com a existência de qualquer distribuição de probabilidade subjetiva consistente.

    **O que descobriram**

    O "paradoxo de Ellsberg" revelou que os agentes distinguem entre **risco** (probabilidades conhecidas) e **ambiguidade** (probabilidades desconhecidas ou vagas), e sistematicamente preferem o risco — um comportamento que Ellsberg chamou de **aversão à ambiguidade**. Esse fenômeno viola o axioma da certeza (*sure-thing principle*) de Savage e não pode ser capturado por nenhuma função de utilidade de Von Neumann-Morgenstern com probabilidades subjetivas fixas.

    **Por que isso importa**

    O artigo abriu um programa de pesquisa inteiro sobre decisão sob ambiguidade, gerando modelos como Choquet Expected Utility, Maximin Expected Utility e aversão à ambiguidade suave. Em finanças, o prêmio de ambiguidade ajuda a explicar o *equity premium puzzle* e a sub-diversificação de portfólios.

    **Conexão com este capítulo**

    O paradoxo de Ellsberg é apresentado na Seção 8.3, que distingue risco, incerteza knightiana e ambiguidade. Os modelos de ambiguidade discutidos na Seção 8.3.3 são respostas formais ao desafio colocado por este artigo.

??? pesquisa "Thaler, Richard H.; Sunstein, Cass R. (2003). [Libertarian Paternalism](https://doi.org/10.1257/000282803321947001). *American Economic Review*, 93(2): 175–179. DOI: [10.1257/000282803321947001](https://doi.org/10.1257/000282803321947001)"

    **A pergunta**

    Existe uma forma de política pública que preserve a liberdade de escolha individual e, ao mesmo tempo, direcione os agentes para decisões que melhorem seu próprio bem-estar? A questão é especialmente premente em contextos onde os agentes cometem erros previsíveis — como na escolha de planos de saúde, programas de poupança ou opções de alimentos — e a inação do governo (laissez-faire) produz resultados piores do que intervenções leves.

    **Como os autores responderam**

    Thaler e Sunstein introduziram o conceito de **paternalismo libertário**: libertário porque preserva a liberdade de escolha — qualquer opção continua disponível e pode ser selecionada com custo próximo de zero; paternalista porque a arquitetura de escolha é desenhada para direcionar as decisões no sentido do bem-estar do próprio agente. A peça central é a noção de que toda situação de escolha tem uma arquitetura — não existe posição neutra. Empresas e governos sempre estabelecem *defaults*, orderam opções e enquadram decisões. A questão normativa é: dado que essa arquitetura é inevitável, por que não desenhá-la conscientemente para favorecer o bem-estar?

    **O que descobriram**

    O artigo ilustra o conceito com exemplos de planos de saúde e benefícios previdenciários, mostrando que pequenas mudanças na apresentação e no *default* — sem alterar preços ou proibir alternativas — têm efeitos de primeira ordem sobre as escolhas. A chave é que os agentes reais são fortemente influenciados pelo *status quo*, pela saliência das opções e pelo esforço cognitivo envolvido em decidir ativamente. O paternalismo libertário aproveita essas tendências em vez de lutar contra elas.

    **Por que isso importa**

    Este artigo de três páginas inaugurou uma agenda de pesquisa e política pública que transformou governos em todo o mundo. Unidades de economia comportamental ("nudge units") foram criadas em Reino Unido, EUA, Austrália e Brasil, entre outros. O artigo é a síntese filosófica da agenda de nudges, e o livro Nudge (Thaler e Sunstein 2008) expandiu os argumentos com dezenas de exemplos aplicados.

    **Conexão com este capítulo**

    A filosofia do paternalismo libertário é a fundação teórica da Seção 8.6. O *trade-off* entre eficácia e respeito à autonomia discutido na Seção 8.6.3 é diretamente motivado pelas questões levantadas neste artigo seminal.

??? pesquisa "DellaVigna, Stefano. (2009). [Psychology and Economics: Evidence from the Field](https://doi.org/10.1257/jel.47.2.315). *Journal of Economic Literature*, 47(2): 315–372. DOI: [10.1257/jel.47.2.315](https://doi.org/10.1257/jel.47.2.315)"

    **A pergunta**

    A economia comportamental produziu, até o final dos anos 2000, uma vasta literatura experimental de laboratório documentando desvios da racionalidade. Mas esses desvios são relevantes fora do laboratório? Sobrevivem quando os *stakes* são altos, quando os agentes têm experiência e incentivos fortes para acertar, e quando os mercados competitivos têm a oportunidade de disciplinar o comportamento?

    **Como os autores responderam**

    DellaVigna realizou uma revisão abrangente das evidências de campo — estudos com dados naturais de empresas, mercados financeiros, mercados de trabalho e decisões de consumo — para testar se as anomalias comportamentais documentadas em laboratório se manifestam em contextos econômicos reais. O artigo organiza as evidências em três categorias: não-otimização padrão (inclui aversão à perda, efeito dotação e framing), preferências não-padrão (desconto quasi-hiperbólico, preferências sociais) e crenças não-padrão (excesso de confiança, aprendizado enviesado).

    **O que descobriram**

    A evidência de campo confirma, em sua maioria, as predições comportamentais. Por exemplo: trabalhadores de táxi trabalham menos horas em dias com tarifas altas — consistente com metas de renda diária e aversão à perda. Vendedores de imóveis vendem suas próprias casas a preços mais altos e esperam mais tempo do que as que vendem para clientes — consistente com o efeito dotação. Investidores do mercado financeiro exibem o efeito disposição em escala massiva. A adesão automática a planos de previdência aumenta drasticamente a poupança. Esses resultados mostram que os vieses comportamentais não são artefatos de laboratório, mas fenômenos econômicos de grande magnitude.

    **Por que isso importa**

    O artigo é a referência central para quem quer ir além dos experimentos de laboratório e entender o quanto a economia comportamental importa para mercados reais. Ele também documenta os limites: em alguns contextos — especialmente mercados competitivos com experiência e feedback intenso —, os agentes aprendem a corrigir os vieses. A distinção entre contextos onde os vieses persistem e onde são corrigidos é crucial para o design de políticas.

    **Conexão com este capítulo**

    O artigo de DellaVigna é a evidência de campo que valida as teorias das Seções 8.2, 8.4 e 8.5. Os exemplos do efeito dotação (Seção 8.2.5), do desconto quasi-hiperbólico (Seção 8.5.3) e dos nudges (Seção 8.6) ganham sustentação empírica com os dados revisados neste survey.

---

## 📚 Referências do Capítulo

- Abdellaoui, Mohammed. 2000. "[Parameter-Free Elicitation of Utility and Probability Weighting Functions](https://doi.org/10.1287/mnsc.46.11.1497.12080)." *Management Science* 46 (11): 1497–1512.
- Allais, Maurice. 1953. "[Le comportement de l'homme rationnel devant le risque: Critique des postulats et axiomes de l'école américaine](https://doi.org/10.2307/1907921)." *Econometrica* 21 (4): 503–546.
- Angeletos, George-Marios, David Laibson, Andrea Repetto, Jeremy Tobacman, e Stephen Weinberg. 2001. "[The Hyperbolic Consumption Model: Calibration, Simulation, and Empirical Evaluation](https://doi.org/10.1257/jep.15.3.47)." *Journal of Economic Perspectives* 15 (3): 47–68.
- Augenblick, Ned, Muriel Niederle, e Charles Sprenger. 2015. "[Working over Time: Dynamic Inconsistency in Real Effort Tasks](https://doi.org/10.1093/qje/qjv020)." *Quarterly Journal of Economics* 130 (3): 1067–1115.
- Barber, Brad M., e Terrance Odean. 2001. "[Boys Will Be Boys: Gender, Overconfidence, and Common Stock Investment](https://doi.org/10.1162/003355301556400)." *Quarterly Journal of Economics* 116 (1): 261–292.
- Berg, Joyce, John Dickhaut, e Kevin McCabe. 1995. "[Trust, Reciprocity, and Social History](https://doi.org/10.1006/game.1995.1027)." *Games and Economic Behavior* 10 (1): 122–142.
- Booij, Adam S., Bernard M. S. van Praag, e Gijs van de Kuilen. 2010. "[A Parametric Analysis of Prospect Theory's Functionals for the General Population](https://doi.org/10.1007/s11238-009-9144-4)." *Theory and Decision* 68 (1–2): 115–148.
- Camerer, Colin F., e Teck-Hua Ho. 1994. "[Violations of the Betweenness Axiom and Nonlinearity in Probability](https://doi.org/10.1007/bf01065371)." *Journal of Risk and Uncertainty* 8 (2): 167–196.
- DellaVigna, Stefano. 2009. "[Psychology and Economics: Evidence from the Field](https://doi.org/10.1257/jel.47.2.315)." *Journal of Economic Literature* 47 (2): 315–372.
- DellaVigna, Stefano, e Ulrike Malmendier. 2006. "[Paying Not to Go to the Gym](https://doi.org/10.1257/aer.96.3.694)." *American Economic Review* 96 (3): 694–719.
- Dhami, Sanjit S. 2016. [*The Foundations of Behavioral Economic Analysis*](https://books.google.com/books?id=AMBjDQAAQBAJ). Oxford: Oxford University Press.
- Ellsberg, Daniel. 1961. "[Risk, Ambiguity, and the Savage Axioms](https://doi.org/10.2307/1884324)." *Quarterly Journal of Economics* 75 (4): 643–669.
- Fehr, Ernst, e Simon Gächter. 2000. "[Cooperation and Punishment in Public Goods Experiments](https://doi.org/10.1257/aer.90.4.980)." *American Economic Review* 90 (4): 980–994.
- Fehr, Ernst, e Klaus M. Schmidt. 1999. "[A Theory of Fairness, Competition, and Cooperation](https://doi.org/10.1162/003355399556151)." *Quarterly Journal of Economics* 114 (3): 817–868.
- Fischhoff, Baruch. 1975. "[Hindsight ≠ Foresight: The Effect of Outcome Knowledge on Judgment under Uncertainty](https://doi.org/10.1037/0096-1523.1.3.288)." *Journal of Experimental Psychology: Human Perception and Performance* 1 (3): 288–299.
- Forsythe, Robert, Joel L. Horowitz, N. E. Savin, e Martin Sefton. 1994. "[Fairness in Simple Bargaining Experiments](https://doi.org/10.1006/game.1994.1021)." *Games and Economic Behavior* 6 (3): 347–369.
- Frederick, Shane, George Loewenstein, e Ted O'Donoghue. 2002. "[Time Discounting and Time Preference: A Critical Review](https://doi.org/10.1257/002205102320161311)." *Journal of Economic Literature* 40 (2): 351–401.
- Gilboa, Itzhak, e David Schmeidler. 1989. "[Maxmin Expected Utility with Non-Unique Prior](https://doi.org/10.1016/0304-4068(89)90018-9)." *Journal of Mathematical Economics* 18 (2): 141–153.
- Güth, Werner, Rolf Schmittberger, e Bernd Schwarze. 1982. "[An Experimental Analysis of Ultimatum Bargaining](https://doi.org/10.1016/0167-2681(82)90011-7)." *Journal of Economic Behavior & Organization* 3 (4): 367–388.
- Henrich, Joseph, Robert Boyd, Samuel Bowles, Colin Camerer, Ernst Fehr, Herbert Gintis, e Richard McElreath. 2001. "[In Search of Homo Economicus: Behavioral Experiments in 15 Small-Scale Societies](https://doi.org/10.1257/aer.91.2.73)." *American Economic Review* 91 (2): 73–78.
- Hoffman, Elizabeth, Kevin McCabe, e Vernon L. Smith. 1994. "[Preferences, Property Rights, and Anonymity in Bargaining Games](https://doi.org/10.1006/game.1994.1056)." *Games and Economic Behavior* 7 (3): 346–380.
- Johnson, Eric J., e Daniel Goldstein. 2003. "[Do Defaults Save Lives?](https://doi.org/10.1126/science.1091721)" *Science* 302 (5649): 1338–1339.
- Kahneman, Daniel. 2011. [*Thinking, Fast and Slow*](https://books.google.com.br/books?id=ZuKTvERuPG8C). New York: Farrar, Straus and Giroux.
- Kahneman, Daniel, Jack L. Knetsch, e Richard H. Thaler. 1990. "[Experimental Tests of the Endowment Effect and the Coase Theorem](https://doi.org/10.1086/261737)." *Journal of Political Economy* 98 (6): 1325–1348.
- Kahneman, Daniel, e Amos Tversky. 1979. "[Prospect Theory: An Analysis of Decision under Risk](https://doi.org/10.2307/1914185)." *Econometrica* 47 (2): 263–291.
- Karsten, Jan Gunnar. 2005. "[O efeito de disposição: um estudo empírico no Brasil](https://repositorio.fgv.br/items/1256bbfa-2e9a-4a58-8787-eed63f10d1cb)." Dissertação de mestrado, FGV/EPGE.
- Klibanoff, Peter, Massimo Marinacci, e Sujoy Mukerji. 2005. "[A Smooth Model of Decision Making under Ambiguity](https://doi.org/10.1111/j.1468-0262.2005.00640.x)." *Econometrica* 73 (6): 1849–1892.
- Knight, Frank H. 1921. [*Risk, Uncertainty and Profit*](https://books.google.com.br/books?id=AcBLAAAAMAAJ). Boston: Houghton Mifflin.
- Laibson, David. 1997. "[Golden Eggs and Hyperbolic Discounting](https://doi.org/10.1162/003355397555253)." *Quarterly Journal of Economics* 112 (2): 443–478.
- Lichtenstein, Sarah, Baruch Fischhoff, e Lawrence D. Phillips. 1982. "Calibration of Probabilities: The State of the Art to 1980." Em *Judgment under Uncertainty: Heuristics and Biases*, org. Daniel Kahneman, Paul Slovic e Amos Tversky, 306–334. Cambridge: Cambridge University Press.
- List, John A., e Todd L. Cherry. 2000. "[Learning to Accept in Ultimatum Games: Evidence from an Experimental Design That Generates Low Offers](https://doi.org/10.1023/a:1009989907258)." *Experimental Economics* 3 (1): 11–29.
- Madrian, Brigitte C., e Dennis F. Shea. 2001. "[The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior](https://doi.org/10.1162/003355301753265543)." *Quarterly Journal of Economics* 116 (4): 1149–1187.
- Northcraft, Gregory B., e Margaret A. Neale. 1987. "[Experts, Amateurs, and Real Estate: An Anchoring-and-Adjustment Perspective on Property Pricing Decisions](https://doi.org/10.1016/0749-5978(87)90046-X)." *Organizational Behavior and Human Decision Processes* 39 (1): 84–97.
- O'Donoghue, Ted, e Matthew Rabin. 1999. "[Doing It Now or Later](https://doi.org/10.1257/aer.89.1.103)." *American Economic Review* 89 (1): 103–124.
- Prelec, Drazen. 1998. "[The Probability Weighting Function](https://doi.org/10.2307/2998573)." *Econometrica* 66 (3): 497–527.
- Prelec, Drazen, e George Loewenstein. 1998. "[The Red and the Black: Mental Accounting of Savings and Debt](https://doi.org/10.1287/mksc.17.1.4)." *Marketing Science* 17 (1): 4–28.
- Quiggin, John. 1982. "[A Theory of Anticipated Utility](https://doi.org/10.1016/0167-2681(82)90008-7)." *Journal of Economic Behavior & Organization* 3 (4): 323–343.
- Samuelson, Paul A. 1937. "[A Note on Measurement of Utility](https://doi.org/10.2307/2967612)." *Review of Economic Studies* 4 (2): 155–161.
- Samuelson, William, e Richard Zeckhauser. 1988. "[Status Quo Bias in Decision Making](https://doi.org/10.1007/BF00055564)." *Journal of Risk and Uncertainty* 1 (1): 7–59.
- Slovic, Paul, Melissa L. Finucane, Ellen Peters, e Donald G. MacGregor. 2007. "[The Affect Heuristic](https://doi.org/10.1016/j.ejor.2005.04.006)." *European Journal of Operational Research* 177 (3): 1333–1352.
- Thaler, Richard H. 1985. "[Mental Accounting and Consumer Choice](https://doi.org/10.1287/mksc.4.3.199)." *Marketing Science* 4 (3): 199–214.
- Thaler, Richard H. 1999. "[Mental Accounting Matters](https://doi.org/10.1002/(SICI)1099-0771(199912)12:4<183::AID-BDM318>3.0.CO;2-F)." *Journal of Behavioral Decision Making* 12 (3): 183–206.
- Thaler, Richard H., e Shlomo Benartzi. 2004. "[Save More Tomorrow: Using Behavioral Economics to Increase Employee Saving](https://doi.org/10.1086/380085)." *Journal of Political Economy* 112 (S1): S164–S187.
- Thaler, Richard H., e Hersh Shefrin. 1981. "[An Economic Theory of Self-Control](https://doi.org/10.1086/260971)." *Journal of Political Economy* 89 (2): 392–406.
- Thaler, Richard H., e Cass R. Sunstein. 2003. "[Libertarian Paternalism](https://doi.org/10.1257/000282803321947001)." *American Economic Review* 93 (2): 175–179.
- Thaler, Richard H., e Cass R. Sunstein. 2008. [*Nudge: Improving Decisions about Health, Wealth, and Happiness*](https://books.google.com.br/books?id=dSJQn8egXvUC). New Haven: Yale University Press.
- Tversky, Amos, e Daniel Kahneman. 1974. "[Judgment under Uncertainty: Heuristics and Biases](https://doi.org/10.1126/science.185.4157.1124)." *Science* 185 (4157): 1124–1131.
- Tversky, Amos, e Daniel Kahneman. 1981. "[The Framing of Decisions and the Psychology of Choice](https://doi.org/10.1126/science.7455683)." *Science* 211 (4481): 453–458.
- Tversky, Amos, e Daniel Kahneman. 1992. "[Advances in Prospect Theory: Cumulative Representation of Uncertainty](https://doi.org/10.1007/BF00122574)." *Journal of Risk and Uncertainty* 5 (4): 297–323.
- Wason, Peter C. 1960. "[On the Failure to Eliminate Hypotheses in a Conceptual Task](https://doi.org/10.1080/17470216008416717)." *Quarterly Journal of Experimental Psychology* 12 (3): 129–140.
- Wilkinson, Nick, e Matthias Klaes. 2012. [*An Introduction to Behavioral Economics*](https://books.google.com/books?id=qxtHEAAAQBAJ). 2ª ed. London: Palgrave Macmillan.
- Wu, George, e Richard Gonzalez. 1996. "[Curvature of the Probability Weighting Function](https://doi.org/10.1287/mnsc.42.12.1676)." *Management Science* 42 (12): 1676–1690.
