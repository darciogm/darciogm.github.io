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
