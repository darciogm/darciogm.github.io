# 5.7 Elasticidades da Demanda

## 5.7 O Termômetro da Sensibilidade: Elasticidades da Demanda

Até aqui, discutimos os efeitos de variações de preço e renda em termos de derivadas — grandezas que dependem das unidades de medida. Mas como comparar a sensibilidade da demanda por gasolina (medida em litros) com a da demanda por arroz (medida em quilos)? Ou a resposta do consumidor brasileiro com a do consumidor americano, cujas rendas e preços são expressos em moedas diferentes? É aqui que entram as **elasticidades**, que medem a sensibilidade percentual da demanda a variações em preços e renda, sendo adimensionais e, portanto, comparáveis entre bens e mercados distintos.

!!! idea "Intuição Econômica"
    **Em uma frase:** Elasticidades são derivadas com "roupas" adimensionais — elas eliminam o problema das unidades de medida e permitem comparar a sensibilidade da demanda entre bens completamente diferentes.

    **Pense assim:** Se você souber que \(\partial x/\partial p = -50\), isso não diz muito — depende se a quantidade é medida em quilos ou toneladas, e se o preço é em reais ou centavos. Mas se a elasticidade-preço é \(-0{,}4\), você sabe imediatamente: um aumento de 10% no preço reduz a demanda em 4%, independentemente das unidades. Além disso, elasticidades acima de 1 (em valor absoluto) sinalizam demanda "sensível a preços" — útil para decisões de precificação e política tributária.

    **Por que isso importa:** As relações de agregação (Engel e Cournot) e a simetria de Slutsky são muito mais convenientes em termos de elasticidades do que em derivadas. Por isso, a maior parte da pesquisa empírica em demanda — e das análises de impacto de políticas tributárias no Brasil — é feita em termos de elasticidades, não de derivadas.

### 5.7.1 Elasticidade-preço da demanda

!!! definition "Elasticidade-preço da demanda"

    \[
    \varepsilon_{x_i, p_i} = \frac{\partial x_i}{\partial p_i} \cdot \frac{p_i}{x_i} \label{eq:5.7.5} \tag{5.7.5}
    \]

    - \(|\varepsilon| > 1\): demanda **elástica**
    - \(|\varepsilon| = 1\): demanda de **elasticidade unitária**
    - \(|\varepsilon| < 1\): demanda **inelástica**

### 5.7.2 Elasticidade-renda da demanda

A elasticidade-renda captura a resposta percentual da demanda a variações percentuais na renda. É ela que formaliza a classificação entre bens normais, inferiores, de luxo e de necessidade que discutimos na Seção 5.2:

\[
\varepsilon_{x_i, I} = \frac{\partial x_i}{\partial I} \cdot \frac{I}{x_i} \label{eq:5.7.6} \tag{5.7.6}
\]

### 5.7.3 Elasticidade-preço cruzada

A elasticidade-preço cruzada mede como a demanda por um bem responde a variações no preço de outro bem. Essa grandeza será central no Capítulo 6, quando classificarmos bens como substitutos ou complementos. No mercado brasileiro de combustíveis, a elevada elasticidade cruzada gasolina-etanol (estimada entre +0,80 e +1,40) reflete a existência de uma grande frota flex-fuel — um exemplo de como a estrutura tecnológica do mercado se traduz em parâmetros de elasticidade mensuráveis:

\[
\varepsilon_{x_i, p_j} = \frac{\partial x_i}{\partial p_j} \cdot \frac{p_j}{x_i} \label{eq:5.7.7} \tag{5.7.7}
\]

### 5.7.4 Relações de agregação

As elasticidades definidas acima não são independentes entre si. As restrições teóricas do problema do consumidor — homogeneidade de grau zero, esgotamento da renda — impõem relações de consistência entre elas. Essas relações são testáveis empiricamente: quando um sistema de demanda estimado viola as condições abaixo, os dados contradizem o modelo de consumidor racional, ou as estimativas estão mal especificadas. Três relações fundamentais as conectam:

!!! theorem "Agregação de Engel"
    A soma ponderada das elasticidades-renda de todos os bens, com pesos iguais às parcelas orçamentárias \(w_i = \frac{p_i x_i}{I}\), é igual a um:

    \[
    \sum_{i=1}^n w_i \, \varepsilon_{x_i, I} = 1 \label{eq:5.7.8} \tag{5.7.8}
    \]

    **Implicação**: nem todos os bens podem ser inferiores simultaneamente. Se alguns bens têm elasticidade-renda baixa, outros devem compensar com elasticidade-renda alta.

!!! theorem "Condição de Homogeneidade (Agregação de Cournot)"
    Para cada bem \(i\), a soma das elasticidades-preço (própria e cruzadas) e da elasticidade-renda é zero:

    \[
    \sum_{j=1}^n \varepsilon_{x_i, p_j} + \varepsilon_{x_i, I} = 0 \label{eq:5.7.9} \tag{5.7.9}
    \]

    Esta condição decorre diretamente da homogeneidade de grau zero da demanda.

!!! theorem "Simetria de Slutsky (em termos de elasticidades)"
    Definindo a elasticidade de substituição compensada \(s_{ij} = \varepsilon_{x_i, p_j}^h\), a simetria impõe:

    \[
    w_i \, s_{ij} = w_j \, s_{ji} \label{eq:5.7.10} \tag{5.7.10}
    \]

### 5.7.5 Elasticidades estimadas para o Brasil

As relações de agregação acima não são apenas curiosidades teóricas — elas podem ser usadas para verificar a consistência de estimativas empíricas e para inferir elasticidades desconhecidas a partir de elasticidades estimadas, como ilustra o Exercício Resolvido 5.1 adiante. Essa propriedade de interdependência tem implicações práticas: em pesquisas que estimam sistemas de demanda com poucos graus de liberdade, as condições de Engel e Cournot permitem "emprestar" informação de um bem para refinar a estimação de outro. A [Tabela 5.1](#tabela-5-1) apresenta estimativas de elasticidades-preço e elasticidade-renda para categorias selecionadas de bens no Brasil, com base em estudos da POF/IBGE e pesquisas do IPEA.

<a id="tabela-5-1"></a>

| Categoria de Bem | Elasticidade-preço (\(\varepsilon_{x,p}\)) | Elasticidade-renda (\(\varepsilon_{x,I}\)) | Classificação |
|:---|:---:|:---:|:---|
| Alimentação no domicílio | \(-0{,}45\) | \(0{,}56\) | Inelástica; necessidade |
| Alimentação fora do domicílio | \(-0{,}78\) | \(1{,}25\) | Inelástica; luxo |
| Transporte público | \(-0{,}32\) | \(-0{,}18\) | Inelástica; inferior |
| Combustíveis (gasolina) | \(-0{,}46\) | \(0{,}68\) | Inelástica; necessidade |
| Saúde (planos e medicamentos) | \(-0{,}21\) | \(1{,}35\) | Muito inelástica; luxo |
| Educação privada | \(-0{,}38\) | \(1{,}48\) | Inelástica; luxo |
| Vestuário | \(-0{,}92\) | \(1{,}10\) | Quase unitária; luxo |
| Habitação (aluguel) | \(-0{,}30\) | \(0{,}85\) | Inelástica; necessidade |
| Eletrodomésticos | \(-1{,}15\) | \(1{,}52\) | Elástica; luxo |
| Cigarros e tabaco | \(-0{,}35\) | \(0{,}25\) | Inelástica; necessidade |

<div class="caption-obj" markdown>
**Tabela 5.1 — Elasticidades estimadas para o Brasil.** Fontes: POF/IBGE (2017-2018); Almeida e Azzoni (2016); Cardoso et al. (2019); Notas Técnicas IPEA.
</div>

!!! note "Observações sobre a tabela"
    A classificação como "luxo" ou "necessidade" refere-se à elasticidade-renda, enquanto "elástica" ou "inelástica" refere-se à elasticidade-preço. Note que saúde e educação, embora essenciais, apresentam elasticidade-renda elevada no Brasil — fenômeno associado à migração de serviços públicos para privados conforme a renda cresce.

!!! box-brasil "Brasil na Prática — Elasticidades-preço de alimentos (POF 2017–2018)"
    A tabela abaixo sintetiza estimativas de elasticidade-preço da demanda para categorias selecionadas de alimentos, obtidas a partir dos microdados da POF 2017–2018 (IBGE) usando sistemas de demanda do tipo AIDS (*Almost Ideal Demand System*).

    | Categoria | Elasticidade-preço | Classificação |
    |---|:---:|---|
    | Arroz | −0,45 | Inelástica |
    | Feijão | −0,52 | Inelástica |
    | Carne bovina (1ª) | −0,78 | Inelástica |
    | Carne bovina (2ª) | −1,05 | Elástica |
    | Frango | −0,62 | Inelástica |
    | Leite | −0,55 | Inelástica |
    | Frutas | −1,20 | Elástica |
    | Refrigerante | −1,35 | Elástica |

    **Leitura econômica:** Alimentos básicos (arroz, feijão) são inelásticos — famílias de baixa renda não podem reduzir muito o consumo quando o preço sobe. Carnes de segunda e refrigerantes são elásticos — há substitutos acessíveis. Essa heterogeneidade é exatamente o que a Equação de Slutsky prevê: bens com alta participação no orçamento e poucos substitutos terão efeito-renda dominante.

    **Fonte:** Estimativas baseadas em POF/IBGE 2017–2018. Valores aproximados para fins didáticos; estimativas precisas variam conforme especificação e região. Ver Silveira, Menezes, Magalhães & Diniz (2007) para a metodologia AIDS aplicada à POF, e Vaz & Hoffmann (2020) para comparação entre POFs.

??? exercicio-resolvido "Exercício Resolvido 5.1"
    **Enunciado:** Considere uma economia com dois bens: alimentação (bem 1) e serviços (bem 2). A parcela orçamentária da alimentação é \(w_1 = 0{,}35\) e a dos serviços é \(w_2 = 0{,}65\). A elasticidade-renda da alimentação é \(\varepsilon_{1,I} = 0{,}42\), e a elasticidade-preço própria da alimentação é \(\varepsilon_{1,p_1} = -0{,}55\). (a) Calcule a elasticidade-renda dos serviços. (b) Classifique cada bem. (c) Calcule a elasticidade-preço cruzada da alimentação em relação ao preço dos serviços.

    **Dados:** \(w_1 = 0{,}35\), \(w_2 = 0{,}65\), \(\varepsilon_{1,I} = 0{,}42\), \(\varepsilon_{1,p_1} = -0{,}55\).

    **Resolução:**

    **Passo 1 — Elasticidade-renda dos serviços (Agregação de Engel)**

    \[
    w_1 \varepsilon_{1,I} + w_2 \varepsilon_{2,I} = 1 \quad \Longrightarrow \quad 0{,}35 \times 0{,}42 + 0{,}65 \times \varepsilon_{2,I} = 1
    \]

    \[
    0{,}147 + 0{,}65 \, \varepsilon_{2,I} = 1 \quad \Longrightarrow \quad \varepsilon_{2,I} = \frac{1 - 0{,}147}{0{,}65} = \frac{0{,}853}{0{,}65} \approx 1{,}31
    \]

    **Passo 2 — Classificação**

    - Alimentação: \(\varepsilon_{1,I} = 0{,}42 \in (0, 1)\) → **bem normal de necessidade**.
    - Serviços: \(\varepsilon_{2,I} \approx 1{,}31 > 1\) → **bem normal de luxo**.

    **Passo 3 — Elasticidade-preço cruzada (Condição de Homogeneidade)**

    \[
    \varepsilon_{1,p_1} + \varepsilon_{1,p_2} + \varepsilon_{1,I} = 0 \quad \Longrightarrow \quad -0{,}55 + \varepsilon_{1,p_2} + 0{,}42 = 0
    \]

    \[
    \varepsilon_{1,p_2} = 0{,}55 - 0{,}42 = 0{,}13
    \]

    **Resultado:** \(\varepsilon_{2,I} \approx 1{,}31\), e \(\varepsilon_{1,p_2} = 0{,}13\).

    **Interpretação econômica:** a alimentação é um bem de necessidade (consistente com a Lei de Engel) e os serviços são um bem de luxo — padrão coerente com os dados brasileiros da POF 2017–2018, em que famílias de maior renda gastam proporcionalmente menos com alimentação e mais com serviços. A elasticidade cruzada positiva indica que alimentação e serviços são **substitutos brutos**: quando serviços ficam mais caros, a demanda por alimentação aumenta ligeiramente (famílias comem mais em casa em vez de contratar serviços de alimentação fora).
