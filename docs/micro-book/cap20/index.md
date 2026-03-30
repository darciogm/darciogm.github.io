# Capítulo 20 — Fumaça, Caronas e Tragédias

Seu vizinho resolve criar galos. Às 5h da manhã, o canto ecoa pelo quarteirão — e o preço do imóvel ao lado despenca. O vizinho não pagou nada por isso. O mercado de galos funcionou perfeitamente; o mercado de noites bem dormidas, não. Bem-vindo ao mundo das externalidades — onde o prejuízo de um não aparece na conta de ninguém.[^life-of-brian]

[^life-of-brian]: *"What have the Romans ever done for us?"* Em *A Vida de Brian*, os rebeldes tentam enumerar motivos para odiar os romanos — mas só conseguem listar bens públicos: aquedutos, estradas, saneamento, irrigação, saúde pública, educação, vinho, ordem pública e a paz. A cena é a melhor análise custo-benefício de bens públicos já filmada. O líder do grupo, frustrado, repete a pergunta — e a cada repetição alguém lembra de mais um benefício. É a condição de Samuelson em ação: a soma dos benefícios marginais (aqueduto + estrada + saneamento + ...) excede claramente o custo marginal (a ocupação romana). Até os rebeldes, relutantemente, concordam. *"All right, but apart from the sanitation, the medicine, education, wine, public order, irrigation, roads, a fresh water system, and public health, what have the Romans ever done for us?"*

Nos capítulos anteriores, demonstramos que mercados competitivos com informação completa conduzem a alocações Pareto-eficientes — o resultado central dos Teoremas do Bem-Estar. Entretanto, essa conclusão depende criticamente da hipótese de que todas as interações entre agentes econômicos ocorrem via mecanismo de preços. Quando as ações de um agente afetam diretamente o bem-estar de outros **fora do sistema de preços**, surgem as **externalidades** — e a alocação de mercado deixa de ser eficiente.

Da mesma forma, certos bens possuem características que tornam o mecanismo de mercado inadequado para sua provisão: bens **não-rivais** e **não-excludentes** — os chamados **bens públicos** — tendem a ser subprovidos pelo mercado devido ao problema do **carona** (free rider).

Este capítulo analisa essas duas importantes **falhas de mercado** e discute as principais soluções propostas pela teoria econômica: impostos pigouvianos, o Teorema de Coase, mercados de permissão de emissão, preços de Lindahl e mecanismos de revelação de preferências. Essas questões assumem importância crescente no debate sobre políticas ambientais, saúde pública e infraestrutura.

A análise de externalidades e bens públicos tem raízes profundas na história do pensamento econômico. Já Alfred Marshall, nos *Principles of Economics* (1890), reconhecia a existência de "economias externas" — benefícios que a atividade de uma firma gerava para outras firmas ou para a sociedade sem compensação pelo mercado. Contudo, foi Arthur Cecil Pigou quem, em *The Economics of Welfare* (1920), sistematizou a análise das externalidades como divergência entre custo privado e custo social, propondo a intervenção fiscal como mecanismo de correção. Quatro décadas depois, Ronald Coase (1960) desafiou a prescrição pigouviana, argumentando que a negociação privada poderia, sob certas condições, alcançar a eficiência sem intervenção estatal. Esse debate Pigou–Coase permanece no centro da economia ambiental e da análise econômica do direito até hoje. Do lado dos bens públicos, a contribuição seminal de Paul Samuelson (1954) formalizou a condição de eficiência que distingue radicalmente bens públicos de bens privados, inaugurando a moderna teoria da economia do setor público.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 20.1 | Quando a ação de um afeta o bem-estar de outro sem passar pelo mercado? | Definição e tipologia de externalidades | [Externalidades](externalidades.md#201) |
| 20.2 | Por que a poluição é excessiva se ninguém paga por ela? | Externalidades e ineficiência alocativa | [Ineficiência](externalidades.md#202) |
| 20.3 | Como medir o custo social de uma externalidade? | Modelo de equilíbrio parcial com externalidade | [Modelo](modelo-solucoes.md#203) |
| 20.4 | Imposto, negociação ou regulação — o que resolve melhor? | Pigou, Coase, cap-and-trade | [Soluções](modelo-solucoes.md#204) |
| 20.5 | O que torna um bem "público" — e por que o mercado falha em provê-lo? | Não rivalidade, não exclusibilidade | [Bens públicos](bens-publicos.md#205) |
| 20.6 | Quanto de bem público a sociedade deveria produzir? | Condição de Samuelson, soma vertical | [Alocação](bens-publicos.md#206) |
| 20.7 | Existe um preço personalizado que faz todo mundo pagar pelo que valoriza? | Preços de Lindahl | [Lindahl](lindahl-carona.md#207) |
| 20.8 | Por que todo mundo quer pegar carona e ninguém quer pagar? | Free-rider, provisão voluntária | [Carona](lindahl-carona.md#208) |
| 20.9 | A maioria vota bem — ou vota mal? | Votação, teorema do eleitor mediano | [Votação](votacao-mecanismos.md#209) |
| 20.10 | Como fazer as pessoas revelarem quanto realmente valorizam o bem público? | Mecanismos de revelação, VCG | [Revelação](votacao-mecanismos.md#2010) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — Jogo de Bens Públicos (Contribuição Voluntária)"

    **Formato:** Experimento de contribuição voluntária com e sem punição
    **Duração:** 40–45 minutos (20 rodadas + 15 debrief + 10 discussão)
    **Material:** Fichas ou moedas (10 por aluno), quadro para registrar contribuições.

    **Preparação (5 min):**

    - Divida a turma em grupos de 4–5 alunos.
    - Cada aluno recebe 10 fichas por rodada.
    - Regra: cada ficha mantida rende 1 ponto ao aluno. Cada ficha contribuída ao "fundo público" do grupo rende 0,4 pontos **para cada membro** do grupo (incluindo o contribuidor).
    - Com 5 membros, o retorno social de 1 ficha contribuída = 5 × 0,4 = 2,0 > 1,0 (custo privado). Contribuir é socialmente eficiente. Mas individualmente, contribuir 1 ficha retorna apenas 0,4 para o contribuidor — menos que manter (1,0). Free-riding é individualmente racional.

    **Fase 1 — Sem punição (rodadas 1–8, 10 min):**

    - Cada rodada: alunos decidem secretamente quantas fichas contribuir (0–10).
    - O professor soma as contribuições, calcula o retorno e registra no quadro.
    - **Resultado esperado:** Contribuições começam em 40–60% e caem para 10–20% até a rodada 8. O free-riding emerge.

    **Fase 2 — Com punição (rodadas 9–16, 10 min):**

    - Nova regra: após a revelação, cada aluno pode gastar 1 ficha para retirar 3 fichas de outro membro (punição).
    - **Resultado esperado:** Contribuições sobem para 60–90%. Free-riders são punidos. Cooperação se sustenta (Fehr & Gächter, 2000).

    **Fase 3 — Com comunicação (rodadas 17–20, 5 min, opcional):**

    - Permita 2 min de conversa antes de cada rodada.
    - **Resultado esperado:** Contribuições próximas de 100%. Comunicação é poderosamente eficaz (Ostrom et al., 1992).

    **Debrief (15 min):**

    1. Plote as contribuições médias por rodada no quadro. Identifique os padrões.
    2. Pergunte: *"Por que as contribuições caíram sem punição?"* → Problema do carona (Seção 20.8).
    3. Pergunte: *"Por que a punição funciona, mesmo sendo custosa para quem pune?"* → Punição altruísta, normas sociais.
    4. Pergunte: *"O que muda quando vocês podem conversar?"* → Compromissos, reputação (Ostrom).
    5. Conecte: condição de Samuelson (retorno social > custo), subprovisão (Nash), Lindahl (preços personalizados).

    **Conexão com o capítulo:** Seções 20.5–20.8. O experimento segue Fehr & Gächter (2000) e Holt (2007, Cap. 23).
