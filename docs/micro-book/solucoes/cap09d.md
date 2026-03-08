---
title: "Soluções — Capítulo 9d"
---

# Soluções dos Exercícios — Capítulo 9d

[← Voltar ao Capítulo 9d](../cap09d/index.md)

---

## Exercício 9d.1 {#ex-9d-1}

**Solução.**

Dados: \(\theta_H = 3\), \(\theta_L = 1\), \(c(e, \theta) = e^2/(2\theta)\).

No equilíbrio separador, firmas pagam \(w = \theta\) para o tipo identificado. Tipo L escolhe \(e_L = 0\) (salário 1); tipo H escolhe \(e_H = e^*\) (salário 3).

**IC do tipo L** (não imitar H): \(1 - 0 \geq 3 - (e^*)^2/(2 \times 1)\)

\[
1 \geq 3 - (e^*)^2/2 \implies (e^*)^2 \geq 4 \implies e^* \geq 2
\]

**IC do tipo H** (não imitar L): \(3 - (e^*)^2/(2 \times 3) \geq 1\)

\[
(e^*)^2/6 \leq 2 \implies (e^*)^2 \leq 12 \implies e^* \leq 2\sqrt{3} \approx 3{,}46
\]

**Equilíbrio separador menos custoso:** \(e^* = 2\).

Payoffs:

- Tipo H: \(3 - 4/6 = 3 - 2/3 = 7/3 \approx 2{,}33\).
- Tipo L: 1.

**Comparação com \(\theta_H = 2\)** (do Exercício Resolvido): \(e^* = \sqrt{2}\), payoff do tipo H = \(2 - (\sqrt{2})^2/(2 \times 2) = 2 - 1/2 = 3/2 = 1{,}5\).

Com \(\theta_H = 3\): (i) o sinal necessário é maior (\(e^* = 2\) vs. \(\sqrt{2}\)), porque a diferença de produtividade é maior e o tipo L tem mais incentivo para imitar; (ii) o custo social da sinalização é maior em valor absoluto (\(4/6 = 0{,}67\) vs. \(1/2 = 0{,}5\)), mas menor em fração do salário; (iii) o tipo H captura mais da diferença de produtividade (gap produtividade = 2, custo = 0,67, captura líquida = 1,33).

**Interpretação econômica:** Quanto maior a diferença de produtividade entre tipos, mais custosa a sinalização necessária para separar — mas o retorno líquido também é maior. A eficiência social depende do trade-off entre o custo da sinalização e o ganho informacional para os empregadores.

---

## Exercício 9d.2 {#ex-9d-2}

**Solução.**

O vendedor sabe se o carro é limão (0) ou bom (10). Preço fixo: 6. O vendedor pode dizer "bom" ou "limão".

**Não existe equilíbrio em que o comprador acredita no vendedor.** Eis o motivo:

Se o comprador acredita: "bom" → compra, "limão" → não compra.

- Vendedor com carro bom: diz "bom" (vende por 6, que é menos que 10 mas é receita positiva). ✓
- Vendedor com limão: diz "bom" (vende por 6, obtendo 6 > 0). **Desvia!**

O vendedor de limão sempre mente. Logo, "bom" é dito por ambos os tipos, e a mensagem não transmite informação. O comprador racional ignora a mensagem.

**Equilíbrio:** *Babbling equilibrium* — ambos os tipos dizem "bom" (ou qualquer coisa), o comprador ignora e decide com base nas priors. Com \(\Pr(\text{bom}) = 0{,}5\):

\[
E[V] = 0{,}5 \times 10 + 0{,}5 \times 0 = 5 < 6
\]

O comprador **não compra** (valor esperado 5 < preço 6).

Isso é um caso de **cheap talk** não crível: como falar é gratuito e os incentivos do vendedor são óbvios (sempre quer vender), a comunicação não transmite informação. Para que a sinalização funcione, ela precisa ser **custosa** de forma diferencial entre tipos (como no modelo de Spence).

---

## Exercício 9d.3 {#ex-9d-3}

**Solução.**

Dados: 60% baixo risco (custo 1.000), 40% alto risco (custo 5.000).

**Prêmio atuarialmente justo para a média:**

\[
P_{\text{med}} = 0{,}6 \times 1000 + 0{,}4 \times 5000 = 600 + 2000 = 2600
\]

**Quem compra a \(P = 2600\)?**

- Alto risco: custo esperado 5.000 > 2.600 → **compra** (ótimo negócio).
- Baixo risco: custo esperado 1.000 < 2.600 → **não compra** (paga mais do que vale).

Apenas alto risco compra → **seleção adversa**.

**Prêmio de equilíbrio:** Se só alto risco compra, o custo da pool é 5.000. O prêmio de equilíbrio é \(P = 5000\). Verifica: alto risco compra (justo); baixo risco não compra (5.000 >> 1.000). ✓

**Existe equilíbrio com ambos os tipos?** Precisaria \(P \leq 1000\) (para baixo risco aceitar). Mas \(P = 1000\) gera custo médio \(0{,}6 \times 1000 + 0{,}4 \times 5000 = 2600 > 1000\). A seguradora teria prejuízo. **Não existe equilíbrio pooling viável.**

Resultado: o mercado colapsa para baixo risco (desaparece), e alto risco paga prêmio alto. É o mecanismo de Akerlof (1970) aplicado a seguros.

**Interpretação econômica:** O mercado brasileiro de planos de saúde individuais sofre desse problema. Antes da regulação da ANS (Lei 9.656/1998), planos individuais eram caros e cobriam predominantemente pessoas de alto risco. A obrigatoriedade de coberturas mínimas e a proibição de diferenciação excessiva por idade são respostas regulatórias ao problema de seleção adversa.

---

## Exercício 9d.4 {#ex-9d-4}

**Solução.**

**(a) Bônus por desempenho de professores (Ceará):** O programa vincula remuneração ao desempenho dos alunos em avaliações externas (como o SPAECE). Isso mitiga moral hazard ao alinhar os incentivos do professor (agente) com os do sistema educacional (principal). O professor que se esforça mais gera melhores resultados e recebe compensação. O mecanismo é análogo a um contrato por desempenho (\(w = w_0 + \alpha \cdot q\)), onde \(q\) é observável (notas dos alunos).

*Limitações:* risco de *teaching to the test* (otimizar a métrica, não o aprendizado); multitarefa (Holmström, 1991) — se apenas matemática e português são medidos, outras dimensões do ensino são negligenciadas.

**(b) DPVAT com franquia:** O seguro obrigatório de veículos cobria danos a terceiros. A franquia (participação do segurado no custo) mitiga moral hazard ao impor *cost-sharing*: se o segurado arca com parte do custo, tem incentivo para dirigir com mais cuidado. Sem franquia, o seguro total eliminaria incentivos à prudência.

*Formalmente:* A franquia transforma o contrato de seguro total (\(w_R = 0\) → sem incentivo) em seguro parcial (\(w_R = -\text{franquia}\) → incentivo preservado).

**(c) Stock options em empresas da B3:** Opções de ações alinham o interesse do executivo (agente) com o dos acionistas (principal). O executivo se beneficia quando o preço da ação sobe, incentivando decisões que maximizam valor de longo prazo. O mecanismo funciona como um contrato \(w = w_0 + \beta \cdot \max(S - K, 0)\), onde \(S\) é o preço da ação e \(K\) o strike.

*Limitações:* manipulação de resultados de curto prazo para inflar o preço; *repricing* de opções quando o preço cai (eliminando o incentivo negativo); exposição a risco de mercado (preço pode cair por fatores alheios ao esforço do executivo), violando o princípio de informatividade.

**Interpretação econômica:** Todos os três mecanismos seguem o princípio básico do principal-agente: tornar a remuneração contingente em resultados observáveis que são correlacionados com o esforço. O trade-off central é entre incentivos (alta variabilidade salarial) e seguro (baixa variabilidade), dado que o agente é avesso ao risco.
