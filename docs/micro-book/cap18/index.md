# Capítulo 18 — A Paciência Tem Preço

Você já parcelou uma compra e sentiu aquele aperto ao ver o total com juros? Ou deixou dinheiro na poupança "para o futuro" sem saber exatamente quando esse futuro chegaria? Parabéns: você já fez economia intertemporal — só faltava o jargão. A verdade é que a economia não se resume a decisões instantâneas. Agentes econômicos constantemente fazem escolhas que envolvem o **tempo**: poupar hoje para consumir amanhã, investir em uma fábrica cujos retornos virão ao longo de anos, extrair um recurso natural agora ou preservá-lo para o futuro. Neste capítulo, estudamos a teoria do capital e dos juros, que fornece o arcabouço analítico para compreender essas decisões — e para entender por que, no Brasil, a paciência custa particularmente caro.

Começamos com os conceitos fundamentais de capital e taxa de retorno (Seção 18.1), passamos à determinação da taxa de juros de equilíbrio no mercado de fundos emprestáveis (Seção 18.2) e formalizamos a decisão intertemporal do consumidor por meio do modelo de dois períodos de Irving Fisher (Seção 18.3). Em seguida, introduzimos a distinção entre taxa de juros nominal e real — um tema crucial para a economia brasileira — e o efeito Fisher (Seção 18.4). A Seção 18.5 estende o modelo para a precificação de ativos arriscados, conectando a escolha intertemporal à teoria financeira. As Seções 18.6 e 18.7 apresentam os dois critérios centrais de avaliação de investimentos — VPL e TIR —, seguidas pela demanda da firma por capital (Seção 18.8). A Seção 18.9 desenvolve as ferramentas matemáticas de juros compostos e tempo contínuo. A Seção 18.10 aplica os critérios de investimento a um exemplo numérico detalhado, e a Seção 18.11 conclui com a regra de Hotelling para recursos naturais exauríveis. Ao longo do capítulo, conectamos a teoria à experiência brasileira, marcada por décadas de juros reais elevados e seus efeitos sobre o investimento produtivo.

**Conexões com outros capítulos.** O leitor que estudou o Capítulo 3 (preferências e utilidade) reconhecerá aqui a mesma lógica de otimização sob restrição — agora aplicada a consumo em diferentes períodos de tempo. O Capítulo 7 (incerteza) fornece a base para a precificação de ativos arriscados e o fator de desconto estocástico. O Capítulo 8 (economia comportamental) introduziu o desconto hiperbólico e a inconsistência temporal, que contrastam com o desconto exponencial do modelo de Fisher. Os capítulos de equilíbrio geral (14–15) estenderam a análise para múltiplos mercados simultâneos; aqui, focamos na dimensão temporal dessa interação. Finalmente, o Capítulo 17 (mercados de fatores) analisou a remuneração do trabalho e da terra — este capítulo completa a análise dos mercados de fatores examinando a remuneração do capital.

---

## 18.1 Capital e Taxa de Retorno

### O conceito de capital

!!! definition "Capital"
    **Capital** é o estoque de bens produzidos que são utilizados como insumos na produção de outros bens e serviços. Diferentemente do trabalho e da terra, o capital é um **fator de produção produzido** — máquinas, equipamentos, edifícios, infraestrutura, estoques.

É fundamental distinguir entre:

- **Estoque de capital** (\(K\)): o valor total dos bens de capital em um dado momento;
- **Fluxo de serviços do capital**: a contribuição produtiva do capital por unidade de tempo;
- **Investimento** (\(I\)): a variação no estoque de capital, \(I = \Delta K + \delta K\), onde \(\delta\) é a taxa de depreciação.

Essa distinção entre estoque e fluxo é análoga à diferença entre a quantidade de água em um lago (estoque) e a vazão de um rio que alimenta o lago (fluxo). Uma empresa que possui uma frota de 100 caminhões detém um estoque de capital; os serviços de transporte que esses caminhões prestam por mês constituem o fluxo. O investimento é a compra de caminhões novos que repõem os depreciados e expandem a frota. A depreciação — a perda de valor do capital por desgaste, obsolescência ou passagem do tempo — é o que torna a manutenção do estoque de capital um desafio permanente. Sem investimento, o estoque encolhe ao ritmo \(\delta K\) por período.

Uma implicação prática dessa distinção é que o capital, por ser durável, introduz uma dimensão temporal inescapável nas decisões econômicas. Quando uma firma compra uma máquina, ela não consome o bem no ato da compra — ela o utiliza ao longo de anos, coletando um fluxo de retornos. Essa separação entre o desembolso inicial e o fluxo de benefícios futuros é a essência do problema intertemporal que permeia todo este capítulo.

### Taxa de retorno do capital

A **taxa de retorno** (\(r\)) de um investimento mede a remuneração do capital por unidade monetária investida, por período. Se um investimento de \(K_0\) reais gera um fluxo de rendimento líquido \(\pi\) por período, a taxa de retorno é:

\[
r = \frac{\pi}{K_0}
\label{eq:18.1} \tag{18.1} \]

Pela equação $\eqref{eq:18.1}$, no equilíbrio competitivo de longo prazo, a taxa de retorno do capital se iguala à **taxa de juros** do mercado, pois o investidor é indiferente entre aplicar recursos no mercado financeiro e investir em capital físico. Se a taxa de retorno do capital excedesse a taxa de juros, haveria incentivo para investir mais em capital físico; se fosse inferior, seria mais vantajoso aplicar no mercado financeiro. Esse mecanismo de arbitragem garante a equalização das taxas no equilíbrio.

A convergência entre taxa de retorno do capital e taxa de juros é uma das predições mais fundamentais da teoria neoclássica, mas deve ser interpretada com cuidado. Na prática, os retornos do capital físico são incertos e ilíquidos, enquanto aplicações financeiras podem ser líquidas e com risco mais previsível. Por isso, a taxa de retorno do capital físico tipicamente embute um **prêmio de risco** e um **prêmio de iliquidez** sobre a taxa de juros livre de risco — um tema ao qual retornaremos na Seção 18.5.

---

## 18.2 Determinação da Taxa de Retorno

Se a taxa de juros é o preço da impaciência, quem define esse preço? Não é um burocrata com caneta vermelha (embora o presidente do Banco Central chegue perto). Em uma economia de mercado, a taxa de retorno do capital emerge de um cabo de guerra silencioso entre quem quer poupar — "segura aí que eu gasto depois" — e quem quer investir — "me empresta que eu multiplico". Esse equilíbrio no mercado de fundos emprestáveis é a peça central da teoria dos juros.

### Equilíbrio intertemporal

A taxa de juros de equilíbrio é determinada pela interação entre:

- **Oferta de fundos emprestáveis** (poupança): positivamente relacionada à taxa de juros — juros mais altos incentivam a poupança;
- **Demanda de fundos emprestáveis** (investimento): negativamente relacionada à taxa de juros — juros mais altos encarecem o custo do capital e reduzem o investimento.

No equilíbrio:

\[
S(r) = I(r)
\label{eq:18.2} \tag{18.2} \]

onde \(S\) é a poupança agregada e \(I\) é o investimento agregado. A taxa de juros \(r^*\) que iguala oferta e demanda de fundos é a **taxa de juros de equilíbrio**.

É importante notar que a relação entre taxa de juros e poupança não é necessariamente monotônica. Como veremos na Seção 18.3, um aumento na taxa de juros gera dois efeitos opostos sobre a poupança: o efeito substituição (que incentiva poupar mais) e o efeito renda (que, para um poupador, permite consumir mais hoje). Em nível agregado, a evidência empírica sugere que a elasticidade-juro da poupança é positiva, mas relativamente pequena — o que significa que a curva de oferta de fundos emprestáveis é positivamente inclinada, porém relativamente inelástica.

A demanda por investimento, por outro lado, é mais claramente decrescente na taxa de juros: juros altos encarecem o custo do capital e reduzem o número de projetos com Valor Presente Líquido positivo (Seção 18.6). A elasticidade-juro do investimento tende a ser maior que a da poupança, conferindo à demanda um papel mais ativo na determinação do equilíbrio.

!!! idea "Intuição Econômica"
    **Em uma frase:** A taxa de juros é o preço do tempo — quanto custa trazer dinheiro do futuro para o presente, ou quanto se ganha por abrir mão do consumo hoje.

    **Pense assim:** Quando você parcela uma compra no cartão com juros, está pagando pela impaciência de ter o produto agora. Quando coloca dinheiro na poupança, está sendo recompensado por esperar. A taxa de juros equilibra os impacientes (que querem gastar hoje) com os pacientes (que preferem poupar).

    **Por que isso importa:** Com a Selic historicamente elevada no Brasil, o "preço da impaciência" é muito alto, desestimulando investimentos de longo prazo e encarecendo o crédito para famílias e empresas.

### Fatores que afetam a taxa de juros

A [Tabela 18.1](#tabela-18-1) resume os principais fatores que afetam a taxa de juros de equilíbrio.

<a id="tabela-18-1"></a>

| Fator | Efeito sobre \(r^*\) | Mecanismo |
|---|---|---|
| Aumento da produtividade do capital | \(\uparrow r^*\) | Desloca demanda por investimento para a direita |
| Aumento da preferência pelo consumo presente | \(\uparrow r^*\) | Reduz oferta de poupança |
| Aumento da oferta de fundos (ex.: poupança externa) | \(\downarrow r^*\) | Desloca oferta de poupança para a direita |
| Aumento do risco percebido | \(\uparrow r^*\) | Exige prêmio de risco maior |
| Política monetária expansionista | \(\downarrow r^*\) (curto prazo) | Banco Central injeta liquidez no mercado |
| Crescimento populacional / envelhecimento | Ambíguo | Mais trabalhadores poupam (+S), mas também investem (+I) |

<div class="caption-obj" markdown>
**Tabela 18.1 — Fatores que afetam a taxa de juros.**
</div>

Historicamente, a teoria econômica ofereceu explicações distintas para a existência de juros positivos. Para os economistas clássicos (Böhm-Bawerk, Fisher), os juros refletem a **preferência temporal** — o fato de que as pessoas valorizam mais o presente que o futuro — combinada com a **produtividade do capital** — o fato de que métodos de produção mais demorados (roundabout) são mais produtivos. Keynes enfatizou o papel da **preferência pela liquidez**: como reter moeda proporciona flexibilidade, os agentes exigem uma compensação (juros) para abrir mão dessa liquidez. Na síntese moderna, todos esses fatores interagem no mercado de fundos emprestáveis.

---

## 18.3 Modelo de Dois Períodos de Fisher

Gastar tudo no bar na sexta-feira ou guardar para a viagem de janeiro? Em essência, toda decisão financeira é uma briga entre o seu "eu de agora" e o seu "eu do futuro". Irving Fisher, em 1930, transformou essa briga existencial em um modelo elegante de dois períodos — a pedra angular da teoria do consumo intertemporal. As ferramentas aqui desenvolvidas — restrição orçamentária intertemporal, riqueza intertemporal, taxa de preferência intertemporal — serão empregadas novamente nos capítulos subsequentes e na macroeconomia.

### Estrutura do modelo

Considere um consumidor que vive dois períodos (\(t = 1, 2\)) e deve decidir quanto consumir em cada período.

- Renda nos períodos 1 e 2: \(Y_1\) e \(Y_2\);
- Consumo nos períodos 1 e 2: \(C_1\) e \(C_2\);
- Taxa de juros de mercado: \(r\);
- O consumidor pode poupar (\(S > 0\)) ou tomar empréstimo (\(S < 0\)).

A poupança no período 1 é \(S = Y_1 - C_1\). Se \(S > 0\), o consumidor transfere recursos do presente para o futuro; se \(S < 0\), ele antecipa renda futura tomando empréstimo. No período 2, a restrição é \(C_2 = Y_2 + (1+r)S\): a renda do período 2 mais o rendimento da poupança (ou menos o pagamento do empréstimo).

!!! definition "Restrição orçamentária intertemporal"
    A restrição orçamentária intertemporal é:

    \[
    C_1 + \frac{C_2}{1+r} = Y_1 + \frac{Y_2}{1+r} \equiv W
    \label{eq:18.3} \tag{18.3} \]

    onde \(W\) é a **riqueza intertemporal** — o valor presente de toda a renda futura. A inclinação da reta orçamentária intertemporal é \(-(1+r)\).

A equação $\eqref{eq:18.3}$ tem uma interpretação direta: o valor presente do consumo total deve igualar o valor presente da renda total. Essa restrição é uma reta no espaço \((C_1, C_2)\) que passa pelo **ponto de dotação** \((Y_1, Y_2)\) — a cesta em que o consumidor simplesmente gasta sua renda em cada período, sem poupar nem tomar empréstimo. A inclinação \(-(1+r)\) reflete o preço relativo do consumo presente em termos do consumo futuro: para consumir uma unidade a mais hoje, o consumidor renuncia a \((1+r)\) unidades amanhã.

Note a analogia precisa com o modelo estático do Capítulo 4: lá, o consumidor enfrentava uma restrição \(p_1 x_1 + p_2 x_2 = m\), e aqui enfrentamos \(C_1 + \frac{C_2}{1+r} = W\). O "preço" do consumo no período 1 é 1, e o "preço" do consumo no período 2 é \(\frac{1}{1+r}\). A "renda" é a riqueza intertemporal \(W\). Toda a maquinaria do Capítulo 4 — tangência, efeitos renda e substituição, equação de Slutsky — se aplica diretamente.

### Otimização

O consumidor maximiza \(U(C_1, C_2)\) sujeito à restrição intertemporal. A condição de ótimo é:

\[
\frac{U_1}{U_2} = 1 + r
\label{eq:18.4} \tag{18.4} \]

ou equivalentemente:

\[
TMS_{C_1, C_2} = 1 + r
\]

A condição $\eqref{eq:18.4}$ é a versão intertemporal da regra \(TMS = p_1/p_2\) do Capítulo 4. Ela diz que, no ótimo, a disposição subjetiva do consumidor a trocar consumo futuro por consumo presente (a TMS) iguala o preço de mercado dessa troca (\(1+r\)). Se a TMS fosse maior que \(1+r\), o consumidor valorizaria mais o consumo presente do que o mercado permite obter — e, portanto, deveria tomar empréstimo para consumir mais hoje. Se a TMS fosse menor, deveria poupar.

Para uma função de utilidade separável no tempo com desconto exponencial — a especificação mais comum —, temos:

\[
U(C_1, C_2) = u(C_1) + \beta \, u(C_2) \label{eq:18.4b} \tag{18.4b}
\]

onde \(\beta = \frac{1}{1+\rho}\) é o **fator de desconto subjetivo** e \(\rho\) é a taxa de desconto subjetiva. A condição de primeira ordem se torna a **equação de Euler do consumo**:

\[
u'(C_1) = \beta(1+r) \, u'(C_2) \label{eq:18.4c} \tag{18.4c}
\]

A equação de Euler é uma das equações mais importantes da economia intertemporal. Ela diz que a utilidade marginal de consumir um real hoje deve igualar a utilidade marginal descontada de consumir \((1+r)\) reais amanhã. Se \(r > \rho\) (a taxa de juros supera a impaciência), o consumidor poupa e escolhe \(C_2 > C_1\) — o consumo cresce ao longo do tempo. Se \(r < \rho\), o consumidor toma empréstimo e consome mais no presente. Se \(r = \rho\), o consumo é perfeitamente suave: \(C_1 = C_2\).

!!! definition "Taxa de preferência intertemporal"
    A **taxa de preferência intertemporal** (ou taxa de desconto subjetiva) \(\rho\) é definida implicitamente por:

    \[
    TMS_{C_1, C_2} = 1 + \rho
    \label{eq:18.5} \tag{18.5} \]

    A equação $\eqref{eq:18.5}$, combinada com a condição de ótimo $\eqref{eq:18.4}$, implica que \(\rho = r\) no ponto de dotação quando o consumidor é indiferente entre poupar e tomar empréstimo. Se \(\rho > r\), o consumidor é "impaciente" e toma empréstimo; se \(\rho < r\), ele poupa.

!!! idea "Intuição Econômica"
    **Em uma frase:** O modelo de Fisher revela que poupar e tomar empréstimo são simplesmente formas de "comprar" consumo em diferentes momentos do tempo, ao preço \((1+r)\).

    **Pense assim:** Um jovem profissional recém-formado ganha R$ 5.000 por mês, mas espera ganhar R$ 15.000 em dez anos. Se não existisse mercado de crédito, ele viveria apertado agora e folgado depois. O mercado financeiro permite que ele "importe" consumo do seu eu futuro, suavizando seu padrão de vida — a um custo dado pela taxa de juros.

    **Por que isso importa:** A capacidade de transferir consumo entre períodos é o que torna possível a existência de universidades (investimento em capital humano), casas próprias (financiamento imobiliário) e aposentadoria (poupança de longo prazo). Sem mercados de crédito, cada indivíduo estaria preso à sua dotação em cada período.

### Efeitos de uma variação na taxa de juros

A condição de ótimo estabelece que, no equilíbrio, a taxa de preferência intertemporal do consumidor se iguala à taxa de juros de mercado. Mas o que acontece quando a taxa de juros muda? Essa pergunta é central para a política monetária: quando o Banco Central eleva a Selic, por exemplo, espera-se que os agentes poupem mais e consumam menos no presente. O modelo de Fisher permite decompor esse efeito em componentes familiares — os efeitos substituição e renda — revelando que a resposta do consumidor depende crucialmente de sua posição como poupador ou devedor.

Um aumento em \(r\) tem dois efeitos sobre \(C_1\):

- **Efeito substituição**: consumo presente fica relativamente mais caro (maior custo de oportunidade), reduzindo \(C_1\). Esse efeito é sempre negativo sobre \(C_1\) e sempre positivo sobre \(C_2\) — independe da posição do consumidor.
- **Efeito renda**: depende da posição do consumidor:
    - Se é **poupador** (\(S > 0\)): fica mais rico (seus recursos aplicados rendem mais), tende a aumentar \(C_1\);
    - Se é **devedor** (\(S < 0\)): fica mais pobre (sua dívida custa mais), tende a reduzir \(C_1\).

Para um poupador, o efeito líquido sobre \(C_1\) é ambíguo — o efeito substituição reduz e o efeito renda aumenta o consumo presente. Essa ambiguidade é análoga ao caso da curva de oferta de trabalho backward-bending do Capítulo 17, onde um aumento no salário pode reduzir as horas trabalhadas quando o efeito renda domina. Para um devedor, ambos os efeitos atuam na mesma direção, reduzindo inequivocamente \(C_1\).

A decomposição pode ser formalizada pela equação de Slutsky intertemporal:

\[
\frac{\partial C_1}{\partial r} = \underbrace{\frac{\partial C_1}{\partial r}\bigg|_{U=\bar{U}}}_{\text{Substituição} < 0} + \underbrace{(Y_1 - C_1^*) \frac{\partial C_1}{\partial W}}_{\text{Renda: sinal depende de } S}
\label{eq:18.5b} \tag{18.5b}
\]

onde \(Y_1 - C_1^* = S\) é a poupança do consumidor. Se \(S > 0\) (poupador), o efeito renda é positivo (consome mais em ambos os períodos). Se \(S < 0\) (devedor), o efeito renda é negativo.

!!! warning "⚠️ Erro Comum"

    **Confundir a restrição orçamentária intertemporal em valor presente com a em valor futuro.**

    Muitos alunos escrevem a restrição como \(C_1 + C_2 = Y_1 + Y_2\), esquecendo o fator de desconto. Essa formulação ignora completamente o papel da taxa de juros e implica que um real hoje vale o mesmo que um real amanhã. A restrição correta em **valor presente** é \(C_1 + C_2/(1+r) = W\), e em **valor futuro** é \((1+r)C_1 + C_2 = (1+r)Y_1 + Y_2\). Ambas são equivalentes, mas a primeira é a mais utilizada. O erro é particularmente grave quando se pede para analisar o efeito de uma variação em \(r\): sem o fator de desconto, a taxa de juros sequer aparece na restrição, tornando impossível qualquer análise comparativa.

<iframe src="../graficos/cap18/consumo-intertemporal.html" title="Figura 18.1 — Modelo de consumo intertemporal de dois períodos" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 18.1 — Modelo de consumo intertemporal de dois períodos.** Observe como variações na taxa de juros \(r\) alteram a inclinação da reta orçamentária e a classificação do agente como poupador ou devedor.
</div>

---

## 18.4 Taxa de Juros Nominal vs. Real e o Efeito Fisher

Até aqui, vivemos no paraíso teórico de uma economia sem inflação — um luxo que qualquer brasileiro nascido antes de 1994 reconhece como ficção científica. Em economias reais — e especialmente no Brasil, onde os mais velhos lembram de remarcar preços de supermercado toda semana —, a distinção entre taxa de juros nominal e real é absolutamente central. Confundir as duas é como confundir velocidade com distância: o número pode parecer impressionante, mas sem o ajuste certo, você não chega a lugar nenhum.

!!! definition "Taxa de juros nominal e real"
    A **taxa de juros nominal** (\(i\)) é a taxa observada no mercado, expressa em unidades monetárias correntes. A **taxa de juros real** (\(r\)) é a taxa ajustada pela inflação, expressa em poder de compra constante.

    A **equação de Fisher** relaciona as duas:

    \[
    1 + i = (1 + r)(1 + \pi)
    \label{eq:18.5c} \tag{18.5c}
    \]

    onde \(\pi\) é a taxa de inflação. Para taxas pequenas, a aproximação usual é:

    \[
    r \approx i - \pi
    \label{eq:18.5d} \tag{18.5d}
    \]

A distinção é crucial para a restrição orçamentária intertemporal. Se os preços dos bens de consumo sobem à taxa \(\pi\) entre os períodos 1 e 2, a restrição em termos reais permanece como na equação $\eqref{eq:18.3}$, desde que \(r\) seja a taxa real. Usar a taxa nominal na fórmula do VPL, por exemplo, infla artificialmente o custo de oportunidade e pode fazer com que projetos viáveis sejam rejeitados.

O **efeito Fisher** é a proposição de que, no longo prazo, a taxa de juros nominal se ajusta um-para-um com a inflação esperada, mantendo a taxa real constante. Se a inflação esperada sobe de 4% para 7%, a taxa nominal deveria subir de, digamos, 10% para 13%, preservando \(r \approx 6\%\). Empiricamente, o efeito Fisher se verifica razoavelmente bem no longo prazo, mas pode falhar no curto prazo quando a política monetária ou choques de oferta alteram a taxa real.

!!! box-brasil "🇧🇷 Box Brasil 18.1 — Inflação, indexação e a ilusão da taxa nominal no Brasil"
    **Contexto:** O Brasil oferece um laboratório natural para estudar a distinção entre taxas nominais e reais. Durante o período de hiperinflação (1980–1994), a inflação mensal chegou a superar 80% (junho de 1994, no mês anterior ao Plano Real). Taxas de juros nominais de 1.000% ao ano eram comuns, mas a taxa real podia ser baixa ou até negativa.

    **Dados:** Segundo dados do Banco Central do Brasil (BCB), a taxa Selic nominal atingiu 45% a.a. em março de 1999 (crise cambial), mas com inflação acumulada de ~8,9%, a taxa real era de aproximadamente 33%. Em dezembro de 2020, a Selic nominal estava em 2% a.a. com inflação de 4,5%, resultando em taxa real negativa de aproximadamente -2,4% — algo inédito na história econômica brasileira. Em 2023, com Selic de 13,75% e inflação de ~4,6%, a taxa real voltou a patamares elevados (~8,8%).

    **Análise:** A experiência brasileira ilustra dramaticamente por que a teoria intertemporal deve ser sempre formulada em termos reais. Um investidor que avaliou projetos usando a Selic nominal de 2% em 2020 e depois enfrentou 13,75% em 2022 cometeria erros enormes em ambas as direções — subestimando o custo de capital no primeiro caso e superestimando no segundo, a menos que ajustasse pela inflação esperada. A generalização da indexação (aluguéis, salários, títulos públicos atrelados ao IPCA) foi a resposta institucional brasileira à convivência prolongada com inflação alta, e o Tesouro IPCA+ (NTN-B) é hoje um dos títulos mais negociados do mercado brasileiro, justamente por oferecer proteção contra a erosão inflacionária.

    **Para refletir:** Se a taxa Selic nominal é 12% e a inflação esperada é 4%, qual é a taxa real aproximada? E se a inflação surpreender em 8%, o que acontece com o retorno real do investidor?

---

## 18.5 Precificação de Ativos Arriscados

O modelo de Fisher analisa a escolha intertemporal sob certeza — o consumidor conhece com exatidão suas rendas futuras e a taxa de juros. Na realidade, porém, a maioria das decisões de investimento envolve incerteza: retornos futuros são aleatórios, e ativos diferentes carregam níveis distintos de risco. Como precificar ativos cujos retornos são incertos? E qual é a relação entre risco e retorno esperado? Essas perguntas fundamentais são respondidas pelos modelos de precificação de ativos, que estendem a lógica intertemporal de Fisher para um mundo com incerteza.

A conexão com o Capítulo 7 é direta: lá, mostramos que agentes avessos ao risco (com utilidade côncava) preferem o valor esperado de uma loteria à própria loteria. Aqui, essa mesma aversão ao risco determina o **prêmio de risco** que os investidores exigem para manter ativos arriscados — e, portanto, o preço de equilíbrio desses ativos.

### O CAPM básico

O **Capital Asset Pricing Model** (Modelo de Precificação de Ativos de Capital), desenvolvido independentemente por Sharpe (1964), Lintner (1965) e Mossin (1966), estabelece que o retorno esperado de um ativo arriscado é:

\[
E[r_i] = r_f + \beta_i \cdot (E[r_m] - r_f)
\label{eq:18.6} \tag{18.6} \]

onde:

- \(r_f\) é a taxa de retorno livre de risco;
- \(E[r_m]\) é o retorno esperado do portfólio de mercado;
- \(\beta_i = \frac{\text{Cov}(r_i, r_m)}{\text{Var}(r_m)}\) é o **beta** do ativo, que mede seu risco sistemático.

O prêmio de risco do ativo \(i\) é proporcional ao seu beta: ativos com maior correlação com o mercado exigem retornos esperados mais altos. O resultado central é que apenas o risco **sistemático** (não diversificável) é remunerado pelo mercado. O risco **idiossincrático** (específico da empresa) pode ser eliminado por diversificação e, portanto, não carrega prêmio de risco.

!!! idea "Intuição Econômica"
    **Em uma frase:** O CAPM diz que o mercado só paga por riscos que não podem ser diversificados — o risco de uma única empresa não merece compensação extra, porque você poderia ter diversificado.

    **Pense assim:** Imagine dois investidores brasileiros. O primeiro coloca todo seu dinheiro em ações da Petrobras; o segundo distribui entre 50 empresas diferentes. Ambos enfrentam o risco de uma recessão (risco sistemático), mas só o primeiro enfrenta o risco de um escândalo específico da Petrobras (risco idiossincrático). Como o segundo investidor eliminou esse risco sem custo, o mercado não oferece compensação por ele.

    **Por que isso importa:** O CAPM fundamenta a avaliação de custo de capital próprio das empresas (o \(r\) usado no VPL da Seção 18.6) e é a base do cálculo do WACC (custo médio ponderado do capital) usado em finanças corporativas.

### Fator de desconto estocástico

Uma abordagem mais geral utiliza o **fator de desconto estocástico** (SDF, *stochastic discount factor*). O preço de qualquer ativo satisfaz:

\[
p_i = E[m \cdot x_i] \label{eq:18.7} \tag{18.7}
\]

onde \(m\) é o fator de desconto estocástico e \(x_i\) é o payoff do ativo. No modelo de consumo intertemporal com utilidade esperada:

\[
m = \beta \frac{U'(C_2)}{U'(C_1)}
\]

onde \(\beta = \frac{1}{1+\rho}\) é o fator de desconto subjetivo. Ativos que pagam mais em estados de escassez (quando \(U'(C_2)\) é alto, ou seja, quando o consumo é baixo) são mais valiosos — porque entregam recursos exatamente quando o agente mais precisa deles. Ativos que pagam em estados de abundância são menos valiosos, pois a utilidade marginal adicional é pequena.

A equação $\eqref{eq:18.7}$ unifica toda a teoria de precificação de ativos: ações, títulos, derivativos e commodities podem ser precificados pelo mesmo fator \(m\). O CAPM, por exemplo, é um caso especial em que \(m\) é linear no retorno do mercado.

!!! note "Equity premium puzzle"
    O **enigma do prêmio de risco das ações** ([Mehra e Prescott, 1985](https://doi.org/10.1016/0304-3932(85)90061-3)) refere-se ao fato de que o prêmio de risco histórico das ações sobre títulos públicos (~6% ao ano nos EUA) é muito maior do que modelos padrão de consumo intertemporal conseguem explicar com níveis razoáveis de aversão ao risco. Para gerar o prêmio observado, seria necessário um coeficiente de aversão ao risco relativa \(\gamma > 30\), valor implausível (estimativas empíricas sugerem \(\gamma\) entre 1 e 5). Esse puzzle motivou décadas de pesquisa, incluindo modelos com formação de hábito (Campbell e Cochrane, 1999), aversão a perdas (Benartzi e Thaler, 1995 — conectando-se à teoria dos prospectos do Capítulo 8) e aversão à ambiguidade.

!!! box-mundo "Box Mundo 18.1 — O Fundo Soberano da Noruega: poupança intergeracional em escala nacional"

    **Contexto:** A Noruega é, possivelmente, o caso mais bem-sucedido de gestão intertemporal de recursos naturais no mundo. O Government Pension Fund Global — popularmente chamado de "fundo do petróleo" — foi criado em 1990 para transformar a riqueza petrolífera finita em um ativo financeiro perpétuo que beneficiasse gerações futuras.

    **Dados:** Em 2024, o fundo ultrapassou US$ 1,7 trilhão em ativos sob gestão (dados do Norges Bank Investment Management — NBIM), tornando-se o maior fundo soberano do mundo. O fundo detém aproximadamente 1,5% de todas as ações listadas globalmente. A regra fiscal norueguesa permite ao governo gastar apenas o retorno real esperado do fundo (~3% ao ano), preservando o principal para as próximas gerações. A taxa de retorno anual média desde 1998 foi de aproximadamente 6,3% em termos nominais.

    **Análise:** O fundo norueguês é uma aplicação direta do modelo de Fisher em escala nacional: em vez de consumir toda a receita petrolífera hoje (maximizar \(C_1\)), o governo poupa a maior parte e consome apenas o fluxo de rendimentos (\(rW\)), suavizando o consumo ao longo das gerações — exatamente como o consumidor do modelo de dois períodos. A regra de 3% é uma perpetuidade: \(VP = F/r\), com \(r = 3\%\), significando que o fundo pode manter esse nível de gasto indefinidamente. O contraste com outros países ricos em petróleo — como Venezuela e Nigéria, que consumiram suas receitas petrolíferas sem acumular ativos — ilustra as consequências dramáticas de diferentes taxas de desconto social.

    **Para refletir:** Por que é tão difícil para democracias adotar regras fiscais intertemporais como a norueguesa? Que papel a preferência temporal dos eleitores (\(\rho\)) desempenha nessa dificuldade?

---

## 18.6 Critério do Valor Presente Descontado (VPL)

Toda a teoria intertemporal que construímos até aqui culmina em uma pergunta brutalmente prática: "devo ou não investir neste projeto?" O dono da padaria não quer saber de equações de Euler — ele quer saber se o forno novo compensa mais do que deixar o dinheiro rendendo no CDB. O critério do Valor Presente Líquido (VPL) é a resposta da microeconomia a essa pergunta: um projeto deve ser aceito se, e somente se, o valor presente de todos os seus fluxos de caixa futuros excede o investimento inicial. Essa regra aparentemente simples é, na verdade, a aplicação direta do conceito de custo de oportunidade do capital.

### Definição

!!! definition "Valor Presente Líquido (VPL)"
    O **Valor Presente Líquido** de um projeto de investimento que gera fluxos de caixa \(\{F_0, F_1, F_2, \ldots, F_n\}\) é:

    \[
    VPL = \sum_{t=0}^{n} \frac{F_t}{(1+r)^t} = F_0 + \frac{F_1}{1+r} + \frac{F_2}{(1+r)^2} + \cdots + \frac{F_n}{(1+r)^n}
    \label{eq:18.8} \tag{18.8} \]

    onde \(r\) é a taxa de desconto (custo de oportunidade do capital) e \(F_0 < 0\) representa o investimento inicial.

### Regra de decisão

- Se \(VPL > 0\): o projeto gera valor líquido positivo; deve ser aceito.
- Se \(VPL < 0\): o projeto destrói valor; deve ser rejeitado.
- Se \(VPL = 0\): o projeto remunera exatamente o custo de oportunidade; indiferente.

A lógica é transparente: o VPL responde à pergunta "quanto valor este projeto cria acima do que eu obteria simplesmente aplicando o mesmo dinheiro no mercado financeiro à taxa \(r\)?" Se a resposta é positiva, o projeto é melhor que a alternativa financeira. Se é negativa, o dinheiro rende mais no banco.

!!! idea "Intuição Econômica"
    **Em uma frase:** O VPL responde à pergunta mais importante de qualquer investimento: "Vale mais a pena colocar meu dinheiro aqui ou deixar rendendo no banco?"

    **Pense assim:** Um dono de padaria em Belo Horizonte avalia comprar um forno novo por R$ 50 mil que vai gerar R$ 15 mil de lucro extra por ano durante 5 anos. Mas ele poderia deixar os R$ 50 mil no CDB a 10% ao ano. O VPL calcula se o forno supera o CDB, trazendo todos os lucros futuros para "reais de hoje".

    **Por que isso importa:** No Brasil, onde a taxa de juros real é alta, muitos projetos produtivos que seriam viáveis em outros países apresentam VPL negativo — o dinheiro rende mais parado no banco do que investido na economia real.

### Sensibilidade à taxa de desconto

O VPL é uma função decrescente de \(r\). Projetos com fluxos de caixa mais distantes no tempo são mais sensíveis a variações na taxa de desconto. Essa propriedade tem implicações profundas:

1. **Projetos de longo prazo são mais vulneráveis a juros altos.** Uma rodovia com concessão de 30 anos, uma usina hidrelétrica ou um investimento em P&D cujos retornos levam décadas para se materializar são desproporcionalmente penalizados por taxas de desconto elevadas.

2. **A escolha da taxa de desconto é a decisão mais consequente da análise.** Dois analistas que concordam sobre os fluxos de caixa futuros podem chegar a conclusões opostas simplesmente por usarem taxas de desconto diferentes. A taxa deve refletir o custo de oportunidade ajustado ao risco do projeto — e esse ajuste envolve julgamento.

3. **Juros altos criam viés a favor de projetos de curto prazo.** Em ambientes de juros elevados, como historicamente no Brasil, o VPL favorece investimentos com retorno rápido (comércio, serviços) em detrimento de investimentos de maturação longa (infraestrutura, indústria). Isso pode explicar parte da baixa taxa de investimento em infraestrutura observada no país.

---

## 18.7 Taxa Interna de Retorno (TIR)

Enquanto o VPL fornece o valor monetário gerado por um projeto a uma dada taxa de desconto, a Taxa Interna de Retorno (TIR) responde a uma pergunta complementar: qual é a taxa de retorno implícita do projeto? Em outras palavras, a TIR é a taxa de desconto que torna o investimento exatamente neutro — nem criando nem destruindo valor. Embora amplamente utilizada na prática, a TIR apresenta limitações que tornam o VPL o critério teoricamente superior.

!!! definition "Taxa Interna de Retorno (TIR)"
    A **Taxa Interna de Retorno** é a taxa de desconto \(r^*\) que torna o VPL igual a zero:

    \[
    \sum_{t=0}^{n} \frac{F_t}{(1+r^*)^t} = 0
    \label{eq:18.9} \tag{18.9} \]

    A regra de decisão é: aceitar o projeto se \(TIR > r\) (custo de oportunidade do capital).

### Limitações da TIR

A TIR apresenta problemas conhecidos:

1. **Múltiplas TIRs**: quando os fluxos de caixa mudam de sinal mais de uma vez, pode haver mais de uma TIR (pela regra de Descartes). Considere um projeto de mineração: investimento inicial (negativo), receitas de extração (positivo), custo de remediação ambiental ao final (negativo). Com duas mudanças de sinal, pode haver duas raízes para a equação $\eqref{eq:18.9}$, e nenhuma delas é, por si só, um critério útil de decisão.

2. **Projetos mutuamente exclusivos**: a TIR pode ordenar projetos de forma diferente do VPL, especialmente quando os projetos diferem em escala ou timing. Um projeto pequeno e rentável pode ter TIR maior que um projeto grande que cria mais valor total.

3. **Escala**: a TIR não leva em conta o tamanho do investimento. Um retorno de 100% sobre R$ 100 (TIR alta) é menos valioso que um retorno de 20% sobre R$ 1.000.000 (TIR menor, mas VPL muito maior).

4. **Hipótese implícita de reinvestimento**: a TIR assume que os fluxos de caixa intermediários são reinvestidos à própria TIR, o que pode ser irrealista para projetos com TIR muito alta. O VPL assume reinvestimento ao custo de capital, hipótese mais conservadora e plausível.

Por essas razões, o VPL é considerado o critério superior para avaliação de investimentos. A TIR, entretanto, tem valor comunicacional: é mais intuitivo dizer "o projeto rende 18% ao ano" do que "o projeto tem VPL de R$ 42.000". Na prática, ambos os critérios são reportados.

!!! warning "⚠️ Erro Comum"

    **Achar que VPL = 0 significa lucro zero.**

    Quando o VPL de um projeto é zero, isso **não** significa que o projeto não dá lucro. Significa que ele remunera exatamente o custo de oportunidade do capital — ou seja, rende tanto quanto a melhor alternativa de investimento disponível. A firma obtém lucro contábil positivo (fluxos de caixa > investimento), mas não obtém lucro econômico (não supera a alternativa). Analogamente, VPL = 0 equivale a dizer que a TIR iguala o custo de capital: o projeto é marginalmente viável, não deficitário.

<iframe src="../graficos/cap18/vpl-tir.html" title="Figura 18.2 — Valor Presente Líquido como função da taxa de desconto" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 18.2 — Valor Presente Líquido como função da taxa de desconto.** O ponto onde a curva cruza o eixo horizontal é a Taxa Interna de Retorno (TIR).
</div>

!!! box-brasil "🇧🇷 Box Brasil 18.3 — Tesouro Direto e a democratização do investimento"

    **Contexto:** O **Tesouro Direto**, criado em 2002 pelo Tesouro Nacional em parceria com a B3, é um programa que permite a pessoas físicas comprar títulos públicos federais pela internet, com investimento mínimo a partir de R$ 30. Antes do programa, títulos públicos eram acessíveis apenas a investidores institucionais (bancos, fundos), e o pequeno investidor ficava restrito à caderneta de poupança ou a CDBs com rentabilidade inferior. O programa democratizou o acesso ao ativo de menor risco da economia brasileira — a dívida soberana.

    **Dados:** Em 2024, o Tesouro Direto contava com mais de 2,5 milhões de investidores ativos e estoque superior a R$ 130 bilhões. Os principais títulos disponíveis ilustram diretamente os conceitos deste capítulo: (i) **Tesouro Selic (LFT)** — título pós-fixado atrelado à taxa Selic, com risco de mercado virtualmente nulo, ideal para reserva de emergência; (ii) **Tesouro IPCA+ (NTN-B)** — título que paga taxa real fixa + IPCA, protegendo o poder de compra e sendo ideal para objetivos de longo prazo (aposentadoria); (iii) **Tesouro Prefixado (LTN)** — título com taxa nominal fixa, cujo VPL é diretamente calculável pela fórmula da Seção 18.6. A taxa real das NTN-B de longo prazo (2035+) oscilou entre 5,5% e 7% a.a. em 2024 — refletindo os juros reais historicamente elevados do Brasil.

    **Análise:** O Tesouro Direto é uma aplicação direta do critério do VPL (Seção 18.6) e da estrutura a termo de juros: o investidor compara o VPL do título (fluxo de cupons + principal descontados) com o preço de compra. A NTN-B Principal (sem cupons semestrais) é um título *zero-coupon* puro, cujo preço é simplesmente \(P = \frac{VF}{(1+r)^n}\), onde \(r\) é a taxa real e \(n\) o prazo em anos — a fórmula mais básica de desconto intertemporal. O Tesouro Direto também ilustra o conceito de **risco de mercado** (Seção 18.5): se os juros reais sobem, o preço da NTN-B cai (relação inversa VPL-taxa de desconto da Figura 18.2). Investidores de longo prazo que mantêm até o vencimento eliminam esse risco; quem vende antecipadamente está exposto à volatilidade.

    **Para refletir:** Com a taxa real da NTN-B em torno de 6% a.a. em 2024, qual é o VPL de abrir um negócio que rende 10% a.a. reais? E se o negócio rende apenas 5%? O Tesouro Direto fornece o benchmark do custo de oportunidade do capital — o \(r\) da fórmula do VPL — para qualquer decisão de investimento no Brasil.

---

## 18.8 Demanda da Firma por Capital

O VPL e a TIR avaliam projetos de investimento a partir dos fluxos de caixa. Mas qual a regra que a firma segue para decidir quanto capital empregar? A resposta conecta a teoria da produção — já estudada nos Capítulos 9–12 — à teoria dos juros: a firma investe em capital até que o retorno marginal do investimento iguale seu custo de oportunidade, determinado pela taxa de juros e pela depreciação.

A firma demanda capital até que o **valor do produto marginal do capital** iguale o **custo de uso do capital**:

\[
p \cdot PMg_K = c_K
\label{eq:18.10} \tag{18.10} \]

O **custo de uso do capital** (user cost of capital, ou custo de Jorgenson) é:

\[
c_K = p_K(r + \delta)
\label{eq:18.11} \tag{18.11} \]

onde \(p_K\) é o preço do bem de capital, \(r\) é a taxa de juros real e \(\delta\) é a taxa de depreciação.

!!! definition "Custo de uso do capital"
    O custo de uso do capital \(c_K = p_K(r + \delta)\) representa o custo por período de utilizar uma unidade de capital. Ele inclui dois componentes: o **custo de oportunidade** do capital (\(p_K \cdot r\), o retorno que se obteria aplicando o valor do capital no mercado financeiro) e o **custo de depreciação** (\(p_K \cdot \delta\), a perda de valor do capital por desgaste ou obsolescência).

As equações $\eqref{eq:18.10}$ e $\eqref{eq:18.11}$ mostram que a demanda por capital é decrescente na taxa de juros: quando \(r\) sobe, \(c_K\) aumenta e a firma reduz seu estoque de capital desejado. A elasticidade da demanda por capital em relação à taxa de juros depende da curvatura da função de produção — com rendimentos rapidamente decrescentes do capital (função muito côncava), a resposta é pequena; com rendimentos lentamente decrescentes, a resposta é grande.

No caso Cobb-Douglas \(Y = A K^\alpha L^{1-\alpha}\), o produto marginal do capital é \(PMg_K = \alpha A K^{\alpha-1} L^{1-\alpha}\), e a condição $\eqref{eq:18.10}$ implica:

\[
K^* = \left(\frac{p \cdot \alpha A}{c_K}\right)^{\frac{1}{1-\alpha}} L \label{eq:18.11b} \tag{18.11b}
\]

A demanda por capital é decrescente no custo de uso \(c_K\) (e, portanto, na taxa de juros \(r\)) e crescente na produtividade total dos fatores \(A\), no preço do produto \(p\) e na quantidade de trabalho \(L\).

!!! idea "Intuição Econômica"
    **Em uma frase:** A firma compra capital até que o último real investido em máquinas renda exatamente o que renderia se aplicado no mercado financeiro.

    **Pense assim:** Um transportador autônomo em Goiás avalia comprar um caminhão novo por R$ 400 mil. O caminhão gera frete de R$ 10 mil por mês, mas deprecia 15% ao ano e o financiamento cobra 12% de juros. O custo de uso mensal é \(c_K = 400.000 \times (0{,}12 + 0{,}15)/12 = R\$ 9.000\). Como o frete (R$ 10.000) supera o custo de uso (R$ 9.000), vale a pena. Mas se os juros subirem para 18%, o custo de uso pula para R$ 11.000, e o caminhão passa a dar prejuízo econômico.

    **Por que isso importa:** No Brasil, a combinação de juros reais altos e depreciação acelerada (especialmente para equipamentos importados sujeitos a variação cambial) eleva substancialmente o custo de uso do capital, desincentivando a formação de capital fixo.

---

## 18.9 Juros Compostos e Tempo Contínuo

Albert Einstein provavelmente nunca disse que os juros compostos são "a oitava maravilha do mundo" — mas quem inventou a citação tinha razão. A mágica de juros sobre juros transforma centavos em fortunas (dado tempo suficiente) e dívidas pequenas em bolas de neve (dado descuido suficiente). Nesta seção, apresentamos as ferramentas matemáticas de capitalização e desconto que fundamentam todos os cálculos de valor presente e futuro do capítulo. Embora frequentemente abordados em cursos de matemática financeira, esses conceitos são indispensáveis para a análise econômica intertemporal — desde a avaliação de projetos de investimento até a modelagem de crescimento econômico.

### Juros compostos discretos

Com capitalização \(m\) vezes ao ano, um capital \(K_0\) investido à taxa nominal anual \(i\) rende, após \(n\) anos:

\[
K_n = K_0 \left(1 + \frac{i}{m}\right)^{mn}
\]

A frequência de capitalização importa: a mesma taxa nominal de 12% ao ano rende mais se capitalizada mensalmente (\(m = 12\)) do que anualmente (\(m = 1\)), porque os juros dos primeiros meses geram juros nos meses seguintes — juros sobre juros, a essência da capitalização composta.

### Capitalização contínua

Quando \(m \to \infty\), obtemos a capitalização contínua:

\[
K(t) = K_0 \cdot e^{it}
\]

onde \(e \approx 2{,}71828\) é a base do logaritmo natural. A taxa instantânea de crescimento é \(i\). A capitalização contínua é uma idealização matemática conveniente que simplifica consideravelmente as fórmulas de otimização e crescimento econômico.

### Valor presente em tempo contínuo

O valor presente de um fluxo \(F(t)\) recebido no instante \(t\), descontado à taxa contínua \(r\), é:

\[
VP = F(t) \cdot e^{-rt}
\]

Para um fluxo contínuo \(f(t)\) ao longo do tempo:

\[
VP = \int_0^T f(t) \cdot e^{-rt} \, dt
\]

### Relação entre taxas discreta e contínua

Se a taxa discreta (anual) é \(r_d\) e a taxa contínua é \(r_c\), então:

\[
1 + r_d = e^{r_c} \quad \Leftrightarrow \quad r_c = \ln(1 + r_d)
\]

Para valores pequenos de \(r_d\), a aproximação \(r_c \approx r_d\) é razoável (por exemplo, para \(r_d = 5\%\), \(r_c = \ln(1{,}05) = 4{,}88\%\)). A diferença cresce para taxas altas — mais um motivo pelo qual a distinção é relevante no contexto brasileiro.

!!! note "Perpetuidades e anuidades"
    - **Perpetuidade** (fluxo constante \(F\) para sempre): \(VP = F/r\)
    - **Anuidade** (fluxo constante \(F\) por \(n\) períodos): \(VP = F \cdot \frac{1 - (1+r)^{-n}}{r}\)
    - **Perpetuidade crescente** (fluxo crescendo a taxa \(g < r\)): \(VP = F/(r - g)\)

    A fórmula da perpetuidade é surpreendentemente útil em finanças. Ela implica que, se a taxa de juros é 5%, um ativo que paga R$ 100 por ano para sempre vale R$ 2.000 hoje. Se a taxa cai para 2%, o mesmo ativo vale R$ 5.000 — um aumento de 150% no valor do ativo. Essa sensibilidade explica por que quedas na taxa de juros provocam altas expressivas nos preços dos ativos financeiros e imobiliários.

---

## 18.10 VPL, Taxa de Desconto e Decisão de Investimento

Considere um projeto com investimento inicial de R$ 100.000 e fluxos de caixa anuais conforme a tabela abaixo:

<a id="tabela-18-2"></a>

| Ano | Fluxo de caixa (R$) |
|---|---|
| 0 | −100.000 |
| 1 | 30.000 |
| 2 | 35.000 |
| 3 | 40.000 |
| 4 | 45.000 |

<div class="caption-obj" markdown>
**Tabela 18.2 — Fluxos de caixa do projeto de investimento.**
</div>

A TIR deste projeto é aproximadamente 15,2%. A [Tabela 18.3](#tabela-18-3) mostra o VPL para diferentes taxas de desconto:

<a id="tabela-18-3"></a>

| Taxa de desconto (\(r\)) | VPL (R$) | Decisão |
|---|---|---|
| 5% | 35.460 | Aceitar |
| 8% | 24.689 | Aceitar |
| 10% | 18.444 | Aceitar |
| 12% | 12.658 | Aceitar |
| 15% | 4.474 | Aceitar |
| 15,2% (TIR) | ≈ 0 | Indiferente |
| 18% | −5.536 | Rejeitar |
| 20% | −10.648 | Rejeitar |
| 25% | −22.560 | Rejeitar |

<div class="caption-obj" markdown>
**Tabela 18.3 — VPL, taxa de desconto e decisão de investimento.**
</div>

A tabela ilustra dois pontos fundamentais: (i) o VPL é decrescente na taxa de desconto; (ii) projetos viáveis a juros baixos podem se tornar inviáveis quando a taxa de juros sobe — um problema particularmente relevante no contexto brasileiro de juros historicamente elevados. Note que, a uma taxa de 5% (típica de economias avançadas), o projeto gera R$ 35.460 de valor; a 15% (taxa real elevada), gera apenas R$ 4.474 — o projeto mal se sustenta. A 18%, é rejeitado. A mesma tecnologia, o mesmo projeto, a mesma demanda — apenas a taxa de juros difere, e a decisão se inverte.

!!! box-mundo "Box Mundo 18.2 — Stern vs. Nordhaus: a taxa de desconto e as mudanças climáticas"

    **Contexto:** Um dos debates mais acalorados em economia ambiental nas últimas décadas gira em torno da taxa de desconto a ser usada na avaliação de políticas climáticas. Como os benefícios de reduzir emissões hoje se materializam em 50, 100 ou 200 anos, a escolha da taxa de desconto tem consequências dramáticas sobre as conclusões.

    **Dados:** O Stern Review (2006), encomendado pelo governo britânico, usou uma taxa de desconto social de ~1,4% ao ano e concluiu que os custos das mudanças climáticas equivaleriam a uma perda permanente de 5–20% do PIB global, justificando ação imediata e agressiva. William Nordhaus (Nobel 2018), usando uma taxa de ~5–6% calibrada por taxas de mercado, concluiu que a política ótima seria uma redução gradual de emissões, com custo presente muito menor. A diferença no VPL dos danos climáticos entre as duas abordagens é de dezenas de trilhões de dólares.

    **Análise:** A divergência ilustra perfeitamente a sensibilidade do VPL à taxa de desconto discutida na Seção 18.6. Stern argumentou que questões intergeracionais exigem uma taxa de desconto social próxima de zero — seria eticamente indefensável descontar o bem-estar de gerações futuras. Nordhaus contrapôs que taxas de desconto devem refletir preferências e oportunidades reais de investimento: se o capital rende 5% ao ano, investir em mitigação que rende menos que isso é ineficiente. A fórmula de Ramsey, \(r = \rho + \eta \cdot g\), onde \(\rho\) é a taxa de desconto puro, \(\eta\) a elasticidade da utilidade marginal e \(g\) o crescimento do consumo, está no centro do debate.

    **Para refletir:** Se a taxa de desconto "correta" para políticas climáticas é tão incerta, que implicações isso tem para a robustez das análises de custo-benefício em geral?

---

!!! box-brasil "🇧🇷 Box Brasil 18.2 — Por que os juros brasileiros são historicamente altos?"
    O Brasil é conhecido internacionalmente por praticar uma das taxas de juros reais mais elevadas do mundo. A taxa Selic — a taxa básica de juros definida pelo Comitê de Política Monetária (Copom) do [Banco Central do Brasil](https://www.bcb.gov.br) — atingiu níveis estratosféricos ao longo das últimas décadas.

    **Evolução histórica da Selic:**

    - Nos anos 1990 (pós-Plano Real), a taxa Selic real frequentemente superava 20% ao ano.
    - Entre 2003 e 2012, houve redução gradual, mas a Selic real ainda oscilava entre 5% e 10% ao ano.
    - Em 2020, durante a pandemia de COVID-19, a Selic nominal atingiu o mínimo histórico de 2% ao ano (taxa real negativa).
    - A partir de 2021, o ciclo de aperto monetário elevou a Selic a 13,75% ao ano em 2022, com taxa real em torno de 7-8%.

    **Por que os juros são tão altos? Principais hipóteses:**

    1. **Dominância fiscal**: a elevada dívida pública e a percepção de risco fiscal exigem prêmios de risco maiores para financiamento do governo. Quanto maior a desconfiança sobre a sustentabilidade fiscal, maiores os juros que o [Tesouro Nacional](https://www.tesouronacional.fazenda.gov.br) precisa oferecer.

    2. **Crédito direcionado e segmentação**: uma parcela significativa do crédito no Brasil é direcionada ([BNDES](https://www.bndes.gov.br), crédito rural, habitacional) a taxas subsidiadas. Isso reduz a eficácia da política monetária, exigindo uma Selic mais alta para atingir o mesmo efeito contracionista sobre a parcela livre do crédito.

    3. **Inércia inflacionária e indexação**: a memória inflacionária do período de hiperinflação (1980-1994) e mecanismos de indexação residuais tornam as expectativas de inflação mais resistentes, exigindo juros mais altos para ancorar expectativas.

    4. **Incerteza jurisdicional**: instabilidade regulatória, mudanças frequentes de regras tributárias e insegurança jurídica elevam o prêmio de risco exigido por investidores.

    5. **Baixa taxa de poupança doméstica**: a taxa de poupança bruta do Brasil (~15% do PIB) é significativamente inferior à de outros emergentes como China (~45%) e Índia (~30%), pressionando os juros de equilíbrio para cima.

    **Impacto sobre o investimento privado:**

    A taxa de investimento brasileira (Formação Bruta de Capital Fixo / PIB) oscila em torno de 15-18%, bem abaixo dos ~25% considerados necessários para sustentar crescimento robusto. Juros elevados encarecem o custo de uso do capital (\(c_K = p_K(r + \delta)\)), tornando inviáveis projetos que seriam rentáveis em ambientes de juros mais baixos.

    Dados do BNDES mostram que, historicamente, o banco de desenvolvimento desempenhou um papel de "compensação" parcial, oferecendo crédito de longo prazo a taxas subsidiadas (TJLP, depois TLP). Contudo, a partir de 2017, a substituição da TJLP pela TLP (atrelada a taxas de mercado) reduziu esse subsídio, aproximando o custo do crédito do BNDES ao custo de mercado.

    **Consequências para a avaliação de projetos:**

    Conforme a tabela de VPL apresentada na seção anterior, projetos que seriam viáveis a uma taxa de desconto de 5% (como em muitos países desenvolvidos) tornam-se inviáveis a 15% ou 20% (taxas reais historicamente observadas no Brasil). Isso representa um viés contra investimentos de longo prazo, especialmente em infraestrutura, pesquisa e desenvolvimento, e indústrias capital-intensivas.

---

## 18.11 Precificação de Recursos Naturais: A Regra de Hotelling

VPL e TIR funcionam bem quando o ativo em questão foi construído por mãos humanas — uma fábrica, um galpão, um software. Mas o que fazer com aquilo que a natureza criou e que, uma vez consumido, não volta? Petróleo, minério de ferro, mogno nativo: são estoques finitos, e cada barril extraído hoje é um barril a menos para amanhã. Isso cria um dilema intertemporal que nenhum engenheiro de produção resolve sozinho: extrair agora e aplicar o dinheiro, ou deixar o recurso no solo apostando que valerá mais no futuro? A resposta, formalizada por Harold Hotelling em 1931, é uma das proposições mais elegantes da economia dos recursos naturais.

### O problema do recurso exaurível

Considere o proprietário de uma mina com estoque finito \(S_0\) de um recurso natural não renovável (petróleo, minério, gás). Em cada período, ele deve decidir quanto extrair (\(q_t\)) e quanto preservar para o futuro.

Se o preço do recurso é \(p_t\), o custo marginal de extração é \(c\) (constante) e a taxa de juros é \(r\), o proprietário enfrenta um problema de otimização intertemporal: maximizar o valor presente dos lucros da extração, sujeito à restrição de que a extração total não pode exceder o estoque.

!!! proof "Demonstração: Derivação da Regra de Hotelling"
    O proprietário da mina maximiza o valor presente dos lucros da extração:

    \[
    \max_{\{q_t\}} \sum_{t=0}^{\infty} \frac{(p_t - c) \cdot q_t}{(1+r)^t} \quad \text{sujeito a} \quad \sum_{t=0}^{\infty} q_t \leq S_0, \quad q_t \geq 0
    \]

    O lagrangeano é:

    \[
    \mathcal{L} = \sum_{t=0}^{\infty} \frac{(p_t - c) q_t}{(1+r)^t} + \lambda \left( S_0 - \sum_{t=0}^{\infty} q_t \right)
    \]

    A condição de primeira ordem para \(q_t > 0\) é:

    \[
    \frac{\partial \mathcal{L}}{\partial q_t} = \frac{p_t - c}{(1+r)^t} - \lambda = 0
    \]

    Portanto:

    \[
    p_t - c = \lambda (1+r)^t
    \]

    Definindo a **renda de escassez** (ou *royalty*) como \(R_t \equiv p_t - c\), temos:

    \[
    R_t = \lambda (1+r)^t = R_0 (1+r)^t
    \]

    onde \(R_0 = \lambda\) é a renda de escassez no período inicial. Tomando a razão entre dois períodos consecutivos:

    \[
    \frac{R_{t+1}}{R_t} = 1 + r
    \]

    Ou, equivalentemente:

    \[
    \frac{R_{t+1} - R_t}{R_t} = r
    \]

    **Esta é a Regra de Hotelling**: em equilíbrio, a renda de escassez (preço líquido do custo de extração) de um recurso natural exaurível deve crescer à taxa de juros \(r\).

    **Intuição**: se a renda de escassez crescesse a uma taxa superior a \(r\), seria mais lucrativo não extrair hoje e esperar — o proprietário reduziria a extração presente, elevando o preço hoje e reduzindo a taxa de crescimento. Se crescesse a uma taxa inferior a \(r\), seria melhor extrair tudo agora e aplicar no mercado financeiro — a extração presente aumentaria, reduzindo o preço hoje e elevando a taxa de crescimento. No equilíbrio, os dois incentivos se equilibram. \(\blacksquare\)

!!! theorem "Regra de Hotelling"
    Em equilíbrio competitivo, o preço líquido (preço menos custo marginal de extração) de um recurso natural exaurível cresce à taxa de juros:

    \[
    \frac{\dot{R}}{R} = r \quad \text{(em tempo contínuo)} \qquad \text{ou} \qquad \frac{R_{t+1} - R_t}{R_t} = r \quad \text{(em tempo discreto)}
    \label{eq:18.12} \tag{18.12} \]

    onde \(R = P - c\) é a renda de escassez do recurso.

!!! idea "Intuição Econômica"
    **Em uma frase:** O preço de um recurso que vai acabar precisa subir ao longo do tempo à mesma taxa dos juros — senão, o dono preferiria extrair tudo hoje e aplicar o dinheiro.

    **Pense assim:** Imagine um fazendeiro no Pará com mogno nativo na propriedade. Se o preço da madeira não estiver subindo pelo menos tanto quanto o rendimento de um CDB, ele corta tudo agora e coloca o dinheiro no banco. Mas se o mogno está valorizando mais que os juros, compensa deixar a árvore crescendo. No equilíbrio, as duas opções se equivalem.

    **Por que isso importa:** A regra de Hotelling é a base para pensar a exploração sustentável de petróleo, minérios e outros recursos finitos — e ajuda a entender por que juros altos aceleram o desmatamento e a extração mineral.

### Implicações

1. **O preço do recurso tende a subir ao longo do tempo**, refletindo sua crescente escassez;
2. **Recursos com custo de extração constante** terão preços que convergem assintoticamente para um caminho exponencial;
3. **A taxa de juros determina a velocidade de exaustão**: juros altos aceleram a extração (o futuro é mais fortemente descontado);
4. **A existência de uma *backstop technology*** — um substituto disponível a custo fixo — coloca um teto no preço do recurso e pode antecipar a exaustão (como na relação entre petróleo e energias renováveis).

!!! tip "A regra de Hotelling na prática"
    Empiricamente, os preços de muitos recursos naturais não seguem a trajetória prevista pela regra de Hotelling. Isso pode ser explicado por: (i) descobertas de novas reservas; (ii) progresso tecnológico que reduz custos de extração; (iii) desenvolvimento de substitutos; (iv) poder de mercado (OPEP, por exemplo).

!!! box-mundo "Box Mundo 18.3 — A maldição do petróleo: Hotelling encontra instituições"

    **Contexto:** A regra de Hotelling prevê que proprietários racionais de recursos exauríveis administram a extração de forma a maximizar o valor presente dos royalties. Na prática, porém, muitos países ricos em petróleo experimentaram a chamada "maldição dos recursos naturais" (*resource curse*): crescimento econômico inferior ao esperado, deterioração institucional e volatilidade macroeconômica.

    **Dados:** Sachs e Warner (2001) documentaram que países com alta dependência de exportações de recursos naturais cresceram, em média, mais lentamente entre 1970 e 1990 do que países com base exportadora diversificada. A Nigéria, apesar de ter exportado mais de US$ 600 bilhões em petróleo entre 1970 e 2020 (dados da OPEC), viu sua renda per capita estagnar. A Venezuela, com as maiores reservas provadas do mundo, entrou em colapso econômico a partir de 2014. Em contraste, a Noruega (Box 18.1) e o Botswana (diamantes) usaram seus recursos para financiar poupança e investimento em capital humano.

    **Análise:** A divergência sugere que o problema não é a regra de Hotelling em si — que é uma condição de equilíbrio —, mas as instituições que mediam a decisão de extração. Em países com instituições fracas, os agentes políticos enfrentam uma taxa de desconto efetiva altíssima (governantes podem perder o poder a qualquer momento), incentivando extração acelerada e consumo imediato das receitas. A renda de escassez é dissipada em rent-seeking, corrupção e gastos correntes, em vez de ser convertida em capital produtivo ou fundos soberanos. A teoria de Hotelling, portanto, funciona melhor como benchmark normativo do que como descrição positiva.

    **Para refletir:** O pré-sal brasileiro gera um dilema intertemporal análogo. Que mecanismos institucionais poderiam garantir que os royalties do pré-sal sejam convertidos em ativos produtivos, e não em gasto corrente?

<iframe src="../graficos/cap18/desconto-exponencial-hiperbolico.html" title="Figura 18.3 — Desconto exponencial vs quasi-hiperbolico" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 18.3 — Desconto exponencial vs quasi-hiperbolico.** O desconto exponencial padrao (\(\delta^t\)) trata todos os periodos igualmente, enquanto o modelo quasi-hiperbolico (\(\beta\delta^t\)) desconta o futuro proximo mais fortemente que o distante, gerando vies pelo presente e inconsistencia temporal (Laibson, 1997).
</div>

---


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O Valor Presente Líquido (VPL) de um projeto de investimento é negativo quando:"
    - (a) O projeto gera fluxos de caixa positivos em todos os períodos
    - (b) A soma dos fluxos de caixa futuros descontados à taxa de juros é menor que o investimento inicial
    - (c) A taxa de juros é zero
    - (d) O projeto tem horizonte infinito

    ??? success "Resposta"
        **(b)** O VPL é $\sum_{t=0}^{T} \frac{FC_t}{(1+r)^t}$. Se esse valor é negativo, o custo inicial supera o valor presente dos benefícios futuros — o projeto destrói valor à taxa de desconto $r$. A alternativa (a) não garante VPL positivo se os fluxos forem pequenos; (c) tornaria o VPL igual à soma simples dos fluxos; (d) não determina o sinal.

??? question "2. A Taxa Interna de Retorno (TIR) é a taxa de desconto que:"
    - (a) Maximiza o VPL do projeto
    - (b) Torna o VPL igual a zero
    - (c) Iguala a taxa de juros de mercado
    - (d) Minimiza o risco do investimento

    ??? success "Resposta"
        **(b)** A TIR é definida como a taxa $r^*$ tal que $\text{VPL}(r^*) = 0$. Se a TIR excede o custo de capital, o projeto é viável. A alternativa (a) confunde — o VPL é maximizado quando $r = 0$; (c) descreve o critério de decisão, não a definição; (d) não tem relação com a TIR.

??? question "3. A regra de Hotelling para recursos não renováveis afirma que, em equilíbrio:"
    - (a) O preço do recurso deve cair ao longo do tempo para estimular o consumo
    - (b) A renda do recurso (preço menos custo de extração) deve crescer à taxa de juros
    - (c) O recurso deve ser extraído o mais rápido possível
    - (d) O preço é determinado exclusivamente pelo custo de extração

    ??? success "Resposta"
        **(b)** A regra de Hotelling é a condição de arbitragem intertemporal: o proprietário deve ser indiferente entre extrair hoje e investir a receita ou esperar e extrair amanhã. Isso exige que a renda líquida do recurso cresça à taxa de juros. Se crescesse mais rápido, valeria esperar; se mais devagar, extrair tudo hoje. A alternativa (c) seria racional apenas se a renda nunca crescesse.

??? question "4. Um agente com desconto exponencial e fator $\delta = 0{,}95$ por período valoriza R\\$100 daqui a 2 períodos como:"
    - (a) R$100,00
    - (b) R$95,00
    - (c) R$90,25
    - (d) R$85,00

    ??? success "Resposta"
        **(c)** Com desconto exponencial, o valor presente de $X$ em $t$ períodos é $\delta^t \cdot X = (0{,}95)^2 \times 100 = 0{,}9025 \times 100 = 90{,}25$. A alternativa (b) desconta apenas um período; (d) aplica taxa incorreta; (a) ignora o desconto.

??? question "5. A equação de Fisher $(1+i) = (1+r)(1+\pi)$ relaciona taxa nominal $i$, taxa real $r$ e inflação $\pi$. Se $i = 10\%$ e $\pi = 4\%$, a taxa real aproximada é:"
    - (a) 14%
    - (b) 6%
    - (c) 10%
    - (d) 4%

    ??? success "Resposta"
        **(b)** Pela aproximação de Fisher, $r \approx i - \pi = 10\% - 4\% = 6\%$. O valor exato é $r = (1{,}10/1{,}04) - 1 \approx 5{,}77\%$, próximo de 6%. A alternativa (a) soma em vez de subtrair; (c) ignora a inflação; (d) confunde taxa real com inflação.

---

## 📋 Resumo do Capítulo

- A taxa de juros é o preço do tempo, determinada pelo equilíbrio entre oferta de poupança e demanda de investimento no mercado de fundos emprestáveis. A taxa de juros de equilíbrio depende da produtividade do capital, das preferências intertemporais, da oferta de poupança e do risco percebido.
- A distinção entre taxa de juros nominal e real é essencial. A equação de Fisher (\(1+i = (1+r)(1+\pi)\)) conecta as duas, e o efeito Fisher prevê que variações na inflação esperada se refletem proporcionalmente na taxa nominal.
- O modelo de dois períodos de Fisher formaliza a escolha intertemporal do consumidor: no ótimo, a taxa marginal de substituição entre consumo presente e futuro iguala \(1 + r\). O consumidor é poupador se sua taxa de desconto subjetiva é menor que a taxa de juros, e devedor caso contrário. A equação de Euler governa a dinâmica ótima do consumo.
- O CAPM estabelece que o retorno esperado de um ativo arriscado depende de seu beta (risco sistemático), enquanto o fator de desconto estocástico generaliza a precificação para qualquer ativo. O enigma do prêmio de risco (equity premium puzzle) desafia os modelos padrão.
- A firma demanda capital até que o valor do produto marginal iguale o custo de uso do capital \(c_K = p_K(r + \delta)\). O VPL é o critério superior para avaliação de investimentos: projetos com VPL positivo geram valor acima do custo de oportunidade do capital. A TIR é complementar, mas apresenta limitações.
- A Regra de Hotelling estabelece que o preço líquido de um recurso natural exaurível deve crescer à taxa de juros no equilíbrio, equilibrando o incentivo entre extrair hoje e preservar para o futuro. Juros altos aceleram a extração.
- No Brasil, a taxa Selic historicamente elevada encarece o custo de capital, torna inviáveis projetos de longo prazo e cria viés contra investimentos produtivos, especialmente em infraestrutura e P&D.

## 🔑 Conceitos-Chave

<a id="tabela-18-4"></a>

| Conceito | Definição |
|----------|-----------|
| Capital | Estoque de bens produzidos utilizados como insumos na produção; fator de produção produzido (máquinas, equipamentos, infraestrutura) |
| Taxa de juros de equilíbrio | Taxa que iguala oferta de poupança e demanda de investimento no mercado de fundos emprestáveis |
| Equação de Fisher | Relação entre taxa nominal, real e inflação: \(1+i = (1+r)(1+\pi)\) |
| Riqueza intertemporal | Valor presente de toda a renda futura: \(W = Y_1 + Y_2/(1+r)\) |
| Equação de Euler | Condição de ótimo intertemporal: \(u'(C_1) = \beta(1+r)u'(C_2)\) |
| Taxa de preferência intertemporal | Taxa de desconto subjetiva \(\rho\) que mede a impaciência do consumidor; no ótimo, iguala-se à taxa de juros |
| Custo de uso do capital | Custo por período de utilizar uma unidade de capital: \(c_K = p_K(r + \delta)\), incluindo custo de oportunidade e depreciação |
| Valor Presente Líquido (VPL) | Soma dos fluxos de caixa descontados a valor presente; critério superior para decisão de investimento |
| Taxa Interna de Retorno (TIR) | Taxa de desconto que torna o VPL igual a zero; aceitar o projeto se TIR > custo de oportunidade |
| Regra de Hotelling | Em equilíbrio, o preço líquido de um recurso exaurível cresce à taxa de juros: \(\dot{R}/R = r\) |
| Beta (CAPM) | Medida de risco sistemático de um ativo: \(\beta_i = \text{Cov}(r_i, r_m)/\text{Var}(r_m)\) |
| Perpetuidade | Fluxo de pagamentos constante e infinito cujo valor presente é \(VP = F/r\) |

<div class="caption-obj" markdown>
**Tabela 18.4 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 18.1 — Consumo intertemporal e classificação poupador/devedor"
    **Enunciado.** Um consumidor vive dois períodos com renda \(Y_1 = 80\) e \(Y_2 = 66\). Suas preferências são \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1}\ln C_2\). A taxa de juros é \(r = 10\%\). (a) Calcule a riqueza intertemporal. (b) Encontre o consumo ótimo em cada período. (c) O consumidor é poupador ou devedor?

    **Resolução.**

    **(a) Riqueza intertemporal.**

    \[
    W = Y_1 + \frac{Y_2}{1+r} = 80 + \frac{66}{1{,}1} = 80 + 60 = 140
    \]

    **(b) Consumo ótimo.**

    Com preferências Cobb-Douglas intertemporais \(U = \ln C_1 + \beta \ln C_2\), onde \(\beta = 1/1{,}1\), o consumidor aloca uma fração \(\frac{1}{1+\beta}\) da riqueza para \(C_1\):

    \[
    C_1^* = \frac{1}{1 + 1/1{,}1} \cdot W = \frac{1}{1 + 10/11} \cdot 140 = \frac{11}{21} \cdot 140 = \frac{1.540}{21} \approx 73{,}3
    \]

    Para \(C_2\), usamos a restrição orçamentária:

    \[
    C_2^* = (1+r)(W - C_1^*) = 1{,}1 \times (140 - 73{,}3) = 1{,}1 \times 66{,}7 \approx 73{,}3
    \]

    Verificação pela condição de ótimo: \(TMS = C_2/(C_1 \cdot \beta) = 73{,}3/(73{,}3 \times 10/11) = 11/10 = 1{,}1 = 1+r\). ✓

    **(c) Poupador ou devedor?**

    Poupança: \(S = Y_1 - C_1^* = 80 - 73{,}3 = 6{,}7 > 0\).

    O consumidor é **poupador**. Ele transfere R$ 6,7 do período 1 para o período 2. Isso ocorre porque sua renda é relativamente mais concentrada no período 1, enquanto suas preferências (com \(\beta = 1/1{,}1 \approx 0{,}91\), ou seja, taxa de desconto subjetiva \(\rho = 10\%\) igual à taxa de juros) induzem consumo suave ao longo do tempo.

??? exercicio-resolvido "Exercício Resolvido 18.2 — VPL, TIR e decisão de investimento"
    **Enunciado.** Uma empresa avalia instalar painéis solares por R$ 200.000, com economia anual de R$ 55.000 durante 5 anos. O custo de oportunidade do capital é 12% a.a. (a) Calcule o VPL. (b) Calcule a TIR por interpolação. (c) O projeto deve ser aceito?

    **Resolução.**

    **(a) VPL a 12%.**

    \[
    VPL = -200.000 + 55.000 \times \frac{1 - (1{,}12)^{-5}}{0{,}12}
    \]

    O fator de anuidade é:

    \[
    \frac{1 - (1{,}12)^{-5}}{0{,}12} = \frac{1 - 0{,}5674}{0{,}12} = \frac{0{,}4326}{0{,}12} = 3{,}6048
    \]

    \[
    VPL = -200.000 + 55.000 \times 3{,}6048 = -200.000 + 198.264 = -1.736
    \]

    **(b) TIR por interpolação.**

    A 11%: fator de anuidade = \(\frac{1-(1{,}11)^{-5}}{0{,}11} = 3{,}6959\). VPL = \(-200.000 + 55.000 \times 3{,}6959 = 3.275\).

    A 12%: VPL = \(-1.736\) (calculado acima).

    Por interpolação linear:

    \[
    TIR \approx 11\% + \frac{3.275}{3.275 + 1.736} \times 1\% = 11\% + 0{,}65\% \approx 11{,}65\%
    \]

    **(c) Decisão.**

    Como \(VPL < 0\) (equivalentemente, \(TIR \approx 11{,}65\% < 12\% = r\)), o projeto **não deve ser aceito**. No contexto brasileiro, onde a taxa Selic real historicamente supera 5%, muitos projetos de infraestrutura e energia limpa que seriam viáveis em países com juros baixos tornam-se marginais ou inviáveis — ilustrando o impacto dos juros elevados sobre o investimento produtivo.

??? exercicio-resolvido "Exercício Resolvido 18.3 — Regra de Hotelling e trajetória de preços"
    **Enunciado.** Um depósito de lítio tem estoque \(S_0 = 5.000\) toneladas. O preço inicial é \(p_0 = 80\) mil reais/tonelada, o custo de extração é \(c = 20\) mil reais/tonelada e a taxa de juros real é \(r = 4\%\) ao ano. (a) Qual a renda de escassez inicial? (b) Segundo Hotelling, qual será o preço em 10 e 20 anos? (c) Se uma nova tecnologia de reciclagem de baterias surgir em 15 anos, tornando disponível um substituto perfeito a R$ 100 mil/tonelada, como isso afeta a trajetória?

    **Resolução.**

    **(a) Renda de escassez inicial.**

    \[
    R_0 = p_0 - c = 80 - 20 = 60 \text{ mil reais/tonelada}
    \]

    **(b) Preços futuros pela regra de Hotelling.**

    A renda de escassez cresce à taxa de juros: \(R_t = R_0(1+r)^t\).

    Em 10 anos: \(R_{10} = 60 \times (1{,}04)^{10} = 60 \times 1{,}4802 = 88{,}81\). Logo \(p_{10} = 88{,}81 + 20 = 108{,}81\) mil reais.

    Em 20 anos: \(R_{20} = 60 \times (1{,}04)^{20} = 60 \times 2{,}1911 = 131{,}47\). Logo \(p_{20} = 131{,}47 + 20 = 151{,}47\) mil reais.

    **(c) Efeito do substituto (backstop technology).**

    Se em \(t = 15\) surge um substituto perfeito a R$ 100 mil, o preço do lítio não pode ultrapassar esse teto (ninguém pagaria mais pelo lítio do que pelo substituto). Portanto, o preço terminal é \(p_{15} = 100\), o que implica \(R_{15} = 80\).

    A renda de escassez inicial se ajusta: \(R_0' = R_{15}/(1{,}04)^{15} = 80/1{,}8009 = 44{,}42\). Logo o preço inicial cairia para \(p_0' = 44{,}42 + 20 = 64{,}42\) mil reais — menor que os R$ 80 mil originais.

    **Interpretação:** A perspectiva de um substituto futuro reduz o valor presente do recurso e acelera sua extração. Isso é relevante para o Brasil, maior produtor de nióbio e com reservas significativas de lítio no Vale do Jequitinhonha (MG): o desenvolvimento de tecnologias alternativas para baterias afeta diretamente a estratégia ótima de exploração desses recursos.

---

## ✏️ Exercícios

!!! note "Exercícios do Capítulo 18"

<a id="ex-18-1"></a>**Exercício 18.1.** Um consumidor vive dois períodos, com renda \(Y_1 = 100\) e \(Y_2 = 110\), e preferências \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1} \ln C_2\). A taxa de juros é \(r = 10\%\).

(a) Calcule a riqueza intertemporal \(W\).

(b) Derive as escolhas ótimas \(C_1^*\) e \(C_2^*\).

(c) O consumidor é poupador ou devedor? Quanto ele poupa/toma emprestado?

(d) Se \(r\) sobe para 20%, como mudam \(C_1^*\) e \(C_2^*\)? Decomponha em efeitos renda e substituição.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-1)

---

<a id="ex-18-2"></a>**Exercício 18.2.** Uma firma considera investir em uma máquina que custa R$ 500.000, tem vida útil de 5 anos, deprecia-se linearmente e gera receitas líquidas anuais de R$ 150.000.

(a) Calcule o VPL do projeto para \(r = 8\%\) e \(r = 15\%\).

(b) Calcule a TIR do projeto (use método numérico ou interpolação).

(c) Se a Selic real é 8% e o prêmio de risco do setor é 4%, o projeto deve ser aceito?

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-2)

---

<a id="ex-18-3"></a>**Exercício 18.3.** Um recurso natural não renovável tem estoque inicial \(S_0 = 1000\) unidades. O preço de mercado é \(p_0 = 50\) reais por unidade, o custo marginal de extração é \(c = 10\) reais e a taxa de juros é \(r = 5\%\).

(a) Segundo a regra de Hotelling, qual será o preço do recurso daqui a 10 anos?

(b) Se uma nova tecnologia reduzir o custo de extração para \(c = 5\), o que acontece com a trajetória de preços? O recurso será exaurido mais rápido ou mais devagar?

(c) Se a taxa de juros subir para \(r = 10\%\), o que acontece com a velocidade de extração? Explique intuitivamente.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-3)

---

<a id="ex-18-4"></a>**Exercício 18.4.** Considere dois projetos mutuamente exclusivos:

<a id="tabela-18-5"></a>

| | Projeto A | Projeto B |
|---|---|---|
| Investimento inicial | R$ 100.000 | R$ 200.000 |
| Fluxo anual (5 anos) | R$ 35.000 | R$ 62.000 |
| TIR | 22,1% | 16,8% |

<div class="caption-obj" markdown>
**Tabela 18.5 — Projetos mutuamente exclusivos.**
</div>

(a) Calcule o VPL de cada projeto para \(r = 10\%\).

(b) Qual projeto deve ser escolhido pelo critério do VPL? E pelo critério da TIR?

(c) Encontre a taxa de desconto na qual os dois projetos têm o mesmo VPL (taxa de Fisher).

(d) Explique por que o VPL é considerado o critério superior.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-4)

---

<a id="ex-18-5"></a>**Exercício 18.5.** Discuta as seguintes questões, articulando teoria e evidência empírica:

(a) "Se o Brasil conseguisse reduzir a taxa de juros real de longo prazo de 6% para 3%, o impacto sobre o investimento produtivo seria enorme." Avalie essa afirmação usando o conceito de custo de uso do capital e a sensibilidade do VPL à taxa de desconto.

(b) Explique por que a regra de Hotelling pode não ser observada empiricamente para o preço do petróleo.

(c) Um governo que deseja incentivar investimentos em infraestrutura de longo prazo (com payback de 20-30 anos) deve se preocupar mais com a taxa de juros real ou com a estabilidade regulatória? Justifique usando os conceitos de VPL e prêmio de risco.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-5)

---

<a id="ex-18-6"></a>**Exercício 18.6.** Um consumidor tem preferências \(U(C_1, C_2) = \sqrt{C_1} + 0{,}9\sqrt{C_2}\), renda \(Y_1 = 120\) e \(Y_2 = 55\), e a taxa de juros é \(r = 10\%\).

(a) Derive a condição de primeira ordem (equação de Euler) para esse consumidor.

(b) Encontre o consumo ótimo em cada período.

(c) Classifique o consumidor como poupador ou devedor e interprete economicamente.

(d) Mostre que, se \(r\) cai para 5%, o consumidor continua poupador mas poupa menos. Interprete em termos de efeitos renda e substituição.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-6)

---

<a id="ex-18-7"></a>**Exercício 18.7.** Uma empresa de saneamento avalia construir uma estação de tratamento de água. Os dados são:

- Investimento inicial: R$ 10 milhões
- Receita líquida anual (tarifa menos custos operacionais): R$ 1,2 milhão
- Vida útil da concessão: 20 anos
- Valor residual ao final: zero
- Custo de capital próprio (via CAPM): \(r_E = 14\%\) (com \(\beta = 1{,}2\), \(r_f = 6\%\), \(E[r_m] - r_f = 6{,}7\%\))
- O projeto é 100% financiado com capital próprio

(a) Calcule o VPL do projeto.

(b) Se o governo oferecer um subsídio que reduza o investimento inicial para R$ 7 milhões, o projeto se torna viável?

(c) Alternativamente, se o governo reduzir o risco regulatório, fazendo o beta cair para 0,8, o projeto (sem subsídio) se torna viável? Compare com a alternativa (b).

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-7)

---

<a id="ex-18-8"></a>**Exercício 18.8.** Um investidor avalia dois títulos públicos brasileiros:

- **Tesouro Prefixado**: paga taxa nominal de 12% a.a. por 3 anos
- **Tesouro IPCA+**: paga taxa real de 6% a.a. + IPCA por 3 anos

A inflação esperada é de 4% a.a., mas há incerteza: a inflação pode ser 2%, 4% ou 8% com probabilidades iguais.

(a) Calcule o retorno real esperado de cada título.

(b) Calcule a variância do retorno real de cada título.

(c) Um investidor avesso ao risco deveria preferir qual título? Justifique usando o conceito de equivalente de certeza do Capítulo 7.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-8)

---

<a id="ex-18-9"></a>**Exercício 18.9.** Considere o modelo de Fisher com \(U = C_1^{0{,}5} C_2^{0{,}5}\), \(Y_1 = 200\), \(Y_2 = 100\) e \(r = 8\%\).

(a) Encontre \(C_1^*\), \(C_2^*\) e a poupança ótima.

(b) Suponha agora que o consumidor enfrenta uma **restrição de crédito**: ele pode poupar à taxa \(r = 8\%\), mas não pode tomar empréstimo. Como isso afeta a solução se ele fosse devedor na parte (a)?

(c) Restrições de crédito são relevantes para a economia brasileira? Discuta brevemente como a falta de acesso ao crédito afeta a suavização do consumo.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-9)

---

<a id="ex-18-10"></a>**Exercício 18.10.** *(Desafio)* Uma jazida de minério de ferro tem estoque \(S_0 = 2.000\) unidades, preço inicial \(p_0 = 120\), custo de extração \(c = 40\) e taxa de juros \(r = 6\%\). A demanda inversa em cada período é \(p_t = 200 - 2q_t\).

(a) Qual é a renda de escassez inicial \(R_0\)? Verifique que, pela regra de Hotelling, \(R_{10} = R_0(1{,}06)^{10}\).

(b) Derive a quantidade extraída em cada período como função de \(R_0\) usando a demanda inversa.

(c) Use a restrição de estoque \(\sum_t q_t = S_0\) para determinar \(R_0\) (dica: considere extração em apenas 2 períodos para simplificar).

(d) Como uma taxa de carbono de R$ 20 por unidade extraída afetaria a trajetória ótima? Interprete em termos da velocidade de exaustão e da transição energética.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-10)

---

## 🏆 Vem, ANPEC!

As questões a seguir foram extraídas de provas reais da ANPEC (Microeconomia). Cada item deve ser classificado como **Verdadeiro (V)** ou **Falso (F)**.

??? question "ANPEC 2021 — Questão 12"
    Com relação à análise econômica de investimento, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    **(0)** A análise do valor presente líquido incorpora o valor presente com taxa de desconto tanto dos custos quanto dos benefícios de um investimento.

    **(1)** O prazo de retorno também proporciona um modo de determinar os benefícios líquidos de um investimento.

    **(2)** O prazo de retorno desconta fluxos futuros de dinheiro, assim como a análise do valor presente líquido.

    **(3)** O valor da opção de espera de um investimento é o incentivo que o risco cria para adiar a decisão de investir e coletar informação.

    **(4)** Um indivíduo avesso ao risco ganha mais utilidade a partir de uma determinada quantidade de renda, do que a partir de uma quantidade equivalente em valor esperado decorrente de uma renda incerta.

    ??? success "Gabarito"
        **Respostas: V-V-F-V-V**

        **Justificativa por item:**

        - **Item 0 — V:** O VPL calcula o valor presente de todos os fluxos de caixa — custos (fluxos negativos) e benefícios (fluxos positivos) — descontados a uma taxa apropriada. É exatamente a definição: \(VPL = \sum F_t/(1+r)^t\).

        - **Item 1 — V:** O prazo de retorno (payback) indica em quantos períodos o investimento inicial é recuperado. Embora seja um critério simplificado, ele proporciona uma medida dos benefícios líquidos ao indicar a velocidade de recuperação do capital.

        - **Item 2 — F:** O prazo de retorno simples (payback) **não** desconta os fluxos futuros — simplesmente soma os fluxos nominais até igualar o investimento inicial. Essa é uma de suas principais limitações em relação ao VPL. (Existe o payback descontado, mas o payback padrão não desconta.)

        - **Item 3 — V:** A opção de espera (real option) tem valor positivo quando existe incerteza: ao adiar o investimento, o agente pode coletar informação adicional e evitar investimentos que se revelem inviáveis. Quanto maior o risco, maior o incentivo a esperar.

        - **Item 4 — V:** Pela definição de aversão ao risco (concavidade de \(u\)): \(u(E[W]) > E[u(W)]\). Ou seja, o indivíduo prefere receber o valor esperado com certeza a enfrentar a loteria — a utilidade da renda certa supera a utilidade esperada da renda incerta.

??? question "ANPEC 2010 — Questão 05"
    Avalie as afirmações abaixo:

    **(0)** Seja \(u(W) = -e^{-\beta W}\) uma utilidade von Neumann-Morgenstern, em que \(\beta > 0\) é uma constante e \(W\) é a riqueza. Então \(\beta\) denota a medida de aversão relativa ao risco.

    **(1)** Suponha que uma carteira de ativos arriscados possui retorno esperado \(r_e = 21\%\) e variância \(\sigma^2 = 0{,}09\). O ativo sem risco oferece um retorno \(r_f = 3\%\). Então, de acordo com o modelo média-variância, o preço do risco da carteira é \(p = 2\).

    **(2)** Suponha que o retorno de mercado é \(r_m = 12\%\) e a taxa de retorno do ativo sem risco é \(r_f = 8\%\). A variância da carteira eficiente é \(\sigma_e^2 = 0{,}01\) e a covariância entre o retorno de um ativo A e a carteira eficiente é \(\sigma_{A,e} = 0{,}5\). De acordo com o modelo CAPM, se o valor esperado do ativo A é \$64, então o preço do ativo A é \$50.

    **(3)** De acordo com o modelo média-variância, se a taxa marginal de substituição (TMS) entre retorno esperado da carteira e seu desvio-padrão é \(TMS = 0{,}3\), se a variância do retorno da carteira é \(\sigma_m^2 = 0{,}04\) e a taxa de retorno do ativo sem risco é \(r_f = 12\%\), então o retorno esperado da carteira é \(r_m = 18\%\).

    **(4)** Um indivíduo possui utilidade von Neumann-Morgenstern \(u(x) = \sqrt{x}\) e possui riqueza \(W = \$100\). Ele está sujeito a uma perda monetária aleatória \(X\), com distribuição uniforme contínua no intervalo \([0, 100]\). Se ao indivíduo for oferecido, ao preço de \(G = \$55\), um seguro total contra essa perda aleatória, então ele comprará o seguro.

    ??? success "Gabarito"
        **Respostas: F-F-F-V-V**

        **Justificativa por item:**

        - **Item 0 — F:** Para \(u(W) = -e^{-\beta W}\), temos \(u'(W) = \beta e^{-\beta W}\) e \(u''(W) = -\beta^2 e^{-\beta W}\). A medida de aversão absoluta ao risco de Arrow-Pratt é \(r_A = -u''/u' = \beta\). Portanto, \(\beta\) é a medida de aversão **absoluta** ao risco, não relativa. A medida de aversão relativa seria \(r_R = \beta W\), que depende da riqueza.

        - **Item 1 — F:** O preço do risco no modelo média-variância é \(p = (r_e - r_f)/\sigma\), onde \(\sigma\) é o desvio-padrão (não a variância). Como \(\sigma = \sqrt{0{,}09} = 0{,}3\), temos \(p = (0{,}21 - 0{,}03)/0{,}3 = 0{,}6\), não 2. (Se usássemos a variância no denominador: \(0{,}18/0{,}09 = 2\), mas a fórmula correta usa o desvio-padrão.)

        - **Item 2 — F:** O \(\beta\) do ativo A é \(\beta_A = \sigma_{A,e}/\sigma_e^2 = 0{,}5/0{,}01 = 50\). O retorno esperado pelo CAPM seria \(E[r_A] = 8\% + 50 \times (12\% - 8\%) = 208\%\). Preço: \(P_A = 64/(1 + 2{,}08) = 64/3{,}08 \approx 20{,}8\), não \$50.

        - **Item 3 — V:** No modelo média-variância, \(TMS = (r_m - r_f)/\sigma_m\). Com \(\sigma_m = \sqrt{0{,}04} = 0{,}2\): \(r_m = r_f + TMS \times \sigma_m = 12\% + 0{,}3 \times 20\% = 12\% + 6\% = 18\%\). ✓

        - **Item 4 — V:** A utilidade esperada sem seguro é \(E[u] = \int_0^{100} \sqrt{100 - x} \cdot \frac{1}{100}dx = \frac{1}{100}\int_0^{100}\sqrt{y}\,dy = \frac{1}{100} \cdot \frac{2}{3} \cdot 100^{3/2} = \frac{2000}{300} = \frac{20}{3} \approx 6{,}67\). Com seguro a \$55: \(u(100-55) = \sqrt{45} \approx 6{,}71 > 6{,}67\). Portanto, o indivíduo compra o seguro. ✓

??? question "ANPEC — Escolha Intertemporal e Teoria do Capital"
    Avalie as seguintes afirmações sobre escolha intertemporal e investimento:

    **(0)** No modelo de Fisher com dois períodos, se a taxa de juros real aumenta e o consumidor é poupador líquido, o efeito sobre o consumo no período 1 é inequivocamente negativo (o consumidor sempre consome menos no período 1).

    **(1)** A equação de Euler do consumo \(u'(C_1) = \beta(1+r)u'(C_2)\) implica que, quando a taxa de juros excede a taxa de desconto subjetiva (\(r > \rho\)), o consumo ótimo é crescente ao longo do tempo.

    **(2)** O custo de uso do capital de Jorgenson, \(c_K = p_K(r + \delta)\), é crescente na taxa de depreciação e crescente na taxa de juros real.

    **(3)** Segundo a regra de Hotelling, se a taxa de juros real de uma economia aumenta, a velocidade de extração de recursos exauríveis diminui, pois o futuro se torna mais valioso.

    **(4)** O Valor Presente Líquido (VPL) e a Taxa Interna de Retorno (TIR) sempre concordam na ordenação de projetos de investimento mutuamente exclusivos.

    ??? success "Gabarito"
        **Respostas: F-V-V-F-F**

        **Justificativa por item:**

        - **Item 0 — F:** Para um poupador, o efeito substituição reduz \(C_1\) (consumir hoje ficou mais caro), mas o efeito renda aumenta \(C_1\) (a poupança rende mais, o poupador fica mais rico). O efeito líquido é **ambíguo**, não inequivocamente negativo. Apenas para o devedor o efeito é inequívoco (ambos os efeitos reduzem \(C_1\)).

        - **Item 1 — V:** Se \(r > \rho\), então \(\beta(1+r) > 1\). Para que a equação de Euler \(u'(C_1) = \beta(1+r)u'(C_2)\) seja satisfeita com \(\beta(1+r) > 1\), é necessário que \(u'(C_2) < u'(C_1)\). Com utilidade marginal decrescente (\(u'' < 0\)), isso implica \(C_2 > C_1\): o consumo é crescente. ✓

        - **Item 2 — V:** Temos \(\partial c_K / \partial \delta = p_K > 0\) e \(\partial c_K / \partial r = p_K > 0\). Ambas as derivadas parciais são positivas. ✓

        - **Item 3 — F:** É exatamente o contrário. Se \(r\) aumenta, o custo de oportunidade de manter o recurso no solo sobe — o futuro é mais fortemente **descontado**, não mais valioso. A extração se **acelera**: o proprietário prefere extrair hoje e investir o dinheiro à taxa mais alta. ✗

        - **Item 4 — F:** A TIR e o VPL podem ordenar projetos de forma diferente, especialmente quando os projetos diferem em escala ou timing dos fluxos de caixa (ver Exercício 18.4). A taxa de Fisher marca o ponto de reversão na ordenação. ✗

??? question "ANPEC — Taxa Real, Nominal e Decisão de Investimento"
    Avalie as seguintes afirmações:

    **(0)** Pela equação de Fisher, se a taxa de juros nominal é 15% e a inflação é 10%, a taxa de juros real é exatamente 5%.

    **(1)** Se o VPL de um projeto é zero, isso significa que o projeto não gera nenhum lucro contábil.

    **(2)** A TIR de um projeto com fluxos de caixa convencionais (investimento inicial negativo seguido de fluxos positivos) é única.

    **(3)** No modelo CAPM, o risco idiossincrático (específico da firma) é remunerado pelo mercado, pois afeta o retorno do investidor.

    **(4)** A fórmula da perpetuidade \(VP = F/r\) implica que uma redução da taxa de juros de 10% para 5% duplica o valor presente de um fluxo perpétuo constante.

    ??? success "Gabarito"
        **Respostas: F-F-V-F-V**

        **Justificativa por item:**

        - **Item 0 — F:** A relação exata é \(1 + r = (1+i)/(1+\pi) = 1{,}15/1{,}10 = 1{,}0455\), logo \(r = 4{,}55\%\), não 5%. A aproximação \(r \approx i - \pi\) só é precisa para taxas pequenas. Com taxas de dois dígitos, a diferença é relevante.

        - **Item 1 — F:** VPL = 0 significa que o projeto remunera exatamente o custo de oportunidade do capital. O projeto gera lucro contábil positivo (receitas > despesas), mas não gera **lucro econômico** (não supera a melhor alternativa de investimento).

        - **Item 2 — V:** Com fluxos convencionais (uma única mudança de sinal, de negativo para positivo), a regra de Descartes garante que existe exatamente uma raiz real positiva para o polinômio do VPL. ✓

        - **Item 3 — F:** No CAPM, apenas o risco **sistemático** (não diversificável, medido pelo beta) é remunerado. O risco idiossincrático pode ser eliminado por diversificação e, portanto, não carrega prêmio de risco.

        - **Item 4 — V:** Com \(r = 10\%\): \(VP = F/0{,}10 = 10F\). Com \(r = 5\%\): \(VP = F/0{,}05 = 20F\). A redução pela metade da taxa duplica o valor presente. ✓

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Araujo, A.; Ferreira, R.; Funchal, B. (2012). The Brazilian Bankruptcy Law Experience. *Journal of Corporate Finance*, 18(4), 994–1004.](https://doi.org/10.1016/j.jcorpfin.2012.03.001)"
    **Pergunta central:** Como a reforma da lei de falências brasileira (Lei 11.101/2005) afetou o custo de crédito e o investimento das empresas?

    **Método:** Os autores exploram a reforma de 2005 como um experimento natural. A nova lei introduziu mecanismos de recuperação judicial mais eficientes e aumentou a prioridade dos credores com garantia real na ordem de pagamento. Os autores comparam o custo do crédito corporativo e os spreads bancários antes e depois da reforma, usando dados do Banco Central do Brasil e controlando por variáveis macroeconômicas.

    **Resultado principal:** Após a reforma, houve redução significativa do spread bancário para empresas — especialmente para aquelas com ativos tangíveis que podiam servir como garantia. A redução estimada foi da ordem de 10 a 20% dos spreads para empréstimos garantidos. O resultado é consistente com a teoria: ao aumentar a taxa de recuperação esperada pelos credores em caso de falência, a lei reduziu o prêmio de risco embutido nos juros cobrados.

    **Relevância para o capítulo:** O artigo conecta diretamente a estrutura institucional ao custo de uso do capital \(c_K = p_K(r + \delta)\). A taxa de juros \(r\) que as firmas enfrentam inclui um prêmio de risco que depende da qualidade do arcabouço legal de recuperação de crédito. A reforma da lei de falências reduziu esse prêmio, diminuindo o custo de capital e potencialmente viabilizando projetos de investimento que antes tinham VPL negativo — exatamente o mecanismo discutido na Seção 18.6.

??? pesquisa "[Mehra, R.; Prescott, E. C. (1985). The Equity Premium: A Puzzle. *Journal of Monetary Economics*, 15(2), 145–161.](https://doi.org/10.1016/0304-3932(85)90061-3)"
    **Pergunta central:** O prêmio de risco histórico das ações sobre títulos públicos pode ser explicado por modelos padrão de consumo intertemporal com níveis razoáveis de aversão ao risco?

    **Método:** [Mehra e Prescott](https://doi.org/10.1016/0304-3932(85)90061-3) calibram um modelo de troca pura com utilidade CRRA (aversão relativa ao risco constante) usando dados históricos dos EUA (1889–1978). No modelo, o fator de desconto estocástico é \(m = \beta(C_{t+1}/C_t)^{-\gamma}\), onde \(\gamma\) é o coeficiente de aversão ao risco. Os autores verificam quais combinações de \(\beta\) e \(\gamma\) reproduzem o prêmio de risco observado (~6% a.a.) e a taxa livre de risco (~1% a.a.).

    **Resultado principal:** Para gerar o prêmio de risco observado, o modelo exigiria um coeficiente de aversão ao risco \(\gamma > 30\), valor considerado absurdamente alto (estimativas experimentais sugerem \(\gamma\) entre 1 e 5). Com \(\gamma\) razoável, o modelo prevê um prêmio de risco de apenas ~0,35%, muito inferior ao observado. Este é o **enigma do prêmio de risco das ações** (*equity premium puzzle*).

    **Relevância para o capítulo:** O artigo é uma aplicação direta do fator de desconto estocástico apresentado na Seção 18.5. Ele demonstra que a fórmula \(m = \beta \cdot U'(C_2)/U'(C_1)\) — elegante na teoria — enfrenta dificuldades empíricas sérias. O puzzle motivou décadas de pesquisa em finanças e macroeconomia, incluindo modelos com hábito, aversão a perdas (prospect theory), aversão à ambiguidade e mercados incompletos. Para o Brasil, onde o prêmio de risco das ações é ainda mais elevado devido ao risco-país, o puzzle é particularmente agudo.

??? pesquisa "[Cavalcanti, T.; Moura, G. (2014). Real Interest Rates and Growth: Improving on Some Deflating Experiences. *Journal of Development Economics*, 106, 150–162.](https://doi.org/10.1016/j.jdeveco.2013.09.001)"
    **Pergunta central:** Qual é o efeito causal da taxa de juros real sobre o crescimento econômico em países em desenvolvimento?

    **Método:** Os autores utilizam dados de painel para 138 países (1960–2009) e técnicas de variáveis instrumentais para lidar com a endogeneidade da taxa de juros. O instrumento explora variações exógenas na política monetária de economias avançadas que se transmitem para países em desenvolvimento via fluxos de capital.

    **Resultado principal:** Taxas de juros reais excessivamente altas (acima de um limiar de ~5%) reduzem significativamente o crescimento do PIB per capita, com elasticidade estimada entre -0,02 e -0,05. O efeito opera principalmente pelo canal do investimento: juros altos elevam o custo de uso do capital, reduzem o VPL dos projetos e comprimem a formação bruta de capital fixo. O resultado é robusto a diversas especificações e conjuntos de instrumentos.

    **Relevância para o capítulo:** O artigo fornece evidência empírica direta para o mecanismo teórico discutido nas Seções 18.6 e 18.8. A sensibilidade do VPL à taxa de desconto (Tabela 18.3) e a relação \(c_K = p_K(r + \delta)\) não são apenas construções teóricas — elas se manifestam em menores taxas de investimento e crescimento mais lento nos países com juros reais elevados, como o Brasil.

??? pesquisa "[Laibson, D. (1997). Golden Eggs and Hyperbolic Discounting. *Quarterly Journal of Economics*, 112(2), 443–478.](https://doi.org/10.1162/003355397555253)"
    **Pergunta central:** Como o desconto hiperbólico — em que os agentes descontam o futuro próximo mais fortemente que o futuro distante — afeta as decisões de poupança e o design institucional?

    **Método:** Laibson propõe um modelo de poupança com desconto quasi-hiperbólico (\(\beta, \delta\)), em que o agente desconta o período seguinte por \(\beta\delta\) e períodos subsequentes por \(\delta^t\). O parâmetro \(\beta < 1\) captura o viés pelo presente. O modelo é calibrado com dados de poupança e ativos das famílias americanas (PSID e SCF).

    **Resultado principal:** O modelo com \(\beta \approx 0{,}7\) e \(\delta \approx 0{,}96\) reproduz padrões empíricos que o modelo exponencial padrão (Fisher) não consegue explicar: (i) famílias poupam pouco apesar de planejar poupar mais; (ii) a introdução de planos de previdência com adesão automática (opt-out) aumenta dramaticamente a poupança, enquanto planos com adesão voluntária (opt-in) têm baixa adesão; (iii) a preferência por ativos ilíquidos (imóveis, previdência privada) pode ser racional como dispositivo de comprometimento contra a tentação de gastar.

    **Relevância para o capítulo:** O artigo de Laibson complementa o modelo de Fisher (Seção 18.3) ao introduzir uma forma de irracionalidade temporal estudada no Capítulo 8 (economia comportamental). Enquanto o desconto exponencial de Fisher prevê consistência temporal — o plano de poupança feito hoje será executado amanhã —, o desconto hiperbólico gera **inconsistência temporal**: o agente planeja poupar, mas quando o momento chega, cede à tentação do consumo imediato. Essa tensão entre o "eu planejador" e o "eu executor" tem implicações profundas para o design de políticas previdenciárias.

??? pesquisa "[Bonomo, M.; Brito, R. D. (2002). Regra de Taylor e Política Monetária no Brasil. *Revista Brasileira de Economia*, 56(1), 141–166.](https://doi.org/10.1590/S0034-71402002000100005)"
    **Pergunta central:** A condução da política monetária brasileira pós-Plano Real pode ser descrita por uma regra de Taylor, e quais são os determinantes da taxa de juros real de equilíbrio no Brasil?

    **Método:** Os autores estimam uma regra de Taylor para o Banco Central do Brasil usando dados mensais de 1996 a 2001, relacionando a taxa Selic a desvios da inflação em relação à meta e ao hiato do produto. Também estimam a taxa de juros real de equilíbrio implícita.

    **Resultado principal:** A regra de Taylor se ajusta razoavelmente bem à condução do Copom, com coeficiente de reação à inflação superior a 1 (condição de Taylor). A taxa de juros real de equilíbrio estimada situa-se entre 9% e 12% ao ano — muito acima dos 1-2% típicos de economias avançadas —, refletindo prêmios de risco soberano, fiscal e de inflação.

    **Relevância para o capítulo:** O artigo documenta quantitativamente por que o Brasil opera com taxas de juros reais tão elevadas (Box Brasil 18.2). A taxa real de equilíbrio estimada (9-12%) entra diretamente na fórmula do custo de uso do capital \(c_K\) e na taxa de desconto do VPL, confirmando que o ambiente macroeconômico brasileiro penaliza estruturalmente o investimento de longo prazo.

---

!!! tip "🤖 Exercício com IA"
    **IA.6 — Curva VPL e TIR**

    Peça à IA para calcular o VPL de um projeto com fluxos $[-100, 30, 35, 40, 45, 20]$ para 10 taxas de desconto diferentes (de 0% a 45%). Peça para ela plotar a curva $\text{VPL}(r)$ e encontrar a TIR. Compare com o gráfico interativo da Figura 18.2.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-6)

---

## 📚 Referências do Capítulo

- Dixit, Avinash K., e Robert S. Pindyck. 1994. [*Investment under Uncertainty*](https://books.google.com.br/books?id=8op0btN4mKEC). Princeton: Princeton University Press.
- Fisher, Irving. 1930. *The Theory of Interest*. New York: Macmillan.
- Hotelling, Harold. 1931. "[The Economics of Exhaustible Resources](https://doi.org/10.1086/254195)." *Journal of Political Economy* 39 (2): 137–175.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books?id=c5-JEQAAQBAJ). New York: Oxford University Press.
- Nicholson, Walter, e Christopher Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com.br/books?id=mf6BCgAAQBAJ). 12ª ed. Boston: Cengage Learning.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com.br/books?id=X6s3DwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier.
