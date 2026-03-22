# Capítulo 11 — Por Que Nada É de Graça

No capítulo anterior, examinamos a tecnologia da firma — como insumos são transformados em produtos. Agora, damos o passo seguinte e perguntamos: **quanto custa** realizar essa transformação? A teoria dos custos conecta a esfera da produção à esfera dos preços, traduzindo as possibilidades tecnológicas em termos monetários.

A distinção entre custos econômicos e contábeis, o conceito de custo de oportunidade, a relação entre minimização de custos e maximização de lucro, o papel das curvas de custo de curto e longo prazo e o elegante Lema de Shephard — que conecta a função custo às demandas condicionadas por insumos — são os temas centrais deste capítulo.

A compreensão da estrutura de custos é indispensável para a análise da oferta, da formação de preços e da organização industrial. No contexto brasileiro, onde o chamado "custo Brasil" — que engloba carga tributária, deficiências logísticas e burocracia — pesa significativamente sobre a competitividade das empresas, essa análise ganha relevância adicional. Da soja exportada pelo Porto de Santos ao café especial de Minas Gerais, a estrutura de custos determina quais firmas sobrevivem e quais saem do mercado.

---

## 11.1 Definições de Custos

### Custo econômico versus custo contábil

!!! definition "Custo econômico"
    O **custo econômico** (ou custo de oportunidade) de utilizar um recurso na produção é o valor desse recurso em seu **melhor uso alternativo**. Inclui tanto os custos explícitos (pagamentos efetivos) quanto os custos implícitos (remuneração do capital próprio, salário do proprietário, etc.).

!!! definition "Custo contábil"
    O **custo contábil** registra apenas os desembolsos efetivamente realizados — custos explícitos. Não considera o custo de oportunidade dos recursos próprios da firma.

Por que essa distinção importa? Porque o contador e o economista podem olhar para o mesmo balanço e chegar a conclusões opostas sobre a saúde financeira de uma empresa. O lucro contábil pode ser positivo enquanto o lucro econômico é negativo — o que significa que a empresa está destruindo valor, pois seus recursos renderiam mais em outro uso. A diferença entre lucro econômico e lucro contábil é dada pelos custos implícitos:

\[
\pi_{\text{econômico}} = \text{Receita total} - \text{Custos explícitos} - \text{Custos implícitos}
\]

\[
\pi_{\text{contábil}} = \text{Receita total} - \text{Custos explícitos}
\]

Quando o lucro econômico é zero, a firma obtém o **lucro normal** — isto é, remunera todos os fatores de produção, inclusive os próprios, pelo seu custo de oportunidade. Lucro econômico positivo indica **lucro supranormal** (ou econômico puro).

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O custo de oportunidade é o valor daquilo que você deixou de fazer ao escolher o que fez.

    **Pense assim:** Um engenheiro que larga o emprego de R$ 15.000/mês para abrir uma hamburgueria precisa contar esse salário perdido como custo do negócio. Se a hamburgueria lucra R$ 12.000 por mês no papel, na verdade ele está "perdendo" R$ 3.000 em relação ao que poderia ganhar — o lucro econômico é negativo.

    **Por que isso importa:** Ignorar o custo de oportunidade é o erro mais comum de pequenos empreendedores no Brasil e explica por que muitos negócios parecem lucrativos no extrato bancário, mas não compensam economicamente.

!!! tip "Exemplo: custo de oportunidade na agricultura brasileira"
    Um produtor rural no Cerrado possui 500 hectares de terra própria e os utiliza para plantar soja. O custo contábil inclui sementes, fertilizantes, mão de obra e depreciação de máquinas. Porém, o custo econômico deve incluir também o **arrendamento** que ele deixa de receber ao não alugar a terra — que, segundo dados da [CONAB](https://www.conab.gov.br), pode variar de 8 a 15 sacas de soja por hectare/ano conforme a região. Se o arrendamento médio é de 12 sacas/ha e a saca vale R$ 120, o custo implícito da terra é de R$ 720.000/ano — valor que o lucro contábil ignora completamente.

### Custos irrecuperáveis (sunk costs)

A distinção entre custo econômico e custo contábil não é a única armadilha conceitual na análise de custos. Outra categoria merece atenção especial — não por ser relevante para as decisões futuras da firma, mas justamente por *não* dever sê-lo. Trata-se dos custos irrecuperáveis, cuja compreensão é essencial para a tomada de decisão racional.

!!! note "Custos irrecuperáveis"
    **Custos irrecuperáveis** (*sunk costs*) são despesas já realizadas e que não podem ser recuperadas. Do ponto de vista da tomada de decisão racional, custos irrecuperáveis **não devem influenciar** decisões correntes e futuras — apenas custos evitáveis (prospectivos) são relevantes. Contudo, a economia comportamental documenta extensamente o viés dos custos irrecuperáveis (*sunk cost fallacy*), pelo qual agentes continuam investindo em projetos fracassados para "justificar" gastos passados.

---

## 11.2 Maximização de Lucro e Minimização de Custos

Definidos os conceitos de custo econômico e custo de oportunidade, podemos agora perguntar: qual é a relação entre o objetivo da firma — maximizar lucro — e o problema de minimizar custos? À primeira vista, parecem ser dois lados da mesma moeda. E de fato são intimamente relacionados, mas a relação tem uma sutil assimetria que merece atenção.

A firma maximizadora de lucro resolve:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - vK
\]

onde \(p\) é o preço do produto, \(w\) é o salário e \(v\) é o custo de aluguel do capital.

Um resultado central é que a **maximização de lucro implica minimização de custos**: se a firma escolhe quantidades de insumos que maximizam o lucro, então, para o nível de produto resultante, ela necessariamente minimiza o custo de produção. A recíproca, contudo, não é verdadeira — minimizar custos é condição necessária, mas não suficiente, para maximizar lucro, pois a firma ainda precisa escolher o nível ótimo de produção.

!!! abstract "Proposição: Maximização de lucro implica minimização de custos"
    Se \((K^*, L^*)\) resolve o problema de maximização de lucro \(\max_{K,L} \; pf(K,L) - wL - vK\) com produto \(q^* = f(K^*, L^*)\), então \((K^*, L^*)\) também resolve o problema de minimização de custos para o nível de produto \(q^*\):

    \[
    \min_{K, L} \; wL + vK \quad \text{s.a.} \quad f(K, L) \geq q^*
    \]

---

## 11.3 Minimização de Custos: Isocusto e Tangência

Estabelecida a relação entre maximização de lucro e minimização de custos, mergulhamos agora na análise detalhada do problema de minimização. A estrutura é elegantemente simétrica à do problema do consumidor que minimiza gasto para atingir um dado nível de utilidade (Capítulo 5): aqui, a firma busca a combinação de insumos de menor custo que ainda permita atingir o nível de produto desejado. Essa simetria não é mera coincidência — ela reflete a dualidade fundamental entre produção e custos que percorre toda a teoria da firma.

<iframe src="../graficos/cap11/minimizacao-custo.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 11.1 — Minimização de custo.** A isoquanta (azul) e a reta de isocusto (vermelha) tangenciam-se no ponto ótimo. Ajuste \(w\), \(v\), \(q\) e \(\alpha\) para observar como a combinação ótima de insumos e o custo mínimo se alteram.
</div>

### O problema de minimização de custos

O problema dual ao da maximização do produto sujeito a um orçamento é a **minimização do custo** de atingir um dado nível de produto:

\[
\min_{K, L} \; C = wL + vK \quad \text{s.a.} \quad f(K, L) = q_0
\]

A lógica é análoga à do consumidor que minimiza o gasto para atingir um dado nível de utilidade (Capítulo 5). Aqui, a isoquanta substitui a curva de indiferença, e a reta de isocusto substitui a reta orçamentária.

### A reta de isocusto

A **reta de isocusto** representa todas as combinações de insumos que geram o mesmo custo total \(C_0\):

\[
C_0 = wL + vK \implies K = \frac{C_0}{v} - \frac{w}{v}L
\]

A inclinação da isocusto é \(-w/v\), a razão dos preços dos insumos.

### Condição de tangência

Pelo método de Lagrange, a condição de primeira ordem para a minimização de custos é:

\[
\mathcal{L} = wL + vK + \lambda[q_0 - f(K, L)]
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda f_L = 0 \implies \lambda = \frac{w}{f_L}
\]

\[
\frac{\partial \mathcal{L}}{\partial K} = v - \lambda f_K = 0 \implies \lambda = \frac{v}{f_K}
\]

Igualando:

\[
\frac{w}{f_L} = \frac{v}{f_K} \implies \frac{f_L}{f_K} = \frac{w}{v} \implies \mathrm{TMST}_{L,K} = \frac{w}{v}
\]

Essa condição tem uma interpretação econômica elegante e direta: no ótimo, a taxa à qual a firma *pode* substituir capital por trabalho sem perder produção (a TMST) deve igualar a taxa à qual o mercado *permite* essa substituição (a razão de preços \(w/v\)). Se a TMST fosse maior que \(w/v\), a firma poderia reduzir custos usando mais trabalho e menos capital; se fosse menor, o ajuste inverso seria vantajoso.

!!! abstract "Condição de minimização de custos"
    No ótimo, a **TMST** (inclinação da isoquanta) iguala a **razão dos preços dos insumos** (inclinação da isocusto):

    \[
    \mathrm{TMST}_{L,K} = \frac{w}{v}
    \]

    Equivalentemente, o produto marginal por unidade monetária gasta deve ser igual para todos os insumos:

    \[
    \frac{f_L}{w} = \frac{f_K}{v}
    \]

### Demandas condicionadas por insumos

A condição de tangência nos diz *como* os insumos devem ser combinados no ótimo, mas não *quanto* de cada insumo é necessário. Para isso, precisamos resolver simultaneamente a condição de tangência e a restrição tecnológica \(f(K, L) = q_0\). O resultado são as **demandas condicionadas** por insumos.

Resolvendo as condições de primeira ordem junto com a restrição \(f(K, L) = q_0\), obtemos as **demandas condicionadas** (ou demandas hicksianas na produção):

\[
L^c = L^c(w, v, q), \qquad K^c = K^c(w, v, q)
\]

Estas funções expressam as quantidades ótimas de cada insumo como funções dos preços dos insumos e do nível de produto desejado.

---

## 11.4 A Função Custo e o Lema de Shephard

A minimização de custos nos forneceu as demandas condicionadas por insumos — as quantidades ótimas de capital e trabalho para cada nível de produto, dados os preços. Substituindo essas demandas de volta na expressão de custo, obtemos a **função custo**, que sintetiza toda a informação relevante sobre a tecnologia e os preços em uma única relação entre custo mínimo e quantidade produzida. Essa função é a peça central da análise dual da firma, e dela emerge um dos resultados mais elegantes da microeconomia: o Lema de Shephard.

### A função custo

!!! definition "Função custo"
    A **função custo** \(C(w, v, q)\) é o valor mínimo do custo de produzir \(q\) unidades, dados os preços dos insumos \(w\) e \(v\):

    \[
    C(w, v, q) = wL^c(w, v, q) + vK^c(w, v, q)
    \]

A função custo possui as seguintes propriedades:

1. **Não decrescente** em \(w\), \(v\) e \(q\).
2. **Homogênea de grau 1** nos preços dos insumos: \(C(tw, tr, q) = tC(w, v, q)\). Se todos os preços dos insumos dobram, o custo mínimo dobra.
3. **Côncava** nos preços dos insumos: a firma substitui o insumo que ficou mais caro pelo mais barato, de modo que o custo cresce menos que proporcionalmente ao aumento do preço de um insumo.
4. **Contínua** nos preços dos insumos.

### Lema de Shephard

!!! proof "Demonstração: Lema de Shephard"
    **Enunciado.** Se \(C(w, v, q)\) é a função custo e é diferenciável em \((w, v)\), então as demandas condicionadas por insumos são obtidas pela derivada parcial da função custo em relação ao preço do respectivo insumo:

    \[
    \frac{\partial C(w, v, q)}{\partial w} = L^c(w, v, q), \qquad \frac{\partial C(w, v, q)}{\partial v} = K^c(w, v, q)
    \]

    **Demonstração.**
    Considere o problema de minimização de custos. Pelo teorema da envoltória, a derivada da função valor (custo mínimo) em relação a um parâmetro é igual à derivada parcial do lagrangeano avaliado no ótimo.

    O lagrangeano é:

    \[
    \mathcal{L}(K, L, \lambda; w, v, q) = wL + vK + \lambda[q - f(K, L)]
    \]

    Pelo teorema da envoltória:

    \[
    \frac{\partial C}{\partial w} = \frac{\partial \mathcal{L}}{\partial w}\bigg|_{(K^c, L^c, \lambda^*)} = L^c(w, v, q)
    \]

    Analogamente:

    \[
    \frac{\partial C}{\partial v} = K^c(w, v, q)
    \]

    **Verificação com Cobb-Douglas.** Para \(q = K^{\alpha}L^{1-\alpha}\), a função custo é:

    \[
    C(w, v, q) = q \cdot \kappa \cdot w^{1-\alpha} \cdot v^{\alpha}
    \]

    onde \(\kappa = \left(\frac{\alpha}{1-\alpha}\right)^{-(1-\alpha)} + \left(\frac{\alpha}{1-\alpha}\right)^{\alpha}\) é uma constante. Derivando em relação a \(w\):

    \[
    \frac{\partial C}{\partial w} = q \cdot \kappa \cdot (1-\alpha) \cdot w^{-\alpha} \cdot v^{\alpha} = L^c(w, v, q)
    \]

    o que confirma o lema. \(\blacksquare\)

!!! tip "Significado econômico do Lema de Shephard"
    O Lema de Shephard é a contraparte, na teoria da produção, da **identidade de Roy** na teoria do consumidor. Ele permite recuperar as demandas condicionadas por insumos a partir de informações sobre custos — que são frequentemente mais fáceis de observar empiricamente do que as tecnologias de produção subjacentes. É uma ferramenta central na estimação empírica de funções de custo.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O Lema de Shephard diz que, se você sabe como o custo total muda quando o salário sobe um pouquinho, você já sabe quanta mão de obra a firma usa.

    **Pense assim:** Se o preço da energia sobe R$ 0,01 por kWh e a conta de luz da fábrica sobe R$ 500, você sabe que a fábrica consome 50.000 kWh. O lema formaliza essa ideia simples: a sensibilidade do custo ao preço de um insumo revela a quantidade usada desse insumo.

    **Por que isso importa:** Na prática, é muito mais fácil observar custos e preços do que medir diretamente a tecnologia de produção. O Lema de Shephard permite que economistas estimem demandas por insumos a partir de dados contábeis — algo essencial para política tributária e regulação no Brasil.

---

## 11.5 Curvas de Custo

A função custo derivada na seção anterior é uma construção abstrata que relaciona custo mínimo a preços de insumos e nível de produto. Nesta seção, fixamos os preços dos insumos e examinamos como o custo varia com a quantidade produzida — obtendo as célebres curvas de custo total, custo médio e custo marginal que constituem o instrumental básico de análise da firma. Compreender as relações geométricas entre essas curvas — em particular, por que o custo marginal cruza o custo médio em seu ponto de mínimo — é fundamental para a análise da oferta e para a resolução de problemas da ANPEC.

<iframe src="../graficos/cap11/curvas-custo.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 11.2 — Curvas de custo total, médio e marginal.** Ajuste os parâmetros da função cúbica de custo e observe as relações entre CT, CMe, CMg e CVMe. O ponto vermelho no CMg é arrastável. Destaque para o ponto de fechamento (mín CVMe) e o cruzamento CMg–CMe no mínimo do CMe.
</div>

### Custo total, custo médio e custo marginal

!!! definition "Curvas de custo"
    Para uma função custo \(C(q)\) (com preços de insumos fixos):

    - **Custo Total**: \(CT(q) = CF + CV(q)\), onde \(CF\) é o custo fixo e \(CV(q)\) é o custo variável.
    - **Custo Médio**: \(\mathrm{CMe}(q) = \frac{CT(q)}{q} = \frac{CF}{q} + \frac{CV(q)}{q} = \mathrm{CFMe} + \mathrm{CVMe}\)
    - **Custo Variável Médio**: \(\mathrm{CVMe}(q) = \frac{CV(q)}{q}\)
    - **Custo Marginal**: \(\mathrm{CMg}(q) = \frac{dCT(q)}{dq} = \frac{dCV(q)}{dq}\)

### Relações entre as curvas de custo

| Relação | Expressão | Implicação |
|:---|:---|:---|
| CMg e CMe | Se \(\mathrm{CMg} < \mathrm{CMe}\), CMe é decrescente | CMg "puxa" CMe para baixo |
| CMg e CMe | Se \(\mathrm{CMg} > \mathrm{CMe}\), CMe é crescente | CMg "puxa" CMe para cima |
| CMg e CMe | Se \(\mathrm{CMg} = \mathrm{CMe}\), CMe é mínimo | CMg cruza CMe no ponto mínimo |
| CMg e CVMe | Se \(\mathrm{CMg} < \mathrm{CVMe}\), CVMe é decrescente | Mesma lógica do CMe |
| CMg e CVMe | Se \(\mathrm{CMg} = \mathrm{CVMe}\), CVMe é mínimo | CMg cruza CVMe no ponto mínimo |
| CMe e CVMe | \(\mathrm{CMe} = \mathrm{CVMe} + \mathrm{CFMe}\) | CMe está sempre acima de CVMe |
| CMe e CVMe | \(\mathrm{CMe} - \mathrm{CVMe} = CF/q \to 0\) | As curvas convergem quando \(q \to \infty\) |
| Área sob CMg | \(\int_0^q \mathrm{CMg}(x)\,dx = CV(q)\) | Custo variável = área sob CMg |

<div class="caption-obj" markdown>
**Tabela 11.1 — Relações entre as curvas de custo.**
</div>

A demonstração de que o CMg cruza o CMe no ponto de mínimo segue diretamente:

\[
\frac{d(\mathrm{CMe})}{dq} = \frac{d}{dq}\left(\frac{CT}{q}\right) = \frac{\mathrm{CMg} \cdot q - CT}{q^2} = \frac{\mathrm{CMg} - \mathrm{CMe}}{q}
\]

Portanto, \(\mathrm{CMe}\) é decrescente quando \(\mathrm{CMg} < \mathrm{CMe}\) e crescente quando \(\mathrm{CMg} > \mathrm{CMe}\).**

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** O custo marginal "puxa" o custo médio — se produzir uma unidade a mais custa menos que a média, a média cai; se custa mais, a média sobe.

    **Pense assim:** Pense na sua média de notas na faculdade. Se você tira 9 na próxima prova e sua média é 7, a média sobe. Se tira 5, a média cai. A nota marginal (a próxima prova) sempre arrasta a média na sua direção. Com custos é igual: o CMg cruza o CMe exatamente no ponto de mínimo do CMe.

    **Por que isso importa:** Essa relação determina a escala ótima de produção das firmas e é a base para entender por que empresas brasileiras em setores com altos custos fixos (como telecomunicações) precisam de escala grande para serem viáveis.

### Formato típico das curvas de custo

Com rendimentos marginais inicialmente crescentes e depois decrescentes (o formato clássico), as curvas de custo apresentam:

- **CMg**: formato de U — inicialmente decrescente (quando o produto marginal é crescente) e depois crescente (quando o produto marginal é decrescente).
- **CVMe**: formato de U — segue a mesma lógica, mas é mais suave.
- **CMe**: formato de U — soma de CVMe (U) com CFMe (decrescente). O mínimo do CMe ocorre à direita do mínimo do CVMe.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Custo marginal e produto marginal são espelhos: quando a produtividade do trabalhador sobe, o custo de mais uma unidade cai — e vice-versa.

    **Pense assim:** Se um padeiro experiente faz 100 pães por hora e o aprendiz faz 20, o custo por pão do aprendiz é cinco vezes maior. Quando a produtividade marginal cresce (o aprendiz melhora), o custo marginal cai. A curva de CMg é o "reflexo invertido" da curva de PMg.

    **Por que isso importa:** Essa relação inversa (\(\mathrm{CMg} = w / PMg_L\)) conecta diretamente a teoria da produção à teoria dos custos e explica por que a curva de CMg tem formato de U — herança direta da lei dos rendimentos marginais decrescentes.

---

## 11.6 Deslocamentos nas Curvas de Custo

As curvas de custo analisadas até aqui foram derivadas para preços de insumos e tecnologia fixos. Mas o mundo real é dinâmico: salários sobem, o preço da energia flutua, novas tecnologias surgem e a regulação muda. Como essas mudanças afetam as curvas de custo da firma? Esta seção examina três fontes de deslocamento: variações nos preços dos insumos, progresso técnico e tributação.

### Mudanças nos preços dos insumos

Um aumento no salário \(w\) desloca para cima as curvas de custo. Pelo Lema de Shephard, o impacto é proporcional à quantidade de trabalho utilizada:

\[
\frac{\partial C}{\partial w} = L^c > 0
\]

O efeito sobre a curva de CMg depende de como a intensidade de trabalho varia com o nível de produto. Se a produção é intensiva em trabalho, o deslocamento será proporcionalmente maior.

### Progresso técnico

Uma melhoria tecnológica (aumento de \(A\) na função de produção) permite produzir a mesma quantidade com menos insumos, deslocando todas as curvas de custo para baixo. Se o progresso técnico é enviesado — por exemplo, poupador de trabalho —, ele reduz relativamente mais os custos de firmas intensivas em trabalho.

!!! tip "Exemplo: mecanização na agricultura brasileira"
    A adoção de colheitadeiras mecanizadas na produção de soja no Cerrado é um exemplo de progresso técnico poupador de trabalho. Segundo dados da EMBRAPA, o número de horas-homem por hectare na cultura da soja caiu de cerca de 25 h/ha nos anos 1980 para menos de 1 h/ha com plantio direto mecanizado. Essa redução desloca a curva de custo para baixo e altera a razão ótima capital/trabalho, tornando a produção mais intensiva em capital.

### Impostos e regulação

Impostos sobre insumos funcionam como aumentos nos preços dos insumos. Um imposto *ad valorem* sobre o trabalho de alíquota \(\tau\) eleva o custo efetivo do trabalho para \(w(1 + \tau)\), deslocando as curvas de custo para cima.

---

## 11.7 Curto Prazo versus Longo Prazo: A Curva Envoltória

Uma das distinções mais importantes da teoria dos custos é entre curto e longo prazo. No curto prazo, pelo menos um insumo está fixo, e a firma opera com uma "planta" dada — arcando com custos que poderiam ser menores se pudesse redimensionar suas instalações. No longo prazo, todos os insumos são ajustáveis, e a firma pode escolher a escala de planta que minimiza seus custos para cada nível de produção. A relação entre essas duas perspectivas temporais gera a célebre **curva envoltória** — uma das construções mais elegantes da teoria dos custos.

### Custos de curto prazo

No **curto prazo**, o capital é fixo em \(\bar{K}\). A firma só pode ajustar o trabalho. O custo total de curto prazo é:

\[
CT_{CP}(q; \bar{K}) = v\bar{K} + w \cdot L(q, \bar{K})
\]

onde \(L(q, \bar{K})\) é a quantidade de trabalho necessária para produzir \(q\) dado \(\bar{K}\), obtida invertendo a função de produção de curto prazo.

### Custos de longo prazo

No **longo prazo**, todos os insumos são variáveis. A firma escolhe simultaneamente \(K\) e \(L\) para minimizar custos:

\[
CT_{LP}(q) = \min_{K, L} \{wL + vK \mid f(K, L) = q\}
\]

### A curva envoltória

A Figura 11.3 mostra a envoltória em termos de **custo total**. Cada curva colorida representa o \(CT_{CP}(q; \bar{K}) = wq^2/\bar{K} + v\bar{K}\) para um nível fixo de capital, assumindo a tecnologia Cobb-Douglas \(q = K^{0{,}5}L^{0{,}5}\). A curva azul — o custo total de longo prazo — é calculada **numericamente** como \(CT_{LP}(q) = \min_{\bar{K}} CT_{CP}(q; \bar{K})\) para cada \(q\), confirmando que a envoltória inferior emerge da minimização ponto a ponto. Nos pontos de tangência (marcadores verdes), a inclinação do \(CT_{CP}\) é igual à do \(CT_{LP}\) — uma aplicação direta do **Teorema do Envelope**: a derivada da função valor em relação ao parâmetro (\(q\)) coincide com a derivada parcial do objetivo avaliada no ótimo.

<iframe src="../graficos/cap11/envoltoria-custo-total.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 11.3 — Envoltória de custo total: cada curva colorida é um \(CT_{CP}\) para um nível fixo de capital \(\bar{K}\); a curva azul (\(CT_{LP}\)) é a envoltória inferior, obtida numericamente.** Os pontos verdes indicam onde cada \(CT_{CP}\) tangencia a envoltória. Use os controles para alterar \(w\) e \(v\), e as caixas de seleção para mostrar/ocultar curvas individuais e pontos de tangência.
</div>

!!! abstract "Teorema da curva envoltória"
    A curva de custo médio de longo prazo (\(\mathrm{CMe}_{LP}\)) é a **envoltória** das curvas de custo médio de curto prazo. Para cada nível de produto \(q\):

    \[
    \mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}) \quad \text{para todo } \bar{K}
    \]

    com igualdade quando \(\bar{K} = K^*(q)\), o nível ótimo de capital de longo prazo para produzir \(q\).

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** No longo prazo, a firma pode ajustar tudo — por isso seus custos nunca superam os de curto prazo.

    **Pense assim:** Um restaurante com cozinha pequena (capital fixo) gasta muito para atender 200 clientes no sábado — precisa de horas extras, delivery externo. Mas se pudesse escolher o tamanho da cozinha (longo prazo), dimensionaria para 200 e gastaria menos. A curva de CMe de longo prazo "tangencia" cada curva de curto prazo no ponto ótimo de cada configuração.

    **Por que isso importa:** A envoltória de custos de longo prazo determina a escala eficiente da firma e, portanto, o número de firmas que o mercado comporta — informação crucial para política antitruste e regulação.

Propriedade importante: no ponto de tangência, o CMg de curto prazo é igual ao CMg de longo prazo:

\[
\mathrm{CMg}_{CP}(q^*; \bar{K}^*) = \mathrm{CMg}_{LP}(q^*)
\]

A Figura 11.4 complementa a visão anterior, agora em termos de **custo médio**. Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória.

<iframe src="../graficos/cap11/curto-longo-prazo.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<div class="caption-obj" markdown>
**Figura 11.4 — Curva envoltória: CMe de curto e longo prazo.** Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória. Selecione \(\bar{K}\) para destacar o SRAC correspondente e ver o ponto de tangência.
</div>

### Economias e deseconomias de escala

A forma da curva \(\mathrm{CMe}_{LP}\) reflete os rendimentos de escala:

- **Rendimentos crescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) decrescente \(\Leftrightarrow\) **economias de escala**.
- **Rendimentos constantes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) constante.
- **Rendimentos decrescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) crescente \(\Leftrightarrow\) **deseconomias de escala**.

A **escala mínima eficiente** (EME) é o menor nível de produto para o qual o CMe de longo prazo atinge seu mínimo. A EME tem implicações diretas para a estrutura de mercado: se a EME é grande em relação ao tamanho do mercado, o setor tende a ter poucas firmas (oligopólio ou monopólio natural). Por exemplo, se a EME de uma montadora de automóveis é de 200 mil veículos por ano e o mercado brasileiro absorve 2 milhões, o mercado comporta no máximo dez montadoras eficientes — o que ajuda a explicar a estrutura oligopolística observada nesse setor.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Economias de escala significam que produzir mais sai mais barato por unidade — o custo médio cai conforme a firma cresce.

    **Pense assim:** Uma fábrica de cerveja artesanal paga quase o mesmo aluguel, energia e licença sanitária que uma grande cervejaria, mas produz muito menos garrafas para diluir esses custos. Por isso a Ambev consegue vender a R$ 3 a lata enquanto a artesanal cobra R$ 15 — a escala mínima eficiente do setor é alta.

    **Por que isso importa:** Economias de escala explicam a concentração em setores como aviação, telecomunicações e siderurgia no Brasil, e são o principal argumento em análises de fusões pelo [CADE](https://www.gov.br/cade).

---

## 🇧🇷 Box Brasil: Estrutura de Custos e o "Custo Brasil"

!!! example "🇧🇷 Box Brasil: O peso do 'custo Brasil' na indústria de alimentos"

    O termo **"custo Brasil"** designa o conjunto de ineficiências sistêmicas que elevam os custos de produção no país acima dos padrões internacionais. Segundo levantamentos da **Confederação Nacional da Indústria (CNI)** e da **FIESP**, o custo Brasil representava, em estimativas recentes, um sobrecusto de cerca de **R$ 1,7 trilhão por ano** para a economia brasileira — equivalente a aproximadamente 20% do PIB.

    **Componentes do custo Brasil na indústria de alimentos:**

    | Componente | Impacto estimado | Descrição |
    |:---|:---|:---|
    | Carga tributária | 25–35% do faturamento | ICMS, PIS/COFINS, IPI, contribuições sobre folha |
    | Logística e transporte | 12–15% do custo total | Dependência do modal rodoviário, infraestrutura precária |
    | Energia elétrica | 8–12% dos custos industriais | Tarifas entre as mais altas do mundo |
    | Burocracia regulatória | 3–5% dos custos | Licenças, fiscalizações, cumprimento de obrigações acessórias |
    | Custo de capital | Variável | Taxas de juros historicamente elevadas |

    **Logística: o gargalo mais visível.**
    O Brasil transporta cerca de **65% de sua carga** pelo modal rodoviário, contra 25–30% nos EUA e menos de 10% na Europa. Para a indústria de alimentos, que opera com margens estreitas e produtos perecíveis, essa dependência eleva drasticamente os custos de distribuição. O frete de uma tonelada de soja de Sorriso (MT) ao Porto de Santos percorre mais de 2.000 km por estrada, a um custo estimado em US$ 90–120/tonelada — cerca do triplo do custo equivalente nos EUA (dados CNI, 2023).

    **Interpretação microeconômica.**
    Em termos da teoria dos custos, o "custo Brasil" representa um deslocamento para cima das curvas de custo das firmas brasileiras em relação a competidores internacionais. Trata-se, em grande parte, de **custos fixos** (burocracia, tributação fixa) e **custos variáveis** elevados (logística, energia). A consequência é que a **escala mínima eficiente** das firmas brasileiras tende a ser maior, dificultando a sobrevivência de empresas menores e reduzindo a competitividade internacional. A reforma tributária de 2023 (EC 132/2023), com a unificação de tributos sobre consumo (CBS e IBS), representa uma tentativa de reduzir uma das principais fontes do custo Brasil.

---

## 🇧🇷 Box Brasil: Economias de Escala na Agropecuária

!!! example "🇧🇷 Box Brasil: Escala mínima eficiente e concentração na produção de soja"

    A produção de soja no Brasil ilustra de forma nítida o papel das economias de escala na determinação da estrutura produtiva. Segundo dados do **Censo Agropecuário do [IBGE](https://www.ibge.gov.br) (2017)**, enquanto 70% dos estabelecimentos produtores de soja possuem menos de 100 hectares, esses estabelecimentos respondem por apenas 10% da produção total. Os 5% maiores produtores (acima de 1.000 ha) respondem por mais de 50% da produção nacional.

    **Por que a escala importa?**

    | Componente de custo | Pequeno produtor (<100 ha) | Grande produtor (>1.000 ha) |
    |:---|:---:|:---:|
    | Custo de máquinas/ha | Elevado (subutilização) | Baixo (diluição do CF) |
    | Custo de insumos/ha | Maior (menor poder de barganha) | Menor (compras em escala) |
    | Custo logístico/tonelada | Elevado (lotes pequenos) | Menor (contratos de frete) |
    | Assistência técnica | Custo fixo alto relativo | Diluído na produção |

    Esses dados são consistentes com uma curva de CMe de longo prazo em formato de L: custos médios decrescentes até uma escala mínima eficiente (EME) em torno de 500–1.000 hectares, após a qual os ganhos de escala se estabilizam. A **CONAB** estima que o custo total de produção de soja no Mato Grosso (safra 2023/24) foi de aproximadamente R$ 4.800/ha, com produtividade média de 57 sacas/ha, resultando em custo por saca de cerca de R$ 84 para produtores de grande escala — valor significativamente inferior ao de produtores menores.

    **Implicação para política pública:** programas como o **PRONAF** (Programa Nacional de Fortalecimento da Agricultura Familiar) podem ser interpretados como subsídios que deslocam a curva de custo de pequenos produtores para baixo, compensando parcialmente a desvantagem de escala e permitindo sua permanência no mercado.

    *Fontes: IBGE — Censo Agropecuário 2017; CONAB — Custos de Produção; [CEPEA/ESALQ](https://www.cepea.esalq.usp.br).*

---

## 11.8 Demandas Condicionais e Função Custo por Tipo de Função de Produção

As seções anteriores desenvolveram os conceitos gerais de minimização de custos, função custo e curvas de custo. Agora é hora de aplicar esses conceitos de forma sistemática às quatro funções de produção clássicas estudadas no Capítulo 10 — Cobb-Douglas, linear, Leontief e CES. Para cada uma, derivamos explicitamente as demandas condicionais por insumos, a função custo resultante e, quando a solução existe, as demandas por insumos via maximização de lucro. Esse catálogo de resultados será referência constante nos capítulos seguintes e nos exercícios da ANPEC.

Nesta seção, derivamos as demandas condicionais por insumos, a função custo e (quando aplicável) as demandas por insumos via maximização de lucro para as quatro formas funcionais mais utilizadas. Usamos \(w\) e \(v\) para os preços do trabalho e do capital, \(q\) para a quantidade produzida, e \(L\) e \(K\) para trabalho e capital.

### 11.8.1 Cobb-Douglas: q = Kᵅ Lᵝ

**Demandas condicionais (minimização de custo).** A firma resolve:

\[
\min_{K,L} \; vK + wL \quad \text{s.a.} \quad K^\alpha L^\beta = q
\]

O Lagrangeano é:

\[
\mathcal{L} = vK + wL + \lambda(q - K^\alpha L^\beta)
\]

Condições de primeira ordem:

\[
\frac{\partial \mathcal{L}}{\partial K} = v - \lambda \alpha K^{\alpha-1} L^\beta = 0
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda \beta K^\alpha L^{\beta-1} = 0
\]

Dividindo a primeira CPO pela segunda:

\[
\frac{v}{w} = \frac{\alpha L}{\beta K} \quad \Longrightarrow \quad K = \frac{\alpha\, w}{\beta\, v}\, L
\]

Substituindo na restrição tecnológica:

\[
\left(\frac{\alpha\, w}{\beta\, v}\right)^\alpha L^{\alpha+\beta} = q \quad \Longrightarrow \quad L^c = q^{1/(\alpha+\beta)} \left(\frac{\alpha\, w}{\beta\, v}\right)^{-\alpha/(\alpha+\beta)}
\]

\[
\boxed{L^c(w,v,q) = q^{1/(\alpha+\beta)} \left(\frac{\beta\, v}{\alpha\, w}\right)^{\alpha/(\alpha+\beta)}}
\]

\[
\boxed{K^c(w,v,q) = q^{1/(\alpha+\beta)} \left(\frac{\alpha\, w}{\beta\, v}\right)^{\beta/(\alpha+\beta)}}
\]

**Função custo.** Avaliando o gasto mínimo \(C = vK^c + wL^c\):

\[
\boxed{C(w,v,q) = q^{1/(\alpha+\beta)} \cdot \frac{\alpha+\beta}{\alpha^\alpha \beta^\beta} \cdot \frac{w^{\beta/(\alpha+\beta)}\, v^{\alpha/(\alpha+\beta)}}{(\alpha+\beta)^{(\alpha+\beta)/(\alpha+\beta)}} \cdot (\alpha+\beta) \left(\frac{w}{\beta}\right)^{\beta/(\alpha+\beta)} \left(\frac{v}{\alpha}\right)^{\alpha/(\alpha+\beta)}}
\]

Simplificando, a função custo Cobb-Douglas tem a forma:

\[
C(w,v,q) = \kappa \cdot w^{\beta/(\alpha+\beta)}\, v^{\alpha/(\alpha+\beta)} \cdot q^{1/(\alpha+\beta)}
\]

onde \(\kappa = (\alpha+\beta)\left(\alpha^{-\alpha}\beta^{-\beta}\right)^{1/(\alpha+\beta)}\) é uma constante.

**Retornos de escala e custos:**

- Se \(\alpha+\beta = 1\) (retornos constantes): \(C\) é linear em \(q\) → CMg constante
- Se \(\alpha+\beta > 1\) (retornos crescentes): \(C\) é côncava em \(q\) → CMg decrescente
- Se \(\alpha+\beta < 1\) (retornos decrescentes): \(C\) é convexa em \(q\) → CMg crescente

*Verificação pelo Lema de Shephard*: \(\partial C/\partial w = L^c\) ✓

**Demandas por insumos (maximização de lucro).** Com retornos decrescentes (\(\alpha+\beta < 1\)), a firma maximiza \(\pi = pq - wL - vK\). Substituindo \(q = K^\alpha L^\beta\) e derivando:

\[
p\alpha K^{\alpha-1}L^\beta = v, \qquad p\beta K^\alpha L^{\beta-1} = w
\]

Resolvendo o sistema (detalhes em Cap. 12):

\[
\boxed{L^*(w,v,p) = \left(\frac{p\,\alpha^\alpha\,\beta^{1-\alpha}}{w^{1-\alpha}\,v^\alpha}\right)^{1/(1-\alpha-\beta)}, \quad K^*(w,v,p) = \left(\frac{p\,\alpha^{1-\beta}\,\beta^\beta}{w^\beta\,v^{1-\beta}}\right)^{1/(1-\alpha-\beta)}}
\]

Estas demandas só existem com retornos decrescentes. Com retornos constantes ou crescentes, o lucro não tem máximo finito.

### 11.8.2 Tecnologia Linear (Substitutos Perfeitos): q = αK + βL

Com tecnologia linear, os insumos são perfeitamente substituíveis. As isoquantas são retas com inclinação \(-\beta/\alpha\).

**Demandas condicionais.** A firma compara o custo por unidade de produto de cada insumo:

- Custo de uma unidade de produto via capital: \(v/\alpha\)
- Custo de uma unidade de produto via trabalho: \(w/\beta\)

\[
\boxed{K^c = \begin{cases} q/\alpha & \text{se } v/\alpha < w/\beta \\ 0 & \text{se } v/\alpha > w/\beta \end{cases}, \qquad L^c = \begin{cases} 0 & \text{se } v/\alpha < w/\beta \\ q/\beta & \text{se } v/\alpha > w/\beta \end{cases}}
\]

Se \(v/\alpha = w/\beta\), qualquer combinação sobre a isoquanta é ótima.

**Função custo.**

\[
\boxed{C(w,v,q) = q \cdot \min\left\{\frac{v}{\alpha},\; \frac{w}{\beta}\right\}}
\]

Os custos são sempre lineares em \(q\) (retornos constantes de escala), com CMg constante igual a \(\min\{v/\alpha, w/\beta\}\).

**Demandas por insumos (maximização de lucro).** Com retornos constantes de escala, o lucro é linear em \(q\). Se \(p > \min\{v/\alpha, w/\beta\}\), a firma deseja produzir infinito; se \(p < \min\{v/\alpha, w/\beta\}\), a firma produz zero. O problema de maximização de lucro só tem solução interior com rendimentos decrescentes.

### 11.8.3 Tecnologia Leontief (Proporções Fixas): q = min{K/α, L/β}

Com tecnologia Leontief, os insumos são usados em proporções fixas \(\alpha:\beta\). As isoquantas têm formato de "L".

**Demandas condicionais.** No ótimo, a firma opera no vértice da isoquanta: \(K/\alpha = L/\beta = q\). Qualquer outro ponto desperdiça insumos. Portanto:

\[
\boxed{K^c = \alpha\, q, \qquad L^c = \beta\, q}
\]

As demandas condicionais são **independentes dos preços dos insumos** — não há margem para substituição.

**Função custo.**

\[
\boxed{C(w,v,q) = (\alpha\, v + \beta\, w)\, q}
\]

O custo é linear em \(q\), com CMg constante igual a \(\alpha v + \beta w\). Uma mudança nos preços dos insumos desloca a curva de CMg paralelamente, mas não altera a combinação de insumos.

**Demandas por insumos (maximização de lucro).** Com retornos constantes, valem as mesmas considerações do caso linear: o problema só tem solução finita se \(p = \alpha v + \beta w\). Para ter solução interior, seriam necessários retornos decrescentes, por exemplo, \(q = [\min\{K/\alpha, L/\beta\}]^\gamma\) com \(\gamma < 1\).

### 11.8.4 CES: q = (αKᵖ + βLᵖ)¹ᐟᵖ

A função CES generaliza os três casos anteriores. O parâmetro \(\rho\) determina a elasticidade de substituição entre insumos: \(\sigma = 1/(1-\rho)\).

**Demandas condicionais.** A firma resolve:

\[
\min_{K,L} \; vK + wL \quad \text{s.a.} \quad (\alpha K^\rho + \beta L^\rho)^{1/\rho} = q
\]

O Lagrangeano é \(\mathcal{L} = vK + wL + \lambda[q - (\alpha K^\rho + \beta L^\rho)^{1/\rho}]\). As CPOs, após simplificação, fornecem:

\[
\frac{v}{w} = \frac{\alpha K^{\rho-1}}{\beta L^{\rho-1}} \quad \Longrightarrow \quad \frac{K}{L} = \left(\frac{\alpha\, w}{\beta\, v}\right)^\sigma
\]

Definimos o **índice de preços de insumos CES**:

\[
W \equiv \left(\alpha^\sigma\, v^{1-\sigma} + \beta^\sigma\, w^{1-\sigma}\right)^{1/(1-\sigma)}
\]

As demandas condicionais ficam:

\[
\boxed{K^c = \alpha^\sigma\, v^{-\sigma}\, W^{\sigma-1}\, q, \qquad L^c = \beta^\sigma\, w^{-\sigma}\, W^{\sigma-1}\, q}
\]

**Função custo.**

\[
\boxed{C(w,v,q) = W \cdot q = q \cdot \left(\alpha^\sigma\, v^{1-\sigma} + \beta^\sigma\, w^{1-\sigma}\right)^{1/(1-\sigma)}}
\]

A função custo é linear em \(q\) (retornos constantes de escala) e tem a estrutura de um índice de preços CES.

*Verificação pelo Lema de Shephard*: \(\partial C/\partial w = L^c\) ✓

**Demandas por insumos (maximização de lucro).** Com retornos constantes, o lucro é linear em \(q\) e o problema não tem solução finita a menos que \(p = W\). Para uma versão com retornos decrescentes, \(q = (\alpha K^\rho + \beta L^\rho)^{\gamma/\rho}\) com \(\gamma < 1\), a função custo torna-se \(C = W \cdot q^{1/\gamma}\), convexa em \(q\), e as demandas não condicionais podem ser obtidas via \(\max_q \; pq - W q^{1/\gamma}\).

!!! info "Casos limite da CES na produção"
    - \(\rho \to 0\) (\(\sigma \to 1\)): converge para Cobb-Douglas \(q = K^\alpha L^\beta\) (com \(\alpha + \beta = 1\) sob CRS)
    - \(\rho \to 1\) (\(\sigma \to \infty\)): converge para tecnologia linear \(q = \alpha K + \beta L\)
    - \(\rho \to -\infty\) (\(\sigma \to 0\)): converge para Leontief \(q = \min\{K, L\}\) (na parametrização com pesos \(\delta, 1-\delta\); para a forma \(\min\{K/a, L/b\}\), os coeficientes devem estar dentro da função \(\min\))

## 📋 Resumo do Capítulo

- O **custo econômico** difere do custo contábil por incluir o custo de oportunidade dos recursos próprios da firma (capital do proprietário, tempo do empreendedor), enquanto o custo contábil registra apenas desembolsos efetivos. Essa distinção é fundamental para avaliar corretamente a lucratividade de um negócio.
- No **curto prazo**, a firma opera com pelo menos um insumo fixo, gerando custos fixos e variáveis. As curvas de custo marginal (CMg), custo variável médio (CVMe) e custo total médio (CTMe) possuem formato em U — reflexo da lei dos rendimentos marginais decrescentes — e se relacionam de maneira precisa: o CMg cruza o CVMe e o CTMe em seus respectivos pontos de mínimo.
- No **longo prazo**, todos os insumos são variáveis e a firma resolve o problema de **minimização de custos** sujeita à restrição tecnológica, o que gera a condição de tangência entre a isocusto e a isoquanta: $\mathrm{TMST} = w/v$.
- O **Lema de Shephard** estabelece que as demandas condicionadas por insumos podem ser obtidas como derivadas parciais da função custo em relação aos preços dos insumos, conectando a dualidade entre produção e custos.
- As **economias de escala** e as **economias de escopo** explicam por que firmas maiores ou diversificadas podem ter custos médios menores, sendo conceitos centrais para a organização industrial. A curva de custo médio de longo prazo é a envoltória das curvas de curto prazo.
- No contexto brasileiro, o chamado **"custo Brasil"** — carga tributária, logística deficiente, burocracia — representa um deslocamento para cima da curva de custos das firmas nacionais, reduzindo sua competitividade internacional.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Custo econômico | Custo total de utilização de recursos, incluindo custos explícitos (desembolsos) e implícitos (custo de oportunidade dos recursos próprios). |
| Custo de oportunidade | Valor do melhor uso alternativo de um recurso; base do conceito de custo econômico. |
| Custo fixo (CF) | Custo que não varia com o nível de produção no curto prazo (aluguel, depreciação de equipamentos). |
| Custo variável (CV) | Custo que varia com o nível de produção (matéria-prima, mão de obra variável). |
| Custo marginal (CMg) | Acréscimo ao custo total decorrente da produção de uma unidade adicional: $\mathrm{CMg} = dCT/dq$. |
| Isocusto | Reta representando todas as combinações de insumos que geram o mesmo custo total: $C = wL + vK$. |
| Lema de Shephard | As demandas condicionadas (hicksianas) por insumos são obtidas derivando a função custo em relação ao preço de cada insumo: $L^*(w,v,q) = \partial C/\partial w$. |
| Economias de escala | Redução do custo médio de longo prazo à medida que a escala de produção aumenta. |
| Economias de escopo | Redução de custos ao produzir dois ou mais bens conjuntamente em vez de separadamente. |
| Curva envoltória | Curva de custo médio de longo prazo, tangente a cada curva de custo médio de curto prazo no ponto ótimo de escala de planta. |

---

## ✏️ Exercícios Resolvidos

??? example "✏️ Exercício Resolvido 11.1 — Custo econômico versus custo contábil"

    **Enunciado.** Uma confeitaria artesanal em Belo Horizonte tem os seguintes dados anuais: receita de R$ 480.000; custos com ingredientes de R$ 120.000; aluguel de R$ 60.000; salários de funcionários de R$ 96.000; retirada da proprietária (*pró-labore*) de R$ 48.000. A proprietária possui equipamentos avaliados em R$ 200.000 (que poderiam render 10% a.a. se aplicados) e tem uma oferta de emprego como *chef* em um restaurante com salário de R$ 84.000/ano.

    (a) Calcule o lucro contábil.

    (b) Calcule o lucro econômico.

    (c) A proprietária deve manter a confeitaria?

    **Solução.**

    **(a)** Custos contábeis (explícitos) = R$ 120.000 + R$ 60.000 + R$ 96.000 + R$ 48.000 = R$ 324.000.

    \[
    \pi_{\text{contábil}} = 480.000 - 324.000 = \text{R\$}\; 156.000
    \]

    **(b)** Custos implícitos:

    - Custo de oportunidade do trabalho da proprietária: R$ 84.000 − R$ 48.000 = R$ 36.000 (diferença entre o que ela poderia ganhar e o pró-labore que já se paga).
    - Custo de oportunidade do capital: 10% × R$ 200.000 = R$ 20.000.

    Total de custos implícitos = R$ 56.000.

    \[
    \pi_{\text{econômico}} = 480.000 - 324.000 - 56.000 = \text{R\$}\; 100.000
    \]

    **(c)** Sim. O lucro econômico é positivo (R$ 100.000 > 0), o que significa que a confeitaria remunera todos os fatores — inclusive o tempo e o capital da proprietária — acima de seu custo de oportunidade. Se o lucro econômico fosse zero, ela seria indiferente; se fosse negativo, deveria considerar fechar.

??? example "✏️ Exercício Resolvido 11.2 — Minimização de custos e Lema de Shephard com Cobb-Douglas"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/3}L^{2/3}\) e enfrenta preços de insumos \(w = 8\) e \(v = 2\).

    (a) Derive as demandas condicionadas por insumos.

    (b) Obtenha a função custo.

    (c) Verifique o Lema de Shephard.

    (d) Calcule o custo total, o custo médio e o custo marginal para \(q = 10\).

    **Solução.**

    **(a)** Com \(\alpha = 1/3\) e \(\beta = 2/3\) (\(\alpha + \beta = 1\), retornos constantes), a condição de tangência é:

    \[
    \frac{\alpha}{\beta} \cdot \frac{L}{K} = \frac{v}{w} \implies \frac{1}{2} \cdot \frac{L}{K} = \frac{2}{8} = \frac{1}{4} \implies L = \frac{K}{2}
    \]

    Substituindo na restrição \(K^{1/3}L^{2/3} = q\):

    \[
    K^{1/3} \left(\frac{K}{2}\right)^{2/3} = q \implies \frac{K}{2^{2/3}} = q \implies K^c = 2^{2/3} q
    \]

    \[
    L^c = \frac{K^c}{2} = \frac{2^{2/3} q}{2} = 2^{-1/3} q
    \]

    **(b)** Função custo:

    \[
    C = vK^c + wL^c = 2 \cdot 2^{2/3} q + 8 \cdot 2^{-1/3} q = 2^{5/3} q + 2^{3} \cdot 2^{-1/3} q = 2^{5/3} q + 2^{8/3} q
    \]

    \[
    C = (2^{5/3} + 2^{8/3}) q = 2^{5/3}(1 + 2) q = 3 \cdot 2^{5/3} q \approx 9{,}52\, q
    \]

    **(c)** Verificação:

    \[
    \frac{\partial C}{\partial w} = \frac{\partial}{\partial w}[wL^c + vK^c]
    \]

    Precisamos expressar \(C\) em termos de \(w\) e \(v\). Para \(q = K^{1/3}L^{2/3}\), a função custo geral é \(C = \kappa \cdot w^{2/3} v^{1/3} q\), onde \(\kappa = 3/(2^{2/3})\). Então:

    \[
    \frac{\partial C}{\partial w} = \kappa \cdot \frac{2}{3} w^{-1/3} v^{1/3} q = L^c \quad \checkmark
    \]

    **(d)** Para \(q = 10\):

    \[
    CT = 3 \cdot 2^{5/3} \cdot 10 \approx 95{,}2
    \]

    Como \(\alpha + \beta = 1\) (retornos constantes), \(C\) é linear em \(q\). Logo:

    \[
    \mathrm{CMe} = \mathrm{CMg} = 3 \cdot 2^{5/3} \approx 9{,}52
    \]

    O custo médio e o custo marginal são constantes e iguais — consequência direta dos retornos constantes de escala.

??? example "✏️ Exercício Resolvido 11.3 — Curto prazo versus longo prazo"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/4}L^{1/4}\) com \(w = 10\) e \(v = 10\).

    (a) Derive a função custo de longo prazo e mostre que o CMg é crescente.

    (b) No curto prazo, o capital está fixo em \(\bar{K} = 1\). Derive a função custo de curto prazo.

    (c) Mostre que \(CT_{LP}(q) \leq CT_{CP}(q)\) para todo \(q\), com igualdade em um ponto.

    **Solução.**

    **(a)** Com \(\alpha = \beta = 1/4\) e \(\alpha + \beta = 1/2 < 1\) (retornos decrescentes), pela condição de tangência:

    \[
    \frac{1/4 \cdot L}{1/4 \cdot K} = \frac{v}{w} = 1 \implies K = L
    \]

    Substituindo: \(K^{1/4} K^{1/4} = q \implies K^{1/2} = q \implies K^c = L^c = q^2\).

    \[
    CT_{LP} = 10q^2 + 10q^2 = 20q^2
    \]

    \[
    \mathrm{CMg}_{LP} = 40q \quad (\text{crescente em } q)
    \]

    Isso confirma: retornos decrescentes (\(\alpha + \beta < 1\)) geram CMg crescente.

    **(b)** Com \(\bar{K} = 1\): \(q = 1^{1/4} L^{1/4} = L^{1/4} \implies L = q^4\).

    \[
    CT_{CP} = v\bar{K} + wL = 10 \cdot 1 + 10 \cdot q^4 = 10 + 10q^4
    \]

    **(c)** Comparando:

    \[
    CT_{CP} - CT_{LP} = 10 + 10q^4 - 20q^2 = 10(1 - 2q^2 + q^4) = 10(1 - q^2)^2 \geq 0
    \]

    A diferença é sempre não negativa, com igualdade quando \(q^2 = 1\), ou seja, \(q = 1\). Nesse ponto, \(K^*(q=1) = 1 = \bar{K}\) — o capital fixo coincide com o ótimo de longo prazo. Para qualquer outro nível de produto, o curto prazo é mais caro, pois a firma não pode ajustar o capital.

---

## ✏️ Exercícios

<a id="ex-11-1"></a>**Exercício 11.1.** 
Uma firma com função de produção Cobb-Douglas \(q = K^{1/2}L^{1/2}\) enfrenta preços de insumos \(w = 4\) e \(v = 1\).

(a) Derive as demandas condicionadas por insumos \(K^c(w, v, q)\) e \(L^c(w, v, q)\).

(b) Obtenha a função custo \(C(w, v, q)\).

(c) Verifique o Lema de Shephard calculando \(\partial C / \partial w\) e \(\partial C / \partial v\).

(d) Calcule o custo total para produzir \(q = 10\).

(e) Determine o custo marginal e o custo médio e mostre que são constantes. Explique por que isso ocorre (dica: relacione com rendimentos de escala).

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-1)

---

<a id="ex-11-2"></a>**Exercício 11.2.** 
Considere a função de custo total de curto prazo \(CT(q) = 100 + 10q - 2q^2 + q^3/3\).

(a) Identifique o custo fixo e o custo variável.

(b) Derive as expressões de CMe, CVMe e CMg.

(c) Encontre o nível de produção que minimiza o CMe e o nível que minimiza o CVMe.

(d) Verifique que o CMg cruza o CMe e o CVMe nos respectivos pontos de mínimo.

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-2)

---

<a id="ex-11-3"></a>**Exercício 11.3.** 
Uma firma opera com a tecnologia \(q = \min\{K, 2L\}\) e enfrenta preços \(v = 8\) e \(w = 2\).

(a) Derive a função custo \(C(q)\).

(b) Calcule CMe e CMg. São constantes? Justifique.

(c) Compare com o caso de uma Cobb-Douglas com rendimentos constantes. Em que se assemelham os custos?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-3)

---

<a id="ex-11-4"></a>**Exercício 11.4.** 
Explique graficamente e algebricamente por que a curva de custo médio de longo prazo é a envoltória das curvas de custo médio de curto prazo. Use o caso de uma firma com função de produção \(q = K^{1/3}L^{1/3}\) e preços de insumos \(w = v = 1\) para:

(a) Derivar a função custo de longo prazo.

(b) Fixar \(\bar{K} = 4\) e derivar a função custo de curto prazo.

(c) Mostrar que \(\mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}=4)\) para todo \(q\), com igualdade em um ponto específico.

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-4)

---

<a id="ex-11-5"></a>**Exercício 11.5.** 
Uma firma produz com a tecnologia \(q = AL^{\alpha}K^{\beta}\), onde \(\alpha + \beta = 1\) (rendimentos constantes de escala).

(a) Mostre que a função custo é linear em \(q\): \(C(w, v, q) = c(w, v) \cdot q\), onde \(c(w, v)\) é o custo unitário.

(b) Derive a expressão de \(c(w, v)\) e mostre que ele é homogêneo de grau 1 nos preços dos insumos.

(c) Mostre que, neste caso, \(\mathrm{CMg} = \mathrm{CMe} = c(w, v)\) — o custo marginal é constante e igual ao custo médio.

(d) Interprete economicamente: por que rendimentos constantes de escala implicam custos marginais constantes?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2020 — Questão 6"
    Em um ano, uma empresa apresentou os seguintes dados contábeis: \$ 1 milhão de receitas, \$ 300 mil de compras de matérias primas, \$ 30 mil de despesas com água e energia elétrica, \$ 100 mil de gastos com a folha de salários e \$ 120 mil de gasto com o salário do proprietário da empresa. O empresário tem a opção de fechar sua empresa e alugar as instalações por \$ 200 mil por ano. Ele também tem duas ofertas de emprego: uma com salário anual de \$ 90 mil e outra com salário anual de \$ 150 mil. O proprietário somente pode aceitar uma dessas ofertas, caso decida fazê-lo, e seria obrigado a fechar seu negócio. Levando em conta essas informações e a teoria dos custos, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | O custo contábil anual da empresa é de \$ 550 mil. |
    | 1 | O custo econômico anual da empresa é de \$ 780 mil. |
    | 2 | O lucro econômico anual da empresa é de \$ 100 mil. |
    | 3 | Sendo racional, o proprietário deve continuar a operar sua empresa, pois o lucro econômico é positivo. |
    | 4 | O proprietário deveria fechar a sua empresa se tivesse registrado um custo irrecuperável de \$ 300 mil. |

    ??? success "Gabarito"
        **Respostas: V V F V F**

        **Justificativa por item:**

        - **Item 0 — V:** Custos contábeis (explícitos) = \$300k (matéria-prima) + \$30k (água/energia) + \$100k (salários) + \$120k (pró-labore) = **\$550k**.
        - **Item 1 — V:** Custo de oportunidade do trabalho do proprietário: \$150k (melhor oferta) − \$120k (pró-labore já pago) = \$30k adicional implícito. Custo de oportunidade das instalações: \$200k (aluguel). Custos implícitos = \$30k + \$200k = \$230k. Custo econômico = \$550k + \$230k = **\$780k**.
        - **Item 2 — F:** Lucro econômico = \$1.000k − \$780k = **\$220k**, não \$100k.
        - **Item 3 — V:** Como o lucro econômico é \$220k > 0, a empresa remunera todos os fatores acima de seu custo de oportunidade. O proprietário deve continuar operando.
        - **Item 4 — F:** Custos irrecuperáveis (*sunk costs*) **não devem influenciar** decisões correntes. O lucro econômico continua \$220k > 0 independentemente de custos já afundados. A decisão racional é continuar operando — o custo irrecuperável é irrelevante para a decisão prospectiva (Seção 11.1).

??? question "ANPEC 2018 — Questão 5"
    Com relação aos custos de produção, indique quais das afirmações abaixo são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Quando há níveis discretos do fator fixo, a curva de custo marginal de longo prazo será composta por trechos das curvas de custo marginal de curto prazo associados a cada nível de fator fixo. |
    | 1 | No caso de uma empresa com duas fábricas, a curva de custo marginal de curto prazo da empresa é a soma vertical das curvas de custo marginal de curto prazo das duas fábricas. |
    | 2 | A função de custo total quadrática do tipo \(CT = aq + bq^2\) resulta em uma curva de custo marginal linear. |
    | 3 | Uma função de custo total cúbica do tipo \(C = aq + bq^2 + cq^3\) resulta em curvas de custo médio e marginal em forma de U. |
    | 4 | Custos quase fixos independem do nível de produção, mas só precisam ser pagos se a empresa produzir uma quantidade positiva de bens. |

    ??? success "Gabarito"
        **Respostas: V F V V V**

        **Justificativa por item:**

        - **Item 0 — V:** Quando o capital assume apenas valores discretos (\(\bar{K}_1, \bar{K}_2, \ldots\)), cada nível gera uma curva de CMg de curto prazo. A curva de CMg de longo prazo é obtida selecionando, para cada nível de produto, o trecho da CMg de curto prazo correspondente ao nível de capital que minimiza o custo total — formando uma curva "composta" por segmentos das diversas CMg de curto prazo. Isso é a contrapartida discreta da envoltória contínua (Seção 11.7).
        - **Item 1 — F:** A soma é **horizontal**, não vertical. Com duas fábricas, a firma aloca produção de modo a igualar os custos marginais entre elas. Para cada nível de CMg, soma-se as quantidades produzidas nas duas fábricas — essa é a soma horizontal. A soma vertical seria somar os custos marginais a cada quantidade, o que não descreve corretamente a agregação de CMg entre plantas.
        - **Item 2 — V:** \(CT = aq + bq^2 \implies CMg = a + 2bq\), que é uma função linear de \(q\).
        - **Item 3 — V:** \(CMe = a + bq + cq^2\) e \(CMg = a + 2bq + 3cq^2\). Para os parâmetros convencionais (\(b < 0, c > 0\)), ambas são parábolas com concavidade para cima, gerando o formato de U clássico (Seção 11.5).
        - **Item 4 — V:** Custos quase fixos são custos que não variam com o nível de produção, mas que só existem quando a firma produz (\(q > 0\)). Diferem dos custos fixos tradicionais, que são incorridos mesmo com \(q = 0\). Exemplos incluem o custo de aquecimento de um forno industrial ou a equipe mínima de operação.

??? question "ANPEC 2022 — Questão 5"
    Com relação à Teoria dos Custos, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Uma empresa produz mensalmente um bem a partir de capital (K) e trabalho (L) de acordo com dois processos de produção do tipo Leontief (de proporções fixas): o primeiro processo é dado por \(f_1(K,L) = \min\{K, L/4\}\) e o segundo processo é dado por \(f_2(K,L) = \min\{K/5, L\}\). Denote por Q a quantidade mensal produzida do bem. O custo de oportunidade do capital é \(v = 1\) e o do trabalho é \(w = 2\). Então, a função custo da empresa é \(c(Q) = 7Q\). |
    | 1 | Um bem é produzido numa quantidade q a partir de capital (K) e trabalho (L), com os respectivos preços fatoriais denotados por \(v > 0\) e \(w > 0\). Um econometrista estimou a seguinte função de custo do tipo Cobb-Douglas: \(c(v, w, q) = 2v^{5/8}w^{3/8}\). Suponha que \(v = 1\) e \(w = 256 = 2^8\). Então, a demanda fatorial por capital é \(K = 16\). |
    | 2 | Uma empresa possui função de produção dada por \(f(K, L) = \sqrt{KL}\), em que K denota o capital e L o trabalho. No curto prazo, o capital está fixo em \(\bar{K} = 4\). Suponha que o preço fatorial do capital é \(v = 1\) e que o preço fatorial do trabalho é \(w = 4\). Então, a função de custo de curto prazo é \(c(q) = 4 + q^2\). |
    | 3 | No curto prazo, se o preço do produto é inferior ao custo médio mínimo, então a firma necessariamente não produzirá. |
    | 4 | Uma firma tem função de produção \(f(K, L) = \min\{K + L, 2L\}\). Sejam \(v, w > 0\) os custos de oportunidade do capital e do trabalho, respectivamente. Suponha que \(v < w\). O fator trabalho está limitado a um máximo de 10 unidades. Então, a restrição sobre o trabalho só afeta a função custo da firma para níveis de produção acima de 20 unidades de produto. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** Processo 1 usa 1K e 4L por unidade: custo unitário = \(1 \cdot 1 + 4 \cdot 2 = 9\). Processo 2 usa 5K e 1L por unidade: custo unitário = \(5 \cdot 1 + 1 \cdot 2 = 7\). Como \(7 < 9\), a firma usa apenas o processo 2 e \(c(Q) = 7Q\).
        - **Item 1 — F:** Pelo Lema de Shephard: \(K = \partial c / \partial v = 2 \cdot \frac{5}{8} v^{-3/8} w^{3/8} = \frac{5}{4} v^{-3/8} w^{3/8}\). Com \(v = 1\) e \(w = 256\): \(K = \frac{5}{4} \cdot 1 \cdot 256^{3/8} = \frac{5}{4} \cdot (2^8)^{3/8} = \frac{5}{4} \cdot 2^3 = \frac{5}{4} \cdot 8 = 10\), não 16. O Lema de Shephard (Seção 11.4) é a ferramenta para resolver este item.
        - **Item 2 — V:** \(q = \sqrt{4L} = 2\sqrt{L} \implies L = q^2/4\). Custo de curto prazo: \(c = v\bar{K} + wL = 1 \cdot 4 + 4 \cdot q^2/4 = 4 + q^2\).
        - **Item 3 — F:** No curto prazo, se \(P < \mathrm{CMe}_{min}\) mas \(P > \mathrm{CVMe}_{min}\), a firma produz — ela cobre seus custos variáveis e parte dos custos fixos. A firma só encerra produção se \(P < \mathrm{CVMe}_{min}\) (ponto de fechamento). A condição é sobre o CVMe, não sobre o CMe (Seção 11.5).
        - **Item 4 — V:** \(f(K,L) = \min\{K+L, 2L\}\). Com \(v < w\), a firma prefere usar mais K e menos L. Para \(q = \min\{K+L, 2L\}\), no ótimo com \(v < w\): \(K+L \geq 2L\) (i.e., \(K \geq L\)), de modo que \(q = 2L\), logo \(L = q/2\). A restrição \(L \leq 10\) se torna ativa quando \(q/2 > 10\), ou seja, \(q > 20\).

---

## 🔬 Pesquisa em Ação

??? abstract "Christensen, Laurits R.; Greene, William H. (1976). [Economies of Scale in U.S. Electric Power Generation](https://doi.org/10.1086/260470). *Journal of Political Economy*, 84(4, Part 1), 655-676. DOI: [10.1086/260470](https://doi.org/10.1086/260470)"
    **Pergunta central:** A indústria de geração de energia elétrica apresenta economias de escala? E, se sim, até que ponto? Essa questão era central para o debate regulatório dos anos 1970: se houvesse economias de escala ilimitadas, o monopólio natural seria a estrutura eficiente e a regulação seria justificada; se as economias de escala se esgotassem a partir de certo porte, a competição entre firmas seria viável.

    **Método:** Christensen e Greene estimaram funções de custo translog (*transcendental logarithmic*) — uma forma funcional flexível que não impõe *a priori* o formato da curva de CMe de longo prazo — para uma amostra de 114 empresas de geração de energia elétrica nos Estados Unidos em 1970. A função translog permite que o formato de U do CMe emerja dos dados, em vez de ser imposto pela especificação funcional.

    **Resultado principal:** Os resultados mostraram que a curva de CMe de longo prazo tinha de fato formato de U: economias de escala significativas para firmas pequenas e médias, custos médios aproximadamente constantes para firmas com geração acima de 20 bilhões de kWh, e leves deseconomias para as maiores. Isso contrastava com estimativas anteriores (usando formas funcionais restritivas como a Cobb-Douglas), que encontravam economias de escala ilimitadas — artefato da imposição de retornos crescentes homogêneos.

    **Relevância para o capítulo:** O artigo é uma aplicação empírica direta dos conceitos das Seções 11.4 e 11.7: estimação da função custo, teste de economias de escala e determinação da escala mínima eficiente. A lição metodológica é poderosa: a escolha da forma funcional para a função custo (Cobb-Douglas vs. translog) pode alterar dramaticamente as conclusões sobre a estrutura de mercado eficiente. No Brasil, o setor elétrico passou por reformas estruturais nos anos 1990 e 2000, com a separação entre geração, transmissão e distribuição — decisão que pressupõe, implicitamente, que as economias de escala na geração não são ilimitadas, consistente com os achados de Christensen e Greene.

??? abstract "Bustos, Paula; Caprettini, Bruno; Ponticelli, Jacopo. (2016). [Agricultural Productivity and Structural Transformation: Evidence from Brazil](https://doi.org/10.1257/aer.20131061). *American Economic Review*, 106(6), 1320-1365. DOI: [10.1257/aer.20131061](https://doi.org/10.1257/aer.20131061)"
    **Pergunta central:** Como choques de produtividade na agricultura — que reduzem os custos de produção — afetam a estrutura produtiva e o emprego nas economias locais? A redução de custos no setor agrícola libera mão de obra para outros setores ou intensifica a produção agrícola?

    **Método:** Os autores exploraram a introdução da soja geneticamente modificada (transgênica) no Brasil a partir de 2003 como um "experimento natural". A soja GM reduziu significativamente os custos de produção — especialmente os custos com herbicidas e mão de obra — em regiões com solo e clima adequados. Usando variação geográfica na adequação à soja GM, os autores estimaram o efeito causal da redução de custos agrícolas sobre a realocação de trabalho entre setores.

    **Resultado principal:** Municípios mais adequados à soja GM experimentaram: (i) aumento da área plantada com soja e redução da área de outras culturas; (ii) queda no emprego agrícola (a soja GM é poupadora de trabalho); (iii) crescimento do emprego industrial nos municípios afetados. Porém, o efeito sobre a indústria dependia do tipo de inovação: tecnologias poupadoras de trabalho (como a soja GM) liberavam mão de obra para a indústria, enquanto tecnologias que aumentavam o valor do produto por hectare (como a cana-de-açúcar para etanol) atraíam mais trabalhadores para a agricultura.

    **Relevância para o capítulo:** O artigo conecta diretamente a Seção 11.6 (deslocamentos nas curvas de custo por progresso técnico) e a Seção 11.7 (economias de escala). A adoção da soja GM representou uma redução de custos enviesada — poupadora de trabalho — que deslocou a curva de custo das fazendas para baixo e alterou a razão ótima capital/trabalho. Além disso, a expansão da escala de produção nas fazendas de soja ilustra as economias de escala discutidas no Box Brasil sobre agropecuária: a tecnologia GM favoreceu desproporcionalmente os grandes produtores, que podiam adquirir as sementes modificadas e o maquinário complementar.

## 📚 Referências do Capítulo

- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 5 (Seções 5.C–5.D).
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 10.
- Pindyck, Robert S., e Daniel L. Rubinfeld. 2013. [*Microeconomia*](https://books.google.com/books/about/Microeconomics.html?id=h6e7AAAAIAAJ). 8ª ed. São Paulo: Pearson. Cap. 7.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Cap. 20–22.
