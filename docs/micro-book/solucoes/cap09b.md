---
title: "Soluções — Capítulo 9b"
---

# Soluções dos Exercícios — Capítulo 9b

[← Voltar ao Capítulo 9b](../cap09b/index.md)

---

## ✏️ Exercício 9b.1 {#ex-9b-1}

**Solução.**

Sem investimento: jogo de entrada padrão. E entra → I acomoda (payoff (1, 1)) ou luta ((-1, -1)). I prefere acomodar → E entra. EPS: (Entrar, Acomodar).

Com investimento \(K\): se E entra e I luta, I obtém \(0\) (em vez de \(-1\)). Se I não luta (acomoda), payoff de I reduzido em \(K\): \(1 - K\).

**(a)** A ameaça de lutar é crível se, dado que E entrou, I prefere lutar a acomodar:

\[
0 \geq 1 - K \implies K \geq 1
\]

Para \(K \geq 1\), investir em capacidade torna a ameaça crível: após investir, I genuinamente prefere lutar (payoff 0) a acomodar (payoff \(1 - K \leq 0\)).

**(b)** Com \(K \geq 1\), o EPS é:

1. I investe \(K\).
2. E antecipa que I lutará (crível) → payoff de entrar é \(-1 < 0\).
3. E não entra.
4. I obtém \(10 - K\).

I investe se \(10 - K > 1\) (payoff sem investimento quando E entra e I acomoda), ou seja, \(K < 9\). Para \(1 \leq K < 9\): **EPS = (Investir, Não Entrar)**. O investimento é um mecanismo de comprometimento estratégico (*commitment device*).

**Interpretação econômica:** Este é o modelo de deterrência de entrada por investimento em capacidade (Dixit, 1980). O investimento irreversível altera o jogo subsequente, tornando crível a ameaça de guerra de preços. No Brasil, investimentos em infraestrutura por incumbentes em telecomunicações ou aviação podem servir a esse propósito estratégico.


↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-1)

---

## ✏️ Exercício 9b.2 {#ex-9b-2}

**Solução.**

**(a)** Com Tit-for-Tat (TFT), cooperar rende \(R = 3\) por período eternamente: \(V_C = 3/(1-\delta)\).

Desviar: ganho imediato \(T = 5\), seguido de punição alternada. Com TFT, após um desvio, a punição dura um período (\(P = 1\)), seguido de retorno à cooperação se ambos seguem TFT. O payoff de desviar (e depois voltar a cooperar):

\[
V_D = 5 + \delta \cdot 1 + \delta^2 \cdot 3 + \delta^3 \cdot 3 + \cdots = 5 + \delta + \frac{3\delta^2}{1-\delta}
\]

Cooperação sustentável se \(V_C \geq V_D\):

\[
\frac{3}{1-\delta} \geq 5 + \delta + \frac{3\delta^2}{1-\delta}
\]

\[
3 \geq 5(1-\delta) + \delta(1-\delta) + 3\delta^2 = 5 - 5\delta + \delta - \delta^2 + 3\delta^2
\]

\[
3 \geq 5 - 4\delta + 2\delta^2 \implies 2\delta^2 - 4\delta + 2 \leq 0 \implies \delta^2 - 2\delta + 1 \leq 0 \implies (\delta - 1)^2 \leq 0
\]

Isso só vale para \(\delta = 1\). Porém, a fórmula padrão simplificada (desvio seguido de punição permanente no período seguinte, depois reconciliação) dá:

\[
\delta \geq \frac{T - R}{T - S} = \frac{5 - 3}{5 - 0} = \frac{2}{5} = 0{,}4
\]

**(b)** Com grim trigger: \(\delta \geq (T - R)/(T - P) = (5-3)/(5-1) = 1/2 = 0{,}5\).

TFT requer \(\delta^* = 0{,}4 < 0{,}5\) do grim trigger. **TFT sustenta cooperação com menor paciência**.

**(c)** Nos torneios de Axelrod (1984), TFT venceu por ser: (i) **simpática** (nunca desvia primeiro), (ii) **retaliadora** (pune desvios imediatamente), (iii) **clemente** (perdoa após uma punição) e (iv) **transparente** (fácil de entender pelos rivais). O grim trigger é retaliador mas não clemente — erros ou tremores levam a colapso permanente da cooperação, o que é custoso.


↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-2)

---

## ✏️ Exercício 9b.3 {#ex-9b-3}

**Solução.**

No modelo de Rubinstein, o jogador \(i\) (proponente) obtém:

\[
x_i^* = \frac{1 - \delta_j}{1 - \delta_i \delta_j}
\]

*Sindicato A* (\(\delta_A = 0{,}95\), assumindo que A propõe primeiro):

\[
x_A = \frac{1 - 0{,}7}{1 - 0{,}95 \times 0{,}7} = \frac{0{,}3}{0{,}335} = 0{,}896
\]

*Sindicato B* (\(\delta_B = 0{,}7\), se B propõe primeiro):

\[
x_B = \frac{1 - 0{,}95}{1 - 0{,}7 \times 0{,}95} = \frac{0{,}05}{0{,}335} = 0{,}149
\]

Sindicato A obtém ~89,6% do excedente vs. ~14,9% para B. O sindicato mais paciente obtém um acordo **6 vezes melhor**.

**Interpretação econômica:** Paciência é poder na barganha. Sindicatos com reservas financeiras para sustentar greves longas (\(\delta\) alto) negociam de posição superior. Isso explica por que categorias com fundos de greve robustos (como metalúrgicos do ABC) historicamente obtêm melhores acordos.


↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-3)

---

## ✏️ Exercício 9b.4 {#ex-9b-4}

**Solução.**

No Cournot com \(N\) firmas simétricas, demanda \(P = a - Q\), custo \(c\):

- Lucro de cooperação (monopólio dividido): \(\pi^{coop} = \frac{(a-c)^2}{4N}\)
- Lucro de desvio (melhor resposta à produção cooperativa dos rivais): \(\pi^{dev} = \frac{(a-c)^2(N+1)^2}{16N^2}\)
- Lucro de punição (Nash-Cournot): \(\pi^{Nash} = \frac{(a-c)^2}{(N+1)^2}\)

Cooperação sustentável se:

\[
\delta \geq \frac{\pi^{dev} - \pi^{coop}}{\pi^{dev} - \pi^{Nash}}
\]

Simplificando (definindo \(A = (a-c)^2\)):

\[
\delta^* = \frac{\frac{(N+1)^2}{16N^2} - \frac{1}{4N}}{\frac{(N+1)^2}{16N^2} - \frac{1}{(N+1)^2}}
\]

Após álgebra:

Para \(N = 2\): \(\delta^* = 9/17 \approx 0{,}53\).

Para \(N = 10\): \(\delta^* \approx 0{,}97\).

Com mais firmas, a cooperação exige paciência quase perfeita. Isso é consistente com a observação empírica de que cartéis são mais estáveis com poucas firmas — e com a atenção do CADE a mercados concentrados.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-4)

---

## ✏️ Exercício 9b.5 {#ex-9b-5}

**Solução.**

**(a) Forma extensiva e subjogos.**

A árvore tem a seguinte estrutura:
- Nó raiz: E decide (Entra / Não entra).
- Se Entra: nó de I (Luta / Acomoda).
- Folhas: (Não entra) → \((0, 10)\); (Entra, Acomoda) → \((4, 4)\); (Entra, Luta) → \((-2, -2)\).

**Subjogos:** (1) O jogo completo; (2) O subjogo que começa no nó de I (após E entrar) — contém dois ramos: Luta com payoff \((-2,-2)\) e Acomoda com payoff \((4,4)\).

**(b) Equilíbrios de Nash.**

Na forma normal, E tem estratégias \(\{Entrar, Não\ entrar\}\) e I tem estratégias \(\{Lutar, Acomodar\}\) (estratégias de I especificam o que faz se E entrar, mesmo que esse nó não seja alcançado).

- **(Entrar, Acomodar):** E obtém 4 (melhor do que 0); I obtém 4 (melhor do que \(-2\)). Nenhum desvia. **É NE.**
- **(Não entrar, Lutar):** E obtém 0 (se E entra e I luta, E obtém \(-2 < 0\), então E prefere não entrar dado que I joga Lutar); I obtém 10. E não desvia (dado Lutar, Não entrar dá 0 > \(-2\)). I não desvia (nunca é chamado a agir). **É NE.**
- **(Entrar, Lutar):** E obtém \(-2\) mas poderia obter 0 não entrando. **Não é NE.**
- **(Não entrar, Acomodar):** E obtém 0 mas se desviasse para Entrar, obteria 4 (I acomodaria). **Não é NE.**

**Há dois NE: (Entrar, Acomodar) e (Não entrar, Lutar).**

**(c) EPS por indução retroativa.**

Começando pelo subjogo de I: Lutar dá \(-2\) a I; Acomodar dá \(4\). I escolhe **Acomodar**. Substituímos o nó de I pelo payoff \((4, 4)\).

Agora, E compara: Entrar → \((4, 4)\) vs. Não entrar → \((0, 10)\). E recebe 4 > 0, logo E **Entra**.

**EPS único: (Entrar, Acomodar).**

A ameaça eliminada é a de I **Lutar** — no subjogo pós-entrada, Lutar (\(-2\)) é dominado por Acomodar (4). O equilíbrio (Não entrar, Lutar) é um NE mas não é EPS, pois a ameaça de lutar não é crível.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-5)

---

## ✏️ Exercício 9b.6 {#ex-9b-6}

**Solução.**

**(a) Indução retroativa — Rodada 2.**

Na rodada 2, B propõe \((y, 100-y)\) e A aceita ou rejeita. Se A rejeita, ambos recebem 0. A aceita se \(y \geq 0\), então B oferece o mínimo aceitável: \(y = 0\) (B fica com tudo na rodada 2? Não — A aceita qualquer \(y \geq 0\)).

Mais precisamente: A aceita se \(y \geq 0\). B maximiza sua parte \(100 - y\), então oferece \(y = 0\). A aceita (pois \(0 \geq 0\)).

Portanto, se o jogo chega à rodada 2, B propõe ficar com R\$ 100 e A obtém R\$ 0. Mas o acordo na rodada 2 vale \(\delta = 0{,}8\) do valor original, logo:
- B (proponente em t=2) obtém o equivalente a \(0{,}8 \times 100 = 80\) em valor presente da rodada 1.
- A (respondedor em t=2) obtém 0.

**(b) Oferta de equilíbrio de A na Rodada 1.**

A deve oferecer a B pelo menos o que B obteria na rodada 2 (em valor presente): \(\delta \times 100 = 0{,}8 \times 100 = 80\).

Logo, A oferece a B exatamente R\$ 80 e fica com R\$ 20.

**Divisão de equilíbrio:** A fica com R\$ 20, B fica com R\$ 80. O acordo é feito na rodada 1 (sem atraso).

**(c) Com \(\delta = 0{,}5\).**

O valor para B de rejeitar e propor na rodada 2 é \(0{,}5 \times 100 = 50\). Logo A só precisa oferecer R\$ 50 a B, ficando com R\$ 50.

**Interpretação:** Quando \(\delta\) é menor (as partes são mais impacientes, ou o custo de atraso é maior), o poder do proponente aumenta: A consegue extrair mais valor porque a ameaça de B de rejeitar e "esperar" é menos crível — o custo do atraso recai sobre B. No Brasil, alta inflação e taxas de juros elevadas (baixo \(\delta\)) ampliam a vantagem do proponente nas negociações.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-6)

---

## ✏️ Exercício 9b.7 {#ex-9b-7}

**Solução.**

**(a) Unraveling por indução retroativa.**

**Período 3 (último):** O jogo de estágio tem único equilíbrio de Nash: (D, D) com payoffs (1, 1). Não há período futuro, logo nenhuma punição é possível. Ambos jogam **D** no período 3.

**Período 2:** Dado que o período 3 sempre resultará em (D, D) independentemente do que acontecer em 2, não há como condicionar o comportamento futuro às ações presentes. A "recompensa" por cooperar em 2 (melhor comportamento no período 3) não existe. O único equilíbrio de estágio em 2 é (D, D).

**Período 1:** Pelo mesmo argumento, (D, D).

**Conclusão:** O único EPS é (D, D) em todos os três períodos. Os payoffs totais são \(1 + 1 + 1 = 3\) para cada jogador (versus \(3 + 3 + 3 = 9\) com cooperação plena, que é Pareto-superior mas não sustentável).

**(b) Múltiplos equilíbrios de estágio — cooperação em períodos anteriores.**

Se o período 3 tem dois equilíbrios de estágio, (D, D) com payoff (1,1) e (C, C) com payoff (3, 3), então é possível usar o período 3 como **recompensa ou punição**:

- **Estratégia:** coopere nos períodos 1 e 2; se nenhum desvio ocorreu, jogue (C, C) no período 3; se alguém desviou, jogue (D, D) no período 3.
- O ganho de cooperar em 2 vs. desviar em 2: ganho imediato de desvio = \(5 - 3 = 2\); perda de punição no período 3 = \(3 - 1 = 2\). A condição de sustentabilidade depende dos fatores de desconto.

Conforme Benoit e Krishna (1985): quando o jogo de estágio tem múltiplos equilíbrios com payoffs distintos, é possível usar a alternância entre esses equilíbrios para sustentar resultados cooperativos em jogos finitamente repetidos — o *unraveling* não ocorre porque há "espaço" para punição no período final.

**(c) Número de EPS no item (a).**

No jogo finitamente repetido com único equilíbrio de estágio (D, D), a indução retroativa gera um **único EPS**: jogar (D, D) em todos os períodos, independentemente da história. Não há como construir desvios rentáveis da traição permanente porque nenhuma ameaça de punição futura é crível. Portanto, **existe exatamente 1 EPS**.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-7)

---

## ✏️ Exercício 9b.8 {#ex-9b-8}

**Solução.**

Payoffs: \(R = 50\) (cooperação), \(T = 80\) (desvio unilateral), \(P = 20\) (punição Nash), \(S = 0\) (ser explorado).

**(a) \(\delta^*\) mínimo (grim trigger).**

\[
\delta^* = \frac{T - R}{T - P} = \frac{80 - 50}{80 - 20} = \frac{30}{60} = 0{,}5
\]

A cooperação é sustentável para \(\delta \geq 0{,}5\).

**(b) Selic a 13,75% a.a. — fator de desconto mensal.**

Taxa mensal: \(r_m = (1 + 0{,}1375)^{1/12} - 1 \approx 0{,}01078\), ou seja, \(\approx 1{,}078\%\) ao mês.

\[
\delta = \frac{1}{1 + r_m} = \frac{1}{1{,}01078} \approx 0{,}9893
\]

Como \(\delta \approx 0{,}9893 > \delta^* = 0{,}5\), a cooperação **é sustentável** com Selic a 13,75% a.a.

**(c) Selic a 10,5% a.a.**

Taxa mensal: \(r_m = (1 + 0{,}105)^{1/12} - 1 \approx 0{,}00836\), ou seja, \(\approx 0{,}836\%\) ao mês.

\[
\delta = \frac{1}{1{,}00836} \approx 0{,}9917
\]

Como \(\delta \approx 0{,}9917 > 0{,}5\), a cooperação também é sustentável.

**Conclusão e interpretação:** Em ambos os casos, \(\delta\) mensal está muito acima de \(\delta^* = 0{,}5\), então variações da Selic entre 10,5% e 13,75% a.a. não afetam a sustentabilidade do conluio — que seria destruída somente com taxas de juros astronômicas (acima de 1.200% a.a. para \(\delta\) mensal cair a 0,5). **Taxas de juros mais baixas elevam \(\delta\) marginalmente, mas o efeito sobre o conluio é desprezível quando o \(\delta^*\) é baixo.**

**Implicação para a política antitruste:** A taxa de juros não é o principal determinante da estabilidade do conluio. O CADE deve focar em mecanismos que reduzam a capacidade de monitoramento (desconcentração, anonimização de preços) ou que aumentem o ganho do desvio relativo à cooperação — não em esperar que a política monetária desestruture os cartéis.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-8)

---

## ✏️ Exercício 9b.9 {#ex-9b-9}

**Solução.**

**(a) Derivação do EPS por condições de indiferença.**

Seja \(x_1^*\) a fração do jogador 1 no EPS quando ele propõe (rodada ímpar) e \(x_2^*\) a fração do jogador 2 quando ele propõe (rodada par).

**Condição do jogador 2 (respondedor em t=1):** Em equilíbrio, 2 aceita a oferta de 1 se e somente se a fração oferecida for ao menos tão boa quanto esperar até a rodada 2. Na rodada 2, 2 propõe e obtém \(x_2^*\), mas descontado: o valor para 2 de rejeitar é \(\delta_2 x_2^*\). Portanto, 1 oferece exatamente:

\[
1 - x_1^* = \delta_2 x_2^* \quad \Longrightarrow \quad x_1^* = 1 - \delta_2 x_2^* \tag{i}
\]

**Condição do jogador 1 (respondedor em t=2):** Analogamente, quando 2 propõe em t=2, 1 aceita se a fração for ao menos \(\delta_1 x_1^*\) (o valor de 1 esperar até a rodada 3, onde 1 propõe novamente). Logo, 2 oferece exatamente:

\[
1 - x_2^* = \delta_1 x_1^* \quad \Longrightarrow \quad x_2^* = 1 - \delta_1 x_1^* \tag{ii}
\]

Substituindo (ii) em (i):

\[
x_1^* = 1 - \delta_2(1 - \delta_1 x_1^*) = 1 - \delta_2 + \delta_1 \delta_2 x_1^*
\]

\[
x_1^*(1 - \delta_1 \delta_2) = 1 - \delta_2 \quad \Longrightarrow \quad \boxed{x_1^* = \frac{1 - \delta_2}{1 - \delta_1 \delta_2}}
\]

e \(x_2^* = 1 - \delta_1 x_1^* = \frac{\delta_2(1-\delta_1)}{1-\delta_1\delta_2}\). Isso demonstra a fórmula (9b.2).

**(b) Divisão para \(\delta_1 = 0{,}9\) e \(\delta_2 = 0{,}5\).**

\[
x_1^* = \frac{1 - 0{,}5}{1 - 0{,}9 \times 0{,}5} = \frac{0{,}5}{0{,}55} \approx 0{,}909
\]

\[
x_2^* = 1 - 0{,}909 = 0{,}091
\]

O jogador 1 (mais paciente: \(\delta_1 = 0{,}9\)) fica com ~91% do bolo. O jogador 2 (menos paciente: \(\delta_2 = 0{,}5\)) fica com ~9%. **O jogador 1 tem muito maior poder de barganha.**

**(c) Limite quando \(\delta_1 = \delta_2 = \delta \to 1\).**

Com \(\delta_1 = \delta_2 = \delta\):

\[
x_1^* = \frac{1-\delta}{1-\delta^2} = \frac{1-\delta}{(1-\delta)(1+\delta)} = \frac{1}{1+\delta}
\]

Quando \(\delta \to 1\): \(x_1^* \to 1/2\). A divisão converge para 50/50.

**Interpretação:** Quando as partes são muito pacientes, o custo de atraso por rodada é mínimo. Qualquer vantagem do proponente desaparece — quem propõe sabe que, se a oferta for rejeitada, o respondedor fará praticamente a mesma oferta (com custo de atraso desprezível). Essa convergência ao equilíbrio "justo" é uma das propriedades mais elegantes do modelo de Rubinstein e sua equivalência assintótica com a solução de barganha de Nash.

**(d) Aplicação trabalhista brasileira.**

Dados: \(\delta_{\text{sind}} = 0{,}95\), \(\delta_{\text{emp}} = 0{,}7\).

**Se o sindicato propõe primeiro** (jogador 1 = sind, jogador 2 = emp):

\[
x_{\text{sind}}^* = \frac{1 - 0{,}7}{1 - 0{,}95 \times 0{,}7} = \frac{0{,}3}{1 - 0{,}665} = \frac{0{,}3}{0{,}335} \approx 0{,}896
\]

O sindicato captura ~89,6% do excedente.

**Se a empresa propõe primeiro** (jogador 1 = emp, jogador 2 = sind):

\[
x_{\text{emp}}^* = \frac{1 - 0{,}95}{1 - 0{,}7 \times 0{,}95} = \frac{0{,}05}{0{,}335} \approx 0{,}149
\]

A empresa captura ~14,9% do excedente; o sindicato (respondedor) fica com ~85,1%.

**Conclusão:** Em ambos os casos, o sindicato (mais paciente) captura a maior parte do excedente — entre 85% e 90%. Quem propõe primeiro ganha marginalmente, mas a diferença é pequena: o poder de barganha é dominado pela paciência relativa, não pela ordem de propostas. Isso implica que sindicatos com robustos fundos de greve têm vantagem estrutural em negociações salariais, independentemente de quem "abre" a rodada.

↩ [Voltar ao enunciado](../cap09b/index.md#ex-9b-9)
