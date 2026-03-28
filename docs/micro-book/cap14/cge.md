# 14.11 Do Quadro-Negro ao Gabinete: Modelos CGE

## 14.11 Do Quadro-Negro ao Gabinete: Modelos CGE {#1411}

Tudo o que vimos até aqui neste capítulo — Caixa de Edgeworth, Teoremas do Bem-Estar, prova de existência — pertence ao domínio da teoria pura. São resultados fundamentais, mas nenhum deles, isoladamente, diz a um ministro da Fazenda quanto uma reforma tributária vai afetar o emprego no setor têxtil. Para isso, precisamos de **modelos computáveis de equilíbrio geral** (CGE, na sigla em inglês), que traduzem a estrutura teórica walrasiana em sistemas numéricos calibrados com dados reais e resolvidos por computador.[^ministry-cge-bis]

### O que é um modelo CGE

Um modelo CGE é uma implementação numérica da teoria de equilíbrio geral. Ele especifica:

1. **Funções de utilidade** para cada tipo de consumidor (geralmente CES ou Cobb-Douglas aninhadas);
2. **Funções de produção** para cada setor (CES, Leontief, Cobb-Douglas ou combinações);
3. **Dotações de fatores** (trabalho, capital, terra, recursos naturais);
4. **Estrutura tributária e de gastos do governo**;
5. **Relações de comércio exterior** (funções de Armington para diferenciação por origem).

O modelo é **calibrado** — não estimado econometricamente. Isso significa que os parâmetros são escolhidos para que o modelo reproduza exatamente uma **Matriz de Contabilidade Social (SAM)** observada no ano-base. A SAM é como uma fotografia contábil da economia: registra todos os fluxos de bens, serviços, fatores e transferências entre setores, famílias, governo e resto do mundo.

### Como funciona na prática

O fluxo de trabalho típico de um modelo CGE é:

1. **Construir a SAM** a partir de dados das Contas Nacionais, pesquisas domiciliares (PNAD/POF no Brasil) e dados de comércio exterior;
2. **Calibrar** o modelo: dados os parâmetros, o equilíbrio do ano-base é reproduzido exatamente;
3. **Chocar** o modelo: introduzir uma mudança de política (redução de tarifa, reforma tributária, choque de produtividade) e resolver o novo equilíbrio;
4. **Comparar** os resultados: o "contrafactual" (com a política) versus o "benchmark" (sem a política).

Os resultados típicos incluem: mudanças nos preços relativos, realocação de fatores entre setores, variação do PIB, efeitos distributivos (quem ganha, quem perde), e medidas de bem-estar (variação equivalente ou compensatória).

### Limitações e precauções

Como qualquer modelo, os CGEs fazem simplificações importantes:

- **Concorrência perfeita** é a hipótese padrão (embora extensões com markup existam);
- **Pleno emprego** de fatores — o ajuste é via preços, não via quantidades de desemprego;
- **Expectativas estáticas** — a maioria dos modelos é de estática comparativa, sem dinâmica intertemporal completa;
- **Sensibilidade a elasticidades** — os resultados podem mudar substancialmente com diferentes elasticidades de substituição.

Apesar dessas limitações, os modelos CGE são a ferramenta padrão para avaliação *ex ante* de políticas comerciais e tributárias. A alternativa — análise de equilíbrio parcial ou pura intuição — é quase sempre pior.

!!! box-brasil "Modelos CGE e Políticas Públicas no Brasil"
    O Brasil possui uma tradição ativa de modelagem CGE aplicada. Alguns exemplos notáveis:

    - **TERM-BR** (The Enormous Regional Model — Brasil): desenvolvido por pesquisadores da USP e FGV, desagrega a economia brasileira em 27 estados e dezenas de setores. Foi utilizado para avaliar os impactos regionais da reforma tributária (IBS+CBS), estimando que estados importadores líquidos de bens se beneficiariam da transição do princípio de origem para o de destino.
    - **BeGreen**: modelo multi-regional multi-setorial do Cedeplar/UFMG, utilizado para analisar os efeitos econômicos de políticas ambientais — como metas de redução de desmatamento e precificação de carbono.
    - **GTAP** (Global Trade Analysis Project): modelo global calibrado pela Purdue University, amplamente utilizado para simular os efeitos de acordos comerciais — incluindo o Mercosul-UE. Estudos com GTAP estimam ganhos modestos para o PIB brasileiro (0,1–0,5%), mas impactos significativos na composição setorial: expansão do agronegócio e contração de segmentos industriais menos competitivos.
    - **Modelos do IPEA**: o Instituto de Pesquisa Econômica Aplicada desenvolve e aplica modelos CGE para avaliar políticas redistributivas, como o Bolsa Família e a reforma da Previdência.

    **Dados brasileiros para CGE:** As Contas Nacionais do IBGE (Tabelas de Recursos e Usos — TRU) são a base para a construção de SAMs brasileiras. A Matriz Insumo-Produto, derivada das TRU, detalha as relações intersetoriais que alimentam os modelos.

[^ministry-cge-bis]: Lembre-se: os modelos CGE são o *Ministry of Silly Walks* da economia aplicada — mas um ministry que efetivamente funciona. Cada modelo tem suas idiossincrasias (funções de produção aninhadas com quatro níveis de CES? Sério?), mas os resultados são surpreendentemente úteis quando interpretados com o devido ceticismo.
