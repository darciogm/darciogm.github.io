# Revisão, Exercícios e ANPEC

!!! tip "Dados para exercícios empíricos"
    - **IPEADATA (preços de commodities e índices):** [ipeadata.gov.br](https://www.ipeadata.gov.br)
    - **Comex Stat (comércio exterior):** [comexstat.mdic.gov.br](http://comexstat.mdic.gov.br)
    - **SIDRA/IBGE (produção agrícola e industrial):** [sidra.ibge.gov.br](https://sidra.ibge.gov.br)

## Perguntas de Revisão

1. Explique por que a curva de oferta de mercado de curto prazo pode apresentar descontinuidades, mas a de longo prazo tende a ser contínua.
2. Por que o lucro econômico de longo prazo é zero em concorrência perfeita, mas o lucro contábil pode ser positivo? Dê um exemplo numérico.
3. Uma indústria de custos crescentes tem curva de oferta de longo prazo positivamente inclinada. Isso contradiz a afirmação de que "no longo prazo, o preço iguala o custo total médio mínimo"? Justifique.
4. Explique, com suas palavras, por que a incidência legal de um imposto é irrelevante para determinar quem efetivamente arca com a carga tributária.
5. O Princípio de Ramsey recomenda tributar mais pesadamente bens com demanda inelástica. Discuta o potencial conflito entre eficiência e equidade dessa regra.

---

## 📋 Resumo do Capítulo

| Conceito | Definição | Equação-chave |
|:---|:---|:---|
| Demanda de mercado | Soma horizontal das demandas individuais | $X(p) = \sum_{i} x_i(p)$ |
| Equilíbrio de curto prazo | Preço que iguala oferta e demanda, dado $m$ firmas | $X(p^*) = S(p^*)$ |
| Estática comparativa | Comparação entre equilíbrios antes/depois de um choque | $dp/d\alpha = \frac{\partial X/\partial \alpha}{\partial S/\partial p - \partial X/\partial p}$ |
| Equilíbrio de longo prazo | Lucro zero com entrada/saída endógena | $p^* = CTMe_{\min}$ |
| Renda ricardiana | Lucro econômico de firmas inframarginais | $(p^* - CTMe_j) \cdot q_j^*$ |
| Excedente do consumidor | Área entre demanda e preço | $EC = \int_0^{Q^*} p^d(Q)\, dQ - p^* Q^*$ |
| Excedente do produtor | Área entre preço e oferta | $EP = p^* Q^* - \int_0^{Q^*} CMg(Q)\, dQ$ |
| Incidência tributária | Divisão da carga conforme elasticidades | $\text{Fração}_C = \varepsilon_S / (\varepsilon_S + |\varepsilon_D|)$ |
| Perda de peso morto | Excedente destruído por distorção | $PPM \approx \frac{1}{2} \frac{|\varepsilon_D| \varepsilon_S}{|\varepsilon_D| + \varepsilon_S} \frac{t^2}{p^*} Q^*$ |

---

## ✏️ Exercícios

!!! exercicio-proposto "Exercício 13.1 — Equilíbrio, excedentes e imposto" {#ex-13-1}
    Considere um mercado com 100 consumidores idênticos, cada um com demanda individual $q_d = 20 - 2p$, e 50 firmas idênticas, cada uma com oferta individual $q_s = 4p - 10$ (para $p \geq 2{,}5$).

    **(a)** Derive a demanda de mercado e a oferta de mercado.

    **(b)** Calcule o preço e a quantidade de equilíbrio.

    **(c)** Calcule o excedente do consumidor e o excedente do produtor.

    **(d)** Se o governo impõe um imposto específico de $t = 2$ por unidade sobre os produtores, calcule o novo preço pago pelo consumidor ($p_c$), o preço recebido pelo produtor ($p_p$), a nova quantidade, a receita tributária e a perda de peso morto.

    [Solução](../solucoes/cap13.md#ex-13-1)

!!! exercicio-proposto "Exercício 13.2 — Teto de preço e racionamento" {#ex-13-2}
    Um mercado tem demanda $Q_D = 1000 - 50p$ e oferta $Q_S = 25p - 200$.

    **(a)** Calcule o equilíbrio competitivo.

    **(b)** O governo impõe um preço máximo de $\bar{p} = 10$. Calcule a escassez e a perda de peso morto.

    **(c)** Compare o excedente do consumidor antes e depois do teto (assumindo racionamento eficiente). Todos os consumidores ganham com o teto?

    [Solução](../solucoes/cap13.md#ex-13-2)

!!! exercicio-proposto "Exercício 13.3 — Imposto *ad valorem* e incidência" {#ex-13-3}
    Mostre que as fórmulas de incidência tributária para um imposto *ad valorem* (alíquota $\tau$, onde $p_c = (1+\tau)p_p$) são idênticas às de um imposto específico. Isto é, a fração da carga arcada pelo consumidor é $\varepsilon_S / (\varepsilon_S + |\varepsilon_D|)$ independentemente de o imposto ser específico ou *ad valorem*.

    *Dica:* Diferencie a condição de equilíbrio $Q_D(p_c) = Q_S(p_p)$ sujeita a $p_c = (1+\tau)p_p$.

    [Solução](../solucoes/cap13.md#ex-13-3)

!!! exercicio-proposto "Exercício 13.4 — Renda ricardiana em indústria de custos crescentes" {#ex-13-4}
    Considere uma indústria de custos crescentes cuja curva de oferta de longo prazo é $p = 10 + 0{,}01Q$ (refletindo o aumento do preço de insumos à medida que a indústria se expande). A demanda é $Q = 2000 - 50p$.

    **(a)** Calcule o equilíbrio de longo prazo (preço e quantidade).

    **(b)** Calcule o excedente do produtor de longo prazo (renda ricardiana total da indústria).

    **(c)** Se a demanda se desloca para $Q' = 2500 - 50p$, calcule o novo equilíbrio e a variação na renda ricardiana.

    *Interprete economicamente o resultado à luz do boom de commodities brasileiro.*

    [Solução](../solucoes/cap13.md#ex-13-4)

!!! exercicio-proposto "Exercício 13.5 — Subsídio e elasticidades: o caso do diesel" {#ex-13-5}
    O governo brasileiro avalia um subsídio de R\$ 0,30 por litro de diesel. Suponha que a elasticidade-preço da demanda por diesel é $\varepsilon_D = -0{,}3$ e a elasticidade-preço da oferta é $\varepsilon_S = 2{,}0$.

    **(a)** Que fração do subsídio será capturada pelos consumidores e que fração pelos produtores?

    **(b)** Discuta as implicações dessa política em termos de distribuição e eficiência.

    **(c)** Calcule a perda de peso morto aproximada do subsídio.

    [Solução](../solucoes/cap13.md#ex-13-5)

!!! exercicio-proposto "Exercício 13.6 — Análise completa de subsídio" {#ex-13-6}
    Um mercado tem demanda $Q_D = 300 - 5p$ e oferta $Q_S = 3p - 60$.

    **(a)** Calcule o equilíbrio competitivo.

    **(b)** Calcule EC e EP.

    **(c)** O governo introduz um subsídio de $s = 8$ por unidade ao produtor. Calcule o novo equilíbrio ($p_c$, $p_p$, $Q_s$).

    **(d)** Calcule o custo total do subsídio para o governo, os novos EC e EP, e a perda de peso morto. Interprete.

    [Solução](../solucoes/cap13.md#ex-13-6)

!!! exercicio-proposto "Exercício 13.7 — Café orgânico brasileiro e choque de demanda internacional" {#ex-13-7}
    O mercado de café orgânico certificado no Brasil tem demanda doméstica $Q_D = 80 - 0{,}5p$ e oferta $Q_S = 0{,}3p - 16$ (quantidades em mil toneladas, preço em R\$/kg).

    **(a)** Calcule o equilíbrio inicial.

    **(b)** Uma onda de demanda internacional por produtos orgânicos desloca a demanda para $Q_D' = 104 - 0{,}5p$. Calcule o novo equilíbrio e a variação percentual de preço e quantidade.

    **(c)** Calcule a variação do excedente do consumidor doméstico e do excedente do produtor.

    **(d)** Discuta como a elasticidade de oferta de curto prazo (cafezais demoram 3–4 anos para maturar) afeta a magnitude dos efeitos sobre preço e quantidade.

    [Solução](../solucoes/cap13.md#ex-13-7)

!!! exercicio-proposto "Exercício 13.8 — Incidência, elasticidades e Ramsey" {#ex-13-8}
    Em um mercado com $p^* = 50$, $Q^* = 200$, $\varepsilon_D = -0{,}6$ e $\varepsilon_S = 1{,}4$:

    **(a)** Calcule a fração do imposto arcada pelo consumidor e pelo produtor.

    **(b)** Se o governo impõe um imposto específico de $t = 5$, calcule $p_c$ e $p_p$.

    **(c)** Calcule a perda de peso morto.

    **(d)** Refaça os itens (a)–(c) com $\varepsilon_D = -2{,}0$ (mantendo $\varepsilon_S = 1{,}4$). Compare a PPM nos dois cenários e explique a relação com o Princípio de Ramsey.

    [Solução](../solucoes/cap13.md#ex-13-8)

!!! exercicio-proposto "Exercício 13.9 — Controle de aluguel vs. transferência *lump-sum*" {#ex-13-9}
    O mercado de aluguel de uma cidade tem demanda $Q_D = 500 - 0{,}2p$ e oferta $Q_S = 0{,}3p - 100$ (quantidades em mil imóveis, preço em R\$/mês).

    **(a)** Calcule o equilíbrio competitivo.

    **(b)** A prefeitura impõe um teto de aluguel de R\$ 1.000/mês. Calcule a escassez e a quantidade efetivamente alugada.

    **(c)** Calcule a perda de peso morto do controle de aluguel. Faça o diagrama.

    **(d)** Compare o controle de aluguel com uma política alternativa: transferência *lump-sum* de R\$ 200/mês para famílias de baixa renda. Analise: (i) custo para o governo, (ii) quantidade de imóveis alugados, (iii) eficiência (PPM), (iv) equidade distributiva.

    [Solução](../solucoes/cap13.md#ex-13-9)

!!! exercicio-proposto "Exercício 13.10 — Heterogeneidade de firmas e renda ricardiana" {#ex-13-10}
    Uma indústria tem dois tipos de firmas. Tipo A (40 firmas): $C_A(q) = 10 + 2q + q^2$. Tipo B (60 firmas): $C_B(q) = 20 + 4q + 0{,}5q^2$. A demanda de mercado é $Q_D = 500 - 10p$.

    **(a)** Derive a oferta individual de cada tipo de firma (atenção ao ponto de fechamento).

    **(b)** Calcule a oferta agregada e o equilíbrio de mercado de curto prazo.

    **(c)** Calcule a produção e o lucro de cada tipo de firma no equilíbrio de curto prazo. Qual tipo obtém renda ricardiana?

    **(d)** No longo prazo, há livre entrada de firmas tipo B (mas as 40 firmas tipo A são únicas — possuem um recurso não replicável). Calcule o equilíbrio de longo prazo: preço, quantidade, número de firmas tipo B, e renda ricardiana das firmas tipo A.

    [Solução](../solucoes/cap13.md#ex-13-10)

---

## 🎯 Questões ANPEC

!!! question "ANPEC 2019 — Questão 5"
    Classifique as afirmações como verdadeiras (V) ou falsas (F):

    **(0)** Em um mercado competitivo com curvas de oferta e demanda lineares, a imposição de um imposto específico de valor $t$ gera uma perda de peso morto proporcional a $t^2$.

    **(1)** Se a demanda por um bem é perfeitamente inelástica, um imposto sobre os produtores é integralmente repassado aos consumidores.

    **(2)** Em uma indústria de custos constantes em concorrência perfeita, a curva de oferta de longo prazo é horizontal, e um aumento permanente da demanda eleva a quantidade de equilíbrio sem alterar o preço.

    **(3)** A renda ricardiana existe no longo prazo porque firmas com acesso a fatores escassos têm custos menores que a firma marginal, mas essa renda é eliminada se imputarmos o custo de oportunidade do fator escasso.

    **(4)** Um teto de preço abaixo do equilíbrio sempre reduz o excedente do consumidor agregado.

    ??? note "Gabarito e resolução"
        **(0) V.** A PPM é aproximadamente $\frac{1}{2} t \Delta Q$, e $\Delta Q$ é proporcional a $t$ (para curvas lineares), logo $PPM \propto t^2$. ✅

        **(1) V.** Com demanda perfeitamente inelástica ($\varepsilon_D = 0$), $\text{Fração}_C = \varepsilon_S / (\varepsilon_S + 0) = 1$. O consumidor arca com 100% do imposto. ✅

        **(2) V.** Em indústria de custos constantes, $p_{LP} = CTMe_{\min}$ independentemente de $m$. A oferta de longo prazo é horizontal. ✅

        **(3) V.** A renda ricardiana é lucro quando medida com custos históricos, mas desaparece quando se imputa o custo de oportunidade do fator escasso (a terra, o talento, a patente). O proprietário do fator captura a renda. ✅

        **(4) F.** O teto pode aumentar o EC *se* o racionamento for eficiente (consumidores de alta disposição a pagar conseguem comprar). A transferência de excedente do produtor ao consumidor pode dominar a perda por racionamento. O resultado é ambíguo — depende de quem é racionado. ❌

!!! question "ANPEC 2023 — Questão 4 (adaptada)"
    Considere o mercado de petróleo, com demanda mundial $Q_D = 100 - 0{,}5p$ e oferta $Q_S = 0{,}3p - 20$ (em milhões de barris/dia, preço em US\$/barril).

    **(0)** O preço de equilíbrio é US\$ 150/barril.

    **(1)** Um embargo que reduza a oferta em 10 milhões de barris/dia (nova oferta: $Q_S' = 0{,}3p - 30$) eleva o preço para US\$ 162,50/barril.

    **(2)** A perda de peso morto do embargo é maior quanto mais inelásticas forem a oferta e a demanda.

    **(3)** Se simultaneamente ao embargo houver uma inovação tecnológica que reduza a demanda em 8 milhões de barris/dia ($Q_D' = 92 - 0{,}5p$), o efeito líquido sobre o preço é uma elevação de US\$ 2,50.

    **(4)** No longo prazo, a elasticidade de oferta de petróleo é maior que no curto prazo, o que implica que o efeito do embargo sobre o preço será menor no longo prazo.

    ??? note "Gabarito e resolução"
        Equilíbrio original: $100 - 0{,}5p = 0{,}3p - 20 \implies 0{,}8p = 120 \implies p^* = 150$, $Q^* = 25$.

        **(0) V.** $p^* = 150$. ✅

        **(1) V.** Nova oferta: $0{,}3p - 30$. Equilíbrio: $100 - 0{,}5p = 0{,}3p - 30 \implies 0{,}8p = 130 \implies p = 162{,}50$. ✅

        **(2) F.** A PPM depende da *variação de quantidade*, que é menor quando as elasticidades são baixas. Com elasticidades baixas, o choque se traduz mais em preço e menos em quantidade, e o "triângulo" de PPM é menor. ❌

        **(3) V.** Com ambos os choques: $92 - 0{,}5p = 0{,}3p - 30 \implies 0{,}8p = 122 \implies p = 152{,}50$. Variação: $152{,}50 - 150 = +2{,}50$. ✅

        **(4) V.** No longo prazo, investimentos em exploração e energias alternativas tornam a oferta mais elástica, atenuando o efeito do embargo sobre o preço. ✅

!!! question "ANPEC 2021 — Questão 3 (adaptada)"
    Classifique como V ou F:

    **(0)** Em equilíbrio competitivo de longo prazo com livre entrada, o excedente do produtor é zero.

    **(1)** A curva de oferta de longo prazo de uma indústria de custos decrescentes é negativamente inclinada.

    **(2)** Se o governo impõe um imposto sobre os produtores e depois muda para cobrar o mesmo imposto dos consumidores, o preço de equilíbrio pago pelo consumidor se altera.

    **(3)** A estabilidade do equilíbrio walrasiano requer que $dX/dp - dS/dp < 0$.

    **(4)** No curtíssimo prazo (período de mercado), choques de demanda afetam apenas o preço, não a quantidade.

    ??? note "Gabarito e resolução"
        **(0) F.** O *lucro econômico* é zero, mas o excedente do produtor (área entre preço e curva de oferta de curto prazo) pode ser positivo — ele remunera os custos fixos e a renda ricardiana de firmas inframarginais. ❌

        **(1) V.** Se a entrada de firmas reduz custos (economias externas), a oferta de longo prazo é negativamente inclinada. ✅

        **(2) F.** A incidência econômica é independente da incidência legal. O preço pago pelo consumidor e o recebido pelo produtor são os mesmos nos dois casos. ❌

        **(3) V.** Essa é a condição de estabilidade walrasiana: excesso de demanda decrescente no preço. ✅

        **(4) V.** No curtíssimo prazo, $S = \bar{Q}$ (oferta fixa), e todo ajuste ocorre via preço. ✅
