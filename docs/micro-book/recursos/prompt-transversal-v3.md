# PROMPT PARA CLAUDE CODE — Correções Transversais, Tom e Voz, e Elevação Final para 9,8+

> **Contexto:** Livro de Microeconomia intermediária/avançada em português, MkDocs Material em `docs/micro-book/`. Usa admonitions (`!!! definition`, `!!! idea "Intuição Econômica"`, `!!! example`, `!!! brasil`, `!!! danger`), gráficos JSXGraph, apps WebR. Código R em boxes retráteis `??? r-interactive "R Interativo"`. Tom irreverente-mas-rigoroso com referências a Monty Python. 28 módulos (caps 1–8, 9a–9d, 10–24).

> **Objetivo:** Aplicar correções transversais finais, calibrar tom/voz, e garantir nota 9,8+ em TODAS as dimensões. Trabalhar com grande detalhe e cuidado.

> **Nota atual:** 9,1/10 global. Meta: 9,8+.

---

## BLOCO 1 — CORREÇÃO OBRIGATÓRIA: Ministry of Silly Walks no Cap 10

### Diagnóstico:
A referência ao Ministry of Silly Walks sobreviveu à calibração do Bloco 8 (prompt anterior). Está em `cap10/index.md`, linhas 3 e 5:

**Linha 3 (texto principal):**
```
...parabéns — você já intuiu a lei mais testada da microeconomia.[^silly-walks-prod] Até agora...
```

**Linha 5 (nota de rodapé):**
```
[^silly-walks-prod]: Os devotos de Monty Python reconhecerão aqui a lógica do *Ministry of Silly Walks*: o ministério emprega cada vez mais burocratas para desenvolver caminhadas absurdas, mas o produto marginal de cada burocrata adicional é claramente decrescente. O décimo funcionário provavelmente está apenas replicando o andar do terceiro com variação mínima. John Cleese, como Ministro, é o único insumo genuinamente produtivo — o resto é rendimento marginal decrescente em ação.
```

### Ação:
Substituir por uma analogia orgânica que preserve o humor sem recorrer a Monty Python. Cap 10 foi selecionado como um dos capítulos "secos" (humor via dados surpreendentes e confissões editoriais, sem Python).

**Sugestão de substituição:**

Linha 3 — trocar a referência de rodapé:
```
...parabéns — você já intuiu a lei mais testada da microeconomia.[^padaria-marginal] Até agora...
```

Linha 5 — nova nota de rodapé:
```
[^padaria-marginal]: Pense numa cozinha com um único forno. O primeiro padeiro produz 80 pães/hora. O segundo, dividindo o forno, adiciona 60. O terceiro, esbarrando nos outros dois e esperando o forno liberar, adiciona 30. O quarto fica basicamente olhando a massa crescer. Isso é rendimento marginal decrescente — e você vai encontrá-lo em toda firma, toda fábrica e toda startup que contratou "só mais um estagiário".
```

**Remover completamente** a nota `[^silly-walks-prod]`.

---

## BLOCO 2 — CORREÇÃO OBRIGATÓRIA: Padronizar emojis nos roadmaps

### Diagnóstico:
| Formato | Capítulos |
|---|---|
| **Texto** ("Exercícios", "Pesquisa") | Caps 1–8 |
| **Emojis** (🧪🧠🎯✏️🏆🔬) | Caps 9a–9d, 10–24 |

### Ação:
Padronizar TODOS para texto sem emojis. As linhas de exercícios e pesquisa nos roadmaps dos caps 9a–9d e 10–24 devem usar texto plano, igual aos caps 1–8.

Para cada `index.md` dos caps 9a, 9b, 9c, 9d, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24:

1. Abrir o arquivo
2. Localizar as linhas do roadmap que contêm emojis (🧪, 🧠, 🎯, ✏️, 🏆, 🔬)
3. Substituir por texto plano seguindo o padrão dos caps 1–8:
   - Onde aparece emoji + "Exercícios" ou variação → **"Exercícios"**
   - Onde aparece emoji + "Pesquisa" ou variação → **"Pesquisa"**
   - Manter o conteúdo descritivo das colunas intacto
4. Verificar que os links `[Exercícios](exercicios.md)` e `[Pesquisa](pesquisa.md)` estão preservados

### Exemplo de transformação:

**Antes (Cap 9a):**
```markdown
| 🎯✏️🏆 | Teste e aplique | Revisão, exercícios resolvidos, propostos e ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a fronteira diz? | Nash experimental, jogos evolutivos, laboratório | [Pesquisa](pesquisa.md) |
```

**Depois:**
```markdown
| **Exercícios** | Teste e aplique | Revisão, exercícios resolvidos, propostos e ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a fronteira diz? | Nash experimental, jogos evolutivos, laboratório | [Pesquisa](pesquisa.md) |
```

**ATENÇÃO:** Ler cada roadmap individualmente — os emojis podem estar em posições diferentes (na coluna Seção, no início da Pergunta-guia, etc.). Adaptar caso a caso.

---

## BLOCO 3 — RECOMENDAÇÃO FORTE: Cap 5 — Box Brasil com dados POF

### Diagnóstico:
Cap 5 JÁ TEM 4 boxes Brasil com dados POF (farinha de mandioca, bandeiras tarifárias, gasolina). A recomendação original já foi parcialmente atendida.

### Ação — complementar o que falta:
Adicionar 1 box Brasil em `cap05/elasticidades.md` com **tabela de elasticidades-preço** para categorias de alimentos brasileiros. Dados da POF 2017-2018:

```markdown
!!! brasil "Brasil na Prática — Elasticidades-preço de alimentos (POF 2017–2018)"
    A tabela abaixo sintetiza estimativas de elasticidade-preço da demanda para categorias selecionadas de alimentos, obtidas a partir dos microdados da POF 2017–2018 (IBGE) usando o método de Deaton (1988) para correção de qualidade.

    | Categoria | Elasticidade-preço | Classificação |
    |---|:---:|---|
    | Arroz | −0,45 | Inelástica |
    | Feijão | −0,52 | Inelástica |
    | Carne bovina (1ª) | −0,78 | Inelástica |
    | Carne bovina (2ª) | −1,05 | Elástica |
    | Frango | −0,62 | Inelástica |
    | Leite | −0,55 | Inelástica |
    | Frutas | −1,20 | Elástica |
    | Refrigerante | −1,35 | Elástica |

    **Leitura econômica:** Alimentos básicos (arroz, feijão) são inelásticos — famílias de baixa renda não podem reduzir muito o consumo quando o preço sobe. Carnes de segunda e refrigerantes são elásticos — há substitutos acessíveis. Essa heterogeneidade é exatamente o que a Equação de Slutsky prevê: bens com alta participação no orçamento e poucos substitutos terão efeito-renda dominante.

    **Fonte:** Estimativas baseadas em POF/IBGE 2017–2018. Valores aproximados para fins didáticos; estimativas precisas variam conforme especificação e região. Ver Almeida & Azzoni (2016) para metodologia detalhada.
```

**REGRA:** Verificar com `WebSearch` se Almeida & Azzoni (2016) é uma referência real sobre elasticidades de alimentos no Brasil com dados POF. Se não for, encontrar a referência correta e substituir. NÃO alucinar referências.

---

## BLOCO 4 — RECOMENDAÇÃO FORTE: Cap 9b — Expandir barganha aplicada

### Diagnóstico:
Cap 9b JÁ TEM exemplos aplicados fortes: Sindicato dos Metalúrgicos do ABC (Volkswagen, Mercedes-Benz, Toyota), acordo coletivo 2024, CADE/leniência no cartel de combustíveis. A recomendação original já foi parcialmente atendida.

### Ação — complementar:
Adicionar 1 box em `cap09b/barganha.md` sobre **acordos de leniência no CADE como destruição de cooperação**:

```markdown
!!! brasil "Brasil na Prática — Acordo de Leniência e o Fim do Cartel"
    O programa de leniência do CADE (Lei 12.529/2011) é uma aplicação direta da teoria de jogos repetidos à política antitruste. O mecanismo funciona assim: a primeira empresa do cartel que denunciar os parceiros recebe imunidade administrativa e redução de 1/3 a 2/3 da multa criminal. As demais pagam multas de até 20% do faturamento.

    **Modelagem:** O cartel é um equilíbrio cooperativo sustentado por punição (folk theorem). O programa de leniência altera os payoffs do jogo: o ganho de desviar (denunciar) passa a superar o ganho de cooperar (manter o cartel), especialmente quando há risco de que outro membro denuncie primeiro. O resultado é uma corrida para denunciar — exatamente o que o regulador deseja.

    **Caso emblemático:** O cartel de cimentos (2014) envolveu Votorantim, InterCement, Cimentos Nassau e outros. A Votorantim celebrou acordo de leniência e denunciou os demais. Multas totais: R$ 3,1 bilhões — a maior da história do CADE. O cartel operou por mais de 20 anos antes da denúncia.

    **Conexão teórica:** Compare com o Exercício 9b.9. A leniência funciona porque transforma um jogo repetido (onde cooperar = manter cartel é equilíbrio) em um jogo de rodada única (onde denunciar é estratégia dominante). É o dilema do prisioneiro aplicado à vida real.
```

**REGRA:** Verificar com `WebSearch` os dados do cartel de cimentos (ano, empresas, valor das multas). Se os valores estiverem incorretos, corrigir. NÃO alucinar dados.

---

## BLOCO 5 — RECOMENDAÇÃO FORTE: Cap 17 — Complementar capital humano

### Diagnóstico:
Cap 17 JÁ TEM:
- Equação de Mincer formalizada (Eq. 17.13) em `equilibrio-diferenciais.md`
- Box Brasil sobre prêmio salarial da educação com PNAD Contínua 2024
- Exercício resolvido 17.3 com estimativa Mincer para o Brasil (incluindo dummies de gênero e raça)

### Ação — o que ainda falta:
A RAIS não aparece. Adicionar 1 box em `cap17/equilibrio-diferenciais.md`:

```markdown
!!! brasil "Brasil na Prática — RAIS: O Raio-X do Mercado Formal"
    A Relação Anual de Informações Sociais (RAIS) é o maior painel empregador-empregado do Brasil — cobre virtualmente 100% dos vínculos formais (CLT + estatutários), com informações sobre salário, ocupação, escolaridade, idade, gênero, raça e município. É o equivalente brasileiro aos *matched employer-employee datasets* usados na literatura internacional (Abowd, Kramarz & Margolis, 1999).

    **Por que importa para o Cap 17:** A RAIS permite decompor a variação salarial em componentes de trabalhador (capital humano, habilidade) e de firma (produtividade, poder de mercado). Estudos com RAIS mostram que:

    - O prêmio salarial de um diploma universitário é ~100% no setor formal (vs. ~126% na PNAD, que inclui informais)
    - A dispersão salarial *entre* firmas explica ~50% da desigualdade total — firmas mais produtivas pagam mais *a todos* os trabalhadores
    - Diferenciais compensatórios (Seção 17.3) são identificáveis: trabalhadores em ocupações de risco recebem 8–15% a mais, controlando por educação e experiência

    **Fonte:** Gerard, Lagos & Severnini (2021) usam RAIS para estimar efeitos de salário mínimo no Brasil. Alvarez, Engbom, Moser & Sauré (2018) usam RAIS para decomposição firma-trabalhador.
```

**REGRA:** Verificar com `WebSearch` as referências Gerard, Lagos & Severnini (2021) e Alvarez, Engbom, Moser & Sauré (2018). Confirmar que usam RAIS. Se não, encontrar referências corretas.

---

## BLOCO 6 — RECOMENDAÇÃO FORTE: Cap 24 — RenovaBio/CBIOs e Amazônia

### Diagnóstico:
Cap 24 JÁ TEM:
- RenovaBio/CBIO no Exercício Resolvido 24.2 (`clima-carbono.md`): comparação EU ETS vs. CBIO
- Valoração contingente e custo de viagem em `valoracao-recursos.md`
- **Amazônia:** NÃO aparece em nenhum arquivo do cap24

### Ação:

**6a. Mover RenovaBio do exercício para o corpo do texto:**
Em `cap24/clima-carbono.md`, adicionar um box Brasil dedicado (o exercício resolvido continua existindo, mas o conceito merece exposição no texto):

```markdown
!!! brasil "Brasil na Prática — RenovaBio e o Mercado de CBIOs"
    O RenovaBio (Lei 13.576/2017) é o único mercado de carbono brasileiro plenamente operacional. Funciona como um sistema de créditos de descarbonização (CBIOs) emitidos por produtores de biocombustíveis e comprados por distribuidoras de combustíveis fósseis, que têm metas anuais de compra definidas pelo CNPE.

    **Mecanismo:** Cada CBIO equivale a 1 tCO₂e evitada pela substituição de fóssil por biocombustível. O preço é determinado em mercado (B3). Em 2023, o preço médio foi ~R$ 90/CBIO (~US$ 18/tCO₂e) — significativamente abaixo do EU ETS (€70/tCO₂e) e do que economistas estimam como custo social do carbono (US$ 50–190/tCO₂e).

    **Análise econômica:** O gap de preços revela duas coisas: (1) o RenovaBio cobre apenas biocombustíveis (~0,7 GtCO₂e/ano), não toda a economia; (2) as metas são modestas comparadas às europeias. A discussão sobre um mercado regulado de carbono amplo (PL 412/2022) poderia mudar esse cenário, mas enfrenta resistência de setores intensivos em emissões.

    **Conexão teórica:** Compare com a Seção 24.3 (instrumentos de política). O RenovaBio é um híbrido: tem metas quantitativas (como cap-and-trade) mas os créditos são baseados em produção de biocombustível, não em emissões diretas. É um "quase-cap-and-trade" — e suas limitações ilustram por que o design do mecanismo importa.
```

**6b. Adicionar Amazônia em `cap24/valoracao-recursos.md`:**

```markdown
!!! brasil "Brasil na Prática — Quanto Vale a Amazônia?"
    Quanto vale a Floresta Amazônica? A pergunta parece absurda, mas é exatamente o tipo de questão que a economia ambiental precisa responder para orientar política pública. Estimativas variam enormemente conforme o método:

    **Serviços ecossistêmicos (fluxo anual):**
    - Regulação climática (sequestro de carbono): US$ 1–5/ha/ano × 550 milhões de ha ≈ US$ 0,5–2,7 trilhões/ano
    - Regulação hídrica (rios voadores): sem estimativa consolidada, mas o agronegócio do Centro-Oeste depende diretamente da umidade amazônica
    - Biodiversidade (bioprospecção): US$ 0,3–3 bilhões/ano (estimativas de Costanza et al., 2014 atualizadas)

    **Valor do estoque (ativo):**
    - Carbono armazenado: ~150–200 GtC × US$ 50–190/tCO₂e ≈ US$ 27–139 trilhões (faixa enorme!)
    - Madeira comercial (extração sustentável): US$ 0,5–1 trilhão
    - Valor de opção (uso futuro desconhecido): imenso mas não-quantificável

    **O paradoxo:** O PIB do estado do Amazonas é ~R$ 120 bilhões/ano. A floresta em pé gera serviços ecossistêmicos ordens de magnitude maiores — mas esses serviços não têm preço de mercado. É o maior caso de externalidade positiva não-precificada do planeta.

    **Conexão teórica:** Este é o problema clássico do Cap 20 (bens públicos) combinado com o Cap 24 (valoração): a Amazônia é um bem público global com externalidades positivas que nenhum país individualmente tem incentivo para proteger na escala ótima. A solução passa por pagamentos internacionais por serviços ambientais — exatamente o mecanismo do Fundo Amazônia.

    **Fonte:** Costanza et al. (2014) "Changes in the global value of ecosystem services", *Global Environmental Change*. Nobre et al. (2016) "Land-use and climate change risks in the Amazon", *PNAS*.
```

**REGRA:** Verificar Costanza et al. (2014) e Nobre et al. (2016) com `WebSearch`. Confirmar título, journal, ano. Se incorretos, corrigir.

---

## BLOCO 7 — RECOMENDAÇÃO FORTE: Cap 24 — Expandir valoração ambiental brasileira

Em `cap24/valoracao-recursos.md`, adicionar:

```markdown
!!! brasil "Brasil na Prática — Valoração Contingente: Quanto Você Pagaria por Ar Limpo em São Paulo?"
    Estudos de valoração contingente (VC) no Brasil revelam disposição a pagar (DAP) significativa por melhorias ambientais:

    - **Qualidade do ar em São Paulo:** Estudos estimam DAP média de R$ 15–40/mês por família para redução de 30% na concentração de material particulado (PM₂.₅). Com ~4 milhões de domicílios na RMSP, isso implica um benefício agregado de R$ 720 milhões–1,9 bilhão/ano. (Seroa da Motta, 2006; Ortiz, Markandya & Hunt, 2009)

    - **Parque Nacional da Tijuca (RJ):** Valor recreativo estimado pelo método de custo de viagem: R$ 180–350/visita. Com ~3 milhões de visitantes/ano, o valor recreativo total é R$ 540 milhões–1 bilhão/ano — mais que o orçamento anual do ICMBio inteiro.

    - **Saneamento básico:** DAP para acesso a esgoto tratado em municípios nordestinos: R$ 25–60/mês por família. O valor é compatível com as tarifas praticadas por concessionárias, mas a cobertura é de apenas 28% no Nordeste.

    **Limitações da VC no Brasil:** viés hipotético (declarar é fácil, pagar é outra história), viés estratégico (super ou subdeclarar para influenciar política), e o "problema do embedding" (a DAP para "salvar a Amazônia" não é muito diferente da DAP para "salvar o Pantanal" — os respondentes não processam escala).

    **Conexão com a teoria:** Compare com a Seção 24.1 (falhas de mercado ambientais). A VC é uma tentativa de revelar preferências para bens sem mercado — exatamente o que o mecanismo de Vickrey-Clarke-Groves faz em teoria, mas com questionários em vez de leilões.
```

**REGRA:** Verificar Seroa da Motta (2006) e Ortiz, Markandya & Hunt (2009) com `WebSearch`. NÃO alucinar.

---

## BLOCO 8 — SUGESTÃO: Glossário com links cruzados

### Diagnóstico:
`glossario.md` existe (1.277 linhas), é bilíngue (PT + EN), mas NÃO tem links para os capítulos onde os termos são definidos. Usa texto "Cap. XX" sem hiperlinks.

### Ação:
Transformar todas as referências "Cap. XX" em links clicáveis. Para cada entrada do glossário:

**Antes:**
```markdown
**Ajuste de risco (risk adjustment)** — Cap. 23
```

**Depois:**
```markdown
**Ajuste de risco (risk adjustment)** — [Cap. 23](cap23/index.md)
```

**Regra de link:** Usar caminho relativo a partir da raiz do micro-book. Se o termo é definido numa subpágina específica (não no index.md), linkar para a subpágina:
```markdown
**Equilíbrio de Nash (Nash equilibrium)** — [Cap. 9a, Seção 9a.2](cap09a/nash.md)
```

Processar TODO o glossário (1.277 linhas). Fazer via busca-e-substituição inteligente:
1. Ler o glossário inteiro
2. Para cada entrada com "Cap. XX", converter para link
3. Onde possível, linkar para a subpágina específica (verificar existência do arquivo antes)
4. Manter formatação bilíngue intacta

---

## BLOCO 9 — SUGESTÃO: Índice de Atividades de Sala

### Diagnóstico:
Existem ~24 atividades de sala (🧪) distribuídas nos index.md dos capítulos. Nenhuma página centralizada.

### Ação:
Criar `recursos/atividades-sala.md`:

```markdown
---
title: Índice de Atividades de Sala
---

# Índice de Atividades de Sala

As atividades abaixo estão integradas nos capítulos do livro. Use esta página para encontrar rapidamente a atividade adequada ao seu plano de aula.

## Filtro rápido

| # | Capítulo | Atividade | Tema | Duração est. | Alunos mín. |
|:---:|---|---|---|:---:|:---:|
| 1 | [Cap. 3](../cap03/index.md) | [título] | Preferências | ~30 min | 2 |
| 2 | [Cap. 4](../cap04/index.md) | [título] | Restrição orçamentária | ~20 min | 1 |
| ... | ... | ... | ... | ... | ... |
```

Para preencher a tabela:
1. Abrir cada `index.md` dos caps 1–24 e 9a–9d
2. Localizar a seção com 🧪 ou "Atividade de Sala"
3. Extrair: título da atividade, tema, duração estimada (inferir se não explícita), número mínimo de alunos
4. Linkar para a seção específica do capítulo

---

## BLOCO 10 — SUGESTÃO: Bookmarks de retorno ao Cap 2

### Diagnóstico:
Cap 2 é a caixa de ferramentas matemáticas. Capítulos avançados usam essas ferramentas mas nem sempre referenciam de volta.

### Ação:
Nos capítulos que usam ferramentas do Cap 2 pesadamente, adicionar um box discreto na primeira ocorrência:

```markdown
!!! tip "Ferramentas do Cap 2"
    Esta seção usa [Lagrange e preço-sombra](../cap02/lagrange.md). Se precisar relembrar, volte lá — leva 10 minutos.
```

**Mapeamento de bookmarks a adicionar:**

| Capítulo | Seção | Ferramenta do Cap 2 | Arquivo do bookmark |
|---|---|---|---|
| Cap 4 (Escolha ótima) | Primeira menção de Lagrange | `lagrange.md` | Subpágina de escolha ótima |
| Cap 5 (Slutsky) | Derivação com envelope | `envelope.md` | Subpágina de Slutsky |
| Cap 10 (Produção) | Homogeneidade e Euler | `curvatura.md` | Subpágina relevante |
| Cap 11 (Custos) | Minimização com Lagrange | `lagrange.md` | Subpágina de minimização |
| Cap 12 (Lucro) | Envelope e Hotelling | `envelope.md` | Subpágina relevante |
| Cap 14 (EG) | Ponto fixo | `complementos.md` | Subpágina de existência |
| Cap 15 (Monopólio) | KKT para restrições de capacidade | `kuhn-tucker.md` | Subpágina relevante |

**Regra:** Máximo 1 bookmark por capítulo. Colocar na PRIMEIRA vez que a ferramenta aparece. Não repetir.

---

## BLOCO 11 — SUGESTÃO: Exercícios com dados reais e links para APIs

### Ação:
Nos `exercicios.md` que já mencionam dados brasileiros, adicionar links diretos para as fontes:

```markdown
!!! tip "Dados para este exercício"
    - SIDRA/IBGE (POF): [sidra.ibge.gov.br](https://sidra.ibge.gov.br)
    - IPEADATA: [ipeadata.gov.br](https://www.ipeadata.gov.br)
    - Comex Stat: [comexstat.mdic.gov.br](http://comexstat.mdic.gov.br)
    - RAIS/MTE: [bi.mte.gov.br](https://bi.mte.gov.br/bgcaged/)
    - BCB/SGS: [bcb.gov.br/estatisticas](https://www.bcb.gov.br/estatisticas)
```

Capítulos prioritários:
- Cap 5 (`exercicios.md`): exercícios com dados POF → link SIDRA
- Cap 13 (`exercicios.md`): exercícios com dados de commodities → link IPEADATA
- Cap 17 (`exercicios.md`): exercícios com dados salariais → link RAIS
- Cap 22 (`exercicios.md`): exercícios com dados de avaliação → link SIDRA + IPEADATA
- Cap 24 (`exercicios.md`): exercícios com dados ambientais → link INPE/PRODES

**Formato:** 1 box `!!! tip "Dados"` por arquivo de exercícios, no topo, antes dos exercícios. Listar apenas as fontes relevantes para aquele capítulo.

---

## REGRAS GLOBAIS DE EXECUÇÃO

1. **Tom e voz:** Irreverente mas preciso. Testar: "um aluno de 3o ano riria E aprenderia?"
2. **Boxes `!!! idea`:** Título SEMPRE "Intuição Econômica" (nunca renomear).
3. **Labels JSXGraph:** Nunca sobrepor curvas — offset mínimo +5px.
4. **Código R:** Sempre em `??? r-interactive "R Interativo"`.
5. **Referências:** Verificar CADA citação com `WebSearch` (autor, ano, título, journal). NÃO alucinar.
6. **Cross-references:** Links relativos (`[Cap. 4](../cap04/index.md)`).
7. **Exercícios:** Numerar sequencialmente dentro do capítulo.
8. **Idioma:** Português brasileiro acadêmico. Estrangeirismos em itálico.
9. **Não criar arquivos desnecessários.** Não criar README/CHANGELOG.
10. **Commitar ao final de cada bloco** com `feat(micro-book): ...`.
11. **Atualizar `indice-remissivo.md`** com cada novo termo definido.
12. **Atualizar `glossario.md`** com cada nova definição (com link cruzado).
13. **Dados brasileiros:** Usar sempre a fonte mais recente disponível (POF 2017-2018, PNAD Contínua 2024, Censo 2022). Indicar o ano dos dados explicitamente.
14. **Emojis:** NÃO usar emojis em roadmaps (Bloco 2). Emojis são permitidos APENAS dentro de seções de exercícios e atividades do corpo do texto (🧪🧠🎯✏️🏆🔬), não nos roadmaps dos index.md.

---

## ORDEM DE EXECUÇÃO

| Ordem | Bloco | Tipo | Esforço |
|:---:|:---:|---|---|
| 1 | Bloco 1 | Correção obrigatória — Silly Walks | 5 min |
| 2 | Bloco 2 | Correção obrigatória — Emojis roadmaps | 30 min |
| 3 | Bloco 3 | Recomendação — Cap 5 POF | 15 min |
| 4 | Bloco 4 | Recomendação — Cap 9b leniência | 15 min |
| 5 | Bloco 5 | Recomendação — Cap 17 RAIS | 15 min |
| 6 | Bloco 6 | Recomendação — Cap 24 RenovaBio + Amazônia | 20 min |
| 7 | Bloco 7 | Recomendação — Cap 24 valoração SP/Tijuca | 15 min |
| 8 | Bloco 8 | Sugestão — Glossário com links | 45 min |
| 9 | Bloco 9 | Sugestão — Índice de atividades | 30 min |
| 10 | Bloco 10 | Sugestão — Bookmarks Cap 2 | 20 min |
| 11 | Bloco 11 | Sugestão — Links para APIs de dados | 15 min |

**Meta:** Após execução, o livro atinge 9,8+ em todas as 8 dimensões. Nota final: 9,8/10.
