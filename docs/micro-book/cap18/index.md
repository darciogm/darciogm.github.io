# Capítulo 18 — Limões, Sinais e Contratos

## Introdução

A teoria microeconômica clássica, desenvolvida nos capítulos anteriores, pressupõe que todos os agentes econômicos possuem informação completa e simétrica sobre as características dos bens, os preços vigentes e as ações dos demais participantes do mercado. Essa hipótese, embora analiticamente conveniente, raramente se sustenta na prática. Empregadores não observam perfeitamente o esforço de seus funcionários; compradores de carros usados desconhecem o histórico real de manutenção do veículo; seguradoras não conseguem distinguir com precisão clientes de alto e baixo risco.

A **informação assimétrica** — situação em que uma parte de uma transação detém informação relevante que a outra parte não possui — gera consequências profundas para o funcionamento dos mercados. Em casos extremos, mercados inteiros podem deixar de existir. O estudo sistemático dessas questões rendeu o Prêmio Nobel de Economia a George Akerlof, Michael Spence e Joseph Stiglitz em 2001, e permanece como uma das áreas mais férteis da microeconomia moderna.

Neste capítulo, apresentamos o arcabouço do **modelo principal-agente**, analisamos os dois problemas fundamentais — **risco moral** (ações ocultas) e **seleção adversa** (tipos ocultos) — e discutimos mecanismos de mercado e contratuais que atenuam essas falhas, incluindo **sinalização**, **triagem** e **leilões**.

---

## 18.1 Contratos Complexos como Resposta à Assimetria de Informação

Na presença de informação assimétrica, contratos simples de preço fixo frequentemente não são suficientes para garantir transações eficientes. Os agentes econômicos respondem desenhando **contratos complexos** que buscam alinhar incentivos, revelar informação privada ou mitigar comportamentos oportunistas.

!!! definition "Informação Assimétrica"
    Situação em que, numa relação econômica entre duas ou mais partes, ao menos uma delas possui informação relevante que as demais não detêm. A parte mais informada é dita ter **informação privada**.

Exemplos de contratos complexos que emergem como resposta à assimetria de informação incluem:

- **Contratos de trabalho** com bônus vinculados a desempenho (resposta ao risco moral);
- **Franquias e coparticipações** em seguros (resposta ao risco moral e à seleção adversa);
- **Garantias** oferecidas pelo vendedor de um produto (sinalização de qualidade);
- **Menus de contratos** com diferentes combinações preço-qualidade (triagem de tipos).

A análise econômica desses arranjos contratuais constitui o campo da **teoria dos contratos** e da **economia da informação**, que se desenvolveu a partir dos trabalhos seminais de Akerlof (1970), Spence (1973), Rothschild e Stiglitz (1976), Mirrlees (1971) e Holmström (1979).

---

## 18.2 O Modelo Principal-Agente

O **modelo principal-agente** fornece o arcabouço analítico geral para estudar situações de informação assimétrica em relações contratuais.

!!! definition "Relação Principal-Agente"
    Relação econômica em que uma parte (o **principal**) delega uma tarefa ou decisão a outra parte (o **agente**), que possui informação privada sobre suas características (tipo) ou sobre suas ações (esforço). O principal desenha um contrato para induzir o agente a agir de forma compatível com seus interesses.

### Elementos do modelo

O modelo canônico envolve os seguintes componentes:

1. **Principal**: parte que propõe o contrato (empregador, segurador, comprador).
2. **Agente**: parte que aceita ou rejeita o contrato e possui informação privada (trabalhador, segurado, vendedor).
3. **Contrato**: mecanismo que especifica pagamentos contingentes a variáveis observáveis.
4. **Restrição de participação (RP)**: o agente só aceita o contrato se a utilidade esperada for ao menos igual à sua **utilidade de reserva** \(\bar{U}\).
5. **Restrição de compatibilidade de incentivos (RCI)**: o contrato deve induzir o agente a escolher a ação ou revelar o tipo desejado pelo principal.

Formalmente, o principal resolve:

\[
\max_{w(\cdot)} \; \mathbb{E}[\pi(x) - w(x)]
\]

sujeito a:

\[
\mathbb{E}[U(w(x), e^*)] \geq \bar{U} \quad \text{(Restrição de Participação)}
\]

\[
e^* \in \arg\max_{e} \; \mathbb{E}[U(w(x), e)] \quad \text{(Restrição de Incentivo)}
\]

onde \(w(x)\) é o esquema de pagamento contingente ao resultado observável \(x\), \(e\) é o esforço do agente e \(\pi(x)\) é o lucro bruto do principal.

### Informação completa vs. incompleta

Sob **informação completa** (ou simétrica), o principal observa tanto o tipo quanto a ação do agente. Nesse caso, basta oferecer um contrato que satisfaça a restrição de participação com igualdade — o chamado **first-best** (ótimo de primeiro melhor).

Sob **informação assimétrica**, o principal não observa o tipo ou a ação do agente, e precisa satisfazer adicionalmente a restrição de incentivos. O resultado é o **second-best** (ótimo de segundo melhor), que geralmente envolve uma perda de eficiência em relação ao first-best.

---

## 18.3 Ações Ocultas: Risco Moral

!!! definition "Risco Moral (Moral Hazard)"
    Problema de informação assimétrica que surge quando uma parte de uma transação pode tomar **ações não observáveis** (ocultas) que afetam o resultado da relação, e a outra parte não consegue monitorar ou verificar essas ações diretamente. O termo refere-se à mudança de comportamento do agente após a celebração do contrato.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Quando alguém está protegido contra as consequências de suas ações, tende a se arriscar mais — porque quem paga a conta é outro.

    **Pense assim:** Depois de contratar um seguro completo para o celular, muita gente deixa de usar capinha e película. Afinal, se o aparelho quebrar, a seguradora cobre. Esse "relaxamento" após o contrato é o risco moral em ação — o comportamento muda porque o custo de ser descuidado foi transferido para outra parte.

    **Por que isso importa:** Franquias e coparticipações em planos de saúde e seguros existem justamente para manter o segurado com "pele no jogo", evitando que a proteção gere descuido excessivo.

O risco moral é um problema **pós-contratual**: a assimetria de informação diz respeito a ações tomadas pelo agente *depois* de firmado o acordo.

### 18.3.1 A relação proprietário-gerente

Considere um proprietário (principal) que contrata um gerente (agente) para administrar sua empresa. O lucro \(\pi\) depende do esforço \(e\) do gerente e de um choque aleatório \(\varepsilon\):

\[
\pi = f(e) + \varepsilon, \quad \varepsilon \sim (0, \sigma^2)
\]

O esforço \(e\) é custoso para o gerente, com custo \(c(e)\), onde \(c'(e) > 0\) e \(c''(e) > 0\). Se o proprietário pudesse observar \(e\), contrataria o nível eficiente \(e^*\) tal que:

\[
f'(e^*) = c'(e^*)
\]

Quando \(e\) não é observável, o proprietário precisa desenhar um esquema de compensação \(w(\pi)\) que dependa do resultado observável \(\pi\). Se o gerente é avesso ao risco com utilidade \(U(w) - c(e)\), o contrato ótimo envolve um **trade-off entre incentivos e seguro**:

- Um salário fixo \(w = \bar{w}\) provê seguro perfeito ao gerente, mas nenhum incentivo para se esforçar.
- Um contrato puramente variável \(w = \pi - R\) (em que \(R\) é a renda fixa do proprietário) provê incentivos perfeitos, mas transfere todo o risco ao gerente.

!!! abstract "Princípio da Informatividade (Holmström, 1979)"
    O contrato ótimo deve vincular o pagamento do agente a **qualquer variável** que contenha informação sobre o esforço do agente, e somente a essas variáveis. Formalmente, uma variável \(y\) deve ser incluída no contrato se e somente se a distribuição condicional de \(x\) dado \(e\) muda com \(y\), ou seja, se \(y\) é **informativa** sobre \(e\).

### 18.3.2 Risco moral em seguros

O caso clássico de risco moral ocorre no mercado de seguros. Após contratar um seguro contra roubo, o segurado pode reduzir os cuidados com a prevenção (não trancar o carro, não instalar alarme), aumentando a probabilidade de sinistro.

Seja \(p(e)\) a probabilidade de sinistro, com \(p'(e) < 0\) (mais esforço de prevenção reduz a probabilidade). O segurado escolhe \(e\) para maximizar:

\[
\max_{e} \; [1 - p(e)] \cdot U(W_0 - q) + p(e) \cdot U(W_0 - q - L + I) - c(e)
\]

onde \(W_0\) é a riqueza inicial, \(q\) é o prêmio do seguro, \(L\) é a perda potencial, \(I\) é a indenização e \(c(e)\) é o custo do esforço de prevenção.

Com seguro completo (\(I = L\)), o segurado recebe \(W_0 - q\) em qualquer estado, eliminando todo incentivo para esforço preventivo. Por isso, seguros com **franquias** e **coparticipação** são mecanismos para mitigar o risco moral, fazendo com que o segurado assuma parte do risco e mantenha incentivos para prevenção.

<figure>
  <iframe src="../graficos/cap18/principal-agente.html" width="100%" height="620" frameborder="0" style="border:1px solid #eee; border-radius:8px;"></iframe>
  <figcaption><strong>Figura 18.2</strong> — Modelo principal-agente com risco moral. O gráfico mostra a restrição de participação (RP) e a restrição de compatibilidade de incentivos (RCI) no espaço de salários. O ponto verde indica o contrato ótimo que induz esforço alto.</figcaption>
</figure>

### 18.3.3 O problema do esforço não observável: modelo formal

Considere dois níveis de esforço: alto (\(e_H\)) e baixo (\(e_L\)), com \(c(e_H) > c(e_L)\). O resultado pode ser bom (\(x_H\)) ou ruim (\(x_L\)). Sob esforço alto, a probabilidade de \(x_H\) é \(p_H\); sob esforço baixo, é \(p_L\), com \(p_H > p_L\).

O principal deseja induzir esforço alto. O contrato especifica pagamentos \(w_H\) (se \(x = x_H\)) e \(w_L\) (se \(x = x_L\)). As restrições são:

**Restrição de Participação (RP):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq \bar{U}
\]

**Restrição de Compatibilidade de Incentivos (RCI):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq p_L \, U(w_H) + (1 - p_L) \, U(w_L) - c(e_L)
\]

Simplificando a RCI:

\[
(p_H - p_L)[U(w_H) - U(w_L)] \geq c(e_H) - c(e_L)
\]

Essa condição exige que a diferença de pagamentos entre os estados bom e ruim seja suficientemente grande para compensar o custo adicional do esforço. Como \(p_H > p_L\), precisamos de \(w_H > w_L\): o pagamento deve ser maior quando o resultado é bom.

!!! tip "Intuição Econômica"
    A RCI nos diz que o "prêmio" por bom desempenho, \(w_H - w_L\), deve ser grande o suficiente para que o agente prefira se esforçar. Quanto maior a diferença \(c(e_H) - c(e_L)\) e menor a diferença \(p_H - p_L\), mais difícil é prover incentivos — e maior o custo de agência.

---

??? example "Exercício Resolvido 18.1"
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

---

## 18.4 Tipos Ocultos: Seleção Adversa

!!! definition "Seleção Adversa (Adverse Selection)"
    Problema de informação assimétrica que surge quando uma parte de uma transação possui **informação privada sobre suas características** (seu "tipo") antes da celebração do contrato, e essa informação não é observável pela outra parte. A seleção adversa é um problema **pré-contratual**.

### 18.4.1 O mercado de limões (Akerlof, 1970)

George Akerlof demonstrou que a assimetria de informação pode levar ao colapso de mercados inteiros. Considere um mercado de carros usados com dois tipos:

- **Carros bons** ("cerejas"): valor \(V_H\) para o comprador, \(C_H\) para o vendedor, com \(V_H > C_H\).
- **Carros ruins** ("limões"): valor \(V_L\) para o comprador, \(C_L\) para o vendedor, com \(V_L > C_L\).

Suponha \(V_H > C_H > V_L > C_L\) e que uma fração \(\lambda\) dos carros são bons. O vendedor conhece a qualidade; o comprador, não.

Se o comprador não distingue os tipos, está disposto a pagar no máximo:

\[
\bar{V} = \lambda V_H + (1 - \lambda) V_L
\]

Se \(\bar{V} < C_H\), os donos de carros bons não aceitam vender pelo preço médio. Somente carros ruins permanecem no mercado, e o comprador, antecipando isso, oferece no máximo \(V_L\). A **qualidade média do mercado cai**, configurando a seleção adversa: os "bons" saem, os "ruins" ficam.

!!! note "Resultado de Akerlof"
    Em casos extremos, a seleção adversa pode provocar o **desaparecimento completo** do mercado (market unraveling), mesmo quando ganhos de troca existiriam sob informação simétrica. Esse resultado mostra que a informação assimétrica é uma genuína **falha de mercado**.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Quando o comprador não consegue distinguir produtos bons de ruins, os bons somem do mercado — porque ninguém paga o preço justo por eles.

    **Pense assim:** No mercado de carros usados no Brasil, quem vende um carro bem cuidado compete com quem vende um carro cheio de problemas escondidos. O comprador, desconfiado, só topa pagar um preço médio. Mas esse preço é baixo demais para quem tem carro bom, que desiste de vender. Sobram só os "abacaxis" — e o comprador, sabendo disso, oferece menos ainda.

    **Por que isso importa:** Plataformas como OLX, laudos de vistoria cautelar e garantias de concessionária existem justamente para quebrar esse ciclo, reduzindo a assimetria de informação e permitindo que transações boas aconteçam.

<figure>
  <iframe src="../graficos/cap18/mercado-limoes.html" width="100%" height="620" frameborder="0" style="border:1px solid #eee; border-radius:8px;"></iframe>
  <figcaption><strong>Figura 18.1</strong> — Mercado de limões (Akerlof, 1970). Ajuste a fração de limões e observe como a seleção adversa leva ao colapso do mercado quando a disposição a pagar do comprador cai abaixo do custo de reserva dos vendedores de carros bons.</figcaption>
</figure>

---

??? example "Exercício Resolvido 18.2"
    **Enunciado:** Em um mercado de carros usados à la Akerlof, 40% dos carros são bons e 60% são ruins. Carros bons valem R$ 24.000 para compradores e R$ 20.000 para vendedores. Carros ruins valem R$ 10.000 para compradores e R$ 6.000 para vendedores. (a) O mercado de carros bons funciona? (b) Qual é a perda de bem-estar causada pela assimetria?

    **Dados:** \(\lambda = 0{,}4\); \(V_H = 24.000\), \(C_H = 20.000\); \(V_L = 10.000\), \(C_L = 6.000\).

    **Resolução:**

    **Passo 1 — Preço máximo do comprador desinformado**

    \[
    \bar{V} = 0{,}4 \times 24.000 + 0{,}6 \times 10.000 = 9.600 + 6.000 = 15.600
    \]

    **Passo 2 — Teste de viabilidade**

    Como \(\bar{V} = 15.600 < C_H = 20.000\), os vendedores de carros bons **não aceitam** o preço médio. Apenas carros ruins são ofertados.

    O comprador, antecipando que só restam limões, oferece no máximo \(V_L = 10.000\). O mercado de carros bons **colapsa** por seleção adversa.

    **Passo 3 — Perda de bem-estar**

    Sob informação simétrica, haveria ganhos de troca em ambos os tipos:

    - Carros bons: \(V_H - C_H = 4.000\) por carro
    - Carros ruins: \(V_L - C_L = 4.000\) por carro

    Com seleção adversa, os ganhos dos carros bons (40% do mercado) são completamente perdidos.

    **Resultado:** A perda de bem-estar é de **R$ 4.000 por carro bom** que deixa de ser transacionado, ou \(0{,}4 \times 4.000 = \text{R\$}\, 1.600\) por carro em média.

    **Interpretação econômica:** No Brasil, o mercado de veículos usados movimentou mais de 15 milhões de unidades em 2024. Plataformas como OLX e Webmotors, laudos de vistoria cautelar e o sistema Denatran de consulta de histórico veicular funcionam como mecanismos de redução da assimetria de informação, atenuando o "problema dos limões" e viabilizando transações que, de outra forma, não ocorreriam.

---

### 18.4.2 Precificação não linear: menus de contratos

Uma forma de lidar com a seleção adversa é oferecer um **menu de contratos** desenhado para que cada tipo de agente selecione voluntariamente o contrato destinado a ele. Esse é o princípio da **autosseleção** (self-selection) ou **triagem** (screening).

Considere um monopolista vendendo um bem a consumidores de dois tipos: alta valoração (\(\theta_H\)) e baixa valoração (\(\theta_L\)), com proporções \(\mu\) e \(1-\mu\), respectivamente. O monopolista oferece dois pacotes \((q_L, T_L)\) e \((q_H, T_H)\), onde \(q\) é a quantidade e \(T\) o pagamento total.

As restrições de autosseleção (incentivo-compatibilidade) são:

\[
\theta_H v(q_H) - T_H \geq \theta_H v(q_L) - T_L \quad \text{(RCI do tipo alto)}
\]

\[
\theta_L v(q_L) - T_L \geq \theta_L v(q_H) - T_H \quad \text{(RCI do tipo baixo)}
\]

E as restrições de participação:

\[
\theta_i v(q_i) - T_i \geq 0 \quad \text{para } i \in \{L, H\}
\]

A solução ótima envolve: (i) o tipo baixo recebe quantidade **distorcida para baixo** (\(q_L < q_L^*\)); (ii) o tipo alto recebe a quantidade eficiente (\(q_H = q_H^*\)); (iii) o tipo alto obtém uma **renda informacional** positiva; (iv) o tipo baixo fica na fronteira de participação (renda zero).

### 18.4.3 Seleção adversa em seguros: o modelo de Rothschild-Stiglitz

Rothschild e Stiglitz (1976) analisaram o mercado de seguros competitivo com dois tipos de consumidores: alto risco (\(p_H\)) e baixo risco (\(p_L\)), com \(p_H > p_L\). As seguradoras não observam o tipo de cada consumidor.

Um contrato de seguro é representado por um par \((\alpha_1, \alpha_2)\), onde \(\alpha_1\) é o prêmio pago e \(\alpha_2\) é a indenização líquida em caso de sinistro.

!!! abstract "Resultado de Rothschild-Stiglitz"
    Em equilíbrio competitivo com informação assimétrica: (a) não existe equilíbrio agregador (pooling) — um contrato único para ambos os tipos é sempre destruído por um contrato desviante; (b) um equilíbrio separador existe somente se a proporção de tipos de alto risco for suficientemente grande; (c) no equilíbrio separador, o tipo de alto risco recebe seguro completo (atuarialmente justo para ele) e o tipo de baixo risco recebe seguro parcial (distorção para baixo).

!!! proof "Demonstração: Condição de Incentivo-Compatibilidade no Modelo de Rothschild-Stiglitz"
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

    **Passo 4.** Para que o tipo \(L\) não desvie para \(C_H\), precisamos de:

    \[
    (1 - p_L) \, U(W - p_L \beta_L) + p_L \, U(W - d + \beta_L - p_L \beta_L) \geq U(W - p_H d)
    \]

    **Passo 5.** Combinando as duas condições, a RCI do tipo \(H\) impõe um **limite superior** sobre a cobertura \(\beta_L\) do tipo de baixo risco. Se \(\beta_L = d\) (seguro completo para L), então o lado direito da RCI de \(H\) seria \(U(W - p_L d) > U(W - p_H d)\) (pois \(p_L < p_H\)), violando a restrição. Portanto, em equilíbrio separador, necessariamente:

    \[
    \beta_L < d
    \]

    O tipo de baixo risco recebe **seguro parcial** — uma distorção que é o "custo" da assimetria de informação. A cobertura \(\beta_L^*\) é determinada pela RCI do tipo \(H\) com igualdade (binding), garantindo que o tipo de alto risco seja indiferente entre os dois contratos. \(\blacksquare\)

---

## Box Brasil: Seleção Adversa nos Planos de Saúde

!!! example "Antisseleção e regulação por faixas etárias (ANS)"
    O mercado brasileiro de saúde suplementar, com cerca de 51 milhões de beneficiários, é um caso emblemático de seleção adversa. Pessoas mais doentes (alto risco) têm maior incentivo para contratar planos de saúde, enquanto jovens saudáveis (baixo risco) tendem a considerar os prêmios elevados e permanecer sem plano — o clássico mecanismo de antisseleção.

    **Regulação por faixas etárias:**

    A ANS (Agência Nacional de Saúde Suplementar) estabelece 10 faixas etárias para os reajustes dos planos individuais e familiares: 0–18, 19–23, 24–28, 29–33, 34–38, 39–43, 44–48, 49–53, 54–58 e 59 anos ou mais. A regra-chave: a mensalidade da última faixa não pode ser superior a **6 vezes** a mensalidade da primeira.

    Essa regulação funciona como um **subsídio cruzado** entre faixas etárias: jovens pagam mais do que seu risco atuarial justificaria, subsidiando os idosos, cujo risco é maior. O objetivo é evitar a espiral de seleção adversa: se os preços refletissem fielmente o risco de cada faixa, as mensalidades para idosos seriam proibitivas, expulsando-os do mercado e elevando o risco médio do pool restante.

    **Reajuste 2025:** A ANS limitou o reajuste dos planos individuais e familiares a **6,06%**, abaixo da inflação médica. Para planos coletivos, os reajustes são negociados livremente e costumam ser superiores.

    **Conexão com a teoria:**

    O modelo de Rothschild-Stiglitz (seção 18.4.3) prevê que, sem intervenção, o equilíbrio separador oferece seguro parcial ao tipo de baixo risco — exatamente o que se observa nos planos com coparticipação e franquias maiores voltados para jovens. A regulação da ANS, ao limitar a diferenciação por faixa etária, impõe um equilíbrio parcialmente agregador (pooling), usando a lei para evitar o unraveling do mercado.

    *Fonte: ANS, Dados Gerais do Setor, 2025; Resolução Normativa ANS n.º 63/2003.*

---

## 18.5 Sinalização no Mercado

!!! definition "Sinalização (Signaling)"
    Mecanismo pelo qual a parte informada (agente) toma uma **ação custosa e observável** para transmitir credibilmente sua informação privada à parte desinformada (principal). Para que o sinal seja efetivo, ele deve ser **diferencialmente custoso** entre os tipos.

### 18.5.1 Educação como sinal (Spence, 1973)

Michael Spence propôs que a educação pode funcionar como sinal de produtividade, mesmo que não aumente diretamente as habilidades do trabalhador. A ideia central é que adquirir educação é **menos custoso** para trabalhadores de alta produtividade.

Considere dois tipos de trabalhadores:

- **Alta produtividade** (\(\theta_H\)): produção \(\theta_H\), custo de educação \(c_H(s) = s / \theta_H\)
- **Baixa produtividade** (\(\theta_L\)): produção \(\theta_L\), custo de educação \(c_L(s) = s / \theta_L\)

com \(\theta_H > \theta_L\), de modo que \(c_H(s) < c_L(s)\) para todo \(s > 0\): a educação custa menos ao trabalhador mais produtivo (hipótese de **single-crossing**).

<figure>
  <iframe src="../graficos/cap18/sinalizacao.html" width="100%" height="620" frameborder="0" style="border:1px solid #eee; border-radius:8px;"></iframe>
  <figcaption><strong>Figura 18.3</strong> — Sinalização por educação (Spence, 1973). Visualize as curvas de custo de educação para ambos os tipos, o salário de equilíbrio e a condição de single-crossing. A região azul indica o intervalo de níveis de educação que sustentam um equilíbrio separador.</figcaption>
</figure>

### 18.5.2 Equilíbrio separador vs. equilíbrio agregador

!!! definition "Equilíbrio Separador e Agregador"
    - **Equilíbrio separador**: os diferentes tipos escolhem sinais distintos, permitindo que a parte desinformada identifique cada tipo. Cada tipo recebe um salário igual à sua produtividade.
    - **Equilíbrio agregador (pooling)**: todos os tipos escolhem o mesmo nível de sinal, e a parte desinformada não consegue distingui-los. O salário ofertado é a produtividade média.

No **equilíbrio separador**, o tipo \(H\) escolhe nível de educação \(s^*\) e o tipo \(L\) escolhe \(s = 0\). O nível \(s^*\) deve satisfazer simultaneamente:

\[
\theta_H - \frac{s^*}{\theta_H} \geq \theta_L \quad \text{(tipo H prefere sinalizar)}
\]

\[
\theta_L \geq \theta_H - \frac{s^*}{\theta_L} \quad \text{(tipo L prefere não sinalizar)}
\]

Resolvendo:

\[
\theta_L(\theta_H - \theta_L) \leq s^* \leq \theta_H(\theta_H - \theta_L)
\]

O equilíbrio separador de menor custo (equilíbrio de Riley ou least-cost separating) ocorre em \(s^* = \theta_L(\theta_H - \theta_L)\).

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Um diploma pode funcionar como um "selo de qualidade" do trabalhador, mesmo que a faculdade em si não ensine nada diretamente útil para o cargo.

    **Pense assim:** No Brasil, muitas empresas exigem diploma superior para vagas que não precisam de conhecimento acadêmico. Por que? Porque concluir uma graduação sinaliza disciplina, persistência e capacidade de aprender — qualidades que o empregador não consegue medir numa entrevista. Quem tem alta produtividade acha a faculdade mais fácil, e por isso o sinal é crível.

    **Por que isso importa:** O modelo de Spence levanta uma provocação importante para a política educacional: parte do retorno à educação pode ser sinalização pura, não ganho de produtividade real — o que muda completamente a análise de custo-benefício de expandir o ensino superior.

!!! note "Eficiência da Sinalização"
    No modelo de Spence, a sinalização envolve um **custo social** real: recursos são gastos em educação apenas para sinalizar tipo, sem ganho de produtividade. O equilíbrio separador pode ser Pareto-inferior ao equilíbrio agregador se a perda de bem-estar do sinal superar o ganho informacional. Esse resultado ilustra que a revelação de informação nem sempre é socialmente desejável.

---

<figure>
  <iframe src="../graficos/cap18/seguros-rs.html" width="100%" height="660" frameborder="0" style="border:1px solid #eee; border-radius:8px;"></iframe>
  <figcaption><strong>Figura 18.4</strong> — Modelo de seguros de Rothschild-Stiglitz. No espaço de riqueza contingente, observe o equilíbrio separador: o tipo de alto risco recebe seguro completo (sobre a linha de 45°) enquanto o tipo de baixo risco recebe seguro parcial. As curvas de indiferença refletem as diferentes probabilidades de sinistro.</figcaption>
</figure>

## 18.6 Screening (Triagem pelo Principal)

Enquanto a sinalização é iniciativa da parte informada, a **triagem** (screening) é desenhada pela parte desinformada para extrair informação privada da parte informada.

!!! definition "Triagem (Screening)"
    Mecanismo pelo qual a parte desinformada (principal) oferece um **menu de opções** desenhado de forma que cada tipo de agente revele voluntariamente sua informação privada ao escolher a opção mais adequada ao seu tipo.

Exemplos práticos:

| Contexto | Mecanismo de Triagem |
|----------|---------------------|
| Seguros | Menu de apólices com diferentes combinações de prêmio/franquia |
| Mercado de trabalho | Oferta de contratos com diferentes combinações salário fixo/bônus |
| Companhias aéreas | Classes tarifárias com diferentes restrições (antecedência, reembolso) |
| Telecomunicações | Planos com diferentes volumes de dados e preços por unidade |
| Educação | Programas com diferentes graus de seletividade e rigor |

A diferença fundamental entre sinalização e triagem é quem toma a iniciativa:

- **Sinalização**: a parte informada age primeiro, escolhendo um sinal custoso.
- **Triagem**: a parte desinformada age primeiro, desenhando um menu de contratos.

Em equilíbrio, os dois mecanismos podem levar a alocações equivalentes (como nos modelos de Rothschild-Stiglitz), mas o timing e a distribuição de excedentes podem diferir.

---

## 18.7 Leilões

Leilões são mecanismos de venda particularmente interessantes sob informação assimétrica, pois cada licitante possui informação privada sobre sua valoração do objeto.

!!! definition "Leilão"
    Mecanismo de mercado para alocação de bens em que os participantes submetem lances, e o bem é alocado (e o preço determinado) de acordo com regras predefinidas. O desenho de leilões é uma aplicação central da teoria de mecanismos.

### Tipos de leilões

| Tipo de Leilão | Descrição | Lance | Preço pago |
|----------------|-----------|-------|------------|
| **Inglês** (ascendente) | Preço sobe até restar um único licitante | Aberto, sequencial | Segundo maior valor |
| **Holandês** (descendente) | Preço cai até alguém aceitar | Fechado (estrategicamente) | Valor do lance aceito |
| **Primeiro preço** (selado) | Lances simultâneos em envelope fechado | Fechado, simultâneo | Maior lance |
| **Segundo preço** (Vickrey) | Lances simultâneos; vencedor paga o segundo maior lance | Fechado, simultâneo | Segundo maior lance |

### O leilão de segundo preço (Vickrey)

No leilão de segundo preço, cada licitante tem uma **estratégia dominante**: ofertar sua verdadeira valoração.

!!! abstract "Proposição: Estratégia Dominante no Leilão de Vickrey"
    No leilão de segundo preço com valores privados independentes, é estratégia fracamente dominante para cada licitante ofertar \(b_i = v_i\) (lance igual à valoração verdadeira).

**Intuição da prova**: Se \(b_i > v_i\), o licitante pode vencer e pagar mais que sua valoração; se \(b_i < v_i\), pode perder uma oportunidade lucrativa. Em ambos os casos, desviar de \(b_i = v_i\) não melhora o payoff esperado.

### O Teorema da Equivalência de Receita

!!! abstract "Teorema da Equivalência de Receita (Revenue Equivalence Theorem)"
    Sob as seguintes condições: (i) valores privados independentes; (ii) licitantes neutros ao risco; (iii) distribuição de valorações simétrica e contínua; (iv) o licitante com valoração mínima obtém excedente zero — **todos os quatro formatos de leilão geram a mesma receita esperada para o vendedor**.

Esse resultado notável, devido a Vickrey (1961) e Myerson (1981), implica que, sob as condições do teorema, a escolha do formato de leilão é irrelevante para a receita. As diferenças surgem quando as condições são violadas — por exemplo, com aversão ao risco dos licitantes (favorece o primeiro preço) ou com valores correlacionados (favorece o inglês).

---

## Box Brasil: Leilões de Concessão no Brasil

!!! example "Do pré-sal ao 5G: informação assimétrica e desenho de leilões"
    O Brasil tem sido um laboratório de formatos de leilão em setores estratégicos. Dois casos ilustram como o desenho do mecanismo afeta os resultados em presença de informação assimétrica.

    **Leilões do pré-sal (ANP):**

    Os blocos exploratórios do pré-sal são leiloados pela Agência Nacional do Petróleo (ANP) no formato de **partilha da produção**: o consórcio vencedor é aquele que oferece a maior parcela do "óleo-excedente" ao governo. Esse formato enfrenta o problema da **maldição do vencedor** (*winner's curse*): como o valor do bloco é parcialmente comum (depende das reservas geológicas), o licitante que vence tende a ser aquele que **superestimou** o valor do recurso. Licitantes sofisticados, como a Petrobras, ajustam seus lances para baixo — exatamente como prevê a teoria (seção 18.7). Em 2025, o 3.º Ciclo de Oferta Permanente de Partilha arrecadou R$ 452 milhões em bônus de assinatura, com ágio médio de 91%.

    **Leilão do espectro 5G (Anatel, 2021):**

    O leilão das faixas de frequência para a tecnologia 5G utilizou formato de **lance selado de primeiro preço** com preço de reserva e arrecadou **R$ 4,8 bilhões**. Cada operadora possuía informação privada sobre o valor estratégico de cada faixa para sua rede. O Teorema da Equivalência de Receita sugere que, sob condições ideais, o formato não deveria importar — mas as assimetrias de informação entre incumbentes (Vivo, Claro, TIM) e entrantes justificaram a escolha de regras específicas, como lotes exclusivos para novos competidores.

    **Conexão com a teoria:**

    Esses dois casos ilustram como o formato do leilão deve ser adaptado ao tipo de informação assimétrica. Quando o valor é **comum** (pré-sal), o leilão inglês tende a gerar maior receita (reduz a maldição do vencedor). Quando o valor é **privado** (espectro), formatos de lance selado podem ser mais adequados. A teoria de Vickrey e Myerson (seção 18.7) fornece as ferramentas para esse desenho institucional.

    *Fonte: ANP, Boletim de Rodadas de Licitações, 2025; Anatel, Resultado do Leilão 5G, 2021.*

---

## 18.8 Taxonomia dos Problemas de Informação Assimétrica

A tabela a seguir resume os principais tipos de problemas de informação assimétrica, suas características e os mecanismos de resposta.

| Tipo de Assimetria | Timing | O que é oculto | Exemplos | Soluções de Mercado |
|---|---|---|---|---|
| **Risco moral** | Pós-contratual | Ação do agente | Seguro e prevenção; empregador e esforço do empregado; credor e comportamento do devedor | Contratos de incentivo, monitoramento, franquias, bônus por desempenho |
| **Seleção adversa** | Pré-contratual | Tipo/característica do agente | Mercado de carros usados; seguros (risco do segurado); crédito (qualidade do tomador) | Menu de contratos, triagem, sinalização, garantias, certificação |
| **Sinalização** | Pré-contratual | Tipo do agente (revelado pela ação) | Educação e produtividade; garantias e qualidade; dividendos e lucratividade | Ações custosas e observáveis com custo diferencial entre tipos |
| **Triagem (screening)** | Pré-contratual | Tipo do agente (revelado pela escolha) | Classes tarifárias; menus de planos de saúde; versões de software | Menus autosseletivos, discriminação de preços de 2.º grau |
| **Leilões** | Pré-contratual | Valoração dos licitantes | Leilões de arte, espectro, títulos públicos, concessões | Formatos de leilão (Vickrey, inglês, etc.), preço de reserva |

---

## Box Brasil: Crédito Consignado e Seleção Adversa no Brasil

!!! example "Box Brasil: Crédito Consignado e Seleção Adversa"
    O **crédito consignado** — modalidade em que as parcelas são descontadas diretamente da folha de pagamento ou do benefício previdenciário — é um exemplo notável de como um desenho contratual pode reduzir drasticamente os problemas de informação assimétrica no mercado de crédito.

    **O problema da seleção adversa no crédito**: No mercado de crédito pessoal convencional, o banco não observa perfeitamente o risco de inadimplência do tomador. Como resultado, cobra taxas de juros que refletem o risco médio da carteira. Tomadores de baixo risco (bons pagadores) consideram a taxa elevada e deixam de tomar empréstimos, enquanto tomadores de alto risco (potenciais inadimplentes) aceitam as condições — um mecanismo clássico de seleção adversa à la Akerlof.

    **O mecanismo do consignado**: A vinculação do pagamento à folha de pagamento atua sobre dois canais:

    1. **Redução do risco moral**: o tomador não pode escolher deixar de pagar, pois o desconto é automático. Isso elimina grande parte do problema de ação oculta pós-contratual.
    2. **Redução da seleção adversa**: como o risco de crédito é drasticamente reduzido pelo mecanismo de desconto em folha, a diferença entre bons e maus pagadores torna-se muito menos relevante. O banco consegue efetivamente "observar" a capacidade de pagamento.

    **Evidência empírica**: Dados do Banco Central do Brasil documentam diferenças substanciais de taxas de juros entre as modalidades. Em 2025, a taxa do consignado para servidores públicos situava-se entre 1,3% e 1,8% ao mês (cerca de 17–24% a.a.), enquanto a taxa do crédito pessoal não consignado superava 80% ao ano — uma diferença que reflete em grande parte a redução da assimetria de informação.

    **Expansão e impacto**: Regulamentado pela Lei n.º 10.820/2003, o crédito consignado expandiu-se rapidamente, atingindo saldo superior a R$ 600 bilhões. A modalidade foi estendida a aposentados e pensionistas do INSS, trabalhadores do setor privado com carteira assinada e beneficiários do Bolsa Família e BPC (a partir de 2023).

    **Limitações**: O consignado não elimina todos os problemas. A margem consignável (até 35% da renda para empréstimos + 5% para cartão consignado) pode levar ao superendividamento. Além disso, práticas predatórias de intermediários e a concessão a públicos vulneráveis (como idosos com baixa literacia financeira) levantam questões regulatórias importantes.

    Este caso ilustra como o desenho institucional e contratual pode mitigar problemas de informação assimétrica, com efeitos quantitativamente expressivos sobre preços e volumes de mercado.

    *Fonte: BCB, Relatório de Economia Bancária, 2024; Lei n.º 10.820/2003.*

---

## Exercícios

**Exercício 18.1.** Considere um mercado de carros usados no modelo de Akerlof. Há dois tipos de carros: bons (valor de \(R\$ 30.000\) para compradores, \(R\$ 25.000\) para vendedores) e ruins (valor de \(R\$ 15.000\) para compradores, \(R\$ 10.000\) para vendedores). Metade dos carros são bons.

(a) Calcule o preço máximo que um comprador desinformado estaria disposto a pagar.
(b) Quais tipos de carros serão transacionados?
(c) Qual seria o resultado sob informação simétrica?
(d) Proponha um mecanismo institucional para atenuar a seleção adversa nesse mercado.

**Exercício 18.2.** Um proprietário contrata um gerente cuja utilidade é \(U = \sqrt{w} - e\), onde \(w\) é o salário e \(e \in \{0, 1\}\) é o esforço. O lucro é \(\pi_H = 200\) com probabilidade \(p(e)\) e \(\pi_L = 50\) caso contrário, onde \(p(1) = 0{,}8\) e \(p(0) = 0{,}3\). A utilidade de reserva é \(\bar{U} = 5\).

(a) Escreva as restrições de participação e de incentivo para induzir \(e = 1\).
(b) Resolva para os pagamentos ótimos \(w_H^*\) e \(w_L^*\).
(c) Compare o custo esperado do contrato com o first-best (em que o esforço é observável).

**Exercício 18.3.** No modelo de Spence, há dois tipos de trabalhadores. O tipo H tem produtividade \(\theta_H = 100\) e custo de educação \(c_H(s) = s/2\). O tipo L tem produtividade \(\theta_L = 50\) e custo de educação \(c_L(s) = s\).

(a) Determine o intervalo de níveis de educação \(s^*\) que sustentam um equilíbrio separador.
(b) Qual é o equilíbrio separador de menor custo?
(c) Existe um equilíbrio agregador estável neste modelo? Justifique.
(d) Discuta se a sinalização por educação é socialmente eficiente neste contexto.

**Exercício 18.4.** Em um leilão de segundo preço com três licitantes cujas valorações são i.i.d. com distribuição uniforme em \([0, 100]\):

(a) Qual é a estratégia ótima de cada licitante?
(b) Calcule a receita esperada do vendedor.
(c) Usando o Teorema da Equivalência de Receita, qual seria a receita esperada em um leilão de primeiro preço?
(d) No leilão de primeiro preço, qual é a estratégia de equilíbrio simétrico de cada licitante?

**Exercício 18.5.** Uma seguradora opera num mercado com dois tipos de consumidores. O tipo A tem probabilidade de sinistro \(p_A = 0{,}1\) e o tipo B tem \(p_B = 0{,}4\). Ambos têm riqueza \(W = 100\) e perda potencial \(d = 80\). A proporção de tipo A é \(60\%\). A utilidade é \(U(W) = \ln(W)\).

(a) Calcule os contratos de seguro completo atuarialmente justos para cada tipo.
(b) Mostre que um contrato agregador (pooling) com seguro completo à taxa média não é um equilíbrio.
(c) No equilíbrio separador, o tipo B recebe seguro completo. Escreva a condição de incentivo-compatibilidade que determina a cobertura máxima para o tipo A.
(d) Discuta qualitativamente como a proporção de tipos afeta a existência do equilíbrio separador.

---

## Vem, ANPEC!

??? question "ANPEC 2017 — Questão 11"
    Com relação aos problemas de assimetria de informação, indique quais entre as afirmativas abaixo estão corretas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Seleção adversa diz respeito a uma ação não observável. |
    | 1    | Problemas morais dizem respeito a características não observáveis. |
    | 2    | Quando empresas de seguros reúnem informações sobre demandantes de seguros, diz-se que elas estão fazendo screening. |
    | 3    | Certificações de produtos são uma forma de reduzir o "problema dos limões" decorrente de seleção adversa. |
    | 4    | Seguros com cobertura universal obrigatória podem ser uma forma de prevenir seleção adversa. |

    ??? success "Gabarito"
        **Respostas: 00111**

        **Justificativa por item:**

        - **Item 0 — F:** Seleção adversa diz respeito a **características** (tipos) não observáveis, não a ações. Ações não observáveis configuram **risco moral**. A seleção adversa é pré-contratual (tipos ocultos); o risco moral é pós-contratual (ações ocultas).
        - **Item 1 — F:** "Problemas morais" (risco moral / *moral hazard*) dizem respeito a **ações** não observáveis, não a características. O item inverte as definições: quem se refere a características não observáveis é a **seleção adversa**.
        - **Item 2 — V:** Correto. *Screening* (triagem) é o mecanismo pelo qual a parte desinformada (seguradoras) coleta informações sobre a parte informada (segurados) para classificá-los por risco — exatamente como descrito na seção 18.6.
        - **Item 3 — V:** Correto. Certificações de produtos (como laudos de vistoria, selos de qualidade, garantias de fábrica) reduzem a assimetria de informação entre vendedores e compradores, atenuando o problema dos limões de Akerlof.
        - **Item 4 — V:** Correto. Se o seguro é **universal e obrigatório**, não há autosseleção: todos os tipos (alto e baixo risco) participam do pool. Isso elimina o mecanismo de seleção adversa, no qual os tipos de baixo risco saem do mercado. O SUS brasileiro é um exemplo de cobertura universal que evita a antisseleção.

??? question "ANPEC 2025 — Questão 04"
    Com relação à teoria dos leilões, julgue as afirmativas abaixo como verdadeiras ou falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | O leilão holandês e o leilão de Vickrey geram resultados Pareto-eficientes. |
    | 1    | O leilão inglês com preço de reserva igual a zero não gera resultados eficientes de Pareto. |
    | 2    | Os resultados do leilão de lance fechado são Pareto-eficientes, mesmo que as crenças de cada participante acerca das avaliações dos demais estejam incorretas. |
    | 3    | Declarar o verdadeiro valor é a estratégia ótima de cada participante no leilão de Vickrey. |
    | 4    | Em um leilão de valor comum, em que os participantes têm estimativas diferentes deste valor, a estratégia ótima é oferecer um lance menor do que o valor estimado, que deverá ser tão mais baixo quanto maior for o número de participantes. |

    ??? success "Gabarito"
        **Respostas: 10011**

        **Justificativa por item:**

        - **Item 0 — V:** Tanto o leilão holandês (estrategicamente equivalente ao primeiro preço selado) quanto o leilão de Vickrey (segundo preço) alocam o bem ao licitante com maior valoração em equilíbrio, gerando resultados Pareto-eficientes no modelo padrão com valores privados independentes.
        - **Item 1 — F:** O leilão inglês (ascendente) com preço de reserva zero **gera** resultados eficientes. O licitante com maior valoração vence e paga um preço igual à segunda maior valoração. A afirmação de que não é eficiente é falsa.
        - **Item 2 — F:** No leilão de **primeiro preço** selado, a estratégia ótima de *bid shading* (reduzir o lance abaixo da valoração) depende das crenças sobre as valorações dos demais. Se essas crenças estiverem incorretas, os lances serão subótimos e o licitante de maior valoração pode não vencer — comprometendo a eficiência. Diferentemente do Vickrey, o lance fechado de primeiro preço **não** é robusto a crenças incorretas.
        - **Item 3 — V:** Correto. No leilão de Vickrey, declarar a verdadeira valoração (\(b_i = v_i\)) é estratégia fracamente dominante, independentemente das ações dos demais licitantes — conforme demonstrado na seção 18.7.
        - **Item 4 — V:** Correto. Em leilões de **valor comum**, o vencedor tende a ser quem mais superestimou o valor — a chamada **maldição do vencedor** (*winner's curse*). Licitantes racionais ajustam seus lances para baixo. Quanto maior o número de participantes, mais extrema é a estimativa do vencedor e maior deve ser o desconto — exatamente a correção para a maldição do vencedor.

---

## Apêndice: A Pesquisa em Ação

??? abstract "Chiappori, P.-A.; Salanié, B. (2000). Testing for Asymmetric Information in Insurance Markets. *Journal of Political Economy*, 108(1), 56–78."
    **Pergunta central:** A assimetria de informação é realmente importante nos mercados de seguros, ou é apenas uma elegância teórica? Se seleção adversa ou risco moral estiverem presentes, devemos observar uma **correlação positiva** entre a cobertura do seguro escolhida e a ocorrência de sinistros: pessoas que escolhem mais cobertura deveriam ter mais acidentes (seja porque são mais arriscadas, seja porque se protegem menos). Mas essa correlação existe nos dados?

    **Método:** Chiappori e Salanié desenvolveram um teste empírico elegante e geral. Usando dados detalhados de seguros de automóveis na França (jovens motoristas iniciantes), compararam a cobertura escolhida com a frequência de acidentes nos anos subsequentes, controlando por todas as variáveis observáveis que as seguradoras usam para precificar (idade, sexo, localização, tipo de veículo). Se, após esses controles, a correlação cobertura-sinistro for positiva, há evidência de informação assimétrica residual.

    **Resultado principal:** Surpreendentemente, os autores **não encontraram** correlação positiva significativa entre cobertura e sinistros para a amostra de jovens motoristas franceses. Isso sugere que as seguradoras já classificam os riscos de forma eficiente usando variáveis observáveis, e que a informação assimétrica residual pode ser pequena — pelo menos nesse mercado específico. O resultado gerou um amplo debate e motivou dezenas de estudos subsequentes em diferentes mercados.

    **Por que isso importa:** O teste de Chiappori-Salanié tornou-se o padrão metodológico para avaliar empiricamente a presença de informação assimétrica. No Brasil, onde o mercado de seguros de automóveis é expressivo (prêmios de R$ 45 bilhões em 2024, segundo a Susep) e a regulação é intensa, a aplicação desse teste ajudaria a avaliar se as diferenças de preço entre perfis refletem informação assimétrica ou apenas classificação de risco eficiente.

    **Relevância para o capítulo:** O paper testa diretamente as previsões do modelo de Rothschild-Stiglitz (seção 18.4.3): se há seleção adversa, tipos de alto risco compram mais cobertura. A ausência de correlação sugere que os mecanismos de triagem das seguradoras (seção 18.6) — menus de franquias, bônus por ausência de sinistros, inspeção veicular — podem ser suficientemente eficazes para resolver o problema informacional.

??? abstract "Matoso, R.; Rezende, M. (2014). Asymmetric Information in Oil and Gas Lease Auctions with a National Company. *International Journal of Industrial Organization*, 33, 72–82."
    **Pergunta central:** A Petrobras, como empresa nacional com décadas de experiência exploratória, possui vantagem informacional sobre concorrentes internacionais nos leilões de blocos de petróleo e gás? Se sim, como essa assimetria se manifesta no comportamento de lances e nos resultados dos leilões?

    **Método:** Os autores utilizaram dados dos leilões de concessão da ANP (Agência Nacional do Petróleo) para testar as previsões de modelos de leilões com informação assimétrica (Hendricks e Porter, 1988). A identificação explora o fato de que a Petrobras tinha acesso privilegiado a dados geológicos e sísmicos, especialmente em áreas adjacentes a campos já explorados (os chamados *drainage leases*). Compararam o comportamento de lances da Petrobras versus concorrentes estrangeiros em diferentes tipos de blocos.

    **Resultado principal:** A Petrobras apresentou comportamento consistente com vantagem informacional: (i) participou mais frequentemente de leilões para blocos que se revelaram mais lucrativos; (ii) ofertou lances maiores para blocos de maior valor; (iii) competiu mais agressivamente por blocos re-ofertados após não receberem lances na primeira rodada. Empresas estrangeiras, por sua vez, enfrentavam maior incerteza e participavam menos de blocos próximos a áreas já exploradas pela Petrobras.

    **Por que isso importa:** O resultado tem implicações diretas para o desenho dos leilões do pré-sal. Se a empresa nacional tem vantagem informacional, o formato do leilão pode afetar a eficiência e a receita do governo de formas que o Teorema da Equivalência de Receita não prevê (pois uma de suas condições — simetria dos licitantes — é violada). Isso justifica regras como a participação obrigatória da Petrobras como operadora em certos blocos do pré-sal.

    **Relevância para o capítulo:** O paper é uma aplicação empírica direta da teoria de leilões com informação assimétrica (seção 18.7). A vantagem informacional da Petrobras é análoga ao problema de *common value* com licitantes assimétricos: o licitante mais informado pode extrair renda informacional, enquanto os menos informados enfrentam uma versão ampliada da maldição do vencedor. O resultado ilustra que o desenho do leilão importa — contrariando a equivalência de receita quando suas condições são violadas.

## Referências

- Akerlof, G. A. (1970). "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *Quarterly Journal of Economics*, 84(3): 488–500.
- Chiappori, P.-A., e B. Salanié (2000). "Testing for Asymmetric Information in Insurance Markets." *Journal of Political Economy*, 108(1): 56–78.
- Holmström, B. (1979). "Moral Hazard and Observability." *Bell Journal of Economics*, 10(1): 74–91.
- Matoso, R., e M. Rezende (2014). "Asymmetric Information in Oil and Gas Lease Auctions with a National Company." *International Journal of Industrial Organization*, 33: 72–82.
- Mirrlees, J. A. (1971). "An Exploration in the Theory of Optimum Income Taxation." *Review of Economic Studies*, 38(2): 175–208.
- Myerson, R. B. (1981). "Optimal Auction Design." *Mathematics of Operations Research*, 6(1): 58–73.
- Rothschild, M., e J. Stiglitz (1976). "Equilibrium in Competitive Insurance Markets: An Essay on the Economics of Imperfect Information." *Quarterly Journal of Economics*, 90(4): 629–649.
- Spence, M. (1973). "Job Market Signaling." *Quarterly Journal of Economics*, 87(3): 355–374.
- Vickrey, W. (1961). "Counterspeculation, Auctions, and Competitive Sealed Tenders." *Journal of Finance*, 16(1): 8–37.
