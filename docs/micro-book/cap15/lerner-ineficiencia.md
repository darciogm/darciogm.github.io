# 15.3–15.5 Índice de Lerner, Ineficiência e Estática Comparativa

## 15.3 A Régua do Poder: Demonstração do Índice de Lerner {#153}

A derivação formal a seguir explicita a conexão algébrica entre o poder de mercado do monopolista — medido pelo índice de Lerner — e a elasticidade-preço da demanda que ele enfrenta. Embora o resultado já tenha sido antecipado na seção anterior, a demonstração rigorosa é instrutiva porque revela a estrutura lógica subjacente e prepara o terreno para generalizações em contextos de oligopólio (Capítulo 16), onde o índice de Lerner de cada firma dependerá não apenas da elasticidade de mercado, mas também de sua participação de mercado e do grau de colusão.

!!! proof "Demonstração"
    Seja \(p(q)\) a demanda inversa do mercado e \(C(q)\) a função de custo do monopolista. O problema de maximização de lucro é:

    \[
    \max_q \; \pi(q) = p(q) \cdot q - C(q)
    \]

    A condição de primeira ordem é:

    \[
    \frac{d\pi}{dq} = p(q) + q \cdot p'(q) - C'(q) = 0
    \]

    Reescrevendo:

    \[
    p + q \cdot p'(q) = CMg
    \]

    Multiplicamos e dividimos o segundo termo por \(p\):

    \[
    p + p \cdot \frac{q \cdot p'(q)}{p} = CMg
    \]

    Observe que a elasticidade-preço da demanda é definida como:

    \[
    \varepsilon_p = \frac{dq}{dp} \cdot \frac{p}{q}
    \]

    Portanto:

    \[
    \frac{q \cdot p'(q)}{p} = \frac{q}{p} \cdot \frac{dp}{dq} = \frac{1}{\varepsilon_p}
    \]

    Substituindo:

    \[
    p\left(1 + \frac{1}{\varepsilon_p}\right) = CMg
    \]

    Rearranjando:

    \[
    p - CMg = -\frac{p}{\varepsilon_p}
    \]

    Dividindo ambos os lados por \(p\):

    \[
    \frac{p - CMg}{p} = -\frac{1}{\varepsilon_p} = \frac{1}{|\varepsilon_p|}
    \]

    Portanto:

    \[
    \boxed{L = \frac{p - CMg}{p} = \frac{1}{|\varepsilon_p|}}
    \label{eq:15.7} \tag{15.7} \]

    O índice de Lerner é igual ao inverso do valor absoluto da elasticidade-preço da demanda. Quanto mais inelástica a demanda (menor \(|\varepsilon_p|\)), maior o poder de mercado. Em concorrência perfeita, a firma enfrenta demanda perfeitamente elástica (\(|\varepsilon_p| \to \infty\)), de modo que \(L = 0\). \(\blacksquare\)

---

## 15.4 Quem Paga a Conta: Ineficiência do Monopólio {#154}

Até aqui, contamos a história do monopólio pelo ângulo do vilão — e, convenhamos, para o monopolista a vida é boa: ele escolhe preço, quantidade e vai dormir tranquilo. Mas e o resto da sociedade? Alguém está pagando a conta dessa tranquilidade. Em que medida o poder de mercado do monopolista compromete a eficiência alocativa que os Teoremas do Bem-Estar (Capítulo 14) garantem para mercados competitivos? A resposta a essas perguntas fundamenta a justificativa econômica para a regulação e a política antitruste — e, como veremos, envolve não apenas o conhecido "triângulo de Harberger", mas também custos mais sutis associados ao *rent-seeking* e à ineficiência organizacional.

### Perda de peso morto

O monopolista produz menos e cobra mais do que o resultado competitivo. Essa distorção gera uma **perda de peso morto** (PPM) — uma redução no excedente total que não é capturada por nenhum agente. A PPM representa transações mutuamente benéficas que deixam de ocorrer: consumidores que estariam dispostos a pagar mais do que o custo marginal de produção, mas são excluídos pelo preço de monopólio.

Considere um mercado com demanda linear \(p = a - bq\) e custo marginal constante \(CMg = c\).

**Resultado competitivo** (\(p = CMg\)):

\[
q^c = \frac{a - c}{b}, \quad p^c = c
\]

**Resultado monopolístico** (\(RMg = CMg\)):

\[
RMg = a - 2bq = c \implies q^m = \frac{a - c}{2b}, \quad p^m = \frac{a + c}{2}
\label{eq:15.8} \tag{15.8} \]

Pela equação $\eqref{eq:15.8}$, o monopolista produz **metade** da quantidade competitiva e cobra um preço **acima** do custo marginal. Essa relação — com demanda linear, a produção de monopólio é exatamente metade da competitiva — é um resultado útil que merece ser lembrado; ele decorre do fato de que, com demanda linear, a curva de \(RMg\) tem o mesmo intercepto e o dobro da inclinação da curva de demanda.

### O triângulo de Harberger

A perda de peso morto corresponde à área do triângulo entre a curva de demanda e o custo marginal, entre \(q^m\) e \(q^c\):

\[
PPM = \frac{1}{2}(p^m - c)(q^c - q^m) = \frac{(a-c)^2}{8b}
\label{eq:15.9} \tag{15.9} \]

Arnold Harberger (1954) pioneirou a mensuração empírica dessa perda e estimou que a PPM nos Estados Unidos seria da ordem de 0,1% do PIB — um valor surpreendentemente pequeno que provocou intenso debate na profissão. Estimativas posteriores, incorporando *rent-seeking* (os recursos desperdiçados na tentativa de obter ou manter o monopólio, como atividades de lobby) e ineficiências organizacionais (*X-inefficiency* de Leibenstein, 1966 — a ideia de que a ausência de pressão competitiva permite à firma operar aquém de sua fronteira de custos), sugerem valores significativamente maiores. Cowling e Mueller (1978) estimaram que o custo social do monopólio poderia chegar a 4–13% do PIB quando o lucro do monopolista é incluído como custo social (na hipótese de que é inteiramente dissipado em *rent-seeking*).

Richard Posner (1975) formalizou esse argumento: se firmas gastam recursos para obter e manter poder de mercado (por exemplo, em lobby, litígios e barreiras estratégicas), o custo social total pode ser muito maior que o triângulo de Harberger — podendo, no limite, ser tão grande quanto o retângulo de lucro do monopolista, como veremos no Exercício Resolvido 15.2.

!!! example "Poder de mercado e o CADE"
    O Conselho Administrativo de Defesa Econômica (CADE) utiliza o índice de Lerner e medidas correlatas para avaliar poder de mercado em atos de concentração e investigações de conduta. No caso da fusão Ambev (1999), o CADE estimou que a empresa resultante deteria cerca de 70% do mercado de cervejas, com significativo poder de precificação. Mais recentemente, em 2022, o CADE aplicou multa de R$ 539 milhões ao Google por abuso de posição dominante no mercado de *ad tech* — um caso em que o poder de mercado decorre não de barreiras tecnológicas clássicas, mas de efeitos de rede e controle de dados. O índice de Lerner é uma ferramenta analítica central nessas investigações: um \(L\) elevado e persistente sinaliza poder de mercado que justifica intervenção regulatória. A [Tabela 15.1](#tabela-15-1) compara os resultados dos dois regimes.

<a id="tabela-15-1"></a>

| Variável | Concorrência Perfeita | Monopólio | Variação |
|---|---|---|---|
| **Preço** | \(p^c = c\) | \(p^m = \frac{a+c}{2}\) | \(\uparrow\) |
| **Quantidade** | \(q^c = \frac{a-c}{b}\) | \(q^m = \frac{a-c}{2b}\) | \(\downarrow\) |
| **Excedente do Consumidor** | \(\frac{(a-c)^2}{2b}\) | \(\frac{(a-c)^2}{8b}\) | \(\downarrow\) |
| **Excedente do Produtor** | \(0\) | \(\frac{(a-c)^2}{4b}\) | \(\uparrow\) |
| **Excedente Total** | \(\frac{(a-c)^2}{2b}\) | \(\frac{3(a-c)^2}{8b}\) | \(\downarrow\) |
| **Perda de Peso Morto** | \(0\) | \(\frac{(a-c)^2}{8b}\) | — |

<div class="caption-obj" markdown>
**Tabela 15.1 — Comparação concorrência perfeita versus monopólio.**
</div>

!!! tip "Interpretação"
    A passagem de concorrência perfeita para monopólio envolve duas transferências: (i) parte do excedente do consumidor é capturada pelo monopolista (retângulo de transferência); (ii) parte do excedente total simplesmente desaparece (triângulo de Harberger). A PPM representa uma perda **líquida** de bem-estar social.

!!! idea "Intuição Econômica"
    **Em uma frase:** O monopólio produz menos e cobra mais do que um mercado competitivo, e a diferença de bem-estar que se perde no caminho não vai para ninguém — simplesmente evapora.

    **Pense assim:** Imagine que, em vez de vários postos de gasolina no bairro, houvesse apenas um. Ele reduziria a quantidade vendida e aumentaria o preço. Parte do que os consumidores perdem vai para o bolso do dono do posto (lucro de monopólio), mas outra parte — os litros que deixaram de ser vendidos porque o preço ficou alto demais — é pura perda. É como se alguém queimasse dinheiro: nem o consumidor nem o produtor ficam com ele.

    **Por que isso importa:** A perda de peso morto do monopólio é o principal argumento econômico para a existência de órgãos como o CADE, que combatem concentração excessiva de mercado para proteger o bem-estar dos consumidores brasileiros.

!!! box-mundo "Box Mundo 15.2 — O custo social do monopólio: de Harberger (EUA) à OCDE"

    **Contexto:** Quanto custa o monopólio para a sociedade? A resposta depende criticamente do que se inclui na conta. Arnold Harberger (1954), em estudo seminal com dados de 73 indústrias manufatureiras dos EUA no período 1924–1928, inaugurou a tradição de mensuração empírica das perdas de eficiência do poder de mercado — e obteve um resultado que surpreendeu a profissão por sua modéstia.

    **Dados:** A estimativa original de Harberger foi de apenas 0,1% do PIB americano — tão pequena que levantou a questão de se o monopólio era realmente um problema econômico relevante. Entretanto, estimativas posteriores usando metodologias mais abrangentes chegaram a valores muito maiores. Cowling e Mueller (1978), utilizando dados de firmas individuais nos EUA (734 firmas) e no Reino Unido, estimaram perdas de 4–13% do PIB americano e 3–7% do PIB britânico, ao incluir o lucro de monopólio como custo social (seguindo a lógica de Posner de que os lucros de monopólio são dissipados em *rent-seeking*). Mais recentemente, o *OECD Competition Assessment Toolkit* (2019) estima que reformas pró-concorrência em mercados com poder de mercado significativo podem elevar o PIB em 0,5% a 1,5% nos países membros — cifras que indicam perdas correntes nessa magnitude.

    **Análise:** A discrepância entre as estimativas reflete diferenças conceituais profundas sobre o que constitui o "custo social" do monopólio. O triângulo de Harberger captura apenas a ineficiência alocativa estática (transações não realizadas). A abordagem de Posner/Cowling-Mueller adiciona os custos de *rent-seeking* — recursos reais desviados para obter ou manter poder de mercado, como lobby, litígios e publicidade persuasiva. A teoria da *X-inefficiency* de Leibenstein (1966) sugere ainda que, na ausência de pressão competitiva, as firmas operam acima de sua fronteira de custos mínimos, gerando desperdício interno. Essas três fontes de custo — alocativo, *rent-seeking* e organizacional — se somam e podem tornar o monopólio um problema econômico substancial.

    **Fonte:** Harberger, A. C. (1954). Monopoly and resource allocation. *AER*, 44(2), 77–87. Cowling, K.; Mueller, D. C. (1978). The social costs of monopoly power. *Economic Journal*, 88(352), 727–748. OECD (2019). *Competition Assessment Toolkit*.

O exercício a seguir formaliza o argumento de Posner sobre os custos de *rent-seeking*.

??? exercicio-resolvido "Exercício Resolvido 15.2 — Custo social do monopólio com rent-seeking"
    **Enunciado.** Em um mercado com demanda \(p = 120 - 3q\), um monopolista tem \(CMg = 30\). (a) Calcule o equilíbrio de monopólio e a PPM (triângulo de Harberger). (b) Se o monopolista gasta até a totalidade do lucro em atividades de *rent-seeking* para manter o monopólio, qual é o custo social máximo? (c) Compare com o excedente total sob concorrência perfeita.

    ---

    **(a)** \(RMg = 120 - 6q = 30 \implies q^m = 15\), \(p^m = 120 - 45 = 75\).

    Lucro: \(\pi^m = (75 - 30) \times 15 = 675\).

    Resultado competitivo: \(p^c = 30\), \(q^c = (120-30)/3 = 30\).

    \[
    PPM = \frac{1}{2}(75 - 30)(30 - 15) = \frac{1}{2} \times 45 \times 15 = 337{,}5
    \]

    **(b)** Segundo Posner (1975), se o monopolista dissipa todo o lucro em *rent-seeking*, o custo social total é:

    \[
    CS_{\text{total}} = PPM + \pi^m = 337{,}5 + 675 = 1.012{,}5
    \]

    **(c)** Excedente total sob concorrência perfeita:

    \[
    W^c = EC^c = \frac{1}{2}(120 - 30)(30) = 1.350
    \]

    O custo social máximo (1.012,5) representa 75% do excedente competitivo. Sob monopólio com *rent-seeking* total, o bem-estar social restante seria apenas \(EC^m = \frac{1}{2}(120-75)(15) = 337{,}5\) — exatamente 25% do excedente competitivo.

    **Interpretação:** O triângulo de Harberger sozinho subestima o custo social do monopólio. Quando incluímos o desperdício de recursos em *rent-seeking*, o custo pode ser até três vezes maior. Este é o argumento central de Posner para uma política antitruste vigorosa.

---

## 15.5 Mexeu no Tabuleiro: Estática Comparativa do Monopólio {#155}

Estabelecido o equilíbrio de monopólio, podemos agora investigar como ele se altera diante de mudanças nos parâmetros exógenos. Que efeito tem um imposto sobre o preço e a quantidade de monopólio? Como o monopolista responde a um deslocamento da demanda? Essas perguntas de estática comparativa são particularmente relevantes para a formulação de políticas públicas, pois revelam como instrumentos tributários e regulatórios interagem com o poder de mercado. Os resultados, como veremos, diferem qualitativamente do caso competitivo — o que implica que intuições desenvolvidas para mercados competitivos podem ser enganosas quando aplicadas a mercados com poder de mercado.

### Efeito de um imposto unitário

Suponha que o governo impõe um imposto unitário \(t\) sobre cada unidade produzida. O novo custo marginal efetivo é \(CMg + t\). Com demanda linear:

\[
q^m(t) = \frac{a - c - t}{2b}, \quad p^m(t) = \frac{a + c + t}{2}
\label{eq:15.10} \tag{15.10} \]

Observe que \(\frac{dp^m}{dt} = \frac{1}{2}\): o monopolista repassa apenas **metade** do imposto ao consumidor. Isso contrasta com a concorrência perfeita, na qual, com oferta perfeitamente elástica, o repasse é integral. A diferença tem implicações diretas para a política tributária: um imposto sobre um monopolista é parcialmente absorvido pelo lucro da firma, o que pode ser desejável do ponto de vista distributivo — o monopolista "paga" metade do imposto.

!!! note "Repasse imperfeito"
    O fato de o monopolista absorver parte do imposto decorre da curvatura da curva de demanda que ele enfrenta. A incidência do imposto depende crucialmente da forma funcional da demanda: com demanda isoelástica (\(q = Ap^{\varepsilon}\)), por exemplo, o repasse pode *exceder* 100% — o preço sobe mais do que o valor do imposto. Esse resultado aparentemente paradoxal ocorre porque a demanda isoelástica é mais convexa que a linear, fazendo com que a \(RMg\) se desloque mais do que proporcionalmente. A forma funcional da demanda, portanto, é crucial para a análise de incidência tributária em mercados com poder de mercado.

### Deslocamento da demanda

Um aumento na demanda (deslocamento paralelo de \(a\) para \(a + \Delta\)) eleva tanto o preço quanto a quantidade de monopólio:

\[
\Delta p^m = \frac{\Delta}{2}, \quad \Delta q^m = \frac{\Delta}{2b}
\]

O lucro do monopolista é crescente e convexo na demanda, o que implica que o monopolista tem incentivos fortes para investir em publicidade ou atividades que expandam a demanda. Essa convexidade do lucro na demanda é uma propriedade geral do monopólio (não restrita à demanda linear) e tem uma consequência importante: o monopolista valora aumentos de demanda mais do que proporcionalmente, o que explica os elevados gastos em publicidade observados em mercados monopolísticos ou altamente concentrados.

No gráfico interativo abaixo, experimente ajustar o slider do imposto \(t\) e observe como o equilíbrio de monopólio se desloca. Note que o preço sobe apenas metade do valor do imposto, enquanto a quantidade cai. Observe também o retângulo de receita fiscal e como a perda de peso morto se altera.

<iframe src="../graficos/cap15/estatica-comparativa.html" title="Figura 15.2 — Estática comparativa: efeito de um imposto sobre o monopólio" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 15.2 — Estática comparativa: efeito de um imposto sobre o monopólio.** Ajuste o imposto unitário \(t\) e os parâmetros da demanda para visualizar como o equilíbrio se desloca. Observe que o monopolista repassa apenas metade do imposto (com demanda linear) e compare com o resultado competitivo.
</div>

??? exercicio-resolvido "Exercício Resolvido 15.3 — Imposto sobre o monopolista"
    **Enunciado.** Um monopolista enfrenta demanda \(p = 60 - q\) e tem \(CMg = 12\). O governo impõe imposto unitário \(t = 8\). (a) Encontre \((p, q, \pi)\) antes e depois do imposto. (b) Que fração do imposto é repassada ao consumidor? (c) Calcule a variação no excedente do consumidor.

    ---

    **(a) Antes do imposto:**

    \(RMg = 60 - 2q = 12 \implies q^m = 24\), \(p^m = 36\). \(\pi = (36-12)(24) = 576\).

    **Depois do imposto:** CMg efetivo = \(12 + 8 = 20\).

    \(RMg = 60 - 2q = 20 \implies q^m(t) = 20\), \(p^m(t) = 40\). \(\pi = (40 - 20)(20) = 400\).

    **(b)** Repasse: \(\Delta p = 40 - 36 = 4\). Fração repassada: \(4/8 = 50\%\). ✓ (Resultado geral para demanda linear.)

    **(c)** \(EC_{\text{antes}} = \frac{1}{2}(60-36)(24) = 288\).

    \(EC_{\text{depois}} = \frac{1}{2}(60-40)(20) = 200\).

    \(\Delta EC = 200 - 288 = -88\).

    **Interpretação:** O consumidor perde R$ 88 de excedente. O monopolista absorve R$ 176 de perda de lucro (\(576 - 400\)). A receita fiscal é \(8 \times 20 = 160\). A soma \(88 + 176 = 264\) excede a receita fiscal de 160 em \(264 - 160 = 104\) — esta diferença é o aumento na perda de peso morto causado pelo imposto.

<iframe src="../graficos/cap15/webr-imposto-monopolio.html" title="WebR — Imposto sobre o Monopolista" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 15.2 — O monopolista absorve metade do imposto.** O código implementa o ER 15.3: calcula o equilíbrio antes e depois do imposto, mostrando que o repasse é exatamente 50% com demanda linear. No gráfico da direita, observe que o lucro é uma parábola invertida no imposto — existe um $t$ que maximiza a receita fiscal. Experimente alterar `t` e compare o efeito sobre consumidor, produtor e governo.
</div>
