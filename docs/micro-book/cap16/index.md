# Capítulo 16 — Poucos — e Isso Muda Tudo

Até aqui, estudamos dois mundos extremos: o da concorrência perfeita, onde nenhuma firma importa individualmente, e o do monopólio, onde só uma firma importa. A maioria dos mercados reais, porém, vive no meio-termo desconfortável entre esses dois polos — é como uma mesa de pôquer em que cada jogador precisa adivinhar o que os outros vão fazer antes de decidir sua própria aposta. Em um **oligopólio**, um pequeno número de firmas detém parcela significativa do mercado, e cada uma reconhece que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o traço definidor do oligopólio e o que o torna analiticamente mais rico (e mais traiçoeiro) do que as estruturas polares.[^spanish-inquisition-oligopolio]

A teoria dos oligopólios recorre extensivamente à **teoria dos jogos** para modelar a interação estratégica entre firmas. Os resultados são extremamente sensíveis às hipóteses sobre a variável de decisão (preço ou quantidade), a sequência de movimentos (simultâneo ou sequencial), o horizonte temporal (jogo de uma rodada ou repetido) e a natureza da informação.

Este capítulo parte dos modelos clássicos de oligopólio — Bertrand, Cournot, Stackelberg (formalizados no Capítulo 9a) — e avança para temas centrais da organização industrial moderna: diferenciação de produto, colusão tácita, dissuasão de entrada, inovação, competição monopolística, fusões e política antitruste. A análise é complementada por discussões da experiência brasileira em defesa da concorrência.[^holy-grail-shrubbery-cade]

!!! note "Pré-requisito: Capítulo 9a"
    Os modelos de Cournot, Bertrand e Stackelberg foram introduzidos no Capítulo 9a (Seção 9a.5) como aplicações da teoria dos jogos. Aqui, retomamos esses modelos com foco em suas implicações para a organização industrial e avançamos para extensões — diferenciação de produto, colusão, dissuasão de entrada, fusões e regulação.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Tema | Página |
|:------|:-----|:-------|
| 16.1 | Preço ou Quantidade — Eis a Questão | [Fundamentos](fundamentos.md#161) |
| 16.2 | Dois Bastam para a Guerra: Modelo de Bertrand | [Fundamentos](fundamentos.md#162) |
| 16.3 | Quanto Produzir Quando o Rival Pensa o Mesmo: Modelo de Cournot | [Fundamentos](fundamentos.md#163) |
| 16.4 | De Monopólio a Concorrência em n Passos: Cournot com n Firmas | [Fundamentos](fundamentos.md#164) |
| 16.5 | Não Dá para Atender Todo Mundo: Restrições de Capacidade | [Capacidade e Diferenciação](capacidade-diferenciacao.md#165) |
| 16.6 | Nem Todo Café É Igual: Diferenciação de Produto | [Capacidade e Diferenciação](capacidade-diferenciacao.md#166) |
| 16.7 | Vizinhos de Condomínio: Colusão Tácita | [Colusão e Entrada](colusao-entrada.md#167) |
| 16.8 | Redesenhando o Tabuleiro: Investimento, Entrada e Saída | [Colusão e Entrada](colusao-entrada.md#168) |
| 16.9 | Fábrica Grande Antes do Rival Chegar: Dissuasão de Entrada | [Colusão e Entrada](colusao-entrada.md#169) |
| 16.10 | Mostrar para Não Precisar Provar: Sinalização | [Colusão e Entrada](colusao-entrada.md#1610) |
| 16.11 | Lotação Máxima: Entrada Livre em Cournot | [Entrada e Inovação](entrada-inovacao.md#1611) |
| 16.12 | Quem Inventa Quando Poucos Competem: Inovação sob Oligopólio | [Entrada e Inovação](entrada-inovacao.md#1612) |
| 16.13 | Todos na Mesa: Comparação dos Modelos de Oligopólio | [Entrada e Inovação](entrada-inovacao.md#1613) |
| 16.14 | Muitos Restaurantes, Nenhum Igual: Competição Monopolística | [Competição Monopolística e Fusões](monopolistica-fusoes.md#1614) |
| 16.15 | Quando Dois Viram Um: Fusões e Política Antitruste | [Competição Monopolística e Fusões](monopolistica-fusoes.md#1615) |
| 16.16 | O Juiz na Mesa de Pôquer: Regulação de Oligopólios | [Competição Monopolística e Fusões](monopolistica-fusoes.md#1616) |
| — | Exercícios e ANPEC | [Exercícios](exercicios.md) |
| — | Pesquisa em Ação | [Pesquisa](pesquisa.md) |

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
