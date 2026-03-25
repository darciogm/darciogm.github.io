# Capítulo 19 — Quando Um Lado Sabe Mais (E Isso Estraga Tudo)

Até aqui, este livro tratou os agentes econômicos como se fossem oniscientes — cada um sabendo tudo sobre o produto, o preço e o comportamento alheio. Foi um mundo confortável, mas irreal. Na prática, a economia funciona mais como um jogo de pôquer do que como um jogo de xadrez: ninguém vê as cartas dos outros. Empregadores não observam perfeitamente o esforço de seus funcionários; compradores de carros usados desconhecem o histórico real de manutenção do veículo; seguradoras não conseguem distinguir com precisão clientes de alto e baixo risco; investidores sabem menos sobre a qualidade de uma empresa do que seus gestores.

A **informação assimétrica** — situação em que uma parte de uma transação detém informação relevante que a outra parte não possui — gera consequências profundas para o funcionamento dos mercados. Em casos extremos, mercados inteiros podem deixar de existir: o mercado de limões de Akerlof, que abre este capítulo, mostra como a assimetria de informação sobre qualidade pode expulsar os produtos bons e deixar apenas os ruins. Em casos menos extremos, a assimetria distorce preços, reduz volumes de transação e gera ineficiências que se manifestam em contratos complexos — franquias, bônus, menus de opções, garantias — desenhados para alinhar incentivos ou revelar informação privada.

O estudo sistemático dessas questões rendeu o Prêmio Nobel de Economia a George Akerlof, Michael Spence e Joseph Stiglitz em 2001, e permanece como uma das áreas mais férteis da microeconomia moderna. A teoria da informação assimétrica conecta-se diretamente a temas já tratados neste livro — discriminação de preços (Capítulo 15), regulação de monopólios (Capítulo 15, Seção 15.9), e teoria dos jogos — e fornece as bases para campos aplicados como economia do trabalho, economia financeira, economia da saúde e regulação.

Neste capítulo, apresentamos o arcabouço do **modelo principal-agente**, analisamos os dois problemas fundamentais — **risco moral** (ações ocultas) e **seleção adversa** (tipos ocultos) — e discutimos mecanismos de mercado e contratuais que atenuam essas falhas, incluindo **sinalização**, **triagem** e **leilões**. A fundamentação em teoria dos jogos — Equilíbrio Bayesiano Perfeito, jogos de sinalização e screening — encontra-se no Capítulo 9d.

---

## 19.1 Contratos Complexos como Resposta à Assimetria de Informação

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

## 19.2 O Modelo Principal-Agente

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

---

## 19.3 Ações Ocultas: Risco Moral

Você já reparou que as pessoas dirigem com mais cautela quando o carro é emprestado de um amigo do que quando têm seguro total? Ou que o estagiário trabalha com mais afinco na semana da avaliação? Esse é o risco moral em estado puro — o problema que surge quando alguém pode agir de forma oculta depois que o acordo já foi fechado. O termo "risco moral" (*moral hazard*) tem origem no setor de seguros do século XIX, quando as seguradoras perceberam que clientes segurados tendiam a ser menos cuidadosos com seus bens. Por que o risco moral é tão difundido? Porque em praticamente toda relação de delegação — de um empregador que contrata um gerente a uma seguradora que cobre um segurado, de um acionista que contrata um CEO a um eleitor que elege um político — existe algum grau de ação oculta que escapa ao monitoramento direto.

!!! definition "Risco Moral (Moral Hazard)"
    Problema de informação assimétrica que surge quando uma parte de uma transação pode tomar **ações não observáveis** (ocultas) que afetam o resultado da relação, e a outra parte não consegue monitorar ou verificar essas ações diretamente. O termo refere-se à mudança de comportamento do agente após a celebração do contrato.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando alguém está protegido contra as consequências de suas ações, tende a se arriscar mais — porque quem paga a conta é outro.

    **Pense assim:** Depois de contratar um seguro completo para o celular, muita gente deixa de usar capinha e película. Afinal, se o aparelho quebrar, a seguradora cobre. Esse "relaxamento" após o contrato é o risco moral em ação — o comportamento muda porque o custo de ser descuidado foi transferido para outra parte.

    **Por que isso importa:** Franquias e coparticipações em planos de saúde e seguros existem justamente para manter o segurado com "pele no jogo", evitando que a proteção gere descuido excessivo.

O risco moral é um problema **pós-contratual**: a assimetria de informação diz respeito a ações tomadas pelo agente *depois* de firmado o acordo. Isso o distingue da seleção adversa (Seção 19.4), que é pré-contratual — o agente já possui informação privada *antes* do contrato ser celebrado.

### 19.3.1 A relação proprietário-gerente

Considere um proprietário (principal) que contrata um gerente (agente) para administrar sua empresa. O lucro \(\pi\) depende do esforço \(e\) do gerente e de um choque aleatório \(\varepsilon\):

\[
\pi = f(e) + \varepsilon, \quad \varepsilon \sim (0, \sigma^2)
\label{eq:19.4} \tag{19.4} \]

O esforço \(e\) é custoso para o gerente, com custo \(c(e)\), onde \(c'(e) > 0\) e \(c''(e) > 0\). Se o proprietário pudesse observar \(e\), contrataria o nível eficiente \(e^*\) tal que:

\[
f'(e^*) = c'(e^*)
\label{eq:19.5} \tag{19.5} \]

A equação $\eqref{eq:19.5}$ é a condição de first-best: o benefício marginal do esforço (para o proprietário) iguala o custo marginal (para o gerente). Quando \(e\) não é observável, o proprietário precisa desenhar um esquema de compensação \(w(\pi)\) que dependa do resultado observável \(\pi\). Se o gerente é avesso ao risco com utilidade \(U(w) - c(e)\), o contrato ótimo envolve um **trade-off entre incentivos e seguro**:

- Um salário fixo \(w = \bar{w}\) provê seguro perfeito ao gerente, mas nenhum incentivo para se esforçar — ele recebe o mesmo independentemente do resultado.
- Um contrato puramente variável \(w = \pi - R\) (em que \(R\) é a renda fixa do proprietário) provê incentivos perfeitos (o gerente é o "dono residual"), mas transfere todo o risco ao gerente — ineficiente quando o gerente é avesso ao risco.

Esse trade-off é a essência do problema de risco moral: incentivos perfeitos requerem exposição ao risco, mas exposição ao risco é custosa quando o agente é avesso ao risco. O contrato ótimo é um compromisso entre as duas forças — e esse compromisso é o que observamos nos contratos do mundo real.

Na prática brasileira, esse trade-off se manifesta claramente nos contratos de executivos de empresas listadas na B3. A remuneração variável (bônus, stock options) dos CEOs das empresas do Ibovespa representava, em média, 60–70% da remuneração total em 2024, segundo dados da CVM — refletindo um forte componente de incentivos. Ao mesmo tempo, a parte fixa (30–40%) provê um "colchão de seguro" mínimo. A proporção variável tende a ser maior em setores com mais incerteza (tecnologia, commodities) e menor em setores estáveis (utilities, bancos) — exatamente como o modelo prevê: quando \(\sigma^2\) é grande, o custo de expor o agente ao risco é alto, e o contrato ótimo se inclina mais para a parte fixa.

Se o principal fosse neutro ao risco e o agente também, não haveria trade-off: bastaria vender a "franquia" da operação ao agente por um valor fixo, e ele tomaria as decisões eficientes. O problema surge exclusivamente porque o agente é avesso ao risco, e impor-lhe risco tem custo. Esse insight — de que o custo de agência decorre fundamentalmente da interação entre não-observabilidade e aversão ao risco — é um dos resultados mais importantes da teoria dos contratos.

!!! theorem "Princípio da Informatividade (Holmström, 1979)"
    O contrato ótimo deve vincular o pagamento do agente a **qualquer variável** que contenha informação sobre o esforço do agente, e somente a essas variáveis. Formalmente, uma variável \(y\) deve ser incluída no contrato se e somente se a distribuição condicional de \(x\) dado \(e\) muda com \(y\), ou seja, se \(y\) é **informativa** sobre \(e\).

O Princípio da Informatividade tem implicações práticas surpreendentes e de amplo alcance. Primeiro, o desempenho relativo do gerente em relação a firmas similares é informativo sobre o esforço (pois filtra choques comuns ao setor), o que justifica contratos de compensação com cláusulas de *benchmarking* — prática comum na remuneração de CEOs de empresas listadas. Se o setor inteiro vai mal mas a firma do gerente vai "menos mal", isso sugere esforço acima da média, e o contrato ótimo deve recompensá-lo por isso.

Segundo, variáveis que *não* contêm informação sobre o esforço devem ser *excluídas* do contrato, mesmo que estejam disponíveis — incluí-las apenas adicionaria ruído e risco desnecessário ao agente. Terceiro, o princípio explica por que esquemas de remuneração multidimensionais (que condicionam o pagamento a múltiplos indicadores de desempenho) podem ser superiores a esquemas unidimensionais: cada indicador adicional informativo sobre o esforço permite reduzir o risco imposto ao agente, diminuindo o custo de agência. Bengt Holmström recebeu o Prêmio Nobel de Economia em 2016 (junto com Oliver Hart) em grande parte por essa contribuição.

### 19.3.2 Risco moral em seguros

O caso clássico de risco moral — e historicamente o primeiro a ser identificado — ocorre no mercado de seguros. A própria expressão *moral hazard* surgiu no setor segurador inglês do século XIX, quando se observou que prédios segurados contra incêndio tinham maior probabilidade de pegar fogo — não por coincidência, mas porque os proprietários reduziam investimentos em prevenção. Após contratar um seguro contra roubo, o segurado pode reduzir os cuidados com a prevenção (não trancar o carro, não instalar alarme), aumentando a probabilidade de sinistro. O mecanismo é geral: qualquer contrato que proteja uma parte das consequências de suas ações tende a alterar essas ações na direção de maior risco.

Seja \(p(e)\) a probabilidade de sinistro, com \(p'(e) < 0\) (mais esforço de prevenção reduz a probabilidade). O segurado escolhe \(e\) para maximizar:

\[
\max_{e} \; [1 - p(e)] \cdot U(W_0 - q) + p(e) \cdot U(W_0 - q - L + I) - c(e)
\]

onde \(W_0\) é a riqueza inicial, \(q\) é o prêmio do seguro, \(L\) é a perda potencial, \(I\) é a indenização e \(c(e)\) é o custo do esforço de prevenção.

Com seguro completo (\(I = L\)), o segurado recebe \(W_0 - q\) em qualquer estado, eliminando todo incentivo para esforço preventivo. Por isso, seguros com **franquias** e **coparticipação** são mecanismos para mitigar o risco moral, fazendo com que o segurado assuma parte do risco e mantenha incentivos para prevenção. A franquia é talvez o instrumento mais simples e difundido de combate ao risco moral em seguros.

No gráfico interativo abaixo, explore o trade-off entre incentivos e seguro no modelo principal-agente. Observe como o contrato ótimo equilibra os pagamentos nos estados bom e ruim para induzir esforço, e como o custo de agência cresce quando a incerteza aumenta.

<iframe src="../graficos/cap19/principal-agente.html" title="Figura 19.1 — Modelo principal-agente com risco moral" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 19.1 — Modelo principal-agente com risco moral.** O gráfico mostra a restrição de participação (RP) e a restrição de compatibilidade de incentivos (RCI) no espaço de salários. O ponto verde indica o contrato ótimo que induz esforço alto.
</div>

### 19.3.3 O problema do esforço não observável: modelo formal

Considere dois níveis de esforço: alto (\(e_H\)) e baixo (\(e_L\)), com \(c(e_H) > c(e_L)\). O resultado pode ser bom (\(x_H\)) ou ruim (\(x_L\)). Sob esforço alto, a probabilidade de \(x_H\) é \(p_H\); sob esforço baixo, é \(p_L\), com \(p_H > p_L\).

O principal deseja induzir esforço alto. O contrato especifica pagamentos \(w_H\) (se \(x = x_H\)) e \(w_L\) (se \(x = x_L\)). As restrições são:

**Restrição de Participação (RP):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq \bar{U}
\label{eq:19.6} \tag{19.6} \]

**Restrição de Compatibilidade de Incentivos (RCI):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq p_L \, U(w_H) + (1 - p_L) \, U(w_L) - c(e_L)
\label{eq:19.7} \tag{19.7} \]

Simplificando a RCI:

\[
(p_H - p_L)[U(w_H) - U(w_L)] \geq c(e_H) - c(e_L)
\label{eq:19.8} \tag{19.8} \]

A equação $\eqref{eq:19.8}$ exige que a diferença de pagamentos entre os estados bom e ruim seja suficientemente grande para compensar o custo adicional do esforço. Como \(p_H > p_L\), precisamos de \(w_H > w_L\): o pagamento deve ser maior quando o resultado é bom. Note que quanto menor \(p_H - p_L\) (isto é, quanto mais difícil é distinguir esforço de sorte), maior precisa ser a diferença \(w_H - w_L\) para satisfazer a RCI — e maior será o custo de agência, pois mais risco é transferido ao agente.

!!! idea "Intuição Econômica"
    **Em uma frase:** O "prêmio" por bom desempenho deve ser grande o suficiente para que o agente prefira se esforçar — caso contrário, ele relaxa.

    **Pense assim:** Um vendedor comissionado só se esforça se a diferença entre a comissão do mês bom e a do mês ruim compensar o cansaço extra. Se a comissão é quase igual nos dois cenários, por que suar? Quanto mais difícil é distinguir esforço de sorte (\(p_H - p_L\) pequeno), maior precisa ser o bônus.

    **Por que isso importa:** A Restrição de Compatibilidade de Incentivos (RCI) é a peça central dos contratos de incentivo — ela determina o custo de agência e explica por que contratos ótimos raramente oferecem seguro completo ao agente.

!!! warning "⚠️ Erro Comum"

    **Confundir risco moral (moral hazard) com seleção adversa (adverse selection).**

    Ambos são problemas de informação assimétrica, mas diferem no *timing* e na *natureza* da informação oculta. O **risco moral** envolve uma *ação oculta* que ocorre **após** o contrato (pós-contratual): o agente escolhe um nível de esforço que o principal não observa. A **seleção adversa** envolve um *tipo oculto* que existe **antes** do contrato (pré-contratual): o agente conhece suas características (risco, qualidade, produtividade), mas o principal não. Os instrumentos de solução também diferem: para risco moral, usam-se contratos de incentivo (bônus, comissões); para seleção adversa, usam-se menus de contratos, sinalização ou triagem (screening).

O exercício a seguir aplica o modelo formal a um caso numérico, calculando os pagamentos ótimos e o custo de agência.

??? exercicio-resolvido "Exercício Resolvido 19.1 — Contrato ótimo com risco moral"
    **Enunciado:** Um principal contrata um agente cuja utilidade é \(U = \sqrt{w} - e\), onde \(w\) é o salário e \(e \in \{0, 1\}\) é o esforço. O resultado pode ser bom (\(x_H\)) com probabilidade \(p(e)\) ou ruim (\(x_L\)) caso contrário, onde \(p(1) = 3/4\) e \(p(0) = 1/4\). A utilidade de reserva é \(\bar{U} = 3\). O principal deseja induzir esforço alto (\(e = 1\)).

    **Dados:** \(p_H = 3/4\), \(p_L = 1/4\), \(c(1) = 1\), \(c(0) = 0\), \(\bar{U} = 3\).

    **Resolução:**

    **Passo 1 — Restrições**

    Defina \(a = \sqrt{w_H}\) e \(b = \sqrt{w_L}\).

    **RP** (com esforço alto):

    \[
    \frac{3}{4}\,a + \frac{1}{4}\,b - 1 \geq 3 \;\Rightarrow\; \frac{3}{4}\,a + \frac{1}{4}\,b \geq 4
    \]

    **RCI** (esforço alto ≥ esforço baixo):

    \[
    \frac{3}{4}\,a + \frac{1}{4}\,b - 1 \geq \frac{1}{4}\,a + \frac{3}{4}\,b - 0
    \]

    \[
    \frac{1}{2}(a - b) \geq 1 \;\Rightarrow\; a - b \geq 2
    \]

    **Passo 2 — Resolução (ambas binding)**

    Da RCI: \(a = b + 2\). Substituindo na RP:

    \[
    \frac{3}{4}(b + 2) + \frac{1}{4}\,b = 4 \;\Rightarrow\; b + \frac{3}{2} = 4 \;\Rightarrow\; b = \frac{5}{2}
    \]

    \[
    a = \frac{9}{2}, \quad w_H = a^2 = \frac{81}{4} = 20{,}25, \quad w_L = b^2 = \frac{25}{4} = 6{,}25
    \]

    **Passo 3 — Custo esperado e comparação com first-best**

    Custo esperado do contrato (second-best):

    \[
    \mathbb{E}[w] = \frac{3}{4}(20{,}25) + \frac{1}{4}(6{,}25) = 15{,}1875 + 1{,}5625 = 16{,}75
    \]

    No first-best (esforço observável), o salário fixo \(w_{FB}\) satisfaz \(\sqrt{w_{FB}} - 1 = 3\), logo \(w_{FB} = 16\).

    **Resultado:** O **custo de agência** é \(16{,}75 - 16 = 0{,}75\). Essa é a perda de eficiência causada pela assimetria de informação.

    **Interpretação econômica:** O principal precisa pagar um "prêmio por bom resultado" (\(w_H - w_L = 14\)) para compensar o custo do esforço. Como o agente é avesso ao risco (\(U = \sqrt{w}\)), expô-lo a essa variabilidade é custoso — o custo esperado do contrato sobe de 16 para 16,75. Esse trade-off entre incentivos e seguro é o cerne do problema de risco moral.

??? exercicio-resolvido "Exercício Resolvido 19.2 — Risco moral em seguro: franquia mínima"
    **Enunciado:** Uma seguradora oferece seguro contra roubo de celular no valor de R$ 4.000. Sem cuidados (esforço baixo), a probabilidade de roubo é 30%. Com cuidados — usar capinha, não deixar exposto — (esforço alto), a probabilidade cai para 10%. O custo do esforço é R$ 100. (a) Se a seguradora oferece seguro completo ao prêmio atuarialmente justo (baseado em esforço alto), o segurado terá incentivo para manter os cuidados? (b) Qual é a franquia mínima necessária para incentivar esforço alto?

    ---

    **(a)** Com seguro completo: prêmio = \(p(e_H) \times L = 0{,}10 \times 4.000 = 400\). Indenização = 4.000.

    Em ambos os estados, a riqueza é \(W_0 - 400\). O segurado economiza R$ 100 se não fizer esforço, sem nenhuma consequência — seguro completo elimina o incentivo. **Resposta: Não.**

    **(b)** Com franquia \(D\), o segurado arca com \(D\) em caso de sinistro.

    Com esforço: \(\mathbb{E}[W] = W_0 - q - 0{,}10 \cdot D - 100\).

    Sem esforço: \(\mathbb{E}[W] = W_0 - q - 0{,}30 \cdot D\).

    Para que esforço alto domine:

    \[
    -0{,}10 D - 100 \geq -0{,}30 D \;\Rightarrow\; 0{,}20 D \geq 100 \;\Rightarrow\; D \geq 500
    \]

    **Resultado:** A franquia mínima é **R$ 500** — o segurado precisa "ter pele no jogo" para manter os cuidados.

    **Interpretação:** No mercado brasileiro, seguradoras de celular como Porto Seguro e Zurich tipicamente cobram franquias de 20–30% do valor do aparelho (R$ 800–1.200 para um celular de R$ 4.000), acima do mínimo teórico — refletindo outros fatores como custos administrativos e graus de aversão ao risco.

---

## 19.4 Tipos Ocultos: Seleção Adversa

Se o risco moral é sobre o que a pessoa *faz* depois de assinar o contrato, a seleção adversa é sobre quem ela *é* antes de assinar. Pense no rodízio de pizza: quem frequenta mais o rodízio a R$ 49,90 — quem come duas fatias ou quem come doze? O restaurante atrai desproporcionalmente os glutões, e o preço médio do bufê não cobre o custo. No mundo dos seguros, dos carros usados e do crédito, a lógica é a mesma: quando o vendedor não consegue distinguir os "bons" dos "ruins", os ruins aparecem em peso — e os bons somem. Essa distinção temporal é fundamental: o risco moral é um problema pós-contratual, enquanto a seleção adversa é um problema pré-contratual. E as consequências podem ser ainda mais dramáticas — como demonstrou Akerlof, a seleção adversa pode levar ao desaparecimento completo de mercados.

!!! definition "Seleção Adversa (Adverse Selection)"
    Problema de informação assimétrica que surge quando uma parte de uma transação possui **informação privada sobre suas características** (seu "tipo") antes da celebração do contrato, e essa informação não é observável pela outra parte. A seleção adversa é um problema **pré-contratual**.

### 19.4.1 O mercado de limões (Akerlof, 1970)

George Akerlof demonstrou, em um dos artigos mais influentes de toda a história da economia, que a assimetria de informação pode levar ao colapso de mercados inteiros. O artigo, inicialmente rejeitado por três journals (incluindo AER e JPE) por ser "trivial" ou "errado", acabou publicado no *Quarterly Journal of Economics* e viria a render a Akerlof o Nobel em 2001. Considere um mercado de carros usados com dois tipos:

- **Carros bons** ("cerejas"): valor \(V_H\) para o comprador, \(C_H\) para o vendedor, com \(V_H > C_H\).
- **Carros ruins** ("limões"): valor \(V_L\) para o comprador, \(C_L\) para o vendedor, com \(V_L > C_L\).

Suponha \(V_H > C_H > V_L > C_L\) e que uma fração \(\lambda\) dos carros são bons. O vendedor conhece a qualidade do seu carro (ele sabe se trocou o óleo regularmente, se teve acidentes, se a transmissão faz barulhos estranhos); o comprador, não. Sob informação simétrica, ambos os tipos seriam transacionados com ganhos mútuos — pois \(V_H > C_H\) e \(V_L > C_L\). A questão central é: o que acontece quando o comprador não consegue distinguir os tipos?

A resposta de Akerlof é surpreendente em sua simplicidade e devastadora em suas implicações. O raciocínio opera em etapas, cada uma reforçando a anterior em uma espiral descendente que pode destruir o mercado inteiro:

Se o comprador não distingue os tipos, está disposto a pagar no máximo:

\[
\bar{V} = \lambda V_H + (1 - \lambda) V_L
\label{eq:19.9} \tag{19.9} \]

Se \(\bar{V} < C_H\), os donos de carros bons não aceitam vender pelo preço médio. Somente carros ruins permanecem no mercado, e o comprador, antecipando isso, oferece no máximo \(V_L\). A **qualidade média do mercado cai**, configurando a seleção adversa: os "bons" saem, os "ruins" ficam. Em casos extremos, o mercado desaparece completamente — uma situação conhecida como *market unraveling*.

!!! note "Resultado de Akerlof"
    Em casos extremos, a seleção adversa pode provocar o **desaparecimento completo** do mercado (market unraveling), mesmo quando ganhos de troca existiriam sob informação simétrica. Esse resultado mostra que a informação assimétrica é uma genuína **falha de mercado** — distinta das falhas de concorrência (monopólio) e das externalidades, e que justifica intervenções como regulação de qualidade, garantias obrigatórias e certificação.

!!! info "🏅 Prêmio Nobel — George A. Akerlof, A. Michael Spence e Joseph E. Stiglitz (2001)"

    **George Arthur Akerlof** (1940–presente) é um economista americano, PhD no MIT, professor em Berkeley e Georgetown. **Andrew Michael Spence** (1943–presente) é um economista americano, PhD em Harvard, professor em Harvard e Stanford. **Joseph Eugene Stiglitz** (1943–presente) é um economista americano, PhD no MIT sob orientação de Paul Samuelson, professor na Universidade de Columbia.

    **Por que ganharam o Nobel:**
    Premiados por suas análises de mercados com informação assimétrica. Akerlof mostrou que a assimetria de informação sobre qualidade pode levar ao colapso de mercados (*The Market for "Lemons"*, 1970). Spence demonstrou como agentes informados podem usar ações custosas para sinalizar suas características (*Job Market Signaling*, 1973). Stiglitz (com Rothschild) analisou como a parte desinformada pode usar menus de contratos para induzir autosseleção (*screening*), com aplicação seminal a mercados de seguros (1976).

    **Conexão com este capítulo:**
    Os três problemas fundamentais de informação assimétrica analisados neste capítulo — seleção adversa (Akerlof), sinalização (Spence) e triagem (Stiglitz) — correspondem diretamente às contribuições premiadas em 2001.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando o comprador não consegue distinguir produtos bons de ruins, os bons somem do mercado — porque ninguém paga o preço justo por eles.

    **Pense assim:** No mercado de carros usados no Brasil, quem vende um carro bem cuidado compete com quem vende um carro cheio de problemas escondidos. O comprador, desconfiado, só topa pagar um preço médio. Mas esse preço é baixo demais para quem tem carro bom, que desiste de vender. Sobram só os "abacaxis" — e o comprador, sabendo disso, oferece menos ainda.

    **Por que isso importa:** Plataformas como OLX, laudos de vistoria cautelar e garantias de concessionária existem justamente para quebrar esse ciclo, reduzindo a assimetria de informação e permitindo que transações boas aconteçam.

No gráfico interativo abaixo, ajuste a fração de limões e observe como a seleção adversa pode levar ao colapso do mercado.

<iframe src="../graficos/cap19/mercado-limoes.html" title="Figura 19.2 — Mercado de limões (Akerlof, 1970)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 19.2 — Mercado de limões (Akerlof, 1970).** Ajuste a fração de limões e observe como a seleção adversa leva ao colapso do mercado quando a disposição a pagar do comprador cai abaixo do custo de reserva dos vendedores de carros bons.
</div>

!!! box-mundo "Box Mundo 19.1 — O problema dos limões no mundo: inspeção veicular no Japão"

    **Contexto:** O Japão desenvolveu um dos sistemas mais rigorosos do mundo para mitigar o "problema dos limões" no mercado de veículos usados. O sistema *shaken* (車検) — inspeção veicular obrigatória — exige que todos os veículos passem por inspeções a cada dois anos (para carros com mais de 3 anos), com custo que varia de ¥80.000 a ¥200.000 (US$ 550–1.400). A rigidez e o custo da inspeção tornam economicamente inviável manter veículos antigos, gerando um fluxo constante de carros usados de alta qualidade a preços acessíveis.

    **Dados:** Segundo dados da Japan Automobile Dealers Association (JADA), o Japão exporta anualmente mais de 1,3 milhão de veículos usados, principalmente para mercados em desenvolvimento na África, Ásia e América Latina. A idade média dos veículos exportados é de apenas 7–10 anos, com quilometragem frequentemente inferior a 100.000 km — muito abaixo do padrão de "limões" previsto pelo modelo de Akerlof. O mercado interno japonês de usados movimentou ¥3,8 trilhões (US$ 26 bilhões) em 2023, com sistemas de certificação por pontuação (*auction grade*) de 1 a 5 que reduzem drasticamente a assimetria de informação.

    **Análise:** O sistema japonês combina dois mecanismos teóricos: (i) *certificação obrigatória* — a inspeção shaken funciona como um sinal crível de qualidade, análogo à sinalização de Spence (Seção 19.5), onde o custo do sinal (inspeção cara) é arcado pelo vendedor; (ii) *padronização de informação* — o sistema de pontuação nos leilões (auction grade) converte informação privada sobre qualidade em informação pública, eliminando a assimetria que causa a seleção adversa. O resultado é um mercado de usados que funciona eficientemente, contrariando a previsão pessimista do modelo de Akerlof para mercados sem mecanismos de revelação.

    **Fonte:** Japan Automobile Dealers Association (JADA), *Used Car Market Statistics 2023*. Japan Used Motor Vehicle Exporters Association (JUMVEA), *Annual Report 2023*.

O exercício a seguir aplica o modelo de Akerlof a um caso numérico.

??? exercicio-resolvido "Exercício Resolvido 19.3 — Seleção adversa no mercado de limões"
    **Enunciado:** Em um mercado de carros usados à la Akerlof, 40% dos carros são bons e 60% são ruins. Carros bons valem R$ 24.000 para compradores e R$ 20.000 para vendedores. Carros ruins valem R$ 10.000 para compradores e R$ 6.000 para vendedores. (a) O mercado de carros bons funciona? (b) Qual é a perda de bem-estar causada pela assimetria? (c) Se um serviço de vistoria confiável custasse R$ 500, valeria a pena para o vendedor de carro bom?

    ---

    **(a)** Preço máximo do comprador desinformado:

    \[
    \bar{V} = 0{,}4 \times 24.000 + 0{,}6 \times 10.000 = 9.600 + 6.000 = 15.600
    \]

    Como \(\bar{V} = 15.600 < C_H = 20.000\), os vendedores de carros bons **não aceitam** o preço médio. Apenas carros ruins são ofertados. O mercado de carros bons **colapsa**.

    **(b)** Sob informação simétrica, haveria ganhos de troca de R$ 4.000 por carro bom e R$ 4.000 por carro ruim. Com seleção adversa, os ganhos dos carros bons (40% do mercado) são perdidos: \(0{,}4 \times 4.000 = \text{R\$}\, 1.600\) por carro em média.

    **(c)** Com vistoria, o carro bom pode ser vendido a até R$ 24.000. O vendedor ganha \(24.000 - 20.000 = 4.000\) na transação. O custo da vistoria (R$ 500) é amplamente compensado. **Sim, vale a pena** — o que explica a existência de serviços como a Cautelar Express e laudos do Detran.

### 19.4.2 Precificação não linear: menus de contratos

Uma forma de lidar com a seleção adversa é oferecer um **menu de contratos** desenhado para que cada tipo de agente selecione voluntariamente o contrato destinado a ele. Esse é o princípio da **autosseleção** (self-selection) ou **triagem** (screening), que será aprofundado na Seção 19.6.

Considere um monopolista vendendo um bem a consumidores de dois tipos: alta valoração (\(\theta_H\)) e baixa valoração (\(\theta_L\)), com proporções \(\mu\) e \(1-\mu\), respectivamente. O monopolista oferece dois pacotes \((q_L, T_L)\) e \((q_H, T_H)\), onde \(q\) é a quantidade e \(T\) o pagamento total.

As restrições de autosseleção (incentivo-compatibilidade) são:

\[
\theta_H v(q_H) - T_H \geq \theta_H v(q_L) - T_L \quad \text{(RCI do tipo alto)}
\label{eq:19.10} \tag{19.10} \]

\[
\theta_L v(q_L) - T_L \geq \theta_L v(q_H) - T_H \quad \text{(RCI do tipo baixo)}
\label{eq:19.11} \tag{19.11} \]

E as restrições de participação:

\[
\theta_i v(q_i) - T_i \geq 0 \quad \text{para } i \in \{L, H\}
\]

A solução ótima apresenta um padrão recorrente e profundo na teoria de contratos, que vale a pena internalizar pois reaparece em virtualmente todas as aplicações:

1. **No topo, sem distorção** (*no distortion at the top*): o tipo alto recebe a quantidade eficiente (\(q_H = q_H^*\)). Não há razão para distorcer o consumo do tipo mais valioso.
2. **No fundo, distorção para baixo**: o tipo baixo recebe quantidade **distorcida para baixo** (\(q_L < q_L^*\)). Essa distorção é o "preço" que o mecanismo cobra pela revelação de informação — é necessário tornar o pacote do tipo baixo suficientemente pouco atrativo para que o tipo alto não queira imitá-lo.
3. **Renda informacional**: o tipo alto obtém excedente positivo, acima de sua utilidade de reserva. Essa renda é o custo que o principal paga pela impossibilidade de observar tipos diretamente.
4. **Participação binding no fundo**: o tipo baixo fica exatamente na fronteira de participação (renda zero).

Esse padrão — conhecido como *distortion at the bottom* — é um dos resultados mais gerais da economia da informação. Ele reaparece na regulação de monopólios sob informação assimétrica (Laffont-Tirole, onde a firma regulada é o "agente" e o regulador é o "principal"), na tributação ótima da renda (Mirrlees, Nobel 1996, onde o governo é o principal e os contribuintes são os agentes), e na discriminação de preços de segundo grau (Capítulo 15, Seção 15.7.2). A lição unificadora é que, quando tipos não são observáveis, a eficiência deve ser sacrificada para obter revelação de informação — e o sacrifício recai sempre sobre o tipo de baixa valoração.

### 19.4.3 Seleção adversa em seguros: o modelo de Rothschild-Stiglitz

[Rothschild e Stiglitz (1976)](https://doi.org/10.2307/1885326) analisaram o mercado de seguros competitivo com dois tipos de consumidores: alto risco (\(p_H\)) e baixo risco (\(p_L\)), com \(p_H > p_L\). As seguradoras não observam o tipo de cada consumidor. Este modelo é talvez a aplicação mais influente da teoria da seleção adversa e fundamenta toda a regulação moderna de mercados de seguros.

Um contrato de seguro é representado por um par \((\alpha_1, \alpha_2)\), onde \(\alpha_1\) é o prêmio pago e \(\alpha_2\) é a indenização líquida em caso de sinistro.

!!! theorem "Resultado de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)"
    Em equilíbrio competitivo com informação assimétrica: (a) não existe equilíbrio agregador (pooling) — um contrato único para ambos os tipos é sempre destruído por um contrato desviante; (b) um equilíbrio separador existe somente se a proporção de tipos de alto risco for suficientemente grande; (c) no equilíbrio separador, o tipo de alto risco recebe seguro completo (atuarialmente justo para ele) e o tipo de baixo risco recebe seguro parcial (distorção para baixo).

!!! proof "Demonstração: Condição de Incentivo-Compatibilidade no Modelo de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)"
    Considere dois tipos de consumidores, \(i \in \{L, H\}\), com probabilidades de sinistro \(p_L < p_H\). Cada consumidor possui riqueza inicial \(W\) e enfrenta perda potencial \(d\). Um contrato de seguro \(C_i = (\alpha_i, \beta_i)\) especifica um prêmio \(\alpha_i\) e uma cobertura \(\beta_i\), de modo que a riqueza nos dois estados é:

    \[
    W_i^{NS} = W - \alpha_i \quad \text{(sem sinistro)}
    \]

    \[
    W_i^{S} = W - d + \beta_i - \alpha_i \quad \text{(com sinistro)}
    \]

    A utilidade esperada do tipo \(i\) com o contrato \(C_j\) é:

    \[
    EU_i(C_j) = (1 - p_i) \, U(W_j^{NS}) + p_i \, U(W_j^{S})
    \]

    **Condições de incentivo-compatibilidade** requerem que cada tipo prefira seu próprio contrato:

    \[
    EU_H(C_H) \geq EU_H(C_L) \quad \text{(o tipo H prefere } C_H \text{)}
    \]

    \[
    EU_L(C_L) \geq EU_L(C_H) \quad \text{(o tipo L prefere } C_L \text{)}
    \]

    **Passo 1.** Em equilíbrio competitivo com lucro zero, cada contrato é atuarialmente justo para o tipo que o escolhe:

    \[
    \alpha_H = p_H \beta_H, \quad \alpha_L = p_L \beta_L
    \]

    **Passo 2.** Mostramos que \(C_H\) oferece seguro completo, ou seja, \(\beta_H = d\). Como a seguradora oferece contrato atuarialmente justo ao tipo \(H\), a condição de ótimo do consumidor avesso ao risco com preço justo implica equalização da riqueza nos dois estados:

    \[
    W_H^{NS} = W_H^{S} \implies W - \alpha_H = W - d + \beta_H - \alpha_H \implies \beta_H = d
    \]

    Logo, \(\alpha_H = p_H d\) e \(W_H^{NS} = W_H^{S} = W - p_H d\).

    **Passo 3.** Para que o tipo \(H\) não desvie para \(C_L\), precisamos de:

    \[
    U(W - p_H d) \geq (1 - p_H) \, U(W - p_L \beta_L) + p_H \, U(W - d + \beta_L - p_L \beta_L)
    \]

    **Passo 4.** Para que o tipo \(L\) não desvie para \(C_H\):

    \[
    (1 - p_L) \, U(W - p_L \beta_L) + p_L \, U(W - d + \beta_L - p_L \beta_L) \geq U(W - p_H d)
    \]

    **Passo 5.** Combinando, a RCI do tipo \(H\) impõe um **limite superior** sobre a cobertura \(\beta_L\). Se \(\beta_L = d\), então \(U(W - p_L d) > U(W - p_H d)\) (pois \(p_L < p_H\)), violando a RCI de \(H\). Portanto:

    \[
    \beta_L < d
    \]

    O tipo de baixo risco recebe **seguro parcial** — uma distorção que é o "custo" da assimetria de informação. \(\blacksquare\)

No gráfico interativo abaixo, explore o equilíbrio separador de Rothschild-Stiglitz no espaço de riqueza contingente.

<iframe src="../graficos/cap19/seguros-rs.html" title="Figura 19.3 — Modelo de seguros de Rothschild-Stiglitz" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 19.3 — Modelo de seguros de Rothschild-Stiglitz.** No espaço de riqueza contingente, observe o equilíbrio separador: o tipo de alto risco recebe seguro completo (sobre a linha de 45°) enquanto o tipo de baixo risco recebe seguro parcial. As curvas de indiferença refletem as diferentes probabilidades de sinistro.
</div>

!!! box-mundo "Box Mundo 19.2 — Seleção adversa e o NHS: por que o Reino Unido optou pelo sistema universal"

    **Contexto:** O *National Health Service* (NHS) britânico, criado em 1948, é um dos exemplos mais duradouros de resposta institucional ao problema da seleção adversa em saúde. Antes do NHS, o mercado privado de seguros de saúde no Reino Unido sofria exatamente o tipo de espiral de seleção adversa descrita pelo modelo de Rothschild-Stiglitz: seguradoras cobravam prêmios baseados no risco médio; indivíduos saudáveis (baixo risco) consideravam os prêmios excessivos e abandonavam o mercado; o pool remanescente tornava-se mais arriscado, elevando os prêmios e expulsando mais segurados — o *unraveling* clássico.

    **Dados:** O NHS atende 67 milhões de pessoas, financiado por impostos gerais, com cobertura universal e gratuita no ponto de uso. Segundo dados da OECD Health Statistics (2023), o Reino Unido gasta 11,3% do PIB em saúde (incluindo setores público e privado), comparado a 16,6% nos EUA — que dependem mais fortemente de seguros privados e enfrentam problemas crônicos de seleção adversa (46 milhões de americanos sem seguro antes do *Affordable Care Act* de 2010). O gasto per capita britânico (US$ 5.138 PPP) é menos da metade do americano (US$ 12.555 PPP), embora a expectativa de vida seja comparável (81,0 vs. 77,5 anos em 2022).

    **Análise:** O NHS resolve o problema da seleção adversa pela via mais direta possível: torna a participação obrigatória e universal, eliminando a autosseleção. Na linguagem do modelo de Rothschild-Stiglitz, o NHS impõe um equilíbrio *pooling* por lei — todos os tipos (alto e baixo risco) participam do mesmo pool, financiado por impostos progressivos. Isso evita o *unraveling*, mas ao custo de potencial ineficiência alocativa (os saudáveis subsidiam os doentes) e de possível risco moral (acesso gratuito pode gerar sobreuso). O debate sobre o design ótimo de sistemas de saúde é, essencialmente, um debate sobre o trade-off entre controlar seleção adversa (favorece universalidade) e controlar risco moral (favorece coparticipação).

    **Fonte:** OECD Health Statistics 2023. NHS England, *Annual Report 2023*.

!!! example "Antisseleção e regulação por faixas etárias ([ANS](https://www.gov.br/ans))"
    O mercado brasileiro de saúde suplementar, com cerca de 51 milhões de beneficiários, é um caso emblemático de seleção adversa. Pessoas mais doentes (alto risco) têm maior incentivo para contratar planos de saúde, enquanto jovens saudáveis (baixo risco) tendem a considerar os prêmios elevados e permanecer sem plano — o clássico mecanismo de antisseleção.

    **Regulação por faixas etárias:**

    A ANS (Agência Nacional de Saúde Suplementar) estabelece 10 faixas etárias para os reajustes dos planos individuais e familiares. A regra-chave: a mensalidade da última faixa não pode ser superior a **6 vezes** a mensalidade da primeira.

    Essa regulação funciona como um **subsídio cruzado** entre faixas etárias: jovens pagam mais do que seu risco atuarial justificaria, subsidiando os idosos, cujo risco é maior. Na linguagem do modelo de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326), a ANS impõe um equilíbrio parcialmente agregador (pooling), usando a lei para evitar o unraveling do mercado.

    *Fonte: ANS, Dados Gerais do Setor, 2025; Resolução Normativa ANS n.º 63/2003.*

??? exercicio-resolvido "Exercício Resolvido 19.4 — Seleção adversa em seguros"
    **Enunciado:** Dois tipos de segurados: alto risco (\(p_H = 0{,}5\)) e baixo risco (\(p_L = 0{,}1\)). Riqueza \(W = 1.000\), perda \(d = 600\). 60% são tipo L. \(U(W) = \ln(W)\). (a) Calcule os contratos de seguro completo atuarialmente justos para cada tipo. (b) Mostre que um contrato pooling com seguro completo à taxa média não é equilíbrio.

    ---

    **(a)** Tipo H: prêmio = \(0{,}5 \times 600 = 300\). Riqueza certa: \(1.000 - 300 = 700\).

    Tipo L: prêmio = \(0{,}1 \times 600 = 60\). Riqueza certa: \(1.000 - 60 = 940\).

    **(b)** Taxa média: \(\bar{p} = 0{,}6 \times 0{,}1 + 0{,}4 \times 0{,}5 = 0{,}26\). Prêmio pooling: \(0{,}26 \times 600 = 156\).

    Utilidade do tipo L com pooling: \(U = \ln(1.000 - 156) = \ln(844) \approx 6{,}739\).

    Utilidade do tipo L *sem seguro*: \(EU = 0{,}9 \ln(1.000) + 0{,}1 \ln(400) = 0{,}9 \times 6{,}908 + 0{,}1 \times 5{,}991 = 6{,}816\).

    Como \(6{,}816 > 6{,}739\), o tipo L **prefere não se segurar** a aceitar o contrato pooling. O equilíbrio pooling é destruído — confirmando o resultado de Rothschild-Stiglitz.

    **Interpretação:** O prêmio médio é "caro demais" para o tipo L, que prefere correr o risco. Isso inicia a espiral de seleção adversa: sem os tipos L, o pool piora e o prêmio sobe.

---

## 19.5 Sinalização no Mercado

Se você fosse um vendedor de carro impecável, preso num mercado cheio de abacaxis, como convenceria o comprador de que o *seu* carro é diferente? Dizer "confie em mim" não basta — todo vendedor de abacaxi diria o mesmo. A saída, como percebeu Michael Spence (1973), é fazer algo que *só* quem tem carro bom faria: oferecer uma garantia de um ano, por exemplo, ou pagar uma vistoria independente. Em certas condições, a parte informada pode tomar ações custosas e observáveis que funcionam como sinais críveis de suas características ocultas. A chave é que o custo do sinal deve diferir entre os tipos — caso contrário, todos sinalizariam da mesma forma e nenhuma informação seria transmitida. Essa condição é conhecida como *single-crossing* e é o que garante que a sinalização seja crível.

!!! definition "Sinalização (Signaling)"
    Mecanismo pelo qual a parte informada (agente) toma uma **ação custosa e observável** para transmitir credibilmente sua informação privada à parte desinformada (principal). Para que o sinal seja efetivo, ele deve ser **diferencialmente custoso** entre os tipos.

### 19.5.1 Educação como sinal (Spence, 1973)

Michael Spence propôs, em sua tese de doutorado em Harvard (1972, publicada em 1973 no QJE), que a educação pode funcionar como sinal de produtividade, mesmo que não aumente diretamente as habilidades do trabalhador. A ideia central — provocativa e influente — é que adquirir educação é **menos custoso** para trabalhadores de alta produtividade. Mesmo que a faculdade não ensine nada diretamente útil para o trabalho, o fato de o trabalhador ter conseguido completá-la transmite informação sobre disciplina, inteligência e capacidade de aprendizado — todas características correlacionadas com produtividade.

Essa ideia contrasta frontalmente com a teoria do capital humano de Gary Becker (Nobel 1992), segundo a qual a educação aumenta diretamente a produtividade do trabalhador — por exemplo, ao ensinar habilidades técnicas, raciocínio analítico ou capacidade de comunicação. Na visão de Becker, o retorno salarial à educação reflete ganhos reais de produtividade; na visão de Spence, pode refletir apenas a revelação de informação pré-existente. Na prática, ambos os mecanismos provavelmente operam simultaneamente, e a questão empírica — quanto do retorno à educação é capital humano vs. sinalização? — permanece aberta e é de enorme importância para a política educacional. O paper de Tyler, Murnane e Willett (2000), discutido na seção "Pesquisa em Ação", oferece uma das estimativas mais limpas do componente de sinalização.

Considere dois tipos de trabalhadores:

- **Alta produtividade** (\(\theta_H\)): produção \(\theta_H\), custo de educação \(c_H(s) = s / \theta_H\)
- **Baixa produtividade** (\(\theta_L\)): produção \(\theta_L\), custo de educação \(c_L(s) = s / \theta_L\)

com \(\theta_H > \theta_L\), de modo que \(c_H(s) < c_L(s)\) para todo \(s > 0\): a educação custa menos ao trabalhador mais produtivo (hipótese de **single-crossing**).

No gráfico interativo abaixo, visualize as curvas de custo de educação para ambos os tipos e o intervalo de sinais que sustenta um equilíbrio separador.

<iframe src="../graficos/cap19/sinalizacao.html" title="Figura 19.4 — Sinalização por educação (Spence, 1973)" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 19.4 — Sinalização por educação (Spence, 1973).** Visualize as curvas de custo de educação para ambos os tipos, o salário de equilíbrio e a condição de single-crossing. A região azul indica o intervalo de níveis de educação que sustentam um equilíbrio separador.
</div>

### 19.5.2 Equilíbrio separador vs. equilíbrio agregador

!!! definition "Equilíbrio Separador e Agregador"
    - **Equilíbrio separador**: os diferentes tipos escolhem sinais distintos, permitindo que a parte desinformada identifique cada tipo. Cada tipo recebe um salário igual à sua produtividade.
    - **Equilíbrio agregador (pooling)**: todos os tipos escolhem o mesmo nível de sinal, e a parte desinformada não consegue distingui-los. O salário ofertado é a produtividade média.

No **equilíbrio separador**, o tipo \(H\) escolhe nível de educação \(s^*\) e o tipo \(L\) escolhe \(s = 0\). O nível \(s^*\) deve satisfazer simultaneamente:

\[
\theta_H - \frac{s^*}{\theta_H} \geq \theta_L \quad \text{(tipo H prefere sinalizar)} \label{eq:19.12} \tag{19.12}
\]

\[
\theta_L \geq \theta_H - \frac{s^*}{\theta_L} \quad \text{(tipo L prefere não sinalizar)} \label{eq:19.13} \tag{19.13}
\]

Resolvendo:

\[
\theta_L(\theta_H - \theta_L) \leq s^* \leq \theta_H(\theta_H - \theta_L)
\label{eq:19.14} \tag{19.14} \]

As restrições $\eqref{eq:19.12}$ e $\eqref{eq:19.13}$ delimitam o intervalo $\eqref{eq:19.14}$, e o equilíbrio separador de menor custo (equilíbrio de Riley ou *least-cost separating*) ocorre em \(s^* = \theta_L(\theta_H - \theta_L)\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Um diploma pode funcionar como um "selo de qualidade" do trabalhador, mesmo que a faculdade em si não ensine nada diretamente útil para o cargo.

    **Pense assim:** No Brasil, muitas empresas exigem diploma superior para vagas que não precisam de conhecimento acadêmico. Por que? Porque concluir uma graduação sinaliza disciplina, persistência e capacidade de aprender — qualidades que o empregador não consegue medir numa entrevista. Quem tem alta produtividade acha a faculdade mais fácil, e por isso o sinal é crível.

    **Por que isso importa:** O modelo de Spence levanta uma provocação importante para a política educacional: parte do retorno à educação pode ser sinalização pura, não ganho de produtividade real — o que muda completamente a análise de custo-benefício de expandir o ensino superior.

!!! note "Eficiência da Sinalização"
    No modelo de Spence, a sinalização envolve um **custo social** real: recursos são gastos em educação apenas para sinalizar tipo, sem ganho de produtividade. O equilíbrio separador pode ser Pareto-inferior ao equilíbrio agregador se a perda de bem-estar do sinal superar o ganho informacional. Esse resultado ilustra que a revelação de informação nem sempre é socialmente desejável — um paradoxo que contrasta com a intuição de que "mais informação é sempre melhor".

??? exercicio-resolvido "Exercício Resolvido 19.5 — Sinalização por educação: equilíbrio separador"
    **Enunciado:** No modelo de Spence, \(\theta_H = 80\), \(\theta_L = 40\), \(c_H(s) = s/80\), \(c_L(s) = s/40\). (a) Encontre o intervalo de \(s^*\) para o equilíbrio separador. (b) Encontre o *least-cost separating equilibrium*. (c) Qual é o custo social da sinalização nesse equilíbrio?

    ---

    **(a)** Pela equação $\eqref{eq:19.14}$:

    \[
    s^* \in [\theta_L(\theta_H - \theta_L),\; \theta_H(\theta_H - \theta_L)] = [40 \times 40,\; 80 \times 40] = [1.600,\; 3.200]
    \]

    **(b)** O *least-cost separating*: \(s^* = 1.600\).

    Verificação — Tipo H: ganho = \(\theta_H - \theta_L = 40\), custo = \(1.600/80 = 20\). Líquido = \(+20 > 0\). ✓

    Tipo L: ganho = \(\theta_H - \theta_L = 40\), custo = \(1.600/40 = 40\). Líquido = \(0\). Indiferente, mas por convenção não sinaliza. ✓

    **(c)** Custo social: o tipo H gasta \(1.600/80 = 20\) em educação que (por hipótese) não aumenta a produtividade. Se 50% dos trabalhadores são tipo H, o custo médio por trabalhador é \(0{,}5 \times 20 = 10\).

    **Interpretação:** A sinalização é individualmente racional para o tipo H (ganho líquido positivo), mas socialmente custosa se a educação não tem valor produtivo. Esse resultado fundamenta o debate sobre se políticas de expansão universitária geram ganhos reais de produtividade ou apenas inflação de credenciais.

---

## 19.6 Screening (Triagem pelo Principal)

A sinalização e a triagem são duas faces da mesma moeda: ambas buscam resolver o problema de tipos ocultos, mas diferem em quem toma a iniciativa. Na sinalização, a parte informada age primeiro, investindo em um sinal custoso; na triagem, é a parte desinformada que age primeiro, desenhando um menu de opções. Na prática, essa distinção é relevante porque define quem arca com os custos da revelação de informação e, portanto, como o excedente se distribui entre as partes.

!!! definition "Triagem (Screening)"
    Mecanismo pelo qual a parte desinformada (principal) oferece um **menu de opções** desenhado de forma que cada tipo de agente revele voluntariamente sua informação privada ao escolher a opção mais adequada ao seu tipo.

A [Tabela 19.1](#tabela-19-1) apresenta exemplos práticos de mecanismos de triagem:

<a id="tabela-19-1"></a>

| Contexto | Mecanismo de Triagem |
|----------|---------------------|
| Seguros | Menu de apólices com diferentes combinações de prêmio/franquia |
| Mercado de trabalho | Oferta de contratos com diferentes combinações salário fixo/bônus |
| Companhias aéreas | Classes tarifárias com diferentes restrições (antecedência, reembolso) |
| Telecomunicações | Planos com diferentes volumes de dados e preços por unidade |
| Educação | Programas com diferentes graus de seletividade e rigor |

<div class="caption-obj" markdown>
**Tabela 19.1 — Exemplos de mecanismos de triagem.**
</div>

A conexão entre triagem e discriminação de preços de segundo grau (Capítulo 15, Seção 15.7.2) é direta e profunda: o menu de contratos desenhado para induzir autosseleção é exatamente o mesmo problema que o monopolista resolve ao oferecer versões "básica" e "premium" de um produto. A diferença é que, aqui, o objetivo do principal pode ser alocação eficiente (seguros), não maximização de lucro (monopólio). Mas a estrutura matemática é idêntica — restrições de participação e de incentivo-compatibilidade —, e os resultados qualitativos também: distorção para baixo no tipo de baixa valoração, nenhuma distorção no topo, e renda informacional para o tipo de alta valoração.

Na prática, a triagem é onipresente. Quando uma operadora de celular oferece um plano básico de 5 GB por R$ 30 e um plano premium de 20 GB por R$ 80, ela não está apenas vendendo dados — está fazendo triagem. O usuário intensivo se revela ao escolher o premium; o casual se revela ao escolher o básico. O plano básico é deliberadamente "distorcido" (menos dados por real) para torná-lo pouco atrativo ao tipo de alta demanda, preservando a compatibilidade de incentivos. Essa lógica se repete em seguros (menus de franquias), educação (programas de diferentes seletividades), e telecomunicações (planos pós-pago vs. pré-pago).

A diferença fundamental entre sinalização e triagem é quem toma a iniciativa:

- **Sinalização**: a parte informada age primeiro, escolhendo um sinal custoso.
- **Triagem**: a parte desinformada age primeiro, desenhando um menu de contratos.

Em equilíbrio, os dois mecanismos podem levar a alocações equivalentes (como nos modelos de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)), mas o timing e a distribuição de excedentes podem diferir.

!!! idea "Intuição Econômica"
    **Em uma frase:** Na triagem, o principal desenha um cardápio estratégico que faz cada tipo de agente se revelar sozinho pela opção que escolhe.

    **Pense assim:** Quando uma companhia aérea oferece classe econômica (sem reembolso, sem escolha de assento) e classe executiva (flexível, assento amplo), ela não está apenas vendendo conforto — está fazendo triagem. O viajante corporativo, cuja empresa paga e que precisa de flexibilidade, se revela escolhendo a executiva. O estudante com orçamento apertado se revela escolhendo a econômica. Ninguém precisa declarar sua renda — o menu faz o trabalho de separação.

    **Por que isso importa:** O desenho de menus que induzam autosseleção é uma habilidade central em economia aplicada — da regulação de telecomunicações ao desenho de impostos. O resultado fundamental da teoria é que a autosseleção exige distorções: o tipo de baixa valoração sempre recebe menos do que receberia sob informação simétrica.

---

## 19.7 Leilões

Poucas situações capturam tão bem a tensão da informação assimétrica quanto um leilão. Cada participante carrega um número secreto na cabeça — quanto aquele objeto vale *para ele* — e precisa decidir quanto revelar sem saber o que os rivais estão pensando. É um jogo de nervos, estratégia e informação incompleta, tudo comprimido em poucos minutos (ou segundos, no caso de leilões digitais). O leilão é, assim, um mecanismo de mercado que opera sob assimetria de informação bilateral: cada licitante sabe algo que os outros não sabem. O desenho das regras do leilão determina quão eficientemente a informação dispersa se traduz em alocação e preço — e, como demonstrou William Vickrey (Nobel 1996), regras bem desenhadas podem induzir os participantes a revelar suas verdadeiras valorações.

!!! definition "Leilão"
    Mecanismo de mercado para alocação de bens em que os participantes submetem lances, e o bem é alocado (e o preço determinado) de acordo com regras predefinidas. O desenho de leilões é uma aplicação central da teoria de mecanismos.

### Tipos de leilões

A [Tabela 19.2](#tabela-19-2) descreve os quatro formatos clássicos de leilão.

<a id="tabela-19-2"></a>

| Tipo de Leilão | Descrição | Lance | Preço pago |
|----------------|-----------|-------|------------|
| **Inglês** (ascendente) | Preço sobe até restar um único licitante | Aberto, sequencial | Segundo maior valor |
| **Holandês** (descendente) | Preço cai até alguém aceitar | Fechado (estrategicamente) | Valor do lance aceito |
| **Primeiro preço** (selado) | Lances simultâneos em envelope fechado | Fechado, simultâneo | Maior lance |
| **Segundo preço** (Vickrey) | Lances simultâneos; vencedor paga o segundo maior lance | Fechado, simultâneo | Segundo maior lance |

<div class="caption-obj" markdown>
**Tabela 19.2 — Tipos de leilões.**
</div>

### O leilão de segundo preço (Vickrey)

No leilão de segundo preço, cada licitante tem uma **estratégia dominante**: ofertar sua verdadeira valoração. Esse resultado, devido a William Vickrey (1961), é notável por sua simplicidade e robustez — a estratégia ótima não depende de crenças sobre os outros licitantes.

!!! theorem "Proposição: Estratégia Dominante no Leilão de Vickrey"
    No leilão de segundo preço com valores privados independentes, é estratégia fracamente dominante para cada licitante ofertar \(b_i = v_i\) (lance igual à valoração verdadeira).

**Intuição da prova**: Considere dois possíveis desvios. Se \(b_i > v_i\) (lance acima da valoração), o licitante amplia os cenários em que vence — mas inclui cenários em que o segundo maior lance está entre \(v_i\) e \(b_i\), nos quais ele vence e paga mais do que a valoração (prejuízo). Se \(b_i < v_i\) (lance abaixo da valoração), o licitante perde oportunidades lucrativas — cenários em que o segundo maior lance estaria entre \(b_i\) e \(v_i\), nos quais ele teria vencido e pago menos que sua valoração (lucro perdido). Em ambos os casos, desviar de \(b_i = v_i\) não melhora o payoff esperado. A chave é que o lance não afeta o preço pago (que é o segundo maior lance), mas apenas a probabilidade de vencer — e essa probabilidade é otimizada quando o lance coincide com a valoração.

Esse resultado tem uma consequência prática poderosa: o leilão de Vickrey é **à prova de estratégia** (*strategy-proof*). Nenhum licitante precisa se preocupar com o que os outros farão, pois a estratégia ótima independe das ações alheias. Essa propriedade torna o Vickrey extremamente atrativo para o desenho de mecanismos — e é a razão pela qual variantes do segundo preço são amplamente usadas em plataformas digitais (como o leilão de anúncios do Google Ads, que historicamente utilizou um mecanismo de segundo preço generalizado).

### O Teorema da Equivalência de Receita

!!! theorem "Teorema da Equivalência de Receita (Revenue Equivalence Theorem)"
    Sob as seguintes condições: (i) valores privados independentes; (ii) licitantes neutros ao risco; (iii) distribuição de valorações simétrica e contínua; (iv) o licitante com valoração mínima obtém excedente zero — **todos os quatro formatos de leilão geram a mesma receita esperada para o vendedor**.

Esse resultado notável, devido a Vickrey (1961) e Myerson (1981), implica que, sob as condições do teorema, a escolha do formato de leilão é irrelevante para a receita. As diferenças surgem quando as condições são violadas:

- **Aversão ao risco dos licitantes**: favorece o leilão de primeiro preço. Licitantes avessos ao risco fazem menos *bid shading* (ofertam mais próximo de sua valoração) para reduzir a chance de perder, o que aumenta a receita esperada em relação ao segundo preço.
- **Valores correlacionados ou comuns**: favorece o leilão inglês (ascendente). A informação revelada durante o leilão — quando um licitante desiste, revela que sua estimativa é inferior ao preço corrente — reduz a incerteza e atenua a **maldição do vencedor** (*winner's curse*). Em um leilão selado, essa informação não é transmitida, e os licitantes fazem mais *bid shading* por precaução.
- **Assimetria entre licitantes**: viola a simetria do teorema. Quando um licitante possui vantagem informacional (como a Petrobras nos leilões do pré-sal), o formato afeta tanto a receita quanto a eficiência.
- **Colusão**: leilões selados são mais resistentes à colusão do que leilões ascendentes, onde os participantes podem observar e punir desvios.

A **maldição do vencedor** merece destaque especial, pois é um fenômeno empiricamente relevante e frequentemente mal compreendido. Em leilões de valor comum (onde o objeto tem o mesmo valor para todos, mas cada licitante tem apenas uma estimativa ruidosa desse valor), o vencedor tende a ser quem mais *superestimou* o valor — e, portanto, tende a pagar demais. Licitantes racionais antecipam isso e ajustam seus lances para baixo. Quanto mais licitantes participam, mais extrema é a estimativa do vencedor e maior deve ser o desconto — um resultado com implicações diretas para o desenho de leilões de concessão.

!!! info "🏅 Prêmio Nobel — Leonid Hurwicz, Eric S. Maskin e Roger B. Myerson (2007)"

    **Leonid Hurwicz** (1917–2008) foi um economista e matemático russo-americano, professor na Universidade de Minnesota. **Eric Stark Maskin** (1950–presente) é um economista americano, PhD em Harvard, professor em Harvard e no Institute for Advanced Study. **Roger Bruce Myerson** (1951–presente) é um economista americano, PhD em Harvard, professor na Universidade de Chicago.

    **Por que ganharam o Nobel:**
    Premiados por lançar as bases da teoria de desenho de mecanismos. Hurwicz formulou o problema: como desenhar instituições (mecanismos) que produzam resultados desejáveis quando os agentes possuem informação privada e agem em interesse próprio? Maskin estabeleceu condições para que um mecanismo implemente resultados socialmente desejáveis. Myerson provou o *princípio da revelação* — todo resultado alcançável por qualquer mecanismo pode ser replicado por um mecanismo de revelação direta — e aplicou a teoria ao desenho de leilões ótimos.

    **Conexão com este capítulo:**
    O princípio da revelação de Myerson e a teoria de leilões ótimos são apresentados neste capítulo como aplicações da informação assimétrica ao desenho de instituições.

!!! box-mundo "Box Mundo 19.3 — Leilões de espectro nos EUA: a revolução do desenho de mecanismos"

    **Contexto:** Os leilões de espectro eletromagnético conduzidos pela Federal Communications Commission (FCC) nos Estados Unidos são o caso mais celebrado de aplicação prática da teoria de leilões. Antes de 1994, a FCC alocava licenças de espectro por meio de "concursos de beleza" (critérios subjetivos) ou loterias aleatórias — métodos que não revelavam a valoração dos participantes e geravam alocações ineficientes. A partir de 1994, sob influência de economistas como Paul Milgrom e Robert Wilson (Nobel 2020), a FCC adotou o formato de *simultaneous ascending auction* (leilão simultâneo ascendente), especificamente desenhado para lidar com as complementaridades e a informação assimétrica inerentes ao espectro.

    **Dados:** Desde 1994, os leilões da FCC arrecadaram mais de US$ 230 bilhões para o governo federal americano (FCC, *Auctions Summary*, 2024). O maior leilão individual — o *Incentive Auction* de 2017, que reaproveitou espectro de TV para uso de telefonia móvel — arrecadou US$ 19,8 bilhões. O leilão C-band (2021), para faixas de 5G, arrecadou US$ 81 bilhões, o mais lucrativo da história. A eficiência alocativa melhorou dramaticamente: estudos do *NBER* estimam que os leilões simultâneos ascendentes alocam licenças a licitantes com valoração 15–30% maior do que os mecanismos anteriores.

    **Análise:** Os leilões da FCC ilustram vários conceitos deste capítulo. Primeiro, o Teorema da Equivalência de Receita (Seção 19.7) explica por que a FCC se preocupa menos com o formato exato e mais com as condições: número de participantes, barreiras à colusão, informação disponível. Segundo, a maldição do vencedor é uma preocupação real: como o espectro tem componente de valor comum (depende da demanda futura de telecomunicações), licitantes que superestimam o valor tendem a vencer e pagar caro demais. O formato ascendente atenua esse problema ao revelar informação durante o leilão. Terceiro, o desenho anti-colusão (preços de reserva, lotes anônimos, regras de atividade) mostra como a teoria de mecanismos se traduz em regras práticas.

    **Fonte:** FCC, *Auctions Summary*, 2024. Milgrom, P. (2004). *Putting Auction Theory to Work*. Cambridge University Press.

!!! example "Do pré-sal ao 5G: informação assimétrica e desenho de leilões"
    O Brasil tem sido um laboratório de formatos de leilão em setores estratégicos. Dois casos ilustram como o desenho do mecanismo afeta os resultados em presença de informação assimétrica.

    **Leilões do pré-sal ([ANP](https://www.gov.br/anp)):**

    Os blocos exploratórios do pré-sal são leiloados pela Agência Nacional do Petróleo (ANP) no formato de **partilha da produção**: o consórcio vencedor é aquele que oferece a maior parcela do "óleo-excedente" ao governo. Esse formato enfrenta o problema da **maldição do vencedor** (*winner's curse*): como o valor do bloco é parcialmente comum (depende das reservas geológicas), o licitante que vence tende a ser aquele que **superestimou** o valor do recurso. Licitantes sofisticados, como a Petrobras, ajustam seus lances para baixo — exatamente como prevê a teoria. Em 2025, o 3.º Ciclo de Oferta Permanente de Partilha arrecadou R$ 452 milhões em bônus de assinatura, com ágio médio de 91%.

    **Leilão do espectro 5G ([Anatel](https://www.gov.br/anatel), 2021):**

    O leilão das faixas de frequência para a tecnologia 5G utilizou formato de **lance selado de primeiro preço** com preço de reserva e arrecadou **R$ 4,8 bilhões**. O Teorema da Equivalência de Receita sugere que, sob condições ideais, o formato não deveria importar — mas as assimetrias de informação entre incumbentes (Vivo, Claro, TIM) e entrantes justificaram regras específicas, como lotes exclusivos para novos competidores.

    *Fonte: ANP, Boletim de Rodadas de Licitações, 2025; Anatel, Resultado do Leilão 5G, 2021.*

O exercício a seguir aplica a teoria de leilões a um caso numérico.

??? exercicio-resolvido "Exercício Resolvido 19.6 — Leilão de segundo preço (Vickrey)"
    **Enunciado:** Três colecionadores disputam uma obra de arte em um leilão de Vickrey. Suas valorações privadas são \(v_1 = 100\), \(v_2 = 80\), \(v_3 = 60\). (a) Qual é o lance ótimo de cada participante? (b) Quem vence e quanto paga? (c) Se as valorações fossem i.i.d. \(U[0, 120]\) (com \(n = 3\)), qual seria a estratégia de equilíbrio no leilão de primeiro preço?

    ---

    **(a)** No Vickrey, a estratégia dominante é \(b_i = v_i\): \(b_1 = 100\), \(b_2 = 80\), \(b_3 = 60\).

    **(b)** Licitante 1 vence (maior lance), paga o segundo maior lance: **R$ 80**. Excedente do vencedor: \(100 - 80 = 20\).

    **(c)** Com \(n = 3\) e \(v_i \sim U[0, 120]\), a estratégia de equilíbrio simétrico no primeiro preço é:

    \[
    \beta(v) = \frac{n-1}{n} \cdot v = \frac{2}{3} v
    \]

    Cada licitante oferta 2/3 de sua valoração (*bid shading*). Pelo Teorema da Equivalência de Receita, a receita esperada é a mesma nos dois formatos.

    **Interpretação:** No primeiro preço, os licitantes "escondem" parte de sua valoração para obter lucro. No segundo preço, revelam tudo porque o preço pago não depende do próprio lance. O resultado é o mesmo em expectativa — mas os caminhos são diferentes.

---

## 19.8 Taxonomia dos Problemas de Informação Assimétrica

Limões, seguros, diplomas, leilões — percorremos um desfile de problemas que, à primeira vista, parecem ter pouco em comum. Mas todos compartilham a mesma raiz: alguém sabe algo que o outro não sabe, e essa assimetria distorce o resultado. Para consolidar a compreensão desse rico arcabouço conceitual, é útil organizá-los em uma taxonomia que destaque as dimensões essenciais: o timing da assimetria (pré ou pós-contratual), a natureza da informação oculta (ação ou tipo) e os mecanismos disponíveis para atenuá-la.

Note que os problemas discutidos neste capítulo não são mutuamente exclusivos — na prática, muitas relações econômicas envolvem *simultaneamente* risco moral e seleção adversa. Um mercado de seguros, por exemplo, enfrenta seleção adversa (clientes de alto risco procuram mais cobertura) e risco moral (segurados protegidos se cuidam menos). Um contrato de trabalho lida com seleção adversa (o empregador não conhece a produtividade do candidato na contratação) e risco moral (não observa o esforço após a contratação). A interação entre os dois problemas gera complexidade adicional e é uma área ativa de pesquisa.

A [Tabela 19.3](#tabela-19-3) resume os principais tipos de problemas de informação assimétrica.

<a id="tabela-19-3"></a>

| Tipo de Assimetria | Timing | O que é oculto | Exemplos | Soluções de Mercado |
|---|---|---|---|---|
| **Risco moral** | Pós-contratual | Ação do agente | Seguro e prevenção; empregador e esforço; credor e devedor | Contratos de incentivo, monitoramento, franquias, bônus |
| **Seleção adversa** | Pré-contratual | Tipo/característica do agente | Carros usados; seguros (risco); crédito (qualidade) | Menu de contratos, triagem, sinalização, garantias |
| **Sinalização** | Pré-contratual | Tipo (revelado pela ação) | Educação; garantias; dividendos | Ações custosas com custo diferencial entre tipos |
| **Triagem (screening)** | Pré-contratual | Tipo (revelado pela escolha) | Classes tarifárias; menus de planos; versões de software | Menus autosseletivos, discriminação de 2.º grau |
| **Leilões** | Pré-contratual | Valoração dos licitantes | Arte, espectro, títulos, concessões | Formatos de leilão, preço de reserva |

<div class="caption-obj" markdown>
**Tabela 19.3 — Taxonomia dos problemas de informação assimétrica.**
</div>

!!! box-brasil "Box Brasil 19.1 — Crédito Consignado e Seleção Adversa"
    O **crédito consignado** — modalidade em que as parcelas são descontadas diretamente da folha de pagamento ou do benefício previdenciário — é um exemplo notável de como um desenho contratual pode reduzir drasticamente os problemas de informação assimétrica no mercado de crédito.

    **O problema:** No crédito pessoal convencional, o banco não observa perfeitamente o risco de inadimplência. Como resultado, cobra taxas que refletem o risco médio. Bons pagadores consideram a taxa elevada e desistem — seleção adversa clássica.

    **O mecanismo:** A vinculação do pagamento à folha atua em dois canais: (1) **redução do risco moral** — o tomador não pode escolher deixar de pagar; (2) **redução da seleção adversa** — o risco é drasticamente reduzido, tornando a diferença entre tipos menos relevante.

    **Evidência:** Em 2025, a taxa do consignado para servidores situava-se entre 1,3% e 1,8% ao mês (~17–24% a.a.), enquanto o crédito pessoal não consignado superava 80% a.a. — diferença que reflete a redução da assimetria de informação.

    **Expansão:** Regulamentado pela Lei n.º 10.820/2003, o crédito consignado atingiu saldo superior a R$ 600 bilhões, sendo estendido a aposentados, trabalhadores CLT e beneficiários de programas sociais.

    *Fonte: [BCB](https://www.bcb.gov.br), Relatório de Economia Bancária, 2024.*

!!! box-brasil "Box Brasil 19.2 — Proagro e Risco Moral no Seguro Agrícola"
    O **Programa de Garantia da Atividade Agropecuária (Proagro)**, criado em 1973 e regulamentado pelo Banco Central, é o principal instrumento público de seguro agrícola no Brasil. Ele cobre perdas de lavouras financiadas com crédito rural decorrentes de eventos climáticos adversos (seca, geada, granizo, chuva excessiva), pragas e doenças sem controle.

    **Contexto:** O Proagro cobria, em 2024, cerca de 560 mil operações anuais, com cobertura superior a R$ 15 bilhões em valores segurados. O programa é operacionalizado pelos agentes financeiros do Sistema Nacional de Crédito Rural (principalmente Banco do Brasil) e subvencionado pelo Tesouro Nacional. A adesão é voluntária para a maioria dos produtores, mas obrigatória para operações de crédito rural em regiões de maior risco.

    **Dados:** Estudos do BCB e da Embrapa apontam que a taxa de sinistralidade do Proagro oscilou entre 70% e 120% nas últimas décadas — ou seja, os pagamentos de indenização frequentemente superam os prêmios arrecadados. Em anos de seca severa (como 2012 no Nordeste e 2021 no Sul), a sinistralidade ultrapassou 150%.

    **Análise:** O Proagro ilustra classicamente o problema de **risco moral** no seguro: ao garantir cobertura contra perdas, o programa pode reduzir o incentivo do produtor a adotar práticas de mitigação de risco — como plantio em janelas ideais, uso de sementes resistentes à seca, irrigação e manejo integrado de pragas. Se o produtor sabe que será indenizado em caso de perda, o custo privado de ser descuidado diminui. Além disso, há risco moral na **dimensão de reporte**: produtores podem superestimar perdas em laudos de sinistro, especialmente quando a fiscalização é insuficiente. A elevada sinistralidade é evidência circunstancial (embora não conclusiva) de risco moral.

    **Mecanismos de mitigação:** O governo tem adotado medidas para atenuar o risco moral: (i) o **Proagro Mais** (desde 2004) exige uso do **Zoneamento Agrícola de Risco Climático (ZARC)** — um sistema que define janelas de plantio e cultivares recomendados por município, funcionando como requisito de precaução mínima; (ii) **monitoramento por sensoriamento remoto** (imagens de satélite) para verificar laudos de sinistro; (iii) **coparticipação** do produtor (franquia), que mantém "pele no jogo".

    **Para refletir:** O trade-off entre proteção ao agricultor familiar e incentivo à precaução é análogo ao trade-off entre seguro e incentivo discutido na Seção 19.3. Se o governo eliminasse o Proagro, muitos pequenos produtores não teriam acesso a crédito (pois os bancos exigem seguro como garantia). Mas se a cobertura é excessivamente generosa, a precaução diminui. Qual é o nível ótimo de coparticipação?

    *Fontes: [BCB](https://www.bcb.gov.br), Manual de Crédito Rural; [Embrapa](https://www.embrapa.br); MAPA, Relatório Proagro, 2024.*

!!! box-brasil "🇧🇷 Box Brasil 19.3 — Cadastro Positivo e a redução da assimetria informacional no crédito"

    **Contexto:** O **Cadastro Positivo**, regulamentado pela Lei n.º 12.414/2011 e tornado automático pela Lei Complementar n.º 166/2019, é um banco de dados que registra o histórico de pagamentos de consumidores e empresas — não apenas as inadimplências (cadastro negativo, como SPC e Serasa), mas também os pagamentos realizados em dia. A inclusão automática, a partir de 2019, significou que todos os consumidores com CPF passaram a ter um perfil de crédito baseado em seu comportamento de pagamento, sem necessidade de adesão voluntária.

    **Dados:** Segundo dados do Banco Central e dos birôs de crédito (Serasa Experian, Boa Vista, Quod), o Cadastro Positivo incluiu automaticamente mais de 130 milhões de CPFs até 2024. Estimativas do BCB (*Relatório de Economia Bancária*, 2023) indicam que o Cadastro Positivo contribuiu para a redução do spread bancário em 2 a 5 pontos percentuais para tomadores com bom histórico, e para o aumento de 15–20% no volume de crédito concedido a consumidores que antes eram "invisíveis" ao sistema financeiro (sem histórico positivo ou negativo). A taxa média de juros do crédito pessoal caiu de 120% a.a. em 2019 para cerca de 85% a.a. em 2024, embora outros fatores (Selic, concorrência fintech) também contribuam.

    **Análise:** O Cadastro Positivo é uma solução institucional direta para o problema de seleção adversa no mercado de crédito (Seção 19.4). Sem informação sobre o histórico de pagamentos, o banco não distingue bons de maus pagadores e cobra uma taxa média que embute o risco de inadimplência dos piores tipos — exatamente o mecanismo de Akerlof. Bons pagadores consideram a taxa alta demais e desistem do crédito (ou buscam alternativas), configurando seleção adversa. O Cadastro Positivo funciona como um mecanismo de **revelação de tipos**: ao tornar observável o histórico de pagamentos, permite que bons pagadores sejam identificados e recompensados com taxas menores — reduzindo a assimetria de informação que sustenta spreads elevados. Em termos do modelo de Rothschild-Stiglitz (Seção 19.4.3), o Cadastro Positivo move o mercado de um equilíbrio separador ineficiente (com racionamento de crédito) para um equilíbrio mais próximo da informação completa.

    **Para refletir:** Se o Cadastro Positivo reduz a assimetria informacional, por que os spreads bancários no Brasil continuam entre os mais altos do mundo? A resposta envolve outras fontes de custo além da assimetria de informação: custos regulatórios, tributação (IOF), inadimplência estrutural, concentração bancária (Capítulo 15) e custos de recuperação judicial. A informação é necessária, mas não suficiente.

??? exercicio-resolvido "Exercício Resolvido 19.7 — Leilão de primeiro preço: estratégia de equilíbrio"
    **Enunciado:** Dois licitantes disputam um contrato de concessão em leilão de primeiro preço. Suas valorações são i.i.d. \(U[0, 1]\). (a) Derive a função de lance de equilíbrio simétrico. (b) Calcule a receita esperada do vendedor. (c) Verifique a equivalência de receita comparando com o leilão de Vickrey.

    ---

    **(a)** Com \(n = 2\) e \(v \sim U[0,1]\), no equilíbrio simétrico \(\beta(v) = \frac{n-1}{n} v = \frac{1}{2} v\).

    Derivação: cada licitante maximiza \((v - b) \cdot \Pr(\text{vencer})\). Com estratégia simétrica \(\beta(v) = \alpha v\), a probabilidade de vencer com lance \(b\) é \(\Pr(v_j < b/\alpha) = b/\alpha\). Maximizando \((v - b) \cdot b/\alpha\): CPO \(\Rightarrow v - 2b = 0 \Rightarrow b = v/2\). Logo \(\alpha = 1/2\). ✓

    **(b)** Receita = lance do vencedor = \(\frac{1}{2} \max(v_1, v_2)\). Com \(n = 2\) e \(U[0,1]\): \(\mathbb{E}[\max] = \frac{n}{n+1} = \frac{2}{3}\).

    Receita esperada = \(\frac{1}{2} \times \frac{2}{3} = \frac{1}{3}\).

    **(c)** No Vickrey: receita = segundo maior valor = \(\min(v_1, v_2)\). \(\mathbb{E}[\min] = \frac{1}{n+1} = \frac{1}{3}\). ✓ Equivalência verificada.

---

Começamos com um jogo de pôquer — ninguém vê as cartas dos outros — e terminamos com leilões que obrigam cada jogador a revelar o que sabe. Entre um extremo e outro, vimos mercados de limões colapsarem, seguradoras serem engolidas pelos piores clientes, e diplomas funcionarem como sinais caros de produtividade. A lição central é que a informação não é apenas um insumo da decisão — é uma variável estratégica que molda contratos, mercados e instituições inteiras.

*Informação assimétrica distorce mercados de dentro para fora. No próximo capítulo, as distorções vêm de fora: externalidades e bens públicos.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A seleção adversa ocorre quando:"
    - (a) O agente toma ações ocultas após a contratação
    - (b) A parte desinformada atrai desproporcionalmente os tipos 'ruins' porque não consegue distinguir tipos antes da contratação
    - (c) O principal observa perfeitamente as ações do agente
    - (d) Ambas as partes têm informação completa

    ??? success "Resposta"
        **(b)** Seleção adversa é um problema pré-contratual de informação oculta (hidden information): o principal não consegue distinguir tipos bons de ruins, oferece um contrato médio, e os bons se autosselecionam para fora. O caso clássico é o mercado de carros usados de Akerlof. A alternativa (a) descreve risco moral (moral hazard).

??? question "2. No modelo principal-agente com risco moral, o contrato ótimo tipicamente envolve:"
    - (a) Salário fixo, independente do resultado, para eliminar o risco do agente
    - (b) Remuneração integralmente variável, proporcional ao resultado
    - (c) Um trade-off entre incentivos (remuneração variável) e seguro (salário fixo), dependendo da aversão ao risco do agente
    - (d) Pagamento igual para todos os agentes, independentemente do esforço

    ??? success "Resposta"
        **(c)** Com risco moral, o principal quer motivar esforço (pagamento variável) mas o agente avesso ao risco prefere salário fixo (seguro). O contrato ótimo equilibra incentivos e seguro. Com agente neutro ao risco, a solução é 'vender a firma' (100% variável); com agente infinitamente avesso ao risco, tende a salário fixo. A alternativa (a) não provê incentivos; (b) impõe risco excessivo ao agente.

??? question "3. O mecanismo de screening difere da sinalização porque:"
    - (a) No screening, é o lado informado que toma a iniciativa; na sinalização, o desinformado
    - (b) No screening, é o lado desinformado que desenha o menu de contratos; na sinalização, o lado informado escolhe o sinal
    - (c) Screening e sinalização são sinônimos
    - (d) O screening só funciona em mercados de trabalho

    ??? success "Resposta"
        **(b)** Na sinalização (Spence), o agente informado envia um sinal custoso (ex.: educação). No screening (Rothschild-Stiglitz), o principal desinformado oferece um menu de contratos desenhado para que os tipos se autosselecionem (ex.: franquias diferentes em seguros). A alternativa (a) inverte os papéis; (c) ignora a diferença fundamental na iniciativa.

??? question "4. No mercado de seguros com seleção adversa, se a seguradora oferece uma única apólice ao prêmio médio:"
    - (a) Todos os tipos compram e o mercado funciona eficientemente
    - (b) Os tipos de baixo risco saem do mercado (prêmio alto demais para eles), piorando o pool e potencialmente levando ao colapso (espiral adversa)
    - (c) Os tipos de alto risco saem do mercado
    - (d) O lucro da seguradora é maximizado

    ??? success "Resposta"
        **(b)** Com informação assimétrica, o prêmio médio é alto demais para os bons riscos, que se autosselecionam para fora. O pool piora, o prêmio sobe, mais bons riscos saem — espiral adversa que pode destruir o mercado. É a lógica dos 'lemons' de Akerlof aplicada a seguros. A alternativa (c) inverte — os altos riscos adoram o prêmio médio; (a) descreve o caso com informação simétrica.

??? question "5. A restrição de compatibilidade de incentivos em um contrato de screening exige que:"
    - (a) O agente aceite participar do contrato (utilidade ≥ reserva)
    - (b) Cada tipo de agente prefira o contrato desenhado para seu tipo em vez do contrato desenhado para outro tipo
    - (c) O principal maximize seu lucro sem restrições
    - (d) Os pagamentos sejam iguais para todos os tipos

    ??? success "Resposta"
        **(b)** A restrição de compatibilidade de incentivos (IC) garante autorevelação: o tipo alto escolhe o contrato do tipo alto e vice-versa. A alternativa (a) descreve a restrição de participação (IR), que é necessária mas diferente; (c) ignora as restrições; (d) eliminaria a possibilidade de separação.

---

## 📋 Resumo do Capítulo

- A informação assimétrica — situação em que uma parte de uma transação detém informação relevante que a outra não possui — é uma falha de mercado que pode levar à ineficiência ou até ao colapso de mercados inteiros.
- O modelo principal-agente é o arcabouço geral para analisar relações com informação assimétrica. O principal desenha contratos sujeitos a duas restrições: participação (o agente aceita) e compatibilidade de incentivos (o agente age conforme desejado).
- O risco moral (ações ocultas) surge quando o agente pode tomar ações não observáveis após o contrato. A solução envolve um trade-off entre incentivos e seguro: contratos ótimos vinculam remuneração a resultados observáveis, mas expõem o agente avesso ao risco a variabilidade.
- A seleção adversa (tipos ocultos) ocorre quando uma parte possui informação privada sobre suas características antes do contrato. O modelo de limões de Akerlof mostra que a assimetria pode expulsar produtos de alta qualidade do mercado.
- A sinalização (Spence) permite que a parte informada revele seu tipo por meio de ações custosas (como educação), enquanto a triagem (Rothschild-Stiglitz) permite que a parte desinformada desenhe menus de contratos que induzam autosseleção.
- Leilões são mecanismos de alocação sob informação assimétrica. Pelo Teorema da Equivalência de Receita, os quatro formatos clássicos geram a mesma receita esperada sob certas condições.

## 🔑 Conceitos-Chave

<a id="tabela-19-4"></a>

| Conceito | Definição |
|----------|-----------|
| Informação assimétrica | Situação em que uma parte de uma transação detém informação relevante que a outra não possui |
| Modelo principal-agente | Arcabouço em que o principal delega uma tarefa ao agente que possui informação privada |
| Risco moral (moral hazard) | Problema pós-contratual: ações ocultas do agente afetam o resultado |
| Seleção adversa | Problema pré-contratual: tipos ocultos levam à expulsão dos "bons" do mercado |
| Mercado de limões (Akerlof) | Modelo de colapso de mercado por assimetria de informação sobre qualidade |
| Sinalização (Spence) | Ação custosa da parte informada para revelar credibilmente seu tipo |
| Triagem/screening | Menu de contratos da parte desinformada para induzir autosseleção |
| Custo de agência | Diferença de custo entre second-best e first-best |
| Restrição de compatibilidade de incentivos (RCI) | Condição que garante que o agente prefira a ação desejada |
| Teorema da equivalência de receitas | Leilões clássicos geram mesma receita esperada sob condições padrão |

<div class="caption-obj" markdown>
**Tabela 19.4 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-19-1"></a>**Exercício 19.1.** Considere um mercado de carros usados no modelo de Akerlof. Há dois tipos de carros: bons (valor de R\$ 30.000 para compradores, R\$ 25.000 para vendedores) e ruins (valor de R\$ 15.000 para compradores, R\$ 10.000 para vendedores). Metade dos carros são bons.

(a) Calcule o preço máximo que um comprador desinformado estaria disposto a pagar.
(b) Quais tipos de carros serão transacionados?
(c) Qual seria o resultado sob informação simétrica?
(d) Proponha um mecanismo institucional para atenuar a seleção adversa nesse mercado.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-1)

<a id="ex-19-2"></a>**Exercício 19.2.** Um proprietário contrata um gerente cuja utilidade é \(U = \sqrt{w} - e\), onde \(w\) é o salário e \(e \in \{0, 1\}\) é o esforço. O lucro é \(\pi_H = 200\) com probabilidade \(p(e)\) e \(\pi_L = 50\) caso contrário, onde \(p(1) = 0{,}8\) e \(p(0) = 0{,}3\). A utilidade de reserva é \(\bar{U} = 5\).

(a) Escreva as restrições de participação e de incentivo para induzir \(e = 1\).
(b) Resolva para os pagamentos ótimos \(w_H^*\) e \(w_L^*\).
(c) Compare o custo esperado do contrato com o first-best.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-2)

<a id="ex-19-3"></a>**Exercício 19.3.** No modelo de Spence, há dois tipos de trabalhadores. O tipo H tem produtividade \(\theta_H = 100\) e custo de educação \(c_H(s) = s/2\). O tipo L tem produtividade \(\theta_L = 50\) e custo de educação \(c_L(s) = s\).

(a) Determine o intervalo de níveis de educação \(s^*\) que sustentam um equilíbrio separador.
(b) Qual é o equilíbrio separador de menor custo?
(c) Existe um equilíbrio agregador estável neste modelo? Justifique.
(d) Discuta se a sinalização por educação é socialmente eficiente neste contexto.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-3)

<a id="ex-19-4"></a>**Exercício 19.4.** Em um leilão de segundo preço com três licitantes cujas valorações são i.i.d. com distribuição uniforme em \([0, 100]\):

(a) Qual é a estratégia ótima de cada licitante?
(b) Calcule a receita esperada do vendedor.
(c) Usando o Teorema da Equivalência de Receita, qual seria a receita esperada em um leilão de primeiro preço?
(d) No leilão de primeiro preço, qual é a estratégia de equilíbrio simétrico?

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-4)

<a id="ex-19-5"></a>**Exercício 19.5.** Uma seguradora opera num mercado com dois tipos de consumidores. O tipo A tem probabilidade de sinistro \(p_A = 0{,}1\) e o tipo B tem \(p_B = 0{,}4\). Ambos têm riqueza \(W = 100\) e perda potencial \(d = 80\). A proporção de tipo A é \(60\%\). A utilidade é \(U(W) = \ln(W)\).

(a) Calcule os contratos de seguro completo atuarialmente justos para cada tipo.
(b) Mostre que um contrato agregador (pooling) com seguro completo à taxa média não é um equilíbrio.
(c) No equilíbrio separador, o tipo B recebe seguro completo. Escreva a condição de incentivo-compatibilidade que determina a cobertura máxima para o tipo A.
(d) Discuta qualitativamente como a proporção de tipos afeta a existência do equilíbrio separador.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-5)

<a id="ex-19-6"></a>**Exercício 19.6.** Considere um mercado de carros usados com três qualidades: alta (\(v_A = 90\) para compradores, \(c_A = 70\) para vendedores), média (\(v_M = 60\), \(c_M = 50\)) e baixa (\(v_B = 30\), \(c_B = 20\)). Cada tipo representa \(1/3\) do mercado. Compradores não observam a qualidade.

(a) Calcule o preço máximo que um comprador desinformado pagaria se todos os tipos estivessem à venda. Quais tipos permanecem no mercado?
(b) Itere o raciocínio de seleção adversa: dado que os tipos expulsos saem, recalcule o valor esperado e determine o equilíbrio final.
(c) Calcule a perda de bem-estar (excedente destruído) comparando com o resultado de informação simétrica.
(d) Suponha que vendedores de qualidade alta possam oferecer uma garantia ao custo de \(5\) para carros bons e \(25\) para carros ruins/médios. A garantia resolve o problema? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-6)

<a id="ex-19-7"></a>**Exercício 19.7.** Um segurado escolhe o nível de precaução \(e \in [0, 1]\) que reduz a probabilidade de sinistro para \(p(e) = 1 - e\). O custo do esforço é \(C(e) = e^2/2\). A perda em caso de sinistro é \(L = 100\). A seguradora oferece cobertura \(\alpha \in [0, 1]\) (fração da perda reembolsada) ao prêmio atuarialmente justo \(\pi = \alpha \cdot p(e) \cdot L\).

(a) Se o esforço fosse observável (first-best), qual o nível ótimo de precaução \(e^{FB}\)?
(b) Com esforço não observável e cobertura \(\alpha\), derive o nível de esforço escolhido pelo segurado \(e^*(\alpha)\).
(c) Mostre que \(e^*(\alpha) < e^{FB}\) para \(\alpha > 0\). Interprete o resultado como risco moral.
(d) Qual é a cobertura ótima \(\alpha^*\) que maximiza o bem-estar do segurado, levando em conta o risco moral? O seguro completo (\(\alpha = 1\)) é ótimo?

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-7)

<a id="ex-19-8"></a>**Exercício 19.8.** No modelo de Spence com contínuo de tipos, suponha que um trabalhador tem produtividade \(\theta \sim U[1, 2]\) e custo de educação \(c(s, \theta) = s / \theta\). A firma oferece salário \(w(s)\) condicionado ao nível de educação observado.

(a) Num equilíbrio separador, mostre que a condição de autosseleção exige \(w'(s) = 1/\theta\) (onde \(\theta(s)\) é a função inversa que associa cada \(s\) a um tipo).
(b) Com a condição de contorno \(s(\theta = 1) = 0\), derive a função de sinalização \(s(\theta)\) e o esquema salarial \(w(s)\).
(c) Calcule o custo social total da sinalização e compare com o excedente sob informação simétrica.
(d) Discuta se um imposto sobre educação poderia melhorar o bem-estar neste modelo.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-8)

<a id="ex-19-9"></a>**Exercício 19.9.** Um monopolista (parte desinformada) vende para consumidores que podem ter valoração alta (\(\theta_H = 10\)) ou baixa (\(\theta_L = 4\)), com proporções \(\lambda = 0{,}5\) cada. A utilidade do consumidor tipo \(\theta\) por um bem de qualidade \(q\) ao preço \(t\) é \(U = \theta q - t\). O custo de produção é \(C(q) = q^2 / 2\).

(a) Derive os contratos de first-best (informação completa) para cada tipo: qualidade \(q_i^{FB}\) e transferência \(t_i^{FB}\) que extraem todo o excedente.
(b) Mostre que o menu de first-best não é incentivo-compatível: o tipo \(\theta_H\) prefere o contrato do tipo \(\theta_L\).
(c) Derive o menu ótimo de second-best \((q_L^{SB}, t_L^{SB})\) e \((q_H^{SB}, t_H^{SB})\), aplicando as condições padrão (IC de \(\theta_H\) ativa, RP de \(\theta_L\) ativa, "no distortion at the top").
(d) Calcule a renda informacional do tipo \(\theta_H\) e o lucro esperado do monopolista no second-best.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-9)

<a id="ex-19-10"></a>**Exercício 19.10.** Um governo deseja alocar um projeto público a uma entre duas firmas. A firma \(i\) tem custo de execução \(c_i\), que é informação privada, distribuído uniformemente em \([0, 1]\). O governo usa um mecanismo direto em que cada firma reporta seu custo \(\hat{c}_i\) e recebe pagamento \(t_i(\hat{c}_1, \hat{c}_2)\) caso seja selecionada.

(a) Enuncie o Princípio da Revelação e explique por que o governo pode restringir a análise a mecanismos diretos reveladores sem perda de generalidade.
(b) Considere o mecanismo de Vickrey-Clarke-Groves (VCG): o projeto é alocado à firma com menor custo reportado, e ela recebe pagamento igual ao custo reportado pela outra firma. Mostre que reportar \(\hat{c}_i = c_i\) é estratégia dominante.
(c) Calcule o pagamento esperado do governo e compare com o custo real do projeto.
(d) O mecanismo VCG é eficiente (aloca à firma de menor custo)? É orcamentariamente equilibrado? Discuta.

[:material-arrow-right: Ver solução](../solucoes/cap19.md#ex-19-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2017 — Questão 11"
    Com relação aos problemas de assimetria de informação, indique quais entre as afirmativas abaixo estão corretas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Seleção adversa diz respeito a uma ação não observável. |
    | 1    | Problemas morais dizem respeito a características não observáveis. |
    | 2    | Quando empresas de seguros reúnem informações sobre demandantes de seguros, diz-se que elas estão fazendo screening. |
    | 3    | Certificações de produtos são uma forma de reduzir o "problema dos limões" decorrente de seleção adversa. |
    | 4    | Seguros com cobertura universal obrigatória podem ser uma forma de prevenir seleção adversa. |

    ??? success "Gabarito"
        **Respostas: 00111**

        - **Item 0 — F:** Seleção adversa diz respeito a **características** (tipos) não observáveis, não a ações. Ações não observáveis configuram **risco moral**.
        - **Item 1 — F:** Risco moral diz respeito a **ações** não observáveis, não a características. Características ocultas são **seleção adversa**.
        - **Item 2 — V:** Correto. *Screening* é o mecanismo pelo qual a parte desinformada coleta informações para classificar a parte informada.
        - **Item 3 — V:** Correto. Certificações reduzem a assimetria de informação, atenuando o problema dos limões.
        - **Item 4 — V:** Correto. Cobertura universal e obrigatória elimina a autosseleção, prevenindo a seleção adversa. O SUS é um exemplo.

??? question "ANPEC 2025 — Questão 04"
    Com relação à teoria dos leilões, julgue as afirmativas abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0    | O leilão holandês e o leilão de Vickrey geram resultados Pareto-eficientes. |
    | 1    | O leilão inglês com preço de reserva igual a zero não gera resultados eficientes de Pareto. |
    | 2    | Os resultados do leilão de lance fechado são Pareto-eficientes, mesmo que as crenças de cada participante acerca das avaliações dos demais estejam incorretas. |
    | 3    | Declarar o verdadeiro valor é a estratégia ótima de cada participante no leilão de Vickrey. |
    | 4    | Em um leilão de valor comum, em que os participantes têm estimativas diferentes deste valor, a estratégia ótima é oferecer um lance menor do que o valor estimado, que deverá ser tão mais baixo quanto maior for o número de participantes. |

    ??? success "Gabarito"
        **Respostas: 10011**

        - **Item 0 — V:** Ambos alocam o bem ao licitante com maior valoração em equilíbrio, gerando eficiência.
        - **Item 1 — F:** O leilão inglês com preço de reserva zero **gera** resultados eficientes.
        - **Item 2 — F:** No primeiro preço, a estratégia depende das crenças. Crenças incorretas comprometem a eficiência.
        - **Item 3 — V:** No Vickrey, \(b_i = v_i\) é estratégia fracamente dominante.
        - **Item 4 — V:** Em leilões de valor comum, a **maldição do vencedor** exige *bid shading* crescente com \(n\).

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Chiappori, P.-A.; Salanié, B. (2000). Testing for Asymmetric Information in Insurance Markets. *Journal of Political Economy*, 108(1), 56–78.](https://doi.org/10.1086/317671)"
    **DOI:** [10.1086/317671](https://doi.org/10.1086/317671)

    **Contexto.** A assimetria de informação é realmente importante nos mercados de seguros? Se seleção adversa ou risco moral estiverem presentes, devemos observar uma **correlação positiva** entre a cobertura escolhida e a ocorrência de sinistros.

    **Método.** Usando dados de seguros de automóveis na França (jovens motoristas), os autores testaram se, após controlar por todas as variáveis observáveis, a correlação cobertura-sinistro é positiva.

    **Resultado.** Surpreendentemente, **não encontraram** correlação positiva significativa. Isso sugere que as seguradoras classificam os riscos eficientemente, e que a informação assimétrica residual pode ser pequena nesse mercado específico.

    **Conexão com o capítulo.** O paper testa diretamente o modelo de Rothschild-Stiglitz (Seção 19.4.3). A ausência de correlação sugere que os mecanismos de triagem das seguradoras podem ser eficazes em resolver o problema informacional.

??? pesquisa "[Matoso, R.; Rezende, M. (2014). Asymmetric Information in Oil and Gas Lease Auctions with a National Company. *International Journal of Industrial Organization*, 33, 72–82.](https://doi.org/10.1016/j.ijindorg.2014.02.006)"
    **DOI:** [10.1016/j.ijindorg.2014.02.006](https://doi.org/10.1016/j.ijindorg.2014.02.006)

    **Contexto.** A Petrobras possui vantagem informacional sobre concorrentes nos leilões da ANP? Se sim, como isso afeta os lances e resultados?

    **Método.** Dados dos leilões de concessão da ANP, comparando o comportamento de lances da Petrobras versus concorrentes estrangeiros em diferentes tipos de blocos.

    **Resultado.** A Petrobras apresentou comportamento consistente com vantagem informacional: participou mais em blocos lucrativos, ofertou lances maiores para blocos de maior valor e competiu mais agressivamente por blocos re-ofertados.

    **Conexão com o capítulo.** Aplicação empírica direta da teoria de leilões com informação assimétrica (Seção 19.7), mostrando que a equivalência de receita falha quando licitantes são assimétricos.

??? pesquisa "[Einav, L.; Finkelstein, A.; Cullen, M. R. (2010). Estimating Welfare in Insurance Markets Using Variation in Prices. *Quarterly Journal of Economics*, 125(3), 877–921.](https://doi.org/10.1162/qjec.2010.125.3.877)"
    **DOI:** [10.1162/qjec.2010.125.3.877](https://doi.org/10.1162/qjec.2010.125.3.877)

    **Contexto.** Qual é o custo de bem-estar da seleção adversa em mercados de seguros reais? E como ele se compara ao custo do risco moral? A maioria dos testes empíricos (como Chiappori-Salanié) identifica a *presença* de informação assimétrica, mas não quantifica seus custos de bem-estar.

    **Método.** Os autores exploram variação nos preços de seguros de saúde enfrentados por funcionários de uma grande empresa americana (Alcoa) para estimar separadamente as curvas de demanda e custo marginal no mercado de seguros. A variação de preços decorre de diferenças contratuais entre estabelecimentos, permitindo identificação quase-experimental.

    **Resultado.** A seleção adversa gera perda de bem-estar equivalente a cerca de US$ 9,55 por segurado por mês — significativa, mas menor do que as estimativas baseadas em modelos calibrados. O resultado sugere que a seleção adversa é empiricamente relevante, mas seu custo pode ser moderado em mercados com boa classificação de risco.

    **Conexão com o capítulo.** O paper quantifica o custo de bem-estar da seleção adversa (Seção 19.4), conectando a teoria à mensuração empírica. A metodologia — estimar curvas de demanda e custo para calcular DWL — é análoga à análise de bem-estar do Capítulo 15, aplicada ao contexto de informação assimétrica.

??? pesquisa "[Tyler, J. H.; Murnane, R. J.; Willett, J. B. (2000). Estimating the Labor Market Signaling Value of the GED. *Quarterly Journal of Economics*, 115(2), 431–468.](https://doi.org/10.1162/003355300554926)"
    **DOI:** [10.1162/003355300554926](https://doi.org/10.1162/003355300554926)

    **Contexto.** O modelo de Spence (Seção 19.5) prevê que a educação pode funcionar como sinal de produtividade. Mas como separar empiricamente o componente de sinalização do componente de capital humano (produtividade real)? Tyler, Murnane e Willett exploram uma variação institucional engenhosa para isolar o efeito puro de sinalização.

    **Método.** O *General Educational Development* (GED) é um exame de equivalência ao ensino médio nos EUA. A nota de corte para aprovação varia entre estados: em alguns, basta acertar 40 questões; em outros, é preciso 45. Os autores comparam os rendimentos de indivíduos que obtiveram a mesma nota (por exemplo, 42) mas que, por viverem em estados com cortes diferentes, ficaram em lados opostos da aprovação. A nota reflete o mesmo nível de capital humano — a única diferença é ter ou não o "selo" do GED.

    **Resultado.** Obter o GED — o puro sinal, sem ganho adicional de capital humano — aumenta os rendimentos em 10–19% para jovens brancos que abandonaram o ensino médio. O efeito é menor para minorias, sugerindo que a credibilidade do sinal varia entre grupos demográficos.

    **Conexão com o capítulo.** Este é um dos testes empíricos mais limpos da teoria de sinalização de Spence. Ao isolar o efeito do "selo" (sinal) do efeito da competência (capital humano), os autores demonstram que a sinalização tem valor de mercado real e significativo — confirmando a previsão teórica da Seção 19.5.

??? pesquisa "[Banerjee, A.; Duflo, E.; Glennerster, R.; Kinnan, C. (2015). The Miracle of Microfinance? Evidence from a Randomized Evaluation. *American Economic Journal: Applied Economics*, 7(1), 22–53.](https://doi.org/10.1257/app.20130533)"
    **DOI:** [10.1257/app.20130533](https://doi.org/10.1257/app.20130533)

    **Contexto.** O microcrédito foi amplamente celebrado como solução para a pobreza em países em desenvolvimento — a ponto de Muhammad Yunus e o Grameen Bank receberem o Prêmio Nobel da Paz em 2006. A lógica é que a assimetria de informação nos mercados de crédito (seleção adversa sobre a qualidade do tomador e risco moral sobre o uso dos recursos) exclui os pobres do sistema financeiro formal. O microcrédito, com seus mecanismos de empréstimo em grupo (responsabilidade solidária) e monitoramento entre pares, mitigaria ambos os problemas.

    **Método.** Os autores conduziram um **experimento randomizado** em Hyderabad, Índia: 104 bairros foram sorteados para receber agências de microcrédito, enquanto outros serviram de controle. Acompanharam 6.850 domicílios por 18 meses. A randomização permite isolar o efeito causal do acesso ao microcrédito, controlando para seleção adversa na adesão voluntária.

    **Resultado.** O microcrédito aumentou o investimento em negócios e o consumo de bens duráveis, mas **não teve efeito significativo** sobre consumo total, saúde, educação ou empoderamento feminino. Crucialmente, os efeitos foram heterogêneos: famílias com negócios pré-existentes expandiram atividades, enquanto as demais não se beneficiaram. Não houve a "transformação" que os entusiastas prometiam.

    **Conexão com o capítulo.** O paper ilustra como a assimetria de informação no mercado de crédito (Seção 19.4) afeta países em desenvolvimento e como mecanismos contratuais inovadores (empréstimo em grupo como triagem e monitoramento entre pares como mitigação de risco moral) tentam resolver os problemas informacionais. O resultado moderado sugere que resolver a assimetria de informação no crédito é necessário, mas não suficiente, para gerar desenvolvimento.

---

## 📚 Referências do Capítulo

- Banerjee, Abhijit, Esther Duflo, Rachel Glennerster, e Cynthia Kinnan. 2015. "[The Miracle of Microfinance? Evidence from a Randomized Evaluation](https://doi.org/10.1257/app.20130533)." *American Economic Journal: Applied Economics* 7 (1): 22–53.
- Akerlof, George A. 1970. "[The Market for 'Lemons': Quality Uncertainty and the Market Mechanism](https://doi.org/10.2307/1879431)." *Quarterly Journal of Economics* 84 (3): 488–500.
- Chiappori, Pierre-André, e Bernard Salanié. 2000. "[Testing for Asymmetric Information in Insurance Markets](https://doi.org/10.1086/317671)." *Journal of Political Economy* 108 (1): 56–78.
- Einav, Liran, Amy Finkelstein, e Mark R. Cullen. 2010. "[Estimating Welfare in Insurance Markets Using Variation in Prices](https://doi.org/10.1162/qjec.2010.125.3.877)." *Quarterly Journal of Economics* 125 (3): 877–921.
- Holmström, Bengt. 1979. "[Moral Hazard and Observability](https://doi.org/10.2307/3003320)." *Bell Journal of Economics* 10 (1): 74–91.
- Matoso, R., e M. Rezende. 2014. "[Asymmetric Information in Oil and Gas Lease Auctions with a National Company](https://doi.org/10.1016/j.ijindorg.2014.02.006)." *International Journal of Industrial Organization* 33: 72–82.
- Milgrom, Paul. 2004. [*Putting Auction Theory to Work*](https://books.google.com/books/about/Putting_Auction_Theory_to_Work.html?id=kSiJnHbcfk8C). Cambridge: Cambridge University Press.
- Mirrlees, James A. 1971. "[An Exploration in the Theory of Optimum Income Taxation](https://doi.org/10.2307/2296779)." *Review of Economic Studies* 38 (2): 175–208.
- Myerson, Roger B. 1981. "[Optimal Auction Design](https://doi.org/10.1287/moor.6.1.58)." *Mathematics of Operations Research* 6 (1): 58–73.
- Rothschild, Michael, e Joseph E. Stiglitz. 1976. "[Equilibrium in Competitive Insurance Markets: An Essay on the Economics of Imperfect Information](https://doi.org/10.2307/1885326)." *Quarterly Journal of Economics* 90 (4): 629–649.
- Spence, Michael. 1973. "[Job Market Signaling](https://doi.org/10.2307/1882010)." *Quarterly Journal of Economics* 87 (3): 355–374.
- Tyler, John H., Richard J. Murnane, e John B. Willett. 2000. "[Estimating the Labor Market Signaling Value of the GED](https://doi.org/10.1162/003355300554926)." *Quarterly Journal of Economics* 115 (2): 431–468.
- Vickrey, William. 1961. "[Counterspeculation, Auctions, and Competitive Sealed Tenders](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x)." *Journal of Finance* 16 (1): 8–37.
