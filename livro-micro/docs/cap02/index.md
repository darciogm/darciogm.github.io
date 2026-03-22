# Capítulo 2 — A Caixa de Ferramentas Matemática do Economista

## Introdução

A microeconomia moderna é uma disciplina intrinsecamente matemática. Os modelos apresentados no Capítulo 1 — maximização de utilidade, maximização de lucro, equilíbrio de mercado — requerem um aparato formal para serem formulados com precisão e para que suas implicações possam ser derivadas rigorosamente. Este capítulo apresenta as ferramentas matemáticas essenciais para o estudo da microeconomia em nível avançado.

O objetivo não é substituir um curso de matemática, mas fornecer uma referência autocontida dos resultados e técnicas que serão utilizados ao longo do livro. O leitor familiarizado com cálculo multivariado e álgebra linear pode percorrer este capítulo rapidamente, concentrando-se nas aplicações econômicas e nos resultados menos habituais, como o teorema do envelope e as condições de Kuhn-Tucker.

---

## 2.1 Maximização de funções de uma variável

### Condições de primeira ordem

Seja \(f: \mathbb{R} \to \mathbb{R}\) uma função duas vezes diferenciável. Se \(x^*\) é um máximo interior de \(f\), então:

\[
f'(x^*) = 0 \quad \text{(condição necessária de primeira ordem — CPO)}
\]

A CPO identifica **pontos críticos** (máximos, mínimos ou pontos de inflexão), mas não os distingue entre si.

### Condições de segunda ordem

Para garantir que o ponto crítico é um máximo (e não um mínimo), exige-se:

\[
f''(x^*) < 0 \quad \text{(condição suficiente de segunda ordem — CSO)}
\]

Se \(f''(x^*) > 0\), o ponto é um mínimo local. Se \(f''(x^*) = 0\), o teste é inconclusivo.

!!! example "Aplicação: receita marginal decrescente"
    Considere uma firma monopolista com função de demanda inversa \(P(q) = 100 - 2q\) e custo total \(CT(q) = 10q + q^2\). O lucro é:

    \[
    \pi(q) = P(q) \cdot q - CT(q) = (100 - 2q)q - (10q + q^2) = 90q - 3q^2
    \]

    CPO: \(\pi'(q) = 90 - 6q = 0 \implies q^* = 15\).

    CSO: \(\pi''(q) = -6 < 0\). Confirmado: \(q^* = 15\) é um máximo.

    Lucro máximo: \(\pi(15) = 90(15) - 3(225) = 1350 - 675 = 675\).

---

## 2.2 Funções de várias variáveis

### Derivadas parciais

Seja \(f: \mathbb{R}^n \to \mathbb{R}\). A **derivada parcial** de \(f\) em relação a \(x_i\), denotada \(\frac{\partial f}{\partial x_i}\) ou \(f_i\), mede a taxa de variação de \(f\) quando apenas \(x_i\) varia, mantendo todas as demais variáveis constantes — é o equivalente matemático do *ceteris paribus*.

### Diferencial total

A **diferencial total** de \(f(x_1, x_2, \ldots, x_n)\) é:

\[
df = \sum_{i=1}^{n} \frac{\partial f}{\partial x_i} \, dx_i = f_1 \, dx_1 + f_2 \, dx_2 + \cdots + f_n \, dx_n
\]

A diferencial total expressa a variação aproximada de \(f\) quando todas as variáveis mudam simultaneamente por quantidades infinitesimais.

### Teorema da função implícita

!!! definition "Teorema da Função Implícita"
    Seja \(F(x, y) = 0\) uma relação implícita entre \(x\) e \(y\), com \(F\) continuamente diferenciável e \(F_y \neq 0\) em um ponto \((x_0, y_0)\). Então, em uma vizinhança de \((x_0, y_0)\), existe uma função \(y = g(x)\) tal que \(F(x, g(x)) = 0\), e:

    \[
    \frac{dy}{dx} = -\frac{F_x}{F_y}
    \]

Este resultado é fundamental em estática comparativa: permite calcular como uma variável endógena responde a mudanças em uma variável exógena quando a relação entre elas é dada implicitamente por uma condição de equilíbrio.

**Aplicação.** Considere a condição de equilíbrio \(D(P, Y) - S(P) = 0\), onde \(P\) é o preço e \(Y\) é a renda. Pelo teorema da função implícita:

\[
\frac{dP}{dY} = -\frac{\partial D / \partial Y}{\partial D / \partial P - \partial S / \partial P} = -\frac{D_Y}{D_P - S_P}
\]

Se \(D_Y > 0\) (bem normal) e \(D_P - S_P < 0\) (inclinação da demanda menor que a da oferta), então \(\frac{dP}{dY} > 0\): um aumento na renda eleva o preço de equilíbrio.

---

## 2.3 Maximização com várias variáveis

Para maximizar \(f(x_1, x_2, \ldots, x_n)\) sem restrições, as condições necessárias de primeira ordem são:

\[
\frac{\partial f}{\partial x_i} = 0, \quad i = 1, 2, \ldots, n
\]

Isso gera um sistema de \(n\) equações com \(n\) incógnitas.

As **condições de segunda ordem** envolvem a **matriz hessiana**:

\[
H = \begin{pmatrix}
f_{11} & f_{12} & \cdots & f_{1n} \\
f_{21} & f_{22} & \cdots & f_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
f_{n1} & f_{n2} & \cdots & f_{nn}
\end{pmatrix}
\]

onde \(f_{ij} = \frac{\partial^2 f}{\partial x_i \partial x_j}\).

!!! definition "Condição Suficiente de Segunda Ordem (caso irrestrito)"
    O ponto crítico \(\mathbf{x}^*\) é um **máximo local** se a matriz hessiana \(H(\mathbf{x}^*)\) for **negativa definida**, ou seja, se todos os seus autovalores forem negativos. Equivalentemente, os menores principais líderes devem alternar em sinal: \(f_{11} < 0\), \(f_{11}f_{22} - f_{12}^2 > 0\), etc.

---

## 2.4 Teorema do envelope

O teorema do envelope é um dos resultados mais úteis e elegantes da microeconomia. Ele permite calcular como o valor ótimo de uma função objetivo muda quando um parâmetro varia, sem necessidade de recalcular a solução ótima.

!!! abstract "Teorema do Envelope (caso irrestrito)"
    Seja \(f(x, a)\) uma função de \(x\) (variável de escolha) e \(a\) (parâmetro), e seja \(x^*(a)\) a solução do problema \(\max_x f(x, a)\). Defina a **função valor** como:

    \[
    V(a) = f(x^*(a), a)
    \]

    Então:

    \[
    \frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial direta de \(f\) em relação a \(a\), avaliada na solução ótima — ignorando o efeito indireto via \(x^*(a)\).

**Demonstração.**

Pela regra da cadeia:

\[
\frac{dV}{da} = \frac{\partial f}{\partial x}\bigg|_{x^*(a)} \cdot \frac{dx^*}{da} + \frac{\partial f}{\partial a}\bigg|_{x^*(a)}
\]

Mas, pela condição de primeira ordem, \(\frac{\partial f}{\partial x}\big|_{x^*(a)} = 0\). Logo, o primeiro termo desaparece e:

\[
\boxed{\frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}}
\]

\(\blacksquare\)

!!! note "Intuição econômica"
    O resultado é intuitivo: no ótimo, o agente já ajustou \(x\) da melhor forma possível. Uma pequena mudança em \(x\) a partir do ótimo tem efeito de segunda ordem sobre \(f\) (pelo fato de que a derivada é zero no ótimo). Portanto, o único efeito de primeira ordem de uma mudança em \(a\) é o efeito **direto**.

---

## 2.5 Maximização com restrições: o método de Lagrange

O método de Lagrange é a ferramenta mais importante deste capítulo — e, possivelmente, de todo o curso de microeconomia. Praticamente todos os modelos que estudaremos — consumidor, firma, equilíbrio geral — envolvem otimizar uma função sujeita a restrições. Esta seção apresenta o método em um passo a passo detalhado, para que o leitor possa aplicá-lo com confiança a qualquer problema.

!!! info "Referências para aprofundamento"
    Para uma exposição mais detalhada dos fundamentos matemáticos do método de Lagrange, consulte Chiang & Wainwright (2005, Cap. 12) e Simon & Blume (1994, Cap. 18–19). Para aplicações econômicas, veja Nicholson & Snyder (2017, Cap. 2) e Jehle & Reny (2011, Cap. 1).

### Passo 0 — Identificar o problema

O problema canônico da microeconomia pode ser escrito na forma:

\[
\max_{x_1, x_2} f(x_1, x_2) \quad \text{sujeito a} \quad g(x_1, x_2) = c \tag{2.1}
\]

onde \(f\) é a **função objetivo** (o que o agente quer maximizar ou minimizar) e \(g(x_1, x_2) = c\) é a **restrição** (a limitação que o agente enfrenta). A formulação se generaliza para \(n\) variáveis de escolha e múltiplas restrições, mas o caso com duas variáveis e uma restrição é o ponto de partida ideal.

!!! info "Intuição econômica"
    Por que precisamos otimizar sob restrição? Porque em economia os recursos são escassos. Dois exemplos fundamentais:

    - **Consumidor**: maximiza a utilidade \(U(x_1, x_2)\) sujeito à restrição orçamentária \(p_1 x_1 + p_2 x_2 = m\). Aqui, \(f = U\), \(g = p_1 x_1 + p_2 x_2\), e \(c = m\).
    - **Firma**: minimiza o custo \(wL + rK\) sujeito a atingir um nível de produção \(f(K, L) = q_0\). Aqui, a função objetivo é o custo, a restrição é a isoquanta, e \(c = q_0\).

    Sem a restrição, a solução seria trivial (consumir infinito, por exemplo). É a escassez que torna o problema interessante — e que dá origem ao conceito de **custo de oportunidade**.

### Passo 1 — Montar o Lagrangeano

A ideia central do método de Lagrange é transformar o problema **restrito** em um problema **irrestrito**, incorporando a restrição diretamente na função a ser otimizada. Define-se a **função de Lagrange** (ou Lagrangeano):

\[
\mathcal{L}(x_1, x_2, \lambda) = f(x_1, x_2) + \lambda \left[c - g(x_1, x_2)\right] \tag{2.2}
\]

onde \(\lambda\) é o **multiplicador de Lagrange**, uma nova variável de escolha introduzida pelo método.

!!! tip "Dica: convenção de sinal"
    A equação (2.2) pode ser escrita equivalentemente como:

    \[
    \mathcal{L} = f(x_1, x_2) - \lambda \left[g(x_1, x_2) - c\right]
    \]

    As duas formas são matematicamente idênticas (basta redefinir o sinal de \(\lambda\)). Neste livro, adotamos a convenção \(f + \lambda[c - g]\), que garante que \(\lambda > 0\) em problemas de maximização com restrições "do tipo orçamentário". Alguns textos (como Varian, 1992) usam a outra convenção. O importante é ser consistente.

!!! info "Intuição econômica"
    O multiplicador \(\lambda\) tem um significado econômico profundo: é o **valor-sombra** (*shadow price*) da restrição. Ele mede quanto a função objetivo melhoraria se pudéssemos "relaxar" a restrição em uma unidade marginal. Por exemplo, no problema do consumidor, \(\lambda\) é a **utilidade marginal da renda** — quanto a utilidade máxima aumenta se a renda crescer em R\$ 1.

### Passo 2 — Condições de primeira ordem (CPOs)

Para encontrar o ótimo, derivamos \(\mathcal{L}\) em relação a cada variável de escolha (\(x_1\), \(x_2\)) e em relação a \(\lambda\), e igualamos a zero:

\[
\frac{\partial \mathcal{L}}{\partial x_1} = \frac{\partial f}{\partial x_1} - \lambda \frac{\partial g}{\partial x_1} = 0 \tag{2.3}
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = \frac{\partial f}{\partial x_2} - \lambda \frac{\partial g}{\partial x_2} = 0 \tag{2.4}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = c - g(x_1, x_2) = 0 \tag{2.5}
\]

Observe que a terceira CPO, equação (2.5), simplesmente **recupera a restrição original** \(g(x_1, x_2) = c\). Isso é uma consequência direta de como o Lagrangeano foi construído.

**Condição de tangência.** Das equações (2.3) e (2.4), podemos isolar \(\lambda\):

\[
\lambda = \frac{f_{x_1}}{g_{x_1}} = \frac{f_{x_2}}{g_{x_2}}
\]

Igualando as duas expressões:

\[
\frac{f_{x_1}}{f_{x_2}} = \frac{g_{x_1}}{g_{x_2}} \tag{2.6}
\]

A equação (2.6) é a **condição de tangência**: no ótimo, a razão das derivadas parciais da função objetivo é igual à razão das derivadas parciais da restrição. Geometricamente, isso significa que a **curva de nível** de \(f\) é tangente à curva definida pela restrição \(g = c\). Equivalentemente, os gradientes \(\nabla f\) e \(\nabla g\) são paralelos no ponto ótimo.

!!! info "Intuição econômica"
    No problema do consumidor, a equação (2.6) se torna:

    \[
    \frac{UMg_1}{UMg_2} = \frac{p_1}{p_2}
    \]

    Ou seja, a **taxa marginal de substituição** (TMS) se iguala à razão de preços. O consumidor ajusta suas quantidades até que a taxa à qual está *disposto* a trocar os bens (TMS) se iguale à taxa à qual o *mercado* permite trocá-los (razão de preços).

### Passo 3 — Resolver o sistema

O sistema de CPOs consiste em \(n + 1\) equações com \(n + 1\) incógnitas (no caso de duas variáveis: \(x_1, x_2, \lambda\) — três equações e três incógnitas). As estratégias de resolução mais comuns são:

**Estratégia A — Isolar \(\lambda\) e igualar.** De cada uma das primeiras CPOs, isola-se \(\lambda\):

\[
\lambda = \frac{f_{x_1}}{g_{x_1}}, \qquad \lambda = \frac{f_{x_2}}{g_{x_2}}
\]

Igualando as expressões, obtém-se uma relação entre \(x_1\) e \(x_2\) (a condição de tangência). Substituindo na restrição \(g = c\), resolve-se para os valores ótimos.

**Estratégia B — Dividir CPOs.** Divide-se a equação (2.3) pela equação (2.4):

\[
\frac{f_{x_1}}{f_{x_2}} = \frac{g_{x_1}}{g_{x_2}}
\]

Isso elimina \(\lambda\) diretamente e fornece a condição de tangência. Em seguida, substitui-se na restrição.

!!! tip "Dica"
    A estratégia B é geralmente a mais rápida, pois elimina \(\lambda\) em um único passo. A estratégia A é útil quando as expressões se simplificam melhor ao isolar \(\lambda\). Na prática, vale tentar as duas e escolher a mais conveniente.

!!! warning "Cuidado"
    Ao dividir CPOs, verifique que o denominador não é zero. Se \(f_{x_2} = 0\) ou \(g_{x_2} = 0\) em algum ponto, a divisão não é válida e pode haver soluções de canto. Nesse caso, é necessário usar o método de Kuhn-Tucker (Seção 2.7).

### Passo 4 — Interpretar \(\lambda\)

O multiplicador de Lagrange no ótimo, \(\lambda^*\), tem uma interpretação precisa como a derivada do **valor ótimo** em relação ao parâmetro da restrição:

\[
\lambda^* = \frac{df^*}{dc} = \frac{dV}{dc} \tag{2.7}
\]

onde \(V(c) = f(\mathbf{x}^*(c))\) é a **função valor** — o valor máximo de \(f\) dado o nível da restrição \(c\). Este resultado é uma consequência do **teorema do envelope** aplicado ao problema restrito (ver Seção 2.6).

!!! example "Exemplo numérico"
    Suponha que resolvemos o problema do consumidor e encontramos \(\lambda^* = 0{,}5\). Isso significa que, se a renda do consumidor aumentar em R\$ 1 (de \(m\) para \(m + 1\)), a utilidade máxima aumentará em aproximadamente 0,5 unidades. Reciprocamente, se a renda diminuir em R\$ 1, a utilidade cairá em aproximadamente 0,5 unidades.

!!! info "Intuição econômica"
    No problema do consumidor, \(\lambda^*\) é a **utilidade marginal da renda**. As CPOs implicam:

    \[
    \frac{UMg_1}{p_1} = \frac{UMg_2}{p_2} = \lambda
    \]

    Ou seja, no ótimo, a utilidade marginal por unidade monetária gasta é igual para todos os bens — o princípio da **equimarginalidade**. Se essa igualdade não valesse, o consumidor poderia realocar seu gasto entre os bens e aumentar sua utilidade.

    No problema da firma (minimização de custos), \(\lambda^*\) é o **custo marginal**: quanto custa produzir uma unidade adicional de produto quando a firma já está minimizando custos (ver [Capítulo 10](../cap10/index.md#condicao-de-tangencia)).

### Passo 5 — Verificar condições de segunda ordem

Encontrar um ponto que satisfaça as CPOs é necessário, mas não suficiente — pode ser um máximo, um mínimo ou um ponto de sela. A verificação formal das condições de segunda ordem utiliza o **hessiano orlado** (*bordered Hessian*).

Para o caso de duas variáveis e uma restrição, o hessiano orlado é a matriz \(3 \times 3\):

\[
\bar{H} = \begin{pmatrix}
0 & g_{x_1} & g_{x_2} \\
g_{x_1} & \mathcal{L}_{x_1 x_1} & \mathcal{L}_{x_1 x_2} \\
g_{x_2} & \mathcal{L}_{x_2 x_1} & \mathcal{L}_{x_2 x_2}
\end{pmatrix} \tag{2.8}
\]

onde \(\mathcal{L}_{x_i x_j} = f_{x_i x_j} - \lambda g_{x_i x_j}\) são as derivadas segundas do Lagrangeano.

A condição suficiente para **máximo** com restrição é:

\[
\det(\bar{H}) > 0 \tag{2.9}
\]

Para **mínimo** com restrição, a condição é \(\det(\bar{H}) < 0\).

!!! tip "Dica"
    Na prática, muitos problemas econômicos envolvem funções objetivo **quase-côncavas** (como a maioria das funções utilidade) e restrições lineares (como a restrição orçamentária). Nesses casos, a quase-concavidade garante que qualquer ponto que satisfaça as CPOs é necessariamente um máximo global — dispensando a verificação explícita do hessiano orlado (ver Seção 2.8).

!!! warning "Cuidado"
    Um erro comum é encontrar as CPOs, resolver o sistema e declarar a resposta como "o ótimo", sem verificar se é de fato um máximo (ou mínimo, conforme o problema). Em provas e exercícios, sempre mencione por que as condições de segunda ordem são satisfeitas — nem que seja por um argumento de quase-concavidade.

### Exercício resolvido: maximização de utilidade CES via Lagrangeano {#exercicio-ces}

Aplicamos agora o passo a passo completo a um problema que será recorrente ao longo do livro: a maximização de utilidade com preferências CES.

#### Enunciado

Um consumidor tem preferências representadas pela função de utilidade **CES** (*Constant Elasticity of Substitution* — Elasticidade de Substituição Constante):

\[
U(x_1, x_2) = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} \tag{2.10}
\]

onde \(0 < \alpha < 1\) é o parâmetro de distribuição e \(\rho < 1\), \(\rho \neq 0\), é o parâmetro de substituição. A **elasticidade de substituição** é:

\[
\sigma = \frac{1}{1 - \rho} \tag{2.11}
\]

O consumidor dispõe de renda \(m\) e enfrenta preços \(p_1\) e \(p_2\).

**Problema:** Encontre as demandas marshallianas \(x_1^*(p_1, p_2, m)\) e \(x_2^*(p_1, p_2, m)\) usando o método do Lagrangeano.

#### Resolução

##### Passo 0 — Identificar o problema

O problema do consumidor é:

\[
\max_{x_1, x_2} \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = m \tag{2.12}
\]

Aqui, \(f(x_1, x_2) = U(x_1, x_2)\) é a utilidade CES, \(g(x_1, x_2) = p_1 x_1 + p_2 x_2\) é o gasto total, e \(c = m\) é a renda.

##### Passo 1 — Montar o Lagrangeano

O Lagrangeano é:

\[
\mathcal{L} = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} - \lambda \left(p_1 x_1 + p_2 x_2 - m\right) \tag{2.13}
\]

!!! tip "Dica: simplificação por transformação monotônica"
    A função \(z^{1/\rho}\) é uma transformação monotônica crescente de \(z\) (para \(z > 0\)). Como transformações monotônicas preservam a ordenação de preferências, maximizar \(U = (\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho})^{1/\rho}\) é equivalente a maximizar:

    \[
    V(x_1, x_2) = \alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho} \tag{2.14}
    \]

    Esta simplificação elimina o expoente \(1/\rho\), tornando as derivadas parciais muito mais simples. As demandas ótimas \(x_1^*\) e \(x_2^*\) serão as mesmas (apenas o valor de \(\lambda\) mudará). Usamos a versão simplificada daqui em diante.

O Lagrangeano simplificado é:

\[
\mathcal{L} = \alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho} - \lambda \left(p_1 x_1 + p_2 x_2 - m\right) \tag{2.15}
\]

##### Passo 2 — Condições de primeira ordem

Derivando o Lagrangeano (2.15) em relação a \(x_1\), \(x_2\) e \(\lambda\):

\[
\frac{\partial \mathcal{L}}{\partial x_1} = \alpha \rho \, x_1^{\rho - 1} - \lambda p_1 = 0 \tag{2.16}
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = (1-\alpha) \rho \, x_2^{\rho - 1} - \lambda p_2 = 0 \tag{2.17}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = m - p_1 x_1 - p_2 x_2 = 0 \tag{2.18}
\]

A equação (2.18) confirma que a restrição orçamentária é satisfeita.

##### Passo 3 — Resolver o sistema

**Dividir (2.16) por (2.17)** para eliminar \(\lambda\):

\[
\frac{\alpha \rho \, x_1^{\rho - 1}}{(1-\alpha) \rho \, x_2^{\rho - 1}} = \frac{\lambda p_1}{\lambda p_2}
\]

Os fatores \(\rho\) e \(\lambda\) se cancelam:

\[
\frac{\alpha}{1-\alpha} \left(\frac{x_1}{x_2}\right)^{\rho - 1} = \frac{p_1}{p_2} \tag{2.19}
\]

**Isolar a razão \(x_1/x_2\):**

\[
\left(\frac{x_1}{x_2}\right)^{\rho - 1} = \frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}
\]

\[
\frac{x_1}{x_2} = \left(\frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}\right)^{1/(\rho - 1)} \tag{2.20}
\]

!!! tip "Dica: relação entre os expoentes"
    Vamos mostrar que \(\frac{1}{\rho - 1} = -\sigma\). Pela definição (2.11), \(\sigma = \frac{1}{1-\rho}\), logo:

    \[
    \frac{1}{\rho - 1} = \frac{1}{-(1 - \rho)} = -\frac{1}{1-\rho} = -\sigma
    \]

    Portanto, podemos reescrever (2.20) como:

    \[
    \frac{x_1}{x_2} = \left(\frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}\right)^{-\sigma} = \left(\frac{\alpha}{1-\alpha} \cdot \frac{p_2}{p_1}\right)^{\sigma} \tag{2.21}
    \]

**Expressar \(x_1\) em função de \(x_2\).** Da equação (2.21):

\[
x_1 = x_2 \left(\frac{\alpha}{1-\alpha}\right)^{\sigma} \left(\frac{p_2}{p_1}\right)^{\sigma} \tag{2.22}
\]

**Substituir na restrição orçamentária (2.18):**

\[
p_1 \cdot x_2 \left(\frac{\alpha}{1-\alpha}\right)^{\sigma} \left(\frac{p_2}{p_1}\right)^{\sigma} + p_2 \, x_2 = m
\]

Colocando \(x_2\) em evidência:

\[
x_2 \left[p_1 \left(\frac{\alpha}{1-\alpha}\right)^{\sigma} \left(\frac{p_2}{p_1}\right)^{\sigma} + p_2\right] = m
\]

Simplificando o termo entre colchetes. Observe que:

\[
p_1 \left(\frac{p_2}{p_1}\right)^{\sigma} = p_1^{1-\sigma} \, p_2^{\sigma}
\]

Logo:

\[
x_2 \left[\alpha^{\sigma}(1-\alpha)^{-\sigma} \, p_1^{1-\sigma} \, p_2^{\sigma} + p_2\right] = m
\]

Multiplicando e dividindo o segundo termo por \((1-\alpha)^{\sigma} (1-\alpha)^{-\sigma} = 1\):

\[
x_2 \left[\frac{\alpha^{\sigma} \, p_1^{1-\sigma} \, p_2^{\sigma} + (1-\alpha)^{\sigma} \, p_2}{(1-\alpha)^{\sigma}}\right] \cdot (1-\alpha)^{\sigma} = m
\]

Fatorando \(p_2^{\sigma}\) e reorganizando, chegamos a:

\[
x_2^* = \frac{(1-\alpha)^{\sigma} \, p_2^{-\sigma}}{\alpha^{\sigma} \, p_1^{1-\sigma} + (1-\alpha)^{\sigma} \, p_2^{1-\sigma}} \cdot m \tag{2.23}
\]

Por simetria (ou repetindo o procedimento para \(x_1\)):

\[
x_1^* = \frac{\alpha^{\sigma} \, p_1^{-\sigma}}{\alpha^{\sigma} \, p_1^{1-\sigma} + (1-\alpha)^{\sigma} \, p_2^{1-\sigma}} \cdot m \tag{2.24}
\]

!!! definition "Demandas marshallianas CES"
    As funções de demanda marshallianas para o caso CES são:

    \[
    \boxed{x_i^* = \frac{\alpha_i^{\sigma} \, p_i^{-\sigma}}{\sum_{j} \alpha_j^{\sigma} \, p_j^{1-\sigma}} \cdot m}, \qquad i = 1, 2
    \]

    onde \(\alpha_1 = \alpha\) e \(\alpha_2 = 1-\alpha\). A fração \(\frac{\alpha_i^{\sigma} \, p_i^{1-\sigma}}{\sum_j \alpha_j^{\sigma} \, p_j^{1-\sigma}}\) é a **parcela orçamentária** (*budget share*) do bem \(i\), denotada \(s_i\).

Observe que as demandas são **homogêneas de grau zero** em \((p_1, p_2, m)\): multiplicar todos os preços e a renda por uma constante não altera as quantidades demandadas.

##### Passo 4 — Interpretar \(\lambda^*\)

Da CPO (2.16), isolamos \(\lambda\):

\[
\lambda^* = \frac{\alpha \rho \, (x_1^*)^{\rho-1}}{p_1} \tag{2.25}
\]

Como usamos a versão simplificada \(V = \alpha x_1^{\rho} + (1-\alpha) x_2^{\rho}\), este \(\lambda^*\) corresponde à derivada de \(V^*\) em relação a \(m\). Para obter a utilidade marginal da renda da função original \(U = V^{1/\rho}\), aplicamos a regra da cadeia.

**Verificação numérica.** Considere os seguintes valores:

- \(\alpha = 0{,}5\), \(\rho = 0{,}5\) (ou seja, \(\sigma = \frac{1}{1-0{,}5} = 2\))
- \(p_1 = 2\), \(p_2 = 3\), \(m = 120\)

Calculemos as demandas ótimas. O denominador comum é:

\[
D = \alpha^{\sigma} p_1^{1-\sigma} + (1-\alpha)^{\sigma} p_2^{1-\sigma} = 0{,}5^2 \cdot 2^{-1} + 0{,}5^2 \cdot 3^{-1}
\]

\[
D = 0{,}25 \cdot 0{,}5 + 0{,}25 \cdot 0{,}333 = 0{,}125 + 0{,}0833 = 0{,}2083
\]

Demanda do bem 1:

\[
x_1^* = \frac{0{,}5^2 \cdot 2^{-2}}{0{,}2083} \cdot 120 = \frac{0{,}25 \cdot 0{,}25}{0{,}2083} \cdot 120 = \frac{0{,}0625}{0{,}2083} \cdot 120 = 0{,}3 \cdot 120 = 36
\]

Demanda do bem 2:

\[
x_2^* = \frac{0{,}5^2 \cdot 3^{-2}}{0{,}2083} \cdot 120 = \frac{0{,}25 \cdot 0{,}1111}{0{,}2083} \cdot 120 = \frac{0{,}02778}{0{,}2083} \cdot 120 = 0{,}1333 \cdot 120 = 16
\]

Verificação pela restrição orçamentária:

\[
p_1 x_1^* + p_2 x_2^* = 2 \times 36 + 3 \times 16 = 72 + 48 = 120 = m \quad \checkmark
\]

Utilidade no ótimo:

\[
U^* = \left(0{,}5 \cdot 36^{0,5} + 0{,}5 \cdot 16^{0,5}\right)^{1/0,5} = \left(0{,}5 \cdot 6 + 0{,}5 \cdot 4\right)^{2} = (3 + 2)^2 = 25
\]

Para \(\lambda^*\) (versão simplificada): da CPO (2.16),

\[
\lambda^* = \frac{0{,}5 \cdot 0{,}5 \cdot 36^{-0,5}}{2} = \frac{0{,}25 \cdot \frac{1}{6}}{2} = \frac{0{,}04167}{2} = 0{,}02083
\]

**Interpretação:** se a renda aumentar de R\$ 120 para R\$ 121, a utilidade (na versão \(V\)) aumentará em aproximadamente 0,02083 unidades.

##### Passo 5 — Condições de segunda ordem

A função CES com \(0 < \alpha < 1\) e \(\rho < 1\) é **quase-côncava** (seus conjuntos de nível superior são convexos). Como a restrição orçamentária é linear — portanto define um conjunto convexo — o ponto encontrado pelas CPOs é um **máximo global** do problema restrito. A verificação explícita do hessiano orlado não é necessária neste caso.

!!! example "Casos especiais da CES"

    A família CES engloba, como casos-limite, as principais funções utilidade da microeconomia:

    **1. \(\rho \to 0\) (\(\sigma \to 1\)): Cobb-Douglas**

    Quando \(\rho \to 0\), pode-se mostrar (pela regra de L'Hôpital aplicada ao logaritmo) que:

    \[
    U \to x_1^{\alpha} \, x_2^{1-\alpha}
    \]

    As demandas marshallianas se reduzem a:

    \[
    x_1^* = \frac{\alpha \, m}{p_1}, \qquad x_2^* = \frac{(1-\alpha) \, m}{p_2}
    \]

    As parcelas orçamentárias são constantes: o consumidor gasta fração \(\alpha\) da renda no bem 1 e fração \(1-\alpha\) no bem 2, independentemente dos preços.

    **2. \(\rho \to -\infty\) (\(\sigma \to 0\)): Leontief (complementos perfeitos)**

    Quando \(\rho \to -\infty\):

    \[
    U \to \min\{x_1, x_2\}
    \]

    A elasticidade de substituição é zero — os bens são consumidos em proporções fixas. A demanda é:

    \[
    x_1^* = x_2^* = \frac{m}{p_1 + p_2}
    \]

    **3. \(\rho = 1\) (\(\sigma \to \infty\)): Substitutos perfeitos**

    Para \(\rho = 1\):

    \[
    U = \alpha x_1 + (1-\alpha) x_2
    \]

    Os bens são substitutos perfeitos. A demanda é uma solução de canto: o consumidor gasta toda a renda no bem com maior "valor por unidade monetária":

    \[
    x_1^* = \frac{m}{p_1} \text{ se } \frac{\alpha}{p_1} > \frac{1-\alpha}{p_2}; \qquad x_2^* = \frac{m}{p_2} \text{ caso contrário}
    \]

    Se \(\frac{\alpha}{p_1} = \frac{1-\alpha}{p_2}\), qualquer combinação na restrição orçamentária é ótima.

    A tabela abaixo resume os casos:

    | Parâmetro \(\rho\) | \(\sigma\) | Função utilidade | Curvas de indiferença |
    |---|---|---|---|
    | \(\rho \to -\infty\) | 0 | \(\min\{x_1, x_2\}\) | Ângulo reto (L) |
    | \(\rho \to 0\) | 1 | \(x_1^{\alpha} x_2^{1-\alpha}\) | Hipérboles "suaves" |
    | \(\rho = 0{,}5\) | 2 | \((\alpha \sqrt{x_1} + (1-\alpha)\sqrt{x_2})^2\) | Curvas intermediárias |
    | \(\rho = 1\) | \(\infty\) | \(\alpha x_1 + (1-\alpha) x_2\) | Retas paralelas |

#### Gráfico interativo: demandas marshallianas CES

<iframe src="../graficos/cap02/ces-demandas.html" width="100%" height="750" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.4</strong> — Demandas marshallianas CES. Varie os parâmetros \(\alpha\), \(\rho\), \(p_1\), \(p_2\) e \(m\) para observar como as curvas de indiferença mudam de forma (de complementos perfeitos a substitutos perfeitos) e como o ponto ótimo se desloca ao longo da restrição orçamentária. A elasticidade de substituição \(\sigma = 1/(1-\rho)\) é exibida em tempo real.
</p>

---

## 2.6 Teorema do envelope na maximização restrita

!!! abstract "Teorema do Envelope (caso restrito)"
    Considere o problema \(\max_{\mathbf{x}} f(\mathbf{x}, a)\) sujeito a \(g(\mathbf{x}, a) = c\), e defina a função valor \(V(a) = f(\mathbf{x}^*(a), a)\). Então:

    \[
    \frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*(a), \lambda^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial do **Lagrangeano** (não apenas de \(f\)) em relação ao parâmetro, avaliada na solução ótima.

**Demonstração completa.**

Defina a função valor:

\[
V(a) = f(\mathbf{x}^*(a), a)
\]

O Lagrangeano é \(\mathcal{L} = f(\mathbf{x}, a) + \lambda[c - g(\mathbf{x}, a)]\). Como a restrição é satisfeita no ótimo, \(g(\mathbf{x}^*(a), a) = c\), temos:

\[
V(a) = f(\mathbf{x}^*(a), a) = \mathcal{L}(\mathbf{x}^*(a), \lambda^*(a), a)
\]

Diferenciando \(V(a)\) em relação a \(a\):

\[
\frac{dV}{da} = \sum_{i=1}^{n} \frac{\partial f}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial f}{\partial a}
\]

Pelas CPOs, \(\frac{\partial f}{\partial x_i} = \lambda^* \frac{\partial g}{\partial x_i}\). Substituindo:

\[
\frac{dV}{da} = \lambda^* \sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial f}{\partial a}
\]

Diferenciando a restrição \(g(\mathbf{x}^*(a), a) = c\) em relação a \(a\):

\[
\sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} + \frac{\partial g}{\partial a} = 0
\]

Portanto:

\[
\sum_{i=1}^{n} \frac{\partial g}{\partial x_i} \frac{dx_i^*}{da} = -\frac{\partial g}{\partial a}
\]

Substituindo:

\[
\frac{dV}{da} = -\lambda^* \frac{\partial g}{\partial a} + \frac{\partial f}{\partial a} = \frac{\partial f}{\partial a} - \lambda^* \frac{\partial g}{\partial a} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*, \lambda^*}
\]

\[
\boxed{\frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*(a), \lambda^*(a)}}
\]

\(\blacksquare\)

---

## 2.7 Restrições de desigualdade: condições de Kuhn-Tucker

Em muitos problemas econômicos, as restrições são **desigualdades** (por exemplo, \(x_i \geq 0\), ou restrições orçamentárias do tipo \(\leq\)):

\[
\max_{\mathbf{x}} f(\mathbf{x}) \quad \text{s.a.} \quad g_j(\mathbf{x}) \leq c_j, \quad j = 1, \ldots, m; \quad x_i \geq 0, \quad i = 1, \ldots, n
\]

### Condições de Kuhn-Tucker (KKT)

O Lagrangeano generalizado é:

\[
\mathcal{L} = f(\mathbf{x}) + \sum_{j=1}^{m} \lambda_j \left[c_j - g_j(\mathbf{x})\right]
\]

As condições KKT são:

\[
\frac{\partial \mathcal{L}}{\partial x_i} \leq 0, \quad x_i \geq 0, \quad x_i \cdot \frac{\partial \mathcal{L}}{\partial x_i} = 0 \quad \forall \, i
\]

\[
\lambda_j \geq 0, \quad c_j - g_j(\mathbf{x}) \geq 0, \quad \lambda_j \left[c_j - g_j(\mathbf{x})\right] = 0 \quad \forall \, j
\]

!!! definition "Condições de folga complementar"
    As condições \(x_i \cdot \frac{\partial \mathcal{L}}{\partial x_i} = 0\) e \(\lambda_j [c_j - g_j(\mathbf{x})] = 0\) são chamadas de **condições de folga complementar** (*complementary slackness*). Elas expressam que:

    - Se \(x_i > 0\), então \(\frac{\partial \mathcal{L}}{\partial x_i} = 0\) (a CPO usual vale).
    - Se a restrição \(j\) não é ativa (\(g_j < c_j\)), então \(\lambda_j = 0\) (a restrição é irrelevante e seu multiplicador é zero).

!!! tip "Interpretação econômica"
    As condições KKT generalizam o método de Lagrange para situações em que o agente pode estar em uma "solução de canto". Por exemplo, um consumidor pode decidir não consumir nenhuma quantidade de um bem (solução \(x_i = 0\)), caso a utilidade marginal por unidade monetária desse bem seja inferior à dos demais bens, mesmo ao nível zero de consumo.

---

## 2.8 Condições de segunda ordem e curvatura

### Concavidade e convexidade

!!! definition "Concavidade"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **côncava** se, para todo \(\mathbf{x}, \mathbf{y} \in \mathbb{R}^n\) e todo \(t \in [0,1]\):

    \[
    f(t\mathbf{x} + (1-t)\mathbf{y}) \geq t \, f(\mathbf{x}) + (1-t) \, f(\mathbf{y})
    \]

    Se a desigualdade é estrita para \(\mathbf{x} \neq \mathbf{y}\) e \(t \in (0,1)\), a função é **estritamente côncava**.

Para funções duas vezes diferenciáveis, a concavidade equivale à condição de que a **hessiana seja negativa semidefinida** em todos os pontos.

Uma função côncava tem a propriedade crucial de que **todo ponto crítico é um máximo global** — o que simplifica enormemente os problemas de otimização.

### Quase-concavidade

!!! definition "Quase-concavidade"
    Uma função \(f\) é **quase-côncava** se seus **conjuntos de nível superior** \(\{x : f(x) \geq k\}\) são convexos para todo \(k\).

A quase-concavidade é mais fraca que a concavidade, mas é suficiente para garantir que curvas de indiferença têm o formato convexo usual (abauladas em direção à origem). A maioria das funções utilidade usadas em microeconomia é quase-côncava, embora nem todas sejam côncavas.

!!! note "Condições de segunda ordem em problemas restritos"
    Para problemas de maximização com restrições de igualdade, as condições de segunda ordem envolvem o **hessiano orlado** (*bordered Hessian*), que incorpora as derivadas da restrição. A quase-concavidade da função objetivo é suficiente para garantir que as CSO são satisfeitas em problemas restritos.

---

## 2.9 Funções homogêneas e Teorema de Euler

!!! definition "Função Homogênea"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **homogênea de grau \(k\)** se, para todo escalar \(t > 0\):

    \[
    f(t x_1, t x_2, \ldots, t x_n) = t^k \, f(x_1, x_2, \ldots, x_n)
    \]

Exemplos em economia:

- Uma função de produção com **retornos constantes de escala** é homogênea de grau 1.
- Funções de demanda são homogêneas de grau 0 em preços e renda (ausência de ilusão monetária).

!!! abstract "Teorema de Euler"
    Se \(f\) é homogênea de grau \(k\) e diferenciável, então:

    \[
    \sum_{i=1}^{n} x_i \frac{\partial f}{\partial x_i} = k \cdot f(x_1, \ldots, x_n)
    \]

**Aplicação.** Para uma função de produção \(F(K, L)\) homogênea de grau 1 (retornos constantes de escala):

\[
K \cdot \frac{\partial F}{\partial K} + L \cdot \frac{\partial F}{\partial L} = F(K, L)
\]

Se cada fator recebe sua produtividade marginal (\(r = F_K\) e \(w = F_L\)), então \(rK + wL = F(K,L)\) — o produto é exatamente esgotado pela remuneração dos fatores. Este resultado é conhecido como o **problema da exaustão do produto** (Nicholson & Snyder, 2017).

---

## 2.10 Integração

Em microeconomia, a integração aparece em diversos contextos:

- **Excedente do consumidor**: \(EC = \int_{0}^{Q^*} D^{-1}(q) \, dq - P^* Q^*\)
- **Excedente do produtor**: \(EP = P^* Q^* - \int_{0}^{Q^*} CMg(q) \, dq\)
- **Valor esperado**: \(E[X] = \int_{-\infty}^{\infty} x \, f(x) \, dx\)

O **Teorema Fundamental do Cálculo** conecta integração e diferenciação:

\[
\frac{d}{dx} \int_{a}^{x} f(t) \, dt = f(x)
\]

Em análise de bem-estar, a integração permite calcular a **variação compensatória** e a **variação equivalente**, medidas exatas de mudança no bem-estar do consumidor.

---

## 2.11 Otimização dinâmica: uma breve introdução

Muitos problemas econômicos envolvem decisões ao longo do tempo:

- Quanto consumir hoje versus poupar para amanhã?
- Quanto investir em capital em cada período?
- Qual a trajetória ótima de extração de um recurso natural?

### Otimização intertemporal discreta

O problema canônico em tempo discreto é:

\[
\max \sum_{t=0}^{T} \beta^t \, u(c_t) \quad \text{s.a.} \quad a_{t+1} = (1+r)(a_t - c_t)
\]

onde \(\beta \in (0,1)\) é o fator de desconto, \(c_t\) é o consumo, \(a_t\) é a riqueza e \(r\) é a taxa de juros.

A **equação de Euler** resultante é:

\[
u'(c_t) = \beta(1+r) \, u'(c_{t+1})
\]

que expressa a condição de que o agente é indiferente entre consumir uma unidade hoje e poupá-la para consumir \((1+r)\) unidades amanhã, descontadas pelo fator \(\beta\).

### Otimização contínua: cálculo de variações e controle ótimo

Em tempo contínuo, problemas de otimização dinâmica são resolvidos pelo **cálculo de variações** ou pela **teoria do controle ótimo** (princípio do máximo de Pontryagin). Esses métodos são particularmente usados em teoria do crescimento, economia dos recursos naturais e finanças.

---

## 2.12 Estatística matemática: valor esperado e variância

A incerteza é onipresente em decisões econômicas. As ferramentas básicas de probabilidade são essenciais para a análise de escolha sob risco.

### Valor esperado

\[
E[X] = \sum_{i} x_i \, p_i \quad \text{(discreto)} \qquad E[X] = \int_{-\infty}^{\infty} x \, f(x) \, dx \quad \text{(contínuo)}
\]

### Variância

\[
\text{Var}(X) = E\left[(X - E[X])^2\right] = E[X^2] - (E[X])^2
\]

### Utilidade esperada

No modelo de **von Neumann-Morgenstern**, o agente avesso ao risco maximiza a utilidade esperada:

\[
E[U(W)] = \sum_{i} p_i \, U(W_i)
\]

A **aversão ao risco** corresponde à concavidade da função utilidade (\(U'' < 0\)), e pode ser medida pelo coeficiente de Arrow-Pratt:

\[
r_A(W) = -\frac{U''(W)}{U'(W)}
\]

!!! tip "Conexão com a concavidade"
    A desigualdade de Jensen afirma que, para funções côncavas, \(E[U(W)] \leq U(E[W])\). Isso significa que um agente avesso ao risco prefere a renda esperada com certeza à loteria em si — ele estaria disposto a pagar um prêmio para eliminar o risco.

---

## Gráficos interativos

### Otimização de função de uma variável

<iframe src="../graficos/cap02/otimizacao-1var.html" width="100%" height="880" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.1</strong> — Arraste o ponto sobre a curva para explorar \(f'(x)\): a reta tangente mostra a inclinação em tempo real. No máximo, \(f'(x^*)=0\) e \(f''(x^*)<0\). Use os sliders para alterar curvatura e posição do pico.
</p>

### Otimização com restrição: Lagrangeano

<iframe src="../graficos/cap02/lagrangeano.html" width="100%" height="920" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.2</strong> — Maximização de \(f(x,y)=xy\) sujeita a \(x+y=c\). O ótimo ocorre na tangência entre a curva de nível e a restrição, onde \(\nabla f = \lambda \nabla g\). Varie \(c\) e observe os gradientes paralelos.
</p>

### Teorema do envelope

<iframe src="../graficos/cap02/envelope.html" width="100%" height="880" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);" loading="lazy"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;">
<strong>Figura 2.3</strong> — Família de curvas \(f(x,\alpha)\) e a envoltória \(V(\alpha)=\max_x f(x,\alpha)\). O teorema do envelope mostra que \(dV/d\alpha = \partial f/\partial \alpha|_{x^*}\) — basta a derivada parcial direta, sem recalcular o ótimo.
</p>

---

## Tabela-resumo: condições de otimização

| Tipo de Problema | Condição de Primeira Ordem | Condição de Segunda Ordem | Observação |
|---|---|---|---|
| **Sem restrição** (1 variável) | \(f'(x^*) = 0\) | \(f''(x^*) < 0\) para máx. | Teste da derivada segunda |
| **Sem restrição** (\(n\) variáveis) | \(\nabla f(\mathbf{x}^*) = \mathbf{0}\) | \(H(\mathbf{x}^*)\) negativa definida para máx. | \(H\) é a hessiana |
| **Restrição de igualdade** | \(\nabla f = \lambda \nabla g\); \(g(\mathbf{x}) = c\) | Hessiano orlado com menores alternando em sinal | \(\lambda\) = valor sombra da restrição |
| **Restrição de desigualdade** | Condições KKT: folga complementar | Mesmas do caso com igualdade nas restrições ativas | Restrições inativas: \(\lambda_j = 0\) |

---

## Box Brasil: A matemática por trás do IPCA

!!! example "Box Brasil — O IPCA e as funções de agregação de Laspeyres"

    O **Índice Nacional de Preços ao Consumidor Amplo (IPCA)**, calculado mensalmente pelo IBGE, é o indicador oficial de inflação no Brasil e meta do regime de metas de inflação adotado desde 1999. Por trás de sua aparente simplicidade — "quanto subiram os preços?" — há um arcabouço matemático preciso baseado em **funções de agregação de preços**.

    **A fórmula de Laspeyres.** O IPCA utiliza uma variação da fórmula de **Laspeyres**, que mede a variação no custo de uma **cesta fixa de bens** entre dois períodos. Para \(n\) bens, o índice de Laspeyres é:

    \[
    I_L = \frac{\sum_{i=1}^{n} p_i^t \, q_i^0}{\sum_{i=1}^{n} p_i^0 \, q_i^0} = \sum_{i=1}^{n} w_i^0 \cdot \frac{p_i^t}{p_i^0}
    \]

    onde \(p_i^t\) é o preço do bem \(i\) no período \(t\), \(q_i^0\) é a quantidade consumida no período-base e \(w_i^0 = \frac{p_i^0 q_i^0}{\sum_j p_j^0 q_j^0}\) é o peso do bem \(i\) na cesta de consumo do período-base.

    **Estrutura de pesos.** O IPCA utiliza pesos derivados da **Pesquisa de Orçamentos Familiares (POF)** do IBGE, que levanta os padrões de consumo das famílias brasileiras com renda de 1 a 40 salários mínimos. Os principais grupos e seus pesos aproximados (base POF 2017-2018) são: Alimentação e bebidas (19%), Habitação (15%), Transportes (21%), Saúde (14%), Educação (6%), entre outros.

    **O viés de substituição.** Uma propriedade matemática importante: o índice de Laspeyres tende a **superestimar** a inflação verdadeira porque mantém a cesta fixa. Quando o preço de um bem sobe, o consumidor tende a substituí-lo por alternativas mais baratas — mas a fórmula de Laspeyres não captura essa substituição. Em termos formais, se o consumidor maximiza utilidade, o verdadeiro índice de custo de vida (baseado na função dispêndio) é menor ou igual ao índice de Laspeyres. Este resultado é uma aplicação direta da teoria do consumidor: a cesta do período-base é uma cesta viável (mas geralmente não ótima) aos preços do período corrente.

    **Agregação geográfica e temporal.** Na prática, o IBGE calcula o IPCA em 16 regiões metropolitanas e usa médias ponderadas pela população para obter o índice nacional. Os preços são coletados ao longo de cada mês, exigindo técnicas de agregação temporal. A fórmula final combina índices elementares (nível de produto) em índices superiores (subitens, itens, subgrupos, grupos) mediante uma estrutura hierárquica de agregação.

    O IPCA é, portanto, um exemplo concreto de como funções de agregação, teoria dos números-índice e conceitos de otimização do consumidor se combinam para produzir uma estatística que afeta diretamente a vida de milhões de brasileiros — desde a meta de juros fixada pelo Copom até o reajuste de contratos de aluguel e tarifas públicas.

---

## Exercícios

**Exercício 2.1.** Considere a função \(f(x) = 12x - 3x^2 + 2x^3 - \frac{1}{4}x^4\).

a) Encontre todos os pontos críticos.

b) Classifique cada ponto crítico como máximo local, mínimo local ou ponto de inflexão usando a condição de segunda ordem.

c) Identifique o máximo global no intervalo \([0, 4]\).

**Exercício 2.2.** Um consumidor tem função utilidade \(U(x_1, x_2) = x_1^{1/3} x_2^{2/3}\) e enfrenta preços \(p_1\) e \(p_2\) com renda \(m\).

a) Formule o Lagrangeano do problema de maximização de utilidade.

b) Derive as condições de primeira ordem.

c) Obtenha as funções de demanda marshallianas \(x_1^*(p_1, p_2, m)\) e \(x_2^*(p_1, p_2, m)\).

d) Verifique que as funções de demanda são homogêneas de grau 0 em \((p_1, p_2, m)\).

e) Interprete economicamente o multiplicador de Lagrange \(\lambda^*\).

**Exercício 2.3.** Considere a função de produção Cobb-Douglas \(Q = A K^\alpha L^\beta\) com \(\alpha, \beta > 0\).

a) Mostre que \(Q\) é homogênea de grau \(\alpha + \beta\).

b) Verifique o Teorema de Euler para esta função.

c) Sob que condição a função apresenta retornos constantes de escala? E retornos decrescentes?

d) Calcule a taxa marginal de substituição técnica (\(TMST\)) entre capital e trabalho e interprete economicamente.

**Exercício 2.4 (Teorema do Envelope).** Uma firma monopolista enfrenta a demanda \(P = a - bQ\) e tem custo total \(CT = cQ\), onde \(a\), \(b\) e \(c\) são parâmetros positivos com \(a > c\).

a) Encontre a quantidade ótima \(Q^*(a, b, c)\) e o lucro máximo \(\pi^*(a, b, c)\).

b) Use o teorema do envelope para calcular \(\frac{\partial \pi^*}{\partial a}\), \(\frac{\partial \pi^*}{\partial b}\) e \(\frac{\partial \pi^*}{\partial c}\).

c) Verifique os resultados do item (b) diferenciando diretamente a expressão do lucro máximo.

d) Interprete economicamente o sinal de cada derivada.

**Exercício 2.5 (Kuhn-Tucker).** Um consumidor tem utilidade \(U(x_1, x_2) = \ln(x_1) + x_2\) (preferências quase-lineares), preços \(p_1 = 2\) e \(p_2 = 1\), e renda \(m\).

a) Formule o problema com restrição de não-negatividade e restrição orçamentária de desigualdade.

b) Escreva as condições de Kuhn-Tucker.

c) Para \(m = 10\), encontre a solução ótima e verifique todas as condições KKT.

d) Para \(m = 0{,}3\), mostre que a solução envolve \(x_2 = 0\) (solução de canto) e encontre \(x_1^*\).

e) Qual o valor mínimo de \(m\) a partir do qual o consumidor passa a adquirir quantidades positivas de ambos os bens?

---

## Referências

- CHIANG, A. C.; WAINWRIGHT, K. *Fundamental Methods of Mathematical Economics*. 4. ed. Boston: McGraw-Hill, 2005.
- JEHLE, G. A.; RENY, P. J. *Advanced Microeconomic Theory*. 3. ed. Harlow: Pearson, 2011.
- MAS-COLELL, A.; WHINSTON, M. D.; GREEN, J. R. *Microeconomic Theory*. New York: Oxford University Press, 1995.
- NICHOLSON, W.; SNYDER, C. *Microeconomic Theory: Basic Principles and Extensions*. 12. ed. Boston: Cengage Learning, 2017.
- PINDYCK, R. S.; RUBINFELD, D. L. *Microeconomia*. 8. ed. São Paulo: Pearson, 2013.
- SIMON, C. P.; BLUME, L. *Mathematics for Economists*. New York: W. W. Norton, 1994.
- VARIAN, H. R. *Microeconomic Analysis*. 3. ed. New York: W. W. Norton, 1992.
- VARIAN, H. R. *Microeconomia: uma abordagem moderna*. 9. ed. Rio de Janeiro: Elsevier, 2015.
