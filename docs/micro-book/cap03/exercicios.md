# Exercícios e ANPEC

<iframe src="/micro-book/graficos/cap03/webr-utilidade.html" title="WebR — Funções de Utilidade" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 3.1 — Curvas de indiferença comparadas.** Troque entre Cobb-Douglas, CES, quaselinear e substitutos perfeitos. Altere o parâmetro ρ na CES para ver a transição de substitutos (isoquantas retas) a complementos (formato de L).
</div>

<iframe src="/micro-book/graficos/cap03/webr-tms.html" title="WebR — Taxa Marginal de Substituição" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 3.2 — TMS ao longo da curva de indiferença.** Calcule a TMS em vários pontos de uma Cobb-Douglas e veja a tangente mudar. Observe: quanto mais x você tem, menos y está disposto a trocar — convexidade em ação.
</div>

<iframe src="/micro-book/graficos/cap03/webr-preferencias.html" title="WebR — Zoológico de Preferências" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 3.3 — Zoológico de preferências.** Quatro famílias em 4 painéis: Cobb-Douglas (suave), substitutos perfeitos (retas), Leontief (L) e quase-linear (paralelas). Cada forma de CI conta uma história diferente sobre como o consumidor troca bens.
</div>

<iframe src="/micro-book/graficos/cap03/webr-transf-monotonica.html" title="WebR — Transformação Monotônica" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 3.4 — Transformação monotônica preserva tudo.** Três funções utilidade (U, ln U, U²) geram a *mesma* curva de indiferença e a *mesma* TMS. A utilidade é ordinal: só o ranking importa, não o número.
</div>

---

!!! classroom "Atividade 3.1 — Desenhando suas próprias curvas de indiferença (20 min)"
    **Objetivo:** Descobrir, por introspecção guiada, que preferências pessoais geram curvas de indiferença — e que a TMS varia ao longo delas.

    **Material:** Folha quadriculada, caneta colorida.

    **Protocolo:**

    1. **Setup** (3 min): "Eixo horizontal = horas de Netflix por semana. Eixo vertical = horas de academia por semana. Marque o ponto (10, 2) — sua dotação atual."
    2. **Revelação de preferências** (7 min): "Agora responda honestamente: se eu tirasse 2 horas de Netflix, quantas horas a mais de academia você precisaria para ficar *igualmente feliz*?" Marque o novo ponto. Repita para tirar mais 2 horas. E mais 2. Conecte os pontos — isso é sua curva de indiferença.
    3. **Comparação em duplas** (4 min): Duplas comparam curvas. Pergunte: "As curvas são iguais? Deveriam ser?" → Não! Preferências são subjetivas. "Qual é a TMS de cada um no ponto (10, 2)?"
    4. **Debrief** (6 min):
        - "A curva ficou convexa (curvada para a origem)? Por quê?" → TMS decrescente: quando você já tem pouca Netflix, cada hora a menos dói mais.
        - "Alguém desenhou uma reta?" → Substitutos perfeitos. "Alguém fez um L?" → Complementos perfeitos.
        - "Se eu multiplicar todos os números de utilidade por 2, a curva muda?" → Não. Transformação monotônica (Seção 3.7).
        - Conecte: o exercício que vocês fizeram é exatamente como Edgeworth imaginou as curvas em 1881 — só que ele não tinha Netflix.

    **Conexão com o conteúdo:** Seções 3.3 (curvas de indiferença), 3.4 (TMS), 3.6 (formas funcionais), 3.7 (transformações monotônicas).

!!! classroom "Atividade 3.2 — O teste da transitividade: flagrando incoerência (10 min)"
    **Objetivo:** Testar se as preferências declaradas dos alunos satisfazem os axiomas — e mostrar que violações existem (e importam).

    **Material:** 3 cartões por aluno com opções escritas (ou projeção no slide).

    **Protocolo:**

    1. **As opções** (2 min): Apresente três "cestas" de lazer para o fim de semana: (A) Cinema + pizza, (B) Futebol + churrasco, (C) Praia + açaí. Cada aluno vota nas comparações dois a dois: A vs. B, B vs. C, A vs. C (levantar a mão ou usar Mentimeter).
    2. **Contagem** (3 min): O professor registra as proporções. Tipicamente, com preferências heterogêneas na turma, o resultado *agregado* pode violar transitividade: A > B, B > C, mas C > A (Paradoxo de Condorcet!).
    3. **Debrief** (5 min):
        - "Se a *turma* fosse uma pessoa, ela seria irracional — prefere A a B, B a C, e C a A. Isso é possível para um indivíduo?" → Não, se satisfaz o axioma de transitividade.
        - "Mas o *grupo* violou. O que isso significa?" → Agregação de preferências individuais racionais pode gerar intransitividade coletiva — antecipe o Teorema de Arrow (Capítulo 16).
        - Feche: "Os axiomas do Capítulo 3 são sobre *indivíduos*. Para *sociedades*, a coisa complica — e Arrow ganhou o Nobel por explicar por quê."

    **Conexão com o conteúdo:** Seções 3.1 (axiomas de completude e transitividade), antecipação do Capítulo 16 (Escolha Social e Teorema de Arrow).

---


## Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O axioma de transitividade das preferências implica que:"
    - (a) O consumidor sempre prefere mais a menos
    - (b) Se $A \succsim B$ e $B \succsim C$, então $A \succsim C$
    - (c) O consumidor consegue comparar quaisquer duas cestas
    - (d) A utilidade marginal é sempre decrescente

    ??? success "Resposta"
        **(b)** Transitividade exige consistência nas ordenações: se A é pelo menos tão bom quanto B, e B pelo menos tão bom quanto C, então A deve ser pelo menos tão bom quanto C. A alternativa (a) descreve monotonicidade; (c) descreve completude; (d) é uma propriedade da função de utilidade, não um axioma sobre preferências.

??? question "2. Se $u(x_1, x_2) = x_1^{0{,}5} x_2^{0{,}5}$ e $v = 2u + 10$, é correto afirmar que:"
    - (a) $v$ representa preferências diferentes de $u$, pois os valores numéricos mudam
    - (b) $v$ representa as mesmas preferências, pois é uma transformação monotônica crescente de $u$
    - (c) $v$ só representa as mesmas preferências se a renda do consumidor não mudar
    - (d) $v$ inverte a ordenação das cestas em relação a $u$

    ??? success "Resposta"
        **(b)** A função de utilidade é ordinal: qualquer transformação monotônica crescente $v = g(u)$ com $g' > 0$ preserva a ordenação das cestas e, portanto, representa as mesmas preferências. A alternativa (a) confunde valores cardinais com ordinais; (c) adiciona condição inexistente; (d) seria verdade apenas para transformações decrescentes.

??? question "3. A Taxa Marginal de Substituição (TMS) entre dois bens mede:"
    - (a) A razão entre os preços dos dois bens no mercado
    - (b) A quantidade de um bem que o consumidor está disposto a abrir mão para obter uma unidade adicional do outro, mantendo a utilidade constante
    - (c) A variação percentual na demanda de um bem quando o preço do outro varia
    - (d) O custo de oportunidade de produzir um bem em vez do outro

    ??? success "Resposta"
        **(b)** A TMS é a inclinação da curva de indiferença e mede a taxa subjetiva de troca entre bens que mantém o consumidor indiferente. Matematicamente, $\text{TMS}_{12} = -dx_2/dx_1|_{u=\bar{u}} = \text{UMg}_1/\text{UMg}_2$. A alternativa (a) descreve a inclinação da restrição orçamentária; (c) descreve elasticidade cruzada; (d) refere-se à produção.

??? question "4. As curvas de indiferença de preferências estritamente convexas são:"
    - (a) Retas com inclinação constante
    - (b) Convexas em relação à origem (curvadas para fora)
    - (c) Côncavas em relação à origem (curvadas para dentro, 'arqueadas')
    - (d) Círculos concêntricos

    ??? success "Resposta"
        **(c)** Preferências convexas implicam que médias são preferidas a extremos, gerando curvas de indiferença côncavas em relação à origem (convexas do ponto de vista do conjunto preferido). A TMS é decrescente em valor absoluto. A alternativa (a) descreve substitutos perfeitos; (b) descreve preferências côncavas (não convexas); (d) não é uma forma padrão.

??? question "5. Qual das seguintes funções de utilidade representa preferências por complementos perfeitos?"
    - (a) $u(x_1, x_2) = x_1 + x_2$
    - (b) $u(x_1, x_2) = \min(x_1, x_2)$
    - (c) $u(x_1, x_2) = x_1 \cdot x_2$
    - (d) $u(x_1, x_2) = x_1^2 + x_2^2$

    ??? success "Resposta"
        **(b)** Complementos perfeitos são consumidos em proporções fixas; a utilidade é determinada pelo bem em menor quantidade relativa, representada pela função $\min$. As curvas de indiferença são em L. A alternativa (a) representa substitutos perfeitos; (c) representa preferências Cobb-Douglas; (d) representa preferências côncavas (não convexas), onde o consumidor prefere extremos a médias.

??? question "6. Preferências homotéticas implicam que:"
    - (a) A demanda pelo bem 1 é independente da renda
    - (b) A participação de cada bem na despesa total é constante quando a renda varia
    - (c) A TMS depende apenas da quantidade absoluta de $x_1$
    - (d) As curvas de indiferença são translações verticais

    ??? success "Resposta"
        **(b)** Preferências homotéticas geram curvas de Engel lineares e elasticidade-renda unitária para todos os bens, o que implica participação constante na despesa (Proposição §3.6.6). A alternativa (a) descreve preferências quase-lineares, não homotéticas; (c) também é propriedade da quase-linear (TMS depende só de $x_1$); (d) descreve curvas de indiferença quase-lineares. A assinatura das homotéticas é que a TMS depende da *razão* $x_1/x_2$, gerando expansão radial — não vertical — das curvas.

---

## Resumo do Capítulo

- A teoria do consumidor parte de **axiomas sobre preferências** — completude, transitividade, continuidade e monotonicidade — que estabelecem regras mínimas de coerência para ordenar cestas de consumo. Esses axiomas são o alicerce sobre o qual todo o resto se constrói: sem eles, não há função de utilidade, não há curvas de indiferença e não há otimização.
- Sob esses axiomas, o **Teorema de Debreu** (1954) garante a existência de uma **função de utilidade** contínua que representa as preferências. Essa função é **ordinal**: apenas o ordenamento das cestas importa, não os valores numéricos em si. A ordinalidade implica que qualquer transformação monotônica crescente da função de utilidade representa as mesmas preferências (Seção 3.7).
- As **curvas de indiferença** são curvas de nível da função de utilidade: cobrem todo o espaço de consumo, não se cruzam (pela transitividade), têm inclinação negativa (pela monotonicidade) e, sob convexidade estrita, são abauladas em direção à origem — refletindo a ideia de que o consumidor valoriza a diversidade na composição de sua cesta.
- A **taxa marginal de substituição (TMS)** mede a taxa de troca subjetiva entre bens ao longo da curva de indiferença e equivale à razão das utilidades marginais: \(\text{TMS}_{12} = \text{UMg}_1 / \text{UMg}_2\). A TMS decrescente — que reflete a disposição cada vez menor do consumidor a abrir mão de um bem à medida que ele se torna mais escasso na cesta — é matematicamente equivalente à convexidade estrita das preferências.
- O capítulo apresenta as principais famílias de funções de utilidade — **Cobb-Douglas**, **substitutos perfeitos**, **complementos perfeitos**, **CES** e **quase-linear** — cada uma com formato de curvas de indiferença e elasticidade de substituição distintos. A função CES unifica as três primeiras como casos especiais de um único parâmetro \(\rho\), enquanto a quase-linear se distingue por eliminar o efeito renda sobre um dos bens.
- **Preferências homotéticas** (TMS depende apenas da razão \(x_1/x_2\)) geram curvas de Engel lineares, elasticidade-renda unitária e participação constante na despesa — propriedades que permitem a agregação em um consumidor representativo. Preferências **quase-lineares**, por contraste, concentram todo o efeito renda em um único bem e garantem que as medidas de bem-estar (VC, VE, \(\Delta\)EC) coincidam.

## Conceitos-Chave

<a id="tabela-3-2"></a>

| Conceito | Definição |
|----------|-----------|
| Relação de preferência (\(\succsim\)) | Ordenamento sobre cestas de consumo indicando que uma cesta é "pelo menos tão boa quanto" outra. |
| Completude | Axioma que exige que o consumidor consiga comparar quaisquer duas cestas. |
| Transitividade | Axioma de consistência: se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{z}\), então \(\mathbf{x} \succsim \mathbf{z}\). |
| Monotonicidade | "Mais é melhor": cestas com mais de pelo menos um bem são estritamente preferidas. |
| Função de utilidade | Função \(u: X \to \mathbb{R}\) que representa preferências: \(\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y})\). É ordinal. |
| Curva de indiferença | Conjunto de cestas que proporcionam o mesmo nível de utilidade; curva de nível de \(u\). |
| Taxa marginal de substituição (TMS) | Quantidade do bem 2 que o consumidor abre mão por uma unidade adicional do bem 1, mantendo a utilidade constante; igual a \(\text{UMg}_1/\text{UMg}_2\). |
| Elasticidade de substituição (\(\sigma\)) | Mede a facilidade com que o consumidor substitui entre bens; varia de 0 (complementos perfeitos) a \(\infty\) (substitutos perfeitos). |
| Preferências homotéticas | Preferências cuja TMS depende apenas da razão \(x_1/x_2\); geram elasticidade-renda unitária e participação constante na despesa. |
| Utilidade quase-linear | Função \(u = v(x_1) + x_2\) em que todo aumento de renda vai para \(x_2\); elimina o efeito renda sobre \(x_1\) e iguala as medidas de bem-estar (VC = VE = \(\Delta\)EC). |

<div class="caption-obj" markdown>
**Tabela 3.2 — Conceitos-chave.**
</div>

---

## Exercícios

Os exercícios a seguir cobrem os principais tópicos do capítulo — axiomas, funções de utilidade, TMS, formas funcionais e transformações monotônicas. Eles progridem em dificuldade: os primeiros requerem cálculos diretos de TMS para funções específicas, enquanto os últimos exigem demonstrações e raciocínio mais abstrato sobre propriedades das preferências. As soluções detalhadas estão disponíveis na seção de soluções.

<a id="ex-3-1"></a>**Exercício 3.1.** Considere um consumidor com preferências sobre dois bens (\(x_1, x_2\)) representadas pela função de utilidade \(u(x_1, x_2) = x_1^{1/3} x_2^{2/3}\).

(a) Calcule a TMS\(_{12}\).

(b) Qual o valor da TMS no ponto \((x_1, x_2) = (4, 8)\)? Interprete economicamente.

(c) Mostre que a TMS é decrescente ao longo de uma curva de indiferença (ou seja, \(\partial \text{TMS}_{12} / \partial x_1 < 0\) ao longo de \(u = \bar{u}\)).

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-1)

---

<a id="ex-3-2"></a>**Exercício 3.2.** Mostre que a função de utilidade \(u(x_1, x_2) = \ln x_1 + 2 \ln x_2\) representa as mesmas preferências que \(v(x_1, x_2) = x_1 \cdot x_2^2\). Verifique que ambas produzem a mesma TMS.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-2)

---

<a id="ex-3-3"></a>**Exercício 3.3.** Um consumidor tem preferências do tipo CES com \(\rho = -1\):

\[
u(x_1, x_2) = \left(x_1^{-1} + x_2^{-1}\right)^{-1}.
\]

(a) Calcule a elasticidade de substituição.

(b) Derive a TMS\(_{12}\).

(c) Esboce as curvas de indiferença. Elas estão mais próximas do caso Cobb-Douglas ou do caso de complementos perfeitos? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-3)

---

<a id="ex-3-4"></a>**Exercício 3.4.** Considere preferências quase-lineares \(u(x_1, x_2) = \sqrt{x_1} + x_2\).

(a) Calcule a TMS\(_{12}\) e mostre que ela depende apenas de \(x_1\).

(b) Desenhe duas curvas de indiferença e mostre que elas são translações verticais uma da outra.

(c) Explique por que, nesse caso, a demanda pelo bem 1 é independente da renda (para soluções interiores).

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-4)

---

<a id="ex-3-5"></a>**Exercício 3.5.** Um economista propõe representar as preferências de um consumidor pela função \(u(x_1, x_2) = x_1^2 + x_2^2\).

(a) As curvas de indiferença dessa função são convexas em relação à origem? Justifique.

(b) A TMS é decrescente ao longo de uma curva de indiferença?

(c) Essa função satisfaz o axioma de preferências estritamente convexas? Que problema isso gera para a existência de soluções interiores no problema de otimização do consumidor?

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-5)

---

<a id="ex-3-6"></a>**Exercício 3.6.** Considere a função de utilidade CES generalizada com pesos:

\[
u(x_1, x_2) = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho}, \quad 0 < \alpha < 1, \; \rho < 1, \; \rho \neq 0.
\]

(a) Derive a TMS\(_{12}\) e mostre que ela depende de \(\alpha\), \(\rho\) e da razão \(x_1/x_2\).

(b) Mostre que, no caso \(\alpha = 1/2\), a TMS no ponto \(x_1 = x_2\) é igual a 1, independentemente de \(\rho\).

(c) Interprete economicamente o papel do parâmetro \(\alpha\): o que acontece com as curvas de indiferença quando \(\alpha\) aumenta?

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-6)

---

<a id="ex-3-7"></a>**Exercício 3.7.** Sejam duas funções de utilidade:

\[
u(x_1, x_2) = x_1^{1/2} \, x_2^{1/2}, \qquad v(x_1, x_2) = -\frac{1}{x_1 \, x_2}.
\]

(a) Mostre que \(v\) é uma transformação monotônica de \(u\) e identifique a função \(f\) tal que \(v = f(u)\).

(b) Calcule a TMS\(_{12}\) usando \(u\) e usando \(v\). Verifique que ambas coincidem.

(c) Compare as utilidades marginais de \(u\) e de \(v\). Embora ambas representem as mesmas preferências, os valores das utilidades marginais coincidem? Explique por que a utilidade marginal não possui significado econômico isolado.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-7)

---

<a id="ex-3-8"></a>**Exercício 3.8.** Um consumidor tem preferências representadas por \(u(x_1, x_2) = \min\{2x_1, x_2\}\).

(a) Em que proporção o consumidor deseja consumir os dois bens? Justifique a partir da função de utilidade.

(b) Suponha que o consumidor possui renda \(m = 120\) e enfrenta preços \(p_1 = 10\) e \(p_2 = 5\). Encontre a cesta ótima.

(c) Se o preço do bem 1 dobrar para \(p_1 = 20\), qual será a nova cesta ótima? Calcule a variação percentual no consumo de cada bem e interprete.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-8)

---

<a id="ex-3-9"></a>**Exercício 3.9.** Demonstre que, para preferências homotéticas, a TMS depende apenas da razão \(x_1/x_2\).

*Dica:* Seja \(u(x_1, x_2) = g(h(x_1, x_2))\), onde \(g' > 0\) e \(h\) é homogênea de grau 1. Use o Teorema de Euler para mostrar que \(\text{TMS}_{12} = h_1/h_2\), e depois explore a homogeneidade de grau zero das derivadas de uma função homogênea de grau 1.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-9)

---

<a id="ex-3-10"></a>**Exercício 3.10.** A Pesquisa de Orçamentos Familiares (POF 2017-2018) mostra que famílias com renda mensal de R\$ 1.908 gastam 22% da renda em alimentação, enquanto famílias com renda de R\$ 23.850 gastam 7,6%.

(a) Calcule a elasticidade-renda aproximada da alimentação entre essas duas faixas de renda, usando a fórmula de arco-elasticidade:

\[
\varepsilon \approx \frac{\Delta Q / \bar{Q}}{\Delta I / \bar{I}}
\]

onde \(Q = s \cdot I\) é o gasto com alimentação (\(s\) = participação), e \(\bar{Q}\) e \(\bar{I}\) são as médias dos dois pontos.

(b) A alimentação é um bem normal ou inferior? É um bem de luxo ou de necessidade? Justifique com base na elasticidade calculada.

(c) Esse padrão é compatível com preferências homotéticas? E com preferências Cobb-Douglas? Explique, relacionando com as propriedades da Seção 3.6.6.

[:material-arrow-right: Ver solução](../solucoes/cap03.md#ex-3-10)

---

## Vem, ANPEC!

??? question "ANPEC 2019 — Questão 01"
    Com relação às preferências do consumidor, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Sendo \(U(x, y)\) a função de utilidade em dois bens \(x\) e \(y\), \(U(x, y) = \ln x \cdot \ln y\) representa uma função de utilidade quase-linear. |
    | 1 | Podemos sempre extrair a transformação monotônica da função de utilidade do tipo Cobb-Douglas. |
    | 2 | Uma função de utilidade do tipo \(U(x, y) = (x + y)^{0,5}\) implica que \(x\) e \(y\) são bens substitutos perfeitos. |
    | 3 | Uma função de utilidade do tipo \(U(x, y) = x + y\) implica que \(x\) e \(y\) são bens complementares perfeitos. |
    | 4 | \(f(U) = U^2\) é uma transformação monotônica apenas para \(U\) positivo. |

    ??? success "Gabarito"
        **Respostas: F V V F V**

        **Justificativa por item:**

        - **Item 0 — F:** A função \(U(x,y) = \ln x \cdot \ln y\) não é quase-linear. Uma função quase-linear tem a forma \(v(x_1) + x_2\), isto é, é linear em um dos bens e não linear no outro. O produto de logaritmos não se enquadra nessa estrutura.
        - **Item 1 — V:** Da Cobb-Douglas \(u = x^a y^b\), podemos aplicar a transformação monotônica \(f(u) = \ln(u)\), obtendo \(\hat{u} = a\ln x + b\ln y\). Como \(f\) é estritamente crescente para \(u > 0\) (e a Cobb-Douglas é positiva no interior do consumo), a transformação é sempre válida.
        - **Item 2 — V:** A função \(U(x,y) = (x+y)^{0,5}\) é uma transformação monotônica de \(V(x,y) = x + y\), via \(f(V) = V^{0,5}\), que é estritamente crescente para \(V > 0\). Como \(V = x + y\) representa substitutos perfeitos (TMS constante igual a 1), \(U\) também representa substitutos perfeitos (Proposição 3.3).
        - **Item 3 — F:** A função \(U(x,y) = x + y\) é a representação clássica de substitutos perfeitos, com curvas de indiferença retas e TMS constante igual a 1. Complementares perfeitos seriam representados por \(\min\{x, y\}\).
        - **Item 4 — V:** A função \(f(U) = U^2\) tem derivada \(f'(U) = 2U\). Para \(U > 0\), \(f'(U) > 0\) e a transformação é estritamente crescente (monotônica). Para \(U < 0\), \(f'(U) < 0\) e a função é decrescente, invertendo o ordenamento — logo, não é uma transformação monotônica nesse domínio.

??? question "ANPEC 2021 — Questão 01"
    Seja um consumidor com função de utilidade dada por \(U = X^2 + Y^2\), em que \(X\) é a quantidade consumida de entradas de cinema e \(Y\) é a quantidade consumida de pizzas. Com relação a este consumidor, verifique quais das seguintes afirmações são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A taxa marginal de substituição deste consumidor é \(X/Y\). |
    | 1 | A cesta \((X = 2, Y = 1)\) e a cesta \((X = 1, Y = 2)\) se encontram sobre a mesma curva de indiferença. |
    | 2 | As curvas de indiferença do consumidor são estritamente convexas entre as cestas \((X = 2, Y = 1)\) e \((X = 1, Y = 2)\). |
    | 3 | \(X\) e \(Y\) são substitutos perfeitos. |
    | 4 | O bem \(Y\) é um mal. |

    ??? success "Gabarito"
        **Respostas: V V F F F**

        **Justificativa por item:**

        - **Item 0 — V:** \(\text{TMS} = \frac{\text{UMg}_X}{\text{UMg}_Y} = \frac{2X}{2Y} = \frac{X}{Y}\). Correto.
        - **Item 1 — V:** \(U(2,1) = 4 + 1 = 5\) e \(U(1,2) = 1 + 4 = 5\). Ambas geram o mesmo nível de utilidade, logo pertencem à mesma curva de indiferença.
        - **Item 2 — F:** As curvas de indiferença de \(U = X^2 + Y^2 = c\) são arcos de circunferência — côncavas em relação à origem, não convexas. O conjunto superior \(\{(X,Y): X^2+Y^2 \geq c\}\) não é convexo. Este é exatamente o caso discutido no Exercício 3.5 do capítulo.
        - **Item 3 — F:** Substitutos perfeitos têm curvas de indiferença retas (TMS constante). Aqui, a TMS \(= X/Y\) varia com a composição da cesta e as curvas são circulares, não retas.
        - **Item 4 — F:** \(\text{UMg}_Y = 2Y > 0\) para \(Y > 0\), logo mais pizza aumenta a utilidade. O bem \(Y\) não é um mal.

??? question "ANPEC 2021 — Questão 02"
    Considere a Teoria da Utilidade para responder quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Todos os tipos de preferências podem ser representados pela função de utilidade. |
    | 1 | Sejam dois bens, \(X\) e \(Y\). A uma função de utilidade dada por \(U(X, Y) = XY\) corresponde uma curva de indiferença típica dada por \(Y = cX\), em que \(c\) é uma constante. |
    | 2 | Se dois bens (\(A\) e \(B\)) forem substitutos perfeitos, pode-se, em geral, representar sua função de utilidade na forma \(U(A, B) = c_1 A + c_2 B\), em que \(c_1\) e \(c_2\) são constantes positivas. |
    | 3 | A inclinação de uma curva de indiferença típica da função de utilidade \(U(A, B) = c_1 A + c_2 B\), em que \(c_1\) e \(c_2\) são constantes positivas, é \(-c_1/c_2\). |
    | 4 | A transformação monotônica de uma função de utilidade não altera a taxa marginal de substituição (TMS), porque a TMS é medida ao longo de uma curva de indiferença, e a utilidade permanece constante ao longo da curva de indiferença. |

    ??? success "Gabarito"
        **Respostas: F F V V V**

        **Justificativa por item:**

        - **Item 0 — F:** Nem todos os tipos de preferências admitem representação por função de utilidade. As preferências lexicográficas, por exemplo, são completas e transitivas mas violam o axioma de continuidade — e, conforme discutido na Seção 3.1, sem continuidade não se garante a existência de uma função de utilidade contínua (Teorema 3.1).
        - **Item 1 — F:** Para \(U(X,Y) = XY\), as curvas de indiferença são \(XY = k\), ou seja, \(Y = k/X\) — hipérboles retangulares, não retas pela origem. A equação \(Y = cX\) descreveria retas, o que é incorreto.
        - **Item 2 — V:** A função \(U(A,B) = c_1 A + c_2 B\), com \(c_1, c_2 > 0\), gera curvas de indiferença retas com TMS constante \(= c_1/c_2\), que é a definição de substitutos perfeitos.
        - **Item 3 — V:** A inclinação da curva de indiferença é \(dB/dA|_{U=\bar{u}} = -c_1/c_2\). Correto, conforme a Seção 3.6.2.
        - **Item 4 — V:** Uma transformação monotônica \(\hat{u} = f(u)\) preserva as curvas de indiferença (mesmos conjuntos de nível, apenas com rótulos diferentes). Como a TMS depende apenas da inclinação da curva de indiferença, ela é invariante (Proposição 3.3 e Seção 3.7).

??? question "ANPEC 2023 — Questão 03"
    Com relação à Teoria do Consumidor, julgue as afirmações abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se \(U(X, Y) = \sqrt{X} + \sqrt{Y}\), então a elasticidade de substituição é igual a 2. |
    | 1 | Se \(U(X, Y)\) é uma função de utilidade diferenciável homogênea de grau \(k\), com \(U(X, Y) \neq 0\), e se \(\eta_X(X, Y)\) e \(\eta_Y(X, Y)\) denotam a elasticidade de \(U\) relativamente a \(X\) e \(Y\), respectivamente, então \(\eta_X(X, Y) + \eta_Y(X, Y) = k\). |
    | 2 | Considere o conjunto \(X = \bigcup_{n=1}^{\infty}\{1 - 1/n\}\) e defina \(\succsim\) sobre \(X\) por: \(x \succsim y\) se, e somente se, \(\lvert x - 1/2 \rvert \geq \lvert y - 1/2 \rvert\). Então \(\succsim\) é contínua. |
    | 3 | Considere o conjunto \(X = [0,2] \times [0,2]\) e defina \(\succsim\) sobre \(X\) por: \((x,y) \succsim (z,w)\) se, e somente se, \(\lVert (x,y) - (1,1) \rVert \geq \lVert (z,w) - (1,1) \rVert\). Então \((0,0)\) é um elemento maximal. |
    | 4 | A ordem lexicográfica é contínua. |

    ??? success "Gabarito"
        **Respostas: V V F V F**

        **Justificativa por item:**

        - **Item 0 — V:** A função \(U = X^{1/2} + Y^{1/2}\) é uma CES com \(\rho = 1/2\). A elasticidade de substituição é \(\sigma = \frac{1}{1-\rho} = \frac{1}{1-1/2} = 2\). Correto — ver Seção 3.6.4.
        - **Item 1 — V:** Pelo teorema de Euler para funções homogêneas de grau \(k\): \(X \frac{\partial U}{\partial X} + Y \frac{\partial U}{\partial Y} = kU\). Dividindo ambos os lados por \(U \neq 0\): \(\eta_X + \eta_Y = k\), onde \(\eta_i = \frac{x_i}{U}\frac{\partial U}{\partial x_i}\) é a elasticidade de \(U\) em relação ao bem \(i\).
        - **Item 2 — F:** A relação \(\succsim\) definida pela distância a \(1/2\) não satisfaz a propriedade de continuidade nesse conjunto. O conjunto \(X = \{0, 1/2, 2/3, 3/4, \ldots\}\) acumula em \(1 \notin X\), e a "utilidade" \(|x - 1/2|\) converge para \(1/2\) ao longo da sequência \(x_n = 1 - 1/n\) sem nunca atingir esse supremo em \(X\), o que compromete o fechamento dos conjuntos de contorno superiores quando se considera a topologia induzida pela reta real.
        - **Item 3 — V:** A relação ordena cestas pela distância à cesta \((1,1)\): quanto **maior** a distância, melhor. A cesta \((0,0)\) tem distância \(\lVert(0,0)-(1,1)\rVert = \sqrt{2}\), que é a distância máxima possível em \([0,2] \times [0,2]\) a partir de \((1,1)\) (empatando com \((2,2)\), \((0,2)\) e \((2,0)\)). Logo, \((0,0)\) é maximal.
        - **Item 4 — F:** A ordem lexicográfica não é contínua — este é o exemplo clássico discutido na Seção 3.1. Os conjuntos de contorno superior não são fechados, o que impede a representação por função de utilidade contínua (Teorema 3.1).
