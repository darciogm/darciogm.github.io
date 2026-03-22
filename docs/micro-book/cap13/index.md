# Capítulo 13 — O Leiloeiro que Ninguém Vê

Nos capítulos anteriores, construímos separadamente a teoria do consumidor e a teoria da firma. Agora é hora de reunir essas peças e examinar como compradores e vendedores interagem nos mercados competitivos para determinar preços e quantidades de equilíbrio. Este capítulo desenvolve a análise de equilíbrio parcial marshalliano — o estudo de um mercado individual tomando os demais como dados — e suas aplicações à análise de bem-estar e políticas públicas.

A metáfora do "leiloeiro walrasiano" — uma entidade fictícia que anuncia preços e ajusta-os até que oferta e demanda se igualem — nos ajuda a compreender o mecanismo de formação de preços. Embora nenhum leiloeiro real exista na maioria dos mercados, o resultado competitivo se assemelha ao que tal mecanismo produziria.

Ao longo do capítulo, analisaremos: a agregação de demandas individuais em demanda de mercado; a determinação de preços no curtíssimo, curto e longo prazos; estática comparativa; eficiência econômica; controles de preços; e incidência tributária.

---

## 13.1 Demanda de Mercado

Antes de analisar o equilíbrio de mercado, precisamos construir seus dois componentes: a demanda de mercado e a oferta de mercado. Começamos pelo lado da demanda. Nos capítulos sobre a teoria do consumidor, derivamos a demanda individual de cada agente. Mas como passar da decisão de um consumidor isolado para o comportamento agregado de milhões de compradores? A operação é surpreendentemente simples, mas suas implicações são ricas.

### Agregação de demandas individuais

A demanda de mercado é obtida pela soma horizontal das demandas individuais de todos os consumidores. Se existem \(n\) consumidores e cada um possui uma função de demanda \(x_i(p)\), a demanda de mercado é:

\[
X(p) = \sum_{i=1}^{n} x_i(p)
\]

!!! definition "Demanda de mercado"
    A **demanda de mercado** por um bem é a quantidade total demandada por todos os consumidores a cada nível de preço, ou seja, a soma horizontal das curvas de demanda individuais.

### Propriedades da demanda de mercado

A curva de demanda de mercado herda propriedades das demandas individuais:

1. **Inclinação negativa**: Se todas as demandas individuais são decrescentes no preço (excluindo-se os raros casos de bens de Giffen), a demanda de mercado também será decrescente.
2. **Elasticidade-preço**: A elasticidade-preço da demanda de mercado é uma média ponderada das elasticidades individuais, com pesos dados pelas participações de cada consumidor na demanda total:

\[
\varepsilon_{X,p} = \sum_{i=1}^{n} \frac{x_i}{X} \cdot \varepsilon_{x_i, p}
\]

3. **Efeitos renda e substituição**: Deslocamentos na demanda de mercado refletem mudanças na renda agregada, na distribuição de renda, nos preços de bens relacionados e nas preferências dos consumidores. Cabe notar que a distribuição de renda importa: uma economia com renda total de R$ 1 trilhão concentrada em poucos indivíduos terá demanda de mercado diferente de outra com a mesma renda total distribuída mais igualitariamente — pois os padrões de consumo diferem entre faixas de renda.

!!! tip "Agregação e heterogeneidade"
    Mesmo que demandas individuais apresentem descontinuidades ou formas peculiares, a demanda de mercado tende a ser mais "suave" quando o número de consumidores é grande, devido à diversidade de preferências e rendas.

---

## 13.2 Determinação de Preço no Curtíssimo Prazo

Com as ferramentas de demanda e oferta de mercado em mãos, podemos agora analisar a formação de preços. A análise ganha profundidade quando distinguimos três horizontes temporais — curtíssimo, curto e longo prazo —, cada um com diferentes graus de ajuste da oferta. Comecemos pelo caso mais simples.

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

<iframe src="../graficos/cap13/oferta-demanda.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 13.1 — Equilíbrio de oferta e demanda.** Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor e do produtor.
</p>

---

## 13.3 Determinação de Preço no Curto Prazo

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

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O preço de equilíbrio é aquele em que ninguém está frustrado — todo mundo que quer comprar a esse preço consegue, e todo mundo que quer vender encontra comprador.

    **Pense assim:** Na feira livre do seu bairro, se o quilo do tomate está caro demais, sobra tomate na barraca e o feirante baixa o preço. Se está barato demais, falta tomate e os consumidores competem entre si, puxando o preço para cima. O equilíbrio é o ponto em que a pilha de tomates na barraca "dá certo" com a fila de compradores — sem sobra nem falta.

    **Por que isso importa:** A formação de preços por oferta e demanda é o mecanismo central que coordena decisões descentralizadas de milhões de agentes — e entender esse processo é essencial para avaliar qualquer intervenção de política pública nos mercados.

### Estabilidade do equilíbrio

O equilíbrio marshalliano é estável quando, a preços acima do equilíbrio, há excesso de oferta (pressionando o preço para baixo) e, a preços abaixo, há excesso de demanda (pressionando o preço para cima). Formalmente, a condição de estabilidade walrasiana requer:

\[
\frac{dX}{dp} - \frac{dS}{dp} < 0
\]

o que é satisfeito sempre que a demanda é negativamente inclinada e a oferta é positivamente inclinada.

---

## 13.4 Estática Comparativa

Determinado o equilíbrio, a pergunta natural é: o que acontece quando as condições mudam? Se a renda dos consumidores cresce, se o preço de um insumo se eleva, se uma nova tecnologia reduz os custos de produção — como o preço e a quantidade de equilíbrio se ajustam? A **estática comparativa** é a ferramenta que nos permite responder a essas perguntas de forma rigorosa, comparando dois equilíbrios: o inicial e o que prevalece após a mudança.

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

## 13.5 Análise de Longo Prazo

A análise de curto prazo toma como dado o número de firmas no mercado. Mas no longo prazo, essa restrição se dissolve: se as firmas existentes obtêm lucro econômico positivo, novas empresas são atraídas para o setor; se há prejuízo persistente, firmas saem. Esse mecanismo de entrada e saída é o motor fundamental que conduz o mercado ao seu equilíbrio de longo prazo — e compreendê-lo é essencial para entender por que, em concorrência perfeita, o lucro econômico tende a zero.

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

<iframe src="../graficos/cap13/equilibrio-longo-prazo.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 13.2 — Equilíbrio de longo prazo: firma e mercado.** Ajuste o número de firmas e o deslocamento da demanda para observar como a entrada e saída de firmas conduzem o preço ao custo médio mínimo (lucro zero).
</p>

---

## 13.6 Equilíbrio de Longo Prazo: Custos Constantes, Crescentes e Decrescentes

A condição de lucro zero no longo prazo nos diz que \(p = CMe_{\min}\), mas qual será o nível desse preço após um aumento na demanda? A resposta depende de como a entrada de novas firmas afeta os preços dos insumos. Se os preços dos insumos permanecem inalterados, o \(CMe_{\min}\) não muda e o preço retorna ao nível original. Mas se a expansão da indústria pressiona os preços dos insumos para cima, o equilíbrio de longo prazo se estabelece a um preço mais elevado. Essa distinção dá origem a três tipos de indústria, cada um com uma forma diferente de curva de oferta de longo prazo.

### Indústria de custos constantes

Se a entrada de novas firmas não altera os preços dos insumos, as curvas de custo das firmas permanecem inalteradas. A curva de oferta de longo prazo da indústria é **horizontal** ao nível \(p = CMe_{\min}\).

Um aumento na demanda leva à entrada de firmas, aumento na quantidade total, mas o preço retorna ao mesmo nível original.

### Indústria de custos crescentes

Quando a entrada de novas firmas eleva os preços dos insumos (por exemplo, terra para agricultura, mão de obra especializada), as curvas de custo se deslocam para cima. A curva de oferta de longo prazo é **positivamente inclinada**.

O preço de equilíbrio de longo prazo será mais alto após o aumento na demanda.

### Indústria de custos decrescentes

Em casos mais raros, a entrada de firmas pode reduzir custos — por exemplo, via economias de escala externas à firma (mas internas à indústria), como o desenvolvimento de infraestrutura especializada ou de uma rede de fornecedores. A curva de oferta de longo prazo é **negativamente inclinada**. No Brasil, o polo tecnológico de Campinas (SP) é um possível exemplo: a concentração de empresas de TI gerou uma rede de fornecedores, mão de obra especializada e infraestrutura de telecomunicações que reduz os custos de cada firma individual à medida que a indústria cresce.

**Tabela 13.1 — Tipos de indústria e oferta de longo prazo

| Tipo de indústria | Efeito da entrada sobre custos | Inclinação da oferta de LP | Efeito de ↑D sobre preço de LP |
|---|---|---|---|
| Custos constantes | Nenhum | Horizontal | Preço inalterado |
| Custos crescentes | Custos sobem | Positiva | Preço sobe |
| Custos decrescentes | Custos caem | Negativa | Preço cai |

---

## 13.**7 Elasticidade de Oferta de Longo Prazo

A distinção entre indústrias de custos constantes, crescentes e decrescentes determina a inclinação da curva de oferta de longo prazo. Para quantificar essa responsividade da oferta ao preço, recorremos à elasticidade de oferta de longo prazo — uma medida que incorpora não apenas o ajuste de produção das firmas existentes, mas também a dinâmica de entrada e saída e o efeito sobre os preços dos insumos.

A elasticidade de oferta de longo prazo mede a responsividade da quantidade ofertada de longo prazo a variações no preço:

\[
\varepsilon_{S}^{LP} = \frac{\Delta Q / Q}{\Delta p / p} = \frac{dQ}{dp} \cdot \frac{p}{Q}
\]

!!! definition "Elasticidade de oferta de longo prazo"
    A **elasticidade de oferta de longo prazo** reflete não apenas o ajuste de produção das firmas existentes, mas também a entrada/saída de firmas e o ajuste dos preços dos insumos.

Para uma indústria de custos constantes, \(\varepsilon_S^{LP} = \infty\) (oferta perfeitamente elástica). Para indústrias de custos crescentes, \(\varepsilon_S^{LP}\) é positiva e finita. Empiricamente, a elasticidade de oferta de longo prazo é maior do que a de curto prazo, pois no longo prazo há mais margens de ajuste disponíveis.

---

## 13.8 Excedente do Produtor no Longo Prazo

### Renda ricardiana

Se no longo prazo competitivo o lucro econômico de cada firma individual é zero, como pode haver excedente do produtor positivo para a indústria como um todo? A resposta reside na heterogeneidade dos fatores de produção — e nos conduz ao conceito clássico de **renda ricardiana**, que remonta a David Ricardo e sua análise das terras de diferentes fertilidades.

No curto prazo, o excedente do produtor é a diferença entre a receita total e o custo variável total. No longo prazo, com lucro zero, o excedente do produtor de cada firma individual é zero. No entanto, o excedente do produtor **da indústria** pode ser positivo em indústrias de custos crescentes.

Esse excedente de longo prazo reflete a **renda ricardiana** — pagamentos a fatores de produção cujos preços são elevados pela expansão da indústria. Por exemplo, quando a entrada de firmas agrícolas eleva o preço da terra, os proprietários de terras mais férteis (inframarginais) obtêm rendas que constituem o excedente do produtor de longo prazo.

!!! example "Renda ricardiana na agricultura brasileira"
    No Cerrado, a expansão da fronteira agrícola para a produção de soja elevou significativamente o preço das terras com melhor aptidão agrícola (topografia plana, solo corrigido, proximidade logística). Segundo dados do [CEPEA/ESALQ](https://www.cepea.esalq.usp.br) e da FNP, o hectare em regiões consolidadas como Sorriso (MT) valorizou mais de 300% entre 2005 e 2023, refletindo a renda ricardiana apropriada pelos proprietários de terras inframarginais. Produtores em terras menos férteis (marginais) operam com lucro próximo de zero — exatamente como o modelo prevê.

!!! definition "Renda ricardiana"
    A **renda ricardiana** (ou renda econômica) é o pagamento a um fator de produção acima do mínimo necessário para mantê-lo em seu uso corrente. No longo prazo competitivo, o excedente do produtor da indústria reflete exclusivamente essas rendas.

Formalmente, o excedente do produtor de longo prazo é a área acima da curva de oferta de longo prazo e abaixo do preço de equilíbrio:

\[
EP_{LP} = \int_0^{Q^*} \left[ p^* - p_S(Q) \right] dQ
\]

onde \(p_S(Q)\) é a curva de oferta inversa de longo prazo.

---

## 13.9 Eficiência Econômica e Análise de Bem-Estar Aplicada

Até aqui, a análise de equilíbrio parcial se concentrou em *como* os preços e quantidades são determinados. Agora, mudamos o foco para uma pergunta normativa: o resultado de mercado é *bom*? O equilíbrio competitivo gera o melhor resultado possível para a sociedade? Para responder, precisamos de critérios de avaliação — e os conceitos de excedente do consumidor e excedente do produtor fornecem as ferramentas para medir o bem-estar gerado pelas trocas de mercado.

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

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O equilíbrio competitivo maximiza o bem-estar porque esgota todas as trocas mutuamente vantajosas — a última unidade vendida tem benefício marginal exatamente igual ao custo marginal.

    **Pense assim:** Imagine uma feira livre onde cada barraca vende até o ponto em que o próximo cliente pagaria menos do que custa repor a mercadoria. Enquanto houver alguém disposto a pagar mais do que o custo, ambos ganham com a troca. No equilíbrio, não sobra nenhuma troca lucrativa por fazer.

    **Por que isso importa:** Qualquer quantidade abaixo do equilíbrio desperdiça trocas vantajosas; qualquer quantidade acima força trocas cujo custo supera o benefício. Esse é o fundamento da análise de peso morto de impostos, tabelamentos e cotas.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O excedente do consumidor mede o "desconto" que ele sente por pagar menos do que estaria disposto, e o excedente do produtor mede o "bônus" por receber mais do que o mínimo necessário para vender.

    **Pense assim:** Você pagaria até R$ 50 por um ingresso de cinema, mas a bilheteria cobra R$ 30. Os R$ 20 de "alívio" que você sente são seu excedente de consumidor. Do outro lado, o cinema aceitaria vender a partir de R$ 15 (seu custo marginal), mas recebe R$ 30 — os R$ 15 de "folga" são o excedente do produtor. Somando os dois, temos o ganho total que aquela troca gerou para a sociedade.

    **Por que isso importa:** Qualquer política que distorce preços — tabelamento, imposto, subsídio — redistribui ou destrói esses excedentes, e a perda de peso morto é justamente a parte que ninguém aproveita.

---

## 13.10 Controles de Preços e Escassez

A demonstração de que o equilíbrio competitivo maximiza o bem-estar social tem um corolário imediato e poderoso: qualquer intervenção que force o preço para fora do equilíbrio gera perda de peso morto. Governos, no entanto, frequentemente impõem controles de preços — por razões distributivas, políticas ou sociais. Quais são as consequências econômicas dessas intervenções? A experiência brasileira oferece exemplos particularmente vívidos.

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

!!! example "Box Brasil: O Plano Cruzado e os limites do tabelamento"
    Em fevereiro de 1986, o governo brasileiro lançou o Plano Cruzado, que impôs um congelamento generalizado de preços como estratégia anti-inflacionária. A inflação, que acumulava cerca de 235% em 12 meses (IGP-DI/FGV), caiu abruptamente para próximo de zero nos meses seguintes.

    No entanto, os efeitos colaterais ilustram perfeitamente a análise de preços máximos:

    - **Escassez generalizada**: com os preços congelados abaixo do equilíbrio, a quantidade demandada superou a ofertada. Prateleiras de supermercados ficaram vazias, especialmente para carne bovina e leite.
    - **Mercado paralelo (ágio)**: produtores exigiam "ágio" para vender a preços acima do tabelado, sinalizando que o preço de equilíbrio de mercado era superior ao teto imposto.
    - **Deterioração da qualidade**: firmas reduziram a qualidade dos produtos ou alteraram embalagens para manter margens — uma forma de ajuste não-preço que o modelo básico não captura.
    - **Perda de peso morto**: a redução na quantidade transacionada gerou ineficiência alocativa substancial.

    O episódio é uma das ilustrações mais dramáticas, na história econômica brasileira, de que tabelamentos abaixo do preço de equilíbrio geram escassez e distorções — exatamente como prevê a teoria.

---

### Gráfico interativo: Controles de Preços

Alterne entre preço máximo (teto) e preço mínimo (piso) e ajuste o nível do preço controlado para observar a escassez ou excedente criados, a variação nos excedentes do consumidor e do produtor, e a perda de peso morto resultante.

<iframe src="../graficos/cap13/controles-precos.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 13.3 — Controles de preços: teto e piso.** Alterne entre preço máximo e mínimo e ajuste o nível do preço controlado para observar escassez ou excedente, variações nos excedentes e a perda de peso morto.
</p>

---

## 13.11 Incidência Tributária: Quem Realmente Paga o Imposto?

Os controles de preços representam uma intervenção direta no mecanismo de mercado. Outra forma de intervenção, onipresente em qualquer economia moderna, é a **tributação**. Quando o governo institui um imposto sobre um bem, quem de fato arca com o ônus? O senso comum sugere que é quem paga formalmente o imposto — o vendedor ou o comprador, conforme a legislação. A análise econômica revela, contudo, que a incidência efetiva do tributo independe completamente do lado legal: ela é determinada pelas elasticidades relativas de oferta e demanda.

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

A intuição por trás desses resultados é simples e poderosa: o lado mais inelástico do mercado — aquele que tem menos possibilidade de "fugir" do imposto — arca com a maior parcela do ônus. Os quatro casos-limite a seguir ilustram essa lógica em sua forma mais pura.

- Se a demanda é perfeitamente inelástica (\(|\varepsilon_D| = 0\)): o consumidor absorve 100% do imposto. Ele não pode reduzir o consumo, e todo o imposto é repassado ao preço.
- Se a oferta é perfeitamente inelástica (\(\varepsilon_S = 0\)): o produtor absorve 100% do imposto. Ele não pode reduzir a oferta, e o preço ao consumidor não se altera.
- Se a demanda é perfeitamente elástica (\(|\varepsilon_D| \to \infty\)): o produtor absorve 100%. Qualquer tentativa de repassar o imposto ao preço levaria a uma queda total na demanda.
- Se a oferta é perfeitamente elástica (\(\varepsilon_S \to \infty\)): o consumidor absorve 100%. Os produtores simplesmente saem do mercado se o preço cair, forçando todo o ajuste sobre os compradores.

!!! note "Irrelevância do lado legal"
    A incidência econômica do imposto independe de quem tem a obrigação legal de recolhê-lo. Seja o imposto cobrado do vendedor ou do comprador, a divisão da carga é determinada pelas elasticidades.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Quem realmente paga o imposto não é quem o governo manda pagar — é quem tem menos flexibilidade para escapar dele.

    **Pense assim:** Quando o governo aumenta o ICMS da gasolina e cobra do posto, o posto repassa quase tudo ao consumidor no preço da bomba. Por quê? Porque o motorista *precisa* de gasolina (demanda inelástica) e não tem muita alternativa, enquanto o posto pode ajustar a oferta. O lado mais "preso" ao mercado é quem absorve a maior fatia do imposto, independentemente de quem assina a guia de recolhimento.

    **Por que isso importa:** Esse princípio é central para avaliar reformas tributárias no Brasil — saber quem de fato arca com o ônus de cada tributo é essencial para analisar impactos distributivos.

!!! example "Incidência tributária no Brasil: ICMS sobre combustíveis"
    Até 2022, o ICMS sobre combustíveis no Brasil era cobrado *ad valorem* e variava entre estados, com alíquotas efetivas de 25% a 34% sobre a gasolina. A Lei Complementar 192/2022 unificou o ICMS em valor fixo por litro. Como a demanda de combustíveis é relativamente inelástica no curto prazo (\(|\varepsilon_D| \approx 0{,}1\) a \(0{,}3\), segundo estimativas do [IPEA](https://www.ipea.gov.br)) e a oferta de derivados é mais elástica, o modelo prevê que a maior parte da carga tributária recaia sobre os consumidores — o que é consistente com a evidência empírica de que variações no ICMS são quase integralmente repassadas aos preços na bomba ([ANP](https://www.gov.br/anp), Boletim de Preços).

---

### Gráfico interativo: Incidência Tributária

Visualize como um imposto por unidade afeta o equilíbrio de mercado. Ajuste o valor do imposto e as elasticidades de oferta e demanda para observar a divisão da carga tributária entre comprador e vendedor, a receita do governo e a perda de peso morto. Alterne entre imposto sobre o vendedor e sobre o comprador para verificar a irrelevância do lado legal.

<iframe src="../graficos/cap13/incidencia-tributaria.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 13.4 — Incidência tributária.** Ajuste o valor do imposto e as elasticidades de oferta e demanda para observar a divisão da carga tributária, a receita do governo e a perda de peso morto.
</p>

---

## Tabela: Efeitos de Políticas sobre EC, EP e PPM

A tabela abaixo resume os efeitos das principais políticas de intervenção em um mercado competitivo.

**Tabela 13.2 — Efeitos de políticas sobre EC, EP e PPM

| Política | Efeito sobre EC | Efeito sobre EP | Receita/Gasto Gov.** | PPM |
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

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A perda de peso morto é o valor das trocas que deixaram de acontecer — um prejuízo que ninguém embolsa.

    **Pense assim:** Imagine que um imposto sobre o cafezinho faz o preço subir de R$ 5 para R$ 6. Alguns clientes que compravam a R$ 5 desistem, e o dono do café perde essas vendas. O governo arrecada sobre os cafés que ainda são vendidos, mas o valor das transações que sumiram — aquele cafezinho que o cliente queria e o vendedor podia oferecer — evaporou. Esse "triângulo" de valor perdido é a perda de peso morto.

    **Por que isso importa:** A fórmula mostra que a perda de peso morto cresce com o *quadrado* do imposto — dobrar o imposto quadruplica a ineficiência — o que fundamenta a recomendação de bases tributárias amplas com alíquotas baixas, como a reforma do IBS/CBS no Brasil.

---

## Box Brasil: Mercado de Commodities Agrícolas — A Formação de Preços da Soja

!!! example "Box Brasil: Soja brasileira e o leiloeiro global"
    O Brasil é o maior produtor e exportador mundial de soja, com safra recorde de aproximadamente 155 milhões de toneladas na safra 2023/24 ([CONAB](https://www.conab.gov.br)). Apesar da escala gigantesca, o Brasil atua essencialmente como **tomador de preços** (*price-taker*) no mercado internacional, cujos preços são formados na Bolsa de Chicago (CBOT).

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

## Resumo do Capítulo

- A **demanda de mercado** é obtida pela soma horizontal das demandas individuais, e a **oferta de mercado** pela soma horizontal das curvas de custo marginal das firmas (acima do custo variável médio mínimo). O equilíbrio competitivo ocorre no preço em que quantidade demandada iguala quantidade ofertada.
- No **curtíssimo prazo**, a oferta é perfeitamente inelástica; no **curto prazo**, as firmas ajustam a produção com planta fixa; no **longo prazo**, há livre entrada e saída, levando o preço ao custo médio mínimo e o lucro econômico a zero.
- O **excedente do consumidor** (EC) e o **excedente do produtor** (EP) medem os ganhos de bem-estar das trocas voluntárias. A soma EC + EP é maximizada no equilíbrio competitivo, resultado que fundamenta o Primeiro Teorema do Bem-Estar.
- **Controles de preços** — preços máximos (tetos) e preços mínimos (pisos) — geram, respectivamente, escassez e excedente de oferta, reduzindo o bem-estar total. A perda de peso morto (PPM) mede a ineficiência resultante.
- A **incidência tributária** depende das elasticidades relativas de oferta e demanda, não de quem formalmente recolhe o imposto: o lado mais inelástico do mercado arca com a maior parcela do tributo. A tributação gera uma cunha entre o preço pago pelo consumidor e o recebido pelo produtor, criando perda de peso morto.
- Em **indústrias de custos crescentes**, a curva de oferta de longo prazo tem inclinação positiva, e firmas inframarginais auferem **rendas ricardianas** — lucros econômicos devidos a vantagens de custo, como ocorre na agricultura brasileira com terras de diferentes fertilidades.

## Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Demanda de mercado | Soma horizontal das demandas individuais: $X(p) = \sum_i x_i(p)$. |
| Oferta de mercado | Soma horizontal das curvas de CMg das firmas, acima do ponto de fechamento. |
| Equilíbrio competitivo | Preço $p^*$ e quantidade $Q^*$ em que $Q_D(p^*) = Q_S(p^*)$. |
| Excedente do consumidor (EC) | Diferença entre a disposição a pagar e o preço efetivamente pago, somada sobre todas as unidades. |
| Excedente do produtor (EP) | Diferença entre o preço recebido e o custo marginal, somada sobre todas as unidades produzidas. |
| Perda de peso morto (PPM) | Redução do bem-estar total (EC + EP) causada por distorções como impostos, subsídios ou controles de preços. |
| Incidência tributária | Distribuição efetiva do ônus de um imposto entre compradores e vendedores, determinada pelas elasticidades relativas. |
| Preço máximo (teto) | Preço legalmente fixado abaixo do equilíbrio, gerando escassez ($Q_D > Q_S$). |
| Preço mínimo (piso) | Preço legalmente fixado acima do equilíbrio, gerando excedente de oferta ($Q_S > Q_D$). |
| Renda ricardiana | Lucro econômico auferido por firmas com custos inferiores à firma marginal em indústrias de custos crescentes. |

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 13.1 — Equilíbrio, excedentes e imposto"
    **Enunciado.** Em um mercado competitivo, a demanda é \(Q_D = 120 - 2p\) e a oferta é \(Q_S = 3p - 30\). (a) Encontre o equilíbrio. (b) Calcule EC e EP. (c) O governo impõe um imposto de \(t = 10\) por unidade sobre os vendedores. Encontre o novo equilíbrio, a receita do governo e a PPM.

    ---

    **(a)** Equilíbrio: \(Q_D = Q_S\).

    \[
    120 - 2p = 3p - 30 \implies 150 = 5p \implies p^* = 30, \quad Q^* = 120 - 60 = 60
    \]

    **(b)** A demanda inversa é \(p_D = 60 - Q/2\) e a oferta inversa é \(p_S = 10 + Q/3\).

    \[
    EC = \frac{1}{2}(60 - 30) \times 60 = \frac{1}{2} \times 30 \times 60 = 900
    \]

    \[
    EP = \frac{1}{2}(30 - 10) \times 60 = \frac{1}{2} \times 20 \times 60 = 600
    \]

    **(c)** Com imposto, \(p_c = p_p + 10\). No equilíbrio:

    \[
    120 - 2p_c = 3(p_c - 10) - 30 \implies 120 - 2p_c = 3p_c - 60 \implies 180 = 5p_c \implies p_c = 36
    \]

    \[
    p_p = 36 - 10 = 26, \quad Q_t = 120 - 72 = 48
    \]

    O consumidor paga R\$ 6 a mais (de 30 para 36) e o produtor recebe R\$ 4 a menos (de 30 para 26), consistente com \(\varepsilon_S / (\varepsilon_S + |\varepsilon_D|) = (3 \cdot 30/60) / (1{,}5 + 1{,}0) = 0{,}6\).

    Receita do governo: \(R = t \times Q_t = 10 \times 48 = 480\).

    PPM: \(\frac{1}{2} \times t \times \Delta Q = \frac{1}{2} \times 10 \times 12 = 60\).

    **Verificação:** \(\Delta EC = 900 - \frac{1}{2}(60-36)(48) = 900 - 576 = 324\). \(\Delta EP = 600 - \frac{1}{2}(26-10)(48) = 600 - 384 = 216\). Perda total = \(324 + 216 = 540 = R + PPM = 480 + 60\). ✓

??? example "Exercício Resolvido 13.2 — Preço máximo e escassez"
    **Enunciado.** No mercado de um bem, \(Q_D = 500 - 10p\) e \(Q_S = 20p - 100\). O governo fixa um preço máximo \(\bar{p} = 15\). (a) Encontre o equilíbrio livre. (b) Calcule a escassez, o novo EC e EP, e a PPM.

    ---

    **(a)** Equilíbrio livre:

    \[
    500 - 10p = 20p - 100 \implies 600 = 30p \implies p^* = 20, \quad Q^* = 300
    \]

    **(b)** Com \(\bar{p} = 15 < 20\):

    \[
    Q_D(15) = 500 - 150 = 350, \quad Q_S(15) = 300 - 100 = 200
    \]

    Escassez: \(350 - 200 = 150\) unidades.

    A quantidade efetivamente transacionada é \(Q_t = \min(Q_D, Q_S) = 200\).

    Usando a demanda inversa \(p_D = 50 - Q/10\) e a oferta inversa \(p_S = 5 + Q/20\):

    Sem intervenção: \(EC_0 = \frac{1}{2}(50 - 20)(300) = 4.500\) e \(EP_0 = \frac{1}{2}(20 - 5)(300) = 2.250\). Portanto \(W_0 = 4.500 + 2.250 = 6.750\).

    Com teto e racionamento eficiente (os 200 consumidores com maior disposição a pagar obtêm o bem):

    O \(EC_1\) é o trapézio entre a curva de demanda e o preço \(\bar{p} = 15\), de \(Q = 0\) a \(Q = 200\). A demanda inversa vai de \(p_D(0) = 50\) a \(p_D(200) = 30\):

    \[
    EC_1 = \frac{1}{2}(50 - 15 + 30 - 15) \times 200 = \frac{1}{2}(35 + 15) \times 200 = 5.000
    \]

    O \(EP_1\) é o triângulo entre \(\bar{p} = 15\) e a curva de oferta, de \(Q = 0\) a \(Q = 200\):

    \[
    EP_1 = \frac{1}{2}(15 - 5) \times 200 = 1.000
    \]

    Portanto \(W_1 = 5.000 + 1.000 = 6.000\), e a perda de peso morto é:

    \[
    PPM = W_0 - W_1 = 6.750 - 6.000 = 750
    \]

    Isso coincide com o triângulo entre as curvas de demanda e oferta, da quantidade com teto à quantidade de equilíbrio:

    \[
    PPM = \frac{1}{2}[p_D(200) - p_S(200)] \times (Q^* - Q_t) = \frac{1}{2}(30 - 15)(100) = 750
    \]

    **Resultado:** Com racionamento eficiente, a PPM é **750**, correspondente ao triângulo entre as curvas de demanda e oferta, da quantidade com teto (200) à quantidade de equilíbrio (300).

??? example "Exercício Resolvido 13.3 — Indústria de custos crescentes e renda ricardiana"
    **Enunciado.** Uma indústria competitiva de custos crescentes tem oferta de longo prazo \(p = 20 + 0{,}05Q\). A demanda é \(Q = 800 - 10p\). (a) Encontre o equilíbrio de LP. (b) Calcule a renda ricardiana. (c) Se a demanda se desloca para \(Q' = 1000 - 10p\), encontre o novo equilíbrio e a variação na renda ricardiana.

    ---

    **(a)** Substituindo a oferta na demanda:

    \[
    Q = 800 - 10(20 + 0{,}05Q) = 800 - 200 - 0{,}5Q \implies 1{,}5Q = 600 \implies Q^* = 400
    \]

    \[
    p^* = 20 + 0{,}05 \times 400 = 40
    \]

    **(b)** A renda ricardiana é a área acima da curva de oferta de LP e abaixo do preço:

    \[
    RR = \int_0^{400}[40 - (20 + 0{,}05Q)] dQ = \int_0^{400}[20 - 0{,}05Q] dQ = \left[20Q - 0{,}025Q^2\right]_0^{400}
    \]

    \[
    RR = 8.000 - 4.000 = 4.000
    \]

    Alternativamente, como a oferta é linear: \(RR = \frac{1}{2}(p^* - p_{\min}) \times Q^* = \frac{1}{2}(40 - 20)(400) = 4.000\). ✓

    **(c)** Com a nova demanda:

    \[
    Q' = 1000 - 10(20 + 0{,}05Q') = 1000 - 200 - 0{,}5Q' \implies 1{,}5Q' = 800 \implies Q'^* = 533{,}3
    \]

    \[
    p'^* = 20 + 0{,}05 \times 533{,}3 = 46{,}67
    \]

    \[
    RR' = \frac{1}{2}(46{,}67 - 20)(533{,}3) = \frac{1}{2}(26{,}67)(533{,}3) \approx 7.111
    \]

    A renda ricardiana aumentou de 4.000 para 7.111 — um acréscimo de **3.111**, refletindo a valorização dos fatores inframarginais (como terras mais produtivas) em resposta à expansão da demanda. Note que o preço de equilíbrio subiu (de 40 para 46,67) porque se trata de uma indústria de custos crescentes.

---

## Exercícios

<a id="ex-13-1"></a>**Exercício 13.1.** Considere um mercado com 100 consumidores idênticos, cada um com demanda individual \(x_i(p) = 20 - 2p\), e 50 firmas idênticas, cada uma com oferta individual \(s_j(p) = 4p - 10\) (para \(p \geq 2{,}5\)).

(a) Derive a demanda e a oferta de mercado.

(b) Encontre o preço e a quantidade de equilíbrio.

(c) Calcule o excedente do consumidor e o excedente do produtor.

(d) Se o governo impõe um imposto de \(t = 2\) por unidade, encontre o novo equilíbrio, a receita tributária e a perda de peso morto.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-1)

---

<a id="ex-13-2"></a>**Exercício 13.2.** Em um mercado competitivo, a demanda é \(Q_D = 1000 - 50p\) e a oferta é \(Q_S = 25p - 200\).

(a) Encontre o equilíbrio.

(b) Suponha que o governo fixe um preço máximo de \(p = 10\). Calcule a escassez resultante e a perda de peso morto.

(c) Compare graficamente o EC antes e depois do controle de preço.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-2)

---

<a id="ex-13-3"></a>**Exercício 13.3.** Demonstre que, para um imposto *ad valorem* à taxa \(\tau\) (onde o consumidor paga \(p_c = (1 + \tau) p_p\)), a fração do imposto absorvida pelo consumidor também depende das elasticidades relativas de oferta e demanda. Derive a fórmula análoga à do imposto específico.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-3)

---

<a id="ex-13-4"></a>**Exercício 13.4.** Considere uma indústria de custos crescentes com curva de oferta de longo prazo \(p = 10 + 0{,}01Q\). A demanda é \(Q = 2000 - 50p\).

(a) Encontre o equilíbrio de longo prazo.

(b) Calcule o excedente do produtor de longo prazo (renda ricardiana).

(c) Se a demanda se desloca para \(Q' = 2500 - 50p\), encontre o novo equilíbrio e a variação na renda ricardiana.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-4)

---

<a id="ex-13-5"></a>**Exercício 13.5.** No mercado brasileiro de combustíveis, o governo subsidia o diesel em \(s = \text{R\$} 0{,}30\) por litro. Suponha que a demanda de diesel seja relativamente inelástica (\(|\varepsilon_D| = 0{,}3\)) e a oferta seja relativamente elástica (\(\varepsilon_S = 2{,}0\)).

(a) Qual fração do subsídio beneficia o consumidor e qual fração beneficia o produtor?

(b) Discuta as implicações distributivas e de eficiência dessa política, considerando que diesel é um insumo essencial para o transporte de cargas no Brasil.

(c) Calcule a perda de peso morto em termos do subsídio, das elasticidades e do preço e quantidade iniciais.

[:material-arrow-right: Ver solução](../solucoes/cap13.md#ex-13-5)

---

## 🏆 Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2017 — Questão 3"
    Com respeito aos efeitos dos impostos, assinale quais das afirmações abaixo são verdadeiras:

    **(0)** Se as curvas de demanda e oferta do mercado forem lineares, sendo \(p\) o preço do produto e \(t\) um imposto específico, então \(dp/dt = \eta/(\eta - \varepsilon)\), em que \(\eta\) é a elasticidade preço da oferta e \(\varepsilon\) é a elasticidade preço da demanda;

    **(1)** No caso de um imposto específico \(t\), o equilíbrio do mercado será diferente se o imposto for cobrado dos vendedores ou dos compradores;

    **(2)** Se a elasticidade preço da demanda for 0 (zero) e a elasticidade preço da oferta for 1, o custo do imposto específico recairá totalmente sobre os produtores;

    **(3)** O peso morto decorrente da introdução de um imposto específico em um mercado com curvas de oferta e demanda lineares não depende do preço antes da incidência do imposto;

    **(4)** Se as curvas de demanda e oferta forem lineares, a receita fiscal do governo compensa a introdução de um imposto específico e gera um peso morto nulo.

    ??? success "Gabarito"
        **Gabarito oficial: V-F-F-V-F**

        **(0) VERDADEIRO.** Com curvas lineares \(Q_D = a - bp\) e \(Q_S = c + dp\), onde \(\varepsilon = -bp/Q < 0\) e \(\eta = dp/Q > 0\), o imposto gera \(p_c = p_p + t\). No equilíbrio: \(dp_c/dt = d/(b+d)\). Em termos de elasticidades avaliadas no equilíbrio (onde \(Q\) e \(p\) são comuns): \(dp/dt = \eta/(\eta - \varepsilon)\), pois \(\varepsilon < 0\) implica \(\eta - \varepsilon = \eta + |\varepsilon|\).

        **(1) FALSO.** Pela irrelevância do lado legal da incidência, o equilíbrio econômico (preços pagos por consumidores e recebidos por produtores, quantidade transacionada) é idêntico independentemente de sobre quem recai a obrigação legal de recolhimento.

        **(2) FALSO.** Se \(|\varepsilon_D| = 0\) (demanda perfeitamente inelástica), o consumidor absorve 100% do imposto, pois \(dp_c/dt = \eta/(\eta + 0) = 1\). O custo recai integralmente sobre os consumidores, não sobre os produtores.

        **(3) VERDADEIRO.** Com curvas lineares, \(PPM = \frac{1}{2} \cdot \frac{bd}{b+d} \cdot t^2\), onde \(b\) e \(d\) são as inclinações (em valor absoluto) das curvas de demanda e oferta. A fórmula não contém o preço de equilíbrio pré-imposto.

        **(4) FALSO.** A receita fiscal \(R = t \cdot Q_t\) não compensa a perda total de excedentes de consumidores e produtores. A diferença — o peso morto — é estritamente positiva (\(PPM > 0\)) sempre que \(t > 0\) e ambas as curvas têm inclinações finitas.

??? question "ANPEC 2023 — Questão 1"
    Suponha que ao preço de equilíbrio no mercado internacional de petróleo de \$80 dólares o barril, a elasticidade-preço da demanda seja \(-0{,}4\), a elasticidade-preço da oferta seja \(0{,}2\), as quantidades ofertada e demandada sejam de 100 milhões de barris/dia. Suponha ainda que as curvas de demanda e oferta são lineares convencionais. Imagine que um embargo econômico a um produtor mundial cause um deslocamento paralelo da curva de oferta para a esquerda em 30 milhões de barris/dia. Julgue as afirmativas a seguir:

    **(0)** A função de demanda consistente com o preço e a quantidade antes do embargo é \(D_1(p) = 116 - 0{,}2p\).

    **(1)** A função de oferta que é consistente com o equilíbrio antes do embargo é \(S_1(p) = 60 + 0{,}5p\).

    **(2)** A função de oferta após o embargo é \(S_2(p) = 50 + 0{,}25p\).

    **(3)** Após o embargo, o preço de equilíbrio será de \$120 dólares, e a quantidade de equilíbrio será de 80 milhões de barris/dia.

    **(4)** Suponha que, concomitantemente com o embargo, novas tecnologias de energias alternativas sejam incorporadas, reduzindo a demanda global em 20 milhões de barris/dia. Nesse caso, o preço de equilíbrio será menor que o preço antes do embargo e da introdução de novas tecnologias.

    ??? success "Gabarito"
        **Gabarito oficial: F-F-V-V-F**

        **Derivação das curvas.** Com \(p_0 = 80\), \(Q_0 = 100\):

        - Demanda: \(\varepsilon_D = -0{,}4 = (dQ_D/dp)(80/100)\), logo \(dQ_D/dp = -0{,}5\). Assim \(D(p) = a - 0{,}5p\), e \(100 = a - 40 \Rightarrow a = 140\). Portanto \(D_1(p) = 140 - 0{,}5p\).

        - Oferta: \(\varepsilon_S = 0{,}2 = (dQ_S/dp)(80/100)\), logo \(dQ_S/dp = 0{,}25\). Assim \(S(p) = c + 0{,}25p\), e \(100 = c + 20 \Rightarrow c = 80\). Portanto \(S_1(p) = 80 + 0{,}25p\).

        **(0) FALSO.** A demanda correta é \(D_1(p) = 140 - 0{,}5p\), não \(116 - 0{,}2p\).

        **(1) FALSO.** A oferta correta é \(S_1(p) = 80 + 0{,}25p\), não \(60 + 0{,}5p\).

        **(2) VERDADEIRO.** Deslocamento paralelo de 30 milhões para a esquerda: \(S_2(p) = 80 - 30 + 0{,}25p = 50 + 0{,}25p\). ✓

        **(3) VERDADEIRO.** Novo equilíbrio: \(140 - 0{,}5p = 50 + 0{,}25p \Rightarrow 90 = 0{,}75p \Rightarrow p = 120\). \(Q = 140 - 60 = 80\). ✓

        **(4) FALSO.** Com demanda reduzida em 20: \(D_2(p) = 120 - 0{,}5p\). Novo equilíbrio: \(120 - 0{,}5p = 50 + 0{,}25p \Rightarrow 70 = 0{,}75p \Rightarrow p \approx 93{,}3\). Como \(93{,}3 > 80\), o preço é *maior* que o original, não menor.

??? question "ANPEC 2025 — Questão 7"
    Com relação à oferta da indústria, julgue as afirmativas abaixo como verdadeiras ou falsas:

    **(0)** No equilíbrio de curto prazo de uma indústria competitiva todas as empresas têm de obter lucro zero.

    **(1)** No equilíbrio de longo prazo, se não houver barreiras à entrada e à saída, todos os fatores de produção são remunerados a preços de mercado.

    **(2)** Sempre que houver barreiras à entrada causadas por um fator fixo, a indústria vai apresentar lucros positivos no longo prazo.

    **(3)** Caso haja renda econômica em um setor, ela determinará o preço de equilíbrio do setor.

    **(4)** Se não houver barreiras à entrada e à saída, e os custos da indústria forem constantes, a curva de oferta de longo prazo será horizontal, a um preço igual ao custo médio mínimo.

    ??? success "Gabarito"
        **Gabarito oficial: F-V-F-F-V**

        **(0) FALSO.** No curto prazo, o número de firmas é fixo e não há livre entrada/saída. Firmas podem ter lucro positivo, negativo ou zero. A condição de lucro zero é característica do equilíbrio de *longo prazo* com livre entrada.

        **(1) VERDADEIRO.** Com livre entrada e saída, o lucro econômico é zero no longo prazo. Isso implica que todos os fatores de produção — incluindo o capital do empresário — são remunerados exatamente pelo seu custo de oportunidade (preço de mercado).

        **(2) FALSO.** A existência de um fator fixo (por exemplo, terra de qualidade superior) gera renda econômica para o proprietário desse fator. Porém, quando essa renda é adequadamente contabilizada como custo de oportunidade, o lucro econômico da firma é zero. A renda do fator fixo não se confunde com lucro positivo da firma.

        **(3) FALSO.** A causalidade é inversa ao que o item afirma. É o preço de equilíbrio do produto — determinado pela interação de oferta e demanda — que determina a renda econômica dos fatores. Como argumentou Ricardo: "não é porque os aluguéis são altos que o trigo é caro; é porque o trigo é caro que os aluguéis são altos."

        **(4) VERDADEIRO.** Em uma indústria de custos constantes, a entrada de novas firmas não altera os preços dos insumos, de modo que as curvas de custo das firmas individuais permanecem inalteradas. O preço de equilíbrio de longo prazo é \(p = CMe_{\min}\) para qualquer nível de demanda, resultando em uma curva de oferta de longo prazo perfeitamente elástica (horizontal).

---

## 🔬 Pesquisa em Ação

??? abstract "Roberts, M. J. & Schlenker, W. (2013). [Identifying Supply and Demand Elasticities of Agricultural Commodities: Implications for the US Ethanol Mandate](https://doi.org/10.1257/aer.103.6.2265). *American Economic Review*, 103(6), 2265–2295."
    **DOI:** [10.1257/aer.103.6.2265](https://doi.org/10.1257/aer.103.6.2265)

    **Contexto.** A estimação de elasticidades de oferta e demanda é central para a análise de equilíbrio parcial, mas enfrenta o clássico problema de identificação: variações observadas em preços e quantidades refletem simultaneamente deslocamentos de oferta e demanda. Roberts e Schlenker enfrentam esse desafio no mercado de commodities agrícolas — exatamente o tipo de mercado competitivo analisado neste capítulo.

    **Metodologia.** Os autores utilizam variáveis instrumentais baseadas em choques climáticos (rendimentos agrícolas exógenos determinados pelo clima) para identificar separadamente as curvas de oferta e demanda de quatro commodities (milho, soja, trigo e arroz) no mercado mundial. A estratégia empírica explora o fato de que variações climáticas deslocam a curva de oferta sem afetar diretamente a demanda, permitindo traçar a curva de demanda ao longo de diferentes pontos de equilíbrio.

    **Resultados.** As estimativas indicam elasticidades-preço da demanda entre \(-0{,}05\) e \(-0{,}10\) no curto prazo — demanda extremamente inelástica, consistente com o uso das commodities como insumos essenciais na alimentação e ração animal. A elasticidade-preço da oferta, condicional ao clima, situa-se entre \(0{,}10\) e \(0{,}15\). Essas estimativas têm implicações diretas para a estática comparativa: choques de oferta (como secas) provocam grandes variações de preço, precisamente porque ambas as curvas são inelásticas.

    **Conexão com o capítulo.** O artigo é uma aplicação direta da análise de estática comparativa (Seção 13.4) e da discussão sobre elasticidades de oferta e demanda (Seções 13.1 e 13.7) em mercados competitivos reais. Também dialoga com o Box Brasil sobre a soja, cujas elasticidades estimadas pelo IPEA e CONAB são comparáveis às encontradas no estudo.

??? abstract "Weyl, E. G. & Fabinger, M. (2013). [Pass-Through as an Economic Tool: Principles of Incidence under Imperfect Competition](https://doi.org/10.1086/670401). *Journal of Political Economy*, 121(3), 528–583."
    **DOI:** [10.1086/670401](https://doi.org/10.1086/670401)

    **Contexto.** A Seção 13.11 demonstra que, em concorrência perfeita, a incidência de um imposto específico depende das elasticidades relativas de oferta e demanda. Mas o que acontece quando os mercados não são perfeitamente competitivos? Weyl e Fabinger desenvolvem uma teoria unificada de *pass-through* (repasse) que generaliza os resultados clássicos de incidência para estruturas de mercado imperfeitas.

    **Contribuição teórica.** Os autores mostram que a taxa de repasse (*pass-through rate*) — a fração de um choque de custo repassada ao consumidor — é a variável-chave que conecta incidência tributária, análise de bem-estar e poder de mercado. Em concorrência perfeita, o repasse depende apenas das elasticidades, como demonstrado neste capítulo. Em monopólio e oligopólio, a curvatura da demanda (convexidade ou concavidade) torna-se crucial: com demanda log-côncava (como a linear), o repasse é inferior a 100%; com demanda log-convexa (como a de elasticidade constante), o repasse pode superar 100%.

    **Resultados centrais.** A fórmula unificada de incidência mostra que \(\rho = \varepsilon_S / (\varepsilon_S + |\varepsilon_D| \cdot \theta)\), onde \(\theta\) captura o grau de conduta competitiva (\(\theta = 1\) em concorrência perfeita, \(\theta > 1\) com poder de mercado). O artigo também demonstra que a PPM de um imposto pode ser expressa como função do repasse, independentemente da estrutura de mercado.

    **Conexão com o capítulo.** O artigo generaliza os resultados de incidência tributária da Seção 13.11, mostrando que a fórmula competitiva é um caso especial de um princípio mais amplo. A leitura é recomendada para estudantes que desejam compreender como a análise de equilíbrio parcial se estende para além da concorrência perfeita.

---

## Referências do Capítulo

- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 10.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage. Caps. 12–13.
- Perloff, Jeffrey M. 2017. [*Microeconomics: Theory and Applications with Calculus*](https://books.google.com.br/books?id=jGs4EAAAQBAJ). 4ª ed. New York: Pearson. Caps. 8–9.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Caps. 13–14.
