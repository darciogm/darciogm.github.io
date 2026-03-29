# 5.3–5.6 Efeitos Renda e Substituição, Equação de Slutsky e Curvas de Demanda

## 5.3 Preço Subiu — E Agora? Efeitos Renda e Substituição

Agora vem a jogada mais importante da teoria do consumidor — e uma das ideias mais bonitas de toda a economia. Quando o preço da carne cai, você compra mais carne. Óbvio. Mas *por quê*? Há duas razões misturadas, e separá-las é fundamental:

- A carne ficou **mais barata que o frango** → você troca frango por carne (efeito substituição).
- Com carne mais barata, seu salário **rende mais** → você pode comprar mais de tudo (efeito renda).

No supermercado, esses dois efeitos acontecem ao mesmo tempo, e o consumidor nem percebe a diferença. Mas o governo precisa perceber: se quiser saber o impacto distributivo de uma redução tarifária, precisa saber quanto do aumento de consumo é troca (substituição) e quanto é enriquecimento (renda). A **decomposição de Slutsky** faz exatamente essa cirurgia.

Quando o preço de um bem cai, dois fenômenos ocorrem simultaneamente:

1. **Efeito substituição** (\(ES\)): o bem ficou relativamente mais barato em relação aos demais, induzindo o consumidor a substituir outros bens por ele.
2. **Efeito renda** (\(ER\)): a queda do preço aumenta o poder de compra real do consumidor, permitindo-lhe consumir mais de todos os bens normais.

### 5.3.1 Decomposição de Hicks

Na abordagem de **Hicks**, desenvolvida por John Hicks e R. G. D. Allen em 1934, o efeito substituição é definido mantendo-se o **nível de utilidade** constante. O consumidor é "compensado" de modo a permanecer na mesma curva de indiferença, mas enfrenta a nova razão de preços. Essa abordagem é teoricamente mais elegante porque mantém o conceito de utilidade como referência, mas tem o inconveniente prático de exigir o conhecimento das curvas de indiferença — que não são diretamente observáveis.

\[
\underbrace{\Delta x_i}_{\text{efeito total}} = \underbrace{\Delta x_i^{ES}}_{\substack{\text{efeito substituição} \\ \text{(utilidade constante)}}} + \underbrace{\Delta x_i^{ER}}_{\substack{\text{efeito renda} \\ \text{(poder de compra)}}} \label{eq:5.3.1} \tag{5.3.1}
\]

O efeito substituição de Hicks move o consumidor **ao longo** da curva de indiferença original; o efeito renda move o consumidor **entre** curvas de indiferença.

### 5.3.2 Decomposição de Slutsky

A decomposição de Hicks, embora elegante, exige que conheçamos as curvas de indiferença do consumidor — algo que, na prática, não observamos diretamente. Existe uma alternativa mais operacional? Sim: a abordagem de **Slutsky** propõe um critério de compensação baseado em grandezas observáveis. Na abordagem de Slutsky, o efeito substituição é definido mantendo-se o **poder de compra** constante — ou seja, compensando-se a renda de modo que a cesta original permaneça acessível. A compensação de Slutsky é dada por:

\[
\Delta I^S = x_i^* \cdot \Delta p_i \label{eq:5.3.2} \tag{5.3.2}
\]

Ambas as decomposições — a de Hicks, expressa na equação $\eqref{eq:5.3.1}$, e a de Slutsky, com compensação dada pela equação $\eqref{eq:5.3.2}$ — convergem para variações infinitesimais de preço e resultam na mesma equação fundamental — a Equação de Slutsky. A distinção entre as duas abordagens reaparecerá na Seção 5.8, quando calcularmos medidas de bem-estar: a decomposição de Hicks é a base teórica da variação compensatória e da variação equivalente, enquanto a decomposição de Slutsky está intimamente ligada à interpretação do excedente do consumidor marshalliano.

!!! idea "Intuição Econômica"
    **Em uma frase:** Toda mudança de preço tem dois efeitos: substituição (troca entre bens) e renda (poder de compra) — separá-los é a chave da análise da demanda.

    **Pense assim:** A gasolina ficou 10% mais barata. O efeito substituição faz você trocar um pouco de transporte público por carro. O efeito renda faz você "se sentir mais rico", podendo aumentar o consumo de diversos bens. Se a gasolina for um bem normal, ambos reforçam a maior demanda. Se for inferior, os efeitos se opõem.

    **Por que isso importa:** A decomposição de Slutsky é a base para avaliar o impacto de impostos e subsídios sobre o consumo — e para distinguir quando uma queda de preço beneficia os consumidores pelo barateamento relativo ou pelo aumento do poder de compra.

!!! box-brasil "Box Brasil 5.2 — Preços administrados e o efeito substituição: energia elétrica e bandeiras tarifárias"
    No Brasil, diversos preços são fixados ou regulados por agências governamentais — os chamados **preços administrados**, que representam cerca de 25% do IPCA. A energia elétrica é um caso particularmente interessante para a teoria do consumidor, pois o sistema de **bandeiras tarifárias** (verde, amarela e vermelha) funciona como uma variação exógena de preço com periodicidade mensal.

    **Mecanismo:** quando a bandeira muda de verde para vermelha (patamar 2), a tarifa residencial pode subir mais de R$ 0,07/kWh, o que equivale a um aumento de 8–10% no custo da energia. Essa variação é exógena ao consumidor (depende de condições hidrológicas), criando um experimento natural para observar efeitos substituição e renda.

    **Efeito substituição:** quando a bandeira vermelha é ativada, famílias reduzem o uso de chuveiro elétrico, ar-condicionado e máquina de lavar em horários de pico — substituindo eletricidade por gás (aquecimento), ventilação natural ou deslocamento temporal do consumo. A tarifa média de energia residencial subiu em média 5,6% a 6,9% em 2023, segundo a [ANEEL](https://www.aneel.gov.br).

    **Efeito renda:** para famílias de baixa renda, em que a conta de luz pode representar 10–15% do orçamento mensal, o efeito renda do aumento tarifário é significativo, reduzindo o consumo de outros bens.

    **Fontes**: ANEEL — Tarifas e Bandeiras Tarifárias; BCB — Relatório de Inflação; Agência Brasil (2022).

<iframe src="/micro-book/graficos/cap05/efeito-renda-substituicao.html" title="Figura 5.2 — Decomposição dos efeitos renda e substituição" class="graph-iframe" style="height:630px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 5.2 — Decomposição dos efeitos renda e substituição.** Ajuste o novo preço \(p_1'\) e observe como o efeito total (vermelho) se decompõe em efeito substituição (verde, ao longo da curva de indiferença) e efeito renda (azul, entre curvas). Alterne entre as decomposições de Hicks e Slutsky.
</div>

---

## 5.4 A Equação Que Separa Tudo: Slutsky

Os gráficos deram a intuição; agora a álgebra dá a precisão. A **Equação de Slutsky** é, sem exagero, *a* equação da teoria do consumidor — aquela que aparece em toda prova de micro, em todo paper de demanda, em toda análise de política tributária. Ela decompõe a resposta da demanda a uma variação de preço em dois pedaços cirurgicamente separados, conectando as funções marshalliana e hicksiana numa identidade elegante. Se este livro fosse uma peça de teatro, a Equação de Slutsky seria o monólogo do ato final.

Uma nota sobre convenção de sinais, que frequentemente gera confusão: na Equação de Slutsky, o efeito renda aparece com sinal negativo, pois um aumento de preço *reduz* o poder de compra real. Assim, para um bem normal (\(\partial x_i/\partial I > 0\)), o termo \(-x_j \partial x_i/\partial I\) é negativo — reforçando a queda na demanda causada pelo aumento de preço. Para um bem inferior (\(\partial x_i/\partial I < 0\)), o mesmo termo é positivo — o efeito renda atenua (ou até reverte) a queda na demanda.

!!! theorem "Teorema: Equação de Slutsky"
    Para quaisquer bens \(i\) e \(j\):

    \[
    \frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I} \label{eq:5.4.3} \tag{5.4.3}
    \]

    onde \(x_i = x_i(p_1, \ldots, p_n, I)\) é a demanda marshalliana, \(h_i = h_i(p_1, \ldots, p_n, \bar{U})\) é a demanda hicksiana e \(I\) é a renda.

    O primeiro termo é o **efeito substituição** (sempre não-positivo para \(i = j\)); o segundo é o **efeito renda**, ponderado pela quantidade consumida do bem cujo preço variou.

!!! proof "Demonstração: Derivação completa da Equação de Slutsky"
    **Passo 1: Identidade fundamental.**

    A demanda hicksiana e a marshalliana estão conectadas pela função dispêndio \(E(\mathbf{p}, \bar{U})\). Para qualquer nível de utilidade \(\bar{U}\):

    \[
    h_i(\mathbf{p}, \bar{U}) = x_i(\mathbf{p}, E(\mathbf{p}, \bar{U}))
    \]

    Essa identidade afirma que, ao nível de utilidade \(\bar{U}\), a demanda compensada coincide com a demanda não-compensada quando a renda é exatamente igual ao dispêndio mínimo.

    **Passo 2: Diferenciação em relação a \(p_j\).**

    Diferenciando ambos os lados em relação a \(p_j\):

    \[
    \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i}{\partial p_j} + \frac{\partial x_i}{\partial I} \cdot \frac{\partial E}{\partial p_j}
    \]

    **Passo 3: Lema de Shephard.**

    Pelo Lema de Shephard (a derivada da função dispêndio em relação ao preço \(p_j\) é a demanda hicksiana do bem \(j\)):

    \[
    \frac{\partial E}{\partial p_j} = h_j(\mathbf{p}, \bar{U})
    \]

    **Passo 4: Avaliação no ótimo.**

    No ponto ótimo, \(h_j(\mathbf{p}, \bar{U}) = x_j(\mathbf{p}, I)\), ou seja, as demandas hicksiana e marshalliana coincidem. Substituindo:

    \[
    \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i}{\partial p_j} + x_j \frac{\partial x_i}{\partial I}
    \]

    **Passo 5: Rearranjando.**

    \[
    \boxed{\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}}
    \]

    O termo \(\frac{\partial h_i}{\partial p_j}\) captura o efeito substituição puro (a preços relativos), e \(-x_j \frac{\partial x_i}{\partial I}\) captura o efeito renda: a variação em \(p_j\) altera o poder de compra em magnitude proporcional a \(x_j\), que então afeta a demanda por \(x_i\) na proporção de \(\frac{\partial x_i}{\partial I}\). \(\blacksquare\)

Vale notar a elegância da derivação: bastaram a identidade entre demandas hicksiana e marshalliana e o Lema de Shephard para conectar duas funções de demanda aparentemente distintas em uma única equação. O resultado revela que a quantidade consumida do bem cujo preço variou (\(x_j\)) atua como um "multiplicador" do efeito renda — quanto mais o consumidor gasta com esse bem, maior o impacto sobre seu poder de compra.

!!! warning "⚠️ Erro Comum"
    **Confundir o sinal do efeito renda na Equação de Slutsky.**

    A Equação de Slutsky é escrita como:

    \[
    \frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
    \]

    O sinal de menos antes do efeito renda é fonte frequente de confusão. Lembre-se: o efeito renda aparece com sinal *negativo* porque um aumento em \(p_j\) *reduz* o poder de compra real (para \(j = i\), o bem fica mais caro, então o consumidor efetivamente "fica mais pobre"). Para verificar se o sinal está correto, aplique o teste para um bem normal (\(\partial x_i/\partial I > 0\)) com aumento de preço próprio (\(j = i\)): o efeito substituição é \(\leq 0\) e o efeito renda é \(-x_i \cdot (+) < 0\), logo o efeito total é negativo — consistente com a Lei da Demanda. Se você obtiver o sinal contrário, provavelmente inverteu o efeito renda.

Se a equação parece intimidante, foque na intuição: o efeito total é substituição + renda. Para um bem normal, os dois puxam na mesma direção (demanda cai quando preço sobe). Para um bem inferior, puxam em sentidos opostos — e o resultado depende de quem é mais forte.

### 5.4.1 Implicações da Equação de Slutsky

Com a Equação de Slutsky em mãos, podemos extrair consequências cruciais para a teoria da demanda:

1. **Para o próprio preço** (\(i = j\)): \(\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial h_i}{\partial p_i}}_{\leq 0} - x_i \frac{\partial x_i}{\partial I}\). O efeito substituição é sempre não-positivo (pela concavidade da função dispêndio). Logo, se o bem for normal (\(\frac{\partial x_i}{\partial I} > 0\)), a demanda cai quando o preço sobe — a **Lei da Demanda** vale sem ambiguidade.

2. **Bens de Giffen**: se o bem for inferior e o efeito renda dominar o efeito substituição, \(\frac{\partial x_i}{\partial p_i} > 0\), e temos um **bem de Giffen**.[^black-knight-giffen] Esses casos são raros e exigem que o bem represente parcela significativa do orçamento — condição necessária para que o efeito renda seja suficientemente forte.

!!! definition "Bem de Giffen"
    Um bem \(i\) é dito **de Giffen** se sua demanda marshalliana é positivamente inclinada no próprio preço:

    \[
    \frac{\partial x_i}{\partial p_i} > 0
    \]

    Pela Equação de Slutsky, isso exige *simultaneamente*:

    - (a) \(\frac{\partial x_i}{\partial I} < 0\) — o bem é **inferior**;
    - (b) \(\left| x_i \frac{\partial x_i}{\partial I} \right| > \left| \frac{\partial h_i}{\partial p_i} \right|\) — o efeito renda (em valor absoluto) **supera** o efeito substituição.

    A condição (b) tende a ser satisfeita apenas quando o bem representa parcela muito elevada do orçamento, de modo que \(x_i\) seja grande o suficiente para amplificar o efeito renda. Em particular, todo bem de Giffen é inferior, mas a recíproca é falsa: um bem pode ser inferior sem ser de Giffen se o efeito substituição ainda dominar.

[^black-knight-giffen]: O bem de Giffen é o Black Knight da microeconomia: o preço sobe (perde um braço), e o consumidor compra *mais* ("'Tis but a scratch!"). O preço sobe de novo (perde outro braço), e ele insiste ("Just a flesh wound!"). A analogia falha, porém, num ponto crucial: o Black Knight é irracional; o consumidor de Giffen é perfeitamente racional — ele compra mais porque ficou tão mais pobre que não pode se dar ao luxo de *não* comprar o bem básico.

!!! idea "Intuição Econômica"
    **Em uma frase:** Um bem de Giffen é tão essencial e ocupa tanta parte do orçamento que, quando seu preço sobe, o consumidor fica tão mais pobre que acaba comprando *mais* dele, não menos.

    **Pense assim:** Pense numa família muito pobre que gasta quase tudo em farinha de mandioca. Se o preço da farinha sobe, a família não pode mais comprar carne (que já era rara). Ela fica tão mais pobre que precisa comer *ainda mais* farinha para sobreviver — o efeito renda (empobrecimento) domina o efeito substituição. Na prática, esse fenômeno é raríssimo e só foi documentado de forma robusta para o arroz entre famílias extremamente pobres na China.

    **Por que isso importa:** O paradoxo de Giffen mostra por que a Lei da Demanda não é uma lei universal — e por que programas como o Bolsa Família, ao elevar a renda, podem eliminar esse tipo de comportamento extremo.

3. **Simetria de Slutsky**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\). Os efeitos substituição cruzados são simétricos. Essa simetria, que não vale para a demanda marshalliana, é uma propriedade poderosa: ela reduz pela metade o número de parâmetros a estimar em sistemas de demanda e reflete uma propriedade profunda da dualidade entre maximização de utilidade e minimização de dispêndio.

!!! info "Prêmio Nobel — Angus Deaton (2015)"

    **Angus Stewart Deaton** (1945– ) é um economista escocês-americano, professor em Princeton. Obteve seu PhD em Cambridge e construiu carreira unindo teoria microeconômica avançada com evidência empírica rigorosa.

    **Por que ganhou o Nobel:**
    O Comitê Nobel premiou Deaton "por sua análise do consumo, da pobreza e do bem-estar". Em particular, Deaton desenvolveu o *Almost Ideal Demand System* (AIDS, junto com Muellbauer, 1980) — um sistema de equações de demanda que satisfaz automaticamente as restrições teóricas da Equação de Slutsky (simetria, homogeneidade, esgotamento da renda) e pode ser estimado com dados de orçamentos domiciliares. Além disso, seu trabalho sobre como inferir elasticidades de demanda a partir de dados de pesquisa domiciliar (onde os preços não são diretamente observados) abriu caminho para a estimação de demanda em países em desenvolvimento, incluindo o Brasil.

    **Conexão com este capítulo:**
    A Equação de Slutsky (Seção 5.4) é o núcleo teórico do trabalho de Deaton: as propriedades de simetria e semidefinição negativa da matriz de Slutsky são as restrições que o AIDS impõe na estimação econométrica. As medidas de bem-estar discutidas na Seção 5.8 (VC e VE) são também ferramentas centrais na obra de Deaton sobre pobreza e distribuição de consumo — tema revisitado na Seção "Pesquisa em Ação" deste capítulo.

!!! note "Giffen na prática: arroz na China"
    Bens de Giffen são raríssimos empiricamente. A evidência mais robusta foi documentada por [Jensen e Miller (2008)](https://doi.org/10.1257/aer.98.4.1553), que identificaram comportamento de Giffen para o arroz entre famílias extremamente pobres na província de Hunan, na China. Nessas famílias, o arroz representava parcela tão grande do orçamento que o efeito renda de um aumento de preço dominava o efeito substituição. Voltaremos a esse estudo no Apêndice.

!!! box-mundo "Box Mundo 5.1 — O experimento do arroz em Hunan: evidência causal de comportamento de Giffen"

    **Contexto:** A existência de bens de Giffen — bens cuja demanda aumenta quando o preço sobe — foi debatida por mais de um século desde que Alfred Marshall atribuiu a ideia a Sir Robert Giffen nos anos 1890. Apesar de sua importância teórica para a Equação de Slutsky (demonstrando que o efeito renda pode dominar o efeito substituição), nenhum estudo havia conseguido documentar convincentemente esse fenômeno até o experimento de campo conduzido por Robert Jensen e Nolan Miller na província de Hunan, China, publicado na *American Economic Review* em 2008.

    **Dados:** Jensen e Miller implementaram um experimento randomizado controlado (RCT) em que famílias extremamente pobres receberam subsídios aleatórios ao preço do arroz — o alimento básico que representava até 60-80% de suas calorias diárias. O resultado principal foi surpreendente: quando o subsídio reduzia o preço do arroz, as famílias consumiam *menos* arroz, não mais. Especificamente, um subsídio de aproximadamente 25% no preço do arroz levou a uma redução média de 10-15% no consumo de arroz entre as famílias mais pobres. Simultaneamente, essas famílias aumentaram o consumo de alimentos de maior qualidade nutricional — carne, vegetais e frutas. Em uma segunda província (Gansu), onde o alimento básico era o trigo, a evidência apontou na mesma direção, embora com significância estatística menor.

    **Análise:** O mecanismo é precisamente o previsto pela Equação de Slutsky $\eqref{eq:5.4.3}$: o arroz nessas famílias era simultaneamente (i) um bem fortemente inferior (\(\partial x_i / \partial I < 0\)) e (ii) representava parcela dominante do orçamento (\(x_i\) grande), de modo que o termo do efeito renda \(-x_i \cdot \partial x_i / \partial I > 0\) superava em magnitude o efeito substituição \(\partial h_i / \partial p_i < 0\). Quando o subsídio barateava o arroz, o ganho de poder de compra (efeito renda) era tão expressivo que as famílias podiam finalmente diversificar sua dieta, reduzindo a dependência do arroz. O estudo é particularmente valioso porque o desenho experimental — randomização do subsídio — elimina problemas de endogeneidade que comprometiam tentativas anteriores de identificar bens de Giffen com dados observacionais.

    **Fonte:** Jensen, R. T.; Miller, N. H. (2008). "Giffen Behavior and Subsistence Consumption." *The American Economic Review*, 98(4), 1553–1577.

!!! box-brasil "Box Brasil 5.3 — Slutsky na bomba: gasolina, etanol e a decomposição que o motorista faz sem saber"

    Quando o preço da gasolina sobe no Brasil, o motorista flex faz — inconscientemente — a decomposição de Slutsky em tempo real. A regra prática é conhecida: se o etanol custa menos de 70% do preço da gasolina, compensa abastecer com etanol. Essa regra é, na essência, uma heurística de *efeito substituição*.

    **Dados ANP (2019–2024):**

    | Período | Gasolina (R$/L) | Etanol (R$/L) | Razão E/G | Comportamento observado |
    |---|---|---|---|---|
    | Jan 2020 | 4,54 | 3,16 | 0,70 | Indiferente |
    | Jun 2022 (pico) | 7,39 | 5,47 | 0,74 | Gasolina preferida (ES fraco) |
    | Dez 2023 | 5,79 | 3,72 | 0,64 | Etanol preferido (ES forte) |
    | Dez 2024 | 6,15 | 4,07 | 0,66 | Etanol preferido |

    **Efeito substituição:** Quando a razão etanol/gasolina cai abaixo de 0,70, o consumo de etanol sobe e o de gasolina cai — substituição pura entre combustíveis. A ANP documenta que, em estados produtores como São Paulo, Goiás e Minas Gerais, a participação do etanol nas vendas de combustíveis varia de 35% a 55%, respondendo diretamente aos preços relativos.

    **Efeito renda:** O combustível representa 4–8% do orçamento das famílias brasileiras (POF 2017-2018). Para motoristas de aplicativo e caminhoneiros, essa participação pode chegar a 25–40% da receita bruta. Nesses casos, o efeito renda de um aumento de combustível é significativo: o motorista de aplicativo não apenas substitui gasolina por etanol (ES), mas também *reduz* o número de corridas porque o lucro líquido por corrida diminuiu (ER negativo sobre lazer). É a Equação de Slutsky em ação na gig economy.

    **Conexão com a teoria:** Combustível é um bem normal para a maioria das famílias (\(\partial x / \partial I > 0\)), de modo que ES e ER se reforçam: quando o preço sobe, a demanda cai tanto pela substituição por etanol/transporte público quanto pelo empobrecimento. A elasticidade-preço da demanda por gasolina no Brasil é estimada entre −0,3 e −0,5 no curto prazo e entre −0,7 e −1,0 no longo prazo (Santos, 2013) — consistente com substituição limitada no curto prazo (poucas alternativas imediatas) e ampla no longo prazo (troca de veículo, mudança de rota, transporte público).

    **Fontes:** ANP — Levantamento de Preços de Combustíveis; IBGE — POF 2017-2018; Santos, G. F. (2013). "Fuel demand in Brazil in a dynamic panel data approach." *Energy Economics*, 36, 229–240.

??? exercicio-resolvido "Exercício Resolvido 5.3"
    **Enunciado:** Um consumidor tem utilidade \(U(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), com preços \(p_1 = 4\), \(p_2 = 1\) e renda \(I = 80\). O preço do bem 1 cai para \(p_1' = 1\). (a) Encontre as cestas ótimas antes e depois da variação de preço. (b) Decomponha o efeito total sobre \(x_1\) em efeito substituição e efeito renda (Hicks). (c) Verifique a decomposição com a Equação de Slutsky.

    **Dados:** Cobb-Douglas com \(a = b = 1/2\), \(p_1 = 4\), \(p_2 = 1\), \(I = 80\), \(p_1' = 1\).

    **Resolução:**

    **Passo 1 — Cestas ótimas**

    Demandas marshallianas para Cobb-Douglas: \(x_i^* = \frac{a_i}{a_1 + a_2} \cdot \frac{I}{p_i}\). Com \(a_1 = a_2 = 1/2\):

    - Antes: \(x_1^0 = \frac{1}{2} \cdot \frac{80}{4} = 10\), \(x_2^0 = \frac{1}{2} \cdot \frac{80}{1} = 40\). \(U_0 = \sqrt{10 \times 40} = 20\).
    - Depois: \(x_1^1 = \frac{1}{2} \cdot \frac{80}{1} = 40\), \(x_2^1 = 40\). \(U_1 = \sqrt{40 \times 40} = 40\).

    Efeito total: \(\Delta x_1 = 40 - 10 = +30\).

    **Passo 2 — Decomposição de Hicks**

    Demanda hicksiana: \(h_1 = \bar{U} \sqrt{p_2/p_1}\).

    - Com \(\bar{U} = U_0 = 20\) e preço novo \(p_1' = 1\): \(h_1 = 20 \sqrt{1/1} = 20\).

    Efeito substituição: \(ES = h_1(p_1', U_0) - x_1^0 = 20 - 10 = +10\).

    Efeito renda: \(ER = x_1^1 - h_1(p_1', U_0) = 40 - 20 = +20\).

    Verificação: \(ES + ER = 10 + 20 = 30 = \Delta x_1\). ✓

    **Passo 3 — Verificação pela Equação de Slutsky**

    \[
    \frac{\partial x_1}{\partial p_1} = \frac{\partial h_1}{\partial p_1} - x_1 \frac{\partial x_1}{\partial I}
    \]

    - \(\frac{\partial x_1}{\partial p_1} = -\frac{I}{2p_1^2} = -\frac{80}{2 \times 16} = -2{,}5\)
    - \(\frac{\partial h_1}{\partial p_1} = -\frac{\bar{U}}{2} p_2^{1/2} p_1^{-3/2} = -\frac{20}{2} \times 1 \times 4^{-3/2} = -10 \times \frac{1}{8} = -1{,}25\)
    - \(x_1 \frac{\partial x_1}{\partial I} = 10 \times \frac{1}{2 \times 4} = 10 \times 0{,}125 = 1{,}25\)
    - Verificação: \(-1{,}25 - 1{,}25 = -2{,}5\) ✓

    **Resultado:** o efeito total (+30 unidades) decompõe-se em efeito substituição (+10) e efeito renda (+20). O efeito renda é o dobro do efeito substituição.

    **Interpretação econômica:** a forte queda de preço (de 4 para 1) gera um expressivo aumento de poder de compra. Como o bem é normal e a queda de preço é grande, o efeito renda domina. Em termos brasileiros, pense em uma redução drástica no preço da energia elétrica: parte do aumento no consumo viria da substituição de gás por eletricidade (ES), mas a maior parte viria do aumento no poder de compra permitindo consumir mais de tudo (ER).

---

## 5.5 De Cima a Baixo: A Curva de Demanda Individual

A Equação de Slutsky nos permitiu decompor o efeito de uma variação de preço em suas partes constitutivas. Agora, podemos construir e comparar as duas curvas de demanda que emergem dessa análise: a marshalliana, que observamos nos mercados reais, e a hicksiana, que isola o efeito substituição puro. Compreender as diferenças entre elas é essencial tanto para a análise positiva (o que acontece) quanto para a análise normativa (como medir o bem-estar). Uma analogia útil: a curva marshalliana é o "preço de mercado" — o que de fato se observa; a curva hicksiana é o "preço verdadeiro" — o que o economista usa para análise de bem-estar.

### 5.5.1 Demanda marshalliana (não-compensada)

A curva de demanda marshalliana relaciona preço e quantidade mantendo a renda nominal constante. É a curva observável — aquela que efetivamente descreve o comportamento do consumidor no mercado.

\[
x_i^* = x_i(p_i; \bar{p}_{-i}, \bar{I})
\]

Pela Equação de Slutsky, sua inclinação combina efeitos substituição e renda. Para bens normais, é inequivocamente negativamente inclinada — a famosa Lei da Demanda. Para bens inferiores, pode ser positivamente inclinada (caso Giffen), embora, como vimos, esse cenário exija condições bastante especiais. Em termos empíricos, é a demanda marshalliana que os economistas estimam a partir de dados de preços e quantidades observadas — seja com séries temporais de preços de mercado, seja com microdados de pesquisas domiciliares como a POF.

### 5.5.2 Demanda hicksiana (compensada)

Enquanto a demanda marshalliana reflete o comportamento efetivamente observado, a curva de demanda hicksiana responde a uma pergunta contrafactual: como a demanda variaria se o consumidor fosse permanentemente compensado de modo a manter seu nível de utilidade inalterado? Essa curva mantém a **utilidade** constante e, embora seja uma construção teórica, é fundamental para a análise de bem-estar. A demanda hicksiana é, em certo sentido, "mais pura" que a marshalliana: ela captura unicamente a resposta do consumidor a variações nos preços relativos, sem o confundimento causado pela variação no poder de compra real.

\[
h_i = h_i(p_i; \bar{p}_{-i}, \bar{U})
\]

Como captura apenas o efeito substituição, é **sempre** negativamente inclinada (ou nula). Para bens normais, a curva hicksiana é mais inclinada (menos elástica) que a marshalliana, pois o efeito renda reforça o efeito substituição na marshalliana; para bens inferiores, a situação se inverte e a hicksiana é menos inclinada. Essa diferença de inclinação não é apenas teórica: ela implica que a elasticidade estimada a partir de dados observados (marshalliana) superestima a elasticidade de substituição pura (hicksiana) para bens normais, e subestima para bens inferiores.

!!! note "Relação geométrica"
    As curvas marshalliana e hicksiana se cruzam no ponto correspondente ao preço e à renda iniciais. A partir desse ponto, a marshalliana diverge conforme o efeito renda se acumula.

<iframe src="/micro-book/graficos/cap05/demanda-marshalliana-hicksiana.html" title="Figura 5.3 — Demanda marshalliana (vermelha) vs hicksiana (azul)" class="graph-iframe" style="height:720px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 5.3 — Demanda marshalliana (vermelha) vs hicksiana (azul).** Painel superior: curvas de indiferença e restrição orçamentária no espaço de bens. Painel inferior: curvas de demanda derivadas. Para bens normais, a hicksiana é mais inclinada. A área sombreada representa o excedente do consumidor.
</div>

---

## 5.6 A Demanda Sem Ilusão de Renda: Hicksiana e Suas Propriedades

A seção anterior apresentou as curvas de demanda marshalliana e hicksiana de forma intuitiva e gráfica. Agora, aprofundamos as propriedades formais da demanda compensada, que desempenham papel central tanto na teoria pura quanto na análise empírica. Essas propriedades geram restrições testáveis sobre o comportamento observado do consumidor — permitindo verificar se os dados são compatíveis com a hipótese de racionalidade. O Exercício 5.10 ao final do capítulo convida o leitor a demonstrar formalmente que a matriz de Slutsky é simétrica e negativa semidefinida.

A demanda hicksiana \(h_i(\mathbf{p}, \bar{U})\) pode ser obtida a partir da **função dispêndio** \(E(\mathbf{p}, \bar{U})\):

\[
h_i(\mathbf{p}, \bar{U}) = \frac{\partial E(\mathbf{p}, \bar{U})}{\partial p_i} \label{eq:5.6.4} \tag{5.6.4}
\]

Este é o **Lema de Shephard** — a equação $\eqref{eq:5.6.4}$ —, que já utilizamos na demonstração da equação de Slutsky $\eqref{eq:5.4.3}$.

!!! definition "Propriedades da demanda hicksiana"
    1. **Homogeneidade de grau zero em preços**: \(h_i(\alpha \mathbf{p}, \bar{U}) = h_i(\mathbf{p}, \bar{U})\).
    2. **Negatividade própria**: \(\frac{\partial h_i}{\partial p_i} \leq 0\).
    3. **Simetria**: \(\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}\).
    4. **Semidefinição negativa da matriz de Slutsky**: a matriz \(\mathbf{S}\) com elementos \(s_{ij} = \frac{\partial h_i}{\partial p_j}\) é simétrica e negativa semidefinida.

A propriedade 4 é particularmente poderosa: dela decorrem restrições testáveis sobre o comportamento da demanda observada, servindo como base para a análise empírica e para a teoria da preferência revelada. Em termos práticos, a simetria (propriedade 3) significa que se um aumento no preço do açúcar eleva a demanda por adoçante em 5%, então um aumento equivalente no preço do adoçante deve elevar a demanda por açúcar na mesma proporção (após controlar pelas diferenças de participação orçamentária). Sistemas de demanda como o *Almost Ideal Demand System* (AIDS), desenvolvido por Deaton e Muellbauer (1980), impõem essas restrições diretamente na estimação econométrica.
