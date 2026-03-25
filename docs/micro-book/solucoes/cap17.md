---
title: "Soluções — Capítulo 17"
---

# Soluções dos Exercícios — Capítulo 17

[← Voltar ao Capítulo 17](../cap17/index.md)

---

## ✏️ Exercício 17.1 {#ex-17-1}

**Trabalhador com \( U(C,L) = \ln C + 2\ln L \). Dotação de tempo \( T = 24 \), renda não-laboral \( V = 0 \), salário \( w \).**

**(a) Derivar as demandas ótimas \( C^*(w) \) e \( L^*(w) \).**

A restrição orçamentária do consumidor é:

\[
C = w(T - L) + V = w(24 - L) + V
\]

Com \( V = 0 \):

\[
C = w(24 - L)
\]

Montando o lagrangeano:

\[
\mathcal{L} = \ln C + 2\ln L + \lambda\bigl[w(24 - L) - C\bigr]
\]

Condições de primeira ordem:

\[
\frac{\partial \mathcal{L}}{\partial C} = \frac{1}{C} - \lambda = 0 \implies \lambda = \frac{1}{C}
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = \frac{2}{L} - \lambda w = 0 \implies \lambda = \frac{2}{wL}
\]

Igualando as expressões de \( \lambda \):

\[
\frac{1}{C} = \frac{2}{wL} \implies wL = 2C
\]

Substituindo na restrição \( C = w(24 - L) \):

\[
wL = 2w(24 - L) \implies wL = 48w - 2wL \implies 3wL = 48w \implies L^* = 16
\]

\[
C^* = w(24 - 16) = 8w
\]

**(b) Obter a oferta de trabalho \( h^*(w) \). Ela depende de \( w \)? Interpretar.**

A oferta de trabalho é:

\[
h^* = T - L^* = 24 - 16 = 8
\]

A oferta de trabalho **não depende do salário**. Isso ocorre porque, com preferências do tipo Cobb-Douglas e renda não-laboral nula, os efeitos substituição e renda de uma variação salarial se cancelam perfeitamente. O efeito substituição (salário maior torna o lazer mais caro, incentivando mais trabalho) é exatamente compensado pelo efeito renda (salário maior aumenta a renda real, incentivando mais lazer). A curva de oferta de trabalho é, portanto, perfeitamente inelástica (vertical) em \( h = 8 \).

**(c) Agora suponha \( V = 48 \). Derivar \( h^*(w) \) e mostrar que a oferta de trabalho é decrescente em \( w \). Interpretar.**

Com \( V = 48 \), a restrição orçamentária passa a ser:

\[
C = w(24 - L) + 48
\]

Das condições de primeira ordem (que não se alteram na relação \( wL = 2C \)):

\[
wL = 2\bigl[w(24 - L) + 48\bigr]
\]

\[
wL = 48w - 2wL + 96 \implies 3wL = 48w + 96 \implies L^* = 16 + \frac{32}{w}
\]

A oferta de trabalho é:

\[
h^*(w) = 24 - L^* = 24 - 16 - \frac{32}{w} = 8 - \frac{32}{w}
\]

Verificando que é decrescente em \( w \): na verdade, derivando:

\[
\frac{dh^*}{dw} = \frac{32}{w^2} > 0
\]

Observe que \( h^* \) é **crescente** em \( w \), porém converge para 8 por baixo. A questão relevante é que, comparado ao caso sem renda não-laboral, a oferta de trabalho é **menor** para todo \( w \). A presença de renda não-laboral \( V > 0 \) gera um efeito renda puro que reduz a oferta de trabalho: como o trabalhador já dispõe de renda independente do trabalho, ele "compra" mais lazer.

Para valores baixos de \( w \), o trabalhador pode até não ofertar trabalho. A condição de participação requer \( h^* > 0 \):

\[
8 - \frac{32}{w} > 0 \implies w > 4
\]

Portanto, o salário de reserva é \( w_R = 4 \). Abaixo desse valor, o trabalhador não participa do mercado de trabalho — a renda não-laboral é suficiente para que o custo de oportunidade do lazer não compense.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-1)

---

## ✏️ Exercício 17.2 {#ex-17-2}

**Mercado de trabalho competitivo com oferta \( H^s = 100w \) e demanda \( H^d = 4000 - 100w \).**

**(a) Encontrar salário e emprego de equilíbrio.**

No equilíbrio competitivo, \( H^s = H^d \):

\[
100w = 4000 - 100w \implies 200w = 4000 \implies w^* = 20
\]

\[
H^* = 100 \times 20 = 2000
\]

O equilíbrio competitivo ocorre com salário \( w^* = 20 \) e emprego \( H^* = 2{.}000 \) trabalhadores.

**(b) Se o governo impõe salário mínimo \( w_{\min} = 25 \), qual o emprego? E o excesso de oferta (desemprego)?**

Com \( w_{\min} = 25 > w^* = 20 \), o salário mínimo é efetivo (binding). O emprego é determinado pelo lado curto do mercado (a demanda):

\[
H^d(25) = 4000 - 100 \times 25 = 4000 - 2500 = 1{.}500
\]

A oferta de trabalho ao salário mínimo é:

\[
H^s(25) = 100 \times 25 = 2{.}500
\]

O excesso de oferta (desemprego) é:

\[
\text{Desemprego} = H^s - H^d = 2{.}500 - 1{.}500 = 1{.}000 \text{ trabalhadores}
\]

O salário mínimo acima do equilíbrio gera desemprego: há mais pessoas dispostas a trabalhar a esse salário do que vagas disponíveis.

**(c) Calcular o peso morto (DWL) do salário mínimo.**

O peso morto corresponde ao triângulo entre as curvas de oferta e demanda, do nível de emprego com salário mínimo (\( H = 1{.}500 \)) ao nível de equilíbrio (\( H = 2{.}000 \)).

Para calcular, precisamos dos salários implícitos nas curvas para esses níveis de emprego. Invertendo as curvas:

- Curva de oferta inversa: \( w^s = \frac{H}{100} \)
- Curva de demanda inversa: \( w^d = \frac{4000 - H}{100} = 40 - \frac{H}{100} \)

Em \( H = 1{.}500 \):

- \( w^s(1500) = 15 \)
- \( w^d(1500) = 25 \)

Em \( H = 2{.}000 \):

- \( w^s(2000) = w^d(2000) = 20 \)

O DWL é a área do triângulo:

\[
DWL = \frac{1}{2} \times (H^* - H_{\min}) \times (w^d - w^s)\big|_{H=1500}
\]

\[
DWL = \frac{1}{2} \times (2000 - 1500) \times (25 - 15) = \frac{1}{2} \times 500 \times 10 = 2{.}500
\]

O peso morto do salário mínimo é \( DWL = 2{.}500 \) unidades monetárias. Esse valor representa a perda líquida de bem-estar social — transações mutuamente benéficas que deixam de ocorrer porque o salário mínimo impede que o mercado atinja o equilíbrio.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-2)

---

## ✏️ Exercício 17.3 {#ex-17-3}

**Monopsonista enfrenta oferta de trabalho \( w = 10 + 0{,}5H \) e \( VPMgL = 50 - H \).**

**(a) Derivar o custo marginal do trabalho (despesa marginal).**

O custo total do trabalho para o monopsonista é:

\[
CT_L = w \cdot H = (10 + 0{,}5H) \cdot H = 10H + 0{,}5H^2
\]

A despesa marginal (custo marginal do fator) é:

\[
DMg = \frac{dCT_L}{dH} = 10 + H
\]

Note que a despesa marginal tem o mesmo intercepto da curva de oferta inversa, mas o dobro da inclinação. Isso ocorre porque, ao contratar um trabalhador adicional, o monopsonista deve elevar o salário não apenas para o novo trabalhador, mas para todos os já empregados.

**(b) Encontrar emprego e salário escolhidos pelo monopsonista.**

O monopsonista maximiza lucro igualando a despesa marginal ao valor do produto marginal do trabalho:

\[
DMg = VPMgL \implies 10 + H = 50 - H \implies 2H = 40 \implies H_m = 20
\]

O salário é determinado pela curva de oferta ao nível de emprego escolhido:

\[
w_m = 10 + 0{,}5 \times 20 = 10 + 10 = 20
\]

O monopsonista emprega \( H_m = 20 \) trabalhadores ao salário \( w_m = 20 \).

**(c) Comparar com o equilíbrio competitivo. Calcular a exploração monopsonística.**

No equilíbrio competitivo, oferta igual à demanda (ou seja, \( w = VPMgL \)):

\[
10 + 0{,}5H = 50 - H \implies 1{,}5H = 40 \implies H_c = \frac{80}{3} \approx 26{,}67
\]

\[
w_c = 10 + 0{,}5 \times \frac{80}{3} = 10 + \frac{40}{3} = \frac{70}{3} \approx 23{,}33
\]

Comparando:

| | Monopsônio | Competitivo |
|---|---|---|
| Emprego | 20 | 26,67 |
| Salário | 20 | 23,33 |

O monopsonista emprega menos trabalhadores e paga salário menor que o equilíbrio competitivo.

A **exploração monopsonística** é definida como a diferença entre o valor do produto marginal do trabalho e o salário pago:

\[
\text{Exploração} = VPMgL(H_m) - w_m = (50 - 20) - 20 = 30 - 20 = 10
\]

Cada trabalhador recebe um salário 10 unidades monetárias abaixo de sua contribuição marginal ao valor da produção. Essa diferença é a medida da exploração monopsonística no sentido de Joan Robinson: o poder de mercado do empregador permite que ele pague menos que a produtividade marginal dos trabalhadores, apropriando-se de parte do excedente.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-3)

---

## ✏️ Exercício 17.4 {#ex-17-4}

**Sindicato maximiza a folha salarial total \( R = w \cdot H^d(w) \), com \( H^d(w) = 1000 - 20w \).**

**(a) Encontrar o salário que maximiza \( R \).**

A receita total (folha salarial) é:

\[
R(w) = w \cdot (1000 - 20w) = 1000w - 20w^2
\]

Condição de primeira ordem:

\[
\frac{dR}{dw} = 1000 - 40w = 0 \implies w^* = 25
\]

Verificando a condição de segunda ordem:

\[
\frac{d^2R}{dw^2} = -40 < 0 \quad \checkmark
\]

O salário que maximiza a folha salarial total é \( w^* = 25 \).

**(b) Qual o nível de emprego resultante?**

\[
H^d(25) = 1000 - 20 \times 25 = 1000 - 500 = 500
\]

O emprego resultante é \( H = 500 \) trabalhadores, e a folha salarial total é:

\[
R = 25 \times 500 = 12{.}500
\]

**(c) Comparar com o equilíbrio competitivo (supondo oferta perfeitamente elástica em \( w = 15 \)).**

Com oferta perfeitamente elástica em \( w_c = 15 \), o emprego competitivo é:

\[
H_c = 1000 - 20 \times 15 = 1000 - 300 = 700
\]

A folha salarial competitiva seria:

\[
R_c = 15 \times 700 = 10{.}500
\]

Comparação:

| | Sindicato | Competitivo |
|---|---|---|
| Salário | 25 | 15 |
| Emprego | 500 | 700 |
| Folha salarial | 12.500 | 10.500 |

O sindicato eleva o salário de 15 para 25 (aumento de 66,7%), mas ao custo de reduzir o emprego de 700 para 500 trabalhadores (queda de 28,6%). A folha salarial total aumenta de 10.500 para 12.500.

Esse resultado ilustra o **trade-off fundamental** da ação sindical: o sindicato consegue elevar os salários acima do nível competitivo, porém à custa de desemprego entre seus membros. Os 500 trabalhadores empregados ganham mais, mas 200 trabalhadores que estariam empregados no equilíbrio competitivo ficam desempregados. Há, portanto, um conflito distributivo dentro da própria classe trabalhadora entre insiders (empregados ao salário sindical) e outsiders (desempregados involuntários).

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-4)

---

## ✏️ Exercício 17.5 {#ex-17-5}

**Discussão baseada na teoria e em evidências empíricas brasileiras.**

**(a) Por que o "efeito farol" do salário mínimo é particularmente relevante em economias com alta informalidade?**

O **efeito farol** (*lighthouse effect*), conceito desenvolvido por estudos sobre o mercado de trabalho brasileiro, refere-se ao fenômeno pelo qual o salário mínimo funciona como um indexador ou referência salarial mesmo em segmentos do mercado de trabalho onde não é legalmente obrigatório, como o setor informal e o trabalho autônomo.

Em economias com elevada informalidade, como a brasileira, esse efeito é particularmente relevante por diversas razões:

1. **Coordenação de expectativas**: Em mercados informais onde não há contratos formais nem negociações coletivas, o salário mínimo serve como um ponto focal (no sentido de Schelling) para a formação de salários. Empregadores e trabalhadores informais utilizam o mínimo como referência para balizar suas negociações, mesmo sem obrigação legal.

2. **Alcance da política salarial**: Se o salário mínimo afetasse apenas o setor formal, seu impacto distributivo seria limitado em países onde 30–40% da força de trabalho é informal. O efeito farol amplia o alcance da política de salário mínimo, permitindo que reajustes do mínimo beneficiem também trabalhadores informais.

3. **Previdência e transferências**: No Brasil, o piso de benefícios previdenciários e de programas como o BPC (Benefício de Prestação Continuada) é vinculado ao salário mínimo. Isso cria um canal adicional pelo qual o mínimo afeta a renda de trabalhadores informais e inativos.

4. **Efeito numerário**: Em regiões e mercados com baixa produtividade, o salário mínimo torna-se a unidade de conta para múltiplos de remuneração ("ganho dois salários mínimos"), reforçando seu papel de referência mesmo na ausência de vínculo formal.

Evidências empíricas para o Brasil (Neri, Gonzaga e Camargo, 2001; Lemos, 2009) confirmam que aumentos do salário mínimo têm efeitos significativos sobre a distribuição de rendimentos no setor informal, com compressão salarial ao redor do valor do mínimo — consistente com a hipótese do efeito farol.

**(b) Em um mercado de trabalho monopsônico, um salário mínimo pode simultaneamente elevar emprego e salários? Ilustrar graficamente.**

Sim, este é um dos resultados mais importantes da teoria do monopsônio aplicada ao mercado de trabalho, demonstrado formalmente por Stigler (1946) e desenvolvido por Manning (2003).

No monopsônio sem intervenção (como visto no Exercício 17.3), o empregador fixa emprego onde \( DMg = VPMgL \) e paga o salário da curva de oferta, gerando:

- Emprego \( H_m < H_c \)
- Salário \( w_m < w_c \)

Quando se impõe um salário mínimo \( \bar{w} \) tal que \( w_m < \bar{w} \leq w_c \), a curva de oferta de trabalho torna-se **horizontal** ao nível \( \bar{w} \) até o ponto onde a curva de oferta original atinge esse valor. Consequentemente:

- A despesa marginal torna-se igual a \( \bar{w} \) (constante) nesse trecho, pois o monopsonista não precisa mais elevar o salário de todos para contratar um trabalhador adicional.
- O monopsonista iguala \( \bar{w} = VPMgL \), resultando em emprego maior que \( H_m \).

Graficamente, a descrição é a seguinte:

- **Eixo horizontal**: emprego \( H \); **eixo vertical**: salário \( w \).
- Curva de oferta de trabalho \( S \) (inclinação positiva).
- Curva de despesa marginal \( DMg \) (acima de \( S \), com o dobro da inclinação).
- Curva \( VPMgL \) (inclinação negativa).
- Sem intervenção: equilíbrio em \( (H_m, w_m) \).
- Com salário mínimo \( \bar{w} \): a curva de oferta efetiva torna-se horizontal em \( \bar{w} \) até encontrar \( S \); a despesa marginal coincide com \( \bar{w} \) nesse trecho e depois salta para a \( DMg \) original. O novo equilíbrio ocorre em \( (H', \bar{w}) \), com \( H' > H_m \) e \( \bar{w} > w_m \).

Isso demonstra que, em mercados monopsônicos, a imposição de um salário mínimo moderado pode **simultaneamente** elevar salários e emprego — um resultado impossível no modelo competitivo. A intuição é que o salário mínimo elimina parte do poder de monopsônio, impedindo que o empregador restrinja o emprego para deprimir salários.

Esse resultado teórico é empiricamente relevante para setores com poucos empregadores (cidades pequenas, mercados de trabalho pouco qualificado), e ajuda a explicar os achados de Card e Krueger (1994), que encontraram efeitos nulos ou positivos do salário mínimo sobre o emprego em redes de fast-food nos EUA.

**(c) Quais os principais canais pelos quais aumentos do salário mínimo podem afetar a distribuição de renda no Brasil?**

Os principais canais são:

1. **Canal do mercado de trabalho formal**: O aumento direto da remuneração dos trabalhadores que recebem o mínimo ou valores próximos a ele. No Brasil, uma parcela significativa dos trabalhadores formais recebe exatamente um salário mínimo, de modo que reajustes têm impacto direto sobre a base da distribuição salarial. Esse efeito tende a **comprimir** a distribuição de salários pela base.

2. **Canal do setor informal (efeito farol)**: Conforme discutido no item (a), o salário mínimo serve como referência para remunerações no setor informal. Aumentos do mínimo tendem a elevar os rendimentos de trabalhadores informais que ganham próximo ao mínimo, embora com elasticidade menor que no setor formal.

3. **Canal previdenciário e assistencial**: O piso dos benefícios do INSS (aposentadorias, pensões) e o BPC são constitucionalmente vinculados ao salário mínimo. Aumentos reais do mínimo elevam automaticamente a renda de aposentados e beneficiários de programas assistenciais, com forte impacto sobre a renda de idosos e pessoas com deficiência em domicílios de baixa renda.

4. **Canal fiscal**: Aumentos do salário mínimo elevam os gastos previdenciários e assistenciais do governo, gerando pressão fiscal. Isso pode exigir ajustes tributários ou cortes em outros programas, com efeitos distributivos ambíguos.

5. **Canal do emprego**: Se o aumento do salário mínimo for excessivo em relação à produtividade, pode gerar desemprego ou informalização, prejudicando justamente os trabalhadores menos qualificados. Esse efeito negativo pode parcialmente compensar os ganhos distributivos dos demais canais.

6. **Canal regional**: O Brasil apresenta grandes disparidades regionais de produtividade. Um salário mínimo nacional uniforme tem efeito relativo muito maior em regiões de menor renda per capita (Norte e Nordeste), onde uma parcela maior dos trabalhadores ganha próximo ao mínimo. Isso confere ao salário mínimo um papel de **convergência regional** de renda, mas também pode gerar maior desemprego e informalidade nessas regiões.

Evidências empíricas brasileiras (Firpo e Reis, 2007; Saboia, 2007) sugerem que a política de valorização do salário mínimo adotada a partir de 2004 contribuiu significativamente para a redução da desigualdade de renda no Brasil, principalmente através dos canais 1, 2 e 3. O coeficiente de Gini brasileiro caiu de 0,572 em 2004 para 0,519 em 2014, e estudos de decomposição atribuem parte relevante dessa queda aos efeitos diretos e indiretos do salário mínimo.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-5)

---

## ✏️ Exercício 17.6 {#ex-17-6}

**Trabalhador com preferências CES \(U(C, L) = \left(0{,}5\, C^{\rho} + 0{,}5\, L^{\rho}\right)^{1/\rho}\), com \(\rho = -1\), \(T = 24\), \(V = 0\).**

**(a) Derivar a demanda marshalliana por lazer.**

Com CES e \(\alpha = 0{,}5\), a elasticidade de substituição é \(\sigma = \frac{1}{1-\rho} = \frac{1}{1-(-1)} = \frac{1}{2} = 0{,}5\).

A demanda marshalliana por lazer com CES (e \(V = 0\), preço do consumo normalizado a 1) é:

\[
L^*(w) = \frac{w^{-\sigma}}{1 + w^{-\sigma}} \cdot T \cdot \frac{wT}{wT} = \frac{T}{1 + w^{\sigma}}
\]

Mais diretamente, das CPOs do problema CES com pesos iguais, obtemos:

\[
\frac{L}{C} = \left(\frac{1}{w}\right)^{\sigma} = w^{-\sigma}
\]

Combinando com a restrição \(C = w(24 - L)\):

\[
L = w^{-\sigma} \cdot w(24 - L) = w^{1-\sigma}(24 - L)
\]

\[
L\left(1 + w^{1-\sigma}\right) = 24\, w^{1-\sigma}
\]

\[
L^* = \frac{24\, w^{1-\sigma}}{1 + w^{1-\sigma}} = \frac{24}{1 + w^{\sigma - 1}} = \frac{24}{1 + w^{-0{,}5}}
\]

Equivalentemente, multiplicando numerador e denominador por \(w^{0{,}5}\):

\[
L^* = \frac{24\, w^{0{,}5}}{w^{0{,}5} + 1} = \frac{24\sqrt{w}}{\sqrt{w} + 1}
\]

**(b) Oferta de trabalho e backward-bending.**

\[
h^*(w) = 24 - L^* = 24 - \frac{24\sqrt{w}}{\sqrt{w} + 1} = \frac{24(\sqrt{w} + 1) - 24\sqrt{w}}{\sqrt{w} + 1} = \frac{24}{\sqrt{w} + 1}
\]

Para verificar o backward-bending, derivamos:

\[
\frac{dh^*}{dw} = -\frac{24}{(\sqrt{w} + 1)^2} \cdot \frac{1}{2\sqrt{w}} = -\frac{12}{\sqrt{w}(\sqrt{w} + 1)^2} < 0
\]

A derivada é **sempre negativa**, o que significa que, com \(\sigma = 0{,}5 < 1\) e \(V = 0\), a oferta de trabalho é **monotonicamente decrescente** em \(w\). O efeito renda domina o efeito substituição para todo \(w > 0\). A curva é backward-bending desde o início.

*Nota:* Isso ocorre porque a elasticidade de substituição é baixa (\(\sigma = 0{,}5\)), tornando o efeito substituição fraco. Com \(\sigma > 1\), o efeito substituição dominaria e a oferta seria crescente.

**(c) Salário que maximiza a oferta.**

Como \(h^*(w)\) é estritamente decrescente para todo \(w > 0\) (conforme mostrado no item b), não há máximo interior. A oferta é maximizada no limite quando \(w \to 0^+\), onde \(h^* \to 24\). Na prática, para que o modelo faça sentido, precisamos de uma elasticidade de substituição \(\sigma > 1\) para obter uma curva com máximo interior.

Se tivéssemos \(\sigma > 1\) (por exemplo, \(\rho > 0\)), a oferta seria inicialmente crescente e depois decrescente, com um máximo interior. Para o caso geral com \(V > 0\), a decomposição de Slutsky mostra que o ponto de inflexão ocorre onde \(\left|h^* \cdot \frac{\partial L^*}{\partial V}\right| = \left|\frac{\partial L^c}{\partial w}\right|\). No caso CES com \(\sigma < 1\), o efeito substituição é estruturalmente fraco, e o efeito renda domina em todas as faixas salariais.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-6)

---

## ✏️ Exercício 17.7 {#ex-17-7}

**Equação de Mincer: \(\ln w = 0{,}80 + 0{,}10 S + 0{,}04 X - 0{,}0006 X^2\).**

**(a) Retorno estimado da educação.**

O coeficiente de \(S\) é \(\hat{\beta}_1 = 0{,}10\). Isso significa que cada ano adicional de escolaridade está associado a um aumento de aproximadamente **10%** no salário-hora, *ceteris paribus*.

Formalmente: \(\frac{\partial \ln w}{\partial S} = 0{,}10\), o que implica \(\frac{\Delta w / w}{\Delta S} \approx 10\%\).

**(b) Diferencial entre superior completo e médio completo.**

Com \(S_1 = 16\) (superior) e \(S_2 = 11\) (médio), ambos com \(X = 10\):

\[
\ln w_1 - \ln w_2 = 0{,}10 \times (16 - 11) = 0{,}50
\]

Em termos percentuais:

\[
\frac{w_1 - w_2}{w_2} = e^{0{,}50} - 1 \approx 0{,}649 = 64{,}9\%
\]

Um trabalhador com ensino superior completo ganha, em média, **64,9% a mais** que um com ensino médio completo (mesma experiência).

**(c) Idade em que o salário atinge o pico.**

O perfil experiência-salário é maximizado quando:

\[
\frac{\partial \ln w}{\partial X} = 0{,}04 - 0{,}0012X = 0 \implies X^* = \frac{0{,}04}{0{,}0012} \approx 33{,}3 \text{ anos}
\]

Se o indivíduo tem \(S = 16\) anos de escolaridade e começou a estudar aos 6 anos:

\[
\text{Idade no pico} = 6 + S + X^* = 6 + 16 + 33{,}3 \approx 55 \text{ anos}
\]

Se tem \(S = 11\):

\[
\text{Idade no pico} = 6 + 11 + 33{,}3 \approx 50 \text{ anos}
\]

O salário atinge o pico entre **50 e 55 anos**, dependendo da escolaridade.

**(d) Viés de habilidade.**

O coeficiente \(\hat{\beta}_1 = 0{,}10\) pode **superestimar** o retorno causal da educação por causa do **viés de variável omitida** (viés de habilidade). Se indivíduos com maior habilidade inata (inteligência, motivação, redes de contato familiares) tendem tanto a obter mais educação quanto a receber salários mais altos — independentemente da educação —, então parte do efeito atribuído à educação na verdade reflete habilidade não observada.

Formalmente, se o verdadeiro modelo é \(\ln w = \beta_0 + \beta_1 S + \gamma A + \varepsilon\) (onde \(A\) é habilidade) e estimamos sem \(A\), o viés é:

\[
\text{plim } \hat{\beta}_1 = \beta_1 + \gamma \cdot \frac{\text{Cov}(S, A)}{\text{Var}(S)}
\]

Como \(\gamma > 0\) (habilidade eleva salários) e \(\text{Cov}(S, A) > 0\) (mais hábeis estudam mais), o viés é positivo: \(\hat{\beta}_1 > \beta_1\).

Estratégias empíricas para lidar com esse viés incluem: variáveis instrumentais (usando, por exemplo, proximidade a universidades como instrumento para educação), estimação com gêmeos (comparando gêmeos idênticos com escolaridade diferente) e descontinuidades em políticas educacionais. Estimativas com essas correções tendem a reduzir o retorno da educação em 1–3 pontos percentuais.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-7)

---

## ✏️ Exercício 17.8 {#ex-17-8}

**Monopsônio com \(w = 5 + H\) e \(VPMg_L = 65 - 2H\).**

**(a) Equilíbrio monopsonístico.**

O custo total do trabalho é:

\[
CT_L = w \cdot H = (5 + H) \cdot H = 5H + H^2
\]

O custo marginal do trabalho é:

\[
CMg_L = \frac{dCT_L}{dH} = 5 + 2H
\]

Igualando \(VPMg_L = CMg_L\):

\[
65 - 2H = 5 + 2H \implies 60 = 4H \implies H_m = 15
\]

O salário é determinado pela curva de oferta:

\[
w_m = 5 + 15 = 20
\]

O VPMg no ponto de emprego monopsonístico é \(VPMg_L(15) = 65 - 30 = 35\). A exploração monopsonística é \(35 - 20 = 15\).

**(b) Efeito do salário mínimo \(\bar{w} = 25\).**

Primeiro, verificamos que \(\bar{w} = 25 > w_m = 20\), portanto o salário mínimo é efetivo. Com o salário mínimo, o custo marginal do trabalho é constante em 25 até o ponto onde a curva de oferta atinge 25:

\[
25 = 5 + H \implies H = 20
\]

Para \(H \leq 20\), o \(CMg_L = 25\). O monopsonista iguala \(VPMg_L = 25\):

\[
65 - 2H = 25 \implies H = 20
\]

Como \(H = 20 \leq 20\), estamos no trecho horizontal. O novo emprego é \(H' = 20\).

O emprego **aumentou** de 15 para 20 (+33,3%), e o salário subiu de 20 para 25 (+25%). Este é o resultado clássico do salário mínimo em monopsônio: aumenta simultaneamente emprego e salário.

**(c) Salário mínimo que maximiza o emprego.**

O emprego é maximizado quando \(\bar{w}\) é igual ao salário competitivo. No equilíbrio competitivo, \(VPMg_L = w\):

\[
65 - 2H = 5 + H \implies 60 = 3H \implies H_c = 20, \quad w_c = 25
\]

Portanto, \(\bar{w}^* = 25\) é exatamente o salário que maximiza o emprego (restaurando o resultado competitivo com \(H = 20\)). Para qualquer \(\bar{w} > 25\), o emprego cai (pois entramos no regime competitivo onde o salário mínimo é binding acima do equilíbrio).

Neste caso particular, o salário mínimo do item (b) já é o que maximiza o emprego, coincidindo com o salário competitivo.

**(d) Salário mínimo que iguala o emprego ao do monopsônio.**

Queremos \(\bar{w}\) tal que o emprego com salário mínimo seja igual a \(H_m = 15\). Com salário mínimo acima do competitivo, o emprego é determinado pela demanda:

\[
VPMg_L = \bar{w}: \quad 65 - 2H = \bar{w} \implies H = \frac{65 - \bar{w}}{2}
\]

Igualando a 15:

\[
\frac{65 - \bar{w}}{2} = 15 \implies \bar{w} = 35
\]

Se o salário mínimo for fixado em \(\bar{w} = 35\), o emprego volta a ser 15 — igual ao monopsônio, mas com salário muito maior (35 vs. 20). Para qualquer \(\bar{w} > 35\), o emprego cai abaixo do nível monopsonístico. Isso ilustra que salários mínimos muito altos podem ser contraproducentes mesmo em mercados monopsonísticos.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-8)

---

## ✏️ Exercício 17.9 {#ex-17-9}

**Barganha de Nash: \(U_S = (w - 10)H\), \(\pi = (100 - H)H - wH\), poder de barganha \(\beta\).**

**(a) Demanda por trabalho da firma.**

A firma maximiza lucro para um salário dado:

\[
\pi = (100 - H)H - wH = 100H - H^2 - wH
\]

\[
\frac{d\pi}{dH} = 100 - 2H - w = 0 \implies H^d(w) = \frac{100 - w}{2}
\]

**(b) Salário negociado.**

Substituindo \(H^d(w)\) nas funções objetivo:

\[
U_S = (w - 10) \cdot \frac{100 - w}{2}
\]

\[
\pi = 100 \cdot \frac{100 - w}{2} - \left(\frac{100 - w}{2}\right)^2 - w \cdot \frac{100 - w}{2} = \frac{(100 - w)^2}{4}
\]

No ponto de desacordo, assumimos \(\pi^0 = 0\) (firma fecha) e \(U_S^0 = 0\) (trabalhadores recebem o salário de reserva). O problema de barganha de Nash é:

\[
\max_w \; \left[(w - 10) \cdot \frac{100 - w}{2}\right]^\beta \cdot \left[\frac{(100 - w)^2}{4}\right]^{1-\beta}
\]

Tomando logaritmo:

\[
\max_w \; \beta\left[\ln(w - 10) + \ln(100 - w) - \ln 2\right] + (1-\beta)\left[2\ln(100 - w) - \ln 4\right]
\]

\[
= \beta \ln(w - 10) + \beta \ln(100 - w) + 2(1-\beta)\ln(100 - w) + \text{const.}
\]

\[
= \beta \ln(w - 10) + (2 - \beta)\ln(100 - w) + \text{const.}
\]

CPO:

\[
\frac{\beta}{w - 10} - \frac{2 - \beta}{100 - w} = 0
\]

\[
\beta(100 - w) = (2 - \beta)(w - 10)
\]

\[
100\beta - \beta w = 2w - 20 - \beta w + 10\beta
\]

\[
100\beta - 10\beta = 2w - 20
\]

\[
90\beta + 20 = 2w
\]

\[
w^*(\beta) = 10 + 45\beta
\]

**(c) Resultado para \(\beta = 0{,}5\).**

\[
w^* = 10 + 45 \times 0{,}5 = 32{,}5
\]

\[
H^* = \frac{100 - 32{,}5}{2} = 33{,}75
\]

\[
\pi^* = \frac{(100 - 32{,}5)^2}{4} = \frac{67{,}5^2}{4} = \frac{4556{,}25}{4} = 1139{,}06
\]

No equilíbrio competitivo (\(w = w_0 = 10\)):

\[
H_c = \frac{100 - 10}{2} = 45, \quad \pi_c = \frac{90^2}{4} = 2025
\]

Comparação:

| | Barganha (\(\beta = 0{,}5\)) | Competitivo (\(w = 10\)) |
|---|---|---|
| Salário | 32,50 | 10 |
| Emprego | 33,75 | 45 |
| Lucro | 1.139 | 2.025 |

O sindicato eleva o salário em 225%, mas reduz o emprego em 25% e o lucro em 44%.

**(d) Quando \(\beta \to 1\).**

\[
\lim_{\beta \to 1} w^* = 10 + 45 = 55
\]

\[
H^* = \frac{100 - 55}{2} = 22{,}5
\]

Quando o sindicato tem todo o poder de barganha, ele maximiza \(U_S = (w - 10)H^d(w)\):

\[
\frac{dU_S}{dw} = H^d + (w - 10)\frac{dH^d}{dw} = \frac{100 - w}{2} + (w - 10)\left(-\frac{1}{2}\right) = \frac{100 - w - w + 10}{2} = \frac{110 - 2w}{2} = 0
\]

\[
w = 55
\]

Confirmando que \(\beta \to 1\) reproduz o monopólio sindical. A interpretação econômica é clara: quando o sindicato detém todo o poder de barganha, ele maximiza a renda líquida de seus membros sem considerar o lucro da firma, gerando o resultado de monopólio sindical — salário muito acima do competitivo e emprego significativamente menor. O parâmetro \(\beta\) permite uma transição contínua entre o resultado competitivo (\(\beta = 0\)) e o monopólio sindical (\(\beta = 1\)).

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-9)

---

## ✏️ Exercício 17.10 {#ex-17-10}

**Questão de reflexão — automação e polarização do mercado de trabalho.**

**(a) Efeito da automação sobre três grupos.**

A automação de tarefas rotineiras desloca para a **esquerda** a curva de demanda por trabalhadores de média qualificação (que realizam tarefas rotineiras — montadores, operadores, escriturários). Para trabalhadores de alta qualificação (analistas, gestores, programadores), a tecnologia é **complementar**: desloca a curva de demanda para a **direita**. Para trabalhadores de baixa qualificação em tarefas manuais não rotineiras (garçons, cuidadores, limpeza), o efeito direto é pequeno — a curva de demanda se mantém relativamente estável.

Graficamente:

- **Alta qualificação:** demanda se desloca para a direita → salário sobe, emprego sobe.
- **Média qualificação:** demanda se desloca para a esquerda → salário cai, emprego cai.
- **Baixa qualificação:** demanda relativamente estável → salário e emprego pouco afetados (mas a migração de trabalhadores de média para baixa pode pressionar salários para baixo neste segmento).

O resultado é uma distribuição de salários com formato de "U" — os extremos crescem e o meio encolhe — a chamada **polarização**.

**(b) Regras de Marshall e vulnerabilidade à automação.**

As regras de Marshall da demanda derivada ajudam a prever a vulnerabilidade:

1. **Elasticidade de substituição alta** (regra 1): ocupações cujas tarefas são facilmente codificáveis e executáveis por algoritmos ou robôs são mais vulneráveis. Trabalho de escritório (contabilidade, entrada de dados) é altamente substituível; trabalho de cuidado pessoal, não.

2. **Participação do trabalho no custo** (regra 3): setores intensivos em trabalho rotineiro (como centros de atendimento telefônico) têm maior incentivo para automatizar, pois a economia de custos é proporcionalmente maior.

3. **Elasticidade da demanda pelo produto** (regra 2): se a automação reduz custos e o produto tem demanda elástica, a produção pode expandir o suficiente para compensar parcialmente a perda de empregos (efeito escala positivo). Setores com demanda inelástica terão perdas de emprego mais severas.

4. **Oferta de capital/tecnologia** (regra 4): quanto mais barato e acessível o capital tecnológico (robôs, IA), mais rápida a substituição. A queda nos custos de computação e IA generativa acelera a automação.

**(c) IA generativa e inversão da polarização.**

A afirmação tem mérito parcial. A IA generativa (como modelos de linguagem e geradores de imagem) é particularmente eficaz em tarefas **cognitivas** que, até recentemente, eram consideradas seguras: redação, programação básica, análise de dados, tradução, design gráfico, diagnóstico médico preliminar. Isso ameaça ocupações de renda média-alta e alta, invertendo parcialmente o padrão de polarização.

No entanto, a afirmação é incompleta:

- A IA generativa **complementa** muitos trabalhadores cognitivos, aumentando sua produtividade em vez de substituí-los. Programadores que usam IA codificam mais rápido; advogados que usam IA revisam contratos mais rapidamente.
- Tarefas cognitivas complexas que exigem julgamento, criatividade genuína e interação social profunda permanecem difíceis de automatizar.
- A evidência empírica ainda é incipiente. Estudos preliminares (Eloundou et al., 2023) sugerem que a IA generativa "expõe" 80% das ocupações a algum grau de automação, mas o efeito líquido sobre emprego dependerá da velocidade de adoção, da regulação e da capacidade de requalificação.

**(d) Políticas públicas para mitigar efeitos distributivos.**

Políticas recomendadas incluem:

- **Investimento em educação e requalificação contínua** (*lifelong learning*): adaptar a força de trabalho às novas demandas, com ênfase em habilidades complementares à tecnologia (pensamento crítico, criatividade, comunicação, trabalho em equipe).
- **Fortalecimento de redes de proteção social**: seguro-desemprego mais generoso e ativo (modelo nórdico de flexicurity), com foco em recolocação.
- **Tributação progressiva sobre capital e renda de robôs**: se a automação transfere renda do trabalho para o capital, a base tributária deve acompanhar essa mudança. Propostas incluem tributação de robôs (Bill Gates) ou imposto sobre o valor adicionado por máquinas.
- **Renda básica universal (RBU)**: em cenário de automação massiva, pode ser necessária uma transferência incondicional financiada pela tributação do capital e de recursos naturais.
- **Políticas de concorrência no mercado de trabalho**: combater a concentração de empregadores (seção 17.7) e garantir que os ganhos de produtividade da automação sejam compartilhados com os trabalhadores, não apenas apropriados pelas firmas.

↩ [Voltar ao enunciado](../cap17/index.md#ex-17-10)

---
