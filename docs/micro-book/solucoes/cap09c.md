---
title: "Soluções — Capítulo 9c"
---

# Soluções dos Exercícios — Capítulo 9c

[← Voltar ao Capítulo 9c](../cap09c/index.md)

---

## Exercício 9c.1 {#ex-9c-1}

**Solução.**

Considere o jogo bayesiano 2×2 genérico. O jogador 1 tem tipo \(\theta \in \{H, L\}\) com \(\Pr(H) = 0{,}5\). J1 escolhe \(U\) ou \(D\); J2 (sem tipo privado) escolhe \(L\) ou \(R\).

**Método geral para encontrar o BNE:**

1. **Estratégia de J1:** Uma estratégia contingente ao tipo: \(s_1(\theta)\). Com 2 tipos e 2 ações, há 4 estratégias possíveis: (U,U), (U,D), (D,U), (D,D), onde \((a_H, a_L)\) denota a ação de cada tipo.

2. **Melhor resposta de J2:** Para cada estratégia de J1, J2 calcula o payoff esperado (ponderado pelas crenças \(\Pr(H) = 0{,}5\)) e escolhe \(L\) ou \(R\).

3. **Consistência:** Verificar que cada tipo de J1 está jogando sua melhor resposta dada a ação de J2.

**Exemplo concreto** (usando os payoffs do Exercício Resolvido 9c.1): incumbente com tipo forte/fraca, entrante decide se entra.

Com \(\Pr(\theta_F) = 0{,}5\): \(E[\pi_E] = 0{,}5(-2) + 0{,}5(4) = 1 > 0\). A entrante entra. BNE: **(Entrar)**, com ambos os tipos da incumbente aceitando o resultado.

O ponto-chave é que J2 maximiza contra a **distribuição** sobre os tipos de J1, não contra um tipo específico. Isso é o que distingue jogos bayesianos de jogos com informação completa.

---

## Exercício 9c.2 {#ex-9c-2}

**Solução.**

No leilão *all-pay*, ambos os licitantes pagam seus lances, mas apenas o maior lance ganha o objeto. Com \(v_i \sim U[0,1]\):

**BNE simétrico:** Cada licitante joga \(b(v) = v^2/2\).

*Derivação:* O licitante \(i\) com valor \(v\) maximiza:

\[
\max_b \; v \cdot \Pr(b > b(v_j)) - b = v \cdot \Pr(v_j < b^{-1}(b)) - b
\]

Se \(b(v) = \alpha v^2\), então \(b^{-1}(b) = \sqrt{b/\alpha}\) e \(\Pr(v_j < \sqrt{b/\alpha}) = \sqrt{b/\alpha}\).

CPO: \(v \cdot \frac{1}{2\sqrt{\alpha b}} - 1 = 0 \implies b = v^2/(4\alpha)\). Para consistência: \(\alpha v^2 = v^2/(4\alpha) \implies \alpha = 1/2\).

\[
\boxed{b(v) = v^2/2}
\]

**Receita esperada:** Cada licitante paga \(E[b(v_i)] = E[v^2/2] = 1/6\). Receita total (2 licitantes) = \(2 \times 1/6 = 1/3\).

**Comparação com primeiro preço:** No leilão de primeiro preço com \(N = 2\) e \(v \sim U[0,1]\): \(b(v) = v/2\), receita = \(E[\max(v_1/2, v_2/2)] = 1/3\).

As receitas são **idênticas** (1/3), confirmando o Teorema da Equivalência de Receita.

**Interpretação econômica:** O leilão *all-pay* modela competições onde todos os participantes incorrem em custos (lobbying, P&D, competições esportivas). A equivalência de receita implica que o "desperdício" total é o mesmo que em um leilão convencional — mas a distribuição dos custos é muito diferente (todos pagam, não apenas o vencedor).

---

## Exercício 9c.3 {#ex-9c-3}

**Solução.**

Com \(V = 100\), \(s_i = V + \varepsilon_i\), \(\varepsilon_i \sim U[-20, 20]\), e 3 empresas lançando \(b_i = s_i\):

O vencedor é quem tem o maior sinal: \(s^{(1)} = \max(s_1, s_2, s_3)\).

**Maldição do vencedor:** Condicional a vencer, o vencedor é aquele cujo \(\varepsilon_i\) é o maior dos três. O valor esperado de \(\max(\varepsilon_1, \varepsilon_2, \varepsilon_3)\) com \(\varepsilon \sim U[-20, 20]\) é:

\[
E[\varepsilon^{(1)}] = 20 \times \frac{N - 1}{N + 1} = 20 \times \frac{2}{4} = 10
\]

(usando a fórmula para a \(k\)-ésima estatística de ordem de \(U[a,b]\): \(E[\varepsilon^{(k)}] = a + (b-a) \times k/(N+1)\).)

O sinal do vencedor é, em média, \(s^{(1)} = 100 + 10 = 110\). Se ele lançar \(b = s = 110\), seu lucro esperado é:

\[
E[\pi | \text{vencer}] = V - s^{(1)} = 100 - 110 = -10
\]

O vencedor paga, em média, **mais** do que o valor verdadeiro: lucro esperado **negativo**.

**Ajuste ótimo:** O licitante racional deve ajustar seu lance para baixo, descontando a maldição do vencedor:

\[
b(s_i) = E[V | s_i = \max] = s_i - E[\varepsilon^{(1)} | \varepsilon_i = \max]
\]

Com 3 licitantes e \(U[-20, 20]\), o ajuste é \(-10\): \(b(s_i) = s_i - 10\).

**Interpretação econômica:** A maldição do vencedor é particularmente relevante em leilões de concessões no Brasil (petróleo, espectro, rodovias). Empresas que não ajustam seus lances para a informação revelada pela vitória tendem a pagar preços excessivos. O pré-sal brasileiro, leiloado sob o regime de partilha, é projetado em parte para mitigar esse problema.
