# 4.6–4.9 Problema Dual, Dualidade e Identidade de Roy

## 4.6 O Lado B do Consumidor: Minimização do Dispêndio

Até aqui, o consumidor entrava no supermercado com R$ 300 e perguntava: "como maximizar minha felicidade?" Agora, viramos a pergunta de cabeça para baixo: "qual é o **mínimo** que preciso gastar para ficar tão feliz quanto estou agora?" Parece a mesma coisa — e em certo sentido é. Mas essa reformulação, chamada de **problema dual**, é uma das jogadas mais astutas da teoria econômica. Ela gera ferramentas (demanda hicksiana, função dispêndio) que o problema original não entrega diretamente — e que serão indispensáveis quando, no Capítulo 5, quisermos separar o efeito de uma mudança de preço em "substituição" e "renda".

O **dual** do problema de maximização da utilidade é, portanto, o problema de **minimização do dispêndio** (ou minimização do gasto):

\[
\min_{x_1, x_2} \; p_1 x_1 + p_2 x_2 \quad \text{sujeito a} \quad u(x_1, x_2) \geq \bar{u}, \quad x_1 \geq 0, \quad x_2 \geq 0. \label{eq:4.6.11} \tag{4.6.11}
\]

O consumidor busca a forma mais barata de atingir um nível de utilidade pré-especificado \(\bar{u}\).

O lagrangeano do problema dual é:

\[
\mathcal{L} = p_1 x_1 + p_2 x_2 + \lambda \left(\bar{u} - u(x_1, x_2)\right).
\]

As CPOs para solução interior são:

\[
p_i = \lambda \frac{\partial u}{\partial x_i}, \quad i = 1, 2,
\]

\[
u(x_1, x_2) = \bar{u}.
\]

Dividindo as CPOs dos bens 1 e 2:

\[
\frac{p_1}{p_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \text{TMS}_{12}. \label{eq:4.6.12} \tag{4.6.12}
\]

A condição de tangência $\eqref{eq:4.6.12}$ é **idêntica** à do problema primal (equação 4.2.3), confirmando a equivalência entre os dois problemas. Esse resultado não é uma coincidência: primal e dual são duas perspectivas sobre a mesma decisão ótima, e o ponto de tangência entre a curva de indiferença e a reta orçamentária permanece o mesmo, independentemente de qual dos dois problemas se resolve.

!!! idea "Intuição Econômica"
    **Em uma frase:** O problema primal e o dual são duas faces da mesma moeda — a cesta ótima é idêntica, só muda a pergunta que fazemos.

    **Pense assim:** Imagine um gestor que precisa organizar um jantar comemorativo. Ele pode pensar o problema de duas formas: (a) "Tenho R$ 500 — qual o melhor jantar que posso servir?" (primal) ou (b) "Quero servir um jantar de qualidade 8/10 — qual o gasto mínimo necessário?" (dual). A lista de pratos escolhida no final é exatamente a mesma. O que muda é apenas o ponto de partida — o orçamento fixo ou a qualidade fixada.

    **Por que isso importa:** A formulação dual gera funções — a demanda hicksiana e a função dispêndio — que são matematicamente mais tratáveis para medir o bem-estar do consumidor. As medidas de variação compensatória e variação equivalente (Capítulo 5) derivam diretamente do problema dual.

### 4.6.1 Demanda Hicksiana (Compensada)

A solução do problema de minimização define as **funções de demanda hicksiana** (ou compensada):

\[
h_i = h_i(p_1, p_2, \bar{u}), \quad i = 1, 2. \label{eq:4.6.13} \tag{4.6.13}
\]

A demanda hicksiana recebe o nome de "compensada" porque mantém o nível de utilidade fixo — como se o consumidor fosse **compensado** por variações de preço de modo a permanecer na mesma curva de indiferença. Em contraste com a demanda marshalliana (que mantém a *renda* constante), a demanda hicksiana mantém a *utilidade* constante. Essa distinção é fundamental: quando o preço de um bem sobe, a demanda marshalliana captura tanto o efeito substituição (o consumidor troca pelo bem relativamente mais barato) quanto o efeito renda (o consumidor fica mais pobre em termos reais). A demanda hicksiana isola o efeito substituição puro — e é por isso que satisfaz a lei da demanda sem exceções. Essa propriedade a torna especialmente útil para isolar o **efeito substituição puro**: quando o preço de um bem sobe e o consumidor recebe compensação suficiente para manter seu bem-estar constante, qualquer mudança na quantidade demandada reflete exclusivamente a substituição entre bens, sem o confundimento do efeito renda. O Capítulo 5 explorará essa decomposição em profundidade através da Equação de Slutsky.

!!! info "🏅 Prêmio Nobel — John R. Hicks (1972)"

    **John Richard Hicks** (1904–1989) foi um economista britânico, formado na Universidade de Oxford. Foi professor em Manchester, Oxford e na London School of Economics. Dividiu o Nobel com Kenneth Arrow.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à teoria do equilíbrio geral e à teoria do bem-estar. Hicks desenvolveu a decomposição dos efeitos de preço em efeito substituição e efeito renda, e introduziu os conceitos de variação compensatória e variação equivalente como medidas monetárias de bem-estar.

    **Conexão com este capítulo:**
    A demanda hicksiana (compensada) é o pilar da abordagem dual apresentada neste capítulo. A distinção entre demandas marshalliana e hicksiana, o Lema de Shephard e a equação de Slutsky — todos formalizados ou inspirados pelo trabalho de Hicks — constituem a estrutura analítica central do capítulo.

**Propriedades da demanda hicksiana**:

1. **Homogênea de grau zero em \(\mathbf{p}\)**: multiplicar todos os preços pelo mesmo fator não altera as quantidades compensadas.
2. **Lei da demanda compensada**: \(\partial h_i / \partial p_i \leq 0\). A demanda hicksiana é não crescente no próprio preço — não há efeito renda para confundir o resultado.
3. **Simetria e semidefinição negativa** da matriz de Slutsky: \(\partial h_i / \partial p_j = \partial h_j / \partial p_i\).

---

## 4.7 Quanto Custa Ser Feliz? A Função Dispêndio

Assim como a função de utilidade indireta sintetiza o *valor ótimo* do problema primal (a utilidade máxima dados preços e renda), a **função dispêndio** sintetiza o valor ótimo do problema dual: o gasto mínimo necessário para atingir um determinado nível de utilidade. A função dispêndio é um dos conceitos mais versáteis de toda a microeconomia: dela derivam-se as demandas hicksianas (via Lema de Shephard), as medidas de variação de bem-estar (variação compensatória e equivalente, Capítulo 5) e os índices de custo de vida (como o IPCA discutido no Box Brasil do Capítulo 2). Juntas, \(V\) e \(E\) formam um par dual que será a base de toda a análise de bem-estar desenvolvida no Capítulo 5. A elegância da estrutura dual reside no fato de que tanto \(V\) quanto \(E\) podem ser estimadas empiricamente — e a partir delas, via Identidade de Roy e Lema de Shephard, recuperamos as funções de demanda sem precisar resolver o problema de otimização original novamente.

!!! definition "Função dispêndio"
    A **função dispêndio** é o custo mínimo de atingir o nível de utilidade \(\bar{u}\) aos preços vigentes:

    \[
    E(p_1, p_2, \bar{u}) = p_1 \, h_1(p_1, p_2, \bar{u}) + p_2 \, h_2(p_1, p_2, \bar{u}) = \min_{\mathbf{x}: u(\mathbf{x}) \geq \bar{u}} \mathbf{p} \cdot \mathbf{x}. \label{eq:4.7.14} \tag{4.7.14}
    \]

**Propriedades de \(E(\mathbf{p}, \bar{u})\)**:

1. **Homogênea de grau 1 em \(\mathbf{p}\)**: se todos os preços dobram, o gasto mínimo dobra.
2. **Não decrescente em cada \(p_i\)**: preços maiores implicam gasto maior para o mesmo nível de utilidade.
3. **Estritamente crescente em \(\bar{u}\)**: atingir maior utilidade custa mais.
4. **Côncava em \(\mathbf{p}\)**: esta propriedade é fundamental e reflete o fato de que o consumidor pode realocar consumo quando preços mudam. Quando um preço sobe, o consumidor substitui em favor de bens mais baratos, de modo que o gasto total cresce menos do que proporcionalmente.
5. **Lema de Shephard**: \(\dfrac{\partial E}{\partial p_i} = h_i(\mathbf{p}, \bar{u})\). A derivada da função dispêndio em relação ao preço \(p_i\) fornece a demanda hicksiana do bem \(i\).

!!! definition "Lema de Shephard"
    Se \(E(\mathbf{p}, \bar{u})\) é diferenciável em \(\mathbf{p}\), então a demanda hicksiana do bem \(i\) é dada pela derivada parcial da função dispêndio em relação ao preço \(p_i\):

    \[
    h_i(\mathbf{p}, \bar{u}) = \frac{\partial E(\mathbf{p}, \bar{u})}{\partial p_i}.
    \]

    **Demonstração:** Pela Identidade do Envelope, o efeito de uma variação marginal em \(p_i\) sobre o valor ótimo do gasto — mantendo \(\bar{u}\) fixo — é igual ao efeito direto de \(p_i\) sobre a função objetivo \(\mathbf{p} \cdot \mathbf{x}\), avaliado na solução ótima: \(\partial E / \partial p_i = x_i^* = h_i\). O resultado é análogo ao Lema de Shephard na teoria da firma, onde a derivada do custo em relação ao preço do insumo fornece a demanda condicional por insumos.

    **Intuição:** Se o preço do bem 1 sobe R$ 1, o aumento no gasto mínimo é exatamente a quantidade do bem 1 que o consumidor estava comprando — porque, na margem, ele não realoca (o Envelope Theorem garante que os efeitos de segunda ordem são desprezíveis).

!!! tip "Exemplo: Cobb-Douglas"
    Para \(u = x_1^a x_2^b\) com \(a + b = 1\), a função dispêndio é:

    \[
    E(p_1, p_2, \bar{u}) = \left(\frac{p_1}{a}\right)^a \left(\frac{p_2}{b}\right)^b \cdot \bar{u}.
    \]

    As demandas hicksianas obtidas pelo Lema de Shephard são:

    \[
    h_1 = \frac{\partial E}{\partial p_1} = a \left(\frac{p_1}{a}\right)^{a-1} \left(\frac{p_2}{b}\right)^b \cdot \bar{u} \cdot \frac{1}{a} = \left(\frac{p_2}{p_1}\right)^b \cdot \left(\frac{a}{b}\right)^{b} \cdot \bar{u}.
    \]

---

## 4.8 Dois Lados da Mesma Moeda: A Dualidade V ↔ E

Temos agora duas funções que resumem o consumidor: \(V\) (utilidade indireta, do primal) e \(E\) (função dispêndio, do dual). Uma fala em "reais" e devolve "felicidade"; a outra fala em "felicidade" e devolve "reais". Não é coincidência que pareçam espelhos — elas *são* inversas uma da outra.[^dead-parrot-dual] Essa simetria é o coração da dualidade, e as identidades abaixo são o certificado de casamento:

\[
V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u} \qquad \text{(a renda mínima para atingir } \bar{u} \text{ gera utilidade exatamente } \bar{u}\text{)}, \label{eq:4.8.15} \tag{4.8.15}
\]

\[
E(\mathbf{p}, V(\mathbf{p}, I)) = I \qquad \text{(o custo mínimo de atingir a utilidade máxima com renda } I \text{ é exatamente } I\text{)}. \label{eq:4.8.16} \tag{4.8.16}
\]

Essas identidades implicam que \(V(\mathbf{p}, \cdot)\) e \(E(\mathbf{p}, \cdot)\) são **inversas** uma da outra (fixados os preços).

Se esta seção parece abstrata demais, relaxe: a dualidade é uma daquelas ideias que só fazem sentido depois de usá-la três vezes. Prossiga, volte aqui no Capítulo 5, e ela vai "clicar".

[^dead-parrot-dual]: A dualidade entre \(V\) e \(E\) lembra o *Dead Parrot sketch* de Monty Python — mas ao contrário. No sketch, o vendedor insiste que o papagaio morto está apenas "descansando" (mesma coisa descrita de formas diferentes, mas uma delas é *mentira*). Na dualidade, primal e dual descrevem a mesma cesta ótima de formas genuinamente diferentes — e ambas estão *certas*. É o Dead Parrot honesto da microeconomia.

!!! idea "Intuição Econômica"
    **Em uma frase:** Maximizar a felicidade com um orçamento fixo e minimizar o gasto para atingir uma felicidade fixa são dois lados da mesma moeda.

    **Pense assim:** Pense em um estudante que quer montar a melhor marmita possível com R$ 15 (problema primal). Ou, alternativamente, quer gastar o mínimo para montar uma marmita tão boa quanto a que comeu ontem (problema dual). Nos dois casos, ele escolhe os mesmos ingredientes no mesmo ponto de tangência — só muda a pergunta.

    **Por que isso importa:** A dualidade permite construir medidas de bem-estar (variação compensatória e equivalente) que são essenciais para avaliar políticas públicas como reajustes de tarifas ou mudanças tributárias.

!!! info "🏅 Prêmio Nobel — Kenneth Arrow (1972)"

    **Kenneth Joseph Arrow** (1921–2017) foi um economista americano formado pela Universidade de Columbia e pela Universidade de Stanford, onde foi professor por décadas. Dividiu o Nobel de 1972 com John R. Hicks.

    **Por que ganhou o Nobel:**
    Arrow foi premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Seu Teorema da Impossibilidade (1951) mostrou que nenhum sistema de votação pode agregar preferências individuais de forma perfeitamente racional. Na teoria do equilíbrio geral, Arrow e Debreu (1954) demonstraram a existência e a optimalidade de equilíbrios competitivos.

    **Conexão com este capítulo:**
    A estrutura de dualidade entre \(V\) e \(E\) está no coração do modelo Arrow-Debreu de equilíbrio geral. As demandas marshallianas derivadas neste capítulo são as peças individuais que, agregadas, formam a demanda de mercado no modelo Arrow-Debreu. Além disso, a distinção entre eficiência alocativa (equilíbrio competitivo) e bem-estar (representado por \(V\) e \(E\)) é central ao programa de pesquisa de Arrow sobre economia do bem-estar, que reaparece nos Capítulos 9 e 10.

<iframe src="/micro-book/graficos/cap04/dualidade.html" title="Figura 4.4 — Dualidade: Maximização de Utilidade vs" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 4.4 — Dualidade: Maximização de Utilidade vs. Minimização do Dispêndio.** Alterne entre os problemas primal e dual. Observe que o mesmo ponto de tangência resolve ambos, e que as identidades de dualidade se verificam numericamente.
</div>

Além disso, as demandas marshalliana e hicksiana estão relacionadas:

\[
x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I)), \label{eq:4.8.17} \tag{4.8.17}
\]

\[
h_i(\mathbf{p}, \bar{u}) = x_i(\mathbf{p}, E(\mathbf{p}, \bar{u})). \label{eq:4.8.18} \tag{4.8.18}
\]

A equação $\eqref{eq:4.8.17}$ diz que avaliar a demanda hicksiana no nível de utilidade ótimo reproduz a demanda marshalliana. A equação $\eqref{eq:4.8.18}$ diz que avaliar a demanda marshalliana na renda mínima necessária reproduz a demanda hicksiana. Essas identidades são mais do que resultados matemáticos abstratos: elas garantem a **consistência interna** da teoria do consumidor. Se um pesquisador estima demandas marshallianas e hicksianas separadamente, as identidades $\eqref{eq:4.8.17}$ e $\eqref{eq:4.8.18}$ funcionam como restrições de teste — qualquer inconsistência entre as estimativas sinalizaria uma violação das hipóteses do modelo.

??? exercicio-resolvido "Exercício Resolvido 4.3"
    **Enunciado:** Para um consumidor com \(u(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), \(p_1 = 4\), \(p_2 = 1\) e \(I = 100\), verifique as duas identidades de dualidade.

    **Dados:** \(a = b = 1/2\), \(p_1 = 4\), \(p_2 = 1\), \(I = 100\).

    **Resolução:**

    **Passo 1 — Calcular a demanda marshalliana e \(V\)**

    \(x_1^* = \frac{0{,}5 \times 100}{4} = 12{,}5\), \(x_2^* = \frac{0{,}5 \times 100}{1} = 50\).

    \(V = \sqrt{12{,}5 \times 50} = \sqrt{625} = 25\).

    **Passo 2 — Calcular a função dispêndio e verificar \(E(\mathbf{p}, V) = I\)**

    \(E = (p_1/a)^a (p_2/b)^b \cdot \bar{u} = (4/0{,}5)^{0{,}5} (1/0{,}5)^{0{,}5} \cdot 25 = \sqrt{8} \cdot \sqrt{2} \cdot 25 = 4 \cdot 25 = 100\) ✓

    **Passo 3 — Verificar \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\)**

    Tomando \(\bar{u} = 25\): \(E = 100\), e já vimos que \(V(4, 1, 100) = 25 = \bar{u}\) ✓

    **Resultado:** Ambas as identidades se verificam: \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\) e \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\).

    **Interpretação econômica:** A dualidade mostra que maximizar utilidade com renda \(I\) e minimizar gasto para atingir a utilidade \(V\) são dois lados da mesma moeda. Essa equivalência é a base para construir medidas de variação de bem-estar (variação compensatória e equivalente) que serão tratadas no Capítulo 5.

!!! box-mundo "Box Mundo 4.3 — Nudge Units e a escolha do consumidor: quando a arquitetura de escolhas encontra a teoria"

    **Contexto:** A teoria da escolha do consumidor desenvolvida neste capítulo pressupõe que o agente resolve, implicitamente, um problema de maximização restrita — confronta preços e renda, avalia suas preferências e seleciona a cesta ótima. Mas a economia comportamental, iniciada por Kahneman e Tversky (Capítulo 8), documenta que consumidores reais frequentemente se desviam da solução ótima por inércia, sobrecarga cognitiva ou viés do presente. Essa constatação levou Richard Thaler e Cass Sunstein a proporem o conceito de **arquitetura de escolhas** (*choice architecture*): a ideia de que a forma como as opções são apresentadas influencia sistematicamente a decisão, mesmo quando o conjunto orçamentário permanece inalterado. A criação de *nudge units* — equipes governamentais dedicadas a aplicar esses insights — representa a institucionalização dessa agenda.

    **Dados:** O **Behavioural Insights Team** (BIT), criado em 2010 no gabinete do Primeiro-Ministro do Reino Unido, foi a primeira *nudge unit* governamental do mundo. Em seus primeiros cinco anos, o BIT conduziu mais de 750 ensaios controlados randomizados (RCTs) envolvendo milhões de cidadãos (BIT, 2015). Nos EUA, o *Social and Behavioral Sciences Team* (SBST), criado por decreto executivo de Obama em 2015, demonstrou que simplificar o formulário FAFSA de auxílio financeiro universitário elevou a matrícula em 8 pontos percentuais entre famílias de baixa renda (Bettinger et al., 2012, *Quarterly Journal of Economics*). Na área de escolha previdenciária, Madrian e Shea (2001) mostraram que mudar o *default* de opt-in para opt-out em planos 401(k) elevou a adesão de 49% para 86%. Até 2023, a OCDE documentava mais de 400 instituições em mais de 60 países aplicando ciência comportamental a políticas públicas (*OECD Behavioural Insights and Public Policy*, 2023). No Brasil, a adesão automática dos novos servidores federais à Funpresp (previdência complementar) segue exatamente essa lógica.

    **Análise:** Do ponto de vista da teoria deste capítulo, os nudges não alteram o conjunto orçamentário do consumidor — preços e renda permanecem os mesmos. O que muda é a **saliência** das opções e o ponto de partida da decisão (*default*). Na linguagem formal da Seção 4.1, o problema de maximização do consumidor permanece \(\max u(\mathbf{x}) \text{ s.a. } \mathbf{p} \cdot \mathbf{x} \leq I\), mas o comportamento observado se desvia da solução ótima por custos cognitivos e vieses que o modelo padrão não captura. Os nudges atuam reduzindo esses custos — simplificando formulários, pré-selecionando a melhor opção, tornando informações relevantes mais visíveis — de modo que o comportamento efetivo se aproxime da solução teórica do modelo. Esse enquadramento revela uma complementaridade entre a teoria normativa (o que o consumidor *deveria* fazer) e a agenda comportamental (como ajudá-lo a *de fato* fazê-lo), ilustrando que os fundamentos do Capítulo 4 não são apenas exercícios analíticos, mas benchmarks operacionais para o desenho de políticas públicas.

    **Fonte:** Thaler, R. H.; Sunstein, C. R. (2008). *Nudge: Improving Decisions about Health, Wealth, and Happiness*. Yale University Press. Madrian, B. C.; Shea, D. F. (2001). The power of suggestion: Inertia in 401(k) participation and savings behavior. *Quarterly Journal of Economics*, 116(4), 1149–1187. Bettinger, E. P.; Long, B. T.; Oreopoulos, P.; Sanbonmatsu, L. (2012). The role of application assistance and information in college decisions. *Quarterly Journal of Economics*, 127(3), 1205–1242. OECD (2023). *Behavioural Insights and Public Policy: Lessons from Around the World*. Paris.

---

## 4.9 O Atalho Mais Elegante: Identidade de Roy

Eis o passe de mágica mais satisfatório da teoria do consumidor. Suponha que alguém lhe dê a função \(V(\mathbf{p}, I)\) — o "termômetro de felicidade". Será que você consegue, *só com ela*, descobrir as demandas, sem resolver Lagrangeano nenhum? A resposta: sim. Basta derivar \(V\) e dividir. Esse atalho espetacular é a **Identidade de Roy** — e ela funciona porque \(V\) já contém, comprimida, toda a informação sobre o comportamento ótimo do consumidor. É como extrair a receita do bolo a partir do sabor.

!!! theorem "Teorema 4.1 — Identidade de Roy"
    Se \(V(\mathbf{p}, I)\) é diferenciável em \((\mathbf{p}, I)\) e \(\partial V / \partial I \neq 0\), então a demanda marshalliana do bem \(i\) é dada por:

    \[
    x_i(\mathbf{p}, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}. \label{eq:4.9.19} \tag{4.9.19}
    \]

!!! proof "Demonstração"
    Partimos da identidade de dualidade:

    \[
    E(\mathbf{p}, V(\mathbf{p}, I)) = I.
    \]

    Diferenciando ambos os lados em relação a \(p_i\), aplicando a regra da cadeia:

    \[
    \frac{\partial E}{\partial p_i} + \frac{\partial E}{\partial \bar{u}} \cdot \frac{\partial V}{\partial p_i} = 0.
    \]

    Agora utilizamos dois resultados conhecidos:

    - Pelo **Lema de Shephard**: \(\dfrac{\partial E}{\partial p_i} = h_i(\mathbf{p}, \bar{u})\).
    - Da dualidade, avaliada no ótimo: \(\dfrac{\partial E}{\partial \bar{u}} = \dfrac{1}{\partial V / \partial I}\) (pois \(E\) e \(V\) são inversas em relação ao segundo argumento, e pela regra da função inversa).

    Além disso, no ponto de dualidade, \(h_i(\mathbf{p}, V(\mathbf{p}, I)) = x_i(\mathbf{p}, I)\). Substituindo:

    \[
    x_i(\mathbf{p}, I) + \frac{1}{\partial V / \partial I} \cdot \frac{\partial V}{\partial p_i} = 0.
    \]

    Resolvendo para \(x_i\):

    \[
    x_i(\mathbf{p}, I) = -\frac{\partial V / \partial p_i}{\partial V / \partial I}. \qquad \blacksquare
    \]

!!! idea "Intuição Econômica"
    **Em uma frase:** A Identidade de Roy diz que, se você sabe como a satisfação máxima reage a preços e renda, já consegue recuperar a demanda — sem resolver o problema de otimização de novo.

    **Pense assim:** É como se o extrato bancário (utilidade indireta) já contivesse toda a informação sobre o que você comprou. A Identidade de Roy é a "fórmula de engenharia reversa" que recupera o carrinho de compras a partir do extrato. O Lema de Shephard faz o mesmo truque partindo da função dispêndio.

    **Por que isso importa:** Na prática empírica, muitas vezes o pesquisador estima primeiro a função de utilidade indireta ou a função dispêndio, e depois usa Roy ou Shephard para obter as demandas — é mais fácil do que resolver o problema de otimização diretamente.

!!! tip "Verificação: caso Cobb-Douglas"
    Para \(u = x_1^a x_2^b\) com \(a + b = 1\), temos \(V = (a/p_1)^a (b/p_2)^b \cdot I\). Então:

    \[
    \frac{\partial V}{\partial p_1} = -a \cdot \frac{V}{p_1}, \qquad \frac{\partial V}{\partial I} = \frac{V}{I}.
    \]

    Pela Identidade de Roy:

    \[
    x_1 = -\frac{-a V/p_1}{V/I} = \frac{aI}{p_1},
    \]

    que é exatamente a demanda marshalliana Cobb-Douglas.

A Identidade de Roy também tem uma interpretação em termos do multiplicador \(\lambda\): como \(\partial V/\partial I = \lambda\) (a utilidade marginal da renda), podemos reescrever $\eqref{eq:4.9.19}$ como \(x_i = -(\partial V/\partial p_i)/\lambda\). Isso diz que a quantidade demandada do bem \(i\) é proporcional à sensibilidade da utilidade indireta ao preço \(p_i\), normalizada pela utilidade marginal da renda. Este capítulo será central no Capítulo 5, quando usaremos a Identidade de Roy em conjunto com a Equação de Slutsky para decompor os efeitos de uma mudança de preços em efeito substituição e efeito renda.
