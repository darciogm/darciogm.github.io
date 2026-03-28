# Externalidades: Definição e Ineficiência

## 20.1 O Vizinho Que Cria Galos às 5h da Manhã: Definição de Externalidades {#201}

!!! definition "Externalidade"
    Uma **externalidade** ocorre quando a ação de um agente econômico afeta diretamente a utilidade ou a função de produção de outro agente, sem que essa interação seja mediada pelo sistema de preços. A externalidade representa um efeito **externo ao mercado** que não é capturado nas decisões privadas dos agentes.

### Classificação das externalidades

As externalidades podem ser classificadas em duas dimensões:

**Pelo sinal (efeito sobre terceiros):**

- **Externalidade negativa**: a ação de um agente prejudica outros (poluição, congestionamento, ruído).
- **Externalidade positiva**: a ação de um agente beneficia outros (vacinação, pesquisa básica, preservação de paisagem).

**Pela esfera (produção ou consumo):**

- **Externalidade de produção**: a função de produção de uma firma é afetada pela produção de outra. Exemplo: uma fábrica que polui o rio usado por um pesqueiro.
- **Externalidade de consumo**: a utilidade de um consumidor é afetada pelo consumo de outro. Exemplo: o prazer (ou desprazer) causado pelo hábito de fumar de um vizinho.

Para além desses exemplos clássicos, externalidades permeiam a vida cotidiana de maneiras muitas vezes sutis. A poluição sonora de um aeroporto reduz o valor dos imóveis residenciais ao redor — uma externalidade negativa de produção sobre consumidores. As **externalidades de rede** constituem uma categoria especialmente relevante na economia digital: quando mais pessoas adotam uma plataforma de comunicação (WhatsApp, por exemplo), o valor do serviço para cada usuário existente aumenta. Trata-se de uma externalidade positiva de consumo, pois a decisão de adesão de um indivíduo beneficia todos os demais participantes da rede sem que haja compensação monetária por esse benefício. De modo análogo, a polinização realizada por abelhas de um apicultor beneficia lavouras vizinhas — uma externalidade positiva de produção que atravessa fronteiras de propriedade sem passar pelo sistema de preços.

Formalmente, uma externalidade de produção existe quando a função de produção da firma \(j\) depende do nível de produção da firma \(i\):

\[
q_j = f_j(L_j, K_j, q_i) \label{eq:20.1} \tag{20.1}
\]

Uma externalidade de consumo existe quando a utilidade do indivíduo \(B\) depende do consumo do indivíduo \(A\):

\[
U_B = U_B(x_B^1, x_B^2, \ldots, x_A^k)
\label{eq:20.2} \tag{20.2} \]

onde \(x_A^k\) é o consumo do bem \(k\) pelo indivíduo \(A\).

!!! note "Externalidades Pecuniárias vs. Tecnológicas"
    É importante distinguir **externalidades tecnológicas** (reais) de **externalidades pecuniárias**. Externalidades pecuniárias operam *via preços*: quando uma firma expande sua produção e reduz o preço do produto, prejudicando concorrentes. Essas não são verdadeiras externalidades no sentido econômico, pois são mediadas pelo mercado e não geram ineficiência. Apenas externalidades tecnológicas — que afetam diretamente funções de produção ou utilidade — constituem falhas de mercado.

A distinção entre externalidades pecuniárias e tecnológicas merece um exemplo concreto. Suponha que uma grande rede varejista se instale em uma cidade pequena, reduzindo os preços dos produtos e levando comerciantes locais a perder clientes. Os comerciantes são "prejudicados", mas esse efeito opera *via mercado* — trata-se de uma externalidade pecuniária que não gera ineficiência alocativa (na verdade, reflete o funcionamento competitivo do mercado). Agora compare com uma siderúrgica cujas emissões de material particulado causam doenças respiratórias nos moradores vizinhos. Este efeito *não* passa pelo sistema de preços: a saúde dos moradores é afetada diretamente, sem qualquer transação de mercado. Trata-se de uma externalidade tecnológica — e é esta, e somente esta, que constitui uma falha de mercado requerendo correção.

!!! idea "Intuição Econômica"
    **Em uma frase:** Uma externalidade existe quando o preço de um produto não reflete todo o custo (ou benefício) que sua produção ou consumo impõe à sociedade.

    **Pense assim:** Quando uma fábrica em Cubatão polui o rio, o preço do produto que ela vende não inclui o custo da água contaminada para os pescadores e moradores rio abaixo. A fábrica "exporta" parte do seu custo para a sociedade sem pagar por isso. Da mesma forma, quem se vacina protege não só a si mesmo, mas também quem está ao redor — um benefício que não entra no cálculo individual.

    **Por que isso importa:** Externalidades são a principal justificativa econômica para intervenção do governo via impostos, subsídios ou regulação — do controle de emissões ao financiamento público da vacinação.

---

## 20.2 O Preço Que Mente: Externalidades e Ineficiência Alocativa {#202}

Definido o conceito, vem a pergunta que realmente importa: por que externalidades fazem o mercado errar? A resposta é quase ofensivamente simples. O preço — aquele mecanismo que Adam Smith celebrou como o grande coordenador da economia — mente. Ou melhor, conta apenas metade da história: reflete os custos e benefícios privados da transação, mas ignora solenemente os efeitos sobre terceiros. Como resultado, as decisões tomadas individualmente por agentes racionais conduzem a um nível de produção ou consumo que difere do socialmente ótimo — o mercado "erra" sistematicamente.

É instrutivo conectar essa falha ao Primeiro Teorema do Bem-Estar. Recordemos que esse teorema garante que todo equilíbrio competitivo é Pareto-eficiente — mas sob hipóteses específicas, entre as quais a de **mercados completos**: deve existir um mercado para cada bem que afeta a utilidade ou a produção de qualquer agente. Quando uma externalidade está presente, *falta* exatamente um mercado: não existe mercado para a poluição, para o silêncio, para o ar limpo ou para a imunidade de rebanho. Essa "lacuna" no sistema de mercados viola a hipótese central do Primeiro Teorema e é a razão profunda pela qual externalidades geram ineficiência. Em termos técnicos, a externalidade cria uma **cunha** (wedge) entre os custos (ou benefícios) privados e os custos (ou benefícios) sociais. Essa cunha distorce os sinais de preço: o produtor vê um custo menor do que o verdadeiro custo social, ou o consumidor percebe um benefício menor do que o verdadeiro benefício social. A magnitude da ineficiência é proporcional ao tamanho dessa cunha.

A presença de externalidades implica que as decisões privadas dos agentes divergem do ótimo social. A razão fundamental é que os agentes não incorporam em seus cálculos os efeitos que suas ações impõem sobre terceiros (Browning & Zupan, 2014, Cap. 20, apresentam aplicações detalhadas).

### Externalidade negativa de produção

Considere uma firma que produz um bem \(q\) com custo privado \(C(q)\) e que gera poluição como subproduto. A poluição impõe um **custo externo** \(E(q)\) sobre a sociedade (danos à saúde, degradação ambiental). O **custo social** é:

\[
CS(q) = C(q) + E(q)
\label{eq:20.3} \tag{20.3} \]

A firma, buscando maximizar lucro, iguala o custo marginal privado ao preço:

\[
P = C'(q) \quad \text{(CMg privado)}
\]

Mas a condição de eficiência social requer:

\[
P = C'(q) + E'(q) \quad \text{(CMg social)}
\label{eq:20.4} \tag{20.4} \]

Como \(E'(q) > 0\), a firma produz **mais do que o ótimo social**: \(q^{priv} > q^{soc}\).

### Externalidade positiva de consumo

No caso de uma externalidade positiva — por exemplo, vacinação —, o **benefício social** excede o benefício privado:

\[
BS(q) = B^{priv}(q) + B^{ext}(q)
\]

O indivíduo consome até onde seu benefício marginal privado iguala o preço:

\[
B'^{priv}(q) = P
\label{eq:20.5} \tag{20.5} \]

Mas a eficiência requer:

\[
B'^{priv}(q) + B'^{ext}(q) = P
\label{eq:20.6} \tag{20.6} \]

Como \(B'^{ext}(q) > 0\), o consumo privado fica **aquém do ótimo social**: \(q^{priv} < q^{soc}\).

!!! tip "Regra Geral"
    - **Externalidade negativa** → produção/consumo privado **excessivo** em relação ao ótimo social.
    - **Externalidade positiva** → produção/consumo privado **insuficiente** em relação ao ótimo social.
    - Em ambos os casos, o mercado **falha** em atingir eficiência de Pareto.

!!! box-mundo "Box Mundo 20.1 — Pedágios urbanos: precificando o congestionamento em Estocolmo, Londres e Singapura"

    **Contexto:** O congestionamento viário é uma externalidade negativa clássica: cada motorista que entra em uma via já congestionada impõe custos a todos os demais usuários (tempo de viagem, consumo extra de combustível, poluição) sem pagar por esse efeito. A solução pigouviana natural é cobrar um pedágio que reflita o custo marginal externo do congestionamento — é exatamente o que três cidades pioneiras fizeram.

    **Dados:** Singapura introduziu o primeiro sistema de pedágio urbano do mundo em 1975 (Electronic Road Pricing desde 1998), cobrando tarifas que variam de SGD 0,50 a SGD 6,00 conforme o horário e o nível de congestionamento. Londres implementou a *Congestion Charge* em 2003, cobrando inicialmente £5 (atualizada para £15 em 2023) para veículos que entram na zona central. Estocolmo adotou um sistema em 2006 após um período experimental com referendo: as tarifas variam entre SEK 15 e SEK 45 conforme o horário do dia.

    **Análise:** Os resultados são consistentes nas três cidades. Em Estocolmo, o tráfego na zona central caiu 20-25% e as emissões de CO₂ na área taxada reduziram-se em 10-14% (Eliasson et al., 2009). Em Londres, o congestionamento diminuiu 30% no primeiro ano, embora parte do efeito tenha se dissipado com o tempo. O caso de Estocolmo é especialmente instrutivo: a população inicialmente opunha-se ao pedágio, mas após o período experimental, ao constatar a melhoria na qualidade do tráfego, votou pela manutenção permanente do sistema em referendo. Essa sequência — resistência inicial seguida de apoio após a experiência — ilustra como a percepção pública dos benefícios de uma taxa pigouviana pode mudar quando os cidadãos vivenciam a redução da externalidade.

    **Fonte:** Eliasson, J.; Hultkrantz, L.; Nerhagen, L.; Rosqvist, L. S. (2009). The Stockholm congestion-charging trial 2006: overview of effects. *Transportation Research Part A*, 43(3), 240-250.
