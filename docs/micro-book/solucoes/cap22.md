---
title: "Soluções — Capítulo 22"
---

# Soluções dos Exercícios — Capítulo 22

[← Voltar ao Capítulo 22](../cap22/exercicios.md)

---

## ✏️ Exercício 22.1 {#ex-22-1}

**Experimento de valor induzido: oferta, demanda e eficiência de mercado.**

Compradores: \(v_B = \{20, 16, 12, 8, 4\}\). Vendedores: \(c_S = \{2, 6, 10, 14, 18\}\).

---

**(a) Equilíbrio competitivo**

Ordenando por disposição a pagar (decrescente) e por custo (crescente):

| Unidade | Comprador (valor) | Vendedor (custo) |
|:--------|:-----------------|:-----------------|
| 1ª | 20 | 2 |
| 2ª | 16 | 6 |
| 3ª | 12 | 10 |
| 4ª | 8 | 14 |
| 5ª | 4 | 18 |

A 3ª unidade gera excedente positivo: \(12 - 10 = 2 > 0\). A 4ª unidade geraria excedente negativo: \(8 - 14 = -6 < 0\). Portanto, \(q^* = 3\) unidades são transacionadas.

O preço de equilíbrio situa-se no intervalo onde a 3ª transação ocorre e a 4ª não: \(p^* \in [10, 12]\). O preço de equilíbrio é \(p^* = 11\) (ponto médio).

---

**(b) Excedente total no equilíbrio**

\[
EC = (20 - 11) + (16 - 11) + (12 - 11) = 9 + 5 + 1 = 15
\]

\[
EP = (11 - 2) + (11 - 6) + (11 - 10) = 9 + 5 + 1 = 15
\]

\[
ET = EC + EP = 30
\]

Alternativamente: \(ET = (20-2) + (16-6) + (12-10) = 18 + 10 + 2 = 30\).

---

**(c) Eficiência com \(p = 13\)**

A \(p = 13\): compradores que compram são aqueles com \(v \geq 13\), ou seja, \(v = 20\) e \(v = 16\). Vendedores que vendem são aqueles com \(c \leq 13\), ou seja, \(c = 2\), \(c = 6\) e \(c = 10\). Porém, como \(q = \min(2, 3) = 2\) (só 2 transações são possíveis), o excedente realizado é:

\[
ET_{\text{real}} = (20 - 2) + (16 - 6) = 18 + 10 = 28
\]

Eficiência: \(\frac{28}{30} = 93{,}3\%\).

A perda de eficiência ocorre porque o preço \(p = 13\) exclui a 3ª transação (comprador com \(v = 12 < 13\)), que geraria excedente de 2.

---

**(d) Convergência nas rodadas**

Smith (1962) observou que, nas primeiras rodadas, os preços eram dispersos e distantes do equilíbrio. Ao longo de 3–5 rodadas, os preços convergiram para a faixa de equilíbrio (\([10, 12]\)) e a eficiência de mercado atingiu 95–100%. Esse resultado demonstra que o mecanismo de leilão de dupla é notavelmente eficaz em coordenar as decisões de agentes com informação limitada — cada participante conhece apenas seu próprio valor/custo.

---

## ✏️ Exercício 22.2 {#ex-22-2}

**Jogo do ultimato com aversão à desigualdade.**

Propositor tem R\$ 100. Utilidade do respondente: \(u_R(x) = x - \alpha \cdot \max\{50 - x, 0\}\).

---

**(a) Valor de \(\alpha\) que torna o respondente indiferente com \(x = 20\)**

Para \(x = 20 < 50\):

\[
u_R(20) = 20 - \alpha(50 - 20) = 20 - 30\alpha
\]

Indiferente entre aceitar (\(u = 20 - 30\alpha\)) e rejeitar (\(u = 0\)):

\[
20 - 30\alpha = 0 \implies \alpha = \frac{20}{30} = \frac{2}{3} \approx 0{,}667
\]

---

**(b) Menor oferta aceita com \(\alpha = 2\)**

O respondente aceita se \(u_R(x) \geq 0\). Para \(x < 50\):

\[
x - 2(50 - x) \geq 0 \implies x - 100 + 2x \geq 0 \implies 3x \geq 100 \implies x \geq 33{,}33
\]

**A menor oferta aceita é R\$ 33,33** (ou R\$ 34 em valores inteiros).

---

**(c) Oferta do propositor racional**

O propositor sabe que ofertas abaixo de R\$ 33,33 serão rejeitadas. Seu payoff é \(100 - x\) se aceito, 0 se rejeitado. Para maximizar payoff, oferece o mínimo aceito: \(x^* = 33{,}33\), ficando com R\$ 66,67.

---

**(d) Comparação**

- **Modelo padrão** (\(\alpha = 0\)): propositor oferece ~R\$ 0; respondente aceita. Propositor fica com ~R\$ 100.
- **Modelo com aversão** (\(\alpha = 2\)): propositor oferece ~R\$ 33; propositor fica com ~R\$ 67.
- **Dados experimentais**: oferta modal de 40–50%, ofertas abaixo de 20% rejeitadas em ~50% dos casos.

O modelo com aversão à desigualdade (\(\alpha \approx 1{,}5\)–2) aproxima-se razoavelmente dos dados, capturando tanto as ofertas "generosas" dos propositores quanto as rejeições de ofertas baixas pelos respondentes.

---

## ✏️ Exercício 22.3 {#ex-22-3}

**Jogo de bens públicos com punição e repetição.**

\(N = 5\), \(w = 10\), \(\alpha = 2{,}5\). Payoff: \(\pi_i = (10 - g_i) + 0{,}5 \sum g_j\).

---

**(a) Equilíbrio de Nash**

\[
\pi_i = 10 - g_i + 0{,}5 g_i + 0{,}5 \sum_{j \neq i} g_j = 10 - 0{,}5 g_i + 0{,}5 \sum_{j \neq i} g_j
\]

\[
\frac{\partial \pi_i}{\partial g_i} = -0{,}5 < 0
\]

Como o payoff é decrescente em \(g_i\), a melhor resposta é \(g_i^* = 0\) para todo \(i\). **Equilíbrio de Nash: contribuição zero.**

---

**(b) Ótimo social**

\[
\sum \pi_i = 5 \times 10 - \sum g_i + 5 \times 0{,}5 \sum g_j = 50 - \sum g_i + 2{,}5 \sum g_i = 50 + 1{,}5 \sum g_i
\]

Bem-estar crescente em \(\sum g_i\), logo \(g_i^* = 10\) para todo \(i\). **Ótimo social: contribuição total.**

- Payoff no Nash: \(\pi_i = 10\). Total: 50.
- Payoff no ótimo: \(\pi_i = 0 + 0{,}5 \times 50 = 25\). Total: 125.

---

**(c) Punição em jogo de uma rodada**

A punição custa 1 ao punidor e inflige 3 ao punido. Em um jogo de uma rodada com agentes egoístas, punir é irracional: o punidor gasta R\$ 1 e não obtém benefício futuro (o jogo termina). Portanto, no equilíbrio de Nash, **ninguém pune** — e, antecipando isso, ninguém contribui.

Experimentalmente, porém, a punição é amplamente observada (Fehr e Gächter, 2000). Possíveis explicações: (i) **preferências sociais** — punir quem "trapaceia" gera satisfação intrínseca; (ii) **reciprocidade negativa** — vontade de retribuir comportamento injusto; (iii) **normas sociais** — a punição sinaliza desaprovação e reforça a norma de cooperação.

---

**(d) Jogo repetido com trigger strategy**

No ótimo, \(g_i = 10\) e \(\pi_i = 25\). Desvio ótimo: \(g_i = 0\) enquanto todos os demais contribuem 10:

\[
\pi_i^{\text{desvio}} = 10 + 0{,}5 \times 40 = 10 + 20 = 30
\]

Após o desvio, todos revertem para Nash (\(g = 0\)): \(\pi_i^{\text{Nash}} = 10\).

Condição para cooperação (trigger strategy):

\[
\frac{25}{1 - \delta} \geq 30 + \frac{10\delta}{1 - \delta}
\]

\[
25 \geq 30(1 - \delta) + 10\delta = 30 - 30\delta + 10\delta = 30 - 20\delta
\]

\[
20\delta \geq 5 \implies \delta \geq \frac{1}{4} = 0{,}25
\]

**\(\delta_{\min} = 0{,}25\).** A cooperação é sustentável com fator de desconto relativamente baixo, porque o ganho de cooperação (25 vs. 10) é grande em relação ao ganho de desvio (30 vs. 25).

---

## ✏️ Exercício 22.4 {#ex-22-4}

**Viés de seleção e RCT.**

---

**(a) Viés de seleção**

Não. A diferença de R\$ 600 inclui o efeito do treinamento *mais* o viés de seleção: trabalhadores que escolhem participar do treinamento podem ser mais motivados, habilidosos ou conectados — e ganhariam mais *mesmo sem* o treinamento. Formalmente:

\[
\bar{Y}_{\text{particip.}} - \bar{Y}_{\text{não-particip.}} = \underbrace{\text{ATE}}_{\text{efeito causal}} + \underbrace{E[Y(0)|\text{Participa}] - E[Y(0)|\text{Não participa}]}_{\text{viés de seleção} > 0}
\]

---

**(b) Condições para o RCT identificar o ATE**

A randomização garante \(E[Y(0)|\text{Tratado}] = E[Y(0)|\text{Controle}]\), eliminando o viés de seleção. Condições: (i) randomização efetiva (sem autoeleção ao tratamento); (ii) sem atrito diferencial; (iii) sem efeitos de transbordamento (tratados não afetam controles).

---

**(c) Estimativa do TOT**

Taxa de adesão: \(1 - 0{,}20 = 0{,}80\).

\[
\text{TOT} = \frac{\text{ITT}}{\text{taxa de adesão}} = \frac{480}{0{,}80} = \text{R\$ 600}
\]

Interpretação: o efeito do treinamento sobre quem efetivamente participou é de R\$ 600 — mas essa estimativa assume que a não-adesão é aleatória (exclusion restriction).

---

**(d) ITT vs. TOT para política**

O ITT é preferível quando a política não pode forçar participação. Se o governo oferece o treinamento a todos os elegíveis, mas apenas 80% participam, o efeito *da política* (oferecer treinamento) é o ITT = R\$ 480, não o TOT = R\$ 600. Para calcular custo-benefício do programa, o ITT é a medida relevante: o custo é incorrido para todos os atribuídos ao tratamento, não apenas para os que aderem.

---

## ✏️ Exercício 22.5 {#ex-22-5}

**Card e Krueger (1994): diferenças-em-diferenças.**

---

**(a) Estimador DD**

\[
\hat{\tau}_{DD} = (21{,}03 - 20{,}44) - (21{,}17 - 23{,}33) = 0{,}59 - (-2{,}16) = +2{,}76
\]

---

**(b) Interpretação**

O emprego médio em restaurantes de fast food em NJ aumentou em 2,76 empregados *a mais* do que em PA. Como NJ implementou o aumento do salário mínimo e PA não, o estimador DD sugere que o aumento do salário mínimo *aumentou* o emprego — contrariando a previsão do modelo competitivo de mercado de trabalho.

---

**(c) Hipótese-chave**

**Tendências paralelas (*parallel trends*)**: na ausência do aumento do salário mínimo em NJ, o emprego em restaurantes fast food em NJ teria seguido a mesma tendência que em PA. Ou seja, a queda de emprego observada em PA (de 23,33 para 21,17) teria ocorrido igualmente em NJ.

---

**(d) Argumentos**

**A favor:** NJ e PA oriental são economicamente similares (região metropolitana de Filadélfia), compartilham o mesmo mercado de trabalho e enfrentam os mesmos choques macroeconômicos. Dados pré-tratamento mostram tendências paralelas de emprego nos anos anteriores.

**Contra:** Outros fatores podem ter diferenciado NJ de PA exatamente nesse período — por exemplo, crescimento econômico diferencial, mudanças regulatórias estaduais, ou composição setorial distinta. Além disso, o aumento do salário mínimo pode ter sido implementado justamente porque o mercado de trabalho em NJ estava aquecido (endogeneidade da política).

---

## ✏️ Exercício 22.6 {#ex-22-6}

**Regressão descontínua: programa social.**

---

**(a) Estimativa por RDD**

\[
\hat{\tau}_{RDD} = 92 - 87 = 5 \text{ pontos percentuais}
\]

O programa aumenta a frequência escolar em 5 pontos percentuais para famílias próximas ao limiar de elegibilidade.

---

**(b) Hipótese de identificação**

**Continuidade**: todas as variáveis que afetam a frequência escolar (escolaridade dos pais, localização, qualidade da escola, etc.) variam continuamente em torno do limiar de R\$ 600. A única descontinuidade em \(X = 600\) é o recebimento do benefício.

---

**(c) Comparabilidade local**

Famílias com renda de R\$ 590 e R\$ 610 são quase idênticas em todas as características observáveis e não observáveis — a diferença de R\$ 20 na renda é trivial e, em torno do limiar, a classificação como beneficiário ou não é "como se fosse aleatória" (erros de medida, timing da declaração). Famílias com R\$ 300 e R\$ 900, por outro lado, diferem sistematicamente em escolaridade, ocupação, localização e outras características que afetam a frequência escolar independentemente do programa.

---

**(d) Ameaça: manipulação**

Se famílias subdeclaram renda para ficar abaixo do limiar, a composição dos grupos muda: o grupo de beneficiários inclui famílias com renda "verdadeira" acima de R\$ 600, que podem ser sistematicamente diferentes. Isso viola a hipótese de continuidade. O pesquisador testa essa ameaça com o **teste de McCrary**: verificar se há descontinuidade na *densidade* da variável de atribuição em torno do limiar. Uma concentração anômala de observações logo abaixo de R\$ 600 sugere manipulação.

---

## ✏️ Exercício 22.7 {#ex-22-7}

**Variáveis instrumentais: distância e educação.**

---

**(a) Relevância**

Famílias mais próximas de universidades têm custos de transporte e moradia menores para que seus filhos frequentem a universidade. Estudos mostram que a distância reduz significativamente a probabilidade e a duração do ensino superior. A condição de relevância \(\text{Cov}(Z, X) \neq 0\) é testável e geralmente satisfeita.

---

**(b) Exclusão**

A condição de exclusão requer que a distância afete salários *apenas* via educação. Possíveis violações:

- Regiões próximas a universidades podem ter economias mais dinâmicas (mais oportunidades de emprego).
- A presença de universidades pode afetar a qualidade das escolas locais.
- Famílias que escolhem morar perto de universidades podem ser sistematicamente diferentes.

A exclusão é mais plausível se controlamos por características regionais e familiares. Não é testável diretamente.

---

**(c) Estimativa por IV**

\[
\hat{\beta}_{IV} = \frac{\text{Forma reduzida}}{\text{Primeiro estágio}} = \frac{-4\%}{-0{,}5} = 8\%
\]

**Cada ano adicional de educação aumenta o salário em 8%.**

---

**(d) Comparação com MQO**

O MQO tende a **sobrestimar** o retorno à educação por viés de variável omitida: habilidade inata afeta positivamente tanto educação quanto salários. Se pessoas mais habilidosas estudam mais *e* ganham mais (independentemente da educação), o MQO captura tanto o retorno da educação quanto o "prêmio de habilidade".

Se \(\hat{\beta}_{MQO} = 10\%\) e \(\hat{\beta}_{IV} = 8\%\), os 2 pontos percentuais de diferença refletem o viés ascendente por habilidade omitida. O IV identifica o retorno "limpo" da educação — pelo menos para o subgrupo de pessoas cuja decisão educacional é afetada pela distância (LATE — Local Average Treatment Effect).

---

## ✏️ Exercício 22.8 {#ex-22-8}

**Leilão de primeiro preço.**

---

**(a) Função de lance de equilíbrio**

No equilíbrio simétrico com \(N\) licitantes e valores \(v \sim U[0, 100]\), a estratégia ótima é:

\[
b(v) = v - \frac{v}{N} = \frac{N - 1}{N} v
\]

**Derivação resumida:** O licitante com valor \(v\) vence quando todos os \(N-1\) rivais têm valor menor. A probabilidade de vencer com lance \(b\) é \((b \cdot N/(N-1) / 100)^{N-1}\) (pois o rival marginal tem valor \(v' = b \cdot N/(N-1)\)). Maximizando o lucro esperado \((v - b) \cdot P(\text{vencer})\) em relação a \(b\), obtém-se \(b^*(v) = \frac{N-1}{N} v\).

---

**(b) Lance com \(v = 60\), \(N = 3\)**

\[
b(60) = \frac{3-1}{3} \times 60 = \frac{2}{3} \times 60 = 40
\]

---

**(c) Overbidding e aversão ao risco**

Os participantes dão lance \(b = 45 > 40\) (previsão com neutralidade ao risco). Isso é consistente com **aversão ao risco**: um agente avesso ao risco prefere aumentar a probabilidade de vencer (lance mais alto) em troca de reduzir o lucro condicional à vitória. O lance mais alto funciona como "seguro" contra a possibilidade de perder o leilão.

Formalmente, com utilidade côncava \(u(\pi)\), a condição de primeira ordem gera \(b^*(v) > \frac{N-1}{N}v\) — o agente avesso ao risco dá lances mais altos que o agente neutro.

---

**(d) Implicação para equivalência de receita**

O teorema de equivalência de receita prevê que, com agentes neutros ao risco, leilões de primeiro e segundo preço geram a mesma receita esperada. Com aversão ao risco, os lances no primeiro preço são mais altos, gerando **receita maior** no primeiro preço do que no segundo preço. A aversão ao risco *quebra* a equivalência de receita em favor do leilão de primeiro preço — um resultado confirmado experimentalmente.

---

## ✏️ Exercício 22.9 {#ex-22-9}

**Troca de rins e matching.**

Compatibilidade: O → todos; A → A, AB; B → B, AB; AB → AB.

---

**(a) Trocas diretas (ciclos de 2)**

Para uma troca direta entre pares \(X\) e \(Y\): o doador de \(X\) deve ser compatível com o receptor de \(Y\), e o doador de \(Y\) deve ser compatível com o receptor de \(X\).

- **Par A ↔ Par B**: Doador de A é tipo O → compatível com receptor de B (tipo A). Doador de B é tipo B → compatível com receptor de A (tipo B). **Troca possível.**
- **Par A ↔ Par C**: Doador de A (O) → compatível com receptor de C (O). Doador de C (A) → não compatível com receptor de A (B). **Troca impossível.**
- **Par A ↔ Par D**: Doador de A (O) → compatível com receptor de D (A). Doador de D (AB) → não compatível com receptor de A (B). **Troca impossível.**
- **Par B ↔ Par C**: Doador de B (B) → não compatível com receptor de C (O). **Troca impossível.**
- **Par B ↔ Par D**: Doador de B (B) → não compatível com receptor de D (A). **Troca impossível.**
- **Par C ↔ Par D**: Doador de C (A) → compatível com receptor de D (A). Doador de D (AB) → não compatível com receptor de C (O). **Troca impossível.**

**Apenas a troca A ↔ B é possível** (2 transplantes).

---

**(b) Alocação máxima (incluindo ciclos maiores)**

Com a troca A ↔ B, os pares C e D permanecem sem transplante. Verificando ciclos de 3 ou 4 que incluam C e D: nenhum ciclo viável existe, pois o receptor de C (tipo O) só pode receber de doador tipo O, e nenhum par restante tem doador tipo O. **Máximo: 2 transplantes** (A ↔ B).

---

**(c) Doador altruísta tipo O**

Um doador altruísta tipo O pode doar diretamente ao receptor de C (tipo O). Agora o doador de C (tipo A) fica "liberado" para iniciar uma cadeia:

- Doador de C (A) → Receptor de D (A). Compatível!
- Doador de D (AB) → não pode doar a nenhum receptor restante (apenas AB receptores aceitariam, e não há).

**Cadeia: Altruísta → Receptor de C; Doador de C → Receptor de D. Total: 2 transplantes adicionais.**

Com a troca A ↔ B, o total sobe para **4 transplantes** (todos os pares atendidos).

---

**(d) Eficiência de Pareto e proibição do mercado**

A alocação com 4 transplantes é Pareto-eficiente: não é possível melhorar a situação de nenhum par sem piorar a de outro (todos já recebem transplante). A alocação sem matching (0 transplantes) é Pareto-ineficiente.

A proibição do mecanismo de preços (venda de órgãos) baseia-se em argumentos éticos: (i) **coerção** — pessoas em pobreza extrema poderiam ser "forçadas" pela necessidade financeira a vender órgãos; (ii) **equidade** — um mercado de órgãos beneficiaria desproporcionalmente os ricos; (iii) **repugnância moral** — a sociedade considera a mercantilização do corpo humano moralmente inaceitável. O mecanismo de troca de Roth resolve a falha de alocação *sem* usar preços — é um exemplo de "mercado sem dinheiro" que alcança eficiência por meio de design institucional.

---

## ✏️ Exercício 22.10 — DiD com dados brasileiros: Mais Médicos {#ex-22-10b}

**Diferenças-em-diferenças aplicada ao Programa Mais Médicos.**

Dados: Taxa de ICSAP por 10.000 habitantes.

| | Tratamento | Controle |
|:--|:----------|:---------|
| 2012 | 182 | 145 |
| 2015 | 158 | 139 |

---

**(a) Estimador DiD**

O estimador de diferenças-em-diferenças é:

\[
\hat{\delta}_{DD} = (\bar{Y}_{T,\text{depois}} - \bar{Y}_{T,\text{antes}}) - (\bar{Y}_{C,\text{depois}} - \bar{Y}_{C,\text{antes}})
\]

\[
\hat{\delta}_{DD} = (158 - 182) - (139 - 145) = (-24) - (-6) = -18
\]

**Interpretação:** O Programa Mais Médicos está associado a uma redução de **18 internações por condições sensíveis à atenção primária por 10.000 habitantes**, além da tendência já observada nos municípios de controle. As ICSAP caíram em ambos os grupos (tendência nacional de melhoria), mas caíram **18 a mais** nos municípios atendidos pelo programa.

---

**(b) Plausibilidade das tendências paralelas**

A hipótese de tendências paralelas exige que, *na ausência* do Mais Médicos, os municípios tratados teriam seguido a mesma trajetória de ICSAP que os de controle. Isso é questionável porque municípios tratados foram selecionados por maior carência — e municípios carentes podem ter trajetórias diferentes.

Para tornar a hipótese mais defensável, o pesquisador deveria:

- Controlar por **covariáveis** (PIB per capita, cobertura da ESF, taxa de urbanização, distância a capitais);
- Verificar **tendências pré-tratamento** (2008–2012): se as trajetórias eram paralelas antes de 2013, é mais plausível que continuariam paralelas sem o programa;
- Usar **matching** (PSM ou CEM) para construir um grupo de controle mais comparável.

---

**(c) Seleção por necessidade**

Sim, a priorização de municípios carentes viola a exogeneidade do tratamento — municípios tratados são sistematicamente diferentes dos controle. Mas isso **não** invalida o DiD! O DiD permite diferenças de **nível** entre os grupos (os tratados tinham ICSAP mais alta). O que o DiD exige é que as **tendências** sejam paralelas.

Em contraste, uma simples comparação cross-section em 2015 (\(158 - 139 = 19\)) atribuiria a diferença ao programa, mas essa diferença já existia antes (\(182 - 145 = 37\)). A diferença cross-section diminuiu, não aumentou — o DiD captura corretamente essa convergência.

---

**(d) Análise custo-benefício**

Economia anual:

\[
\text{Internações evitadas} = 18 \times \frac{50.000}{10.000} = 90 \text{ internações}
\]

\[
\text{Economia} = 90 \times \text{R\$}\;3.200 = \text{R\$}\;288.000
\]

Custo anual do programa:

\[
\text{Custo} = 3 \times \text{R\$}\;120.000 = \text{R\$}\;360.000
\]

Razão benefício-custo: \(288.000/360.000 = 0{,}80\). Considerando **apenas** internações evitadas, o programa não se paga. Mas essa conta subestima os benefícios: o programa também reduz mortalidade, melhora indicadores de saúde materna e infantil, reduz deslocamentos para outros municípios e gera externalidades positivas (formação de equipes locais). Incluindo esses benefícios, estudos como Carrillo e Feres (2019) encontram razão benefício-custo superior a 1.

---

**(e) Diferenças de nível**

A diferença de nível *antes* do programa (182 vs 145) **não** invalida o DiD. O estimador DD não requer que os grupos tenham o mesmo nível — apenas que teriam a mesma **variação** (tendência paralela) na ausência do tratamento. Municípios com mais internações podem estar convergindo naturalmente (por investimentos do SUS, urbanização, etc.), o que violaria as tendências paralelas. Mas a diferença de nível em si não é um problema — é a razão de ser do DiD, que "limpa" esse efeito fixo de grupo.

---

## ✏️ Exercício 22.11 {#ex-22-11}

**Replicação, significância e pré-registro.**

---

**(a) Estatística \(t\) e p-valor**

\[
t = \frac{\hat{\tau}}{SE} = \frac{3{,}2}{1{,}5} \approx 2{,}13
\]

Para um teste bilateral com distribuição normal (amostra grande): \(p \approx 0{,}033\).

Como \(p < 0{,}05\), o resultado é **significativo a 5%**.

---

**(b) Múltiplas hipóteses e falso positivo**

Se o pesquisador testou 20 hipóteses e reportou apenas a significativa, a probabilidade de pelo menos um falso positivo é:

\[
P(\text{pelo menos 1 falso positivo}) = 1 - (1 - 0{,}05)^{20} = 1 - 0{,}95^{20} \approx 1 - 0{,}358 = 0{,}642
\]

Há 64,2% de probabilidade de que o resultado "significativo" seja um falso positivo!

Com **correção de Bonferroni**, o nível de significância ajustado é \(\alpha_{\text{adj}} = 0{,}05/20 = 0{,}0025\). O p-valor de 0,033 **não** é significativo após correção.

---

**(c) Comparação com replicação**

Estudo original: \(\hat{\tau} = 3{,}2\), \(SE = 1{,}5\), intervalo de 95%: \([0{,}26; \ 6{,}14]\).

Replicação: \(\hat{\tau} = 1{,}8\), \(SE = 0{,}7\), intervalo de 95%: \([0{,}43; \ 3{,}17]\).

O efeito replicado (1,8) é 56% do original (3,2) — consistente com o padrão de Camerer et al. (2016), em que efeitos replicados são ~66% dos originais. Os intervalos de confiança se sobrepõem, então os resultados não são estatisticamente incompatíveis. A replicação sugere que o efeito é real, mas menor do que o estudo original indicava — provavelmente inflado pelo viés de publicação.

---

**(d) Pré-registro**

O **pré-registro** resolve a preocupação de (b) ao exigir que o pesquisador deposite publicamente, *antes de coletar os dados*: (i) a hipótese a ser testada; (ii) o modelo estatístico; (iii) o nível de significância; (iv) o número de testes. Isso impede:

- *P-hacking*: não se pode testar 20 hipóteses e reportar apenas a significativa, pois a hipótese principal foi pré-declarada.
- *HARKing*: não se pode apresentar resultados exploratórios como se fossem hipóteses a priori.
- Viés de publicação: registros públicos (como o AEA RCT Registry) permitem verificar quantos estudos foram planejados mas não publicados (evidência de "gaveta de arquivo").
