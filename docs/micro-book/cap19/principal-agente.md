# 19.1–19.2 Contratos Complexos e Modelo Principal-Agente

## 19.1 Ninguém Lê as Letras Miúdas por Acaso: Contratos Complexos e Assimetria de Informação {#191}

!!! tip "Onde estou no livro?"
    Este capítulo aplica a informação assimétrica a **mercados e contratos reais**: seguros, crédito, mercado de trabalho, saúde. Para os **fundamentos de teoria dos jogos** — PBE, single-crossing, refinamentos, modelo canônico de moral hazard — veja o [Capítulo 9d](../cap09d/index.md).

Na presença de informação assimétrica, contratos simples de preço fixo frequentemente não são suficientes para garantir transações eficientes. Os agentes econômicos respondem desenhando **contratos complexos** que buscam alinhar incentivos, revelar informação privada ou mitigar comportamentos oportunistas. Esses contratos são onipresentes: de planos de saúde com coparticipação a stock options para executivos, de menus tarifários de operadoras de celular a garantias estendidas de eletrodomésticos — todos representam respostas racionais a problemas de informação assimétrica.

!!! definition "Informação Assimétrica"
    Situação em que, numa relação econômica entre duas ou mais partes, ao menos uma delas possui informação relevante que as demais não detêm. A parte mais informada é dita ter **informação privada**.

Exemplos de contratos complexos que emergem como resposta à assimetria de informação incluem:

- **Contratos de trabalho** com bônus vinculados a desempenho (resposta ao risco moral);
- **Franquias e coparticipações** em seguros (resposta ao risco moral e à seleção adversa);
- **Garantias** oferecidas pelo vendedor de um produto (sinalização de qualidade);
- **Menus de contratos** com diferentes combinações preço-qualidade (triagem de tipos).

A análise econômica desses arranjos contratuais constitui o campo da **teoria dos contratos** e da **economia da informação**, que se desenvolveu a partir dos trabalhos seminais de Akerlof (1970), Spence (1973), [Rothschild e Stiglitz (1976)](https://doi.org/10.2307/1885326), Mirrlees (1971) e Holmström (1979). A importância prática desse campo é difícil de exagerar: o desenho de incentivos corretos é a diferença entre uma empresa bem administrada e uma empresa disfuncional, entre um mercado que funciona e um mercado que colapsa. No Brasil, a relevância é particularmente aguda em setores como saúde suplementar (onde a ANS regula para conter seleção adversa), crédito (onde o consignado resolve o risco moral), e concessões de infraestrutura (onde leilões bem desenhados são essenciais para a eficiência alocativa).

É importante situar este capítulo na arquitetura do livro. Nos capítulos anteriores, analisamos falhas de mercado associadas a estrutura de mercado (monopólio, Capítulo 15; oligopólio, Capítulo 16) e a externalidades (Capítulo 20). A informação assimétrica é uma terceira categoria de falha de mercado, conceitualmente distinta: mesmo em mercados perfeitamente competitivos com muitos participantes, a assimetria de informação pode gerar ineficiência. Diferentemente do monopólio, onde o problema é o poder de mercado de uma firma, aqui o problema é que os agentes *não sabem o suficiente* sobre seus parceiros de troca — e essa ignorância tem custos reais e mensuráveis.

---

## 19.2 Será Que Ele Vai Se Esforçar?: O Modelo Principal-Agente {#192}

Toda relação em que alguém pede a outrem que faça algo por ele carrega, em algum grau, o mesmo drama: "Será que essa pessoa vai agir no *meu* interesse — ou no dela?" Do chefe que contrata um gerente ao eleitor que elege um político, do paciente que confia no médico ao acionista que delega ao CEO, o roteiro se repete. A boa notícia é que a economia tem um arcabouço unificado para pensar todos esses casos: o **modelo principal-agente** — um dos frameworks mais versáteis da microeconomia moderna, com aplicações que vão de contratos de trabalho a regulação de monopólios (como visto no Cap. 15 com a contribuição de Tirole), de seguros a concessões de serviços públicos.

!!! definition "Relação Principal-Agente"
    Relação econômica em que uma parte (o **principal**) delega uma tarefa ou decisão a outra parte (o **agente**), que possui informação privada sobre suas características (tipo) ou sobre suas ações (esforço). O principal desenha um contrato para induzir o agente a agir de forma compatível com seus interesses.

### Elementos do modelo

O modelo canônico envolve os seguintes componentes:

1. **Principal**: parte que propõe o contrato (empregador, segurador, comprador, regulador).
2. **Agente**: parte que aceita ou rejeita o contrato e possui informação privada (trabalhador, segurado, vendedor, firma regulada).
3. **Contrato**: mecanismo que especifica pagamentos contingentes a variáveis observáveis.
4. **Restrição de participação (RP)**: o agente só aceita o contrato se a utilidade esperada for ao menos igual à sua **utilidade de reserva** \(\bar{U}\) — o que obteria na melhor alternativa disponível.
5. **Restrição de compatibilidade de incentivos (RCI)**: o contrato deve induzir o agente a escolher a ação ou revelar o tipo desejado pelo principal.

Formalmente, o principal resolve:

\[
\max_{w(\cdot)} \; \mathbb{E}[\pi(x) - w(x)]
\label{eq:19.1} \tag{19.1} \]

sujeito a:

\[
\mathbb{E}[U(w(x), e^*)] \geq \bar{U} \quad \text{(Restrição de Participação)}
\label{eq:19.2} \tag{19.2} \]

\[
e^* \in \arg\max_{e} \; \mathbb{E}[U(w(x), e)] \quad \text{(Restrição de Incentivo)}
\label{eq:19.3} \tag{19.3} \]

onde \(w(x)\) é o esquema de pagamento contingente ao resultado observável \(x\), \(e\) é o esforço do agente e \(\pi(x)\) é o lucro bruto do principal.

### Informação completa vs. incompleta

Sob **informação completa** (ou simétrica), o principal observa tanto o tipo quanto a ação do agente. Nesse caso, basta oferecer um contrato que satisfaça a restrição de participação $\eqref{eq:19.2}$ com igualdade — o chamado **first-best** (ótimo de primeiro melhor). O agente recebe exatamente sua utilidade de reserva e o principal captura todo o excedente da relação.

Sob **informação assimétrica**, o principal não observa o tipo ou a ação do agente, e precisa satisfazer adicionalmente a restrição de incentivos $\eqref{eq:19.3}$. O resultado é o **second-best** (ótimo de segundo melhor), que geralmente envolve uma perda de eficiência em relação ao first-best. A diferença de custo entre o second-best e o first-best é o **custo de agência** — o preço que a sociedade paga pela existência de informação assimétrica.

O conceito de custo de agência, formalizado por Jensen e Meckling (1976), é central para a governança corporativa moderna. Em uma empresa de capital aberto, os acionistas (principais) delegam a gestão a executivos (agentes) cujo esforço e decisões não são perfeitamente observáveis. Os mecanismos de governança — conselhos de administração, auditorias externas, stock options, cláusulas contratuais — são todos tentativas de reduzir o custo de agência. A magnitude desse custo é empiricamente significativa: estudos estimam que os custos de agência podem representar 5–20% do valor da firma, dependendo do setor e da qualidade da governança.

A distinção entre first-best e second-best permeia toda a economia da informação. Quando dizemos que um mercado é "ineficiente" sob informação assimétrica, estamos comparando com o benchmark de informação completa. Entretanto, é crucial reconhecer que essa ineficiência pode ser *inevitável*: dada a assimetria de informação, o second-best pode ser o melhor resultado alcançável — o que torna inadequadas políticas que ignorem as restrições informacionais. Este insight, central na obra de Tirole (Nobel 2014), aplica-se diretamente à regulação de monopólios discutida no Capítulo 15.
