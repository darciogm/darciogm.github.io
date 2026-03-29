# 12.5–12.6 Função Lucro, Lema de Hotelling e Demanda por Insumos

## 12.5 O Truque de Mágica do Lucro: Função Lucro e Lema de Hotelling {#125}

No Capítulo 11, o Lema de Shephard fez um truque de mágica: extraiu as demandas por insumos apenas derivando a função custo. Será que existe um truque análogo do lado do lucro? A resposta é um sonoro *sim* — e o mágico se chama **Lema de Hotelling** (1932). A ideia é quase boa demais para ser verdade: a função lucro, sozinha, carrega toda a informação necessária para reconstruir as funções de oferta do produto e de demanda por insumos. Basta derivar. Hotelling (1932) foi o primeiro a reconhecer que a simetria entre o problema do consumidor e o da firma se estende além da dualidade custo-produção: a função lucro é o análogo da função dispêndio no lado da demanda, e suas derivadas têm a mesma estrutura interpretativa. Para chegar a esse resultado, precisamos primeiro definir e caracterizar a função lucro.

É instrutivo comparar os dois lemas: o Lema de Shephard diz que a derivada da função custo mínimo em relação ao preço de um insumo, mantendo o produto fixo, é a demanda condicionada por esse insumo. O Lema de Hotelling diz que a derivada da função lucro máximo em relação ao preço do produto é a oferta ótima, e a derivada em relação ao preço de um insumo (com sinal negativo) é a demanda *incondicional* por esse insumo. A diferença entre as demandas condicionada e incondicional é exatamente o tema da Seção 12.6.

### A função lucro

!!! definition "Função Lucro"
    A **função lucro** \(\pi^*(p, w, v)\) é o lucro máximo que a firma pode obter dados o preço do produto \(p\) e os preços dos insumos \(w\) e \(v\). Ela é o resultado de um problema de otimização em dois estágios: primeiro, para cada nível de produto \(q\), a firma minimiza custos (obtendo \(C(w,v,q)\) — o resultado do Capítulo 11); depois, maximiza o lucro sobre \(q\):

    \[
    \pi^*(p, w, v) = \max_{q \geq 0} \{p \cdot q - C(w, v, q)\}
    \label{eq:12.10} \tag{12.10}
    \]

    ou, equivalentemente, maximizando diretamente sobre insumos:

    \[
    \pi^*(p, w, v) = \max_{K, L \geq 0} \{p \cdot f(K, L) - wL - vK\}
    \]

    A função \(\pi^*\) mapeia o espaço de preços \((p, w, v) \in \mathbb{R}_{++}^3\) no lucro máximo alcançável. Ela é a **função valor** do problema de maximização de lucro — análoga à função utilidade indireta \(V(p, m)\) no problema do consumidor e à função custo mínimo \(C(w, q)\) no problema de minimização de custos. **Notação alternativa:** Quando o contexto é claro, escreve-se \(\pi(p)\) se \(w\) e \(v\) estão fixos, ou \(\pi(\mathbf{p})\) com \(\mathbf{p} = (p, w, v)\) o vetor completo de preços.

A função lucro possui propriedades notáveis:

1. **Não decrescente** em \(p\): um aumento no preço do produto nunca reduz o lucro máximo.
2. **Não crescente** em \(w\) e \(v\): um aumento no preço de qualquer insumo nunca aumenta o lucro máximo.
3. **Homogênea de grau 1** em \((p, w, v)\): se todos os preços (do produto e dos insumos) são multiplicados por \(t > 0\), o lucro máximo também é multiplicado por \(t\).
4. **Convexa** em \((p, w, v)\): a firma pode ajustar suas decisões em resposta a mudanças de preços, de modo que o lucro responde mais que proporcionalmente (é "mais sensível") a grandes mudanças de preços.

### Lema de Hotelling

!!! proof "Demonstração: Lema de Hotelling"
    **Enunciado.** Se \(\pi(p, w, v)\) é diferenciável, então:

    \[
    \frac{\partial \pi(p, w, v)}{\partial p} = q^*(p, w, v) \quad \text{(função de oferta)}
    \label{eq:12.11} \tag{12.11}
    \]

    \[
    \frac{\partial \pi(p, w, v)}{\partial w} = -L^*(p, w, v) \quad \text{(negativo da demanda por trabalho)}
    \label{eq:12.12} \tag{12.12}
    \]

    \[
    \frac{\partial \pi(p, w, v)}{\partial v} = -K^*(p, w, v) \quad \text{(negativo da demanda por capital)}
    \]

    **Demonstração.**
    Considere o problema de maximização de lucro com escolha de insumos:

    \[
    \pi(p, w, v) = \max_{K, L} \{p \cdot f(K, L) - wL - vK\}
    \]

    Seja \((K^*, L^*)\) a solução ótima. Defina a função objetivo como:

    \[
    g(K, L; p, w, v) = p \cdot f(K, L) - wL - vK
    \]

    Pelo **teorema da envoltória**, a derivada da função valor em relação a um parâmetro é igual à derivada parcial da função objetivo avaliada no ótimo:

    \[
    \frac{\partial \pi}{\partial p} = \frac{\partial g}{\partial p}\bigg|_{(K^*, L^*)} = f(K^*, L^*) = q^*
    \]

    \[
    \frac{\partial \pi}{\partial w} = \frac{\partial g}{\partial w}\bigg|_{(K^*, L^*)} = -L^*
    \]

    \[
    \frac{\partial \pi}{\partial v} = \frac{\partial g}{\partial v}\bigg|_{(K^*, L^*)} = -K^*
    \]

    **Verificação com Cobb-Douglas.** Para que a maximização de lucro tenha solução interior finita, a função de produção deve exibir retornos decrescentes de escala. Considere \(q = K^{1/3}L^{1/3}\) (\(\alpha + \beta = 2/3 < 1\)), com preços \((p, w, v)\). As CPOs são:

    \[
    \text{CPO}_L:\; \frac{p}{3}\,K^{1/3}L^{-2/3} = w, \qquad \text{CPO}_K:\; \frac{p}{3}\,K^{-2/3}L^{1/3} = v
    \]

    Dividindo \(\text{CPO}_K\) por \(\text{CPO}_L\): \(L/K = v/w\), logo \(L = (v/w)\,K\). Substituindo em \(\text{CPO}_K\):

    \[
    \frac{p}{3}\,K^{-2/3}\left(\frac{v}{w}\,K\right)^{1/3} = v \implies \frac{p}{3}\left(\frac{v}{w}\right)^{1/3} = v \cdot K^{1/3}
    \]

    \[
    K^{1/3} = \frac{p}{3\,v}\left(\frac{v}{w}\right)^{1/3} \implies K^* = \frac{p^3}{27\,v^3}\cdot\frac{v}{w} = \frac{p^3}{27\,v^2\,w}
    \]

    De forma análoga, \(L^* = \frac{p^3}{27\,w^2\,v}\). A produção ótima é:

    \[
    q^* = (K^*)^{1/3}(L^*)^{1/3} = \left(\frac{p^3}{27\,v^2 w}\right)^{1/3}\left(\frac{p^3}{27\,w^2 v}\right)^{1/3} = \frac{p^2}{9\,wv}
    \]

    O lucro máximo é \(\pi^* = p\,q^* - w\,L^* - v\,K^* = \frac{p^3}{9wv} - \frac{p^3}{27wv} - \frac{p^3}{27wv} = \frac{p^3}{27wv}\). Verificando o Lema:

    \[
    \frac{\partial \pi}{\partial p} = \frac{3p^2}{27wv} = \frac{p^2}{9wv} = q^* \;\checkmark \qquad \frac{\partial \pi}{\partial w} = -\frac{p^3}{27w^2 v} = -L^* \;\checkmark
    \]

    \(\blacksquare\)

    !!! note "Por que retornos constantes não funcionam"
        Com retornos constantes de escala (\(\alpha + \beta = 1\)), a função lucro é: zero se \(p = c(w,v)\); \(-\infty\) se \(p < c(w,v)\) (firma não produz); e \(+\infty\) se \(p > c(w,v)\) (firma quer produzir infinitamente). O problema de maximização não tem solução interior finita, e o Lema de Hotelling não se aplica. Por isso, a verificação numérica requer retornos decrescentes.

        **Nota:** A condição \(p^2 = 4wv\) é específica do caso simétrico \(\alpha = \beta = 1/2\). Para o caso geral \(\alpha + \beta = 1\), a condição de lucro zero é \(p = \kappa \cdot w^{\beta} \cdot v^{\alpha}\), onde \(\kappa = \alpha^{-\alpha}\beta^{-\beta}\) depende dos expoentes da função de produção.

!!! tip "Significado econômico do Lema de Hotelling"
    O Lema de Hotelling estabelece uma dualidade elegante: a partir da função lucro — que sintetiza toda a informação sobre tecnologia e preços — podemos recuperar tanto a **função de oferta** do produto quanto as **demandas por insumos**. Juntamente com o Lema de Shephard (Capítulo 11), forma o arcabouço dual da teoria da firma. A convexidade da função lucro implica que a oferta é não decrescente no preço do produto (lei da oferta) e que as demandas por insumos são não crescentes nos respectivos preços.

!!! idea "Intuição Econômica"
    **Em uma frase:** Conhecendo apenas o lucro máximo da firma em função dos preços, conseguimos deduzir quanto ela produz e quanto usa de cada insumo.

    **Pense assim:** É como se você olhasse apenas o extrato bancário de um feirante — quanto ele lucra a cada combinação de preço da banana e custo do transporte — e, só com essa informação, conseguisse descobrir quantas bananas ele vende e quantas viagens de caminhão ele faz. O Lema de Hotelling diz que a função lucro já carrega toda essa informação, bastando derivá-la.

    **Por que isso importa:** Essa propriedade é usada pelo [IPEA](https://www.ipea.gov.br) em modelos de equilíbrio geral computável para calibrar funções de oferta setorial da economia brasileira a partir de dados de lucro.

!!! idea "Intuição Econômica"
    **O Lema de Hotelling: a função lucro já contém toda a informação sobre a oferta**

    O resultado mais surpreendente da teoria dual da firma é que **não precisamos resolver o problema de otimização de produção** para saber quanto a firma produz — basta olhar para a função lucro e derivá-la. Isso ocorre porque a função lucro \(\pi^*(p, w, v)\) foi construída *maximizando* sobre \(q\) (e \(K, L\)): cada variação marginal em \(p\) desloca o lucro exatamente pelo valor da quantidade ótima (pelo teorema da envoltória). Em linguagem mais simples: o quanto a firma ganha com um centavo a mais no preço do produto é exatamente quanto ela estava produzindo.

    **Analogia com o consumidor:** O Lema de Hotelling é o espelho do Lema de Roy no lado do consumidor (\(x_i = -\partial V/\partial p_i / \partial V/\partial m\)): assim como a função de utilidade indireta contém toda a informação sobre as escolhas de consumo, a função lucro contém toda a informação sobre as escolhas de produção. A dualidade entre as teorias do consumidor e da firma é, em grande medida, uma consequência desse paralelismo matemático.

    **Implicação para estimação empírica:** Pesquisadores como De Loecker e Warzynski (2012) exploram relações derivadas do Lema de Hotelling para estimar markups diretamente de dados de produção, sem precisar de informação sobre preços de insumos — um avanço metodológico importante para medir poder de mercado em economias com dados limitados.

??? exercicio-resolvido "Exercício Resolvido 12.3 — Verificação do Lema de Hotelling"
    **Enunciado:** Uma firma com função de produção \(q = K^{1/3}L^{1/3}\) enfrenta preços \(p = 12\), \(w = 1\) e \(v = 1\). Encontre as demandas ótimas por insumos, a produção e o lucro máximo. Verifique o Lema de Hotelling.

    **Dados:** \(q = K^{1/3}L^{1/3}\); \(p = 12\), \(w = 1\), \(v = 1\).

    **Resolução:**

    **Passo 1 — Condições de primeira ordem**
    \[
    \text{CPO}_L:\; \frac{p}{3}\,K^{1/3}L^{-2/3} = w \implies 4\,K^{1/3}L^{-2/3} = 1
    \]
    \[
    \text{CPO}_K:\; \frac{p}{3}\,K^{-2/3}L^{1/3} = v \implies 4\,K^{-2/3}L^{1/3} = 1
    \]

    **Passo 2 — Razão ótima de insumos**

    Dividindo \(\text{CPO}_K\) por \(\text{CPO}_L\): \(L/K = v/w = 1\), logo \(L = K\).

    Substituindo em \(\text{CPO}_K\): \(4\,K^{-2/3}\,K^{1/3} = 1 \implies 4\,K^{-1/3} = 1 \implies K^{1/3} = 4 \implies K^* = 64\).

    Portanto: \(K^* = L^* = 64\) e \(q^* = 64^{1/3}\cdot 64^{1/3} = 4 \times 4 = 16\).

    **Passo 3 — Lucro máximo**
    \[
    \pi^* = 12 \times 16 - 1 \times 64 - 1 \times 64 = 192 - 128 = 64
    \]

    **Passo 4 — Função lucro geral**

    Para preços genéricos \((p, w, v)\), as soluções são \(K^* = \frac{p^3}{27\,v^2\,w}\) e \(L^* = \frac{p^3}{27\,w^2\,v}\), com \(q^* = \frac{p^2}{9\,wv}\) e:

    \[
    \pi(p, w, v) = \frac{p^3}{27\,wv}
    \]

    **Passo 5 — Verificação do Lema de Hotelling**
    \[
    \frac{\partial \pi}{\partial p} = \frac{3p^2}{27wv} = \frac{p^2}{9wv} = q^* \;\checkmark
    \]
    \[
    \frac{\partial \pi}{\partial w} = -\frac{p^3}{27w^2v} = -L^* \;\checkmark \qquad
    \frac{\partial \pi}{\partial v} = -\frac{p^3}{27wv^2} = -K^* \;\checkmark
    \]

    **Resultado:** \(K^* = L^* = 64\), \(q^* = 16\), \(\pi^* = 64\). O Lema de Hotelling é verificado: as derivadas da função lucro recuperam a oferta e as demandas por insumos.

    **Interpretação econômica:** A função lucro \(\pi = p^3/(27wv)\) é homogênea de grau 1 em \((p, w, v)\) — se todos os preços dobram, o lucro dobra. Ela é convexa em \(p\) (pois \(\partial^2\pi/\partial p^2 = 2p/(9wv) > 0\)), confirmando que a oferta é crescente no preço do produto. No contexto brasileiro, o Lema de Hotelling é usado em modelos de equilíbrio geral computável (como os do IPEA) para calibrar funções de oferta setorial a partir de dados de lucro.

<iframe src="/micro-book/graficos/cap12/webr-hotelling.html" title="WebR — Lema de Hotelling" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 12.4 — Lema de Hotelling: verificação numérica.** O código calcula a função lucro para \(q = K^{1/3}L^{1/3}\), verifica numericamente que \(\partial\pi/\partial p = q^*\) e \(\partial\pi/\partial w = -L^*\), e ilustra a convexidade de \(\pi\) em \(p\). A tangente no gráfico tem inclinação igual à oferta ótima — exatamente o lema em ação.
</div>

---

## 12.6 Dois Remadores Sincronizados: Demanda por Insumos {#126}

O Lema de Hotelling abriu um atalho elegante: derivar a função lucro e *voilà*, as demandas por insumos aparecem. Mas de onde vêm suas propriedades? Nesta seção, abrimos o capô dessas demandas e encontramos uma decomposição familiar — efeito substituição e efeito produto —, prima-irmã da decomposição de Slutsky do Capítulo 5. A diferença? Aqui não há espaço para "insumos de Giffen" — os dois efeitos sempre puxam na mesma direção, como dois remadores sincronizados.[^grail-shrubbery-demanda] Este resultado tem implicações diretas para a análise empírica da demanda por trabalho no Brasil: um aumento do salário mínimo, por exemplo, afeta a demanda por trabalho tanto pelo efeito substituição (trabalho fica relativamente mais caro que capital) quanto pelo efeito produto (custos maiores reduzem a produção ótima e, portanto, o emprego). Ambos os efeitos apontam na mesma direção, o que explica por que não há análogo de "insumo de Giffen" na teoria da firma.

[^grail-shrubbery-demanda]: "Bring me a shrubbery!" — o cavaleiro que diz "Ni!" no *Holy Grail* dos Monty Python tem uma demanda perfeitamente inelástica por arbustos. Não importa o preço, não importa a dificuldade: ele quer um arbusto e ponto. Na teoria da firma, a demanda por insumos nunca é assim — ela sempre responde ao preço, porque tanto o efeito substituição quanto o efeito produto empurram na mesma direção. Os cavaleiros que dizem "Ni!" seriam péssimos empresários.

### Demanda incondicional por insumos

A **demanda incondicional** (ou marshalliana) por insumos é obtida diretamente das condições de primeira ordem da maximização de lucro:

\[
L^*(p, w, v): \quad p \cdot f_L(K^*, L^*) = w
\]

\[
K^*(p, w, v): \quad p \cdot f_K(K^*, L^*) = v
\]

Estas demandas diferem das demandas condicionadas (Capítulo 11) porque não fixam o nível de produto — ele é determinado endogenamente pela maximização de lucro. A distinção é sutil, mas importante: as demandas condicionadas respondem à pergunta "dado que quero produzir \(q\) unidades, quanto de cada insumo devo usar?", enquanto as demandas incondicionais respondem a "quanto de cada insumo devo usar para maximizar meu lucro?". As primeiras dependem de \((w, v, q)\); as segundas, de \((p, w, v)\). Em termos práticos, a demanda incondicional é o objeto relevante para analisar o mercado de trabalho e de capital: uma empresa não observa apenas o seu custo ótimo para um produto fixo, mas ajusta simultaneamente a quantidade produzida e os insumos utilizados em resposta às mudanças de preços.

### Propriedades da demanda por insumos

A partir da convexidade da função lucro e do Lema de Hotelling, obtemos:

\[
\frac{\partial L^*}{\partial w} = -\frac{\partial^2 \pi}{\partial w^2} \leq 0
\]

A demanda por um insumo é **não crescente** em seu próprio preço — a "lei da demanda" para fatores de produção. Isso decorre da convexidade da função lucro (que implica que \(\partial^2 \pi / \partial w^2 \geq 0\)).

### Relação entre demanda condicionada e incondicional

A demanda incondicional por trabalho pode ser decomposta:

\[
\frac{\partial L^*}{\partial w} = \underbrace{\frac{\partial L^c}{\partial w}\bigg|_{q=q^*}}_{\text{efeito substituição}} + \underbrace{\frac{\partial L^c}{\partial q} \cdot \frac{\partial q^*}{\partial w}}_{\text{efeito produto}}
\label{eq:12.13} \tag{12.13}
\]

Na equação $\eqref{eq:12.13}$, o **efeito substituição** (\(\leq 0\)) reflete a substituição do trabalho por capital ao longo da isoquanta quando \(w\) sobe. O **efeito produto** também é negativo: \(w\) maior eleva o CMg, o que reduz \(q^*\), o que reduz a demanda por trabalho. Ambos os efeitos operam na mesma direção — diferentemente do caso do consumidor, onde efeito substituição e efeito renda podem ter sinais opostos (bem de Giffen).

A magnitude relativa desses dois efeitos é empiricamente relevante. Em indústrias com alta substituibilidade capital-trabalho (ex.: automação industrial), o efeito substituição pode ser dominante: um aumento de salário leva à mecanização (substituição de trabalhadores por máquinas) mesmo que a produção se mantenha. Em indústrias com tecnologia de proporções fixas (ex.: serviços de saúde de alto contato humano), o efeito produto pode predominar: salários mais altos reduzem a escala de operação sem mudar a composição de insumos. Pesquisas sobre o mercado de trabalho brasileiro — como as de Ulyssea (2018) citada na seção de pesquisa — documentam esses efeitos em contextos de informalidade e mudanças regulatórias, onde o custo efetivo do trabalho formal inclui encargos sociais que amplificam o efeito substituição.

!!! theorem "Proposição: Inexistência de 'insumo de Giffen'"
    Na teoria da firma maximizadora de lucro, a demanda por um insumo é sempre não crescente em seu próprio preço. Não existe o análogo de um "bem de Giffen" para insumos, pois tanto o efeito substituição quanto o efeito produto reduzem a demanda quando o preço do insumo aumenta.

<iframe src="/micro-book/graficos/cap12/webr-decomposicao-insumos.html" title="WebR — Decomposição da Demanda por Insumos" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 12.5 — Efeito substituição vs. efeito produto na demanda por trabalho.** O código decompõe a variação na demanda por trabalho quando \(w\) sobe: o efeito substituição (ao longo da isoquanta) e o efeito produto (redução de \(q^*\)) vão na mesma direção — confirmando que não existe "insumo de Giffen". Altere `dw` para ver como a magnitude do choque afeta cada componente.
</div>

---

!!! box-brasil "Box Brasil — JBS: quando fazer internamente é melhor que comprar no mercado"
    A **JBS S.A.** é a maior processadora de proteína animal do mundo, com receita líquida trimestral recorde de **R$ 110,5 bilhões** no 3º trimestre de 2024 e presença em mais de 20 países. Sua trajetória ilustra de forma notável a teoria dos custos de transação de **Coase** e **Williamson** (Seção 12.1).

    **A lógica da integração vertical**

    A JBS não se limita ao abate: opera em toda a cadeia — da criação de animais (confinamento próprio) ao processamento, embalagem, logística refrigerada e distribuição com marcas próprias (Friboi, Seara, Swift). Na linguagem de Williamson, isso se explica por três fatores:

    | Atributo da transação | Manifestação na cadeia de carne | Governança escolhida |
    |:---|:---|:---|
    | **Especificidade de ativos** | Plantas frigoríficas, câmaras frias, caminhões refrigerados — ativos com baixo valor fora da cadeia | Integração vertical |
    | **Frequência** | Abate diário de milhares de cabeças; transações contínuas | Hierarquia interna |
    | **Incerteza** | Volatilidade de preços do boi gordo; exigências sanitárias mutáveis; riscos de embargo internacional | Controle direto |

    Se a JBS dependesse exclusivamente do mercado para cada etapa — comprando serviços de transporte refrigerado, terceirizando o abate, contratando distribuidores independentes —, os custos de transação (negociação de contratos, risco de *hold-up*, problemas de qualidade) seriam proibitivos. A integração vertical reduz esses custos ao internalizar transações com alta especificidade de ativos.

    **Terceirização pós-reforma trabalhista**

    Na direção oposta, a **Reforma Trabalhista de 2017** (Lei 13.467/17) liberou a terceirização de atividade-fim no Brasil. Em termos coaseanos, a legislação reduziu os custos de transação de contratar no mercado (ao simplificar contratos e reduzir riscos jurídicos), deslocando a fronteira ótima da firma. Atividades com **baixa especificidade de ativos** — limpeza, segurança, TI — passaram a ser mais eficientemente contratadas no mercado, enquanto atividades com **alta especificidade** permanecem internalizadas.

    **Fonte**: JBS, Relatório de Resultados 3T2024; InfoMoney; Câmara dos Deputados.

---

!!! box-brasil "Box Brasil: Micro e pequenas empresas — a arte de sobreviver"

    As **micro e pequenas empresas (MPEs)** são o coração do tecido empresarial brasileiro. Segundo dados do **SEBRAE** e da **Receita Federal**:

    - As MPEs representam **99% dos estabelecimentos** formais no Brasil.
    - Respondem por cerca de **55% dos empregos formais** e **30% do PIB**.
    - Aproximadamente **29% das MPEs fecham nos primeiros 5 anos** de atividade (taxa de mortalidade apurada pelo SEBRAE para empresas constituídas em 2017).

    **Causas da mortalidade empresarial:**

    | Fator | Frequência citada | Interpretação microeconômica |
    |:---|:---|:---|
    | Falta de planejamento/gestão | ~25% | Incapacidade de minimizar custos (ineficiência produtiva) |
    | Dificuldade de acesso a crédito | ~20% | Custo de capital elevado (\(r\) alto), restrição de liquidez |
    | Carga tributária excessiva | ~18% | Deslocamento para cima das curvas de custo |
    | Concorrência intensa | ~15% | Preço de mercado abaixo do CMe mínimo da firma |
    | Falta de demanda | ~12% | Receita insuficiente para cobrir custos |
    | Problemas pessoais/societários | ~10% | Custos de transação internos (governança) |

    **O Simples Nacional** (LC 123/2006, reformulado pela LC 155/2016) é uma política pública que busca reduzir a carga tributária e a complexidade burocrática para MPEs, unificando tributos em uma guia única com alíquotas progressivas. Em termos microeconômicos, o Simples desloca para baixo as curvas de custo das MPEs, reduzindo o **ponto de fechamento** (\(\mathrm{CVMe}_{\min}\)) e permitindo que firmas menos eficientes sobrevivam.

    **Interpretação via teoria da firma.**
    A alta mortalidade das MPEs pode ser entendida como o resultado de firmas que operam com \(p < \mathrm{CMe}_{\min}\) no longo prazo. No curto prazo, muitas continuam operando enquanto \(p > \mathrm{CVMe}_{\min}\) (cobrindo custos variáveis e parte dos fixos), mas quando os custos fixos (aluguéis, financiamentos) vencem, a firma é forçada a fechar. A decisão de Coase — fazer internamente ou comprar no mercado — também é relevante: muitas MPEs fracassam por tentarem internalizar atividades que seriam mais eficientes se terceirizadas, incorrendo em custos organizacionais que superam os custos de transação do mercado.

    Dados mais recentes do **Mapa de Empresas** (Governo Federal) indicam que o Brasil registrou mais de **21 milhões de empresas ativas** em 2024, com uma taxa de abertura de novas empresas que supera consistentemente a de fechamento — sugerindo um dinamismo empreendedor robusto, mas com alta rotatividade. O desafio de política pública é transformar sobrevivência em **crescimento sustentável** — e isso passa, em boa medida, por reduzir o custo Brasil analisado no capítulo anterior.


---

Começamos perguntando como a firma escolhe quanto produzir — uma questão quase ingênua, dissemos. Mas a resposta montou toda a anatomia do lucro: da condição RMg = CMg à decisão de shutdown, do Lema de Hotelling que extrai oferta e demandas de uma única derivada à decomposição que mostra por que não existem "insumos de Giffen". A firma nua — despida de poder de mercado, sozinha diante do preço — encontrou seu ótimo. Agora falta o palco.

*A firma individual encontrou seu ótimo. Mas o mercado tem centenas delas — e um imposto pode mudar tudo. No próximo capítulo, equilibramos o mercado inteiro.*
