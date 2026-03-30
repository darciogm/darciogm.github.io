## 23.7 Regulação Farmacêutica e Acesso a Medicamentos {#237}

### 23.7.1 O dilema preço-acesso-inovação

Na Seção 23.3.3, vimos que a indústria farmacêutica opera sob uma lógica de monopólio temporário: patentes garantem exclusividade por 20 anos para financiar P&D, mas durante a vigência o preço excede o custo marginal — restringindo o acesso. A regulação farmacêutica busca mitigar esse trade-off sem destruir o incentivo à inovação.

O problema pode ser formalizado como um dilema de três vértices:

- **Inovação**: requer expectativa de lucro monopolista (patentes longas, preços livres).
- **Acesso**: requer preços próximos ao custo marginal (patentes curtas ou inexistentes, regulação de preços).
- **Sustentabilidade fiscal**: o orçamento público é finito — subsidiar medicamentos caros compete com outros investimentos em saúde.

Nenhuma política resolve os três simultaneamente. A regulação de preços de medicamentos é, portanto, uma escolha sobre *qual vértice sacrificar* — e em que medida.

!!! definition "Regulação de preços de medicamentos"
    Intervenção governamental que fixa limites máximos (tetos) para os preços de medicamentos, utilizando critérios como: (i) **referenciamento internacional** — comparar com preços praticados em outros países; (ii) **referenciamento terapêutico** — comparar com medicamentos substitutos na mesma classe; (iii) **custo-efetividade** — incorporar apenas medicamentos cujo ICER (Seção 23.6.2) esteja abaixo de um limiar pré-definido; (iv) **teto de markup** — limitar a margem sobre o custo de produção. A maioria dos países combina mais de um critério.

### 23.7.2 O modelo brasileiro: CMED e política de genéricos

O Brasil adota um sistema de regulação por **teto de preços** administrado pela **CMED** (Câmara de Regulação do Mercado de Medicamentos), vinculada à ANVISA. O sistema funciona em duas frentes:

**1. Preço-teto para novos medicamentos.** Quando uma empresa solicita registro de um novo medicamento, a CMED fixa o **Preço Fábrica** (PF) máximo com base em:

- Referenciamento internacional: preço mediano em uma cesta de países (Austrália, Canadá, Espanha, EUA, França, Grécia, Itália, Nova Zelândia, Portugal).
- Análise de custo-efetividade para incorporação ao SUS (via CONITEC).
- Custo de tratamento versus alternativas terapêuticas existentes.

**2. Reajuste anual.** Os preços são reajustados anualmente por uma fórmula que combina inflação (IPCA), um fator de produtividade ($X$) e um fator de ajuste entre setores:

$$
\Delta P = \text{IPCA} - X + Z \label{eq:23.23} \tag{23.23}
$$

onde $X$ captura ganhos de produtividade (que devem ser repassados ao consumidor) e $Z$ é um fator de ajuste de preços relativos. Em 2024, o reajuste autorizado foi de 4,50% (IPCA acumulado menos fator $X = 0$).

**3. Política de genéricos.** A Lei dos Genéricos (Lei 9.787/1999) estabeleceu que medicamentos genéricos devem custar no mínimo **35% menos** que o medicamento de referência. O impacto foi transformador:

| Indicador | 2003 | 2024 |
|:----------|:----:|:----:|
| Market share dos genéricos (unidades) | ~9% | ~38% |
| Número de apresentações genéricas registradas | ~2.500 | ~8.200+ |
| Desconto médio vs. referência | ~40% | ~55–65% |

*Fonte: Pró-Genéricos; ANVISA, 2024.*

!!! definition "Medicamento genérico"
    Medicamento com o mesmo princípio ativo, forma farmacêutica, dosagem e indicação terapêutica do medicamento de referência (marca), cuja patente expirou. Deve demonstrar **bioequivalência** — isto é, que a absorção e a concentração sanguínea do princípio ativo são estatisticamente equivalentes ao medicamento original. O genérico é identificado pela denominação comum brasileira (DCB) e não pode usar nome de marca.

!!! idea "Intuição Econômica"
    **Em uma frase:** O genérico é a concorrência perfeita chegando ao mercado farmacêutico — mas só depois que a patente expira e alguém paga o custo fixo da bioequivalência.

    **Pense assim:** Durante a vigência da patente, a empresa original é um monopolista (Capítulo 15) e cobra $P > CMg$. Quando a patente expira, o mercado deveria convergir para $P = CMg$ — como num mercado perfeitamente competitivo (Capítulo 13). Na prática, a convergência é incompleta: muitos consumidores continuam comprando a marca (por confiança, hábito ou prescrição médica), gerando um "prêmio de marca" que persiste por anos. Esse prêmio é pura assimetria de informação — o genérico é *quimicamente idêntico*, mas o consumidor não tem certeza.

    **Por que isso importa:** A política de genéricos é um dos instrumentos mais poderosos de redução de preços em saúde. No Brasil, a economia estimada para consumidores foi de R$ 250+ bilhões acumulados desde 1999. Mas o prêmio de marca persistente mostra que informação importa: campanhas de conscientização e substituição obrigatória na dispensação são tão importantes quanto a existência do genérico.

### 23.7.3 O Programa Farmácia Popular

O **Programa Farmácia Popular do Brasil**, criado em 2004, representa uma abordagem diferente: em vez de regular preços, o governo **subsidia diretamente** o custo do medicamento para o consumidor.

O mecanismo é simples: o governo repassa às farmácias credenciadas o valor dos medicamentos da lista do programa, e o consumidor paga zero (ou uma fração reduzida). Em 2024, o programa atingiu 100% de gratuidade para 41 medicamentos essenciais (hipertensão, diabetes, asma, entre outros), beneficiando **24,7 milhões de brasileiros** em mais de 31 mil farmácias credenciadas — cobrindo 85% dos municípios (Ministério da Saúde, 2024).

Em termos microeconômicos, o Farmácia Popular é um **subsídio ao consumo** que desloca a curva de demanda efetiva para a direita:

$$
p_{\text{consumidor}} = \max\{0, \; p_{\text{mercado}} - s\} \label{eq:23.24} \tag{23.24}
$$

onde $s$ é o subsídio por unidade. Quando $s \geq p_{\text{mercado}}$, o preço efetivo é zero — eliminando a barreira de preço ao acesso.

!!! box-brasil "Brasil na Prática — Farmácia Popular: subsídio cruzado e acesso universal"

    **O modelo econômico.** O Farmácia Popular opera como um subsídio direto ao consumo de medicamentos essenciais, financiado por receitas gerais do governo federal. O orçamento saltou de R$ 2,48 bilhões (2022) para R$ 3,4 bilhões (2024) — um aumento de 37%.

    **Resultados.** Estudos mostram que o programa reduziu significativamente as internações hospitalares por condições crônicas mal controladas. A lógica é direta: se o paciente hipertenso toma o remédio regularmente (porque é gratuito), ele não aparece no pronto-socorro com AVC — e o custo de uma internação por AVC (~R$ 8.000–15.000) é muito maior que o custo anual dos anti-hipertensivos (~R$ 200–400 pelo Farmácia Popular).

    **Análise custo-efetividade.** O programa é provavelmente *cost-saving* (economia líquida): cada R$ 1 gasto com medicamentos gratuitos economiza estimativamente R$ 2–4 em internações evitadas. É um dos raros casos em que o subsídio público se paga sozinho — porque a alternativa (não tratar doenças crônicas) é muito mais cara.

    **Fonte:** Ministério da Saúde, *Farmácia Popular: 20 anos do Programa*, 2024. Disponível em [gov.br/saude](https://www.gov.br/saude/pt-br/composicao/sectics/farmacia-popular).

!!! box-brasil "Brasil na Prática — CMED e a regulação por teto: funciona?"

    **O mecanismo.** A CMED fixa o Preço Máximo ao Consumidor (PMC) para cada medicamento — incluindo impostos. Farmácias e distribuidoras não podem cobrar acima do PMC. O reajuste anual é automático (fórmula IPCA − X + Z), mas a CMED pode intervir ad hoc em casos de abuso.

    **Evidências.** Um estudo do PROCON-SP (2024) encontrou variação de preços entre farmácias de até 300% para o mesmo medicamento — mesmo com o teto da CMED. A explicação: o PMC é um *teto*, não um preço único. Farmácias em bairros de alta renda cobram próximo ao teto; farmácias populares e redes de desconto cobram muito abaixo. Isso é **discriminação de preços geográfica** (Capítulo 15) — perfeitamente consistente com a teoria do monopólio com segmentação de mercado.

    **O novo marco (2025–2026).** A Resolução CMED nº 3/2025 reformulou o sistema de precificação para incluir avaliação de custo-efetividade obrigatória (via CONITEC) como critério para fixação do preço de novos medicamentos — aproximando o Brasil do modelo do NICE britânico.

    **Fonte:** ANVISA/CMED, *Resolução nº 3/2025*; PROCON-SP, *Pesquisa de Preços de Medicamentos*, 2024.

### 23.7.4 O modelo Rothschild-Stiglitz aplicado a planos de saúde com cobertura farmacêutica

A inclusão de medicamentos de alto custo nos planos de saúde intensifica o problema de seleção adversa (Seção 23.4). Considere dois tipos de pacientes:

- **Tipo L** (baixo risco): probabilidade $\pi_L = 0{,}05$ de precisar de tratamento de alto custo ($m = $ R$ 100.000/ano).
- **Tipo H** (alto risco — doença crônica diagnosticada): probabilidade $\pi_H = 0{,}80$.

O custo atuarial justo por tipo é:

$$
P_L = \pi_L \cdot m = 0{,}05 \times 100.000 = \text{R\$}\;5.000 \label{eq:23.25} \tag{23.25}
$$

$$
P_H = \pi_H \cdot m = 0{,}80 \times 100.000 = \text{R\$}\;80.000 \label{eq:23.26} \tag{23.26}
$$

Se a operadora cobra prêmio único (pooling):

$$
\bar{P} = \lambda P_H + (1-\lambda) P_L \label{eq:23.27} \tag{23.27}
$$

Com $\lambda = 0{,}20$ (20% alto risco): $\bar{P} = 0{,}20 \times 80.000 + 0{,}80 \times 5.000 = $ R$ 20.000. Para o tipo L, esse prêmio é 4× seu custo atuarial — incentivando a saída.

!!! example "Exercício Resolvido 23.4 — Seleção adversa e cobertura farmacêutica"
    **Enunciado.** Uma operadora de plano de saúde oferece cobertura para medicamentos de alto custo. A população é composta por 70% de tipo L ($\pi_L = 0{,}10$, custo $m = $ R$ 50.000) e 30% de tipo H ($\pi_H = 0{,}60$, mesmo custo $m$).

    (a) Calcule o prêmio do pool (prêmio único para todos).

    (b) Se o tipo L tem disposição a pagar máxima de R$ 8.000 pelo seguro, o que acontece com o mercado?

    (c) Proponha um menu de contratos separador (Rothschild-Stiglitz) que estabilize o mercado.

    **Solução.**

    **(a)** Custo esperado por tipo: $P_L = 0{,}10 \times 50.000 = $ R$ 5.000; $P_H = 0{,}60 \times 50.000 = $ R$ 30.000.

    Prêmio do pool: $\bar{P} = 0{,}30 \times 30.000 + 0{,}70 \times 5.000 = 9.000 + 3.500 = $ R$ 12.500.

    **(b)** Como $\bar{P} = $ R$ 12.500 > R$ 8.000 (disposição a pagar do tipo L), os tipos L saem do pool. Recalculando com apenas tipos H: $P = $ R$ 30.000. Os tipos L ficam sem seguro — **colapso parcial do mercado** (espiral da morte).

    **(c)** Menu separador:

    - **Contrato H** (para alto risco): cobertura total, prêmio $P_H = $ R$ 30.000. O tipo H aceita porque $P_H < $ custo esperado sem seguro ajustado pela aversão ao risco.
    - **Contrato L** (para baixo risco): cobertura parcial (50% do custo), prêmio $P_L = 0{,}10 \times 0{,}50 \times 50.000 = $ R$ 2.500. O tipo L aceita porque $P_L < $ R$ 8.000. O tipo H não deseja imitar o L porque a cobertura parcial é menos atraente para quem tem alta probabilidade de usar.

    A chave é que a **cobertura parcial funciona como mecanismo de screening** (Capítulo 19): quem aceita menos cobertura sinaliza que é baixo risco. O custo da assimetria de informação é que o tipo L recebe seguro inferior ao que receberia com informação completa — o resultado clássico de Rothschild-Stiglitz.

!!! example "Exercício Resolvido 23.5 — Moral hazard em plano odontológico"
    **Enunciado.** Um plano odontológico observa que, após incluir cobertura integral para procedimentos estéticos (clareamento, facetas), o consumo desses procedimentos triplicou — de 2 para 6 procedimentos por beneficiário/ano. O custo por procedimento é R$ 500.

    (a) Calcule o aumento no gasto do plano por beneficiário.

    (b) Se a elasticidade-preço da demanda por procedimentos estéticos é $\varepsilon = -1{,}5$, o aumento observado é consistente com a teoria?

    (c) Proponha um mecanismo de copagamento que reduza o moral hazard sem eliminar a cobertura.

    **Solução.**

    **(a)** Gasto adicional: $(6 - 2) \times 500 = $ R$ 2.000/beneficiário/ano.

    **(b)** A cobertura integral reduziu o preço efetivo de R$ 500 para R$ 0 — variação de 100%. Com $\varepsilon = -1{,}5$, a variação esperada na quantidade seria $1{,}5 \times 100\% = 150\%$ (de 2 para 5). O aumento observado (200%, de 2 para 6) *excede* a previsão — sugerindo que há não apenas efeito-preço, mas também **demanda induzida** pelo ofertante (Seção 23.3.1): dentistas prescrevem mais procedimentos quando sabem que o plano cobre.

    **(c)** Copagamento de 30%: o paciente paga R$ 150 por procedimento (30% de R$ 500). Com $\varepsilon = -1{,}5$ e preço efetivo passando de 0 para 150 (30% do custo original), a demanda cairia substancialmente — previsivelmente para ~3–4 procedimentos. O plano economiza ~R$ 1.000–1.500/beneficiário, e o paciente mantém cobertura parcial para procedimentos que genuinamente deseja.

    **Lição:** O moral hazard é mais severo em serviços com **elasticidade-preço alta** (como procedimentos estéticos) do que em serviços com demanda inelástica (como quimioterapia). O desenho ótimo do seguro (Seção 23.2.3) prevê exatamente isso: copagamento alto para serviços elásticos, copagamento baixo para serviços inelásticos.

!!! example "Exercício Resolvido 23.6 — Tabela SUS vs. plano privado: precificação e acesso"
    **Enunciado.** Uma consulta com cardiologista custa, em média: R$ 10,00 na tabela SUS (remuneração ao prestador) e R$ 350,00 em consultório particular. O plano de saúde negocia R$ 120,00.

    (a) Explique por que a tabela SUS remunera tão abaixo do custo de mercado. Quais são as consequências previsíveis?

    (b) Use o modelo de demanda induzida (Seção 23.3.1) para prever como a diferença de remuneração afeta o comportamento do médico nos três contextos.

    (c) Um economista propõe elevar a tabela SUS para R$ 80,00. Analise os efeitos sobre acesso, filas e gasto público.

    **Solução.**

    **(a)** A tabela SUS remunera abaixo do custo marginal do atendimento para muitos prestadores — o que gera três consequências previsíveis: (i) **racionamento por fila** em vez de por preço: como o preço ao consumidor é zero mas a remuneração ao médico é baixa, a demanda excede a oferta, gerando filas; (ii) **seleção adversa na oferta**: os médicos mais qualificados (com maior custo de oportunidade) migram para o setor privado; (iii) **redução da qualidade**: com remuneração baixa, o prestador economiza no tempo de consulta, na infraestrutura e nos insumos.

    **(b)** Usando o modelo $\max_n U^M(R(n), n - n^*)$ da Seção 23.3.1:

    - **SUS** ($R = $ R$ 10/consulta): o retorno marginal é tão baixo que o médico minimiza o número de atendimentos (ou compensa com volume altíssimo em tempo mínimo). Demanda induzida é *negativa* — o médico tende a *subtratar*.
    - **Plano privado** ($R = $ R$ 120): retorno moderado. Algum incentivo a demanda induzida (pedir exames adicionais para justificar retornos).
    - **Particular** ($R = $ R$ 350): retorno alto. Incentivo máximo a demanda induzida — mas disciplinado pelo fato de que o paciente paga do próprio bolso e é sensível ao preço.

    **(c)** Elevar a tabela SUS para R$ 80: (i) **acesso melhora** — mais médicos aceitam atender pelo SUS; (ii) **filas reduzem** — maior oferta reduz o racionamento; (iii) **gasto público aumenta** — se o SUS realiza ~300 milhões de consultas/ano, o custo adicional seria $(80 - 10) \times 300M = $ R$ 21 bilhões. É factível? Depende do orçamento. Em 2024, o gasto federal total com saúde foi ~R$ 200 bilhões — o aumento representaria ~10%.

    **Paradoxo:** Se a consulta SUS de R$ 80 reduzir internações evitáveis (que custam ~R$ 5.000–10.000 cada), a economia pode parcialmente compensar o gasto — mas o efeito líquido é uma questão empírica, não teórica.

!!! idea "Intuição Econômica"
    **Em uma frase:** A tabela SUS é um caso clássico de preço-teto abaixo do equilíbrio — e as consequências são exatamente as que o Capítulo 4 prevê: fila, escassez e queda de qualidade.

    **Pense assim:** Imagine que o governo fixasse o preço do pão em R$ 0,50 — muito abaixo do custo de produção. O que aconteceria? Padarias fechariam, as remanescentes teriam filas enormes, e a qualidade do pão despencaria. É exatamente o que a tabela SUS faz com consultas médicas: fixa um preço que não cobre os custos, e o resultado é fila, migração de médicos para o setor privado e consultas de 5 minutos.

    **Por que isso importa:** O SUS é um sistema universal admirável — mas seu subfinanciamento crônico transforma o acesso formal em acesso real limitado. A fila no SUS é um imposto implícito sobre os mais pobres: quem tem plano privado paga em dinheiro; quem depende do SUS paga em tempo e espera. Como o custo de oportunidade do tempo é menor para quem ganha menos, a fila é regressiva de forma perversa.

??? r-interactive "R Interativo — Modelo de Grossman: Estoque de Saúde ao Longo da Vida"
    ```r
    # Modelo de Grossman simplificado: dinâmica do estoque de saúde

    # Parâmetros (altere para explorar!)
    H0        <- 100    # estoque inicial de saúde
    T_max     <- 80     # idade máxima
    delta_0   <- 0.02   # taxa de depreciação inicial
    delta_inc <- 0.001  # incremento anual na depreciação (envelhecimento)
    I_base    <- 3.0    # investimento base em saúde
    I_educ    <- 0.5    # bônus de investimento por educação (0 a 1)
    H_min     <- 20     # limiar mínimo de saúde ("morte")

    # Simulação
    H <- numeric(T_max)
    H[1] <- H0
    delta <- numeric(T_max)

    for (t in 2:T_max) {
      delta[t] <- delta_0 + delta_inc * (t - 1)
      I_t <- I_base * (1 + I_educ)  # investimento constante
      H[t] <- H[t-1] - delta[t] * H[t-1] + I_t
      if (H[t] < H_min) { H[t:T_max] <- NA; break }
    }

    # Visualização
    par(mfrow = c(2, 1), mar = c(4, 4, 3, 1))

    # Painel 1: Estoque de saúde
    plot(1:T_max, H, type = "l", lwd = 2.5, col = "#2196F3",
         xlab = "Idade", ylab = "Estoque de Saúde H(t)",
         main = "Modelo de Grossman: Capital de Saúde")
    abline(h = H_min, col = "#F44336", lty = 2, lwd = 2)
    text(10, H_min + 3, expression(H[min] * " (limiar)"), col = "#F44336", cex = 0.9)

    # Encontrar idade de 'morte'
    t_morte <- which(is.na(H))[1]
    if (!is.na(t_morte)) {
      points(t_morte - 1, H[t_morte - 1], pch = 4, cex = 2, col = "#F44336", lwd = 2)
      text(t_morte - 1, H[t_morte - 1] + 5,
           paste0("t = ", t_morte - 1), col = "#F44336", cex = 0.8)
    }
    grid(col = "gray90")

    # Painel 2: Taxa de depreciação
    delta_plot <- delta_0 + delta_inc * (0:(T_max-1))
    plot(1:T_max, delta_plot, type = "l", lwd = 2, col = "#FF9800",
         xlab = "Idade", ylab = expression(delta(t)),
         main = "Taxa de Depreciação (envelhecimento)")
    grid(col = "gray90")

    cat(sprintf("Estoque inicial: %.0f | Investimento: %.1f/ano\n", H0, I_base * (1 + I_educ)))
    if (!is.na(t_morte)) {
      cat(sprintf("Saúde cruza limiar mínimo na idade %d\n", t_morte - 1))
    } else {
      cat("Saúde não cruza o limiar no horizonte simulado\n")
    }
    ```

    **Experimente:** Aumente `I_educ` para 1.0 (pessoa com alta escolaridade) e veja como a vida se estende — é o "gradiente educação-saúde" do Grossman. Reduza `I_base` para 1.0 (sem acesso a cuidados médicos) e observe a queda abrupta. Aumente `delta_inc` para 0.003 (envelhecimento acelerado) para simular doenças crônicas.

??? r-interactive "R Interativo — Pooling vs. Separating: Simulação de Rothschild-Stiglitz em Seguros de Saúde"
    ```r
    # Simulação: equilíbrio pooling vs. separating em seguros de saúde

    # Parâmetros
    n_pop     <- 1000   # tamanho da população
    frac_H    <- 0.25   # fração de alto risco
    pi_H      <- 0.60   # probabilidade de sinistro (alto risco)
    pi_L      <- 0.10   # probabilidade de sinistro (baixo risco)
    loss      <- 50000  # custo do sinistro (R$)
    wtp_L_max <- 8000   # disposição máxima a pagar do tipo L

    # Custos atuariais
    P_H <- pi_H * loss
    P_L <- pi_L * loss
    P_pool <- frac_H * P_H + (1 - frac_H) * P_L

    cat("═══ PARÂMETROS ═══\n")
    cat(sprintf("Tipo H: prob = %.0f%%, custo justo = R$ %s\n", pi_H*100, format(P_H, big.mark=".")))
    cat(sprintf("Tipo L: prob = %.0f%%, custo justo = R$ %s\n", pi_L*100, format(P_L, big.mark=".")))
    cat(sprintf("Prêmio pool (todos): R$ %s\n\n", format(P_pool, big.mark=".")))

    # Simulação da espiral da morte
    n_H <- round(n_pop * frac_H)
    n_L <- n_pop - n_H
    tipos <- c(rep("H", n_H), rep("L", n_L))

    # Iterações da espiral
    premios <- numeric(10)
    segurados <- numeric(10)
    pool_atual <- tipos

    for (iter in 1:10) {
      n_h <- sum(pool_atual == "H")
      n_l <- sum(pool_atual == "L")
      n_total <- n_h + n_l
      if (n_total == 0) break

      premio <- (n_h * P_H + n_l * P_L) / n_total
      premios[iter] <- premio
      segurados[iter] <- n_total

      # Tipo L sai se prêmio > disposição a pagar
      if (premio > wtp_L_max) {
        pool_atual <- pool_atual[pool_atual == "H"]
      }
    }

    # Separating
    cob_L <- wtp_L_max / (pi_L * loss)  # cobertura máxima que L aceita pagar

    cat("═══ ESPIRAL DA MORTE (POOLING) ═══\n")
    for (i in 1:10) {
      if (segurados[i] == 0) break
      cat(sprintf("  Rodada %d: Prêmio = R$ %s | Segurados = %d\n",
                  i, format(round(premios[i]), big.mark="."), segurados[i]))
    }

    cat(sprintf("\n═══ EQUILÍBRIO SEPARADOR ═══\n"))
    cat(sprintf("  Contrato H: cobertura 100%%, prêmio R$ %s\n", format(P_H, big.mark=".")))
    cat(sprintf("  Contrato L: cobertura %.0f%%, prêmio R$ %s\n",
                min(100, cob_L * 100), format(round(min(wtp_L_max, P_L)), big.mark=".")))

    # Gráfico
    par(mfrow = c(1, 2))

    # Painel 1: Espiral
    valid <- segurados > 0
    barplot(premios[valid], names.arg = which(valid),
            col = ifelse(premios[valid] > wtp_L_max, "#F44336", "#4CAF50"),
            main = "Espiral da Morte\n(Prêmio por Rodada)",
            xlab = "Rodada", ylab = "Prêmio (R$)",
            border = NA)
    abline(h = wtp_L_max, col = "#FF9800", lty = 2, lwd = 2)
    text(1, wtp_L_max + 500, "WTP máximo tipo L", col = "#FF9800", cex = 0.8)

    # Painel 2: Segurados
    barplot(segurados[valid], names.arg = which(valid),
            col = "#2196F3", main = "Segurados por Rodada",
            xlab = "Rodada", ylab = "N segurados", border = NA)
    ```

    **Experimente:** Aumente `frac_H` para 0.50 (metade da população é alto risco) e observe a espiral acelerar. Reduza `wtp_L_max` para 6000 e o colapso acontece na primeira rodada. Aumente para 20000 e o pool sobrevive — o mandato individual efetivamente eleva essa disposição a pagar.

---

A regulação farmacêutica e de seguros de saúde é, no fundo, uma aplicação prática da microeconomia da informação (Capítulo 19) e do design de mecanismos (Capítulo 9c) em um contexto onde as consequências de errar não são apenas ineficiência — são vidas perdidas. O genérico que custa 60% menos é a concorrência perfeita chegando ao mercado com 20 anos de atraso. O Farmácia Popular que subsidia o anti-hipertensivo é o imposto pigouviano às avessas — um subsídio à externalidade positiva de se manter saudável. E a espiral da morte dos planos individuais é Rothschild e Stiglitz saindo do papel para os tribunais e para as contas de milhões de famílias.

*No próximo capítulo, trocamos a farmácia pelo planeta inteiro — e perguntamos quanto vale um pôr do sol.*
