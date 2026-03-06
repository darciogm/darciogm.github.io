# Capítulo 15 — Entre o Monopólio e a Concorrência: O Mundo Real dos Oligopólios

## Introdução

A maioria dos mercados reais situa-se entre os extremos teóricos da concorrência perfeita e do monopólio. Em um **oligopólio**, um pequeno número de firmas detém parcela significativa do mercado, e cada uma reconhece que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o traço definidor do oligopólio e o que o torna analiticamente mais complexo do que as estruturas polares.

A teoria dos oligopólios recorre extensivamente à **teoria dos jogos** para modelar a interação estratégica entre firmas. Os resultados são extremamente sensíveis às hipóteses sobre a variável de decisão (preço ou quantidade), a sequência de movimentos (simultâneo ou sequencial), o horizonte temporal (jogo de uma rodada ou repetido) e a natureza da informação.

Este capítulo apresenta os modelos clássicos de oligopólio — Bertrand, Cournot, Stackelberg — e suas extensões, incluindo diferenciação de produto, colusão tácita, dissuasão de entrada e inovação. A análise é complementada por uma discussão do oligopólio bancário brasileiro.

---

## 15.1 Decisões de curto prazo: preço e quantidade

Em um oligopólio, as firmas devem decidir simultaneamente (ou sequencialmente) sobre preço, quantidade, qualidade, publicidade e outras variáveis. Os modelos clássicos concentram-se em duas variáveis fundamentais:

- **Preço**: modelo de Bertrand (1883).
- **Quantidade**: modelo de Cournot (1838).

A escolha da variável estratégica não é trivial e produz resultados dramaticamente diferentes, como veremos a seguir.

!!! definition "Interdependência Estratégica"
    Em um oligopólio, o lucro de cada firma depende não apenas de sua própria decisão, mas também das decisões de todas as rivais. Formalmente, se há \(n\) firmas, o lucro da firma \(i\) é \(\pi_i(s_i, s_{-i})\), onde \(s_i\) é a estratégia da firma \(i\) e \(s_{-i}\) é o vetor de estratégias das demais firmas. O conceito de solução é o **equilíbrio de Nash**: um perfil de estratégias \((s_1^*, \ldots, s_n^*)\) tal que nenhuma firma pode aumentar unilateralmente seu lucro desviando.

---

## 15.2 Modelo de Bertrand: concorrência em preços

### O modelo básico

Considere duas firmas produzindo um bem **homogêneo** com custo marginal constante \(c\). As firmas escolhem **simultaneamente** seus preços \(p_1\) e \(p_2\). Os consumidores compram da firma com menor preço; se os preços são iguais, a demanda se divide igualmente.

A função de demanda da firma 1 é:

\[
q_1(p_1, p_2) = \begin{cases} D(p_1) & \text{se } p_1 < p_2 \\ \frac{D(p_1)}{2} & \text{se } p_1 = p_2 \\ 0 & \text{se } p_1 > p_2 \end{cases}
\]

### O paradoxo de Bertrand

!!! abstract "Teorema: Equilíbrio de Bertrand"
    No modelo de Bertrand com bens homogêneos e custos marginais constantes e idênticos, o único equilíbrio de Nash é \(p_1^* = p_2^* = c\). Ambas as firmas obtêm lucro zero.

!!! proof "Demonstração"
    Mostramos que \(p_1^* = p_2^* = c\) é equilíbrio de Nash e que nenhum outro perfil de preços o é.

    **Passo 1: \(p_1 = p_2 = c\) é equilíbrio de Nash.**

    Se ambas as firmas cobram \(p = c\), cada uma obtém lucro zero. Qualquer desvio unilateral resulta em:

    - \(p_i < c\): a firma \(i\) atrai toda a demanda mas obtém lucro negativo (prejuízo por unidade).
    - \(p_i > c\): a firma \(i\) perde toda a demanda para a rival e obtém lucro zero.

    Portanto, nenhuma firma tem incentivo para desviar. \(\checkmark\)

    **Passo 2: Nenhum outro perfil é equilíbrio de Nash.**

    *Caso 1:* \(p_1 > p_2 > c\). A firma 1 obtém lucro zero e poderia lucrar cobrando \(p_1 = p_2 - \epsilon\). Portanto, não é equilíbrio.

    *Caso 2:* \(p_1 = p_2 = p > c\). Cada firma obtém \(\frac{(p-c)D(p)}{2}\). A firma 1 pode desviar para \(p_1 = p - \epsilon\), obtendo aproximadamente \((p-c)D(p)\) — o dobro. Portanto, não é equilíbrio.

    *Caso 3:* \(p_1 < c\) ou \(p_2 < c\). A firma com preço abaixo de \(c\) tem prejuízo e poderia desviar para \(p_i = c\). Portanto, não é equilíbrio.

    Esgotados todos os casos, o único equilíbrio de Nash é \(p_1^* = p_2^* = c\). \(\blacksquare\)

O resultado é paradoxal: bastam **duas firmas** para reproduzir o resultado competitivo. Isso contrasta fortemente com a evidência empírica, na qual mercados duopolísticos tipicamente apresentam lucros positivos. O paradoxo de Bertrand motivou diversas extensões do modelo.

### Resoluções do paradoxo

O paradoxo de Bertrand pode ser resolvido relaxando qualquer uma de suas hipóteses:

1. **Diferenciação de produto**: se os bens não são substitutos perfeitos, as firmas retêm algum poder de mercado mesmo cobrando preços diferentes (Seção 15.5).
2. **Restrições de capacidade**: se as firmas têm capacidade limitada, a firma de preço mais baixo não pode atender toda a demanda (Seção 15.4).
3. **Interação repetida**: em jogos repetidos, a ameaça de retaliação futura pode sustentar preços acima do custo (Seção 15.6).
4. **Custos marginais assimétricos**: se \(c_1 < c_2\), o equilíbrio é \(p_1^* = c_2\) (ou ligeiramente abaixo), e a firma 1 obtém lucro positivo.

---

## 15.3 Modelo de Cournot: concorrência em quantidades

### O modelo duopolístico

Considere duas firmas que escolhem **simultaneamente** as quantidades \(q_1\) e \(q_2\). O preço de mercado é determinado pela demanda inversa \(p = a - b(q_1 + q_2)\). Cada firma tem custo marginal constante \(c\).

O lucro da firma 1 é:

\[
\pi_1(q_1, q_2) = [a - b(q_1 + q_2)] \cdot q_1 - c \cdot q_1
\]

A condição de primeira ordem é:

\[
\frac{\partial \pi_1}{\partial q_1} = a - 2bq_1 - bq_2 - c = 0
\]

Resolvendo para \(q_1\):

\[
q_1^*(q_2) = \frac{a - c - bq_2}{2b} = \frac{a - c}{2b} - \frac{q_2}{2}
\]

Essa é a **função de reação** (ou função de melhor resposta) da firma 1. Ela indica a quantidade ótima da firma 1 para cada nível de produção da firma 2. A função de reação é **decrescente**: as quantidades são **substitutos estratégicos** no modelo de Cournot.

!!! definition "Substitutos e Complementos Estratégicos"
    Variáveis de decisão são **substitutos estratégicos** se a melhor resposta de uma firma é decrescente na ação da rival: quando a rival produz mais, a firma reduz sua produção. São **complementos estratégicos** se a melhor resposta é crescente. No modelo de Cournot, quantidades são substitutos estratégicos. No modelo de Bertrand com produtos diferenciados, preços são tipicamente complementos estratégicos.

### Equilíbrio de Cournot (duopólio)

Por simetria (\(q_1^* = q_2^* = q^*\)):

\[
q^* = \frac{a - c}{2b} - \frac{q^*}{2} \implies q^* = \frac{a - c}{3b}
\]

O equilíbrio de Cournot é:

\[
q_1^* = q_2^* = \frac{a-c}{3b}, \quad Q^* = \frac{2(a-c)}{3b}, \quad p^* = \frac{a+2c}{3}
\]

\[
\pi_1^* = \pi_2^* = \frac{(a-c)^2}{9b}
\]

### O modelo de Stackelberg

No modelo de Stackelberg, a firma 1 (líder) escolhe \(q_1\) **primeiro**, e a firma 2 (seguidora) observa \(q_1\) e depois escolhe \(q_2\). O jogo é resolvido por **indução retroativa**.

A seguidora usa sua função de reação: \(q_2^*(q_1) = \frac{a-c-bq_1}{2b}\).

O líder antecipa essa reação e maximiza:

\[
\pi_1 = \left[a - b\left(q_1 + \frac{a-c-bq_1}{2b}\right)\right]q_1 - cq_1 = \frac{(a-c)q_1}{2} - \frac{bq_1^2}{2}
\]

A condição de primeira ordem dá:

\[
q_1^L = \frac{a-c}{2b}, \quad q_2^S = \frac{a-c}{4b}
\]

\[
Q^{St} = \frac{3(a-c)}{4b}, \quad p^{St} = \frac{a+3c}{4}
\]

O líder produz mais e lucra mais do que no Cournot; a seguidora produz menos e lucra menos. A **vantagem do primeiro movimento** (first-mover advantage) decorre do compromisso crível com uma quantidade elevada.

---

## 15.4 Demonstração: Equilíbrio de Cournot com \(n\) firmas

!!! proof "Demonstração"
    Considere \(n\) firmas idênticas com custo marginal constante \(c\). A demanda inversa é \(p = a - bQ\), onde \(Q = \sum_{i=1}^n q_i\).

    O lucro da firma \(i\) é:

    \[
    \pi_i = \left[a - b\left(q_i + \sum_{j \neq i} q_j\right)\right] q_i - c \cdot q_i
    \]

    Definindo \(Q_{-i} = \sum_{j \neq i} q_j\), a condição de primeira ordem é:

    \[
    \frac{\partial \pi_i}{\partial q_i} = a - 2bq_i - bQ_{-i} - c = 0
    \]

    Resolvendo:

    \[
    q_i^*(Q_{-i}) = \frac{a - c - bQ_{-i}}{2b}
    \]

    No equilíbrio simétrico, todas as firmas produzem a mesma quantidade: \(q_i^* = q^*\) para todo \(i\). Portanto, \(Q_{-i} = (n-1)q^*\), e a condição de equilíbrio torna-se:

    \[
    q^* = \frac{a - c - b(n-1)q^*}{2b}
    \]

    \[
    2bq^* = a - c - b(n-1)q^*
    \]

    \[
    q^*[2b + b(n-1)] = a - c
    \]

    \[
    q^* \cdot b(n+1) = a - c
    \]

    \[
    \boxed{q^* = \frac{a - c}{b(n+1)}}
    \]

    A quantidade agregada e o preço de equilíbrio são:

    \[
    Q^* = nq^* = \frac{n(a-c)}{b(n+1)}
    \]

    \[
    p^* = a - bQ^* = a - \frac{n(a-c)}{n+1} = \frac{a + nc}{n+1}
    \]

    O lucro de cada firma é:

    \[
    \pi^* = (p^* - c)q^* = \frac{(a-c)^2}{b(n+1)^2}
    \]

    **Propriedades de estática comparativa:**

    - Quando \(n = 1\): \(q^* = \frac{a-c}{2b}\), \(p^* = \frac{a+c}{2}\) — resultado de monopólio.
    - Quando \(n = 2\): \(q^* = \frac{a-c}{3b}\), \(p^* = \frac{a+2c}{3}\) — duopólio de Cournot.
    - Quando \(n \to \infty\): \(Q^* \to \frac{a-c}{b}\), \(p^* \to c\) — resultado competitivo.

    Portanto, o equilíbrio de Cournot converge para o resultado de concorrência perfeita quando o número de firmas cresce sem limite. O modelo de Cournot é, assim, uma interpolação contínua entre monopólio e concorrência perfeita, parametrizada pelo número de firmas. \(\blacksquare\)

---

## 15.5 Restrições de capacidade

### O argumento de Edgeworth

Edgeworth (1897) observou que, se as firmas têm **capacidade limitada**, o equilíbrio de Bertrand em preços iguais ao custo marginal pode deixar de existir. Quando a firma de preço mais baixo não consegue atender toda a demanda, a firma de preço mais alto retém clientes residuais e pode cobrar acima do custo.

### O resultado de Kreps-Scheinkman

Kreps e Scheinkman (1983) demonstraram um resultado notável:

!!! abstract "Teorema de Kreps-Scheinkman"
    Em um jogo em dois estágios no qual as firmas primeiro escolhem **capacidades** (estágio 1) e depois competem em **preços** (estágio 2), o resultado de equilíbrio coincide com o **equilíbrio de Cournot**, desde que a regra de racionamento eficiente seja utilizada.

Esse resultado fornece uma fundamentação microeconômica para o modelo de Cournot: a concorrência em quantidades pode ser interpretada como uma concorrência em preços precedida por decisões de capacidade. As quantidades de Cournot representam as capacidades que as firmas escolheriam instalar antes de competir em preços.

---

## 15.6 Diferenciação de produto

### Modelo de Hotelling (diferenciação horizontal)

Considere um segmento de reta \([0, 1]\) representando o espaço de características do produto. Consumidores estão uniformemente distribuídos ao longo do segmento. A firma 1 localiza-se em \(x_1 = 0\) e a firma 2 em \(x_2 = 1\). Cada consumidor, localizado em \(x\), incorre em custo de transporte \(t \cdot |x - x_i|\) ao comprar da firma \(i\).

O consumidor indiferente localiza-se em:

\[
\hat{x} = \frac{1}{2} + \frac{p_2 - p_1}{2t}
\]

As demandas são \(q_1 = \hat{x}\) e \(q_2 = 1 - \hat{x}\). As funções de lucro (com custo marginal zero) são:

\[
\pi_1 = p_1 \cdot \hat{x} = p_1 \left(\frac{1}{2} + \frac{p_2 - p_1}{2t}\right)
\]

No equilíbrio simétrico: \(p_1^* = p_2^* = t\), \(\pi_1^* = \pi_2^* = \frac{t}{2}\).

O parâmetro \(t\) mede o grau de diferenciação. Quando \(t \to 0\), os produtos tornam-se homogêneos e os lucros convergem para zero (Bertrand). Quando \(t\) é grande, a diferenciação confere poder de mercado significativo.

### Modelo de Salop (cidade circular)

O modelo de Salop estende Hotelling para \(n\) firmas dispostas simetricamente em um círculo de perímetro 1. No equilíbrio simétrico com entrada livre:

\[
p^* = c + \frac{t}{n}, \quad n^* = \sqrt{\frac{t}{f}}
\]

onde \(f\) é o custo fixo de entrada. O número de firmas em equilíbrio é crescente no custo de transporte (diferenciação) e decrescente no custo fixo.

---

## 15.7 Colusão tácita

### Jogos repetidos e sustentação de colusão

Em um jogo de Bertrand repetido infinitamente, as firmas podem sustentar preços acima do custo marginal por meio de **estratégias de gatilho** (trigger strategies).

!!! definition "Estratégia de Gatilho (Grim Trigger)"
    Na **estratégia de gatilho**, cada firma cobra o preço de monopólio enquanto todas as rivais fizerem o mesmo. Se qualquer firma desviar, todas revertem permanentemente para o equilíbrio de Nash estático (preço competitivo).

### Condição de sustentabilidade

Considere o duopólio de Bertrand com fator de desconto \(\delta\). O lucro de monopólio dividido é \(\frac{\pi^m}{2}\) por período. Ao desviar, a firma obtém \(\pi^m\) no período corrente, mas zero daí em diante (punição).

A colusão é sustentável se:

\[
\underbrace{\frac{\pi^m/2}{1-\delta}}_{\text{valor de cooperar}} \geq \underbrace{\pi^m + \frac{0}{1-\delta}}_{\text{valor de desviar}}
\]

\[
\frac{1}{2(1-\delta)} \geq 1 \implies \delta \geq \frac{1}{2}
\]

Com \(n\) firmas simétricas, a condição torna-se:

\[
\delta \geq 1 - \frac{1}{n}
\]

Quanto maior o número de firmas, mais difícil sustentar a colusão.

### Fatores que facilitam a colusão

| Fator | Efeito sobre a colusão | Mecanismo |
|---|---|---|
| Poucas firmas | Facilita | Menor incentivo ao desvio |
| Interação frequente | Facilita | Retaliação mais rápida |
| Demanda estável | Facilita | Desvios são detectáveis |
| Produtos homogêneos | Ambíguo | Facilita detecção mas aumenta tentação |
| Simetria de custos | Facilita | Acordo mais fácil sobre preço |
| Transparência de preços | Facilita | Detecção rápida de desvios |
| Barreiras à entrada | Facilita | Impede erosão de lucros por entrantes |
| Contato multimercado | Facilita | Mais oportunidades de punição |

!!! tip "Colusão tácita e direito concorrencial"
    A colusão tácita — sustentada por interação repetida sem comunicação explícita — é extremamente difícil de combater com instrumentos tradicionais do direito antitruste. O CADE distingue entre **cartel** (acordo explícito, ilícito per se) e **paralelismo consciente** (comportamento coordenado sem acordo, que pode não ser ilícito). A análise de estrutura de mercado (concentração, barreiras, transparência) é utilizada para avaliar a probabilidade de coordenação tácita.

---

## 15.8 Decisões de longo prazo: investimento, entrada e saída

No longo prazo, as firmas tomam decisões sobre investimentos em capacidade, P&D, localização e publicidade que afetam as condições de competição nos períodos subsequentes. Essas decisões têm natureza **estratégica**: alteram a estrutura do jogo e, portanto, o comportamento de equilíbrio.

### Compromisso estratégico

Um investimento constitui um **compromisso** (commitment) se é irreversível ou custoso de reverter. Compromissos credíveis podem alterar as expectativas dos rivais e modificar o equilíbrio.

A taxonomia de Fudenberg e Tirole (1984) classifica os investimentos estratégicos em:

- **Top dog** ("cão grande"): investir agressivamente para intimidar rivais (ex.: excesso de capacidade para dissuadir entrada).
- **Puppy dog** ("cão manso"): investir pouco para sinalizar intenções pacíficas e evitar retaliação.
- **Fat cat** ("gato gordo"): investir para tornar-se menos agressivo e induzir acomodação do rival.
- **Lean and hungry** ("magro e faminto"): não investir para parecer mais agressivo e dissuadir rivais.

A estratégia ótima depende de dois fatores: (i) se o investimento torna a firma mais agressiva ou mais acomodada; (ii) se o objetivo é dissuadir a entrada ou acomodar-se com rivais existentes.

---

## 15.9 Dissuasão estratégica de entrada

### Sobrecapacidade como barreira

Spence (1977) e Dixit (1980) analisaram como o incumbente pode usar **investimento em capacidade** para dissuadir a entrada. No modelo de Dixit, o incumbente instala capacidade \(K\) antes que o entrante potencial decida se ingressa no mercado. Se \(K\) é suficientemente grande, a entrada torna-se não lucrativa porque o incumbente pode comprometer-se a produzir uma quantidade elevada.

A condição para dissuasão de entrada é:

\[
\pi_E(q_E^*, K) \leq f
\]

onde \(\pi_E\) é o lucro bruto do entrante no equilíbrio pós-entrada e \(f\) é o custo fixo de entrada. Se o custo de instalação de capacidade excede o ganho com a dissuasão, o incumbente pode preferir **acomodar** a entrada.

!!! note "Dissuasão vs. acomodação"
    A dissuasão de entrada nem sempre é ótima para o incumbente. Se o custo de instalar capacidade suficiente para bloquear a entrada excede a perda de lucro decorrente de compartilhar o mercado, o incumbente prefere acomodar a entrada. A decisão depende da magnitude do custo fixo do entrante, da elasticidade da demanda e da estrutura de custos.

---

## 15.10 Sinalização

Em mercados com **informação assimétrica**, as ações observáveis de uma firma podem transmitir informação privada sobre suas características (custos, qualidade, intenções).

### Preço como sinal

Milgrom e Roberts (1982) mostraram que um incumbente com custos baixos pode sinalizar sua eficiência cobrando **preços baixos** — o chamado **preço-limite**. O preço baixo é um sinal crível porque um incumbente com custos altos não conseguiria sustentá-lo lucrativamente.

No equilíbrio separador:

- O incumbente eficiente cobra um preço suficientemente baixo para que a imitação pelo ineficiente seja não lucrativa.
- O entrante potencial infere corretamente o tipo do incumbente e desiste de entrar contra o eficiente.

O preço de sinalização é tipicamente **inferior** ao preço de monopólio de curto prazo: o incumbente sacrifica lucro corrente para preservar sua posição de mercado no longo prazo.

---

## 15.11 Quantas firmas entram? Entrada livre em Cournot

### Número de firmas em equilíbrio

Se a entrada é livre mas sujeita a custo fixo \(f\), as firmas entram até que o lucro líquido seja zero. Usando os resultados da Seção 15.4 (Cournot com \(n\) firmas):

\[
\pi^*(n) = \frac{(a-c)^2}{b(n+1)^2} = f
\]

Resolvendo para \(n\):

\[
n^* = \frac{a-c}{\sqrt{bf}} - 1
\]

O número de firmas é crescente no tamanho do mercado \((a-c)\) e decrescente no custo fixo \(f\) e no parâmetro de inclinação da demanda \(b\).

### Excesso de entrada

Mankiw e Whinston (1986) demonstraram que, sob condições gerais, o equilíbrio de entrada livre em Cournot apresenta **excesso de entrada**: o número de firmas em equilíbrio é superior ao socialmente ótimo. Isso ocorre porque cada entrante ignora a **externalidade negativa** que impõe às firmas existentes ao reduzir o preço de mercado (efeito roubo de negócios, *business stealing*).

---

## 15.12 Inovação sob oligopólio

### Incentivos à inovação

O oligopólio apresenta incentivos à inovação que são intermediários entre concorrência perfeita e monopólio. Há duas forças em operação:

- **Efeito substituição** (Arrow, 1962): uma firma competitiva tem mais a ganhar com uma inovação drástica do que um monopolista, pois o monopolista já desfruta de lucros que seriam parcialmente canibalizados pela inovação. Esse efeito favorece a inovação em mercados competitivos.

- **Efeito eficiência** (Gilbert e Newbery, 1982): o monopolista tem mais a perder com a entrada de um inovador do que o entrante tem a ganhar, o que lhe dá incentivos mais fortes para inovar preventivamente. Esse efeito favorece a inovação por incumbentes com poder de mercado.

No oligopólio, ambas as forças coexistem. A intensidade de P&D depende do grau de competição, do regime de apropriabilidade (proteção de patentes) e da natureza da inovação (incremental vs. radical).

### Corridas por patentes

Em modelos de corrida por patentes (patent race), múltiplas firmas investem em P&D simultaneamente, mas apenas a primeira a obter sucesso recebe a patente. Esses modelos tendem a gerar **excesso de investimento** em P&D do ponto de vista social: a duplicação de esforços desperdiça recursos.

---

## Comparação dos modelos de oligopólio

A tabela a seguir resume os principais resultados dos modelos clássicos para o caso de demanda linear \(p = a - bQ\), custos marginais constantes \(c\) e duas firmas simétricas.

| Variável | Bertrand | Cournot | Stackelberg | Colusão |
|---|---|---|---|---|
| **Preço** | \(c\) | \(\frac{a+2c}{3}\) | \(\frac{a+3c}{4}\) | \(\frac{a+c}{2}\) |
| **Quantidade total** | \(\frac{a-c}{b}\) | \(\frac{2(a-c)}{3b}\) | \(\frac{3(a-c)}{4b}\) | \(\frac{a-c}{2b}\) |
| **Lucro por firma** | \(0\) | \(\frac{(a-c)^2}{9b}\) | Líder: \(\frac{(a-c)^2}{8b}\); Seguidora: \(\frac{(a-c)^2}{16b}\) | \(\frac{(a-c)^2}{8b}\) |
| **Lucro total** | \(0\) | \(\frac{2(a-c)^2}{9b}\) | \(\frac{3(a-c)^2}{16b}\) | \(\frac{(a-c)^2}{4b}\) |
| **Nº mínimo de firmas** | 2 | 2+ | 2 (líder + seguidora) | 2+ |
| **Variável de decisão** | Preço | Quantidade | Quantidade (sequencial) | Preço ou quantidade |
| **Eficiência** | Eficiente | Intermediária | Intermediária (mais que Cournot) | Monopólio |
| **Estabilidade** | Equilíbrio de Nash | Equilíbrio de Nash | Eq. perfeito em subjogos | Requer mecanismo de enforcement |

!!! tip "Ordenação por eficiência"
    Em termos de excedente total, a ordenação é: Bertrand \(\geq\) Stackelberg \(\geq\) Cournot \(\geq\) Colusão. A concorrência em preços é a mais eficiente; a colusão é a menos eficiente (equivalente ao monopólio).

---

!!! example "Box Brasil: Concentração bancária — spread, fusões e competição"
    O sistema bancário brasileiro é um dos mais concentrados entre as grandes economias. Os cinco maiores bancos (Itaú Unibanco, Bradesco, Banco do Brasil, Caixa Econômica Federal e Santander) detêm mais de 80% dos ativos totais do sistema, segundo dados do Banco Central do Brasil.

    **Spreads bancários**

    O spread bancário brasileiro — diferença entre a taxa de empréstimo e a taxa de captação — é historicamente elevado em comparação internacional. Dados do Banco Central indicam que o spread médio para pessoa física situava-se em torno de 30-40 pontos percentuais ao ano em períodos recentes, enquanto a média da OCDE é inferior a 5 p.p. As causas frequentemente apontadas incluem:

    - **Risco de crédito elevado** e custos de inadimplência.
    - **Custos administrativos** e tributação sobre operações financeiras (IOF).
    - **Poder de mercado** decorrente da concentração.
    - **Cunha tributária** e depósitos compulsórios elevados.
    - **Assimetria de informação** e fragilidades institucionais na recuperação de crédito.

    A literatura empírica debate a importância relativa desses fatores. Estudos do BCB sugerem que o poder de mercado explica parcela significativa, mas não majoritária, do spread.

    **Fusões analisadas pelo CADE**

    | Operação | Ano | Decisão CADE | Participação resultante |
    |---|---|---|---|
    | Itaú + Unibanco | 2008 | Aprovada sem restrições | ~18% dos ativos |
    | Bradesco + HSBC Brasil | 2016 | Aprovada com restrições | ~14% dos ativos |
    | Itaú + XP (parcial) | 2017 | Aprovada com restrições | Participação minoritária |

    A fusão Itaú-Unibanco (2008) foi analisada pelo CADE em rito sumário, decisão que gerou controvérsia dada a magnitude da operação. O CADE argumentou que a participação conjunta em mercados relevantes específicos não ultrapassava patamares preocupantes, e que os ganhos de eficiência justificavam a operação.

    A aquisição do HSBC Brasil pelo Bradesco (2016) foi aprovada com restrições, incluindo a alienação de carteiras em mercados locais onde a concentração se tornava excessiva.

    **Comparação internacional**

    | País | CR5 (ativos) | Spread médio (p.p.) |
    |---|---|---|
    | Brasil | ~82% | ~35 |
    | EUA | ~47% | ~3 |
    | Alemanha | ~30% | ~4 |
    | Chile | ~70% | ~5 |
    | Austrália | ~80% | ~3 |

    A comparação sugere que a concentração per se não explica os spreads brasileiros: Austrália e Canadá possuem concentração bancária semelhante à brasileira, mas spreads muito inferiores. Fatores institucionais — custos de recuperação de crédito, instabilidade macroeconômica histórica, regulação prudencial — são igualmente relevantes.

    **Fintechs e contestabilidade**

    A partir de 2018, o Banco Central adotou medidas para aumentar a competição bancária, incluindo a agenda BC# (posteriormente Agenda BC+), o open banking (Sistema Financeiro Aberto) e a regulamentação de fintechs. O crescimento de instituições digitais como Nubank, Inter e C6 Bank introduziu elementos de contestabilidade que pressionam as margens dos incumbentes, embora a participação dessas instituições nos estoques de crédito ainda seja modesta.

---

## Exercícios

!!! example "Exercício 1"
    Considere um duopólio de Cournot com demanda \(p = 120 - Q\) e custos marginais \(c_1 = 20\) e \(c_2 = 30\).

    a) Encontre as funções de reação de cada firma.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio.

    c) Compare com o resultado que seria obtido se ambas as firmas tivessem \(c = 20\). A assimetria de custos aumenta ou reduz o excedente total?

!!! example "Exercício 2"
    Duas firmas competem em preços (Bertrand) com produtos diferenciados. As demandas são \(q_1 = 100 - 2p_1 + p_2\) e \(q_2 = 100 - 2p_2 + p_1\). Os custos marginais são \(c = 10\).

    a) Encontre as funções de reação em preços.

    b) Calcule o equilíbrio de Nash em preços e quantidades.

    c) Mostre que os preços de equilíbrio são superiores ao custo marginal (resolvendo o paradoxo de Bertrand).

!!! example "Exercício 3"
    Considere o modelo de Cournot com \(n\) firmas idênticas, demanda \(p = 200 - Q\) e custo marginal \(c = 20\). O custo fixo de entrada é \(f = 400\).

    a) Encontre preço, quantidade por firma e lucro por firma em função de \(n\).

    b) Determine o número de firmas em equilíbrio de entrada livre.

    c) Calcule o número socialmente ótimo de firmas (que maximiza o excedente total menos os custos fixos totais). Há excesso de entrada?

!!! example "Exercício 4"
    Duas firmas jogam um jogo de Bertrand repetido infinitamente com fator de desconto \(\delta\). A demanda de mercado é \(Q = 100 - p\) e o custo marginal é \(c = 40\). As firmas consideram usar uma estratégia de gatilho para sustentar o preço de monopólio.

    a) Calcule o preço de monopólio e o lucro de monopólio dividido.

    b) Determine o fator de desconto mínimo para que a colusão seja sustentável.

    c) Como o resultado se altera se há três firmas ao invés de duas?

!!! example "Exercício 5"
    No modelo de Stackelberg, a firma líder tem custo marginal \(c_L = 10\) e a seguidora tem \(c_S = 20\). A demanda é \(p = 100 - q_L - q_S\).

    a) Encontre a função de reação da seguidora.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio de Stackelberg.

    c) Compare com o equilíbrio de Cournot (simultâneo) com os mesmos custos assimétricos. Qual estrutura gera maior excedente total?
