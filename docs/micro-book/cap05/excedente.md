# 5.8–5.9 Excedente do Consumidor e Preferência Revelada

## 5.8 O Lucro Invisível do Comprador: Excedente do Consumidor

*And now for something completely different* — ou melhor, *completely practical*. Elasticidades dizem *como* a demanda reage. Mas o ministro da Fazenda quer saber outra coisa: *quanto* o consumidor perde (em reais!) quando a gasolina sobe R$ 0,50? E quanto ganha quando o governo zera o ICMS sobre a cesta básica? Para isso, precisamos de uma régua monetária de bem-estar — e é exatamente isso que o **excedente do consumidor** fornece. É a ferramenta que traduz utilidade abstrata em valores que cabem numa planilha de orçamento público.

### 5.8.1 O conceito marshalliano

O **excedente do consumidor** (\(EC\)) mede o ganho líquido que o consumidor obtém ao participar do mercado — a diferença entre o que estaria disposto a pagar e o que efetivamente paga. Esse conceito foi introduzido por Alfred Marshall em seus *Principles of Economics* (1890) e permanece, até hoje, a medida mais utilizada em análises de política econômica, apesar de suas limitações teóricas:

\[
EC = \int_{0}^{x^*} p(x) \, dx - p^* \cdot x^* \label{eq:5.8.11} \tag{5.8.11}
\]

onde \(p(x)\) é a função de demanda inversa. A equação $\eqref{eq:5.8.11}$ traduz em linguagem matemática a ideia de que o consumidor extrai valor de cada unidade comprada acima do preço que efetivamente paga.

### 5.8.2 Variação compensatória (VC)

O excedente do consumidor marshalliano é uma medida prática e amplamente utilizada, mas possui uma limitação teórica: ele se baseia na curva de demanda marshalliana, que mistura efeitos substituição e renda. Para obter medidas de bem-estar teoricamente exatas, precisamos recorrer às curvas de demanda hicksiana, que mantêm a utilidade constante. Isso nos leva à variação compensatória e à variação equivalente. Hausman (1981), cujo artigo seminal está discutido na seção "Pesquisa em Ação", demonstrou que a diferença entre EC e VC pode ser substancial — especialmente para bens que representam parcela significativa do orçamento — o que justifica o uso das medidas exactas em análises de custo-benefício de políticas públicas no Brasil.

!!! definition "Variação Compensatória"
    A **variação compensatória** (\(VC\)) é a quantia de renda que deve ser retirada (ou dada) ao consumidor, após uma mudança de preço, para que ele retorne ao nível de utilidade original \(\bar{U}_0\):

    \[
    VC = E(\mathbf{p}^1, U_0) - E(\mathbf{p}^0, U_0) = E(\mathbf{p}^1, U_0) - I
    \]

    A \(VC\) utiliza a curva de demanda hicksiana avaliada no nível de utilidade **inicial**.

Geometricamente, a \(VC\) é a área à esquerda da curva de demanda hicksiana referente à utilidade inicial, entre os dois preços.

### 5.8.3 Variação equivalente (VE)

!!! definition "Variação Equivalente"
    A **variação equivalente** (\(VE\)) é a quantia de renda que, se dada ao consumidor antes da mudança de preço, o deixaria tão bem quanto ele ficaria após a mudança:

    \[
    VE = E(\mathbf{p}^1, U_1) - E(\mathbf{p}^0, U_1) = I - E(\mathbf{p}^0, U_1)
    \]

    A \(VE\) utiliza a curva de demanda hicksiana avaliada no nível de utilidade **final**.

### 5.8.4 Relação entre EC, VC e VE

Dispondo de três medidas de bem-estar — EC, VC e VE —, cabe perguntar: como elas se relacionam entre si? Em geral, as três fornecem valores distintos, e a ordenação entre elas depende da natureza do bem e da direção da variação de preço. A intuição da desigualdade abaixo é que a VC usa a curva hicksiana da utilidade inicial (mais baixa, para uma queda de preço), que é mais inclinada; a VE usa a da utilidade final (mais alta), que é menos inclinada; o EC usa a curva marshalliana, que fica "entre" as duas. Para uma queda de preço de um bem normal:

\[
VC < EC < VE
\]

!!! theorem "Proposição — Equivalência das medidas de bem-estar (quase-linear)"
    Se \(u(x_1, x_2) = v(x_1) + x_2\) (utilidade quase-linear), então para qualquer variação de preços:

    \[
    VC = VE = \Delta EC = \int_{p_1^0}^{p_1^1} x_1^*(p_1)\, dp_1.
    \]

    **Demonstração:** a demanda hicksiana por \(x_1\) é \(h_1(\mathbf{p}, \bar{u}) = (v')^{-1}(p_1/p_2)\), independente de \(\bar{u}\). Logo a integral de \(h_1\) entre \(p_1^0\) e \(p_1^1\) é a mesma para qualquer nível de utilidade de referência, e coincide com a integral da demanda marshalliana (que também é \((v')^{-1}(p_1/p_2)\)).

As três medidas coincidem quando o efeito renda é nulo (utilidade quase-linear), caso em que a curva marshalliana e a hicksiana são idênticas.

!!! idea "Intuição Econômica"
    **Em uma frase:** A variação compensatória pergunta "quanto dinheiro compensa a perda?"; a variação equivalente pergunta "quanto você pagaria para evitar a perda?" — são dois ângulos da mesma mudança de bem-estar.

    **Pense assim:** Suponha que o preço do gás de cozinha dobre. A VC pergunta: "quanto o governo teria que depositar na sua conta para você ficar tão bem quanto antes?" A VE pergunta: "quanto você toparia pagar hoje para garantir que o preço não suba?" As respostas diferem porque seu poder de compra muda entre os dois cenários.

    **Por que isso importa:** VC e VE são as medidas teoricamente corretas de bem-estar em análises de custo-benefício de políticas públicas, como reajustes tarifários de energia elétrica ou mudanças no ICMS sobre combustíveis.

!!! tip "Quando usar qual medida?"
    - **VC** é apropriada para avaliar se o consumidor aceitaria uma mudança (quanto precisa ser compensado).
    - **VE** é apropriada para avaliar quanto o consumidor pagaria para obter uma mudança.
    - **EC** marshalliano é uma aproximação prática, amplamente usada em análise de políticas públicas pela sua facilidade de cálculo.

??? exercicio-resolvido "Exercício Resolvido 5.2"
    **Enunciado:** Um consumidor possui utilidade quase-linear \(U(x,y) = 2\sqrt{x} + y\), com \(p_y = 1\) e renda \(I = 10\). O preço de \(x\) sobe de \(p_x = 1\) para \(p_x' = 4\). Calcule a VC, a VE e a variação no EC. Confirme que as três medidas coincidem.

    **Dados:** \(U = 2\sqrt{x} + y\), \(p_y = 1\), \(I = 10\), \(p_x^0 = 1\), \(p_x^1 = 4\).

    **Resolução:**

    **Passo 1 — Demandas marshallianas**

    CPO (interior): \(\frac{1}{\sqrt{x}} = \frac{p_x}{p_y} = p_x\). Logo \(x = \frac{1}{p_x^2}\) e \(y = I - p_x \cdot x = I - \frac{1}{p_x}\).

    - Situação inicial: \(x_0 = 1\), \(y_0 = 10 - 1 = 9\). \(U_0 = 2 + 9 = 11\).
    - Situação final: \(x_1 = 1/16\), \(y_1 = 10 - 4/16 = 10 - 0{,}25 = 9{,}75\). \(U_1 = 2 \times 0{,}25 + 9{,}75 = 10{,}25\).

    **Passo 2 — Função dispêndio**

    Para utilidade quase-linear, a demanda hicksiana por \(x\) é \(h_x = 1/p_x^2\) (independente de \(\bar{U}\)), e \(h_y = \bar{U} - 2/p_x\). Logo:

    \[
    E(p_x, p_y, \bar{U}) = p_x \cdot \frac{1}{p_x^2} + 1 \cdot \left(\bar{U} - \frac{2}{p_x}\right) = \frac{1}{p_x} + \bar{U} - \frac{2}{p_x} = \bar{U} - \frac{1}{p_x}
    \]

    **Passo 3 — VC, VE e \(\Delta EC\)**

    \[
    VC = E(p_x^1, U_0) - I = \left(11 - \frac{1}{4}\right) - 10 = 10{,}75 - 10 = 0{,}75
    \]

    \[
    VE = I - E(p_x^0, U_1) = 10 - \left(10{,}25 - 1\right) = 10 - 9{,}25 = 0{,}75
    \]

    \[
    \Delta EC = \int_{p_x^0}^{p_x^1} x(p) \, dp = \int_{1}^{4} \frac{1}{p^2} \, dp = \left[-\frac{1}{p}\right]_1^4 = -\frac{1}{4} + 1 = 0{,}75
    \]

    **Resultado:** \(VC = VE = \Delta EC = 0{,}75\).

    **Interpretação econômica:** as três medidas coincidem porque a utilidade é quase-linear — o efeito renda sobre \(x\) é zero, e as curvas marshalliana e hicksiana de \(x\) são idênticas. Em aplicações práticas, quando o bem em questão representa parcela pequena do orçamento (como um produto específico), o efeito renda é negligível e o EC marshalliano é uma boa aproximação das medidas exatas de bem-estar.

<iframe src="/micro-book/graficos/cap05/excedente-consumidor.html" title="Figura 5.4 — Excedente do consumidor (EC), variação compensatória (VC) e variação equivalente (VE)" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 5.4 — Excedente do consumidor (EC), variação compensatória (VC) e variação equivalente (VE).** Ajuste os preços \(p_0\) e \(p_1\) e ative/desative cada medida. Para uma queda de preço de bem normal: \(VC < \Delta EC < VE\). O EC usa a demanda marshalliana (linear); VC e VE usam demandas hicksianas (Cobb-Douglas).
</div>

!!! box-mundo "Box Mundo 5.2 — Medidas de bem-estar na política comercial: VC e VE na avaliação de acordos da OMC"

    **Contexto:** As medidas de bem-estar desenvolvidas nesta seção — variação compensatória (VC), variação equivalente (VE) e excedente do consumidor (EC) — não são apenas construções teóricas: constituem a base metodológica para avaliar o impacto de políticas comerciais sobre consumidores e produtores em diferentes países. A Organização Mundial do Comércio (OMC) e instituições como o Banco Mundial utilizam extensivamente modelos de equilíbrio geral computável (CGE) que calculam VC e VE para estimar os ganhos e perdas de rodadas de liberalização comercial — como a Rodada Uruguai (1994) e as negociações da Rodada Doha (2001–presente).

    **Dados:** Anderson, Martin e Van der Mensbrugghe (2006), em estudo publicado pelo Banco Mundial, utilizaram o modelo LINKAGE (um CGE global com 27 regiões e 25 setores) para estimar os ganhos de bem-estar da liberalização comercial multilateral proposta na Rodada Doha. Os autores calcularam a variação equivalente (VE) — a quantia que cada região pagaria, aos preços vigentes antes da reforma, para obter o mesmo ganho de bem-estar proporcionado pela liberalização. Os resultados mostraram ganhos globais de US$ 96 a US$ 287 bilhões anuais (dependendo do cenário de liberalização), mas com distribuição fortemente desigual: países desenvolvidos capturariam a maior parte dos ganhos absolutos, enquanto países em desenvolvimento obteriam ganhos proporcionalmente maiores em relação ao PIB, especialmente na agricultura. Arkolakis, Costinot e Rodríguez-Clare (2012, *American Economic Review*) demonstraram que, para uma ampla classe de modelos de comércio com preferências CES, os ganhos de bem-estar do comércio podem ser resumidos por uma estatística suficiente: a participação dos gastos domésticos elevada à potência \(-1/(\sigma-1)\), onde \(\sigma\) é a elasticidade de substituição CES — conectando diretamente a teoria da Seção 4.10.4 à mensuração de bem-estar desta seção.

    **Análise:** A escolha entre VC e VE é particularmente relevante em política comercial, pois os resultados podem divergir significativamente quando as variações de preço são grandes — como no caso de eliminação de tarifas elevadas sobre produtos agrícolas. A VC pergunta "quanto compensar os perdedores da liberalização para que fiquem tão bem quanto antes?", enquanto a VE pergunta "quanto os ganhadores estariam dispostos a pagar, antes da reforma, para que ela ocorresse?" — perspectivas que levam a estimativas diferentes e podem influenciar a viabilidade política de acordos comerciais. A relação de Willig (1976), discutida nesta seção, fornece limites para a divergência entre EC, VC e VE, assegurando que, para bens com elasticidade-renda moderada e parcela orçamentária pequena, o excedente do consumidor marshalliano — mais fácil de estimar — é uma aproximação aceitável das medidas exatas.

    **Fonte:** Anderson, K.; Martin, W.; Van der Mensbrugghe, D. (2006). "Market and Welfare Implications of Doha Reform Scenarios." In *Agricultural Trade Reform and the Doha Development Agenda*, Banco Mundial. Arkolakis, C.; Costinot, A.; Rodríguez-Clare, A. (2012). "New Trade Models, Same Old Gains?" *American Economic Review*, 102(1), 94–130.

---

## 5.9 Suas Compras Falam por Você: Preferência Revelada

Tudo que fizemos até aqui partiu de um objeto invisível: a função de utilidade. Ninguém jamais viu uma, mediu uma ou tropeçou numa. Será que é possível chegar às mesmas conclusões usando apenas o que *é* observável — preços pagos e quantidades compradas?[^spanish-inquisition-rp] Em 1938, Paul Samuelson, aos 22 anos, mostrou que sim. A ideia: se o consumidor escolheu a cesta A quando podia comprar a cesta B, ele *revelou* que prefere A a B. Nenhuma função de utilidade necessária — apenas o comportamento observado. Essa inversão de lógica — das escolhas para as preferências, em vez do contrário — é a **teoria da preferência revelada**, e ela deu a Samuelson o Nobel.

[^spanish-inquisition-rp]: *Nobody expects the Spanish Inquisition!* — e ninguém esperava que fosse possível derivar a Lei da Demanda sem postular uma função de utilidade. A preferência revelada é a Inquisição Espanhola da microeconomia: chega sem aviso, armada apenas com dados observáveis, e extrai confissões (preferências) que nenhuma outra abordagem conseguia.

!!! definition "Axioma Fraco da Preferência Revelada (AFPR)"
    Se a cesta \(\mathbf{x}^0\) é escolhida quando \(\mathbf{x}^1\) era acessível (isto é, \(\mathbf{p}^0 \cdot \mathbf{x}^1 \leq \mathbf{p}^0 \cdot \mathbf{x}^0\)), então \(\mathbf{x}^1\) não pode ser escolhida quando \(\mathbf{x}^0\) é acessível (isto é, \(\mathbf{p}^1 \cdot \mathbf{x}^0 > \mathbf{p}^1 \cdot \mathbf{x}^1\)).

!!! info "Prêmio Nobel — Paul A. Samuelson (1970)"

    **Paul Anthony Samuelson** (1915–2009) foi um economista americano. Obteve o PhD em Harvard sob orientação de Wassily Leontief e foi professor no MIT por mais de seis décadas. Foi o primeiro americano a receber o Nobel de Economia.

    **Por que ganhou o Nobel:**
    Premiado pelo trabalho científico que elevou o nível da análise econômica. Samuelson revolucionou múltiplas áreas: formalizou a teoria da preferência revelada, demonstrando que as escolhas observadas do consumidor são suficientes para reconstruir suas preferências sem recorrer a funções de utilidade, e unificou a estática comparativa com o princípio de correspondência em *Foundations of Economic Analysis* (1947).

    **Conexão com este capítulo:**
    A teoria da preferência revelada, apresentada neste capítulo, é uma das contribuições mais elegantes de Samuelson. O Axioma Fraco da Preferência Revelada (WARP) permite testar a racionalidade do consumidor usando apenas dados de preços e quantidades observadas — sem hipóteses sobre utilidade ou preferências subjacentes.

O poder do AFPR reside na sua simplicidade: ele não exige que conheçamos as preferências do consumidor, apenas que observemos suas escolhas. Em termos econômicos, o AFPR captura a ideia de que um consumidor racional não pode revelar preferências contraditórias: se escolheu \(\mathbf{x}^0\) quando \(\mathbf{x}^1\) era acessível, é porque prefere \(\mathbf{x}^0\) — e portanto não pode, coerentemente, escolher \(\mathbf{x}^1\) quando \(\mathbf{x}^0\) também é acessível. Mas por que isso é relevante para o presente capítulo? Porque o AFPR garante a **negatividade do efeito substituição de Slutsky** — o mesmo resultado que derivamos anteriormente a partir da concavidade da função dispêndio, agora obtido por uma via puramente observacional. Se o consumidor satisfaz o AFPR, então, para uma variação compensada de preço (no sentido de Slutsky):

\[
(\mathbf{p}^1 - \mathbf{p}^0) \cdot (\mathbf{x}^1 - \mathbf{x}^0) \leq 0
\]

Em termos escalares, para uma variação apenas em \(p_i\): \(\Delta p_i \cdot \Delta x_i^S \leq 0\), onde \(\Delta x_i^S\) é a variação compensada — exatamente a negatividade do efeito substituição.

!!! theorem "Teorema: Equivalência entre AFPR e negatividade do efeito substituição"
    Um consumidor cujas escolhas satisfazem o Axioma Fraco da Preferência Revelada exibe efeito substituição de Slutsky não-positivo. Reciprocamente, se a matriz de Slutsky é negativa semidefinida, as escolhas observadas satisfazem o AFPR (sob certas condições de regularidade).

A teoria da preferência revelada tem um papel duplo na microeconomia moderna. Positivamente, ela fornece um critério empírico para testar a racionalidade: se os dados de preços e quantidades de um consumidor violam o AFPR, temos evidência de comportamento irracional — ou de erros de medição ou agregação. Normativamente, ela fundamenta a validade das medidas de bem-estar discutidas na Seção 5.8: a variação compensatória e a variação equivalente são bem definidas apenas se as preferências do consumidor são consistentes com alguma ordenação racional, condição que o AFPR ajuda a verificar. O artigo de Hoderlein e Stoye (2014), discutido na seção "Pesquisa em Ação" deste capítulo, estende esse raciocínio para uma população heterogênea de consumidores, mostrando que as condições de preferência revelada continuam testáveis mesmo quando as preferências individuais não são observadas diretamente.

A preferência revelada fecha o círculo: partimos de preferências para derivar escolhas (Capítulos 3–5); agora, das escolhas observadas, recuperamos as preferências. A teoria se confirma — ou se refuta — pelos dados.

---

As ferramentas desenvolvidas ao longo deste capítulo — decomposição de Slutsky, elasticidades, excedente do consumidor, preferência revelada — ganham vida quando aplicadas a problemas concretos. O estudo de caso a seguir ilustra como essas ferramentas são utilizadas na análise do mercado brasileiro de combustíveis, um dos mais estudados empiricamente no país.

!!! box-brasil "Box Brasil 5.3 — Elasticidade-preço da gasolina no Brasil"
    A gasolina é um dos bens mais estudados empiricamente no Brasil, tanto pela relevância fiscal (ICMS, CIDE, PIS/COFINS) quanto pelo impacto no custo de vida. A Agência Nacional do Petróleo (ANP) coleta semanalmente preços em postos de todo o país, fornecendo uma base de dados rica para estimações econométricas.

    **Principais achados empíricos:**

    - **Elasticidade-preço de curto prazo**: estimativas variam entre \(-0{,}20\) e \(-0{,}50\), com a maioria dos estudos convergindo para valores próximos de \(-0{,}35\). Isso significa que um aumento de 10% no preço da gasolina reduz o consumo em cerca de 3,5% no curto prazo.

    - **Elasticidade-preço de longo prazo**: entre \(-0{,}55\) e \(-0{,}85\). No longo prazo, os consumidores ajustam o estoque de veículos, mudam rotas e padrões de deslocamento e migram para etanol ou transporte público.

    - **Efeito substituição gasolina-etanol**: o Brasil é peculiar por possuir a maior frota *flex-fuel* do mundo. A substituibilidade gasolina-etanol depende criticamente da razão de preços — a regra prática de que o etanol é vantajoso quando seu preço é inferior a 70% do preço da gasolina (pela diferença de conteúdo energético) gera uma elasticidade-preço cruzada estimada entre \(+0{,}80\) e \(+1{,}40\).

    - **Heterogeneidade regional**: estudos do IPEA documentam que a elasticidade-preço é maior (em valor absoluto) no Nordeste e menor no Sudeste, refletindo diferenças na participação do gasto com combustíveis no orçamento familiar e na disponibilidade de transporte público.

    - **Decomposição dos efeitos**: Santos (2013), utilizando microdados da POF, decompôs o efeito total em efeito substituição e efeito renda. Para as famílias de menor renda, o efeito renda responde por quase 40% da variação total na demanda por gasolina, confirmando que o combustível representa parcela significativa do orçamento dessas famílias.

    **Implicações de política**: a inelasticidade da demanda por gasolina no curto prazo implica que aumentos de impostos sobre combustíveis (como a CIDE) geram receita tributária substancial, mas com custo de bem-estar significativo — especialmente para famílias de baixa renda, para as quais a variação compensatória pode representar parcela relevante do orçamento mensal.

    *Fontes: ANP — Levantamento de Preços de Combustíveis; IPEA — Texto para Discussão n.º 1.898 (2013); Santos (2013); Cardoso et al. (2019).*

!!! box-mundo "Box Mundo 5.3 — Bens de Giffen na prática: o experimento do arroz na China de Jensen e Miller"

    **Contexto:** A existência de bens de Giffen — bens para os quais a curva de demanda é positivamente inclinada, de modo que um aumento de preço *eleva* a quantidade demandada — é uma das previsões mais contraintuitivas da teoria da demanda. Como discutido na Seção 5.4, o comportamento de Giffen requer que o bem seja fortemente inferior e represente parcela substancial do orçamento, de modo que o efeito renda (positivo) domine o efeito substituição (negativo). Apesar de figurar em todos os manuais de microeconomia desde Alfred Marshall (1890), a evidência empírica direta de bens de Giffen foi, durante mais de um século, notavelmente escassa e controversa. A situação mudou em 2008, quando Robert Jensen e Nolan Miller publicaram o que é considerado o primeiro experimento controlado que documenta rigorosamente o comportamento de Giffen em condições naturais.

    **Dados:** Jensen e Miller (2008, *American Economic Review*) conduziram um experimento de campo na província de Hunan (sul da China) e na província de Gansu (noroeste). Em cada localidade, famílias de baixa renda foram aleatoriamente designadas a receber subsídios ao preço do alimento básico local — arroz em Hunan e trigo em Gansu — por cinco meses, com o subsídio sendo depois removido. O desenho experimental permitiu estimar a curva de demanda de forma causal. Os resultados para o arroz em Hunan foram inequívocos: quando o subsídio reduziu o preço efetivo do arroz, as famílias consumiram *menos* arroz (e mais carne e vegetais); quando o subsídio foi removido e o preço voltou ao nível original, o consumo de arroz *aumentou*. A elasticidade-preço estimada para o arroz entre as famílias mais pobres de Hunan foi positiva e estatisticamente significativa, da ordem de +0,45. Para o trigo em Gansu, os resultados foram qualitativamente similares, mas estatisticamente mais fracos.

    **Análise:** O resultado de Jensen e Miller confirma a decomposição de Slutsky da Seção 5.4 em condições reais. O arroz em Hunan satisfaz todas as condições teóricas para o comportamento de Giffen: (i) é um bem fortemente inferior — famílias muito pobres consomem arroz como principal fonte calórica e migram para alimentos de maior qualidade à medida que sua renda real aumenta; (ii) representa parcela muito elevada do orçamento alimentar — acima de 50% para as famílias mais pobres da amostra; (iii) as alternativas disponíveis (carne, vegetais) são suficientemente mais caras para que o efeito substituição seja pequeno. Quando o preço do arroz sobe, a queda do poder de compra real é tão severa que as famílias são forçadas a renunciar a alimentos melhores e consumir *mais* do alimento básico e barato — exatamente o mecanismo do efeito renda dominante descrito na Equação de Slutsky. A evidência de Jensen e Miller demonstra que bens de Giffen não são uma curiosidade teórica, mas um fenômeno real que emerge em contextos de pobreza extrema e concentração calórica em um único alimento — com implicações diretas para o desenho de políticas de segurança alimentar e subsídios a alimentos básicos.

    **Fonte:** Jensen, R. T.; Miller, N. H. (2008). Giffen behavior and subsistence consumption. *American Economic Review*, 98(4), 1553–1577. Marshall, A. (1890). *Principles of Economics*. London: Macmillan.

---

Se este capítulo funcionou, você sai dele com três convicções:

1. **Toda mudança de preço é duas mudanças.** O efeito substituição redireciona o consumo (sempre contra o bem que encareceu); o efeito renda empobrece ou enriquece. Slutsky nos ensinou a separá-los — e essa cirurgia é a base de toda análise de política tributária, tarifária e regulatória.
2. **A Lei da Demanda não é uma lei — é um teorema condicional.** Ela vale para bens normais (e para a maioria dos inferiores), mas pode falhar nos raríssimos casos de Giffen. Saber *quando* ela falha importa mais do que saber que "geralmente vale".
3. **Medir bem-estar exige cuidado com a régua.** O excedente do consumidor marshalliano é prático, mas a VC e a VE são as medidas teoricamente corretas. A diferença entre elas depende do tamanho do efeito renda — e para famílias pobres, essa diferença pode ser enorme.

*Até aqui, cada bem vivia sozinho. No próximo capítulo, eles se encontram — e a relação é complicada.*

---

<iframe src="/micro-book/graficos/cap05/webr-slutsky.html" title="WebR — Decomposição de Slutsky" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 5.1 — Decomposição de Slutsky.** Visualize os pontos A (original), B (Slutsky-compensado) e C (final), e calcule os efeitos substituição e renda. Altere o choque de preço e o parâmetro α para ver quando o efeito renda domina.
</div>

<iframe src="/micro-book/graficos/cap05/webr-engel.html" title="WebR — Curvas de Engel" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 5.2 — Curvas de Engel e Lei de Engel.** Compare bens de luxo (E>1), necessidade (0<E<1) e inferior (E<0). O segundo painel mostra a Lei de Engel: famílias pobres gastam maior parcela da renda com alimentação.
</div>

<iframe src="/micro-book/graficos/cap05/webr-excedente.html" title="WebR — Excedente do Consumidor" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 5.3 — Três medidas de bem-estar: EC, VC e VE.** Com utilidade quase-linear, VC = VE = EC (sem efeito-renda). Com Cobb-Douglas, VE ≤ EC ≤ VC. Veja a comparação numérica e gráfica.
</div>

<iframe src="/micro-book/graficos/cap05/webr-giffen.html" title="WebR — Simulação de Bem de Giffen" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 5.4 — Bem de Giffen: quando a demanda sobe com o preço.** Simule um bem de subsistência e veja a Slutsky em ação: o efeito-renda (positivo, pois o bem é inferior) domina o efeito-substituição. Altere b_pref para transitar entre normal e Giffen.
</div>

---

!!! classroom "Atividade 5.1 — Slutsky no bolso: decompondo o aumento da gasolina (20 min)"
    **Objetivo:** Aplicar a decomposição de Slutsky a um exemplo real vivenciado pelos alunos — o aumento no preço da gasolina.

    **Material:** Calculadora (celular), dados projetados.

    **Protocolo:**

    1. **Setup** (3 min): Projete: "Consumidor com \(U = x_1^{0{,}4} x_2^{0{,}6}\), onde \(x_1\) = litros de gasolina/mês e \(x_2\) = todos os outros bens. Renda \(m = 3000\), \(p_1 = 5\), \(p_2 = 1\)." Peça que encontrem as demandas marshallianas: \(x_1^* = 240\) litros, \(x_2^* = 1800\).
    2. **O choque** (5 min): "A gasolina sobe para \(p_1' = 6\). Encontre a nova cesta." → \(x_1' = 200\), \(x_2' = 1800\). Queda de 40 litros. "Quanto disso é efeito substituição e quanto é efeito renda?"
    3. **Decomposição de Hicks** (7 min): Peça que calculem a renda compensada \(m^c\) que mantém a utilidade original (dica: usar a função dispêndio ou resolver numericamente). Compare com a decomposição de Slutsky (renda que permite comprar a cesta original: \(m^S = 6 \times 240 + 1 \times 1800 = 3240\)). Ao preço novo e renda \(m^S\): \(x_1^{Slutsky} = 0{,}4 \times 3240 / 6 = 216\). ES = \(216 - 240 = -24\), ER = \(200 - 216 = -16\).
    4. **Debrief** (5 min):
        - "O efeito substituição diz: gasolina ficou relativamente mais cara, troco por ônibus/bike. O efeito renda diz: fiquei mais pobre, compro menos de tudo."
        - "Para famílias de baixa renda, o ER domina — é por isso que o aumento da gasolina é tão regressivo."
        - Conecte com a política de preços da Petrobras e a discussão sobre subsídios a combustíveis no Brasil.

    **Conexão com o conteúdo:** Seções 5.3 (decomposição de Hicks e Slutsky), 5.4 (Equação de Slutsky), 5.8 (medidas de bem-estar).

!!! classroom "Atividade 5.2 — Caça ao Giffen: existe ou é lenda? (10 min)"
    **Objetivo:** Debater se bens de Giffen existem empiricamente — e entender por que são teoricamente possíveis mas empiricamente raros.

    **Material:** Projeção de um slide com o resultado de Jensen e Miller (2008).

    **Protocolo:**

    1. **Provocação** (2 min): "Um bem de Giffen é como o Yeti da microeconomia: todo mundo conhece a definição, mas quase ninguém viu um. Alguém consegue dar um exemplo?"
    2. **Think-Pair-Share** (4 min): Individualmente (1 min), em duplas (2 min): "Use a equação de Slutsky para explicar que condições um bem precisa satisfazer para ser Giffen." → Bem inferior (ER > 0 quando preço sobe) E efeito renda domina efeito substituição E grande parcela do orçamento.
    3. **A evidência** (2 min): Projete o resultado de Jensen e Miller (2008, *American Economic Review*): arroz na China como bem de Giffen. Subsidiaram arroz para famílias pobres → consumo de arroz *caiu*. Removeram o subsídio → consumo *subiu*. O arroz era tão grande no orçamento das famílias mais pobres que o efeito renda dominava.
    4. **Debrief** (2 min):
        - "O Giffen não viola a racionalidade — é uma consequência perfeitamente lógica da Slutsky quando as condições se alinham."
        - "A raridade empírica mostra que essas condições quase nunca se alinham no mundo real — mas quando se alinham, o efeito é real."

    **Conexão com o conteúdo:** Seção 5.4 (Equação de Slutsky e bens de Giffen). Referência: Jensen e Miller (2008).
