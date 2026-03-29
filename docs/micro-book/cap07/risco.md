# 7.3–7.5 Aversão ao Risco, Arrow-Pratt e Prêmio de Risco

## 7.3 Por Que Você Recusa Apostas Justas: Aversão ao Risco

Agora a pergunta que define a personalidade econômica de cada um: diante de uma aposta justa — cara ganha R$ 100, coroa perde R$ 100 —, você aceita ou recusa? A maioria das pessoas recusa. Prefere o certo ao duvidoso, mesmo quando a média é a mesma. Essa preferência pela estabilidade tem um nome (aversão ao risco) e uma causa geométrica (a curvatura da função de utilidade). A conexão entre um conceito abstrato (concavidade) e um comportamento observável (contratar seguro, diversificar investimentos, preferir salário fixo) é uma das pontes mais elegantes de toda a microeconomia.

!!! definition "Classificação de atitudes frente ao risco"
    Seja \(u\) uma função de utilidade VNM. Um agente é:

    - **Avesso ao risco** se, para toda loteria \(L\): \(u(E[L]) > E[u(L)]\).
    - **Neutro ao risco** se, para toda loteria \(L\): \(u(E[L]) = E[u(L)]\).
    - **Propenso ao risco** se, para toda loteria \(L\): \(u(E[L]) < E[u(L)]\).

A aversão ao risco está intimamente ligada à **concavidade** da função de utilidade. Pela **desigualdade de Jensen**, se \(u\) é estritamente côncava, então para qualquer variável aleatória \(\tilde{x}\) não degenerada:

\[
u(E[\tilde{x}]) > E[u(\tilde{x})]
\label{eq:7.4} \tag{7.4}
\]

Intuitivamente, a desigualdade $\eqref{eq:7.4}$ mostra que o agente avesso ao risco prefere receber o valor esperado de uma loteria com certeza a participar da loteria. A curvatura de \(u\) captura a intensidade dessa preferência: quanto mais côncava a função, maior a aversão ao risco.

Graficamente, a aversão ao risco se manifesta pelo fato de que a corda ligando dois pontos na curva de utilidade fica **abaixo** da própria curva — ou seja, a utilidade esperada da loteria (ponto na corda) é inferior à utilidade do valor esperado (ponto na curva).

As implicações econômicas da aversão ao risco são vastas. No mercado de seguros, agentes avessos ao risco estão dispostos a pagar um prêmio positivo — acima do valor atuarialmente justo — para eliminar a incerteza. Isso cria espaço para a existência lucrativa de seguradoras, mesmo quando o prêmio supera a perda esperada. Nos mercados financeiros, a aversão ao risco explica por que ativos mais voláteis precisam oferecer retornos esperados mais altos para atrair compradores — o que está na raiz do modelo CAPM e do enigma do prêmio de risco (ver Seção 7.4 e o box "Pesquisa em Ação" ao final). No mercado de trabalho, trabalhadores avessos ao risco preferem contratos de salário fixo a esquemas de comissão pura, mesmo que estes ofereçam maior remuneração esperada — o que explica a prevalência de vínculos empregatícios formais com salário garantido.

Daniel Kahneman, Prêmio Nobel de Economia de 2002 (com Vernon Smith), dedicou décadas ao estudo empírico da aversão ao risco e de suas irregularidades. Uma de suas contribuições mais influentes, desenvolvida com Amos Tversky, é a ideia de que agentes reais não são igualmente avessos ao risco em todos os domínios: eles são mais sensíveis a perdas do que a ganhos de mesma magnitude — o que ficou conhecido como *loss aversion* (aversão à perda). Essa assimetria, que viola a teoria VNM padrão, é modelada na teoria dos prospectos e será discutida no Capítulo 8. Por ora, o importante é reconhecer que a aversão ao risco, no sentido VNM de concavidade da utilidade, é uma hipótese robusta e amplamente respaldada pelos dados, mesmo que não capture todas as nuances do comportamento humano.

!!! warning "⚠️ Erro Comum"
    **Interpretar aversão ao risco como "evitar todo risco".**

    Um equívoco comum, especialmente em contextos de finanças e gestão, é interpretar "aversão ao risco" como sinônimo de "recusar qualquer aposta". Essa leitura é incorreta.

    Um agente avesso ao risco ainda toma riscos — ele simplesmente exige ser compensado por eles. A definição formal diz que o agente prefere o valor esperado da loteria com certeza à própria loteria. Mas se a loteria oferecer retorno esperado *suficientemente alto*, o agente avesso ao risco a aceitará. Um investidor com utilidade côncava que compra ações da Petrobras na Bolsa não está violando sua aversão ao risco: ele está sendo compensado pelo retorno esperado adicional (o prêmio de risco) que as ações oferecem em relação ao Tesouro Direto.

    A distinção correta é: um agente avesso ao risco *rejeita loterias justas* (com valor esperado zero) e exige um prêmio positivo para aceitar loterias com valor esperado positivo. Quanto maior sua aversão, maior o prêmio exigido. Isso não implica que ele nunca invista em ativos arriscados, mas sim que ele demanda um "desconto" em relação ao agente neutro ao risco.

    Em resumo: aversão ao risco regula o *preço* que o agente cobra pelo risco, não se ele aceita ou recusa qualquer risco.

!!! idea "Intuição Econômica"
    **Em uma frase:** Aversão ao risco significa preferir o certo ao duvidoso, mesmo quando o valor médio é igual.

    **Pense assim:** Um trabalhador brasileiro prefere um salário fixo de R$ 3.000 a um emprego que paga R$ 6.000 em meses bons e zero em meses ruins — mesmo que a média seja a mesma. A dor de ficar sem renda pesa mais do que a alegria do mês gordo.

    **Por que isso importa:** É por isso que existem seguros, previdência e CLT — instituições que transferem risco de quem não quer carregar para quem consegue absorvê-lo melhor.

!!! atividade "Think-Pair-Share — Aceitar ou recusar a aposta?"

    **Cenário:** Você tem R$ 10.000 na conta. Um amigo propõe a seguinte aposta: jogar uma moeda justa. Cara, você ganha R$ 5.000. Coroa, você perde R$ 5.000.

    **Pergunta:** Você aceita?

    **(a)** Sim — o valor esperado é zero, então tanto faz aceitar ou recusar.

    **(b)** Não — mesmo com valor esperado zero, a dor de perder R$ 5.000 é maior que a alegria de ganhar R$ 5.000, porque minha utilidade marginal é decrescente.

    **(c)** Depende — se eu puder jogar 100 vezes seguidas com apostas de R$ 50 cada, aceito; se for uma única aposta de R$ 5.000, recuso.

    ??? success "Debrief"
        **(b)** é a resposta correta no modelo VNM com aversão ao risco. Um agente com utilidade côncava rejeita toda aposta justa porque $u(E[W]) > E[u(W)]$ — a desigualdade de Jensen. Quem escolheu (a) está usando o critério do valor esperado puro, que o Paradoxo de São Petersburgo demoliu. Quem escolheu (c) levanta um ponto sofisticado: com muitas repetições independentes, a Lei dos Grandes Números faz a média convergir para zero e o risco total (em proporção) se reduz — é o argumento da diversificação temporal. Mas cuidado: a irreversibilidade de uma única aposta grande é qualitativamente diferente de muitas apostas pequenas. Rabin (2000) mostrou que a teoria VNM tem dificuldade de reconciliar aversão ao risco em pequenas e grandes apostas com uma mesma função de utilidade.

        **Lição:** Aversão ao risco não é irracionalidade — é consequência lógica de utilidade marginal decrescente. E a escala da aposta importa.

<iframe src="/micro-book/graficos/cap07/aversao-risco.html" title="Figura 7.1 — Aversão ao risco e função de utilidade" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 7.1 — Aversão ao risco e função de utilidade.** Arraste os pontos \(W_1\) e \(W_2\), ajuste a probabilidade \(\pi\) e alterne entre agente avesso, neutro e propenso ao risco. A área sombreada indica o prêmio de risco.
</div>

---

## 7.4 Quanto Medo Você Tem? As Medidas de Arrow-Pratt

"Sou avesso ao risco" — OK, mas *quanto*? Mais que você? Mais agora (quando estou pobre) do que depois (quando ficar rico)? Dizer "sou avesso" é como dizer "faz calor" sem ter termômetro. As medidas de **Arrow-Pratt** são esse termômetro: convertem a curvatura da função de utilidade — um objeto geométrico — em um número que pode ser comparado entre pessoas, entre momentos e entre níveis de riqueza.

!!! definition "Coeficiente de aversão absoluta ao risco (ARA)"
    O coeficiente de aversão absoluta ao risco de Arrow-Pratt é definido como:

    \[
    A(W) = -\frac{u''(W)}{u'(W)}
    \label{eq:7.5} \tag{7.5}
    \]

    onde \(W\) é o nível de riqueza do agente.

!!! definition "Coeficiente de aversão relativa ao risco (RRA)"
    O coeficiente de aversão relativa ao risco é definido como:

    \[
    R(W) = -\frac{W \cdot u''(W)}{u'(W)} = W \cdot A(W)
    \label{eq:7.6} \tag{7.6}
    \]

Essas medidas possuem interpretação direta: \(A(W)\) mede a aversão ao risco para apostas de magnitude absoluta fixa, enquanto \(R(W)\) mede a aversão ao risco para apostas proporcionais à riqueza. Note que ambas dependem da razão entre a segunda e a primeira derivadas da função de utilidade — a primeira derivada captura a utilidade marginal (quanto vale um real a mais), enquanto a segunda derivada captura como essa utilidade marginal muda (o quanto o agente "satura" à medida que enriquece).

A escolha de qual medida utilizar depende do contexto. Se o risco é de magnitude fixa (por exemplo, uma aposta de R\$ 1.000 independentemente da riqueza do agente), a medida absoluta \(A(W)\) é a mais relevante. Se o risco é proporcional à riqueza (por exemplo, investir 10% do patrimônio em ações), a medida relativa \(R(W)\) é mais informativa.

Vale notar que \(A(W)\) e \(R(W)\) são medidas *locais* — elas descrevem a curvatura da função de utilidade num ponto específico \(W\). Isso é diferente de perguntar se o agente é "avesso ao risco" em geral: a curvatura pode variar ao longo da função, gerando padrões ricos de comportamento conforme a riqueza muda. As classes de funções de utilidade descritas abaixo capturam os casos mais relevantes.

A questão de *quanto* um agente típico é avesso ao risco não é apenas teórica — ela pode ser estimada empiricamente. Na literatura de macroeconomia e finanças, o coeficiente de aversão relativa ao risco \(\gamma\) da utilidade CRRA é o mais estudado. Estimativas calibradas a partir de dados de consumo e retornos de ativos tipicamente sugerem valores entre 1 e 5. Mehra e Prescott (1985), no artigo fundador do "enigma do prêmio de risco", mostraram que reproduzir o diferencial histórico de retorno entre ações e títulos públicos nos EUA exigiria \(\gamma > 30\) — um nível implausível que sugere falhas no modelo padrão ou componentes de preferências adicionais, como aversão à perda ou formação de hábitos. No Brasil, estudos como os de Issler e Piqueira (2000) e de Gomes e Paz (2013) encontram estimativas de \(\gamma\) entre 2 e 8 usando dados macroeconômicos nacionais, com considerável incerteza dependendo da amostra e do método de estimação.

Para decisões de política econômica, o coeficiente de aversão ao risco importa diretamente. Políticas de estabilização de renda (como o Bolsa Família) e de smoothing de consumo (como o seguro-desemprego) têm valor welfare que depende criticamente de \(\gamma\): quanto maior a aversão ao risco, maior o ganho de bem-estar de reduzir a variância do consumo. Da mesma forma, o custo social de flutuações do PIB — calculado por Lucas (1987) — é proporcional à aversão ao risco da população.

### 7.4.1 Classes importantes de funções de utilidade

A [Tabela 7.1](#tabela-7-1) apresenta as classes mais utilizadas de funções de utilidade sob risco e suas propriedades.

<a id="tabela-7-1"></a>

| Classe | Função \(u(W)\) | \(A(W)\) | \(R(W)\) | Propriedade |
|:-------|:----------------|:---------|:---------|:------------|
| CARA (Aversão Absoluta Constante) | \(-e^{-aW}\), \(a > 0\) | \(a\) (constante) | \(aW\) (crescente) | A atitude frente a apostas de valor fixo não muda com a riqueza |
| CRRA (Aversão Relativa Constante) | \(\frac{W^{1-\gamma}}{1-\gamma}\), \(\gamma > 0, \gamma \neq 1\) | \(\frac{\gamma}{W}\) (decrescente) | \(\gamma\) (constante) | A atitude frente a apostas proporcionais não muda com a riqueza |
| CRRA (caso log) | \(\ln(W)\) | \(\frac{1}{W}\) (decrescente) | \(1\) (constante) | Caso limite quando \(\gamma \to 1\) |
| DARA (Aversão Absoluta Decrescente) | \(\ln(W)\), \(\frac{W^{1-\gamma}}{1-\gamma}\) | Decrescente em \(W\) | Depende da forma | Agentes mais ricos aceitam mais risco absoluto |
| Quadrática | \(W - bW^2\), \(b > 0\) | \(\frac{2b}{1-2bW}\) (crescente) | \(\frac{2bW}{1-2bW}\) (crescente) | IARA — propriedade pouco realista |

<div class="caption-obj" markdown>
**Tabela 7.1 — Classes importantes de funções de utilidade.**
</div>

!!! tip "DARA como propriedade desejável"
    A evidência empírica sugere fortemente que a aversão absoluta ao risco é **decrescente** na riqueza (DARA): indivíduos mais ricos estão dispostos a aceitar apostas de valor fixo que indivíduos mais pobres recusariam. A função de utilidade quadrática, embora matematicamente conveniente, viola essa propriedade (apresenta IARA) e possui a limitação adicional de que a utilidade marginal se torna negativa para riquezas suficientemente altas.

!!! info "🏅 Prêmio Nobel — Kenneth J. Arrow (1972)"

    **Kenneth Joseph Arrow** (1921–2017) foi um economista americano. Obteve o PhD na Universidade de Columbia e foi professor em Stanford e Harvard. Dividiu o Nobel com John Hicks. É considerado um dos economistas mais influentes do século XX.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar. Arrow fez contribuições fundamentais em múltiplas áreas: provou (com Debreu) a existência do equilíbrio geral competitivo, formulou o teorema da impossibilidade em escolha social, e desenvolveu a teoria de mercados contingentes (Arrow-Debreu) para alocação eficiente de risco.

    **Conexão com este capítulo:**
    O coeficiente de Arrow-Pratt de aversão ao risco — medida central para classificar atitudes frente ao risco — foi desenvolvido independentemente por Arrow e John W. Pratt. As medidas de aversão absoluta e relativa ao risco, que determinam como a demanda por seguros e ativos arriscados varia com a riqueza, são ferramentas essenciais da análise de risco apresentada neste capítulo.

!!! box-mundo "Box Mundo 7.1 — Preferências por risco ao redor do mundo"

    **Contexto:** A aversão ao risco é um parâmetro central da teoria microeconômica, mas será que ela varia sistematicamente entre países e culturas? Nas últimas três décadas, economistas e psicólogos acumularam evidências robustas de que as atitudes frente ao risco não são universais — elas variam com a renda per capita, a cultura, a estrutura institucional e até a história de exposição a choques econômicos de cada sociedade. Essa variação tem implicações profundas: se o coeficiente de Arrow-Pratt difere entre países, então a demanda por seguros, a composição de portfólios e o design ótimo de políticas públicas também devem diferir.

    **Dados:** Barsky et al. (1997), utilizando dados do *Health and Retirement Study* (HRS) dos Estados Unidos, foram pioneiros ao estimar a tolerância ao risco a partir de questões hipotéticas sobre loterias de renda vitalícia. Encontraram que cerca de 65% dos respondentes americanos são altamente avessos ao risco, com coeficientes de aversão relativa ao risco (\(R_R\)) estimados acima de 3,76. Duas décadas depois, Falk et al. (2018) conduziram o *Global Preferences Survey* (GPS), coletando dados padronizados sobre preferências de risco em 76 países e mais de 80.000 indivíduos. Os resultados revelam variação substancial: países do Leste Europeu e da África Subsaariana apresentam, em média, maior aversão ao risco do que países nórdicos e anglo-saxões. O Brasil posiciona-se numa faixa intermediária, com disposição a assumir riscos ligeiramente abaixo da média global — consistente com a alta volatilidade macroeconômica historicamente experimentada pela população brasileira.

    **Análise:** A variação cross-country nas preferências de risco não é mero ruído estatístico — ela se correlaciona de forma significativa com variáveis institucionais e econômicas. Países com sistemas de proteção social mais desenvolvidos (seguro-desemprego generoso, saúde pública universal) tendem a apresentar maior tolerância ao risco individual, sugerindo que a rede de segurança estatal funciona como um "seguro implícito" que reduz o custo pessoal de assumir riscos. Do ponto de vista teórico, esses dados reforçam a importância de tratar \(R_A(W)\) e \(R_R(W)\) não como constantes universais, mas como parâmetros heterogêneos cuja distribuição depende do contexto socioeconômico — uma premissa central para a economia comportamental (Capítulo 8) e para o desenho de mecanismos (capítulos posteriores).

    **Fonte:** Barsky, R. B.; Juster, F. T.; Kimball, M. S.; Shapiro, M. D. (1997). "Preference Parameters and Behavioral Heterogeneity: An Experimental Approach in the Health and Retirement Study." *Quarterly Journal of Economics*, 112(2), 537–579. Falk, A.; Becker, A.; Dohmen, T.; Enke, B.; Huffman, D.; Sunde, U. (2018). "Global Evidence on Economic Preferences." *Quarterly Journal of Economics*, 133(4), 1645–1692.

---

## 7.5 Quanto Você Pagaria para Dormir Tranquilo? Prêmio de Risco e EC

As medidas de Arrow-Pratt descrevem a aversão ao risco em termos da curvatura da função de utilidade — uma grandeza matemática. Mas como traduzir essa curvatura em termos econômicos concretos? Quanto, em reais, um agente pagaria para se livrar de um risco? É exatamente isso que os conceitos de **equivalente de certeza** e **prêmio de risco** fazem: eles transformam a informação contida na função de utilidade em valores monetários que podem ser diretamente observados ou estimados no mercado.

!!! definition "Equivalente de Certeza"
    O **equivalente de certeza** (EC) de uma loteria \(\tilde{W}\) é o valor monetário certo \(W_{EC}\) tal que o agente é indiferente entre receber \(W_{EC}\) com certeza e participar da loteria:

    \[
    u(W_{EC}) = E[u(\tilde{W})]
    \]

    Para um agente estritamente avesso ao risco (\(u'' < 0\)), o equivalente de certeza é *estritamente menor* que o valor esperado da loteria: \(W_{EC} < E[\tilde{W}]\). O **prêmio de risco** \(\pi\) é a diferença:

    \[
    \pi = E[\tilde{W}] - W_{EC} > 0
    \]

    O prêmio de risco mede o "custo" da incerteza em termos monetários: é o máximo que o agente pagaria para eliminar o risco, ou equivalentemente, a compensação mínima que ele exigiria para suportar o risco sem reclamar. A precificação de ativos arriscados — CAPM, fator de desconto estocástico e o enigma do prêmio de risco — é aprofundada no Capítulo 18.

!!! definition "Equivalente de certeza e prêmio de risco"
    Seja \(\tilde{W} = W + \tilde{\varepsilon}\) a riqueza aleatória, onde \(\tilde{\varepsilon}\) é um risco justo (isto é, \(E[\tilde{\varepsilon}] = 0\)) com variância \(\sigma^2\).

    - O **equivalente de certeza** \(W_{EC}\) é o valor certo que proporciona a mesma utilidade esperada da loteria:

    \[
    u(W_{EC}) = E[u(\tilde{W})]
    \label{eq:7.7} \tag{7.7}
    \]

    - O **prêmio de risco** \(\pi\) é a quantia máxima que o agente pagaria para eliminar o risco:

    \[
    \pi = E[\tilde{W}] - W_{EC} = W - W_{EC}
    \label{eq:7.8} \tag{7.8}
    \]

    Para um agente avesso ao risco, \(\pi > 0\); para um neutro, \(\pi = 0\). Note que o equivalente de certeza $\eqref{eq:7.7}$ e o prêmio de risco $\eqref{eq:7.8}$ estão diretamente relacionados às medidas de Arrow-Pratt, como mostra a aproximação $\eqref{eq:7.9}$.

!!! idea "Intuição Econômica"
    **Em uma frase:** O equivalente certo é o "preço de saída" de uma aposta — quanto você aceitaria receber para não ter que jogar.

    **Pense assim:** Se você tem um bilhete de rifa que vale R$ 1.000 com 50% de chance (valor esperado = R$ 500), mas toparia vendê-lo por R$ 350, então R$ 350 é seu equivalente certo e os R$ 150 de diferença são o prêmio de risco — o desconto que você dá só para dormir tranquilo.

    **Por que isso importa:** O prêmio de risco explica por que títulos do Tesouro pagam menos que ações na Bolsa — investidores exigem compensação para aceitar incerteza.

### 7.5.1 Aproximação de Arrow-Pratt para o prêmio de risco

!!! proof "Demonstração: Derivação do prêmio de risco de Arrow-Pratt"
    **Objetivo**: Mostrar que, para riscos pequenos, o prêmio de risco é aproximadamente:

    \[
    \pi \approx \frac{1}{2} A(W) \sigma^2
    \label{eq:7.9} \tag{7.9}
    \]

    **Demonstração**:

    Considere a riqueza aleatória \(\tilde{W} = W + \tilde{\varepsilon}\), onde \(E[\tilde{\varepsilon}] = 0\) e \(\text{Var}(\tilde{\varepsilon}) = \sigma^2\).

    **Passo 1**: Expanda \(u(W + \tilde{\varepsilon})\) em série de Taylor de segunda ordem em torno de \(W\):

    \[
    u(W + \tilde{\varepsilon}) \approx u(W) + u'(W)\tilde{\varepsilon} + \frac{1}{2}u''(W)\tilde{\varepsilon}^2
    \]

    **Passo 2**: Tome o valor esperado de ambos os lados:

    \[
    E[u(W + \tilde{\varepsilon})] \approx u(W) + u'(W) \underbrace{E[\tilde{\varepsilon}]}_{=\,0} + \frac{1}{2}u''(W) \underbrace{E[\tilde{\varepsilon}^2]}_{=\,\sigma^2}
    \]

    \[
    E[u(\tilde{W})] \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    **Passo 3**: Por definição do prêmio de risco, \(u(W - \pi) = E[u(\tilde{W})]\). Expanda o lado esquerdo em Taylor de primeira ordem:

    \[
    u(W - \pi) \approx u(W) - u'(W)\pi
    \]

    **Passo 4**: Iguale as duas expressões:

    \[
    u(W) - u'(W)\pi \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    -u'(W)\pi \approx \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    \pi \approx -\frac{1}{2}\frac{u''(W)}{u'(W)}\sigma^2 = \frac{1}{2}A(W)\sigma^2 \qquad \blacksquare
    \]

    **Interpretação**: O prêmio de risco é (aproximadamente) proporcional a dois fatores: (i) a medida de aversão absoluta ao risco \(A(W)\), que captura a curvatura da função de utilidade; e (ii) a variância \(\sigma^2\) do risco, que captura a magnitude da incerteza. Para riscos multiplicativos (proporcionais à riqueza), uma derivação análoga mostra que \(\pi/W \approx \frac{1}{2}R(W)\sigma_r^2\), onde \(\sigma_r^2\) é a variância do retorno relativo.

A fórmula de Arrow-Pratt é notavelmente elegante: ela decompõe o "preço" que o agente paga pelo risco em dois fatores — um subjetivo (quão avesso ele é) e outro objetivo (quão arriscada é a loteria). Essa decomposição tem implicações práticas imediatas: para um dado nível de risco, agentes mais avessos pagam prêmios maiores; para um dado nível de aversão, riscos mais voláteis custam mais caro. É exatamente essa lógica que as seguradoras utilizam ao precificar apólices, cobrando mais de quem enfrenta riscos maiores e oferecendo descontos a quem demonstra menor exposição.

O equivalente de certeza tem aplicações que vão muito além da teoria dos seguros. No Brasil, o BNDES (Banco Nacional de Desenvolvimento Econômico e Social) financia projetos de infraestrutura que envolvem grandes incertezas de retorno. A taxa de desconto aplicada a esses projetos deve incorporar, em princípio, um prêmio de risco proporcional à variância dos fluxos de caixa — exatamente o que a aproximação de Arrow-Pratt formaliza. Da mesma forma, o seguro agrícola (discutido no Box Brasil desta seção) pode ser interpretado como a compra do equivalente de certeza da renda agrícola: o produtor rural troca uma renda variável por uma renda garantida, pagando um prêmio de risco pela estabilidade.

Para ilustrar com números concretos: um cafeicultor do Sul de Minas com riqueza de R\$ 200.000, utilidade logarítmica e risco de perder R\$ 80.000 em caso de geada (probabilidade 20%) tem um prêmio de risco de aproximadamente \(\frac{1}{2} \times \frac{1}{200.000} \times (0{,}2 \times 0{,}8 \times 80.000^2) = \frac{1}{2} \times \frac{1}{200.000} \times 1{,}024 \times 10^9 \approx \text{R\$ } 2.560\). Esse valor representa o quanto ele pagaria *acima* do prêmio atuarialmente justo para eliminar o risco — e é esse sobrepagamento que torna os contratos de seguro mutuamente vantajosos: a seguradora cobra mais que o valor esperado do sinistro, e o produtor ainda assim prefere contratar.

A distinção entre prêmio de risco *exato* e *aproximado* merece atenção. A fórmula de Arrow-Pratt é uma aproximação de segunda ordem válida para riscos "pequenos" em relação à riqueza. Quando o risco é grande (como nos exemplos dos exercícios, em que o desvio padrão pode representar 30–50% da riqueza), o prêmio exato deve ser calculado diretamente da equação $\eqref{eq:7.7}$. A aproximação sistematicamente subestima o prêmio para agentes com utilidade côncava crescentemente rápida (como \(\ln W\)) e o superestima para agentes com utilidade menos côncava.

<iframe src="/micro-book/graficos/cap07/premio-risco.html" title="Figura 7.2 — Prêmio de risco de Arrow-Pratt" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 7.2 — Prêmio de risco de Arrow-Pratt.** Ajuste a riqueza \(W\), a variância \(\sigma^2\) e a curvatura da função de utilidade. Alterne entre CARA, CRRA e quadrática para comparar o prêmio de risco exato com a aproximação \(\tfrac{1}{2}\sigma^2 A(W)\).
</div>

??? exercicio-resolvido "Exercício Resolvido 7.1"
    **Enunciado:** Um investidor com função de utilidade \(u(W) = \ln(W)\) possui riqueza inicial \(W_0 = 10.000\). Ele é convidado a participar de uma loteria que paga \(+6.000\) com probabilidade \(0{,}4\) e \(-4.000\) com probabilidade \(0{,}6\). Calcule o equivalente de certeza, o prêmio de risco exato e compare com a aproximação de Arrow-Pratt.

    **Dados:** \(u(W) = \ln(W)\), \(W_0 = 10.000\), \(L = \{(+6.000,\; 0{,}4);\; (-4.000,\; 0{,}6)\}\).

    **Resolução:**

    **Passo 1 — Resultados possíveis e valor esperado**

    - Estado favorável: \(W_1 = 10.000 + 6.000 = 16.000\) com \(p_1 = 0{,}4\)
    - Estado desfavorável: \(W_2 = 10.000 - 4.000 = 6.000\) com \(p_2 = 0{,}6\)
    - Valor esperado: \(E[W] = 0{,}4 \times 16.000 + 0{,}6 \times 6.000 = 6.400 + 3.600 = 10.000\)

    Note que \(E[W] = W_0\): trata-se de um risco justo (\(E[\tilde{\varepsilon}] = 0\)).

    **Passo 2 — Utilidade esperada**

    \[
    E[u(W)] = 0{,}4 \times \ln(16.000) + 0{,}6 \times \ln(6.000)
    \]

    \[
    = 0{,}4 \times 9{,}6803 + 0{,}6 \times 8{,}6995 = 3{,}8721 + 5{,}2197 = 9{,}0918
    \]

    **Passo 3 — Equivalente de certeza**

    \[
    u(W_{EC}) = E[u(W)] \implies \ln(W_{EC}) = 9{,}0918 \implies W_{EC} = e^{9{,}0918} \approx 8.879
    \]

    **Passo 4 — Prêmio de risco exato**

    \[
    \pi = E[W] - W_{EC} = 10.000 - 8.879 = \text{R\$ } 1.121
    \]

    **Passo 5 — Aproximação de Arrow-Pratt**

    Para \(u(W) = \ln(W)\): \(A(W) = 1/W\). Em \(W_0 = 10.000\): \(A = 1/10.000 = 0{,}0001\).

    A variância do risco: \(\sigma^2 = 0{,}4 \times (6.000)^2 + 0{,}6 \times (-4.000)^2 = 14.400.000 + 9.600.000 = 24.000.000\).

    \[
    \pi_{AP} \approx \frac{1}{2} \times 0{,}0001 \times 24.000.000 = \text{R\$ } 1.200
    \]

    **Resultado:** \(\pi_{\text{exato}} = \text{R\$ } 1.121\) vs. \(\pi_{AP} \approx \text{R\$ } 1.200\). A aproximação superestima em cerca de 7%.

    **Interpretação econômica:** O investidor exigiria pelo menos R\$ 1.121 para aceitar esse risco justo — equivalente a 11,2% de sua riqueza. A discrepância entre o valor exato e a aproximação reflete que o risco não é "pequeno" em relação à riqueza (desvio padrão de R\$ 4.899 ≈ 49% de \(W_0\)), o que compromete a precisão da expansão de Taylor.
