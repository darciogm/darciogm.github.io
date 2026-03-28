# Plano de Acao — De 8,6 para 9,8+

**Data**: 28 de marco de 2026
**Editor**: Ed Micro

> *"First shalt thou take out the Holy Pin. Then shalt thou count to three, no more, no less."*
> — Instrucoes para uso da Holy Hand Grenade of Antioch.
>
> O caminho de 8,6 para 9,8 nao e vago. E um protocolo com passos numerados, como a granada sagrada. Cada acao abaixo e especifica, mensuravel e priorizada. Desviar do protocolo — contar quatro, ou dois — e explodir no proprio colo.

---

## Anatomia do Gap

Para atingir **9,8 de media global**, cada dimensao precisa orbitar **9,7–10,0** e nenhum capitulo pode ficar abaixo de **9,5**. O gap por dimensao:

| Dimensao | Atual | Meta | Gap | Prioridade |
|----------|:-----:|:----:|:---:|:----------:|
| **Conexao Brasil** | 8,1 | 9,8 | **+1,7** | P0 |
| **Recursos Visuais** | 8,2 | 9,8 | **+1,6** | P0 |
| **Exercicios** | 8,5 | 9,8 | **+1,3** | P1 |
| **Boxes e Aplicacoes** | 8,6 | 9,8 | **+1,2** | P1 |
| **Intuicoes Economicas** | 8,8 | 9,8 | **+1,0** | P2 |
| **Clareza Expositiva** | 8,8 | 9,8 | **+1,0** | P2 |
| **Tom e Voz** | 8,9 | 9,8 | **+0,9** | P2 |
| **Rigor Tecnico** | 9,0 | 9,8 | **+0,8** | P3 |

As duas dimensoes assassinas sao **Brasil** e **Visuais**. Juntas, respondem por ~55% do gap total. Se voce resolver so essas duas, a media ja salta para ~9,2. Mas 9,8 exige atacar todas as oito frentes — sem excecao.

---

## FRENTE 0 — RECURSOS VISUAIS (gap +1,6)

### O problema

Os capitulos 1–20 tem **media de 8,1 iframes**. Os capitulos 21–24 tem **2 cada**. Isso cria uma experiencia quebrada: o leitor acostumado com interatividade rica de repente cai num PDF disfarçado. Alem disso, mesmo nos caps 1–20, varios capitulos-chave (9a-9d) ficam abaixo de 5 iframes.

### Acoes

#### A0.1 — Equalizar caps 21–24 ao padrao visual do livro

**Meta**: cada um desses capitulos precisa ter **6–8 iframes interativos**.

| Cap | iframes atuais | Meta | Graficos a criar |
|:---:|:--------------:|:----:|-----------------|
| 21 | 2 | 8 | (1) Curva S de adocao com efeitos de rede — slider para intensidade do efeito. (2) Equilibrio em mercado bilateral Rochet-Tirole — sliders para elasticidades dos dois lados. (3) Tipping point: dinamica de adocao com equilibrios multiplos. (4) Pricing de plataforma: preco otimo para cada lado. (5) Lock-in e switching costs: custo de troca vs. base instalada. (6) Leilao de anuncios (second-price) com lances simulados. |
| 22 | 2 | 8 | (1) Simulacao DiD com tratamento e controle — slider para efeito do tratamento. (2) Visualizacao RDD: descontinuidade com bandwidth ajustavel. (3) Power analysis: tamanho da amostra vs. efeito minimo detectavel. (4) Randomization inference: distribuicao permutacional do estimador. (5) Pit market (Vernon Smith): simulacao de leilao de dupla convergindo ao equilibrio. (6) Viés de variavel omitida: gráfico 3D mostrando o confounding. |
| 23 | 2 | 8 | (1) Modelo de Grossman: saude como capital depreciavel — slider para taxa de depreciacao e investimento. (2) Equilibrio Rothschild-Stiglitz em seguros: pooling vs. separating. (3) Risco moral em seguros: demanda por cuidado medico com e sem copagamento. (4) Curva de oferta de cuidado medico com demanda induzida. (5) Comparacao de sistemas de saude: gasto vs. expectativa de vida (scatter com dados reais). (6) Elasticidade-preco da demanda por saude (RAND experiment). |
| 24 | 2 | 8 | (1) Cap-and-trade: mercado de permissoes com excesso de demanda ajustavel. (2) Curva de custo marginal de abatimento com heterogeneidade de firmas. (3) Imposto pigouviano vs. cap-and-trade sob incerteza (Weitzman). (4) Desconto intergeracional: Nordhaus vs. Stern — slider para taxa de desconto. (5) Custo social do carbono: sensibilidade a parametros. (6) Tragedia dos comuns dinamica: extracao de recurso com N jogadores. |

**Estimativa de esforco**: ~24 graficos novos. ~3–4 dias de desenvolvimento cada = **2–3 meses de trabalho grafico dedicado**.

#### A0.2 — Reforcar caps 9a-9d

| Cap | iframes atuais | Meta | Graficos a criar |
|:---:|:--------------:|:----:|-----------------|
| 9a | 4 | 7 | (1) Funcoes de melhor resposta Cournot — interativas com slider para custo marginal. (2) Equilibrio em estrategias mistas com payoffs ajustaveis. (3) Comparativo Cournot-Bertrand-Stackelberg: slider para n firmas. |
| 9b | 4 | 7 | (1) Arvore de jogo interativa com indução retroativa animada. (2) Folk theorem: fronteira de payoffs sustentaveis vs. fator de desconto. (3) Barganha de Rubinstein: divisao de equilibrio vs. paciencia. |
| 9c | 2 | 6 | (1) Equilibrio bayesiano de Nash em jogo 2x2 com tipos. (2) Leilao de primeiro preco: estrategia de equilibrio para distribuicao uniforme. (3) Leilao de segundo preco vs. primeiro preco: comparacao de receitas. (4) Revenue equivalence: simulacao Monte Carlo. |
| 9d | 2 | 6 | (1) Jogo de sinalizacao: equilibrio separating vs. pooling com crenças. (2) Modelo de Spence: custo do sinal vs. tipo — regiao de separação. (3) Contrato otimo com moral hazard: esforco vs. incentivo. (4) Modelo de Akerlof: colapso do mercado com sliders para distribuicao de qualidade. |

**Estimativa**: ~14 graficos novos = **~1,5 mes adicional**.

#### A0.3 — Melhorias pontuais nos caps 1–20

| Cap | Acao |
|:---:|------|
| 6 | +2 iframes: (1) Elasticidade cruzada com dados brasileiros (gasolina/etanol). (2) Bem composto de Hicks interativo. |
| 7 | +1 iframe: Equivalente de certeza e premio de risco com slider para aversao ao risco. |
| 10 | +1 iframe: CES com slider para elasticidade de substituicao mostrando transicao Leontief → Cobb-Douglas → linear. |
| 14 | +1 iframe: Caixa de Edgeworth animada com tatonnement convergindo ao nucleo. |

**Estimativa**: ~7 graficos = ~3 semanas.

**Total Frente 0**: ~45 graficos novos. Prazo estimado: **3–4 meses**.

---

## FRENTE 1 — CONEXAO BRASIL (gap +1,7)

### O problema

Dois bolsoes criticos:

1. **Cap 2 (Matematica)**: apenas 3 boxes Brasil, todos genericos. Nota Brasil = 6,0. O cap mais longo do livro tem a menor conexao com o pais.
2. **Caps 9a-9d (Jogos)**: ja tem 3 boxes Brasil cada (melhor do que eu estimei inicialmente), mas a conexao no texto corrido e fraca — os exemplos dentro das secoes formais sao genericos/americanos. Os boxes sao ilhas; o Brasil nao permeia o texto.

### Acoes

#### A1.1 — Cap 2: Brasil como motivador matematico

Adicionar **1 box Brasil por grande secao** (atualmente: 3 boxes em 13 secoes). Meta: **7 boxes Brasil + integracao no texto corrido**.

| Secao | Box Brasil a adicionar |
|-------|----------------------|
| 2.1 (Otimizacao 1 var) | "A Petrobras e o preco otimo de gasolina: CPO aplicada a uma firma price-setter" — dados reais ANP |
| 2.2 (Derivadas parciais) | "Quanto o IPCA muda quando o dolar sobe? Derivadas parciais no pass-through cambial" — dados BCB |
| 2.3 (Otimizacao multivariada) | "Hessiana na pratica: verificando maximo de lucro para fazendas de soja no Mato Grosso" — dados Embrapa/Conab |
| 2.5 (Lagrange) | **Ja existe** (teto de gastos) — expandir com dados atualizados do arcabouço fiscal 2023+ |
| 2.10 (Integracao) | "Excedente do consumidor no mercado de energia eletrica: integral sob a demanda" — dados ANEEL |
| 2.11 (Otimizacao dinamica) | "Equacao de Euler e a decisao de poupanca das familias brasileiras" — dados POF/PNAD |
| 2.12 (Estatistica) | **Ja existe** (IPCA/Laspeyres) — ok |

**Alem dos boxes**: inserir exemplos brasileiros **dentro** dos exercicios resolvidos. Ex: o exercicio de Lagrange pode usar funcao de producao calibrada com dados agricolas brasileiros, nao uma Cobb-Douglas generica.

#### A1.2 — Caps 9a-9d: Brasil no texto corrido, nao so nos boxes

Os boxes Brasil ja existem (Ambev-Heineken, combustiveis, pre-sal, ANS). O problema e que o **texto formal** usa exemplos genericos. Acoes:

| Cap | Acao |
|:---:|------|
| 9a | Substituir pelo menos 1 exemplo numerico generico pelo duopolio Ambev-Heineken com dados reais de market share. Adicionar box Brasil sobre competicao entre apps de transporte (99 vs. Uber) como Bertrand diferenciado. |
| 9b | Trocar o exemplo generico de jogo de entrada por um caso real: a tentativa de entrada da Amazon no e-commerce brasileiro vs. Mercado Livre. Usar indução retroativa. |
| 9c | O leilao do pre-sal ja esta no box. Trazer para o texto corrido como **exemplo numerico principal** da secao de leiloes, nao como apendice. |
| 9d | Usar a sinalizacao via certificacao organica de cafe (selo UTZ/Rainforest Alliance) como exemplo formal de Spence — dados de premium de preco de cafes certificados vs. nao certificados no Brasil. |

#### A1.3 — Caps 7, 14, 18: reforco pontual

| Cap | Acao |
|:---:|------|
| 7 | Adicionar box Brasil: "O seguro do Minha Casa Minha Vida: aversao ao risco e o papel do governo como segurador" — dados da Caixa Economica Federal. |
| 14 | Adicionar box Brasil: "Modelo CGE para o Brasil — simulacoes de reforma tributaria (IBS/CBS)" — citar estudo do IPEA ou FGV. Seria o box mais relevante do capitulo e conecta com politica atual. |
| 18 | Integrar dados da Selic historica e spread bancario no texto corrido (nao so em box). O Brasil tem uma das maiores taxas de juros reais do mundo — isso precisa estar no paragrafo de abertura, nao enterrado num box. |

#### A1.4 — Dados brasileiros nas figuras interativas

**Meta transversal**: sempre que um grafico interativo usar dados simulados, verificar se existe uma versao com **dados reais brasileiros** que seria igualmente didatica. Exemplos:

- Cap 5: grafico de curva de Engel → usar dados da POF (participacao de alimentacao vs. renda)
- Cap 13: grafico de equilibrio de mercado → calibrar com dados do mercado de etanol (CEPEA/Esalq)
- Cap 17: oferta de trabalho → usar dados da PNAD Continua (horas trabalhadas vs. rendimento)

**Estimativa Frente 1**: ~4–6 semanas de pesquisa e redacao + ajustes nos graficos.

---

## FRENTE 2 — EXERCICIOS (gap +1,3)

### O problema

Exercicios existem em todos os capitulos, mas tres gaps saltam aos olhos:

1. **Ausencia total de atividades de aprendizagem ativa**. Zero menções a "classroom experiment", "think-pair-share", "jigsaw" ou qualquer formato ativo no corpo dos capitulos. O guia do instrutor faz menções superficiais ("jogar Dilema do Prisioneiro em sala"), mas sem protocolos estruturados.
2. **Caps 21–24 tem menos exercicios** (13–18 mencoes vs. media de 20+ no core).
3. **Faltam exercicios computacionais integrados** — os notebooks existem separados, mas nao ha exercicios "rode este codigo e interprete" dentro dos capitulos.

### Acoes

#### A2.1 — Criar secao "Atividade em Sala" em cada capitulo

**Esta e a acao de maior impacto pedagogico do plano inteiro.** O livro tem qualidade de referencia em conteudo, mas nao oferece ao professor nenhum protocolo de aprendizagem ativa pronto para usar.

Formato proposto: box com admonition propria (`!!! atividade-sala`), contendo:

- **Nome da atividade** (memoravel)
- **Duracao**: 15, 30 ou 50 min
- **Material necessario**
- **Protocolo passo a passo** (com timing)
- **Debrief** (perguntas de fechamento)
- **Conexao com a secao** (qual resultado teorico a atividade ilumina)

**Catalogo de atividades por capitulo** (1 por capitulo, 27 total):

| Cap | Atividade | Tipo | Duracao |
|:---:|-----------|------|:-------:|
| 1 | "Construa Seu Proprio Modelo" — grupos recebem fenomeno real e devem identificar variaveis exogenas/endogenas e prever resultado | PBL | 30 min |
| 2 | "Otimizacao as Cegas" — alunos resolvem problema de maximizacao sem saber Lagrange, depois comparam com a solucao formal | Flipped | 20 min |
| 3 | "Teste Seus Axiomas" — experimento de preferencia revelada: alunos fazem escolhas entre cestas e turma verifica transitividade | Experimento | 25 min |
| 4 | "O Orcamento Apertou" — simulacao com cartas de precos e renda; alunos escolhem cestas e plotam reta orcamentaria | Simulacao | 30 min |
| 5 | "Slutsky ao Vivo" — precos mudam mid-experiment; alunos decompoem efeito renda e substituicao de suas proprias escolhas | Experimento | 35 min |
| 6 | "Substituto ou Complemento?" — pares recebem dados de demanda reais (IBGE) e classificam pares de bens. Debate posterior | Case + Debate | 25 min |
| 7 | "Loterias de Verdade" — alunos escolhem entre loterias com dinheiro real (centavos), professor computa aversao ao risco da turma | Experimento (Smith) | 30 min |
| 8 | "Ancoragem em 60 segundos" — classica demo de Tversky-Kahneman. Metade da turma ve numero alto, metade ve baixo. Comparam estimativas | Experimento | 15 min |
| 9a | "Dilema do Prisioneiro Iterado" — torneio de estrategias em rodadas (Axelrod), com ranking e premiacao | Experimento + Torneio | 50 min |
| 9b | "Ultimatum Game" — alunos jogam com dinheiro (real ou ficticio). Comparar com previsao de inducao retroativa | Experimento | 25 min |
| 9c | "Leilao em Sala" — 4 formatos de leilao para o mesmo bem (caneta, chocolate). Comparar receitas. Revenue equivalence? | Experimento (Holt) | 40 min |
| 9d | "O Mercado de Limonadas" — vendedores com qualidade privada, compradores que nao observam. Mercado colapsa? | Experimento (Akerlof) | 35 min |
| 10 | "A Fabrica de Avioes de Papel" — equipes produzem avioes com trabalho variavel e capital fixo. Plotam produto marginal | Experimento | 30 min |
| 11 | "Custo do Sanduba" — turma calcula custo total, medio e marginal de producao de sanduiches com dados reais de ingredientes e tempo | PBL | 25 min |
| 12 | "Abrir ou Fechar?" — cada grupo e uma firma com custos diferentes; preço de mercado e anunciado. Decisao: produzir ou shut down? | Simulacao | 30 min |
| 13 | "Pit Market" — leilao de dupla ao vivo (Vernon Smith, 1962). Cartas com valores de reserva. Preco converge ao equilibrio? | Experimento classico | 40 min |
| 14 | "A Caixa de Edgeworth Humana" — 2 grupos negociam alocacao de 2 bens (balas e chocolates). Chegam ao nucleo? | Experimento | 30 min |
| 15 | "Monopolio vs. Competicao" — metade da turma e monopolio, metade e mercado competitivo. Comparam precos e excedentes | Experimento (Holt) | 35 min |
| 16 | "Cartel Instavel" — 4 firmas decidem quantidade simultaneamente (Cournot). Permissao para "conversar" em rodadas impares. Conluio sobrevive? | Experimento | 40 min |
| 17 | "Quanto Vale Seu Tempo?" — alunos escolhem entre tarefas com remuneracoes diferentes e calculam propria taxa de substituicao consumo-lazer | Experimento | 20 min |
| 18 | "Marshmallow Economico" — versao adaptada do marshmallow test: escolher premio hoje ou maior amanha. Revelar taxa de desconto da turma | Experimento | 15 min |
| 19 | "O Mercado de Limões ao Vivo" — vendedores sabem qualidade, compradores nao. Com e sem garantia (sinalizacao). Mercado funciona? | Experimento (Holt cap. 21) | 35 min |
| 20 | "Jogo do Bem Publico" — contribuicoes voluntarias para fundo comum. Com e sem punicao. Free-riding emerge? | Experimento classico | 30 min |
| 21 | "Adocao de Rede" — alunos escolhem entre duas redes (A e B). Efeitos de rede geram tipping? Lock-in acontece? | Simulacao | 25 min |
| 22 | "DiD na Sala de Aula" — metade da turma recebe "tratamento" (dica extra). Estimam efeito causal com DiD simples | Experimento | 30 min |
| 23 | "Selecao Adversa no Seguro" — alunos com risco privado (alto/baixo) escolhem entre planos. Seguradoras ajustam precos. Espiral da morte? | Simulacao | 35 min |
| 24 | "Cap-and-Trade na Sala" — firmas com custos de abatimento diferentes negociam permissoes. Comparam com imposto fixo. Qual e mais eficiente? | Experimento (Holt cap. 24) | 35 min |

**Estimativa**: redacao de 27 protocolos estruturados = ~3–4 semanas.

#### A2.2 — Expandir exercicios nos caps 21–24

**Meta**: cada cap aplicado deve ter pelo menos **8 exercicios propostos + 4 resolvidos + 3 ANPEC-style**.

| Cap | Exercicios a adicionar |
|:---:|----------------------|
| 21 | +3 propostos: (1) Calcular equilibrio em mercado bilateral com elasticidades especificas. (2) Preco otimo de plataforma freemium. (3) Efeito de rede: encontrar massa critica. +2 resolvidos. |
| 22 | +2 propostos: (1) Estimar DiD com tabela de dados. (2) Calcular poder estatistico. +1 resolvido. |
| 23 | +3 propostos: (1) Calcular estoque otimo de saude no modelo de Grossman. (2) Equilibrio em seguros com 2 tipos. (3) Copagamento otimo. +2 resolvidos. |
| 24 | +4 propostos (e o cap com menos): (1) Imposto pigouviano otimo com dados. (2) Equilibrio no mercado de carbono. (3) VPL de projeto ambiental com Nordhaus vs. Stern. (4) Regra de Hotelling para mineracao. +2 resolvidos. |

#### A2.3 — Exercicios computacionais integrados

Adicionar em **cada capitulo** pelo menos **1 exercicio "Desafio Computacional"** que diga:

> "Abra o notebook do Cap X em `notebooks/capXX.R`. Modifique o parametro Y e interprete o que acontece com Z. Compare com a previsao teorica da Secao X.Y."

Isso conecta os notebooks (que ja existem) ao corpo do capitulo. Atualmente sao mundos separados.

**Estimativa Frente 2**: ~6–8 semanas.

---

## FRENTE 3 — BOXES E APLICACOES (gap +1,2)

### O problema

Boxes sao bons e bem distribuidos. Mas dois gaps:

1. **Faltam "Pesquisa em Acao" atualizados (2020–2026)** em vários capitulos. O livro cita classicos (Akerlof 1970, Spence 1973), mas a fronteira da pesquisa aparece pouco.
2. **Caps 23–24 tem apenas 6 boxes cada**, abaixo da media de ~8.

### Acoes

#### A3.1 — Adicionar 1 "Pesquisa em Acao" de fronteira (pos-2020) por capitulo

| Cap | Paper sugerido |
|:---:|---------------|
| 1 | Athey & Imbens (2019) — Machine learning para estimacao de efeitos heterogeneos |
| 2 | Abadie et al. (2020) — Controle sintetico (aplicacao do ferramental matematico) |
| 3 | Bordalo et al. (2024) — Memory and probability weighting in consumer choice |
| 4 | Dubois, Griffith & O'Connell (2020) — How well targeted are soda taxes? |
| 5 | Jaravel (2021) — Inflation inequality and the effect of price changes on welfare |
| 6 | Gentzkow (2007) — Valuing new goods: online newspapers como substitutos |
| 7 | Barberis (2013) — Thirty years of prospect theory: lessons for finance |
| 8 | DellaVigna (2009) — Psychology and economics: evidence from the field |
| 9a | Chiappori et al. (2023) — Testing Nash equilibrium in the lab and in the field |
| 9b | Dal Bo & Frechette (2018) — On the determinants of cooperation in infinitely repeated games |
| 9c | Milgrom (2021) — Auction market design (Nobel Lecture) |
| 9d | Finkelstein & Poterba (2004) — Adverse selection in insurance markets |
| 10 | Syverson (2011) — What determines productivity? |
| 11 | De Loecker, Eeckhout & Unger (2020) — Rise of market power and macroeconomic implications (markups) |
| 12 | Hsieh & Klenow (2009) — Misallocation and manufacturing TFP in China and India |
| 13 | Atkin, Faber & Gonzalez-Navarro (2018) — Retail globalization and household welfare (Walmart in Mexico) |
| 14 | Caliendo & Parro (2015) — Estimates of NAFTA trade and welfare effects: GE model |
| 15 | Asker, Collard-Wexler & De Loecker (2019) — (Mis)allocation, market power, and global oil extraction |
| 16 | Wollmann (2019) — Stealth consolidation: evidence from an amendment to the HSR Act |
| 17 | Chetty et al. (2023) — Social capital and economic mobility |
| 18 | Mian, Sufi & Verner (2020) — How does credit supply expansion affect the real economy? |
| 19 | Einav, Finkelstein & Cullen (2010) — Estimating welfare in insurance markets |
| 20 | Deschenes & Greenstone (2007) — The economic impacts of climate change |
| 21 | Ershov, Laliberté & Orr (2023) — Digital platform mergers: evidence from app stores |
| 22 | Finkelstein et al. (2012) — Oregon health insurance experiment |
| 23 | Baicker et al. (2013) — Oregon experiment: Medicaid effects on health and financial outcomes |
| 24 | Fowlie, Holland & Mansur (2012) — What do emissions markets deliver? |

#### A3.2 — Expandir boxes nos caps 23–24

| Cap | Boxes a adicionar |
|:---:|------------------|
| 23 | +1 Box Mundo: "O NHS britanico como monopsonio: licoes para o SUS". +1 Box Brasil: "O impacto do Farmacia Popular nos gastos out-of-pocket" |
| 24 | +1 Box Mundo: "EU ETS: 20 anos de cap-and-trade — o que aprendemos". +1 Box Brasil: "O mercado brasileiro de creditos de carbono: RenovaBio e CBIO" |

**Estimativa Frente 3**: ~4–5 semanas de pesquisa, redacao e verificacao de referencias.

---

## FRENTE 4 — INTUICOES ECONOMICAS (gap +1,0)

### O problema

Os boxes "idea" existem em todos os capitulos, mas a distribuicao e desigual:

- Cap 8: **10 intuicoes** (benchmark de excelencia)
- Caps 14, 16, 20, 21, 22, 23, 24: apenas **4 cada**

Para um cap como o 14 (Equilibrio Geral), que e o mais abstrato do livro, ter so 4 intuicoes e insuficiente.

### Acoes

#### A4.1 — Equalizar: minimo de 7 intuicoes por capitulo

| Cap | Atuais | Meta | Intuicoes a adicionar |
|:---:|:------:|:----:|----------------------|
| 14 | 4 | 7 | (1) Lei de Walras — "Se todos os mercados menos um estao em equilibrio, o ultimo tambem esta — como um sudoku onde a ultima celula se preenche sozinha." (2) 1o TBE — "Mercados competitivos sao eficientes nao porque os agentes sao bonzinhos, mas porque o sistema de precos forca cada um a internalizar os custos." (3) 2o TBE — "Qualquer distribuicao justa pode ser alcancada por mercados — desde que o governo redistribua *antes* de deixar o mercado funcionar." |
| 16 | 4 | 7 | (1) Paradoxo de Bertrand. (2) Funcoes de reacao em Cournot. (3) Colisao tacita e folk theorem. |
| 20 | 4 | 7 | (1) Imposto pigouviano. (2) Condicao de Samuelson para bens publicos. (3) Tragédia dos comuns. |
| 21 | 4 | 7 | (1) Winner-take-all em mercados de rede. (2) Subsidio cruzado em plataformas. (3) Lock-in e path dependence. |
| 22 | 4 | 7 | (1) Vies de selecao. (2) Intencao de tratar (ITT). (3) DiD como "diferenca de tendencias". |
| 23 | 4 | 7 | (1) Risco moral em saude. (2) Demanda induzida pelo ofertante. (3) Capital de saude depreciavel. |
| 24 | 4 | 7 | (1) Precos vs. quantidades sob incerteza (Weitzman). (2) Custo social do carbono. (3) Desconto intergeracional. |

**Estimativa**: ~21 novas intuicoes = 2 semanas de redacao.

---

## FRENTE 5 — TOM E VOZ (gap +0,9)

### O problema

Dois achados reveladores:

1. **Monty Python desaparece a partir do Cap 11.** Caps 1–10 tem 32 referencias Monty Python. Caps 11–24 tem **zero**. O humor que marca a identidade do livro evapora na segunda metade.
2. **Notas de rodape humoristicas desaparecem a partir do Cap 11.** Caps 1–10 tem 63 footnotes. Caps 11–24 tem **zero** footnotes com marcador `[^`. (Podem existir notas em outro formato, mas o padrao de personalidade via footnotes some.)

Isso cria um livro com duas personalidades: a primeira metade e Freakonomics-meets-MHE; a segunda metade e um bom textbook convencional.

### Acoes

#### A5.1 — Injetar pelo menos 1 referencia Monty Python por capitulo nos caps 11–24

Nao forcada — cada referencia precisa iluminar um conceito. Catalogo:

| Cap | Referencia Python | Conceito iluminado |
|:---:|-------------------|-------------------|
| 11 | **Cheese Shop** — "Every cheese I ask for, you don't have!" → mercado com oferta zero. Analogia com firmas cujo custo medio fica sempre acima do preco: nao produzem nada | Shutdown condition |
| 12 | **Black Knight** — "'Tis but a scratch!" → sunk cost fallacy. A firma que continua operando porque "ja investiu muito" mesmo com prejuizo | Custo irrecuperavel |
| 13 | **Ministry of Silly Walks** — O ministerio aloca recursos para caminhadas ridiculas → ineficiencia alocativa. "Se o governo subsidiasse silly walks, o equilibrio de mercado seria diferente?" | DWL / ineficiencia |
| 14 | **Holy Grail** — "Bring me a shrubbery!" → A existencia do equilibrio geral e o Santo Graal da microeconomia. "We have proved it exists. We have not found it. But we have a really nice proof." | Existencia via ponto fixo |
| 15 | **Spanish Inquisition** — "Nobody expects the Spanish Inquisition!" → "Nobody expects the monopolist to price at marginal cost!" — a surpresa e justamente que o resultado competitivo nao se aplica | Markup do monopolista |
| 16 | **Life of Brian** — "What have the Romans ever done for us?" → "What has competition ever done for us?" Cada item que a turma lista (precos baixos, inovacao, variedade) e um beneficio da competicao que o oligopolio pode destruir | Beneficios da competicao |
| 17 | **The Lumberjack Song** — O lenhador que revela preferencias inesperadas sobre lazer → dualidade trabalho-lazer, preferencias heterogeneas | Oferta backward-bending |
| 18 | **Parrot sketch** (variacao) — "This investment is not dead! It's resting!" → O investidor que se recusa a admitir que o VPL e negativo. Sunk cost + viés de confirmacao em decisoes de investimento | VPL e decisao de abandonar |
| 19 | **Dead Parrot** (classico) — O sketch inteiro e o melhor exemplo de cheap talk e assimetria de informacao ja filmado. "O vendedor sabe que o papagaio esta morto. O comprador descobre tarde demais." | Lemons / assimetria de informacao |
| 20 | **Life of Brian** — "What have the Romans ever done for us?" usado para bens publicos: "Aqueduct? Roads? Sanitation? Public order?" — a lista e literalmente uma lista de bens publicos | Bens publicos e problema do carona |
| 21 | **Cheese Shop** (variacao digital) — "You don't have any data, do you?" → Plataformas que oferecem servico "gratis" mas coletam dados. O produto que parece nao existir (o preco zero) mas cuja contrapartida e invisivel | Preco zero e dados como pagamento |
| 22 | **Spanish Inquisition** (variacao) — "Nobody expects the identification assumption to fail!" → A hipotese de identificacao e a premissa invisivel de todo estudo causal. Quando falha, tudo desmorona | Ameacas a identificacao |
| 23 | **Black Knight** (variacao saude) — Paciente que ignora sintomas: "'Tis but a scratch!" → Risco moral: com seguro completo, o paciente subestima a gravidade. O sistema de saude paga o custo dos bracos perdidos | Risco moral em saude |
| 24 | **Holy Hand Grenade** — "First shalt thou count to three. Three shall be the number thou shalt count." → Protocolos ambientais exigem calibracao precisa. Contar quatro (politica excessiva) ou dois (insuficiente) gera desastre | Calibracao de politica ambiental |

#### A5.2 — Restaurar footnotes com personalidade nos caps 11–24

Meta: pelo menos **2 footnotes "de personalidade"** por capitulo nos caps 11–24 (= ~28 footnotes).

Estilo: confissoes metodologicas, digressoes historicas curtas, piadas internas da profissao, Easter eggs.

Exemplos:
- Cap 12, na secao sobre custos de transacao: "[^coase-idade] Coase tinha 26 anos quando escreveu 'The Nature of the Firm'. Tirole ganhou o Nobel aos 61. A funcao de producao de papers seminais aparentemente tem rendimentos decrescentes na idade."
- Cap 15, na secao de DWL: "[^dwl-triangle] O triangulo de Harberger e tao onipresente nos exames de micro que deveria ter seu proprio emoji."

**Estimativa Frente 5**: ~3 semanas de redacao criativa.

---

## FRENTE 6 — CLAREZA EXPOSITIVA (gap +1,0)

### O problema

A clareza e alta em geral. Os pontos fracos sao especificos:

1. **Cap 2**: transicoes entre secoes sao abruptas. O cap pula de derivadas para Lagrange sem motivacao narrativa.
2. **Cap 9c**: a secao sobre BNE e a mais densa do bloco de jogos. Falta um exemplo numerico simples ANTES da definicao formal.
3. **Cap 14**: as secoes sobre Brouwer e Arrow-Debreu sao rigorosas mas aridas. O leitor nao-matematico pode se perder.
4. **Cap 18**: a progressao VPL → TIR → demanda por capital e logica mas rapida demais.

### Acoes

#### A6.1 — Adicionar "resumo visual" (diagrama de fluxo) no inicio de caps longos

Caps 2, 5, 8, 14 e 18 se beneficiariam de um **diagrama de fluxo conceitual** (alem da tabela de roteiro que ja existe). Formato: um fluxograma simples mostrando "Se voce sabe X → va para Y; se nao → leia Z primeiro". Isso e especialmente util no Cap 2, que funciona como referencia.

#### A6.2 — Adicionar "exemplo antes da definicao" em secoes formais densas

Protocolo: toda definicao formal com mais de 3 linhas de LaTeX deve ser precedida por um exemplo numerico simples de 2–3 linhas. Caps onde isso falta:

| Cap | Secao | Definicao que precisa de exemplo previo |
|:---:|-------|----------------------------------------|
| 9c | 9c.2 (BNE) | Jogo bayesiano 2x2 resolvido antes da definicao formal |
| 14 | 14.6 (Brouwer) | Exemplo visual: funcao continua de [0,1] em [0,1] que necessariamente cruza a diagonal |
| 14 | 14.8 (2o TBE) | Exemplo numerico na Caixa de Edgeworth antes do enunciado formal |

#### A6.3 — "And now for something completely different" como transicao

Usar a transicao pythonesca entre grandes blocos tematicos. Exemplos de onde encaixa:

- Cap 2: entre secoes de calculo (2.1–2.7) e secoes de probabilidade/dinamica (2.10–2.12)
- Cap 8: entre vieses cognitivos (8.1–8.3) e preferencias sociais + nudges (8.4–8.6)
- Cap 14: entre Caixa de Edgeworth (14.2–14.4) e provas de existencia (14.5–14.6)

**Estimativa Frente 6**: ~2 semanas.

---

## FRENTE 7 — RIGOR TECNICO (gap +0,8)

### O problema

O rigor ja e o ponto mais forte do livro (media 9,0). Para chegar a 9,8, as acoes sao cirurgicas:

1. **Caps 21–24 tem rigor 8,5** — levemente abaixo do padrao. Sao capitulos aplicados que, por natureza, sao menos formais. Mas para um livro que almeja o nivel MWG, mesmo os capitulos aplicados precisam de formalizacao completa.
2. **Verificacao cruzada de todas as equacoes** — em um livro com ~500 equacoes numeradas, a probabilidade de pelo menos 1 erro tipografico e alta.

### Acoes

#### A7.1 — Reforcar formalizacao nos caps 21–24

| Cap | Acao |
|:---:|------|
| 21 | Formalizar o modelo de Rochet-Tirole completo (atualmente descrito verbalmente em alguns trechos). Incluir as CPOs de otimizacao da plataforma e demonstrar que o preco otimo para um lado pode ser negativo. |
| 22 | Derivar formalmente o estimador DiD e suas hipoteses de identificacao. Provar consistencia sob tendencias paralelas. |
| 23 | Formalizar o modelo de Grossman completo com equacao de acumulacao de saude e CPOs. Derivar a condicao de parada (idade de morte). |
| 24 | Derivar formalmente o resultado de Weitzman (1974): quando imposto domina cap-and-trade e vice-versa. Atualmente descrito verbalmente. |

#### A7.2 — Auditoria matematica completa

Contratar/designar um revisor matematico para verificar:

- Todas as equacoes numeradas (~500)
- Todos os exercicios resolvidos (~89)
- Todas as demonstracoes
- Consistencia notacional capitulo a capitulo (verificar se $p$, $P$, $\pi$ sao usados uniformemente)

**Estimativa Frente 7**: ~3–4 semanas.

---

## CRONOGRAMA CONSOLIDADO

| Fase | Frentes | Prazo | Impacto na nota |
|:----:|---------|:-----:|:---------------:|
| **Fase 1** | F0 (Visuais 21-24) + F1 (Brasil) | Meses 1–3 | 8,6 → 9,1 |
| **Fase 2** | F2 (Exercicios + Atividades) + F3 (Boxes fronteira) | Meses 3–5 | 9,1 → 9,4 |
| **Fase 3** | F4 (Intuicoes) + F5 (Tom/Voz) + F6 (Clareza) | Meses 5–6 | 9,4 → 9,7 |
| **Fase 4** | F7 (Rigor) + Auditoria final + Polimento | Mes 7 | 9,7 → 9,8+ |

**Prazo total estimado: 7 meses de trabalho dedicado.**

---

## INVENTARIO DE ENTREGAS

| Entrega | Quantidade |
|---------|:----------:|
| Graficos interativos novos | ~45 |
| Boxes Brasil novos | ~15 |
| Boxes Mundo novos | ~4 |
| Pesquisa em Acao (fronteira) | ~27 |
| Intuicoes Economicas novas | ~21 |
| Atividades de Sala (protocolos) | ~27 |
| Exercicios propostos novos | ~12 |
| Exercicios resolvidos novos | ~7 |
| Exercicios computacionais | ~27 |
| Footnotes de personalidade | ~28 |
| Referencias Monty Python | ~14 |
| Transicoes "And now for..." | ~3 |
| Diagramas de fluxo conceituais | ~5 |

**Total: ~235 entregas editoriais.**

---

## O TESTE FINAL

Quando tudo estiver feito, o livro passa no teste se — e somente se — um aluno de 20 anos conseguir:

1. **Abrir qualquer capitulo** e querer ler a segunda pagina.
2. **Encontrar o Brasil** em cada capitulo sem precisar procurar.
3. **Rir pelo menos uma vez** por capitulo — e aprender algo com a risada.
4. **Rodar um grafico interativo** em cada capitulo e mudar sua intuicao.
5. **Fazer uma atividade em sala** que o faca descobrir o teorema antes de le-lo.
6. **Citar um paper dos ultimos 5 anos** de cada capitulo numa conversa de bar.

Se todos os seis criterios forem satisfeitos, a nota e 9,8+.

*"Three shall be the number thou shalt count, and the number of the counting shall be three."*

Sao sete frentes — nao tres, nao oito. Sete. E o livro sera digno do Santo Graal da microeconomia em lingua portuguesa.
