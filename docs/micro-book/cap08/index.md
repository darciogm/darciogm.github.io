# Capítulo 8 — Nem Tão Racionais Assim

## Introdução

Nos capítulos anteriores, construímos a teoria da escolha do consumidor sobre dois pilares: preferências racionais (completas e transitivas) e maximização da utilidade esperada sob incerteza. Esses modelos são elegantes, tratáveis e geram previsões poderosas. Mas quão fiéis são ao comportamento real dos seres humanos?

A partir da década de 1970, uma série de experimentos conduzidos por psicólogos e economistas revelou **violações sistemáticas** dos axiomas de racionalidade. Não se trata de erros aleatórios — os desvios seguem padrões previsíveis, enraizados na arquitetura cognitiva humana. Daniel Kahneman e Amos Tversky foram os pioneiros desse programa de pesquisa, que culminou na **Teoria do Prospecto** (Kahneman e Tversky 1979) e rendeu a Kahneman o Prêmio Nobel de Economia em 2002.

Este capítulo apresenta quatro pilares da **economia comportamental**: (1) as heurísticas e vieses cognitivos que distorcem nossos julgamentos; (2) a Teoria do Prospecto, que substitui a utilidade esperada por uma descrição mais realista das decisões sob risco; (3) o desconto hiperbólico, que explica por que sistematicamente priorizamos o presente em detrimento do futuro; e (4) os *nudges* — intervenções que aproveitam esses vieses para melhorar as decisões sem restringir a liberdade de escolha.

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
    Após um acidente aéreo amplamente noticiado, a percepção de risco de voar aumenta significativamente — mesmo que, estatisticamente, o transporte aéreo seja muito mais seguro por quilômetro percorrido do que o rodoviário. No Brasil, os dados da ANTT e da ANAC mostram que a taxa de fatalidade por passageiro-quilômetro no transporte rodoviário é mais de 60 vezes superior à do transporte aéreo. A cobertura midiática intensa de acidentes aéreos torna esses eventos cognitivamente "disponíveis", distorcendo a avaliação de risco.

### 8.1.3 Ancoragem

A **ancoragem** ocorre quando um valor inicial — mesmo que arbitrário e irrelevante — influencia sistematicamente a estimativa final de uma quantidade desconhecida.

!!! example "O experimento da roda da fortuna"
    Tversky e Kahneman (1974) pediram a participantes que estimassem a porcentagem de países africanos nas Nações Unidas. Antes de responder, cada participante girava uma roda da fortuna que parava em um número aleatório (10 ou 65). Os participantes que viram o número 10 estimaram, em média, 25%; os que viram 65 estimaram 45%. O número da roda — completamente irrelevante para a questão — funcionou como **âncora**, puxando as estimativas em sua direção.

A ancoragem tem implicações importantes para a economia: negociações salariais, precificação de imóveis e até decisões judiciais são influenciadas por valores-âncora iniciais. Estudos mostram que o preço de listagem de um imóvel funciona como âncora mesmo para avaliadores profissionais (Northcraft e Neale 1987).

### 8.1.4 Excesso de confiança

O **excesso de confiança** (*overconfidence*) manifesta-se de várias formas: superestimação das próprias habilidades, calibração inadequada de intervalos de confiança e a ilusão de controle sobre eventos aleatórios. Quando perguntados, a maioria dos motoristas se declara "acima da média" — uma impossibilidade estatística. Investidores excessivamente confiantes tendem a negociar com frequência excessiva, reduzindo seus retornos líquidos (Barber e Odean 2001).

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

### 8.2.4 Efeito dotação e efeito framing

Duas consequências diretas da Teoria do Prospecto têm grande relevância econômica:

**Efeito dotação.** A aversão à perda implica que as pessoas exigem mais para abrir mão de um objeto que já possuem do que estariam dispostas a pagar para adquiri-lo. Esse hiato entre a **disposição a aceitar** (WTA) e a **disposição a pagar** (WTP) contradiz a previsão da teoria neoclássica de que WTA \(\approx\) WTP para bens sem efeito renda significativo.

!!! example "Canecas de Kahneman, Knetsch e Thaler"
    No experimento clássico de Kahneman, Knetsch e Thaler (1990), metade dos participantes recebeu uma caneca de café da universidade. Quando questionados sobre o preço mínimo para vendê-la, os "donos" pediram em média US\$ 7,12. Os "compradores" (que não receberam a caneca) ofereceram em média US\$ 2,87. A simples posse — a dotação — mais que dobrou a valoração do objeto.

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

---

## 8.3 Escolha Intertemporal e Desconto Hiperbólico

### 8.3.1 O Modelo de Utilidade Descontada

O modelo padrão de escolha intertemporal — o **Modelo de Utilidade Descontada** (DUM), proposto por Samuelson (1937) — assume que os agentes avaliam fluxos de utilidade futura usando uma taxa de desconto **constante** \(\delta \in (0,1)\):

\[
U_0 = \sum_{t=0}^{T} \delta^t \, u(c_t)
\]

O desconto exponencial implica **consistência temporal**: se o agente prefere a opção A à B quando ambas ocorrem no futuro, essa preferência se mantém quando o momento da decisão se aproxima. Formalmente, se \(u(A)\) em \(t\) é preferido a \(u(B)\) em \(t+k\), então a mesma preferência vale para qualquer data de avaliação anterior.

### 8.3.2 Anomalias do desconto exponencial

Wilkinson e Klaes (2012) e Frederick, Loewenstein e O'Donoghue (2002) documentam diversas anomalias:

1. **Taxas de desconto decrescentes com o horizonte.** Em experimentos, a taxa de desconto implícita entre hoje e amanhã é muito maior que entre daqui a 30 e 31 dias — embora o intervalo seja o mesmo.

2. **Efeito magnitude.** Valores grandes são descontados a taxas menores que valores pequenos.

3. **Assimetria ganhos-perdas.** Ganhos futuros são descontados mais fortemente que perdas futuras.

4. **Preferências reversíveis.** Um agente pode preferir R\$ 100 hoje a R\$ 110 amanhã, mas preferir R\$ 110 em 31 dias a R\$ 100 em 30 dias — uma inversão que o desconto exponencial não permite.

!!! example "As maçãs de Thaler"
    Richard Thaler propôs o seguinte experimento mental: a maioria das pessoas prefere **1 maçã hoje** a **2 maçãs amanhã**, mas prefere **2 maçãs em 51 dias** a **1 maçã em 50 dias**. Essa inversão de preferência revela uma taxa de desconto decrescente — alta para o presente imediato, baixa para o futuro distante.

### 8.3.3 Desconto quasi-hiperbólico

!!! definition "Desconto quasi-hiperbólico (β, δ)"
    O modelo de desconto **quasi-hiperbólico**, proposto por Laibson (1997) com base em Phelps e Pollak (1968), modifica o DUM introduzindo um parâmetro adicional \(\beta \in (0,1)\) que captura o **viés do presente**:

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

<div class="graph-container" markdown>
  <iframe src="../graficos/cap08/funcoes-desconto.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
</div>

### 8.3.4 Autocontrole e estratégias de compromisso

Se os agentes reconhecem seu viés do presente, podem adotar **estratégias de compromisso** (*commitment devices*) para restringir seu comportamento futuro:

- **Poupança automática com desconto em folha:** ao aderir a um plano de previdência com desconto automático, o agente remove a decisão de poupar do âmbito da tentação cotidiana.
- **Metas públicas:** declarar publicamente uma meta (como parar de fumar) cria um custo reputacional para o descumprimento.
- **Restrições físicas:** o despertador Clocky, que foge da mesa de cabeceira quando o alarme toca, é um exemplo literal de compromisso — o "eu da noite" sabe que o "eu da manhã" vai querer apertar o soneca.

Essa tensão entre o eu presente e o eu futuro pode ser modelada como um **jogo intrapessoal** entre múltiplos "eus" sequenciais (Thaler e Shefrin 1981). O eu do período \(t\) maximiza a utilidade quasi-hiperbólica, mas sabe que o eu do período \(t+1\) fará o mesmo — e cada "versão futura" terá seu próprio viés do presente.

Agentes que reconhecem sua inconsistência temporal são chamados **sofisticados**; agentes que (erroneamente) acreditam que suas preferências futuras serão consistentes são chamados **ingênuos** (*naïfs*). Sofisticados buscam compromissos; ingênuos procrastinam repetidamente.

---

## 8.4 Nudges e Arquitetura de Escolhas

### 8.4.1 Paternalismo libertário

!!! definition "Nudge"
    Um **nudge** é qualquer aspecto da **arquitetura de escolha** que altera o comportamento das pessoas de forma previsível, sem proibir nenhuma opção nem alterar significativamente os incentivos econômicos. Para contar como nudge, a intervenção deve ser fácil e barata de evitar (Thaler e Sunstein 2008).

A filosofia por trás dos nudges é o **paternalismo libertário**: libertário porque preserva a liberdade de escolha; paternalista porque direciona as decisões no sentido do bem-estar do próprio agente (conforme julgado por ele mesmo em condições de reflexão cuidadosa).

### 8.4.2 Ferramentas de nudging

As principais ferramentas de nudging exploram os vieses documentados nas seções anteriores:

**Default options (opções-padrão).** A inércia e o viés do *status quo* fazem com que a maioria das pessoas aceite a opção pré-selecionada. Mudar o *default* de "opt-in" para "opt-out" pode ter efeitos dramáticos.

!!! example "Save More Tomorrow (SMarT)"
    O programa *Save More Tomorrow*, desenhado por Thaler e Benartzi (2004), convida trabalhadores a se comprometer, **hoje**, a destinar uma fração de seus **aumentos salariais futuros** à poupança previdenciária. Como o sacrifício é futuro (e não imediato), a taxa de adesão é alta. Além disso, a aversão à perda é atenuada porque o trabalhador nunca vê sua renda líquida diminuir — apenas cresce menos. Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais.

**Framing e simplificação.** A forma como as informações são apresentadas importa: rótulos nutricionais em semáforo (verde/amarelo/vermelho) são mais eficazes que tabelas numéricas detalhadas; cartas de cobrança com linguagem simplificada aumentam a taxa de pagamento de impostos.

**Feedback e saliência.** Tornar as consequências de uma decisão mais visíveis no momento da escolha — como mostrar o consumo de energia em tempo real — ajuda a alinhar o comportamento com as intenções de longo prazo.

**Normas sociais.** Informar as pessoas sobre o comportamento de seus pares ("90% dos seus vizinhos pagam o IPTU em dia") explora a tendência à conformidade social e pode ser mais eficaz do que apelos racionais ou ameaças de multa.

### 8.4.3 Limites e críticas

A economia comportamental e os nudges não são panaceias:

- **Heterogeneidade de preferências.** O nudge "certo" para a maioria pode prejudicar uma minoria com preferências legítimas diferentes.
- **Manipulação.** A fronteira entre nudge benevolente e manipulação (*sludge*) depende da intenção do arquiteto de escolhas — e essa intenção nem sempre é transparente.
- **Persistência.** Muitos nudges perdem eficácia com o tempo à medida que os agentes se habituam.
- **Problemas estruturais.** Nudges são complementos, não substitutos, de políticas públicas robustas. Nenhum nudge compensa salários insuficientes ou ausência de acesso a serviços financeiros.

---

## 8.5 Aplicações ao Brasil

A economia comportamental tem encontrado aplicações crescentes no contexto brasileiro:

**Previdência complementar e adesão automática.** A reforma da previdência complementar dos servidores públicos federais (Funpresp) adotou o mecanismo de adesão automática (*opt-out*) a partir de 2013 para novos servidores. A taxa de permanência no plano é significativamente superior à que seria obtida com adesão voluntária (*opt-in*), replicando o resultado clássico de Madrian e Shea (2001) para os planos 401(k) nos Estados Unidos.

**Superendividamento e viés do presente.** O Brasil possui uma das maiores taxas de juros do crédito rotativo do mundo. Pesquisas do Banco Central do Brasil mostram que muitos consumidores subestimam o custo total do crédito parcelado e do cheque especial — comportamento consistente com desconto hiperbólico e com a subestimação de custos futuros. A Lei do Superendividamento (Lei nº 14.181/2021) introduziu mecanismos de proteção que, em parte, funcionam como salvaguardas contra o viés do presente.

**Open Finance e portabilidade.** O ecossistema de *Open Finance* do Banco Central do Brasil (implementado a partir de 2021) facilita a comparação de produtos financeiros, reduzindo o efeito de ancoragem ao banco de relacionamento e tornando os custos mais salientes. A portabilidade de crédito, ao simplificar a troca de instituição financeira, combate a inércia do *status quo*.

**Rotulagem nutricional.** A Anvisa adotou em 2022 o modelo de rotulagem frontal com **lupa de advertência** para alimentos ricos em açúcar, gordura saturada e sódio. Trata-se de um nudge clássico de saliência: ao invés de exigir que o consumidor interprete tabelas nutricionais complexas, a lupa destaca a informação mais relevante no momento da decisão de compra.

**Doação de órgãos.** O Brasil adota o sistema de consentimento presumido (*opt-out*) para doação de órgãos, embora na prática a decisão da família prevaleça. Estudos internacionais, como Johnson e Goldstein (2003), mostram que países com *opt-out* têm taxas de doação significativamente maiores — evidência do poder do *default* sobre decisões de vida ou morte.

---

!!! tip "Exercícios do Capítulo 8"

    **Exercício 8.1.** Um investidor avalia duas opções: (A) ganhar R\$ 500 com certeza; (B) ganhar R\$ 1.000 com probabilidade \(0{,}50\). Sob utilidade esperada com função de utilidade côncava, o investidor prefere A. Agora considere: (C) perder R\$ 500 com certeza; (D) perder R\$ 1.000 com probabilidade \(0{,}50\). Sob a Teoria do Prospecto, qual a escolha provável em cada par? Explique usando as propriedades da função valor.

    **Exercício 8.2.** Usando a função valor paramétrica \(v(x) = x^{0{,}88}\) para ganhos e \(v(x) = -2{,}25 \cdot (-x)^{0{,}88}\) para perdas, calcule \(v(100)\), \(v(-100)\), \(v(200)\) e \(v(-200)\). Verifique que \(|v(-100)| > v(100)\) e interprete economicamente.

    **Exercício 8.3.** Um consumidor com desconto quasi-hiperbólico \((\beta = 0{,}70,\; \delta = 0{,}99)\) avalia dois planos de poupança. O Plano X exige um depósito de R\$ 100 **hoje** e paga R\$ 150 em 1 ano. O Plano Y exige um depósito de R\$ 100 **em 6 meses** e paga R\$ 150 em 18 meses. (a) Calcule a utilidade descontada de cada plano sob desconto quasi-hiperbólico, assumindo \(u(x) = x\). (b) O consumidor prefere Y hoje, mas quando chegar o mês 6, ele vai aderir? Explique a diferença entre agentes sofisticados e ingênuos.

    **Exercício 8.4.** Uma empresa oferece dois planos de academia: (A) pagamento mensal de R\$ 100; (B) pagamento anual antecipado de R\$ 960 (equivalente a R\$ 80/mês). DellaVigna e Malmendier (2006) mostram que muitos consumidores escolhem (A) e depois frequentam a academia menos de 5 vezes por mês, pagando mais de R\$ 20 por visita — quando poderiam comprar passes avulsos por R\$ 12. Explique esse comportamento usando: (i) excesso de confiança sobre o uso futuro; (ii) viés do presente.

    **Exercício 8.5.** O governo está considerando duas políticas para aumentar a poupança previdenciária: (i) subsídio fiscal de 10% sobre contribuições voluntárias; (ii) adesão automática com *opt-out*. Com base na literatura comportamental, qual política provavelmente terá maior impacto sobre a taxa de poupança agregada? Justifique.

    **Exercício 8.6.** Explique por que o Paradoxo de Allais viola o axioma da independência da utilidade esperada. Mostre formalmente que as preferências \(A \succ B\) e \(D \succ C\) são inconsistentes com a existência de uma função de utilidade de Von Neumann–Morgenstern.

---

## Pesquisa em Ação

!!! abstract "Madrian, Brigitte C., e Dennis F. Shea. 2001. The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior."

    **Contexto.** Um dos maiores desafios da política previdenciária é elevar a taxa de poupança voluntária dos trabalhadores. Nos Estados Unidos, os planos 401(k) permitem que empregados destinem parte do salário à poupança previdenciária com diferimento fiscal. Apesar das vantagens tributárias, muitos trabalhadores elegíveis simplesmente não aderem ao plano — um comportamento difícil de explicar pela teoria da escolha racional.

    **Método.** Madrian e Shea analisaram uma mudança natural de política em uma grande empresa americana que, em 1998, passou da adesão voluntária (*opt-in*) para a adesão automática (*opt-out*) em seu plano 401(k). Sob o novo regime, todos os novos funcionários eram automaticamente inscritos com uma contribuição de 3% do salário, podendo optar por sair ou alterar a contribuição a qualquer momento.

    **Resultados.** A taxa de participação no 401(k) saltou de **49% para 86%** entre funcionários com 3 a 15 meses de empresa. A adesão automática teve impacto particularmente forte entre grupos historicamente sub-representados: trabalhadores jovens, de menor renda e minorias étnicas. No entanto, os autores também observaram um efeito colateral: muitos funcionários permaneceram na taxa de contribuição *default* de 3% e no fundo de investimento *default* — mesmo que uma análise individualizada pudesse sugerir contribuições maiores ou alocações diferentes.

    **Relevância para o capítulo.** Este estudo é uma das demonstrações empíricas mais influentes do poder do *default* e do viés do *status quo* na economia. Os resultados ilustram simultaneamente o potencial e os limites dos nudges: a adesão automática resolve o problema da inércia na entrada, mas a mesma inércia pode manter os participantes em configurações subótimas. O programa *Save More Tomorrow* de Thaler e Benartzi (2004) foi desenhado precisamente para contornar esse segundo problema, combinando adesão automática com escalada automática das contribuições.

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
