## 23.4 Seguros de saúde {#234}

### 23.4.1 Seleção adversa e a espiral da morte

O mercado de seguros de saúde é o palco onde os problemas de informação assimétrica do Capítulo 19 ganham consequências mais dramáticas. A **seleção adversa** ocorre porque o indivíduo conhece seu estado de saúde melhor do que a seguradora — e quem mais deseja seguro é, em média, quem mais precisa dele.

Formalize. Sejam dois tipos de consumidores: alto risco (\(\pi_H\)) e baixo risco (\(\pi_L\)), com \(\pi_H > \pi_L\). A perda em caso de doença é \(L\). Se a seguradora não distingue os tipos e cobra um prêmio único baseado no risco médio:

\[
\bar{P} = [\lambda \pi_H + (1 - \lambda) \pi_L] \cdot L \tag{23.12}
\]

onde \(\lambda\) é a proporção de alto risco na população.

O problema: para o tipo \(L\), o prêmio do pool \(\bar{P}\) pode exceder sua disposição a pagar (\(\approx \pi_L \cdot L\) mais um prêmio de risco). Se isso acontece, o tipo \(L\) sai do pool. Com sua saída, a proporção de alto risco aumenta, o prêmio sobe, mais baixo risco saem — e o mercado entra em uma **espiral da morte** (*death spiral*).

!!! definition "Espiral da morte (death spiral)"
    A **espiral da morte** é um processo de retroalimentação positiva em que: (1) o prêmio de seguro sobe; (2) os indivíduos de menor risco saem do pool; (3) o risco médio dos segurados aumenta; (4) o prêmio sobe novamente. No limite, apenas os indivíduos de altíssimo risco permanecem segurados — ou o mercado colapsa completamente. É a versão dinâmica do resultado de Rothschild e Stiglitz (1976, Capítulo 19).

!!! box-brasil "Box Brasil 23.4 — Seleção adversa nos planos de saúde brasileiros: evidência com dados ANS e DATASUS"

    O mercado brasileiro de planos de saúde oferece um laboratório natural para estudar seleção adversa. A regulação da [ANS](https://www.gov.br/ans) impõe *community rating* parcial (variação máxima de 6:1 entre faixas etárias) e proíbe exclusão por condição preexistente — exatamente as condições que a teoria de Rothschild-Stiglitz prevê como geradoras de seleção adversa.

    **Evidências empíricas:**

    | Indicador | Planos individuais | Planos coletivos | Fonte |
    |:----------|:------------------:|:----------------:|:------|
    | Sinistralidade média | 88–92% | 78–83% | ANS, 2024 |
    | Reajuste médio anual (2020–2024) | 9,6–15,5% | 12–18% (sem teto) | ANS/DIPRO |
    | Idade média do beneficiário | 42 anos | 35 anos | ANS TabNet |
    | Taxa de utilização (consultas/beneficiário/ano) | 6,2 | 4,8 | DATASUS/SIB |

    **O que os dados revelam:**

    - **Planos individuais sofrem mais seleção adversa.** A sinistralidade consistentemente acima de 85% indica que os beneficiários que permanecem nesses planos são, em média, de maior risco. Muitos jovens saudáveis migraram para planos coletivos por adesão (via sindicatos, associações), onde os prêmios são menores — exatamente o comportamento previsto pela teoria.
    - **A espiral da morte é real.** O número de beneficiários de planos individuais caiu de 9,5 milhões (2014) para ~8,1 milhões (2024), enquanto planos coletivos cresceram de 37 para ~42 milhões. A fuga dos baixo risco para coletivos eleva o risco médio dos individuais, forçando reajustes maiores — o mecanismo clássico da espiral.
    - **Regulação amplifica o problema.** O teto de reajuste para individuais (fixado pela ANS abaixo do custo atuarial) desincentiva operadoras a vender planos individuais. Muitas operadoras simplesmente pararam de ofertá-los — um colapso de mercado parcial.
    - **Faixa etária como proxy imperfeito.** A variação de 6:1 entre a faixa mais jovem (0–18) e a mais idosa (59+) é insuficiente para refletir a diferença real de custos (que pode chegar a 10:1 ou mais). Isso gera subsidio cruzado dos jovens para os idosos dentro do mesmo plano — e incentiva a saída dos jovens saudáveis.

    **Conexão com a teoria:**

    O caso brasileiro é uma ilustração quase perfeita do trade-off entre eficiência e equidade na regulação de seguros. O *community rating* parcial é pró-equidade (protege idosos e doentes), mas anti-eficiência (distorce os preços, gerando seleção adversa). A coexistência de planos individuais regulados (com seleção adversa) e planos coletivos menos regulados (com menor seleção) reproduz, no mundo real, a distinção entre equilíbrio separador e pooling do modelo de Rothschild-Stiglitz.

    **Fonte:** ANS, *Dados Gerais do Setor*, 2024; ANS TabNet; [DATASUS](https://datasus.saude.gov.br/), Sistema de Informações de Beneficiários (SIB); Andrade, M.V. e Maia, A.C. (2009), "Diferenciais de utilização do cuidado de saúde no sistema suplementar brasileiro", *Estudos Econômicos*, 39(1), 7–38.

O modelo de Rothschild e Stiglitz (1976), estudado no Capítulo 19, mostra que o equilíbrio competitivo com seleção adversa — quando existe — envolve **contratos separadores**: o tipo alto risco recebe cobertura completa a prêmio alto; o tipo baixo risco recebe cobertura parcial a prêmio baixo. Nenhuma firma lucra, mas o tipo baixo risco sofre uma externalidade negativa: seu contrato é distorcido pela presen��a do tipo alto risco.

No gráfico interativo abaixo, simule a espiral da morte: ajuste a proporção de tipos e a disposição a pagar, e observe como o mercado de seguros colapsa iteração a iteração.

<iframe src="/micro-book/graficos/cap23/espiral-morte.html" title="Figura 23.2 — Espiral da Morte em Seguros de Saúde" class="graph-iframe" style="height:600px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 23.2 — Espiral da Morte em Seguros de Saúde.** Ajuste a proporção de tipos alto e baixo risco e observe o processo iterativo: a cada rodada, os baixo risco saem, o prêmio sobe e o pool encolhe — até restar apenas alto risco ou o mercado colapsar.
</div>

No diagrama de Rothschild-Stiglitz abaixo, visualize o equilíbrio separador no espaço riqueza-estado: linhas de lucro zero para cada tipo e o resultado de que o tipo baixo risco é forçado a aceitar cobertura parcial.

<iframe src="/micro-book/graficos/cap23/selecao-adversa-saude.html" title="Figura 23.2b — Seleção Adversa: Diagrama de Rothschild-Stiglitz" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 23.2b — Rothschild-Stiglitz em Saúde.** As retas de lucro zero (vermelho para alto risco, azul para baixo risco) partem da dotação inicial \(E\). O tipo H recebe seguro completo (sobre a linha de 45°); o tipo L recebe cobertura parcial — o custo informacional da assimetria.
</div>

### 23.4.2 Risco moral em seguros de saúde

O **risco moral** (Capítulo 19) assume duas formas em saúde:

**Risco moral ex ante:** o seguro reduz o incentivo para prevenir a doença. Se o plano cobre 100% do tratamento de diabetes, por que manter a dieta? Formalmente, seja \(e\) o esforço de prevenção e \(c(e)\) seu custo. Sem seguro, o indivíduo internaliza o custo da doença e escolhe \(e^*\) que minimiza \(c(e) + \pi(e) \cdot m\). Com seguro completo, o custo da doença é zero para ele, e o esforço ótimo cai para \(e' < e^*\).

**Risco moral ex post:** o seguro reduz o preço efetivo dos cuidados médicos no momento do uso, aumentando a quantidade demandada. O RAND HIE (Seção 23.2.2) quantificou este efeito: passar de copagamento zero a 95% reduz o gasto em ~28%.

O impacto do risco moral pode ser representado pela **cunha do seguro** entre o custo marginal social e o custo marginal percebido pelo paciente:

\[
p_{\text{percebido}} = (1 - \alpha) \cdot p_{\text{real}} \tag{23.13}
\]

onde \(\alpha\) é a taxa de cobertura do seguro (0 = sem seguro, 1 = cobertura total). Com cobertura total (\(\alpha = 1\)), o preço percebido é zero, e a demanda atinge o máximo — incluindo cuidados cujo custo marginal excede o benefício marginal.

A perda de bem-estar do risco moral é o triângulo entre a curva de demanda e o custo marginal, para a quantidade consumida acima do ótimo:

\[
DWL = \frac{1}{2} \cdot \alpha \cdot p \cdot \Delta Q \tag{23.14}
\]

No gráfico interativo abaixo, ajuste a taxa de coparticipação e o custo por consulta para visualizar a cunha do seguro, o excesso de utilização e a perda de peso morto do risco moral.

<iframe src="/micro-book/graficos/cap23/moral-hazard-saude.html" title="Figura 23.3 — Risco Moral em Saúde: Copagamento e Peso Morto" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 23.3 — Risco Moral em Saúde.** Ajuste a coparticipação \(r\) de 0 (cobertura total) a 1 (sem seguro). Com \(r = 0\), o paciente paga nada e consome até onde a demanda cruza o eixo — gerando máximo peso morto. Com \(r = 1\), consome no nível eficiente, mas perde toda a proteção contra risco.
</div>

### 23.4.3 Ajuste de risco e mecanismos de estabilização

Para combater a seleção adversa sem eliminar a escolha do consumidor, sistemas de saúde modernos usam **ajuste de risco** (*risk adjustment*): transferências entre seguradoras baseadas nas características de risco de seus segurados.

O ajuste de risco funciona assim: uma fórmula prevê o custo esperado de cada indivíduo com base em variáveis observáveis (idade, sexo, diagnósticos prévios). Seguradoras com carteiras de maior risco recebem transferências; seguradoras com carteiras de menor risco pagam. Isso reduz o incentivo para *cream-skimming* — a prática de atrair seletivamente clientes saudáveis.

\[
T_j = \sum_i (\hat{m}_i - \bar{m}) \tag{23.15}
\]

onde \(T_j\) é a transferência líquida para a seguradora \(j\), \(\hat{m}_i\) é o custo previsto do indivíduo \(i\), e \(\bar{m}\) é o custo médio da população. Por construção, \(\sum_j T_j = 0\).

Outros mecanismos de estabilização incluem:

| Mecanismo | Descrição | Exemplo |
|:----------|:----------|:--------|
| Mandato individual | Obrigação de contratar seguro | ACA/Obamacare (2010–2018) |
| Community rating | Prêmio igual para todos (ou por faixa etária limitada) | Holanda, Suíça, ACA |
| Garantia de aceitação | Seguradoras não podem recusar clientes | ACA, UE, ANS |
| Subsídio cruzado | Governo subsidia prêmios para baixa renda | ACA exchanges |
| Período de inscrição aberta | Janela única anual para contratar/trocar plano | ACA, Holanda |

!!! box-mundo "Box Mundo 23.3 — O Obamacare (ACA): design de mecanismos na prática"
    O *Affordable Care Act* (ACA, 2010) é um caso de estudo em **design de mecanismos** (Capítulo 19) aplicado a seguros de saúde. O problema: ~50 milhões de americanos sem seguro, seleção adversa endêmica, prêmios crescentes. A solução do ACA combinou quatro pilares:

    1. **Mandato individual**: todos devem contratar seguro (ou pagar multa). Força os baixo risco a entrar no pool, estabilizando prêmios. A multa foi zerada em 2019, e os prêmios subiram — evidência natural da teoria.
    2. **Subsídios**: créditos fiscais escalonados por renda para tornar o seguro acessível.
    3. **Community rating + garantia de aceitação**: seguradoras não podem discriminar por condição preexistente ou cobrar mais que 3:1 por idade.
    4. **Ajuste de risco**: transferências entre seguradoras nos *exchanges* para compensar diferenças na composição de risco.

    **Resultados:** O número de sem-seguro caiu de ~50 milhões (2010) para ~27 milhões (2016). Mas a eliminação da multa do mandato e a instabilidade regulatória criaram turbulência nos mercados individuais. Em 2024, ~45 milhões de americanos estavam inscritos via *exchanges* ou expansão do Medicaid (KFF, 2024).

    **Lição microeconômica:** Nenhum pilar funciona isoladamente. Sem mandato, os subsídios atraem alto risco. Sem subsídios, o mandato é regressivo. Sem community rating, as seguradoras fogem dos doentes. O pacote é complementar — exatamente como previsto pela teoria de Rothschild-Stiglitz.

!!! exercicio-resolvido "ER 23.2 — Copagamento ótimo"
    **Problema:** Um seguro de saúde cobre consultas médicas. A demanda por consultas é \(Q = 20 - 0{,}1p\), onde \(p\) é o preço percebido pelo paciente. O custo por consulta é \(c = 100\). O seguro cobre uma fração \(\alpha\) do custo, de modo que o paciente paga \(p = (1-\alpha) \cdot c\).

    (a) Quantas consultas o paciente demanda com cobertura total (\(\alpha = 1\))?

    (b) Quantas com copagamento de 20% (\(\alpha = 0{,}8\))?

    (c) Qual a perda de bem-estar (*deadweight loss*) do risco moral com cobertura total?

    **Solução:**

    **(a)** Com \(\alpha = 1\): \(p = 0\). \(Q = 20 - 0{,}1 \times 0 = 20\) consultas.

    **(b)** Com \(\alpha = 0{,}8\): \(p = 0{,}2 \times 100 = 20\). \(Q = 20 - 0{,}1 \times 20 = 18\) consultas.

    **(c)** O ótimo sem seguro: \(p = c = 100\). \(Q^* = 20 - 0{,}1 \times 100 = 10\) consultas.

    Com cobertura total, o paciente consome 20 em vez de 10 — excesso de 10 consultas. Cada consulta excedente custa 100 mas tem benefício marginal menor. O DWL é o triângulo:

    \[
    DWL = \frac{1}{2} \times (20 - 10) \times (100 - 0) = \text{R\$}\;500
    \]

    **Lição:** Cobertura total elimina o risco financeiro para o paciente, mas gera perda de bem-estar de R$ 500 por risco moral. O copagamento de 20% reduz a demanda de 20 para 18 — diminuindo o DWL, mas não eliminando (o paciente ainda consome 8 consultas acima do ótimo).

!!! box-brasil "Box Brasil 23.2 — A ANS e a regulação dos planos de saúde no Brasil"
    A **Agência Nacional de Saúde Suplementar** (ANS), criada em 2000, regula ~47 milhões de beneficiários de planos de saúde privados no Brasil. Seus instrumentos principais:

    - **Rol de procedimentos obrigatórios**: lista de coberturas mínimas que todo plano deve oferecer — expandida periodicamente, gerando conflito com operadoras.
    - **Reajuste regulado**: a ANS define o teto de reajuste anual para planos individuais (não para coletivos, que são ~80% do mercado).
    - **Faixas etárias**: a Lei 9.656/1998 limita a variação de preço por idade a no máximo 6:1 entre a faixa mais jovem e a mais idosa — uma forma de community rating parcial.
    - **Ressarcimento ao SUS**: operadoras devem reembolsar o SUS quando seus beneficiários usam serviços públicos.

    **Desafios atuais:**

    - **Concentração de mercado**: fusões sucessivas reduziram o número de operadoras. As 10 maiores detêm ~40% dos beneficiários.
    - **Judicialização**: beneficiários recorrem à Justiça para obter coberturas fora do rol, criando custos imprevisíveis.
    - **Reajustes de coletivos**: planos empresariais (a maioria) não têm teto regulado, gerando reajustes frequentemente superiores a 15% ao ano.
    - **Sinistralidade crescente**: a razão sinistros/receitas tem se aproximado de 85%, comprimindo margens e forçando consolidação (ANS, 2024).

---

## 23.5 Sistemas de saúde comparados {#235}

### 23.5.1 Os quatro modelos

Não existe sistema de saúde perfeito — existe uma escolha entre imperfeições. Os sistemas de saúde do mundo podem ser classificados (com simplificação inevitável) em quatro modelos:

| Modelo | Financiamento | Provisão | Exemplo |
|:-------|:-------------|:---------|:--------|
| **Beveridge** | Impostos gerais | Predominantemente pública | Reino Unido (NHS), Espanha, Brasil (SUS) |
| **Bismarck** | Contribuições sociais obrigatórias (empregador + empregado) | Mista (provedores privados, regulados) | Alemanha, França, Japão |
| **Seguro nacional** | Imposto destinado a seguro único | Provedores privados | Canadá, Taiwan |
| **Mercado** | Pagamento direto ou seguros privados voluntários | Privada | EUA (parcialmente), países de baixa renda |

Na prática, nenhum país se encaixa perfeitamente em um modelo. Os EUA têm Medicare (Beveridge para idosos), Medicaid (Beveridge para pobres), seguro privado via empregador (Bismarck) e ~27 milhões sem seguro (mercado). O Brasil combina SUS (Beveridge) com planos privados (Bismarck/mercado).

### 23.5.2 O trade-off eficiência-equidade

A escolha entre modelos reflete o trade-off fundamental entre **eficiência** e **equidade** que permeia toda a economia do bem-estar (Capítulos 14 e 20):

- **Sistemas universais públicos** (Beveridge) tendem a ser mais equitativos (acesso independe da renda) e a conter custos melhor (poder de monopsônio na compra de serviços), mas podem gerar filas e menor inovação.
- **Sistemas de mercado** tendem a ser mais responsivos a preferências individuais e a gerar mais inovação, mas com custos mais altos e desigualdade de acesso.

!!! idea "Intuição Econômica"
    **Em uma frase:** Todo sistema de saúde é uma resposta imperfeita ao mesmo conjunto de falhas de mercado — a diferença está em quais imperfeições cada sociedade escolhe tolerar.

    **Pense assim:** Imagine um triângulo com três vértices: custo, acesso e qualidade. Nenhum sistema consegue estar nos três vértices ao mesmo tempo. O NHS prioriza acesso e custo (mas tem filas). Os EUA priorizam qualidade e escolha (mas têm custo alto e acesso desigual). O SUS tenta priorizar acesso (mas enfrenta subfinanciamento que limita qualidade).

    **Por que isso importa:** Reformas de saúde que prometem simultaneamente "mais acesso, mais qualidade e menos custo" estão violando uma restrição econômica fundamental — e provavelmente estão mentindo sobre pelo menos uma das três dimensões.

### 23.5.3 A anomalia americana

Os EUA são o caso mais fascinante — e perturbador — da economia da saúde comparada. Gastam mais que qualquer outro país (~17% do PIB, versus ~10% na média da OECD), mas têm resultados piores em muitos indicadores:

| Indicador | EUA | Média OECD |
|:----------|:----|:-----------|
| Gasto em saúde (% PIB) | 17,3% | 9,2% |
| Expectativa de vida | 77,5 anos | 80,3 anos |
| Mortalidade infantil (por 1.000) | 5,4 | 4,1 |
| Sem seguro de saúde | ~8% | ~0% (países universais) |

Essa "anomalia" tem múltiplas explicações, nenhuma isoladamente suficiente:

1. **Preços, não quantidade**: os americanos não consomem mais saúde — pagam mais por unidade. "It's the prices, stupid" (Anderson et al., 2003).
2. **Complexidade administrativa**: ~15–25% do gasto em saúde americano é administrativo (faturamento, pré-autorização, negociação com seguradoras), versus ~2–5% em sistemas de pagador único (Cutler, 2004).
3. **Fragmentação**: múltiplos pagadores, sem poder de monopsônio, sem coordenação central.
4. **Variação geográfica**: o gasto do Medicare per capita varia até 3x entre regiões, sem diferença em resultados (Fisher et al., 2003) — sugerindo desperdício maciço.
5. **Fatores não médicos**: obesidade, violência por armas de fogo, epidemia de opioides, desigualdade de renda — todos afetam a saúde independentemente do sistema.
