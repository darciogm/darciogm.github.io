# Capítulo 19 — Quando o Mercado Falha: Externalidades e Bens Públicos

## Introdução

Nos capítulos anteriores, demonstramos que mercados competitivos com informação completa conduzem a alocações Pareto-eficientes — o resultado central dos Teoremas do Bem-Estar. Entretanto, essa conclusão depende criticamente da hipótese de que todas as interações entre agentes econômicos ocorrem via mecanismo de preços. Quando as ações de um agente afetam diretamente o bem-estar de outros **fora do sistema de preços**, surgem as **externalidades** — e a alocação de mercado deixa de ser eficiente.

Da mesma forma, certos bens possuem características que tornam o mecanismo de mercado inadequado para sua provisão: bens **não-rivais** e **não-excludentes** — os chamados **bens públicos** — tendem a ser subprovidos pelo mercado devido ao problema do **carona** (free rider).

Este capítulo analisa essas duas importantes **falhas de mercado** e discute as principais soluções propostas pela teoria econômica: impostos pigouvianos, o Teorema de Coase, mercados de permissão de emissão, preços de Lindahl e mecanismos de revelação de preferências. Essas questões assumem importância crescente no debate sobre políticas ambientais, saúde pública e infraestrutura.

---

## 19.1 Definição de Externalidades

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

Formalmente, uma externalidade de produção existe quando a função de produção da firma \(j\) depende do nível de produção da firma \(i\):

\[
q_j = f_j(L_j, K_j, q_i)
\]

Uma externalidade de consumo existe quando a utilidade do indivíduo \(B\) depende do consumo do indivíduo \(A\):

\[
U_B = U_B(x_B^1, x_B^2, \ldots, x_A^k)
\]

onde \(x_A^k\) é o consumo do bem \(k\) pelo indivíduo \(A\).

!!! note "Externalidades Pecuniárias vs. Tecnológicas"
    É importante distinguir **externalidades tecnológicas** (reais) de **externalidades pecuniárias**. Externalidades pecuniárias operam *via preços*: quando uma firma expande sua produção e reduz o preço do produto, prejudicando concorrentes. Essas não são verdadeiras externalidades no sentido econômico, pois são mediadas pelo mercado e não geram ineficiência. Apenas externalidades tecnológicas — que afetam diretamente funções de produção ou utilidade — constituem falhas de mercado.

---

## 19.2 Externalidades e Ineficiência Alocativa

A presença de externalidades implica que as decisões privadas dos agentes divergem do ótimo social. A razão fundamental é que os agentes não incorporam em seus cálculos os efeitos que suas ações impõem sobre terceiros.

### Externalidade negativa de produção

Considere uma firma que produz um bem \(q\) com custo privado \(C(q)\) e que gera poluição como subproduto. A poluição impõe um **custo externo** \(E(q)\) sobre a sociedade (danos à saúde, degradação ambiental). O **custo social** é:

\[
CS(q) = C(q) + E(q)
\]

A firma, buscando maximizar lucro, iguala o custo marginal privado ao preço:

\[
P = C'(q) \quad \text{(CMg privado)}
\]

Mas a condição de eficiência social requer:

\[
P = C'(q) + E'(q) \quad \text{(CMg social)}
\]

Como \(E'(q) > 0\), a firma produz **mais do que o ótimo social**: \(q^{priv} > q^{soc}\).

### Externalidade positiva de consumo

No caso de uma externalidade positiva — por exemplo, vacinação —, o **benefício social** excede o benefício privado:

\[
BS(q) = B^{priv}(q) + B^{ext}(q)
\]

O indivíduo consome até onde seu benefício marginal privado iguala o preço:

\[
B'^{priv}(q) = P
\]

Mas a eficiência requer:

\[
B'^{priv}(q) + B'^{ext}(q) = P
\]

Como \(B'^{ext}(q) > 0\), o consumo privado fica **aquém do ótimo social**: \(q^{priv} < q^{soc}\).

!!! tip "Regra Geral"
    - **Externalidade negativa** → produção/consumo privado **excessivo** em relação ao ótimo social.
    - **Externalidade positiva** → produção/consumo privado **insuficiente** em relação ao ótimo social.
    - Em ambos os casos, o mercado **falha** em atingir eficiência de Pareto.

---

## 19.3 Modelo de Equilíbrio Parcial de Externalidades

Formalizemos o problema usando um modelo de equilíbrio parcial com duas firmas.

**Firma 1** (poluidora): produz \(q_1\) com custo \(C_1(q_1)\) e gera emissões \(e = e(q_1)\), com \(e' > 0\).

**Firma 2** (afetada): produz \(q_2\) com custo \(C_2(q_2, e)\), onde \(\partial C_2 / \partial e > 0\) — a poluição de 1 eleva os custos de 2.

**Equilíbrio privado**: cada firma maximiza seu próprio lucro, ignorando o efeito sobre a outra.

Firma 1:
\[
\max_{q_1} \; p_1 q_1 - C_1(q_1) \implies p_1 = C_1'(q_1)
\]

**Ótimo social**: o planejador maximiza o lucro conjunto:
\[
\max_{q_1, q_2} \; p_1 q_1 - C_1(q_1) + p_2 q_2 - C_2(q_2, e(q_1))
\]

A condição de primeira ordem para \(q_1\) é:

\[
p_1 = C_1'(q_1) + \frac{\partial C_2}{\partial e} \cdot e'(q_1)
\]

O termo \(\frac{\partial C_2}{\partial e} \cdot e'(q_1)\) é o **custo marginal externo** (CME) — o dano marginal imposto pela firma 1 sobre a firma 2. No equilíbrio privado, esse termo é ignorado, levando a \(q_1^{priv} > q_1^{soc}\).

A **perda de peso morto** (deadweight loss) associada à externalidade é a área entre as curvas de custo marginal social e custo marginal privado, entre \(q_1^{soc}\) e \(q_1^{priv}\):

\[
DWL = \int_{q_1^{soc}}^{q_1^{priv}} \left[ C_1'(q) + E'(q) - P \right] dq
\]

---

## 19.4 Soluções para Externalidades Negativas

### 19.4.1 Imposto Pigouviano

!!! definition "Imposto Pigouviano"
    Imposto por unidade de produção (ou de emissão) igual ao **custo marginal externo** avaliado no ótimo social. Nomeado em homenagem a Arthur Cecil Pigou (1920), que primeiro propôs essa correção.

O imposto \(t^*\) é definido como:

\[
t^* = E'(q^{soc}) = \left. \frac{\partial C_2}{\partial e} \cdot e'(q_1) \right|_{q_1 = q_1^{soc}}
\]

Com o imposto, a firma poluidora resolve:

\[
\max_{q_1} \; p_1 q_1 - C_1(q_1) - t^* q_1
\]

Condição de primeira ordem:

\[
p_1 = C_1'(q_1) + t^*
\]

Como \(t^* = E'(q^{soc})\), a firma internaliza o custo externo e produz \(q_1^{soc}\).

!!! proof "Demonstração: O Imposto Pigouviano Ótimo Restaura a Eficiência"
    **Objetivo**: Mostrar que um imposto \(t^*\) igual ao custo marginal externo no ótimo social induz a firma poluidora a escolher o nível de produção socialmente eficiente.

    **Configuração**: Considere uma economia com uma firma poluidora que produz \(q\) unidades de um bem ao preço \(P\). O custo privado de produção é \(C(q)\), com \(C'(q) > 0\) e \(C''(q) > 0\). A produção gera um custo externo \(E(q)\), com \(E'(q) > 0\) e \(E''(q) \geq 0\). O benefício social líquido é:

    \[
    W(q) = Pq - C(q) - E(q)
    \]

    **Passo 1 — Ótimo social.** O planejador maximiza \(W(q)\):

    \[
    \frac{dW}{dq} = P - C'(q) - E'(q) = 0
    \]

    Logo, o nível ótimo \(q^*\) satisfaz:

    \[
    P = C'(q^*) + E'(q^*) \tag{1}
    \]

    **Passo 2 — Equilíbrio privado sem imposto.** A firma maximiza \(\pi(q) = Pq - C(q)\):

    \[
    P = C'(q^{priv}) \tag{2}
    \]

    Como \(E'(q) > 0\), comparando (1) e (2), e dado que \(C''(q) > 0\), temos \(q^{priv} > q^*\). A firma produz em excesso.

    **Passo 3 — Introdução do imposto pigouviano.** Defina o imposto unitário:

    \[
    t^* = E'(q^*)
    \]

    Com o imposto, o lucro da firma é \(\pi^t(q) = Pq - C(q) - t^* q\). A condição de maximização é:

    \[
    P = C'(q^t) + t^* = C'(q^t) + E'(q^*) \tag{3}
    \]

    **Passo 4 — Comparação.** Comparando (3) com (1), ambas requerem:

    \[
    P - E'(q^*) = C'(q)
    \]

    Como \(C'(\cdot)\) é estritamente crescente (por \(C'' > 0\)), a solução é única: \(q^t = q^*\).

    **Conclusão.** O imposto \(t^* = E'(q^*)\) faz com que a firma internalize o custo marginal externo e produza exatamente o nível socialmente ótimo \(q^*\). A perda de peso morto é eliminada. \(\blacksquare\)

!!! tip "Subsídio Pigouviano"
    De forma simétrica, para externalidades positivas, o instrumento pigouviano é um **subsídio** por unidade igual ao benefício marginal externo: \(s^* = B'^{ext}(q^{soc})\). Isso eleva a quantidade produzida/consumida até o nível socialmente eficiente.

### 19.4.2 O Teorema de Coase

!!! abstract "Teorema de Coase (Coase, 1960)"
    Se os **direitos de propriedade** estão claramente definidos e os **custos de transação** são nulos, a barganha privada entre as partes levará à alocação eficiente de recursos, **independentemente** de qual parte detém o direito de propriedade. A distribuição dos direitos afeta apenas a distribuição de riqueza, não a eficiência.

Formalmente, suponha que a firma poluidora e a firma afetada podem negociar. Se a firma afetada tem o direito a um ambiente limpo, a poluidora deve compensá-la pelo dano. Se a poluidora tem o direito de poluir, a firma afetada paga para que ela reduza a produção. Em ambos os casos, a produção converge para \(q^{soc}\) onde:

\[
C'(q) + E'(q) = P
\]

**Limites do Teorema de Coase:**

1. **Custos de transação**: na prática, negociar é custoso, especialmente quando há muitas partes envolvidas.
2. **Externalidades difusas**: quando a poluição afeta milhões de pessoas, a barganha bilateral é inviável.
3. **Assimetria de informação**: as partes podem ter incentivos estratégicos para não revelar verdadeiramente seus custos e benefícios.
4. **Efeitos riqueza**: com utilidade marginal da renda decrescente, a atribuição inicial dos direitos pode afetar a alocação final.
5. **Problemas de hold-up**: investimentos específicos à relação podem gerar comportamento oportunista.

### 19.4.3 Regulação direta (command and control)

A regulação direta consiste em impor limites quantitativos de emissão ou padrões tecnológicos às firmas poluidoras. Exemplos incluem:

- Limites máximos de emissão de poluentes (ex.: padrão CONAMA para emissões veiculares);
- Obrigatoriedade de uso de tecnologia de controle (ex.: catalisadores);
- Zoneamento industrial (restrições de localização).

A principal desvantagem da regulação direta é que ela tipicamente não é **custo-efetiva**: ao impor o mesmo padrão a todas as firmas, não explora as diferenças nos custos marginais de abatimento. Firmas com custos de abatimento baixos deveriam reduzir mais emissões, e firmas com custos altos, menos — algo que um imposto ou mercado de permissões faz automaticamente.

### 19.4.4 Mercados de permissão de emissão (cap and trade)

!!! definition "Mercado de Permissões de Emissão (Cap and Trade)"
    Sistema em que o regulador fixa um **teto** (cap) total de emissões e distribui **permissões negociáveis** entre as firmas. As firmas podem comprar e vender permissões no mercado. Em equilíbrio, o preço da permissão iguala o custo marginal de abatimento entre todas as firmas, garantindo **custo-efetividade**.

Se o teto é fixado no nível socialmente ótimo de emissões \(\bar{E}\), e o mercado de permissões é competitivo, o preço de equilíbrio da permissão é exatamente igual ao imposto pigouviano ótimo:

\[
p_E = t^* = E'(q^{soc})
\]

A equivalência entre imposto e cap-and-trade sob certeza (Weitzman, 1974) é um resultado fundamental. Sob **incerteza**, porém, os instrumentos diferem: o imposto fixa o preço e deixa a quantidade flutuar; o cap fixa a quantidade e deixa o preço flutuar. A escolha ótima depende das elasticidades relativas dos custos de abatimento e dos danos marginais.

---

## 19.5 Atributos dos Bens Públicos

!!! definition "Bem Público"
    Um **bem público puro** é aquele que possui simultaneamente duas propriedades:

    1. **Não-rivalidade**: o consumo do bem por um indivíduo não reduz a quantidade disponível para outros. Formalmente, se \(G\) é a quantidade provida, cada consumidor pode consumir \(G\) integralmente: \(g_i = G\) para todo \(i\).

    2. **Não-exclusão**: não é possível (ou é excessivamente custoso) impedir indivíduos de consumir o bem, mesmo que não paguem por ele.

### Classificação de bens

A combinação dessas duas propriedades gera uma classificação de bens em quatro categorias:

| | **Excludente** | **Não-excludente** |
|---|---|---|
| **Rival** | **Bem privado** (alimento, vestuário, combustível) | **Recurso comum** (cardume no oceano, pasto comunitário, água de aquífero) |
| **Não-rival** | **Bem de clube** (TV a cabo, pedágio, parque com entrada paga) | **Bem público puro** (defesa nacional, iluminação pública, ar limpo) |

A tabela abaixo apresenta exemplos brasileiros para cada categoria:

| Categoria | Propriedades | Exemplos Brasileiros |
|---|---|---|
| **Bem privado** | Rival e excludente | Pão de queijo, gasolina, corte de cabelo, ingresso de cinema |
| **Bem público puro** | Não-rival e não-excludente | Defesa nacional (Forças Armadas), iluminação de via pública, sinal de rádio aberto, conhecimento científico básico |
| **Bem de clube** | Não-rival (até congestionamento) e excludente | Netflix, rodovia com pedágio (Via Dutra, Rodovia dos Bandeirantes), clube recreativo, sistema de streaming de futebol |
| **Recurso comum** | Rival e não-excludente | Peixes no rio Amazonas, pastagem no semiárido, água do Aquífero Guarani, vagas de estacionamento público |

!!! note "Bens Públicos Locais e Globais"
    A provisão de bens públicos pode ter escala local (iluminação de uma rua), regional (defesa costeira), nacional (sistema judiciário) ou global (estabilidade climática, erradicação de doenças). A escala determina qual nível de governo (ou cooperação internacional) é mais adequado para a provisão.

---

## 19.6 Bens Públicos e Alocação de Recursos

### Condição de eficiência (Samuelson, 1954)

Para um bem privado, a eficiência requer que todos os consumidores se deparem com o mesmo preço, que iguala o custo marginal. Para um bem público, a condição de eficiência é fundamentalmente diferente.

!!! abstract "Condição de Samuelson para Bens Públicos"
    A provisão eficiente de um bem público requer que a **soma das taxas marginais de substituição** de todos os indivíduos iguale a **taxa marginal de transformação** (custo marginal de produção):

    \[
    \sum_{i=1}^{N} TMS_i^{G,x} = TMT^{G,x}
    \]

    onde \(TMS_i^{G,x} = \frac{\partial U_i / \partial G}{\partial U_i / \partial x_i}\) é a taxa marginal de substituição entre o bem público \(G\) e o bem privado \(x\) para o indivíduo \(i\).

**Intuição**: Como o bem público é não-rival, todos consomem a mesma quantidade \(G\). O benefício social marginal de uma unidade adicional é a soma dos benefícios marginais de todos os indivíduos. Eficiência requer que esse benefício agregado iguale o custo marginal.

Diferentemente, para um bem privado, a eficiência requer \(TMS_i = TMT\) para cada \(i\) individualmente (não a soma).

### Subprovisão pelo mercado

O mercado tende a **subprover** bens públicos porque cada indivíduo, ao decidir sua contribuição voluntária, considera apenas **seu** benefício marginal, ignorando o benefício que gera para os demais.

Considere \(N\) indivíduos idênticos com utilidade \(U_i = u(x_i) + v(G)\), onde \(G = \sum g_i\) é a contribuição total ao bem público. Cada indivíduo escolhe \(g_i\) para maximizar:

\[
u(W_i - g_i) + v\!\left(g_i + \sum_{j \neq i} g_j\right)
\]

A condição de primeira ordem é:

\[
u'(W_i - g_i) = v'(G) \implies TMS_i = 1
\]

Mas a condição de eficiência requer \(\sum TMS_i = 1\), ou seja, \(TMS_i = 1/N\) para indivíduos idênticos. Como \(1 > 1/N\), cada indivíduo demanda benefício marginal excessivamente alto, resultando em \(G^{priv} < G^*\): o bem público é **subprovido**.

---

## 19.7 Preços de Lindahl

!!! definition "Equilíbrio de Lindahl"
    Mecanismo hipotético de provisão de bens públicos em que cada indivíduo paga um **preço personalizado** (\(\tau_i\)) pelo bem público, igual à sua taxa marginal de substituição. A soma dos preços de Lindahl iguala o custo marginal de produção:

    \[
    \sum_{i=1}^{N} \tau_i = CMg(G)
    \]

    Cada indivíduo, enfrentando seu preço personalizado, demanda a mesma quantidade \(G^*\), e a condição de Samuelson é satisfeita.

O equilíbrio de Lindahl é eficiente por construção, mas enfrenta um problema prático fundamental: para implementá-lo, o governo (ou o mecanismo) precisa conhecer as preferências individuais de cada cidadão — informação que os cidadãos têm incentivo para **não revelar truthfully**, conforme discutiremos na seção sobre o problema do carona.

---

## 19.8 O Problema do Carona (Free Rider)

!!! definition "Problema do Carona"
    Ocorre quando indivíduos racionais subinvestem na provisão de um bem público (ou na revelação de suas preferências) porque esperam se beneficiar das contribuições alheias sem pagar por elas. O bem público é não-excludente: mesmo quem não paga pode consumir.

No contexto do equilíbrio de Lindahl, cada indivíduo tem incentivo para subreportar sua valoração pelo bem público, pagando um preço de Lindahl menor e deixando que outros financiem a provisão. Formalmente, se o preço de Lindahl é determinado pela valoração reportada \(\hat{\tau}_i\):

\[
\hat{\tau}_i < \tau_i^{verdadeiro} = TMS_i
\]

O comportamento de carona é mais severo quando:

- O grupo é **grande** (a contribuição individual tem efeito desprezível sobre \(G\));
- O bem é **puramente não-excludente** (não há como punir quem não contribui);
- Não há **interação repetida** ou mecanismos de reputação.

!!! note "Evidência Experimental"
    Experimentos de bens públicos (jogos de contribuição voluntária) mostram que as contribuições iniciais são tipicamente 40-60% do ótimo social, mas declinam ao longo do tempo para 10-20%, convergindo para a previsão teórica de subprovisão. Mecanismos de punição entre pares (peer punishment) e comunicação face a face aumentam significativamente as contribuições.

---

## 19.9 Votação e Alocação de Recursos

Na ausência de mecanismos de mercado eficientes para bens públicos, as sociedades recorrem a processos políticos — especialmente a **votação** — para decidir o nível de provisão.

### Votação por maioria simples

Considere uma comunidade de \(N\) cidadãos que deve decidir o nível de gastos \(G\) com um bem público, financiado por imposto uniforme \(T = CMg(G)/N\) por pessoa. Cada cidadão \(i\) tem nível preferido \(G_i^*\) que maximiza \(U_i(G) - T\).

!!! abstract "Teorema do Eleitor Mediano"
    Se as preferências dos eleitores são **unimodais** (single-peaked) e a escolha é unidimensional, a regra de maioria simples seleciona o nível preferido pelo **eleitor mediano** — aquele cujo nível preferido \(G_m^*\) é tal que metade dos eleitores prefere mais e metade prefere menos.

    Formalmente, se \(G_1^* \leq G_2^* \leq \cdots \leq G_N^*\), o resultado da votação por maioria é \(G_m^* = G_{(N+1)/2}^*\) (para \(N\) ímpar).

**Relação com eficiência**: O nível escolhido pelo eleitor mediano geralmente **não** coincide com o nível eficiente de Samuelson, exceto por coincidência. A provisão pode ser excessiva ou insuficiente dependendo da distribuição de preferências e renda na população.

**Paradoxo de Condorcet**: Quando as preferências não são unimodais ou a escolha é multidimensional, a votação por maioria pode produzir **ciclos** (A vence B, B vence C, C vence A), não existindo um vencedor de Condorcet.

!!! abstract "Teorema da Impossibilidade de Arrow"
    Não existe regra de agregação de preferências (com três ou mais alternativas e dois ou mais indivíduos) que satisfaça simultaneamente: (i) domínio irrestrito; (ii) princípio de Pareto; (iii) independência de alternativas irrelevantes; (iv) não-ditadura.

---

## 19.10 Mecanismos de Revelação de Preferências

O desafio central na provisão de bens públicos é induzir os indivíduos a **revelar truthfully** suas preferências. O mecanismo de Vickrey-Clarke-Groves (VCG) fornece uma solução elegante.

!!! definition "Mecanismo VCG (Vickrey-Clarke-Groves)"
    Classe de mecanismos de revelação de preferências em que cada indivíduo paga um imposto igual ao **custo externo** que sua participação impõe sobre os demais membros do grupo. Sob esse mecanismo, é estratégia dominante para cada indivíduo revelar sua verdadeira valoração.

### Funcionamento do mecanismo de Clarke (imposto pivotal)

1. Cada indivíduo \(i\) reporta sua valoração \(\hat{v}_i\) pelo bem público.
2. O bem é provido se \(\sum_i \hat{v}_i \geq C\) (custo de provisão).
3. O indivíduo \(i\) é **pivotal** se sua presença altera a decisão (o bem é provido com ele mas não sem ele).
4. Se \(i\) é pivotal, paga um imposto igual a:

\[
t_i = C - \sum_{j \neq i} \hat{v}_j
\]

Esse imposto corresponde ao "custo" que a presença de \(i\) impõe sobre os demais (que precisam financiar a diferença).

**Por que funciona**: Se \(i\) reporta \(\hat{v}_i > v_i\), pode tornar-se pivotal quando não deveria, e pagar um imposto superior ao seu benefício real. Se reporta \(\hat{v}_i < v_i\), pode impedir a provisão de um bem que lhe seria benéfico. Em ambos os casos, o desvio não é lucrativo, e a verdade é estratégia dominante.

!!! note "Limitações do VCG"
    O mecanismo VCG não é equilibrado orçamentariamente (os impostos pivotais não cobrem o custo total), pode ser vulnerável a coalizões, e requer que as valorações sejam **quase-lineares** (utilidade transferível). Na prática, sua aplicação direta é rara, mas o princípio inspira mecanismos em leilões (como o leilão de Vickrey) e em design de mercados.

---

## Box Brasil: Desmatamento na Amazônia e Precificação de Carbono

!!! example "Box Brasil: Desmatamento na Amazônia e Precificação de Carbono"
    O desmatamento na Amazônia brasileira é um caso emblemático de **externalidade negativa de escala global**. A remoção da floresta gera custos externos que incluem emissões de CO₂ (contribuindo para a mudança climática), perda de biodiversidade, alteração do ciclo hidrológico (inclusive os "rios voadores" que transportam umidade para o Centro-Sul do Brasil) e erosão do solo.

    **Dimensão do problema**: Segundo dados do INPE/PRODES, o desmatamento acumulado na Amazônia Legal superou 85 milhões de hectares até 2023 (cerca de 17% da floresta original). Após queda expressiva entre 2004 e 2012 (de 27.772 km² para 4.571 km² anuais), as taxas voltaram a subir, atingindo 13.235 km² em 2021, antes de recuar para cerca de 9.001 km² em 2023 com o reforço de políticas de fiscalização.

    **Análise econômica**: O desmatamento persiste porque os **benefícios privados** (expansão da pecuária, agricultura, extração madeireira) excedem os **custos privados** para os agentes locais, embora os **custos sociais** — incluindo danos climáticos globais — superem largamente os benefícios. Trata-se de uma externalidade negativa clássica: o preço de mercado dos produtos agropecuários não incorpora o custo ambiental da destruição florestal.

    **Instrumentos de política**:

    - **Fundo Amazônia**: Criado em 2008, o Fundo Amazônia funciona como um mecanismo de pagamento por resultados na redução do desmatamento. A Noruega e a Alemanha foram os principais doadores, com aportes superiores a R$ 3,4 bilhões até 2023. O Fundo financia projetos de prevenção, monitoramento e combate ao desmatamento, e de promoção do desenvolvimento sustentável. O mecanismo pode ser interpretado como um **subsídio pigouviano**: pagamento pela externalidade positiva de manter a floresta em pé.

    - **REDD+ (Redução de Emissões por Desmatamento e Degradação Florestal)**: Mecanismo internacional que busca atribuir valor econômico ao carbono estocado nas florestas, criando incentivos para a conservação. O Brasil é um dos principais participantes, com programas de REDD+ em vários estados amazônicos. O princípio é coaseano: criar um "direito de propriedade" sobre o carbono florestal e permitir transações de mercado.

    - **Mercado regulado de carbono**: O Brasil aprovou em 2024 a regulamentação do seu Sistema Brasileiro de Comércio de Emissões (SBCE), um sistema de cap-and-trade. O mercado abrange inicialmente grandes emissores (acima de 25 mil toneladas de CO₂e por ano) e prevê a comercialização de permissões de emissão. A precificação do carbono internaliza parte do custo externo das emissões, alinhando incentivos privados e sociais conforme a lógica pigouviana.

    - **Comando e controle**: O Código Florestal (Lei n.º 12.651/2012) impõe a manutenção de Reserva Legal (80% em áreas de floresta amazônica) e Áreas de Preservação Permanente (APPs). A fiscalização é exercida pelo IBAMA com apoio do sistema de monitoramento por satélite (DETER/INPE).

    **Desafios**: A eficácia das políticas depende de fiscalização (governance), que enfrenta restrições orçamentárias e políticas. A valoração do carbono florestal envolve incertezas científicas sobre taxas de absorção e emissão. Além disso, a soberania sobre a Amazônia adiciona uma dimensão de economia política internacional ao problema.

    Este caso ilustra a aplicação integrada dos instrumentos discutidos no capítulo: imposto/subsídio pigouviano (Fundo Amazônia), mercado de permissões (SBCE, REDD+), regulação direta (Código Florestal) e os limites do Teorema de Coase quando os custos de transação são elevados e as externalidades são difusas e globais.

---

## Exercícios

**Exercício 19.1.** Uma fábrica de celulose produz \(q\) toneladas com custo total \(C(q) = 10q + q^2\) e vende ao preço \(P = 110\). A produção gera poluição com custo externo \(E(q) = 2q^2\).

(a) Determine a quantidade produzida pela firma na ausência de regulação.
(b) Determine a quantidade socialmente ótima.
(c) Calcule o imposto pigouviano ótimo \(t^*\) e verifique que ele induz a firma a produzir a quantidade eficiente.
(d) Calcule a perda de peso morto associada à ausência de regulação.

**Exercício 19.2.** Considere três indivíduos (\(A\), \(B\), \(C\)) com as seguintes valorações marginais por um bem público \(G\) (medido em unidades):

| \(G\) | \(BMg_A\) | \(BMg_B\) | \(BMg_C\) | \(CMg\) |
|-------|-----------|-----------|-----------|---------|
| 1     | 40        | 30        | 20        | 60      |
| 2     | 35        | 25        | 15        | 60      |
| 3     | 25        | 20        | 10        | 60      |
| 4     | 15        | 10        | 5         | 60      |
| 5     | 5         | 5         | 2         | 60      |

(a) Determine o nível eficiente de provisão do bem público.
(b) Calcule os preços de Lindahl para cada indivíduo no nível eficiente.
(c) Explique por que a provisão voluntária (contribuição individual) resultaria em \(G < G^*\).
(d) Verifique se os preços de Lindahl são equilibrados orçamentariamente.

**Exercício 19.3.** Duas firmas emitem poluentes. A firma 1 tem custo de abatimento \(CA_1(a_1) = 2a_1^2\) e a firma 2, \(CA_2(a_2) = a_2^2\), onde \(a_i\) é o abatimento em toneladas. Cada firma emite 100 toneladas sem regulação. O regulador deseja reduzir as emissões totais em 60 toneladas.

(a) Qual é a alocação custo-efetiva de abatimento entre as duas firmas?
(b) Qual seria o custo total se o regulador impusesse abatimento uniforme (30 toneladas cada)?
(c) Compare com o custo da solução custo-efetiva e calcule a economia.
(d) Se for utilizado um mercado de permissões (cap-and-trade), qual será o preço de equilíbrio da permissão?

**Exercício 19.4.** Uma comunidade com 100 moradores deve decidir se constrói uma praça pública (bem público discreto) ao custo de \(R\$ 50.000\). Cada morador \(i\) tem valoração \(v_i\) pela praça, distribuída uniformemente entre \(R\$ 200\) e \(R\$ 800\).

(a) A praça deve ser construída? (Compare a soma das valorações esperadas com o custo.)
(b) Se a construção for financiada por contribuição voluntária uniforme de \(R\$ 500\) por morador, quantos moradores estariam dispostos a contribuir?
(c) Explique o problema do carona nesta situação.
(d) Descreva como um mecanismo de imposto pivotal (Clarke) funcionaria neste contexto.

**Exercício 19.5.** Considere uma economia com dois bens — um privado (\(x\)) e um público (\(G\)) — e dois consumidores com utilidades:

\[
U_1 = \ln(x_1) + 2\ln(G), \quad U_2 = \ln(x_2) + \ln(G)
\]

O preço do bem privado é 1 e o custo marginal do bem público é \(c\). Cada consumidor tem renda \(W\).

(a) Derive a condição de Samuelson para a provisão eficiente de \(G\).
(b) Determine o nível eficiente \(G^*\) em função de \(W\) e \(c\).
(c) Se cada consumidor contribui voluntariamente (equilíbrio de Nash em contribuições), determine o nível de \(G\) de equilíbrio.
(d) Mostre que \(G^{Nash} < G^*\) e interprete economicamente.
