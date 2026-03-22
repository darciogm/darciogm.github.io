---
title: "Soluções — Capítulo 18"
---

# Soluções dos Exercícios — Capítulo 18

[← Voltar ao Capítulo 18](../cap18/index.md)

---

## ✏️ Exercício 18.1 {#ex-18-1}

**Consumidor vive dois períodos, \( Y_1 = 100 \), \( Y_2 = 110 \), \( U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1} \ln C_2 \). Taxa de juros \( r = 10\% \).**

### (a) Riqueza intertemporal \( W \)

A riqueza intertemporal é o valor presente do fluxo de renda:

\[
W = Y_1 + \frac{Y_2}{1 + r} = 100 + \frac{110}{1{,}1} = 100 + 100 = 200
\]

**Interpretação:** O consumidor dispõe de uma riqueza equivalente a R\$200 em termos de valor presente. Esse é o montante máximo que poderia consumir no período 1 se trouxesse toda a renda futura para o presente.

### (b) Escolhas ótimas \( C_1^* \) e \( C_2^* \)

O consumidor maximiza:

\[
\max_{C_1, C_2} \; \ln C_1 + \frac{1}{1{,}1} \ln C_2 \quad \text{s.a.} \quad C_1 + \frac{C_2}{1{,}1} = 200
\]

Pelo método de Lagrange, a condição de primeira ordem (igualdade da TMS à razão de preços intertemporais) é:

\[
\frac{\partial U / \partial C_1}{\partial U / \partial C_2} = 1 + r \implies \frac{1/C_1}{(1/1{,}1) \cdot (1/C_2)} = 1{,}1
\]

\[
\frac{C_2}{C_1} \cdot \frac{1}{1{,}1} = 1{,}1 \implies \frac{C_2}{C_1} = 1{,}21 \implies C_2 = 1{,}21 \, C_1
\]

Substituindo na restrição orçamentária:

\[
C_1 + \frac{1{,}21 \, C_1}{1{,}1} = 200 \implies C_1 + 1{,}1 \, C_1 = 200 \implies 2{,}1 \, C_1 = 200
\]

\[
\boxed{C_1^* = \frac{200}{2{,}1} \approx 95{,}24}
\]

\[
\boxed{C_2^* = 1{,}21 \times 95{,}24 \approx 115{,}24}
\]

**Nota alternativa:** Com a função \( U = \ln C_1 + \beta \ln C_2 \) onde \( \beta = 1/1{,}1 \), a fórmula geral dá \( C_1^* = \frac{W}{1 + \beta} = \frac{200}{1 + 1/1{,}1} = \frac{200}{2{,}1/1{,}1} = \frac{220}{2{,}1} \approx 104{,}76 \). Porém, atenção: usando a restrição corretamente, temos:

\[
C_1^* = \frac{1}{1 + \beta} \cdot W = \frac{1}{1 + 1/1{,}1} \cdot 200 = \frac{1{,}1}{2{,}1} \cdot 200 = \frac{220}{2{,}1} \approx 104{,}76
\]

\[
C_2^* = \frac{\beta(1+r)}{1 + \beta} \cdot W = \frac{(1/1{,}1)(1{,}1)}{2{,}1/1{,}1} \cdot 200 = \frac{1}{2{,}1/1{,}1} \cdot 200 = \frac{1{,}1}{2{,}1} \cdot 200 = \frac{220}{2{,}1} \approx 104{,}76
\]

Verificando: como \( \beta(1+r) = (1/1{,}1)(1{,}1) = 1 \), temos \( C_2^* = C_1^* \approx 104{,}76 \). De fato, quando o fator de desconto subjetivo é exatamente \( \beta = 1/(1+r) \), o consumidor deseja suavizar perfeitamente o consumo.

Portanto:

\[
\boxed{C_1^* = C_2^* \approx 104{,}76}
\]

### (c) Poupador ou tomador de empréstimo?

A poupança no período 1 é:

\[
S_1 = Y_1 - C_1^* = 100 - 104{,}76 = -4{,}76
\]

Como \( S_1 < 0 \), o consumidor é **tomador de empréstimo** (borrower). Ele toma emprestado aproximadamente R\$4,76 no período 1.

**Interpretação econômica:** A renda no período 2 (\( Y_2 = 110 \)) é relativamente alta em comparação com a do período 1 (\( Y_1 = 100 \)). Como o consumidor deseja suavizar seu consumo ao longo do tempo e a taxa de desconto subjetiva coincide com a taxa de juros, ele prefere antecipar parte da renda futura, tomando um pequeno empréstimo.

### (d) Se \( r \) sobe para 20%, como mudam \( C_1^* \) e \( C_2^* \)?

**Nova riqueza intertemporal:**

\[
W' = 100 + \frac{110}{1{,}2} = 100 + 91{,}67 = 191{,}67
\]

**Novas escolhas ótimas** (com \( \beta = 1/1{,}1 \) e \( r = 20\% \)):

\[
C_1^{*\prime} = \frac{1}{1 + \beta} \cdot W' = \frac{1{,}1}{2{,}1} \cdot 191{,}67 \approx 100{,}40
\]

\[
C_2^{*\prime} = \frac{\beta(1+r)}{1+\beta} \cdot W' = \frac{(1/1{,}1)(1{,}2)}{2{,}1/1{,}1} \cdot 191{,}67 = \frac{1{,}2}{2{,}1} \cdot 191{,}67 \approx 109{,}52
\]

**Decomposição em efeitos substituição e renda:**

- **Efeito substituição:** O aumento de \( r \) encarece o consumo presente relativamente ao futuro. Isso incentiva o consumidor a **reduzir \( C_1 \)** e **aumentar \( C_2 \)** (substituição intertemporal).

- **Efeito renda:** Como o consumidor era tomador de empréstimo (\( S_1 < 0 \)), o aumento da taxa de juros o torna mais pobre (o custo de sua dívida sobe). Isso reduz **ambos** \( C_1 \) e \( C_2 \).

- **Efeito líquido:** Ambos os efeitos atuam na mesma direção para \( C_1 \), que **diminui** (de 104,76 para 100,40). Para \( C_2 \), os efeitos são opostos: o efeito substituição aumenta \( C_2 \), mas o efeito renda o reduz. No caso, o efeito renda domina ligeiramente e \( C_2 \) também **diminui** (de 104,76 para 109,52 — na verdade, aqui o efeito substituição domina e \( C_2 \) sobe).

Resumindo:

| Variável | \( r = 10\% \) | \( r = 20\% \) | Variação |
|----------|---------------|---------------|----------|
| \( C_1^* \) | 104,76 | 100,40 | \(-4{,}36\) |
| \( C_2^* \) | 104,76 | 109,52 | \(+4{,}76\) |

Para o tomador de empréstimo, o aumento dos juros tem efeito renda negativo e efeito substituição que favorece consumo futuro. O consumo presente cai inequivocamente; o consumo futuro sobe porque o efeito substituição supera o efeito renda neste caso.

↩ [Voltar ao enunciado](../cap18/index.md#ex-18-1)

---

## ✏️ Exercício 18.2 {#ex-18-2}

**Firma considera investir em máquina: custo R\$500.000, vida útil 5 anos, depreciação linear, receita líquida anual R\$150.000.**

### (a) VPL para \( r = 8\% \) e \( r = 15\% \)

O VPL é dado por:

\[
\text{VPL} = -I_0 + \sum_{t=1}^{5} \frac{R_t}{(1+r)^t} = -500.000 + 150.000 \sum_{t=1}^{5} \frac{1}{(1+r)^t}
\]

O fator de anuidade é \( a(r, n) = \frac{1 - (1+r)^{-n}}{r} \).

**Para \( r = 8\% \):**

\[
a(0{,}08;\, 5) = \frac{1 - (1{,}08)^{-5}}{0{,}08} = \frac{1 - 0{,}6806}{0{,}08} = \frac{0{,}3194}{0{,}08} = 3{,}9927
\]

\[
\text{VPL}_{8\%} = -500.000 + 150.000 \times 3{,}9927 = -500.000 + 598.905 \approx \boxed{R\$\, 98.905}
\]

**Para \( r = 15\% \):**

\[
a(0{,}15;\, 5) = \frac{1 - (1{,}15)^{-5}}{0{,}15} = \frac{1 - 0{,}4972}{0{,}15} = \frac{0{,}5028}{0{,}15} = 3{,}3522
\]

\[
\text{VPL}_{15\%} = -500.000 + 150.000 \times 3{,}3522 = -500.000 + 502.830 \approx \boxed{R\$\, 2.830}
\]

**Interpretação:** O projeto é viável em ambas as taxas, porém a viabilidade se reduz drasticamente quando o custo de capital sobe de 8% para 15%. Isso ilustra a alta sensibilidade de projetos de investimento à taxa de juros.

### (b) Taxa Interna de Retorno (TIR)

A TIR é a taxa \( r^* \) tal que \( \text{VPL} = 0 \):

\[
500.000 = 150.000 \times a(r^*;\, 5) \implies a(r^*;\, 5) = \frac{500.000}{150.000} = 3{,}3333
\]

Por interpolação entre os valores calculados:

- \( a(0{,}15;\, 5) = 3{,}3522 \implies \text{VPL} = +2.830 \)
- \( a(0{,}16;\, 5) = \frac{1 - (1{,}16)^{-5}}{0{,}16} = \frac{1 - 0{,}4761}{0{,}16} = 3{,}2743 \implies \text{VPL} = -500.000 + 150.000 \times 3{,}2743 = -8.855 \)

Interpolando linearmente:

\[
r^* \approx 0{,}15 + \frac{2.830}{2.830 + 8.855} \times (0{,}16 - 0{,}15) = 0{,}15 + \frac{2.830}{11.685} \times 0{,}01 \approx 0{,}15 + 0{,}0024 = 0{,}1524
\]

\[
\boxed{\text{TIR} \approx 15{,}24\%}
\]

### (c) Decisão com Selic real de 8% e prêmio de risco setorial de 4%

O custo de capital relevante é:

\[
r = r_{\text{Selic}} + \text{prêmio de risco} = 8\% + 4\% = 12\%
\]

Para \( r = 12\% \):

\[
a(0{,}12;\, 5) = \frac{1 - (1{,}12)^{-5}}{0{,}12} = \frac{1 - 0{,}5674}{0{,}12} = \frac{0{,}4326}{0{,}12} = 3{,}6048
\]

\[
\text{VPL}_{12\%} = -500.000 + 150.000 \times 3{,}6048 = -500.000 + 540.720 = +40.720
\]

Como \( \text{VPL} > 0 \) (equivalentemente, \( \text{TIR} = 15{,}24\% > 12\% \)), o **projeto deve ser aceito**.

**Interpretação:** Mesmo incorporando o prêmio de risco setorial, o projeto gera valor econômico positivo de aproximadamente R\$40.720 em termos de valor presente. A TIR de 15,24% supera o custo de capital ajustado ao risco de 12%, confirmando a viabilidade.

↩ [Voltar ao enunciado](../cap18/index.md#ex-18-2)

---

## ✏️ Exercício 18.3 {#ex-18-3}

**Recurso não-renovável com \( S_0 = 1000 \) unidades, \( P_0 = 50 \), custo marginal de extração \( c = 10 \), \( r = 5\% \).**

### (a) Preço em 10 anos pela regra de Hotelling

A regra de Hotelling estabelece que a **renda de escassez** (preço líquido do custo de extração) deve crescer à taxa de juros:

\[
P_t - c = (P_0 - c)(1 + r)^t
\]

Para \( t = 10 \):

\[
P_{10} - 10 = (50 - 10)(1{,}05)^{10} = 40 \times 1{,}6289 = 65{,}16
\]

\[
\boxed{P_{10} = 65{,}16 + 10 = 75{,}16}
\]

**Interpretação:** O preço sobe de R\$50 para R\$75,16 em 10 anos. A lógica é que, em equilíbrio, o proprietário do recurso deve ser indiferente entre extrair hoje (e investir a receita à taxa \( r \)) e extrair no futuro. Isso requer que o lucro unitário da extração cresça exatamente à taxa de juros.

### (b) Redução do custo de extração para \( c = 5 \)

Com \( c' = 5 \), a nova trajetória de preços parte de:

\[
P_t - 5 = (P_0' - 5)(1{,}05)^t
\]

Os efeitos são:

1. **Efeito no preço inicial:** A redução do custo de extração aumenta a renda de escassez líquida para cada unidade. Com mais lucro por unidade, há incentivo para **extrair mais agora**, o que pressiona o preço inicial para baixo. Portanto, \( P_0' < P_0 \).

2. **Efeito na trajetória:** A renda de escassez \( (P_t - c') \) continua crescendo a \( r = 5\% \), mas partindo de um nível diferente. Como o preço inicial cai, a trajetória inteira se desloca para baixo.

3. **Velocidade de exaustão:** O recurso é **exaurido mais rapidamente**. A redução do custo torna a extração mais lucrativa em todos os períodos, aumentando a quantidade extraída. Com estoque fixo \( S_0 = 1000 \), a exaustão se antecipa.

**Intuição econômica:** A inovação tecnológica que reduz custos de extração funciona como um "aumento efetivo" do recurso em termos de valor, mas ao tornar a extração mais barata, acelera o esgotamento físico. Paradoxalmente, a tecnologia que deveria "economizar" o recurso pode apressar sua exaustão.

### (c) Aumento da taxa de juros para \( r = 10\% \)

Com \( r' = 10\% \), a extração se torna **mais rápida**. A intuição é:

- O custo de oportunidade de manter o recurso no solo aumenta. Deixar uma unidade no solo significa renunciar a um retorno de 10% (em vez de 5%) sobre o capital obtido com a venda.
- A regra de Hotelling exige que a renda de escassez cresça a 10%. Para que o mercado absorva quantidades decrescentes ao longo do tempo com preços subindo mais rapidamente, é necessário que **mais seja extraído no presente**.
- O preço inicial \( P_0 \) cai (maior oferta corrente) e o preço sobe mais rápido ao longo do tempo.

\[
\text{Com } r = 10\%: \quad P_{10} - 10 = (P_0'' - 10)(1{,}10)^{10}
\]

O estoque se esgota em um horizonte menor.

**Interpretação:** Taxas de juros altas favorecem a extração presente e penalizam a conservação. Isso tem implicações profundas para política ambiental: países com altas taxas de juros reais tendem a explorar mais rapidamente seus recursos naturais, uma previsão testável da teoria de Hotelling.

↩ [Voltar ao enunciado](../cap18/index.md#ex-18-3)

---

## ✏️ Exercício 18.4 {#ex-18-4}

**Dois projetos mutuamente excludentes:**

| | Projeto A | Projeto B |
|---|---|---|
| Investimento | 100.000 | 200.000 |
| Fluxo anual | 35.000 | 62.000 |
| Duração | 5 anos | 5 anos |
| TIR | 22,1% | 16,8% |

### (a) VPL de cada projeto para \( r = 10\% \)

O fator de anuidade para \( r = 10\% \) e \( n = 5 \):

\[
a(0{,}10;\, 5) = \frac{1 - (1{,}10)^{-5}}{0{,}10} = \frac{1 - 0{,}6209}{0{,}10} = 3{,}7908
\]

**Projeto A:**

\[
\text{VPL}_A = -100.000 + 35.000 \times 3{,}7908 = -100.000 + 132.678 = \boxed{32.678}
\]

**Projeto B:**

\[
\text{VPL}_B = -200.000 + 62.000 \times 3{,}7908 = -200.000 + 235.030 = \boxed{35.030}
\]

### (b) Qual projeto por cada critério?

- **Critério do VPL:** Projeto B (\( \text{VPL}_B = 35.030 > \text{VPL}_A = 32.678 \)).
- **Critério da TIR:** Projeto A (\( \text{TIR}_A = 22{,}1\% > \text{TIR}_B = 16{,}8\% \)).

Há **conflito** entre os dois critérios. Isso ocorre porque os projetos têm escalas diferentes de investimento.

### (c) Taxa de Fisher (taxa onde ambos têm mesmo VPL)

A taxa de Fisher \( r_F \) é a solução de \( \text{VPL}_A(r_F) = \text{VPL}_B(r_F) \):

\[
-100.000 + 35.000 \cdot a(r_F;\, 5) = -200.000 + 62.000 \cdot a(r_F;\, 5)
\]

\[
100.000 = (62.000 - 35.000) \cdot a(r_F;\, 5) = 27.000 \cdot a(r_F;\, 5)
\]

\[
a(r_F;\, 5) = \frac{100.000}{27.000} = 3{,}7037
\]

Precisamos encontrar \( r_F \) tal que \( a(r_F;\, 5) = 3{,}7037 \).

Testando valores:

- \( a(0{,}11;\, 5) = \frac{1 - (1{,}11)^{-5}}{0{,}11} = \frac{1 - 0{,}5935}{0{,}11} = 3{,}6959 \)
- \( a(0{,}105;\, 5) \approx 3{,}7429 \)

Interpolando:

\[
r_F \approx 0{,}105 + \frac{3{,}7429 - 3{,}7037}{3{,}7429 - 3{,}6959} \times (0{,}11 - 0{,}105) = 0{,}105 + \frac{0{,}0392}{0{,}0470} \times 0{,}005 \approx 0{,}105 + 0{,}0042 \approx 0{,}1092
\]

\[
\boxed{r_F \approx 10{,}9\%}
\]

**Interpretação:** Para taxas de desconto abaixo de 10,9%, o Projeto B tem VPL maior (a maior escala de investimento compensa). Acima de 10,9%, o Projeto A tem VPL maior. Na taxa de Fisher, ambos são equivalentes.

### (d) Por que o VPL é critério superior?

O VPL é considerado o critério superior ao da TIR por diversas razões:

1. **Maximização de valor:** O VPL mede diretamente a **criação de riqueza** em termos monetários. A TIR mede rentabilidade percentual, que não considera a escala do investimento. Um projeto com TIR de 50% sobre R\$1.000 gera menos valor do que um com TIR de 20% sobre R\$1.000.000.

2. **Problemas de escala:** Como ilustrado neste exercício, a TIR favorece o Projeto A (menor e mais rentável percentualmente), enquanto o VPL corretamente identifica que o Projeto B cria mais riqueza para o acionista.

3. **Hipótese de reinvestimento:** A TIR assume implicitamente que os fluxos intermediários são reinvestidos à própria TIR, o que é irrealista. O VPL assume reinvestimento ao custo de capital, hipótese mais razoável.

4. **Existência e unicidade:** A TIR pode não existir ou não ser única em projetos com fluxos de caixa não convencionais (alternância de sinais). O VPL é sempre bem definido.

5. **Aditividade:** O VPL é aditivo — o VPL de uma carteira é a soma dos VPLs individuais. A TIR não possui essa propriedade.

↩ [Voltar ao enunciado](../cap18/index.md#ex-18-4)

---

## ✏️ Exercício 18.5 {#ex-18-5}

### (a) Impacto da redução da taxa de juros real de longo prazo de 6% para 3%

A afirmação está fundamentada em sólida base teórica. A taxa de juros real afeta o investimento produtivo por múltiplos canais:

**Canal do custo de capital:** O custo de uso do capital \( c_K \) é dado por:

\[
c_K = (r + \delta) \cdot p_K
\]

onde \( \delta \) é a taxa de depreciação e \( p_K \) o preço do bem de capital. Uma redução de \( r \) de 6% para 3% pode reduzir \( c_K \) significativamente. Por exemplo, com \( \delta = 5\% \) e \( p_K = 1 \):

\[
c_K^{6\%} = 0{,}06 + 0{,}05 = 0{,}11 \quad \implies \quad c_K^{3\%} = 0{,}03 + 0{,}05 = 0{,}08
\]

Uma redução de 27% no custo de uso do capital, o que expande substancialmente o conjunto de projetos viáveis.

**Canal do VPL — sensibilidade de projetos de longo prazo:**

Considere um projeto com fluxo perpétuo \( R \) por ano. Seu VPL é:

\[
\text{VPL} = -I_0 + \frac{R}{r}
\]

A redução de \( r \) de 6% para 3% **dobra** o valor presente dos fluxos futuros. Para projetos de prazo mais curto, o efeito é menor, mas ainda expressivo. Por exemplo, para uma anuidade de 20 anos com fluxo \( R = 100 \):

\[
a(0{,}06;\, 20) = 11{,}47 \quad \implies \quad a(0{,}03;\, 20) = 14{,}88
\]

Um aumento de 30% no valor presente.

**Considerações empíricas para o Brasil:** O Brasil historicamente apresenta taxas de juros reais entre as mais altas do mundo. Isso constitui um obstáculo estrutural ao investimento, especialmente em setores intensivos em capital e com maturação longa (infraestrutura, energia, saneamento). A redução permanente e crível da taxa real de 6% para 3% induziria: (i) viabilização de projetos antes rejeitados; (ii) aumento do estoque de capital de equilíbrio; (iii) realocação para setores de retorno mais longo. O efeito seria de fato "enorme", embora a magnitude exata dependa da elasticidade-juro do investimento agregado.

### (b) Por que a regra de Hotelling pode não se verificar empiricamente para preços do petróleo

A regra de Hotelling prevê que a renda de escassez \( (P_t - c_t) \) cresce à taxa de juros. Empiricamente, os preços do petróleo não seguem essa trajetória suave por diversas razões:

1. **Progresso tecnológico na extração:** Inovações (fraturamento hidráulico, perfuração horizontal, recuperação terciária) reduzem continuamente o custo \( c_t \), deslocando a trajetória de preços para baixo. A regra de Hotelling assume tecnologia constante.

2. **Descoberta de novas reservas:** O estoque \( S \) não é fixo. Novas jazidas são continuamente descobertas (pré-sal, xisto), efetivamente "reiniciando" o horizonte de exaustão e reduzindo a renda de escassez corrente.

3. **Poder de mercado (OPEP):** O modelo de Hotelling assume mercados competitivos. A OPEP exerce poder de cartel, manipulando quantidades e preços de forma estratégica, gerando volatilidade que não corresponde ao crescimento suave previsto.

4. **Incerteza e choques:** Guerras, revoluções, pandemias, transições energéticas e mudanças regulatórias geram choques imprevisíveis sobre oferta e demanda. O modelo determinístico de Hotelling não captura essa volatilidade.

5. **Substitutos e backstop technology:** A existência de fontes de energia alternativas (solar, eólica, nuclear) coloca um teto no preço de longo prazo. À medida que renováveis barateiam, o preço do petróleo é pressionado para baixo, contrariando a trajetória ascendente de Hotelling.

6. **Taxa de desconto variável:** O modelo pressupõe uma taxa de juros constante. Na prática, \( r \) varia ao longo do tempo, alterando continuamente a trajetória ótima.

Assim, a regra de Hotelling é mais útil como **benchmark teórico** e referência para pensar sobre alocação intertemporal de recursos do que como previsão empírica acurada.

### (c) Para infraestrutura de longo prazo: taxa real de juros ou estabilidade regulatória?

A resposta é que **ambos importam, mas a estabilidade regulatória tende a ser mais determinante**. A análise pelo VPL fundamenta essa conclusão:

**Efeito da taxa de juros real:**

Para projetos de 20-30 anos, a sensibilidade à taxa de desconto é alta:

\[
\text{VPL} = -I_0 + \sum_{t=1}^{30} \frac{R_t}{(1+r)^t}
\]

Uma redução de \( r \) de 6% para 4% aumenta \( a(r;\, 30) \) de 13,76 para 17,29 — um acréscimo de 25,6% no valor presente. Isso é relevante.

**Efeito da instabilidade regulatória (prêmio de risco):**

Porém, a instabilidade regulatória entra na taxa de desconto via **prêmio de risco regulatório** \( \pi_{\text{reg}} \):

\[
r_{\text{efetivo}} = r_{\text{real}} + \pi_{\text{setorial}} + \pi_{\text{reg}}
\]

Em ambientes regulatoriamente instáveis, \( \pi_{\text{reg}} \) pode ser muito elevado (5-10 p.p. ou mais). Isso pode dominar completamente o efeito de uma redução na taxa básica. Por exemplo:

- Cenário A: \( r = 6\% \), \( \pi_{\text{reg}} = 2\% \) \( \implies r_{\text{efetivo}} = 8\% \), \( a(0{,}08;\, 30) = 11{,}26 \)
- Cenário B: \( r = 4\% \), \( \pi_{\text{reg}} = 8\% \) \( \implies r_{\text{efetivo}} = 12\% \), \( a(0{,}12;\, 30) = 8{,}06 \)

Mesmo com taxa real menor, a instabilidade regulatória eleva o custo de capital efetivo e **reduz o VPL**.

**Além disso**, a instabilidade regulatória afeta não apenas a taxa de desconto, mas os **próprios fluxos de caixa \( R_t \)**. Se o governo pode alterar tarifas, revogar concessões ou mudar regras tributárias, os fluxos esperados se reduzem e sua variância aumenta. Isso constitui um efeito de primeira ordem sobre o VPL.

**Conclusão:** O governo deveria priorizar a estabilidade regulatória. Uma taxa de juros real baixa é condição necessária mas não suficiente para atrair investimento em infraestrutura de longo prazo. O prêmio de risco regulatório, ao ser aplicado sobre fluxos de caixa de 20-30 anos, tem efeito cumulativo devastador sobre o VPL. Marcos regulatórios claros, contratos críveis e instituições sólidas reduzem \( \pi_{\text{reg}} \) e são, portanto, tão ou mais importantes que a política monetária para viabilizar grandes projetos de infraestrutura.

↩ [Voltar ao enunciado](../cap18/index.md#ex-18-5)
