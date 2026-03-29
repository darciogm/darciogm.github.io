# 4.10–4.11 Catálogo de Soluções e Quadro Resumo

## 4.10 Cada Preferência, uma Demanda: O Catálogo Completo

*And now for something completely different* — ou melhor, *completely concrete*. Teoria bonita, mas funciona na prática? Hora de sujar as mãos. Vamos pegar cada "personagem" do Capítulo 3 — Cobb-Douglas, substitutos perfeitos, complementos perfeitos, CES, quase-linear — e resolver o problema do consumidor do começo ao fim: Lagrangeano, CPO, demanda marshalliana, demanda hicksiana, utilidade indireta, função dispêndio. É trabalhoso, mas o payoff é enorme: ao final desta seção, você terá um catálogo de soluções prontas que reaparecerão em *todos* os exercícios e provas deste livro.

### 4.10.1 Cobb-Douglas: U(x₁, x₂) = x₁ᵃ x₂ᵇ

A função Cobb-Douglas — proposta por Charles Cobb e Paul Douglas (1928) e já estudada em detalhe no Capítulo 3 — é o caso mais tratável e serve de *benchmark* para as demais. Sua popularidade na teoria do consumidor e na estimação empírica decorre de uma combinação rara: gera soluções em forma fechada, satisfaz automaticamente as condições de segunda ordem e produz parcelas de gasto constantes — uma regularidade aproximadamente consistente com dados da POF para categorias amplas de consumo.

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; x_1^a x_2^b \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

O Lagrangeano é:

\[
\mathcal{L} = x_1^a x_2^b + \lambda(I - p_1 x_1 - p_2 x_2)
\]

Condições de primeira ordem (CPOs):

\[
\frac{\partial \mathcal{L}}{\partial x_1} = a x_1^{a-1} x_2^b - \lambda p_1 = 0
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = b x_1^a x_2^{b-1} - \lambda p_2 = 0
\]

Dividindo a primeira CPO pela segunda, eliminamos \(\lambda\):

\[
\frac{a x_2}{b x_1} = \frac{p_1}{p_2} \quad \Longrightarrow \quad x_2 = \frac{b\, p_1}{a\, p_2}\, x_1
\]

Substituindo na restrição orçamentária:

\[
p_1 x_1 + p_2 \cdot \frac{b\, p_1}{a\, p_2}\, x_1 = I \quad \Longrightarrow \quad p_1 x_1 \left(1 + \frac{b}{a}\right) = I \quad \Longrightarrow \quad p_1 x_1 \cdot \frac{a+b}{a} = I
\]

Portanto, as **demandas marshallianas** são:

\[
\boxed{x_1^* = \frac{a}{a+b}\,\frac{I}{p_1}, \qquad x_2^* = \frac{b}{a+b}\,\frac{I}{p_2}} \label{eq:4.10.20} \tag{4.10.20}
\]

O consumidor gasta a fração \(a/(a+b)\) da renda no bem 1 e \(b/(a+b)\) no bem 2. Quando \(a+b=1\), as frações coincidem com os expoentes. Essa propriedade — participações fixas de gasto independentes dos preços — é uma das razões pela qual a Cobb-Douglas é tão amplamente usada em modelos empíricos: ela é consistente com a observação de que, em longos períodos, as participações de grandes categorias de consumo (alimentos, habitação, transporte) na renda total mostram estabilidade razoável.

**Utilidade indireta.** Substituindo as demandas na função utilidade:

\[
V(p_1,p_2,I) = \left(\frac{a}{a+b}\right)^a \left(\frac{b}{a+b}\right)^b \frac{I^{a+b}}{p_1^a\, p_2^b} \label{eq:4.10.21} \tag{4.10.21}
\]

**Demanda Hicksiana.** O consumidor resolve o dual:

\[
\min_{x_1,x_2} \; p_1 x_1 + p_2 x_2 \quad \text{s.a.} \quad x_1^a x_2^b = \bar{u}
\]

O Lagrangeano é \(\mathcal{L} = p_1 x_1 + p_2 x_2 + \lambda(\bar{u} - x_1^a x_2^b)\). As CPOs fornecem a mesma condição de tangência \(a x_2/(b x_1) = p_1/p_2\). Substituindo na restrição de utilidade:

\[
x_1^a \left(\frac{b\, p_1}{a\, p_2}\, x_1\right)^b = \bar{u} \quad \Longrightarrow \quad x_1^{a+b} \left(\frac{b\, p_1}{a\, p_2}\right)^b = \bar{u}
\]

Resolvendo para \(x_1\):

\[
\boxed{h_1 = \bar{u}^{\,1/(a+b)} \left(\frac{a\, p_2}{b\, p_1}\right)^{b/(a+b)}, \qquad h_2 = \bar{u}^{\,1/(a+b)} \left(\frac{b\, p_1}{a\, p_2}\right)^{a/(a+b)}} \label{eq:4.10.22} \tag{4.10.22}
\]

**Função dispêndio.** Avaliando o gasto mínimo:

\[
E(\mathbf{p}, \bar{u}) = p_1 h_1 + p_2 h_2 = \bar{u}^{\,1/(a+b)} \left(\frac{a+b}{a^a b^b}\right)^{1/(a+b)} p_1^{a/(a+b)}\, p_2^{b/(a+b)}
\]

*Verificação pelo Lema de Shephard*: \(\partial E/\partial p_1 = h_1\) ✓

### 4.10.2 Preferências Lineares (Substitutos Perfeitos): U = ax₁ + bx₂

Passemos agora ao caso diametralmente oposto ao da Cobb-Douglas em termos de substituibilidade. Se a Cobb-Douglas representa o meio do espectro (com elasticidade de substituição \(\sigma = 1\)), os substitutos perfeitos representam o extremo da substituibilidade infinita (\(\sigma \to \infty\)). Com preferências lineares, as curvas de indiferença são retas com inclinação \(-a/b\), e a TMS é constante. A elasticidade de substituição é \(\sigma \to \infty\). Esse caso ilustra por que nem sempre o método de Lagrange fornece soluções interiores — e por que o formato das curvas de indiferença importa tanto quanto o método de solução.

**Demanda Marshalliana.** O consumidor compara a TMS com a razão de preços:

- Se \(\dfrac{a}{b} > \dfrac{p_1}{p_2}\): o bem 1 oferece mais utilidade por real gasto → solução de canto em \(x_1\)
- Se \(\dfrac{a}{b} < \dfrac{p_1}{p_2}\): o bem 2 é mais vantajoso → solução de canto em \(x_2\)
- Se \(\dfrac{a}{b} = \dfrac{p_1}{p_2}\): qualquer combinação sobre a reta orçamentária é ótima

Formalmente:

\[
\boxed{x_1^* = \begin{cases} I/p_1 & \text{se } a/b > p_1/p_2 \\ 0 & \text{se } a/b < p_1/p_2 \\ \text{qualquer } x_1 \in [0, I/p_1] & \text{se } a/b = p_1/p_2 \end{cases}} \label{eq:4.10.23} \tag{4.10.23}
\]

A demanda é descontínua: uma pequena mudança em preços pode fazer o consumidor saltar de consumir apenas o bem 1 para apenas o bem 2. Essa descontinuidade tem implicações práticas importantes — por exemplo, na análise de programas de subsídio que reduzem o preço de um bem abaixo do ponto de indiferença: o impacto sobre a demanda pode ser dramático e não-linear.

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \max\left\{\frac{a\, I}{p_1},\; \frac{b\, I}{p_2}\right\} = I \cdot \max\left\{\frac{a}{p_1},\; \frac{b}{p_2}\right\}
\]

**Demanda Hicksiana.** Para minimizar o gasto atingindo \(\bar{u}\), o consumidor escolhe o bem mais barato por unidade de utilidade:

\[
\boxed{h_1 = \begin{cases} \bar{u}/a & \text{se } p_1/a < p_2/b \\ 0 & \text{se } p_1/a > p_2/b \end{cases}}
\]

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = \bar{u} \cdot \min\left\{\frac{p_1}{a},\; \frac{p_2}{b}\right\}
\]

### 4.10.3 Preferências Leontief (Complementares Perfeitos): U = min{x₁/a, x₂/b}

No outro extremo do espectro de substituibilidade, encontramos os complementares perfeitos — nomeados em homenagem ao economista russo-americano Wassily Leontief (Nobel de 1973), que utilizou essa estrutura em seus modelos de insumo-produto. Com preferências Leontief, as curvas de indiferença têm formato de "L" com vértice na reta \(x_1/a = x_2/b\). A elasticidade de substituição é \(\sigma = 0\): não há margem para substituição entre os bens. Aqui, o método de Lagrange padrão não se aplica diretamente (a função não é diferenciável no vértice), mas a solução segue de um argumento econômico simples.

**Demanda Marshalliana.** No ótimo, o consumidor sempre consome no vértice da curva de indiferença, onde \(x_1/a = x_2/b\). Caso contrário, estaria desperdiçando renda com excesso de um dos bens. Da condição de vértice:

\[
x_2 = \frac{b}{a}\, x_1
\]

Substituindo na restrição orçamentária:

\[
p_1 x_1 + p_2 \cdot \frac{b}{a}\, x_1 = I \quad \Longrightarrow \quad x_1 \left(p_1 + \frac{b}{a}\, p_2\right) = I
\]

\[
\boxed{x_1^* = \frac{a\, I}{a\, p_1 + b\, p_2}, \qquad x_2^* = \frac{b\, I}{a\, p_1 + b\, p_2}} \label{eq:4.10.24} \tag{4.10.24}
\]

Note que a demanda depende de *ambos* os preços — uma redução em \(p_1\) aumenta a demanda por *ambos* os bens, pois eles são sempre consumidos juntos na proporção \(a:b\).

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \frac{I}{a\, p_1 + b\, p_2}
\]

**Demanda Hicksiana.** Para atingir utilidade \(\bar{u}\), o consumidor precisa exatamente \(x_1 = a\bar{u}\) e \(x_2 = b\bar{u}\). Qualquer outra combinação ou não atinge \(\bar{u}\) ou gasta mais. Portanto:

\[
\boxed{h_1 = a\,\bar{u}, \qquad h_2 = b\,\bar{u}}
\]

As demandas hicksianas são **independentes dos preços** — o efeito substituição é zero, coerente com \(\sigma = 0\).

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = (a\, p_1 + b\, p_2)\,\bar{u}
\]

A função dispêndio é linear nos preços — não há curvatura porque não há substituição.

### 4.10.4 CES: U(x₁, x₂) = (a x₁<sup>ρ</sup> + b x₂<sup>ρ</sup>)<sup>1/ρ</sup>

Após derivar separadamente os casos Cobb-Douglas, substitutos e complementos perfeitos, estamos em condições de apresentar a família que os unifica. A função CES (*Constant Elasticity of Substitution*) generaliza os três casos anteriores, e suas demandas oferecem uma visão integrada de como o grau de substituibilidade entre bens afeta o comportamento do consumidor. O parâmetro \(\rho \in (-\infty, 1]\setminus\{0\}\) determina a elasticidade de substituição \(\sigma = 1/(1-\rho)\):

<a id="tabela-4-1"></a>

| \(\rho\) | \(\sigma\) | Caso limite |
|-----------|-----------|-------------|
| \(\rho \to 1\) | \(\sigma \to \infty\) | Substitutos perfeitos |
| \(\rho \to 0\) | \(\sigma \to 1\) | Cobb-Douglas |
| \(\rho \to -\infty\) | \(\sigma \to 0\) | Complementares perfeitos |

<div class="caption-obj" markdown>
**Tabela 4.1 — Casos limite da função CES.** O parâmetro \(\rho\) determina a elasticidade de substituição \(\sigma = 1/(1-\rho)\).
</div>

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; (a\, x_1^\rho + b\, x_2^\rho)^{1/\rho} \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

O Lagrangeano é:

\[
\mathcal{L} = (a\, x_1^\rho + b\, x_2^\rho)^{1/\rho} + \lambda(I - p_1 x_1 - p_2 x_2)
\]

As CPOs são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} = \frac{1}{\rho}(a\, x_1^\rho + b\, x_2^\rho)^{1/\rho - 1} \cdot \rho\, c_i\, x_i^{\rho-1} - \lambda p_i = 0
\]

onde \(c_1 = a\) e \(c_2 = b\). Simplificando e dividindo a CPO de \(x_1\) pela de \(x_2\):

\[
\frac{a\, x_1^{\rho-1}}{b\, x_2^{\rho-1}} = \frac{p_1}{p_2} \quad \Longrightarrow \quad \left(\frac{x_1}{x_2}\right)^{\rho-1} = \frac{p_1\, b}{p_2\, a}
\]

Como \(\rho - 1 = -1/\sigma\), elevando ambos os lados a \(-\sigma\):

\[
\frac{x_1}{x_2} = \left(\frac{a\, p_2}{b\, p_1}\right)^\sigma = \left(\frac{a}{b}\right)^\sigma \left(\frac{p_1}{p_2}\right)^{-\sigma}
\]

Portanto \(x_1 = x_2 \cdot (a/b)^\sigma \cdot (p_1/p_2)^{-\sigma}\). Substituindo na restrição orçamentária e resolvendo, definimos o **índice de preços CES**:

\[
P \equiv \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{1/(1-\sigma)} \label{eq:4.10.25} \tag{4.10.25}
\]

As **demandas marshallianas** podem ser escritas de forma compacta:

\[
\boxed{x_i^* = \frac{a_i^\sigma\, p_i^{-\sigma}}{P^{1-\sigma}}\, I = a_i^\sigma\, p_i^{-\sigma}\, P^{\sigma-1}\, I} \label{eq:4.10.26} \tag{4.10.26}
\]

onde \(a_1 = a\), \(a_2 = b\). Equivalentemente:

\[
x_1^* = \frac{a^\sigma\, p_1^{-\sigma}\, I}{a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}}, \qquad x_2^* = \frac{b^\sigma\, p_2^{-\sigma}\, I}{a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}}
\]

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = \frac{I}{P} = I \cdot \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{-1/(1-\sigma)}
\]

**Demanda Hicksiana.** Pelo Lema de Shephard aplicado à função dispêndio:

\[
\boxed{h_i = a_i^\sigma\, p_i^{-\sigma}\, P^{\sigma-1}\, \bar{u}}
\]

As demandas hicksianas têm a mesma estrutura das marshallianas, com \(\bar{u}\) substituindo \(I/P\).

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = P \cdot \bar{u} = \bar{u} \cdot \left(a^\sigma\, p_1^{1-\sigma} + b^\sigma\, p_2^{1-\sigma}\right)^{1/(1-\sigma)}
\]

!!! info "Casos limite da CES"
    - Quando \(\rho \to 0\) (\(\sigma \to 1\)), a CES converge para a Cobb-Douglas com expoentes proporcionais a \(a\) e \(b\). O índice \(P\) converge para \(\text{const} \cdot p_1^{a/(a+b)} p_2^{b/(a+b)}\).
    - Quando \(\rho \to 1\) (\(\sigma \to \infty\)), o consumidor substitui perfeitamente entre os bens e consome apenas o mais barato por unidade de utilidade.
    - Quando \(\rho \to -\infty\) (\(\sigma \to 0\)), não há substituição e o consumidor consome na proporção fixa \(a:b\).

!!! box-mundo "Box Mundo 4.2 — A utilidade CES no comércio internacional: o modelo Dixit-Stiglitz e a Nova Teoria do Comércio"

    **Contexto:** A função CES, apresentada nesta seção como ferramenta da teoria do consumidor, desempenha um papel central na teoria do comércio internacional contemporânea. Em 1977, Avinash Dixit e Joseph Stiglitz publicaram um artigo seminal — "Monopolistic Competition and Optimum Product Diversity" (*American Economic Review*) — no qual modelaram as preferências dos consumidores por variedade usando uma função utilidade CES sobre um contínuo de bens diferenciados. Essa estrutura foi posteriormente adotada por Paul Krugman (1979, 1980) para explicar por que países com dotações similares comerciam entre si — o chamado comércio intra-indústria —, dando origem à **Nova Teoria do Comércio**, que lhe rendeu o Prêmio Nobel de Economia em 2008.

    **Dados:** No modelo Dixit-Stiglitz-Krugman, o consumidor representativo maximiza uma utilidade CES sobre \(n\) variedades de um bem diferenciado: \(U = \left(\sum_{i=1}^n x_i^\rho\right)^{1/\rho}\), onde \(\sigma = 1/(1-\rho) > 1\) é a elasticidade de substituição entre variedades. Quanto maior \(\sigma\), mais substituíveis são as variedades e menor o poder de mercado de cada firma. Estimativas empíricas de \(\sigma\) variam significativamente entre setores: Broda e Weinstein (2006, *Quarterly Journal of Economics*) estimaram elasticidades de substituição para mais de 30.000 categorias de bens importados pelos EUA, encontrando medianas entre 2,2 e 3,7, com valores muito mais altos para commodities homogêneas e muito mais baixos para bens altamente diferenciados (eletrônicos, vestuário). Feenstra (1994, *American Economic Review*) desenvolveu o método econométrico que permite estimar \(\sigma\) a partir de dados de comércio bilateral, tornando o parâmetro CES empiricamente mensurável.

    **Análise:** A conexão entre a Seção 4.10.4 e o comércio internacional é direta: as demandas CES derivadas nesta seção — com participações orçamentárias que dependem dos preços relativos elevados à potência \(1-\sigma\) e do índice de preços CES \(P\) — são exatamente as funções de demanda por variedades importadas usadas nos modelos gravitacionais de comércio. O índice de preços CES \(P\) derivado aqui corresponde ao índice de preços ideal que aparece na equação gravitacional estrutural de Anderson e Van Wincoop (2003). Assim, a maquinaria algébrica desenvolvida para o consumidor individual neste capítulo é a mesma que fundamenta a análise de fluxos comerciais entre países — um exemplo notável de como a teoria microeconômica permeia toda a economia aplicada.

    **Fonte:** Dixit, A. K.; Stiglitz, J. E. (1977). "Monopolistic Competition and Optimum Product Diversity." *American Economic Review*, 67(3), 297–308. Krugman, P. (1979). "Increasing Returns, Monopolistic Competition, and International Trade." *Journal of International Economics*, 9(4), 469–479. Broda, C.; Weinstein, D. E. (2006). "Globalization and the Gains from Variety." *Quarterly Journal of Economics*, 121(2), 541–585.

### 4.10.5 Quase-linear: U(x₁, x₂) = v(x₁) + x₂

Por fim, retornamos à utilidade quase-linear, cuja estrutura singular — a ausência de efeito renda sobre um dos bens — produz simplificações notáveis nas funções de demanda e na análise de bem-estar. Como veremos, a quase-linearidade faz com que as demandas marshalliana e hicksiana do bem 1 coincidam, e que as medidas de variação compensatória, variação equivalente e variação do excedente do consumidor sejam todas iguais. Essa propriedade torna a quase-linear a preferida em modelos de equilíbrio parcial e organização industrial. A utilidade quase-linear combina uma função côncava \(v(x_1)\) com um termo linear em \(x_2\), onde o bem 2 funciona como numerário (Seção 3.6.5).

**Demanda Marshalliana.** O consumidor resolve:

\[
\max_{x_1,x_2} \; v(x_1) + x_2 \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = I
\]

A CPO para solução interior é:

\[
v'(x_1) = \frac{p_1}{p_2} \label{eq:4.10.27} \tag{4.10.27}
\]

Como \(v'' < 0\), a CPO define implicitamente \(x_1^* = (v')^{-1}(p_1/p_2)\), que **não depende da renda**. O bem 2 absorve toda a variação de renda:

\[
\boxed{x_1^* = (v')^{-1}\!\left(\frac{p_1}{p_2}\right), \qquad x_2^* = \frac{I - p_1 x_1^*}{p_2}} \label{eq:4.10.28} \tag{4.10.28}
\]

!!! warning "Condição de solução interior"
    A solução interior requer \(x_2^* > 0\), ou seja, \(I > p_1 x_1^*\). Se a renda for insuficiente, a solução de canto é \(x_2 = 0\) e \(x_1 = I/p_1\).

**Exemplo: \(v(x_1) = 2\sqrt{x_1}\).** A CPO é \(1/\sqrt{x_1} = p_1/p_2\), logo:

\[
x_1^* = \frac{p_2^2}{p_1^2}, \qquad x_2^* = \frac{I}{p_2} - \frac{p_2}{p_1}
\]

**Utilidade indireta.**

\[
V(\mathbf{p}, I) = v(x_1^*) + x_2^* = v\!\left((v')^{-1}\!\left(\frac{p_1}{p_2}\right)\right) + \frac{I - p_1 (v')^{-1}(p_1/p_2)}{p_2}
\]

Note que \(V\) é **linear** em \(I\): \(\partial V / \partial I = 1/p_2\), a utilidade marginal da renda é constante.

**Demanda Hicksiana.** A minimização do dispêndio gera a mesma CPO para \(x_1\), logo:

\[
\boxed{h_1 = (v')^{-1}\!\left(\frac{p_1}{p_2}\right) = x_1^*, \qquad h_2 = \bar{u} - v(h_1)}
\]

As demandas marshalliana e hicksiana do bem 1 são **idênticas** — consequência direta do efeito renda nulo.

**Função dispêndio.**

\[
E(\mathbf{p}, \bar{u}) = p_1 h_1 + p_2 h_2 = p_1 h_1 + p_2[\bar{u} - v(h_1)] = p_2 \bar{u} + p_1 h_1 - p_2 v(h_1)
\]

A função dispêndio é **linear** em \(\bar{u}\): \(\partial E / \partial \bar{u} = p_2\).

!!! info "Caminho de expansão da renda"
    Na utilidade quase-linear, o caminho de expansão da renda é uma **reta vertical** no espaço \((x_1, x_2)\): \(x_1\) permanece fixo em \((v')^{-1}(p_1/p_2)\) enquanto \(x_2\) cresce linearmente com \(I\). Contraste com as preferências homotéticas (§3.6.6), cujo caminho de expansão é uma reta passando pela **origem**.

??? exercicio-resolvido "Exercício Resolvido 4.4"
    **Enunciado:** Um consumidor tem preferências Leontief \(u(x_1, x_2) = \min\{2x_1, x_2\}\), com \(p_1 = 4\), \(p_2 = 2\) e \(I = 120\). (a) Encontre a cesta ótima. (b) Suponha que o governo conceda uma transferência de R$ 40. Qual é a nova cesta?

    **Dados:** \(a = 2\), \(b = 1\) (na forma \(\min\{ax_1, bx_2\}\)), \(p_1 = 4\), \(p_2 = 2\), \(I = 120\).

    **Resolução:**

    **Passo 1 — Encontrar a cesta ótima**

    No ótimo, \(2x_1 = x_2\). Substituindo na restrição: \(4x_1 + 2(2x_1) = 120 \Rightarrow 8x_1 = 120 \Rightarrow x_1^* = 15\), \(x_2^* = 30\).

    Utilidade: \(u^* = \min\{30, 30\} = 30\).

    **Passo 2 — Nova cesta com transferência de R$ 40**

    Nova renda: \(I' = 160\). A proporção não se altera: \(8x_1 = 160 \Rightarrow x_1^* = 20\), \(x_2^* = 40\).

    Utilidade: \(u^* = \min\{40, 40\} = 40\).

    **Resultado:** A transferência aumenta o consumo de ambos os bens proporcionalmente, de \((15, 30)\) para \((20, 40)\), e a utilidade sobe de 30 para 40.

    **Interpretação econômica:** Com complementares perfeitos, não há efeito substituição — a transferência se traduz integralmente em efeito renda, expandindo o consumo na mesma proporção fixa. Isso lembra o caso de bens que são naturalmente consumidos em proporções fixas, como arroz e feijão na dieta brasileira tradicional: um aumento de renda leva a família a consumir mais de ambos, sem alterar a proporção. Segundo a POF 2017–2018 do IBGE, a relação entre o consumo domiciliar per capita de arroz e feijão manteve-se relativamente estável em torno de 2:1 entre as diferentes faixas de renda.

---

Os cinco tipos de função utilidade analisados nesta seção cobrem a grande maioria das aplicações em microeconomia teórica e empírica. A Cobb-Douglas é o ponto de partida natural por sua simplicidade; a CES generaliza para qualquer grau de substituibilidade; os substitutos e complementos perfeitos capturam casos extremos; e a quase-linear elimina efeitos renda, simplificando a análise de equilíbrio parcial. Na prática, a escolha da forma funcional envolve um *trade-off* entre tratabilidade analítica e realismo empírico. Modelos com dados agregados frequentemente usam a CES (que permite estimar \(\sigma\)); modelos de organização industrial preferem a quase-linear (que isola um mercado específico); e modelos pedagógicos recorrem à Cobb-Douglas (que gera álgebra limpa). A regra prática, já enunciada no Capítulo 3: comece pela forma mais simples que capture o fenômeno de interesse.

Os boxes a seguir ilustram como esses modelos se conectam a questões concretas de política pública no Brasil.

---

## 4.11 O GPS do Consumidor: Quadro Resumo de Todas as Funções

A [Tabela 4.2](#tabela-4-2) resume as cinco funções centrais da teoria do consumidor e suas propriedades. Este quadro serve tanto como referência rápida quanto como mapa conceitual das relações desenvolvidas ao longo do capítulo. Cada linha da tabela corresponde a um conceito fundamental; cada coluna, a uma dimensão analítica relevante. Ao percorrer a tabela, observe como as funções se organizam em pares duais — \(x_i\) e \(h_i\); \(V\) e \(E\) — e como as propriedades de homogeneidade, monotonia e curvatura refletem a estrutura subjacente das preferências.

<a id="tabela-4-2"></a>

| Função | Definição | Argumentos | Propriedades principais |
|---|---|---|---|
| Utilidade direta \(u(\mathbf{x})\) | Nível de satisfação da cesta \(\mathbf{x}\) | Quantidades \(\mathbf{x}\) | Ordinal; contínua; quase-côncava |
| Demanda marshalliana \(x_i(\mathbf{p}, I)\) | Cesta ótima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0 em \((\mathbf{p}, I)\); Lei de Walras |
| Utilidade indireta \(V(\mathbf{p}, I)\) | Utilidade máxima dados preços e renda | Preços \(\mathbf{p}\), renda \(I\) | Homogênea de grau 0; decrescente em \(\mathbf{p}\); crescente em \(I\); quase-convexa em \(\mathbf{p}\) |
| Demanda hicksiana \(h_i(\mathbf{p}, \bar{u})\) | Cesta de custo mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 0 em \(\mathbf{p}\); \(\partial h_i/\partial p_i \leq 0\) |
| Função dispêndio \(E(\mathbf{p}, \bar{u})\) | Gasto mínimo para atingir \(\bar{u}\) | Preços \(\mathbf{p}\), utilidade \(\bar{u}\) | Homogênea de grau 1 em \(\mathbf{p}\); côncava em \(\mathbf{p}\); Lema de Shephard |

<div class="caption-obj" markdown>
**Tabela 4.2 — Funções do consumidor.**
</div>

**Relações fundamentais**:

- \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\)
- Roy: \(x_i = -(\partial V/\partial p_i) / (\partial V/\partial I)\)
- Shephard: \(h_i = \partial E / \partial p_i\)
- Conexão: \(x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I))\)

---

!!! box-brasil "Box Brasil 4.3 — Transferências condicionadas e escolhas de consumo"
    O Programa Bolsa Família (PBF), criado em 2003 e reestruturado como Auxílio Brasil em 2021 e novamente como Bolsa Família em 2023, constitui o maior programa de transferência condicionada de renda da América Latina, atingindo cerca de 21 milhões de famílias em 2023.

    **Efeito sobre a restrição orçamentária**: A transferência mensal \(T\) desloca a reta orçamentária paralelamente para cima, de \(p_1 x_1 + p_2 x_2 = I\) para \(p_1 x_1 + p_2 x_2 = I + T\). Note que, ao contrário de subsídios a bens específicos, a transferência em dinheiro **não altera preços relativos**, funcionando como um *lump sum*. Pelo princípio do montante fixo (Seção 4.5), essa forma de transferência é mais eficiente do que subsídios a bens específicos, permitindo ao beneficiário maximizar sua utilidade de acordo com suas preferências individuais.

    **Condicionalidades e o conjunto orçamentário**: As condicionalidades do PBF (frequência escolar, vacinação, acompanhamento pré-natal) introduzem restrições adicionais ao problema do consumidor. Do ponto de vista formal, o conjunto orçamentário deixa de ser um simples triângulo: a família deve alocar um montante mínimo em "bens meritórios" (educação, saúde) para receber a transferência. Isso cria uma descontinuidade no conjunto de possibilidades de consumo.

    **Evidências empíricas sobre padrões de consumo**:

    - Estudos do [IPEA](https://www.ipea.gov.br) mostram que famílias beneficiárias gastam proporcionalmente mais com **alimentação** (especialmente alimentos de maior qualidade nutricional) e **material escolar** do que famílias com renda similar não beneficiárias (Soares e Sátyro, 2009).
    - Evidências de Resende e Oliveira (2008) indicam que a propensão marginal a consumir dos beneficiários é elevada (acima de 0,80), consistente com a teoria microeconômica para famílias na faixa de renda onde a utilidade marginal da renda é alta.
    - A **diversificação da cesta de consumo** aumentou significativamente: famílias beneficiárias passaram a incluir frutas, verduras e proteínas animais com maior frequência, refletindo um deslocamento ao longo de curvas de indiferença em direção a cestas mais balanceadas.
    - Dados do Cadastro Único e da POF 2017–2018 mostram que a parcela de gastos com alimentação diminuiu de cerca de 45% para 38% entre beneficiários entre 2008 e 2018, indicando movimento ao longo da curva de Engel.

    Do ponto de vista da teoria do consumidor, o PBF exemplifica de forma concreta os conceitos de deslocamento da restrição orçamentária, eficiência de transferências *lump sum* e a relação entre renda e composição da cesta de consumo.

    **Fontes**: SOARES, F. V.; SÁTYRO, N. *O Programa Bolsa Família: desenho institucional, impactos e possibilidades futuras*. Texto para Discussão IPEA, n. 1424, 2009. RESENDE, A. C. C.; OLIVEIRA, A. M. H. C. Avaliando resultados de um programa de transferência de renda: o impacto do Bolsa-Escola sobre os gastos das famílias brasileiras. *Estudos Econômicos*, v. 38, n. 2, p. 235–265, 2008. [MDS](https://www.gov.br/mds) — Ministério do Desenvolvimento Social, dados administrativos.

!!! box-brasil "Box Brasil 4.4 — Endividamento das famílias e a restrição orçamentária intertemporal"
    O crédito permite que famílias consumam além de sua renda corrente, expandindo a restrição orçamentária no presente à custa de contraí-la no futuro. No Brasil, o endividamento das famílias cresceu expressivamente nas últimas décadas. Segundo o [Banco Central do Brasil](https://www.bcb.gov.br) (BCB), o nível de endividamento das famílias — medido pela razão entre o saldo de dívidas com o Sistema Financeiro Nacional e a renda acumulada em 12 meses — alcançou 53,1% em meados de 2022, o maior patamar da série histórica.

    Do ponto de vista da teoria do consumidor, o acesso ao crédito modifica o conjunto orçamentário. Sem crédito, a restrição é \(p_1 x_1 + p_2 x_2 \leq I\). Com crédito a uma taxa de juros \(r\), a família pode consumir no presente um valor superior a \(I\), desde que o valor presente dos pagamentos futuros não exceda o valor presente da renda futura. A Pesquisa de Endividamento e Inadimplência do Consumidor (PEIC/[CNC](https://www.portaldocomercio.org.br)) indicou que, em 2022, 77,9% das famílias brasileiras possuíam algum tipo de dívida, sendo o cartão de crédito a principal modalidade.

    A elevada taxa de juros brasileira — com o cartão de crédito rotativo superando 440% ao ano em 2023 (BCB) — implica que o preço intertemporal do consumo presente é muito alto no Brasil comparado a outros países, estreitando severamente a restrição orçamentária futura das famílias endividadas.

    **Fonte**: BCB, Relatório de Economia Bancária, 2022; CNC, Pesquisa de Endividamento e Inadimplência do Consumidor (PEIC), 2022.

Se este capítulo funcionou, você sai dele com três convicções:

1. **Tangência é tudo.** A condição TMS = razão de preços não é um resultado técnico — é a afirmação de que, no ótimo, o valor subjetivo de um bem (para o consumidor) coincide com seu valor objetivo (no mercado). Quando os dois divergem, há ganho não explorado.
2. **A dualidade não é abstração — é poder.** Saber que \(V\) e \(E\) são inversas significa que você pode atacar qualquer problema do consumidor pelo lado que for mais conveniente. Na prática empírica, isso faz toda a diferença: estimar \(E\) e aplicar Shephard é frequentemente mais fácil do que resolver o problema primal.
3. **Lump sum domina — em teoria.** O princípio do montante fixo é uma das implicações mais limpas da teoria, e sua lógica está por trás do argumento em favor de transferências diretas de renda. Mas as ressalvas (informação, equidade, viabilidade política) são tão importantes quanto o resultado.

O consumidor encontrou sua cesta ótima. Mas o mundo não fica parado: preços mudam, rendas flutuam, governos criam impostos. O que acontece com a cesta ótima quando o chão se move? Essa é a pergunta do Capítulo 5 — onde Slutsky entra em cena.

*O consumidor está em paz no seu ótimo. No próximo capítulo, perturbamos essa paz — e Slutsky nos ensina a decompor o caos.*
