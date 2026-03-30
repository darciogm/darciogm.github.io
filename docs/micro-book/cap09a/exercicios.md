# Exercícios e Revisão

## 🧪 Atividades de Sala de Aula

!!! classroom "Atividade 9a.1 — Dilema dos Prisioneiros ao vivo (20 min)"
    **Objetivo:** Demonstrar a tensão entre racionalidade individual e eficiência coletiva — e testar se a cooperação emerge com repetição.

    **Material:** Cartões com "C" (Cooperar) e "T" (Trair) para cada aluno, tabela de payoffs projetada.

    **Protocolo:**

    1. **Formação de duplas** (2 min): Alunos formam pares aleatórios. Cada dupla recebe 2 cartões (C e T).
    2. **Rodada única** (3 min): Sem comunicação, cada aluno escolhe C ou T simultaneamente (cartões virados para baixo, revelados ao mesmo tempo). Payoffs: (C,C) = 3 pontos cada; (C,T) = 0 e 5; (T,T) = 1 cada. Anote os resultados.
    3. **5 rodadas com o mesmo parceiro** (8 min): Repita o jogo 5 vezes com o mesmo par. Permita que vejam as escolhas anteriores do parceiro (mas **não** permitam conversa). Anote rodada a rodada.
    4. **Debrief coletivo** (7 min):
        - Projete a distribuição de escolhas (% cooperação) por rodada. Tipicamente, cooperação cresce nas rodadas 2–4 e cai na rodada 5 (efeito de endgame).
        - Pergunte: "Quem cooperou mais nas rodadas intermediárias? Por quê?" → Conecte com o *shadow of the future* (Módulo 9b).
        - Pergunte: "Quem traiu na última rodada sabendo que não haveria 'amanhã'?" → Conecte com *unraveling* em jogos finitos.
        - Compare a taxa de cooperação observada com a previsão teórica (0% em jogo de uma rodada; 0% em jogo finito por indução retroativa).

    **Variação avançada:** Após o debrief, jogue mais 5 rodadas com parceiro *aleatório* (rematching a cada rodada). Preveja: a cooperação vai cair drasticamente. Por quê? Porque a repetição com parceiro fixo cria reputação; com parceiro aleatório, cada rodada é efetivamente um jogo de uma vez.

    **Conexão com o conteúdo:** Dilema dos Prisioneiros (Seção 9a.2), Folk Theorem e cooperação em jogos repetidos (Módulo 9b). Evidência experimental: Axelrod (1984), *The Evolution of Cooperation*.

!!! classroom "Atividade 9a.2 — Leilão de primeiro preço vs. segundo preço (25 min)"
    **Objetivo:** Verificar empiricamente o Teorema da Equivalência de Receita e o sombreamento de lances (*bid shading*).

    **Material:** Baralho de cartas (ou geradores aleatórios no celular); envelopes de papel; planilha projetada.

    **Protocolo:**

    1. **Sorteio de valores** (2 min): Cada aluno sorteia uma carta de um baralho (Ás = 1, ..., Rei = 13). Esse é seu valor privado \(v_i\). Ninguém mostra a carta.
    2. **Leilão de primeiro preço** (8 min): Grupos de 4 alunos. Cada um escreve seu lance \(b_i\) em papel dobrado e entrega ao "leiloeiro" (um colega). O maior lance ganha e paga o próprio lance. Lucro = \(v_i - b_i\) se ganhou, 0 se perdeu. Façam 3 rodadas (re-sorteio de cartas a cada rodada).
    3. **Leilão de segundo preço** (8 min): Mesmos grupos. Agora o maior lance ganha, mas paga o *segundo* maior lance. Façam 3 rodadas.
    4. **Debrief** (7 min):
        - Calcule a receita média em cada formato. São próximas? → Equivalência de receita.
        - Pergunte: "Quanto você sombreou no primeiro preço?" → Compare com a fórmula teórica \(b(v) = v \cdot (N-1)/N = v \cdot 3/4\).
        - Pergunte: "No segundo preço, alguém lançou abaixo do valor? Acima?" → Discuta por que \(b_i = v_i\) é dominante.
        - Alunos que lançaram acima do valor no segundo preço cometeram a *maldição do vencedor* em miniatura.

    **Conexão com o conteúdo:** Leilões IPV (Módulo 9c, Seção 9c.3), Teorema da Equivalência de Receita (Myerson, 1981; Riley e Samuelson, 1981). Inspirado em Holt (2007, Cap. 19).

!!! classroom "Atividade 9a.3 — Competição de Cournot com post-its (15 min)"
    **Objetivo:** Demonstrar o equilíbrio de Cournot e a tentação do conluio.

    **Material:** Post-its, quadro branco.

    **Protocolo:**

    1. **Setup** (3 min): Projete: demanda inversa \(P = 100 - Q\), custo marginal \(c = 10\). Alunos formam duplas (firmas). Cada firma escolhe quantidade \(q_i \in \{0, 5, 10, ..., 45\}\).
    2. **Rodada 1 — Sem comunicação** (4 min): Cada firma escreve \(q_i\) no post-it, entrega ao professor. Calcule \(Q\), \(P\) e lucros. Projete os resultados.
    3. **Rodada 2 — Com comunicação** (4 min): Permita que as duplas conversem por 1 minuto antes de decidir (separadamente). Observe: muitas tentarão conluio (\(q_1 = q_2 = 22{,}5\)), mas sem enforcement, a tentação de desviar é forte.
    4. **Debrief** (4 min):
        - Compare as quantidades observadas com Cournot (\(q^* = 30\) cada), monopólio dividido (\(q = 22{,}5\) cada) e Bertrand (\(q = 45\) cada).
        - Pergunte: "Quem prometeu produzir 22,5 mas colocou 30 no post-it?" → Dilema dos Prisioneiros no oligopólio.

    **Conexão com o conteúdo:** Modelo de Cournot (Seção 9a.5), conluio e incentivo a desviar (Módulo 9b).

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Um equilíbrio de Nash é um perfil de estratégias no qual:"
    - (a) Todos os jogadores obtêm o maior payoff possível
    - (b) Nenhum jogador pode melhorar seu payoff alterando unilateralmente sua estratégia
    - (c) Todos os jogadores usam estratégias dominantes
    - (d) A soma dos payoffs é maximizada

    ??? success "Resposta"
        **(b)** O equilíbrio de Nash exige que cada jogador esteja fazendo a melhor resposta à estratégia dos demais — nenhum tem incentivo a desviar unilateralmente. Não exige que os payoffs sejam máximos (a), que existam estratégias dominantes (c) ou que o resultado seja socialmente ótimo (d). O Dilema dos Prisioneiros ilustra bem: o EN é mutuamente pior, mas ninguém desvia sozinho.

??? question "2. No Dilema dos Prisioneiros, o resultado de equilíbrio é ineficiente porque:"
    - (a) Os jogadores não conseguem se comunicar
    - (b) Cada jogador tem uma estratégia dominante que leva a um resultado Pareto-inferior à cooperação mútua
    - (c) O jogo não tem equilíbrio de Nash
    - (d) Os payoffs são assimétricos entre os jogadores

    ??? success "Resposta"
        **(b)** Cada prisioneiro tem incentivo individual a confessar (estratégia dominante), independentemente do que o outro faz. Mas quando ambos confessam, obtêm um resultado pior do que se ambos calassem. O problema não é falta de comunicação (a) — mesmo com comunicação, sem enforcement, cada um desvia. O jogo tem EN (c é falsa); a simetria (d) é irrelevante.

??? question "3. No duopólio de Cournot (competição em quantidades), comparado ao monopólio, o preço de equilíbrio é:"
    - (a) Igual ao preço de monopólio
    - (b) Menor que o de monopólio e maior que o competitivo
    - (c) Igual ao preço competitivo (custo marginal)
    - (d) Maior que o preço de monopólio devido à competição

    ??? success "Resposta"
        **(b)** No Cournot, cada firma produz considerando a produção da rival como dada. O resultado é intermediário: mais produção e menor preço que o monopólio, mas menos produção e maior preço que a concorrência perfeita. À medida que o número de firmas cresce, o resultado converge para o competitivo.

??? question "4. O Paradoxo de Bertrand afirma que, com produtos homogêneos e custos marginais constantes iguais, duas firmas já bastam para:"
    - (a) Manter preços de monopólio indefinidamente
    - (b) Gerar o resultado competitivo: preço igual ao custo marginal e lucro econômico zero
    - (c) Produzir quantidades iguais às de Cournot
    - (d) Eliminar o incentivo à entrada de novas firmas

    ??? success "Resposta"
        **(b)** No modelo de Bertrand com produtos homogêneos, cada firma tem incentivo a cortar marginalmente o preço para capturar todo o mercado. O único equilíbrio é $p_1 = p_2 = c$ (custo marginal), com lucro zero — resultado idêntico à concorrência perfeita com apenas duas firmas. Isso é 'paradoxal' porque esperaríamos algum poder de mercado com tão poucas firmas.

??? question "5. Um equilíbrio de Nash em estratégias mistas existe:"
    - (a) Apenas em jogos com estratégias dominantes
    - (b) Apenas quando não há equilíbrio em estratégias puras
    - (c) Em todo jogo finito (com número finito de jogadores e estratégias), pelo Teorema de Nash
    - (d) Apenas em jogos de soma zero

    ??? success "Resposta"
        **(c)** O Teorema de Nash (1950) garante que todo jogo finito possui pelo menos um equilíbrio de Nash, possivelmente em estratégias mistas. A alternativa (b) é incorreta — podem coexistir equilíbrios puros e mistos; (a) é muito restritiva; (d) ignora que o teorema se aplica a jogos gerais, não apenas soma zero.

---

## 📋 Resumo do Capítulo

- A teoria dos jogos estuda a tomada de decisão em ambientes de interdependência estratégica, nos quais o resultado de cada agente depende das ações de todos os demais. A disciplina foi fundada por Von Neumann e Morgenstern (1944) e revolucionada por Nash (1950, 1951), Selten (1965) e Harsanyi (1967–68).
- Jogos estáticos com informação completa são representados na forma normal (matriz de payoffs) e resolvidos pelo conceito de **equilíbrio de Nash**: um perfil de estratégias em que nenhum jogador pode melhorar unilateralmente seu payoff — a condição de "ausência de arrependimento" (*no-regret*).
- O **Dilema dos Prisioneiros** ilustra a tensão central entre racionalidade individual e eficiência coletiva: a estratégia dominante de cada jogador leva a um resultado Pareto-dominado. O equilíbrio de Nash é uma condição de estabilidade, não de eficiência.
- A **Eliminação Iterada de Estratégias Dominadas (EIED)** é um procedimento de solução baseado apenas em racionalidade e conhecimento comum de racionalidade. Para estratégias estritamente dominadas, a ordem de eliminação não altera o resultado.
- **Estratégias mistas** garantem a existência de equilíbrio em todo jogo finito (Teorema de Nash) e são determinadas pelo princípio da indiferença — cada jogador randomiza de modo a deixar o oponente indiferente entre suas estratégias puras.
- Os modelos de oligopólio (Cournot, Bertrand e Stackelberg) aplicam o equilíbrio de Nash a mercados com poucos concorrentes, mostrando como a variável estratégica (quantidade vs. preço) e a ordem de movimento alteram radicalmente preços, quantidades e lucros.
- No Cournot, firmas competem em quantidades (substitutos estratégicos) e o resultado situa-se entre monopólio e competição perfeita; no Bertrand com produtos homogêneos, duas firmas bastam para reproduzir o resultado competitivo (paradoxo de Bertrand); no Stackelberg, a líder obtém vantagem via comprometimento crível com quantidade elevada.
- O resultado de Kreps-Scheinkman (1983) unifica Cournot e Bertrand: quando as firmas escolhem capacidade antes de competir em preços, o equilíbrio de dois estágios reproduz o resultado de Cournot.

## 🔑 Conceitos-Chave

<a id="tabela-9a-6"></a>

| Conceito | Definição |
|----------|-----------|
| Jogo na forma normal | Tripla \(\langle N, (S_i), (u_i) \rangle\) que especifica jogadores, estratégias e payoffs. |
| Equilíbrio de Nash | Perfil de estratégias em que nenhum jogador pode melhorar seu payoff desviando unilateralmente. |
| Estratégia dominante | Estratégia que é ótima para um jogador independentemente das ações dos demais. |
| Estratégia mista | Distribuição de probabilidade sobre as estratégias puras de um jogador. |
| Princípio da indiferença | Em equilíbrio misto, cada jogador randomiza de forma a tornar o oponente indiferente entre suas estratégias puras. |
| EIED | Eliminação Iterada de Estratégias Estritamente Dominadas — procedimento de solução que reduz o jogo removendo estratégias que nunca são ótimas. |
| Modelo de Cournot | Oligopólio em que firmas escolhem quantidades simultaneamente; o equilíbrio é a interseção das funções de melhor-resposta. |
| Modelo de Bertrand | Oligopólio em que firmas escolhem preços simultaneamente; com produtos homogêneos, o preço converge para o custo marginal. |
| Modelo de Stackelberg | Oligopólio sequencial em que a líder se compromete com uma quantidade antes da seguidora, obtendo vantagem de primeiro movimento. |
| Dilema dos Prisioneiros | Jogo em que a estratégia dominante de cada jogador leva a um resultado coletivamente inferior (Pareto-dominado). |

<div class="caption-obj" markdown>
**Tabela 9a.6 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9a.1 — Equilíbrios de Nash na Batalha dos Sexos"
    **Enunciado:** Encontre todos os equilíbrios de Nash (em puras e em mistas) do seguinte jogo simultâneo:

    |  | Jogador 2: E | Jogador 2: D |
    |:---|:---:|:---:|
    | **Jogador 1: C** | \((2, 1)\) | \((0, 0)\) |
    | **Jogador 1: B** | \((0, 0)\) | \((1, 2)\) |

    **Resolução:**

    **Passo 1 — Equilíbrios em estratégias puras**

    - \((C, E)\): J1 obtém 2 (desviar → 0). J2 obtém 1 (desviar → 0). **Nash** ✓
    - \((C, D)\): J1 obtém 0 (desviar → 1). **Não é Nash**.
    - \((B, E)\): J1 obtém 0 (desviar → 2). **Não é Nash**.
    - \((B, D)\): J1 obtém 1 (desviar → 0). J2 obtém 2 (desviar → 0). **Nash** ✓

    **Passo 2 — Equilíbrio em estratégias mistas**

    Seja \(p = \Pr(\text{J1 joga C})\) e \(q = \Pr(\text{J2 joga E})\).

    Para J2 ser indiferente: \(p \cdot 1 = (1-p) \cdot 2 \implies p = 2/3\)

    Para J1 ser indiferente: \(2q = (1-q) \implies q = 1/3\)

    **Resultado:** Três equilíbrios de Nash: \((C, E)\), \((B, D)\) e o misto \(\sigma_1 = (2/3, 1/3)\), \(\sigma_2 = (1/3, 2/3)\) com payoffs esperados \(U_1 = U_2 = 2/3\).

    **Interpretação:** Este é um jogo de coordenação com preferências conflitantes. Múltiplos equilíbrios explicam por que convenções, normas (ABNT, INMETRO) e regulamentações são valiosas — funcionam como "pontos focais" (Schelling, 1960).

??? exercicio-resolvido "Exercício Resolvido 9a.2 — Cournot assimétrico no setor aéreo"
    **Enunciado:** Duas companhias aéreas competem à la Cournot em uma rota doméstica. A demanda inversa é \(P(Q) = 500 - 2Q\), onde \(Q = q_1 + q_2\) (em milhares de assentos/mês). A incumbente tem custo marginal \(c_1 = 100\) e a entrante tem \(c_2 = 150\). Encontre o equilíbrio de Cournot-Nash.

    **Resolução:**

    **Passo 1 — Funções de melhor-resposta**

    CPO da firma 1: \(500 - 4q_1 - 2q_2 - 100 = 0 \implies q_1^*(q_2) = 100 - q_2/2\)

    CPO da firma 2: \(500 - 2q_1 - 4q_2 - 150 = 0 \implies q_2^*(q_1) = 87{,}5 - q_1/2\)

    **Passo 2 — Equilíbrio**

    Substituindo: \(q_1 = 100 - (87{,}5 - q_1/2)/2 = 56{,}25 + q_1/4\), logo \(q_1^* = 75\), \(q_2^* = 50\).

    **Passo 3 — Preço e lucros**

    \(Q^* = 125\), \(P^* = 250\), \(\pi_1 = 150 \times 75 = 11.250\), \(\pi_2 = 100 \times 50 = 5.000\).

    **Interpretação:** A firma mais eficiente produz mais e lucra mais. Na aviação brasileira, a Latam tem historicamente custos por ASK menores, o que contribui para seu market share de 39,1%.

??? exercicio-resolvido "Exercício Resolvido 9a.3 — Stackelberg no mercado de cervejas"
    **Enunciado:** A Ambev (líder) e a Heineken (seguidora) competem à la Stackelberg no mercado de cerveja premium. A demanda inversa é \(P = 20 - Q\) (R\$/litro, em milhões de litros/mês), com \(c_1 = c_2 = 4\).

    (a) Encontre o equilíbrio de Stackelberg.
    (b) Compare com Cournot.

    **Resolução:**

    **(a) Stackelberg**

    Seguidora: \(q_2^*(q_1) = (20 - 4 - q_1)/2 = 8 - q_1/2\)

    Líder: \(\pi_1 = (20 - q_1 - 8 + q_1/2 - 4)q_1 = (8 - q_1/2)q_1\)

    CPO: \(8 - q_1 = 0 \implies q_1^S = 8\), \(q_2^S = 4\)

    \(Q^S = 12\), \(P^S = 8\), \(\pi_1^S = 32\), \(\pi_2^S = 16\)

    **(b) Cournot**

    \(q_1^C = q_2^C = 16/3 \approx 5{,}33\), \(Q^C = 32/3 \approx 10{,}67\), \(P^C = 28/3 \approx 9{,}33\)

    \(\pi_1^C = \pi_2^C = 256/9 \approx 28{,}4\)

    **Comparação:**

    | | Stackelberg | Cournot |
    |---|---|---|
    | \(q_1\) | 8 | 5,33 |
    | \(q_2\) | 4 | 5,33 |
    | Preço | R\$ 8,00 | R\$ 9,33 |
    | \(\pi_{\text{líder}}\) | 32 | 28,4 |
    | \(\pi_{\text{seguidora}}\) | 16 | 28,4 |

    A líder ganha (+12,5%), a seguidora perde (–43,7%), e o consumidor ganha (preço menor, quantidade maior).

---

## ✏️ Exercícios

<a id="ex-9a-1"></a>**Exercício 9a.1.** Considere o seguinte jogo simultâneo:

|  | Jogador 2: L | Jogador 2: R |
|:---|:---:|:---:|
| **Jogador 1: U** | \((4, 3)\) | \((1, 5)\) |
| **Jogador 1: D** | \((3, 1)\) | \((2, 2)\) |

(a) Existem estratégias estritamente dominantes? Justifique.

(b) Encontre todos os equilíbrios de Nash em estratégias puras.

(c) Encontre o equilíbrio de Nash em estratégias mistas e calcule os payoffs esperados.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-1)

---

<a id="ex-9a-2"></a>**Exercício 9a.2.** Duas firmas idênticas competem à la Cournot com demanda inversa \(P(Q) = 120 - Q\) e custo marginal \(c = 30\).

(a) Derive as funções de melhor resposta e encontre o equilíbrio de Nash.

(b) Compare o resultado com monopólio e competição perfeita.

(c) Agora suponha que a firma 1 move primeiro (Stackelberg). Encontre o equilíbrio e compare.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-2)

---

<a id="ex-9a-3"></a>**Exercício 9a.3.** No modelo de Bertrand com diferenciação, as demandas são \(q_1 = a - bp_1 + dp_2\) e \(q_2 = a - bp_2 + dp_1\), com \(b > d > 0\) e custo marginal \(c\).

(a) Derive as funções de melhor-resposta em preços e mostre que são crescentes (complementos estratégicos).

(b) Encontre o equilíbrio de Nash e mostre que os lucros são positivos (diferentemente do Bertrand homogêneo).

(c) O que acontece quando \(d \to 0\)? E quando \(d \to b\)?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-3)

---

<a id="ex-9a-4"></a>**Exercício 9a.4.** (Jogo Bayesiano — prévia do Módulo 9c) Uma firma incumbente pode ser forte (\(\theta_F\), com probabilidade 0,6) ou fraca (\(\theta_W\), com probabilidade 0,4). Uma entrante decide se entra.

- Não entra: I obtém 10, E obtém 0.
- Entra + I forte: payoffs (3, –2).
- Entra + I fraca: payoffs (2, 4).

(a) Calcule o lucro esperado de E se entrar.

(b) Encontre o Equilíbrio de Nash Bayesiano.

(c) I teria incentivo para sinalizar força? (Tema do Módulo 9d.)

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-4)

---

<a id="ex-9a-5"></a>**Exercício 9a.5.** (Sinalização — prévia do Módulo 9d) No modelo de Spence, trabalhadores têm produtividade \(\theta_H = 2\) (prob. 0,5) ou \(\theta_L = 1\) (prob. 0,5). O custo da educação é \(c(e, \theta) = e/\theta\). Encontre um equilíbrio separador e verifique que nenhum tipo desvia.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-5)

---

<a id="ex-9a-6"></a>**Exercício 9a.6.** *(Fácil — equilíbrios de Nash em jogo 2×2)* Considere o seguinte jogo simultâneo:

|  | Jogador 2: X | Jogador 2: Y |
|:---|:---:|:---:|
| **Jogador 1: A** | \((5, 4)\) | \((1, 3)\) |
| **Jogador 1: B** | \((2, 6)\) | \((4, 2)\) |

(a) Há estratégias estritamente dominantes? Justifique para cada jogador.

(b) Encontre todos os equilíbrios de Nash em estratégias puras utilizando o método das melhores respostas (sublinhado de payoffs).

(c) Mostre que os equilíbrios encontrados satisfazem a definição formal de Nash: nenhum jogador deseja desviar unilateralmente.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-6)

---

<a id="ex-9a-7"></a>**Exercício 9a.7.** *(Fácil — duopólio de Cournot com demanda linear)* Duas firmas competem à la Cournot em um mercado com demanda inversa \(P(Q) = 100 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo marginal \(c_1 = 20\) e a firma 2 tem custo marginal \(c_2 = 20\).

(a) Derive as funções de melhor resposta (reação) de cada firma.

(b) Encontre o equilíbrio de Nash de Cournot \((q_1^*, q_2^*, P^*)\) e os lucros de equilíbrio.

(c) Se \(N\) firmas idênticas competem à la Cournot com os mesmos parâmetros, qual é o preço de equilíbrio para \(N = 1\) (monopólio), \(N = 2\), \(N = 5\) e \(N \to \infty\)? Interprete.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-7)

---

<a id="ex-9a-8"></a>**Exercício 9a.8.** *(Médio — Bertrand com diferenciação de produto)* Duas firmas produzem bens diferenciados com demandas:

\[
q_1 = 60 - 2p_1 + p_2, \qquad q_2 = 60 - 2p_2 + p_1
\]

e custo marginal \(c = 10\) para ambas.

(a) Derive a função de melhor resposta em preços de cada firma. As estratégias de preço são complementos ou substitutos estratégicos? Justifique economicamente.

(b) Encontre o equilíbrio de Nash de Bertrand com diferenciação: preços, quantidades e lucros.

(c) Mostre que os lucros de equilíbrio são positivos e compare com o resultado de Bertrand com produto homogêneo. O que determina a magnitude dos lucros?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-8)

---

<a id="ex-9a-9"></a>**Exercício 9a.9.** *(Médio — Brasil — CADE e análise de fusão via HHI de Cournot)* Três firmas idênticas competem à la Cournot em um mercado com demanda inversa \(P(Q) = 180 - Q\) e custo marginal \(c = 30\). O regulador (CADE) considera uma fusão entre as firmas 2 e 3, que formaria uma única firma com custo marginal \(c_M = 30\) (sem ganho de eficiência).

(a) Calcule o equilíbrio de Cournot pré-fusão: quantidades individuais, preço, lucros e HHI (Índice Herfindahl-Hirschman, definido como \(\text{HHI} = \sum_{i=1}^{N} s_i^2 \times 10000\), onde \(s_i\) é o market share em decimal).

(b) Calcule o equilíbrio de Cournot pós-fusão (duopólio com duas firmas, sendo uma delas a fusionada): quantidades, preço, lucros e HHI.

(c) O CADE usa como limiar de preocupação um aumento de HHI (\(\Delta\text{HHI}\)) acima de 200 pontos em mercados com HHI pré-fusão acima de 1.500. A fusão deve ser aprovada, aprovada com restrições ou bloqueada? A fusão beneficia consumidores ou produtores?

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-9)

---

<a id="ex-9a-10"></a>**Exercício 9a.10.** *(Difícil — equilíbrio em estratégias mistas em jogo 3×3)* Considere o seguinte jogo simultâneo de soma zero entre dois jogadores (os payoffs indicam o ganho do Jogador 1; o Jogador 2 obtém o negativo):

|  | J2: L | J2: M | J2: R |
|:---|:---:|:---:|:---:|
| **J1: T** | \(3\) | \(-1\) | \(2\) |
| **J1: M** | \(-2\) | \(4\) | \(-1\) |
| **J1: B** | \(1\) | \(0\) | \(3\) |

(a) Verifique se existe alguma estratégia estritamente dominada para algum dos jogadores. Use a EIED para simplificar o jogo, se possível.

(b) Após a EIED, encontre o equilíbrio em estratégias mistas do jogo reduzido. (Dica: em jogos de soma zero 2×2, o equilíbrio misto é determinado pelo princípio da indiferença aplicado a ambos os jogadores.)

(c) Calcule o valor do jogo (payoff esperado do Jogador 1 no equilíbrio) e interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap09a.md#ex-9a-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2021 — Questão 11"
    Com relação à Teoria dos Jogos, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0    | A ordem em que estratégias fracamente dominadas são eliminadas é relevante, pois pode afetar o conjunto das estratégias sobreviventes. |
    | 1    | No jogo abaixo, T, M, B são estratégias de J1 e E, C, D de J2. As estratégias racionalizáveis são T, M, E. |

    Jogo do Item 1:

    |  | J2: E | J2: C | J2: D |
    |:---|:---:|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((1, 1)\) | \((4, 2)\) |
    | **J1: M** | \((3, 4)\) | \((1, 2)\) | \((2, 3)\) |
    | **J1: B** | \((1, 3)\) | \((0, 2)\) | \((3, 0)\) |

    | Item | Afirmação |
    |------|-----------|
    | 2    | No equilíbrio de Nash em mistas do jogo abaixo, J1 joga T com probabilidade \(1/3\) e B com \(2/3\), J2 joga E com \(2/3\) e D com \(1/3\). |

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((2, 0)\) | \((4, 2)\) |
    | **J1: B** | \((3, 4)\) | \((2, 3)\) |

    | Item | Afirmação |
    |------|-----------|
    | 3    | No jogo abaixo existe um único equilíbrio de Nash em puras. |

    |  | J2: E | J2: D |
    |:---|:---:|:---:|
    | **J1: T** | \((-1, -1)\) | \((4, 0)\) |
    | **J1: B** | \((0, 4)\) | \((2, 2)\) |

    | Item | Afirmação |
    |------|-----------|
    | 4    | Todo jogo na forma normal possui um equilíbrio de Nash em estratégias mistas. |

    ??? success "Gabarito"
        **Respostas: 10100**

        - **Item 0 — V:** Resultado clássico. Para estratégias **estritamente** dominadas, a ordem não importa. Para **fracamente** dominadas, a ordem pode alterar o conjunto sobrevivente.

        - **Item 1 — F:** Eliminando B (estritamente dominada por T), resta o jogo 2×3. C é estritamente dominada por uma mistura de E e D para J2. Eliminando C, sobram \(\{T, M\} \times \{E, D\}\) — nenhuma é dominada. As racionalizáveis são \(\{T, M, E, D\}\), não apenas \(\{T, M, E\}\).

        - **Item 2 — V:** Para J2 ser indiferente: \(U_2(E; p) = 4(1-p)\) e \(U_2(D; p) = 2p + 3(1-p) = 3-p\). Igualando: \(4-4p = 3-p \implies p = 1/3\). Para J1: \(U_1(T; q) = 2q + 4(1-q) = 4-2q\) e \(U_1(B; q) = 3q + 2(1-q) = 2+q\). Igualando: \(4-2q = 2+q \implies q = 2/3\). Correto.

        - **Item 3 — F:** Existem **dois** EN em puras: \((T, D)\) com payoffs \((4, 0)\) e \((B, E)\) com payoffs \((0, 4)\).

        - **Item 4 — F:** O Teorema de Nash garante existência para jogos **finitos**. Jogos com espaços infinitos de estratégias podem não ter equilíbrio sem condições adicionais (compacidade, continuidade — Teorema de Glicksberg).

??? question "ANPEC 2022 — Questão 11"
    Com relação ao oligopólio, julgue os itens:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em um Duopólio de Cournot com \(c_1(q_1) = q_1^2/2\), \(c_2(q_2) = q_2^2\) e \(P(Q) = 11 - Q\), o equilíbrio é \((q_1^*, q_2^*; P^*) = (3, 2; 6)\). |
    | 1    | Ao comparar oligopolização pelo Índice de Lerner, a indústria mais oligopolizada tem necessariamente maior HHI. |
    | 2    | No equilíbrio de Stackelberg, a seguidora lucra mais que em Cournot. |
    | 3    | No equilíbrio de Stackelberg, a isoprofit da líder tangencia a curva de reação da seguidora. |
    | 4    | Duopólio de Bertrand repetido infinitamente: se competir dá lucro 0, cartel dá 40 cada, desviar dá 200, então a menor taxa de desconto para sustentar o cartel com GRIM é \(\delta = 0{,}25\). |

    ??? success "Gabarito"
        **Respostas: 10010**

        - **Item 0 — V:** Firma 1: CPO \(11 - 2q_1 - q_2 - q_1 = 0 \implies q_1 = (11-q_2)/3\). Firma 2: CPO \(11 - q_1 - 2q_2 - 2q_2 = 0 \implies q_2 = (11-q_1)/4\). Resolvendo: \(q_1 = 3\), \(q_2 = 2\), \(P = 6\). ✓

        - **Item 1 — F:** No Cournot, \(L = \text{HHI}/|\varepsilon|\). Mesmo HHI pode gerar Lerner diferente se as elasticidades diferem.

        - **Item 2 — F:** A seguidora produz **menos** que em Cournot e obtém lucro **menor**. (Confira na tabela comparativa da [Seção 9a.5](oligopolio.md).)

        - **Item 3 — V:** A líder maximiza lucro **ao longo** da curva de reação da seguidora — ponto de tangência com a isoprofit. (Visível na Figura 9a.4.)

        - **Item 4 — F:** Condição: \(40/(1-\delta) \geq 200 \implies \delta \geq 0{,}80\), não \(0{,}25\).

---

!!! tip "🤖 Exercício com IA"
    **IA.2 — Equilíbrios de Nash: Puros e Mistos**

    Use a IA para encontrar todos os equilíbrios de Nash (puros e mistos) do jogo com payoffs (U,L)=(3,1), (U,R)=(0,0), (D,L)=(0,0), (D,R)=(1,3). Depois, peça para a IA explicar por que o equilíbrio misto existe. Verifique se as probabilidades calculadas são corretas resolvendo o sistema de indiferença manualmente.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-2)
