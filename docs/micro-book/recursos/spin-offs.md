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

### 10 roteiros com maior potencial viral

| # | Conceito | Hook | Capítulo |
|:--|:---------|:-----|:---------|
| 1 | Custo de oportunidade | "Aquele pão de R$ 3,50 na padaria na verdade custa R$ 35. Sim, eu fiz a conta." | Cap 11 |
| 2 | Seleção adversa | "Por que o melhor funcionário da empresa é o primeiro a pedir demissão?" | Cap 9d/19 |
| 3 | Discriminação de preços | "O Spotify cobra R$ 21,90 pra você e R$ 11,90 pro seu irmão. Isso é justo?" | Cap 15 |
| 4 | Efeitos de rede | "O WhatsApp vale zero sem seus contatos. E tudo com eles. Isso é um efeito de rede." | Cap 21 |
| 5 | Dilema dos Prisioneiros | "Por que dois mafiosos confessam mesmo quando o silêncio salvaria os dois?" | Cap 9a |
| 6 | Viés do status quo | "Doação de órgãos: muda o formulário, salva 10 mil vidas." | Cap 8 |
| 7 | Risco moral | "Seguro total no carro? Parabéns, você acabou de virar um motorista pior." | Cap 19 |
| 8 | Tragédia dos comuns | "O rodízio de pizza explica por que o oceano está sem peixe." | Cap 20 |
| 9 | Elasticidade | "Gasolina sobe 10% — você dirige quanto a menos? A resposta surpreende." | Cap 6 |
| 10 | Sunk cost fallacy | "Você já assistiu um filme ruim até o final só porque pagou o ingresso? Parabéns, você caiu na falácia dos custos afundados." | Cap 8 |

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
