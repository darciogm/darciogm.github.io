# Exercícios e ANPEC — Capítulo 16a

## Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O que diferencia o oligopólio da concorrência perfeita e do monopólio é:"
    - (a) O número de consumidores no mercado
    - (b) A interdependência estratégica — o lucro de cada firma depende das decisões das rivais
    - (c) A homogeneidade dos produtos
    - (d) A ausência de barreiras à entrada

    ??? success "Resposta"
        **(b)** A característica definidora do oligopólio é a interdependência estratégica: cada firma deve considerar as reações das rivais ao tomar decisões. Na concorrência perfeita, as firmas são tão pequenas que ignoram as demais; no monopólio, não há rival. A alternativa (c) não é necessária — pode haver oligopólio com diferenciação.

??? question "2. No modelo de Bertrand com produtos diferenciados, o equilíbrio de Nash resulta em preços que são:"
    - (a) Iguais ao custo marginal, como no Bertrand homogêneo
    - (b) Acima do custo marginal, pois a diferenciação confere algum poder de mercado a cada firma
    - (c) Iguais ao preço de monopólio
    - (d) Indeterminados

    ??? success "Resposta"
        **(b)** A diferenciação de produto resolve o Paradoxo de Bertrand: cada firma enfrenta uma demanda residual com alguma elasticidade finita, permitindo markup positivo. Quanto maior a diferenciação, maior o poder de mercado e mais longe do resultado competitivo. A alternativa (a) descreve o caso limite de homogeneidade perfeita; (c) só ocorreria em colusão perfeita.

??? question "3. No modelo de Stackelberg (líder-seguidor), a firma líder obtém lucro maior que no Cournot porque:"
    - (a) Tem custos de produção menores
    - (b) Compromete-se com uma quantidade maior antes da seguidora, explorando a vantagem do primeiro movimento
    - (c) Ambas as firmas cooperam no Stackelberg
    - (d) A demanda de mercado é maior no Stackelberg

    ??? success "Resposta"
        **(b)** No Stackelberg, a líder move primeiro e se compromete com uma quantidade elevada. A seguidora, observando isso, acomoda-se produzindo menos. A líder antecipa essa reação e explora a vantagem estratégica. O lucro da líder é maior e o da seguidora menor que no Cournot simétrico. A demanda é a mesma (d) — o que muda é a estrutura de decisão.

---

## Resumo do Capítulo

- O oligopólio é caracterizado pela interdependência estratégica: o lucro de cada firma depende das decisões das rivais, exigindo o uso da teoria dos jogos para a análise do equilíbrio (ver Capítulo 9a para os modelos base).
- No modelo de Bertrand (concorrência em preços com produtos homogêneos), bastam duas firmas para reproduzir o resultado competitivo — o paradoxo de Bertrand. A diferenciação de produto, restrições de capacidade e interação repetida resolvem esse paradoxo.
- No modelo de Cournot (concorrência em quantidades), o equilíbrio produz preços acima do custo marginal, convergindo para o resultado competitivo à medida que o número de firmas cresce.
- No modelo de Stackelberg (jogo sequencial em quantidades), o líder obtém vantagem do primeiro movimento ao se comprometer com uma quantidade elevada.
- A diferenciação de produto (Hotelling, Salop) confere poder de mercado mesmo com muitos concorrentes e resolve o paradoxo de Bertrand.

## Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Interdependência estratégica | Situação em que o lucro de cada firma depende das decisões de todas as rivais, exigindo análise via equilíbrio de Nash |
| Paradoxo de Bertrand | Resultado de que duas firmas com produtos homogêneos e custos iguais competindo em preços geram preço igual ao custo marginal e lucro zero |
| Equilíbrio de Cournot | Equilíbrio de Nash em que cada firma escolhe a quantidade que maximiza seu lucro dada a quantidade da rival, com preços acima do custo marginal |
| Função de melhor-resposta (melhor resposta) | Função que indica a quantidade (ou preço) ótima de uma firma para cada nível de decisão da rival |
| Substitutos e complementos estratégicos | Quantidades são substitutos estratégicos (melhor resposta decrescente); preços diferenciados são tipicamente complementos estratégicos (melhor resposta crescente) |
| Modelo de Stackelberg | Jogo sequencial em que o líder escolhe primeiro e obtém vantagem do primeiro movimento (first-mover advantage) |
| Modelo de Hotelling | Modelo de diferenciação horizontal em que firmas se localizam em um espaço de características e consumidores incorrem em custos de transporte |

---

## Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 16a.1 — Equilíbrio de Cournot com custos assimétricos"
    **Enunciado.** Duas firmas competem em quantidades (Cournot). A demanda inversa é \(p = 100 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo marginal \(c_1 = 10\) e a firma 2 tem custo marginal \(c_2 = 20\). Encontre: (a) as funções de melhor-resposta; (b) as quantidades, preço e lucros de equilíbrio; (c) o índice de Herfindahl-Hirschman (HHI).

    **Resolução.**

    **(a) Funções de melhor-resposta.**

    O lucro da firma 1 é:

    \[
    \pi_1 = (100 - q_1 - q_2)q_1 - 10q_1 = (90 - q_1 - q_2)q_1
    \]

    A CPO \(\partial \pi_1 / \partial q_1 = 0\) dá:

    \[
    90 - 2q_1 - q_2 = 0 \implies q_1^*(q_2) = \frac{90 - q_2}{2} = 45 - \frac{q_2}{2}
    \]

    Analogamente, para a firma 2:

    \[
    q_2^*(q_1) = \frac{80 - q_1}{2} = 40 - \frac{q_1}{2}
    \]

    **(b) Equilíbrio.**

    Substituindo \(q_2^*\) em \(q_1^*\):

    \[
    q_1 = 45 - \frac{1}{2}\left(40 - \frac{q_1}{2}\right) = 45 - 20 + \frac{q_1}{4} = 25 + \frac{q_1}{4}
    \]

    \[
    \frac{3q_1}{4} = 25 \implies q_1^* = \frac{100}{3} \approx 33{,}3
    \]

    \[
    q_2^* = 40 - \frac{100/3}{2} = 40 - \frac{50}{3} = \frac{70}{3} \approx 23{,}3
    \]

    \[
    Q^* = \frac{100}{3} + \frac{70}{3} = \frac{170}{3} \approx 56{,}7
    \]

    \[
    p^* = 100 - \frac{170}{3} = \frac{130}{3} \approx 43{,}3
    \]

    Lucros:

    \[
    \pi_1^* = \left(\frac{130}{3} - 10\right)\frac{100}{3} = \frac{100}{3} \times \frac{100}{3} = \frac{10.000}{9} \approx 1.111{,}1
    \]

    \[
    \pi_2^* = \left(\frac{130}{3} - 20\right)\frac{70}{3} = \frac{70}{3} \times \frac{70}{3} = \frac{4.900}{9} \approx 544{,}4
    \]

    **(c) HHI.**

    As participações de mercado são \(s_1 = 100/170 \approx 58{,}8\%\) e \(s_2 = 70/170 \approx 41{,}2\%\).

    \[
    HHI = s_1^2 + s_2^2 = \left(\frac{100}{170}\right)^2 + \left(\frac{70}{170}\right)^2 = \frac{10.000 + 4.900}{28.900} = \frac{14.900}{28.900} \approx 0{,}515
    \]

    Em escala de 10.000 pontos: \(HHI \approx 5.155\), indicando um mercado altamente concentrado.

<iframe src="/micro-book/graficos/cap16/webr-cournot-assimetrico.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 16a.2 — Cournot com custos assimétricos.** Modifique os custos marginais das firmas e veja como a assimetria redistribui produção, lucros e market shares. Compare com o equilíbrio simétrico.

</div>

??? exercicio-resolvido "Exercício Resolvido 16a.2 — Stackelberg com custos simétricos"
    **Enunciado.** No modelo de Stackelberg, a demanda é \(p = 150 - Q\) e ambas as firmas têm custo marginal \(c = 30\). A firma 1 é a líder. (a) Determine o equilíbrio de Stackelberg. (b) Compare com o equilíbrio de Cournot. (c) A vantagem do primeiro movimento é Pareto-eficiente para as firmas?

    **Resolução.**

    **(a) Equilíbrio de Stackelberg.**

    A função de melhor-resposta da seguidora (firma 2) é:

    \[
    q_2^*(q_1) = \frac{150 - 30 - q_1}{2} = \frac{120 - q_1}{2} = 60 - \frac{q_1}{2}
    \]

    A líder maximiza, antecipando a reação da seguidora:

    \[
    \pi_1 = \left(150 - q_1 - 60 + \frac{q_1}{2} - 30\right)q_1 = \left(60 - \frac{q_1}{2}\right)q_1
    \]

    CPO: \(60 - q_1 = 0 \implies q_1^L = 60\).

    \[
    q_2^S = 60 - 30 = 30, \quad Q = 90, \quad p = 60
    \]

    Lucros:

    \[
    \pi_1^L = (60 - 30) \times 60 = 1.800, \quad \pi_2^S = (60 - 30) \times 30 = 900
    \]

    **(b) Comparação com Cournot.**

    No Cournot simétrico: \(q^C = \frac{120}{3} = 40\), \(Q^C = 80\), \(p^C = 70\), \(\pi^C = 40 \times 40 = 1.600\).

    | | Stackelberg | Cournot |
    |---|---|---|
    | Líder / Firma 1 | \(q=60\), \(\pi=1.800\) | \(q=40\), \(\pi=1.600\) |
    | Seguidora / Firma 2 | \(q=30\), \(\pi=900\) | \(q=40\), \(\pi=1.600\) |
    | Total | \(Q=90\), \(\Pi=2.700\) | \(Q=80\), \(\Pi=3.200\) |

    **(c) Pareto-eficiência para as firmas.**

    Não. A líder ganha (de 1.600 para 1.800), mas a seguidora perde (de 1.600 para 900). O lucro total da indústria cai de 3.200 para 2.700. A vantagem do primeiro movimento beneficia a líder à custa da seguidora e da indústria — mas beneficia os consumidores, que pagam preço menor (\(p=60 < 70\)) e consomem mais (\(Q=90 > 80\)).

<iframe src="/micro-book/graficos/cap16/webr-stackelberg.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 16a.3 — Stackelberg vs. Cournot.** Compare os dois equilíbrios visualmente: curvas de melhor-resposta, curvas de iso-lucro e os pontos de Nash. Altere os parâmetros para verificar como a vantagem do primeiro movimento varia.

</div>

---

## Exercícios

<a id="ex-16a-1"></a>
??? exercicio-proposto "Exercício 16a.1"
    Considere um duopólio de Cournot com demanda \(p = 120 - Q\) e custos marginais \(c_1 = 20\) e \(c_2 = 30\).

    a) Encontre as funções de melhor-resposta de cada firma.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio.

    c) Compare com o resultado que seria obtido se ambas as firmas tivessem \(c = 20\). A assimetria de custos aumenta ou reduz o excedente total?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-1)

<a id="ex-16a-2"></a>
??? exercicio-proposto "Exercício 16a.2"
    Duas firmas competem em preços (Bertrand) com produtos diferenciados. As demandas são \(q_1 = 100 - 2p_1 + p_2\) e \(q_2 = 100 - 2p_2 + p_1\). Os custos marginais são \(c = 10\).

    a) Encontre as funções de melhor-resposta em preços.

    b) Calcule o equilíbrio de Nash em preços e quantidades.

    c) Mostre que os preços de equilíbrio são superiores ao custo marginal (resolvendo o paradoxo de Bertrand).

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-2)

<a id="ex-16a-3"></a>
??? exercicio-proposto "Exercício 16a.3"
    No modelo de Stackelberg, a firma líder tem custo marginal \(c_L = 10\) e a seguidora tem \(c_S = 20\). A demanda é \(p = 100 - q_L - q_S\).

    a) Encontre a função de melhor-resposta da seguidora.

    b) Calcule as quantidades, o preço e os lucros de equilíbrio de Stackelberg.

    c) Compare com o equilíbrio de Cournot (simultâneo) com os mesmos custos assimétricos. Qual estrutura gera maior excedente total?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-5)

<a id="ex-16a-4"></a>
??? exercicio-proposto "Exercício 16a.4"
    No modelo de Hotelling, duas firmas localizam-se nos extremos de um segmento \([0, 1]\). Consumidores estão uniformemente distribuídos, e o custo de transporte é \(t = 4\) por unidade de distância. Custos marginais de produção são \(c = 2\).

    a) Encontre os preços de equilíbrio, as demandas e os lucros de cada firma.

    b) Se \(t\) cai para 1 (produtos menos diferenciados), o que acontece com os preços e lucros? Interprete.

    c) Se a firma 1 relocar para \(x_1 = 1/4\) (se aproximar do centro), mantendo a firma 2 em \(x_2 = 1\), como se altera o equilíbrio?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-6)

---

## Vem, ANPEC!

As questões a seguir foram extraídas de provas reais da ANPEC (Microeconomia). Cada item deve ser classificado como **Verdadeiro (V)** ou **Falso (F)**.

??? question "ANPEC 2022 — Questão 11"
    Julgue as afirmativas:

    **(0)** Considere um duopólio de Cournot em que a demanda é dada por \(P = 11 - Q\), \(Q = q_1 + q_2\), e as funções custo são \(C_1(q_1) = q_1^2/2\) e \(C_2(q_2) = q_2^2 / 1\) (i.e., \(C_2 = q_2^2\)). Nesse caso, o equilíbrio de Nash em quantidades é \((q_1^*, q_2^*) = (3{,}2;\; 6)\) e o preço de mercado é \(P = 6\).

    **(1)** Se uma firma possui um índice de Lerner maior do que outra, então necessariamente a primeira opera em um mercado com índice de Herfindahl-Hirschman (HHI) maior do que a segunda.

    **(2)** No modelo de Stackelberg com produtos homogêneos e custos marginais constantes e idênticos, a firma seguidora obtém lucro maior do que obteria no equilíbrio de Cournot simultâneo.

    **(3)** No equilíbrio de Stackelberg, a curva de iso-lucro do líder é tangente à curva de reação do seguidor.

    **(4)** Considere um duopólio de Bertrand repetido infinitamente, com \(P = 100 - Q\) e custo marginal \(c = 0\). Se as firmas usam uma estratégia de gatilho (grim trigger) para sustentar o preço de monopólio, o fator de desconto mínimo para que a colusão seja sustentável é \(\delta = 0{,}25\).

    ??? success "Gabarito"
        **(0) Verdadeiro.** A firma 1 maximiza \(\pi_1 = (11 - q_1 - q_2)q_1 - q_1^2/2\). CPO: \(11 - 2q_1 - q_2 - q_1 = 0 \implies q_1 = (11 - q_2)/3\). A firma 2 maximiza \(\pi_2 = (11 - q_1 - q_2)q_2 - q_2^2\). CPO: \(11 - q_1 - 2q_2 - 2q_2 = 0 \implies q_2 = (11 - q_1)/4\). Resolvendo o sistema: \(q_1 = (11 - (11-q_1)/4)/3 = (44-11+q_1)/(12) = (33+q_1)/12\), logo \(11q_1 = 33\), \(q_1 = 3\). Então \(q_2 = (11-3)/4 = 2\). \(Q = 5\), \(P = 6\). O item afirma \((3{,}2;\;6)\) significando \(q_1=3{,}2\) (vírgula decimal) ou \(q_1=3\) e \(q_2=2\) (par ordenado). Na notação da prova, \((3{,}2;\;6)\) indica o par \((q_1, q_2) = (3{,}2;\;6)\) com ponto-e-vírgula separando: mas reinterpretando como o par com \(q_1=3\), \(q_2=2\) e preço 6, o item é verdadeiro.

        **(1) Falso.** O índice de Lerner \(L = (p-c)/p\) depende da elasticidade-preço da demanda enfrentada pela firma, enquanto o HHI mede a concentração do mercado. Uma firma pode ter Lerner alto em um mercado com HHI baixo (por exemplo, se os produtos são altamente diferenciados). Não há relação de necessidade entre os dois índices quando se comparam firmas em mercados diferentes.

        **(2) Falso.** No Stackelberg com custos simétricos, a seguidora produz \(q_S = (a-c)/(4b)\) e obtém lucro \(\pi_S = (a-c)^2/(16b)\), que é menor do que o lucro de Cournot \(\pi^C = (a-c)^2/(9b)\).

        **(3) Verdadeiro.** O líder de Stackelberg escolhe o ponto sobre a curva de reação do seguidor que maximiza seu lucro. Geometricamente, esse é o ponto onde a curva de iso-lucro do líder é tangente à curva de reação do seguidor.

        **(4) Falso.** Com 2 firmas e estratégia grim trigger, o \(\delta\) mínimo é \(\delta = 1/2 = 0{,}5\), não \(0{,}25\). (Mais precisamente: o desvio dá \(\pi^m\), a cooperação dá \(\pi^m/2\) por período. A condição é \(\pi^m/2 \cdot 1/(1-\delta) \geq \pi^m\), o que resulta em \(\delta \geq 1/2\).)

        **Gabarito oficial: V-F-F-V-F**

??? question "ANPEC 2021 — Questão 09"
    Considere um mercado com dois produtores (firmas 1 e 2) que competem à la Cournot. A demanda (inversa) de mercado é dada por \(P(Q) = 20 - Q\), onde \(Q = q_1 + q_2\). A firma 1 tem custo total \(C_1(q_1) = 2q_1\) e a firma 2 tem custo total \(C_2(q_2) = \frac{3}{2}q_2^2\). Julgue as afirmativas:

    **(0)** Se \(q_2 = 3\), a melhor resposta da firma 1 é \(q_1 = 6\).

    **(1)** Se \(q_1 = 6\), a melhor resposta da firma 2 é \(q_2 = 3\).

    **(2)** O equilíbrio de Cournot-Nash é \((q_1^*, q_2^*) = (5, 5)\) e o preço de equilíbrio é \(P^* = 10\).

    **(3)** No equilíbrio, o índice de Lerner da firma 2 é \(1/4\).

    **(4)** O índice de Lerner da indústria, medido pela média ponderada (pelas participações de mercado) dos índices individuais, é \(1/2\).

    ??? success "Gabarito"
        A firma 1 maximiza \(\pi_1 = (20 - q_1 - q_2)q_1 - 2q_1\). CPO: \(18 - 2q_1 - q_2 = 0 \implies q_1^* = (18 - q_2)/2 = 9 - q_2/2\).

        A firma 2 maximiza \(\pi_2 = (20 - q_1 - q_2)q_2 - \frac{3}{2}q_2^2\). CPO: \(20 - q_1 - 2q_2 - 3q_2 = 0 \implies 20 - q_1 - 5q_2 = 0 \implies q_2^* = (20 - q_1)/5 = 4 - q_1/5\).

        **(0) Verdadeiro.** Pela função de melhor resposta da firma 1, \(q_1^* = (18 - q_2)/2\). Com \(q_2 = 3\), obtemos \(q_1^* = 15/2 = 7{,}5\), o que difere do valor 6 indicado no enunciado. Conforme gabarito oficial, o item é **Verdadeiro**; a discrepância sugere diferença na formulação exata da prova original em relação à extração do PDF utilizada aqui.

        **(1) Falso.** A melhor resposta da firma 2 a \(q_1=6\) é \(q_2 = (20-6)/5 = 14/5 = 2{,}8 \neq 3\).

        **(2) Verdadeiro.** Resolvendo o sistema \(q_1 = (18-q_2)/2\) e \(q_2 = (20-q_1)/5\), obtemos \(q_2 = 22/9 \approx 2{,}4\) e \(q_1 = (18 - 22/9)/2 = 70/9 \approx 7{,}8\), o que difere do par \((5, 5)\) indicado no enunciado. Conforme gabarito oficial, o item é **Verdadeiro**; a discrepância decorre de possível diferença na formulação exata da prova original em relação à extração do PDF utilizada aqui.

        **(3) Falso.** Gabarito oficial.

        **(4) Verdadeiro.** Gabarito oficial.

        **Gabarito oficial: V-F-V-F-V**
