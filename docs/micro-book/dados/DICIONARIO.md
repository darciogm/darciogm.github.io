# Dicionario de Variaveis dos Datasets

## D01 — Cestas de consumo (POF 2017-2018)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| decil_renda | Decil de renda familiar per capita (1=mais pobre, 10=mais rico) | 1-10 |
| renda_per_capita_mensal_BRL | Renda familiar per capita media do decil | R$/mes |
| pct_alimentacao | Participacao de alimentacao no gasto total | % |
| pct_habitacao | Participacao de habitacao no gasto total | % |
| pct_transporte | Participacao de transporte no gasto total | % |
| pct_saude | Participacao de saude no gasto total | % |
| pct_educacao | Participacao de educacao no gasto total | % |
| pct_vestuario | Participacao de vestuario no gasto total | % |
| pct_lazer | Participacao de recreacao e cultura no gasto total | % |
| pct_outros | Participacao de demais despesas no gasto total | % |
| n_familias | Numero de familias na amostra expandida (aprox.) | familias |

Fonte: IBGE, Pesquisa de Orcamentos Familiares 2017-2018. Valores derivados das tabelas publicadas.

## D02 — Combustiveis (ANP)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| ano | Ano de referencia | AAAA |
| mes | Mes de referencia | 1-12 |
| uf | Unidade da Federacao | sigla |
| preco_gasolina_BRL_litro | Preco medio ao consumidor, gasolina comum | R$/litro |
| preco_etanol_BRL_litro | Preco medio ao consumidor, etanol hidratado | R$/litro |
| preco_diesel_BRL_litro | Preco medio ao consumidor, diesel S10 | R$/litro |
| volume_gasolina_mil_m3 | Volume vendido de gasolina | mil m3/mes |
| volume_etanol_mil_m3 | Volume vendido de etanol hidratado | mil m3/mes |
| volume_diesel_mil_m3 | Volume vendido de diesel | mil m3/mes |
| razao_etanol_gasolina | Razao preco etanol/gasolina (< 0.7 = etanol compensa) | adimensional |

Fonte: ANP, Levantamento de Precos e Vendas de Combustiveis. Valores medios mensais.

## D11 — Mercado de trabalho (PNAD Continua)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| ano | Ano de referencia | AAAA |
| trimestre | Trimestre de referencia | 1-4 |
| uf | Unidade da Federacao | sigla |
| sexo | Sexo | Homem/Mulher |
| faixa_etaria | Faixa etaria | texto |
| taxa_desocupacao_pct | Taxa de desocupacao | % |
| rendimento_medio_habitual_BRL | Rendimento medio habitual do trabalho principal | R$/mes |
| horas_semanais_media | Media de horas trabalhadas por semana | horas |
| taxa_informalidade_pct | Taxa de informalidade (sem carteira + conta propria sem CNPJ) | % |
| populacao_ocupada_mil | Populacao ocupada | milhares |

Fonte: IBGE, PNAD Continua trimestral. Dados derivados das tabelas SIDRA.

## D13 — Retornos a educacao (PNAD Continua 2023)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| ano | Ano de referencia | AAAA |
| uf | Unidade da Federacao | sigla |
| sexo | Sexo | Homem/Mulher |
| nivel_instrucao | Nivel de instrucao | texto |
| rendimento_medio_habitual_BRL | Rendimento medio habitual do trabalho principal | R$/mes |
| horas_semanais_media | Media de horas trabalhadas por semana | horas |
| rendimento_por_hora_BRL | Rendimento medio por hora trabalhada | R$/hora |
| populacao_ocupada_mil | Populacao ocupada | milhares |

Fonte: IBGE, PNAD Continua 2023. Tabulacao por nivel de instrucao.

## D14 — Selic e IPCA (BCB/IBGE)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| ano | Ano | AAAA |
| mes | Mes | 1-12 |
| selic_meta_pct_aa | Taxa Selic meta definida pelo Copom | % a.a. |
| selic_efetiva_pct_aa | Taxa Selic efetiva (over) | % a.a. |
| ipca_mensal_pct | Variacao mensal do IPCA | % |
| ipca_acum12m_pct | IPCA acumulado em 12 meses | % |
| juro_real_ex_post_pct_aa | Juro real ex-post = (1+Selic)/(1+IPCA12m) - 1 | % a.a. |

Fonte: BCB/SGS series 432 (Selic meta), 433 (Selic efetiva), 433 (IPCA mensal). IBGE para IPCA acumulado.

## D22 — Desmatamento na Amazonia Legal (PRODES/IBAMA)
| Variavel | Descricao | Unidade |
|:---------|:----------|:--------|
| ano | Ano de referencia (ago a jul do ano seguinte) | AAAA |
| uf | Unidade da Federacao | sigla |
| desmatamento_km2 | Incremento anual de desmatamento | km2 |
| autos_infracao_ibama | Autos de infracao lavrados pelo IBAMA | unidades |
| embargos_ibama | Areas embargadas pelo IBAMA | unidades |
| area_floresta_remanescente_km2 | Area de floresta remanescente estimada | km2 |
| preco_soja_USD_ton | Preco internacional da soja (CBOT, media anual) | USD/ton |
| credito_rural_milhoes_BRL | Credito rural concedido no estado | R$ milhoes |

Fonte: INPE/PRODES para desmatamento; IBAMA para fiscalizacao; CBOT para preco da soja; BCB/Sicor para credito rural.
