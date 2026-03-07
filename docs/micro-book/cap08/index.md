# Capítulo 8 — Nem Tão Racionais Assim

## Introdução

Nos capítulos anteriores, construímos a teoria da escolha do consumidor sobre dois pilares: preferências racionais (completas e transitivas) e maximização da utilidade esperada sob incerteza. Esses modelos são elegantes, tratáveis e geram previsões poderosas. Mas quão fiéis são ao comportamento real dos seres humanos?

A partir da década de 1970, uma série de experimentos conduzidos por psicólogos e economistas revelou **violações sistemáticas** dos axiomas de racionalidade. Não se trata de erros aleatórios — os desvios seguem padrões previsíveis, enraizados na arquitetura cognitiva humana. Daniel Kahneman e Amos Tversky foram os pioneiros desse programa de pesquisa, que culminou na **Teoria do Prospecto** (Kahneman e Tversky 1979) e rendeu a Kahneman o Prêmio Nobel de Economia em 2002.

Este capítulo apresenta quatro pilares da **economia comportamental**:

1. As **heurísticas e vieses cognitivos** que distorcem nossos julgamentos.
2. A **Teoria do Prospecto**, que substitui a utilidade esperada por uma descrição mais realista das decisões sob risco.
3. O **desconto hiperbólico**, que explica por que sistematicamente priorizamos o presente em detrimento do futuro.
4. Os ***nudges*** — intervenções que aproveitam esses vieses para melhorar as decisões sem restringir a liberdade de escolha.

!!! warning "Viés não é irracionalidade"
    A economia comportamental **não** afirma que os agentes são irracionais. Ela identifica **desvios sistemáticos** em relação ao modelo de racionalidade perfeita e propõe modelos alternativos que descrevem melhor o comportamento observado. Como observam Wilkinson e Klaes (2012), os vieses cognitivos muitas vezes são subprodutos de heurísticas que funcionam bem na maioria das situações cotidianas — são atalhos adaptativos, não falhas de projeto.

---

## 8.1 Heurísticas e Vieses Cognitivos

O cérebro humano processa informações usando **heurísticas** — regras simplificadas que permitem tomar decisões rápidas com informação limitada. Na maioria das vezes, essas regras produzem resultados satisfatórios. Porém, em contextos específicos, elas geram **vieses** — desvios previsíveis em relação ao julgamento estatisticamente correto.

!!! definition "Heurística"
    Uma **heurística** é um atalho cognitivo que simplifica problemas complexos de julgamento e decisão, substituindo uma questão difícil por uma mais acessível. O termo foi popularizado por Tversky e Kahneman (1974), que identificaram três heurísticas fundamentais: representatividade, disponibilidade e ancoragem.

### 8.1.1 Representatividade

A heurística da **representatividade** consiste em julgar a probabilidade de um evento pela semelhança com um estereótipo ou categoria mental, ignorando informações estatísticas relevantes como a taxa base.

!!! example "O problema de Linda"
    Linda tem 31 anos, é solteira, franca e muito inteligente. Na faculdade, foi ativista pelos direitos das minorias e participou de manifestações antinucleares. Qual das alternativas é mais provável?

    **(A)** Linda é caixa de banco.
    **(B)** Linda é caixa de banco e ativista do movimento feminista.

    A maioria dos participantes escolhe (B) — mas isso viola a **regra da conjunção**: a probabilidade de dois eventos simultâneos nunca pode exceder a de cada evento isolado, ou seja, \(P(A \cap B) \leq P(A)\). A descrição de Linda "se parece" mais com uma feminista, e essa semelhança (representatividade) domina o raciocínio probabilístico correto.

Uma consequência importante da representatividade é a **lei dos pequenos números**: a crença de que amostras pequenas devem refletir as propriedades de amostras grandes. Essa crença alimenta a **falácia do jogador** — a expectativa de que, após uma sequência de resultados iguais (por exemplo, cinco "caras" seguidas), o resultado oposto se torne mais provável, mesmo quando os eventos são independentes.

### 8.1.2 Disponibilidade

A heurística da **disponibilidade** consiste em estimar a frequência ou probabilidade de um evento pela facilidade com que exemplos vêm à mente. Eventos vívidos, recentes ou emocionalmente carregados são superestimados; eventos abstratos ou distantes, subestimados.

!!! example "Risco de avião vs. carro"
    Após um acidente aéreo amplamente noticiado, a percepção de risco de voar aumenta significativamente — mesmo que, estatisticamente, o transporte aéreo seja muito mais seguro por quilômetro percorrido do que o rodoviário. No Brasil, os dados da ANTT e da ANAC indicam que a taxa de fatalidade por passageiro-quilômetro no transporte rodoviário é dezenas de vezes superior à do transporte aéreo. A cobertura midiática intensa de acidentes aéreos torna esses eventos cognitivamente "disponíveis", distorcendo a avaliação de risco.

### 8.1.3 Ancoragem

A **ancoragem** ocorre quando um valor inicial — mesmo que arbitrário e irrelevante — influencia sistematicamente a estimativa final de uma quantidade desconhecida.

!!! example "O experimento da roda da fortuna"
    Tversky e Kahneman (1974) pediram a participantes que estimassem a porcentagem de países africanos nas Nações Unidas. Antes de responder, cada participante girava uma roda da fortuna que parava em um número aleatório (10 ou 65). Os participantes que viram o número 10 estimaram, em média, 25%; os que viram 65 estimaram 45%. O número da roda — completamente irrelevante para a questão — funcionou como **âncora**, puxando as estimativas em sua direção.

A ancoragem tem implicações importantes para a economia: negociações salariais, precificação de imóveis e até decisões judiciais são influenciadas por valores-âncora iniciais. Estudos mostram que o preço de listagem de um imóvel funciona como âncora mesmo para avaliadores profissionais (Northcraft e Neale 1987).

!!! idea "Intuição Econômica 💡"
    As três heurísticas — representatividade, disponibilidade e ancoragem — não são "defeitos" do raciocínio humano. São atalhos que evoluíram porque funcionam bem em ambientes naturais, onde decisões precisam ser rápidas e a informação é incompleta. O problema surge quando esses atalhos são aplicados a contextos modernos — mercados financeiros, decisões de saúde, políticas públicas — para os quais não foram "calibrados" pela evolução.

### 8.1.4 Excesso de confiança

O **excesso de confiança** (*overconfidence*) manifesta-se de várias formas: superestimação das próprias habilidades, calibração inadequada de intervalos de confiança e a ilusão de controle sobre eventos aleatórios. Quando perguntados, a maioria dos motoristas se declara "acima da média" — uma impossibilidade estatística. Investidores excessivamente confiantes tendem a negociar com frequência excessiva, reduzindo seus retornos líquidos (Barber e Odean 2001).

!!! example "Box Brasil — Efeito disposição na B3"
    O **efeito disposição** — a tendência a vender ações vencedoras cedo demais e manter ações perdedoras por tempo demais — é uma manifestação conjunta de aversão à perda e excesso de confiança. Estudos com dados de investidores pessoa física na B3 (antiga BM&FBovespa) documentam esse padrão de forma robusta. Estudos empíricos usando dados de corretoras brasileiras encontraram que investidores individuais realizam ganhos com frequência significativamente maior do que realizam perdas. Esse comportamento é custoso: as ações vendidas (vencedoras) tendem a ter desempenho futuro superior ao das ações mantidas (perdedoras), gerando retornos líquidos menores para o investidor.

Com as heurísticas e vieses mapeados, passamos agora à teoria que reformula a análise da decisão sob risco incorporando esses fenômenos de forma estruturada.

---

## 8.2 Teoria do Prospecto

A **utilidade esperada** de Von Neumann e Morgenstern (Capítulo 7) pressupõe que os agentes avaliam resultados em termos de riqueza final e ponderam probabilidades linearmente. A Teoria do Prospecto, proposta por Kahneman e Tversky (1979) e refinada em sua versão cumulativa (Tversky e Kahneman 1992), substitui essas premissas por duas inovações fundamentais: uma **função valor** definida sobre ganhos e perdas relativos a um ponto de referência, e uma **função de ponderação de probabilidades** que distorce probabilidades objetivas.

### 8.2.1 O Paradoxo de Allais

Antes da Teoria do Prospecto, Maurice Allais (1953) já havia demonstrado uma violação elegante da utilidade esperada. Considere os seguintes problemas de decisão:

!!! example "Paradoxo de Allais"
    **Problema 1:** Escolha entre:

    - **A:** Ganhar R\$ 1.000.000 com certeza.
    - **B:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); R\$ 1.000.000 com probabilidade \(0{,}89\); nada com probabilidade \(0{,}01\).

    **Problema 2:** Escolha entre:

    - **C:** Ganhar R\$ 1.000.000 com probabilidade \(0{,}11\); nada com probabilidade \(0{,}89\).
    - **D:** Ganhar R\$ 5.000.000 com probabilidade \(0{,}10\); nada com probabilidade \(0{,}90\).

    A maioria das pessoas escolhe **A** no Problema 1 e **D** no Problema 2. Mas essa combinação viola o axioma da independência da utilidade esperada. Se \(A \succ B\), então pela UE teríamos \(C \succ D\) — mas o padrão observado é o contrário. A preferência por A reflete o **efeito certeza**: a sobrevalorização de resultados certos em relação a resultados meramente prováveis.

### 8.2.2 A função valor

A Teoria do Prospecto propõe que os agentes avaliam resultados como **ganhos ou perdas** relativos a um **ponto de referência** (tipicamente o *status quo*), e não em termos de riqueza absoluta. A **função valor** \(v(x)\) possui três propriedades fundamentais:

1. **Dependência de referência:** o portador de valor é a variação \(x\) em relação ao ponto de referência, não o nível absoluto de riqueza.
2. **Concavidade para ganhos, convexidade para perdas:** os agentes são avessos ao risco no domínio dos ganhos e propensos ao risco no domínio das perdas.
3. **Aversão à perda:** a função é mais íngreme para perdas do que para ganhos — perder R\$ 100 dói mais do que ganhar R\$ 100 agrada.

!!! definition "Aversão à perda"
    A **aversão à perda** é a assimetria na avaliação de ganhos e perdas: o impacto psicológico de uma perda de magnitude \(|x|\) é maior do que o de um ganho de mesma magnitude. Formalmente, \(|v(-x)| > v(x)\) para todo \(x > 0\). O coeficiente de aversão à perda \(\lambda = |v(-x)|/v(x)\) é tipicamente estimado em torno de \(2{,}0\) a \(2{,}5\) — ou seja, perdas "pesam" cerca de duas vezes mais que ganhos equivalentes.

!!! idea "Intuição Econômica 💡"
    A aversão à perda explica por que muitas pessoas rejeitam apostas favoráveis. Considere uma moeda justa que paga R\$ 150 em caso de cara e cobra R\$ 100 em caso de coroa. O valor esperado é positivo (\(+\)R\$ 25), mas a dor de perder R\$ 100 supera o prazer de ganhar R\$ 150 quando \(\lambda > 1{,}5\). Com \(\lambda \approx 2{,}25\), a perda potencial "pesa" R\$ 225 em termos psicológicos — mais do que os R\$ 150 do ganho.

Uma especificação paramétrica comum é:

\[
v(x) =
\begin{cases}
x^{\alpha} & \text{se } x \geq 0 \\
-\lambda(-x)^{\beta} & \text{se } x < 0
\end{cases}
\]

onde \(\alpha, \beta \in (0,1)\) capturam a concavidade/convexidade e \(\lambda > 1\) captura a aversão à perda. As estimativas originais de Tversky e Kahneman (1992) são \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\).

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/funcao-valor-pt.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
</div>

??? example "Exercício Resolvido 8.1 — Função valor da Teoria do Prospecto"
    **Enunciado:** Usando a função valor paramétrica da Teoria do Prospecto com \(\alpha = \beta = 0{,}88\) e \(\lambda = 2{,}25\), calcule o valor subjetivo dos seguintes resultados: \(v(100)\), \(v(-100)\), \(v(250)\) e \(v(-250)\). Em seguida, verifique a propriedade de aversão à perda e a sensibilidade decrescente.

    **Dados:** \(\alpha = 0{,}88\), \(\beta = 0{,}88\), \(\lambda = 2{,}25\).

    **Resolução:**

    **Passo 1 — Calcular \(v(x)\) para cada resultado**

    Para ganhos (\(x \geq 0\)): \(v(x) = x^{0{,}88}\).

    - \(v(100) = 100^{0{,}88} = e^{0{,}88 \ln 100} = e^{0{,}88 \times 4{,}605} = e^{4{,}052} \approx 57{,}54\)
    - \(v(250) = 250^{0{,}88} = e^{0{,}88 \times 5{,}521} = e^{4{,}859} \approx 128{,}82\)

    Para perdas (\(x < 0\)): \(v(x) = -\lambda(-x)^{0{,}88}\).

    - \(v(-100) = -2{,}25 \times 100^{0{,}88} \approx -2{,}25 \times 57{,}54 = -129{,}47\)
    - \(v(-250) = -2{,}25 \times 250^{0{,}88} \approx -2{,}25 \times 128{,}82 = -289{,}85\)

    **Passo 2 — Verificar a aversão à perda**

    \(|v(-100)| = 129{,}47 > 57{,}54 = v(100)\). Portanto, \(|v(-100)|/v(100) = 2{,}25 = \lambda\). A perda de R\$ 100 é sentida como 2,25 vezes mais intensa do que o ganho de R\$ 100.

    **Passo 3 — Verificar a sensibilidade decrescente**

    Para ganhos: o acréscimo de R\$ 100 para R\$ 250 (+ R\$ 150) gera aumento de valor de \(128{,}82 - 57{,}54 = 71{,}28\). Se a função fosse linear, o aumento seria proporcional: \(57{,}54 \times 1{,}5 = 86{,}31\). Como \(71{,}28 < 86{,}31\), confirma-se a concavidade (sensibilidade decrescente para ganhos).

    **Resultado:** A função valor atribui à perda de R\$ 100 um impacto 2,25 vezes maior que ao ganho de R\$ 100, e exibe sensibilidade decrescente tanto para ganhos quanto para perdas.

    **Interpretação econômica:** Essa assimetria ajuda a explicar por que consumidores brasileiros resistem a reajustes de preço (percebidos como perda) mas reagem pouco a promoções equivalentes (percebidas como ganho). No mercado de ações, ela fundamenta o efeito disposição documentado entre investidores da B3.

### 8.2.3 Ponderação de probabilidades

Na utilidade esperada, as probabilidades entram linearmente na função objetivo. Na Teoria do Prospecto, as probabilidades objetivas \(p\) são transformadas por uma **função de ponderação** \(w(p)\) com formato de S invertido:

\[
w(p) = \frac{p^{\gamma}}{(p^{\gamma} + (1-p)^{\gamma})^{1/\gamma}}
\]

onde \(\gamma \in (0,1)\) controla o grau de distorção. As propriedades principais são:

- **Sobrevalorização de probabilidades pequenas:** \(w(p) > p\) para \(p\) pequeno — o que explica a compra de bilhetes de loteria e seguros contra catástrofes.
- **Subvalorização de probabilidades moderadas a altas:** \(w(p) < p\) para \(p\) moderado a alto.
- **Subcerteza:** \(w(p) + w(1-p) < 1\) — as ponderações não somam 1, refletindo uma aversão global à incerteza.

O valor estimado por Tversky e Kahneman (1992) é \(\gamma = 0{,}61\).

!!! idea "Intuição Econômica 💡"
    A ponderação de probabilidades resolve um paradoxo do comportamento humano: **a mesma pessoa** compra bilhete de loteria (sobrevalorizando uma probabilidade minúscula de ganho) **e** contrata seguro contra catástrofe (sobrevalorizando uma probabilidade minúscula de perda). Sob utilidade esperada linear em probabilidades, essas duas atitudes são inconsistentes. Sob a Teoria do Prospecto, ambas decorrem naturalmente da sobrevalorização de eventos raros combinada com a assimetria da função valor.

!!! example "Box Brasil — A Mega-Sena e a sobrevalorização de probabilidades pequenas"
    A probabilidade de acertar as seis dezenas da Mega-Sena é de aproximadamente 1 em 50 milhões. Mesmo assim, milhões de brasileiros apostam regularmente. O valor esperado de uma aposta de R\$ 5,00 é tipicamente negativo (parte da arrecadação financia programas sociais via Caixa Econômica Federal). Sob utilidade esperada com probabilidades lineares, apostar seria irracional para qualquer agente avesso ao risco. A Teoria do Prospecto oferece uma explicação: a função de ponderação transforma a probabilidade objetiva minúscula (\(p \approx 0{,}00000002\)) em um peso decisório substancialmente maior, tornando a aposta subjetivamente atraente. O prazer antecipatório de imaginar o ganho faz parte do "produto" consumido — algo que o modelo neoclássico não captura.

### 8.2.4 Efeito dotação e efeito framing

Duas consequências diretas da Teoria do Prospecto têm grande relevância econômica:

**Efeito dotação.** A aversão à perda implica que as pessoas exigem mais para abrir mão de um objeto que já possuem do que estariam dispostas a pagar para adquiri-lo. Esse hiato entre a **disposição a aceitar** (WTA) e a **disposição a pagar** (WTP) contradiz a previsão da teoria neoclássica de que WTA \(\approx\) WTP para bens sem efeito renda significativo.

!!! example "Canecas de Kahneman, Knetsch e Thaler"
    No experimento clássico de Kahneman, Knetsch e Thaler (1990), metade dos participantes recebeu uma caneca de café da universidade. Quando questionados sobre o preço mínimo para vendê-la, os "donos" pediram em média US\$ 7,12. Os "compradores" (que não receberam a caneca) ofereceram em média US\$ 2,87. A simples posse — a dotação — mais que dobrou a valoração do objeto.

!!! example "Box Brasil — Efeito dotação no mercado imobiliário"
    O mercado imobiliário brasileiro oferece uma ilustração vívida do efeito dotação. Dados do índice FipeZap mostram que, em períodos de desaceleração econômica, os preços de venda de imóveis residenciais resistem a cair mesmo quando o volume de transações despenca. Proprietários que compraram seus imóveis a preços elevados relutam em vender abaixo do preço de aquisição — o ponto de referência —, preferindo manter o imóvel fora do mercado por meses ou anos. Essa rigidez de preços para baixo é difícil de explicar pela teoria neoclássica pura, mas é uma previsão natural da aversão à perda: vender abaixo do preço de compra é codificado como "perda", e a dor dessa perda supera o benefício racional de liquidar o ativo e realocar o capital.

**Efeito framing.** A forma como uma decisão é apresentada afeta sistematicamente as escolhas, mesmo quando as opções são logicamente equivalentes.

!!! example "O problema das doenças asiáticas"
    Tversky e Kahneman (1981) apresentaram o seguinte cenário: uma doença incomum ameaça matar 600 pessoas. Dois programas são propostos:

    **Frame positivo (vidas salvas):**

    - Programa A: 200 pessoas serão salvas com certeza.
    - Programa B: \(1/3\) de probabilidade de salvar 600 e \(2/3\) de ninguém ser salvo.

    **Frame negativo (mortes):**

    - Programa C: 400 pessoas morrerão com certeza.
    - Programa D: \(1/3\) de probabilidade de ninguém morrer e \(2/3\) de 600 morrerem.

    Matematicamente, A = C e B = D. Mas 72% escolheram A no frame positivo (aversão ao risco no domínio dos ganhos) e 78% escolheram D no frame negativo (propensão ao risco no domínio das perdas) — exatamente como prevê a Teoria do Prospecto.

A próxima seção estende a análise comportamental para o domínio intertemporal, mostrando que a forma como avaliamos custos e benefícios futuros também se desvia sistematicamente do modelo padrão.

---

## 8.3 Escolha Intertemporal e Desconto Hiperbólico

### 8.3.1 O Modelo de Utilidade Descontada

O modelo padrão de escolha intertemporal — o **Modelo de Utilidade Descontada** (DUM), proposto por Samuelson (1937) — assume que os agentes avaliam fluxos de utilidade futura usando uma taxa de desconto **constante** \(\delta \in (0,1)\):

\[
U_0 = \sum_{t=0}^{T} \delta^t \, u(c_t)
\]

O desconto exponencial implica **consistência temporal**: se o agente prefere a opção A à B quando ambas ocorrem no futuro, essa preferência se mantém quando o momento da decisão se aproxima. Formalmente, se \(u(A)\) em \(t\) é preferido a \(u(B)\) em \(t+k\), então a mesma preferência vale para qualquer data de avaliação anterior.

### 8.3.2 Anomalias do desconto exponencial

Wilkinson e Klaes (2012) e Frederick, Loewenstein e O'Donoghue (2002) documentam diversas anomalias que o desconto exponencial não consegue explicar:

1. **Taxas de desconto decrescentes com o horizonte.** Em experimentos, a taxa de desconto implícita entre hoje e amanhã é muito maior do que entre daqui a 30 e 31 dias — embora o intervalo seja o mesmo.

2. **Efeito magnitude.** Valores grandes são descontados a taxas menores do que valores pequenos.

3. **Assimetria ganhos-perdas.** Ganhos futuros são descontados mais fortemente do que perdas futuras.

4. **Preferências reversíveis.** Um agente pode preferir R\$ 100 hoje a R\$ 110 amanhã, mas preferir R\$ 110 em 31 dias a R\$ 100 em 30 dias — uma inversão que o desconto exponencial não permite.

!!! example "As maçãs de Thaler"
    Richard Thaler propôs o seguinte experimento mental: a maioria das pessoas prefere **1 maçã hoje** a **2 maçãs amanhã**, mas prefere **2 maçãs em 51 dias** a **1 maçã em 50 dias**. Essa inversão de preferência revela uma taxa de desconto decrescente — alta para o presente imediato, baixa para o futuro distante.

### 8.3.3 Desconto quasi-hiperbólico

Para capturar o viés do presente sem abandonar completamente a tratabilidade do modelo exponencial, Laibson (1997) — com base em Phelps e Pollak (1968) — propôs o modelo de desconto **quasi-hiperbólico**.

!!! definition "Desconto quasi-hiperbólico (β, δ)"
    O modelo de desconto **quasi-hiperbólico** modifica o DUM introduzindo um parâmetro adicional \(\beta \in (0,1)\) que captura o **viés do presente**:

    \[
    U_0 = u(c_0) + \beta \sum_{t=1}^{T} \delta^t \, u(c_t)
    \]

    O fator \(\beta\) aplica um desconto **extra** a todos os períodos futuros em relação ao presente. Quando \(\beta = 1\), o modelo se reduz ao desconto exponencial. Valores típicos estimados na literatura são \(\beta \approx 0{,}70\) e \(\delta \approx 0{,}99\).

Os **fatores de desconto** para os períodos futuros são:

| Período | Exponencial | Quasi-hiperbólico |
|---|---|---|
| \(t = 0\) | \(1\) | \(1\) |
| \(t = 1\) | \(\delta\) | \(\beta\delta\) |
| \(t = 2\) | \(\delta^2\) | \(\beta\delta^2\) |
| \(t = s\) | \(\delta^s\) | \(\beta\delta^s\) |

A diferença crucial é que a queda no fator de desconto entre \(t=0\) e \(t=1\) é proporcionalmente muito maior (\(\beta\delta\) vs. 1) do que entre quaisquer dois períodos futuros consecutivos (\(\beta\delta^{t+1}/\beta\delta^t = \delta\)). Isso gera o viés do presente e permite preferências reversíveis.

!!! idea "Intuição Econômica 💡"
    O modelo \((\beta, \delta)\) captura uma intuição simples: **o futuro como um todo é descontado em relação ao presente** (pelo fator \(\beta\)), mas **dentro do futuro**, os períodos são descontados normalmente (pelo fator \(\delta\)). É como se houvesse uma "fronteira psicológica" entre agora e tudo que vem depois. Esse salto discreto explica por que as pessoas conseguem planejar com paciência para o futuro distante ("vou começar a dieta na segunda"), mas cedem à tentação quando o futuro se torna presente ("hoje tem bolo no escritório").

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/funcoes-desconto.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
</div>

??? example "Exercício Resolvido 8.2 — Desconto quasi-hiperbólico e preferências reversíveis"
    **Enunciado:** Um consumidor com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}95)\) e utilidade linear \(u(x) = x\) pode escolher entre dois bônus salariais: **Bônus A**, que paga R\$ 1.000 no mês 6, e **Bônus B**, que paga R\$ 1.200 no mês 7. (a) Qual bônus o consumidor prefere quando avaliado em \(t = 0\)? (b) Qual bônus ele prefere quando avaliado em \(t = 6\) (isto é, quando o pagamento de A é iminente)? (c) Essa preferência é consistente ao longo do tempo?

    **Dados:** \(\beta = 0{,}70\), \(\delta = 0{,}95\), \(u(x) = x\).

    **Resolução:**

    **Passo 1 — Avaliação em \(t = 0\)**

    Ambos os bônus estão no futuro (\(t \geq 1\)), então o fator \(\beta\) se aplica a ambos:

    - \(U_0(A) = \beta \delta^6 \times 1000 = 0{,}70 \times 0{,}95^6 \times 1000 = 0{,}70 \times 0{,}7351 \times 1000 = 514{,}57\)
    - \(U_0(B) = \beta \delta^7 \times 1200 = 0{,}70 \times 0{,}95^7 \times 1200 = 0{,}70 \times 0{,}6983 \times 1200 = 586{,}59\)

    Como \(U_0(B) > U_0(A)\), o consumidor prefere **B** em \(t = 0\).

    **Passo 2 — Avaliação em \(t = 6\)**

    Agora o Bônus A é imediato (\(t = 0\) na perspectiva do mês 6) e o Bônus B está 1 período adiante:

    - \(U_6(A) = u(1000) = 1000\)
    - \(U_6(B) = \beta \delta^1 \times 1200 = 0{,}70 \times 0{,}95 \times 1200 = 798{,}00\)

    Como \(U_6(A) > U_6(B)\), o consumidor agora prefere **A** em \(t = 6\).

    **Passo 3 — Diagnóstico de inconsistência**

    As preferências se inverteram: B em \(t = 0\), mas A em \(t = 6\). Essa **reversão de preferência** é impossível sob desconto exponencial (onde \(\beta = 1\)), mas é o resultado natural do viés do presente \((\beta < 1)\).

    **Resultado:** O consumidor planeja escolher B, mas quando chega o mês 6, escolhe A. A preferência é **temporalmente inconsistente**.

    **Interpretação econômica:** Esse padrão é análogo ao comportamento observado em decisões de poupança previdenciária no Brasil: o trabalhador planeja aderir ao PGBL/VGBL "no mês que vem", mas quando o mês chega, o custo imediato (redução do salário líquido) domina o benefício futuro (aposentadoria mais confortável). A inconsistência temporal justifica políticas de adesão automática como a da Funpresp.

### 8.3.4 Autocontrole e estratégias de compromisso

Se os agentes reconhecem seu viés do presente, podem adotar **estratégias de compromisso** (*commitment devices*) para restringir seu comportamento futuro:

- **Poupança automática com desconto em folha:** ao aderir a um plano de previdência com desconto automático, o agente remove a decisão de poupar do âmbito da tentação cotidiana.
- **Metas públicas:** declarar publicamente uma meta (como parar de fumar) cria um custo reputacional para o descumprimento.
- **Restrições físicas:** o despertador Clocky, que foge da mesa de cabeceira quando o alarme toca, é um exemplo literal de compromisso — o "eu da noite" sabe que o "eu da manhã" vai querer apertar o soneca.

Essa tensão entre o eu presente e o eu futuro pode ser modelada como um **jogo intrapessoal** entre múltiplos "eus" sequenciais (Thaler e Shefrin 1981). O eu do período \(t\) maximiza a utilidade quasi-hiperbólica, mas sabe que o eu do período \(t+1\) fará o mesmo — e cada "versão futura" terá seu próprio viés do presente.

Agentes que reconhecem sua inconsistência temporal são chamados **sofisticados**; agentes que (erroneamente) acreditam que suas preferências futuras serão consistentes são chamados **ingênuos** (*naïfs*). Sofisticados buscam compromissos; ingênuos procrastinam repetidamente.

!!! example "Box Brasil — Crédito rotativo e viés do presente"
    O crédito rotativo do cartão de crédito no Brasil cobra taxas de juros que figuram entre as mais altas do mundo — segundo dados do Banco Central do Brasil, a taxa média do rotativo superou 400% ao ano em diversos momentos recentes. Muitos consumidores, ao optar por pagar apenas o valor mínimo da fatura, subestimam o custo total acumulado das parcelas futuras. Esse comportamento é consistente com o desconto quasi-hiperbólico: o alívio imediato de não pagar a fatura integral (benefício no período \(t = 0\)) é sobrevalorizado em relação ao custo dos juros compostos nos períodos seguintes (descontados por \(\beta\delta^t\) com \(\beta < 1\)). A Lei do Superendividamento (Lei nº 14.181/2021) reconheceu implicitamente esse padrão ao criar mecanismos de renegociação e preservação do mínimo existencial.

---

## 8.4 Nudges e Arquitetura de Escolhas

As seções anteriores mostraram que os agentes cometem erros sistemáticos — heurísticas que distorcem julgamentos, aversão à perda que deforma avaliações e viés do presente que sabota planos de longo prazo. Diante desses desvios, surge uma questão de política pública: é possível **ajudar** as pessoas a tomar melhores decisões sem restringir sua liberdade?

### 8.4.1 Paternalismo libertário

!!! definition "Nudge"
    Um **nudge** é qualquer aspecto da **arquitetura de escolha** que altera o comportamento das pessoas de forma previsível, sem proibir nenhuma opção nem alterar significativamente os incentivos econômicos. Para contar como nudge, a intervenção deve ser fácil e barata de evitar (Thaler e Sunstein 2008).

A filosofia por trás dos nudges é o **paternalismo libertário**: libertário porque preserva a liberdade de escolha; paternalista porque direciona as decisões no sentido do bem-estar do próprio agente (conforme julgado por ele mesmo em condições de reflexão cuidadosa).

### 8.4.2 Ferramentas de nudging

As principais ferramentas de nudging exploram os vieses documentados nas seções anteriores:

**Default options (opções-padrão).** A inércia e o viés do *status quo* fazem com que a maioria das pessoas aceite a opção pré-selecionada. Mudar o *default* de "opt-in" para "opt-out" pode ter efeitos dramáticos.

!!! example "Save More Tomorrow (SMarT)"
    O programa *Save More Tomorrow*, desenhado por Thaler e Benartzi (2004), convida trabalhadores a se comprometer, **hoje**, a destinar uma fração de seus **aumentos salariais futuros** à poupança previdenciária. Como o sacrifício é futuro (e não imediato), a taxa de adesão é alta. Além disso, a aversão à perda é atenuada porque o trabalhador nunca vê sua renda líquida diminuir — apenas cresce menos. Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais.

**Framing e simplificação.** A forma como as informações são apresentadas importa: rótulos nutricionais em semáforo (verde/amarelo/vermelho) são mais eficazes do que tabelas numéricas detalhadas; cartas de cobrança com linguagem simplificada aumentam a taxa de pagamento de impostos.

**Feedback e saliência.** Tornar as consequências de uma decisão mais visíveis no momento da escolha — como mostrar o consumo de energia em tempo real — ajuda a alinhar o comportamento com as intenções de longo prazo.

**Normas sociais.** Informar as pessoas sobre o comportamento de seus pares ("90% dos seus vizinhos pagam o IPTU em dia") explora a tendência à conformidade social e pode ser mais eficaz do que apelos racionais ou ameaças de multa.

??? example "Exercício Resolvido 8.3 — Impacto do default na adesão previdenciária"
    **Enunciado:** Uma empresa com 1.000 funcionários adota um plano de previdência complementar. Sob o regime de adesão voluntária (*opt-in*), a taxa de adesão é de 40%. A empresa considera migrar para adesão automática (*opt-out*). Suponha que, com *opt-out*, 85% dos funcionários permanecem no plano, e que a contribuição média mensal é de R\$ 300. (a) Calcule o aumento na contribuição mensal agregada. (b) Se 20% dos funcionários que permaneceram por inércia teriam preferido não participar (revelando heterogeneidade de preferências), quantos funcionários são "nudgeados" em direção contrária às suas preferências?

    **Dados:** 1.000 funcionários, adesão *opt-in* = 40%, adesão *opt-out* = 85%, contribuição média = R\$ 300/mês.

    **Resolução:**

    **Passo 1 — Contribuição agregada sob cada regime**

    - *Opt-in*: \(1000 \times 0{,}40 \times 300 = \text{R\$ }120.000\)/mês.
    - *Opt-out*: \(1000 \times 0{,}85 \times 300 = \text{R\$ }255.000\)/mês.
    - Aumento: \(255.000 - 120.000 = \text{R\$ }135.000\)/mês (+112,5%).

    **Passo 2 — Funcionários "nudgeados" na direção errada**

    Novos aderentes por inércia: \(850 - 400 = 450\) funcionários.
    Desses, 20% prefeririam não participar: \(450 \times 0{,}20 = 90\) funcionários.

    **Resultado:** A mudança de *default* eleva a contribuição agregada em R\$ 135.000/mês, mas 90 funcionários (9% do total) permanecem no plano contra suas preferências reveladas.

    **Interpretação econômica:** O exercício ilustra o *trade-off* fundamental dos nudges: o ganho agregado é substancial, mas não é isento de custos. Os 90 funcionários "nudgeados" na direção errada representam a heterogeneidade de preferências que limita a eficácia de qualquer nudge universal. Políticas bem desenhadas minimizam esse custo tornando o *opt-out* simples e visível — como faz a Funpresp no serviço público federal brasileiro.

### 8.4.3 Limites e críticas

A economia comportamental e os nudges não são panaceias:

- **Heterogeneidade de preferências.** O nudge "certo" para a maioria pode prejudicar uma minoria com preferências legítimas diferentes.
- **Manipulação.** A fronteira entre nudge benevolente e manipulação (*sludge*) depende da intenção do arquiteto de escolhas — e essa intenção nem sempre é transparente.
- **Persistência.** Muitos nudges perdem eficácia com o tempo, à medida que os agentes se habituam.
- **Problemas estruturais.** Nudges são complementos, não substitutos, de políticas públicas robustas. Nenhum nudge compensa salários insuficientes ou ausência de acesso a serviços financeiros.

!!! example "Box Brasil — Nudges em políticas públicas federais"
    O governo federal brasileiro tem incorporado gradualmente princípios de economia comportamental em políticas públicas. A rotulagem frontal com **lupa de advertência** da Anvisa (2022), para alimentos ricos em açúcar, gordura saturada e sódio, é um nudge clássico de saliência: destaca a informação mais relevante no momento da decisão de compra. O Programa Nacional de Imunizações (PNI) utiliza lembretes por SMS e notificações via aplicativo do SUS para aumentar a adesão a campanhas de vacinação — um exemplo de feedback e saliência. No sistema financeiro, o *Open Finance* do Banco Central (implementado a partir de 2021) facilita a comparação de produtos financeiros entre instituições, reduzindo a ancoragem ao banco de relacionamento e combatendo a inércia do *status quo* via portabilidade simplificada de crédito.

---

!!! tip "Exercícios do Capítulo 8"

    **Exercício 8.1.** Um investidor avalia duas opções: (A) ganhar R\$ 500 com certeza; (B) ganhar R\$ 1.000 com probabilidade \(0{,}50\). Sob utilidade esperada com função de utilidade côncava, o investidor prefere A. Agora considere: (C) perder R\$ 500 com certeza; (D) perder R\$ 1.000 com probabilidade \(0{,}50\). Sob a Teoria do Prospecto, qual a escolha provável em cada par? Explique usando as propriedades da função valor.

    **Exercício 8.2.** Usando a função valor paramétrica \(v(x) = x^{0{,}88}\) para ganhos e \(v(x) = -2{,}25 \cdot (-x)^{0{,}88}\) para perdas, calcule \(v(100)\), \(v(-100)\), \(v(200)\) e \(v(-200)\). Verifique que \(|v(-100)| > v(100)\) e interprete economicamente.

    **Exercício 8.3.** Um consumidor com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}99)\) avalia dois planos de poupança. O Plano X exige um depósito de R\$ 100 **hoje** e paga R\$ 150 em 1 ano. O Plano Y exige um depósito de R\$ 100 **em 6 meses** e paga R\$ 150 em 18 meses. (a) Calcule a utilidade descontada de cada plano sob desconto quasi-hiperbólico, assumindo \(u(x) = x\). (b) O consumidor prefere Y hoje, mas quando chegar o mês 6, ele vai aderir? Explique a diferença entre agentes sofisticados e ingênuos.

    **Exercício 8.4.** Uma empresa oferece dois planos de academia: (A) pagamento mensal de R\$ 100; (B) pagamento anual antecipado de R\$ 960 (equivalente a R\$ 80/mês). DellaVigna e Malmendier (2006) mostram que muitos consumidores escolhem (A) e depois frequentam a academia menos de 5 vezes por mês, pagando mais de R\$ 20 por visita — quando poderiam comprar passes avulsos por R\$ 12. Explique esse comportamento usando: (i) excesso de confiança sobre o uso futuro; (ii) viés do presente.

    **Exercício 8.5.** O governo está considerando duas políticas para aumentar a poupança previdenciária: (i) subsídio fiscal de 10% sobre contribuições voluntárias; (ii) adesão automática com *opt-out*. Com base na literatura comportamental, qual política provavelmente terá maior impacto sobre a taxa de poupança agregada? Justifique.

    **Exercício 8.6.** Explique por que o Paradoxo de Allais viola o axioma da independência da utilidade esperada. Mostre formalmente que as preferências \(A \succ B\) e \(D \succ C\) são inconsistentes com a existência de uma função de utilidade de Von Neumann–Morgenstern.

---

## Vem, ANPEC! 🏆

!!! info "Nota sobre questões ANPEC"
    A economia comportamental é um campo relativamente recente na microeconomia e, até o momento, **não aparece como tópico explícito nas provas da ANPEC de Microeconomia** (período 2010–2025). As questões de decisão sob incerteza na ANPEC concentram-se na teoria da utilidade esperada, aversão ao risco e equivalente de certeza — temas tratados no Capítulo 7. Mantemos esta seção como referência para edições futuras, caso o tema passe a ser cobrado.

---

## Apêndice: A Pesquisa em Ação 🔬

??? abstract "Kahneman, Daniel; Tversky, Amos. (1979). [Prospect Theory: An Analysis of Decision under Risk](https://doi.org/10.2307/1914185). *Econometrica*, 47(2): 263–291. DOI: [10.2307/1914185](https://doi.org/10.2307/1914185)"

    **A pergunta**

    O modelo de utilidade esperada de Von Neumann e Morgenstern era, até os anos 1970, o arcabouço dominante para analisar decisões sob risco. Mas uma série de experimentos revelava violações sistemáticas de seus axiomas — o paradoxo de Allais, o efeito certeza, a sensibilidade à forma de apresentação dos problemas. Kahneman e Tversky perguntaram: é possível construir um modelo alternativo que descreva melhor o comportamento observado, preservando poder preditivo?

    **Como os autores responderam**

    O artigo combina evidência experimental com construção teórica. Kahneman e Tversky apresentaram uma série de problemas de escolha a estudantes e docentes universitários, documentando padrões robustos de violação da utilidade esperada: o efeito certeza (sobrevalorização de resultados certos), o efeito reflexão (reversão de atitudes em relação ao risco entre ganhos e perdas) e o efeito isolamento (sensibilidade ao framing). A partir desses padrões, propuseram a Teoria do Prospecto — um modelo em que os agentes avaliam resultados como ganhos ou perdas relativos a um ponto de referência, usando uma função valor côncava para ganhos e convexa para perdas, com inclinação maior no domínio das perdas (aversão à perda). As probabilidades são transformadas por uma função de ponderação não linear.

    **O que descobriram**

    Os experimentos confirmaram três fenômenos centrais. Primeiro, a maioria dos participantes preferiu um ganho certo de 3.000 a uma loteria com valor esperado superior (4.000 com 80% de chance), mas inverteu a preferência no domínio das perdas (arriscando para evitar uma perda certa). Segundo, a função valor exibiu sensibilidade decrescente tanto para ganhos quanto para perdas — o impacto marginal de cada unidade adicional diminui à medida que nos afastamos do ponto de referência. Terceiro, a ponderação de probabilidades mostrou-se consistentemente não linear: probabilidades pequenas são sobrevalorizadas e probabilidades altas, subvalorizadas.

    **Por que isso importa**

    O artigo é um dos mais citados na história da economia (mais de 80.000 citações no Google Scholar). Inaugurou o campo da economia comportamental e rendeu a Kahneman o Prêmio Nobel de Economia em 2002 (Tversky havia falecido em 1996). A Teoria do Prospecto transformou áreas como finanças comportamentais, economia da saúde, direito e economia e desenho de políticas públicas.

    **Conexão com este capítulo**

    O artigo fornece os fundamentos teóricos e experimentais das Seções 8.2.1 a 8.2.4: a função valor em S, a aversão à perda, a ponderação de probabilidades e os efeitos de dotação e framing. Toda a estrutura analítica do capítulo sobre decisão sob risco se apoia neste trabalho seminal.

??? abstract "Madrian, Brigitte C.; Shea, Dennis F. (2001). [The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior](https://doi.org/10.1162/003355301753265543). *Quarterly Journal of Economics*, 116(4): 1149–1187. DOI: [10.1162/003355301753265543](https://doi.org/10.1162/003355301753265543)"

    **A pergunta**

    Os planos de poupança previdenciária nos Estados Unidos (401(k)) oferecem vantagens fiscais substanciais, mas muitos trabalhadores elegíveis simplesmente não aderem. A teoria da escolha racional prevê que, diante de incentivos tão generosos, a adesão deveria ser quase universal. Por que não é? E o que acontece quando a arquitetura de escolha muda?

    **Como os autores responderam**

    Madrian e Shea analisaram uma mudança natural de política em uma grande empresa americana que, em 1998, passou da adesão voluntária (*opt-in*) para a adesão automática (*opt-out*) em seu plano 401(k). Sob o novo regime, todos os novos funcionários eram automaticamente inscritos com uma contribuição de 3% do salário e investimento no fundo conservador padrão, podendo optar por sair ou alterar a configuração a qualquer momento. Os autores compararam coortes de funcionários contratados antes e depois da mudança, controlando por características observáveis.

    **O que descobriram**

    A taxa de participação no 401(k) saltou de **49% para 86%** entre funcionários com 3 a 15 meses de empresa. A adesão automática teve impacto particularmente forte entre grupos historicamente sub-representados: trabalhadores jovens, de menor renda e minorias étnicas. No entanto, os autores também identificaram um efeito colateral: muitos funcionários permaneceram na taxa de contribuição *default* de 3% e no fundo de investimento *default* — mesmo que uma análise individualizada pudesse sugerir contribuições maiores ou alocações diferentes. A inércia que promove a adesão é a mesma que impede a personalização.

    **Por que isso importa**

    O estudo demonstrou que a **arquitetura de escolha** — e não apenas os incentivos econômicos — pode ter impacto de primeira ordem sobre decisões financeiras de longo prazo. Inspirou o programa *Save More Tomorrow* (Thaler e Benartzi 2004) e influenciou legislações ao redor do mundo, incluindo a adesão automática na Funpresp (previdência complementar de servidores públicos federais brasileiros).

    **Conexão com este capítulo**

    O artigo é a demonstração empírica central dos conceitos da Seção 8.4: o poder do *default*, o viés do *status quo* e os limites dos nudges. Mostra que a inércia é uma faca de dois gumes — resolve o problema da não adesão, mas pode travar os participantes em configurações subótimas.

??? abstract "Laibson, David. (1997). [Golden Eggs and Hyperbolic Discounting](https://doi.org/10.1162/003355397555253). *Quarterly Journal of Economics*, 112(2): 443–478. DOI: [10.1162/003355397555253](https://doi.org/10.1162/003355397555253)"

    **A pergunta**

    Por que tantas pessoas poupam menos do que gostariam? Por que existem instrumentos financeiros ilíquidos — como planos de previdência com penalidade por resgate antecipado — que os consumidores voluntariamente escolhem, mesmo quando opções líquidas com retornos semelhantes estão disponíveis? A teoria do desconto exponencial não consegue explicar por que os agentes demandam restrições à sua própria liberdade futura.

    **Como os autores responderam**

    Laibson construiu um modelo de consumo intertemporal em que os agentes descontam o futuro de forma quasi-hiperbólica (usando a estrutura \(\beta, \delta\)), em vez de exponencial. Nesse modelo, o agente em cada período tem um viés em favor do consumo presente, mas é sofisticado — reconhece que seus "eus futuros" terão o mesmo viés. Isso cria uma demanda endógena por **mecanismos de compromisso**: ativos ilíquidos funcionam como "algemas douradas" (*golden eggs*) que protegem a poupança da tentação de consumir.

    **O que descobriram**

    O modelo explica simultaneamente vários fatos estilizados: (i) a baixa poupança observada em relação às previsões do modelo de ciclo de vida padrão; (ii) a coexistência de ativos líquidos (com baixa remuneração) e ilíquidos (com retornos maiores) nos portfólios dos consumidores; (iii) a queda abrupta do consumo na aposentadoria (o "enigma da aposentadoria"); e (iv) a alta sensibilidade do consumo a variações previsíveis de renda, incompatível com a suavização perfeita prevista pelo modelo padrão.

    **Por que isso importa**

    O artigo formalizou a ideia de que a demanda por iliquidez é racional em um mundo de agentes com viés do presente. Tornou-se a referência central para o uso do modelo \((\beta, \delta)\) em macroeconomia e finanças domésticas, e influenciou o desenho de produtos financeiros e políticas previdenciárias.

    **Conexão com este capítulo**

    O modelo de Laibson é a formalização teórica direta do desconto quasi-hiperbólico apresentado na Seção 8.3.3. O conceito de "ovos de ouro" conecta a teoria do viés do presente à demanda por instrumentos de compromisso discutida na Seção 8.3.4 e ao Box Brasil sobre crédito rotativo.

---

## Referências do Capítulo

- Allais, Maurice. 1953. "[Le comportement de l'homme rationnel devant le risque: Critique des postulats et axiomes de l'école américaine](https://doi.org/10.2307/1907921)." *Econometrica* 21 (4): 503–546.
- Barber, Brad M., e Terrance Odean. 2001. "[Boys Will Be Boys: Gender, Overconfidence, and Common Stock Investment](https://doi.org/10.1162/003355301556400)." *Quarterly Journal of Economics* 116 (1): 261–292.
- DellaVigna, Stefano, e Ulrike Malmendier. 2006. "[Paying Not to Go to the Gym](https://doi.org/10.1257/aer.96.3.694)." *American Economic Review* 96 (3): 694–719.
- Dhami, Sanjit S. 2016. [*The Foundations of Behavioral Economic Analysis*](https://books.google.com.br/books?id=ALKUDwAAQBAJ). Oxford: Oxford University Press.
- Frederick, Shane, George Loewenstein, e Ted O'Donoghue. 2002. "[Time Discounting and Time Preference: A Critical Review](https://doi.org/10.1257/002205102320161311)." *Journal of Economic Literature* 40 (2): 351–401.
- Johnson, Eric J., e Daniel Goldstein. 2003. "[Do Defaults Save Lives?](https://doi.org/10.1126/science.1091721)" *Science* 302 (5649): 1338–1339.
- Kahneman, Daniel, Jack L. Knetsch, e Richard H. Thaler. 1990. "[Experimental Tests of the Endowment Effect and the Coase Theorem](https://doi.org/10.1086/261737)." *Journal of Political Economy* 98 (6): 1325–1348.
- Kahneman, Daniel, e Amos Tversky. 1979. "[Prospect Theory: An Analysis of Decision under Risk](https://doi.org/10.2307/1914185)." *Econometrica* 47 (2): 263–291.
- Karsten, Jan Gunnar. 2005. "[O efeito de disposição: um estudo empírico no Brasil](https://repositorio.fgv.br/items/1256bbfa-2e9a-4a58-8787-eed63f10d1cb)." Dissertação de mestrado, FGV/EPGE.
- Laibson, David. 1997. "[Golden Eggs and Hyperbolic Discounting](https://doi.org/10.1162/003355397555253)." *Quarterly Journal of Economics* 112 (2): 443–478.
- Madrian, Brigitte C., e Dennis F. Shea. 2001. "[The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior](https://doi.org/10.1162/003355301753265543)." *Quarterly Journal of Economics* 116 (4): 1149–1187.
- Northcraft, Gregory B., e Margaret A. Neale. 1987. "[Experts, Amateurs, and Real Estate: An Anchoring-and-Adjustment Perspective on Property Pricing Decisions](https://doi.org/10.1016/0749-5978(87)90046-X)." *Organizational Behavior and Human Decision Processes* 39 (1): 84–97.
- Samuelson, Paul A. 1937. "[A Note on Measurement of Utility](https://doi.org/10.2307/2967612)." *Review of Economic Studies* 4 (2): 155–161.
- Thaler, Richard H., e Shlomo Benartzi. 2004. "[Save More Tomorrow: Using Behavioral Economics to Increase Employee Saving](https://doi.org/10.1086/380085)." *Journal of Political Economy* 112 (S1): S164–S187.
- Thaler, Richard H., e Hersh Shefrin. 1981. "[An Economic Theory of Self-Control](https://doi.org/10.1086/260971)." *Journal of Political Economy* 89 (2): 392–406.
- Thaler, Richard H., e Cass R. Sunstein. 2008. [*Nudge: Improving Decisions about Health, Wealth, and Happiness*](https://books.google.com.br/books?id=dSJQn8egXvUC). New Haven: Yale University Press.
- Tversky, Amos, e Daniel Kahneman. 1974. "[Judgment under Uncertainty: Heuristics and Biases](https://doi.org/10.1126/science.185.4157.1124)." *Science* 185 (4157): 1124–1131.
- Tversky, Amos, e Daniel Kahneman. 1981. "[The Framing of Decisions and the Psychology of Choice](https://doi.org/10.1126/science.7455683)." *Science* 211 (4481): 453–458.
- Tversky, Amos, e Daniel Kahneman. 1992. "[Advances in Prospect Theory: Cumulative Representation of Uncertainty](https://doi.org/10.1007/BF00122574)." *Journal of Risk and Uncertainty* 5 (4): 297–323.
- Wilkinson, Nick, e Matthias Klaes. 2012. [*An Introduction to Behavioral Economics*](https://books.google.com.br/books?id=GVr0BwAAQBAJ). 2ª ed. London: Palgrave Macmillan.
