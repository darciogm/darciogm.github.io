---
title: "Soluções — Capítulo 19"
---

# Soluções dos Exercícios — Capítulo 19

[← Voltar ao Capítulo 19](../cap19/index.md)

---

## Exercício 19.1 {#ex-19-1}

**Mercado de carros usados (Akerlof).** Carros bons: valor de \( 30.000 \) para compradores e \( 25.000 \) para vendedores. Carros ruins: valor de \( 15.000 \) para compradores e \( 10.000 \) para vendedores. Metade dos carros são bons.

### (a) Preço máximo que um comprador desinformado pagaria

Sob informação assimétrica, o comprador não consegue distinguir carros bons de ruins. Ele atribui a cada carro o valor esperado, ponderado pela proporção de tipos no mercado.

Se ambos os tipos estiverem à venda, a proporção é \( 1/2 \) de cada. O valor esperado para o comprador é:

\[
\mathbb{E}[V_{\text{comprador}}] = \frac{1}{2} \times 30.000 + \frac{1}{2} \times 15.000 = 22.500
\]

Portanto, o preço máximo que um comprador desinformado estaria disposto a pagar é **\( P_{\max} = 22.500 \)**.

### (b) Quais tipos serão transacionados?

Para que vendedores de carros bons aceitem vender, o preço deve ser ao menos \( 25.000 \). Porém, o preço máximo que o comprador oferece é \( 22.500 < 25.000 \).

Logo, vendedores de carros bons **não vendem**. Apenas carros ruins permanecem no mercado, pois \( 22.500 > 10.000 \).

Mas, antecipando isso, o comprador racional percebe que só restam carros ruins. Ele então estará disposto a pagar no máximo \( 15.000 \), que é suficiente para que vendedores de carros ruins aceitem (\( 15.000 > 10.000 \)).

**Resultado:** somente carros ruins são transacionados ao preço \( P \in [10.000;\, 15.000] \). Este é o fenômeno clássico de **seleção adversa** — os carros bons são expulsos do mercado.

### (c) Resultado sob informação simétrica

Se o comprador pudesse observar a qualidade:

- **Carros bons:** preço de equilíbrio \( P_B \in [25.000;\, 30.000] \). Há ganhos de comércio de \( 30.000 - 25.000 = 5.000 \).
- **Carros ruins:** preço de equilíbrio \( P_R \in [10.000;\, 15.000] \). Há ganhos de comércio de \( 15.000 - 10.000 = 5.000 \).

Ambos os tipos seriam transacionados, e o excedente total seria maximizado. A assimetria informacional destrói metade das trocas mutuamente benéficas.

### (d) Mecanismo institucional para atenuar a seleção adversa

Diversas instituições podem mitigar o problema:

1. **Garantias (warranties):** Vendedores de carros bons podem oferecer garantias estendidas. Como o custo esperado da garantia é baixo para carros bons e alto para carros ruins, este é um mecanismo de **sinalização** crível.

2. **Inspeção por terceiros:** Laudos técnicos independentes (como vistorias cautelares) reduzem a assimetria informacional diretamente.

3. **Reputação e certificação:** Concessionárias que atestam a qualidade, colocando sua reputação em jogo, funcionam como intermediários que resolvem parcialmente o problema.

A ideia central é que qualquer mecanismo que permita aos vendedores de carros bons **revelar seu tipo de forma crível** restaura, ao menos parcialmente, a eficiência do mercado.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-1)

---

## Exercício 19.2 {#ex-19-2}

**Modelo principal-agente.** Utilidade do agente: \( U = \sqrt{w} - e \), com \( e \in \{0, 1\} \). Lucro \( \pi_H = 200 \) com probabilidade \( p(e) \) e \( \pi_L = 50 \) caso contrário. \( p(1) = 0{,}8 \), \( p(0) = 0{,}3 \). Utilidade de reserva \( \bar{U} = 5 \).

### (a) Restrições de participação e incentivo para induzir \( e = 1 \)

Sejam \( w_H \) e \( w_L \) os pagamentos condicionais aos resultados \( \pi_H \) e \( \pi_L \), respectivamente.

**Restrição de participação (RP):** o agente deve preferir aceitar o contrato (com \( e = 1 \)) a ficar de fora:

\[
0{,}8\,\sqrt{w_H} + 0{,}2\,\sqrt{w_L} - 1 \geq 5
\]

\[
\implies 0{,}8\,\sqrt{w_H} + 0{,}2\,\sqrt{w_L} \geq 6
\]

**Restrição de compatibilidade de incentivos (IC):** o agente deve preferir \( e = 1 \) a \( e = 0 \):

\[
0{,}8\,\sqrt{w_H} + 0{,}2\,\sqrt{w_L} - 1 \geq 0{,}3\,\sqrt{w_H} + 0{,}7\,\sqrt{w_L} - 0
\]

\[
\implies 0{,}5\,\sqrt{w_H} - 0{,}5\,\sqrt{w_L} \geq 1
\]

\[
\implies \sqrt{w_H} - \sqrt{w_L} \geq 2
\]

### (b) Pagamentos ótimos \( w_H^* \) e \( w_L^* \)

O principal minimiza o custo esperado \( C = 0{,}8\,w_H + 0{,}2\,w_L \) sujeito a RP e IC.

No ótimo, ambas as restrições são ativas (binding). Da IC ativa:

\[
\sqrt{w_H} = \sqrt{w_L} + 2
\]

Substituindo na RP ativa:

\[
0{,}8\,(\sqrt{w_L} + 2) + 0{,}2\,\sqrt{w_L} = 6
\]

\[
0{,}8\,\sqrt{w_L} + 1{,}6 + 0{,}2\,\sqrt{w_L} = 6
\]

\[
\sqrt{w_L} = 4{,}4 \implies w_L^* = 19{,}36
\]

\[
\sqrt{w_H} = 6{,}4 \implies w_H^* = 40{,}96
\]

**Custo esperado (second-best):**

\[
C^{SB} = 0{,}8 \times 40{,}96 + 0{,}2 \times 19{,}36 = 32{,}768 + 3{,}872 = 36{,}64
\]

### (c) Comparação com o first-best (esforço observável)

Se o esforço é observável, basta satisfazer a RP. O principal pode oferecer salário fixo \( w^{FB} \) tal que:

\[
\sqrt{w^{FB}} - 1 = 5 \implies \sqrt{w^{FB}} = 6 \implies w^{FB} = 36
\]

**Custo first-best:** \( C^{FB} = 36 \) (salário fixo, sem risco para o agente).

**Custo second-best:** \( C^{SB} = 36{,}64 \).

A diferença \( 36{,}64 - 36 = 0{,}64 \) é o **custo da assimetria informacional** (ou "custo de agência"). Ele surge porque, para incentivar o agente, o principal precisa expô-lo a risco (\( w_H \neq w_L \)), o que é custoso dado que o agente é avesso ao risco (\( U = \sqrt{w} \) é côncava).

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-2)

---

## Exercício 19.3 {#ex-19-3}

**Sinalização de Spence.** Tipo H: produtividade \( \theta_H = 100 \), custo de educação \( c_H(s) = s/2 \). Tipo L: produtividade \( \theta_L = 50 \), custo \( c_L(s) = s \).

### (a) Faixa de níveis de educação \( s^* \) que sustentam equilíbrio separador

Num equilíbrio separador, o tipo H escolhe \( s^* > 0 \) e recebe salário \( w = 100 \); o tipo L escolhe \( s = 0 \) e recebe \( w = 50 \).

**Condição para o tipo L não imitar o tipo H:**

\[
50 - 0 \geq 100 - s^* \implies s^* \geq 50
\]

O tipo L deve preferir não investir em educação e receber \( 50 \) a investir \( s^* \) e receber \( 100 \).

**Condição para o tipo H preferir sinalizar:**

\[
100 - \frac{s^*}{2} \geq 50 \implies s^* \leq 100
\]

O tipo H deve preferir investir \( s^* \) e receber \( 100 \) a não investir e receber \( 50 \).

Portanto, qualquer \( s^* \in [50;\, 100] \) sustenta um equilíbrio separador.

### (b) Equilíbrio separador de menor custo

O equilíbrio de menor custo (mais eficiente entre os separadores) corresponde ao menor nível de sinalização que separa os tipos:

\[
s^* = 50
\]

Neste equilíbrio, o tipo H investe \( s^* = 50 \) e obtém utilidade líquida \( 100 - 50/2 = 75 \). O tipo L obtém \( 50 \).

Este é o equilíbrio separador selecionado pelo **critério intuitivo de Cho-Kreps** (Intuitive Criterion), pois é o que impõe menor custo de sinalização ao tipo produtivo.

### (c) Existência de equilíbrio agregador (pooling) estável

Num equilíbrio agregador, ambos os tipos escolhem o mesmo nível de educação \( s_p \) e recebem o salário médio. Se a proporção de tipo H é \( \lambda \), o salário pooling seria:

\[
w_p = \lambda \times 100 + (1 - \lambda) \times 50
\]

No entanto, esse equilíbrio não é estável sob o critério intuitivo. A razão é que um trabalhador do tipo H pode escolher um desvio \( s' \) suficientemente elevado para que:

- O tipo L **não** tenha incentivo a imitar (pois \( w' - s' < w_p - s_p \) para o tipo L);
- O tipo H **prefira** o desvio (pois \( w' - s'/2 > w_p - s_p/2 \) para o tipo H).

Como o custo marginal de educação é menor para o tipo H, sempre existe tal desvio. Portanto, **não há equilíbrio agregador estável** sob o critério intuitivo de Cho-Kreps.

### (d) Eficiência social da sinalização via educação

No modelo de Spence puro, a educação **não aumenta a produtividade** — serve apenas como sinal. Sob informação simétrica, os tipos receberiam seus salários verdadeiros sem nenhum custo de sinalização.

No equilíbrio separador de menor custo, o tipo H gasta \( s^*/2 = 25 \) em sinalização, que é um **custo peso-morto** (deadweight loss). A sinalização é, portanto, **socialmente ineficiente**: consome recursos reais apenas para transmitir informação.

Contudo, na prática, a educação pode ter efeitos produtivos reais (acumulação de capital humano), o que muda parcialmente a análise. Se a educação for parcialmente produtiva e parcialmente sinalizadora, o custo social é menor que no modelo puro, mas ainda há ineficiência na margem.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-3)

---

## Exercício 19.4 {#ex-19-4}

**Leilão de segundo preço com 3 participantes.** Valores i.i.d. uniformes em \( [0;\, 100] \).

### (a) Estratégia ótima de cada participante

No leilão de segundo preço (Vickrey), a **estratégia dominante** de cada participante é dar um lance igual à sua verdadeira valoração:

\[
b_i(v_i) = v_i
\]

Isso ocorre porque o lance não afeta o preço pago (que é o segundo maior lance), mas apenas a probabilidade de vencer. Dar lance abaixo do valor verdadeiro arrisca perder leilões lucrativos; dar lance acima arrisca pagar mais do que o objeto vale. A demonstração formal segue diretamente da análise de estratégias dominantes em mecanismos de Vickrey.

### (b) Receita esperada do vendedor

No leilão de segundo preço com \( n = 3 \) participantes e valores i.i.d. \( U[0;\, 100] \), a receita é igual ao segundo maior valor (a segunda estatística de ordem, \( V_{(2:3)} \)).

A esperança da \( k \)-ésima estatística de ordem de \( n \) variáveis uniformes em \( [0;\, a] \) é:

\[
\mathbb{E}[V_{(k:n)}] = \frac{k}{n+1} \times a
\]

Para a segunda maior de três (\( k = 2 \), pois \( V_{(2:3)} \) é a segunda estatística de ordem quando ordenamos de forma crescente, ou equivalentemente, a segunda maior corresponde a \( k = n - 1 = 2 \)):

\[
\mathbb{E}[V_{(2:3)}] = \frac{2}{4} \times 100 = 50
\]

A **receita esperada do vendedor é \( 50 \)**.

### (c) Receita esperada no leilão de primeiro preço (pelo Teorema da Equivalência de Receitas)

O **Teorema da Equivalência de Receitas** (Revenue Equivalence Theorem) afirma que, sob as condições padrão (valores privados independentes, mesma distribuição, mesmo número de participantes, o participante com menor valoração tem payoff zero), todos os mecanismos de leilão padrão geram a mesma receita esperada.

Portanto, a receita esperada no leilão de primeiro preço também é:

\[
\mathbb{E}[R^{FP}] = 50
\]

### (d) Estratégia de equilíbrio simétrico no leilão de primeiro preço

No leilão de primeiro preço com \( n \) participantes e valores \( U[0;\, a] \), a estratégia de equilíbrio simétrico de Bayes-Nash é:

\[
b_i(v_i) = \frac{n - 1}{n}\, v_i
\]

Para \( n = 3 \):

\[
b_i(v_i) = \frac{2}{3}\, v_i
\]

**Intuição:** cada participante "sombreia" (shades) seu lance abaixo de sua verdadeira valoração. O fator de desconto \( (n-1)/n \) reflete o trade-off entre probabilidade de vencer (que aumenta com o lance) e lucro condicional à vitória (que diminui com o lance). Com mais competidores, o sombreamento diminui, e os lances se aproximam dos valores verdadeiros.

**Verificação da receita esperada:** A receita no leilão de primeiro preço é o maior lance, \( \max_i b_i = \frac{2}{3} V_{(3:3)} \). Temos \( \mathbb{E}[V_{(3:3)}] = \frac{3}{4} \times 100 = 75 \). Logo:

\[
\mathbb{E}[R^{FP}] = \frac{2}{3} \times 75 = 50
\]

Confirmando a equivalência de receitas.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-4)

---

## Exercício 19.5 {#ex-19-5}

**Mercado de seguros com dois tipos.** Tipo A: \( p_A = 0{,}1 \). Tipo B: \( p_B = 0{,}4 \). Ambos com \( W = 100 \), perda \( d = 80 \). Proporção de tipo A: \( 60\% \). Utilidade: \( U(W) = \ln(W) \).

### (a) Contratos de seguro completo atuarialmente justos para cada tipo

Um contrato de seguro completo cobre toda a perda \( d = 80 \). O prêmio atuarialmente justo iguala o prêmio ao custo esperado do sinistro.

**Tipo A:**

\[
\text{Prêmio}_A = p_A \times d = 0{,}1 \times 80 = 8
\]

Com seguro completo: riqueza certa de \( W - \text{Prêmio}_A = 100 - 8 = 92 \).

**Tipo B:**

\[
\text{Prêmio}_B = p_B \times d = 0{,}4 \times 80 = 32
\]

Com seguro completo: riqueza certa de \( W - \text{Prêmio}_B = 100 - 32 = 68 \).

### (b) Mostrar que contrato agregador com seguro completo à taxa média não é equilíbrio

O prêmio médio com seguro completo seria:

\[
\bar{p} = 0{,}6 \times 0{,}1 + 0{,}4 \times 0{,}4 = 0{,}06 + 0{,}16 = 0{,}22
\]

\[
\text{Prêmio}_{\text{pool}} = 0{,}22 \times 80 = 17{,}6
\]

Riqueza certa sob o contrato pooling: \( 100 - 17{,}6 = 82{,}4 \).

Agora, considere uma seguradora entrante que ofereça um contrato **apenas para o tipo A**: seguro completo ao prêmio \( \text{Prêmio}' = 8 + \varepsilon \) (ligeiramente acima do atuarialmente justo para A), com riqueza certa \( 100 - 8 - \varepsilon = 92 - \varepsilon \).

Para o tipo A: \( \ln(92 - \varepsilon) > \ln(82{,}4) \) para \( \varepsilon \) pequeno. O tipo A prefere o novo contrato.

Para o tipo B: este contrato também é atraente para B (\( 92 - \varepsilon > 82{,}4 \)), então ele não funciona diretamente como separador com seguro completo. A chave, porém, é que podemos oferecer um contrato com **cobertura parcial** que atrai apenas o tipo A.

Formalmente, considere um contrato com cobertura \( q < 80 \) e prêmio \( \pi = p_A \times q + \varepsilon' \). Para \( q \) suficientemente próximo de \( 80 \) e \( \varepsilon' \) pequeno:

- **Tipo A prefere** este contrato ao pooling (pois o prêmio por unidade de cobertura é quase justo para ele);
- **Tipo B prefere** o contrato pooling (pois seu risco é alto e a cobertura parcial a taxa baixa não compensa a perda de cobertura).

Tal contrato é lucrativo (pois atrai predominantemente tipo A, de baixo risco) e desvia os tipos A do contrato pooling. Com a saída dos tipos A, o contrato pooling fica com proporção maior de tipo B, tornando-se deficitário.

Portanto, o **contrato pooling com seguro completo à taxa média não é um equilíbrio de Nash** no sentido de Rothschild-Stiglitz.

### (c) Restrição de compatibilidade de incentivos para cobertura máxima do tipo A

No equilíbrio separador de Rothschild-Stiglitz, o tipo B recebe seguro completo ao prêmio justo (\( \text{Prêmio}_B = 32 \), riqueza certa \( 68 \)).

O contrato do tipo A oferece cobertura parcial \( q_A \leq 80 \) ao prêmio atuarialmente justo \( \pi_A = p_A \times q_A = 0{,}1\, q_A \).

Com este contrato, as riquezas do tipo A nos dois estados são:

- **Sem sinistro:** \( W_1 = 100 - 0{,}1\, q_A \)
- **Com sinistro:** \( W_2 = 100 - 80 + q_A - 0{,}1\, q_A = 20 + 0{,}9\, q_A \)

A **restrição de incentivos** exige que o tipo B não queira desviar para o contrato do tipo A:

\[
\ln(68) \geq 0{,}6\, \ln(100 - 0{,}1\, q_A) + 0{,}4\, \ln(20 + 0{,}9\, q_A)
\]

A cobertura máxima \( q_A^* \) é o valor de \( q_A \) que satisfaz esta restrição com igualdade:

\[
\ln(68) = 0{,}6\, \ln(100 - 0{,}1\, q_A^*) + 0{,}4\, \ln(20 + 0{,}9\, q_A^*)
\]

Temos \( \ln(68) \approx 4{,}2195 \). Resolvendo numericamente (por exemplo, por bisseção), define-se \( f(q) = 0{,}6\,\ln(100 - 0{,}1\,q) + 0{,}4\,\ln(20 + 0{,}9\,q) \).

- \( f(0) = 0{,}6\,\ln(100) + 0{,}4\,\ln(20) = 0{,}6 \times 4{,}6052 + 0{,}4 \times 2{,}9957 \approx 3{,}9614 \)
- \( f(80) = \ln(92) \approx 4{,}5218 \) (seguro completo para A)
- \( f(40) = 0{,}6\,\ln(96) + 0{,}4\,\ln(56) \approx 0{,}6 \times 4{,}5643 + 0{,}4 \times 4{,}0254 \approx 4{,}3488 \)
- \( f(20) = 0{,}6\,\ln(98) + 0{,}4\,\ln(38) \approx 0{,}6 \times 4{,}5850 + 0{,}4 \times 3{,}6376 \approx 4{,}2061 \)
- \( f(22) = 0{,}6\,\ln(97{,}8) + 0{,}4\,\ln(39{,}8) \approx 0{,}6 \times 4{,}5830 + 0{,}4 \times 3{,}6840 \approx 4{,}2234 \)

Logo, \( q_A^* \approx 21 \). O tipo A recebe cobertura de aproximadamente \( 21 \) (de um máximo de \( 80 \)), pagando prêmio de cerca de \( 2{,}1 \). Isso ilustra a **distorção imposta ao tipo bom** para garantir separação: o tipo A recebe cobertura muito inferior à que receberia sob informação simétrica.

### (d) Discussão sobre como as proporções afetam a existência do equilíbrio separador

A existência do equilíbrio separador de Rothschild-Stiglitz depende crucialmente da **proporção dos tipos** na população.

**Quando há muitos tipos A (baixo risco):** O lucro potencial de um contrato pooling é grande, pois o prêmio médio é próximo do justo para A. Um contrato pooling com seguro completo à taxa média seria atraente para ambos os tipos e potencialmente lucrativo. Nesse caso, o equilíbrio separador pode **não existir**, pois uma seguradora entrante poderia oferecer um contrato pooling que domina os contratos separadores (especialmente o contrato distorcido do tipo A).

**Quando há muitos tipos B (alto risco):** O prêmio médio do contrato pooling é alto, tornando-o pouco atraente para o tipo A. A distorção imposta ao tipo A no equilíbrio separador é mais tolerável comparada ao contrato pooling. Nesse caso, o equilíbrio separador **tende a existir**.

Formalmente, existe um limiar \( \bar{\lambda} \) para a proporção de tipo A tal que:

- Se \( \lambda < \bar{\lambda} \): o equilíbrio separador existe.
- Se \( \lambda > \bar{\lambda} \): o equilíbrio separador pode não existir (pois um desvio pooling é lucrativo).

Esse resultado é um dos achados mais importantes de **Rothschild e Stiglitz (1976)**: em mercados competitivos com seleção adversa, o equilíbrio pode simplesmente não existir, dependendo da composição da população. Isso contrasta com o resultado de mercados com informação simétrica, nos quais o equilíbrio competitivo sempre existe sob condições padrão.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-5)
