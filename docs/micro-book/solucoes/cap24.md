---
title: "Soluções — Capítulo 24"
---

# Soluções dos Exercícios — Capítulo 24

[← Voltar ao Capítulo 24](../cap24/exercicios.md)

---

## ✏️ Exercício 24.1 {#ex-24-1}

**Imposto pigouviano vs. cap-and-trade com duas fábricas.**

Cada fábrica emite 80 t de SO₂. CMgA\(_A = 3e_A\), CMgA\(_B = 6e_B\). Meta: reduzir 80 t no total.

---

**(a) Comando e controle (redução uniforme de 40 t cada)**

\[
\text{Custo}_A = \int_0^{40} 3e \, de = \frac{3}{2}(40)^2 = 2{.}400
\]

\[
\text{Custo}_B = \int_0^{40} 6e \, de = \frac{6}{2}(40)^2 = 4{.}800
\]

Custo total: \(2{.}400 + 4{.}800 = \mathbf{7{.}200}\).

---

**(b) Alocação eficiente**

Igualar custos marginais de abatimento: \(3e_A = 6e_B\), portanto \(e_A = 2e_B\).

Com \(e_A + e_B = 80\): \(2e_B + e_B = 80 \implies e_B = 26{,}7\) e \(e_A = 53{,}3\).

\[
\text{Custo}_A = \frac{3}{2}(53{,}3)^2 \approx 4{.}267
\]

\[
\text{Custo}_B = \frac{6}{2}(26{,}7)^2 \approx 2{.}138
\]

Custo total: \(4{.}267 + 2{.}138 = \mathbf{6{.}405}\) — economia de ~11% em relação ao comando e controle.

---

**(c) Imposto pigouviano ótimo**

No ótimo, \(t = \text{CMgA}_A(e_A^*) = 3 \times 53{,}3 = 160\) e \(t = \text{CMgA}_B(e_B^*) = 6 \times 26{,}7 = 160\).

O imposto ótimo é \(t = \mathbf{160}\) por tonelada de SO₂.

---

**(d) Cap-and-trade**

Com 80 permissões (cada fábrica recebe 40), o preço de equilíbrio iguala os CMgA: \(p_E = 160\).

- Fábrica A reduz 53,3 t (precisa só de 80 − 53,3 = 26,7 permissões) → **vende** 40 − 26,7 = 13,3 permissões.
- Fábrica B reduz 26,7 t (precisa de 80 − 26,7 = 53,3 permissões) → **compra** 53,3 − 40 = 13,3 permissões.

O mercado equilibra automaticamente: Fábrica A (menor custo) reduz mais e vende permissões; Fábrica B (maior custo) reduz menos e compra.

---

## ✏️ Exercício 24.2 {#ex-24-2}

**O custo social do carbono e a taxa de desconto.**

Danos de US\$ 10/ano perpetuamente a partir de \(t = 1\) para cada tCO₂ emitida hoje.

---

**(a) SCC para diferentes taxas de desconto**

O SCC é o valor presente de uma perpetuidade de US\$ 10/ano:

\[
\text{SCC} = \frac{D}{r} = \frac{10}{r}
\]

- \(r = 1\%\): \(\text{SCC} = 10/0{,}01 = \text{US\$} \; 1.000\)
- \(r = 3\%\): \(\text{SCC} = 10/0{,}03 \approx \text{US\$} \; 333\)
- \(r = 5\%\): \(\text{SCC} = 10/0{,}05 = \text{US\$} \; 200\)

A diferença é dramática: o SCC com \(r = 1\%\) é 5 vezes maior que com \(r = 5\%\).

---

**(b) Razão entre SCCs**

\[
\frac{\text{SCC}(r_1)}{\text{SCC}(r_2)} = \frac{D/r_1}{D/r_2} = \frac{r_2}{r_1}
\]

Depende apenas da razão entre as taxas, não do dano \(D\). Isso demonstra a extrema sensibilidade do SCC à taxa de desconto.

---

**(c) SCC com a taxa de Stern**

Usando a proporcionalidade:

\[
\text{SCC}(1{,}4\%) = 51 \times \frac{3\%}{1{,}4\%} = 51 \times 2{,}14 \approx \text{US\$} \; 109
\]

A taxa de Stern mais que duplica o SCC estimado — e com ela, o imposto ótimo sobre carbono.

↩ [Voltar ao enunciado](../cap24/index.md#ex-24-2)

---

## ✏️ Exercício 24.3 {#ex-24-3}

**Weitzman: preços vs. quantidades.**

Benefício marginal: \(BMg = 100 - 2e\). Custo marginal de abatimento: \(CMgA = 20 + e + \varepsilon\), com \(E[\varepsilon] = 0\) e \(\text{Var}(\varepsilon) = \sigma^2\).

---

**(a) Nível ótimo de abatimento e imposto ótimo**

No ótimo esperado (\(\varepsilon = 0\)): \(BMg = CMgA\)

\[
100 - 2e = 20 + e \implies 3e = 80 \implies e^* = 26{,}7 \text{ (aprox.)}
\]

\[
t^* = BMg(e^*) = 100 - 2(26{,}7) = 46{,}7
\]

---

**(b) Perda esperada com imposto fixo**

Com imposto fixo \(t^*\), a firma escolhe \(e\) tal que \(CMgA = t^*\):

\[
20 + e + \varepsilon = 46{,}7 \implies e = 26{,}7 - \varepsilon
\]

O abatimento desvia de \(e^*\) por \(-\varepsilon\). A perda de bem-estar (triângulo de Harberger):

\[
L_P = \frac{1}{2} \cdot \frac{|BMg'|}{(|CMgA'|)^2} \cdot \sigma^2 = \frac{1}{2} \cdot \frac{2}{1} \cdot \sigma^2 = \sigma^2
\]

---

**(c) Perda esperada com quantidade fixa**

Com quantidade fixa \(e^*\), o custo marginal realizado difere do benefício marginal. A perda:

\[
L_Q = \frac{1}{2} \cdot \frac{1}{4} \cdot \sigma^2 \cdot 2 = \frac{\sigma^2}{4}
\]

Usando a fórmula de Weitzman:

\[
L_P - L_Q = \frac{\sigma^2}{2} \cdot \frac{|BMg'| - |CMgA'|}{|CMgA'|^2} = \frac{\sigma^2}{2} \cdot \frac{2 - 1}{1} = \frac{\sigma^2}{2} > 0
\]

---

**(d) Quando o imposto é preferível ao cap?**

O imposto gera perda esperada *maior* que o cap (\(L_P > L_Q\)) porque \(|BMg'| = 2 > |CMgA'| = 1\) — a curva de benefício marginal é mais inclinada. Neste caso, **o cap é preferível**. O imposto seria preferível se a curva de custo de abatimento fosse mais inclinada que a de benefício marginal.

↩ [Voltar ao enunciado](../cap24/index.md#ex-24-3)

---

## ✏️ Exercício 24.4 {#ex-24-4}

**Regra de Hotelling.**

Depósito com \(S_0 = 100\) unidades, custo de extração zero, demanda inversa \(p(q) = 200 - 2q\), taxa de juros \(r = 10\%\), dois períodos.

---

**(a) Condição de Hotelling**

Com custo de extração zero, o preço líquido é o próprio preço. A regra de Hotelling:

\[
p_2 = (1 + r) \cdot p_1 = 1{,}1 \cdot p_1
\]

---

**(b) Quantidades e preços de equilíbrio**

Da demanda inversa: \(p_1 = 200 - 2q_1\) e \(p_2 = 200 - 2q_2\).

Do estoque: \(q_2 = 100 - q_1\).

Da condição de Hotelling:

\[
200 - 2(100 - q_1) = 1{,}1 \cdot (200 - 2q_1)
\]

\[
200 - 200 + 2q_1 = 220 - 2{,}2q_1
\]

\[
4{,}2q_1 = 220 \implies q_1 = 52{,}4; \quad q_2 = 47{,}6
\]

\[
p_1 = 200 - 2(52{,}4) = 95{,}2; \quad p_2 = 200 - 2(47{,}6) = 104{,}8
\]

Verificação: \(104{,}8 / 95{,}2 = 1{,}10\). ✓

---

**(c) Efeito de aumento na taxa de juros**

Com \(r = 20\%\): \(200 - 2(100 - q_1) = 1{,}2 \cdot (200 - 2q_1)\)

\[
2q_1 = 240 - 2{,}4q_1 \implies 4{,}4q_1 = 240 \implies q_1 = 54{,}5
\]

A extração no período 1 *aumenta* (de 52,4 para 54,5). Intuição: com taxa de juros maior, o custo de oportunidade de deixar o recurso no solo é maior — é mais atraente extrair hoje e investir a receita. A regra de Hotelling implica que juros altos favorecem extração presente e elevam o preço futuro mais rapidamente.

↩ [Voltar ao enunciado](../cap24/index.md#ex-24-4)

---

## ✏️ Exercício 24.5 {#ex-24-5}

**Valoração contingente do Parque Barigui.**

---

**(a) DAP média e mediana**

DAP média:

\[
\overline{\text{DAP}} = \frac{0(50) + 5(120) + 10(180) + 20(100) + 50(40) + 100(10)}{500}
\]

\[
= \frac{0 + 600 + 1{.}800 + 2{.}000 + 2{.}000 + 1{.}000}{500} = \frac{7{.}400}{500} = \text{R\$} \; 14{,}80
\]

DAP mediana: o valor para o qual 50% dos respondentes declararam DAP igual ou inferior. Acumulando: 50 (até R\$ 0) + 120 (até R\$ 5) = 170 < 250; + 180 (até R\$ 10) = 350 > 250. A mediana é **R\$ 10/mês**.

---

**(b) Valor anual para Curitiba**

\[
V_{\text{anual}} = 2{.}000{.}000 \times 14{,}80 \times 12 = \text{R\$} \; 355{,}2 \text{ milhões/ano}
\]

(Nota: essa estimativa assume que a DAP da amostra é representativa da população total, o que é uma simplificação.)

---

**(c) DAP mediana vs. média**

A DAP mediana (R\$ 10) é menor que a média (R\$ 14,80) porque a distribuição é assimétrica à direita — poucos respondentes com DAP muito alta (R\$ 50–100) "puxam" a média para cima. A mediana é mais robusta a outliers e a vieses de resposta estratégica (respondentes que declaram valores extremamente altos para influenciar a decisão política). Por isso, o painel NOAA (Arrow et al., 1993) recomenda o uso da **mediana** como estimativa conservadora da DAP.

---

**(d) Vieses potenciais**

1. **Viés hipotético**: os respondentes podem declarar DAP maior do que realmente pagariam, pois não há consequência financeira real. Mitigação: usar formato de referendo ("Você pagaria R\$ X? Sim/Não") em vez de pergunta aberta, e incluir "cheap talk script" alertando sobre o viés.

2. **Viés de protesto**: os 50 respondentes com DAP = 0 podem incluir pessoas que valorizam o parque mas se recusam a precificá-lo (por considerarem responsabilidade do governo) — inflando artificialmente os "zeros". Mitigação: incluir pergunta de acompanhamento para identificar "zeros verdadeiros" vs. "zeros de protesto", e excluir os últimos da análise.

---

## ✏️ Exercício 24.6 {#ex-24-6}

**Recurso pesqueiro com crescimento logístico.**

\(G(S) = 0{,}5 \cdot S(1 - S/1.000)\), preço \(p = 1\), custo \(c = 50/S\).

---

**(a) Rendimento máximo sustentável**

\(G(S) = 0{,}5S - 0{,}0005S^2\). Maximizando: \(G'(S) = 0{,}5 - 0{,}001S = 0\)

\[
S^{\text{RMS}} = 500 \text{ toneladas}
\]

\[
G(500) = 0{,}5(500)(1 - 500/1.000) = 0{,}5(500)(0{,}5) = 125 \text{ t/ano}
\]

O rendimento máximo sustentável é **125 toneladas/ano**.

---

**(b) Equilíbrio de acesso livre**

No equilíbrio de acesso livre, lucro econômico = 0: receita média = custo médio.

Receita por tonelada de peixe = \(p = 1\). Custo por tonelada = \(50/S\).

Condição de lucro zero: \(p = c/S \implies 1 = 50/S \implies S = 50\).

Espere — vamos verificar. O custo total de pescar \(h\) toneladas é \(c \cdot h = (50/S) \cdot h\). A receita é \(p \cdot h = h\). Lucro: \(\pi = h - 50h/S = h(1 - 50/S)\).

Lucro zero: \(1 - 50/S = 0 \implies S^{\text{AL}} = 50\).

No estado estacionário de acesso livre: \(h = G(50) = 0{,}5(50)(1 - 50/1.000) = 0{,}5(50)(0{,}95) = 23{,}75\) t/ano.

---

**(c) Comparação**

\(S^{\text{RMS}} = 500\) vs. \(S^{\text{AL}} = 50\). O estoque de acesso livre é **apenas 10% do estoque RMS** — sobreexploração extrema. O rendimento também é muito menor: 23,75 t/ano vs. 125 t/ano. O acesso livre leva simultaneamente a menos peixes no mar e a menos peixes capturados — a "tragédia dos comuns" em ação.

---

**(d) Quota para o RMS**

A quota que restabelece o RMS é simplesmente \(h = G(S^{\text{RMS}}) = 125\) t/ano. Porém, essa quota só é sustentável quando o estoque se recuperar para \(S = 500\). Durante a recuperação, a quota deve ser menor que \(G(S)\) para permitir que o estoque cresça. Na prática, isso requer uma moratória ou quota muito reduzida enquanto o estoque se recupera de 50 para 500 toneladas.

---

## ✏️ Exercício 24.7 {#ex-24-7}

**Poupança genuína.**

PIB = 1.000, \(S_{\text{bruta}} = 200\), \(D_K = 80\), \(D_N = 30\), \(P = 15\), \(E = 25\).

---

**(a)**

\[
S^* = S_{\text{bruta}} - D_K - D_N + E - P = 200 - 80 - 30 + 25 - 15 = \mathbf{100}
\]

---

**(b)**

Sim, \(S^* = 100 > 0\). A economia está em trajetória sustentável no sentido fraco: o investimento líquido em capital total (produzido + humano − depleção natural − dano ambiental) é positivo. O estoque total de capital está crescendo.

---

**(c)**

Se o preço do mineral dobra (mantendo a quantidade extraída constante), a *renda de escassez* dobra, e portanto \(D_N\) dobra para 60.

\[
S^{*'} = 200 - 80 - 60 + 25 - 15 = 70
\]

A poupança genuína *cai* (de 100 para 70). Interpretação: um preço mais alto do mineral aumenta a *depleção econômica* do recurso — cada tonelada extraída representa uma perda maior de riqueza natural. A economia precisa poupar mais em outras formas de capital para compensar. Paradoxalmente, o aumento do preço do mineral eleva o PIB (pela receita de exportação), mas reduz a sustentabilidade — a menos que a receita adicional seja reinvestida (regra de Hartwick).

---

## ✏️ Exercício 24.8 {#ex-24-8}

**EU ETS: preço de equilíbrio e estabilização.**

Oferta: \(Q_s = 100\). Demanda: \(Q_d = 150 - 2p\).

---

**(a) Equilíbrio**

\[
150 - 2p = 100 \implies p = 25 \text{ (€/tCO₂)}
\]

Receita do leilão: \(100 \times 25 = \text{€} \; 2{.}500\).

---

**(b) Price floor de €30**

A \(p = 30\): \(Q_d = 150 - 60 = 90 < 100\). Há excesso de oferta de 10 permissões. O preço de mercado não pode cair abaixo de €30 (por definição do piso). O regulador absorve as 10 permissões excedentes (comprando-as ao preço mínimo ou retirando-as do mercado). O efeito líquido: emissões caem de 100 para 90, e o preço é €30.

---

**(c) Recessão**

Nova demanda: \(Q_d' = 120 - 2p\).

\[
120 - 2p = 100 \implies p = 10 \text{ (€/tCO₂)}
\]

O preço cai de €25 para €10 — uma queda de 60%. Todas as 100 permissões são usadas (as emissões não caem além do cap, mesmo com a recessão). O sinal de preço para investimentos em descarbonização enfraquece drasticamente.

---

**(d) MSR**

A Reserva de Estabilidade de Mercado (MSR) resolve o problema do item (c): quando o excedente de permissões ultrapassa um limiar, a MSR automaticamente retira permissões do mercado (reduzindo a oferta), sustentando o preço. No exemplo, a MSR poderia retirar 20 permissões, reduzindo a oferta para 80 → \(120 - 2p = 80 \implies p = 20\) — preservando um sinal de preço mais forte. A MSR é essencialmente um estabilizador automático para o mercado de carbono.

---

## ✏️ Exercício 24.9 {#ex-24-9}

**Preços hedônicos em São Paulo.**

\(\ln(P_i) = 10{,}5 + 0{,}05 \cdot \text{Quartos} + 0{,}03 \cdot \text{Área} - 0{,}08 \cdot \text{PM}_{2,5} + 0{,}12 \cdot \text{Parque}\)

---

**(a) Coeficiente de PM\(_{2,5}\)**

Em modelo log-linear, o coeficiente de PM\(_{2,5}\) (-0,08) indica que cada aumento de 1 μg/m³ na concentração de material particulado reduz o preço do imóvel em ~8%.

Redução de 10 μg/m³: aumento de ~\(10 \times 8\% = 80\%\). (Mais precisamente: \(e^{0{,}08 \times 10} - 1 = e^{0{,}8} - 1 \approx 122\%\).)

Nota: a aproximação linear (80%) subestima o efeito real (122%) porque a relação é log-linear. Para variações grandes, deve-se usar a fórmula exata.

---

**(b) Coeficiente de Parque**

O coeficiente 0,12 indica que imóveis a até 500m de um parque têm preço ~12% superior aos demais (controlando por quartos, área e poluição). Precisamente: \(e^{0{,}12} - 1 = 12{,}7\%\).

---

**(c) Valor em R\$**

Prêmio = \(500.000 \times 12{,}7\% \approx \text{R\$} \; 63.500\).

---

**(d) Limitação**

O método de preços hedônicos captura apenas o valor que se reflete no mercado imobiliário — essencialmente o **valor de uso** da qualidade ambiental para os moradores. Não captura: (i) valor de não-uso (existência, legado); (ii) valor para não-moradores (trabalhadores, visitantes); (iii) serviços ecossistêmicos que não afetam preços de imóveis (sequestro de carbono, regulação hídrica). O VET do parque ou da qualidade do ar é provavelmente muito maior do que a estimativa hedônica.

---

## ✏️ Exercício 24.10 {#ex-24-10}

**Modelo DICE simplificado.**

\(Y_1 = Y_2 = 100\), \(\sigma = 0{,}5\), \(\theta_1 = 0{,}1\), \(\delta = 0{,}01\).

---

**(a) Bem-estar social**

Emissões: \(E_1 = 0{,}5 \times 100 \times (1 - \mu_1) = 50(1 - \mu_1)\).

Custo de abatimento: \(\Theta_1 = 0{,}1 \mu_1^2 \times 100 = 10\mu_1^2\).

Dano no período 2: \(D_2 = 0{,}01 \times [50(1 - \mu_1)]^2 = 0{,}01 \times 2.500(1 - \mu_1)^2 = 25(1 - \mu_1)^2\).

\[
W = (100 - 10\mu_1^2) + \frac{100 - 25(1 - \mu_1)^2}{1 + r}
\]

---

**(b) Abatimento ótimo com \(r = 5\%\)**

\[
\frac{dW}{d\mu_1} = -20\mu_1 + \frac{50(1 - \mu_1)}{1{,}05} = 0
\]

\[
-20\mu_1 + 47{,}6(1 - \mu_1) = 0
\]

\[
-20\mu_1 + 47{,}6 - 47{,}6\mu_1 = 0 \implies 67{,}6\mu_1 = 47{,}6
\]

\[
\mu_1^* = \frac{47{,}6}{67{,}6} \approx 0{,}704 \quad (70{,}4\%)
\]

---

**(c) SCC implícito**

O SCC é o dano marginal de uma tonelada adicional de CO₂:

\[
\text{SCC} = \frac{\partial D_2 / \partial E_1}{1 + r} = \frac{2 \times 0{,}01 \times E_1^*}{1{,}05}
\]

\(E_1^* = 50(1 - 0{,}704) = 14{,}8\) toneladas.

\[
\text{SCC} = \frac{0{,}02 \times 14{,}8}{1{,}05} = \frac{0{,}296}{1{,}05} \approx 0{,}282
\]

Verificação: o custo marginal de abatimento no ótimo é \(\Theta'(\mu^*) = 20 \times 0{,}704 = 14{,}08\) por unidade de \(\mu\). Convertendo para custo por tonelada de CO₂ abatida: cada unidade de \(\mu\) reduz 50 toneladas, logo o custo marginal por tonelada é \(14{,}08 / 50 = 0{,}282\). Igualdade confirmada: \(\text{SCC} = \text{CMgA}\) no ótimo. ✓

---

**(d) Com \(r = 1\%\)**

\[
-20\mu_1 + \frac{50(1 - \mu_1)}{1{,}01} = 0
\]

\[
-20\mu_1 + 49{,}5(1 - \mu_1) = 0 \implies 69{,}5\mu_1 = 49{,}5
\]

\[
\mu_1^* = \frac{49{,}5}{69{,}5} \approx 0{,}712 \quad (71{,}2\%)
\]

Com taxa de desconto menor, o abatimento ótimo *aumenta* (de 70,4% para 71,2%) — porque os danos futuros recebem mais peso. O aumento é modesto neste exemplo simplificado (2 períodos), mas em modelos com horizonte de centenas de anos, a diferença é muito maior — como o debate Nordhaus–Stern demonstra.
