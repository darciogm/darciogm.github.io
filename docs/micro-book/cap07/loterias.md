# 7.1–7.2 Loterias e Utilidade Esperada

## 7.1 Cara ou Coroa com Dinheiro Real: Loterias e Valor Esperado

O primeiro passo é surpreendentemente simples: toda decisão sob incerteza é uma **loteria**. Comprar ações da Petrobras? Loteria (pode subir ou cair). Abrir uma padaria? Loteria (pode dar certo ou quebrar). Até atravessar a rua sem olhar é uma loteria — com probabilidades que você prefere não calcular. Essa metáfora não é apenas poética: é literal. O conceito matemático de loteria é geral o suficiente para representar qualquer situação cujo resultado depende do acaso.

!!! definition "Loteria simples"
    Uma **loteria simples** é uma distribuição de probabilidade sobre um conjunto finito de resultados. Formalmente, uma loteria \(L\) é descrita por:

    \[
    L = \{(x_1, p_1), (x_2, p_2), \ldots, (x_n, p_n)\}
    \]

    onde \(x_i \in \mathbb{R}\) são os possíveis resultados (payoffs monetários) e \(p_i \geq 0\) são as probabilidades associadas, com \(\sum_{i=1}^{n} p_i = 1\).

O **valor esperado** de uma loteria é a média ponderada dos resultados pelas respectivas probabilidades:

\[
E[L] = \sum_{i=1}^{n} p_i \, x_i
\label{eq:7.1} \tag{7.1}
\]

!!! example "Exemplo numérico"
    Considere a loteria \(L = \{(100, 0{,}5); (0, 0{,}5)\}\). O valor esperado é:

    \[
    E[L] = 0{,}5 \times 100 + 0{,}5 \times 0 = 50
    \]

    Um agente que aceita ou rejeita essa loteria em troca de receber \(R\$ 50\) com certeza revela sua atitude em relação ao risco.

Uma **loteria composta** é uma loteria cujos resultados são, eles mesmos, loterias. Sob o axioma de redução de loterias compostas, toda loteria composta pode ser reduzida a uma loteria simples equivalente pela aplicação da regra de probabilidade total. Essa propriedade é conveniente porque nos permite trabalhar apenas com loterias simples sem perda de generalidade.

O valor esperado é um critério natural de avaliação — ele nos diz, em média, quanto a loteria "vale". Mas será que ele é suficiente para guiar as decisões de agentes reais? Um exemplo clássico sugere que não.

Antes de apresentá-lo, vale reforçar a conexão com a Seção 2.12: o valor esperado de uma loteria é exatamente o valor esperado de uma variável aleatória discreta, e a variância da loteria mede a dispersão dos resultados em torno dessa média. Ambos esses momentos são ferramentas que reaparecerão ao longo do capítulo — o valor esperado como medida de tendência central do risco, a variância como indicador de sua magnitude. A novidade da microeconomia da incerteza é que o agente não avalia a loteria pelos seus momentos estatísticos em si, mas pela utilidade que extrai de cada resultado possível.

### 7.1.1 O Paradoxo de São Petersburgo

O valor esperado, por si só, não é suficiente para descrever o comportamento dos agentes diante do risco. O célebre **Paradoxo de São Petersburgo**, proposto por Nicolau Bernoulli em 1713, ilustra essa limitação. Considere um jogo em que uma moeda justa é lançada repetidamente até sair cara. Se a cara aparece no \(n\)-ésimo lançamento, o jogador recebe \(2^n\) reais. O valor esperado desse jogo é:

\[
E[L] = \sum_{n=1}^{\infty} \frac{1}{2^n} \cdot 2^n = \sum_{n=1}^{\infty} 1 = \infty
\label{eq:7.2} \tag{7.2}
\]

No entanto, nenhuma pessoa racional pagaria uma quantia arbitrariamente alta para participar desse jogo. O valor esperado infinito da equação $\eqref{eq:7.2}$ não se traduz em disposição a pagar infinita. Daniel Bernoulli (1738) propôs que os agentes avaliam os resultados não pelo seu valor monetário, mas pela **utilidade** que deles extraem — inaugurando a ideia de utilidade esperada. Essa intuição genial — a de que o que importa não é o dinheiro em si, mas a satisfação que ele proporciona — é o ponto de partida para a construção axiomática que veremos a seguir.

O paradoxo de São Petersburgo continua relevante dois séculos e meio depois de sua formulação. Ele demonstra que o valor esperado, apesar de ser matematicamente bem definido, captura apenas uma dimensão da incerteza: a tendência central. A variância, a assimetria e, sobretudo, a curvatura das preferências do agente — tudo isso é invisível para o critério do valor esperado puro. A solução de Bernoulli, aparentemente simples, abriu caminho para a teoria moderna da decisão: em vez de maximizar o valor esperado monetário, os agentes maximizam o valor esperado de sua *utilidade* — uma função que transforma dinheiro em satisfação de maneira não linear. Esse salto conceitual, de \(E[L]\) para \(E[u(L)]\), é toda a diferença entre o Capítulo 2 e o Capítulo 7.

É útil notar também que o paradoxo tem implicações práticas para os mercados financeiros brasileiros. Um investidor que avaliasse ativos exclusivamente pelo retorno esperado deveria concentrar toda a sua riqueza no ativo de maior retorno esperado — jamais diversificaria. O fato de que investidores reais diversificam, contratam seguros e aceitam retornos menores em troca de estabilidade é evidência diária de que o critério do valor esperado não governa as decisões humanas. A teoria que desenvolvemos a seguir pretende explicar exatamente esse comportamento.

---

## 7.2 O Axioma do Cassino: Utilidade Esperada de Von Neumann–Morgenstern

O Paradoxo de São Petersburgo destruiu o valor esperado como critério de decisão. Precisamos de algo melhor — algo que capture não só "quanto, em média" mas "quanto *vale para mim*". A solução veio de um lugar inesperado: um livro de teoria dos jogos. Em 1944, o matemático John von Neumann e o economista Oskar Morgenstern mostraram que, se o agente obedece a quatro regras de coerência (axiomas), suas preferências sobre loterias podem ser representadas por uma função que pondera utilidades — não dinheiro — pelas probabilidades. A ideia é devastadoramente simples: em vez de calcular \(E[\text{dinheiro}]\), calcule \(E[\text{felicidade}]\). Essa mudança de uma letra — de \(x\) para \(u(x)\) — é toda a diferença.

Quais são essas quatro regras de coerência? São exigências surpreendentemente modestas — tão razoáveis que, ao lê-las, você pensará 'óbvio'. Mas cada uma tem um papel preciso, e abandonar qualquer uma delas faz a teoria desmoronar.

!!! definition "Axiomas de Von Neumann–Morgenstern"
    Sejam \(L_1, L_2, L_3\) loterias no conjunto \(\mathcal{L}\). As preferências \(\succsim\) satisfazem os axiomas VNM se:

    1. **Completude**: Para quaisquer \(L_1, L_2 \in \mathcal{L}\), vale \(L_1 \succsim L_2\) ou \(L_2 \succsim L_1\) (ou ambos).

    2. **Transitividade**: Se \(L_1 \succsim L_2\) e \(L_2 \succsim L_3\), então \(L_1 \succsim L_3\).

    3. **Continuidade (Arquimediana)**: Se \(L_1 \succ L_2 \succ L_3\), então existe \(\alpha \in (0,1)\) tal que \(L_2 \sim \alpha L_1 + (1-\alpha) L_3\).

    4. **Independência**: Se \(L_1 \succsim L_2\), então para todo \(L_3\) e todo \(\alpha \in (0,1)\): \(\alpha L_1 + (1-\alpha)L_3 \succsim \alpha L_2 + (1-\alpha) L_3\).

!!! theorem "Teorema da Utilidade Esperada"
    Se as preferências \(\succsim\) sobre o espaço de loterias \(\mathcal{L}\) satisfazem os axiomas de completude, transitividade, continuidade e independência, então existe uma função \(u: \mathbb{R} \to \mathbb{R}\) tal que, para quaisquer loterias \(L_1\) e \(L_2\):

    \[
    L_1 \succsim L_2 \iff E[u(L_1)] \geq E[u(L_2)]
    \label{eq:7.3} \tag{7.3}
    \]

    onde \(E[u(L)] = \sum_{i=1}^{n} p_i \, u(x_i)\).

    Além disso, \(u\) é única a menos de transformações afins positivas: se \(v(x) = a \cdot u(x) + b\), com \(a > 0\), então \(v\) representa as mesmas preferências.

O axioma mais controverso é o de **independência**.[^spanish-inquisition-vnm] Ele afirma, em essência, que se você prefere a loteria A à loteria B, então misturar ambas com uma mesma terceira loteria não deveria alterar essa preferência — a "adição" de uma alternativa irrelevante não contamina a comparação original. O **Paradoxo de Allais** (1953) demonstra que, em certas situações, agentes reais violam sistematicamente esse axioma, o que motivou o desenvolvimento de teorias alternativas como a **teoria dos prospectos** de Kahneman e Tversky (1979), que estudaremos no Capítulo 8.

O paradoxo de Allais pode ser apresentado de forma direta. Considere duas situações de escolha:

- **Situação I**: Escolha entre A (R$ 1 milhão com certeza) e B (10% de chance de R$ 5 milhões, 89% de chance de R$ 1 milhão, 1% de chance de nada).
- **Situação II**: Escolha entre C (11% de chance de R$ 1 milhão, 89% de chance de nada) e D (10% de chance de R$ 5 milhões, 90% de chance de nada).

Experimentalmente, a maioria das pessoas escolhe A na Situação I e D na Situação II. Mas essa combinação viola o axioma da independência: se subtrairmos mentalmente uma "camada" de 89% de chance de R$ 1 milhão de ambas as opções da Situação I, chegamos exatamente às opções da Situação II — e quem prefere A na Situação I deveria preferir C na Situação II. A violação sistêmica desse padrão sugere que agentes reais não tratam as probabilidades de forma linear, especialmente quando resultados certos estão em jogo (o chamado "efeito certeza"). Kahneman e Tversky (1979) documentaram extensamente essas violações e propuseram a teoria dos prospectos como alternativa descritiva à utilidade VNM.

Apesar dessas críticas comportamentais, a teoria VNM permanece o padrão normativo da microeconomia e o ponto de partida obrigatório para qualquer extensão. Compreender onde ela falha exige primeiro compreender onde ela acerta — e é isso que fazemos nas seções seguintes.

!!! idea "Intuição Econômica"
    **Em uma frase:** A utilidade esperada diz que pessoas racionais avaliam apostas pela "felicidade média" que elas proporcionam, não pelo dinheiro médio.

    **Pense assim:** Imagine que você concorre a um sorteio de R$ 10.000 com 50% de chance. O valor esperado é R$ 5.000, mas a alegria que R$ 10.000 trazem não é o dobro da alegria de R$ 5.000 — assim como o segundo prato de comida no rodízio nunca é tão bom quanto o primeiro.

    **Por que isso importa:** Toda a regulação de seguros, previdência e mercados financeiros no Brasil se apoia na ideia de que as pessoas transformam dinheiro em bem-estar de forma não linear.

!!! idea "Intuição Econômica"
    **A utilidade VNM é cardinal — não ordinal.**

    No Capítulo 3, a utilidade era puramente *ordinal*: qualquer transformação crescente da função de utilidade representava as mesmas preferências. Se \(u(x) = x^2\) e \(v(x) = e^x\) ordenam os cestos de forma idêntica, são equivalentes para a teoria do consumidor determinística. Isso porque o que importava era apenas a *direção* das preferências, nunca a magnitude.

    Aqui, a situação é radicalmente diferente. A utilidade VNM é única a menos de transformações **afins positivas**: \(v(x) = a \cdot u(x) + b\) (com \(a > 0\)) representa as mesmas preferências, mas \(v(x) = [u(x)]^2\) já não representa — mesmo que seja uma transformação crescente. Por quê? Porque as probabilidades entram de forma *linear* no cálculo da utilidade esperada. Quando escrevemos \(E[u(L)] = p_1 u(x_1) + p_2 u(x_2)\), a estrutura aritmética da média ponderada fixa a escala da função de utilidade de uma maneira que transformações não afins destroem.

    **Implicação prática:** Comparar as funções de utilidade de dois agentes faz sentido — dizer que o agente A tem ARA mais alta que o agente B é uma afirmação invariante à classe de transformações afins. Já perguntar "quem tem mais utilidade no estado 1?" não faz sentido sem fixar a normalização. A cardinalidade da utilidade VNM é, portanto, uma propriedade *relacional* (entre loterias e probabilidades), não uma afirmação sobre o nível absoluto de bem-estar.

!!! box-brasil "Box Brasil 7.2 — A Mega-Sena e o paradoxo da busca por risco: por que 100 milhões de brasileiros jogam na loteria?"

    Segundo a Caixa Econômica Federal, mais de 100 milhões de brasileiros apostam regularmente em loterias. Em 2023, as loterias da Caixa arrecadaram R$ 23 bilhões — receita que financia programas sociais, cultura e esporte. Mas a teoria VNM tem um problema com isso: se os agentes são avessos ao risco, *não deveriam* jogar.

    **Os números da Mega-Sena:**

    - Probabilidade de acertar as 6 dezenas: 1 em 50.063.860
    - Aposta mínima: R$ 5,00
    - Prêmio médio acumulado: ~R$ 50 milhões
    - Valor esperado da aposta: \(E = \frac{50.000.000}{50.063.860} \approx \text{R\$ } 1{,}00\)
    - **Retorno esperado por real apostado: R$ 0,20** (perda esperada de 80%)

    Um agente avesso ao risco com utilidade côncava *jamais* compraria esse bilhete — o valor esperado é muito inferior ao custo. Então por que jogam?

    **Três explicações microeconômicas:**

    1. **Friedman-Savage (1948):** A função de utilidade pode ser côncava para riquezas próximas ao nível atual (aversão ao risco para perdas pequenas) mas *convexa* para ganhos muito grandes (busca por risco para a "chance de mudar de vida"). A Mega-Sena ativa exatamente a porção convexa.
    2. **Teoria do Prospecto (Cap 8):** Kahneman e Tversky mostraram que agentes *sobre-ponderam* probabilidades pequenas. Se \(\pi(p)\) é a função de ponderação, então \(\pi(1/50.000.000) \gg 1/50.000.000\) — o cérebro trata "chance minúscula" como "chance razoável".
    3. **Utilidade do sonho:** A aposta pode gerar utilidade *antes* do resultado — o prazer de imaginar o que faria com R$ 50 milhões. Essa "utilidade de antecipação" (Loewenstein, 1987) não aparece no modelo VNM padrão.

    **Conexão com a teoria:** A loteria é o teste empírico mais acessível da teoria VNM. Sua ubiquidade no Brasil — de faxineiras a executivos — sugere que a aversão ao risco não é um traço monolítico, e que o Capítulo 8 (economia comportamental) oferece explicações mais realistas do que o modelo canônico para certas classes de decisão.

[^spanish-inquisition-vnm]: "Nobody expects the Spanish Inquisition!" — e ninguém espera que o axioma da independência falhe. Mas ele falha, sistematicamente, como Allais demonstrou em 1953. O efeito certeza é a Inquisição Espanhola da teoria VNM: aparece quando menos se espera e derruba hipóteses que pareciam sólidas.
