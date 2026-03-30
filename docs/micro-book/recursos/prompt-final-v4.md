# PROMPT PARA CLAUDE CODE — 5 Recomendações Finais para 9,8+

> **Contexto:** Livro de Microeconomia intermediária/avançada em português, MkDocs Material em `docs/micro-book/`. Usa admonitions (`!!! definition`, `!!! idea "Intuição Econômica"`, `!!! example`, `!!! brasil`, `!!! danger`), gráficos JSXGraph, apps WebR. Código R em boxes retráteis `??? r-interactive "R Interativo"`. Tom irreverente-mas-rigoroso com referências a Monty Python. 28 módulos (caps 1–8, 9a–9d, 10–24).

> **Objetivo:** Implementar as 5 recomendações finais para elevar o livro de 9,1 para 9,8+. Trabalhar com grande detalhe e cuidado.

---

## BLOCO 1 — NOTEBOOKS COMPUTACIONAIS: Expandir `notebooks/index.md`

### Estado atual:
`notebooks/index.md` existe e lista notebooks Python organizados por parte do livro (Consumidor, Incerteza, Jogos, Firma, Mercados, Fatores). Usa Google Colab ou Python local 3.9+.

`recursos/spin-offs.md` já define 8 labs prioritários em R (POF, Slutsky, Cournot, Comex Stat, CADE/ANP, matching, RCT, DICE).

### Ação:
Expandir `notebooks/index.md` com notebooks prontos para análise de dados reais. Para cada lab, criar uma entrada com:
- Título e capítulo associado
- Link para Google Colab (placeholder `#colab-link` — será preenchido depois)
- Descrição do que o aluno faz (1–2 frases)
- Dataset usado e fonte
- Tempo estimado

#### Notebooks a adicionar (R/Python):

```markdown
## Notebooks com Dados Reais

Estes notebooks usam dados brasileiros reais para aplicar os conceitos do livro. Cada um é autocontido e pode ser executado no Google Colab sem instalação local.

### Teoria do Consumidor (Caps 3–6)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N1 | **Elasticidades de alimentos** | POF 2017–2018 (IBGE/SIDRA) | Estimar elasticidades-preço e renda para arroz, feijão, carne, frutas usando método de Deaton (1988). Plotar curvas de Engel. | 50 min |
| N2 | **Decomposição de Slutsky** | Dados simulados | Simular choque de preço e decompor efeito total em substituição + renda. Visualizar graficamente com animação. | 30 min |
| N3 | **Índices de preço e bem-estar** | IPCA/IBGE | Calcular índices de Laspeyres, Paasche e Fisher para a cesta de consumo brasileira. Comparar com IPCA oficial. | 40 min |

### Incerteza e Comportamento (Caps 7–8)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N4 | **Loteria e aversão ao risco** | Mega-Sena (Caixa) | Calcular valor esperado da Mega-Sena, estimar CRRA necessário para compra do bilhete, plotar prêmio de risco. | 30 min |
| N5 | **Vieses cognitivos em dados** | Pesquisa experimental | Replicar experimento de ancoragem com dados simulados. Testar representatividade com probabilidades bayesianas. | 40 min |

### Teoria dos Jogos (Caps 9a–9d)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N6 | **Nash e best-response** | Simulação | Simular Cournot com n firmas, visualizar convergência via best-response dynamics. Variar n de 2 a 20. | 40 min |
| N7 | **Leilões e receita** | Simulação | Simular leilões de 1o preço, 2o preço (Vickrey), inglês e holandês. Verificar teorema da equivalência de receita. | 40 min |
| N8 | **Gale-Shapley** | CNRM (residência médica) | Rodar algoritmo Gale-Shapley com dados estilizados de residência médica. Verificar estabilidade e strategy-proofness. | 50 min |

### Firma e Custos (Caps 10–12)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N9 | **Função de produção Cobb-Douglas** | PIA/IBGE | Estimar parâmetros de Cobb-Douglas para indústria brasileira. Testar retornos de escala. | 50 min |
| N10 | **Curvas de custo** | Dados simulados | Gerar custos fixos/variáveis, plotar CMg, CMe, CVMe. Identificar escala eficiente e shutdown point. | 30 min |

### Mercados (Caps 13–16)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N11 | **Lei do preço único** | Comex Stat + CEPEA | Analisar convergência de preços de soja/milho entre Brasil e CBOT. Testar arbitragem. | 50 min |
| N12 | **Conluio em combustíveis** | ANP | Analisar dados de preços de gasolina por posto. Testar assimetria de repasse (rockets and feathers). | 50 min |
| N13 | **Oligopólio: Cournot vs. Bertrand** | Simulação | Comparar equilíbrios Cournot e Bertrand com n firmas. Plotar lucros, preços e excedentes. | 40 min |

### Fatores, Tempo e Informação (Caps 17–19)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N14 | **Equação de Mincer** | PNAD Contínua (IBGE) | Estimar retornos à educação e experiência no Brasil. Incluir dummies de gênero e raça. Plotar perfis salariais. | 50 min |
| N15 | **Desconto intertemporal** | Dados simulados | Calibrar modelo de consumo com desconto exponencial vs. quasi-hiperbólico. Visualizar inconsistência temporal. | 30 min |

### Tópicos Aplicados (Caps 20–24)

| # | Notebook | Dados | O que você faz | Tempo |
|:--|:---------|:------|:---------------|:---:|
| N16 | **RCT simulado** | Dados sintéticos | Gerar dados experimentais, aleatorizar, estimar ATE com e sem controles, visualizar DiD com tendências paralelas. | 50 min |
| N17 | **Modelo DICE simplificado** | Parâmetros calibrados | Calibrar DICE com 2 períodos, variar taxa de desconto social (ρ), plotar trajetórias ótimas de emissão e temperatura. | 50 min |
| N18 | **Valoração contingente** | Dados simulados | Simular survey de DAP, estimar WTP com logit, calcular benefício agregado. Discutir vieses. | 40 min |
```

### Atualizar também:
- `mkdocs.yml`: verificar se `notebooks/index.md` está na nav
- Adicionar no topo do `notebooks/index.md` um box explicativo:

```markdown
!!! tip "Como usar estes notebooks"
    Cada notebook é autocontido e roda no [Google Colab](https://colab.research.google.com/) sem instalação. Clique no botão "Open in Colab" para começar. Tempo médio: 30–50 minutos por notebook.

    **Pré-requisitos:** Ter lido o capítulo correspondente. Conhecimento básico de R ou Python é útil mas não obrigatório — os notebooks são comentados passo a passo.

    **Fontes de dados brasileiros:**
    | Fonte | URL | Dados |
    |---|---|---|
    | SIDRA/IBGE | [sidra.ibge.gov.br](https://sidra.ibge.gov.br) | POF, PNAD, Censo, PIA |
    | IPEADATA | [ipeadata.gov.br](https://www.ipeadata.gov.br) | Séries macro e regionais |
    | Comex Stat | [comexstat.mdic.gov.br](http://comexstat.mdic.gov.br) | Comércio exterior |
    | RAIS/CAGED | [bi.mte.gov.br](https://bi.mte.gov.br/bgcaged/) | Emprego formal |
    | BCB/SGS | [bcb.gov.br](https://www.bcb.gov.br/estatisticas) | Séries financeiras |
    | ANP | [gov.br/anp](https://www.gov.br/anp/pt-br/centrais-de-conteudo/dados-abertos) | Preços de combustíveis |
    | CEPEA | [cepea.esalq.usp.br](https://www.cepea.esalq.usp.br) | Preços agrícolas |
```

---

## BLOCO 2 — CAP 14: Separar CGE e Arrow/Escolha Social

### Estado atual:
Cap 14 tem 12 seções + exercícios + pesquisa, distribuídas em 7 subpáginas:
- `eficiencia-pareto.md` (22,6 KB)
- `modelo-matematico.md` (21 KB) — inclui seção 14.9 (existência Arrow-Debreu)
- `teoremas-bem-estar.md` (30,6 KB) — a maior subpágina
- `sistema-precos.md` (11,4 KB)
- `cge.md` (15,6 KB) — Seção 14.11: Modelos CGE
- `escolha-social.md` (8,2 KB) — Seção 14.12: Arrow e Escolha Social
- `exercicios.md` (14,1 KB)
- `pesquisa.md`

**Total:** ~137 KB. É o capítulo mais longo do livro.

### Ação — reestruturar como material complementar:

**NÃO dividir em dois capítulos** (a numeração é estável demais para mudar agora). Em vez disso, transformar CGE e Escolha Social em **material avançado** claramente sinalizado.

**Opção escolhida:** Manter as subpáginas `cge.md` e `escolha-social.md` no cap14, mas:

1. **No `cap14/index.md`**, adicionar sinalização visual no roadmap:

```markdown
| **14.11** | Um modelo de equilíbrio resolve o quê na prática? | CGE: calibração, SAM, simulação de políticas | [CGE](cge.md) |
| **14.12** | A democracia pode ser "justa"? | Teorema de Arrow, ditador, impossibilidade | [Escolha Social](escolha-social.md) |
```

Adicionar box antes dessas linhas:
```markdown
!!! info "Material Avançado"
    As seções 14.11 (CGE) e 14.12 (Escolha Social) são **material complementar** — podem ser omitidas numa primeira leitura sem perda de continuidade. São recomendadas para cursos de pós-graduação e para a Trilha Completa.
```

2. **No `cap14/cge.md`**, adicionar no topo:

```markdown
!!! info "Seção avançada"
    Esta seção é material complementar. Pode ser omitida sem perda de continuidade no restante do livro. Recomendada para: pós-graduação, economistas aplicados, pesquisadores que usam CGE.
```

3. **No `cap14/escolha-social.md`**, adicionar no topo:

```markdown
!!! info "Seção avançada"
    Esta seção é material complementar. Para uma introdução mais aplicada à escolha social (votação, paradoxo de Condorcet, eleitor mediano), veja o [Cap. 20, Seção 20.9](../cap20/index.md).
```

4. **Mover exercícios específicos de CGE e Arrow** para uma subseção separada no `exercicios.md`:

```markdown
## Exercícios — Material Avançado (Seções 14.11–14.12)

*Estes exercícios cobrem as seções complementares. Podem ser omitidos em cursos que não incluem CGE e Escolha Social.*
```

---

## BLOCO 3 — CAP 16: Modularização formal em 16a/16b

### Estado atual:
Cap 16 tem 16 seções em 5 subpáginas + exercícios + pesquisa. O `index.md` já tem um box de navegação dividindo em Bloco A (16.1–16.6) e Bloco B (16.7–16.16).

### Ação — dividir formalmente seguindo o padrão do Cap 9:

**Criar `cap16a/` — "Poucos — e Isso Muda Tudo" (Modelos Básicos de Oligopólio)**

Mover:
- `fundamentos.md` → `cap16a/fundamentos.md` (seções 16a.1–16a.4, renumerar)
- `capacidade-diferenciacao.md` → `cap16a/capacidade-diferenciacao.md` (16a.5–16a.6, renumerar)

Criar:
- `cap16a/index.md` — intro + roadmap slim (formato 4 colunas com pergunta-guia)
- `cap16a/exercicios.md` — mover exercícios de Bertrand, Cournot, Stackelberg, diferenciação
- `cap16a/pesquisa.md` — mover artigos relevantes

**Criar `cap16b/` — "Colusão, Entrada e o Árbitro: IO Avançada"**

Mover:
- `colusao-entrada.md` → `cap16b/colusao-entrada.md` (16b.1–16b.4, renumerar)
- `entrada-inovacao.md` → `cap16b/entrada-inovacao.md` (16b.5–16b.7, renumerar)
- `monopolistica-fusoes.md` → `cap16b/monopolistica-fusoes.md` (16b.8–16b.10, renumerar)

Criar:
- `cap16b/index.md` — intro + roadmap slim
- `cap16b/exercicios.md` — mover exercícios de colusão, entrada, inovação, fusões, antitruste
- `cap16b/pesquisa.md` — mover artigos relevantes

### Renumeração:

| Antes | Depois (16a) | Depois (16b) |
|---|---|---|
| 16.1–16.4 | 16a.1–16a.4 | — |
| 16.5–16.6 | 16a.5–16a.6 | — |
| 16.7–16.10 | — | 16b.1–16b.4 |
| 16.11–16.13 | — | 16b.5–16b.7 |
| 16.14–16.16 | — | 16b.8–16b.10 |

### Atualizar referências:
- `mkdocs.yml` — substituir `cap16/` por `cap16a/` e `cap16b/` na nav
- Buscar em TODO o livro por referências a "Cap. 16" ou "cap16/" e atualizar:
  - Referências a seções 16.1–16.6 → "Cap. 16a"
  - Referências a seções 16.7–16.16 → "Cap. 16b"
  - Referências genéricas "Cap. 16" → "Caps. 16a–16b"
- `mapa-livro.md` — atualizar trilhas
- `indice-remissivo.md` — atualizar referências
- `glossario.md` — atualizar links
- **Remover** o diretório `cap16/` antigo (após verificar que todo conteúdo foi migrado)

### Intro do `cap16a/index.md`:

```markdown
---
title: "Capítulo 16a — Poucos — e Isso Muda Tudo"
---

# Capítulo 16a — Poucos — e Isso Muda Tudo

*Modelos Básicos de Oligopólio*

Quando o mercado tem poucos vendedores, cada firma sabe que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o que torna o oligopólio fundamentalmente diferente da concorrência perfeita e do monopólio. Neste módulo, construímos os modelos clássicos: Bertrand (competição em preços), Cournot (competição em quantidades), Stackelberg (líder-seguidora), e suas extensões com restrições de capacidade e diferenciação de produto.

!!! tip "Pré-requisitos"
    [Cap. 9a](../cap09a/index.md) (equilíbrio de Nash) e [Cap. 15](../cap15/index.md) (monopólio). Para IO avançada (colusão, entrada, fusões), veja o [Cap. 16b](../cap16b/index.md).
```

### Intro do `cap16b/index.md`:

```markdown
---
title: "Capítulo 16b — Colusão, Entrada e o Árbitro: IO Avançada"
---

# Capítulo 16b — Colusão, Entrada e o Árbitro

*IO Avançada: Colusão, Dissuasão de Entrada, Inovação e Antitruste*

Nos modelos do [Cap. 16a](../cap16a/index.md), as firmas competem dentro de regras fixas. Aqui, elas tentam *mudar* as regras: cartéis tácitos que elevam preços, investimentos estratégicos que bloqueiam rivais, inovação como arma competitiva, e fusões que redesenham o mercado. Do outro lado da mesa, o regulador tenta distinguir eficiência de poder de mercado. Este módulo é onde a teoria dos jogos (Caps. 9a–9b) encontra a política industrial.

!!! tip "Pré-requisitos"
    [Cap. 16a](../cap16a/index.md) (modelos básicos), [Cap. 9a](../cap09a/index.md) (Nash), [Cap. 9b](../cap09b/index.md) (jogos repetidos — essencial para colusão).
```

---

## BLOCO 4 — CAP 7 → CAPS 9d/19: Ponte mais suave

### Estado atual:
Cap 7 menciona "informação assimétrica que será aprofundada em capítulos posteriores" mas NÃO referencia especificamente caps 9d e 19. A transição do estado-preferência (7.7–7.8) para informação assimétrica é abrupta.

### Ação:
Adicionar um box de "roadmap futuro" no final da última subpágina temática do Cap 7 (provavelmente `cap07/estado.md` ou `cap07/ferramentas.md` — verificar qual contém as seções 7.7–7.8).

```markdown
!!! abstract "Para onde estes conceitos vão"
    As seções 7.7–7.8 plantaram a semente da **informação assimétrica**: o que acontece quando um lado do mercado sabe mais que o outro? Este tema será desenvolvido em profundidade em dois capítulos posteriores:

    - **[Cap. 9d — O Diploma É Caro](../cap09d/index.md):** A abordagem de **teoria dos jogos**. Sinalização (Spence), seleção adversa (Akerlof), moral hazard e cheap talk — todos como jogos sequenciais com informação incompleta, resolvidos via Equilíbrio Bayesiano Perfeito.

    - **[Cap. 19 — Quando Um Lado Sabe Mais](../cap19/index.md):** A abordagem de **mercados e contratos**. Os mesmos fenômenos (sinalização, screening, seleção adversa, moral hazard), mas com foco em como mercados, seguradoras, empregadores e reguladores **desenham mecanismos** para lidar com a assimetria.

    **Resumo:** Cap. 9d = "como modelar o problema"; Cap. 19 = "como resolver o problema na prática". Ambos usam o arcabouço de estado-preferência que você acabou de aprender como ponto de partida.
```

### Também adicionar referência reversa:
No `cap09d/index.md`, no parágrafo de conexão, adicionar:

```markdown
Se você veio direto do [Cap. 7 (Seções 7.7–7.8)](../cap07/index.md), ótimo — os ativos contingentes e a abordagem de estado-preferência são exatamente a ponte para o que faremos aqui.
```

No `cap19/index.md`, no parágrafo de conexão, adicionar:

```markdown
O [Cap. 7 (Seções 7.7–7.8)](../cap07/index.md) introduziu a informação assimétrica via estado-preferência. O [Cap. 9d](../cap09d/index.md) formalizou os jogos. Aqui, aplicamos tudo a mercados reais.
```

---

## BLOCO 5 — ROTEIROS DE VÍDEOS "1 Conceito em 60 Segundos"

### Estado atual:
`recursos/spin-offs.md` já tem:
- Formato definido (Hook 3s → Visual 20s → Twist 15s → Explicação 15s → CTA 5s)
- 10 roteiros-gancho com maior potencial viral
- Base de 158 boxes `!!! idea` como fonte

### Ação — expandir de ganchos para roteiros completos:
Em `recursos/spin-offs.md`, na seção 10c, substituir a tabela de ganchos por **10 roteiros completos**:

```markdown
### Roteiro 1 — O Pão de R$ 35 (Custo de Oportunidade)

**Capítulo:** 11 (Custos) | **Duração:** 60 seg | **Formato:** Reel/TikTok

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | [Texto na tela + narração] "Aquele pão de R$ 3,50? Na verdade custa R$ 35. Eu fiz a conta." |
| 3–23 | **Visual** | [Animação] Padeiro abrindo a padaria → relógio marcando 1h → calculadora: salário/hora do padeiro (R$ 31,50) + ingredientes (R$ 3,50) = R$ 35. Gráfico simples: custo explícito vs. custo de oportunidade. |
| 23–38 | **Twist** | [Narração] "O custo real de qualquer coisa é aquilo que você abre mão para obtê-la. O padeiro poderia estar dando aula de confeitaria a R$ 150/hora. O pão acabou de ficar mais caro." |
| 38–53 | **Explicação** | [Texto + narração] "Isso é custo de oportunidade — o conceito mais importante da economia, e o mais ignorado. Toda decisão tem um preço invisível." |
| 53–60 | **CTA** | [Tela] "Mais 157 conceitos assim → link na bio 📚" |

**Hashtags:** #economia #custos #microeconomia #aprenda #curiosidades

---

### Roteiro 2 — O Seguro do Motorista Ruim (Risco Moral)

**Capítulo:** 19 (Informação Assimétrica) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Seguro total no carro? Parabéns, você acabou de virar um motorista pior." |
| 3–23 | **Visual** | [Animação] Antes do seguro: motorista cauteloso, cinto, seta, distância. Depois: celular no volante, estaciona em qualquer lugar, "ah, tá segurado". Gráfico: nível de cuidado vs. cobertura do seguro (curva descendente). |
| 23–38 | **Twist** | "A seguradora sabe disso. Por isso cobra franquia, bônus por não-sinistro e instala rastreador. Cada recurso é um mecanismo para alinhar incentivos — pura teoria dos contratos." |
| 38–53 | **Explicação** | "Risco moral: quando alguém muda de comportamento porque outra pessoa paga a conta. Acontece em seguros, em planos de saúde e em todo governo que socializa prejuízos." |
| 53–60 | **CTA** | "Cap. 19 — Informação Assimétrica → link na bio 📚" |

---

### Roteiro 3 — Por Que o Spotify Cobra Diferente (Discriminação de Preços)

**Capítulo:** 15 (Monopólio) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O Spotify cobra R$ 21,90 pra você e R$ 11,90 pro seu irmão. Isso é justo?" |
| 3–23 | **Visual** | [Animação] Dois consumidores com elasticidades diferentes. Curvas de demanda. Área de lucro do monopolista com preço único vs. com discriminação. O lucro CRESCE e o excedente total PODE crescer. |
| 23–38 | **Twist** | "O surpreendente: a discriminação de preços pode aumentar o bem-estar total. O estudante que não pagaria R$ 21,90 agora acessa o serviço por R$ 11,90. Mais gente consumindo = menos peso morto." |
| 38–53 | **Explicação** | "Discriminação de preços de terceiro grau: cobrar mais de quem tem demanda mais inelástica. Funciona em cinemas, passagens aéreas e, sim, no seu Spotify." |
| 53–60 | **CTA** | "Cap. 15 — Monopólio → link na bio 📚" |

---

### Roteiro 4 — O Rodízio de Pizza e o Oceano (Tragédia dos Comuns)

**Capítulo:** 20 (Externalidades e Bens Públicos) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O rodízio de pizza explica por que o oceano está sem peixe." |
| 3–23 | **Visual** | [Animação] 10 pessoas no rodízio. Cada uma pega o máximo — custo é dividido por 10. Ninguém internaliza que sua fatia extra reduz a disponível para os outros. Transição: barcos no oceano. Mesmo mecanismo. |
| 23–38 | **Twist** | "Garrett Hardin chamou isso de 'tragédia dos comuns' em 1968. Elinor Ostrom ganhou o Nobel em 2009 mostrando que comunidades resolvem o problema SEM privatizar NEM estatizar. A resposta: regras locais + punição social." |
| 38–53 | **Explicação** | "Tragédia dos comuns: quando o recurso é de todos, o incentivo individual é explorar demais. A solução não é só 'privatiza' ou 'estatiza' — é entender os incentivos." |
| 53–60 | **CTA** | "Cap. 20 — Externalidades → link na bio 📚" |

---

### Roteiro 5 — Dois Mafiosos e um Dilema (Dilema dos Prisioneiros)

**Capítulo:** 9a (Jogos Estáticos) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Dois mafiosos são presos. Se ficassem quietos, saíam em 1 ano. Os dois confessam. Por quê?" |
| 3–23 | **Visual** | [Animação] Matriz de payoffs 2×2. Setas mostrando estratégia dominante de cada jogador. Equilíbrio de Nash = (Confessar, Confessar) = 5 anos cada. Ótimo social = (Calar, Calar) = 1 ano cada. |
| 23–38 | **Twist** | "O resultado racional é pior para os dois. Isso não é um paradoxo — é o fundamento da teoria dos jogos. E acontece em corridas armamentistas, guerras de preços e até em quem lava a louça no apartamento compartilhado." |
| 38–53 | **Explicação** | "Dilema dos prisioneiros: quando o incentivo individual leva a um resultado coletivamente ruim. A saída? Repetição, reputação ou contratos — exatamente o que o Cap. 9b explora." |
| 53–60 | **CTA** | "Cap. 9a — Teoria dos Jogos → link na bio 📚" |

---

### Roteiro 6 — Doação de Órgãos e um Formulário (Nudge)

**Capítulo:** 8 (Economia Comportamental) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Muda o formulário, salva 10 mil vidas por ano. Sem gastar um centavo." |
| 3–23 | **Visual** | [Gráfico] Taxas de doação de órgãos: países opt-in (10–30%) vs. opt-out (80–99%). Mesma cultura, mesma riqueza. A única diferença: o default do formulário. |
| 23–38 | **Twist** | "Ninguém está sendo obrigado. Quem quiser sair, sai. Mas o viés do status quo é tão forte que a maioria simplesmente... fica. Thaler e Sunstein chamaram isso de paternalismo libertário." |
| 38–53 | **Explicação** | "Nudge: uma intervenção na arquitetura de escolha que muda comportamento sem restringir liberdade. O default é o nudge mais poderoso que existe." |
| 53–60 | **CTA** | "Cap. 8 — Economia Comportamental → link na bio 📚" |

---

### Roteiro 7 — O WhatsApp Vale Zero (Efeitos de Rede)

**Capítulo:** 21 (Economia Digital) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "O WhatsApp vale zero sem seus contatos. E tudo com eles." |
| 3–23 | **Visual** | [Animação] Gráfico de valor da rede: 1 usuário = R$ 0. 10 = R$ 10. 1 milhão = incalculável. Curva S de adoção com ponto de massa crítica marcado. |
| 23–38 | **Twist** | "É por isso que o Facebook pagou US$ 19 bilhões pelo WhatsApp em 2014 — quando ele faturava US$ 10 milhões. O valor não estava no app. Estava na rede." |
| 38–53 | **Explicação** | "Externalidade de rede: cada novo usuário torna o produto mais valioso para todos os outros. É o que torna mercados digitais winner-take-all." |
| 53–60 | **CTA** | "Cap. 21 — Economia Digital → link na bio 📚" |

---

### Roteiro 8 — O Diploma Mais Caro do Mundo (Sinalização)

**Capítulo:** 9d (Jogos Dinâmicos com Informação Incompleta) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "E se o diploma não te ensinar nada... mas mesmo assim aumentar seu salário?" |
| 3–23 | **Visual** | [Animação] Dois tipos de trabalhador: alta e baixa produtividade. Empregador não consegue distinguir. Alta produtividade faz MBA (caro, mas suportável). Baixa produtividade não faz (custo alto demais). O diploma SINALIZA tipo, não CRIA produtividade. |
| 23–38 | **Twist** | "Michael Spence ganhou o Nobel com essa ideia em 2001. O modelo mostra que educação pode ter retorno privado positivo e retorno social ZERO — porque o sinal só funciona se for caro o suficiente para ser imitado." |
| 38–53 | **Explicação** | "Sinalização: gastar recursos para revelar informação privada. Funciona porque o custo é menor para quem tem a qualidade genuína. É por isso que o MBA é caro." |
| 53–60 | **CTA** | "Cap. 9d — Sinalização → link na bio 📚" |

---

### Roteiro 9 — Gasolina +10%, Você Dirige Quanto a Menos? (Elasticidade)

**Capítulo:** 6 (Elasticidades e Demanda de Mercado) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Gasolina sobe 10%. Quanto você dirige a menos? A resposta pode te surpreender." |
| 3–23 | **Visual** | [Dados reais] Brasil: elasticidade-preço da gasolina ≈ −0,3 (curto prazo). Significa: +10% no preço → −3% no consumo. EUA: −0,25. Europa: −0,4. Gráfico de demanda inelástica vs. elástica. |
| 23–38 | **Twist** | "Curto prazo: você quase não muda. Longo prazo (5+ anos): elasticidade sobe para −0,7 a −1,0. Você troca de carro, muda de emprego, vai de bike. O tempo é o grande aliado da elasticidade." |
| 38–53 | **Explicação** | "Elasticidade-preço: quanto a demanda muda quando o preço muda. Bens essenciais sem substitutos (gasolina, remédios) são inelásticos. Bens com substitutos (marca de cerveja) são elásticos." |
| 53–60 | **CTA** | "Cap. 6 — Elasticidades → link na bio 📚" |

---

### Roteiro 10 — O Filme Ruim e a Falácia (Sunk Costs)

**Capítulo:** 8 (Economia Comportamental) | **Duração:** 60 seg

| Seg | Elemento | Conteúdo |
|:---:|---|---|
| 0–3 | **Hook** | "Você já assistiu um filme ruim até o final só porque pagou o ingresso?" |
| 3–23 | **Visual** | [Animação] Cenário 1: pagou R$ 40 no cinema. 30 min: filme péssimo. Fica até o final (2h desperdiçadas). Cenário 2: ganhou ingresso de graça. Sai em 30 min. Mesma qualidade, decisão diferente. Por quê? |
| 23–38 | **Twist** | "O dinheiro do ingresso já foi. Não volta. Sua decisão deveria depender apenas do que vem DEPOIS — e as próximas 1h30 são ruins nos dois cenários. A diferença é pura irracionalidade." |
| 38–53 | **Explicação** | "Falácia dos custos afundados: deixar custos passados e irrecuperáveis influenciarem decisões futuras. Acontece em filmes, em relacionamentos e em projetos de R$ 50 bilhões do governo." |
| 53–60 | **CTA** | "Cap. 8 — Comportamental → link na bio 📚" |
```

---

## REGRAS GLOBAIS DE EXECUÇÃO

1. **Tom e voz:** Irreverente mas preciso. Testar: "um aluno de 3o ano riria E aprenderia?"
2. **Boxes `!!! idea`:** Título SEMPRE "Intuição Econômica" (nunca renomear).
3. **Labels JSXGraph:** Nunca sobrepor curvas — offset mínimo +5px.
4. **Código R:** Sempre em `??? r-interactive "R Interativo"`.
5. **Referências:** Verificar CADA citação com `WebSearch`. NÃO alucinar.
6. **Cross-references:** Links relativos (`[Cap. 4](../cap04/index.md)`).
7. **Ao dividir Cap 16:** Buscar TODAS as referências a "Cap. 16" ou "cap16/" no livro inteiro e atualizar para 16a/16b conforme apropriado. Usar `Grep` para encontrar todas as ocorrências.
8. **Ao mover arquivos:** Verificar que nenhum conteúdo se perdeu. Diff de linhas antes/depois deve ter saldo zero.
9. **Commitar ao final de cada bloco** com `feat(micro-book): ...`.
10. **Atualizar `mkdocs.yml`** quando criar/mover diretórios.
11. **Atualizar `indice-remissivo.md`** e `glossario.md`** com novos termos e links.

---

## ORDEM DE EXECUÇÃO

| Ordem | Bloco | Tarefa | Esforço |
|:---:|:---:|---|---|
| 1 | Bloco 4 | Ponte Cap 7 → 9d/19 (rápido, sem risco) | Baixo |
| 2 | Bloco 2 | Cap 14: sinalizar CGE e Arrow como avançado | Baixo |
| 3 | Bloco 1 | Notebooks computacionais expandidos | Médio |
| 4 | Bloco 3 | Cap 16: dividir em 16a/16b (maior risco, mais referências para atualizar) | Alto |
| 5 | Bloco 5 | Roteiros de vídeos completos | Médio |

**Meta:** Após execução, o livro atinge 9,8+ em todas as 8 dimensões.
