# Exercícios e ANPEC — Capítulo 16b

## Revisão Rápida

??? question "1. A sustentabilidade de um cartel (colusão) em oligopólio é dificultada porque:"
    - (a) Os custos de produção são muito baixos
    - (b) Cada membro tem incentivo individual a trair o acordo, produzindo mais que a cota para obter lucros maiores no curto prazo
    - (c) Os consumidores formam cartéis em resposta
    - (d) A legislação antitruste é sempre eficaz em impedir cartéis

    ??? success "Resposta"
        **(b)** O cartel enfrenta o clássico Dilema dos Prisioneiros: o lucro conjunto é maximizado com restrição de produção, mas cada firma individualmente lucra mais ao desviar (produzir acima da cota enquanto os demais restringem). A sustentabilidade depende de mecanismos de punição, transparência e paciência (Folk Theorem). A alternativa (d) ignora que muitos cartéis operam impunemente.

??? question "2. A análise antitruste de fusões horizontais entre oligopolistas tipicamente avalia se a fusão:"
    - (a) Aumenta o número de firmas no mercado
    - (b) Gera poder de mercado unilateral ou coordenado que prejudica consumidores, considerando possíveis eficiências compensatórias
    - (c) Reduz os custos fixos da firma resultante
    - (d) É aprovada unanimemente pelos acionistas

    ??? success "Resposta"
        **(b)** A análise antitruste (ex.: pelo CADE no Brasil) avalia se a concentração resultante permite à firma fusionada elevar preços ou facilitar colusão tácita, ponderando eventuais eficiências (redução de custos, sinergias). A alternativa (a) é o oposto — fusões reduzem o número de firmas; (c) é parcial; (d) é irrelevante para a análise concorrencial.

---

## Resumo do Capítulo

- A colusão tácita pode ser sustentada em jogos repetidos por meio de estratégias de gatilho, desde que o fator de desconto seja suficientemente alto.
- Decisões de longo prazo como investimento em capacidade, dissuasão estratégica de entrada e inovação ampliam a análise para além dos modelos estáticos.
- A competição monopolística combina diferenciação de produto com livre entrada, gerando equilíbrio de longo prazo com lucro zero e excesso de capacidade.
- A análise de fusões horizontais envolve o trade-off entre poder de mercado e eficiência, com o HHI como ferramenta de triagem.
- A regulação de oligopólios (price cap, rate-of-return, Laffont-Tirole) busca disciplinar firmas com poder de mercado sob assimetria de informação.

## Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Colusão tácita | Coordenação de preços acima do competitivo sustentada por interação repetida e ameaça de retaliação, sem acordo explícito |
| Estratégia de gatilho (grim trigger) | Estratégia em que firmas cooperam enquanto todas cooperam, mas revertem permanentemente ao equilíbrio de Nash se alguém desviar |
| Dissuasão estratégica de entrada | Uso de investimento em capacidade ou preços-limite para tornar a entrada de rivais não lucrativa |
| Competição monopolística | Estrutura com muitas firmas, produtos diferenciados e livre entrada; equilíbrio de longo prazo com lucro zero e excesso de capacidade |
| Índice de Herfindahl-Hirschman (HHI) | Medida de concentração de mercado: \(HHI = \sum s_i^2\); usado por autoridades antitruste para análise de fusões |
| Price cap (preço-teto) | Regulação que fixa teto de preço ajustado por \(RPI - X\), incentivando eficiência produtiva |

---

## Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 16b.1 — Sustentação de colusão com trigger strategy"
    **Enunciado.** Três firmas idênticas competem em Bertrand com custo marginal \(c = 20\) e demanda \(Q = 200 - p\). Considere um jogo infinitamente repetido com fator de desconto \(\delta\) e estratégia de gatilho (grim trigger) para sustentar o preço de monopólio. (a) Calcule o preço de monopólio e o lucro dividido por firma. (b) Calcule o ganho do desvio. (c) Determine o \(\delta\) mínimo para sustentação da colusão.

    **Resolução.**

    **(a) Preço de monopólio e lucro dividido.**

    O monopolista maximiza \(\pi = (p - 20)(200 - p)\). CPO: \(200 - 2p + 20 = 0 \implies p^m = 110\).

    \[
    Q^m = 90, \quad \pi^m = 90 \times 90 = 8.100
    \]

    Lucro dividido por firma (com 3 firmas): \(\pi^m / 3 = 2.700\).

    **(b) Ganho do desvio.**

    Ao desviar (cobrando \(p^m - \epsilon\)), a firma captura toda a demanda e obtém aproximadamente \(\pi^m = 8.100\) no período do desvio. A partir do período seguinte, todas as firmas revertem para \(p = c = 20\) e o lucro é zero.

    **(c) \(\delta\) mínimo.**

    A colusão é sustentável se o valor presente de cooperar supera o valor de desviar:

    \[
    \frac{\pi^m / 3}{1 - \delta} \geq \pi^m + 0
    \]

    \[
    \frac{1/3}{1 - \delta} \geq 1 \implies \frac{1}{3} \geq 1 - \delta \implies \delta \geq \frac{2}{3}
    \]

    Isso confirma a fórmula geral \(\delta \geq 1 - 1/n\): com \(n = 3\), \(\delta \geq 2/3\). Note que com 2 firmas bastaria \(\delta \geq 1/2\); com 3 firmas a colusão exige mais paciência. Quanto mais firmas no cartel, mais difícil sustentá-lo — cada firma tem incentivo maior para desviar, pois captura toda a demanda ao invés de apenas \(1/n\) dela.

<iframe src="/micro-book/graficos/cap16/webr-colusao.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 16b.1 — Sustentação de colusão com trigger strategy.** Explore como o $\delta$ mínimo cresce com o número de firmas e compare o valor presente de cooperar vs. desviar ao longo do tempo.

</div>

---

## Exercícios

<a id="ex-16b-1"></a>
??? exercicio-proposto "Exercício 16b.1"
    Considere o modelo de Cournot com \(n\) firmas idênticas, demanda \(p = 200 - Q\) e custo marginal \(c = 20\). O custo fixo de entrada é \(f = 400\).

    a) Encontre preço, quantidade por firma e lucro por firma em função de \(n\).

    b) Determine o número de firmas em equilíbrio de entrada livre.

    c) Calcule o número socialmente ótimo de firmas (que maximiza o excedente total menos os custos fixos totais). Há excesso de entrada?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-3)

<a id="ex-16b-2"></a>
??? exercicio-proposto "Exercício 16b.2"
    Duas firmas jogam um jogo de Bertrand repetido infinitamente com fator de desconto \(\delta\). A demanda de mercado é \(Q = 100 - p\) e o custo marginal é \(c = 40\). As firmas consideram usar uma estratégia de gatilho para sustentar o preço de monopólio.

    a) Calcule o preço de monopólio e o lucro de monopólio dividido.

    b) Determine o fator de desconto mínimo para que a colusão seja sustentável.

    c) Como o resultado se altera se há três firmas ao invés de duas?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-4)

<a id="ex-16b-3"></a>
??? exercicio-proposto "Exercício 16b.3"
    Considere um mercado de competição monopolística com \(n\) firmas. Cada firma enfrenta demanda \(q_i = S/n - b(p_i - \bar{p})\), onde \(S = 1.000\) é o tamanho do mercado, \(\bar{p}\) é o preço médio das rivais e \(b = 2\). O custo total de cada firma é \(C(q) = 100 + 10q\) (custo fixo de 100, custo marginal de 10).

    a) No equilíbrio simétrico de curto prazo (com \(n\) dado), encontre o preço e o lucro por firma em função de \(n\).

    b) Determine o número de firmas no equilíbrio de longo prazo (lucro zero).

    c) Verifique se há excesso de capacidade no equilíbrio de longo prazo.

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-7)

<a id="ex-16b-4"></a>
??? exercicio-proposto "Exercício 16b.4"
    Um mercado tem 5 firmas com as seguintes participações de mercado: 35%, 25%, 20%, 12%, 8%.

    a) Calcule o HHI do mercado. Classifique-o segundo os critérios do CADE/DOJ.

    b) Se as duas maiores firmas se fundirem, qual será o novo HHI? A variação (ΔHHI) justificaria escrutínio detalhado?

    c) Se a fusão gerar redução de custo marginal de 5% para a firma combinada, essa eficiência é suficiente para compensar o efeito anticompetitivo, assumindo demanda linear? Discuta qualitativamente.

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-8)

<a id="ex-16b-5"></a>
??? exercicio-proposto "Exercício 16b.5"
    Duas firmas jogam um Bertrand repetido com fator de desconto \(\delta\). A firma 1 tem custo marginal \(c_1 = 10\) e a firma 2 tem \(c_2 = 20\). A demanda é \(Q = 100 - p\).

    a) Qual seria o preço de monopólio se as firmas coluidissem perfeitamente? (Use o menor custo marginal.)

    b) Como as firmas dividiriam a produção no cartel? (Sugestão: a firma eficiente produz tudo.)

    c) Determine o \(\delta\) mínimo para que a colusão seja sustentável para cada firma. Qual firma tem maior incentivo para desviar?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-9)

<a id="ex-16b-6"></a>
??? exercicio-proposto "Exercício 16b.6"
    *(Desafio)* Considere o modelo de Salop (cidade circular) com \(n\) firmas, perímetro 1, custo de transporte \(t = 1\), custo fixo \(f\) e custo marginal \(c = 0\).

    a) Derive o preço de equilíbrio simétrico \(p^*(n)\) e o lucro por firma \(\pi^*(n)\).

    b) Determine o número de firmas em equilíbrio de entrada livre \(n^*\) como função de \(f\).

    c) Mostre que o número socialmente ótimo de firmas \(n^{**}\) (que minimiza a soma de custos fixos + custos de transporte) é \(n^{**} = n^*/2\). Há excesso de entrada?

    d) Interprete: a entrada excessiva ocorre porque cada firma ignora uma externalidade. Qual é essa externalidade?

    [:material-arrow-right: Ver solução](../solucoes/cap16.md#ex-16-10)

---

## Vem, ANPEC!

??? question "ANPEC 2018 — Questão 09"
    Julgue as afirmativas sobre concorrência monopolística e oligopólio:

    **(0)** No modelo de demanda quebrada (kinked demand), se houver um aumento no custo marginal da firma, haverá necessariamente um aumento no preço cobrado pela firma.

    **(1)** A sinalização de preços (price signaling) por uma firma líder em um oligopólio exige necessariamente um acordo explícito entre as firmas.

    **(2)** A liderança de preços pode funcionar como mecanismo para que firmas oligopolistas superem o dilema dos prisioneiros.

    **(3)** Em um duopólio de Cournot simétrico, o lucro de cada firma no equilíbrio de Nash é maior do que o lucro que cada firma obteria em um cartel (colusão perfeita) com divisão igualitária da produção.

    **(4)** No modelo de concorrência monopolística, a livre entrada e saída de firmas implica que, no equilíbrio de longo prazo, cada firma opera com lucro econômico zero.

    ??? success "Gabarito"
        **(0) Falso.** No modelo de demanda quebrada, a curva de receita marginal possui uma descontinuidade (gap) no nível de produção corrente. Se o aumento do custo marginal for suficientemente pequeno, de modo que a nova curva de custo marginal ainda cruze a receita marginal dentro do gap, o preço ótimo não se altera. A demanda quebrada explica rigidez de preços: variações moderadas nos custos não provocam mudanças no preço.

        **(1) Falso.** A sinalização de preços ocorre quando uma firma (líder) anuncia publicamente mudanças de preço e as demais firmas seguem. Isso não requer acordo explícito — é um mecanismo de coordenação tácita.

        **(2) Verdadeiro.** A liderança de preços funciona como um mecanismo de coordenação que permite às firmas convergirem para preços supracompetitivos sem acordo explícito, superando assim o dilema dos prisioneiros inerente à competição oligopolística.

        **(3) Falso.** No cartel com divisão igualitária, cada firma produz \(q^m/2\), onde \(q^m\) é a quantidade de monopólio. O lucro por firma é \(\pi^m/2\). No Cournot simétrico, o lucro por firma é \((a-c)^2/(9b)\), enquanto no cartel é \((a-c)^2/(8b)\). Como \(1/9 < 1/8\), o lucro de Cournot é menor do que o lucro do cartel, não maior.

        **(4) Verdadeiro.** A livre entrada e saída é uma hipótese central do modelo de concorrência monopolística de Chamberlin. No equilíbrio de longo prazo, a entrada de novas firmas desloca a curva de demanda de cada firma incumbente para a esquerda até que a curva de demanda seja tangente à curva de custo médio, resultando em lucro econômico zero.

        **Gabarito oficial: F-F-V-F-V**
