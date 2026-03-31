---
title: "Protocolo de Atualização Periódica"
---

# Protocolo de Atualização Periódica do Livro

Este documento estabelece o sistema de revisão e atualização contínua do livro, garantindo que o material permaneça na fronteira da pesquisa e relevante para os alunos.

---

## 1. Ciclo de Revisão

| Frequência | O que revisar | Responsável |
|:-----------|:-------------|:------------|
| **Semestral** (jan/jul) | Dados empíricos: PNAD, IBGE, CAGED, IPEA, OECD, World Bank | Autor |
| **Semestral** (jan/jul) | Links externos: verificar se URLs funcionam, se bases de dados mudaram | Autor / assistente |
| **Anual** (janeiro) | Seções de pesquisa (`pesquisa.md`): incorporar papers dos últimos 12 meses publicados em top-5 journals (AER, QJE, JPE, Econometrica, REStud) + top fields (JHR, RAND, JFE, JDE) | Autor |
| **Anual** (janeiro) | Boxes "Box Brasil" e "Box Mundo": atualizar dados, leis, decisões judiciais | Autor |
| **Anual** (janeiro) | Nobel de Economia: se relevante para algum capítulo, adicionar box ou atualizar referência | Autor |
| **Bianual** (anos pares) | Revisão estrutural: reorganizar capítulos se necessário, avaliar cobertura de tópicos emergentes | Autor + parecerista externo |

---

## 2. Checklist por Capítulo (revisão semestral)

Para cada capítulo, verificar:

- [ ] **Dados empíricos** ainda estão atuais? (Ex: "taxa de desemprego de X% em 2024" → atualizar para o dado mais recente)
- [ ] **Referências bibliográficas** com links: URLs ainda funcionam?
- [ ] **Gráficos interativos** (JSXGraph/iframe): carregam corretamente?
- [ ] **WebR labs**: executam sem erros? Pacotes R atualizados?
- [ ] **Boxes de política pública**: alguma lei mudou? (Ex: reforma tributária, regulação de plataformas, decisões do CADE/STF)
- [ ] **Exercícios com dados reais**: as fontes de dados ainda existem e estão acessíveis?

---

## 3. Protocolo de Alerta de Desatualização

Quando um dado, lei ou referência estiver potencialmente desatualizado, inserir um admonition de alerta no texto:

```markdown
!!! warning "Atualização necessária (verificar em [MÊS/ANO])"
    Este dado/lei/referência foi verificado pela última vez em [DATA].
    Verificar [FONTE] para dados mais recentes.
```

Exemplo real (já implementado em Cap 21):

```markdown
!!! warning "Atualização 2025"
    O ecossistema de plataformas digitais muda rapidamente.
    Verifique dados atualizados em [fonte].
```

---

## 4. Tópicos Emergentes a Monitorar

Lista de tópicos na fronteira da microeconomia que podem justificar novas seções ou boxes:

| Tópico | Capítulos afetados | Status | Última verificação |
|:-------|:-------------------|:-------|:-------------------|
| IA generativa e mercado de trabalho | Cap 17, Cap 21 | Monitorar | Mar/2026 |
| Regulação de plataformas digitais (DMA/DSA na UE, PL no Brasil) | Cap 15, Cap 21 | Monitorar | Mar/2026 |
| Tokenização e mercados descentralizados (DeFi) | Cap 21, Cap 18 | Monitorar | Mar/2026 |
| Economia da atenção e design aditivo | Cap 12, Cap 21 | Monitorar | Mar/2026 |
| Carbon pricing e mercados de carbono | Cap 20 | Monitorar | Mar/2026 |
| Bunching estimators (Cengiz et al., 2019; Kleven, 2016) | Cap 17 | Monitorar | Mar/2026 |
| Machine learning para estimação de efeitos heterogêneos (Athey & Imbens) | Cap 22 | Monitorar | Mar/2026 |
| Discriminação algorítmica e fairness | Cap 17, Cap 12 | Monitorar | Mar/2026 |
| Saúde mental e economia comportamental | Cap 12, Cap 23 | Monitorar | Mar/2026 |

---

## 5. Fontes de Dados para Atualização Regular

### Brasil
| Fonte | URL | Dados relevantes | Capítulos |
|:------|:----|:----------------|:----------|
| PNAD Contínua/IBGE | [ibge.gov.br](https://www.ibge.gov.br/estatisticas/sociais/trabalho.html) | Emprego, renda, informalidade, gig economy | Cap 17 |
| SIDRA/IBGE | [sidra.ibge.gov.br](https://sidra.ibge.gov.br) | Produção, preços, censos | Cap 6–8, 14–16 |
| CAGED/MTE | [gov.br/trabalho](https://www.gov.br/trabalho-e-emprego/) | Emprego formal, salários | Cap 17 |
| IPEA Data | [ipeadata.gov.br](https://www.ipeadata.gov.br) | Séries sociais e econômicas | Todos |
| BCB/SGS | [bcb.gov.br](https://www.bcb.gov.br/estatisticas) | Juros, câmbio, crédito | Cap 18 |
| CADE | [gov.br/cade](https://www.gov.br/cade/) | Decisões antitruste | Cap 15, 16 |
| ANS | [ans.gov.br](https://www.ans.gov.br) | Saúde suplementar | Cap 23 |
| DataSUS/SIH | [datasus.saude.gov.br](https://datasus.saude.gov.br) | Internações, custos | Cap 23 |

### Internacional
| Fonte | URL | Dados relevantes | Capítulos |
|:------|:----|:----------------|:----------|
| OECD Statistics | [stats.oecd.org](https://stats.oecd.org) | Comparações internacionais | Todos |
| World Bank WDI | [data.worldbank.org](https://data.worldbank.org) | Desenvolvimento | Cap 22 |
| FRED (St. Louis Fed) | [fred.stlouisfed.org](https://fred.stlouisfed.org) | Séries EUA | Cap 17, 18 |
| ILO ILOSTAT | [ilostat.ilo.org](https://ilostat.ilo.org) | Trabalho global | Cap 17 |
| WHO GHO | [who.int/data](https://www.who.int/data) | Saúde global | Cap 23 |

---

## 5b. Protocolo de Auditoria de Referências Bibliográficas

Cada referência citada no livro deve passar por 4 checagens:

### Checagem por capítulo (revisão anual)

Para CADA referência citada no texto:

| Passo | O que verificar | Como verificar | Flag se falhar |
|:------|:---------------|:---------------|:---------------|
| **1. Existência** | A referência existe? Autor(es), título, ano, periódico/editora corretos? | Google Scholar, CrossRef, DOI.org | ❌ REFERÊNCIA NÃO ENCONTRADA |
| **2. Detalhes** | Volume, número, páginas, DOI estão corretos? | CrossRef API, site do periódico | ⚠️ DETALHES IMPRECISOS |
| **3. Fidelidade** | O texto atribui corretamente o conteúdo da referência? O paper diz o que dizemos que diz? | Ler abstract + seção relevante do paper | ⚠️ ATRIBUIÇÃO QUESTIONÁVEL |
| **4. Consistência** | A citação no corpo do texto corresponde à entrada na lista de referências? | Busca cruzada texto ↔ referências | ⚠️ INCONSISTÊNCIA |

### Prioridades de auditoria

1. **Alta prioridade:** Referências em Boxes Brasil e Boxes Mundo (dados quantitativos citados)
2. **Alta prioridade:** Referências em seções "Pesquisa em Ação" (são o cartão de visita acadêmico do livro)
3. **Média prioridade:** Referências de teoremas e resultados formais
4. **Baixa prioridade:** Referências gerais/contextuais em notas de rodapé

### Tracking de auditoria

| Capítulo | Total de referências | Auditadas | Confirmadas ✅ | Pendentes ⚠️ | Erros ❌ | Última auditoria |
|:---------|:------------------:|:---------:|:--------------:|:------------:|:-------:|:----------------:|
| Cap 1 | — | — | — | — | — | Pendente |
| Cap 2 | — | — | — | — | — | Pendente |
| Cap 3 | — | — | — | — | — | Pendente |
| Cap 4 | — | — | — | — | — | Pendente |
| Cap 5 | ~12 | 5 | 5 | 0 | 0 | Mar/2026 |
| Cap 6 | — | — | — | — | — | Pendente |
| Cap 7 | — | — | — | — | — | Pendente |
| Cap 8 | — | — | — | — | — | Pendente |
| Cap 9a–9d | — | — | — | — | — | Pendente |
| Cap 10 | — | — | — | — | — | Pendente |
| Cap 11 | — | — | — | — | — | Pendente |
| Cap 12 | — | — | — | — | — | Pendente |
| Cap 13 | — | — | — | — | — | Pendente |
| Cap 14 | — | — | — | — | — | Pendente |
| Cap 15 | — | — | — | — | — | Pendente |
| Cap 16a–16b | — | — | — | — | — | Pendente |
| Cap 17 | — | — | — | — | — | Pendente |
| Cap 18 | — | — | — | — | — | Pendente |
| Cap 19 | — | — | — | — | — | Pendente |
| Cap 20 | — | — | — | — | — | Pendente |
| Cap 21 | ~15 | 8 | 7 | 0 | 1 | Mar/2026 |
| Cap 22 | — | — | — | — | — | Pendente |
| Cap 23 | ~18 | 2 | 2 | 0 | 0 | Mar/2026 |
| Cap 24 | ~15 | 4 | 4 | 0 | 0 | Mar/2026 |

---

## 6. Registro de Atualizações (Changelog)

Cada atualização significativa deve ser registrada aqui:

| Data | Capítulo | Descrição | Versão |
|:-----|:---------|:----------|:-------|
| Mar/2026 | Cap 17 | Adicionada seção 17.9 (Modelos de busca DMP) e seção 17.10 (Gig economy) | 1.4 |
| Mar/2026 | Cap 22 | Adicionado exercício 22.10 (DiD com dados do Mais Médicos) | 1.4 |
| Mar/2026 | Cap 23 | Adicionado modelo SIR formal para externalidades de vacinação | 1.4 |
| Mar/2026 | Recursos | Criado protocolo de atualização periódica | 1.4 |
| Mar/2026 | Recursos | Criados 6 datasets CSV + dicionário para exercícios computacionais | 1.5 |
| Mar/2026 | Recursos | Criados 24 roteiros de vídeo (Reels/TikTok, 60–90s por capítulo) | 1.5 |
| Mar/2026 | Cap 21 | Corrigido erro: Allcott et al. (2020) — co-autora "Eichmeyer", não "Enikopolov" | 1.5 |
| Mar/2026 | Cap 21 | Adicionado Box Brasil 21.4 — CADE e antitruste digital (Google, iFood, ML) | 1.5 |
| Mar/2026 | Cap 23 | Adicionado Box Brasil 23.5 — CONITEC e avaliação de tecnologias em saúde | 1.5 |
| Mar/2026 | Cap 24 | Adicionados Box Brasil 24.0 (ICMS Ecológico) e 24.0b (PSA na Mata Atlântica) | 1.5 |
| Mar/2026 | Cap 05 | Corrigido link JSTOR inconsistente de Hausman (1981): 1805921 → 1806997 | 1.5 |
| Mar/2026 | Recursos | Primeira auditoria formal de referências (Caps 5, 21, 23, 24 — parcial) | 1.5 |

---

## 6b. Resultados da Primeira Auditoria de Referências (Mar/2026)

### Referências verificadas via WebSearch

| # | Referência | Cap | Status | Observação |
|:--|:-----------|:----|:------:|:-----------|
| 1 | Jensen, R.T.; Miller, N.H. (2008). Giffen Behavior and Subsistence Consumption. *AER*, 98(4), 1553–1577. | 5 | ✅ | Autores, título, periódico, volume, páginas, DOI — tudo correto. |
| 2 | Hausman, J.A. (1981). Exact Consumer's Surplus and Deadweight Loss. *AER*, 71(4), 662–676. | 5 | ⚠️→✅ | Dados bibliográficos corretos. **Corrigido:** link JSTOR inconsistente entre pesquisa.md (1805921) e referências (1806997) — padronizado para 1806997. |
| 3 | Deaton, A. (1988). Quality, Quantity, and Spatial Variation of Price. *AER*, 78(3), 418–430. | 5 | ✅ | Confirmado via Princeton e JSTOR. |
| 4 | Attanasio, O.; Pistaferri, L. (2016). Consumption Inequality. *JEP*, 30(2), 3–28. | 5 | ✅ | Confirmado via AEA/DOI. |
| 5 | Hoderlein, S.; Stoye, J. (2014). Revealed Preferences in a Heterogeneous Population. *REStat*, 96(2), 197–213. | 5 | ✅ | Confirmado via DOI. |
| 6 | Rochet, J.-C.; Tirole, J. (2003). Platform Competition in Two-Sided Markets. *JEEA*, 1(4), 990–1029. | 21 | ✅ | Confirmado via Oxford Academic e DOI. |
| 7 | Armstrong, M. (2006). Competition in Two-Sided Markets. *RAND J. Econ.*, 37(3), 668–691. | 21 | ✅ | Confirmado via Wiley. |
| 8 | Eisenmann, T.; Parker, G.; Van Alstyne, M. (2011). Platform Envelopment. *SMJ*, 32(12), 1270–1285. | 21 | ✅ | Confirmado via Wiley/SSRN. |
| 9 | Parker, G.; Van Alstyne, M. (2005). Two-Sided Network Effects. *Management Science*, 51(10), 1494–1504. | 21 | ✅ | Confirmado via DOI. |
| 10 | Acquisti, A.; Taylor, C.; Wagman, L. (2016). The Economics of Privacy. *JEL*, 54(2), 442–492. | 21 | ✅ | Confirmado via DOI. |
| 11 | Allcott, H.; Braghieri, L.; Eichmeyer, S.; Gentzkow, M. (2020). The Welfare Effects of Social Media. *AER*, 110(3), 629–676. | 21 | ❌→✅ | **Corrigido:** co-autora era "Eichmeyer, S.", não "Enikopolov, R." como originalmente escrito. Após correção, confirmado. |
| 12 | Anderson, S.P.; Coate, S. (2005). Market Provision of Broadcasting. *RES*, 72(4), 947–972. | 21 | ✅ | Confirmado via Oxford Academic. |
| 13 | Dubé, J.-P.; Misra, S. (2023). Personalized Pricing and Consumer Welfare. *JPE*, 131(1), 131–189. | 21 | ✅ | Confirmado via Chicago Journals/DOI. |
| 14 | Ring, I. (2008). Integrating local ecological services into intergovernmental fiscal transfers: the case of the ecological ICMS in Brazil. *Land Use Policy*, 25(4), 485–497. | 24 | ✅ | Confirmado via ScienceDirect. |
| 15 | Costanza, R. et al. (2014). Changes in the global value of ecosystem services. *GEC*, 26, 152–158. | 24 | ✅ | Confirmado via ScienceDirect. |
| 16 | Weitzman, M. (1974). Prices vs. Quantities. *RES*, 41(4), 477–491. | 24 | ✅ | Confirmado via Oxford Academic. |
| 17 | Wang, D.W.L. et al. (2020). Health technology assessment and judicial deference. *SSM*, 265, 113401. | 23 | ✅ | Confirmado via ScienceDirect/PubMed. Título completo inclui "...priority-setting decisions in healthcare: Quasi-experimental analysis of right-to-health litigation in Brazil." |
| 18 | Katz, M.; Shapiro, C. (1985). Network Externalities, Competition, and Compatibility. *AER*, 75(3), 424–440. | 21 | ✅ | Confirmado via AEA. |

### Erros encontrados e corrigidos

1. **❌ Allcott et al. (2020) — nome de co-autora errado** (Cap 21, `competicao-atencao.md`, transversal box). "Enikopolov, R." foi corrigido para "Eichmeyer, S." — Ruben Enikopolov é co-autor de outros papers sobre mídia/informação, mas NÃO deste paper específico.
2. **⚠️ Hausman (1981) — link JSTOR inconsistente** (Cap 5, `pesquisa.md`). Dois IDs JSTOR diferentes para o mesmo paper (1805921 no texto da pesquisa, 1806997 na lista de referências). Padronizado para 1806997.

### Próximos passos

- Auditar referências dos Capítulos 1–4, 6–20, 22 (estimativa: ~150 referências restantes).
- Priorizar seções "Pesquisa em Ação" e "Box Brasil/Mundo" nos capítulos restantes.
- Verificar DOIs faltantes e adicionar links quando disponíveis.

---

## 7. Processo de Revisão por Pares

Para garantir qualidade, cada atualização significativa (nova seção, novo modelo formal, novos dados) deve passar por:

1. **Auto-revisão**: o autor verifica consistência notacional, correção matemática, referências.
2. **Revisão editorial (Ed Micro)**: verificação de tom, pedagogia, oportunidades de boxes/gráficos, auditoria de referências.
3. **Revisão técnica**: para conteúdo novo, solicitar revisão de especialista na subárea (e.g., economista do trabalho para Cap 17, health economist para Cap 23).
4. **Teste com alunos**: incorporar novo material em uma turma piloto antes de publicar definitivamente.
