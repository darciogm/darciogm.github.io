# 6.7–6.8 Agregação da Demanda e Classificação

## 6.7 Da Pessoa ao País: Agregação da Demanda

Até aqui, estudamos um consumidor solitário fazendo escolhas perfeitas. Mas o mercado tem milhões de consumidores — velhos e jovens, ricos e pobres, racionais e impulsivos. A operação óbvia é somar todas as demandas individuais. Mas somar é inocente? A demanda de mercado herda as boas propriedades (Slutsky, homogeneidade) da demanda individual? Podemos fingir que existe um "brasileiro médio" cujas preferências representam as de todos? A resposta curta: depende. A resposta longa é esta seção.

### 6.7.1 Demanda de mercado

<iframe src="/micro-book/graficos/cap06/agregacao-demandas.html" title="Figura 6.6 — Agregação de demandas: soma horizontal" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 6.6 — Agregação de demandas individuais.** Três consumidores com preços de reserva diferentes. A demanda de mercado (preta, espessa) é a soma horizontal — note os "kinks" nos preços onde cada consumidor entra ou sai do mercado.
</div>

A **demanda de mercado** é obtida pela soma horizontal das demandas individuais. Se há \(H\) consumidores, cada um com demanda \(x_i^h(p_1, \ldots, p_n, I^h)\), a demanda de mercado pelo bem \(i\) é:

\[
X_i(p_1, \ldots, p_n, I^1, \ldots, I^H) = \sum_{h=1}^H x_i^h(p_1, \ldots, p_n, I^h) \label{eq:6.7.9} \tag{6.7.9}
\]

### 6.7.2 Condições para uma demanda de mercado "bem-comportada"

A soma horizontal parece inocente, mas esconde uma armadilha. A simples soma de demandas individuais racionais não garante que a demanda agregada se comporte como se fosse gerada por um "consumidor representativo". Sob que condições podemos ignorar a distribuição de renda e trabalhar apenas com a renda total? Para isso, são necessárias condições adicionais:

!!! definition "Condição de Gorman"
    A demanda de mercado pode ser escrita como função de preços e renda **agregada** \(I = \sum_h I^h\) se, e somente se, todas as curvas de Engel individuais forem lineares e paralelas.[^silly-walks-gorman] Isso ocorre quando as preferências são **quase-homotéticas** (preferências homotéticas mais uma translação) ou, de modo mais geral, quando as funções de utilidade indireta têm a forma de Gorman:

    \[
    V^h(\mathbf{p}, I^h) = a(\mathbf{p}) + b(\mathbf{p}) \cdot I^h \label{eq:6.7.10} \tag{6.7.10}
    \]

    onde \(a(\mathbf{p})\) e \(b(\mathbf{p})\) são comuns a todos os consumidores.

Quando a condição de Gorman não é satisfeita, a demanda de mercado depende da **distribuição de renda**, não apenas da renda total. Isso tem implicações profundas para a política econômica: transferências de renda (como o Bolsa Família / Auxílio Brasil) alteram a demanda agregada mesmo que a renda total permaneça constante.

Vale notar que a condição de Gorman é bastante restritiva: ela exige não apenas que as curvas de Engel individuais sejam lineares, mas que todas as famílias tenham a mesma propensão marginal a consumir cada bem (o coeficiente \(b(\mathbf{p})\) deve ser idêntico para todos). Na prática, essa hipótese é quase sempre violada. Família de alta renda e família de baixa renda têm propensões marginais a consumir alimentos, transporte e lazer completamente distintas — reflexo de suas estruturas de preferências, mas também de restrições de crédito, hábitos de consumo e acesso diferenciado a mercados. A evidência empírica, tanto no Brasil quanto internacionalmente, rejeita sistematicamente a condição de Gorman quando testada diretamente sobre dados de consumo domiciliar.

Isso não significa que o conceito de consumidor representativo seja inútil — modelos macroeconômicos com consumidor representativo continuam sendo ferramentas analíticas poderosas. Mas o economista deve estar consciente de que esses modelos impõem implicitamente a condição de Gorman, e que suas previsões sobre os efeitos distributivos de políticas econômicas serão sistematicamente tendenciosas quando essa condição é violada. A falha de Gorman implica que não é possível separar a análise de eficiência (tamanho do bolo) da análise distributiva (divisão do bolo) — ambas interagem de forma inextricável na determinação da demanda de mercado.

!!! box-brasil "Box Brasil 6.3: Distribuição de renda e demanda agregada"
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

## 6.8 Carne e Cerveja, Uber e Táxi: Classificação no Contexto Brasileiro

*And now for something completely different — ou melhor, completely concreto.*[^completely-different-table]

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

!!! box-brasil "Box Brasil 6.4 — Elasticidades-renda da demanda no Brasil: quem é luxo, quem é necessidade?"

    A classificação de bens como normais, inferiores, de luxo ou necessidade depende da **elasticidade-renda da demanda** (\(\varepsilon_I = \frac{\partial x}{\partial I} \cdot \frac{I}{x}\)). Estimativas empíricas para o Brasil, baseadas na POF 2017–2018 do [IBGE](https://www.ibge.gov.br), revelam um retrato nítido da estrutura de consumo das famílias brasileiras.

    **Elasticidades-renda estimadas para categorias selecionadas:**

    | Categoria de despesa | Elasticidade-renda (\(\varepsilon_I\)) | Classificação |
    |:---------------------|:--------------------------------------:|:--------------|
    | Alimentação no domicílio | 0,30–0,40 | Necessidade |
    | Arroz e feijão | 0,10–0,20 | Necessidade (quase inelástico) |
    | Carne bovina | 0,50–0,70 | Necessidade |
    | Alimentação fora do domicílio | 0,80–1,10 | Próximo a luxo |
    | Transporte público | 0,20–0,35 | Necessidade |
    | Transporte por aplicativo | 1,20–1,50 | Luxo |
    | Saúde (planos privados) | 1,30–1,60 | Luxo |
    | Educação privada | 1,40–1,70 | Luxo |
    | Habitação (aluguel) | 0,70–0,90 | Necessidade |
    | Vestuário | 0,90–1,10 | Próximo a unitário |
    | Serviços de streaming | 1,10–1,40 | Luxo |
    | Fumo | –0,10 a 0,10 | Inferior/necessidade |

    **O que os números revelam:**

    - **Lei de Engel confirmada:** A participação de alimentação no orçamento cai sistematicamente com a renda — de 22% para famílias com renda até R$ 1.908/mês a 7,6% para famílias acima de R$ 23.850/mês (POF 2017–2018). Isso é consistente com \(\varepsilon_I < 1\) para alimentos.
    - **Serviços são o "luxo" brasileiro:** Saúde privada, educação privada, transporte por aplicativo e streaming apresentam elasticidades acima de 1 — à medida que a renda cresce, essas categorias ganham peso no orçamento.
    - **Fumo como bem inferior:** O consumo de tabaco diminui ou estagna com aumentos de renda, refletindo tanto mudanças de preferências quanto políticas antitabagismo.
    - **Implicações para tributação:** A reforma tributária (EC 132/2023) e o imposto seletivo devem considerar essas elasticidades: tributar bens com \(\varepsilon_I\) baixa (alimentos) é regressivo; tributar bens com \(\varepsilon_I\) alta (luxo) é progressivo.

    **Fontes:** IBGE, Pesquisa de Orçamentos Familiares 2017–2018; Almeida e Azzoni (2016), *Estudos Econômicos*; Hoffmann, R. (2010), "Estimativas das elasticidades-renda de várias categorias de despesa e de consumo, especialmente alimentos, no Brasil, com base na POF de 2008-2009", *Revista de Economia Agrícola*, 57(2), 49–62; Silveira et al. (2019), "Impactos distributivos da tributação no Brasil", IPEA.

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

Nenhum bem é uma ilha — e este capítulo mapeou o arquipélago. Substitutos, complementos, elasticidades cruzadas e a matriz de Slutsky são as ferramentas que revelam como os bens se conectam. Com elas, o economista pode prever não apenas o que acontece quando o preço de *um* bem muda, mas o efeito cascata sobre *todos* os demais.

Se você sair deste capítulo com três convicções, que sejam estas:

1. **A classificação depende da lente.** Substituto bruto e substituto líquido são perguntas diferentes — a primeira mistura efeito renda, a segunda isola a substituição pura. Nunca confunda observação de mercado com estrutura de preferências.
2. **Simplificar é arte, não preguiça.** O Teorema do Bem Composto e o modelo de Lancaster são formas disciplinadas de reduzir a complexidade de uma economia com milhares de bens sem perder o essencial — desde que suas condições sejam satisfeitas.
3. **Distribuição importa.** A demanda de mercado não depende só da renda total, mas de como ela é distribuída. Ignorar a heterogeneidade dos consumidores é assumir a condição de Gorman — e a evidência empírica rejeita essa hipótese sistematicamente.

*Nenhum bem é uma ilha — e agora sabemos mapear as pontes entre eles. No próximo capítulo, tiramos a última certeza: o consumidor descobre que não sabe o que o futuro reserva.*

---

<iframe src="/micro-book/graficos/cap06/webr-elasticidades.html" title="WebR — Elasticidades Cruzadas" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 6.1 — Elasticidades cruzadas com CES.** Altere ρ para ver bens se transformarem de substitutos (ρ positivo, elasticidade cruzada > 0) em complementos (ρ negativo). O painel direito mostra a elasticidade cruzada mudando de sinal.
</div>

<iframe src="/micro-book/graficos/cap06/webr-receita-elasticidade.html" title="WebR — Elasticidade e Receita" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 6.2 — Elasticidade e receita total.** A regra de ouro: dRT/dP = Q(1 + 1/E). Com demanda elástica, subir preço reduz receita; com inelástica, aumenta. Altere E para ver o efeito na receita.
</div>

<iframe src="/micro-book/graficos/cap06/webr-agregacao.html" title="WebR — Agregação de Demandas" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 6.3 — Soma horizontal: da demanda individual à de mercado.** Três consumidores com demandas diferentes geram uma demanda de mercado com kinks nos preços de exclusão. Veja como consumidores "saem" do mercado em preços diferentes.
</div>

<iframe src="/micro-book/graficos/cap06/webr-bem-composto.html" title="WebR — Teorema do Bem Composto" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 6.4 — Teorema do Bem Composto de Hicks.** Se os preços de um grupo de bens se movem proporcionalmente, o grupo inteiro pode ser tratado como um único bem. O código mostra que y/z permanece constante.
</div>

---

!!! classroom "Atividade 6.1 — Substitutos ou complementos? O jogo da classificação (15 min)"
    **Objetivo:** Treinar a distinção entre substitutos/complementos brutos e líquidos usando pares de bens reais brasileiros.

    **Material:** Cartões (ou Mentimeter) com pares de bens.

    **Protocolo:**

    1. **Setup** (2 min): Distribua (ou projete) 8 pares de bens: (1) Gasolina e etanol, (2) Café e açúcar, (3) iPhone e capinha, (4) Carne bovina e frango, (5) Uber e metrô, (6) Arroz e feijão, (7) Netflix e cinema, (8) Cerveja e amendoim.
    2. **Votação individual** (3 min): Para cada par, o aluno vota: "Substituto bruto", "Complemento bruto" ou "Depende". Use Mentimeter ou cartões coloridos (verde = substituto, vermelho = complemento, amarelo = depende).
    3. **Revelação e debate** (5 min): Mostre os resultados. Foque nos pares controversos. Tipicamente: (6) Arroz e feijão dividem a turma — são complementos no prato, mas substitutos como fontes de carboidrato/proteína? (8) Cerveja e amendoim — complementos no bar, mas a classificação *hicksiana* pode diferir.
    4. **Debrief** (5 min):
        - "A resposta depende de qual pergunta fazemos: a classificação *bruta* (marshalliana) inclui o efeito renda; a *líquida* (hicksiana) isola a substituição pura."
        - "Arroz e feijão: se o arroz encarece e sua renda é compensada, você come mais feijão? Se sim, são substitutos líquidos — mesmo que no prato sejam 'complementos culturais'."
        - Conecte com a Seção 6.2 (brutos) vs. 6.3 (líquidos) e com a assimetria dos efeitos brutos.

    **Conexão com o conteúdo:** Seções 6.1–6.3 (classificação de bens), 6.8 (tabela de classificação com dados brasileiros).

!!! classroom "Atividade 6.2 — O Teorema do Bem Composto na prática: quando simplificar é legítimo? (10 min)"
    **Objetivo:** Entender intuitivamente quando é válido agregar vários bens em um único "bem composto" — e quando não é.

    **Material:** Nenhum (projeção).

    **Protocolo:**

    1. **Cenário 1** (3 min): "O preço de *todas* as frutas subiu 15% por causa da seca. Faz sentido tratar 'frutas' como um único bem na análise?" → Sim! Os preços relativos *dentro* do grupo não mudaram. Condição de Hicks satisfeita.
    2. **Cenário 2** (3 min): "O preço da banana subiu 30%, mas o da maçã caiu 5%. Posso tratar 'frutas' como um bem composto?" → Não! Os preços relativos mudaram. A condição do Teorema do Bem Composto falha.
    3. **Debrief** (4 min):
        - "Quando os preços dentro do grupo se movem proporcionalmente, a composição interna do grupo não muda — então podemos ignorar os detalhes e trabalhar com o grupo como unidade."
        - "Esse teorema é o que justifica tratar 'alimentação', 'transporte' ou 'lazer' como bens únicos em modelos aplicados — desde que a condição valha."
        - "O IPCA brasileiro decompõe o consumo em 9 grupos. Cada grupo funciona como bem composto? Quando?"

    **Conexão com o conteúdo:** Seção 6.5 (Teorema do Bem Composto de Hicks).

[^silly-walks-gorman]: A condição de Gorman exige que *todos* os consumidores tenham curvas de Engel lineares e paralelas — uma exigência tão burocrática quanto o *Ministry of Silly Walks* de Monty Python, que demandava formulários em triplicata para financiar andares excêntricos. Na prática, a condição quase nunca é satisfeita, mas isso não impediu gerações de macroeconomistas de fingir que sim — como funcionários obedientes do Ministério.

[^completely-different-table]: Frase imortalizada pelo narrador de *Monty Python's Flying Circus*, usada para transições abruptas entre sketches. Na microeconomia, a transição da teoria abstrata (Seções 6.1–6.7) para a aplicação empírica é igualmente abrupta — mas necessária.
