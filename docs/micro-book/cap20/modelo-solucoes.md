# Modelo de Equilíbrio Parcial e Soluções

## 20.3 Medindo a Mentira: Modelo de Equilíbrio Parcial de Externalidades {#203}

Sabemos que o preço mente — mas quanto ele mente? A intuição da seção anterior nos disse que externalidades negativas levam à sobreprodução e positivas à subprodução. Agora, formalizamos essa análise em um modelo de equilíbrio parcial com duas firmas, o que nos permitirá medir exatamente o tamanho da mentira e, na seção seguinte, calibrar os instrumentos de política necessários para corrigi-la.

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
\label{eq:20.7} \tag{20.7} \]

O termo \(\frac{\partial C_2}{\partial e} \cdot e'(q_1)\) é o **custo marginal externo** (CME) — o dano marginal imposto pela firma 1 sobre a firma 2. No equilíbrio privado, esse termo é ignorado, levando a \(q_1^{priv} > q_1^{soc}\).

A **perda de peso morto** (deadweight loss) associada à externalidade é a área entre as curvas de custo marginal social e custo marginal privado, entre \(q_1^{soc}\) e \(q_1^{priv}\):

\[
DWL = \int_{q_1^{soc}}^{q_1^{priv}} \left[ C_1'(q) + E'(q) - P \right] dq
\]

Geometricamente, essa integral corresponde à área do "triângulo" entre a curva de custo marginal social (CMg + CME) e a reta de preço, delimitado pelas quantidades \(q^{soc}\) e \(q^{priv}\). A interpretação é direta: para cada unidade produzida além do ótimo social, o custo social marginal excede o benefício marginal (preço), e a área acumulada dessas "perdas marginais" constitui o peso morto. Note que a magnitude do peso morto depende crucialmente de dois fatores: (i) o tamanho da cunha entre CMg privado e CMg social (ou seja, a magnitude do custo marginal externo) e (ii) a distância entre \(q^{priv}\) e \(q^{soc}\), que por sua vez depende das **elasticidades** das curvas de oferta e demanda. Se a oferta privada for muito inelástica (CMg privado muito inclinado), a sobreprodução será pequena mesmo com um custo externo grande, pois a quantidade responde pouco à divergência. Inversamente, se a oferta for elástica, um custo externo modesto pode gerar uma distorção quantitativa — e um peso morto — substancial. Essa relação entre elasticidades e magnitude da ineficiência tem implicações diretas para a política pública: setores com oferta elástica e externalidades significativas são os candidatos prioritários à intervenção regulatória.

---

<iframe src="/micro-book/graficos/cap20/externalidade-negativa.html" title="Figura 20.1 — Externalidade negativa e imposto pigouviano" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 20.1 — Externalidade negativa e imposto pigouviano.** A curva vermelha (CMg social) inclui o custo externo. A área sombreada representa a perda de peso morto da sobreprodução. O imposto pigouviano ótimo iguala o custo marginal externo no ótimo social.
</div>

## 20.4 A Receita para a Fumaça: Soluções para Externalidades Negativas {#204}

### 20.4.1 Imposto Pigouviano

!!! definition "Imposto Pigouviano"
    Imposto por unidade de produção (ou de emissão) igual ao **custo marginal externo** avaliado no ótimo social. Nomeado em homenagem a Arthur Cecil Pigou (1920), que primeiro propôs essa correção.

O imposto \(t^*\) é definido como:

\[
t^* = E'(q^{soc}) = \left. \frac{\partial C_2}{\partial e} \cdot e'(q_1) \right|_{q_1 = q_1^{soc}}
\label{eq:20.8} \tag{20.8} \]

Com o imposto, a firma poluidora resolve:

\[
\max_{q_1} \; p_1 q_1 - C_1(q_1) - t^* q_1
\]

Condição de primeira ordem:

\[
p_1 = C_1'(q_1) + t^*
\label{eq:20.9} \tag{20.9} \]

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
    P = C'(q^*) + E'(q^*) \tag{i}
    \]

    **Passo 2 — Equilíbrio privado sem imposto.** A firma maximiza \(\pi(q) = Pq - C(q)\):

    \[
    P = C'(q^{priv}) \tag{ii}
    \]

    Como \(E'(q) > 0\), comparando (i) e (ii), e dado que \(C''(q) > 0\), temos \(q^{priv} > q^*\). A firma produz em excesso.

    **Passo 3 — Introdução do imposto pigouviano.** Defina o imposto unitário:

    \[
    t^* = E'(q^*)
    \]

    Com o imposto, o lucro da firma é \(\pi^t(q) = Pq - C(q) - t^* q\). A condição de maximização é:

    \[
    P = C'(q^t) + t^* = C'(q^t) + E'(q^*) \tag{iii}
    \]

    **Passo 4 — Comparação.** Comparando (iii) com (i), ambas requerem:

    \[
    P - E'(q^*) = C'(q)
    \]

    Como \(C'(\cdot)\) é estritamente crescente (por \(C'' > 0\)), a solução é única: \(q^t = q^*\).

    **Conclusão.** O imposto \(t^* = E'(q^*)\) faz com que a firma internalize o custo marginal externo e produza exatamente o nível socialmente ótimo \(q^*\). A perda de peso morto é eliminada. \(\blacksquare\)

!!! tip "Subsídio Pigouviano"
    De forma simétrica, para externalidades positivas, o instrumento pigouviano é um **subsídio** por unidade igual ao benefício marginal externo: \(s^* = B'^{ext}(q^{soc})\). Isso eleva a quantidade produzida/consumida até o nível socialmente eficiente.

??? exercicio-resolvido "ER 20.1 — Imposto pigouviano ótimo com custo quadrático"

    **Enunciado.** Uma firma produz \(q\) unidades ao preço \(P = 100\), com custo \(C(q) = 10q + q^2\). A produção gera custo externo \(E(q) = 0{,}5q^2\). (a) Encontre \(q^{priv}\) e \(q^{soc}\). (b) Calcule o imposto pigouviano ótimo. (c) Calcule o DWL eliminado.

    **Solução.**

    **(a)** Sem regulação: \(P = C'(q) \implies 100 = 10 + 2q \implies q^{priv} = 45\).

    Ótimo social: \(P = C'(q) + E'(q) \implies 100 = 10 + 2q + q = 10 + 3q \implies q^{soc} = 30\).

    **(b)** \(t^* = E'(q^{soc}) = q^{soc} = 30\).

    Verificação: com imposto, \(100 = 10 + 2q + 30 \implies q = 30 = q^{soc}\). \(\checkmark\)

    **(c)** \(DWL = \int_{30}^{45} (10 + 3q - 100)\,dq = \int_{30}^{45}(3q - 90)\,dq = \left[\frac{3q^2}{2} - 90q\right]_{30}^{45} = (3037{,}5 - 4050) - (1350 - 2700) = -1012{,}5 - (-1350) = 337{,}5\).

---

<iframe src="/micro-book/graficos/cap20/webr-pigou.html" title="WebR — Simulação de imposto pigouviano" class="graph-iframe" style="height:700px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 20.1 — Simulação de imposto pigouviano.** Altere os parâmetros de custo e externalidade e observe como o imposto ótimo e o DWL se ajustam.
</div>

---

### 20.4.2 O Teorema de Coase

!!! abstract "Teorema de Coase (Coase, 1960)"
    Se os **direitos de propriedade** estão claramente definidos e os **custos de transação** são nulos, a barganha privada entre as partes levará à alocação eficiente de recursos, **independentemente** de qual parte detém o direito de propriedade. A distribuição dos direitos afeta apenas a distribuição de riqueza, não a eficiência.

Formalmente, suponha que a firma poluidora e a firma afetada podem negociar. Se a firma afetada tem o direito a um ambiente limpo, a poluidora deve compensá-la pelo dano. Se a poluidora tem o direito de poluir, a firma afetada paga para que ela reduza a produção. Em ambos os casos, a produção converge para \(q^{soc}\) onde:

\[
C'(q) + E'(q) = P
\label{eq:20.10} \tag{20.10} \]

**Limites do Teorema de Coase:**

1. **Custos de transação**: na prática, negociar é custoso, especialmente quando há muitas partes envolvidas.
2. **Externalidades difusas**: quando a poluição afeta milhões de pessoas, a barganha bilateral é inviável.
3. **Assimetria de informação**: as partes podem ter incentivos estratégicos para não revelar verdadeiramente seus custos e benefícios.
4. **Efeitos riqueza**: com utilidade marginal da renda decrescente, a atribuição inicial dos direitos pode afetar a alocação final.
5. **Problemas de hold-up**: investimentos específicos à relação podem gerar comportamento oportunista.

!!! question "Nobel de Economia 1991 — Ronald Coase"
    Ronald Coase recebeu o Prêmio Nobel "por sua descoberta e elucidação do significado dos custos de transação e dos direitos de propriedade para a estrutura institucional e o funcionamento da economia." O artigo seminal "The Problem of Social Cost" (1960) desafiou a prescrição pigouviana dominante, mostrando que a atribuição de direitos de propriedade e a barganha privada podem, sob certas condições, resolver o problema das externalidades sem intervenção estatal. Coase também introduziu o conceito de custos de transação como determinante da fronteira entre firma e mercado em "The Nature of the Firm" (1937).

??? exercicio-resolvido "ER 20.2 — Negociação coaseana: fazendeiro vs. apicultor"

    **Enunciado.** Um fazendeiro cria gado (\(n\) cabeças) com lucro \(\pi_F(n) = 80n - 2n^2\). O gado danifica a lavoura vizinha em \(D(n) = n^2\). (a) Encontre \(n^{priv}\) e \(n^{soc}\). (b) Mostre que a negociação leva a \(n^{soc}\) independentemente de quem detém o direito.

    **Solução.**

    **(a)** Sem negociação: \(\pi_F'(n) = 80 - 4n = 0 \implies n^{priv} = 20\).

    Ótimo social: \(\max_n \pi_F(n) - D(n) = 80n - 2n^2 - n^2 = 80n - 3n^2\). CPO: \(80 - 6n = 0 \implies n^{soc} = 40/3 \approx 13{,}33\).

    **(b)** Se o fazendeiro tem o direito: parte de \(n = 20\). O lavrador oferece compensação \(T\) para reduzir a \(n^{soc}\). Perda do fazendeiro: \(\pi_F(20) - \pi_F(40/3) = 800 - 711{,}11 = 88{,}89\). Ganho do lavrador: \(D(20) - D(40/3) = 400 - 177{,}78 = 222{,}22\). Como \(222{,}22 > 88{,}89\), há espaço para acordo.

    Se o lavrador tem o direito: parte de \(n = 0\). O fazendeiro oferece \(T'\) para criar \(n^{soc}\) cabeças. Ganho do fazendeiro: \(\pi_F(40/3) = 711{,}11\). Dano ao lavrador: \(D(40/3) = 177{,}78\). Como \(711{,}11 > 177{,}78\), há espaço para acordo. Em ambos os casos, \(n = n^{soc}\).

---

<iframe src="/micro-book/graficos/cap20/teorema-coase.html" title="Figura 20.2 — Teorema de Coase" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 20.2 — Teorema de Coase.** Alterne entre atribuir o direito de propriedade ao poluidor ou à vítima. Em ambos os casos, a negociação leva ao mesmo nível eficiente de poluição onde BMg = DMg. Apenas a direção da transferência muda.
</div>

---

<iframe src="/micro-book/graficos/cap20/webr-coase.html" title="WebR — Simulação do Teorema de Coase" class="graph-iframe" style="height:700px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 20.2 — Simulação do Teorema de Coase.** Varie os parâmetros de lucro e dano e observe o intervalo de compensação viável.
</div>

---

### 20.4.3 Regulação direta (command and control)

A regulação direta consiste em impor limites quantitativos de emissão ou padrões tecnológicos às firmas poluidoras. Exemplos incluem:

- Limites máximos de emissão de poluentes (ex.: padrão CONAMA para emissões veiculares);
- Obrigatoriedade de uso de tecnologia de controle (ex.: catalisadores);
- Zoneamento industrial (restrições de localização).

A principal desvantagem da regulação direta é que ela tipicamente não é **custo-efetiva**: ao impor o mesmo padrão a todas as firmas, não explora as diferenças nos custos marginais de abatimento. Firmas com custos de abatimento baixos deveriam reduzir mais emissões, e firmas com custos altos, menos — algo que um imposto ou mercado de permissões faz automaticamente.

### 20.4.4 Mercados de permissão de emissão (cap and trade)

!!! definition "Mercado de Permissões de Emissão (Cap and Trade)"
    Sistema em que o regulador fixa um **teto** (cap) total de emissões e distribui **permissões negociáveis** entre as firmas. As firmas podem comprar e vender permissões no mercado. Em equilíbrio, o preço da permissão iguala o custo marginal de abatimento entre todas as firmas, garantindo **custo-efetividade**.

Se o teto é fixado no nível socialmente ótimo de emissões \(\bar{E}\), e o mercado de permissões é competitivo, o preço de equilíbrio da permissão é exatamente igual ao imposto pigouviano ótimo:

\[
p_E = t^* = E'(q^{soc})
\]

A equivalência entre imposto e cap-and-trade sob certeza (Weitzman, 1974) é um resultado fundamental. Sob **incerteza**, porém, os instrumentos diferem: o imposto fixa o preço e deixa a quantidade flutuar; o cap fixa a quantidade e deixa o preço flutuar. A escolha ótima depende das elasticidades relativas dos custos de abatimento e dos danos marginais.

??? exercicio-resolvido "ER 20.3 — Cap-and-trade com duas firmas"

    **Enunciado.** Duas firmas emitem 100 ton cada. Custos de abatimento: \(CA_1(a_1) = 3a_1^2\), \(CA_2(a_2) = a_2^2\). O regulador impõe redução total de 80 ton. (a) Encontre a alocação custo-efetiva. (b) Calcule o preço de equilíbrio da permissão. (c) Compare com abatimento uniforme.

    **Solução.**

    **(a)** Equalização de custos marginais: \(CMgA_1 = CMgA_2 \implies 6a_1 = 2a_2 \implies a_2 = 3a_1\). Restrição: \(a_1 + 3a_1 = 80 \implies a_1 = 20\), \(a_2 = 60\).

    **(b)** \(p = CMgA_1(20) = 6 \times 20 = 120 = CMgA_2(60) = 2 \times 60 = 120\). \(\checkmark\)

    **(c)** Custo eficiente: \(3(20)^2 + (60)^2 = 1200 + 3600 = 4800\). Uniforme (\(a_i = 40\)): \(3(40)^2 + (40)^2 = 4800 + 1600 = 6400\). Economia: \(6400 - 4800 = 1600\) (25%).

??? exercicio-resolvido "ER 20.4 — Imposto vs. cap-and-trade sob incerteza (Weitzman)"

    **Enunciado.** O regulador estima o custo marginal de abatimento como \(CMgA = 2a\), mas o verdadeiro é \(CMgA = 4a\). O dano marginal é constante: \(D' = 60\). Compare os resultados sob imposto \(t = 60\) e cap \(\bar{a} = 30\).

    **Solução.**

    Com **imposto** \(t = 60\): a firma abate até \(4a = 60 \implies a = 15\) (abaixo da meta de 30). Custo de abatimento: \(2(15)^2 = 450\). Dano residual extra: \(60 \times 15 = 900\). Mas o custo marginal = dano marginal no nível escolhido.

    Com **cap** \(\bar{a} = 30\): obriga abatimento de 30, com custo marginal \(4 \times 30 = 120 \gg 60 = D'\). Custo de abatimento: \(2(30)^2 = 1800\). A meta é atingida, mas a um custo marginal muito acima do dano marginal.

    Conclusão: com dano marginal plano e custos subestimados, o **imposto domina** (resultado de Weitzman, 1974).

---

<iframe src="/micro-book/graficos/cap20/webr-cap-trade.html" title="WebR — Cap-and-trade e alocação custo-efetiva" class="graph-iframe" style="height:700px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 20.3 — Cap-and-trade e alocação custo-efetiva.** Ajuste os custos de abatimento das firmas e a meta de redução para ver como o mercado de permissões aloca o esforço.
</div>

---

!!! box-mundo "Box Mundo 20.2 — O EU Emissions Trading System (EU ETS)"

    **Contexto:** Lançado em 2005, o EU ETS é o maior mercado de carbono do mundo, cobrindo cerca de 40% das emissões de gases de efeito estufa da União Europeia. O sistema opera por cap-and-trade: a UE fixa um teto total de emissões que diminui anualmente, e as empresas dos setores cobertos (energia, indústria pesada, aviação intra-EU) devem possuir permissões correspondentes às suas emissões.

    **Evolução:** O preço das permissões (EU Allowances, EUA) flutuou enormemente: de menos de €5 na Fase I (2005-2007, com excesso de permissões distribuídas gratuitamente) a mais de €100 em 2023 (Fase IV, com teto mais apertado e reserva de estabilidade de mercado). O preço reflete a escassez crescente à medida que o teto diminui.

    **Lições:** O EU ETS demonstra que mercados de permissões funcionam — as emissões dos setores cobertos caíram ~35% entre 2005 e 2022 — mas que o *design* importa criticamente. A alocação gratuita inicial gerou windfall profits; o excesso de permissões deprimiu preços por uma década; e a introdução de mecanismos de estabilidade (como o Market Stability Reserve em 2019) foi necessária para corrigir o desequilíbrio.

!!! box-mundo "Box Mundo 20.3 — O programa americano de SO₂: cap-and-trade em ação"

    **Contexto:** O Acid Rain Program, criado pelo Clean Air Act de 1990 nos EUA, foi o primeiro grande sistema de cap-and-trade do mundo, voltado para a redução de emissões de dióxido de enxofre (SO₂) — o principal causador da chuva ácida. O programa impôs um teto nacional de emissões e distribuiu permissões negociáveis entre usinas termelétricas.

    **Resultados:** As emissões de SO₂ caíram de 15,7 milhões de toneladas em 1990 para menos de 3 milhões em 2010 — uma redução de mais de 80%. O custo total de abatimento ficou substancialmente abaixo das estimativas ex ante, em grande parte porque o mercado de permissões permitiu que as firmas com menores custos de abatimento reduzissem mais.

    **Análise econômica:** Estudos estimam que os custos de compliance com o mercado foram 15-50% menores do que teriam sido sob regulação uniforme (command-and-control). O programa é amplamente considerado um dos casos de maior sucesso de política ambiental baseada em instrumentos de mercado.

!!! box-brasil "Box Brasil 20.1 — REDD+ e o mercado voluntário de carbono florestal"

    **Contexto:** O mecanismo REDD+ (Redução de Emissões por Desmatamento e Degradação Florestal) busca atribuir valor econômico ao carbono estocado nas florestas, criando incentivos para a conservação. O Brasil é um dos principais participantes, com programas de REDD+ em vários estados amazônicos. O princípio é coaseano: criar um "direito de propriedade" sobre o carbono florestal e permitir transações de mercado.

    **Dados:** O Fundo Amazônia, criado em 2008, recebeu aportes superiores a R$ 3,4 bilhões da Noruega e Alemanha até 2023. O Brasil aprovou em 2024 a regulamentação do Sistema Brasileiro de Comércio de Emissões (SBCE), um sistema de cap-and-trade que abrange grandes emissores.

    **Lições:** O caso brasileiro ilustra a aplicação integrada dos instrumentos discutidos: subsídio pigouviano (Fundo Amazônia), mercado de permissões (SBCE, REDD+), regulação direta (Código Florestal) e os limites do Teorema de Coase quando os custos de transação são elevados e as externalidades são difusas e globais.
