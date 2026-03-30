---
title: ""
author: ""
date: ""
lang: pt-BR
geometry: "margin=2.5cm"
fontsize: 12pt
linestretch: 1.3
mainfont: "DejaVu Serif"
sansfont: "Inter"
colorlinks: true
linkcolor: "BrickRed"
urlcolor: "BrickRed"
header-includes: |
  \usepackage{xcolor}
  \definecolor{insper}{HTML}{C8102E}
  \usepackage{fancyhdr}
  \pagestyle{fancy}
  \fancyhead[L]{\small\textcolor{insper}{Proposta Editorial}}
  \fancyhead[R]{\small\textcolor{insper}{Microeconomia: Do Zero ao Equilíbrio (e Além)}}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \usepackage{titlesec}
  \titleformat{\section}{\Large\bfseries\sffamily\color{insper}}{}{0em}{}
  \titleformat{\subsection}{\large\bfseries\sffamily\color{insper!80!black}}{}{0em}{}
---

\begin{center}
\vspace*{2cm}

{\fontsize{28}{34}\selectfont\bfseries\sffamily\textcolor{insper}{Microeconomia}}

\vspace{0.3cm}

{\fontsize{18}{22}\selectfont\sffamily Do Zero ao Equilíbrio (e Além)}

\vspace{1.5cm}

{\Large\sffamily Proposta Editorial}

\vspace{1cm}

{\large Prof. Darcio Genicolo Martins}

{\normalsize Insper — Instituto de Ensino e Pesquisa}

\vspace{0.5cm}

{\normalsize São Paulo, Março de 2026}

\vspace{2cm}

\rule{0.4\textwidth}{0.5pt}

\vspace{0.3cm}

{\small Documento confidencial — para avaliação editorial}

\end{center}

\newpage

\tableofcontents

\newpage

# Sinopse

**Microeconomia: Do Zero ao Equilíbrio (e Além)** é um livro-texto de microeconomia para graduação avançada e pós-graduação, escrito integralmente em português brasileiro. A obra cobre os tópicos centrais da teoria dos preços — do consumidor à firma, do equilíbrio parcial ao geral, de poder de mercado a falhas de mercado — com rigor matemático comparável ao de Nicholson & Snyder e Varian, mas com uma linguagem acessível e exemplos ancorados na realidade brasileira.

O diferencial do projeto é a combinação de três elementos raramente encontrados juntos no mercado editorial de economia em português: (i) **rigor formal** — demonstrações completas, condições de primeira e segunda ordem, dualidade; (ii) **ancoragem empírica** — boxes com dados do IBGE, IPEA, CADE, ANP e outros órgãos brasileiros em cada capítulo; e (iii) **interatividade** — mais de 230 gráficos manipuláveis que permitem ao leitor arrastar curvas, ajustar parâmetros e visualizar a teoria se movendo em tempo real.

O livro está completo (24 capítulos, 12 partes) e em uso ativo em disciplinas do Insper. A versão digital, construída sobre plataforma web moderna, já acumula conteúdo equivalente a aproximadamente 1.700 páginas impressas. A presente proposta visa a publicação de uma edição impressa que complemente a experiência digital — com QR codes conectando cada gráfico estático à sua versão interativa online.

A obra é, simultaneamente, um livro-texto para sala de aula, uma referência de consulta para profissionais e um instrumento de preparação para a ANPEC, com mais de 330 questões comentadas do exame nacional.

\newpage

# Público-Alvo

O livro destina-se a cinco públicos principais:

- **Graduandos em Economia** (3º--4º ano) que cursam Microeconomia Intermediária ou Avançada e necessitam de tratamento formal acessível, com exemplos em português e exercícios integrados ao texto.

- **Estudantes de mestrado e doutorado** em Economia, Administração e áreas correlatas que buscam uma referência intermediária entre Varian e Mas-Colell, com cobertura de tópicos avançados (equilíbrio geral, teoria dos jogos bayesiana, mecanismos, economia da informação).

- **Candidatos à ANPEC** que precisam de preparação rigorosa com exercícios no formato da prova, gabaritos comentados e armadilhas conceituais explicitadas.

- **Profissionais** de regulação (CADE, ANEEL, ANP, ANS), política pública, consultoria e mercado financeiro que desejam revisitar fundamentos microeconômicos com aplicações contemporâneas e dados brasileiros.

- **Autodidatas com base quantitativa** — engenheiros, cientistas de dados e profissionais de áreas STEM que buscam formação sólida em microeconomia com abordagem rigorosa mas não intimidante.

O mercado brasileiro de livros-texto de microeconomia em nível intermediário-avançado é dominado por traduções (Varian, Pindyck & Rubinfeld) que, embora tecnicamente corretas, não oferecem exemplos brasileiros nem interatividade. Este livro preenche essa lacuna.

\newpage

# Diferencial Competitivo

## Por que este livro é necessário

O ensino de microeconomia no Brasil enfrenta um paradoxo: os melhores manuais foram escritos em inglês, para um público que vive em outra realidade econômica. As traduções disponíveis reproduzem exemplos americanos e europeus sem adaptação substantiva. O estudante brasileiro aprende o teorema de Coase com exemplos de Chicago e a discriminação de preços com dados da FTC — mas nunca vê a PNAD, o CADE ou a ANP como fontes de ilustração microeconômica.

## Seis diferenciais concretos

### 1. Escrito em português brasileiro, para o Brasil

Não é uma tradução. É um livro concebido desde o início para o estudante e o professor brasileiro. **92 Boxes Brasil** trazem dados reais do IBGE, IPEA, Banco Central, CADE, ANP, ANS e DATASUS. Exemplos incluem: a farinha de mandioca como bem de Giffen, o Plano Real como teoria dos jogos, o Auxílio Gás e o princípio do montante fixo, a regulação da Sabesp como monopólio natural.

### 2. Gráficos interativos com ponte digital-física

Mais de **230 gráficos interativos** construídos com JSXGraph, Plotly.js e WebR, integrados ao texto. Na versão impressa, cada gráfico aparece como imagem estática acompanhada de um **QR code** que leva à versão manipulável online. O leitor pode arrastar curvas de indiferença, ajustar elasticidades, observar a decomposição de Slutsky em tempo real ou simular equilíbrios de Nash alterando payoffs.

### 3. Rigor sem pedantismo

Todos os resultados são demonstrados formalmente — condições de primeira e segunda ordem, dualidade, teoremas do envelope. Mas a matemática está a serviço da economia: cada demonstração é acompanhada de uma **Intuição Econômica** (170 boxes ao longo do livro) que traduz o formalismo em linguagem acessível, com analogias e metáforas que fixam o conceito.

### 4. Preparação integrada para a ANPEC

Mais de **330 questões ANPEC** comentadas item a item, distribuídas por capítulo na seção "Vem, ANPEC!". Além disso, **25 boxes de Erros Comuns** alertam o leitor para as armadilhas conceituais que a ANPEC explora sistematicamente.

### 5. Pesquisa empírica em cada capítulo

Cada capítulo encerra com uma seção **Pesquisa em Ação** que apresenta artigos publicados em *top journals* (AER, Econometrica, QJE, JPE, REStud), preferencialmente com dados brasileiros. São **28 seções** que expõem o aluno à fronteira da pesquisa desde o primeiro semestre.

### 6. Cobertura moderna e abrangente

Além dos tópicos clássicos, o livro inclui capítulos dedicados a **economia comportamental** (Cap. 8), **economia digital** (Cap. 21 — redes, mercados bilaterais, atenção), **economia da saúde** (Cap. 23) e **economia ambiental** (Cap. 24 — precificação de carbono, valoração ambiental) — temas que refletem a agenda contemporânea da disciplina e que são raros em manuais tradicionais.

\newpage

# Sumário Comentado

O livro está organizado em **12 partes** e **24 capítulos**, seguindo uma progressão pedagógica deliberada: das ferramentas aos mercados, do indivíduo à interação, da competição às falhas.

## Parte I — Ferramentas

**Cap. 1 — Todos os Modelos Estão Errados.** Introdução à modelagem econômica, pensamento marginal e as "regras do jogo" da microeconomia. Estabelece a filosofia do livro: modelos são simplificações úteis, não descrições da realidade.

**Cap. 2 — O Manual de Sobrevivência Matemática.** Revisão autocontida do ferramental: otimização com e sem restrições, Lagrange, Kuhn-Tucker, teorema do envelope, estática comparativa. Garante base comum a todos os leitores.

## Parte II — O Consumidor

**Cap. 3 — Mais É Melhor — Será?** Axiomas de preferência, curvas de indiferença, taxa marginal de substituição. Primeira exposição à formalização da escolha.

**Cap. 4 — Você Quer Tudo. Mas Não Pode.** O problema do consumidor, utilidade indireta, dualidade (minimização de gasto), catálogo de funções utilidade.

**Cap. 5 — Slutsky no Supermercado.** Decomposição de Slutsky, elasticidades, excedente do consumidor. Os gráficos interativos permitem visualizar efeito substituição e renda em tempo real.

**Cap. 6 — Substitutos, Complementos e Relações Complicadas.** Bens compostos, agregação de demanda e relações entre bens.

## Parte III — Decisão sob Risco e Interação Estratégica

**Cap. 7 — O Preço do Talvez.** Utilidade esperada, aversão ao risco, prêmio de risco, preferências sobre estados da natureza.

**Cap. 8 — Nem Tão Racionais Assim.** Economia comportamental: heurísticas, teoria do prospecto, desconto hiperbólico, nudges, preferências sociais.

**Cap. 9 — Quando Sua Escolha Não É Só Sua.** Teoria dos jogos em quatro módulos: (a) jogos simultâneos e equilíbrio de Nash; (b) jogos sequenciais e repetidos; (c) jogos bayesianos e leilões; (d) sinalização, seleção adversa e mecanismos.

## Parte IV — A Firma e os Custos

**Cap. 10 — Mais Mãos, Mais Máquinas — Mais Produto?** Funções de produção, isoquantas, elasticidade de substituição, progresso técnico.

**Cap. 11 — A Conta Sempre Chega.** Minimização de custos, curvas de custo de curto e longo prazo, envoltória.

**Cap. 12 — Lucro = Receita − Custo.** Maximização de lucro, função de oferta, função lucro e lema de Hotelling.

## Parte V — Mercados Competitivos

**Cap. 13 — O Leiloeiro que Ninguém Vê.** Equilíbrio parcial, eficiência de mercado, políticas de preço (teto, piso, impostos, subsídios).

**Cap. 14 — Equilíbrio Geral.** Caixa de Edgeworth, eficiência de Pareto, teoremas do bem-estar, modelo com produção, equilíbrio geral computável.

## Parte VI — Poder de Mercado

**Cap. 15 — Sozinho, Feliz e Cobrando Caro.** Monopólio, índice de Lerner, discriminação de preços (1º, 2º e 3º graus), regulação.

**Cap. 16a — Poucos — e Isso Muda Tudo.** Oligopólio: Cournot, Bertrand, Stackelberg, diferenciação de produto.

**Cap. 16b — Colusão, Entrada e o Árbitro.** Cartéis, barreiras à entrada, concorrência monopolística, fusões e política antitruste.

## Parte VII — Fatores e Tempo

**Cap. 17 — O Salário Subiu e Você... Trabalhou Menos?** Oferta de trabalho, diferenciais compensatórios, monopsônio, sindicatos.

**Cap. 18 — A Paciência Tem Preço.** Capital, juros, modelo de Fisher, ativos financeiros, regra de Hotelling para recursos naturais.

## Parte VIII — Falhas de Mercado

**Cap. 19 — Quando Um Lado Sabe Mais.** Informação assimétrica: principal-agente, risco moral, seleção adversa, sinalização, leilões, matching markets.

**Cap. 20 — Fumaça, Caronas e Tragédias.** Externalidades, bens públicos, mecanismos de provisão, teorema de Coase, votação.

## Parte IX — Economia Digital

**Cap. 21 — Se É De Graça, O Produto É Você.** Bens de informação, efeitos de rede, mercados bilaterais, economia da atenção, custos de troca.

## Parte X — Métodos

**Cap. 22 — RCTs, Diff-in-Diff e Outras Siglas.** Experimentos de laboratório e campo, inferência causal, diferenças em diferenças, limites dos métodos.

## Parte XI — Economia da Saúde

**Cap. 23 — Doutor, Quanto Custa?** Modelo de Grossman, demanda por saúde, seguros, SUS, avaliação de tecnologias em saúde.

## Parte XII — Economia Ambiental

**Cap. 24 — Quanto Vale Um Pôr do Sol?** Instrumentos de política ambiental, precificação de carbono, valoração de recursos naturais.

\vspace{0.5cm}

O livro inclui ainda: **Cadernos Computacionais** (Python e R), **Compilado ANPEC** (todas as questões reunidas), **Glossário**, **Índice Remissivo** e **Referências Bibliográficas** consolidadas.

\newpage

# Amostra de Conteúdo

Acompanham esta proposta **três capítulos completos** em formato diagramado, selecionados para demonstrar a variedade pedagógica e a qualidade do material:

- **Capítulo 3 — Mais É Melhor — Será?** (Teoria do Consumidor — introdução). Demonstra a construção formal desde os axiomas, com gráficos interativos e Boxes Brasil.

- **Capítulo 15 — Sozinho, Feliz e Cobrando Caro** (Monopólio). Exemplifica a abordagem de poder de mercado, com Boxes Brasil sobre regulação e discriminação de preços no contexto brasileiro.

- **Capítulo 20 — Fumaça, Caronas e Tragédias** (Externalidades e Bens Públicos). Mostra a cobertura de falhas de mercado, com aplicações ambientais e análises de políticas públicas.

Os capítulos de amostra estão disponíveis no documento complementar *Amostra — Capítulos Selecionados para Avaliação Editorial*.

\newpage

# Sobre o Autor

**Darcio Genicolo Martins** é professor do Insper — Instituto de Ensino e Pesquisa, em São Paulo, onde leciona microeconomia em nível de graduação, mestrado e doutorado.

Sua trajetória acadêmica combina formação rigorosa em teoria econômica com experiência docente extensiva. As notas de aula que deram origem a este livro foram desenvolvidas, testadas e refinadas ao longo de anos de ensino, incorporando o feedback de centenas de alunos.

O projeto nasceu da percepção de que o mercado brasileiro carece de um livro-texto de microeconomia que combine três atributos: (i) rigor matemático compatível com padrões internacionais; (ii) exemplos e dados ancorados na realidade brasileira; e (iii) recursos interativos que aproveitem as possibilidades da tecnologia digital para o ensino de economia.

O autor mantém vínculo ativo com pesquisa empírica e aplicada, o que se reflete nas seções "Pesquisa em Ação" e nos Boxes Brasil distribuídos ao longo do livro — todos baseados em dados oficiais e artigos publicados em periódicos revisados por pares.

*Contato: darciogm1@insper.edu.br*

\newpage

# Especificações Técnicas

| Especificação | Valor |
|:---|:---|
| **Título** | Microeconomia: Do Zero ao Equilíbrio (e Além) |
| **Autor** | Darcio Genicolo Martins |
| **Afiliação** | Insper — Instituto de Ensino e Pesquisa |
| **Idioma** | Português brasileiro |
| **Nível** | Graduação avançada / Pós-graduação |
| **Status** | Livro completo, em uso em disciplinas |
| **Versão atual** | 1.3 (Março 2026) |
| | |
| **Partes** | 12 |
| **Capítulos** | 24 (30 seções com subdivisões) |
| **Páginas estimadas (impressão)** | ~1.700 páginas |
| **Palavras** | ~530.000 |
| | |
| **Gráficos interativos** | 239 |
| **Intuições Econômicas** | 170 boxes |
| **Exercícios Resolvidos** | 133 |
| **Boxes Brasil** | 92 |
| **Boxes Mundo** | 81 |
| **Prêmios Nobel** | 37 boxes |
| **Erros Comuns** | 25 boxes |
| **Labs computacionais** | 15 |
| **Questões ANPEC comentadas** | 336 |
| **Seções Pesquisa em Ação** | 28 |
| **Referências bibliográficas** | 349 |
| **Total de elementos didáticos** | 1.536 boxes/admonitions |
| | |
| **Referência teórica principal** | Nicholson & Snyder |
| **Tecnologias interativas** | JSXGraph, Plotly.js, WebR, D3.js |
| **Formato digital** | MkDocs Material (web, responsivo) |

\newpage

# Estratégia Digital-Física

## O livro como ecossistema

Este projeto foi concebido como um **ecossistema complementar**, não como dois produtos concorrentes. A versão digital e a versão impressa cumprem funções distintas e se potencializam mutuamente.

### A versão digital oferece:

- **Interatividade plena**: gráficos manipuláveis, simulações, cadernos computacionais executáveis no navegador (WebR, Python).
- **Atualização contínua**: correções, novos boxes e exercícios podem ser incorporados sem nova edição.
- **Busca e navegação**: referências cruzadas clicáveis, glossário interativo, índice remissivo com links diretos.
- **Acessibilidade**: disponível em qualquer dispositivo com navegador.

### A versão impressa oferece:

- **Leitura profunda**: a experiência tátil e linear do livro físico favorece a concentração e a anotação — habilidades essenciais para o estudo de microeconomia avançada.
- **Credibilidade institucional**: um livro publicado por editora reconhecida reforça a adoção em programas de graduação e pós-graduação.
- **Independência tecnológica**: não depende de internet, bateria ou compatibilidade de dispositivo.
- **Referência permanente**: a estante do economista exige volumes físicos para consulta rápida.

### A ponte entre os dois mundos: QR codes

Cada gráfico interativo no livro impresso é acompanhado de:

1. Uma **imagem estática** representativa (o estado mais informativo do gráfico).
2. Um **QR code** que leva diretamente à versão interativa online.
3. Uma legenda indicando: *"Versão interativa disponível em: [URL]"*.

Essa estratégia transforma o livro impresso em um **portal para a experiência digital** — sem sacrificar a autonomia da leitura impressa. O leitor que não quiser (ou não puder) acessar os gráficos online ainda terá todas as informações necessárias na imagem estática e na legenda descritiva.

### Modelo de atualização

A versão digital pode ser atualizada continuamente (novos dados do IBGE, novas questões ANPEC, novos artigos). A versão impressa, vinculada a edições, se beneficia dessas atualizações indiretamente: o QR code aponta para o conteúdo mais recente, mesmo que o livro impresso seja de uma edição anterior. Isso **prolonga a vida útil** de cada edição impressa e **reduz a pressão** por reimpressões frequentes.

\vspace{1cm}

\begin{center}
\rule{0.4\textwidth}{0.5pt}

\vspace{0.3cm}

{\small\itshape Documento preparado para avaliação editorial.}

{\small\itshape Março 2026 — São Paulo}
\end{center}
