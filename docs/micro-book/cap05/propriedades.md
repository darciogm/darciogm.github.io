# 5.1–5.2 Funções de Demanda e Variações na Renda

## 5.1 O Que Entra no Carrinho? Funções de Demanda e Suas Propriedades

Antes de perturbar o sistema, vale conferir o que a solução ótima do Capítulo 4 nos garante. As funções de demanda que emergem da otimização não são funções quaisquer — elas obedecem a três propriedades que refletem a lógica da racionalidade. Violar qualquer uma delas seria como encontrar um rio que flui morro acima: possível em teoria, mas forte evidência de que algo está errado no modelo.

O problema de maximização de utilidade do consumidor gera as **funções de demanda marshalliana** (ou não-compensada):

\[
x_i^* = x_i(p_1, p_2, \ldots, p_n, I), \quad i = 1, \ldots, n
\]

que expressam a quantidade ótima de cada bem como função dos preços e da renda.

!!! definition "Funções de demanda marshalliana"
    As funções \(x_i^*(p_1, \ldots, p_n, I)\) são as soluções do problema:

    \[
    \max_{\mathbf{x}} \; U(\mathbf{x}) \quad \text{sujeito a} \quad \sum_{j=1}^n p_j x_j \leq I
    \]

    Essas funções possuem três propriedades fundamentais:

    1. **Homogeneidade de grau zero**: \(x_i(\alpha p_1, \ldots, \alpha p_n, \alpha I) = x_i(p_1, \ldots, p_n, I)\) para todo \(\alpha > 0\).
    2. **Esgotamento da renda** (Lei de Walras): \(\sum_{j=1}^n p_j x_j^* = I\).
    3. **Negatividade do efeito substituição próprio** (consequência da Equação de Slutsky, que veremos adiante).

A propriedade de homogeneidade de grau zero expressa a ausência de **ilusão monetária**: se todos os preços e a renda dobrarem simultaneamente, a cesta ótima permanece inalterada, pois o conjunto orçamentário não se modifica. Em outras palavras, o consumidor racional responde a preços *relativos*, não a valores nominais — um resultado que, embora intuitivo, tem implicações profundas para a neutralidade da moeda em modelos macroeconômicos.

A Lei de Walras, por sua vez, tem um significado econômico preciso: com preferências monótonas (mais é sempre preferível a menos), o consumidor jamais deixa renda ociosa — toda a renda é gasta. Formalmente, isso implica que as funções de demanda formam um sistema interdependente: se conhecemos a demanda por \(n-1\) bens e a renda, a demanda pelo \(n\)-ésimo bem está determinada. Essa interdependência tem consequência direta nas relações de elasticidade que estudaremos na Seção 5.7 — em particular, na Agregação de Engel e na condição de homogeneidade, que são versões em elasticidades das propriedades aqui enunciadas. Do mesmo modo, a propriedade de negatividade do efeito substituição, que formalizaremos na Seção 5.4, é consequência da concavidade da função dispêndio derivada no Capítulo 4 — reforçando que as propriedades das funções de demanda são reflexos das hipóteses sobre preferências, não axiomas independentes.

---

## 5.2 Ficou Rico ou Ficou Pobre? Variações na Renda

Primeira perturbação: o consumidor ficou mais rico (ou mais pobre). O que ele faz com a renda extra? Compra mais de tudo, ou abandona alguns itens e se joga em outros? A resposta depende do *tipo* de bem — e aqui a teoria ganha seu vocabulário mais intuitivo: bens normais, bens inferiores, bens de luxo. As Pesquisas de Orçamentos Familiares (POF) do IBGE, realizadas a cada cinco anos, oferecem precisamente o tipo de variação de renda necessária para traçar empiricamente as curvas de Engel: ao observar famílias em diferentes faixas de renda, podemos inferir como o consumo de cada bem responde ao enriquecimento.

### 5.2.1 Caminho de expansão da renda e curva de Engel

Mantendo os preços \(p_1\) e \(p_2\) fixos e variando a renda \(I\), o conjunto de cestas ótimas traça o **caminho de expansão da renda** no espaço de bens. A projeção desse caminho em um único bem gera a **curva de Engel**, que relaciona a renda à quantidade demandada. Essa ferramenta, batizada em homenagem ao estatístico alemão Ernst Engel (1821–1896), permite visualizar como o consumo de cada bem responde ao enriquecimento ou empobrecimento do consumidor.

!!! definition "Curva de Engel"
    A **curva de Engel** para o bem \(i\) é a função \(x_i^*(I)\) obtida fixando-se todos os preços e variando apenas a renda. Formalmente, é o gráfico do mapeamento \(I \mapsto x_i^*(p_1, \ldots, p_n, I)\).

!!! theorem "Proposição — Curvas de Engel para preferências homotéticas"
    Se as preferências são **homotéticas** (Cap. 3, §3.6.6), então:

    - O caminho de expansão da renda é uma **reta passando pela origem**.
    - As curvas de Engel são **lineares**: \(x_i^*(I) = \alpha_i(\mathbf{p}) \cdot I\).
    - A **elasticidade-renda** é unitária para todos os bens: \(\varepsilon_{x_i, I} = 1\).

    Se as preferências são **quase-lineares** \(u = v(x_1) + x_2\) (Cap. 3, §3.6.5), então:

    - O caminho de expansão da renda é uma **reta vertical** (\(x_1\) fixo).
    - A curva de Engel de \(x_1\) é **horizontal** (elasticidade-renda zero); a de \(x_2\) é linear com inclinação \(1/p_2\).

### 5.2.2 Bens normais e bens inferiores

A forma da curva de Engel conduz naturalmente a uma classificação fundamental: como a demanda por um bem reage a aumentos de renda? Para a maioria dos bens, a resposta é intuitiva — consumimos mais quando ficamos mais ricos. Mas nem sempre é assim, e essa distinção tem consequências importantes para a análise de políticas de redistribuição e crescimento econômico. Vale notar que a classificação de um bem como normal ou inferior não é uma propriedade intrínseca do bem em si, mas do intervalo de renda considerado: um bem pode ser normal para famílias de renda baixa e inferior para famílias de renda alta, à medida que busquem substitutos de maior qualidade.

!!! definition "Bens normais e bens inferiores"
    - Um bem é **normal** se \(\frac{\partial x_i^*}{\partial I} > 0\): a demanda aumenta com a renda.
    - Um bem é **inferior** se \(\frac{\partial x_i^*}{\partial I} < 0\): a demanda diminui quando a renda cresce.

Exemplos clássicos de bens inferiores no contexto brasileiro incluem a farinha de mandioca e o transporte público em certas faixas de renda — à medida que a renda familiar cresce, o consumo desses itens tende a ser substituído por alternativas de maior qualidade percebida.

!!! idea "Intuição Econômica"
    **Em uma frase:** Bens normais e inferiores se distinguem por como você revisa sua dieta — ou sua cesta de consumo — quando seu salário aumenta.

    **Pense assim:** Imagine que você recebe um aumento de 30%. Provavelmente comprará mais carne (bem normal), mais restaurante (bem de luxo), mas talvez menos macarrão instantâneo (bem inferior) — não porque passou a odiar macarrão instantâneo, mas porque agora pode pagar por alternativas que sempre preferiu. A "inferioridade" não é uma propriedade do bem em abstrato; é uma propriedade da relação entre esse bem e sua renda em determinado nível. O mesmo macarrão instantâneo pode ser normal para famílias muito pobres (que antes não podiam nem comprá-lo) e inferior para famílias de renda média.

    **Por que isso importa:** Programas de transferência de renda, como o Bolsa Família, elevam a renda das famílias mais pobres. Se o bem-alvo de uma política de segurança alimentar for inferior para essa faixa de renda, a política pode inadvertidamente *reduzir* seu consumo — exatamente o oposto do objetivo. Conhecer a elasticidade-renda do bem-alvo é, portanto, pré-requisito para desenho eficaz de políticas públicas.

!!! box-brasil "Box Brasil 5.1 — Farinha de mandioca: um bem inferior em números"
    A farinha de mandioca é talvez o exemplo mais emblemático de bem inferior no Brasil. Dados do [IBGE](https://www.ibge.gov.br) mostram uma queda expressiva no consumo domiciliar per capita: de 7,76 kg/ano na POF 2002–2003 para 2,33 kg/ano na POF 2017–2018, uma redução de 70% em quinze anos.

    **Padrão por faixa de renda:** tanto a frequência de consumo quanto a quantidade média per capita diária de farinha de mandioca são maiores nos quartis de renda mais baixos. A diferença entre o primeiro e o último quartil de renda é acentuada, confirmando o comportamento de bem inferior (\(\varepsilon_{x,I} < 0\)).

    **Heterogeneidade regional:** o padrão de bem inferior manifesta-se com intensidade diferente entre as regiões. A frequência de consumo atinge 40,6% na Região Norte e 20,1% no Nordeste, mas não passa de 4% no Sul, Sudeste e Centro-Oeste. A queda no consumo foi mais intensa no Nordeste (−75%) e no Norte (−68%), precisamente as regiões que experimentaram os maiores ganhos reais de renda no período.

    **Interpretação econômica:** à medida que a renda cresce, as famílias substituem a farinha de mandioca por alimentos de maior valor nutricional percebido — arroz, massas, proteínas animais —, refletindo o deslocamento ao longo da curva de Engel descendente.

    **Fontes**: IBGE, Pesquisa de Orçamentos Familiares 2002–2003 e 2017–2018. IBGE, *Análise do Consumo Alimentar Pessoal no Brasil*, 2020.

### 5.2.3 Bens de luxo e bens de necessidade

Dentro da categoria dos bens normais, existe uma segunda distinção relevante: o consumo cresce proporcionalmente mais ou menos que a renda? Essa pergunta leva à classificação entre bens de luxo e bens de necessidade, que depende da **elasticidade-renda** (que formalizaremos na Seção 5.7). A Lei de Engel — a constatação empírica de que a parcela do orçamento gasta com alimentos decresce conforme a renda cresce — é provavelmente a regularidade mais robusta e universalmente documentada em economia do consumo. Ernst Engel a observou em dados belgas ainda em 1857, e ela tem sido confirmada em praticamente todos os países e épocas desde então, incluindo as POFs brasileiras de 2002–2018:

- **Bem de necessidade**: \(0 < \varepsilon_{x,I} < 1\) — a demanda cresce proporcionalmente menos que a renda.
- **Bem de luxo**: \(\varepsilon_{x,I} > 1\) — a demanda cresce proporcionalmente mais que a renda.

Note que todo bem de luxo é normal, mas nem todo bem normal é de luxo.

<iframe src="/micro-book/graficos/cap05/curva-engel.html" title="Figura 5.1 — Curva de Engel e caminho de expansão da renda" class="graph-iframe" style="height:750px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 5.1 — Curva de Engel e caminho de expansão da renda.** Painel superior: espaço de bens com restrições orçamentárias para diferentes níveis de renda e o caminho de expansão (azul). Painel inferior: curvas de Engel para \(x_1\) e \(x_2\). Alterne entre Cobb-Douglas (bens normais) e utilidade quase-linear (efeito renda zero para \(x_1\)).
</div>

| Tipo de bem | Efeito da ↑ renda sobre demanda | Elasticidade-renda | Exemplo brasileiro |
|---|---|---|---|
| Normal | ↑ | \(\eta > 0\) | Carne bovina |
| Inferior | ↓ | \(\eta < 0\) | Farinha de mandioca |
| Luxo | ↑↑ (mais que proporcional) | \(\eta > 1\) | Serviços, viagens |
| Necessidade | ↑ (menos que proporcional) | \(0 < \eta < 1\) | Alimentação básica |

<div class="caption-obj" markdown>
**Tabela 5.1 — Classificação dos bens pela resposta à renda.** A elasticidade-renda \(\eta\) determina se o bem é normal (\(\eta > 0\)), inferior (\(\eta < 0\)), de luxo (\(\eta > 1\)) ou necessidade (\(0 < \eta < 1\)).
</div>

!!! atividade "Think-Pair-Share — Normal, inferior ou Giffen?"
    **Vote individualmente (1 minuto):**

    Uma família muito pobre gasta 80% da renda em arroz e 20% em carne. O preço do arroz sobe 20%. O que acontece com a quantidade de arroz consumida?

    - (a) Cai — a Lei da Demanda sempre vale
    - (b) Sobe — a família fica tão mais pobre que precisa comer *mais* arroz e cortar a carne
    - (c) Não muda — o arroz é inelástico

    **Discuta com um colega (2 minutos) e revote.**

    ??? success "Debrief"
        A resposta é **(b)** — se o arroz for um bem de Giffen. Quando o preço do arroz sobe, o efeito renda é devastador (80% do orçamento!): a família fica tão mais pobre que precisa cortar a carne e comer ainda mais arroz. O efeito substituição diz "troque por outra coisa", mas por quê? Não há substituto mais barato. O efeito renda domina, e a demanda *sobe* com o preço. Esse é exatamente o mecanismo documentado por Jensen e Miller (2008) na China — e a Equação de Slutsky da Seção 5.4 explica por quê.

Recapitulando: sabemos que bens normais sobem com a renda, inferiores caem, e luxos sobem mais que proporcionalmente. A curva de Engel mapeia tudo isso. Até aqui, a vida era simples — apenas renda variava, preços parados. Agora vem o prato principal: o que acontece quando o *preço* de um bem muda? A resposta é mais sutil, porque uma variação de preço faz *duas coisas ao mesmo tempo* — e separá-las é a contribuição central de Slutsky.
