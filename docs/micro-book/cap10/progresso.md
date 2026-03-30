# 10.6–10.7 Progresso Técnico e Funções Homotéticas

## 10.6 A Mão Invisível do Tempo: Progresso Técnico e o Resíduo de Solow {#106}

Até aqui, cada função de produção era uma fotografia — um instantâneo congelado no tempo. Mas o Cerrado conta outra história: a mesma terra e o mesmo número de braços que arrancavam 1.700 kg de soja por hectare nos anos 1970 hoje entregam mais de 3.300 kg. Ninguém dobrou o Cerrado nem clonou os agricultores. De onde vem esse ganho?

A resposta reside no **progresso técnico** — o deslocamento da própria função de produção ao longo do tempo. Incorporar essa dimensão temporal é essencial para conectar a microeconomia da produção à macroeconomia do crescimento, e o instrumento-chave para essa conexão é o **resíduo de Solow**, que mede a parcela do crescimento do produto não explicada pela acumulação de fatores.

A ideia é elegante em sua simplicidade. Se observamos o produto crescendo a 4% ao ano, o capital crescendo a 3% e o trabalho a 1%, e se sabemos que a participação do capital na renda é de 40% e a do trabalho é de 60%, então a acumulação de fatores explica \(0{,}4 \times 3\% + 0{,}6 \times 1\% = 1{,}8\%\) do crescimento. Os restantes \(4\% - 1{,}8\% = 2{,}2\%\) constituem o resíduo — a fração não explicada, atribuída ao progresso técnico. Esse exercício de contabilidade, introduzido por Solow (1957) e refinado por Griliches (1963), revelou que o progresso técnico era quantitativamente mais importante para o crescimento de longo prazo do que a simples acumulação de capital — uma conclusão que redirecionou toda a teoria do crescimento econômico para o papel da inovação, da educação e da pesquisa.

Do ponto de vista microeconômico, o progresso técnico manifesta-se visualmente como um **deslocamento para dentro das isoquantas**: a mesma quantidade de produto \(q_0\) pode ser produzida com *menos* de ambos os insumos. Geometricamente, a função de produção "sobe" — para qualquer combinação \((K, L)\), o produto aumenta. Algebricamente, o parâmetro \(A(t)\) cresce ao longo do tempo. A questão de *como* ele cresce — se de forma que favoreça capital ou trabalho, ou de forma neutra — é classificada pelas diferentes definições de neutralidade discutidas a seguir.

<iframe src="/micro-book/graficos/cap10/progresso-tecnico.html" title="Figura 10.3 — Progresso técnico e deslocamento de isoquantas" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 10.3 — Progresso técnico e deslocamento de isoquantas.** Alterne entre Hicks-neutro, Harrod-neutro e Solow-neutro. Aumente \(A\) para observar a isoquanta se deslocando para dentro (menos insumos necessários para o mesmo produto).
</div>

Formalmente, introduzimos o tempo \(t\) na função de produção. A formulação mais simples é:

\[
q = A(t) \cdot f(K, L)
\label{eq:10.11} \tag{10.11}
\]

Essa especificação corresponde ao progresso **neutro de Hicks**: o parâmetro \(A(t)\) aumenta o produto na mesma proporção para qualquer combinação de insumos, sem alterar a TMST para uma dada razão \(K/L\).

### Classificações do progresso técnico

!!! definition "Tipos de progresso técnico"
    - **Neutro de Hicks**: \(q = A(t) \cdot f(K, L)\). A TMST depende apenas de \(K/L\), não de \(t\). As isoquantas se contraem homoteticamente em direção à origem.

    - **Neutro de Harrod** (aumentador de trabalho): \(q = f(K, A(t) \cdot L)\). O progresso técnico equivale a um aumento na quantidade efetiva de trabalho. A razão capital-produto \(K/q\) permanece constante quando a razão \(K/(AL)\) é constante. Este é o tipo de progresso técnico compatível com crescimento equilibrado no modelo de Solow.

    - **Neutro de Solow** (aumentador de capital): \(q = f(A(t) \cdot K, L)\). O progresso técnico equivale a um aumento na quantidade efetiva de capital. A razão trabalho-produto \(L/q\) permanece constante quando \(L\) é constante.

Na função Cobb-Douglas \(q = A(t) K^{\alpha} L^{1-\alpha}\), os três tipos de neutralidade são equivalentes, pois:

\[
A(t) K^{\alpha} L^{1-\alpha} = K^{\alpha} [A(t)^{1/(1-\alpha)} L]^{1-\alpha} = [A(t)^{1/\alpha} K]^{\alpha} L^{1-\alpha}
\]

Para funções de produção mais gerais (como a CES com \(\sigma \neq 1\)), as três classificações geram resultados distintos, e a escolha do tipo de progresso técnico tem implicações importantes para a dinâmica de crescimento e a distribuição funcional da renda. A razão pela qual a classificação de Harrod é a mais utilizada em modelos de crescimento econômico é que apenas o progresso técnico aumentador de trabalho é compatível com um "estado estacionário" (trajetória de crescimento equilibrado) em que todas as variáveis per capita crescem a taxas constantes — uma propriedade desejável para a modelagem de longo prazo.

### Medindo o progresso técnico: o resíduo de Solow

As classificações de neutralidade nos dizem *como* o progresso técnico opera, mas não *quanto* dele há. Como medir, em termos quantitativos, a contribuição do progresso técnico para o crescimento do produto? A resposta é a decomposição do crescimento, que permite isolar o **resíduo de Solow** — a parcela do crescimento não explicada pela acumulação de fatores.

A taxa de crescimento do produto pode ser decomposta como:

\[
\frac{\dot{q}}{q} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + \beta \frac{\dot{L}}{L}
\label{eq:10.12} \tag{10.12}
\]

O termo \(\dot{A}/A\) é a **produtividade total dos fatores** (PTF), frequentemente chamada de **resíduo de Solow**.[^ignorancia] Ele capta o crescimento do produto que não é explicado pelo crescimento dos insumos — isto é, o efeito puro do progresso técnico.

[^ignorancia]: Moses Abramovitz chamou o resíduo de Solow de "a medida da nossa ignorância" — e não estava sendo modesto. Tudo o que não sabemos medir nos insumos acaba no resíduo: qualidade do trabalho, inovação organizacional, infraestrutura, clima institucional, estabilidade macroeconômica. É como atribuir a melhora de um prato a "tempero" — quando "tempero" inclui desde sal até o humor do chef. A história da contabilidade do crescimento, de Solow (1957) a Hsieh e Klenow (2009), é em grande parte uma tentativa de reduzir essa ignorância, decompondo o resíduo em componentes identificáveis. No caso brasileiro, a queda da PTF nos anos 1980 (Bonelli e Fonseca, 1998; Gomes, Pessôa e Veloso, 2003) provavelmente reflete menos uma "piora tecnológica" e mais a desorganização alocativa causada pela hiperinflação — uma forma particularmente destrutiva de "tempero ruim".

!!! info "Prêmio Nobel — Robert M. Solow (1987)"

    **Robert Merton Solow** (1924–2023) foi um economista americano. Obteve o PhD em Harvard sob orientação de Wassily Leontief e foi professor no MIT por mais de cinco décadas.

    **Por que ganhou o Nobel:**
    Premiado por suas contribuições à teoria do crescimento econômico. Solow desenvolveu o modelo neoclássico de crescimento (1956) e introduziu a contabilidade do crescimento (1957), que decompõe o crescimento do produto nas contribuições de capital, trabalho e um resíduo — a produtividade total dos fatores (PTF). O "resíduo de Solow" revelou que o progresso técnico, e não a mera acumulação de fatores, é o principal motor do crescimento de longo prazo.

    **Conexão com este capítulo:**
    A decomposição do crescimento — que atribui parcelas do crescimento do produto a capital, trabalho e PTF — é apresentada neste capítulo como aplicação direta da função de produção Cobb-Douglas. O resíduo de Solow, interpretado como medida de progresso técnico, conecta a teoria da produção à questão central do crescimento econômico.

??? exercicio-resolvido "Exercício Resolvido 10.3"
    **Enunciado:** Uma firma opera com \(q = A(t) \cdot K^{0,3} L^{0,7}\), onde \(A(0) = 1\) e \(A\) cresce a 2% ao ano. O capital cresce a 4% ao ano e o trabalho a 1% ao ano. Calcule a taxa de crescimento do produto e decomponha-a nas contribuições de cada fonte.

    **Dados:** \(\alpha = 0{,}3\), \(\beta = 0{,}7\), \(\dot{A}/A = 0{,}02\), \(\dot{K}/K = 0{,}04\), \(\dot{L}/L = 0{,}01\).

    **Resolução:**

    **Passo 1 — Aplicar a decomposição do crescimento**

    \[
    \frac{\dot{q}}{q} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + \beta \frac{\dot{L}}{L}
    \]

    **Passo 2 — Substituir os valores**

    \[
    \frac{\dot{q}}{q} = 0{,}02 + 0{,}3 \times 0{,}04 + 0{,}7 \times 0{,}01 = 0{,}02 + 0{,}012 + 0{,}007 = 0{,}039
    \]

    **Passo 3 — Decomposição percentual**

    | Fonte | Contribuição | % do total |
    |---|---|---|
    | PTF (progresso técnico) | 2,0 p.p. | 51,3% |
    | Capital | 1,2 p.p. | 30,8% |
    | Trabalho | 0,7 p.p. | 17,9% |
    | **Total** | **3,9 p.p.** | **100%** |

    **Resultado:** O produto cresce a 3,9% ao ano, com mais da metade explicada pelo progresso técnico.

    **Interpretação econômica:** A predominância da PTF no crescimento é consistente com o padrão observado na agricultura brasileira pós-Embrapa (ver Box Brasil a seguir), onde a inovação tecnológica respondeu por parcela majoritária dos ganhos de produtividade. Como a função é Cobb-Douglas, o progresso técnico é simultaneamente neutro no sentido de Hicks, Harrod e Solow — as três classificações convergem (Seção 10.6).

!!! box-brasil "Box Brasil: Produtividade agrícola e a função de produção da soja no Cerrado"

    Os dados do **[IBGE/SIDRA](https://sidra.ibge.gov.br)** (Pesquisa Agrícola Municipal) permitem estimar funções de produção para culturas brasileiras. Considere a soja no Cerrado. Entre 2000 e 2023, a área plantada de soja no Brasil cresceu de 13,6 para 44,1 milhões de hectares, enquanto a produção saltou de 32,8 para 154,6 milhões de toneladas (dados [CONAB](https://www.conab.gov.br), safra 2022/23). A produtividade média passou de 2.403 para 3.509 kg/ha.

    Uma decomposição simples do crescimento à la Solow revela que:

    - O crescimento da **área** (terra) respondeu por aproximadamente 60% do aumento da produção (expansão extensiva).
    - O crescimento da **produtividade** (PTF + intensificação de insumos) respondeu pelos 40% restantes.

    A parcela atribuída à PTF — novas cultivares, manejo de solo, integração lavoura-pecuária — é o "resíduo de Solow" aplicado à agricultura. Segundo estimativas da Embrapa, a pesquisa agropecuária respondeu por cerca de 60% dos ganhos de PTF na agricultura brasileira entre 1975 e 2020.

---

!!! box-brasil "Box Brasil: A revolução da Embrapa — progresso técnico no Cerrado"

    A agropecuária brasileira vivenciou, nas últimas cinco décadas, uma das mais impressionantes transformações produtivas do mundo. O protagonista dessa revolução foi a **Empresa Brasileira de Pesquisa Agropecuária ([Embrapa](https://www.embrapa.br))**, fundada em 1973, cuja atuação é um caso emblemático de progresso técnico aplicado à produção.

    | Cultura | Produtividade ~1977 | Produtividade ~2024 | Fator de multiplicação |
    |---------|-------------------:|-------------------:|:-----:|
    | **Soja** | ~1.700 kg/ha | ~3.300 kg/ha | ×1,9 |
    | **Milho** | ~1.600 kg/ha | ~6.000 kg/ha | ×3,8 |

    *Fontes: [CONAB](https://www.conab.gov.br) (safras 2023/24); IBGE/PAM.*

    A área de soja expandiu-se de 7 para 46 milhões de hectares no período, mas a produtividade por hectare quase dobrou — evidenciando que o crescimento do produto decorreu tanto da expansão extensiva (mais terra) quanto do progresso técnico (mais produto por unidade de terra). A transformação do Cerrado — via calagem, cultivares tropicais e plantio direto — converteu solos antes improdutivos no maior polo agropecuário do país.

    **Interpretação microeconômica.** Em termos da teoria da produção, a atuação da Embrapa representa um deslocamento da função de produção agrícola — um aumento do parâmetro \(A(t)\). Trata-se predominantemente de progresso técnico **aumentador de terra** (análogo ao neutro de Solow aplicado ao fator terra), pois a inovação principal foi tornar produtivos solos antes imprestáveis, multiplicando o fator terra efetivo. A Embrapa estima que a tecnologia gerada pela pesquisa agropecuária foi responsável por cerca de **60% do crescimento da PTF** na agricultura brasileira entre 1975 e 2020. Goolsbee, Levitt & Syverson (2020, Cap. 6) documentam padrões similares na agricultura estadunidense.

!!! box-mundo "Box Mundo 10.3 — O resíduo de Solow e o milagre do Leste Asiático"

    **Contexto:** Entre 1960 e 1990, as economias de Coreia do Sul, Singapura, Taiwan e Hong Kong cresceram a taxas entre 6% e 9% ao ano — o "milagre" do Leste Asiático. O debate econômico em torno desse crescimento tornou-se uma das mais acesas controvérsias da macroeconomia do desenvolvimento: o crescimento derivou de acumulação extraordinária de fatores (capital e trabalho) ou de ganhos genuínos de produtividade total dos fatores (PTF)?

    **Dados:** Alwyn Young (1995, *Quarterly Journal of Economics*) aplicou a contabilidade de crescimento de Solow a dados de Coreia, Singapura, Taiwan e Hong Kong para o período 1966–1990. Seus resultados foram surpreendentes: **quase todo o crescimento** era explicado por acumulação de capital e aumento da força de trabalho — a PTF crescia muito pouco ou até negativamente em Singapura. As taxas de investimento (capital físico + capital humano) excepcionalmente elevadas — em Singapura, a taxa de poupança chegou a 47% do PIB — explicavam os números, não a inovação.

    **Análise:** O resultado de Young foi contestado por Hsieh (2002, *AER*), que usou dados de remuneração de fatores em vez de quantidades físicas e encontrou PTF positiva e relevante para Singapura e Taiwan. A divergência ilustra um ponto metodológico central: o resíduo de Solow é medido como **diferença** entre crescimento do produto e crescimento ponderado dos insumos — e qualquer erro de medição nos insumos se reflete diretamente na estimativa de PTF. Para o Brasil, Bonelli & Fonseca (1998, IPEA) e Gomes et al. (2003) aplicaram a mesma metodologia ao período 1970–2000 e encontraram PTF **negativa** nos anos 1980 (a "década perdida"), consistente com a crise e a hiperinflação que desorganizaram a alocação de recursos. O "milagre econômico" brasileiro de 1968–1973 apresentou PTF positiva, mas calcada em combinação de acumulação de capital, redução do subemprego e importação tecnológica.

    **Fonte:** Young, A. (1995). "The Tyranny of Numbers: Confronting the Statistical Realities of the East Asian Growth Experience." *Quarterly Journal of Economics*, 110(3), 641–680. Hsieh, C.-T. (2002). "What Explains the Industrial Revolution in East Asia?" *American Economic Review*, 92(3), 502–526. Solow, R. M. (1957). "Technical Change and the Aggregate Production Function." *Review of Economics and Statistics*, 39(3), 312–320.

---

## 10.7 A Receita que Não Muda: Funções Homotéticas e o Caminho de Expansão {#107}

Imagine uma rede de cafeterias que usa exatamente 20 g de café para cada 200 ml de água em todo espresso — seja na loja do centro que serve 500 cafés por dia, seja na do aeroporto que serve 3.000. A receita não muda com a escala. Se os preços do café e da água se alterarem, a proporção pode mudar; mas se os preços permanecerem os mesmos, a loja grande é uma cópia ampliada da pequena. Essa é a essência da **homoteticidade**: a "receita" ótima de insumos depende dos preços relativos, não do tamanho da operação.[^receita-zoom]

[^receita-zoom]: Tecnicamente, "dar zoom" na combinação de insumos é exatamente o que o caminho de expansão linear faz: a firma segue um raio a partir da origem no espaço \((K, L)\), mantendo \(K/L\) constante. Se isso lembra uma homotetia da geometria euclidiana — transformação que preserva ângulos e multiplica distâncias por um fator constante — não é coincidência: é literalmente de onde vem o nome.

Ao longo deste capítulo, notamos que certas propriedades das funções de produção — como o fato de a TMST depender apenas da razão \(K/L\), e não dos níveis absolutos dos insumos — simplificam enormemente a análise. Essas propriedades não são acidentais: elas decorrem de uma estrutura matemática particular chamada **homoteticidade**. Compreender essa estrutura é importante por uma razão muito prática: ela determina se a firma que cresce mantém a mesma combinação de insumos ou precisa redesenhar toda a sua operação.

A relevância econômica da homoteticidade vai além da elegância matemática — ela é a ponte entre este capítulo e o próximo. Quando a função de produção é homotética, as decisões de *quais insumos usar* (determinada pelos preços relativos) e *quanto produzir* (determinada pela demanda) são completamente separáveis. Traduzindo: a firma que decide dobrar sua produção simplesmente dobra todas as quantidades de insumos na mesma proporção — ela não altera sua "receita". Essa propriedade é a chave que conecta a teoria da produção (Capítulo 10) à teoria dos custos (Capítulo 11): funções de custo derivadas de tecnologias homotéticas têm a forma \(C(w, r, q) = c(w, r) \cdot g(q)\), onde os custos se separam limpa e elegantemente em um componente de preços e um componente de quantidade. Sem homoteticidade, a análise de custos se torna consideravelmente mais complexa, pois a proporção ótima de insumos muda a cada nível de produção — e a função custo perde essa estrutura separável que tanto facilita a vida do economista.

!!! tip "Ferramentas do Cap. 2"
    Esta seção usa [homogeneidade de funções e o Teorema de Euler](../cap02/curvatura.md). Se precisar relembrar, volte lá — leva 10 minutos.

Uma função de produção \(f(K, L)\) é **homotética** se pode ser escrita como uma transformação monotônica crescente de uma função homogênea de grau 1:

\[
f(K, L) = g\!\big(h(K, L)\big), \quad g' > 0, \quad h(\lambda K, \lambda L) = \lambda \, h(K, L).
\]

**Propriedade fundamental.** Para funções homotéticas, a TMST depende apenas da **razão capital-trabalho** \(K/L\):

\[
\text{TMST}_{LK}(K, L) = \phi\!\left(\frac{K}{L}\right).
\label{eq:10.13} \tag{10.13}
\]

Ao longo de qualquer raio da origem (\(K = c \cdot L\)), a TMST é constante. As isoquantas são **expansões radiais** umas das outras.

!!! theorem "Proposição — Propriedades de funções de produção homotéticas"
    Se \(f(K, L)\) é homotética, então:

    1. **Caminho de expansão linear**: para preços dos fatores \((w, v)\) fixos, a combinação ótima de insumos que minimiza custos satisfaz \(K^*/L^* = \psi(w/v)\), constante para todos os níveis de produto \(q\).
    2. **Custo médio de longo prazo constante em escala**: a função custo pode ser escrita como \(C(w, v, q) = c(w, v) \cdot \gamma(q)\), onde \(c\) depende apenas dos preços e \(\gamma\) apenas do produto.
    3. **Função custo separável**: consequência direta da propriedade 2 — os preços dos fatores afetam o nível de custos, mas não a forma como o custo varia com \(q\).

**Exemplos.**

- **Cobb-Douglas** \(f = K^\alpha L^\beta\): homotética (homogênea de grau \(\alpha + \beta\)). Caminho de expansão: \(K/L = (\alpha w)/(\beta v)\).
- **CES** \(f = [\delta K^\rho + (1-\delta)L^\rho]^{\gamma/\rho}\): homotética (transformação monotônica de uma função homogênea de grau 1).
- **Leontief** \(f = \min\{aK, bL\}\): homotética (homogênea de grau 1). Caminho de expansão fixo em \(K/L = b/a\).

!!! warning "Contraexemplo"
    A função \(f(K, L) = K + L + KL\) **não** é homotética: a TMST \(= (1 + L)/(1 + K)\) depende dos níveis absolutos de \(K\) e \(L\), não apenas da razão \(K/L\). As isoquantas mudam de forma conforme o nível de produto aumenta.

!!! idea "Intuição Econômica"
    **Em uma frase:** Com tecnologia homotética, firmas grandes e pequenas usam a mesma "receita" — a proporção de insumos depende apenas dos preços relativos, não da escala de produção.

    **Pense assim:** Uma padaria que usa 2 kg de farinha para cada litro de leite manterá essa proporção se produzir 100 ou 10.000 pães por dia — desde que os preços dos insumos não mudem. Isso é o caminho de expansão linear: "escalar" a produção é como dar zoom na mesma combinação ótima.

    **Por que isso importa:** A hipótese de homoteticidade simplifica enormemente a análise de custos. Se a tecnologia não for homotética, a proporção ótima de insumos muda com a escala, e a função custo não se separa em um componente de preços e outro de quantidade.

??? exercicio-resolvido "Exercício Resolvido 10.6"
    **Enunciado:** Considere a função de produção \(f(K, L) = \ln(1 + K^{0,5} L^{0,5})\). (a) Mostre que é homotética. (b) Determine a direção do caminho de expansão quando \(w = v\). (c) Calcule a TMST ao longo do raio \(K = L\).

    **Resolução:**

    **Passo 1 — Verificar homoteticidade**

    Defina \(h(K, L) = K^{0,5} L^{0,5}\), que é homogênea de grau 1: \(h(\lambda K, \lambda L) = \lambda K^{0,5} L^{0,5} = \lambda h(K, L)\). Então \(f = \ln(1 + h) = g(h)\), onde \(g(z) = \ln(1 + z)\) é estritamente crescente. Logo \(f\) é homotética.

    **Passo 2 — Caminho de expansão com \(w = v\)**

    A TMST é:

    \[
    \text{TMST}_{LK} = \frac{\partial f / \partial L}{\partial f / \partial K} = \frac{0{,}5 K^{0,5} L^{-0,5}}{0{,}5 K^{-0,5} L^{0,5}} = \frac{K}{L}
    \]

    No ótimo, \(\text{TMST} = w/v = 1\), logo \(K/L = 1\). O caminho de expansão é a reta \(K = L\).

    **Passo 3 — TMST ao longo de \(K = L\)**

    Se \(K = L\), então \(\text{TMST} = K/L = 1\) — constante ao longo do raio, confirmando a propriedade homotética.

    **Resultado:** A função é homotética (log de Cobb-Douglas). Com \(w = v\), a firma usa quantidades iguais de capital e trabalho em qualquer escala.

---

A padaria com três fornos que não triplica a produção — lembra? Agora sabemos exatamente por quê: rendimentos marginais decrescentes no curto prazo, rendimentos de escala no longo prazo, e uma elasticidade de substituição que determina se a firma pode trocar braços por máquinas ou está presa à receita original. Da Cobb-Douglas à CES, do resíduo de Solow à homoteticidade, mapeamos a "receita secreta" da firma. Falta um ingrediente crucial: o preço.

*Sabemos produzir. Falta saber quanto custa. And now for something completely different: o próximo capítulo, onde a conta chega.*
