# 14.6–14.7 Teoremas do Bem-Estar

## 14.6 A Orquestra sem Maestro: Primeiro Teorema do Bem-Estar {#146}

Chegamos ao grand finale da teoria do equilíbrio geral — o resultado que faz economistas perderem o fôlego desde 1954. As condições de eficiência na troca, na produção e no mix de produtos — sintetizadas na [tabela da seção anterior](eficiencia-pareto.md#tabela-14-1) — são alcançadas simultaneamente pelo equilíbrio competitivo. Pare e pense no que isso significa: milhões de agentes, cada um egoisticamente perseguindo seu próprio interesse, sem nenhum planejador central, sem nenhum algoritmo coordenador, chegam a um resultado que *ninguém conseguiria melhorar*. É como se uma orquestra tocasse perfeitamente sem maestro — cada músico ouvindo apenas o preço do ingresso. O Primeiro Teorema do Bem-Estar formaliza essa intuição quase mágica, constituindo o resultado mais importante de toda a teoria do equilíbrio geral.

A ideia de que mercados livres podem produzir resultados socialmente desejáveis tem raízes profundas na história do pensamento econômico. Em 1776, **Adam Smith** escreveu em *A Riqueza das Nações* que cada indivíduo, ao buscar seu próprio interesse, é "conduzido como que por uma mão invisível a promover um fim que não fazia parte de suas intenções". Mas Smith não tinha as ferramentas matemáticas para formalizar essa intuição. Coube a Walras, Pareto e, finalmente, Arrow e Debreu transformar a metáfora da "mão invisível" em um teorema rigoroso — com hipóteses claramente identificadas e uma demonstração lógica precisa. A importância dessa formalização não pode ser subestimada: ao explicitar as *condições* sob as quais o mercado é eficiente, o teorema também identifica exatamente *quando* e *por que* o mercado falha — abrindo caminho para a teoria das falhas de mercado que estudaremos nos próximos capítulos.

!!! theorem "Primeiro Teorema do Bem-Estar"
    Se todos os consumidores e firmas são tomadores de preço, e se existe um mercado completo para cada bem, então o equilíbrio competitivo (walrasiano) é **eficiente no sentido de Pareto**.

Este é o resultado formal que dá substância à intuição da "mão invisível" de Adam Smith: sob concorrência perfeita, o interesse próprio dos agentes, guiado pelos preços de mercado, conduz a uma alocação eficiente sem necessidade de planejamento centralizado.

!!! proof "Demonstração"
    **Demonstração do Primeiro Teorema do Bem-Estar** (economia de troca pura)

    Considere uma economia com \(I\) consumidores e \(n\) bens. Seja \((\mathbf{x}^*, \mathbf{p}^*)\) um equilíbrio walrasiano, onde \(\mathbf{x}_i^*\) é a cesta escolhida pelo consumidor \(i\) e \(\mathbf{p}^*\) é o vetor de preços de equilíbrio.

    **Suposição:** As preferências de cada consumidor são localmente não saciadas (para qualquer cesta e qualquer vizinhança, existe uma cesta preferida naquela vizinhança).

    Suponha, por contradição, que \(\mathbf{x}^*\) não seja Pareto-eficiente. Então existe uma alocação factível \(\hat{\mathbf{x}} = (\hat{\mathbf{x}}_1, \ldots, \hat{\mathbf{x}}_I)\) tal que:

    \[
    \hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^* \quad \forall\, i, \qquad \text{e} \qquad \hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^* \quad \text{para algum } j
    \]

    **Passo 1:** Se \(\hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^*\), então \(\hat{\mathbf{x}}_j\) não pertence ao conjunto orçamentário de \(j\) no equilíbrio (caso contrário, \(j\) teria escolhido \(\hat{\mathbf{x}}_j\) em vez de \(\mathbf{x}_j^*\)). Portanto:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_j > \mathbf{p}^* \cdot \boldsymbol{\omega}_j \label{eq:14.8} \tag{14.8}
    \]

    **Passo 2:** Para todo \(i\) tal que \(\hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^*\), a não saciedade local implica que:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_i \geq \mathbf{p}^* \cdot \boldsymbol{\omega}_i \label{eq:14.9} \tag{14.9}
    \]

    (Se \(\hat{\mathbf{x}}_i\) custasse estritamente menos, por não saciedade local, existiria uma cesta ainda melhor e acessível, contradizendo a otimalidade de \(\mathbf{x}_i^*\).)

    **Passo 3:** Somando $\eqref{eq:14.8}$ e $\eqref{eq:14.9}$ sobre todos os consumidores:

    \[
    \sum_{i=1}^{I} \mathbf{p}^* \cdot \hat{\mathbf{x}}_i > \sum_{i=1}^{I} \mathbf{p}^* \cdot \boldsymbol{\omega}_i
    \]

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) > \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    Mas factibilidade de \(\hat{\mathbf{x}}\) exige \(\sum_i \hat{\mathbf{x}}_i \leq \sum_i \boldsymbol{\omega}_i\). Com \(\mathbf{p}^* > 0\) (consequência da não saciedade local), isso implica:

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) \leq \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    **Contradição.** Portanto, \(\mathbf{x}^*\) é Pareto-eficiente. \(\blacksquare\)

!!! tip "Hipóteses cruciais"
    O Primeiro Teorema requer: (i) comportamento tomador de preço; (ii) mercados completos (sem externalidades nem bens públicos); (iii) não saciedade local das preferências. A violação de qualquer uma dessas hipóteses abre espaço para **falhas de mercado** — tema dos próximos capítulos.

A elegância do Primeiro Teorema reside na economia de suas hipóteses: não requer convexidade das preferências, nem concavidade das funções de utilidade, nem tampouco qualquer forma funcional específica. Basta que os consumidores não estejam saciados e que os mercados sejam competitivos e completos. A contrapartida dessa generalidade é que o teorema nada diz sobre a *desejabilidade* da alocação eficiente alcançada — apenas que ela é eficiente. Uma alocação onde um bilionário possui tudo e os demais agentes nada pode ser Pareto-eficiente (ninguém pode melhorar sem que o bilionário piore), mas dificilmente seria considerada socialmente justa.

Do ponto de vista da política pública, o Primeiro Teorema fornece o fundamento teórico para políticas pró-concorrência e contra monopólios: se os mercados competitivos são eficientes, então é socialmente valioso preservar a competição. Mas o teorema também funciona como um mapa das falhas de mercado: cada hipótese violada — poder de mercado, externalidades, bens públicos, informação assimétrica, mercados incompletos — representa uma razão potencial para a intervenção governamental. Nos capítulos seguintes, exploraremos sistematicamente cada uma dessas falhas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando os mercados funcionam bem (sem monopólios, externalidades ou informação assimétrica), o interesse próprio de cada agente leva, como que por mágica, a um resultado eficiente para todos.

    **Pense assim:** Ninguém coordena os milhares de caminhões que levam comida de Mato Grosso aos supermercados de São Paulo. Cada motorista, cada atacadista e cada varejista age por interesse próprio — mas o sistema de preços funciona como um "maestro invisível", sinalizando onde falta e onde sobra produto. O Primeiro Teorema formaliza essa ideia: se os preços são livres e ninguém tem poder de mercado, o resultado é eficiente.

    **Por que isso importa:** Esse teorema é o fundamento teórico para políticas pró-concorrência e contra monopólios — mas também alerta que, quando as hipóteses falham (externalidades, bens públicos), a intervenção governamental pode ser justificada.

!!! box-mundo "Box Mundo 14.1 — EU Emissions Trading System: equilíbrio geral e mercados de emissões"

    **Contexto:** O **Sistema de Comércio de Emissões da União Europeia** (EU ETS), criado em 2005, é o maior mercado de carbono do mundo. Ele estabelece um teto (*cap*) para as emissões totais de CO₂ de setores industriais e de energia, distribuindo permissões de emissão que podem ser compradas e vendidas entre empresas. A lógica é criar um "mercado de poluição" que, ao estabelecer um preço para o carbono, incentive a redução de emissões onde ela é mais barata.

    **Dados:** Em 2023, o EU ETS cobria cerca de **10.000 instalações** responsáveis por aproximadamente **40% das emissões totais de gases de efeito estufa da UE**. O preço da tonelada de CO₂ atingiu um pico de **€100** em fevereiro de 2023, acima dos €5–8 observados nos primeiros anos do sistema. A receita total gerada com leilões de permissões superou **€40 bilhões** em 2022.

    **Análise:** O EU ETS ilustra perfeitamente a necessidade de análise de equilíbrio geral. O preço do carbono afeta diretamente os custos de produção de energia elétrica, que por sua vez afetam os custos de produção de todos os bens industriais. Setores intensivos em energia (aço, cimento, alumínio) enfrentam aumentos de custo que podem reduzir sua competitividade frente a importações de países sem precificação de carbono — o chamado "vazamento de carbono" (*carbon leakage*). Para lidar com isso, a UE introduziu em 2023 o **CBAM** (*Carbon Border Adjustment Mechanism*), um imposto sobre importações de bens intensivos em carbono. Modelos CGE são essenciais para quantificar esses efeitos intersetoriais e comerciais, que uma análise parcial do mercado de energia ou do mercado de aço não capturaria adequadamente.

    **Fonte:** European Commission, EU ETS Handbook (2023); World Bank, State and Trends of Carbon Pricing (2023).

---

## 14.7 Redistribuir sem Estragar: Segundo Teorema do Bem-Estar {#147}

O Primeiro Teorema nos diz que o equilíbrio competitivo é eficiente — mas *qual* equilíbrio eficiente? A curva de contrato contém infinitas alocações Pareto-eficientes, e algumas delas são altamente desiguais. O mercado seleciona um ponto específico na curva de contrato, determinado pelas dotações iniciais dos agentes. Se a sociedade considera a distribuição resultante injusta, será necessário sacrificar a eficiência para obter equidade? O Segundo Teorema do Bem-Estar responde a essa pergunta com um resultado surpreendentemente otimista.

!!! theorem "Segundo Teorema do Bem-Estar"
    Se as preferências dos consumidores são convexas e localmente não saciadas, e se os conjuntos de produção das firmas são convexos, então qualquer alocação Pareto-eficiente pode ser alcançada como um equilíbrio competitivo, desde que se realizem transferências lump-sum apropriadas das dotações iniciais.

### Importância normativa

O Segundo Teorema separa eficiência de equidade. Ele afirma que, em princípio, a sociedade pode escolher qualquer ponto da curva de contrato (qualquer distribuição de bem-estar) e implementá-lo via mercados competitivos, bastando redistribuir as dotações iniciais por meio de transferências fixas (*lump-sum*). Isso significa que:

1. A concorrência perfeita não está vinculada a uma única distribuição de renda.
2. Objetivos de equidade podem ser perseguidos sem sacrificar eficiência, desde que os instrumentos redistributivos sejam do tipo *lump-sum*.

Note que o Segundo Teorema requer hipóteses mais fortes do que o Primeiro: exige convexidade das preferências e dos conjuntos de produção. Sem convexidade, pode não existir um sistema de preços que sustente uma dada alocação eficiente como equilíbrio — geometricamente, pode ser impossível "separar" os conjuntos preferidos por ambos os consumidores com um hiperplano (a reta de preços). Essa distinção técnica tem implicações práticas: em setores com retornos crescentes de escala (onde os conjuntos de produção não são convexos), o Segundo Teorema não se aplica diretamente, e a descentralização via preços pode ser impossível.

### Dificuldades práticas das transferências lump-sum

A beleza teórica do Segundo Teorema contrasta com as enormes dificuldades de sua implementação prática. Transferências *lump-sum* perfeitas requerem que o governo conheça as características individuais dos agentes — suas preferências, habilidades, dotações — para calcular o montante exato a transferir. Mas essas informações são tipicamente privadas: se o governo taxar os "mais habilidosos" com base em sua capacidade produtiva, os agentes têm incentivo para subinformar suas habilidades. Esse problema de informação assimétrica — estudado em profundidade nos Capítulos 16 e 17 — é a razão pela qual, na prática, os governos utilizam instrumentos distorcivos como o imposto de renda progressivo, o IVA e impostos sobre propriedade. Esses instrumentos geram perda de peso morto (deadweight loss), o que significa que a redistribuição efetiva envolve um *trade-off* entre eficiência e equidade que o Segundo Teorema, em sua pureza teórica, sugere ser evitável.

O debate entre eficiência e equidade está no centro da economia do setor público. De um lado, economistas como Arthur Okun argumentaram em *Equality and Efficiency: The Big Tradeoff* (1975) que toda redistribuição envolve "vazamentos" — perdas de eficiência inevitáveis, como água transportada num balde furado. De outro, o Segundo Teorema sugere que o tamanho desses "furos" depende dos instrumentos utilizados: quanto mais próximos de transferências *lump-sum*, menores as distorções. A busca por instrumentos redistributivos menos distorcivos — transferências diretas condicionais como o Bolsa Família, imposto de renda negativo, dividendos universais — pode ser interpretada como uma tentativa de se aproximar do ideal teórico do Segundo Teorema.

!!! note "Limitação prática"
    Na prática, transferências *lump-sum* perfeitas são difíceis de implementar, pois requerem informação sobre características dos agentes que geralmente são privadas. A tributação factível (imposto de renda, IVA) introduz distorções e gera perda de peso morto — um *trade-off* entre eficiência e equidade que é central na economia do setor público.

!!! idea "Intuição Econômica"
    **Em uma frase:** A sociedade pode escolher qualquer distribuição de bem-estar que considere justa e, em princípio, alcançá-la usando mercados competitivos — basta redistribuir as dotações iniciais.

    **Pense assim:** Imagine que o governo quer reduzir a desigualdade sem destruir a eficiência da economia. O Segundo Teorema diz que, em teoria, bastaria redistribuir a "riqueza inicial" (terra, capital) e depois deixar os mercados funcionarem livremente. É como reorganizar as fichas antes de começar o jogo, em vez de mudar as regras durante a partida. O problema é que, na prática, redistribuir sem distorcer é quase impossível — o Bolsa Família, por exemplo, é eficiente mas ainda gera algum custo administrativo.

    **Por que isso importa:** Esse teorema fundamenta a separação entre política de eficiência (deixar mercados funcionar) e política de equidade (redistribuir renda), e é a base teórica de programas de transferência de renda como o Bolsa Família.

!!! warning "⚠️ Erro Comum"

    **Confundir eficiência de Pareto com justiça ou equidade.**

    Muitos alunos concluem que, se o equilíbrio competitivo é Pareto-eficiente (Primeiro Teorema), então ele é necessariamente "bom" ou "justo". Isso é falso. Uma alocação em que um único agente detém todos os recursos pode ser Pareto-eficiente — ninguém melhora sem que ele piore — mas é claramente desigual. Eficiência de Pareto é um critério de **não-desperdício**, não de equidade. O Segundo Teorema complementa essa análise ao mostrar que qualquer alocação eficiente pode, em princípio, ser alcançada via mercados competitivos com transferências lump-sum — separando o problema de eficiência do problema de distribuição.

!!! box-mundo "Box Mundo 14.2 — Países nórdicos: o Segundo Teorema na prática"

    **Contexto:** Os **países nórdicos** (Dinamarca, Finlândia, Noruega, Suécia) são frequentemente citados como exemplos de economias que combinam elevado nível de bem-estar social com mercados competitivos e dinâmicos. Sua estratégia pode ser interpretada, em termos do Segundo Teorema do Bem-Estar, como uma tentativa de redistribuir dotações (via tributação e transferências) e deixar os mercados operarem livremente para alcançar a eficiência.

    **Dados:** Em 2023, a carga tributária dos países nórdicos variava de **42%** (Finlândia) a **46%** (Dinamarca) do PIB — entre as mais altas do mundo. Ao mesmo tempo, esses países figuram consistentemente entre os **10 primeiros** no Índice de Liberdade Econômica da Heritage Foundation e no Índice de Competitividade Global do Fórum Econômico Mundial. O coeficiente de Gini pós-transferências varia entre **0,25 e 0,28**, contra **0,39** nos EUA e **0,49** no Brasil (2022). A taxa de pobreza é inferior a **10%**, contra **17%** nos EUA.

    **Análise:** O "modelo nórdico" opera pela combinação de (i) mercados de trabalho flexíveis com proteção ao trabalhador (o modelo de *flexicurity* dinamarquês), (ii) tributação elevada mas com base ampla e relativamente pouco distorciva (IVA uniforme, imposto de renda com poucas deduções), e (iii) transferências generosas e universais (saúde, educação, seguro-desemprego). A lógica é próxima do Segundo Teorema: redistribuir fortemente via transferências e depois deixar os mercados operarem com mínima intervenção regulatória. É claro que a tributação nórdica não é *lump-sum* — o imposto de renda progressivo distorce a decisão trabalho-lazer —, mas a abordagem se aproxima do ideal teórico ao minimizar outras fontes de distorção (pouca proteção tarifária, pouca regulação de preços, mercados de produtos competitivos).

    **Fonte:** OECD Revenue Statistics (2023); World Bank, World Development Indicators; Heritage Foundation, *Index of Economic Freedom* (2023).

??? exercicio-resolvido "Exercício Resolvido 14.4 — Segundo Teorema e transferências lump-sum"
    **Enunciado:** Na mesma economia do ER 14.2, um planejador social deseja alcançar a alocação Pareto-eficiente \(\mathbf{x}_A = (5,\; 10/3)\), \(\mathbf{x}_B = (5,\; 20/3)\). Verifique que essa alocação é eficiente e determine a transferência *lump-sum* necessária.

    **Dados:** Mesmas preferências e dotações do ER 14.2. Alocação desejada: \(\mathbf{x}_A = (5,\; 10/3)\), \(\mathbf{x}_B = (5,\; 20/3)\).

    **Resolução:**

    **Passo 1 — Verificar eficiência de Pareto**

    \[
    TMS_A = \frac{x_2^A}{x_1^A} = \frac{10/3}{5} = \frac{2}{3}
    \]

    \[
    TMS_B = \frac{x_2^B}{2\,x_1^B} = \frac{20/3}{2 \cdot 5} = \frac{2}{3}
    \]

    \(TMS_A = TMS_B = 2/3\) — a alocação está na curva de contrato (Pareto-eficiente).

    **Passo 2 — Preço relativo que sustenta o equilíbrio**

    No equilíbrio competitivo: \(p_1/p_2 = TMS = 2/3\). Normalizando \(p_2 = 1\): \(p_1 = 2/3\).

    **Passo 3 — Renda necessária para cada consumidor**

    \[
    I_A^{\text{necessária}} = \frac{2}{3} \cdot 5 + 1 \cdot \frac{10}{3} = \frac{10}{3} + \frac{10}{3} = \frac{20}{3}
    \]

    \[
    I_B^{\text{necessária}} = \frac{2}{3} \cdot 5 + 1 \cdot \frac{20}{3} = \frac{10}{3} + \frac{20}{3} = 10
    \]

    **Passo 4 — Renda original ao novo preço**

    \[
    I_A^{\text{original}} = \frac{2}{3} \cdot 8 + 1 \cdot 2 = \frac{16}{3} + 2 = \frac{22}{3}
    \]

    \[
    I_B^{\text{original}} = \frac{2}{3} \cdot 2 + 1 \cdot 8 = \frac{4}{3} + 8 = \frac{28}{3}
    \]

    **Passo 5 — Transferência lump-sum**

    \[
    T_A = I_A^{\text{necessária}} - I_A^{\text{original}} = \frac{20}{3} - \frac{22}{3} = -\frac{2}{3}
    \]

    A paga uma transferência de \(2/3\) unidades do numerário para B. Após a transferência, os mercados competitivos geram exatamente a alocação desejada.

    **Resultado:** Transferência *lump-sum* de \(T = 2/3\) do consumidor A para o consumidor B, ao preço \(p^* = 2/3\).

    **Interpretação econômica:** O Segundo Teorema demonstra que eficiência e equidade são objetivos separáveis: basta redistribuir a riqueza inicial e deixar os mercados funcionarem. No Brasil, o **Bolsa Família** e o **BPC** (Benefício de Prestação Continuada) são exemplos de transferências diretas que buscam alterar a distribuição sem distorcer preços relativos — embora, na prática, nenhuma transferência seja perfeitamente *lump-sum* (sempre há custos administrativos e incentivos adversos).

<iframe src="/micro-book/graficos/cap14/webr-segundo-teorema.html" title="WebR — Segundo Teorema e Transferências Lump-Sum" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 14.2 — Segundo Teorema: redistribuir sem estragar.** O código implementa o ER 14.4 completo: verifica que a alocação-meta é eficiente, calcula o preço de suporte e a transferência lump-sum necessária. No gráfico, observe a seta da dotação original à meta — essa é a transferência que separa eficiência de equidade. Mude `xA_target` para outra alocação sobre a curva de contrato e veja como a transferência se ajusta.
</div>

??? exercicio-resolvido "Exercício Resolvido 14.5 — Imposto sobre produção e perda de eficiência no equilíbrio geral"
    **Enunciado:** Em uma economia com dois bens (1 e 2), dois consumidores idênticos com utilidade \(U = x_1^{1/2} x_2^{1/2}\) e um setor produtivo com FPP dada por \(X_1^2 + X_2^2 = 200\), o governo introduz um imposto *ad valorem* de taxa \(t\) sobre o bem 1, de modo que o preço pago pelo consumidor é \(p_1(1+t)\) enquanto o produtor recebe \(p_1\). Mostre que o equilíbrio com imposto viola a condição de eficiência no mix de produtos e calcule a perda de bem-estar para \(t = 0{,}5\).

    **Dados:** FPP: \(X_1^2 + X_2^2 = 200\). Utilidade: \(U = x_1^{1/2} x_2^{1/2}\). Imposto: \(t = 0{,}5\) sobre bem 1.

    **Resolução:**

    **Passo 1 — Equilíbrio sem imposto**

    A TMT, derivada da FPP, é:

    \[
    TMT = \frac{dX_2}{dX_1}\bigg|_{\text{FPP}} = \frac{X_1}{X_2}
    \]

    (Diferenciando \(X_1^2 + X_2^2 = 200\): \(2X_1 dX_1 + 2X_2 dX_2 = 0\), logo \(-dX_2/dX_1 = X_1/X_2\).)

    Com consumidores simétricos Cobb-Douglas (\(\alpha = 1/2\)), \(TMS = x_2/x_1 = X_2/X_1\) no agregado.

    Eficiência: \(TMT = TMS \implies X_1/X_2 = X_2/X_1 \implies X_1 = X_2\).

    Na FPP: \(2X_1^2 = 200 \implies X_1^* = X_2^* = 10\).

    Utilidade por consumidor: \(U^* = (5)^{1/2}(5)^{1/2} = 5\) (cada um recebe metade: 5 de cada bem).

    **Passo 2 — Equilíbrio com imposto**

    O imposto cria uma cunha: produtores igualam TMT ao preço relativo do produtor \(p_1/p_2\), mas consumidores igualam TMS ao preço do consumidor \(p_1(1+t)/p_2\):

    \[
    TMT = \frac{p_1}{p_2}, \qquad TMS = \frac{p_1(1+t)}{p_2} = (1+t) \cdot TMT
    \]

    Portanto \(TMS \neq TMT\) — a condição de eficiência no mix de produtos é violada.

    Condição do lado do consumo: \(X_2/X_1 = (1+t) X_1/X_2\), logo \(X_2^2 = (1+t) X_1^2\).

    Na FPP: \(X_1^2 + (1+t)X_1^2 = 200 \implies X_1^2(2+t) = 200\).

    Com \(t = 0{,}5\): \(X_1^2 = 200/2{,}5 = 80\), \(X_1 = 4\sqrt{5} \approx 8{,}94\) e \(X_2 = \sqrt{200 - 80} = \sqrt{120} = 2\sqrt{30} \approx 10{,}95\).

    **Passo 3 — Perda de bem-estar**

    Utilidade por consumidor com imposto:

    \[
    U^t = \left(\frac{X_1}{2}\right)^{1/2}\left(\frac{X_2}{2}\right)^{1/2} = \frac{1}{2}\sqrt{X_1 X_2} = \frac{1}{2}\sqrt{4\sqrt{5} \cdot 2\sqrt{30}} = \frac{1}{2}\sqrt{8\sqrt{150}}
    \]

    Calculando numericamente: \(X_1 X_2 \approx 8{,}94 \times 10{,}95 \approx 97{,}9\), logo \(U^t \approx \sqrt{97{,}9}/2 \approx 4{,}95\).

    Perda percentual: \((5 - 4{,}95)/5 = 1{,}0\%\).

    **Resultado:** O imposto reduz a produção do bem 1 de 10 para 8,94 e eleva a do bem 2 de 10 para 10,95. A distorção no mix de produtos gera uma perda de bem-estar de aproximadamente 1,0% por consumidor.

    **Interpretação econômica:** O imposto sobre o bem 1 encarece-o relativamente, fazendo consumidores demandarem menos e a economia produzir menos desse bem. A TMT deixa de igualar a TMS: a economia está "dentro" da fronteira de utilidades possíveis, produzindo uma combinação de bens que não corresponde às preferências dos consumidores. Essa é a essência da perda de peso morto da tributação em equilíbrio geral — e a razão pela qual o Segundo Teorema insiste em transferências *lump-sum*: elas não criam essa cunha entre TMS e TMT.

<iframe src="/micro-book/graficos/cap14/webr-fpp-eficiencia.html" title="WebR — FPP e Distorção Tributária" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 14.5 — FPP, imposto e perda de eficiência.** O código calcula o equilíbrio na FPP circular com e sem imposto, mostrando como a cunha tributária viola $TMS = TMT$. Experimente alterar a taxa `t` no vetor `taxas` e observe como a perda de bem-estar cresce de forma convexa — impostos pequenos custam pouco, mas a conta explode rapidamente.
</div>

---

!!! box-brasil "Box Brasil — Acordo Mercosul–União Europeia: equilíbrio geral em escala continental"
    Em dezembro de 2024, após 25 anos de negociação, o **Mercosul** e a **União Europeia** assinaram um acordo de parceria comercial que cria uma das maiores zonas de livre comércio do mundo, reunindo **718 milhões de pessoas** e um PIB conjunto de US$ 22,4 trilhões.

    **Os ganhos de troca na linguagem da Caixa de Edgeworth**

    O acordo pode ser interpretado como um movimento ao longo da "caixa de Edgeworth" entre dois blocos: o Mercosul (dotação abundante em commodities agrícolas e minerais) e a UE (dotação abundante em bens industrializados e serviços). Antes do acordo, tarifas de importação impediam que os preços relativos igualassem as TMS dos dois blocos — a alocação estava dentro da caixa, mas fora da curva de contrato. A eliminação de tarifas aproxima os preços relativos dos custos marginais, movendo a alocação em direção à eficiência de Pareto.

    **Estimativas de equilíbrio geral**

    Estudos do **[IPEA](https://www.ipea.gov.br)** utilizando modelos CGE estimam que o acordo elevará o PIB brasileiro em **0,46%** (US$ 9,3 bilhões) até 2040 e aumentará o fluxo comercial bilateral em **R$ 94,2 bilhões** — com R$ 52,1 bilhões em exportações brasileiras adicionais. As exportações do agronegócio brasileiro para a UE poderiam crescer até 26%.

    **Por que equilíbrio parcial subestima os ganhos?**

    Uma análise mercado a mercado (equilíbrio parcial) capturaria apenas os ganhos diretos da redução tarifária em cada setor. O modelo CGE captura adicionalmente: (i) realocação de trabalho e capital entre setores; (ii) efeitos sobre a taxa de câmbio real; (iii) ganhos de produtividade via maior concorrência e acesso a insumos importados mais baratos; (iv) efeitos sobre a receita do governo e consequentes ajustes fiscais.

    **Fonte**: IPEA; Ministério das Relações Exteriores; Agência Brasil (dez/2024).

---

!!! box-brasil "Box Brasil — IBS + CBS: eficiência econômica à luz do equilíbrio geral"
    A **Reforma Tributária** brasileira (EC 132/2023, regulamentada pela LC 214/2025) é, do ponto de vista da teoria do equilíbrio geral, uma das maiores intervenções sobre o sistema de preços relativos já realizadas no país. Ela substitui cinco tributos sobre consumo (PIS, Cofins, IPI, ICMS e ISS) por dois: a **CBS** (federal) e o **IBS** (estadual/municipal), formando um IVA dual com alíquota estimada entre 26,5% e 28%.

    **Por que a reforma é um problema de equilíbrio geral?**

    O sistema tributário anterior introduzia distorções em múltiplos mercados simultaneamente: cumulatividade (tributo sobre tributo), guerra fiscal entre estados (alíquotas diferentes de ICMS), e tratamentos setoriais desiguais. Essas distorções violavam as condições de eficiência de Pareto — em particular, impediam que os preços relativos refletissem os custos marginais reais (condição \(\mathrm{TMT} = \mathrm{TMS}\)).

    A análise de equilíbrio parcial subestima os ganhos da reforma porque ignora os efeitos cruzados entre mercados. Quando o tributo sobre o setor têxtil muda, isso afeta o mercado de algodão, o de vestuário, o de mão de obra e assim por diante — exatamente o tipo de interdependência que o modelo walrasiano captura.

    **O que dizem os modelos CGE?**

    Estudos do IPEA, da FGV e do Ministério da Fazenda utilizando modelos de equilíbrio geral computável ([Seção 14.11](cge.md)) estimam que a reforma pode elevar o **PIB potencial em até 10% a 20%** ao longo de 15 anos, primordialmente via ganhos de produtividade total dos fatores e aumento do estoque de capital. A reforma tributária aparece consistentemente como o cenário de maior ganho de bem-estar nos modelos CGE brasileiros — acima de acordos comerciais ou liberalização unilateral.

    **Conexão com o Segundo Teorema**

    O Segundo Teorema do Bem-Estar afirma que qualquer alocação eficiente pode ser sustentada por mercados competitivos, desde que as transferências sejam *lump-sum*. A reforma tributária brasileira caminha nessa direção: ao substituir tributos cumulativos (distorcivos) por um IVA não cumulativo (menos distorcivo), ela aproxima o sistema tributário de uma transferência *lump-sum*, reduzindo a perda de peso morto. Não é uma transferência *lump-sum* perfeita — o IVA ainda distorce a margem consumo-lazer —, mas é substancialmente menos distorcivo que o sistema anterior.

    **Fonte**: Ministério da Fazenda; IFI/Senado, Estudo Especial nº 19 (2024); IBRE/FGV.

Combine a Caixa de Edgeworth com uma linha de preços. Ajuste o preço relativo \(p_1/p_2\) para observar as demandas ótimas de cada agente e o excesso de demanda resultante. O equilíbrio walrasiano ocorre quando o excesso de demanda é zero -- o gráfico indica o preço de equilíbrio e sinaliza a direção de ajuste necessária.

<iframe src="/micro-book/graficos/cap14/equilibrio-geral.html" title="Figura 14.3 — Equilíbrio geral walrasiano" class="graph-iframe" style="height:650px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 14.3 — Equilíbrio geral walrasiano.** Ajuste o preço relativo \(p_1/p_2\) para observar as demandas ótimas de cada agente e o excesso de demanda. O equilíbrio ocorre quando o excesso de demanda é zero.
</div>
