# Banco de Questões — Capítulo 2: Ferramentas Matemáticas do Economista

> Microeconomia II — Insper
> Total de questões: 28
> Tópicos: otimização (CPO/CSO), Lagrangiano, teorema do envelope, elasticidade, homogeneidade, teorema de Euler

---

## Múltipla Escolha — Conceituais (Bloom 1-2)

---

### Q-CAP02-001 | Múltipla Escolha | Bloom 1 | Fácil

**Enunciado**: A condição de primeira ordem (CPO) de um problema de maximização irrestrita $\max_{x} f(x)$ exige que:

**Alternativas**:
- (a) $f'(x) > 0$
- (b) $f'(x) = 0$
- (c) $f''(x) = 0$
- (d) $f''(x) > 0$
- (e) $f'(x) < 0$

**Resposta**: (b)

**Resolução**: A CPO estabelece que, em um ponto de máximo (ou mínimo) interior, a derivada primeira da função deve ser igual a zero, ou seja, $f'(x^*) = 0$. Isso identifica os pontos estacionários (candidatos a extremos).

**Feedback incorretas**:
- (a): $f'(x) > 0$ indica que a função é crescente naquele ponto, não um extremo.
- (c): $f''(x) = 0$ é relevante para pontos de inflexão, não para a CPO.
- (d): $f''(x) > 0$ é a condição de segunda ordem para mínimo, não a CPO.
- (e): $f'(x) < 0$ indica que a função é decrescente naquele ponto.

**Tags**: CPO, otimização irrestrita, cálculo
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP02-002 | Múltipla Escolha | Bloom 2 | Fácil

**Enunciado**: No método de Lagrange para o problema $\max f(x,y)$ sujeito a $g(x,y) = c$, o multiplicador $\lambda$ possui a seguinte interpretação econômica:

**Alternativas**:
- (a) É o valor máximo da função objetivo.
- (b) Representa a taxa marginal de substituição entre $x$ e $y$.
- (c) Mede a variação no valor ótimo da função objetivo quando a restrição é marginalmente relaxada.
- (d) Indica se a solução é um máximo ou um mínimo.
- (e) Corresponde à elasticidade da função objetivo em relação a $c$.

**Resposta**: (c)

**Resolução**: Pelo teorema do envelope, $\lambda^* = \frac{\partial f^*}{\partial c}$, onde $f^*$ é o valor ótimo. Assim, $\lambda$ mede a sensibilidade do valor ótimo a variações marginais no lado direito da restrição.

**Feedback incorretas**:
- (a): O valor máximo é $f(x^*, y^*)$, não o multiplicador.
- (b): A TMS é $-\frac{f_x}{f_y}$, diferente de $\lambda$.
- (d): Quem determina máximo vs. mínimo é a condição de segunda ordem (hessiana orlada).
- (e): Elasticidade envolve variação percentual; $\lambda$ mede variação absoluta.

**Tags**: Lagrangiano, multiplicador, interpretação econômica
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP02-003 | Múltipla Escolha | Bloom 1 | Fácil

**Enunciado**: Uma função $f(x_1, x_2)$ é homogênea de grau $k$ se, para todo $t > 0$:

**Alternativas**:
- (a) $f(tx_1, tx_2) = t \cdot f(x_1, x_2)$
- (b) $f(tx_1, tx_2) = t^k \cdot f(x_1, x_2)$
- (c) $f(tx_1, tx_2) = k \cdot f(x_1, x_2)$
- (d) $f(tx_1, tx_2) = f(x_1, x_2) + k$
- (e) $f(tx_1, tx_2) = f(x_1, x_2)^k$

**Resposta**: (b)

**Resolução**: Por definição, $f$ é homogênea de grau $k$ quando $f(tx_1, tx_2) = t^k f(x_1, x_2)$ para todo $t > 0$. A alternativa (a) seria o caso particular $k = 1$.

**Feedback incorretas**:
- (a): Essa é a definição de homogeneidade de grau 1 apenas.
- (c): Multiplicar por $k$ não corresponde à definição de homogeneidade.
- (d): Somar $k$ faz a função não ser homogênea (não preserva a estrutura multiplicativa).
- (e): Elevar $f$ à potência $k$ não corresponde à definição.

**Tags**: homogeneidade, definição, funções
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP02-004 | Múltipla Escolha | Bloom 2 | Fácil

**Enunciado**: A elasticidade-preço da demanda é definida como $\varepsilon = \frac{\partial Q}{\partial P} \cdot \frac{P}{Q}$. Se $\varepsilon = -2$, isso significa que:

**Alternativas**:
- (a) Quando o preço sobe 1%, a quantidade demandada cai 2%.
- (b) Quando o preço sobe R\$1, a quantidade demandada cai 2 unidades.
- (c) A demanda é inelástica.
- (d) A receita total sempre aumenta quando o preço sobe.
- (e) A curva de demanda é linear.

**Resposta**: (a)

**Resolução**: A elasticidade mede a variação percentual na quantidade demandada em resposta a uma variação percentual no preço. Com $\varepsilon = -2$, um aumento de 1% no preço gera uma queda de 2% na quantidade demandada (em valor absoluto, $|\varepsilon| = 2 > 1$, demanda elástica).

**Feedback incorretas**:
- (b): Essa seria a interpretação da derivada $\frac{\partial Q}{\partial P}$, não da elasticidade.
- (c): Com $|\varepsilon| = 2 > 1$, a demanda é elástica, não inelástica.
- (d): Com demanda elástica, a receita total cai quando o preço sobe.
- (e): A elasticidade não determina a forma funcional da curva.

**Tags**: elasticidade, demanda, interpretação
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP02-005 | Múltipla Escolha | Bloom 2 | Médio

**Enunciado**: O teorema de Euler para uma função homogênea de grau $k$, $f(x_1, x_2)$, afirma que:

**Alternativas**:
- (a) $x_1 f_1 + x_2 f_2 = f(x_1, x_2)$
- (b) $x_1 f_1 + x_2 f_2 = k \cdot f(x_1, x_2)$
- (c) $f_1 + f_2 = k$
- (d) $x_1 f_1 \cdot x_2 f_2 = k \cdot f(x_1, x_2)$
- (e) $f_1 / f_2 = k$

**Resposta**: (b)

**Resolução**: O teorema de Euler estabelece que, se $f$ é homogênea de grau $k$, então $\sum_i x_i \frac{\partial f}{\partial x_i} = k \cdot f(x_1, x_2)$. Para duas variáveis: $x_1 f_1 + x_2 f_2 = k \cdot f(x_1, x_2)$.

**Feedback incorretas**:
- (a): Essa seria a identidade de Euler apenas para $k = 1$.
- (c): A soma das derivadas parciais não é igual a $k$ em geral.
- (d): O teorema envolve soma, não produto.
- (e): A razão das derivadas parciais não é igual a $k$.

**Tags**: teorema de Euler, homogeneidade, derivadas parciais
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

## Múltipla Escolha — Aplicadas (Bloom 3-4)

---

### Q-CAP02-006 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: Uma firma brasileira possui função de produção $f(L, K) = L^{0{,}5} K^{0{,}5}$, onde $L$ é trabalho e $K$ é capital. O custo do trabalho é $w = \text{R\$}\,20$/hora e o custo do capital é $r = \text{R\$}\,5$/hora. Se a firma deseja produzir exatamente $q = 10$ unidades, qual é a condição que determina a combinação ótima de insumos?

**Alternativas**:
- (a) $L = K$
- (b) $\frac{K}{L} = \frac{w}{r} = 4$
- (c) $\frac{L}{K} = \frac{w}{r} = 4$
- (d) $\frac{K}{L} = \frac{r}{w} = 0{,}25$
- (e) $L + K = 10$

**Resposta**: (b)

**Resolução**: A condição de otimalidade iguala a taxa marginal de substituição técnica à razão de preços dos fatores. Com $f = L^{0{,}5}K^{0{,}5}$:
$$TMST = \frac{f_L}{f_K} = \frac{0{,}5 L^{-0{,}5}K^{0{,}5}}{0{,}5 L^{0{,}5}K^{-0{,}5}} = \frac{K}{L}$$
Igualando a $\frac{w}{r} = \frac{20}{5} = 4$, temos $\frac{K}{L} = 4$, ou seja, $K = 4L$.

**Feedback incorretas**:
- (a): $L = K$ ocorreria se $w = r$, mas $w \neq r$.
- (c): Inverte a razão; o correto é $K/L = w/r$, não $L/K$.
- (d): Essa razão usa $r/w$ em vez de $w/r$.
- (e): A restrição de produção é $L^{0{,}5}K^{0{,}5} = 10$, não $L + K = 10$.

**Tags**: Lagrangiano, minimização de custos, Cobb-Douglas, TMST
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP02-007 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: Considere o problema $\max_{x,y} \; U = x^{0{,}4}y^{0{,}6}$ sujeito a $2x + 3y = 120$ (orçamento em R\$). Qual é a proporção da renda gasta com o bem $x$?

**Alternativas**:
- (a) 60%
- (b) 50%
- (c) 40%
- (d) 33%
- (e) 25%

**Resposta**: (c)

**Resolução**: Para a utilidade Cobb-Douglas $U = x^\alpha y^\beta$, a fração da renda gasta com $x$ é $\frac{\alpha}{\alpha + \beta}$. Com $\alpha = 0{,}4$ e $\beta = 0{,}6$:
$$\text{Fração em } x = \frac{0{,}4}{0{,}4 + 0{,}6} = \frac{0{,}4}{1} = 0{,}4 = 40\%$$
Logo, gasta-se $0{,}4 \times 120 = \text{R\$}\,48$ com o bem $x$.

**Feedback incorretas**:
- (a): 60% corresponde ao expoente de $y$, não de $x$.
- (b): 50% ocorreria se os expoentes fossem iguais.
- (d): 33% não corresponde a nenhuma relação dos parâmetros.
- (e): 25% não é derivado dos expoentes dados.

**Tags**: Cobb-Douglas, otimização, fração de renda, Lagrangiano
**Uso**: problem_set
**Tempo**: 2 min

---

### Q-CAP02-008 | Múltipla Escolha | Bloom 4 | Médio

**Enunciado**: Considere a função de custo total $C(q) = 100 + 4q + 0{,}5q^2$ de uma firma em São Paulo. O custo marginal iguala o custo médio quando:

**Alternativas**:
- (a) $q = 10\sqrt{2} \approx 14{,}14$
- (b) $q = 10$
- (c) $q = 20$
- (d) $q = 5$
- (e) $q = 0$

**Resposta**: (a)

**Resolução**:
- Custo marginal: $CMg = C'(q) = 4 + q$
- Custo médio: $CMe = \frac{C(q)}{q} = \frac{100}{q} + 4 + 0{,}5q$
- Igualando: $4 + q = \frac{100}{q} + 4 + 0{,}5q$
- Simplificando: $q - 0{,}5q = \frac{100}{q} \Rightarrow 0{,}5q = \frac{100}{q} \Rightarrow q^2 = 200 \Rightarrow q = \sqrt{200} = 10\sqrt{2} \approx 14{,}14$.

**Feedback incorretas**:
- (b): $q = 10$ dá $CMg = 14$ e $CMe = 19$; não são iguais.
- (c): $q = 20$ dá $CMg = 24$ e $CMe = 19$; não são iguais.
- (d): $q = 5$ dá $CMg = 9$ e $CMe = 26{,}5$; não são iguais.
- (e): $q = 0$ torna o $CMe$ indefinido.

**Tags**: custo marginal, custo médio, otimização, ponto de eficiência
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP02-009 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: Pelo teorema do envelope, se $V(p, m) = \max_{x,y} U(x,y)$ sujeito a $px + y = m$, então $\frac{\partial V}{\partial m}$ é igual a:

**Alternativas**:
- (a) A utilidade marginal do bem $x$.
- (b) O preço do bem $x$.
- (c) O multiplicador de Lagrange $\lambda^*$ na solução ótima.
- (d) A quantidade ótima de $x$.
- (e) Zero, pois $V$ é constante.

**Resposta**: (c)

**Resolução**: O teorema do envelope afirma que a derivada da função valor em relação ao parâmetro da restrição é igual ao multiplicador de Lagrange avaliado no ótimo. Como $m$ aparece na restrição $px + y = m$, temos $\frac{\partial V}{\partial m} = \lambda^*$, que representa a utilidade marginal da renda.

**Feedback incorretas**:
- (a): A utilidade marginal de $x$ é $\frac{\partial U}{\partial x}$, diferente de $\lambda^*$.
- (b): O preço $p$ é um parâmetro dado, não o resultado da derivada.
- (d): A quantidade ótima $x^*$ é uma função de $p$ e $m$, mas não é $\frac{\partial V}{\partial m}$.
- (e): $V$ varia com $m$ (mais renda permite maior utilidade).

**Tags**: teorema do envelope, função valor, utilidade marginal da renda
**Uso**: problem_set
**Tempo**: 2 min

---

### Q-CAP02-010 | Múltipla Escolha | Bloom 4 | Difícil

**Enunciado**: A função de produção $f(L, K) = A L^\alpha K^\beta$ apresenta retornos constantes de escala. Se dobrarmos todos os insumos, o custo total dobra. Pelo teorema de Euler, o lucro econômico de longo prazo será:

**Alternativas**:
- (a) Positivo, pois a firma é eficiente.
- (b) Zero, pois a receita se esgota pagando os fatores por suas produtividades marginais.
- (c) Negativo, pois há custos fixos.
- (d) Igual a $A$, o parâmetro de produtividade.
- (e) Indeterminado sem mais informações.

**Resposta**: (b)

**Resolução**: Com retornos constantes de escala, $\alpha + \beta = 1$ e $f$ é homogênea de grau 1. Pelo teorema de Euler: $L \cdot f_L + K \cdot f_K = 1 \cdot f(L,K) = q$. Se cada fator recebe sua produtividade marginal ($w = f_L$, $r = f_K$), então $wL + rK = q \cdot p$ (se $p = 1$). Toda a receita é distribuída entre os fatores, e o lucro econômico é zero.

**Feedback incorretas**:
- (a): Eficiência não garante lucro positivo; com concorrência perfeita e RCE, lucro é zero.
- (c): Com RCE no longo prazo, não há custos fixos; todos os custos são variáveis.
- (d): $A$ é produtividade total dos fatores, não lucro.
- (e): O teorema de Euler fornece resultado determinado com RCE.

**Tags**: retornos de escala, teorema de Euler, lucro zero, homogeneidade grau 1
**Uso**: prova
**Tempo**: 3 min

---

## Verdadeiro ou Falso Justificado (Bloom 2-3)

---

### Q-CAP02-011 | Verdadeiro ou Falso | Bloom 2 | Fácil

**Enunciado**: Julgue a afirmação e justifique: "Se a condição de primeira ordem $f'(x^*) = 0$ é satisfeita, então $x^*$ é necessariamente um ponto de máximo."

**Resposta**: FALSO

**Resolução**: A CPO $f'(x^*) = 0$ é condição necessária para extremo interior, mas não suficiente para máximo. O ponto pode ser um mínimo (se $f''(x^*) > 0$) ou um ponto de inflexão (se $f''(x^*) = 0$). É preciso verificar a condição de segunda ordem ($f''(x^*) < 0$ para máximo) para confirmar a natureza do ponto estacionário.

**Tags**: CPO, CSO, condição necessária vs. suficiente
**Uso**: quiz_pre_aula
**Tempo**: 2 min

---

### Q-CAP02-012 | Verdadeiro ou Falso | Bloom 3 | Médio

**Enunciado**: Julgue a afirmação e justifique: "Se $f(x_1, x_2)$ é homogênea de grau 2, então suas derivadas parciais $f_1$ e $f_2$ são homogêneas de grau 2 também."

**Resposta**: FALSO

**Resolução**: Se $f$ é homogênea de grau $k$, suas derivadas parciais são homogêneas de grau $k - 1$. Portanto, se $f$ é homogênea de grau 2, $f_1$ e $f_2$ são homogêneas de grau $2 - 1 = 1$. Demonstração: derivando $f(tx_1, tx_2) = t^2 f(x_1, x_2)$ em relação a $x_1$: $t \cdot f_1(tx_1, tx_2) = t^2 f_1(x_1, x_2)$, logo $f_1(tx_1, tx_2) = t^1 f_1(x_1, x_2)$.

**Tags**: homogeneidade, derivadas parciais, propriedades
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP02-013 | Verdadeiro ou Falso | Bloom 2 | Fácil

**Enunciado**: Julgue a afirmação e justifique: "O multiplicador de Lagrange $\lambda$ sempre tem sinal positivo em problemas de maximização de utilidade."

**Resposta**: VERDADEIRO (sob as hipóteses usuais)

**Resolução**: Em problemas de maximização de utilidade com preferências monotônicas (mais é melhor), o consumidor sempre deseja mais renda. Logo, $\lambda^* = \frac{\partial V}{\partial m} > 0$: um incremento marginal na renda sempre eleva a utilidade máxima atingível. Isso se mantém desde que a função utilidade seja crescente em pelo menos um dos bens, o que é garantido pelo axioma de monotonicidade.

**Tags**: Lagrangiano, multiplicador, monotonicidade, sinal
**Uso**: quiz_pre_aula
**Tempo**: 2 min

---

## Questões Numéricas / Cálculo (Bloom 3)

---

### Q-CAP02-014 | Numérica | Bloom 3 | Médio

**Enunciado**: Um consumidor possui utilidade $U(x, y) = x^{0{,}3} y^{0{,}7}$. Os preços são $p_x = \text{R\$}\,6$ e $p_y = \text{R\$}\,14$, e a renda é $m = \text{R\$}\,420$. Encontre as quantidades ótimas $x^*$ e $y^*$.

**Resposta**: $x^* = 21$, $y^* = 21$

**Resolução**:
1. **Montar o Lagrangiano**: $\mathcal{L} = x^{0{,}3}y^{0{,}7} + \lambda(420 - 6x - 14y)$
2. **CPO**:
   - $\frac{\partial \mathcal{L}}{\partial x} = 0{,}3 x^{-0{,}7} y^{0{,}7} = 6\lambda$
   - $\frac{\partial \mathcal{L}}{\partial y} = 0{,}7 x^{0{,}3} y^{-0{,}3} = 14\lambda$
3. **Dividir as CPOs**: $\frac{0{,}3 y}{0{,}7 x} = \frac{6}{14} = \frac{3}{7}$
4. Simplificando: $\frac{0{,}3 y}{0{,}7 x} = \frac{3}{7} \Rightarrow \frac{3y}{7x} = \frac{3}{7} \Rightarrow y = x$
5. **Substituir na restrição**: $6x + 14x = 420 \Rightarrow 20x = 420 \Rightarrow x^* = 21$
6. Logo, $y^* = 21$.

**Verificação pela regra Cobb-Douglas**: $x^* = \frac{0{,}3}{1} \cdot \frac{420}{6} = 0{,}3 \times 70 = 21$; $y^* = \frac{0{,}7}{1} \cdot \frac{420}{14} = 0{,}7 \times 30 = 21$. ✓

**Tags**: Cobb-Douglas, Lagrangiano, otimização do consumidor
**Uso**: problem_set
**Tempo**: 5 min

---

### Q-CAP02-015 | Numérica | Bloom 3 | Médio

**Enunciado**: A demanda por um produto em uma cidade brasileira é $Q(P) = 200 - 4P$. Calcule a elasticidade-preço da demanda quando $P = \text{R\$}\,25$.

**Resposta**: $\varepsilon = -1$

**Resolução**:
1. **Quantidade quando** $P = 25$: $Q = 200 - 4(25) = 200 - 100 = 100$
2. **Derivada**: $\frac{dQ}{dP} = -4$
3. **Elasticidade**: $\varepsilon = \frac{dQ}{dP} \cdot \frac{P}{Q} = (-4) \cdot \frac{25}{100} = -4 \times 0{,}25 = -1$

A demanda tem elasticidade unitária nesse ponto: uma variação de 1% no preço gera variação de 1% na quantidade (em módulo).

**Tags**: elasticidade, demanda linear, cálculo pontual
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP02-016 | Numérica | Bloom 3 | Médio

**Enunciado**: Verifique se a função $f(L, K) = 3L^{2/3}K^{1/3}$ é homogênea e determine seu grau. Em seguida, aplique o teorema de Euler e confirme a identidade.

**Resposta**: Homogênea de grau 1.

**Resolução**:
1. **Teste de homogeneidade**: $f(tL, tK) = 3(tL)^{2/3}(tK)^{1/3} = 3 \cdot t^{2/3} L^{2/3} \cdot t^{1/3} K^{1/3} = t^{2/3 + 1/3} \cdot 3L^{2/3}K^{1/3} = t^1 \cdot f(L,K)$. Grau $k = 1$.
2. **Derivadas parciais**:
   - $f_L = 3 \cdot \frac{2}{3} L^{-1/3} K^{1/3} = 2 L^{-1/3} K^{1/3}$
   - $f_K = 3 \cdot \frac{1}{3} L^{2/3} K^{-2/3} = L^{2/3} K^{-2/3}$
3. **Euler**: $L \cdot f_L + K \cdot f_K = L \cdot 2L^{-1/3}K^{1/3} + K \cdot L^{2/3}K^{-2/3}$
   $= 2L^{2/3}K^{1/3} + L^{2/3}K^{1/3} = 3L^{2/3}K^{1/3} = f(L,K)$ ✓

**Tags**: homogeneidade, teorema de Euler, verificação, retornos constantes
**Uso**: problem_set
**Tempo**: 5 min

---

### Q-CAP02-017 | Numérica | Bloom 3 | Difícil

**Enunciado**: Resolva o problema de minimização de custos: $\min_{L,K} \; 10L + 40K$ sujeito a $L^{1/2}K^{1/2} = 20$. Determine $L^*$, $K^*$ e o custo mínimo.

**Resposta**: $L^* = 40$, $K^* = 10$, $C^* = \text{R\$}\,800$

**Resolução**:
1. **Lagrangiano**: $\mathcal{L} = 10L + 40K + \mu(20 - L^{1/2}K^{1/2})$
2. **CPOs**:
   - $\frac{\partial \mathcal{L}}{\partial L} = 10 - \mu \cdot \frac{1}{2}L^{-1/2}K^{1/2} = 0$
   - $\frac{\partial \mathcal{L}}{\partial K} = 40 - \mu \cdot \frac{1}{2}L^{1/2}K^{-1/2} = 0$
3. **Dividir**: $\frac{10}{40} = \frac{K/L \cdot 1}{1} \Rightarrow \frac{K}{L} = \frac{10}{40} = \frac{1}{4} \Rightarrow L = 4K$
4. **Substituir na restrição**: $(4K)^{1/2}K^{1/2} = 20 \Rightarrow 2K = 20 \Rightarrow K^* = 10$
5. $L^* = 4 \times 10 = 40$
6. **Custo mínimo**: $C^* = 10(40) + 40(10) = 400 + 400 = \text{R\$}\,800$

**Tags**: minimização de custos, Lagrangiano, Cobb-Douglas
**Uso**: prova
**Tempo**: 7 min

---

### Q-CAP02-018 | Numérica | Bloom 3 | Médio

**Enunciado**: Dada a função $f(x) = -2x^3 + 12x^2 - 18x + 5$, encontre os pontos críticos e classifique-os usando a CSO.

**Resposta**: $x = 1$ é mínimo local; $x = 3$ é máximo local.

**Resolução**:
1. **CPO**: $f'(x) = -6x^2 + 24x - 18 = 0 \Rightarrow x^2 - 4x + 3 = 0 \Rightarrow (x-1)(x-3) = 0$
   - Pontos críticos: $x = 1$ e $x = 3$.
2. **CSO**: $f''(x) = -12x + 24$
   - Em $x = 1$: $f''(1) = -12 + 24 = 12 > 0 \Rightarrow$ **mínimo local**
   - Em $x = 3$: $f''(3) = -36 + 24 = -12 < 0 \Rightarrow$ **máximo local**
3. **Valores**: $f(1) = -2 + 12 - 18 + 5 = -3$; $f(3) = -54 + 108 - 54 + 5 = 5$.

**Tags**: CPO, CSO, classificação de extremos, polinômio
**Uso**: problem_set
**Tempo**: 5 min

---

## Interpretação Gráfica (Bloom 2-3)

---

### Q-CAP02-019 | Interpretação Gráfica | Bloom 2 | Fácil

**Enunciado**: Considere o gráfico de uma função $f(x)$ côncava com um único ponto estacionário em $x^*$. A tangente ao gráfico em $x^*$ é horizontal. Descreva o que a CPO e a CSO indicam visualmente nesse gráfico.

**Resposta**: Máximo global em $x^*$.

**Resolução**:
- **CPO** ($f'(x^*) = 0$): A tangente horizontal em $x^*$ indica inclinação zero — o gráfico não está subindo nem descendo naquele ponto.
- **CSO** ($f''(x^*) < 0$): A concavidade da função (curvatura voltada para baixo, como um "∩") confirma que $x^*$ é um ponto de máximo. Visualmente, o gráfico fica abaixo da tangente em ambos os lados de $x^*$.
- Como $f$ é globalmente côncava e há um único ponto estacionário, este é um máximo global.

**Tags**: gráfico, CPO, CSO, concavidade, máximo
**Uso**: em_aula
**Tempo**: 3 min

---

### Q-CAP02-020 | Interpretação Gráfica | Bloom 3 | Médio

**Enunciado**: O gráfico abaixo mostra as curvas de nível da função $f(x, y)$ e a restrição linear $g(x, y) = c$. No ponto ótimo, as curvas de nível são tangentes à restrição. Explique por que isso é equivalente à condição $\nabla f = \lambda \nabla g$.

**Resposta**: Tangência significa gradientes paralelos.

**Resolução**:
- As curvas de nível de $f$ têm gradiente $\nabla f$ perpendicular a elas em cada ponto.
- A restrição $g(x,y) = c$ tem gradiente $\nabla g$ perpendicular à curva de restrição.
- No ponto de tangência, as duas curvas compartilham a mesma reta tangente, logo seus vetores normais ($\nabla f$ e $\nabla g$) são paralelos.
- Vetores paralelos satisfazem $\nabla f = \lambda \nabla g$ para algum escalar $\lambda$.
- Se os gradientes não fossem paralelos, seria possível mover-se ao longo da restrição e ainda aumentar $f$, contradizendo a otimalidade.

**Tags**: Lagrangiano, gradiente, curvas de nível, tangência, interpretação geométrica
**Uso**: em_aula
**Tempo**: 4 min

---

### Q-CAP02-021 | Interpretação Gráfica | Bloom 3 | Médio

**Enunciado**: A receita total de uma firma é $R(q) = 50q - q^2$ e o custo total é $C(q) = 10 + 8q$. Esboce mentalmente os gráficos de $R(q)$ e $C(q)$. Em que ponto a distância vertical entre $R$ e $C$ é máxima? Qual é o lucro máximo?

**Resposta**: $q^* = 21$, $\pi^* = \text{R\$}\,431$

**Resolução**:
- **Lucro**: $\pi(q) = R(q) - C(q) = 50q - q^2 - 10 - 8q = -q^2 + 42q - 10$
- **CPO**: $\pi'(q) = -2q + 42 = 0 \Rightarrow q^* = 21$
- **CSO**: $\pi''(q) = -2 < 0$ ✓ (máximo)
- **Lucro máximo**: $\pi(21) = -(21)^2 + 42(21) - 10 = -441 + 882 - 10 = 431$
- **Graficamente**: $R(q)$ é uma parábola côncava (intercepta a origem) e $C(q)$ é uma reta crescente. A distância vertical máxima entre as curvas ocorre em $q = 21$, onde as inclinações são iguais ($RMg = CMg$): $50 - 2(21) = 8$.

**Tags**: receita, custo, lucro, maximização, gráfico
**Uso**: em_aula
**Tempo**: 5 min

---

## Dissertativas Curtas (Bloom 4-5)

---

### Q-CAP02-022 | Dissertativa | Bloom 4 | Médio

**Enunciado**: Explique a diferença entre condições necessárias e condições suficientes para otimização. Dê um exemplo numérico de uma função em que a CPO é satisfeita, mas o ponto não é um máximo.

**Resposta esperada**:

A CPO ($f'(x^*) = 0$) é **condição necessária**: todo máximo interior satisfaz, mas nem todo ponto que satisfaz é máximo. A CSO ($f''(x^*) < 0$) combinada com a CPO forma uma **condição suficiente** para máximo local.

**Exemplo**: $f(x) = x^3$. Temos $f'(0) = 3(0)^2 = 0$ (CPO satisfeita), mas $f''(0) = 6(0) = 0$ (CSO inconclusiva). O ponto $x = 0$ é um ponto de inflexão, não um máximo nem mínimo.

Outro exemplo: $f(x) = x^2$ tem $f'(0) = 0$, mas $f''(0) = 2 > 0$, indicando mínimo (não máximo).

**Tags**: CPO, CSO, necessária vs. suficiente, contraexemplo
**Uso**: prova
**Tempo**: 5 min

---

### Q-CAP02-023 | Dissertativa | Bloom 5 | Difícil

**Enunciado**: Discuta como o teorema do envelope simplifica a análise de estática comparativa em microeconomia. Ilustre com o efeito de uma mudança na renda do consumidor sobre sua utilidade indireta.

**Resposta esperada**:

O teorema do envelope afirma que, ao avaliar como o valor ótimo de um problema de otimização muda quando um parâmetro varia, basta considerar o **efeito direto** do parâmetro sobre o Lagrangiano, ignorando os efeitos indiretos (via mudança nas variáveis de escolha ótimas), pois estes são de segunda ordem (pela CPO).

**Aplicação**: No problema do consumidor $\max U(x,y)$ s.a. $px + qy = m$, a função utilidade indireta é $V(p, q, m)$. Pelo teorema do envelope:

$$\frac{\partial V}{\partial m} = \lambda^*$$

Isso evita recalcular $x^*(m)$ e $y^*(m)$ e substituir na utilidade. A utilidade marginal da renda é simplesmente o multiplicador de Lagrange, que já foi calculado na resolução original. Em estática comparativa, isso economiza cálculos e oferece interpretação econômica direta: $\lambda^*$ é o "preço-sombra" da renda.

**Tags**: teorema do envelope, estática comparativa, utilidade indireta, preço-sombra
**Uso**: prova
**Tempo**: 8 min

---

## Miniestudo de Caso (Bloom 4-6)

---

### Q-CAP02-024 | Estudo de Caso | Bloom 4 | Difícil

**Enunciado**: Uma cooperativa agrícola no Paraná produz soja usando trabalho ($L$) e terra ($T$). A função de produção é $Q = 10 L^{0{,}6} T^{0{,}4}$. O salário é $w = \text{R\$}\,80$/dia e o aluguel da terra é $r = \text{R\$}\,200$/hectare-dia. A cooperativa tem contrato para entregar $Q = 500$ toneladas.

(a) Determine a combinação ótima de insumos.
(b) Calcule o custo mínimo.
(c) Interprete o multiplicador de Lagrange.

**Resposta**:

(a) **Condição de tangência**: $\frac{f_L}{f_K} = \frac{w}{r}$

$$\frac{6 L^{-0{,}4} T^{0{,}4}}{4 L^{0{,}6} T^{-0{,}6}} = \frac{80}{200} \Rightarrow \frac{6T}{4L} = \frac{2}{5} \Rightarrow \frac{3T}{2L} = \frac{2}{5} \Rightarrow T = \frac{4L}{15}$$

Substituindo na restrição: $10 L^{0{,}6} \left(\frac{4L}{15}\right)^{0{,}4} = 500$

$10 L^{0{,}6} \cdot \left(\frac{4}{15}\right)^{0{,}4} \cdot L^{0{,}4} = 500$

$10 L \cdot \left(\frac{4}{15}\right)^{0{,}4} = 500 \Rightarrow L = \frac{50}{\left(\frac{4}{15}\right)^{0{,}4}}$

Calculando: $(4/15)^{0{,}4} = (0{,}2\overline{6})^{0{,}4} \approx 0{,}571$

$L^* \approx \frac{50}{0{,}571} \approx 87{,}6$ trabalhadores-dia

$T^* = \frac{4 \times 87{,}6}{15} \approx 23{,}4$ hectares-dia

(b) $C^* = 80 \times 87{,}6 + 200 \times 23{,}4 = 7.008 + 4.680 = \text{R\$}\,11.688$

(c) O multiplicador $\mu^*$ representa o custo marginal de produzir uma tonelada adicional de soja. Se o contrato exigisse 501 toneladas em vez de 500, o custo total aumentaria aproximadamente R\$ $\mu^*$.

**Tags**: minimização de custos, cooperativa, Cobb-Douglas, aplicação Brasil
**Uso**: prova
**Tempo**: 12 min

---

### Q-CAP02-025 | Estudo de Caso | Bloom 5 | Difícil

**Enunciado**: Uma startup de tecnologia em São Paulo contrata desenvolvedores (D) e designers (G). Sua "função de produção de apps" é $Q = D^{0{,}5} G^{0{,}5}$. O salário de desenvolvedores é $w_D = \text{R\$}\,15.000$/mês e o de designers é $w_G = \text{R\$}\,10.000$/mês. O orçamento mensal é $\text{R\$}\,300.000$.

(a) Quantos profissionais de cada tipo a startup deve contratar para maximizar a produção?
(b) Se o orçamento aumentar para R\$ 330.000, use o teorema do envelope para estimar o aumento na produção sem resolver o problema novamente.

**Resposta**:

(a) Pela regra Cobb-Douglas com expoentes iguais ($\alpha = \beta = 0{,}5$):
- Gasto com D: $0{,}5 \times 300.000 = \text{R\$}\,150.000 \Rightarrow D^* = 150.000/15.000 = 10$
- Gasto com G: $0{,}5 \times 300.000 = \text{R\$}\,150.000 \Rightarrow G^* = 150.000/10.000 = 15$
- Produção: $Q^* = 10^{0{,}5} \times 15^{0{,}5} = \sqrt{150} \approx 12{,}25$ apps

(b) Das CPOs: $\lambda^* = \frac{0{,}5 \cdot D^{-0{,}5} G^{0{,}5}}{15.000} = \frac{0{,}5 \times (15/10)^{0{,}5}}{15.000} = \frac{0{,}5 \times 1{,}2247}{15.000} \approx 4{,}08 \times 10^{-5}$

Aumento estimado: $\Delta Q \approx \lambda^* \times \Delta m = 4{,}08 \times 10^{-5} \times 30.000 \approx 1{,}22$ apps adicionais.

**Tags**: teorema do envelope, startup, aplicação, Cobb-Douglas, estática comparativa
**Uso**: prova
**Tempo**: 10 min

---

## Estilo ANPEC (Bloom 3-5)

---

### Q-CAP02-026 | ANPEC | Bloom 3 | Médio

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** Se $f(x)$ é estritamente côncava e $f'(x^*) = 0$, então $x^*$ é máximo global.

**(1)** O método de Lagrange pode ser aplicado a problemas com restrições de desigualdade diretamente, sem modificações.

**(2)** Se $f(x_1, x_2)$ é homogênea de grau 0, então $x_1 f_1 + x_2 f_2 = 0$ pelo teorema de Euler.

**(3)** A elasticidade de uma função linear $f(x) = ax + b$ (com $b \neq 0$) é constante para todo $x$.

**(4)** No problema $\max f(x,y)$ s.a. $g(x,y) = c$, se $\lambda^* > 0$, então relaxar a restrição (aumentar $c$) aumenta o valor ótimo.

**Resposta**: V-F-V-F-V

**Resolução**:
- **(0) V**: Concavidade estrita garante unicidade do máximo; CPO identifica esse ponto.
- **(1) F**: O método de Lagrange padrão lida com restrições de igualdade. Para desigualdades, usa-se Kuhn-Tucker (KKT).
- **(2) V**: Pelo teorema de Euler com $k = 0$: $x_1 f_1 + x_2 f_2 = 0 \cdot f = 0$.
- **(3) F**: $\varepsilon = \frac{a \cdot x}{ax + b}$, que varia com $x$ quando $b \neq 0$.
- **(4) V**: Pelo teorema do envelope, $\frac{\partial f^*}{\partial c} = \lambda^* > 0$, logo aumentar $c$ aumenta $f^*$.

**Tags**: ANPEC, concavidade, Lagrange, Euler, elasticidade, envelope
**Uso**: prova
**Tempo**: 8 min

---

### Q-CAP02-027 | ANPEC | Bloom 4 | Difícil

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** A função $f(x, y) = xy$ é côncava em todo o $\mathbb{R}^2$.

**(1)** Se $f$ é homogênea de grau 1 e quase-côncava, então $f$ é côncava.

**(2)** A hessiana orlada é usada para verificar condições de segunda ordem em problemas com restrição de igualdade.

**(3)** Se a função de produção tem retornos decrescentes de escala ($k < 1$), pelo teorema de Euler, pagar cada fator por sua produtividade marginal resulta em lucro positivo.

**(4)** O teorema do envelope se aplica apenas a problemas de maximização, não de minimização.

**Resposta**: F-V-V-V-F

**Resolução**:
- **(0) F**: A hessiana de $f = xy$ é $H = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$, com autovalores $\pm 1$. Como há autovalor positivo, $f$ não é côncava (é "sela").
- **(1) V**: Este é um resultado clássico: homogeneidade de grau 1 + quase-concavidade implica concavidade.
- **(2) V**: A hessiana orlada (bordered Hessian) incorpora as derivadas da restrição e permite verificar se o ponto crítico é máximo ou mínimo sujeito à restrição.
- **(3) V**: Com $k < 1$: $L \cdot f_L + K \cdot f_K = k \cdot f(L,K) < f(L,K)$. Se $f = q$ e $p = 1$, pagar fatores por suas produtividades marginais custa $kq < q$, sobrando lucro $(1-k)q > 0$.
- **(4) F**: O teorema do envelope vale para qualquer problema de otimização (max ou min).

**Tags**: ANPEC, concavidade, hessiana orlada, retornos de escala, teorema do envelope
**Uso**: prova
**Tempo**: 10 min

---

### Q-CAP02-028 | ANPEC | Bloom 5 | Difícil

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** Se $f(x_1, x_2)$ é homogênea de grau $k$ e $g(x_1, x_2) = [f(x_1, x_2)]^2$, então $g$ é homogênea de grau $2k$.

**(1)** A elasticidade de substituição mede a curvatura das curvas de nível de uma função de produção.

**(2)** Se $\lambda^* = 5$ em um problema de maximização de utilidade com restrição orçamentária, e a renda aumenta em R\$ 10, a utilidade aumenta em exatamente 50 unidades.

**(3)** Uma função pode ser quase-côncava sem ser côncava.

**(4)** O lema de Shephard é uma aplicação direta do teorema do envelope ao problema de minimização de custos do produtor.

**Resposta**: V-V-F-V-V

**Resolução**:
- **(0) V**: $g(tx_1, tx_2) = [f(tx_1, tx_2)]^2 = [t^k f(x_1, x_2)]^2 = t^{2k} [f(x_1, x_2)]^2 = t^{2k} g(x_1, x_2)$.
- **(1) V**: A elasticidade de substituição $\sigma$ mede quão facilmente se substitui um insumo por outro ao longo de uma isoquanta, refletindo a curvatura da curva de nível.
- **(2) F**: O teorema do envelope dá uma **aproximação** (derivada), válida para variações infinitesimais. Para $\Delta m = 10$ (finito), $\Delta V \approx \lambda^* \Delta m = 50$ é aproximação, não valor exato.
- **(3) V**: Exemplo: $f(x) = x^3$ é quase-côncava (conjuntos de nível superior são convexos: intervalos $[a, +\infty)$) mas não côncava ($f''(x) = 6x > 0$ para $x > 0$).
- **(4) V**: No problema $\min w'x$ s.a. $f(x) = q$, o teorema do envelope aplicado à função custo $C(w, q)$ dá $\frac{\partial C}{\partial w_i} = x_i^*$, que é o lema de Shephard.

**Tags**: ANPEC, homogeneidade, elasticidade de substituição, quase-concavidade, lema de Shephard
**Uso**: prova
**Tempo**: 10 min
