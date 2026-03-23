---
title: "Soluções — Capítulo 3"
---

# Soluções dos Exercícios — Capítulo 3

[← Voltar ao Capítulo 3](../cap03/index.md)

---

## ✏️ Exercício 3.1 {#ex-3-1}

**Solução.**

**(a)** A TMS é a razão das utilidades marginais:

\[
\text{TMS}_{12} = \frac{\partial u/\partial x_1}{\partial u/\partial x_2} = \frac{\frac{1}{3}x_1^{-2/3}x_2^{2/3}}{\frac{2}{3}x_1^{1/3}x_2^{-1/3}} = \frac{1}{2}\cdot\frac{x_2}{x_1}
\]

\[
\boxed{\text{TMS}_{12} = \frac{x_2}{2x_1}}
\]

**(b)** No ponto \((4, 8)\):

\[
\text{TMS}_{12} = \frac{8}{2 \times 4} = 1
\]

O consumidor está disposto a trocar exatamente 1 unidade de \(x_2\) por 1 unidade adicional de \(x_1\), mantendo-se na mesma curva de indiferença. Se \(p_1/p_2 = 1\) no mercado, esse ponto seria ótimo; se \(p_1/p_2 < 1\), o bem 1 está "barato" relativamente à sua valoração subjetiva, e o consumidor deveria consumir mais de \(x_1\).

**(c)** Ao longo de uma curva de indiferença \(u = \bar{u}\), temos \(x_2 = \bar{u}^{3/2} x_1^{-1/2}\) (isolando \(x_2\) de \(x_1^{1/3}x_2^{2/3} = \bar{u}\)). Substituindo na TMS:

\[
\text{TMS}_{12} = \frac{\bar{u}^{3/2} x_1^{-1/2}}{2x_1} = \frac{\bar{u}^{3/2}}{2} x_1^{-3/2}
\]

Derivando em relação a \(x_1\):

\[
\frac{\partial \text{TMS}_{12}}{\partial x_1} = \frac{\bar{u}^{3/2}}{2} \cdot \left(-\frac{3}{2}\right) x_1^{-5/2} < 0 \quad \checkmark
\]

**Interpretação econômica:** A TMS decrescente reflete a convexidade das preferências: à medida que o consumidor acumula mais de \(x_1\) (e menos de \(x_2\)), cada unidade adicional de \(x_1\) vale menos em termos de \(x_2\). Isso gera curvas de indiferença convexas e fundamenta a existência de soluções interiores no problema do consumidor.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-1)

---

## ✏️ Exercício 3.2 {#ex-3-2}

**Solução.**

A função \(v(x_1, x_2) = x_1 \cdot x_2^2\) é uma transformação monotônica de \(u(x_1, x_2) = \ln x_1 + 2\ln x_2\). De fato:

\[
u = \ln x_1 + 2\ln x_2 = \ln(x_1 \cdot x_2^2) \implies v = e^u
\]

Como \(g(u) = e^u\) é estritamente crescente, \(v\) é uma transformação monotônica positiva de \(u\), logo ambas representam as mesmas preferências.

**Verificação pela TMS:**

\[
\text{TMS}_{12}^{(u)} = \frac{1/x_1}{2/x_2} = \frac{x_2}{2x_1}
\]

\[
\text{TMS}_{12}^{(v)} = \frac{x_2^2}{2x_1 x_2} = \frac{x_2}{2x_1}
\]

As TMS são idênticas. \(\blacksquare\)

**Interpretação econômica:** A utilidade ordinal implica que apenas a ordenação das cestas importa, não os valores numéricos. Transformações monotônicas preservam a ordenação e, portanto, a TMS — que é a grandeza observável (via escolhas) e economicamente relevante.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-2)

---

## ✏️ Exercício 3.3 {#ex-3-3}

**Solução.**

**(a)** Para a função CES \(u = \left(x_1^\rho + x_2^\rho\right)^{1/\rho}\), a elasticidade de substituição é:

\[
\sigma = \frac{1}{1 - \rho}
\]

Com \(\rho = -1\):

\[
\boxed{\sigma = \frac{1}{1-(-1)} = \frac{1}{2}}
\]

**(b)** Com \(\rho = -1\), \(u = (x_1^{-1} + x_2^{-1})^{-1} = \frac{x_1 x_2}{x_1 + x_2}\).

\[
\frac{\partial u}{\partial x_1} = \frac{x_2(x_1+x_2) - x_1 x_2}{(x_1+x_2)^2} = \frac{x_2^2}{(x_1+x_2)^2}
\]

\[
\frac{\partial u}{\partial x_2} = \frac{x_1^2}{(x_1+x_2)^2}
\]

\[
\boxed{\text{TMS}_{12} = \frac{x_2^2}{x_1^2} = \left(\frac{x_2}{x_1}\right)^2}
\]

**(c)** As curvas de indiferença estão **mais próximas do caso de complementos perfeitos** (Leontief). Com \(\sigma = 1/2 < 1\), a substituibilidade entre os bens é baixa — menor que no caso Cobb-Douglas (\(\sigma = 1\)). As curvas de indiferença são convexas, mas com curvatura mais acentuada que as Cobb-Douglas, aproximando-se da forma em "L" dos complementos perfeitos (\(\sigma \to 0\)). Intuitivamente, com \(\sigma = 1/2\), uma mudança de 1% nos preços relativos induz uma mudança de apenas 0,5% na razão \(x_1/x_2\).


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-3)

---

## ✏️ Exercício 3.4 {#ex-3-4}

**Solução.**

**(a)**

\[
\text{TMS}_{12} = \frac{\partial u/\partial x_1}{\partial u/\partial x_2} = \frac{\frac{1}{2\sqrt{x_1}}}{1} = \frac{1}{2\sqrt{x_1}}
\]

A TMS depende apenas de \(x_1\), não de \(x_2\). \(\blacksquare\)

**(b)** Para um nível de utilidade \(\bar{u}\): \(\sqrt{x_1} + x_2 = \bar{u}\), logo \(x_2 = \bar{u} - \sqrt{x_1}\). Se o nível de utilidade for \(\bar{u}' = \bar{u} + \Delta\), então \(x_2' = \bar{u} + \Delta - \sqrt{x_1}\). A segunda curva é uma translação vertical da primeira, deslocada por \(\Delta\) unidades na direção de \(x_2\). Isso ocorre porque \(x_2\) aparece linearmente na função de utilidade.

**(c)** A condição de ótimo interior é \(\text{TMS}_{12} = p_1/p_2\):

\[
\frac{1}{2\sqrt{x_1}} = \frac{p_1}{p_2} \implies x_1^* = \frac{p_2^2}{4p_1^2}
\]

A demanda por \(x_1\) depende apenas da razão de preços, não da renda \(m\). Isso ocorre porque a TMS não depende de \(x_2\), logo a condição de tangência fixa \(x_1\) independentemente de quão larga é a restrição orçamentária. Todo o aumento de renda é absorvido por \(x_2\) (efeito-renda zero sobre \(x_1\)).

**Interpretação econômica:** Preferências quase-lineares eliminam o efeito-renda sobre o bem não linear (\(x_1\)). Isso faz com que o excedente do consumidor marshalliano seja uma medida exata de variação de bem-estar, sem a ambiguidade que surge em preferências gerais (onde EC, VC e variação compensadora diferem).


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-4)

---

## ✏️ Exercício 3.5 {#ex-3-5}

**Solução.**

**(a)** Não. A curva de indiferença \(x_1^2 + x_2^2 = \bar{u}\) é um arco de circunferência de raio \(\sqrt{\bar{u}}\), que é **côncava** em relação à origem (convexa "para fora"). Conjuntos superiores \(\{(x_1,x_2) : x_1^2 + x_2^2 \geq \bar{u}\}\) não são convexos — o exterior de um círculo não é um conjunto convexo.

**(b)** Não. A TMS é:

\[
\text{TMS}_{12} = \frac{2x_1}{2x_2} = \frac{x_1}{x_2}
\]

Ao longo da curva de indiferença, quando \(x_1\) aumenta, \(x_2\) diminui (para manter \(x_1^2 + x_2^2\) constante), então \(x_1/x_2\) aumenta. A TMS é **crescente**, não decrescente.

**(c)** Essa função **não** satisfaz preferências estritamente convexas. A consequência é que o consumidor nunca escolhe uma cesta interior: a solução do problema de maximização é sempre uma **solução de canto**. O consumidor gasta toda a renda em apenas um dos bens — aquele que oferece maior utilidade marginal por unidade monetária. Geometricamente, como as curvas de indiferença são côncavas, a reta orçamentária tangencia a curva de indiferença nos extremos (eixos), não no interior.

**Interpretação econômica:** Preferências convexas refletem o "gosto pela diversificação" — médias são preferidas a extremos. A função \(u = x_1^2 + x_2^2\) viola essa propriedade: o consumidor prefere extremos a médias (especialização total). Isso pode modelar situações em que há rendimentos crescentes no consumo — por exemplo, um colecionador que prefere 10 selos raros de um tipo a 5 de cada tipo.

↩ [Voltar ao enunciado](../cap03/index.md#ex-3-5)

---

## ✏️ Exercício 3.6 {#ex-3-6}

**Solução.**

**(a)** Seja \(S = \alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\), de modo que \(u = S^{1/\rho}\). As derivadas parciais são:

\[
\frac{\partial u}{\partial x_1} = \frac{1}{\rho} S^{1/\rho - 1} \cdot \alpha \rho \, x_1^{\rho-1} = \alpha \, x_1^{\rho-1} \, S^{1/\rho - 1}
\]

\[
\frac{\partial u}{\partial x_2} = (1-\alpha) \, x_2^{\rho-1} \, S^{1/\rho - 1}
\]

O fator \(S^{1/\rho-1}\) cancela na razão:

\[
\boxed{\text{TMS}_{12} = \frac{\alpha}{1-\alpha} \left(\frac{x_1}{x_2}\right)^{\rho-1}}
\]

A TMS depende de \(\alpha\) (peso relativo dos bens), \(\rho\) (parâmetro de substituição, via expoente \(\rho - 1\)) e da razão \(x_1/x_2\). \(\blacksquare\)

**(b)** Com \(\alpha = 1/2\):

\[
\text{TMS}_{12} = \frac{1/2}{1/2} \left(\frac{x_1}{x_2}\right)^{\rho-1} = \left(\frac{x_1}{x_2}\right)^{\rho-1}
\]

No ponto \(x_1 = x_2\):

\[
\text{TMS}_{12} = 1^{\rho-1} = 1
\]

independentemente do valor de \(\rho\). \(\blacksquare\)

**Interpretação:** Quando os bens têm peso igual na função CES e o consumidor os possui em quantidades iguais, sua taxa de troca subjetiva é 1:1, qualquer que seja a elasticidade de substituição. A curvatura das curvas de indiferença (governada por \(\rho\)) determina quão *rapidamente* a TMS se afasta de 1 quando a composição da cesta se desequilibra, mas no ponto simétrico todas as CES com \(\alpha = 1/2\) concordam.

**(c)** Quando \(\alpha\) aumenta, o fator \(\frac{\alpha}{1-\alpha}\) cresce, elevando a TMS para qualquer razão \(x_1/x_2\) dada. Isso significa que o consumidor atribui maior valor relativo ao bem 1: ele exige *mais* unidades do bem 2 para compensar a perda de uma unidade de \(x_1\). Geometricamente, as curvas de indiferença se "inclinam" em direção ao eixo \(x_2\) — refletindo a preferência mais forte por \(x_1\). No limite, \(\alpha \to 1\) implica que o consumidor se importa quase exclusivamente com \(x_1\).


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-6)

---

## ✏️ Exercício 3.7 {#ex-3-7}

**Solução.**

**(a)** Observe que \(u = x_1^{1/2} x_2^{1/2} = (x_1 x_2)^{1/2}\), logo \(u^2 = x_1 x_2\). Portanto:

\[
v = -\frac{1}{x_1 x_2} = -\frac{1}{u^2} = -u^{-2}
\]

A transformação é \(f(t) = -t^{-2}\). Para verificar que \(f\) é estritamente crescente no domínio relevante (\(t > 0\)):

\[
f'(t) = 2t^{-3} = \frac{2}{t^3} > 0 \quad \text{para } t > 0.
\]

Logo \(v = f(u)\) é uma transformação monotônica crescente, e \(v\) representa as mesmas preferências que \(u\). \(\blacksquare\)

**(b)** TMS pela função \(u\):

\[
\text{TMS}_{12}^{(u)} = \frac{\frac{1}{2}x_1^{-1/2}x_2^{1/2}}{\frac{1}{2}x_1^{1/2}x_2^{-1/2}} = \frac{x_2}{x_1}
\]

TMS pela função \(v = -x_1^{-1}x_2^{-1}\):

\[
\frac{\partial v}{\partial x_1} = x_1^{-2}x_2^{-1} = \frac{1}{x_1^2 x_2}, \qquad \frac{\partial v}{\partial x_2} = x_1^{-1}x_2^{-2} = \frac{1}{x_1 x_2^2}
\]

\[
\text{TMS}_{12}^{(v)} = \frac{1/(x_1^2 x_2)}{1/(x_1 x_2^2)} = \frac{x_2}{x_1}
\]

\[
\boxed{\text{TMS}_{12}^{(u)} = \text{TMS}_{12}^{(v)} = \frac{x_2}{x_1}} \quad \checkmark
\]

**(c)** As utilidades marginais são:

| | \(\text{UMg}_1\) | \(\text{UMg}_2\) |
|---|---|---|
| \(u\) | \(\frac{1}{2}x_1^{-1/2}x_2^{1/2}\) | \(\frac{1}{2}x_1^{1/2}x_2^{-1/2}\) |
| \(v\) | \(\frac{1}{x_1^2 x_2}\) | \(\frac{1}{x_1 x_2^2}\) |

Ambas são positivas (como deve ser, pois \(f'(u) > 0\) preserva o sinal). Contudo, os *valores* diferem substancialmente. Por exemplo, no ponto \((4, 4)\):

- \(\text{UMg}_1^{(u)} = \frac{1}{2} \cdot 4^{-1/2} \cdot 4^{1/2} = 0{,}5\)
- \(\text{UMg}_1^{(v)} = \frac{1}{16 \cdot 4} = 0{,}015625\)

Os valores absolutos das utilidades marginais não possuem significado econômico, pois dependem da escala arbitrária escolhida para representar as preferências. A grandeza economicamente relevante é a *razão* entre utilidades marginais — a TMS —, que é invariante sob transformações monotônicas (Proposição 3.3). Por isso, afirmações como "a utilidade marginal do bem 1 é 0,5" não possuem conteúdo econômico: mudar a representação de \(u\) para \(v\) altera esse número sem alterar nenhuma previsão sobre o comportamento do consumidor.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-7)

---

## ✏️ Exercício 3.8 {#ex-3-8}

**Solução.**

**(a)** A função \(u = \min\{2x_1, x_2\}\) atinge utilidade máxima quando os dois argumentos são iguais: \(2x_1 = x_2\). Qualquer desvio dessa proporção desperdiça recursos — se \(2x_1 > x_2\), o consumidor tem excesso de \(x_1\) que não contribui para a utilidade; se \(2x_1 < x_2\), o excesso é de \(x_2\).

Portanto, a proporção ótima é:

\[
\boxed{\frac{x_2}{x_1} = 2} \quad \text{(2 unidades de } x_2 \text{ para cada unidade de } x_1\text{)}
\]

**(b)** No ótimo, \(x_2 = 2x_1\). Substituindo na restrição orçamentária:

\[
p_1 x_1 + p_2 x_2 = m \implies 10 x_1 + 5 \cdot 2x_1 = 120 \implies 20 x_1 = 120
\]

\[
\boxed{x_1^* = 6, \quad x_2^* = 12}
\]

Verificação: \(u = \min\{2 \times 6, 12\} = \min\{12, 12\} = 12\). Gasto total: \(10 \times 6 + 5 \times 12 = 60 + 60 = 120 = m\). \(\checkmark\)

**(c)** Com \(p_1 = 20\), mantendo \(x_2 = 2x_1\):

\[
20 x_1 + 5 \cdot 2x_1 = 120 \implies 30 x_1 = 120
\]

\[
\boxed{x_1^* = 4, \quad x_2^* = 8}
\]

Verificação: \(u = \min\{8, 8\} = 8\). Gasto: \(20 \times 4 + 5 \times 8 = 80 + 40 = 120\). \(\checkmark\)

Variações percentuais:

\[
\Delta x_1 \% = \frac{4 - 6}{6} = -33{,}3\%, \qquad \Delta x_2 \% = \frac{8 - 12}{12} = -33{,}3\%
\]

**Interpretação:** Ambos os bens diminuem na mesma proporção (-33,3%), preservando a razão \(x_2/x_1 = 2\). Este é um resultado característico dos complementos perfeitos: como os bens são consumidos em proporções fixas, qualquer mudança de preço funciona como uma redução (ou aumento) do poder de compra do "pacote composto" — e não há possibilidade de substituição entre os bens. A elasticidade de substituição \(\sigma = 0\) implica que a proporção \(x_2/x_1\) permanece inalterada independentemente dos preços relativos.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-8)

---

## ✏️ Exercício 3.9 {#ex-3-9}

**Solução.**

Seja \(u(x_1, x_2) = g(h(x_1, x_2))\), onde \(g' > 0\) e \(h\) é homogênea de grau 1.

**Passo 1 — Simplificar a TMS.** Pela regra da cadeia:

\[
\frac{\partial u}{\partial x_i} = g'(h) \cdot h_i(x_1, x_2), \quad i = 1, 2
\]

Logo:

\[
\text{TMS}_{12} = \frac{g'(h) \cdot h_1}{g'(h) \cdot h_2} = \frac{h_1(x_1, x_2)}{h_2(x_1, x_2)}
\]

O fator \(g'(h)\) cancela. A TMS de \(u\) é idêntica à TMS de \(h\) — a transformação monotônica \(g\) é irrelevante. \(\blacksquare\)

**Passo 2 — Mostrar que \(h_1\) e \(h_2\) são homogêneas de grau 0.** Como \(h\) é homogênea de grau 1:

\[
h(\lambda x_1, \lambda x_2) = \lambda \, h(x_1, x_2) \quad \forall \lambda > 0
\]

Diferenciando ambos os lados em relação a \(x_1\):

\[
\lambda \, h_1(\lambda x_1, \lambda x_2) = \lambda \, h_1(x_1, x_2)
\]

Dividindo por \(\lambda\):

\[
h_1(\lambda x_1, \lambda x_2) = h_1(x_1, x_2) \quad \forall \lambda > 0
\]

Logo \(h_1\) é homogênea de grau 0. Analogamente, \(h_2\) é homogênea de grau 0. \(\blacksquare\)

**Passo 3 — Concluir que a TMS depende apenas de \(x_1/x_2\).** Como \(h_1\) é homogênea de grau 0, podemos tomar \(\lambda = 1/x_2\) (para \(x_2 > 0\)):

\[
h_1(x_1, x_2) = h_1\!\left(\frac{x_1}{x_2}, 1\right)
\]

Analogamente:

\[
h_2(x_1, x_2) = h_2\!\left(\frac{x_1}{x_2}, 1\right)
\]

Portanto:

\[
\boxed{\text{TMS}_{12} = \frac{h_1(x_1/x_2, \, 1)}{h_2(x_1/x_2, \, 1)} \equiv \phi\!\left(\frac{x_1}{x_2}\right)}
\]

A TMS depende apenas da razão \(x_1/x_2\), como queríamos demonstrar. \(\blacksquare\)

**Interpretação:** A demonstração revela *por que* preferências homotéticas geram caminhos de expansão da renda lineares. Se a TMS depende apenas de \(x_1/x_2\), então ao longo de qualquer raio \(x_2 = kx_1\) a TMS é constante. Como a condição de ótimo é \(\text{TMS} = p_1/p_2\), a cesta ótima mantém a mesma razão \(x_1/x_2\) para qualquer nível de renda — toda variação de renda se traduz em escalar proporcionalmente a cesta.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-9)

---

## ✏️ Exercício 3.10 {#ex-3-10}

**Solução.**

**(a)** Primeiro, calculamos o gasto absoluto com alimentação em cada faixa de renda:

\[
Q_1 = s_1 \cdot I_1 = 0{,}22 \times 1.908 = 419{,}76
\]

\[
Q_2 = s_2 \cdot I_2 = 0{,}076 \times 23.850 = 1.812{,}60
\]

Agora calculamos as variações e médias:

\[
\Delta Q = 1.812{,}60 - 419{,}76 = 1.392{,}84, \qquad \bar{Q} = \frac{419{,}76 + 1.812{,}60}{2} = 1.116{,}18
\]

\[
\Delta I = 23.850 - 1.908 = 21.942, \qquad \bar{I} = \frac{1.908 + 23.850}{2} = 12.879
\]

Aplicando a fórmula de arco-elasticidade:

\[
\varepsilon \approx \frac{\Delta Q / \bar{Q}}{\Delta I / \bar{I}} = \frac{1.392{,}84 / 1.116{,}18}{21.942 / 12.879} = \frac{1{,}248}{1{,}704}
\]

\[
\boxed{\varepsilon \approx 0{,}73}
\]

**(b)** Como \(\varepsilon > 0\), a alimentação é um **bem normal**: o gasto absoluto com alimentação *aumenta* com a renda (de R\$ 420 para R\$ 1.813). Porém, como \(\varepsilon < 1\), a alimentação é um **bem de necessidade** (não de luxo): o gasto cresce menos que proporcionalmente à renda, de modo que a *participação* da alimentação no orçamento *cai* — de 22% para 7,6%. Esse padrão é a manifestação clássica da **Lei de Engel**.

**(c)** Esse padrão **não é compatível** com preferências homotéticas. Pelas propriedades da Seção 3.6.6, preferências homotéticas geram elasticidade-renda unitária (\(\varepsilon = 1\)) para *todos* os bens e participação constante na despesa. Como a participação da alimentação varia substancialmente com a renda (de 22% para 7,6%), a condição de homoteticidade é violada.

Tampouco é compatível com preferências **Cobb-Douglas**, que são um caso particular de preferências homotéticas. Na Cobb-Douglas \(u = x_1^a x_2^b\), a participação do bem 1 na despesa é sempre \(\frac{a}{a+b}\), constante para qualquer nível de renda. Os dados da POF mostram que essa constância não se verifica para a alimentação no Brasil.

**Implicação para a modelagem:** Modelos que desejam capturar o comportamento de consumo entre diferentes faixas de renda no Brasil devem utilizar especificações não homotéticas — como o AIDS (*Almost Ideal Demand System*) de Deaton e Muellbauer, que permite elasticidades-renda diferentes de 1 e participações variáveis na despesa.


↩ [Voltar ao enunciado](../cap03/index.md#ex-3-10)
