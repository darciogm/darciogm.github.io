# Capítulo 17 — Capital, Juros e o Valor do Amanhã

## Introdução

A economia não se resume a decisões instantâneas. Agentes econômicos constantemente fazem escolhas que envolvem o **tempo**: poupar hoje para consumir amanhã, investir em uma fábrica cujos retornos virão ao longo de anos, extrair um recurso natural agora ou preservá-lo para o futuro. Neste capítulo, estudamos a teoria do capital e dos juros, que fornece o arcabouço analítico para compreender essas decisões intertemporais.

Começamos com os conceitos fundamentais de capital e taxa de retorno, passamos pelo elegante modelo de dois períodos de Irving Fisher, discutimos a precificação de ativos arriscados, analisamos os critérios de decisão de investimento (VPL e TIR) e concluímos com a regra de Hotelling para recursos naturais exauríveis. Ao longo do capítulo, conectamos a teoria à experiência brasileira, marcada por décadas de juros reais elevados e seus efeitos sobre o investimento produtivo.

---

## 17.1 Capital e Taxa de Retorno

### O conceito de capital

!!! definition "Capital"
    **Capital** é o estoque de bens produzidos que são utilizados como insumos na produção de outros bens e serviços. Diferentemente do trabalho e da terra, o capital é um **fator de produção produzido** — máquinas, equipamentos, edifícios, infraestrutura, estoques.

É fundamental distinguir entre:

- **Estoque de capital** (\(K\)): o valor total dos bens de capital em um dado momento;
- **Fluxo de serviços do capital**: a contribuição produtiva do capital por unidade de tempo;
- **Investimento** (\(I\)): a variação no estoque de capital, \(I = \Delta K + \delta K\), onde \(\delta\) é a taxa de depreciação.

### Taxa de retorno do capital

A **taxa de retorno** (\(r\)) de um investimento mede a remuneração do capital por unidade monetária investida, por período. Se um investimento de \(K_0\) reais gera um fluxo de rendimento líquido \(\pi\) por período, a taxa de retorno é:

\[
r = \frac{\pi}{K_0}
\]

No equilíbrio competitivo de longo prazo, a taxa de retorno do capital se iguala à **taxa de juros** do mercado, pois o investidor é indiferente entre aplicar recursos no mercado financeiro e investir em capital físico.

---

## 17.2 Determinação da Taxa de Retorno

### Equilíbrio intertemporal

A taxa de juros de equilíbrio é determinada pela interação entre:

- **Oferta de fundos emprestáveis** (poupança): positivamente relacionada à taxa de juros — juros mais altos incentivam a poupança;
- **Demanda de fundos emprestáveis** (investimento): negativamente relacionada à taxa de juros — juros mais altos encarecem o custo do capital e reduzem o investimento.

No equilíbrio:

\[
S(r) = I(r)
\]

onde \(S\) é a poupança agregada e \(I\) é o investimento agregado. A taxa de juros \(r^*\) que iguala oferta e demanda de fundos é a **taxa de juros de equilíbrio**.

### Fatores que afetam a taxa de juros

| Fator | Efeito sobre \(r^*\) | Mecanismo |
|---|---|---|
| Aumento da produtividade do capital | \(\uparrow r^*\) | Desloca demanda por investimento para a direita |
| Aumento da preferência pelo consumo presente | \(\uparrow r^*\) | Reduz oferta de poupança |
| Aumento da oferta de fundos (ex.: poupança externa) | \(\downarrow r^*\) | Desloca oferta de poupança para a direita |
| Aumento do risco percebido | \(\uparrow r^*\) | Exige prêmio de risco maior |

---

## 17.3 Modelo de Dois Períodos de Fisher

### Estrutura do modelo

O modelo de Irving Fisher é a pedra angular da teoria do consumo intertemporal. Considere um consumidor que vive dois períodos (\(t = 1, 2\)) e deve decidir quanto consumir em cada período.

- Renda nos períodos 1 e 2: \(Y_1\) e \(Y_2\);
- Consumo nos períodos 1 e 2: \(C_1\) e \(C_2\);
- Taxa de juros de mercado: \(r\);
- O consumidor pode poupar (\(S > 0\)) ou tomar empréstimo (\(S < 0\)).

!!! definition "Restrição orçamentária intertemporal"
    A restrição orçamentária intertemporal é:
    \[
    C_1 + \frac{C_2}{1+r} = Y_1 + \frac{Y_2}{1+r} \equiv W
    \]
    onde \(W\) é a **riqueza intertemporal** — o valor presente de toda a renda futura. A inclinação da reta orçamentária intertemporal é \(-(1+r)\).

### Otimização

O consumidor maximiza \(U(C_1, C_2)\) sujeito à restrição intertemporal. A condição de ótimo é:

\[
\frac{U_1}{U_2} = 1 + r
\]

ou equivalentemente:

\[
TMS_{C_1, C_2} = 1 + r
\]

!!! definition "Taxa de preferência intertemporal"
    A **taxa de preferência intertemporal** (ou taxa de desconto subjetiva) \(\rho\) é definida implicitamente por:
    \[
    TMS_{C_1, C_2} = 1 + \rho
    \]
    No ótimo, \(\rho = r\): a taxa de desconto subjetiva se iguala à taxa de juros de mercado. Se \(\rho > r\), o consumidor é "impaciente" e toma empréstimo; se \(\rho < r\), ele poupa.

### Efeitos de uma variação na taxa de juros

Um aumento em \(r\) tem dois efeitos sobre \(C_1\):

- **Efeito substituição**: consumo presente fica relativamente mais caro (maior custo de oportunidade), reduzindo \(C_1\);
- **Efeito renda**: depende da posição do consumidor:
    - Se é **poupador** (\(S > 0\)): fica mais rico, tende a aumentar \(C_1\);
    - Se é **devedor** (\(S < 0\)): fica mais pobre, tende a reduzir \(C_1\).

Para um poupador, o efeito líquido sobre \(C_1\) é ambíguo (semelhante à curva backward-bending no mercado de trabalho).

---

### Gráfico interativo: Modelo de Fisher

O gráfico abaixo ilustra o modelo de consumo intertemporal de dois períodos. A reta orçamentária intertemporal tem inclinação \(-(1+r)\) e passa pelo ponto de dotação \((Y_1, Y_2)\). O consumidor escolhe o ponto de tangência com a curva de indiferença. Observe como variações na taxa de juros \(r\) alteram a inclinação da reta e a classificação do agente como poupador ou devedor.

<iframe src="../graficos/cap17/consumo-intertemporal.html" width="100%" height="540" style="border:none;border-radius:8px;"></iframe>

---

## 17.4 Precificação de Ativos Arriscados

### O CAPM básico

O **Capital Asset Pricing Model** (Modelo de Precificação de Ativos de Capital) estabelece que o retorno esperado de um ativo arriscado é:

\[
E[r_i] = r_f + \beta_i \cdot (E[r_m] - r_f)
\]

onde:

- \(r_f\) é a taxa de retorno livre de risco;
- \(E[r_m]\) é o retorno esperado do portfólio de mercado;
- \(\beta_i = \frac{\text{Cov}(r_i, r_m)}{\text{Var}(r_m)}\) é o **beta** do ativo, que mede seu risco sistemático.

O prêmio de risco do ativo \(i\) é proporcional ao seu beta: ativos com maior correlação com o mercado exigem retornos esperados mais altos.

### Fator de desconto estocástico

Uma abordagem mais geral utiliza o **fator de desconto estocástico** (SDF, *stochastic discount factor*). O preço de qualquer ativo satisfaz:

\[
p_i = E[m \cdot x_i]
\]

onde \(m\) é o fator de desconto estocástico e \(x_i\) é o payoff do ativo. No modelo de consumo intertemporal com utilidade esperada:

\[
m = \beta \frac{U'(C_2)}{U'(C_1)}
\]

onde \(\beta = \frac{1}{1+\rho}\) é o fator de desconto subjetivo. Ativos que pagam mais em estados de escassez (quando \(U'(C_2)\) é alto) são mais valiosos.

!!! note "Equity premium puzzle"
    O **enigma do prêmio de risco das ações** (Mehra e Prescott, 1985) refere-se ao fato de que o prêmio de risco histórico das ações sobre títulos públicos (~6% ao ano nos EUA) é muito maior do que modelos padrão de consumo intertemporal conseguem explicar com níveis razoáveis de aversão ao risco.

---

## 17.5 Demanda da Firma por Capital

A firma demanda capital até que o **valor do produto marginal do capital** iguale o **custo de uso do capital**:

\[
p \cdot PMg_K = c_K
\]

O **custo de uso do capital** (user cost of capital, ou custo de Jorgenson) é:

\[
c_K = p_K(r + \delta)
\]

onde \(p_K\) é o preço do bem de capital, \(r\) é a taxa de juros real e \(\delta\) é a taxa de depreciação.

!!! definition "Custo de uso do capital"
    O custo de uso do capital \(c_K = p_K(r + \delta)\) representa o custo por período de utilizar uma unidade de capital. Ele inclui dois componentes: o **custo de oportunidade** do capital (\(p_K \cdot r\), o retorno que se obteria aplicando o valor do capital no mercado financeiro) e o **custo de depreciação** (\(p_K \cdot \delta\), a perda de valor do capital por desgaste ou obsolescência).

A demanda por capital é decrescente na taxa de juros: quando \(r\) sobe, \(c_K\) aumenta e a firma reduz seu estoque de capital desejado.

---

## 17.6 Critério do Valor Presente Descontado (VPL)

### Definição

!!! definition "Valor Presente Líquido (VPL)"
    O **Valor Presente Líquido** de um projeto de investimento que gera fluxos de caixa \(\{F_0, F_1, F_2, \ldots, F_n\}\) é:
    \[
    VPL = \sum_{t=0}^{n} \frac{F_t}{(1+r)^t} = F_0 + \frac{F_1}{1+r} + \frac{F_2}{(1+r)^2} + \cdots + \frac{F_n}{(1+r)^n}
    \]
    onde \(r\) é a taxa de desconto (custo de oportunidade do capital) e \(F_0 < 0\) representa o investimento inicial.

### Regra de decisão

- Se \(VPL > 0\): o projeto gera valor líquido positivo; deve ser aceito.
- Se \(VPL < 0\): o projeto destrói valor; deve ser rejeitado.
- Se \(VPL = 0\): o projeto remunera exatamente o custo de oportunidade; indiferente.

### Sensibilidade à taxa de desconto

O VPL é uma função decrescente de \(r\). Projetos com fluxos de caixa mais distantes no tempo são mais sensíveis a variações na taxa de desconto.

---

## 17.7 Taxa Interna de Retorno (TIR)

!!! definition "Taxa Interna de Retorno (TIR)"
    A **Taxa Interna de Retorno** é a taxa de desconto \(r^*\) que torna o VPL igual a zero:
    \[
    \sum_{t=0}^{n} \frac{F_t}{(1+r^*)^t} = 0
    \]
    A regra de decisão é: aceitar o projeto se \(TIR > r\) (custo de oportunidade do capital).

### Limitações da TIR

A TIR apresenta problemas conhecidos:

1. **Múltiplas TIRs**: quando os fluxos de caixa mudam de sinal mais de uma vez, pode haver mais de uma TIR (pela regra de Descartes);
2. **Projetos mutuamente exclusivos**: a TIR pode ordenar projetos de forma diferente do VPL;
3. **Escala**: a TIR não leva em conta o tamanho do investimento.

Por essas razões, o VPL é considerado o critério superior para avaliação de investimentos.

---

### Gráfico interativo: VPL e TIR

O gráfico abaixo plota o Valor Presente Líquido como função da taxa de desconto. Edite os fluxos de caixa \(F_0\) a \(F_5\) e ajuste a taxa de desconto \(r\) com o slider. O ponto onde a curva cruza o eixo horizontal é a Taxa Interna de Retorno (TIR). Projetos com VPL positivo (acima da linha zero) devem ser aceitos.

<iframe src="../graficos/cap17/vpl-tir.html" width="100%" height="560" style="border:none;border-radius:8px;"></iframe>

---

## 17.8 Precificação de Recursos Naturais: A Regra de Hotelling

### O problema do recurso exaurível

Considere o proprietário de uma mina com estoque finito \(S_0\) de um recurso natural não renovável (petróleo, minério, gás). Em cada período, ele deve decidir quanto extrair (\(q_t\)) e quanto preservar para o futuro.

Se o preço do recurso é \(P_t\), o custo marginal de extração é \(c\) (constante) e a taxa de juros é \(r\), o proprietário enfrenta um problema de otimização intertemporal.

!!! proof "Demonstração: Derivação da Regra de Hotelling"
    O proprietário da mina maximiza o valor presente dos lucros da extração:

    \[
    \max_{\{q_t\}} \sum_{t=0}^{\infty} \frac{(P_t - c) \cdot q_t}{(1+r)^t} \quad \text{sujeito a} \quad \sum_{t=0}^{\infty} q_t \leq S_0, \quad q_t \geq 0
    \]

    O lagrangeano é:

    \[
    \mathcal{L} = \sum_{t=0}^{\infty} \frac{(P_t - c) q_t}{(1+r)^t} + \lambda \left( S_0 - \sum_{t=0}^{\infty} q_t \right)
    \]

    A condição de primeira ordem para \(q_t > 0\) é:

    \[
    \frac{\partial \mathcal{L}}{\partial q_t} = \frac{P_t - c}{(1+r)^t} - \lambda = 0
    \]

    Portanto:

    \[
    P_t - c = \lambda (1+r)^t
    \]

    Definindo a **renda de escassez** (ou *royalty*) como \(R_t \equiv P_t - c\), temos:

    \[
    R_t = \lambda (1+r)^t = R_0 (1+r)^t
    \]

    onde \(R_0 = \lambda\) é a renda de escassez no período inicial. Tomando a razão entre dois períodos consecutivos:

    \[
    \frac{R_{t+1}}{R_t} = 1 + r
    \]

    Ou, equivalentemente:

    \[
    \frac{R_{t+1} - R_t}{R_t} = r
    \]

    **Esta é a Regra de Hotelling**: em equilíbrio, a renda de escassez (preço líquido do custo de extração) de um recurso natural exaurível deve crescer à taxa de juros \(r\).

    **Intuição**: se a renda de escassez crescesse a uma taxa superior a \(r\), seria mais lucrativo não extrair hoje e esperar — o proprietário reduziria a extração presente, elevando o preço hoje e reduzindo a taxa de crescimento. Se crescesse a uma taxa inferior a \(r\), seria melhor extrair tudo agora e aplicar no mercado financeiro — a extração presente aumentaria, reduzindo o preço hoje e elevando a taxa de crescimento. No equilíbrio, os dois incentivos se equilibram. \(\blacksquare\)

!!! abstract "Regra de Hotelling"
    Em equilíbrio competitivo, o preço líquido (preço menos custo marginal de extração) de um recurso natural exaurível cresce à taxa de juros:
    \[
    \frac{\dot{R}}{R} = r \quad \text{(em tempo contínuo)} \qquad \text{ou} \qquad \frac{R_{t+1} - R_t}{R_t} = r \quad \text{(em tempo discreto)}
    \]
    onde \(R = P - c\) é a renda de escassez do recurso.

### Implicações

1. **O preço do recurso tende a subir ao longo do tempo**, refletindo sua crescente escassez;
2. **Recursos com custo de extração constante** terão preços que convergem assintoticamente para um caminho exponencial;
3. **A taxa de juros determina a velocidade de exaustão**: juros altos aceleram a extração (o futuro é mais fortemente descontado).

!!! tip "A regra de Hotelling na prática"
    Empiricamente, os preços de muitos recursos naturais não seguem a trajetória prevista pela regra de Hotelling. Isso pode ser explicado por: (i) descobertas de novas reservas; (ii) progresso tecnológico que reduz custos de extração; (iii) desenvolvimento de substitutos; (iv) poder de mercado (OPEP, por exemplo).

---

## 17.9 Juros Compostos e Tempo Contínuo

### Juros compostos discretos

Com capitalização \(m\) vezes ao ano, um capital \(K_0\) investido à taxa nominal anual \(i\) rende, após \(n\) anos:

\[
K_n = K_0 \left(1 + \frac{i}{m}\right)^{mn}
\]

### Capitalização contínua

Quando \(m \to \infty\), obtemos a capitalização contínua:

\[
K(t) = K_0 \cdot e^{it}
\]

onde \(e \approx 2{,}71828\) é a base do logaritmo natural. A taxa instantânea de crescimento é \(i\).

### Valor presente em tempo contínuo

O valor presente de um fluxo \(F(t)\) recebido no instante \(t\), descontado à taxa contínua \(r\), é:

\[
VP = F(t) \cdot e^{-rt}
\]

Para um fluxo contínuo \(f(t)\) ao longo do tempo:

\[
VP = \int_0^T f(t) \cdot e^{-rt} \, dt
\]

### Relação entre taxas discreta e contínua

Se a taxa discreta (anual) é \(r_d\) e a taxa contínua é \(r_c\), então:

\[
1 + r_d = e^{r_c} \quad \Leftrightarrow \quad r_c = \ln(1 + r_d)
\]

!!! note "Perpetuidades e anuidades"
    - **Perpetuidade** (fluxo constante \(F\) para sempre): \(VP = F/r\)
    - **Anuidade** (fluxo constante \(F\) por \(n\) períodos): \(VP = F \cdot \frac{1 - (1+r)^{-n}}{r}\)
    - **Perpetuidade crescente** (fluxo crescendo a taxa \(g < r\)): \(VP = F/(r - g)\)

---

## Tabela: VPL, Taxa de Desconto e Decisão de Investimento

Considere um projeto com investimento inicial de R$ 100.000 e fluxos de caixa anuais conforme a tabela abaixo:

| Ano | Fluxo de caixa (R$) |
|---|---|
| 0 | −100.000 |
| 1 | 30.000 |
| 2 | 35.000 |
| 3 | 40.000 |
| 4 | 45.000 |

A TIR deste projeto é aproximadamente 15,2%. A tabela a seguir mostra o VPL para diferentes taxas de desconto:

| Taxa de desconto (\(r\)) | VPL (R$) | Decisão |
|---|---|---|
| 5% | 35.460 | Aceitar |
| 8% | 24.689 | Aceitar |
| 10% | 18.444 | Aceitar |
| 12% | 12.658 | Aceitar |
| 15% | 4.474 | Aceitar |
| 15,2% (TIR) | ≈ 0 | Indiferente |
| 18% | −5.536 | Rejeitar |
| 20% | −10.648 | Rejeitar |
| 25% | −22.560 | Rejeitar |

A tabela ilustra dois pontos fundamentais: (i) o VPL é decrescente na taxa de desconto; (ii) projetos viáveis a juros baixos podem se tornar inviáveis quando a taxa de juros sobe — um problema particularmente relevante no contexto brasileiro de juros historicamente elevados.

---

## Box Brasil: Taxa Selic e o Custo de Capital no Brasil

!!! example "Por que os juros brasileiros são historicamente altos?"
    O Brasil é conhecido internacionalmente por praticar uma das taxas de juros reais mais elevadas do mundo. A taxa Selic — a taxa básica de juros definida pelo Comitê de Política Monetária (Copom) do Banco Central do Brasil — atingiu níveis estratosféricos ao longo das últimas décadas.

    **Evolução histórica da Selic:**

    - Nos anos 1990 (pós-Plano Real), a taxa Selic real frequentemente superava 20% ao ano.
    - Entre 2003 e 2012, houve redução gradual, mas a Selic real ainda oscilava entre 5% e 10% ao ano.
    - Em 2020, durante a pandemia de COVID-19, a Selic nominal atingiu o mínimo histórico de 2% ao ano (taxa real negativa).
    - A partir de 2021, o ciclo de aperto monetário elevou a Selic a 13,75% ao ano em 2022, com taxa real em torno de 7-8%.

    **Por que os juros são tão altos? Principais hipóteses:**

    1. **Dominância fiscal**: a elevada dívida pública e a percepção de risco fiscal exigem prêmios de risco maiores para financiamento do governo. Quanto maior a desconfiança sobre a sustentabilidade fiscal, maiores os juros que o Tesouro Nacional precisa oferecer.

    2. **Crédito direcionado e segmentação**: uma parcela significativa do crédito no Brasil é direcionada (BNDES, crédito rural, habitacional) a taxas subsidiadas. Isso reduz a eficácia da política monetária, exigindo uma Selic mais alta para atingir o mesmo efeito contracionista sobre a parcela livre do crédito.

    3. **Inércia inflacionária e indexação**: a memória inflacionária do período de hiperinflação (1980-1994) e mecanismos de indexação residuais tornam as expectativas de inflação mais resistentes, exigindo juros mais altos para ancorar expectativas.

    4. **Incerteza jurisdicional**: instabilidade regulatória, mudanças frequentes de regras tributárias e insegurança jurídica elevam o prêmio de risco exigido por investidores.

    5. **Baixa taxa de poupança doméstica**: a taxa de poupança bruta do Brasil (~15% do PIB) é significativamente inferior à de outros emergentes como China (~45%) e Índia (~30%), pressionando os juros de equilíbrio para cima.

    **Impacto sobre o investimento privado:**

    A taxa de investimento brasileira (Formação Bruta de Capital Fixo / PIB) oscila em torno de 15-18%, bem abaixo dos ~25% considerados necessários para sustentar crescimento robusto. Juros elevados encarecem o custo de uso do capital (\(c_K = p_K(r + \delta)\)), tornando inviáveis projetos que seriam rentáveis em ambientes de juros mais baixos.

    Dados do BNDES mostram que, historicamente, o banco de desenvolvimento desempenhou um papel de "compensação" parcial, oferecendo crédito de longo prazo a taxas subsidiadas (TJLP, depois TLP). Contudo, a partir de 2017, a substituição da TJLP pela TLP (atrelada a taxas de mercado) reduziu esse subsídio, aproximando o custo do crédito do BNDES ao custo de mercado.

    **Consequências para a avaliação de projetos:**

    Conforme a tabela de VPL apresentada na seção anterior, projetos que seriam viáveis a uma taxa de desconto de 5% (como em muitos países desenvolvidos) tornam-se inviáveis a 15% ou 20% (taxas reais historicamente observadas no Brasil). Isso representa um viés contra investimentos de longo prazo, especialmente em infraestrutura, pesquisa e desenvolvimento, e indústrias capital-intensivas.

---

## Exercícios

!!! note "Exercícios do Capítulo 17"

**Exercício 17.1.** Um consumidor vive dois períodos, com renda \(Y_1 = 100\) e \(Y_2 = 110\), e preferências \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1} \ln C_2\). A taxa de juros é \(r = 10\%\).

(a) Calcule a riqueza intertemporal \(W\).

(b) Derive as escolhas ótimas \(C_1^*\) e \(C_2^*\).

(c) O consumidor é poupador ou devedor? Quanto ele poupa/toma emprestado?

(d) Se \(r\) sobe para 20%, como mudam \(C_1^*\) e \(C_2^*\)? Decomponha em efeitos renda e substituição.

---

**Exercício 17.2.** Uma firma considera investir em uma máquina que custa R$ 500.000, tem vida útil de 5 anos, deprecia-se linearmente e gera receitas líquidas anuais de R$ 150.000.

(a) Calcule o VPL do projeto para \(r = 8\%\) e \(r = 15\%\).

(b) Calcule a TIR do projeto (use método numérico ou interpolação).

(c) Se a Selic real é 8% e o prêmio de risco do setor é 4%, o projeto deve ser aceito?

---

**Exercício 17.3.** Um recurso natural não renovável tem estoque inicial \(S_0 = 1000\) unidades. O preço de mercado é \(P_0 = 50\) reais por unidade, o custo marginal de extração é \(c = 10\) reais e a taxa de juros é \(r = 5\%\).

(a) Segundo a regra de Hotelling, qual será o preço do recurso daqui a 10 anos?

(b) Se uma nova tecnologia reduzir o custo de extração para \(c = 5\), o que acontece com a trajetória de preços? O recurso será exaurido mais rápido ou mais devagar?

(c) Se a taxa de juros subir para \(r = 10\%\), o que acontece com a velocidade de extração? Explique intuitivamente.

---

**Exercício 17.4.** Considere dois projetos mutuamente exclusivos:

| | Projeto A | Projeto B |
|---|---|---|
| Investimento inicial | R$ 100.000 | R$ 200.000 |
| Fluxo anual (5 anos) | R$ 35.000 | R$ 62.000 |
| TIR | 22,1% | 16,8% |

(a) Calcule o VPL de cada projeto para \(r = 10\%\).

(b) Qual projeto deve ser escolhido pelo critério do VPL? E pelo critério da TIR?

(c) Encontre a taxa de desconto na qual os dois projetos têm o mesmo VPL (taxa de Fisher).

(d) Explique por que o VPL é considerado o critério superior.

---

**Exercício 17.5.** Discuta as seguintes questões, articulando teoria e evidência empírica:

(a) "Se o Brasil conseguisse reduzir a taxa de juros real de longo prazo de 6% para 3%, o impacto sobre o investimento produtivo seria enorme." Avalie essa afirmação usando o conceito de custo de uso do capital e a sensibilidade do VPL à taxa de desconto.

(b) Explique por que a regra de Hotelling pode não ser observada empiricamente para o preço do petróleo.

(c) Um governo que deseja incentivar investimentos em infraestrutura de longo prazo (com payback de 20-30 anos) deve se preocupar mais com a taxa de juros real ou com a estabilidade regulatória? Justifique usando os conceitos de VPL e prêmio de risco.

---
