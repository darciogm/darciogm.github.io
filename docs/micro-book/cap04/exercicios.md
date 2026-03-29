# Exercícios e ANPEC

<iframe src="/micro-book/graficos/cap04/webr-demandas.html" title="WebR — Demandas e Dualidade" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 4.1 — Marshalliana vs. Hicksiana.** Visualize como as duas curvas de demanda se cruzam no ponto base (a dualidade em ação). Altere α para ver como a fração de gastos muda e como as demandas respondem.
</div>

<iframe src="/micro-book/graficos/cap04/webr-roy.html" title="WebR — Identidade de Roy" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 4.2 — Identidade de Roy: da V(p,m) à demanda.** Recupere a demanda marshalliana a partir da utilidade indireta, sem resolver o problema de otimização novamente. O código verifica numericamente que x* = −(∂V/∂pₓ)/(∂V/∂m).
</div>

<iframe src="/micro-book/graficos/cap04/webr-lump-sum.html" title="WebR — Princípio Lump Sum" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 4.3 — Princípio Lump Sum.** Compare um imposto específico (que distorce preços relativos) com um lump sum de mesma receita. O consumidor sempre prefere o lump sum — veja a diferença em utilidade e no gráfico.
</div>

<iframe src="/micro-book/graficos/cap04/webr-shephard.html" title="WebR — Lema de Shephard" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 4.4 — Lema de Shephard e função dispêndio.** Verifique que ∂E/∂pᵢ = hᵢ (demanda hicksiana). A concavidade de E em preços garante que a demanda compensada é negativamente inclinada — a lei da demanda sem exceções.
</div>

---

!!! classroom "Atividade 4.1 — Lump sum vs. imposto específico: o duelo tributário (20 min)"
    **Objetivo:** Demonstrar visualmente e numericamente que um imposto *lump sum* domina um imposto específico de mesma receita — o Princípio do Montante Fixo.

    **Material:** Folha quadriculada, régua, caneta (duas cores).

    **Protocolo:**

    1. **Setup** (3 min): Projete: \(U = x_1^{1/2} \cdot x_2^{1/2}\), \(p_1 = 2\), \(p_2 = 1\), \(m = 120\). Peça que encontrem a cesta ótima. Resposta: \(x_1^* = 30\), \(x_2^* = 60\), \(U^* = \sqrt{1800} \approx 42{,}4\).
    2. **Imposto específico** (5 min): "O governo taxa o bem 1 em R$ 1 por unidade (\(p_1' = 3\)). Encontre a nova cesta e a receita tributária." → \(x_1' = 20\), \(x_2' = 60\), receita = \(1 \times 20 = 20\), \(U' = \sqrt{1200} \approx 34{,}6\).
    3. **Lump sum de mesma receita** (5 min): "Agora o governo cobra R$ 20 de imposto fixo. Preços voltam ao original, renda cai para \(m' = 100\)." → \(x_1'' = 25\), \(x_2'' = 50\), \(U'' = \sqrt{1250} \approx 35{,}4\).
    4. **Comparação** (3 min): Projete lado a lado: mesma receita (R$ 20), mas \(U'' > U'\). O *lump sum* é melhor para o consumidor!
    5. **Debrief** (4 min):
        - "Por que o imposto específico é pior?" → Distorce preços relativos, gerando perda de peso morto. O *lump sum* desloca a reta orçamentária paralelamente — sem distorção.
        - "Se o *lump sum* é sempre melhor, por que os governos não usam só ele?" → Equidade, viabilidade política, informação (o governo não sabe a renda verdadeira de cada um). Antecipe mecanismos (Cap. 9c).
        - Peça que desenhem os dois cenários no gráfico: reta original, reta com imposto específico (rotação) e reta com *lump sum* (deslocamento paralelo).

    **Conexão com o conteúdo:** Seção 4.5 (Princípio do Montante Fixo). Inspirado em Nicholson e Snyder (2017, Cap. 4).

!!! classroom "Atividade 4.2 — O \(\lambda\) misterioso: quanto vale um real a mais? (10 min)"
    **Objetivo:** Construir intuição para o multiplicador de Lagrange como utilidade marginal da renda.

    **Material:** Calculadora (celular).

    **Protocolo:**

    1. **Pergunta** (2 min): Usando a mesma utilidade \(U = x_1^{1/2} x_2^{1/2}\), \(p_1 = 2\), \(p_2 = 1\): "Quanto vale \(\lambda^*\) no ótimo com \(m = 120\)?"
    2. **Cálculo** (3 min): Dos slides ou do exercício anterior, \(\lambda^* = U^*/m = \sqrt{1800}/120 \approx 0{,}354\). Agora peça: "Se \(m\) subir para 121, quanto \(U\) aumenta?"
    3. **Verificação** (2 min): \(U(121) = \sqrt{121^2/8} = 121/\sqrt{8} \approx 42{,}79\). Diferença: \(\approx 0{,}35\). É o \(\lambda\)!
    4. **Debrief** (3 min):
        - "O \(\lambda\) é o 'preço' de afrouxar a restrição. Economistas chamam de *preço-sombra*."
        - "Se \(\lambda\) fosse alto, significaria que a restrição *aperta muito* — o consumidor ganharia muito com mais renda. Se fosse baixo, a restrição 'quase não morde'."
        - Conecte com a Identidade de Roy (Seção 4.9) e com o Teorema do Envelope (Seção 2.4/2.6).

    **Conexão com o conteúdo:** Seções 4.3 (Lagrangeano), 4.4 (utilidade indireta), 2.6 (envelope restrito).

---


## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No ótimo interior do consumidor, a condição de tangência exige que:"
    - (a) A utilidade marginal de cada bem seja igual ao seu preço
    - (b) A TMS entre os bens seja igual à razão de preços $p_1/p_2$
    - (c) O consumidor gaste a mesma quantia em cada bem
    - (d) A utilidade total seja igual à renda

    ??? success "Resposta"
        **(b)** No ótimo interior, a curva de indiferença é tangente à reta orçamentária, o que implica $\text{TMS}_{12} = p_1/p_2$, ou equivalentemente, $\text{UMg}_1/p_1 = \text{UMg}_2/p_2$ (utilidade marginal por real gasto equalizada). A alternativa (a) não é dimensionalmente correta; (c) só vale para casos especiais como Cobb-Douglas com expoentes iguais; (d) confunde utilidade com renda.

??? question "2. O multiplicador de Lagrange $\lambda$ no problema do consumidor representa:"
    - (a) O preço do bem mais caro da cesta
    - (b) A utilidade marginal da renda — quanto a utilidade máxima aumenta com um real adicional de renda
    - (c) A quantidade ótima do primeiro bem
    - (d) A inclinação da curva de indiferença no ponto ótimo

    ??? success "Resposta"
        **(b)** No problema $\max u(x_1,x_2)$ s.a. $p_1x_1 + p_2x_2 = I$, o multiplicador $\lambda = \partial V/\partial I$ é a utilidade marginal da renda, medindo o ganho de utilidade por unidade monetária adicional. A alternativa (d) descreve a TMS, que no ótimo iguala a razão de preços, não $\lambda$ diretamente.

??? question "3. O princípio do montante fixo (*lump sum principle*) afirma que:"
    - (a) Impostos *lump sum* são sempre mais justos que impostos específicos
    - (b) Um imposto *lump sum* que arrecada a mesma receita que um imposto específico deixa o consumidor com utilidade pelo menos igual
    - (c) Impostos específicos arrecadam mais que impostos *lump sum*
    - (d) A perda de bem-estar é a mesma nos dois casos, pois a receita é igual

    ??? success "Resposta"
        **(b)** O imposto *lump sum* desloca a reta orçamentária paralelamente, preservando preços relativos. O imposto específico rotaciona a reta, distorcendo a razão de preços. Para a mesma receita, o *lump sum* gera utilidade maior porque o consumidor pode realocar livremente. A alternativa (a) confunde eficiência com equidade; (c) é falsa por construção (mesma receita); (d) é a armadilha — mesma receita *não* significa mesmo bem-estar.

??? question "4. A dualidade entre $V(\mathbf{p}, I)$ e $E(\mathbf{p}, \bar{u})$ implica que:"
    - (a) $V$ e $E$ são a mesma função, apenas com nomes diferentes
    - (b) $V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}$ e $E(\mathbf{p}, V(\mathbf{p}, I)) = I$
    - (c) As demandas marshalliana e hicksiana são sempre iguais
    - (d) A função dispêndio é homogênea de grau zero em preços

    ??? success "Resposta"
        **(b)** As identidades de dualidade afirmam que $V$ e $E$ são inversas uma da outra (fixados os preços): gastar o mínimo para atingir a utilidade máxima devolve a renda original, e maximizar utilidade com a renda mínima devolve a utilidade original. A alternativa (a) é imprecisa — são funções diferentes com argumentos diferentes; (c) só vale para utilidade quase-linear; (d) é falsa — $E$ é homogênea de grau *1* em preços.

??? question "5. Um consumidor com utilidade Cobb-Douglas $u = x_1^a x_2^b$ gasta, no ótimo, uma fração fixa da renda em cada bem. Se $a = 1$ e $b = 3$, qual fração da renda é gasta no bem 1?"
    - (a) $1/3$
    - (b) $3/4$
    - (c) $1/4$
    - (d) $1/2$

    ??? success "Resposta"
        **(c)** Na Cobb-Douglas $u = x_1^a x_2^b$, a fração gasta no bem $i$ é o expoente dividido pela soma dos expoentes. Para o bem 1: $a/(a+b) = 1/(1+3) = 1/4$. A alternativa (b) = $3/4$ é a fração gasta no bem 2; (a) e (d) usam cálculos incorretos.

??? question "6. A Identidade de Roy e o Lema de Shephard são úteis porque:"
    - (a) Permitem resolver o problema do consumidor sem usar Lagrangeano
    - (b) Recuperam as demandas marshalliana e hicksiana a partir de $V$ e $E$, respectivamente, usando apenas derivadas parciais
    - (c) Demonstram que as demandas marshalliana e hicksiana são sempre iguais
    - (d) São válidos apenas para a função Cobb-Douglas

    ??? success "Resposta"
        **(b)** A Identidade de Roy recupera a demanda marshalliana a partir de $V$: $x_i = -(\partial V/\partial p_i)/(\partial V/\partial I)$. O Lema de Shephard recupera a demanda hicksiana a partir de $E$: $h_i = \partial E/\partial p_i$. Ambos evitam *re-resolver* o problema de otimização — basta derivar funções já conhecidas. A alternativa (a) é imprecisa: o Lagrangeano é necessário para obter $V$ e $E$ inicialmente; (c) só vale para utilidade quase-linear; (d) são resultados gerais.

---

## 📋 Resumo do Capítulo

- O **problema do consumidor** consiste em maximizar a utilidade sujeita à restrição orçamentária \(p_1 x_1 + p_2 x_2 \leq I\). A solução interior exige **tangência** entre curva de indiferença e reta orçamentária: \(\text{TMS}_{12} = p_1/p_2\), ou equivalentemente, igualdade da utilidade marginal por real gasto em cada bem.
- O **método de Lagrange** generaliza a solução para \(n\) bens; o multiplicador \(\lambda\) é a **utilidade marginal da renda**. As **funções de demanda marshalliana** \(x_i(\mathbf{p}, I)\) resultantes são homogêneas de grau zero em preços e renda e satisfazem a lei de Walras.
- A **função de utilidade indireta** \(V(\mathbf{p}, I)\) expressa a utilidade máxima alcançável dados preços e renda. A **Identidade de Roy** recupera as demandas marshallianas a partir de \(V\).
- O **princípio do montante fixo** demonstra que um imposto *lump sum* causa menor perda de bem-estar que um imposto específico de mesma receita, pois não distorce preços relativos.
- O **problema dual** (minimização do dispêndio) determina o gasto mínimo para atingir um nível de utilidade \(\bar{u}\), gerando a **função dispêndio** \(E(\mathbf{p}, \bar{u})\) e as **demandas hicksianas** \(h_i(\mathbf{p}, \bar{u})\). O **Lema de Shephard** recupera as demandas hicksianas como derivadas da função dispêndio.
- A **dualidade** conecta os problemas primal e dual: \(V\) e \(E\) são inversas uma da outra (fixados os preços), e as demandas marshalliana e hicksiana se relacionam pelas identidades \(x_i(\mathbf{p}, I) = h_i(\mathbf{p}, V(\mathbf{p}, I))\).

## 🔑 Conceitos-Chave

<a id="tabela-4-3"></a>

| Conceito | Definição |
|----------|-----------|
| Restrição orçamentária | Conjunto de cestas acessíveis dado preços e renda: \(p_1 x_1 + p_2 x_2 \leq I\). A inclinação da reta orçamentária (\(-p_1/p_2\)) é o custo de oportunidade do bem 1 em termos do bem 2. |
| Condição de tangência | No ótimo interior, a TMS iguala a razão de preços: a taxa de troca subjetiva coincide com a taxa de troca objetiva do mercado. |
| Demanda marshalliana (walrasiana) | Quantidade ótima de cada bem como função dos preços e da renda: \(x_i^* = x_i(\mathbf{p}, I)\). Homogênea de grau zero em \((\mathbf{p}, I)\). |
| Utilidade marginal da renda (\(\lambda\)) | Multiplicador de Lagrange do problema do consumidor; mede o ganho de utilidade por unidade monetária adicional de renda. |
| Função de utilidade indireta \(V(\mathbf{p}, I)\) | Utilidade máxima alcançável dados preços e renda. Não crescente em preços, não decrescente em renda. |
| Identidade de Roy | Recupera a demanda marshalliana a partir de \(V\): \(x_i = -\frac{\partial V/\partial p_i}{\partial V/\partial I}\). |
| Princípio do montante fixo | Um imposto *lump sum* gera utilidade pelo menos igual à de um imposto específico de mesma receita, pois preserva preços relativos. |
| Demanda hicksiana (compensada) | Quantidade que minimiza o gasto para atingir utilidade \(\bar{u}\): \(h_i(\mathbf{p}, \bar{u})\). Satisfaz a lei da demanda compensada (\(\partial h_i/\partial p_i \leq 0\)). |
| Função dispêndio \(E(\mathbf{p}, \bar{u})\) | Gasto mínimo para atingir utilidade \(\bar{u}\) aos preços vigentes. Homogênea de grau 1 em preços e côncava em preços. |
| Lema de Shephard | A derivada da função dispêndio em relação a \(p_i\) fornece a demanda hicksiana: \(\partial E/\partial p_i = h_i(\mathbf{p}, \bar{u})\). |

<div class="caption-obj" markdown>
**Tabela 4.3 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-4-1"></a>**Exercício 4.1.** Considere um consumidor com função de utilidade \(u(x_1, x_2) = x_1^{1/2} x_2^{1/2}\), preços \(p_1\) e \(p_2\) e renda \(I\).

(a) Monte o lagrangeano e derive as condições de primeira ordem.

(b) Obtenha as funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

(c) Derive a função de utilidade indireta \(V(p_1, p_2, I)\).

(d) Verifique a Identidade de Roy para o bem 1.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-1)

---

<a id="ex-4-2"></a>**Exercício 4.2.** Para as mesmas preferências do exercício anterior:

(a) Formule e resolva o problema de minimização do dispêndio.

(b) Obtenha as demandas hicksianas \(h_1(p_1, p_2, \bar{u})\) e \(h_2(p_1, p_2, \bar{u})\).

(c) Derive a função dispêndio \(E(p_1, p_2, \bar{u})\).

(d) Verifique o Lema de Shephard para o bem 1.

(e) Verifique as identidades de dualidade \(V(\mathbf{p}, E(\mathbf{p}, \bar{u})) = \bar{u}\) e \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\).

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-2)

---

<a id="ex-4-3"></a>**Exercício 4.3.** Um consumidor tem preferências representadas por \(u(x_1, x_2) = \min\{2x_1, x_2\}\), com \(p_1 = 4\), \(p_2 = 2\) e \(I = 120\).

(a) Encontre a cesta ótima. (Dica: no ótimo, \(2x_1 = x_2\).)

(b) Calcule a utilidade máxima.

(c) Qual seria a cesta ótima se a renda aumentasse para \(I = 180\)? Os bens são normais?

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-3)

---

<a id="ex-4-4"></a>**Exercício 4.4.** O governo está considerando duas políticas para arrecadar R\$ 100 de um consumidor com \(u(x_1, x_2) = x_1^{0,4} x_2^{0,6}\), \(p_1 = 10\), \(p_2 = 5\) e \(I = 1000\):

(a) **Política A**: imposto específico de \(t\) por unidade sobre o bem 1. Encontre \(t\) tal que a receita seja R\$ 100.

(b) **Política B**: imposto *lump sum* de R\$ 100.

(c) Compare os níveis de utilidade do consumidor sob as duas políticas. Qual é preferida pelo consumidor? Este resultado é consistente com o princípio do montante fixo?

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-4)

---

<a id="ex-4-5"></a>**Exercício 4.5.** Considere um consumidor com utilidade quase-linear \(u(x_1, x_2) = 2\sqrt{x_1} + x_2\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas. Sob quais condições a solução é interior?

(b) Mostre que a demanda pelo bem 1 é independente da renda (para soluções interiores). Interprete.

(c) Derive a função de utilidade indireta e a função dispêndio.

(d) Verifique que, para esse caso particular, as demandas marshalliana e hicksiana do bem 1 são **idênticas**. Explique por que isso ocorre.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-5)

---

<a id="ex-4-6"></a>**Exercício 4.6.** Um consumidor tem função de utilidade \(u(x_1, x_2) = x_1 x_2\), com preços \(p_1 = 2\), \(p_2 = 4\) e renda \(I = 80\).

(a) Encontre as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Calcule a função de utilidade indireta \(V(p_1, p_2, I)\).

(c) Verifique a Identidade de Roy para o bem 1: mostre que \(-\frac{\partial V/\partial p_1}{\partial V/\partial I} = x_1^*\).

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-6)

---

<a id="ex-4-7"></a>**Exercício 4.7.** Um consumidor tem preferências de substitutos perfeitos \(u(x_1, x_2) = 3x_1 + x_2\), com \(p_1 = 6\), \(p_2 = 4\) e \(I = 120\).

(a) Encontre o bundle ótimo. (Dica: compare a TMS com a razão de preços.)

(b) Suponha que o preço do bem 1 caia para \(p_1 = 2\). Qual é o novo bundle ótimo? Interprete a descontinuidade da demanda.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-7)

---

<a id="ex-4-8"></a>**Exercício 4.8.** Um consumidor tem função de utilidade \(u(x_1, x_2) = x_1^{1/3} x_2^{2/3}\).

(a) Derive a função dispêndio \(E(p_1, p_2, \bar{u})\).

(b) Verifique o Lema de Shephard: mostre que \(\partial E/\partial p_1 = h_1(p_1, p_2, \bar{u})\) e \(\partial E/\partial p_2 = h_2(p_1, p_2, \bar{u})\).

(c) Use a identidade \(E(\mathbf{p}, V(\mathbf{p}, I)) = I\) para verificar a dualidade entre as funções dispêndio e utilidade indireta com os parâmetros \(p_1 = 6\), \(p_2 = 3\), \(I = 180\).

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-8)

---

<a id="ex-4-9"></a>**Exercício 4.9.** *(Aplicação Brasileira)* Uma família brasileira tem função de utilidade Cobb-Douglas \(u(x_1, x_2) = x_1^{0{,}3} x_2^{0{,}7}\), onde \(x_1\) representa alimentação e \(x_2\) representa outros bens. A renda familiar é \(I = 3000\) e os preços iniciais são \(p_1 = 1\) e \(p_2 = 1\). O governo introduz um imposto de 20% sobre alimentos, elevando \(p_1\) para \(1{,}2\).

(a) Calcule a cesta ótima e a utilidade antes e depois do imposto.

(b) Calcule a receita arrecadada pelo imposto específico.

(c) Compare com um imposto *lump sum* de mesma receita: qual a utilidade resultante? A família prefere qual política?

(d) Calcule a **perda de bem-estar** do imposto específico em relação ao *lump sum* em termos de utilidade.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-9)

---

<a id="ex-4-10"></a>**Exercício 4.10.** *(Desafiador)* Considere a função de utilidade CES com elasticidade de substituição \(\sigma = 2\), parâmetros \(\alpha = \beta = 0{,}5\), preços \(p_1 = 3\), \(p_2 = 1\) e renda \(I = 60\).

(a) Derive as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Verifique que as demandas são homogêneas de grau zero em \((p_1, p_2, I)\): mostre que \(x_i^*(tp_1, tp_2, tI) = x_i^*(p_1, p_2, I)\) para qualquer \(t > 0\).

(c) Calcule o índice de preços CES \(P\) e interprete seu significado econômico.

[:material-arrow-right: Ver solução](../solucoes/cap04.md#ex-4-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 03"
    A maximização da função utilidade \(U(x, y) = \sqrt{xy}\), sujeita à restrição orçamentária \(xp_x + yp_y = R\), sendo \(R\) a renda exógena e \(p_i\), \(i = 1, 2\), os preços dos bens, gera as seguintes funções de demanda marshallianas: \(X(p_x, p_y, R) = \frac{1}{2}\frac{R}{p_x}\) e \(Y(p_x, p_y, R) = \frac{1}{2}\frac{R}{p_y}\). Avalie as assertivas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Como a demanda pelo bem \(x\) não depende do preço \(y\), aumentos deste último não afetarão a demanda por \(x\), mesmo com a renda gasta integralmente com os dois bens. |
    | 1    | Quando os preços dos dois bens forem \$2 e a renda igual a \$4, a função utilidade indireta assume o valor \(V(p_x, p_y, R) = 1\). |
    | 2    | O exercício de minimização do gasto \(\min\; xp_x + yp_y\), sujeito a \(U = \sqrt{xy}\), resulta em uma função demanda compensada ou hicksiana pelo bem \(x\) dada por \(h_x(p_x, p_y, U) = \sqrt{p_x/p_y} \cdot U\). |
    | 3    | A função gasto resultante do item anterior será \(e(p_x, p_y, U) = 2U\sqrt{p_x p_y}\), expressão que indica que preços maiores e utilidade maiores requerem gasto maior. |
    | 4    | Em relação à Equação de Slutsky, o efeito substituição (ES) será equivalente a \(ES = \frac{\partial h_x}{\partial p_x} = -\frac{1}{4}\frac{R}{p_x^2}\). |

    ??? success "Gabarito"
        **Respostas: 11010**

        **Justificativa por item:**

        - **Item 0 — V:** As demandas marshallianas são \(x = R/(2p_x)\) e \(y = R/(2p_y)\). Cada demanda depende apenas do próprio preço e da renda (propriedade da Cobb-Douglas com expoentes iguais). Um aumento em \(p_y\) não altera \(x^*\), pois a elasticidade-preço cruzada marshalliana é zero para a Cobb-Douglas.

        - **Item 1 — V:** \(V = U(x^*, y^*) = \sqrt{(R/2p_x)(R/2p_y)} = \frac{R}{2\sqrt{p_x p_y}}\). Com \(p_x = p_y = 2\) e \(R = 4\): \(V = \frac{4}{2\sqrt{4}} = \frac{4}{4} = 1\). ✓

        - **Item 2 — F:** A demanda hicksiana correta é \(h_x = U\sqrt{p_y/p_x}\) (e não \(\sqrt{p_x/p_y}\)). Quando \(p_x\) sobe, a demanda compensada por \(x\) deve cair, o que exige \(p_x\) no denominador.

        - **Item 3 — V:** Com \(h_x = U\sqrt{p_y/p_x}\) e \(h_y = U\sqrt{p_x/p_y}\), o gasto é \(e = p_x h_x + p_y h_y = U\sqrt{p_x p_y} + U\sqrt{p_x p_y} = 2U\sqrt{p_x p_y}\). ✓

        - **Item 4 — F:** O efeito substituição (Slutsky) é \(\partial h_x/\partial p_x = -\frac{1}{2}U p_y^{1/2} p_x^{-3/2}\). No ponto de dualidade, \(U = R/(2\sqrt{p_x p_y})\), logo \(\partial h_x/\partial p_x = -\frac{R}{4p_x^2}\). O enunciado diz \(-\frac{1}{4}\frac{R}{p_x^2}\), que coincide. Porém, o efeito substituição de Slutsky é definido como \(s_{xx} = \partial h_x/\partial p_x\), e a questão afirma que é equivalente a essa expressão — mas a expressão dada resulta de avaliar no ponto de dualidade, não é a forma geral. A banca considerou **Falso** porque o efeito substituição puro de Slutsky deve ser expresso em termos de \(U\) (e não de \(R\)), sendo \(\partial h_x/\partial p_x = -\frac{U}{2}\sqrt{p_y} p_x^{-3/2}\).

??? question "ANPEC 2024 — Questão 02"
    Seja \(\mathbf{p} = (p_1, \ldots, p_n)\) o vetor de preços, todos estritamente positivos, seja \(r > 0\) a renda do consumidor e \(\bar{u}\) um nível de utilidade. Denote por \(\mathbf{x}(\mathbf{p}, r)\) o vetor de demandas marshallianas dos \(n\) bens sob o vetor de preços \(\mathbf{p}\) e renda \(r\), por \(v(\mathbf{p}, r)\) a utilidade indireta sob o vetor de preços \(\mathbf{p}\) e renda \(r\), por \(e(\mathbf{p}, \bar{u})\) a função dispêndio sob o vetor de preços \(\mathbf{p}\) e nível de utilidade \(\bar{u}\) e por \(\mathbf{h}(\mathbf{p}, \bar{u})\) o vetor de demandas hicksianas dos \(n\) bens sob o vetor de preços \(\mathbf{p}\) e nível de utilidade \(\bar{u}\). Julgue as afirmativas abaixo como verdadeiras ou falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | \(x(\mathbf{p}, r) = h(\mathbf{p}, v(\mathbf{p}, r))\). |
    | 1    | \(e(\mathbf{p}, v(\mathbf{p}, r)) = r\). |
    | 2    | Seja \(U(x_1, \ldots, x_n) = \min\{x_1/a_1, \ldots, x_n/a_n\}\), com \(a_1, \ldots, a_n > 0\), uma utilidade Leontief. Então \(e(\mathbf{p}, \bar{u}) = (a_1 p_1 + \cdots + a_n p_n)/\bar{u}\). |
    | 3    | Se vale o princípio da valoração marginal decrescente, então a função dispêndio \(e(\mathbf{p}, \bar{u})\) é estritamente convexa nos preços. |
    | 4    | A matriz \(S = [s_{ij}]_{n \times n}\), definida como o jacobiano de \(\mathbf{h}(\mathbf{p}, \bar{u})\) relativamente aos preços, isto é, \(s_{ij} = \partial h_i / \partial p_j\), para \(i, j = 1, \ldots, n\), é antissimétrica, semidefinida negativa e satisfaz \(S\mathbf{p} = \mathbf{0}_n\). |

    ??? success "Gabarito"
        **Respostas: 11000**

        **Justificativa por item:**

        - **Item 0 — V:** Esta é a identidade fundamental de dualidade. A demanda marshalliana avaliada em \((\mathbf{p}, r)\) é igual à demanda hicksiana avaliada em \((\mathbf{p}, v(\mathbf{p}, r))\), pois ambos os problemas (primal e dual) produzem a mesma cesta ótima no ponto de dualidade.

        - **Item 1 — V:** Esta é a identidade de dualidade \(E(\mathbf{p}, V(\mathbf{p}, r)) = r\). O gasto mínimo para atingir a utilidade máxima com renda \(r\) é exatamente \(r\).

        - **Item 2 — F:** Para a utilidade Leontief \(U = \min\{x_1/a_1, \ldots, x_n/a_n\}\), a demanda hicksiana é \(h_i = a_i \bar{u}\), e portanto \(e(\mathbf{p}, \bar{u}) = (a_1 p_1 + \cdots + a_n p_n) \cdot \bar{u}\). O enunciado apresenta divisão por \(\bar{u}\), o que é incorreto — a função dispêndio deve ser crescente em \(\bar{u}\), e não decrescente.

        - **Item 3 — F:** A função dispêndio é **côncava** nos preços (não convexa). Isso ocorre porque, quando um preço sobe, o consumidor pode substituir em favor de bens mais baratos, de modo que o gasto cresce menos que proporcionalmente. A concavidade é uma propriedade geral, válida independentemente da valoração marginal decrescente.

        - **Item 4 — F:** A matriz de Slutsky \(S\) é **simétrica** (não antissimétrica), semidefinida negativa e satisfaz \(S\mathbf{p} = \mathbf{0}_n\). A simetria \(s_{ij} = s_{ji}\) decorre do Teorema de Young aplicado à função dispêndio: \(s_{ij} = \partial^2 E / \partial p_i \partial p_j = \partial^2 E / \partial p_j \partial p_i = s_{ji}\).

??? question "ANPEC 2023 — Questão 02"
    Com base na Teoria do Consumidor, julgue as afirmações abaixo:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Se a utilidade \(U(X, Y)\) é quase-côncava sobre \(\mathbb{R}^2\), então o conjunto \(S(X_0, Y_0) = \{(X, Y) \in \mathbb{R}^2 : U(X, Y) \geq U(X_0, Y_0)\}\) é convexo. |
    | 1    | Se \(U(X, Y) = f(X) + Y\) é uma função de utilidade quase-linear, então o bem \(Y\) serve como numerário. |
    | 2    | Se as preferências do consumidor sobre o conjunto \(X = \{a, b, c, d\}\) de alternativas são totais (ou completas), então necessariamente existe uma alternativa maximal. |
    | 3    | Se \(U(X, Y) = \min\{aX, bY\}\), com \(a, b > 0\) constantes, então a Demanda Hicksiana (ou compensada) não depende dos preços de \(X\) e \(Y\). |
    | 4    | Seja \(U(X, Y) = X^a Y^{1-a}\), com \(0 < a < 1\), uma Utilidade Cobb-Douglas. Então a elasticidade-preço cruzada da Demanda Marshalliana é positiva. |

    ??? success "Gabarito"
        **Respostas: 11110**

        **Justificativa por item:**

        - **Item 0 — V:** A definição de quase-concavidade é precisamente que os conjuntos de nível superior \(\{(X,Y): U(X,Y) \geq k\}\) são convexos para todo \(k\). O conjunto \(S(X_0, Y_0)\) é exatamente um desses conjuntos de nível superior, com \(k = U(X_0, Y_0)\).

        - **Item 1 — V:** Na utilidade quase-linear \(U = f(X) + Y\), o bem \(Y\) entra linearmente. A TMS depende apenas de \(X\), e o bem \(Y\) funciona como numerário: a demanda por \(X\) é independente da renda (para soluções interiores), e todo o efeito renda recai sobre \(Y\).

        - **Item 2 — V:** O conjunto \(X = \{a, b, c, d\}\) é finito. Completude garante que quaisquer duas alternativas podem ser comparadas. Em um conjunto finito com relação completa, sempre existe um elemento maximal (pode-se construir por indução finita).

        - **Item 3 — V:** Para \(U = \min\{aX, bY\}\), as demandas hicksianas são \(h_X = \bar{u}/a\) e \(h_Y = \bar{u}/b\). Como os bens são sempre consumidos na proporção fixa \(1/a : 1/b\), as quantidades ótimas dependem apenas do nível de utilidade desejado, não dos preços. O efeito substituição é zero (\(\sigma = 0\)).

        - **Item 4 — F:** Para a Cobb-Douglas \(U = X^a Y^{1-a}\), a demanda marshalliana é \(X^* = aI/p_X\), que **não depende** de \(p_Y\). Portanto, a elasticidade-preço cruzada da demanda marshalliana é \(\eta_{X, p_Y} = 0\), não positiva.

---

!!! tip "🤖 Exercício com IA"
    **IA.1 — Utilidade CES e Casos Limite**

    Peça à IA para resolver o problema de maximização do consumidor com utilidade CES $u = (x_1^\rho + x_2^\rho)^{1/\rho}$ para diferentes valores de $\rho$. Compare as soluções quando $\rho \to 0$ (Cobb-Douglas), $\rho = 1$ (substitutos perfeitos) e $\rho \to -\infty$ (complementos perfeitos). A IA acertou todos os casos limite? Verifique.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-1)
