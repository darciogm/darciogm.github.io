# Capítulo 17 — O Salário Subiu e Você… Trabalhou Menos?

Todo dia, ao desligar o despertador, você enfrenta — conscientemente ou não — o dilema mais antigo da economia: vale a pena trocar mais uma hora de travesseiro por mais uma hora de salário? A renda do trabalho representa cerca de dois terços da renda nacional na maioria dos países, e as decisões sobre quanto trabalhar, que carreira seguir e como negociar salários afetam profundamente o bem-estar individual e coletivo. Neste capítulo, aplicamos as ferramentas da microeconomia — teoria do consumidor, equilíbrio de mercado e poder de mercado — ao estudo da oferta e da demanda de trabalho. Spoiler: a resposta para "salário maior sempre faz a pessoa trabalhar mais" é um sonoro *depende*.[^black-knight-trabalho]

Partimos do modelo de alocação do tempo, no qual o indivíduo escolhe entre consumo e lazer, e derivamos rigorosamente a curva de oferta de trabalho. Em seguida, analisamos fenômenos como a curva de oferta backward-bending, o equilíbrio competitivo, os diferenciais salariais, o monopsônio e o papel dos sindicatos. Ao longo do capítulo, conectamos a teoria à realidade brasileira, marcada por elevada informalidade, desigualdade salarial e um debate persistente sobre os efeitos do salário mínimo.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 17.1 | Mais uma hora de sono ou mais uma hora de salário? | Alocação do tempo, lazer vs. consumo | [Alocação](oferta-trabalho.md#171) |
| 17.2 | Como formalizar a decisão de quantas horas trabalhar? | Oferta de trabalho, problema do consumidor-trabalhador | [Oferta](oferta-trabalho.md#172) |
| 17.3 | Ganhar mais pode fazer alguém trabalhar menos? | Curva backward-bending, substituição vs. renda | [Backward-bending](oferta-trabalho.md#173) |
| 17.4 | Como somar milhões de decisões individuais numa oferta de mercado? | Oferta agregada de trabalho | [Agregação](equilibrio-diferenciais.md#174) |
| 17.5 | O que determina o salário de equilíbrio? | Equilíbrio no mercado de trabalho | [Equilíbrio](equilibrio-diferenciais.md#175) |
| 17.6 | Por que o médico ganha mais que o professor? | Diferenciais compensatórios, capital humano | [Diferenciais](equilibrio-diferenciais.md#176) |
| 17.7 | O que acontece quando só tem um patrão na cidade? | Monopsônio, salário abaixo do PMg | [Monopsônio](monopsonio-sindicatos.md#177) |
| 17.8 | O sindicato melhora ou piora o mercado de trabalho? | Barganha salarial, modelos de sindicato | [Sindicatos](monopsonio-sindicatos.md#178) |
| 17.9 | Subir o salário atrai mais trabalho ou mais lazer? | Efeito substituição vs. renda na oferta de fatores | [Substituição vs. renda](fatores-terra.md#179) |
| 17.10 | Se a terra não vai a lugar nenhum, quem captura o valor? | Renda da terra, recursos naturais | [Terra](fatores-terra.md#1710) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade em Sala: O Mercado de Trabalho ao Vivo — Oferta, Monopsônio e Salário Mínimo"

    **Objetivo pedagógico:** Vivenciar como a estrutura de mercado (competitivo vs. monopsônio) afeta salários e emprego, e como o salário mínimo pode ter efeitos opostos dependendo do contexto.

    **Materiais:** Cartões de "trabalhador" (com salário de reserva individual, de R$ 5 a R$ 50, escritos no verso), cartões de "firma" (com VPMg do trabalhador marginal). Planilha projetada.

    **Formato:** 3 rodadas × 10 min cada + 10 min debrief = 40 min

    ---

    **Rodada 1 — Mercado Competitivo (10 min)**

    - Metade da turma recebe cartões de "trabalhador" (com salário de reserva aleatório). A outra metade recebe cartões de "firma" (com VPMg decrescente no número de contratados).
    - Trabalhadores e firmas negociam livremente. Cada par que concorda num salário registra a contratação.
    - Ao final, projete o histograma de salários negociados.
    - **Previsão:** salários convergem para um valor próximo do equilíbrio competitivo.

    **Rodada 2 — Monopsônio (10 min)**

    - Agora apenas **1 aluno** é a firma (monopsonista). Todos os demais são trabalhadores.
    - A firma faz ofertas de salário "take it or leave it". Trabalhadores com salário de reserva ≤ oferta aceitam.
    - A firma decide quantos quer contratar e a que salário.
    - **Previsão:** salário abaixo do competitivo, emprego menor.

    **Rodada 3 — Salário Mínimo no Monopsônio (10 min)**

    - Repita a Rodada 2, mas agora com salário mínimo fixado (pelo professor) em um valor intermediário entre o monopsônio e o competitivo.
    - **Previsão:** emprego *aumenta* em relação à Rodada 2, contradizendo a intuição de muitos alunos.

    ---

    **Debrief (10 min)**

    1. Compare os resultados das 3 rodadas: salários, emprego, excedente.
    2. "Por que o salário mínimo aumentou o emprego na Rodada 3 mas teria reduzido na Rodada 1?" → estrutura de mercado é tudo.
    3. Conecte com Card e Krueger (1994) e o debate brasileiro sobre salário mínimo.
    4. Pergunte: "Em que mercados de trabalho reais a Rodada 2 é mais realista que a Rodada 1?"

---

[^black-knight-trabalho]: O Cavaleiro Negro de Monty Python continua lutando mesmo depois de perder os dois braços — "'Tis but a scratch!" A curva backward-bending tem uma lógica semelhante, mas invertida: a partir de certo salário, o trabalhador *para* de aumentar as horas mesmo podendo ganhar mais. O Cavaleiro Negro ignora sunk costs (os braços perdidos); o trabalhador de alta renda reconhece que o custo marginal de mais uma hora de trabalho (lazer perdido) supera o benefício marginal (mais dinheiro). Um é irracional, o outro é perfeitamente racional. Mas ambos surpreendem quem espera uma resposta "normal".
