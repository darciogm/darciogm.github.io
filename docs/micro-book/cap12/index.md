# Capítulo 12 — A Firma Nua: Anatomia do Lucro

Os capítulos anteriores construíram os dois pilares sobre os quais repousa a teoria da firma: a **tecnologia** (função de produção) e os **custos** (função custo). Neste capítulo, reunimos esses elementos para analisar o comportamento da firma como unidade de decisão. A questão central é: **como a firma escolhe quanto produzir?**

A resposta padrão da microeconomia — maximização de lucro — exige que examinemos as condições de primeira e segunda ordem, a relação entre receita marginal e elasticidade da demanda, a decisão de operar ou fechar no curto prazo e as propriedades da função lucro. O elegante Lema de Hotelling, análogo ao Lema de Shephard nos custos, conecta a função lucro diretamente às funções de oferta e demanda por insumos.

Mas antes de mergulhar na análise formal, vale perguntar: **por que existem firmas?** A resposta pioneira de Ronald Coase — custos de transação — permanece central e nos lembra que a "caixa-preta" da firma esconde uma rica estrutura organizacional. No contexto brasileiro, onde micro e pequenas empresas (MPEs) representam a esmagadora maioria dos negócios e enfrentam taxas de mortalidade empresarial elevadas, a teoria da firma ganha contornos particularmente concretos.

---

## 12.1 A Natureza e o Comportamento das Firmas

### Por que firmas existem?

!!! definition "Custos de transação (Coase)"
    Segundo **Ronald Coase** (1937), firmas existem porque a utilização do mecanismo de mercado (sistema de preços) envolve **custos de transação**: custos de busca, negociação, elaboração e execução de contratos. Quando esses custos são suficientemente elevados, torna-se mais eficiente organizar a produção dentro de uma firma — sob uma hierarquia administrativa — do que coordenar tudo via transações de mercado.

A firma, portanto, é uma resposta institucional à existência de custos de transação. Sua fronteira — isto é, quais atividades são realizadas internamente e quais são contratadas no mercado — é determinada pela comparação entre custos de transação e custos de organização interna. Esse insight simples mas profundo transforma a firma de uma "caixa-preta" que recebe insumos e produz outputs em uma instituição viva, cujas fronteiras se expandem ou se contraem conforme mudam as condições econômicas e regulatórias.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Firmas existem porque negociar tudo no mercado tem um custo — e às vezes sai mais barato resolver as coisas "dentro de casa".

    **Pense assim:** Imagine um dono de restaurante em São Paulo. Ele poderia, todo dia, ir à CEAGESP negociar preço de cada verdura com um fornecedor diferente. Mas o tempo gasto, o risco de levar gato por lebre e a burocracia dos contratos tornam mais eficiente ter um fornecedor fixo ou até uma horta própria. Essa é a lógica dos custos de transação.

    **Por que isso importa:** Entender custos de transação ajuda a explicar por que empresas como a JBS se integram verticalmente e por que políticas de simplificação burocrática (como o MEI) podem alterar a fronteira da firma.

**Oliver Williamson** (1975, 1985) expandiu a análise de Coase, identificando três atributos das transações que determinam a forma organizacional mais eficiente:

1. **Especificidade de ativos**: quando investimentos são específicos a uma relação (ex.: uma máquina que só serve para produzir um componente para um único cliente), o risco de comportamento oportunista (*hold-up*) favorece a integração vertical.
2. **Frequência**: transações recorrentes justificam estruturas de governança mais sofisticadas.
3. **Incerteza**: quanto maior a incerteza, mais difícil redigir contratos completos, favorecendo a organização interna.

!!! info "🏅 Prêmio Nobel — Ronald H. Coase (1991) e Oliver E. Williamson (2009)"

    **Ronald Harry Coase** (1910–2013) foi um economista britânico-americano. Formou-se na London School of Economics e foi professor na Universidade de Chicago por mais de quatro décadas.

    **Oliver Eaton Williamson** (1932–2020) foi um economista americano. Obteve o PhD no Carnegie Institute of Technology (atual CMU) e foi professor na UC Berkeley. Dividiu o Nobel de 2009 com Elinor Ostrom.

    **Por que ganharam o Nobel:**
    Coase foi premiado por descobrir e esclarecer o significado dos custos de transação e dos direitos de propriedade para a estrutura institucional da economia. Em *The Nature of the Firm* (1937), explicou por que firmas existem: quando os custos de transação no mercado excedem os custos de organização interna, a firma substitui o mecanismo de preços. Williamson estendeu essa análise, identificando os atributos das transações (especificidade de ativos, frequência, incerteza) que determinam se a governança ótima é via mercado, hierarquia ou formas híbridas.

    **Conexão com este capítulo:**
    A questão "por que firmas existem?" — ponto de partida deste capítulo — foi formulada por Coase e aprofundada por Williamson. A análise dos custos de transação como determinante das fronteiras da firma complementa a teoria neoclássica da produção e explica por que a firma não é apenas uma função de produção, mas uma instituição que economiza em custos de coordenação.

### O objetivo da firma: maximização de lucro

Na análise microeconômica padrão, assume-se que a firma busca **maximizar o lucro**:

\[
\pi = RT - CT = p \cdot q - C(q)
\]

Embora existam teorias alternativas — maximização de receita (Baumol), maximização da utilidade gerencial (Williamson), satisfação (*satisficing*, Simon) —, a maximização de lucro permanece como a hipótese de trabalho dominante por sua tratabilidade analítica e por gerar predições empiricamente testáveis. Cabe perguntar: essa hipótese é realista? Em empresas com separação entre propriedade e controle — como as grandes corporações listadas na B3 —, os gerentes podem perseguir seus próprios interesses em vez de maximizar o lucro dos acionistas. Contudo, a pressão competitiva nos mercados de produtos, o mercado de capitais e a ameaça de aquisição hostil tendem a disciplinar os gestores, aproximando o comportamento observado do modelo de maximização de lucro.

---

## 12.2 Maximização de Lucro

Tendo estabelecido que a maximização de lucro é o objetivo da firma, precisamos agora traduzir esse objetivo em condições operacionais. Quais são as regras práticas que uma firma deve seguir para encontrar a quantidade que maximiza seu lucro? E como verificar que se trata de fato de um máximo, e não de um mínimo? As condições de primeira e segunda ordem respondem a essas perguntas.

### Condições de primeira ordem

A firma escolhe \(q\) para maximizar:

\[
\pi(q) = p(q) \cdot q - C(q) = RT(q) - CT(q)
\]

onde \(p(q)\) é a função de demanda inversa (no caso de tomadora de preços, \(p\) é constante).

A condição de primeira ordem (CPO) é:

\[
\frac{d\pi}{dq} = \frac{dRT}{dq} - \frac{dCT}{dq} = 0 \implies \mathrm{RMg}(q) = \mathrm{CMg}(q)
\]

!!! abstract "Regra de maximização de lucro"
    A firma maximiza lucro produzindo a quantidade \(q^*\) em que a **receita marginal** iguala o **custo marginal**:

    \[
    \mathrm{RMg}(q^*) = \mathrm{CMg}(q^*)
    \]

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A firma produz até o ponto em que o ganho da próxima unidade vendida empata com o custo de produzi-la.

    **Pense assim:** Pense em uma barraquinha de açaí na praia. Cada copo extra rende R$ 10, mas o custo dos insumos vai subindo (mais polpa, mais gelo, mais copos). Enquanto o próximo copo custar menos de R$ 10 para fazer, vale a pena produzir. Quando o custo do próximo copo alcançar R$ 10, é hora de parar. Esse é o ponto em que receita marginal iguala custo marginal.

    **Por que isso importa:** A regra RMg = CMg é a bússola de qualquer decisão de produção — de uma microempresa a uma multinacional — e é a base da construção da curva de oferta.

### Condição de segunda ordem

Para que \(q^*\) seja um máximo (e não um mínimo), exige-se:

\[
\frac{d^2\pi}{dq^2}\bigg|_{q=q^*} < 0 \implies \frac{d\mathrm{RMg}}{dq}\bigg|_{q^*} < \frac{d\mathrm{CMg}}{dq}\bigg|_{q^*}
\]

Isto é, na quantidade ótima, o custo marginal deve crescer **mais rapidamente** que a receita marginal. Graficamente, o CMg deve cruzar o RMg **de baixo para cima**. Essa condição é frequentemente negligenciada na resolução de exercícios, mas é essencial: se o CMg cruzar o RMg de cima para baixo, o ponto corresponde a um *mínimo* de lucro, não a um máximo. Em provas da ANPEC, a condição de segunda ordem é cobrada com frequência, especialmente quando a função de custo ou de demanda é não linear.

### Maximização de lucro com dois insumos

Alternativamente, a firma pode escolher diretamente as quantidades de insumos. O problema é:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - vK
\]

As condições de primeira ordem são:

\[
p \cdot f_L = w \implies \text{VPMg}_L = w
\]

\[
p \cdot f_K = v \implies \text{VPMg}_K = v
\]

onde \(\text{VPMg}\) é o **valor do produto marginal**. Cada insumo deve ser empregado até o ponto em que o valor de sua contribuição marginal ao produto iguala seu preço. Em termos concretos: a firma contrata trabalhadores enquanto o valor do que cada trabalhador adicional produz (\(p \cdot f_L\)) superar o salário que ela precisa pagar (\(w\)). No ponto ótimo, o último trabalhador contratado gera receita adicional exatamente igual ao seu salário — e o mesmo vale para o capital.

---

## 12.3 Receita Marginal e Elasticidade

A condição de maximização de lucro — igualar receita marginal a custo marginal — requer que compreendamos em profundidade o lado da receita. Para uma firma tomadora de preços, a receita marginal é simplesmente o preço de mercado, e a análise é direta. Mas para firmas com poder de mercado — que enfrentam uma curva de demanda negativamente inclinada —, vender uma unidade a mais exige reduzir o preço de *todas* as unidades vendidas, o que torna a receita marginal menor que o preço. A relação entre receita marginal e elasticidade-preço da demanda, que derivamos a seguir, é uma das mais úteis de toda a microeconomia, pois conecta a decisão de produção da firma à sensibilidade dos consumidores ao preço.

<iframe src="../graficos/cap12/receita-marginal.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 12.1 — Receita marginal, demanda e elasticidade.** A curva de RMg tem o dobro da inclinação da demanda linear. O ponto verde marca onde \(\mathrm{RMg} = 0\) (elasticidade unitária). Mova o slider \(q\) para ver a relação \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) em cada ponto.
</div>

### Receita marginal

A **receita total** é \(RT = p(q) \cdot q\). A **receita marginal** é:

\[
\mathrm{RMg} = \frac{dRT}{dq} = p + q \frac{dp}{dq}
\]

Para uma firma **tomadora de preços** (mercado perfeitamente competitivo), \(dp/dq = 0\), logo \(\mathrm{RMg} = p\).

Para uma firma com **poder de mercado**, \(dp/dq < 0\), logo \(\mathrm{RMg} < p\).

### Relação entre RMg e elasticidade-preço da demanda

!!! definition "Receita marginal e elasticidade"
    A receita marginal pode ser expressa em função da elasticidade-preço da demanda \(\varepsilon_d\) (definida como negativa, i.e., \(\varepsilon_d < 0\)):

    \[
    \mathrm{RMg} = p\left(1 + \frac{1}{\varepsilon_d}\right) = p\left(1 - \frac{1}{|\varepsilon_d|}\right)
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

---

## 12.4 Oferta de Curto Prazo da Firma Tomadora de Preços

A relação entre receita marginal e elasticidade nos permite analisar firmas com poder de mercado. Voltemos agora ao caso competitivo — a firma tomadora de preços —, que é o alicerce da construção da curva de oferta. A pergunta central desta seção é: dada uma determinada estrutura de custos, para quais preços a firma decide produzir, e quanto? A resposta envolve não apenas a condição \(p = \mathrm{CMg}\), mas também uma decisão prévia e frequentemente negligenciada: a firma deve operar ou fechar as portas?

<iframe src="../graficos/cap12/maximizacao-lucro.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 12.2 — Maximização de lucro para firma tomadora de preços.** Ajuste o preço \(p\) e os parâmetros de custo. O gráfico mostra a quantidade ótima \(q^*\) onde \(p = \mathrm{CMg}\), o retângulo de lucro (ou prejuízo) sombreado e a condição de fechamento (\(p < \mathrm{CVMe}_{\min}\)).
</div>

### A decisão de produção no curto prazo

Para uma firma tomadora de preços (\(\mathrm{RMg} = p\)), a condição de maximização é \(p = \mathrm{CMg}(q)\). Contudo, essa condição não é suficiente — é preciso verificar se a firma deve **operar** ou **fechar**.

No curto prazo, a firma incorre em custos fixos independentemente de produzir ou não. Portanto:

- Se **opera**, o lucro é: \(\pi = p \cdot q - CV(q) - CF\)
- Se **fecha**, o lucro é: \(\pi = -CF\)

A firma deve operar se e somente se:

\[
p \cdot q - CV(q) - CF \geq -CF \implies p \cdot q \geq CV(q) \implies p \geq \mathrm{CVMe}(q)
\]

### Condições de oferta no curto prazo

| Condição de preço | Decisão | Lucro econômico |
|:---|:---|:---|
| \(p > \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Lucro positivo \((\pi > 0)\) |
| \(p = \mathrm{CMe}_{\min}\) | Produzir no ponto de lucro zero | Lucro zero (ponto de *break-even*) |
| \(\mathrm{CVMe}_{\min} < p < \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Prejuízo, mas menor que \(CF\) |
| \(p = \mathrm{CVMe}_{\min}\) | Indiferente entre operar e fechar | Prejuízo igual a \(CF\) (ponto de fechamento) |
| \(p < \mathrm{CVMe}_{\min}\) | Fechar (produção zero) | Prejuízo igual a \(CF\) |

<div class="caption-obj" markdown>
**Tabela 12.1 — Condições de oferta no curto prazo.**
</div>

!!! definition "Curva de oferta de curto prazo"
    A **curva de oferta de curto prazo** da firma tomadora de preços é o trecho da curva de custo marginal que está **acima** do custo variável médio mínimo:

    \[
    q^s(p) = \begin{cases} \mathrm{CMg}^{-1}(p) & \text{se } p \geq \mathrm{CVMe}_{\min} \\ 0 & \text{se } p < \mathrm{CVMe}_{\min} \end{cases}
    \]

!!! note "O excedente do produtor"
    O **excedente do produtor** no curto prazo é a diferença entre a receita total e o custo variável:

    \[
    EP = RT - CV = p \cdot q - CV(q) = \pi + CF
    \]

    Graficamente, é a área acima da curva de oferta (CMg) e abaixo do preço. O excedente do produtor é a medida apropriada de bem-estar do lado da oferta no curto prazo, pois mede a contribuição da produção para cobrir os custos fixos e gerar lucro.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Uma firma com prejuízo pode racionalmente continuar operando, desde que a receita cubra pelo menos os custos variáveis.

    **Pense assim:** Imagine um quiosque na praia que paga R$ 3.000 de aluguel por mês (custo fixo). Se fechar, perde os R$ 3.000 de qualquer jeito. Se abrir e faturar o suficiente para pagar funcionários, insumos e ainda sobrar R$ 500, é melhor abrir — mesmo com prejuízo. O aluguel já é "dinheiro perdido" no curto prazo. Fechar só vale a pena quando nem os custos variáveis se pagam.

    **Por que isso importa:** Essa lógica explica por que tantas MPEs brasileiras operam com prejuízo por meses antes de fechar — e por que o SEBRAE monitora a taxa de mortalidade empresarial nos primeiros cinco anos.

---

## 🇧🇷 Box Brasil: A Soja Brasileira e a Curva de Oferta em Ação

!!! example "🇧🇷 Box Brasil — Soja: quando o preço sobe, a área plantada responde"
    O Brasil é o maior produtor e exportador mundial de soja, e a evolução da área plantada nas últimas safras oferece uma demonstração empírica direta da **curva de oferta** derivada na Seção 12.4.

    **Dados da [CONAB](https://www.conab.gov.br) (Companhia Nacional de Abastecimento):**

    | Safra | Área plantada (milhões de ha) | Variação anual |
    |:---|:---|:---|
    | 2022/23 | 44,1 | — |
    | 2023/24 | 46,1 | +4,5% |
    | 2024/25 | 47,5 | +3,0% |
    | 2025/26 (est.) | 48,9 | +2,9% |

    Entre as safras 2022/23 e 2025/26, a área plantada expandiu cerca de **4,8 milhões de hectares** — equivalente a mais de duas vezes a área do estado de Sergipe. Essa expansão acompanhou um período de preços internacionais atrativos da soja, com a cotação em Chicago superando US$ 14/bushel em 2022.

    **Interpretação via teoria da firma**

    O produtor rural é, em boa aproximação, um **tomador de preços** (o preço é determinado em bolsa). Quando o preço da soja sobe acima do custo variável médio mínimo de terras marginais (cerrado ainda não convertido, áreas de segunda safra), a decisão de ofertar é racional: cada hectare adicional gera receita que supera o custo variável.

    No curto prazo, a oferta é relativamente inelástica — a safra já está plantada e a produção depende do clima. No longo prazo, porém, a resposta é substancial: abertura de novas áreas, conversão de pastagens, investimento em irrigação e tecnologia de sementes. A elasticidade-preço da oferta de longo prazo da soja brasileira é estimada entre 0,3 e 0,8, dependendo da região.

    A decisão de **fechar** também é observável: quando o preço cai abaixo do custo variável (como ocorreu em algumas regiões na safra 2023/24 devido a quebra climática e custos elevados de fertilizantes), produtores optam por não plantar a segunda safra — exatamente como prevê a condição \(p < \mathrm{CVMe}_{\min}\).

    **Fonte**: CONAB, Acompanhamento da Safra Brasileira de Grãos (2023–2026); [CEPEA/ESALQ](https://www.cepea.esalq.usp.br).

---

## 12.5 A Função Lucro e o Lema de Hotelling

No capítulo anterior, vimos como o Lema de Shephard permite recuperar as demandas condicionadas por insumos a partir da função custo. Existe um resultado análogo — e igualmente poderoso — no contexto da maximização de lucro? A resposta é o **Lema de Hotelling**, que mostra que a função lucro carrega em si toda a informação necessária para reconstruir as funções de oferta do produto e de demanda por insumos. Para chegar a esse resultado, precisamos primeiro definir e caracterizar a função lucro.

### A função lucro

!!! definition "Função lucro"
    A **função lucro** \(\pi(p, w, v)\) é o lucro máximo que a firma pode obter dados o preço do produto \(p\) e os preços dos insumos \(w\) e \(v\):

    \[
    \pi(p, w, v) = \max_{q} \{p \cdot q - C(w, v, q)\}
    \]

    ou, equivalentemente:

    \[
    \pi(p, w, v) = \max_{K, L} \{p \cdot f(K, L) - wL - vK\}
    \]

A função lucro possui propriedades notáveis:

1. **Não decrescente** em \(p\): um aumento no preço do produto nunca reduz o lucro máximo.
2. **Não crescente** em \(w\) e \(v\): um aumento no preço de qualquer insumo nunca aumenta o lucro máximo.
3. **Homogênea de grau 1** em \((p, w, v)\): se todos os preços (do produto e dos insumos) são multiplicados por \(t > 0\), o lucro máximo também é multiplicado por \(t\).
4. **Convexa** em \((p, w, v)\): a firma pode ajustar suas decisões em resposta a mudanças de preços, de modo que o lucro responde mais que proporcionalmente (é "mais sensível") a grandes mudanças de preços.

### Lema de Hotelling

!!! proof "Demonstração: Lema de Hotelling"
    **Enunciado.** Se \(\pi(p, w, v)\) é diferenciável, então:

    \[
    \frac{\partial \pi(p, w, v)}{\partial p} = q^*(p, w, v) \quad \text{(função de oferta)}
    \]

    \[
    \frac{\partial \pi(p, w, v)}{\partial w} = -L^*(p, w, v) \quad \text{(negativo da demanda por trabalho)}
    \]

    \[
    \frac{\partial \pi(p, w, v)}{\partial v} = -K^*(p, w, v) \quad \text{(negativo da demanda por capital)}
    \]

    **Demonstração.**
    Considere o problema de maximização de lucro com escolha de insumos:

    \[
    \pi(p, w, v) = \max_{K, L} \{p \cdot f(K, L) - wL - vK\}
    \]

    Seja \((K^*, L^*)\) a solução ótima. Defina a função objetivo como:

    \[
    g(K, L; p, w, v) = p \cdot f(K, L) - wL - vK
    \]

    Pelo **teorema da envoltória**, a derivada da função valor em relação a um parâmetro é igual à derivada parcial da função objetivo avaliada no ótimo:

    \[
    \frac{\partial \pi}{\partial p} = \frac{\partial g}{\partial p}\bigg|_{(K^*, L^*)} = f(K^*, L^*) = q^*
    \]

    \[
    \frac{\partial \pi}{\partial w} = \frac{\partial g}{\partial w}\bigg|_{(K^*, L^*)} = -L^*
    \]

    \[
    \frac{\partial \pi}{\partial v} = \frac{\partial g}{\partial v}\bigg|_{(K^*, L^*)} = -K^*
    \]

    **Verificação com Cobb-Douglas.** Para que a maximização de lucro tenha solução interior finita, a função de produção deve exibir retornos decrescentes de escala. Considere \(q = K^{1/3}L^{1/3}\) (\(\alpha + \beta = 2/3 < 1\)), com preços \((p, w, v)\). As CPOs são:

    \[
    \text{CPO}_L:\; \frac{p}{3}\,K^{1/3}L^{-2/3} = w, \qquad \text{CPO}_K:\; \frac{p}{3}\,K^{-2/3}L^{1/3} = v
    \]

    Dividindo \(\text{CPO}_K\) por \(\text{CPO}_L\): \(L/K = v/w\), logo \(L = (v/w)\,K\). Substituindo em \(\text{CPO}_K\):

    \[
    \frac{p}{3}\,K^{-2/3}\left(\frac{v}{w}\,K\right)^{1/3} = v \implies \frac{p}{3}\left(\frac{v}{w}\right)^{1/3} = v \cdot K^{1/3}
    \]

    \[
    K^{1/3} = \frac{p}{3\,v}\left(\frac{v}{w}\right)^{1/3} \implies K^* = \frac{p^3}{27\,v^3}\cdot\frac{v}{w} = \frac{p^3}{27\,v^2\,w}
    \]

    De forma análoga, \(L^* = \frac{p^3}{27\,w^2\,v}\). A produção ótima é:

    \[
    q^* = (K^*)^{1/3}(L^*)^{1/3} = \left(\frac{p^3}{27\,v^2 w}\right)^{1/3}\left(\frac{p^3}{27\,w^2 v}\right)^{1/3} = \frac{p^2}{9\,wv}
    \]

    O lucro máximo é \(\pi^* = p\,q^* - w\,L^* - v\,K^* = \frac{p^3}{9wv} - \frac{p^3}{27wv} - \frac{p^3}{27wv} = \frac{p^3}{27wv}\). Verificando o Lema:

    \[
    \frac{\partial \pi}{\partial p} = \frac{3p^2}{27wv} = \frac{p^2}{9wv} = q^* \;\checkmark \qquad \frac{\partial \pi}{\partial w} = -\frac{p^3}{27w^2 v} = -L^* \;\checkmark
    \]

    \(\blacksquare\)

    !!! note "Por que retornos constantes não funcionam"
        Com retornos constantes de escala (\(\alpha + \beta = 1\)), a função lucro é: zero se \(p = c(w,v)\); \(-\infty\) se \(p < c(w,v)\) (firma não produz); e \(+\infty\) se \(p > c(w,v)\) (firma quer produzir infinitamente). O problema de maximização não tem solução interior finita, e o Lema de Hotelling não se aplica. Por isso, a verificação numérica requer retornos decrescentes.

        **Nota:** A condição \(p^2 = 4wv\) é específica do caso simétrico \(\alpha = \beta = 1/2\). Para o caso geral \(\alpha + \beta = 1\), a condição de lucro zero é \(p = \kappa \cdot w^{\beta} \cdot v^{\alpha}\), onde \(\kappa = \alpha^{-\alpha}\beta^{-\beta}\) depende dos expoentes da função de produção.

!!! tip "Significado econômico do Lema de Hotelling"
    O Lema de Hotelling estabelece uma dualidade elegante: a partir da função lucro — que sintetiza toda a informação sobre tecnologia e preços — podemos recuperar tanto a **função de oferta** do produto quanto as **demandas por insumos**. Juntamente com o Lema de Shephard (capítulo anterior), forma o arcabouço dual da teoria da firma. A convexidade da função lucro implica que a oferta é não decrescente no preço do produto (lei da oferta) e que as demandas por insumos são não crescentes nos respectivos preços.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Conhecendo apenas o lucro máximo da firma em função dos preços, conseguimos deduzir quanto ela produz e quanto usa de cada insumo.

    **Pense assim:** É como se você olhasse apenas o extrato bancário de um feirante — quanto ele lucra a cada combinação de preço da banana e custo do transporte — e, só com essa informação, conseguisse descobrir quantas bananas ele vende e quantas viagens de caminhão ele faz. O Lema de Hotelling diz que a função lucro já carrega toda essa informação, bastando derivá-la.

    **Por que isso importa:** Essa propriedade é usada pelo [IPEA](https://www.ipea.gov.br) em modelos de equilíbrio geral computável para calibrar funções de oferta setorial da economia brasileira a partir de dados de lucro.

---

## 12.6 Maximização de Lucro e Demanda por Insumos

O Lema de Hotelling nos deu uma via dual para obter as demandas por insumos: derivar a função lucro em relação aos preços dos fatores. Nesta seção, examinamos mais detalhadamente as propriedades dessas demandas e, em particular, a decomposição em efeito substituição e efeito produto — análoga à decomposição de Slutsky na teoria do consumidor, mas com uma diferença notável que elimina a possibilidade de "insumos de Giffen".

### Demanda incondicional por insumos

A **demanda incondicional** (ou marshalliana) por insumos é obtida diretamente das condições de primeira ordem da maximização de lucro:

\[
L^*(p, w, v): \quad p \cdot f_L(K^*, L^*) = w
\]

\[
K^*(p, w, v): \quad p \cdot f_K(K^*, L^*) = v
\]

Estas demandas diferem das demandas condicionadas (Capítulo 11) porque não fixam o nível de produto — ele é determinado endogenamente pela maximização de lucro. A distinção é sutil, mas importante: as demandas condicionadas respondem à pergunta "dado que quero produzir \(q\) unidades, quanto de cada insumo devo usar?", enquanto as demandas incondicionais respondem a "quanto de cada insumo devo usar para maximizar meu lucro?". As primeiras dependem de \((w, v, q)\); as segundas, de \((p, w, v)\).

### Propriedades da demanda por insumos

A partir da convexidade da função lucro e do Lema de Hotelling, obtemos:

\[
\frac{\partial L^*}{\partial w} = -\frac{\partial^2 \pi}{\partial w^2} \leq 0
\]

A demanda por um insumo é **não crescente** em seu próprio preço — a "lei da demanda" para fatores de produção. Isso decorre da convexidade da função lucro (que implica que \(\partial^2 \pi / \partial w^2 \geq 0\)).

### Relação entre demanda condicionada e incondicional

A demanda incondicional por trabalho pode ser decomposta:

\[
\frac{\partial L^*}{\partial w} = \underbrace{\frac{\partial L^c}{\partial w}\bigg|_{q=q^*}}_{\text{efeito substituição}} + \underbrace{\frac{\partial L^c}{\partial q} \cdot \frac{\partial q^*}{\partial w}}_{\text{efeito produto}}
\]

O **efeito substituição** (\(\leq 0\)) reflete a substituição do trabalho por capital ao longo da isoquanta quando \(w\) sobe. O **efeito produto** também é negativo: \(w\) maior eleva o CMg, o que reduz \(q^*\), o que reduz a demanda por trabalho. Ambos os efeitos operam na mesma direção — diferentemente do caso do consumidor, onde efeito substituição e efeito renda podem ter sinais opostos (bem de Giffen).

!!! abstract "Proposição: Inexistência de 'insumo de Giffen'"
    Na teoria da firma maximizadora de lucro, a demanda por um insumo é sempre não crescente em seu próprio preço. Não existe o análogo de um "bem de Giffen" para insumos, pois tanto o efeito substituição quanto o efeito produto reduzem a demanda quando o preço do insumo aumenta.

---

## 🇧🇷 Box Brasil: JBS e a Integração Vertical na Agroindústria

!!! example "🇧🇷 Box Brasil — JBS: quando fazer internamente é melhor que comprar no mercado"
    A **JBS S.A.** é a maior processadora de proteína animal do mundo, com receita líquida trimestral recorde de **R$ 110,5 bilhões** no 3º trimestre de 2024 e presença em mais de 20 países. Sua trajetória ilustra de forma notável a teoria dos custos de transação de **Coase** e **Williamson** (Seção 12.1).

    **A lógica da integração vertical**

    A JBS não se limita ao abate: opera em toda a cadeia — da criação de animais (confinamento próprio) ao processamento, embalagem, logística refrigerada e distribuição com marcas próprias (Friboi, Seara, Swift). Na linguagem de Williamson, isso se explica por três fatores:

    | Atributo da transação | Manifestação na cadeia de carne | Governança escolhida |
    |:---|:---|:---|
    | **Especificidade de ativos** | Plantas frigoríficas, câmaras frias, caminhões refrigerados — ativos com baixo valor fora da cadeia | Integração vertical |
    | **Frequência** | Abate diário de milhares de cabeças; transações contínuas | Hierarquia interna |
    | **Incerteza** | Volatilidade de preços do boi gordo; exigências sanitárias mutáveis; riscos de embargo internacional | Controle direto |

    Se a JBS dependesse exclusivamente do mercado para cada etapa — comprando serviços de transporte refrigerado, terceirizando o abate, contratando distribuidores independentes —, os custos de transação (negociação de contratos, risco de *hold-up*, problemas de qualidade) seriam proibitivos. A integração vertical reduz esses custos ao internalizar transações com alta especificidade de ativos.

    **Terceirização pós-reforma trabalhista**

    Na direção oposta, a **Reforma Trabalhista de 2017** (Lei 13.467/17) liberou a terceirização de atividade-fim no Brasil. Em termos coaseanos, a legislação reduziu os custos de transação de contratar no mercado (ao simplificar contratos e reduzir riscos jurídicos), deslocando a fronteira ótima da firma. Atividades com **baixa especificidade de ativos** — limpeza, segurança, TI — passaram a ser mais eficientemente contratadas no mercado, enquanto atividades com **alta especificidade** permanecem internalizadas.

    **Fonte**: JBS, Relatório de Resultados 3T2024; InfoMoney; Câmara dos Deputados.

---

## 🇧🇷 Box Brasil: MPEs — Desafios de Sobrevivência Empresarial

!!! example "🇧🇷 Box Brasil: Micro e pequenas empresas — a arte de sobreviver"

    As **micro e pequenas empresas (MPEs)** são o coração do tecido empresarial brasileiro. Segundo dados do **SEBRAE** e da **Receita Federal**:

    - As MPEs representam **99% dos estabelecimentos** formais no Brasil.
    - Respondem por cerca de **55% dos empregos formais** e **30% do PIB**.
    - Aproximadamente **29% das MPEs fecham nos primeiros 5 anos** de atividade (taxa de mortalidade apurada pelo SEBRAE para empresas constituídas em 2017).

    **Causas da mortalidade empresarial:**

    | Fator | Frequência citada | Interpretação microeconômica |
    |:---|:---|:---|
    | Falta de planejamento/gestão | ~25% | Incapacidade de minimizar custos (ineficiência produtiva) |
    | Dificuldade de acesso a crédito | ~20% | Custo de capital elevado (\(r\) alto), restrição de liquidez |
    | Carga tributária excessiva | ~18% | Deslocamento para cima das curvas de custo |
    | Concorrência intensa | ~15% | Preço de mercado abaixo do CMe mínimo da firma |
    | Falta de demanda | ~12% | Receita insuficiente para cobrir custos |
    | Problemas pessoais/societários | ~10% | Custos de transação internos (governança) |

    **O Simples Nacional** (LC 123/2006, reformulado pela LC 155/2016) é uma política pública que busca reduzir a carga tributária e a complexidade burocrática para MPEs, unificando tributos em uma guia única com alíquotas progressivas. Em termos microeconômicos, o Simples desloca para baixo as curvas de custo das MPEs, reduzindo o **ponto de fechamento** (\(\mathrm{CVMe}_{\min}\)) e permitindo que firmas menos eficientes sobrevivam.

    **Interpretação via teoria da firma.**
    A alta mortalidade das MPEs pode ser entendida como o resultado de firmas que operam com \(p < \mathrm{CMe}_{\min}\) no longo prazo. No curto prazo, muitas continuam operando enquanto \(p > \mathrm{CVMe}_{\min}\) (cobrindo custos variáveis e parte dos fixos), mas quando os custos fixos (aluguéis, financiamentos) vencem, a firma é forçada a fechar. A decisão de Coase — fazer internamente ou comprar no mercado — também é relevante: muitas MPEs fracassam por tentarem internalizar atividades que seriam mais eficientes se terceirizadas, incorrendo em custos organizacionais que superam os custos de transação do mercado.

    Dados mais recentes do **Mapa de Empresas** (Governo Federal) indicam que o Brasil registrou mais de **21 milhões de empresas ativas** em 2024, com uma taxa de abertura de novas empresas que supera consistentemente a de fechamento — sugerindo um dinamismo empreendedor robusto, mas com alta rotatividade. O desafio de política pública é transformar sobrevivência em **crescimento sustentável** — e isso passa, em boa medida, por reduzir o custo Brasil analisado no capítulo anterior.

## 📋 Resumo do Capítulo

- A **firma** existe, segundo Coase, porque os custos de transação do mercado podem ser superiores aos custos de coordenação interna. A teoria microeconômica assume que a firma maximiza lucro ($\pi = RT - CT$), embora existam modelos alternativos (maximização de receita, satisficing, teoria gerencial).
- A condição fundamental de **maximização de lucro** exige que a receita marginal iguale o custo marginal ($\mathrm{RMg} = \mathrm{CMg}$), com a condição de segunda ordem $\mathrm{RMg}' < \mathrm{CMg}'$. A relação entre receita marginal e elasticidade-preço da demanda é dada por $\mathrm{RMg} = p(1 + 1/\varepsilon_d)$.
- No **curto prazo**, a firma decide operar se o preço cobre ao menos o custo variável médio mínimo ($p \geq \mathrm{CVMe}_{\min}$); caso contrário, minimiza perdas fechando. No longo prazo, o preço deve cobrir o custo total médio.
- A **função lucro** $\pi^*(p, w, v)$ possui propriedades de convexidade em preços, e o **Lema de Hotelling** permite derivar as funções de oferta e de demanda por insumos diretamente a partir das derivadas da função lucro.
- O **índice de Lerner** $L = (p - \mathrm{CMg})/p = -1/\varepsilon_d$ mede o poder de mercado da firma: em concorrência perfeita ele é zero, e cresce à medida que a firma tem mais poder de fixação de preço.
- No Brasil, a alta taxa de mortalidade das **micro e pequenas empresas** (MPEs) ilustra a teoria: muitas firmas operam com preço abaixo do custo médio no longo prazo, sendo forçadas a encerrar atividades quando os custos fixos vencem.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Custos de transação (Coase) | Custos de busca, negociação e execução de contratos no mercado; sua existência justifica a organização da produção dentro de firmas. |
| Maximização de lucro | Objetivo da firma: escolher $q$ tal que $\pi = RT(q) - CT(q)$ seja máximo, implicando $\mathrm{RMg} = \mathrm{CMg}$. |
| Receita marginal | Acréscimo à receita total pela venda de uma unidade adicional: $\mathrm{RMg} = dRT/dq = p(1 + 1/\varepsilon_d)$. |
| Ponto de fechamento | Nível de preço abaixo do qual a firma prefere produzir zero: $p < \mathrm{CVMe}_{\min}$ no curto prazo. |
| Índice de Lerner | Medida de poder de mercado: $L = (p - \mathrm{CMg})/p$; igual a zero em concorrência perfeita. |
| Função lucro | $\pi^*(p, w, v)$: lucro máximo como função dos preços de produto e insumos; convexa e homogênea de grau 1 em preços. |
| Lema de Hotelling | A oferta do produto é $\partial \pi^*/\partial p = q^*(p)$ e as demandas por insumos são $-\partial \pi^*/\partial w_i = x_i^*(p, \mathbf{w})$. |
| Lucro econômico vs. lucro contábil | Lucro econômico desconta o custo de oportunidade; lucro contábil registra apenas receitas menos custos explícitos. |

---

## ✏️ Exercícios Resolvidos

??? example "✏️ Exercício Resolvido 12.1 — Receita marginal, elasticidade e markup"
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

---

??? example "✏️ Exercício Resolvido 12.2 — Decisão de operar ou fechar no curto prazo"
    **Enunciado:** Uma firma tomadora de preços tem custo total de curto prazo \(CT(q) = 72 + 10q + 0{,}5q^2\). O preço de mercado é \(p = 16\). A firma deve operar ou fechar? Qual o lucro?

    **Dados:** \(CF = 72\); \(CV(q) = 10q + 0{,}5q^2\); \(p = 16\).

    **Resolução:**

    **Passo 1 — Funções de custo**
    \[
    \mathrm{CVMe}(q) = 10 + 0{,}5q, \qquad \mathrm{CMg}(q) = 10 + q
    \]
    \[
    \mathrm{CMe}(q) = \frac{72}{q} + 10 + 0{,}5q
    \]

    **Passo 2 — Ponto de fechamento**

    Como \(\mathrm{CVMe} = 10 + 0{,}5q\) é crescente para \(q > 0\), o custo variável médio mínimo é atingido quando \(q \to 0^+\), com \(\mathrm{CVMe}_{\min} = 10\). Logo, a firma opera se \(p \geq 10\).

    **Passo 3 — Quantidade ótima**
    \[
    p = \mathrm{CMg} \implies 16 = 10 + q \implies q^* = 6
    \]

    **Passo 4 — Lucro**
    \[
    RT = 16 \times 6 = 96, \qquad CT = 72 + 60 + 18 = 150
    \]
    \[
    \pi = 96 - 150 = -54
    \]

    **Passo 5 — Comparação: operar vs. fechar**

    | Decisão | Lucro |
    |:---|:---|
    | Operar (\(q = 6\)) | \(\pi = -54\) |
    | Fechar (\(q = 0\)) | \(\pi = -CF = -72\) |

    A receita (\(96\)) cobre todo o custo variável (\(78\)) e ainda gera \(18\) para abater parte dos custos fixos. Operar é racional mesmo com prejuízo.

    **Resultado:** A firma deve operar, produzindo \(q^* = 6\) com prejuízo de \(\pi = -54\), que é menor do que o prejuízo de \(-72\) caso fechasse.

    **Interpretação econômica:** Este é o dilema enfrentado por muitas MPEs brasileiras: operar com prejuízo no curto prazo para cobrir custos variáveis (salários, insumos) enquanto os custos fixos (aluguel, financiamentos) são parcialmente absorvidos. A pesquisa do SEBRAE mostra que empresas nessa faixa (\(\mathrm{CVMe}_{\min} < p < \mathrm{CMe}_{\min}\)) sobrevivem por algum tempo, mas fecham quando os contratos fixos vencem — exatamente como prevê a teoria.

---

??? example "✏️ Exercício Resolvido 12.3 — Verificação do Lema de Hotelling"
    **Enunciado:** Uma firma com função de produção \(q = K^{1/3}L^{1/3}\) enfrenta preços \(p = 12\), \(w = 1\) e \(v = 1\). Encontre as demandas ótimas por insumos, a produção e o lucro máximo. Verifique o Lema de Hotelling.

    **Dados:** \(q = K^{1/3}L^{1/3}\); \(p = 12\), \(w = 1\), \(v = 1\).

    **Resolução:**

    **Passo 1 — Condições de primeira ordem**
    \[
    \text{CPO}_L:\; \frac{p}{3}\,K^{1/3}L^{-2/3} = w \implies 4\,K^{1/3}L^{-2/3} = 1
    \]
    \[
    \text{CPO}_K:\; \frac{p}{3}\,K^{-2/3}L^{1/3} = v \implies 4\,K^{-2/3}L^{1/3} = 1
    \]

    **Passo 2 — Razão ótima de insumos**

    Dividindo \(\text{CPO}_K\) por \(\text{CPO}_L\): \(L/K = v/w = 1\), logo \(L = K\).

    Substituindo em \(\text{CPO}_K\): \(4\,K^{-2/3}\,K^{1/3} = 1 \implies 4\,K^{-1/3} = 1 \implies K^{1/3} = 4 \implies K^* = 64\).

    Portanto: \(K^* = L^* = 64\) e \(q^* = 64^{1/3}\cdot 64^{1/3} = 4 \times 4 = 16\).

    **Passo 3 — Lucro máximo**
    \[
    \pi^* = 12 \times 16 - 1 \times 64 - 1 \times 64 = 192 - 128 = 64
    \]

    **Passo 4 — Função lucro geral**

    Para preços genéricos \((p, w, v)\), as soluções são \(K^* = \frac{p^3}{27\,v^2\,w}\) e \(L^* = \frac{p^3}{27\,w^2\,v}\), com \(q^* = \frac{p^2}{9\,wv}\) e:

    \[
    \pi(p, w, v) = \frac{p^3}{27\,wv}
    \]

    **Passo 5 — Verificação do Lema de Hotelling**
    \[
    \frac{\partial \pi}{\partial p} = \frac{3p^2}{27wv} = \frac{p^2}{9wv} = q^* \;\checkmark
    \]
    \[
    \frac{\partial \pi}{\partial w} = -\frac{p^3}{27w^2v} = -L^* \;\checkmark \qquad
    \frac{\partial \pi}{\partial v} = -\frac{p^3}{27wv^2} = -K^* \;\checkmark
    \]

    **Resultado:** \(K^* = L^* = 64\), \(q^* = 16\), \(\pi^* = 64\). O Lema de Hotelling é verificado: as derivadas da função lucro recuperam a oferta e as demandas por insumos.

    **Interpretação econômica:** A função lucro \(\pi = p^3/(27wv)\) é homogênea de grau 1 em \((p, w, v)\) — se todos os preços dobram, o lucro dobra. Ela é convexa em \(p\) (pois \(\partial^2\pi/\partial p^2 = 2p/(9wv) > 0\)), confirmando que a oferta é crescente no preço do produto. No contexto brasileiro, o Lema de Hotelling é usado em modelos de equilíbrio geral computável (como os do IPEA) para calibrar funções de oferta setorial a partir de dados de lucro.

---

## ✏️ Exercícios

<a id="ex-12-1"></a>**Exercício 12.1.** 
Uma firma tomadora de preços tem a função de custo total de curto prazo \(CT(q) = 50 + 2q + 0{,}5q^2\).

(a) Determine CF, CV(q), CMe(q), CVMe(q) e CMg(q).

(b) Encontre o ponto de fechamento (mínimo do CVMe).

(c) Encontre o ponto de *break-even* (mínimo do CMe).

(d) Derive a curva de oferta de curto prazo \(q^s(p)\).

(e) Se o preço de mercado é \(p = 12\), qual a quantidade produzida e o lucro?

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-1)

---

<a id="ex-12-2"></a>**Exercício 12.2.** 
Demonstre que, para uma firma com poder de mercado enfrentando uma curva de demanda linear \(p = a - bq\):

(a) A receita marginal é \(\mathrm{RMg} = a - 2bq\) (inclinação é o dobro da da demanda).

(b) A receita total é máxima quando \(q = a/(2b)\).

(c) Verifique que no ponto de receita máxima \(|\varepsilon_d| = 1\).

(d) Se o custo marginal é \(\mathrm{CMg} = c\) (constante), derive a quantidade e o preço de maximização de lucro. Mostre que o preço é um *markup* sobre o custo marginal.

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-2)

---

<a id="ex-12-3"></a>**Exercício 12.3.** 
Considere uma firma com função de produção \(q = K^{1/3}L^{2/3}\) enfrentando preços \(p = 27\), \(w = 2\) e \(v = 1\).

(a) Derive as condições de primeira ordem para maximização de lucro.

(b) Encontre as quantidades ótimas de \(K^*\), \(L^*\) e \(q^*\).

(c) Calcule o lucro máximo.

(d) Verifique o Lema de Hotelling calculando a função lucro \(\pi(p, w, v)\) e suas derivadas parciais.

!!! warning "Nota pedagógica"
    Este exercício é *intencionalmente* mal-posto: como \(\alpha + \beta = 1/3 + 2/3 = 1\) (retornos constantes de escala), o custo unitário é \(c(w,v) = 3 < p = 27\), e a firma deseja produzir em escala infinita. Não existe solução interior finita para o problema de maximização de lucro. O objetivo do exercício é que o aluno identifique a indeterminação decorrente de RCE e compreenda por que a teoria da firma competitiva requer retornos decrescentes de escala. Veja a solução para a análise completa.

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-3)

---

<a id="ex-12-4"></a>**Exercício 12.4.** 
Uma firma opera no curto prazo com capital fixo \(\bar{K} = 16\) e função de produção \(q = \bar{K}^{1/2} L^{1/2} = 4L^{1/2}\). O salário é \(w = 8\) e o custo do capital é \(v = 2\).

(a) Derive a função de custo total de curto prazo \(CT(q)\).

(b) Derive CMg(q) e CVMe(q).

(c) Determine o preço mínimo para que a firma opere (ponto de fechamento).

(d) Se \(p = 16\), qual a quantidade ofertada e o lucro?

(e) Compare com a decisão de longo prazo (quando \(K\) também pode ser ajustado).

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-4)

---

<a id="ex-12-5"></a>**Exercício 12.5.** 
Explique, usando a teoria vista neste capítulo, por que:

(a) Uma firma com prejuízo pode racionalmente continuar operando no curto prazo. Dê um exemplo numérico.

(b) A função lucro é convexa nos preços. Qual a implicação econômica dessa propriedade?

(c) Não existe "insumo de Giffen" na teoria da firma. Compare com o caso do consumidor.

(d) A relação \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) implica que um monopolista nunca opera na região inelástica da demanda. Explique intuitivamente.

(e) Segundo Coase, qual o limite para o crescimento da firma? Relacione com deseconomias de escala e custos de monitoramento.

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2013 — Questão 3"
    Suponha que a função de produção para um dado produto tem a seguinte forma funcional: \(q = f(x_1) = 2x_1 - 0{,}03\,x_1^2\). Considere também que o preço de uma unidade do bem final é \(p(q) = R\$\,10{,}00\) e o preço unitário do insumo, praticado pelo mercado, é \(p(x_1) = R\$\,8{,}00\).

    Dadas essas informações, é correto afirmar que:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | O nível de utilização do insumo que maximiza o nível de produção é \(x_1 = 33{,}33\). |
    | 1 | O nível de utilização do insumo que maximiza o lucro da firma é \(x_1 = 19{,}5\). |
    | 2 | O nível de produção economicamente ótimo é \(q = 28\). |
    | 3 | O lucro máximo \((\pi)\) obtenível pela firma é \(\pi = R\$\,120{,}00\). |
    | 4 | A produtividade marginal do fator é crescente. |

    ??? success "Gabarito"
        **Respostas: 10110**

        **Justificativa por item:**

        - **Item 0 — V:** Para maximizar a produção, \(f'(x_1) = 2 - 0{,}06\,x_1 = 0 \implies x_1 = 33{,}33\). Correto.
        - **Item 1 — F:** A condição de maximização de lucro é \(p \cdot f'(x_1) = p_{x_1}\), ou seja, \(10(2 - 0{,}06\,x_1) = 8 \implies 20 - 0{,}6\,x_1 = 8 \implies x_1 = 20\), e não 19,5.
        - **Item 2 — V:** \(q(20) = 2(20) - 0{,}03(400) = 40 - 12 = 28\). Correto.
        - **Item 3 — V:** \(\pi = 10 \times 28 - 8 \times 20 = 280 - 160 = 120\). Correto.
        - **Item 4 — F:** \(\mathrm{PMg} = 2 - 0{,}06\,x_1\), que é **decrescente** em \(x_1\) (rendimentos marginais decrescentes).

---

??? question "ANPEC 2020 — Questão 6"
    Em um ano, uma empresa apresentou os seguintes dados contábeis: \$1 milhão de receitas, \$300 mil de compras de matérias-primas, \$30 mil de despesas com água e energia elétrica, \$100 mil de gastos com a folha de salários e \$120 mil de gasto com o salário do proprietário da empresa. O empresário tem a opção de fechar sua empresa e alugar as instalações por \$200 mil por ano. Ele também tem duas ofertas de emprego: uma com salário anual de \$90 mil e outra com salário anual de \$150 mil. O proprietário somente pode aceitar uma dessas ofertas, caso decida fazê-lo, e seria obrigado a fechar seu negócio. Levando em conta essas informações e a teoria dos custos, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | O custo contábil anual da empresa é de \$550 mil. |
    | 1 | O custo econômico anual da empresa é de \$780 mil. |
    | 2 | O lucro econômico anual da empresa é de \$100 mil. |
    | 3 | Sendo racional, o proprietário deve continuar a operar sua empresa, pois o lucro econômico é positivo. |
    | 4 | O proprietário deveria fechar a sua empresa se tivesse registrado um custo irrecuperável de \$300 mil. |

    ??? success "Gabarito"
        **Respostas: 11010**

        **Justificativa por item:**

        - **Item 0 — V:** Custo contábil = matérias-primas (300) + água/energia (30) + salários funcionários (100) + salário proprietário (120) = **\$550 mil**. Correto.
        - **Item 1 — V:** Custo econômico inclui todos os custos de oportunidade: matérias-primas (300) + água/energia (30) + salários funcionários (100) + custo de oportunidade do proprietário (max{90, 150} = 150) + custo de oportunidade das instalações (200) = **\$780 mil**. Correto.
        - **Item 2 — F:** Lucro econômico = receita − custo econômico = 1.000 − 780 = **\$220 mil**, e não \$100 mil. O erro comum é calcular o custo de oportunidade do proprietário como 150 − 120 = 30 e do capital como 200, obtendo custo eco = 550 + 30 + 200 = 780 e lucro = 220 — o resultado é o mesmo por qualquer caminho correto.
        - **Item 3 — V:** Como o lucro econômico é positivo (\$220 mil \(>\) 0), é racional continuar operando. Correto.
        - **Item 4 — F:** Custos irrecuperáveis (*sunk costs*) não devem afetar decisões presentes e futuras. O proprietário deve considerar apenas os custos e receitas prospectivos. A existência de um custo irrecuperável passado de \$300 mil é irrelevante para a decisão de continuar ou fechar.

---

??? question "ANPEC 2025 — Questão 7"
    Com relação à oferta da indústria, julgue as afirmativas abaixo como verdadeiras ou falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | No equilíbrio de curto prazo de uma indústria competitiva todas as empresas têm de obter lucro zero. |
    | 1 | No equilíbrio de longo prazo, se não houver barreiras à entrada e à saída, todos os fatores de produção são remunerados a preços de mercado. |
    | 2 | Sempre que houver barreiras à entrada causadas por um fator fixo, a indústria vai apresentar lucros positivos no longo prazo. |
    | 3 | Caso haja renda econômica em um setor, ela determinará o preço de equilíbrio do setor. |
    | 4 | Se não houver barreiras à entrada e à saída, e os custos da indústria forem constantes, a curva de oferta de longo prazo será horizontal, a um preço igual ao custo médio mínimo. |

    ??? success "Gabarito"
        **Respostas: 01001**

        **Justificativa por item:**

        - **Item 0 — F:** No equilíbrio de **curto prazo**, firmas podem ter lucro positivo, negativo ou zero — a condição de lucro zero vale apenas no **longo prazo** com livre entrada e saída.
        - **Item 1 — V:** No equilíbrio de longo prazo com livre entrada e saída, todos os fatores são remunerados a preços de mercado, pois o lucro econômico é zero — nenhum fator é sub ou super-remunerado em relação ao seu custo de oportunidade.
        - **Item 2 — F:** Um fator fixo (como terra fértil ou licença) gera **renda econômica** para o detentor desse fator. O lucro econômico das firmas permanece zero, pois a renda é capitalizada no preço do fator fixo (ou no aluguel). O "lucro" aparente é na verdade remuneração do fator escasso.
        - **Item 3 — F:** A causalidade é inversa: é o **preço de equilíbrio** (determinado por oferta e demanda) que determina a renda econômica, e não o contrário. Este é o princípio ricardiano clássico: "o milho não é caro porque paga-se renda; paga-se renda porque o milho é caro."
        - **Item 4 — V:** Com livre entrada/saída e custos constantes (sem economias ou deseconomias externas), firmas entram até que \(p = \mathrm{CMe}_{\min}\). A curva de oferta de longo prazo é perfeitamente elástica (horizontal) nesse preço.

---

## 🔬 Pesquisa em Ação

??? abstract "Ulyssea, G. (2018). [Firms, Informality, and Development: Theory and Evidence from Brazil](https://doi.org/10.1257/aer.20141745). *American Economic Review*, 108(8), 2015–2047."
    **Pergunta central:** Por que tantas empresas no Brasil operam na informalidade, e quais são as consequências de políticas que tentam reduzi-la? A informalidade empresarial atinge milhões de firmas brasileiras e tem implicações diretas para produtividade, arrecadação e bem-estar. Ulyssea investiga se reduzir a informalidade de firmas (registro formal) necessariamente reduz a informalidade no mercado de trabalho (contratação formal).

    **Método:** O artigo desenvolve um modelo de equilíbrio com firmas heterogêneas que tomam duas decisões: (i) se registram formalmente a empresa (margem extensiva da informalidade) e (ii) se contratam trabalhadores com carteira assinada (margem intensiva). O modelo é estimado com dados brasileiros de firmas e trabalhadores, permitindo simular políticas contrafactuais de fiscalização e redução de custos de formalização.

    **Resultado principal:** O resultado central é surpreendente: as duas margens de informalidade podem mover-se em **direções opostas**. Políticas que reduzem a informalidade empresarial (mais firmas se registrando) não necessariamente reduzem a informalidade trabalhista — e podem até piorá-la. Nem sempre há ganhos de produtividade, produto ou bem-estar. A heterogeneidade das firmas é crucial: firmas muito pequenas que se formalizam enfrentam custos regulatórios que reduzem sua eficiência.

    **Por que isso importa:** Para o Brasil, onde o Simples Nacional e programas como o MEI (Microempreendedor Individual) buscam reduzir a informalidade, o artigo oferece um alerta: formalizar a empresa não é o mesmo que formalizar o emprego. Políticas públicas precisam considerar ambas as margens simultaneamente.

    **Relevância para o capítulo:** O modelo de Ulyssea é fundamentalmente um modelo de **maximização de lucro** com custos de transação regulatórios. A decisão de formalizar é análoga à fronteira da firma de Coase: a firma compara o custo de operar formalmente (impostos, burocracia) com o custo de operar informalmente (risco de multa, exclusão de crédito). A informalidade trabalhista reflete a demanda por insumos sob custos regulatórios — exatamente os temas das Seções 11.1 e 11.6.

??? abstract "Dix-Carneiro, R.; Kovak, B. K. (2017). [Trade Liberalization and Regional Dynamics](https://doi.org/10.1257/aer.20161214). *American Economic Review*, 107(10), 2908–2946."
    **Pergunta central:** Como as firmas e os mercados de trabalho regionais se ajustam no longo prazo a choques de preços causados por liberalização comercial? O Brasil realizou uma das maiores aberturas comerciais do mundo no início dos anos 1990, oferecendo um experimento natural para estudar a resposta da oferta e da demanda por insumos.

    **Método:** Os autores combinam dados de censos demográficos brasileiros de 1991 a 2010 com variação regional na exposição a reduções tarifárias, usando uma estratégia de diferenças-em-diferenças. Regiões mais afetadas pela abertura (que tinham indústrias mais protegidas) são comparadas com regiões menos afetadas ao longo de 20 anos.

    **Resultado principal:** O impacto negativo sobre emprego formal e salários foi **persistente e crescente**: após 20 anos, regiões mais afetadas apresentavam queda de emprego formal cerca de três vezes maior do que após 10 anos. O mecanismo envolve mobilidade imperfeita do trabalho, ajuste lento do capital e perda de economias de aglomeração. Firmas em regiões expostas reduziram a produção e a demanda por trabalho de forma prolongada — contrariando modelos que preveem ajuste rápido.

    **Por que isso importa:** O estudo demonstra empiricamente que a "curva de oferta de longo prazo" — que a teoria descreve como perfeitamente elástica — pode levar décadas para se materializar em economias reais com fricções. Para o Brasil, os resultados informam debates sobre política comercial e proteção a setores vulneráveis.

    **Relevância para o capítulo:** O artigo ilustra a distinção entre **curto e longo prazo** da Seção 12.4: no curto prazo, firmas operam com prejuízo (decisão de não fechar), mas no longo prazo, a saída de firmas e a realocação de fatores deveria restaurar o equilíbrio. Dix-Carneiro e Kovak mostram que esse ajuste pode ser extremamente lento. O artigo também documenta empiricamente como a **demanda por insumos** (Seção 12.6) responde a mudanças de preços — exatamente o que o Lema de Hotelling prediz, mas com dinâmica muito mais complexa do que o modelo estático sugere.

## 📚 Referências do Capítulo

- Coase, Ronald H. 1937. ["The Nature of the Firm."](https://doi.org/10.1111/j.1468-0335.1937.tb00002.x) *Economica* 4 (16): 386–405.
- CONAB. 2023–2026. [*Acompanhamento da Safra Brasileira de Grãos*](https://www.conab.gov.br). Brasília: CONAB.
- Dix-Carneiro, Rafael, e Brian K. Kovak. 2017. ["Trade Liberalization and Regional Dynamics."](https://doi.org/10.1257/aer.20161214) *American Economic Review* 107 (10): 2908–2946.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press.
- SEBRAE. 2020. [*Sobrevivência das Empresas no Brasil*](https://www.sebrae.com.br). Brasília: SEBRAE.
- Ulyssea, Gabriel. 2018. ["Firms, Informality, and Development: Theory and Evidence from Brazil."](https://doi.org/10.1257/aer.20141745) *American Economic Review* 108 (8): 2015–2047.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton.
- Williamson, Oliver E. 1975. [*Markets and Hierarchies: Analysis and Antitrust Implications*](https://books.google.com.br/books?id=pg-wAAAAIAAJ). New York: Free Press.
- Williamson, Oliver E. 1985. [*The Economic Institutions of Capitalism*](https://books.google.com/books?id=ma62AAAAIAAJ). New York: Free Press.
