# Exercícios

## 🧪 Atividades de Sala de Aula

!!! classroom "Atividade 9d.1 — Role-play: mercado de limões com garantias (25 min)"
    **Objetivo:** Demonstrar ao vivo como a seleção adversa destrói um mercado e como a sinalização (garantia) o restaura.

    **Material:** Cartas de baralho (qualidades 1-10); fichas de dinheiro; adesivos "GARANTIA" (para a Fase 2).

    **Protocolo:**

    1. **Setup** (3 min): Metade da turma são vendedores, metade compradores. Cada vendedor sorteia uma carta de qualidade \(q\) (secreta). Valor para o vendedor = \(q\); valor para o comprador = \(1{,}5q\).
    2. **Fase 1 — Sem sinalização** (8 min): Vendedores e compradores negociam livremente. Vendedores *não* revelam a qualidade. Compradores oferecem preço; vendedores aceitam ou recusam. Registre todas as transações (preço, qualidade real). Após 4 minutos, observe: vendedores de carros bons (q ≥ 7) conseguem vender? Provavelmente não — o preço médio é baixo demais.
    3. **Fase 2 — Com sinalização** (8 min): Agora, vendedores podem oferecer "garantia" (adesivo). O custo da garantia: se o comprador acionar (sorteio de dado: 1-2 = aciona, 3-6 = não aciona), o vendedor paga \(q_{\text{defeito}} = 10 - q\) ao comprador. Para carros bons (q alto), o custo esperado da garantia é *baixo*; para limões (q baixo), é *alto*. Condição de single-crossing satisfeita!
    4. **Debrief** (6 min):
        - Compare transações nas Fases 1 e 2: mais carros bons vendidos na Fase 2?
        - Quem ofereceu garantia? Os vendedores de carros bons ou de limões? → Equilíbrio separador.
        - Conecte com Spence (1973): a garantia funciona como o diploma — sinal custoso que o tipo bom acha barato e o tipo ruim acha caro.
        - "A Tabela FIPE e o laudo cautelar funcionam como que tipo de mecanismo?" → Certificação (terceiro).

    **Conexão com o conteúdo:** Seleção adversa (Seção 9d.5), sinalização (Seção 9d.2), mecanismos de mitigação (Tabela 9d.1). Inspirado em Bergstrom e Miller (2000, Cap. 32).

!!! classroom "Atividade 9d.2 — Contrato de incentivos: quanto pagar pelo esforço? (15 min)"
    **Objetivo:** Mostrar o trade-off entre incentivos e seguro no problema do principal-agente.

    **Material:** Dados (1 dado por grupo); planilha projetada.

    **Protocolo:**

    1. **Setup** (3 min): Grupos de 3: 1 principal, 1 agente, 1 observador/registrador. O agente pode escolher "esforço alto" (custo = 2 fichas) ou "esforço baixo" (custo = 0). Esforço alto: dado ≥ 3 → resultado bom (10 fichas); dado ≤ 2 → resultado ruim (0). Esforço baixo: dado ≥ 5 → resultado bom; dado ≤ 4 → resultado ruim.
    2. **Fase 1 — Salário fixo** (3 min): Principal oferece salário fixo de 3 fichas, independente do resultado. O agente escolhe esforço (secretamente — esconde a ficha de custo). Jogue o dado.
    3. **Fase 2 — Contrato variável** (3 min): Principal propõe: "Pago \(w_B\) se bom, \(w_R\) se ruim". O agente aceita ou recusa. Se aceitar, escolhe esforço (secretamente). Jogue o dado.
    4. **Debrief** (6 min):
        - Na Fase 1, o agente se esforçou? (Provavelmente não — salário fixo, sem incentivo.)
        - Na Fase 2, que contrato funcionou? Calcule: a IC exige \(w_B - w_R \geq\) quanto?
        - "Se o agente é avesso ao risco, o que muda?" → O principal precisa compensar o risco com salário esperado maior → custo de agência.
        - Conecte com Holmström (1979): o resultado (dado) é um sinal ruidoso do esforço.

    **Conexão com o conteúdo:** Moral hazard (Seção 9d.4), primeiro melhor vs. segundo melhor, Princípio da Informatividade (Holmström, 1979).

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No modelo de sinalização de Spence, a educação funciona como sinal de habilidade porque:"
    - (a) A educação sempre aumenta a produtividade do trabalhador
    - (b) O custo de obter educação é menor para trabalhadores de alta habilidade (condição de single-crossing)
    - (c) Os empregadores observam diretamente a habilidade dos candidatos
    - (d) Todos os trabalhadores obtêm o mesmo nível de educação

    ??? success "Resposta"
        **(b)** A sinalização funciona porque o custo do sinal é negativamente correlacionado com o tipo: trabalhadores de alta habilidade obtêm educação a custo menor. No equilíbrio separador, apenas os de alta habilidade se educam, revelando seu tipo. A alternativa (a) é irrelevante — no modelo de Spence, a educação pode ter produtividade zero; (c) eliminaria a necessidade de sinal; (d) descreve o equilíbrio pooling.

??? question "2. Em um equilíbrio separador, diferentes tipos de agentes:"
    - (a) Escolhem a mesma ação, tornando impossível distingui-los
    - (b) Escolhem ações diferentes, permitindo que a parte desinformada infira o tipo
    - (c) São agrupados e recebem o mesmo contrato
    - (d) Revelam seu tipo verbalmente antes de agir

    ??? success "Resposta"
        **(b)** No equilíbrio separador, cada tipo escolhe uma ação distinta (ex.: nível de educação diferente), permitindo que o receptor do sinal identifique o tipo do emissor. A alternativa (a) descreve equilíbrio pooling; (c) também descreve pooling; (d) ignora que 'cheap talk' sem custo não é crível.

??? question "3. O Equilíbrio Bayesiano Perfeito (PBE) exige:"
    - (a) Apenas otimalidade das estratégias, sem restrições sobre crenças
    - (b) Que as crenças sejam consistentes com a regra de Bayes nos conjuntos de informação alcançados em equilíbrio, e que as estratégias sejam sequencialmente racionais
    - (c) Que os jogadores tenham informação completa sobre os payoffs
    - (d) Que o jogo seja de soma zero

    ??? success "Resposta"
        **(b)** O PBE combina otimalidade sequencial (cada jogador maximiza dado crenças e estratégias dos demais em cada conjunto de informação) com consistência bayesiana das crenças (atualizadas pela regra de Bayes onde possível). A alternativa (a) é insuficiente; (c) descreve jogos de informação completa; (d) é uma restrição desnecessária.

??? question "4. O risco moral (moral hazard) difere da seleção adversa porque:"
    - (a) No risco moral, a assimetria informacional é sobre ações (pós-contrato); na seleção adversa, sobre tipos (pré-contrato)
    - (b) O risco moral ocorre apenas em mercados de seguros
    - (c) A seleção adversa sempre leva ao colapso total do mercado
    - (d) No risco moral, o principal conhece perfeitamente o tipo do agente e suas ações

    ??? success "Resposta"
        **(a)** A seleção adversa é um problema de informação oculta (hidden information) sobre características do agente antes da contratação. O risco moral é um problema de ação oculta (hidden action) após a contratação — o agente pode reduzir esforço ou tomar mais risco sem ser observado. A alternativa (b) é restritiva; (c) não é necessário; (d) contradiz a definição.

??? question "5. O critério de Cho-Kreps (Critério de Dominância Intuitiva) refina o PBE ao:"
    - (a) Eliminar todos os equilíbrios separadores, mantendo apenas os pooling
    - (b) Restringir crenças fora do caminho de equilíbrio, eliminando equilíbrios sustentados por crenças implausíveis sobre desvios
    - (c) Exigir que todos os tipos escolham a mesma ação
    - (d) Permitir comunicação direta entre os jogadores

    ??? success "Resposta"
        **(b)** Cho-Kreps restringe crenças off-path: se um desvio observado só poderia beneficiar um tipo específico (e nunca outro), a crença deve atribuir probabilidade 1 a esse tipo. Isso elimina equilíbrios pooling 'ruins' e seleciona tipicamente o equilíbrio separador de menor custo. A alternativa (a) é o oposto do efeito usual; (c) descreve pooling; (d) não faz parte do conceito.

---

## 📋 Resumo do Capítulo

- Jogos dinâmicos com informação incompleta combinam ação sequencial com assimetria informacional. O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito (PBE)**, que exige otimalidade sequencial das estratégias e consistência bayesiana das crenças em cada conjunto de informação. O Critério de Dominância Intuitiva de Cho e Kreps (1987) refina o PBE eliminando equilíbrios sustentados por crenças off-path implausíveis.
- No **modelo de sinalização de Spence** (Nobel 2001), a educação funciona como sinal de habilidade mesmo sem aumentar a produtividade: a condição de single-crossing (custo menor para tipos melhores) permite que o equilíbrio separador revele o tipo do trabalhador. O mesmo mecanismo explica garantias no mercado de carros usados, dividendos em finanças corporativas e o valor do ENEM como sinal de aptidão. O equilíbrio separador tipicamente não é único; refinamentos como Cho-Kreps selecionam o de menor custo.
- Existem três tipos de equilíbrio em jogos de sinalização: **separador** (tipos revelados), **agregador/pooling** (nenhuma informação revelada) e **semi-separador** (revelação parcial). O Critério de Dominância Intuitiva tende a selecionar equilíbrios separadores. O trade-off fundamental é entre eficiência informacional (separador) e eficiência alocativa (pooling evita o custo de sinalização).
- **Cheap talk** (comunicação sem custo) transmite informação apenas quando os interesses de remetente e receptor estão suficientemente alinhados (Crawford-Sobel, 1982). A autonomia institucional do BCB é um mecanismo para aumentar a credibilidade do forward guidance.
- O **moral hazard** (risco moral) surge quando o agente toma ações não observáveis pelo principal; o contrato ótimo equilibra incentivos ao esforço com seguro contra risco. **Moral hazard não é fraude**: é desalinhamento de incentivos, não intenção de enganar. A aversão ao risco do agente (Capítulo 7) é o que torna o problema intratável. A distinção entre **primeiro melhor** (esforço observável → salário fixo) e **segundo melhor** (esforço não observável → contrato contingente) é central: a diferença de custo é o **custo de agência**.
- O **Princípio da Informatividade** (Holmström, 1979) afirma que qualquer variável correlacionada com o esforço do agente deve ser incluída no contrato ótimo. O problema de **multitarefa** (Holmström e Milgrom, 1991) mostra que incentivos fortes em uma dimensão podem distorcer o esforço para longe de dimensões não mensuráveis.
- A **seleção adversa** (Nobel 2001 — Akerlof) ocorre quando informação privada pré-contratual atrai desproporcionalmente os tipos "ruins", podendo destruir mercados inteiros. O modelo de Rothschild e Stiglitz (1976) mostra que o equilíbrio em mercados de seguros competitivos é separador, com o tipo baixo risco recebendo cobertura incompleta. Mecanismos de mitigação incluem sinalização, screening, certificação e regulação obrigatória — como as regras da ANS para planos de saúde individuais no Brasil. Garantias e *lemon laws* são respostas institucionais que reduzem a assimetria informacional e sustentam mercados que, sem elas, colapsariam.
- O **desenho de mecanismos** (Hurwicz, Maskin, Myerson — Nobel 2007) unifica os problemas de sinalização, moral hazard e seleção adversa sob um framework comum: dado que agentes são estratégicos e informados, qual é o melhor conjunto de regras? O Princípio da Revelação garante que a busca pode ser restrita a mecanismos diretos e incentivo-compatíveis.

## 🔑 Conceitos-Chave

<a id="tabela-9d-2"></a>

| Conceito | Definição |
|----------|-----------|
| Equilíbrio Bayesiano Perfeito (PBE) | Combinação de estratégias e crenças satisfazendo otimalidade sequencial e consistência bayesiana em cada conjunto de informação. |
| Jogo de sinalização | Jogo sequencial em que a parte informada (remetente) escolhe um sinal observável antes que a parte desinformada (receptor) tome sua decisão. |
| Equilíbrio separador | Equilíbrio em que tipos diferentes escolhem sinais diferentes, revelando perfeitamente a informação privada. |
| Equilíbrio agregador (pooling) | Equilíbrio em que todos os tipos escolhem o mesmo sinal, impedindo o receptor de aprender sobre o tipo. |
| Condição de single-crossing | O custo marginal do sinal é menor para os tipos de alta qualidade, garantindo que a imitação não seja lucrativa. |
| Critério de Cho-Kreps | Refinamento que elimina equilíbrios sustentados por crenças off-path implausíveis; seleciona o equilíbrio separador de menor custo. |
| Cheap talk | Comunicação sem custo direto; a quantidade de informação transmitida depende do alinhamento de interesses entre remetente e receptor. |
| Moral hazard (risco moral) | Problema de incentivos em que o agente toma ações não observáveis pelo principal, exigindo contratos que vinculem pagamento a resultados. |
| Primeiro melhor vs. segundo melhor | Primeiro melhor: esforço observável, salário fixo ótimo. Segundo melhor: esforço não observável, contrato contingente com custo de agência positivo. |
| Princípio da Informatividade | Qualquer variável correlacionada com o esforço do agente deve ser incluída no contrato ótimo (Holmström, 1979). |
| Multitarefa | Quando o agente aloca esforço entre múltiplas dimensões, incentivos fortes em uma podem distorcer o esforço para longe das demais (Holmström-Milgrom, 1991). |
| Seleção adversa | Situação pré-contratual em que informação privada sobre qualidade leva os piores tipos a se auto-selecionarem para a transação. |
| Market unraveling | Processo iterativo de deterioração do pool de vendedores/segurados que pode levar ao colapso completo do mercado. |
| Screening | Mecanismo pelo qual a parte desinformada oferece um menu de contratos desenhado para que cada tipo se auto-selecione revelando informação. |
| Desenho de mecanismos | Campo que estuda as regras ótimas para induzir revelação de informação ou alinhamento de comportamento quando agentes são estratégicos. |
| Princípio da Revelação | Para qualquer mecanismo e equilíbrio, existe um mecanismo direto equivalente em que reportar o tipo verdadeiro é ótimo. |

<div class="caption-obj" markdown>
**Tabela 9d.2 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 9d.1 — Equilíbrio separador de Spence"
    **Enunciado:** Trabalhadores têm produtividade \(\theta_H = 2\) (prob. 0,5) ou \(\theta_L = 1\) (prob. 0,5). O custo da educação é \(c(e, \theta) = e/\theta\). Firmas pagam salário = produtividade esperada condicionada em \(e\). Encontre o equilíbrio separador com menor custo.

    **Resolução:**

    No equilíbrio separador: tipo L escolhe \(e_L = 0\) (salário = 1); tipo H escolhe \(e_H = e^*\) (salário = 2).

    **Restrição IC do tipo L (não imitar H):** \(1 - 0 \geq 2 - e^*/1 \implies e^* \geq 1\)

    **Restrição IC do tipo H (não imitar L):** \(2 - e^*/2 \geq 1 \implies e^* \leq 2\)

    **Equilíbrio separador menos custoso:** \(e^* = 1\).

    Payoffs: tipo H obtém \(2 - 1/2 = 1{,}5\); tipo L obtém 1.

    **Eficiência:** Se a informação fosse simétrica, cada tipo receberia sua produtividade sem custo de sinalização. O custo total da sinalização é \(0{,}5 \times (1/2) = 0{,}25\) — puro desperdício social, pois a educação não aumenta a produtividade neste modelo.

??? exercicio-resolvido "Exercício Resolvido 9d.2 — Contrato ótimo com moral hazard"
    **Enunciado:** Um principal contrata um agente. O agente pode exercer esforço alto (\(e_H\), custo 2) ou baixo (\(e_L\), custo 0). Com esforço alto, o resultado é bom (100) com prob. 0,8 e ruim (0) com prob. 0,2. Com esforço baixo, é bom com prob. 0,3 e ruim com prob. 0,7. O agente é neutro ao risco e tem utilidade de reserva 0.

    (a) Qual contrato implementa esforço alto?

    **Resolução:**

    Contrato: \(w_B\) se resultado bom, \(w_R\) se resultado ruim.

    **Restrição de incentivo (IC):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0{,}3 w_B + 0{,}7 w_R\)

    \(\implies 0{,}5 w_B - 0{,}5 w_R \geq 2 \implies w_B - w_R \geq 4\)

    **Restrição de participação (IR):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0\)

    Minimizando o custo para o principal: \(w_R = 0\), \(w_B = 2/(0{,}5) = 4\)... Verificando: \(0{,}8 \times 4 + 0{,}2 \times 0 - 2 = 1{,}2 \geq 0\). ✓

    Mas podemos fazer melhor: com \(w_R = 0\), IC dá \(w_B \geq 4\). IR com \(w_B = 4\): \(3{,}2 - 2 = 1{,}2 > 0\) — renda extra para o agente.

    O contrato ótimo iguala IR: \(0{,}8 w_B + 0{,}2 w_R - 2 = 0\) e IC: \(w_B - w_R = 4\).

    Sistema: \(w_B = w_R + 4\) e \(0{,}8(w_R + 4) + 0{,}2 w_R = 2 \implies w_R = -1{,}2\), \(w_B = 2{,}8\).

    Com \(w_R < 0\) (multa), o principal implementa esforço alto ao menor custo. Se multas não são possíveis (\(w_R \geq 0\)), o custo sobe — limitação de responsabilidade encarece os incentivos.

??? exercicio-resolvido "Exercício Resolvido 9d.3 — Seleção adversa e equilíbrio de Akerlof com tipos contínuos"
    **Enunciado:** No mercado de carros usados, a qualidade \(q\) é distribuída uniformemente em \([0, 10]\). O valor do carro para o vendedor é \(v_S = q\), e para o comprador é \(v_B = 1{,}5q\). O vendedor conhece \(q\); o comprador não. Apenas carros cujo preço de mercado \(P\) é pelo menos igual ao valor de reserva do vendedor (\(v_S = q\)) são colocados à venda. (a) Se o comprador acredita que todos os carros estão à venda, qual é o preço máximo que aceita pagar? (b) Dado esse preço, quais carros são realmente oferecidos? O mercado funciona? (c) Encontre o equilíbrio. (d) Que valor mínimo de \(\alpha\) (onde \(v_B = \alpha q\)) sustenta um mercado com transações?

    **Resolução:**

    **(a)** Se todos os carros estão à venda, \(q \sim U[0, 10]\) e o valor esperado para o comprador é:

    \[
    E[v_B] = 1{,}5 \cdot E[q] = 1{,}5 \times 5 = 7{,}5
    \]

    O comprador aceita pagar até \(P = 7{,}5\).

    **(b)** A \(P = 7{,}5\), vendem-se apenas carros com \(q \leq 7{,}5\). A qualidade média dos carros à venda é:

    \[
    E[q \mid q \leq 7{,}5] = 7{,}5 / 2 = 3{,}75
    \]

    Valor esperado do comprador dado o pool efetivo: \(1{,}5 \times 3{,}75 = 5{,}625\). Mas o comprador racional antecipa que o pool é \([0, 7{,}5]\) — logo, revisa \(P\) para \(5{,}625\). A esse novo preço, só vendem-se carros com \(q \leq 5{,}625\), e o valor esperado cai para \(1{,}5 \times 5{,}625/2 = 4{,}22\). O processo iterativo converge a zero: o mercado colapsa.

    **(c)** Formalmente, seja \(\bar{q}_n\) o limiar de qualidade na rodada \(n\). Temos \(\bar{q}_0 = 10\) e:

    \[
    \bar{q}_{n+1} = 1{,}5 \times \bar{q}_n / 2 = 0{,}75 \bar{q}_n
    \]

    Como \(0{,}75 < 1\), a sequência converge a \(\bar{q}^* = 0\). O único equilíbrio é o colapso total: nenhum carro é vendido. Isso ocorre apesar de existirem ganhos de troca em todas as transações (\(v_B = 1{,}5q > q = v_S\) para todo \(q > 0\)).

    **(d)** Para \(v_B = \alpha q\), a recursão é \(\bar{q}_{n+1} = (\alpha/2) \bar{q}_n\). O mercado não colapsa se e somente se \(\alpha / 2 \geq 1\), ou seja, \(\alpha \geq 2\). Com \(\alpha = 2\), o comprador valoriza o carro duas vezes mais que o vendedor, e o preço de equilíbrio sustenta todo o mercado (\(\bar{q}^* = 10\)). Com \(\alpha < 2\), o mercado colapsa integralmente.

    **Interpretação econômica:** O resultado \(\alpha \geq 2\) é surpreendentemente restritivo — exige que o comprador valorize o bem pelo menos o dobro do vendedor para que a seleção adversa não destrua o mercado. Na prática, mercados sobrevivem porque mecanismos como garantias, vistorias e lemon laws reduzem a assimetria informacional, efetivamente aumentando o "\(\alpha\) efetivo" ao diminuir o risco percebido pelo comprador. O modelo ilustra por que a seleção adversa é mais severa em mercados onde esses mecanismos são fracos — como mercados informais de veículos em economias em desenvolvimento.

---

## ✏️ Exercícios

<a id="ex-9d-1"></a>**Exercício 9d.1.** No modelo de Spence com \(\theta_H = 3\) e \(\theta_L = 1\), e custo \(c(e, \theta) = e^2/(2\theta)\), encontre o equilíbrio separador de menor custo. Compare o custo social da sinalização com o caso \(\theta_H = 2\).

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-1)

---

<a id="ex-9d-2"></a>**Exercício 9d.2.** (Cheap talk) Um vendedor sabe que o carro vale 0 (limão) ou 10 (bom), cada com prob. 0,5. O vendedor pode dizer "bom" ou "limão". O comprador decide se compra por preço fixo 6. Existe equilíbrio em que o comprador acredita no vendedor? Por quê?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-2)

---

<a id="ex-9d-3"></a>**Exercício 9d.3.** (Seleção adversa) Num mercado de seguros, 60% dos agentes são de baixo risco (custo esperado 1.000) e 40% de alto risco (custo esperado 5.000). Se o seguro cobra um prêmio atuarialmente justo para a média, qual tipo compra? Que prêmio equilibra o mercado? Existe equilíbrio?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-3)

---

<a id="ex-9d-4"></a>**Exercício 9d.4.** (Moral hazard) Discuta como as seguintes instituições brasileiras mitigam problemas de moral hazard: (a) bônus por desempenho de professores (Ceará); (b) DPVAT com franquia; (c) stock options de executivos em empresas listadas na B3.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-4)

---

<a id="ex-9d-5"></a>**Exercício 9d.5.** *(Fácil — Seleção adversa: equilíbrio de Akerlof)* No mercado de carros usados, existem dois tipos de veículos: bons (valor 12.000) e limões (valor 4.000). A proporção de carros bons é \(\lambda\). Os vendedores conhecem o tipo do próprio carro; os compradores não. O valor de reserva do vendedor é 0,9 do valor do carro (ele prefere ficar com o carro se o preço for inferior a esse limiar).

**(a)** Qual é o preço máximo que um comprador racional aceita pagar se acredita que a fração \(\lambda\) dos carros à venda são bons?

**(b)** Para quais valores de \(\lambda\) existe um equilíbrio em que ambos os tipos são vendidos? Para quais valores o mercado colapsa para somente limões?

**(c)** Se \(\lambda = 0{,}6\), descreva o equilíbrio. O que acontece com o bem-estar quando o mercado colapsa?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-5)

---

<a id="ex-9d-6"></a>**Exercício 9d.6.** *(Fácil — Identificação: moral hazard vs. seleção adversa)* Para cada situação abaixo, identifique se o problema primário é de **moral hazard**, **seleção adversa** ou **ambos**, e justifique em uma ou duas frases.

**(a)** Um banco oferece crédito pessoal a uma taxa uniforme. Os tomadores que mais solicitam o empréstimo são exatamente os que têm maior probabilidade de não pagar.

**(b)** Uma empresa contrata um gerente a salário fixo. O gerente dedica parte do seu tempo a projetos pessoais em vez de projetos da empresa.

**(c)** Uma seguradora de automóveis percebe que, após a contratação, os segurados batem mais o carro do que antes de ter seguro.

**(d)** Uma empresa de plano de saúde coletivo nota que os funcionários que aderem ao plano são sistematicamente mais doentes do que a média da população.

**(e)** Um sistema de crédito imobiliário subsidiado pelo governo atrai compradores que sabem que não conseguirão pagar as prestações no médio prazo.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-6)

---

<a id="ex-9d-7"></a>**Exercício 9d.7.** *(Médio — Equilíbrio pooling vs. separador de Spence)* No modelo de Spence com dois tipos, \(\theta_H = 4\) e \(\theta_L = 1\), custo de educação \(c(e, \theta) = e/\theta\), e proporção de tipos altos igual a \(p = 0{,}5\):

**(a)** Encontre o equilíbrio separador de menor custo.

**(b)** Existe equilíbrio *pooling* em \(e = 0\)? Especifique as crenças off-path que sustentam esse equilíbrio.

**(c)** O equilíbrio pooling em \(e = 0\) sobrevive ao Critério de Dominância Intuitiva de Cho e Kreps (1987)? Justifique.

**(d)** Compare o bem-estar do tipo H nos dois equilíbrios. Qual equilíbrio o tipo H prefere?

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-7)

---

<a id="ex-9d-8"></a>**Exercício 9d.8.** *(Médio — Brasil: triagem (screening) da ANS)* Uma operadora de planos de saúde individual enfrenta dois tipos de beneficiários: baixo risco (custo esperado anual R\$ 2.000, fração 70%) e alto risco (custo esperado anual R\$ 10.000, fração 30%). A operadora não observa o tipo, mas pode oferecer um menu de contratos \(\{(P_L, C_L), (P_H, C_H)\}\), onde \(P\) é o prêmio anual e \(C\) é a cobertura (em fração do custo coberto, \(0 \leq C \leq 1\)). Assuma que a utilidade de cada tipo é \(U = C \cdot \text{custo esperado} - P\) (linear na cobertura).

**(a)** Qual é o prêmio atuarialmente justo para cada tipo se a operadora observasse o tipo?

**(b)** Se a operadora oferecer apenas um contrato com prêmio médio \(P_{\text{med}}\) e cobertura total (\(C = 1\)), que tipos aceitam? Calcule o lucro esperado por beneficiário.

**(c)** Projete um menu de contratos que separe os tipos: especifique \((P_L, C_L)\) e \((P_H, C_H)\) satisfazendo as restrições de incentivo (IC) e participação (IR) de cada tipo. (Dica: o tipo alto recebe contrato com cobertura total; o tipo baixo recebe contrato com cobertura reduzida.)

**(d)** A Resolução Normativa ANS 195/2009 limita a variação de prêmios por faixa etária (razão máxima de 6x entre a primeira e a última faixa). Analise como essa restrição afeta a capacidade da operadora de fazer screening eficiente.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-8)

---

<a id="ex-9d-9"></a>**Exercício 9d.9.** *(Difícil — Contrato ótimo com moral hazard e aversão ao risco)* Um principal contrata um agente avesso ao risco com função de utilidade \(u(w) = \sqrt{w}\) e custo de esforço \(c(e_H) = 1{,}5\), \(c(e_L) = 0\). Com esforço alto (\(e_H\)), o resultado é bom (R\$ 100) com prob. 0,8 e ruim (R\$ 0) com prob. 0,2. Com esforço baixo (\(e_L\)), as probabilidades são 0,4 e 0,6, respectivamente. A utilidade de reserva do agente é \(\bar{u} = 2\) (equivalente a salário certo de 4).

**(a)** Escreva as restrições IC (incentivo) e IR (participação) para que o contrato \((w_B, w_R)\) implemente esforço alto.

**(b)** Resolva o problema de minimização de custo para o principal. Encontre \((w_B^*, w_R^*)\).

**(c)** Compare com o primeiro melhor (informação simétrica): qual seria o salário ótimo se o esforço fosse observável? Calcule o custo de agência (diferença entre os custos esperados nos dois casos).

**(d)** Como a aversão ao risco do agente aumenta o custo de agência em comparação com o caso de agente neutro ao risco? Intuição econômica.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-9)

---

<a id="ex-9d-10"></a>**Exercício 9d.10.** *(Médio — Sinalização com custo quadrático e três tipos)* Considere um modelo de Spence com **três** tipos de trabalhadores: \(\theta_H = 6\), \(\theta_M = 3\) e \(\theta_L = 1\), com proporções iguais (\(1/3\) cada). O custo da educação é \(c(e, \theta) = e^2 / (2\theta)\). Firmas competitivas pagam salário igual à produtividade esperada.

**(a)** Encontre o equilíbrio separador completo de menor custo, em que cada tipo escolhe um nível de educação diferente e recebe salário igual à sua produtividade. Especifique os limiares \(e_M^*\) e \(e_H^*\) (assuma \(e_L = 0\)).

**(b)** Calcule o payoff de cada tipo no equilíbrio separador.

**(c)** Considere agora um equilíbrio semi-separador em que os tipos M e L fazem *pooling* em \(e = 0\) (recebendo salário médio \((3 + 1)/2 = 2\)) e o tipo H se separa com \(e_H = e^{**}\). Encontre o menor \(e^{**}\) que sustenta esse equilíbrio. Compare o payoff do tipo M neste equilíbrio com o do equilíbrio separador completo.

[:material-arrow-right: Ver solução](../solucoes/cap09d.md#ex-9d-10)

---

## 🏆 Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2017 — Questão 11"
    Com relação aos problemas de assimetria de informação, indique quais entre as afirmativas abaixo estão corretas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Seleção adversa diz respeito a uma ação não observável. |
    | 1    | Problemas morais dizem respeito a características não observáveis. |
    | 2    | Quando empresas de seguros reúnem informações sobre demandantes de seguros, diz-se que elas estão fazendo screening. |
    | 3    | Certificações de produtos são uma forma de reduzir o "problema dos limões" decorrente de seleção adversa. |
    | 4    | Seguros com cobertura universal obrigatória podem ser uma forma de prevenir seleção adversa. |

    ??? success "Gabarito"
        **Respostas: 00111**

        - **Item 0 — F:** Seleção adversa diz respeito a **características** (tipos) não observáveis, não a ações. Ações não observáveis configuram **risco moral** (moral hazard). A seleção adversa é pré-contratual (tipos ocultos); o risco moral é pós-contratual (ações ocultas).
        - **Item 1 — F:** "Problemas morais" (risco moral / *moral hazard*) dizem respeito a **ações** não observáveis, não a características. O item inverte as definições: quem se refere a características não observáveis é a **seleção adversa**.
        - **Item 2 — V:** *Screening* (triagem) é o mecanismo pelo qual a parte desinformada (seguradoras) coleta informações sobre a parte informada (segurados) para classificá-los por risco.
        - **Item 3 — V:** Certificações de produtos (como laudos de vistoria, selos de qualidade, garantias de fábrica) reduzem a assimetria de informação entre vendedores e compradores, atenuando o problema dos limões de Akerlof.
        - **Item 4 — V:** Se o seguro é **universal e obrigatório**, não há autosseleção: todos os tipos (alto e baixo risco) participam do pool. Isso elimina o mecanismo de seleção adversa. O SUS brasileiro é um exemplo de cobertura universal que evita a antisseleção.

        **Nota:** Esta questão também aparece no Capítulo 19 (Limões, Sinais e Contratos), onde é discutida no contexto mais amplo dos mecanismos de mercado para informação assimétrica.

??? question "ANPEC — Sinalização, moral hazard e contratos (questão adaptada)"
    Sobre sinalização, moral hazard e desenho de contratos em mercados com informação assimétrica, julgue os itens:

    | Item | Afirmação |
    |------|-----------|
    | 0    | No modelo de Spence, se o custo de obter educação fosse idêntico para trabalhadores de alta e baixa produtividade, o equilíbrio separador ainda seria sustentável, pois bastaria que o tipo alto investisse mais. |
    | 1    | O problema do moral hazard surge porque o agente toma ações não observáveis pelo principal *após* a celebração do contrato; se o esforço fosse observável e verificável, o primeiro melhor seria alcançável com salário fixo. |
    | 2    | No modelo de Rothschild-Stiglitz, o equilíbrio de mercado competitivo com informação assimétrica é sempre do tipo *pooling*, em que ambos os tipos recebem o mesmo contrato. |
    | 3    | O Princípio da Informatividade de Holmström (1979) implica que o contrato ótimo de incentivos deve incluir qualquer variável correlacionada com o esforço do agente, mesmo que essa variável seja um indicador imperfeito. |
    | 4    | No equilíbrio separador do modelo de sinalização, o custo social da sinalização é zero, pois a informação é revelada e os salários correspondem às produtividades verdadeiras. |

    ??? success "Gabarito"
        **Respostas: 01010**

        - **Item 0 — F:** A condição de single-crossing (custo diferencial entre tipos) é essencial para a sustentabilidade do equilíbrio separador. Se o custo da educação fosse idêntico para ambos os tipos, o tipo baixo poderia imitar qualquer nível de educação escolhido pelo tipo alto sem desvantagem, destruindo a separação. A sinalização funciona precisamente porque "fingir" é mais caro para o tipo ruim.
        - **Item 1 — V:** O moral hazard é um problema de ação oculta pós-contratual. Se o esforço fosse observável e verificável por um tribunal, o principal poderia escrever um contrato condicionado diretamente ao esforço, pagando um salário fixo que satisfaz a restrição de participação — sem necessidade de vincular pagamento a resultados e sem expor o agente avesso ao risco à variabilidade salarial. Esse é o primeiro melhor.
        - **Item 2 — F:** O resultado central de Rothschild e Stiglitz (1976) é exatamente o oposto: o equilíbrio, quando existe, é necessariamente **separador**. Nenhum equilíbrio *pooling* estável existe em mercados competitivos de seguros com informação assimétrica, porque uma seguradora entrante sempre poderia oferecer um contrato que atraia apenas os tipos de baixo risco, quebrando o pool.
        - **Item 3 — V:** Esse é o conteúdo exato do Princípio da Informatividade. Qualquer estatística que seja informativa sobre o esforço do agente — mesmo ruidosa — deve ser incluída no contrato, pois melhora a inferência e reduz o custo de agência. Isso fundamenta o uso de benchmarks setoriais e desempenho relativo em contratos de executivos.
        - **Item 4 — F:** No equilíbrio separador, a informação é revelada e os salários correspondem às produtividades, mas o custo social da sinalização é **positivo**, não zero. O tipo alto investe em educação que, no modelo puro de Spence, não aumenta a produtividade — é puro desperdício social. O custo \(c(e^*, \theta_H)\) é o preço da credibilidade informacional.
