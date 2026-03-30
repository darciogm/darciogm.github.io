# Jogadores, Estratégias e o Dilema dos Prisioneiros

## 9a.1 As Regras do Tabuleiro: Jogadores, Estratégias e Payoffs

Antes de jogar, precisamos aprender as regras. A teoria dos jogos exige uma descrição completa do ambiente: quem joga, o que cada um pode fazer, e o que cada combinação de ações rende para cada jogador. Parece burocrático, mas é libertador — uma vez que o jogo está bem definido, a análise se torna mecânica. Duas representações capturam essa informação: a **forma normal** (uma tabela, ideal para jogos simultâneos como os deste capítulo) e a **forma extensiva** (uma árvore, ideal para jogos sequenciais do Módulo 9b).

!!! definition "Jogo na forma normal (ou estratégica)"
    Um jogo na **forma normal** é definido pela tripla \(\Gamma = \langle N, (S_i)_{i \in N}, (u_i)_{i \in N} \rangle\), onde:

    - \(N = \{1, 2, \ldots, n\}\) é o conjunto finito de **jogadores**.
    - \(S_i\) é o conjunto de **estratégias** disponíveis para o jogador \(i\). O perfil de estratégias é \(s = (s_1, s_2, \ldots, s_n) \in S = S_1 \times S_2 \times \cdots \times S_n\).
    - \(u_i: S \to \mathbb{R}\) é a função de **payoff** (utilidade) do jogador \(i\), que associa a cada perfil de estratégias um resultado para \(i\).

!!! definition "Jogo na forma extensiva"
    Um jogo na **forma extensiva** é representado por uma árvore de decisão que especifica:

    - A ordem cronológica das jogadas.
    - Os conjuntos de informação de cada jogador (o que cada um sabe quando decide).
    - As ações disponíveis em cada nó de decisão.
    - Os payoffs nos nós terminais.
    - A distribuição de probabilidade nos nós da natureza (se houver).

    A forma extensiva é especialmente útil para jogos **sequenciais** (Módulo 9b) e jogos com **informação imperfeita**.

Com essas duas representações em mãos, podemos definir os conceitos que serão utilizados ao longo de todo o capítulo. Quais são os ingredientes mínimos que um jogador racional precisa considerar ao tomar uma decisão? A resposta passa pelas noções de estratégia, dominância e melhor resposta. É importante distinguir o conceito de *estratégia* do conceito de *ação*: em jogos estáticos as duas noções coincidem, mas em jogos dinâmicos (Módulo 9b) uma estratégia é um plano completo que especifica a ação do jogador em *cada* nó de decisão — inclusive aqueles que não são alcançados no equilíbrio. Essa distinção, aparentemente pedante, tem consequências profundas para o refinamento de equilíbrios.

### 🔑 Conceitos auxiliares

- **Estratégia pura**: uma escolha determinística de ação, \(s_i \in S_i\).
- **Estratégia mista**: uma distribuição de probabilidade sobre as estratégias puras, \(\sigma_i \in \Delta(S_i)\).
- **Estratégia dominante**: \(s_i^*\) é (estritamente) dominante se \(u_i(s_i^*, s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_i \neq s_i^*\) e todo \(s_{-i} \in S_{-i}\).
- **Estratégia dominada**: \(s_i\) é dominada se existe \(s_i'\) tal que \(u_i(s_i', s_{-i}) > u_i(s_i, s_{-i})\) para todo \(s_{-i}\).
- **Notação \(s_{-i}\)**: perfil de estratégias de todos os jogadores *exceto* \(i\), ou seja, \(s_{-i} = (s_1, \ldots, s_{i-1}, s_{i+1}, \ldots, s_n)\).

!!! definition "Estratégia Dominante"
    A estratégia \(s_i^* \in S_i\) é **estritamente dominante** para o jogador \(i\) se, para toda estratégia alternativa \(s_i \in S_i\) com \(s_i \neq s_i^*\) e para todo perfil de estratégias dos demais jogadores \(s_{-i} \in S_{-i}\):

    \[
    u_i(s_i^*, s_{-i}) > u_i(s_i, s_{-i})
    \]

    Ou seja, \(s_i^*\) é estritamente ótima **independentemente** do que os outros jogadores façam. Um jogador racional sempre joga sua estratégia dominante quando ela existe — e, se todos os jogadores têm estratégia dominante, a solução do jogo é trivial.

    A estratégia dominante é **fracamente** dominante se a desigualdade for \(\geq\) (em vez de \(>\)) e estrita em ao menos um perfil \(s_{-i}\).

### Eliminação Iterada de Estratégias Dominadas (EIED)

A noção de dominância já sugere um primeiro método de solução. Se um jogador racional jamais escolheria uma estratégia estritamente dominada, e se todos sabem que todos são racionais (e que todos sabem que todos são racionais, *ad infinitum* — a condição de **conhecimento comum de racionalidade**), então é possível eliminar essas estratégias e simplificar o jogo. Repetindo esse raciocínio — agora no jogo reduzido — chega-se ao procedimento de Eliminação Iterada de Estratégias Estritamente Dominadas (EIED).

Este é um procedimento de solução que não requer o conceito de equilíbrio: elimine, iterativamente, as estratégias estritamente dominadas de cada jogador. O conjunto de estratégias que sobrevive a todas as rodadas de eliminação é o conjunto de **estratégias racionalizáveis**. Quando a EIED leva a um único perfil de estratégias, dizemos que o jogo é **dominância-solucionável** — o resultado decorre apenas da hipótese de racionalidade sem necessidade de coordenação de expectativas. O Dilema dos Prisioneiros é o exemplo canônico: trair domina cooperar para ambos os jogadores, e a EIED resolve o jogo em uma única rodada. Nos mercados financeiros, esse raciocínio embasou a crítica de Milgrom e Stokey (1982) ao paradoxo do não-comércio: se os preços de mercado revelam informação, é difícil que ambos os lados de uma transação acreditem, simultaneamente, estar em vantagem.

!!! warning "Ordem de eliminação"
    Para estratégias **estritamente** dominadas, o resultado da EIED independe da ordem de eliminação. Para estratégias **fracamente** dominadas, a ordem pode afetar o conjunto sobrevivente — um resultado frequentemente cobrado em provas da ANPEC.

---

## 9a.2 Por Que Mafiosos Confessam: O Dilema dos Prisioneiros

Com a linguagem formal estabelecida, podemos agora examinar os jogos que deram forma à teoria. Começamos pelo mais influente de todos — um jogo tão simples que pode ser descrito em uma frase, mas tão profundo que suas implicações permeiam a economia, a ciência política e a biologia.

O **Dilema dos Prisioneiros** é possivelmente o jogo mais célebre da teoria dos jogos. A história da sua criação é ela mesma fascinante: formulado em 1950 por Merrill Flood e Melvin Dresher no laboratório RAND, e batizado pelo matemático Albert Tucker (orientador de Nash) ao apresentá-lo para uma plateia de psicólogos em Stanford, o Dilema dos Prisioneiros captura, com elegância mínima, a tensão estrutural entre interesse individual e bem coletivo. Dois suspeitos são interrogados separadamente e cada um pode cooperar (ficar calado) ou trair (delatar o outro). A narrativa da prisão é apenas um disfarce: a mesma estrutura de payoffs aparece na corrida armamentista entre países, na concorrência predatória entre firmas, na tragédia dos comuns e na guerra fiscal entre estados brasileiros. É precisamente essa universalidade que torna o Dilema dos Prisioneiros o caso de teste obrigatório para qualquer teoria de comportamento estratégico.

<a id="tabela-9a-1"></a>

|  | Jogador 2: Cooperar | Jogador 2: Trair |
|:---|:---:|:---:|
| **Jogador 1: Cooperar** | \((-1, -1)\) | \((-10, 0)\) |
| **Jogador 1: Trair** | \((0, -10)\) | \((-5, -5)\) |

<div class="caption-obj" markdown>
**Tabela 9a.1 — Dilema dos Prisioneiros.**
</div>

A estrutura de payoffs satisfaz: \(T > R > P > S\) (onde \(T\) = tentação, \(R\) = recompensa mútua, \(P\) = punição, \(S\) = *sucker's payoff*), com a condição adicional \(2R > T + S\). Essa parametrização não é arbitrária: a desigualdade \(T > R\) garante que trair seja tentador quando o outro coopera; \(R > P\) garante que a cooperação mútua seja preferível à traição mútua; e \(P > S\) garante que ser traído enquanto se coopera é o pior resultado possível. A condição \(2R > T + S\) assegura que a cooperação mútua gera mais valor total do que a alternância entre traição e cooperação.

Cada jogador tem uma **estratégia estritamente dominante**: Trair. O equilíbrio (Trair, Trair) com payoffs \((-5, -5)\) é o único equilíbrio de Nash, mas é **Pareto-dominado** pelo resultado (Cooperar, Cooperar) com payoffs \((-1, -1)\). Essa tensão entre racionalidade individual e eficiência coletiva é o cerne do dilema. Vale notar que o resultado (Cooperar, Cooperar), embora superior para ambos, *não* é um equilíbrio de Nash: cada jogador teria incentivo unilateral para desviar e trair. O equilíbrio de Nash é um ponto de estabilidade — ninguém deseja mover-se sozinho — mas estabilidade não implica eficiência.

!!! warning "⚠️ Erro Comum"
    **Supor que o equilíbrio de Nash é sempre eficiente (Pareto-ótimo).** O Dilema dos Prisioneiros demonstra, de forma definitiva, que o equilíbrio de Nash pode ser **Pareto-dominado**: existe outro resultado factível em que *todos* os jogadores estão melhor, mas esse resultado não é sustentável pela racionalidade individual.

    Em linguagem econômica: o equilíbrio de Nash é uma condição de **estabilidade** (ninguém quer desviar unilateralmente), não de **eficiência** (ninguém poderia estar melhor sem prejudicar alguém). As duas propriedades coincidem em mercados perfeitamente competitivos (Primeiro Teorema do Bem-Estar, Capítulo 7), mas divergem em situações de externalidades, poder de mercado ou interação estratégica. A distinção importa na prática: reguladores como o CADE, ao reprimir cartéis, estão precisamente forçando a transição de um equilíbrio de Nash eficiente para as firmas (conluio) para um equilíbrio menos lucrativo para elas, mas superior do ponto de vista do bem-estar social.

    **Outros exemplos de EN Pareto-dominados:** corrida armamentista entre nações (ambas estariam melhor sem armas, mas nenhuma quer desarmar sozinha), propaganda excessiva em mercados oligopolísticos (anular a publicidade do rival é sempre dominante, mesmo que ambas as firmas preferissem cortar gastos de marketing), e tragédia dos comuns na exploração de recursos pesqueiros.

!!! idea "Intuição Econômica"
    **Em uma frase:** No Dilema dos Prisioneiros, cada um faz o melhor para si e o resultado é ruim para todos.

    **Pense assim:** Dois quiosques vizinhos na praia de Copacabana poderiam manter preços altos e lucrar bem. Mas cada um pensa: "se eu baixar o preço, roubo os clientes do vizinho". Ambos baixam, ambos lucram menos — e nenhum consegue voltar atrás sozinho.

    **Por que isso importa:** A guerra fiscal entre estados brasileiros, os cartéis de postos de gasolina e o desmatamento da Amazônia são versões reais desse dilema — situações em que o interesse individual corrói o bem coletivo. A repetição do jogo (Módulo 9b) e o desenho institucional são os mecanismos para escapar da armadilha.

<iframe id="iframe-9a1" src="/micro-book/graficos/cap09/matriz-payoffs.html" title="Figura 9a.1 — Matriz de payoffs e equilíbrio de Nash" class="graph-iframe" style="height:750px;overflow:hidden" scrolling="no"></iframe>

<script>
window.addEventListener('message', function(e) {
  if (e.data && e.data.iframeHeight) {
    var iframe = document.getElementById('iframe-9a1');
    if (iframe && e.data.src && iframe.src && e.data.src.indexOf('matriz-payoffs') !== -1) {
      iframe.style.height = (e.data.iframeHeight + 40) + 'px';
    }
  }
});
</script>

<div class="caption-obj" markdown>
**Figura 9a.1 — Matriz de payoffs e equilíbrio de Nash.** Edite os payoffs ou selecione um jogo clássico (Dilema dos Prisioneiros, Batalha dos Sexos, Hawk-Dove, Matching Pennies). O solver detecta estratégias dominantes, equilíbrios de Nash em puras e mistas.
</div>

!!! box-brasil "Brasil na Prática — Operação Lava Jato: o dilema do prisioneiro na delação premiada"

    **Contexto.** A Operação Lava Jato (2014–2021) utilizou extensivamente a **colaboração premiada** (Lei 12.850/2013), em que réus recebem redução de pena em troca de informação sobre co-conspiradores. A estrutura é *exatamente* um dilema dos prisioneiros: dois executivos acusados de corrupção, interrogados separadamente, devem decidir se colaboram (delatam) ou permanecem calados.

    **Payoffs estilizados.** Suponha dois executivos da empreiteira, A e B:

    |  | B: Calar | B: Delatar |
    |:---|:---:|:---:|
    | **A: Calar** | (−5, −5) — pena média | (−15, −1) |
    | **A: Delatar** | (−1, −15) — A sai leve | (−8, −8) — ambos delatam |

    Se ambos calam, a investigação tem menos provas (pena intermediária). Se um delata e o outro cala, o delator recebe grande redução; o calado recebe pena máxima. Se ambos delatam, as provas se acumulam, mas ambos recebem benefício parcial. **Delatar é estratégia dominante** — exatamente como no modelo. Resultado: ~180 acordos de delação até 2019.

    **Conexão com a teoria.** O mecanismo da delação premiada é um design de mecanismos (Capítulo 9c) que *explora* a estrutura do dilema do prisioneiro: cria um incentivo individual tão forte para delatar que a cooperação entre criminosos se torna insustentável. É Trair como equilíbrio de Nash — mas agora a "traição" serve ao interesse público.

    **Fonte:** MPF, *Caso Lava Jato — Resultados*, 2021; Lei 12.850/2013 (Lei das Organizações Criminosas).

!!! box-brasil "Brasil na Prática — Licitações públicas e conluio: o jogo se repete"

    **Contexto.** O CADE (Conselho Administrativo de Defesa Econômica) investiga regularmente cartéis em licitações públicas, onde empresas coordenam lances para garantir preços altos. Entre 2006 e 2024, o CADE condenou cartéis em licitações de obras públicas (metrô de SP, Petrobras), material hospitalar, ambulâncias e merenda escolar.

    **A estrutura do jogo.** Em uma licitação de menor preço, $N$ empresas decidem simultaneamente seus lances. Sem conluio, a competição à la Bertrand (Seção 9a.5) levaria o preço para o custo marginal. Com conluio, as empresas designam um "vencedor" que cobra preço alto, e as demais apresentam propostas "de fachada" (lance de cobertura). A divisão do sobrepreço é combinada em rodízio ao longo de múltiplas licitações — um jogo repetido (Módulo 9b) sustentado pelo *folk theorem*.

    **Dados.** No cartel do metrô de São Paulo (2013), seis construtoras combinaram lances por mais de uma década. O sobrepreço estimado foi de 20–30% em obras que totalizaram R$ 7+ bilhões. A multa aplicada pelo CADE totalizou R$ 534 milhões. No cartel de ambulâncias (2022), 14 empresas dividiram licitações em 14 estados por 8 anos.

    **Fonte:** CADE, *Relatório de Gestão*, 2024; TCU, *Relatórios de auditoria em licitações*.

O Dilema dos Prisioneiros não é, contudo, o único arquétipo de interação estratégica. Diferentes configurações de payoffs capturam problemas econômicos fundamentalmente distintos — coordenação, anti-coordenação, competição pura. A [Tabela 9a.2](#tabela-9a-2) sistematiza os jogos clássicos que servirão de referência ao longo dos quatro módulos de teoria dos jogos.

### Taxonomia dos Jogos Clássicos

<a id="tabela-9a-2"></a>

| Jogo | Payoffs (genéricos) | EN em puras | EN em mistas | Característica | Aplicação |
|:-----|:-------------------|:------------|:------------|:---------------|:----------|
| **Dilema dos Prisioneiros** | \(T > R > P > S\); \(2R > T+S\) | (Trair, Trair) — único | — | Dominância estrita; ineficiência | Cartéis, corrida armamentista |
| **Batalha dos Sexos** | Coordenação com preferências divergentes | (F,F) e (C,C) | Sim — ver Seção 9a.4 | Múltiplos equilíbrios | Padrões tecnológicos |
| **Hawk-Dove** | \(V>0\), \(C > V\) | (H,D) e (D,H) | \(p_H = V/C\) | Anti-coordenação | Disputas territoriais |
| **Coordenação Pura** | Payoffs altos na diagonal | (A,A) e (B,B) | Sim (instável) | Seleção de equilíbrio | Convenções sociais |
| **Matching Pennies** | Soma zero; interesses opostos | Nenhum | \((1/2, 1/2)\) cada | Jogo estritamente competitivo | Estratégias militares, esportes |

<div class="caption-obj" markdown>
**Tabela 9a.2 — Taxonomia dos jogos clássicos.**
</div>

??? r-interactive "R Interativo — Simulação do Dilema dos Prisioneiros Repetido"

    Simule um torneio entre estratégias clássicas no Dilema dos Prisioneiros repetido (à la Axelrod, 1984). Compare *tit-for-tat*, *always cooperate*, *always defect*, *grim trigger* e *random*.

    ```r
    # Torneio do Dilema dos Prisioneiros Repetido
    set.seed(42)
    n_rodadas <- 50

    # Payoffs: (R, R) = (3,3); (T, S) = (5,0); (S, T) = (0,5); (P, P) = (1,1)
    payoff <- function(a, b) {
      ifelse(a == "C" & b == "C", 3,
        ifelse(a == "C" & b == "D", 0,
          ifelse(a == "D" & b == "C", 5, 1)))
    }

    # Estratégias
    always_c  <- function(hist_me, hist_opp, t) "C"
    always_d  <- function(hist_me, hist_opp, t) "D"
    tit4tat   <- function(hist_me, hist_opp, t) ifelse(t == 1, "C", hist_opp[t-1])
    grim      <- function(hist_me, hist_opp, t) {
      if(t == 1) return("C")
      ifelse(any(hist_opp[1:(t-1)] == "D"), "D", "C")
    }
    random_s  <- function(hist_me, hist_opp, t) sample(c("C","D"), 1)

    estrategias <- list(
      "Tit-for-Tat" = tit4tat, "Always Cooperate" = always_c,
      "Always Defect" = always_d, "Grim Trigger" = grim, "Random" = random_s
    )

    # Simular duelo
    duelo <- function(s1, s2, n) {
      h1 <- h2 <- character(n)
      p1 <- p2 <- numeric(n)
      for(t in 1:n) {
        h1[t] <- s1(h1, h2, t); h2[t] <- s2(h2, h1, t)
        p1[t] <- payoff(h1[t], h2[t]); p2[t] <- payoff(h2[t], h1[t])
      }
      c(sum(p1), sum(p2))
    }

    # Torneio round-robin
    nomes <- names(estrategias)
    scores <- setNames(rep(0, 5), nomes)
    for(i in 1:5) for(j in 1:5) {
      res <- duelo(estrategias[[i]], estrategias[[j]], n_rodadas)
      scores[i] <- scores[i] + res[1]
    }

    # Resultado
    barplot(sort(scores, decreasing = TRUE), col = "steelblue",
            main = "Torneio Axelrod — Pontuação Total",
            ylab = "Payoff acumulado", las = 2, cex.names = 0.8)
    cat("Ranking:\n")
    print(sort(scores, decreasing = TRUE))
    ```

    **Experimente:** Altere `n_rodadas` para 5 ou 200. Com poucas rodadas, *Always Defect* se sai melhor? Com muitas, *Tit-for-Tat* domina? Essa é a intuição do folk theorem: cooperação emerge quando o futuro importa.
