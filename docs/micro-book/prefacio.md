# Prefácio

## Por que mais um livro de Microeconomia?

Em 1975, quando questionado sobre por que estava escrevendo mais um livro de análise microeconômica, Hal Varian respondeu algo na linha de "porque os que existem são terríveis ou são perfeitos demais para serem úteis". Meio século depois, a situação melhorou — mas não o suficiente. As estantes vergam sob o peso de Mas-Colell, Varian, Nicholson & Snyder, Pindyck & Rubinfeld, Jehle & Reny, e uma constelação de manuais que, juntos, contêm praticamente tudo que um ser humano precisa saber sobre a teoria dos preços. Se o leitor já possui um desses volumes, por que deveria abrir este?

A resposta curta: porque nenhum deles foi escrito *para você*.

"Você", neste caso, é um estudante brasileiro que abre um manual consagrado e se depara com exemplos sobre o mercado imobiliário de Manhattan, a regulação de telecomunicações britânica e os hábitos de consumo do subúrbio de Chicago. A teoria é impecável — mas a distância entre a equação e a sua vida é oceânica. Você aprendeu o teorema de Coase num mundo sem custos de transação — e mora num país onde o custo de transação é praticamente um esporte nacional. Estudou a decomposição de Slutsky com dados de consumo americanos — e nunca viu ninguém aplicá-la à POF do IBGE. Leu sobre monopólio natural com exemplos da British Telecom — e não faz ideia de como o mesmo conceito explica a regulação da Sabesp.

Este livro é uma tentativa de fechar essa distância.

A resposta longa é o que vem depois desta página.

---

## De onde veio este livro

Este projeto não nasceu de uma epifania editorial nem de um plano de carreira. Nasceu de cadernos. Muitos cadernos.

Tudo começou nas anotações de um aluno de graduação tentando sobreviver a Microeconomia I com mais curiosidade do que talento — rabiscando intuições nas margens dos teoremas, traduzindo o formalismo para uma linguagem que o próprio cérebro aceitasse processar. Depois vieram as notas de mestrado, onde a matemática ficou mais densa e as intuições, paradoxalmente, mais necessárias. E então o doutorado, onde aprendi que a fronteira do conhecimento é o lugar em que a teoria acaba e a humildade começa.

Quando troquei de lado da mesa e passei a *dar* aulas de microeconomia — em graduação, mestrado e doutorado —, descobri que o problema não tinha mudado: os alunos travavam nos mesmos pontos em que eu havia travado. Não por falta de inteligência, mas por falta de um material que falasse a língua deles — literalmente (em português) e figurativamente (com exemplos que fizessem sentido no país em que vivem).

As notas de aula foram se acumulando. Primeiro em papel. Depois em LaTeX. Depois em slides que ninguém lia. Em algum momento, olhei para o volume de material e percebi que tinha, nas mãos, o esqueleto de algo maior — um livro que eu gostaria de ter tido como aluno e que meus alunos mereciam ter agora.

O que você tem diante de si é, portanto, o resultado de anos dos dois lados da sala de aula: o destilado de centenas de horas tentando entender microeconomia como aluno e tentando explicá-la como professor. Cada box de "Intuição Econômica" reflete um momento em que eu vi olhos arregalados se transformarem em compreensão. Cada "Erro Comum" registra uma armadilha em que eu mesmo caí — ou vi turmas inteiras caindo. Cada exercício resolvido carrega a marca das dúvidas mais frequentes em horários de monitoria e plantões de dúvida.

---

## Os livros que mudaram o jeito como eu penso (e ensino)

Todo professor carrega, conscientemente ou não, uma biblioteca invisível — os livros e artigos que moldaram não apenas *o que* ele sabe, mas *como* ele pensa e se comunica. Este livro tem três influências confessas, e me parece honesto explicitá-las de saída.

### O encanador

Em 2017, Esther Duflo publicou "The Economist as Plumber" — um artigo que, para mim, funcionou como uma condição de primeira ordem existencial.[^plumber] A tese é simples e devastadora: a maioria dos economistas é treinada para ser engenheira — projetar mecanismos elegantes, derivar soluções ótimas, demonstrar teoremas de existência. Mas o mundo precisa de *encanadores*: gente que vai até o cano, abre a parede, olha onde está o vazamento e conserta. Não é glamouroso. Não rende fotos bonitas. Mas sem o encanador, o edifício teórico mais sofisticado não serve para nada — porque a água continua pingando no chão.

[^plumber]: Duflo, Esther. 2017. "The Economist as Plumber." *American Economic Review* 107 (5): 1–26. Se você ler um único artigo fora do programa da disciplina, que seja este.

Esse artigo mudou a minha relação com a microeconomia. Não me fez abandonar a teoria — pelo contrário. Me fez perceber que a teoria só se completa quando toca o concreto: quando a condição de Samuelson vira uma regra de financiamento do SUS, quando a elasticidade-preço da demanda vira a calibração de um imposto sobre bebidas açucaradas, quando o modelo de Akerlof explica por que o spread bancário brasileiro é tão alto. Este livro é, em grande medida, uma tentativa de formar economistas que saibam fazer as duas coisas — projetar a tubulação *e* consertar o vazamento.

### A descoberta de que micro pode ser divertido

Antes de ler *Freakonomics*, eu achava que microeconomia era importante. Depois de ler, passei a achar que era *irresistível*.

Levitt e Dubner fizeram algo que, em retrospecto, parece óbvio mas que ninguém tinha feito tão bem: mostraram que as ferramentas da microeconomia — incentivos, seleção adversa, assimetria de informação, causalidade — não são apenas úteis para resolver problemas de livro-texto. São úteis para entender *tudo*: por que lutadores de sumô trapaceiam, por que corretores de imóveis mentem, por que criminosos moram com a mãe. A sacada não era a resposta — era a *pergunta*. Perguntas inesperadas, contraintuitivas, que faziam o leitor pensar "isso não pode ter a ver com economia" — e aí tinha tudo a ver.

*Freakonomics* me ensinou que o primeiro dever de um professor é despertar curiosidade. Um aluno curioso tolera a álgebra; um aluno entediado não tolera nem o exemplo mais brilhante. Por isso, cada capítulo deste livro abre com uma pergunta — não com uma definição. Se a pergunta for boa o suficiente, o aluno *quer* chegar à resposta, e a teoria se torna o caminho, não o obstáculo.

### Os peers que falam com você, não para você

Existe uma tradição, antiga e nefasta, em livros-texto de economia: o tom Olímpico. O autor escreve do alto de uma montanha, distribuindo verdades com magnanimidade. O leitor, lá embaixo, deve absorver com gratidão e silêncio. Se não entendeu, o problema é dele.

Dois livros me mostraram que existe outro caminho.

O *Mostly Harmless Econometrics*, de Angrist e Pischke, é um livro que conversa com o leitor como um colega mais experiente conversa com um colega mais novo no corredor do departamento — sem condescendência, sem pompa, com café na mão. A mensagem implícita em cada página é: "Olha, isso aqui é complicado, eu também apanhei, mas vamos resolver juntos." O capítulo sobre variáveis instrumentais começa admitindo que IV é um pesadelo — e essa honestidade, paradoxalmente, é o que torna a explicação compreensível. Quando o autor confessa suas próprias dificuldades, o leitor se sente autorizado a ter as dele.

O *Causal Inference: The Mixtape*, de Cunningham, leva isso adiante. O tom é de conversa de bar entre econometristas — com referências a hip-hop, memes acadêmicos e a coragem de dizer "olha, essa técnica é meio gambiarra, mas funciona e aqui está o porquê". Não é *top-down*. Não é o professor que sabe tudo explicando para o aluno que não sabe nada. É um *peer* falando com outro *peer* — desmistificando a trajetória de aprendizagem, mostrando que o caminho até dominar diff-in-diff ou RDD não é uma estrada reta e iluminada, mas uma trilha de mata fechada com alguns tropeços, alguns atalhos errados e, eventualmente, uma clareira.

Este livro tenta operar nesse registro. Não escrevo do alto de montanha alguma — escrevo da mesa de trabalho, com as mesmas dúvidas que o leitor terá, com a vantagem modesta de já ter tropeçado nelas antes. Quando um conceito é difícil, digo que é difícil. Quando uma hipótese é absurda, digo que é absurda (e explico por que ainda assim é útil). Quando eu mesmo não estou totalmente convencido de um resultado, as notas de rodapé são o espaço para essa confissão. O objetivo não é parecer inteligente — é ser claro.

---

## O que este livro faz de diferente

Essas três influências — o encanador, o provocador e os peers — não são apenas inspiração filosófica. Elas se traduzem em escolhas concretas de design que permeiam cada capítulo.

### Rigor sem pedantismo

Cada resultado é demonstrado formalmente — condições de primeira ordem, condições de segunda ordem, demonstrações completas quando instrutivas. Não há "o leitor pode verificar que..." seguido de silêncio constrangedor.[^verify] Mas também não há formalismo pelo formalismo. Se uma demonstração é longa e pouco iluminadora, fornecemos a intuição central e indicamos a referência para quem quiser percorrer cada passo. A matemática está a serviço da economia — e quando ela ameaça virar obstáculo em vez de ferramenta, paramos para traduzir.

[^verify]: Se você já abriu um livro de microeconomia avançada e encontrou um "trivially follows" que exigiu três horas de trabalho, sabe do que estou falando. Este livro promete não fazer isso com você. Ou, pelo menos, quando fizer, será com a decência de admitir que não é trivial.

O Capítulo 2, nosso "Manual de Sobrevivência Matemática", garante que todos os leitores partam de uma base comum — do Lagrangeano às condições de Kuhn-Tucker, do teorema do envelope à equação de Euler intertemporal. Quem já domina o ferramental pode percorrê-lo rapidamente; quem precisa de reforço encontrará ali uma referência autocontida.

### Intuição a cada esquina

Um resultado sem intuição é um número de telefone sem nome — tecnicamente correto, mas inútil quando você precisa ligar. Cada seção contém boxes de **Intuição Econômica** que traduzem o formalismo em linguagem acessível: analogias com o cotidiano, exemplos do supermercado, metáforas que grudam na memória. Se o leitor lembrar da intuição, a álgebra vem por arrasto; se lembrar apenas da álgebra, corre o risco de virar aquele economista que sabe calcular tudo e entender nada. Varian sempre soube que uma boa frase vale mais que uma página de contas — e este livro leva essa lição a sério.

### O Brasil como laboratório

Aqui está o encanamento em ação. Os manuais internacionais usam exemplos americanos e europeus — natural, foram escritos lá. Mas quando o estudante brasileiro lê sobre o mercado de trabalho de New Jersey ou o programa de vouchers de Milwaukee, há uma distância que dificulta a conexão intelectual com a teoria. E ninguém aprende direito aquilo que não sente que lhe diz respeito.

Este livro oferece **Boxes Brasil** em cada capítulo: análises de dados reais do IBGE, do IPEA, do Banco Central, da ANP, do CADE e de outras fontes oficiais, mostrando como os conceitos teóricos se manifestam na economia brasileira. A farinha de mandioca como bem de Giffen. O Plano Real como aplicação da teoria dos jogos. O Auxílio Gás e o princípio do montante fixo. A Nota Fiscal Paulista como mecanismo de incentivos. O "custo Brasil" e a curva envoltória de custos. A gasolina e o etanol como substitutos quase perfeitos.

Além disso, **Boxes Mundo** trazem casos internacionais emblemáticos — da Toyota à TSMC, do Concorde ao *surge pricing* da Uber — para que o leitor veja a microeconomia em ação nos quatro cantos do planeta. Porque, afinal, a teoria dos preços não respeita fronteiras — só respeita restrições orçamentárias.

### Gráficos interativos: veja a teoria se mover

Uma curva de indiferença é mais reveladora quando você pode arrastá-la. Uma decomposição de Slutsky faz mais sentido quando você vê o efeito substituição se separar do efeito renda em tempo real. O equilíbrio de Nash ganha vida quando você pode ajustar os payoffs e ver as funções de melhor-resposta se deslocarem.

Este livro contém dezenas de **gráficos interativos** — construídos com JSXGraph e integrados diretamente ao texto. Cada gráfico permite ao leitor manipular parâmetros (preços, renda, elasticidades, coeficientes de aversão ao risco) e observar como curvas, equilíbrios e medidas de bem-estar respondem. Não se trata de ilustrações decorativas: são ferramentas de aprendizado ativo, projetadas para que o aluno *sinta* a teoria nos dedos — literalmente arrastando sliders e observando equações se atualizarem.

### Exercícios que preparam para a vida (e para a ANPEC)

Cada capítulo contém três tipos de exercícios:

1. **Exercícios resolvidos** — inseridos ao longo do texto, imediatamente após o conceito que aplicam. São detalhados, passo a passo, com interpretação econômica ao final. O objetivo é modelar o raciocínio: como montar o problema, por onde começar, como verificar a resposta.

2. **Exercícios propostos** — com progressão de dificuldade (fáceis, médios, difíceis) e soluções completas disponíveis na seção de soluções. Incluem problemas conceituais, cálculos e aplicações a cenários brasileiros reais.

3. **"Vem, ANPEC!"** — questões selecionadas de provas da ANPEC (Associação Nacional de Pós-Graduação em Economia), com gabaritos e justificativas detalhadas item a item. Para quem se prepara para o exame, essa seção é ouro puro. Para quem não se prepara, é uma demonstração de como a ANPEC tem o dom de transformar conceitos aparentemente simples em armadilhas conceituais engenhosas.

### Pesquisa em Ação

A microeconomia não é uma disciplina museológica — é uma ciência viva, com pesquisa empírica ativa que refina, confirma e por vezes desafia a teoria. Cada capítulo encerra com uma seção **"Pesquisa em Ação"** que apresenta artigos publicados em *top journals* (AER, Econometrica, QJE, JPE, REStud e outros), escolhidos por sua relevância direta para o conteúdo do capítulo. Preferencialmente com dados brasileiros, mas sem hesitar em apresentar trabalhos seminais internacionais quando necessário.

O objetivo é duplo: mostrar ao aluno que a teoria tem consequências empíricas testáveis, e expô-lo desde cedo à fronteira da pesquisa — algo que muitos livros-texto relegam a notas de rodapé, se mencionam. Porque a distância entre a sala de aula e o paper publicado deveria ser um corredor, não um abismo.

---

## A quem se destina

Este livro foi concebido para:

- **Graduandos avançados em Economia** que cursam Microeconomia e precisam de tratamento formal mas acessível.
- **Estudantes de mestrado** que buscam uma referência em português com nível intermediário-avançado, entre Varian e Mas-Colell.
- **Candidatos à ANPEC** que precisam de uma preparação rigorosa com exercícios no formato da prova.
- **Profissionais** de regulação, política pública, consultoria e mercado financeiro que querem revisitar os fundamentos microeconômicos com aplicações contemporâneas.
- **Curiosos disciplinados** de qualquer área que aceitem o desafio de pensar com precisão sobre escolha, escassez e incentivos.

O pré-requisito formal é cálculo de uma e várias variáveis. O Capítulo 2 revisa todo o ferramental necessário, mas espera-se familiaridade prévia com derivadas, integrais e álgebra linear elementar. Se a expressão "derivada parcial" lhe causa angústia, talvez valha começar pelo Capítulo 2 antes de qualquer outra coisa. Não há vergonha nisso — há estratégia.

---

## Como usar este livro

**Leitura linear**: os capítulos foram organizados numa sequência pedagógica deliberada — cada conceito se constrói sobre os anteriores. O leitor que seguir a ordem dos capítulos encontrará uma narrativa coerente, com referências cruzadas que criam uma rede de conexões. É como uma série com arcos narrativos: se você pular episódios, ainda entende, mas perde as Easter eggs.

**Leitura seletiva**: cada capítulo é razoavelmente autocontido, com referências explícitas aos pré-requisitos. Um leitor que domine a teoria do consumidor pode saltar diretamente para a teoria da firma ou para a teoria dos jogos, consultando capítulos anteriores quando necessário. O [Mapa do Livro](mapa-livro.md) mostra exatamente quais capítulos dependem de quais — siga as setas e não se perderá.

**Para a ANPEC**: as seções "Vem, ANPEC!" de cada capítulo formam, juntas, um banco de questões comentadas que pode ser percorrido independentemente. É a coisa mais próxima de um tutor particular que um livro pode oferecer — sem o custo horário.

**Os gráficos interativos** funcionam melhor em tela de computador ou tablet. Nos smartphones, a experiência é aceitável mas limitada. Recomendamos que o leitor dedique tempo a manipular os gráficos — não apenas olhar para eles. A diferença entre observar uma demonstração e *interagir* com ela é a diferença entre ler sobre nadar e entrar na água.

### Elementos do livro: o que é cada box

Ao longo do texto, você encontrará vários tipos de caixas coloridas. Cada uma tem uma função específica — aqui está o mapa:

| Elemento | O que você encontra ali |
|:---------|:------------------------|
| **Definição** | Definição formal de um conceito. Leia com atenção — a notação será usada depois. |
| **Teorema / Proposição** | Resultado formal com enunciado preciso. A demonstração vem logo abaixo (ou em nota). |
| **Intuição Econômica** | Tradução do formalismo em linguagem humana. Se você só lembrar de uma coisa, lembre disso. |
| **Exercício Resolvido** | Problema trabalhado passo a passo, logo após o conceito que aplica. |
| **Box Brasil** | Aplicação com dados brasileiros reais (IBGE, IPEA, ANP, CADE, ANS, DATASUS). |
| **Box Mundo** | Caso internacional emblemático — da Toyota ao NHS, do Uber à TSMC. |
| **Prêmio Nobel** | Mini-biografia do laureado e conexão com o conteúdo do capítulo. |
| **Erro Comum** | Armadilhas conceituais que pegam até estudantes avançados — e que a ANPEC adora explorar. |
| **Lab** | Mini-laboratório computacional com código em Python ou R para replicar resultados. |
| **Atividade de Sala** | Simulação, experimento ou debate estruturado para uso em aula (com timing e debrief). |
| **Conexão** | Referência cruzada a outro capítulo — indica que o conceito é desenvolvido ou aplicado em outra parte do livro. |

**Sobre o humor:** Sim, há notas de rodapé com referências a Monty Python. Não, elas não são decorativas. Cada uma ilumina um conceito econômico — se você entender a piada, entendeu a economia. Se não viu Monty Python... esta é uma excelente desculpa para assistir. E se você já viu mas acha que Monty Python e microeconomia não combinam, considere que o sketch do *Dead Parrot* é a melhor aula de assimetria de informação e *cheap talk* já filmada — e que o Black Knight dizendo *"'Tis but a scratch!"* sem os dois braços é a definição visual de *sunk cost fallacy*. A economia está em toda parte, inclusive — especialmente — onde é engraçada.

---

## Agradecimentos

Nenhum livro é uma ilha — mas um livro que nasce de notas de aula é, no mínimo, um arquipélago. Cada capítulo carrega a marca de professores que me ensinaram a pensar, colegas que desafiaram minhas certezas e alunos que me forçaram a ser mais claro (ou que, ao não entenderem, me mostraram onde o texto falhava — que é, pedagogicamente, a mesma coisa).

Agradeço aos professores que, ao longo da minha formação, me mostraram que microeconomia é mais do que maximização com restrição — é uma forma de olhar para o mundo. Aos colegas que comentaram versões preliminares com generosidade e rigor. Aos alunos que, ao longo dos anos, serviram como cobaias involuntárias (e surpreendentemente pacientes) das primeiras versões dos exercícios, dos gráficos interativos e das piadas de Monty Python — e cujo feedback moldou este material mais do que eles imaginam.

E ao leitor que chegou até aqui — sinal de que pelo menos a introdução cumpriu seu papel de despertar curiosidade. Prometo que o restante do livro é melhor que o prefácio. Todo autor diz isso, mas neste caso é verdade: a microeconomia é mais interessante que qualquer coisa que eu possa escrever *sobre* ela.

---

## Uma última advertência

George Box disse que "todos os modelos estão errados, mas alguns são úteis." O mesmo vale para livros-texto. Este não é perfeito — nenhum é. Haverá erros tipográficos que escaparam à revisão, exemplos que poderiam ser mais claros, demonstrações que poderiam ser mais elegantes. Se o leitor encontrar algum desses, considere-se convidado a contribuir: o projeto é de código aberto, e cada correção melhora o material para todos.

O que este livro *pode* oferecer é um caminho — do zero ao equilíbrio, e além — percorrido com rigor, com exemplos que fazem sentido no seu contexto, com gráficos que se movem quando você os toca e com a convicção inabalável de que a microeconomia, bem ensinada, é uma das experiências intelectuais mais recompensadoras que existem. Se ao final da leitura você discordar dessa convicção, eu aceito o resultado — mas peço que ao menos verifique as condições de primeira ordem antes de concluir.

Boa leitura. E lembre-se: na margem, tudo se resolve.

<div style="text-align: right; margin-top: 2rem; font-style: italic;">

**Darcio Genicolo Martins**<br>
São Paulo, março de 2026

</div>
