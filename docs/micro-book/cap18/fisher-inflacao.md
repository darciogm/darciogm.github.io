# 18.3–18.4 Modelo de Fisher e Inflação

## 18.3 Gastar Agora ou Guardar para Janeiro: O Modelo de Fisher {#183}

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

<iframe src="/micro-book/graficos/cap18/consumo-intertemporal.html" title="Figura 18.1 — Modelo de consumo intertemporal de dois períodos" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.1 — Modelo de consumo intertemporal de dois períodos.** Observe como variações na taxa de juros \(r\) alteram a inclinação da reta orçamentária e a classificação do agente como poupador ou devedor.
</div>

---

## 18.4 Nem Tudo Que Reluz É Juro Real: Nominal vs. Real e o Efeito Fisher {#184}

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

    **Dados:** Segundo dados do Banco Central do Brasil (BCB), a taxa Selic nominal atingiu 45% a.a. em março de 1999 (crise cambial), mas com inflação acumulada de ~8,9%, a taxa real era de aproximadamente 33%. Em dezembro de 2020, a Selic nominal estava em 2% a.a. com inflação de 4,5%, resultando em taxa real negativa de aproximadamente −2,4% — algo inédito na história econômica brasileira. Em 2023, com Selic de 13,75% e inflação de ~4,6%, a taxa real voltou a patamares elevados (~8,8%).

    **Análise:** A experiência brasileira ilustra dramaticamente por que a teoria intertemporal deve ser sempre formulada em termos reais. Um investidor que avaliou projetos usando a Selic nominal de 2% em 2020 e depois enfrentou 13,75% em 2022 cometeria erros enormes em ambas as direções — subestimando o custo de capital no primeiro caso e superestimando no segundo, a menos que ajustasse pela inflação esperada. A generalização da indexação (aluguéis, salários, títulos públicos atrelados ao IPCA) foi a resposta institucional brasileira à convivência prolongada com inflação alta, e o Tesouro IPCA+ (NTN-B) é hoje um dos títulos mais negociados do mercado brasileiro, justamente por oferecer proteção contra a erosão inflacionária.

    **Para refletir:** Se a taxa Selic nominal é 12% e a inflação esperada é 4%, qual é a taxa real aproximada? E se a inflação surpreender em 8%, o que acontece com o retorno real do investidor?
