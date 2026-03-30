## 22.1 Por que experimentar? {#221}

### 22.1.1 O problema da endogeneidade

A microeconomia clássica — dos Capítulos 3 a 20 deste livro — é construída sobre modelos de equilíbrio: consumidores maximizam utilidade, firmas maximizam lucro, e os preços ajustam-se para igualar oferta e demanda. Mas como testar se essas previsões são verdadeiras? O problema fundamental é a **endogeneidade**: em dados observacionais, as variáveis que gostaríamos de tratar como "causas" são determinadas simultaneamente com os "efeitos" que queremos medir.

Considere um exemplo concreto do Capítulo 17 (Economia do Trabalho): o governo aumenta o salário mínimo de R\$ 1.320 para R\$ 1.412. Observamos que, seis meses depois, o emprego formal em certas regiões caiu. Podemos concluir que o salário mínimo *causou* desemprego? Não necessariamente. As regiões mais afetadas podem ter características diferentes (estrutura produtiva, sazonalidade, choques locais) que *também* afetam o emprego. Formalmente, se estimamos:

\[
\Delta \text{Emprego}_i = \alpha + \beta \cdot \Delta \text{SalárioMín}_i + \varepsilon_i \label{eq:22.1} \tag{22.1}
\]

o coeficiente \(\beta\) captura o efeito causal apenas se \(\text{Cov}(\Delta \text{SalárioMín}_i, \varepsilon_i) = 0\) — isto é, se a variação do salário mínimo for ortogonal a todos os outros fatores que afetam o emprego. Em dados observacionais, essa condição quase nunca é satisfeita.

!!! definition "Endogeneidade"
    Uma variável explicativa \(X\) é **endógena** quando está correlacionada com o termo de erro \(\varepsilon\) na equação de regressão, ou seja, \(\text{Cov}(X, \varepsilon) \neq 0\). A endogeneidade pode surgir por três razões: (i) **causalidade reversa** — o efeito retroage sobre a causa; (ii) **variável omitida** — um fator não observado afeta tanto \(X\) quanto \(Y\); (iii) **erro de medida** — a variável observada difere sistematicamente da variável verdadeira. Todas as três violam a identificação causal.

A solução mais direta para a endogeneidade é a **randomização**: se atribuímos aleatoriamente o tratamento (quem recebe o aumento do salário mínimo e quem não recebe), então, pela lei dos grandes números, os grupos tratamento e controle são estatisticamente idênticos em *todas* as características observáveis e não observáveis — exceto pelo tratamento. Qualquer diferença nos resultados pode ser atribuída causalmente ao tratamento.

### 22.1.2 Breve história da economia experimental

A ideia de usar experimentos na economia não é nova. Já em **1738**, Daniel Bernoulli propôs o paradoxo de São Petersburgo como um "experimento mental" para testar a teoria da utilidade esperada. Mas o primeiro experimento econômico no sentido moderno é atribuído a **Edward Chamberlin (1948)**, que conduziu um exercício em sala de aula na Universidade de Harvard: distribuiu cartões com valores de reserva para compradores e vendedores, e deixou que negociassem livremente. Chamberlin queria testar se mercados descentralizados convergiam ao equilíbrio competitivo previsto pela teoria. Seu resultado foi desanimador: os preços observados diferiam significativamente do equilíbrio walrasiano.

Um dos alunos de Chamberlin, **Vernon Smith**, levou a sério tanto a questão quanto as falhas de desenho do experimento original. Em seu artigo seminal de **1962** no *Journal of Political Economy*, Smith introduziu o **leilão de dupla** (*double auction*) — um mecanismo que descrevemos em detalhe na Seção 22.2.3. O resultado foi surpreendente: mesmo com poucos participantes e informação limitada, os preços convergiram rapidamente para o equilíbrio competitivo previsto pela teoria. Smith demonstrou que a "mão invisível" de Adam Smith funcionava em laboratório — desde que o mecanismo de mercado fosse bem desenhado.

Paralelamente, **Daniel Kahneman e Amos Tversky** conduziram uma série de experimentos psicológicos nas décadas de 1970 e 1980 que documentaram sistematicamente as violações da teoria da utilidade esperada e da racionalidade perfeita — o material que discutimos no Capítulo 8. A contribuição de Kahneman e Tversky foi mostrar que os desvios da racionalidade não são ruído aleatório, mas padrões previsíveis (heurísticas e vieses) que podem ser incorporados em modelos econômicos formais.

!!! box-mundo "Box Mundo 22.1 — O J-PAL e a globalização dos RCTs"

    **Contexto:** O Abdul Latif Jameel Poverty Action Lab (J-PAL) foi fundado em 2003 no MIT por Abhijit Banerjee, Esther Duflo e Sendhil Mullainathan. A ideia era simples mas revolucionária: aplicar a metodologia de ensaios clínicos randomizados — padrão-ouro na medicina — para avaliar políticas de combate à pobreza em países em desenvolvimento.

    **Dados:** Em 2024, o J-PAL contava com mais de 400 professores afiliados em universidades de todo o mundo, havia conduzido ou apoiado mais de 1.000 RCTs em 90 países, e suas avaliações tinham influenciado políticas que alcançaram mais de 600 milhões de pessoas. Os temas incluem educação (distribuição de livros didáticos vs. treinamento de professores no Quênia), saúde (vacinação com incentivos na Índia), microcrédito (avaliação de programas do Grameen Bank) e governança (monitoramento de funcionários públicos no Brasil e na Índia).

    **Análise:** O impacto do J-PAL vai além dos resultados específicos de cada experimento. A instituição mudou a *cultura* da formulação de políticas públicas em países em desenvolvimento, criando a expectativa de que intervenções sociais devem ser testadas rigorosamente antes de serem escaladas. Ao mesmo tempo, os RCTs do J-PAL geraram controvérsias metodológicas importantes (discutidas na Seção 22.7): a validade externa dos resultados, a ética de negar tratamento a grupos de controle, e o risco de reduzir questões estruturais complexas a intervenções pontuais.

    **Fonte:** J-PAL. 2024. [*About J-PAL*](https://www.povertyactionlab.org/about-j-pal). Cambridge, MA: MIT.

### 22.1.3 Os Prêmios Nobel experimentais

A legitimação acadêmica da economia experimental veio em ondas, cristalizada em três Prêmios Nobel que reconhecem tradições complementares:

**Nobel de 2002 — Vernon Smith e Daniel Kahneman.** Smith recebeu o prêmio "por ter estabelecido experimentos de laboratório como uma ferramenta na análise econômica empírica, especialmente no estudo de mecanismos de mercado alternativos". Kahneman foi premiado "por ter integrado insights da pesquisa psicológica na ciência econômica, especialmente no que diz respeito ao julgamento humano e à tomada de decisões sob incerteza". Juntos, representam as duas vertentes da economia experimental: a que confirma a teoria (mercados funcionam) e a que a desafia (indivíduos erram sistematicamente).

**Nobel de 2019 — Abhijit Banerjee, Esther Duflo e Michael Kremer.** Premiados "por sua abordagem experimental para aliviar a pobreza global". Kremer iniciou a revolução dos RCTs em desenvolvimento com seu experimento sobre livros didáticos no Quênia (1990s); Banerjee e Duflo expandiram a metodologia para dezenas de países e temas, institucionalizando-a através do J-PAL. Duflo, aos 46 anos, tornou-se a segunda mulher e a pessoa mais jovem a receber o Nobel de Economia.

**Nobel de 2021 — David Card, Joshua Angrist e Guido Imbens.** Card foi premiado "por suas contribuições empíricas à economia do trabalho", especialmente o uso de experimentos naturais para estudar os efeitos do salário mínimo, imigração e educação. Angrist e Imbens foram premiados "por suas contribuições metodológicas à análise de relações causais" — o desenvolvimento de ferramentas econométricas (variáveis instrumentais, LATE) que permitiram extrair conclusões causais de experimentos naturais e quase-experimentos. Juntos, representam a "revolução da credibilidade" na econometria aplicada.

!!! idea "Intuição Econômica"
    **Em uma frase:** A economia experimental nasceu da necessidade de distinguir correlação de causalidade — e seus métodos agora são ferramentas indispensáveis para testar teorias e avaliar políticas.

    **Pense assim:** Imagine que você quer saber se um novo fertilizante aumenta a produtividade de uma fazenda. Você pode comparar fazendas que usam o fertilizante com as que não usam — mas talvez as fazendas que adotaram o fertilizante sejam justamente as mais produtivas por outras razões (solo melhor, agricultores mais habilidosos). A solução é sortear quem recebe o fertilizante: metade das fazendas recebe (tratamento), metade não (controle). Qualquer diferença na produtividade pode ser atribuída ao fertilizante. Essa é a lógica de *todos* os métodos experimentais deste capítulo.

    **Por que isso importa:** Sem identificação causal, políticas públicas são formuladas no escuro. Os métodos experimentais permitem responder perguntas como: "A Bolsa Família reduz a pobreza?", "O salário mínimo causa desemprego?", "Treinamento de professores melhora o aprendizado?" — com o rigor de um experimento controlado.

### 22.1.4 Taxonomia dos métodos experimentais

Antes de aprofundar cada método, é útil ter uma visão panorâmica. A tabela abaixo organiza os quatro tipos de abordagem experimental que estudaremos:

| Método | Controle do pesquisador | Contexto | Validade interna | Validade externa |
|:-------|:-----------------------|:---------|:-----------------|:----------------|
| Laboratório (Seção 22.2) | Total | Artificial | Alta | Baixa |
| Campo (Seção 22.3) | Parcial | Natural | Média-alta | Média-alta |
| RCT (Seção 22.4) | Alto | Real | Alta | Média |
| Experimento natural (Seção 22.5) | Nenhum | Real | Média | Alta |

!!! definition "Validade interna e validade externa"
    **Validade interna**: grau em que o desenho experimental permite atribuir o efeito observado ao tratamento (e não a fatores confundidores). Depende de randomização, controle de variáveis e ausência de viés de seleção.

    **Validade externa**: grau em que os resultados do experimento podem ser generalizados para outros contextos, populações e períodos. Depende da representatividade da amostra e da similaridade entre o ambiente experimental e o ambiente real.

    Há um **trade-off** fundamental entre as duas: quanto mais controlado o ambiente (alta validade interna), mais artificial e menos generalizável (baixa validade externa). A arte do desenho experimental está em encontrar o equilíbrio adequado para cada pergunta de pesquisa.

---

## 22.2 Experimentos de Laboratório {#222}

### 22.2.1 Desenho experimental: elementos essenciais

Se a física tem o CERN e a biologia tem o microscópio, a economia experimental tem... uma sala de informática com estudantes de graduação ganhando R$ 30 para clicar em botões. Parece pouco glamouroso, mas essa modéstia esconde um poder enorme: o poder de *controlar* o que acontece, variando uma única condição de cada vez enquanto tudo o mais permanece igual. Um experimento de laboratório em economia segue uma estrutura padrão:

1. **Participantes** (*subjects*): tipicamente estudantes universitários recrutados de um *subject pool*. Recebem instruções padronizadas e tomam decisões em um ambiente controlado (sala de informática, plataforma online).

2. **Tratamentos**: os participantes são divididos aleatoriamente em grupos que enfrentam condições diferentes. O **grupo de controle** enfrenta a condição base; o **grupo de tratamento** enfrenta a variação que o pesquisador deseja estudar. A aleatorização garante que diferenças entre grupos sejam atribuíveis ao tratamento.

3. **Incentivos monetários reais**: diferentemente de pesquisas de opinião, os participantes em experimentos econômicos ganham ou perdem dinheiro real com base em suas decisões. Isso segue o princípio de que decisões hipotéticas podem diferir sistematicamente de decisões com consequências reais.

4. **Anonimato e controle**: os participantes tomam decisões anonimamente, sem conhecer a identidade dos outros jogadores. O pesquisador controla o ambiente informacional (quem sabe o quê) e a sequência de decisões.

### 22.2.2 A teoria do valor induzido de Smith

A fundamentação teórica dos experimentos de laboratório foi fornecida por Vernon Smith em uma série de artigos nas décadas de 1970 e 1980, culminando na **teoria do valor induzido** (*induced value theory*). A ideia central é simples mas poderosa: em vez de tentar observar as preferências "verdadeiras" dos participantes (que são privadas e não mensuráveis), o experimentador *induz* preferências controladas por meio de recompensas monetárias.

Formalmente, suponha que o pesquisador quer criar um mercado com oferta e demanda conhecidas. Para o comprador \(i\), o pesquisador atribui um **valor de resgate** \(v_i\): se o comprador adquire uma unidade do bem a preço \(p\), recebe \(v_i - p\) em dinheiro real. Para o vendedor \(j\), atribui-se um **custo de produção** \(c_j\): se vende a preço \(p\), recebe \(p - c_j\). Assim:

\[
\text{Lucro do comprador } i: \quad \pi_i^B = v_i - p \quad \text{se compra; } 0 \text{ se não compra} \label{eq:22.2} \tag{22.2}
\]

\[
\text{Lucro do vendedor } j: \quad \pi_j^S = p - c_j \quad \text{se vende; } 0 \text{ se não vende} \label{eq:22.3} \tag{22.3}
\]

Smith identificou três condições suficientes para que o valor induzido funcione:

- **Monotonicidade**: os participantes preferem mais dinheiro a menos (ou seja, a utilidade é crescente na recompensa monetária).
- **Saliência**: a recompensa monetária depende diretamente das decisões do participante (não é pagamento fixo).
- **Dominância**: os incentivos monetários dominam outros fatores que podem afetar as decisões (tédio, curiosidade, desejo de agradar o experimentador).

!!! idea "Intuição Econômica"
    **Em uma frase:** A teoria do valor induzido permite ao experimentador *construir* curvas de oferta e demanda em laboratório e testar se os mecanismos de mercado as igualam.

    **Pense assim:** Imagine que você quer testar se um leilão converge ao preço de equilíbrio. Você não precisa saber o que os participantes "realmente" pensam sobre o bem leiloado — basta dizer: "Se você comprar por R\$ 10, eu te pago R\$ 15" (valor de resgate = 15). Agora o participante tem um incentivo real para comprar a qualquer preço abaixo de R\$ 15. Faça isso para 20 compradores e 20 vendedores, cada um com valores e custos diferentes, e você criou um mercado com oferta e demanda perfeitamente conhecidas. Qualquer desvio do equilíbrio teórico é atribuível ao mecanismo de troca — não a preferências desconhecidas.

    **Por que isso importa:** Sem a teoria do valor induzido, experimentos econômicos seriam como pesquisas de opinião: interessantes, mas sem poder de identificação. Smith deu à economia experimental seu *microfundamento* — a capacidade de testar previsões teóricas em ambientes com preferências controladas.

### 22.2.3 Experimentos clássicos

A economia experimental de laboratório produziu centenas de resultados influentes. Destacamos quatro classes de experimentos com conexões diretas aos capítulos anteriores:

**O leilão de dupla (double auction).** O experimento fundador de Smith (1962) demonstrou que o mecanismo de leilão de dupla — em que compradores submetem lances (*bids*) e vendedores submetem ofertas (*asks*), com transações ocorrendo quando um lance iguala ou supera uma oferta — produz convergência notavelmente rápida ao equilíbrio competitivo, mesmo com poucos participantes (5 compradores e 5 vendedores). Após 3 a 5 rodadas de negociação, preços e quantidades ficam próximos das previsões do modelo de oferta e demanda do Capítulo 13. Esse resultado foi replicado centenas de vezes e constitui uma das descobertas mais robustas da economia experimental: **mercados com mecanismos de dupla ponta funcionam**.

**O jogo do ultimato.** No jogo do ultimato, um propositor (*proposer*) recebe uma quantia \(M\) e propõe uma divisão: "Eu fico com \(M - x\) e você recebe \(x\)". O respondente (*responder*) aceita ou rejeita. Se aceitar, a divisão é implementada; se rejeitar, ambos recebem zero. A previsão do modelo de agente racional com preferências egoístas (Capítulo 9a, equilíbrio de Nash por indução retroativa, como no Capítulo 9b) é clara: o propositor oferece o mínimo possível (\(x \to 0\)), e o respondente aceita — pois algo é melhor que nada.

Os resultados experimentais, obtidos pela primeira vez por Güth, Schmittberger e Schwarze (1982) e replicados em dezenas de culturas, contam uma história diferente:

- A oferta modal é de 40–50% (divisão igualitária ou quase).
- Ofertas abaixo de 20% são rejeitadas em cerca de metade dos casos.
- O comportamento é notavelmente consistente entre culturas ocidentais, mas varia em sociedades pequenas e isoladas.

Esses resultados desafiam a suposição de preferências puramente egoístas e motivaram os modelos de **preferências sociais** (aversão a desigualdade, reciprocidade) discutidos no Capítulo 8.

**O jogo do ditador.** Variação do jogo do ultimato em que o respondente não pode rejeitar: o propositor simplesmente decide quanto dar. A previsão do modelo egoísta é que o ditador fica com tudo (\(x = 0\)). Experimentalmente, cerca de 60% dos ditadores dão alguma quantia positiva, com a doação média em torno de 20–30% do total. Esse resultado é evidência direta de que muitas pessoas têm preferências que incluem algum grau de altruísmo ou aversão à desigualdade.

**O jogo de bens públicos.** Conectando diretamente com o Capítulo 20 (Externalidades e Bens Públicos), o experimento padrão de bens públicos funciona assim: \(N\) participantes recebem uma dotação \(w\) e escolhem quanto contribuir (\(g_i\)) para um fundo público. O fundo é multiplicado por um fator \(\alpha > 1\) e dividido igualmente entre todos:

\[
\pi_i = (w - g_i) + \frac{\alpha}{N} \sum_{j=1}^{N} g_j \label{eq:22.4} \tag{22.4}
\]

Se \(1 < \alpha < N\), a contribuição é socialmente eficiente (\(\alpha/N < 1\) por unidade individual, mas \(\alpha > 1\) no total), porém o equilíbrio de Nash com agentes egoístas é \(g_i^* = 0\) para todo \(i\) — o clássico problema do carona (*free-rider*). Experimentalmente, as contribuições começam em torno de 40–60% da dotação e declinam gradualmente ao longo das rodadas, aproximando-se de zero (mas raramente atingindo-o). Dois resultados adicionais são robustos:

- **Punição altruísta**: quando os participantes podem pagar um custo para punir os caronas, as contribuições aumentam significativamente e se mantêm altas (Fehr e Gächter, 2000). A punição funciona mesmo quando é custosa para o punidor.
- **Comunicação**: permitir comunicação antes das decisões (cheap talk) aumenta as contribuições, mesmo quando a comunicação não é vinculante.

!!! tip "Conexão com Teoria dos Jogos"
    Os quatro experimentos acima testam previsões centrais da teoria dos jogos (Capítulos 9a–9d). O leilão de dupla confirma a convergência ao equilíbrio competitivo (Capítulo 13). O jogo do ultimato testa indução retroativa (Capítulo 9b) e revela preferências sociais que a teoria padrão ignora. O jogo de bens públicos testa o problema do carona (Capítulo 20) e mostra que cooperação é possível — especialmente com mecanismos de punição (conectando com o *folk theorem* do Capítulo 9b). O jogo do ditador testa diretamente a hipótese de preferências egoístas.

!!! example "Exercício Resolvido 22.4 — Jogo de bens públicos com punição altruísta"
    **Enunciado.** Considere o jogo de bens públicos da Equação $\eqref{eq:22.4}$ com $N = 4$, $w = 20$ e $\alpha = 1{,}6$. Agora, após observar as contribuições de todos, cada jogador $i$ pode escolher **punir** qualquer jogador $j$ pagando um custo $c = 1$ para reduzir o payoff de $j$ em $p = 3$ (punição "3-para-1"). Um jogador pode punir múltiplos free-riders.

    (a) No jogo sem punição, o equilíbrio de Nash é $g_i^* = 0$ (Exercício 22.1). Suponha que, na primeira rodada, os jogadores 1, 2 e 3 contribuem $g = 15$ cada, mas o jogador 4 contribui $g_4 = 0$ (carona puro). Calcule o payoff de cada jogador.

    (b) Agora suponha que os jogadores 1, 2 e 3 decidem punir o jogador 4. Cada um paga $c = 1$ para infligir $p = 3$ de perda. Qual é o payoff final de cada jogador após a punição?

    (c) A punição é racional para um agente egoísta? Por que, então, Fehr e Gächter (2000) observaram punição massiva em laboratório?

    **Solução.**

    **(a) Payoffs sem punição.**

    Total contribuído: $\sum g_j = 15 + 15 + 15 + 0 = 45$. Retorno do fundo por pessoa: $\frac{1{,}6 \times 45}{4} = 18$.

    - Jogadores 1, 2, 3: $\pi_i = (20 - 15) + 18 = 23$
    - Jogador 4 (carona): $\pi_4 = (20 - 0) + 18 = 38$

    O free-rider ganha 65% a mais que os cooperadores — o incentivo para "pegar carona" é enorme.

    **(b) Payoffs com punição.**

    Cada um dos 3 punidores paga $c = 1$. O jogador 4 recebe $3 \times p = 3 \times 3 = 9$ de penalidade.

    - Jogadores 1, 2, 3: $\pi_i = 23 - 1 = 22$
    - Jogador 4: $\pi_4 = 38 - 9 = 29$

    Mesmo após punição pesada, o carona *ainda* ganha mais que os cooperadores. Mas a diferença caiu de 15 para 7 — e, crucialmente, o carona sabe que será punido nas rodadas seguintes.

    **(c) Racionalidade da punição.**

    Para um agente egoísta, punir é irracional: custa $c = 1$ e não traz benefício material ao punidor (apenas reduz o payoff do punido). Em jogo de rodada única, a punição é um equilíbrio de Nash **não**. Porém, Fehr e Gächter (2000, *AER* 90(4): 980–994) observaram punição massiva mesmo em jogos de rodada única (*one-shot*) com anonimato total. A explicação reside nas **preferências sociais**: muitas pessoas sentem indignação genuína diante de comportamento oportunista e estão dispostas a pagar para "ensinar uma lição" — mesmo sem benefício futuro. Esse padrão, chamado *reciprocidade forte* (*strong reciprocity*), sustenta a cooperação em grupos porque cria uma **ameaça crível** contra o oportunismo. Em jogos repetidos com punição, as contribuições convergem para ~90% da dotação (quase ótimo social), versus ~10% sem punição.

    **Conexão:** O resultado conecta com o *folk theorem* (Capítulo 9b) — mas vai além, porque a cooperação emerge mesmo em jogos *finitos* e de rodada única, onde o folk theorem não se aplica. A explicação não é estratégica (reputação); é motivacional (preferências por justiça).

!!! idea "Intuição Econômica"
    **Em uma frase:** A punição altruísta resolve o problema do carona não porque é racional, mas porque a maioria das pessoas *não tolera* injustiça — e os caronas sabem disso.

    **Pense assim:** Imagine uma república de estudantes onde cada um deveria lavar a louça uma vez por semana. Se ninguém pune quem fura a escala, todo mundo para de lavar. Mas se o grupo ostraciza o folgado — mesmo que isso dê trabalho — a escala funciona. O custo de punir é real (confronto, estresse), mas o benefício coletivo é enorme. É exatamente o que Fehr e Gächter mediram no laboratório: pessoas pagam para punir caronas, e isso sustenta a cooperação.

    **Por que isso importa:** A existência de punição altruísta tem implicações profundas para o desenho de instituições. Políticas que facilitam a punição descentralizada (avaliações públicas, sistemas de reputação, *naming and shaming*) podem ser mais eficazes do que incentivos monetários puros. O Uber funciona em parte porque passageiros avaliam motoristas — e vice-versa. A Wikipedia funciona porque editores voluntários revertem vandalismos. A cooperação humana é mais robusta do que o *Homo economicus* sugere.

<iframe src="/micro-book/graficos/cap22/bens-publicos-experimento.html" title="Figura 22.1 — Jogo de Bens Públicos: Simulação com e sem Punição" class="graph-iframe"></iframe>

??? exercicio-resolvido "Exercício Resolvido 22.1 — Equilíbrio de Nash no jogo de bens públicos"
    **Enunciado.** Em um jogo de bens públicos, \(N = 4\) jogadores recebem dotação \(w = 20\) cada. Cada jogador \(i\) escolhe quanto contribuir \(g_i \in [0, 20]\) ao fundo público. O retorno total do fundo é \(1{,}6 \sum g_i\), dividido igualmente entre os 4 jogadores. O payoff do jogador \(i\) é:

    \[
    \pi_i = (20 - g_i) + \frac{1{,}6}{4} \sum_{j=1}^{4} g_j = (20 - g_i) + 0{,}4 \sum_{j=1}^{4} g_j
    \]

    (a) Encontre o equilíbrio de Nash do jogo (decisão simultânea, jogadores egoístas).

    (b) Encontre a contribuição socialmente ótima (que maximiza a soma dos payoffs).

    (c) Calcule o payoff no equilíbrio de Nash e no ótimo social. Há dilema social?

    ---

    **Solução.**

    **(a) Equilíbrio de Nash.**

    O payoff do jogador \(i\) é:

    \[
    \pi_i = 20 - g_i + 0{,}4 g_i + 0{,}4 \sum_{j \neq i} g_j = 20 - 0{,}6 g_i + 0{,}4 \sum_{j \neq i} g_j
    \]

    Derivando em relação a \(g_i\):

    \[
    \frac{\partial \pi_i}{\partial g_i} = -0{,}6 < 0
    \]

    Como o payoff é estritamente decrescente em \(g_i\), o jogador egoísta escolhe \(g_i^* = 0\) para todo \(i\).

    **Equilíbrio de Nash: \(g_i^* = 0\) para todo \(i\) (ninguém contribui).**

    **(b) Ótimo social.**

    A soma dos payoffs é:

    \[
    \sum_{i=1}^{4} \pi_i = \sum_{i=1}^{4} (20 - g_i) + 4 \times 0{,}4 \sum_{j=1}^{4} g_j = 80 - \sum g_i + 1{,}6 \sum g_i = 80 + 0{,}6 \sum g_i
    \]

    Como o bem-estar total é crescente em \(\sum g_i\), o ótimo social requer \(g_i = 20\) para todo \(i\) (todos contribuem tudo).

    **(c) Comparação.**

    - **Equilíbrio de Nash** (\(g_i = 0\)): \(\pi_i = 20\). Total: 80.
    - **Ótimo social** (\(g_i = 20\)): \(\pi_i = 0 + 0{,}4 \times 80 = 32\). Total: 128.

    **Sim, há dilema social.** Cada jogador ganha 32 no ótimo (60% a mais que no Nash), mas o incentivo individual é contribuir zero. A estrutura é análoga ao dilema do prisioneiro com \(N\) jogadores (Capítulo 9a): a racionalidade individual leva a um resultado coletivamente inferior.

### 22.2.4 Validade interna versus validade externa

Os experimentos de laboratório enfrentam uma crítica recorrente: são **artificiais**. Participantes (geralmente estudantes) tomam decisões sobre quantias pequenas, em ambientes estéreis, sem a complexidade do mundo real. Podemos generalizar os resultados?

A resposta depende da pergunta de pesquisa. Para testar *previsões teóricas* — "o leilão de segundo preço é compatível com incentivos?" — o laboratório é ideal, pois o controle permite isolar exatamente o mecanismo em questão. Para avaliar *políticas públicas* — "como as pessoas respondem a multas em creches?" — o laboratório é insuficiente, pois o contexto real importa. Essa distinção motiva a busca por métodos que preservem o controle experimental mas aumentem o realismo — os experimentos de campo, tema da próxima seção.

!!! warning "Limites dos experimentos de laboratório"
    Três limitações merecem atenção: (1) **Amostra não representativa** — estudantes universitários não são representativos da população geral; podem ser mais cooperativos, mais atentos a normas sociais, ou mais motivados por incentivos monetários. (2) **Efeito de demanda** (*demand effect*) — participantes podem alterar seu comportamento por saberem que estão sendo observados ou por tentarem adivinhar o que o pesquisador espera. (3) **Incentivos baixos** — os valores monetários em laboratório são tipicamente pequenos (R\$ 20–50); é possível que com valores maiores (apostas de emprego, patrimônio) o comportamento mude. Essas limitações não invalidam os experimentos de laboratório, mas delimitam seu alcance.
