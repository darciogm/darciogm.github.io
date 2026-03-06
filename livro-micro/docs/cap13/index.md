# Capítulo 13 — Quando Tudo se Encaixa (ou Quase Isso): Equilíbrio Geral

## Introdução

No capítulo anterior, analisamos mercados isolados — o chamado equilíbrio parcial marshalliano. Mas os mercados não existem no vácuo: o preço do milho afeta a demanda por soja; o salário dos engenheiros influencia o custo de construção civil; uma política comercial que protege a indústria têxtil altera os preços relativos em toda a economia. A análise de **equilíbrio geral** busca compreender a interdependência simultânea de todos os mercados.

Este capítulo desenvolve a teoria walrasiana de equilíbrio geral — desde a intuição gráfica da Caixa de Edgeworth até a formalização matemática via funções de excesso de demanda e a prova de existência pelo Teorema do Ponto Fixo de Brouwer. Estabeleceremos os dois teoremas fundamentais do bem-estar, que conectam eficiência de Pareto e concorrência perfeita, e concluiremos com uma visão dos modelos computáveis de equilíbrio geral (CGE), que permitem aplicar essa teoria à avaliação de políticas públicas.

---

## 13.1 O Sistema de Preços Competitivo

### Interdependência de mercados

Em uma economia com \(n\) bens, os preços \(p_1, p_2, \ldots, p_n\) são determinados simultaneamente pela interação de todos os consumidores e produtores em todos os mercados. Uma mudança em qualquer mercado pode reverberar por toda a economia.

!!! definition "Equilíbrio geral competitivo"
    Um **equilíbrio geral competitivo** (ou equilíbrio walrasiano) é um vetor de preços \(\mathbf{p}^* = (p_1^*, p_2^*, \ldots, p_n^*)\) tal que todos os mercados se equilibram simultaneamente: para cada bem \(k\),
    \[
    \sum_{i=1}^{I} x_i^k(\mathbf{p}^*) = \sum_{j=1}^{J} y_j^k(\mathbf{p}^*) + \sum_{i=1}^{I} \omega_i^k
    \]
    onde \(x_i^k\) é a demanda do consumidor \(i\) pelo bem \(k\), \(y_j^k\) é a oferta líquida da firma \(j\) do bem \(k\), e \(\omega_i^k\) é a dotação inicial do consumidor \(i\) do bem \(k\).

### Homogeneidade e normalização

Em um sistema competitivo, apenas os **preços relativos** importam. As funções de demanda e oferta são homogêneas de grau zero nos preços: se todos os preços dobram, as quantidades demandadas e ofertadas não se alteram. Isso permite normalizar os preços, fixando um bem como **numerário** com preço igual a 1:

\[
p_n = 1 \quad \Rightarrow \quad \text{sistema com } n-1 \text{ preços relativos a determinar}
\]

---

## 13.2 Modelo Gráfico: A Caixa de Edgeworth

### Construção

Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (1 e 2). As dotações totais da economia são:

\[
\bar{x}_1 = \omega_A^1 + \omega_B^1, \qquad \bar{x}_2 = \omega_A^2 + \omega_B^2
\]

A **Caixa de Edgeworth** é um retângulo com dimensões \(\bar{x}_1 \times \bar{x}_2\). O consumidor A é medido a partir do canto inferior esquerdo e o consumidor B a partir do canto superior direito. Cada ponto na caixa representa uma alocação factível que esgota todos os recursos.

!!! definition "Caixa de Edgeworth"
    A **Caixa de Edgeworth** é uma representação gráfica de todas as alocações factíveis em uma economia de troca pura com dois consumidores e dois bens. Cada ponto no retângulo especifica simultaneamente as cestas de consumo de ambos os consumidores.

### Curvas de indiferença na caixa

As curvas de indiferença do consumidor A são desenhadas normalmente (convexas em relação à origem inferior esquerda). As curvas de indiferença do consumidor B são desenhadas invertidas (convexas em relação ao canto superior direito). Quando duas curvas de indiferença se tangenciam, as taxas marginais de substituição são iguais:

\[
TMS_A^{12} = TMS_B^{12}
\]

Nesse ponto, não há trocas mutuamente benéficas possíveis — a alocação é **eficiente no sentido de Pareto**.

---

### Gráfico interativo: Caixa de Edgeworth

Explore a Caixa de Edgeworth com dois consumidores e dois bens. Ajuste as dotações iniciais e os parâmetros de preferências Cobb-Douglas. Arraste o ponto de alocação X para verificar se ele representa uma melhoria de Pareto em relação à dotação inicial e se está sobre a curva de contrato (eficiência). As curvas de indiferença tracejadas passam pela dotação E; as contínuas passam pela alocação X.

<iframe src="../../graficos/cap13/caixa-edgeworth.html" width="100%" height="560" style="border:none;border-radius:8px;"></iframe>

---

## 13.3 Troca Pura: Curva de Contrato e Núcleo

### Eficiência de Pareto na troca

!!! definition "Eficiência de Pareto"
    Uma alocação é **eficiente no sentido de Pareto** (ou um **ótimo de Pareto**) se não existe outra alocação factível que melhore a situação de pelo menos um agente sem piorar a de nenhum outro.

O conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth forma a **curva de contrato** — o locus dos pontos de tangência entre as curvas de indiferença dos dois consumidores.

!!! definition "Curva de contrato"
    A **curva de contrato** é o conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth. Formalmente, é o conjunto de alocações \((x_A, x_B)\) tais que:
    \[
    TMS_A^{12}(x_A) = TMS_B^{12}(x_B)
    \]
    sujeito à factibilidade \(x_A + x_B = \bar{x}\).

### O núcleo da economia

O **núcleo** é um subconjunto da curva de contrato: inclui apenas as alocações Pareto-eficientes que são individualmente racionais, ou seja, que dão a cada consumidor utilidade pelo menos tão alta quanto a obtida com suas dotações iniciais:

\[
U_A(x_A) \geq U_A(\omega_A) \quad \text{e} \quad U_B(x_B) \geq U_B(\omega_B)
\]

O equilíbrio walrasiano pertence ao núcleo. Além disso, à medida que a economia é "replicada" (duplicando o número de consumidores de cada tipo), o núcleo se contrai, convergindo para o equilíbrio walrasiano no limite — este é o **Teorema do Limite do Núcleo** de Debreu e Scarf.

---

## 13.4 Produção e Troca: Fronteira de Possibilidades de Produção

### Eficiência na produção

Quando introduzimos produção na análise, precisamos considerar a eficiência na alocação de insumos entre setores. Com dois insumos (trabalho L e capital K) e dois bens, podemos construir uma segunda Caixa de Edgeworth para a produção. O locus de tangências entre as isoquantas dos dois setores forma a **curva de contrato na produção**:

\[
TMST_1^{LK} = TMST_2^{LK}
\]

### Fronteira de possibilidades de produção (FPP)

A curva de contrato na produção mapeia-se na **fronteira de possibilidades de produção** (FPP), que mostra as combinações máximas dos dois bens que a economia pode produzir dados seus recursos.

A inclinação da FPP é a **taxa marginal de transformação** (TMT):

\[
TMT = -\frac{dX_2}{dX_1} = \frac{CMg_1}{CMg_2}
\]

### Eficiência no mix de produtos

A eficiência econômica plena requer que a TMT iguale a TMS comum aos consumidores:

\[
TMT = TMS_A^{12} = TMS_B^{12}
\]

Isso garante que a combinação de bens produzida é exatamente aquela que os consumidores desejam, dados os recursos disponíveis.

---

## Tabela: Condições de Eficiência de Pareto

A tabela abaixo sintetiza as três condições marginais para a eficiência de Pareto em uma economia com dois consumidores (A, B), dois bens (1, 2) e dois insumos (L, K).

| Tipo de eficiência | Condição marginal | Interpretação |
|---|---|---|
| **Eficiência na troca** | \(TMS_A^{12} = TMS_B^{12}\) | Os consumidores valorizam os bens na mesma proporção marginal; não há trocas mutuamente benéficas. |
| **Eficiência na produção** | \(TMST_1^{LK} = TMST_2^{LK}\) | Os insumos são alocados entre setores de modo que é impossível aumentar a produção de um bem sem reduzir a do outro. |
| **Eficiência no mix de produtos** | \(TMT^{12} = TMS_A^{12} = TMS_B^{12}\) | A combinação de bens produzida corresponde às preferências dos consumidores; o custo de oportunidade social iguala a valoração marginal. |

!!! note "Concorrência perfeita e eficiência"
    Em concorrência perfeita, o sistema de preços descentraliza automaticamente todas essas condições. Os consumidores igualam suas TMS à razão de preços (\(TMS = p_1/p_2\)); as firmas igualam suas TMST à razão de preços dos insumos (\(TMST = w/r\)); e a maximização de lucro garante que \(CMg_1/CMg_2 = p_1/p_2\). Portanto, \(TMS = TMT\).

---

### Gráfico interativo: Fronteira de Possibilidades de Produção (FPP)

Visualize a fronteira de possibilidades de produção e a taxa marginal de transformação (TMT). Ajuste a dotação de recursos para expandir ou contrair a FPP, e mova o ponto ao longo da fronteira para observar como o custo de oportunidade (TMT) varia. Pontos interiores são ineficientes; pontos exteriores são infactíveis.

<iframe src="../../graficos/cap13/fpp.html" width="100%" height="540" style="border:none;border-radius:8px;"></iframe>

---

## 13.5 O Primeiro Teorema do Bem-Estar

!!! abstract "Primeiro Teorema do Bem-Estar"
    Se todos os consumidores e firmas são tomadores de preço, e se existe um mercado completo para cada bem, então o equilíbrio competitivo (walrasiano) é **eficiente no sentido de Pareto**.

Este é o resultado formal que dá substância à intuição da "mão invisível" de Adam Smith: sob concorrência perfeita, o interesse próprio dos agentes, guiado pelos preços de mercado, conduz a uma alocação eficiente sem necessidade de planejamento centralizado.

!!! proof "Demonstração"
    **Demonstração do Primeiro Teorema do Bem-Estar** (economia de troca pura)

    Considere uma economia com \(I\) consumidores e \(n\) bens. Seja \((\mathbf{x}^*, \mathbf{p}^*)\) um equilíbrio walrasiano, onde \(\mathbf{x}_i^*\) é a cesta escolhida pelo consumidor \(i\) e \(\mathbf{p}^*\) é o vetor de preços de equilíbrio.

    **Suposição:** As preferências de cada consumidor são localmente não saciadas (para qualquer cesta e qualquer vizinhança, existe uma cesta preferida naquela vizinhança).

    Suponha, por contradição, que \(\mathbf{x}^*\) não seja Pareto-eficiente. Então existe uma alocação factível \(\hat{\mathbf{x}} = (\hat{\mathbf{x}}_1, \ldots, \hat{\mathbf{x}}_I)\) tal que:

    \[
    \hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^* \quad \forall\, i, \qquad \text{e} \qquad \hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^* \quad \text{para algum } j
    \]

    **Passo 1:** Se \(\hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^*\), então \(\hat{\mathbf{x}}_j\) não pertence ao conjunto orçamentário de \(j\) no equilíbrio (caso contrário, \(j\) teria escolhido \(\hat{\mathbf{x}}_j\) em vez de \(\mathbf{x}_j^*\)). Portanto:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_j > \mathbf{p}^* \cdot \boldsymbol{\omega}_j \tag{1}
    \]

    **Passo 2:** Para todo \(i\) tal que \(\hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^*\), a não saciedade local implica que:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_i \geq \mathbf{p}^* \cdot \boldsymbol{\omega}_i \tag{2}
    \]

    (Se \(\hat{\mathbf{x}}_i\) custasse estritamente menos, por não saciedade local, existiria uma cesta ainda melhor e acessível, contradizendo a otimalidade de \(\mathbf{x}_i^*\).)

    **Passo 3:** Somando (1) e (2) sobre todos os consumidores:

    \[
    \sum_{i=1}^{I} \mathbf{p}^* \cdot \hat{\mathbf{x}}_i > \sum_{i=1}^{I} \mathbf{p}^* \cdot \boldsymbol{\omega}_i
    \]

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) > \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    Mas factibilidade de \(\hat{\mathbf{x}}\) exige \(\sum_i \hat{\mathbf{x}}_i \leq \sum_i \boldsymbol{\omega}_i\). Com \(\mathbf{p}^* > 0\) (consequência da não saciedade local), isso implica:

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) \leq \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    **Contradição.** Portanto, \(\mathbf{x}^*\) é Pareto-eficiente. \(\blacksquare\)

!!! tip "Hipóteses cruciais"
    O Primeiro Teorema requer: (i) comportamento tomador de preço; (ii) mercados completos (sem externalidades nem bens públicos); (iii) não saciedade local das preferências. A violação de qualquer uma dessas hipóteses abre espaço para **falhas de mercado** — tema dos próximos capítulos.

---

## 13.6 O Segundo Teorema do Bem-Estar

!!! abstract "Segundo Teorema do Bem-Estar"
    Se as preferências dos consumidores são convexas e localmente não saciadas, e se os conjuntos de produção das firmas são convexos, então qualquer alocação Pareto-eficiente pode ser alcançada como um equilíbrio competitivo, desde que se realizem transferências lump-sum apropriadas das dotações iniciais.

### Importância normativa

O Segundo Teorema separa eficiência de equidade. Ele afirma que, em princípio, a sociedade pode escolher qualquer ponto da curva de contrato (qualquer distribuição de bem-estar) e implementá-lo via mercados competitivos, bastando redistribuir as dotações iniciais por meio de transferências fixas (*lump-sum*). Isso significa que:

1. A concorrência perfeita não está vinculada a uma única distribuição de renda.
2. Objetivos de equidade podem ser perseguidos sem sacrificar eficiência, desde que os instrumentos redistributivos sejam do tipo *lump-sum*.

!!! note "Limitação prática"
    Na prática, transferências *lump-sum* perfeitas são difíceis de implementar, pois requerem informação sobre características dos agentes que geralmente são privadas. A tributação factível (imposto de renda, IVA) introduz distorções e gera perda de peso morto — um *trade-off* entre eficiência e equidade que é central na economia do setor público.

---

### Gráfico interativo: Equilíbrio Geral Walrasiano

Combine a Caixa de Edgeworth com uma linha de preços. Ajuste o preço relativo \(p_1/p_2\) para observar as demandas ótimas de cada agente e o excesso de demanda resultante. O equilíbrio walrasiano ocorre quando o excesso de demanda é zero -- o gráfico indica o preço de equilíbrio e sinaliza a direção de ajuste necessária.

<iframe src="../../graficos/cap13/equilibrio-geral.html" width="100%" height="580" style="border:none;border-radius:8px;"></iframe>

---

## 13.7 Modelo Matemático de Troca

### Funções de excesso de demanda

Defina a **demanda líquida** (ou excesso de demanda) do consumidor \(i\) pelo bem \(k\) como:

\[
z_i^k(\mathbf{p}) = x_i^k(\mathbf{p}) - \omega_i^k
\]

O **excesso de demanda agregado** pelo bem \(k\) é:

\[
Z^k(\mathbf{p}) = \sum_{i=1}^{I} z_i^k(\mathbf{p}) = \sum_{i=1}^{I} x_i^k(\mathbf{p}) - \bar{\omega}^k
\]

O equilíbrio walrasiano requer \(Z^k(\mathbf{p}^*) = 0\) para todo \(k = 1, \ldots, n\) (ou, mais geralmente, \(Z^k(\mathbf{p}^*) \leq 0\) com igualdade se \(p_k^* > 0\)).

### Propriedades das funções de excesso de demanda

As funções de excesso de demanda agregado satisfazem:

1. **Homogeneidade de grau zero**: \(Z^k(\lambda \mathbf{p}) = Z^k(\mathbf{p})\) para todo \(\lambda > 0\).
2. **Continuidade**: sob hipóteses adequadas sobre preferências (contínuas, convexas, localmente não saciadas).
3. **Lei de Walras** (ver abaixo).

### Lei de Walras

!!! abstract "Lei de Walras"
    Para qualquer vetor de preços \(\mathbf{p}\), o valor total do excesso de demanda é identicamente zero:
    \[
    \sum_{k=1}^{n} p_k \cdot Z^k(\mathbf{p}) \equiv 0
    \]

A Lei de Walras decorre diretamente do fato de que cada consumidor satisfaz sua restrição orçamentária com igualdade (pela não saciedade local):

\[
\mathbf{p} \cdot \mathbf{x}_i(\mathbf{p}) = \mathbf{p} \cdot \boldsymbol{\omega}_i \quad \forall\, i
\]

Somando sobre todos os consumidores:

\[
\sum_{i} \mathbf{p} \cdot \mathbf{x}_i(\mathbf{p}) = \sum_{i} \mathbf{p} \cdot \boldsymbol{\omega}_i \quad \Longrightarrow \quad \mathbf{p} \cdot \mathbf{Z}(\mathbf{p}) = 0
\]

!!! tip "Consequência importante"
    A Lei de Walras implica que, em um sistema com \(n\) mercados, se \(n - 1\) deles estão em equilíbrio, o \(n\)-ésimo mercado também estará necessariamente em equilíbrio. Portanto, há apenas \(n - 1\) equações de equilíbrio independentes — exatamente o número de preços relativos a determinar (após normalização).

---

## 13.8 Existência de Equilíbrio

### O Teorema do Ponto Fixo de Brouwer

!!! abstract "Teorema do Ponto Fixo de Brouwer"
    Seja \(f: \Delta \to \Delta\) uma função contínua de um conjunto convexo e compacto \(\Delta \subset \mathbb{R}^n\) nele mesmo. Então existe pelo menos um ponto \(\mathbf{x}^* \in \Delta\) tal que:
    \[
    f(\mathbf{x}^*) = \mathbf{x}^*
    \]

### Aplicação à existência de equilíbrio

A ideia central é construir uma função que mapeia preços em preços e cuja ponto fixo corresponda a um equilíbrio walrasiano. Normalizamos os preços no **simplex unitário**:

\[
\Delta = \left\{ \mathbf{p} \in \mathbb{R}^n_+ : \sum_{k=1}^{n} p_k = 1 \right\}
\]

Definimos uma função de ajuste de preços \(g: \Delta \to \Delta\):

\[
g_k(\mathbf{p}) = \frac{p_k + \max\{0, Z^k(\mathbf{p})\}}{1 + \sum_{j=1}^{n} \max\{0, Z^j(\mathbf{p})\}}
\]

Esta função eleva o preço de bens com excesso de demanda positivo e reduz (relativamente) o de bens com excesso de oferta. Verifica-se que:

- \(g\) mapeia \(\Delta\) em \(\Delta\) (os novos preços são não negativos e somam 1).
- \(g\) é contínua (pois \(Z\) é contínua e \(\max\) preserva continuidade).

Pelo Teorema de Brouwer, existe \(\mathbf{p}^*\) tal que \(g(\mathbf{p}^*) = \mathbf{p}^*\). Pode-se mostrar, usando a Lei de Walras, que isso implica \(Z^k(\mathbf{p}^*) \leq 0\) para todo \(k\), com igualdade se \(p_k^* > 0\) — exatamente as condições de equilíbrio walrasiano.

!!! abstract "Teorema de Existência do Equilíbrio Walrasiano (Arrow-Debreu, 1954)"
    Se as preferências dos consumidores são contínuas, convexas e localmente não saciadas, e se as dotações agregadas são estritamente positivas, então existe pelo menos um equilíbrio walrasiano.

!!! note "Unicidade e estabilidade"
    O Teorema de Brouwer garante existência, mas não unicidade. Resultados de unicidade requerem condições adicionais sobre as funções de excesso de demanda (por exemplo, a condição de substitutibilidade bruta). Da mesma forma, a estabilidade do equilíbrio sob processos de ajuste *tâtonnement* requer hipóteses adicionais.

---

## 13.9 Modelo Matemático de Produção e Troca

### Extensão com produção

Quando incluímos firmas na economia, o modelo se generaliza. Com \(J\) firmas, cada firma \(j\) escolhe um plano de produção \(\mathbf{y}_j \in Y_j\) (seu conjunto de produção) para maximizar lucro:

\[
\max_{\mathbf{y}_j \in Y_j} \mathbf{p} \cdot \mathbf{y}_j
\]

Os consumidores possuem ações \(\theta_{ij}\) nas firmas, de modo que a renda do consumidor \(i\) inclui os lucros distribuídos:

\[
m_i(\mathbf{p}) = \mathbf{p} \cdot \boldsymbol{\omega}_i + \sum_{j=1}^{J} \theta_{ij} \cdot \pi_j(\mathbf{p})
\]

onde \(\pi_j(\mathbf{p}) = \mathbf{p} \cdot \mathbf{y}_j^*(\mathbf{p})\) é o lucro maximizado da firma \(j\).

### Equilíbrio com produção

!!! definition "Equilíbrio walrasiano com produção"
    Um equilíbrio walrasiano com produção é um vetor de preços \(\mathbf{p}^*\), alocações de consumo \(\{\mathbf{x}_i^*\}\) e planos de produção \(\{\mathbf{y}_j^*\}\) tais que:

    1. Cada consumidor \(i\) maximiza utilidade sujeito à restrição orçamentária ao preço \(\mathbf{p}^*\).
    2. Cada firma \(j\) maximiza lucro ao preço \(\mathbf{p}^*\).
    3. Todos os mercados se equilibram:
    \[
    \sum_{i=1}^{I} \mathbf{x}_i^* = \sum_{i=1}^{I} \boldsymbol{\omega}_i + \sum_{j=1}^{J} \mathbf{y}_j^*
    \]

A Lei de Walras generaliza-se naturalmente: o valor do excesso de demanda (agora incorporando produção) é identicamente zero. O teorema de existência de Arrow-Debreu aplica-se com hipóteses adicionais de convexidade sobre os conjuntos de produção.

---

## 13.10 Modelos Computáveis de Equilíbrio Geral (CGE)

### Da teoria à prática

Os modelos de equilíbrio geral computável (CGE, do inglês *Computable General Equilibrium*) são implementações numéricas da teoria walrasiana. Eles especificam:

1. **Formas funcionais** para preferências (geralmente CES — elasticidade de substituição constante) e tecnologias (funções de produção Leontief, Cobb-Douglas ou CES aninhadas).
2. **Calibração** com dados de uma Matriz de Insumo-Produto ou de uma SAM (Matriz de Contabilidade Social).
3. **Solução numérica** do sistema de equações de equilíbrio via algoritmos iterativos.

### Estrutura típica

Um modelo CGE típico contém:

- Blocos de demanda: sistema de demanda derivado da maximização de utilidade.
- Blocos de oferta: funções de custo derivadas da minimização de custos.
- Condições de equilíbrio em mercados de bens, fatores e comércio exterior.
- Regras de fechamento: hipóteses sobre quais variáveis são endógenas e quais são exógenas (desemprego, balança comercial, receita do governo etc.).

### Tipos de análise

Modelos CGE são usados para simulações de **estática comparativa**: comparam o equilíbrio antes e depois de um choque de política (reforma tributária, acordo comercial, choque de preços de commodities). Os modelos **dinâmicos** incorporam acumulação de capital e crescimento.

!!! tip "Software"
    Os modelos CGE mais conhecidos utilizam o software GAMS (General Algebraic Modeling System) ou GEMPACK. Modelos globais como o GTAP (Global Trade Analysis Project) permitem análise de comércio internacional com desagregação por país e setor.

---

## Box Brasil: Modelos CGE Aplicados ao Brasil

!!! example "Box Brasil: Equilíbrio geral computável e políticas comerciais"
    O Brasil tem uma tradição relevante no desenvolvimento e aplicação de modelos de equilíbrio geral computável para avaliação de políticas públicas. Diversas instituições — como o IPEA (Instituto de Pesquisa Econômica Aplicada), a FGV (Fundação Getulio Vargas), a ESALQ/USP e universidades federais — mantêm modelos CGE calibrados para a economia brasileira.

    **Principais modelos brasileiros:**

    - **TERM-BR** (The Enormous Regional Model - Brasil): desenvolvido com base no modelo australiano TERM, é um CGE multiregional que desagrega a economia brasileira por unidade federativa. Utilizado para analisar impactos regionais de políticas fiscais e choques de infraestrutura.
    - **BeGreen**: modelo dinâmico CGE desenvolvido pelo CEDEPLAR/UFMG, voltado para análise ambiental e energética.
    - **Modelos GTAP com extensão brasileira**: utilizados para avaliar acordos comerciais como o Mercosul-União Europeia.

    **Análise de políticas comerciais:**

    Estudos do IPEA utilizando modelos CGE avaliaram os impactos de diferentes cenários de liberalização comercial sobre a economia brasileira. Resultados típicos incluem:

    | Cenário de política | PIB (var. %) | Exportações (var. %) | Importações (var. %) | Bem-estar (var. equiv., R\$ bi) |
    |---|---|---|---|---|
    | Acordo Mercosul-UE (cenário base) | +0,3 a +0,5 | +3,0 a +6,0 | +4,0 a +8,0 | +5 a +15 |
    | Liberalização unilateral (50% tarifas) | +0,5 a +1,2 | +5,0 a +10,0 | +8,0 a +15,0 | +10 a +25 |
    | Reforma tributária (IVA nacional) | +2,0 a +3,5 | +2,0 a +5,0 | +3,0 a +6,0 | +30 a +60 |

    *Nota: intervalos refletem diferentes especificações e fechamentos dos modelos.*

    **Lições dos modelos CGE para o Brasil:**

    1. **Efeitos setoriais heterogêneos**: A liberalização comercial tende a expandir setores com vantagem comparativa (agropecuária, mineração) e contrair setores protegidos (indústria automotiva, eletrônicos). O modelo CGE permite quantificar esses efeitos de recomposição setorial que a análise de equilíbrio parcial ignora.

    2. **Efeitos regionais**: Dada a heterogeneidade produtiva regional do Brasil, políticas comerciais afetam de forma desigual as unidades da federação. Modelos como o TERM-BR mostram que a liberalização comercial tende a beneficiar mais as regiões Centro-Oeste e Sul (agroexportadoras) e menos o Sudeste industrial.

    3. **Interações fiscais**: A reforma tributária é o cenário com maiores ganhos de bem-estar nos modelos CGE, pois o sistema tributário brasileiro introduz distorções que afetam múltiplos mercados simultaneamente — exatamente o tipo de fenômeno que a análise de equilíbrio geral captura e a parcial subestima.

    4. **Limitações**: Os modelos CGE baseiam-se em hipóteses de concorrência perfeita (na maioria das versões), retornos constantes de escala e pleno emprego de fatores. Extensões incorporando economias de escala, concorrência imperfeita e desemprego (modelos "novos CGE") são áreas ativas de pesquisa no Brasil.

---

## Exercícios

**Exercício 13.1.** Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (1 e 2). As dotações são \(\boldsymbol{\omega}_A = (10, 2)\) e \(\boldsymbol{\omega}_B = (2, 8)\). As funções de utilidade são \(U_A = x_1^A \cdot x_2^A\) e \(U_B = x_1^B \cdot x_2^B\) (Cobb-Douglas com parâmetros iguais).

(a) Derive a curva de contrato.

(b) Encontre o equilíbrio walrasiano (preços e alocações), normalizando \(p_2 = 1\).

(c) Verifique a Lei de Walras.

(d) Verifique que o equilíbrio pertence ao núcleo.

---

**Exercício 13.2.** Em uma economia \(2 \times 2 \times 2\) (dois bens, dois consumidores, dois insumos), mostre que as seguintes condições são necessárias e suficientes para a eficiência de Pareto:

(a) \(TMS_A^{12} = TMS_B^{12}\) (eficiência na troca).

(b) \(TMST_1^{LK} = TMST_2^{LK}\) (eficiência na produção).

(c) \(TMT^{12} = TMS^{12}\) (eficiência no mix de produtos).

Explique por que cada condição é necessária, usando argumentos de contradição.

---

**Exercício 13.3.** Considere uma economia com três bens (\(k = 1, 2, 3\)) e funções de excesso de demanda:

\[
Z^1(\mathbf{p}) = 3\frac{p_2}{p_1} + 2\frac{p_3}{p_1} - 5
\]

\[
Z^2(\mathbf{p}) = -\frac{p_2}{p_1} + \frac{p_3}{p_1} + 1
\]

(a) Verifique que essas funções são homogêneas de grau zero.

(b) Use a Lei de Walras para derivar \(Z^3(\mathbf{p})\).

(c) Normalizando \(p_1 = 1\), encontre os preços de equilíbrio walrasiano.

---

**Exercício 13.4.** Apresente uma demonstração intuitiva (não formal) de por que o equilíbrio competitivo satisfaz as três condições de eficiência de Pareto listadas na tabela deste capítulo. Use o fato de que, em concorrência perfeita:

- Consumidores igualam \(TMS = p_1/p_2\)
- Produtores igualam \(TMST = w/r\)
- Maximização de lucro implica \(p = CMg\)

---

**Exercício 13.5.** Um país negocia um acordo de livre comércio que eliminará tarifas de importação sobre produtos industrializados. Usando a estrutura conceitual de equilíbrio geral:

(a) Explique por que a análise de equilíbrio parcial (mercado por mercado) pode subestimar ou superestimar os efeitos do acordo.

(b) Liste três canais pelos quais a eliminação de tarifas em um setor afeta outros setores da economia.

(c) Discuta como um modelo CGE capturaria esses efeitos intersetoriais e quais dados seriam necessários para calibrá-lo.

(d) Quais hipóteses do modelo CGE padrão (concorrência perfeita, retornos constantes, pleno emprego) são mais problemáticas para a análise da economia brasileira? Justifique.
