# Capítulo 24 — Quanto Vale Um Pôr do Sol? (Não, Sério, Quanto?)

Por que a temperatura média do planeta subiu mais de 1,1°C desde a era pré-industrial — e continua subindo? Por que empresas poluem mais do que a sociedade gostaria? Por que é tão difícil proteger florestas tropicais, mesmo quando todos concordam que sua destruição é uma catástrofe? E por que economistas gastam tanto tempo discutindo taxas de desconto quando o futuro do planeta está em jogo? Essas perguntas — urgentes, complexas e profundamente interligadas — são o objeto da **economia ambiental**, o campo que aplica as ferramentas da microeconomia para analisar a relação entre atividade econômica e meio ambiente.

O Capítulo 20 introduziu os conceitos fundamentais: externalidades, bens públicos, impostos pigouvianos e o Teorema de Coase. Aqueles conceitos são os alicerces sobre os quais este capítulo se constrói. Aqui, avançamos em três direções. Primeiro, aprofundamos a análise dos **instrumentos de política ambiental** — comparando impostos, mercados de permissões de emissão e regulação direta, com atenção especial ao resultado clássico de Weitzman (1974) sobre preços versus quantidades sob incerteza. Segundo, enfrentamos o maior desafio ambiental do século XXI: as **mudanças climáticas**, uma externalidade global e intergeracional que desafia os instrumentos tradicionais de política pública. Analisamos o custo social do carbono, o debate Nordhaus–Stern sobre taxas de desconto (conectando com o Capítulo 18), os mercados de carbono em operação (EU ETS, RGGI) e os mecanismos emergentes de ajuste de fronteira (CBAM). Terceiro, discutimos a **valoração ambiental** — como atribuir valor econômico a bens que não têm preço de mercado (ar limpo, biodiversidade, paisagem) — e a economia dos **recursos naturais**, da regra de Hotelling à contabilidade verde.

O tratamento combina formalização rigorosa com exemplos reais e conexões explícitas com capítulos anteriores — especialmente externalidades e bens públicos (Capítulo 20), teoria dos preços e preferência revelada (Capítulo 4), disposição a pagar (Capítulo 5), escolha intertemporal e taxa de desconto (Capítulo 18) e tragédia dos comuns (Capítulo 20). A literatura acadêmica central inclui Nordhaus (2017) para o modelo DICE e o custo social do carbono, Weitzman (1974) para a comparação preços versus quantidades, Stavins (1998) para os mercados de permissões, Stern (2007) para a economia das mudanças climáticas e Greenstone, Kopits e Wolverton (2013) para a estimação do custo social do carbono. Para tratamentos de livro-texto, ver Kolstad (2011), Tietenberg e Lewis (2018) e Perman et al. (2011).

---

## 24.1 Das Externalidades à Política Ambiental

### 24.1.1 Pigou revisitado: o caso da poluição

No Capítulo 20, vimos que uma externalidade negativa de produção gera uma divergência entre o custo marginal privado (CMgP) e o custo marginal social (CMgS):

\[
\text{CMgS}(q) = \text{CMgP}(q) + \text{CMgE}(q) \label{eq:24.1} \tag{24.1}
\]

onde \(\text{CMgE}(q)\) é o custo marginal externo — o dano adicional que cada unidade de produção impõe à sociedade. No contexto ambiental, esse dano pode ser poluição do ar, contaminação da água, emissão de gases de efeito estufa ou degradação de ecossistemas.

A firma que maximiza lucro iguala \(\text{CMgP} = p\), produzindo \(q^M\) (quantidade de mercado). O ótimo social requer \(\text{CMgS} = p\), resultando em \(q^* < q^M\). A diferença \(q^M - q^*\) é a **sobreprodução** causada pela externalidade — o mercado produz "demais" porque o preço não reflete o custo ambiental total.

A solução pigouviana, como vimos, é impor um imposto \(t = \text{CMgE}(q^*)\) que "internaliza" a externalidade, fazendo com que a firma enfrente o custo social completo. Mas na prática, como o governo implementa essa correção? Essa pergunta nos leva à distinção fundamental entre duas abordagens de política ambiental.

### 24.1.2 Comando e controle vs. instrumentos de mercado

Quando o governo decide combater a poluição, ele enfrenta uma escolha que lembra a diferença entre um general e um leiloeiro. O general dá ordens: "Fábrica A, reduza 50 toneladas; Fábrica B, idem." O leiloeiro cria um preço e deixa cada um decidir quanto vale a pena reduzir. Na economia ambiental, essas duas filosofias recebem nomes técnicos — e a diferença entre elas pode significar bilhões de reais.

As políticas ambientais podem ser classificadas em duas grandes categorias:

!!! definition "Regulação de comando e controle (command-and-control)"
    Abordagem regulatória em que o governo estabelece **padrões** (limites de emissão, tecnologias obrigatórias, proibições) e **fiscaliza** seu cumprimento. Exemplos: limite máximo de emissão de material particulado por chaminé; obrigatoriedade de catalisador em veículos; proibição de CFC. O regulador especifica *o que* deve ser feito (ou *quanto* pode ser emitido) para cada firma individualmente.

!!! definition "Instrumentos de mercado (market-based instruments)"
    Abordagem em que o governo altera os **incentivos econômicos** dos agentes, permitindo que o mercado encontre a alocação de menor custo. Exemplos: imposto sobre emissões (taxa pigouviana); mercado de permissões de emissão negociáveis (cap-and-trade); subsídios à adoção de tecnologias limpas. O regulador define o *preço* ou a *quantidade total* de poluição, mas deixa que os agentes decidam *como* reduzir suas emissões.

A vantagem central dos instrumentos de mercado é a **eficiência de custos** (*cost-effectiveness*). Para entender por que, considere o seguinte exemplo.

**Exemplo 24.1.** Duas fábricas emitem cada uma 100 toneladas de \(\text{CO}_2\). O governo quer reduzir as emissões totais em 100 toneladas. A Fábrica A tem custo marginal de abatimento \(\text{CMgA}_A = 2e_A\) (onde \(e_A\) é a redução em toneladas) e a Fábrica B tem \(\text{CMgA}_B = 4e_B\).

**Sob comando e controle** (redução uniforme): cada fábrica reduz 50 toneladas.

\[
\text{Custo}_A = \int_0^{50} 2e \, de = 2{.}500; \quad \text{Custo}_B = \int_0^{50} 4e \, de = 5{.}000
\]

Custo total: **7.500**.

**Sob instrumento de mercado** (imposto ou cap-and-trade): a alocação eficiente iguala os custos marginais de abatimento: \(2e_A = 4e_B\), com \(e_A + e_B = 100\). Resolvendo: \(e_A = 66{,}7\) e \(e_B = 33{,}3\).

\[
\text{Custo}_A = \int_0^{66,7} 2e \, de \approx 4{.}449; \quad \text{Custo}_B = \int_0^{33,3} 4e \, de \approx 2{.}222
\]

Custo total: **6.671** — uma economia de 11% em relação ao comando e controle.

O resultado é geral: quando os custos marginais de abatimento diferem entre firmas, a alocação de menor custo requer que a redução seja maior nas firmas com custos menores. Instrumentos de mercado alcançam essa alocação automaticamente, sem que o regulador precise conhecer os custos individuais de cada firma.

!!! idea "Intuição Econômica"
    **Em uma frase:** Instrumentos de mercado são superiores à regulação direta porque permitem que as firmas com menor custo de abatimento façam a maior parte da redução — minimizando o custo total para a sociedade.

    **Pense assim:** Imagine que você quer que uma turma de 30 alunos colete 300 kg de lixo de uma praia. Regulação de comando e controle: cada aluno coleta exatamente 10 kg. Instrumento de mercado: distribua "créditos de lixo" e deixe que os alunos mais eficientes (mais fortes, com melhor equipamento) coletem mais e vendam créditos para os menos eficientes. O resultado final é o mesmo (300 kg coletados), mas o custo total (esforço) é menor.

    **Por que isso importa:** A economia ambiental real envolve milhares de firmas com custos de abatimento muito diferentes. A regulação uniforme pode ser 2 a 10 vezes mais cara que instrumentos de mercado para atingir a mesma meta ambiental — e essa diferença de custo pode determinar a viabilidade política de políticas climáticas ambiciosas.

### 24.1.3 Propriedade do direito e o problema da implementação

O Teorema de Coase (Capítulo 20) nos ensinou que, com custos de transação zero e direitos de propriedade bem definidos, a negociação privada resolve externalidades de forma eficiente. Mas na prática ambiental, três obstáculos tornam a solução coaseana impraticável para a maioria dos problemas:

1. **Número de agentes**: a poluição do ar afeta milhões de pessoas — os custos de negociação entre uma usina termoelétrica e 10 milhões de moradores são proibitivos.

2. **Não-excludibilidade**: ar limpo é um bem público (Capítulo 20). Mesmo que houvesse negociação, o problema do carona (*free rider*) impediria contribuições voluntárias suficientes.

3. **Informação assimétrica**: firmas conhecem seus custos de abatimento, mas o regulador não. Cidadãos sofrem danos de saúde, mas é difícil quantificá-los e prová-los em juízo. Essa assimetria (Capítulo 19) contamina tanto a negociação coaseana quanto o desenho de políticas.

Essas dificuldades fundamentam a necessidade de intervenção governamental — e nos levam à escolha entre os dois grandes instrumentos de mercado: impostos e mercados de permissões.

---

## 24.2 Instrumentos de Mercado: Impostos vs. Cap-and-Trade

### 24.2.1 Imposto pigouviano sobre poluição

Voltamos ao velho Pigou — mas agora com as mangas arregaçadas, pronto para a implementação. A ideia, como vimos no Capítulo 20, é elegante: se poluir é de graça, todo mundo polui demais; se poluir custa dinheiro, cada um pensa duas vezes. O imposto pigouviano aplicado à poluição funciona assim: o governo define um imposto \(t\) por unidade de emissão. Cada firma reduz suas emissões até o ponto em que o custo marginal de abatimento iguala o imposto:

\[
\text{CMgA}_i(e_i^*) = t \quad \forall i \label{eq:24.2} \tag{24.2}
\]

Como todas as firmas enfrentam o mesmo imposto \(t\), seus custos marginais de abatimento se igualam no equilíbrio — exatamente a condição de eficiência de custos. A firma com custo de abatimento baixo reduz mais (é mais barato do que pagar o imposto); a firma com custo alto reduz menos (prefere pagar o imposto).

**Vantagens do imposto pigouviano:**

- **Eficiência de custos**: iguala custos marginais de abatimento entre firmas.
- **Incentivo dinâmico**: mesmo após cumprir a meta, cada unidade adicional de emissão custa \(t\) — incentivando inovação contínua em tecnologias mais limpas.
- **Receita fiscal**: gera receita para o governo, que pode ser usada para reduzir outros impostos distorcivos (o "duplo dividendo" — ver 24.2.4).
- **Simplicidade administrativa**: uma vez fixado o imposto, cada firma decide autonomamente quanto abater.

**Limitações:**

- O governo precisa estimar o dano marginal \(\text{CMgE}\) para fixar \(t\) no nível correto — informação que tipicamente não possui.
- Se o imposto é muito baixo, a poluição excede o nível eficiente; se muito alto, o custo econômico é excessivo.
- A quantidade total de emissões não é conhecida com certeza *ex ante* — depende da resposta das firmas ao imposto.

### 24.2.2 Cap-and-trade: mercado de permissões de emissão

No sistema cap-and-trade, o governo:

1. **Define um teto (cap)**: a quantidade total máxima de emissões permitidas, \(\bar{E}\).
2. **Distribui permissões**: cada permissão autoriza a emissão de uma unidade (tipicamente uma tonelada de \(\text{CO}_2\)). As permissões podem ser distribuídas gratuitamente (*grandfathering*) ou leiloadas.
3. **Permite negociação (trade)**: as firmas podem comprar e vender permissões em um mercado secundário.

No equilíbrio do mercado de permissões, o preço da permissão \(p_E\) se ajusta para igualar oferta (fixa em \(\bar{E}\)) e demanda (soma das emissões desejadas). Cada firma emite até o ponto em que:

\[
\text{CMgA}_i(e_i^*) = p_E \quad \forall i \label{eq:24.3} \tag{24.3}
\]

Note a simetria com a equação $\eqref{eq:24.2}$: o preço da permissão funciona exatamente como o imposto pigouviano. A alocação final é a mesma — independente de como as permissões foram distribuídas inicialmente (resultado análogo ao Teorema de Coase). A distribuição inicial afeta apenas a *distribuição de renda* entre firmas, não a *eficiência*.

!!! definition "Cap-and-trade (sistema de comércio de emissões)"
    Instrumento de política ambiental que: (i) fixa a **quantidade total** de emissões permitidas (cap); (ii) distribui permissões negociáveis que autorizam a emissão de uma unidade; (iii) permite que firmas **comprem e vendam** permissões em mercado aberto. O preço de equilíbrio da permissão iguala automaticamente os custos marginais de abatimento entre firmas, garantindo eficiência de custos. Exemplos: EU ETS (Europa), RGGI (nordeste dos EUA), mercado de carbono chinês.

No gráfico interativo abaixo, compare o imposto pigouviano com o cap-and-trade. Alterne entre os dois instrumentos e ajuste os parâmetros para ver como cada um corrige a externalidade.

<iframe src="../graficos/cap24/imposto-pigou.html" title="Figura 24.1 — Imposto Pigouviano vs Cap-and-Trade" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 24.1 — Imposto Pigouviano vs Cap-and-Trade.** Alterne entre os dois instrumentos. No modo imposto, ajuste \(t\) até igualar o custo externo \(e\) para restaurar a eficiência. No modo cap-and-trade, ajuste o cap até \(Q^*\) e observe que o preço da permissão converge para o imposto ótimo.
</div>

### 24.2.3 Weitzman (1974): preços vs. quantidades sob incerteza

Em um mundo de informação perfeita, imposto e cap-and-trade são equivalentes: o governo pode fixar o imposto \(t^*\) correspondente ao nível eficiente de emissões \(\bar{E}^*\), ou fixar \(\bar{E}^*\) e deixar o mercado determinar o preço \(p_E = t^*\). O resultado é idêntico.

Martin Weitzman, em seu artigo seminal de 1974, demonstrou que essa equivalência **se rompe sob incerteza** — quando o regulador não conhece com precisão os custos de abatimento das firmas. A intuição é fundamental:

- **Com imposto (instrumento de preço)**: o preço da poluição é fixo (\(t\)), mas a quantidade de emissões é incerta — depende de como as firmas respondem ao imposto, e essa resposta depende dos custos de abatimento que o regulador desconhece.

- **Com cap-and-trade (instrumento de quantidade)**: a quantidade de emissões é fixa (\(\bar{E}\)), mas o preço da permissão é incerto — depende da interação entre oferta fixa e demanda incerta.

Qual é preferível? Weitzman mostrou que a resposta depende das **inclinações relativas** das curvas de benefício marginal da redução de emissões (BMg) e custo marginal de abatimento (CMgA):

\[
\text{Preferir preço (imposto) se: } \quad |BMg'| < |CMgA'| \label{eq:24.4} \tag{24.4}
\]

\[
\text{Preferir quantidade (cap) se: } \quad |BMg'| > |CMgA'| \label{eq:24.5} \tag{24.5}
\]

A lógica é elegante:

- Se a curva de **benefício marginal é relativamente plana** (o dano de poluição varia pouco com a quantidade), errar na quantidade não é tão custoso — mas errar no custo para as firmas pode ser muito caro. Nesse caso, é melhor fixar o preço (imposto) e deixar a quantidade flutuar.

- Se a curva de **benefício marginal é muito inclinada** (há um limiar de dano catastrófico), errar na quantidade é muito perigoso — é melhor fixar a quantidade (cap) e aceitar volatilidade de preço.

!!! warning "Mudanças climáticas e o argumento de Weitzman para quantidades"
    O caso das mudanças climáticas apresenta um argumento poderoso para instrumentos de quantidade (cap). Se existem **limiares climáticos** (*tipping points*) — pontos a partir dos quais o aquecimento desencadeia processos irreversíveis (colapso da calota polar, liberação de metano do permafrost) —, a curva de dano marginal torna-se extremamente inclinada próximo a esses limiares. Nessa situação, a equação $\eqref{eq:24.5}$ se aplica: é preferível garantir o teto de emissões (mesmo com volatilidade de preço) do que fixar o preço e arriscar ultrapassar um limiar catastrófico. Esse argumento foi formalmente desenvolvido por Weitzman (2009) no contexto de "fat tails" (caudas pesadas) na distribuição de danos climáticos.

### 24.2.4 O duplo dividendo da tributação ambiental

Um argumento influente a favor de impostos ambientais é o chamado **duplo dividendo**:

1. **Primeiro dividendo (ambiental)**: o imposto reduz a poluição, melhorando a qualidade ambiental.
2. **Segundo dividendo (fiscal)**: a receita do imposto ambiental pode ser usada para *reduzir* outros impostos que distorcem a economia (imposto de renda, contribuições sobre folha de pagamento), gerando ganhos de eficiência adicionais.

Formalmente, se o sistema tributário existente já gera perdas de eficiência (peso morto), e se a receita do imposto ambiental substitui parte desses impostos distorcivos, o custo líquido da política ambiental pode ser menor do que o custo bruto de abatimento — ou até negativo (a reforma fiscal *mais que compensa* o custo ambiental).

!!! idea "Intuição Econômica"
    **Em uma frase:** Impostos ambientais podem gerar um "bônus" fiscal ao substituir impostos distorcivos — reduzindo simultaneamente a poluição e a ineficiência tributária.

    **Pense assim:** O governo precisa arrecadar R\$ 100 bilhões. Pode fazer isso cobrando imposto sobre a renda do trabalho (que desestimula o trabalho) ou sobre emissões de carbono (que desestimula a poluição). Se a receita ambiental substitui parte do imposto sobre o trabalho, o governo arrecada o mesmo, mas agora desestimula algo ruim (poluição) em vez de algo bom (trabalho). É como matar dois coelhos com uma cajadada só.

    **Por que isso importa:** O argumento do duplo dividendo torna políticas climáticas mais atraentes politicamente, pois permite reduzir outros impostos impopulares. Na prática, a Colúmbia Britânica (Canadá) implementou um imposto de carbono "revenue-neutral" em 2008, devolvendo toda a receita na forma de reduções do imposto de renda e corporativo.

### 24.2.5 Quando usar cada instrumento? Uma síntese

A tabela abaixo sintetiza os critérios de escolha:

| Critério | Imposto (preço) | Cap-and-trade (quantidade) |
|:---------|:----------------|:---------------------------|
| Certeza sobre emissões | Não (quantidade incerta) | Sim (cap fixo) |
| Certeza sobre custo | Sim (custo = imposto) | Não (preço do mercado flutua) |
| Preferível quando... | Dano marginal relativamente constante | Dano marginal cresce rapidamente (limiares) |
| Receita fiscal | Direta (arrecadação certa) | Depende: leilão gera receita; grandfathering não |
| Incentivo à inovação | Forte (sempre custa emitir) | Moderado (depende do preço futuro da permissão) |
| Volatilidade de preço | Nenhuma | Pode ser alta (solução: price floor/ceiling) |
| Coordenação internacional | Mais simples (cada país fixa seu imposto) | Mais complexa (linking de mercados) |

Na prática, sistemas híbridos são comuns: cap-and-trade com piso e teto de preço (*price collar*), combinando a certeza de quantidade do cap com limites à volatilidade de preço.

---

## 24.3 Economia das Mudanças Climáticas

### 24.3.1 A maior externalidade do mundo

Se as externalidades que analisamos até aqui — a fábrica que polui o rio, a chaminé que suja o ar do bairro — são como buracos no telhado de uma casa, as mudanças climáticas são o equivalente a uma rachadura estrutural no planeta inteiro. As mudanças climáticas representam, nas palavras de Nicholas Stern, "o maior fracasso de mercado que o mundo já viu". As características econômicas do problema são excepcionais:

1. **Externalidade global**: uma tonelada de \(\text{CO}_2\) emitida em Cubatão causa o mesmo dano climático que uma tonelada emitida em Xangai. Não há como "localizar" a poluição — o problema é inerentemente planetário.

2. **Horizonte intergeracional**: o \(\text{CO}_2\) persiste na atmosfera por séculos. As emissões de hoje causam danos que se estendem por gerações futuras que não participam das decisões atuais.

3. **Incerteza radical**: os modelos climáticos preveem aquecimento de 1,5°C a 4,5°C para uma duplicação da concentração de \(\text{CO}_2\), mas eventos de cauda (*tail risks*) — aquecimento de 6°C ou mais — não podem ser descartados.

4. **Irreversibilidade**: alguns impactos (extinção de espécies, derretimento de geleiras, elevação do nível do mar) são efetivamente irreversíveis em escalas de tempo humanas.

5. **Problema de ação coletiva**: como o clima é um bem público global (Capítulo 20), cada país tem incentivo para ser *free rider* — beneficiar-se das reduções alheias sem arcar com os custos.

Essas características fazem das mudanças climáticas um problema de externalidade *maximamente difícil*: global (não local), intertemporal (não estático), incerto (não determinístico), irreversível (não reversível) e com incentivos para carona (não cooperativo).

### 24.3.2 O custo social do carbono (SCC)

O **custo social do carbono** (SCC — *social cost of carbon*) é o conceito central da economia climática. Mede o dano econômico total (presente e futuro, em todo o mundo) causado pela emissão de uma tonelada adicional de \(\text{CO}_2\) hoje:

\[
\text{SCC} = \sum_{t=0}^{T} \frac{D_t(\Delta E)}{(1 + r)^t} \label{eq:24.6} \tag{24.6}
\]

onde \(D_t(\Delta E)\) é o dano marginal no período \(t\) causado por uma unidade adicional de emissão hoje, \(r\) é a taxa de desconto e \(T\) é o horizonte temporal (tipicamente centenas de anos).

O SCC é, em essência, o **imposto pigouviano ótimo** sobre carbono — o valor que, se cobrado por tonelada de \(\text{CO}_2\), internalizaria a externalidade climática e levaria a economia ao nível eficiente de emissões. É também a referência para análise de custo-benefício de qualquer política climática: uma regulação que reduz emissões a um custo por tonelada inferior ao SCC gera benefícios líquidos positivos.

As estimativas do SCC variam enormemente dependendo de três parâmetros cruciais: (i) a sensibilidade climática (quanto o aquecimento responde às emissões); (ii) a função de dano (quanto o aquecimento reduz o PIB); e (iii) a taxa de desconto. A estimativa do governo dos EUA (IWG, 2021) é de aproximadamente **US\$ 51 por tonelada de \(\text{CO}_2\)** (em dólares de 2020, taxa de desconto de 3%). Estimativas com taxas de desconto mais baixas podem ultrapassar US\$ 200/tCO₂.

!!! definition "Custo social do carbono (SCC)"
    O **custo social do carbono** é o valor presente dos danos econômicos futuros causados pela emissão de uma tonelada adicional de \(\text{CO}_2\). Equivale ao imposto pigouviano ótimo sobre carbono. A estimação do SCC requer um **modelo de avaliação integrada** (IAM) que combine modelos climáticos (relação emissões → aquecimento) com modelos econômicos (relação aquecimento → danos). As estimativas são extremamente sensíveis à taxa de desconto, à sensibilidade climática e à especificação da função de dano.

### 24.3.3 O modelo DICE de Nordhaus

William Nordhaus, Prêmio Nobel de 2018, desenvolveu o primeiro e mais influente modelo de avaliação integrada: o **DICE** (*Dynamic Integrated model of Climate and the Economy*). O DICE conecta quatro módulos:

1. **Módulo econômico**: um modelo de crescimento de Ramsey (Capítulo 18) que determina consumo, investimento e produção global como função do capital, trabalho e tecnologia.

2. **Módulo de emissões**: as emissões de \(\text{CO}_2\) são proporcionais à produção, reduzidas pela intensidade de carbono da economia e por investimentos em abatimento.

3. **Módulo climático**: converte emissões acumuladas em concentração atmosférica de \(\text{CO}_2\) e em aumento de temperatura, com base em modelos geofísicos simplificados.

4. **Módulo de danos**: traduz o aumento de temperatura em perda de PIB, via uma função de dano quadrática:

\[
\Omega(T) = \frac{1}{1 + \pi_1 T + \pi_2 T^2} \label{eq:24.7} \tag{24.7}
\]

onde \(T\) é o aumento de temperatura em relação ao nível pré-industrial e \(\pi_1, \pi_2 > 0\) são parâmetros calibrados. A fração do PIB perdida cresce mais que proporcionalmente com a temperatura.

O planejador social no modelo DICE maximiza o bem-estar intertemporal:

\[
W = \sum_{t=0}^{T} \frac{L(t) \cdot u(c(t))}{(1 + \rho)^t} \label{eq:24.8} \tag{24.8}
\]

onde \(L(t)\) é a população, \(c(t)\) é o consumo per capita, \(u(\cdot)\) é a utilidade (com aversão ao risco \(\eta\) na função CRRA: \(u(c) = c^{1-\eta}/(1-\eta)\)), e \(\rho\) é a taxa pura de preferência temporal.

A trajetória ótima de abatimento no modelo DICE de Nordhaus (2017) sugere uma **redução gradual** das emissões, começando com um imposto de carbono modesto (cerca de US\$ 35/tCO₂ em 2020) que cresce ao longo do tempo, atingindo aproximadamente US\$ 100/tCO₂ em 2050. A meta de temperatura ótima resultante é de cerca de 3,5°C de aquecimento até 2100 — bem acima da meta de 2°C do Acordo de Paris.

### 24.3.4 Stern vs. Nordhaus: o debate da taxa de desconto

O **Stern Review** (2007), encomendado pelo governo britânico, chegou a conclusões radicalmente diferentes: recomendou ação imediata e agressiva para limitar o aquecimento a 2°C, com investimento de 1–2% do PIB global em mitigação — muito mais do que o modelo DICE sugere. A diferença fundamental está na **taxa de desconto**.

Recorde do Capítulo 18 a equação de Ramsey para a taxa de desconto social:

\[
r = \rho + \eta \cdot g \label{eq:24.9} \tag{24.9}
\]

onde \(\rho\) é a taxa pura de preferência temporal (quanto "descontamos" o futuro simplesmente por ser futuro), \(\eta\) é a elasticidade marginal da utilidade do consumo (medida de aversão à desigualdade intergeracional), e \(g\) é a taxa de crescimento do consumo per capita.

| Parâmetro | Nordhaus | Stern |
|:----------|:---------|:------|
| \(\rho\) (preferência temporal) | 1,5% | 0,1% |
| \(\eta\) (aversão à desigualdade) | 2 | 1 |
| \(g\) (crescimento) | ~2% | ~1,3% |
| **\(r\) (taxa de desconto)** | **~5,5%** | **~1,4%** |

Com \(r = 5{,}5\%\), danos daqui a 100 anos têm valor presente de apenas 0,5% do valor nominal. Com \(r = 1{,}4\%\), o valor presente é 25% — 50 vezes maior. Essa diferença explica quase toda a divergência nas recomendações de política.

!!! idea "Intuição Econômica"
    **Em uma frase:** A taxa de desconto determina quanto valorizamos o futuro — e pequenas diferenças nesse parâmetro geram enormes divergências nas recomendações de política climática.

    **Pense assim:** Imagine que uma catástrofe climática causará um dano de R\$ 100 trilhões daqui a 100 anos. Quanto vale investir hoje para evitá-la? Com taxa de desconto de 5%, o valor presente é R\$ 760 bilhões — significativo, mas gerenciável. Com taxa de 1,4%, o valor presente é R\$ 25 trilhões — uma emergência planetária que justifica ação imediata e maciça. O dano futuro é o mesmo; o que muda é quanto nos importamos com as gerações futuras.

    **Por que isso importa:** O debate Nordhaus–Stern não é técnico — é fundamentalmente ético. Nordhaus adota uma abordagem "descritiva" (a taxa de desconto reflete o comportamento observado dos mercados financeiros). Stern adota uma abordagem "prescritiva" (é eticamente injustificável descontar o bem-estar de gerações futuras). Ambos estão certos dentro de suas premissas — e a escolha entre eles depende de valores, não de ciência.

### 24.3.5 O Acordo de Paris e as NDCs

O **Acordo de Paris** (2015) estabeleceu o framework internacional para ação climática:

- **Meta**: limitar o aquecimento global a "bem abaixo de 2°C" em relação ao nível pré-industrial, com esforços para limitá-lo a 1,5°C.
- **NDCs** (*Nationally Determined Contributions*): cada país define voluntariamente suas metas de redução de emissões. Não há mecanismo coercitivo — o acordo depende de pressão dos pares e revisão periódica.
- **Revisão quinquenal**: as NDCs são revisadas a cada 5 anos, com expectativa de "ambição crescente" (*ratchet mechanism*).

Do ponto de vista da teoria econômica, o Acordo de Paris é uma tentativa de resolver o problema de ação coletiva (Capítulo 20) através de um mecanismo de compromisso voluntário. A ausência de enforcement é sua maior fraqueza: as NDCs atuais, mesmo se plenamente cumpridas, levariam a um aquecimento de aproximadamente 2,5–2,8°C até 2100 — muito acima da meta declarada.

!!! box-mundo "Box Mundo 24.1 — O Acordo de Paris como jogo de bens públicos"

    **Contexto:** O Acordo de Paris (2015) é o principal instrumento internacional de combate às mudanças climáticas. Assinado por 196 países na COP21, estabelece a meta de limitar o aquecimento global a "bem abaixo de 2°C" (idealmente 1,5°C) em relação ao nível pré-industrial.

    **Dados:** As NDCs apresentadas pelos países antes da COP28 (2023) implicavam emissões globais de ~52 GtCO₂e em 2030 — quando o necessário para a meta de 1,5°C seria ~22 GtCO₂e. O "gap de emissões" (diferença entre NDCs e meta) permanece enorme. Os 10 maiores emissores (China, EUA, Índia, UE, Rússia, Japão, Brasil, Indonésia, Irã, Canadá) respondem por ~70% das emissões globais.

    **Análise:** Formalmente, a mitigação climática é um jogo de bens públicos com \(N \approx 200\) jogadores (países). Como vimos no Capítulo 20, o equilíbrio de Nash de um jogo de contribuição voluntária prevê subprovisão — cada país contribui menos do que o ótimo coletivo porque internaliza apenas sua fração \(1/N\) do benefício global. O Acordo de Paris tenta superar esse equilíbrio ineficiente por meio de transparência (cada país publica suas NDCs), revisão periódica (pressão por ambição crescente) e normas sociais internacionais. Mas sem mecanismo coercitivo, os incentivos para *free riding* persistem — como evidenciado pelo gap crescente entre metas e ações.

    **Fonte:** UNEP. 2023. [*Emissions Gap Report 2023*](https://www.unep.org/resources/emissions-gap-report-2023). Nairobi: United Nations Environment Programme.

---

## 24.4 Mercados de Carbono

### 24.4.1 O EU ETS: o maior mercado de carbono do mundo

A teoria é bonita no quadro-negro — mas funciona na prática? A Europa decidiu descobrir. O **European Union Emissions Trading System** (EU ETS), lançado em 2005, é o maior e mais antigo mercado de carbono obrigatório do mundo. Cobre cerca de 40% das emissões de gases de efeito estufa da UE, incluindo setores de energia, indústria pesada e, desde 2012, aviação intra-europeia.

**Fases do EU ETS:**

- **Fase I (2005–2007)**: "aprendizado". Alocação excessiva de permissões → preço colapsou para zero em 2007. Lição: o cap precisa ser restritivo.
- **Fase II (2008–2012)**: coincidiu com a crise financeira → queda na atividade industrial → excesso de permissões → preço caiu para ~€3/tCO₂.
- **Fase III (2013–2020)**: introdução de leilão como método primário de alocação; Reserva de Estabilidade de Mercado (MSR) para absorver excesso de permissões.
- **Fase IV (2021–2030)**: meta de redução de 62% nas emissões cobertas (em relação a 2005); preço atingiu ~€90/tCO₂ em 2023; extensão gradual a setores de transporte e edificações.

A história do preço do EU ETS é instrutiva: de ~€30 em 2005, colapsou para €0 em 2007, flutuou entre €3 e €30 de 2008 a 2018, e disparou para €50–100 entre 2021 e 2023. Essa volatilidade ilustra o argumento de Weitzman: instrumentos de quantidade geram incerteza de preço, o que dificulta o planejamento de investimentos de longo prazo em descarbonização.

!!! box-mundo "Box Mundo 24.2 — O EU ETS: lições de três décadas de mercado de carbono"

    **Contexto:** O EU ETS cobre mais de 10.000 instalações industriais e de energia em 30 países (UE + EEE), responsáveis por cerca de 1,4 bilhão de toneladas de CO₂ por ano — aproximadamente 36% das emissões da UE.

    **Dados:** O preço das permissões (EUA — European Union Allowance) evoluiu: €22 (2005), €0,03 (2007), €3–8 (2012–2017), €25 (2019), €50 (2021), €90 (fev. 2023), €55–70 (2024). A receita acumulada de leilões desde 2013 ultrapassa €175 bilhões. As emissões cobertas pelo EU ETS caíram ~37% entre 2005 e 2023 — embora parte dessa redução se deva à crise financeira e à pandemia, análises econométricas (Bayer e Aklin, 2020) atribuem ~25–35% da redução ao próprio EU ETS.

    **Análise:** O EU ETS ilustra simultaneamente as virtudes e os desafios dos mercados de carbono. A virtude: quando o preço subiu para €50–100 (Fase IV), empresas aceleraram investimentos em energia renovável e eficiência energética — confirmando que o sinal de preço funciona. O desafio: a volatilidade extrema (de €0 a €90 em menos de duas décadas) mina a previsibilidade necessária para investimentos de descarbonização de longo prazo. A solução institucional — a Reserva de Estabilidade de Mercado (MSR), que automaticamente retira permissões excedentes do mercado — é um exemplo de design de mecanismo (Capítulo 9d) aplicado à política climática.

    **Fonte:** European Commission. 2024. *EU Emissions Trading System (EU ETS) data viewer*. European Environment Agency.

### 24.4.2 RGGI e outros mercados regionais

O **Regional Greenhouse Gas Initiative** (RGGI), lançado em 2009, foi o primeiro mercado de carbono obrigatório dos Estados Unidos. Cobre emissões do setor elétrico em 12 estados do nordeste americano (Connecticut, Delaware, Maine, Maryland, Massachusetts, New Hampshire, New Jersey, New York, Pennsylvania, Rhode Island, Vermont e Virginia).

Características distintivas do RGGI:

- **Foco estreito**: cobre apenas usinas termelétricas (>25 MW), diferentemente do EU ETS que abrange múltiplos setores industriais.
- **100% leilão**: todas as permissões são leiloadas (não distribuídas gratuitamente), gerando mais de US\$ 6,5 bilhões em receita acumulada (2009–2023).
- **Preço moderado**: o preço das permissões flutuou entre US\$ 2 e US\$ 15/tCO₂ — muito abaixo do EU ETS, mas com piso de preço (*price floor*) que evita o colapso.
- **Receita reciclada**: os estados investem a receita dos leilões em eficiência energética, energia renovável e assistência a consumidores de baixa renda.

Outros mercados regionais relevantes incluem o sistema da **Califórnia** (vinculado ao Quebec, Canadá), o **mercado nacional chinês** (lançado em 2021, o maior do mundo em cobertura de emissões), e o **Sistema de Comércio de Emissões da Coreia do Sul** (KETS).

No gráfico interativo abaixo, simule um mercado de carbono com múltiplas firmas. Ajuste o cap e observe como o mercado de permissões aloca o abatimento de forma custo-efetiva, comparado com regulação uniforme.

<iframe src="../graficos/cap24/mercado-carbono.html" title="Figura 24.2 — Mercado de Carbono: Equilíbrio com N Firmas" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 24.2 — Equilíbrio no Mercado de Carbono.** Firmas com custos marginais de abatimento diferentes negociam permissões. A firma mais barata abate mais e vende permissões; a mais cara abate menos e compra. O resultado: mesmo nível de abatimento total, mas a custo menor que regulação uniforme.
</div>

### 24.4.3 O mercado de carbono brasileiro: RenovaBio e CBIOs

O Brasil possui um instrumento de precificação de carbono singular: o **RenovaBio**, política nacional de biocombustíveis criada pela Lei nº 13.576/2017. O programa opera por meio de Créditos de Descarbonização (CBIOs):

1. **Emissão**: produtores de biocombustíveis (etanol, biodiesel, biometano) recebem CBIOs proporcionais ao volume de carbono evitado em relação ao combustível fóssil equivalente.
2. **Demanda**: distribuidoras de combustíveis fósseis são obrigadas a adquirir CBIOs em quantidade proporcional ao volume de gasolina e diesel vendido — cada CBIO representa uma tonelada de \(\text{CO}_2\) equivalente evitada.
3. **Mercado**: CBIOs são negociados na B3 (bolsa de valores brasileira), com preço determinado pela oferta e demanda.

!!! box-brasil "Box Brasil 24.1 — RenovaBio e o mercado de CBIOs"

    **Contexto:** O RenovaBio é a principal política de precificação de carbono do Brasil, focada no setor de combustíveis. Lançado operacionalmente em 2020, estabelece metas anuais de descarbonização para distribuidoras de combustíveis fósseis, que devem adquirir CBIOs no mercado para cumpri-las.

    **Dados:** Em 2023, foram emitidos ~39 milhões de CBIOs e aposentados ~36 milhões, a um preço médio de ~R\$ 90/CBIO (~US\$ 18/tCO₂e). A meta para 2024 era de ~39,6 milhões de CBIOs. Desde o início do programa, mais de 100 milhões de CBIOs foram emitidos. O Brasil também avança na regulamentação de um mercado regulado de carbono mais amplo (PL 412/2022, aprovado no Senado em 2023), que cobriria emissões industriais e de energia acima de 25.000 tCO₂/ano.

    **Análise:** O RenovaBio é um caso interessante de cap-and-trade setorial: o "cap" é a meta de descarbonização, e o "trade" ocorre via CBIOs negociados em bolsa. O preço relativamente baixo dos CBIOs (comparado ao EU ETS) reflete tanto a abundância de biocombustíveis no Brasil quanto a meta ainda modesta. O PL do mercado regulado de carbono, se implementado, criaria um sistema mais abrangente — mas enfrenta resistências da indústria e desafios de monitoramento, reportagem e verificação (MRV), especialmente para emissões do setor agropecuário.

    **Fonte:** ANP. 2024. *RenovaBio — Relatório anual*. Agência Nacional do Petróleo, Gás Natural e Biocombustíveis.

### 24.4.4 CBAM: mecanismo de ajuste de carbono na fronteira

O **Carbon Border Adjustment Mechanism** (CBAM) da União Europeia, que entrou em fase de transição em 2023, é uma inovação regulatória que conecta política climática e política comercial.

O problema que o CBAM resolve é o **vazamento de carbono** (*carbon leakage*): quando um país (ou bloco) impõe um preço de carbono ambicioso, suas indústrias ficam em desvantagem competitiva em relação a concorrentes em países sem precificação — criando incentivos para relocação de produção para jurisdições com regulação mais frouxa. O resultado paradoxal é que o preço de carbono não reduz emissões globais, apenas as desloca.

O CBAM funciona como uma **tarifa ambiental**: importadores de produtos cobertos (aço, alumínio, cimento, fertilizantes, eletricidade, hidrogênio) devem adquirir certificados CBAM proporcionais às emissões embutidas nos produtos importados. O preço do certificado é vinculado ao preço do EU ETS. Assim, o produto importado enfrenta o mesmo preço de carbono que o produto fabricado na UE.

!!! box-mundo "Box Mundo 24.3 — CBAM: a tarifa climática da Europa"

    **Contexto:** O Carbon Border Adjustment Mechanism (CBAM) da UE entrou em fase de transição em outubro de 2023, com aplicação plena prevista para 2026. Cobre importações de produtos intensivos em carbono: ferro e aço, alumínio, cimento, fertilizantes, eletricidade e hidrogênio.

    **Dados:** As importações cobertas pelo CBAM representam ~3,5% do valor total das importações da UE. O impacto estimado sobre países exportadores depende da intensidade de carbono de suas exportações. Para o Brasil, os setores mais afetados são ferro e aço (US\$ 3,2 bilhões em exportações para a UE em 2022), alumínio (US\$ 600 milhões) e fertilizantes (US\$ 200 milhões). Se o preço do EU ETS estiver em €70/tCO₂, o custo adicional para exportadores brasileiros de aço pode chegar a 5–8% do valor FOB — dependendo da intensidade de carbono da produção.

    **Análise:** O CBAM pode ser interpretado como uma internalização da externalidade de carbono na fronteira — impedindo que a diferença de preços de carbono entre jurisdições distorça o comércio internacional. Críticos argumentam que viola princípios da OMC (discriminação entre produtos baseada em processos de produção) e funciona como protecionismo disfarçado. Defensores respondem que, sem o CBAM, o preço de carbono europeu simplesmente desloca emissões para países sem precificação — piorando o problema climático global. Para o Brasil, o CBAM cria incentivos para implementar precificação doméstica de carbono: emissões já "precificadas" no país de origem podem ser descontadas do CBAM.

    **Fonte:** European Commission. 2023. *Carbon Border Adjustment Mechanism — Factsheet*. Brussels: European Commission.

---

## 24.5 Valoração Ambiental

### 24.5.1 O valor econômico total

Quanto vale um pôr do sol? A pergunta soa absurda — e é exatamente esse desconforto que torna a valoração ambiental tão fascinante e tão necessária. Se não conseguimos expressar em reais (ou dólares) o valor de ar limpo, biodiversidade e paisagem natural, como justificar politicamente os custos de protegê-los? Essa questão é central para a economia ambiental, pois sem mensuração do valor, não é possível comparar custos e benefícios de políticas de conservação.

A abordagem padrão decompõe o **valor econômico total** (VET) de um recurso ambiental em componentes:

\[
\text{VET} = \underbrace{\text{VU}}_{\text{Valor de uso}} + \underbrace{\text{VNU}}_{\text{Valor de não-uso}} \label{eq:24.10} \tag{24.10}
\]

O **valor de uso** compreende:

- **Uso direto**: benefícios do uso efetivo do recurso (madeira da floresta, peixes do rio, recreação no parque).
- **Uso indireto**: benefícios dos serviços ecossistêmicos (regulação climática pela floresta, purificação de água, polinização).
- **Valor de opção**: disposição a pagar pela *possibilidade* de usar o recurso no futuro, mesmo que não se use hoje (análogo ao valor de uma opção financeira — Capítulo 18).

O **valor de não-uso** compreende:

- **Valor de existência**: disposição a pagar pela mera existência do recurso, mesmo sem qualquer uso presente ou futuro. Exemplos: preservação de baleias, proteção da floresta amazônica por pessoas que nunca a visitarão.
- **Valor de legado**: disposição a pagar para que gerações futuras possam usufruir do recurso.

!!! idea "Intuição Econômica"
    **Em uma frase:** Bens ambientais têm valor mesmo quando não são "usados" — e ignorar esse valor leva a decisões que subestimam os custos da degradação ambiental.

    **Pense assim:** Quanto vale a Floresta Amazônica? O valor da madeira e dos produtos extrativistas (uso direto) é uma fração minúscula do valor total. Os serviços ecossistêmicos — regulação do clima, ciclo de chuvas, biodiversidade (uso indireto) — valem muito mais. E a disposição de milhões de pessoas ao redor do mundo a pagar pela simples *existência* da floresta (valor de não-uso) pode ser o componente mais significativo. Ignorar os valores de uso indireto e de não-uso é como avaliar um hospital apenas pelo preço dos tijolos.

    **Por que isso importa:** A análise de custo-benefício de projetos que envolvem destruição ambiental (desmatamento para agropecuária, hidrelétrica em rio amazônico) precisa incluir *todos* os componentes do valor econômico total — não apenas os que têm preço de mercado. Subestimar o valor ambiental é a raiz econômica de muitas decisões ambientalmente destrutivas.

### 24.5.2 Métodos de preferência revelada

Os métodos de **preferência revelada** inferem o valor ambiental a partir de comportamentos observados em mercados reais — conectando diretamente com o Capítulo 4 (Preferência Revelada).

**Preços hedônicos** (*hedonic pricing*). A ideia: bens diferenciados (como imóveis) são "pacotes" de atributos, e o preço de mercado reflete implicitamente o valor de cada atributo. Se casas perto de um parque valem mais do que casas idênticas longe do parque, a diferença de preço revela a disposição a pagar pela amenidade ambiental.

Formalmente, o preço de um imóvel é uma função dos seus atributos:

\[
P = P(S_1, S_2, \ldots, S_k, Q) \label{eq:24.11} \tag{24.11}
\]

onde \(S_1, \ldots, S_k\) são características estruturais (área, quartos, idade) e \(Q\) é a qualidade ambiental (qualidade do ar, proximidade a parque, nível de ruído). O preço implícito da qualidade ambiental é:

\[
\frac{\partial P}{\partial Q} = p_Q \label{eq:24.12} \tag{24.12}
\]

que mede a disposição marginal a pagar por uma unidade adicional de qualidade ambiental.

**Custo de viagem** (*travel cost method*). Aplica-se a áreas de recreação (parques, praias, reservas naturais). A ideia: o custo que uma pessoa incorre para visitar um sítio recreativo (transporte, tempo, entrada) funciona como um "preço" implícito. Observando como a frequência de visitas varia com a distância (e portanto com o custo), pode-se estimar uma curva de demanda por recreação e calcular o excedente do consumidor (Capítulo 5).

### 24.5.3 Métodos de preferência declarada

Quando não há mercado real que revele preferências (caso de valores de não-uso), recorre-se a métodos de **preferência declarada** — pesquisas que perguntam diretamente às pessoas quanto estão dispostas a pagar.

**Valoração contingente** (*contingent valuation*). Apresenta-se um cenário hipotético ("O governo propõe criar uma reserva natural para proteger a onça-pintada. Quanto você estaria disposto a pagar, por mês, em sua conta de luz, para financiar essa reserva?") e estima-se a disposição a pagar (DAP) a partir das respostas. O método ganhou legitimidade acadêmica com o painel da NOAA (1993), liderado por Kenneth Arrow e Robert Solow, que estabeleceu diretrizes para garantir a confiabilidade dos resultados.

**Experimentos de escolha** (*choice experiments*). Em vez de perguntar diretamente "quanto você pagaria?", apresentam-se conjuntos de opções que variam em múltiplos atributos (qualidade da água, biodiversidade, custo) e pede-se ao respondente que escolha a opção preferida. A partir das escolhas, estima-se a disposição a pagar por cada atributo — uma aplicação direta da teoria da utilidade aleatória (conectando com o Capítulo 3).

!!! note "Limitações dos métodos de preferência declarada"
    Métodos de preferência declarada sofrem de vieses conhecidos: (i) **viés de protesto** — respondentes que se recusam a "precificar" a natureza por razões morais; (ii) **viés hipotético** — a diferença entre o que as pessoas *dizem* que pagariam e o que *de fato* pagariam (conectando com o Capítulo 8, economia comportamental); (iii) **insensibilidade ao escopo** — a DAP não varia proporcionalmente com a escala do bem avaliado (proteger 1.000 vs. 100.000 hectares). Apesar dessas limitações, a valoração contingente foi aceita como evidência em tribunais americanos (caso Exxon Valdez, 1989) e permanece o único método capaz de capturar valores de não-uso.

---

## 24.6 Recursos Naturais e Sustentabilidade

### 24.6.1 A regra de Hotelling revisitada

Petróleo, minério de ferro, gás natural — são como uma herança que a Terra nos deixou, mas sem manual de instrução sobre o ritmo ideal de gastar. Extrair rápido demais esgota o recurso cedo; extrair devagar demais significa deixar riqueza parada no subsolo enquanto gente passa necessidade na superfície. A regra de Hotelling, que já encontramos no Capítulo 18, é a tentativa do economista de resolver esse dilema: o preço líquido (preço menos custo de extração) de um recurso exaurível deve crescer à taxa de juros no equilíbrio:

\[
\frac{\dot{p}_n}{p_n} = r \label{eq:24.13} \tag{24.13}
\]

onde \(p_n = p - c\) é o preço líquido (ou **renda de escassez**) e \(r\) é a taxa de juros. A intuição é que o proprietário do recurso deve ser indiferente entre extrair hoje (e investir a receita à taxa \(r\)) e extrair amanhã (e obter um preço mais alto). Se o preço líquido crescesse mais devagar que \(r\), seria melhor extrair tudo hoje; se crescesse mais rápido, seria melhor esperar.

A regra de Hotelling tem implicações profundas para a sustentabilidade:

- Para recursos **não renováveis** (petróleo, minérios), a renda de escassez é positiva e crescente — refletindo o fato de que cada unidade extraída reduz o estoque disponível para o futuro.
- Para recursos **renováveis** (florestas, peixes), a análise é mais complexa: o recurso se regenera naturalmente a uma taxa que depende do estoque. A extração sustentável é aquela que não excede a taxa de regeneração.

### 24.6.2 Recursos renováveis: taxa de extração ótima

Para um recurso renovável com estoque \(S(t)\) e taxa de crescimento natural \(G(S)\) (tipicamente uma função logística), a dinâmica é:

\[
\dot{S} = G(S) - h \label{eq:24.14} \tag{24.14}
\]

onde \(h\) é a taxa de colheita (*harvest*). O **rendimento máximo sustentável** (RMS) é o nível de colheita que maximiza \(G(S)\):

\[
h^{\text{RMS}} = \max_S G(S) \label{eq:24.15} \tag{24.15}
\]

No entanto, o RMS não é necessariamente o ótimo econômico. O ótimo econômico iguala o benefício marginal da extração ao custo marginal, incluindo o **custo de uso** — o valor presente da redução futura do estoque:

\[
\frac{\partial \pi}{\partial h} = \frac{\partial G}{\partial S} \cdot \lambda \label{eq:24.16} \tag{24.16}
\]

onde \(\lambda\) é o preço-sombra do recurso (seu valor in situ). Em estado estacionário, a condição de otimalidade dinâmica é a **regra de Hotelling modificada** para recursos renováveis:

\[
r = \frac{\partial G}{\partial S} + \frac{\partial \pi / \partial S}{\lambda} \label{eq:24.17} \tag{24.17}
\]

O primeiro termo, \(\partial G / \partial S\), é a taxa marginal de crescimento do recurso — o "juro biológico". O segundo termo captura o efeito do estoque sobre os custos de extração. Se o estoque é grande e a taxa de crescimento biológico supera a taxa de juros de mercado, o ótimo econômico pode ser *mais conservador* que o RMS.

### 24.6.3 A regra de Hartwick: sustentabilidade e capital reprodutível

John Hartwick (1977) propôs uma regra elegante para economias dependentes de recursos exauríveis: se toda a **renda de escassez** (royalties) da extração de recursos naturais for investida em **capital reprodutível** (máquinas, infraestrutura, capital humano), o consumo per capita pode ser mantido constante indefinidamente.

Formalmente, a **regra de Hartwick** estabelece:

\[
I_K(t) = p_n(t) \cdot h(t) \label{eq:24.18} \tag{24.18}
\]

onde \(I_K\) é o investimento líquido em capital reprodutível, \(p_n\) é a renda de escassez (preço líquido) do recurso e \(h\) é a taxa de extração.

A intuição é que o recurso natural é uma forma de "capital natural". Quando o extraímos, estamos *desinvestindo* em capital natural. Para manter a capacidade produtiva total da economia, esse desinvestimento precisa ser compensado por investimento equivalente em capital produzido pelo homem. É a ideia de **sustentabilidade fraca**: manter o estoque *total* de capital (natural + produzido), permitindo substituição entre os dois.

!!! definition "Sustentabilidade fraca vs. forte"
    **Sustentabilidade fraca**: o bem-estar pode ser mantido desde que o estoque *total* de capital (natural + produzido + humano) não decline. Permite substituição entre capital natural e produzido — devastar uma floresta é aceitável se a receita for investida em educação ou infraestrutura. Métrica: poupança genuína (ver 24.6.4).

    **Sustentabilidade forte**: requer a manutenção de um estoque *mínimo* de capital natural, reconhecendo que certas funções ecossistêmicas são **insubstituíveis** (camada de ozônio, biodiversidade genética, ciclo hidrológico). Mesmo investimentos maciços em capital produzido não podem substituir a perda de funções ecológicas críticas.

### 24.6.4 Contabilidade verde: poupança genuína

O PIB convencional ignora a depleção de recursos naturais e a degradação ambiental. Uma economia que cresce devastando suas florestas e exaurindo seus aquíferos pode apresentar PIB crescente enquanto destrói sua base de capital natural — uma ilusão de prosperidade.

O Banco Mundial desenvolveu o conceito de **poupança líquida ajustada** (*adjusted net savings* ou "poupança genuína"):

\[
S^* = S_{\text{bruta}} - D_K - D_N + E - P \label{eq:24.19} \tag{24.19}
\]

onde:

- \(S_{\text{bruta}}\) é a poupança nacional bruta;
- \(D_K\) é a depreciação do capital produzido;
- \(D_N\) é a depleção de recursos naturais (energia, minerais, florestas);
- \(E\) é o investimento em educação (formação de capital humano);
- \(P\) é o dano por emissões de \(\text{CO}_2\) e material particulado.

Se \(S^* < 0\), a economia está efetivamente *consumindo* seu capital total — crescendo de forma insustentável.

!!! box-brasil "Box Brasil 24.2 — Amazônia, desmatamento e o custo econômico da destruição florestal"

    **Contexto:** A Amazônia brasileira, com ~5,5 milhões de km², abriga ~10% de todas as espécies do planeta e armazena ~150–200 bilhões de toneladas de carbono em sua biomassa. O desmatamento acumulado já eliminou ~20% da cobertura original.

    **Dados:** O desmatamento na Amazônia Legal variou dramaticamente: ~27.772 km²/ano em 2004 (pico), ~4.571 km²/ano em 2012 (mínimo), ~13.235 km²/ano em 2021, caindo para ~9.001 km² em 2023 (dados PRODES/INPE). O custo social do carbono liberado pelo desmatamento é estimado em US\$ 5–15 bilhões/ano (dependendo do SCC utilizado). Os serviços ecossistêmicos da Amazônia — regulação do ciclo de chuvas para o agronegócio do Centro-Sul, biodiversidade, regulação climática — são estimados em US\$ 30–50 bilhões/ano por alguns estudos, embora essas estimativas sejam cercadas de incerteza.

    **Análise:** Do ponto de vista da economia ambiental, o desmatamento da Amazônia é um caso extremo de divergência entre retorno privado e custo social. O retorno privado (pecuária extensiva, soja, grilagem de terras) é positivo para o desmatador — mas os custos sociais (perda de carbono, redução de chuvas, extinção de espécies, danos à saúde por queimadas) recaem sobre toda a sociedade brasileira e sobre o planeta. O Código Florestal (Lei 12.651/2012) exige que proprietários na Amazônia mantenham 80% de reserva legal, mas a fiscalização é insuficiente e a grilagem em terras públicas permanece generalizada. A economia ambiental sugere que a solução eficiente combina enforcement da legislação existente (punição ao desmatamento ilegal) com instrumentos econômicos que remunerem os serviços ecossistêmicos da floresta em pé — pagamentos por serviços ambientais (PSA), créditos de carbono por desmatamento evitado (REDD+) e acesso preferencial a mercados para produtos de desmatamento zero.

    **Fonte:** INPE. 2024. [*PRODES — Monitoramento do desmatamento da Amazônia*](http://www.obt.inpe.br/OBT/assuntos/programas/amazonia/prodes). São José dos Campos: Instituto Nacional de Pesquisas Espaciais.

### 24.6.5 Tragédia dos comuns revisitada: pescarias e florestas

Garrett Hardin (1968) cunhou a expressão "tragédia dos comuns" para descrever a sobreexploração de recursos de acesso livre. No Capítulo 20, formalizamos o problema: sem direitos de propriedade ou regulação, cada usuário ignora o custo que sua extração impõe aos demais, levando à depleção do recurso.

O caso das **pescarias** é emblemático. A FAO estima que ~35% dos estoques pesqueiros mundiais estão sobre-explorados (2022). O modelo bioeconômico padrão — desenvolvido por Gordon (1954) e Schaefer (1957) — mostra que o acesso livre leva à dissipação total da renda econômica do recurso: a pesca continua até que a receita média iguale o custo — o ponto em que o lucro econômico é zero, mas o estoque de peixes é subótimo.

A solução econômica eficiente para pescarias envolve restringir o acesso ao recurso, e os instrumentos são análogos aos da política de poluição:

- **Comando e controle**: quotas de captura, fechamento de estações, restrições de equipamento.
- **Instrumentos de mercado**: **quotas individuais transferíveis** (ITQs — *Individual Transferable Quotas*) — cada pescador recebe uma quota que pode vender ou comprar. O mercado de quotas funciona como um cap-and-trade para peixes, equalizando custos marginais de pesca e gerando eficiência.

A Nova Zelândia foi pioneira na implementação de ITQs em 1986, com resultados positivos: estoques pesqueiros se recuperaram e a renda econômica da pesca aumentou significativamente. A Islândia, Austrália e partes dos EUA seguiram com sistemas similares.

Por que a temperatura do planeta subiu mais de 1,1°C? Por que empresas poluem demais? Por que é tão difícil proteger florestas? Começamos este capítulo com essas perguntas — e agora você tem as ferramentas para respondê-las: externalidades não precificadas, bens públicos globais, taxas de desconto que determinam o peso do futuro, e mercados de carbono que tentam colocar preço no invisível. A microeconomia não resolve sozinha a crise climática, mas sem ela, nem sabemos por onde começar.

*Mudanças climáticas, mercados de carbono, valoração ambiental — a microeconomia encontra seus limites e suas maiores responsabilidades. O resto é com você.*

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A principal vantagem de instrumentos de mercado (imposto/cap-and-trade) sobre regulação de comando e controle é:"
    - (a) Instrumentos de mercado eliminam completamente a poluição
    - (b) Instrumentos de mercado atingem a meta de redução ao menor custo total, igualando custos marginais de abatimento entre firmas
    - (c) Instrumentos de mercado não requerem monitoramento das emissões
    - (d) Instrumentos de mercado são mais fáceis de implementar politicamente

    ??? success "Resposta"
        **(b)** A eficiência de custos é a vantagem central: ao criar um preço uniforme para as emissões, instrumentos de mercado permitem que firmas com custos de abatimento mais baixos façam mais redução — minimizando o custo total para a sociedade. A alternativa (a) é falsa — ambos reduzem, não eliminam; (c) é falsa — ambos requerem monitoramento; (d) é discutível e não é a principal vantagem teórica.

??? question "2. Segundo Weitzman (1974), o regulador deve preferir instrumentos de quantidade (cap) a instrumentos de preço (imposto) quando:"
    - (a) Os custos de abatimento das firmas são desconhecidos
    - (b) A curva de dano marginal é relativamente plana
    - (c) A curva de dano marginal é muito inclinada (existem limiares catastróficos)
    - (d) As firmas são homogêneas

    ??? success "Resposta"
        **(c)** Quando a curva de dano marginal é muito inclinada (grande variação no dano para pequenas variações na quantidade de emissões), errar na quantidade é muito custoso — portanto é preferível fixar a quantidade (cap) e aceitar volatilidade no preço. A alternativa (b) é o caso em que o imposto (preço) é preferível.

??? question "3. O custo social do carbono (SCC) é:"
    - (a) O custo de produção de uma tonelada de CO₂
    - (b) O preço de mercado do CO₂ no EU ETS
    - (c) O valor presente dos danos futuros causados pela emissão de uma tonelada adicional de CO₂
    - (d) O custo de capturar e armazenar uma tonelada de CO₂

    ??? success "Resposta"
        **(c)** O SCC é o dano total (presente e futuro, global) de uma tonelada adicional de emissão, descontado a valor presente. Equivale ao imposto pigouviano ótimo sobre carbono. A alternativa (b) é o preço de mercado, que pode ou não se aproximar do SCC; (d) é o custo de abatimento via CCS, que é diferente do custo do dano.

??? question "4. A regra de Hartwick estabelece que uma economia dependente de recursos exauríveis pode manter o consumo constante se:"
    - (a) Reduzir a taxa de extração a zero
    - (b) Investir toda a renda de escassez (royalties) dos recursos naturais em capital reprodutível
    - (c) Substituir recursos não renováveis por renováveis
    - (d) Manter o estoque de recursos naturais constante

    ??? success "Resposta"
        **(b)** A regra de Hartwick requer que o desinvestimento em capital natural (extração) seja compensado por investimento equivalente em capital produzido (máquinas, infraestrutura, capital humano) — é o critério de sustentabilidade fraca. A alternativa (d) é impossível para recursos não renováveis; (a) eliminaria a renda do recurso.

??? question "5. O CBAM (Carbon Border Adjustment Mechanism) da UE visa resolver o problema de:"
    - (a) Reduzir emissões de transporte internacional
    - (b) Vazamento de carbono — a relocação de produção para países sem precificação de carbono
    - (c) Financiar projetos de adaptação climática em países em desenvolvimento
    - (d) Substituir o EU ETS por tarifas de importação

    ??? success "Resposta"
        **(b)** O CBAM é uma tarifa ambiental que iguala o preço de carbono enfrentado por produtores domésticos (sujeitos ao EU ETS) e importadores de países sem precificação de carbono. Sem o CBAM, o preço de carbono europeu poderia simplesmente deslocar a produção para países com regulação mais branda, sem reduzir emissões globais. A alternativa (d) é falsa — o CBAM complementa, não substitui, o EU ETS.

---

## 📋 Resumo do Capítulo

- **Instrumentos de mercado** (impostos pigouvianos e cap-and-trade) são mais eficientes que regulação de comando e controle porque igualam custos marginais de abatimento entre firmas, atingindo a meta ambiental ao menor custo total. Ambos geram eficiência de custos, mas diferem no que é fixo (preço vs. quantidade) e no que é incerto.

- **Weitzman (1974)** demonstrou que a equivalência entre imposto e cap-and-trade se rompe sob incerteza. Se a curva de dano marginal é mais inclinada que a de custo de abatimento, instrumentos de quantidade (cap) são preferíveis — argumento particularmente relevante para mudanças climáticas, onde limiares catastróficos tornam o controle de quantidade prioritário.

- O **custo social do carbono** (SCC) é o dano total causado por uma tonelada adicional de CO₂ e equivale ao imposto pigouviano ótimo. Estimativas variam enormemente (US\$ 20 a US\$ 200+/tCO₂) dependendo da taxa de desconto — o parâmetro mais influente e mais controverso da economia climática.

- O **debate Nordhaus–Stern** reflete uma divergência ética fundamental sobre a taxa de desconto: Nordhaus (abordagem descritiva, r ≈ 5,5%) recomenda ação gradual; Stern (abordagem prescritiva, r ≈ 1,4%) recomenda ação imediata e agressiva. A escolha entre ambos é, em última análise, uma questão de valores morais sobre obrigações com gerações futuras.

- **Mercados de carbono** (EU ETS, RGGI, RenovaBio) implementam o princípio do cap-and-trade na prática, com lições importantes: o cap precisa ser restritivo, a volatilidade de preço requer mecanismos de estabilização (MSR, price collar), e a alocação inicial de permissões tem implicações distributivas significativas.

- **Valoração ambiental** decompõe o valor econômico total em uso direto, uso indireto, opção, existência e legado. Métodos de preferência revelada (preços hedônicos, custo de viagem) e declarada (valoração contingente, choice experiments) permitem estimar esses valores — essenciais para análise de custo-benefício ambiental.

- A **regra de Hotelling** governa a extração ótima de recursos exauríveis; a **regra de Hartwick** garante sustentabilidade fraca se a renda de escassez é reinvestida; a **poupança genuína** é a métrica que ajusta o PIB pela depleção de capital natural e investimento em capital humano.

## 🔑 Conceitos-Chave

<a id="tabela-24-1"></a>

| Conceito | Definição |
|----------|-----------|
| Instrumento de mercado | Política ambiental que altera incentivos econômicos (imposto, cap-and-trade), permitindo que o mercado encontre a alocação de menor custo |
| Comando e controle | Regulação direta que impõe padrões, limites ou tecnologias específicas a cada firma |
| Eficiência de custos | Propriedade de atingir uma meta ambiental ao menor custo total, igualando custos marginais de abatimento entre firmas |
| Cap-and-trade | Sistema que fixa a quantidade total de emissões (cap) e permite negociação de permissões entre firmas (trade) |
| Custo social do carbono (SCC) | Valor presente dos danos futuros causados pela emissão de uma tonelada adicional de CO₂ |
| Duplo dividendo | Ganho duplo da tributação ambiental: redução de poluição + redução de outros impostos distorcivos |
| Vazamento de carbono | Relocação de emissões para jurisdições sem precificação de carbono, anulando o efeito da política climática |
| CBAM | Mecanismo de ajuste de carbono na fronteira — tarifa ambiental sobre importações intensivas em carbono |
| Valor econômico total (VET) | Soma dos valores de uso (direto, indireto, opção) e não-uso (existência, legado) de um recurso ambiental |
| Preços hedônicos | Método que infere o valor de atributos ambientais a partir de diferenças de preço em mercados de bens diferenciados (ex.: imóveis) |
| Valoração contingente | Método de pesquisa que estima a disposição a pagar por bens ambientais via cenários hipotéticos |
| Regra de Hotelling | O preço líquido de um recurso exaurível cresce à taxa de juros no equilíbrio |
| Regra de Hartwick | Investir toda a renda de escassez em capital reprodutível garante consumo constante (sustentabilidade fraca) |
| Poupança genuína | Poupança nacional ajustada pela depleção de recursos naturais e investimento em capital humano |

<div class="caption-obj" markdown>
**Tabela 24.1 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-24-1"></a>**Exercício 24.1.** Duas fábricas emitem cada uma 80 toneladas de SO₂ por ano. O custo marginal de abatimento é \(\text{CMgA}_A = 3e_A\) para a Fábrica A e \(\text{CMgA}_B = 6e_B\) para a Fábrica B, onde \(e_i\) é a redução de emissões (toneladas).

(a) Se o regulador impõe redução uniforme de 40 toneladas para cada fábrica (comando e controle), calcule o custo total de abatimento.
(b) Encontre a alocação eficiente (que minimiza o custo total) para uma redução total de 80 toneladas. Qual é o custo total?
(c) Qual imposto pigouviano \(t\) (por tonelada) induziria a alocação eficiente?
(d) Se um sistema cap-and-trade é implementado com 80 permissões (cada fábrica recebe 40 inicialmente), qual será o preço de equilíbrio da permissão? Quem vende e quem compra?

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-1)

<a id="ex-24-2"></a>**Exercício 24.2.** *(Exercício resolvido)* O custo social do carbono e a taxa de desconto.

Suponha que a emissão de 1 tCO₂ hoje cause danos de US\$ 10/ano perpetuamente, começando em \(t = 1\).

(a) Calcule o SCC para taxas de desconto de \(r = 1\%\), \(r = 3\%\) e \(r = 5\%\).
(b) Mostre que a razão entre os SCCs calculados em (a) depende apenas da razão entre as taxas de desconto.
(c) Se o governo dos EUA usa \(r = 3\%\) e estima SCC = US\$ 51/tCO₂, qual seria a estimativa com \(r = 1,4\%\) (taxa de Stern)?

??? exercicio-resolvido "Solução"
    **(a)** O SCC é o valor presente de uma perpetuidade de US\$ 10/ano:

    \[
    \text{SCC} = \frac{D}{r} = \frac{10}{r}
    \]

    - \(r = 1\%\): \(\text{SCC} = 10/0{,}01 = \text{US\$} \; 1.000\)
    - \(r = 3\%\): \(\text{SCC} = 10/0{,}03 \approx \text{US\$} \; 333\)
    - \(r = 5\%\): \(\text{SCC} = 10/0{,}05 = \text{US\$} \; 200\)

    A diferença é dramática: o SCC com \(r = 1\%\) é 5 vezes maior que com \(r = 5\%\).

    **(b)** A razão entre SCCs:

    \[
    \frac{\text{SCC}(r_1)}{\text{SCC}(r_2)} = \frac{D/r_1}{D/r_2} = \frac{r_2}{r_1}
    \]

    Depende apenas da razão entre as taxas, não do dano \(D\). Isso demonstra a extrema sensibilidade do SCC à taxa de desconto.

    **(c)** Usando a proporcionalidade:

    \[
    \text{SCC}(1{,}4\%) = 51 \times \frac{3\%}{1{,}4\%} = 51 \times 2{,}14 \approx \text{US\$} \; 109
    \]

    A taxa de Stern mais que duplica o SCC estimado — e com ela, o imposto ótimo sobre carbono.

<a id="ex-24-3"></a>**Exercício 24.3.** *(Exercício resolvido)* Weitzman: preços vs. quantidades.

Um regulador quer reduzir emissões de um poluente. O benefício marginal da redução é \(BMg = 100 - 2e\) e o custo marginal de abatimento é \(CMgA = 20 + e + \varepsilon\), onde \(\varepsilon\) é um choque aleatório com \(E[\varepsilon] = 0\) e \(\text{Var}(\varepsilon) = \sigma^2\).

(a) Calcule o nível ótimo de abatimento esperado \(e^*\) e o imposto/preço da permissão ótimos \(t^*\).
(b) Se o regulador fixa o imposto em \(t^*\), qual é a perda esperada de bem-estar em relação ao ótimo (que depende da realização de \(\varepsilon\))?
(c) Se o regulador fixa a quantidade em \(e^*\), qual é a perda esperada de bem-estar?
(d) Quando o imposto é preferível ao cap? Interprete em termos das inclinações de BMg e CMgA.

??? exercicio-resolvido "Solução"
    **(a)** No ótimo esperado (\(\varepsilon = 0\)): \(BMg = CMgA\)

    \[
    100 - 2e = 20 + e \implies 3e = 80 \implies e^* = 26{,}7 \text{ (aprox.)}
    \]

    \[
    t^* = BMg(e^*) = 100 - 2(26{,}7) = 46{,}7
    \]

    **(b)** Com imposto fixo \(t^*\), a firma escolhe \(e\) tal que \(CMgA = t^*\):

    \[
    20 + e + \varepsilon = 46{,}7 \implies e = 26{,}7 - \varepsilon
    \]

    O abatimento desvia de \(e^*\) por \(-\varepsilon\). A perda de bem-estar (triângulo de Harberger) é:

    \[
    L_P = \frac{1}{2} \cdot |BMg' + CMgA'| \cdot \varepsilon^2 \cdot \frac{1}{(|CMgA'|)^2} \cdot |BMg'|
    \]

    Simplificando com \(|BMg'| = 2\) e \(|CMgA'| = 1\):

    \[
    L_P = \frac{1}{2} \cdot \frac{|BMg'|}{(|CMgA'|)^2} \cdot \sigma^2 = \frac{1}{2} \cdot \frac{2}{1} \cdot \sigma^2 = \sigma^2
    \]

    **(c)** Com quantidade fixa \(e^*\), o custo marginal realizado difere do benefício marginal. A perda:

    \[
    L_Q = \frac{1}{2} \cdot \frac{|CMgA'|}{(|BMg'|)^2} \cdot \sigma^2 \cdot |BMg'| = \frac{1}{2} \cdot \frac{1}{4} \cdot \sigma^2 \cdot 2 = \frac{\sigma^2}{4}
    \]

    Usando a fórmula de Weitzman:

    \[
    L_P - L_Q = \frac{\sigma^2}{2} \cdot \frac{|BMg'| - |CMgA'|}{|CMgA'|^2} = \frac{\sigma^2}{2} \cdot \frac{2 - 1}{1} = \frac{\sigma^2}{2} > 0
    \]

    **(d)** O imposto gera perda esperada *maior* que o cap (\(L_P > L_Q\)) porque \(|BMg'| = 2 > |CMgA'| = 1\) — a curva de benefício marginal é mais inclinada. Neste caso, **o cap é preferível** (equação $\eqref{eq:24.5}$). O imposto seria preferível se a curva de custo de abatimento fosse mais inclinada que a de benefício marginal.

<a id="ex-24-4"></a>**Exercício 24.4.** *(Exercício resolvido)* Regra de Hotelling.

Um depósito contém \(S_0 = 100\) unidades de um recurso não renovável. O custo de extração é zero. A demanda inversa é \(p(q) = 200 - 2q\). A taxa de juros é \(r = 10\%\). A extração ocorre em dois períodos.

(a) Escreva a condição de Hotelling para o preço líquido entre os dois períodos.
(b) Use a condição de Hotelling e a restrição de estoque (\(q_1 + q_2 = 100\)) para encontrar \(q_1, q_2, p_1, p_2\).
(c) Se a taxa de juros sobe para \(r = 20\%\), o que acontece com a extração no período 1? Interprete.

??? exercicio-resolvido "Solução"
    **(a)** Com custo de extração zero, o preço líquido é o próprio preço. A regra de Hotelling:

    \[
    p_2 = (1 + r) \cdot p_1 = 1{,}1 \cdot p_1
    \]

    **(b)** Da demanda inversa: \(p_1 = 200 - 2q_1\) e \(p_2 = 200 - 2q_2\).

    Do estoque: \(q_2 = 100 - q_1\).

    Da condição de Hotelling:

    \[
    200 - 2(100 - q_1) = 1{,}1 \cdot (200 - 2q_1)
    \]

    \[
    200 - 200 + 2q_1 = 220 - 2{,}2q_1
    \]

    \[
    4{,}2q_1 = 220 \implies q_1 = 52{,}4; \quad q_2 = 47{,}6
    \]

    \[
    p_1 = 200 - 2(52{,}4) = 95{,}2; \quad p_2 = 200 - 2(47{,}6) = 104{,}8
    \]

    Verificação: \(104{,}8 / 95{,}2 = 1{,}10\). ✓

    **(c)** Com \(r = 20\%\): \(200 - 2(100 - q_1) = 1{,}2 \cdot (200 - 2q_1)\)

    \[
    2q_1 = 240 - 2{,}4q_1 \implies 4{,}4q_1 = 240 \implies q_1 = 54{,}5
    \]

    A extração no período 1 *aumenta* (de 52,4 para 54,5). Intuição: com taxa de juros maior, o custo de oportunidade de deixar o recurso no solo é maior — é mais atraente extrair hoje e investir a receita. A regra de Hotelling implica que juros altos favorecem extração presente e elevam o preço futuro mais rapidamente.

<a id="ex-24-5"></a>**Exercício 24.5.** Em um estudo de valoração contingente, 500 moradores de Curitiba foram perguntados: "Qual a máxima quantia mensal que você pagaria para manter o Parque Barigui?" Os resultados foram:

| DAP (R$/mês) | Frequência |
|:-------------|:-----------|
| 0 | 50 |
| 5 | 120 |
| 10 | 180 |
| 20 | 100 |
| 50 | 40 |
| 100 | 10 |

(a) Calcule a DAP média e a DAP mediana.
(b) Estime o valor anual do parque para a população de Curitiba (2 milhões de habitantes), usando a DAP média.
(c) Discuta por que a DAP mediana pode ser uma estimativa mais confiável que a média neste contexto.
(d) Identifique dois vieses potenciais nesta pesquisa e sugira como mitigá-los.

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-5)

<a id="ex-24-6"></a>**Exercício 24.6.** Considere um recurso pesqueiro com crescimento logístico \(G(S) = rS(1 - S/K)\), onde \(r = 0{,}5\) (taxa intrínseca de crescimento), \(K = 1.000\) (capacidade de suporte) e \(S\) é o estoque de peixes em toneladas.

(a) Encontre o estoque que maximiza o crescimento (rendimento máximo sustentável — RMS) e calcule o RMS.
(b) Se o custo de pescar uma tonelada é \(c = 50/S\) (custo unitário decrescente no estoque) e o preço do peixe é \(p = 1\), encontre o estoque de equilíbrio de acesso livre (onde lucro econômico = 0).
(c) Compare o estoque de acesso livre com o estoque do RMS. Há sobreexploração?
(d) Que quota de captura restabeleceria o equilíbrio sustentável no nível do RMS?

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-6)

<a id="ex-24-7"></a>**Exercício 24.7.** Uma economia produz PIB = 1.000, com poupança bruta = 200, depreciação do capital produzido = 80, depleção de recursos minerais = 30, dano por CO₂ = 15, e investimento em educação = 25.

(a) Calcule a poupança genuína (poupança líquida ajustada).
(b) A economia está em trajetória sustentável (no sentido de sustentabilidade fraca)? Justifique.
(c) Se o preço do mineral extraído dobra (mantendo a quantidade), o que acontece com a poupança genuína? Interprete.

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-7)

<a id="ex-24-8"></a>**Exercício 24.8.** O EU ETS distribui 100 permissões de emissão. A demanda agregada por permissões é \(Q_d = 150 - 2p\) (em toneladas).

(a) Encontre o preço de equilíbrio da permissão e a receita total se as permissões são leiloadas.
(b) Se o regulador introduz um preço mínimo (*price floor*) de €30, qual é o efeito sobre o mercado? Há excesso de oferta?
(c) Se a recessão reduz a demanda para \(Q_d' = 120 - 2p\), qual é o novo preço de equilíbrio? Compare com o item (a).
(d) Explique por que a Reserva de Estabilidade de Mercado (MSR) é uma resposta ao problema ilustrado em (c).

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-8)

<a id="ex-24-9"></a>**Exercício 24.9.** Um estudo de preços hedônicos em São Paulo estimou a seguinte regressão:

\[
\ln(P_i) = 10{,}5 + 0{,}05 \cdot \text{Quartos}_i + 0{,}03 \cdot \text{Área}_i - 0{,}08 \cdot \text{PM}_{2,5} + 0{,}12 \cdot \text{Parque}_i
\]

onde \(P_i\) é o preço do imóvel (em R\$), PM\(_{2,5}\) é a concentração média de material particulado (μg/m³) e Parque é uma dummy para imóvel a até 500m de um parque.

(a) Interprete o coeficiente de PM\(_{2,5}\). Uma redução de 10 μg/m³ na poluição aumenta o preço do imóvel em quanto (aproximadamente)?
(b) Interprete o coeficiente de Parque. Qual é o prêmio percentual por proximidade ao parque?
(c) Se o preço médio de um imóvel no bairro é R\$ 500.000, qual é o valor implícito (em R\$) da proximidade ao parque?
(d) Discuta uma limitação do método de preços hedônicos para estimar o valor total da qualidade ambiental.

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-9)

<a id="ex-24-10"></a>**Exercício 24.10.** O modelo DICE simplificado: considere uma economia em dois períodos. No período 1, a produção é \(Y_1 = 100\) e as emissões são proporcionais à produção: \(E_1 = \sigma Y_1(1 - \mu_1)\), onde \(\sigma = 0{,}5\) é a intensidade de carbono e \(\mu_1 \in [0, 1]\) é a taxa de abatimento. O custo de abatimento é \(\Theta(\mu) = \theta_1 \mu^2 Y\), com \(\theta_1 = 0{,}1\). No período 2, o dano climático é \(D_2 = \delta E_1^2\), com \(\delta = 0{,}01\).

(a) Escreva o bem-estar social \(W = (Y_1 - \Theta_1) + \frac{Y_2 - D_2}{1+r}\), supondo \(Y_2 = 100\) e \(r = 5\%\).
(b) Encontre a taxa de abatimento ótima \(\mu_1^*\) que maximiza \(W\).
(c) Calcule o SCC implícito (custo marginal do dano por tonelada de CO₂ no ótimo).
(d) Se a taxa de desconto cai para \(r = 1\%\), como muda \(\mu_1^*\)? Interprete.

[:material-arrow-right: Ver solução](../solucoes/cap24.md#ex-24-10)

---

## 🏆 Vem, ANPEC!

As questões a seguir são formuladas no estilo ANPEC (itens Verdadeiro ou Falso). Cada item deve ser classificado como **V** ou **F**.

??? question "Questão estilo ANPEC — Instrumentos de Política Ambiental"
    Com relação aos instrumentos de política ambiental e à economia das mudanças climáticas, julgue os itens:

    **(0)** Em um sistema cap-and-trade, a alocação final de emissões entre firmas é eficiente independentemente da distribuição inicial de permissões — desde que os custos de transação sejam baixos e o mercado de permissões funcione competitivamente.

    **(1)** O resultado de Weitzman (1974) mostra que, sob incerteza sobre os custos de abatimento, o imposto pigouviano é sempre preferível ao cap-and-trade, pois oferece certeza de custo para as firmas.

    **(2)** O custo social do carbono (SCC) é extremamente sensível à taxa de desconto: uma redução da taxa de 5% para 1,4% pode mais que triplicar o valor estimado do SCC.

    **(3)** O duplo dividendo da tributação ambiental refere-se ao fato de que impostos ambientais geram simultaneamente redução da poluição e receita fiscal que pode substituir impostos distorcivos — gerando potencialmente ganhos de eficiência adicionais.

    **(4)** A regra de Hotelling prevê que o preço de mercado de recursos não renováveis cresce à taxa de juros, o que implica que recursos mais escassos sempre têm preços mais altos.

    ??? success "Gabarito"
        **Respostas: V-F-V-V-F**

        **Justificativa por item:**

        - **Item 0 — V:** Resultado análogo ao Teorema de Coase aplicado ao mercado de permissões. A distribuição inicial afeta a renda das firmas, mas não a alocação final de emissões — as firmas com menor custo de abatimento vendem permissões para as de maior custo, equalizando custos marginais.

        - **Item 1 — F:** Weitzman mostrou que a preferência depende das inclinações relativas das curvas de dano e custo. O imposto é preferível quando a curva de dano marginal é relativamente plana; o cap é preferível quando há limiares catastróficos (curva de dano muito inclinada). Não há superioridade universal de nenhum instrumento.

        - **Item 2 — V:** Para uma perpetuidade de danos, \(\text{SCC} = D/r\). A razão \(5\%/1{,}4\% = 3{,}57\), logo o SCC com taxa de Stern seria ~3,6 vezes o de Nordhaus. A sensibilidade à taxa de desconto é o resultado mais importante e controverso da economia climática.

        - **Item 3 — V:** O primeiro dividendo é ambiental (menos poluição); o segundo é fiscal (a receita substitui impostos distorcivos sobre trabalho ou capital, reduzindo o peso morto do sistema tributário). A existência e magnitude do segundo dividendo dependem das características do sistema tributário existente.

        - **Item 4 — F:** A regra de Hotelling diz que o *preço líquido* (preço menos custo de extração) cresce à taxa de juros, não o preço de mercado. Além disso, a regra não implica que recursos mais escassos têm preços mais altos — o preço depende também da demanda e do custo de extração, não apenas da escassez.

??? question "Questão estilo ANPEC — Valoração Ambiental e Recursos Naturais"
    Sobre valoração ambiental, recursos naturais e sustentabilidade, julgue os itens:

    **(0)** O valor econômico total de um recurso ambiental inclui apenas os valores de uso direto e indireto — os chamados "valores de não-uso" (existência e legado) não são reconhecidos pela teoria econômica por serem subjetivos.

    **(1)** O método de preços hedônicos estima o valor de atributos ambientais a partir de diferenças de preço em mercados de bens diferenciados, como imóveis — sendo uma aplicação de preferência revelada.

    **(2)** A regra de Hartwick estabelece que uma economia dependente de recursos exauríveis pode manter o consumo per capita constante se investir toda a renda de escassez dos recursos naturais em capital reprodutível.

    **(3)** A poupança genuína (poupança líquida ajustada) de uma economia pode ser negativa mesmo quando o PIB está crescendo — indicando que o crescimento é insustentável no sentido fraco.

    **(4)** Em um recurso pesqueiro de acesso livre, o equilíbrio de livre entrada dissipa toda a renda econômica do recurso, resultando em estoque de peixes acima do nível que maximiza o rendimento sustentável.

    ??? success "Gabarito"
        **Respostas: F-V-V-V-F**

        **Justificativa por item:**

        - **Item 0 — F:** A teoria econômica reconhece explicitamente valores de não-uso (existência e legado) como componentes legítimos do valor econômico total. A valoração contingente foi desenvolvida especificamente para medir esses valores e é aceita como evidência em tribunais (caso Exxon Valdez).

        - **Item 1 — V:** O método de preços hedônicos observa como os preços de imóveis variam com atributos ambientais (qualidade do ar, proximidade a parque) e infere a disposição a pagar — exatamente a lógica da preferência revelada (Capítulo 4): inferir preferências a partir de comportamento observado.

        - **Item 2 — V:** A regra de Hartwick: \(I_K = p_n \cdot h\). Se toda a renda de escassez (royalties) for reinvestida em capital produzido, o estoque total de capital (natural + produzido) se mantém, garantindo sustentabilidade fraca.

        - **Item 3 — V:** A poupança genuína subtrai depleção de recursos e danos ambientais da poupança bruta. Um país que cresce explorando insustentavelmente seus recursos naturais pode ter PIB crescente mas poupança genuína negativa — sinalizando que está "comendo" seu capital.

        - **Item 4 — F:** O acesso livre dissipa a renda econômica, mas resulta em estoque *abaixo* (não acima) do nível do RMS. A pesca continua até que a receita média iguale o custo, levando a sobreexploração — menos peixes, não mais.

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Nordhaus, W. D. (2017). Revisiting the Social Cost of Carbon. *Proceedings of the National Academy of Sciences*, 114(7), 1518–1523.](https://doi.org/10.1073/pnas.1609244114)"
    **Pergunta central:** Qual é o custo social do carbono atualizado, e como ele depende da taxa de desconto, da sensibilidade climática e da trajetória de emissões?

    **Método:** Nordhaus utiliza a versão DICE-2016R do seu modelo de avaliação integrada — que conecta um modelo de crescimento econômico neoclássico a um modelo climático geofísico e a uma função de dano que traduz aquecimento em perda de PIB. O SCC é calculado como o preço-sombra das emissões de CO₂ na trajetória ótima.

    **Resultado principal:** O SCC estimado é de US\$ 31/tCO₂ (em dólares de 2010), com taxa de desconto de ~4,25%. A trajetória ótima implica um imposto de carbono crescente ao longo do tempo. Nordhaus mostra que o SCC é altamente sensível à taxa de desconto: com desconto de 3%, o SCC sobe para ~US\$ 50; com 1,5%, ultrapassa US\$ 100. O artigo enfatiza que o SCC é uma ferramenta de análise de custo-benefício, não um número único e definitivo.

    **Relevância para o capítulo:** Este é o artigo de referência para o modelo DICE e o SCC, discutido na Seção 24.3. Nordhaus recebeu o Nobel de 2018 por "integrar a mudança climática na análise macroeconômica de longo prazo". O artigo conecta diretamente com o debate sobre taxa de desconto (Seção 24.3.4) e com os fundamentos de escolha intertemporal do Capítulo 18.

??? pesquisa "[Weitzman, M. L. (1974). Prices vs. Quantities. *Review of Economic Studies*, 41(4), 477–491.](https://doi.org/10.2307/2296698)"
    **Pergunta central:** Sob incerteza sobre os custos de abatimento, o regulador deve usar um instrumento de preço (imposto) ou de quantidade (quota/cap)?

    **Método:** Weitzman desenvolve um modelo teórico em que o regulador não conhece os custos de abatimento das firmas. Compara a perda esperada de bem-estar (desvio em relação ao ótimo com informação perfeita) de dois instrumentos: um imposto fixo e uma quota fixa. A comparação depende das inclinações das curvas de benefício marginal e custo marginal de abatimento.

    **Resultado principal:** O imposto é preferível quando a curva de custo marginal de abatimento é mais inclinada que a de benefício marginal; a quota é preferível no caso oposto. A intuição: com imposto, a quantidade flutua com os custos (desconhecidos) — e a perda é proporcional à inclinação do benefício marginal. Com quota, o preço flutua — e a perda é proporcional à inclinação do custo marginal. A vantagem comparativa de cada instrumento depende de *qual* flutuação é menos custosa.

    **Relevância para o capítulo:** Este é um dos artigos mais citados em economia ambiental e fundamenta a análise da Seção 24.2.3. A contribuição de Weitzman vai além do resultado formal: seu framework é a base para o debate sobre se o preço do carbono deve ser fixado por imposto ou por cap-and-trade — uma questão central da política climática contemporânea.

??? pesquisa "[Stavins, R. N. (1998). What Can We Learn from the Grand Policy Experiment? Lessons from SO₂ Allowance Trading. *Journal of Economic Perspectives*, 12(3), 69–88.](https://doi.org/10.1257/jep.12.3.69)"
    **Pergunta central:** O programa americano de comércio de permissões de SO₂ (dióxido de enxofre), criado pelo Clean Air Act de 1990, confirmou as previsões teóricas sobre a eficiência de instrumentos de mercado?

    **Método:** Stavins analisa os primeiros anos de implementação do programa de cap-and-trade para SO₂, comparando custos realizados com estimativas prévias do custo de abordagens de comando e controle. Examina também o funcionamento do mercado de permissões, a distribuição dos esforços de abatimento entre firmas e as inovações tecnológicas induzidas.

    **Resultado principal:** O programa reduziu as emissões de SO₂ em ~50% entre 1990 e 1997, a um custo estimado em US\$ 1 bilhão/ano — significativamente menos que os US\$ 2,5–5 bilhões/ano estimados para uma abordagem de comando e controle equivalente. O mercado de permissões funcionou: o preço convergiu e as firmas com menor custo de abatimento venderam permissões para as de maior custo, equalizando custos marginais como prevê a teoria.

    **Relevância para o capítulo:** O SO₂ Allowance Trading Program é o "experimento natural" fundador dos mercados de carbono. Seus resultados validaram empiricamente a superioridade de instrumentos de mercado e serviram de modelo para o EU ETS e outros sistemas cap-and-trade. O artigo conecta com a análise da Seção 24.2 e com os mercados de carbono da Seção 24.4.

??? pesquisa "[Stern, N. (2007). *The Economics of Climate Change: The Stern Review*. Cambridge: Cambridge University Press.](https://doi.org/10.1017/CBO9780511817434)"
    **Pergunta central:** Quais são os custos econômicos das mudanças climáticas e da inação, e qual é o nível ótimo de investimento em mitigação?

    **Método:** O Stern Review é uma avaliação abrangente encomendada pelo governo britânico. Utiliza modelos de avaliação integrada (PAGE model) com taxa de desconto de ~1,4% (taxa pura de preferência temporal de 0,1%, refletindo o princípio ético de que gerações futuras merecem peso quase igual às atuais).

    **Resultado principal:** Sem mitigação, os custos das mudanças climáticas equivaleriam a uma perda permanente de 5–20% do PIB global. O custo de mitigação suficiente para limitar o aquecimento a 2°C seria de ~1% do PIB global/ano — muito menor que o custo da inação. Stern conclui que "os benefícios da ação forte e antecipada superam amplamente os custos da inação".

    **Relevância para o capítulo:** O Stern Review é o contraponto a Nordhaus no debate sobre taxa de desconto (Seção 24.3.4). Sua conclusão de que ação imediata e agressiva é justificada decorre fundamentalmente da escolha de taxa de desconto baixa — uma decisão ética, não técnica. O debate Nordhaus–Stern permanece central para a formulação de política climática.

??? pesquisa "[Greenstone, M.; Kopits, E.; Wolverton, A. (2013). Developing a Social Cost of Carbon for US Regulatory Analysis: A Methodology and Interpretation. *Review of Environmental Economics and Policy*, 7(1), 23–46.](https://doi.org/10.1093/reep/res015)"
    **Pergunta central:** Como o governo dos EUA deve estimar o custo social do carbono para uso na análise regulatória?

    **Método:** Os autores descrevem a metodologia do Interagency Working Group (IWG) para estimar o SCC. O IWG combina três modelos de avaliação integrada (DICE, PAGE, FUND) com distribuições de parâmetros-chave (sensibilidade climática, taxa de desconto, crescimento econômico), gerando uma distribuição de estimativas do SCC.

    **Resultado principal:** A estimativa central do IWG (taxa de desconto de 3%) é de US\$ 36/tCO₂ (em dólares de 2007). Com taxa de 5%, cai para US\$ 11; com 2,5%, sobe para US\$ 56. O percentil 95 (risco catastrófico, taxa de 3%) é de US\$ 105. Os autores enfatizam que o SCC deve ser tratado como uma distribuição de estimativas, não como um número único.

    **Relevância para o capítulo:** O artigo documenta como o SCC passou de conceito acadêmico a ferramenta operacional de política pública. A metodologia do IWG foi usada em centenas de regulações federais dos EUA. A discussão sobre a escolha da taxa de desconto conecta diretamente com a Seção 24.3.4 e com o Capítulo 18.

---

!!! tip "🤖 Exercício com IA"
    **IA.11 — Simulando um mercado de carbono**

    Peça à IA para simular um mercado de carbono com 10 firmas, cada uma com curva de custo marginal de abatimento linear \(\text{CMgA}_i = a_i + b_i \cdot e_i\), onde os parâmetros \(a_i\) e \(b_i\) variam entre firmas. Peça para ela: (1) encontrar a alocação eficiente para um cap de 500 toneladas; (2) calcular o preço de equilíbrio da permissão; (3) comparar o custo total com uma regulação uniforme; (4) plotar as curvas de custo marginal de cada firma e o preço de equilíbrio. Compare a economia de custos com o Exemplo 24.1.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-11)

---

## 📚 Referências do Capítulo

- Bayer, P.; Aklin, M. 2020. The European Union Emissions Trading System Reduced CO₂ Emissions Despite Low Prices. *Proceedings of the National Academy of Sciences*, 117(16), 8804–8812.
- Coase, R. H. 1960. The Problem of Social Cost. *Journal of Law and Economics*, 3, 1–44.
- Costanza, R.; d'Arge, R.; de Groot, R.; et al. 1997. The Value of the World's Ecosystem Services and Natural Capital. *Nature*, 387, 253–260.
- European Commission. 2024. *EU Emissions Trading System (EU ETS) data viewer*. European Environment Agency.
- Gordon, H. S. 1954. The Economic Theory of a Common-Property Resource: The Fishery. *Journal of Political Economy*, 62(2), 124–142.
- Greenstone, M.; Kopits, E.; Wolverton, A. 2013. Developing a Social Cost of Carbon for US Regulatory Analysis. *Review of Environmental Economics and Policy*, 7(1), 23–46.
- Hardin, G. 1968. The Tragedy of the Commons. *Science*, 162(3859), 1243–1248.
- Hartwick, J. M. 1977. Intergenerational Equity and the Investing of Rents from Exhaustible Resources. *American Economic Review*, 67(5), 972–974.
- Hotelling, H. 1931. The Economics of Exhaustible Resources. *Journal of Political Economy*, 39(2), 137–175.
- INPE. 2024. [*PRODES — Monitoramento do desmatamento da Amazônia*](http://www.obt.inpe.br/OBT/assuntos/programas/amazonia/prodes). São José dos Campos: Instituto Nacional de Pesquisas Espaciais.
- Kolstad, C. D. 2011. [*Environmental Economics*](https://books.google.com.br/books?id=t6T4jgEACAAJ). 2nd ed. New York: Oxford University Press.
- Nordhaus, W. D. 2017. Revisiting the Social Cost of Carbon. *Proceedings of the National Academy of Sciences*, 114(7), 1518–1523.
- Nordhaus, W. D. 2018. [*Nobel Prize Lecture: Climate Change: The Ultimate Challenge for Economics*](https://www.nobelprize.org/prizes/economic-sciences/2018/nordhaus/lecture/). Stockholm: Nobel Foundation.
- Perman, R.; Ma, Y.; Common, M.; Maddison, D.; McGilvray, J. 2011. [*Natural Resource and Environmental Economics*](https://books.google.com.br/books?id=TN4VCgAAQBAJ). 4th ed. Harlow: Pearson.
- Pigou, A. C. 1920. [*The Economics of Welfare*](https://oll.libertyfund.org/title/pigou-the-economics-of-welfare). London: Macmillan.
- Stavins, R. N. 1998. What Can We Learn from the Grand Policy Experiment? Lessons from SO₂ Allowance Trading. *Journal of Economic Perspectives*, 12(3), 69–88.
- Stern, N. 2007. [*The Economics of Climate Change: The Stern Review*](https://doi.org/10.1017/CBO9780511817434). Cambridge: Cambridge University Press.
- Tietenberg, T.; Lewis, L. 2018. [*Environmental and Natural Resource Economics*](https://books.google.com.br/books?id=e-J9DwAAQBAJ). 11th ed. New York: Routledge.
- UNEP. 2023. [*Emissions Gap Report 2023*](https://www.unep.org/resources/emissions-gap-report-2023). Nairobi: United Nations Environment Programme.
- Weitzman, M. L. 1974. Prices vs. Quantities. *Review of Economic Studies*, 41(4), 477–491.
- Weitzman, M. L. 2009. On Modeling and Interpreting the Economics of Catastrophic Climate Change. *Review of Economics and Statistics*, 91(1), 1–19.
- World Bank. 2024. [*Adjusted Net Savings Database*](https://data.worldbank.org/indicator/NY.ADJ.SVNX.GN.ZS). Washington, DC: World Bank Group.
