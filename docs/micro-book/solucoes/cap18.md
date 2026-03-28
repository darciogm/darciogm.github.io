---
title: "Soluções — Capítulo 18"
---

# Soluções dos Exercícios — Capítulo 18

[← Voltar ao Capítulo 18](../cap18/exercicios.md)

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

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-1)

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

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-2)

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

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-3)

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

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-4)

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

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-5)

---

## ✏️ Exercício 18.6 {#ex-18-6}

**Consumidor com \( U = \sqrt{C_1} + 0{,}9\sqrt{C_2} \), \( Y_1 = 120 \), \( Y_2 = 55 \), \( r = 10\% \).**

### (a) Equação de Euler

A condição de primeira ordem iguala a utilidade marginal do consumo presente à utilidade marginal descontada do consumo futuro, ponderada por \( (1+r) \):

\[
u'(C_1) = \beta(1+r)u'(C_2) \implies \frac{1}{2\sqrt{C_1}} = 0{,}9 \times 1{,}1 \times \frac{1}{2\sqrt{C_2}}
\]

\[
\frac{1}{\sqrt{C_1}} = \frac{0{,}99}{\sqrt{C_2}} \implies \sqrt{C_2} = 0{,}99\sqrt{C_1} \implies C_2 = 0{,}9801 \, C_1
\]

### (b) Consumo ótimo

Riqueza intertemporal: \( W = 120 + 55/1{,}1 = 120 + 50 = 170 \).

Substituindo \( C_2 = 0{,}9801 C_1 \) na restrição:

\[
C_1 + \frac{0{,}9801 C_1}{1{,}1} = 170 \implies C_1(1 + 0{,}8910) = 170 \implies 1{,}8910 \, C_1 = 170
\]

\[
\boxed{C_1^* = \frac{170}{1{,}8910} \approx 89{,}90}
\]

\[
\boxed{C_2^* = 0{,}9801 \times 89{,}90 \approx 88{,}11}
\]

### (c) Classificação

Poupança: \( S = Y_1 - C_1^* = 120 - 89{,}90 = 30{,}10 > 0 \).

O consumidor é **poupador**. A renda é concentrada no período 1 (\( Y_1 = 120 \gg Y_2 = 55 \)), e o consumidor deseja suavizar o consumo ao longo do tempo, transferindo R$ 30,10 do período 1 para o período 2.

### (d) Se \( r \) cai para 5%

Nova riqueza: \( W' = 120 + 55/1{,}05 = 120 + 52{,}38 = 172{,}38 \).

Nova equação de Euler: \( C_2 = (0{,}9 \times 1{,}05)^2 C_1 = 0{,}945^2 C_1 = 0{,}8930 C_1 \).

\[
C_1(1 + 0{,}8930/1{,}05) = 172{,}38 \implies C_1(1 + 0{,}8505) = 172{,}38 \implies C_1^{*\prime} \approx 93{,}10
\]

Poupança: \( S' = 120 - 93{,}10 = 26{,}90 \).

O consumidor continua poupador (\( S' > 0 \)), mas poupa menos (R$ 26,90 vs. R$ 30,10).

**Interpretação:** O efeito substituição da queda de \( r \) reduz o incentivo a poupar (o retorno da poupança caiu). O efeito renda é ambíguo para o poupador, mas aqui ele é positivo porém insuficiente para compensar o efeito substituição. O resultado líquido é menos poupança — o consumidor "antecipa" mais consumo.

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-6)

---

## ✏️ Exercício 18.7 {#ex-18-7}

**Estação de tratamento de água: investimento R$ 10 milhões, receita R$ 1,2 milhão/ano, 20 anos, \( r_E = 14\% \).**

### (a) VPL do projeto

\[
VPL = -10.000.000 + 1.200.000 \times \frac{1 - (1{,}14)^{-20}}{0{,}14}
\]

O fator de anuidade: \( a(0{,}14;\, 20) = \frac{1 - (1{,}14)^{-20}}{0{,}14} = \frac{1 - 0{,}0728}{0{,}14} = \frac{0{,}9272}{0{,}14} = 6{,}6231 \).

\[
VPL = -10.000.000 + 1.200.000 \times 6{,}6231 = -10.000.000 + 7.947.720 = \boxed{-2.052.280}
\]

O projeto **não é viável** com \( r_E = 14\% \).

### (b) Com subsídio (investimento de R$ 7 milhões)

\[
VPL' = -7.000.000 + 7.947.720 = \boxed{+947.720}
\]

Com o subsídio, o projeto se torna viável (VPL > 0).

### (c) Com beta reduzido para 0,8

Novo custo de capital: \( r_E' = r_f + \beta' \times (E[r_m] - r_f) = 6\% + 0{,}8 \times 6{,}7\% = 6\% + 5{,}36\% = 11{,}36\% \).

Novo fator de anuidade: \( a(0{,}1136;\, 20) = \frac{1 - (1{,}1136)^{-20}}{0{,}1136} \).

\( (1{,}1136)^{20} = e^{20 \ln(1{,}1136)} = e^{20 \times 0{,}1074} = e^{2{,}148} \approx 8{,}567 \). Logo \( (1{,}1136)^{-20} \approx 0{,}1167 \).

\[
a(0{,}1136;\, 20) = \frac{1 - 0{,}1167}{0{,}1136} = \frac{0{,}8833}{0{,}1136} = 7{,}776
\]

\[
VPL'' = -10.000.000 + 1.200.000 \times 7{,}776 = -10.000.000 + 9.331.200 = \boxed{-668.800}
\]

A redução do risco regulatório melhora muito o VPL (de -2,05 mi para -0,67 mi), mas por si só não torna o projeto viável. Seria necessário uma combinação de menor risco regulatório **e** algum subsídio, ou uma redução adicional no beta.

**Comparação:** O subsídio direto de R$ 3 milhões é mais eficaz neste caso (+R$ 947 mil de VPL) do que a redução de risco (-R$ 669 mil). Porém, a redução de risco regulatório beneficia **todos** os projetos do setor, enquanto o subsídio beneficia apenas este projeto específico. A longo prazo, melhorar o ambiente regulatório é a política mais eficiente.

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-7)

---

## ✏️ Exercício 18.8 {#ex-18-8}

**Tesouro Prefixado (12% nominal, 3 anos) vs. Tesouro IPCA+ (6% real + IPCA, 3 anos). Inflação: 2%, 4% ou 8%, cada com prob. 1/3.**

### (a) Retorno real esperado

**Tesouro Prefixado:** O retorno nominal é fixo em 12%. O retorno real depende da inflação:

- Se \( \pi = 2\% \): \( r = (1{,}12/1{,}02) - 1 = 9{,}80\% \)
- Se \( \pi = 4\% \): \( r = (1{,}12/1{,}04) - 1 = 7{,}69\% \)
- Se \( \pi = 8\% \): \( r = (1{,}12/1{,}08) - 1 = 3{,}70\% \)

\[
E[r_{\text{pré}}] = \frac{1}{3}(9{,}80 + 7{,}69 + 3{,}70) = \frac{21{,}19}{3} = \boxed{7{,}06\%}
\]

**Tesouro IPCA+:** O retorno real é fixo em 6%, independentemente da inflação.

\[
E[r_{\text{IPCA+}}] = \boxed{6{,}00\%}
\]

### (b) Variância do retorno real

**Tesouro Prefixado:**

\[
\text{Var}(r_{\text{pré}}) = \frac{1}{3}[(9{,}80 - 7{,}06)^2 + (7{,}69 - 7{,}06)^2 + (3{,}70 - 7{,}06)^2]
\]

\[
= \frac{1}{3}[7{,}5076 + 0{,}3969 + 11{,}2896] = \frac{19{,}1941}{3} = \boxed{6{,}40\text{ p.p.}^2}
\]

**Tesouro IPCA+:** \( \text{Var}(r_{\text{IPCA+}}) = \boxed{0} \) (retorno real certo).

### (c) Preferência do investidor avesso ao risco

O Tesouro Prefixado tem retorno real esperado maior (7,06% > 6,00%), mas carrega risco inflacionário (variância positiva). O Tesouro IPCA+ oferece retorno real certo de 6%.

O **equivalente de certeza** do Tesouro Prefixado para um agente avesso ao risco é menor que seu valor esperado: \( EC < E[r_{\text{pré}}] = 7{,}06\% \). Se a aversão ao risco for suficientemente alta, o equivalente de certeza cairá abaixo de 6%, e o investidor preferirá o IPCA+. Para um investidor com aversão moderada, a diferença de 1,06 p.p. no retorno esperado pode ou não compensar o risco.

Na prática, a forte demanda por Tesouro IPCA+ no Brasil sugere que muitos investidores são suficientemente avessos ao risco inflacionário para aceitar o retorno real garantido menor.

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-8)

---

## ✏️ Exercício 18.9 {#ex-18-9}

**\( U = C_1^{0{,}5} C_2^{0{,}5} \), \( Y_1 = 200 \), \( Y_2 = 100 \), \( r = 8\% \).**

### (a) Consumo ótimo

Com Cobb-Douglas simétrica, o consumidor aloca metade da riqueza para cada período (em valor presente):

\[
W = 200 + \frac{100}{1{,}08} = 200 + 92{,}59 = 292{,}59
\]

\[
C_1^* = \frac{W}{2} = \frac{292{,}59}{2} = 146{,}30
\]

\[
C_2^* = (1+r)(W - C_1^*) = 1{,}08 \times 146{,}30 = 158{,}00
\]

Poupança: \( S = Y_1 - C_1^* = 200 - 146{,}30 = 53{,}70 > 0 \). O consumidor é **poupador**.

### (b) Restrição de crédito

Na solução irrestrita da parte (a), o consumidor já é poupador (\( S > 0 \)), então a restrição de crédito \( S \geq 0 \) **não é ativa** — a solução não muda.

Se os parâmetros fossem tais que a solução irrestrita implicasse \( S < 0 \) (o consumidor desejasse tomar empréstimo), a restrição de crédito forçaria \( C_1 = Y_1 \) e \( C_2 = Y_2 \): o consumidor ficaria preso ao ponto de dotação, sem poder suavizar o consumo. A perda de bem-estar seria a diferença entre a utilidade no ótimo irrestrito e a utilidade no ponto de dotação.

### (c) Restrições de crédito no Brasil

Restrições de crédito são altamente relevantes na economia brasileira. Segundo dados do Banco Central, o crédito ao setor privado como proporção do PIB no Brasil (~55% em 2023) é muito inferior ao de economias avançadas (EUA ~200%, zona do euro ~100%). Além disso:

- Spreads bancários elevados funcionam como restrição parcial ao crédito, encarecendo o empréstimo a ponto de torná-lo inviável para muitos agentes.
- Famílias de baixa renda frequentemente não têm acesso a crédito formal, dependendo de crédito informal a taxas ainda mais altas.
- A consequência é que muitos consumidores brasileiros não conseguem suavizar o consumo intertemporalmente, ficando presos a variações de renda — exatamente o oposto do que o modelo de Fisher prevê sob mercados perfeitos.

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-9)

---

## ✏️ Exercício 18.10 {#ex-18-10}

**Jazida: \( S_0 = 2.000 \), \( p_0 = 120 \), \( c = 40 \), \( r = 6\% \), demanda inversa \( p_t = 200 - 2q_t \).**

### (a) Renda de escassez

\[
R_0 = p_0 - c = 120 - 40 = 80
\]

Em 10 anos: \( R_{10} = 80 \times (1{,}06)^{10} = 80 \times 1{,}7908 = 143{,}27 \).

Verificação: pela regra de Hotelling, \( R_{10}/R_0 = (1{,}06)^{10} = 1{,}7908 \). ✓

### (b) Quantidade extraída

Da demanda inversa: \( p_t = 200 - 2q_t \implies q_t = (200 - p_t)/2 \).

Como \( p_t = R_t + c = R_0(1+r)^t + 40 \):

\[
q_t = \frac{200 - [R_0(1{,}06)^t + 40]}{2} = \frac{160 - R_0(1{,}06)^t}{2} = 80 - \frac{R_0}{2}(1{,}06)^t
\]

A quantidade extraída decresce ao longo do tempo (à medida que \( R_t \) sobe, \( p_t \) sobe e \( q_t \) cai).

### (c) Determinação de \( R_0 \) com 2 períodos

Simplificando para extração em 2 períodos (\( t = 0, 1 \)):

\[
q_0 + q_1 = S_0 = 2.000
\]

\[
q_0 = 80 - R_0/2, \quad q_1 = 80 - \frac{R_0 \times 1{,}06}{2}
\]

\[
(80 - R_0/2) + (80 - 1{,}06 R_0/2) = 2.000
\]

\[
160 - R_0(1 + 1{,}06)/2 = 2.000 \implies 160 - 1{,}03 R_0 = 2.000 \implies R_0 = \frac{160 - 2.000}{1{,}03} = \frac{-1.840}{1{,}03} \approx -1.786
\]

O resultado negativo indica que, com apenas 2 períodos e estoque de 2.000, a demanda é insuficiente para esgotar o recurso nas condições dadas (o estoque é muito grande em relação à demanda por período). Na prática, a extração se estenderia por muitos mais períodos. Com horizonte mais longo, \( R_0 \) seria positivo e menor, pois a extração se distribui ao longo de mais períodos.

Para um horizonte \( T \) grande, a condição de estoque se torna \( \sum_{t=0}^{T} [80 - (R_0/2)(1{,}06)^t] = 2.000 \), e \( R_0 \) é encontrado numericamente.

### (d) Efeito de uma taxa de carbono de R$ 20/unidade

A taxa de carbono eleva o custo efetivo de extração para \( c' = 40 + 20 = 60 \). Nova renda de escassez: \( R_0' = p_0 - c' = 120 - 60 = 60 < 80 \).

Efeitos:

1. **Velocidade de exaustão diminui:** Com custo de extração mais alto, menos unidades são extraídas em cada período, prolongando a vida da jazida.

2. **Trajetória de preços:** O preço inicial pode cair (se a renda de escassez diminui mais do que o custo sobe) ou subir (se o efeito custo domina). No caso, \( p_0 = R_0' + c' = 60 + 60 = 120 \) — o preço inicial não muda, mas a composição entre renda de escassez e custo se altera.

3. **Transição energética:** A taxa de carbono funciona como um mecanismo para "internalizar" a externalidade das emissões. Ao encarecer a extração, ela incentiva: (i) redução do consumo corrente do recurso; (ii) investimento em tecnologias alternativas (o backstop fica relativamente mais atrativo); (iii) conservação do recurso para períodos em que substitutos ainda não estejam disponíveis.

A taxa de carbono é, portanto, consistente com a lógica de Hotelling: altera o custo efetivo de extração e, por conseguinte, toda a trajetória ótima, desacelerando a exaustão e favorecendo a transição para fontes de energia limpas.

↩ [Voltar ao enunciado](../cap18/exercicios.md#ex-18-10)
