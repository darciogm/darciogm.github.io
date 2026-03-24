---
title: "Soluções — Capítulo 9d"
---

# Soluções dos Exercícios — Capítulo 9d

[← Voltar ao Capítulo 9d](../cap09d/index.md)

---

## ✏️ Exercício 9d.1 {#ex-9d-1}

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


↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-1)

---

## ✏️ Exercício 9d.2 {#ex-9d-2}

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


↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-2)

---

## ✏️ Exercício 9d.3 {#ex-9d-3}

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


↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-3)

---

## ✏️ Exercício 9d.4 {#ex-9d-4}

**Solução.**

**(a) Bônus por desempenho de professores (Ceará):** O programa vincula remuneração ao desempenho dos alunos em avaliações externas (como o SPAECE). Isso mitiga moral hazard ao alinhar os incentivos do professor (agente) com os do sistema educacional (principal). O professor que se esforça mais gera melhores resultados e recebe compensação. O mecanismo é análogo a um contrato por desempenho (\(w = w_0 + \alpha \cdot q\)), onde \(q\) é observável (notas dos alunos).

*Limitações:* risco de *teaching to the test* (otimizar a métrica, não o aprendizado); multitarefa (Holmström, 1991) — se apenas matemática e português são medidos, outras dimensões do ensino são negligenciadas.

**(b) DPVAT com franquia:** O seguro obrigatório de veículos cobria danos a terceiros. A franquia (participação do segurado no custo) mitiga moral hazard ao impor *cost-sharing*: se o segurado arca com parte do custo, tem incentivo para dirigir com mais cuidado. Sem franquia, o seguro total eliminaria incentivos à prudência.

*Formalmente:* A franquia transforma o contrato de seguro total (\(w_R = 0\) → sem incentivo) em seguro parcial (\(w_R = -\text{franquia}\) → incentivo preservado).

**(c) Stock options em empresas da B3:** Opções de ações alinham o interesse do executivo (agente) com o dos acionistas (principal). O executivo se beneficia quando o preço da ação sobe, incentivando decisões que maximizam valor de longo prazo. O mecanismo funciona como um contrato \(w = w_0 + \beta \cdot \max(S - K, 0)\), onde \(S\) é o preço da ação e \(K\) o strike.

*Limitações:* manipulação de resultados de curto prazo para inflar o preço; *repricing* de opções quando o preço cai (eliminando o incentivo negativo); exposição a risco de mercado (preço pode cair por fatores alheios ao esforço do executivo), violando o princípio de informatividade.

**Interpretação econômica:** Todos os três mecanismos seguem o princípio básico do principal-agente: tornar a remuneração contingente em resultados observáveis que são correlacionados com o esforço. O trade-off central é entre incentivos (alta variabilidade salarial) e seguro (baixa variabilidade), dado que o agente é avesso ao risco.

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-4)

---

## ✏️ Exercício 9d.5 {#ex-9d-5}

**Solução.**

Dados: carros bons valem 12.000, limões valem 4.000, fração de bons = \(\lambda\), valor de reserva do vendedor = 0,9 do valor.

**(a)** O valor esperado para o comprador se acredita na proporção \(\lambda\):

\[
V^e(\lambda) = \lambda \cdot 12000 + (1-\lambda) \cdot 4000 = 4000 + 8000\lambda
\]

O comprador aceita pagar até \(P^{\max}(\lambda) = 4000 + 8000\lambda\).

**(b)** Para que um carro bom seja vendido, o preço deve ser pelo menos o valor de reserva do vendedor: \(P \geq 0{,}9 \times 12000 = 10800\). Isso exige:

\[
4000 + 8000\lambda \geq 10800 \implies 8000\lambda \geq 6800 \implies \lambda \geq 0{,}85
\]

Para que um limão seja vendido: \(P \geq 0{,}9 \times 4000 = 3600\), ou seja, \(4000 + 8000\lambda \geq 3600\), que é sempre satisfeito (pois \(\lambda \geq 0\)).

**Conclusão:**

- Se \(\lambda \geq 0{,}85\): ambos os tipos são vendidos. O preço de equilíbrio pode ser \(P = P^{\max}(\lambda)\).
- Se \(\lambda < 0{,}85\): vendedores de carros bons não aceitam o preço que o comprador está disposto a pagar. Apenas limões são vendidos. O preço de equilíbrio com apenas limões: o comprador sabe que só há limões, então \(V^e = 4000\). O vendedor aceita se \(4000 \geq 3600\). ✓ Equilíbrio com apenas limões existe para qualquer \(\lambda\).

**(c)** Com \(\lambda = 0{,}6\):

\[
P^{\max}(0{,}6) = 4000 + 8000 \times 0{,}6 = 4000 + 4800 = 8800
\]

Valor de reserva do vendedor de carro bom: 10.800 > 8.800. Logo, vendedores de carros bons **não vendem**. O mercado colapsa para apenas limões ao preço de até 4.000.

**Perda de bem-estar:** Existem \(\lambda = 0{,}6\) de carros bons cujos donos valorizam em 10.800 e compradores valorizam em 12.000. Essas transações não ocorrem — pura perda de eficiência gerada pela assimetria informacional. O excedente potencial não realizado por veículo bom é \(12000 - 10800 = 1200\), multiplicado pela proporção 0,6 de carros bons. A informação assimétrica destrói valor que beneficiaria ambas as partes.

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-5)

---

## ✏️ Exercício 9d.6 {#ex-9d-6}

**Solução.**

**(a) Banco e crédito pessoal — Seleção adversa.** A assimetria existe *antes* do contrato: tomadores de alto risco de inadimplência sabem disso melhor do que o banco. A taxa uniforme é atrativa exatamente para quem tem menor probabilidade de pagar — que é quem mais se candidata. O banco não está observando uma ação pós-contratual; está atraindo desproporcionalmente os tipos ruins antes de firmar o empréstimo.

**(b) Gerente com salário fixo — Moral hazard.** O contrato está firmado; o problema surge *depois*, quando o gerente decide como alocar seu tempo. O salário fixo elimina o incentivo a esforçar-se pois não há diferença no pagamento entre alto e baixo esforço. Não há ocultação de informação pré-contratual relevante aqui — o problema é de ação oculta.

**(c) Motoristas e seguro de automóvel — Moral hazard (predominante).** O comportamento mais arriscado surge *após* a contratação do seguro, em resposta ao incentivo criado pelo contrato (custo marginal de acidentes reduzido). Pode haver também seleção adversa (motoristas mais descuidados buscam seguro com mais avidez), mas o mecanismo descrito — mudança de comportamento *depois* de ter seguro — é moral hazard.

**(d) Plano de saúde coletivo e funcionários doentes — Seleção adversa.** A adesão ao plano é uma decisão pré-contratual: funcionários que sabem que são mais doentes têm mais incentivo para aderir. A empresa observa o pool resultante ser mais custoso do que a população geral — mas esse é o produto da autosseleção, não de comportamento pós-contratual.

**(e) Crédito imobiliário subsidiado e inadimplentes futuros — Seleção adversa (com elemento de moral hazard).** A seleção adversa é o mecanismo primário: compradores que antecipam sua incapacidade de pagamento têm mais incentivo para aproveitar o subsídio (taxa baixa + expectativa de renegociação ou perdão). O elemento de moral hazard aparece na decisão de pagamento após a concessão: o subsídio pode reduzir o esforço para honrar a dívida (especialmente se há expectativa de renegociação).

**Síntese da distinção operacional:**

| Pergunta diagnóstica | Resposta positiva → |
|:---------------------|:--------------------|
| A assimetria existe antes do contrato ser firmado? | Seleção adversa |
| O comportamento problemático surge após o contrato? | Moral hazard |
| A assimetria é sobre características do agente? | Seleção adversa |
| A assimetria é sobre ações do agente? | Moral hazard |

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-6)

---

## ✏️ Exercício 9d.7 {#ex-9d-7}

**Solução.**

Dados: \(\theta_H = 4\), \(\theta_L = 1\), \(c(e, \theta) = e/\theta\), \(p = 0{,}5\).

**(a) Equilíbrio separador de menor custo:**

Tipo L escolhe \(e_L = 0\) (salário 1); tipo H escolhe \(e_H = e^*\) (salário 4).

**IC do tipo L** (não imitar H): \(1 - 0 \geq 4 - e^*/1 \implies e^* \geq 3\)

**IC do tipo H** (não imitar L): \(4 - e^*/4 \geq 1 \implies e^* \leq 12\)

Equilíbrio separador de menor custo: \(e^* = 3\).

Payoffs: tipo H obtém \(4 - 3/4 = 4 - 0{,}75 = 3{,}25\); tipo L obtém 1.

**(b) Equilíbrio pooling em \(e = 0\):**

Se ambos escolhem \(e = 0\), o salário é a produtividade esperada:

\[
w_{\text{pool}} = 0{,}5 \times 4 + 0{,}5 \times 1 = 2{,}5
\]

Para que esse pooling seja equilíbrio, nenhum tipo deve desviar para \(e > 0\).

Crenças off-path necessárias: se o receptor observar \(e > 0\), deve acreditar que é o tipo L. Com essa crença, o salário para \(e > 0\) é 1.

**Verificação — Tipo H não desvia:** Para qualquer \(e > 0\), o salário pós-desvio é 1 (pela crença off-path pessimista). O payoff de desviar é \(1 - e/4 < 1 < 2{,}5\). ✓ Não desvia.

**Verificação — Tipo L não desvia:** Payoff de desviar é \(1 - e/1 = 1 - e < 2{,}5\) para \(e > 0\). ✓ Não desvia.

O pooling em \(e = 0\) é um PBE sustentado pelas crenças off-path pessimistas \(\mu(\theta_L \mid e > 0) = 1\).

**(c) Critério de Dominância Intuitiva de Cho e Kreps:**

O critério questiona: existe algum \(e > 0\) tal que, independentemente da crença do receptor (desde que seja crença racional), o desvio *nunca* seria lucrativo para o tipo L, mas *poderia* ser lucrativo para o tipo H?

Considere o tipo H desviando para \(e = 3\). Se o receptor acreditar que é o tipo H (crença mais favorável), o salário é 4. Payoff do desvio para tipo H: \(4 - 3/4 = 3{,}25 > 2{,}5\). ✓ O tipo H ganha com o desvio.

O tipo L nunca se beneficia de \(e = 3\): mesmo com salário 4, o payoff seria \(4 - 3/1 = 1 < 2{,}5\). O tipo L jamais desviaria para \(e = 3\), independentemente das crenças.

Portanto, o receptor deveria atribuir crença 1 ao tipo H após observar \(e = 3\), pagando salário 4. O tipo H desviaria. Logo, o equilíbrio pooling em \(e = 0\) **não sobrevive** ao Critério de Dominância Intuitiva.

**(d) Bem-estar do tipo H:**

- No separador (\(e^* = 3\)): payoff \(= 3{,}25\).
- No pooling (\(e = 0\)): payoff \(= 2{,}5\).

O tipo H prefere o equilíbrio **separador** (\(3{,}25 > 2{,}5\)). Intuitivamente: a diferença de produtividade é grande (\(\theta_H/\theta_L = 4\)), então o salário alto no separador compensa amplamente o custo da sinalização.

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-7)

---

## ✏️ Exercício 9d.8 {#ex-9d-8}

**Solução.**

Dados: baixo risco (BR): custo esperado 2.000, fração 0,7; alto risco (AR): custo esperado 10.000, fração 0,3. Utilidade: \(U = C \cdot \text{custo} - P\).

**(a) Prêmios atuarialmente justos com informação perfeita:**

- Baixo risco: \(P_L^{FB} = 1 \times 2000 = 2000\) (com cobertura total).
- Alto risco: \(P_H^{FB} = 1 \times 10000 = 10000\) (com cobertura total).

**(b) Prêmio médio com contrato único e cobertura total:**

\[
P_{\text{med}} = 0{,}7 \times 2000 + 0{,}3 \times 10000 = 1400 + 3000 = 4400
\]

Quem aceita (\(U \geq 0\), i.e., \(C \cdot \text{custo} \geq P\)):

- Baixo risco: \(1 \times 2000 - 4400 = -2400 < 0\). **Não aceita.**
- Alto risco: \(1 \times 10000 - 4400 = 5600 > 0\). **Aceita.**

Apenas alto risco compra. Lucro esperado por beneficiário: \(P_{\text{med}} - \text{custo}_{AR} = 4400 - 10000 = -5600 < 0\). A operadora tem prejuízo.

**(c) Menu de contratos separador:**

O contrato para o tipo alto \((P_H, C_H = 1)\) com \(P_H = 10000\) (prêmio atuarialmente justo).

O contrato para o tipo baixo \((P_L, C_L)\) deve satisfazer:

**IR do tipo baixo:** \(C_L \times 2000 - P_L \geq 0 \implies P_L \leq 2000 C_L\).

**IC do tipo baixo** (não preferir contrato do alto risco): \(C_L \times 2000 - P_L \geq 1 \times 2000 - 10000 = -8000\). Como \(C_L \times 2000 - P_L \geq 0 > -8000\) pela IR, essa IC é automaticamente satisfeita.

**IC do tipo alto** (não preferir contrato do baixo risco): \(C_H \times 10000 - P_H \geq C_L \times 10000 - P_L\).

\[
1 \times 10000 - 10000 \geq C_L \times 10000 - P_L \implies 0 \geq 10000 C_L - P_L
\]

\[
P_L \geq 10000 C_L
\]

Para que exista contrato para o tipo baixo aceitável (\(P_L \leq 2000 C_L\)) e que não atraia o tipo alto (\(P_L \geq 10000 C_L\)):

\[
2000 C_L \geq P_L \geq 10000 C_L \implies 2000 C_L \geq 10000 C_L \implies C_L \leq 0
\]

Isso só é satisfeito com \(C_L = 0\) e \(P_L = 0\) — o tipo baixo recebe seguro zero. Com cobertura zero, o tipo baixo fica sem proteção alguma, o que é equivalente a não ter plano.

**Interpretação:** Em um mercado competitivo com apenas dois tipos, o equilíbrio de Rothschild-Stiglitz implica que o tipo baixo recebe cobertura incompleta (distorção downward) para impedir que o tipo alto o imite. Quanto maior a diferença entre os tipos, maior a distorção no contrato do tipo baixo.

**(d) Limite regulatório da ANS (variação 6x):**

A restrição \(P_H / P_L \leq 6\) limita a diferenciação de prêmios. No nosso exemplo, \(P_H / P_L = 10000 / 2000 = 5 \leq 6\), então a restrição não vincula diretamente.

Contudo, quando os tipos são diferenciados por *faixa etária* (jovens vs. idosos), a razão 6x pode ser insuficiente para cobrir a diferença de custo real (que pode ser 10x ou mais). Isso força subsídio cruzado dos jovens para os idosos — o que é exatamente o objetivo regulatório (solidariedade intergeracional), mas reduz o incentivo dos jovens saudáveis a contratar planos individuais, agravando a seleção adversa no segmento jovem.

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-8)

---

## ✏️ Exercício 9d.9 {#ex-9d-9}

**Solução.**

Dados: \(u(w) = \sqrt{w}\), \(c(e_H) = 1{,}5\), \(c(e_L) = 0\), utilidade de reserva \(\bar{u} = 2\).

Com esforço alto: prob. bom = 0,8, ruim = 0,2. Com esforço baixo: prob. bom = 0,4, ruim = 0,6.

**(a) Restrições IC e IR:**

**IC** (esforço alto vs. baixo):

\[
0{,}8\sqrt{w_B} + 0{,}2\sqrt{w_R} - 1{,}5 \geq 0{,}4\sqrt{w_B} + 0{,}6\sqrt{w_R} - 0
\]

\[
0{,}4\sqrt{w_B} - 0{,}4\sqrt{w_R} \geq 1{,}5 \implies \sqrt{w_B} - \sqrt{w_R} \geq 3{,}75 \quad \text{(IC)}
\]

**IR** (agente prefere aceitar ao contrário):

\[
0{,}8\sqrt{w_B} + 0{,}2\sqrt{w_R} - 1{,}5 \geq 2 \implies 0{,}8\sqrt{w_B} + 0{,}2\sqrt{w_R} \geq 3{,}5 \quad \text{(IR)}
\]

**(b) Contrato ótimo (minimização de custo para o principal):**

O principal minimiza \(0{,}8 w_B + 0{,}2 w_R\) sujeito a IC e IR vinculantes (ambas ativas no ótimo com agente avesso ao risco).

Substituindo \(\sqrt{w_B} = x\) e \(\sqrt{w_R} = y\):

Do sistema IC e IR vinculantes:
- \(x - y = 3{,}75\) (IC)
- \(0{,}8x + 0{,}2y = 3{,}5\) (IR)

Da IC: \(x = y + 3{,}75\). Substituindo na IR:

\[
0{,}8(y + 3{,}75) + 0{,}2y = 3{,}5 \implies 0{,}8y + 3 + 0{,}2y = 3{,}5 \implies y = 0{,}5
\]

\[
x = 0{,}5 + 3{,}75 = 4{,}25
\]

Portanto: \(w_R^* = y^2 = 0{,}25\) e \(w_B^* = x^2 = 18{,}0625\).

**Verificação:**

- IC: \(\sqrt{18{,}0625} - \sqrt{0{,}25} = 4{,}25 - 0{,}5 = 3{,}75\). ✓
- IR: \(0{,}8 \times 4{,}25 + 0{,}2 \times 0{,}5 = 3{,}4 + 0{,}1 = 3{,}5\). ✓

**Custo esperado para o principal (segundo melhor):**

\[
C^{SB} = 0{,}8 \times 18{,}0625 + 0{,}2 \times 0{,}25 = 14{,}45 + 0{,}05 = 14{,}5
\]

**(c) Primeiro melhor (informação simétrica):**

Com esforço observável, o principal paga um salário fixo \(w^{FB}\) tal que o agente aceite e exerça esforço alto:

IR: \(\sqrt{w^{FB}} - 1{,}5 = 2 \implies \sqrt{w^{FB}} = 3{,}5 \implies w^{FB} = 12{,}25\).

**Custo esperado para o principal (primeiro melhor):**

\[
C^{FB} = 12{,}25
\]

**Custo de agência:**

\[
\Delta = C^{SB} - C^{FB} = 14{,}5 - 12{,}25 = 2{,}25
\]

O custo de agência é 2,25 — o principal paga 2,25 a mais por causa da informação assimétrica sobre o esforço.

**(d) Por que a aversão ao risco aumenta o custo de agência?**

Com agente neutro ao risco (\(u(w) = w\)), o principal pode "vender a empresa" ao agente (contrato \(w = q - k\) com \(k\) fixo), tornando-o o reclamante residual. O agente internaliza completamente o impacto do esforço no resultado, exercendo esforço ótimo. O custo de agência é zero.

Com agente avesso ao risco (\(u = \sqrt{w}\)), esse contrato impõe risco excessivo ao agente — o que é inaceitável para ele (reduziria sua utilidade esperada abaixo da utilidade de reserva). Para compensá-lo pelo risco adicional que \(w_B \gg w_R\) impõe, o principal precisa pagar uma remuneração esperada *maior* do que no primeiro melhor. Esse excesso de remuneração é o custo de agência.

Em síntese: quanto mais avesso ao risco o agente, mais cara a "compra" de esforço via incentivos variáveis — e maior o custo de agência. Com aversão ao risco extrema (agente quer seguro total), o custo de agência pode ser proibitivo e o principal desiste de implementar esforço alto.

↩ [Voltar ao enunciado](../cap09d/index.md#ex-9d-9)
