# Capítulo 9b — Pensando de Trás para Frente: Jogos Dinâmicos com Informação Completa

No módulo anterior (9a), todos os jogadores escolhiam suas ações simultaneamente. Muitas interações econômicas, porém, ocorrem em **sequência**: uma firma investe primeiro e a concorrente reage; um sindicato apresenta uma proposta e a empresa aceita ou recusa; um banco central anuncia uma meta e os agentes privados ajustam expectativas.

Quando as ações são observáveis e o jogo se desenrola ao longo do tempo, o conceito de equilíbrio de Nash pode sustentar resultados baseados em **ameaças não críveis** — promessas de ações que o jogador não teria incentivo para cumprir se o momento chegasse. O remédio é pensar "de trás para frente": a **indução retroativa** e o conceito de **Equilíbrio Perfeito em Subjogos** (EPS).

Este módulo cobre jogos sequenciais, jogos repetidos (finitos e infinitos) e barganha, completando a análise de informação completa da taxonomia de Gibbons (1992, Caps. 2).

---

## 9b.1 Jogos Sequenciais e Indução Retroativa

### Forma extensiva e indução retroativa

Nos jogos sequenciais, os jogadores se movem em ordem cronológica, e jogadores posteriores podem observar as ações dos anteriores. O conceito de solução apropriado é a **indução retroativa** (*backward induction*): resolve-se o jogo "de trás para frente", determinando as ações ótimas nos últimos nós de decisão e retrocedendo até o início.

!!! definition "Equilíbrio Perfeito em Subjogos (EPS)"
    Um perfil de estratégias constitui um **Equilíbrio Perfeito em Subjogos** se induz um equilíbrio de Nash em **todo subjogo** do jogo na forma extensiva.

    Formalmente, um subjogo é qualquer parte do jogo que: (i) começa em um nó de decisão que é um conjunto de informação unitário (singleton); (ii) contém todos os sucessores desse nó; (iii) não "corta" nenhum conjunto de informação.

O EPS é um **refinamento** do equilíbrio de Nash: todo EPS é um equilíbrio de Nash, mas nem todo equilíbrio de Nash é perfeito em subjogos. O EPS elimina equilíbrios sustentados por **ameaças não críveis** em subjogos fora do caminho de equilíbrio.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Indução retroativa significa pensar "de trás para frente" — primeiro o que acontece no final, depois o que é racional fazer no início.

    **Pense assim:** Quando uma grande rede de supermercados ameaça derrubar preços para expulsar um mercadinho de bairro, o mercadinho precisa avaliar: essa ameaça é crível? Se a guerra de preços der prejuízo também para a rede, ela não vai cumprir a ameaça. Pensar de trás para frente revela quais ameaças são blefe.

    **Por que isso importa:** O CADE usa essa lógica ao analisar se barreiras à entrada são reais ou apenas ameaças vazias de empresas dominantes. A credibilidade da ameaça — não apenas sua existência — é o que determina o resultado do jogo.

    **O paradoxo da credibilidade:** Para que uma ameaça funcione, ela *não* pode ser executada em equilíbrio. Se o rival acredita na ameaça e não entra, a ameaça nunca é testada. Mas se ela não seria executada caso fosse testada, por que o rival acreditaria? Esse é o papel do comprometimento (Schelling, 1960).

### Exemplo: Jogo de entrada

!!! example "Jogo de entrada (deterrência)"
    A firma entrante (E) decide se entra ou não. Se E entra, a firma incumbente (I) decide se luta (L) ou acomoda (A).

    Payoffs: Se E não entra: \((0, 2)\). Se E entra e I acomoda: \((1, 1)\). Se E entra e I luta: \((-1, -1)\).

    **Equilíbrios de Nash**: (Não entra, Luta) e (Entra, Acomoda). Porém, no primeiro equilíbrio a ameaça de I de lutar **não é crível**: no subjogo após a entrada, Lutar dá \(-1\) a I, enquanto Acomodar dá \(1\). Logo, por indução retroativa, o único EPS é **(Entra, Acomoda)**.

    A ameaça "se você entrar, eu luto" não é crível porque, no momento em que I precisa decidir, lutar é pior do que acomodar. O EPS descarta esse equilíbrio.

<figure markdown="span">
  <iframe src="../graficos/cap09/jogo-sequencial.html" width="100%" height="520" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption markdown="span"><strong>Figura 9b.1</strong> — Jogo sequencial na forma extensiva. Selecione um jogo predefinido (Deterrência de Entrada ou Stackelberg), edite os payoffs nos nós terminais e resolva por indução retroativa. O caminho do EPS é destacado em vermelho.</figcaption>
</figure>

### Comprometimento e vantagem estratégica

A impossibilidade de ameaças não críveis pode ser contornada pelo **comprometimento**:

- **Investimento irreversível em capacidade**: se I investe em uma fábrica grande *antes* da decisão de entrada, o custo de lutar cai (a capacidade já existe), tornando a ameaça crível.
- **Contratos vinculantes**: cláusulas de "preço mais baixo garantido" comprometem a firma a igualar preços, alterando os payoffs do jogo.
- **Reputação**: em jogos repetidos com múltiplos entrantes, lutar contra o primeiro pode ser racional para estabelecer reputação de dureza.

---

## 9b.2 Jogos Repetidos

Quando um jogo é jogado repetidamente entre os mesmos jogadores, a possibilidade de **punição futura** pode sustentar a cooperação em equilíbrio, mesmo quando o jogo de estágio tem um único equilíbrio não cooperativo.

### Jogos finitamente repetidos

Se o Dilema dos Prisioneiros é repetido um número finito \(T\) de vezes (e isso é conhecimento comum), a indução retroativa a partir do período \(T\) implica que o único EPS é a repetição do equilíbrio de estágio (Trair, Trair) em todos os períodos.

!!! note "Unraveling e exceções"
    O resultado de "desvendamento" (*unraveling*) é forte mas depende de hipóteses restritivas: (i) jogo de estágio com equilíbrio único; (ii) horizonte finito conhecido. Se o jogo de estágio tem múltiplos equilíbrios (como BoS), ou se há incerteza sobre o horizonte, a cooperação pode ser sustentada mesmo em jogos finitos (Benoit e Krishna, 1985).

### Jogos infinitamente repetidos

Se o jogo é repetido infinitamente (ou com probabilidade de continuação \(\delta\) a cada período), a cooperação pode ser sustentada como equilíbrio.

!!! definition "Estratégia de gatilho (*Grim Trigger*)"
    A estratégia de gatilho prescreve: coopere no primeiro período e continue cooperando enquanto todos cooperarem. Se qualquer jogador desviar, puna jogando a estratégia não cooperativa **para sempre**.

No Dilema dos Prisioneiros repetido infinitamente com fator de desconto \(\delta \in (0,1)\) e payoffs \(T > R > P > S\), a cooperação é sustentável pela estratégia de gatilho se e somente se:

\[
\frac{R}{1 - \delta} \geq T + \frac{\delta P}{1 - \delta} \quad \Longleftrightarrow \quad \delta \geq \frac{T - R}{T - P} \equiv \delta^*
\]

O fator de desconto \(\delta\) pode ser interpretado como a "paciência" dos jogadores ou a probabilidade de que o jogo continue.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Cooperação emerge quando a sombra do futuro é longa o suficiente para que a punição por trair supere o ganho imediato.

    **Pense assim:** Dois vizinhos que se encontram todo dia no elevador cooperam mais do que dois desconhecidos que interagem uma única vez. O vizinho sabe que se agir de forma oportunista hoje, enfrentará a hostilidade do outro por anos. É o mesmo princípio que sustenta o conluio tácito entre postos de gasolina: a interação repetida e a facilidade de monitoramento (preços em totens) criam as condições para cooperação.

    **Quando a cooperação falha:**

    - **Horizonte curto** (\(\delta\) baixo): governadores com mandatos de 4 anos têm incentivo para atrair investimentos com guerra fiscal (ICMS), sem internalizar os custos de longo prazo.
    - **Monitoramento difícil**: cartéis em mercados com preços opacos ou transações customizadas são mais frágeis.
    - **Muitos jogadores**: quanto mais firmas no mercado, mais difícil sustentar cooperação (cada uma ganha menos com cooperação e a detecção de desvios é mais lenta).

### Folk Theorem

!!! abstract "Folk Theorem (versão informal)"
    Em jogos infinitamente repetidos com fator de desconto suficientemente próximo de 1, **qualquer** payoff individualmente racional e factível pode ser sustentado como equilíbrio de Nash do jogo repetido.

    Um payoff é **individualmente racional** para o jogador \(i\) se é pelo menos tão bom quanto seu **payoff de minimax**. Um payoff é **factível** se pertence ao fecho convexo dos payoffs realizáveis do jogo de estágio.

!!! note "Implicações do Folk Theorem"
    O Folk Theorem é simultaneamente poderoso e problemático. Poderoso porque mostra que a repetição pode resolver dilemas de cooperação. Problemático porque gera uma **multiplicidade** enorme de equilíbrios — praticamente qualquer resultado razoável pode ser sustentado, o que limita o poder preditivo da teoria.

### Estratégias de punição alternativas

Além do grim trigger, existem estratégias mais sofisticadas:

| Estratégia | Descrição | \(\delta^*\) | Vantagem | Desvantagem |
|:-----------|:----------|:------------|:---------|:------------|
| **Grim Trigger** | Coopera até primeiro desvio, depois pune para sempre | \(\frac{T-R}{T-P}\) | Máxima deterrência | Punição desproporcional; não perdoa erros |
| **Tit-for-Tat** | Coopera no 1º período; depois copia a ação do oponente no período anterior | \(\frac{T-R}{T-P}\) | Simples, "perdoa"; venceu os torneios de Axelrod | Vulnerável a erros; ciclos de retaliação |
| **Win-Stay, Lose-Shift** | Mantém a ação se o payoff foi bom, muda se foi ruim | Variável | Autocorreção | Pode não ser EPS |

<figure markdown="span">
  <iframe src="../graficos/cap09/delta-cooperacao.html" width="100%" height="520" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption markdown="span"><strong>Figura 9b.2</strong> — Cooperação no Dilema dos Prisioneiros repetido. Altere os payoffs \(T\), \(R\), \(P\) e o fator de desconto \(\delta\) para ver quando a cooperação é sustentável pela estratégia de gatilho. A curva verde (\(V_{\text{coop}}\)) deve estar acima da vermelha (\(V_{\text{desvio}}\)).</figcaption>
</figure>

---

## 9b.3 Barganha

### O Jogo do Ultimato

O jogo mais simples de barganha: o jogador 1 (proponente) oferece uma divisão \(x\) de um bolo de tamanho 1. O jogador 2 (respondedor) aceita ou rejeita. Se aceita, payoffs são \((x, 1-x)\). Se rejeita, ambos recebem 0.

**Equilíbrio Perfeito em Subjogos:** No subjogo após qualquer oferta \(x\), o respondedor aceita (pois \(1-x \geq 0\)). Antecipando isso, o proponente oferece \(x = 1\) (fica com tudo).

!!! warning "Teoria vs. Evidência"
    A previsão teórica — proponente oferece quase nada, respondedor aceita — é sistematicamente rejeitada em experimentos. Ofertas modais são 40-50% do bolo, e ofertas abaixo de 20% são frequentemente rejeitadas. Isso motivou modelos de preferências sociais (Fehr-Schmidt, Módulo 8) e de racionalidade limitada.

### Barganha de Rubinstein (ofertas alternadas)

Dois jogadores alternam propostas com fator de desconto \(\delta \in (0,1)\). No período 1, o jogador 1 propõe; se 2 rejeita, no período 2 o jogador 2 propõe; e assim por diante.

O **único EPS** (Rubinstein, 1982) é:

\[
x_1^* = \frac{1 - \delta_2}{1 - \delta_1 \delta_2}, \qquad x_2^* = \frac{\delta_2(1 - \delta_1)}{1 - \delta_1 \delta_2}
\]

Quando \(\delta_1 = \delta_2 = \delta\):

\[
x_1^* = \frac{1}{1 + \delta} \quad \text{(share do proponente)}
\]

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Na barganha de Rubinstein, quem é mais paciente (maior \(\delta\)) fica com a maior fatia.

    **Pense assim:** Numa negociação salarial entre o sindicato dos metalúrgicos e uma montadora, cada rodada sem acordo custa para ambos (trabalhadores perdem salário, empresa perde produção). Quem aguenta mais tempo sem acordo — quem tem mais "reservas" — consegue extrair mais valor.

    **Limite:** Quando \(\delta \to 1\) (ambos muito pacientes), a divisão converge para 50/50 — o resultado "justo". Quando \(\delta \to 0\) (ambos impacientes), o proponente fica com quase tudo — como no jogo do ultimato.

    **Conexão com Nash Bargaining:** Rubinstein (1982) mostrou que o EPS de ofertas alternadas converge para a solução de barganha de Nash quando o intervalo entre ofertas vai a zero — uma fundamentação não cooperativa para o modelo cooperativo.

---

## Box Brasil: Guerra Fiscal do ICMS como Jogo Repetido

!!! example "Box Brasil — A guerra fiscal do ICMS: uma corrida ao fundo"
    A competição entre estados brasileiros pela atração de investimentos via benefícios fiscais no **ICMS** é um dos exemplos mais claros do Dilema dos Prisioneiros na política econômica brasileira.

    **A estrutura do jogo**

    |  | Estado B: Não concede | Estado B: Concede |
    |:---|:---:|:---:|
    | **Estado A: Não concede** | \((100, 100)\) | \((60, 120)\) |
    | **Estado A: Concede** | \((120, 60)\) | \((70, 70)\) |

    Conceder incentivos é estratégia dominante. O resultado (70, 70) é Pareto-dominado por (100, 100).

    **Por que a cooperação falhou?**

    Usando os payoffs acima: \(\delta^* = (T-R)/(T-P) = (120-100)/(120-70) = 0{,}4\). Bastaria \(\delta \geq 0{,}4\) para sustentar cooperação com grim trigger — um limiar baixo! Então por que a guerra fiscal persiste?

    1. **Horizonte curto dos governadores**: mandatos de 4 anos geram \(\delta\) efetivo baixo (desconto político é altíssimo).
    2. **Confaz fraco**: o mecanismo de enforcement (unanimidade para novos benefícios) foi sistematicamente violado.
    3. **Assimetria entre estados**: estados menores ganham mais com o desvio, pois atraem investimentos proporcionalmente maiores.

    **A Reforma Tributária como mudança de regras do jogo**

    A EC 132/2023 (IBS com alíquota uniforme e cobrança no destino) não tenta sustentar cooperação no jogo existente — ela **redesenha o jogo** eliminando o instrumento (ICMS na origem) que permitia a concessão unilateral de benefícios.

---

## Box Brasil: Negociação Salarial na Indústria Automotiva

!!! example "Box Brasil — Metalúrgicos vs. Montadoras: barganha à brasileira"
    As negociações salariais anuais entre o **Sindicato dos Metalúrgicos do ABC** e as montadoras (Volkswagen, Mercedes-Benz, Toyota) são um exemplo clássico de barganha com ofertas alternadas.

    **Estrutura da barganha**

    - O sindicato apresenta uma pauta de reivindicações (reajuste + PLR + benefícios).
    - A empresa contrapropõe.
    - Se não há acordo, pode haver greve (custo para ambos: trabalhadores perdem salários, empresa perde produção).
    - Rodadas se sucedem até o acordo.

    **Fatores que afetam o poder de barganha (\(\delta\))**

    | Fator | Efeito sobre o sindicato | Efeito sobre a empresa |
    |:------|:------------------------|:----------------------|
    | Fundo de greve | Aumenta \(\delta_{\text{sind}}\) | — |
    | Estoques altos | — | Aumenta \(\delta_{\text{emp}}\) |
    | Desemprego alto | Reduz \(\delta_{\text{sind}}\) | — |
    | Demanda aquecida | — | Reduz \(\delta_{\text{emp}}\) |

    **Dados recentes**

    Em 2024, o Sindicato dos Metalúrgicos do ABC negociou reajuste de **5,5%** (inflação + ganho real) com a Volkswagen, após duas rodadas de negociação — consistente com o modelo de Rubinstein onde o proponente com informação sobre o custo do atraso faz uma oferta próxima do EPS logo na primeira rodada.

    **Fonte**: DIEESE, Subsistema de Negociações Coletivas; Sindicato dos Metalúrgicos do ABC.

---

## R Interativo: Ultimatum Game — Evidência Experimental

??? code "R Interativo — Ultimatum Game: teoria vs. experimento (Adams, 2025, Cap. 8)"
    O jogo do ultimato é um dos mais estudados em economia experimental. A previsão teórica (oferta mínima, aceitação total) é sistematicamente violada: ofertas modais são 40-50% e ofertas abaixo de 20% são frequentemente rejeitadas.

    Andersen et al. (2011) realizaram experimentos na Índia com stakes variando de US\$ 0,50 a US\$ 200 (até 8 meses de salário local). Com stakes muito altos, as ofertas convergem para a previsão teórica — sugerindo que preferências por fairness têm um preço.

    <figure markdown="span">
      <iframe src="../graficos/cap09/webr-ultimatum.html" width="100%" height="720" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
      <figcaption markdown="span"><strong>R Interativo 9b.1</strong> — Simulação de um experimento de ultimatum game com modelo logit. Altere os parâmetros da simulação e estime a probabilidade de aceitar em função da oferta.</figcaption>
    </figure>

---

## R Interativo: Conluio em Postos de Gasolina

??? code "R Interativo — Dinâmica de preços e conluio em Perth (Adams, 2025, Cap. 7)"
    Wang (2009) e Clark e Roos (2019) documentaram padrões de preços cíclicos ("Edgeworth cycles") no mercado de gasolina de Perth, Austrália — evidência empírica da dinâmica cooperação/punição prevista pelos modelos de jogos repetidos.

    Este box simula os ciclos de Edgeworth: preços sobem gradualmente (fase cooperativa) e depois desabam (fase de punição/undercut), gerando o padrão "dente de serra".

    <figure markdown="span">
      <iframe src="../graficos/cap09/webr-gasoline.html" width="100%" height="720" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
      <figcaption markdown="span"><strong>R Interativo 9b.2</strong> — Simulação de ciclos de Edgeworth no mercado de gasolina. Baseado em Adams (2025, Cap. 7) e dados de Perth.</figcaption>
    </figure>

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 9b.1 — Grim Trigger em postos de combustíveis"
    **Enunciado:** Dois postos de combustíveis interagem repetidamente. Payoffs: se ambos mantêm preço alto (cooperam), cada um lucra R\$ 8.000/mês; se ambos cortam preço (traem), cada um lucra R\$ 2.000/mês; se um corta e outro mantém, o que cortou lucra R\$ 12.000 e o outro lucra R\$ 0. Qual o fator de desconto mínimo para sustentar cooperação com grim trigger?

    **Dados:** \(T = 12.000\), \(R = 8.000\), \(P = 2.000\), \(S = 0\).

    **Resolução:**

    Valor presente de cooperar: \(V_{\text{coop}} = 8.000/(1-\delta)\)

    Valor presente de desviar: \(V_{\text{desvio}} = 12.000 + 2.000\delta/(1-\delta)\)

    Condição: \(V_{\text{coop}} \geq V_{\text{desvio}}\)

    \[
    \frac{8.000}{1-\delta} \geq 12.000 + \frac{2.000\delta}{1-\delta}
    \]

    \[
    8.000 - 2.000\delta \geq 12.000(1-\delta) \implies 10.000\delta \geq 4.000 \implies \delta \geq 0{,}4
    \]

    Pela fórmula: \(\delta^* = (T-R)/(T-P) = 4.000/10.000 = 0{,}4\). ✓

    **Interpretação:** \(\delta^* = 0{,}4\) é baixo, indicando que a cooperação é fácil de sustentar — consistente com a prevalência de cartéis no setor. Com interação diária, o fator efetivo é próximo de 1, muito acima de 0,4. Isso explica por que o CADE precisa intervir ativamente.

??? example "Exercício Resolvido 9b.2 — Barganha de Rubinstein"
    **Enunciado:** Dois agentes negociam a divisão de R\$ 1 milhão com ofertas alternadas. O jogador 1 (proponente) tem \(\delta_1 = 0{,}9\) e o jogador 2 (respondedor) tem \(\delta_2 = 0{,}8\). Encontre a divisão no EPS.

    **Resolução:**

    No EPS de Rubinstein:

    \[
    x_1^* = \frac{1 - \delta_2}{1 - \delta_1\delta_2} = \frac{1 - 0{,}8}{1 - 0{,}72} = \frac{0{,}2}{0{,}28} \approx 0{,}714
    \]

    \[
    x_2^* = 1 - x_1^* \approx 0{,}286
    \]

    **Resultado:** Jogador 1 (mais paciente) fica com ≈ R\$ 714.000 e jogador 2 fica com ≈ R\$ 286.000.

    **Interpretação:** A paciência confere poder na barganha. O jogador 1, com \(\delta_1 = 0{,}9 > \delta_2 = 0{,}8\), obtém uma fatia 2,5 vezes maior. No caso simétrico (\(\delta_1 = \delta_2 = 0{,}9\)), a divisão seria \(1/(1+0{,}9) \approx 52{,}6\%\) vs \(47{,}4\%\) — a vantagem do proponente (first-mover).

---

## Exercícios

**Exercício 9b.1.** (Credibilidade de ameaças) Considere o jogo de entrada com 3 estágios: (1) E decide se entra; (2) I decide se investe K em capacidade; (3) se E entrou, I decide se luta ou acomoda.

Payoffs sem investimento: como no exemplo da Seção 9b.1.
Payoffs com investimento: se E entra e I luta, I obtém 0 (em vez de –1); o custo K reduz o payoff de I quando não luta em 1.

(a) Para que valores de K a ameaça de lutar se torna crível?

(b) Encontre o EPS para K que torna a ameaça crível.

---

**Exercício 9b.2.** (Tit-for-Tat) No Dilema dos Prisioneiros repetido com payoffs \(T = 5\), \(R = 3\), \(P = 1\), \(S = 0\):

(a) Mostre que a cooperação com Tit-for-Tat requer \(\delta \geq (T-R)/(T-S) = 2/5\).

(b) Compare com o grim trigger. Qual estratégia requer menor \(\delta^*\)?

(c) Discuta as vantagens do Tit-for-Tat à luz dos torneios de Axelrod (1984).

---

**Exercício 9b.3.** (Barganha) Dois sindicatos negociam com uma empresa. O sindicato A tem \(\delta_A = 0{,}95\) e o sindicato B tem \(\delta_B = 0{,}7\). Qual sindicato obtém um acordo melhor no modelo de Rubinstein? Quantifique.

---

**Exercício 9b.4.** (Conluio com N firmas) Mostre que no Cournot repetido infinitamente com \(N\) firmas simétricas, a cooperação requer \(\delta \geq \frac{(N+1)^2 - 4N}{(N+1)^2 - (N-1)^2}\). Para \(N = 2\), qual é \(\delta^*\)? E para \(N = 10\)?

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2010 — Questão 10"
    Considere o jogo "caça ao cervo":

    |  | Caçador 2: Cervo | Caçador 2: Lebre |
    |:---|:---:|:---:|
    | **Caçador 1: Cervo** | \((3, 3)\) | \((x, 1)\) |
    | **Caçador 1: Lebre** | \((1, x)\) | \((1, 1)\) |

    com \(0 \leq x < 1\). Avalie:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Trata-se de um jogo de informação imperfeita. |
    | 1    | Há dois equilíbrios de Nash. |
    | 2    | Os dois caçadores possuem estratégias fracamente dominantes. |
    | 3    | Se \(x = 0\), o equilíbrio misto prescreve Cervo com probabilidade \(1/3\). |
    | 4    | Se \(x \to 1\), o equilíbrio misto converge para o EN Pareto-dominado (Lebre, Lebre). |

    ??? success "Gabarito"
        **Respostas: 11011**

        - **Item 0 — V:** Jogos simultâneos são de informação imperfeita (cada jogador desconhece a ação do outro no momento da decisão).

        - **Item 1 — V:** Dois EN em puras: (Cervo, Cervo) e (Lebre, Lebre). Em ambos, nenhum desvia (\(3 > 1\) e \(1 > x\)).

        - **Item 2 — F:** Nenhuma estratégia é dominante. Cervo é melhor se o outro joga Cervo (\(3 > 1\)), mas Lebre é melhor se o outro joga Lebre (\(1 > x\)).

        - **Item 3 — V:** Com \(x=0\): \(U_2(\text{Cervo}; p) = 3p\), \(U_2(\text{Lebre}; p) = 1\). Igualando: \(p = 1/3\).

        - **Item 4 — V:** Probabilidade de Cervo: \(p = (1-x)/(3-x)\). Quando \(x \to 1\): \(p \to 0\), convergindo para (Lebre, Lebre).

---

## 🔬 Pesquisa em Ação

??? abstract "Porter, Robert H. (1983). [A Study of Cartel Stability: The Joint Executive Committee, 1880–1886](https://doi.org/10.2307/3003634). *The Bell Journal of Economics*, 14(2), 301–314."
    **Pergunta:** Os modelos de jogos repetidos preveem alternância entre conluio e guerras de preço. Essa dinâmica é observável em dados reais?

    **Método:** Dados semanais do *Joint Executive Committee* (cartel ferroviário, EUA, 1880–86). Modelo de *switching regression* para identificar fases cooperativas e de guerra de preços.

    **Resultado:** O cartel alternava entre cooperação (preços altos) e guerras de preço (preços baixos), precipitadas por choques de demanda — consistente com Green e Porter (1984).

    **Relevância:** Metodologia aplicável à investigação do CADE: padrões de preços que alternam "estabilidade" e "guerra" podem indicar conluio tácito.

??? abstract "Axelrod, Robert (1984). [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books."
    **Contribuição:** Axelrod organizou dois torneios de computador onde especialistas submeteram estratégias para o Dilema dos Prisioneiros repetido. A vencedora foi **Tit-for-Tat** (Anatol Rapoport): simples, "nice" (coopera primeiro), retaliadora (pune imediatamente) e "forgiving" (volta a cooperar).

    **Resultado:** Estratégias "nice" (que nunca iniciam a traição) dominaram. A cooperação emerge não por altruísmo, mas por auto-interesse esclarecido — a "sombra do futuro" é suficiente.

    **Relevância:** Os torneios de Axelrod influenciaram o desenho de mecanismos de regulação (programas de leniência, que exploram a instabilidade do conluio via incentivos à delação).

??? abstract "Rubinstein, Ariel (1982). [Perfect Equilibrium in a Bargaining Model](https://doi.org/10.2307/1912531). *Econometrica*, 50(1), 97–109."
    **Contribuição:** Rubinstein mostrou que o jogo de ofertas alternadas com desconto tem um **único** EPS, com divisão determinada pelos fatores de desconto. Quando o intervalo entre ofertas vai a zero, o resultado converge para a solução de barganha de Nash — uma fundamentação não cooperativa para a teoria cooperativa.

    **Relevância:** Base teórica para a análise de negociações salariais, disputas comerciais e arbitragem.

---

## Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 6–8.
- Andersen, Steffen, Seda Ertaç, Uri Gneezy, Moshe Hoffman, e John A. List. 2011. "Stakes Matter in Ultimatum Games." *American Economic Review* 101 (7): 3427–3439. [DOI](https://doi.org/10.1257/aer.101.7.3427)
- Axelrod, Robert. 1984. [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books.
- Benoit, Jean-Pierre, e Vijay Krishna. 1985. "Finitely Repeated Games." *Econometrica* 53 (4): 905–922. [DOI](https://doi.org/10.2307/1912660)
- Clark, Robert, e Jean-François Roos. 2019. "Learning to Coordinate: A Study in Retail Gasoline." Working Paper.
- Fudenberg, Drew, e Jean Tirole. 1991. [*Game Theory*](https://books.google.com/books/about/Game_Theory.html?id=pFPHKwXro3QC). Cambridge, MA: MIT Press.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press.
- Green, Edward J., e Robert H. Porter. 1984. "Noncooperative Collusion under Imperfect Price Information." *Econometrica* 52 (1): 87–100. [DOI](https://doi.org/10.2307/1911462)
- Porter, Robert H. 1983. "A Study of Cartel Stability: The Joint Executive Committee, 1880–1886." *The Bell Journal of Economics* 14 (2): 301–314. [DOI](https://doi.org/10.2307/3003634)
- Rubinstein, Ariel. 1982. "Perfect Equilibrium in a Bargaining Model." *Econometrica* 50 (1): 97–109. [DOI](https://doi.org/10.2307/1912531)
- Schelling, Thomas C. 1960. [*The Strategy of Conflict*](https://books.google.com/books?id=7RkL4Z8Yg5AC). Cambridge, MA: Harvard University Press.
- Wang, Zhongmin. 2009. "(Mixed) Strategy in Oligopoly Pricing: Evidence from Gasoline Price Cycles Before and Under a Timing Regulation." *Journal of Political Economy* 117 (6): 987–1030. [DOI](https://doi.org/10.1086/649801)
