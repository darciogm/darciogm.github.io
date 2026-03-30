# Spin-offs e Complementos — Planejamento

Este documento mapeia materiais derivados do livro de Microeconomia, com roteiros, estruturas e prioridades para desenvolvimento futuro.

---

## 10a. Caderno de Exercicios Resolvidos

**Formato:** Volume separado (PDF ou seção adicional no site).

**Estrutura:** 1 seção por capítulo, 8-10 exercicios resolvidos passo a passo.

**Para cada exercicio:**

- Enunciado completo
- Solução detalhada (cada passo justificado, não telegráfica)
- Intuição econômica ("O que acabamos de provar?")
- Extensões ("E se mudássemos a hipótese X?")

**Estimativa:** 200+ exercicios, ~400 páginas.

**Prioridade de desenvolvimento:**

| Capítulo | Temas prioritários | Dificuldade |
|:---------|:-------------------|:------------|
| 3-6 | Slutsky, elasticidades, demanda marshalliana/hicksiana | Intermediário |
| 9a-9d | Nash, subjogo perfeito, BNE, PBE separador | Intermediário-Avançado |
| 10-13 | Isoquantas, custos, equilíbrio competitivo, bem-estar | Intermediário |
| 14 | Edgeworth box, Pareto, teoremas do bem-estar | Avançado |
| 15-16 | Monopólio, Cournot, Bertrand, colusão | Intermediário-Avançado |

---

## 10b. Guia de Laboratório Computacional (R)

**Formato:** 1 lab por capítulo, ~50 min de aula prática.

**Cada lab:** objetivo, dados reais ou simulados, código R comentado, perguntas guiadas, extensões.

### Labs prioritários

| Lab | Capítulo | Dados | O que o aluno faz |
|:----|:---------|:------|:------------------|
| Lab 3 | Preferências e Demanda | POF (IBGE) | Estimar elasticidade-preço e renda para categorias de alimentos; plotar curvas de Engel |
| Lab 5 | Slutsky | Dados simulados | Decompor efeito-preço em substituição e renda com gráficos animados |
| Lab 9a | Nash e Cournot | Simulação | Simular Cournot com n firmas, visualizar convergência via best-response dynamics |
| Lab 13 | Equilíbrio Competitivo | Comex Stat + CEPEA | Analisar convergência de preços de commodities agrícolas (lei do preço único) |
| Lab 16 | Oligopólio | CADE/ANP | Analisar dados de preços de combustíveis e testar hipóteses de conluio tácito |
| Lab 19 | Matching | CNRM (residência médica) | Rodar algoritmo Gale-Shapley com dados de residência médica |
| Lab 22 | RCT | Dados sintéticos | Gerar dados, aleatorizar tratamento, estimar ATE com e sem controles, visualizar DiD |
| Lab 24 | Economia Ambiental | DICE simplificado | Calibrar modelo DICE com 2 períodos, variar taxa de desconto, plotar trajetórias |

**Pacotes R recomendados:** `tidyverse`, `fixest`, `matchingR`, `ggplot2`, `shiny` (para interatividade).

---

## 10c. Roteiros "1 Conceito em 60 Segundos" (Reels/TikTok)

**Formato:** Roteiro de 60 segundos por conceito. Estrutura fixa:

1. **Hook (3 seg):** Pergunta provocativa ou dado surpreendente
2. **Visual (20 seg):** Gráfico animado ou analogia visual do conceito
3. **Twist (15 seg):** Paradoxo, dado contraintuitivo ou conexão inesperada
4. **Explicação rápida (15 seg):** O conceito em 2 frases
5. **CTA (5 seg):** "Mais no capítulo X — link na bio"

### 10 roteiros completos

#### Roteiro 1 — O Pão de R$ 35 (Custo de Oportunidade)

**Capítulo:** 11 (Custos) | **Duração:** 60 seg | **Formato:** Reel/TikTok

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | [Texto na tela + narração] "Aquele pão de R$ 3,50? Na verdade custa R$ 35. Eu fiz a conta." |
| 3–23 | **Visual** | [Animação] Padeiro abrindo a padaria → relógio marcando 1h → calculadora: salário/hora do padeiro (R$ 31,50) + ingredientes (R$ 3,50) = R$ 35. Gráfico simples: custo explícito vs. custo de oportunidade. |
| 23–38 | **Twist** | [Narração] "O custo real de qualquer coisa é aquilo que você abre mão para obtê-la. O padeiro poderia estar dando aula de confeitaria a R$ 150/hora. O pão acabou de ficar mais caro." |
| 38–53 | **Explicação** | [Texto + narração] "Isso é custo de oportunidade — o conceito mais importante da economia, e o mais ignorado. Toda decisão tem um preço invisível." |
| 53–60 | **CTA** | [Tela] "Mais 157 conceitos assim → link na bio" |

**Hashtags:** #economia #custos #microeconomia #aprenda #curiosidades

---

#### Roteiro 2 — O Seguro do Motorista Ruim (Risco Moral)

**Capítulo:** 19 (Informação Assimétrica) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Seguro total no carro? Parabéns, você acabou de virar um motorista pior." |
| 3–23 | **Visual** | [Animação] Antes do seguro: motorista cauteloso, cinto, seta, distância. Depois: celular no volante, estaciona em qualquer lugar, "ah, tá segurado". Gráfico: nível de cuidado vs. cobertura do seguro (curva descendente). |
| 23–38 | **Twist** | "A seguradora sabe disso. Por isso cobra franquia, bônus por não-sinistro e instala rastreador. Cada recurso é um mecanismo para alinhar incentivos — pura teoria dos contratos." |
| 38–53 | **Explicação** | "Risco moral: quando alguém muda de comportamento porque outra pessoa paga a conta. Acontece em seguros, em planos de saúde e em todo governo que socializa prejuízos." |
| 53–60 | **CTA** | "Cap. 19 — Informação Assimétrica → link na bio" |

---

#### Roteiro 3 — Por Que o Spotify Cobra Diferente (Discriminação de Preços)

**Capítulo:** 15 (Monopólio) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O Spotify cobra R$ 21,90 pra você e R$ 11,90 pro seu irmão. Isso é justo?" |
| 3–23 | **Visual** | [Animação] Dois consumidores com elasticidades diferentes. Curvas de demanda. Área de lucro do monopolista com preço único vs. com discriminação. O lucro CRESCE e o excedente total PODE crescer. |
| 23–38 | **Twist** | "O surpreendente: a discriminação de preços pode aumentar o bem-estar total. O estudante que não pagaria R$ 21,90 agora acessa o serviço por R$ 11,90. Mais gente consumindo = menos peso morto." |
| 38–53 | **Explicação** | "Discriminação de preços de terceiro grau: cobrar mais de quem tem demanda mais inelástica. Funciona em cinemas, passagens aéreas e, sim, no seu Spotify." |
| 53–60 | **CTA** | "Cap. 15 — Monopólio → link na bio" |

---

#### Roteiro 4 — O Rodízio de Pizza e o Oceano (Tragédia dos Comuns)

**Capítulo:** 20 (Externalidades e Bens Públicos) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O rodízio de pizza explica por que o oceano está sem peixe." |
| 3–23 | **Visual** | [Animação] 10 pessoas no rodízio. Cada uma pega o máximo — custo é dividido por 10. Ninguém internaliza que sua fatia extra reduz a disponível para os outros. Transição: barcos no oceano. Mesmo mecanismo. |
| 23–38 | **Twist** | "Garrett Hardin chamou isso de 'tragédia dos comuns' em 1968. Elinor Ostrom ganhou o Nobel em 2009 mostrando que comunidades resolvem o problema SEM privatizar NEM estatizar. A resposta: regras locais + punição social." |
| 38–53 | **Explicação** | "Tragédia dos comuns: quando o recurso é de todos, o incentivo individual é explorar demais. A solução não é só 'privatiza' ou 'estatiza' — é entender os incentivos." |
| 53–60 | **CTA** | "Cap. 20 — Externalidades → link na bio" |

---

#### Roteiro 5 — Dois Mafiosos e um Dilema (Dilema dos Prisioneiros)

**Capítulo:** 9a (Jogos Estáticos) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Dois mafiosos são presos. Se ficassem quietos, saíam em 1 ano. Os dois confessam. Por quê?" |
| 3–23 | **Visual** | [Animação] Matriz de payoffs 2x2. Setas mostrando estratégia dominante de cada jogador. Equilíbrio de Nash = (Confessar, Confessar) = 5 anos cada. Ótimo social = (Calar, Calar) = 1 ano cada. |
| 23–38 | **Twist** | "O resultado racional é pior para os dois. Isso não é um paradoxo — é o fundamento da teoria dos jogos. E acontece em corridas armamentistas, guerras de preços e até em quem lava a louça no apartamento compartilhado." |
| 38–53 | **Explicação** | "Dilema dos prisioneiros: quando o incentivo individual leva a um resultado coletivamente ruim. A saída? Repetição, reputação ou contratos — exatamente o que o Cap. 9b explora." |
| 53–60 | **CTA** | "Cap. 9a — Teoria dos Jogos → link na bio" |

---

#### Roteiro 6 — Doação de Órgãos e um Formulário (Nudge)

**Capítulo:** 8 (Economia Comportamental) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Muda o formulário, salva 10 mil vidas por ano. Sem gastar um centavo." |
| 3–23 | **Visual** | [Gráfico] Taxas de doação de órgãos: países opt-in (10–30%) vs. opt-out (80–99%). Mesma cultura, mesma riqueza. A única diferença: o default do formulário. |
| 23–38 | **Twist** | "Ninguém está sendo obrigado. Quem quiser sair, sai. Mas o viés do status quo é tão forte que a maioria simplesmente... fica. Thaler e Sunstein chamaram isso de paternalismo libertário." |
| 38–53 | **Explicação** | "Nudge: uma intervenção na arquitetura de escolha que muda comportamento sem restringir liberdade. O default é o nudge mais poderoso que existe." |
| 53–60 | **CTA** | "Cap. 8 — Economia Comportamental → link na bio" |

---

#### Roteiro 7 — O WhatsApp Vale Zero (Efeitos de Rede)

**Capítulo:** 21 (Economia Digital) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O WhatsApp vale zero sem seus contatos. E tudo com eles." |
| 3–23 | **Visual** | [Animação] Gráfico de valor da rede: 1 usuário = R$ 0. 10 = R$ 10. 1 milhão = incalculável. Curva S de adoção com ponto de massa crítica marcado. |
| 23–38 | **Twist** | "É por isso que o Facebook pagou US$ 19 bilhões pelo WhatsApp em 2014 — quando ele faturava US$ 10 milhões. O valor não estava no app. Estava na rede." |
| 38–53 | **Explicação** | "Externalidade de rede: cada novo usuário torna o produto mais valioso para todos os outros. É o que torna mercados digitais winner-take-all." |
| 53–60 | **CTA** | "Cap. 21 — Economia Digital → link na bio" |

---

#### Roteiro 8 — O Diploma Mais Caro do Mundo (Sinalização)

**Capítulo:** 9d (Jogos Dinâmicos com Informação Incompleta) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "E se o diploma não te ensinar nada... mas mesmo assim aumentar seu salário?" |
| 3–23 | **Visual** | [Animação] Dois tipos de trabalhador: alta e baixa produtividade. Empregador não consegue distinguir. Alta produtividade faz MBA (caro, mas suportável). Baixa produtividade não faz (custo alto demais). O diploma SINALIZA tipo, não CRIA produtividade. |
| 23–38 | **Twist** | "Michael Spence ganhou o Nobel com essa ideia em 2001. O modelo mostra que educação pode ter retorno privado positivo e retorno social ZERO — porque o sinal só funciona se for caro o suficiente para ser imitado." |
| 38–53 | **Explicação** | "Sinalização: gastar recursos para revelar informação privada. Funciona porque o custo é menor para quem tem a qualidade genuína. É por isso que o MBA é caro." |
| 53–60 | **CTA** | "Cap. 9d — Sinalização → link na bio" |

---

#### Roteiro 9 — Gasolina +10%, Você Dirige Quanto a Menos? (Elasticidade)

**Capítulo:** 6 (Elasticidades e Demanda de Mercado) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Gasolina sobe 10%. Quanto você dirige a menos? A resposta pode te surpreender." |
| 3–23 | **Visual** | [Dados reais] Brasil: elasticidade-preço da gasolina ≈ -0,3 (curto prazo). Significa: +10% no preço → -3% no consumo. EUA: -0,25. Europa: -0,4. Gráfico de demanda inelástica vs. elástica. |
| 23–38 | **Twist** | "Curto prazo: você quase não muda. Longo prazo (5+ anos): elasticidade sobe para -0,7 a -1,0. Você troca de carro, muda de emprego, vai de bike. O tempo é o grande aliado da elasticidade." |
| 38–53 | **Explicação** | "Elasticidade-preço: quanto a demanda muda quando o preço muda. Bens essenciais sem substitutos (gasolina, remédios) são inelásticos. Bens com substitutos (marca de cerveja) são elásticos." |
| 53–60 | **CTA** | "Cap. 6 — Elasticidades → link na bio" |

---

#### Roteiro 10 — O Filme Ruim e a Falácia (Sunk Costs)

**Capítulo:** 8 (Economia Comportamental) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Você já assistiu um filme ruim até o final só porque pagou o ingresso?" |
| 3–23 | **Visual** | [Animação] Cenário 1: pagou R$ 40 no cinema. 30 min: filme péssimo. Fica até o final (2h desperdiçadas). Cenário 2: ganhou ingresso de graça. Sai em 30 min. Mesma qualidade, decisão diferente. Por quê? |
| 23–38 | **Twist** | "O dinheiro do ingresso já foi. Não volta. Sua decisão deveria depender apenas do que vem DEPOIS — e as próximas 1h30 são ruins nos dois cenários. A diferença é pura irracionalidade." |
| 38–53 | **Explicação** | "Falácia dos custos afundados: deixar custos passados e irrecuperáveis influenciarem decisões futuras. Acontece em filmes, em relacionamentos e em projetos de R$ 50 bilhões do governo." |
| 53–60 | **CTA** | "Cap. 8 — Comportamental → link na bio" |

---

**Base de roteiros:** ~158 boxes `!!! idea "Intuição Econômica"` no livro. Cada um pode gerar 1 roteiro.

---

## 10d. Newsletter "Micro na Manchete"

**Formato:** Semanal, 3 notícias brasileiras + análise microeconômica de 3 parágrafos cada.

**Template:**

```
# Micro na Manchete — Edição XX (dd/mm/aaaa)

## 1. [Manchete da notícia]
**Fonte:** [veículo, data]
**O que aconteceu:** [1 parágrafo]
**O que a micro explica:** [2 parágrafos — conceito, mecanismo, previsão]
**No livro:** Cap. X, Seção Y.Z

## 2. [Manchete]
...

## 3. [Manchete]
...

## Conceito da semana
[1 parágrafo com definição acessível de um conceito que apareceu nas 3 notícias]
```

### Edição-piloto (exemplo)

**1. "iFood anuncia taxa zero para restaurantes pequenos por 6 meses"**
Análise: Subsídio cruzado em mercado bilateral (Cap 21). O iFood subsidia o lado dos restaurantes para atrair mais oferta, capturando valor do lado dos consumidores via taxa de entrega. Estratégia clássica de plataforma: "precie abaixo do custo no lado que gera externalidade para o outro lado" (Rochet-Tirole, 2003).

**2. "Preço da carne bovina cai 15% com aumento de abate no 2o trimestre"**
Análise: Choque de oferta em mercado competitivo (Cap 13). O ciclo pecuário brasileiro é um dos exemplos mais limpos de oferta com defasagem temporal — a decisão de reter ou abater fêmeas em t afeta a oferta em t+3 anos.

**3. "ANS aprova reajuste de 6,9% para planos individuais"**
Análise: Regulação de preços em mercado com seleção adversa (Cap 23). O reajuste máximo definido pela ANS é um price cap que tenta equilibrar a sustentabilidade atuarial dos planos com a acessibilidade para os consumidores.

---

## 10e. Versão ANPEC

**Formato:** Seleção transversal de todas as questões "Vem, ANPEC!" do livro.

**Estrutura:**

1. Organizar por tema (não por capítulo):
   - Teoria do Consumidor (Caps 3-6)
   - Teoria da Firma (Caps 10-12)
   - Estruturas de Mercado (Caps 13, 15, 16)
   - Teoria dos Jogos (Caps 9a-9d)
   - Equilíbrio Geral e Bem-Estar (Caps 14, 17, 18)
   - Informação e Contratos (Cap 19)
   - Externalidades e Bens Públicos (Cap 20)

2. Dentro de cada tema, ordenar por dificuldade (1-5 estrelas).

3. Gabarito comentado com referência ao capítulo e seção.

4. Estatísticas históricas de frequência por tema no exame ANPEC (quando disponíveis).

**Estimativa:** ~120 questões estilo ANPEC já existentes no livro + ~40 novas.

---

## 10f. Podcast "O Encanador e o Economista"

**Nome:** Referência a Esther Duflo ("economistas como encanadores" — já citada no prefácio).

**Formato:** 15 min por episódio, 1 caso real brasileiro.

**Estrutura fixa:**

1. **Gancho jornalístico (2 min):** Notícia recente ou fato surpreendente
2. **Conceito micro (4 min):** Explicação acessível com analogia
3. **Dados brasileiros (4 min):** Números reais (IBGE, CADE, ANS, ANEEL)
4. **Implicação de política (3 min):** O que a teoria sugere fazer
5. **Provocação final (2 min):** Pergunta para o ouvinte pensar

### 10 episódios-piloto

| Ep | Título | Conceito | Capítulo |
|:---|:-------|:---------|:---------|
| 1 | "Por que o pão de queijo custa R$ 8 na Faria Lima" | Custo de oportunidade e aluguel | Cap 11 |
| 2 | "A Uber matou o táxi?" | Concorrência e destruição criativa | Cap 15-16 |
| 3 | "Por que o Bolsa Família funciona (segundo os dados)" | RCTs e avaliação de políticas | Cap 22 |
| 4 | "Seu plano de saúde está ficando mais caro — e a culpa é sua" | Seleção adversa e espiral da morte | Cap 23 |
| 5 | "PIX: o dia em que o Brasil inventou o dinheiro do futuro" | Efeitos de rede e padrão aberto | Cap 21 |
| 6 | "O preço do carbono e o futuro da Amazônia" | Imposto pigouviano e REDD+ | Cap 24 |
| 7 | "Por que jogadores de futebol ganham tanto" | Mercado de fatores e torneios | Cap 17 |
| 8 | "A guerra dos genéricos: como um comprimido ficou 60% mais barato" | Regulação, CMED e elasticidade | Cap 23 |
| 9 | "Leilão do 5G: R$ 47 bilhões em frequências invisíveis" | Desenho de mecanismos e leilões | Cap 9c |
| 10 | "Por que brasileiro não poupa (e deveria)" | Escolha intertemporal e vieses | Cap 18 + Cap 8 |

---

## Prioridades de desenvolvimento

| Prioridade | Material | Justificativa |
|:-----------|:---------|:-------------|
| Alta | 10c (Roteiros Reels) | Baixo custo de produção, alto alcance, complementa o livro |
| Alta | 10e (Versão ANPEC) | Demanda clara e imediata do público-alvo |
| Média | 10a (Caderno de Exercícios) | Alto valor pedagógico, alto custo de produção |
| Média | 10d (Newsletter) | Mantém engajamento, custo recorrente |
| Média | 10b (Labs R) | Alto valor, requer infraestrutura |
| Baixa | 10f (Podcast) | Alto custo de produção (gravação, edição), retorno incerto |
