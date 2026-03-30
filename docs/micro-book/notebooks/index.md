# Cadernos Computacionais

!!! tip "Como usar estes notebooks"
    Cada notebook é autocontido e roda no [Google Colab](https://colab.research.google.com/) sem instalação. Clique no botão "Open in Colab" para começar. Tempo médio: 30–50 minutos por notebook.

    **Duas linguagens:** Todos os notebooks estão disponíveis em **Python** e **R**. Escolha a linguagem com que você se sentir mais confortável — o conteúdo econômico é idêntico.

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

---

## Cadernos por Tema (Modelos Interativos)

Estes cadernos acompanham o livro e permitem explorar os modelos microeconômicos interativamente.

**Requisitos Python:** `numpy`, `matplotlib`, `scipy`

```bash
pip install numpy matplotlib scipy
```

**Requisitos R:** `tidyverse`, `ggplot2`, `rootSolve`

```r
install.packages(c("tidyverse", "ggplot2", "rootSolve"))
```

| Caderno | Capítulos | Temas | Python | R |
|---------|-----------|-------|:------:|:-:|
| Teoria do Consumidor | 3–6 | Utilidade, otimização, Slutsky, elasticidade | [consumidor.py](consumidor.py) | [consumidor.R](consumidor.R) |
| Incerteza e Comportamento | 7–8 | Utilidade esperada, prospect theory, desconto | [incerteza.py](incerteza.py) | [incerteza.R](incerteza.R) |
| Teoria dos Jogos | 9a–9d | Nash, Cournot, leilões, jogos repetidos | [jogos.py](jogos.py) | [jogos.R](jogos.R) |
| Firma e Custos | 10–12 | Produção, custos, oferta competitiva | [firma.py](firma.py) | [firma.R](firma.R) |
| Mercados | 13–16 | Tributação, equilíbrio geral, monopólio, oligopólio | [mercados.py](mercados.py) | [mercados.R](mercados.R) |
| Fatores e Tempo | 17–18 | Oferta de trabalho, VPL, Hotelling | [fatores.py](fatores.py) | [fatores.R](fatores.R) |

---

## Notebooks com Dados Reais

Estes notebooks usam dados brasileiros reais para aplicar os conceitos do livro. Cada um é autocontido e pode ser executado no Google Colab sem instalação local.

### Teoria do Consumidor (Caps. 3–6)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N1 | **Elasticidades de alimentos** | POF 2017–2018 (IBGE/SIDRA) | Estimar elasticidades-preço e renda para arroz, feijão, carne, frutas usando método de Deaton (1988). Plotar curvas de Engel. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N2 | **Decomposição de Slutsky** | Dados simulados | Simular choque de preço e decompor efeito total em substituição + renda. Visualizar graficamente com animação. | 30 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N3 | **Índices de preço e bem-estar** | IPCA/IBGE | Calcular índices de Laspeyres, Paasche e Fisher para a cesta de consumo brasileira. Comparar com IPCA oficial. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Incerteza e Comportamento (Caps. 7–8)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N4 | **Loteria e aversão ao risco** | Mega-Sena (Caixa) | Calcular valor esperado da Mega-Sena, estimar CRRA necessário para compra do bilhete, plotar prêmio de risco. | 30 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N5 | **Vieses cognitivos em dados** | Pesquisa experimental | Replicar experimento de ancoragem com dados simulados. Testar representatividade com probabilidades bayesianas. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Teoria dos Jogos (Caps. 9a–9d)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N6 | **Nash e best-response** | Simulação | Simular Cournot com n firmas, visualizar convergência via best-response dynamics. Variar n de 2 a 20. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N7 | **Leilões e receita** | Simulação | Simular leilões de 1o preço, 2o preço (Vickrey), inglês e holandês. Verificar teorema da equivalência de receita. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N8 | **Gale-Shapley** | CNRM (residência médica) | Rodar algoritmo Gale-Shapley com dados estilizados de residência médica. Verificar estabilidade e strategy-proofness. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Firma e Custos (Caps. 10–12)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N9 | **Função de produção Cobb-Douglas** | PIA/IBGE | Estimar parâmetros de Cobb-Douglas para indústria brasileira. Testar retornos de escala. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N10 | **Curvas de custo** | Dados simulados | Gerar custos fixos/variáveis, plotar CMg, CMe, CVMe. Identificar escala eficiente e shutdown point. | 30 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Mercados (Caps. 13–16)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N11 | **Lei do preço único** | Comex Stat + CEPEA | Analisar convergência de preços de soja/milho entre Brasil e CBOT. Testar arbitragem. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N12 | **Conluio em combustíveis** | ANP | Analisar dados de preços de gasolina por posto. Testar assimetria de repasse (rockets and feathers). | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N13 | **Oligopólio: Cournot vs. Bertrand** | Simulação | Comparar equilíbrios Cournot e Bertrand com n firmas. Plotar lucros, preços e excedentes. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Fatores, Tempo e Informação (Caps. 17–19)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N14 | **Equação de Mincer** | PNAD Contínua (IBGE) | Estimar retornos à educação e experiência no Brasil. Incluir dummies de gênero e raça. Plotar perfis salariais. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N15 | **Desconto intertemporal** | Dados simulados | Calibrar modelo de consumo com desconto exponencial vs. quasi-hiperbólico. Visualizar inconsistência temporal. | 30 min | [Colab](#colab-link) | [Colab](#colab-link) |

### Tópicos Aplicados (Caps. 20–24)

| # | Notebook | Dados | O que você faz | Tempo | Python | R |
|:--|:---------|:------|:---------------|:---:|:------:|:-:|
| N16 | **RCT simulado** | Dados sintéticos | Gerar dados experimentais, aleatorizar, estimar ATE com e sem controles, visualizar DiD com tendências paralelas. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N17 | **Modelo DICE simplificado** | Parâmetros calibrados | Calibrar DICE com 2 períodos, variar taxa de desconto social, plotar trajetórias ótimas de emissão e temperatura. | 50 min | [Colab](#colab-link) | [Colab](#colab-link) |
| N18 | **Valoração contingente** | Dados simulados | Simular survey de DAP, estimar WTP com logit, calcular benefício agregado. Discutir vieses. | 40 min | [Colab](#colab-link) | [Colab](#colab-link) |
