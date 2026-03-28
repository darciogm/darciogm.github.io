# Capítulo 14 — Quando Tudo se Encaixa (ou Quase Isso): Equilíbrio Geral

Imagine que você puxa um único fio de uma teia de aranha. O que acontece? A teia inteira vibra. É exatamente isso que ocorre numa economia quando mexemos em um único mercado — e até aqui fingíamos que o resto da teia ficava parado. No capítulo anterior, analisamos mercados isolados — o chamado equilíbrio parcial marshalliano. Mas os mercados não existem no vácuo: o preço do milho afeta a demanda por soja; o salário dos engenheiros influencia o custo de construção civil; uma política comercial que protege a indústria têxtil altera os preços relativos em toda a economia. A análise de **equilíbrio geral** abandona a ficção do *ceteris paribus* e busca compreender a interdependência simultânea de todos os mercados — a teia inteira, vibrando de uma vez.[^holy-grail-equilibrio]

Este capítulo desenvolve a teoria walrasiana de equilíbrio geral — desde a intuição gráfica da Caixa de Edgeworth até a formalização matemática via funções de excesso de demanda e a prova de existência pelo Teorema do Ponto Fixo de Brouwer. Estabeleceremos os dois teoremas fundamentais do bem-estar, que conectam eficiência de Pareto e concorrência perfeita, e concluiremos com uma visão dos modelos computáveis de equilíbrio geral (CGE), que permitem aplicar essa teoria à avaliação de políticas públicas.[^ministry-cge]

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Tema | Página |
|:------|:-----|:-------|
| 14.1 | Vasos Comunicantes: O Sistema de Preços Competitivo | [Sistema de Preços e Edgeworth](sistema-precos.md#141) |
| 14.2 | Um Retângulo Vale Mais que Mil Palavras: A Caixa de Edgeworth | [Sistema de Preços e Edgeworth](sistema-precos.md#142) |
| 14.3 | O Caminho Dourado: Curva de Contrato e Núcleo | [Eficiência de Pareto](eficiencia-pareto.md#143) |
| 14.4 | Quem Produz o Quê: Fronteira de Possibilidades de Produção | [Eficiência de Pareto](eficiencia-pareto.md#144) |
| 14.5 | Três Peças do Quebra-Cabeça: Condições de Eficiência de Pareto | [Eficiência de Pareto](eficiencia-pareto.md#145) |
| 14.6 | A Orquestra sem Maestro: Primeiro Teorema do Bem-Estar | [Teoremas do Bem-Estar](teoremas-bem-estar.md#146) |
| 14.7 | Redistribuir sem Estragar: Segundo Teorema do Bem-Estar | [Teoremas do Bem-Estar](teoremas-bem-estar.md#147) |
| 14.8 | Das Caixas às Equações: Modelo Matemático de Troca | [Modelo Matemático](modelo-matematico.md#148) |
| 14.9 | O Castelo Existe? Prova de Existência do Equilíbrio | [Modelo Matemático](modelo-matematico.md#149) |
| 14.10 | Quando Alguém Precisa Fabricar: Produção e Troca | [Modelo Matemático](modelo-matematico.md#1410) |
| 14.11 | Do Quadro-Negro ao Gabinete: Modelos CGE | [Modelos CGE](cge.md) |
| — | Revisão, Exercícios e ANPEC | [Exercícios e ANPEC](exercicios.md) |
| — | Pesquisa em Ação e Referências | [Pesquisa em Ação](pesquisa.md) |

</div>

---

!!! classroom "Atividade de Sala — A Caixa de Edgeworth ao Vivo: Trocas Bilaterais e Eficiência"

    **Formato:** Simulação de trocas + debrief analítico (40–50 min)

    **Objetivo:** Vivenciar a formação de preços em uma economia de troca pura, descobrir a curva de contrato experimentalmente e verificar o Primeiro Teorema do Bem-Estar "na marra".

    **Preparação (professor):**

    - Divida a turma em pares (cada par = uma "economia de troca" com dois agentes).
    - Imprima fichas de **dotação**: Agente A recebe 8 fichas azuis (bem 1) e 2 fichas vermelhas (bem 2). Agente B recebe 2 fichas azuis e 8 fichas vermelhas.
    - Imprima fichas de **utilidade**: A tem utilidade $U_A = x_1 \cdot x_2$ (valores numa tabela pré-calculada). B tem utilidade $U_B = x_1^{1/3} \cdot x_2^{2/3}$ (valores numa tabela pré-calculada).
    - Prepare uma "Caixa de Edgeworth" grande no quadro (10x10) para registrar as alocações.

    **Rodada 1 — Trocas livres (10 min):**

    1. Cada par negocia livremente. A e B podem propor trocas de fichas ("dou-te 2 azuis se me deres 3 vermelhas").
    2. Cada agente só aceita trocas que *aumentem* sua utilidade (consultar a tabela).
    3. Ao final, registre a alocação final de cada par no quadro (ponto na Caixa).

    **Rodada 2 — Mercado com preços (10 min):**

    1. O professor anuncia preços ($p_1/p_2 = 1$) e opera como "leiloeiro walrasiano".
    2. Cada agente calcula sua cesta ótima (usando a tabela ou a fórmula) e anuncia suas demandas.
    3. Se há excesso de demanda num bem, o professor ajusta o preço e repete.
    4. Registre o equilíbrio walrasiano no quadro.

    **Debrief (15–20 min):**

    - Compare as alocações da Rodada 1 (trocas livres) com a Rodada 2 (mercado walrasiano). Todas estão na curva de contrato?
    - Calcule a utilidade de cada agente em cada rodada. Houve melhoria de Pareto?
    - Por que as alocações da Rodada 1 variam entre pares (poder de barganha!), enquanto a Rodada 2 converge a um único ponto?
    - Conecte com o Teorema do Limite do Núcleo: se tivéssemos muitos pares, o núcleo se contrairia ao equilíbrio walrasiano.
    - Referência Monty Python: "Bring me a shrubbery!" — o Knights Who Say Ni têm demanda perfeitamente inel��stica e poder de barganha total. No mercado walrasiano, ninguém tem poder de barganha.

    **Variante para turmas grandes:** Faça 4 pares por "economia" (2 de cada tipo) e observe como a competição entre agentes do mesmo tipo reduz o poder de barganha — ilustração direta do Teorema do Limite do Núcleo.

    **Referência:** Bergstrom, T. & Miller, J. (2000). *Experiments with Economic Principles*, Cap. 14 (Exchange Economies).

[^holy-grail-equilibrio]: A busca pelo equilíbrio geral walrasiano tem algo do *Quest for the Holy Grail* dos Monty Python. Walras sabia que o Graal existia (o sistema de equações parecia fechar), mas não conseguiu provar. Oitenta anos e muitas aventuras matemáticas depois, Arrow e Debreu finalmente encontraram o cálice — usando não uma espada, mas o Teorema do Ponto Fixo de Brouwer. E, como no filme, a jornada foi mais instrutiva que o destino.

[^ministry-cge]: Os modelos CGE são o *Ministry of Silly Walks* da economia aplicada: cada modelo tem sua própria forma excêntrica de caminhar (especificação funcional, regra de fechamento, calibração), nenhum caminha exatamente como outro, mas todos chegam — mais ou menos — ao mesmo destino. A diferença é que, ao contrário do Ministry, os CGEs produzem resultados que ministros da Fazenda realmente usam para tomar decisões.
