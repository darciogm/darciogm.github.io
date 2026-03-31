# Exercícios

## 🧪 Atividades de Sala de Aula

!!! classroom "Atividade 9b.1 — Jogo do Ultimato com dinheiro real (20 min)"
    **Objetivo:** Confrontar a previsão teórica (proponente oferece quase nada, respondedor aceita) com o comportamento observado — e motivar a discussão sobre preferências sociais (Capítulo 8) e limites da racionalidade.

    **Material:** Envelopes com R$ 10 em moedas de R$ 1 (ou fichas/pontos equivalentes); formulários de proposta e resposta.

    **Protocolo:**

    1. **Formação de pares anônimos** (3 min): Divida a turma em proponentes e respondedores. Pares são formados anonimamente (proponente não sabe quem é seu respondedor e vice-versa). Use números aleatórios.
    2. **Proposta** (3 min): Cada proponente decide como dividir R$ 10: escreve em papel fechado "Ofereço R$ X ao respondedor, fico com R$ (10 - X)".
    3. **Resposta** (3 min): Cada respondedor recebe a oferta (sem saber quem fez) e decide: Aceitar (ambos recebem conforme a divisão) ou Rejeitar (ambos recebem R$ 0).
    4. **Coleta de dados** (3 min): Registre todas as ofertas e respostas. Projete a distribuição.
    5. **Debrief** (8 min):
        - **Previsão teórica**: proponente oferece R$ 0 (ou R$ 1), respondedor aceita. Quantas ofertas foram ≤ R$ 2? Quantas foram rejeitadas?
        - **Resultado típico**: ofertas modais entre R$ 4 e R$ 5; ofertas abaixo de R$ 2 frequentemente rejeitadas.
        - **Discussão**: "Por que respondedores rejeitam ofertas positivas (recusam dinheiro grátis)?" → Aversão à inequidade (Fehr-Schmidt, Cap. 8), punição altruísta, normas de fairness.
        - "Se fossem dois bots racionais, qual seria o resultado?" → EPS por indução retroativa.
        - "O que muda se o proponente sabe o nome do respondedor?" → Normas sociais, identidade, efeito do anonimato.

    **Conexão com o conteúdo:** Jogo do ultimato (Seção 9b.3), EPS vs. comportamento observado, ponte com economia comportamental (Cap. 8). Referência: Güth, Schmittberger e Schwarze (1982), "An Experimental Analysis of Ultimatum Bargaining", *Journal of Economic Behavior & Organization*.

!!! classroom "Atividade 9b.2 — Mercado de limões ao vivo (25 min)"
    **Objetivo:** Demonstrar visualmente o *market unraveling* de Akerlof — observar a seleção adversa destruindo o mercado em tempo real.

    **Material:** Cartas de baralho (Ás a 10 = qualidades 1 a 10); fichas de "dinheiro"; quadro para registrar transações.

    **Protocolo:**

    1. **Setup** (5 min): Metade da turma são vendedores, metade compradores. Cada vendedor sorteia uma carta (qualidade \(q\), secreta). Valor do carro para o vendedor = \(q\); valor para o comprador = \(1{,}5q\). Há ganhos de troca em *toda* transação (comprador valoriza mais).
    2. **Rodada 1 — Informação simétrica** (5 min): Vendedores mostram a carta. Compradores e vendedores negociam livremente. Registre preços e qualidades transacionadas. Resultado esperado: todas as transações ocorrem a preços entre \(q\) e \(1{,}5q\).
    3. **Rodada 2 — Informação assimétrica** (8 min): Vendedores *não* mostram a carta. O comprador sabe apenas a distribuição (uniforme de 1 a 10). Negociação livre. Registre o que acontece.
    4. **Debrief** (7 min):
        - Compare a quantidade de transações nas Rodadas 1 e 2. Na Rodada 2, carros de alta qualidade foram vendidos?
        - "Quem saiu do mercado primeiro?" → Vendedores de carros bons (o preço médio era baixo demais).
        - "Isso acontece no mundo real?" → Carros usados, planos de saúde individuais (Box Brasil ANS, Cap. 9d).
        - "Que mecanismo poderia resolver?" → Garantias (sinalização), vistoria (certificação), obrigatoriedade (regulação).

    **Conexão com o conteúdo:** Seleção adversa de Akerlof (Módulo 9d, Seção 9d.5), *market unraveling*, mecanismos de mitigação. Inspirado em Holt (2007, Cap. 24) e Bergstrom e Miller (2000, Cap. 32).

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O Equilíbrio Perfeito em Subjogos (EPS) refina o equilíbrio de Nash ao:"
    - (a) Exigir que todos os jogadores usem estratégias dominantes
    - (b) Eliminar equilíbrios sustentados por ameaças não críveis em subjogos
    - (c) Permitir que jogadores revisem suas estratégias a cada rodada
    - (d) Garantir que o resultado seja Pareto-ótimo

    ??? success "Resposta"
        **(b)** O EPS exige que a estratégia de cada jogador constitua um equilíbrio de Nash em todo subjogo do jogo, eliminando ameaças que o jogador não teria incentivo a cumprir se o momento chegasse. Todo EPS é EN, mas nem todo EN é EPS. A alternativa (d) é falsa — o EPS pode ser ineficiente.

??? question "2. A indução retroativa (backward induction) resolve jogos sequenciais começando:"
    - (a) Pelo primeiro nó de decisão e avançando para frente
    - (b) Pelos nós terminais, determinando a melhor ação em cada nó de trás para frente
    - (c) Pelo jogador com mais estratégias disponíveis
    - (d) Pela eliminação aleatória de estratégias dominadas

    ??? success "Resposta"
        **(b)** A indução retroativa começa nos nós finais da árvore do jogo, determina a ação ótima do jogador que decide por último, substitui esse nó pelo payoff resultante e recua até o início. Isso garante credibilidade em cada estágio. A alternativa (a) descreve indução progressiva, que não elimina ameaças não críveis.

??? question "3. No Folk Theorem para jogos repetidos infinitamente, a cooperação pode ser sustentada em equilíbrio se:"
    - (a) Os jogadores são altruístas e se importam com o bem-estar dos outros
    - (b) O fator de desconto é suficientemente alto (jogadores são pacientes), permitindo que punições futuras disciplinem desvios presentes
    - (c) O jogo é jogado um número finito e conhecido de vezes
    - (d) Existe um mecanismo externo de enforcement

    ??? success "Resposta"
        **(b)** O Folk Theorem mostra que, se os jogadores são suficientemente pacientes ($\delta$ alto), qualquer payoff individualmente racional pode ser sustentado como equilíbrio do jogo repetido infinitamente, usando estratégias de punição (como trigger/grim). A alternativa (c) leva ao resultado oposto — pelo argumento de indução retroativa, a cooperação se desfaz; (a) não é necessário; (d) não é necessário quando a repetição fornece enforcement endógeno.

??? question "4. No modelo de barganha de Rubinstein com ofertas alternadas, o poder de barganha de um jogador aumenta quando:"
    - (a) Seu fator de desconto diminui (fica mais impaciente)
    - (b) Seu fator de desconto aumenta (fica mais paciente) em relação ao do oponente
    - (c) O número total de rodadas aumenta
    - (d) Ambos os jogadores têm o mesmo fator de desconto

    ??? success "Resposta"
        **(b)** No equilíbrio de Rubinstein, o jogador mais paciente obtém uma fatia maior do excedente. Paciência ($\delta$ alto) significa que o custo de esperar é menor, o que fortalece a posição de barganha. A alternativa (a) reduz o poder; (c) é irrelevante no modelo com horizonte infinito; (d) implica divisão simétrica, não aumento de poder.

??? question "5. Em um jogo finito repetido $T$ vezes (com $T$ conhecido), o argumento de 'unraveling' (desvendamento) implica que:"
    - (a) A cooperação é sustentável em todas as rodadas, desde que $T$ seja grande
    - (b) A cooperação se desfaz por indução retroativa: na última rodada não há incentivo a cooperar, logo na penúltima também não, e assim por diante
    - (c) Os jogadores cooperam nas primeiras rodadas e desviam apenas nas últimas
    - (d) O resultado depende exclusivamente do número de jogadores

    ??? success "Resposta"
        **(b)** Com $T$ finito e conhecido, a indução retroativa parte da rodada $T$ (onde não há futuro para punir, logo ninguém coopera), propaga para $T-1$, e assim por diante até a rodada 1. O único EPS é a repetição do EN do jogo estático em todas as rodadas. A alternativa (c) pode ocorrer com incerteza sobre $T$ ou com tipos comportamentais, mas não no modelo padrão com $T$ conhecido.

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação completa envolvem jogadores que agem em sequência, podendo observar as ações anteriores. O conceito de solução central é o **Equilíbrio Perfeito em Subjogos (EPS)**, obtido por **indução retroativa**.
- O EPS refina o equilíbrio de Nash ao eliminar equilíbrios sustentados por **ameaças não críveis** — ações que o jogador não teria incentivo para executar se o momento chegasse. Todo EPS é NE, mas a recíproca é falsa.
- Em **jogos finitamente repetidos** com equilíbrio de estágio único, a indução retroativa implica repetição do equilíbrio de estágio em todos os períodos (*unraveling*).
- Em **jogos repetidos infinitamente**, a cooperação pode ser sustentada em equilíbrio via estratégias de punição (grim trigger, *tit-for-tat*), desde que os jogadores sejam suficientemente pacientes (\(\delta \geq \delta^*\)). A "sombra do futuro" é o mecanismo disciplinador.
- O **Folk Theorem** mostra que, com \(\delta\) suficientemente alto, qualquer payoff individualmente racional e factível pode ser sustentado como equilíbrio — gerando multiplicidade de equilíbrios e limitando o poder preditivo.
- Na **barganha de Rubinstein** (ofertas alternadas), o único EPS gera uma divisão determinada pelos fatores de desconto: o jogador mais paciente obtém a maior fatia.
- O **comprometimento** — investimento irreversível, contratos vinculantes ou reputação — é o mecanismo que torna ameaças críveis e confere vantagem estratégica. Dispositivos de comprometimento restringem as próprias opções do agente para alterar as expectativas dos demais — um princípio que se estende à escolha intertemporal (Capítulo 18).
- A exigência de **prova de renegociação** refina os equilíbrios do Folk Theorem: estratégias de punição só são críveis se os jogadores não teriam incentivo para renegociar e retornar à cooperação durante a fase de punição.
- As **opções externas** dos negociadores afetam o resultado da barganha quando são suficientemente atrativas para serem vinculantes — alterando o ponto de referência do acordo.

## 🔑 Conceitos-Chave

<a id="tabela-9b-2"></a>

| Conceito | Definição |
|----------|-----------|
| Indução retroativa | Método de solução que resolve o jogo "de trás para frente", determinando ações ótimas a partir dos últimos nós de decisão. |
| Equilíbrio Perfeito em Subjogos (EPS) | Perfil de estratégias que constitui um equilíbrio de Nash em todo subjogo do jogo na forma extensiva. |
| Ameaça não crível | Ação que um jogador ameaça executar mas que não seria ótima no momento da decisão; eliminada pelo EPS. |
| Comprometimento | Ação irreversível que altera os payoffs futuros, tornando uma ameaça ou promessa crível. |
| Estratégia de gatilho (Grim Trigger) | Coopera enquanto todos cooperam; se alguém desvia, pune para sempre jogando a estratégia não cooperativa. |
| Tit-for-Tat | Coopera no primeiro período; depois copia a ação do oponente no período anterior. |
| Folk Theorem | Resultado que afirma que qualquer payoff factível e individualmente racional pode ser sustentado em equilíbrio de jogo repetido infinitamente com \(\delta\) suficientemente alto. |
| Fator de desconto (\(\delta\)) | Medida da paciência dos jogadores ou da probabilidade de continuação do jogo; determina a viabilidade da cooperação. |
| Barganha de Rubinstein | Modelo de ofertas alternadas com desconto cujo único EPS gera divisão proporcional à paciência relativa dos jogadores. |
| Jogo do Ultimato | Jogo de barganha em que o proponente faz uma oferta e o respondedor aceita ou rejeita; o EPS prevê oferta mínima, mas experimentos mostram ofertas de 40-50%. |
| Dispositivo de comprometimento | Ação ou mecanismo que restringe as opções futuras do agente, tornando críveis suas ameaças ou promessas (ex.: investimento irreversível, regras fiscais, independência do Banco Central). |
| Prova de renegociação | Critério de refinamento que exige que a estratégia de punição não seja Pareto-dominada por um retorno à cooperação — punições que ambos os jogadores prefeririam abandonar não são críveis. |
| Opção externa (*outside option*) | Payoff disponível a um negociador fora da barganha corrente; vinculante quando excede o payoff de equilíbrio sem ela. |
| Payoff de minimax | Menor payoff que os demais jogadores podem impor ao jogador \(i\), supondo que \(i\) jogue sua melhor resposta; é o limiar inferior para payoffs sustentáveis no Folk Theorem. |

<div class="caption-obj" markdown>
**Tabela 9b.2 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9b.1 — Grim Trigger em postos de combustíveis"
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

??? exercicio-resolvido "Exercício Resolvido 9b.2 — Barganha de Rubinstein"
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

??? exercicio-resolvido "Exercício Resolvido 9b.3 — Cooperação com punição temporária (Tit-for-Two-Tats)"
    **Enunciado:** Dois duopolistas jogam o Dilema dos Prisioneiros repetido infinitamente com payoffs \(T = 10\), \(R = 6\), \(P = 2\), \(S = 0\) e fator de desconto \(\delta\). Considere a estratégia "Tit-for-Two-Tats" (TF2T): coopere no primeiro período; só puna (jogue D) se o oponente desviou nos *dois* últimos períodos consecutivos; caso contrário, coopere.

    (a) Qual é o \(\delta^*\) mínimo para sustentar cooperação com TF2T?

    (b) Compare com o grim trigger e o *tit-for-tat* padrão. Qual estratégia é mais "permissiva"?

    (c) Discuta a vantagem da TF2T em termos de prova de renegociação.

    **Resolução:**

    **(a)** Com TF2T, um desvio isolado em um período não é punido (o oponente "perdoa" um desvio). Para explorar a TF2T, o jogador precisa desviar em *dois* períodos consecutivos. O desvio mais lucrativo é:

    - Período \(t\): desviar → ganho \(T = 10\) (em vez de \(R = 6\)).
    - Período \(t+1\): desviar novamente → ganho \(T = 10\) (o oponente ainda coopera, pois foi apenas um desvio).
    - Período \(t+2\) em diante: punição ativada, oponente joga D. Retornando à cooperação após a punição.

    Na verdade, com TF2T, após dois desvios consecutivos, o oponente pune por um período. O fluxo de payoffs do desvio ótimo (desviar uma vez e voltar a cooperar) é:

    \[
    V_{\text{desvio}} = 10 + \frac{6\delta}{1-\delta}
    \]

    pois um único desvio não ativa punição. Para que a cooperação seja sustentável, precisamos que *nenhum* padrão de desvios seja lucrativo. O desvio permanente (desviar para sempre) dá:

    \[
    V_{\text{desvio permanente}} = 10 + 10\delta + \frac{2\delta^2}{1-\delta}
    \]

    (dois períodos de \(T = 10\) pois no segundo o oponente ainda coopera, depois punição perpétua).

    Cooperação: \(V_{\text{coop}} = 6/(1-\delta)\).

    A condição vinculante é contra o desvio permanente:

    \[
    \frac{6}{1-\delta} \geq 10 + 10\delta + \frac{2\delta^2}{1-\delta}
    \]

    \[
    6 \geq 10(1-\delta) + 10\delta(1-\delta) + 2\delta^2 = 10 - 10\delta + 10\delta - 10\delta^2 + 2\delta^2
    \]

    \[
    6 \geq 10 - 8\delta^2 \implies 8\delta^2 \geq 4 \implies \delta \geq \frac{1}{\sqrt{2}} \approx 0{,}707
    \]

    **(b)** Com grim trigger: \(\delta^* = (T-R)/(T-P) = 4/8 = 0{,}5\). Com *tit-for-tat* padrão: \(\delta^* = 0{,}5\) (mesma fórmula). Com TF2T: \(\delta^* \approx 0{,}707\).

    A TF2T é **mais exigente** em termos de paciência — requer \(\delta\) mais alto para sustentar cooperação, porque a punição é mais branda (tolera um desvio), o que reduz a deterrência.

    **(c)** A vantagem da TF2T é que ela é mais **robusta a erros** e mais **crível como punição**. Numa relação comercial real, é implausível que uma empresa abandone permanentemente a cooperação por causa de um único desvio (que poderia ser um erro ou um choque temporário). A TF2T filtra esses "ruídos" e só pune padrões consistentes de não-cooperação. Em termos de prova de renegociação, a punição da TF2T (um período de D) é temporária e proporcional, não envolvendo destruição mútua perpétua — é mais crível que a punição do grim trigger, que nenhum par de jogadores racionais manteria voluntariamente.

---

## ✏️ Exercícios

<a id="ex-9b-1"></a>**Exercício 9b.1.** (Credibilidade de ameaças) Considere o jogo de entrada com 3 estágios: (1) E decide se entra; (2) I decide se investe K em capacidade; (3) se E entrou, I decide se luta ou acomoda.

Payoffs sem investimento: como no exemplo da Seção 9b.1.
Payoffs com investimento: se E entra e I luta, I obtém 0 (em vez de –1); o custo K reduz o payoff de I quando não luta em 1.

(a) Para que valores de K a ameaça de lutar se torna crível?

(b) Encontre o EPS para K que torna a ameaça crível.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-1)

---

<a id="ex-9b-2"></a>**Exercício 9b.2.** (Tit-for-Tat) No Dilema dos Prisioneiros repetido com payoffs \(T = 5\), \(R = 3\), \(P = 1\), \(S = 0\):

(a) Mostre que a cooperação com Tit-for-Tat requer \(\delta \geq (T-R)/(T-P) = 2/4 = 1/2\).

(b) Compare com o grim trigger. Qual estratégia requer menor \(\delta^*\)?

(c) Discuta as vantagens do Tit-for-Tat à luz dos torneios de Axelrod (1984).

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-2)

---

<a id="ex-9b-3"></a>**Exercício 9b.3.** (Barganha) Dois sindicatos negociam com uma empresa. O sindicato A tem \(\delta_A = 0{,}95\) e o sindicato B tem \(\delta_B = 0{,}7\). Qual sindicato obtém um acordo melhor no modelo de Rubinstein? Quantifique.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-3)

---

<a id="ex-9b-4"></a>**Exercício 9b.4.** (Conluio com N firmas) Mostre que no Cournot repetido infinitamente com \(N\) firmas simétricas, a cooperação requer \(\delta \geq \frac{(N-1)^2(N+1)^2}{(N+1)^4 - 16N^2}\). Para \(N = 2\), qual é \(\delta^*\)? E para \(N = 10\)?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-4)

---

<a id="ex-9b-5"></a>**Exercício 9b.5.** (Fácil — Indução retroativa num jogo de entrada em 2 estágios) Uma firma entrante (E) decide se entra num mercado. Se entrar, a incumbente (I) decide se luta ou acomoda. Os payoffs são os seguintes:

- E não entra: \((0, 10)\)
- E entra, I acomoda: \((4, 4)\)
- E entra, I luta: \((-2, -2)\)

(a) Represente o jogo na forma extensiva (árvore) e identifique todos os subjogos.

(b) Encontre todos os equilíbrios de Nash do jogo (em forma normal).

(c) Aplique indução retroativa e identifique o único EPS. Qual ameaça é eliminada?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-5)

---

<a id="ex-9b-6"></a>**Exercício 9b.6.** (Fácil — EPS em barganha sequencial de 2 rodadas) Dois agentes negociam a divisão de R\$ 100. Na rodada 1, o agente A propõe uma divisão \((x, 100-x)\). Se B aceita, o jogo termina. Se B rejeita, na rodada 2 o agente B propõe \((y, 100-y)\); A aceita ou rejeita (se A rejeita, ambos recebem 0). Ambos têm fator de desconto \(\delta = 0{,}8\) (o valor do acordo diminui em 20% a cada rodada rejeitada).

(a) Resolva por indução retroativa, começando pela rodada 2.

(b) Qual é a oferta de equilíbrio de A na rodada 1?

(c) Como muda a divisão se \(\delta\) cai para 0,5? Interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-6)

---

<a id="ex-9b-7"></a>**Exercício 9b.7.** (Médio — Dilema dos Prisioneiros finitamente repetido) Dois concorrentes jogam o seguinte Dilema dos Prisioneiros exatamente \(T = 3\) vezes:

|  | C | D |
|:---|:---:|:---:|
| **C** | \((3, 3)\) | \((0, 5)\) |
| **D** | \((5, 0)\) | \((1, 1)\) |

(a) Usando indução retroativa, mostre que o único EPS prescreve (D, D) em todos os 3 períodos.

(b) Agora suponha que no período 3, além de (D, D), existe um segundo equilíbrio de estágio \((C, C)\) com payoff \((3, 3)\) — por exemplo, por efeitos reputacionais externos. Como isso afeta a possibilidade de cooperação nos períodos 1 e 2? (Discuta qualitativamente, com base em Benoit e Krishna, 1985.)

(c) Quantos EPS existem no jogo finitamente repetido do item (a)?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-7)

---

<a id="ex-9b-8"></a>**Exercício 9b.8.** (Médio — Brasil — Sustentabilidade do conluio com taxa Selic) Duas distribuidoras de combustível interagem mensalmente. Os payoffs mensais (em R\$ mil) são: cooperar = (50, 50); desviar unilateralmente = (80, 0) ou (0, 80); punição mútua permanente = (20, 20).

(a) Qual é o \(\delta^*\) mínimo para sustentar cooperação com grim trigger?

(b) Com a taxa Selic a **13,75% a.a.** (pico de 2023), calcule o fator de desconto mensal \(\delta = 1/(1 + r_{\text{mensal}})\) e verifique se a cooperação é sustentável.

(c) Com a Selic a **10,5% a.a.** (referência de 2024), recalcule \(\delta\) e compare. Taxas de juros mais baixas facilitam ou dificultam o conluio? Discuta as implicações para a política antitruste.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-8)

---

<a id="ex-9b-9"></a>**Exercício 9b.9.** (Difícil — Barganha de Rubinstein com paciência assimétrica) Dois agentes negociam a divisão de um bolo de tamanho 1 com ofertas alternadas. O agente 1 (proponente ímpar) tem fator de desconto \(\delta_1\) e o agente 2 (proponente par) tem \(\delta_2\), com \(\delta_1 \neq \delta_2\).

(a) Derive o único EPS de Rubinstein usando as condições de indiferença: o respondedor deve ser indiferente entre aceitar e rejeitar em equilíbrio. Mostre que as equações de ponto fixo levam à fórmula $(9\text{b}.2)$.

(b) Calcule a divisão para \(\delta_1 = 0{,}9\) e \(\delta_2 = 0{,}5\). Quem tem maior poder de barganha?

(c) Mostre que quando \(\delta_1 = \delta_2 = \delta\), a vantagem do proponente desaparece quando \(\delta \to 1\). Qual é a interpretação econômica desse limite?

(d) **Aplicação:** Uma negociação trabalhista no Brasil tem \(\delta_{\text{sind}} = 0{,}95\) (sindicato com fundo de greve robusto) e \(\delta_{\text{emp}} = 0{,}7\) (empresa com estoque baixo e demanda aquecida). Qual fração do excedente o sindicato captura se ele propõe primeiro? E se a empresa propõe primeiro?

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-9)

---

<a id="ex-9b-10"></a>**Exercício 9b.10.** (Difícil — Dilema dos Prisioneiros finitamente repetido com horizonte incerto) Dois jogadores jogam o Dilema dos Prisioneiros com payoffs \(T = 8\), \(R = 5\), \(P = 1\), \(S = 0\). O jogo é repetido, mas após cada período há uma probabilidade \(p\) de que o jogo termine (e \(1-p\) de que continue).

(a) Mostre que o fator de desconto efetivo é \(\delta_{\text{ef}} = \delta(1-p)\), onde \(\delta\) é o fator de desconto puro. Derive a condição para sustentabilidade da cooperação com grim trigger em termos de \(\delta\) e \(p\).

(b) Se \(\delta = 0{,}95\), qual é a probabilidade máxima de término \(p^*\) que ainda permite sustentar cooperação?

(c) Interprete o resultado: em mercados onde há alta probabilidade de saída de concorrentes (p alto), o conluio é mais ou menos estável? Relacione com a concentração do mercado de cimento no Brasil, onde poucas firmas operam com horizonte de longo prazo.

[:material-arrow-right: Ver solução](../solucoes/cap09b.md#ex-9b-10)

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

??? question "ANPEC — Jogos dinâmicos, EPS e jogos repetidos"
    Considere jogos dinâmicos com informação completa. Avalie as afirmações:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em todo jogo finito com informação perfeita, a indução retroativa identifica pelo menos um Equilíbrio Perfeito em Subjogos. |
    | 1    | No Dilema dos Prisioneiros repetido infinitamente, a cooperação pode ser sustentada como EPS para qualquer valor do fator de desconto \(\delta \in (0,1)\). |
    | 2    | No modelo de barganha de Rubinstein com fatores de desconto simétricos \(\delta_1 = \delta_2 = \delta\), o jogador que propõe primeiro sempre obtém mais do que metade do excedente, para qualquer \(\delta \in (0,1)\). |
    | 3    | O Folk Theorem garante que, em jogos infinitamente repetidos com \(\delta\) suficientemente alto, qualquer perfil de payoffs factível e individualmente racional pode ser sustentado como equilíbrio. |
    | 4    | No Dilema dos Prisioneiros repetido finitamente (com horizonte \(T\) conhecido), o único EPS é a repetição do equilíbrio de Nash do jogo de estágio em todos os \(T\) períodos, desde que o jogo de estágio tenha equilíbrio de Nash único. |

    ??? success "Gabarito"
        **Respostas: 10111**

        - **Item 0 — V:** Pelo Teorema de Kuhn, todo jogo finito com informação perfeita possui pelo menos um EPS, identificável por indução retroativa. Se os payoffs são genéricos (sem empates), o EPS é único.

        - **Item 1 — F:** A cooperação exige \(\delta \geq \delta^* = (T-R)/(T-P)\). Para \(\delta < \delta^*\), a cooperação não é sustentável — o ganho imediato da traição supera a perda futura da punição. Portanto, não é para *qualquer* \(\delta\), mas apenas para \(\delta\) suficientemente alto.

        - **Item 2 — V:** Com \(\delta_1 = \delta_2 = \delta\), o proponente obtém \(x_1^* = 1/(1+\delta)\). Como \(\delta \in (0,1)\), temos \(1+\delta \in (1,2)\), logo \(x_1^* \in (1/2, 1)\). O proponente sempre obtém mais da metade — é a "vantagem do primeiro movimento" (*first-mover advantage*). A vantagem diminui quando \(\delta \to 1\) (convergência para 50/50) mas nunca desaparece para \(\delta < 1\).

        - **Item 3 — V:** Essa é a afirmação central do Folk Theorem (Fudenberg e Maskin, 1986). A versão para EPS requer \(\delta\) suficientemente próximo de 1 e que a dimensão do conjunto de payoffs factíveis seja adequada, mas a afirmação geral é verdadeira.

        - **Item 4 — V:** Com jogo de estágio que possui equilíbrio de Nash único, a indução retroativa a partir do período \(T\) implica que o equilíbrio de estágio é jogado em todos os períodos. Esse é o resultado clássico de *unraveling*. A condição crucial é que o equilíbrio de estágio seja único — com múltiplos equilíbrios (Benoit e Krishna, 1985), a cooperação pode emergir mesmo em jogos finitos.
