# Capítulo 10 — Mais Mãos, Mais Máquinas — Mais Produto?

Três padeiros, três fornos, mesma farinha — e um produz o dobro do outro. Os padeiros são parecidos, os fornos são iguais. O que difere? A *tecnologia*: a forma como insumos são combinados para gerar produto. Se você já se perguntou por que uma padaria com três fornos não triplica a produção só de contratar mais gente, parabéns — você já intuiu a lei mais testada da microeconomia.[^silly-walks-prod] Até agora, estudamos consumidores tentando espremer o máximo de felicidade de cada real. Agora trocamos de lado do balcão: entramos no mundo das **firmas**, agentes cuja razão de existir é transformar insumos (trabalho, capital, terra, materiais) em produtos e serviços. Compreender *como* essa transformação ocorre, quais são suas regularidades empíricas e como representá-la matematicamente é o objetivo central deste capítulo.

[^silly-walks-prod]: Os devotos de Monty Python reconhecerão aqui a lógica do *Ministry of Silly Walks*: o ministério emprega cada vez mais burocratas para desenvolver caminhadas absurdas, mas o produto marginal de cada burocrata adicional é claramente decrescente. O décimo funcionário provavelmente está apenas replicando o andar do terceiro com variação mínima. John Cleese, como Ministro, é o único insumo genuinamente produtivo — o resto é rendimento marginal decrescente em ação.

A **função de produção** é o instrumento analítico que sintetiza a tecnologia disponível para a firma. A partir dela, derivamos conceitos fundamentais — produtividade marginal, isoquantas, taxa marginal de substituição técnica (TMST), rendimentos de escala e elasticidade de substituição — que serão mobilizados nos capítulos seguintes para construir as curvas de custo e de oferta.

O material deste capítulo pressupõe familiaridade com as ferramentas matemáticas do Capítulo 2 — em especial diferenciação de funções multivariadas, regra da cadeia e diferenciação implícita — e conecta-se à teoria do consumidor do Capítulo 4 por meio de uma dualidade formal: a firma que minimiza custos sujeita a uma restrição de produto resolve um problema analiticamente idêntico ao do consumidor que minimiza gastos sujeita a uma restrição de utilidade. Essa dualidade, explorada nos Capítulos 11 e 12, permite derivar resultados sobre oferta e custos aproveitando diretamente a intuição desenvolvida no lado do consumidor.

!!! abstract "Roteiro do capítulo"

    <div class="chapter-roadmap" markdown>

    | Seção | Pergunta-guia | O que você vai aprender | Página |
    |:---:|---|---|:---:|
    | 10.1 | Contratar mais um padeiro aumenta a produção em quanto? | PMg, PMe, rendimentos marginais decrescentes | [Produtividade](produtividade.md) |
    | 10.2 | Que combinações de trabalho e capital geram o mesmo produto? | Isoquantas, TMST, taxa de troca entre insumos | [Isoquantas](isoquantas.md#102) |
    | 10.3 | Clonar a firma dobra o produto? | CRS, IRS, DRS — rendimentos de escala | [Rendimentos de escala](isoquantas.md#103) |
    | 10.4 | Quão fácil é trocar braços por máquinas? | Elasticidade de substituição σ | [Elasticidade](elasticidade.md) |
    | 10.5 | Que funções a profissão usa — e quando usar cada uma? | Linear, Leontief, Cobb-Douglas, CES | [Funções de produção](funcoes.md) |
    | 10.6 | De onde vem o crescimento que não é trabalho nem capital? | A(t), PTF, resíduo de Solow, neutralidade | [Progresso técnico](progresso.md#106) |
    | 10.7 | Quando o caminho de expansão é uma reta? | Funções homotéticas e separabilidade da função custo | [Homotéticas](progresso.md#107) |
    | 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Atividades, WebR, revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
    | 🔬 | O que a pesquisa recente diz? | Gasques et al., Oberfield & Raval, Solow, Griliches, Bustos et al. | [Pesquisa](pesquisa.md) |

    </div>

!!! classroom "Atividade em Sala — Fábrica de Aviões de Papel (20 min)"

    **Formato:** Experimento de sala de aula | **Duração:** 20 min | **Material:** Folhas A4, 1 tesoura e 1 régua por grupo, cronômetro

    **Protocolo:**

    1. **(3 min) Setup.** Grupos de 6 alunos. Cada grupo é uma "firma" com capital fixo: 1 tesoura, 1 régua, 1 mesa. O "produto" é um avião de papel padronizado (deve voar pelo menos 2 metros). Um aluno fica de fora como "gerente de qualidade" (controle).

    2. **(8 min) Rodadas de produção.** Rodada 1: apenas 1 aluno produz aviões por 2 min (anote TP₁). Rodadas 2–5: adicione 1 trabalhador por rodada (2 min cada). Anote TP₂ a TP₅.

    3. **(5 min) Cálculos.** Cada grupo calcula PMg (= TPₙ − TPₙ₋₁) e PMe (= TPₙ/n). Projete os resultados.

    4. **(4 min) Debrief.**
        - "O PMg cresceu ou caiu nas últimas rodadas?" → Tipicamente cai a partir do 3º ou 4º trabalhador.
        - "Em que rodada PMe atingiu o máximo? Era a rodada em que PMg = PMe?"
        - "Se eu desse a cada grupo uma segunda tesoura (dobrasse o capital), o que aconteceria?"
        - "Vocês acabaram de estimar uma função de produção de curto prazo. A Embrapa fez a mesma coisa com a soja — mas com dados de 50 anos."
