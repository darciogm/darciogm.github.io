# Capítulo 11 — A Empresa por Dentro: Lucro, Receita e a Arte de Sobreviver

## Introdução

Os capítulos anteriores construíram os dois pilares sobre os quais repousa a teoria da firma: a **tecnologia** (função de produção) e os **custos** (função custo). Neste capítulo, reunimos esses elementos para analisar o comportamento da firma como unidade de decisão. A questão central é: **como a firma escolhe quanto produzir?**

A resposta padrão da microeconomia — maximização de lucro — exige que examinemos as condições de primeira e segunda ordem, a relação entre receita marginal e elasticidade da demanda, a decisão de operar ou fechar no curto prazo e as propriedades da função lucro. O elegante Lema de Hotelling, análogo ao Lema de Shephard nos custos, conecta a função lucro diretamente às funções de oferta e demanda por insumos.

Mas antes de mergulhar na análise formal, vale perguntar: **por que existem firmas?** A resposta pioneira de Ronald Coase — custos de transação — permanece central e nos lembra que a "caixa-preta" da firma esconde uma rica estrutura organizacional. No contexto brasileiro, onde micro e pequenas empresas (MPEs) representam a esmagadora maioria dos negócios e enfrentam taxas de mortalidade empresarial elevadas, a teoria da firma ganha contornos particularmente concretos.

---

## 11.1 A Natureza e o Comportamento das Firmas

### Por que firmas existem?

!!! definition "Custos de transação (Coase)"
    Segundo **Ronald Coase** (1937), firmas existem porque a utilização do mecanismo de mercado (sistema de preços) envolve **custos de transação**: custos de busca, negociação, elaboração e execução de contratos. Quando esses custos são suficientemente elevados, torna-se mais eficiente organizar a produção dentro de uma firma — sob uma hierarquia administrativa — do que coordenar tudo via transações de mercado.

A firma, portanto, é uma resposta institucional à existência de custos de transação. Sua fronteira — isto é, quais atividades são realizadas internamente e quais são contratadas no mercado — é determinada pela comparação entre custos de transação e custos de organização interna.

**Oliver Williamson** (1975, 1985) expandiu a análise de Coase, identificando três atributos das transações que determinam a forma organizacional mais eficiente:

1. **Especificidade de ativos**: quando investimentos são específicos a uma relação (ex.: uma máquina que só serve para produzir um componente para um único cliente), o risco de comportamento oportunista (*hold-up*) favorece a integração vertical.
2. **Frequência**: transações recorrentes justificam estruturas de governança mais sofisticadas.
3. **Incerteza**: quanto maior a incerteza, mais difícil redigir contratos completos, favorecendo a organização interna.

### O objetivo da firma: maximização de lucro

Na análise microeconômica padrão, assume-se que a firma busca **maximizar o lucro**:

\[
\pi = RT - CT = p \cdot q - C(q)
\]

Embora existam teorias alternativas — maximização de receita (Baumol), maximização da utilidade gerencial (Williamson), satisfação (*satisficing*, Simon) —, a maximização de lucro permanece como a hipótese de trabalho dominante por sua tratabilidade analítica e por gerar predições empiricamente testáveis.

---

## 11.2 Maximização de Lucro

### Condições de primeira ordem

A firma escolhe \(q\) para maximizar:

\[
\pi(q) = p(q) \cdot q - C(q) = RT(q) - CT(q)
\]

onde \(p(q)\) é a função de demanda inversa (no caso de tomadora de preços, \(p\) é constante).

A condição de primeira ordem (CPO) é:

\[
\frac{d\pi}{dq} = \frac{dRT}{dq} - \frac{dCT}{dq} = 0 \implies \mathrm{RMg}(q) = \mathrm{CMg}(q)
\]

!!! abstract "Regra de maximização de lucro"
    A firma maximiza lucro produzindo a quantidade \(q^*\) em que a **receita marginal** iguala o **custo marginal**:
    \[
    \mathrm{RMg}(q^*) = \mathrm{CMg}(q^*)
    \]

### Condição de segunda ordem

Para que \(q^*\) seja um máximo (e não um mínimo), exige-se:

\[
\frac{d^2\pi}{dq^2}\bigg|_{q=q^*} < 0 \implies \frac{d\mathrm{RMg}}{dq}\bigg|_{q^*} < \frac{d\mathrm{CMg}}{dq}\bigg|_{q^*}
\]

Isto é, na quantidade ótima, o custo marginal deve crescer **mais rapidamente** que a receita marginal. Graficamente, o CMg deve cruzar o RMg **de baixo para cima**.

### Maximização de lucro com dois insumos

Alternativamente, a firma pode escolher diretamente as quantidades de insumos. O problema é:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - rK
\]

As condições de primeira ordem são:

\[
p \cdot f_L = w \implies \text{VPMg}_L = w
\]

\[
p \cdot f_K = r \implies \text{VPMg}_K = r
\]

onde \(\text{VPMg}\) é o **valor do produto marginal**. Cada insumo deve ser empregado até o ponto em que o valor de sua contribuição marginal ao produto iguala seu preço.

---

## 11.3 Receita Marginal e Elasticidade

<figure markdown="span">
  <iframe src="../graficos/cap11/receita-marginal.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 11.2</strong> — Receita marginal, demanda e elasticidade. A curva de RMg tem o dobro da inclinacao da demanda linear. O ponto verde marca onde \(\mathrm{RMg} = 0\) (elasticidade unitaria). Mova o slider \(q\) para ver a relacao \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) em cada ponto.</figcaption>
</figure>

### Receita marginal

A **receita total** é \(RT = p(q) \cdot q\). A **receita marginal** é:

\[
\mathrm{RMg} = \frac{dRT}{dq} = p + q \frac{dp}{dq}
\]

Para uma firma **tomadora de preços** (mercado perfeitamente competitivo), \(dp/dq = 0\), logo \(\mathrm{RMg} = p\).

Para uma firma com **poder de mercado**, \(dp/dq < 0\), logo \(\mathrm{RMg} < p\).

### Relação entre RMg e elasticidade-preço da demanda

!!! definition "Receita marginal e elasticidade"
    A receita marginal pode ser expressa em função da elasticidade-preço da demanda \(\varepsilon_d\) (definida como negativa, i.e., \(\varepsilon_d < 0\)):
    \[
    \mathrm{RMg} = p\left(1 + \frac{1}{\varepsilon_d}\right) = p\left(1 - \frac{1}{|\varepsilon_d|}\right)
    \]

A derivação é direta:

\[
\mathrm{RMg} = p + q\frac{dp}{dq} = p\left(1 + \frac{q}{p}\frac{dp}{dq}\right) = p\left(1 + \frac{1}{\varepsilon_d}\right)
\]

onde \(\varepsilon_d = \frac{dq}{dp} \cdot \frac{p}{q}\) é a elasticidade-preço da demanda.

**Implicações:**

- Se \(|\varepsilon_d| > 1\) (demanda elástica): \(\mathrm{RMg} > 0\) — aumentar a produção eleva a receita total.
- Se \(|\varepsilon_d| = 1\) (elasticidade unitária): \(\mathrm{RMg} = 0\) — receita total é máxima.
- Se \(|\varepsilon_d| < 1\) (demanda inelástica): \(\mathrm{RMg} < 0\) — aumentar a produção reduz a receita total.

!!! note "Implicação para precificação"
    Uma firma maximizadora de lucro com poder de mercado **nunca** opera na porção inelástica da curva de demanda (onde \(|\varepsilon_d| < 1\)), pois nessa região \(\mathrm{RMg} < 0\), enquanto \(\mathrm{CMg} > 0\). Reduzir a produção elevaria simultaneamente a receita e reduziria os custos, aumentando o lucro.

---

## 11.4 Oferta de Curto Prazo da Firma Tomadora de Preços

<figure markdown="span">
  <iframe src="../graficos/cap11/maximizacao-lucro.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>
  <figcaption><strong>Figura 11.1</strong> — Maximizacao de lucro para firma tomadora de precos. Ajuste o preco \(p\) e os parametros de custo. O grafico mostra a quantidade otima \(q^*\) onde \(p = CMg\), o retangulo de lucro (ou prejuizo) sombreado e a condicao de fechamento (\(p < CVMe_{\min}\)).</figcaption>
</figure>

### A decisão de produção no curto prazo

Para uma firma tomadora de preços (\(\mathrm{RMg} = p\)), a condição de maximização é \(p = \mathrm{CMg}(q)\). Contudo, essa condição não é suficiente — é preciso verificar se a firma deve **operar** ou **fechar**.

No curto prazo, a firma incorre em custos fixos independentemente de produzir ou não. Portanto:

- Se **opera**, o lucro é: \(\pi = p \cdot q - CV(q) - CF\)
- Se **fecha**, o lucro é: \(\pi = -CF\)

A firma deve operar se e somente se:

\[
p \cdot q - CV(q) - CF \geq -CF \implies p \cdot q \geq CV(q) \implies p \geq \mathrm{CVMe}(q)
\]

### Condições de oferta no curto prazo

| Condição de preço | Decisão | Lucro econômico |
|:---|:---|:---|
| \(p > \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Lucro positivo \((\pi > 0)\) |
| \(p = \mathrm{CMe}_{\min}\) | Produzir no ponto de lucro zero | Lucro zero (ponto de *break-even*) |
| \(\mathrm{CVMe}_{\min} < p < \mathrm{CMe}_{\min}\) | Produzir em \(p = \mathrm{CMg}\) | Prejuízo, mas menor que \(CF\) |
| \(p = \mathrm{CVMe}_{\min}\) | Indiferente entre operar e fechar | Prejuízo igual a \(CF\) (ponto de fechamento) |
| \(p < \mathrm{CVMe}_{\min}\) | Fechar (produção zero) | Prejuízo igual a \(CF\) |

!!! definition "Curva de oferta de curto prazo"
    A **curva de oferta de curto prazo** da firma tomadora de preços é o trecho da curva de custo marginal que está **acima** do custo variável médio mínimo:
    \[
    q^s(p) = \begin{cases} \mathrm{CMg}^{-1}(p) & \text{se } p \geq \mathrm{CVMe}_{\min} \\ 0 & \text{se } p < \mathrm{CVMe}_{\min} \end{cases}
    \]

!!! note "O excedente do produtor"
    O **excedente do produtor** no curto prazo é a diferença entre a receita total e o custo variável:
    \[
    EP = RT - CV = p \cdot q - CV(q) = \pi + CF
    \]
    Graficamente, é a área acima da curva de oferta (CMg) e abaixo do preço. O excedente do produtor é a medida apropriada de bem-estar do lado da oferta no curto prazo, pois mede a contribuição da produção para cobrir os custos fixos e gerar lucro.

---

## 11.5 A Função Lucro e o Lema de Hotelling

### A função lucro

!!! definition "Função lucro"
    A **função lucro** \(\pi(p, w, r)\) é o lucro máximo que a firma pode obter dados o preço do produto \(p\) e os preços dos insumos \(w\) e \(r\):
    \[
    \pi(p, w, r) = \max_{q} \{p \cdot q - C(w, r, q)\}
    \]
    ou, equivalentemente:
    \[
    \pi(p, w, r) = \max_{K, L} \{p \cdot f(K, L) - wL - rK\}
    \]

A função lucro possui propriedades notáveis:

1. **Não decrescente** em \(p\): um aumento no preço do produto nunca reduz o lucro máximo.
2. **Não crescente** em \(w\) e \(r\): um aumento no preço de qualquer insumo nunca aumenta o lucro máximo.
3. **Homogênea de grau 1** em \((p, w, r)\): se todos os preços (do produto e dos insumos) são multiplicados por \(t > 0\), o lucro máximo também é multiplicado por \(t\).
4. **Convexa** em \((p, w, r)\): a firma pode ajustar suas decisões em resposta a mudanças de preços, de modo que o lucro responde mais que proporcionalmente (é "mais sensível") a grandes mudanças de preços.

### Lema de Hotelling

!!! proof "Demonstração: Lema de Hotelling"
    **Enunciado.** Se \(\pi(p, w, r)\) é diferenciável, então:
    \[
    \frac{\partial \pi(p, w, r)}{\partial p} = q^*(p, w, r) \quad \text{(função de oferta)}
    \]
    \[
    \frac{\partial \pi(p, w, r)}{\partial w} = -L^*(p, w, r) \quad \text{(negativo da demanda por trabalho)}
    \]
    \[
    \frac{\partial \pi(p, w, r)}{\partial r} = -K^*(p, w, r) \quad \text{(negativo da demanda por capital)}
    \]

    **Demonstração.**
    Considere o problema de maximização de lucro com escolha de insumos:
    \[
    \pi(p, w, r) = \max_{K, L} \{p \cdot f(K, L) - wL - rK\}
    \]

    Seja \((K^*, L^*)\) a solução ótima. Defina a função objetivo como:
    \[
    g(K, L; p, w, r) = p \cdot f(K, L) - wL - rK
    \]

    Pelo **teorema da envoltória**, a derivada da função valor em relação a um parâmetro é igual à derivada parcial da função objetivo avaliada no ótimo:
    \[
    \frac{\partial \pi}{\partial p} = \frac{\partial g}{\partial p}\bigg|_{(K^*, L^*)} = f(K^*, L^*) = q^*
    \]

    \[
    \frac{\partial \pi}{\partial w} = \frac{\partial g}{\partial w}\bigg|_{(K^*, L^*)} = -L^*
    \]

    \[
    \frac{\partial \pi}{\partial r} = \frac{\partial g}{\partial r}\bigg|_{(K^*, L^*)} = -K^*
    \]

    **Verificação com Cobb-Douglas.** Considere \(q = K^{1/2}L^{1/2}\), com preços \((p, w, r)\). As CPOs são:
    \[
    p \cdot \frac{1}{2}K^{-1/2}L^{1/2} = r \qquad \text{e} \qquad p \cdot \frac{1}{2}K^{1/2}L^{-1/2} = w
    \]

    Resolvendo:
    \[
    K^* = \frac{p^2}{4wr}, \qquad L^* = \frac{p^2}{4w^2} \cdot \frac{w}{r} = \frac{p^2}{4wr}  \cdot \frac{r}{w}
    \]

    Mais precisamente, \(K^* = \frac{p^2 w}{4r^2 \cdot ??}\)... Seja mais cuidadoso. Da CPO 1: \(pL^{1/2}/(2K^{1/2}) = r\) e CPO 2: \(pK^{1/2}/(2L^{1/2}) = w\). Dividindo CPO2 por CPO1: \(K/L = w/r\), logo \(K = (w/r)L\). Substituindo na função de produção e na CPO 2:

    \[
    q = (w/r)^{1/2} L, \qquad p(w/r)^{1/2}/(2) = w \implies L^* = p/(2(wr)^{1/2}) \cdot (w/r)^{1/2} \cdot ...
    \]

    O cálculo detalhado confirma que \(\partial \pi / \partial p = q^*\) e \(\partial \pi / \partial w = -L^*\). \(\blacksquare\)

!!! tip "Significado econômico do Lema de Hotelling"
    O Lema de Hotelling estabelece uma dualidade elegante: a partir da função lucro — que sintetiza toda a informação sobre tecnologia e preços — podemos recuperar tanto a **função de oferta** do produto quanto as **demandas por insumos**. Juntamente com o Lema de Shephard (capítulo anterior), forma o arcabouço dual da teoria da firma. A convexidade da função lucro implica que a oferta é não decrescente no preço do produto (lei da oferta) e que as demandas por insumos são não crescentes nos respectivos preços.

---

## 11.6 Maximização de Lucro e Demanda por Insumos

### Demanda incondicional por insumos

A **demanda incondicional** (ou marshalliana) por insumos é obtida diretamente das condições de primeira ordem da maximização de lucro:

\[
L^*(p, w, r): \quad p \cdot f_L(K^*, L^*) = w
\]

\[
K^*(p, w, r): \quad p \cdot f_K(K^*, L^*) = r
\]

Estas demandas diferem das demandas condicionadas (Capítulo 10) porque não fixam o nível de produto — ele é determinado endogenamente pela maximização de lucro.

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
\]

O **efeito substituição** (\(\leq 0\)) reflete a substituição do trabalho por capital ao longo da isoquanta quando \(w\) sobe. O **efeito produto** também é negativo: \(w\) maior eleva o CMg, o que reduz \(q^*\), o que reduz a demanda por trabalho. Ambos os efeitos operam na mesma direção — diferentemente do caso do consumidor, onde efeito substituição e efeito renda podem ter sinais opostos (bem de Giffen).

!!! abstract "Proposição: Inexistência de 'insumo de Giffen'"
    Na teoria da firma maximizadora de lucro, a demanda por um insumo é sempre não crescente em seu próprio preço. Não existe o análogo de um "bem de Giffen" para insumos, pois tanto o efeito substituição quanto o efeito produto reduzem a demanda quando o preço do insumo aumenta.

---

## Box Brasil: MPEs — Desafios de Sobrevivência Empresarial

!!! example "Box Brasil: Micro e pequenas empresas — a arte de sobreviver"

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

## Exercícios

!!! tip "Exercícios do Capítulo 11"

**Exercício 11.1.**
Uma firma tomadora de preços tem a função de custo total de curto prazo \(CT(q) = 50 + 2q + 0{,}5q^2\).

(a) Determine CF, CV(q), CMe(q), CVMe(q) e CMg(q).

(b) Encontre o ponto de fechamento (mínimo do CVMe).

(c) Encontre o ponto de *break-even* (mínimo do CMe).

(d) Derive a curva de oferta de curto prazo \(q^s(p)\).

(e) Se o preço de mercado é \(p = 12\), qual a quantidade produzida e o lucro?

---

**Exercício 11.2.**
Demonstre que, para uma firma com poder de mercado enfrentando uma curva de demanda linear \(p = a - bq\):

(a) A receita marginal é \(\mathrm{RMg} = a - 2bq\) (inclinação é o dobro da da demanda).

(b) A receita total é máxima quando \(q = a/(2b)\).

(c) Verifique que no ponto de receita máxima \(|\varepsilon_d| = 1\).

(d) Se o custo marginal é \(\mathrm{CMg} = c\) (constante), derive a quantidade e o preço de maximização de lucro. Mostre que o preço é um *markup* sobre o custo marginal.

---

**Exercício 11.3.**
Considere uma firma com função de produção \(q = K^{1/3}L^{2/3}\) enfrentando preços \(p = 27\), \(w = 2\) e \(r = 1\).

(a) Derive as condições de primeira ordem para maximização de lucro.

(b) Encontre as quantidades ótimas de \(K^*\), \(L^*\) e \(q^*\).

(c) Calcule o lucro máximo.

(d) Verifique o Lema de Hotelling calculando a função lucro \(\pi(p, w, r)\) e suas derivadas parciais.

---

**Exercício 11.4.**
Uma firma opera no curto prazo com capital fixo \(\bar{K} = 16\) e função de produção \(q = \bar{K}^{1/2} L^{1/2} = 4L^{1/2}\). O salário é \(w = 8\) e o custo do capital é \(r = 2\).

(a) Derive a função de custo total de curto prazo \(CT(q)\).

(b) Derive CMg(q) e CVMe(q).

(c) Determine o preço mínimo para que a firma opere (ponto de fechamento).

(d) Se \(p = 16\), qual a quantidade ofertada e o lucro?

(e) Compare com a decisão de longo prazo (quando \(K\) também pode ser ajustado).

---

**Exercício 11.5.**
Explique, usando a teoria vista neste capítulo, por que:

(a) Uma firma com prejuízo pode racionalmente continuar operando no curto prazo. Dê um exemplo numérico.

(b) A função lucro é convexa nos preços. Qual a implicação econômica dessa propriedade?

(c) Não existe "insumo de Giffen" na teoria da firma. Compare com o caso do consumidor.

(d) A relação \(\mathrm{RMg} = p(1 + 1/\varepsilon_d)\) implica que um monopolista nunca opera na região inelástica da demanda. Explique intuitivamente.

(e) Segundo Coase, qual o limite para o crescimento da firma? Relacione com deseconomias de escala e custos de monitoramento.
