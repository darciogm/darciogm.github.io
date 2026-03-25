# Capítulo 22 — O Laboratório do Economista: Economia Experimental

Se a microeconomia é uma ciência, onde estão os experimentos? Durante a maior parte do século XX, a resposta era desanimadora: economistas observavam o mundo, construíam modelos elegantes, mas raramente testavam suas previsões em ambientes controlados. A economia era considerada uma ciência *observacional*, como a astronomia — incapaz de manipular variáveis para identificar relações causais. Essa limitação não era apenas metodológica; era conceitual. Se não podemos realizar experimentos controlados, como distinguir correlação de causalidade? Como saber se o salário mínimo *causa* desemprego, ou se ambos respondem a um terceiro fator? Como testar se as pessoas realmente maximizam utilidade, ou se os leilões de fato convergem ao equilíbrio previsto pela teoria?

A economia experimental nasceu para responder essas perguntas. Em pouco mais de meio século, a disciplina passou de curiosidade marginal a ferramenta central da pesquisa econômica, premiada com três Prêmios Nobel (2002, 2019, 2021) e adotada por governos, ONGs e empresas em todo o mundo. Este capítulo complementa o Capítulo 8 (Economia Comportamental), que tratou dos *resultados* — os vieses e heurísticas que desafiam o modelo do agente racional. Aqui, o foco está nos *métodos*: como economistas desenham, conduzem e interpretam experimentos para testar teorias e avaliar políticas públicas.

O capítulo percorre quatro grandes tradições experimentais. Os **experimentos de laboratório** (Seção 22.2), herdeiros do trabalho pioneiro de Vernon Smith, trazem participantes a ambientes controlados com incentivos monetários reais para testar previsões teóricas — dos jogos do ultimato ao leilão de dupla. Os **experimentos de campo** (Seção 22.3) levam o controle experimental ao mundo real, preservando o contexto natural das decisões econômicas. Os **ensaios controlados randomizados** (RCTs, Seção 22.4), popularizados pelo J-PAL de Banerjee e Duflo, avaliam políticas públicas em larga escala com a mesma lógica dos ensaios clínicos na medicina. E os **experimentos naturais** (Seção 22.5) exploram variações exógenas que a história ou a política proporcionam, permitindo inferência causal sem manipulação experimental deliberada — a "revolução da credibilidade" que transformou a econometria aplicada.

A cada etapa, conectamos a metodologia experimental com os modelos teóricos desenvolvidos ao longo do livro: teoria dos jogos (Capítulos 9a–9d), bens públicos (Capítulo 20), mercado de trabalho (Capítulo 17), leilões (Capítulo 9c), informação assimétrica (Capítulo 19) e economia comportamental (Capítulo 8). O resultado é uma visão integrada de como a microeconomia moderna produz conhecimento — combinando teoria formal, evidência empírica e desenho institucional.

As referências centrais são Smith (1962) para o leilão de dupla e a teoria do valor induzido, Harrison e List (2004) para a taxonomia de experimentos de campo, Banerjee, Duflo e Kremer (trabalhos diversos) para RCTs em desenvolvimento, Card e Krueger (1994) para experimentos naturais, e Camerer et al. (2016) para a crise de replicação. Para tratamentos de livro-texto, ver Kagel e Roth (1995), Friedman e Cassar (2004) e Duflo, Glennerster e Kremer (2007).

---

## 22.1 Por que experimentar?

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

## 22.2 Experimentos de Laboratório

### 22.2.1 Desenho experimental: elementos essenciais

Um experimento de laboratório em economia segue uma estrutura padrão:

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

<iframe src="../graficos/cap22/bens-publicos-experimento.html" title="Figura 22.1 — Jogo de Bens Públicos: Simulação com e sem Punição" class="graph-iframe"></iframe>

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

---

## 22.3 Experimentos de Campo

### 22.3.1 A taxonomia de Harrison e List

Glenn Harrison e John List (2004) propuseram uma taxonomia influente que classifica os experimentos econômicos em um espectro contínuo entre laboratório puro e campo puro. A classificação organiza-se ao longo de seis dimensões: (i) natureza da amostra de participantes, (ii) natureza da informação disponível, (iii) natureza do bem transacionado, (iv) natureza das regras e da tarefa, (v) natureza do ambiente de decisão, e (vi) natureza das apostas (*stakes*).

Com base nessas dimensões, Harrison e List distinguem quatro tipos:

1. **Experimento de laboratório convencional** (*conventional lab experiment*): amostra de estudantes, tarefa abstrata, ambiente artificial.

2. **Experimento de laboratório artefactual** (*artefactual field experiment*): usa participantes do campo (e.g., comerciantes de rua, agricultores), mas mantém a tarefa abstrata e o ambiente controlado.

3. **Experimento de campo emoldurado** (*framed field experiment*): usa participantes do campo, informação e bens do contexto real, mas o pesquisador ainda controla a aleatorização e a coleta de dados.

4. **Experimento de campo natural** (*natural field experiment*): os participantes não sabem que estão em um experimento; o ambiente é totalmente natural. Exemplo: um empregador que aleatoriza anúncios de emprego para medir discriminação.

| Tipo | Amostra | Tarefa | Ambiente | Sabe que é experimento? |
|:-----|:--------|:-------|:---------|:-----------------------|
| Lab convencional | Estudantes | Abstrata | Laboratório | Sim |
| Lab artefactual | Campo | Abstrata | Laboratório | Sim |
| Campo emoldurado | Campo | Contextualizada | Real | Sim |
| Campo natural | Campo | Natural | Real | Não |

### 22.3.2 Vantagens dos experimentos de campo

Os experimentos de campo combinam duas virtudes: o **controle** da aleatorização (que garante validade interna) com o **realismo** do contexto natural (que aumenta a validade externa). Isso resolve parcialmente o trade-off central da economia experimental.

As principais vantagens são:

- **Apostas reais em escala real**: as decisões envolvem valores significativos (emprego, renda, saúde) que podem afetar substancialmente a vida dos participantes — eliminando a crítica de que "com R\$ 10 em jogo, as pessoas não levam a sério".

- **Contexto natural**: as decisões ocorrem no ambiente em que normalmente seriam tomadas (mercado, escola, hospital), preservando as normas sociais, informações e restrições que afetam o comportamento real.

- **Amostra representativa**: os participantes são pessoas reais afetadas pela questão em estudo — não estudantes de economia decidindo sobre cenários abstratos.

- **Ausência de efeito de demanda**: quando os participantes não sabem que estão em um experimento (campo natural), não podem alterar seu comportamento em resposta à observação.

### 22.3.3 Exemplo clássico: Gneezy e Rustichini (2000)

Uri Gneezy e Aldo Rustichini conduziram um dos mais famosos experimentos de campo em economia, publicado no *Journal of Legal Studies* em 2000. O contexto era uma creche em Haifa, Israel, que enfrentava o problema de pais que chegavam atrasados para buscar os filhos — obrigando os funcionários a fazer hora extra.

**Desenho:** Os pesquisadores introduziram uma **multa** monetária para pais que chegassem mais de 10 minutos atrasados. A previsão do modelo econômico padrão (Capítulo 4, restrição orçamentária: atraso ficou mais caro, logo a demanda por atraso deveria cair) era clara: a multa deveria reduzir os atrasos.

**Resultado:** Os atrasos **aumentaram** — e significativamente. Após a introdução da multa, o número de pais atrasados quase dobrou. Pior: quando a multa foi removida semanas depois, os atrasos não retornaram ao nível original — permaneceram elevados.

**Interpretação:** O resultado desafia a visão puramente econômica dos incentivos e conecta diretamente com o Capítulo 8 (Economia Comportamental). A explicação mais aceita é que a multa transformou uma **obrigação moral** (norma social: "não é correto atrasar e incomodar os funcionários") em uma **transação de mercado** ("estou pagando pelo direito de atrasar"). Ao monetizar o atraso, a creche *substituiu* o incentivo moral pelo incentivo financeiro — e o incentivo financeiro, sendo relativamente baixo, resultou em *mais* atrasos, não menos. O efeito foi irreversível: uma vez que a norma social foi destruída pela introdução do preço, sua remoção não restaurou a norma.

!!! idea "Intuição Econômica"
    **Em uma frase:** Incentivos monetários podem destruir motivações intrínsecas — e o efeito pode ser irreversível.

    **Pense assim:** Você doa sangue por altruísmo. Um dia, o hospital passa a pagar R\$ 50 por doação. Você pode pensar: "Agora tenho *mais* motivo para doar!" Mas para muitas pessoas, o pagamento *reduz* a motivação: "Se estão me pagando, não é mais um ato de solidariedade — é um serviço." O pior cenário: se o pagamento for removido, você não volta a doar por altruísmo, porque a transação comercializou o ato.

    **Por que isso importa:** Esse resultado tem implicações profundas para o desenho de políticas públicas. Programas que "pagam" por comportamentos socialmente desejáveis (frequência escolar, vacinação, reciclagem) podem ser eficazes — mas também podem minar as motivações intrínsecas que sustentam esses comportamentos a longo prazo. O desenho do incentivo importa tanto quanto o incentivo em si.

!!! box-brasil "Box Brasil 22.1 — Bolsa Família e avaliação experimental"

    **Contexto:** O Programa Bolsa Família (PBF), criado em 2003 pela fusão de programas anteriores, é o maior programa de transferência condicionada de renda do mundo, alcançando mais de 21 milhões de famílias (cerca de 85 milhões de pessoas) em 2024. As famílias recebem transferências monetárias condicionadas à matrícula escolar dos filhos e ao cumprimento de exigências de saúde (vacinação, pré-natal).

    **Dados:** Diversas avaliações com métodos experimentais e quase-experimentais documentaram os efeitos do PBF. Usando dados de painéis e regressão descontínua (explorando os limiares de elegibilidade), pesquisadores encontraram: (i) aumento de 3–5 pontos percentuais na frequência escolar; (ii) redução de 10–15% no trabalho infantil; (iii) aumento de 2–4 pontos percentuais na taxa de vacinação; (iv) efeitos modestos mas positivos sobre nutrição e saúde materno-infantil. Estudos de longo prazo (De Brauw et al., 2015; Barbosa e Corseuil, 2014) mostram que a primeira geração de beneficiários do PBF tem maiores taxas de conclusão do ensino médio e de ingresso no mercado formal.

    **Análise:** A avaliação do Bolsa Família ilustra tanto o poder quanto os limites dos métodos experimentais em políticas públicas brasileiras. A escala do programa (universal para famílias elegíveis) impede um RCT clássico (não se pode negar o benefício aleatoriamente a famílias elegíveis por razões éticas e políticas). Os pesquisadores recorreram a métodos quase-experimentais — regressão descontínua nos limiares de renda, diferenças-em-diferenças explorando a expansão gradual do programa, e variáveis instrumentais — que combinam a lógica experimental com dados observacionais. Os resultados são consistentes: o PBF reduz a pobreza imediata e tem efeitos positivos de longo prazo sobre capital humano, com custo fiscal relativamente baixo (menos de 0,5% do PIB).

    **Fonte:** Soares, F. V.; Ribas, R. P.; Osório, R. G. 2010. Evaluating the Impact of Brazil's Bolsa Família. *Latin American Research Review*, 45(2), 173–190.

---

## 22.4 Ensaios Controlados Randomizados (RCTs)

### 22.4.1 A lógica da randomização

O **ensaio controlado randomizado** (RCT — *randomized controlled trial*) é a aplicação em larga escala da lógica experimental à avaliação de políticas públicas. O princípio é idêntico ao dos ensaios clínicos na medicina: dividir aleatoriamente uma população em grupo de **tratamento** (que recebe a intervenção) e grupo de **controle** (que não recebe), e comparar os resultados.

Formalmente, queremos estimar o **efeito médio do tratamento** (*Average Treatment Effect*, ATE):

\[
\text{ATE} = E[Y_i(1) - Y_i(0)] \label{eq:22.5} \tag{22.5}
\]

onde \(Y_i(1)\) é o resultado do indivíduo \(i\) *se tratado* e \(Y_i(0)\) é o resultado *se não tratado*. O problema fundamental da inferência causal é que nunca observamos ambos os resultados potenciais para o mesmo indivíduo — o chamado **problema do contrafactual**. A randomização resolve esse problema garantindo que:

\[
E[Y_i(0) \mid \text{Tratado}] = E[Y_i(0) \mid \text{Controle}] \label{eq:22.6} \tag{22.6}
\]

isto é, o resultado contrafactual médio do grupo tratado (o que teria acontecido se *não* tivessem sido tratados) é igual ao resultado observado do grupo de controle. A diferença de médias entre os grupos identifica o ATE:

\[
\hat{\text{ATE}} = \bar{Y}_{\text{tratado}} - \bar{Y}_{\text{controle}} \label{eq:22.7} \tag{22.7}
\]

### 22.4.2 Estratificação, atrito e complicações práticas

Na prática, a randomização pura pode ser insuficiente, e vários problemas técnicos surgem:

**Estratificação (*stratification*).** Quando a amostra é heterogênea (rurais e urbanos, ricos e pobres), a randomização simples pode, por azar, gerar grupos desbalanceados. A estratificação resolve isso: primeiro divide-se a amostra em subgrupos (estratos) homogêneos, depois aleatoriza-se *dentro* de cada estrato. Isso garante que cada estrato tenha proporção semelhante de tratados e controles.

**Atrito (*attrition*).** Participantes podem abandonar o estudo — por mudança de endereço, desinteresse ou por escolha estratégica. Se o atrito é diferencial (mais tratados abandonam do que controles, ou vice-versa), a aleatorização é comprometida e o efeito estimado é enviesado. Pesquisadores monitoram taxas de atrito e realizam análises de robustez para verificar se o atrito é aleatório com respeito ao tratamento.

**ITT versus TOT.** Nem todos os tratados efetivamente recebem o tratamento (não-adesão: *non-compliance*). A estimativa baseada na atribuição aleatória — independentemente de quem efetivamente aderiu — é a **intenção de tratar** (*Intention-to-Treat*, ITT). Para estimar o efeito sobre quem efetivamente foi tratado — o **efeito do tratamento sobre os tratados** (*Treatment on the Treated*, TOT) — usa-se a atribuição aleatória como variável instrumental para a adesão efetiva:

\[
\text{TOT} = \frac{\text{ITT}}{\text{taxa de adesão}} \label{eq:22.8} \tag{22.8}
\]

Este é o estimador de Wald, que conecta RCTs com a econometria de variáveis instrumentais (Seção 22.5).

**Cálculos de poder (*power calculations*).** Antes de conduzir um RCT, o pesquisador calcula o tamanho mínimo da amostra necessário para detectar um efeito de magnitude plausível com probabilidade razoável (tipicamente 80%). A fórmula básica para um teste de diferença de médias é:

\[
n = \frac{2(z_{\alpha/2} + z_{\beta})^2 \sigma^2}{\delta^2} \label{eq:22.9} \tag{22.9}
\]

onde \(n\) é o tamanho da amostra por grupo, \(z_{\alpha/2}\) é o valor crítico para o nível de significância \(\alpha\), \(z_{\beta}\) é o valor crítico para o poder \(1 - \beta\), \(\sigma^2\) é a variância do resultado, e \(\delta\) é o efeito mínimo detectável (*minimum detectable effect*, MDE). Quanto menor o efeito que se deseja detectar, maior a amostra necessária.

!!! definition "Componentes de um RCT"
    | Componente | Descrição |
    |:-----------|:----------|
    | **Randomização** | Atribuição aleatória de indivíduos (ou clusters) ao tratamento |
    | **Grupo de controle** | Grupo que não recebe a intervenção — fornece o contrafactual |
    | **Estratificação** | Divisão prévia em subgrupos para garantir balanceamento |
    | **ITT** | Efeito estimado pela atribuição aleatória original (intenção de tratar) |
    | **TOT** | Efeito estimado sobre quem efetivamente recebeu o tratamento |
    | **Poder estatístico** | Probabilidade de detectar um efeito verdadeiro (tipicamente 80%) |
    | **Atrito** | Perda de participantes ao longo do estudo |
    | **Efeito de transbordamento** (*spillover*) | O tratamento afeta o grupo de controle indiretamente |

### 22.4.3 O Nobel de 2019: Banerjee, Duflo e Kremer

O Nobel de 2019 reconheceu a transformação que os RCTs trouxeram para a economia do desenvolvimento. O trabalho pioneiro de **Michael Kremer** começou no Quênia na década de 1990. Kremer e colegas testaram diversas intervenções educacionais: distribuição de livros didáticos, redução do tamanho das turmas, tratamento de vermes intestinais (*deworming*), e incentivos financeiros para professores. Os resultados revelaram que nem todas as intervenções "óbvias" funcionam:

- **Livros didáticos**: sem efeito significativo sobre o desempenho médio dos alunos — beneficiaram apenas os melhores alunos, pois os livros estavam em inglês e muitos alunos não tinham proficiência suficiente.
- **Desparasitação** (*deworming*): tratamento barato (US\$ 0,50/criança/ano) com efeitos enormes — redução de 25% no absenteísmo escolar e aumento de renda de 20% na vida adulta (acompanhamento de 10+ anos).
- **Incentivos para professores**: programas que vinculavam parte do salário ao desempenho dos alunos aumentaram significativamente as notas — mas programas que simplesmente contratavam mais professores sem alterar incentivos tiveram efeito limitado.

**Abhijit Banerjee e Esther Duflo** expandiram essa abordagem para dezenas de temas: microcrédito, vacinação, participação política, poupança, saúde preventiva e empreendedorismo. Seu livro *Poor Economics* (2011) sintetiza os achados em uma narrativa acessível: a pobreza não resulta de uma única causa macro, mas de uma multiplicidade de **armadilhas** (*poverty traps*) que podem ser identificadas e quebradas por intervenções micro bem desenhadas.

??? exercicio-resolvido "Exercício Resolvido 22.2 — Cálculo de poder de um RCT"
    **Enunciado.** Um pesquisador quer avaliar se a distribuição de mosquiteiros reduz a incidência de malária em uma região rural da África. A taxa base de malária é de 40% (sem tratamento). O pesquisador acredita que o mosquiteiro pode reduzir a incidência para 30% (efeito de 10 pontos percentuais). Deseja detectar esse efeito com nível de significância \(\alpha = 0{,}05\) e poder de 80% (\(\beta = 0{,}20\)).

    (a) Calcule a variância do resultado (variável binária).

    (b) Calcule o tamanho mínimo da amostra por grupo.

    (c) Se o custo por participante é de US\$ 15 (tratamento + monitoramento), qual é o custo total mínimo do estudo?

    ---

    **Solução.**

    **(a) Variância.**

    Para uma variável binária com probabilidade \(p\), a variância é \(\sigma^2 = p(1-p)\). Usando a média das proporções dos dois grupos:

    \[
    \bar{p} = \frac{0{,}40 + 0{,}30}{2} = 0{,}35
    \]

    \[
    \sigma^2 = \bar{p}(1 - \bar{p}) = 0{,}35 \times 0{,}65 = 0{,}2275
    \]

    **(b) Tamanho da amostra.**

    Com \(\alpha = 0{,}05\): \(z_{\alpha/2} = 1{,}96\). Com poder = 80%: \(z_{\beta} = 0{,}84\).

    \[
    n = \frac{2(1{,}96 + 0{,}84)^2 \times 0{,}2275}{(0{,}10)^2} = \frac{2 \times (2{,}80)^2 \times 0{,}2275}{0{,}01}
    \]

    \[
    n = \frac{2 \times 7{,}84 \times 0{,}2275}{0{,}01} = \frac{3{,}567}{0{,}01} \approx 357
    \]

    **São necessários pelo menos 357 participantes por grupo, ou 714 no total.**

    **(c) Custo total.**

    \[
    \text{Custo} = 714 \times 15 = \text{US\$ } 10.710
    \]

    Na prática, deve-se adicionar 15–20% para compensar atrito esperado: \(714 / 0{,}85 \approx 840\) participantes, custo de US\$ 12.600. Este é um RCT relativamente barato — o estudo original de desparasitação de Kremer custou menos de US\$ 50.000 e influenciou políticas que alcançaram milhões de crianças.

<iframe src="../graficos/cap22/poder-estatistico.html" title="Figura 22.2 — Poder Estatístico, Tamanho da Amostra e Tamanho do Efeito" class="graph-iframe"></iframe>

---

## 22.5 Experimentos Naturais e Quase-Experimentos

### 22.5.1 Quando a natureza (ou a política) fornece o experimento

Nem sempre é possível ou ético conduzir um experimento controlado. Mas às vezes a história, a geografia ou a política criam situações que *se assemelham* a um experimento: um grupo é "tratado" por circunstâncias que são plausivamente exógenas — isto é, não correlacionadas com as características dos indivíduos afetados. Esses são os **experimentos naturais** (*natural experiments*).

A diferença fundamental em relação aos RCTs é que o pesquisador **não controla** a aleatorização — ela é fornecida por alguma variação "como se fosse aleatória" no ambiente. A validade do método depende crucialmente da **plausibilidade da exogeneidade** — uma hipótese que pode ser argumentada e testada parcialmente, mas nunca provada definitivamente.

### 22.5.2 Diferenças em diferenças (Diff-in-Diff)

O método de **diferenças em diferenças** (DD ou DiD) compara a mudança no resultado de um grupo tratado com a mudança no resultado de um grupo de controle, antes e depois de uma intervenção:

\[
\hat{\tau}_{DD} = (\bar{Y}_{\text{tratado}}^{\text{depois}} - \bar{Y}_{\text{tratado}}^{\text{antes}}) - (\bar{Y}_{\text{controle}}^{\text{depois}} - \bar{Y}_{\text{controle}}^{\text{antes}}) \label{eq:22.10} \tag{22.10}
\]

A hipótese-chave é a de **tendências paralelas** (*parallel trends*): na ausência do tratamento, os dois grupos teriam seguido trajetórias semelhantes. A primeira diferença (antes/depois) elimina as diferenças fixas entre os grupos; a segunda diferença (tratado/controle) elimina choques comuns que afetam ambos os grupos.

**Exemplo clássico: Card e Krueger (1994) — salário mínimo.**

David Card e Alan Krueger estudaram o efeito do aumento do salário mínimo em New Jersey (de US\$ 4,25 para US\$ 5,05 em abril de 1992) sobre o emprego em restaurantes de fast food. O grupo de controle era a Pensilvânia oriental (vizinha, similar economicamente, mas sem aumento do salário mínimo). Usando dados de 410 restaurantes, entrevistados antes e depois do aumento, encontraram que:

\[
\hat{\tau}_{DD} = (+2{,}76) - (+0{,}07) = +2{,}70 \text{ empregos por restaurante}
\]

O resultado — contraintuitivo para a teoria neoclássica padrão (Capítulo 17, modelo competitivo de mercado de trabalho) — sugeria que o aumento do salário mínimo *aumentou* levemente o emprego, em vez de reduzi-lo. A explicação mais consistente envolve **poder de monopsônio**: se empregadores têm algum poder de mercado no mercado de trabalho (a lógica do poder de mercado do Capítulo 15, aplicada ao lado da demanda por trabalho do Capítulo 17), o salário mínimo pode *aumentar* emprego e salário simultaneamente, movendo o resultado em direção ao ponto competitivo.

!!! tip "Conexão com Capítulo 17"
    O resultado de Card e Krueger (1994) desafia diretamente o modelo competitivo de mercado de trabalho do Capítulo 17, que prevê que um salário mínimo acima do equilíbrio sempre reduz o emprego. A reconciliação teórica vem do modelo de **monopsônio** (poder de mercado do empregador): quando a firma enfrenta uma curva de oferta de trabalho ascendente (não perfeitamente elástica), ela paga abaixo do produto marginal do trabalho e emprega menos trabalhadores que o ótimo social. Um salário mínimo moderado pode então *aumentar* o emprego ao forçar a firma a pagar mais e contratar mais — até o ponto em que o salário mínimo excede o equilíbrio competitivo, quando o efeito negativo tradicional prevalece.

### 22.5.3 Regressão descontínua (RDD)

A **regressão descontínua** (*Regression Discontinuity Design*, RDD) explora descontinuidades em regras de elegibilidade: indivíduos logo acima e logo abaixo de um limiar (*cutoff*) são comparáveis em tudo, exceto pelo recebimento do tratamento. A ideia é que, em uma vizinhança estreita do limiar, a atribuição ao tratamento é "como se fosse aleatória".

Formalmente, seja \(X_i\) a variável de atribuição (*running variable*) e \(c\) o limiar. O tratamento é \(D_i = \mathbb{1}(X_i \geq c)\). O efeito local do tratamento no limiar é:

\[
\hat{\tau}_{RDD} = \lim_{x \downarrow c} E[Y_i \mid X_i = x] - \lim_{x \uparrow c} E[Y_i \mid X_i = x] \label{eq:22.11} \tag{22.11}
\]

isto é, a diferença nos resultados esperados imediatamente acima e abaixo do limiar. A hipótese-chave é a **continuidade**: todas as variáveis relevantes variam continuamente em torno do limiar, de modo que a única descontinuidade é o tratamento.

**Exemplo:** Muitos programas sociais brasileiros (incluindo o Bolsa Família) utilizam limiares de renda per capita para determinar a elegibilidade. Famílias com renda logo abaixo do limiar recebem o benefício; famílias logo acima não. Comparando famílias em uma janela estreita em torno do limiar, pesquisadores identificam o efeito causal do programa.

### 22.5.4 Variáveis instrumentais (IV)

O método de **variáveis instrumentais** (*Instrumental Variables*, IV) resolve o problema da endogeneidade usando uma variável \(Z\) — o **instrumento** — que afeta a variável endógena \(X\) mas não afeta diretamente o resultado \(Y\) (exceto através de \(X\)). Formalmente, o instrumento deve satisfazer:

1. **Relevância**: \(\text{Cov}(Z, X) \neq 0\) — o instrumento afeta a variável endógena.
2. **Exclusão**: \(\text{Cov}(Z, \varepsilon) = 0\) — o instrumento não afeta \(Y\) por outros canais além de \(X\).

O estimador IV é:

\[
\hat{\beta}_{IV} = \frac{\text{Cov}(Z, Y)}{\text{Cov}(Z, X)} \label{eq:22.12} \tag{22.12}
\]

**Exemplo clássico: Angrist e Krueger (1991) — retornos à educação.**

Joshua Angrist e Alan Krueger usaram o **trimestre de nascimento** como instrumento para anos de escolaridade. Nos Estados Unidos, leis de obrigatoriedade escolar exigem que os alunos permaneçam na escola até completar 16 anos. Como a idade de entrada na escola depende do trimestre de nascimento, alunos nascidos no primeiro trimestre podem legalmente abandonar a escola com menos anos de escolaridade do que alunos nascidos no quarto trimestre. O trimestre de nascimento é "como se fosse aleatório" (pais não planejam nascimentos com base em leis de escolaridade compulsória), satisfaz a condição de relevância (afeta anos de escolaridade), e plausivelmente satisfaz a condição de exclusão (não afeta salários por outros canais além da educação).

Os resultados indicaram retornos à educação de 7–10% por ano adicional de escolaridade — consistentes com, mas ligeiramente superiores a, estimativas por mínimos quadrados ordinários.

### 22.5.5 O Nobel de 2021: a revolução da credibilidade

O Nobel de 2021, concedido a Card, Angrist e Imbens, reconheceu não apenas resultados empíricos específicos, mas uma **mudança de paradigma** na forma como economistas fazem pesquisa empírica. Antes da "revolução da credibilidade" (*credibility revolution*), a pesquisa empírica em economia frequentemente utilizava regressões com muitas variáveis de controle, sem estratégia clara de identificação causal. Os trabalhos de Card (experimentos naturais), Angrist (variáveis instrumentais) e Imbens (estimação do LATE — *Local Average Treatment Effect*) estabeleceram um novo padrão: toda estimativa causal deve ser acompanhada de uma *estratégia de identificação* transparente e plausível.

!!! idea "Intuição Econômica"
    **Em uma frase:** A revolução da credibilidade transformou a economia empírica ao exigir que todo estudo causal apresente uma estratégia de identificação transparente — "como você sabe que é causal e não correlação?"

    **Pense assim:** Antes da revolução, economistas frequentemente argumentavam: "Controlei por renda, escolaridade, idade, região, e o coeficiente do salário mínimo sobre emprego é X." A crítica é: "Mas e os fatores que você *não* controlou? E se esses fatores estão correlacionados com o salário mínimo?" Depois da revolução, o padrão é: "Usei a variação exógena do limiar de New Jersey como quase-experimento, comparando com a Pensilvânia que não teve mudança. As tendências paralelas pré-tratamento confirmam a validade do design." A diferença não é técnica — é de *cultura científica*.

    **Por que isso importa:** Para o estudante de economia, a mensagem é: nunca confie em um estudo que reporta uma relação causal sem explicar *por que* a estimativa é causal. Pergunte sempre: "Qual é a estratégia de identificação? Quais são as hipóteses necessárias? Essas hipóteses são plausíveis?"

!!! box-mundo "Box Mundo 22.2 — A crise de replicação em economia experimental"

    **Contexto:** Em 2016, Colin Camerer e 23 coautores publicaram no *Science* os resultados de um ambicioso projeto de replicação: tentaram reproduzir 18 experimentos de laboratório publicados na *American Economic Review* e na *Quarterly Journal of Economics* entre 2011 e 2014 — dois dos periódicos mais prestigiosos da profissão.

    **Dados:** Usando amostras consideravelmente maiores que os estudos originais (em média 5 vezes), o projeto replicou o resultado original (com efeito significativo na mesma direção) em apenas **11 dos 18 estudos** (61%). Dos 7 que falharam, os efeitos estimados eram em média 33% menores que os originais. Os estudos que replicaram com sucesso tinham, em média, efeitos originais maiores e p-valores mais baixos.

    **Análise:** A taxa de replicação de 61% é preocupante, mas significativamente melhor que em psicologia (36% no projeto de replicação de 2015). As causas incluem: (i) **viés de publicação** — periódicos publicam preferencialmente resultados "significativos" e "surpreendentes", inflando artificialmente os efeitos; (ii) **práticas questionáveis de pesquisa** (*p-hacking*): testar múltiplas especificações até encontrar uma significativa; (iii) **amostras pequenas** que geram estimativas imprecisas e infladas. A resposta da profissão inclui pré-registro de hipóteses (registrar o plano de análise antes de ver os dados), relatórios registrados (*registered reports*), e exigência de replicação como condição de publicação.

    **Fonte:** Camerer, C. F. et al. 2016. Evaluating Replicability of Laboratory Experiments in Economics. *Science*, 351(6280), 1433–1436.

---

## 22.6 Desenho de Mecanismos Experimentais

As seções anteriores mostraram como diferentes métodos experimentais identificam efeitos causais. Agora voltamos ao laboratório para examinar uma aplicação diferente: usar experimentos não apenas para *testar* teorias, mas para *desenhar* instituições econômicas melhores — leilões, mercados e mecanismos de alocação.

### 22.6.1 Testando a teoria de leilões em laboratório

A teoria de leilões (Capítulo 9c) faz previsões precisas sobre como jogadores devem se comportar em diferentes formatos de leilão. O leilão de segundo preço (Vickrey), por exemplo, prevê que a estratégia dominante é dar lance igual ao verdadeiro valor. O leilão de primeiro preço prevê *bid shading* — lances abaixo do valor verdadeiro, com a margem de sombreamento dependendo do número de competidores e da distribuição de valores.

Os experimentos de laboratório testaram essas previsões extensivamente:

- **Leilão de segundo preço**: os participantes tendem a dar lances próximos do valor verdadeiro, mas com "excesso de lance" (*overbidding*) modesto. O overbidding é mais pronunciado quando as apostas são baixas e os participantes são inexperientes — consistente com uma combinação de aversão a perda e imprecisão nas estratégias.

- **Leilão de primeiro preço**: o bid shading observado é consistente com a teoria, mas os lances são sistematicamente *mais altos* que a previsão do equilíbrio de Nash com agentes neutros ao risco. A explicação mais aceita é a **aversão ao risco**: participantes avessos ao risco (Capítulo 7) dão lances mais altos para aumentar a probabilidade de vencer, sacrificando lucro esperado por segurança.

- **Teorema de equivalência de receita**: a previsão teórica de que leilões de primeiro e segundo preço geram a mesma receita esperada (com agentes neutros ao risco) é sistematicamente *violada* em laboratório: leilões de primeiro preço geram receita maior, consistente com a aversão ao risco dos participantes.

- **Maldição do vencedor** (*winner's curse*): em leilões de valor comum (todos os licitantes valorizam igualmente o bem, mas estimam seu valor com erro), o vencedor é tipicamente aquele com a estimativa mais otimista — e portanto mais enviesada. Experimentalmente, a maldição do vencedor é pronunciada: participantes frequentemente pagam mais do que o bem vale, especialmente quando há muitos competidores.

### 22.6.2 Design de mercados: troca de rins e matching

O Prêmio Nobel de 2012 foi concedido a **Alvin Roth** (junto com Lloyd Shapley) "pela teoria de alocações estáveis e a prática de desenho de mercados". Roth é talvez o melhor exemplo de economista que usou tanto a teoria formal quanto a experimentação para resolver problemas reais de desenho institucional.

O caso mais emblemático é o sistema de **troca de rins** (*kidney exchange*). O problema: muitos pacientes que precisam de transplante renal têm doadores vivos dispostos (geralmente familiares), mas o doador é incompatível com o receptor específico. A solução de mercado (comprar e vender rins) é proibida por lei na maioria dos países, por razões éticas. A solução de Roth e colegas foi desenhar um mecanismo de **troca pareada**: se o doador de A é compatível com B, e o doador de B é compatível com A, os doadores trocam — A recebe o rim do doador de B e vice-versa. O sistema foi expandido para cadeias maiores (A→B→C→...→A) e para cadeias abertas iniciadas por doadores altruístas.

!!! box-mundo "Box Mundo 22.3 — Alvin Roth e a troca de rins"

    **Contexto:** O New England Program for Kidney Exchange (NEPKE), desenhado por Roth, Sönmez e Ünver (2004), formalizou o primeiro mecanismo de troca renal sistematizado nos Estados Unidos. O algoritmo resolve um problema de **matching** (emparelhamento) com restrições de compatibilidade — formalmente análogo ao problema de casamento estável de Gale e Shapley (1962), mas com restrições médicas adicionais.

    **Dados:** Nos Estados Unidos, o sistema de troca de rins facilitou mais de 6.000 transplantes até 2024. Antes do sistema, esses pacientes teriam permanecido em uma lista de espera de 5–10 anos para um rim de doador falecido — com taxa de mortalidade na fila de 5–10% ao ano. A expansão para cadeias longas (iniciadas por doadores altruístas) multiplicou o número de transplantes possíveis: uma única cadeia pode beneficiar dezenas de pares incompatíveis.

    **Análise:** O sucesso do sistema de troca de rins ilustra como o **desenho de mecanismos** (Capítulo 9c) e a **teoria de matching** podem salvar vidas literalmente. O mecanismo resolve uma falha de mercado dupla: (i) a proibição legal de transações monetárias elimina o mecanismo de preços; (ii) a incompatibilidade bilateral impede trocas diretas. O algoritmo de Roth maximiza o número de transplantes possíveis, respeitando todas as restrições médicas e éticas. O caso demonstra que a microeconomia não é apenas descritiva — é uma ferramenta de engenharia social.

    **Fonte:** Roth, A. E.; Sönmez, T.; Ünver, M. U. 2004. Kidney Exchange. *Quarterly Journal of Economics*, 119(2), 457–488.

??? exercicio-resolvido "Exercício Resolvido 22.3 — Overbidding em leilão de segundo preço"
    **Enunciado.** Em um leilão de segundo preço com dois participantes, os valores são sorteados independentemente de uma distribuição uniforme em \([0, 100]\). O jogador 1 tem valor \(v_1 = 60\).

    (a) Mostre que, no equilíbrio de Nash, a estratégia dominante é \(b_i = v_i\) (dar lance igual ao valor).

    (b) Suponha que o jogador 1 dê um lance \(b_1 = 70 > v_1 = 60\) (overbidding). Calcule a probabilidade de que esse desvio cause prejuízo.

    (c) Calcule a perda esperada condicional ao evento em que o overbidding causa prejuízo.

    ---

    **Solução.**

    **(a) Estratégia dominante.**

    No leilão de segundo preço, o vencedor paga o segundo maior lance. Suponha que o jogador 1 dê lance \(b_1\).

    - Se \(b_1 > b_2\): jogador 1 vence e paga \(b_2\). Seu payoff é \(v_1 - b_2\).
    - Se \(b_1 < b_2\): jogador 1 perde. Payoff = 0.

    Se \(b_1 > v_1\) (overbidding): o jogador vence em casos adicionais onde \(v_1 < b_2 < b_1\), mas nesses casos paga \(b_2 > v_1\) e tem prejuízo. Se \(b_1 < v_1\) (underbidding): o jogador perde em casos onde \(b_1 < b_2 < v_1\), nos quais teria tido lucro positivo. Portanto, \(b_1 = v_1\) é a estratégia que nunca é pior — e às vezes é estritamente melhor — que qualquer outra. **É estratégia fracamente dominante.**

    **(b) Probabilidade de prejuízo.**

    O overbidding causa prejuízo quando o jogador 1 vence mas paga mais que seu valor: \(60 < b_2 < 70\). Como \(b_2 = v_2 \sim U[0, 100]\):

    \[
    P(\text{prejuízo}) = P(60 < v_2 < 70) = \frac{70 - 60}{100} = 0{,}10 = 10\%
    \]

    **(c) Perda esperada condicional.**

    Condicional a \(v_2 \in (60, 70)\), o valor de \(v_2\) é uniforme em \([60, 70]\). O prejuízo é \(v_2 - 60\). A perda esperada condicional é:

    \[
    E[v_2 - 60 \mid 60 < v_2 < 70] = E[v_2 \mid 60 < v_2 < 70] - 60 = 65 - 60 = 5
    \]

    **A perda esperada (incondicional) é:** \(0{,}10 \times 5 = 0{,}50\). Embora o prejuízo esperado do overbidding seja pequeno (R\$ 0,50 em expectativa), ele é estritamente positivo — confirmando que \(b_1 = v_1\) é a melhor resposta.

---

## 22.7 Limites e Controvérsias

O entusiasmo com os métodos experimentais não deve obscurecer suas limitações. Nesta seção final, examinamos três fronts de crítica que todo pesquisador experimental deve enfrentar: a replicabilidade dos resultados, o alcance dos RCTs e as questões éticas da experimentação com seres humanos.

### 22.7.1 A crise de replicação

Conforme discutido no Box Mundo 22.2, a taxa de replicação em economia experimental é de aproximadamente 61% (Camerer et al., 2016) — melhor que em psicologia, mas longe do ideal. Cabe aprofundar as causas e as respostas da profissão:

**Viés de publicação (*publication bias*).** Periódicos acadêmicos preferem resultados "significativos" e "surpreendentes". Estudos que encontram efeito nulo (*null results*) são menos publicáveis. Isso cria um viés sistemático: a literatura publicada sobrestima a magnitude dos efeitos.

**Práticas questionáveis de pesquisa (*questionable research practices*).** Incluem: (i) *p-hacking* — testar múltiplas especificações até encontrar uma significativa; (ii) *HARKing* (*Hypothesizing After Results are Known*) — formular hipóteses depois de ver os resultados, apresentando-as como se fossem a priori; (iii) exclusão seletiva de observações (*outlier fishing*) — remover dados que "não se encaixam" sem critério pré-estabelecido.

**Soluções em implementação.** A profissão respondeu com várias medidas: (i) **pré-registro** — depositar o plano de análise em um registro público (como o AEA RCT Registry) *antes* de ver os dados; (ii) **relatórios registrados** (*registered reports*) — periódicos avaliam o desenho do estudo antes da coleta de dados e comprometem-se a publicar independentemente dos resultados; (iii) **compartilhamento de dados e código** — permitir que outros pesquisadores verifiquem e repliquem os resultados.

### 22.7.2 A crítica de Deaton aos RCTs

**Angus Deaton** (Nobel de 2015) é o crítico mais proeminente da "RCT-mania" na economia do desenvolvimento. Suas críticas incluem:

1. **Validade externa limitada.** Um RCT que funciona no Quênia pode não funcionar na Índia — ou mesmo em outra região do Quênia. A randomização garante validade interna, mas não externa. Generalizações requerem teoria.

2. **Atomismo.** RCTs testam intervenções pontuais ("distribuir mosquiteiros", "dar livros") mas não capturam efeitos de equilíbrio geral. Se todos os aldeões recebem microcrédito, os preços e salários locais mudam — e o efeito para cada um difere do efeito medido quando apenas alguns recebem.

3. **Tecnocracia sem teoria.** Deaton argumenta que RCTs sem teoria são "ateoréticos": podem dizer *que* algo funciona, mas não *por quê*. Sem entender os mecanismos, não se pode prever se a intervenção funcionará em outro contexto.

4. **Questões éticas.** Negar tratamento a um grupo de controle é eticamente problemático quando a intervenção é potencialmente benéfica. O argumento de que "sem o experimento, ninguém teria recebido" é válido, mas não elimina o desconforto moral.

!!! warning "Limitações dos RCTs: a crítica de Deaton"
    RCTs são ferramentas poderosas para identificar efeitos causais **locais** — mas não substituem a teoria econômica. Três perguntas devem ser feitas antes de confiar cegamente em um RCT: (1) **Validade externa**: o resultado se aplica a outros contextos, populações e escalas? (2) **Equilíbrio geral**: o efeito mudaria se a intervenção fosse implementada universalmente (e não apenas para o grupo tratado)? (3) **Mecanismo causal**: *por que* a intervenção funciona? Sem respostas a essas perguntas, um RCT é um dado, não uma política.

### 22.7.3 Questões éticas

A experimentação com seres humanos — em economia como em medicina — levanta questões éticas fundamentais:

**Consentimento informado.** Nos experimentos de laboratório, os participantes sabem que estão em um estudo e consentem. Nos experimentos de campo natural (Harrison e List, tipo 4), os participantes podem não saber — e nesse caso, o consentimento informado é impossível. Comitês de ética (IRBs — *Institutional Review Boards*) avaliam caso a caso se o estudo pode ser conduzido sem consentimento.

**Grupo de controle e negação de tratamento.** Em um RCT sobre desparasitação, o grupo de controle não recebe tratamento durante o estudo. Se o tratamento é barato e eficaz, isso é eticamente justificável? A resposta padrão é que, sem o experimento, ninguém teria recebido o tratamento — portanto o grupo de controle não está pior do que estaria sem o estudo. Mas à medida que a evidência se acumula, continuar negando tratamento torna-se mais difícil de justificar.

**Experimentos com populações vulneráveis.** A maioria dos RCTs em desenvolvimento é conduzida em países pobres — e muitos dos pesquisadores são de países ricos. Críticos apontam uma assimetria de poder: as populações estudadas têm pouca voz na definição das perguntas de pesquisa e podem não se beneficiar dos resultados.

!!! box-brasil "Box Brasil 22.2 — CADE e experimentos em licitações"

    **Contexto:** O Conselho Administrativo de Defesa Econômica (CADE), responsável pela política antitruste no Brasil, tem utilizado ferramentas de economia experimental e análise de dados para detectar e combater cartéis em licitações públicas. Licitações são particularmente vulneráveis à colusão: o formato de lance selado e o pequeno número de participantes facilitam acordos de divisão de mercado e rodízio de vencedores.

    **Dados:** Em 2023, o CADE aplicou mais de R\$ 600 milhões em multas a cartéis detectados em licitações de obras públicas, transporte escolar e serviços de saúde. A ferramenta "Cérebro" (sistema de inteligência artificial do CADE) usa algoritmos de aprendizado de máquina treinados em dados históricos de licitações para identificar padrões suspeitos: lances artificialmente próximos, participação coordenada de empresas, rodízio de vencedores e padrões de cobertura (*cover bidding*) em que concorrentes submetem lances propositalmente altos para garantir a vitória do membro designado do cartel.

    **Análise:** A conexão com economia experimental é dupla. Primeiro, experimentos de laboratório sobre leilões e colusão (Capítulo 9c) geram previsões teóricas sobre como cartéis se comportam — previsões que os algoritmos de detecção exploram. Segundo, a teoria de leilões experimentais informa o **desenho de mecanismos** licitatórios que dificultem a colusão: leilões eletrônicos com muitas rodadas (que dificultam o rodízio pré-combinado), regras de lance mínimo (que reduzem a coordenação de preços), e compartilhamento de informações entre órgãos (que aumenta a probabilidade de detecção). A abordagem do CADE ilustra como a microeconomia experimental pode ser usada não apenas para produzir conhecimento acadêmico, mas para resolver problemas concretos de política pública.

    **Fonte:** CADE. 2023. *Relatório Anual do CADE 2022*. Brasília: Conselho Administrativo de Defesa Econômica.

!!! box-brasil "🇧🇷 Box Brasil 22.3 — Avaliação do Programa Mais Médicos via métodos experimentais"

    **Contexto:** O **Programa Mais Médicos (PMM)**, criado pela Lei n.º 12.871/2013, buscou enfrentar a escassez e a má distribuição de médicos no Brasil, especialmente em municípios do interior, periferias urbanas e áreas remotas. O programa trouxe mais de 18.000 médicos (a maioria cubanos, via acordo com a OPAS) para atuar em Unidades Básicas de Saúde (UBS) em mais de 4.000 municípios. A escala e a velocidade da implementação criaram uma "variação exógena" no acesso a médicos que pesquisadores exploraram como quase-experimento natural.

    **Dados:** Carrillo e Feres (2019, *World Development*) e outros estudos utilizaram designs de **diferenças-em-diferenças** (DiD) e **regressão descontínua** para avaliar o impacto do PMM. Os resultados indicam: (i) aumento de 33% nas consultas médicas em UBS nos municípios tratados; (ii) redução de 4–7% nas internações por condições sensíveis à atenção primária (ICSAP) — indicador-chave de qualidade da atenção básica; (iii) redução de 10% nas internações por doenças crônicas (hipertensão, diabetes) em municípios beneficiados; (iv) efeitos mais fortes em municípios com piores indicadores prévios (consistente com retornos decrescentes). Estudos de Matos e Nunes (2020, *Cadernos de Saúde Pública*) encontraram impactos positivos sobre mortalidade infantil em municípios do Norte e Nordeste: redução estimada de 1,5 a 2,5 mortes por mil nascidos vivos.

    **Análise:** A avaliação do PMM ilustra a aplicação dos métodos quase-experimentais discutidos na Seção 22.5. A atribuição de médicos seguiu critérios de vulnerabilidade municipal (índice composto do Ministério da Saúde), criando uma descontinuidade explorável: municípios logo acima e logo abaixo do limiar de elegibilidade são semelhantes em características observáveis, diferindo apenas na participação no programa. Essa é a lógica da regressão descontínua (Seção 22.5.3). O DiD complementa ao comparar a evolução temporal de municípios tratados e não tratados. Os desafios metodológicos incluem: (i) efeito de transbordamento (pacientes de municípios não tratados podem buscar atendimento nos tratados); (ii) viés de seleção residual (municípios que aderiram ao PMM podem diferir sistematicamente); (iii) a saída dos médicos cubanos em 2018 criou um segundo "choque" que permite estimar efeitos de reversão.

    **Para refletir:** A saída abrupta dos médicos cubanos em novembro de 2018 constitui um "experimento natural de reversão". Se os indicadores de saúde pioraram nos municípios que perderam médicos, isso reforça a causalidade do efeito original. Que tipo de design empírico você usaria para estimar esse efeito de reversão?

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O problema fundamental que motiva a economia experimental é:"
    - (a) A falta de dados econômicos no mundo real
    - (b) A endogeneidade: em dados observacionais, correlação não implica causalidade
    - (c) A impossibilidade de medir variáveis econômicas com precisão
    - (d) A complexidade dos modelos teóricos

    ??? success "Resposta"
        **(b)** Em dados observacionais, a variável de interesse (e.g., salário mínimo) é correlacionada com fatores não observados (e.g., condições econômicas locais) que também afetam o resultado (emprego). A randomização — seja em laboratório, campo ou por acidente histórico — resolve esse problema ao tornar o tratamento ortogonal aos fatores confundidores. As alternativas (a), (c) e (d) são problemas reais mas não são *o* problema fundamental que a economia experimental resolve.

??? question "2. A teoria do valor induzido de Vernon Smith funciona porque:"
    - (a) O pesquisador descobre as preferências verdadeiras dos participantes
    - (b) O pesquisador controla as preferências dos participantes via pagamentos monetários reais
    - (c) Os participantes sempre se comportam racionalmente em laboratório
    - (d) Os resultados de laboratório sempre se generalizam para o mundo real

    ??? success "Resposta"
        **(b)** A teoria do valor induzido não tenta descobrir preferências "verdadeiras" — ela as *cria* por meio de incentivos monetários. Se o pesquisador define que o comprador recebe \(v_i - p\) ao comprar, então o comprador se comporta *como se* tivesse valor \(v_i\), independentemente de suas preferências "reais" pelo bem. Isso permite construir curvas de oferta e demanda conhecidas e testar se o mecanismo de mercado as iguala. A alternativa (c) é falsa — muitos experimentos mostram desvios da racionalidade.

??? question "3. No experimento de Gneezy e Rustichini (2000) sobre multas em creches, os atrasos aumentaram após a introdução da multa porque:"
    - (a) A multa era muito alta e os pais ficaram revoltados
    - (b) A multa transformou uma obrigação moral em transação de mercado, destruindo a norma social
    - (c) Os funcionários da creche passaram a liberar as crianças mais cedo
    - (d) Os pais não foram informados sobre a multa

    ??? success "Resposta"
        **(b)** Antes da multa, o atraso era uma violação de norma social ("não é correto incomodar os funcionários"). A introdução da multa reframou o atraso como uma transação comercial ("estou pagando pelo direito de atrasar"). Como o incentivo financeiro era menor que o custo da inconveniência de chegar no horário, os atrasos aumentaram. Quando a multa foi removida, a norma social não retornou — o efeito foi irreversível.

??? question "4. A principal diferença entre um RCT e um experimento natural é:"
    - (a) O RCT usa dados reais e o experimento natural usa dados simulados
    - (b) No RCT, o pesquisador controla a aleatorização; no experimento natural, a variação exógena é fornecida pela história ou pela política
    - (c) O RCT é sempre mais confiável que o experimento natural
    - (d) Experimentos naturais só existem em ciências naturais

    ??? success "Resposta"
        **(b)** Em um RCT, o pesquisador decide quem recebe o tratamento (por sorteio). Em um experimento natural, a variação é fornecida por eventos exógenos — como a mudança do salário mínimo em New Jersey mas não na Pensilvânia (Card e Krueger, 1994) ou o trimestre de nascimento que afeta anos de escolaridade (Angrist e Krueger, 1991). A alternativa (c) é incorreta: um RCT mal desenhado pode ser menos confiável que um experimento natural bem explorado.

??? question "5. A crise de replicação em economia experimental refere-se ao fato de que:"
    - (a) Nenhum experimento econômico foi replicado com sucesso
    - (b) Cerca de 39% dos estudos testados por Camerer et al. (2016) não replicaram, levantando preocupações sobre viés de publicação e práticas questionáveis de pesquisa
    - (c) Os economistas se recusam a compartilhar seus dados
    - (d) Experimentos em economia são mais caros que em outras ciências

    ??? success "Resposta"
        **(b)** Camerer et al. (2016) tentaram replicar 18 experimentos de laboratório publicados em periódicos top e obtiveram sucesso em apenas 11 (61%). As causas incluem viés de publicação (periódicos preferem resultados significativos), p-hacking (testar múltiplas especificações), e amostras pequenas. A profissão respondeu com pré-registro de hipóteses, relatórios registrados e compartilhamento obrigatório de dados e código.

---

## 📋 Resumo do Capítulo

- **A economia experimental** nasceu da necessidade de superar o problema da endogeneidade em dados observacionais — a impossibilidade de distinguir correlação de causalidade sem aleatorização. Em pouco mais de meio século, passou de curiosidade marginal a pilar da pesquisa econômica, reconhecida com três Prêmios Nobel (2002, 2019, 2021).

- **Experimentos de laboratório** trazem participantes a ambientes controlados com incentivos monetários reais. A **teoria do valor induzido** de Vernon Smith permite ao pesquisador construir mercados com oferta e demanda conhecidas. Resultados clássicos: o leilão de dupla converge ao equilíbrio competitivo (confirmando a teoria); os jogos do ultimato e do ditador revelam preferências sociais (desafiando a hipótese de egoísmo); o jogo de bens públicos mostra cooperação parcial e eficácia da punição altruísta.

- **Experimentos de campo** (taxonomia de Harrison e List, 2004) combinam controle experimental com contexto natural, aumentando a validade externa. O experimento de Gneezy e Rustichini (2000) sobre multas em creches mostrou que incentivos monetários podem destruir normas sociais — com efeitos irreversíveis.

- **Ensaios controlados randomizados (RCTs)** aplicam a lógica experimental à avaliação de políticas públicas em larga escala. A randomização garante que o grupo de controle fornece o contrafactual correto. O Nobel de 2019 (Banerjee, Duflo, Kremer) reconheceu a transformação que os RCTs trouxeram para a economia do desenvolvimento — incluindo descobertas contraintuitivas sobre educação, saúde e microcrédito.

- **Experimentos naturais e quase-experimentos** exploram variações exógenas fornecidas pela história ou pela política. Os métodos incluem diferenças-em-diferenças (Card e Krueger, 1994: salário mínimo), regressão descontínua (limiares de elegibilidade) e variáveis instrumentais (Angrist e Krueger, 1991: trimestre de nascimento). O Nobel de 2021 reconheceu a "revolução da credibilidade" na econometria aplicada.

- **Desenho de mecanismos experimentais** testa a teoria de leilões em laboratório (overbidding, maldição do vencedor) e aplica matching theory a problemas reais como a troca de rins (Roth, Nobel 2012).

- **Limites e controvérsias** incluem a crise de replicação (Camerer et al., 2016: 61% de replicação), a crítica de Deaton aos RCTs (validade externa, equilíbrio geral, ateoricismo), e questões éticas (consentimento, negação de tratamento, assimetrias de poder).

## 🔑 Conceitos-Chave

<a id="tabela-22-1"></a>

| Conceito | Definição |
|----------|-----------|
| Endogeneidade | Correlação entre a variável explicativa e o termo de erro, impedindo identificação causal |
| Valor induzido | Técnica que permite ao experimentador criar preferências controladas via pagamentos monetários |
| Jogo do ultimato | Jogo em que um propositor divide uma quantia e o respondente aceita ou rejeita; testa preferências sociais |
| Jogo de bens públicos | Jogo de contribuição voluntária que testa o problema do carona e a cooperação |
| Leilão de dupla | Mecanismo em que compradores e vendedores submetem lances/ofertas simultaneamente; converge ao equilíbrio competitivo |
| Experimento de campo | Experimento conduzido no contexto natural dos participantes, com aleatorização controlada pelo pesquisador |
| RCT | Ensaio controlado randomizado — atribuição aleatória de tratamento para identificar efeitos causais |
| ATE | Efeito médio do tratamento — diferença esperada nos resultados entre tratados e não tratados |
| ITT | Intenção de tratar — estimativa baseada na atribuição aleatória original, independentemente da adesão |
| Diferenças em diferenças | Método que compara mudanças antes/depois entre grupos tratado e controle |
| Regressão descontínua | Método que explora descontinuidades em limiares de elegibilidade para identificar efeitos causais |
| Variáveis instrumentais | Método que usa uma variável exógena (instrumento) para resolver endogeneidade |
| Crise de replicação | Fenômeno em que estudos publicados não são reprodutíveis, causado por viés de publicação e práticas questionáveis |
| Validade interna | Capacidade do desenho experimental de atribuir o efeito observado ao tratamento |
| Validade externa | Capacidade de generalizar os resultados para outros contextos e populações |

<div class="caption-obj" markdown>
**Tabela 22.1 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-22-1"></a>**Exercício 22.1.** Em um experimento de valor induzido, 5 compradores têm valores de resgate \(v_B = \{20, 16, 12, 8, 4\}\) e 5 vendedores têm custos \(c_S = \{2, 6, 10, 14, 18\}\).

(a) Construa as curvas de oferta e demanda e determine o preço e a quantidade de equilíbrio competitivo.
(b) Calcule o excedente total no equilíbrio.
(c) Se o preço observado no experimento for \(p = 13\), calcule o excedente total realizado e a eficiência de mercado (razão excedente realizado / excedente máximo).
(d) Discuta o que Vernon Smith observou sobre a convergência de preços ao longo de múltiplas rodadas.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-1)

<a id="ex-22-2"></a>**Exercício 22.2.** No jogo do ultimato, o propositor tem R\$ 100 para dividir. A função utilidade do respondente é \(u_R(x) = x - \alpha \cdot \max\{50 - x, 0\}\), onde \(x\) é a oferta recebida e \(\alpha > 0\) mede a aversão à desigualdade.

(a) Para qual valor de \(\alpha\) o respondente é indiferente entre aceitar e rejeitar uma oferta de R\$ 20?
(b) Se \(\alpha = 2\), qual é a menor oferta que o respondente aceita?
(c) Sabendo disso, o que o propositor racional oferece?
(d) Compare com a previsão do modelo padrão (sem aversão à desigualdade) e com os dados experimentais.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-2)

<a id="ex-22-3"></a>**Exercício 22.3.** Em um jogo de bens públicos com \(N = 5\) jogadores, dotação \(w = 10\) e fator de multiplicação \(\alpha = 2{,}5\). O payoff é \(\pi_i = (10 - g_i) + \frac{2{,}5}{5}\sum_{j=1}^{5} g_j\).

(a) Mostre que o equilíbrio de Nash é \(g_i = 0\) para todo \(i\).
(b) Mostre que o ótimo social é \(g_i = 10\) para todo \(i\).
(c) Suponha que os jogadores possam, a um custo de R\$ 1, punir um jogador específico em R\$ 3. Mostre que, em um jogo de uma rodada, a punição não é usada no equilíbrio de Nash. Discuta por que, experimentalmente, a punição é amplamente observada.
(d) Em um jogo repetido infinitamente com fator de desconto \(\delta\), encontre o \(\delta\) mínimo para sustentar \(g_i = 10\) com estratégia de gatilho (trigger strategy).

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-3)

<a id="ex-22-4"></a>**Exercício 22.4.** Um pesquisador quer avaliar o efeito de um programa de treinamento sobre a renda de trabalhadores. A renda média dos participantes após o treinamento é R\$ 2.800; a renda média dos não participantes é R\$ 2.200.

(a) Podemos concluir que o efeito do treinamento é de R\$ 600? Explique por que esse estimador é enviesado.
(b) Se o pesquisador randomiza a participação (RCT), sob quais condições a diferença de médias identifica o ATE?
(c) Suponha que 20% dos atribuídos ao tratamento não participem (non-compliance). Se a diferença de médias observada (ITT) é R\$ 480, estime o TOT.
(d) Discuta um cenário em que o ITT seria preferível ao TOT para formulação de política pública.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-4)

<a id="ex-22-5"></a>**Exercício 22.5.** No estudo de Card e Krueger (1994), os dados de emprego em restaurantes fast food são:

| | NJ (tratamento) | PA (controle) |
|:--|:----------------|:--------------|
| Antes | 20,44 | 23,33 |
| Depois | 21,03 | 21,17 |

(a) Calcule o estimador de diferenças-em-diferenças.
(b) Interprete o resultado economicamente.
(c) Qual hipótese-chave é necessária para que o estimador DD identifique o efeito causal?
(d) Apresente um argumento contra e um a favor da plausibilidade dessa hipótese neste contexto.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-5)

<a id="ex-22-6"></a>**Exercício 22.6.** Um programa social concede benefício a famílias com renda per capita abaixo de R\$ 600. O pesquisador observa os seguintes resultados médios para frequência escolar:

| Renda per capita | Frequência escolar (%) |
|:-----------------|:----------------------|
| R\$ 550–R\$ 600 (beneficiários) | 92 |
| R\$ 600–R\$ 650 (não beneficiários) | 87 |

(a) Estime o efeito do programa por regressão descontínua.
(b) Qual hipótese de identificação é necessária?
(c) Por que famílias com renda de R\$ 590 e R\$ 610 são comparáveis (mas famílias com R\$ 300 e R\$ 900 não)?
(d) Discuta uma ameaça à validade: e se famílias manipularem sua renda declarada para ficar abaixo do limiar?

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-6)

<a id="ex-22-7"></a>**Exercício 22.7.** Um pesquisador quer estimar o efeito da educação sobre salários, mas educação é endógena (pessoas mais habilidosas estudam mais e ganham mais). Ele propõe usar a distância até a universidade mais próxima como variável instrumental.

(a) Argumente por que a distância satisfaz a condição de relevância.
(b) Argumente por que a distância pode (ou não) satisfazer a condição de exclusão.
(c) Se a regressão do primeiro estágio mostra que cada 100 km de distância reduz a escolaridade em 0,5 anos, e a forma reduzida mostra que cada 100 km de distância reduz o salário em 4%, estime o retorno à educação por IV.
(d) Compare com a estimativa por MQO e discuta a direção do viés.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-7)

<a id="ex-22-8"></a>**Exercício 22.8.** Em um leilão de primeiro preço com 3 participantes, os valores são sorteados independentemente de \(U[0, 100]\).

(a) Derive a função de lance de equilíbrio simétrico (neutro ao risco): \(b(v) = \frac{N-1}{N} v\).
(b) Calcule o lance de equilíbrio para um participante com \(v = 60\) e \(N = 3\).
(c) Se os participantes experimentais dão lance médio de \(b = 45\) quando \(v = 60\) (em vez dos \(40\) previstos), isso é consistente com aversão ao risco ou propensão ao risco? Explique.
(d) Discuta a implicação para o teorema de equivalência de receita.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-8)

<a id="ex-22-9"></a>**Exercício 22.9.** Um hospital tem 4 pares doador-receptor incompatíveis para transplante renal:

| Par | Doador tipo sanguíneo | Receptor tipo sanguíneo |
|:----|:---------------------|:-----------------------|
| A | O | B |
| B | B | A |
| C | A | O |
| D | AB | A |

(Compatibilidade simplificada: O doa para todos; A doa para A e AB; B doa para B e AB; AB doa só para AB.)

(a) Quais trocas diretas (ciclos de 2) são possíveis?
(b) Encontre a alocação que maximiza o número de transplantes (pode incluir ciclos de 3 ou mais).
(c) Se um doador altruísta de tipo O inicia uma cadeia, quantos transplantes adicionais são possíveis?
(d) Relacione com o conceito de eficiência de Pareto (Capítulo 14) e discuta por que o mecanismo de preços é proibido.

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-9)

<a id="ex-22-10"></a>**Exercício 22.10.** Um pesquisador conduz um RCT com 500 participantes (250 tratados, 250 controles) e encontra efeito de \(\hat{\tau} = 3{,}2\) com erro padrão \(SE = 1{,}5\).

(a) Calcule a estatística \(t\) e o p-valor (bilateral) aproximado. O resultado é "significativo" a 5%?
(b) Se o pesquisador tivesse testado 20 hipóteses e reportado apenas a significativa, qual é a probabilidade de um falso positivo (com correção de Bonferroni)?
(c) Outro pesquisador tenta replicar com amostra de 1.000 e encontra \(\hat{\tau} = 1{,}8\) com \(SE = 0{,}7\). Compare os resultados.
(d) Discuta como o pré-registro de hipóteses ajudaria a resolver a preocupação do item (b).

[:material-arrow-right: Ver solução](../solucoes/cap22.md#ex-22-10)

---

## 🏆 Vem, ANPEC!

As questões a seguir são formuladas no estilo ANPEC (itens Verdadeiro ou Falso). Cada item deve ser classificado como **V** ou **F**.

??? question "Questão estilo ANPEC — Métodos Experimentais e Inferência Causal"
    Com relação aos métodos experimentais e à inferência causal em economia, julgue os itens:

    **(0)** Em um ensaio controlado randomizado (RCT) com randomização perfeita, a diferença de médias entre grupo de tratamento e grupo de controle é um estimador não-enviesado do efeito médio do tratamento (ATE).

    **(1)** O método de diferenças-em-diferenças requer que os grupos de tratamento e controle tenham o mesmo nível do resultado antes da intervenção.

    **(2)** Em um jogo de bens públicos com \(N\) jogadores, dotação \(w\), e fator de multiplicação \(\alpha\) tal que \(1 < \alpha < N\), o equilíbrio de Nash com agentes egoístas é contribuição zero — embora a contribuição total seja socialmente ótima.

    **(3)** A teoria do valor induzido de Vernon Smith requer que o experimentador conheça as preferências "verdadeiras" dos participantes para que o experimento seja válido.

    **(4)** O estimador de variáveis instrumentais é consistente se o instrumento satisfaz as condições de relevância (correlação com a variável endógena) e exclusão (não correlação com o termo de erro da equação estrutural).

    ??? success "Gabarito"
        **Respostas: V-F-V-F-V**

        **Justificativa por item:**

        - **Item 0 — V:** A randomização garante que \(E[Y(0) \mid \text{Tratado}] = E[Y(0) \mid \text{Controle}]\), eliminando o viés de seleção. A diferença de médias identifica \(E[Y(1) - Y(0)] = \text{ATE}\).

        - **Item 1 — F:** O DD requer **tendências paralelas** (*parallel trends*), não níveis iguais. Os grupos podem ter níveis diferentes do resultado antes da intervenção — o método compara *mudanças*, não níveis. A primeira diferença elimina diferenças fixas entre os grupos.

        - **Item 2 — V:** Como \(\alpha/N < 1\), o retorno marginal privado da contribuição é menor que 1 (cada real contribuído retorna menos de R\$ 1 para o contribuinte). Logo, a estratégia dominante é não contribuir. Porém, como \(\alpha > 1\), cada real contribuído gera mais de R\$ 1 de benefício total — tornando a contribuição total socialmente ótima.

        - **Item 3 — F:** A grande virtude da teoria do valor induzido é justamente *não* precisar conhecer preferências verdadeiras. O experimentador *induz* preferências controladas via pagamentos monetários. O participante se comporta como se tivesse o valor atribuído, independentemente de suas preferências "reais".

        - **Item 4 — V:** Relevância: \(\text{Cov}(Z, X) \neq 0\). Exclusão: \(\text{Cov}(Z, \varepsilon) = 0\). Sob essas condições, o estimador IV, \(\hat{\beta}_{IV} = \text{Cov}(Z,Y)/\text{Cov}(Z,X)\), converge em probabilidade para o parâmetro verdadeiro.

??? question "Questão estilo ANPEC — Economia Experimental e Resultados Clássicos"
    Com relação aos resultados experimentais clássicos e suas implicações para a teoria econômica, julgue os itens:

    **(0)** No jogo do ultimato, o equilíbrio de Nash perfeito em subjogos com preferências egoístas prevê que o propositor oferece a menor quantia possível e o respondente aceita — uma previsão consistentemente rejeitada pelos dados experimentais.

    **(1)** O experimento de Gneezy e Rustichini (2000) demonstrou que a introdução de multas monetárias por atraso em creches reduziu os atrasos, confirmando a lei da demanda.

    **(2)** A "maldição do vencedor" em leilões de valor comum é uma previsão teórica que foi confirmada experimentalmente: participantes frequentemente pagam mais do que o bem vale, especialmente quando o número de licitantes é grande.

    **(3)** Os resultados do leilão de dupla de Vernon Smith (1962) contradizem a teoria do equilíbrio competitivo: os preços não convergem para o preço de equilíbrio, mesmo após múltiplas rodadas.

    **(4)** O estudo de Card e Krueger (1994) sobre o salário mínimo em New Jersey utilizou o método de diferenças-em-diferenças, comparando restaurantes de fast food em NJ (tratamento) com restaurantes na Pensilvânia (controle), antes e depois do aumento do salário mínimo.

    ??? success "Gabarito"
        **Respostas: V-F-V-F-V**

        **Justificativa por item:**

        - **Item 0 — V:** O equilíbrio por indução retroativa prevê oferta mínima/aceitação, pois qualquer quantia positiva é melhor que zero para o respondente. Experimentalmente, ofertas modais são de 40–50% e ofertas abaixo de 20% são rejeitadas em ~50% dos casos, contradizendo a previsão.

        - **Item 1 — F:** O resultado foi o oposto: os atrasos *aumentaram* após a introdução da multa. A multa substituiu uma norma social (obrigação moral de não atrasar) por uma transação de mercado (pagamento pelo "direito" de atrasar), enfraquecendo a motivação intrínseca.

        - **Item 2 — V:** Em leilões de valor comum, o vencedor é aquele com a estimativa mais otimista (enviesada para cima). Experimentos confirmam que participantes frequentemente incorrem na maldição do vencedor, especialmente com muitos competidores e pouca experiência.

        - **Item 3 — F:** O resultado de Smith (1962) *confirmou* a teoria: o leilão de dupla converge rapidamente ao equilíbrio competitivo, mesmo com poucos participantes. Este é um dos resultados mais robustos da economia experimental.

        - **Item 4 — V:** Card e Krueger compararam a mudança no emprego em NJ (onde o salário mínimo subiu) com a mudança em PA (onde não subiu): \(\hat{\tau}_{DD} = (\Delta NJ) - (\Delta PA)\). A hipótese de identificação é que NJ e PA seguiriam tendências paralelas de emprego na ausência do aumento.

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Smith, V. L. (1962). An Experimental Study of Competitive Market Behavior. *Journal of Political Economy*, 70(2), 111–137.](https://doi.org/10.1086/258609)"
    **Pergunta central:** Mercados descentralizados convergem ao equilíbrio competitivo previsto pela teoria walrasiana, mesmo com poucos participantes e informação limitada?

    **Método:** Smith recrutou estudantes de graduação e atribuiu a cada um valores de resgate (compradores) ou custos de produção (vendedores) via a teoria do valor induzido. Os participantes negociavam em um formato de leilão de dupla contínuo: compradores anunciavam lances de compra e vendedores anunciavam ofertas de venda; uma transação ocorria quando um lance igualava ou superava uma oferta. O experimento foi repetido por múltiplas rodadas ("períodos"), com os mesmos parâmetros.

    **Resultado principal:** Os preços convergiram para o equilíbrio competitivo teórico em 3 a 5 rodadas, mesmo com apenas 5 compradores e 5 vendedores. A eficiência de mercado (excedente realizado / excedente máximo) atingiu 95–100% rapidamente. O resultado foi surpreendente porque a teoria do equilíbrio competitivo assume um grande número de agentes e informação perfeita — condições violadas no experimento.

    **Relevância para o capítulo:** Este é o artigo fundador da economia experimental moderna. Smith mostrou que a "mão invisível" funciona em laboratório — mas que o *mecanismo institucional* (leilão de dupla vs. negociação bilateral) importa crucialmente para o resultado. O artigo conecta com o Capítulo 13 (equilíbrio competitivo) e com o Capítulo 9c (mecanismos de leilão).

??? pesquisa "[Harrison, G. W.; List, J. A. (2004). Field Experiments. *Journal of Economic Literature*, 42(4), 1009–1055.](https://doi.org/10.1257/0022051043004577)"
    **Pergunta central:** Como devemos classificar os diferentes tipos de experimentos econômicos, e quais são os trade-offs entre controle e realismo?

    **Método:** Os autores propõem uma taxonomia de seis dimensões (amostra, informação, bem, tarefa, ambiente, apostas) que gera quatro categorias: laboratório convencional, laboratório artefactual, campo emoldurado e campo natural. Revisam a literatura para cada categoria, comparando validade interna e externa.

    **Resultado principal:** Cada tipo de experimento tem vantagens comparativas para diferentes perguntas. O laboratório convencional é ideal para testar previsões teóricas com controle total; o campo natural é ideal para avaliar políticas com máximo realismo. A taxonomia não é hierárquica — não há um tipo "melhor" — mas funcional: a escolha depende da pergunta.

    **Relevância para o capítulo:** O artigo fornece o arcabouço organizacional da Seção 22.3 e influenciou decisivamente a forma como a profissão pensa sobre os trade-offs da economia experimental. A distinção entre "os participantes sabem que estão em um experimento?" é particularmente importante para lidar com efeitos de demanda.

??? pesquisa "[Banerjee, A.; Duflo, E.; Goldberg, N.; Karlan, D.; Osei, R.; Parienté, W.; Shapiro, J.; Thuysbaert, B.; Udry, C. (2015). A Multifaceted Program Causes Lasting Progress for the Very Poor: Evidence from Six Countries. *Science*, 348(6236).](https://doi.org/10.1126/science.1260799)"
    **Pergunta central:** Um programa multifacetado de combate à pobreza extrema — que combina transferência de ativos, treinamento, suporte de consumo, acesso a poupança e coaching — pode gerar impactos duradouros para os mais pobres do mundo?

    **Método:** RCT simultâneo em seis países (Etiópia, Gana, Honduras, Índia, Paquistão, Peru) com o mesmo protocolo de intervenção adaptado a cada contexto. O programa "graduação" (*graduation program*), baseado no modelo do BRAC (Bangladesh), oferece um pacote integrado: (i) transferência de ativo produtivo (animal, insumos); (ii) treinamento em habilidades; (iii) suporte de consumo temporário; (iv) acesso a poupança; (v) visitas regulares de coaching por 18–24 meses.

    **Resultado principal:** Em todos os seis países, o programa gerou aumentos significativos e duradouros em consumo, renda, ativos e bem-estar psicológico — medidos três anos após o início (um ano após o fim da intervenção). Os efeitos persistiram e, em alguns casos, cresceram após o término do suporte. O custo-benefício foi positivo em todos os países.

    **Relevância para o capítulo:** Este é um dos exemplos mais poderosos de RCT multi-país, demonstrando que a metodologia experimental pode produzir evidência generalizável quando replicada em contextos diversos. O estudo também ilustra a complementaridade entre transferências (incentivos) e capacitação (capital humano) — conectando com os Capítulos 17 (trabalho) e 19 (informação).

??? pesquisa "[Camerer, C. F.; Dreber, A.; Forsell, E.; Ho, T.-H.; Huber, J.; Johannesson, M.; ... Hang, W. (2016). Evaluating Replicability of Laboratory Experiments in Economics. *Science*, 351(6280), 1433–1436.](https://doi.org/10.1126/science.aaf0918)"
    **Pergunta central:** Os resultados de experimentos de laboratório publicados nos periódicos mais prestigiosos de economia são replicáveis?

    **Método:** Seleção de 18 estudos experimentais publicados na AER e na QJE entre 2011 e 2014. Cada estudo foi replicado com amostras muito maiores (em média 5x) e seguindo protocolos idênticos aos originais. O sucesso foi definido como efeito significativo na mesma direção, a 5%.

    **Resultado principal:** 11 dos 18 estudos (61%) replicaram com sucesso. Os 7 que falharam tinham efeitos originais menores e p-valores mais altos. Os efeitos replicados eram, em média, 66% do tamanho dos efeitos originais — sugerindo que os efeitos publicados são inflados pelo viés de publicação.

    **Relevância para o capítulo:** O estudo é central para a Seção 22.7 (crise de replicação). Demonstra que mesmo periódicos top publicam resultados não replicáveis, motivando as reformas metodológicas (pré-registro, registered reports, compartilhamento de dados) que estão transformando a prática da economia experimental.

??? pesquisa "[Card, D.; Krueger, A. B. (1994). Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania. *American Economic Review*, 84(4), 772–793.](https://www.jstor.org/stable/2118030)"
    **Pergunta central:** O aumento do salário mínimo reduz o emprego, conforme prevê o modelo competitivo de mercado de trabalho?

    **Método:** Exploração de um experimento natural: em abril de 1992, New Jersey aumentou seu salário mínimo de US\$ 4,25 para US\$ 5,05, enquanto o estado vizinho da Pensilvânia manteve o salário mínimo federal de US\$ 4,25. Os autores entrevistaram 410 restaurantes de fast food em NJ e PA, antes e depois do aumento, e aplicaram o estimador de diferenças-em-diferenças.

    **Resultado principal:** O emprego em restaurantes de fast food em NJ não caiu — e pode ter aumentado ligeiramente (+2,7 empregos por restaurante vs. controle). O resultado contradiz a previsão do modelo competitivo mas é consistente com o modelo de monopsônio, em que empregadores com poder de mercado pagam abaixo do produto marginal e empregam menos trabalhadores que o ótimo.

    **Relevância para o capítulo:** Este é provavelmente o experimento natural mais influente da história da economia. Demonstra como a exploração de variação exógena (diferença de política entre estados vizinhos) pode gerar evidência causal sobre questões fundamentais — e como resultados empíricos podem desafiar previsões teóricas amplamente aceitas. O estudo contribuiu para o Nobel de Card em 2021.

---

!!! tip "🤖 Exercício com IA"
    **IA.9 — Simulando o jogo de bens públicos**

    Peça à IA para simular um jogo de bens públicos com \(N = 10\) jogadores, dotação \(w = 20\), e fator de multiplicação \(\alpha = 2\). Peça para ela: (1) calcular o equilíbrio de Nash e o ótimo social; (2) simular 10 rodadas com jogadores que começam contribuindo 50% e ajustam suas contribuições gradualmente em direção à melhor resposta; (3) plotar a evolução das contribuições ao longo das rodadas. Compare com os dados experimentais típicos (cooperação inicial que decai para ~20% na rodada final).

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-9)

---

## 📚 Referências do Capítulo

- Angrist, J. D.; Krueger, A. B. 1991. Does Compulsory School Attendance Affect Schooling and Earnings? *Quarterly Journal of Economics*, 106(4), 979–1014.
- Banerjee, A. V.; Duflo, E. 2011. [*Poor Economics: A Radical Rethinking of the Way to Fight Global Poverty*](https://books.google.com.br/books?id=2kl3W0IEDXAC). New York: PublicAffairs.
- Banerjee, A. V.; Duflo, E.; Goldberg, N.; Karlan, D.; Osei, R.; Parienté, W.; Shapiro, J.; Thuysbaert, B.; Udry, C. 2015. A Multifaceted Program Causes Lasting Progress for the Very Poor: Evidence from Six Countries. *Science*, 348(6236).
- Barbosa, A. L. N. H.; Corseuil, C. H. L. 2014. Bolsa Família, Escolha Ocupacional e Informalidade no Brasil. *Texto para Discussão IPEA*, n. 1948.
- CADE. 2023. [*Relatório Anual do CADE 2022*](https://www.gov.br/cade). Brasília: Conselho Administrativo de Defesa Econômica.
- Camerer, C. F.; Dreber, A.; Forsell, E.; et al. 2016. Evaluating Replicability of Laboratory Experiments in Economics. *Science*, 351(6280), 1433–1436.
- Card, D.; Krueger, A. B. 1994. Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania. *American Economic Review*, 84(4), 772–793.
- Chamberlin, E. H. 1948. An Experimental Study of the Theory of Monopolistic Competition. *Journal of Political Economy*, 56(2), 95–108.
- De Brauw, A.; Gilligan, D. O.; Hoddinott, J.; Roy, S. 2015. Bolsa Família and Household Labor Supply. *Economic Development and Cultural Change*, 63(3), 423–457.
- Deaton, A. 2010. Instruments, Randomization, and Learning about Development. *Journal of Economic Literature*, 48(2), 424–455.
- Duflo, E.; Glennerster, R.; Kremer, M. 2007. Using Randomization in Development Economics Research: A Toolkit. In: Schultz, T. P.; Strauss, J. (Eds.), *Handbook of Development Economics*, Vol. 4. Amsterdam: Elsevier.
- Fehr, E.; Gächter, S. 2000. Cooperation and Punishment in Public Goods Experiments. *American Economic Review*, 90(4), 980–994.
- Friedman, D.; Cassar, A. 2004. [*Economics Lab: An Intensive Course in Experimental Economics*](https://books.google.com.br/books?id=1rZCAAAAQBAJ). London: Routledge.
- Gneezy, U.; Rustichini, A. 2000. A Fine Is a Price. *Journal of Legal Studies*, 29(1), 1–17.
- Güth, W.; Schmittberger, R.; Schwarze, B. 1982. An Experimental Analysis of Ultimatum Bargaining. *Journal of Economic Behavior & Organization*, 3(4), 367–388.
- Harrison, G. W.; List, J. A. 2004. Field Experiments. *Journal of Economic Literature*, 42(4), 1009–1055.
- Kagel, J. H.; Roth, A. E. (Eds.). 1995. [*The Handbook of Experimental Economics*](https://books.google.com.br/books?id=hm9QCwAAQBAJ). Princeton: Princeton University Press.
- Roth, A. E.; Sönmez, T.; Ünver, M. U. 2004. Kidney Exchange. *Quarterly Journal of Economics*, 119(2), 457–488.
- Smith, V. L. 1962. An Experimental Study of Competitive Market Behavior. *Journal of Political Economy*, 70(2), 111–137.
- Smith, V. L. 1976. Experimental Economics: Induced Value Theory. *American Economic Review*, 66(2), 274–279.
- Soares, F. V.; Ribas, R. P.; Osório, R. G. 2010. Evaluating the Impact of Brazil's Bolsa Família. *Latin American Research Review*, 45(2), 173–190.
