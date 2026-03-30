# Ninguém Quer Mudar: O Equilíbrio de Nash

## 9a.3 Ninguém Quer Mudar: O Equilíbrio de Nash

No Dilema dos Prisioneiros, a solução era fácil: trair domina cooperar, aconteça o que acontecer. Mas a maioria dos jogos não é tão generosa. Na Batalha dos Sexos, por exemplo, a melhor ação depende do que o outro jogador faz — não existe "bala de prata". Como prever o resultado quando nenhuma estratégia é obviamente superior?

O equilíbrio de Nash é a ferramenta que generaliza essa lógica: em vez de exigir que uma estratégia ganhe *de tudo*, exige apenas que cada jogador esteja fazendo o melhor *dado o que o outro faz*. É menos ambicioso que dominância — e por isso funciona em muito mais jogos.

A resposta de Nash — elegante a ponto de caber numa tese de doutorado de 28 páginas, defendida em Princeton em 1950 sob orientação de Albert Tucker[^nash-tese] — é trocar de pergunta. Em vez de buscar uma estratégia boa *contra tudo*, buscar estratégias que sejam boas *umas contra as outras*. O equilíbrio de Nash é um perfil de estratégias que se *sustenta a si próprio*: se cada jogador acredita que os demais jogarão as estratégias de equilíbrio, então é de fato ótimo para ele jogar sua estratégia de equilíbrio — e a crença se confirma. Essa mudança de perspectiva — de dominância absoluta para consistência mútua — é o salto conceitual que permitiu a Nash generalizar a análise para qualquer jogo.

[^nash-tese]: A tese de Nash, *Non-Cooperative Games* (1950), é possivelmente o documento mais conciso e impactante da história da ciência econômica — 28 páginas que revolucionaram três campos simultaneamente (economia, matemática e ciência política). Para comparação, a tese média de doutorado em economia tem cerca de 150 páginas. Nash estava, aparentemente, demasiado ocupado sendo genial para ser prolixo.

Essa propriedade de auto-sustentação tem uma leitura econômica poderosa: o equilíbrio de Nash é uma **previsão estável** de como agentes racionais e informados jogarão. Não é necessário supor que os jogadores se comuniquem ou façam acordos vinculantes — basta que cada um raciocine corretamente sobre o comportamento dos demais. Em mercados financeiros, os preços de ativos tendem a refletir equilíbrios de Nash entre investidores que simultaneamente tentam explorar desvios de preços e, ao fazê-lo, os eliminam. Em leilões (Capítulo 9c), os lances de equilíbrio são funções das informações privadas de cada participante que formam um equilíbrio bayesiano — generalização direta do conceito de Nash.

Antes da definição formal, a intuição: um equilíbrio de Nash é uma situação em que *ninguém se arrepende*. Cada jogador, ao ver o que os outros fizeram, pensa 'eu não mudaria nada'. Não é o melhor resultado coletivo (o PD mostrou isso), mas é o resultado *estável* — aquele do qual ninguém desvia sozinho.

!!! definition "Equilíbrio de Nash (estratégias puras)"
    Um perfil de estratégias \(s^* = (s_1^*, s_2^*, \ldots, s_n^*)\) é um **Equilíbrio de Nash** se, para todo jogador \(i \in N\):

    \[
    u_i(s_i^*, s_{-i}^*) \geq u_i(s_i, s_{-i}^*) \quad \forall \; s_i \in S_i
    \label{eq:9a.1} \tag{9a.1}
    \]

    Em palavras: nenhum jogador pode melhorar unilateralmente seu payoff desviando de \(s_i^*\), dado que os demais jogadores mantêm suas estratégias de equilíbrio.

A definição $\eqref{eq:9a.1}$ estabelece um conceito de **consistência mútua de expectativas** (Gibbons, 1992, Cap. 1): se cada jogador espera que os demais joguem suas estratégias de equilíbrio, então é ótimo para ele também jogar sua estratégia de equilíbrio. Ninguém tem incentivo para desviar unilateralmente.

!!! idea "Intuição Econômica"
    **O equilíbrio de Nash como "ausência de arrependimento" (*no-regret*).**

    Uma forma intuitiva e memorável de entender o equilíbrio de Nash: um perfil de estratégias \(s^*\) é um equilíbrio de Nash se e somente se **nenhum jogador, ao revelar o que os outros fizeram, deseja ter escolhido diferente**. Depois de ver as ações de todos os demais, cada jogador confirma: "Dada a escolha dos outros, eu não poderia ter feito melhor."

    Isso distingue o equilíbrio de Nash de um resultado *ex ante* ótimo (que seria o ótimo de Pareto) e de uma estratégia dominante (que é ótima *contra qualquer coisa*). O Nash é o ponto onde expectativas e ações se alinham retroativamente — um estado de **consistência epistêmica**.

    **Cuidado com a interpretação causal.** O equilíbrio de Nash não diz que os jogadores *chegam* a esse ponto por algum processo de aprendizado. Ele descreve o que acontece *se* os jogadores têm expectativas corretas sobre as ações dos demais. Como chegam a ter essas expectativas é questão separada — respondida pelos modelos de aprendizado em jogos (fictitious play, best-response dynamics) que vão além do escopo deste módulo.

!!! info "🏅 Prêmio Nobel — John Nash, John Harsanyi e Reinhard Selten (1994)"

    **John Forbes Nash Jr.** (1928–2015) foi um matemático americano, PhD em Princeton, onde formulou o conceito de equilíbrio que leva seu nome. **John Charles Harsanyi** (1920–2000) foi um economista húngaro-americano, PhD em Stanford, professor em Berkeley. **Reinhard Selten** (1930–2016) foi um economista alemão, PhD em Frankfurt, professor em Bonn.

    **Por que ganharam o Nobel:**
    Premiados por sua análise pioneira de equilíbrios em jogos não cooperativos. Nash demonstrou a existência de pelo menos um equilíbrio em estratégias mistas para todo jogo finito (1950). Harsanyi estendeu a teoria para jogos com informação incompleta, introduzindo o equilíbrio bayesiano (1967–68). Selten refinou o conceito para jogos dinâmicos com o equilíbrio perfeito em subjogos (1965).

    **Conexão com este capítulo:**
    O equilíbrio de Nash — perfil de estratégias em que nenhum jogador pode melhorar unilateralmente — é o conceito central deste capítulo. Toda a análise de jogos estáticos com informação completa se organiza em torno da identificação e interpretação desses equilíbrios.

!!! idea "Intuição Econômica"
    **Em uma frase:** No equilíbrio de Nash, ninguém se arrepende da própria escolha depois de ver o que os outros fizeram.

    **Pense assim:** Pense no trânsito de São Paulo: se todo mundo usa o Waze e escolhe a rota mais rápida, nenhum motorista individual consegue melhorar seu tempo mudando de caminho — porque todas as alternativas já estão igualmente congestionadas. Isso é um equilíbrio de Nash do trânsito (e uma versão do paradoxo de Braess).

    **Por que isso importa:** O conceito de equilíbrio de Nash é a pedra angular da regulação de mercados, do desenho de leilões (como os de espectro da [Anatel](https://www.anatel.gov.br)) e da política antitruste do [CADE](https://www.gov.br/cade). Se quiser prever como firmas se comportarão, procure o Nash.

    **O que Nash *não* garante:** O equilíbrio de Nash não implica eficiência (o Dilema dos Prisioneiros mostra isso), nem unicidade (a Batalha dos Sexos tem três equilíbrios), nem que os jogadores o encontrem de fato. É um conceito de consistência, não de otimalidade.

Para fixar o conceito, vejamos como o equilíbrio de Nash se manifesta em jogos com estruturas distintas. A diferença entre o Dilema dos Prisioneiros (equilíbrio único e ineficiente) e a Batalha dos Sexos (múltiplos equilíbrios e problema de coordenação) ilustra que o conceito de Nash é versátil, mas nem sempre oferece uma previsão única. O procedimento prático para encontrar equilíbrios de Nash em estratégias puras em um jogo finito é direto: para cada perfil de estratégias \((s_i, s_{-i})\), verifique se nenhum jogador pode aumentar seu payoff mudando unilateralmente sua estratégia. Em uma matriz 2×2, isso equivale a marcar a melhor resposta de cada jogador para cada estratégia do oponente (sublinhando o maior payoff em cada coluna para J1 e em cada linha para J2) — as células em que ambos os payoffs estão sublinhados são os equilíbrios de Nash.

### Exemplos clássicos

**Batalha dos Sexos (BoS)**

Dois parceiros querem sair juntos, mas um prefere futebol (F) e o outro prefere cinema (C).

<a id="tabela-9a-3"></a>

|  | Jogador 2: F | Jogador 2: C |
|:---|:---:|:---:|
| **Jogador 1: F** | \((3, 1)\) | \((0, 0)\) |
| **Jogador 1: C** | \((0, 0)\) | \((1, 3)\) |

<div class="caption-obj" markdown>
**Tabela 9a.3 — Batalha dos Sexos.**
</div>

Existem **dois equilíbrios de Nash em estratégias puras**: \((F, F)\) e \((C, C)\), e um em estratégias mistas (derivado na [Seção 9a.4](estrategias-mistas.md)). O jogo ilustra o problema de **coordenação** quando existem múltiplos equilíbrios. Diferentemente do Dilema dos Prisioneiros, aqui não há conflito entre racionalidade individual e eficiência coletiva — ambos os equilíbrios em puras são Pareto-eficientes. O problema é outro: como os jogadores se coordenam em um dos equilíbrios sem comunicação prévia? É nesse contexto que os "pontos focais" de Schelling (1960) — soluções que se destacam por saliência cultural, histórica ou contextual — desempenham papel crucial.

**Hawk-Dove (Falcão-Pomba)**

Dois animais (ou firmas) disputam um recurso de valor \(V\). Cada um pode ser agressivo (Hawk, H) ou passivo (Dove, D).

<a id="tabela-9a-4"></a>

|  | Jogador 2: H | Jogador 2: D |
|:---|:---:|:---:|
| **Jogador 1: H** | \(\left(\frac{V-C}{2}, \frac{V-C}{2}\right)\) | \((V, 0)\) |
| **Jogador 1: D** | \((0, V)\) | \(\left(\frac{V}{2}, \frac{V}{2}\right)\) |

<div class="caption-obj" markdown>
**Tabela 9a.4 — Hawk-Dove (Falcão-Pomba).**
</div>

Quando \(C > V\) (custo do conflito excede o valor do recurso), existem dois equilíbrios em puras — \((H, D)\) e \((D, H)\) — e um em mistas. Note que, diferentemente da Batalha dos Sexos, o Hawk-Dove é um jogo de **anti-coordenação**: os equilíbrios em puras envolvem jogadores fazendo escolhas *diferentes* (um agressivo, outro passivo). Em mercados, essa estrutura aparece quando firmas segmentam nichos para evitar concorrência destrutiva. A versão biológica desse jogo (Maynard Smith e Price, 1973) está na origem da **teoria dos jogos evolutiva**, que estuda como populações de agentes convergem para padrões estáveis de comportamento sem assumir racionalidade individual.
