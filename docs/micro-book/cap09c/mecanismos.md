# Projetando o Jogo: Desenho de Mecanismos

## 9c.4 Projetando o Jogo: Desenho de Mecanismos

Se formatos diferentes rendem receitas diferentes, a pergunta inevitável: qual formato é *o melhor*? Mas essa pergunta é um caso especial de algo muito maior. Até aqui, o jogo era dado e nós buscávamos o equilíbrio. Agora *invertemos*: o resultado desejado é dado, e nós **projetamos o jogo** que o produz. Essa inversão — de jogador para *arquiteto de jogos* — é o **desenho de mecanismos**, e rendeu o Nobel de 2007 a Hurwicz, Maskin e Myerson. É a teoria por trás de tudo, desde leilões de espectro até matching de médicos residentes e doação de órgãos.

!!! definition "Mecanismo"
    Um **mecanismo** \(\mathcal{M} = \langle M_1, \ldots, M_n, g \rangle\) consiste em: (i) um espaço de mensagens \(M_i\) para cada agente \(i\); e (ii) uma função de resultado \(g: M_1 \times \cdots \times M_n \to O\) que mapeia o perfil de mensagens em um resultado (alocação e pagamentos). O mecanismo define as "regras do jogo" — cada agente escolhe uma mensagem, e a função \(g\) determina o que acontece.

!!! definition "Princípio da Revelação"
    Para qualquer mecanismo e qualquer BNE desse mecanismo, existe um mecanismo de **revelação direta** (onde cada agente simplesmente reporta seu tipo) em que reportar verdadeiramente é um BNE e que produz o mesmo resultado.

    Implicação prática: ao buscar o mecanismo ótimo, basta considerar mecanismos de revelação direta com compatibilidade de incentivos.

O Princípio da Revelação é uma das ferramentas mais poderosas da teoria econômica. Sua importância prática é enorme: em vez de procurar entre *todos* os mecanismos possíveis (uma classe imensamente grande), o designer pode restringir a busca a mecanismos de revelação direta — nos quais cada agente simplesmente reporta seu tipo — e impor a condição de que dizer a verdade seja ótimo (compatibilidade de incentivos). Essa restrição simplifica dramaticamente o problema de otimização, transformando-o de uma busca sobre um espaço infinito-dimensional de mecanismos em um problema de otimização com restrições de compatibilidade de incentivos e racionalidade individual.

O desenho de mecanismos inverte a pergunta da teoria dos jogos: em vez de "dado o jogo, qual é o equilíbrio?", pergunta-se "dado o resultado desejado, qual jogo gera esse resultado em equilíbrio?" Essa inversão é profundamente prática: o regulador que projeta um leilão, o governo que desenha uma licitação, a empresa que cria um processo seletivo — todos estão fazendo desenho de mecanismos. O Princípio da Revelação simplifica a tarefa ao mostrar que basta considerar mecanismos nos quais os participantes reportam seus tipos — desde que dizer a verdade seja ótimo.

### O mecanismo VCG (Vickrey-Clarke-Groves)

Um resultado central do desenho de mecanismos é o **mecanismo VCG** (Vickrey, 1961; Clarke, 1971; Groves, 1973), que generaliza o leilão de segundo preço para contextos com múltiplos objetos e externalidades. No mecanismo VCG, cada agente reporta seu tipo (valor), o mecanismo aloca eficientemente (maximizando o bem-estar total), e cada agente paga um montante igual à *externalidade* que impõe aos demais — ou seja, a redução no bem-estar total dos outros agentes causada pela presença de \(i\).

Formalmente, o pagamento do agente \(i\) no mecanismo VCG é:

\[
t_i(\hat{\theta}) = \max_{a \in A} \sum_{j \neq i} u_j(a, \hat{\theta}_j) - \sum_{j \neq i} u_j(a^*(\hat{\theta}), \hat{\theta}_j)
\label{eq:9c.7} \tag{9c.7}
\]

onde \(a^*(\hat{\theta})\) é a alocação eficiente dado o perfil de tipos reportados \(\hat{\theta}\). O primeiro termo é o máximo bem-estar dos outros *sem* a presença de \(i\); o segundo é o bem-estar dos outros *com* \(i\). A diferença é a externalidade.

O leilão de segundo preço de Vickrey é o caso especial do mecanismo VCG com um único objeto: o vencedor (quem tem o maior valor) paga a externalidade que impõe — o valor que o segundo colocado teria obtido se o vencedor não existisse, que é exatamente o segundo maior lance. Essa conexão entre o leilão de Vickrey e o mecanismo VCG revela que a propriedade de revelação de verdade do segundo preço não é acidental: é uma instância de um princípio geral de que pagamentos baseados em externalidade induzem revelação verdadeira.

!!! idea "Intuição Econômica"
    **Desenho de mecanismos: engenharia reversa do jogo**

    **Em uma frase:** Desenho de mecanismos é a arte de construir o "jogo" para que o comportamento racional e egoísta dos participantes produza o resultado que o designer quer.

    **Pense assim:** Um governo quer vender uma licença de espectro de rádio ao operador que mais valoriza o recurso (eficiência alocativa) e maximizar a receita para os cofres públicos. Não pode simplesmente perguntar "quanto você paga?", pois as empresas mentiriam. A solução do mecanismo design é construir um formato de leilão em que dizer a verdade *ou* lançar o lance estrategicamente ótimo resulte, em equilíbrio, na alocação eficiente.

    **Por que isso importa:** O campo surgiu do reconhecimento de que as regras do jogo não são dadas — elas são *escolhas de política*. Myerson (2007), Hurwicz (2007) e Maskin (2007) receberam o Nobel por formalizar como desenhar mecanismos que funcionam mesmo quando os participantes têm informação privada e interesses próprios.

### O leilão ótimo de Myerson

O resultado central do desenho de mecanismos para leilões — o *leilão ótimo* de Myerson — combina dois elementos: um **preço de reserva** (que exclui licitantes com valores baixos, aumentando a receita esperada ao custo de ineficiência ocasional) e **discriminação entre licitantes assimétricos** (um licitante sistematicamente mais fraco recebe tratamento favorável para aumentar a competição e extrair mais receita do licitante mais forte). Esse resultado surpreende a intuição: às vezes, excluir participantes ou distorcer a alocação *aumenta* a receita esperada. O Princípio da Revelação torna esse resultado tratável ao permitir que o designer procure entre mecanismos com compatibilidade de incentivos, em vez de entre todos os mecanismos possíveis.

A derivação de Myerson (1981) procede em três passos. Primeiro, pelo Princípio da Revelação, restringe a busca a mecanismos de revelação direta incentivo-compatíveis. Segundo, usa a condição de compatibilidade de incentivos para expressar a receita esperada em termos dos *valores virtuais* dos licitantes:

\[
\psi(v) = v - \frac{1 - F(v)}{f(v)}
\label{eq:9c.8} \tag{9c.8}
\]

O valor virtual \(\psi(v)\) desconta o valor real \(v\) por um termo que captura a *renda informacional* que o licitante extrai — a quantidade \((1 - F(v))/f(v)\) é o inverso da taxa de risco (*hazard rate*), e mede o custo para o leiloeiro de "convencer" o tipo \(v\) a revelar-se. Terceiro, o leilão ótimo maximiza a soma dos valores virtuais, o que equivale a atribuir o objeto ao licitante com o maior valor virtual (não o maior valor real) e excluir licitantes com valor virtual negativo.

Quando a função de valor virtual \(\psi(v)\) é crescente (a chamada *condição de regularidade*, satisfeita por distribuições comuns como uniforme, exponencial e normal truncada), o leilão ótimo tem uma forma simples: atribuir o objeto ao licitante com maior valor virtual, desde que este seja não negativo. No caso simétrico com \(v \sim U[0, 1]\), o preço de reserva ótimo é \(r^* = 1/2\) — surpreendentemente alto, excluindo metade dos licitantes potenciais.

O desenho de mecanismos conecta-se diretamente ao Capítulo 9d: nos jogos dinâmicos com informação incompleta, a questão não é apenas "qual equilíbrio?" mas também "como desenhar a sequência de comunicação e ação para que o equilíbrio desejado seja sustentável?". Os conceitos de compatibilidade de incentivos e racionalidade individual desenvolvidos aqui são os blocos fundamentais para essa análise mais avançada. Além disso, o arcabouço de desenho de mecanismos reaparece no Capítulo 19, na análise de contratos ótimos sob seleção adversa — onde o "principal" (empregador, seguradora, regulador) desenha um menu de contratos para separar diferentes tipos de "agente", usando exatamente as ferramentas de incentivo-compatibilidade formalizadas nesta seção.

---

Os conceitos desenvolvidos nas seções anteriores — BNE, sombreamento de lances, maldição do vencedor e desenho de mecanismos — estão longe de ser abstrações acadêmicas. No Brasil, bilhões de reais são alocados anualmente por meio de leilões cujos formatos refletem diretamente as preocupações da teoria.

!!! box-brasil "Box Brasil — Leilões de petróleo e energia: quando o formato importa"
    O Brasil utiliza leilões em setores estratégicos onde a teoria de leilões tem aplicação direta:

    **Leilões de petróleo (ANP)**

    A **Agência Nacional do Petróleo** conduz rodadas de licitação para blocos exploratórios desde 1999. O formato é de **oferta em envelope fechado** (primeiro preço), com critérios que combinam bônus de assinatura, programa exploratório e conteúdo local.

    - A **maldição do vencedor** é relevante: blocos do pré-sal têm valor comum (volume de óleo incerto), e empresas que superestimam o potencial pagam prêmios excessivos.
    - O regime de **partilha de produção** (Lei 12.351/2010) para o pré-sal altera os incentivos: o bônus fixo e a oferta de excedente em óleo para a União reduzem o risco de maldição do vencedor para as empresas.

    **Leilões de energia (ANEEL)**

    A **ANEEL** organiza leilões de energia nova e existente para garantir o suprimento. O formato é de **leilão descendente** (relógio): o preço começa alto e cai até que a oferta iguale a demanda.

    - O leilão descendente com múltiplos vencedores reduz a maldição do vencedor e incentiva a participação.
    - Leilões de energia renovável (eólica, solar) geraram reduções de preço de **80%** entre 2009 e 2023 — evidência de que a competição entre licitantes funciona.

    **Fonte**: ANP, Rodadas de Licitação; ANEEL, Leilões de Energia.

---

Se os leilões de petróleo e energia ilustram o lado virtuoso da competição entre licitantes, as licitações públicas revelam o lado sombrio: quando os participantes se coordenam para suprimir a competição, os leilões podem se tornar instrumentos de extração de renda pública — exatamente o oposto do que a teoria prescreve.

!!! box-brasil "Box Brasil — Cartéis em licitações: o outro lado dos leilões"
    Leilões de compras governamentais (licitações) são vulneráveis a colusão entre licitantes — o oposto do que a teoria competitiva prevê.

    **Mecanismos de colusão**

    - **Rotação de vencedores**: firmas combinam quem ganha cada licitação, dividindo o mercado ao longo do tempo.
    - **Lances de cobertura** (*cover bidding*): firmas apresentam lances propositalmente altos para dar aparência de competição enquanto uma firma pré-determinada ganha.
    - **Supressão de lances**: algumas firmas simplesmente não participam de certas licitações.

    **Casos brasileiros**

    O CADE tem investigado cartéis em licitações de obras públicas, alimentos para merenda escolar e medicamentos. O "Cartel do Metrô de SP" (2013) envolveu construtoras que se coordenavam para dividir contratos de obras de metrô — com sobrepreço estimado em 30%.

    **Implicações da teoria:** A colusão é mais fácil em leilões de primeiro preço do que de segundo preço (McAfee e McMillan, 1992). Leilões ascendentes (ingleses) são ainda mais vulneráveis pois permitem sinalização durante o leilão. Isso explica por que o formato do leilão é um instrumento de política antitruste.

!!! box-brasil "Box Brasil — Leilões de espectro da ANATEL: teoria e prática"
    Os leilões de espectro de radiofrequências organizados pela **ANATEL** para concessão de bandas 4G e 5G são um laboratório de desenho de mecanismos aplicado ao contexto brasileiro.

    **O problema do designer (ANATEL):** Alocar faixas de espectro de forma eficiente (aos operadores que mais as valorizam), maximizar receita para a União e garantir cobertura em áreas remotas — objetivos frequentemente conflitantes.

    **Soluções de desenho de mecanismos adotadas:**

    - **Leilão combinatório:** Operadores fazem lances sobre *pacotes* de frequências, não sobre frequências individuais, evitando o problema de complementaridade (quando o valor de duas faixas juntas supera a soma dos valores individuais).
    - **Obrigações de cobertura:** Em vez de apenas maximizar o bônus de assinatura, o edital impõe metas de cobertura em municípios rurais — um mecanismo que transfere parte do excedente para regiões menos lucrativas.
    - **Preços de reserva diferenciados:** Lotes em regiões com menor demanda têm preços de reserva mais baixos, incentivando a participação e evitando lotes não arrematados.

    **Leilão do 5G (2021):** Arrecadou R$ 47,2 bilhões, incluindo R$ 40,5 bilhões em compromissos de cobertura e implantação de rede. A ANATEL escolheu deliberadamente um formato que priorizava cobertura sobre receita imediata — uma decisão de desenho de mecanismos com impacto estrutural de longo prazo.

    **Conexão teórica:** O formato do leilão de espectro da ANATEL ilustra que o "leilão ótimo" de Myerson raramente é adotado literalmente na prática. Em vez de maximizar receita pura, os reguladores combinam múltiplos objetivos usando restrições de equilíbrio bayesiano como ferramentas de planejamento.

    **Fonte**: ANATEL, Editais de licitação de radiofrequências (2014, 2021).

---

??? code "R Interativo — Leilão de Valor Privado: Monte Carlo (Adams, 2025, Cap. 10)"
    Este box simula leilões de primeiro e segundo preço com N licitantes e valores uniformes. Compare as receitas e verifique o Teorema da Equivalência de Receita.

    **Exercício:** Mude `N` de 3 para 10. O que acontece com a receita? E com o surplus do vencedor?

    <iframe src="/micro-book/graficos/cap09/webr-auction.html" title="Figura 9c.1 — Leilões" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9c.1 — Simulação Monte Carlo de leilões de 1º e 2º preço.** Altere <code>N</code> (licitantes) e <code>n_sim</code> (simulações) para explorar o Teorema da Equivalência de Receita.
    </div>

---

Começamos este módulo com uma pergunta que paralisou a teoria dos jogos: como analisar um jogo quando os jogadores nem concordam sobre *qual jogo* estão jogando? O truque de Harsanyi — um lance da natureza que distribui tipos privados — transformou ignorância genuína em incerteza tratável, e dessa transformação nasceram o BNE, a teoria de leilões e o desenho de mecanismos. Do leilão do pré-sal à alocação de espectro, as cartas continuam escondidas — mas agora sabemos jogar.

*Leilões revelam tipos; no próximo módulo, os tipos tentam se esconder — ou se exibir. Sinalização, moral hazard e seleção adversa entram em cena. And now for something completely different.*
