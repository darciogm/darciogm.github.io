# Capítulo 2 — O Manual de Sobrevivência Matemática

A microeconomia moderna é uma disciplina intrinsecamente matemática. Os modelos apresentados no Capítulo 1 — maximização de utilidade, maximização de lucro, equilíbrio de mercado — requerem um aparato formal para serem formulados com precisão e para que suas implicações possam ser derivadas rigorosamente. Este capítulo apresenta as ferramentas matemáticas essenciais para o estudo da microeconomia em nível avançado.

O objetivo não é substituir um curso de matemática, mas fornecer uma referência autocontida dos resultados e técnicas que serão utilizados ao longo do livro. O leitor familiarizado com cálculo multivariado e álgebra linear pode percorrer este capítulo rapidamente, concentrando-se nas aplicações econômicas e nos resultados menos habituais, como o teorema do envelope e as condições de Kuhn-Tucker.

O capítulo segue uma progressão natural: partimos da otimização em uma dimensão (Seção 2.1), avançamos para funções de várias variáveis e o ferramental de estática comparativa (Seções 2.2–2.3), introduzimos o teorema do envelope (Seção 2.4), abordamos a otimização com restrições de igualdade e desigualdade (Seções 2.5–2.7), examinamos propriedades de curvatura e homogeneidade (Seções 2.8–2.9), e encerramos com integração, otimização dinâmica e estatística (Seções 2.10–2.12). Ao final, o leitor disporá de todo o aparato formal necessário para acompanhar os capítulos subsequentes sobre teoria do consumidor (Capítulos 3–5), teoria da firma (Capítulos 7–10) e equilíbrio de mercado (Capítulos 12–13).

A exposição segue Nicholson e Snyder (2017, Cap. 2), complementada pelo apêndice matemático de Mas-Colell, Whinston e Green (1995) e por Simon e Blume (1994). Para uma abordagem passo a passo especialmente acessível, ver Chiang e Wainwright (2005). As ferramentas apresentadas aqui não são ornamentos formais: são a linguagem em que toda a microeconomia é escrita. Dominá-las é condição necessária — e, em grande medida, suficiente — para acompanhar o restante do livro.

---

## 2.1 Maximização de funções de uma variável

Começamos pelo caso mais simples: maximizar uma função de uma única variável. Embora a maioria dos problemas econômicos envolva múltiplas variáveis, o caso unidimensional é instrutivo porque nele as ideias centrais — condições de primeira ordem, condições de segunda ordem, interpretação econômica — aparecem em sua forma mais transparente. Os conceitos desta seção são a versão rigorosa do "roteiro de otimização" apresentado informalmente no Capítulo 1 (Seção 1.4): definir o objetivo, derivar, igualar a zero, verificar a segunda derivada.

### Condições de primeira ordem

Seja \(f: \mathbb{R} \to \mathbb{R}\) uma função duas vezes diferenciável. Se \(x^*\) é um máximo interior de \(f\), então:

\[
f'(x^*) = 0 \quad \text{(condição necessária de primeira ordem — CPO)}
\]

A CPO identifica **pontos críticos** (máximos, mínimos ou pontos de inflexão), mas não os distingue entre si.

### Condições de segunda ordem

A CPO nos diz *onde* procurar — no ponto em que a curva "achata" — mas não nos diz *o que* encontramos. Um pico (máximo), um vale (mínimo) e um platô (ponto de inflexão) satisfazem igualmente a condição \(f'(x^*) = 0\). Para distingui-los, precisamos examinar a curvatura da função no ponto crítico, o que nos leva à condição de segunda ordem. Para garantir que o ponto crítico é um máximo (e não um mínimo), exige-se:

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

!!! idea "Intuição Econômica"
    **Em uma frase:** A condição de primeira ordem diz "pare quando o ganho marginal for zero"; a condição de segunda ordem garante que você parou no topo, não no fundo.

    **Pense assim:** Imagine que você sobe uma montanha com os olhos vendados. A CPO é o momento em que o terreno fica plano sob seus pés — você parou de subir. Mas o terreno plano pode ser o topo da montanha (máximo), o fundo de um vale (mínimo) ou uma sela entre dois picos. A CSO verifica: o terreno curva para baixo em todas as direções? Se sim, você está no topo.

    **Por que isso importa:** Em economia, a CPO nos diz que "a firma produz até que \(P = CMg\)" ou que "o consumidor iguala a TMS à razão de preços" — são as condições de equilíbrio. A CSO garante que esse equilíbrio é de fato um ótimo, não um pésimo.

O caso de uma variável é didático, mas limitado. Na prática, consumidores escolhem cestas com múltiplos bens, firmas combinam vários insumos e governos alocam recursos entre diversas áreas. Dito de outra forma: o problema real é quase sempre multidimensional. Para lidar com esses problemas, precisamos estender as ferramentas de otimização para funções de várias variáveis. O primeiro passo é dominar as noções de derivada parcial e diferencial total — a linguagem do *ceteris paribus* em termos matemáticos precisos.

---

## 2.2 Funções de várias variáveis

### Derivadas parciais

Quando o problema envolve múltiplas variáveis — como a utilidade que depende de vários bens, ou a produção que depende de capital e trabalho —, a noção de derivada precisa ser generalizada. A ideia é simples: variamos *uma* variável de cada vez, mantendo as demais fixas, e medimos o efeito sobre o valor da função.

Seja \(f: \mathbb{R}^n \to \mathbb{R}\). A **derivada parcial** de \(f\) em relação a \(x_i\), denotada \(\frac{\partial f}{\partial x_i}\) ou \(f_i\), mede a taxa de variação de \(f\) quando apenas \(x_i\) varia, mantendo todas as demais variáveis constantes — é o equivalente matemático do *ceteris paribus* discutido no Capítulo 1 (Seção 1.3). No contexto do consumidor, \(\frac{\partial U}{\partial x_1}\) é a **utilidade marginal** do bem 1 — quanto a satisfação aumenta quando o consumidor adquire uma unidade adicional do bem 1, mantendo constantes as quantidades dos demais bens. No contexto da firma, \(\frac{\partial F}{\partial L}\) é a **produtividade marginal do trabalho**.

!!! warning "Derivada parcial ≠ derivada total"
    Um erro frequente é confundir a derivada parcial \(\frac{\partial f}{\partial x_i}\) com a derivada total \(\frac{df}{dx_i}\). A derivada parcial mantém todas as demais variáveis *constantes*; a derivada total permite que elas variem (por exemplo, por serem funções de \(x_i\)). Em estática comparativa, essa distinção é crucial: quando o preço de um bem sobe, o consumidor ajusta as quantidades de *todos* os bens — o efeito total sobre a utilidade não é dado pela derivada parcial, mas pela derivada total (que inclui os efeitos indiretos via ajustes nas quantidades). O teorema do envelope (Seção 2.4) mostra, elegantemente, que no ótimo esses efeitos indiretos desaparecem.

### Diferencial total

Enquanto a derivada parcial isola o efeito de *uma* variável, mantendo as demais constantes, a diferencial total captura o efeito *combinado* de variações simultâneas em todas as variáveis. Essa distinção é crucial em economia, onde variáveis raramente mudam isoladamente: quando o preço do petróleo sobe, o preço da gasolina, do diesel e do plástico mudam simultaneamente. A diferencial total é a ferramenta que agrega todos esses efeitos parciais em uma medida única da variação total. A **diferencial total** de \(f(x_1, x_2, \ldots, x_n)\) é:

\[
df = \sum_{i=1}^{n} \frac{\partial f}{\partial x_i} \, dx_i = f_1 \, dx_1 + f_2 \, dx_2 + \cdots + f_n \, dx_n
\]

A diferencial total expressa a variação aproximada de \(f\) quando todas as variáveis mudam simultaneamente por quantidades infinitesimais.

### Teorema da função implícita

Em muitos modelos econômicos, as variáveis endógenas não são expressas explicitamente como funções dos parâmetros. Em vez disso, elas são definidas implicitamente por uma condição de equilíbrio — por exemplo, a igualdade entre oferta e demanda \(D(P, Y) = S(P, w)\), onde \(P\) é determinado implicitamente pelos parâmetros \(Y\) e \(w\). Não conseguimos, em geral, "resolver para \(P^*\)" de forma fechada — a equação pode ser não-linear, ou a forma funcional pode ser desconhecida. Como, então, calcular o efeito de uma mudança paramétrica sobre a variável endógena? É aqui que entra o **teorema da função implícita** (TFI), uma das ferramentas mais utilizadas em estática comparativa — e, na verdade, em toda a economia matemática.

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

Se \(D_Y > 0\) (bem normal) e \(D_P - S_P < 0\) (inclinação da demanda menor que a da oferta), então \(\frac{dP}{dY} > 0\): um aumento na renda eleva o preço de equilíbrio. Note a potência do resultado: sem precisar resolver explicitamente o modelo para \(P^*\), o teorema da função implícita nos permite determinar a *direção* do efeito e, com mais informação, sua *magnitude*. Essa técnica será usada extensivamente nos capítulos sobre teoria do consumidor (Capítulo 5, equação de Slutsky) e teoria da firma (Capítulo 8, estática comparativa de custos).

A magnitude da resposta depende criticamente das inclinações das curvas de oferta e demanda — ou, em termos econômicos, de suas **elasticidades**. Quando a demanda é inelástica (curva quase vertical), um choque de oferta produz grande variação no preço e pequena variação na quantidade; quando é elástica (curva quase horizontal), o oposto ocorre. Essa relação entre elasticidades e inclinações é a ponte entre a matemática do TFI e a economia aplicada — como ilustra o Box Brasil a seguir.

<iframe src="../graficos/cap02/funcao-implicita.html" title="Figura 2.1 — Teorema da Função Implícita" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.1 — Teorema da Função Implícita.** A curva vermelha mostra \(P^*(Y)\) — o preço de equilíbrio como função implícita da renda. A reta tangente (azul tracejada) tem inclinação \(dP^*/dY = -D_Y/(D_P - S_P)\). Arraste \(Y\) para visualizar a estática comparativa ao longo da curva implícita.
</div>

!!! box-brasil "Box Brasil — Elasticidades de demanda: o cálculo a serviço da política pública"

    A **elasticidade-preço da demanda** — definida como \(\varepsilon = \frac{\partial Q}{\partial P} \cdot \frac{P}{Q}\) — é uma aplicação direta de derivadas parciais ao problema do consumidor. No Brasil, estimativas empíricas dessas elasticidades fundamentam decisões de política tributária, regulação de tarifas e política comercial.

    **Alguns valores estimados para o Brasil:**

    | Bem/Serviço | Elasticidade-preço | Fonte |
    |---|---|---|
    | Gasolina | \(-0{,}20\) a \(-0{,}33\) (curto prazo) | Alves & Bueno (2003); Burnquist & Bacchi (2002) |
    | Energia elétrica residencial | \(-0{,}06\) a \(-0{,}26\) (curto/longo prazo) | Schmidt & Lima (2004); Mattos & Lima (2005) |
    | Cigarros | \(-0{,}13\) a \(-0{,}48\) (curto/longo prazo) | Iglesias et al. (2007) |

    A demanda inelástica por gasolina (\(|\varepsilon| < 1\)) explica por que aumentos nos impostos sobre combustíveis geram receita significativa com perda de bem-estar relativamente baixa. A elasticidade também é crucial para a estática comparativa discutida nesta seção: pelo teorema da função implícita, a magnitude do ajuste do preço de equilíbrio a um choque de oferta depende diretamente das elasticidades de oferta e demanda.

---

## 2.3 Maximização com várias variáveis

Com as ferramentas de cálculo multivariado em mãos — derivadas parciais, diferencial total e teorema da função implícita —, podemos agora retomar o problema central: como encontrar o máximo de uma função de várias variáveis? Essa é a generalização natural da Seção 2.1 para o caso \(n\)-dimensional, e é essencial porque praticamente todos os problemas econômicos envolvem múltiplas variáveis de escolha: o consumidor escolhe quantidades de vários bens, a firma combina diversos insumos, o governo aloca orçamento entre múltiplas áreas.

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

A hessiana é simétrica pelo teorema de Young (\(f_{ij} = f_{ji}\)), o que reduz o número de derivadas cruzadas a calcular. Para \(n = 2\), a condição de máximo exige \(f_{11} < 0\) e \(\det(H) = f_{11}f_{22} - f_{12}^2 > 0\). A primeira condição garante que a função é localmente côncava na direção de \(x_1\); a segunda garante que a curvatura é negativa em *todas* as direções, incluindo as diagonais. Na Seção 2.8, discutiremos a relação entre essas condições locais (no ponto ótimo) e propriedades globais de curvatura como concavidade e quase-concavidade.

Até aqui, sabemos como *encontrar* o ótimo e *confirmar* que ele é de fato um máximo. Mas em economia, frequentemente a pergunta mais interessante não é "qual é o ótimo?", e sim "como o ótimo muda quando as circunstâncias mudam?" — isto é, **estática comparativa**, o conceito definido no Capítulo 1 (Seção 1.4). O teorema do envelope oferece um atalho elegante para responder a essa pergunta.

---

## 2.4 Teorema do envelope

O teorema do envelope é um dos resultados mais úteis e elegantes da microeconomia — e, na opinião de muitos economistas, o resultado mais "sub-apreciado" do cálculo. Ele permite calcular como o valor ótimo de uma função objetivo muda quando um parâmetro varia, sem necessidade de recalcular a solução ótima. A utilidade desse atalho é enorme: em problemas complexos com muitas variáveis de escolha, recalcular o ótimo para cada mudança de parâmetro pode ser extremamente trabalhoso. O teorema do envelope mostra que, para mudanças marginais, essa recalculação é desnecessária — basta olhar o efeito direto do parâmetro sobre a função objetivo, ignorando os ajustes nas variáveis de escolha.

!!! theorem "Teorema do Envelope (caso irrestrito)"
    Seja \(f(x, a)\) uma função de \(x\) (variável de escolha) e \(a\) (parâmetro), e seja \(x^*(a)\) a solução do problema \(\max_x f(x, a)\). Defina a **função valor** como:

    \[
    V(a) = f(x^*(a), a)
    \]

    Então:

    \[
    \frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial direta de \(f\) em relação a \(a\), avaliada na solução ótima — ignorando o efeito indireto via \(x^*(a)\).

!!! proof "Demonstração"
    Pela regra da cadeia:

    \[
    \frac{dV}{da} = \frac{\partial f}{\partial x}\bigg|_{x^*(a)} \cdot \frac{dx^*}{da} + \frac{\partial f}{\partial a}\bigg|_{x^*(a)}
    \]

    Mas, pela condição de primeira ordem, \(\frac{\partial f}{\partial x}\big|_{x^*(a)} = 0\). Logo, o primeiro termo desaparece e:

    \[
    \boxed{\frac{dV}{da} = \frac{\partial f}{\partial a}\bigg|_{x = x^*(a)}}
    \]

    \(\blacksquare\)

O que esse resultado nos diz? A demonstração revela por que o teorema funciona: no ponto ótimo, a derivada de \(f\) em relação a \(x\) é zero (pela CPO). Portanto, qualquer ajuste que o agente faça na variável de escolha \(x\) em resposta à mudança do parâmetro \(a\) produz apenas um efeito de segunda ordem sobre o valor da função — negligenciável para variações infinitesimais. Resta, portanto, apenas o efeito direto de \(a\) sobre \(f\).

!!! idea "Intuição Econômica"
    **Em uma frase:** No ótimo, o único efeito que importa de uma mudança no parâmetro é o efeito direto — o ajuste indireto via \(x\) é de segunda ordem.

    **Pense assim:** Imagine que você já encontrou a melhor posição para sentar em um auditório lotado. Se a temperatura da sala mudar um grau, o desconforto vem diretamente do calor — não de precisar trocar de assento, porque você já está no melhor lugar possível. O "ajuste fino" da posição não muda quase nada.

    **Por que isso importa:** O Teorema da Envoltória simplifica drasticamente a estática comparativa: em vez de recalcular todo o ótimo, basta olhar o efeito direto do parâmetro sobre a função objetivo.

??? exercicio-resolvido "Exercício Resolvido 2.2 — Teorema do envelope aplicado ao monopolista"

    **Enunciado:** Uma firma monopolista enfrenta demanda \(P = a - Q\) e tem custo \(CT = cQ\), com \(a > c > 0\). Use o teorema do envelope para determinar como o lucro máximo varia quando o custo marginal \(c\) aumenta.

    **Dados:** \(P = a - Q\), \(CT = cQ\), parâmetros \(a, c > 0\).

    **Resolução:**

    **Passo 1 — Encontrar a solução ótima**

    Lucro: \(\pi(Q, c) = (a - Q)Q - cQ = aQ - Q^2 - cQ = (a - c)Q - Q^2\).

    CPO: \(\frac{\partial \pi}{\partial Q} = a - c - 2Q = 0 \implies Q^*(c) = \frac{a - c}{2}\).

    Lucro máximo: \(\pi^*(c) = \frac{(a - c)^2}{4}\).

    **Passo 2 — Aplicar o teorema do envelope**

    Pelo teorema do envelope (Seção 2.4):

    \[
    \frac{d\pi^*}{dc} = \frac{\partial \pi}{\partial c}\bigg|_{Q = Q^*} = -Q^* = -\frac{a - c}{2}
    \]

    **Passo 3 — Verificar por diferenciação direta**

    \[
    \frac{d\pi^*}{dc} = \frac{d}{dc}\left[\frac{(a-c)^2}{4}\right] = \frac{2(a-c)(-1)}{4} = -\frac{a-c}{2} \quad \checkmark
    \]

    **Resultado:** \(\frac{d\pi^*}{dc} = -\frac{a-c}{2} < 0\).

    **Interpretação econômica:** Um aumento unitário no custo marginal reduz o lucro máximo em \(\frac{a-c}{2}\), que é exatamente a quantidade ótima produzida. A elegância do teorema do envelope está em dispensar o cálculo de como \(Q^*\) se ajusta: basta a derivada parcial direta do lucro em relação a \(c\), avaliada no ótimo. No Brasil, quando a Petrobras eleva o preço dos derivados (aumento de \(c\) para distribuidoras), o teorema do envelope permite estimar rapidamente o impacto sobre o lucro do setor sem recalcular toda a cadeia de ajustes de quantidade.

---

## 2.5 Maximização com restrições: o método de Lagrange

Até agora, tratamos de problemas de otimização sem restrições: o agente pode escolher livremente qualquer valor para as variáveis de decisão. Mas os problemas econômicos quase sempre envolvem restrições — e é a presença dessas restrições que torna a economia interessante. O consumidor deseja maximizar sua satisfação, porém dispõe de renda limitada. A firma quer maximizar o lucro, mas enfrenta restrições tecnológicas (não pode produzir mais do que sua função de produção permite) e, eventualmente, restrições de capacidade. O governo deseja maximizar o bem-estar social, mas enfrenta restrições orçamentárias, informacionais e de incentivos. Em cada caso, a escassez de recursos é o que gera o *trade-off* — a necessidade de escolher entre alternativas —, e é essa escolha que a microeconomia estuda.

O método de Lagrange é a ferramenta mais importante deste capítulo — e, possivelmente, de todo o curso de microeconomia. Desenvolvido pelo matemático ítalo-francês Joseph-Louis Lagrange no final do século XVIII, o método transforma um problema de otimização com restrição em um problema sem restrição em um espaço ampliado. Praticamente todos os modelos que estudaremos — consumidor (Capítulo 4), firma (Capítulos 7–10), equilíbrio geral (Capítulo 12) — envolvem otimizar uma função sujeita a restrições. O método é tão central que o multiplicador de Lagrange \(\lambda\) se tornará, ao longo do livro, um dos objetos mais interpretados economicamente: utilidade marginal da renda, custo marginal, preço-sombra de restrições regulatórias.

Esta seção apresenta o método em um passo a passo detalhado, para que o leitor possa aplicá-lo com confiança a qualquer problema.

!!! info "Referências para aprofundamento"
    Para uma exposição mais detalhada dos fundamentos matemáticos do método de Lagrange, consulte Chiang & Wainwright (2005, Cap. 12) e Simon & Blume (1994, Cap. 18–19). Para aplicações econômicas, veja Nicholson & Snyder (2017, Cap. 2) e Jehle & Reny (2011, Cap. 1).

!!! info "Prêmio Nobel — Leonid Kantorovich e Tjalling Koopmans (1975)"

    **Leonid Kantorovich** (1912–1986, URSS) e **Tjalling Koopmans** (1910–1985, EUA/Holanda) foram premiados "pela sua contribuição à teoria da alocação ótima de recursos". Kantorovich, matemático de formação, desenvolveu a **programação linear** em 1939, motivado pelo problema prático de alocar matérias-primas em fábricas soviéticas de modo eficiente. Koopmans generalizou e conectou essa teoria à economia, mostrando que os preços-sombra da programação linear correspondem aos preços de equilíbrio competitivo.

    **Conexão com este capítulo:**
    O método de Lagrange e as condições KKT desta seção são, em essência, a versão diferenciável dos resultados de programação linear de Kantorovich e Koopmans. O multiplicador \(\lambda\) — o "valor-sombra" da restrição — é exatamente o conceito que Kantorovich chamou de "avaliação resolvente" (*resolving multiplier*) em seu trabalho original. A equivalência entre a solução do problema de otimização com restrições e os preços de equilíbrio competitivo é uma das ideias mais profundas da teoria econômica, formalizada no segundo teorema do bem-estar (Capítulo 13).

### Passo 0 — Identificar o problema

O problema canônico da microeconomia pode ser escrito na forma:

\[
\max_{x_1, x_2} f(x_1, x_2) \quad \text{sujeito a} \quad g(x_1, x_2) = c \label{eq:2.1} \tag{2.1}
\]

onde \(f\) é a **função objetivo** (o que o agente quer maximizar ou minimizar) e \(g(x_1, x_2) = c\) é a **restrição** (a limitação que o agente enfrenta). A formulação se generaliza para \(n\) variáveis de escolha e múltiplas restrições, mas o caso com duas variáveis e uma restrição é o ponto de partida ideal.

!!! info "Por que otimizar sem restrição é ficção?"
    Por que precisamos otimizar sob restrição? Porque em economia os recursos são escassos. Dois exemplos fundamentais:

    - **Consumidor**: maximiza a utilidade \(U(x_1, x_2)\) sujeito à restrição orçamentária \(p_1 x_1 + p_2 x_2 = m\). Aqui, \(f = U\), \(g = p_1 x_1 + p_2 x_2\), e \(c = m\).
    - **Firma**: minimiza o custo \(wL + rK\) sujeito a atingir um nível de produção \(f(K, L) = q_0\). Aqui, a função objetivo é o custo, a restrição é a isoquanta, e \(c = q_0\).

    Sem a restrição, a solução seria trivial (consumir infinito, por exemplo). É a escassez que torna o problema interessante — e que dá origem ao conceito de **custo de oportunidade**.

### Passo 1 — Montar o Lagrangeano

A ideia central do método de Lagrange é engenhosa: em vez de resolver um problema de otimização *com restrição*, transforma-se o problema em um de otimização *sem restrição* em um espaço ampliado, que inclui uma variável auxiliar — o multiplicador de Lagrange \(\lambda\). Define-se a **função de Lagrange** (ou Lagrangeano):

\[
\mathcal{L}(x_1, x_2, \lambda) = f(x_1, x_2) + \lambda \left[c - g(x_1, x_2)\right] \label{eq:2.2} \tag{2.2}
\]

onde \(\lambda\) é o **multiplicador de Lagrange**, uma nova variável de escolha introduzida pelo método.

!!! tip "Dica: convenção de sinal"
    A equação $\eqref{eq:2.2}$ pode ser escrita equivalentemente como:

    \[
    \mathcal{L} = f(x_1, x_2) - \lambda \left[g(x_1, x_2) - c\right]
    \]

    As duas formas são matematicamente idênticas (basta redefinir o sinal de \(\lambda\)). Neste livro, adotamos a convenção \(f + \lambda[c - g]\), que garante que \(\lambda > 0\) em problemas de maximização com restrições "do tipo orçamentário". Alguns textos (como Varian, 1992) usam a outra convenção. O importante é ser consistente.

!!! idea "Intuição Econômica"
    **Em uma frase:** O multiplicador \(\lambda\) é o **valor-sombra** (*shadow price*) da restrição — quanto a função objetivo melhoraria se pudéssemos "relaxar" a restrição em uma unidade marginal.

    **Pense assim:** Imagine que você recebe R\$ 500 de vale-alimentação por mês. O \(\lambda\) diz exatamente quanto de satisfação extra você obteria se alguém te desse R\$ 1 a mais. É o valor de um real a mais de orçamento.

    **Por que isso importa:** Na prática, \(\lambda\) aparece em toda análise de custo-benefício de política pública — é o custo social de apertar o cinto fiscal ou o benefício de relaxar uma cota de importação.

### Passo 2 — Condições de primeira ordem (CPOs)

Para encontrar o ótimo, derivamos \(\mathcal{L}\) em relação a cada variável de escolha (\(x_1\), \(x_2\)) e em relação a \(\lambda\), e igualamos a zero:

\[
\frac{\partial \mathcal{L}}{\partial x_1} = \frac{\partial f}{\partial x_1} - \lambda \frac{\partial g}{\partial x_1} = 0 \label{eq:2.3} \tag{2.3}
\]

\[
\frac{\partial \mathcal{L}}{\partial x_2} = \frac{\partial f}{\partial x_2} - \lambda \frac{\partial g}{\partial x_2} = 0 \label{eq:2.4} \tag{2.4}
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = c - g(x_1, x_2) = 0 \label{eq:2.5} \tag{2.5}
\]

Observe que a terceira CPO, equação $\eqref{eq:2.5}$, simplesmente **recupera a restrição original** \(g(x_1, x_2) = c\). Isso é uma consequência direta de como o Lagrangeano foi construído.

**Condição de tangência.** Das equações $\eqref{eq:2.3}$ e (2.4), podemos isolar \(\lambda\):

\[
\lambda = \frac{f_{x_1}}{g_{x_1}} = \frac{f_{x_2}}{g_{x_2}}
\]

Igualando as duas expressões:

\[
\frac{f_{x_1}}{f_{x_2}} = \frac{g_{x_1}}{g_{x_2}} \label{eq:2.6} \tag{2.6}
\]

!!! definition "Condição de Tangência"
    A equação $\eqref{eq:2.6}$ é a **condição de tangência**: no ótimo, a razão das derivadas parciais da função objetivo é igual à razão das derivadas parciais da restrição. Geometricamente, isso significa que a **curva de nível** de \(f\) é tangente à curva definida pela restrição \(g = c\). Equivalentemente, os gradientes \(\nabla f\) e \(\nabla g\) são paralelos no ponto ótimo — não há direção ao longo da restrição que permita melhorar o valor de \(f\).

!!! idea "Intuição Econômica"
    **Em uma frase:** No ótimo com restrição, a curva de indiferença "encosta" na restrição sem cruzá-la — como uma bola de futebol que repousa sobre uma superfície inclinada.

    **Pense assim:** Imagine-se caminhando ao longo de uma trilha no morro (a restrição orçamentária). Você quer subir o mais alto possível (maximizar utilidade), mas só pode andar na trilha. No ponto ótimo, a trilha é tangente a uma curva de nível da altitude — se a trilha cruzasse a curva, você poderia seguir subindo. A tangência significa: não há mais subida disponível dentro da trilha.

    **Por que isso importa:** A condição de tangência é a base de toda a teoria da escolha do consumidor (Capítulo 4) e da minimização de custos da firma (Capítulo 10). No problema do consumidor, ela se traduz em \(\text{TMS} = p_1/p_2\); no problema da firma, em \(\text{TMST} = w/r\).

!!! info "TMS igual à razão de preços: o ótimo do consumidor"
    No problema do consumidor, a equação $\eqref{eq:2.6}$ se torna:

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

**Estratégia B — Dividir CPOs.** Divide-se a equação $\eqref{eq:2.3}$ pela equação $\eqref{eq:2.4}$:

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
\lambda^* = \frac{df^*}{dc} = \frac{dV}{dc} \label{eq:2.7} \tag{2.7}
\]

onde \(V(c) = f(\mathbf{x}^*(c))\) é a **função valor** — o valor máximo de \(f\) dado o nível da restrição \(c\). Este resultado é uma consequência do **teorema do envelope** aplicado ao problema restrito (ver Seção 2.6).

!!! example "Exemplo numérico"
    Suponha que resolvemos o problema do consumidor e encontramos \(\lambda^* = 0{,}5\). Isso significa que, se a renda do consumidor aumentar em R\$ 1 (de \(m\) para \(m + 1\)), a utilidade máxima aumentará em aproximadamente 0,5 unidades. Reciprocamente, se a renda diminuir em R\$ 1, a utilidade cairá em aproximadamente 0,5 unidades.

!!! info "O princípio da equimarginalidade"
    No problema do consumidor, \(\lambda^*\) é a **utilidade marginal da renda**. As CPOs implicam:

    \[
    \frac{UMg_1}{p_1} = \frac{UMg_2}{p_2} = \lambda
    \]

    Ou seja, no ótimo, a utilidade marginal por unidade monetária gasta é igual para todos os bens — o princípio da **equimarginalidade**. A lógica é intuitiva: se o último real gasto em café rendesse mais satisfação do que o último real gasto em pão, o consumidor poderia melhorar comprando mais café e menos pão. No ótimo, essa possibilidade de melhoria se esgota.

    No problema da firma (minimização de custos), \(\lambda^*\) é o **custo marginal**: quanto custa produzir uma unidade adicional de produto quando a firma já está minimizando custos (ver Capítulo 10).

### Passo 5 — Verificar condições de segunda ordem

Encontrar um ponto que satisfaça as CPOs é necessário, mas não suficiente — pode ser um máximo, um mínimo ou um ponto de sela. A verificação formal das condições de segunda ordem utiliza o **hessiano orlado** (*bordered Hessian*).

Para o caso de duas variáveis e uma restrição, o hessiano orlado é a matriz \(3 \times 3\):

\[
\bar{H} = \begin{pmatrix}
0 & g_{x_1} & g_{x_2} \\
g_{x_1} & \mathcal{L}_{x_1 x_1} & \mathcal{L}_{x_1 x_2} \\
g_{x_2} & \mathcal{L}_{x_2 x_1} & \mathcal{L}_{x_2 x_2}
\end{pmatrix} \label{eq:2.8} \tag{2.8}
\]

onde \(\mathcal{L}_{x_i x_j} = f_{x_i x_j} - \lambda g_{x_i x_j}\) são as derivadas segundas do Lagrangeano.

A condição suficiente para **máximo** com restrição é:

\[
\det(\bar{H}) > 0 \label{eq:2.9} \tag{2.9}
\]

Para **mínimo** com restrição, a condição é \(\det(\bar{H}) < 0\).

!!! tip "Dica"
    Na prática, muitos problemas econômicos envolvem funções objetivo **quase-côncavas** (como a maioria das funções utilidade) e restrições lineares (como a restrição orçamentária). Nesses casos, a quase-concavidade garante que qualquer ponto que satisfaça as CPOs é necessariamente um máximo global — dispensando a verificação explícita do hessiano orlado (ver Seção 2.8).

!!! warning "Cuidado"
    Um erro comum é encontrar as CPOs, resolver o sistema e declarar a resposta como "o ótimo", sem verificar se é de fato um máximo (ou mínimo, conforme o problema). Em provas e exercícios, sempre mencione por que as condições de segunda ordem são satisfeitas — nem que seja por um argumento de quase-concavidade.

<a id="exercicio-ces"></a>

!!! exercicio-resolvido "Exercício Resolvido 2.1 — Maximização de utilidade CES via Lagrangeano"

    Aplicamos agora o passo a passo completo a um problema que será recorrente ao longo do livro: a maximização de utilidade com preferências CES.

    **Enunciado**

    Um consumidor tem preferências representadas pela função de utilidade **CES** (*Constant Elasticity of Substitution* — Elasticidade de Substituição Constante):

    \[
    U(x_1, x_2) = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} \label{eq:2.10} \tag{2.10}
    \]

    onde \(0 < \alpha < 1\) é o parâmetro de distribuição e \(\rho < 1\), \(\rho \neq 0\), é o parâmetro de substituição. A **elasticidade de substituição** é:

    \[
    \sigma = \frac{1}{1 - \rho} \label{eq:2.11} \tag{2.11}
    \]

    O consumidor dispõe de renda \(m\) e enfrenta preços \(p_1\) e \(p_2\).

    **Problema:** Encontre as demandas marshallianas \(x_1^*(p_1, p_2, m)\) e \(x_2^*(p_1, p_2, m)\) usando o método do Lagrangeano.

    **Resolução**

    **Passo 0 — Identificar o problema**

    O problema do consumidor é:

    \[
    \max_{x_1, x_2} \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} \quad \text{s.a.} \quad p_1 x_1 + p_2 x_2 = m \label{eq:2.12} \tag{2.12}
    \]

    Aqui, \(f(x_1, x_2) = U(x_1, x_2)\) é a utilidade CES, \(g(x_1, x_2) = p_1 x_1 + p_2 x_2\) é o gasto total, e \(c = m\) é a renda.

    **Passo 1 — Montar o Lagrangeano**

    O Lagrangeano é:

    \[
    \mathcal{L} = \left(\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho}\right)^{1/\rho} - \lambda \left(p_1 x_1 + p_2 x_2 - m\right) \label{eq:2.13} \tag{2.13}
    \]

    !!! tip "Dica: simplificação por transformação monotônica"
        A função \(z^{1/\rho}\) é uma transformação monotônica crescente de \(z\) (para \(z > 0\)). Como transformações monotônicas preservam a ordenação de preferências, maximizar \(U = (\alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho})^{1/\rho}\) é equivalente a maximizar:

        \[
        V(x_1, x_2) = \alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho} \label{eq:2.14} \tag{2.14}
        \]

        Esta simplificação elimina o expoente \(1/\rho\), tornando as derivadas parciais muito mais simples. As demandas ótimas \(x_1^*\) e \(x_2^*\) serão as mesmas (apenas o valor de \(\lambda\) mudará). Usamos a versão simplificada daqui em diante.

    O Lagrangeano simplificado é:

    \[
    \mathcal{L} = \alpha \, x_1^{\rho} + (1-\alpha) \, x_2^{\rho} - \lambda \left(p_1 x_1 + p_2 x_2 - m\right) \label{eq:2.15} \tag{2.15}
    \]

    **Passo 2 — Condições de primeira ordem**

    Derivando o Lagrangeano (2.15) em relação a \(x_1\), \(x_2\) e \(\lambda\):

    \[
    \frac{\partial \mathcal{L}}{\partial x_1} = \alpha \rho \, x_1^{\rho - 1} - \lambda p_1 = 0 \label{eq:2.16} \tag{2.16}
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial x_2} = (1-\alpha) \rho \, x_2^{\rho - 1} - \lambda p_2 = 0 \label{eq:2.17} \tag{2.17}
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial \lambda} = m - p_1 x_1 - p_2 x_2 = 0 \label{eq:2.18} \tag{2.18}
    \]

    A equação $\eqref{eq:2.18}$ confirma que a restrição orçamentária é satisfeita.

    **Passo 3 — Resolver o sistema**

    **Dividir (2.16) por (2.17)** para eliminar \(\lambda\):

    \[
    \frac{\alpha \rho \, x_1^{\rho - 1}}{(1-\alpha) \rho \, x_2^{\rho - 1}} = \frac{\lambda p_1}{\lambda p_2}
    \]

    Os fatores \(\rho\) e \(\lambda\) se cancelam:

    \[
    \frac{\alpha}{1-\alpha} \left(\frac{x_1}{x_2}\right)^{\rho - 1} = \frac{p_1}{p_2} \label{eq:2.19} \tag{2.19}
    \]

    **Isolar a razão \(x_1/x_2\):**

    \[
    \left(\frac{x_1}{x_2}\right)^{\rho - 1} = \frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}
    \]

    \[
    \frac{x_1}{x_2} = \left(\frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}\right)^{1/(\rho - 1)} \label{eq:2.20} \tag{2.20}
    \]

    !!! tip "Dica: relação entre os expoentes"
        Vamos mostrar que \(\frac{1}{\rho - 1} = -\sigma\). Pela definição (2.11), \(\sigma = \frac{1}{1-\rho}\), logo:

        \[
        \frac{1}{\rho - 1} = \frac{1}{-(1 - \rho)} = -\frac{1}{1-\rho} = -\sigma
        \]

        Portanto, podemos reescrever (2.20) como:

        \[
        \frac{x_1}{x_2} = \left(\frac{1-\alpha}{\alpha} \cdot \frac{p_1}{p_2}\right)^{-\sigma} = \left(\frac{\alpha}{1-\alpha} \cdot \frac{p_2}{p_1}\right)^{\sigma} \label{eq:2.21} \tag{2.21}
        \]

    **Expressar \(x_1\) em função de \(x_2\).** Da equação $\eqref{eq:2.21}$:

    \[
    x_1 = x_2 \left(\frac{\alpha}{1-\alpha}\right)^{\sigma} \left(\frac{p_2}{p_1}\right)^{\sigma} \label{eq:2.22} \tag{2.22}
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
    x_2^* = \frac{(1-\alpha)^{\sigma} \, p_2^{-\sigma}}{\alpha^{\sigma} \, p_1^{1-\sigma} + (1-\alpha)^{\sigma} \, p_2^{1-\sigma}} \cdot m \label{eq:2.23} \tag{2.23}
    \]

    Por simetria (ou repetindo o procedimento para \(x_1\)):

    \[
    x_1^* = \frac{\alpha^{\sigma} \, p_1^{-\sigma}}{\alpha^{\sigma} \, p_1^{1-\sigma} + (1-\alpha)^{\sigma} \, p_2^{1-\sigma}} \cdot m \label{eq:2.24} \tag{2.24}
    \]

    !!! definition "Demandas marshallianas CES"
        As funções de demanda marshallianas para o caso CES são:

        \[
        \boxed{x_i^* = \frac{\alpha_i^{\sigma} \, p_i^{-\sigma}}{\sum_{j} \alpha_j^{\sigma} \, p_j^{1-\sigma}} \cdot m}, \qquad i = 1, 2
        \]

        onde \(\alpha_1 = \alpha\) e \(\alpha_2 = 1-\alpha\). A fração \(\frac{\alpha_i^{\sigma} \, p_i^{1-\sigma}}{\sum_j \alpha_j^{\sigma} \, p_j^{1-\sigma}}\) é a **parcela orçamentária** (*budget share*) do bem \(i\), denotada \(s_i\).

    Observe que as demandas são **homogêneas de grau zero** em \((p_1, p_2, m)\): multiplicar todos os preços e a renda por uma constante não altera as quantidades demandadas.

    **Passo 4 — Interpretar \(\lambda^*\)**

    Da CPO (2.16), isolamos \(\lambda\):

    \[
    \lambda^* = \frac{\alpha \rho \, (x_1^*)^{\rho-1}}{p_1} \label{eq:2.25} \tag{2.25}
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

    **Passo 5 — Condições de segunda ordem**

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

        <div style="display: flex; justify-content: center;" markdown>

        | Parâmetro \(\rho\) | \(\sigma\) | Função utilidade | Curvas de indiferença |
        |---|---|---|---|
        | \(\rho \to -\infty\) | 0 | \(\min\{x_1, x_2\}\) | Ângulo reto (L) |
        | \(\rho \to 0\) | 1 | \(x_1^{\alpha} x_2^{1-\alpha}\) | Hipérboles "suaves" |
        | \(\rho = 0{,}5\) | 2 | \((\alpha \sqrt{x_1} + (1-\alpha)\sqrt{x_2})^2\) | Curvas intermediárias |
        | \(\rho = 1\) | \(\infty\) | \(\alpha x_1 + (1-\alpha) x_2\) | Retas paralelas |

        </div>

    <iframe src="../graficos/cap02/ces-demandas.html" title="Figura 2.2 — Demandas marshallianas CES" class="graph-iframe"></iframe>

    <div class="caption-obj" markdown>
    **Figura 2.2 — Demandas marshallianas CES.** Varie os parâmetros \(\alpha\), \(\rho\), \(p_1\), \(p_2\) e \(m\) para observar como as curvas de indiferença mudam de forma (de complementos perfeitos a substitutos perfeitos) e como o ponto ótimo se desloca ao longo da restrição orçamentária. A elasticidade de substituição \(\sigma = 1/(1-\rho)\) é exibida em tempo real.
    </div>

O exercício com a CES é um investimento que se pagará ao longo de todo o livro: as demandas marshallianas CES reaparecerão no Capítulo 4 (escolha do consumidor), no Capítulo 5 (equação de Slutsky), e na análise de comércio internacional baseada no modelo de Armington. O leitor que dominar a álgebra da CES estará preparado para esses desenvolvimentos.

??? exercicio-resolvido "Exercício Resolvido 2.1 — Maximização de utilidade via Lagrange"

    **Enunciado:** Um consumidor tem função utilidade \(U(x_1, x_2) = x_1^{1/2} x_2^{1/2}\) e enfrenta preços \(p_1 = 4\) e \(p_2 = 1\), com renda \(I = 100\). Encontre a cesta ótima, o multiplicador de Lagrange e interprete o resultado.

    **Dados:** \(U = x_1^{1/2} x_2^{1/2}\), \(p_1 = 4\), \(p_2 = 1\), \(I = 100\).

    **Resolução:**

    **Passo 1 — Montar o Lagrangeano**

    \[
    \mathcal{L} = x_1^{1/2} x_2^{1/2} + \lambda(100 - 4x_1 - x_2)
    \]

    **Passo 2 — Condições de primeira ordem**

    \[
    \frac{\partial \mathcal{L}}{\partial x_1} = \frac{1}{2} x_1^{-1/2} x_2^{1/2} - 4\lambda = 0 \quad \Rightarrow \quad \frac{x_2^{1/2}}{2x_1^{1/2}} = 4\lambda
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial x_2} = \frac{1}{2} x_1^{1/2} x_2^{-1/2} - \lambda = 0 \quad \Rightarrow \quad \frac{x_1^{1/2}}{2x_2^{1/2}} = \lambda
    \]

    \[
    \frac{\partial \mathcal{L}}{\partial \lambda} = 100 - 4x_1 - x_2 = 0
    \]

    **Passo 3 — Resolver o sistema**

    Dividindo a primeira CPO pela segunda: \(\frac{x_2}{x_1} = 4\), logo \(x_2 = 4x_1\).

    Substituindo na restrição: \(4x_1 + 4x_1 = 100 \implies x_1^* = 12{,}5\) e \(x_2^* = 50\).

    Da segunda CPO: \(\lambda^* = \frac{(12{,}5)^{1/2}}{2(50)^{1/2}} = \frac{\sqrt{12{,}5}}{2\sqrt{50}} = \frac{\sqrt{1/4}}{2} = \frac{1}{4} = 0{,}25\).

    **Resultado:** Cesta ótima: \((x_1^*, x_2^*) = (12{,}5;\ 50)\). Multiplicador: \(\lambda^* = 0{,}25\).

    **Interpretação econômica:** O consumidor gasta metade da renda em cada bem: \(4 \times 12{,}5 = 50\) e \(1 \times 50 = 50\). Isso é uma propriedade geral da Cobb-Douglas com expoentes iguais. O multiplicador \(\lambda^* = 0{,}25\) significa que um real adicional de renda aumentaria a utilidade máxima em 0,25 unidades — é a utilidade marginal da renda. No contexto do Bolsa Família, por exemplo, \(\lambda\) mede o ganho de bem-estar por real transferido a uma família beneficiária.

Na Seção 2.4, apresentamos o teorema do envelope para o caso irrestrito. Como esse resultado se modifica quando há restrições? A resposta é surpreendentemente simples — e de enorme utilidade prática: basta substituir a função objetivo \(f\) pelo Lagrangeano \(\mathcal{L}\).

---

## 2.6 Teorema do envelope na maximização restrita

!!! theorem "Teorema do Envelope (caso restrito)"
    Considere o problema \(\max_{\mathbf{x}} f(\mathbf{x}, a)\) sujeito a \(g(\mathbf{x}, a) = c\), e defina a função valor \(V(a) = f(\mathbf{x}^*(a), a)\). Então:

    \[
    \frac{dV}{da} = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{\mathbf{x}^*(a), \lambda^*(a)}
    \]

    Ou seja, o efeito de uma mudança no parâmetro sobre o valor ótimo é dado pela derivada parcial do **Lagrangeano** (não apenas de \(f\)) em relação ao parâmetro, avaliada na solução ótima.

!!! proof "Demonstração"
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

Note a diferença sutil em relação ao caso irrestrito: aqui, a derivada é do **Lagrangeano**, não apenas de \(f\). Isso faz sentido intuitivamente: quando há uma restrição, a variação do parâmetro pode afetar tanto o objetivo quanto a restrição, e o Lagrangeano captura ambos os efeitos por meio do termo \(\lambda[c - g]\). Este resultado será utilizado extensivamente nos capítulos seguintes:

- No Capítulo 4, mostra que \(\lambda^* = \partial V / \partial I\): a utilidade marginal da renda é o multiplicador do problema do consumidor.
- No Capítulo 4 (Lema de Shephard), mostra que \(\partial E / \partial p_i = h_i\): a derivada da função dispêndio em relação ao preço fornece a demanda hicksiana.
- No Capítulo 10, mostra que o custo marginal da firma iguala o multiplicador do problema de minimização de custos.

A mensagem recorrente é a mesma: no ótimo, os efeitos indiretos (ajustes nas variáveis de escolha) são de segunda ordem, e apenas o efeito direto importa. Essa simplificação — que decorre da CPO — é o motor analítico por trás de boa parte da estática comparativa em microeconomia.

---

## 2.7 Restrições de desigualdade: condições de Kuhn-Tucker

O método de Lagrange resolve problemas com restrições de *igualdade*: o consumidor gasta exatamente toda a sua renda, a firma usa exatamente a capacidade total de produção. Mas nem sempre a restrição é ativa. O consumidor pode não gastar toda a renda (se tiver preferências saciáveis), ou pode optar por não consumir nenhuma quantidade de um bem cujo preço é muito alto — por exemplo, uma família de baixa renda que não adquire nenhuma unidade de carne importada. Para lidar com essas situações, precisamos de uma generalização que admita restrições de desigualdade e soluções de canto.

Soluções de canto são extremamente comuns no mundo real, embora os livros-texto frequentemente as releguem a notas de rodapé. No contexto do consumidor, uma família que não viaja de avião está em uma solução de canto para "viagens aéreas". No contexto da firma, uma empresa que não investe em P&D está em uma solução de canto para "gastos com inovação". No contexto do governo, um município que não gasta nada com cultura está em uma solução de canto para "despesas culturais" — provavelmente porque o custo de oportunidade (em termos de saúde e educação) é muito alto. As condições de Kuhn-Tucker são a ferramenta matemática que formaliza essas situações.

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

!!! idea "Intuição Econômica"
    **Em uma frase:** Se uma restrição não está "mordendo", ela não custa nada; se uma variável é zero, seu preço-sombra pode ser qualquer coisa.

    **Pense assim:** Se o limite do seu cartão de crédito é R$ 10.000 e você só gasta R$ 3.000, o limite não afeta suas decisões — é como se ele não existisse (λ = 0). Mas se você bate no limite todo mês, cada real adicional de crédito tem valor real (λ > 0). Folga complementar diz: ou a restrição aperta, ou o multiplicador é zero — nunca os dois ao mesmo tempo.

    **Por que isso importa:** Soluções de canto são comuns no mundo real — famílias que não poupam nada, firmas que não exportam, consumidores que não compram certos bens. As condições KKT são a linguagem matemática dessas situações.

<iframe src="../graficos/cap02/kuhn-tucker.html" title="Figura 2.3 — Condições de Kuhn-Tucker: restrição ativa vs inativa" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.3 — Condições de Kuhn-Tucker: restrição ativa vs inativa.** Maximize \(f(x,y) = -(x-5)^2-(y-5)^2+50\) sujeito a \(x+y \leq c\). Quando \(c < 10\), a restrição é ativa (\(\lambda > 0\)); quando \(c \geq 10\), o ótimo irrestrito é viável e \(\lambda = 0\). Arraste o slider para observar a transição e a folga complementar em ação.
</div>

!!! box-brasil "Box Brasil — O teto de gastos e a otimização sob restrições de desigualdade"

    A **Emenda Constitucional nº 95/2016** (posteriormente substituída pelo novo arcabouço fiscal da EC 126/2022) impôs um **teto para os gastos primários** da União: a despesa primária total de um exercício não poderia exceder a despesa do exercício anterior corrigida pela inflação (IPCA).

    **Formalização como problema de Kuhn-Tucker.** O governo maximiza uma função de bem-estar social \(W(g_1, g_2, \ldots, g_n)\) — onde \(g_i\) é o gasto na área \(i\) (saúde, educação, defesa, etc.) — sujeito à restrição de desigualdade:

    \[
    \sum_{i=1}^{n} g_i \leq \bar{G}
    \]

    onde \(\bar{G}\) é o teto fiscal. As condições de Kuhn-Tucker (Seção 2.7) implicam que, se o teto é ativo (\(\sum g_i = \bar{G}\)), o multiplicador \(\lambda > 0\) mede o **custo social marginal** da restrição fiscal — quanto de bem-estar a sociedade sacrifica por não poder gastar uma unidade adicional. Se o teto não é ativo, \(\lambda = 0\) e a restrição fiscal é irrelevante.

    **Folga complementar na prática.** Na maioria dos exercícios fiscais desde 2017, o teto foi uma restrição ativa (vinculante), com \(\lambda > 0\). A transição para o novo arcabouço fiscal em 2023 modificou os parâmetros da restrição, mas preservou a lógica de otimização sob restrição de desigualdade. As pressões por ampliação do teto revelam, na prática, que o multiplicador \(\lambda\) é percebido como significativamente positivo — o custo social da restrição é elevado.

??? exercicio-resolvido "Exercício Resolvido 2.3 — Condições de Kuhn-Tucker com solução de canto"

    **Enunciado:** Um consumidor com utilidade \(U(x_1, x_2) = 2\sqrt{x_1} + x_2\) enfrenta preços \(p_1 = 4\), \(p_2 = 1\) e renda \(I\). Encontre a cesta ótima para \(I = 20\) e \(I = 0{,}5\), identificando soluções interiores e de canto.

    **Dados:** \(U = 2x_1^{1/2} + x_2\), \(p_1 = 4\), \(p_2 = 1\).

    **Resolução:**

    **Passo 1 — Montar o Lagrangeano e condições KKT**

    \[
    \mathcal{L} = 2\sqrt{x_1} + x_2 + \lambda(I - 4x_1 - x_2)
    \]

    Condições KKT:

    - \(\frac{\partial \mathcal{L}}{\partial x_1} = x_1^{-1/2} - 4\lambda \leq 0\), com igualdade se \(x_1 > 0\)
    - \(\frac{\partial \mathcal{L}}{\partial x_2} = 1 - \lambda \leq 0\), com igualdade se \(x_2 > 0\)
    - \(4x_1 + x_2 \leq I\), com igualdade se \(\lambda > 0\)

    **Passo 2 — Caso \(I = 20\) (solução interior)**

    Se \(x_2 > 0\): da segunda condição, \(\lambda = 1\). Da primeira: \(x_1^{-1/2} = 4 \implies x_1^* = 1/16\). Gasto em \(x_1\): \(4 \times 1/16 = 1/4\). Sobra: \(x_2^* = 20 - 1/4 = 19{,}75\).

    Verificação: \(x_1 > 0\), \(x_2 > 0\), restrição ativa. Todas as condições KKT satisfeitas.

    **Passo 3 — Caso \(I = 0{,}5\) (solução de canto)**

    Se \(x_2 > 0\), então \(\lambda = 1\) e \(x_1 = 1/16\), exigindo gasto de \(4 \times 1/16 = 0{,}25\). Sobraria \(x_2 = 0{,}25\). Mas verifiquemos: com \(I = 0{,}5\), o consumidor pode alocar tudo em \(x_1\): \(x_1 = 0{,}5/4 = 0{,}125\), obtendo \(U = 2\sqrt{0{,}125} \approx 0{,}707\). Ou alocar como na solução interior: \(U = 2\sqrt{1/16} + 0{,}25 = 0{,}5 + 0{,}25 = 0{,}75\). A solução interior é melhor.

    De fato, com \(I = 0{,}5\), a solução interior \(x_1 = 1/16\), \(x_2 = 0{,}25\) é viável e satisfaz as KKT. A solução de canto (\(x_2 = 0\)) só ocorreria se a renda fosse menor que \(0{,}25\), pois o gasto mínimo em \(x_1\) na solução interior é \(1/4\).

    **Resultado:** Para \(I = 20\): \((x_1^*, x_2^*) = (1/16,\ 19{,}75)\). Para \(I = 0{,}5\): \((x_1^*, x_2^*) = (1/16,\ 0{,}25)\). A solução de canto (\(x_2 = 0\)) ocorre para \(I < 0{,}25\).

    **Interpretação econômica:** A utilidade quase-linear implica que a demanda por \(x_1\) é independente da renda (quando a solução é interior): \(x_1^* = 1/16\) para qualquer \(I \geq 0{,}25\). Todo aumento de renda é absorvido por \(x_2\). Isso é uma propriedade importante: com preferências quase-lineares, não há efeito-renda sobre o bem \(x_1\), simplificando a análise de bem-estar — o excedente do consumidor é uma medida exata da variação de utilidade.

---

## 2.8 Condições de segunda ordem e curvatura

Nas seções anteriores, as condições de segunda ordem apareceram como requisitos técnicos — a hessiana negativa definida, o custo marginal crescente. Mas qual é o significado mais profundo dessas condições? Elas estão intimamente ligadas à *curvatura* da função objetivo: conceitos como concavidade e convexidade, que determinam se pontos críticos são máximos globais e se as condições de Lagrange são suficientes. A importância prática é enorme: se a função objetivo é côncava, qualquer solução das CPOs é automaticamente um máximo global — dispensando a verificação laboriosa do hessiano orlado. A maior parte dos problemas que encontraremos neste livro satisfará essa condição, o que simplifica substancialmente a resolução.

### Concavidade e convexidade

!!! definition "Concavidade"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **côncava** se, para todo \(\mathbf{x}, \mathbf{y} \in \mathbb{R}^n\) e todo \(t \in [0,1]\):

    \[
    f(t\mathbf{x} + (1-t)\mathbf{y}) \geq t \, f(\mathbf{x}) + (1-t) \, f(\mathbf{y})
    \]

    Se a desigualdade é estrita para \(\mathbf{x} \neq \mathbf{y}\) e \(t \in (0,1)\), a função é **estritamente côncava**.

Para funções duas vezes diferenciáveis, a concavidade equivale à condição de que a **hessiana seja negativa semidefinida** em todos os pontos.

Uma função côncava tem a propriedade crucial de que **todo ponto crítico é um máximo global** — o que simplifica enormemente os problemas de otimização. Em termos práticos, isso significa que, para funções côncavas, basta resolver as condições de primeira ordem: se existe solução, ela é automaticamente o máximo global. Não é necessário verificar as condições de segunda ordem nem se preocupar com máximos locais que não sejam globais.

### Quase-concavidade

A concavidade é uma condição forte: muitas funções utilidade comuns (como a Cobb-Douglas) não são côncavas no sentido estrito, embora produzam curvas de indiferença com o formato "bem-comportado" que esperamos. Para esses casos, uma condição mais fraca é suficiente.

!!! definition "Quase-concavidade"
    Uma função \(f\) é **quase-côncava** se seus **conjuntos de nível superior** \(\{x : f(x) \geq k\}\) são convexos para todo \(k\).

A quase-concavidade é mais fraca que a concavidade, mas é suficiente para garantir que curvas de indiferença têm o formato convexo usual (abauladas em direção à origem). A maioria das funções utilidade usadas em microeconomia é quase-côncava, embora nem todas sejam côncavas. A distinção é sutil mas importante: a função Cobb-Douglas \(U = x_1^2 x_2^2\), por exemplo, não é côncava (sua hessiana não é negativa semidefinida em todos os pontos), mas é quase-côncava (seus conjuntos de nível superior são convexos). Como a utilidade é ordinal (Capítulo 3, Seção 3.7), podemos aplicar uma transformação monotônica — por exemplo, \(\hat{U} = \ln U = 2\ln x_1 + 2\ln x_2\) — que é côncava e representa as mesmas preferências. Essa observação explica por que a quase-concavidade, e não a concavidade, é a condição "certa" para o problema do consumidor: ela é invariante sob transformações monotônicas, enquanto a concavidade não é.

!!! note "Condições de segunda ordem em problemas restritos"
    Para problemas de maximização com restrições de igualdade, as condições de segunda ordem envolvem o **hessiano orlado** (*bordered Hessian*), que incorpora as derivadas da restrição. A quase-concavidade da função objetivo é suficiente para garantir que as CSO são satisfeitas em problemas restritos.

---

## 2.9 Funções homogêneas e Teorema de Euler

Além da curvatura, outra propriedade das funções que desempenha um papel central em microeconomia é a *homogeneidade*. Uma função homogênea possui uma simetria especial: multiplicar todos os argumentos por uma mesma constante produz um efeito previsível sobre o valor da função. Essa propriedade — que pode parecer uma curiosidade matemática à primeira vista — tem implicações econômicas profundas e imediatas. É a homogeneidade que fundamenta conceitos como retornos de escala em produção, a ausência de ilusão monetária na demanda e a exaustão do produto pela remuneração dos fatores. Léon Walras, em seus *Éléments d'économie politique pure* (1874), já reconhecia que a homogeneidade é a propriedade matemática por trás da "lei de Walras" — a interdependência dos mercados que discutiremos no Capítulo 12.

!!! definition "Função Homogênea"
    Uma função \(f: \mathbb{R}^n \to \mathbb{R}\) é **homogênea de grau \(k\)** se, para todo escalar \(t > 0\):

    \[
    f(t x_1, t x_2, \ldots, t x_n) = t^k \, f(x_1, x_2, \ldots, x_n)
    \]

A homogeneidade captura a ideia de *escala*: ao multiplicar todos os insumos por \(t\), o produto se multiplica por \(t^k\). Quando \(k = 1\), duplicar os insumos duplica o produto — retornos constantes de escala. Quando \(k > 1\), o produto mais que duplica — retornos crescentes. Quando \(k < 1\), menos que duplica — retornos decrescentes.

Exemplos centrais em economia:

- Uma **função de produção** com retornos constantes de escala é homogênea de grau 1: \(F(tK, tL) = tF(K,L)\).
- **Funções de demanda** marshalliana são homogêneas de grau 0 em preços e renda: \(x_i(tp_1, tp_2, tI) = x_i(p_1, p_2, I)\). Duplicar todos os preços e a renda não altera as quantidades demandadas — o que importa são preços *relativos* e renda *real*. Essa propriedade, chamada de **ausência de ilusão monetária**, é consequência direta da maximização de utilidade (Capítulo 4).
- A **função dispêndio** é homogênea de grau 1 em preços: duplicar todos os preços duplica o gasto mínimo para atingir um dado nível de utilidade.

!!! theorem "Teorema de Euler"
    Se \(f\) é homogênea de grau \(k\) e diferenciável, então:

    \[
    \sum_{i=1}^{n} x_i \frac{\partial f}{\partial x_i} = k \cdot f(x_1, \ldots, x_n)
    \]

**Aplicação.** Para uma função de produção \(F(K, L)\) homogênea de grau 1 (retornos constantes de escala):

\[
K \cdot \frac{\partial F}{\partial K} + L \cdot \frac{\partial F}{\partial L} = F(K, L)
\]

Se cada fator recebe sua produtividade marginal (\(r = F_K\) e \(w = F_L\)), então \(rK + wL = F(K,L)\) — o produto é exatamente esgotado pela remuneração dos fatores.

<iframe src="../graficos/cap02/funcoes-homogeneas.html" title="Figura 2.4 — Funções Homogêneas e Teorema de Euler" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.4 — Funções Homogêneas e Teorema de Euler.** Isoquantas de \(F(K,L) = K^\alpha L^\beta\). Ajuste \(\alpha\) e \(\beta\) para mudar o grau de homogeneidade (retornos de escala). O fator \(t\) escala o ponto (4,4): a isoquanta verde mostra \(F(tK, tL) = t^k F(K,L)\). O painel verifica o Teorema de Euler numericamente.
</div> Este resultado é conhecido como o **problema da exaustão do produto** (Nicholson & Snyder, 2017). A implicação é notável: sob retornos constantes de escala e remuneração competitiva dos fatores, não há "sobra" — nenhum lucro econômico puro. Todo o produto é distribuído entre capital e trabalho segundo suas contribuições marginais.

!!! idea "Intuição Econômica"
    **Em uma frase:** Se a tecnologia tem retornos constantes de escala, pagar cada fator pela sua produtividade marginal esgota exatamente o produto — não sobra nem falta nada.

    **Pense assim:** Imagine uma padaria onde dobrar todos os insumos (farinha, forno, padeiros) dobra exatamente a produção de pães. Se cada insumo recebe o valor dos pães extras que ele produz, a conta fecha redondinha: todo pão é "explicado" por algum insumo. Não há lucro econômico puro.

    **Por que isso importa:** Esse resultado é a base teórica da distribuição funcional da renda — quanto vai para o trabalho e quanto vai para o capital. No Brasil, onde a participação do trabalho na renda caiu de ~48% para ~43% entre 2000 e 2015 (Contas Nacionais/[IBGE](https://www.ibge.gov.br)), o teorema de Euler ajuda a entender as forças por trás dessa mudança.

---

## 2.10 Integração

As seções anteriores concentraram-se em técnicas de diferenciação e otimização. Mas a operação inversa da diferenciação — a integração — também tem aplicações importantes em microeconomia, especialmente na análise de bem-estar. Quando queremos medir quanto um consumidor ou produtor ganha ou perde com uma mudança de preço, precisamos calcular áreas sob curvas, o que requer integração. Em microeconomia, a integração aparece em diversos contextos:

- **Excedente do consumidor**: a área entre a curva de demanda inversa e o preço de equilíbrio, que mede o ganho líquido dos consumidores por poderem comprar ao preço de mercado:

\[
EC = \int_{0}^{Q^*} D^{-1}(q) \, dq - P^* Q^*
\]

- **Excedente do produtor**: a área entre o preço de equilíbrio e a curva de custo marginal, que mede o ganho líquido dos produtores:

\[
EP = P^* Q^* - \int_{0}^{Q^*} CMg(q) \, dq
\]

- **Valor esperado** de uma variável aleatória (Seção 2.12):

\[
E[X] = \int_{-\infty}^{\infty} x \, f(x) \, dx
\]

Os excedentes do consumidor e do produtor serão desenvolvidos formalmente no Capítulo 5, onde calcularemos variações no bem-estar associadas a mudanças de preços e políticas tributárias. Por ora, basta registrar que a integração é a ferramenta que converte informações *marginais* (a disposição a pagar por cada unidade) em medidas *totais* (o bem-estar agregado).

O **Teorema Fundamental do Cálculo** conecta integração e diferenciação:

\[
\frac{d}{dx} \int_{a}^{x} f(t) \, dt = f(x)
\]

Em análise de bem-estar, a integração permite calcular a **variação compensatória** e a **variação equivalente**, medidas exatas de mudança no bem-estar do consumidor. Esses conceitos serão desenvolvidos em detalhe no Capítulo 4, quando estudarmos a teoria do bem-estar do consumidor. Por ora, basta observar que a conexão entre integração e diferenciação — o Teorema Fundamental do Cálculo — é mais do que uma curiosidade matemática: ela garante a coerência entre medidas "marginais" (como o excedente marginal de uma unidade adicional) e medidas "totais" (como o excedente total do mercado).

---

## 2.11 Otimização dinâmica: uma breve introdução

Todas as técnicas apresentadas até aqui tratam de decisões **estáticas**: o agente escolhe uma vez, em um único momento. Mas muitas das decisões econômicas mais importantes são *intertemporais* — envolvem trocas entre presente e futuro. Um estudante que decide quanto tempo dedicar a estudar hoje em vez de trabalhar está fazendo uma escolha intertemporal: o custo (renda perdida hoje) e o benefício (salário mais alto no futuro) ocorrem em momentos diferentes. Muitos problemas econômicos envolvem decisões ao longo do tempo:

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

que expressa a condição de que o agente é indiferente entre consumir uma unidade hoje e poupá-la para consumir \((1+r)\) unidades amanhã, descontadas pelo fator \(\beta\). Note a analogia com a equimarginalidade do problema do consumidor (Seção 2.5): lá, o agente iguala a utilidade marginal por real gasto entre bens; aqui, iguala a utilidade marginal por real entre períodos. A estrutura lógica é idêntica — otimização sujeita a restrição —, apenas o espaço de escolha muda: em vez de alocar renda entre bens no mesmo momento, o agente aloca renda entre períodos ao longo do tempo.

Se \(\beta(1+r) = 1\) — ou seja, se a taxa de desconto subjetiva iguala a taxa de juros —, a equação de Euler implica \(u'(c_t) = u'(c_{t+1})\), logo \(c_t = c_{t+1}\): o agente suaviza perfeitamente o consumo ao longo do tempo. Se \(\beta(1+r) > 1\) (juros altos ou paciência alta), o consumo cresce ao longo do tempo; se \(\beta(1+r) < 1\), o consumo decresce. Essa lógica fundamenta modelos de poupança, crescimento econômico e política fiscal intertemporal.

### Otimização contínua: cálculo de variações e controle ótimo

Em tempo contínuo, problemas de otimização dinâmica são resolvidos pelo **cálculo de variações** ou pela **teoria do controle ótimo** (princípio do máximo de Pontryagin). No cálculo de variações, o agente escolhe uma *função* inteira \(c(t)\) — a trajetória ótima de consumo ao longo do tempo —, em vez de um vetor finito de variáveis. O princípio do máximo de Pontryagin generaliza o método de Lagrange para esse contexto: introduz uma variável adjunta \(\mu(t)\) — o análogo dinâmico do multiplicador de Lagrange — que mede o valor-sombra do estoque de riqueza em cada instante.

Esses métodos são particularmente usados em teoria do crescimento (modelo de Ramsey-Cass-Koopmans), economia dos recursos naturais (extração ótima de petróleo, desmatamento) e finanças (precificação de opções, consumo e investimento ao longo do ciclo de vida). No contexto brasileiro, modelos de controle ótimo foram aplicados à análise da sustentabilidade fiscal e à gestão de reservas do pré-sal. Embora o desenvolvimento formal desses métodos esteja fora do escopo deste livro, a intuição é a mesma da otimização estática: igualar benefício marginal a custo marginal, agora em cada ponto do tempo.

---

## 2.12 Estatística matemática: valor esperado e variância

Para encerrar nosso manual de sobrevivência matemática, precisamos abordar o tratamento formal da *incerteza*. Os modelos de otimização apresentados até aqui supõem que o agente conhece com certeza os resultados de suas decisões. Mas na realidade, consumidores não sabem se ficarão doentes, investidores não sabem se o mercado subirá, e agricultores não sabem se choverá. A incerteza é onipresente em decisões econômicas. As ferramentas básicas de probabilidade são essenciais para a análise de escolha sob risco.

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
    A desigualdade de Jensen afirma que, para funções côncavas, \(E[U(W)] \leq U(E[W])\). Isso significa que um agente avesso ao risco prefere a renda esperada com certeza à loteria em si — ele estaria disposto a pagar um **prêmio de risco** para eliminar a incerteza. A diferença \(E[W] - CE\), onde \(CE\) é o **equivalente-certo** (o valor certo que o agente considera tão bom quanto a loteria), mede esse prêmio de risco. Quanto mais côncava a função utilidade, maior a aversão ao risco e maior o prêmio.

A aversão ao risco tem implicações práticas diretas: explica por que pessoas contratam seguros (pagam um prêmio para eliminar risco), por que investidores diversificam carteiras (reduzem variância sacrificando retorno esperado) e por que trabalhadores preferem salários estáveis a comissões variáveis de mesmo valor esperado. No Brasil, o coeficiente de Arrow-Pratt estimado para famílias de baixa renda é tipicamente maior do que para famílias de alta renda — o que justifica políticas de seguro social mais generosas para os mais vulneráveis.

Observe como os conceitos de concavidade da Seção 2.8 reaparecem aqui em um contexto completamente diferente: a concavidade da função utilidade, que na teoria do consumidor garante curvas de indiferença bem-comportadas (Capítulo 3), na teoria da escolha sob risco expressa a aversão ao risco do agente. Essa convergência ilustra a economia e a elegância do aparato matemático que percorre todo este capítulo: o mesmo conceito — concavidade — desempenha papéis distintos mas relacionados em diferentes áreas da microeconomia. A escolha sob risco será desenvolvida em detalhe no Capítulo 6, onde os conceitos de valor esperado, variância e utilidade de von Neumann-Morgenstern aqui introduzidos serão aplicados a problemas de seguros, mercados financeiros e decisões de investimento.

---

### Gráficos interativos

Os gráficos interativos a seguir ilustram os principais conceitos desenvolvidos neste capítulo — otimização sem e com restrições, o método de Lagrange, condições de Kuhn-Tucker e funções homogêneas. Cada gráfico permite manipular parâmetros em tempo real, de modo que o leitor possa observar como as soluções ótimas, as curvas de nível e os multiplicadores se ajustam simultaneamente.

A visualização interativa é um complemento essencial à exposição formal. Enquanto as demonstrações algébricas estabelecem *por que* os resultados são verdadeiros, os gráficos mostram *como* eles se manifestam geometricamente — tornando tangível a relação entre gradientes paralelos, tangência de curvas de nível e folga complementar, por exemplo.

Ao longo de todo o livro, cada capítulo contará com gráficos interativos semelhantes, adaptados aos temas específicos daquela seção. Essa abordagem visual-interativa acompanha o leitor desde os fundamentos matemáticos aqui apresentados até as aplicações em teoria do consumidor, teoria da firma, equilíbrio geral e economia da informação.

<iframe src="../graficos/cap02/otimizacao-1var.html" title="Figura 2.5 — Otimização de função de uma variável" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.5 — Otimização de função de uma variável.** No máximo, \(f'(x^*)=0\) e \(f''(x^*)<0\). Arraste o ponto sobre a curva para explorar \(f'(x)\): a reta tangente mostra a inclinação em tempo real. Use os sliders para alterar curvatura e posição do pico.
</div>

<iframe src="../graficos/cap02/lagrangeano.html" title="Figura 2.6 — Otimização com restrição: Lagrangeano" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.6 — Otimização com restrição: Lagrangeano.** Maximização de \(f(x,y)=xy\) sujeita a \(x+y=c\). O ótimo ocorre na tangência entre a curva de nível e a restrição, onde \(\nabla f = \lambda \nabla g\). Varie \(c\) e observe os gradientes paralelos.
</div>

<iframe src="../graficos/cap02/envelope.html" title="Figura 2.7 — Teorema do Envelope" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 2.7 — Teorema do Envelope.** Família de curvas \(f(x,\alpha)\) e a envoltória \(V(\alpha)=\max_x f(x,\alpha)\). O teorema mostra que \(dV/d\alpha = \partial f/\partial \alpha|_{x^*}\) — basta a derivada parcial direta, sem recalcular o ótimo.
</div>

---

## 2.13 — Condições de otimização

Ao longo das seções anteriores, apresentamos uma diversidade de problemas de otimização: sem restrição, com restrição de igualdade, com restrição de desigualdade, em tempo discreto e contínuo. Cada tipo de problema tem suas próprias condições de otimalidade, mas a lógica subjacente é sempre a mesma: igualar o benefício marginal ao custo marginal, avaliados na direção correta. A [Tabela 2.1](#tabela-2-1) reúne as condições de otimização para os principais tipos de problemas discutidos neste capítulo, servindo como referência rápida para o restante do livro.

<a id="tabela-2-1"></a>

| Tipo de Problema | Condição de Primeira Ordem | Condição de Segunda Ordem | Observação |
|---|---|---|---|
| **Sem restrição** (1 variável) | \(f'(x^*) = 0\) | \(f''(x^*) < 0\) para máx. | Teste da derivada segunda |
| **Sem restrição** (\(n\) variáveis) | \(\nabla f(\mathbf{x}^*) = \mathbf{0}\) | \(H(\mathbf{x}^*)\) negativa definida para máx. | \(H\) é a hessiana |
| **Restrição de igualdade** | \(\nabla f = \lambda \nabla g\); \(g(\mathbf{x}) = c\) | Hessiano orlado com menores alternando em sinal | \(\lambda\) = valor sombra da restrição |
| **Restrição de desigualdade** | Condições KKT: folga complementar | Mesmas do caso com igualdade nas restrições ativas | Restrições inativas: \(\lambda_j = 0\) |

<div class="caption-obj" markdown>
**Tabela 2.1 — Condições de otimização.**
</div>

---

!!! box-brasil "Box Brasil — O IPCA e as funções de agregação de Laspeyres"

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

## 📋 Resumo do Capítulo

- O capítulo fornece o aparato matemático essencial para a microeconomia: **cálculo diferencial** (condições de primeira e segunda ordem), **cálculo multivariado** (derivadas parciais, diferencial total, teorema da função implícita) e **otimização** com e sem restrições.
- O **teorema da função implícita** é a ferramenta central da estática comparativa: permite calcular como variáveis endógenas (preço de equilíbrio, quantidade) respondem a mudanças em variáveis exógenas (renda, custos) a partir de condições de equilíbrio implícitas.
- O **teorema do envelope** simplifica a estática comparativa ao mostrar que, no ótimo, o efeito de uma mudança paramétrica sobre o valor ótimo é dado apenas pelo efeito direto — o ajuste indireto via variáveis de escolha é de segunda ordem.
- O **método de Lagrange** resolve problemas de maximização com restrições de igualdade; o multiplicador \(\lambda\) mede o valor marginal de relaxar a restrição (ex.: utilidade marginal da renda no problema do consumidor).
- As **condições de Kuhn-Tucker** generalizam o método de Lagrange para restrições de desigualdade e soluções de canto, com as condições de folga complementar determinando quais restrições são ativas.
- O capítulo também cobre **funções homogêneas** (teorema de Euler e exaustão do produto), **concavidade e quase-concavidade** (condições de segunda ordem), integração (excedentes), otimização dinâmica (equação de Euler) e estatística (valor esperado, variância, utilidade esperada de von Neumann-Morgenstern).

## 🔑 Conceitos-Chave

<a id="tabela-2-2"></a>

| Conceito | Definição |
|----------|-----------|
| Condição de primeira ordem (CPO) | Condição necessária para um extremo: a derivada (ou gradiente) da função objetivo é zero no ponto ótimo. |
| Condição de segunda ordem (CSO) | Condição que distingue máximo de mínimo: exige hessiana negativa definida (máximo) ou positiva definida (mínimo). |
| Teorema da função implícita | Permite calcular \(dy/dx\) quando a relação entre \(x\) e \(y\) é dada implicitamente por \(F(x,y)=0\); fundamental para estática comparativa. |
| Teorema do envelope | No ótimo, \(dV/da = \partial \mathcal{L}/\partial a\): o efeito de um parâmetro sobre o valor ótimo é dado pela derivada parcial direta do Lagrangeano. |
| Multiplicador de Lagrange (\(\lambda\)) | Preço-sombra da restrição; mede o aumento no valor ótimo da função objetivo quando a restrição é relaxada em uma unidade marginal. |
| Condições de Kuhn-Tucker (KKT) | Generalização do método de Lagrange para restrições de desigualdade, incluindo condições de folga complementar. |
| Função homogênea de grau \(k\) | Função tal que \(f(t\mathbf{x}) = t^k f(\mathbf{x})\); retornos constantes de escala correspondem a \(k=1\). |
| Teorema de Euler | Para funções homogêneas de grau \(k\): \(\sum x_i f_i = k \cdot f\); implica a exaustão do produto sob retornos constantes de escala. |
| Quase-concavidade | Propriedade de funções cujos conjuntos de nível superior são convexos; garante curvas de indiferença convexas e condições de segunda ordem em problemas restritos. |
| Equação de Euler (intertemporal) | Condição \(u'(c_t) = \beta(1+r)u'(c_{t+1})\) que iguala o custo marginal de consumir hoje ao benefício marginal de poupar e consumir amanhã. |

<div class="caption-obj" markdown>
**Tabela 2.2 — Conceitos-chave.**
</div>

## ✏️ Exercícios

Os exercícios abaixo progridem do cálculo diferencial básico (otimização de funções de uma variável) até aplicações mais avançadas (Lagrange, Kuhn-Tucker, teorema do envelope). Procure identificar, em cada exercício, qual ferramenta matemática é a mais adequada e como os resultados admitem interpretação econômica.

<a id="ex-2-1"></a>**Exercício 2.1.** Considere a função \(f(x) = 12x - 3x^2 + 2x^3 - \frac{1}{4}x^4\).

a) Encontre todos os pontos críticos.

b) Classifique cada ponto crítico como máximo local, mínimo local ou ponto de inflexão usando a condição de segunda ordem.

c) Identifique o máximo global no intervalo \([0, 4]\).

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-1)

<a id="ex-2-2"></a>**Exercício 2.2.** Um consumidor tem função utilidade \(U(x_1, x_2) = x_1^{1/3} x_2^{2/3}\) e enfrenta preços \(p_1\) e \(p_2\) com renda \(I\).

a) Formule o Lagrangeano do problema de maximização de utilidade.

b) Derive as condições de primeira ordem.

c) Obtenha as funções de demanda marshallianas \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\).

d) Verifique que as funções de demanda são homogêneas de grau 0 em \((p_1, p_2, I)\).

e) Interprete economicamente o multiplicador de Lagrange \(\lambda^*\).

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-2)

<a id="ex-2-3"></a>**Exercício 2.3.** Considere a função de produção Cobb-Douglas \(Q = A K^\alpha L^\beta\) com \(\alpha, \beta > 0\).

a) Mostre que \(Q\) é homogênea de grau \(\alpha + \beta\).

b) Verifique o Teorema de Euler para esta função.

c) Sob que condição a função apresenta retornos constantes de escala? E retornos decrescentes?

d) Calcule a taxa marginal de substituição técnica (\(TMST\)) entre capital e trabalho e interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-3)

<a id="ex-2-4"></a>**Exercício 2.4 (Teorema do Envelope).** Uma firma monopolista enfrenta a demanda \(P = a - bQ\) e tem custo total \(CT = cQ\), onde \(a\), \(b\) e \(c\) são parâmetros positivos com \(a > c\).

a) Encontre a quantidade ótima \(Q^*(a, b, c)\) e o lucro máximo \(\pi^*(a, b, c)\).

b) Use o teorema do envelope para calcular \(\frac{\partial \pi^*}{\partial a}\), \(\frac{\partial \pi^*}{\partial b}\) e \(\frac{\partial \pi^*}{\partial c}\).

c) Verifique os resultados do item (b) diferenciando diretamente a expressão do lucro máximo.

d) Interprete economicamente o sinal de cada derivada.

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-4)

<a id="ex-2-5"></a>**Exercício 2.5 (Kuhn-Tucker).** Um consumidor tem utilidade \(U(x_1, x_2) = \ln(x_1) + x_2\) (preferências quase-lineares), preços \(p_1 = 2\) e \(p_2 = 1\), e renda \(I\).

a) Formule o problema com restrição de não-negatividade e restrição orçamentária de desigualdade.

b) Escreva as condições de Kuhn-Tucker.

c) Para \(I = 10\), encontre a solução ótima e verifique todas as condições KKT.

d) Para \(I = 0{,}3\), mostre que a solução envolve \(x_2 = 0\) (solução de canto) e encontre \(x_1^*\).

e) Qual o valor mínimo de \(I\) a partir do qual o consumidor passa a adquirir quantidades positivas de ambos os bens?

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-5)

---

<a id="ex-2-6"></a>**Exercício 2.6.** Considere a função \(f(x, y) = x^2 y\).

a) Verifique que \(f\) é homogênea e determine o grau de homogeneidade.

b) Verifique numericamente o Teorema de Euler no ponto \((x, y) = (3, 4)\).

c) As derivadas parciais \(f_x\) e \(f_y\) são homogêneas? De que grau?

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-6)

---

<a id="ex-2-7"></a>**Exercício 2.7.** Um consumidor tem preferências do tipo Leontief (complementos perfeitos): \(U(x_1, x_2) = \min\{x_1, \, 2x_2\}\). Os preços são \(p_1 = 3\), \(p_2 = 6\) e a renda é \(I = 90\).

a) Em que proporção o consumidor deseja consumir os dois bens? *(Dica: no ótimo, \(x_1 = 2x_2\).)*

b) Encontre a cesta ótima substituindo a condição de complementaridade na restrição orçamentária.

c) Calcule a utilidade no ótimo.

d) Se a renda aumentar para \(I = 120\), qual é a nova cesta ótima? Calcule a variação percentual em cada bem e interprete.

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-7)

---

<a id="ex-2-8"></a>**Exercício 2.8 (Teorema da função implícita e imposto).** Considere um mercado competitivo com demanda \(Q^d = a - bP\) e oferta \(Q^s = -c + d(P - t)\), onde \(t \geq 0\) é um imposto por unidade cobrado dos produtores.

a) Encontre o preço de equilíbrio \(P^*(t)\) e a quantidade de equilíbrio \(Q^*(t)\).

b) Calcule \(\frac{dP^*}{dt}\) e interprete: o imposto é integralmente repassado ao consumidor?

c) Sob que condição sobre as elasticidades de oferta e demanda o repasse é maior do que 50%?

d) Calcule a receita tributária \(R(t) = t \cdot Q^*(t)\) e encontre a alíquota que maximiza a receita. Interprete usando a curva de Laffer.

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-8)

---

<a id="ex-2-9"></a>**Exercício 2.9 (Aplicação ao Brasil).** Um produtor rural no Paraná aloca \(L = 100\) horas de trabalho entre a produção de soja (\(L_s\)) e milho (\(L_m\)), com \(L_s + L_m = 100\). As funções de produção são \(q_s = 10\sqrt{L_s}\) (toneladas de soja) e \(q_m = 6\sqrt{L_m}\) (toneladas de milho). Os preços são \(P_s = 160\) R\$/tonelada e \(P_m = 120\) R\$/tonelada.

a) Formule o problema de maximização da receita total sujeito à restrição de horas.

b) Monte o Lagrangeano e derive as condições de primeira ordem.

c) Encontre a alocação ótima \(L_s^*\) e \(L_m^*\).

d) Interprete o multiplicador \(\lambda^*\): quanto vale uma hora adicional de trabalho?

e) Se o preço da soja subir para \(P_s = 200\), como muda a alocação? Use o resultado de estática comparativa, sem resolver o sistema inteiro novamente.

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-9)

---

<a id="ex-2-10"></a>**Exercício 2.10 (Kuhn-Tucker avançado).** Uma firma maximiza lucro \(\pi = PQ - C(Q) - rK\) sujeita à função de produção \(Q = K^{\alpha} L^{1-\alpha}\) (com \(0 < \alpha < 1\)) e a uma restrição de capacidade \(K \leq \bar{K}\). O preço do produto \(P\), o salário \(w\), o custo do capital \(r\) e \(\bar{K}\) são dados.

a) Formule o Lagrangeano com a restrição de igualdade (produção) e a restrição de desigualdade (capacidade).

b) Escreva as condições de Kuhn-Tucker completas, incluindo a folga complementar para a restrição de capacidade.

c) **Caso interior** (\(K < \bar{K}\)): mostre que a firma contrata capital até que a produtividade marginal do capital iguala o custo relativo \(r/P\). Encontre a demanda por capital e trabalho como funções de \(P\), \(w\), \(r\).

d) **Caso de canto** (\(K = \bar{K}\)): mostre que o multiplicador \(\mu > 0\) da restrição de capacidade mede o ganho de lucro por unidade adicional de capital. Interprete \(\mu\) como o "aluguel-sombra" do capital.

e) Qual é o nível crítico de \(\bar{K}\) abaixo do qual a restrição se torna ativa?

[:material-arrow-right: Ver solução](../solucoes/cap02.md#ex-2-10)

---

## 🏆 Vem, ANPEC!

### Prova de Matemática

??? question "ANPEC 2010 — Questão 02"
    Seja \(f: \mathbb{R}^2 \to \mathbb{R}\) diferenciável e homogênea de grau 4, tal que \(f(1,1) = 2\). Julgue os itens abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A soma das derivadas parciais de \(f\) no ponto \((2,2)\) é igual a 32. |
    | 1 | Em um ponto crítico \((x_0, y_0)\) de \(f\) temos que \(f(x_0, y_0) = 0\). |
    | 2 | As derivadas parciais de primeira ordem de \(f\) são também funções homogêneas de grau 4. |
    | 3 | As identidades \(x f_{xx}(x,y) + y f_{yx}(x,y) = 3f_x(x,y)\) e \(x f_{xy}(x,y) + y f_{yy}(x,y) = 3f_y(x,y)\) são válidas para todo ponto \((x,y) \in \mathbb{R}^2\). |
    | 4 | Se \(p = (x_0, y_0)\) e o gradiente de \(f\) em \(p\) são ortogonais, então \(f(p) = 0\). |

    ??? success "Gabarito"
        **Respostas: F V F V V**

        **Justificativa por item:**

        - **Item 0 — F:** Por homogeneidade de grau 4: \(f(2,2) = 2^4 \cdot f(1,1) = 16 \times 2 = 32\). Pelo Teorema de Euler: \(x f_x + y f_y = 4f\). Em \((2,2)\): \(2(f_x + f_y) = 4 \times 32 = 128\), logo \(f_x + f_y = 64 \neq 32\).
        - **Item 1 — V:** Se \((x_0, y_0)\) é ponto crítico, \(f_x = f_y = 0\). Pelo Teorema de Euler: \(x_0 \cdot 0 + y_0 \cdot 0 = 4f(x_0,y_0)\), portanto \(f(x_0,y_0) = 0\).
        - **Item 2 — F:** Se \(f\) é homogênea de grau \(k\), suas derivadas parciais de primeira ordem são homogêneas de grau \(k - 1 = 3\), não de grau 4.
        - **Item 3 — V:** Diferenciando a identidade de Euler \(xf_x + yf_y = 4f\) em relação a \(x\): \(f_x + xf_{xx} + yf_{yx} = 4f_x\), donde \(xf_{xx} + yf_{yx} = 3f_x\). Analogamente em relação a \(y\): \(xf_{xy} + yf_{yy} = 3f_y\).
        - **Item 4 — V:** Se \(p\) e \(\nabla f(p)\) são ortogonais: \(x_0 f_x + y_0 f_y = 0\). Pelo Teorema de Euler, \(x_0 f_x + y_0 f_y = 4f(p)\), logo \(4f(p) = 0 \implies f(p) = 0\).

        **Conexão com o capítulo:** Esta questão testa diretamente o Teorema de Euler (Seção 2.9) e suas consequências para funções homogêneas — incluindo propriedades das derivadas parciais, comportamento em pontos críticos e relação entre o vetor posição e o gradiente.

??? question "ANPEC 2018 — Questão 13"
    Seja \(f(x,y) = xy\) e \(g(x,y) = \alpha x + \beta y\), em que \(\alpha\) e \(\beta\) são estritamente maiores que zero. Seja \(a > 0\) e considere o problema de otimização:

    \[
    \max_{x,y} f(x,y) \quad \text{s.a.} \quad x \geq 0, \; y \geq 0, \; g(x,y) \leq a
    \]

    Identifique abaixo quais são as questões verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Podemos garantir que a restrição \(g(x,y) \leq a\) é inativa para a solução do problema acima, para quaisquer valores estritamente positivos de \(a\), \(\alpha\) e \(\beta\). |
    | 1 | Podemos garantir que a restrição \(x \geq 0\) é inativa para a solução do problema acima, para quaisquer valores estritamente positivos de \(a\), \(\alpha\) e \(\beta\). |
    | 2 | Se \(g(x,y) = 2x + y\), então a solução é \((x^*, y^*) = \left(\frac{a}{4}, \frac{a}{2}\right)\). |
    | 3 | Se \(g(x,y) = 2x + y\), então \(\frac{d}{da} f(x^*(a), y^*(a)) = \frac{a}{8}\). |
    | 4 | Se a solução do problema satisfizer \(g(x^*, y^*) - a = 0\), então os gradientes de \(f\) e de \(g\) em \((x^*, y^*)\) são perpendiculares. |

    ??? success "Gabarito"
        **Respostas: F V V F F**

        **Justificativa por item:**

        - **Item 0 — F:** Como \(f(x,y) = xy\) é crescente em ambos os argumentos (para \(x, y > 0\)), a solução ótima sempre esgota o orçamento: \(\alpha x + \beta y = a\). A restrição é ativa, com \(\lambda > 0\).
        - **Item 1 — V:** A solução do Lagrangeano é \(x^* = \frac{a}{2\alpha} > 0\) e \(y^* = \frac{a}{2\beta} > 0\) para quaisquer \(\alpha, \beta, a > 0\). Portanto, a restrição \(x \geq 0\) nunca é ativa (é de folga).
        - **Item 2 — V:** Com \(\alpha = 2\), \(\beta = 1\): as CPOs do Lagrangeano dão \(y = 2\lambda\) e \(x = \lambda\), logo \(y = 2x\). Substituindo na restrição \(2x + 2x = a\): \(x^* = a/4\), \(y^* = a/2\).
        - **Item 3 — F:** O valor ótimo é \(f^* = (a/4)(a/2) = a^2/8\). Derivando: \(df^*/da = a/4\). Pelo teorema do envelope: \(df^*/da = \lambda^*\). Das CPOs: \(\lambda = x = a/4\). A afirmação diz \(a/8\), que está incorreta.
        - **Item 4 — F:** Pela condição de Lagrange, \(\nabla f = \lambda \nabla g\), ou seja, os gradientes são **paralelos** (proporcionais), não perpendiculares. Gradientes perpendiculares significariam que a curva de nível de \(f\) cruza a restrição transversalmente — o oposto de uma tangência.

        **Conexão com o capítulo:** Questão central para as Seções 2.5 (Lagrange), 2.6 (envelope restrito) e 2.7 (Kuhn-Tucker). Testa simultaneamente: atividade de restrições, folga complementar, cálculo do multiplicador e o significado geométrico da condição de tangência.

??? question "ANPEC 2024 — Questão 02"
    Sejam os números \(a \in \mathbb{R}\) e \(b \in \mathbb{R}\) parâmetros do problema de maximizar a função \(f: \mathbb{R}^2 \to \mathbb{R}\) definida por:

    \[
    f(x_1, x_2) = -x_1^4 + x_1^2 - \frac{x_2^2}{2} + 2x_2
    \]

    sujeito às restrições \(ax_1 + x_2 = b\), \(x_1 \geq 0\) e \(x_2 \geq 0\). Chamamos esse problema de P. Julgue as afirmativas abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A matriz Hessiana da função \(f\) em qualquer ponto \(\mathbf{x} \in \mathbb{R}^2\) é negativa definida. |
    | 1 | Quaisquer que sejam os valores de \(a\) e \(b\), se o gradiente \(\nabla f(x_1^*, x_2^*) = (0,0)\), então \((x_1^*, x_2^*)\) resolve o problema P. |
    | 2 | Quando \(a = b = 0\), o problema P não tem solução. |
    | 3 | Quando \(a > 0\) e \(b = 0\), qualquer solução \((x_1^*, x_2^*)\) do problema P satisfaz \(x_2^* = 2x_1^*\). |
    | 4 | Quando \(a = b = 1\), em qualquer solução \((x_1^*, x_2^*)\) do problema P, o gradiente satisfaz \(\nabla f(x_1^*, x_2^*) \neq (0,0)\). |

    ??? success "Gabarito"
        **Respostas: F F F V V**

        **Justificativa por item:**

        - **Item 0 — F:** A Hessiana é \(H = \begin{pmatrix} -12x_1^2 + 2 & 0 \\ 0 & -1 \end{pmatrix}\). Em \(x_1 = 0\): \(H_{11} = 2 > 0\), logo \(H\) não é negativa definida (tem autovalor positivo). A função \(f\) não é globalmente côncava — isso complica a verificação das CSO (Seção 2.8).
        - **Item 1 — F:** Mesmo que \(\nabla f = \mathbf{0}\), o ponto pode não satisfazer as restrições de P (pode violar \(ax_1 + x_2 = b\), \(x_1 \geq 0\) ou \(x_2 \geq 0\)). Além disso, como \(f\) não é côncava, um ponto com gradiente nulo pode ser um mínimo ou ponto de sela.
        - **Item 2 — F:** Com \(a = b = 0\): a restrição \(x_2 = 0\), \(x_1 \geq 0\). O problema reduz-se a \(\max_{x_1 \geq 0} (-x_1^4 + x_1^2)\), que tem máximo em \(x_1 = 1/\sqrt{2}\). O problema tem solução.
        - **Item 3 — V:** Com \(b = 0\) e \(a > 0\): a restrição \(ax_1 + x_2 = 0\) com \(x_1, x_2 \geq 0\) força \(x_1 = x_2 = 0\). Portanto \(x_2^* = 0 = 2 \times 0 = 2x_1^*\).
        - **Item 4 — V:** Com \(a = b = 1\): a restrição \(x_1 + x_2 = 1\). Na solução restrita, as condições de Lagrange exigem \(\nabla f = \lambda \nabla g\), ou seja, \(\nabla f = \lambda(1, 1)\). Se \(\nabla f = (0,0)\), então \(\lambda = 0\), mas a segunda componente exige \(-x_2 + 2 = 0\), ou seja, \(x_2 = 2\). Isso violaria \(x_1 + x_2 = 1\) com \(x_1 \geq 0\). Contradição. Logo \(\nabla f \neq (0,0)\) em qualquer solução.

        **Conexão com o capítulo:** Integra vários temas: análise da Hessiana e concavidade (Seção 2.8), relação entre solução irrestrita e restrita (Seção 2.5), condições KKT com restrições de igualdade e não-negatividade (Seção 2.7), e o papel da concavidade na garantia de soluções globais (Seção 2.3).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Chetty, R. (2009). [Sufficient Statistics for Welfare Analysis: A Bridge Between Structural and Reduced-Form Methods](https://doi.org/10.1146/annurev.economics.050708.142910). *Annual Review of Economics*, 1, 451–488."
    **Pergunta central:** Como avaliar o impacto de uma política pública sobre o bem-estar social sem precisar estimar um modelo estrutural completo da economia? A estimação de modelos estruturais é custosa e depende de suposições sobre formas funcionais e distribuições — será possível responder a perguntas de política usando apenas algumas "estatísticas suficientes"?

    **Método:** Chetty mostra que, para uma ampla classe de problemas de política pública — tributação, seguro-desemprego, regulação —, o impacto sobre o bem-estar pode ser expresso como função de um pequeno número de **estatísticas suficientes**, tipicamente elasticidades comportamentais estimáveis. A chave é o **teorema do envelope**: como os agentes estão otimizando, os efeitos de primeira ordem de mudanças comportamentais sobre a utilidade são nulos. O único efeito relevante é o efeito **direto** da política sobre a restrição — exatamente o resultado das Seções 2.4 e 2.6.

    **Resultado principal:** Chetty demonstra que a perda de peso morto (*deadweight loss*) de um imposto pode ser expressa como \(DWL \approx \frac{1}{2} \varepsilon \cdot t^2 \cdot p \cdot Q\), onde \(\varepsilon\) é a elasticidade compensada da demanda, \(t\) é a alíquota e \(pQ\) é a receita base. O ponto crucial: não é necessário conhecer a função utilidade, a distribuição de renda ou a heterogeneidade dos agentes — basta a elasticidade. Analogamente, o nível ótimo de seguro-desemprego depende essencialmente de duas estatísticas: a elasticidade da duração do desemprego em relação ao benefício e a queda no consumo durante o desemprego.

    **Por que isso importa:** A abordagem de estatísticas suficientes tornou-se um dos paradigmas dominantes em economia pública empírica. No Brasil, ela é aplicável à avaliação do Simples Nacional, à calibração de alíquotas do ICMS e ao desenho do seguro-desemprego — bastam estimativas de elasticidades comportamentais, sem necessidade de modelos estruturais complexos.

    **Relevância para o capítulo:** O artigo é uma aplicação magistral do teorema do envelope (Seções 2.4 e 2.6): ao reconhecer que agentes otimizadores "já fizeram o melhor possível", Chetty transforma problemas aparentemente intratáveis em expressões simples envolvendo derivadas parciais avaliadas no ótimo. A mensagem é que as ferramentas matemáticas deste capítulo — derivadas parciais, multiplicadores de Lagrange, teorema do envelope — não são mero formalismo: são a base de uma revolução metodológica na economia empírica.

??? pesquisa "Milgrom, P.; Shannon, C. (1994). [Monotone Comparative Statics](https://www.econometricsociety.org/publications/econometrica/1994/01/01/monotone-comparative-statics). *Econometrica*, 62(1), 157–180."
    **Pergunta central:** Quando podemos afirmar que a solução ótima de um problema de maximização é *monotonamente crescente* em um parâmetro? A estática comparativa clássica — "se o preço sobe, a quantidade cai" — depende de condições sobre derivadas segundas (concavidade, condições de segunda ordem). Será possível obter resultados de estática comparativa sem essas condições?

    **Método:** Milgrom e Shannon desenvolveram a teoria da **estática comparativa monotônica** usando conceitos de teoria dos reticulados (*lattice theory*). A ideia central é substituir as condições tradicionais de segunda ordem (hessiana negativa definida, concavidade) por uma condição mais fraca: **supermodularidade** da função objetivo. Uma função é supermodular quando "fazer mais de uma coisa aumenta o retorno de fazer mais de outra" — uma forma de complementaridade.

    **Resultado principal:** Os autores provaram que, se a função objetivo satisfaz a **condição de cruzamento único** (*single crossing property*) no par (variável de escolha, parâmetro), então a solução ótima é monotonamente crescente no parâmetro — sem necessidade de diferenciabilidade, concavidade ou condições de segunda ordem. Esse resultado unifica e generaliza numerosos teoremas de estática comparativa em microeconomia: demanda crescente em renda (para bens normais), oferta crescente em preço, investimento crescente em produtividade.

    **Por que isso importa:** A contribuição de Milgrom e Shannon é metodológica: mostra que muitas previsões qualitativas da microeconomia ("mais de X leva a mais de Y") são mais robustas do que se pensava — não dependem das formas funcionais específicas usadas nos modelos. Em aplicações empíricas, isso justifica o uso de previsões de sinais (positivo/negativo) mesmo quando a forma funcional exata é desconhecida.

    **Relevância para o capítulo:** O artigo dialoga com as Seções 2.2 (função implícita e estática comparativa), 2.3 (condições de segunda ordem) e 2.8 (concavidade e curvatura). As ferramentas clássicas deste capítulo — derivar a CPO, verificar a CSO, aplicar o teorema da função implícita — produzem resultados de estática comparativa sob condições de regularidade. Milgrom e Shannon mostram que esses resultados sobrevivem sob hipóteses muito mais gerais, sugerindo que a estrutura matemática da otimização é mais profunda do que a maquinaria de cálculo diferencial captura.

??? pesquisa "Deaton, A.; Muellbauer, J. (1980). [An Almost Ideal Demand System](https://doi.org/10.2307/1805222). *American Economic Review*, 70(3), 312–326."
    **O que investiga:** Como estimar um sistema de demanda que seja teoricamente consistente (derivado de maximização de utilidade), flexível o bastante para capturar padrões empíricos e tratável econometricamente? Deaton e Muellbauer propõem o *Almost Ideal Demand System* (AIDS), que se tornou o modelo mais utilizado em economia aplicada para estimar elasticidades de demanda.

    **Conexão com o capítulo:** O AIDS é construído inteiramente a partir das ferramentas deste capítulo: a função dispêndio (derivada via dualidade e teorema do envelope, Seções 2.4–2.6), o Lema de Shephard (uma aplicação direta do envelope restrito) e as propriedades de homogeneidade (Seção 2.9). As parcelas orçamentárias do AIDS são lineares nos logaritmos dos preços e da renda real, o que permite estimação por mínimos quadrados — uma consequência da escolha cuidadosa da forma funcional da função dispêndio.

    **Principais resultados:** O sistema AIDS permite estimar elasticidades-preço e elasticidades-renda que satisfazem automaticamente as restrições teóricas (homogeneidade, simetria de Slutsky, aditividade). No Brasil, o AIDS é amplamente utilizado para estimar padrões de consumo a partir da POF, informando políticas tributárias e análises de bem-estar.

    **Por que importa:** O artigo demonstra que as ferramentas matemáticas "abstratas" deste capítulo — dualidade, envelope, homogeneidade — são a base de modelos empíricos usados para orientar políticas reais de tributação e subsídios.

??? pesquisa "Saez, E. (2001). [Using Elasticities to Derive Optimal Income Tax Rates](https://doi.org/10.1111/1467-937X.00166). *Review of Economic Studies*, 68(1), 205–229."
    **O que investiga:** Qual deve ser a estrutura ótima do imposto de renda — progressiva, regressiva ou proporcional? Saez reformula o problema clássico de tributação ótima (Mirrlees, 1971) em termos de *elasticidades comportamentais* diretamente estimáveis, em vez de primitivas estruturais (função utilidade, distribuição de habilidades) difíceis de observar.

    **Conexão com o capítulo:** O artigo é uma aplicação magistral do método de Lagrange (Seção 2.5) e das condições de Kuhn-Tucker (Seção 2.7) ao problema de um planejador social que maximiza o bem-estar sujeito a uma restrição de receita fiscal e a restrições de incentivo (os contribuintes ajustam seu comportamento em resposta aos impostos). O teorema do envelope (Seções 2.4 e 2.6) é usado implicitamente: como os contribuintes otimizam, a perda de bem-estar de um aumento marginal na alíquota depende apenas do efeito direto sobre a receita e da elasticidade comportamental.

    **Principais resultados:** A alíquota marginal ótima no topo da distribuição de renda é \(\tau^* = \frac{1 - g}{1 - g + a \cdot e}\), onde \(g\) é o peso social do contribuinte, \(a\) é o parâmetro de Pareto da cauda da distribuição e \(e\) é a elasticidade da renda tributável. Para elasticidades estimadas nos EUA (\(e \approx 0{,}25\)) e peso social \(g \approx 0\), a alíquota ótima no topo é de aproximadamente 73%.

    **Por que importa:** O artigo transformou a análise de tributação ótima de um exercício teórico em uma ferramenta empírica aplicável. No Brasil, onde a alíquota máxima do IRPF é 27,5% — significativamente abaixo das estimativas de Saez para os EUA e Europa —, os resultados sugerem espaço para maior progressividade, condicionada às elasticidades comportamentais dos contribuintes brasileiros.

??? pesquisa "Afriat, S. N. (1967). [The Construction of Utility Functions from Expenditure Data](https://doi.org/10.2307/2525382). *International Economic Review*, 8(1), 67–77."
    **O que investiga:** É possível determinar, a partir de dados de consumo observados, se um consumidor se comporta de acordo com a teoria da maximização de utilidade? E, em caso afirmativo, é possível *construir* uma função de utilidade consistente com os dados?

    **Conexão com o capítulo:** Afriat mostrou que as condições necessárias e suficientes para que dados de consumo sejam racionalizáveis por uma função de utilidade côncava (Seção 2.8) e contínua se resumem a um sistema de desigualdades lineares — as **desigualdades de Afriat**. Cada desigualdade corresponde a uma aplicação do teorema do envelope e da definição de função côncava: se a cesta \(\mathbf{x}^t\) foi escolhida a preços \(\mathbf{p}^t\), então ela maximiza alguma utilidade côncava, e o teorema do envelope implica relações específicas entre as utilidades e os multiplicadores (preços) em diferentes observações.

    **Principais resultados:** Afriat demonstrou que, se um conjunto finito de observações de preços e quantidades satisfaz o **Axioma Generalizado da Preferência Revelada (GARP)**, então existe uma função de utilidade côncava, contínua e monotônica que racionaliza os dados. Esse resultado é construtivo: Afriat fornece um algoritmo para computar a função de utilidade.

    **Por que importa:** O teorema de Afriat é a ponte entre a teoria (axiomas de preferência, Capítulo 3) e a prática (dados de consumo). Ele fundamenta toda a econometria da demanda e é usado pelo CADE no Brasil para avaliar a consistência de dados de mercado com comportamento competitivo. O artigo de Choi et al. (2014), discutido na seção "Pesquisa em Ação" do Capítulo 3, testa as desigualdades de Afriat em dados experimentais.

## 📚 Referências do Capítulo

- Chiang, Alpha C., e Kevin Wainwright. 2005. [*Fundamental Methods of Mathematical Economics*](https://books.google.com.br/books?id=0S1JnwEACAAJ). 4ª ed. New York: McGraw-Hill.
- Jehle, Geoffrey A., e Philip J. Reny. 2011. [*Advanced Microeconomic Theory*](https://books.google.com/books/about/Advanced_Microeconomic_Theory.html?id=vDR1DwAAQBAJ). 3ª ed. Harlow: Pearson. Cap. 1.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Apêndice Matemático.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Apêndice Matemático.
- Simon, Carl P., e Lawrence Blume. 1994. [*Mathematics for Economists*](https://books.google.com/books?id=l2nWMwEACAAJ). New York: W. W. Norton.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Cap. 27 (Apêndice Matemático).
