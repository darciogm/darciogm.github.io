# 16a.1–16a.4 Bertrand, Cournot e Stackelberg

## 16a.1 Preço ou Quantidade — Eis a Questão: Decisões de Curto Prazo {#16a1}

Em um oligopólio, as firmas devem decidir simultaneamente (ou sequencialmente) sobre preço, quantidade, qualidade, publicidade e outras variáveis. Os modelos clássicos concentram-se em duas variáveis fundamentais:

- **Preço**: modelo de Bertrand (1883).
- **Quantidade**: modelo de Cournot (1838).

A escolha da variável estratégica não é trivial e produz resultados dramaticamente diferentes, como veremos a seguir.

!!! definition "Interdependência Estratégica"
    Em um oligopólio, o lucro de cada firma depende não apenas de sua própria decisão, mas também das decisões de todas as rivais. Formalmente, se há \(n\) firmas, o lucro da firma \(i\) é \(\pi_i(s_i, s_{-i})\), onde \(s_i\) é a estratégia da firma \(i\) e \(s_{-i}\) é o vetor de estratégias das demais firmas. O conceito de solução é o **equilíbrio de Nash**: um perfil de estratégias \((s_1^*, \ldots, s_n^*)\) tal que nenhuma firma pode aumentar unilateralmente seu lucro desviando.

!!! info "Prêmio Nobel — Jean Tirole (2014)"

    **Jean Tirole** (1953–presente) é um economista francês. Obteve o PhD no MIT e é professor na Toulouse School of Economics (TSE). Recebeu o Nobel individualmente — um dos poucos em economia.

    **Por que ganhou o Nobel:**
    Premiado por sua análise do poder de mercado e da regulação. Em *The Theory of Industrial Organization* (1988), Tirole sintetizou e expandiu os modelos clássicos de oligopólio (Cournot, Bertrand, Stackelberg) usando a teoria dos jogos, transformando a organização industrial em uma disciplina rigorosa e unificada. Suas contribuições incluem a análise de preços-limite, competição em plataformas bilaterais e colusão tácita.

    **Conexão com este capítulo:**
    Os modelos de Cournot, Bertrand, Stackelberg e colusão analisados neste capítulo são apresentados no framework moderno consolidado por Tirole. Sua abordagem — tratar cada estrutura de oligopólio como um jogo com equilíbrio de Nash — unificou a análise e permitiu comparar rigorosamente as previsões de cada modelo sobre preços, quantidades e bem-estar.

---

## 16a.2 Dois Bastam para a Guerra: Modelo de Bertrand {#16a2}

Comecemos pela pergunta mais natural: o que acontece quando duas firmas com produtos idênticos competem em preços? A resposta de Bertrand é tão brutal que mereceu o apelido de "paradoxo": basta *uma* rival para transformar qualquer duopolista em refém da guerra de preços. É como se dois vendedores de guarda-chuva idêntico se instalassem lado a lado na saída do metrô em dia de temporal — a corrida para o fundo começa imediatamente. Como veremos, bastam duas firmas para que o resultado de mercado se assemelhe ao da concorrência perfeita, um resultado com implicações profundas para a teoria da organização industrial.

### O modelo básico

Considere duas firmas produzindo um bem **homogêneo** com custo marginal constante \(c\). As firmas escolhem **simultaneamente** seus preços \(p_1\) e \(p_2\). Os consumidores compram da firma com menor preço; se os preços são iguais, a demanda se divide igualmente.

A função de demanda da firma 1 é:

\[
q_1(p_1, p_2) = \begin{cases} D(p_1) & \text{se } p_1 < p_2 \\ \frac{D(p_1)}{2} & \text{se } p_1 = p_2 \\ 0 & \text{se } p_1 > p_2 \end{cases}
\label{eq:16a.1} \tag{16a.1} \]

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

O resultado é paradoxal: pela equação $\eqref{eq:16a.1}$, bastam **duas firmas** para reproduzir o resultado competitivo. Isso contrasta fortemente com a evidência empírica, na qual mercados duopolísticos tipicamente apresentam lucros positivos. O paradoxo de Bertrand motivou diversas extensões do modelo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Se duas empresas vendem o mesmo produto, a guerra de preços pode eliminar todo o lucro — mesmo que sejam apenas duas.

    **Pense assim:** Imagine duas barracas de água mineral idêntica na saída de um show no Maracanã. Se uma cobra R$ 6 e a outra R$ 5, todo mundo vai na mais barata. A rival baixa para R$ 4,50, e a guerra continua até que ambas cobrem o custo — e ninguém lucra nada.

    **Por que isso importa:** O paradoxo mostra que concorrência em preços com produtos idênticos é brutal, e ajuda a entender por que empresas investem tanto em diferenciação de marca e fidelização de clientes.

### Resoluções do paradoxo

O paradoxo de Bertrand pode ser resolvido relaxando qualquer uma de suas hipóteses:

1. **Diferenciação de produto**: se os bens não são substitutos perfeitos, as firmas retêm algum poder de mercado mesmo cobrando preços diferentes ([Seção 16a.6](capacidade-diferenciacao.md#16a6)).
2. **Restrições de capacidade**: se as firmas têm capacidade limitada, a firma de preço mais baixo não pode atender toda a demanda ([Seção 16a.5](capacidade-diferenciacao.md#16a5)).
3. **Interação repetida**: em jogos repetidos, a ameaça de retaliação futura pode sustentar preços acima do custo ([Cap. 16b, Seção 16b.1](../cap16b/colusao-entrada.md#16b1)).
4. **Custos marginais assimétricos**: se \(c_1 < c_2\), o equilíbrio é \(p_1^* = c_2\) (ou ligeiramente abaixo), e a firma 1 obtém lucro positivo.

---

<iframe src="/micro-book/graficos/cap16/bertrand.html" title="Figura 16a.1 — Visualize o paradoxo de Bertrand com produtos homogêneos (equilíbrio a preço = custo marginal) e alterne para produtos diferenciados, onde preços de equilíbrio superam o custo marginal" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 16a.1 — Visualize o paradoxo de Bertrand com produtos homogêneos (equilíbrio a preço = custo marginal) e alterne para produtos diferenciados, onde preços de equilíbrio superam o custo marginal.** Ajuste elasticidades e custos.
</div>

---

## 16a.3 Quanto Produzir Quando o Rival Pensa o Mesmo: Modelo de Cournot {#16a3}

O paradoxo de Bertrand sugere que a concorrência em preços é devastadora para as firmas. Mas e se as firmas competissem em quantidades, em vez de preços? Essa é a pergunta que Antoine Augustin Cournot formulou já em 1838, meio século antes de Bertrand. O modelo de Cournot produz resultados radicalmente diferentes: mesmo com apenas duas firmas, o preço de equilíbrio permanece acima do custo marginal, e ambas obtêm lucros positivos. Essa sensibilidade do resultado à variável de decisão é uma das lições centrais da teoria dos oligopólios.

### O modelo duopolístico

Considere duas firmas que escolhem **simultaneamente** as quantidades \(q_1\) e \(q_2\). O preço de mercado é determinado pela demanda inversa \(p = a - b(q_1 + q_2)\). Cada firma tem custo marginal constante \(c\).

O lucro da firma 1 é:

\[
\pi_1(q_1, q_2) = [a - b(q_1 + q_2)] \cdot q_1 - c \cdot q_1
\label{eq:16a.2} \tag{16a.2} \]

A condição de primeira ordem é:

\[
\frac{\partial \pi_1}{\partial q_1} = a - 2bq_1 - bq_2 - c = 0
\label{eq:16a.3} \tag{16a.3} \]

Resolvendo para \(q_1\):

\[
q_1^*(q_2) = \frac{a - c - bq_2}{2b} = \frac{a - c}{2b} - \frac{q_2}{2}
\label{eq:16a.4} \tag{16a.4} \]

A equação $\eqref{eq:16a.4}$ é a **função de melhor-resposta** (ou função de melhor resposta) da firma 1. Ela indica a quantidade ótima da firma 1 para cada nível de produção da firma 2. A função de melhor-resposta é **decrescente**: as quantidades são **substitutos estratégicos** no modelo de Cournot.

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
\label{eq:16a.5} \tag{16a.5} \]

\[
\pi_1^* = \pi_2^* = \frac{(a-c)^2}{9b}
\label{eq:16a.6} \tag{16a.6} \]

!!! idea "Intuição Econômica"
    **Em uma frase:** No equilíbrio de Cournot, cada empresa produz menos do que faria sozinha, mas o mercado como um todo produz mais do que um monopólio.

    **Pense assim:** Pense em duas redes de postos de gasolina decidindo quantos postos abrir numa cidade. Cada uma sabe que, se abrir postos demais, o preço da gasolina cai para todo mundo. Então cada uma modera a expansão — mas, juntas, atendem mais consumidores do que um monopolista faria.

    **Por que isso importa:** O modelo de Cournot mostra que bastam poucas empresas para gerar alguma concorrência, e que o resultado melhora para o consumidor conforme o número de competidores aumenta.

!!! warning "Erro Comum"

    **Confundir o equilíbrio de Cournot com colusão ou com concorrência perfeita.**

    O equilíbrio de Cournot **não** é colusão: cada firma maximiza seu próprio lucro *individualmente*, tomando a quantidade da rival como dada. O resultado conjunto é pior para as firmas do que a colusão (que maximizaria o lucro conjunto), mas melhor do que Bertrand com bens homogêneos. Formalmente: \(Q^{monopólio} < Q^{Cournot} < Q^{competitivo}\) e \(p^{competitivo} < p^{Cournot} < p^{monopólio}\). Outro erro frequente é trocar a variável estratégica: no Cournot as firmas escolhem **quantidades** (e o preço se ajusta pelo mercado), enquanto no Bertrand escolhem **preços**. Essa diferença gera resultados radicalmente distintos.

<iframe src="/micro-book/graficos/cap16/cournot.html" title="Figura 16a.2 — Funções de melhor-resposta de Cournot" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 16a.2 — Funções de melhor-resposta de Cournot no espaço \((q_1, q_2)\).** O equilíbrio de Nash está na interseção. Ajuste custos assimétricos, ative a convergência cobweb e compare com os pontos de colusão e competitivo.
</div>

---

### O modelo de Stackelberg

Nos modelos de Bertrand e Cournot, as firmas tomam decisões simultaneamente — nenhuma observa a escolha da rival antes de agir. Mas em muitos mercados reais, uma firma estabelecida decide antes das demais, e sua decisão é observável e irreversível. Será que mover primeiro confere uma vantagem estratégica? O modelo de Stackelberg responde afirmativamente, formalizando a ideia de que o compromisso crível com uma ação agressiva pode disciplinar o comportamento dos concorrentes.

No modelo de Stackelberg, a firma 1 (líder) escolhe \(q_1\) **primeiro**, e a firma 2 (seguidora) observa \(q_1\) e depois escolhe \(q_2\). O jogo é resolvido por **indução retroativa**.

A seguidora usa sua função de melhor-resposta: \(q_2^*(q_1) = \frac{a-c-bq_1}{2b}\).

O líder antecipa essa reação e maximiza:

\[
\pi_1 = \left[a - b\left(q_1 + \frac{a-c-bq_1}{2b}\right)\right]q_1 - cq_1 = \frac{(a-c)q_1}{2} - \frac{bq_1^2}{2}
\]

A condição de primeira ordem dá:

\[
q_1^L = \frac{a-c}{2b}, \quad q_2^S = \frac{a-c}{4b}
\label{eq:16a.7} \tag{16a.7} \]

\[
Q^{St} = \frac{3(a-c)}{4b}, \quad p^{St} = \frac{a+3c}{4}
\label{eq:16a.8} \tag{16a.8} \]

O líder produz mais e lucra mais do que no Cournot; a seguidora produz menos e lucra menos. A **vantagem do primeiro movimento** (first-mover advantage) decorre do compromisso crível com uma quantidade elevada.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quem se compromete primeiro com uma decisão grande e irreversível pode forçar os concorrentes a se acomodarem.

    **Pense assim:** Quando a Ambev inaugura uma fábrica gigante em uma região, cervejarias menores sabem que competir ali será duro. A capacidade já instalada é um "fato consumado" que muda o jogo — a líder produz muito, e a seguidora aceita uma fatia menor do mercado.

    **Por que isso importa:** Essa lógica explica por que grandes empresas investem agressivamente em capacidade e infraestrutura antes dos rivais — o compromisso crível vira vantagem estratégica.

---

<iframe src="/micro-book/graficos/cap16/stackelberg.html" title="Figura 16a.3 — O líder de Stackelberg escolhe o ponto de maior lucro sobre a função de melhor-resposta da seguidora" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 16a.3 — O líder de Stackelberg escolhe o ponto de maior lucro sobre a função de melhor-resposta da seguidora.** As curvas de iso-lucro do líder são mostradas em azul. Compare com o equilíbrio de Cournot (roxo).
</div>

---

## 16a.4 De Monopólio a Concorrência em n Passos: Cournot com n Firmas {#16a4}

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
    \label{eq:16a.9} \tag{16a.9} \]

    A quantidade agregada e o preço de equilíbrio são:

    \[
    Q^* = nq^* = \frac{n(a-c)}{b(n+1)}
    \]

    \[
    p^* = a - bQ^* = a - \frac{n(a-c)}{n+1} = \frac{a + nc}{n+1}
    \label{eq:16a.10} \tag{16a.10} \]

    O lucro de cada firma é:

    \[
    \pi^* = (p^* - c)q^* = \frac{(a-c)^2}{b(n+1)^2}
    \label{eq:16a.11} \tag{16a.11} \]

    **Propriedades de estática comparativa:**

    - Quando \(n = 1\): \(q^* = \frac{a-c}{2b}\), \(p^* = \frac{a+c}{2}\) — resultado de monopólio.
    - Quando \(n = 2\): \(q^* = \frac{a-c}{3b}\), \(p^* = \frac{a+2c}{3}\) — duopólio de Cournot.
    - Quando \(n \to \infty\): \(Q^* \to \frac{a-c}{b}\), \(p^* \to c\) — resultado competitivo.

    Portanto, o equilíbrio de Cournot converge para o resultado de concorrência perfeita quando o número de firmas cresce sem limite. O modelo de Cournot é, assim, uma interpolação contínua entre monopólio e concorrência perfeita, parametrizada pelo número de firmas. \(\blacksquare\)

<iframe src="/micro-book/graficos/cap16/webr-cournot-n-firmas.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 16a.1 — Cournot com n firmas: convergência para concorrência perfeita.** Altere os parâmetros de demanda e custo e observe como preço, quantidade, lucro e HHI convergem para o resultado competitivo à medida que $n$ cresce.

</div>
