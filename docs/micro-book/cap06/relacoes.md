# 6.1–6.4 Efeitos Cruzados, Substitutos, Complementos e Matriz de Slutsky

## 6.1 A Gasolina Subiu — O Etanol Sorriu: Efeitos Cruzados

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

Como \(\frac{\partial h_1}{\partial p_1} \leq 0\) (lei da demanda compensada), o segundo termo deve ser não negativo — e como \(p_2 > 0\), concluímos \(\frac{\partial h_1}{\partial p_2} \geq 0\). A equação é a versão em dois bens da restrição $\eqref{eq:6.4.5}$, que exploraremos na Seção 6.4.

Vale notar que esse resultado tem uma conexão direta com o Teorema da Função Implícita (Capítulo 2): as condições de primeira ordem da minimização de dispêndio geram um sistema implícito, e a matriz de Slutsky nada mais é do que a Jacobiana das demandas compensadas em relação a preços — estrutura que garante as propriedades de simetria e semidefinição negativa que embasam o resultado acima. O caso de dois bens é um cenário tão restrito que a estrutura da matriz de Slutsky \(2 \times 2\) — com diagonal negativa e determinante não negativo — força o único elemento fora da diagonal a ser positivo. A riqueza analítica das relações de substituição e complementaridade, incluindo a possibilidade de complementaridade líquida, só se manifesta plenamente quando o número de bens é três ou mais.

!!! idea "Intuição Econômica"
    **Em uma frase:** Com apenas dois bens, eles são sempre substitutos líquidos — a complementaridade só emerge quando existe uma terceira opção.

    **Pense assim:** Se no cardápio do almoço só há arroz e macarrão, e o arroz fica mais caro (com compensação de renda), você necessariamente come mais macarrão — não tem para onde fugir. Só quando existe uma terceira opção (salada) é que dois bens podem ser complementares líquidos.

    **Por que isso importa:** Modelos com apenas dois bens podem ser enganosos para análise de política tributária: a complementaridade, que é fundamental para a regra de Ramsey de tributação ótima, simplesmente não aparece.

---

## 6.2 Amigos ou Rivais? Substitutos e Complementos Brutos

OK, com dois bens o resultado é trivial. Mas no supermercado real existem milhares de bens, e as relações são ricas: café sobe → açúcar cai (complementos); gasolina sobe → etanol sobe (substitutos); gasolina sobe → carros usados... caem? (complementos distantes). A classificação mais intuitiva — a que você "vê" diretamente nos dados de vendas — usa as derivadas cruzadas da demanda marshalliana, e é a que apresentamos agora.

!!! definition "Substitutos e complementos brutos"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos brutos** se \(\frac{\partial x_i}{\partial p_j} > 0\): quando o preço de \(j\) sobe, a demanda por \(i\) aumenta.
    - **Complementos brutos** se \(\frac{\partial x_i}{\partial p_j} < 0\): quando o preço de \(j\) sobe, a demanda por \(i\) cai.
    - **Independentes** se \(\frac{\partial x_i}{\partial p_j} = 0\).

!!! note "Assimetria da classificação bruta"
    A classificação marshalliana **não é necessariamente simétrica**: pode ocorrer que \(\frac{\partial x_1}{\partial p_2} > 0\) enquanto \(\frac{\partial x_2}{\partial p_1} < 0\). Isso decorre da interferência do efeito renda, que contamina a relação cruzada de forma assimétrica. Essa é uma das razões pelas quais a classificação hicksiana é teoricamente preferida.

!!! warning "⚠️ Erro Comum"
    **Supor que a relação de substitutibilidade bruta é simétrica.**

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

<iframe src="/micro-book/graficos/cap06/elasticidade-ponto.html" title="Figura 6.4 — Elasticidade-preço ao longo da demanda linear" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.4 — Elasticidade ao longo da demanda linear.** Arraste o preço e observe: no topo da curva, demanda elástica (\(|\varepsilon|>1\)); na base, inelástica (\(|\varepsilon|<1\)). No ponto médio, elasticidade unitária — exatamente onde a receita total (área do retângulo azul) é máxima.
</div>

<iframe src="/micro-book/graficos/cap06/elasticidade-receita.html" title="Figura 6.5 — Receita total e elasticidade: o teste da receita" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.5 — Receita total e elasticidade.** O painel superior mostra a receita como área; o inferior mostra a curva de receita total \(R(p)\). Na região elástica, reduzir o preço aumenta a receita; na inelástica, o oposto.
</div>

## 6.3 A Versão Sem Efeito Renda: Substitutos e Complementos Líquidos

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

!!! atividade "Think-Pair-Share — Substitutos brutos ou líquidos?"

    **Cenário:** O preço dos planos de saúde sobe 20%. Nos dados de consumo, observa-se que as famílias reduzem simultaneamente o gasto com planos de saúde *e* com educação privada.

    **Pergunta:** Plano de saúde e educação privada são complementos ou substitutos?

    **(a)** Complementos brutos *e* complementos líquidos — sempre que o preço de um sobe, a demanda do outro cai, independentemente do motivo.

    **(b)** Complementos brutos, mas possivelmente substitutos líquidos — a queda conjunta pode refletir o empobrecimento da família (efeito renda), e não uma complementaridade genuína nas preferências.

    **(c)** Substitutos brutos — se o plano de saúde ficou caro, as famílias gastam mais com educação privada para "compensar".

    ??? success "Debrief"
        **(b)** é a resposta correta. A queda simultânea nos dois gastos é consistente com um efeito renda forte: planos de saúde representam parcela significativa do orçamento das famílias de classe média, e o aumento de preço as empobrece, reduzindo o consumo de *todos* os bens normais — inclusive educação privada. Isolando o efeito renda (análise hicksiana), descobre-se que saúde e educação competem pelo mesmo orçamento disponível: são substitutos líquidos. Quem escolheu (a) confundiu a observação de mercado com a estrutura de preferências. Quem escolheu (c) ignorou que os dados *brutos* mostram queda conjunta, não aumento.

        **Lição:** Nunca confie na classificação bruta para inferir preferências. A Equação de Slutsky é a ferramenta que separa o sinal (substituição) do ruído (renda).

---

O gráfico abaixo permite explorar os efeitos cruzados de preço com a função de utilidade CES. Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem, alternando entre substitutos e complementos.

<iframe src="/micro-book/graficos/cap06/substitutos-complementos.html" title="Figura 6.1 — Substitutos e Complementos: Efeitos Cruzados de Preço" class="graph-iframe" style="height:830px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.1 — Substitutos e Complementos: Efeitos Cruzados de Preço.** Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem.
</div>

<iframe src="/micro-book/graficos/cap06/elasticidade-cruzada.html" title="Figura 6.3 — Elasticidade-preço cruzada: substitutos vs complementos" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.3 — Elasticidade cruzada.** Ajuste o grau de relação \(\gamma\): valores positivos geram substituição (demanda se desloca para a direita quando \(p_2\) sobe), negativos geram complementaridade. Observe como a elasticidade cruzada muda de sinal.
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

## 6.4 Quando o Mundo Tem Mais de Dois Bens: Substituibilidade Geral

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

    **Pense assim:** Suponha que todos os bens fossem complementos líquidos de um bem específico — digamos, que o aumento no preço da farinha de trigo reduzisse a demanda compensada por pão, macarrão, biscoito e bolo simultaneamente. Mas isso é impossível: o consumidor precisa alocar sua renda compensada *para algum lugar*. Se gasta menos com tudo relacionado a trigo, precisará gastar mais com carne, legumes, laticínios ou qualquer outro grupo — que são, portanto, substitutos líquidos do trigo. A equação $\eqref{eq:6.4.5}$ formaliza exatamente essa inevitabilidade: a soma ponderada dos efeitos substituição cruzados de qualquer bem deve ser positiva para compensar o efeito substituição próprio negativo.

    **Por que isso importa:** Para qualquer política que encareça um grupo de bens (imposto sobre alimentos ultraprocessados, taxação de combustíveis fósseis), haverá necessariamente bens que se beneficiarão como substitutos líquidos. Identificar esses bens é parte essencial da análise de impacto.

Essa propriedade implica que, embora a complementaridade líquida exista, a substituibilidade é o fenômeno "dominante" no sentido de que não pode haver um bem que seja complemento líquido de todos os outros. Intuitivamente, se o preço de um bem sobe (mantendo a utilidade constante), o consumidor precisa redistribuir seu consumo em direção a *algum* outro bem — a substituição é, em certo sentido, inevitável.

A matriz de Slutsky também tem implicações empíricas diretas. Suas propriedades — simetria e semidefinição negativa — são condições testáveis que os econometras utilizam para verificar se os dados de demanda são consistentes com a teoria do consumidor racional. Estudos que estimam sistemas completos de demanda (como o modelo AIDS de Deaton e Muellbauer, apresentado na seção de Pesquisa em Ação) testam a simetria de Slutsky como hipótese estatística. Quando essa hipótese é rejeitada pelos dados, pode indicar agregação imprópria de bens, violação da hipótese de consumidor representativo, ou simplesmente erro de medição. No Brasil, estudos baseados na POF e em dados de scanner de supermercados têm testado essas restrições para categorias alimentares, com resultados que geralmente suportam a simetria — mas frequentemente rejeitam a semidefinição negativa estrita, sugerindo a presença de efeitos de hábito ou complementaridade dinâmica não capturados pelo modelo estático.
