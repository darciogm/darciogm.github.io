# Banco de Questões — Capítulo 3: Preferências, Axiomas e Utilidade

> Microeconomia II — Insper
> Total de questões: 28
> Tópicos: axiomas (completude, transitividade, continuidade, monotonicidade), funções utilidade (Cobb-Douglas, CES, linear, Leontief), curvas de indiferença, TMS, utilidade ordinal, quase-concavidade

---

## Múltipla Escolha — Conceituais (Bloom 1-2)

---

### Q-CAP03-001 | Múltipla Escolha | Bloom 1 | Fácil

**Enunciado**: O axioma da completude das preferências afirma que:

**Alternativas**:
- (a) O consumidor sempre prefere mais a menos.
- (b) Para quaisquer duas cestas $A$ e $B$, o consumidor pode ordená-las: prefere $A$ a $B$, prefere $B$ a $A$, ou é indiferente.
- (c) Se o consumidor prefere $A$ a $B$ e $B$ a $C$, então prefere $A$ a $C$.
- (d) Pequenas mudanças nas cestas não alteram a ordenação.
- (e) O consumidor atribui um valor numérico a cada cesta.

**Resposta**: (b)

**Resolução**: O axioma da completude exige que o consumidor seja capaz de comparar quaisquer duas cestas de consumo. Formalmente, para todo par $(A, B)$: $A \succsim B$, ou $B \succsim A$, ou ambos (indiferença). Isso garante que não existam cestas "incomparáveis".

**Feedback incorretas**:
- (a): Isso descreve o axioma de monotonicidade, não completude.
- (c): Isso descreve o axioma de transitividade.
- (d): Isso se aproxima do axioma de continuidade.
- (e): A existência de função utilidade é consequência dos axiomas, não o axioma em si.

**Tags**: axiomas, completude, preferências, definição
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP03-002 | Múltipla Escolha | Bloom 1 | Fácil

**Enunciado**: A taxa marginal de substituição (TMS) entre dois bens $x$ e $y$ mede:

**Alternativas**:
- (a) O preço relativo dos bens no mercado.
- (b) A quantidade de $y$ que o consumidor está disposto a abrir mão para obter uma unidade adicional de $x$, mantendo a utilidade constante.
- (c) A utilidade total do consumidor.
- (d) A inclinação da restrição orçamentária.
- (e) A elasticidade-preço cruzada entre os dois bens.

**Resposta**: (b)

**Resolução**: A TMS é a inclinação (em módulo) da curva de indiferença: $TMS_{xy} = -\frac{dy}{dx}\big|_{U = \bar{U}} = \frac{UMg_x}{UMg_y}$. Ela expressa a disposição subjetiva do consumidor a trocar $y$ por $x$ ao longo de uma mesma curva de indiferença.

**Feedback incorretas**:
- (a): O preço relativo é $p_x/p_y$, dado pelo mercado; a TMS é subjetiva.
- (c): A utilidade total é $U(x,y)$, um número, não uma taxa de troca.
- (d): A inclinação da restrição orçamentária é $-p_x/p_y$.
- (e): A elasticidade cruzada envolve variações percentuais de preço e quantidade de bens diferentes.

**Tags**: TMS, curva de indiferença, definição
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP03-003 | Múltipla Escolha | Bloom 2 | Fácil

**Enunciado**: A utilidade ordinal difere da utilidade cardinal porque:

**Alternativas**:
- (a) Apenas a utilidade cardinal pode representar preferências.
- (b) Na utilidade ordinal, apenas a ordenação das cestas importa, não a magnitude numérica.
- (c) A utilidade ordinal exige que a função seja linear.
- (d) A utilidade cardinal não admite transformações.
- (e) Na utilidade ordinal, a TMS depende da transformação monotônica aplicada.

**Resposta**: (b)

**Resolução**: A utilidade ordinal preserva apenas a ordenação: se $U(A) > U(B)$, sabemos que $A$ é preferido a $B$, mas a diferença $U(A) - U(B)$ não tem significado. Qualquer transformação monotônica crescente $V = h(U)$ (com $h' > 0$) representa as mesmas preferências. A TMS é invariante a essas transformações.

**Feedback incorretas**:
- (a): Tanto a utilidade ordinal quanto a cardinal podem representar preferências.
- (c): A utilidade ordinal pode ser qualquer função, não apenas linear.
- (d): A utilidade cardinal admite transformações afins positivas ($V = aU + b$, $a > 0$).
- (e): A TMS é invariante a transformações monotônicas — esse é justamente o ponto da utilidade ordinal.

**Tags**: utilidade ordinal, cardinal, transformação monotônica, TMS
**Uso**: quiz_pre_aula
**Tempo**: 1 min

---

### Q-CAP03-004 | Múltipla Escolha | Bloom 2 | Fácil

**Enunciado**: Preferências que violam o axioma de transitividade podem gerar:

**Alternativas**:
- (a) Curvas de indiferença com inclinação positiva.
- (b) Ciclos de preferência, impossibilitando uma ordenação consistente.
- (c) Funções utilidade côncavas.
- (d) TMS constante ao longo da curva de indiferença.
- (e) Demanda perfeitamente inelástica.

**Resposta**: (b)

**Resolução**: Se $A \succ B$, $B \succ C$ e $C \succ A$, temos um ciclo. O consumidor nunca se "satisfaz" — sempre há uma cesta preferida à atual. Isso impede a construção de uma função utilidade (que exige uma ordenação total e transitiva) e pode levar a situações de "money pump" (exploração financeira do consumidor irracional).

**Feedback incorretas**:
- (a): Curvas de indiferença com inclinação positiva indicam um "mal" (bem indesejável), não violação de transitividade.
- (c): Concavidade é propriedade da função, independente de transitividade.
- (d): TMS constante ocorre com preferências lineares (substitutos perfeitos).
- (e): Demanda perfeitamente inelástica se relaciona a complementares perfeitos (Leontief), não a intransitividade.

**Tags**: transitividade, ciclos, racionalidade, axiomas
**Uso**: quiz_pre_aula
**Tempo**: 2 min

---

### Q-CAP03-005 | Múltipla Escolha | Bloom 2 | Médio

**Enunciado**: Curvas de indiferença convexas (em relação à origem) indicam que o consumidor:

**Alternativas**:
- (a) Prefere cestas extremas a cestas diversificadas.
- (b) Tem TMS crescente em valor absoluto ao longo da curva.
- (c) Prefere diversificação — cestas intermediárias são preferidas a cestas extremas.
- (d) Consome os bens em proporções fixas.
- (e) Possui utilidade linear.

**Resposta**: (c)

**Resolução**: Convexidade estrita das preferências (curvas de indiferença convexas em relação à origem) implica que a média ponderada de duas cestas indiferentes é estritamente preferida a ambas. Isso reflete TMS decrescente (em módulo): à medida que o consumidor tem mais de $x$ e menos de $y$, está disposto a trocar menos $y$ por uma unidade adicional de $x$. Matematicamente: se $A \sim B$, então $\alpha A + (1-\alpha)B \succ A$ para $\alpha \in (0,1)$.

**Feedback incorretas**:
- (a): Preferir cestas extremas seria concavidade (não convexidade) das preferências.
- (b): TMS crescente em módulo indicaria curvas côncavas (preferência por extremos).
- (d): Proporções fixas descrevem preferências Leontief (curvas em L).
- (e): Utilidade linear gera curvas de indiferença retas (substitutos perfeitos), não estritamente convexas.

**Tags**: convexidade, diversificação, TMS decrescente, curvas de indiferença
**Uso**: quiz_pre_aula
**Tempo**: 2 min

---

## Múltipla Escolha — Aplicadas (Bloom 3-4)

---

### Q-CAP03-006 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: A função utilidade $U(x, y) = \min\{2x, 3y\}$ representa preferências do tipo:

**Alternativas**:
- (a) Substitutos perfeitos com taxa de troca $2:3$.
- (b) Complementares perfeitos, consumidos na proporção $x:y = 3:2$.
- (c) Cobb-Douglas com expoentes $2$ e $3$.
- (d) Complementares perfeitos, consumidos na proporção $x:y = 2:3$.
- (e) Preferências quase-lineares.

**Resposta**: (b)

**Resolução**: Na função Leontief $U = \min\{ax, by\}$, o consumo ótimo ocorre no "canto" da curva de indiferença em L, onde $ax = by$. Com $a = 2$ e $b = 3$: $2x = 3y \Rightarrow x/y = 3/2$. Logo, a proporção é $x:y = 3:2$.

**Feedback incorretas**:
- (a): Substitutos perfeitos teriam $U = 2x + 3y$ (soma, não mínimo).
- (c): Cobb-Douglas seria $U = x^2 y^3$ (produto, não mínimo).
- (d): A proporção é $3:2$, não $2:3$. Se $2x = 3y$, então $x = 1{,}5y$.
- (e): Preferências quase-lineares teriam $U = v(x) + y$.

**Tags**: Leontief, complementares perfeitos, proporção de consumo
**Uso**: problem_set
**Tempo**: 2 min

---

### Q-CAP03-007 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: A função utilidade CES é dada por $U(x, y) = (x^\rho + y^\rho)^{1/\rho}$, com $\rho < 1$ e $\rho \neq 0$. Quando $\rho \to 0$, a utilidade CES se aproxima de:

**Alternativas**:
- (a) Utilidade linear (substitutos perfeitos).
- (b) Utilidade Cobb-Douglas.
- (c) Utilidade Leontief (complementares perfeitos).
- (d) Utilidade quase-linear.
- (e) Nenhuma das anteriores; o limite não existe.

**Resposta**: (b)

**Resolução**: Tomando $\ln U = \frac{1}{\rho} \ln(x^\rho + y^\rho)$ e aplicando a regra de L'Hôpital quando $\rho \to 0$, obtém-se $\ln U \to \frac{1}{2}(\ln x + \ln y)$, ou seja, $U \to (xy)^{1/2}$, que é Cobb-Douglas. Em geral, com pesos, $\rho \to 0$ dá Cobb-Douglas; $\rho \to 1$ dá substitutos perfeitos; $\rho \to -\infty$ dá Leontief.

**Feedback incorretas**:
- (a): Substitutos perfeitos correspondem ao limite $\rho \to 1$.
- (c): Leontief corresponde ao limite $\rho \to -\infty$.
- (d): A função CES não converge para quase-linear em nenhum limite padrão.
- (e): O limite existe e é bem definido.

**Tags**: CES, Cobb-Douglas, casos limite, elasticidade de substituição
**Uso**: problem_set
**Tempo**: 2 min

---

### Q-CAP03-008 | Múltipla Escolha | Bloom 4 | Médio

**Enunciado**: Um consumidor tem utilidade $U(x, y) = x^{0{,}5} y^{0{,}5}$ e outro tem $V(x, y) = \ln x + \ln y$. Sobre esses consumidores:

**Alternativas**:
- (a) Têm preferências diferentes, pois as funções são distintas.
- (b) Têm preferências idênticas, pois $V$ é uma transformação monotônica de $U$.
- (c) Têm a mesma TMS apenas quando $x = y$.
- (d) Suas curvas de indiferença se cruzam.
- (e) Apenas $V$ satisfaz o axioma de monotonicidade.

**Resposta**: (b)

**Resolução**: Note que $V = \ln x + \ln y = \ln(xy) = 2\ln(x^{0{,}5}y^{0{,}5}) = 2\ln U$. Como $h(U) = 2\ln U$ é uma transformação monotônica crescente (para $U > 0$), $V$ representa exatamente as mesmas preferências que $U$. A TMS é idêntica:
- $TMS_U = \frac{0{,}5 x^{-0{,}5} y^{0{,}5}}{0{,}5 x^{0{,}5} y^{-0{,}5}} = \frac{y}{x}$
- $TMS_V = \frac{1/x}{1/y} = \frac{y}{x}$ ✓

**Feedback incorretas**:
- (a): Funções diferentes podem representar as mesmas preferências se forem transformações monotônicas uma da outra.
- (c): A TMS é igual para todo $(x, y)$, não apenas quando $x = y$.
- (d): Mesmas preferências significam mesmas curvas de indiferença (apenas com rótulos numéricos diferentes).
- (e): Ambas satisfazem monotonicidade.

**Tags**: transformação monotônica, utilidade ordinal, Cobb-Douglas, TMS invariante
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP03-009 | Múltipla Escolha | Bloom 3 | Médio

**Enunciado**: Um estudante do Insper consome café ($c$) e pão de queijo ($p$). Sua utilidade é $U(c, p) = 3c + 2p$. A TMS de café por pão de queijo é:

**Alternativas**:
- (a) $3/2$, constante ao longo de toda curva de indiferença.
- (b) $2/3$, constante ao longo de toda curva de indiferença.
- (c) Varia com as quantidades consumidas.
- (d) Igual a $c/p$.
- (e) Igual a $p/c$.

**Resposta**: (a)

**Resolução**: Para $U = 3c + 2p$ (utilidade linear, substitutos perfeitos):
$$TMS_{c,p} = \frac{UMg_c}{UMg_p} = \frac{3}{2}$$
A TMS é constante pois as utilidades marginais são constantes. As curvas de indiferença são retas com inclinação $-3/2$. O estudante está sempre disposto a trocar 1 café por $3/2$ pães de queijo.

**Feedback incorretas**:
- (b): Inverte a razão; $UMg_c/UMg_p = 3/2$, não $2/3$.
- (c): Com utilidade linear, a TMS é constante, não variável.
- (d): $c/p$ seria a TMS de uma Cobb-Douglas $U = cp$.
- (e): $p/c$ seria a TMS de uma Cobb-Douglas $U = cp$ na direção inversa.

**Tags**: substitutos perfeitos, utilidade linear, TMS constante, aplicação cotidiana
**Uso**: em_aula
**Tempo**: 2 min

---

### Q-CAP03-010 | Múltipla Escolha | Bloom 4 | Difícil

**Enunciado**: A função $U(x, y) = x^2 + y^2$ satisfaz monotonicidade, mas NÃO gera preferências convexas. Isso implica que:

**Alternativas**:
- (a) As curvas de indiferença são convexas em relação à origem.
- (b) Cestas intermediárias são preferidas a cestas extremas.
- (c) O consumidor prefere especializar-se em apenas um dos bens (soluções de canto).
- (d) A TMS é decrescente em módulo.
- (e) A função é quase-côncava.

**Resposta**: (c)

**Resolução**: $U = x^2 + y^2$ gera curvas de indiferença que são arcos de circunferência côncavos em relação à origem. Essa função é convexa (não côncava), e as preferências são côncavas (não convexas). Para verificar:
- Sejam $A = (4, 0)$ e $B = (0, 4)$: $U(A) = U(B) = 16$.
- Média: $M = (2, 2)$: $U(M) = 4 + 4 = 8 < 16$.
- O consumidor prefere os extremos à média, ou seja, tende a soluções de canto.

A TMS é $\frac{x}{y}$, crescente em $x$ (não decrescente), confirmando a não convexidade.

**Feedback incorretas**:
- (a): As curvas são côncavas (não convexas) em relação à origem.
- (b): Cestas intermediárias geram menor utilidade — é o oposto.
- (d): A TMS é crescente, não decrescente.
- (e): $U = x^2 + y^2$ é quase-convexa, não quase-côncava.

**Tags**: convexidade, preferências côncavas, solução de canto, quase-concavidade
**Uso**: prova
**Tempo**: 3 min

---

## Verdadeiro ou Falso Justificado (Bloom 2-3)

---

### Q-CAP03-011 | Verdadeiro ou Falso | Bloom 2 | Fácil

**Enunciado**: Julgue a afirmação e justifique: "Duas curvas de indiferença de um mesmo consumidor podem se cruzar."

**Resposta**: FALSO

**Resolução**: Se duas curvas de indiferença se cruzassem no ponto $P$, então $P$ estaria em ambas as curvas, implicando indiferença entre cestas de ambas. Mas cestas acima de uma curva são preferidas às da curva inferior (por monotonicidade). Isso gera contradição: uma cesta na curva superior seria simultaneamente preferida e indiferente a $P$. Formalmente, curvas cruzadas violam a transitividade. Suponha $A$ na curva 1, $B$ na curva 2, e $P$ na interseção. Se $A \sim P$ (mesma curva) e $P \sim B$ (mesma curva), por transitividade $A \sim B$. Mas $A$ e $B$ estão em curvas diferentes, contradição.

**Tags**: curvas de indiferença, transitividade, propriedade fundamental
**Uso**: quiz_pre_aula
**Tempo**: 2 min

---

### Q-CAP03-012 | Verdadeiro ou Falso | Bloom 3 | Médio

**Enunciado**: Julgue a afirmação e justifique: "Se $U(x,y) = f(x) + y$ com $f' > 0$ e $f'' < 0$, então as curvas de indiferença são paralelas na direção vertical."

**Resposta**: VERDADEIRO

**Resolução**: Com preferências quase-lineares $U = f(x) + y$, a curva de indiferença para nível $\bar{U}$ é $y = \bar{U} - f(x)$. Aumentando $\bar{U}$ para $\bar{U} + k$, a nova curva é $y = \bar{U} + k - f(x)$, que é simplesmente a curva original deslocada $k$ unidades para cima. A TMS $= f'(x)/1 = f'(x)$ depende apenas de $x$, não de $y$. Logo, em qualquer vertical ($x$ fixo), todas as curvas de indiferença têm a mesma inclinação — são "cópias verticais" umas das outras.

**Tags**: quase-linear, curvas de indiferença paralelas, TMS
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP03-013 | Verdadeiro ou Falso | Bloom 3 | Médio

**Enunciado**: Julgue a afirmação e justifique: "A função utilidade $U(x,y) = xy$ e a função $V(x,y) = -xy$ representam as mesmas preferências."

**Resposta**: FALSO

**Resolução**: Para que $V$ represesse as mesmas preferências que $U$, $V$ deveria ser uma transformação monotônica **crescente** de $U$. Porém, $V = -U$ é uma transformação monotônica **decrescente** ($h(U) = -U$, com $h'(U) = -1 < 0$). Isso inverte a ordenação: se $U(A) > U(B)$ (A preferido a B), então $V(A) = -U(A) < -U(B) = V(B)$ (B preferido a A sob $V$). As preferências são exatamente opostas.

**Tags**: transformação monotônica, utilidade ordinal, direção da transformação
**Uso**: problem_set
**Tempo**: 2 min

---

## Questões Numéricas / Cálculo (Bloom 3)

---

### Q-CAP03-014 | Numérica | Bloom 3 | Médio

**Enunciado**: Um consumidor tem utilidade $U(x,y) = x^{0{,}4}y^{0{,}6}$. Na cesta $(x, y) = (10, 20)$, calcule a TMS de $x$ por $y$.

**Resposta**: $TMS = 4/3 \approx 1{,}33$

**Resolução**:
1. **Utilidades marginais**:
   - $UMg_x = 0{,}4 \cdot x^{-0{,}6} y^{0{,}6} = 0{,}4 \cdot 10^{-0{,}6} \cdot 20^{0{,}6}$
   - $UMg_y = 0{,}6 \cdot x^{0{,}4} y^{-0{,}4} = 0{,}6 \cdot 10^{0{,}4} \cdot 20^{-0{,}4}$
2. **TMS**: $TMS = \frac{UMg_x}{UMg_y} = \frac{0{,}4}{0{,}6} \cdot \frac{y}{x} = \frac{2}{3} \cdot \frac{20}{10} = \frac{2}{3} \cdot 2 = \frac{4}{3}$

Interpretação: na cesta $(10, 20)$, o consumidor está disposto a abrir mão de $4/3 \approx 1{,}33$ unidades de $y$ para obter 1 unidade adicional de $x$, permanecendo na mesma curva de indiferença.

**Tags**: TMS, Cobb-Douglas, cálculo, utilidade marginal
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP03-015 | Numérica | Bloom 3 | Médio

**Enunciado**: A utilidade CES de um consumidor é $U(x, y) = (x^{0{,}5} + y^{0{,}5})^2$. Calcule a elasticidade de substituição $\sigma$.

**Resposta**: $\sigma = 2$

**Resolução**:
1. Na forma CES padrão, $U = (x^\rho + y^\rho)^{1/\rho}$. Reescrevendo $U = (x^{0{,}5} + y^{0{,}5})^2$, identificamos $1/\rho = 2$, logo $\rho = 0{,}5$.
2. A elasticidade de substituição da CES é: $\sigma = \frac{1}{1 - \rho} = \frac{1}{1 - 0{,}5} = \frac{1}{0{,}5} = 2$

Interpretação: quando a razão de preços muda 1%, a razão ótima $y/x$ muda 2%. Bens são "bons substitutos" ($\sigma > 1$).

**Tags**: CES, elasticidade de substituição, cálculo
**Uso**: problem_set
**Tempo**: 3 min

---

### Q-CAP03-016 | Numérica | Bloom 3 | Médio

**Enunciado**: Um consumidor em Belo Horizonte consome açaí ($a$) e granola ($g$) com utilidade $U = \min\{3a, 2g\}$. Se $p_a = \text{R\$}\,15$, $p_g = \text{R\$}\,5$ e a renda é $m = \text{R\$}\,210$, encontre as quantidades ótimas e a utilidade.

**Resposta**: $a^* = 6$, $g^* = 9$, $U^* = 18$

**Resolução**:
1. **Proporção ótima**: No ótimo, $3a = 2g \Rightarrow g = \frac{3}{2}a$
2. **Restrição orçamentária**: $15a + 5g = 210$
3. **Substituir**: $15a + 5 \cdot \frac{3}{2}a = 210 \Rightarrow 15a + 7{,}5a = 210 \Rightarrow 22{,}5a = 210 \Rightarrow a^* = \frac{210}{22{,}5} = \frac{28}{3} \approx 9{,}33$

Nota: se exigirmos quantidades inteiras, $a^* = 9$ e $g^* = \frac{3}{2} \times 9 = 13{,}5$. Mas mantendo a solução contínua:

$a^* = 28/3$, $g^* = 3/2 \times 28/3 = 14$

Verificação: $15 \times 28/3 + 5 \times 14 = 140 + 70 = 210$ ✓

$U^* = \min\{3 \times 28/3,\; 2 \times 14\} = \min\{28, 28\} = 28$

**Correção**: $a^* = 28/3 \approx 9{,}33$, $g^* = 14$, $U^* = 28$.

**Tags**: Leontief, complementares perfeitos, restrição orçamentária, Brasil
**Uso**: problem_set
**Tempo**: 4 min

---

### Q-CAP03-017 | Numérica | Bloom 3 | Médio

**Enunciado**: Verifique se a função $U(x,y) = \sqrt{x} + \sqrt{y}$ é quase-côncava. Calcule o hessiano orlado e determine seu sinal.

**Resposta**: A função é quase-côncava.

**Resolução**:
1. **Derivadas**:
   - $U_x = \frac{1}{2\sqrt{x}}$, $U_y = \frac{1}{2\sqrt{y}}$
   - $U_{xx} = -\frac{1}{4x^{3/2}}$, $U_{yy} = -\frac{1}{4y^{3/2}}$, $U_{xy} = 0$

2. **Hessiano orlado**: $\bar{H} = \begin{vmatrix} 0 & U_x & U_y \\ U_x & U_{xx} & U_{xy} \\ U_y & U_{xy} & U_{yy} \end{vmatrix}$

$$\bar{H} = \begin{vmatrix} 0 & \frac{1}{2\sqrt{x}} & \frac{1}{2\sqrt{y}} \\ \frac{1}{2\sqrt{x}} & -\frac{1}{4x^{3/2}} & 0 \\ \frac{1}{2\sqrt{y}} & 0 & -\frac{1}{4y^{3/2}} \end{vmatrix}$$

3. **Calculando o determinante** (expansão pela primeira linha):

$$\bar{H} = -\frac{1}{2\sqrt{x}} \left(\frac{1}{2\sqrt{x}} \cdot \left(-\frac{1}{4y^{3/2}}\right) - 0\right) + \frac{1}{2\sqrt{y}} \left(0 - \frac{1}{2\sqrt{y}} \cdot \left(-\frac{1}{4x^{3/2}}\right)\right)$$

$$= -\frac{1}{2\sqrt{x}} \cdot \left(-\frac{1}{8x^{1/2}y^{3/2}}\right) + \frac{1}{2\sqrt{y}} \cdot \frac{1}{8x^{3/2}y^{1/2}}$$

$$= \frac{1}{16xy^{3/2}} + \frac{1}{16x^{3/2}y} > 0$$

4. Para quase-concavidade com 2 variáveis, precisamos $\bar{H} > 0$ (o hessiano orlado de ordem 2 deve ser positivo). Como $\bar{H} > 0$ para todo $(x, y) > 0$, a função é quase-côncava. ✓

**Tags**: quase-concavidade, hessiano orlado, verificação, CES
**Uso**: prova
**Tempo**: 8 min

---

### Q-CAP03-018 | Numérica | Bloom 3 | Fácil

**Enunciado**: Um consumidor tem utilidade $U(x, y) = 2x + 5y$. Qual é a TMS? Se $p_x = \text{R\$}\,4$ e $p_y = \text{R\$}\,10$, e a renda é $m = \text{R\$}\,200$, quanto o consumidor compra de cada bem?

**Resposta**: $TMS = 2/5$; compra $x^* = 0$, $y^* = 20$ (solução de canto).

**Resolução**:
1. **TMS**: $TMS = \frac{UMg_x}{UMg_y} = \frac{2}{5} = 0{,}4$
2. **Razão de preços**: $\frac{p_x}{p_y} = \frac{4}{10} = 0{,}4$
3. Como $TMS = p_x/p_y$, o consumidor é indiferente entre quaisquer combinações ao longo da restrição orçamentária. Qualquer ponto sobre a reta orçamentária é ótimo.

**Nota**: Na verdade, como $TMS = p_x/p_y$ exatamente, toda a reta orçamentária é solução. O consumidor pode comprar qualquer combinação $(x, y)$ com $4x + 10y = 200$. Uma solução particular: $x^* = 50, y^* = 0$ ou $x^* = 0, y^* = 20$, ou qualquer combinação intermediária.

**Tags**: substitutos perfeitos, solução de canto, TMS constante
**Uso**: problem_set
**Tempo**: 3 min

---

## Interpretação Gráfica (Bloom 2-3)

---

### Q-CAP03-019 | Interpretação Gráfica | Bloom 2 | Fácil

**Enunciado**: Descreva e compare o formato das curvas de indiferença dos seguintes tipos de preferência: (i) Cobb-Douglas, (ii) substitutos perfeitos, (iii) complementares perfeitos. Para cada caso, explique o que acontece com a TMS ao longo da curva.

**Resposta**:

**(i) Cobb-Douglas** ($U = x^a y^b$): Curvas de indiferença são hipérboles convexas, assintóticas aos eixos. A TMS é decrescente em módulo ao longo da curva: $TMS = \frac{a}{b} \cdot \frac{y}{x}$. À medida que $x$ aumenta e $y$ diminui, o consumidor valoriza mais $y$ e aceita trocar menos.

**(ii) Substitutos perfeitos** ($U = ax + by$): Curvas de indiferença são retas com inclinação $-a/b$. A TMS é constante: $TMS = a/b$. O consumidor sempre aceita trocar $a/b$ unidades de $y$ por 1 de $x$, independente das quantidades.

**(iii) Complementares perfeitos** ($U = \min\{ax, by\}$): Curvas de indiferença em formato de "L" com vértice na linha $ax = by$. A TMS é indefinida no vértice, infinita no trecho vertical e zero no trecho horizontal. O consumidor não aceita trocar um bem pelo outro — só tem utilidade adicional ao aumentar ambos na proporção $b:a$.

**Tags**: curvas de indiferença, Cobb-Douglas, substitutos, Leontief, TMS, gráfico
**Uso**: em_aula
**Tempo**: 5 min

---

### Q-CAP03-020 | Interpretação Gráfica | Bloom 3 | Médio

**Enunciado**: Considere um mapa de curvas de indiferença em que as curvas ficam mais "achatadas" (mais próximas de retas) à medida que nos afastamos da origem. O que isso indica sobre a elasticidade de substituição nessa região? Compare com curvas que se tornam mais "angulosas" (mais próximas de L).

**Resposta**:

- **Curvas achatando**: A elasticidade de substituição $\sigma$ é alta (os bens se tornam mais substituíveis). As curvas se aproximam de retas ($\sigma \to \infty$, substitutos perfeitos). O consumidor aceita facilmente trocar um bem pelo outro.

- **Curvas angulosas**: $\sigma$ é baixa (os bens se tornam mais complementares). As curvas se aproximam de L ($\sigma \to 0$, complementares perfeitos). O consumidor só se beneficia consumindo ambos os bens na proporção fixa.

- **Cobb-Douglas** ($\sigma = 1$) é o caso intermediário: curvas hiperbólicas, nem retas nem angulosas.

Graficamente, $\sigma$ governa a "curvatura" das curvas de indiferença: maior $\sigma$ = menos curvatura (mais reta); menor $\sigma$ = mais curvatura (mais angulosa).

**Tags**: elasticidade de substituição, curvatura, CES, interpretação gráfica
**Uso**: em_aula
**Tempo**: 4 min

---

### Q-CAP03-021 | Interpretação Gráfica | Bloom 3 | Médio

**Enunciado**: Um consumidor possui preferências representadas por $U(x, y) = x + \ln y$. Esboce mentalmente as curvas de indiferença. Explique por que a TMS depende apenas de $y$ e o que isso implica sobre o formato das curvas.

**Resposta**:

**TMS**: $TMS = \frac{UMg_x}{UMg_y} = \frac{1}{1/y} = y$

A TMS depende apenas de $y$, não de $x$. Isso significa que ao longo de uma horizontal ($y$ fixo), todas as curvas de indiferença têm a mesma inclinação. Consequência: as curvas são **translações horizontais** umas das outras.

**Formato**: Para um dado nível $\bar{U}$, a curva é $x = \bar{U} - \ln y$, que é decrescente e convexa. A TMS cresce com $y$ (quando o consumidor tem muito de $y$, está disposto a abrir mão de mais $y$ por cada unidade de $x$) e decresce com $y$ baixo (quando $y$ é escasso, é muito valorizado).

Esta é uma utilidade **quase-linear em** $x$: a "margem" em $x$ é constante ($UMg_x = 1$), e toda a curvatura vem do componente $\ln y$.

**Tags**: quase-linear, TMS, curvas de indiferença, translações
**Uso**: em_aula
**Tempo**: 4 min

---

## Dissertativas Curtas (Bloom 4-5)

---

### Q-CAP03-022 | Dissertativa | Bloom 4 | Médio

**Enunciado**: Explique por que o axioma de continuidade é necessário para garantir a existência de uma função utilidade que represente as preferências do consumidor. Dê um exemplo de preferências que violam continuidade.

**Resposta esperada**:

O axioma de continuidade afirma que, para todo $x$, os conjuntos $\{y : y \succsim x\}$ (ao menos tão bom quanto) e $\{y : x \succsim y\}$ (ao menos tão ruim quanto) são fechados. Equivalentemente, se uma sequência de cestas $y_n \succsim x$ converge para $y$, então $y \succsim x$.

**Necessidade**: Sem continuidade, preferências racionais (completas e transitivas) podem não ser representáveis por uma função utilidade contínua. A prova de existência (Debreu, 1954) usa continuidade para construir a função utilidade via conjuntos de nível.

**Exemplo de violação**: Preferências lexicográficas em $\mathbb{R}^2$: "prefira a cesta com mais $x_1$; em caso de empate, prefira a com mais $x_2$". Formalmente: $(x_1, x_2) \succ (y_1, y_2)$ se $x_1 > y_1$, ou [$x_1 = y_1$ e $x_2 > y_2$]. Essas preferências são completas e transitivas, mas não contínuas (não existem curvas de indiferença, apenas pontos de indiferença) e não podem ser representadas por uma função utilidade $U: \mathbb{R}^2 \to \mathbb{R}$.

**Tags**: continuidade, axiomas, função utilidade, preferências lexicográficas, Debreu
**Uso**: prova
**Tempo**: 6 min

---

### Q-CAP03-023 | Dissertativa | Bloom 5 | Difícil

**Enunciado**: Discuta a relação entre convexidade das preferências e quase-concavidade da função utilidade. Por que essa propriedade é importante para a teoria do consumidor?

**Resposta esperada**:

**Relação**: Preferências convexas significam que o conjunto "ao menos tão bom quanto" $\{y : y \succsim x\}$ é convexo para todo $x$. Uma função utilidade $U$ é quase-côncava se e somente se seus conjuntos de nível superior $\{(x,y) : U(x,y) \geq k\}$ são convexos para todo $k$. Portanto, preferências convexas $\Leftrightarrow$ função utilidade quase-côncava.

**Importante**: quase-concavidade é mais fraca que concavidade. $U = x^2 y^2$ não é côncava (a hessiana não é semidefinida negativa), mas é quase-côncava (os conjuntos de nível superior são convexos).

**Importância para o consumidor**:
1. **Unicidade**: Com preferências estritamente convexas (quase-concavidade estrita), a solução do problema do consumidor é única (tangência).
2. **CPO suficiente**: A quase-concavidade garante que a CPO do Lagrangiano é suficiente para máximo global (sob restrição linear).
3. **Demanda bem definida**: Garante que a função demanda $x^*(p, m)$ é uma função (não uma correspondência), simplificando a análise de estática comparativa.
4. **Diversificação**: Economicamente, convexidade reflete a preferência por diversificação — fundamental para explicar por que consumidores compram cestas variadas.

**Tags**: convexidade, quase-concavidade, unicidade, CPO suficiente, diversificação
**Uso**: prova
**Tempo**: 8 min

---

## Miniestudo de Caso (Bloom 4-6)

---

### Q-CAP03-024 | Estudo de Caso | Bloom 4 | Difícil

**Enunciado**: Maria e João vivem em Recife e ambos consomem sushi ($s$) e tapioca ($t$) com a mesma renda de R\$ 600/mês. Maria tem utilidade $U_M = s^{0{,}3}t^{0{,}7}$ e João tem utilidade $U_J = \min\{s, 2t\}$. Os preços são $p_s = \text{R\$}\,30$ e $p_t = \text{R\$}\,10$.

(a) Determine a cesta ótima de cada consumidor.
(b) Compare as TMS de Maria e João na cesta ótima.
(c) Se o preço do sushi subir para R\$ 60, quem ajusta mais sua cesta? Por quê?

**Resposta**:

**(a) Maria** (Cobb-Douglas):
- Gasto em $s$: $0{,}3 \times 600 = \text{R\$}\,180 \Rightarrow s_M^* = 180/30 = 6$
- Gasto em $t$: $0{,}7 \times 600 = \text{R\$}\,420 \Rightarrow t_M^* = 420/10 = 42$

**João** (Leontief):
- Proporção: $s = 2t \Rightarrow t = s/2$
- Restrição: $30s + 10(s/2) = 600 \Rightarrow 30s + 5s = 600 \Rightarrow s_J^* = \frac{600}{35} \approx 17{,}14$
- $t_J^* = s_J^*/2 \approx 8{,}57$

**(b)** Na cesta ótima de Maria: $TMS_M = \frac{0{,}3}{0{,}7} \cdot \frac{42}{6} = \frac{3}{7} \times 7 = 3 = p_s/p_t$ ✓
João tem TMS indefinida (vértice do L); não há taxa de substituição marginal no sentido usual.

**(c)** Com $p_s = 60$:
- **Maria** reajusta: $s_M^{**} = 0{,}3 \times 600/60 = 3$ (reduz de 6 para 3, queda de 50%), $t_M^{**} = 0{,}7 \times 600/10 = 42$ (não muda).
- **João** mantém proporção: $60s + 5s = 600 \Rightarrow s_J^{**} = 600/65 \approx 9{,}23$ (queda de ~46%), $t_J^{**} \approx 4{,}62$ (também cai).

Maria ajusta apenas o sushi (substitui para tapioca); João reduz ambos os bens proporcionalmente. Maria tem maior flexibilidade para substituir entre bens (elasticidade de substituição $\sigma = 1$ vs. $\sigma = 0$ de João). A perda de bem-estar de João é proporcionalmente maior, pois ele não pode compensar substituindo.

**Tags**: Cobb-Douglas, Leontief, comparação, elasticidade de substituição, Brasil
**Uso**: prova
**Tempo**: 12 min

---

### Q-CAP03-025 | Estudo de Caso | Bloom 5 | Difícil

**Enunciado**: Uma pesquisadora do Insper estuda o comportamento de consumidores de transporte em São Paulo. Ela observa que:
- O consumidor A sempre anda de metrô, nunca de ônibus, mesmo quando os preços variam.
- O consumidor B usa metrô e ônibus em proporções que variam suavemente com os preços.
- O consumidor C gasta exatamente metade da renda em cada modo.

Para cada consumidor, proponha uma forma funcional de utilidade compatível com o comportamento observado. Justifique e discuta os axiomas satisfeitos.

**Resposta esperada**:

**Consumidor A** — Sempre metrô ($m$), nunca ônibus ($o$):
- Possibilidade 1: $U = m$ (metrô é o único bem que importa; ônibus é neutro).
- Possibilidade 2: $U = am + bo$ com $a/b > p_m/p_o$ para todos os preços observados (substitutos perfeitos com forte preferência por metrô — solução de canto).
- Axiomas: todos satisfeitos, mas monotonicidade apenas em $m$.

**Consumidor B** — Substituição suave:
- $U = m^\alpha o^{1-\alpha}$ (Cobb-Douglas) ou CES com $\sigma > 0$.
- A suavidade na resposta a preços indica TMS decrescente e preferências estritamente convexas.
- Todos os axiomas satisfeitos, incluindo convexidade estrita e continuidade.

**Consumidor C** — Metade da renda em cada:
- $U = m^{0{,}5} o^{0{,}5}$ (Cobb-Douglas com expoentes iguais).
- Na Cobb-Douglas, a fração da renda gasta em cada bem é dada pelo expoente relativo. Com $\alpha = \beta = 0{,}5$, gasta-se 50% em cada.
- Alternativa: qualquer $U = h(m^{0{,}5}o^{0{,}5})$ com $h$ crescente.

**Discussão**: A escolha da forma funcional revela a elasticidade de substituição entre metrô e ônibus. A pode ser $\sigma \to \infty$ (mas com canto), B tem $\sigma$ moderado, e C tem $\sigma = 1$. Políticas de transporte (subsídios, tarifas) terão efeitos diferentes sobre cada tipo.

**Tags**: formas funcionais, transporte, São Paulo, axiomas, aplicação empírica
**Uso**: prova
**Tempo**: 10 min

---

## Estilo ANPEC (Bloom 3-5)

---

### Q-CAP03-026 | ANPEC | Bloom 3 | Médio

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** O axioma de completude permite que o consumidor diga "não sei comparar essas duas cestas".

**(1)** Se $U(x,y) = x + y$, a TMS é igual a 1 em todos os pontos.

**(2)** Preferências monotônicas implicam que curvas de indiferença mais afastadas da origem correspondem a níveis maiores de utilidade.

**(3)** A função $V = 5U + 3$ (com $U$ representando certas preferências) também representa as mesmas preferências.

**(4)** Preferências lexicográficas satisfazem completude e transitividade, mas não continuidade.

**Resposta**: F-V-V-V-V

**Resolução**:
- **(0) F**: Completude exige que o consumidor **sempre** consiga comparar (prefere A, prefere B, ou indiferente). "Não sei" viola completude.
- **(1) V**: $TMS = UMg_x / UMg_y = 1/1 = 1$. Constante, como esperado para substitutos perfeitos com coeficientes iguais.
- **(2) V**: Monotonicidade ("mais é melhor") garante que cestas com mais de ambos os bens dão mais utilidade. Curvas mais distantes da origem contêm cestas com mais de ambos os bens.
- **(3) V**: $V = 5U + 3$ é transformação afim positiva (caso particular de monotônica crescente, com $h'(U) = 5 > 0$). Preserva a ordenação.
- **(4) V**: Resultado clássico: lexicográficas são completas e transitivas, mas os conjuntos "ao menos tão bom quanto" não são fechados; não há representação por função utilidade contínua.

**Tags**: ANPEC, axiomas, completude, TMS, transformação monotônica, lexicográficas
**Uso**: prova
**Tempo**: 8 min

---

### Q-CAP03-027 | ANPEC | Bloom 4 | Difícil

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** Se $U(x,y) = x^2 y$, a TMS no ponto $(2, 8)$ é igual a 8.

**(1)** Preferências homotéticas têm curvas de indiferença que são "expansões radiais" umas das outras (ao longo de raios da origem, a TMS é constante).

**(2)** A função utilidade $U(x,y) = \max\{x, y\}$ gera preferências convexas.

**(3)** Se as preferências de um consumidor são representáveis por $U(x,y) = xy$, então também são representáveis por $W(x,y) = x^2 y^2$.

**(4)** A elasticidade de substituição de uma Cobb-Douglas $U = x^\alpha y^{1-\alpha}$ é sempre igual a 1, independentemente dos valores de $\alpha$.

**Resposta**: V-V-F-V-V

**Resolução**:
- **(0) V**: $TMS = \frac{UMg_x}{UMg_y} = \frac{2xy}{x^2} = \frac{2y}{x}$. Em $(2,8)$: $TMS = \frac{2 \times 8}{2} = 8$. ✓
- **(1) V**: Preferências homotéticas (representáveis por transformação monotônica de função homogênea de grau 1) têm a propriedade de que a TMS depende apenas da razão $y/x$. Logo, ao longo de qualquer raio ($y/x$ constante), a TMS é a mesma.
- **(2) F**: $U = \max\{x, y\}$ gera preferências **côncavas** (não convexas). Para verificar: sejam $A = (4, 0)$ e $B = (0, 4)$: $U(A) = U(B) = 4$. Média $M = (2, 2)$: $U(M) = 2 < 4$. O consumidor prefere os extremos à média; os conjuntos de nível superior não são convexos.
- **(3) V**: $W = x^2 y^2 = (xy)^2 = U^2$. Como $h(U) = U^2$ é crescente para $U > 0$ (que vale quando $x, y > 0$), é transformação monotônica crescente. Representa as mesmas preferências.
- **(4) V**: A Cobb-Douglas sempre tem $\sigma = 1$, o que pode ser verificado pela fórmula da elasticidade de substituição ou pelo fato de que a fração da renda gasta em cada bem é constante.

**Tags**: ANPEC, TMS, homotéticas, convexidade, transformação monotônica, elasticidade
**Uso**: prova
**Tempo**: 10 min

---

### Q-CAP03-028 | ANPEC | Bloom 5 | Difícil

**Enunciado**: Classifique cada afirmação como Verdadeira (V) ou Falsa (F):

**(0)** Se as preferências do consumidor são contínuas, completas e transitivas, existe uma função utilidade contínua que as representa (teorema de Debreu).

**(1)** A função $U(x,y) = \min\{x, y\} + \max\{x, y\}$ é equivalente a $U(x,y) = x + y$ e, portanto, representa substitutos perfeitos.

**(2)** Para a CES com $\rho = -1$, ou seja, $U = (x^{-1} + y^{-1})^{-1} = \frac{xy}{x+y}$, a elasticidade de substituição é $\sigma = 1/2$.

**(3)** Se $U(x,y)$ é quase-côncava e $g(t) = e^t$ (estritamente crescente), então $V(x,y) = g(U(x,y)) = e^{U(x,y)}$ também é quase-côncava.

**(4)** O axioma de monotonicidade implica que as curvas de indiferença têm inclinação negativa (no espaço de dois bens).

**Resposta**: V-V-V-V-V

**Resolução**:
- **(0) V**: Este é o teorema da representação de Debreu (1954): preferências contínuas, completas e transitivas sobre $\mathbb{R}^n_+$ podem ser representadas por uma função utilidade contínua.
- **(1) V**: Para quaisquer $x, y$: $\min\{x,y\} + \max\{x,y\} = x + y$. Isso é uma identidade algébrica. Logo, a função é de substitutos perfeitos com $TMS = 1$.
- **(2) V**: Na CES, $\sigma = \frac{1}{1 - \rho}$. Com $\rho = -1$: $\sigma = \frac{1}{1-(-1)} = \frac{1}{2}$. Os bens são menos substituíveis que na Cobb-Douglas ($\sigma = 1$).
- **(3) V**: Quase-concavidade é preservada por transformações monotônicas crescentes, pois os conjuntos de nível superior $\{(x,y): V \geq k\} = \{(x,y): U \geq g^{-1}(k)\}$ permanecem convexos.
- **(4) V**: Se ambos os bens são "goods" (monotonicidade), aumentar $x$ mantendo a utilidade constante exige reduzir $y$. Logo, $dy/dx < 0$ ao longo da curva de indiferença, ou seja, inclinação negativa.

**Tags**: ANPEC, Debreu, CES, quase-concavidade, monotonicidade, inclinação
**Uso**: prova
**Tempo**: 10 min
