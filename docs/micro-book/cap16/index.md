# Capítulo 16 — Poucos — e Isso Muda Tudo

Até aqui, estudamos dois mundos extremos: o da concorrência perfeita, onde nenhuma firma importa individualmente, e o do monopólio, onde só uma firma importa. A maioria dos mercados reais, porém, vive no meio-termo desconfortável entre esses dois polos — é como uma mesa de pôquer em que cada jogador precisa adivinhar o que os outros vão fazer antes de decidir sua própria aposta. Em um **oligopólio**, um pequeno número de firmas detém parcela significativa do mercado, e cada uma reconhece que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o traço definidor do oligopólio e o que o torna analiticamente mais rico (e mais traiçoeiro) do que as estruturas polares.[^spanish-inquisition-oligopolio]

A teoria dos oligopólios recorre extensivamente à **teoria dos jogos** para modelar a interação estratégica entre firmas. Os resultados são extremamente sensíveis às hipóteses sobre a variável de decisão (preço ou quantidade), a sequência de movimentos (simultâneo ou sequencial), o horizonte temporal (jogo de uma rodada ou repetido) e a natureza da informação.

Este capítulo parte dos modelos clássicos de oligopólio — Bertrand, Cournot, Stackelberg (formalizados no Capítulo 9a) — e avança para temas centrais da organização industrial moderna: diferenciação de produto, colusão tácita, dissuasão de entrada, inovação, competição monopolística, fusões e política antitruste. A análise é complementada por discussões da experiência brasileira em defesa da concorrência.[^holy-grail-shrubbery-cade]

!!! note "Pré-requisito: Capítulo 9a"
    Os modelos de Cournot, Bertrand e Stackelberg foram introduzidos no Capítulo 9a (Seção 9a.5) como aplicações da teoria dos jogos. Aqui, retomamos esses modelos com foco em suas implicações para a organização industrial e avançamos para extensões — diferenciação de produto, colusão, dissuasão de entrada, fusões e regulação.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 16.1 | A firma compete em preço ou em quantidade? | Bertrand vs. Cournot: a escolha da variável estratégica | [Fundamentos](fundamentos.md#161) |
| 16.2 | Dois concorrentes bastam para gerar preço competitivo? | Modelo de Bertrand e o paradoxo | [Bertrand](fundamentos.md#162) |
| 16.3 | Como decidir quanto produzir quando o rival pensa o mesmo? | Cournot, funções de reação, EN | [Cournot](fundamentos.md#163) |
| 16.4 | O que acontece quando o número de firmas cresce de 2 para n? | Cournot com n firmas, convergência para competição | [Cournot-n](fundamentos.md#164) |
| 16.5 | E se a fábrica não consegue atender todo mundo? | Restrições de capacidade, Edgeworth | [Capacidade](capacidade-diferenciacao.md#165) |
| 16.6 | Por que nem todo café é igual — e como isso muda a concorrência? | Diferenciação horizontal/vertical, Hotelling | [Diferenciação](capacidade-diferenciacao.md#166) |
| 16.7 | Como rivais sustentam preços altos sem combinar nada? | Colusão tácita, superjogo, gatilho | [Colusão](colusao-entrada.md#167) |
| 16.8 | Quem investe antes do rival define as regras do jogo? | Investimento estratégico, comprometimento | [Investimento](colusao-entrada.md#168) |
| 16.9 | Construir fábrica grande antes do rival chegar dissuade a entrada? | Dissuasão de entrada, capacidade ociosa | [Dissuasão](colusao-entrada.md#169) |
| 16.10 | Quando a firma sinaliza força para não precisar lutar? | Sinalização estratégica em IO | [Sinalização](colusao-entrada.md#1610) |
| 16.11 | Quantas firmas cabem no mercado com entrada livre? | Entrada livre em Cournot, excesso de entrada | [Entrada livre](entrada-inovacao.md#1611) |
| 16.12 | Poucos concorrentes inovam mais ou menos que muitos? | Inovação sob oligopólio, Arrow vs. Schumpeter | [Inovação](entrada-inovacao.md#1612) |
| 16.13 | Qual modelo prevê melhor o comportamento real das firmas? | Comparação Bertrand/Cournot/Stackelberg/colusão | [Comparação](entrada-inovacao.md#1613) |
| 16.14 | Muitos restaurantes, nenhum igual — competição ou monopólio? | Competição monopolística, Chamberlin, Dixit-Stiglitz | [Comp. monopolística](monopolistica-fusoes.md#1614) |
| 16.15 | Quando dois viram um, o consumidor ganha ou perde? | Fusões, eficiência de Williamson, simulação de preços | [Fusões](monopolistica-fusoes.md#1615) |
| 16.16 | Como o CADE decide se uma fusão é boa ou ruim? | Regulação de oligopólios, política antitruste | [Antitruste](monopolistica-fusoes.md#1616) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

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

[^holy-grail-shrubbery-cade]: "We want... a shrubbery!" Os Cavaleiros que Dizem "Ni" exigiam um arbusto de especificações absurdamente precisas — "one that looks nice, and not too expensive." O CADE opera com lógica semelhante ao definir "mercado relevante": a delimitação precisa (produto + geográfico) determina se uma fusão é aprovada ou bloqueada, e diferentes definições podem gerar conclusões opostas. O mercado relevante é o arbusto do antitruste: parece simples, mas a especificação muda tudo.
