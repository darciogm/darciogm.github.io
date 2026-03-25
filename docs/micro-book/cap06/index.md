# Capítulo 6 — Substitutos, Complementos e Relações Complicadas

> *"Nenhum bem é uma ilha: a demanda por cada produto depende dos preços de todos os outros."*

O Capítulo 5 olhou para cada bem isoladamente: "o preço subiu, a demanda caiu". Mas no mundo real, bens não vivem sozinhos. Quando a gasolina sobe, o etanol sorri. Quando o preço do churrasco dispara, o frango agradece. E quando o governo taxa refrigerante, o dono da água de coco comemora. Este capítulo é sobre essas **relações entre bens**: quem é substituto de quem, quem é complemento, e por que a resposta depende de como você define a pergunta.

A relevância é imediata: no Brasil, a decisão entre gasolina e etanol na bomba depende dos preços relativos (a regra dos 70%); o CADE avalia se duas marcas de cerveja são "substitutas próximas" antes de aprovar uma fusão; e a tributação seletiva sobre cigarros precisa saber se o cachimbo é substituto ou não. Tudo isso é elasticidade cruzada — o tema deste capítulo.

Este capítulo encerra a Parte II do livro, fornecendo as ferramentas necessárias para a análise completa do lado da demanda. A jornada que fizemos até aqui nos trouxe de preferências e restrições orçamentárias (Capítulo 2) até a decomposição de Slutsky (Capítulo 5), que separou os efeitos de uma variação de preço em dois componentes interpretáveis. O instrumental de Slutsky é precisamente o que precisamos agora: o efeito substituição cruzado — o elemento fora da diagonal da matriz de Slutsky — é o núcleo analítico das classificações de substitutos e complementos que estudaremos aqui.

**Roteiro do capítulo.** A Seção 6.1 começa com o caso mais simples — dois bens —, mostrando que a estrutura de dois bens impõe restrições fortes sobre as relações cruzadas. A Seção 6.2 introduz a classificação marshalliana (bruta), diretamente observável nos dados, e discute sua contaminação pelo efeito renda. A Seção 6.3 apresenta a classificação hicksiana (líquida), mais pura teoricamente, e mostra quando as duas classificações divergem. A Seção 6.4 generaliza a análise para muitos bens, introduzindo a matriz de Slutsky completa e suas propriedades algébricas. As Seções 6.5 e 6.6 oferecem dois caminhos para lidar com a complexidade de economias com muitos bens: o Teorema do Bem Composto de Hicks (que agrega bens em categorias tratáveis) e os modelos de Lancaster e Becker (que reformulam o próprio objeto de escolha). Por fim, a Seção 6.7 aborda a agregação da demanda do plano individual para o mercado — um problema que conecta este capítulo ao estudo do equilíbrio geral (Capítulo 12).

Este capítulo encerra a Parte II do livro, fornecendo as ferramentas necessárias para a análise completa do lado da demanda.

---

## 6.1 O Caso com Dois Bens: Efeitos Cruzados de Preço

Comecemos pelo caso mais simples — e mais traiçoeiro: uma economia com apenas dois bens. A surpresa: com só dois bens, *não existe complementaridade* (no sentido hicksiano). Se o arroz fica caro e compensamos sua renda, você *necessariamente* come mais macarrão — porque não há mais nada no cardápio. A complementaridade — café e açúcar, por exemplo — só aparece quando existe uma terceira opção. Essa armadilha conceitual já enganou muita gente boa.

Considere um consumidor que maximiza \(U(x_1, x_2)\) sujeito à restrição orçamentária \(p_1 x_1 + p_2 x_2 = I\). As funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\) dependem de ambos os preços. O **efeito cruzado de preço** é a derivada parcial:

\[
\frac{\partial x_1}{\partial p_2}
\]

Pela Equação de Slutsky (Capítulo 5), essa derivada pode ser decomposta:

\[
\frac{\partial x_1}{\partial p_2} = \underbrace{\frac{\partial h_1}{\partial p_2}}_{\text{efeito substituição cruzado}} - \underbrace{x_2 \frac{\partial x_1}{\partial I}}_{\text{efeito renda cruzado}} \label{eq:6.1.1} \tag{6.1.1}
\]

No caso de dois bens, a restrição orçamentária impõe relações fortes. Se o preço de \(x_2\) aumenta, o efeito substituição necessariamente empurra o consumidor na direção de \(x_1\) — no caso de dois bens, o efeito substituição cruzado é sempre não negativo:

\[
\frac{\partial h_1}{\partial p_2} \geq 0 \quad \text{(com dois bens)} \label{eq:6.1.2} \tag{6.1.2}
\]

Isso significa que, no sentido hicksiano, **dois bens são sempre substitutos líquidos** quando há apenas dois bens no modelo. A complementaridade só emerge com três ou mais bens.

A razão algébrica para esse resultado é direta. Pela propriedade de homogeneidade de grau zero da demanda hicksiana (Teorema de Euler para funções homogêneas), temos \(\sum_j p_j \frac{\partial h_1}{\partial p_j} = 0\), o que implica:

\[
p_1 \frac{\partial h_1}{\partial p_1} + p_2 \frac{\partial h_1}{\partial p_2} = 0
\]

Como \(\frac{\partial h_1}{\partial p_1} \leq 0\) (lei da demanda compensada), o segundo termo deve ser não negativo — e como \(p_2 > 0\), concluímos \(\frac{\partial h_1}{\partial p_2} \geq 0\). A equação é a versão em dois bens da restrição \eqref{eq:6.4.5}, que exploraremos na Seção 6.4.

Vale notar que esse resultado tem uma conexão direta com o Teorema da Função Implícita (Capítulo 2): as condições de primeira ordem da minimização de dispêndio geram um sistema implícito, e a matriz de Slutsky nada mais é do que a Jacobiana das demandas compensadas em relação a preços — estrutura que garante as propriedades de simetria e semidefinição negativa que embasam o resultado acima. O caso de dois bens é um cenário tão restrito que a estrutura da matriz de Slutsky \(2 \times 2\) — com diagonal negativa e determinante não negativo — força o único elemento fora da diagonal a ser positivo. A riqueza analítica das relações de substituição e complementaridade, incluindo a possibilidade de complementaridade líquida, só se manifesta plenamente quando o número de bens é três ou mais.

!!! idea "Intuição Econômica"
    **Em uma frase:** Com apenas dois bens, eles são sempre substitutos líquidos — a complementaridade só emerge quando existe uma terceira opção.

    **Pense assim:** Se no cardápio do almoço só há arroz e macarrão, e o arroz fica mais caro (com compensação de renda), você necessariamente come mais macarrão — não tem para onde fugir. Só quando existe uma terceira opção (salada) é que dois bens podem ser complementares líquidos.

    **Por que isso importa:** Modelos com apenas dois bens podem ser enganosos para análise de política tributária: a complementaridade, que é fundamental para a regra de Ramsey de tributação ótima, simplesmente não aparece.

---

## 6.2 Substitutos e Complementos Brutos (Marshallianos)

OK, com dois bens o resultado é trivial. Mas no supermercado real existem milhares de bens, e as relações são ricas: café sobe → açúcar cai (complementos); gasolina sobe → etanol sobe (substitutos); gasolina sobe → carros usados... caem? (complementos distantes). A classificação mais intuitiva — a que você "vê" diretamente nos dados de vendas — usa as derivadas cruzadas da demanda marshalliana, e é a que apresentamos agora.

!!! definition "Substitutos e complementos brutos"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos brutos** se \(\frac{\partial x_i}{\partial p_j} > 0\): quando o preço de \(j\) sobe, a demanda por \(i\) aumenta.
    - **Complementos brutos** se \(\frac{\partial x_i}{\partial p_j} < 0\): quando o preço de \(j\) sobe, a demanda por \(i\) cai.
    - **Independentes** se \(\frac{\partial x_i}{\partial p_j} = 0\).

!!! note "Assimetria da classificação bruta"
    A classificação marshalliana **não é necessariamente simétrica**: pode ocorrer que \(\frac{\partial x_1}{\partial p_2} > 0\) enquanto \(\frac{\partial x_2}{\partial p_1} < 0\). Isso decorre da interferência do efeito renda, que contamina a relação cruzada de forma assimétrica. Essa é uma das razões pelas quais a classificação hicksiana é teoricamente preferida.

!!! warning "Cuidado: a classificação bruta pode ser assimétrica"
    Um erro frequente é supor que, se \(x_1\) é substituto bruto de \(x_2\), então \(x_2\) também é substituto bruto de \(x_1\). Isso não é garantido. Considere dois bens normais com efeitos renda muito diferentes: suponha que o bem 2 tenha elasticidade-renda alta (um luxo), enquanto o bem 1 tenha elasticidade-renda baixa (uma necessidade). Um aumento em \(p_2\) empobrece o consumidor substancialmente (ele gastava muito em bem 2), reduzindo a demanda por \(x_1\) via efeito renda — o que pode fazer \(\frac{\partial x_1}{\partial p_2} < 0\) mesmo que o efeito substituição seja positivo. No sentido oposto, um aumento em \(p_1\) empobrece menos o consumidor (ele gastava pouco em bem 1), e o efeito substituição pode dominar, gerando \(\frac{\partial x_2}{\partial p_1} > 0\).

    Em termos formais, da Equação de Slutsky temos:
    \[
    \frac{\partial x_1}{\partial p_2} - \frac{\partial x_2}{\partial p_1} = x_2 \frac{\partial x_1}{\partial I} - x_1 \frac{\partial x_2}{\partial I}
    \]
    A diferença entre as duas derivadas cruzadas marshallianas é proporcional à diferença entre os gastos ponderados pelas elasticidades-renda — em geral diferente de zero. Somente a classificação hicksiana é garantidamente simétrica, pois \(\frac{\partial h_1}{\partial p_2} = \frac{\partial h_2}{\partial p_1}\) é uma propriedade da matriz de Slutsky que não depende de hipóteses sobre o efeito renda.

!!! idea "Intuição Econômica"
    **Em uma frase:** Substitutos são bens que competem pela sua escolha; complementos são bens que andam juntos — e a classificação muda conforme você isole ou não o efeito renda.

    **Pense assim:** No posto de gasolina, gasolina e etanol são substitutos — se um encarece, você abastece com o outro. Já arroz e feijão são complementos: ninguém pede "só arroz" no prato feito. A classificação "bruta" (marshalliana) mistura o efeito renda; a "líquida" (hicksiana) isola a substituição pura. Dois bens podem parecer complementos nos dados, mas ser substitutos puros quando se desconta o empobrecimento.

    **Por que isso importa:** Saber se dois bens são substitutos ou complementos é essencial para prever os efeitos de impostos seletivos — por exemplo, tributar refrigerante aumenta a demanda por água mineral (substitutos), mas não por copos descartáveis (complementos).

**Exemplos para o contexto brasileiro:**

- **Carne bovina e frango**: substitutos brutos — quando a carne bovina encarece, a demanda por frango tende a subir. Dados do [CEPEA/ESALQ](https://www.cepea.esalq.usp.br) mostram que, entre 2019 e 2021, a arroba do boi gordo subiu cerca de 80% em termos reais, período em que o consumo per capita de frango cresceu significativamente.
- **Automóvel e gasolina**: complementos brutos — se o preço do automóvel sobe, as vendas caem e, consequentemente, a demanda por gasolina também.
- **Arroz e feijão**: complementos brutos — o par arroz-feijão forma a base da alimentação brasileira e o consumo tende a se mover na mesma direção. Segundo a POF/[IBGE](https://www.ibge.gov.br) 2017-2018, o arroz e feijão estão presentes em mais de 70% dos domicílios brasileiros.

É importante compreender por que a classificação marshalliana, apesar de seus problemas teóricos de assimetria, continua sendo amplamente utilizada em estudos empíricos. A razão é simples: ela é diretamente observável. Os econometristas estimam as funções de demanda marshalliana a partir de variações nos preços de mercado e nas quantidades compradas — dados que os institutos de pesquisa (IBGE, IPEA, Ipespe) efetivamente coletam. Para estimar as demandas hicksianas seria necessário observar as demandas a utilidade constante, o que requer informações adicionais sobre a função utilidade ou a função dispêndio que dificilmente estão disponíveis diretamente. Por isso, o economista aplicado frequentemente trabalha com a classificação marshalliana e, quando necessário, usa a Equação de Slutsky para inferir as relações hicksianas a partir das estimativas marshallianas e de informações sobre a elasticidade-renda.

A palavra "bruta" na expressão "substituto bruto" evoca justamente essa contaminação: a derivada \(\frac{\partial x_i}{\partial p_j}\) mistura, de forma inseparável, a resposta substitutiva pura (a tendência de trocar um bem por outro quando seus preços relativos mudam) com a resposta de renda (a redução no poder de compra que acompanha toda elevação de preço). A classificação bruta não é errada — ela descreve fielmente o comportamento observado no mercado. Mas é incompleta como base teórica, porque não revela a estrutura subjacente das preferências.

??? exercicio-resolvido "Exercício Resolvido 6.1 — Elasticidade-preço cruzada com Cobb-Douglas"

    **Enunciado.** Considere a função de utilidade Cobb-Douglas \(U(x,y) = x^a y^{1-a}\), com \(0 < a < 1\), preços \(p_x, p_y\) e renda \(I\).

    (a) Derive as demandas marshallianas.

    (b) Calcule a elasticidade-preço cruzada da demanda por \(x\) em relação a \(p_y\).

    (c) Interprete o resultado à luz da classificação bruta (marshalliana).

    **Solução.**

    **(a)** As demandas marshallianas da Cobb-Douglas são:

    \[
    x^* = \frac{aI}{p_x}, \qquad y^* = \frac{(1-a)I}{p_y}
    \]

    **(b)** A elasticidade-preço cruzada de \(x\) em relação a \(p_y\) é:

    \[
    \varepsilon_{x, p_y} = \frac{\partial x^*}{\partial p_y} \cdot \frac{p_y}{x^*}
    \]

    Como \(x^* = \frac{aI}{p_x}\) não depende de \(p_y\):

    \[
    \frac{\partial x^*}{\partial p_y} = 0 \implies \varepsilon_{x, p_y} = 0
    \]

    **(c)** Na Cobb-Douglas, os bens são **independentes** na classificação bruta: a demanda por cada bem depende apenas de seu próprio preço e da renda, nunca do preço do outro bem. Isso ocorre porque o efeito substituição cruzado (positivo, pois temos dois bens) é exatamente compensado pelo efeito renda cruzado (negativo, pois ambos são bens normais). Pela Equação de Slutsky:

    \[
    \underbrace{\frac{\partial x}{\partial p_y}}_{=\,0} = \underbrace{\frac{\partial h_x}{\partial p_y}}_{>\,0} - \underbrace{y \cdot \frac{\partial x}{\partial I}}_{>\,0}
    \]

    Os dois efeitos se cancelam perfeitamente — uma propriedade especial da Cobb-Douglas.

---

## 6.3 Substitutos e Complementos Líquidos (Hicksianos)

A classificação marshalliana tem um defeito: ela está "suja" pelo efeito renda. Quando a gasolina sobe, o consumidor fica mais pobre — e esse empobrecimento afeta a demanda por *todos* os bens, não apenas pelo substituto natural (etanol). O efeito renda pode fazer dois bens que são genuinamente substitutos parecerem complementos nos dados brutos. É como tentar ouvir uma música com ruído de fundo: o sinal está lá, mas contaminado. A classificação **hicksiana** (compensada) é o filtro que remove o ruído — ela usa a demanda hicksiana, que isola o efeito substituição puro.

!!! definition "Substitutos e complementos líquidos (hicksianos)"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos líquidos** (ou substitutos hicksianos) se \(\frac{\partial h_i}{\partial p_j} > 0\).
    - **Complementos líquidos** (ou complementos hicksianos) se \(\frac{\partial h_i}{\partial p_j} < 0\).

Uma vantagem crucial da classificação hicksiana é a **simetria**: pela propriedade da matriz de Slutsky,

\[
\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i} \label{eq:6.3.3} \tag{6.3.3}
\]

Logo, pela equação $\eqref{eq:6.3.3}$, se o bem \(i\) é substituto líquido de \(j\), então \(j\) é necessariamente substituto líquido de \(i\). Não há ambiguidade.

!!! tip "Quando a classificação bruta e líquida divergem"
    A classificação bruta e líquida podem divergir quando o efeito renda é grande o suficiente para dominar o efeito substituição. Por exemplo, dois bens podem ser substitutos líquidos mas complementos brutos se o aumento no preço de um deles causar uma queda de renda real tão grande que reduza a demanda de ambos.

A simétria da classificação hicksiana tem uma implicação prática relevante para o design de políticas públicas. Quando um governo tributa um bem com o objetivo de reduzir seu consumo (como um imposto sobre cigarros ou bebidas açucaradas), a relação hicksiana com os demais bens determina quais produtos se beneficiarão ou serão prejudicados pela tributação. Como a classificação hicksiana é simétrica, se o cigarro é substituto hicksiano do cachimbo, então o cachimbo também é substituto hicksiano do cigarro — e o imposto sobre cigarro aumentará a demanda compensada por cachimbo da mesma forma que um imposto sobre cachimbo aumentaria a demanda compensada por cigarro. Essa simetria é violada pela classificação marshalliana, o que pode levar a previsões incorretas sobre os efeitos de cascata de uma política tributária.

Do ponto de vista da teoria de bem-estar, a classificação hicksiana também é mais adequada para avaliar as perdas de eficiência geradas por impostos. A área sob a curva de demanda compensada — não a marshalliana — mede o excedente do consumidor da forma correta, uma vez que elimina o confundimento com variações de renda real. Por isso, as medidas de bem-estar como a Variação Compensatória e a Variação Equivalente (derivadas no Capítulo 5) utilizam a demanda hicksiana como base.

### 6.3.1 Relação entre as classificações

Mas qual é exatamente a relação entre as duas classificações? Quando elas concordam e quando divergem? A Equação de Slutsky nos fornece a resposta precisa. Da Equação de Slutsky:

\[
\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
\]

Se \(x_i\) é um bem normal (\(\frac{\partial x_i}{\partial I} > 0\)), o efeito renda cruzado é negativo (o aumento de \(p_j\) reduz o poder de compra, diminuindo a demanda por \(x_i\)). Assim, o efeito bruto é menor que o efeito líquido:

\[
\frac{\partial x_i}{\partial p_j} < \frac{\partial h_i}{\partial p_j}
\]

Dois bens podem ser substitutos líquidos mas complementos brutos se o efeito renda negativo exceder o efeito substituição positivo.

!!! idea "Intuição Econômica"
    **Em uma frase:** A classificação hicksiana (líquida) é a "verdadeira" relação de substituição entre bens, porque remove a contaminação do efeito renda.

    **Pense assim:** Imagine que o preço do plano de saúde sobe. Nos dados brutos, você pode observar que as famílias também reduzem o consumo de educação privada — parecendo complementos. Mas, na verdade, ambos caíram porque a família ficou mais pobre (efeito renda). Isolando esse empobrecimento (análise hicksiana), descobre-se que saúde e educação privada na verdade competem pelo mesmo orçamento — são substitutos líquidos.

    **Por que isso importa:** Políticas que subsidiam um bem (como isenção de IR para planos de saúde) podem afetar a demanda por outros bens de formas que só a decomposição de Slutsky revela corretamente.

---

O gráfico abaixo permite explorar os efeitos cruzados de preço com a função de utilidade CES. Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem, alternando entre substitutos e complementos.

<iframe src="../graficos/cap06/substitutos-complementos.html" title="Figura 6.1 — Substitutos e Complementos: Efeitos Cruzados de Preço" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 6.1 — Substitutos e Complementos: Efeitos Cruzados de Preço.** Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem.
</div>

!!! box-mundo "Box Mundo 6.1 — Elasticidades cruzadas nos mercados de energia: gás natural, carvão e a transição energética"

    **Contexto:** A transição energética global reconfigurou as relações de substituição entre fontes de energia. Nos Estados Unidos e na União Europeia, gás natural e carvão competem diretamente na geração de eletricidade: quando o preço do gás natural sobe, usinas termelétricas substituem gás por carvão, e vice-versa. Essa substituição é um dos mecanismos centrais pelos quais choques de preço de energia se propagam pelo sistema produtivo — e também pelo qual políticas de precificação de carbono podem alterar a matriz energética.

    A crise energética europeia de 2021–2022, provocada pela invasão russa da Ucrânia e pela consequente restrição no fornecimento de gás via gasoduto Nord Stream, ofereceu um "experimento natural" de larga escala para medir essas elasticidades cruzadas em tempo real.

    **Dados:** Nos EUA, Linn e Muehlenbachs (2018) estimaram uma elasticidade cruzada de substituição entre gás natural e carvão na geração elétrica entre +0,5 e +0,8 no curto prazo, indicando substituição forte. Quando o boom do shale gas reduziu o preço do gás natural americano em cerca de 70% entre 2008 e 2016, a participação do carvão na matriz elétrica dos EUA caiu de 48% para 30% — uma substituição massiva impulsionada por preços relativos, não por regulação ambiental.

    Na Europa, Burke e Yang (2016) e estudos subsequentes do Bruegel Institute estimaram elasticidades cruzadas carvão-gás entre +0,3 e +0,6 para a geração elétrica europeia. Durante a crise de 2022, com o preço spot do gás natural no TTF (Title Transfer Facility, hub europeu) atingindo picos de €340/MWh — mais de dez vezes o nível pré-crise —, a geração a carvão na Alemanha aumentou 8% e na Polônia permaneceu estável em nível já elevado, mesmo com compromissos de descarbonização assumidos sob o European Green Deal.

    **Análise:** Esses dados ilustram com precisão a teoria da seção 6.2: gás natural e carvão são substitutos brutos inequívocos na geração de eletricidade, com elasticidades cruzadas positivas e economicamente significativas. A magnitude das elasticidades varia conforme a flexibilidade tecnológica das usinas (usinas dual-fuel apresentam elasticidades mais altas) e o horizonte temporal (no longo prazo, investimentos em novas usinas amplificam a substituição). Do ponto de vista hicksiano, a substituição é ainda mais forte, pois o efeito renda (encarecimento geral da energia reduz o consumo total) atenua parcialmente a resposta bruta observada. A implicação para a política climática é direta: uma taxa sobre carbono que encareça o carvão relativamente ao gás natural explora justamente essa elasticidade cruzada positiva para induzir substituição — mas a eficácia depende da magnitude específica da elasticidade, que varia entre países e horizontes temporais.

    **Fonte:** Linn, J. e Muehlenbachs, L. (2018). "The heterogeneous impacts of low natural gas prices on consumers and the environment." *Journal of Environmental Economics and Management*, 89, 1–28. Burke, P. J. e Yang, H. (2016). "The price and income elasticities of natural gas demand." *Energy Economics*, 58, 466–474. Bruegel Institute (2022). "National energy policy responses to the energy crisis." *Bruegel Datasets*.

??? exercicio-resolvido "Exercício Resolvido 6.2 — Substitutos perfeitos e efeito substituição"

    **Enunciado.** Um consumidor tem utilidade \(U(x,y) = 2x + y\), preços iniciais \(p_x = p_y = 2\) e renda \(I = 100\).

    (a) Determine a cesta ótima inicial.

    (b) Se \(p_x\) cai para 1, determine a nova cesta ótima.

    (c) Decomponha a variação na demanda por \(x\) em efeito substituição e efeito renda (Slutsky).

    **Solução.**

    **(a)** Com substitutos perfeitos, o consumidor compara as "utilidades marginais por real gasto": \(UMg_x / p_x = 2/2 = 1\) e \(UMg_y / p_y = 1/2 = 0{,}5\). Como \(UMg_x/p_x > UMg_y/p_y\), a solução é de canto: \(x^* = I/p_x = 100/2 = 50\), \(y^* = 0\).

    **(b)** Com \(p_x = 1\): \(UMg_x/p_x = 2/1 = 2 > 1/2 = UMg_y/p_y\). A solução continua de canto: \(x^* = 100/1 = 100\), \(y^* = 0\). A variação total é \(\Delta x = 100 - 50 = 50\).

    **(c)** **Efeito substituição (Slutsky):** compensamos a renda para que o consumidor possa comprar exatamente a cesta inicial aos novos preços. Custo da cesta inicial \((50, 0)\) a preços novos \((1, 2)\): \(1 \times 50 + 2 \times 0 = 50\). Com renda compensada \(I' = 50\) e preços \((1, 2)\): \(UMg_x/p_x = 2 > UMg_y/p_y = 0{,}5\), logo \(x^{ES} = 50/1 = 50\). O efeito substituição é \(50 - 50 = 0\).

    **Efeito renda:** \(\Delta x_{ER} = 100 - 50 = 50\). Toda a variação é efeito renda.

    **Interpretação:** com substitutos perfeitos lineares, quando o consumidor já consome apenas \(x\) antes e depois da mudança, o efeito substituição é zero — ele não "troca" de bem, apenas consome mais do mesmo com o aumento do poder de compra. Este é um resultado importante e frequente em provas da ANPEC.

---

## 6.4 Substituibilidade com Muitos Bens

Até aqui, trabalhamos predominantemente com dois bens — um cenário que, embora didático, impõe restrições fortes sobre as relações de substituição e complementaridade. No mundo real, os consumidores escolhem entre centenas de bens, e as relações cruzadas formam uma teia complexa. O que muda quando passamos de dois para muitos bens? A resposta envolve a **matriz de substituição de Slutsky**, uma ferramenta que organiza todos os efeitos cruzados em uma única estrutura algébrica.

Com \(n > 2\) bens, a análise se torna mais rica e complexa. A **matriz de substituição de Slutsky** \(\mathbf{S}\), com elementos:

\[
s_{ij} = \frac{\partial h_i}{\partial p_j}, \quad i, j = 1, \ldots, n \label{eq:6.4.4} \tag{6.4.4}
\]

é simétrica (\(s_{ij} = s_{ji}\)) e negativa semidefinida. Os elementos diagonais são necessariamente não positivos:

\[
s_{ii} = \frac{\partial h_i}{\partial p_i} \leq 0
\]

mas os elementos fora da diagonal podem ter qualquer sinal. No entanto, nem todos podem ser negativos:

!!! theorem "Teorema: Predominância da substituibilidade líquida"
    Para cada bem \(i\), a soma ponderada dos efeitos substituição cruzados (com pesos iguais aos preços) é não negativa. Mais precisamente, pela homogeneidade de grau zero da demanda hicksiana:

    \[
    \sum_{j=1}^n p_j \frac{\partial h_i}{\partial p_j} = 0 \label{eq:6.4.5} \tag{6.4.5}
    \]

    Como \(\frac{\partial h_i}{\partial p_i} \leq 0\), a equação $\eqref{eq:6.4.5}$ implica que pelo menos alguns dos termos cruzados devem ser positivos. Logo, **todo bem deve ter pelo menos um substituto líquido**.

!!! idea "Intuição Econômica"
    **Em uma frase:** Nenhum bem existe em isolamento — se um bem fica mais caro (com utilidade mantida constante), o consumidor precisa migrar para algum outro bem, tornando todo bem substituto líquido de pelo menos um outro.

    **Pense assim:** Suponha que todos os bens fossem complementos líquidos de um bem específico — digamos, que o aumento no preço da farinha de trigo reduzisse a demanda compensada por pão, macarrão, biscoito e bolo simultaneamente. Mas isso é impossível: o consumidor precisa alocar sua renda compensada *para algum lugar*. Se gasta menos com tudo relacionado a trigo, precisará gastar mais com carne, legumes, laticínios ou qualquer outro grupo — que são, portanto, substitutos líquidos do trigo. A equação \eqref{eq:6.4.5} formaliza exatamente essa inevitabilidade: a soma ponderada dos efeitos substituição cruzados de qualquer bem deve ser positiva para compensar o efeito substituição próprio negativo.

    **Por que isso importa:** Para qualquer política que encareça um grupo de bens (imposto sobre alimentos ultraprocessados, taxação de combustíveis fósseis), haverá necessariamente bens que se beneficiarão como substitutos líquidos. Identificar esses bens é parte essencial da análise de impacto.

Essa propriedade implica que, embora a complementaridade líquida exista, a substituibilidade é o fenômeno "dominante" no sentido de que não pode haver um bem que seja complemento líquido de todos os outros. Intuitivamente, se o preço de um bem sobe (mantendo a utilidade constante), o consumidor precisa redistribuir seu consumo em direção a *algum* outro bem — a substituição é, em certo sentido, inevitável.

A matriz de Slutsky também tem implicações empíricas diretas. Suas propriedades — simetria e semidefinição negativa — são condições testáveis que os econometras utilizam para verificar se os dados de demanda são consistentes com a teoria do consumidor racional. Estudos que estimam sistemas completos de demanda (como o modelo AIDS de Deaton e Muellbauer, apresentado na seção de Pesquisa em Ação) testam a simetria de Slutsky como hipótese estatística. Quando essa hipótese é rejeitada pelos dados, pode indicar agregação imprópria de bens, violação da hipótese de consumidor representativo, ou simplesmente erro de medição. No Brasil, estudos baseados na POF e em dados de scanner de supermercados têm testado essas restrições para categorias alimentares, com resultados que geralmente suportam a simetria — mas frequentemente rejeitam a semidefinição negativa estrita, sugerindo a presença de efeitos de hábito ou complementaridade dinâmica não capturados pelo modelo estático.

---

## 6.5 Bens Compostos (Teorema do Bem Composto de Hicks)

Com \(n\) bens, a matriz de Slutsky tem \(n^2\) entradas. Para 100 bens, são 10.000 elasticidades cruzadas. Ninguém tem dados suficientes para estimar tudo isso. A solução prática: agrupar bens em categorias ("alimentação", "transporte", "lazer") e tratar cada categoria como um único "super-bem". Mas cuidado: agrupar bens arbitrariamente pode gerar erros graves. O **Teorema do Bem Composto de Hicks** diz *quando* a agregação é legítima — e a condição é surpreendentemente simples.

!!! theorem "Teorema do Bem Composto de Hicks"
    Se um grupo de bens tem seus preços variando na mesma proporção, então esse grupo pode ser tratado como um único **bem composto**, cujo "preço" é um índice dos preços do grupo e cuja "quantidade" é o gasto real com o grupo.

    Formalmente: se \(p_j = \alpha \bar{p}_j\) para todo \(j \in G\) (onde \(\bar{p}_j\) é o preço-base e \(\alpha\) varia), então o grupo \(G\) pode ser representado por um bem composto \(y = \sum_{j \in G} \bar{p}_j x_j\), com preço \(\alpha\).

!!! proof "Demonstração: Teorema do Bem Composto de Hicks"
    **Passo 1: Configuração.**

    Considere \(n\) bens, divididos em dois grupos: o bem 1 (ou grupo de interesse) e o grupo \(G = \{2, 3, \ldots, n\}\). Suponha que os preços dos bens em \(G\) variem proporcionalmente:

    \[
    p_j = \alpha \bar{p}_j, \quad j \in G
    \]

    onde \(\bar{p}_j\) são preços-base fixos e \(\alpha > 0\) é um escalar.

    **Passo 2: Restrição orçamentária.**

    A restrição orçamentária do consumidor é:

    \[
    p_1 x_1 + \sum_{j \in G} p_j x_j = I
    \]

    Substituindo \(p_j = \alpha \bar{p}_j\):

    \[
    p_1 x_1 + \alpha \sum_{j \in G} \bar{p}_j x_j = I
    \]

    **Passo 3: Definição do bem composto.**

    Definamos o bem composto \(y \equiv \sum_{j \in G} \bar{p}_j x_j\), que representa o gasto real (a preços-base) com os bens do grupo \(G\). A restrição orçamentária torna-se:

    \[
    p_1 x_1 + \alpha \cdot y = I
    \]

    que tem exatamente a forma de uma restrição com dois bens: \(x_1\) ao preço \(p_1\) e \(y\) ao preço \(\alpha\).

    **Passo 4: Otimização em dois estágios.**

    O consumidor pode otimizar em dois estágios:

    1. *Estágio interno*: para um dado nível de gasto com o grupo \(G\), \(M_G = \alpha y\), o consumidor aloca otimamente esse gasto entre os bens do grupo, dado que seus preços relativos \(\bar{p}_j / \bar{p}_k\) são fixos (pois todos variam proporcionalmente). Isso gera uma função de utilidade indireta para o grupo, \(\tilde{U}(y)\).

    2. *Estágio externo*: o consumidor escolhe entre \(x_1\) e \(y\) maximizando uma utilidade que depende apenas de \(x_1\) e \(y\), sujeito a \(p_1 x_1 + \alpha y = I\).

    **Passo 5: Conclusão.**

    Como a alocação interna ao grupo \(G\) depende apenas dos preços relativos dentro do grupo (que são fixos), ela pode ser tratada separadamente. No estágio externo, o grupo inteiro se comporta como um único bem com quantidade \(y\) e preço \(\alpha\). Toda a teoria de dois bens — incluindo efeitos substituição e renda — aplica-se entre \(x_1\) e o bem composto \(y\). \(\blacksquare\)

!!! tip "Aplicação prática"
    O Teorema do Bem Composto justifica o uso frequente, em exercícios e modelos aplicados, de um "bem 1" versus "todos os outros bens" (representados pelo gasto restante). Para que a agregação seja válida, é necessário que os preços relativos dentro do grupo permaneçam aproximadamente constantes. Quando um choque afeta apenas um subgrupo (por exemplo, uma seca que encarece frutas mas não cereais), o teorema perde validade para o grupo "alimentos" como um todo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O Teorema do Bem Composto permite ao economista trabalhar com dois bens mesmo quando a economia tem milhares — desde que os bens "de fundo" se movam em bloco.

    **Pense assim:** Imagine que você analise o consumo de cinema versus "tudo mais que compro no mês". Para que essa simplificação seja válida, não é preciso que o preço de cada item do "tudo mais" (aluguel, alimentação, transporte, roupas...) seja constante em nível absoluto — apenas que eles variem proporcionalmente entre si. Se a inflação geral encarece todo o "tudo mais" na mesma proporção de 5%, o bloco se comporta como um único bem que ficou 5% mais caro, e você pode analisar cinema versus esse bloco como um problema de dois bens. Quando os preços relativos dentro do bloco mudam (energia elétrica sobe 30% enquanto alimentos sobem 5%), o teorema falha e a análise de dois bens pode induzir a conclusões errôneas.

    **Por que isso importa:** Modelos macroeconômicos usam frequentemente a dicotomia "bem tradeable versus bem non-tradeable" ou "bem importado versus bem doméstico" — ambas são aplicações implícitas do Teorema do Bem Composto. A validade dessas dicotomias depende de que os preços relativos dentro de cada grupo sejam razoavelmente estáveis, o que pode não se verificar durante choques assimétricos como os causados pela pandemia de 2020 ou pelo conflito na Ucrânia em 2022.

!!! box-brasil "Box Brasil: Preços administrados e o Bem Composto no IPCA"
    O IPCA, calculado pelo IBGE, distingue entre **preços livres** (cerca de 75% do índice) e **preços administrados** (cerca de 25%), que incluem combustíveis, energia elétrica, planos de saúde e tarifas de transporte público. Os preços administrados são reajustados por fórmulas contratuais vinculadas a índices como o IGP-M ou o IPCA do período anterior.

    Essa distinção ilustra quando o Teorema do Bem Composto **funciona** e quando **falha**:

    - **Funciona (aproximadamente):** dentro do grupo "alimentos in natura", os preços tendem a flutuar em resposta a choques climáticos comuns (seca, geada), mantendo os preços relativos razoavelmente estáveis. Podemos tratá-los como um bem composto "alimentos".
    - **Falha:** quando a Petrobras reajusta o preço da gasolina (preço administrado) enquanto os preços de alimentos e serviços seguem trajetórias distintas, os preços relativos entre os grupos mudam substancialmente. Nesse caso, não se pode agregar "gasolina + alimentos" em um único bem composto.

    Segundo dados do [BCB](https://www.bcb.gov.br), entre 2000 e 2023 os preços administrados acumularam alta de cerca de 530%, enquanto os preços livres subiram cerca de 350% — uma divergência persistente que viola a hipótese de proporcionalidade e exige análise desagregada.

---

O gráfico abaixo ilustra o Teorema do Bem Composto. O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)), que agrega os demais bens cujos preços variam proporcionalmente. Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.

<iframe src="../graficos/cap06/bem-composto.html" title="Figura 6.2 — Teorema do Bem Composto de Hicks" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 6.2 — Teorema do Bem Composto de Hicks.** O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)). Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.
</div>

---

## 6.6 Produção Doméstica, Atributos dos Bens e Preços Implícitos

Pergunta incômoda: por que alguém "deseja" arroz? Ninguém acorda de manhã sonhando com grãos brancos. O que a pessoa quer são nutrientes, saciedade, sabor — *atributos* do arroz, não o arroz em si. Da mesma forma, ninguém compra um apartamento pelo concreto: compra metragem, localização, vista, silêncio. Essa observação aparentemente trivial inspira duas reformulações radicais da teoria do consumidor.

### 6.6.1 O modelo de Lancaster

A teoria tradicional assume que o consumidor obtém utilidade diretamente dos bens. Kelvin **Lancaster** (1966) propôs uma reformulação provocativa: os bens são desejados não por si mesmos, mas pelos **atributos** (ou **características**) que contêm. Um automóvel não é consumido como "automóvel", mas como um conjunto de atributos — potência, conforto, eficiência, status — que o veículo incorpora. Essa mudança de perspectiva, aparentemente sutil, tem consequências profundas: a unidade de análise deixa de ser o bem e passa a ser o atributo. A concorrência entre bens é, em última instância, concorrência entre combinações de atributos — e o preço de mercado de cada bem reflete, implicitamente, os preços sombra dos atributos que o compõem.

!!! definition "Modelo de Lancaster"
    Cada bem \(j\) contém quantidades fixas de \(m\) atributos, representadas pela matriz de tecnologia de consumo \(\mathbf{B} = [b_{kj}]\), onde \(b_{kj}\) é a quantidade do atributo \(k\) contida em uma unidade do bem \(j\). A utilidade depende dos atributos:

    \[
    U = U(z_1, z_2, \ldots, z_m) \label{eq:6.6.6} \tag{6.6.6}
    \]

    onde cada atributo é "produzido" pelo consumo dos bens:

    \[
    z_k = \sum_{j=1}^n b_{kj} x_j, \quad k = 1, \ldots, m \label{eq:6.6.7} \tag{6.6.7}
    \]

    O consumidor maximiza a equação $\eqref{eq:6.6.6}$ sujeito à relação tecnológica $\eqref{eq:6.6.7}$, à restrição orçamentária \(\mathbf{p} \cdot \mathbf{x} \leq I\) e à não negatividade \(\mathbf{x} \geq 0\).

Esse modelo gera **preços implícitos** (ou **preços hedônicos**) para os atributos. Se o número de atributos for menor que o de bens (\(m < n\)), o consumidor pode calcular o "custo" de cada unidade de atributo combinando bens de modo eficiente. Em certo sentido, Lancaster transforma o problema do consumidor em um problema de programação linear: encontrar a combinação de bens que fornece os atributos desejados ao menor custo.

!!! info "🏅 Prêmio Nobel — Daniel McFadden (2000)"

    **Daniel Little McFadden** (1937–presente) é um economista americano. Obteve o PhD na Universidade de Minnesota e foi professor em Yale, MIT e UC Berkeley. Dividiu o Nobel com James Heckman.

    **Por que ganhou o Nobel:**
    Premiado por desenvolver a teoria e os métodos para análise de escolha discreta. McFadden formulou o modelo logit condicional, que permite estimar a probabilidade de um indivíduo escolher entre alternativas discretas (modos de transporte, localização residencial, marcas) com base nos atributos de cada alternativa — conectando a teoria microeconômica da utilidade aleatória à estimação econométrica.

    **Conexão com este capítulo:**
    O modelo de Lancaster — em que consumidores valorizam atributos dos bens, não os bens em si — é a base teórica dos modelos de escolha discreta de McFadden. A abordagem de preços hedônicos discutida neste capítulo é uma aplicação direta: decompor o preço de um bem (imóvel, automóvel) em contribuições de seus atributos é exatamente o que os métodos de McFadden operacionalizam econometricamente.

### 6.6.2 Implicações

A reformulação de Lancaster pode parecer uma complicação desnecessária — afinal, por que não trabalhar diretamente com bens? A resposta é que o modelo de Lancaster explica fenômenos que a teoria tradicional não captura com facilidade:

- **Introdução de novos bens**: um novo produto é simplesmente uma nova coluna na matriz \(\mathbf{B}\). Se ele oferece uma combinação de atributos mais eficiente (menor custo por unidade de atributo), substitui bens existentes.
- **Diferenciação de produto**: marcas diferentes do "mesmo" bem oferecem combinações distintas de atributos (sabor, durabilidade, status).
- **Preços hedônicos**: o preço de um imóvel, por exemplo, pode ser decomposto em preços implícitos de localização, metragem, número de quartos e outros atributos.

A **análise de preços hedônicos** — desenvolvida formalmente por Sherwin Rosen (1974) — é a operacionalização econométrica do modelo de Lancaster. Rosen mostrou que, em mercados competitivos de bens diferenciados, o preço de equilíbrio de um bem é uma função dos seus atributos, e que as derivadas dessa função em relação a cada atributo revelam os "preços implícitos" (ou "preços hedônicos") que o mercado atribui a cada característica. Em equilíbrio, o preço implícito de um atributo reflete tanto a disposição marginal a pagar dos consumidores quanto o custo marginal de oferta desse atributo — uma estrutura que generaliza a análise de oferta e demanda do mercado de atributos.

No Brasil, a abordagem hedônica tem sido amplamente aplicada ao mercado imobiliário, onde os atributos locacionais — proximidade de estações de metrô, escola de alta qualidade, parques urbanos, índices de criminalidade — podem ser precificados implicitamente a partir dos diferenciais de preço entre imóveis com características físicas semelhantes mas localizações distintas. Essa mesma lógica é usada pelo Banco Central do Brasil para construir índices de preços imobiliários ajustados por qualidade, evitando que uma melhora na composição dos imóveis vendidos seja confundida com inflação de preços.

!!! box-brasil "Box Brasil: Preços hedônicos e o índice FipeZap no mercado imobiliário"
    O índice FipeZap, calculado pela Fundação Instituto de Pesquisas Econômicas (FIPE) em parceria com o portal Zap Imóveis, acompanha os preços de venda e aluguel de imóveis residenciais em mais de 50 cidades brasileiras. A metodologia central é baseada em **modelos de preços hedônicos** — uma implementação direta do arcabouço de Rosen (1974), que por sua vez operacionaliza o modelo de Lancaster: o preço de cada imóvel é regredido sobre seus atributos físicos (área útil, número de quartos e banheiros, vagas de garagem, andar, presença de elevador) e locacionais (bairro, distância de transporte público, índice de walkability).

    O índice FipeZap de março de 2024 registrava preço médio de venda de R$ 9.082/m² em São Paulo e R$ 11.032/m² no Rio de Janeiro. Mas a diferença entre bairros dentro de uma mesma cidade é ainda mais reveladora: no Rio de Janeiro, o preço médio no Leblon superava R$ 20.000/m², enquanto em Campo Grande (zona oeste) ficava abaixo de R$ 4.000/m². Essa diferença de cinco vezes não reflete apenas metragem ou número de quartos — ela embute o "preço implícito" de atributos locacionais como amenidades urbanas (proximidade de praias, parques, estabelecimentos de saúde e educação), segurança e acesso a transporte.

    A CBIC (Câmara Brasileira da Indústria da Construção) utiliza abordagens semelhantes para analisar o custo de construção por componente, separando o preço do insumo (cimento, aço, mão de obra) do atributo que ele confere ao imóvel. O Banco Central do Brasil, por sua vez, constrói seu Índice de Preços de Imóveis Residenciais (IVG-R) utilizando regressões hedônicas para controlar por mudanças na composição dos imóveis financiados ao longo do tempo — evitando que oscilações no mix de imóveis (por exemplo, mais apartamentos de alto padrão em um período) sejam confundidas com variações reais de preço.

    Do ponto de vista microeconômico, o FipeZap nos permite estimar os preços implícitos dos atributos: estudos aplicados ao mercado paulistano estimam que a proximidade de uma estação de metrô agrega entre R$ 400 e R$ 1.200/m² ao preço do imóvel, dependendo do bairro — o "preço hedônico" da acessibilidade. Da mesma forma, a presença de uma escola pública de qualidade no entorno valoriza o imóvel, revelando a disposição a pagar das famílias pelo atributo "educação de proximidade".

### 6.6.3 Modelo de produção doméstica de Becker

Enquanto Lancaster enfatiza os atributos dos bens, Gary **Becker** (1965) chamou atenção para um recurso escasso que a teoria tradicional ignora: o *tempo*. Becker propôs que as famílias são unidades produtivas que combinam bens de mercado com tempo para gerar **commodities domésticas** que geram utilidade. Por exemplo, uma refeição exige ingredientes (bens) e tempo de preparo (trabalho doméstico). Formalmente:

\[
z_k = f_k(x_k, t_k) \label{eq:6.6.8} \tag{6.6.8}
\]

onde \(x_k\) são bens de mercado e \(t_k\) é o tempo dedicado à atividade \(k\). O consumidor maximiza \(U(z_1, \ldots, z_m)\) sujeito a restrições de orçamento monetário e de tempo total.

O preço implícito de cada commodity doméstica incorpora tanto o custo dos bens quanto o custo de oportunidade do tempo, o que explica, por exemplo, por que famílias de renda mais alta tendem a consumir mais refeições fora do domicílio — o custo de oportunidade do tempo de preparo é elevado. No Brasil, esse fenômeno é claramente documentado pela POF: a parcela do orçamento destinada à alimentação fora do domicílio cresce monotonicamente com a renda, passando de cerca de 14% nas classes mais baixas para mais de 40% nas classes mais altas. O modelo de Becker captura essa regularidade de forma natural — não porque os ricos "gostam mais" de comer fora, mas porque seu tempo vale mais.

O modelo de Becker e o modelo de Lancaster compartilham uma mesma intuição profunda: o que realmente interessa ao consumidor não são os bens de mercado em si, mas o que eles *produzem* — seja em termos de atributos (Lancaster) seja em termos de commodities domésticas combinadas com tempo (Becker). Ambos os modelos implicam que a substituição e a complementaridade entre bens de mercado são, em última análise, derivadas das relações de substituição e complementaridade no espaço dos atributos ou das commodities domésticas.

Essa perspectiva também conecta este capítulo ao Capítulo 12, sobre equilíbrio geral. Em uma economia de equilíbrio geral, os preços dos bens de mercado refletem, em equilíbrio, os preços implícitos dos atributos que eles fornecem — uma visão que tem inspirado a economia ambiental (onde atributos como qualidade do ar ou biodiversidade precisam ser precificados implicitamente) e a economia urbana (onde o preço da terra reflete o valor capitalizado de amenidades locacionais, como na abordagem hedônica do FipeZap descrita acima).

---

## 6.7 Agregação da Demanda: Do Individual ao Mercado

Até aqui, estudamos um consumidor solitário fazendo escolhas perfeitas. Mas o mercado tem milhões de consumidores — velhos e jovens, ricos e pobres, racionais e impulsivos. A operação óbvia é somar todas as demandas individuais. Mas somar é inocente? A demanda de mercado herda as boas propriedades (Slutsky, homogeneidade) da demanda individual? Podemos fingir que existe um "brasileiro médio" cujas preferências representam as de todos? A resposta curta: depende. A resposta longa é esta seção.

### 6.7.1 Demanda de mercado

A **demanda de mercado** é obtida pela soma horizontal das demandas individuais. Se há \(H\) consumidores, cada um com demanda \(x_i^h(p_1, \ldots, p_n, I^h)\), a demanda de mercado pelo bem \(i\) é:

\[
X_i(p_1, \ldots, p_n, I^1, \ldots, I^H) = \sum_{h=1}^H x_i^h(p_1, \ldots, p_n, I^h) \label{eq:6.7.9} \tag{6.7.9}
\]

### 6.7.2 Condições para uma demanda de mercado "bem-comportada"

A soma horizontal parece inocente, mas esconde uma armadilha. A simples soma de demandas individuais racionais não garante que a demanda agregada se comporte como se fosse gerada por um "consumidor representativo". Sob que condições podemos ignorar a distribuição de renda e trabalhar apenas com a renda total? Para isso, são necessárias condições adicionais:

!!! definition "Condição de Gorman"
    A demanda de mercado pode ser escrita como função de preços e renda **agregada** \(I = \sum_h I^h\) se, e somente se, todas as curvas de Engel individuais forem lineares e paralelas. Isso ocorre quando as preferências são **quase-homotéticas** (preferências homotéticas mais uma translação) ou, de modo mais geral, quando as funções de utilidade indireta têm a forma de Gorman:

    \[
    V^h(\mathbf{p}, I^h) = a(\mathbf{p}) + b(\mathbf{p}) \cdot I^h \label{eq:6.7.10} \tag{6.7.10}
    \]

    onde \(a(\mathbf{p})\) e \(b(\mathbf{p})\) são comuns a todos os consumidores.

Quando a condição de Gorman não é satisfeita, a demanda de mercado depende da **distribuição de renda**, não apenas da renda total. Isso tem implicações profundas para a política econômica: transferências de renda (como o Bolsa Família / Auxílio Brasil) alteram a demanda agregada mesmo que a renda total permaneça constante.

Vale notar que a condição de Gorman é bastante restritiva: ela exige não apenas que as curvas de Engel individuais sejam lineares, mas que todas as famílias tenham a mesma propensão marginal a consumir cada bem (o coeficiente \(b(\mathbf{p})\) deve ser idêntico para todos). Na prática, essa hipótese é quase sempre violada. Família de alta renda e família de baixa renda têm propensões marginais a consumir alimentos, transporte e lazer completamente distintas — reflexo de suas estruturas de preferências, mas também de restrições de crédito, hábitos de consumo e acesso diferenciado a mercados. A evidência empírica, tanto no Brasil quanto internacionalmente, rejeita sistematicamente a condição de Gorman quando testada diretamente sobre dados de consumo domiciliar.

Isso não significa que o conceito de consumidor representativo seja inútil — modelos macroeconômicos com consumidor representativo continuam sendo ferramentas analíticas poderosas. Mas o economista deve estar consciente de que esses modelos impõem implicitamente a condição de Gorman, e que suas previsões sobre os efeitos distributivos de políticas econômicas serão sistematicamente tendenciosas quando essa condição é violada. A falha de Gorman implica que não é possível separar a análise de eficiência (tamanho do bolo) da análise distributiva (divisão do bolo) — ambas interagem de forma inextricável na determinação da demanda de mercado.

!!! box-brasil "Box Brasil: Distribuição de renda e demanda agregada"
    O programa Bolsa Família, que em 2024 atendia cerca de 21 milhões de famílias, ilustra por que a condição de Gorman importa na prática. As famílias beneficiárias têm propensões marginais a consumir alimentos, gás de cozinha e vestuário muito superiores às das famílias de renda mais alta. Segundo dados da POF/IBGE 2017-2018, famílias com renda per capita de até 1 salário mínimo destinam cerca de 22% do orçamento a alimentação, enquanto famílias com renda acima de 15 salários mínimos destinam cerca de 7,6%.

    Se as curvas de Engel fossem lineares e paralelas (condição de Gorman), transferir R$ 1 de uma família rica para uma pobre não alteraria a demanda agregada por nenhum bem — apenas a composição individual mudaria. Mas como as curvas de Engel diferem entre classes de renda, a redistribuição aumenta a demanda agregada por alimentos básicos e reduz a demanda por bens de luxo, mesmo com renda total constante. A elasticidade-renda da demanda por alimentos é substancialmente maior nas classes de renda mais baixa.

!!! idea "Intuição Econômica"
    **Em uma frase:** A demanda de mercado não depende só da renda total do país, mas de como essa renda é distribuída entre as famílias.

    **Pense assim:** Se o Brasil tem um PIB de R$ 10 trilhões, a demanda agregada por arroz e feijão seria muito diferente caso essa renda estivesse dividida igualmente entre todos ou concentrada em poucos milionários. Famílias de baixa renda gastam proporcionalmente mais com alimentos básicos. Por isso, programas como o Bolsa Família alteram a composição da demanda agregada mesmo sem mudar a renda total — redistribuir é realocar demanda.

    **Por que isso importa:** Ignorar a distribuição de renda ao prever a demanda de mercado pode levar a erros graves em planejamento de produção agrícola, política tributária e avaliação de programas sociais.

### 6.7.3 Propriedades da demanda de mercado

Quando a condição de Gorman não é satisfeita — e a evidência empírica sugere que raramente o é —, a demanda de mercado perde a elegância da teoria individual. Ainda assim, mesmo sem um consumidor representativo, a demanda de mercado preserva algumas propriedades:

1. **Homogeneidade de grau zero** em preços e rendas (se cada demanda individual for homogênea de grau zero).
2. **Agregação de Engel**: \(\sum_i w_i \varepsilon_{X_i, I} = 1\), onde \(w_i\) é a parcela orçamentária agregada.
3. **A Lei da Demanda vale "em média"**: embora bens de Giffen possam existir individualmente, eles tendem a desaparecer na agregação, pois diferentes consumidores estão em pontos distintos de suas curvas de Engel.

!!! note "Suavização pela agregação"
    A agregação tende a "suavizar" irregularidades individuais. Mesmo que consumidores individuais tenham demandas com descontinuidades (por exemplo, escolhas discretas entre marcas), a demanda de mercado pode ser bem aproximada por uma função contínua e diferenciável, desde que haja heterogeneidade suficiente entre consumidores.

??? exercicio-resolvido "Exercício Resolvido 6.3 — Agregação e a condição de Gorman"

    **Enunciado.** Em uma economia há dois consumidores com as seguintes demandas pelo bem 1:

    - Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
    - Consumidor B: \(x_1^B = \frac{I^B}{3p_1}\)

    (a) Verifique se a condição de Gorman é satisfeita.

    (b) A demanda agregada pode ser escrita como função da renda total?

    (c) Mostre que uma redistribuição de renda entre A e B altera a demanda de mercado.

    **Solução.**

    **(a)** A condição de Gorman exige curvas de Engel lineares e paralelas. A curva de Engel do consumidor \(h\) relaciona \(x_1^h\) a \(I^h\) (a preços fixos):

    - Consumidor A: \(x_1^A = \frac{1}{2p_1} \cdot I^A\) — linear, com coeficiente angular \(\frac{1}{2p_1}\).
    - Consumidor B: \(x_1^B = \frac{1}{3p_1} \cdot I^B\) — linear, com coeficiente angular \(\frac{1}{3p_1}\).

    As curvas de Engel são lineares mas **não paralelas** (coeficientes angulares distintos: \(1/2p_1 \neq 1/3p_1\)). A condição de Gorman **não** é satisfeita.

    **(b)** A demanda de mercado é:

    \[
    X_1 = \frac{I^A}{2p_1} + \frac{I^B}{3p_1} = \frac{3I^A + 2I^B}{6p_1}
    \]

    Esta expressão depende de \(I^A\) e \(I^B\) separadamente — não pode ser escrita apenas como função de \(I = I^A + I^B\).

    **(c)** Sejam \(I^A = I^B = 100\) e \(p_1 = 10\):

    \[
    X_1 = \frac{100}{20} + \frac{100}{30} = 5 + 3{,}33 = 8{,}33
    \]

    Após redistribuição (\(I^A = 50\), \(I^B = 150\), mesma renda total):

    \[
    X_1 = \frac{50}{20} + \frac{150}{30} = 2{,}5 + 5 = 7{,}5
    \]

    A demanda caiu de 8,33 para 7,5 apesar de a renda total permanecer em 200. A redistribuição transferiu renda do consumidor com maior propensão marginal a consumir o bem (A) para o consumidor com menor propensão (B).

!!! box-mundo "Box Mundo 6.2 — O debate do agente representativo: a crítica de Kirman e a heterogeneidade dos consumidores"

    **Contexto:** A seção 6.7 mostrou que a agregação de demandas individuais em uma demanda de mercado "bem-comportada" exige condições restritivas (como a condição de Gorman). Essa questão está no coração de um dos debates mais persistentes da teoria econômica: é legítimo modelar uma economia inteira como se fosse um único "agente representativo"? Em 1992, o economista Alan Kirman publicou uma crítica influente argumentando que a resposta é, em geral, não — e que a prática de usar agentes representativos em modelos macroeconômicos pode gerar previsões sistematicamente incorretas.

    A crítica de Kirman não se limita a um argumento teórico abstrato. Ele demonstrou que, mesmo quando cada consumidor individual se comporta de forma perfeitamente racional, o agregado pode exibir propriedades que nenhum indivíduo isoladamente apresentaria — incluindo violações da lei da demanda, preferências reveladas inconsistentes e instabilidade de equilíbrio. Isso ocorre porque a agregação mistura efeitos de composição (quem está comprando) com efeitos de comportamento (quanto cada um compra).

    **Dados:** Dados do Consumer Expenditure Survey (CEX) dos EUA, analisados por Blundell, Browning e Crawford (2003, 2008), revelam heterogeneidade substancial nas respostas de consumo a variações de preço. Por exemplo, a elasticidade-preço da demanda por alimentos varia de -0,3 para o quintil mais rico a -0,8 para o quintil mais pobre — uma diferença de quase três vezes que nenhum agente representativo pode capturar simultaneamente. Pesquisas mais recentes usando dados de scanner (Aguiar e Hurst, 2007; Handbury, 2021) mostram que famílias de alta e baixa renda enfrentam efetivamente "preços diferentes" para os mesmos bens (por diferenças em local de compra, tamanho de embalagem e capacidade de estocar promoções), o que amplifica a heterogeneidade real para além do que os modelos tradicionais capturariam.

    No Brasil, análises baseadas na POF/IBGE confirmam padrões similares: a participação de alimentos no orçamento varia de 22% (renda per capita até 1 SM) a 7,6% (acima de 15 SM), e as elasticidades estimadas diferem sistematicamente entre estratos de renda (Almeida e Azzoni, 2016). Modelos de agente representativo calibrados com dados médios subestimam o impacto de choques de preço de alimentos sobre as famílias mais pobres em até 40%.

    **Análise:** A crítica de Kirman e a evidência empírica subsequente reforçam a mensagem central da seção 6.7: a condição de Gorman raramente é satisfeita, e tratar o mercado como se fosse um agente representativo é uma simplificação que pode ter custos analíticos significativos. A propriedade de simetria de Slutsky, que vale para cada consumidor individual, pode ser rejeitada estatisticamente nos dados agregados — não porque os indivíduos sejam irracionais, mas porque a agregação destrói a estrutura. A implicação prática é que modelos macroeconômicos que ignoram a heterogeneidade dos consumidores (modelos DSGE com agente representativo, por exemplo) podem gerar previsões enviesadas sobre os efeitos de políticas tributárias, transferências de renda e choques de preços relativos. A pesquisa contemporânea em macroeconomia (modelos HANK — Heterogeneous Agent New Keynesian) busca justamente incorporar essa heterogeneidade que Kirman identificou como essencial.

    **Fonte:** Kirman, A. P. (1992). "Whom or what does the representative individual represent?" *Journal of Economic Perspectives*, 6(2), 117–136. Blundell, R., Browning, M. e Crawford, I. (2003). "Nonparametric Engel curves and revealed preference." *Econometrica*, 71(1), 205–240. Almeida, A. N. e Azzoni, C. R. (2016). "Custo de vida comparativo das regiões metropolitanas brasileiras." *Estudos Econômicos*, 46(1), 253–276.

---

## 6.8 Classificação de Pares de Bens no Contexto Brasileiro

Para consolidar as classificações discutidas nas seções anteriores, a [Tabela 6.1](#tabela-6-1) reúne pares de bens relevantes para o consumidor brasileiro, distinguindo entre a relação bruta (marshalliana) e a relação líquida (hicksiana). Note como, em alguns casos, as duas classificações divergem — reflexo direto do efeito renda que a Equação de Slutsky separa.

<a id="tabela-6-1"></a>

| Par de Bens | Relação Bruta (Marshalliana) | Relação Líquida (Hicksiana) | Observações |
|:---|:---:|:---:|:---|
| Gasolina e Etanol | Substitutos | Substitutos | Frota *flex-fuel*; forte substituição |
| Arroz e Feijão | Complementos | Complementos | Consumo conjunto arraigado na cultura alimentar |
| Carne bovina e Frango | Substitutos | Substitutos | Substituição intensificada em períodos de alta da carne bovina |
| Transporte público e Automóvel | Substitutos | Substitutos | Em grandes centros, congestionamento modera a substituição |
| Café e Açúcar | Complementos | Complementos | Padrão de consumo conjunto, especialmente em classes C e D |
| Cerveja e Refrigerante | Substitutos fracos | Substitutos | Elasticidade cruzada positiva, mas moderada |
| Smartphone e Plano de dados | Complementos | Complementos | Forte complementaridade no consumo digital |
| Carne bovina e Sal | Complementos fracos | Independentes | Complementaridade bruta por efeito renda, não por substituição |
| Educação privada e Plano de saúde | Ambíguo | Substitutos fracos | Competem pelo orçamento; líquidos: substitutos via renda disponível |
| Manteiga e Margarina | Substitutos | Substitutos | Clássico par de substitutos; elasticidade cruzada elevada |

<div class="caption-obj" markdown>
**Tabela 6.1 — Classificação de pares de bens no contexto brasileiro.** Fontes: estimativas baseadas em POF/IBGE (2017-2018); estudos setoriais ABRAS; literatura aplicada brasileira.
</div>

!!! note "Divergência entre classificações"
    Note o caso de carne bovina e sal: embora sejam complementos brutos (o sal é usado para temperar a carne), quando isolamos o efeito substituição, a relação é praticamente nula — a "complementaridade" observada nos dados marshallianos decorre em grande parte do efeito renda (famílias mais ricas consomem mais de ambos).

---

Para ilustrar concretamente as relações de substituição e complementaridade discutidas neste capítulo, apresentamos a seguir dois estudos de caso detalhados do mercado brasileiro — o primeiro sobre combustíveis (substituição quase pura) e o segundo sobre bebidas (um mosaico de relações cruzadas).

!!! example "Gasolina versus etanol: substitutos na bomba"
    O Brasil possui a maior frota *flex-fuel* do mundo: segundo a Anfavea, mais de 90% dos automóveis leves vendidos desde 2010 são bicombustíveis. Isso torna a escolha entre gasolina e etanol um caso quase puro de substituição, em que o consumidor compara preços a cada abastecimento.

    **A regra dos 70%:** como o etanol possui menor conteúdo energético que a gasolina (cerca de 70%), o consumidor racional abastece com etanol quando seu preço é inferior a 70% do preço da gasolina. Dados do levantamento semanal da [ANP](https://www.gov.br/anp) (Agência Nacional do Petróleo) mostram que essa regra é amplamente seguida na prática.

    **Variação regional:** em março de 2024, segundo a ANP, o preço médio do etanol variava de R$ 3,49/litro em São Paulo (estado produtor de cana-de-açúcar) a R$ 5,19/litro no Amapá. Enquanto isso, a gasolina variava de R$ 5,72/litro (SP) a R$ 7,10/litro (AC). A razão etanol/gasolina ficava em torno de 61% em SP (favorável ao etanol) e 73% no AP (desfavorável).

    **Elasticidade-preço cruzada:** estudos aplicados ao mercado brasileiro estimam elasticidades-preço cruzadas (bruta) entre gasolina e etanol na faixa de \(+0{,}50\) a \(+0{,}80\) — valores muito elevados, consistentes com o alto grau de substituição proporcionado pela tecnologia flex. Essa é uma das maiores elasticidades cruzadas observadas em mercados reais.

    **Implicação para política tributária:** a tributação diferenciada entre gasolina e etanol (a gasolina possui alíquota de ICMS e CIDE mais elevadas) afeta diretamente a composição da demanda por combustíveis. A reforma tributária (EC 132/2023) e a regulamentação do imposto seletivo sobre combustíveis fósseis podem alterar substancialmente esses preços relativos.

    *Fontes: ANP — Levantamento de Preços de Combustíveis; Anfavea — Anuário Estatístico; CEPEA/ESALQ — Indicador do Etanol.*

---

!!! example "Substitutos e complementos no mercado de bebidas brasileiro"
    O mercado brasileiro de bebidas é um laboratório natural para o estudo de relações cruzadas de demanda. Com faturamento superior a R$ 120 bilhões anuais e elevada penetração em todas as classes sociais, as categorias de cerveja, refrigerante e água mineral apresentam interações de preço particularmente reveladoras.

    **Estrutura do mercado:**

    | Categoria | Participação no volume (%) | Tributação efetiva (IPI + ICMS) |
    |:---|:---:|:---:|
    | Cerveja | 38% | 40–55% |
    | Refrigerante | 30% | 30–45% |
    | Água mineral | 22% | 15–25% |
    | Sucos e outros | 10% | 20–35% |

    *Fonte: ABRAS / Euromonitor (estimativas para o mercado brasileiro).*

    **Relações de substituição e complementaridade:**

    - **Cerveja e refrigerante**: estudos com dados de scanner de supermercados encontram elasticidade-preço cruzada (bruta) entre \(+0{,}05\) e \(+0{,}15\) — substituição fraca. Após a decomposição de Slutsky, a substituição líquida é ligeiramente mais forte (\(+0{,}12\) a \(+0{,}22\)), indicando que parte do efeito observado é mascarado pelo efeito renda negativo (ambos são bens normais).

    - **Cerveja e petiscos (amendoim, batata frita)**: complementos brutos com elasticidade cruzada entre \(-0{,}20\) e \(-0{,}35\). O consumo conjunto é fortemente influenciado por ocasiões sociais, especialmente em bares.

    - **Refrigerante e água mineral**: a substituição tem crescido ao longo da última década, impulsionada por mudanças em preferências de saúde. Estimativas recentes sugerem elasticidade cruzada bruta entre \(+0{,}15\) e \(+0{,}30\).

    **Impacto de tributação:**

    A proposta de imposto seletivo sobre bebidas açucaradas (*sugar tax*), debatida no contexto da reforma tributária brasileira (EC 132/2023), fornece uma aplicação direta. Usando as elasticidades estimadas:

    - Um imposto que elevasse o preço do refrigerante em 20% reduziria sua demanda em aproximadamente 12% (usando \(\varepsilon_{p} \approx -0{,}60\)).
    - A demanda por água mineral subiria entre 3% e 6% (efeito substituição cruzado).
    - A demanda por cerveja teria variação ambígua, com efeito substituição positivo parcialmente compensado pelo efeito renda negativo.

    O Teorema do Bem Composto de Hicks pode ser aplicado aqui: se os preços de cerveja, suco e água variam proporcionalmente entre si (por exemplo, por inflação geral), podemos tratá-los como um bem composto "outras bebidas" e analisar a demanda de refrigerante contra esse composto. Porém, se a tributação incide seletivamente sobre o refrigerante, o teorema exige que apenas a relação refrigerante versus cada um dos outros bens seja analisada separadamente.

    *Fontes: ABRAS — Associação Brasileira de Supermercados; POF/IBGE; Euromonitor International — relatórios de bebidas não alcoólicas; análises do IFI/Senado sobre a reforma tributária.*

!!! box-mundo "Box Mundo 6.3 — Elasticidades da demanda por gasolina ao redor do mundo: por que a mesma teoria gera respostas tão diferentes?"

    **Contexto:** A elasticidade-preço da demanda — conceito central deste capítulo — é uma das grandezas mais estimadas em economia aplicada, e a gasolina é talvez o bem mais estudado empiricamente. A teoria prevê que a elasticidade depende da disponibilidade de substitutos, da parcela do orçamento e do horizonte temporal (curto vs. longo prazo). Uma comparação internacional das elasticidades da demanda por gasolina oferece uma ilustração poderosa de como o mesmo arcabouço teórico gera respostas quantitativas muito diferentes conforme o contexto institucional, geográfico e de política pública — exatamente a questão da heterogeneidade entre países que a Seção 6.7 levanta no contexto da agregação.

    **Dados:** A meta-análise mais abrangente é a de Labandeira, Labeaga e López-Otero (2017, *Energy Economics*), que compilou mais de 200 estimativas de elasticidade-preço da demanda por gasolina em 45 países. Os resultados revelam padrões notáveis: a elasticidade-preço de **curto prazo** varia de -0,09 (EUA) a -0,34 (países europeus com altos impostos sobre combustíveis e bom transporte público), com mediana global de -0,20. A elasticidade de **longo prazo** é substancialmente maior em valor absoluto: mediana de -0,55, variando de -0,28 (EUA) a -0,84 (Reino Unido). A IEA (*International Energy Agency*, 2022) reporta que países com alta tributação de combustíveis (Noruega: US$ 3,10/litro de imposto; Países Baixos: US$ 2,80/litro) apresentam consumo per capita de gasolina 60–70% inferior ao dos EUA (imposto de US$ 0,15/litro), refletindo ajustes de longo prazo no parque veicular, na infraestrutura de transporte público e no padrão de urbanização. No Brasil, a presença da frota *flex-fuel* e do etanol como substituto direto eleva a elasticidade-preço cruzada gasolina-etanol para valores entre +0,80 e +1,40 (ANP/IPEA), uma das mais altas do mundo — resultado direto da alta substituibilidade discutida na Seção 6.3.

    **Análise:** A variação internacional nas elasticidades confirma as previsões teóricas das Seções 6.1 a 6.5. Nos EUA, onde distâncias são longas, transporte público é escasso e a cultura automotiva é dominante, a demanda por gasolina é altamente inelástica porque os substitutos são limitados no curto prazo. Na Europa, onde trens, metrôs e ciclovias oferecem alternativas viáveis, a substituibilidade é maior e a demanda é mais elástica. O Brasil ocupa posição singular: a frota *flex-fuel* cria um substituto quase perfeito (etanol), gerando elasticidades cruzadas excepcionalmente altas e tornando a demanda por gasolina mais sensível ao preço relativo gasolina/etanol do que ao preço absoluto da gasolina. Esses padrões ilustram que a elasticidade não é uma constante física do bem — ela é uma propriedade do bem *no contexto* de um mercado específico, com seus substitutos, sua infraestrutura e suas políticas. Para o formulador de políticas, a implicação é direta: impostos sobre combustíveis são instrumentos fiscais eficientes onde a demanda é inelástica, mas instrumentos ambientais eficazes apenas onde a elasticidade é suficiente para induzir mudança comportamental.

    **Fonte:** Labandeira, X.; Labeaga, J. M.; López-Otero, X. (2017). A meta-analysis on the price elasticity of energy demand. *Energy Policy*, 102, 549–568. IEA — International Energy Agency (2022). *World Energy Outlook 2022*. Paris: IEA. ANP — Agência Nacional do Petróleo, Gás Natural e Biocombustíveis; IPEA — Instituto de Pesquisa Econômica Aplicada.

---


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Se a elasticidade-preço da demanda é $\varepsilon_d = -0{,}5$ (em valor absoluto, 0,5), a demanda é dita:"
    - (a) Elástica — uma variação de 1% no preço causa mais de 1% de variação na quantidade
    - (b) Inelástica — uma variação de 1% no preço causa menos de 1% de variação na quantidade
    - (c) Unitária — variação percentual na quantidade iguala a do preço
    - (d) Perfeitamente elástica

    ??? success "Resposta"
        **(b)** Quando $|\varepsilon_d| < 1$, a demanda é inelástica: a quantidade demandada responde menos que proporcionalmente ao preço. Um aumento de 1% no preço reduz a quantidade em apenas 0,5%. A alternativa (a) descreve $|\varepsilon_d| > 1$; (c) descreve $|\varepsilon_d| = 1$; (d) descreve $|\varepsilon_d| \to \infty$.

??? question "2. Quando a demanda é inelástica, um aumento no preço causa:"
    - (a) Queda na receita total, pois a quantidade cai muito
    - (b) Aumento na receita total, pois a queda na quantidade é proporcionalmente menor que o aumento no preço
    - (c) Receita total constante
    - (d) Impossibilidade de determinar o efeito sem mais informação

    ??? success "Resposta"
        **(b)** Com demanda inelástica ($|\varepsilon_d| < 1$), o aumento percentual no preço supera a queda percentual na quantidade, de modo que a receita total $R = p \cdot q$ aumenta. A relação entre receita marginal e elasticidade é $\text{RMg} = p(1 + 1/\varepsilon_d)$: com $\varepsilon_d$ entre $-1$ e $0$, a RMg é negativa, significando que reduzir a quantidade (subir o preço) aumenta a receita.

??? question "3. Se a elasticidade-preço cruzada entre dois bens é positiva ($\varepsilon_{ij} > 0$), os bens são:"
    - (a) Complementares brutos (marshallianos)
    - (b) Substitutos brutos (marshallianos)
    - (c) Bens inferiores
    - (d) Bens independentes

    ??? success "Resposta"
        **(b)** Elasticidade cruzada positiva significa que um aumento no preço do bem $j$ aumenta a demanda pelo bem $i$: quando um substituto fica mais caro, a demanda pelo outro sobe. A alternativa (a) descreve $\varepsilon_{ij} < 0$; (d) descreve $\varepsilon_{ij} = 0$; (c) refere-se à relação com renda, não entre bens.

??? question "4. A elasticidade-renda da demanda por alimentos tende a ser, segundo a Lei de Engel:"
    - (a) Maior que 1 — alimentos são bens de luxo
    - (b) Negativa — alimentos são bens inferiores
    - (c) Positiva mas menor que 1 — alimentos são bens necessários
    - (d) Exatamente igual a 1 para todas as faixas de renda

    ??? success "Resposta"
        **(c)** A Lei de Engel estabelece que a participação dos gastos com alimentação na renda total cai à medida que a renda cresce. Isso implica elasticidade-renda positiva (bem normal) mas inferior a 1 (necessidade). A alternativa (a) seria típica de viagens e lazer; (b) valeria para bens como transporte público em faixas de renda alta; (d) implicaria participação constante.

??? question "5. Para uma curva de demanda linear $q = a - bp$, a elasticidade-preço:"
    - (a) É constante ao longo de toda a curva
    - (b) Varia ao longo da curva: é elástica em preços altos e inelástica em preços baixos
    - (c) É sempre unitária
    - (d) Depende apenas da inclinação $b$, não do ponto da curva

    ??? success "Resposta"
        **(b)** Embora a inclinação ($-b$) seja constante, a elasticidade $\varepsilon = -b \cdot p/q$ varia ao longo da curva. Em preços altos ($p$ grande, $q$ pequeno), $|\varepsilon| > 1$ (elástica); em preços baixos ($p$ pequeno, $q$ grande), $|\varepsilon| < 1$ (inelástica). O ponto médio tem elasticidade unitária. A alternativa (a) descreve funções do tipo $q = Ap^{-\varepsilon}$ (isoelástica), não linear.

---

## 📋 Resumo do Capítulo

- Os efeitos cruzados de preço medem como a variação no preço de um bem afeta a demanda por outro, e podem ser decompostos pela Equação de Slutsky em efeito substituição cruzado e efeito renda cruzado.
- Bens são classificados como substitutos ou complementos brutos (marshallianos, baseados na demanda não-compensada) e líquidos (hicksianos, baseados na demanda compensada); a classificação pode diferir entre as duas definições quando o efeito renda é significativo.
- A matriz de substituição de Slutsky é simétrica e negativa semidefinida; com muitos bens, todo bem deve ter pelo menos um substituto líquido, tornando a substituibilidade o fenômeno dominante.
- O Teorema do Bem Composto de Hicks permite agregar um grupo de bens cujos preços variam proporcionalmente em um único bem composto, viabilizando a análise com dois bens mesmo em economias complexas.
- O modelo de Lancaster propõe que os consumidores valorizam atributos dos bens (não os bens em si), gerando preços hedônicos implícitos; o modelo de Becker incorpora o tempo como insumo na produção doméstica de utilidade.
- A demanda de mercado é a soma horizontal das demandas individuais; a condição de Gorman (curvas de Engel lineares e paralelas) garante a existência de um consumidor representativo.

## 🔑 Conceitos-Chave

<a id="tabela-6-2"></a>

| Conceito | Definição |
|----------|-----------|
| Efeito cruzado de preço | Variação na demanda de um bem causada pela mudança no preço de outro bem. |
| Substitutos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é positiva: o aumento no preço de um eleva a demanda pelo outro. |
| Complementos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é negativa: o aumento no preço de um reduz a demanda pelo outro. |
| Substitutos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é positivo; a classificação líquida é simétrica. |
| Complementos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é negativo; com dois bens, a complementaridade líquida é impossível. |
| Teorema do Bem Composto de Hicks | Se os preços de um grupo de bens variam na mesma proporção, o grupo pode ser tratado como um único bem composto. |
| Modelo de Lancaster | Teoria em que a utilidade depende dos atributos dos bens, não dos bens em si, gerando preços hedônicos implícitos. |
| Condição de Gorman | Condição sob a qual a demanda de mercado depende apenas da renda agregada: curvas de Engel lineares e paralelas para todos os consumidores. |
| Preços hedônicos | Preços implícitos dos atributos de um bem, estimados pela decomposição do preço de mercado em contribuições de cada característica. |

<div class="caption-obj" markdown>
**Tabela 6.2 — Conceitos-chave.**
</div>

## ✏️ Exercícios

<a id="ex-6-1"></a>**Exercício 6.1.** Considere a função de utilidade CES: \(U(x_1, x_2) = (x_1^\rho + x_2^\rho)^{1/\rho}\), com \(\rho < 1\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos em função do valor de \(\rho\).

(c) Calcule o efeito substituição cruzado \(\frac{\partial h_1}{\partial p_2}\) e verifique que os bens são sempre substitutos líquidos (no caso de dois bens).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-1)

---

<a id="ex-6-2"></a>**Exercício 6.2 (Bem composto).** Um consumidor compra três tipos de fruta: banana (\(b\)), maçã (\(m\)) e laranja (\(l\)), além de um bem "todos os outros" (\(y\)). Suponha que os preços das frutas sempre variem na mesma proporção: \(p_b = \alpha \bar{p}_b\), \(p_m = \alpha \bar{p}_m\), \(p_l = \alpha \bar{p}_l\).

(a) Defina o bem composto "frutas" e reescreva a restrição orçamentária.

(b) Se \(\alpha\) aumenta em 15%, explique como analisar o efeito sobre o consumo de "todos os outros" usando o modelo de dois bens.

(c) Discuta sob quais circunstâncias a hipótese de proporcionalidade dos preços das frutas falharia no Brasil.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-2)

---

<a id="ex-6-3"></a>**Exercício 6.3 (Classificação marshalliana vs. hicksiana).** Um consumidor tem demandas marshallianas \(x_1 = \frac{I}{3p_1}\) e \(x_2 = \frac{2I}{3p_2}\).

(a) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos.

(b) Derive a função de utilidade indireta e, por dualidade, a função dispêndio.

(c) Obtenha as demandas hicksianas e calcule \(\frac{\partial h_1}{\partial p_2}\). Classifique os bens como substitutos ou complementos líquidos.

(d) Verifique a Equação de Slutsky: \(\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}\).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-3)

---

<a id="ex-6-4"></a>**Exercício 6.4 (Modelo de Lancaster).** Um consumidor deriva utilidade de dois atributos: calorias (\(z_1\)) e proteínas (\(z_2\)). Dois bens estão disponíveis:

| Bem | Calorias por unidade | Proteínas por unidade | Preço |
|:---|:---:|:---:|:---:|
| Arroz | 130 | 2,5 | R$ 5,00 |
| Frango | 165 | 31 | R$ 18,00 |

Sua função de utilidade é \(U(z_1, z_2) = z_1^{0,4} z_2^{0,6}\) e sua renda é \(I = \text{R\$}\; 200{,}00\).

(a) Escreva o problema na forma do modelo de Lancaster e resolva para as quantidades ótimas de arroz e frango.

(b) Suponha que um novo bem "ovo" entre no mercado com 155 calorias e 13 proteínas por unidade ao preço de R$ 8,00. Recalcule a alocação ótima e discuta como o novo bem afeta a demanda pelos bens existentes.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-4)

---

<a id="ex-6-5"></a>**Exercício 6.5 (Agregação da demanda).** Em uma economia com dois consumidores, as demandas individuais pelo bem 1 são:

- Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
- Consumidor B: \(x_1^B = \frac{(I^B)^2}{p_1 \cdot 100}\)

(a) A demanda de mercado pode ser escrita como função da renda agregada \(I = I^A + I^B\)? Justifique usando a condição de Gorman.

(b) Suponha que \(I^A = I^B = 100\) e \(p_1 = 10\). Calcule a demanda de mercado. Agora redistribua: \(I^A = 50\), \(I^B = 150\). Calcule novamente e mostre que a demanda mudou apesar de a renda total ser a mesma.

(c) Discuta as implicações para a avaliação de políticas de redistribuição de renda como o programa Bolsa Família.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-5)

---

<a id="ex-6-6"></a>**Exercício 6.6 (Marshallianos vs. Hicksianos com Cobb-Douglas).** Considere um consumidor com função de utilidade \(U(x_1, x_2) = x_1^{0{,}5} x_2^{0{,}5}\), preços \(p_1, p_2 > 0\) e renda \(I > 0\).

(a) Derive as demandas marshallianas e calcule a elasticidade-preço cruzada marshalliana \(\varepsilon_{x_1, p_2}^M\).

(b) Derive a função dispêndio e as demandas hicksianas. Calcule o efeito substituição cruzado hicksiano \(\frac{\partial h_1}{\partial p_2}\) e mostre que é positivo.

(c) Explique, usando a Equação de Slutsky, por que a elasticidade cruzada marshalliana é zero enquanto o efeito substituição hicksiano é positivo. O que exatamente cancela o efeito substituição na demanda marshalliana?

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-6)

---

<a id="ex-6-7"></a>**Exercício 6.7 (Bem composto e choques agrícolas).** Um consumidor compra três bens: arroz (\(R\)), feijão (\(F\)) e carne (\(M\)), além de um bem numerário (\(y\)). Os preços do arroz e do feijão são sistematicamente afetados pelos mesmos choques de oferta agrícola, de modo que \(p_R = \alpha \bar{p}_R\) e \(p_F = \alpha \bar{p}_F\), onde \(\bar{p}_R\) e \(\bar{p}_F\) são preços-base fixos e \(\alpha > 0\) varia com os choques. O preço da carne \(p_M\) e o preço numerário \(p_y = 1\) não variam com \(\alpha\).

(a) Defina o bem composto "alimentos básicos" (\(A\)) e reescreva a restrição orçamentária do consumidor em termos de \(A\), \(M\) e \(y\).

(b) Qual é o "preço" do bem composto \(A\)? Qual é a "quantidade" de \(A\)?

(c) Com essa agregação, o problema original de 4 bens se reduz a quantos bens? Quando essa simplificação seria inválida para analisar o impacto de uma seca que afeta apenas o arroz?

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-7)

---

<a id="ex-6-8"></a>**Exercício 6.8 (Matriz de Slutsky e restrições).** Uma economia tem 3 bens com preços \(\mathbf{p} = (1, 1, 1)\). A matriz de Slutsky parcialmente conhecida é:

\[
S = \begin{pmatrix} -4 & 3 & s_{13} \\ 3 & -5 & 2 \\ s_{13} & 2 & s_{33} \end{pmatrix}
\]

(a) Usando a propriedade \(S\mathbf{p} = \mathbf{0}\) (com \(\mathbf{p} = (1,1,1)^\top\)), encontre \(s_{13}\) a partir da primeira linha.

(b) Com o valor de \(s_{13}\) encontrado, classifique a relação entre o bem 1 e o bem 3: são substitutos líquidos, complementos líquidos ou independentes?

(c) Encontre também \(s_{33}\) usando a segunda linha (ou a terceira linha com \(s_{13}\) já determinado). Verifique que \(s_{33} \leq 0\), como exigido pela teoria.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-8)

---

<a id="ex-6-9"></a>**Exercício 6.9 (Imposto sobre combustíveis — aplicação brasileira).** Com base nas elasticidades apresentadas no Box Brasil sobre gasolina e etanol (Seção 6.8): elasticidade-preço própria da gasolina \(\varepsilon_{G,p_G} \approx -0{,}60\) e elasticidade-preço cruzada (gasolina-etanol) \(\varepsilon_{G,p_E} \approx +0{,}65\) (e, por simetria, \(\varepsilon_{E,p_G} \approx +0{,}65\)).

Suponha que o governo eleve o ICMS sobre gasolina em 10%, mantendo o preço do etanol fixo. Os preços iniciais são tais que a relação etanol/gasolina estava exatamente em 70% (ponto de indiferença do consumidor flex).

(a) Estime a variação percentual na quantidade demandada de gasolina.

(b) Estime a variação percentual na quantidade demandada de etanol.

(c) Suponha que a quantidade inicial de gasolina consumida era \(Q_G^0 = 100\) litros e o preço inicial era \(p_G^0 = 6{,}00\) reais/litro. Use a aproximação triangular para estimar a perda de peso morto (triângulo de Harberger) associada ao imposto. Interprete o resultado à luz da elasticidade elevada.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-9)

---

<a id="ex-6-10"></a>**Exercício 6.10 (Prova: efeito substituição cruzado não negativo com 2 bens).** Prove formalmente que, com apenas dois bens, o efeito substituição cruzado hicksiano satisfaz \(\frac{\partial h_1}{\partial p_2} \geq 0\). Use as propriedades da matriz de Slutsky.

*Dica:* Utilize (i) a simetria da matriz de Slutsky (\(s_{12} = s_{21}\)), (ii) a homogeneidade de grau zero das demandas hicksianas (que implica \(\sum_j p_j s_{ij} = 0\) para todo \(i\)), e (iii) a negatividade do efeito substituição próprio (\(s_{11} \leq 0\) e \(s_{22} \leq 0\)).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2012 — Questão 03"
    Com relação às escolhas ótimas dos consumidores, constata-se que:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se as preferências do indivíduo estão representadas pela função utilidade \(U(x,y) = 2x + y\) e os preços dos bens são \(p_x = p_y = 2\), então uma redução de \(p_x\) para \(p_x = 1\) resulta num Efeito Substituição igual a zero. |
    | 1 | Se dois bens \(x\) e \(y\) são complementares perfeitos e o preço do bem \(x\) decresce, então o Efeito Renda é zero e o Efeito Total se iguala ao Efeito Substituição. |
    | 2 | A negatividade do Efeito Substituição decorre diretamente do Axioma Forte da Preferência Revelada. |
    | 3 | No caso de preferências do tipo Cobb-Douglas, a Elasticidade-Preço Cruzada da demanda por bens é nula, enquanto a Elasticidade-Preço da demanda por cada um deles é unitária (em módulo). |
    | 4 | Nas funções demandas geradas a partir de uma função utilidade do tipo \(U(X,Y) = X^2 + Y^2\) as demandas individuais por cada bem são independentes do preço do outro. |

    ??? success "Gabarito"
        **Respostas: V F F V F**

        **Justificativa por item:**

        - **Item 0 — V:** Com \(U = 2x + y\) (substitutos perfeitos), a \(TMS = 2\). Com \(p_x = p_y = 2\), temos \(p_x/p_y = 1 < 2 = TMS\), logo a solução é de canto: o consumidor compra apenas \(x\). Quando \(p_x\) cai para 1, \(p_x/p_y = 0{,}5 < 2\), e ele continua comprando apenas \(x\). Pela decomposição de Slutsky, o consumo compensado não muda (já era de canto em \(x\)), então o efeito substituição é zero. Toda a variação é efeito renda — resultado análogo ao do Exercício Resolvido 6.2.
        - **Item 1 — F:** Com complementares perfeitos, o efeito substituição é zero (a proporção de consumo é fixa), não o efeito renda. O efeito total se deve inteiramente ao efeito renda: a queda de \(p_x\) aumenta o poder de compra, permitindo comprar mais da cesta fixa. A afirmação inverte os efeitos.
        - **Item 2 — F:** A negatividade do efeito substituição decorre do Axioma **Fraco** da Preferência Revelada (WARP), não do Axioma Forte (SARP). O WARP é suficiente para demonstrar que o efeito substituição próprio é não positivo. O SARP é uma condição mais forte, necessária para a transitividade completa das preferências reveladas.
        - **Item 3 — V:** Na Cobb-Douglas \(U = x^a y^{1-a}\), as demandas marshallianas são \(x = aI/p_x\) e \(y = (1-a)I/p_y\). A demanda por cada bem não depende do preço do outro, logo a elasticidade-preço cruzada é zero. A elasticidade-preço própria é \(-1\) (unitária em módulo), pois \(x = aI \cdot p_x^{-1}\).
        - **Item 4 — F:** A função \(U = X^2 + Y^2\) é estritamente convexa (não côncava), gerando soluções de canto. Se \(p_x < p_y\), o consumidor gasta tudo em \(X\); se \(p_x > p_y\), gasta tudo em \(Y\). Portanto, a demanda por \(X\) depende crucialmente de \(p_y\) (é \(I/p_x\) quando \(p_x < p_y\) e zero quando \(p_x > p_y\)).

??? question "ANPEC 2019 — Questão 04"
    Em um mercado competitivo existem 1.000 consumidores idênticos com relação à demanda. Se o preço do produto é \$10, cada consumidor demanda 10 unidades; se o preço é \$9, cada consumidor demanda 11 unidades; se o preço é \$8, cada consumidor demanda 12 unidades. O efeito-renda é nulo. A única diferença entre os consumidores é que metade deles leva um mês (um período) para consumir o produto e a outra metade leva dois meses (dois períodos). Cada consumidor só compra outra vez depois que termina de consumir o seu estoque. Em particular, no período \(t=0\) (1º de janeiro) todos vão ao mercado e demandam, em \(t=1\) (1º de fevereiro) apenas metade vai ao mercado e em \(t=2\) (1º de março) todos vão ao mercado outra vez. A oferta em cada período é infinitamente preço-elástica e não há restrição de capacidade, nem custos fixos. Além disso, os custos marginais privados sempre coincidem com os custos marginais sociais, e se uma transação entre ofertante e demandante tem excedente nulo, então ela se realiza. Julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Para qualquer consumidor, no espectro de preços considerado, o bem é comum. |
    | 1 | Em \(t=0\), se o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem é de \$10, então o excedente social é nulo. |
    | 2 | Em \(t=1\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai de \$10 para \$9. Então a quantidade de equilíbrio em \(t=1\) é de \(Q = 11.000\) unidades. |
    | 3 | Em \(t=2\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai para \$8. Então o excedente social é de \$31.000. |
    | 4 | Um economista coletou os dados de quantidade demandada agregada e de preços nos períodos \(t=0\) e \(t=1\), a saber, preço de \$10 em \(t=0\) e de \$9 em \(t=1\). Para obter os dados de demanda agregada, o economista entrevistou cada um dos demandantes que foi ao mercado em \(t=0\) e em \(t=1\), sendo que nenhum demandante mentiu ao ser perguntado sobre a quantidade que estava demandando ao preço do período. O economista, porém, negligenciou o fato de que os tempos de consumo dos demandantes eram diferentes. Então esse economista concluiu que o bem é de Giffen. |

    ??? success "Gabarito"
        **Respostas: V V F V V**

        **Justificativa por item:**

        - **Item 0 — V:** Um "bem comum" (ordinário) é aquele cuja demanda individual cai quando o preço sobe. Como o efeito renda é nulo, o efeito preço coincide com o efeito substituição, que é não positivo. De \$10 para \$9, cada consumidor aumenta a demanda de 10 para 11; de \$9 para \$8, de 11 para 12. O bem é comum (não é de Giffen) para qualquer consumidor individual.
        - **Item 1 — V:** Em \(t=0\), todos os 1.000 consumidores vão ao mercado. Com oferta infinitamente elástica ao custo marginal social de \$10, o preço de equilíbrio é \$10. Cada consumidor demanda 10 unidades, totalizando \(Q = 10.000\). Como \(P = CMg = \$10\), não há excedente do produtor, e os consumidores pagam exatamente sua valoração marginal na última unidade — o excedente social é nulo.
        - **Item 2 — F:** Em \(t=1\), apenas 500 consumidores (os que consomem em 1 mês) vão ao mercado. Com custo marginal de \$9, o preço é \$9 e cada um demanda 11 unidades: \(Q = 500 \times 11 = 5.500\), não 11.000.
        - **Item 3 — V:** Em \(t=2\), todos os 1.000 consumidores voltam ao mercado. Com custo marginal social de \$8, a oferta perfeitamente elástica fixa \(P = 8\) e cada consumidor demanda 12 unidades, totalizando \(Q = 12.000\). Como o efeito renda é nulo, a demanda individual é compensada e pode ser tratada como linear pelos três pontos dados: a demanda inversa individual é \(P = 20 - q\). O excedente do consumidor (= excedente social, pois não há excedente do produtor) é a área entre a demanda inversa e o preço, de \(q = 0\) a \(q = 12\): \(\mathrm{EC} = \tfrac{1}{2}(20-8)\times 12 = 72\). Porém, a questão fornece apenas três pontos discretos e não garante linearidade ao longo de toda a curva. Usando a interpretação discreta com demanda agregada em degraus — 10.000 unidades com valoração \$10, 1.000 com valoração \$9, 1.000 com valoração \$8 — o excedente seria \(10.000 \times 2 + 1.000 \times 1 = 21.000\). O gabarito oficial da ANPEC indica excedente de \$31.000 e classifica o item como verdadeiro.
        - **Item 4 — V:** Em \(t=0\): preço \$10, 1.000 consumidores, demanda agregada = 10.000. Em \(t=1\): preço \$9, 500 consumidores, demanda agregada = 5.500. O economista observa: preço caiu (\$10→\$9) e quantidade agregada caiu (10.000→5.500). Sem perceber que metade dos consumidores não foi ao mercado em \(t=1\), ele conclui erroneamente que o bem é de Giffen (preço cai, quantidade cai). A "ilusão de Giffen" surge da heterogeneidade na frequência de compra — um problema clássico de agregação da demanda (Seção 6.7).

<iframe src="../graficos/cap06/elasticidade-receita.html" title="Figura 6.3 — Elasticidade-preco e receita total" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 6.3 — Elasticidade-preco e receita total.** Arraste o ponto sobre a curva de demanda linear \(P = a - bQ\) para explorar a relacao entre elasticidade e receita total. Na regiao elastica (\(|\varepsilon| > 1\)), aumentos de preco reduzem a receita; na regiao inelastica (\(|\varepsilon| < 1\)), aumentos de preco elevam a receita. A receita e maxima no ponto de elasticidade unitaria.
</div>

??? question "ANPEC 2025 — Questão 03"
    Um famoso bar decidiu pesquisar o comportamento de seus consumidores de chope. Com esta finalidade, contratou um econometrista, que estimou a curva de demanda por chope como sendo \(Q = 3.600 - 20P\), onde \(Q\) é o número de tulipas de chope consumidas e \(P\) é o preço. A partir desta curva estimada, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A elasticidade-preço será unitária quando a quantidade de tulipas vendida for de 1.800 unidades. |
    | 1 | A elasticidade-preço da demanda por chope será \(-\infty\) ao preço de \$200. |
    | 2 | Para preços entre \$180 e \$90, a demanda é elástica. |
    | 3 | A elasticidade-preço da demanda é nula para uma quantidade de 4.000 tulipas. |
    | 4 | Como chope e batata frita são bens complementares, a elasticidade-preço cruzada da demanda entre eles no bar é menor do que zero. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** A elasticidade-preço da demanda linear é \(\varepsilon = \frac{dQ}{dP} \cdot \frac{P}{Q} = -20 \cdot \frac{P}{Q}\). Para \(|\varepsilon| = 1\): \(20 \cdot P/Q = 1\), ou seja, \(Q = 20P\). Substituindo na demanda: \(20P = 3.600 - 20P \Rightarrow P = 90\), \(Q = 1.800\). A elasticidade é unitária no ponto médio da curva de demanda linear, que é \(Q = 1.800\).
        - **Item 1 — F:** O preço máximo (preço de reserva) que zera a quantidade demandada é \(P = 3.600/20 = 180\). Para \(P = 200\), teríamos \(Q = 3.600 - 4.000 = -400 < 0\), o que não tem significado econômico — a demanda não é definida para \(P > 180\). A elasticidade \(-\infty\) ocorre no preço de reserva \(P = 180\) (onde \(Q \to 0\)), não em \(P = 200\).
        - **Item 2 — V:** No ponto \(P = 90\), \(Q = 1.800\) e \(|\varepsilon| = 1\). Para \(P > 90\), \(Q < 1.800\) e \(|\varepsilon| > 1\) (demanda elástica). Como \(P = 180\) é o preço máximo, para preços entre \$90 e \$180 a demanda é elástica.
        - **Item 3 — F:** A quantidade máxima demandada ocorre quando \(P = 0\): \(Q = 3.600\). A quantidade \(Q = 4.000\) é impossível — excede o intercepto da curva de demanda. A elasticidade é zero quando \(P = 0\) (e \(Q = 3.600\)), não em \(Q = 4.000\).
        - **Item 4 — V:** Chope e batata frita são bens complementares (consumidos conjuntamente, especialmente em bares). Para complementos brutos, \(\frac{\partial Q_{chope}}{\partial P_{batata}} < 0\), logo a elasticidade-preço cruzada é negativa. Se o preço da batata frita sobe, a demanda por chope cai (e vice-versa). Este item conecta diretamente com a classificação da Seção 6.2.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Deaton, Angus; Muellbauer, John. (1980). [An Almost Ideal Demand System](https://www.jstor.org/stable/1805222). *American Economic Review*, 70(3), 312-326."
    **Pergunta central:** Como estimar empiricamente um sistema completo de equações de demanda — com vários bens e interações cruzadas — de modo que seja consistente com a teoria do consumidor (homogeneidade, simetria de Slutsky, agregação) e ao mesmo tempo flexível o bastante para capturar padrões reais dos dados?

    **Método:** Deaton e Muellbauer propuseram o **AIDS** (*Almost Ideal Demand System*), um modelo em que as parcelas orçamentárias de cada bem são funções lineares dos logaritmos dos preços e do logaritmo da renda real. O modelo assume uma forma funcional específica para a função dispêndio (da família PIGLOG — *Price-Independent Generalized Logarithmic*), que garante consistência com a teoria da escolha do consumidor. As equações de demanda resultantes satisfazem automaticamente a agregação de Engel, a homogeneidade de grau zero e permitem testar a simetria de Slutsky diretamente nos dados.

    **Resultado principal:** Aplicando o modelo a dados de consumo britânicos (1954-1974), os autores estimaram elasticidades-preço próprias e cruzadas para oito categorias de bens (alimentos, vestuário, habitação, combustível, bebidas, transporte, serviços e outros). Os resultados mostraram que alimentos e combustível são necessidades (elasticidade-renda menor que 1), enquanto transporte e serviços são luxos. As elasticidades cruzadas revelaram padrões de substituição e complementaridade consistentes com a intuição econômica — por exemplo, alimentação e refeições fora do domicílio são substitutos líquidos.

    **Relevância para o capítulo:** O AIDS é uma das ferramentas empíricas mais utilizadas para estimar as relações cruzadas de demanda discutidas nas Seções 6.1 a 6.4. A forma PIGLOG garante que a condição de Gorman (Seção 6.7) é satisfeita em uma versão relaxada, permitindo agregação exata sob certas condições. O artigo demonstra como a teoria pura — Slutsky, simetria, homogeneidade — pode ser operacionalizada empiricamente. O modelo é amplamente utilizado até hoje, inclusive pelo IBGE e pelo IPEA em estudos sobre padrões de consumo brasileiros com dados da POF. Angus Deaton recebeu o Prêmio Nobel de Economia em 2015.

??? pesquisa "Berry, Steven; Levinsohn, James; Pakes, Ariel. (1995). [Automobile Prices in Market Equilibrium](https://doi.org/10.2307/2171802). *Econometrica*, 63(4), 841-890. DOI: [10.2307/2171802](https://doi.org/10.2307/2171802)"
    **Pergunta central:** Como estimar a demanda por produtos diferenciados — bens que são substitutos imperfeitos entre si, diferindo em múltiplos atributos — quando os dados disponíveis são agregados (participações de mercado e preços) e os preços são endógenos?

    **Método:** Berry, Levinsohn e Pakes (BLP) desenvolveram um modelo estrutural de demanda que combina a abordagem de Lancaster (Seção 6.6) com heterogeneidade de preferências entre consumidores. Cada automóvel é descrito por um vetor de características (potência, tamanho, consumo, preço), e cada consumidor tem preferências idiossincráticas sobre essas características. O modelo gera funções de demanda agregada que dependem de todos os preços — capturando substituição e complementaridade entre modelos. Para lidar com a endogeneidade dos preços (carros de melhor qualidade têm preços mais altos), os autores usaram variáveis instrumentais baseadas nas características dos concorrentes.

    **Resultado principal:** Aplicando o modelo ao mercado americano de automóveis (1971-1990), os autores estimaram elasticidades-preço próprias e cruzadas para centenas de modelos. Os resultados mostraram padrões de substituição altamente realistas: carros compactos competem principalmente entre si e menos com SUVs, exatamente como a abordagem de Lancaster prevê (carros no mesmo segmento compartilham atributos semelhantes). As elasticidades estimadas permitiram avaliar o poder de mercado das montadoras e simular os efeitos de fusões sobre preços.

    **Relevância para o capítulo:** O modelo BLP é uma implementação empírica direta do modelo de Lancaster (Seção 6.6): os consumidores derivam utilidade dos *atributos* dos automóveis, não dos veículos em si. A estrutura de substituição entre produtos emerge endogenamente da proximidade no espaço de atributos, em vez de ser imposta *ad hoc*. Além disso, a agregação da demanda individual (Seção 6.7) é central no modelo — a demanda de mercado resulta da soma de escolhas heterogêneas, e a heterogeneidade de preferências (violação da condição de Gorman) é uma *feature*, não um bug. O artigo é um dos mais citados em organização industrial e tornou-se referência para a análise antitruste de fusões pelo [CADE](https://www.gov.br/cade) no Brasil e por autoridades concorrenciais no mundo todo.

??? pesquisa "Rosen, Sherwin. (1974). [Hedonic Prices and Implicit Markets: Product Differentiation in Pure Competition](https://doi.org/10.1086/260169). *Journal of Political Economy*, 82(1), 34–55. DOI: [10.1086/260169](https://doi.org/10.1086/260169)"
    **Pergunta central:** Como determinar os preços implícitos dos atributos de bens diferenciados — como imóveis, automóveis ou trabalhadores — em mercados competitivos onde os preços observados são os preços dos bens, não dos seus atributos individuais?

    **Método:** Rosen propôs um modelo de equilíbrio hedônico em dois estágios. No primeiro, o preço de mercado de um bem diferenciado é modelado como uma função de seus atributos: \(p = P(z_1, z_2, \ldots, z_m)\), onde \(z_k\) são os atributos. As derivadas parciais \(\partial P / \partial z_k\) são os **preços hedônicos** (ou preços implícitos) de cada atributo — o quanto o mercado paga a mais por uma unidade adicional do atributo \(k\). No segundo estágio, esses preços implícitos são usados para estimar as curvas de demanda inversa e oferta inversa dos atributos individuais, permitindo recuperar as preferências dos consumidores e os custos dos produtores. A chave é que, em equilíbrio competitivo, consumidores e produtores se "emparelham" de modo que os preços hedônicos reflitam simultaneamente a disposição marginal a pagar dos compradores e o custo marginal de oferta dos vendedores.

    **Resultado principal:** Rosen demonstrou as condições de equilíbrio do mercado hedônico e estabeleceu a relação entre a função de preços hedônicos e as curvas de oferta e demanda dos atributos. O artigo mostrou que a função de preços hedônicos não é, em geral, linear nos atributos — sua curvatura reflete a heterogeneidade das preferências e dos custos. Essa não linearidade tem implicações importantes para a estimação econométrica: uma regressão linear de preços sobre atributos pode ser uma aproximação razoável localmente, mas pode gerar vieses para variações grandes nos atributos.

    **Relevância para o capítulo:** O modelo de Rosen é a ponte formal entre o modelo de Lancaster (Seção 6.6.1) — que postula que os consumidores valorizam atributos dos bens — e a análise empírica de preços de mercado. Enquanto Lancaster descreve o *problema do consumidor* em termos de atributos, Rosen descreve o *equilíbrio de mercado* que emerge quando muitos consumidores e produtores com preferências e custos heterogêneos interagem. As aplicações brasileiras — FipeZap, índices imobiliários do Banco Central, estudos de salário hedônico para diferentes ocupações — todas se baseiam no arcabouço de Rosen. O artigo é um dos mais citados em economia aplicada e continua sendo a referência teórica padrão para estudos de precificação hedônica no Brasil e no mundo.

??? pesquisa "Lewbel, Arthur. (1996). [Aggregation Without Separability: A Generalized Composite Commodity Theorem](https://www.jstor.org/stable/2118240). *American Economic Review*, 86(3), 524–543."
    **Pergunta central:** O Teorema do Bem Composto de Hicks exige que os preços de um grupo variem *exatamente* em proporção. Na prática, os preços nunca se movem em proporção perfeita — então quando podemos ainda tratar um grupo de bens como um bem composto aproximado?

    **Método:** Lewbel generaliza o Teorema do Bem Composto relaxando a hipótese de proporcionalidade estrita. O autor mostra que, mesmo quando os preços relativos dentro de um grupo variam, é possível construir um índice de preços para o grupo que satisfaz uma versão generalizada do teorema, sob condições mais fracas que a proporcionalidade. Em particular, Lewbel demonstra que o teorema pode ser estendido para agrupar bens mesmo quando há alguma variação nos preços relativos internos, desde que as funções de demanda satisfaçam certas propriedades de separabilidade fraca. O artigo também conecta a agregação de bens à teoria de números-índice, mostrando que os índices de preços tipo Laspeyres e Paasche são casos especiais do teorema generalizado.

    **Resultado principal:** A condição necessária e suficiente para a agregação exata é mais fraca do que a proporcionalidade de Hicks — ela permite alguma variação nos preços relativos internos, desde que as preferências satisfaçam separabilidade fraca. Além disso, Lewbel mostra que, para qualquer conjunto de preferências, sempre é possível encontrar uma partição dos bens em grupos que satisfaz o teorema generalizado, o que justifica o uso de índices de preços compostos em análises empíricas mesmo sem proporcionalidade exata.

    **Relevância para o capítulo:** A Seção 6.5 apresenta o Teorema do Bem Composto de Hicks na sua forma clássica, que exige proporcionalidade estrita dos preços. Lewbel mostra quando e como essa condição pode ser relaxada — uma questão central para aplicações ao IPCA brasileiro, onde os preços administrados e livres raramente se movem em proporção exata. O artigo também elucida os fundamentos teóricos dos índices de preços usados pelo IBGE, conectando a teoria microeconômica da demanda à prática de mensuração da inflação. Para o Brasil, onde choques de preços são frequentemente assimétricos entre categorias (energia versus alimentos versus serviços), a generalização de Lewbel é especialmente relevante para avaliar a validade de análises que tratam grupos de bens como compostos.

??? pesquisa "Dubois, Pierre; Griffith, Rachel; Nevo, Aviv. (2014). [Do Prices and Attributes Explain International Differences in Food Purchases?](https://doi.org/10.1257/aer.104.3.832) *American Economic Review*, 104(3), 832–867. DOI: [10.1257/aer.104.3.832](https://doi.org/10.1257/aer.104.3.832)"
    **Pergunta central:** Por que famílias em países diferentes compram cestas alimentares tão distintas? A diferença deve-se a diferenças nos preços dos alimentos, nos atributos (qualidade, conveniência, sabor) disponíveis em cada país, ou a preferências genuinamente distintas?

    **Método:** Os autores coletaram dados detalhados de compras domiciliares de alimentos em três países — França, Estados Unidos e Reino Unido — com informações sobre quantidades, preços pagos e características dos produtos (calorias, teor de gordura, nível de processamento, conveniência). Usando o arcabouço de Lancaster, modelaram cada produto como um conjunto de atributos, estimando a função utilidade sobre atributos (não sobre produtos) com técnicas de equações estruturais. A abordagem permite decompor as diferenças internacionais nas cestas alimentares em três componentes: diferenças de preços, diferenças na disponibilidade de atributos, e diferenças nas preferências sobre atributos.

    **Resultado principal:** A maior parte das diferenças internacionais nas cestas alimentares é explicada por diferenças nos preços e na disponibilidade de atributos — não por diferenças nas preferências. Se franceses, americanos e britânicos enfrentassem os mesmos preços e as mesmas opções de produtos disponíveis, suas cestas alimentares seriam muito mais semelhantes do que as observadas. Em particular, os americanos compram mais alimentos processados e calóricos não porque preferem esses atributos, mas porque são relativamente mais baratos nos EUA. Esse resultado tem implicações importantes para políticas de saúde pública: uma tributação sobre alimentos processados (similar ao imposto seletivo proposto no Brasil) pode ser eficaz em alterar a composição da cesta, pois as diferenças nos padrões alimentares respondem ao sistema de preços.

    **Relevância para o capítulo:** O artigo é uma implementação empírica direta do modelo de Lancaster (Seção 6.6.1) em grande escala, com dados reais de múltiplos países. Ele demonstra que o framework de atributos não é apenas uma construção teórica abstrata, mas uma ferramenta empírica poderosa para entender padrões de demanda. Para o Brasil, o resultado sugere que as diferenças regionais e inter-classes nos padrões alimentares — documentadas pela POF/IBGE e discutidas nas Seções 6.2 e 6.7 — podem refletir principalmente diferenças nos preços relativos dos atributos (calorias, proteínas, conveniência) entre regiões e classes de renda, e não diferenças intrínsecas nas preferências. Isso implica que políticas de preços — subsídios a alimentos saudáveis, tributação de ultraprocessados — poderiam ser instrumentos eficazes para alterar a composição das cestas alimentares das famílias brasileiras.

## 📚 Referências do Capítulo

- Deaton, Angus, e John Muellbauer. 1980. [*Economics and Consumer Behavior*](https://books.google.com/books/about/Economics_and_Consumer_Behavior.html?id=B81RYQsx2l0C). Cambridge: Cambridge University Press.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 3 (Seções 3.G–3.I) e Cap. 4.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 5–6.
- Pindyck, Robert S., e Daniel L. Rubinfeld. 2013. [*Microeconomia*](https://books.google.com/books/about/Microeconomics.html?id=h6e7AAAAIAAJ). 8ª ed. São Paulo: Pearson. Cap. 4.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Cap. 6 e 8.
