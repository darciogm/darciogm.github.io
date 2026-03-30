## 24.5 Valoração Ambiental {#245}

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

!!! example "Exercício Resolvido 24.3 — Valoração contingente do Parque Nacional da Tijuca"
    **Enunciado.** Um pesquisador realiza uma pesquisa de valoração contingente com 500 moradores do Rio de Janeiro para estimar a disposição a pagar (DAP) pela preservação do Parque Nacional da Tijuca. A pergunta: "Quanto você estaria disposto a pagar por mês, na sua conta de luz, para garantir a manutenção e ampliação do Parque Nacional da Tijuca?" Resultados:

    | DAP mensal (R$) | Proporção que aceita |
    |:---:|:---:|
    | 5 | 85% |
    | 10 | 68% |
    | 20 | 42% |
    | 50 | 15% |
    | 100 | 4% |

    (a) Estime a DAP média usando o método de integração da curva de sobrevivência.

    (b) Se o Rio de Janeiro tem ~2,8 milhões de domicílios, estime o valor de preservação anual agregado.

    (c) Compare com o orçamento anual do ICMBio para o Parque (~R$ 15 milhões). A preservação é custo-efetiva?

    **Solução.**

    **(a)** A "curva de sobrevivência" mostra a proporção que aceita cada valor. A DAP média é a área sob essa curva. Usando integração por trapézios:

    $$\text{DAP}_{\text{média}} \approx \frac{(5-0)(1+0{,}85)}{2} + \frac{(10-5)(0{,}85+0{,}68)}{2} + \frac{(20-10)(0{,}68+0{,}42)}{2} + \frac{(50-20)(0{,}42+0{,}15)}{2} + \frac{(100-50)(0{,}15+0{,}04)}{2}$$

    $$= 4{,}63 + 3{,}83 + 5{,}50 + 8{,}55 + 4{,}75 = \text{R\$}\;27{,}25\text{/mês}$$

    **(b)** Valor anual agregado: $27{,}25 \times 12 \times 2.800.000 = $ R$ 915,6 milhões/ano.

    **(c)** O benefício estimado (R$ 916 milhões) é ~61× o orçamento de manutenção (R$ 15 milhões). A preservação é enormemente custo-efetiva — cada R$ 1 gasto gera R$ 61 em benefícios declarados. Caveat: a DAP declarada tipicamente superestima a DAP real (viés hipotético) — um fator de correção de 0,3–0,5 ainda resultaria em benefício/custo de 18–30:1.

!!! idea "Intuição Econômica"
    **Em uma frase:** Valoração contingente pergunta às pessoas quanto pagariam por algo que não tem preço — e, apesar de todas as limitações, é a única forma de capturar o valor de existência de bens ambientais.

    **Pense assim:** Você nunca vai à Amazônia. Nunca verá uma onça-pintada ao vivo. Mas se alguém perguntasse "quanto você pagaria por mês para garantir que a Amazônia e a onça continuem existindo?", sua resposta provavelmente não seria zero. Esse é o valor de existência — e ele não aparece em nenhum preço de mercado, em nenhuma transação, em nenhum PIB. A valoração contingente é a ferramenta que permite transformar essa preferência silenciosa em número.

    **Por que isso importa:** No julgamento do caso Exxon Valdez (derramamento de petróleo no Alasca, 1989), a Exxon argumentou que o dano ambiental era apenas o custo de limpeza. Os economistas contratados pelo governo usaram valoração contingente para mostrar que a disposição a pagar dos americanos pela preservação do ecossistema do Alasca excedia em muito o custo de limpeza. O júri concordou. A ferramenta é imperfeita — mas a alternativa (valor zero para bens sem preço de mercado) é muito pior.

??? r-interactive "R Interativo — Valoração Contingente: Estimando a Disposição a Pagar"
    ```r
    # Simulação de pesquisa de valoração contingente
    # Estima DAP com distribuição log-normal

    set.seed(42)

    # Parâmetros (altere para explorar!)
    n_respondentes <- 500
    mu_log         <- 2.5    # média do log da DAP (exp(2.5) ~ R$ 12)
    sigma_log      <- 1.0    # dispersão (heterogeneidade)
    valores_oferta <- c(5, 10, 20, 50, 100)  # valores oferecidos

    # Gerar DAP verdadeira (log-normal)
    dap_verdadeira <- rlnorm(n_respondentes, meanlog = mu_log, sdlog = sigma_log)

    # Simular respostas dicotômicas ("sim/não" para cada valor)
    resultados <- data.frame(valor = valores_oferta)
    resultados$prop_sim <- sapply(valores_oferta, function(v) {
      mean(dap_verdadeira >= v)
    })

    # DAP média por integração (trapézios)
    # Adicionar pontos extremos
    x <- c(0, valores_oferta, max(valores_oferta) * 2)
    y <- c(1, resultados$prop_sim, 0)
    dap_media <- sum(diff(x) * (y[-length(y)] + y[-1]) / 2)

    # DAP verdadeira (da distribuição)
    dap_real <- mean(dap_verdadeira)

    cat("═══ RESULTADOS DA PESQUISA ═══\n\n")
    cat("  Valor (R$) | Aceitam (%)\n")
    cat("  -----------|----------\n")
    for (i in 1:nrow(resultados)) {
      cat(sprintf("  %10.0f | %6.1f%%\n", resultados$valor[i], resultados$prop_sim[i] * 100))
    }
    cat(sprintf("\n  DAP média (trapézios): R$ %.2f/mês\n", dap_media))
    cat(sprintf("  DAP média (verdadeira): R$ %.2f/mês\n", dap_real))
    cat(sprintf("  Viés da estimativa: %.1f%%\n", (dap_media / dap_real - 1) * 100))

    # Gráficos
    par(mfrow = c(1, 2))

    # 1. Curva de sobrevivência
    plot(c(0, valores_oferta, max(valores_oferta) * 1.5),
         c(1, resultados$prop_sim, 0),
         type = "b", pch = 19, col = "#2196F3", lwd = 2,
         xlab = "Valor oferecido (R$/mês)", ylab = "Proporção que aceita",
         main = "Curva de Sobrevivência da DAP")
    polygon(c(x, rev(x)), c(y, rep(0, length(y))),
            col = rgb(0.13, 0.59, 0.95, 0.2), border = NA)
    text(30, 0.6, paste0("DAP média\n≈ R$ ", round(dap_media, 1)),
         col = "#2196F3", font = 2, cex = 0.9)
    grid(col = "gray90")

    # 2. Distribuição da DAP verdadeira
    hist(dap_verdadeira[dap_verdadeira < 200], breaks = 40,
         col = rgb(0.3, 0.7, 0.3, 0.5), border = "white",
         main = "Distribuição da DAP (log-normal)",
         xlab = "DAP (R$/mês)", ylab = "Frequência")
    abline(v = dap_real, col = "#F44336", lwd = 2, lty = 2)
    text(dap_real + 10, n_respondentes * 0.08,
         paste0("Média = R$ ", round(dap_real, 1)),
         col = "#F44336", cex = 0.8)
    grid(col = "gray90")
    ```

    **Experimente:** Aumente `sigma_log` para 1.5 (população mais heterogênea) e observe a cauda direita se estender — poucos ricos com DAP muito alta puxam a média para cima. Reduza `n_respondentes` para 50 e veja a curva ficar ruidosa — pesquisas pequenas são imprecisas. Mude `mu_log` para 3.5 (população mais rica) e veja a DAP média dobrar.

!!! note "Limitações dos métodos de preferência declarada"
    Métodos de preferência declarada sofrem de vieses conhecidos: (i) **viés de protesto** — respondentes que se recusam a "precificar" a natureza por razões morais; (ii) **viés hipotético** — a diferença entre o que as pessoas *dizem* que pagariam e o que *de fato* pagariam (conectando com o Capítulo 8, economia comportamental); (iii) **insensibilidade ao escopo** — a DAP não varia proporcionalmente com a escala do bem avaliado (proteger 1.000 vs. 100.000 hectares). Apesar dessas limitações, a valoração contingente foi aceita como evidência em tribunais americanos (caso Exxon Valdez, 1989) e permanece o único método capaz de capturar valores de não-uso.

---

## 24.6 Recursos Naturais e Sustentabilidade {#246}

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
