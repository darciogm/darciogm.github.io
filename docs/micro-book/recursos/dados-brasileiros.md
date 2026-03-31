---
title: "Banco de Dados Brasileiros para Exercícios"
---

# Banco de Dados Brasileiros para Exercícios

Este repositório reúne datasets reais, curados e prontos para uso nos exercícios empíricos do livro. Cada dataset vem com descrição, fonte oficial, dicionário de variáveis e indicação do capítulo e conceito que ele ilustra.

A filosofia é simples: **dados reais > dados inventados**. Um aluno que estima uma elasticidade-preço da demanda com dados da POF/IBGE entende o conceito melhor — e para sempre — do que um que resolve $Q_d = 100 - 2P$ pela centésima vez.

---

## Como usar

Todos os datasets podem ser carregados diretamente nos **Mini-Labs WebR** do livro ou baixados para análise em R, Python ou Stata. O formato padrão é CSV (UTF-8, separador `;`, decimal `,` — padrão brasileiro).

```r
# Exemplo: carregar no WebR ou RStudio
# Datasets prontos (CSV com separador ; e decimal ,)
d01 <- read.csv2("../dados/D01_cestas_consumo_pof.csv")
d02 <- read.csv2("../dados/D02_combustiveis_anp.csv")
d11 <- read.csv2("../dados/D11_pnad_trabalho.csv")
d13 <- read.csv2("../dados/D13_retornos_educacao.csv")
d14 <- read.csv2("../dados/D14_selic_ipca.csv")
d22 <- read.csv2("../dados/D22_desmatamento_amazonia.csv")
```

!!! success "Datasets prontos para download"
    Os datasets abaixo estão pré-processados, limpos e prontos para uso imediato — sem necessidade de baixar dados brutos, limpar encoding ou tratar missings. Cada CSV usa UTF-8, separador `;`, decimal `,` (padrão brasileiro). Carregue com `read.csv2()` no R.

    | ID | Arquivo | Linhas | Variáveis | Dicionário |
    |:---|:--------|:------:|:---------:|:----------:|
    | D01 | [`D01_cestas_consumo_pof.csv`](../dados/D01_cestas_consumo_pof.csv) | 10 | 10 | [Ver](../dados/DICIONARIO.md) |
    | D02 | [`D02_combustiveis_anp.csv`](../dados/D02_combustiveis_anp.csv) | 70 | 10 | [Ver](../dados/DICIONARIO.md) |
    | D11 | [`D11_pnad_trabalho.csv`](../dados/D11_pnad_trabalho.csv) | 50 | 10 | [Ver](../dados/DICIONARIO.md) |
    | D13 | [`D13_retornos_educacao.csv`](../dados/D13_retornos_educacao.csv) | 40 | 8 | [Ver](../dados/DICIONARIO.md) |
    | D14 | [`D14_selic_ipca.csv`](../dados/D14_selic_ipca.csv) | 65 | 7 | [Ver](../dados/DICIONARIO.md) |
    | D22 | [`D22_desmatamento_amazonia.csv`](../dados/D22_desmatamento_amazonia.csv) | 70 | 8 | [Ver](../dados/DICIONARIO.md) |

    Os demais datasets (D03–D10, D12, D15–D21, D23) serão disponibilizados progressivamente. Consulte o [Protocolo de Atualização](protocolo-atualizacao.md) para o cronograma.

---

## Catálogo de Datasets

### Bloco I — Consumidor e Demanda (Capítulos 3–8)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D01 | **Cestas de consumo por faixa de renda** — Participação de alimentos, transporte, habitação e lazer no orçamento familiar, por decil de renda. | POF/IBGE 2017–2018 | Curvas de Engel, bens normais vs. inferiores, Lei de Engel | Cap 4, 5 |
| D02 | **Preços e quantidades de combustíveis** — Série mensal de preços (gasolina, etanol, diesel) e volumes vendidos por estado, 2010–2024. | ANP (Levantamento de Preços) | Elasticidade-preço da demanda, bens substitutos, estática comparativa | Cap 4, 5, 6 |
| D03 | **Consumo de energia elétrica residencial** — Consumo mensal (kWh) e tarifa média por distribuidora, 2015–2024. | ANEEL / EPE | Elasticidade-preço, tarifa social, efeito renda | Cap 5, 6 |
| D04 | **Pesquisa de Orçamentos Familiares (POF) — extrato** — Gasto mensal per capita em 12 categorias de consumo, por UF, faixa de renda e composição familiar. | POF/IBGE 2017–2018 | Restrição orçamentária, preferências reveladas, bem-estar | Cap 3, 4, 5 |

### Bloco II — Firma e Produção (Capítulos 10–12)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D05 | **Produção agrícola municipal** — Área plantada, quantidade produzida e valor da produção para soja, milho, café e cana-de-açúcar, por município, 2010–2023. | PAM/IBGE (SIDRA) | Função de produção, rendimentos de escala, produtividade marginal | Cap 10 |
| D06 | **Custos de produção — Conab** — Custo operacional efetivo e total por hectare para soja e milho, por região, safras 2015/16 a 2023/24. | Conab | Custos fixos vs. variáveis, custo marginal, curvas de custo | Cap 11 |
| D07 | **Cadastro Central de Empresas (CEMPRE)** — Número de empresas, pessoal ocupado e salários por setor CNAE e faixa de pessoal, 2012–2022. | IBGE/CEMPRE | Estrutura de mercado, concentração, economias de escala | Cap 11, 12, 15 |

### Bloco III — Mercados e Concorrência (Capítulos 13–16)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D08 | **Decisões do CADE — fusões e condutas** — Painel de decisões de atos de concentração e processos administrativos, 2012–2024, com setor, tipo de decisão, restrições impostas e market share estimado. | CADE (Relatórios Anuais + SEI) | Poder de mercado, análise antitruste, HHI, mercado relevante | Cap 15, 16 |
| D09 | **Preços de medicamentos — CMED** — Preço máximo ao consumidor (PMC) e preço fábrica (PF) por princípio ativo, laboratório e apresentação. | CMED/ANVISA | Regulação de preços, discriminação de preços, markup | Cap 15, 16, 23 |
| D10 | **Leilões de energia elétrica** — Preços de venda de energia por fonte (eólica, solar, hidrelétrica, térmica) nos leilões regulados, 2005–2024. | ANEEL / CCEE | Leilões, eficiência alocativa, poder de mercado | Cap 16, 24 |

### Bloco IV — Mercado de Trabalho (Capítulo 17)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D11 | **PNAD Contínua — extrato trimestral** — Taxa de desocupação, rendimento médio, horas trabalhadas, informalidade, por UF, sexo e faixa etária, 2012–2024. | PNAD Contínua / IBGE | Oferta de trabalho, salário de equilíbrio, diferenciais salariais | Cap 17 |
| D12 | **Salário mínimo real e emprego formal** — Série histórica do salário mínimo (nominal e real), estoque de emprego formal (CAGED/Novo CAGED) e taxa de informalidade, mensal, 2004–2024. | DIEESE + CAGED/MTE | Salário mínimo, monopsônio, elasticidade da demanda por trabalho | Cap 17 |
| D13 | **Retornos à educação** — Rendimento médio por nível de instrução (fundamental, médio, superior, pós-graduação), por UF e sexo. | PNAD Contínua / IBGE | Capital humano, sinalização, diferenciais compensatórios | Cap 17 |

### Bloco V — Capital, Juros e Investimento (Capítulo 18)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D14 | **Taxa Selic e IPCA** — Série diária/mensal da taxa Selic (meta e efetiva) e IPCA mensal, 1999–2024. | BCB/SGS (séries 432 e 433) | Juro nominal vs. real, efeito Fisher, valor presente | Cap 18 |
| D15 | **Tesouro Direto — taxas e preços** — Taxas de compra e venda dos títulos públicos (LTN, NTN-B, NTN-F) por vencimento, série histórica. | Tesouro Nacional | Precificação de ativos, curva de juros, duration | Cap 18 |

### Bloco VI — Informação, Externalidades e Bens Públicos (Capítulos 19–21)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D16 | **Sinistralidade de planos de saúde** — Despesas assistenciais, receita de contraprestações e sinistralidade por operadora e porte, 2010–2024. | ANS (Caderno de Informações) | Seleção adversa, risco moral, regulação de seguros | Cap 19, 23 |
| D17 | **Cobertura vacinal por município** — Percentual de cobertura das vacinas do PNI (BCG, tríplice viral, COVID-19), por município e ano, 2010–2024. | DataSUS / SI-PNI | Externalidades, bens públicos, free-riding | Cap 20, 23 |
| D18 | **Emissões de GEE por setor** — Emissões de CO₂ equivalente por setor (energia, agropecuária, mudança de uso da terra, indústria), 1990–2022. | SEEG / Observatório do Clima | Externalidades, Pigou, mercado de carbono | Cap 20, 24 |

### Bloco VII — Economia Experimental e Causal Inference (Capítulo 22)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D19 | **Mais Médicos — painel municipal** — Indicadores de saúde (internações ICSAP, mortalidade infantil, consultas de atenção primária) por município, antes e depois do PMM (2010–2018). | DataSUS/SIH + CNES | Diferenças-em-diferenças, experimento natural, tendências paralelas | Cap 22 |
| D20 | **Bolsa Família e frequência escolar** — Taxa de frequência escolar por município e faixa etária, comparando municípios com alta e baixa cobertura do BF, 2004–2012. | Censo Escolar/INEP + CadÚnico/MDS | RCT vs. quase-experimento, condicionalidades, efeito tratamento | Cap 22 |

### Bloco VIII — Saúde e Meio Ambiente (Capítulos 23–24)

| ID | Dataset | Fonte | Conceito | Capítulo |
|:---|:--------|:------|:---------|:---------|
| D21 | **Gastos em saúde per capita** — Gasto público e privado em saúde como % do PIB, por país, 2000–2022. | WHO Global Health Expenditure Database | Sistemas de saúde, falhas de mercado, comparação internacional | Cap 23 |
| D22 | **Desmatamento na Amazônia Legal** — Taxa anual de desmatamento (km²) por estado, 2004–2024, com indicadores de fiscalização (autos de infração, embargos). | PRODES/INPE + IBAMA | Tragédia dos comuns, regulação ambiental, enforcement | Cap 24 |
| D23 | **Preços de crédito de carbono** — Série de preços do EU ETS (European Union Emissions Trading System) e créditos voluntários, 2008–2024. | ICAP + Refinitiv | Coase, mercado de permissões, eficiência de mercados de carbono | Cap 24 |

---

## Exercícios Empíricos Sugeridos por Capítulo

Cada exercício abaixo usa um dos datasets acima e pode ser resolvido em um Mini-Lab WebR ou como tarefa de casa.

### Cap 4–5: Demanda e Elasticidades

!!! exercicio-resolvido "Exercício Empírico — Curva de Engel com dados da POF"

    **Dataset:** D01 (Cestas de consumo por faixa de renda)

    **Tarefa:** Usando os dados da POF 2017–2018, construa a curva de Engel para alimentos (participação no orçamento vs. renda per capita) e verifique se a Lei de Engel se aplica ao Brasil contemporâneo.

    1. Carregue o dataset e calcule a participação de alimentos no gasto total para cada decil de renda.
    2. Faça um gráfico de dispersão com renda per capita no eixo x e participação de alimentos no eixo y.
    3. A relação é decrescente? Qual a elasticidade-renda implícita da demanda por alimentos?
    4. Compare com a participação de transporte e lazer. Quais são bens de luxo (elasticidade-renda > 1)?
    5. **Reflexão:** A Lei de Engel, formulada em 1857, ainda descreve bem o padrão de consumo brasileiro em 2018?

### Cap 11: Custos

!!! exercicio-resolvido "Exercício Empírico — Curvas de custo com dados da Conab"

    **Dataset:** D06 (Custos de produção agrícola)

    **Tarefa:** Usando dados de custo de produção de soja por hectare da Conab, compare custos entre regiões e identifique economias de escala.

    1. Carregue os dados e separe custo fixo (depreciação, custo da terra) do custo variável (sementes, fertilizantes, defensivos, mão de obra).
    2. Calcule o custo total, custo médio e custo variável médio por hectare para cada região.
    3. As regiões com maior área plantada têm custo médio menor? Isso é evidência de economias de escala?
    4. **Reflexão:** O que explica as diferenças regionais de custo? Distância do porto, qualidade do solo, logística?

### Cap 15: Poder de Mercado

!!! exercicio-resolvido "Exercício Empírico — Concentração de mercado com dados do CADE"

    **Dataset:** D08 (Decisões do CADE)

    **Tarefa:** Analise o padrão de decisões do CADE em atos de concentração nos últimos 10 anos.

    1. Carregue o dataset e classifique as decisões por setor (alimentos, telecomunicações, saúde, financeiro, varejo).
    2. Calcule a proporção de decisões com restrições (remédios) por setor. Quais setores enfrentam maior escrutínio?
    3. Nos casos com dados de market share, calcule o HHI antes e depois da fusão. As fusões aprovadas com restrições tinham HHI mais alto?
    4. **Reflexão:** O CADE é mais leniente ou mais rigoroso que autoridades antitruste internacionais (FTC, Comissão Europeia)?

### Cap 17: Mercado de Trabalho

!!! exercicio-resolvido "Exercício Empírico — Curva backward-bending com dados da PNAD"

    **Dataset:** D11 (PNAD Contínua — extrato trimestral)

    **Tarefa:** Investigue se a curva backward-bending se manifesta nos dados brasileiros.

    1. Carregue os dados e construa um gráfico de dispersão: horas semanais trabalhadas (eixo x) vs. rendimento médio por hora (eixo y), por faixa de renda.
    2. Para as faixas de renda mais alta, as horas trabalhadas são menores? Isso é consistente com a backward-bending?
    3. Separe por sexo. O padrão difere entre homens e mulheres? Por quê?
    4. **Desafio:** Controle por nível de escolaridade. A backward-bending é mais pronunciada para trabalhadores com ensino superior?

### Cap 20: Externalidades

!!! exercicio-resolvido "Exercício Empírico — Desmatamento e fiscalização na Amazônia"

    **Dataset:** D22 (Desmatamento na Amazônia Legal)

    **Tarefa:** Investigue a relação entre fiscalização ambiental e desmatamento.

    1. Carregue os dados e construa séries temporais de desmatamento e autos de infração do IBAMA para 3 estados (PA, MT, RO).
    2. Há correlação negativa entre fiscalização e desmatamento? Calcule a correlação.
    3. O período 2004–2012 (PPCDAm) mostrou queda acentuada no desmatamento. A fiscalização aumentou no mesmo período?
    4. **Cuidado causal:** Correlação ≠ causalidade. Que fatores confundidores podem estar atuando? (Preço da soja, crédito rural, mudanças na legislação.)
    5. **Reflexão:** Compare a eficácia da regulação command-and-control (multas, embargos) com instrumentos de mercado (pagamento por serviços ambientais). Qual mecanismo se aproxima mais do ótimo pigouviano?

### Cap 22: Economia Experimental

!!! exercicio-resolvido "Exercício Empírico — DiD com o Programa Mais Médicos"

    **Dataset:** D19 (Mais Médicos — painel municipal)

    **Tarefa:** Estime o efeito causal do Programa Mais Médicos sobre internações por condições sensíveis à atenção primária (ICSAP).

    1. Defina grupo tratado (municípios que receberam médicos do PMM) e controle (municípios comparáveis que não receberam).
    2. Construa o gráfico clássico de tendências paralelas para os períodos pré-tratamento (2010–2012).
    3. Estime a regressão DiD: $Y_{it} = \alpha + \beta \cdot \text{PMM}_i + \gamma \cdot \text{Pos2013}_t + \delta \cdot (\text{PMM}_i \times \text{Pos2013}_t) + \varepsilon_{it}$
    4. Interprete $\hat{\delta}$: qual foi o efeito do PMM sobre internações ICSAP?
    5. **Teste de robustez:** A saída dos médicos cubanos em 2018 permite um "DiD reverso". As ICSAP aumentaram após 2018 nos municípios que perderam médicos?

---

## Fontes e Acesso

| Sigla | Instituição | URL de acesso | Formato |
|:------|:-----------|:--------------|:--------|
| IBGE/SIDRA | Instituto Brasileiro de Geografia e Estatística | [sidra.ibge.gov.br](https://sidra.ibge.gov.br) | CSV, XLSX, JSON |
| POF | Pesquisa de Orçamentos Familiares | [ibge.gov.br/estatisticas/sociais/saude/24786-pesquisa-de-orcamentos-familiares-2.html](https://www.ibge.gov.br/estatisticas/sociais/saude/24786-pesquisa-de-orcamentos-familiares-2.html) | Microdados (SAS, CSV) |
| PNAD Contínua | Pesquisa Nacional por Amostra de Domicílios | [ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua.html](https://www.ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua.html) | Microdados, tabelas SIDRA |
| ANP | Agência Nacional do Petróleo | [gov.br/anp/pt-br/assuntos/precos-e-defesa-da-concorrencia](https://www.gov.br/anp/pt-br/assuntos/precos-e-defesa-da-concorrencia) | CSV, XLSX |
| ANEEL | Agência Nacional de Energia Elétrica | [aneel.gov.br](https://www.aneel.gov.br) | CSV |
| BCB/SGS | Banco Central do Brasil | [bcb.gov.br/estatisticas](https://www.bcb.gov.br/estatisticas) | CSV, JSON (API) |
| CADE | Conselho Administrativo de Defesa Econômica | [gov.br/cade](https://www.gov.br/cade/) | PDF (relatórios), planilhas |
| Conab | Companhia Nacional de Abastecimento | [conab.gov.br](https://www.conab.gov.br/info-agro/custos-de-producao) | PDF, XLSX |
| ANS | Agência Nacional de Saúde Suplementar | [ans.gov.br](https://www.ans.gov.br/perfil-do-setor/dados-e-indicadores-do-setor) | CSV, XLSX |
| DataSUS | Departamento de Informática do SUS | [datasus.saude.gov.br](https://datasus.saude.gov.br) | DBC, CSV |
| INPE/PRODES | Instituto Nacional de Pesquisas Espaciais | [terrabrasilis.dpi.inpe.br](http://terrabrasilis.dpi.inpe.br) | CSV, SHP |
| SEEG | Sistema de Estimativas de Emissões de GEE | [seeg.eco.br](https://seeg.eco.br) | CSV, XLSX |
| DIEESE | Departamento Intersindical de Estatística | [dieese.org.br](https://www.dieese.org.br) | PDF, XLSX |
| CMED/ANVISA | Câmara de Regulação do Mercado de Medicamentos | [gov.br/anvisa](https://www.gov.br/anvisa/) | XLSX |
| INEP | Instituto Nacional de Estudos e Pesquisas Educacionais | [gov.br/inep](https://www.gov.br/inep/) | CSV, microdados |

---

## Dicas para trabalhar com dados brasileiros

!!! tip "Encoding e formatação"
    Dados brasileiros frequentemente usam:

    - **Encoding:** ISO-8859-1 (Latin-1) em vez de UTF-8. No R: `read.csv("arquivo.csv", fileEncoding = "latin1")`.
    - **Separador decimal:** vírgula (`,`). No R: `read.csv2()` em vez de `read.csv()`.
    - **Separador de campo:** ponto-e-vírgula (`;`).
    - **Datas:** formato dd/mm/aaaa. No R: `as.Date("31/12/2024", format = "%d/%m/%Y")`.

!!! tip "Pacotes R úteis para dados brasileiros"
    ```r
    # SIDRA/IBGE — acesso direto via API
    install.packages("sidrar")
    library(sidrar)
    dados <- get_sidra(6381, period = "202001-202412")  # PNAD Contínua

    # Banco Central — séries temporais
    install.packages("rbcb")
    library(rbcb)
    selic <- get_series(432, start_date = "2020-01-01")  # Taxa Selic

    # DataSUS — dados de saúde
    install.packages("microdatasus")
    library(microdatasus)

    # Dados geográficos
    install.packages("geobr")
    library(geobr)
    mapa <- read_municipality(year = 2020)
    ```

---

*Última atualização: março/2026. Datasets são verificados semestralmente conforme o [Protocolo de Atualização](protocolo-atualizacao.md).*
