# 14.3–14.5 Eficiência de Pareto, Curva de Contrato e FPP

## 14.3 O Caminho Dourado: Curva de Contrato e Núcleo {#143}

A Caixa de Edgeworth nos deu o mapa. Agora precisamos de um critério para separar os tesouros dos becos sem saída. Entre todas as alocações possíveis naquela caixa, quais são "boas"? Mais precisamente, quais alocações não deixam dinheiro na mesa — oportunidades de trocas mutuamente benéficas que ninguém aproveitou? O conceito de eficiência de Pareto fornece o critério, e a curva de contrato traça o caminho dourado: o locus de todas as alocações em que não há mais nenhuma barganha capaz de melhorar a vida de alguém sem prejudicar outra pessoa.

### Eficiência de Pareto na troca

!!! definition "Eficiência de Pareto"
    Uma alocação é **eficiente no sentido de Pareto** (ou um **ótimo de Pareto**) se não existe outra alocação factível que melhore a situação de pelo menos um agente sem piorar a de nenhum outro.

!!! idea "Intuição Econômica"
    **Em uma frase:** Uma situação é eficiente no sentido de Pareto quando não dá mais para melhorar a vida de alguém sem prejudicar outra pessoa.

    **Pense assim:** Pense em uma partilha de bolo de aniversário. Se dá para refatiar o bolo de modo que alguém ganhe um pedaço maior sem que ninguém fique com um pedaço menor, a divisão original era ineficiente. Eficiência de Pareto é quando todo o bolo já foi distribuído da melhor forma possível — qualquer mudança que beneficie alguém necessariamente tira de outro.

    **Por que isso importa:** Eficiência de Pareto é o critério mínimo de "bom funcionamento" de uma economia, mas não diz nada sobre justiça — uma sociedade onde uma pessoa tem tudo e as demais nada pode ser Pareto-eficiente, o que mostra por que eficiência e equidade são questões distintas.

O conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth forma a **curva de contrato** — o locus dos pontos de tangência entre as curvas de indiferença dos dois consumidores.

!!! definition "Curva de contrato"
    A **curva de contrato** é o conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth. Formalmente, é o conjunto de alocações \((x_A, x_B)\) tais que:

    \[
    TMS_A^{12}(x_A) = TMS_B^{12}(x_B)
    \]

    sujeito à factibilidade \(x_A + x_B = \bar{x}\).

Para encontrar a curva de contrato na prática, resolvemos o problema de maximizar a utilidade de um consumidor sujeita à restrição de que o outro consumidor atinja pelo menos um dado nível de utilidade — e variamos esse nível. Quando ambos os consumidores têm preferências Cobb-Douglas, a curva de contrato é tipicamente uma curva que conecta os dois cantos opostos da caixa, passando pelo interior. Sua forma exata depende dos parâmetros das funções de utilidade: se os consumidores têm preferências idênticas, a curva de contrato é a diagonal da caixa; se suas preferências diferem, a curva se curva em direção ao canto do consumidor que valoriza mais o bem relativamente mais escasso.

### O núcleo da economia

O **núcleo** é um subconjunto da curva de contrato: inclui apenas as alocações Pareto-eficientes que são individualmente racionais, ou seja, que dão a cada consumidor utilidade pelo menos tão alta quanto a obtida com suas dotações iniciais:

\[
U_A(x_A) \geq U_A(\omega_A) \quad \text{e} \quad U_B(x_B) \geq U_B(\omega_B)
\label{eq:14.4} \tag{14.4} \]

O equilíbrio walrasiano pertence ao núcleo. Além disso, à medida que a economia é "replicada" (duplicando o número de consumidores de cada tipo), o núcleo se contrai, convergindo para o equilíbrio walrasiano no limite — este é o **Teorema do Limite do Núcleo** de Debreu e Scarf (1963).

A intuição por trás do Teorema do Limite do Núcleo merece ser desenvolvida com cuidado, pois ela conecta dois mundos aparentemente distintos: a barganha bilateral e os mercados competitivos. Em uma economia com apenas dois consumidores, o núcleo pode ser grande — há muitas alocações eficientes que ambos preferem às suas dotações. Isso significa que o resultado da troca depende fortemente do poder de barganha de cada agente. Agora, imagine que replicamos a economia: em vez de um consumidor do tipo A e um do tipo B, temos dois de cada tipo. As coalizões possíveis se multiplicam: agora, dois consumidores do tipo A podem se unir e oferecer a um consumidor do tipo B uma troca melhor do que a que o outro tipo B oferecia. Essa competição entre coalizões elimina alocações que, na economia com dois agentes, pertenciam ao núcleo. Ao replicar novamente — três de cada tipo, quatro, dez, cem — a competição se intensifica e o núcleo encolhe progressivamente. No limite, com infinitos agentes de cada tipo, o poder de barganha individual se dilui completamente: nenhum agente tem capacidade de influenciar os preços, e o único resultado que sobrevive no núcleo é o equilíbrio walrasiano.

Esse resultado tem um significado profundo: é a versão mais rigorosa da ideia de que a concorrência elimina o poder de mercado. Em economias grandes, com muitos agentes, o resultado de mercado (equilíbrio walrasiano) é o *único* resultado que nenhuma coalizão pode melhorar — é o único ponto do núcleo. Assim, a competição perfeita não é apenas uma hipótese simplificadora: é uma consequência emergente do grande número de participantes.

??? exercicio-resolvido "Exercício Resolvido 14.1 — Curva de contrato com Cobb-Douglas simétricas"
    **Enunciado:** Considere uma economia de troca pura com dois consumidores (A e B) e dois bens. As dotações são \(\boldsymbol{\omega}_A = (6, 4)\) e \(\boldsymbol{\omega}_B = (4, 6)\). As funções de utilidade são \(U_A = (x_1^A)^{1/2} (x_2^A)^{1/2}\) e \(U_B = (x_1^B)^{1/2} (x_2^B)^{1/2}\) (Cobb-Douglas com parâmetros iguais). Encontre a curva de contrato.

    **Dados:** \(\boldsymbol{\omega}_A = (6, 4)\), \(\boldsymbol{\omega}_B = (4, 6)\). Totais: \(\bar{x}_1 = 10\), \(\bar{x}_2 = 10\).

    **Resolução:**

    **Passo 1 — Taxas marginais de substituição**

    Para Cobb-Douglas \(U = x_1^{1/2} x_2^{1/2}\):

    \[
    TMS_A = \frac{\partial U_A / \partial x_1^A}{\partial U_A / \partial x_2^A} = \frac{(1/2)(x_2^A)^{1/2}(x_1^A)^{-1/2}}{(1/2)(x_1^A)^{1/2}(x_2^A)^{-1/2}} = \frac{x_2^A}{x_1^A}
    \]

    Analogamente: \(TMS_B = x_2^B / x_1^B\).

    **Passo 2 — Condição de eficiência**

    Na curva de contrato: \(TMS_A = TMS_B\):

    \[
    \frac{x_2^A}{x_1^A} = \frac{x_2^B}{x_1^B}
    \]

    **Passo 3 — Restrições de factibilidade**

    \(x_1^B = 10 - x_1^A\) e \(x_2^B = 10 - x_2^A\). Substituindo:

    \[
    \frac{x_2^A}{x_1^A} = \frac{10 - x_2^A}{10 - x_1^A}
    \]

    **Passo 4 — Resolver**

    \[
    x_2^A (10 - x_1^A) = x_1^A (10 - x_2^A) \implies 10 x_2^A - x_1^A x_2^A = 10 x_1^A - x_1^A x_2^A
    \]

    \[
    10 x_2^A = 10 x_1^A \implies x_2^A = x_1^A
    \]

    **Resultado:** A curva de contrato é a diagonal \(x_2^A = x_1^A\), para \(0 \leq x_1^A \leq 10\).

    **Interpretação econômica:** Quando os dois consumidores têm preferências idênticas (mesma função de utilidade Cobb-Douglas com parâmetros iguais), a curva de contrato é a diagonal da Caixa de Edgeworth. Isso faz sentido intuitivamente: como ambos valorizam os bens na mesma proporção, a eficiência exige que ambos recebam cestas com a mesma razão entre os bens. Ao longo da diagonal, a questão é puramente distributiva �� *quanto* cada um recebe, não *como* a composição difere. Se os parâmetros das Cobb-Douglas fossem diferentes, a curva se curvaria, refletindo as diferenças nas valorações relativas.

??? exercicio-resolvido "Exercício Resolvido 14.2 — Equilíbrio walrasiano na Caixa de Edgeworth"
    **Enunciado:** Considere uma economia de troca pura com dois consumidores (A e B) e dois bens. As dotações são \(\boldsymbol{\omega}_A = (8, 2)\) e \(\boldsymbol{\omega}_B = (2, 8)\). As funções de utilidade são \(U_A = x_1^A \cdot x_2^A\) e \(U_B = (x_1^B)^{1/3} \cdot (x_2^B)^{2/3}\). Encontre o equilíbrio walrasiano e verifique a eficiência de Pareto.

    **Dados:** \(\boldsymbol{\omega}_A = (8, 2)\), \(\boldsymbol{\omega}_B = (2, 8)\). Totais: \(\bar{x}_1 = 10\), \(\bar{x}_2 = 10\).

    **Resolução:**

    **Passo 1 — Demandas marshallianas**

    Normalizando \(p_2 = 1\) e denotando \(p = p_1\):

    *Consumidor A* (\(U_A = x_1 x_2\), Cobb-Douglas com \(\alpha = 1/2\)):

    \[
    x_1^A = \frac{I_A}{2p}, \qquad x_2^A = \frac{I_A}{2}, \qquad I_A = 8p + 2
    \]

    *Consumidor B* (\(U_B = x_1^{1/3} x_2^{2/3}\), Cobb-Douglas com \(\alpha = 1/3\)):

    \[
    x_1^B = \frac{I_B}{3p}, \qquad x_2^B = \frac{2I_B}{3}, \qquad I_B = 2p + 8
    \]

    **Passo 2 — Equilíbrio de mercado (bem 1)**

    \[
    \frac{8p + 2}{2p} + \frac{2p + 8}{3p} = 10
    \]

    Multiplicando por \(6p\):

    \[
    3(8p + 2) + 2(2p + 8) = 60p \implies 28p + 22 = 60p \implies p^* = \frac{22}{32} = \frac{11}{16}
    \]

    **Passo 3 — Alocações de equilíbrio**

    \[
    I_A = 8 \cdot \frac{11}{16} + 2 = \frac{120}{16} = \frac{15}{2}
    \]

    \[
    x_1^A = \frac{15/2}{2 \cdot 11/16} = \frac{15/2}{11/8} = \frac{60}{11} \approx 5{,}45, \qquad x_2^A = \frac{15}{4} = 3{,}75
    \]

    \[
    I_B = 2 \cdot \frac{11}{16} + 8 = \frac{150}{16} = \frac{75}{8}
    \]

    \[
    x_1^B = \frac{75/8}{3 \cdot 11/16} = \frac{75/8}{33/16} = \frac{50}{11} \approx 4{,}55, \qquad x_2^B = \frac{2 \cdot 75/8}{3} = \frac{25}{4} = 6{,}25
    \]

    Verificação: \(60/11 + 50/11 = 110/11 = 10\) e \(15/4 + 25/4 = 40/4 = 10\).

    **Passo 4 — Verificação da Lei de Walras**

    A preços arbitrários \(p = 1\): \(I_A = 10\), \(I_B = 10\).

    \[
    Z^1 = \frac{10}{2} + \frac{10}{3} - 10 = \frac{-5}{3}, \qquad Z^2 = \frac{10}{2} + \frac{20}{3} - 10 = \frac{5}{3}
    \]

    \[
    p_1 Z^1 + p_2 Z^2 = 1 \cdot \left(-\frac{5}{3}\right) + 1 \cdot \frac{5}{3} = 0 \;\checkmark
    \]

    **Passo 5 — Verificação da eficiência de Pareto**

    \[
    TMS_A = \frac{x_2^A}{x_1^A} = \frac{15/4}{60/11} = \frac{15 \cdot 11}{4 \cdot 60} = \frac{11}{16} = p^* \;\checkmark
    \]

    \[
    TMS_B = \frac{(1/3)\,x_2^B}{(2/3)\,x_1^B} = \frac{x_2^B}{2\,x_1^B} = \frac{25/4}{2 \cdot 50/11} = \frac{25 \cdot 11}{4 \cdot 100} = \frac{11}{16} = p^* \;\checkmark
    \]

    **Resultado:** \(p^* = 11/16\), \(\mathbf{x}_A^* = (60/11,\; 15/4)\), \(\mathbf{x}_B^* = (50/11,\; 25/4)\). O equilíbrio é Pareto-eficiente: \(TMS_A = TMS_B = p^*\).

    **Interpretação econômica:** A troca melhora ambos os agentes: A, que tinha mais do bem 1 do que do bem 2, vende parte de sua dotação do bem 1 e compra bem 2. B faz o oposto. O Primeiro Teorema do Bem-Estar garante que o resultado é eficiente — não há recomposição das cestas que beneficie um sem prejudicar o outro. Na analogia com o comércio internacional, A é como o Brasil (abundante em commodities) e B como a UE (abundante em manufaturas): a troca beneficia ambos.

<iframe src="../graficos/cap14/webr-equilibrio-walrasiano.html" title="WebR — Equilíbrio Walrasiano na Caixa de Edgeworth" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 14.1 — Equilíbrio walrasiano: das equações ao gráfico.** O código resolve o ER 14.2 completo em R: calcula o preço de equilíbrio, as alocações, verifica $TMS_A = TMS_B = p^*$ e testa a Lei de Walras a preços arbitrários. O gráfico mostra a função de excesso de demanda $Z^1(p)$ — onde ela cruza zero é o equilíbrio. Altere os parâmetros `aA` e `aB` e observe como o preço de equilíbrio se desloca.
</div>

---

## 14.4 Quem Produz o Quê: Fronteira de Possibilidades de Produção {#144}

A análise da Caixa de Edgeworth tratou de uma economia de troca pura — os bens já existem e a única questão é como distribuí-los. Mas em economias reais, os bens precisam ser produzidos, e a alocação de insumos entre setores produtivos é uma decisão tão importante quanto a distribuição de bens entre consumidores. Ao introduzir produção no modelo, surge uma nova dimensão de eficiência e um novo instrumento gráfico fundamental: a **fronteira de possibilidades de produção** (FPP).

### Eficiência na produção

Quando introduzimos produção na análise, precisamos considerar a eficiência na alocação de insumos entre setores. Com dois insumos (trabalho L e capital K) e dois bens, podemos construir uma segunda Caixa de Edgeworth para a produção. O locus de tangências entre as isoquantas dos dois setores forma a **curva de contrato na produção**:

\[
TMST_1^{LK} = TMST_2^{LK}
\label{eq:14.5} \tag{14.5} \]

Essa condição, descrita pela equação $\eqref{eq:14.5}$, é análoga à condição de eficiência na troca ($\eqref{eq:14.3}$), mas aplicada ao lado da produção. Quando as TMST são iguais entre os dois setores, não é possível realocar trabalho e capital entre eles de modo a aumentar a produção de um bem sem reduzir a do outro. Se as TMST diferem — digamos, o setor 1 usa relativamente muito trabalho e pouco capital em relação ao setor 2 —, seria possível transferir capital para o setor 1 e trabalho para o setor 2, aumentando a produção de ambos os bens. Essa é a essência da ineficiência na alocação de insumos.

### Fronteira de possibilidades de produção (FPP)

A curva de contrato na produção mapeia-se na **fronteira de possibilidades de produção** (FPP), que mostra as combinações máximas dos dois bens que a economia pode produzir dados seus recursos.

A inclinação da FPP é a **taxa marginal de transformação** (TMT):

\[
TMT = -\frac{dX_2}{dX_1} = \frac{CMg_1}{CMg_2}
\label{eq:14.6} \tag{14.6} \]

A TMT mede o custo de oportunidade social de produzir uma unidade adicional do bem 1, expresso em termos do bem 2 que deve ser sacrificado. A forma da FPP depende da tecnologia disponível. Se ambos os setores têm retornos constantes de escala e usam os insumos nas mesmas proporções, a FPP é uma reta �� o custo de oportunidade é constante. Mas quando os setores diferem em intensidade fatorial (por exemplo, o setor 1 é trabalho-intensivo e o setor 2 é capital-intensivo), a FPP é côncava em relação à origem — o custo de oportunidade é crescente. Essa concavidade reflete o fato de que, à medida que a economia se especializa em um bem, ela é forçada a realocar insumos cada vez menos adequados para aquele setor, elevando progressivamente o custo marginal. Quanto mais diferentes forem as tecnologias dos dois setores, mais pronunciada será a curvatura da FPP.

A relação entre a forma da FPP e a **vantagem comparativa** é direta. Dois países com FPPs diferentes terão custos de oportunidade diferentes, o que cria incentivos para o comércio. O país com menor TMT para o bem 1 tem vantagem comparativa nesse bem e deveria se especializar nele. Essa é a conexão entre a teoria de equilíbrio geral e a teoria do comércio internacional que exploraremos mais adiante.

### Eficiência no mix de produtos

A eficiência econômica plena requer que a TMT iguale a TMS comum aos consumidores:

\[
TMT = TMS_A^{12} = TMS_B^{12}
\label{eq:14.7} \tag{14.7} \]

Isso garante que a combinação de bens produzida é exatamente aquela que os consumidores desejam, dados os recursos disponíveis. Se, por exemplo, os consumidores estivessem dispostos a trocar 3 unidades do bem 2 por 1 do bem 1 (TMS = 3), mas a economia só precisasse sacrificar 1 unidade do bem 2 para produzir 1 do bem 1 (TMT = 1), seria eficiente produzir mais do bem 1 — pois o benef��cio para os consumidores superaria o custo de oportunidade. A igualdade TMT = TMS elimina essas oportunidades de melhoria.

Visualize a fronteira de possibilidades de produção e a taxa marginal de transformação (TMT). Ajuste a dotação de recursos para expandir ou contrair a FPP, e mova o ponto ao longo da fronteira para observar como o custo de oportunidade (TMT) varia. Pontos interiores são ineficientes; pontos exteriores são infactíveis.

<iframe src="../graficos/cap14/fpp.html" title="Figura 14.2 — Fronteira de possibilidades de produção (FPP)" class="graph-iframe" style="height:620px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 14.2 — Fronteira de possibilidades de produção (FPP).** Ajuste a dotação de recursos e mova o ponto ao longo da fronteira para observar como o custo de oportunidade (TMT) varia.
</div>

---

## 14.5 Três Pe��as do Quebra-Cabeça: Condições de Eficiência de Pareto {#145}

Eficiência na troca, eficiência na produção, eficiência no mix de produtos — três peças de um quebra-cabeça que só funciona quando encaixam ao mesmo tempo. As seções anteriores identificaram cada peça separadamente. A eficiência de Pareto plena requer que todas as três sejam satisfeitas simultaneamente. A [Tabela 14.1](#tabela-14-1) sintetiza as condições marginais correspondentes em uma economia com dois consumidores (A, B), dois bens (1, 2) e dois insumos (L, K).

<a id="tabela-14-1"></a>

| Tipo de eficiência | Condição marginal | Interpretação |
|---|---|---|
| **Eficiência na troca** | \(TMS_A^{12} = TMS_B^{12}\) | Os consumidores valorizam os bens na mesma proporção marginal; não há trocas mutuamente benéficas. |
| **Eficiência na produção** | \(TMST_1^{LK} = TMST_2^{LK}\) | Os insumos são alocados entre setores de modo que é impossível aumentar a produção de um bem sem reduzir a do outro. |
| **Eficiência no mix de produtos** | \(TMT^{12} = TMS_A^{12} = TMS_B^{12}\) | A combinação de bens produzida corresponde ��s preferências dos consumidores; o custo de oportunidade social iguala a valoração marginal. |

<div class="caption-obj" markdown>
**Tabela 14.1 — Condições de eficiência de Pareto.**
</div>

Cada uma dessas três condi��ões tem uma interpretação intuitiva clara. A eficiência na troca diz que os consumidores exauriram todos os ganhos de comércio entre si — como dois colegas que já trocaram tudo o que fazia sentido trocar. A eficiência na produção diz que os insumos estão no lugar certo — não há como reorganizar o chão de fábrica para produzir mais de um bem sem produzir menos de outro. A eficiência no mix de produtos conecta as duas: garante que o que a economia produz é o que as pessoas querem consumir. É essa última condição que exige a comunicação entre consumidores e produtores — e é o sistema de preços que realiza essa comunicação.

Para ilustrar a violação de cada condição, considere três exemplos. Primeiro, se dois consumidores têm TMS diferentes (digamos, A estaria disposto a trocar 2 unidades de café por 1 de açúcar, enquanto B trocaria 1 de café por 1 de açúcar), uma troca entre eles — A cede 1,5 cafés a B em troca de 1 açúcar — deixaria ambos melhores. Segundo, se uma fábrica de sapatos usa muitas máquinas e pouco trabalho enquanto uma fábrica de roupas usa muito trabalho e poucas máquinas, e suas TMST diferem, transferir algum capital da fábrica de sapatos para a de roupas e trabalho na direção oposta aumentaria a produção total. Terceiro, se os consumidores valorizam uma camiseta adicional em 3 quilos de arroz (TMS = 3) mas o custo de oportunidade de produzir uma camiseta é apenas 1 quilo de arroz (TMT = 1), a economia deveria produzir mais camisetas — o benefício excede o custo.

!!! note "Concorrência perfeita e eficiência"
    Em concorrência perfeita, o sistema de preços descentraliza automaticamente todas essas condições. Os consumidores igualam suas TMS à razão de preços (\(TMS = p_1/p_2\)); as firmas igualam suas TMST à razão de preços dos insumos (\(TMST = w/r\)); e a maximização de lucro garante que \(CMg_1/CMg_2 = p_1/p_2\). Portanto, \(TMS = TMT\).

A transição das condições de eficiência para os teoremas do bem-estar é natural: uma vez que sabemos *quais* são as condições necessárias para a eficiência de Pareto, a próxima pergunta é se o mercado competitivo as satisfaz automaticamente. A resposta é afirmativa — e espetacularmente geral — como veremos nos dois teoremas fundamentais a seguir.

??? exercicio-resolvido "Exercício Resolvido 14.3 — Eficiência de Pareto em equilíbrio competitivo (modelo 2x2x2)"
    **Enunciado:** Considere uma economia com dois consumidores (A e B), dois bens (1 e 2) e dois insumos (trabalho L e capital K). Em equilíbrio competitivo, os preços são \(p_1, p_2\) (bens) e \(w, r\) (insumos). Mostre que as três condições de eficiência de Pareto — eficiência na troca, na produção e no mix de produtos — são simultaneamente satisfeitas.

    **Resolução:**

    **Passo 1 — Eficiência na troca**

    Cada consumidor maximiza utilidade sujeito à sua restrição orçamentária. A condição de primeira ordem iguala a TMS à razão de preços dos bens:

    \[
    TMS_A^{12} = \frac{p_1}{p_2} = TMS_B^{12}
    \]

    Como ambos enfrentam os mesmos preços, \(TMS_A^{12} = TMS_B^{12}\).

    **Passo 2 — Eficiência na produção**

    Cada firma minimiza custo para um dado nível de produção. A condição de primeira ordem iguala a TMST à razão de preços dos insumos:

    \[
    TMST_1^{LK} = \frac{w}{r} = TMST_2^{LK}
    \]

    Como ambas as firmas enfrentam os mesmos preços de insumos, \(TMST_1^{LK} = TMST_2^{LK}\).

    **Passo 3 — Eficiência no mix de produtos**

    A maximização de lucro de cada firma implica \(p_k = CMg_k\) (preço igual ao custo marginal). Portanto:

    \[
    TMT^{12} = \frac{CMg_1}{CMg_2} = \frac{p_1}{p_2} = TMS_A^{12} = TMS_B^{12}
    \]

    **Resultado:** Em equilíbrio competitivo, \(TMS_A = TMS_B = p_1/p_2\), \(TMST_1 = TMST_2 = w/r\), e \(TMT = TMS = p_1/p_2\). Todas as três condições de eficiência são satisfeitas simultaneamente.

    **Interpretação econômica:** O sistema de preços atua como um mecanismo de coordenação descentralizado: os preços dos bens alinham as decisões de consumo (eficiência na troca), os preços dos insumos alinham as decisões de produção (eficiência na produção), e a relação entre ambos alinha o que se produz ao que se deseja consumir (eficiência no mix de produtos). Não é necessário um planejador central — os preços transmitem toda a informação necessária. Esse é o resultado que o Primeiro Teorema do Bem-Estar formaliza rigorosamente.
