# Capítulo 9d — Sinais, Contratos e Credibilidade: Jogos Dinâmicos com Informação Incompleta

## Introdução

No módulo anterior (9c), os jogadores faziam escolhas simultâneas sem observar as ações dos demais. Quando ações são **sequenciais** e a informação é **incompleta**, surge uma nova possibilidade: jogadores informados podem usar suas ações para **sinalizar** informação privada, e jogadores desinformados podem **atualizar crenças** via regra de Bayes.

O conceito de equilíbrio é o **Equilíbrio Bayesiano Perfeito** (PBE), que combina otimalidade sequencial (como no EPS) com consistência bayesiana das crenças (como no BNE). As aplicações centrais são **sinalização** (Spence, 1973), **moral hazard** e **seleção adversa** — os problemas clássicos de informação assimétrica.

Este módulo completa a taxonomia de Gibbons (1992, Cap. 4) e faz ponte com o Capítulo 19 (Limões, Sinais e Contratos).

---

## 9d.1 Equilíbrio Bayesiano Perfeito (PBE)

!!! definition "Equilíbrio Bayesiano Perfeito"
    Um PBE consiste em:

    1. **Estratégias** \(\sigma^*\) para cada jogador em cada conjunto de informação.
    2. **Crenças** \(\mu\) (distribuição sobre os nós em cada conjunto de informação).

    satisfazendo:

    - **Otimalidade sequencial:** Dado \(\mu\), cada jogador maximiza seu payoff esperado em cada conjunto de informação.
    - **Consistência bayesiana:** Onde possível, \(\mu\) é derivada das estratégias de equilíbrio \(\sigma^*\) pela regra de Bayes.

O PBE refina o BNE ao exigir que as crenças sejam consistentes com as estratégias *em cada ponto do jogo*, não apenas no início. Isso elimina equilíbrios sustentados por crenças arbitrárias em conjuntos de informação fora do caminho de equilíbrio.

---

## 9d.2 Sinalização: O Modelo de Spence

Os jogos de sinalização, formalizados por Spence (1973), são jogos sequenciais com informação incompleta nos quais a parte informada (o "remetente") age primeiro, escolhendo um sinal observável.

!!! definition "Estrutura de um jogo de sinalização"
    1. A natureza sorteia o tipo \(\theta \in \Theta\) do remetente.
    2. O remetente observa \(\theta\) e escolhe um sinal \(m \in M\).
    3. O receptor observa \(m\) (mas não \(\theta\)), atualiza crenças via Bayes e escolhe \(a \in A\).
    4. Payoffs: \(u_R(m, a, \theta)\) e \(u_S(m, a, \theta)\).

### Tipos de equilíbrio

- **Separador**: tipos diferentes escolhem sinais diferentes → o sinal revela perfeitamente o tipo.
- **Agregador** (*pooling*): todos os tipos escolhem o mesmo sinal → o receptor não aprende nada.
- **Semi-separador**: alguns tipos randomizam, permitindo revelação parcial.

### Modelo de Spence (sinalização educacional)

Trabalhadores têm habilidade \(\theta_H\) (alta) ou \(\theta_L\) (baixa). A educação \(e\) é custosa, com custo menor para trabalhadores hábeis:

\[
c(e, \theta_H) < c(e, \theta_L) \quad \text{para todo } e > 0
\]

Essa condição de **single-crossing** garante que, em equilíbrio separador, trabalhadores de alta habilidade investem em educação suficiente para se diferenciar.

!!! idea "Intuição Econômica: Diploma como sinal vs capital humano"
    **Em uma frase:** No modelo de Spence, a educação tem valor de sinalização *mesmo que não aumente a produtividade*.

    **Pense assim:** Uma empresa não sabe se o candidato é talentoso ou não. O candidato talentoso acha mais fácil (menos custoso) obter um MBA. Então ele faz o MBA não porque aprende algo novo, mas para *provar* que é talentoso. A educação funciona como um filtro que separa tipos.

    **O teste da redundância:** Se todo mundo fosse obrigado a ter MBA, o sinal perderia valor — porque deixaria de separar. Isso é exatamente o que ocorre quando a inflação de diplomas torna certificações ubíquas.

    **Spence vs. Becker:** Na teoria do capital humano (Becker, 1964), a educação aumenta a produtividade diretamente. Na teoria de sinalização (Spence, 1973), a educação não precisa aumentar a produtividade — basta que seja diferencialmente custosa. Na prática, ambos os canais coexistem.

### Equilíbrio separador: derivação

Com \(\theta_H = 2\), \(\theta_L = 1\), \(c(e, \theta) = e/\theta\), e firmas competitivas que pagam salário igual à produtividade esperada:

No equilíbrio separador, o tipo L escolhe \(e_L = 0\) e o tipo H escolhe \(e_H = e^*\), onde \(e^*\) deve satisfazer:

- **Tipo H não desvia para \(e = 0\):** \(2 - e^*/2 \geq 1\), logo \(e^* \leq 2\).
- **Tipo L não desvia para \(e = e^*\):** \(1 \geq 2 - e^*\), logo \(e^* \geq 1\).

O equilíbrio separador menos custoso (preferred by the informed player) é \(e^* = 1\).

!!! tip "Sinalização vs. Capital Humano"
    No modelo de Spence, a educação tem valor de sinalização **mesmo que não aumente a produtividade**. Isso contrasta com a teoria do capital humano de Becker. Na realidade, a educação provavelmente combina ambos os papéis.

---

## 9d.3 Cheap Talk e Comunicação Estratégica

Quando o sinal é sem custo (*cheap talk*), a sinalização é mais difícil. Crawford e Sobel (1982) mostraram que a quantidade de informação transmitida em equilíbrio depende do **alinhamento de interesses** entre remetente e receptor.

- Se os interesses são perfeitamente alinhados: revelação completa é possível.
- Se os interesses divergem: a comunicação é parcial — o remetente envia "intervalos" de informação (*partition equilibrium*).

**Aplicação:** Comunicação entre o Banco Central e o mercado (*forward guidance*). O BCB tem incentivo para comunicar claramente suas intenções de política monetária, mas o grau de credibilidade depende do alinhamento percebido entre os objetivos do BCB e do mercado.

---

## 9d.4 Moral Hazard (Risco Moral)

!!! definition "Moral Hazard"
    Situação em que uma parte (o **agente**) toma uma ação não observável que afeta o payoff de outra parte (o **principal**). O principal não pode monitorar diretamente o esforço do agente.

O modelo básico de principal-agente:

- O principal oferece um contrato \(w(y)\) (pagamento condicionado ao resultado \(y\)).
- O agente escolhe esforço \(e\) (não observável). Esforço é custoso: \(c(e)\).
- O resultado \(y\) depende de \(e\) e de choque aleatório \(\varepsilon\): \(y = f(e, \varepsilon)\).
- O principal quer maximizar \(E[y - w(y)]\); o agente quer maximizar \(E[w(y)] - c(e)\).

**Trade-off central:** Para incentivar esforço, o contrato deve vincular pagamento ao resultado. Mas isso expõe o agente (avesso ao risco) a risco — gerando custo de seguro. O contrato ótimo equilibra incentivos e seguro.

!!! idea "Intuição Econômica: Por que o seguro de saúde é caro"
    **Em uma frase:** Quando alguém não arca com as consequências de suas ações, tende a agir de forma mais arriscada.

    **Pense assim:** Uma pessoa com seguro de saúde completo pode cuidar menos da saúde (alimentação, exercício, prevenção) do que alguém sem seguro. O seguro *causa* comportamento mais arriscado — não apenas o cobre.

    **No mundo corporativo:** Um CEO com salário fixo (sem bônus vinculado ao desempenho) tem menos incentivo para se esforçar. Contratos com stock options e bônus por performance são mecanismos para mitigar o moral hazard.

    **Cross-reference:** O Capítulo 19 aprofunda o desenho de contratos ótimos e mecanismos de screening.

---

## 9d.5 Seleção Adversa

!!! definition "Seleção Adversa"
    Situação em que uma parte tem informação privada *antes* de firmar um contrato, e essa informação afeta a qualidade da transação. A parte desinformada atrai desproporcionalmente os tipos "ruins" — o mercado dos limões (Akerlof, 1970).

No mercado de seguros: pessoas de alto risco são mais propensas a comprar seguro (sabem que precisam). Isso eleva o prêmio, afastando pessoas de baixo risco, potencialmente destruindo o mercado.

**Mecanismos de mitigação:**

| Mecanismo | Exemplo | Quem age |
|:----------|:--------|:---------|
| **Sinalização** | Garantia do vendedor (carro usado) | Parte informada |
| **Screening** | Menu de contratos (seguro com franquias) | Parte desinformada |
| **Certificação** | Rating de crédito (Serasa, S&P) | Terceiro |
| **Regulação** | Seguro obrigatório (DPVAT) | Estado |

---

## Box Brasil: Credibilidade do Banco Central

!!! example "Box Brasil — Forward guidance do BCB: cheap talk ou sinalização crível?"
    O **Banco Central do Brasil** comunica suas intenções de política monetária por meio de comunicados, atas do Copom e o Relatório de Inflação. Essa comunicação pode ser analisada como um jogo de sinalização:

    **Estrutura do jogo**

    - O BCB (remetente) tem informação privada sobre o estado da economia e suas preferências.
    - O mercado (receptor) observa o comunicado e forma expectativas sobre a taxa Selic futura.
    - A ação do mercado (expectativas de inflação, curva de juros) afeta a eficácia da política monetária.

    **Quando a comunicação é eficaz?**

    No framework de Crawford-Sobel, a eficácia depende do alinhamento de interesses:

    - Se o mercado acredita que o BCB tem viés inflacionário (interesses desalinhados), a comunicação é parcialmente descontada → equilibrium com partição grosseira.
    - Se o BCB tem credibilidade (autonomia institucional, meta de inflação bem definida), a comunicação é quase revelação completa.

    **Evidência recente**: A autonomia formal do BCB (LC 179/2021) aumentou a credibilidade — evidenciada pela redução da volatilidade da curva de juros em torno dos comunicados do Copom.

    **Fonte**: BCB, Relatório de Inflação; BACEN, Comunicados do COPOM.

---

## Box Brasil: Telecom e Regulação sob Informação Assimétrica

!!! example "Box Brasil — Regulação de telecom: quando a Anatel não sabe os custos"
    A regulação de telecomunicações no Brasil enfrenta um problema clássico de informação assimétrica: a **Anatel** precisa fixar tarifas, mas não observa os custos verdadeiros das operadoras (Vivo, Claro, TIM).

    **O dilema do regulador (moral hazard)**

    Se a Anatel fixa a tarifa com base no custo reportado pela operadora, esta tem incentivo para inflar os custos (*cost padding*). Se fixa com base em um benchmark (*price cap*), a operadora tem incentivo para reduzir custos e embolsar a diferença.

    **Mecanismos regulatórios brasileiros**

    | Mecanismo | Período | Lógica teórica |
    |:----------|:--------|:---------------|
    | Rate-of-return | até 2005 | Sem incentivo a eficiência (moral hazard) |
    | Price cap (IST-IGPM) | 2005–2019 | Incentivo a eficiência; risco de subinvestimento |
    | Revenue cap | 2019– | Equilíbrio entre incentivos e investimento |

    A transição de rate-of-return para price cap é exatamente a resposta teórica ao problema de moral hazard: ao desvincular a tarifa do custo reportado, o regulador cria incentivos para a firma se tornar mais eficiente.

    **Fonte**: Anatel, Planos Gerais de Outorgas; OECD, Telecom Regulatory Reviews — Brazil.

---

## R Interativo: Sinalização e Separação de Tipos

??? code "R Interativo — Modelo de Spence: custo da sinalização e equilíbrio separador"
    Este box permite explorar o modelo de Spence variando os parâmetros de produtividade e custo da educação. Veja como o equilíbrio separador muda quando a diferença de custos entre tipos diminui.

    <figure markdown="span">
      <iframe src="../graficos/cap09/webr-spence.html" width="100%" height="720" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
      <figcaption><strong>R Interativo 9d.1</strong> — Modelo de Spence: equilíbrio separador. Altere as produtividades e custos para ver o nível de educação mínimo que separa os tipos.</figcaption>
    </figure>

---

## R Interativo: Seleção Adversa no Mercado de Seguros

??? code "R Interativo — Seleção adversa: simulação de mercado de seguros (Adams, 2025, Cap. 13)"
    Este box simula um mercado de seguros de saúde com tipos heterogêneos (risco alto/baixo). Veja como a seleção adversa pode levar ao colapso do mercado quando o prêmio é calculado pela média.

    <figure markdown="span">
      <iframe src="../graficos/cap09/webr-insurance.html" width="100%" height="720" style="border:1px solid #ddd; border-radius:6px;" loading="lazy"></iframe>
      <figcaption><strong>R Interativo 9d.2</strong> — Seleção adversa no mercado de seguros. Varie a proporção de tipos de alto risco para ver quando o mercado colapsa. Baseado em Adams (2025, Cap. 13).</figcaption>
    </figure>

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 9d.1 — Equilíbrio separador de Spence"
    **Enunciado:** Trabalhadores têm produtividade \(\theta_H = 2\) (prob. 0,5) ou \(\theta_L = 1\) (prob. 0,5). O custo da educação é \(c(e, \theta) = e/\theta\). Firmas pagam salário = produtividade esperada condicionada em \(e\). Encontre o equilíbrio separador com menor custo.

    **Resolução:**

    No equilíbrio separador: tipo L escolhe \(e_L = 0\) (salário = 1); tipo H escolhe \(e_H = e^*\) (salário = 2).

    **Restrição IC do tipo L (não imitir H):** \(1 - 0 \geq 2 - e^*/1 \implies e^* \geq 1\)

    **Restrição IC do tipo H (não imitir L):** \(2 - e^*/2 \geq 1 \implies e^* \leq 2\)

    **Equilíbrio separador menos custoso:** \(e^* = 1\).

    Payoffs: tipo H obtém \(2 - 1/2 = 1{,}5\); tipo L obtém 1.

    **Eficiência:** Se a informação fosse simétrica, cada tipo receberia sua produtividade sem custo de sinalização. O custo total da sinalização é \(0{,}5 \times (1/2) = 0{,}25\) — puro desperdício social, pois a educação não aumenta a produtividade neste modelo.

??? example "Exercício Resolvido 9d.2 — Contrato ótimo com moral hazard"
    **Enunciado:** Um principal contrata um agente. O agente pode exercer esforço alto (\(e_H\), custo 2) ou baixo (\(e_L\), custo 0). Com esforço alto, o resultado é bom (100) com prob. 0,8 e ruim (0) com prob. 0,2. Com esforço baixo, é bom com prob. 0,3 e ruim com prob. 0,7. O agente é neutro ao risco e tem utilidade de reserva 0.

    (a) Qual contrato implementa esforço alto?

    **Resolução:**

    Contrato: \(w_B\) se resultado bom, \(w_R\) se resultado ruim.

    **Restrição de incentivo (IC):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0{,}3 w_B + 0{,}7 w_R\)

    \(\implies 0{,}5 w_B - 0{,}5 w_R \geq 2 \implies w_B - w_R \geq 4\)

    **Restrição de participação (IR):** \(0{,}8 w_B + 0{,}2 w_R - 2 \geq 0\)

    Minimizando o custo para o principal: \(w_R = 0\), \(w_B = 4/(0{,}5) = 4\)... Verificando: \(0{,}8 \times 4 + 0{,}2 \times 0 - 2 = 1{,}2 \geq 0\). ✓

    Mas podemos fazer melhor: com \(w_R = 0\), IC dá \(w_B \geq 4\). IR com \(w_B = 4\): \(3{,}2 - 2 = 1{,}2 > 0\) — renda extra para o agente.

    O contrato ótimo iguala IR: \(0{,}8 w_B + 0{,}2 w_R - 2 = 0\) e IC: \(w_B - w_R = 4\).

    Sistema: \(w_B = w_R + 4\) e \(0{,}8(w_R + 4) + 0{,}2 w_R = 2 \implies w_R = -1{,}2\), \(w_B = 2{,}8\).

    Com \(w_R < 0\) (multa), o principal implementa esforço alto ao menor custo. Se multas não são possíveis (\(w_R \geq 0\)), o custo sobe — limitação de responsabilidade encarece os incentivos.

---

## Exercícios

**Exercício 9d.1.** No modelo de Spence com \(\theta_H = 3\) e \(\theta_L = 1\), e custo \(c(e, \theta) = e^2/(2\theta)\), encontre o equilíbrio separador de menor custo. Compare o custo social da sinalização com o caso \(\theta_H = 2\).

---

**Exercício 9d.2.** (Cheap talk) Um vendedor sabe que o carro vale 0 (limão) ou 10 (bom), cada com prob. 0,5. O vendedor pode dizer "bom" ou "limão". O comprador decide se compra por preço fixo 6. Existe equilíbrio em que o comprador acredita no vendedor? Por quê?

---

**Exercício 9d.3.** (Seleção adversa) Num mercado de seguros, 60% dos agentes são de baixo risco (custo esperado 1.000) e 40% de alto risco (custo esperado 5.000). Se o seguro cobra um prêmio atuarialmente justo para a média, qual tipo compra? Que prêmio equilibra o mercado? Existe equilíbrio?

---

**Exercício 9d.4.** (Moral hazard) Discuta como as seguintes instituições brasileiras mitigam problemas de moral hazard: (a) bônus por desempenho de professores (Ceará); (b) DPVAT com franquia; (c) stock options de executivos em empresas listadas na B3.

---

## Apêndice: A Pesquisa em Ação

??? abstract "Spence, Michael (1973). [Job Market Signaling](https://doi.org/10.2307/1882010). *Quarterly Journal of Economics*, 87(3), 355–374."
    **Contribuição:** Spence formalizou a ideia de que a educação pode funcionar como sinal de habilidade, mesmo sem aumentar a produtividade. O modelo introduziu os conceitos de equilíbrio separador, pooling e a condição de single-crossing.

    **Impacto:** O artigo fundamentou a teoria de sinalização, aplicada hoje a finanças (dividendos como sinal de qualidade), marketing (preço como sinal de qualidade) e regulação (certificações como sinal de competência).

??? abstract "Akerlof, George A. (1970). [The Market for 'Lemons'](https://doi.org/10.2307/1879431). *Quarterly Journal of Economics*, 84(3), 488–500."
    **Contribuição:** Akerlof mostrou que informação assimétrica sobre qualidade pode levar ao colapso de mercados — o problema dos "limões". Se vendedores sabem a qualidade e compradores não, o preço reflete a qualidade *média*, afastando vendedores de carros bons.

    **Relevância para o Brasil:** Mercados de carros usados, crédito (spread bancário elevado reflete seleção adversa) e planos de saúde (cobertura obrigatória como resposta ao problema de seleção). Cross-reference com Capítulo 19.

??? abstract "Adams, Brian W. (2025). *Game Theory for Applied Econometricians*. Caps. 12–13."
    **Escopo:** Parte IV cobre moral hazard (Cap. 12: corporações baleeiras como principal-agente) e seleção adversa (Cap. 13: seguros de saúde). Ambos com datasets e scripts R.

    **Relevância:** Os R Boxes deste módulo são inspirados nos scripts de Adams, demonstrando como estimar empiricamente o efeito de informação assimétrica em dados reais.

---

## Referências do Capítulo

- Adams, Brian W. 2025. [*Game Theory for Applied Econometricians*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press. Caps. 12–13.
- Akerlof, George A. 1970. "The Market for 'Lemons': Quality Uncertainty and the Market Mechanism." *Quarterly Journal of Economics* 84 (3): 488–500. [DOI](https://doi.org/10.2307/1879431)
- Becker, Gary S. 1964. [*Human Capital*](https://books.google.com/books?id=9t69iICmrZ0C). New York: Columbia University Press.
- Cho, In-Koo, e David M. Kreps. 1987. "Signaling Games and Stable Equilibria." *Quarterly Journal of Economics* 102 (2): 179–221. [DOI](https://doi.org/10.2307/1885060)
- Crawford, Vincent P., e Joel Sobel. 1982. "Strategic Information Transmission." *Econometrica* 50 (6): 1431–1451. [DOI](https://doi.org/10.2307/1913390)
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press. Cap. 4.
- Holmström, Bengt. 1979. "Moral Hazard and Observability." *Bell Journal of Economics* 10 (1): 74–91.
- Rothschild, Michael, e Joseph Stiglitz. 1976. "Equilibrium in Competitive Insurance Markets." *Quarterly Journal of Economics* 90 (4): 629–649. [DOI](https://doi.org/10.2307/1885326)
- Spence, Michael. 1973. "Job Market Signaling." *Quarterly Journal of Economics* 87 (3): 355–374. [DOI](https://doi.org/10.2307/1882010)
