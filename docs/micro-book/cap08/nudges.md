# 8.6 O Empurrãozinho Certo: Nudges e Arquitetura de Escolhas

Chegamos à seção mais prática do capítulo — e talvez a mais controversa. As seções anteriores mostraram que erramos de formas previsíveis: distorcemos probabilidades, odiamos perdas mais do que amamos ganhos, punimos injustiça mesmo a nosso custo e sacrificamos o futuro pelo presente. Diante disso, o que fazer? Proibir escolhas ruins (paternalismo)? Deixar que cada um se vire (laissez-faire)? Ou existe uma terceira via — que use os *próprios vieses* a favor das pessoas?

As respostas tradicionais oscilam entre dois extremos. O **paternalismo duro** — proibir cigarros, limitar o acesso ao crédito rotativo, tornar compulsória a contribuição previdenciária — é eficaz, mas restringe a liberdade individual e pode ser politicamente impraticável em democracias liberais. O **laissez-faire informacional** — fornecer mais e melhor informação e deixar que os agentes decidam — respeita a autonomia, mas frequentemente falha porque o problema não é falta de informação, mas a forma como o cérebro processa informação. A contribuição fundamental de Thaler e Sunstein (2008) foi mostrar que existe uma terceira via: preservar a liberdade de escolha enquanto se usa o que sabemos sobre psicologia humana para tornar as escolhas mais fáceis de acertar.

### 8.6.1 Paternalismo libertário

A resposta proposta por Thaler e Sunstein é o **paternalismo libertário** — uma filosofia que aceita os vieses como dado e busca utilizá-los a favor dos próprios agentes. A ferramenta central dessa abordagem é o *nudge*.

!!! definition "Nudge"
    Um **nudge** é qualquer aspecto da **arquitetura de escolha** que altera o comportamento das pessoas de forma previsível, sem proibir nenhuma opção nem alterar significativamente os incentivos econômicos. Para contar como nudge, a intervenção deve ser fácil e barata de evitar (Thaler e Sunstein 2008).

A filosofia por trás dos nudges é o **paternalismo libertário**: libertário porque preserva a liberdade de escolha; paternalista porque direciona as decisões no sentido do bem-estar do próprio agente (conforme julgado por ele mesmo em condições de reflexão cuidadosa).

### 8.6.2 Ferramentas de nudging

Como traduzir a filosofia do paternalismo libertário em intervenções concretas?[^holy-hand-grenade-nudge] As principais ferramentas de nudging exploram precisamente os vieses documentados nas seções anteriores — a mesma inércia que impede as pessoas de poupar pode ser usada a seu favor, bastando mudar a opção-padrão:

**Default options (opções-padrão).** A inércia e o viés do *status quo* fazem com que a maioria das pessoas aceite a opção pré-selecionada. Mudar o *default* de "opt-in" para "opt-out" pode ter efeitos dramáticos.

!!! example "Save More Tomorrow (SMarT)"
    O programa *Save More Tomorrow*, desenhado por Thaler e Benartzi (2004), convida trabalhadores a se comprometer, **hoje**, a destinar uma fração de seus **aumentos salariais futuros** à poupança previdenciária. Como o sacrifício é futuro (e não imediato), a taxa de adesão é alta. Além disso, a aversão à perda é atenuada porque o trabalhador nunca vê sua renda líquida diminuir — apenas cresce menos. Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais.

A tabela a seguir organiza as principais ferramentas de nudging:

<a id="tabela-8-8"></a>

| Tipo de nudge | Viés explorado | Mecanismo | Exemplo | Evidência |
|---|---|---|---|---|
| Opção-padrão (*default*) | *Status quo*, inércia | Pré-selecionar a opção desejável | Adesão automática 401(k) | 49% → 86% (Madrian e Shea 2001) |
| Framing / simplificação | Efeito framing | Alterar a forma de apresentação | Rótulos semáforo em alimentos | Melhora na qualidade da dieta |
| Feedback e saliência | Disponibilidade | Tornar consequências visíveis | Conta de energia com emoji | Redução de 2% no consumo |
| Normas sociais | Conformidade | Informar sobre comportamento de pares | "90% pagam IPTU em dia" | Aumento de 5–15% na conformidade |
| Compromisso prévio | Viés do presente | Vincular decisão futura agora | *Save More Tomorrow* | Poupança 3,5% → 13,6% |
| Simplificação | Sobrecarga cognitiva | Reduzir opções e burocracia | Formulário FAFSA simplificado | +8 p.p. na inscrição universitária |

<div class="caption-obj" markdown>
**Tabela 8.8 — Principais ferramentas de nudging.**
</div>

<div class="graph-container" markdown>
  <iframe src="/micro-book/graficos/cap08/nudge-default.html" title="Figura 8.8 — Efeito Padrão (Default)" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>
</div>

<div class="caption-obj" markdown>
**Figura 8.8 — Efeito do default na adesão.** Compare as taxas de adesão sob regimes de opt-in e opt-out para diferentes programas.
</div>

**Framing e simplificação.** A forma como as informações são apresentadas importa: rótulos nutricionais em semáforo (verde/amarelo/vermelho) são mais eficazes do que tabelas numéricas detalhadas; cartas de cobrança com linguagem simplificada aumentam a taxa de pagamento de impostos.

**Feedback e saliência.** Tornar as consequências de uma decisão mais visíveis no momento da escolha — como mostrar o consumo de energia em tempo real — ajuda a alinhar o comportamento com as intenções de longo prazo.

**Normas sociais.** Informar as pessoas sobre o comportamento de seus pares ("90% dos seus vizinhos pagam o IPTU em dia") explora a tendência à conformidade social e pode ser mais eficaz do que apelos racionais ou ameaças de multa.

??? exercicio-resolvido "Exercício Resolvido 8.4 — Impacto do default na adesão previdenciária"
    **Enunciado:** Uma empresa com 1.000 funcionários adota um plano de previdência complementar. Sob o regime de adesão voluntária (*opt-in*), a taxa de adesão é de 40%. A empresa considera migrar para adesão automática (*opt-out*). Suponha que, com *opt-out*, 85% dos funcionários permanecem no plano, e que a contribuição média mensal é de R\$ 300. (a) Calcule o aumento na contribuição mensal agregada. (b) Se 20% dos funcionários que permaneceram por inércia teriam preferido não participar (revelando heterogeneidade de preferências), quantos funcionários são "nudgeados" em direção contrária às suas preferências?

    **Dados:** 1.000 funcionários, adesão *opt-in* = 40%, adesão *opt-out* = 85%, contribuição média = R\$ 300/mês.

    **Resolução:**

    **Passo 1 — Contribuição agregada sob cada regime**

    - *Opt-in*: \(1000 \times 0{,}40 \times 300 = \text{R\$ }120.000\)/mês.
    - *Opt-out*: \(1000 \times 0{,}85 \times 300 = \text{R\$ }255.000\)/mês.
    - Aumento: \(255.000 - 120.000 = \text{R\$ }135.000\)/mês (+112,5%).

    **Passo 2 — Funcionários "nudgeados" na direção errada**

    Novos aderentes por inércia: \(850 - 400 = 450\) funcionários.
    Desses, 20% prefeririam não participar: \(450 \times 0{,}20 = 90\) funcionários.

    **Resultado:** A mudança de *default* eleva a contribuição agregada em R\$ 135.000/mês, mas 90 funcionários (9% do total) permanecem no plano contra suas preferências reveladas.

    **Interpretação econômica:** O exercício ilustra o *trade-off* fundamental dos nudges: o ganho agregado é substancial, mas não é isento de custos. Os 90 funcionários "nudgeados" na direção errada representam a heterogeneidade de preferências que limita a eficácia de qualquer nudge universal. Políticas bem desenhadas minimizam esse custo tornando o *opt-out* simples e visível — como faz a Funpresp no serviço público federal brasileiro.

### 8.6.3 Limites e críticas

Os nudges oferecem um arsenal valioso, mas é essencial evitar o entusiasmo excessivo. Como toda ferramenta, eles têm limitações — e ignorá-las pode comprometer tanto sua eficácia quanto sua legitimidade.

A economia comportamental e os nudges não são panaceias:

- **Heterogeneidade de preferências.** O nudge "certo" para a maioria pode prejudicar uma minoria com preferências legítimas diferentes.
- **Manipulação.** A fronteira entre nudge benevolente e manipulação (*sludge*) depende da intenção do arquiteto de escolhas — e essa intenção nem sempre é transparente.
- **Persistência.** Muitos nudges perdem eficácia com o tempo, à medida que os agentes se habituam.
- **Problemas estruturais.** Nudges são complementos, não substitutos, de políticas públicas robustas. Nenhum nudge compensa salários insuficientes ou ausência de acesso a serviços financeiros.

O conceito de ***sludge*** — introduzido por Thaler e Sunstein — é particularmente relevante: enquanto nudges tornam comportamentos desejáveis mais fáceis, sludges são obstáculos burocráticos desnecessários que tornam comportamentos desejáveis mais difíceis. Formulários complexos, filas longas, requisitos de documentação excessivos e processos de *opt-out* deliberadamente difíceis são exemplos de sludge. A distinção entre nudge e sludge é normativa — depende de quem define o que é "desejável" —, e críticos apontam que governos e empresas frequentemente usam sludges para desviar os cidadãos de direitos e benefícios que seriam custosos para o Estado ou para a firma. A campanha de simplificação burocrática empreendida pelo governo federal brasileiro nos últimos anos — com a criação da Redesim para abertura de empresas e o Portal Gov.br para centralizar serviços digitais — é parcialmente uma estratégia de redução de sludge: ao tornar o acesso a serviços públicos mais rápido e fácil, remove-se uma barreira ao comportamento "desejável" (formalização, acesso a benefícios).

Uma crítica mais profunda vem da perspectiva normativa. O paternalismo libertário assume que existe um "eu verdadeiro" cujas preferências de longo prazo devem ser favorecidas em relação às preferências de curto prazo. Mas quem decide quais são as preferências "verdadeiras"? Esse problema — às vezes chamado de o problema do *arquiteto sábio* — é a objeção filosófica central a toda a agenda de nudges. Camerer et al. (2003) propuseram uma versão mais modesta: o **paternalismo assimétrico**, que intervém apenas quando o custo da intervenção para agentes totalmente racionais é baixo, mas o benefício para agentes com vieses é alto. Essa versão é mais defensável filosoficamente, mas também mais difícil de implementar na prática.

!!! box-brasil "Box Brasil 8.7: CPF na nota e previdência complementar: nudges brasileiros"
    O Brasil dispõe de dois exemplos marcantes do poder dos nudges em políticas públicas. O primeiro é o programa **Nota Fiscal Paulista** (São Paulo, 2008), depois replicado em outros estados sob o nome "CPF na nota": ao incluir o CPF nas notas fiscais, os consumidores recebem créditos e participam de sorteios, tornando-se fiscalizadores involuntários da evasão fiscal. Do ponto de vista comportamental, o programa explora a *sobrevalorização de eventos raros* (a chance de ganhar num sorteio) para induzir um comportamento — exigir nota fiscal — que tem externalidade positiva sobre a arrecadação tributária. A Secretaria da Fazenda de São Paulo reportou queda significativa na informalidade comercial nas regiões de maior adesão ao programa. O segundo exemplo é a **Funpresp**, o regime de previdência complementar dos servidores públicos federais criado pela Emenda Constitucional nº 41/2003 e regulamentado em 2012. Novos servidores enquadrados no regime são automaticamente inscritos no plano com contribuição-padrão de 8,5% da parcela remuneratória acima do teto do RGPS, podendo fazer *opt-out*. A adesão automática explora o viés do *status quo* e o viés do presente: ao remover a necessidade de ação ativa, o *default* supera a procrastinação que levaria muitos servidores a adiar indefinidamente a decisão de aderir. Estudos de adesão à Funpresp mostram taxas de participação substancialmente acima das previstas para um regime de *opt-in* equivalente.

!!! box-brasil "Box Brasil 8.8: Nudges em políticas públicas federais"
    O governo federal brasileiro tem incorporado gradualmente princípios de economia comportamental em políticas públicas. A rotulagem frontal com **lupa de advertência** da Anvisa (2022), para alimentos ricos em açúcar, gordura saturada e sódio, é um nudge clássico de saliência: destaca a informação mais relevante no momento da decisão de compra. O Programa Nacional de Imunizações (PNI) utiliza lembretes por SMS e notificações via aplicativo do SUS para aumentar a adesão a campanhas de vacinação — um exemplo de feedback e saliência. No sistema financeiro, o *Open Finance* do Banco Central (implementado a partir de 2021) facilita a comparação de produtos financeiros entre instituições, reduzindo a ancoragem ao banco de relacionamento e combatendo a inércia do *status quo* via portabilidade simplificada de crédito.

!!! box-mundo "Box Mundo 8.2 — Unidades de nudge ao redor do mundo"

    **Contexto:** A economia comportamental saiu dos laboratórios universitários e entrou nos gabinetes de governo. A partir de 2010, diversos países criaram unidades governamentais dedicadas a aplicar insights comportamentais ao desenho de políticas públicas — as chamadas *nudge units* ou *behavioural insights teams*. Esse movimento representa talvez a mais rápida transferência de conhecimento da pesquisa acadêmica básica para a implementação de políticas na história da economia: menos de quatro décadas separam os artigos seminais de Kahneman e Tversky da institucionalização de seus achados em estruturas permanentes de governo.

    **Dados:** O pioneiro foi o **Behavioural Insights Team** (BIT) do Reino Unido, criado em 2010 dentro do gabinete do Primeiro-Ministro David Cameron. O BIT demonstrou, por meio de ensaios controlados randomizados (*RCTs*), que pequenas alterações na redação de cartas de cobrança fiscal (incluindo a frase "a maioria das pessoas em sua região já pagou seus impostos") elevavam a taxa de pagamento em até 5 pontos percentuais — gerando milhões de libras adicionais em arrecadação sem qualquer alteração legislativa. Nos Estados Unidos, o **Social and Behavioral Sciences Team** (SBST), criado em 2015 por decreto executivo de Barack Obama, conduziu mais de 30 projetos piloto em áreas como adesão a programas de aposentadoria, inscrição em planos de saúde e acesso a benefícios de veteranos. Na área de doação de órgãos, a mudança do regime de *opt-in* (consentimento explícito) para *opt-out* (consentimento presumido) produziu resultados dramáticos: países com *opt-out*, como Áustria e Espanha, apresentam taxas de consentimento superiores a 90%, enquanto países com *opt-in*, como Alemanha e Dinamarca, ficam abaixo de 20% (Johnson & Goldstein, 2003). No campo previdenciário, Madrian e Shea (2001) documentaram que a inscrição automática (*auto-enrollment*) em planos 401(k) nos EUA elevou a participação de 49% para 86% entre novos empregados — um efeito atribuído ao viés do *status quo* e à inércia decisória.

    **Análise:** A OCDE mantém, desde 2017, a *Behavioural Insights and Public Policy Network*, que reúne mais de 200 instituições em 60 países aplicando economia comportamental a políticas públicas. O sucesso dessas iniciativas valida empiricamente a premissa central da Seção 8.6: quando os vieses são sistemáticos e previsíveis, é possível redesenhar a "arquitetura de escolhas" de modo a melhorar os resultados sem restringir a liberdade. Contudo, a evidência também revela limites. Os efeitos dos nudges tendem a ser modestos em magnitude (tipicamente 1 a 10 pontos percentuais), podem decair ao longo do tempo (*decay effect*) e funcionam melhor para decisões pontuais (pagar um imposto, inscrever-se num plano) do que para mudanças comportamentais persistentes (perder peso, reduzir consumo de energia). Além disso, o debate ético sobre paternalismo libertário ganha urgência à medida que os governos expandem o uso de nudges: quem define o que é o "bom comportamento" que o nudge deve promover?

    **Fonte:** Thaler, R. H.; Sunstein, C. R. (2008). *Nudge: Improving Decisions about Health, Wealth, and Happiness*. New Haven: Yale University Press. Johnson, E. J.; Goldstein, D. (2003). "Do Defaults Save Lives?" *Science*, 302(5649), 1338–1339. Madrian, B. C.; Shea, D. F. (2001). "The Power of Suggestion: Inertia in 401(k) Participation and Savings Behavior." *Quarterly Journal of Economics*, 116(4), 1149–1187. OECD (2017). *Behavioural Insights and Public Policy: Lessons from Around the World*. Paris: OECD Publishing.

---

Se este capítulo fez seu trabalho, você sai com três convicções:

1. **Vieses não são ruído — são sinal.** Os desvios da racionalidade neoclássica não são erros aleatórios que desaparecem com agregação. São padrões sistemáticos, previsíveis e documentados em dezenas de milhares de observações. Um modelo que os ignora não é parcimonioso — é incompleto.
2. **O contexto é parte da decisão.** Ponto de referência, framing, default, norma social — nada disso deveria importar para o *homo economicus*, mas importa para o *homo sapiens*. Reconhecer que a arquitetura de escolha afeta o resultado é o primeiro passo para desenhá-la com responsabilidade.
3. **Corrigir vieses é mais difícil do que identificá-los.** Nudges são ferramentas poderosas, mas não são panaceias. O arquiteto de escolhas precisa de humildade — porque o viés do paternalista pode ser tão real quanto o viés do paternalizado.

*Sabemos onde a racionalidade falha. Agora, a pergunta muda: quando suas decisões afetam as minhas, o que acontece? Bem-vindo à teoria dos jogos.*

---

<iframe src="/micro-book/graficos/cap08/webr-prospecto.html" title="WebR — Teoria do Prospecto" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 8.1 — Função valor e ponderação de probabilidades.** Visualize a assimetria ganhos/perdas (λ > 1) e o sobrepeso de eventos raros. Altere λ para "desligar" a aversão à perda e compare com a utilidade esperada clássica.
</div>

<iframe src="/micro-book/graficos/cap08/webr-allais.html" title="WebR — Paradoxo de Allais" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 8.2 — Paradoxo de Allais: quebrando vNM.** O código compara EU(A) vs. EU(B) e EU(C) vs. EU(D). O padrão típico (A e D) viola a independência — nenhum nível de aversão ao risco γ resolve. O triângulo de Marschak-Machina visualiza o paradoxo.
</div>

<iframe src="/micro-book/graficos/cap08/webr-desconto.html" title="WebR — Desconto Hiperbólico" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 8.3 — Desconto hiperbólico vs. exponencial.** Com β < 1 (viés do presente), o "eu do presente" é mais impaciente que o "eu do futuro" — gerando procrastinação e reversão de preferências. Compare as funções de desconto e descubra por que a academia perde clientes em março.
</div>

<iframe src="/micro-book/graficos/cap08/webr-fehr-schmidt.html" title="WebR — Fehr-Schmidt" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 8.4 — Fehr-Schmidt: aversão à desigualdade no ultimato.** Com α = 0 (egoísta puro), o respondedor aceita qualquer oferta > 0. Com α alto, rejeita ofertas "injustas" — mesmo perdendo dinheiro. Simule o jogo do ultimato para diferentes perfis.
</div>

---

!!! classroom "Atividade 8.1 — O Paradoxo de Allais ao vivo: flagrando o axioma da independência (15 min)"
    **Objetivo:** Reproduzir o Paradoxo de Allais em sala e mostrar que a maioria dos alunos viola o axioma da independência da utilidade esperada.

    **Material:** Slides com as duas loterias (ou Mentimeter para votação anônima).

    **Protocolo:**

    1. **Decisão 1** (2 min): Projete: Loteria A = R$ 1.000.000 com certeza. Loteria B = 89% de R$ 1M, 10% de R$ 5M, 1% de R$ 0. Vote: A ou B?
    2. **Decisão 2** (2 min): Loteria C = 11% de R$ 1M, 89% de R$ 0. Loteria D = 10% de R$ 5M, 90% de R$ 0. Vote: C ou D?
    3. **Resultado** (3 min): Registre as proporções. Tipicamente: maioria escolhe A na primeira decisão (efeito certeza) e D na segunda (os 89% de zero são "iguais" entre C e D, então comparam 11% de R$ 1M vs. 10% de R$ 5M). Mas A e D juntos *violam* o axioma da independência!
    4. **A demonstração** (3 min): Mostre algebricamente: se você prefere A a B, deveria preferir C a D (basta cancelar a parte comum de 89%). "Escolher A *e* D é logicamente inconsistente com a teoria de VNM."
    5. **Debrief** (5 min):
        - "Levante a mão quem escolheu A e D." → Maioria. "Parabéns, vocês acabaram de replicar o Paradoxo de Allais (1953). Ele usou exatamente este tipo de experimento para desafiar a utilidade esperada."
        - "A Teoria do Prospecto explica isso: a função de ponderação \(\pi(p)\) sobrepondera probabilidades pequenas (1% de zero na decisão 1 *parece* enorme) e subestima probabilidades moderadas."
        - Conecte com Seção 8.2 (Teoria do Prospecto) e Seção 7.2 (axioma da independência de VNM).

    **Conexão com o conteúdo:** Seção 8.2 (Teoria do Prospecto), Seção 7.2 (utilidade esperada e axioma da independência). Referência: Allais (1953), Kahneman e Tversky (1979).

!!! classroom "Atividade 8.2 — O jogo do ultimato: preferências sociais em ação (20 min)"
    **Objetivo:** Demonstrar que agentes reais rejeitam divisões "injustas" mesmo quando isso é irracional segundo o modelo padrão — evidência de preferências sociais.

    **Material:** Notas de papel (fictícias) ou pontos extras como incentivo; envelopes.

    **Protocolo:**

    1. **Setup** (3 min): Forme duplas aleatórias. Em cada dupla, um é "proponente" e outro é "respondedor". Proponente recebe R$ 100 (fictícios ou pontos) e propõe uma divisão (ex: "Eu fico com R$ 70, você recebe R$ 30"). Respondedor aceita (ambos recebem) ou rejeita (ambos recebem zero).
    2. **Rodada 1 — Anônima** (5 min): Proponentes escrevem a oferta em papel dobrado. Respondedores decidem sem ver quem propôs. Registre os resultados.
    3. **Rodada 2 — Face a face** (5 min): Repita com duplas novas, agora olhando nos olhos. Compare: as ofertas são mais generosas?
    4. **Debrief** (7 min):
        - "O *homo economicus* aceitaria R$ 1, porque R$ 1 > R$ 0. Quantos respondedores rejeitaram ofertas abaixo de R$ 20?" → Muitos.
        - "O *homo economicus* ofereceria R$ 1, sabendo que seria aceito. Quanto os proponentes ofereceram em média?" → Tipicamente 35–45%.
        - "A rejeição é 'irracional'? Ou revela que a utilidade inclui *justiça*?" → Modelo de Fehr-Schmidt (Seção 8.4): \(U_i = x_i - \alpha \max(x_j - x_i, 0) - \beta \max(x_i - x_j, 0)\).
        - "Na rodada face a face, as ofertas subiram? Por quê?" → Normas sociais e reciprocidade são mais fortes com identidade revelada.
        - Conecte com o Jogo do Ultimato (Seção 8.4) e antecipe barganha de Rubinstein (Módulo 9b).

    **Conexão com o conteúdo:** Seção 8.4 (preferências sociais, Fehr-Schmidt). Referências: Güth, Schmittberger e Schwarze (1982); Fehr e Schmidt (1999). Inspirado em Holt (2007, Cap. 14).

---

[^holy-hand-grenade-nudge]: O desenho de um nudge eficaz exige a precisão da Santa Granada de Mão de Antioquia em *Monty Python and the Holy Grail*: "Primeiro, retirarás o pino sagrado. Então, contarás até três — nem mais, nem menos." Trocar "pino" por "default", "três" por "opt-out simples" e "granada" por "formulário de adesão", e temos o protocolo de um arquiteto de escolhas competente. Pular etapas — como o Sir Lancelot, que contou até cinco — transforma nudge em sludge.
