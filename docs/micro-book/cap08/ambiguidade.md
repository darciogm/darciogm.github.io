# 8.3 A Urna Misteriosa: Ambiguidade e o Paradoxo de Ellsberg

A Teoria do Prospecto pressupõe que você *conhece* as probabilidades — só as processa de forma distorcida. Mas e quando você não faz *ideia* das probabilidades? Qual é a chance de uma pandemia? De um golpe de Estado? De a inteligência artificial substituir seu emprego? Nesses casos, não estamos diante de risco (probabilidades conhecidas) nem de ignorância total — estamos na terra da **ambiguidade**: sabemos que não sabemos, e isso nos assusta de um jeito que a teoria padrão não captura. Daniel Ellsberg mostrou isso de forma brilhante com duas urnas e umas bolinhas coloridas.

### 8.3.1 Risco, incerteza e ambiguidade

O Capítulo 7 tratou de decisões sob **risco** — situações em que as probabilidades dos estados do mundo são conhecidas. Knight (1921) distinguiu o risco da **incerteza** (*uncertainty*), em que as probabilidades são desconhecidas. Ellsberg (1961) identificou um fenômeno ainda mais específico: mesmo quando os agentes poderiam atribuir probabilidades subjetivas (como prescreve a UE de Savage), eles sistematicamente **evitam** situações em que as probabilidades são **ambíguas** — isto é, pouco informadas ou vagas. A [Tabela 8.4](#tabela-8-4) distingue esses três conceitos.

<a id="tabela-8-4"></a>

| Conceito | Probabilidades | Exemplo |
|---|---|---|
| **Risco** | Conhecidas e objetivas | Roleta: \(P(\text{vermelho}) = 18/37\) |
| **Incerteza knightiana** | Desconhecidas | Resultado de uma revolução política |
| **Ambiguidade** | Formalmente atribuíveis, mas vagas | Urna com composição desconhecida |

<div class="caption-obj" markdown>
**Tabela 8.4 — Risco, incerteza knightiana e ambiguidade.**
</div>

### 8.3.2 O Paradoxo de Ellsberg

Daniel Ellsberg — o mesmo que mais tarde ficaria famoso pelos *Pentagon Papers* — construiu um experimento mental engenhoso que demonstra a aversão à ambiguidade de forma irrefutável.

!!! example "Paradoxo de Ellsberg — Duas cores"
    Considere duas urnas, cada uma com 100 bolas:

    - **Urna A (conhecida):** 50 bolas vermelhas e 50 pretas.
    - **Urna B (ambígua):** 100 bolas, mas a proporção entre vermelhas e pretas é desconhecida.

    Você ganha R\$ 100 se uma bola da cor escolhida for sorteada.

    **Escolha 1:** Apostar em vermelho. A maioria prefere a **Urna A**.

    **Escolha 2:** Apostar em preto. A maioria *também* prefere a **Urna A**.

    Esse padrão viola a UE de Savage. Se o agente atribui probabilidade subjetiva \(P(\text{vermelho em B}) < 0{,}5\), deveria atribuir \(P(\text{preto em B}) > 0{,}5\) e preferir a Urna B na aposta em preto. A preferência simultânea pela Urna A em ambas as apostas revela uma aversão à **ambiguidade** — à falta de informação sobre as probabilidades — que vai além da aversão ao risco (Dhami 2016, p. 321–324).

<div class="graph-container" markdown>
  <iframe src="/micro-book/graficos/cap08/ellsberg-urnas.html" title="Figura 8.3 — Paradoxo de Ellsberg" class="graph-iframe" style="height:960px;overflow:hidden" scrolling="no"></iframe>
</div>

<div class="caption-obj" style="margin-top:2rem;" markdown>
**Figura 8.3 — Paradoxo de Ellsberg: duas urnas.** Visualize como a aversão à ambiguidade leva à preferência pela urna com probabilidades conhecidas.
</div>

### 8.3.3 Modelos de ambiguidade

O Paradoxo de Ellsberg estabelece o fenômeno empírico — a aversão à ambiguidade é real e robusta. Mas como formalizá-la? Que modelos matemáticos podem acomodar a preferência sistemática por probabilidades conhecidas sem abandonar completamente a estrutura da teoria da decisão? Diversas respostas foram propostas.

A aversão à ambiguidade motivou o desenvolvimento de vários modelos formais alternativos à UE de Savage:

- **Utilidade Esperada de Choquet (CEU):** aplica a RDU com capacidades não aditivas em vez de probabilidades, permitindo que as crenças do agente violem a aditividade (Dhami 2016, p. 324–326).
- **Maximin Expected Utility (MEU):** o agente considera um conjunto de distribuições de probabilidade possíveis e maximiza a utilidade esperada sob a distribuição mais pessimista (Gilboa e Schmeidler 1989).
- **Aversão à ambiguidade suave:** Klibanoff, Marinacci e Mukerji (2005) propõem um modelo em que o agente tem uma distribuição de segunda ordem sobre as probabilidades possíveis, avaliada por uma função côncava que captura a aversão à ambiguidade.

A conexão com a incerteza **knightiana** é direta. Knight (1921) distinguiu risco (probabilidades quantificáveis) de incerteza genuína (probabilidades não quantificáveis) precisamente porque reconheceu que os dois tipos de situações geram respostas comportamentais distintas. A sua intuição foi confirmada pelas evidências experimentais do paradoxo de Ellsberg e formalizou-se nos modelos de ambiguidade mencionados acima. Para a macroeconomia e as finanças, essa distinção é crucial: crises financeiras e recessões severas são frequentemente caracterizadas por um colapso da confiança nas próprias distribuições de probabilidade dos ativos — os agentes passam do estado de "risco" para o de "ambiguidade", e o comportamento muda qualitativamente. O aumento súbito dos spreads de crédito durante a crise financeira global de 2008-2009, ou durante a pandemia de Covid-19 em 2020, reflete parcialmente esse movimento: investidores não sabiam apenas *qual* cenário se materializaria, mas *quão confiáveis eram seus próprios modelos* para prever os possíveis cenários.

No Brasil, a instabilidade do marco regulatório e fiscal ao longo das últimas décadas cria um ambiente de ambiguidade persistente para investidores estrangeiros e domésticos. Quando as regras do jogo podem mudar de forma imprevisível — por via legislativa, por decisões judiciais ou por revisões de contratos —, a avaliação de risco usual (que pressupõe distribuições de probabilidade estacionárias) se torna inadequada. Os elevados spreads de crédito corporativo no Brasil, mesmo em períodos de inflação controlada, refletem em parte esse **prêmio de ambiguidade** que se sobrepõe ao prêmio de risco convencional.

!!! idea "Intuição Econômica"
    **Em uma frase:** Pessoas preferem riscos conhecidos a incertezas desconhecidas — mesmo quando as probabilidades objetivas são iguais.

    **Pense assim:** Você prefere apostar numa urna com 50 bolas vermelhas e 50 azuis (risco) ou numa urna com 100 bolas de proporção desconhecida (ambiguidade)? A maioria escolhe a primeira, mesmo que a melhor estimativa para a segunda também seja 50-50. A falta de informação sobre as probabilidades gera desconforto adicional.

    **Por que isso importa:** Em mercados financeiros, ativos com retornos difíceis de modelar carregam um **prêmio de ambiguidade** além do prêmio de risco. No Brasil, a imprevisibilidade da política fiscal e regulatória amplifica esse prêmio, contribuindo para os elevados spreads de crédito do mercado corporativo.
