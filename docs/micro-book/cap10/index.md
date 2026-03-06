# Capítulo 10 — Quanto Custa Produzir? A Anatomia dos Custos

## Introdução

No capítulo anterior, examinamos a tecnologia da firma — como insumos são transformados em produtos. Agora, damos o passo seguinte e perguntamos: **quanto custa** realizar essa transformação? A teoria dos custos conecta a esfera da produção à esfera dos preços, traduzindo as possibilidades tecnológicas em termos monetários.

A distinção entre custos econômicos e contábeis, o conceito de custo de oportunidade, a relação entre minimização de custos e maximização de lucro, o papel das curvas de custo de curto e longo prazo e o elegante Lema de Shephard — que conecta a função custo às demandas condicionadas por insumos — são os temas centrais deste capítulo.

A compreensão da estrutura de custos é indispensável para a análise da oferta, da formação de preços e da organização industrial. No contexto brasileiro, onde o chamado "custo Brasil" — que engloba carga tributária, deficiências logísticas e burocracia — pesa significativamente sobre a competitividade das empresas, essa análise ganha relevância adicional.

---

## 10.1 Definições de Custos

### Custo econômico versus custo contábil

!!! definition "Custo econômico"
    O **custo econômico** (ou custo de oportunidade) de utilizar um recurso na produção é o valor desse recurso em seu **melhor uso alternativo**. Inclui tanto os custos explícitos (pagamentos efetivos) quanto os custos implícitos (remuneração do capital próprio, salário do proprietário, etc.).

!!! definition "Custo contábil"
    O **custo contábil** registra apenas os desembolsos efetivamente realizados — custos explícitos. Não considera o custo de oportunidade dos recursos próprios da firma.

A diferença entre lucro econômico e lucro contábil é dada pelos custos implícitos:

\[
\pi_{\text{econômico}} = \text{Receita total} - \text{Custos explícitos} - \text{Custos implícitos}
\]

\[
\pi_{\text{contábil}} = \text{Receita total} - \text{Custos explícitos}
\]

Quando o lucro econômico é zero, a firma obtém o **lucro normal** — isto é, remunera todos os fatores de produção, inclusive os próprios, pelo seu custo de oportunidade. Lucro econômico positivo indica **lucro supranormal** (ou econômico puro).

### Custos irrecuperáveis (sunk costs)

!!! note "Custos irrecuperáveis"
    **Custos irrecuperáveis** (*sunk costs*) são despesas já realizadas e que não podem ser recuperadas. Do ponto de vista da tomada de decisão racional, custos irrecuperáveis **não devem influenciar** decisões correntes e futuras — apenas custos evitáveis (prospectivos) são relevantes. Contudo, a economia comportamental documenta extensamente o viés dos custos irrecuperáveis (*sunk cost fallacy*), pelo qual agentes continuam investindo em projetos fracassados para "justificar" gastos passados.

---

## 10.2 Maximização de Lucro e Minimização de Custos

A firma maximizadora de lucro resolve:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - rK
\]

onde \(p\) é o preço do produto, \(w\) é o salário e \(r\) é o custo de aluguel do capital.

Um resultado central é que a **maximização de lucro implica minimização de custos**: se a firma escolhe quantidades de insumos que maximizam o lucro, então, para o nível de produto resultante, ela necessariamente minimiza o custo de produção. A recíproca, contudo, não é verdadeira — minimizar custos é condição necessária, mas não suficiente, para maximizar lucro, pois a firma ainda precisa escolher o nível ótimo de produção.

!!! abstract "Proposição: Maximização de lucro implica minimização de custos"
    Se \((K^*, L^*)\) resolve o problema de maximização de lucro \(\max_{K,L} \; pf(K,L) - wL - rK\) com produto \(q^* = f(K^*, L^*)\), então \((K^*, L^*)\) também resolve o problema de minimização de custos para o nível de produto \(q^*\):
    \[
    \min_{K, L} \; wL + rK \quad \text{s.a.} \quad f(K, L) \geq q^*
    \]

---

## 10.3 Minimização de Custos: Isocusto e Tangência

<figure markdown="span">
  <iframe src="../graficos/cap10/minimizacao-custo.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 10.1</strong> — Minimizacao de custo. A isoquanta (azul) e a reta de isocusto (vermelha) tangenciam-se no ponto otimo. Ajuste \(w\), \(r\), \(q\) e \(\alpha\) para observar como a combinacao otima de insumos e o custo minimo se alteram.</figcaption>
</figure>

### O problema de minimização de custos

O problema dual ao da maximização do produto sujeito a um orçamento é a **minimização do custo** de atingir um dado nível de produto:

\[
\min_{K, L} \; C = wL + rK \quad \text{s.a.} \quad f(K, L) = q_0
\]

### A reta de isocusto

A **reta de isocusto** representa todas as combinações de insumos que geram o mesmo custo total \(C_0\):

\[
C_0 = wL + rK \implies K = \frac{C_0}{r} - \frac{w}{r}L
\]

A inclinação da isocusto é \(-w/r\), a razão dos preços dos insumos.

### Condição de tangência

Pelo método de Lagrange, a condição de primeira ordem para a minimização de custos é:

\[
\mathcal{L} = wL + rK + \lambda[q_0 - f(K, L)]
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda f_L = 0 \implies \lambda = \frac{w}{f_L}
\]

\[
\frac{\partial \mathcal{L}}{\partial K} = r - \lambda f_K = 0 \implies \lambda = \frac{r}{f_K}
\]

Igualando:

\[
\frac{w}{f_L} = \frac{r}{f_K} \implies \frac{f_L}{f_K} = \frac{w}{r} \implies \mathrm{TMST}_{L,K} = \frac{w}{r}
\]

!!! abstract "Condição de minimização de custos"
    No ótimo, a **TMST** (inclinação da isoquanta) iguala a **razão dos preços dos insumos** (inclinação da isocusto):
    \[
    \mathrm{TMST}_{L,K} = \frac{w}{r}
    \]
    Equivalentemente, o valor do produto marginal por unidade monetária gasta deve ser igual para todos os insumos:
    \[
    \frac{f_L}{w} = \frac{f_K}{r}
    \]

### Demandas condicionadas por insumos

Resolvendo as condições de primeira ordem junto com a restrição \(f(K, L) = q_0\), obtemos as **demandas condicionadas** (ou demandas de Hicksian na produção):

\[
L^c = L^c(w, r, q), \qquad K^c = K^c(w, r, q)
\]

Estas funções expressam as quantidades ótimas de cada insumo como funções dos preços dos insumos e do nível de produto desejado.

---

## 10.4 A Função Custo e o Lema de Shephard

### A função custo

!!! definition "Função custo"
    A **função custo** \(C(w, r, q)\) é o valor mínimo do custo de produzir \(q\) unidades, dados os preços dos insumos \(w\) e \(r\):
    \[
    C(w, r, q) = wL^c(w, r, q) + rK^c(w, r, q)
    \]

A função custo possui as seguintes propriedades:

1. **Não decrescente** em \(w\), \(r\) e \(q\).
2. **Homogênea de grau 1** nos preços dos insumos: \(C(tw, tr, q) = tC(w, r, q)\). Se todos os preços dos insumos dobram, o custo mínimo dobra.
3. **Côncava** nos preços dos insumos: a firma substitui o insumo que ficou mais caro pelo mais barato, de modo que o custo cresce menos que proporcionalmente ao aumento do preço de um insumo.
4. **Contínua** nos preços dos insumos.

### Lema de Shephard

!!! proof "Demonstração: Lema de Shephard"
    **Enunciado.** Se \(C(w, r, q)\) é a função custo e é diferenciável em \((w, r)\), então as demandas condicionadas por insumos são obtidas pela derivada parcial da função custo em relação ao preço do respectivo insumo:
    \[
    \frac{\partial C(w, r, q)}{\partial w} = L^c(w, r, q), \qquad \frac{\partial C(w, r, q)}{\partial r} = K^c(w, r, q)
    \]

    **Demonstração.**
    Considere o problema de minimização de custos. Pelo teorema da envoltória, a derivada da função valor (custo mínimo) em relação a um parâmetro é igual à derivada parcial do lagrangeano avaliado no ótimo.

    O lagrangeano é:
    \[
    \mathcal{L}(K, L, \lambda; w, r, q) = wL + rK + \lambda[q - f(K, L)]
    \]

    Pelo teorema da envoltória:
    \[
    \frac{\partial C}{\partial w} = \frac{\partial \mathcal{L}}{\partial w}\bigg|_{(K^c, L^c, \lambda^*)} = L^c(w, r, q)
    \]

    Analogamente:
    \[
    \frac{\partial C}{\partial r} = K^c(w, r, q)
    \]

    **Verificação com Cobb-Douglas.** Para \(q = K^{\alpha}L^{1-\alpha}\), a função custo é:
    \[
    C(w, r, q) = q \cdot \kappa \cdot w^{1-\alpha} \cdot r^{\alpha}
    \]
    onde \(\kappa = \left(\frac{\alpha}{1-\alpha}\right)^{-(1-\alpha)} + \left(\frac{\alpha}{1-\alpha}\right)^{\alpha}\) é uma constante. Derivando em relação a \(w\):
    \[
    \frac{\partial C}{\partial w} = q \cdot \kappa \cdot (1-\alpha) \cdot w^{-\alpha} \cdot r^{\alpha} = L^c(w, r, q)
    \]
    o que confirma o lema. \(\blacksquare\)

!!! tip "Significado econômico do Lema de Shephard"
    O Lema de Shephard é a contraparte, na teoria da produção, da **identidade de Roy** na teoria do consumidor. Ele permite recuperar as demandas condicionadas por insumos a partir de informações sobre custos — que são frequentemente mais fáceis de observar empiricamente do que as tecnologias de produção subjacentes. É uma ferramenta central na estimação empírica de funções de custo.

---

## 10.5 Curvas de Custo

<figure markdown="span">
  <iframe src="../graficos/cap10/curvas-custo.html" width="100%" height="600" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 10.2</strong> — Curvas de custo total, medio e marginal. Ajuste os parametros da funcao cubica de custo e observe as relacoes entre CT, CMe, CMg e CVMe. O ponto vermelho no CMg e arrastavel. Destaque para o ponto de fechamento (min CVMe) e o cruzamento CMg-CMe no minimo do CMe.</figcaption>
</figure>

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

A demonstração de que o CMg cruza o CMe no ponto de mínimo segue diretamente:

\[
\frac{d(\mathrm{CMe})}{dq} = \frac{d}{dq}\left(\frac{CT}{q}\right) = \frac{\mathrm{CMg} \cdot q - CT}{q^2} = \frac{\mathrm{CMg} - \mathrm{CMe}}{q}
\]

Portanto, \(\mathrm{CMe}\) é decrescente quando \(\mathrm{CMg} < \mathrm{CMe}\) e crescente quando \(\mathrm{CMg} > \mathrm{CMe}\).

### Formato típico das curvas de custo

Com rendimentos marginais inicialmente crescentes e depois decrescentes (o formato clássico), as curvas de custo apresentam:

- **CMg**: formato de U — inicialmente decrescente (quando o produto marginal é crescente) e depois crescente (quando o produto marginal é decrescente).
- **CVMe**: formato de U — segue a mesma lógica, mas é mais suave.
- **CMe**: formato de U — soma de CVMe (U) com CFMe (decrescente). O mínimo do CMe ocorre à direita do mínimo do CVMe.

---

## 10.6 Deslocamentos nas Curvas de Custo

### Mudanças nos preços dos insumos

Um aumento no salário \(w\) desloca para cima as curvas de custo. Pelo Lema de Shephard, o impacto é proporcional à quantidade de trabalho utilizada:

\[
\frac{\partial C}{\partial w} = L^c > 0
\]

O efeito sobre a curva de CMg depende de como a intensidade de trabalho varia com o nível de produto. Se a produção é intensiva em trabalho, o deslocamento será proporcionalmente maior.

### Progresso técnico

Uma melhoria tecnológica (aumento de \(A\) na função de produção) permite produzir a mesma quantidade com menos insumos, deslocando todas as curvas de custo para baixo. Se o progresso técnico é enviesado — por exemplo, poupador de trabalho —, ele reduz relativamente mais os custos de firmas intensivas em trabalho.

### Impostos e regulação

Impostos sobre insumos funcionam como aumentos nos preços dos insumos. Um imposto *ad valorem* sobre o trabalho de alíquota \(\tau\) eleva o custo efetivo do trabalho para \(w(1 + \tau)\), deslocando as curvas de custo para cima.

---

## 10.7 Curto Prazo versus Longo Prazo: A Curva Envoltória

<figure markdown="span">
  <iframe src="../graficos/cap10/curto-longo-prazo.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 10.3</strong> — Curva envoltoria: CMe de curto e longo prazo. Cada curva cinza e um SRAC para um nivel fixo de capital; a curva azul (LRAC) e a envoltoria. Selecione \(\bar{K}\) para destacar o SRAC correspondente e ver o ponto de tangencia.</figcaption>
</figure>

### Custos de curto prazo

No **curto prazo**, o capital é fixo em \(\bar{K}\). A firma só pode ajustar o trabalho. O custo total de curto prazo é:

\[
CT_{CP}(q; \bar{K}) = r\bar{K} + w \cdot L(q, \bar{K})
\]

onde \(L(q, \bar{K})\) é a quantidade de trabalho necessária para produzir \(q\) dado \(\bar{K}\), obtida invertendo a função de produção de curto prazo.

### Custos de longo prazo

No **longo prazo**, todos os insumos são variáveis. A firma escolhe simultaneamente \(K\) e \(L\) para minimizar custos:

\[
CT_{LP}(q) = \min_{K, L} \{wL + rK \mid f(K, L) = q\}
\]

### A curva envoltória

!!! abstract "Teorema da curva envoltória"
    A curva de custo médio de longo prazo (\(\mathrm{CMe}_{LP}\)) é a **envoltória** das curvas de custo médio de curto prazo. Para cada nível de produto \(q\):
    \[
    \mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}) \quad \text{para todo } \bar{K}
    \]
    com igualdade quando \(\bar{K} = K^*(q)\), o nível ótimo de capital de longo prazo para produzir \(q\).

Intuitivamente, no longo prazo a firma tem mais flexibilidade (pode ajustar todos os insumos), de modo que seus custos nunca podem exceder os de curto prazo. A curva de CMe de longo prazo "tangencia" cada curva de CMe de curto prazo no ponto em que o nível de capital fixo é ótimo para aquele nível de produto.

Propriedade importante: no ponto de tangência, o CMg de curto prazo é igual ao CMg de longo prazo:

\[
\mathrm{CMg}_{CP}(q^*; \bar{K}^*) = \mathrm{CMg}_{LP}(q^*)
\]

### Economias e deseconomias de escala

A forma da curva \(\mathrm{CMe}_{LP}\) reflete os rendimentos de escala:

- **Rendimentos crescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) decrescente \(\Leftrightarrow\) **economias de escala**.
- **Rendimentos constantes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) constante.
- **Rendimentos decrescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) crescente \(\Leftrightarrow\) **deseconomias de escala**.

A **escala mínima eficiente** (EME) é o menor nível de produto para o qual o CMe de longo prazo atinge seu mínimo. A EME tem implicações diretas para a estrutura de mercado: se a EME é grande em relação ao tamanho do mercado, o setor tende a ter poucas firmas (oligopólio ou monopólio natural).

---

## Box Brasil: Estrutura de Custos e o "Custo Brasil"

!!! example "Box Brasil: O peso do 'custo Brasil' na indústria de alimentos"

    O termo **"custo Brasil"** designa o conjunto de ineficiências sistêmicas que elevam os custos de produção no país acima dos padrões internacionais. Segundo levantamentos da **Confederação Nacional da Indústria (CNI)** e da **FIESP**, o custo Brasil representava, em estimativas recentes, um sobrecusto de cerca de **R$ 1,7 trilhão por ano** para a economia brasileira — equivalente a aproximadamente 20% do PIB.

    **Componentes do custo Brasil na indústria de alimentos:**

    | Componente | Impacto estimado | Descrição |
    |:---|:---|:---|
    | Carga tributária | 25-35% do faturamento | ICMS, PIS/COFINS, IPI, contribuições sobre folha |
    | Logística e transporte | 12-15% do custo total | Dependência do modal rodoviário, infraestrutura precária |
    | Energia elétrica | 8-12% dos custos industriais | Tarifas entre as mais altas do mundo |
    | Burocracia regulatória | 3-5% dos custos | Licenças, fiscalizações, cumprimento de obrigações acessórias |
    | Custo de capital | Variável | Taxas de juros historicamente elevadas |

    **Logística: o gargalo mais visível.**
    O Brasil transporta cerca de **65% de sua carga** pelo modal rodoviário, contra 25-30% nos EUA e menos de 10% na Europa. Para a indústria de alimentos, que opera com margens estreitas e produtos perecíveis, essa dependência eleva drasticamente os custos de distribuição. O frete de uma tonelada de soja de Sorriso (MT) ao Porto de Santos percorre mais de 2.000 km por estrada, a um custo estimado em US$ 90-120/tonelada — cerca do triplo do custo equivalente nos EUA (dados CNI, 2023).

    **Interpretação microeconômica.**
    Em termos da teoria dos custos, o "custo Brasil" representa um deslocamento para cima das curvas de custo das firmas brasileiras em relação a competidores internacionais. Trata-se, em grande parte, de **custos fixos** (burocracia, tributação fixa) e **custos variáveis** elevados (logística, energia). A consequência é que a **escala mínima eficiente** das firmas brasileiras tende a ser maior, dificultando a sobrevivência de empresas menores e reduzindo a competitividade internacional. A reforma tributária de 2023 (EC 132/2023), com a unificação de tributos sobre consumo (CBS e IBS), representa uma tentativa de reduzir uma das principais fontes do custo Brasil.

---

## Exercícios

!!! tip "Exercícios do Capítulo 10"

**Exercício 10.1.**
Uma firma com função de produção Cobb-Douglas \(q = K^{1/2}L^{1/2}\) enfrenta preços de insumos \(w = 4\) e \(r = 1\).

(a) Derive as demandas condicionadas por insumos \(K^c(w, r, q)\) e \(L^c(w, r, q)\).

(b) Obtenha a função custo \(C(w, r, q)\).

(c) Verifique o Lema de Shephard calculando \(\partial C / \partial w\) e \(\partial C / \partial r\).

(d) Calcule o custo total para produzir \(q = 10\).

(e) Determine o custo marginal e o custo médio e mostre que são constantes. Explique por que isso ocorre (dica: relacione com rendimentos de escala).

---

**Exercício 10.2.**
Considere a função de custo total de curto prazo \(CT(q) = 100 + 10q - 2q^2 + q^3/3\).

(a) Identifique o custo fixo e o custo variável.

(b) Derive as expressões de CMe, CVMe e CMg.

(c) Encontre o nível de produção que minimiza o CMe e o nível que minimiza o CVMe.

(d) Verifique que o CMg cruza o CMe e o CVMe nos respectivos pontos de mínimo.

---

**Exercício 10.3.**
Uma firma opera com a tecnologia \(q = \min\{K, 2L\}\) e enfrenta preços \(r = 8\) e \(w = 2\).

(a) Derive a função custo \(C(q)\).

(b) Calcule CMe e CMg. São constantes? Justifique.

(c) Compare com o caso de uma Cobb-Douglas com rendimentos constantes. Em que se assemelham os custos?

---

**Exercício 10.4.**
Explique graficamente e algebricamente por que a curva de custo médio de longo prazo é a envoltória das curvas de custo médio de curto prazo. Use o caso de uma firma com função de produção \(q = K^{1/3}L^{1/3}\) e preços de insumos \(w = r = 1\) para:

(a) Derivar a função custo de longo prazo.

(b) Fixar \(\bar{K} = 4\) e derivar a função custo de curto prazo.

(c) Mostrar que \(\mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}=4)\) para todo \(q\), com igualdade em um ponto específico.

---

**Exercício 10.5.**
Uma firma produz com a tecnologia \(q = AL^{\alpha}K^{\beta}\), onde \(\alpha + \beta = 1\) (rendimentos constantes de escala).

(a) Mostre que a função custo é linear em \(q\): \(C(w, r, q) = c(w, r) \cdot q\), onde \(c(w, r)\) é o custo unitário.

(b) Derive a expressão de \(c(w, r)\) e mostre que ele é homogêneo de grau 1 nos preços dos insumos.

(c) Mostre que, neste caso, \(\mathrm{CMg} = \mathrm{CMe} = c(w, r)\) — o custo marginal é constante e igual ao custo médio.

(d) Interprete economicamente: por que rendimentos constantes de escala implicam custos marginais constantes?
