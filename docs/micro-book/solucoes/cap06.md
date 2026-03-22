---
title: "Soluções — Capítulo 6"
---

# Soluções dos Exercícios — Capítulo 6

[← Voltar ao Capítulo 6](../cap06/index.md)

---

## ✏️ Exercício 6.1 {#ex-6-1}

**Solução.**

**(a)** Com \(U = (x_1^\rho + x_2^\rho)^{1/\rho}\), a CPO gera:

\[
\frac{x_1^{\rho-1}}{x_2^{\rho-1}} = \frac{p_1}{p_2} \implies \frac{x_1}{x_2} = \left(\frac{p_1}{p_2}\right)^{1/(\rho-1)}
\]

Definindo \(\sigma = 1/(1-\rho)\) (elasticidade de substituição):

\[
x_1^* = \frac{p_1^{-\sigma} I}{p_1^{1-\sigma} + p_2^{1-\sigma}}, \qquad x_2^* = \frac{p_2^{-\sigma} I}{p_1^{1-\sigma} + p_2^{1-\sigma}}
\]

**(b)** Calculando \(\partial x_1/\partial p_2\):

\[
\frac{\partial x_1}{\partial p_2} = \frac{p_1^{-\sigma} I \cdot (1-\sigma) p_2^{-\sigma}}{(p_1^{1-\sigma} + p_2^{1-\sigma})^2}
\]

O sinal depende de \((1-\sigma)\):

- Se \(\sigma > 1\) (\(\rho > 0\)): \(1 - \sigma < 0\), logo \(\partial x_1/\partial p_2 < 0\) → **complementos brutos**.
- Se \(\sigma < 1\) (\(\rho < 0\)): \(1 - \sigma > 0\), logo \(\partial x_1/\partial p_2 > 0\) → **substitutos brutos**.
- Se \(\sigma = 1\) (\(\rho \to 0\), Cobb-Douglas): \(\partial x_1/\partial p_2 = 0\) → **independentes** (nem substitutos nem complementos brutos).

**(c)** O efeito substituição cruzado (via Slutsky):

\[
\frac{\partial h_1}{\partial p_2} = \frac{\partial x_1}{\partial p_2} + x_2 \frac{\partial x_1}{\partial I}
\]

Com dois bens, o efeito substituição cruzado é sempre **positivo** (os bens são sempre substitutos líquidos). Isso resulta da negatividade semidefinida da matriz de Slutsky: com apenas dois bens, o efeito substituição próprio negativo implica necessariamente efeito substituição cruzado positivo (os termos diagonais e fora da diagonal são de sinais opostos para a matriz \(2 \times 2\)).

**Interpretação econômica:** A distinção entre substitutos brutos e líquidos é fundamental. Dois bens podem ser complementos brutos (Marshallian) mas substitutos líquidos (Hicksian) — a diferença é o efeito-renda. A classificação hicksiana (líquida) é mais "pura" porque isola o efeito substituição da mudança no poder de compra.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-1)

---

## ✏️ Exercício 6.2 {#ex-6-2}

**Solução.**

**(a)** Se os preços das frutas variam na mesma proporção (\(\alpha\)), definimos o bem composto "frutas" (\(F\)) como:

\[
F = \bar{p}_b \cdot b + \bar{p}_m \cdot m + \bar{p}_l \cdot l
\]

onde \(\bar{p}_b, \bar{p}_m, \bar{p}_l\) são os preços-base. O preço do bem composto é \(P_F = \alpha\). A restrição orçamentária fica:

\[
\alpha F + y = I
\]

Pelo Teorema do Bem Composto (Hicks), podemos tratar "frutas" como um único bem com preço \(\alpha\).

**(b)** Um aumento de 15% em \(\alpha\) (todos os preços de frutas sobem 15%) equivale a um aumento de 15% no preço do bem composto \(F\). No modelo de dois bens (\(F, y\)), podemos usar as ferramentas padrão: efeito substituição (consumidor troca frutas por outros bens) e efeito-renda (poder de compra cai). O efeito líquido sobre "todos os outros" (\(y\)) depende de o consumo de frutas ser normal ou inferior.

**(c)** A hipótese de proporcionalidade falharia quando os preços relativos entre as frutas mudam — por exemplo: (i) uma geada em Santa Catarina encarece a maçã mas não a banana; (ii) safra recorde de laranja reduz seu preço enquanto o da banana sobe por custos de transporte; (iii) políticas de subsídio diferenciadas (como isenção de ICMS para frutas regionais). No Brasil, a sazonalidade e os choques climáticos regionais tornam a proporcionalidade improvável para janelas temporais curtas.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-2)

---

## ✏️ Exercício 6.3 {#ex-6-3}

**Solução.**

**(a)** As demandas são Cobb-Douglas (\(\alpha = 1/3\)): \(x_1 = I/(3p_1)\), \(x_2 = 2I/(3p_2)\).

\[
\frac{\partial x_1}{\partial p_2} = 0
\]

Os bens são **independentes** (nem substitutos nem complementos brutos). Com Cobb-Douglas, a demanda de cada bem depende apenas do próprio preço e da renda.

**(b)** Utilidade indireta: \(V = (I/(3p_1))^{1/3} (2I/(3p_2))^{2/3} = \frac{2^{2/3}}{3} \cdot I \cdot p_1^{-1/3} p_2^{-2/3}\).

Invertendo \(V = \bar{u}\): \(E = \frac{3}{2^{2/3}} \bar{u} p_1^{1/3} p_2^{2/3}\).

**(c)** Pelo Lema de Shephard:

\[
h_1 = \frac{\partial E}{\partial p_1} = \frac{3}{2^{2/3}} \bar{u} \cdot \frac{1}{3} p_1^{-2/3} p_2^{2/3} = \frac{\bar{u}}{2^{2/3}} p_1^{-2/3} p_2^{2/3}
\]

\[
\frac{\partial h_1}{\partial p_2} = \frac{\bar{u}}{2^{2/3}} p_1^{-2/3} \cdot \frac{2}{3} p_2^{-1/3} = \frac{2\bar{u}}{3 \cdot 2^{2/3}} p_1^{-2/3} p_2^{-1/3} > 0
\]

Os bens são **substitutos líquidos** (como deve ser com dois bens).

**(d)** Verificação de Slutsky:

\[
\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}
\]

Lado esquerdo: 0 (calculado em (a)).

Lado direito: \(\frac{\partial h_1}{\partial p_2} - \frac{2I}{3p_2} \cdot \frac{1}{3p_1}\). Substituindo \(\bar{u} = V\) e simplificando, os termos se cancelam e o resultado é 0. ✓

**Interpretação econômica:** Os bens são independentes na classificação marshalliana (bruta) mas substitutos na hicksiana (líquida). Isso ocorre porque, com Cobb-Douglas, o efeito-renda cruzado exatamente compensa o efeito substituição cruzado. A parcela de renda gasta em cada bem é fixa, logo uma mudança em \(p_2\) não libera nem absorve gasto do bem 1.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-3)

---

## ✏️ Exercício 6.4 {#ex-6-4}

**Solução.**

**(a)** Atributos por unidade de gasto:

| Bem | Calorias/R\$ | Proteínas/R\$ |
|:----|:-:|:-:|
| Arroz | 130/5 = 26 | 2,5/5 = 0,5 |
| Frango | 165/18 = 9,17 | 31/18 = 1,72 |

Sejam \(a\) = unidades de arroz e \(f\) = unidades de frango. Os atributos são:

\[
z_1 = 130a + 165f, \qquad z_2 = 2{,}5a + 31f
\]

A restrição orçamentária: \(5a + 18f = 200\).

A utilidade é \(U = z_1^{0,4} z_2^{0,6}\). Substituindo \(a = (200 - 18f)/5 = 40 - 3{,}6f\):

\[
z_1 = 130(40 - 3{,}6f) + 165f = 5200 - 468f + 165f = 5200 - 303f
\]

\[
z_2 = 2{,}5(40 - 3{,}6f) + 31f = 100 - 9f + 31f = 100 + 22f
\]

Maximizando \(z_1^{0,4} z_2^{0,6}\) em relação a \(f\):

CPO: \(\frac{0{,}4}{z_1}(-303) + \frac{0{,}6}{z_2}(22) = 0\)

\[
\frac{0{,}6 \times 22}{z_2} = \frac{0{,}4 \times 303}{z_1} \implies \frac{13{,}2}{z_2} = \frac{121{,}2}{z_1} \implies z_1 = 9{,}182 z_2
\]

Substituindo: \(5200 - 303f = 9{,}182(100 + 22f)\)

\[
5200 - 303f = 918{,}2 + 202f \implies 4281{,}8 = 505f \implies f \approx 8{,}48
\]

\[
a = 40 - 3{,}6 \times 8{,}48 \approx 9{,}47
\]

**(b)** Com o ovo (155 cal, 13 prot, R\$ 8), o problema passa a ter 3 bens e 2 atributos. A eficiência do ovo: 19,4 cal/R\$ e 1,63 prot/R\$. O ovo é dominado pelo frango em proteínas/R\$ (1,63 < 1,72) e pelo arroz em calorias/R\$ (19,4 < 26). No entanto, oferece uma combinação intermediária que pode ser ótima dependendo dos pesos.

Resolvendo o sistema expandido (omitindo álgebra extensa), o ovo tenderia a substituir parcialmente ambos os bens existentes se oferecer uma combinação de atributos mais próxima da razão ótima \(z_1/z_2\) que a dos bens originais. Na prática, o ovo entraria na cesta como uma fonte intermediária custo-efetiva.

**Interpretação econômica:** O modelo de Lancaster permite analisar a entrada de novos produtos não por seus preços diretos, mas por seus "preços de atributos". No Brasil, a diversidade de fontes proteicas (frango, ovo, feijão) com diferentes perfis de atributos e preços explica a heterogeneidade dos padrões alimentares entre regiões e classes de renda.


↩ [Voltar ao enunciado](../cap06/index.md#ex-6-4)

---

## ✏️ Exercício 6.5 {#ex-6-5}

**Solução.**

**(a)** A condição de Gorman exige que as curvas de Engel individuais sejam lineares e paralelas: \(x_i = a_i(p) + b(p) \cdot I_i\), onde \(b(p)\) é comum a todos os consumidores.

- Consumidor A: \(x_1^A = I^A/(2p_1)\) → linear em \(I^A\), com \(b^A = 1/(2p_1)\).
- Consumidor B: \(x_1^B = (I^B)^2/(100 p_1)\) → **não linear** em \(I^B\).

A curva de Engel de B é quadrática. A condição de Gorman **não** é satisfeita. Logo, a demanda de mercado **não** pode ser escrita como função da renda agregada.

**(b)** Com \(I^A = I^B = 100\), \(p_1 = 10\):

\[
X_1 = \frac{100}{20} + \frac{10000}{1000} = 5 + 10 = 15
\]

Redistribuição (\(I^A = 50\), \(I^B = 150\)):

\[
X_1 = \frac{50}{20} + \frac{22500}{1000} = 2{,}5 + 22{,}5 = 25
\]

A demanda **aumentou** de 15 para 25, apesar da renda total permanecer em 200.

**(c)** Quando a condição de Gorman falha, a distribuição de renda afeta a demanda agregada. Políticas de redistribuição como o Bolsa Família alteram a demanda de mercado não apenas pelo efeito mecânico sobre a renda total (que não muda em transferências puras), mas pela diferença nas propensões marginais a consumir entre os beneficiários e os contribuintes. No exemplo, transferir renda para o consumidor B (com demanda convexa na renda) eleva a demanda agregada. Empiricamente, famílias de baixa renda tendem a ter maior propensão marginal a consumir bens básicos — uma violação da condição de Gorman que é relevante para avaliar os efeitos macroeconômicos de programas de transferência.

↩ [Voltar ao enunciado](../cap06/index.md#ex-6-5)
