# 11.2–11.4 Da Maximização de Lucro ao Lema de Shephard

## 11.2 Gêmeos (Quase) Idênticos: Maximização de Lucro e Minimização de Custos {#112}

Maximizar lucro e minimizar custo parecem gêmeos idênticos — dois jeitos de dizer a mesma coisa. Quase. A relação entre eles é como a de um motorista de aplicativo e o Waze: o Waze encontra o caminho mais curto para qualquer destino, mas ainda é o motorista quem decide *para onde* ir. Há uma assimetria sutil aqui, e vale a pena desembalá-la com cuidado.[^spanish-inquisition-min]

[^spanish-inquisition-min]: "Nobody expects the Spanish Inquisition!" — tampouco ninguém espera que minimizar custo *não* seja equivalente a maximizar lucro. Mas eis que a hipótese falha: minimizar custo é necessário, mas não suficiente. Você pode ser o chef mais eficiente do restaurante e ainda assim quebrar porque escolheu produzir o prato errado. A Inquisição Espanhola dos Monty Python chega sempre sem aviso; o nível ótimo de produção também não cai do céu — exige uma etapa adicional de otimização.

A firma maximizadora de lucro resolve:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - vK
\label{eq:11.1} \tag{11.1}
\]

onde \(p\) é o preço do produto, \(w\) é o salário e \(v\) é o custo de aluguel do capital.

Um resultado central é que a **maximização de lucro implica minimização de custos**: se a firma escolhe quantidades de insumos que maximizam o lucro, então, para o nível de produto resultante, ela necessariamente minimiza o custo de produção. A demonstração é direta por contradição: se a firma não estivesse minimizando custos, existiria uma combinação alternativa de insumos que produzisse a mesma quantidade a custo menor — o que aumentaria o lucro, contradizendo a hipótese de que a escolha inicial maximizava o lucro. Logo, maximizar lucro implica logicamente minimizar custos.

A recíproca, contudo, não é verdadeira — minimizar custos é condição necessária, mas não suficiente, para maximizar lucro, pois a firma ainda precisa escolher o nível ótimo de produção. Uma firma pode minimizar perfeitamente seus custos para cada quantidade produzida e ainda assim não estar maximizando o lucro, caso esteja produzindo a quantidade errada. Isso justifica a decomposição do problema de maximização de lucro em duas etapas que é a estratégia analítica dos próximos capítulos: primeiro, determine o custo mínimo para cada nível de produto (Capítulo 11); depois, escolha o nível de produto que maximiza o lucro dado o custo mínimo (Capítulos 12–13).

!!! theorem "Proposição: Maximização de lucro implica minimização de custos"
    Se \((K^*, L^*)\) resolve o problema de maximização de lucro \(\max_{K,L} \; pf(K,L) - wL - vK\) com produto \(q^* = f(K^*, L^*)\), então \((K^*, L^*)\) também resolve o problema de minimização de custos para o nível de produto \(q^*\):

    \[
    \min_{K, L} \; wL + vK \quad \text{s.a.} \quad f(K, L) \geq q^*
    \]

Essa proposição tem implicação prática importante. Ela significa que, ao observar uma firma que maximiza lucro, podemos usar toda a teoria da minimização de custos para caracterizar seu comportamento em relação aos insumos — sem precisar resolver diretamente o problema de maximização de lucro. Essa é a lógica por trás da abordagem em dois estágios que percorre toda a microeconomia da firma.

---

## 11.3 O Déjà Vu do Consumidor: Minimização de Custos e Tangência {#113}

Hora de arregaçar as mangas e resolver o problema de verdade. A firma quer produzir uma quantidade fixa de produto gastando o mínimo possível — como quem monta a cesta do mês no supermercado tentando não estourar o orçamento, só que com capital e trabalho no carrinho. Se você sobreviveu à minimização de gasto do consumidor no Capítulo 4, vai sentir um *déjà vu* reconfortante: a estrutura é a mesma, só mudam os nomes. Isoquanta no lugar de curva de indiferença, isocusto no lugar de reta orçamentária — dualidade pura.

No Capítulo 4, o consumidor minimizava o gasto \(wl + pm\) sujeito a atingir a curva de indiferença \(u(x_1, x_2) = \bar{u}\). Aqui, a firma minimiza o custo \(wL + vK\) sujeito a atingir a isoquanta \(f(K,L) = q_0\). As variáveis mudam de nome — utilidade vira quantidade produzida, curva de indiferença vira isoquanta, reta orçamentária vira reta de isocusto —, mas a estrutura matemática e a intuição econômica são idênticas. As demandas hicksianas de bens de consumo correspondem às demandas condicionadas por insumos; a função gasto corresponde à função custo; a identidade de Roy corresponde ao Lema de Shephard. Essa correspondência estrutural é uma das elegâncias da teoria microeconômica moderna.

<iframe src="/micro-book/graficos/cap11/minimizacao-custo.html" title="Figura 11.1 — Minimização de custo" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 11.1 — Minimização de custo.** A isoquanta (azul) e a reta de isocusto (vermelha) tangenciam-se no ponto ótimo. Ajuste \(w\), \(v\), \(q\) e \(\alpha\) para observar como a combinação ótima de insumos e o custo mínimo se alteram.
</div>

### O problema de minimização de custos

O problema dual ao da maximização do produto sujeito a um orçamento é a **minimização do custo** de atingir um dado nível de produto:

\[
\min_{K, L} \; C = wL + vK \quad \text{s.a.} \quad f(K, L) = q_0
\label{eq:11.2} \tag{11.2}
\]

A lógica é análoga à do consumidor que minimiza o gasto para atingir um dado nível de utilidade (Capítulo 5). Aqui, a isoquanta substitui a curva de indiferença, e a reta de isocusto substitui a reta orçamentária.

### A reta de isocusto

A **reta de isocusto** representa todas as combinações de insumos que geram o mesmo custo total \(C_0\):

\[
C_0 = wL + vK \implies K = \frac{C_0}{v} - \frac{w}{v}L
\]

A inclinação da isocusto é \(-w/v\), a razão dos preços dos insumos.

### Condição de tangência

Pelo método de Lagrange, a condição de primeira ordem para a minimização de custos é:

\[
\mathcal{L} = wL + vK + \lambda[q_0 - f(K, L)]
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda f_L = 0 \implies \lambda = \frac{w}{f_L}
\]

\[
\frac{\partial \mathcal{L}}{\partial K} = v - \lambda f_K = 0 \implies \lambda = \frac{v}{f_K}
\]

Igualando:

\[
\frac{w}{f_L} = \frac{v}{f_K} \implies \frac{f_L}{f_K} = \frac{w}{v} \implies \mathrm{TMST}_{L,K} = \frac{w}{v}
\label{eq:11.3} \tag{11.3}
\]

A equação $\eqref{eq:11.3}$ tem uma interpretação econômica elegante e direta: no ótimo, a taxa à qual a firma *pode* substituir capital por trabalho sem perder produção (a TMST) deve igualar a taxa à qual o mercado *permite* essa substituição (a razão de preços \(w/v\)). Se a TMST fosse maior que \(w/v\), a firma poderia reduzir custos usando mais trabalho e menos capital; se fosse menor, o ajuste inverso seria vantajoso.

!!! theorem "Condição de minimização de custos"
    No ótimo, a **TMST** (inclinação da isoquanta) iguala a **razão dos preços dos insumos** (inclinação da isocusto):

    \[
    \mathrm{TMST}_{L,K} = \frac{w}{v}
    \]

    Equivalentemente, o produto marginal por unidade monetária gasta deve ser igual para todos os insumos:

    \[
    \frac{f_L}{w} = \frac{f_K}{v}
    \label{eq:11.4} \tag{11.4}
    \]

### Demandas condicionadas por insumos

A condição de tangência nos diz *como* os insumos devem ser combinados no ótimo, mas não *quanto* de cada insumo é necessário. Para isso, precisamos resolver simultaneamente a condição de tangência e a restrição tecnológica \(f(K, L) = q_0\). O resultado são as **demandas condicionadas** por insumos.

Resolvendo as condições de primeira ordem junto com a restrição \(f(K, L) = q_0\), obtemos as **demandas condicionadas** (ou demandas hicksianas na produção):

\[
L^c = L^c(w, v, q), \qquad K^c = K^c(w, v, q)
\label{eq:11.5} \tag{11.5}
\]

Estas funções expressam as quantidades ótimas de cada insumo como funções dos preços dos insumos e do nível de produto desejado. O adjetivo "condicionado" refere-se ao condicionamento sobre o nível de produto: diferentemente das demandas por insumos irrestritas (que resultam da maximização direta de lucro), as demandas condicionadas tomam \(q\) como dado e resolvem o problema de minimização de custos. Essa distinção é crucial: a demanda condicional por trabalho pode *aumentar* quando o salário sobe, se a firma também ajusta o capital — isso não é paradoxo, é consequência de estar condicionando sobre \(q\).

Uma propriedade importante das demandas condicionadas, imediatamente derivada do Capítulo 10, é que elas são homogêneas de grau zero nos preços dos insumos: \(L^c(tw, tv, q) = L^c(w, v, q)\). Se todos os preços dos insumos dobram, a combinação ótima de insumos não muda — apenas o custo mínimo dobra. Isso é consistente com a homogeneidade de grau 1 da função custo nos preços, que derivaremos na seção seguinte.

??? exercicio-resolvido "Exercício Resolvido 11.2 — Minimização de custos e Lema de Shephard com Cobb-Douglas"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/3}L^{2/3}\) e enfrenta preços de insumos \(w = 8\) e \(v = 2\).

    (a) Derive as demandas condicionadas por insumos.

    (b) Obtenha a função custo.

    (c) Verifique o Lema de Shephard.

    (d) Calcule o custo total, o custo médio e o custo marginal para \(q = 10\).

    **Solução.**

    **(a)** Com \(\alpha = 1/3\) e \(\beta = 2/3\) (\(\alpha + \beta = 1\), retornos constantes), a condição de tangência é:

    \[
    \frac{\alpha}{\beta} \cdot \frac{L}{K} = \frac{v}{w} \implies \frac{1}{2} \cdot \frac{L}{K} = \frac{2}{8} = \frac{1}{4} \implies L = \frac{K}{2}
    \]

    Substituindo na restrição \(K^{1/3}L^{2/3} = q\):

    \[
    K^{1/3} \left(\frac{K}{2}\right)^{2/3} = q \implies \frac{K}{2^{2/3}} = q \implies K^c = 2^{2/3} q
    \]

    \[
    L^c = \frac{K^c}{2} = \frac{2^{2/3} q}{2} = 2^{-1/3} q
    \]

    **(b)** Função custo:

    \[
    C = vK^c + wL^c = 2 \cdot 2^{2/3} q + 8 \cdot 2^{-1/3} q = 2^{5/3} q + 2^{8/3} q = 3 \cdot 2^{5/3} q \approx 9{,}52\, q
    \]

    **(c)** Para \(q = K^{1/3}L^{2/3}\), a função custo geral é \(C = \kappa \cdot w^{2/3} v^{1/3} q\), onde \(\kappa = 3/(2^{2/3})\). Então:

    \[
    \frac{\partial C}{\partial w} = \kappa \cdot \frac{2}{3} w^{-1/3} v^{1/3} q = L^c \quad \checkmark
    \]

    **(d)** Para \(q = 10\): \(CT = 3 \cdot 2^{5/3} \cdot 10 \approx 95{,}2\). Como \(\alpha + \beta = 1\) (retornos constantes), \(C\) é linear em \(q\):

    \[
    \mathrm{CMe} = \mathrm{CMg} = 3 \cdot 2^{5/3} \approx 9{,}52
    \]

    O custo médio e o custo marginal são constantes e iguais — consequência direta dos retornos constantes de escala.

<iframe src="/micro-book/graficos/cap11/webr-minimizacao-custo.html" title="WebR — Minimização de Custo" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 11.2 — Minimização de custo: isoquanta e isocusto.** O código resolve o problema de minimização de custo para uma Cobb-Douglas genérica e plota a isoquanta, a isocusto ótima e o caminho de expansão. Altere `alpha`, `beta`, `w`, `v` e `q0` para ver como a combinação ótima de insumos responde a mudanças nos parâmetros.
</div>

---

## 11.4 O Extrato Bancário da Firma Eficiente: Função Custo e Lema de Shephard {#114}

Na seção anterior, descobrimos *quanto* de cada insumo a firma usa para produzir ao menor custo. Agora vem o passo mágico: plugamos essas quantidades ótimas de volta na conta e obtemos a **função custo** — uma fórmula compacta que resume tudo o que a firma precisa saber sobre tecnologia e preços num único número: o custo mínimo para cada nível de produção. É o "extrato bancário" da firma eficiente. E dessa função brota um dos resultados mais bonitos da microeconomia: o Lema de Shephard, que permite recuperar as demandas por insumos simplesmente derivando a função custo.[^holy-hand-grenade-shephard]

[^holy-hand-grenade-shephard]: O Lema de Shephard é como a Holy Hand Grenade of Antioch: um instrumento de precisão que requer protocolo exato. "First shalt thou take the derivative with respect to \(w\). Then shalt thou obtain \(L^c\), no more, no less. \(L^c\) shall be the number thou shalt obtain." Pular etapas ou derivar em relação à variável errada é como contar até cinco em vez de três — o resultado explode na sua cara. Mas se você seguir o protocolo, o lema funciona com elegância devastadora.

A importância da função custo vai além da conveniência analítica. Empiricamente, custos são observáveis (aparecem nos balanços das firmas), enquanto as funções de produção são difíceis de mensurar diretamente. Por isso, a abordagem dual — estimar a função custo a partir de dados observados e recuperar as propriedades da tecnologia de produção por meio de derivações — tornou-se o método predominante na economia industrial e na regulação. Christensen e Greene (1976), em um artigo clássico discutido na [seção de pesquisa](pesquisa.md), estimaram funções de custo para firmas de energia elétrica nos EUA e extraíram informações sobre economias de escala sem nunca precisar observar a tecnologia de produção diretamente.

### A função custo

!!! definition "Função custo"
    A **função custo** \(C(w, v, q)\) é o valor mínimo do custo de produzir \(q\) unidades, dados os preços dos insumos \(w\) e \(v\):

    \[
    C(w, v, q) = wL^c(w, v, q) + vK^c(w, v, q)
    \label{eq:11.6} \tag{11.6}
    \]

A função custo possui as seguintes propriedades:

1. **Não decrescente** em \(w\), \(v\) e \(q\).
2. **Homogênea de grau 1** nos preços dos insumos: \(C(tw, tr, q) = tC(w, v, q)\). Se todos os preços dos insumos dobram, o custo mínimo dobra.
3. **Côncava** nos preços dos insumos: a firma substitui o insumo que ficou mais caro pelo mais barato, de modo que o custo cresce menos que proporcionalmente ao aumento do preço de um insumo.
4. **Contínua** nos preços dos insumos.

### Lema de Shephard

!!! proof "Demonstração: Lema de Shephard"
    **Enunciado.** Se \(C(w, v, q)\) é a função custo e é diferenciável em \((w, v)\), então as demandas condicionadas por insumos são obtidas pela derivada parcial da função custo em relação ao preço do respectivo insumo:

    \[
    \frac{\partial C(w, v, q)}{\partial w} = L^c(w, v, q), \qquad \frac{\partial C(w, v, q)}{\partial v} = K^c(w, v, q)
    \label{eq:11.7} \tag{11.7}
    \]

    **Demonstração.**
    Considere o problema de minimização de custos. Pelo teorema da envoltória, a derivada da função valor (custo mínimo) em relação a um parâmetro é igual à derivada parcial do lagrangeano avaliado no ótimo.

    O lagrangeano é:

    \[
    \mathcal{L}(K, L, \lambda; w, v, q) = wL + vK + \lambda[q - f(K, L)]
    \]

    Pelo teorema da envoltória:

    \[
    \frac{\partial C}{\partial w} = \frac{\partial \mathcal{L}}{\partial w}\bigg|_{(K^c, L^c, \lambda^*)} = L^c(w, v, q)
    \]

    Analogamente:

    \[
    \frac{\partial C}{\partial v} = K^c(w, v, q)
    \]

    **Verificação com Cobb-Douglas.** Para \(q = K^{\alpha}L^{1-\alpha}\), a função custo é:

    \[
    C(w, v, q) = q \cdot \kappa \cdot w^{1-\alpha} \cdot v^{\alpha}
    \]

    onde \(\kappa = \left(\frac{\alpha}{1-\alpha}\right)^{-(1-\alpha)} + \left(\frac{\alpha}{1-\alpha}\right)^{\alpha}\) é uma constante. Derivando em relação a \(w\):

    \[
    \frac{\partial C}{\partial w} = q \cdot \kappa \cdot (1-\alpha) \cdot w^{-\alpha} \cdot v^{\alpha} = L^c(w, v, q)
    \]

    o que confirma o lema. \(\blacksquare\)

!!! tip "Significado econômico do Lema de Shephard"
    O Lema de Shephard é a contraparte, na teoria da produção, da **identidade de Roy** na teoria do consumidor. Ele permite recuperar as demandas condicionadas por insumos a partir de informações sobre custos — que são frequentemente mais fáceis de observar empiricamente do que as tecnologias de produção subjacentes. É uma ferramenta central na estimação empírica de funções de custo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O Lema de Shephard diz que, se você sabe como o custo total muda quando o salário sobe um pouquinho, você já sabe quanta mão de obra a firma usa.

    **Pense assim:** Se o preço da energia sobe R$ 0,01 por kWh e a conta de luz da fábrica sobe R$ 500, você sabe que a fábrica consome 50.000 kWh. O lema formaliza essa ideia simples: a sensibilidade do custo ao preço de um insumo revela a quantidade usada desse insumo.

    **Por que isso importa:** Na prática, é muito mais fácil observar custos e preços do que medir diretamente a tecnologia de produção. O Lema de Shephard permite que economistas estimem demandas por insumos a partir de dados contábeis — algo essencial para política tributária e regulação no Brasil.

<iframe src="/micro-book/graficos/cap11/webr-shephard.html" title="WebR — Lema de Shephard e Concavidade" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 11.3 — Lema de Shephard e concavidade da função custo.** O código verifica numericamente o Lema de Shephard (derivada da função custo = demanda condicional) e ilustra a concavidade de \(C\) nos preços dos insumos. A tangente em cada ponto tem inclinação igual à demanda condicional — exatamente o que o lema afirma.
</div>

Um corolário imediato do Lema de Shephard e da homogeneidade de grau 1 da função custo nos preços é a **identidade de Euler** para a função custo:

\[
w \cdot L^c + v \cdot K^c = C(w, v, q)
\]

o que não é outra coisa senão a definição da função custo — uma verificação de consistência que todo economista deve checar ao derivar funções custo por método distinto. Outra propriedade importante, menos óbvia, é que a matriz hessiana das derivadas de segunda ordem da função custo em relação aos preços é **negativa semidefinida** — implicação direta da concavidade da função custo nos preços.
