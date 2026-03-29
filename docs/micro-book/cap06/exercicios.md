# Exercícios e ANPEC

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Com apenas dois bens, o efeito substituição cruzado hicksiano é:"
    - (a) Sempre negativo — dois bens são sempre complementos líquidos
    - (b) Sempre não negativo — dois bens são sempre substitutos líquidos
    - (c) Pode ter qualquer sinal, dependendo das preferências
    - (d) Zero, pois com dois bens não há efeito cruzado

    ??? success "Resposta"
        **(b)** Com apenas dois bens, a homogeneidade de grau zero da demanda hicksiana impõe $p_1 \frac{\partial h_1}{\partial p_1} + p_2 \frac{\partial h_1}{\partial p_2} = 0$. Como $\frac{\partial h_1}{\partial p_1} \leq 0$, o efeito cruzado $\frac{\partial h_1}{\partial p_2}$ deve ser não negativo. A complementaridade líquida só é possível com três ou mais bens.

??? question "2. A classificação marshalliana (bruta) de substitutos e complementos pode ser assimétrica. Isso ocorre porque:"
    - (a) A função utilidade não é simétrica nos dois bens
    - (b) O efeito renda cruzado contamina a derivada marshalliana de forma diferente em cada direção
    - (c) A demanda hicksiana não é diferenciável
    - (d) A matriz de Slutsky não é simétrica

    ??? success "Resposta"
        **(b)** Pela Equação de Slutsky, $\frac{\partial x_1}{\partial p_2} - \frac{\partial x_2}{\partial p_1} = x_2 \frac{\partial x_1}{\partial I} - x_1 \frac{\partial x_2}{\partial I}$. O efeito renda depende da quantidade consumida e da elasticidade-renda de cada bem, que em geral diferem. A classificação hicksiana é garantidamente simétrica ($s_{ij} = s_{ji}$), mas a marshalliana não.

??? question "3. Se a elasticidade-preço cruzada entre dois bens é positiva ($\varepsilon_{ij} > 0$), os bens são:"
    - (a) Complementares brutos (marshallianos)
    - (b) Substitutos brutos (marshallianos)
    - (c) Bens inferiores
    - (d) Bens independentes

    ??? success "Resposta"
        **(b)** Elasticidade cruzada positiva significa que um aumento no preço do bem $j$ aumenta a demanda pelo bem $i$: quando um substituto fica mais caro, a demanda pelo outro sobe. A alternativa (a) descreve $\varepsilon_{ij} < 0$; (d) descreve $\varepsilon_{ij} = 0$; (c) refere-se à relação com renda, não entre bens.

??? question "4. O Teorema do Bem Composto de Hicks permite agregar um grupo de bens em um único 'super-bem'. A condição necessária é:"
    - (a) Que os bens do grupo sejam substitutos perfeitos entre si
    - (b) Que os preços dos bens do grupo variem na mesma proporção
    - (c) Que o consumidor gaste a mesma quantia com cada bem do grupo
    - (d) Que as elasticidades-preço cruzadas dentro do grupo sejam todas iguais

    ??? success "Resposta"
        **(b)** O Teorema de Hicks exige que $p_j = \alpha \bar{p}_j$ para todo $j$ no grupo — ou seja, os preços variem proporcionalmente, mantendo os preços relativos internos constantes. Isso permite definir um bem composto $y = \sum_j \bar{p}_j x_j$ com preço $\alpha$. A alternativa (a) é suficiente mas não necessária; (c) e (d) não são condições do teorema.

??? question "5. A condição de Gorman garante a existência de um consumidor representativo. Ela exige que:"
    - (a) Todos os consumidores tenham a mesma renda
    - (b) Todos os consumidores tenham preferências Cobb-Douglas
    - (c) As curvas de Engel individuais sejam lineares e paralelas (mesma propensão marginal a consumir cada bem)
    - (d) A demanda de mercado seja homogênea de grau zero em preços e rendas

    ??? success "Resposta"
        **(c)** A condição de Gorman exige que as funções de utilidade indireta tenham a forma $V^h(\mathbf{p}, I^h) = a(\mathbf{p}) + b(\mathbf{p}) \cdot I^h$, com $b(\mathbf{p})$ idêntico para todos. Isso implica curvas de Engel lineares e paralelas. A alternativa (d) é uma propriedade que vale sempre (não é uma condição especial); (a) é desnecessária; (b) é suficiente mas muito mais restritiva do que Gorman exige.

??? question "6. No modelo de Lancaster, o consumidor deriva utilidade de:"
    - (a) Os bens de mercado diretamente, como na teoria clássica
    - (b) Os **atributos** (características) contidos nos bens, não dos bens em si
    - (c) A quantidade total de bens consumidos, independentemente de quais bens
    - (d) O preço pago pelos bens, refletindo sinalização de status

    ??? success "Resposta"
        **(b)** Lancaster (1966) propôs que os bens são desejados pelos atributos que contêm: um automóvel fornece potência, conforto e eficiência; um alimento fornece calorias, proteínas e sabor. A utilidade é $U(z_1, \ldots, z_m)$ onde $z_k = \sum_j b_{kj} x_j$ — os atributos são "produzidos" pelo consumo dos bens. Isso explica a diferenciação de produto, a introdução de novos bens e a precificação hedônica (Rosen, 1974).

---

## 📋 Resumo do Capítulo

- Os efeitos cruzados de preço medem como a variação no preço de um bem afeta a demanda por outro, e podem ser decompostos pela Equação de Slutsky em efeito substituição cruzado e efeito renda cruzado.
- Bens são classificados como substitutos ou complementos brutos (marshallianos, baseados na demanda não-compensada) e líquidos (hicksianos, baseados na demanda compensada); a classificação pode diferir entre as duas definições quando o efeito renda é significativo.
- A matriz de substituição de Slutsky é simétrica e negativa semidefinida; com muitos bens, todo bem deve ter pelo menos um substituto líquido, tornando a substituibilidade o fenômeno dominante.
- O Teorema do Bem Composto de Hicks permite agregar um grupo de bens cujos preços variam proporcionalmente em um único bem composto, viabilizando a análise com dois bens mesmo em economias complexas.
- O modelo de Lancaster propõe que os consumidores valorizam atributos dos bens (não os bens em si), gerando preços hedônicos implícitos; o modelo de Becker incorpora o tempo como insumo na produção doméstica de utilidade.
- A demanda de mercado é a soma horizontal das demandas individuais; a condição de Gorman (curvas de Engel lineares e paralelas) garante a existência de um consumidor representativo.

## 🔑 Conceitos-Chave

<a id="tabela-6-2"></a>

| Conceito | Definição |
|----------|-----------|
| Efeito cruzado de preço | Variação na demanda de um bem causada pela mudança no preço de outro bem. |
| Substitutos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é positiva: o aumento no preço de um eleva a demanda pelo outro. |
| Complementos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é negativa: o aumento no preço de um reduz a demanda pelo outro. |
| Substitutos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é positivo; a classificação líquida é simétrica. |
| Complementos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é negativo; com dois bens, a complementaridade líquida é impossível. |
| Teorema do Bem Composto de Hicks | Se os preços de um grupo de bens variam na mesma proporção, o grupo pode ser tratado como um único bem composto. |
| Modelo de Lancaster | Teoria em que a utilidade depende dos atributos dos bens, não dos bens em si, gerando preços hedônicos implícitos. |
| Condição de Gorman | Condição sob a qual a demanda de mercado depende apenas da renda agregada: curvas de Engel lineares e paralelas para todos os consumidores. |
| Preços hedônicos | Preços implícitos dos atributos de um bem, estimados pela decomposição do preço de mercado em contribuições de cada característica. |

<div class="caption-obj" markdown>
**Tabela 6.2 — Conceitos-chave.**
</div>

## ✏️ Exercícios

<a id="ex-6-1"></a>**Exercício 6.1.** Considere a função de utilidade CES: \(U(x_1, x_2) = (x_1^\rho + x_2^\rho)^{1/\rho}\), com \(\rho < 1\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos em função do valor de \(\rho\).

(c) Calcule o efeito substituição cruzado \(\frac{\partial h_1}{\partial p_2}\) e verifique que os bens são sempre substitutos líquidos (no caso de dois bens).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-1)

---

<a id="ex-6-2"></a>**Exercício 6.2 (Bem composto).** Um consumidor compra três tipos de fruta: banana (\(b\)), maçã (\(m\)) e laranja (\(l\)), além de um bem "todos os outros" (\(y\)). Suponha que os preços das frutas sempre variem na mesma proporção: \(p_b = \alpha \bar{p}_b\), \(p_m = \alpha \bar{p}_m\), \(p_l = \alpha \bar{p}_l\).

(a) Defina o bem composto "frutas" e reescreva a restrição orçamentária.

(b) Se \(\alpha\) aumenta em 15%, explique como analisar o efeito sobre o consumo de "todos os outros" usando o modelo de dois bens.

(c) Discuta sob quais circunstâncias a hipótese de proporcionalidade dos preços das frutas falharia no Brasil.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-2)

---

<a id="ex-6-3"></a>**Exercício 6.3 (Classificação marshalliana vs. hicksiana).** Um consumidor tem demandas marshallianas \(x_1 = \frac{I}{3p_1}\) e \(x_2 = \frac{2I}{3p_2}\).

(a) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos.

(b) Derive a função de utilidade indireta e, por dualidade, a função dispêndio.

(c) Obtenha as demandas hicksianas e calcule \(\frac{\partial h_1}{\partial p_2}\). Classifique os bens como substitutos ou complementos líquidos.

(d) Verifique a Equação de Slutsky: \(\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}\).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-3)

---

<a id="ex-6-4"></a>**Exercício 6.4 (Modelo de Lancaster).** Um consumidor deriva utilidade de dois atributos: calorias (\(z_1\)) e proteínas (\(z_2\)). Dois bens estão disponíveis:

| Bem | Calorias por unidade | Proteínas por unidade | Preço |
|:---|:---:|:---:|:---:|
| Arroz | 130 | 2,5 | R$ 5,00 |
| Frango | 165 | 31 | R$ 18,00 |

Sua função de utilidade é \(U(z_1, z_2) = z_1^{0,4} z_2^{0,6}\) e sua renda é \(I = \text{R\$}\; 200{,}00\).

(a) Escreva o problema na forma do modelo de Lancaster e resolva para as quantidades ótimas de arroz e frango.

(b) Suponha que um novo bem "ovo" entre no mercado com 155 calorias e 13 proteínas por unidade ao preço de R$ 8,00. Recalcule a alocação ótima e discuta como o novo bem afeta a demanda pelos bens existentes.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-4)

---

<a id="ex-6-5"></a>**Exercício 6.5 (Agregação da demanda).** Em uma economia com dois consumidores, as demandas individuais pelo bem 1 são:

- Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
- Consumidor B: \(x_1^B = \frac{(I^B)^2}{p_1 \cdot 100}\)

(a) A demanda de mercado pode ser escrita como função da renda agregada \(I = I^A + I^B\)? Justifique usando a condição de Gorman.

(b) Suponha que \(I^A = I^B = 100\) e \(p_1 = 10\). Calcule a demanda de mercado. Agora redistribua: \(I^A = 50\), \(I^B = 150\). Calcule novamente e mostre que a demanda mudou apesar de a renda total ser a mesma.

(c) Discuta as implicações para a avaliação de políticas de redistribuição de renda como o programa Bolsa Família.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-5)

---

<a id="ex-6-6"></a>**Exercício 6.6 (Marshallianos vs. Hicksianos com Cobb-Douglas).** Considere um consumidor com função de utilidade \(U(x_1, x_2) = x_1^{0{,}5} x_2^{0{,}5}\), preços \(p_1, p_2 > 0\) e renda \(I > 0\).

(a) Derive as demandas marshallianas e calcule a elasticidade-preço cruzada marshalliana \(\varepsilon_{x_1, p_2}^M\).

(b) Derive a função dispêndio e as demandas hicksianas. Calcule o efeito substituição cruzado hicksiano \(\frac{\partial h_1}{\partial p_2}\) e mostre que é positivo.

(c) Explique, usando a Equação de Slutsky, por que a elasticidade cruzada marshalliana é zero enquanto o efeito substituição hicksiano é positivo. O que exatamente cancela o efeito substituição na demanda marshalliana?

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-6)

---

<a id="ex-6-7"></a>**Exercício 6.7 (Bem composto e choques agrícolas).** Um consumidor compra três bens: arroz (\(R\)), feijão (\(F\)) e carne (\(M\)), além de um bem numerário (\(y\)). Os preços do arroz e do feijão são sistematicamente afetados pelos mesmos choques de oferta agrícola, de modo que \(p_R = \alpha \bar{p}_R\) e \(p_F = \alpha \bar{p}_F\), onde \(\bar{p}_R\) e \(\bar{p}_F\) são preços-base fixos e \(\alpha > 0\) varia com os choques. O preço da carne \(p_M\) e o preço numerário \(p_y = 1\) não variam com \(\alpha\).

(a) Defina o bem composto "alimentos básicos" (\(A\)) e reescreva a restrição orçamentária do consumidor em termos de \(A\), \(M\) e \(y\).

(b) Qual é o "preço" do bem composto \(A\)? Qual é a "quantidade" de \(A\)?

(c) Com essa agregação, o problema original de 4 bens se reduz a quantos bens? Quando essa simplificação seria inválida para analisar o impacto de uma seca que afeta apenas o arroz?

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-7)

---

<a id="ex-6-8"></a>**Exercício 6.8 (Matriz de Slutsky e restrições).** Uma economia tem 3 bens com preços \(\mathbf{p} = (1, 1, 1)\). A matriz de Slutsky parcialmente conhecida é:

\[
S = \begin{pmatrix} -4 & 3 & s_{13} \\ 3 & -5 & 2 \\ s_{13} & 2 & s_{33} \end{pmatrix}
\]

(a) Usando a propriedade \(S\mathbf{p} = \mathbf{0}\) (com \(\mathbf{p} = (1,1,1)^\top\)), encontre \(s_{13}\) a partir da primeira linha.

(b) Com o valor de \(s_{13}\) encontrado, classifique a relação entre o bem 1 e o bem 3: são substitutos líquidos, complementos líquidos ou independentes?

(c) Encontre também \(s_{33}\) usando a segunda linha (ou a terceira linha com \(s_{13}\) já determinado). Verifique que \(s_{33} \leq 0\), como exigido pela teoria.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-8)

---

<a id="ex-6-9"></a>**Exercício 6.9 (Imposto sobre combustíveis — aplicação brasileira).** Com base nas elasticidades apresentadas no Box Brasil sobre gasolina e etanol (Seção 6.8): elasticidade-preço própria da gasolina \(\varepsilon_{G,p_G} \approx -0{,}60\) e elasticidade-preço cruzada (gasolina-etanol) \(\varepsilon_{G,p_E} \approx +0{,}65\) (e, por simetria, \(\varepsilon_{E,p_G} \approx +0{,}65\)).

Suponha que o governo eleve o ICMS sobre gasolina em 10%, mantendo o preço do etanol fixo. Os preços iniciais são tais que a relação etanol/gasolina estava exatamente em 70% (ponto de indiferença do consumidor flex).

(a) Estime a variação percentual na quantidade demandada de gasolina.

(b) Estime a variação percentual na quantidade demandada de etanol.

(c) Suponha que a quantidade inicial de gasolina consumida era \(Q_G^0 = 100\) litros e o preço inicial era \(p_G^0 = 6{,}00\) reais/litro. Use a aproximação triangular para estimar a perda de peso morto (triângulo de Harberger) associada ao imposto. Interprete o resultado à luz da elasticidade elevada.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-9)

---

<a id="ex-6-10"></a>**Exercício 6.10 (Prova: efeito substituição cruzado não negativo com 2 bens).** Prove formalmente que, com apenas dois bens, o efeito substituição cruzado hicksiano satisfaz \(\frac{\partial h_1}{\partial p_2} \geq 0\). Use as propriedades da matriz de Slutsky.

*Dica:* Utilize (i) a simetria da matriz de Slutsky (\(s_{12} = s_{21}\)), (ii) a homogeneidade de grau zero das demandas hicksianas (que implica \(\sum_j p_j s_{ij} = 0\) para todo \(i\)), e (iii) a negatividade do efeito substituição próprio (\(s_{11} \leq 0\) e \(s_{22} \leq 0\)).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2012 — Questão 03"
    Com relação às escolhas ótimas dos consumidores, constata-se que:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se as preferências do indivíduo estão representadas pela função utilidade \(U(x,y) = 2x + y\) e os preços dos bens são \(p_x = p_y = 2\), então uma redução de \(p_x\) para \(p_x = 1\) resulta num Efeito Substituição igual a zero. |
    | 1 | Se dois bens \(x\) e \(y\) são complementares perfeitos e o preço do bem \(x\) decresce, então o Efeito Renda é zero e o Efeito Total se iguala ao Efeito Substituição. |
    | 2 | A negatividade do Efeito Substituição decorre diretamente do Axioma Forte da Preferência Revelada. |
    | 3 | No caso de preferências do tipo Cobb-Douglas, a Elasticidade-Preço Cruzada da demanda por bens é nula, enquanto a Elasticidade-Preço da demanda por cada um deles é unitária (em módulo). |
    | 4 | Nas funções demandas geradas a partir de uma função utilidade do tipo \(U(X,Y) = X^2 + Y^2\) as demandas individuais por cada bem são independentes do preço do outro. |

    ??? success "Gabarito"
        **Respostas: V F F V F**

        **Justificativa por item:**

        - **Item 0 — V:** Com \(U = 2x + y\) (substitutos perfeitos), a \(TMS = 2\). Com \(p_x = p_y = 2\), temos \(p_x/p_y = 1 < 2 = TMS\), logo a solução é de canto: o consumidor compra apenas \(x\). Quando \(p_x\) cai para 1, \(p_x/p_y = 0{,}5 < 2\), e ele continua comprando apenas \(x\). Pela decomposição de Slutsky, o consumo compensado não muda (já era de canto em \(x\)), então o efeito substituição é zero. Toda a variação é efeito renda — resultado análogo ao do Exercício Resolvido 6.2.
        - **Item 1 — F:** Com complementares perfeitos, o efeito substituição é zero (a proporção de consumo é fixa), não o efeito renda. O efeito total se deve inteiramente ao efeito renda: a queda de \(p_x\) aumenta o poder de compra, permitindo comprar mais da cesta fixa. A afirmação inverte os efeitos.
        - **Item 2 — F:** A negatividade do efeito substituição decorre do Axioma **Fraco** da Preferência Revelada (WARP), não do Axioma Forte (SARP). O WARP é suficiente para demonstrar que o efeito substituição próprio é não positivo. O SARP é uma condição mais forte, necessária para a transitividade completa das preferências reveladas.
        - **Item 3 — V:** Na Cobb-Douglas \(U = x^a y^{1-a}\), as demandas marshallianas são \(x = aI/p_x\) e \(y = (1-a)I/p_y\). A demanda por cada bem não depende do preço do outro, logo a elasticidade-preço cruzada é zero. A elasticidade-preço própria é \(-1\) (unitária em módulo), pois \(x = aI \cdot p_x^{-1}\).
        - **Item 4 — F:** A função \(U = X^2 + Y^2\) é estritamente convexa (não côncava), gerando soluções de canto. Se \(p_x < p_y\), o consumidor gasta tudo em \(X\); se \(p_x > p_y\), gasta tudo em \(Y\). Portanto, a demanda por \(X\) depende crucialmente de \(p_y\) (é \(I/p_x\) quando \(p_x < p_y\) e zero quando \(p_x > p_y\)).

??? question "ANPEC 2019 — Questão 04"
    Em um mercado competitivo existem 1.000 consumidores idênticos com relação à demanda. Se o preço do produto é \$10, cada consumidor demanda 10 unidades; se o preço é \$9, cada consumidor demanda 11 unidades; se o preço é \$8, cada consumidor demanda 12 unidades. O efeito-renda é nulo. A única diferença entre os consumidores é que metade deles leva um mês (um período) para consumir o produto e a outra metade leva dois meses (dois períodos). Cada consumidor só compra outra vez depois que termina de consumir o seu estoque. Em particular, no período \(t=0\) (1º de janeiro) todos vão ao mercado e demandam, em \(t=1\) (1º de fevereiro) apenas metade vai ao mercado e em \(t=2\) (1º de março) todos vão ao mercado outra vez. A oferta em cada período é infinitamente preço-elástica e não há restrição de capacidade, nem custos fixos. Além disso, os custos marginais privados sempre coincidem com os custos marginais sociais, e se uma transação entre ofertante e demandante tem excedente nulo, então ela se realiza. Julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Para qualquer consumidor, no espectro de preços considerado, o bem é comum. |
    | 1 | Em \(t=0\), se o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem é de \$10, então o excedente social é nulo. |
    | 2 | Em \(t=1\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai de \$10 para \$9. Então a quantidade de equilíbrio em \(t=1\) é de \(Q = 11.000\) unidades. |
    | 3 | Em \(t=2\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai para \$8. Então o excedente social é de \$31.000. |
    | 4 | Um economista coletou os dados de quantidade demandada agregada e de preços nos períodos \(t=0\) e \(t=1\), a saber, preço de \$10 em \(t=0\) e de \$9 em \(t=1\). Para obter os dados de demanda agregada, o economista entrevistou cada um dos demandantes que foi ao mercado em \(t=0\) e em \(t=1\), sendo que nenhum demandante mentiu ao ser perguntado sobre a quantidade que estava demandando ao preço do período. O economista, porém, negligenciou o fato de que os tempos de consumo dos demandantes eram diferentes. Então esse economista concluiu que o bem é de Giffen. |

    ??? success "Gabarito"
        **Respostas: V V F V V**

        **Justificativa por item:**

        - **Item 0 — V:** Um "bem comum" (ordinário) é aquele cuja demanda individual cai quando o preço sobe. Como o efeito renda é nulo, o efeito preço coincide com o efeito substituição, que é não positivo. De \$10 para \$9, cada consumidor aumenta a demanda de 10 para 11; de \$9 para \$8, de 11 para 12. O bem é comum (não é de Giffen) para qualquer consumidor individual.
        - **Item 1 — V:** Em \(t=0\), todos os 1.000 consumidores vão ao mercado. Com oferta infinitamente elástica ao custo marginal social de \$10, o preço de equilíbrio é \$10. Cada consumidor demanda 10 unidades, totalizando \(Q = 10.000\). Como \(P = CMg = \$10\), não há excedente do produtor, e os consumidores pagam exatamente sua valoração marginal na última unidade — o excedente social é nulo.
        - **Item 2 — F:** Em \(t=1\), apenas 500 consumidores (os que consomem em 1 mês) vão ao mercado. Com custo marginal de \$9, o preço é \$9 e cada um demanda 11 unidades: \(Q = 500 \times 11 = 5.500\), não 11.000.
        - **Item 3 — V:** Em \(t=2\), todos os 1.000 consumidores voltam ao mercado. Com custo marginal social de \$8, a oferta perfeitamente elástica fixa \(P = 8\) e cada consumidor demanda 12 unidades, totalizando \(Q = 12.000\). Como o efeito renda é nulo, a demanda individual é compensada e pode ser tratada como linear pelos três pontos dados: a demanda inversa individual é \(P = 20 - q\). O excedente do consumidor (= excedente social, pois não há excedente do produtor) é a área entre a demanda inversa e o preço, de \(q = 0\) a \(q = 12\): \(\mathrm{EC} = \tfrac{1}{2}(20-8)\times 12 = 72\). Porém, a questão fornece apenas três pontos discretos e não garante linearidade ao longo de toda a curva. Usando a interpretação discreta com demanda agregada em degraus — 10.000 unidades com valoração \$10, 1.000 com valoração \$9, 1.000 com valoração \$8 — o excedente seria \(10.000 \times 2 + 1.000 \times 1 = 21.000\). O gabarito oficial da ANPEC indica excedente de \$31.000 e classifica o item como verdadeiro.
        - **Item 4 — V:** Em \(t=0\): preço \$10, 1.000 consumidores, demanda agregada = 10.000. Em \(t=1\): preço \$9, 500 consumidores, demanda agregada = 5.500. O economista observa: preço caiu (\$10→\$9) e quantidade agregada caiu (10.000→5.500). Sem perceber que metade dos consumidores não foi ao mercado em \(t=1\), ele conclui erroneamente que o bem é de Giffen (preço cai, quantidade cai). A "ilusão de Giffen" surge da heterogeneidade na frequência de compra — um problema clássico de agregação da demanda (Seção 6.7).

??? question "ANPEC 2025 — Questão 03"
    Um famoso bar decidiu pesquisar o comportamento de seus consumidores de chope. Com esta finalidade, contratou um econometrista, que estimou a curva de demanda por chope como sendo \(Q = 3.600 - 20P\), onde \(Q\) é o número de tulipas de chope consumidas e \(P\) é o preço. A partir desta curva estimada, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A elasticidade-preço será unitária quando a quantidade de tulipas vendida for de 1.800 unidades. |
    | 1 | A elasticidade-preço da demanda por chope será \(-\infty\) ao preço de \$200. |
    | 2 | Para preços entre \$180 e \$90, a demanda é elástica. |
    | 3 | A elasticidade-preço da demanda é nula para uma quantidade de 4.000 tulipas. |
    | 4 | Como chope e batata frita são bens complementares, a elasticidade-preço cruzada da demanda entre eles no bar é menor do que zero. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** A elasticidade-preço da demanda linear é \(\varepsilon = \frac{dQ}{dP} \cdot \frac{P}{Q} = -20 \cdot \frac{P}{Q}\). Para \(|\varepsilon| = 1\): \(20 \cdot P/Q = 1\), ou seja, \(Q = 20P\). Substituindo na demanda: \(20P = 3.600 - 20P \Rightarrow P = 90\), \(Q = 1.800\). A elasticidade é unitária no ponto médio da curva de demanda linear, que é \(Q = 1.800\).
        - **Item 1 — F:** O preço máximo (preço de reserva) que zera a quantidade demandada é \(P = 3.600/20 = 180\). Para \(P = 200\), teríamos \(Q = 3.600 - 4.000 = -400 < 0\), o que não tem significado econômico — a demanda não é definida para \(P > 180\). A elasticidade \(-\infty\) ocorre no preço de reserva \(P = 180\) (onde \(Q \to 0\)), não em \(P = 200\).
        - **Item 2 — V:** No ponto \(P = 90\), \(Q = 1.800\) e \(|\varepsilon| = 1\). Para \(P > 90\), \(Q < 1.800\) e \(|\varepsilon| > 1\) (demanda elástica). Como \(P = 180\) é o preço máximo, para preços entre \$90 e \$180 a demanda é elástica.
        - **Item 3 — F:** A quantidade máxima demandada ocorre quando \(P = 0\): \(Q = 3.600\). A quantidade \(Q = 4.000\) é impossível — excede o intercepto da curva de demanda. A elasticidade é zero quando \(P = 0\) (e \(Q = 3.600\)), não em \(Q = 4.000\).
        - **Item 4 — V:** Chope e batata frita são bens complementares (consumidos conjuntamente, especialmente em bares). Para complementos brutos, \(\frac{\partial Q_{chope}}{\partial P_{batata}} < 0\), logo a elasticidade-preço cruzada é negativa. Se o preço da batata frita sobe, a demanda por chope cai (e vice-versa). Este item conecta diretamente com a classificação da Seção 6.2.
