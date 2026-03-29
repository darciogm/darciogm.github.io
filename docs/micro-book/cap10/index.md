# Capítulo 10 — Mais Mãos, Mais Máquinas — Mais Produto?

Três padeiros, três fornos, mesma farinha — e um produz o dobro do outro. Os padeiros são parecidos, os fornos são iguais. O que difere? A *tecnologia*: a forma como insumos são combinados para gerar produto. Se você já se perguntou por que uma padaria com três fornos não triplica a produção só de contratar mais gente, parabéns — você já intuiu a lei mais testada da microeconomia.[^silly-walks-prod] Até agora, estudamos consumidores tentando espremer o máximo de felicidade de cada real. Agora trocamos de lado do balcão: entramos no mundo das **firmas**, agentes cuja razão de existir é transformar insumos (trabalho, capital, terra, materiais) em produtos e serviços. Compreender *como* essa transformação ocorre, quais são suas regularidades empíricas e como representá-la matematicamente é o objetivo central deste capítulo.

[^silly-walks-prod]: Os devotos de Monty Python reconhecerão aqui a lógica do *Ministry of Silly Walks*: o ministério emprega cada vez mais burocratas para desenvolver caminhadas absurdas, mas o produto marginal de cada burocrata adicional é claramente decrescente. O décimo funcionário provavelmente está apenas replicando o andar do terceiro com variação mínima. John Cleese, como Ministro, é o único insumo genuinamente produtivo — o resto é rendimento marginal decrescente em ação.

A **função de produção** é o instrumento analítico que sintetiza a tecnologia disponível para a firma. A partir dela, derivamos conceitos fundamentais — produtividade marginal, isoquantas, taxa marginal de substituição técnica (TMST), rendimentos de escala e elasticidade de substituição — que serão mobilizados nos capítulos seguintes para construir as curvas de custo e de oferta.

O material deste capítulo pressupõe familiaridade com as ferramentas matemáticas do Capítulo 2 — em especial diferenciação de funções multivariadas, regra da cadeia e diferenciação implícita — e conecta-se à teoria do consumidor do Capítulo 4 por meio de uma dualidade formal: a firma que minimiza custos sujeita a uma restrição de produto resolve um problema analiticamente idêntico ao do consumidor que minimiza gastos sujeita a uma restrição de utilidade. Essa dualidade, explorada nos Capítulos 11 e 12, permite derivar resultados sobre oferta e custos aproveitando diretamente a intuição desenvolvida no lado do consumidor.

!!! abstract "Roteiro do capítulo"

    <div class="chapter-roadmap" markdown>

    | Seção | Tema | Ideia central | Página |
    |:---:|---|---|---|
    | **10.1** | [Produto marginal e médio](produtividade.md) | PMg, PMe, rendimentos marginais decrescentes | [→](produtividade.md) |
    | **10.2** | [Isoquantas e TMST](isoquantas.md#102) | Curvas de nível da função de produção; taxa de troca entre insumos | [→](isoquantas.md#102) |
    | **10.3** | [Rendimentos de escala](isoquantas.md#103) | CRS, IRS, DRS — clonar a firma dobra o produto? | [→](isoquantas.md#103) |
    | **10.4** | [Elasticidade de substituição](elasticidade.md) | σ: quão fácil é trocar braços por máquinas? | [→](elasticidade.md) |
    | **10.5** | [Catálogo de funções de produção](funcoes.md) | Linear, Leontief, Cobb-Douglas, CES | [→](funcoes.md) |
    | **10.6** | [Progresso técnico e resíduo de Solow](progresso.md#106) | A(t), PTF, neutralidade de Hicks/Harrod/Solow | [→](progresso.md#106) |
    | **10.7** | [Funções homotéticas](progresso.md#107) | Caminho de expansão linear e separabilidade da função custo | [→](progresso.md#107) |
    | | [Exercícios e ANPEC](exercicios.md) | Atividades, WebR, revisão rápida, exercícios propostos, questões ANPEC | [→](exercicios.md) |
    | | [Pesquisa em Ação](pesquisa.md) | Gasques et al., Oberfield & Raval, Solow, Griliches, Bustos et al. | [→](pesquisa.md) |

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
