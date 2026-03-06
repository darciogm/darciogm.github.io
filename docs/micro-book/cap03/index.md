# Capítulo 3 — Por Que Você Compra o Que Compra (e Às Vezes Se Arrepende)

## Introdução

Por que um consumidor escolhe arroz em vez de macarrão? Por que alguém prefere gastar mais com lazer do que com roupas? A teoria das preferências e da utilidade constitui o alicerce da microeconomia do consumidor. Neste capítulo, formalizamos as preferências individuais por meio de axiomas, mostramos sob quais condições essas preferências podem ser representadas por uma função de utilidade, e exploramos as ferramentas analíticas que nos permitem descrever e comparar cestas de consumo: curvas de indiferença, taxa marginal de substituição e famílias específicas de funções de utilidade.

O capítulo segue a abordagem axiomática presente em Mas-Colell, Whinston e Green (1995), complementada pela exposição mais intuitiva de Varian (2015) e Nicholson e Snyder (2017). Para uma abordagem particularmente acessível, com ênfase em intuição econômica e exemplos aplicados, ver Besanko & Braeutigam (2014, Caps. 3–4). Ao final, o leitor estará preparado para resolver o problema de otimização do consumidor — tema do Capítulo 4.

---

## 3.1 Axiomas da Escolha Racional

Seja \(X \subseteq \mathbb{R}^n_+\) o **conjunto de consumo**, isto é, o conjunto de todas as cestas de bens fisicamente disponíveis. Uma **relação de preferência** \(\succsim\) sobre \(X\) indica que, dadas duas cestas \(\mathbf{x}\) e \(\mathbf{y}\), o consumidor considera \(\mathbf{x}\) pelo menos tão boa quanto \(\mathbf{y}\).

A partir de \(\succsim\), definimos:

- **Preferência estrita**: \(\mathbf{x} \succ \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e não \(\mathbf{y} \succsim \mathbf{x}\).
- **Indiferença**: \(\mathbf{x} \sim \mathbf{y}\) se e somente se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{x}\).

Para que as preferências do consumidor sejam "bem comportadas" e passíveis de análise formal, exigimos um conjunto de axiomas.

!!! definition "Axioma 1 — Completude"
    Para quaisquer \(\mathbf{x}, \mathbf{y} \in X\), vale \(\mathbf{x} \succsim \mathbf{y}\) ou \(\mathbf{y} \succsim \mathbf{x}\) (ou ambos). Em outras palavras, o consumidor é sempre capaz de comparar duas cestas quaisquer.

!!! definition "Axioma 2 — Transitividade"
    Para quaisquer \(\mathbf{x}, \mathbf{y}, \mathbf{z} \in X\), se \(\mathbf{x} \succsim \mathbf{y}\) e \(\mathbf{y} \succsim \mathbf{z}\), então \(\mathbf{x} \succsim \mathbf{z}\). A transitividade garante consistência interna nas escolhas.

!!! definition "Axioma 3 — Continuidade"
    Para todo \(\mathbf{y} \in X\), os conjuntos \(\{\mathbf{x} \in X : \mathbf{x} \succsim \mathbf{y}\}\) (conjunto de pelo menos tão bom quanto) e \(\{\mathbf{x} \in X : \mathbf{y} \succsim \mathbf{x}\}\) (conjunto de no máximo tão bom quanto) são fechados. A continuidade exclui "saltos" nas preferências — pequenas mudanças na cesta não causam inversões bruscas no ordenamento.

!!! definition "Axioma 4 — Monotonicidade (não saciedade local)"
    Se \(\mathbf{x} \geq \mathbf{y}\) (componente a componente) e \(\mathbf{x} \neq \mathbf{y}\), então \(\mathbf{x} \succ \mathbf{y}\). "Mais é melhor" — o consumidor sempre prefere ter mais de pelo menos um bem, tudo o mais constante.

!!! tip "Observação sobre preferências lexicográficas"
    As preferências lexicográficas satisfazem completude, transitividade e monotonicidade, mas **não** satisfazem continuidade. Por isso, não podem ser representadas por uma função de utilidade contínua. Este é um caso clássico que ilustra a importância do axioma de continuidade.

---

## 3.2 Relações de Preferência e Função de Utilidade

Uma **função de utilidade** \(u: X \to \mathbb{R}\) **representa** a relação de preferência \(\succsim\) se, para todo \(\mathbf{x}, \mathbf{y} \in X\):

\[
\mathbf{x} \succsim \mathbf{y} \iff u(\mathbf{x}) \geq u(\mathbf{y}).
\]

A existência de tal função não é trivial. O teorema a seguir fornece condições suficientes.

!!! abstract "Teorema 3.1 — Existência da Função de Utilidade (Debreu, 1954)"
    Se a relação de preferência \(\succsim\) sobre \(X \subseteq \mathbb{R}^n_+\) é **completa**, **transitiva**, **contínua** e **monótona**, então existe uma função de utilidade contínua \(u: X \to \mathbb{R}\) que representa \(\succsim\).

A demonstração completa pode ser encontrada em Mas-Colell, Whinston e Green (1995, Proposição 3.C.1). A ideia central é construir \(u(\mathbf{x})\) como o escalar \(t\) tal que \(\mathbf{x} \sim t \cdot \mathbf{1}\), onde \(\mathbf{1} = (1, 1, \ldots, 1)\). A monotonicidade garante que tal \(t\) é único, e a continuidade garante que a função resultante é contínua.

!!! note "Utilidade é ordinal, não cardinal"
    A função de utilidade atribui números a cestas apenas para preservar o **ordenamento**. Os valores absolutos não têm significado econômico intrínseco. Se \(u(\mathbf{x}) = 10\) e \(u(\mathbf{y}) = 5\), sabemos apenas que \(\mathbf{x} \succ \mathbf{y}\), **não** que \(\mathbf{x}\) é "duas vezes melhor" que \(\mathbf{y}\).

---

## 3.3 Curvas de Indiferença

!!! definition "Curva de indiferença"
    A curva de indiferença associada ao nível de utilidade \(\bar{u}\) é o conjunto \(\{\mathbf{x} \in X : u(\mathbf{x}) = \bar{u}\}\). Trata-se de uma **curva de nível** da função de utilidade.

**Propriedades das curvas de indiferença** (sob os axiomas da Seção 3.1):

1. **Cobrem todo o espaço de consumo**: pela completude, toda cesta pertence a alguma curva de indiferença.
2. **Não se cruzam**: se duas curvas se cruzassem em um ponto, a transitividade seria violada.
3. **Possuem inclinação negativa**: pela monotonicidade, para manter o mesmo nível de utilidade, um aumento em \(x_1\) deve ser compensado por uma redução em \(x_2\).
4. **Cestas em curvas mais altas (a nordeste) são preferidas**: consequência direta da monotonicidade.

O **mapa de indiferença** é a família de todas as curvas de indiferença. Ele oferece uma representação visual completa das preferências do consumidor no espaço bidimensional.

<iframe src="../graficos/cap03/curvas-indiferenca.html" width="100%" height="520" style="border:none; border-radius:8px;"></iframe>
*Arraste o ponto sobre a curva para ver a TMS. Use os sliders para alterar os parâmetros e o menu para trocar o tipo de preferência.*

!!! tip "Convexidade estrita"
    Se as preferências forem **estritamente convexas** — isto é, se \(\mathbf{x} \sim \mathbf{y}\) e \(\mathbf{x} \neq \mathbf{y}\) implicarem \(t\mathbf{x} + (1-t)\mathbf{y} \succ \mathbf{x}\) para todo \(t \in (0,1)\) — então as curvas de indiferença são estritamente convexas em relação à origem. Isso reflete a ideia de que consumidores preferem variedade.

---

## 3.4 Taxa Marginal de Substituição (TMS)

!!! definition "Taxa marginal de substituição"
    A **taxa marginal de substituição** do bem 1 pelo bem 2 é definida como o valor absoluto da inclinação da curva de indiferença no ponto \((x_1, x_2)\):

    \[
    \text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}}
    \]

    A TMS mede a quantidade do bem 2 que o consumidor está disposto a abrir mão para obter uma unidade adicional do bem 1, mantendo o nível de utilidade constante.

**Interpretação econômica**: A TMS é a **taxa de troca subjetiva** do consumidor. Se \(\text{TMS}_{12} = 3\), o consumidor está disposto a trocar até 3 unidades do bem 2 por 1 unidade adicional do bem 1.

**TMS decrescente**: Sob preferências estritamente convexas, a TMS é decrescente ao longo da curva de indiferença. À medida que o consumidor adquire mais do bem 1, cada unidade adicional torna-se relativamente menos valiosa, e ele está disposto a sacrificar cada vez menos do bem 2. Esta propriedade é equivalente à convexidade estrita das curvas de indiferença.

---

## 3.5 Utilidade Marginal e TMS

A **utilidade marginal** do bem \(i\) é a derivada parcial da função de utilidade:

\[
\text{UMg}_i = \frac{\partial u}{\partial x_i}.
\]

A relação fundamental entre utilidade marginal e TMS é dada pela proposição a seguir.

!!! abstract "Proposição 3.2 — TMS como razão de utilidades marginais"
    Se \(u(x_1, x_2)\) é diferenciável e \(\text{UMg}_2 > 0\), então:

    \[
    \text{TMS}_{12} = \frac{\text{UMg}_1}{\text{UMg}_2} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2}
    \]

!!! proof "Demonstração"
    Considere o consumidor sobre uma curva de indiferença, de modo que \(u(x_1, x_2) = \bar{u}\). Tomando o **diferencial total** da função de utilidade ao longo dessa curva:

    \[
    du = \frac{\partial u}{\partial x_1} dx_1 + \frac{\partial u}{\partial x_2} dx_2 = 0,
    \]

    pois o nível de utilidade é constante (\(du = 0\)) ao longo da curva de indiferença. Reorganizando:

    \[
    \frac{\partial u}{\partial x_2} dx_2 = -\frac{\partial u}{\partial x_1} dx_1,
    \]

    \[
    \frac{dx_2}{dx_1} = -\frac{\partial u / \partial x_1}{\partial u / \partial x_2}.
    \]

    Como a TMS é definida como o valor absoluto (com sinal positivo) da inclinação da curva de indiferença:

    \[
    \text{TMS}_{12} = -\frac{dx_2}{dx_1}\bigg|_{u = \bar{u}} = \frac{\partial u / \partial x_1}{\partial u / \partial x_2} = \frac{\text{UMg}_1}{\text{UMg}_2}. \qquad \blacksquare
    \]

<iframe src="../graficos/cap03/tms-ponto.html" width="100%" height="520" style="border:none; border-radius:8px;"></iframe>
*Arraste o ponto P ao longo da curva de indiferença para ver a reta tangente e o cálculo da TMS = UMg₁/UMg₂ atualizado em tempo real. Ajuste α e β nos sliders.*

---

## 3.6 Funções de Utilidade para Preferências Específicas

### 3.6.1 Cobb-Douglas

\[
u(x_1, x_2) = x_1^a \, x_2^b, \quad a, b > 0.
\]

As curvas de indiferença são hipérboles convexas. A TMS é:

\[
\text{TMS}_{12} = \frac{a \, x_2}{b \, x_1}.
\]

A função Cobb-Douglas é extremamente conveniente por gerar funções de demanda com forma fechada. A participação do bem \(i\) na despesa total é constante e igual a \(\frac{a}{a+b}\) (para o bem 1) e \(\frac{b}{a+b}\) (para o bem 2). A elasticidade de substituição é \(\sigma = 1\).

### 3.6.2 Substitutos Perfeitos

\[
u(x_1, x_2) = a x_1 + b x_2, \quad a, b > 0.
\]

As curvas de indiferença são **linhas retas** com inclinação \(-a/b\). A TMS é constante:

\[
\text{TMS}_{12} = \frac{a}{b}.
\]

O consumidor troca os bens a uma taxa fixa, independente da composição da cesta. A elasticidade de substituição é \(\sigma = \infty\). O consumidor tipicamente se especializa no bem com menor preço relativo ajustado pela taxa de troca.

### 3.6.3 Complementos Perfeitos

\[
u(x_1, x_2) = \min\{a x_1, \, b x_2\}, \quad a, b > 0.
\]

As curvas de indiferença têm formato de **L** (ângulo reto), com vértice na reta \(a x_1 = b x_2\). A TMS é indefinida no vértice, zero nos segmentos horizontais e infinita nos segmentos verticais. A elasticidade de substituição é \(\sigma = 0\). Exemplos clássicos: sapato esquerdo e sapato direito, CPU e monitor.

### 3.6.4 CES (Elasticidade de Substituição Constante)

\[
u(x_1, x_2) = \left(x_1^{\rho} + x_2^{\rho}\right)^{1/\rho}, \quad \rho \leq 1, \; \rho \neq 0.
\]

A elasticidade de substituição é:

\[
\sigma = \frac{1}{1 - \rho}.
\]

A função CES engloba como casos especiais:

- \(\rho \to 0\): Cobb-Douglas (\(\sigma = 1\)).
- \(\rho = 1\): Substitutos perfeitos (\(\sigma = \infty\)).
- \(\rho \to -\infty\): Complementos perfeitos (\(\sigma = 0\)).

A TMS para a CES é:

\[
\text{TMS}_{12} = \left(\frac{x_1}{x_2}\right)^{\rho - 1}.
\]

### 3.6.5 Quase-linear

\[
u(x_1, x_2) = v(x_1) + x_2, \quad v' > 0, \; v'' < 0.
\]

A TMS depende apenas de \(x_1\):

\[
\text{TMS}_{12} = v'(x_1).
\]

As curvas de indiferença são **translações verticais** umas das outras: possuem a mesma forma, apenas deslocadas paralelamente ao eixo \(x_2\). Isso implica que não há efeito renda sobre o bem 1 (para soluções interiores). A utilidade quase-linear é particularmente útil em análises de equilíbrio parcial e em modelos de organização industrial.

### Tabela comparativa das funções de utilidade

| Tipo | Função \(u(x_1, x_2)\) | TMS\(_{12}\) | Curvas de indiferença | Elasticidade de substituição (\(\sigma\)) |
|---|---|---|---|---|
| Cobb-Douglas | \(x_1^a x_2^b\) | \(\dfrac{a\, x_2}{b\, x_1}\) | Hipérboles convexas | \(1\) |
| Substitutos perfeitos | \(ax_1 + bx_2\) | \(\dfrac{a}{b}\) (constante) | Retas paralelas | \(\infty\) |
| Complementos perfeitos | \(\min\{ax_1, bx_2\}\) | Indefinida no vértice | Ângulo reto (L) | \(0\) |
| CES | \((x_1^{\rho}+x_2^{\rho})^{1/\rho}\) | \(\left(\frac{x_1}{x_2}\right)^{\rho-1}\) | Convexa (curvatura varia com \(\rho\)) | \(\dfrac{1}{1-\rho}\) |
| Quase-linear | \(v(x_1) + x_2\) | \(v'(x_1)\) | Translações verticais | Variável |

<iframe src="../graficos/cap03/tipos-preferencias.html" width="100%" height="750" style="border:none; border-radius:8px;"></iframe>
*Comparação visual dos quatro tipos de preferências: Cobb-Douglas (hipérboles convexas), substitutos perfeitos (retas), complementos perfeitos (ângulo reto) e quase-linear (translações verticais).*

<iframe src="../graficos/cap03/funcoes-utilidade.html" width="100%" height="560" style="border:none; border-radius:8px;"></iframe>
*Superfície 3D da função de utilidade. Rotacione e aplique zoom com o mouse. Use o menu para trocar entre Cobb-Douglas, CES e quase-linear, e ajuste os parâmetros nos sliders.*

---

## 3.7 Transformações Monotônicas e Invariância Ordinal

!!! abstract "Proposição 3.3 — Invariância sob transformação monotônica"
    Se \(u(\mathbf{x})\) representa \(\succsim\) e \(f: \mathbb{R} \to \mathbb{R}\) é estritamente crescente, então \(\hat{u}(\mathbf{x}) = f(u(\mathbf{x}))\) também representa \(\succsim\).

A demonstração é direta: como \(f\) é estritamente crescente, \(u(\mathbf{x}) \geq u(\mathbf{y})\) se e somente se \(f(u(\mathbf{x})) \geq f(u(\mathbf{y}))\).

**Exemplos de transformações monotônicas úteis**:

- A Cobb-Douglas \(u = x_1^a x_2^b\) pode ser transformada em \(\hat{u} = a \ln x_1 + b \ln x_2\) via \(f(u) = \ln(u)\), o que simplifica cálculos.
- Qualquer função pode ser normalizada de modo que \(\hat{u} = \frac{a}{a+b} \ln x_1 + \frac{b}{a+b} \ln x_2\), com expoentes somando 1.

!!! tip "Implicações práticas da ordinalidade"
    A TMS é invariante sob transformações monotônicas. A utilidade marginal, porém, **não é invariante**: ela muda com a transformação. Por isso, a utilidade marginal não tem significado cardinal — apenas a razão entre utilidades marginais (a TMS) possui significado econômico bem definido.

---

## Box Brasil: Mudança de Preferências do Consumidor Brasileiro Pós-Estabilização

!!! example "Box Brasil — O Plano Real e a revolução no consumo"
    A hiperinflação brasileira que antecedeu o Plano Real (julho de 1994) distorcia profundamente as preferências reveladas dos consumidores. Com taxas de inflação que chegaram a superar 2.000% ao ano em 1993, o comportamento de compra era dominado pela **antecipação de consumo**: famílias corriam ao supermercado no dia do pagamento para converter salários em bens antes que os preços subissem.

    Dados da Pesquisa de Orçamentos Familiares (POF) do IBGE revelam mudanças marcantes nos padrões de consumo:

    - **Antes da estabilização (POF 1987-88)**: famílias de baixa renda concentravam até 53% dos gastos em alimentação, com forte preferência por produtos estocáveis e não perecíveis — um reflexo racional da tentativa de manter valor real da renda.
    - **Após a estabilização (POF 1995-96 e 2002-03)**: a participação da alimentação caiu para cerca de 33% nas famílias de menor renda, com diversificação para bens duráveis, serviços de lazer e educação.
    - **POF 2017-18**: a tendência de diversificação se manteve, com crescimento expressivo dos gastos com comunicação (telefonia móvel) e transporte.

    Do ponto de vista da teoria das preferências, a estabilização monetária não apenas alterou a **restrição orçamentária** (via ganho de renda real, sobretudo para os mais pobres), mas também as **preferências reveladas** — ou, mais precisamente, permitiu que as preferências subjacentes se manifestassem sem a distorção imposta pelo imposto inflacionário. O conceito de TMS decrescente ganha concretude: à medida que cestas de alimentação básica se tornaram acessíveis com menor fração da renda, os consumidores puderam mover-se ao longo de suas curvas de indiferença em direção a cestas mais diversificadas.

    Vasconcellos & Garcia (2014) contextualizam os ciclos econômicos brasileiros que moldaram essas transformações nas escolhas de consumo.

    **Fonte**: IBGE, Pesquisa de Orçamentos Familiares (várias edições); Barros, R. P. de; Foguel, M. N.; Ulyssea, G. (orgs.). *Desigualdade de renda no Brasil: uma análise da queda recente*. Brasília: IPEA, 2007.

---

## Exercícios

**Exercício 3.1.** Considere um consumidor com preferências sobre dois bens (\(x_1, x_2\)) representadas pela função de utilidade \(u(x_1, x_2) = x_1^{1/3} x_2^{2/3}\).

(a) Calcule a TMS\(_{12}\).

(b) Qual o valor da TMS no ponto \((x_1, x_2) = (4, 8)\)? Interprete economicamente.

(c) Mostre que a TMS é decrescente ao longo de uma curva de indiferença (ou seja, \(\partial \text{TMS}_{12} / \partial x_1 < 0\) ao longo de \(u = \bar{u}\)).

---

**Exercício 3.2.** Mostre que a função de utilidade \(u(x_1, x_2) = \ln x_1 + 2 \ln x_2\) representa as mesmas preferências que \(v(x_1, x_2) = x_1 \cdot x_2^2\). Verifique que ambas produzem a mesma TMS.

---

**Exercício 3.3.** Um consumidor tem preferências do tipo CES com \(\rho = -1\):

\[
u(x_1, x_2) = \left(x_1^{-1} + x_2^{-1}\right)^{-1}.
\]

(a) Calcule a elasticidade de substituição.

(b) Derive a TMS\(_{12}\).

(c) Esboce as curvas de indiferença. Elas estão mais próximas do caso Cobb-Douglas ou do caso de complementos perfeitos? Justifique.

---

**Exercício 3.4.** Considere preferências quase-lineares \(u(x_1, x_2) = \sqrt{x_1} + x_2\).

(a) Calcule a TMS\(_{12}\) e mostre que ela depende apenas de \(x_1\).

(b) Desenhe duas curvas de indiferença e mostre que elas são translações verticais uma da outra.

(c) Explique por que, nesse caso, a demanda pelo bem 1 é independente da renda (para soluções interiores).

---

**Exercício 3.5.** Um economista propõe representar as preferências de um consumidor pela função \(u(x_1, x_2) = x_1^2 + x_2^2\).

(a) As curvas de indiferença dessa função são convexas em relação à origem? Justifique.

(b) A TMS é decrescente ao longo de uma curva de indiferença?

(c) Essa função satisfaz o axioma de preferências estritamente convexas? Que problema isso gera para a existência de soluções interiores no problema de otimização do consumidor?

---

## Referências do Capítulo

- DEBREU, G. Representation of a preference ordering by a numerical function. In: THRALL, R. M.; COOMBS, C. H.; DAVIS, R. L. (eds.). *Decision Processes*. New York: Wiley, 1954. p. 159-165.
- MAS-COLELL, A.; WHINSTON, M. D.; GREEN, J. R. *Microeconomic Theory*. New York: Oxford University Press, 1995. Capítulo 3.
- NICHOLSON, W.; SNYDER, C. M. *Microeconomic Theory: Basic Principles and Extensions*. 12. ed. Boston: Cengage Learning, 2017. Capítulo 3.
- VARIAN, H. R. *Microeconomia: uma abordagem moderna*. 9. ed. Rio de Janeiro: Elsevier, 2015. Capítulos 3-5.
- IBGE. *Pesquisa de Orçamentos Familiares* (POF). Várias edições.
- BARROS, R. P. de; FOGUEL, M. N.; ULYSSEA, G. (orgs.). *Desigualdade de renda no Brasil: uma análise da queda recente*. Brasília: IPEA, 2007.
