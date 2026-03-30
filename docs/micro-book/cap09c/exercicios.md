# Exercícios

## 🧪 Atividades de Sala de Aula

!!! classroom "Atividade 9c.1 — Leilão de envelopes: primeiro preço vs. segundo preço (25 min)"
    **Objetivo:** Verificar empiricamente o *bid shading* no primeiro preço, a revelação de verdade no segundo preço, e o Teorema da Equivalência de Receita.

    **Material:** Envelopes numerados contendo "fichas" de valores conhecidos apenas pelo titular (cartões com números de 1 a 100, sorteados aleatoriamente); formulários de lance; planilha projetada.

    **Protocolo:**

    1. **Sorteio de valores** (3 min): Cada aluno sorteia um número de 1 a 100 (sem revelar). Esse é seu valor privado \(v_i\). Forme grupos de 4 licitantes.
    2. **Fase 1 — Leilão de segundo preço** (8 min): Cada licitante escreve seu lance em papel fechado. O maior lance ganha e paga o *segundo* maior lance. Repita 3 vezes (re-sorteio a cada rodada). Registre: lance, valor, quem ganhou, quanto pagou.
    3. **Fase 2 — Leilão de primeiro preço** (8 min): Mesmo procedimento, mas agora o vencedor paga o *próprio* lance. Repita 3 rodadas.
    4. **Debrief** (6 min):
        - Projete os dados: lance médio vs. valor médio em cada formato.
        - **Segundo preço**: os alunos lançaram \(b_i \approx v_i\)? Quem lançou acima do valor? (Erro — potencial lucro negativo!)
        - **Primeiro preço**: quanto sombrearam? Calcule \(b_i/v_i\) médio e compare com \((N-1)/N = 3/4 = 0{,}75\).
        - **Equivalência de receita**: a receita média foi similar nos dois formatos? (Tipicamente sim, com amostra grande.)
        - Pergunte: "Se vocês fossem a ANP leiloando um bloco do pré-sal, qual formato escolheriam? O que muda se houver *valor comum*?"

    **Conexão com o conteúdo:** Leilões IPV (Seção 9c.3), *bid shading* (eq. 9c.3), Teorema da Equivalência de Receita (Seção 9c.3). Inspirado em Holt (2007, Cap. 19) e Kagel (1995).

!!! classroom "Atividade 9c.2 — Desenhando um mecanismo: o problema do bolo (15 min)"
    **Objetivo:** Introduzir intuitivamente o desenho de mecanismos — mostrar que as *regras do jogo* determinam o resultado.

    **Material:** Nenhum (apenas projeção e discussão).

    **Protocolo:**

    1. **O problema** (2 min): "Dois irmãos precisam dividir um bolo. Cada um acha que merece mais da metade. Vocês são o *designer de mecanismo*: inventem uma regra de divisão que seja justa e à prova de manipulação."
    2. **Brainstorm em pares** (5 min): Duplas propõem mecanismos. Registre no quadro.
    3. **Discussão coletiva** (8 min):
        - Mecanismo clássico: "Um corta, o outro escolhe." Por que funciona? → Quem corta tem incentivo a dividir igualmente (senão o outro pega o pedaço maior). É um mecanismo *incentivo-compatível*: a ação egoísta gera o resultado eficiente.
        - Compare com: "Cada um diz quanto quer e o juiz decide." → Incentivo a exagerar (cheap talk!).
        - Compare com: "Leilão: quem paga mais fica com o bolo." → Eficiente mas não justo para quem é mais pobre.
        - Conecte ao Princípio da Revelação: o mecanismo "um corta, outro escolhe" *induz* revelação verdadeira das preferências sem exigi-la explicitamente — como o leilão de Vickrey induz lances verdadeiros.
        - Referência pythonesca[^holy-grenade]: *"First shalt thou take out the Holy Pin. Then shalt thou count to three. No more. No less."* — A Santa Granada de Antioquia só funciona se o protocolo for seguido exatamente. Mecanismos são assim: a especificação precisa das regras é o que garante o resultado desejado. Conte até quatro e tudo explode (literalmente).

    **Conexão com o conteúdo:** Desenho de mecanismos (Seção 9c.4), Princípio da Revelação, mecanismo VCG.

[^holy-grenade]: *Monty Python and the Holy Grail* (1975). A cena da Holy Hand Grenade of Antioch é, inadvertidamente, a melhor metáfora para desenho de mecanismos já filmada. O protocolo (tirar o pino, contar até três, lançar) é a "função de resultado" \(g\); o erro de contagem do Rei Arthur ("Three, sir!") é a implementação imperfeita; e o resultado (explosão do Coelho Assassino) é a alocação eficiente — mas *somente* se o protocolo for seguido corretamente.

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No Equilíbrio Bayesiano de Nash (BNE), cada jogador:"
    - (a) Conhece perfeitamente o tipo de todos os demais jogadores
    - (b) Maximiza seu payoff esperado condicionando nas crenças sobre os tipos dos demais e nas estratégias de equilíbrio
    - (c) Escolhe a estratégia que maximiza o payoff no pior cenário possível (maximin)
    - (d) Observa as ações anteriores dos demais antes de decidir

    ??? success "Resposta"
        **(b)** No BNE, cada tipo de cada jogador escolhe a ação que maximiza seu payoff esperado, dado suas crenças (prior bayesiano) sobre os tipos dos demais e dado que os demais jogam suas estratégias de equilíbrio. A alternativa (a) descreve informação completa; (c) descreve maximin, não Nash bayesiano; (d) descreve jogos dinâmicos, não estáticos com informação incompleta.

??? question "2. Em um leilão de segundo preço (Vickrey) com valores privados independentes, a estratégia dominante de cada participante é:"
    - (a) Ofertar abaixo do próprio valor para obter lucro positivo
    - (b) Ofertar exatamente o próprio valor verdadeiro
    - (c) Ofertar acima do próprio valor para aumentar a chance de vencer
    - (d) Ofertar a média entre seu valor e o valor esperado dos demais

    ??? success "Resposta"
        **(b)** No leilão de Vickrey, o vencedor paga o segundo maior lance. Ofertar o valor verdadeiro é estratégia fracamente dominante: ofertar menos reduz a chance de vencer sem alterar o preço pago; ofertar mais pode levar a vencer e pagar mais do que o bem vale. A alternativa (a) descreve bid shading, ótimo em leilão de primeiro preço; (c) gera 'winner's curse'.

??? question "3. O Teorema da Equivalência de Receita afirma que, sob certas condições, todos os formatos de leilão padrão geram:"
    - (a) O mesmo vencedor e o mesmo preço pago em cada realização
    - (b) A mesma receita esperada para o leiloeiro
    - (c) O mesmo lance ótimo para cada participante
    - (d) Eficiência alocativa apenas em leilões de segundo preço

    ??? success "Resposta"
        **(b)** Com valores privados independentes, simetria, aversão ao risco neutra e certas condições de regularidade, todos os leilões padrão (primeiro preço, segundo preço, inglês, holandês) geram a mesma receita esperada para o vendedor. O vencedor é sempre o mesmo (quem tem maior valor), mas o preço pago pode diferir em cada realização — a equivalência é em expectativa. A alternativa (a) confunde valores realizados com esperados.

??? question "4. No leilão de primeiro preço com valores privados, o bid shading (ofertar abaixo do valor) é ótimo porque:"
    - (a) O participante quer minimizar seu gasto total
    - (b) Ofertar o valor verdadeiro resultaria em lucro zero quando vencer, então vale a pena sacrificar alguma probabilidade de vencer por lucro positivo
    - (c) É ilegal ofertar o valor verdadeiro
    - (d) Todos os outros participantes ofertam zero

    ??? success "Resposta"
        **(b)** No primeiro preço, o vencedor paga seu próprio lance. Ofertar $v_i$ garante lucro zero se vencer. Ao ofertar $b_i < v_i$, o participante obtém lucro $v_i - b_i > 0$ quando vence, ao custo de uma menor probabilidade de vitória. O lance ótimo equilibra esse trade-off. O grau de shading depende do número de competidores — com mais competidores, shading diminui.

??? question "5. A 'maldição do vencedor' (winner's curse) ocorre tipicamente em leilões de:"
    - (a) Valores privados independentes
    - (b) Valor comum, onde o fato de ter o maior lance sugere que se superestimou o valor do objeto
    - (c) Segundo preço, onde o pagamento é sempre justo
    - (d) Qualquer formato, independentemente da estrutura de valores

    ??? success "Resposta"
        **(b)** Em leilões de valor comum (ex.: leilão de direitos de exploração de petróleo), o objeto tem o mesmo valor para todos, mas cada um tem uma estimativa com ruído. O vencedor é quem teve a estimativa mais otimista, o que sistematicamente superestima o valor. Licitantes racionais antecipam isso e ajustam seus lances para baixo. Em valores privados (a), não há maldição do vencedor.

---

## 📋 Resumo do Capítulo

- Jogos com **informação incompleta** modelam situações em que os jogadores não conhecem plenamente as características dos demais (payoffs, custos, tipo). A transformação de Harsanyi converte essa incerteza em um jogo bayesiano com "tipos" privados sorteados pela natureza.
- O conceito de equilíbrio é o **Equilíbrio Bayesiano de Nash (BNE)**: cada tipo de cada jogador maximiza seu payoff esperado, condicionando nas crenças sobre os tipos dos outros e nas estratégias de equilíbrio dos demais.
- Em **leilões de valor privado**, a estratégia ótima depende do formato: no leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia fracamente dominante; no de primeiro preço, licitantes "sombreiam" seus lances por um fator \((N-1)/N\).
- O **Teorema da Equivalência de Receita** estabelece que, sob hipóteses padrão (simetria, IPV, risco-neutralidade), todos os formatos de leilão que atribuem o objeto ao maior valor geram a mesma receita esperada. A intuição vem do envelope theorem: os payoffs dos licitantes e a alocação são determinados pelas mesmas probabilidades, portanto o "resíduo" para o leiloeiro é fixo.
- Em **leilões de valor comum**, a **maldição do vencedor** faz com que o ganhador tenda a superestimar o valor do objeto, exigindo sombreamento adicional dos lances. O ajuste ótimo condiciona no evento de vencer.
- O **desenho de mecanismos** inverte a pergunta da teoria dos jogos: dado o resultado desejado, qual jogo o implementa em equilíbrio? O Princípio da Revelação simplifica a busca ao limitar a análise a mecanismos de revelação direta.
- O **mecanismo VCG** generaliza o leilão de Vickrey para contextos multi-objeto, cobrando de cada agente a externalidade que impõe aos demais.
- O **leilão ótimo de Myerson** maximiza receita usando valores virtuais, preço de reserva e possível discriminação entre licitantes assimétricos.

## 🔑 Conceitos-Chave

<a id="tabela-9c-1"></a>

| Conceito | Definição |
|----------|-----------|
| Jogo bayesiano | Jogo em que cada jogador possui um tipo privado sorteado pela natureza, com payoffs que dependem do perfil de tipos. |
| Transformação de Harsanyi | Técnica que converte um jogo com informação incompleta em um jogo com informação imperfeita, introduzindo a natureza como jogador que sorteia tipos. |
| Equilíbrio Bayesiano de Nash (BNE) | Perfil de estratégias (funções do tipo) em que cada tipo maximiza o payoff esperado, dadas as crenças e estratégias dos demais. |
| Valores Privados Independentes (IPV) | Modelo em que cada licitante conhece apenas seu próprio valor, sorteado independentemente dos demais. |
| Leilão de segundo preço (Vickrey) | Leilão em que o vencedor paga o segundo maior lance; lançar o valor verdadeiro é estratégia fracamente dominante. |
| Leilão de primeiro preço | Leilão em que o vencedor paga seu próprio lance; o BNE envolve sombreamento (\(bid\,shading\)) do lance abaixo do valor. |
| Teorema da Equivalência de Receita | Sob IPV, simetria e risco-neutralidade, todos os formatos de leilão padrão geram a mesma receita esperada. |
| Equivalência de receita (intuição) | O envelope theorem fixa os payoffs dos licitantes; como a alocação é a mesma, o "resíduo" (receita) é determinado. |
| Maldição do vencedor | Fenômeno em leilões de valor comum: o vencedor tende a ser o licitante mais otimista, pagando acima do valor real. |
| Princípio da Revelação | Para qualquer mecanismo e BNE, existe um mecanismo de revelação direta equivalente em que reportar o tipo verdadeiro é equilíbrio. |
| Mecanismo VCG | Mecanismo de revelação direta que aloca eficientemente e cobra de cada agente a externalidade que impõe aos demais; generaliza o leilão de Vickrey. |
| Valor virtual (Myerson) | \(\psi(v) = v - (1-F(v))/f(v)\); desconta o valor real pela renda informacional do agente. O leilão ótimo atribui ao maior valor virtual. |

<div class="caption-obj" markdown>
**Tabela 9c.1 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9c.1 — BNE em jogo de entrada com tipos"
    **Enunciado:** Uma incumbente pode ser forte (\(\theta_F\), prob. 0,6) ou fraca (\(\theta_W\), prob. 0,4). A entrante decide se entra. Payoffs: não entra → (10, 0); entra + forte → (3, –2); entra + fraca → (2, 4).

    **Resolução:**

    Lucro esperado da entrante se entrar:

    \[
    E[\pi_E] = 0{,}6 \times (-2) + 0{,}4 \times 4 = -1{,}2 + 1{,}6 = 0{,}4 > 0
    \]

    **BNE:** A entrante entra (independente do tipo da incumbente, pois \(E[\pi_E] > 0\)).

    Se \(p > 2/3\), \(E[\pi_E] < 0\) e a entrante não entra. O ponto de indiferença é \(p^* = 2/3\).

??? exercicio-resolvido "Exercício Resolvido 9c.2 — Leilão de primeiro preço com 3 licitantes"
    **Enunciado:** Três licitantes com valores \(v_i \sim U[0, 100]\) participam de um leilão de primeiro preço. (a) Encontre a estratégia de equilíbrio. (b) Calcule a receita esperada. (c) Compare com o leilão de segundo preço.

    **Resolução:**

    **(a)** BNE simétrico: \(b(v) = v \cdot (N-1)/N = v \cdot 2/3\). Cada licitante faz um lance igual a 2/3 de seu valor.

    **(b)** Receita esperada = \(E[\text{2º maior lance}]\). Com \(v \sim U[0,100]\) e \(N=3\):

    \[
    E[R] = 100 \cdot \frac{N-1}{N+1} = 100 \cdot \frac{2}{4} = 50
    \]

    **(c)** No leilão de segundo preço, \(b(v) = v\) e a receita esperada é a mesma (50), pelo Teorema da Equivalência. As distribuições de receita diferem — o segundo preço tem maior variância.

??? exercicio-resolvido "Exercício Resolvido 9c.3 — Leilão de primeiro preço com distribuição uniforme"
    **Enunciado:** Dois jogadores disputam um objeto em um leilão selado de primeiro preço. Os valores privados são i.i.d. com distribuição uniforme em \([0, 100]\). (a) Derive a estratégia de equilíbrio bayesiano de Nash (função de lance ótimo). (b) Calcule o lance ótimo se seu valor é \(v = 80\). (c) Calcule a receita esperada do leiloeiro. (d) Verifique o Teorema da Equivalência de Receita comparando com o leilão de segundo preço.

    **Resolução:**

    **(a)** Buscamos um BNE simétrico em estratégias estritamente crescentes \(\beta(v)\). Suponha que o oponente use \(\beta\). O licitante com valor \(v\) escolhe o lance \(b\) para maximizar o payoff esperado:

    \[
    \max_b \; (v - b) \cdot \Pr(\text{vencer com lance } b)
    \]

    Se o oponente usa \(\beta(v_j) = \frac{v_j}{2}\) (conjectura a ser verificada), vencer exige \(b > \beta(v_j)\), ou seja, \(v_j < 2b\). Como \(v_j \sim U[0, 100]\):

    \[
    \Pr(v_j < 2b) = \frac{2b}{100}
    \]

    O problema torna-se:

    \[
    \max_b \; (v - b) \cdot \frac{2b}{100}
    \]

    A condição de primeira ordem é:

    \[
    \frac{d}{db}\left[(v - b) \cdot 2b\right] = 2v - 4b = 0 \implies b^*(v) = \frac{v}{2}
    \]

    Isso confirma a conjectura. Para \(N\) licitantes com \(v_i \sim U[0, \bar{v}]\), a fórmula geral é:

    \[
    \boxed{\beta(v) = \frac{N-1}{N} \cdot v}
    \]

    Com \(N = 2\): \(\beta(v) = v/2\). Cada licitante faz um lance igual à metade de seu valor privado.

    **(b)** Para \(v = 80\):

    \[
    \beta(80) = \frac{80}{2} = 40
    \]

    O lance ótimo é **R$ 40**.

    **(c)** A receita do leiloeiro é o maior lance, que corresponde a \(\beta(v_{(1)})\), onde \(v_{(1)}\) é a maior estatística de ordem. Com \(N = 2\) e \(v \sim U[0, 100]\), a esperança da maior estatística de ordem é \(E[v_{(1)}] = 100 \cdot \frac{N}{N+1} = \frac{200}{3}\). Como cada licitante lança metade de seu valor:

    \[
    E[R] = E\!\left[\frac{v_{(1)}}{2}\right] = \frac{1}{2} \cdot \frac{200}{3} = \frac{100}{3} \approx 33{,}33
    \]

    Equivalentemente, pela fórmula direta:

    \[
    E[R] = \bar{v} \cdot \frac{N-1}{N+1} = 100 \cdot \frac{1}{3} = 33{,}33
    \]

    **(d)** No leilão de segundo preço, \(\beta(v) = v\) é estratégia dominante e a receita é a segunda maior estatística de ordem. Com \(N = 2\):

    \[
    E[v_{(2)}] = 100 \cdot \frac{N - 1}{N + 1} = 100 \cdot \frac{1}{3} = 33{,}33
    \]

    As receitas esperadas são idênticas (\(33{,}33\)), confirmando o **Teorema da Equivalência de Receita**: sob as hipóteses de valores privados independentes, simetria, neutralidade ao risco e mesma alocação ao tipo mais baixo, qualquer mecanismo eficiente gera a mesma receita esperada. A diferença está na **variância** — o leilão de segundo preço tem receita mais volátil.

---

## ✏️ Exercícios

<a id="ex-9c-1"></a>**Exercício 9c.1.** Em um jogo bayesiano 2×2, o jogador 1 tem tipo \(\theta \in \{H, L\}\) com \(\Pr(H) = 0{,}5\). O jogador 2 não tem tipo privado. Os payoffs dependem do tipo de 1. Encontre o BNE.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-1)

---

<a id="ex-9c-2"></a>**Exercício 9c.2.** Dois licitantes com \(v_i \sim U[0, 1]\) participam de um leilão *all-pay* (todos pagam seu lance, apenas o maior lance ganha). Encontre o BNE simétrico e a receita esperada. Compare com o primeiro preço.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-2)

---

<a id="ex-9c-3"></a>**Exercício 9c.3.** (Maldição do vencedor) Três empresas licitam por um bloco de petróleo cujo valor verdadeiro é \(V = 100\). Cada empresa observa um sinal \(s_i = V + \varepsilon_i\), onde \(\varepsilon_i \sim U[-20, 20]\) independentes. Se cada empresa lançar seu sinal, qual é o lucro esperado do vencedor? Como o lance ótimo deveria ser ajustado?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-3)

---

<a id="ex-9c-4"></a>**Exercício 9c.4.** (BNE em jogo de 2 tipos e 2 ações — Fácil) Considere um jogo bayesiano em que o Jogador 1 tem tipo \(\theta \in \{A, B\}\) com probabilidades \(\Pr(A) = 0{,}3\) e \(\Pr(B) = 0{,}7\). Cada jogador escolhe entre as ações \(\{X, Y\}\). Os payoffs (J1, J2) são:

- Tipo A: (X,X) = (4,1); (X,Y) = (2,3); (Y,X) = (1,2); (Y,Y) = (3,0)
- Tipo B: (X,X) = (1,1); (X,Y) = (3,2); (Y,X) = (2,3); (Y,Y) = (0,1)

Encontre todos os BNEs puros. Justifique o procedimento de solução passo a passo.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-4)

---

<a id="ex-9c-5"></a>**Exercício 9c.5.** (Leilão de segundo preço — Fácil) Dois licitantes com valores \(v_1 = 80\) e \(v_2 = 60\) (ambos conhecidos apenas pelo próprio detentor) participam de um leilão de segundo preço (Vickrey). (a) Mostre que \(b_i = v_i\) é estratégia fracamente dominante para ambos. (b) Quem ganha e quanto paga? (c) Qual é o excedente do vencedor? (d) O que acontece se o vendedor adiciona um preço de reserva de R$ 70?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-5)

---

<a id="ex-9c-6"></a>**Exercício 9c.6.** (Comparação de receitas — Médio) Quatro licitantes com valores \(v_i \sim U[0, 200]\) participam de um leilão. (a) Calcule a receita esperada no leilão de primeiro preço. (b) Calcule a receita esperada no leilão de segundo preço (use a fórmula da segunda estatística de ordem). (c) Verifique numericamente a equivalência de receitas. (d) Como a receita se altera se um dos licitantes tem custo de participação de R$ 10 e decide não participar?

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-6)

---

<a id="ex-9c-7"></a>**Exercício 9c.7.** (Desenho de leilão da ANP — Médio, Brasileiro) A ANP quer leiloar um bloco de petróleo no pré-sal. Há dois tipos de empresas: *grandes* (custo de extração baixo, \(c_G = 20\)) e *pequenas* (custo alto, \(c_P = 50\)), com probabilidades iguais. O valor do bloco é \(V = 100\). (a) Se a ANP usa um leilão de primeiro preço com lance sobre o bônus de assinatura, quais são as estratégias de BNE de cada tipo? (b) Qual formato de leilão maximiza a receita esperada da ANP? (c) Como o regime de partilha de produção (onde a empresa oferece uma percentagem do excedente em óleo) altera os incentivos, comparado ao bônus de assinatura? (d) Discuta se o formato atual da ANP está próximo do leilão ótimo de Myerson.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-7)

---

<a id="ex-9c-8"></a>**Exercício 9c.8.** (Teorema da Equivalência de Receita — Difícil) Considere \(N\) licitantes com valores \(v_i\) sorteados i.i.d. de uma distribuição \(F\) com densidade \(f\) contínua e suporte \([0, 1]\). (a) Derive a condição de otimização de primeira ordem para o BNE simétrico de um leilão de primeiro preço, obtendo a equação diferencial ordinária que \(b(v)\) deve satisfazer. (b) Mostre que a solução é \(b(v) = v - \int_0^v F(t)^{N-1} dt / F(v)^{N-1}\), que é a esperança condicional da maior estatística de ordem entre os demais, dado que é menor que \(v\). (c) Use o envelope theorem para demonstrar que a receita esperada em qualquer mecanismo eficiente e individualmente racional é a mesma, independente do formato. (d) Identifique quais das hipóteses (IPV, simetria, risco-neutralidade, eficiência) são essenciais para o resultado e dê um contra-exemplo para cada uma.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-8)

---

<a id="ex-9c-9"></a>**Exercício 9c.9.** (BNE com tipos contínuos — Médio) Dois jogadores disputam um recurso. Cada jogador \(i\) tem tipo \(\theta_i \sim U[0, 1]\) (independentes) e escolhe um esforço \(e_i \geq 0\). O jogador com maior esforço ganha um prêmio de valor \(\theta_i\) (específico ao tipo), mas ambos pagam o custo do esforço. Formalmente, o payoff do jogador \(i\) é \(u_i = \theta_i \cdot \mathbf{1}_{[e_i > e_j]} - e_i\). (a) Interprete este jogo como um leilão *all-pay* com valores privados. (b) Encontre o BNE simétrico em estratégias puras crescentes \(e(\theta)\). (c) Calcule o esforço total esperado e compare com o valor esperado do prêmio para o vencedor. Há "desperdício" de recursos? (d) Discuta como este modelo se aplica a competições por promoção em empresas (*tournaments*) e investimentos em lobby político.

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-9)

---

<a id="ex-9c-10"></a>**Exercício 9c.10.** (Desenho de mecanismo e preço de reserva ótimo — Difícil) Um leiloeiro vende um objeto a \(N = 2\) licitantes com valores \(v_i \sim U[0, 1]\). O valor de reserva do leiloeiro (seu valor pelo objeto se não vender) é \(v_0 = 0\). (a) Calcule a receita esperada do leilão de segundo preço *sem* preço de reserva. (b) Agora, suponha que o leiloeiro impõe um preço de reserva \(r\). Derive a receita esperada como função de \(r\). (c) Encontre o preço de reserva ótimo \(r^*\) que maximiza a receita esperada. (d) Calcule a receita esperada no ótimo e compare com o item (a). Qual é o ganho percentual? (e) Mostre que \(r^* = 1/2\) coincide com o preço de reserva do leilão ótimo de Myerson, usando a condição de valor virtual \(\psi(r^*) = v_0\).

[:material-arrow-right: Ver solução](../solucoes/cap09c.md#ex-9c-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 10 (adaptada)"
    Considere um leilão de primeiro preço com dois licitantes cujos valores são sorteados independentemente de \(U[0, 1]\).

    | Item | Afirmação |
    |------|-----------|
    | 0    | A estratégia de equilíbrio simétrico é \(b(v) = v/2\). |
    | 1    | A receita esperada do leiloeiro é 1/3. |
    | 2    | No leilão de segundo preço, a receita esperada também é 1/3. |
    | 3    | Com aversão ao risco dos licitantes, o leilão de primeiro preço gera mais receita que o de segundo. |
    | 4    | A colusão é mais fácil de sustentar no leilão ascendente (inglês) do que no de envelope fechado. |

    ??? success "Gabarito"
        **Respostas: 11111**

        - **Item 0 — V:** Com \(N=2\) e \(v \sim U[0,1]\), BNE: \(b(v) = v(N-1)/N = v/2\).
        - **Item 1 — V:** \(E[R] = (N-1)/(N+1) = 1/3\).
        - **Item 2 — V:** Revenue Equivalence Theorem.
        - **Item 3 — V:** Com aversão ao risco, licitantes sombreiam menos no 1º preço → receita maior. A equivalência falha.
        - **Item 4 — V:** No leilão inglês, licitantes observam os lances uns dos outros, facilitando sinalização e punição de desvios do cartel (McAfee e McMillan, 1992).

??? question "ANPEC 2015 — Questão 8 (adaptada)"
    Sobre jogos bayesianos e leilões, avalie as seguintes afirmativas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | No equilíbrio bayesiano de Nash, cada tipo de cada jogador maximiza seu payoff esperado, condicionando na distribuição dos tipos dos demais e nas estratégias de equilíbrio. |
    | 1    | No leilão de segundo preço (Vickrey), lançar o valor verdadeiro é estratégia estritamente dominante. |
    | 2    | O Teorema da Equivalência de Receita implica que a receita de qualquer leilão é sempre a mesma, independentemente do formato. |
    | 3    | A maldição do vencedor é um fenômeno que ocorre exclusivamente em leilões de valor comum, não em leilões de valor privado. |
    | 4    | O Princípio da Revelação afirma que, para qualquer mecanismo e qualquer BNE, existe um mecanismo de revelação direta equivalente em que reportar o tipo verdadeiro é equilíbrio. |

    ??? success "Gabarito"
        **Respostas: 10011**

        - **Item 0 — V:** Definição correta do BNE — cada tipo maximiza contra a distribuição dos demais.
        - **Item 1 — F:** No leilão de Vickrey, lançar \(b_i = v_i\) é estratégia *fracamente* dominante, não *estritamente* dominante. A diferença é sutil mas importante: quando \(b_i = b_{(1)}^{-i}\), o lance não faz diferença (o jogador é indiferente).
        - **Item 2 — F:** O Teorema da Equivalência de Receita vale apenas sob condições específicas: IPV, simetria, risco-neutralidade e eficiência. Com aversão ao risco, assimetria ou valores comuns, a equivalência falha e o formato importa.
        - **Item 3 — V:** Em leilões de valor privado puro, o valor do objeto não depende das estimativas dos outros — portanto, vencer não é "má notícia". A maldição do vencedor é um fenômeno específico de valores comuns (ou, mais geralmente, valores afiliados).
        - **Item 4 — V:** Enunciado correto do Princípio da Revelação (Myerson, 1981). Note que o princípio garante a *existência* do mecanismo de revelação direta equivalente, não que este seja o mecanismo utilizado na prática.

---

!!! tip "🤖 Exercício com IA"
    **IA.4 — Simulação de Leilões de Primeiro Preço**

    Peça à IA para simular 1000 leilões de primeiro preço com 5 licitantes e valores uniformes em $[0, 100]$, usando a estratégia de equilíbrio $b(v) = v \cdot 4/5$. Calcule a receita média e compare com a previsão teórica $E[R] = 66{,}67$. O resultado simulado convergiu?

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-4)
