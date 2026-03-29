# 1.7 Maximização de Lucro ao Vivo

## 1.7 A Firma Para Quando a Pizza Empata: Maximização de Lucro ao Vivo {#107}

Chega de filosofia — vamos ver um modelo em ação. A demonstração a seguir é o "Hello World" da microeconomia: a condição de maximização de lucro da firma competitiva. É simples, é elegante, e encapsula tudo o que discutimos até aqui: um agente com objetivo (lucro), uma restrição (tecnologia/custos), uma condição de ótimo (derivada igual a zero) e uma previsão testável (a curva de oferta). É também o primeiro exemplo de como o cálculo diferencial — ferramentas do Capítulo 2 — resolve problemas econômicos reais.

!!! theorem "Teorema: Condição de Primeira Ordem para Maximização de Lucro"
    Considere uma firma tomadora de preços (*price taker*) em um mercado competitivo. Se a firma produz uma quantidade positiva \(q^* > 0\) que maximiza seu lucro, então o preço de mercado deve ser igual ao custo marginal avaliado nessa quantidade:

    \[
    P = CMg(q^*)
    \]

    Além disso, a condição de segunda ordem exige que o custo marginal seja crescente nesse ponto.

!!! proof "Demonstração"

    O lucro da firma é dado por:

    \[
    \pi(q) = RT(q) - CT(q) = P \cdot q - CT(q) \label{eq:1.7.1} \tag{1.7.1}
    \]

    onde \(P\) é o preço de mercado (dado, exógeno para a firma competitiva), \(RT(q)\) é a receita total e \(CT(q)\) é o custo total.

    **Condição de primeira ordem (CPO):**

    Para que \(q^*\) seja um máximo interior, é necessário que a derivada do lucro em relação a \(q\) seja zero:

    \[
    \frac{d\pi}{dq}\bigg|_{q=q^*} = 0 \label{eq:1.7.2} \tag{1.7.2}
    \]

    \[
    \frac{d}{dq}\left[P \cdot q - CT(q)\right]\bigg|_{q=q^*} = 0
    \]

    \[
    P - \frac{dCT}{dq}\bigg|_{q=q^*} = 0
    \]

    \[
    \boxed{P = CMg(q^*)} \label{eq:1.7.3} \tag{1.7.3}
    \]

    onde \(CMg(q) = \frac{dCT}{dq}\) é o custo marginal.

    **Condição de segunda ordem (CSO):**

    Para que \(q^*\) seja de fato um **máximo** (e não um mínimo ou ponto de inflexão), a segunda derivada do lucro deve ser negativa:

    \[
    \frac{d^2\pi}{dq^2}\bigg|_{q=q^*} < 0 \label{eq:1.7.4} \tag{1.7.4}
    \]

    \[
    -\frac{d^2 CT}{dq^2}\bigg|_{q=q^*} < 0
    \]

    \[
    \frac{d^2 CT}{dq^2}\bigg|_{q=q^*} > 0 \implies \frac{dCMg}{dq}\bigg|_{q=q^*} > 0 \label{eq:1.7.5} \tag{1.7.5}
    \]

    Portanto, a condição de segunda ordem $\eqref{eq:1.7.5}$ exige que o **custo marginal seja crescente** no ponto ótimo. Geometricamente, a curva de oferta da firma corresponde ao trecho ascendente de sua curva de custo marginal. \(\blacksquare\)

<iframe src="/micro-book/graficos/cap01/maximizacao-lucro.html" title="Figura 1.4 — Maximização de lucro da firma competitiva" class="graph-iframe" style="height:620px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 1.4 — Maximização de lucro da firma competitiva.** Ajuste o preço \(P\) e observe como \(q^*\) se desloca ao longo da curva de custo marginal, confirmando que \(dq^*/dP > 0\) (oferta ascendente).
</div>

<iframe src="/micro-book/graficos/cap01/webr-maximizacao-lucro.html" title="WebR — Maximização de Lucro" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 1.2 — Maximização de lucro: CPO e CSO ao vivo.** Altere o preço P e veja q* mudar. O código verifica a CPO (P = CMg) e a CSO (d²π/dq² < 0). Se P cair abaixo de quanto, a firma tem prejuízo?
</div>

O que essa demonstração nos revela? Uma lógica de uma beleza quase desarmante: a firma continua produzindo enquanto "vale a pena" — isto é, enquanto vender mais uma unidade rende (\(P\)) mais do que custa (\(CMg\)). Ela para exatamente quando a última unidade "empata". A partir daí, produzir mais seria jogar dinheiro fora. É como comer em rodízio: você repete enquanto o prazer supera o desconforto. Na fatia de pizza em que os dois se igualam, você para. (Se for racional. Se não for, vem a Seção 8.1 para explicar por quê.)

Note um detalhe crucial: o custo fixo (\(50\), no Exercício Resolvido 1.3) *não aparece* na condição de ótimo. A firma decide quanto produzir olhando apenas para o custo *marginal* — os \(50\) já foram gastos e são irrecuperáveis. É a lógica dos *sunk costs*: custos passados não devem influenciar decisões futuras. O Black Knight do Monty Python, que continua lutando após perder os dois braços ("'Tis but a scratch!"), é o exemplo perfeito do agente que ignora essa regra — ele já investiu demais na luta para desistir, mesmo quando a decisão racional é parar.[^sunk-cost-knight]

[^sunk-cost-knight]: Em economia comportamental, a tendência a considerar custos irrecuperáveis nas decisões é chamada de *sunk cost fallacy*. Veremos isso em detalhe no Capítulo 8. O Black Knight, infelizmente, não cursou microeconomia.

Note como a demonstração segue precisamente o roteiro descrito na Seção 1.4: partimos de um objetivo (maximizar lucro), de uma restrição implícita (a tecnologia da firma, expressa na função de custo), resolvemos via condições de primeira e segunda ordem e chegamos a uma função de resposta — a curva de oferta. Este resultado será desenvolvido com muito mais detalhe nos Capítulos 10–12, onde estudaremos a teoria da firma em profundidade.

Note também que a demonstração ilustra o poder da estática comparativa: como \(CMg\) é crescente no ótimo, um aumento no preço \(P\) exige um aumento em \(q^*\) para restaurar a igualdade \(P = CMg\). Isso fundamenta a **lei da oferta** — a relação positiva entre preço e quantidade ofertada — como consequência lógica da otimização, não como uma hipótese ad hoc. A relação \(q^*(P)\), que associa a cada preço a quantidade ótima, é a **curva de oferta individual** da firma.

??? exercicio-resolvido "Exercício Resolvido 1.3 — Maximização de lucro e a condição \(P = CMg\)"

    **Enunciado.** Uma firma competitiva tem função de custo total \(CT(q) = 50 + 8q + 0{,}5q^2\). O preço de mercado é \(P = 28\).

    (a) Determine o custo marginal e o custo médio.

    (b) Encontre a quantidade que maximiza o lucro usando a condição \(P = CMg\).

    (c) Verifique a condição de segunda ordem.

    (d) Calcule o lucro máximo.

    (e) Identifique as variáveis exógenas e endógenas neste modelo.

    **Solução.**

    **(a)**

    \[
    CMg(q) = \frac{dCT}{dq} = 8 + q
    \]

    \[
    CMe(q) = \frac{CT(q)}{q} = \frac{50}{q} + 8 + 0{,}5q
    \]

    **(b)** Pela condição de primeira ordem (\(P = CMg\)):

    \[
    28 = 8 + q \implies q^* = 20
    \]

    **(c)** A condição de segunda ordem exige \(\dfrac{dCMg}{dq}\bigg|_{q^*} > 0\):

    \[
    \frac{dCMg}{dq} = 1 > 0 \quad \checkmark
    \]

    O custo marginal é crescente em todo o domínio, confirmando que \(q^* = 20\) é um máximo do lucro.

    **(d)**

    \[
    \pi^* = P \cdot q^* - CT(q^*) = 28 \times 20 - (50 + 8 \times 20 + 0{,}5 \times 400)
    \]

    \[
    \pi^* = 560 - 50 - 160 - 200 = 150
    \]

    **(e)** **Exógenas:** preço de mercado \(P\), parâmetros da função de custo (50, 8, 0,5). **Endógena:** quantidade ótima \(q^*\) (e, por consequência, o lucro \(\pi^*\)).

---

!!! box-brasil "Box Brasil — O Plano Real (1994): modelos econômicos em ação"

    O **Plano Real**, implementado em 1994, é um dos exemplos mais notáveis de aplicação prática de modelos econômicos na história brasileira. Diferentemente dos planos de estabilização anteriores (Cruzado, Bresser, Verão, Collor), que recorreram a congelamentos de preços e confiscos — medidas ad hoc, sem fundamentação teórica sólida —, o Plano Real foi desenhado com base em modelos formais de **expectativas racionais**, **teoria dos jogos** e **teoria monetária**.

    **O problema da inércia inflacionária.** O Brasil enfrentava uma inflação crônica que se autoalimentava: como os agentes esperavam inflação futura, reajustavam preventivamente seus preços, gerando a inflação que temiam. Modelos de expectativas mostravam que, em um equilíbrio com indexação generalizada, a inflação passada se projetava automaticamente para o futuro.

    **A solução da URV.** A equipe econômica, liderada por Pérsio Arida, André Lara Resende, Edmar Bacha, Pedro Malan e Gustavo Franco, concebeu a **Unidade Real de Valor (URV)** — uma moeda indexada ao dólar que funcionava como unidade de conta, enquanto o cruzeiro real continuava como meio de pagamento. O mecanismo pode ser compreendido como um **jogo de coordenação**: a URV permitiu que todos os agentes "sincronizassem" seus preços relativos em uma unidade estável antes da conversão para a nova moeda.

    **A teoria por trás da transição.** A ideia fundamental remonta à proposta "Larida" (Arida & Resende, 1985), inspirada em modelos de hiperinflação de Cagan e na teoria de reforma monetária. O modelo previa que, se fosse possível desindexar a economia de forma coordenada e crível, o nível de preços se estabilizaria sem necessidade de congelamento.

    **Resultados.** A inflação, que atingiu 2.477% nos 12 meses anteriores ao Real, caiu para cerca de 22% em 1995 e seguiu em trajetória descendente. O sucesso do plano ilustra como modelos econômicos bem construídos — mesmo sendo simplificações da realidade — podem orientar intervenções de política com resultados transformadores.

    Este caso demonstra a tese central deste capítulo: modelos são úteis não apesar de suas simplificações, mas *por causa* delas.

    **Fonte:** Arida, P.; Resende, A. L. (1985). Inertial Inflation and Monetary Reform in Brazil. In: Williamson, J. (ed.), *Inflation and Indexation: Argentina, Brazil and Israel*. MIT Press.

---

!!! box-brasil "Box Brasil — COPOM e os modelos de projeção da inflação"

    O **Comitê de Política Monetária (COPOM)** do Banco Central do Brasil decide, a cada 45 dias, a taxa básica de juros (**Selic**) com base em projeções geradas por modelos econômicos. O principal instrumento é o **SAMBA** (*Stochastic Analytical Model with a Bayesian Approach*), um modelo de equilíbrio geral dinâmico estocástico (DSGE) que representa a economia brasileira por meio de equações descrevendo o comportamento de famílias, firmas, governo e setor externo (Castro et al., 2015).

    **A lógica do modelo.** O SAMBA contém variáveis exógenas (choques de oferta, variações cambiais, preços internacionais de commodities) e variáveis endógenas (inflação, produto, taxa de juros). A partir de suposições sobre o comportamento otimizador dos agentes — exatamente como descrito na Seção 1.3 — e de uma regra de política monetária (regra de Taylor), o modelo projeta trajetórias de inflação 6 a 8 trimestres à frente.

    **Modelos como "mapas".** O BCB não utiliza apenas o SAMBA. Emprega também modelos semi-estruturais, VARs (vetores autorregressivos) e modelos de fatores. Cada modelo é um "mapa" diferente da mesma economia — como discutido na Seção 1.1, a escolha do modelo depende da pergunta: o SAMBA é útil para análise de política monetária, enquanto os VARs capturam melhor dinâmicas de curto prazo.

    **Verificação.** O BCB publica trimestralmente o *Relatório de Inflação*, no qual confronta suas projeções passadas com os dados realizados — um exercício de verificação indireta de seus modelos, exatamente no espírito da Seção 1.2. Quando as projeções se desviam sistematicamente da realidade, os modelos são recalibrados.

    Este caso ilustra que modelos econômicos não são exercícios acadêmicos abstratos: são ferramentas operacionais que orientam decisões com impacto direto sobre a vida de milhões de brasileiros.

---

Lembra da sobremesa? Aquele conflito interno — prazer agora vs. culpa depois — é, no fundo, um problema de otimização com restrição (mandamento 2), analisável isolando variáveis *ceteris paribus* (mandamento 1), e cuja "solução correta" depende de se estamos descrevendo o que você *faz* ou prescrevendo o que *deveria* fazer (mandamento 3).

Se este capítulo cumpriu sua missão, você saiu dele com três convicções:

1. **Modelos são mentiras úteis** — e a arte está em mentir bem (Seção 1.1). A pergunta nunca é "o modelo é realista?", mas "o modelo ilumina algo que eu não enxergava antes?".
2. **Tudo se resolve na margem** — desde o paradoxo de Smith até a decisão da firma sobre produzir mais uma unidade. A revolução marginalista (Seção 1.5) não foi apenas uma mudança de teoria; foi uma mudança de *forma de pensar*.
3. **A microeconomia é uma ciência viva** — não um museu de modelos embalsamados. De Card e Krueger questionando a predição clássica sobre salário mínimo (Box 1.1) à Nota Fiscal Paulista transformando consumidores em auditores (Pesquisa em Ação), a fronteira se move a cada paper publicado.

Nos próximos capítulos, vamos formalizar essa intuição — começando pelas ferramentas matemáticas que transformam dilemas de supermercado em equações resolúveis.

*No próximo capítulo: as ferramentas que transformam intuição em demonstração. (Aviso: vai ter derivada. Nobody expects the chain rule!)*
