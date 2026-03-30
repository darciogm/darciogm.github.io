# Pré-Aula 24 — Torneio de Oligopólio + Encerramento (Prática)

!!! info "Leitura obrigatória"
    **Cap. 15, Seções 15.6–15.8** (jogos repetidos, colusão e concorrência monopolística) | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Analisar o dilema dos prisioneiros em oligopólio e as condições para colusão sustentável
2. Derivar o fator de desconto crítico $\delta^*$ para a estratégia de gatilho (*grim trigger*)
3. Caracterizar o equilíbrio de longo prazo em concorrência monopolística (diferenciação + lucro zero)

---

## 1. O dilema dos prisioneiros no oligopólio

Considere duas firmas de Cournot que poderiam **colundir** (produzir a quantidade de monopólio dividida por dois) ou **desviar** (produzir mais unilateralmente).

Usando o exemplo $P = 100 - (q_1 + q_2)$, $c = 10$:

| | Firma 2: Colundir | Firma 2: Desviar |
|---|---|---|
| **Firma 1: Colundir** | $(1.012{,}5;\; 1.012{,}5)$ | $(506{,}25;\; 1.139{,}06)$ |
| **Firma 1: Desviar** | $(1.139{,}06;\; 506{,}25)$ | $(900;\; 900)$ |

!!! example "Cálculo dos payoffs"
    **Colusão:** cada firma produz $q_m/2 = 22{,}5$; $P = 55$; $\pi_i = 1.012{,}5$

    **Desvio (melhor resposta a 22,5):** $q_d = 45 - 22{,}5/2 = 33{,}75$; $Q = 56{,}25$; $P = 43{,}75$; $\pi_d = 1.139{,}06$

    **Nash (Cournot):** $q_i = 30$; $\pi_i = 900$

O equilíbrio de Nash é (Desviar, Desviar) — a colusão **não é sustentável** em um jogo de uma rodada.

---

## 2. Jogos repetidos e estratégias de gatilho

Quando o jogo é repetido **infinitas vezes**, a cooperação pode ser sustentada se as firmas valorizam suficientemente o futuro.

### Estratégia Grim Trigger

> "Coopero enquanto o rival cooperar. Se ele desviar uma vez, jogo Nash para sempre."

**Condição de sustentabilidade:** o valor presente da colusão deve superar o ganho do desvio seguido de punição perpétua.

$$\underbrace{\frac{\pi_{\text{colusão}}}{1 - \delta}}_{\text{cooperar para sempre}} \geq \underbrace{\pi_{\text{desvio}} + \frac{\delta}{1-\delta}\pi_{\text{Nash}}}_{\text{desviar e ser punido}}$$

Resolvendo para $\delta$:

$$\delta \geq \delta^* = \frac{\pi_{\text{desvio}} - \pi_{\text{colusão}}}{\pi_{\text{desvio}} - \pi_{\text{Nash}}}$$

!!! example "Exemplo numérico (continuação)"
    $\pi_{\text{colusão}} = 1.012{,}5$; $\pi_{\text{desvio}} = 1.139{,}06$; $\pi_{\text{Nash}} = 900$

    $$\delta^* = \frac{1.139{,}06 - 1.012{,}5}{1.139{,}06 - 900} = \frac{126{,}56}{239{,}06} \approx 0{,}53$$

    Se $\delta \geq 0{,}53$ (firmas suficientemente pacientes), a colusão é sustentável.

### Fatores que facilitam a colusão

| Fator | Efeito sobre colusão |
|-------|---------------------|
| Poucas firmas | Facilita (menor incentivo a desviar) |
| Interação frequente | Facilita (punição rápida) |
| Transparência de preços | Facilita (desvio detectado imediatamente) |
| Demanda instável | Dificulta (difícil distinguir desvio de choque) |
| Assimetria de custos | Dificulta (firmas discordam da divisão ótima) |

!!! warning "Colusão e lei"
    A colusão explícita (cartel com acordo formal) é **ilegal** em praticamente todas as jurisdições. A colusão tácita (coordenação sem comunicação direta) é mais difícil de combater legalmente, mas o CADE monitora **paralelismo de conduta**.

---

## 3. Concorrência monopolística

A **concorrência monopolística** combina elementos de concorrência e monopólio:

- **Muitas firmas** (como concorrência perfeita)
- **Produtos diferenciados** (cada firma tem algum poder de mercado)
- **Livre entrada e saída** (como concorrência perfeita)

### Curto prazo

Cada firma enfrenta uma demanda negativamente inclinada (por causa da diferenciação) e maximiza lucro como um monopolista:

$$\text{RMg} = \text{CMg}, \quad P > \text{CMg}$$

Se $P > \text{CMe}$, há lucro econômico positivo.

### Longo prazo

A livre entrada atrai novas firmas, que "roubam" demanda das existentes. A curva de demanda de cada firma se desloca para a esquerda até:

$$P = \text{CMe} \quad \text{(lucro zero)}$$

Mas como a demanda é negativamente inclinada, o ponto de tangência ocorre **à esquerda** do mínimo do CMe:

$$P_{\text{LP}} = \text{CMe}_{\text{LP}} > \text{CMe}_{\min}$$

!!! tip "Excesso de capacidade"
    No longo prazo, cada firma opera com **capacidade ociosa** — produz menos do que a escala eficiente. Esse é o "custo" da variedade: consumidores pagam um pouco mais, mas têm acesso a produtos diferenciados.

---

## 4. Comparação: concorrência monopolística vs. perfeita

| Característica | Conc. Perfeita | Conc. Monopolística |
|---|---|---|
| Produto | Homogêneo | Diferenciado |
| Poder de mercado | Nenhum ($P = \text{CMg}$) | Algum ($P > \text{CMg}$) |
| Lucro LP | Zero | Zero |
| Eficiência produtiva | Sim ($q = q_{\min \text{CMe}}$) | Não (excesso de capacidade) |
| Variedade | Nenhuma | Alta |

---

## Preparação para o torneio

!!! abstract "Atividade em sala — Torneio de Oligopólio"
    Na Aula 24, você participará de um **torneio de oligopólio** onde cada equipe representará uma firma tomando decisões estratégicas repetidas.

    **Regras básicas:**

    - Rodadas sucessivas de decisão de quantidade (Cournot) ou preço (Bertrand)
    - Comunicação entre equipes pode ser permitida em algumas rodadas (colusão)
    - Pontuação baseada no lucro acumulado

    **Prepare sua estratégia considerando:**

    1. Você deve cooperar ou competir na primeira rodada?
    2. Qual sua resposta se o rival desviar?
    3. Nas últimas rodadas, a cooperação é sustentável? (Pense no *unraveling*)
    4. Vale a pena sinalizar disposição para cooperar? Como?

!!! warning "Dica estratégica"
    No dilema dos prisioneiros com **número finito** de rodadas e informação completa, a indução retroativa prevê que a colusão se desfaz. Mas em experimentos, a cooperação costuma emergir nas primeiras rodadas. Estratégias como *tit-for-tat* (imitar a ação do rival na rodada anterior) tendem a ter bom desempenho.

---

## Box: A tensão entre competição e cooperação

!!! note "Intuição Econômica"
    **Por que cartéis são instáveis?**

    Todo cartel carrega uma **contradição interna**: o acordo maximiza o lucro conjunto, mas cada membro individualmente ganha mais ao desviar (produzir além da cota, dar um desconto secreto). É o dilema dos prisioneiros em ação.

    A sustentabilidade depende de $\delta$ — quanto as firmas valorizam o futuro. Em setores com interação frequente, poucas firmas e preços transparentes, a colusão tácita é mais provável. Por isso, o CADE presta atenção especial a mercados concentrados com produtos homogêneos (combustíveis, cimento, produtos químicos).

    Adam Smith já alertava em 1776: *"Pessoas do mesmo ramo raramente se reúnem, mesmo para diversão, sem que a conversa termine numa conspiração contra o público."*

---

## Exercícios de preparação

**Exercício 1.** Duas firmas jogam um dilema dos prisioneiros repetido com $\pi_{\text{colusão}} = 500$, $\pi_{\text{desvio}} = 600$ e $\pi_{\text{Nash}} = 300$. Calcule o $\delta^*$ mínimo para sustentar a colusão com *grim trigger*.

??? success "Solução"
    $$\delta^* = \frac{\pi_{\text{desvio}} - \pi_{\text{colusão}}}{\pi_{\text{desvio}} - \pi_{\text{Nash}}} = \frac{600 - 500}{600 - 300} = \frac{100}{300} = \frac{1}{3} \approx 0{,}33$$

    A colusão é sustentável se $\delta \geq 1/3$. Como esse limiar é relativamente baixo, mesmo firmas com alguma impaciência conseguem manter o acordo.

**Exercício 2.** Em concorrência monopolística de longo prazo, por que o lucro é zero mesmo com $P > \text{CMg}$?

??? success "Solução"
    No longo prazo, a livre entrada desloca a curva de demanda de cada firma para a esquerda (novas firmas roubam clientes). Esse processo continua até que a curva de demanda seja **tangente** à curva de CMe.

    No ponto de tangência: $P = \text{CMe}$, logo $\pi = (P - \text{CMe}) \times q = 0$.

    Ao mesmo tempo, como a demanda é negativamente inclinada, a tangência ocorre num ponto onde $\text{CMe}$ é decrescente, ou seja, $P = \text{CMe} > \text{CMg}$. Há poder de mercado (markup positivo), mas não há lucro econômico — o markup cobre exatamente os custos fixos por unidade.

**Exercício 3.** Explique por que a estratégia *tit-for-tat* tende a ser eficaz em jogos repetidos.

??? success "Solução"
    A *tit-for-tat* (TFT) começa cooperando e depois imita a ação do rival na rodada anterior. Suas virtudes são:

    1. **Generosa**: começa cooperando, sinalizando boa vontade
    2. **Retaliadora**: pune imediatamente o desvio, desencorajando exploração
    3. **Perdoadora**: volta a cooperar assim que o rival coopera (diferente do *grim trigger*, que nunca perdoa)
    4. **Simples**: fácil de entender e prever, facilitando a coordenação

    Robert Axelrod mostrou em seus famosos torneios computacionais que a TFT venceu estratégias muito mais sofisticadas — evidência de que simplicidade e reciprocidade são poderosas na sustentação da cooperação.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** No dilema dos prisioneiros do oligopólio, o equilíbrio de Nash em jogo de uma rodada é:

- [ ] (a) Ambas cooperam
- [x] (b) Ambas desviam
- [ ] (c) Uma coopera e outra desvia
- [ ] (d) Não existe equilíbrio

**Q2.** Na estratégia *grim trigger*, o que acontece após um desvio do rival?

- [ ] (a) A firma perdoa após uma rodada de punição
- [ ] (b) A firma desvia também, mas volta a cooperar depois
- [x] (c) A firma joga Nash para sempre (punição permanente)
- [ ] (d) A firma sai do mercado

**Q3.** Se $\delta^* = 0{,}6$ e a taxa de juros é $r = 0{,}4$ (logo $\delta = 1/(1+r) \approx 0{,}71$), a colusão é:

- [x] (a) Sustentável, pois $\delta = 0{,}71 > \delta^* = 0{,}6$
- [ ] (b) Insustentável, pois $\delta < \delta^*$
- [ ] (c) Impossível de determinar sem mais informações
- [ ] (d) Sustentável apenas com *tit-for-tat*

**Q4.** No longo prazo em concorrência monopolística:

- [ ] (a) $P = \text{CMg}$ e lucro zero
- [x] (b) $P = \text{CMe}$ e lucro zero, mas $P > \text{CMg}$
- [ ] (c) $P > \text{CMe}$ e lucro positivo
- [ ] (d) As firmas se tornam monopolistas puros

**Q5.** Qual fator NÃO facilita a colusão tácita?

- [ ] (a) Poucas firmas no mercado
- [ ] (b) Preços publicamente observáveis
- [x] (c) Demanda altamente volátil e imprevisível
- [ ] (d) Interações frequentes entre as firmas

</div>

---

!!! abstract "Próxima aula"
    **Aula 24**: Torneio de Oligopólio + encerramento do módulo de estruturas de mercado. Venha com sua estratégia preparada!
