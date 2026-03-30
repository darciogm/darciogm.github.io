# Quando o Seguro Incentiva o Descuido: Moral Hazard

## 9d.4 Quando o Seguro Incentiva o Descuido: *Moral Hazard*

!!! tip "Como este capítulo se relaciona com o Capítulo 19"
    Os Capítulos 9d e 19 tratam dos mesmos fenômenos — moral hazard, seleção adversa, sinalização — mas com ênfases complementares. **Aqui (9d)**, o foco é a **teoria dos jogos**: definimos o PBE, formalizamos jogos de sinalização, derivamos equilíbrios separadores e agregadores, e discutimos refinamentos (Cho-Kreps). **No Capítulo 19**, o foco é a **economia de mercado**: como a seleção adversa destrói mercados (Akerlof), como contratos ótimos equilibram incentivos e seguro (Holmström), como o screening opera em seguros (Rothschild-Stiglitz) e como leilões e matching funcionam na prática. O leitor pode seguir duas rotas: (i) primeiro a teoria dos jogos (9d), depois as aplicações de mercado (19) — a rota recomendada para pós-graduação; ou (ii) primeiro as aplicações intuitivas (19), depois a formalização em jogos (9d) — a rota recomendada para graduação.

Mudança de cenário. Até aqui, o problema era de *tipo*: o agente sabe quem ele é, o receptor não. Agora o problema é de *ação*: o agente escolhe o que faz depois de assinar o contrato, e o principal não consegue ver. Você contrata um seguro de carro e passa a estacionar em lugar perigoso — porque, afinal, está segurado. A empresa contrata o gerente e não consegue verificar se ele está trabalhando duro ou navegando na internet. O governo empresta dinheiro ao banco e o banco assume riscos excessivos — sabendo que, se der errado, o governo socorre.

Esse é o **moral hazard** (risco moral): a ação oculta que muda de comportamento *porque* alguém está protegido. O desafio: como desenhar um contrato que faça o agente *querer* se esforçar, mesmo quando ninguém está olhando?

!!! definition "Moral Hazard"
    Situação em que uma parte (o **agente**) toma uma ação não observável que afeta o payoff de outra parte (o **principal**). O principal não pode monitorar diretamente o esforço do agente.

!!! warning "⚠️ Erro Comum"
    **Tratar risco moral (moral hazard) como sinônimo de fraude.** Um equívoco frequente — mesmo em provas e concursos — é tratar risco moral como sinônimo de comportamento desonesto ou fraudulento. A distinção é precisa e juridicamente relevante.

    **Moral hazard:** O agente age *racionalmente* em resposta a incentivos gerados pelo próprio contrato. Não há intenção de enganar: o agente simplesmente maximiza sua utilidade dado o ambiente que o seguro, o emprego ou o crédito criou. O comportamento é previsível e, em tese, evitável com o redesenho do contrato.

    **Fraude:** Ação intencional para obter benefício indevido — tipicamente por declarações falsas, ocultação deliberada de informação ou falsificação de documentos. Fraude é crime; moral hazard é ineficiência contratual.

    **Exemplo no mercado de saúde brasileiro:** Uma pessoa com plano de saúde que faz check-ups adicionais por serem gratuitos ao ponto de uso está exibindo *moral hazard* (responde ao preço zero da consulta). Uma pessoa que declara uma doença preexistente que não possui para acionar a cobertura está praticando *fraude*. A ANS regula ambos por instrumentos distintos: copagamentos e carências mitigam moral hazard; auditoria médica e perícias combatem fraude.

    O tratamento correto: moral hazard requer redesenho dos incentivos (franquias, copagamentos, bônus por desempenho); fraude requer monitoramento, auditoria e sanções legais.

O modelo básico de principal-agente formaliza essa situação: o principal oferece um contrato, o agente decide se aceita e, em caso positivo, escolhe seu nível de esforço. O desafio é que o esforço não é verificável — apenas o resultado, que depende tanto do esforço quanto de choques aleatórios, pode ser contratado.

- O principal oferece um contrato \(w(q)\) (pagamento condicionado ao resultado \(q\)).
- O agente escolhe esforço \(e\) (não observável). Esforço é custoso: \(c(e)\).
- O resultado \(q\) depende de \(e\) e de choque aleatório \(\varepsilon\): \(q = f(e, \varepsilon)\).
- O principal quer maximizar \(E[q - w(q)]\); o agente quer maximizar \(E[w(q)] - c(e)\).

**Trade-off central:** Para incentivar esforço, o contrato deve vincular pagamento ao resultado. Mas isso expõe o agente (avesso ao risco) a risco — gerando custo de seguro. O contrato ótimo equilibra incentivos e seguro. Esse dilema entre risco e incentivos é onipresente na economia.

<iframe src="/micro-book/graficos/cap09d/moral-hazard.html" title="Figura 9d.5 — Moral Hazard: trade-off incentivos vs seguro" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9d.5 — Principal-Agente: trade-off incentivos vs seguro.** O slider \(\beta\) controla a participação do agente no resultado. Aumente a aversão ao risco \(r\) ou o ruído \(\sigma\) e observe o \(\beta^*\) ótimo encolher — o custo de agência cresce. No primeiro melhor (FB), \(\beta = 1\) e não há custo de agência.
</div>

### Primeiro melhor vs. segundo melhor

A distinção entre primeiro melhor (*first-best*) e segundo melhor (*second-best*) é central na teoria de contratos e permeia toda a análise de moral hazard. No **primeiro melhor**, o esforço é observável e verificável: o principal pode escrever um contrato que especifica diretamente o nível de esforço desejado e paga um salário fixo condicionado à execução desse esforço. Como o agente é avesso ao risco, o contrato ótimo é um salário fixo \(w^{FB}\) que satisfaz exatamente a restrição de participação — sem variabilidade, sem risco para o agente, sem custo de incentivos. O agente é perfeitamente segurado.

No **segundo melhor**, o esforço não é observável. O principal só pode condicionar o pagamento ao resultado, que é um indicador ruidoso do esforço. O contrato ótimo deve satisfazer duas restrições simultaneamente:

\[
\text{IC:} \quad E[u(w(q)) \mid e_H] - c(e_H) \geq E[u(w(q)) \mid e_L] - c(e_L)
\label{eq:9d.2} \tag{9d.2}
\]

\[
\text{IR:} \quad E[u(w(q)) \mid e_H] - c(e_H) \geq \bar{u}
\label{eq:9d.3} \tag{9d.3}
\]

A IC (compatibilidade de incentivos, equação $\eqref{eq:9d.2}$) garante que o agente prefira esforço alto a esforço baixo. A IR (restrição de participação, equação $\eqref{eq:9d.3}$) garante que o agente prefira aceitar o contrato a sua alternativa externa. No ótimo do segundo melhor, ambas as restrições vinculam: a IC força variabilidade salarial (\(w_B > w_R\)), e a IR fixa o nível de utilidade esperada do agente. A diferença de custo esperado entre o segundo melhor e o primeiro melhor é o **custo de agência** — o preço que a sociedade paga pela informação assimétrica sobre o esforço.

O resultado fundamental de Holmström (1979) é que o contrato ótimo de segundo melhor segue o **Princípio da Informatividade**: a remuneração do agente deve depender de qualquer estatística do resultado que contenha informação sobre o esforço. Se o desempenho de outros agentes em circunstâncias semelhantes é observável, ele deve entrar no contrato — não porque o principal queira incentivar competição, mas porque a comparação permite filtrar o ruído do choque aleatório, melhorando a inferência sobre o esforço. Isso fundamenta o uso de benchmarks setoriais em contratos de executivos, avaliações relativas de desempenho entre professores e comparação entre hospitais na regulação de saúde.

### Multitarefa e os limites dos incentivos

O modelo básico assume que o agente tem uma única dimensão de esforço. Na prática, a maioria dos trabalhos envolve múltiplas tarefas — um professor ensina, pesquisa, orienta e faz extensão; um médico trata, previne e documenta; um gestor gera lucro, gerencia risco e investe em inovação. Holmström e Milgrom (1991) mostraram que, quando o esforço é multidimensional e algumas dimensões são mais facilmente mensuráveis que outras, incentivos fortes na dimensão mensurável podem distorcer o esforço *para longe* das dimensões não mensuráveis. Esse é o problema de **multitarefa**: um professor avaliado exclusivamente por notas de alunos em provas padronizadas pode *ensinar para a prova* (dimensão mensurável) às custas do desenvolvimento de pensamento crítico (dimensão não mensurável).

A implicação prática é que incentivos muito potentes podem ser piores do que incentivos moderados ou até do que salário fixo — quando o agente tem margem para realocar esforço entre tarefas. A regulação educacional brasileira enfrenta esse dilema diretamente: programas como o IDESP (São Paulo) e o SPAECE (Ceará) vinculam recursos e bônus ao desempenho em avaliações padronizadas, criando incentivos potencialmente distorcivos na dimensão do ensino que a prova não captura.

A conexão com o Capítulo 7 é direta: o moral hazard existe, na sua forma mais intratável, precisamente porque os agentes são avessos ao risco. Se o agente fosse neutro ao risco, o principal poderia transferir toda a renda residual para o agente ("vender a empresa"), tornando-o o reclamante residual completo — e eliminando o problema de incentivos sem custo de seguro. É a aversão ao risco que torna esse contrato inviável e força a solução de segunda ordem: uma participação parcial nos resultados que equilibra incentivos e proteção.

O Capítulo 8 (economia comportamental) acrescenta uma camada adicional: evidências experimentais de Kahneman e Tversky sugerem que agentes são mais sensíveis a perdas do que a ganhos de mesma magnitude (aversão à perda). Isso afeta o design de contratos: penalidades pecuniárias por baixo desempenho podem ter poder de incentivo desproporcional ao seu valor monetário, o que tem implicações para contratos de gestores e para políticas de bônus.

!!! info "🏅 Prêmio Nobel — Bengt Holmström e Oliver Hart (2016)"

    **Bengt Holmström** (1949–presente) é um economista finlandês, PhD em Stanford, professor no MIT. **Oliver Hart** (1948–presente) é um economista britânico-americano, PhD em Princeton, professor em Harvard.

    **Por que ganharam o Nobel:**
    Premiados por suas contribuições à **teoria dos contratos**. Holmström formalizou o problema do principal-agente com moral hazard (1979), derivou o Princípio da Informatividade (o contrato ótimo deve usar toda informação disponível sobre o esforço), e mostrou com Milgrom (1991) que incentivos fortes em tarefas mensuráveis distorcem o esforço para longe de tarefas não mensuráveis (multitarefa). Hart, com Grossman e Moore, desenvolveu a teoria dos **contratos incompletos** — a ideia de que, como é impossível prever e contratar todas as contingências futuras, a alocação de **direitos de propriedade** determina quem tem poder de decisão residual e, portanto, quem tem incentivos para investir. A teoria de contratos incompletos fundamenta a análise de fronteiras da firma ("make or buy"), fusões, privatizações e parcerias público-privadas.

    **Conexão com este capítulo:**
    O modelo de principal-agente, o Princípio da Informatividade e o problema de multitarefa — todos desenvolvidos por Holmström — são os pilares da Seção 9d.4. A teoria de contratos incompletos de Hart complementa a análise ao explicar por que muitas relações econômicas *não* são governadas por contratos explícitos (como prevê o modelo de Holmström), mas por estruturas de propriedade e governança que alocam poder de decisão residual. Os dois frameworks — contratos completos de Holmström e contratos incompletos de Hart — são complementares e, juntos, formam a base da economia organizacional moderna.

    **Nota para o estudante:** Se Holmström responde "como desenhar o contrato ótimo *dentro* de uma relação", Hart responde "como estruturar a relação *em si*". Os Capítulos 16 (organização industrial) e 19 (contratos e mecanismos) desenvolvem ambas as perspectivas.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando alguém não arca com as consequências de suas ações, tende a agir de forma mais arriscada.

    **Pense assim:** Uma pessoa com seguro de saúde completo pode cuidar menos da saúde (alimentação, exercício, prevenção) do que alguém sem seguro. O seguro *causa* comportamento mais arriscado — não apenas o cobre.

    **No mundo corporativo:** Um CEO com salário fixo (sem bônus vinculado ao desempenho) tem menos incentivo para se esforçar. Contratos com stock options e bônus por performance são mecanismos para mitigar o moral hazard.

    **Cross-reference:** O Capítulo 19 aprofunda o desenho de contratos ótimos e mecanismos de screening.
