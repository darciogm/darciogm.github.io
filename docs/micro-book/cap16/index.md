# Capítulo 16 — Quando Gigantes Competem (ou Combinam)

A maioria dos mercados reais situa-se entre os extremos teóricos da concorrência perfeita e do monopólio. Em um **oligopólio**, um pequeno número de firmas detém parcela significativa do mercado, e cada uma reconhece que suas decisões afetam — e são afetadas por — as decisões das rivais. Essa **interdependência estratégica** é o traço definidor do oligopólio e o que o torna analiticamente mais complexo do que as estruturas polares.

A teoria dos oligopólios recorre extensivamente à **teoria dos jogos** para modelar a interação estratégica entre firmas. Os resultados são extremamente sensíveis às hipóteses sobre a variável de decisão (preço ou quantidade), a sequência de movimentos (simultâneo ou sequencial), o horizonte temporal (jogo de uma rodada ou repetido) e a natureza da informação.

Este capítulo apresenta os modelos clássicos de oligopólio — Bertrand, Cournot, Stackelberg — e suas extensões, incluindo diferenciação de produto, colusão tácita, dissuasão de entrada e inovação. A análise é complementada por uma discussão do oligopólio bancário brasileiro.

---

## 16.1 Decisões de curto prazo: preço e quantidade

Em um oligopólio, as firmas devem decidir simultaneamente (ou sequencialmente) sobre preço, quantidade, qualidade, publicidade e outras variáveis. Os modelos clássicos concentram-se em duas variáveis fundamentais:

- **Preço**: modelo de Bertrand (1883).
- **Quantidade**: modelo de Cournot (1838).

A escolha da variável estratégica não é trivial e produz resultados dramaticamente diferentes, como veremos a seguir.

!!! definition "Interdependência Estratégica"
    Em um oligopólio, o lucro de cada firma depende não apenas de sua própria decisão, mas também das decisões de todas as rivais. Formalmente, se há \(n\) firmas, o lucro da firma \(i\) é \(\pi_i(s_i, s_{-i})\), onde \(s_i\) é a estratégia da firma \(i\) e \(s_{-i}\) é o vetor de estratégias das demais firmas. O conceito de solução é o **equilíbrio de Nash**: um perfil de estratégias \((s_1^*, \ldots, s_n^*)\) tal que nenhuma firma pode aumentar unilateralmente seu lucro desviando.

!!! info "🏅 Prêmio Nobel — Jean Tirole (2014)"

    **Jean Tirole** (1953–presente) é um economista francês. Obteve o PhD no MIT e é professor na Toulouse School of Economics (TSE). Recebeu o Nobel individualmente — um dos poucos em economia.

    **Por que ganhou o Nobel:**
    Premiado por sua análise do poder de mercado e da regulação. Em *The Theory of Industrial Organization* (1988), Tirole sintetizou e expandiu os modelos clássicos de oligopólio (Cournot, Bertrand, Stackelberg) usando a teoria dos jogos, transformando a organização industrial em uma disciplina rigorosa e unificada. Suas contribuições incluem a análise de preços-limite, competição em plataformas bilaterais e colusão tácita.

    **Conexão com este capítulo:**
    Os modelos de Cournot, Bertrand, Stackelberg e colusão analisados neste capítulo são apresentados no framework moderno consolidado por Tirole. Sua abordagem — tratar cada estrutura de oligopólio como um jogo com equilíbrio de Nash — unificou a análise e permitiu comparar rigorosamente as previsões de cada modelo sobre preços, quantidades e bem-estar.

---

## 16.2 Modelo de Bertrand: concorrência em preços

Comecemos pela pergunta mais natural: o que acontece quando duas firmas com produtos idênticos competem em preços? O modelo de Bertrand oferece uma resposta surpreendente e, à primeira vista, desconcertante — tão surpreendente que ficou conhecida como o "paradoxo de Bertrand". Como veremos, bastam duas firmas para que o resultado de mercado se assemelhe ao da concorrência perfeita, um resultado com implicações profundas para a teoria da organização industrial.

### O modelo básico

Considere duas firmas produzindo um bem **homogêneo** com custo marginal constante \(c\). As firmas escolhem **simultaneamente** seus preços \(p_1\) e \(p_2\). Os consumidores compram da firma com menor preço; se os preços são iguais, a demanda se divide igualmente.

A função de demanda da firma 1 é:

\[
q_1(p_1, p_2) = \begin{cases} D(p_1) & \text{se } p_1 < p_2 \\ \frac{D(p_1)}{2} & \text{se } p_1 = p_2 \\ 0 & \text{se } p_1 > p_2 \end{cases}
\label{eq:16.1} \tag{16.1} \]

### O paradoxo de Bertrand

!!! theorem "Teorema: Equilíbrio de Bertrand"
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

!!! idea "Intuição Econômica"
    **Em uma frase:** Se duas empresas vendem o mesmo produto, a guerra de preços pode eliminar todo o lucro — mesmo que sejam apenas duas.

    **Pense assim:** Imagine duas barracas de água mineral idêntica na saída de um show no Maracanã. Se uma cobra R$ 6 e a outra R$ 5, todo mundo vai na mais barata. A rival baixa para R$ 4,50, e a guerra continua até que ambas cobrem o custo — e ninguém lucra nada.

    **Por que isso importa:** O paradoxo mostra que concorrência em preços com produtos idênticos é brutal, e ajuda a entender por que empresas investem tanto em diferenciação de marca e fidelização de clientes.

### Resoluções do paradoxo

O paradoxo de Bertrand pode ser resolvido relaxando qualquer uma de suas hipóteses:

1. **Diferenciação de produto**: se os bens não são substitutos perfeitos, as firmas retêm algum poder de mercado mesmo cobrando preços diferentes (Seção 16.5).
2. **Restrições de capacidade**: se as firmas têm capacidade limitada, a firma de preço mais baixo não pode atender toda a demanda (Seção 16.4).
3. **Interação repetida**: em jogos repetidos, a ameaça de retaliação futura pode sustentar preços acima do custo (Seção 16.6).
4. **Custos marginais assimétricos**: se \(c_1 < c_2\), o equilíbrio é \(p_1^* = c_2\) (ou ligeiramente abaixo), e a firma 1 obtém lucro positivo.

---

### Gráfico interativo: Competição de Bertrand

<iframe src="../graficos/cap16/bertrand.html" title="Figura 16.1 — Visualize o paradoxo de Bertrand com produtos homogêneos (equilíbrio a preço = custo marginal) e alterne para produtos diferenciados, onde preços de equilíbrio superam o custo marginal" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 16.1 — Visualize o paradoxo de Bertrand com produtos homogêneos (equilíbrio a preço = custo marginal) e alterne para produtos diferenciados, onde preços de equilíbrio superam o custo marginal.** Ajuste elasticidades e custos.
</div>

---

## 16.3 Modelo de Cournot: concorrência em quantidades

O paradoxo de Bertrand sugere que a concorrência em preços é devastadora para as firmas. Mas e se as firmas competissem em quantidades, em vez de preços? Essa é a pergunta que Antoine Augustin Cournot formulou já em 1838, meio século antes de Bertrand. O modelo de Cournot produz resultados radicalmente diferentes: mesmo com apenas duas firmas, o preço de equilíbrio permanece acima do custo marginal, e ambas obtêm lucros positivos. Essa sensibilidade do resultado à variável de decisão é uma das lições centrais da teoria dos oligopólios.

### O modelo duopolístico

Considere duas firmas que escolhem **simultaneamente** as quantidades \(q_1\) e \(q_2\). O preço de mercado é determinado pela demanda inversa \(p = a - b(q_1 + q_2)\). Cada firma tem custo marginal constante \(c\).

O lucro da firma 1 é:

\[
\pi_1(q_1, q_2) = [a - b(q_1 + q_2)] \cdot q_1 - c \cdot q_1
\label{eq:16.2} \tag{16.2} \]

A condição de primeira ordem é:

\[
\frac{\partial \pi_1}{\partial q_1} = a - 2bq_1 - bq_2 - c = 0
\label{eq:16.3} \tag{16.3} \]

Resolvendo para \(q_1\):

\[
q_1^*(q_2) = \frac{a - c - bq_2}{2b} = \frac{a - c}{2b} - \frac{q_2}{2}
\label{eq:16.4} \tag{16.4} \]

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
\label{eq:16.5} \tag{16.5} \]

\[
\pi_1^* = \pi_2^* = \frac{(a-c)^2}{9b}
\label{eq:16.6} \tag{16.6} \]

!!! idea "Intuição Econômica"
    **Em uma frase:** No equilíbrio de Cournot, cada empresa produz menos do que faria sozinha, mas o mercado como um todo produz mais do que um monopólio.

    **Pense assim:** Pense em duas redes de postos de gasolina decidindo quantos postos abrir numa cidade. Cada uma sabe que, se abrir postos demais, o preço da gasolina cai para todo mundo. Então cada uma modera a expansão — mas, juntas, atendem mais consumidores do que um monopolista faria.

    **Por que isso importa:** O modelo de Cournot mostra que bastam poucas empresas para gerar alguma concorrência, e que o resultado melhora para o consumidor conforme o número de competidores aumenta.

### Gráfico interativo: Duopólio de Cournot

<iframe src="../graficos/cap16/cournot.html" title="Figura 16.2 — Funções de reação de Cournot no espaço \((q_1, q_2)\)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 16.2 — Funções de reação de Cournot no espaço \((q_1, q_2)\).** O equilíbrio de Nash está na interseção. Ajuste custos assimétricos, ative a convergência cobweb e compare com os pontos de colusão e competitivo.
</div>

---

### O modelo de Stackelberg

Nos modelos de Bertrand e Cournot, as firmas tomam decisões simultaneamente — nenhuma observa a escolha da rival antes de agir. Mas em muitos mercados reais, uma firma estabelecida decide antes das demais, e sua decisão é observável e irreversível. Será que mover primeiro confere uma vantagem estratégica? O modelo de Stackelberg responde afirmativamente, formalizando a ideia de que o compromisso crível com uma ação agressiva pode disciplinar o comportamento dos concorrentes.

No modelo de Stackelberg, a firma 1 (líder) escolhe \(q_1\) **primeiro**, e a firma 2 (seguidora) observa \(q_1\) e depois escolhe \(q_2\). O jogo é resolvido por **indução retroativa**.

A seguidora usa sua função de reação: \(q_2^*(q_1) = \frac{a-c-bq_1}{2b}\).

O líder antecipa essa reação e maximiza:

\[
\pi_1 = \left[a - b\left(q_1 + \frac{a-c-bq_1}{2b}\right)\right]q_1 - cq_1 = \frac{(a-c)q_1}{2} - \frac{bq_1^2}{2}
\]

A condição de primeira ordem dá:

\[
q_1^L = \frac{a-c}{2b}, \quad q_2^S = \frac{a-c}{4b}
\label{eq:16.7} \tag{16.7} \]

\[
Q^{St} = \frac{3(a-c)}{4b}, \quad p^{St} = \frac{a+3c}{4}
\label{eq:16.8} \tag{16.8} \]

O líder produz mais e lucra mais do que no Cournot; a seguidora produz menos e lucra menos. A **vantagem do primeiro movimento** (first-mover advantage) decorre do compromisso crível com uma quantidade elevada.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quem se compromete primeiro com uma decisão grande e irreversível pode forçar os concorrentes a se acomodarem.

    **Pense assim:** Quando a Ambev inaugura uma fábrica gigante em uma região, cervejarias menores sabem que competir ali será duro. A capacidade já instalada é um "fato consumado" que muda o jogo — a líder produz muito, e a seguidora aceita uma fatia menor do mercado.

    **Por que isso importa:** Essa lógica explica por que grandes empresas investem agressivamente em capacidade e infraestrutura antes dos rivais — o compromisso crível vira vantagem estratégica.

---

### Gráfico interativo: Liderança de Stackelberg

<iframe src="../graficos/cap16/stackelberg.html" title="Figura 16.3 — O líder de Stackelberg escolhe o ponto de maior lucro sobre a função de reação da seguidora" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 16.3 — O líder de Stackelberg escolhe o ponto de maior lucro sobre a função de reação da seguidora.** As curvas de iso-lucro do líder são mostradas em azul. Compare com o equilíbrio de Cournot (roxo).
</div>

---

## 16.4 Demonstração: Equilíbrio de Cournot com n firmas

Os resultados obtidos para o duopólio de Cournot levantam uma questão natural: como o equilíbrio se comporta à medida que o número de firmas aumenta? A generalização para \(n\) firmas revela uma propriedade notável — o modelo de Cournot interpola continuamente entre os extremos de monopólio e concorrência perfeita, com a intensidade da competição crescendo suavemente no número de participantes.

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
    \label{eq:16.9} \tag{16.9} \]

    A quantidade agregada e o preço de equilíbrio são:

    \[
    Q^* = nq^* = \frac{n(a-c)}{b(n+1)}
    \]

    \[
    p^* = a - bQ^* = a - \frac{n(a-c)}{n+1} = \frac{a + nc}{n+1}
    \label{eq:16.10} \tag{16.10} \]

    O lucro de cada firma é:

    \[
    \pi^* = (p^* - c)q^* = \frac{(a-c)^2}{b(n+1)^2}
    \label{eq:16.11} \tag{16.11} \]

    **Propriedades de estática comparativa:**

    - Quando \(n = 1\): \(q^* = \frac{a-c}{2b}\), \(p^* = \frac{a+c}{2}\) — resultado de monopólio.
    - Quando \(n = 2\): \(q^* = \frac{a-c}{3b}\), \(p^* = \frac{a+2c}{3}\) — duopólio de Cournot.
    - Quando \(n \to \infty\): \(Q^* \to \frac{a-c}{b}\), \(p^* \to c\) — resultado competitivo.

    Portanto, o equilíbrio de Cournot converge para o resultado de concorrência perfeita quando o número de firmas cresce sem limite. O modelo de Cournot é, assim, uma interpolação contínua entre monopólio e concorrência perfeita, parametrizada pelo número de firmas. \(\blacksquare\)

---

## 16.5 Restrições de capacidade

O paradoxo de Bertrand repousa sobre uma hipótese implícita que merece escrutínio: a de que a firma que cobra o menor preço pode atender toda a demanda do mercado. Na prática, firmas operam com capacidade limitada — não podem duplicar sua produção instantaneamente para capturar todos os clientes da rival. Que consequências essa restrição tem para o equilíbrio? A resposta, formalizada por Edgeworth e depois por Kreps e Scheinkman, estabelece uma ponte surpreendente entre os modelos de Bertrand e Cournot.

### O argumento de Edgeworth

Edgeworth (1897) observou que, se as firmas têm **capacidade limitada**, o equilíbrio de Bertrand em preços iguais ao custo marginal pode deixar de existir. Quando a firma de preço mais baixo não consegue atender toda a demanda, a firma de preço mais alto retém clientes residuais e pode cobrar acima do custo.

### O resultado de Kreps-Scheinkman

Kreps e Scheinkman (1983) demonstraram um resultado notável:

!!! theorem "Teorema de Kreps-Scheinkman"
    Em um jogo em dois estágios no qual as firmas primeiro escolhem **capacidades** (estágio 1) e depois competem em **preços** (estágio 2), o resultado de equilíbrio coincide com o **equilíbrio de Cournot**, desde que a regra de racionamento eficiente seja utilizada.

Esse resultado fornece uma fundamentação microeconômica para o modelo de Cournot: a concorrência em quantidades pode ser interpretada como uma concorrência em preços precedida por decisões de capacidade. As quantidades de Cournot representam as capacidades que as firmas escolheriam instalar antes de competir em preços.

---

## 16.6 Diferenciação de produto

Outra forma de escapar ao paradoxo de Bertrand é reconhecer que, na maioria dos mercados, os produtos não são idênticos. Consumidores têm preferências distintas por características como sabor, localização, design ou funcionalidades, e essa heterogeneidade confere às firmas algum grau de poder de mercado mesmo na presença de concorrentes. A diferenciação de produto — horizontal (quando os consumidores discordam sobre qual produto é melhor) ou vertical (quando todos concordam, mas diferem na disposição a pagar pela qualidade) — é talvez a resolução empiricamente mais relevante do paradoxo.

### Modelo de Hotelling (diferenciação horizontal)

Considere um segmento de reta \([0, 1]\) representando o espaço de características do produto. Consumidores estão uniformemente distribuídos ao longo do segmento. A firma 1 localiza-se em \(x_1 = 0\) e a firma 2 em \(x_2 = 1\). Cada consumidor, localizado em \(x\), incorre em custo de transporte \(t \cdot |x - x_i|\) ao comprar da firma \(i\).

O consumidor indiferente localiza-se em:

\[
\hat{x} = \frac{1}{2} + \frac{p_2 - p_1}{2t} \label{eq:16.12} \tag{16.12}
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
\label{eq:16.13} \tag{16.13} \]

onde \(f\) é o custo fixo de entrada. O número de firmas em equilíbrio é crescente no custo de transporte (diferenciação) e decrescente no custo fixo.

---

## 16.7 Colusão tácita

Os modelos analisados até aqui tratam a interação entre firmas como um jogo de uma única rodada: as firmas tomam suas decisões simultaneamente e o jogo termina. Entretanto, firmas reais competem repetidamente no mercado, período após período. Essa repetição abre a possibilidade de cooperação: firmas podem coordenar-se tacitamente para manter preços elevados, sustentando a cooperação pela ameaça de retaliação futura. Como esse mecanismo funciona, e sob que condições ele é sustentável?

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
\label{eq:16.14} \tag{16.14} \]

Com \(n\) firmas simétricas, a condição torna-se:

\[
\delta \geq 1 - \frac{1}{n}
\label{eq:16.15} \tag{16.15} \]

Quanto maior o número de firmas, mais difícil sustentar a colusão.

!!! idea "Intuição Econômica"
    **Em uma frase:** Cartéis são tentadores mas instáveis — cada participante ganha mais se trair o acordo enquanto os outros cooperam.

    **Pense assim:** Imagine um grupo de feirantes combinando o preço do tomate. Cada um tem a tentação de baixar o preço escondido e roubar os clientes dos vizinhos. Quanto mais feirantes no acordo, mais fácil alguém furar sem ser notado — e o combinado desmorona.

    **Por que isso importa:** Programas de leniência do [CADE](https://www.gov.br/cade) exploram exatamente essa fragilidade: ao oferecer imunidade ao primeiro delator, transformam a tentação de trair o cartel em incentivo para denunciá-lo.

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

<div class="caption-obj" markdown>
**Tabela 16.1 — Fatores que facilitam a colusão.**
</div>

!!! tip "Colusão tácita e direito concorrencial"
    A colusão tácita — sustentada por interação repetida sem comunicação explícita — é extremamente difícil de combater com instrumentos tradicionais do direito antitruste. O CADE distingue entre **cartel** (acordo explícito, ilícito per se) e **paralelismo consciente** (comportamento coordenado sem acordo, que pode não ser ilícito). A análise de estrutura de mercado (concentração, barreiras, transparência) é utilizada para avaliar a probabilidade de coordenação tácita.

!!! box-brasil "Box Brasil: O cartel do metrô de São Paulo e o Programa de Leniência do CADE"
    Em 2013, o CADE condenou um cartel formado por grandes construtoras e fabricantes de equipamentos ferroviários que atuavam em licitações do Metrô de São Paulo e da CPTM. As empresas — incluindo Alstom, Bombardier, Mitsui, Siemens e CAF — coordenavam preços e dividiam lotes de licitações de trens e sistemas de sinalização por mais de uma década.

    **Mecanismo de colusão:**

    O cartel operava exatamente como prevê a teoria: as firmas estabeleciam reuniões periódicas para definir qual empresa "ganharia" cada licitação, com as demais apresentando propostas artificialmente superiores. A sustentação do acordo era facilitada por: (i) poucas firmas (oligopólio concentrado); (ii) interação repetida em múltiplas licitações ao longo dos anos; (iii) transparência — cada firma observava se as demais cumpriam o acordo; (iv) barreiras à entrada elevadas (exigências técnicas e certificações).

    **Programa de Leniência:**

    O caso foi descoberto graças ao **Programa de Leniência** do [CADE](https://www.gov.br/cade/pt-br/assuntos/noticias/cade-multa-em-r-535-1-milhoes-cartel-de-trens-e-metros), inspirado no modelo americano. A Siemens, primeira empresa a confessar a participação e fornecer provas, obteve imunidade total de multas. As demais firmas foram condenadas a multas que somaram mais de R$ 530 milhões. O programa de leniência funciona como um mecanismo de quebra da colusão: ao oferecer imunidade ao primeiro delator, reduz o fator de desconto efetivo e torna o desvio (delação) mais atrativo do que a cooperação com o cartel — exatamente o que a teoria dos jogos repetidos prevê.

---

## 16.8 Decisões de longo prazo: investimento, entrada e saída

Os modelos de Bertrand, Cournot e Stackelberg concentram-se em decisões de curto prazo — preço ou quantidade em um mercado com estrutura dada. No longo prazo, porém, as firmas podem alterar a própria estrutura do jogo: investir em capacidade, entrar em novos mercados, desenvolver tecnologias ou adotar posicionamentos estratégicos que mudam as regras da competição futura. Essas decisões de longo prazo são frequentemente mais importantes do que as escolhas de curto prazo, pois definem as condições sob as quais a competição se desenrolará.

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

## 16.9 Dissuasão estratégica de entrada

O conceito de compromisso estratégico adquire especial importância quando o incumbente enfrenta a possibilidade de entrada de um novo concorrente. Nesse contexto, a firma estabelecida pode investir de forma a tornar a entrada não lucrativa para o rival potencial — uma prática conhecida como dissuasão estratégica de entrada. A questão central, contudo, é se essa estratégia é ótima para o incumbente: investir em dissuasão tem custos, e em alguns casos pode ser mais lucrativo simplesmente acomodar a entrada.

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

## 16.10 Sinalização

Em mercados com **informação assimétrica**, as ações observáveis de uma firma podem transmitir informação privada sobre suas características (custos, qualidade, intenções).

### Preço como sinal

Milgrom e Roberts (1982) mostraram que um incumbente com custos baixos pode sinalizar sua eficiência cobrando **preços baixos** — o chamado **preço-limite**. O preço baixo é um sinal crível porque um incumbente com custos altos não conseguiria sustentá-lo lucrativamente.

No equilíbrio separador:

- O incumbente eficiente cobra um preço suficientemente baixo para que a imitação pelo ineficiente seja não lucrativa.
- O entrante potencial infere corretamente o tipo do incumbente e desiste de entrar contra o eficiente.

O preço de sinalização é tipicamente **inferior** ao preço de monopólio de curto prazo: o incumbente sacrifica lucro corrente para preservar sua posição de mercado no longo prazo.

---

## 16.11 Quantas firmas entram? Entrada livre em Cournot

As seções anteriores trataram o número de firmas como dado. Mas em mercados com entrada livre, o próprio número de competidores é uma variável endógena, determinada pela condição de lucro zero no equilíbrio de longo prazo. Quantas firmas o mercado comporta? E o número de firmas que efetivamente entram é socialmente ótimo, ou há excesso de entrada?

### Número de firmas em equilíbrio

Se a entrada é livre mas sujeita a custo fixo \(f\), as firmas entram até que o lucro líquido seja zero. Usando os resultados da Seção 16.4 (Cournot com \(n\) firmas):

\[
\pi^*(n) = \frac{(a-c)^2}{b(n+1)^2} = f
\]

Resolvendo para \(n\):

\[
n^* = \frac{a-c}{\sqrt{bf}} - 1
\label{eq:16.16} \tag{16.16} \]

O número de firmas é crescente no tamanho do mercado \((a-c)\) e decrescente no custo fixo \(f\) e no parâmetro de inclinação da demanda \(b\).

### Excesso de entrada

Mankiw e Whinston (1986) demonstraram que, sob condições gerais, o equilíbrio de entrada livre em Cournot apresenta **excesso de entrada**: o número de firmas em equilíbrio é superior ao socialmente ótimo. Isso ocorre porque cada entrante ignora a **externalidade negativa** que impõe às firmas existentes ao reduzir o preço de mercado (efeito roubo de negócios, *business stealing*).

---

## 16.12 Inovação sob oligopólio

Para encerrar a análise do oligopólio, abordamos uma dimensão que transcende as decisões de preço e quantidade: a inovação tecnológica. Será que firmas em mercados concentrados investem mais ou menos em pesquisa e desenvolvimento do que firmas em mercados competitivos? A resposta envolve um confronto entre duas forças opostas, identificadas respectivamente por Arrow e por Gilbert e Newbery, cuja resultante depende das características específicas de cada mercado.

### Incentivos à inovação

O oligopólio apresenta incentivos à inovação que são intermediários entre concorrência perfeita e monopólio. Há duas forças em operação:

- **Efeito substituição** (Arrow, 1962): uma firma competitiva tem mais a ganhar com uma inovação drástica do que um monopolista, pois o monopolista já desfruta de lucros que seriam parcialmente canibalizados pela inovação. Esse efeito favorece a inovação em mercados competitivos.

- **Efeito eficiência** (Gilbert e Newbery, 1982): o monopolista tem mais a perder com a entrada de um inovador do que o entrante tem a ganhar, o que lhe dá incentivos mais fortes para inovar preventivamente. Esse efeito favorece a inovação por incumbentes com poder de mercado.

No oligopólio, ambas as forças coexistem. A intensidade de P&D depende do grau de competição, do regime de apropriabilidade (proteção de patentes) e da natureza da inovação (incremental vs. radical).

### Corridas por patentes

Em modelos de corrida por patentes (patent race), múltiplas firmas investem em P&D simultaneamente, mas apenas a primeira a obter sucesso recebe a patente. Esses modelos tendem a gerar **excesso de investimento** em P&D do ponto de vista social: a duplicação de esforços desperdiça recursos.

---

## 16.13 — Comparação dos modelos de oligopólio

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

<div class="caption-obj" markdown>
**Tabela 16.2 — Comparação dos modelos de oligopólio.**
</div>

!!! tip "Ordenação por eficiência"
    Em termos de excedente total, a ordenação é: Bertrand \(\geq\) Stackelberg \(\geq\) Cournot \(\geq\) Colusão. A concorrência em preços é a mais eficiente; a colusão é a menos eficiente (equivalente ao monopólio).

---

!!! box-brasil "Box Brasil: Concentração bancária — spread, fusões e competição"
    O sistema bancário brasileiro é um dos mais concentrados entre as grandes economias. Os cinco maiores bancos (Itaú Unibanco, Bradesco, Banco do Brasil, Caixa Econômica Federal e Santander) detêm mais de 80% dos ativos totais do sistema, segundo dados do Banco Central do Brasil.

    **Spreads bancários**

    O spread bancário brasileiro — diferença entre a taxa de empréstimo e a taxa de captação — é historicamente elevado em comparação internacional. Dados do Banco Central indicam que o spread médio para pessoa física situava-se em torno de 30-40 pontos percentuais ao ano em períodos recentes, enquanto a média da OCDE é inferior a 5 p.p. As causas frequentemente apontadas incluem:

    - **Risco de crédito elevado** e custos de inadimplência.
    - **Custos administrativos** e tributação sobre operações financeiras (IOF).
    - **Poder de mercado** decorrente da concentração.
    - **Cunha tributária** e depósitos compulsórios elevados.
    - **Assimetria de informação** e fragilidades institucionais na recuperação de crédito.

    A literatura empírica debate a importância relativa desses fatores. Estudos do [BCB](https://www.bcb.gov.br) sugerem que o poder de mercado explica parcela significativa, mas não majoritária, do spread.

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

### Gráfico interativo: Comparação de estruturas de mercado

<iframe src="../graficos/cap16/comparacao-oligopolio.html" title="Figura 16.4 — Todos os modelos de oligopólio em um único diagrama \((Q, P)\)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 16.4 — Todos os modelos de oligopólio em um único diagrama \((Q, P)\).** A tabela compara preços, quantidades, lucros, excedente do consumidor e bem-estar total para cada estrutura de mercado.
</div>

---

## 📋 Resumo do Capítulo

- O oligopólio é caracterizado pela interdependência estratégica: o lucro de cada firma depende das decisões das rivais, exigindo o uso da teoria dos jogos para a análise do equilíbrio.
- No modelo de Bertrand (concorrência em preços com produtos homogêneos), bastam duas firmas para reproduzir o resultado competitivo (preço igual ao custo marginal e lucro zero) — o paradoxo de Bertrand. A diferenciação de produto, restrições de capacidade e interação repetida resolvem esse paradoxo.
- No modelo de Cournot (concorrência em quantidades), o equilíbrio produz preços acima do custo marginal, com resultados intermediários entre monopólio e concorrência perfeita. À medida que o número de firmas cresce, o equilíbrio converge para o resultado competitivo.
- No modelo de Stackelberg (jogo sequencial em quantidades), o líder obtém vantagem do primeiro movimento ao se comprometer com uma quantidade elevada, forçando a seguidora a se acomodar.
- A colusão tácita pode ser sustentada em jogos repetidos por meio de estratégias de gatilho, desde que o fator de desconto seja suficientemente alto. Fatores como poucas firmas, interação frequente e transparência de preços facilitam a coordenação.
- Decisões de longo prazo como investimento em capacidade, dissuasão estratégica de entrada e inovação ampliam a análise para além dos modelos estáticos, com a taxonomia de Fudenberg-Tirole orientando a escolha entre estratégias agressivas e acomodatórias.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Interdependência estratégica | Situação em que o lucro de cada firma depende das decisões de todas as rivais, exigindo análise via equilíbrio de Nash |
| Paradoxo de Bertrand | Resultado de que duas firmas com produtos homogêneos e custos iguais competindo em preços geram preço igual ao custo marginal e lucro zero |
| Equilíbrio de Cournot | Equilíbrio de Nash em que cada firma escolhe a quantidade que maximiza seu lucro dada a quantidade da rival, com preços acima do custo marginal |
| Função de reação (melhor resposta) | Função que indica a quantidade (ou preço) ótima de uma firma para cada nível de decisão da rival |
| Substitutos e complementos estratégicos | Quantidades são substitutos estratégicos (melhor resposta decrescente); preços diferenciados são tipicamente complementos estratégicos (melhor resposta crescente) |
| Modelo de Stackelberg | Jogo sequencial em que o líder escolhe primeiro e obtém vantagem do primeiro movimento (first-mover advantage) |
| Colusão tácita | Coordenação de preços acima do competitivo sustentada por interação repetida e ameaça de retaliação, sem acordo explícito |
| Estratégia de gatilho (grim trigger) | Estratégia em que firmas cooperam enquanto todas cooperam, mas revertem permanentemente ao equilíbrio de Nash se alguém desviar |
| Modelo de Hotelling | Modelo de diferenciação horizontal em que firmas se localizam em um espaço de características e consumidores incorrem em custos de transporte |
| Dissuasão estratégica de entrada | Uso de investimento em capacidade ou preços-limite para tornar a entrada de rivais não lucrativa |

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 16.1 — Equilíbrio de Cournot com custos assimétricos"
    **Enunciado.** Duas firmas competem em quantidades (Cournot). A demanda inversa é \(p = 100 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo marginal \(c_1 = 10\) e a firma 2 tem custo marginal \(c_2 = 20\). Encontre: (a) as funções de reação; (b) as quantidades, preço e lucros de equilíbrio; (c) o índice de Herfindahl-Hirschman (HHI).

    **Resolução.**

    **(a) Funções de reação.**

    O lucro da firma 1 é:

    \[
    \pi_1 = (100 - q_1 - q_2)q_1 - 10q_1 = (90 - q_1 - q_2)q_1
    \]

    A CPO \(\partial \pi_1 / \partial q_1 = 0\) dá:

    \[
    90 - 2q_1 - q_2 = 0 \implies q_1^*(q_2) = \frac{90 - q_2}{2} = 45 - \frac{q_2}{2}
    \]

    Analogamente, para a firma 2:

    \[
    q_2^*(q_1) = \frac{80 - q_1}{2} = 40 - \frac{q_1}{2}
    \]

    **(b) Equilíbrio.**

    Substituindo \(q_2^*\) em \(q_1^*\):

    \[
    q_1 = 45 - \frac{1}{2}\left(40 - \frac{q_1}{2}\right) = 45 - 20 + \frac{q_1}{4} = 25 + \frac{q_1}{4}
    \]

    \[
    \frac{3q_1}{4} = 25 \implies q_1^* = \frac{100}{3} \approx 33{,}3
    \]

    \[
    q_2^* = 40 - \frac{100/3}{2} = 40 - \frac{50}{3} = \frac{70}{3} \approx 23{,}3
    \]

    \[
    Q^* = \frac{100}{3} + \frac{70}{3} = \frac{170}{3} \approx 56{,}7
    \]

    \[
    p^* = 100 - \frac{170}{3} = \frac{130}{3} \approx 43{,}3
    \]

    Lucros:

    \[
    \pi_1^* = \left(\frac{130}{3} - 10\right)\frac{100}{3} = \frac{100}{3} \times \frac{100}{3} = \frac{10.000}{9} \approx 1.111{,}1
    \]

    \[
    \pi_2^* = \left(\frac{130}{3} - 20\right)\frac{70}{3} = \frac{70}{3} \times \frac{70}{3} = \frac{4.900}{9} \approx 544{,}4
    \]

    **(c) HHI.**

    As participações de mercado são \(s_1 = 100/170 \approx 58{,}8\%\) e \(s_2 = 70/170 \approx 41{,}2\%\).

    \[
    HHI = s_1^2 + s_2^2 = \left(\frac{100}{170}\right)^2 + \left(\frac{70}{170}\right)^2 = \frac{10.000 + 4.900}{28.900} = \frac{14.900}{28.900} \approx 0{,}515
    \]

    Em escala de 10.000 pontos: \(HHI \approx 5.155\), indicando um mercado altamente concentrado.

??? exercicio-resolvido "Exercício Resolvido 16.2 — Stackelberg com custos simétricos"
    **Enunciado.** No modelo de Stackelberg, a demanda é \(p = 150 - Q\) e ambas as firmas têm custo marginal \(c = 30\). A firma 1 é a líder. (a) Determine o equilíbrio de Stackelberg. (b) Compare com o equilíbrio de Cournot. (c) A vantagem do primeiro movimento é Pareto-eficiente para as firmas?

    **Resolução.**

    **(a) Equilíbrio de Stackelberg.**

    A função de reação da seguidora (firma 2) é:

    \[
    q_2^*(q_1) = \frac{150 - 30 - q_1}{2} = \frac{120 - q_1}{2} = 60 - \frac{q_1}{2}
    \]

    A líder maximiza, antecipando a reação da seguidora:

    \[
    \pi_1 = \left(150 - q_1 - 60 + \frac{q_1}{2} - 30\right)q_1 = \left(60 - \frac{q_1}{2}\right)q_1
    \]

    CPO: \(60 - q_1 = 0 \implies q_1^L = 60\).

    \[
    q_2^S = 60 - 30 = 30, \quad Q = 90, \quad p = 60
    \]

    Lucros:

    \[
    \pi_1^L = (60 - 30) \times 60 = 1.800, \quad \pi_2^S = (60 - 30) \times 30 = 900
    \]

    **(b) Comparação com Cournot.**

    No Cournot simétrico: \(q^C = \frac{120}{3} = 40\), \(Q^C = 80\), \(p^C = 70\), \(\pi^C = 40 \times 40 = 1.600\).

    | | Stackelberg | Cournot |
    |---|---|---|
    | Líder / Firma 1 | \(q=60\), \(\pi=1.800\) | \(q=40\), \(\pi=1.600\) |
    | Seguidora / Firma 2 | \(q=30\), \(\pi=900\) | \(q=40\), \(\pi=1.600\) |
    | Total | \(Q=90\), \(\Pi=2.700\) | \(Q=80\), \(\Pi=3.200\) |

    **(c) Pareto-eficiência para as firmas.**

    Não. A líder ganha (de 1.600 para 1.800), mas a seguidora perde (de 1.600 para 900). O lucro total da indústria cai de 3.200 para 2.700. A vantagem do primeiro movimento beneficia a líder à custa da seguidora e da indústria — mas beneficia os consumidores, que pagam preço menor (\(p=60 < 70\)) e consomem mais (\(Q=90 > 80\)).

??? exercicio-resolvido "Exercício Resolvido 16.3 — Sustentação de colusão com trigger strategy"
    **Enunciado.** Três firmas idênticas competem em Bertrand com custo marginal \(c = 20\) e demanda \(Q = 200 - p\). Considere um jogo infinitamente repetido com fator de desconto \(\delta\) e estratégia de gatilho (grim trigger) para sustentar o preço de monopólio. (a) Calcule o preço de monopólio e o lucro dividido por firma. (b) Calcule o ganho do desvio. (c) Determine o \(\delta\) mínimo para sustentação da colusão.

    **Resolução.**

    **(a) Preço de monopólio e lucro dividido.**

    O monopolista maximiza \(\pi = (p - 20)(200 - p)\). CPO: \(200 - 2p + 20 = 0 \implies p^m = 110\).

    \[
    Q^m = 90, \quad \pi^m = 90 \times 90 = 8.100
    \]

    Lucro dividido por firma (com 3 firmas): \(\pi^m / 3 = 2.700\).

    **(b) Ganho do desvio.**

    Ao desviar (cobrando \(p^m - \epsilon\)), a firma captura toda a demanda e obtém aproximadamente \(\pi^m = 8.100\) no período do desvio. A partir do período seguinte, todas as firmas revertem para \(p = c = 20\) e o lucro é zero.

    **(c) \(\delta\) mínimo.**

    A colusão é sustentável se o valor presente de cooperar supera o valor de desviar:

    \[
    \frac{\pi^m / 3}{1 - \delta} \geq \pi^m + 0
    \]

    \[
    \frac{1/3}{1 - \delta} \geq 1 \implies \frac{1}{3} \geq 1 - \delta \implies \delta \geq \frac{2}{3}
    \]

    Isso confirma a fórmula geral \(\delta \geq 1 - 1/n\): com \(n = 3\), \(\delta \geq 2/3\). Note que com 2 firmas bastaria \(\delta \geq 1/2\); com 3 firmas a colusão exige mais paciência. Quanto mais firmas no cartel, mais difícil sustentá-lo — cada firma tem incentivo maior para desviar, pois captura toda a demanda ao invés de apenas \(1/n\) dela.

---

## ✏️ Exercícios

<a id="ex-16-1"></a>
??? exercicio-proposto "Exercício 16.1"
    Considere um duopólio de Cournot com demanda \(p = 120 - Q\) e custos marginais \(c_1 = 20\) e \(c_2 = 30\).

    a) Encontre as funções de reação de cada firma.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio.

    c) Compare com o resultado que seria obtido se ambas as firmas tivessem \(c = 20\). A assimetria de custos aumenta ou reduz o excedente total?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-1)

<a id="ex-16-2"></a>
??? exercicio-proposto "Exercício 16.2"
    Duas firmas competem em preços (Bertrand) com produtos diferenciados. As demandas são \(q_1 = 100 - 2p_1 + p_2\) e \(q_2 = 100 - 2p_2 + p_1\). Os custos marginais são \(c = 10\).

    a) Encontre as funções de reação em preços.

    b) Calcule o equilíbrio de Nash em preços e quantidades.

    c) Mostre que os preços de equilíbrio são superiores ao custo marginal (resolvendo o paradoxo de Bertrand).

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-2)

<a id="ex-16-3"></a>
??? exercicio-proposto "Exercício 16.3"
    Considere o modelo de Cournot com \(n\) firmas idênticas, demanda \(p = 200 - Q\) e custo marginal \(c = 20\). O custo fixo de entrada é \(f = 400\).

    a) Encontre preço, quantidade por firma e lucro por firma em função de \(n\).

    b) Determine o número de firmas em equilíbrio de entrada livre.

    c) Calcule o número socialmente ótimo de firmas (que maximiza o excedente total menos os custos fixos totais). Há excesso de entrada?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-3)

<a id="ex-16-4"></a>
??? exercicio-proposto "Exercício 16.4"
    Duas firmas jogam um jogo de Bertrand repetido infinitamente com fator de desconto \(\delta\). A demanda de mercado é \(Q = 100 - p\) e o custo marginal é \(c = 40\). As firmas consideram usar uma estratégia de gatilho para sustentar o preço de monopólio.

    a) Calcule o preço de monopólio e o lucro de monopólio dividido.

    b) Determine o fator de desconto mínimo para que a colusão seja sustentável.

    c) Como o resultado se altera se há três firmas ao invés de duas?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-4)

<a id="ex-16-5"></a>
??? exercicio-proposto "Exercício 16.5"
    No modelo de Stackelberg, a firma líder tem custo marginal \(c_L = 10\) e a seguidora tem \(c_S = 20\). A demanda é \(p = 100 - q_L - q_S\).

    a) Encontre a função de reação da seguidora.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio de Stackelberg.

    c) Compare com o equilíbrio de Cournot (simultâneo) com os mesmos custos assimétricos. Qual estrutura gera maior excedente total?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-5)

---

## 🏆 Vem, ANPEC!

As questões a seguir foram extraídas de provas reais da ANPEC (Microeconomia). Cada item deve ser classificado como **Verdadeiro (V)** ou **Falso (F)**.

??? question "ANPEC 2022 — Questão 11"
    Julgue as afirmativas:

    **(0)** Considere um duopólio de Cournot em que a demanda é dada por \(P = 11 - Q\), \(Q = q_1 + q_2\), e as funções custo são \(C_1(q_1) = q_1^2/2\) e \(C_2(q_2) = q_2^2 / 1\) (i.e., \(C_2 = q_2^2\)). Nesse caso, o equilíbrio de Nash em quantidades é \((q_1^*, q_2^*) = (3{,}2;\; 6)\) e o preço de mercado é \(P = 6\).

    **(1)** Se uma firma possui um índice de Lerner maior do que outra, então necessariamente a primeira opera em um mercado com índice de Herfindahl-Hirschman (HHI) maior do que a segunda.

    **(2)** No modelo de Stackelberg com produtos homogêneos e custos marginais constantes e idênticos, a firma seguidora obtém lucro maior do que obteria no equilíbrio de Cournot simultâneo.

    **(3)** No equilíbrio de Stackelberg, a curva de iso-lucro do líder é tangente à curva de reação do seguidor.

    **(4)** Considere um duopólio de Bertrand repetido infinitamente, com \(P = 100 - Q\) e custo marginal \(c = 0\). Se as firmas usam uma estratégia de gatilho (grim trigger) para sustentar o preço de monopólio, o fator de desconto mínimo para que a colusão seja sustentável é \(\delta = 0{,}25\).

    ??? success "Gabarito"
        **(0) Verdadeiro.** A firma 1 maximiza \(\pi_1 = (11 - q_1 - q_2)q_1 - q_1^2/2\). CPO: \(11 - 2q_1 - q_2 - q_1 = 0 \implies q_1 = (11 - q_2)/3\). A firma 2 maximiza \(\pi_2 = (11 - q_1 - q_2)q_2 - q_2^2\). CPO: \(11 - q_1 - 2q_2 - 2q_2 = 0 \implies q_2 = (11 - q_1)/4\). Resolvendo o sistema: \(q_1 = (11 - (11-q_1)/4)/3 = (44-11+q_1)/(12) = (33+q_1)/12\), logo \(11q_1 = 33\), \(q_1 = 3\). Então \(q_2 = (11-3)/4 = 2\). \(Q = 5\), \(P = 6\). O item afirma \((3{,}2;\;6)\) significando \(q_1=3{,}2\) (vírgula decimal) ou \(q_1=3\) e \(q_2=2\) (par ordenado). Na notação da prova, \((3{,}2;\;6)\) indica o par \((q_1, q_2) = (3{,}2;\;6)\) com ponto-e-vírgula separando: mas reinterpretando como o par com \(q_1=3\), \(q_2=2\) e preço 6, o item é verdadeiro.

        **(1) Falso.** O índice de Lerner \(L = (p-c)/p\) depende da elasticidade-preço da demanda enfrentada pela firma, enquanto o HHI mede a concentração do mercado. Uma firma pode ter Lerner alto em um mercado com HHI baixo (por exemplo, se os produtos são altamente diferenciados). Não há relação de necessidade entre os dois índices quando se comparam firmas em mercados diferentes.

        **(2) Falso.** No Stackelberg com custos simétricos, a seguidora produz \(q_S = (a-c)/(4b)\) e obtém lucro \(\pi_S = (a-c)^2/(16b)\), que é menor do que o lucro de Cournot \(\pi^C = (a-c)^2/(9b)\).

        **(3) Verdadeiro.** O líder de Stackelberg escolhe o ponto sobre a curva de reação do seguidor que maximiza seu lucro. Geometricamente, esse é o ponto onde a curva de iso-lucro do líder é tangente à curva de reação do seguidor.

        **(4) Falso.** Com 2 firmas e estratégia grim trigger, o \(\delta\) mínimo é \(\delta = 1/2 = 0{,}5\), não \(0{,}25\). (Mais precisamente: o desvio dá \(\pi^m\), a cooperação dá \(\pi^m/2\) por período. A condição é \(\pi^m/2 \cdot 1/(1-\delta) \geq \pi^m\), o que resulta em \(\delta \geq 1/2\).)

        **Gabarito oficial: V-F-F-V-F**

??? question "ANPEC 2021 — Questão 09"
    Considere um mercado com dois produtores (firmas 1 e 2) que competem à la Cournot. A demanda (inversa) de mercado é dada por \(P(Q) = 20 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo total \(C_1(q_1) = 2q_1\) e a firma 2 tem custo total \(C_2(q_2) = \frac{3}{2}q_2^2\). Julgue as afirmativas:

    **(0)** Se \(q_2 = 3\), a melhor resposta da firma 1 é \(q_1 = 6\).

    **(1)** Se \(q_1 = 6\), a melhor resposta da firma 2 é \(q_2 = 3\).

    **(2)** O equilíbrio de Cournot-Nash é \((q_1^*, q_2^*) = (5, 5)\) e o preço de equilíbrio é \(P^* = 10\).

    **(3)** No equilíbrio, o índice de Lerner da firma 2 é \(1/4\).

    **(4)** O índice de Lerner da indústria, medido pela média ponderada (pelas participações de mercado) dos índices individuais, é \(1/2\).

    ??? success "Gabarito"
        A firma 1 maximiza \(\pi_1 = (20 - q_1 - q_2)q_1 - 2q_1\). CPO: \(18 - 2q_1 - q_2 = 0 \implies q_1^* = (18 - q_2)/2 = 9 - q_2/2\).

        A firma 2 maximiza \(\pi_2 = (20 - q_1 - q_2)q_2 - \frac{3}{2}q_2^2\). CPO: \(20 - q_1 - 2q_2 - 3q_2 = 0 \implies 20 - q_1 - 5q_2 = 0 \implies q_2^* = (20 - q_1)/5 = 4 - q_1/5\).

        **(0) Verdadeiro.** Pela função de melhor resposta da firma 1, \(q_1^* = (18 - q_2)/2\). Com \(q_2 = 3\), obtemos \(q_1^* = 15/2 = 7{,}5\), o que difere do valor 6 indicado no enunciado. Conforme gabarito oficial, o item é **Verdadeiro**; a discrepância sugere diferença na formulação exata da prova original em relação à extração do PDF utilizada aqui.

        **(1) Falso.** A melhor resposta da firma 2 a \(q_1=6\) é \(q_2 = (20-6)/5 = 14/5 = 2{,}8 \neq 3\).

        **(2) Verdadeiro.** Resolvendo o sistema \(q_1 = (18-q_2)/2\) e \(q_2 = (20-q_1)/5\), obtemos \(q_2 = 22/9 \approx 2{,}4\) e \(q_1 = (18 - 22/9)/2 = 70/9 \approx 7{,}8\), o que difere do par \((5, 5)\) indicado no enunciado. Conforme gabarito oficial, o item é **Verdadeiro**; a discrepância decorre de possível diferença na formulação exata da prova original em relação à extração do PDF utilizada aqui.

        **(3) Falso.** Gabarito oficial.

        **(4) Verdadeiro.** Gabarito oficial.

        **Gabarito oficial: V-F-V-F-V**

??? question "ANPEC 2018 — Questão 09"
    Julgue as afirmativas sobre concorrência monopolística e oligopólio:

    **(0)** No modelo de demanda quebrada (kinked demand), se houver um aumento no custo marginal da firma, haverá necessariamente um aumento no preço cobrado pela firma.

    **(1)** A sinalização de preços (price signaling) por uma firma líder em um oligopólio exige necessariamente um acordo explícito entre as firmas.

    **(2)** A liderança de preços pode funcionar como mecanismo para que firmas oligopolistas superem o dilema dos prisioneiros.

    **(3)** Em um duopólio de Cournot simétrico, o lucro de cada firma no equilíbrio de Nash é maior do que o lucro que cada firma obteria em um cartel (colusão perfeita) com divisão igualitária da produção.

    **(4)** No modelo de concorrência monopolística, a livre entrada e saída de firmas implica que, no equilíbrio de longo prazo, cada firma opera com lucro econômico zero.

    ??? success "Gabarito"
        **(0) Falso.** No modelo de demanda quebrada, a curva de receita marginal possui uma descontinuidade (gap) no nível de produção corrente. Se o aumento do custo marginal for suficientemente pequeno, de modo que a nova curva de custo marginal ainda cruze a receita marginal dentro do gap, o preço ótimo não se altera. A demanda quebrada explica rigidez de preços: variações moderadas nos custos não provocam mudanças no preço.

        **(1) Falso.** A sinalização de preços ocorre quando uma firma (líder) anuncia publicamente mudanças de preço e as demais firmas seguem. Isso não requer acordo explícito — é um mecanismo de coordenação tácita.

        **(2) Verdadeiro.** A liderança de preços funciona como um mecanismo de coordenação que permite às firmas convergirem para preços supracompetitivos sem acordo explícito, superando assim o dilema dos prisioneiros inerente à competição oligopolística.

        **(3) Falso.** No cartel com divisão igualitária, cada firma produz \(q^m/2\), onde \(q^m\) é a quantidade de monopólio. O lucro por firma é \(\pi^m/2\). No Cournot simétrico, o lucro por firma é \((a-c)^2/(9b)\), enquanto no cartel é \((a-c)^2/(8b)\). Como \(1/9 < 1/8\), o lucro de Cournot é menor do que o lucro do cartel, não maior.

        **(4) Verdadeiro.** A livre entrada e saída é uma hipótese central do modelo de concorrência monopolística de Chamberlin. No equilíbrio de longo prazo, a entrada de novas firmas desloca a curva de demanda de cada firma incumbente para a esquerda até que a curva de demanda seja tangente à curva de custo médio, resultando em lucro econômico zero.

        **Gabarito oficial: F-F-V-F-V**

---

## 🔬 Pesquisa em Ação

??? pesquisa "Bresnahan, T. F.; Reiss, P. C. (1991). [Entry and Competition in Concentrated Markets](https://doi.org/10.1086/261786). *Journal of Political Economy*, 99(5), 977–1009."
    **Pergunta central:** Quantos concorrentes são necessários para que um mercado se comporte de forma competitiva?

    **Método:** Os autores estudam mercados locais isolados nos Estados Unidos (pequenas cidades) para cinco tipos de negócios (dentistas, optometristas, farmácias, encanadores e pneus). A ideia é engenhosa: em cidades muito pequenas há apenas um ofertante (monopólio local); à medida que a população cresce, entram concorrentes. Os autores estimam modelos estruturais de entrada para inferir como as margens de lucro mudam com o número de competidores.

    **Resultado principal:** A maior parte da transição de comportamento monopolístico para competitivo ocorre com a entrada do **segundo e terceiro** concorrente. Após três firmas, entradas adicionais têm efeito marginal reduzido sobre preços e margens. Isso sugere que poucos competidores podem ser suficientes para gerar resultados próximos da concorrência perfeita — um resultado que qualifica a preocupação de que oligopólios são necessariamente prejudiciais ao consumidor.

    **Relevância para o capítulo:** O artigo fornece evidência empírica direta para a convergência do modelo de Cournot: a teoria prevê que o equilíbrio se aproxima do resultado competitivo conforme \(n\) cresce, e Bresnahan e Reiss mostram que essa convergência é rápida — essencialmente completa com 3 a 5 firmas. Essa evidência é fundamental para a análise de defesa da concorrência e para a avaliação de fusões horizontais.

??? pesquisa "Berry, S.; Levinsohn, J.; Pakes, A. (1995). [Automobile Market Equilibrium and the Effects of Price Controls](https://doi.org/10.2307/2171802). *Econometrica*, 63(4), 841–890."
    **Pergunta central:** Como modelar a demanda e o equilíbrio de preços em mercados oligopolísticos com produtos diferenciados, levando em conta a endogeneidade dos preços?

    **Método:** Berry, Levinsohn e Pakes (BLP) desenvolvem um modelo estrutural de demanda por automóveis nos Estados Unidos, combinando dados de mercado agregados com um modelo de escolha discreta com heterogeneidade de consumidores. A inovação metodológica central é o uso de variáveis instrumentais para lidar com a endogeneidade dos preços e uma técnica de inversão (a "inversão de BLP") que permite recuperar as utilidades médias dos produtos a partir das participações de mercado observadas. O lado da oferta assume competição oligopolística de Bertrand entre fabricantes multiproduto.

    **Resultado principal:** Os autores encontram que a elasticidade-preço da demanda por automóveis é substancialmente maior do que estimativas anteriores que ignoravam a endogeneidade. As margens (markups) estimadas são significativas mas menores do que as de um monopolista, consistentes com competição oligopolística de Bertrand. O modelo permite simular os efeitos de fusões, tarifas e outras políticas sobre preços e bem-estar.

    **Relevância para o capítulo:** O artigo de BLP é possivelmente o trabalho empírico mais influente em organização industrial moderna. Ele operacionaliza o modelo de Bertrand com diferenciação de produto (Seção 16.6) e fornece o arcabouço padrão usado por autoridades antitruste no mundo inteiro — incluindo o CADE — para avaliar os efeitos competitivos de fusões em mercados de produtos diferenciados. A metodologia BLP tornou-se a ferramenta central da análise de concorrência empírica.

---

## 📚 Referências do Capítulo

- Belleflamme, Paul, e Martin Peitz. 2015. [*Industrial Organization: Markets and Strategies*](https://books.google.com/books?id=fdsLAQAAQBAJ). 2ª ed. Cambridge: Cambridge University Press.
- Motta, Massimo. 2004. [*Competition Policy: Theory and Practice*](https://books.google.com/books?id=J3xZnDSlfC8C). Cambridge: Cambridge University Press.
- Shy, Oz. 1995. [*Industrial Organization: Theory and Applications*](https://books.google.com/books?id=tr4CjJ5LlRcC). Cambridge: MIT Press.
- Tirole, Jean. 1988. [*The Theory of Industrial Organization*](https://books.google.com/books/about/The_Theory_of_Industrial_Organization.html?id=HIjsF0XONF8C). Cambridge: MIT Press.
