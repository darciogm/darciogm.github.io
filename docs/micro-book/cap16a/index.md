---
title: "Capítulo 16a — Poucos — e Isso Muda Tudo"
---

# Capítulo 16a — Poucos — e Isso Muda Tudo

*Modelos Básicos de Oligopólio*

Quando o mercado tem poucos vendedores, cada firma sabe que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o que torna o oligopólio fundamentalmente diferente da concorrência perfeita e do monopólio. Neste módulo, construímos os modelos clássicos: Bertrand (competição em preços), Cournot (competição em quantidades), Stackelberg (líder-seguidora), e suas extensões com restrições de capacidade e diferenciação de produto.[^spanish-inquisition-oligopolio]

A teoria dos oligopólios recorre extensivamente à **teoria dos jogos** para modelar a interação estratégica entre firmas. Os resultados são extremamente sensíveis às hipóteses sobre a variável de decisão (preço ou quantidade), a sequência de movimentos (simultâneo ou sequencial) e a natureza da informação.

!!! tip "Pré-requisitos"
    [Cap. 9a](../cap09a/index.md) (equilíbrio de Nash) e [Cap. 15](../cap15/index.md) (monopólio). Para IO avançada (colusão, entrada, fusões), veja o [Cap. 16b](../cap16b/index.md).

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 16a.1 | A firma compete em preço ou em quantidade? | Bertrand vs. Cournot: a escolha da variável estratégica | [Fundamentos](fundamentos.md#16a1) |
| 16a.2 | Dois concorrentes bastam para gerar preço competitivo? | Modelo de Bertrand e o paradoxo | [Bertrand](fundamentos.md#16a2) |
| 16a.3 | Como decidir quanto produzir quando o rival pensa o mesmo? | Cournot, funções de reação, EN | [Cournot](fundamentos.md#16a3) |
| 16a.4 | O que acontece quando o número de firmas cresce de 2 para n? | Cournot com n firmas, convergência para competição | [Cournot-n](fundamentos.md#16a4) |
| 16a.5 | E se a fábrica não consegue atender todo mundo? | Restrições de capacidade, Edgeworth | [Capacidade](capacidade-diferenciacao.md#16a5) |
| 16a.6 | Por que nem todo café é igual — e como isso muda a concorrência? | Diferenciação horizontal/vertical, Hotelling | [Diferenciação](capacidade-diferenciacao.md#16a6) |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade em Sala: O Torneio de Oligopólio — Bertrand, Cournot e Colusão ao Vivo"

    **Objetivo pedagógico:** Vivenciar a diferença entre competição em preços (Bertrand), competição em quantidades (Cournot) e colusão, revelando como a variável de decisão e a possibilidade de comunicação alteram radicalmente os resultados de mercado.

    **Materiais:** Formulários impressos (ou Google Forms) com campos para decisão de preço ou quantidade; planilha projetada para calcular resultados em tempo real; cartões de "identidade da firma" (custos marginais).

    **Formato:** 3 rodadas × 15 min cada + 10 min debrief = 55 min

    ---

    **Rodada 1 — Bertrand (15 min)**

    - Divida a turma em duplas. Cada dupla representa um duopólio com produtos homogêneos.
    - Custos marginais: \(c = 20\). Demanda: \(Q = 100 - p\).
    - Cada firma escolhe um preço **simultaneamente** (sem comunicação). O consumidor compra da firma com menor preço; se iguais, divide-se a demanda.
    - Repita 5 rounds. Registre preços e lucros de cada round.
    - **Previsão teórica:** convergência para \(p = c = 20\), lucro zero.

    **Rodada 2 — Cournot (15 min)**

    - Mesmas duplas, mesma demanda e custos.
    - Agora cada firma escolhe uma **quantidade** simultaneamente (sem comunicação). O preço é determinado por \(p = 100 - Q\).
    - Repita 5 rounds.
    - **Previsão teórica:** \(q_1 = q_2 \approx 26{,}7\), \(p \approx 46{,}7\), lucros positivos.

    **Rodada 3 — Colusão (15 min)**

    - Mesmas duplas, mesma demanda, competição em quantidades.
    - Agora as firmas podem se **comunicar** por 2 minutos antes de cada round. Mas a decisão é individual e secreta.
    - Repita 5 rounds. Observe quem trai o acordo e quando.
    - **Previsão teórica:** tentativa de colusão em \(Q^m = 40\), mas incentivo a desviar.

    ---

    **Debrief (10 min)**

    1. Projete os resultados agregados: preços médios caíram para \(c\) na Rodada 1? Ficaram acima de \(c\) na Rodada 2?
    2. Na Rodada 3, quantas duplas sustentaram a colusão nos 5 rounds? Quantas tiveram "traição" nos últimos rounds?
    3. Conecte com a teoria: "Por que a variável de decisão (preço vs. quantidade) gera resultados tão diferentes?" → função de demanda residual descontínua (Bertrand) vs. contínua (Cournot).
    4. Conecte com antitruste: "Se vocês fossem o CADE, o que fariam para impedir a Rodada 3?"

    **Variação avançada:** Introduza custos assimétricos (\(c_1 = 10\), \(c_2 = 30\)) para explorar como a eficiência relativa afeta o equilíbrio e a sustentabilidade da colusão.

---

[^spanish-inquisition-oligopolio]: "Nobody expects the Spanish Inquisition!" — e ninguém espera que o resultado de equilíbrio mude tão drasticamente ao trocar preço por quantidade como variável de decisão. A Inquisição Espanhola de Monty Python aparecia sempre quando menos se esperava, com armas inesperadas ("Our *chief* weapon is surprise... surprise and fear... fear and surprise..."). No oligopólio, a "arma" do modelo muda tudo: Bertrand gera competição perfeita com duas firmas; Cournot gera lucros positivos com as mesmas duas firmas. A hipótese que "ninguém espera" — a variável de decisão — é a que mais importa.
