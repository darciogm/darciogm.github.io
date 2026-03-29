# 12.2–12.3 Maximização de Lucro, Receita Marginal e Elasticidade

## 12.2 O GPS do Empresário: Maximização de Lucro {#122}

Muito bem, a firma quer lucro. Mas querer não basta — ela precisa de um GPS para chegar lá. Quais são as regras práticas que dizem "produza *exatamente* esta quantidade"? E como ter certeza de que chegamos ao topo da montanha e não ao fundo do vale? As condições de primeira e segunda ordem são esse GPS. A CPO conecta-se diretamente às funções de custo derivadas no Capítulo 11: o custo marginal \(\mathrm{CMg}(q) = C'(q)\) é o mesmo objeto que caracterizou a curva de oferta de curto prazo, e agora aparece como o lado direito da condição de otimalidade. A CSO, por sua vez, está ligada à convexidade do custo marginal — que, como vimos no Capítulo 11, decorre dos rendimentos marginais decrescentes dos fatores.[^rmg-cmg-confissao]

[^rmg-cmg-confissao]: Confissão de autor: na primeira vez que resolvi RMg = CMg numa prova, encontrei um *mínimo* de lucro e perdi meio ponto. A CSO existe por um motivo — e esse motivo sou eu, em 2003, achando que bastava igualar derivadas. Não basta. Verifique *sempre* que o CMg cruza o RMg de baixo para cima.

### Condições de primeira ordem

A firma escolhe \(q\) para maximizar:

\[
\pi(q) = p(q) \cdot q - C(q) = RT(q) - CT(q)
\]

onde \(p(q)\) é a função de demanda inversa (no caso de tomadora de preços, \(p\) é constante).

A condição de primeira ordem (CPO) é:

\[
\frac{d\pi}{dq} = \frac{dRT}{dq} - \frac{dCT}{dq} = 0 \implies \mathrm{RMg}(q) = \mathrm{CMg}(q)
\label{eq:12.2} \tag{12.2}
\]

!!! theorem "Regra de maximização de lucro"
    A firma maximiza lucro produzindo a quantidade \(q^*\) em que a **receita marginal** iguala o **custo marginal**:

    \[
    \mathrm{RMg}(q^*) = \mathrm{CMg}(q^*)
    \label{eq:12.3} \tag{12.3}
    \]

!!! idea "Intuição Econômica"
    **Em uma frase:** A firma produz até o ponto em que o ganho da próxima unidade vendida empata com o custo de produzi-la.

    **Pense assim:** Pense em uma barraquinha de açaí na praia. Cada copo extra rende R$ 10, mas o custo dos insumos vai subindo (mais polpa, mais gelo, mais copos). Enquanto o próximo copo custar menos de R$ 10 para fazer, vale a pena produzir. Quando o custo do próximo copo alcançar R$ 10, é hora de parar. Esse é o ponto em que receita marginal iguala custo marginal.

    **Por que isso importa:** A regra RMg = CMg é a bússola de qualquer decisão de produção — de uma microempresa a uma multinacional — e é a base da construção da curva de oferta.

!!! idea "Intuição Econômica"
    **P = CMg: produzir até a última unidade se pagar**

    Para uma firma tomadora de preços, a regra se simplifica para \(p = \mathrm{CMg}(q^*)\). A intuição é cirúrgica: cada unidade produzida deve justificar o seu próprio custo. Se a última unidade custa R$ 8 para ser produzida e vende por R$ 10, produza. Se a próxima custaria R$ 12 e ainda vende por R$ 10, não produza. O ponto de equilíbrio é exatamente onde o custo da unidade marginal se iguala ao preço que o mercado paga por ela. Isso não é apenas uma condição matemática — é o princípio do custo de oportunidade aplicado à margem: todo recurso empregado na última unidade tem um uso alternativo cujo valor é exatamente o preço de mercado.

    **Exemplo concreto:** Uma sojicultora do Mato Grosso que planta em solos de qualidade decrescente enfrenta custo marginal crescente. Com soja a R$ 120/saca, ela planta até o ponto em que o custo de produzir mais uma saca na terra marginal atinge R$ 120. Expandir além disso destrói valor; retrair deixa lucro na mesa.

!!! warning "Cuidado"
    **P = CMg é necessário, mas não suficiente para maximização de lucro**

    A condição de primeira ordem \(p = \mathrm{CMg}(q)\) identifica *candidatos* ao ótimo — pontos em que a derivada do lucro é zero. Mas há duas armadilhas frequentes:

    1. **Mínimo disfarçado de máximo:** Se na solução da CPO o custo marginal está *decrescente* (CMg' < 0), a condição \(\pi''(q^*) = \mathrm{RMg}' - \mathrm{CMg}' > 0\) indica um *mínimo* de lucro, não máximo. Graficamente, o CMg cruza o preço de cima para baixo — e não de baixo para cima.

    2. **Solução de canto:** O máximo de lucro pode estar em \(q = 0\) (firma fecha) se \(p < \mathrm{CVMe}_{\min}\), mesmo que exista um ponto interior onde CPO é satisfeita.

    **Regra mnemônica — CSO (Condição Suficiente de Ordem 2):** Para que \(q^*\) seja um máximo local de lucro, é preciso que \(\mathrm{CMg}'(q^*) > \mathrm{RMg}'(q^*)\), ou seja, o CMg deve estar *subindo* mais rápido do que o RMg no ponto ótimo. Em concorrência perfeita (\(\mathrm{RMg}' = 0\)), isso se reduz simplesmente a \(\mathrm{CMg}'(q^*) > 0\): o custo marginal deve ser crescente no ótimo.

<iframe src="/micro-book/graficos/cap12/webr-max-lucro.html" title="WebR — Maximização de Lucro" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 12.1 — Maximização de lucro: \(p = \mathrm{CMg}\).** O código resolve a CPO, verifica a CSO, avalia a decisão de operar e plota as curvas de custo com o ponto ótimo. Altere o preço `p` para ver os três regimes: lucro positivo, prejuízo com operação e fechamento.
</div>

### Condição de segunda ordem

Para que \(q^*\) seja um máximo (e não um mínimo), exige-se:

\[
\frac{d^2\pi}{dq^2}\bigg|_{q=q^*} < 0 \implies \frac{d\mathrm{RMg}}{dq}\bigg|_{q^*} < \frac{d\mathrm{CMg}}{dq}\bigg|_{q^*}
\label{eq:12.4} \tag{12.4}
\]

A condição de segunda ordem $\eqref{eq:12.4}$ exige que, na quantidade ótima, o custo marginal cresça **mais rapidamente** que a receita marginal. Graficamente, o CMg deve cruzar o RMg **de baixo para cima**. Essa condição é frequentemente negligenciada na resolução de exercícios, mas é essencial: se o CMg cruzar o RMg de cima para baixo, o ponto corresponde a um *mínimo* de lucro, não a um máximo. Em provas da ANPEC, a condição de segunda ordem é cobrada com frequência, especialmente quando a função de custo ou de demanda é não linear. Note que a CSO está ligada diretamente às propriedades da função custo derivadas no Capítulo 11: quando a tecnologia exibe rendimentos decrescentes de escala no produto relevante, o CMg é crescente, o que garante automaticamente a CSO para a firma tomadora de preços. É por isso que a suposição de rendimentos decrescentes (ou custos marginais crescentes) é tão central para a teoria da oferta competitiva — sem ela, o problema de maximização de lucro pode não ter solução interior (como explorado no Exercício 12.3).

### Maximização de lucro com dois insumos

Alternativamente, a firma pode escolher diretamente as quantidades de insumos. O problema é:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - vK
\]

As condições de primeira ordem são:

\[
p \cdot f_L = w \implies \text{VPMg}_L = w
\label{eq:12.5} \tag{12.5}
\]

\[
p \cdot f_K = v \implies \text{VPMg}_K = v
\]

onde \(\text{VPMg}\) é o **valor do produto marginal**. Cada insumo deve ser empregado até o ponto em que o valor de sua contribuição marginal ao produto iguala seu preço. Em termos concretos: a firma contrata trabalhadores enquanto o valor do que cada trabalhador adicional produz (\(p \cdot f_L\)) superar o salário que ela precisa pagar (\(w\)). No ponto ótimo, o último trabalhador contratado gera receita adicional exatamente igual ao seu salário — e o mesmo vale para o capital.

Esse resultado conecta-se diretamente à teoria da distribuição funcional da renda: em equilíbrio competitivo, cada fator recebe o valor do seu produto marginal. A parcela do trabalho no PIB — objeto de intenso debate na macroeconomia desde os resultados de Karabarbounis e Neiman (2014) sobre a queda secular dessa parcela — é, nessa perspectiva teórica, o resultado agregado de milhares de decisões de contratação em que cada firma satisfaz a condição \(p \cdot f_L = w\). No Brasil, pesquisas usando dados da RAIS (Relação Anual de Informações Sociais) e de firmas do IBGE têm documentado como choques de preços de produtos e de salários afetam a demanda por trabalho exatamente como prevê o modelo do valor do produto marginal — embora com ajustamentos mais lentos do que o modelo estático sugere.

---

## 12.3 O Balde Furado da Receita: Receita Marginal e Elasticidade {#123}

A regra "RMg = CMg" é linda, mas esconde uma assimetria traiçoeira no lado da receita. Para a firma tomadora de preços, a vida é simples: cada unidade extra rende exatamente o preço de mercado, sem drama. Já para a firma com poder de mercado, vender mais é como encher um balde furado — colocar uma unidade extra na prateleira exige *baixar o preço de todas as outras*, e essa "conta-gotas de receita perdida" torna a receita marginal menor que o preço. A relação entre receita marginal e elasticidade-preço da demanda, que derivamos a seguir, é uma das mais úteis de toda a microeconomia, pois conecta a decisão de produção da firma à sensibilidade dos consumidores ao preço. Essa relação é o elo central entre os capítulos 12 e 15: quando chegarmos ao monopólio, a fórmula \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) será a chave para derivar o markup de Lerner e quantificar a ineficiência do poder de mercado. Antes de chegar lá, é útil notar que a distinção entre firma tomadora de preços e firma com poder de mercado não é binária — ela é um espectro parametrizado pela elasticidade da demanda individual da firma, que por sua vez depende da estrutura do mercado estudada nos Capítulos 13 a 15.

<iframe src="/micro-book/graficos/cap12/receita-marginal.html" title="Figura 12.1 — Receita marginal, demanda e elasticidade" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 12.1 — Receita marginal, demanda e elasticidade.** A curva de RMg tem o dobro da inclinação da demanda linear. O ponto verde marca onde \(\mathrm{RMg} = 0\) (elasticidade unitária). Mova o slider \(q\) para ver a relação \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) em cada ponto.
</div>

### Receita marginal

A **receita total** é \(RT = p(q) \cdot q\). A **receita marginal** é:

\[
\mathrm{RMg} = \frac{dRT}{dq} = p + q \frac{dp}{dq}
\label{eq:12.6} \tag{12.6}
\]

Para uma firma **tomadora de preços** (mercado perfeitamente competitivo), \(dp/dq = 0\), logo \(\mathrm{RMg} = p\).

Para uma firma com **poder de mercado**, \(dp/dq < 0\), logo \(\mathrm{RMg} < p\).

### Relação entre RMg e elasticidade-preço da demanda

!!! definition "Receita marginal e elasticidade"
    A receita marginal pode ser expressa em função da elasticidade-preço da demanda \(\varepsilon_d\) (definida como negativa, i.e., \(\varepsilon_d < 0\)):

    \[
    \mathrm{RMg} = p\left(1 + \frac{1}{\varepsilon_d}\right) = p\left(1 - \frac{1}{|\varepsilon_d|}\right)
    \label{eq:12.7} \tag{12.7}
    \]

A derivação é direta:

\[
\mathrm{RMg} = p + q\frac{dp}{dq} = p\left(1 + \frac{q}{p}\frac{dp}{dq}\right) = p\left(1 + \frac{1}{\varepsilon_d}\right)
\]

onde \(\varepsilon_d = \frac{dq}{dp} \cdot \frac{p}{q}\) é a elasticidade-preço da demanda.

**Implicações:**

- Se \(|\varepsilon_d| > 1\) (demanda elástica): \(\mathrm{RMg} > 0\) — aumentar a produção eleva a receita total.
- Se \(|\varepsilon_d| = 1\) (elasticidade unitária): \(\mathrm{RMg} = 0\) — receita total é máxima.
- Se \(|\varepsilon_d| < 1\) (demanda inelástica): \(\mathrm{RMg} < 0\) — aumentar a produção reduz a receita total.

!!! note "Implicação para precificação"
    Uma firma maximizadora de lucro com poder de mercado **nunca** opera na porção inelástica da curva de demanda (onde \(|\varepsilon_d| < 1\)), pois nessa região \(\mathrm{RMg} < 0\), enquanto \(\mathrm{CMg} > 0\). Reduzir a produção elevaria simultaneamente a receita e reduziria os custos, aumentando o lucro. Esse resultado tem uma implicação prática direta: se um monopolista está operando na região inelástica, ele não está maximizando lucro — um diagnóstico útil em análises de regulação e defesa da concorrência.

O **índice de Lerner**, definido como

\[
L = \frac{p - \mathrm{CMg}}{p} = -\frac{1}{\varepsilon_d}
\]

mede o grau de poder de mercado da firma: varia de zero (concorrência perfeita, \(|\varepsilon_d| \to \infty\)) até valores próximos de um (monopolista com demanda muito inelástica). No Brasil, o Conselho Administrativo de Defesa Econômica (CADE) utiliza métricas derivadas do índice de Lerner em análises de atos de concentração e casos de conduta anticompetitiva. Setores com índice de Lerner elevado — como telecomunicações, distribuição de energia e combustíveis — são objeto de regulação econômica específica, pois o markup sobre o custo marginal representa uma transferência de renda do consumidor para o produtor que excede a compensação pela remuneração normal do capital.

??? exercicio-resolvido "Exercício Resolvido 12.1 — Receita marginal, elasticidade e markup"
    **Enunciado:** Um monopolista enfrenta a demanda \(p = 100 - 2q\) e tem custo marginal constante \(\mathrm{CMg} = 20\). Determine a quantidade e o preço de maximização de lucro, a elasticidade-preço da demanda no ponto ótimo e o índice de Lerner.

    **Dados:** \(p(q) = 100 - 2q\); \(\mathrm{CMg} = 20\).

    **Resolução:**

    **Passo 1 — Receita marginal**
    \[
    RT = p \cdot q = (100 - 2q)q = 100q - 2q^2 \implies \mathrm{RMg} = 100 - 4q
    \]

    **Passo 2 — Quantidade e preço ótimos**
    \[
    \mathrm{RMg} = \mathrm{CMg} \implies 100 - 4q = 20 \implies q^* = 20
    \]
    \[
    p^* = 100 - 2(20) = 60
    \]

    **Passo 3 — Elasticidade no ponto ótimo**

    A elasticidade-preço da demanda é \(\varepsilon_d = \frac{dq}{dp}\cdot\frac{p}{q}\). Da demanda inversa, \(dq/dp = -1/2\), logo:

    \[
    \varepsilon_d = -\frac{1}{2}\cdot\frac{60}{20} = -1{,}5
    \]

    Verificação: \(\mathrm{RMg} = p\left(1 + \frac{1}{\varepsilon_d}\right) = 60\left(1 - \frac{1}{1{,}5}\right) = 60 \cdot \frac{1}{3} = 20 = \mathrm{CMg}\) ✓

    **Passo 4 — Índice de Lerner**
    \[
    L = \frac{p^* - \mathrm{CMg}}{p^*} = \frac{60 - 20}{60} = \frac{2}{3} \approx 0{,}67
    \]

    Pela relação teórica: \(L = \frac{1}{|\varepsilon_d|} = \frac{1}{1{,}5} = \frac{2}{3}\) ✓

    **Resultado:** \(q^* = 20\), \(p^* = 60\), \(|\varepsilon_d| = 1{,}5\), \(L = 2/3\).

    **Interpretação econômica:** O monopolista opera na região elástica da demanda (\(|\varepsilon_d| = 1{,}5 > 1\)), confirmando o resultado teórico da Seção 12.3. O índice de Lerner de 0,67 indica poder de mercado substancial — o preço é três vezes o custo marginal. No Brasil, o [CADE](https://www.gov.br/cade) utiliza o índice de Lerner como uma das métricas para avaliar poder de mercado em análises de concentração.

<iframe src="/micro-book/graficos/cap12/webr-rmg-elasticidade.html" title="WebR — RMg, Elasticidade e Lerner" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 12.2 — Receita marginal, elasticidade e índice de Lerner.** O código compara monopolista vs. competitivo para uma demanda linear, calcula o DWL e plota RT junto com a elasticidade. Altere `CMg_c` e os parâmetros da demanda para ver como o markup e o peso morto respondem.
</div>
