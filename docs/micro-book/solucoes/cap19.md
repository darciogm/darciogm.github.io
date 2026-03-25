---
title: "Soluções — Capítulo 19"
---

# Soluções dos Exercícios — Capítulo 19

[← Voltar ao Capítulo 19](../cap19/index.md)

---

## ✏️ Exercício 19.1 {#ex-19-1}

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

## ✏️ Exercício 19.2 {#ex-19-2}

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

## ✏️ Exercício 19.3 {#ex-19-3}

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

## ✏️ Exercício 19.4 {#ex-19-4}

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

## ✏️ Exercício 19.5 {#ex-19-5}

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

---

## ✏️ Exercício 19.6 {#ex-19-6}

**Mercado de carros usados com três qualidades.** Alta: \( v_A = 90 \), \( c_A = 70 \). Média: \( v_M = 60 \), \( c_M = 50 \). Baixa: \( v_B = 30 \), \( c_B = 20 \). Proporção \( 1/3 \) cada.

### (a) Preço máximo e primeira rodada de seleção adversa

Se todos os tipos estivessem à venda, o valor esperado para o comprador desinformado seria:

\[
\mathbb{E}[V] = \frac{1}{3}(90) + \frac{1}{3}(60) + \frac{1}{3}(30) = 60
\]

O comprador paga no máximo \( P = 60 \). A esse preço:

- Vendedores de qualidade alta exigem \( c_A = 70 > 60 \): **saem do mercado**.
- Vendedores de qualidade média aceitam: \( c_M = 50 \leq 60 \). ✓
- Vendedores de qualidade baixa aceitam: \( c_B = 20 \leq 60 \). ✓

Na primeira rodada, os carros de qualidade alta são expulsos.

### (b) Iteração do raciocínio — equilíbrio final

Com apenas tipos M e B no mercado (proporção \( 1/2 \) cada), o comprador racional recalcula:

\[
\mathbb{E}[V \mid \text{M e B}] = \frac{1}{2}(60) + \frac{1}{2}(30) = 45
\]

Preço máximo: \( P = 45 \). A esse preço:

- Tipo M exige \( c_M = 50 > 45 \): **sai do mercado**.
- Tipo B aceita: \( c_B = 20 \leq 45 \). ✓

Agora, somente carros de qualidade baixa permanecem. O comprador antecipa isso e oferece no máximo \( P = 30 \). Como \( 30 > c_B = 20 \), o mercado funciona apenas para carros ruins.

**Equilíbrio final:** apenas carros de qualidade baixa são transacionados a \( P \in [20;\, 30] \). Este é um exemplo de **unraveling** completo — a seleção adversa expulsa sequencialmente todos os tipos bons.

### (c) Perda de bem-estar

Sob **informação simétrica**, todos os tipos seriam transacionados:

- Excedente por carro de qualidade alta: \( v_A - c_A = 90 - 70 = 20 \)
- Excedente por carro de qualidade média: \( v_M - c_M = 60 - 50 = 10 \)
- Excedente por carro de qualidade baixa: \( v_B - c_B = 30 - 20 = 10 \)

Excedente total esperado (por carro): \( \frac{1}{3}(20 + 10 + 10) = \frac{40}{3} \approx 13{,}33 \).

Sob **informação assimétrica**, apenas tipo B é transacionado:

Excedente realizado (por carro na população): \( \frac{1}{3}(10) = \frac{10}{3} \approx 3{,}33 \).

**Perda de bem-estar:** \( \frac{40}{3} - \frac{10}{3} = 10 \) por carro na população, equivalente a **75% do excedente potencial** destruído pela assimetria informacional.

### (d) Garantia como mecanismo de sinalização

Se a garantia custa \( 5 \) para vendedores de carros bons e \( 25 \) para os demais, o vendedor de qualidade alta pode oferecer garantia como sinal.

**Para o vendedor de qualidade alta:** utilidade líquida com garantia = \( P_{sinal} - 70 - 5 \). Para que valha a pena sinalizar (em vez de ser confundido com tipo baixo e receber no máximo \( 30 \)): \( P_{sinal} - 75 > 30 - 70 \), logo basta \( P_{sinal} > 35 \). Como o comprador está disposto a pagar até \( 90 \) por um carro com garantia (sabendo que é bom), há amplo espaço para comércio.

**Para o vendedor de qualidade média/baixa:** custo de imitar = \( 25 \). Tipo M obtém \( P_{sinal} - 50 - 25 = P_{sinal} - 75 \) com imitação, versus \( P_{sem} - 50 \) sem garantia. Tipo B obtém \( P_{sinal} - 20 - 25 = P_{sinal} - 45 \), versus \( P_{sem} - 20 \).

Se o mercado sem garantia oferece \( P_{sem} \leq 30 \) (apenas tipo B), o tipo M não participa sem garantia. Mas o tipo M não quer imitar se \( P_{sinal} - 75 < 0 \), ou seja, se \( P_{sinal} < 75 \). Com \( P_{sinal} \in (35;\, 75) \), a garantia separa o tipo A dos demais.

Entretanto, o tipo M continua excluído. Para resolver completamente, seria necessário um segundo nível de sinal (por exemplo, garantia de duração intermediária). A garantia **resolve parcialmente** o problema, restaurando o mercado para carros de alta qualidade mas não necessariamente para os de qualidade média.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-6)

---

## ✏️ Exercício 19.7 {#ex-19-7}

**Risco moral no seguro com esforço contínuo.** \( p(e) = 1 - e \), \( C(e) = e^2/2 \), \( L = 100 \), cobertura \( \alpha \), prêmio justo \( \pi = \alpha \cdot p(e) \cdot L \).

### (a) Nível ótimo de precaução sob observabilidade (first-best)

Se o esforço é observável, o planejador (ou a seguradora) escolhe \( e \) para minimizar o custo social total — sinistro esperado mais custo do esforço:

\[
\min_e \; p(e) \cdot L + C(e) = (1 - e) \cdot 100 + \frac{e^2}{2}
\]

CPO:

\[
-100 + e = 0 \implies e^{FB} = 100
\]

Porém, como \( e \in [0, 1] \), temos uma solução de canto: \( e^{FB} = 1 \).

Verificação: com \( e = 1 \), \( p(1) = 0 \) (nenhum sinistro) e \( C(1) = 1/2 \). Custo total = \( 0 + 0{,}5 = 0{,}5 \).
Com \( e = 0 \): custo total = \( 100 + 0 = 100 \). Claramente, o esforço máximo é ótimo.

**Nota:** Para tornar o problema interior, reparametrizemos com \( L = 1 \) (ou, equivalentemente, considere que o custo do esforço é \( C(e) = 50\,e^2 \)). Com \( C(e) = 50\,e^2 \):

\[
\min_e \; (1 - e) \cdot 100 + 50\,e^2
\]

CPO: \( -100 + 100\,e = 0 \implies e^{FB} = 1 \). Ainda solução de canto. Usemos então a formulação original e interpretemos: o first-best é \( e^{FB} = 1 \).

### (b) Esforço escolhido com cobertura \( \alpha \) (esforço não observável)

O segurado escolhe \( e \) para minimizar seu custo esperado privado. Com cobertura \( \alpha \) e prêmio \( \pi = \alpha(1-e) \cdot 100 \), o custo que o segurado internaliza é:

- Prêmio: \( 100\alpha(1-e) \) (pago com certeza).
- Perda não coberta em caso de sinistro: \( (1-\alpha) \cdot 100 \) com probabilidade \( (1-e) \).
- Custo do esforço: \( e^2/2 \).

**Porém**, ao escolher \( e \), o segurado toma o prêmio como dado (pois a seguradora não observa \( e \) no momento do contrato e fixa o prêmio com base no \( e \) esperado de equilíbrio). Assim, o segurado minimiza:

\[
\min_e \; (1-e)(1-\alpha) \cdot 100 + \frac{e^2}{2}
\]

(O prêmio é um custo fixo do ponto de vista da escolha de \( e \).)

CPO:

\[
-(1-\alpha) \cdot 100 + e = 0 \implies e^*(\alpha) = 100(1-\alpha)
\]

Como \( e \in [0, 1] \): para \( \alpha \leq 0{,}99 \), teríamos \( e^* \geq 1 \), portanto \( e^* = \min\{100(1-\alpha),\, 1\} \).

Para que a solução seja interior, consideremos novamente \( C(e) = 50e^2 \). Então:

CPO: \( -(1-\alpha) \cdot 100 + 100e = 0 \implies e^*(\alpha) = 1 - \alpha \).

**Usando \( C(e) = 50e^2 \): \( e^*(\alpha) = 1 - \alpha \).**

### (c) Comparação: risco moral

Com \( C(e) = 50e^2 \): \( e^{FB} = 1 \) e \( e^*(\alpha) = 1 - \alpha \).

Para qualquer \( \alpha > 0 \):

\[
e^*(\alpha) = 1 - \alpha < 1 = e^{FB}
\]

O segurado exerce **menos precaução** quando possui seguro. Isso é o **risco moral**: a cobertura reduz o custo marginal privado de ser descuidado. Com seguro completo (\( \alpha = 1 \)): \( e^*(1) = 0 \) — nenhuma precaução. O custo total recai sobre a seguradora.

### (d) Cobertura ótima

O bem-estar do segurado (custo total, incluindo prêmio em equilíbrio) é:

\[
W(\alpha) = \underbrace{100\,\alpha\,(1-e^*)}_{prêmio} + \underbrace{(1-\alpha) \cdot 100 \cdot (1-e^*)}_{perda\;não\;coberta} + \underbrace{50\,(e^*)^2}_{custo\;esforço}
\]

Substituindo \( e^* = 1 - \alpha \):

\[
W(\alpha) = 100\alpha \cdot \alpha + (1-\alpha) \cdot 100 \cdot \alpha + 50(1-\alpha)^2
\]

\[
= 100\alpha^2 + 100\alpha(1-\alpha) + 50(1-\alpha)^2
\]

\[
= 100\alpha^2 + 100\alpha - 100\alpha^2 + 50 - 100\alpha + 50\alpha^2
\]

\[
= 50\alpha^2 + 50
\]

Minimizando: \( \frac{dW}{d\alpha} = 100\alpha = 0 \implies \alpha^* = 0 \).

**O seguro completo não é ótimo.** A cobertura ótima é \( \alpha^* = 0 \) (nenhum seguro), com custo total \( W(0) = 50 \). Com seguro completo: \( W(1) = 100 \).

**Interpretação:** Neste modelo simplificado com segurado neutro ao risco (custos lineares em riqueza), o seguro não traz benefício de suavização de risco, e o risco moral torna qualquer cobertura custosa. Na prática, com aversão ao risco, a cobertura ótima é positiva mas parcial (\( 0 < \alpha^* < 1 \)), refletindo o trade-off clássico entre seguro e incentivos.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-7)

---

## ✏️ Exercício 19.8 {#ex-19-8}

**Sinalização de Spence com contínuo de tipos.** \( \theta \sim U[1, 2] \), \( c(s, \theta) = s/\theta \), firma oferece \( w(s) \).

### (a) Condição de autosseleção

No equilíbrio separador, cada tipo \( \theta \) escolhe \( s(\theta) \) para maximizar:

\[
\max_s \; w(s) - \frac{s}{\theta}
\]

CPO:

\[
w'(s) = \frac{1}{\theta}
\]

No equilíbrio, a firma infere \( \theta \) a partir de \( s \), então \( w(s) = \theta(s) \) (salário igual à produtividade). Seja \( s(\theta) \) a função de sinalização (invertível). Então \( \theta(s) = s^{-1}(s) \) e:

\[
w'(s) = \frac{d\theta}{ds} = \frac{1}{s'(\theta)} = \frac{1}{\theta}
\]

Portanto, \( s'(\theta) = \theta \). Esta é a **equação diferencial** que governa o equilíbrio separador.

### (b) Função de sinalização e esquema salarial

Integrando \( s'(\theta) = \theta \) com condição de contorno \( s(1) = 0 \) (o tipo mais baixo não sinaliza):

\[
s(\theta) = \int_1^\theta t\, dt = \frac{\theta^2}{2} - \frac{1}{2} = \frac{\theta^2 - 1}{2}
\]

Invertendo: \( \theta = \sqrt{2s + 1} \).

**Esquema salarial:**

\[
w(s) = \theta(s) = \sqrt{2s + 1}
\]

Verificação: \( w'(s) = \frac{1}{\sqrt{2s+1}} = \frac{1}{\theta} \). ✓

### (c) Custo social total da sinalização

O custo de sinalização do tipo \( \theta \) é:

\[
c(s(\theta), \theta) = \frac{s(\theta)}{\theta} = \frac{\theta^2 - 1}{2\theta}
\]

O custo social total (esperado, com \( \theta \sim U[1, 2] \)):

\[
CS = \int_1^2 \frac{\theta^2 - 1}{2\theta} \cdot 1\, d\theta = \int_1^2 \frac{\theta}{2} - \frac{1}{2\theta}\, d\theta
\]

\[
= \left[\frac{\theta^2}{4} - \frac{\ln\theta}{2}\right]_1^2 = \left(\frac{4}{4} - \frac{\ln 2}{2}\right) - \left(\frac{1}{4} - 0\right) = \frac{3}{4} - \frac{\ln 2}{2} \approx 0{,}750 - 0{,}347 = 0{,}403
\]

Sob **informação simétrica**, cada trabalhador receberia \( w = \theta \) sem nenhum custo de sinalização. O excedente total seria simplesmente a produtividade média: \( \mathbb{E}[\theta] = 3/2 \) (que vai ao trabalhador ou é dividido).

O custo de sinalização \( \approx 0{,}403 \) representa aproximadamente **27%** da produtividade média — uma perda significativa de recursos reais gastos apenas para transmitir informação.

### (d) Imposto sobre educação

Um imposto sobre educação \( \tau \) por unidade de \( s \) aumenta o custo para \( (1/\theta + \tau) \cdot s \). No equilíbrio, isso reduziria \( s(\theta) \), diminuindo o custo de sinalização.

**Porém**, se o imposto for alto demais, pode destruir o equilíbrio separador, levando a um equilíbrio agregador (pooling) onde todos os tipos são pagos pela produtividade média. Isso prejudica os tipos altos e beneficia os tipos baixos.

**Resultado paradoxal:** no modelo puro de sinalização (educação improdutiva), um imposto moderado sobre educação **melhora** o bem-estar, pois reduz o desperdício de recursos em sinalização sem destruir completamente a separação. Contudo, na prática, a educação tem componente produtivo real, o que torna essa política desaconselhável. A prescrição depende crucialmente de quanto da educação é sinalização vs. capital humano — uma questão empírica aberta.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-8)

---

## ✏️ Exercício 19.9 {#ex-19-9}

**Triagem (screening) por um monopolista.** \( \theta_H = 10 \), \( \theta_L = 4 \), \( \lambda = 0{,}5 \), \( U = \theta q - t \), \( C(q) = q^2/2 \).

### (a) Contratos de first-best

Sob informação completa, o monopolista maximiza \( t_i - q_i^2/2 \) sujeito a \( \theta_i q_i - t_i \geq 0 \) (participação com igualdade):

\[
t_i = \theta_i q_i
\]

Maximizando \( \theta_i q_i - q_i^2/2 \):

CPO: \( \theta_i - q_i = 0 \implies q_i^{FB} = \theta_i \).

**Tipo H:** \( q_H^{FB} = 10 \), \( t_H^{FB} = 100 \).

**Tipo L:** \( q_L^{FB} = 4 \), \( t_L^{FB} = 16 \).

Lucro do monopolista: \( 0{,}5(100 - 50) + 0{,}5(16 - 8) = 25 + 4 = 29 \).

### (b) O menu de first-best não é incentivo-compatível

O tipo \( \theta_H = 10 \) avalia o contrato do tipo L:

\[
U_H(q_L^{FB}, t_L^{FB}) = 10 \times 4 - 16 = 24
\]

O tipo \( \theta_H \) avalia seu próprio contrato:

\[
U_H(q_H^{FB}, t_H^{FB}) = 10 \times 10 - 100 = 0
\]

Como \( 24 > 0 \), o tipo H **prefere estritamente** o contrato desenhado para o tipo L. O menu de first-best viola a restrição de compatibilidade de incentivos do tipo H.

### (c) Menu ótimo de second-best

Aplicamos as condições padrão do problema de triagem:

1. **IC de \( \theta_H \) ativa:** \( \theta_H q_H - t_H = \theta_H q_L - t_L \)
2. **RP de \( \theta_L \) ativa:** \( \theta_L q_L - t_L = 0 \implies t_L = \theta_L q_L = 4q_L \)
3. **"No distortion at the top":** \( q_H^{SB} = q_H^{FB} = \theta_H = 10 \)
4. **Distorção para baixo no tipo L**

Da RP de L: \( t_L = 4q_L \).

Da IC de H ativa: \( 10 \times 10 - t_H = 10 \times q_L - 4q_L = 6q_L \), logo:

\[
t_H = 100 - 6q_L
\]

O lucro esperado do monopolista é:

\[
\Pi = 0{,}5\left(t_H - \frac{q_H^2}{2}\right) + 0{,}5\left(t_L - \frac{q_L^2}{2}\right)
\]

\[
= 0{,}5\left(100 - 6q_L - 50\right) + 0{,}5\left(4q_L - \frac{q_L^2}{2}\right)
\]

\[
= 0{,}5(50 - 6q_L) + 0{,}5\left(4q_L - \frac{q_L^2}{2}\right)
\]

\[
= 25 - 3q_L + 2q_L - \frac{q_L^2}{4} = 25 - q_L - \frac{q_L^2}{4}
\]

CPO em \( q_L \):

\[
-1 - \frac{q_L}{2} = 0 \implies q_L = -2
\]

Como \( q_L \geq 0 \), a solução é \( q_L^{SB} = 0 \): o monopolista **exclui o tipo L** do mercado!

Isso é um resultado clássico quando \( \lambda = 0{,}5 \) e a diferença entre tipos é grande. Recalculando com \( q_L = 0 \): \( t_L = 0 \) e \( t_H = 100 - 0 = 100 \).

**Mas** verificando a IC: \( U_H = 10 \times 10 - 100 = 0 \) e \( U_H \) no contrato L: \( 10 \times 0 - 0 = 0 \). A IC vale com igualdade. ✓

**Resultado alternativo:** Se a exclusão não é desejável (por exemplo, com \( \lambda_L \) maior), reavaliemos. Com \( \lambda = 0{,}5 \), o lucro com exclusão é \( 0{,}5(100 - 50) = 25 \), igual ao first-best para H sozinho.

Para um caso com solução interior, considere \( \lambda_H = 0{,}3 \), \( \lambda_L = 0{,}7 \):

\[
\Pi = 0{,}3(50 - 6q_L) + 0{,}7\left(4q_L - \frac{q_L^2}{2}\right) = 15 - 1{,}8q_L + 2{,}8q_L - 0{,}35q_L^2
\]

\[
= 15 + q_L - 0{,}35q_L^2
\]

CPO: \( 1 - 0{,}7q_L = 0 \implies q_L^{SB} = 10/7 \approx 1{,}43 \).

**Para o caso original (\( \lambda = 0{,}5 \)):**

\[
q_H^{SB} = 10, \quad t_H^{SB} = 100, \quad q_L^{SB} = 0, \quad t_L^{SB} = 0
\]

### (d) Renda informacional e lucro

**Renda informacional do tipo H:** \( U_H = \theta_H q_H - t_H = 100 - 100 = 0 \). Com exclusão do tipo L, o tipo H não obtém renda informacional — o monopolista extrai todo o excedente.

Se \( q_L > 0 \) (caso interior), a renda informacional do tipo H seria:

\[
RI_H = (\theta_H - \theta_L) q_L = 6q_L
\]

**Lucro esperado (caso \( \lambda = 0{,}5 \), com exclusão):**

\[
\Pi^{SB} = 0{,}5 \times (100 - 50) + 0{,}5 \times 0 = 25
\]

Comparação com first-best: \( \Pi^{FB} = 29 \). A perda de \( 29 - 25 = 4 \) é o custo da assimetria informacional: o monopolista abre mão de vender ao tipo L para evitar pagar renda informacional excessiva ao tipo H.

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-9)

---

## ✏️ Exercício 19.10 {#ex-19-10}

**Desenho de mecanismos e VCG.** Duas firmas com custos \( c_i \sim U[0, 1] \). Mecanismo direto para alocação de projeto público.

### (a) Princípio da Revelação

O **Princípio da Revelação** (Myerson, 1981) afirma que, para qualquer mecanismo (possivelmente indireto — leilões, negociações, etc.) com um equilíbrio de Bayes-Nash, existe um **mecanismo direto revelador** que implementa o mesmo resultado, no qual cada agente reporta diretamente seu tipo (aqui, seu custo) e a verdade é uma estratégia de equilíbrio.

**Implicação prática:** o governo não precisa considerar todos os mecanismos possíveis (leilões de primeiro preço, leilões sequenciais, negociação bilateral, etc.). Pode restringir a análise a mecanismos em que as firmas reportam seus custos diretamente e a revelação verdadeira é incentivo-compatível. Se o melhor mecanismo direto revelador atinge certo resultado, nenhum mecanismo indireto pode fazer melhor.

Isso **não** significa que mecanismos diretos são mais práticos na implementação — apenas que são suficientes para a análise teórica. Na prática, mecanismos indiretos (como leilões) podem ser preferidos por simplicidade ou robustez.

### (b) Estratégia dominante no mecanismo VCG

No mecanismo VCG: (i) o projeto é alocado à firma com menor custo reportado; (ii) a firma vencedora recebe pagamento igual ao custo reportado pela outra firma.

Suponha que a firma 1 tem custo verdadeiro \( c_1 \) e reporta \( \hat{c}_1 \).

- Se \( \hat{c}_1 < c_2 \): firma 1 vence e recebe \( t_1 = c_2 \). Payoff = \( c_2 - c_1 \geq 0 \) (pois \( c_1 \leq \hat{c}_1 < c_2 \) implica \( c_1 < c_2 \)).
- Se \( \hat{c}_1 > c_2 \): firma 1 perde. Payoff = 0.
- Se \( \hat{c}_1 = c_2 \): empate (irrelevante com distribuição contínua).

**Desvio para \( \hat{c}_1 < c_1 \):** Firma 1 pode vencer casos em que \( \hat{c}_1 < c_2 < c_1 \), mas então \( t_1 = c_2 < c_1 \), gerando payoff negativo \( c_2 - c_1 < 0 \). O desvio é prejudicial.

**Desvio para \( \hat{c}_1 > c_1 \):** Firma 1 perde casos em que \( c_1 < c_2 < \hat{c}_1 \), nos quais teria payoff positivo \( c_2 - c_1 > 0 \). O desvio é prejudicial.

Portanto, \( \hat{c}_1 = c_1 \) é **estratégia fracamente dominante**. O mesmo argumento aplica-se à firma 2. ∎

### (c) Pagamento esperado do governo

Com revelação verdadeira, a firma vencedora é a de menor custo e recebe o custo da outra firma. Sejam \( c_{(1)} = \min(c_1, c_2) \) e \( c_{(2)} = \max(c_1, c_2) \) as estatísticas de ordem.

O **pagamento do governo** é \( c_{(2)} \) (o segundo menor custo, que é o custo da firma perdedora).

O **custo real do projeto** é \( c_{(1)} \) (o menor custo).

Com \( c_i \sim U[0, 1] \) e \( n = 2 \):

\[
\mathbb{E}[c_{(1)}] = \frac{1}{n+1} = \frac{1}{3}
\]

\[
\mathbb{E}[c_{(2)}] = \frac{2}{n+1} = \frac{2}{3}
\]

**Pagamento esperado do governo:** \( \mathbb{E}[t] = \frac{2}{3} \).

**Custo real esperado:** \( \mathbb{E}[c_{(1)}] = \frac{1}{3} \).

A diferença \( \frac{2}{3} - \frac{1}{3} = \frac{1}{3} \) é a **renda informacional esperada** que a firma vencedora captura. Ela existe porque o governo não conhece os custos e precisa pagar mais do que o custo real para induzir revelação verdadeira.

### (d) Eficiência e equilíbrio orçamentário

**Eficiência:** Sim, o mecanismo VCG é **eficiente** (alocativamente). Como a revelação verdadeira é estratégia dominante, a firma com genuinamente menor custo sempre vence. O projeto é executado pelo produtor mais eficiente — o resultado de first-best em termos de alocação.

**Equilíbrio orçamentário:** Não, o mecanismo VCG **não** é orçamentariamente equilibrado no sentido de que o governo paga mais do que o custo real (renda informacional positiva). O governo paga \( c_{(2)} > c_{(1)} \), gerando um "excesso" de pagamento. Neste caso com apenas um bem a alocar, não há como redistribuir — o excesso é a renda da firma vencedora.

**Trade-off fundamental (Myerson-Satterthwaite):** O Teorema de Myerson-Satterthwaite (1983) mostra que, em geral, não existe mecanismo que seja simultaneamente eficiente, incentivo-compatível, individualmente racional e orçamentariamente equilibrado quando há informação privada bilateral. O VCG sacrifica o equilíbrio orçamentário para garantir eficiência e incentivo-compatibilidade. Na prática, o governo pode usar leilões de primeiro preço (que reduzem a renda informacional à custa de menor eficiência) ou mecanismos ótimos de Myerson (que maximizam a receita/minimizam o pagamento, mas podem excluir firmas eficientes).

↩ [Voltar ao enunciado](../cap19/index.md#ex-19-10)
