# Capítulo 12 — O Mercado em Ação: Oferta, Demanda e o Leiloeiro Invisível

## Introdução

Nos capítulos anteriores, construímos separadamente a teoria do consumidor e a teoria da firma. Agora é hora de reunir essas peças e examinar como compradores e vendedores interagem nos mercados competitivos para determinar preços e quantidades de equilíbrio. Este capítulo desenvolve a análise de equilíbrio parcial marshalliano — o estudo de um mercado individual tomando os demais como dados — e suas aplicações à análise de bem-estar e políticas públicas.

A metáfora do "leiloeiro walrasiano" — uma entidade fictícia que anuncia preços e ajusta-os até que oferta e demanda se igualem — nos ajuda a compreender o mecanismo de formação de preços. Embora nenhum leiloeiro real exista na maioria dos mercados, o resultado competitivo se assemelha ao que tal mecanismo produziria.

Ao longo do capítulo, analisaremos: a agregação de demandas individuais em demanda de mercado; a determinação de preços no curtíssimo, curto e longo prazos; estática comparativa; eficiência econômica; controles de preços; e incidência tributária.

---

## 12.1 Demanda de Mercado

### Agregação de demandas individuais

A demanda de mercado é obtida pela soma horizontal das demandas individuais de todos os consumidores. Se existem \(n\) consumidores e cada um possui uma função de demanda \(x_i(p)\), a demanda de mercado é:

\[
X(p) = \sum_{i=1}^{n} x_i(p)
\]

!!! definition "Demanda de mercado"
    A **demanda de mercado** por um bem é a quantidade total demandada por todos os consumidores a cada nível de preço, ou seja, a soma horizontal das curvas de demanda individuais.

### Propriedades da demanda de mercado

A curva de demanda de mercado herda propriedades das demandas individuais:

1. **Inclinação negativa**: Se todas as demandas individuais são decrescentes no preço (bens normais ou bens de Giffen excluídos), a demanda de mercado também será decrescente.
2. **Elasticidade-preço**: A elasticidade-preço da demanda de mercado é uma média ponderada das elasticidades individuais, com pesos dados pelas participações de cada consumidor na demanda total:

\[
\varepsilon_{X,p} = \sum_{i=1}^{n} \frac{x_i}{X} \cdot \varepsilon_{x_i, p}
\]

3. **Efeitos renda e substituição**: Deslocamentos na demanda de mercado refletem mudanças na renda agregada, na distribuição de renda, nos preços de bens relacionados e nas preferências dos consumidores.

!!! tip "Agregação e heterogeneidade"
    Mesmo que demandas individuais apresentem descontinuidades ou formas peculiares, a demanda de mercado tende a ser mais "suave" quando o número de consumidores é grande, devido à diversidade de preferências e rendas.

---

## 12.2 Determinação de Preço no Curtíssimo Prazo

No curtíssimo prazo (ou período de mercado), a quantidade ofertada é fixa — os produtores já trouxeram seus bens ao mercado e não podem alterar a produção. A curva de oferta é perfeitamente inelástica (vertical).

\[
S = \bar{Q}
\]

Neste caso, o preço de equilíbrio é determinado exclusivamente pela demanda:

\[
p^* \text{ tal que } X(p^*) = \bar{Q}
\]

Se a demanda se desloca, todo o ajuste ocorre via preço. Em mercados de bens perecíveis — como peixes frescos ou flores —, esta análise é particularmente relevante: o vendedor aceita qualquer preço que o mercado determine, pois a alternativa é perder a mercadoria.

---

### Gráfico interativo: Equilíbrio de Oferta e Demanda

Explore como mudanças nos parâmetros de oferta e demanda afetam o equilíbrio de mercado. Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor (azul) e do produtor (verde).

<iframe src="../../graficos/cap12/oferta-demanda.html" width="100%" height="500" style="border:none;border-radius:8px;"></iframe>

---

## 12.3 Determinação de Preço no Curto Prazo

### Equilíbrio parcial marshalliano

No curto prazo, as firmas podem ajustar a produção variando insumos variáveis, mas o capital é fixo e o número de firmas no mercado é dado. A oferta de curto prazo de cada firma é dada por sua curva de custo marginal acima do custo variável médio mínimo:

\[
S_j(p) = \begin{cases} q_j \text{ tal que } CMg_j(q_j) = p, & \text{se } p \geq CVMe_{\min} \\ 0, & \text{se } p < CVMe_{\min} \end{cases}
\]

A oferta de mercado de curto prazo é a soma horizontal das ofertas individuais das \(m\) firmas:

\[
S(p) = \sum_{j=1}^{m} S_j(p)
\]

!!! definition "Equilíbrio de curto prazo"
    O **equilíbrio competitivo de curto prazo** ocorre ao preço \(p^*\) tal que a quantidade demandada pelo mercado iguala a quantidade ofertada:
    \[
    X(p^*) = S(p^*)
    \]
    A esse preço, nenhum comprador ou vendedor individual tem incentivo para alterar seu comportamento.

### Estabilidade do equilíbrio

O equilíbrio marshalliano é estável quando, a preços acima do equilíbrio, há excesso de oferta (pressionando o preço para baixo) e, a preços abaixo, há excesso de demanda (pressionando o preço para cima). Formalmente, a condição de estabilidade walrasiana requer:

\[
\frac{dX}{dp} - \frac{dS}{dp} < 0
\]

o que é satisfeito sempre que a demanda é negativamente inclinada e a oferta é positivamente inclinada.

---

## 12.4 Estática Comparativa

### Deslocamentos de oferta e demanda

A análise de estática comparativa examina como o equilíbrio muda em resposta a choques exógenos. Considere o equilíbrio definido implicitamente por:

\[
X(p, \alpha) = S(p, \beta)
\]

onde \(\alpha\) é um parâmetro de demanda (por exemplo, renda) e \(\beta\) é um parâmetro de oferta (por exemplo, custo de um insumo).

Diferenciando totalmente:

\[
\frac{\partial X}{\partial p} dp + \frac{\partial X}{\partial \alpha} d\alpha = \frac{\partial S}{\partial p} dp + \frac{\partial S}{\partial \beta} d\beta
\]

Rearranjando:

\[
\frac{dp}{d\alpha} = \frac{\partial X / \partial \alpha}{\partial S / \partial p - \partial X / \partial p} > 0
\]

se um aumento em \(\alpha\) desloca a demanda para a direita (\(\partial X / \partial \alpha > 0\)) e as curvas têm inclinações convencionais.

Analogamente, um aumento no custo de insumos (\(\beta\)):

\[
\frac{dp}{d\beta} = \frac{-\partial S / \partial \beta}{\partial S / \partial p - \partial X / \partial p} > 0
\]

se o aumento em \(\beta\) reduz a oferta (\(\partial S / \partial \beta < 0\)).

!!! note "Magnitude dos efeitos"
    A magnitude da variação de preço depende das elasticidades relativas de oferta e demanda. Quanto mais inelástica a demanda (ou a oferta), maior a variação de preço decorrente de um deslocamento da outra curva.

---

## 12.5 Análise de Longo Prazo

### Entrada, saída e lucro zero

No longo prazo, todos os fatores de produção são variáveis e há livre entrada e saída de firmas no mercado. Se as firmas existentes obtêm lucro econômico positivo (\(\pi > 0\)), novas firmas entram, deslocando a oferta para a direita e reduzindo o preço. Se há prejuízo (\(\pi < 0\)), firmas saem, deslocando a oferta para a esquerda e elevando o preço. No equilíbrio de longo prazo:

\[
\pi = 0 \quad \Longrightarrow \quad p = CMe_{\min}
\]

!!! definition "Equilíbrio competitivo de longo prazo"
    No **equilíbrio competitivo de longo prazo**, três condições são satisfeitas simultaneamente:

    1. Cada firma maximiza lucro: \(p = CMg(q^*)\)
    2. Nenhuma firma deseja entrar ou sair: \(\pi = 0 \Rightarrow p = CMe(q^*)\)
    3. Oferta iguala demanda: \(X(p^*) = m^* \cdot q^*\)

    onde \(m^*\) é o número de firmas de equilíbrio.

---

### Gráfico interativo: Equilíbrio de Longo Prazo

Explore a relação entre a firma individual e o mercado no longo prazo. Ajuste o número de firmas e o deslocamento da demanda para observar como a entrada e saída de firmas conduzem o preço ao custo médio mínimo (lucro zero). O painel esquerdo mostra a firma (CMg e CMe) e o direito mostra o mercado (S e D).

<iframe src="../../graficos/cap12/equilibrio-longo-prazo.html" width="100%" height="620" style="border:none;border-radius:8px;"></iframe>

---

## 12.6 Equilíbrio de Longo Prazo: Custos Constantes, Crescentes e Decrescentes

### Indústria de custos constantes

Se a entrada de novas firmas não altera os preços dos insumos, as curvas de custo das firmas permanecem inalteradas. A curva de oferta de longo prazo da indústria é **horizontal** ao nível \(p = CMe_{\min}\).

Um aumento na demanda leva à entrada de firmas, aumento na quantidade total, mas o preço retorna ao mesmo nível original.

### Indústria de custos crescentes

Quando a entrada de novas firmas eleva os preços dos insumos (por exemplo, terra para agricultura, mão de obra especializada), as curvas de custo se deslocam para cima. A curva de oferta de longo prazo é **positivamente inclinada**.

O preço de equilíbrio de longo prazo será mais alto após o aumento na demanda.

### Indústria de custos decrescentes

Em casos mais raros, a entrada de firmas pode reduzir custos — por exemplo, via economias de escala externas à firma (mas internas à indústria), como o desenvolvimento de infraestrutura especializada ou de uma rede de fornecedores. A curva de oferta de longo prazo é **negativamente inclinada**.

| Tipo de indústria | Efeito da entrada sobre custos | Inclinação da oferta de LP | Efeito de ↑D sobre preço de LP |
|---|---|---|---|
| Custos constantes | Nenhum | Horizontal | Preço inalterado |
| Custos crescentes | Custos sobem | Positiva | Preço sobe |
| Custos decrescentes | Custos caem | Negativa | Preço cai |

---

## 12.7 Elasticidade de Oferta de Longo Prazo

A elasticidade de oferta de longo prazo mede a responsividade da quantidade ofertada de longo prazo a variações no preço:

\[
\varepsilon_{S}^{LP} = \frac{\Delta Q / Q}{\Delta p / p} = \frac{dQ}{dp} \cdot \frac{p}{Q}
\]

!!! definition "Elasticidade de oferta de longo prazo"
    A **elasticidade de oferta de longo prazo** reflete não apenas o ajuste de produção das firmas existentes, mas também a entrada/saída de firmas e o ajuste dos preços dos insumos.

Para uma indústria de custos constantes, \(\varepsilon_S^{LP} = \infty\) (oferta perfeitamente elástica). Para indústrias de custos crescentes, \(\varepsilon_S^{LP}\) é positiva e finita. Empiricamente, a elasticidade de oferta de longo prazo é maior do que a de curto prazo, pois no longo prazo há mais margens de ajuste disponíveis.

---

## 12.8 Excedente do Produtor no Longo Prazo

### Renda ricardiana

No curto prazo, o excedente do produtor é a diferença entre a receita total e o custo variável total. No longo prazo, com lucro zero, o excedente do produtor de cada firma individual é zero. No entanto, o excedente do produtor **da indústria** pode ser positivo em indústrias de custos crescentes.

Esse excedente de longo prazo reflete a **renda ricardiana** — pagamentos a fatores de produção cujos preços são elevados pela expansão da indústria. Por exemplo, quando a entrada de firmas agrícolas eleva o preço da terra, os proprietários de terras mais férteis (inframarginais) obtêm rendas que constituem o excedente do produtor de longo prazo.

!!! definition "Renda ricardiana"
    A **renda ricardiana** (ou renda econômica) é o pagamento a um fator de produção acima do mínimo necessário para mantê-lo em seu uso corrente. No longo prazo competitivo, o excedente do produtor da indústria reflete exclusivamente essas rendas.

Formalmente, o excedente do produtor de longo prazo é a área acima da curva de oferta de longo prazo e abaixo do preço de equilíbrio:

\[
EP_{LP} = \int_0^{Q^*} \left[ p^* - p_S(Q) \right] dQ
\]

onde \(p_S(Q)\) é a curva de oferta inversa de longo prazo.

---

## 12.9 Eficiência Econômica e Análise de Bem-Estar Aplicada

### Excedente do consumidor e excedente do produtor

O **excedente do consumidor** (EC) mede o ganho líquido dos consumidores, sendo a diferença entre a disposição a pagar e o preço efetivamente pago:

\[
EC = \int_0^{Q^*} \left[ p_D(Q) - p^* \right] dQ
\]

O **excedente do produtor** (EP) mede o ganho líquido dos produtores:

\[
EP = \int_0^{Q^*} \left[ p^* - p_S(Q) \right] dQ
\]

O **bem-estar social** (W) na análise de equilíbrio parcial é:

\[
W = EC + EP
\]

!!! abstract "Teorema: Eficiência do equilíbrio competitivo (equilíbrio parcial)"
    O equilíbrio competitivo maximiza o bem-estar social \(W = EC + EP\). Qualquer desvio da quantidade de equilíbrio competitivo — seja por intervenção governamental ou por poder de mercado — gera uma **perda de peso morto** (PPM), ou seja, uma redução líquida do bem-estar total.

!!! proof "Demonstração"
    No equilíbrio competitivo, a quantidade transacionada \(Q^*\) é determinada por \(p_D(Q^*) = p_S(Q^*)\). O bem-estar social é:

    \[
    W(Q) = \int_0^{Q} \left[ p_D(t) - p_S(t) \right] dt
    \]

    Para maximizar \(W\), tomamos a condição de primeira ordem:

    \[
    \frac{dW}{dQ} = p_D(Q) - p_S(Q) = 0
    \]

    o que implica \(p_D(Q^*) = p_S(Q^*)\), exatamente a condição de equilíbrio competitivo.

    A condição de segunda ordem é:

    \[
    \frac{d^2 W}{dQ^2} = \frac{dp_D}{dQ} - \frac{dp_S}{dQ} < 0
    \]

    Isso é satisfeito, pois a demanda inversa é decrescente (\(dp_D/dQ < 0\)) e a oferta inversa é crescente (\(dp_S/dQ > 0\)). Portanto, \(Q^*\) é de fato um máximo de bem-estar. \(\blacksquare\)

Perloff (2017, Cap. 9) apresenta aplicações empíricas do conceito de excedente em análise de políticas públicas, ilustrando como quantificar perdas de peso morto em mercados reais.

---

## 12.10 Controles de Preços e Escassez

### Preço máximo (teto de preço)

Quando o governo estabelece um preço máximo \(\bar{p} < p^*\), a quantidade ofertada cai e a quantidade demandada aumenta, gerando **escassez**:

\[
\text{Escassez} = X(\bar{p}) - S(\bar{p}) > 0
\]

O preço máximo gera perda de peso morto, pois unidades que seriam eficientes de produzir e consumir deixam de ser transacionadas.

### Preço mínimo (piso de preço)

Quando o governo estabelece um preço mínimo \(\underline{p} > p^*\), a quantidade ofertada excede a quantidade demandada, gerando **excedente**:

\[
\text{Excedente} = S(\underline{p}) - X(\underline{p}) > 0
\]

!!! tip "Exemplos de controles de preços"
    - **Preço máximo**: controle de aluguéis, tabelamento de medicamentos, congelamento de preços (como no Plano Cruzado, 1986).
    - **Preço mínimo**: salário mínimo, preços mínimos agrícolas (PGPM — Política de Garantia de Preços Mínimos no Brasil).

---

### Gráfico interativo: Controles de Preços

Alterne entre preço máximo (teto) e preço mínimo (piso) e ajuste o nível do preço controlado para observar a escassez ou excedente criados, a variação nos excedentes do consumidor e do produtor, e a perda de peso morto resultante.

<iframe src="../../graficos/cap12/controles-precos.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>

---

## 12.11 Incidência Tributária: Quem Realmente Paga o Imposto?

### Imposto por unidade

Considere um imposto específico de \(t\) reais por unidade vendida. No equilíbrio com imposto, o preço pago pelo consumidor (\(p_c\)) e o preço recebido pelo produtor (\(p_p\)) diferem exatamente pelo valor do imposto:

\[
p_c = p_p + t
\]

O novo equilíbrio satisfaz:

\[
X(p_c) = S(p_p) = S(p_c - t)
\]

!!! abstract "Teorema: Incidência tributária e elasticidades"
    A divisão da carga tributária entre consumidores e produtores depende das elasticidades relativas de oferta e demanda. A fração do imposto absorvida pelo consumidor é:

    \[
    \frac{dp_c}{dt} = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|}
    \]

    e a fração absorvida pelo produtor é:

    \[
    \frac{-dp_p}{dt} = \frac{|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}
    \]

    onde \(\varepsilon_S\) é a elasticidade-preço da oferta e \(|\varepsilon_D|\) é o valor absoluto da elasticidade-preço da demanda.

!!! proof "Demonstração"
    Partimos da condição de equilíbrio com imposto: \(X(p_c) = S(p_c - t)\). Diferenciando em relação a \(t\):

    \[
    \frac{dX}{dp_c} \cdot \frac{dp_c}{dt} = \frac{dS}{dp_p} \cdot \left( \frac{dp_c}{dt} - 1 \right)
    \]

    Denotando \(X' = dX/dp_c\) e \(S' = dS/dp_p\):

    \[
    X' \cdot \frac{dp_c}{dt} = S' \cdot \frac{dp_c}{dt} - S'
    \]

    \[
    \frac{dp_c}{dt} (X' - S') = -S'
    \]

    \[
    \frac{dp_c}{dt} = \frac{-S'}{X' - S'} = \frac{S'}{S' - X'}
    \]

    Multiplicando numerador e denominador por \(p/Q\):

    \[
    \frac{dp_c}{dt} = \frac{S' \cdot (p/Q)}{S' \cdot (p/Q) - X' \cdot (p/Q)} = \frac{\varepsilon_S}{\varepsilon_S - \varepsilon_D} = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|}
    \]

    onde usamos \(\varepsilon_D < 0\), logo \(-\varepsilon_D = |\varepsilon_D|\).

    Para o produtor: \(p_p = p_c - t\), então:

    \[
    \frac{dp_p}{dt} = \frac{dp_c}{dt} - 1 = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|} - 1 = \frac{-|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}
    \]

    Portanto, \(\frac{-dp_p}{dt} = \frac{|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}\). \(\blacksquare\)

**Casos-limite:**

- Se a demanda é perfeitamente inelástica (\(|\varepsilon_D| = 0\)): o consumidor absorve 100% do imposto.
- Se a oferta é perfeitamente inelástica (\(\varepsilon_S = 0\)): o produtor absorve 100% do imposto.
- Se a demanda é perfeitamente elástica (\(|\varepsilon_D| \to \infty\)): o produtor absorve 100%.
- Se a oferta é perfeitamente elástica (\(\varepsilon_S \to \infty\)): o consumidor absorve 100%.

!!! note "Irrelevância do lado legal"
    A incidência econômica do imposto independe de quem tem a obrigação legal de recolhê-lo. Seja o imposto cobrado do vendedor ou do comprador, a divisão da carga é determinada pelas elasticidades.

---

### Gráfico interativo: Incidência Tributária

Visualize como um imposto por unidade afeta o equilíbrio de mercado. Ajuste o valor do imposto e as elasticidades de oferta e demanda para observar a divisão da carga tributária entre comprador e vendedor, a receita do governo e a perda de peso morto. Alterne entre imposto sobre o vendedor e sobre o comprador para verificar a irrelevância do lado legal.

<iframe src="../../graficos/cap12/incidencia-tributaria.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>

---

## Tabela: Efeitos de Políticas sobre EC, EP e PPM

A tabela abaixo resume os efeitos das principais políticas de intervenção em um mercado competitivo.

| Política | Efeito sobre EC | Efeito sobre EP | Receita/Gasto Gov. | PPM |
|---|---|---|---|---|
| **Imposto por unidade** (\(t\)) | Diminui: \(-\Delta EC\) | Diminui: \(-\Delta EP\) | Receita: \(R = t \cdot Q_t\) | \(PPM = \frac{1}{2} t \cdot \Delta Q > 0\) |
| **Subsídio por unidade** (\(s\)) | Aumenta | Aumenta | Gasto: \(G = s \cdot Q_s\) | \(PPM = \frac{1}{2} s \cdot \Delta Q > 0\) |
| **Preço máximo** (\(\bar{p} < p^*\)) | Ambíguo (↑ preço menor, ↓ quantidade) | Diminui | — | \(PPM > 0\) (escassez) |
| **Preço mínimo** (\(\underline{p} > p^*\)) | Diminui | Ambíguo (↑ preço maior, ↓ quantidade vendida) | Custo se gov. compra excedente | \(PPM > 0\) (excesso) |

!!! note "Perda de peso morto"
    A perda de peso morto (PPM), também chamada de *deadweight loss* ou triângulo de Harberger, representa a perda de bem-estar social que não é capturada por nenhum agente — nem consumidores, nem produtores, nem governo. Para um imposto com curvas lineares:
    \[
    PPM = \frac{1}{2} \cdot t^2 \cdot \frac{|\varepsilon_D| \cdot \varepsilon_S}{|\varepsilon_D| + \varepsilon_S} \cdot \frac{Q_0}{p_0}
    \]

---

## Box Brasil: Mercado de Commodities Agrícolas — A Formação de Preços da Soja

!!! example "Box Brasil: Soja brasileira e o leiloeiro global"
    O Brasil é o maior produtor e exportador mundial de soja, com safra recorde de aproximadamente 155 milhões de toneladas na safra 2023/24 (CONAB). Apesar da escala gigantesca, o Brasil atua essencialmente como **tomador de preços** (*price-taker*) no mercado internacional, cujos preços são formados na Bolsa de Chicago (CBOT).

    **Formação de preços internos:**

    O preço doméstico da soja é determinado pela paridade de exportação:

    \[
    p_{\text{interno}} = p_{\text{CBOT}} \times e + \text{prêmio de exportação} - \text{custos logísticos}
    \]

    onde \(e\) é a taxa de câmbio (R\$/US\$). O indicador CEPEA/ESALQ (Centro de Estudos Avançados em Economia Aplicada, da ESALQ/USP) é a principal referência de preços domésticos, calculado diariamente com base em transações efetivas no mercado físico.

    **Elasticidades e estática comparativa:**

    Estudos do IPEA e da CONAB estimam que a elasticidade-preço da oferta de soja no Brasil no longo prazo situa-se entre 0,3 e 0,8, refletindo as possibilidades de expansão de área (conversão de pastagens degradadas) e intensificação tecnológica. A demanda global é relativamente inelástica no curto prazo, dado o uso da soja como insumo essencial na ração animal e na indústria de óleos.

    **Implicações para o modelo competitivo:**

    O mercado de soja é um caso quase ideal de concorrência perfeita: produto homogêneo, milhares de produtores, informação transparente sobre preços (CBOT em tempo real), e livre entrada/saída. A PGPM (Política de Garantia de Preços Mínimos) atua como um piso de preço, embora nos últimos anos os preços internacionais tenham se mantido muito acima dos preços mínimos fixados pelo governo, tornando a política pouco efetiva neste mercado específico.

    **Dados ilustrativos (CEPEA/ESALQ e CONAB):**

    | Safra | Produção (milhões t) | Preço médio anual (R\$/saca) | Exportação (milhões t) |
    |---|---|---|---|
    | 2019/20 | 124,8 | 89,50 | 82,9 |
    | 2020/21 | 135,9 | 155,30 | 86,1 |
    | 2021/22 | 125,5 | 183,60 | 78,7 |
    | 2022/23 | 154,6 | 142,80 | 97,3 |
    | 2023/24 | 155,3 | 120,50 | 101,2 |

    Observe a estática comparativa em ação: na safra 2020/21, choques positivos de demanda global (recuperação pós-pandemia, recomposição de estoques chineses) combinados com câmbio depreciado elevaram drasticamente o preço interno. Nas safras seguintes, a resposta da oferta (expansão de área) gradualmente pressionou os preços para baixo — uma ilustração da dinâmica de ajuste de longo prazo em indústria de custos crescentes.

---

## Exercícios

**Exercício 12.1.** Considere um mercado com 100 consumidores idênticos, cada um com demanda individual \(x_i(p) = 20 - 2p\), e 50 firmas idênticas, cada uma com oferta individual \(s_j(p) = 4p - 10\) (para \(p \geq 2{,}5\)).

(a) Derive a demanda e a oferta de mercado.

(b) Encontre o preço e a quantidade de equilíbrio.

(c) Calcule o excedente do consumidor e o excedente do produtor.

(d) Se o governo impõe um imposto de \(t = 2\) por unidade, encontre o novo equilíbrio, a receita tributária e a perda de peso morto.

---

**Exercício 12.2.** Em um mercado competitivo, a demanda é \(Q_D = 1000 - 50p\) e a oferta é \(Q_S = 25p - 200\).

(a) Encontre o equilíbrio.

(b) Suponha que o governo fixe um preço máximo de \(p = 10\). Calcule a escassez resultante e a perda de peso morto.

(c) Compare graficamente o EC antes e depois do controle de preço.

---

**Exercício 12.3.** Demonstre que, para um imposto *ad valorem* à taxa \(\tau\) (onde o consumidor paga \(p_c = (1 + \tau) p_p\)), a fração do imposto absorvida pelo consumidor também depende das elasticidades relativas de oferta e demanda. Derive a fórmula análoga à do imposto específico.

---

**Exercício 12.4.** Considere uma indústria de custos crescentes com curva de oferta de longo prazo \(p = 10 + 0{,}01Q\). A demanda é \(Q = 2000 - 50p\).

(a) Encontre o equilíbrio de longo prazo.

(b) Calcule o excedente do produtor de longo prazo (renda ricardiana).

(c) Se a demanda se desloca para \(Q' = 2500 - 50p\), encontre o novo equilíbrio e a variação na renda ricardiana.

---

**Exercício 12.5.** No mercado brasileiro de combustíveis, o governo subsidia o diesel em \(s = \text{R\$} 0{,}30\) por litro. Suponha que a demanda de diesel seja relativamente inelástica (\(|\varepsilon_D| = 0{,}3\)) e a oferta seja relativamente elástica (\(\varepsilon_S = 2{,}0\)).

(a) Qual fração do subsídio beneficia o consumidor e qual fração beneficia o produtor?

(b) Discuta as implicações distributivas e de eficiência dessa política, considerando que diesel é um insumo essencial para o transporte de cargas no Brasil.

(c) Calcule a perda de peso morto em termos do subsídio, das elasticidades e do preço e quantidade iniciais.
