---
title: "Soluções — Capítulo 8"
---

# Soluções dos Exercícios — Capítulo 8

[← Voltar ao Capítulo 8](../cap08/index.md)

---

## Exercício 8.1 {#ex-8-1}

**Solução.**

*Par (A, B) — domínio dos ganhos:*

Sob utilidade esperada com \(u\) côncava: \(u(500) > 0{,}5 u(1000) + 0{,}5 u(0)\) (aversão ao risco). O investidor prefere **A** (ganho certo).

Sob Teoria do Prospecto: a função valor é côncava para ganhos, reforçando a preferência por A. Além disso, o efeito certeza (sobreponderação de resultados certos) torna A ainda mais atrativa. Escolha: **A**.

*Par (C, D) — domínio das perdas:*

Sob utilidade esperada com \(u\) côncava: \(u(-500) > 0{,}5 u(-1000) + 0{,}5 u(0)\) em valor absoluto, mas como \(u\) é côncava, o agente preferiria C (perda certa). Porém, a Teoria do Prospecto prevê o contrário.

Sob Teoria do Prospecto: a função valor é **convexa** para perdas (busca por risco no domínio negativo). Logo, \(v(-500) < 0{,}5 v(-1000) + 0{,}5 v(0)\) em termos de utilidade do prospecto, e o agente prefere **D** (loteria com chance de evitar a perda). Esse é o **efeito reflexão**: aversão ao risco para ganhos, busca por risco para perdas.

**Interpretação econômica:** Esse padrão explica por que investidores seguram ações perdedoras (buscando risco) e vendem ações ganhadoras cedo (aversão ao risco) — o "efeito disposição" documentado por Shefrin e Statman (1985).


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-1)

---

## Exercício 8.2 {#ex-8-2}

**Solução.**

Para ganhos: \(v(x) = x^{0,88}\). Para perdas: \(v(x) = -2{,}25(-x)^{0,88}\).

\[
v(100) = 100^{0,88} = 57{,}54
\]

\[
v(-100) = -2{,}25 \times 100^{0,88} = -2{,}25 \times 57{,}54 = -129{,}47
\]

\[
v(200) = 200^{0,88} = 105{,}93
\]

\[
v(-200) = -2{,}25 \times 200^{0,88} = -2{,}25 \times 105{,}93 = -238{,}34
\]

Verificação: \(|v(-100)| = 129{,}47 > 57{,}54 = v(100)\). ✓

A dor de perder R\$ 100 (\(|{-129{,}47}|\)) é 2,25 vezes maior que o prazer de ganhar R\$ 100 (57,54). Além disso, \(v(200)/v(100) = 1{,}84 < 2\): a sensibilidade marginal é decrescente para ganhos (concavidade). Analogamente, \(|v(-200)|/|v(-100)| = 1{,}84 < 2\): a sensibilidade também é decrescente para perdas (convexidade).

**Interpretação econômica:** A aversão à perda (\(\lambda = 2{,}25\)) é o parâmetro central da Teoria do Prospecto. Ela explica por que as pessoas rejeitam apostas com valor esperado positivo (como \(+110\) com 50% e \(-100\) com 50%) e por que negociações salariais são tão sensíveis a cortes nominais.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-2)

---

## Exercício 8.3 {#ex-8-3}

**Solução.**

**(a)** Com \(u(x) = x\), \(\beta = 0{,}70\), \(\delta = 0{,}99\):

*Plano X (depósito hoje, retorno em 12 meses):*

\[
U_0(X) = -100 + \beta \delta^{12} \times 150 = -100 + 0{,}70 \times 0{,}99^{12} \times 150
\]

\[
= -100 + 0{,}70 \times 0{,}8864 \times 150 = -100 + 93{,}07 = -6{,}93
\]

*Plano Y (depósito em 6 meses, retorno em 18 meses):*

\[
U_0(Y) = \beta\delta^6(-100) + \beta\delta^{18}(150) = 0{,}70 \times 0{,}99^6 \times (-100) + 0{,}70 \times 0{,}99^{18} \times 150
\]

\[
= 0{,}70 \times 0{,}9415 \times (-100) + 0{,}70 \times 0{,}8345 \times 150 = -65{,}90 + 87{,}62 = 21{,}72
\]

O consumidor prefere **Y** em \(t = 0\) (\(U_0(Y) = 21{,}72 > -6{,}93 = U_0(X)\)).

**(b)** Em \(t = 6\), o Plano Y exige depósito **agora** (imediato):

\[
U_6(Y) = -100 + \beta\delta^{12} \times 150 = -100 + 93{,}07 = -6{,}93
\]

A utilidade de Y avaliada em \(t = 6\) é **negativa** — o custo imediato domina. O consumidor provavelmente **não** adere quando chega o momento.

- **Agente sofisticado:** Reconhece que seu "eu futuro" não aderirá ao Plano Y, e por isso pode buscar mecanismos de compromisso (como autorização prévia de débito automático em \(t = 6\)).
- **Agente ingênuo:** Acredita que aderirá ao Plano Y quando chegar \(t = 6\), mas sistematicamente procrastina. Esse padrão se repete indefinidamente.

**Interpretação econômica:** Essa dinâmica é central para entender a baixa adesão voluntária à previdência complementar no Brasil. Programas como a Funpresp (com adesão automática desde 2013 para novos servidores federais) exploram a inércia para contornar o viés do presente.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-3)

---

## Exercício 8.4 {#ex-8-4}

**Solução.**

**(i) Excesso de confiança:** O consumidor, ao contratar o plano mensal, superestima a frequência futura de uso da academia. Ele projeta que irá 20 vezes por mês (custo de R\$ 5/visita), mas na realidade vai apenas 4–5 vezes (custo efetivo de R\$ 20–25/visita). Esse excesso de confiança sobre o autocontrole futuro é um viés documentado: as pessoas preveem que se comportarão de forma mais disciplinada do que efetivamente se comportam.

**(ii) Viés do presente:** O plano anual exige um pagamento imediato grande (R\$ 960), enquanto o mensal exige apenas R\$ 100 agora. O desconto quasi-hiperbólico faz com que o custo imediato de R\$ 960 pareça desproporcionalmente alto, mesmo sendo mais barato no acumulado. O \(\beta < 1\) amplifica o custo presente relativamente ao futuro, levando o consumidor a preferir pagamentos menores e frequentes — mesmo que totalizem mais.

**Interpretação econômica:** DellaVigna e Malmendier (2006) mostram que academias lucram precisamente com essa combinação de vieses: cobram mensalidades de clientes que superestimam o próprio uso e subestimam o custo efetivo por visita. É um exemplo de empresa que explora vieses comportamentais na precificação.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-4)

---

## Exercício 8.5 {#ex-8-5}

**Solução.**

A **adesão automática com *opt-out* (ii)** provavelmente terá maior impacto. Justificativas:

1. **Viés do *status quo*:** A maioria dos trabalhadores aceita o *default*. Evidência empírica (Madrian e Shea, 2001) mostra que a adesão sobe de ~49% (*opt-in*) para ~86% (*opt-out*). O subsídio fiscal exige ação do trabalhador, que pode ser impedida por procrastinação.

2. **Viés do presente:** O subsídio fiscal tem benefício futuro (menor imposto na declaração), mas o custo (menor salário líquido hoje) é imediato. Com \(\beta < 1\), muitos trabalhadores procrastinam a adesão apesar do incentivo financeiro.

3. **Complexidade e inércia:** Aderir a um plano com subsídio fiscal exige decisões ativas (escolher alíquota, fundo, etc.). A sobrecarga cognitiva pode levar à "paralisia por excesso de opções". O *opt-out* elimina essa fricção.

4. **Evidência empírica comparada:** Chetty et al. (2014) mostram que mudanças automáticas em contribuições previdenciárias afetam 85% da população, enquanto subsídios fiscais afetam apenas os 15% de contribuintes mais atentos.

**Interpretação econômica:** O subsídio fiscal é a ferramenta correta se os agentes são racionais (modelo padrão). A adesão automática é superior se os agentes sofrem de viés do presente e inércia (modelo comportamental). A evidência favorece esmagadoramente a segunda hipótese.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-5)

---

## Exercício 8.6 {#ex-8-6}

**Solução.**

No Paradoxo de Allais, as loterias são:

- \(A\): R\$ 1 milhão com certeza
- \(B\): R\$ 5M com prob 0,10; R\$ 1M com prob 0,89; R\$ 0 com prob 0,01
- \(C\): R\$ 1M com prob 0,11; R\$ 0 com prob 0,89
- \(D\): R\$ 5M com prob 0,10; R\$ 0 com prob 0,90

O padrão observado é \(A \succ B\) e \(D \succ C\).

Sob UE com \(u(x)\): \(A \succ B\) implica:

\[
u(1M) > 0{,}10 u(5M) + 0{,}89 u(1M) + 0{,}01 u(0)
\]

\[
0{,}11 u(1M) > 0{,}10 u(5M) + 0{,}01 u(0) \tag{*}
\]

\(D \succ C\) implica:

\[
0{,}10 u(5M) + 0{,}90 u(0) > 0{,}11 u(1M) + 0{,}89 u(0)
\]

\[
0{,}10 u(5M) + 0{,}01 u(0) > 0{,}11 u(1M) \tag{**}
\]

As inequações (\(*\)) e (\(**\)) são **contraditórias**. Logo, não existe \(u(\cdot)\) que represente essas preferências simultaneamente. O axioma violado é o da **independência**: adicionar ou remover uma consequência comum (aqui, os 0,89 de chance de R\$ 1M) não deveria alterar a ordenação. \(\blacksquare\)

**Interpretação econômica:** O Paradoxo de Allais revela que os agentes sobrepesam a certeza (\(A\) é "certo") relativamente a probabilidades altas (\(B\) tem 0,89 de R\$ 1M, quase certo). Isso viola a linearidade nas probabilidades que a UE exige.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-6)

---

## Exercício 8.7 {#ex-8-7}

**Solução.**

No Paradoxo de Ellsberg (duas cores), há duas urnas:

- **Urna A:** 50 bolas vermelhas e 50 pretas (composição conhecida).
- **Urna B:** 100 bolas, composição desconhecida.

Preferências observadas: apostar em vermelho da Urna A ≻ vermelho da Urna B, **e** preto da Urna A ≻ preto da Urna B.

Se o agente atribui probabilidade subjetiva \(q\) às bolas vermelhas na Urna B, então preferir A em vermelho implica \(0{,}5 > q\), e preferir A em preto implica \(0{,}5 > 1 - q\), ou seja, \(q > 0{,}5\). Contradição: \(q < 0{,}5\) e \(q > 0{,}5\) simultaneamente. Logo, não existe nenhuma probabilidade subjetiva \(q\) compatível com as preferências observadas. \(\blacksquare\)

O axioma violado é o axioma **Sure-Thing Principle** (P2) de Savage, que é a versão do axioma de independência para probabilidades subjetivas. As preferências de Ellsberg revelam **aversão à ambiguidade**: o agente prefere riscos conhecidos a incerteza genuína, independentemente da probabilidade subjetiva que atribua.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-7)

---

## Exercício 8.8 {#ex-8-8}

**Solução.**

No modelo de Fehr-Schmidt, a utilidade do respondedor ao receber oferta \(s\) (de um total \(S = 200\)) é:

\[
U_R(s) = s - \alpha_R \max\{(S - s) - s, 0\} - \beta_R \max\{s - (S - s), 0\}
\]

\[
= s - \alpha_R \max\{200 - 2s, 0\} - \beta_R \max\{2s - 200, 0\}
\]

**(a)** Para \(s \leq 100\) (respondedor recebe menos que metade), o termo de inveja domina:

\[
U_R(s) = s - 3(200 - 2s) = s - 600 + 6s = 7s - 600
\]

O respondedor aceita se \(U_R(s) \geq 0\) (rejeitar dá \(U_R = 0\)):

\[
7s - 600 \geq 0 \implies s \geq 600/7 \approx 85{,}71
\]

Oferta mínima aceita: **R\$ 85,71** (≈ 42,9% do total).

**(b)** Com \(\alpha_R = \beta_R = 0\): \(U_R(s) = s\). O respondedor aceita qualquer \(s > 0\). Oferta mínima: **R\$ 0,01** (essencialmente zero).

**(c)** A diferença (R\$ 85,71 vs. ~R\$ 0) reflete a aversão à inequidade desvantajosa. Com \(\alpha_R = 3\), o respondedor sofre intensamente com desigualdade a seu desfavor, preferindo rejeitar (e ficar com zero) a aceitar uma oferta que considere "injusta". Isso explica as taxas de rejeição de 40–60% observadas experimentalmente para ofertas abaixo de 30% em jogos do ultimato.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-8)

---

## Exercício 8.9 {#ex-8-9}

**Solução.**

As quatro regras de edição hedônica de Thaler (1985):

1. **Segregar ganhos** (concavidade de \(v\) para ganhos: \(v(x) + v(y) > v(x+y)\))
2. **Integrar perdas** (convexidade de \(v\) para perdas: \(v(-x-y) > v(-x) + v(-y)\))
3. **Integrar perda pequena com ganho grande** (aversão à perda: \(v(x-y) > v(x) + v(-y)\) se \(x > y\))
4. **Segregar ganho pequeno de perda grande** (busca por risco: \(v(-x) + v(y) > v(-x+y)\) se \(x > y\))

**(a)** "20% + 10% extra" em vez de "28%": **segregar ganhos**. O consumidor percebe dois ganhos separados: primeiro 20%, depois 10% sobre o preço já reduzido. Pela concavidade da função valor para ganhos, \(v(20\%) + v(10\%) > v(28\%)\). Dois descontos separados geram mais prazer percebido que um desconto único equivalente.

**(b)** Taxa condominial mensal em vez de anual: **integrar perdas**. Se cobrada anualmente, o morador sentiria uma única perda grande. Dividindo em 12 parcelas mensais, cada perda individual é menor — mas pela convexidade de \(v\) para perdas, \(12 \times v(-x/12)\) é mais doloroso que \(v(-x)\) em teoria. Na prática, a regra 2 sugere que o condomínio deveria cobrar tudo de uma vez! A cobrança mensal se justifica mais por restrições de liquidez e por **habituação** (perdas recorrentes se tornam menos salientes, como se incorporadas ao *status quo*).

**(c)** Cashback em vez de desconto: **segregar ganho pequeno de perda grande** (regra 4). O pagamento integral é a perda grande; o cashback é um ganho pequeno posterior. Pela regra 4, sentir a perda do pagamento e depois o ganho do cashback separadamente gera mais satisfação do que simplesmente pagar menos. O cashback cria um momento de "ganho" que atenua psicologicamente a dor do pagamento.


↩ [Voltar ao enunciado](../cap08/index.md#ex-8-9)

---

## Exercício 8.10 {#ex-8-10}

**Solução.**

A função de ponderação: \(w(p) = \frac{p^\gamma}{(p^\gamma + (1-p)^\gamma)^{1/\gamma}}\).

**(a)**

\[
w(0) = \frac{0^\gamma}{(0^\gamma + 1^\gamma)^{1/\gamma}} = \frac{0}{1} = 0 \quad \checkmark
\]

\[
w(1) = \frac{1^\gamma}{(1^\gamma + 0^\gamma)^{1/\gamma}} = \frac{1}{1} = 1 \quad \checkmark
\]

**(b)** Com \(\gamma = 0{,}61\):

\[
w(0{,}01) = \frac{0{,}01^{0,61}}{(0{,}01^{0,61} + 0{,}99^{0,61})^{1/0,61}}
\]

\(0{,}01^{0,61} = e^{0,61 \ln 0,01} = e^{-2,81} = 0{,}0603\)

\(0{,}99^{0,61} = e^{0,61 \ln 0,99} = e^{-0,00613} = 0{,}9939\)

\[
w(0{,}01) = \frac{0{,}0603}{(0{,}0603 + 0{,}9939)^{1/0,61}} = \frac{0{,}0603}{1{,}0542^{1,639}} = \frac{0{,}0603}{1{,}0896} \approx 0{,}055
\]

Probabilidade objetiva de 1% é ponderada como ~5,5% (sobreponderação de eventos raros).

Analogamente: \(w(0{,}50) \approx 0{,}421\) e \(w(0{,}99) \approx 0{,}914\).

**(c)** Subcerteza:

\[
w(0{,}50) + w(0{,}50) \approx 0{,}421 + 0{,}421 = 0{,}842 < 1 \quad \checkmark
\]

A propriedade de subcerteza (\(w(p) + w(1-p) < 1\)) implica que os pesos de decisão somam menos que 1. Isso reflete um "pessimismo" generalizado: o agente atua como se a "probabilidade total" fosse menor que 100%, subponderando eventos de probabilidade intermediária.

**Interpretação econômica:** A função de ponderação explica simultaneamente: (i) a compra de bilhetes de loteria (sobreponderação de ganhos improváveis: \(w(0{,}01) \gg 0{,}01\)); e (ii) a compra de seguros contra catástrofes (sobreponderação de perdas improváveis). Esses dois comportamentos são incompatíveis com a utilidade esperada mas naturais na Teoria do Prospecto.

↩ [Voltar ao enunciado](../cap08/index.md#ex-8-10)
