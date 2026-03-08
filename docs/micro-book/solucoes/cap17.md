---
title: "Soluções — Capítulo 17"
---

# Soluções dos Exercícios — Capítulo 17

[← Voltar ao Capítulo 17](../cap17/index.md)

---

## Exercício 17.1 {#ex-17-1}

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

## Exercício 17.2 {#ex-17-2}

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

## Exercício 17.3 {#ex-17-3}

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

## Exercício 17.4 {#ex-17-4}

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

## Exercício 17.5 {#ex-17-5}

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
