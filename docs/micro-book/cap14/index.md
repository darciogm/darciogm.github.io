# Capítulo 14 — Quando Tudo se Encaixa (ou Quase Isso): Equilíbrio Geral

Imagine que você puxa um único fio de uma teia de aranha. O que acontece? A teia inteira vibra. É exatamente isso que ocorre numa economia quando mexemos em um único mercado — e até aqui fingíamos que o resto da teia ficava parado. No capítulo anterior, analisamos mercados isolados — o chamado equilíbrio parcial marshalliano. Mas os mercados não existem no vácuo: o preço do milho afeta a demanda por soja; o salário dos engenheiros influencia o custo de construção civil; uma política comercial que protege a indústria têxtil altera os preços relativos em toda a economia. A análise de **equilíbrio geral** abandona a ficção do *ceteris paribus* e busca compreender a interdependência simultânea de todos os mercados — a teia inteira, vibrando de uma vez.[^holy-grail-equilibrio]

Este capítulo desenvolve a teoria walrasiana de equilíbrio geral — desde a intuição gráfica da Caixa de Edgeworth até a formalização matemática via funções de excesso de demanda e a prova de existência pelo Teorema do Ponto Fixo de Brouwer. Estabeleceremos os dois teoremas fundamentais do bem-estar, que conectam eficiência de Pareto e concorrência perfeita, e concluiremos com uma visão dos modelos computáveis de equilíbrio geral (CGE), que permitem aplicar essa teoria à avaliação de políticas públicas.[^ministry-cge]

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 14.1 | O que conecta o preço do café ao salário do barista? | Sistema de preços como vasos comunicantes | [Sistema de preços](sistema-precos.md#141) |
| 14.2 | Como visualizar todas as trocas possíveis entre duas pessoas? | Caixa de Edgeworth | [Edgeworth](sistema-precos.md#142) |
| 14.3 | Que alocações esgotam todos os ganhos de troca? | Curva de contrato, núcleo, eficiência de Pareto | [Contrato](eficiencia-pareto.md#143) |
| 14.4 | Quanto de cada bem a economia pode produzir? | Fronteira de possibilidades de produção | [FPP](eficiencia-pareto.md#144) |
| 14.5 | Quais são as três condições para que ninguém melhore sem piorar alguém? | Eficiência na troca, produção e mix | [Condições de Pareto](eficiencia-pareto.md#145) |
| 14.6 | O mercado competitivo produz eficiência sem ninguém mandar? | 1º Teorema do Bem-Estar | [1º TBE](teoremas-bem-estar.md#146) |
| 14.7 | Dá para redistribuir sem destruir a eficiência? | 2º Teorema do Bem-Estar, transferências lump-sum | [2º TBE](teoremas-bem-estar.md#147) |
| 14.8 | Como traduzir a Caixa de Edgeworth em equações? | Modelo walrasiano de troca pura | [Modelo](modelo-matematico.md#148) |
| 14.9 | O equilíbrio geral existe — ou é só uma ideia bonita? | Ponto fixo, Teorema de Arrow-Debreu | [Existência](modelo-matematico.md#149) |
| 14.10 | E quando alguém precisa fabricar, não só trocar? | Produção e equilíbrio geral | [Produção](modelo-matematico.md#1410) |
| 14.11 | Como simular o impacto de uma reforma tributária na economia inteira? | Modelos CGE (equilíbrio geral computável) | [CGE](cge.md) |
| 14.12 | Existe regra de votação perfeita — ou a democracia tem limites lógicos? | Teorema de Arrow, escolha social | [Arrow](escolha-social.md#1412) |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

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
    - Note o contraste: nas trocas livres, quem negocia melhor se dá bem (poder de barganha importa). No mercado walrasiano, todos aceitam o preço dado — ninguém tem poder de barganha.

    **Variante para turmas grandes:** Faça 4 pares por "economia" (2 de cada tipo) e observe como a competição entre agentes do mesmo tipo reduz o poder de barganha — ilustração direta do Teorema do Limite do Núcleo.

    **Referência:** Bergstrom, T. & Miller, J. (2000). *Experiments with Economic Principles*, Cap. 14 (Exchange Economies).

[^holy-grail-equilibrio]: A busca pelo equilíbrio geral walrasiano tem algo do *Quest for the Holy Grail* dos Monty Python. Walras sabia que o Graal existia (o sistema de equações parecia fechar), mas não conseguiu provar. Oitenta anos e muitas aventuras matemáticas depois, Arrow e Debreu finalmente encontraram o cálice — usando não uma espada, mas o Teorema do Ponto Fixo de Brouwer. E, como no filme, a jornada foi mais instrutiva que o destino.

[^ministry-cge]: Os modelos CGE são a haute couture da economia aplicada: cada modelo tem sua própria especificação funcional, regra de fechamento e calibração, nenhum é exatamente igual ao outro, mas todos tentam vestir a mesma teoria. A diferença é que, ao contrário da haute couture, os CGEs produzem resultados que ministros da Fazenda realmente usam para tomar decisões.
