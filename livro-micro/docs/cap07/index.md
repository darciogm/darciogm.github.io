# Capítulo 7 — Decidindo no Escuro: A Economia da Incerteza

## Introdução

A maior parte das decisões econômicas relevantes envolve algum grau de incerteza. Quando um agricultor decide o que plantar, quando um investidor aloca recursos entre ativos financeiros ou quando um consumidor contrata um plano de saúde, nenhum deles conhece com precisão os resultados futuros de suas escolhas. A microeconomia da incerteza fornece o arcabouço analítico para modelar essas decisões, permitindo compreender como agentes racionais avaliam alternativas cujos resultados dependem de estados do mundo que ainda não se materializaram.

Este capítulo desenvolve a teoria da escolha sob incerteza a partir do conceito de **loteria**, passando pela formulação axiomática da **utilidade esperada** de Von Neumann e Morgenstern, pela caracterização da **aversão ao risco** e suas medidas quantitativas, até os mecanismos institucionais que permitem reduzir ou redistribuir riscos. Ao final, introduzimos a abordagem de **estado-preferência** e oferecemos uma visão preliminar dos problemas de **informação assimétrica** que serão aprofundados em capítulos posteriores.

---

## 7.1 Loterias e Valor Esperado

!!! definition "Loteria simples"
    Uma **loteria simples** é uma distribuição de probabilidade sobre um conjunto finito de resultados. Formalmente, uma loteria \(L\) é descrita por:

    \[
    L = \{(x_1, p_1), (x_2, p_2), \ldots, (x_n, p_n)\}
    \]

    onde \(x_i \in \mathbb{R}\) são os possíveis resultados (payoffs monetários) e \(p_i \geq 0\) são as probabilidades associadas, com \(\sum_{i=1}^{n} p_i = 1\).

O **valor esperado** de uma loteria é a média ponderada dos resultados pelas respectivas probabilidades:

\[
E[L] = \sum_{i=1}^{n} p_i \, x_i
\]

!!! example "Exemplo numérico"
    Considere a loteria \(L = \{(100, 0{,}5); (0, 0{,}5)\}\). O valor esperado é:

    \[
    E[L] = 0{,}5 \times 100 + 0{,}5 \times 0 = 50
    \]

    Um agente que aceita ou rejeita essa loteria em troca de receber \(R\$ 50\) com certeza revela sua atitude em relação ao risco.

Uma **loteria composta** é uma loteria cujos resultados são, eles mesmos, loterias. Sob o axioma de redução de loterias compostas, toda loteria composta pode ser reduzida a uma loteria simples equivalente pela aplicação da regra de probabilidade total.

### O Paradoxo de São Petersburgo

O valor esperado, por si só, não é suficiente para descrever o comportamento dos agentes diante do risco. O célebre **Paradoxo de São Petersburgo**, proposto por Nicolau Bernoulli em 1713, ilustra essa limitação. Considere um jogo em que uma moeda justa é lançada repetidamente até sair cara. Se a cara aparece no \(n\)-ésimo lançamento, o jogador recebe \(2^n\) reais. O valor esperado desse jogo é:

\[
E[L] = \sum_{n=1}^{\infty} \frac{1}{2^n} \cdot 2^n = \sum_{n=1}^{\infty} 1 = \infty
\]

No entanto, nenhuma pessoa racional pagaria uma quantia arbitrariamente alta para participar desse jogo. Daniel Bernoulli (1738) propôs que os agentes avaliam os resultados não pelo seu valor monetário, mas pela **utilidade** que deles extraem — inaugurando a ideia de utilidade esperada.

---

## 7.2 Hipótese da Utilidade Esperada (Von Neumann–Morgenstern)

A formalização moderna da teoria da utilidade esperada foi apresentada por John von Neumann e Oskar Morgenstern em 1944. Ela estabelece condições sob as quais as preferências de um agente sobre loterias podem ser representadas por uma função de utilidade com propriedade de linearidade nas probabilidades.

!!! definition "Axiomas de Von Neumann–Morgenstern"
    Sejam \(L_1, L_2, L_3\) loterias no conjunto \(\mathcal{L}\). As preferências \(\succsim\) satisfazem os axiomas VNM se:

    1. **Completude**: Para quaisquer \(L_1, L_2 \in \mathcal{L}\), vale \(L_1 \succsim L_2\) ou \(L_2 \succsim L_1\) (ou ambos).

    2. **Transitividade**: Se \(L_1 \succsim L_2\) e \(L_2 \succsim L_3\), então \(L_1 \succsim L_3\).

    3. **Continuidade (Arquimediana)**: Se \(L_1 \succ L_2 \succ L_3\), então existe \(\alpha \in (0,1)\) tal que \(L_2 \sim \alpha L_1 + (1-\alpha) L_3\).

    4. **Independência**: Se \(L_1 \succsim L_2\), então para todo \(L_3\) e todo \(\alpha \in (0,1)\): \(\alpha L_1 + (1-\alpha)L_3 \succsim \alpha L_2 + (1-\alpha) L_3\).

!!! abstract "Teorema da Utilidade Esperada"
    Se as preferências \(\succsim\) sobre o espaço de loterias \(\mathcal{L}\) satisfazem os axiomas de completude, transitividade, continuidade e independência, então existe uma função \(u: \mathbb{R} \to \mathbb{R}\) tal que, para quaisquer loterias \(L_1\) e \(L_2\):

    \[
    L_1 \succsim L_2 \iff E[u(L_1)] \geq E[u(L_2)]
    \]

    onde \(E[u(L)] = \sum_{i=1}^{n} p_i \, u(x_i)\).

    Além disso, \(u\) é única a menos de transformações afins positivas: se \(v(x) = a \cdot u(x) + b\), com \(a > 0\), então \(v\) representa as mesmas preferências.

O axioma mais controverso é o de **independência**. O **Paradoxo de Allais** (1953) demonstra que, em certas situações, agentes reais violam sistematicamente esse axioma, o que motivou o desenvolvimento de teorias alternativas como a **teoria dos prospectos** de Kahneman e Tversky (1979).

---

## 7.3 Aversão ao Risco

!!! definition "Classificação de atitudes frente ao risco"
    Seja \(u\) uma função de utilidade VNM. Um agente é:

    - **Avesso ao risco** se, para toda loteria \(L\): \(u(E[L]) > E[u(L)]\).
    - **Neutro ao risco** se, para toda loteria \(L\): \(u(E[L]) = E[u(L)]\).
    - **Propenso ao risco** se, para toda loteria \(L\): \(u(E[L]) < E[u(L)]\).

A aversão ao risco está intimamente ligada à **concavidade** da função de utilidade. Pela **desigualdade de Jensen**, se \(u\) é estritamente côncava, então para qualquer variável aleatória \(\tilde{x}\) não degenerada:

\[
u(E[\tilde{x}]) > E[u(\tilde{x})]
\]

Intuitivamente, o agente avesso ao risco prefere receber o valor esperado de uma loteria com certeza a participar da loteria. A curvatura de \(u\) captura a intensidade dessa preferência: quanto mais côncava a função, maior a aversão ao risco.

Graficamente, a aversão ao risco se manifesta pelo fato de que a corda ligando dois pontos na curva de utilidade fica **abaixo** da própria curva — ou seja, a utilidade esperada da loteria (ponto na corda) é inferior à utilidade do valor esperado (ponto na curva).

<figure markdown="span">
  <iframe src="../graficos/cap07/aversao-risco.html" width="100%" height="520" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 7.1</strong> — Aversao ao risco e funcao de utilidade. Arraste os pontos \(W_1\) e \(W_2\), ajuste a probabilidade \(\pi\) e alterne entre agente avesso, neutro e propenso ao risco. A area sombreada indica o premio de risco.</figcaption>
</figure>

---

## 7.4 Medidas de Aversão ao Risco (Arrow-Pratt)

Para comparar a aversão ao risco entre agentes ou ao longo de diferentes níveis de riqueza, Kenneth Arrow e John Pratt desenvolveram medidas locais baseadas na curvatura da função de utilidade.

!!! definition "Coeficiente de aversão absoluta ao risco (ARA)"
    O coeficiente de aversão absoluta ao risco de Arrow-Pratt é definido como:

    \[
    A(W) = -\frac{u''(W)}{u'(W)}
    \]

    onde \(W\) é o nível de riqueza do agente.

!!! definition "Coeficiente de aversão relativa ao risco (RRA)"
    O coeficiente de aversão relativa ao risco é definido como:

    \[
    R(W) = -\frac{W \cdot u''(W)}{u'(W)} = W \cdot A(W)
    \]

Essas medidas possuem interpretação direta: \(A(W)\) mede a aversão ao risco para apostas de magnitude absoluta fixa, enquanto \(R(W)\) mede a aversão ao risco para apostas proporcionais à riqueza.

### Classes importantes de funções de utilidade

| Classe | Função \(u(W)\) | \(A(W)\) | \(R(W)\) | Propriedade |
|:-------|:----------------|:---------|:---------|:------------|
| CARA (Aversão Absoluta Constante) | \(-e^{-aW}\), \(a > 0\) | \(a\) (constante) | \(aW\) (crescente) | A atitude frente a apostas de valor fixo não muda com a riqueza |
| CRRA (Aversão Relativa Constante) | \(\frac{W^{1-\gamma}}{1-\gamma}\), \(\gamma > 0, \gamma \neq 1\) | \(\frac{\gamma}{W}\) (decrescente) | \(\gamma\) (constante) | A atitude frente a apostas proporcionais não muda com a riqueza |
| CRRA (caso log) | \(\ln(W)\) | \(\frac{1}{W}\) (decrescente) | \(1\) (constante) | Caso limite quando \(\gamma \to 1\) |
| DARA (Aversão Absoluta Decrescente) | \(\ln(W)\), \(\frac{W^{1-\gamma}}{1-\gamma}\) | Decrescente em \(W\) | Depende da forma | Agentes mais ricos aceitam mais risco absoluto |
| Quadrática | \(W - bW^2\), \(b > 0\) | \(\frac{2b}{1-2bW}\) (crescente) | \(\frac{2bW}{1-2bW}\) (crescente) | IARA — propriedade pouco realista |

!!! tip "DARA como propriedade desejável"
    A evidência empírica sugere fortemente que a aversão absoluta ao risco é **decrescente** na riqueza (DARA): indivíduos mais ricos estão dispostos a aceitar apostas de valor fixo que indivíduos mais pobres recusariam. A função de utilidade quadrática, embora matematicamente conveniente, viola essa propriedade (apresenta IARA) e possui a limitação adicional de que a utilidade marginal se torna negativa para riquezas suficientemente altas.

---

## 7.5 Prêmio de Risco e Equivalente de Certeza

!!! definition "Equivalente de certeza e prêmio de risco"
    Seja \(\tilde{W} = W + \tilde{\varepsilon}\) a riqueza aleatória, onde \(\tilde{\varepsilon}\) é um risco justo (isto é, \(E[\tilde{\varepsilon}] = 0\)) com variância \(\sigma^2\).

    - O **equivalente de certeza** \(W_{EC}\) é o valor certo que proporciona a mesma utilidade esperada da loteria:

    \[
    u(W_{EC}) = E[u(\tilde{W})]
    \]

    - O **prêmio de risco** \(\pi\) é a quantia máxima que o agente pagaria para eliminar o risco:

    \[
    \pi = E[\tilde{W}] - W_{EC} = W - W_{EC}
    \]

    Para um agente avesso ao risco, \(\pi > 0\); para um neutro, \(\pi = 0\).

### Aproximação de Arrow-Pratt para o prêmio de risco

!!! proof "Demonstração: Derivação do prêmio de risco de Arrow-Pratt"
    **Objetivo**: Mostrar que, para riscos pequenos, o prêmio de risco é aproximadamente:

    \[
    \pi \approx \frac{1}{2} A(W) \sigma^2
    \]

    **Demonstração**:

    Considere a riqueza aleatória \(\tilde{W} = W + \tilde{\varepsilon}\), onde \(E[\tilde{\varepsilon}] = 0\) e \(\text{Var}(\tilde{\varepsilon}) = \sigma^2\).

    **Passo 1**: Expanda \(u(W + \tilde{\varepsilon})\) em série de Taylor de segunda ordem em torno de \(W\):

    \[
    u(W + \tilde{\varepsilon}) \approx u(W) + u'(W)\tilde{\varepsilon} + \frac{1}{2}u''(W)\tilde{\varepsilon}^2
    \]

    **Passo 2**: Tome o valor esperado de ambos os lados:

    \[
    E[u(W + \tilde{\varepsilon})] \approx u(W) + u'(W) \underbrace{E[\tilde{\varepsilon}]}_{=\,0} + \frac{1}{2}u''(W) \underbrace{E[\tilde{\varepsilon}^2]}_{=\,\sigma^2}
    \]

    \[
    E[u(\tilde{W})] \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    **Passo 3**: Por definição do prêmio de risco, \(u(W - \pi) = E[u(\tilde{W})]\). Expanda o lado esquerdo em Taylor de primeira ordem:

    \[
    u(W - \pi) \approx u(W) - u'(W)\pi
    \]

    **Passo 4**: Iguale as duas expressões:

    \[
    u(W) - u'(W)\pi \approx u(W) + \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    -u'(W)\pi \approx \frac{1}{2}u''(W)\sigma^2
    \]

    \[
    \pi \approx -\frac{1}{2}\frac{u''(W)}{u'(W)}\sigma^2 = \frac{1}{2}A(W)\sigma^2 \qquad \blacksquare
    \]

    **Interpretação**: O prêmio de risco é (aproximadamente) proporcional a dois fatores: (i) a medida de aversão absoluta ao risco \(A(W)\), que captura a curvatura da função de utilidade; e (ii) a variância \(\sigma^2\) do risco, que captura a magnitude da incerteza. Para riscos multiplicativos (proporcionais à riqueza), uma derivação análoga mostra que \(\pi/W \approx \frac{1}{2}R(W)\sigma_r^2\), onde \(\sigma_r^2\) é a variância do retorno relativo.

<figure markdown="span">
  <iframe src="../graficos/cap07/premio-risco.html" width="100%" height="520" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 7.2</strong> — Premio de risco de Arrow-Pratt. Ajuste a riqueza \(W\), a variancia \(\sigma^2\) e a curvatura da funcao de utilidade. Alterne entre CARA, CRRA e quadratica para comparar o premio de risco exato com a aproximacao \(\tfrac{1}{2}\sigma^2 A(W)\).</figcaption>
</figure>

---

## 7.6 Métodos para Reduzir o Risco

### 7.6.1 Seguros

O mecanismo de seguro permite transferir risco de agentes mais avessos para agentes menos avessos (ou mais diversificados). Considere um agente com riqueza \(W\) que enfrenta uma perda \(d\) com probabilidade \(p\).

- **Prêmio atuarialmente justo**: \(P = p \cdot d\). Sob esse prêmio, o agente avesso ao risco contrata cobertura total.
- **Prêmio com carregamento**: \(P = (1+\lambda) p \cdot d\), \(\lambda > 0\). Nesse caso, a cobertura ótima pode ser parcial.

!!! abstract "Teorema: Seguro total sob prêmio atuarialmente justo"
    Se o prêmio do seguro é atuarialmente justo e o agente é estritamente avesso ao risco, então o contrato ótimo é de **cobertura total** (\(q^* = d\)), onde \(q\) é a indenização contratada.

<figure markdown="span">
  <iframe src="../graficos/cap07/seguro.html" width="100%" height="560" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
  <figcaption><strong>Figura 7.3</strong> — Mercado de seguros no espaco estado-contingente. Ajuste a riqueza inicial, a perda, a probabilidade de sinistro e o carregamento. Observe como a cobertura otima se move em direcao a linha de 45 graus (seguro total) quando o premio e atuarialmente justo (\(\lambda = 0\)).</figcaption>
</figure>

### 7.6.2 Diversificação

A diversificação reduz o risco total de uma carteira sem necessariamente reduzir o retorno esperado. Se os retornos dos ativos não são perfeitamente correlacionados, a variância da carteira é menor que a média ponderada das variâncias individuais.

Para \(n\) ativos independentes e identicamente distribuídos com retorno \(\tilde{r}_i\) (média \(\mu\), variância \(\sigma^2\)), a variância da carteira igualmente ponderada é:

\[
\text{Var}\left(\frac{1}{n}\sum_{i=1}^{n}\tilde{r}_i\right) = \frac{\sigma^2}{n} \xrightarrow{n \to \infty} 0
\]

No caso mais geral de dois ativos com correlação \(\rho\), pesos \(w\) e \((1-w)\), e variâncias \(\sigma_1^2\) e \(\sigma_2^2\), a variância da carteira é:

\[
\sigma_p^2 = w^2 \sigma_1^2 + (1-w)^2 \sigma_2^2 + 2w(1-w)\rho\sigma_1\sigma_2
\]

Quando \(\rho < 1\), existe um peso \(w^*\) que minimiza \(\sigma_p^2\), gerando o benefício da diversificação. Quanto menor a correlação entre os ativos, maior o ganho. No caso extremo \(\rho = -1\), é possível eliminar completamente o risco da carteira. Esse resultado fundamenta toda a teoria moderna de portfólios, iniciada por Markowitz (1952).

!!! note "Risco diversificável vs. risco sistemático"
    Em uma economia com muitos ativos, a diversificação elimina o **risco idiossincrático** (específico de cada ativo), mas não elimina o **risco sistemático** (que afeta todos os ativos simultaneamente). Essa distinção é central no modelo CAPM (Capital Asset Pricing Model), no qual apenas o risco sistemático — medido pelo coeficiente beta — é remunerado pelo mercado.

### 7.6.3 Flexibilidade e valor da opção

Manter opções abertas tem valor positivo sob incerteza. A possibilidade de adiar uma decisão irreversível até que nova informação se torne disponível é análoga a uma **opção real**, cujo valor cresce com a volatilidade do ambiente.

Formalmente, considere um agente que pode tomar uma decisão irreversível hoje ou esperar um período para obter informação adicional. Se o custo de esperar é baixo e a incerteza é alta, o **valor da opção de espera** pode ser substancial. Esse conceito, desenvolvido por Dixit e Pindyck (1994), tem aplicações importantes em decisões de investimento, exploração de recursos naturais e políticas públicas.

A intuição é simples: sob incerteza, a irreversibilidade cria um custo de oportunidade. Ao agir hoje, o agente "mata" a opção de agir de forma mais informada no futuro. Por isso, a regra do valor presente líquido (VPL) positivo pode ser insuficiente para justificar um investimento — é necessário que o VPL exceda o valor da opção de espera.

### 7.6.4 Informação

A informação reduz a incerteza e permite decisões mais bem fundamentadas. O **valor da informação** pode ser definido como a diferença entre a utilidade esperada com e sem a informação. Para um agente avesso ao risco, informação completa é sempre (fracamente) valiosa.

Seja \(\theta\) o estado da natureza desconhecido e \(a\) a ação do agente. Sem informação, o agente maximiza \(E_\theta[u(a, \theta)]\). Com informação perfeita (observa \(\theta\) antes de agir), maximiza \(u(a^*(\theta), \theta)\) para cada realização. O **valor da informação perfeita** é:

\[
VI = E_\theta\left[\max_a u(a, \theta)\right] - \max_a E_\theta[u(a, \theta)]
\]

Pela desigualdade de Jensen aplicada ao operador \(\max\), temos \(VI \geq 0\): informação nunca tem valor negativo para um agente que pode ignorá-la. Informação **imperfeita** (um sinal correlacionado com \(\theta\)) também tem valor não negativo, calculado de forma análoga usando a atualização bayesiana das crenças.

---

## 7.7 Abordagem Estado-Preferência (*State-Preference*)

A abordagem de estado-preferência, desenvolvida por Arrow (1964) e Debreu (1959), oferece uma perspectiva alternativa para modelar a incerteza.

!!! definition "Espaço de estados e ativos contingentes"
    - Um **estado da natureza** \(s \in S = \{1, 2, \ldots, S\}\) descreve uma configuração completa e mutuamente exclusiva do mundo.
    - Um **ativo contingente ao estado \(s\)** (ou ativo de Arrow-Debreu) paga 1 unidade monetária se o estado \(s\) ocorre e 0 caso contrário.
    - O preço de um ativo contingente ao estado \(s\) é denotado por \(\psi_s\).

Nessa estrutura, o consumo contingente do agente é um vetor \((c_1, c_2, \ldots, c_S)\), e o problema de escolha sob incerteza é reduzido a um problema de escolha do consumidor padrão, com a restrição orçamentária:

\[
\sum_{s=1}^{S} \psi_s \, c_s = W
\]

e a função objetivo:

\[
\max_{(c_1, \ldots, c_S)} \sum_{s=1}^{S} \pi_s \, u(c_s)
\]

onde \(\pi_s\) é a probabilidade do estado \(s\).

A condição de primeira ordem implica:

\[
\frac{\pi_s \, u'(c_s)}{\pi_{s'} \, u'(c_{s'})} = \frac{\psi_s}{\psi_{s'}} \quad \forall \; s, s'
\]

Se os mercados de ativos contingentes são **completos** (existe um ativo para cada estado), todo risco pode ser alocado eficientemente. Se, adicionalmente, o agente é avesso ao risco e os preços são atuarialmente justos (\(\psi_s = \pi_s\) para todo \(s\)), a solução ótima é \(c_s = c_{s'}\) para todo \(s, s'\) — ou seja, **consumo perfeitamente suavizado** entre estados.

!!! note "Mercados completos e eficiência"
    A completude dos mercados é uma condição forte. Na prática, muitos riscos não são seguráveis (desemprego, saúde futura), o que gera incompletude dos mercados e potenciais ineficiências de Pareto. A incompletude dos mercados é um dos temas centrais da teoria financeira moderna.

---

## 7.8 Introdução à Informação Assimétrica

Os problemas de informação assimétrica surgem quando uma das partes de uma transação possui informação relevante que a outra desconhece. Esses problemas são centrais para a compreensão de falhas de mercado e serão tratados em profundidade em capítulos posteriores. Apresentamos aqui uma visão preliminar dos dois tipos fundamentais.

### Seleção adversa

A **seleção adversa** ocorre *antes* da celebração do contrato, quando uma das partes possui informação privada sobre suas características. O exemplo clássico é o mercado de carros usados de Akerlof (1970): vendedores conhecem a qualidade de seus veículos, mas compradores não conseguem distinguir carros bons de ruins (*lemons*). O resultado é que carros de boa qualidade podem ser expulsos do mercado.

Mecanismos para mitigar a seleção adversa incluem:

- **Sinalização**: a parte informada toma ações custosas para revelar sua qualidade (Spence, 1973).
- **Triagem** (*screening*): a parte desinformada oferece um menu de contratos que induz a autorevelação.

### Risco moral

O **risco moral** ocorre *depois* da celebração do contrato, quando uma das partes pode tomar ações não observáveis que afetam o resultado. Por exemplo, após contratar um seguro, o segurado pode reduzir seus cuidados preventivos. A solução envolve o desenho de contratos com incentivos adequados (franquias, copagamentos, bônus por desempenho).

!!! tip "Terminologia"
    Em português, o termo consagrado é **risco moral** (tradução de *moral hazard*), e **não** "risco de inadimplência". "Risco moral" refere-se ao problema de incentivos gerado pela impossibilidade de observar as ações do agente após a contratação.

---

## Box Brasil: O Mercado de Seguros de Automóvel no Brasil

!!! example "Box Brasil — Seguros de automóvel: risco, precificação e regulação"
    O mercado de seguros de automóvel no Brasil é um campo fértil para a aplicação dos conceitos de incerteza e aversão ao risco. Regulado pela **SUSEP** (Superintendência de Seguros Privados), esse mercado apresenta características que ilustram os desafios teóricos discutidos neste capítulo.

    **Estrutura de mercado e concentração**

    O mercado brasileiro de seguros de automóvel é moderadamente concentrado. As cinco maiores seguradoras respondem por aproximadamente 55–60% dos prêmios emitidos. As principais são Porto Seguro, Tokio Marine, Bradesco Seguros, SulAmérica e HDI. Essa concentração permite algum poder de precificação, mas a competição é suficiente para limitar os carregamentos sobre o prêmio atuarialmente justo.

    **Precificação baseada em risco**

    A precificação dos seguros automotivos no Brasil envolve sofisticados modelos atuariais que incorporam variáveis como:

    - **Perfil do condutor**: idade, sexo, estado civil, tempo de habilitação.
    - **Veículo**: marca, modelo, ano, valor de mercado (tabela FIPE).
    - **Localização geográfica**: CEP de pernoite, índice de furto/roubo da região.
    - **Histórico**: bônus por ausência de sinistros (classes de bônus de 0 a 10).

    **Sinistralidade e variação regional**

    A sinistralidade (razão entre indenizações pagas e prêmios ganhos) varia significativamente entre regiões. Dados do setor indicam que estados como São Paulo e Rio de Janeiro apresentam sinistralidade mais alta em furto e roubo, enquanto estados do interior têm maior incidência relativa de colisões. A sinistralidade média do ramo automóvel situa-se tipicamente entre 55% e 65%.

    | Região | Sinistralidade típica | Principal tipo de sinistro |
    |:-------|:---------------------|:--------------------------|
    | SP (Capital) | 60–70% | Furto/roubo |
    | RJ (Capital) | 65–75% | Furto/roubo |
    | Interior SP | 50–60% | Colisão |
    | Sul | 50–60% | Colisão, granizo |
    | Nordeste | 45–55% | Colisão |

    **Problemas informacionais**

    O mercado de seguros automotivos enfrenta tanto **seleção adversa** (motoristas de alto risco têm mais incentivos para contratar seguros) quanto **risco moral** (a cobertura pode reduzir os cuidados com o veículo). As seguradoras mitigam esses problemas por meio de franquias (que funcionam como copagamento), classes de bônus (que premiam o histórico positivo) e inspeções veiculares prévias.

    **Papel da SUSEP**

    A SUSEP fiscaliza a solvência das seguradoras, regulamenta as condições gerais dos contratos e monitora as práticas de mercado. A exigência de provisões técnicas adequadas assegura que as seguradoras mantenham capacidade financeira para honrar os sinistros, reduzindo o risco sistêmico do setor.

---

## Exercícios

**Exercício 7.1.** Um investidor com função de utilidade \(u(W) = \ln(W)\) e riqueza inicial \(W_0 = 10.000\) pode participar de uma loteria que paga \(+5.000\) com probabilidade \(0{,}5\) e \(-5.000\) com probabilidade \(0{,}5\).

(a) Calcule a utilidade esperada da loteria.

(b) Calcule o equivalente de certeza.

(c) Calcule o prêmio de risco exato e compare com a aproximação de Arrow-Pratt.

---

**Exercício 7.2.** Mostre que a função de utilidade \(u(W) = -e^{-aW}\), com \(a > 0\), apresenta aversão absoluta ao risco constante (CARA). Calcule \(A(W)\) e \(R(W)\) e discuta as implicações econômicas de cada medida.

---

**Exercício 7.3.** Um agricultor no Cerrado brasileiro enfrenta a seguinte situação: com probabilidade \(0{,}7\) a safra é boa e ele obtém receita de R\$ 200.000; com probabilidade \(0{,}3\) há seca e a receita cai para R\$ 50.000. Sua função de utilidade é \(u(W) = \sqrt{W}\).

(a) Qual o valor esperado da receita?

(b) Qual o equivalente de certeza?

(c) Qual o prêmio máximo que ele pagaria por um seguro de cobertura total?

(d) Se uma seguradora oferece seguro a um prêmio de R\$ 60.000, o agricultor contrata? Justifique.

---

**Exercício 7.4.** Considere dois estados da natureza, \(s_1\) (expansão) e \(s_2\) (recessão), com probabilidades \(\pi_1 = 0{,}6\) e \(\pi_2 = 0{,}4\). Um agente com riqueza \(W = 100\) e utilidade \(u(c) = \ln(c)\) pode comprar ativos contingentes ao preço \(\psi_1 = 0{,}6\) e \(\psi_2 = 0{,}4\).

(a) Formule o problema de maximização.

(b) Encontre a alocação ótima \((c_1^*, c_2^*)\).

(c) Interprete o resultado à luz da suavização de consumo entre estados.

---

**Exercício 7.5.** Considere dois agentes, A com \(u_A(W) = \ln(W)\) e B com \(u_B(W) = -e^{-0{,}001W}\), ambos com riqueza \(W = 10.000\).

(a) Calcule \(A(W)\) e \(R(W)\) para cada agente.

(b) Compare o prêmio de risco (aproximado) que cada um exigiria para aceitar uma loteria com valor esperado zero e desvio padrão de R\$ 1.000.

(c) Como o prêmio de risco de cada agente se altera se a riqueza aumenta para \(W = 50.000\)? Discuta a relação com DARA e CARA.
