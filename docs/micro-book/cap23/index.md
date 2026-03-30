# Capítulo 23 — Doutor, Quanto Custa? (Arrow Já Sabia Que Ia Dar Problema)

Você sabe quanto custa uma aspirina num hospital americano? Até 25 dólares — por um comprimido que custa centavos na farmácia da esquina. Esse absurdo não é acidente. Em 1963, Kenneth Arrow publicou um artigo que mudou a forma como economistas pensam sobre saúde. Em "Uncertainty and the Welfare Economics of Medical Care", Arrow argumentou que o mercado de cuidados médicos é *fundamentalmente diferente* de outros mercados — não por razões sentimentais ("saúde não tem preço"), mas por razões econômicas precisas: incerteza radical sobre a doença, assimetria de informação entre médico e paciente, externalidades de vacinação e tratamento, e a natureza de bem meritório que justifica intervenção pública mesmo quando não há falha de mercado clássica. Seis décadas depois, a economia da saúde tornou-se uma das maiores subáreas da microeconomia aplicada, com implicações diretas para políticas públicas que afetam bilhões de pessoas — e a aspirina de 25 dólares continua sem explicação convincente fora da teoria de Arrow.[^dead]

[^dead]: *"Bring out your dead!"* Na célebre cena de *Monty Python and the Holy Grail*, o coletor de cadáveres percorre uma cidade dizimada pela peste enquanto moradores empilham seus mortos. Um homem tenta entregar alguém que protesta: *"I'm not dead yet!"* O coletor hesita, o carregador insiste, e o "morto" é nocauteado com uma tacada para resolver o impasse. A cena é uma aula involuntária de economia da saúde: o paciente tem informação privada sobre seu estado (*"I'm not dead!"*), mas o sistema ignora — assimetria de informação em sua forma mais brutal. O coletor opera sem diagnóstico diferencial. E a "solução" — uma paulada na cabeça — é o que acontece quando mecanismos de alocação ignoram as preferências dos agentes. Arrow ficaria horrorizado. Ou talvez não — ele certamente reconheceria a falha de mercado.

Este capítulo integra ferramentas desenvolvidas ao longo do livro para analisar mercados de saúde. A **demanda por saúde** (Seção 23.2) conecta-se ao modelo de Grossman (1972), que trata a saúde como capital durável — uma extensão natural do Capítulo 18 (escolha intertemporal). O **risco moral** em seguros de saúde (Seção 23.4) aplica diretamente os conceitos do Capítulo 7 (incerteza e seguros) e do Capítulo 19 (informação assimétrica). A **oferta de serviços** (Seção 23.3) traz elementos de poder de mercado (Capítulo 15) e problema do agente (Capítulo 19). As **externalidades** de vacinação e controle de doenças contagiosas (Seção 23.6) são aplicações diretas do Capítulo 20. E a **comparação de sistemas de saúde** (Seção 23.5) ilustra o trade-off eficiência-equidade que permeia toda a análise de bem-estar.

A literatura acadêmica sobre economia da saúde é vasta. As referências centrais são Arrow (1963) para os fundamentos teóricos, Grossman (1972) para o modelo de demanda por saúde, Manning et al. (1987) para o RAND Health Insurance Experiment, Rothschild e Stiglitz (1976) para seleção adversa em seguros, e Cutler e Zeckhauser (2000) para uma revisão abrangente da economia de seguros de saúde. Para tratamentos de livro-texto, ver Zweifel, Breyer e Kifmann (2009) e Folland, Goodman e Stano (2017).

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 23.1 | Por que o mercado de saúde não funciona como o de sapatos? | Arrow (1963), falhas de mercado em saúde | [Arrow e Grossman](arrow-grossman.md#231) |
| 23.2 | Demandamos saúde ou demandamos consultas médicas? | Modelo de Grossman, demanda derivada | [Demanda](demanda-oferta.md#232) |
| 23.3 | O médico recomenda o que é bom para você ou o que é bom para ele? | Oferta de saúde, demanda induzida | [Oferta](demanda-oferta.md#233) |
| 23.4 | Como segurar saúde quando o segurado sabe mais que a seguradora? | Moral hazard e seleção adversa em seguros de saúde | [Seguros](seguros-sistemas.md#234) |
| 23.5 | SUS, NHS, Medicare — qual sistema funciona melhor? | Sistemas de saúde comparados | [Sistemas](seguros-sistemas.md#235) |
| 23.6 | Quanto vale um ano de vida a mais — e como medir isso? | Avaliação econômica: ACE, ACU, QALY | [Avaliação](avaliacao-externalidades.md#236) |
| 23.7 | Quanto custa um comprimido — e quem decide o preço? | CMED, genéricos, Farmácia Popular, regulação de preços | [Regulação Farmacêutica](regulacao-farmaceutica.md#237) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — O Mercado de Seguros de Saúde e a Espiral da Morte"

    **Formato:** Simulação de mercado de seguros com seleção adversa
    **Duração:** 40–50 minutos (10 preparação + 20 simulação + 10 debrief)
    **Material:** Fichas coloridas (uma por aluno), quadro para registro.

    **Preparação (10 min):**

    - Cada aluno recebe uma ficha com um **nível de risco secreto** (probabilidade de ficar "doente"): 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80% — distribuídos aleatoriamente.
    - Cada ficha também indica o **custo do tratamento** se doente: R$ 1.000 (igual para todos).
    - Explique: "Uma seguradora vai oferecer um plano de saúde a um preço único. Se você comprar e ficar doente, a seguradora paga seu tratamento. Se você não comprar e ficar doente, você paga do próprio bolso. Ao final, sorteamos quem ficou doente."
    - A seguradora (professor) calcula o prêmio atuarialmente justo com base na média dos riscos de TODOS os alunos.

    **Fase 1 — Prêmio único (rodadas 1–3, 10 min):**

    - Rodada 1: A seguradora anuncia o prêmio (= risco médio × R$ 1.000). Alunos decidem se compram.
    - Registre quem comprou. Calcule o risco médio dos compradores.
    - Rodada 2: Recalcule o prêmio com base no risco médio dos compradores da rodada anterior. Repita.
    - Rodada 3: Idem. **Resultado esperado:** espiral da morte — os baixo risco saem, o prêmio sobe, mais gente sai, até restar só alto risco (ou ninguém).

    **Fase 2 — Mandato individual (rodadas 4–5, 5 min):**

    - Agora TODOS são obrigados a comprar (mandato). O prêmio é recalculado com todos os riscos.
    - **Resultado esperado:** prêmio mais baixo, todos segurados, mercado estável.

    **Fase 3 — Subsídio cruzado (rodada 6, 5 min):**

    - Os baixo risco recebem um subsídio (desconto no prêmio). Compare quem compra e a estabilidade do mercado.

    **Debrief (10 min):**

    1. *"Por que os baixo risco saíram na Fase 1?"* → Seleção adversa: prêmio > valor esperado para eles.
    2. *"O que aconteceu com o prêmio a cada rodada?"* → Espiral da morte (Seção 23.4.2).
    3. *"O mandato resolveu?"* → Sim, mas a que custo? Liberdade de escolha vs. estabilidade do mercado.
    4. Conecte com: Rothschild-Stiglitz (Cap. 19), Obamacare (Box Mundo 23.3), ANS (Box Brasil 23.2).

    **Conexão com o capítulo:** Seções 23.4 (seleção adversa, espiral da morte, mandato individual).
