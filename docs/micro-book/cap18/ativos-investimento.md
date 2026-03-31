# 18.5–18.7 Ativos e Investimento

## 18.5 Quanto Vale uma Promessa Incerta: Precificação de Ativos {#185}

O modelo de Fisher analisa a escolha intertemporal sob certeza — o consumidor conhece com exatidão suas rendas futuras e a taxa de juros. Na realidade, porém, a maioria das decisões de investimento envolve incerteza: retornos futuros são aleatórios, e ativos diferentes carregam níveis distintos de risco. Como precificar ativos cujos retornos são incertos? E qual é a relação entre risco e retorno esperado? Essas perguntas fundamentais são respondidas pelos modelos de precificação de ativos, que estendem a lógica intertemporal de Fisher para um mundo com incerteza.

A conexão com o Capítulo 7 é direta: lá, mostramos que agentes avessos ao risco (com utilidade côncava) preferem o valor esperado de uma loteria à própria loteria. Aqui, essa mesma aversão ao risco determina o **prêmio de risco** que os investidores exigem para manter ativos arriscados — e, portanto, o preço de equilíbrio desses ativos.

### O CAPM básico

O **Capital Asset Pricing Model** (Modelo de Precificação de Ativos de Capital), desenvolvido independentemente por Sharpe (1964), Lintner (1965) e Mossin (1966), estabelece que o retorno esperado de um ativo arriscado é:

\[
E[r_i] = r_f + \beta_i \left( E[r_m] - r_f \right)
\label{eq:18.6} \tag{18.6} \]

onde:

- \(r_f\) é a taxa livre de risco (no Brasil, aproximada pela Selic ou por títulos do Tesouro);
- \(E[r_m]\) é o retorno esperado do portfólio de mercado;
- \(\beta_i = \frac{\text{Cov}(r_i, r_m)}{\text{Var}(r_m)}\) é o **beta** do ativo — a medida de risco sistemático (não diversificável).

A equação $\eqref{eq:18.6}$ tem uma implicação profunda: **apenas o risco sistemático é remunerado**. O risco específico do ativo (idiossincrático) pode ser eliminado por diversificação e, portanto, não justifica prêmio de risco. Um ativo com \(\beta = 0\) rende a taxa livre de risco, independentemente de quão volátil seja. Um ativo com \(\beta = 1\) se move proporcionalmente ao mercado; com \(\beta > 1\), amplifica os movimentos do mercado (mais arriscado); com \(\beta < 1\), os amortece.

### O fator de desconto estocástico

Uma abordagem mais geral e elegante é o **fator de desconto estocástico** (SDF, *Stochastic Discount Factor*), que unifica toda a teoria de precificação de ativos em uma única equação:

\[
P_0 = E\left[ M_{1} \cdot X_1 \right]
\label{eq:18.7} \tag{18.7} \]

onde \(P_0\) é o preço do ativo hoje, \(X_1\) é o payoff aleatório no período seguinte, e \(M_1 = \beta \frac{u'(C_1)}{u'(C_0)}\) é o fator de desconto estocástico — que desconta mais fortemente os payoffs que ocorrem em estados "bons" (quando o consumo já é alto e a utilidade marginal é baixa) e menos os que ocorrem em estados "ruins".

A equação $\eqref{eq:18.7}$ é a **equação fundamental da precificação de ativos**. Ela contém o CAPM como caso particular (sob utilidade quadrática ou retornos normalmente distribuídos) e se aplica a qualquer ativo — ações, títulos, derivativos, imóveis. A beleza da abordagem é que todo o conteúdo econômico está em \(M_1\): ele captura as preferências intertemporais e a aversão ao risco do investidor representativo.

!!! tip "O enigma do prêmio de risco"
    Mehra e Prescott (1985) documentaram que o prêmio de risco histórico das ações americanas sobre títulos do governo (~6% ao ano) é muito maior do que o previsto por modelos de consumo com níveis plausíveis de aversão ao risco. Esse **equity premium puzzle** permanece um dos grandes desafios da economia financeira e motivou extensões com formação de hábito (Campbell e Cochrane, 1999), preferências Epstein-Zin, e modelos com desastres raros (Barro, 2006).

!!! box-mundo "Box Mundo 18.1 — O fundo soberano da Noruega: paciência institucional"
    **Contexto:** O Government Pension Fund Global da Noruega é o maior fundo soberano do mundo, com mais de US$ 1,7 trilhão em ativos (2024). Criado em 1990, o fundo investe as receitas do petróleo norueguês em ações, títulos e imóveis globais, com o objetivo de preservar a riqueza para gerações futuras.

    **Dados:** O fundo detém participações em mais de 9.000 empresas em 70 países. Sua alocação é ~70% ações, ~25% renda fixa e ~5% imóveis. O retorno anual médio real desde 1998 é de aproximadamente 4,3%.

    **Análise:** O fundo norueguês é uma aplicação institucional do modelo de Fisher e da regra de Hotelling: em vez de consumir as receitas do petróleo (recurso exaurível) no presente, a Noruega as converte em um portfólio diversificado de ativos financeiros que gera renda perpétua. A regra fiscal norueguesa limita os gastos anuais do fundo a ~3% de seu valor — aproximadamente o retorno real esperado de longo prazo —, preservando o capital para gerações futuras. É a antítese da "maldição dos recursos naturais": paciência institucionalizada.

    **Para refletir:** Por que o Brasil não criou um fundo soberano comparável com as receitas do pré-sal? Que fatores institucionais explicam a diferença?

---

## 18.6 O Forno Novo Compensa Mais Que o CDB?: Valor Presente Líquido {#186}

Agora, das alturas teóricas da precificação de ativos, descemos ao chão da fábrica. A pergunta mais prática da teoria do capital é simples: **esse investimento vale a pena?** O padeiro que pensa em trocar o forno velho por um mais eficiente, a startup que avalia comprar servidores, a prefeitura que pondera construir uma creche — todos enfrentam o mesmo problema: comparar um desembolso hoje com um fluxo de benefícios futuros.

O **Valor Presente Líquido** (VPL) é o critério superior para responder essa pergunta:

!!! definition "Valor Presente Líquido (VPL)"
    O VPL de um projeto de investimento é a soma dos fluxos de caixa descontados a valor presente:

    \[
    VPL = \sum_{t=0}^{T} \frac{FC_t}{(1+r)^t} = -I_0 + \sum_{t=1}^{T} \frac{FC_t}{(1+r)^t}
    \label{eq:18.8} \tag{18.8} \]

    onde \(I_0\) é o investimento inicial, \(FC_t\) é o fluxo de caixa líquido no período \(t\) e \(r\) é o custo de oportunidade do capital (taxa de desconto).

**Regra de decisão:** Aceitar o projeto se \(VPL > 0\); rejeitar se \(VPL < 0\). Entre projetos mutuamente excludentes, escolher o de maior VPL.

A intuição é direta: o VPL mede quanto valor o projeto cria acima e além do que o investidor ganharia simplesmente aplicando o dinheiro à taxa \(r\). Um VPL de R$ 50.000 significa que o projeto gera R$ 50.000 a mais, em valor presente, do que a melhor alternativa disponível.

O VPL é sensível à taxa de desconto \(r\): quanto maior a taxa, menor o VPL de qualquer projeto com fluxos de caixa positivos no futuro. Essa sensibilidade é particularmente dramática para projetos de longa maturação — infraestrutura, pesquisa e desenvolvimento, reflorestamento — cujos benefícios se concentram em períodos distantes. A [Seção 18.10](hotelling.md#1810) ilustra numericamente essa sensibilidade.

No gráfico interativo abaixo, ajuste o investimento inicial, os fluxos de caixa e o horizonte para visualizar como o VPL varia com a taxa de juros — e por que o mesmo projeto pode ser viável nos EUA e inviável no Brasil.

<iframe src="/micro-book/graficos/cap18/taxa-juros-investimento.html" title="Figura 18.5 — VPL e Taxa de Juros: Por Que o Brasil Investe Pouco" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.5 — VPL e Taxa de Juros.** A curva mostra o VPL do projeto como função da taxa de desconto \(r\). A TIR é onde a curva cruza zero. As linhas tracejadas marcam as taxas reais típicas dos EUA (~2%) e do Brasil (~7%). Muitos projetos viáveis a 2% tornam-se inviáveis a 7%.
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** O VPL responde: "Se eu descontar todos os benefícios futuros do projeto pela taxa que eu ganharia no mercado financeiro, ainda sobra alguma coisa?"

    **Pense assim:** Um forno novo custa R$ 80.000 e economiza R$ 25.000/ano em gás e tempo por 5 anos. Se o CDB rende 10% ao ano, o VPL é \(-80.000 + 25.000 \times 3{,}79 = 14.775\). O forno compensa mais que o CDB — mas só porque a taxa é 10%. Se fosse 20%, o VPL cairia para \(-80.000 + 25.000 \times 2{,}99 = -5.250\): melhor deixar no banco.

    **Por que isso importa:** No Brasil, onde o CDB rende 10–14% ao ano em termos reais em muitos períodos, poucos investimentos produtivos conseguem competir com a renda fixa. O VPL revela por que o investimento produtivo brasileiro é cronicamente baixo.

---

## 18.7 O Projeto Rende Quanto Por Cento?: Taxa Interna de Retorno {#187}

A TIR é a outra face da moeda do VPL. Em vez de perguntar "qual o valor criado?", ela pergunta "qual a taxa de retorno do projeto?":

!!! definition "Taxa Interna de Retorno (TIR)"
    A TIR é a taxa de desconto \(r^*\) que torna o VPL igual a zero:

    \[
    \sum_{t=0}^{T} \frac{FC_t}{(1+r^*)^t} = 0
    \label{eq:18.9} \tag{18.9} \]

**Regra de decisão:** Aceitar o projeto se \(TIR > r\) (custo de oportunidade do capital); rejeitar se \(TIR < r\). A TIR é a taxa de retorno implícita do projeto — o máximo que o investidor poderia pagar pelo capital e ainda empatar.

A TIR é intuitivamente atraente — todo mundo entende "este projeto rende 15% ao ano". Mas ela tem **limitações importantes**:

1. **TIRs múltiplas:** Projetos com fluxos de caixa que alternam de sinal (investimento, retorno, reinvestimento) podem ter mais de uma TIR — ou nenhuma. Pela regra de Descartes, um polinômio com \(k\) mudanças de sinal tem no máximo \(k\) raízes reais positivas.

2. **Problema de escala:** A TIR ignora o tamanho do projeto. Um projeto de R$ 1.000 com TIR de 50% não é necessariamente melhor que um de R$ 1 milhão com TIR de 20% — o segundo cria muito mais valor absoluto.

3. **Hipótese de reinvestimento:** A TIR assume implicitamente que os fluxos intermediários são reinvestidos à própria TIR, o que é irrealista para projetos com TIR muito alta.

4. **Projetos mutuamente excludentes:** A TIR pode ordenar projetos de forma diferente do VPL. Nesses casos, **o VPL é o critério correto** — ele maximiza o valor para o investidor.

!!! warning "⚠️ Erro Comum"

    **Usar a TIR como critério único para comparar projetos de diferentes escalas ou durações.**

    Dois projetos: A tem investimento de R$ 10.000 e TIR de 30%; B tem investimento de R$ 500.000 e TIR de 18%. O projeto A tem TIR maior, mas o projeto B cria muito mais valor (VPL maior). A TIR é útil como indicador de eficiência, mas o VPL é o critério decisório.

<iframe src="/micro-book/graficos/cap18/vpl-tir.html" title="Figura 18.2 — Curva VPL × taxa de desconto e TIR" class="graph-iframe" style="height:580px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.2 — Curva VPL × taxa de desconto.** O VPL é decrescente na taxa de desconto. A TIR é o ponto em que a curva cruza o eixo horizontal. Observe como projetos viáveis a juros baixos podem se tornar inviáveis quando a taxa sobe — especialmente relevante para o contexto brasileiro.
</div>

!!! box-brasil "🇧🇷 Box Brasil 18.3 — Tesouro Direto: VPL na prática para o investidor brasileiro"
    **Contexto:** O Tesouro Direto, plataforma do Tesouro Nacional para venda de títulos públicos a pessoas físicas, é a aplicação mais acessível da teoria do VPL no Brasil. Os principais títulos são:

    - **Tesouro Selic (LFT):** pós-fixado, acompanha a taxa Selic. Baixa volatilidade, ideal para reservas de emergência.
    - **Tesouro Prefixado (LTN):** taxa fixa definida na compra. O investidor sabe exatamente quanto receberá no vencimento.
    - **Tesouro IPCA+ (NTN-B):** taxa real fixa + correção pela inflação (IPCA). Protege contra a erosão inflacionária.

    **Análise:** O Tesouro Direto é uma aplicação direta do critério do VPL ([Seção 18.6](#186)) e da estrutura a termo de juros: o investidor compara o VPL do título (fluxo de cupons + principal descontados) com o preço de compra. A NTN-B Principal (sem cupons semestrais) é um título *zero-coupon* puro, cujo preço é simplesmente \(P = \frac{VF}{(1+r)^n}\), onde \(r\) é a taxa real e \(n\) o prazo em anos — a fórmula mais básica de desconto intertemporal. O Tesouro Direto também ilustra o conceito de **risco de mercado** ([Seção 18.5](#185)): se os juros reais sobem, o preço da NTN-B cai (relação inversa VPL-taxa de desconto da Figura 18.2). Investidores de longo prazo que mantêm até o vencimento eliminam esse risco; quem vende antecipadamente está exposto à volatilidade.

    **Para refletir:** Com a taxa real da NTN-B em torno de 6% a.a. em 2024, qual é o VPL de abrir um negócio que rende 10% a.a. reais? E se o negócio rende apenas 5%? O Tesouro Direto fornece o benchmark do custo de oportunidade do capital — o \(r\) da fórmula do VPL — para qualquer decisão de investimento no Brasil.

!!! box-mundo "Box Mundo 18.4 — Bitcoin e a precificação de ativos sem fluxo de caixa"

    **Contexto:** O Bitcoin e outros criptoativos representam um desafio fundamental para a teoria de precificação de ativos apresentada neste capítulo. Um ativo tradicional (ação, título, imóvel) gera fluxos de caixa futuros — dividendos, cupons, aluguéis — e seu valor fundamental é o VPL desses fluxos (Eq. 18.8). O Bitcoin não gera fluxo de caixa algum. Seu "retorno" vem exclusivamente da expectativa de que alguém pagará mais por ele no futuro — o que a teoria financeira chama de **greater fool theory** (teoria do tolo maior).

    **Dados:** O Bitcoin oscilou entre US$ 1 (2011), US$ 69.000 (nov/2021), US$ 16.000 (nov/2022) e US$ 100.000+ (dez/2024). A volatilidade anualizada é de ~70%, contra ~15% do S&P 500 e ~0,5% do Tesouro Selic. Nenhum modelo de VPL ou CAPM consegue racionalizar esses movimentos.

    **Análise microeconômica:** A precificação de criptoativos pode ser enquadrada de três formas complementares:

    - **Bolha especulativa racional** (Blanchard & Watson, 1982): o preço excede o fundamental, mas agentes racionais mantêm o ativo porque a probabilidade de ganho na próxima venda excede a probabilidade de colapso — pelo menos até que o colapso ocorra. O preço é sustentado por expectativas autorreferenciais, não por fluxos de caixa.
    - **Reserva de valor sob incerteza radical** (argumento "ouro digital"): em países com inflação crônica, controle de capitais ou sistemas bancários frágeis (Venezuela, Argentina, Nigéria), criptoativos funcionam como hedge contra a desvalorização da moeda local — uma aplicação extrema do modelo de Fisher com incerteza sobre o poder de compra futuro.
    - **Ativo de rede** (conexão com Cap 21): o valor do Bitcoin depende do número de usuários que o aceitam como reserva de valor — um efeito de rede (Seção 21.2) aplicado a um "bem de informação" monetário. Quanto mais gente acredita, mais vale; quanto mais vale, mais gente acredita. O equilíbrio é autorrealizável — e frágil.

    **Para refletir:** Se o Bitcoin não gera fluxo de caixa, ele é um ativo ou uma aposta? A resposta depende de quão ampla é a nossa definição de "fluxo de caixa" — e de quão confortáveis estamos com modelos de precificação que dependem de expectativas de expectativas de expectativas. Como diria Keynes: "o mercado pode permanecer irracional por mais tempo do que você pode permanecer solvente."
