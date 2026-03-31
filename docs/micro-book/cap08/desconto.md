# 8.5 "Amanhã Eu Começo a Dieta": Desconto Hiperbólico e Autocontrole

Agora vem o domínio onde o ser humano mais tropeça — e onde as consequências são mais dolorosas: o **tempo**. Você *sabe* que deveria poupar para a aposentadoria, mas gasta o bônus num iPhone. Você *sabe* que deveria estudar para a prova, mas assiste mais um episódio. Você *planeja* começar a dieta na segunda-feira — e na segunda-feira, planeja começar na *próxima* segunda. Esse padrão universal — querer uma coisa para o futuro e fazer outra no presente — é o **viés do presente**, e a microeconomia tem um modelo para ele.

O custo desse viés não é uma curiosidade de laboratório: é gente chegando aos 65 anos sem previdência, famílias afogadas no rotativo do cartão, e pacientes que não tomam remédio para hipertensão porque "agora" não dói. É o domínio onde a economia comportamental tem o impacto prático mais direto — e onde as intervenções de política (nudges) têm os resultados mais documentados.

### 8.5.1 O Modelo de Utilidade Descontada

O modelo formal de consumo intertemporal com desconto exponencial — incluindo a restrição orçamentária intertemporal, a equação de Euler e o Valor Presente Líquido — é desenvolvido no Capítulo 18.

O modelo padrão de escolha intertemporal — o **Modelo de Utilidade Descontada** (DUM), proposto por Samuelson (1937) — assume que os agentes avaliam fluxos de utilidade futura usando uma taxa de desconto **constante** \(\delta \in (0,1)\). É importante notar que Samuelson, ao propor o modelo, foi explicitamente cético sobre sua validade psicológica — ele o apresentou como uma conveniência analítica, não como uma descrição fiel do comportamento humano. Não obstante, o DUM tornou-se o paradigma dominante em macroeconomia e finanças, e suas implicações comportamentais — em particular, a consistência temporal — passaram a ser tratadas como referência normativa.

\[
U_0 = \sum_{t=0}^{T} \delta^t \, u(c_t)
\label{eq:8.6} \tag{8.6}
\]

A principal implicação comportamental do desconto exponencial é a **consistência temporal**: se o agente prefere a opção A à B quando ambas ocorrem no futuro, essa preferência se mantém quando o momento da decisão se aproxima. Em outras palavras, um agente exponencial nunca muda de ideia simplesmente porque o tempo passou — seus planos são confiáveis. Formalmente, se \(u(A)\) em \(t\) é preferido a \(u(B)\) em \(t+k\), então a mesma preferência vale para qualquer data de avaliação anterior.

### 8.5.2 Anomalias do desconto exponencial

A consistência temporal é uma propriedade poderosa — e, como se verifica, frequentemente violada. Você já prometeu a si mesmo que começaria a poupar "no mês que vem", e quando o mês chegou, adiou de novo? Ou que faria exercício pela manhã, mas quando o despertador tocou, preferiu dormir? Esses padrões não são anedóticos: eles refletem regularidades empíricas documentadas em dezenas de estudos.

Wilkinson e Klaes (2012, p. 282–297) e Frederick, Loewenstein e O'Donoghue (2002) documentam diversas anomalias que o desconto exponencial não consegue explicar:

1. **Taxas de desconto decrescentes com o horizonte.** Em experimentos, a taxa de desconto implícita entre hoje e amanhã é muito maior do que entre daqui a 30 e 31 dias — embora o intervalo seja o mesmo.

2. **Efeito magnitude.** Valores grandes são descontados a taxas menores do que valores pequenos.

3. **Assimetria ganhos-perdas.** Ganhos futuros são descontados mais fortemente do que perdas futuras.

4. **Preferências reversíveis.** Um agente pode preferir R\$ 100 hoje a R\$ 110 amanhã, mas preferir R\$ 110 em 31 dias a R\$ 100 em 30 dias — uma inversão que o desconto exponencial não permite.

!!! example "As maçãs de Thaler"
    Richard Thaler propôs o seguinte experimento mental: a maioria das pessoas prefere **1 maçã hoje** a **2 maçãs amanhã**, mas prefere **2 maçãs em 51 dias** a **1 maçã em 50 dias**. Essa inversão de preferência revela uma taxa de desconto decrescente — alta para o presente imediato, baixa para o futuro distante.

### 8.5.3 Desconto quasi-hiperbólico

Diante dessas anomalias, como construir um modelo que capture o viés do presente mantendo a tratabilidade analítica? A resposta mais influente é o desconto quasi-hiperbólico, que modifica o modelo exponencial de maneira mínima — adicionando um único parâmetro — mas com consequências profundas para as previsões de comportamento.

Para capturar o viés do presente sem abandonar completamente a tratabilidade do modelo exponencial, Laibson (1997) — com base em Phelps e Pollak (1968) — propôs o modelo de desconto **quasi-hiperbólico**.

!!! definition "Desconto quasi-hiperbólico (β-δ)"
    O modelo de desconto **quasi-hiperbólico** (\(\beta\)-\(\delta\)) modifica o DUM introduzindo um parâmetro adicional \(\beta \in (0,1)\) que captura o **viés do presente**:

    \[
    U_0 = u(c_0) + \beta \sum_{t=1}^{T} \delta^t \, u(c_t)
    \label{eq:8.7} \tag{8.7}
    \]

    O fator \(\beta\) aplica um desconto **extra** a todos os períodos futuros em relação ao presente, criando uma "fronteira psicológica" entre o hoje e tudo que vem depois. Quando \(\beta = 1\), o modelo se reduz ao desconto exponencial. Para qualquer \(\beta < 1\), o desconto entre o período presente e o primeiro período futuro é desproporcionalmente grande — esse é o viés do presente. Valores típicos estimados na literatura são \(\beta \approx 0{,}70\) e \(\delta \approx 0{,}99\).

    A taxa de desconto *implícita* entre os períodos \(t\) e \(t+1\) é \(\delta\) para \(t \geq 1\), mas \(\beta\delta\) entre \(t = 0\) e \(t = 1\). Como \(\beta\delta < \delta\), o agente desconta mais intensamente a transição do presente para o futuro do que qualquer outra transição intertemporal. Isso gera a taxa de desconto decrescente com o horizonte que caracteriza o desconto hiperbólico.

Os **fatores de desconto** para os períodos futuros são:

<a id="tabela-8-6"></a>

| Período | Exponencial | Quasi-hiperbólico |
|---|---|---|
| \(t = 0\) | \(1\) | \(1\) |
| \(t = 1\) | \(\delta\) | \(\beta\delta\) |
| \(t = 2\) | \(\delta^2\) | \(\beta\delta^2\) |
| \(t = s\) | \(\delta^s\) | \(\beta\delta^s\) |

<div class="caption-obj" markdown>
**Tabela 8.6 — Fatores de desconto exponencial e quasi-hiperbólico.**
</div>

A diferença crucial é que a queda no fator de desconto entre \(t=0\) e \(t=1\) é proporcionalmente muito maior (\(\beta\delta\) vs. 1) do que entre quaisquer dois períodos futuros consecutivos (\(\beta\delta^{t+1}/\beta\delta^t = \delta\)). Isso gera o viés do presente e permite preferências reversíveis.

A tabela a seguir resume estimativas dos parâmetros \(\beta\) e \(\delta\) em diferentes estudos:

<a id="tabela-8-7"></a>

| Estudo | Contexto | \(\beta\) | \(\delta\) (anual) |
|---|---|---|---|
| Laibson (1997) | Calibração poupança EUA | 0,70 | 0,99 |
| Angeletos et al. (2001) | Dados riqueza famílias EUA | 0,70 | 0,96 |
| Paserman (2008) | Busca de emprego | 0,40–0,90 | 0,99 |
| Augenblick, Niederle e Sprenger (2015) | Experimento tarefas reais | 0,75 | 0,99 |
| Frederick, Loewenstein e O'Donoghue (2002) | Meta-análise | 0,20–0,80 | 0,90–0,99 |

<div class="caption-obj" markdown>
**Tabela 8.7 — Estimativas dos parâmetros de desconto quasi-hiperbólico.**
</div>

!!! idea "Intuição Econômica"
    **Em uma frase:** O modelo \((\beta, \delta)\) captura a "fronteira psicológica" entre agora e tudo que vem depois — o futuro como um todo é descontado extra, mas dentro do futuro o desconto é normal.

    **Pense assim:** "Vou começar a dieta na segunda" é fácil de dizer na sexta — segunda e terça parecem igualmente distantes. Mas quando segunda chega e tem bolo no escritório, o presente ganha peso desproporcional. O \(\beta < 1\) é esse "puxão gravitacional" do agora.

    **Por que isso importa:** O desconto hiperbólico explica por que pessoas aderem a planos de previdência com desconto em folha (mecanismo de comprometimento) e por que políticas de "opt-out" — como a inscrição automática no FGTS — são mais eficazes que "opt-in" para promover poupança.

### 8.5.4 Autocontrole e estratégias de compromisso

O desconto quasi-hiperbólico prevê que os agentes tomarão decisões das quais se arrependerão — consumirão demais hoje, pouparão de menos, procrastinarão tarefas importantes. Mas será que os agentes são cegos a esse padrão, ou alguns deles reconhecem sua própria fragilidade e tentam se proteger de si mesmos? A resposta a essa pergunta nos leva ao fascinante tema do autocontrole.

Se os agentes reconhecem seu viés do presente, podem adotar **estratégias de compromisso** (*commitment devices*) para restringir seu comportamento futuro:

- **Poupança automática com desconto em folha:** ao aderir a um plano de previdência com desconto automático, o agente remove a decisão de poupar do âmbito da tentação cotidiana.
- **Metas públicas:** declarar publicamente uma meta (como parar de fumar) cria um custo reputacional para o descumprimento.
- **Restrições físicas:** o despertador Clocky, que foge da mesa de cabeceira quando o alarme toca, é um exemplo literal de compromisso — o "eu da noite" sabe que o "eu da manhã" vai querer apertar o soneca.

Essa tensão entre o eu presente e o eu futuro pode ser modelada como um **jogo intrapessoal** entre múltiplos "eus" sequenciais (Thaler e Shefrin 1981). O eu do período \(t\) maximiza a utilidade quasi-hiperbólica, mas sabe que o eu do período \(t+1\) fará o mesmo — e cada "versão futura" terá seu próprio viés do presente.

Agentes que reconhecem sua inconsistência temporal são chamados **sofisticados**; agentes que (erroneamente) acreditam que suas preferências futuras serão consistentes são chamados **ingênuos** (*naïfs*). Sofisticados buscam compromissos; ingênuos procrastinam repetidamente. O'Donoghue e Rabin (1999) mostraram formalmente que a procrastinação é mais severa para agentes ingênuos, enquanto sofisticados podem sofrer de **preproperation** — realizar tarefas desagradáveis cedo demais por medo de não fazê-las depois (Dhami 2016, p. 704–710).

No contexto brasileiro, as estratégias de compromisso aparecem de forma particularmente clara em dois produtos financeiros. Primeiro, o **crédito consignado**: ao contratar um empréstimo com desconto automático em folha de pagamento, o trabalhador — paradoxalmente — pode estar usando o crédito como mecanismo de compromisso de poupança forçada. A lógica é a seguinte: ao tomar um empréstimo consignado, o trabalhador recebe hoje (resolve o problema do viés do presente imediato) e amortiza por débito automático nos meses seguintes (remove a tentação de não pagar). Para muitos trabalhadores com acesso limitado a crédito convencional, o consignado funciona como um instrumento de suavização de consumo que, paradoxalmente, se torna mais atrativo quanto mais pronunciado for o viés do presente. Segundo, a **previdência complementar de servidores públicos federais (Funpresp)**: quando a reforma previdenciária criou a Funpresp em 2013, novos servidores passaram a ser automaticamente inscritos no plano complementar. Essa adesão automática com *opt-out* é precisamente um nudge direcionado ao viés do presente — remove do servidor a decisão ativa de poupar, que seria sistematicamente postergada por agentes ingênuos com \(\beta < 1\). A lógica é a mesma do estudo clássico de Madrian e Shea (2001) sobre 401(k) nos EUA: o *default* faz o trabalho que a disciplina individual não faz.

A distinção entre agentes sofisticados e ingênuos tem implicações práticas para o design de políticas. Nudges como a adesão automática são igualmente eficazes para ambos os tipos — tanto o agente que reconhece seu viés quanto o que não reconhece ficam no plano se o *default* for "aderir". Porém, mecanismos de compromisso mais sofisticados — como o *Save More Tomorrow*, em que o trabalhador se compromete a destinar aumentos salariais futuros à poupança — exigem um grau de sofisticação: o agente precisa reconhecer que seu "eu futuro" precisará de ajuda. Políticas bem calibradas combinam nudges universais (que funcionam para todos) com opções de compromisso voluntário (que beneficiam os sofisticados).

!!! box-brasil "Box Brasil 8.6: Crédito rotativo e viés do presente"
    O crédito rotativo do cartão de crédito no Brasil cobra taxas de juros que figuram entre as mais altas do mundo — segundo dados do Banco Central do Brasil, a taxa média do rotativo superou 400% ao ano em diversos momentos recentes. Muitos consumidores, ao optar por pagar apenas o valor mínimo da fatura, subestimam o custo total acumulado das parcelas futuras. Esse comportamento é consistente com o desconto quasi-hiperbólico: o alívio imediato de não pagar a fatura integral (benefício no período \(t = 0\)) é sobrevalorizado em relação ao custo dos juros compostos nos períodos seguintes (descontados por \(\beta\delta^t\) com \(\beta < 1\)). A Lei do Superendividamento (Lei nº 14.181/2021) reconheceu implicitamente esse padrão ao criar mecanismos de renegociação e preservação do mínimo existencial.

!!! box-mundo "Box Mundo 8.3 — Nudges na poupança previdenciária ao redor do mundo: auto-enrollment e o viés do presente como ferramenta de política"

    **Contexto:** A Seção 8.5 mostrou que o desconto quasi-hiperbólico (\(\beta < 1\)) gera procrastinação sistemática em decisões de poupança: o agente planeja poupar "amanhã", mas quando amanhã chega, o viés do presente o impede novamente. Esse padrão tem consequências macroeconômicas profundas: populações inteiras chegam à aposentadoria com poupança insuficiente, pressionando sistemas previdenciários públicos já sobrecarregados pelo envelhecimento demográfico. A resposta de política pública mais bem-sucedida para esse problema é a **inscrição automática** (*auto-enrollment*) em planos de poupança previdenciária — um nudge que explora a mesma inércia e viés do *status quo* que causam a subpoupança para, paradoxalmente, promover poupança adequada.

    **Dados:** O caso paradigmático é o dos planos 401(k) nos Estados Unidos. Madrian e Shea (2001, *Quarterly Journal of Economics*) documentaram que a mudança de opt-in para opt-out em uma grande empresa americana elevou a taxa de adesão de novos funcionários de 49% para 86% — um aumento de 37 pontos percentuais sem qualquer alteração na remuneração ou nos incentivos fiscais. Choi et al. (2004, *NBER Working Paper*) replicaram o resultado em múltiplas empresas e mostraram que o efeito persiste ao longo do tempo. No Reino Unido, o programa *NEST* (*National Employment Savings Trust*), implementado a partir de 2012, tornou a inscrição automática obrigatória para todos os empregadores. O Department for Work and Pensions (2023) reporta que o número de trabalhadores do setor privado com poupança previdenciária ativa passou de 2,7 milhões em 2012 para 19,4 milhões em 2022 — um aumento de mais de 600%. A taxa de opt-out permaneceu estável em torno de 9%, confirmando o poder da inércia. Na Nova Zelândia, o programa KiwiSaver (2007) combina inscrição automática com contribuição paritária do empregador e subsídio governamental, atingindo cobertura de 82% da população empregada até 2023 (IRD New Zealand). Na Turquia, a introdução de auto-enrollment em planos de previdência privada em 2017 triplicou o número de participantes no primeiro ano (OECD, 2019). O programa *Save More Tomorrow* (SMarT), desenhado por Thaler e Benartzi (2004), vai além: convida trabalhadores a comprometer aumentos salariais *futuros* à poupança, contornando simultaneamente o viés do presente (o sacrifício é futuro, não imediato) e a aversão à perda (o salário líquido nunca diminui). Na primeira implementação, a taxa de poupança dos participantes subiu de 3,5% para 13,6% em quatro aumentos salariais consecutivos.

    **Análise:** Os resultados globais do auto-enrollment são uma validação empírica direta do modelo de desconto quasi-hiperbólico da Seção 8.5.3. Se os agentes tivessem desconto exponencial (\(\beta = 1\)), a mudança do default não deveria afetar significativamente a adesão — um agente racional com preferências consistentes aderiria ou não ao plano independentemente da opção pré-selecionada, pois o custo de fazer opt-in ou opt-out é trivial. O fato de que a mudança de default gera diferenças de 37 a 50 pontos percentuais na adesão revela que a inércia decisória — produto do viés do presente e do *status quo bias* — é quantitativamente dominante. O auto-enrollment funciona porque explora os próprios vieses que causam o problema: a mesma inércia que impediria o agente de aderir ativamente (opt-in) agora o impede de sair (opt-out). A lição para a política previdenciária brasileira é direta: a Funpresp adota esse princípio para servidores federais, mas o setor privado brasileiro ainda opera predominantemente sob regime de opt-in, sugerindo que há espaço significativo para elevar a cobertura previdenciária complementar via mudança de default — sem custo fiscal adicional e sem restrição de liberdade.

    **Fonte:** Madrian, B. C.; Shea, D. F. (2001). The power of suggestion: Inertia in 401(k) participation and savings behavior. *Quarterly Journal of Economics*, 116(4), 1149–1187. Thaler, R. H.; Benartzi, S. (2004). Save More Tomorrow: Using behavioral economics to increase employee saving. *Journal of Political Economy*, 112(S1), S164–S187. UK Department for Work and Pensions (2023). *Automatic Enrolment Evaluation Report 2023*. OECD (2019). *Pensions at a Glance 2019*. Paris: OECD Publishing.

!!! tip "Conexão com a Economia Digital (Cap. 21)"
    O desconto hiperbólico e a aversão à perda não ficam no laboratório — eles são a matéria-prima das plataformas digitais mais lucrativas do mundo. O *scroll* infinito do TikTok explora o \(\beta < 1\); o *surge pricing* do Uber explora o \(\lambda > 1\). A Seção 21.5 (Economia da Atenção) analisa como plataformas vendem sua atenção a anunciantes, e o **Box Transversal "Quando o Viés é o Produto"** (Cap. 21) conecta formalmente os modelos comportamentais deste capítulo com o poder de mercado das plataformas — mostrando que regular a economia digital exige entender economia comportamental, e vice-versa.
