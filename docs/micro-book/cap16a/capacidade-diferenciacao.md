# 16a.5–16a.6 Capacidade e Diferenciação

## 16a.5 Não Dá para Atender Todo Mundo: Restrições de Capacidade {#16a5}

O paradoxo de Bertrand repousa sobre uma hipótese implícita que merece escrutínio: a de que a firma que cobra o menor preço pode atender toda a demanda do mercado. Na prática, firmas operam com capacidade limitada — não podem duplicar sua produção instantaneamente para capturar todos os clientes da rival. Que consequências essa restrição tem para o equilíbrio? A resposta, formalizada por Edgeworth e depois por Kreps e Scheinkman, estabelece uma ponte surpreendente entre os modelos de Bertrand e Cournot.

### O argumento de Edgeworth

Edgeworth (1897) observou que, se as firmas têm **capacidade limitada**, o equilíbrio de Bertrand em preços iguais ao custo marginal pode deixar de existir. Quando a firma de preço mais baixo não consegue atender toda a demanda, a firma de preço mais alto retém clientes residuais e pode cobrar acima do custo.

### O resultado de Kreps-Scheinkman

Kreps e Scheinkman (1983) demonstraram um resultado notável:

!!! theorem "Teorema de Kreps-Scheinkman"
    Em um jogo em dois estágios no qual as firmas primeiro escolhem **capacidades** (estágio 1) e depois competem em **preços** (estágio 2), o resultado de equilíbrio coincide com o **equilíbrio de Cournot**, desde que a regra de racionamento eficiente seja utilizada.

Esse resultado fornece uma fundamentação microeconômica para o modelo de Cournot: a concorrência em quantidades pode ser interpretada como uma concorrência em preços precedida por decisões de capacidade. As quantidades de Cournot representam as capacidades que as firmas escolheriam instalar antes de competir em preços.

---

## 16a.6 Nem Todo Café É Igual: Diferenciação de Produto {#16a6}

Se o paradoxo de Bertrand fosse a última palavra, toda firma lucrativa seria um mistério. A saída mais poderosa do paradoxo está em um fato óbvio para qualquer consumidor: produtos raramente são idênticos. Você não é indiferente entre um café no Starbucks e um café no boteco da esquina, mesmo que ambos contenham cafeína. Essa heterogeneidade de preferências — sabor, localização, design, funcionalidades — confere às firmas algum grau de poder de mercado mesmo na presença de concorrentes. A diferenciação de produto — horizontal (quando os consumidores discordam sobre qual produto é melhor) ou vertical (quando todos concordam, mas diferem na disposição a pagar pela qualidade) — é talvez a resolução empiricamente mais relevante do paradoxo.

### Modelo de Hotelling (diferenciação horizontal)

Considere um segmento de reta \([0, 1]\) representando o espaço de características do produto. Consumidores estão uniformemente distribuídos ao longo do segmento. A firma 1 localiza-se em \(x_1 = 0\) e a firma 2 em \(x_2 = 1\). Cada consumidor, localizado em \(x\), incorre em custo de transporte \(t \cdot |x - x_i|\) ao comprar da firma \(i\).

O consumidor indiferente localiza-se em:

\[
\hat{x} = \frac{1}{2} + \frac{p_2 - p_1}{2t} \label{eq:16a.12} \tag{16a.12}
\]

As demandas são \(q_1 = \hat{x}\) e \(q_2 = 1 - \hat{x}\). As funções de lucro (com custo marginal zero) são:

\[
\pi_1 = p_1 \cdot \hat{x} = p_1 \left(\frac{1}{2} + \frac{p_2 - p_1}{2t}\right)
\]

No equilíbrio simétrico: \(p_1^* = p_2^* = t\), \(\pi_1^* = \pi_2^* = \frac{t}{2}\).

Na equação $\eqref{eq:16a.12}$, o parâmetro \(t\) mede o grau de diferenciação. Quando \(t \to 0\), os produtos tornam-se homogêneos e os lucros convergem para zero (Bertrand). Quando \(t\) é grande, a diferenciação confere poder de mercado significativo.

### Modelo de Salop (cidade circular)

O modelo de Salop estende Hotelling para \(n\) firmas dispostas simetricamente em um círculo de perímetro 1. No equilíbrio simétrico com entrada livre:

\[
p^* = c + \frac{t}{n}, \quad n^* = \sqrt{\frac{t}{f}}
\label{eq:16a.13} \tag{16a.13} \]

onde \(f\) é o custo fixo de entrada. O número de firmas em equilíbrio é crescente no custo de transporte (diferenciação) e decrescente no custo fixo.
