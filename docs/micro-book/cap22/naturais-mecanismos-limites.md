## 22.5 Experimentos Naturais e Quase-Experimentos {#225}

### 22.5.1 Quando a natureza (ou a política) fornece o experimento

E quando não é possível sortear ninguém? Quando seria absurdo (ou ilegal, ou cruel) dividir pessoas em grupos e negar tratamento a metade delas? Nessas horas, o economista faz o que todo bom detetive faz: procura pistas que a história deixou para trás. Às vezes a natureza, a geografia ou a política criam situações que *se assemelham* a um experimento — como se o destino tivesse feito a randomização por nós. Um grupo é "tratado" por circunstâncias que são plausivamente exógenas — isto é, não correlacionadas com as características dos indivíduos afetados. Esses são os **experimentos naturais** (*natural experiments*).

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

!!! definition "Variável instrumental (*instrumental variable*)"
    Variável \(Z\) que satisfaz simultaneamente: (i) **relevância** — é correlacionada com a variável endógena \(X\); (ii) **exclusão** — não afeta o resultado \(Y\) por nenhum canal além de \(X\). Um instrumento válido permite estimar o efeito causal de \(X\) sobre \(Y\) mesmo quando \(X\) é endógena (correlacionada com fatores não-observáveis).

!!! definition "Condição de exclusão (*exclusion restriction*)"
    Hipótese de que o instrumento \(Z\) afeta o resultado \(Y\) *apenas* através da variável endógena \(X\): \(\text{Cov}(Z, \varepsilon) = 0\). Essa hipótese é não-testável em modelos exatamente identificados (um instrumento para uma variável endógena) e constitui o "calcanhar de Aquiles" do método IV — se violada, a estimativa é inconsistente.

!!! example "Exercício Resolvido 22.3 — Diff-in-diff da Lei Seca no Brasil"
    **Enunciado.** A "Lei Seca" (Lei 11.705/2008) proibiu a venda de bebidas alcoólicas em rodovias federais e reduziu o limite de alcoolemia permitido para dirigir de 0,6 g/L para zero. Um pesquisador quer estimar o efeito causal da lei sobre mortes no trânsito. Dados disponíveis: mortes mensais por município, 2006–2010 (pré: 2006–07; pós: 2009–10).

    (a) Proponha um design de diff-in-diff. Quem é o grupo de tratamento e quem é o controle?

    (b) Qual é a hipótese de tendências paralelas neste contexto? Ela é plausível?

    (c) Suponha que os dados mostram: mortes no tratamento caem de 50 para 38; mortes no controle caem de 40 para 35. Calcule o efeito DiD.

    **Solução.**

    **(a)** A Lei Seca é federal e se aplica a todos os municípios — não há grupo de controle "puro". Estratégia: usar **intensidade de tratamento**. Municípios com muitos bares em rodovias (alta intensidade) vs. municípios sem bares em rodovias (baixa intensidade). Alternativa: municípios com alta fiscalização (que efetivamente implementaram a lei) vs. baixa fiscalização.

    **(b)** Tendências paralelas: na ausência da Lei Seca, municípios de alta e baixa intensidade teriam seguido trajetórias de mortalidade semelhantes. Plausibilidade: razoável se ambos os tipos de município estavam sujeitos às mesmas tendências macroeconômicas (crescimento econômico, melhoria de rodovias). Ameaça: municípios com mais bares em rodovias podem ter tendências de mortalidade diferentes por outras razões (mais tráfego pesado, rodovias piores).

    **(c)** $\hat{\tau}_{DD} = (38 - 50) - (35 - 40) = (-12) - (-5) = -7$ mortes. A Lei Seca reduziu as mortes em 7 unidades a mais no grupo de alta intensidade — efeito causal estimado.

!!! box-brasil "Brasil na Prática — PNAD Contínua como fonte de identificação para quase-experimentos"

    **Contexto:** A Pesquisa Nacional por Amostra de Domicílios Contínua (PNAD Contínua) do IBGE é uma das bases de dados mais ricas do mundo para pesquisa em economia do trabalho e políticas públicas. Com entrevistas trimestrais a ~211 mil domicílios (cobrindo ~550 mil pessoas), a PNAD Contínua permite acompanhar os mesmos domicílios por até 5 trimestres consecutivos (painel rotativo).

    **Dados e usos em quase-experimentos:** A estrutura de painel da PNAD Contínua permite implementar todos os métodos discutidos neste capítulo. Diff-in-diff: comparar trabalhadores formais vs. informais antes e depois de mudanças na legislação trabalhista (reforma trabalhista de 2017). RDD: usar limiares de idade para elegibilidade a programas (aposentadoria rural aos 55/60 anos). IV: usar distância a campus universitário como instrumento para educação (similar a Card, 1995).

    **Exemplo:** Machado e Gonzaga (2024, *Economia Aplicada*) usaram a PNAD Contínua com design DiD para estimar o efeito da reforma trabalhista de 2017 sobre a informalidade. Compararam trabalhadores em setores mais afetados pela flexibilização (tratamento) com setores menos afetados (controle). Resultado: aumento de 2,3 pontos percentuais na informalidade nos setores tratados — consistente com a teoria de que a redução de custos de demissão incentiva contratos informais.

    **Fonte:** IBGE — PNAD Contínua. Disponível em [ibge.gov.br](https://www.ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua.html).

??? r-interactive "R Interativo — Simulação de RCT: Efeito Médio do Tratamento"
    ```r
    # Simulação de Randomized Controlled Trial (RCT)
    # Demonstra: randomização, estimação do ATE, intervalo de confiança

    set.seed(42)

    # Parâmetros (altere para explorar)
    n        <- 500    # tamanho da amostra
    ate_real <- 3.0    # efeito verdadeiro do tratamento
    sigma    <- 5.0    # desvio-padrão do resultado

    # Gerar dados
    tratamento <- sample(c(0, 1), n, replace = TRUE)  # randomização
    y0 <- rnorm(n, mean = 10, sd = sigma)              # resultado potencial sem tratamento
    y1 <- y0 + ate_real + rnorm(n, sd = 1)             # resultado potencial com tratamento
    y_obs <- ifelse(tratamento == 1, y1, y0)           # resultado observado

    # Estimar ATE
    ate_hat <- mean(y_obs[tratamento == 1]) - mean(y_obs[tratamento == 0])
    se_hat  <- sqrt(var(y_obs[tratamento == 1])/sum(tratamento == 1) +
                    var(y_obs[tratamento == 0])/sum(tratamento == 0))
    ic_lower <- ate_hat - 1.96 * se_hat
    ic_upper <- ate_hat + 1.96 * se_hat

    # Visualização
    par(mfrow = c(1, 2))

    # Painel 1: distribuições
    hist(y_obs[tratamento == 0], col = rgb(0.2, 0.4, 0.8, 0.5), breaks = 20,
         main = "Distribuição dos Resultados", xlab = "Y", xlim = range(y_obs))
    hist(y_obs[tratamento == 1], col = rgb(0.8, 0.2, 0.2, 0.5), breaks = 20, add = TRUE)
    legend("topright", c("Controle", "Tratamento"),
           fill = c(rgb(0.2, 0.4, 0.8, 0.5), rgb(0.8, 0.2, 0.2, 0.5)))

    # Painel 2: estimativa com IC
    plot(1, ate_hat, pch = 19, cex = 2, col = "#F44336",
         xlim = c(0.5, 1.5), ylim = c(ate_real - 4, ate_real + 4),
         xlab = "", ylab = "Efeito Estimado", main = "ATE Estimado vs. Real",
         xaxt = "n")
    arrows(1, ic_lower, 1, ic_upper, angle = 90, code = 3, length = 0.1, lwd = 2)
    abline(h = ate_real, col = "#4CAF50", lty = 2, lwd = 2)
    text(1.3, ate_real, paste0("ATE real = ", ate_real), col = "#4CAF50", cex = 0.9)
    text(1.3, ate_hat, paste0("ATE est. = ", round(ate_hat, 2)), col = "#F44336", cex = 0.9)

    cat(sprintf("ATE real: %.1f | ATE estimado: %.2f | IC 95%%: [%.2f, %.2f]\n",
                ate_real, ate_hat, ic_lower, ic_upper))
    cat(sprintf("O IC contém o valor real? %s\n",
                ifelse(ic_lower <= ate_real & ate_real <= ic_upper, "SIM", "NAO")))
    ```

    **Experimente:** Reduza `n` para 30 e observe como o intervalo de confiança se alarga — com amostras pequenas, a estimativa é imprecisa. Aumente `sigma` para 15 e veja o IC explodir — quando o resultado é muito ruidoso, detectar o efeito requer amostras maiores. Essa é a lógica do **poder estatístico** (Seção 22.4).

??? r-interactive "R Interativo — Diferenças em Diferenças: Visualização de Tendências Paralelas"
    ```r
    # Visualização de Diff-in-Diff com teste de tendências paralelas

    set.seed(123)

    # Parâmetros (altere para explorar)
    efeito_tratamento <- -7    # efeito causal (negativo = redução)
    n_periodos_pre    <- 6     # períodos pré-tratamento
    n_periodos_pos    <- 6     # períodos pós-tratamento
    tendencia         <- -0.5  # tendência comum (ambos os grupos)
    nivel_trat        <- 50    # nível inicial do tratado
    nivel_ctrl        <- 40    # nível inicial do controle

    # Gerar dados
    t <- 1:(n_periodos_pre + n_periodos_pos)
    t_tratamento <- n_periodos_pre + 1  # momento do tratamento

    # Grupo controle: tendência + ruído
    y_ctrl <- nivel_ctrl + tendencia * t + rnorm(length(t), sd = 1.5)

    # Grupo tratamento: mesma tendência + efeito pós-tratamento
    y_trat <- nivel_trat + tendencia * t + rnorm(length(t), sd = 1.5)
    y_trat[t >= t_tratamento] <- y_trat[t >= t_tratamento] + efeito_tratamento

    # Contrafactual (o que teria sido sem tratamento)
    y_cf <- nivel_trat + tendencia * t + rnorm(length(t), sd = 0)

    # Plot
    plot(t, y_trat, type = "b", pch = 19, col = "#F44336", lwd = 2,
         ylim = range(c(y_trat, y_ctrl, y_cf)) + c(-3, 3),
         xlab = "Período", ylab = "Resultado (Y)",
         main = "Diferenças em Diferenças")
    lines(t, y_ctrl, type = "b", pch = 17, col = "#2196F3", lwd = 2)
    lines(t[t >= t_tratamento], y_cf[t >= t_tratamento],
          type = "l", lty = 3, col = "#F44336", lwd = 1.5)

    abline(v = t_tratamento - 0.5, col = "gray40", lty = 2, lwd = 1.5)
    text(t_tratamento - 0.3, max(y_trat) + 2, "Tratamento", srt = 90, cex = 0.8)

    # Setas indicando o efeito
    arrows(t_tratamento + 2, mean(y_cf[t >= t_tratamento]),
           t_tratamento + 2, mean(y_trat[t >= t_tratamento]),
           col = "#4CAF50", lwd = 2, length = 0.1, code = 3)
    text(t_tratamento + 3, (mean(y_cf[t >= t_tratamento]) + mean(y_trat[t >= t_tratamento]))/2,
         paste0("DiD = ", efeito_tratamento), col = "#4CAF50", font = 2)

    legend("topright",
           legend = c("Tratado (observado)", "Controle", "Contrafactual"),
           col = c("#F44336", "#2196F3", "#F44336"),
           pch = c(19, 17, NA), lty = c(1, 1, 3), lwd = 2, bg = "white")
    grid(col = "gray90")
    ```

    **Experimente:** Altere `efeito_tratamento` para 0 e observe que as linhas do tratado e do contrafactual se sobrepõem — efeito nulo. Aumente para -15 e veja o "salto" ficar dramático. Mude `tendencia` para valores diferentes entre tratado e controle (quebrando tendências paralelas) para ver como a estimativa DiD se torna enviesada.

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

## 22.6 Desenho de Mecanismos Experimentais {#226}

Até aqui, usamos experimentos como um espelho: eles refletem a realidade de volta, mostrando se nossas teorias capturam ou não o comportamento humano. Agora, a lógica se inverte. Em vez de perguntar "o mundo funciona como o modelo prevê?", perguntamos "como *desenhar* o mundo para que funcione melhor?" É a diferença entre um biólogo que observa a natureza e um engenheiro que constrói uma ponte. Nesta seção, usamos experimentos não apenas para *testar* teorias, mas para *desenhar* instituições econômicas melhores — leilões, mercados e mecanismos de alocação.

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

## 22.7 Limites e Controvérsias {#227}

Toda revolução científica chega ao momento em que precisa olhar no espelho e fazer autocrítica — e a revolução experimental em economia não é exceção. Depois de três Prêmios Nobel, centenas de RCTs e milhares de sessões de laboratório, a pergunta incômoda é inevitável: será que estamos medindo o que pensamos estar medindo? Nesta seção final, examinamos três fronts de crítica que todo pesquisador experimental deve enfrentar: a replicabilidade dos resultados, o alcance dos RCTs e as questões éticas da experimentação com seres humanos.

### 22.7.1 A crise de replicação

Conforme discutido no Box Mundo 22.2, a taxa de replicação em economia experimental é de aproximadamente 61% (Camerer et al., 2016) — melhor que em psicologia, mas longe do ideal. Cabe aprofundar as causas e as respostas da profissão:

**Viés de publicação (*publication bias*).** Periódicos acadêmicos preferem resultados "significativos" e "surpreendentes". Estudos que encontram efeito nulo (*null results*) são menos publicáveis. Isso cria um viés sistemático: a literatura publicada sobrestima a magnitude dos efeitos.

**Práticas questionáveis de pesquisa (*questionable research practices*).** Incluem: (i) *p-hacking* — testar múltiplas especificações até encontrar uma significativa; (ii) *HARKing* (*Hypothesizing After Results are Known*) — formular hipóteses depois de ver os resultados, apresentando-as como se fossem a priori; (iii) exclusão seletiva de observações (*outlier fishing*) — remover dados que "não se encaixam" sem critério pré-estabelecido.

**Soluções em implementação.** A profissão respondeu com várias medidas: (i) **pré-registro** — depositar o plano de análise em um registro público (como o AEA RCT Registry) *antes* de ver os dados; (ii) **relatórios registrados** (*registered reports*) — periódicos avaliam o desenho do estudo antes da coleta de dados e comprometem-se a publicar independentemente dos resultados; (iii) **compartilhamento de dados e código** — permitir que outros pesquisadores verifiquem e repliquem os resultados.

### 22.7.2 A crítica de Deaton aos RCTs

**Angus Deaton** (Nobel de 2015) é o crítico mais proeminente da "RCT-mania" na economia do desenvolvimento. Suas críticas incluem:

1. **Validade externa limitada.** Um RCT que funciona no Quênia pode não funcionar na Índia — ou mesmo em outra região do Quênia. A randomização garante validade interna, mas não externa. Generalizações requerem teoria.

2. **Atomismo.** RCTs testam intervenções pontuais ("distribuir mosquiteiros", "dar livros") mas não capturam efeitos de equilíbrio geral. Se todos os aldeões recebem microcrédito, os preços e salários locais mudam — e o efeito para cada um difere do efeito medido quando apenas alguns recebem.

3. **Ateoricismo.** Na visão de Deaton, a obsessão com identificação causal "limpa" levou a uma geração de economistas que sabe *medir* efeitos mas não sabe *explicá-los*. Um RCT pode mostrar que desparasitação aumenta frequência escolar — mas sem um modelo teórico, não sabemos *por que* (saúde? nutrição? atenção?) nem se o efeito persistirá quando o contexto mudar.

4. **Não existe hierarquia de evidência.** Deaton questiona a noção de que RCTs são o "padrão-ouro" da pesquisa empírica. Argumenta que diferentes perguntas requerem diferentes métodos — e que um estudo observacional com boa teoria pode ser mais informativo que um RCT sem teoria. A hierarquia de evidência da medicina (RCT > estudo observacional > opinião de especialista) não se transpõe automaticamente para a economia.

### 22.7.3 Questões éticas

A experimentação com seres humanos levanta questões éticas incontornáveis, reguladas por comitês de ética em pesquisa (CEPs no Brasil, IRBs nos Estados Unidos):

**Consentimento informado.** Em experimentos de laboratório e RCTs, os participantes devem ser informados sobre os riscos e benefícios da pesquisa e consentir voluntariamente. Mas em experimentos de campo natural (Seção 22.3.1), os participantes *não sabem* que estão em um experimento — tornando o consentimento informado impossível. O argumento a favor é que o anonimato é essencial para evitar efeitos de demanda; o argumento contra é que as pessoas têm o direito de saber quando estão sendo estudadas.

**Negação de tratamento.** Em RCTs, o grupo de controle *não recebe* a intervenção. Se a intervenção é potencialmente benéfica (vacinas, mosquiteiros, microcrédito), negar acesso ao grupo de controle levanta dilemas éticos graves. A resposta padrão é a **randomização por fases**: todos recebem o tratamento eventualmente, mas em ordem aleatória — permitindo comparação entre tratados "precoces" e "tardios".

**Assimetrias de poder.** RCTs em países em desenvolvimento frequentemente envolvem pesquisadores de universidades ricas do Norte Global estudando populações vulneráveis do Sul Global. Há um risco real de que a agenda de pesquisa seja determinada pelos interesses acadêmicos dos pesquisadores (publicar no *AER*) e não pelas necessidades das comunidades. A resposta inclui parcerias genuínas com pesquisadores e instituições locais, e retorno dos resultados às comunidades.

!!! box-brasil "Box Brasil 22.2 — O Programa Mais Médicos como experimento natural"

    **Contexto:** O Programa Mais Médicos (PMM), lançado em julho de 2013, alocou médicos — majoritariamente cubanos, via cooperação com o governo de Cuba — a municípios brasileiros com carência de profissionais de saúde, especialmente em áreas remotas e periferias urbanas. Em seu auge, o programa contava com mais de 18.000 médicos atuando em 4.058 municípios (73% dos municípios brasileiros).

    **Dados:** Estudos quase-experimentais (Carrillo e Feres, 2019; Santos et al., 2020) documentaram: (i) aumento de 33% nas consultas de atenção primária nos municípios tratados; (ii) redução de 3,2% nas internações por condições sensíveis à atenção primária (ICSAP); (iii) redução na mortalidade infantil de 1,5 óbitos por 1.000 nascidos vivos nos municípios com maior exposição; (iv) efeitos concentrados nos municípios mais vulneráveis (quintil inferior do IDHM).

    **Análise:** A avaliação do PMM ilustra a aplicação dos métodos quase-experimentais discutidos na Seção 22.5. A atribuição de médicos seguiu critérios de vulnerabilidade municipal (índice composto do Ministério da Saúde), criando uma descontinuidade explorável: municípios logo acima e logo abaixo do limiar de elegibilidade são semelhantes em características observáveis, diferindo apenas na participação no programa. Essa é a lógica da regressão descontínua (Seção 22.5.3). O DiD complementa ao comparar a evolução temporal de municípios tratados e não tratados. Os desafios metodológicos incluem: (i) efeito de transbordamento (pacientes de municípios não tratados podem buscar atendimento nos tratados); (ii) viés de seleção residual (municípios que aderiram ao PMM podem diferir sistematicamente); (iii) a saída dos médicos cubanos em 2018 criou um segundo "choque" que permite estimar efeitos de reversão.

    **Para refletir:** A saída abrupta dos médicos cubanos em novembro de 2018 constitui um "experimento natural de reversão". Se os indicadores de saúde pioraram nos municípios que perderam médicos, isso reforça a causalidade do efeito original. Que tipo de design empírico você usaria para estimar esse efeito de reversão?

---

Começamos perguntando "onde estão os experimentos?" — e a resposta percorreu salas de informática com estudantes, campos de arroz na Índia, creches em Israel e fronteiras estaduais nos Estados Unidos. De Chamberlin a Duflo, a economia aprendeu a testar suas teorias com o mesmo rigor que a medicina usa para testar seus remédios. O método não é perfeito — a crise de replicação, os limites éticos e a tensão entre validade interna e externa lembram que medir o comportamento humano nunca será tão limpo quanto medir a velocidade da luz. Mas é incomparavelmente melhor do que não medir.

*O laboratório do economista — de Chamberlin a J-PAL. No próximo capítulo, aplicamos essas ferramentas ao mercado mais íntimo de todos: a saúde.*
