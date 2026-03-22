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
