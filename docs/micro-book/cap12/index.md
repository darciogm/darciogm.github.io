# Capítulo 12 — A Firma Nua: Anatomia do Lucro

Os capítulos anteriores construíram os dois pilares sobre os quais repousa a teoria da firma: a **tecnologia** (função de produção, Capítulo 10) e os **custos** (função custo, Capítulo 11). Agora é hora de juntar as peças e deixar a firma fazer o que ela faz de melhor: tomar decisões em busca de lucro. A questão central é: **como a firma escolhe quanto produzir?** Parece simples — quase ingênua —, mas a resposta que a microeconomia oferece é como um fio de Ariadne que conecta a decisão solitária de um empresário a toda a arquitetura do equilíbrio de mercado estudada no Capítulo 13.

A resposta padrão da microeconomia — maximização de lucro — exige que examinemos as condições de primeira e segunda ordem, a relação entre receita marginal e elasticidade da demanda, a decisão de operar ou fechar no curto prazo e as propriedades da função lucro. O elegante Lema de Hotelling, análogo ao Lema de Shephard nos custos, conecta a função lucro diretamente às funções de oferta e demanda por insumos. Esses resultados formam o esqueleto da teoria competitiva: sem compreendê-los, não é possível analisar como o mercado agrega decisões individuais em equilíbrio — nem como o poder de mercado estudado no Capítulo 15 (monopólio) distorce esses resultados.

Mas antes de mergulhar na análise formal, vale perguntar: **por que existem firmas?** A resposta pioneira de Ronald Coase (1937) — custos de transação — permanece central e nos lembra que a "caixa-preta" da firma esconde uma rica estrutura organizacional. Coase argumentou que a firma é uma resposta às imperfeições do mecanismo de preços: quando coordenar via mercado é custoso, a hierarquia interna se torna mais eficiente. Esse insight, publicado há quase 90 anos, continua gerando pesquisa de fronteira — da teoria dos contratos (Hart e Holmström, Nobel 2016) à economia organizacional computacional. No contexto brasileiro, onde micro e pequenas empresas (MPEs) representam a esmagadora maioria dos negócios e enfrentam taxas de mortalidade empresarial elevadas, a teoria da firma ganha contornos particularmente concretos: a decisão entre fazer e comprar, entre formalizar e permanecer informal, entre crescer e manter-se pequeno, é tomada diariamente por milhões de empreendedores que, sem saber, são atores do modelo que este capítulo apresenta.

---

## 12.1 A Natureza e o Comportamento das Firmas

### Por que firmas existem?

!!! definition "Custos de transação (Coase)"
    Segundo **Ronald Coase** (1937), firmas existem porque a utilização do mecanismo de mercado (sistema de preços) envolve **custos de transação**: custos de busca, negociação, elaboração e execução de contratos. Quando esses custos são suficientemente elevados, torna-se mais eficiente organizar a produção dentro de uma firma — sob uma hierarquia administrativa — do que coordenar tudo via transações de mercado.

A firma, portanto, é uma resposta institucional à existência de custos de transação. Sua fronteira — isto é, quais atividades são realizadas internamente e quais são contratadas no mercado — é determinada pela comparação entre custos de transação e custos de organização interna. Esse insight simples mas profundo transforma a firma de uma "caixa-preta" que recebe insumos e produz outputs em uma instituição viva, cujas fronteiras se expandem ou se contraem conforme mudam as condições econômicas e regulatórias. Quando a Petrobras decide se refinar internamente ou importar derivados prontos, quando uma startup decide terceirizar a TI ou contratar desenvolvedores próprios, estão tomando a decisão coaseana fundamental: o custo de transação do mercado versus o custo de coordenação interna. O artigo de Coase (1937) foi escrito quando o autor tinha apenas 26 anos e era estudante da London School of Economics — e permanece um dos textos mais citados da história da economia.

!!! idea "Intuição Econômica"
    **Em uma frase:** Firmas existem porque negociar tudo no mercado tem um custo — e às vezes sai mais barato resolver as coisas "dentro de casa".

    **Pense assim:** Imagine um dono de restaurante em São Paulo. Ele poderia, todo dia, ir à CEAGESP negociar preço de cada verdura com um fornecedor diferente. Mas o tempo gasto, o risco de levar gato por lebre e a burocracia dos contratos tornam mais eficiente ter um fornecedor fixo ou até uma horta própria. Essa é a lógica dos custos de transação.

    **Por que isso importa:** Entender custos de transação ajuda a explicar por que empresas como a JBS se integram verticalmente e por que políticas de simplificação burocrática (como o MEI) podem alterar a fronteira da firma.

**Oliver Williamson** (1975, 1985) expandiu a análise de Coase, identificando três atributos das transações que determinam a forma organizacional mais eficiente:

1. **Especificidade de ativos**: quando investimentos são específicos a uma relação (ex.: uma máquina que só serve para produzir um componente para um único cliente), o risco de comportamento oportunista (*hold-up*) favorece a integração vertical.
2. **Frequência**: transações recorrentes justificam estruturas de governança mais sofisticadas.
3. **Incerteza**: quanto maior a incerteza, mais difícil redigir contratos completos, favorecendo a organização interna.

A teoria dos custos de transação também está na base da teoria dos contratos incompletos, desenvolvida por **Oliver Hart** e **Bengt Holmström**, laureados com o Nobel de Economia de 2016. Se contratos pudessem ser completos — especificando toda ação e contingência possível —, a forma organizacional seria irrelevante: o mecanismo de preços coordenaria tudo. É precisamente a incompletude contratual que dá à firma sua razão de existir e seus direitos de propriedade seu poder alocativo. Voltaremos a essa discussão mais adiante neste capítulo.

!!! info "🏅 Prêmio Nobel — Ronald H. Coase (1991) e Oliver E. Williamson (2009)"

    **Ronald Harry Coase** (1910–2013) foi um economista britânico-americano. Formou-se na London School of Economics e foi professor na Universidade de Chicago por mais de quatro décadas.

    **Oliver Eaton Williamson** (1932–2020) foi um economista americano. Obteve o PhD no Carnegie Institute of Technology (atual CMU) e foi professor na UC Berkeley. Dividiu o Nobel de 2009 com Elinor Ostrom.

    **Por que ganharam o Nobel:**
    Coase foi premiado por descobrir e esclarecer o significado dos custos de transação e dos direitos de propriedade para a estrutura institucional da economia. Em *The Nature of the Firm* (1937), explicou por que firmas existem: quando os custos de transação no mercado excedem os custos de organização interna, a firma substitui o mecanismo de preços. Williamson estendeu essa análise, identificando os atributos das transações (especificidade de ativos, frequência, incerteza) que determinam se a governança ótima é via mercado, hierarquia ou formas híbridas.

    **Conexão com este capítulo:**
    A questão "por que firmas existem?" — ponto de partida deste capítulo — foi formulada por Coase e aprofundada por Williamson. A análise dos custos de transação como determinante das fronteiras da firma complementa a teoria neoclássica da produção e explica por que a firma não é apenas uma função de produção, mas uma instituição que economiza em custos de coordenação.

!!! info "🏅 Prêmio Nobel — Oliver Hart & Bengt Holmström (2016)"

    **Oliver Hart** (nascido em 1948, Cambridge) é professor da Universidade de Harvard. PhD pela Princeton University. Seus trabalhos fundamentais incluem "Property Rights and the Nature of the Firm" (1990, com John Moore) e a teoria dos contratos incompletos.

    **Bengt Holmström** (nascido em 1949, Finlândia) é professor do MIT. PhD pela Stanford University. Conhecido sobretudo pelos trabalhos sobre problemas principal-agente, incentivos em organizações e estrutura de remuneração.

    **Por que ganharam o Nobel:**
    Hart e Holmström foram premiados por suas contribuições à teoria dos contratos. Holmström desenvolveu o **princípio informativo**: um contrato ótimo deve incorporar toda informação disponível sobre o esforço do agente. Isso fundamenta a teoria de incentivos — por que bônus dependem de resultados relativos, por que gestores têm pacotes complexos de remuneração. Hart, com Moore, desenvolveu a **teoria da propriedade** (*property rights theory of the firm*): quando contratos são incompletos — impossível especificar todas as contingências —, os direitos de propriedade sobre ativos físicos determinam quem tem poder de barganha nas renegociações *ex post*. Isso explica por que a estrutura de propriedade importa para as decisões de investimento e integração vertical.

    **Conexão com este capítulo:**
    A teoria de Hart e Holmström complementa a visão de Coase: enquanto Coase explica *por que* firmas existem (custos de transação), Hart explica *como* a estrutura de propriedade dentro e entre firmas afeta os incentivos ao investimento. Do ponto de vista da maximização de lucro (Seção 12.2), a incompletude contratual significa que o "lucro" contabilizado pelo gestor pode divergir do lucro econômico do acionista — o problema clássico de agência que a teoria de Holmström procura resolver via desenho de contratos ótimos.

### O objetivo da firma: maximização de lucro

Na análise microeconômica padrão, assume-se que a firma busca **maximizar o lucro**:

\[
\pi = RT - CT = p \cdot q - C(q)
\label{eq:12.1} \tag{12.1}
\]

Embora existam teorias alternativas — maximização de receita (Baumol), maximização da utilidade gerencial (Williamson), satisfação (*satisficing*, Simon) —, a maximização de lucro permanece como a hipótese de trabalho dominante por sua tratabilidade analítica e por gerar predições empiricamente testáveis. Cabe perguntar: essa hipótese é realista? Em empresas com separação entre propriedade e controle — como as grandes corporações listadas na B3 —, os gerentes podem perseguir seus próprios interesses em vez de maximizar o lucro dos acionistas. Contudo, a pressão competitiva nos mercados de produtos, o mercado de capitais e a ameaça de aquisição hostil tendem a disciplinar os gestores, aproximando o comportamento observado do modelo de maximização de lucro.

É importante distinguir dois conceitos de lucro. O **lucro contábil** (reportado nas demonstrações financeiras) mensura receitas menos custos explícitos — o que aparece no balanço. O **lucro econômico** desconta também os custos de oportunidade dos insumos que a própria firma detém: o capital do acionista poderia render juros em outro investimento, o talento do empresário poderia ser empregado em outra empresa. A maximização que a teoria microeconômica trata é do lucro *econômico*. Em mercados perfeitamente competitivos de longo prazo, o lucro econômico tende a zero — todas as receitas cobrem apenas os custos de oportunidade —, enquanto o lucro contábil pode ser positivo. Esse resultado, que o Capítulo 13 analisará em detalhe, tem implicações diretas para a interpretação de dados financeiros: uma empresa com lucro contábil positivo pode, na visão econômica, estar destruindo valor para seus acionistas se o retorno sobre o capital for inferior ao custo de oportunidade do mesmo.

---

## 12.2 Maximização de Lucro

Muito bem, a firma quer lucro. Mas querer não basta — ela precisa de um GPS para chegar lá. Quais são as regras práticas que dizem "produza *exatamente* esta quantidade"? E como ter certeza de que chegamos ao topo da montanha e não ao fundo do vale? As condições de primeira e segunda ordem são esse GPS. A CPO conecta-se diretamente às funções de custo derivadas no Capítulo 11: o custo marginal \(\mathrm{CMg}(q) = C'(q)\) é o mesmo objeto que caracterizou a curva de oferta de curto prazo, e agora aparece como o lado direito da condição de otimalidade. A CSO, por sua vez, está ligada à convexidade do custo marginal — que, como vimos no Capítulo 11, decorre dos rendimentos marginais decrescentes dos fatores.

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

    2. **Solução de canto:** O máximo de lucro pode estar em \(q = 0\) (firmar fecha) se \(p < \mathrm{CVMe}_{\min}\), mesmo que exista um ponto interior onde CPO é satisfeita.

    **Regra mnemônica — CSO (Condição Suficiente de Ordem 2):** Para que \(q^*\) seja um máximo local de lucro, é preciso que \(\mathrm{CMg}'(q^*) > \mathrm{RMg}'(q^*)\), ou seja, o CMg deve estar *subindo* mais rápido do que o RMg no ponto ótimo. Em concorrência perfeita (\(\mathrm{RMg}' = 0\)), isso se reduz simplesmente a \(\mathrm{CMg}'(q^*) > 0\): o custo marginal deve ser crescente no ótimo.

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

## 12.3 Receita Marginal e Elasticidade

A regra "RMg = CMg" é linda, mas esconde uma assimetria traiçoeira no lado da receita. Para a firma tomadora de preços, a vida é simples: cada unidade extra rende exatamente o preço de mercado, sem drama. Já para a firma com poder de mercado, vender mais é como encher um balde furado — colocar uma unidade extra na prateleira exige *baixar o preço de todas as outras*, e essa "conta-gotas de receita perdida" torna a receita marginal menor que o preço. A relação entre receita marginal e elasticidade-preço da demanda, que derivamos a seguir, é uma das mais úteis de toda a microeconomia, pois conecta a decisão de produção da firma à sensibilidade dos consumidores ao preço. Essa relação é o elo central entre os capítulos 12 e 15: quando chegarmos ao monopólio, a fórmula \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) será a chave para derivar o markup de Lerner e quantificar a ineficiência do poder de mercado. Antes de chegar lá, é útil notar que a distinção entre firma tomadora de preços e firma com poder de mercado não é binária — ela é um espectro parametrizado pela elasticidade da demanda individual da firma, que por sua vez depende da estrutura do mercado estudada nos Capítulos 13 a 15.

<iframe src="../graficos/cap12/receita-marginal.html" title="Figura 12.1 — Receita marginal, demanda e elasticidade" class="graph-iframe"></iframe>

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

---

## 12.4 Oferta de Curto Prazo da Firma Tomadora de Preços

Firmas com poder de mercado são fascinantes, mas voltemos agora ao personagem mais humilde — e mais fundamental — da história: a firma tomadora de preços, a peça de Lego com que se monta toda a curva de oferta. A pergunta central desta seção é: dado o cardápio de custos que herdamos do Capítulo 11, para quais preços a firma decide produzir, e quanto? A resposta envolve não apenas a condição \(p = \mathrm{CMg}\), mas também uma decisão prévia que muitos estudantes esquecem na prova (e que todo empresário conhece de cor): a firma deve operar ou fechar as portas? Essa decisão de "shutdown" — para usar o termo consagrado na literatura anglófona — é analiticamente distinta da condição de otimalidade. Ela compara dois estados alternativos (operar vs. não operar) em vez de identificar um máximo em um conjunto contínuo. A curva de oferta que derivamos nesta seção é justamente o insumo fundamental para construir a oferta de mercado do Capítulo 13 e, por extensão, para analisar o equilíbrio competitivo de longo prazo. O Box Mundo 12.1 ao final desta seção documenta, com dados empíricos da pandemia de COVID-19, como firmas reais tomam essa decisão em situações extremas.

<iframe src="../graficos/cap12/maximizacao-lucro.html" title="Figura 12.2 — Maximização de lucro para firma tomadora de preços" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 12.2 — Maximização de lucro para firma tomadora de preços.** Ajuste o preço \(p\) e os parâmetros de custo. O gráfico mostra a quantidade ótima \(q^*\) onde \(p = \mathrm{CMg}\), o retângulo de lucro (ou prejuízo) sombreado e a condição de fechamento (\(p < \mathrm{CVMe}_{\min}\)).
</div>

### A decisão de produção no curto prazo

Para uma firma tomadora de preços (\(\mathrm{RMg} = p\)), a condição de maximização é \(p = \mathrm{CMg}(q)\). Contudo, essa condição não é suficiente — é preciso verificar se a firma deve **operar** ou **fechar**.

No curto prazo, a firma incorre em custos fixos independentemente de produzir ou não. Portanto:

- Se **opera**, o lucro é: \(\pi = p \cdot q - CV(q) - CF\)
- Se **fecha**, o lucro é: \(\pi = -CF\)

A firma deve operar se e somente se a condição da equação $\eqref{eq:12.8}$ for satisfeita:

\[
p \cdot q - CV(q) - CF \geq -CF \implies p \cdot q \geq CV(q) \implies p \geq \mathrm{CVMe}(q)
\label{eq:12.8} \tag{12.8}
\]

### Condições de oferta no curto prazo

A [Tabela 12.1](#tabela-12-1) resume as condições de oferta da firma no curto prazo.

<a id="tabela-12-1"></a>

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
    \label{eq:12.9} \tag{12.9}
    \]

!!! note "O excedente do produtor"
    O **excedente do produtor** no curto prazo é a diferença entre a receita total e o custo variável:

    \[
    EP = RT - CV = p \cdot q - CV(q) = \pi + CF
    \]

    Graficamente, é a área acima da curva de oferta (CMg) e abaixo do preço. O excedente do produtor é a medida apropriada de bem-estar do lado da oferta no curto prazo, pois mede a contribuição da produção para cobrir os custos fixos e gerar lucro. No longo prazo, quando todos os fatores são variáveis, o excedente do produtor de longo prazo coincide com o lucro econômico (pois não há custos fixos irrecuperáveis): \(EP_{LP} = \pi_{LP}\). Com livre entrada e saída e tecnologia constante, o Capítulo 13 mostrará que \(\pi_{LP} = 0\) em equilíbrio — e portanto o excedente do produtor de longo prazo tende a zero, sendo toda a renda capitalizada nos fatores escassos (terra, licenças, habilidades específicas).

!!! idea "Intuição Econômica"
    **Em uma frase:** Uma firma com prejuízo pode racionalmente continuar operando, desde que a receita cubra pelo menos os custos variáveis.

    **Pense assim:** Imagine um quiosque na praia que paga R$ 3.000 de aluguel por mês (custo fixo). Se fechar, perde os R$ 3.000 de qualquer jeito. Se abrir e faturar o suficiente para pagar funcionários, insumos e ainda sobrar R$ 500, é melhor abrir — mesmo com prejuízo. O aluguel já é "dinheiro perdido" no curto prazo. Fechar só vale a pena quando nem os custos variáveis se pagam.

    **Por que isso importa:** Essa lógica explica por que tantas MPEs brasileiras operam com prejuízo por meses antes de fechar — e por que o SEBRAE monitora a taxa de mortalidade empresarial nos primeiros cinco anos.

<iframe src="../graficos/cap12/lucro-maximo.html" title="Figura 12.3 — Lucro maximo e excedente do produtor" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 12.3 — Lucro maximo e excedente do produtor.** Ajuste o preco \(p\) para visualizar a quantidade otima \(q^*\) onde \(p = \mathrm{CMg}\), o retangulo de lucro (ou prejuizo) sombreado, o excedente do produtor (area entre \(p\) e CMg) e a condicao de fechamento. Compare os tres regimes: lucro positivo (\(p \geq \mathrm{CTMe}_{\min}\)), prejuizo com operacao (\(\mathrm{CVMe}_{\min} \leq p < \mathrm{CTMe}_{\min}\)) e fechamento (\(p < \mathrm{CVMe}_{\min}\)).
</div>

---

!!! box-brasil "Box Brasil — Soja: quando o preço sobe, a área plantada responde"
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

??? exercicio-resolvido "Exercício Resolvido 12.2 — Decisão de operar ou fechar no curto prazo"
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

!!! box-mundo "Box Mundo 12.1 — Decisões de fechamento durante a COVID-19: o setor de restaurantes dos EUA"

    **Contexto.** A pandemia de COVID-19 ofereceu um experimento natural sem precedentes para testar a teoria da decisão de shutdown: quando preços caem abruptamente (pela queda abrupta de demanda) ou custos variáveis sobem (por requisitos sanitários), quais firmas fecham temporariamente e quais fecham permanentemente? O setor de alimentação fora do lar dos EUA, com mais de um milhão de estabelecimentos antes da pandemia, documentou em tempo real essa dinâmica.

    **Dados.** De acordo com o *Bureau of Labor Statistics* (BLS) e dados do *U.S. Census Bureau* (Business Formation Statistics e County Business Patterns):

    - Em abril de 2020, o emprego no setor de serviços de alimentação caiu **49%** em relação a fevereiro de 2020 — a maior contração registrada para qualquer setor em um único mês desde o início da série histórica.
    - A National Restaurant Association estimou que **110.000 restaurantes** (cerca de 17% do total) fecharam permanentemente entre março de 2020 e dezembro de 2021.
    - O fechamento **temporário** foi muito mais comum: no pico em abril/maio de 2020, mais de 60% dos estabelecimentos reduziram operações ou fecharam temporariamente, mas com intenção de reabrir.
    - A taxa de reabertura foi alta entre restaurantes que tinham custos fixos mais baixos (aluguéis por porcentagem da receita, empréstimos menores) e baixa entre aqueles com alto endividamento fixo.

    **Análise via teoria da firma.** A teoria prevê duas zonas críticas de preço:

    1. **Fechamento temporário** (\(p < \mathrm{CVMe}_{\min}\)): a receita não cobre nem os custos variáveis — salários de cozinheiros, insumos alimentares, entrega. A firma minimiza perdas parando. Corresponde ao comportamento dos estabelecimentos que suspenderam operações em abril de 2020 mas mantiveram seus ativos (cozinha, equipamentos) para reabrir.

    2. **Fechamento permanente** (\(p < \mathrm{CMe}_{\min}\) no longo prazo): mesmo com retomada parcial, a receita esperada não cobre os custos totais (incluindo aluguel, amortização de equipamentos). Corresponde ao fechamento definitivo de 110.000 estabelecimentos.

    O dado mais revelador é que restaurantes com **contratos de aluguel indexados à receita** (em vez de valor fixo mensal) tiveram taxa de sobrevivência significativamente maior — pois seus custos fixos efetivamente se tornaram variáveis em crise, elevando o preço de shutdown. Isso ilustra como a estrutura de custos (a composição entre CF e CV) determina a resiliência da firma a choques de demanda.

    *Fontes: Bureau of Labor Statistics. Current Employment Statistics (2020–2021). National Restaurant Association. (2021). State of the Restaurant Industry. Washington, D.C. Bartik, A. W. et al. (2020). The Impact of COVID-19 on Small Business Outcomes and Expectations. PNAS, 117(30), 17656–17666.*

---

!!! box-mundo "Box Mundo 12.2 — Produtores de petróleo e o preço de break-even: OPEP vs. shale americano"

    **Contexto.** A indústria de petróleo global oferece um laboratório privilegiado para a teoria da oferta de curto prazo: produtores com estruturas de custo radicalmente diferentes coexistem no mesmo mercado mundial, tomando o preço internacional como dado. O confronto entre a OPEP (dominada pelo custo de extração baixíssimo da Arábia Saudita) e os produtores de *shale* americanos (com custos marginais mais altos mas resposta mais ágil) é um caso real da Tabela 12.1 em ação.

    **Dados.** Segundo estimativas da *International Energy Agency* (IEA, World Energy Outlook 2023) e da *U.S. Energy Information Administration* (EIA):

    | Produtor / Região | Custo de extração (break-even) | Custo marginal médio (USD/barril) |
    |:---|:---|:---|
    | Arábia Saudita (Aramco) | ~USD 3–5/barril | ~USD 9–12/barril |
    | Iraque (OPEP) | ~USD 5–8/barril | ~USD 15–20/barril |
    | Shale EUA (Permian Basin) | ~USD 35–45/barril | ~USD 40–55/barril |
    | Shale EUA (Bakken) | ~USD 45–55/barril | ~USD 50–65/barril |
    | Pré-sal Brasil (Petrobras) | ~USD 35–50/barril | ~USD 40–60/barril |
    | Areias petrolíferas (Canadá) | ~USD 65–80/barril | ~USD 75–95/barril |

    **Análise via teoria da firma.** A curva de oferta do petróleo mundial é literalmente a curva de custo marginal ascendente da Seção 12.4, agregada entre produtores com tecnologias diferentes:

    - Com **preço abaixo de ~USD 35/barril**, os produtores de shale americanos operam abaixo do CVMe mínimo e interrompem a produção (shutdown). Isso foi observado em março–abril de 2020, quando o WTI chegou a USD 20/barril e o número de plataformas ativas nos EUA caiu de ~800 para ~300 em seis meses.
    - Com **preço entre USD 35–65/barril**, o shale americano opera, mas as areias petrolíferas canadenses e alguns projetos de offshore profundo permanecem inviáveis.
    - Com **preço acima de USD 80/barril**, toda a capacidade existente é viável, incluindo fontes de alto custo.

    O "preço de Hotelling" — o preço que equilibra extração hoje vs. futuro para um recurso exaurível — adiciona uma dimensão intertemporal ao problema que Hotelling (1931) formalizou pela primeira vez. A função lucro do produtor de petróleo inclui não apenas o markup corrente, mas o valor de manter reservas para o futuro.

    Para o Brasil, o pré-sal da Petrobras situa-se na faixa intermediária: competitivo acima de ~USD 40/barril, o que o torna viável na maior parte dos cenários de preço, mas vulnerável a choques negativos como o de 2020. A decisão de preço doméstico de combustíveis da Petrobras — que divergiu do preço internacional em vários períodos (2011–2014 e 2022) — é um caso de markup *negativo* (subsídio implícito), com consequências para o equilíbrio fiscal e a alocação de capital que o modelo deste capítulo permite analisar.

    *Fontes: International Energy Agency. (2023). World Energy Outlook 2023. Paris: IEA. U.S. Energy Information Administration. (2024). Short-Term Energy Outlook. Washington, D.C.: EIA. Petrobras. (2024). Relatório de Produção e Vendas — 4T2023. Rio de Janeiro.*

---

!!! box-mundo "Box Mundo 12.3 — Precificação dinâmica do Uber como precificação ao custo marginal"

    **Contexto.** O *surge pricing* (preço dinâmico) do Uber é um dos exemplos mais citados e controversos de implementação em tempo real da regra \(p = \mathrm{CMg}\) da teoria da firma. Diferentemente das firmas tradicionais, o Uber ajusta o preço continuamente (a cada poucos minutos, em cada célula geográfica) para equilibrar oferta e demanda instantânea de viagens.

    **Mecanismo econômico.** O modelo de negócios do Uber opera como um mercado bilateral (plataforma): de um lado, motoristas autônomos com funções de custo individuais; de outro, passageiros com demandas heterogêneas. Em períodos de baixa demanda, o preço-base cobre o custo variável do motorista (combustível, desgaste, custo de oportunidade do tempo). Em períodos de pico — chuva, festas, eventos esportivos —, a demanda desloca-se para cima, e o multiplicador de surge eleva o preço até que a quantidade demandada iguale a quantidade ofertada por motoristas dispostos a entrar no sistema.

    **Dados.** Segundo dados da *UK Competition and Markets Authority* (CMA, *Mobile Ecosystems: Final Report*, 2022) e estudos acadêmicos:

    - O multiplicador de surge no Uber UK varia tipicamente entre 1,2× e 3,5×, com picos documentados acima de 8× durante eventos extraordinários (réveillon em Londres, 2014: multiplicador de ~7,8×).
    - Estudos empíricos (Hall, Horton & Knoepfle, 2021, *NBER Working Paper*) estimam que o surge pricing aumenta o número de viagens disponíveis em **~17%** durante períodos de pico comparados com preço fixo — evidência de que o mecanismo de preços funciona como prevê a teoria da oferta.
    - A elasticidade-preço da oferta dos motoristas é estimada entre **0,3** (curto prazo, motoristas já em atividade) e **1,5** (longo prazo, entrada de novos motoristas).
    - A elasticidade-preço da demanda dos passageiros é estimada em torno de **−0,5** a **−0,7** para o preço base.

    **Análise via teoria da firma.** O surge pricing pode ser interpretado como a plataforma atuando como um "planejador social" que encontra o preço de equilíbrio instantâneo — \(p^* = \mathrm{CMg}\) — para o mercado de viagens. A "firma" aqui é a plataforma, cujo custo marginal de conectar mais um par motorista-passageiro é próximo de zero; o custo relevante é o de oportunidade do motorista (custo variável da viagem). O surge pricing resolve o problema de alocação que um preço fixo criaria: em períodos de pico com preço fixo, haveria escassez (filas, espera longa); com preço dinâmico, a oferta se ajusta ao longo do CMg crescente dos motoristas.

    A controversialidade política do surge pricing — frequentemente percebido como exploração em situações de necessidade — ilustra a tensão entre eficiência alocativa (\(p = \mathrm{CMg}\)) e equidade distributiva. A CMA identificou preocupações sobre transparência e poder de plataforma, mas concluiu que o mecanismo de surge, em si, é consistente com a competição e a eficiência alocativa.

    *Fontes: UK Competition and Markets Authority. (2022). Mobile Ecosystems: Final Report. London: CMA. Hall, J. V.; Horton, J. J.; Knoepfle, D. T. (2021). Pricing in Designed Markets: The Case of Ride-Sharing. NBER Working Paper 29413.*

---

## 12.5 A Função Lucro e o Lema de Hotelling

No Capítulo 11, o Lema de Shephard fez um truque de mágica: extraiu as demandas por insumos apenas derivando a função custo. Será que existe um truque análogo do lado do lucro? A resposta é um sonoro *sim* — e o mágico se chama **Lema de Hotelling** (1932). A ideia é quase boa demais para ser verdade: a função lucro, sozinha, carrega toda a informação necessária para reconstruir as funções de oferta do produto e de demanda por insumos. Basta derivar. Hotelling (1932) foi o primeiro a reconhecer que a simetria entre o problema do consumidor e o da firma se estende além da dualidade custo-produção: a função lucro é o análogo da função dispêndio no lado da demanda, e suas derivadas têm a mesma estrutura interpretativa. Para chegar a esse resultado, precisamos primeiro definir e caracterizar a função lucro.

É instrutivo comparar os dois lemas: o Lema de Shephard diz que a derivada da função custo mínimo em relação ao preço de um insumo, mantendo o produto fixo, é a demanda condicionada por esse insumo. O Lema de Hotelling diz que a derivada da função lucro máximo em relação ao preço do produto é a oferta ótima, e a derivada em relação ao preço de um insumo (com sinal negativo) é a demanda *incondicional* por esse insumo. A diferença entre as demandas condicionada e incondicional é exatamente o tema da Seção 12.6.

### A função lucro

!!! definition "Função Lucro"
    A **função lucro** \(\pi^*(p, w, v)\) é o lucro máximo que a firma pode obter dados o preço do produto \(p\) e os preços dos insumos \(w\) e \(v\). Ela é o resultado de um problema de otimização em dois estágios: primeiro, para cada nível de produto \(q\), a firma minimiza custos (obtendo \(C(w,v,q)\) — o resultado do Capítulo 11); depois, maximiza o lucro sobre \(q\):

    \[
    \pi^*(p, w, v) = \max_{q \geq 0} \{p \cdot q - C(w, v, q)\}
    \label{eq:12.10} \tag{12.10}
    \]

    ou, equivalentemente, maximizando diretamente sobre insumos:

    \[
    \pi^*(p, w, v) = \max_{K, L \geq 0} \{p \cdot f(K, L) - wL - vK\}
    \]

    A função \(\pi^*\) mapeia o espaço de preços \((p, w, v) \in \mathbb{R}_{++}^3\) no lucro máximo alcançável. Ela é a **função valor** do problema de maximização de lucro — análoga à função utilidade indireta \(V(p, m)\) no problema do consumidor e à função custo mínimo \(C(w, q)\) no problema de minimização de custos. **Notação alternativa:** Quando o contexto é claro, escreve-se \(\pi(p)\) se \(w\) e \(v\) estão fixos, ou \(\pi(\mathbf{p})\) com \(\mathbf{p} = (p, w, v)\) o vetor completo de preços.

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
    \label{eq:12.11} \tag{12.11}
    \]

    \[
    \frac{\partial \pi(p, w, v)}{\partial w} = -L^*(p, w, v) \quad \text{(negativo da demanda por trabalho)}
    \label{eq:12.12} \tag{12.12}
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
    O Lema de Hotelling estabelece uma dualidade elegante: a partir da função lucro — que sintetiza toda a informação sobre tecnologia e preços — podemos recuperar tanto a **função de oferta** do produto quanto as **demandas por insumos**. Juntamente com o Lema de Shephard (Capítulo 11), forma o arcabouço dual da teoria da firma. A convexidade da função lucro implica que a oferta é não decrescente no preço do produto (lei da oferta) e que as demandas por insumos são não crescentes nos respectivos preços.

!!! idea "Intuição Econômica"
    **Em uma frase:** Conhecendo apenas o lucro máximo da firma em função dos preços, conseguimos deduzir quanto ela produz e quanto usa de cada insumo.

    **Pense assim:** É como se você olhasse apenas o extrato bancário de um feirante — quanto ele lucra a cada combinação de preço da banana e custo do transporte — e, só com essa informação, conseguisse descobrir quantas bananas ele vende e quantas viagens de caminhão ele faz. O Lema de Hotelling diz que a função lucro já carrega toda essa informação, bastando derivá-la.

    **Por que isso importa:** Essa propriedade é usada pelo [IPEA](https://www.ipea.gov.br) em modelos de equilíbrio geral computável para calibrar funções de oferta setorial da economia brasileira a partir de dados de lucro.

!!! idea "Intuição Econômica"
    **O Lema de Hotelling: a função lucro já contém toda a informação sobre a oferta**

    O resultado mais surpreendente da teoria dual da firma é que **não precisamos resolver o problema de otimização de produção** para saber quanto a firma produz — basta olhar para a função lucro e derivá-la. Isso ocorre porque a função lucro \(\pi^*(p, w, v)\) foi construída *maximizando* sobre \(q\) (e \(K, L\)): cada variação marginal em \(p\) desloca o lucro exatamente pelo valor da quantidade ótima (pelo teorema da envoltória). Em linguagem mais simples: o quanto a firma ganha com um centavo a mais no preço do produto é exatamente quanto ela estava produzindo.

    **Analogia com o consumidor:** O Lema de Hotelling é o espelho do Lema de Roy no lado do consumidor (\(x_i = -\partial V/\partial p_i / \partial V/\partial m\)): assim como a função de utilidade indireta contém toda a informação sobre as escolhas de consumo, a função lucro contém toda a informação sobre as escolhas de produção. A dualidade entre as teorias do consumidor e da firma é, em grande medida, uma consequência desse paralelismo matemático.

    **Implicação para estimação empírica:** Pesquisadores como De Loecker e Warzynski (2012) exploram relações derivadas do Lema de Hotelling para estimar markups diretamente de dados de produção, sem precisar de informação sobre preços de insumos — um avanço metodológico importante para medir poder de mercado em economias com dados limitados.

??? exercicio-resolvido "Exercício Resolvido 12.3 — Verificação do Lema de Hotelling"
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

## 12.6 Maximização de Lucro e Demanda por Insumos

O Lema de Hotelling abriu um atalho elegante: derivar a função lucro e *voilà*, as demandas por insumos aparecem. Mas de onde vêm suas propriedades? Nesta seção, abrimos o capô dessas demandas e encontramos uma decomposição familiar — efeito substituição e efeito produto —, prima-irmã da decomposição de Slutsky do Capítulo 5. A diferença? Aqui não há espaço para "insumos de Giffen" — os dois efeitos sempre puxam na mesma direção, como dois remadores sincronizados. Este resultado tem implicações diretas para a análise empírica da demanda por trabalho no Brasil: um aumento do salário mínimo, por exemplo, afeta a demanda por trabalho tanto pelo efeito substituição (trabalho fica relativamente mais caro que capital) quanto pelo efeito produto (custos maiores reduzem a produção ótima e, portanto, o emprego). Ambos os efeitos apontam na mesma direção, o que explica por que não há análogo de "insumo de Giffen" na teoria da firma.

### Demanda incondicional por insumos

A **demanda incondicional** (ou marshalliana) por insumos é obtida diretamente das condições de primeira ordem da maximização de lucro:

\[
L^*(p, w, v): \quad p \cdot f_L(K^*, L^*) = w
\]

\[
K^*(p, w, v): \quad p \cdot f_K(K^*, L^*) = v
\]

Estas demandas diferem das demandas condicionadas (Capítulo 11) porque não fixam o nível de produto — ele é determinado endogenamente pela maximização de lucro. A distinção é sutil, mas importante: as demandas condicionadas respondem à pergunta "dado que quero produzir \(q\) unidades, quanto de cada insumo devo usar?", enquanto as demandas incondicionais respondem a "quanto de cada insumo devo usar para maximizar meu lucro?". As primeiras dependem de \((w, v, q)\); as segundas, de \((p, w, v)\). Em termos práticos, a demanda incondicional é o objeto relevante para analisar o mercado de trabalho e de capital: uma empresa não observa apenas o seu custo ótimo para um produto fixo, mas ajusta simultaneamente a quantidade produzida e os insumos utilizados em resposta às mudanças de preços.

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
\label{eq:12.13} \tag{12.13}
\]

Na equação $\eqref{eq:12.13}$, o **efeito substituição** (\(\leq 0\)) reflete a substituição do trabalho por capital ao longo da isoquanta quando \(w\) sobe. O **efeito produto** também é negativo: \(w\) maior eleva o CMg, o que reduz \(q^*\), o que reduz a demanda por trabalho. Ambos os efeitos operam na mesma direção — diferentemente do caso do consumidor, onde efeito substituição e efeito renda podem ter sinais opostos (bem de Giffen).

A magnitude relativa desses dois efeitos é empiricamente relevante. Em indústrias com alta substituibilidade capital-trabalho (ex.: automação industrial), o efeito substituição pode ser dominante: um aumento de salário leva à mecanização (substituição de trabalhadores por máquinas) mesmo que a produção se mantenha. Em indústrias com tecnologia de proporções fixas (ex.: serviços de saúde de alto contato humano), o efeito produto pode predominar: salários mais altos reduzem a escala de operação sem mudar a composição de insumos. Pesquisas sobre o mercado de trabalho brasileiro — como as de Ulyssea (2018) citada na seção de pesquisa — documentam esses efeitos em contextos de informalidade e mudanças regulatórias, onde o custo efetivo do trabalho formal inclui encargos sociais que amplificam o efeito substituição.

!!! theorem "Proposição: Inexistência de 'insumo de Giffen'"
    Na teoria da firma maximizadora de lucro, a demanda por um insumo é sempre não crescente em seu próprio preço. Não existe o análogo de um "bem de Giffen" para insumos, pois tanto o efeito substituição quanto o efeito produto reduzem a demanda quando o preço do insumo aumenta.

---

!!! box-brasil "Box Brasil — JBS: quando fazer internamente é melhor que comprar no mercado"
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

!!! box-brasil "Box Brasil: Micro e pequenas empresas — a arte de sobreviver"

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


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A condição fundamental de maximização de lucro da firma é:"
    - (a) Receita total igual ao custo total ($RT = CT$)
    - (b) Receita marginal igual ao custo marginal ($\text{RMg} = \text{CMg}$), com $\text{CMg}$ crescente
    - (c) Preço igual ao custo médio ($p = \text{CMe}$)
    - (d) Produção no ponto de custo médio mínimo

    ??? success "Resposta"
        **(b)** A firma maximiza lucro onde a receita adicional de uma unidade extra iguala o custo adicional, com a condição de segunda ordem exigindo que o CMg seja crescente nesse ponto ($\text{RMg}' < \text{CMg}'$). A alternativa (a) descreve lucro zero, não maximização; (c) também descreve lucro zero no longo prazo competitivo; (d) é o ponto de eficiência produtiva, não necessariamente de lucro máximo.

??? question "2. Em concorrência perfeita, a curva de oferta de curto prazo da firma individual é:"
    - (a) Toda a curva de custo marginal
    - (b) A parte da curva de custo marginal acima do custo variável médio mínimo
    - (c) A curva de custo médio total
    - (d) Uma reta horizontal ao nível do preço de mercado

    ??? success "Resposta"
        **(b)** A firma produz onde $p = \text{CMg}$, mas só opera se $p \geq \text{CVMe}_{\min}$ (ponto de fechamento). Abaixo desse preço, a firma fecha e a oferta é zero. A alternativa (a) inclui a parte irrelevante abaixo do CVMe mínimo; (c) não é a curva de oferta; (d) descreve a curva de demanda que a firma enfrenta, não sua oferta.

??? question "3. No equilíbrio competitivo de longo prazo com livre entrada e saída, o lucro econômico de cada firma é:"
    - (a) Positivo, pois as firmas sobreviventes são eficientes
    - (b) Zero — o preço iguala o custo médio mínimo de longo prazo
    - (c) Negativo para firmas marginais
    - (d) Indeterminado sem informação sobre elasticidades

    ??? success "Resposta"
        **(b)** Com livre entrada, lucros positivos atraem novas firmas, expandindo a oferta e reduzindo o preço até que $p = \text{CMe}_{\min}^{LP}$, eliminando os lucros econômicos. Simetricamente, prejuízos levam à saída. Lucro econômico zero não significa lucro contábil zero — inclui remuneração normal do capital. A alternativa (a) confunde lucro contábil com econômico.

??? question "4. Em uma indústria de custos crescentes, a curva de oferta de longo prazo é:"
    - (a) Horizontal — o preço de equilíbrio de longo prazo é constante
    - (b) Negativamente inclinada
    - (c) Positivamente inclinada — a expansão da indústria eleva os custos dos insumos e, portanto, o preço de equilíbrio
    - (d) Vertical — a quantidade ofertada é fixa no longo prazo

    ??? success "Resposta"
        **(c)** Em indústrias de custos crescentes, a entrada de novas firmas aumenta a demanda por insumos especializados, elevando seus preços e deslocando as curvas de custo das firmas para cima. O preço de equilíbrio de longo prazo sobe com a quantidade. A alternativa (a) descreve indústria de custos constantes; (d) descreve oferta perfeitamente inelástica.

??? question "5. A decisão de fechar (shut down) no curto prazo é diferente da decisão de sair (exit) no longo prazo porque:"
    - (a) Ao fechar, a firma elimina seus custos fixos; ao sair, não
    - (b) Ao fechar, a firma ainda incorre em custos fixos mas evita custos variáveis; ao sair, elimina todos os custos
    - (c) Fechar e sair são decisões idênticas com nomes diferentes
    - (d) A firma sempre prefere fechar a sair

    ??? success "Resposta"
        **(b)** No curto prazo, custos fixos são irrecuperáveis (sunk) — a firma os paga independentemente de operar ou não. A decisão de fechar compara receita com custos variáveis: fecha se $p < \text{CVMe}_{\min}$. No longo prazo, todos os custos são evitáveis: a firma sai se $p < \text{CMe}_{\min}^{LP}$. A alternativa (a) inverte — custos fixos são inescapáveis no curto prazo.

## 📋 Resumo do Capítulo

- A **firma** existe, segundo Coase, porque os custos de transação do mercado podem ser superiores aos custos de coordenação interna. A teoria microeconômica assume que a firma maximiza lucro ($\pi = RT - CT$), embora existam modelos alternativos (maximização de receita, satisficing, teoria gerencial).
- A condição fundamental de **maximização de lucro** exige que a receita marginal iguale o custo marginal ($\mathrm{RMg} = \mathrm{CMg}$), com a condição de segunda ordem $\mathrm{RMg}' < \mathrm{CMg}'$. A relação entre receita marginal e elasticidade-preço da demanda é dada por $\mathrm{RMg} = p(1 + 1/\varepsilon_d)$.
- No **curto prazo**, a firma decide operar se o preço cobre ao menos o custo variável médio mínimo ($p \geq \mathrm{CVMe}_{\min}$); caso contrário, minimiza perdas fechando. No longo prazo, o preço deve cobrir o custo total médio.
- A **função lucro** $\pi^*(p, w, v)$ possui propriedades de convexidade em preços, e o **Lema de Hotelling** permite derivar as funções de oferta e de demanda por insumos diretamente a partir das derivadas da função lucro.
- O **índice de Lerner** $L = (p - \mathrm{CMg})/p = -1/\varepsilon_d$ mede o poder de mercado da firma: em concorrência perfeita ele é zero, e cresce à medida que a firma tem mais poder de fixação de preço.
- No Brasil, a alta taxa de mortalidade das **micro e pequenas empresas** (MPEs) ilustra a teoria: muitas firmas operam com preço abaixo do custo médio no longo prazo, sendo forçadas a encerrar atividades quando os custos fixos vencem.

## 🔑 Conceitos-Chave

<a id="tabela-12-2"></a>

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

<div class="caption-obj" markdown>
**Tabela 12.2 — Conceitos-chave.**
</div>

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

<a id="ex-12-6"></a>**Exercício 12.6.** *(Fácil)*
Uma firma tomadora de preços tem função de custo total \(C(q) = 50 + 2q + 0{,}5q^2\). O preço de mercado é \(p = 12\).

(a) Encontre a quantidade ótima \(q^*\) usando a condição \(p = \mathrm{CMg}\).

(b) Calcule o lucro \(\pi^*\).

(c) Verifique a condição de segunda ordem (CSO): o custo marginal é crescente no ponto ótimo?

(d) Verifique se a firma deve operar (\(p \geq \mathrm{CVMe}_{\min}\)?).

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-6)

---

<a id="ex-12-7"></a>**Exercício 12.7.** *(Fácil — Verdadeiro ou Falso)*
Indique se cada afirmação é verdadeira (V) ou falsa (F), justificando em uma frase:

(a) Uma firma sempre fecha quando o lucro econômico é negativo.

(b) O Lema de Hotelling estabelece que a função de oferta é obtida como \(\partial \pi / \partial p\).

(c) A função lucro é convexa nos preços dos produtos.

(d) Se a demanda da firma for perfeitamente elástica (como no caso competitivo), então \(\mathrm{RMg} = p\).

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-7)

---

<a id="ex-12-8"></a>**Exercício 12.8.** *(Médio)*
Um monopolista enfrenta a demanda inversa \(p = 100 - 2Q\) e possui função de custo total \(C(Q) = 10Q + Q^2\).

(a) Derive a receita marginal \(\mathrm{RMg}(Q)\).

(b) Encontre a quantidade ótima \(Q^*\) e o preço \(p^*\).

(c) Calcule o markup \((p^* - \mathrm{CMg})/p^*\) (índice de Lerner).

(d) Compare com o resultado competitivo (\(p = \mathrm{CMg}\)): qual a perda de peso morto (em termos de quantidade)? Relate com o Capítulo 15 (monopólio).

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-8)

---

<a id="ex-12-9"></a>**Exercício 12.9.** *(Médio — Aplicação Brasileira)*
A Petrobras importa diesel ao preço mundial \(p_w\) e incorre em custo de transporte/logística \(t = 5\) por unidade vendida no mercado doméstico. A demanda doméstica de diesel é \(Q = 500 - 2P\).

(a) Encontre o preço doméstico ótimo \(P^*\), a quantidade \(Q^*\) e o lucro \(\pi^*\) (expresso em termos de \(p_w\)). Suponha que a Petrobras maximiza lucro como um monopolista no mercado doméstico.

(b) Como um aumento de 20% no preço mundial (\(p_w\) passa a \(1{,}2\,p_w\)) afeta \(P^*\) e \(Q^*\)? Calcule a variação percentual de cada um.

(c) Interprete economicamente: por que a variação percentual em \(P^*\) é menor que 20%? Relacione com o índice de Lerner e com o papel do custo de transporte.

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-9)

---

<a id="ex-12-10"></a>**Exercício 12.10.** *(Difícil — Prova Formal)*
Prove que a função lucro \(\pi(p, \mathbf{w})\) é **convexa** no vetor de preços \((p, \mathbf{w})\).

*Roteiro sugerido:*

(a) Use a definição \(\pi(p, \mathbf{w}) = \max_q \{ p \cdot q - C(q, \mathbf{w}) \}\) e escreva \(\pi\) como o máximo sobre uma família de funções lineares em \((p, \mathbf{w})\).

(b) Mostre que o máximo pontual de funções lineares (afins) em \((p, \mathbf{w})\) é convexo, usando a definição de convexidade de função.

(c) Interprete economicamente: o que a convexidade de \(\pi\) implica sobre como a firma reage a variações de preços (lei da oferta e lei da demanda por insumos)?

[:material-arrow-right: Ver solução](../solucoes/cap12.md#ex-12-10)

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

??? pesquisa "Ulyssea, G. (2018). [Firms, Informality, and Development: Theory and Evidence from Brazil](https://doi.org/10.1257/aer.20141745). *American Economic Review*, 108(8), 2015–2047."
    **Pergunta central:** Por que tantas empresas no Brasil operam na informalidade, e quais são as consequências de políticas que tentam reduzi-la? A informalidade empresarial atinge milhões de firmas brasileiras e tem implicações diretas para produtividade, arrecadação e bem-estar. Ulyssea investiga se reduzir a informalidade de firmas (registro formal) necessariamente reduz a informalidade no mercado de trabalho (contratação formal).

    **Método:** O artigo desenvolve um modelo de equilíbrio com firmas heterogêneas que tomam duas decisões: (i) se registram formalmente a empresa (margem extensiva da informalidade) e (ii) se contratam trabalhadores com carteira assinada (margem intensiva). O modelo é estimado com dados brasileiros de firmas e trabalhadores, permitindo simular políticas contrafactuais de fiscalização e redução de custos de formalização.

    **Resultado principal:** O resultado central é surpreendente: as duas margens de informalidade podem mover-se em **direções opostas**. Políticas que reduzem a informalidade empresarial (mais firmas se registrando) não necessariamente reduzem a informalidade trabalhista — e podem até piorá-la. Nem sempre há ganhos de produtividade, produto ou bem-estar. A heterogeneidade das firmas é crucial: firmas muito pequenas que se formalizam enfrentam custos regulatórios que reduzem sua eficiência.

    **Por que isso importa:** Para o Brasil, onde o Simples Nacional e programas como o MEI (Microempreendedor Individual) buscam reduzir a informalidade, o artigo oferece um alerta: formalizar a empresa não é o mesmo que formalizar o emprego. Políticas públicas precisam considerar ambas as margens simultaneamente.

    **Relevância para o capítulo:** O modelo de Ulyssea é fundamentalmente um modelo de **maximização de lucro** com custos de transação regulatórios. A decisão de formalizar é análoga à fronteira da firma de Coase: a firma compara o custo de operar formalmente (impostos, burocracia) com o custo de operar informalmente (risco de multa, exclusão de crédito). A informalidade trabalhista reflete a demanda por insumos sob custos regulatórios — exatamente os temas das Seções 11.1 e 11.6.

??? pesquisa "Dix-Carneiro, R.; Kovak, B. K. (2017). [Trade Liberalization and Regional Dynamics](https://doi.org/10.1257/aer.20161214). *American Economic Review*, 107(10), 2908–2946."
    **Pergunta central:** Como as firmas e os mercados de trabalho regionais se ajustam no longo prazo a choques de preços causados por liberalização comercial? O Brasil realizou uma das maiores aberturas comerciais do mundo no início dos anos 1990, oferecendo um experimento natural para estudar a resposta da oferta e da demanda por insumos.

    **Método:** Os autores combinam dados de censos demográficos brasileiros de 1991 a 2010 com variação regional na exposição a reduções tarifárias, usando uma estratégia de diferenças-em-diferenças. Regiões mais afetadas pela abertura (que tinham indústrias mais protegidas) são comparadas com regiões menos afetadas ao longo de 20 anos.

    **Resultado principal:** O impacto negativo sobre emprego formal e salários foi **persistente e crescente**: após 20 anos, regiões mais afetadas apresentavam queda de emprego formal cerca de três vezes maior do que após 10 anos. O mecanismo envolve mobilidade imperfeita do trabalho, ajuste lento do capital e perda de economias de aglomeração. Firmas em regiões expostas reduziram a produção e a demanda por trabalho de forma prolongada — contrariando modelos que preveem ajuste rápido.

    **Por que isso importa:** O estudo demonstra empiricamente que a "curva de oferta de longo prazo" — que a teoria descreve como perfeitamente elástica — pode levar décadas para se materializar em economias reais com fricções. Para o Brasil, os resultados informam debates sobre política comercial e proteção a setores vulneráveis.

    **Relevância para o capítulo:** O artigo ilustra a distinção entre **curto e longo prazo** da Seção 12.4: no curto prazo, firmas operam com prejuízo (decisão de não fechar), mas no longo prazo, a saída de firmas e a realocação de fatores deveria restaurar o equilíbrio. Dix-Carneiro e Kovak mostram que esse ajuste pode ser extremamente lento. O artigo também documenta empiricamente como a **demanda por insumos** (Seção 12.6) responde a mudanças de preços — exatamente o que o Lema de Hotelling prediz, mas com dinâmica muito mais complexa do que o modelo estático sugere.

??? pesquisa "Olley, G. S.; Pakes, A. (1996). [The Dynamics of Productivity in the Telecommunications Equipment Industry](https://doi.org/10.2307/2171831). *Econometrica*, 64(6), 1263–1297."
    **Pergunta central:** Como as firmas na indústria de equipamentos de telecomunicações dos EUA — submetida a uma grande desregulamentação no início dos anos 1980 — responderam com ajustes de produtividade? E como medir a produtividade total dos fatores (PTF) de forma confiável quando há viés de simultaneidade (as firmas escolhem insumos *sabendo* sua produtividade) e viés de seleção (firmas menos produtivas saem do mercado)?

    **Método:** Olley e Pakes desenvolvem um estimador seminal para funções de produção em painel, usando o investimento como proxy para a produtividade não observada da firma (o chamado "estimador OP"). A ideia central é que firmas mais produtivas investem mais — logo o investimento carrega informação sobre o choque de produtividade corrente. O método controla para: (i) viés de simultaneidade (correlação entre insumos e produtividade inobservada); (ii) viés de seleção (firmas mais produtivas sobrevivem). O artigo combina esse avanço econométrico com análise da dinâmica industrial pós-desregulamentação.

    **Resultado principal:** A PTF da indústria cresceu substancialmente após a desregulamentação, mas os ganhos foram concentrados em firmas maiores que expandiram participação de mercado — e não primariamente em aumentos de produtividade dentro das firmas. A *realocação* de produção para firmas mais eficientes foi o mecanismo dominante. Além disso, firmas que anteciparam saída do mercado (baixa probabilidade de sobrevivência) reduziram investimento mais rapidamente, gerando um viés de seleção que os métodos convencionais não capturam.

    **Por que isso importa:** O estimador OP tornou-se o padrão-ouro para estimação de funções de produção com dados de firmas. A metodologia é extensamente utilizada em pesquisas sobre produtividade no Brasil (por exemplo, pelo IPEA e pela FGV IBRE com dados da PIA — Pesquisa Industrial Anual do IBGE) e em estudos sobre o impacto da abertura comercial sobre a produtividade das firmas brasileiras, como os de Schor (2004).

    **Relevância para o capítulo:** O artigo demonstra empiricamente como as firmas ajustam a demanda por insumos (capital e trabalho) em resposta a mudanças nas condições de lucratividade — o tema central da Seção 12.6. A função de produção estimada pelo método OP é precisamente o objeto que entra na função lucro da Seção 12.5, e os resultados sobre seleção confirmam a importância da decisão de saída (shutdown) da Seção 12.4: firmas com baixa produtividade antecipam o fechamento e reduzem o investimento antes de sair.

??? pesquisa "De Loecker, J.; Warzynski, F. (2012). [Markups and Firm-Level Export Status](https://doi.org/10.1257/aer.102.6.2437). *American Economic Review*, 102(6), 2437–2471."
    **Pergunta central:** Os exportadores cobram markups mais altos do que firmas que vendem apenas no mercado doméstico? E quais mecanismos causam essa diferença — seleção (firmas mais eficientes exportam) ou aprendizado com a exportação? A questão conecta a teoria do markup (derivada da condição \(p = \mathrm{CMg} / (1 - 1/|\varepsilon_d|)\)) à literatura de comércio internacional e competitividade industrial.

    **Método:** Os autores propõem um método para estimar markups no nível da firma a partir de dados de produção, sem necessidade de informação sobre preços de insumos individuais. O método é baseado no Lema de Hotelling aplicado à função custo: a razão entre a receita marginal do insumo variável e a participação desse insumo na receita total identifica o markup. Usando dados de firmas manufatureiras eslovenas (1994–2000), estimam markups por setor e status de exportação.

    **Resultado principal:** Exportadores cobram markups significativamente maiores que não-exportadores (diferença de ~12% em média), e esse diferencial aumenta *após* a entrada no mercado de exportação — sugerindo que o aprendizado com a exportação (acesso a mercados mais competitivos, pressão para inovar) é um mecanismo causal, e não apenas seleção de firmas ex-ante eficientes. Além disso, o markup é heterogêneo entre firmas dentro do mesmo setor, desafiando modelos que assumem markup uniforme.

    **Por que isso importa:** O método de estimação de markups de De Loecker e Warzynski transformou a literatura empírica sobre poder de mercado. Versões estendidas (como De Loecker, Eeckhout & Unger, QJE 2020) documentaram o aumento secular dos markups nas economias avançadas — o que tem implicações diretas para a distribuição funcional da renda e para o debate sobre concentração de mercado. Para o Brasil, o método tem sido aplicado com dados da PIA/IBGE para medir o poder de mercado de firmas industriais em diferentes períodos de abertura e fechamento comercial.

    **Relevância para o capítulo:** O índice de Lerner (Seção 12.3) é o conceito teórico que o método de De Loecker e Warzynski operacionaliza empiricamente. A derivação do markup a partir de dados de produção é uma aplicação direta do Lema de Hotelling (Seção 12.5): as condições de otimalidade da firma (VPMg = preço do insumo) identificam o markup quando combinadas com dados sobre a função de produção e os gastos com insumos.

??? pesquisa "Schor, A. (2004). [Heterogeneous Productivity Response to Tariff Reduction: Evidence from Brazilian Manufacturing Firms](https://doi.org/10.1016/j.jinteco.2003.08.004). *Journal of International Economics*, 63(2), 373–394."
    **Pergunta central:** Como as firmas manufatureiras brasileiras responderam à abertura comercial dos anos 1990 em termos de produtividade total dos fatores? A redução tarifária afetou todas as firmas uniformemente, ou existiu heterogeneidade sistemática — com algumas firmas ganhando eficiência enquanto outras perderam ou saíram?

    **Método:** Schor utiliza dados em painel de firmas industriais brasileiras da Pesquisa Industrial Anual (PIA/IBGE) para o período de 1986–1998, que engloba tanto a fase pré-abertura (proteção elevada) quanto o choque tarifário de 1990–1994 (redução de tarifas médias de ~40% para ~14%). Estima funções de produção pelo método de Olley-Pakes para obter medidas de PTF no nível da firma, e depois analisa como a variação tarifária por setor afetou a PTF, controlando para seleção (entrada e saída de firmas).

    **Resultado principal:** A resposta de produtividade à redução tarifária foi **altamente heterogênea**: firmas com produtividade inicial mais alta tenderam a ganhar mais (ou perder menos) com a abertura — o que é consistente com modelos de seleção onde firmas eficientes sobrevivem e expandem enquanto firmas ineficientes saem. As firmas que continuaram operando apresentaram ganhos médios de PTF, mas esses ganhos foram parcialmente compensados pela saída de firmas de produtividade média, resultando em recomposição do portfólio industrial. O efeito sobre *emprego* foi misto: o ganho de eficiência das sobreviventes não compensou as perdas de emprego das firmas que saíram.

    **Por que isso importa:** O artigo é um dos primeiros estudos empíricos rigorosos sobre o impacto da abertura comercial sobre firmas brasileiras, usando metodologia microeconômica moderna. Ele documenta empiricamente os mecanismos de seleção e realocação que a teoria da firma (maximização de lucro e decisões de entrada/saída) prediz, e fornece evidência para o debate de política industrial sobre proteção tarifária e competitividade.

    **Relevância para o capítulo:** Os resultados de Schor ilustram as condições de entrada, saída e shutdown da Seção 12.4 em um contexto real de choque de preços (queda de \(p\) relativo para firmas que competem com importados mais baratos). Firmas cujo preço caiu abaixo do CMe mínimo de longo prazo saíram do mercado — confirmando a teoria. As firmas que permaneceram ajustaram a demanda por insumos (Seção 12.6) em direção a combinações mais eficientes, respondendo à pressão competitiva exatamente como o modelo de maximização de lucro prevê.

## 📚 Referências do Capítulo

- Coase, Ronald H. 1937. ["The Nature of the Firm."](https://doi.org/10.1111/j.1468-0335.1937.tb00002.x) *Economica* 4 (16): 386–405.
- CONAB. 2023–2026. [*Acompanhamento da Safra Brasileira de Grãos*](https://www.conab.gov.br). Brasília: CONAB.
- De Loecker, Jan, e Frederic Warzynski. 2012. ["Markups and Firm-Level Export Status."](https://doi.org/10.1257/aer.102.6.2437) *American Economic Review* 102 (6): 2437–2471.
- Dix-Carneiro, Rafael, e Brian K. Kovak. 2017. ["Trade Liberalization and Regional Dynamics."](https://doi.org/10.1257/aer.20161214) *American Economic Review* 107 (10): 2908–2946.
- Hart, Oliver, e John Moore. 1990. ["Property Rights and the Nature of the Firm."](https://doi.org/10.1086/261729) *Journal of Political Economy* 98 (6): 1119–1158.
- Hotelling, Harold. 1932. ["Edgeworth's Taxation Paradox and the Nature of Demand and Supply Functions."](https://doi.org/10.1086/254387) *Journal of Political Economy* 40 (5): 577–616.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press.
- Olley, G. Steven, e Ariel Pakes. 1996. ["The Dynamics of Productivity in the Telecommunications Equipment Industry."](https://doi.org/10.2307/2171831) *Econometrica* 64 (6): 1263–1297.
- Schor, Adriana. 2004. ["Heterogeneous Productivity Response to Tariff Reduction: Evidence from Brazilian Manufacturing Firms."](https://doi.org/10.1016/j.jinteco.2003.08.004) *Journal of International Economics* 63 (2): 373–394.
- SEBRAE. 2020. [*Sobrevivência das Empresas no Brasil*](https://www.sebrae.com.br). Brasília: SEBRAE.
- Ulyssea, Gabriel. 2018. ["Firms, Informality, and Development: Theory and Evidence from Brazil."](https://doi.org/10.1257/aer.20141745) *American Economic Review* 108 (8): 2015–2047.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton.
- Williamson, Oliver E. 1975. [*Markets and Hierarchies: Analysis and Antitrust Implications*](https://books.google.com.br/books?id=pg-wAAAAIAAJ). New York: Free Press.
- Williamson, Oliver E. 1985. [*The Economic Institutions of Capitalism*](https://books.google.com/books?id=ma62AAAAIAAJ). New York: Free Press.
