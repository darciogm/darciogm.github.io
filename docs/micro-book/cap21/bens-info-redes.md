# Bens de Informação e Efeitos de Rede

## 21.1 Introdução: Por que a economia digital é diferente? {#211}

### 21.1.1 Bens de informação: custo marginal zero, custo fixo alto

A resposta curta para a pergunta do título: porque quase tudo que você aprendeu sobre custos, preços e concorrência assume que produzir mais custa mais. No mundo digital, essa premissa desmorona. A microeconomia tradicional — da teoria do consumidor (Capítulos 3-6) à firma competitiva (Capítulos 10-13) — assume implicitamente que os bens são **rivais**: se você consome uma maçã, eu não posso consumi-la. Os custos de produção, nesse mundo, são tipicamente convexos: produzir unidades adicionais custa cada vez mais. Nessas condições, o equilíbrio competitivo existe e é eficiente (Primeiro Teorema do Bem-Estar, Capítulo 14).

Bens de informação violam essa premissa de forma radical. Um software, um filme, uma música, uma notícia ou um algoritmo de busca têm custos de produção concentrados na **primeira cópia** — o custo fixo de desenvolvimento é alto, frequentemente na casa de bilhões de dólares. Porém, uma vez criada a primeira cópia, o custo de reprodução e distribuição digital é essencialmente **zero**. Formalmente:

\[
C(q) = F + c \cdot q, \quad \text{com } c \approx 0 \text{ e } F \gg 0
\label{eq:21.1} \tag{21.1}
\]

onde \(F\) é o custo fixo de desenvolvimento e \(c\) é o custo marginal de distribuição. Para um filme na Netflix, \(F\) pode ser de US$ 200 milhões, mas \(c\) — o custo de transmitir uma cópia adicional via streaming — é de frações de centavo.

A implicação é profunda e conecta diretamente com a análise do monopólio natural do Capítulo 15: quando o custo médio \(CMe = F/q + c\) é decrescente para toda escala relevante, o mercado tende ao monopólio natural. A precificação pelo custo marginal (\(p = c \approx 0\)) é eficiente do ponto de vista alocativo, mas **não cobre os custos fixos**, tornando a produção financeiramente inviável. Esse é o dilema central dos mercados de informação: a eficiência alocativa requer preço zero, mas a viabilidade econômica requer preço positivo.

!!! definition "Bens de informação"
    Bens cujo valor reside em seu conteúdo informacional (software, música, dados, algoritmos), caracterizados por: (i) **custo fixo elevado** de produção da primeira cópia; (ii) **custo marginal de reprodução próximo de zero**; (iii) **não-rivalidade** no consumo (o uso por um agente não reduz a disponibilidade para outros). Bens de informação são, em essência, **bens públicos imperfeitos** — não-rivais, mas parcialmente excludentes (via DRM, patentes, senhas).

### 21.1.2 Não-rivalidade e não-excludibilidade

Recorde a classificação de bens do Capítulo 20:

| | Excludente | Não-excludente |
|:--|:-----------|:---------------|
| **Rival** | Bem privado (maçã) | Recurso comum (cardume) |
| **Não-rival** | Bem de clube (Netflix) | Bem público puro (defesa nacional) |

Bens digitais são **não-rivais** por natureza — a transmissão de um vídeo a um usuário não impede a transmissão a outro. Porém, são **parcialmente excludentes**: senhas, paywalls, criptografia e DRM (Digital Rights Management) permitem restringir o acesso. Isso os coloca na categoria de **bens de clube** — não-rivais, mas excludentes. A estratégia das empresas digitais consiste, em grande medida, em encontrar o nível ótimo de exclusão: cobrar demais exclui consumidores cujo benefício marginal excede o custo marginal (zero); cobrar de menos não cobre o custo fixo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Bens digitais custam muito para criar, mas quase nada para copiar — e é esse paradoxo que torna a economia digital tão diferente.

    **Pense assim:** Imagine que um padeiro gasta R$ 1 milhão para inventar uma receita de pão perfeita, mas depois consegue produzir cada pão adicional por R$ 0,001. Cobrar R$ 0,001 por pão é eficiente (todos que valorizam o pão acima desse preço consomem), mas o padeiro jamais recupera o investimento. A solução? Cobrar mais dos que valorizam muito (assinatura premium) e menos (ou nada) dos demais — exatamente o que Netflix, Spotify e Google fazem.

    **Por que isso importa:** A estrutura de custos dos bens digitais gera economias de escala tão extremas que mercados digitais tendem naturalmente ao monopólio ou oligopólio — tornando a análise do Capítulo 15 não uma exceção, mas a regra.

No gráfico interativo abaixo, explore a estratégia de **versioning** (Shapiro & Varian, 1999): criar versões "premium" e "basic" de um bem de informação — onde a versão basic é deliberadamente degradada para segmentar o mercado.

<iframe src="/micro-book/graficos/cap21/versioning.html" title="Figura 21.0 — Versioning: Discriminação de Preços em Bens de Informação" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 21.0 — Versioning de Bens de Informação.** Dois tipos de consumidores (\(\theta_H\) e \(\theta_L\)) com WTP diferentes. A firma cria uma versão premium (\(q=1\)) e uma basic (\(q_L < 1\)) com custo marginal zero. O versioning extrai mais excedente que o preço único — mesmo "desperdiçando" qualidade na versão basic.
</div>

---

## 21.2 Efeitos de Rede {#212}

### 21.2.1 Definição e classificação

Você provavelmente já recusou o convite de um amigo para usar algum aplicativo de mensagens "muito melhor que o WhatsApp" — e a razão não foi preguiça, foi racionalidade pura. De que adianta um mensageiro com criptografia quântica se seus contatos não estão lá? Esse é o cerne dos efeitos de rede: o valor de um produto depende menos de suas especificações técnicas e mais de quantas pessoas já o adotaram. Um **efeito de rede** (ou **externalidade de rede**) ocorre quando o valor de um produto ou serviço para um usuário depende do número de outros usuários que também o utilizam. Diferentemente das externalidades discutidas no Capítulo 20, que tipicamente envolvem efeitos colaterais indesejados (poluição, congestionamento), os efeitos de rede são frequentemente **positivos**: mais usuários tornam o produto mais valioso para cada um deles.

!!! definition "Efeitos de rede diretos e indiretos"
    **Efeito de rede direto**: o valor do produto para um usuário aumenta diretamente com o número de outros usuários do *mesmo* produto ou serviço. Exemplo: um telefone é inútil se ninguém mais tiver um; quanto mais pessoas possuem telefones, mais valiosa é a rede para cada assinante.

    **Efeito de rede indireto** (ou **efeito de rede cruzado**): o valor do produto para os usuários de um lado do mercado aumenta com o número de participantes do *outro* lado. Exemplo: quanto mais desenvolvedores criam aplicativos para o iPhone (um lado), mais valioso o iPhone se torna para os consumidores (outro lado) — e vice-versa.

A distinção é importante porque os mecanismos econômicos diferem. Efeitos diretos operam *dentro* de um mesmo grupo (usuários de WhatsApp beneficiam outros usuários de WhatsApp); efeitos indiretos operam *entre* grupos distintos (desenvolvedores e usuários, compradores e vendedores), dando origem aos **mercados bilaterais** que formalizaremos na Seção 21.3.

### 21.2.2 Modelo formal: utilidade com efeitos de rede

Formalizemos os efeitos de rede diretos. Considere uma rede com \(N\) usuários potenciais. Cada agente \(i\) obtém utilidade:

\[
u_i = v + f(n) - p \label{eq:21.2} \tag{21.2}
\]

onde:

- \(v > 0\) é o valor intrínseco (standalone) do produto;
- \(f(n)\) é o **benefício de rede**, com \(f(0) = 0\), \(f'(n) > 0\) — a utilidade de rede cresce com o número de adotantes \(n\);
- \(p\) é o preço do produto.

O agente \(i\) adota a rede se e somente se \(u_i \geq 0\), ou seja:

\[
v + f(n) \geq p \label{eq:21.3} \tag{21.3}
\]

A condição \(\eqref{eq:21.3}\) gera uma **complementaridade estratégica**: a decisão de adoção de cada agente depende de quantos outros adotam. Se mais pessoas aderem, o benefício \(f(n)\) aumenta, tornando a adesão mais atraente para quem ainda não aderiu — um feedback positivo que pode gerar dinâmicas explosivas de adoção.

### 21.2.3 Equilíbrio de adoção e massa crítica

Para simplificar, suponha que os agentes são heterogêneos no valor intrínseco: o agente \(i\) tem \(v_i\) distribuído uniformemente em \([0, \bar{v}]\). Em equilíbrio, o agente marginal é aquele com \(v_i = v^*\) tal que:

\[
v^* + f(n^*) = p \label{eq:21.4} \tag{21.4}
\]

e o número de adotantes é \(n^* = N \cdot (1 - v^*/\bar{v})\), ou seja, todos os agentes com \(v_i \geq v^*\) aderem. Substituindo na equação \(\eqref{eq:21.4}\):

\[
v^* + f\!\left(N\left(1 - \frac{v^*}{\bar{v}}\right)\right) = p \label{eq:21.5} \tag{21.5}
\]

A equação \(\eqref{eq:21.5}\) pode admitir **múltiplos equilíbrios**:

1. **Equilíbrio de adoção nula** (\(n^* = 0\)): ninguém adota porque ninguém adota — uma profecia autorrealizável. Se \(v^* = p\) e \(f(0) = 0\), qualquer agente com \(v_i < p\) não adere, e se \(p > v_{\max}\), ninguém adere.
2. **Equilíbrio de adoção baixa**: poucos adotantes, benefício de rede pequeno, equilíbrio frágil.
3. **Equilíbrio de adoção alta**: muitos adotantes, benefício de rede alto, equilíbrio estável.

A existência de equilíbrios múltiplos gera o conceito de **massa crítica**: o número mínimo de adotantes \(n_c\) acima do qual a dinâmica de adoção torna-se autossustentável — o equilíbrio "salta" da adoção baixa para a adoção alta.

!!! idea "Intuição Econômica"
    **Em uma frase:** Efeitos de rede criam um "efeito bola de neve" — depois de atingir uma massa crítica de usuários, a adoção se acelera sozinha.

    **Pense assim:** Imagine o primeiro usuário do WhatsApp no Brasil. Para ele, o aplicativo era inútil — não havia ninguém com quem conversar. À medida que amigos e familiares foram aderindo, o valor do WhatsApp cresceu exponencialmente. Em algum momento, a rede atingiu uma massa crítica em que *não ter* WhatsApp se tornou um custo social significativo. Hoje, com mais de 170 milhões de usuários no Brasil, o efeito de rede é tão forte que concorrentes com tecnologia superior (como o Telegram) lutam para conquistar uma fração do mercado.

    **Por que isso importa:** A massa crítica explica por que mercados digitais frequentemente "tombam" (tip) em favor de um único padrão — um fenômeno que economistas chamam de *tipping* — e por que plataformas investem pesadamente em crescimento inicial mesmo operando no prejuízo.

### 21.2.4 Tipping, lock-in e dependência de trajetória

Se efeitos de rede fossem um jogo de dominó, esta seção é onde todas as peças começam a cair. A multiplicidade de equilíbrios descrita acima gera três fenômenos interligados — e cada um deles ajuda a explicar por que trocar de plataforma costuma parecer tão doloroso quanto mudar de religião:

**Tipping (tombamento):** Quando a competição entre redes rivais atinge um ponto de inflexão em que uma pequena vantagem inicial se amplia por meio do feedback positivo dos efeitos de rede, levando uma das redes a dominar o mercado e a outra a desaparecer. O exemplo clássico é a "guerra dos formatos" entre VHS e Betamax nos anos 1980: embora o Betamax fosse tecnicamente superior, o VHS atingiu a massa crítica primeiro (em parte por licenciamento mais amplo a fabricantes) e dominou o mercado.

**Lock-in (aprisionamento):** Uma vez que os usuários adotam uma plataforma e investem em ativos complementares (dados, contatos, aplicativos compatíveis), o custo de migrar para um concorrente torna-se proibitivo — mesmo que o concorrente seja superior. Formalmente, o custo de troca (*switching cost*) do agente \(i\) inclui:

\[
SC_i = \underbrace{c_{\text{dados}}}_{\text{perda de dados}} + \underbrace{c_{\text{rede}}}_{\text{perda de conexões}} + \underbrace{c_{\text{aprend.}}}_{\text{curva de aprendizado}} + \underbrace{c_{\text{compl.}}}_{\text{incompatibilidade}} \label{eq:21.6} \tag{21.6}
\]

**Dependência de trajetória (path dependence):** O resultado final — qual plataforma domina — depende não apenas de eficiência relativa, mas de **eventos iniciais** que podem ser aleatórios ou estratégicos. O teclado QWERTY é o exemplo canônico (embora controverso): adotado por razões mecânicas em máquinas de escrever do século XIX, persiste até hoje devido ao custo coletivo de migração, mesmo que layouts alternativos possam ser ergonomicamente superiores.

!!! tip "Conexão com Teoria dos Jogos"
    A multiplicidade de equilíbrios nos modelos de efeitos de rede é, formalmente, um **jogo de coordenação** (Capítulo 9a). Cada agente prefere adotar a mesma rede que os demais, mas não sabe *qual* rede os demais escolherão. Os equilíbrios de Nash correspondem à adoção universal de uma ou outra rede — e o problema de coordenação pode levar à adoção de uma rede inferior (ineficiência do equilíbrio), ecoando o dilema do prisioneiro e o resultado de que equilíbrios de Nash não são necessariamente Pareto-eficientes.

!!! box-mundo "Box Mundo 21.2 — O ecossistema de super-apps: WeChat e o modelo chinês"

    **Contexto:** Enquanto no Ocidente as funcionalidades digitais são distribuídas entre dezenas de aplicativos especializados (WhatsApp para mensagens, Uber para transporte, PayPal para pagamentos, Amazon para compras), a China desenvolveu o modelo do **super-app** — uma plataforma única que integra todas essas funcionalidades. O WeChat (微信, Weixin), da Tencent, é o exemplo paradigmático: com mais de 1,3 bilhão de usuários ativos mensais em 2024, funciona simultaneamente como rede social, sistema de pagamentos (WeChat Pay), plataforma de comércio eletrônico, serviço de transporte, aplicativo governamental e muito mais.

    **Dados:** Em 2024, cerca de 90% dos smartphones na China tinham o WeChat instalado. Os Mini Programs (mini-aplicativos dentro do WeChat) superavam 6 milhões, movimentando mais de US$ 400 bilhões em transações anuais. O WeChat Pay, junto com o Alipay (Ant Group), processava mais de 80% das transações de pagamento móvel na China, em um mercado que ultrapassou US$ 40 trilhões em 2023 — mais que Visa e Mastercard combinadas.

    **Análise:** O modelo do super-app ilustra a operação simultânea de múltiplos efeitos de rede indiretos: mais usuários atraem mais comerciantes que aceitam WeChat Pay, o que atrai mais usuários; mais usuários incentivam mais desenvolvedores de Mini Programs, que por sua vez atraem mais usuários. Cada nova funcionalidade integrada ao WeChat aumenta os custos de troca (lock-in), pois migrar significaria perder não apenas contatos, mas também métodos de pagamento, histórico de compras e acesso a serviços governamentais. A estratégia é um exemplo de **envelopment de plataforma** (Seção 21.4): a Tencent expandiu progressivamente o escopo do WeChat para abranger mercados adjacentes, dificultando a entrada de competidores especializados em qualquer segmento individual.

    **Fonte:** Tencent Holdings Annual Report 2023. iResearch (2024). China Third-Party Mobile Payment Market Report.

### 21.2.5 Bem-estar e política pública

Os efeitos de rede geram uma tensão entre eficiência estática e dinâmica que complica a análise de bem-estar. Por um lado, o domínio de uma única plataforma pode ser **eficiente** se os benefícios de rede são maximizados quando todos os usuários estão na mesma rede (a utilidade total é maior com uma rede universal do que com duas redes fragmentadas). Por outro lado, o poder de mercado resultante permite que a plataforma dominante cobre preços acima do custo marginal, restrinja a inovação e explore os dados dos usuários.

A intervenção regulatória enfrenta, portanto, um dilema: **fragmentar** a plataforma dominante (para aumentar a concorrência) pode **reduzir** o bem-estar se os efeitos de rede forem fortes. A solução mais discutida na literatura e na prática regulatória é exigir **interoperabilidade**: obrigar plataformas a permitir comunicação entre redes rivais (assim como operadoras de telefone são obrigadas a completar chamadas de outras operadoras). A interoperabilidade preserva os benefícios de rede ao mesmo tempo que reduz os custos de troca e, portanto, o poder de mercado.

<iframe src="/micro-book/graficos/cap21/efeitos-rede.html" title="Figura 21.1 — Efeitos de Rede e Ponto de Virada" class="graph-iframe" style="height:600px;overflow:hidden" scrolling="no"></iframe>
<div class="caption-obj" markdown>
**Figura 21.1 — Efeitos de Rede e Ponto de Virada.** A curva mostra a disposição a pagar \(u(n) = v + \alpha\,n^{\beta}\) como função do número de usuários. O cruzamento com a linha de preço determina a massa crítica \(n^*\): abaixo dela a rede colapsa (armadilha de adoção); acima, a adoção decola rumo ao equilíbrio alto.
</div>

<iframe src="/micro-book/graficos/cap21/winner-takes-all.html" title="Figura 21.2 — Winner-Takes-All: Massa Crítica e Tipping" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 21.2 — Winner-Takes-All e Tipping.** Três equilíbrios: ninguém adota (\(n=0\)), massa crítica instável (\(n_c\)) e adoção universal (\(n=1\)). Reduza o preço ou aumente a força da rede \(\alpha\) para ver a massa crítica encolher — facilitando o "efeito bola de neve".
</div>

<iframe src="/micro-book/graficos/cap21/switching-costs.html" title="Figura 21.3 — Custos de troca e lock-in: poder de mercado do incumbente" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 21.3 — Custos de troca e lock-in.** O custo de troca \(s\) permite ao incumbente cobrar acima do custo marginal. Aumente \(s\) e observe o preço subir, a quantidade cair e o peso morto crescer — a anatomia do poder de mercado digital.
</div>

---

## 21.2.6 IA Generativa: quando o custo marginal de criar conteúdo vai a zero {#2126}

Se bens de informação tradicionais têm custo marginal de *reprodução* próximo de zero (Seção 21.1), a inteligência artificial generativa dá um passo além: reduz o custo marginal de *criação* a quase zero. Quando o ChatGPT escreve um artigo, o Midjourney gera uma ilustração ou o Suno compõe uma música, o custo de produzir a "primeira cópia" — que sempre foi a barreira econômica central nos mercados de informação — desmorona. As implicações para a estrutura de mercado são profundas.

### A economia de modelos de linguagem

Os **Large Language Models (LLMs)** como GPT-4, Claude e Gemini apresentam uma estrutura de custos extrema:

- **Custo fixo de treinamento**: na ordem de US\$ 50–200 milhões por modelo frontier (2024), incluindo hardware (GPUs), energia e dados. O GPT-4 da OpenAI custou estimados US\$ 100 milhões para treinar.
- **Custo marginal de inferência**: centavos por consulta. Uma resposta do ChatGPT-4 custa à OpenAI entre US\$ 0,01 e US\$ 0,10 em computação — e esse custo cai com avanços em hardware e otimização de modelos.
- **Economias de escala em dados**: modelos treinados com mais dados e mais feedback de usuários (RLHF — *Reinforcement Learning from Human Feedback*) são melhores. Isso cria um ciclo análogo ao dos efeitos de rede: mais usuários → mais dados de feedback → modelo melhor → mais usuários.

A estrutura de mercado resultante tende ao **oligopólio com altas barreiras à entrada**: o custo de treinar um modelo frontier é proibitivo para a maioria das empresas, mas os incumbentes (OpenAI, Google DeepMind, Anthropic, Meta AI) competem agressivamente em qualidade e preço. A dinâmica se assemelha ao modelo de Sutton (1991) de **custos fixos endógenos**: quando a competição se dá por qualidade (e não por preço), os custos fixos de P&D são escalados endogenamente pelas firmas, e o mercado permanece concentrado mesmo com entrada livre.

### Impactos sobre mercados de conteúdo e trabalho

A IA generativa altera a cadeia de valor de indústrias inteiras:

- **Mercado de conteúdo**: se um modelo gera texto, imagem e código a custo marginal quase zero, o valor econômico migra da *criação* para a *curadoria* e a *distribuição*. O modelo clássico de direitos autorais — que recompensa o criador pelo custo fixo da primeira cópia — enfrenta uma crise existencial quando a "primeira cópia" é gerada por um algoritmo treinado com bilhões de obras de terceiros.

- **Mercado de trabalho**: a automação por IA generativa afeta desproporcionalmente tarefas cognitivas de rotina (redação, tradução, programação básica, análise de dados) — exatamente o segmento que a teoria do capital humano (Seção 17.2) previa estar protegido pela educação formal. Acemoglu e Restrepo (2020) formalizam o trade-off entre automação (que desloca trabalho) e criação de novas tarefas (que demanda trabalho), e a IA generativa intensifica ambos os lados dessa dinâmica.

- **Propriedade intelectual**: quem detém os direitos sobre conteúdo gerado por IA? Se o modelo foi treinado com obras protegidas por copyright, os autores originais têm direito a compensação? Esses são problemas de externalidade (Capítulo 20) e de desenho de mecanismos (Seção 9c.5) que o framework legal ainda não resolveu.

!!! idea "Intuição Econômica"
    **Em uma frase:** A IA generativa não automatiza apenas a reprodução de informação — automatiza a *criação*, colapsando a última barreira de custo que protegia os mercados de conteúdo.

    **Pense assim:** Imagine que a máquina de escrever tivesse sido inventada junto com um robô que escreve romances razoáveis. O custo fixo de criar a "primeira cópia" — que justificava o copyright, o avanço editorial, o salário do jornalista — desaparece. O que resta de valioso? Originalidade genuína, curadoria humana e confiança — bens que são, por natureza, escassos e difíceis de automatizar.

    **O paradoxo econômico:** Se todos podem gerar conteúdo de qualidade razoável a custo zero, o valor marginal de conteúdo "bom" colapsa, mas o valor de conteúdo *excelente* — que requer insight, criatividade e julgamento humano — pode *aumentar*. A IA generativa pode, paradoxalmente, valorizar mais o trabalho cognitivo de alto nível ao desvalorizar o de nível médio.

!!! box-brasil "Box Brasil — IA generativa e o mercado de trabalho brasileiro"

    **Contexto:** O impacto da IA generativa sobre o mercado de trabalho brasileiro tem características próprias. Segundo dados da RAIS/CAGED (2024), cerca de 30% dos empregos formais no Brasil envolvem tarefas que podem ser parcialmente automatizadas por modelos de linguagem — incluindo assistentes administrativos, analistas de dados, redatores, tradutores e programadores juniores.

    **Dados:** O Brasil tinha, em 2024, mais de 1 milhão de desenvolvedores de software (segundo a BrazilLab e Stack Overflow). A adoção de ferramentas como GitHub Copilot (que usa IA para sugerir código) cresceu mais de 200% no país entre 2023 e 2025. Estimativas do McKinsey Global Institute (2023) sugerem que 25–35% das horas de trabalho no setor de serviços brasileiro poderiam ser complementadas ou substituídas por IA generativa até 2030.

    **Análise:** A exposição brasileira à automação por IA é concentrada no setor de serviços urbanos — exatamente o segmento que mais cresceu nas últimas décadas. A questão distributiva é central: se a IA substitui trabalho cognitivo de rotina (classe média), mas complementa trabalho criativo de alto nível e trabalho manual de baixa qualificação (menos expostos à automação por linguagem), o efeito pode ser uma **compressão da classe média** com ampliação da desigualdade — um padrão oposto ao previsto pela teoria tradicional de capital humano.

---

!!! example "Exercício Resolvido 21.2 — Algoritmo de recomendação como discriminação de preços"
    **Enunciado.** A Netflix oferece o mesmo catálogo a todos os assinantes, mas usa um algoritmo de recomendação que personaliza a experiência. Suponha dois tipos de consumidor: cinéfilos (\(\theta_H\)) com disposição a pagar \(v_H = 60\) e casuais (\(\theta_L\)) com \(v_L = 25\). Sem personalização, o catálogo tem valor intrínseco \(q_0 = 0{,}5\) para ambos (utilidade \(u_i = \theta_i \cdot q - p\)). O algoritmo eleva a qualidade percebida para \(q_A = 0{,}9\) (ao recomendar conteúdo relevante). O custo marginal é zero.

    (a) Sem personalização (\(q = 0{,}5\)): qual o preço ótimo de preço único?

    (b) Com personalização (\(q = 0{,}9\)): qual o novo preço ótimo?

    (c) A personalização funciona como que tipo de discriminação de preços?

    **Solução.**

    **(a)** Sem personalização: \(u_H = 60 \times 0{,}5 - p = 30 - p\); \(u_L = 25 \times 0{,}5 - p = 12{,}5 - p\). Se cobra \(p = 12{,}5\): vende para ambos, \(\pi = 12{,}5 \times 2 = 25\). Se cobra \(p = 30\): vende só para \(\theta_H\), \(\pi = 30\). **Preço ótimo: \(p^* = 30\)** (exclui o casual).

    **(b)** Com personalização: \(u_H = 60 \times 0{,}9 - p = 54 - p\); \(u_L = 25 \times 0{,}9 - p = 22{,}5 - p\). Se cobra \(p = 22{,}5\): vende para ambos, \(\pi = 22{,}5 \times 2 = 45\). Se cobra \(p = 54\): vende só para \(\theta_H\), \(\pi = 54\). **Preço ótimo: \(p^* = 54\)**. Mas note: se a personalização permite cobrar preços diferentes (ou oferecer planos com qualidade de recomendação diferente), a plataforma pode extrair \(54 + 22{,}5 = 76{,}5\).

    **(c)** A personalização algorítmica funciona como **discriminação de preços de segundo grau** (versioning, [Seção 15.7](../cap15/qualidade-discriminacao.md#157)): a plataforma oferece experiências de qualidade diferente (recomendações genéricas vs. personalizadas) e os consumidores se autosselecionam. Na prática, quando a personalização é igual para todos mas aumenta o valor percebido, ela **eleva a disposição a pagar média**, permitindo preços maiores — uma forma indireta de aproximação à discriminação de primeiro grau.

!!! example "Exercício Resolvido 21.3 — Modelo de negócios Nubank vs. bancões"
    **Enunciado.** O Nubank opera como plataforma bilateral: conecta depositantes (lado 1) a tomadores de crédito (lado 2). Compare o modelo com o de um banco tradicional, sabendo que:

    - Nubank: custo fixo de plataforma \(F = 500\) milhões; custo marginal por cliente \(c = 5\); sem agências; efeito de rede indireto \(\alpha = 0{,}2\) (mais clientes → mais dados → melhor *credit scoring* → menores spreads → mais clientes).
    - Banco tradicional: custo fixo \(F = 5.000\) milhões (agências); custo marginal por cliente \(c = 50\) (atendimento presencial); sem efeito de rede significativo.

    (a) Compare o custo médio para 10 milhões e 100 milhões de clientes.

    (b) Por que o Nubank pode oferecer conta gratuita enquanto bancos tradicionais cobram tarifas?

    **Solução.**

    **(a)** Custo médio = \(F/n + c\).

    | | 10 milhões | 100 milhões |
    |:--|:---:|:---:|
    | Nubank | \(500/10 + 5 = 55\) | \(500/100 + 5 = 10\) |
    | Tradicional | \(5.000/10 + 50 = 550\) | \(5.000/100 + 50 = 100\) |

    A 100 milhões de clientes, o Nubank tem CMe 10× menor.

    **(b)** O Nubank segue a lógica de plataforma bilateral com subsídio cruzado (Seção 21.3.3). A conta gratuita é o lado subsidiado — atrai depositantes cuja presença gera dados e funding para o lado pagante (crédito, onde as margens são altas). O efeito de rede indireto (\(\alpha = 0{,}2\)) cria um ciclo virtuoso: mais clientes → melhor *scoring* → menor inadimplência → menores taxas → mais clientes. Bancos tradicionais, sem esse efeito de rede e com custos fixos estruturais (agências), precisam cobrar tarifas para cobrir \(c = 50\) por cliente.

??? r-interactive "R Interativo — Simulação de Efeitos de Rede e Massa Crítica"
    ```r
    # Simulação de adoção com efeitos de rede
    # Modelo: u_i = v_i + alpha * n - p
    # v_i ~ Uniforme[0, v_max]

    # Parâmetros (altere para explorar)
    v_max  <- 10    # valor intrínseco máximo
    alpha  <- 0.08  # força do efeito de rede
    p      <- 4     # preço do produto
    N      <- 1000  # população total

    # Função de equilíbrio: encontra n* tal que v* + alpha*n* = p
    # onde n* = N * (1 - v*/v_max)
    # Substituindo: v* = p - alpha * N * (1 - v*/v_max)
    find_equilibria <- function(v_max, alpha, p, N) {
      v_star <- seq(0, v_max, length.out = 1000)
      n_star <- N * (1 - v_star / v_max)
      lhs <- v_star + alpha * n_star  # benefício do agente marginal
      rhs <- rep(p, length(v_star))   # preço

      # Plotar
      plot(n_star, lhs, type = "l", lwd = 3, col = "#2196F3",
           xlab = "Número de adotantes (n)",
           ylab = "Benefício do agente marginal",
           main = "Efeitos de Rede: Equilíbrios de Adoção",
           xlim = c(0, N), ylim = c(0, max(lhs) * 1.2))
      abline(h = p, col = "#F44336", lwd = 2, lty = 2)
      text(N * 0.85, p + 0.3, paste0("Preço = ", p), col = "#F44336", cex = 0.9)

      # Encontrar interseções (equilíbrios)
      crossings <- which(diff(sign(lhs - rhs)) != 0)
      for (cr in crossings) {
        points(n_star[cr], p, pch = 19, cex = 2, col = "#4CAF50")
        text(n_star[cr], p - 0.5, paste0("n* = ", round(n_star[cr])),
             col = "#4CAF50", cex = 0.8)
      }

      legend("topleft",
             legend = c("Benefício marginal v* + α·n", "Preço p", "Equilíbrios"),
             col = c("#2196F3", "#F44336", "#4CAF50"),
             lwd = c(3, 2, NA), pch = c(NA, NA, 19), lty = c(1, 2, NA),
             bg = "white")

      grid(col = "gray90")
    }

    find_equilibria(v_max, alpha, p, N)
    ```

    **Experimente:** Aumente `alpha` de 0,08 para 0,15 e observe como a curva de benefício se inclina — a massa crítica diminui e o equilíbrio alto salta. Reduza `p` de 4 para 2 e veja o equilíbrio baixo desaparecer: a estratégia de "preço de penetração" elimina a armadilha de baixa adoção.
