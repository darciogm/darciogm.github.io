# Capítulo 18 — A Paciência Tem Preço

A economia não se resume a decisões instantâneas. Agentes econômicos constantemente fazem escolhas que envolvem o **tempo**: poupar hoje para consumir amanhã, investir em uma fábrica cujos retornos virão ao longo de anos, extrair um recurso natural agora ou preservá-lo para o futuro. Neste capítulo, estudamos a teoria do capital e dos juros, que fornece o arcabouço analítico para compreender essas decisões intertemporais.

Começamos com os conceitos fundamentais de capital e taxa de retorno, passamos pelo elegante modelo de dois períodos de Irving Fisher, discutimos a precificação de ativos arriscados, analisamos os critérios de decisão de investimento (VPL e TIR) e concluímos com a regra de Hotelling para recursos naturais exauríveis. Ao longo do capítulo, conectamos a teoria à experiência brasileira, marcada por décadas de juros reais elevados e seus efeitos sobre o investimento produtivo.

---

## 18.1 Capital e Taxa de Retorno

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
\label{eq:18.1} \tag{18.1} \]

Pela equação \eqref{eq:18.1}, no equilíbrio competitivo de longo prazo, a taxa de retorno do capital se iguala à **taxa de juros** do mercado, pois o investidor é indiferente entre aplicar recursos no mercado financeiro e investir em capital físico.

---

## 18.2 Determinação da Taxa de Retorno

Visto o conceito de capital e sua taxa de retorno, surge naturalmente a questão: o que determina o nível dessa taxa? Em uma economia de mercado, a taxa de retorno do capital não é fixada por decreto — ela emerge da interação entre agentes que desejam poupar (ofertando fundos) e agentes que desejam investir (demandando fundos). Esse equilíbrio no mercado de fundos emprestáveis é a peça central da teoria dos juros.

### Equilíbrio intertemporal

A taxa de juros de equilíbrio é determinada pela interação entre:

- **Oferta de fundos emprestáveis** (poupança): positivamente relacionada à taxa de juros — juros mais altos incentivam a poupança;
- **Demanda de fundos emprestáveis** (investimento): negativamente relacionada à taxa de juros — juros mais altos encarecem o custo do capital e reduzem o investimento.

No equilíbrio:

\[
S(r) = I(r)
\label{eq:18.2} \tag{18.2} \]

onde \(S\) é a poupança agregada e \(I\) é o investimento agregado. A taxa de juros \(r^*\) que iguala oferta e demanda de fundos é a **taxa de juros de equilíbrio**.

!!! idea "Intuição Econômica"
    **Em uma frase:** A taxa de juros é o preço do tempo — quanto custa trazer dinheiro do futuro para o presente, ou quanto se ganha por abrir mão do consumo hoje.

    **Pense assim:** Quando você parcela uma compra no cartão com juros, está pagando pela impaciência de ter o produto agora. Quando coloca dinheiro na poupança, está sendo recompensado por esperar. A taxa de juros equilibra os impacientes (que querem gastar hoje) com os pacientes (que preferem poupar).

    **Por que isso importa:** Com a Selic historicamente elevada no Brasil, o "preço da impaciência" é muito alto, desestimulando investimentos de longo prazo e encarecendo o crédito para famílias e empresas.

### Fatores que afetam a taxa de juros

A [Tabela 18.1](#tabela-18-1) resume os principais fatores que afetam a taxa de juros de equilíbrio.

<a id="tabela-18-1"></a>

| Fator | Efeito sobre \(r^*\) | Mecanismo |
|---|---|---|
| Aumento da produtividade do capital | \(\uparrow r^*\) | Desloca demanda por investimento para a direita |
| Aumento da preferência pelo consumo presente | \(\uparrow r^*\) | Reduz oferta de poupança |
| Aumento da oferta de fundos (ex.: poupança externa) | \(\downarrow r^*\) | Desloca oferta de poupança para a direita |
| Aumento do risco percebido | \(\uparrow r^*\) | Exige prêmio de risco maior |

<div class="caption-obj" markdown>
**Tabela 18.1 — Fatores que afetam a taxa de juros.**
</div>

---

## 18.3 Modelo de Dois Períodos de Fisher

A seção anterior apresentou os determinantes da taxa de juros de equilíbrio de forma intuitiva. Agora, formalizamos a decisão intertemporal do consumidor por meio do elegante modelo de dois períodos de Irving Fisher. Esse modelo é a pedra angular da teoria do consumo intertemporal e fornece o arcabouço analítico para compreender por que as pessoas poupam, por que tomam empréstimos e como a taxa de juros afeta essas decisões. As ferramentas aqui desenvolvidas — restrição orçamentária intertemporal, riqueza intertemporal, taxa de preferência intertemporal — serão empregadas novamente nos capítulos subsequentes e na macroeconomia.

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
    \label{eq:18.3} \tag{18.3} \]

    onde \(W\) é a **riqueza intertemporal** — o valor presente de toda a renda futura. A inclinação da reta orçamentária intertemporal é \(-(1+r)\).

### Otimização

O consumidor maximiza \(U(C_1, C_2)\) sujeito à restrição intertemporal. A condição de ótimo é:

\[
\frac{U_1}{U_2} = 1 + r
\label{eq:18.4} \tag{18.4} \]

ou equivalentemente:

\[
TMS_{C_1, C_2} = 1 + r
\]

!!! definition "Taxa de preferência intertemporal"
    A **taxa de preferência intertemporal** (ou taxa de desconto subjetiva) \(\rho\) é definida implicitamente por:

    \[
    TMS_{C_1, C_2} = 1 + \rho
    \label{eq:18.5} \tag{18.5} \]

    A equação \eqref{eq:18.5}, combinada com a condição de ótimo \eqref{eq:18.4}, implica que \(\rho = r\): a taxa de desconto subjetiva se iguala à taxa de juros de mercado. Se \(\rho > r\), o consumidor é "impaciente" e toma empréstimo; se \(\rho < r\), ele poupa.

### Efeitos de uma variação na taxa de juros

A condição de ótimo estabelece que, no equilíbrio, a taxa de preferência intertemporal do consumidor se iguala à taxa de juros de mercado. Mas o que acontece quando a taxa de juros muda? Essa pergunta é central para a política monetária: quando o Banco Central eleva a Selic, por exemplo, espera-se que os agentes poupem mais e consumam menos no presente. O modelo de Fisher permite decompor esse efeito em componentes familiar — os efeitos substituição e renda — revelando que a resposta do consumidor depende crucialmente de sua posição como poupador ou devedor.

Um aumento em \(r\) tem dois efeitos sobre \(C_1\):

- **Efeito substituição**: consumo presente fica relativamente mais caro (maior custo de oportunidade), reduzindo \(C_1\);
- **Efeito renda**: depende da posição do consumidor:
    - Se é **poupador** (\(S > 0\)): fica mais rico, tende a aumentar \(C_1\);
    - Se é **devedor** (\(S < 0\)): fica mais pobre, tende a reduzir \(C_1\).

Para um poupador, o efeito líquido sobre \(C_1\) é ambíguo (semelhante à curva backward-bending no mercado de trabalho).

---

### Gráfico interativo: Modelo de Fisher

O gráfico abaixo ilustra o modelo de consumo intertemporal de dois períodos. A reta orçamentária intertemporal tem inclinação \(-(1+r)\) e passa pelo ponto de dotação \((Y_1, Y_2)\). O consumidor escolhe o ponto de tangência com a curva de indiferença. Observe como variações na taxa de juros \(r\) alteram a inclinação da reta e a classificação do agente como poupador ou devedor.

<iframe src="../graficos/cap18/consumo-intertemporal.html" title="Figura 18.1 — Modelo de consumo intertemporal de dois períodos" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 18.1 — Modelo de consumo intertemporal de dois períodos.** Observe como variações na taxa de juros \(r\) alteram a inclinação da reta orçamentária e a classificação do agente como poupador ou devedor.
</div>

---

## 18.4 Precificação de Ativos Arriscados

O modelo de Fisher analisa a escolha intertemporal sob certeza — o consumidor conhece com exatidão suas rendas futuras e a taxa de juros. Na realidade, porém, a maioria das decisões de investimento envolve incerteza: retornos futuros são aleatórios, e ativos diferentes carregam níveis distintos de risco. Como precificar ativos cujos retornos são incertos? E qual é a relação entre risco e retorno esperado? Essas perguntas fundamentais são respondidas pelos modelos de precificação de ativos, que estendem a lógica intertemporal de Fisher para um mundo com incerteza.

### O CAPM básico

O **Capital Asset Pricing Model** (Modelo de Precificação de Ativos de Capital) estabelece que o retorno esperado de um ativo arriscado é:

\[
E[r_i] = r_f + \beta_i \cdot (E[r_m] - r_f)
\label{eq:18.6} \tag{18.6} \]

onde:

- \(r_f\) é a taxa de retorno livre de risco;
- \(E[r_m]\) é o retorno esperado do portfólio de mercado;
- \(\beta_i = \frac{\text{Cov}(r_i, r_m)}{\text{Var}(r_m)}\) é o **beta** do ativo, que mede seu risco sistemático.

O prêmio de risco do ativo \(i\) é proporcional ao seu beta: ativos com maior correlação com o mercado exigem retornos esperados mais altos.

### Fator de desconto estocástico

Uma abordagem mais geral utiliza o **fator de desconto estocástico** (SDF, *stochastic discount factor*). O preço de qualquer ativo satisfaz:

\[
p_i = E[m \cdot x_i] \label{eq:18.7} \tag{18.7}
\]

onde \(m\) é o fator de desconto estocástico e \(x_i\) é o payoff do ativo. No modelo de consumo intertemporal com utilidade esperada:

\[
m = \beta \frac{U'(C_2)}{U'(C_1)}
\]

onde \(\beta = \frac{1}{1+\rho}\) é o fator de desconto subjetivo. Ativos que pagam mais em estados de escassez (quando \(U'(C_2)\) é alto) são mais valiosos.

!!! note "Equity premium puzzle"
    O **enigma do prêmio de risco das ações** ([Mehra e Prescott, 1985](https://doi.org/10.1016/0304-3932(85)90061-3)) refere-se ao fato de que o prêmio de risco histórico das ações sobre títulos públicos (~6% ao ano nos EUA) é muito maior do que modelos padrão de consumo intertemporal conseguem explicar com níveis razoáveis de aversão ao risco.

---

## 18.5 Demanda da Firma por Capital

As seções anteriores examinaram a decisão intertemporal do consumidor (poupança) e a precificação de ativos financeiros. Voltamo-nos agora para o lado real da economia: como a firma decide quanto capital empregar? A resposta conecta a teoria da produção — já estudada nos capítulos de firma — à teoria dos juros: a firma investe em capital até que o retorno marginal do investimento iguale seu custo de oportunidade, determinado pela taxa de juros e pela depreciação.

A firma demanda capital até que o **valor do produto marginal do capital** iguale o **custo de uso do capital**:

\[
p \cdot PMg_K = c_K
\label{eq:18.8} \tag{18.8} \]

O **custo de uso do capital** (user cost of capital, ou custo de Jorgenson) é:

\[
c_K = p_K(r + \delta)
\label{eq:18.9} \tag{18.9} \]

onde \(p_K\) é o preço do bem de capital, \(r\) é a taxa de juros real e \(\delta\) é a taxa de depreciação.

!!! definition "Custo de uso do capital"
    O custo de uso do capital \(c_K = p_K(r + \delta)\) representa o custo por período de utilizar uma unidade de capital. Ele inclui dois componentes: o **custo de oportunidade** do capital (\(p_K \cdot r\), o retorno que se obteria aplicando o valor do capital no mercado financeiro) e o **custo de depreciação** (\(p_K \cdot \delta\), a perda de valor do capital por desgaste ou obsolescência).

As equações \eqref{eq:18.8} e \eqref{eq:18.9} mostram que a demanda por capital é decrescente na taxa de juros: quando \(r\) sobe, \(c_K\) aumenta e a firma reduz seu estoque de capital desejado.

---

## 18.6 Critério do Valor Presente Descontado (VPL)

A demanda por capital da firma nos diz que ela investe até igualar o retorno marginal ao custo de uso. Mas como uma firma avalia, na prática, se um projeto específico de investimento vale a pena? O critério do Valor Presente Líquido (VPL) traduz a lógica intertemporal em uma regra operacional de decisão: um projeto deve ser aceito se, e somente se, o valor presente de todos os seus fluxos de caixa futuros excede o investimento inicial. Essa regra aparentemente simples é, na verdade, a aplicação direta do conceito de custo de oportunidade do capital.

### Definição

!!! definition "Valor Presente Líquido (VPL)"
    O **Valor Presente Líquido** de um projeto de investimento que gera fluxos de caixa \(\{F_0, F_1, F_2, \ldots, F_n\}\) é:

    \[
    VPL = \sum_{t=0}^{n} \frac{F_t}{(1+r)^t} = F_0 + \frac{F_1}{1+r} + \frac{F_2}{(1+r)^2} + \cdots + \frac{F_n}{(1+r)^n}
    \label{eq:18.10} \tag{18.10} \]

    onde \(r\) é a taxa de desconto (custo de oportunidade do capital) e \(F_0 < 0\) representa o investimento inicial.

### Regra de decisão

- Se \(VPL > 0\): o projeto gera valor líquido positivo; deve ser aceito.
- Se \(VPL < 0\): o projeto destrói valor; deve ser rejeitado.
- Se \(VPL = 0\): o projeto remunera exatamente o custo de oportunidade; indiferente.

!!! idea "Intuição Econômica"
    **Em uma frase:** O VPL responde à pergunta mais importante de qualquer investimento: "Vale mais a pena colocar meu dinheiro aqui ou deixar rendendo no banco?"

    **Pense assim:** Um dono de padaria em Belo Horizonte avalia comprar um forno novo por R$ 50 mil que vai gerar R$ 15 mil de lucro extra por ano durante 5 anos. Mas ele poderia deixar os R$ 50 mil no CDB a 10% ao ano. O VPL calcula se o forno supera o CDB, trazendo todos os lucros futuros para "reais de hoje".

    **Por que isso importa:** No Brasil, onde a taxa de juros real é alta, muitos projetos produtivos que seriam viáveis em outros países apresentam VPL negativo — o dinheiro rende mais parado no banco do que investido na economia real.

### Sensibilidade à taxa de desconto

O VPL é uma função decrescente de \(r\). Projetos com fluxos de caixa mais distantes no tempo são mais sensíveis a variações na taxa de desconto.

---

## 18.7 Taxa Interna de Retorno (TIR)

Enquanto o VPL fornece o valor monetário gerado por um projeto a uma dada taxa de desconto, a Taxa Interna de Retorno (TIR) responde a uma pergunta complementar: qual é a taxa de retorno implícita do projeto? Em outras palavras, a TIR é a taxa de desconto que torna o investimento exatamente neutro — nem criando nem destruindo valor. Embora amplamente utilizada na prática, a TIR apresenta limitações que tornam o VPL o critério teoricamente superior.

!!! definition "Taxa Interna de Retorno (TIR)"
    A **Taxa Interna de Retorno** é a taxa de desconto \(r^*\) que torna o VPL igual a zero:

    \[
    \sum_{t=0}^{n} \frac{F_t}{(1+r^*)^t} = 0
    \label{eq:18.11} \tag{18.11} \]

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

<iframe src="../graficos/cap18/vpl-tir.html" title="Figura 18.2 — Valor Presente Líquido como função da taxa de desconto" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 18.2 — Valor Presente Líquido como função da taxa de desconto.** O ponto onde a curva cruza o eixo horizontal é a Taxa Interna de Retorno (TIR).
</div>

---

## 18.8 Precificação de Recursos Naturais: A Regra de Hotelling

Os critérios de VPL e TIR aplicam-se a investimentos em capital produzido — máquinas, fábricas, projetos de infraestrutura. Mas a economia também lida com recursos que não são produzidos: petróleo, minérios, florestas nativas. Esses recursos naturais não renováveis colocam uma questão intertemporal distinta: como o proprietário de um recurso finito decide quanto extrair hoje e quanto preservar para o futuro? A resposta, formalizada por Harold Hotelling em 1931, é uma das proposições mais elegantes da economia dos recursos naturais.

### O problema do recurso exaurível

Considere o proprietário de uma mina com estoque finito \(S_0\) de um recurso natural não renovável (petróleo, minério, gás). Em cada período, ele deve decidir quanto extrair (\(q_t\)) e quanto preservar para o futuro.

Se o preço do recurso é \(p_t\), o custo marginal de extração é \(c\) (constante) e a taxa de juros é \(r\), o proprietário enfrenta um problema de otimização intertemporal.

!!! proof "Demonstração: Derivação da Regra de Hotelling"
    O proprietário da mina maximiza o valor presente dos lucros da extração:

    \[
    \max_{\{q_t\}} \sum_{t=0}^{\infty} \frac{(p_t - c) \cdot q_t}{(1+r)^t} \quad \text{sujeito a} \quad \sum_{t=0}^{\infty} q_t \leq S_0, \quad q_t \geq 0
    \]

    O lagrangeano é:

    \[
    \mathcal{L} = \sum_{t=0}^{\infty} \frac{(p_t - c) q_t}{(1+r)^t} + \lambda \left( S_0 - \sum_{t=0}^{\infty} q_t \right)
    \]

    A condição de primeira ordem para \(q_t > 0\) é:

    \[
    \frac{\partial \mathcal{L}}{\partial q_t} = \frac{p_t - c}{(1+r)^t} - \lambda = 0
    \]

    Portanto:

    \[
    p_t - c = \lambda (1+r)^t
    \]

    Definindo a **renda de escassez** (ou *royalty*) como \(R_t \equiv p_t - c\), temos:

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

!!! theorem "Regra de Hotelling"
    Em equilíbrio competitivo, o preço líquido (preço menos custo marginal de extração) de um recurso natural exaurível cresce à taxa de juros:

    \[
    \frac{\dot{R}}{R} = r \quad \text{(em tempo contínuo)} \qquad \text{ou} \qquad \frac{R_{t+1} - R_t}{R_t} = r \quad \text{(em tempo discreto)}
    \label{eq:18.12} \tag{18.12} \]

    onde \(R = P - c\) é a renda de escassez do recurso.

!!! idea "Intuição Econômica"
    **Em uma frase:** O preço de um recurso que vai acabar precisa subir ao longo do tempo à mesma taxa dos juros — senão, o dono preferiria extrair tudo hoje e aplicar o dinheiro.

    **Pense assim:** Imagine um fazendeiro no Pará com mogno nativo na propriedade. Se o preço da madeira não estiver subindo pelo menos tanto quanto o rendimento de um CDB, ele corta tudo agora e coloca o dinheiro no banco. Mas se o mogno está valorizando mais que os juros, compensa deixar a árvore crescendo. No equilíbrio, as duas opções se equivalem.

    **Por que isso importa:** A regra de Hotelling é a base para pensar a exploração sustentável de petróleo, minérios e outros recursos finitos — e ajuda a entender por que juros altos aceleram o desmatamento e a extração mineral.

### Implicações

1. **O preço do recurso tende a subir ao longo do tempo**, refletindo sua crescente escassez;
2. **Recursos com custo de extração constante** terão preços que convergem assintoticamente para um caminho exponencial;
3. **A taxa de juros determina a velocidade de exaustão**: juros altos aceleram a extração (o futuro é mais fortemente descontado).

!!! tip "A regra de Hotelling na prática"
    Empiricamente, os preços de muitos recursos naturais não seguem a trajetória prevista pela regra de Hotelling. Isso pode ser explicado por: (i) descobertas de novas reservas; (ii) progresso tecnológico que reduz custos de extração; (iii) desenvolvimento de substitutos; (iv) poder de mercado (OPEP, por exemplo).

---

## 18.9 Juros Compostos e Tempo Contínuo

Para concluir o arcabouço técnico deste capítulo, apresentamos as ferramentas matemáticas de capitalização e desconto que fundamentam os cálculos de valor presente e futuro. Embora os conceitos de juros compostos e capitalização contínua sejam frequentemente abordados em cursos de matemática financeira, sua compreensão é indispensável para a análise econômica intertemporal — desde a avaliação de projetos de investimento até a modelagem de crescimento econômico.

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

## 18.10 VPL, Taxa de Desconto e Decisão de Investimento

Considere um projeto com investimento inicial de R$ 100.000 e fluxos de caixa anuais conforme a tabela abaixo:

| Ano | Fluxo de caixa (R$) |
|---|---|
| 0 | −100.000 |
| 1 | 30.000 |
| 2 | 35.000 |
| 3 | 40.000 |
| 4 | 45.000 |

A TIR deste projeto é aproximadamente 15,2%. A [Tabela 18.2](#tabela-18-2) mostra o VPL para diferentes taxas de desconto:

<a id="tabela-18-2"></a>

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

<div class="caption-obj" markdown>
**Tabela 18.2 — VPL, taxa de desconto e decisão de investimento.**
</div>

A tabela ilustra dois pontos fundamentais: (i) o VPL é decrescente na taxa de desconto; (ii) projetos viáveis a juros baixos podem se tornar inviáveis quando a taxa de juros sobe — um problema particularmente relevante no contexto brasileiro de juros historicamente elevados.

---

## 🇧🇷 Box Brasil: Taxa Selic e o Custo de Capital no Brasil

!!! box-brasil "Por que os juros brasileiros são historicamente altos?"
    O Brasil é conhecido internacionalmente por praticar uma das taxas de juros reais mais elevadas do mundo. A taxa Selic — a taxa básica de juros definida pelo Comitê de Política Monetária (Copom) do [Banco Central do Brasil](https://www.bcb.gov.br) — atingiu níveis estratosféricos ao longo das últimas décadas.

    **Evolução histórica da Selic:**

    - Nos anos 1990 (pós-Plano Real), a taxa Selic real frequentemente superava 20% ao ano.
    - Entre 2003 e 2012, houve redução gradual, mas a Selic real ainda oscilava entre 5% e 10% ao ano.
    - Em 2020, durante a pandemia de COVID-19, a Selic nominal atingiu o mínimo histórico de 2% ao ano (taxa real negativa).
    - A partir de 2021, o ciclo de aperto monetário elevou a Selic a 13,75% ao ano em 2022, com taxa real em torno de 7-8%.

    **Por que os juros são tão altos? Principais hipóteses:**

    1. **Dominância fiscal**: a elevada dívida pública e a percepção de risco fiscal exigem prêmios de risco maiores para financiamento do governo. Quanto maior a desconfiança sobre a sustentabilidade fiscal, maiores os juros que o [Tesouro Nacional](https://www.tesouronacional.fazenda.gov.br) precisa oferecer.

    2. **Crédito direcionado e segmentação**: uma parcela significativa do crédito no Brasil é direcionada ([BNDES](https://www.bndes.gov.br), crédito rural, habitacional) a taxas subsidiadas. Isso reduz a eficácia da política monetária, exigindo uma Selic mais alta para atingir o mesmo efeito contracionista sobre a parcela livre do crédito.

    3. **Inércia inflacionária e indexação**: a memória inflacionária do período de hiperinflação (1980-1994) e mecanismos de indexação residuais tornam as expectativas de inflação mais resistentes, exigindo juros mais altos para ancorar expectativas.

    4. **Incerteza jurisdicional**: instabilidade regulatória, mudanças frequentes de regras tributárias e insegurança jurídica elevam o prêmio de risco exigido por investidores.

    5. **Baixa taxa de poupança doméstica**: a taxa de poupança bruta do Brasil (~15% do PIB) é significativamente inferior à de outros emergentes como China (~45%) e Índia (~30%), pressionando os juros de equilíbrio para cima.

    **Impacto sobre o investimento privado:**

    A taxa de investimento brasileira (Formação Bruta de Capital Fixo / PIB) oscila em torno de 15-18%, bem abaixo dos ~25% considerados necessários para sustentar crescimento robusto. Juros elevados encarecem o custo de uso do capital (\(c_K = p_K(r + \delta)\)), tornando inviáveis projetos que seriam rentáveis em ambientes de juros mais baixos.

    Dados do BNDES mostram que, historicamente, o banco de desenvolvimento desempenhou um papel de "compensação" parcial, oferecendo crédito de longo prazo a taxas subsidiadas (TJLP, depois TLP). Contudo, a partir de 2017, a substituição da TJLP pela TLP (atrelada a taxas de mercado) reduziu esse subsídio, aproximando o custo do crédito do BNDES ao custo de mercado.

    **Consequências para a avaliação de projetos:**

    Conforme a tabela de VPL apresentada na seção anterior, projetos que seriam viáveis a uma taxa de desconto de 5% (como em muitos países desenvolvidos) tornam-se inviáveis a 15% ou 20% (taxas reais historicamente observadas no Brasil). Isso representa um viés contra investimentos de longo prazo, especialmente em infraestrutura, pesquisa e desenvolvimento, e indústrias capital-intensivas.

---

## 📋 Resumo do Capítulo

- A taxa de juros é o preço do tempo, determinada pelo equilíbrio entre oferta de poupança e demanda de investimento no mercado de fundos emprestáveis. A taxa de juros de equilíbrio depende da produtividade do capital, das preferências intertemporais, da oferta de poupança e do risco percebido.
- O modelo de dois períodos de Fisher formaliza a escolha intertemporal do consumidor: no ótimo, a taxa marginal de substituição entre consumo presente e futuro iguala \(1 + r\). O consumidor é poupador se sua taxa de desconto subjetiva é menor que a taxa de juros, e devedor caso contrário.
- O CAPM estabelece que o retorno esperado de um ativo arriscado depende de seu beta (risco sistemático), enquanto o fator de desconto estocástico generaliza a precificação para qualquer ativo. O enigma do prêmio de risco (equity premium puzzle) desafia os modelos padrão.
- A firma demanda capital até que o valor do produto marginal iguale o custo de uso do capital \(c_K = p_K(r + \delta)\). O VPL é o critério superior para avaliação de investimentos: projetos com VPL positivo geram valor acima do custo de oportunidade do capital.
- A Regra de Hotelling estabelece que o preço líquido de um recurso natural exaurível deve crescer à taxa de juros no equilíbrio, equilibrando o incentivo entre extrair hoje e preservar para o futuro. Juros altos aceleram a extração.
- No Brasil, a taxa Selic historicamente elevada encarece o custo de capital, torna inviáveis projetos de longo prazo e cria viés contra investimentos produtivos, especialmente em infraestrutura e P&D.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Capital | Estoque de bens produzidos utilizados como insumos na produção; fator de produção produzido (máquinas, equipamentos, infraestrutura) |
| Taxa de juros de equilíbrio | Taxa que iguala oferta de poupança e demanda de investimento no mercado de fundos emprestáveis |
| Riqueza intertemporal | Valor presente de toda a renda futura: \(W = Y_1 + Y_2/(1+r)\) |
| Taxa de preferência intertemporal | Taxa de desconto subjetiva \(\rho\) que mede a impaciência do consumidor; no ótimo, iguala-se à taxa de juros |
| Custo de uso do capital | Custo por período de utilizar uma unidade de capital: \(c_K = p_K(r + \delta)\), incluindo custo de oportunidade e depreciação |
| Valor Presente Líquido (VPL) | Soma dos fluxos de caixa descontados a valor presente; critério superior para decisão de investimento |
| Taxa Interna de Retorno (TIR) | Taxa de desconto que torna o VPL igual a zero; aceitar o projeto se TIR > custo de oportunidade |
| Regra de Hotelling | Em equilíbrio, o preço líquido de um recurso exaurível cresce à taxa de juros: \(\dot{R}/R = r\) |
| Beta (CAPM) | Medida de risco sistemático de um ativo: \(\beta_i = \text{Cov}(r_i, r_m)/\text{Var}(r_m)\) |
| Perpetuidade | Fluxo de pagamentos constante e infinito cujo valor presente é \(VP = F/r\) |

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 18.1 — Consumo intertemporal e classificação poupador/devedor"
    **Enunciado.** Um consumidor vive dois períodos com renda \(Y_1 = 80\) e \(Y_2 = 66\). Suas preferências são \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1}\ln C_2\). A taxa de juros é \(r = 10\%\). (a) Calcule a riqueza intertemporal. (b) Encontre o consumo ótimo em cada período. (c) O consumidor é poupador ou devedor?

    **Resolução.**

    **(a) Riqueza intertemporal.**

    \[
    W = Y_1 + \frac{Y_2}{1+r} = 80 + \frac{66}{1{,}1} = 80 + 60 = 140
    \]

    **(b) Consumo ótimo.**

    Com preferências Cobb-Douglas intertemporais \(U = \ln C_1 + \beta \ln C_2\), onde \(\beta = 1/1{,}1\), o consumidor aloca uma fração \(\frac{1}{1+\beta}\) da riqueza para \(C_1\):

    \[
    C_1^* = \frac{1}{1 + 1/1{,}1} \cdot W = \frac{1}{1 + 10/11} \cdot 140 = \frac{11}{21} \cdot 140 = \frac{1.540}{21} \approx 73{,}3
    \]

    Para \(C_2\), usamos a restrição orçamentária:

    \[
    C_2^* = (1+r)(W - C_1^*) = 1{,}1 \times (140 - 73{,}3) = 1{,}1 \times 66{,}7 \approx 73{,}3
    \]

    Verificação pela condição de ótimo: \(TMS = C_2/(C_1 \cdot \beta) = 73{,}3/(73{,}3 \times 10/11) = 11/10 = 1{,}1 = 1+r\). ✓

    **(c) Poupador ou devedor?**

    Poupança: \(S = Y_1 - C_1^* = 80 - 73{,}3 = 6{,}7 > 0\).

    O consumidor é **poupador**. Ele transfere R$ 6,7 do período 1 para o período 2. Isso ocorre porque sua renda é relativamente mais concentrada no período 1, enquanto suas preferências (com \(\beta = 1/1{,}1 \approx 0{,}91\), ou seja, taxa de desconto subjetiva \(\rho = 10\%\) igual à taxa de juros) induzem consumo suave ao longo do tempo.

??? exercicio-resolvido "Exercício Resolvido 18.2 — VPL, TIR e decisão de investimento"
    **Enunciado.** Uma empresa avalia instalar painéis solares por R$ 200.000, com economia anual de R$ 55.000 durante 5 anos. O custo de oportunidade do capital é 12% a.a. (a) Calcule o VPL. (b) Calcule a TIR por interpolação. (c) O projeto deve ser aceito?

    **Resolução.**

    **(a) VPL a 12%.**

    \[
    VPL = -200.000 + 55.000 \times \frac{1 - (1{,}12)^{-5}}{0{,}12}
    \]

    O fator de anuidade é:

    \[
    \frac{1 - (1{,}12)^{-5}}{0{,}12} = \frac{1 - 0{,}5674}{0{,}12} = \frac{0{,}4326}{0{,}12} = 3{,}6048
    \]

    \[
    VPL = -200.000 + 55.000 \times 3{,}6048 = -200.000 + 198.264 = -1.736
    \]

    **(b) TIR por interpolação.**

    A 11%: fator de anuidade = \(\frac{1-(1{,}11)^{-5}}{0{,}11} = 3{,}6959\). VPL = \(-200.000 + 55.000 \times 3{,}6959 = 3.275\).

    A 12%: VPL = \(-1.736\) (calculado acima).

    Por interpolação linear:

    \[
    TIR \approx 11\% + \frac{3.275}{3.275 + 1.736} \times 1\% = 11\% + 0{,}65\% \approx 11{,}65\%
    \]

    **(c) Decisão.**

    Como \(VPL < 0\) (equivalentemente, \(TIR \approx 11{,}65\% < 12\% = r\)), o projeto **não deve ser aceito**. No contexto brasileiro, onde a taxa Selic real historicamente supera 5%, muitos projetos de infraestrutura e energia limpa que seriam viáveis em países com juros baixos tornam-se marginais ou inviáveis — ilustrando o impacto dos juros elevados sobre o investimento produtivo.

??? exercicio-resolvido "Exercício Resolvido 18.3 — Regra de Hotelling e trajetória de preços"
    **Enunciado.** Um depósito de lítio tem estoque \(S_0 = 5.000\) toneladas. O preço inicial é \(p_0 = 80\) mil reais/tonelada, o custo de extração é \(c = 20\) mil reais/tonelada e a taxa de juros real é \(r = 4\%\) ao ano. (a) Qual a renda de escassez inicial? (b) Segundo Hotelling, qual será o preço em 10 e 20 anos? (c) Se uma nova tecnologia de reciclagem de baterias surgir em 15 anos, tornando disponível um substituto perfeito a R$ 100 mil/tonelada, como isso afeta a trajetória?

    **Resolução.**

    **(a) Renda de escassez inicial.**

    \[
    R_0 = p_0 - c = 80 - 20 = 60 \text{ mil reais/tonelada}
    \]

    **(b) Preços futuros pela regra de Hotelling.**

    A renda de escassez cresce à taxa de juros: \(R_t = R_0(1+r)^t\).

    Em 10 anos: \(R_{10} = 60 \times (1{,}04)^{10} = 60 \times 1{,}4802 = 88{,}81\). Logo \(p_{10} = 88{,}81 + 20 = 108{,}81\) mil reais.

    Em 20 anos: \(R_{20} = 60 \times (1{,}04)^{20} = 60 \times 2{,}1911 = 131{,}47\). Logo \(p_{20} = 131{,}47 + 20 = 151{,}47\) mil reais.

    **(c) Efeito do substituto (backstop technology).**

    Se em \(t = 15\) surge um substituto perfeito a R$ 100 mil, o preço do lítio não pode ultrapassar esse teto (ninguém pagaria mais pelo lítio do que pelo substituto). Portanto, o preço terminal é \(p_{15} = 100\), o que implica \(R_{15} = 80\).

    A renda de escassez inicial se ajusta: \(R_0' = R_{15}/(1{,}04)^{15} = 80/1{,}8009 = 44{,}42\). Logo o preço inicial cairia para \(p_0' = 44{,}42 + 20 = 64{,}42\) mil reais — menor que os R$ 80 mil originais.

    **Interpretação:** A perspectiva de um substituto futuro reduz o valor presente do recurso e acelera sua extração. Isso é relevante para o Brasil, maior produtor de nióbio e com reservas significativas de lítio no Vale do Jequitinhonha (MG): o desenvolvimento de tecnologias alternativas para baterias afeta diretamente a estratégia ótima de exploração desses recursos.

---

## ✏️ Exercícios

!!! note "Exercícios do Capítulo 18"

<a id="ex-18-1"></a>**Exercício 18.1.** Um consumidor vive dois períodos, com renda \(Y_1 = 100\) e \(Y_2 = 110\), e preferências \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1} \ln C_2\). A taxa de juros é \(r = 10\%\).

(a) Calcule a riqueza intertemporal \(W\).

(b) Derive as escolhas ótimas \(C_1^*\) e \(C_2^*\).

(c) O consumidor é poupador ou devedor? Quanto ele poupa/toma emprestado?

(d) Se \(r\) sobe para 20%, como mudam \(C_1^*\) e \(C_2^*\)? Decomponha em efeitos renda e substituição.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-1)

---

<a id="ex-18-2"></a>**Exercício 18.2.** Uma firma considera investir em uma máquina que custa R$ 500.000, tem vida útil de 5 anos, deprecia-se linearmente e gera receitas líquidas anuais de R$ 150.000.

(a) Calcule o VPL do projeto para \(r = 8\%\) e \(r = 15\%\).

(b) Calcule a TIR do projeto (use método numérico ou interpolação).

(c) Se a Selic real é 8% e o prêmio de risco do setor é 4%, o projeto deve ser aceito?

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-2)

---

<a id="ex-18-3"></a>**Exercício 18.3.** Um recurso natural não renovável tem estoque inicial \(S_0 = 1000\) unidades. O preço de mercado é \(p_0 = 50\) reais por unidade, o custo marginal de extração é \(c = 10\) reais e a taxa de juros é \(r = 5\%\).

(a) Segundo a regra de Hotelling, qual será o preço do recurso daqui a 10 anos?

(b) Se uma nova tecnologia reduzir o custo de extração para \(c = 5\), o que acontece com a trajetória de preços? O recurso será exaurido mais rápido ou mais devagar?

(c) Se a taxa de juros subir para \(r = 10\%\), o que acontece com a velocidade de extração? Explique intuitivamente.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-3)

---

<a id="ex-18-4"></a>**Exercício 18.4.** Considere dois projetos mutuamente exclusivos:

| | Projeto A | Projeto B |
|---|---|---|
| Investimento inicial | R$ 100.000 | R$ 200.000 |
| Fluxo anual (5 anos) | R$ 35.000 | R$ 62.000 |
| TIR | 22,1% | 16,8% |

(a) Calcule o VPL de cada projeto para \(r = 10\%\).

(b) Qual projeto deve ser escolhido pelo critério do VPL? E pelo critério da TIR?

(c) Encontre a taxa de desconto na qual os dois projetos têm o mesmo VPL (taxa de Fisher).

(d) Explique por que o VPL é considerado o critério superior.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-4)

---

<a id="ex-18-5"></a>**Exercício 18.5.** Discuta as seguintes questões, articulando teoria e evidência empírica:

(a) "Se o Brasil conseguisse reduzir a taxa de juros real de longo prazo de 6% para 3%, o impacto sobre o investimento produtivo seria enorme." Avalie essa afirmação usando o conceito de custo de uso do capital e a sensibilidade do VPL à taxa de desconto.

(b) Explique por que a regra de Hotelling pode não ser observada empiricamente para o preço do petróleo.

(c) Um governo que deseja incentivar investimentos em infraestrutura de longo prazo (com payback de 20-30 anos) deve se preocupar mais com a taxa de juros real ou com a estabilidade regulatória? Justifique usando os conceitos de VPL e prêmio de risco.

[:material-arrow-right: Ver solução](../solucoes/cap18.md#ex-18-5)

---

## 🏆 Vem, ANPEC!

As questões a seguir foram extraídas de provas reais da ANPEC (Microeconomia). Cada item deve ser classificado como **Verdadeiro (V)** ou **Falso (F)**.

??? question "ANPEC 2021 — Questão 12"
    Com relação à análise econômica de investimento, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    **(0)** A análise do valor presente líquido incorpora o valor presente com taxa de desconto tanto dos custos quanto dos benefícios de um investimento.

    **(1)** O prazo de retorno também proporciona um modo de determinar os benefícios líquidos de um investimento.

    **(2)** O prazo de retorno desconta fluxos futuros de dinheiro, assim como a análise do valor presente líquido.

    **(3)** O valor da opção de espera de um investimento é o incentivo que o risco cria para adiar a decisão de investir e coletar informação.

    **(4)** Um indivíduo avesso ao risco ganha mais utilidade a partir de uma determinada quantidade de renda, do que a partir de uma quantidade equivalente em valor esperado decorrente de uma renda incerta.

    ??? success "Gabarito"
        **Respostas: V-V-F-V-V**

        **Justificativa por item:**

        - **Item 0 — V:** O VPL calcula o valor presente de todos os fluxos de caixa — custos (fluxos negativos) e benefícios (fluxos positivos) — descontados a uma taxa apropriada. É exatamente a definição: \(VPL = \sum F_t/(1+r)^t\).

        - **Item 1 — V:** O prazo de retorno (payback) indica em quantos períodos o investimento inicial é recuperado. Embora seja um critério simplificado, ele proporciona uma medida dos benefícios líquidos ao indicar a velocidade de recuperação do capital.

        - **Item 2 — F:** O prazo de retorno simples (payback) **não** desconta os fluxos futuros — simplesmente soma os fluxos nominais até igualar o investimento inicial. Essa é uma de suas principais limitações em relação ao VPL. (Existe o payback descontado, mas o payback padrão não desconta.)

        - **Item 3 — V:** A opção de espera (real option) tem valor positivo quando existe incerteza: ao adiar o investimento, o agente pode coletar informação adicional e evitar investimentos que se revelem inviáveis. Quanto maior o risco, maior o incentivo a esperar.

        - **Item 4 — V:** Pela definição de aversão ao risco (concavidade de \(u\)): \(u(E[W]) > E[u(W)]\). Ou seja, o indivíduo prefere receber o valor esperado com certeza a enfrentar a loteria — a utilidade da renda certa supera a utilidade esperada da renda incerta.

??? question "ANPEC 2010 — Questão 05"
    Avalie as afirmações abaixo:

    **(0)** Seja \(u(W) = -e^{-\beta W}\) uma utilidade von Neumann-Morgenstern, em que \(\beta > 0\) é uma constante e \(W\) é a riqueza. Então \(\beta\) denota a medida de aversão relativa ao risco.

    **(1)** Suponha que uma carteira de ativos arriscados possui retorno esperado \(r_e = 21\%\) e variância \(\sigma^2 = 0{,}09\). O ativo sem risco oferece um retorno \(r_f = 3\%\). Então, de acordo com o modelo média-variância, o preço do risco da carteira é \(p = 2\).

    **(2)** Suponha que o retorno de mercado é \(r_m = 12\%\) e a taxa de retorno do ativo sem risco é \(r_f = 8\%\). A variância da carteira eficiente é \(\sigma_e^2 = 0{,}01\) e a covariância entre o retorno de um ativo A e a carteira eficiente é \(\sigma_{A,e} = 0{,}5\). De acordo com o modelo CAPM, se o valor esperado do ativo A é \$64, então o preço do ativo A é \$50.

    **(3)** De acordo com o modelo média-variância, se a taxa marginal de substituição (TMS) entre retorno esperado da carteira e seu desvio-padrão é \(TMS = 0{,}3\), se a variância do retorno da carteira é \(\sigma_m^2 = 0{,}04\) e a taxa de retorno do ativo sem risco é \(r_f = 12\%\), então o retorno esperado da carteira é \(r_m = 18\%\).

    **(4)** Um indivíduo possui utilidade von Neumann-Morgenstern \(u(x) = \sqrt{x}\) e possui riqueza \(W = \$100\). Ele está sujeito a uma perda monetária aleatória \(X\), com distribuição uniforme contínua no intervalo \([0, 100]\). Se ao indivíduo for oferecido, ao preço de \(G = \$55\), um seguro total contra essa perda aleatória, então ele comprará o seguro.

    ??? success "Gabarito"
        **Respostas: F-F-F-V-V**

        **Justificativa por item:**

        - **Item 0 — F:** Para \(u(W) = -e^{-\beta W}\), temos \(u'(W) = \beta e^{-\beta W}\) e \(u''(W) = -\beta^2 e^{-\beta W}\). A medida de aversão absoluta ao risco de Arrow-Pratt é \(r_A = -u''/u' = \beta\). Portanto, \(\beta\) é a medida de aversão **absoluta** ao risco, não relativa. A medida de aversão relativa seria \(r_R = \beta W\), que depende da riqueza.

        - **Item 1 — F:** O preço do risco no modelo média-variância é \(p = (r_e - r_f)/\sigma\), onde \(\sigma\) é o desvio-padrão (não a variância). Como \(\sigma = \sqrt{0{,}09} = 0{,}3\), temos \(p = (0{,}21 - 0{,}03)/0{,}3 = 0{,}6\), não 2. (Se usássemos a variância no denominador: \(0{,}18/0{,}09 = 2\), mas a fórmula correta usa o desvio-padrão.)

        - **Item 2 — F:** O \(\beta\) do ativo A é \(\beta_A = \sigma_{A,e}/\sigma_e^2 = 0{,}5/0{,}01 = 50\). O retorno esperado pelo CAPM seria \(E[r_A] = 8\% + 50 \times (12\% - 8\%) = 208\%\). Preço: \(P_A = 64/(1 + 2{,}08) = 64/3{,}08 \approx 20{,}8\), não \$50.

        - **Item 3 — V:** No modelo média-variância, \(TMS = (r_m - r_f)/\sigma_m\). Com \(\sigma_m = \sqrt{0{,}04} = 0{,}2\): \(r_m = r_f + TMS \times \sigma_m = 12\% + 0{,}3 \times 20\% = 12\% + 6\% = 18\%\). ✓

        - **Item 4 — V:** A utilidade esperada sem seguro é \(E[u] = \int_0^{100} \sqrt{100 - x} \cdot \frac{1}{100}dx = \frac{1}{100}\int_0^{100}\sqrt{y}\,dy = \frac{1}{100} \cdot \frac{2}{3} \cdot 100^{3/2} = \frac{2000}{300} = \frac{20}{3} \approx 6{,}67\). Com seguro a \$55: \(u(100-55) = \sqrt{45} \approx 6{,}71 > 6{,}67\). Portanto, o indivíduo compra o seguro. ✓

---

## 🔬 Pesquisa em Ação

??? pesquisa "[Araujo, A.; Ferreira, R.; Funchal, B. (2012). The Brazilian Bankruptcy Law Experience. *Journal of Corporate Finance*, 18(4), 994–1004.](https://doi.org/10.1016/j.jcorpfin.2012.03.001)"
    **Pergunta central:** Como a reforma da lei de falências brasileira (Lei 11.101/2005) afetou o custo de crédito e o investimento das empresas?

    **Método:** Os autores exploram a reforma de 2005 como um experimento natural. A nova lei introduziu mecanismos de recuperação judicial mais eficientes e aumentou a prioridade dos credores com garantia real na ordem de pagamento. Os autores comparam o custo do crédito corporativo e os spreads bancários antes e depois da reforma, usando dados do Banco Central do Brasil e controlando por variáveis macroeconômicas.

    **Resultado principal:** Após a reforma, houve redução significativa do spread bancário para empresas — especialmente para aquelas com ativos tangíveis que podiam servir como garantia. A redução estimada foi da ordem de 10 a 20% dos spreads para empréstimos garantidos. O resultado é consistente com a teoria: ao aumentar a taxa de recuperação esperada pelos credores em caso de falência, a lei reduziu o prêmio de risco embutido nos juros cobrados.

    **Relevância para o capítulo:** O artigo conecta diretamente a estrutura institucional ao custo de uso do capital \(c_K = p_K(r + \delta)\). A taxa de juros \(r\) que as firmas enfrentam inclui um prêmio de risco que depende da qualidade do arcabouço legal de recuperação de crédito. A reforma da lei de falências reduziu esse prêmio, diminuindo o custo de capital e potencialmente viabilizando projetos de investimento que antes tinham VPL negativo — exatamente o mecanismo discutido na Seção 18.6.

??? pesquisa "[Mehra, R.; Prescott, E. C. (1985). The Equity Premium: A Puzzle. *Journal of Monetary Economics*, 15(2), 145–161.](https://doi.org/10.1016/0304-3932(85)90061-3)"
    **Pergunta central:** O prêmio de risco histórico das ações sobre títulos públicos pode ser explicado por modelos padrão de consumo intertemporal com níveis razoáveis de aversão ao risco?

    **Método:** [Mehra e Prescott](https://doi.org/10.1016/0304-3932(85)90061-3) calibram um modelo de troca pura com utilidade CRRA (aversão relativa ao risco constante) usando dados históricos dos EUA (1889–1978). No modelo, o fator de desconto estocástico é \(m = \beta(C_{t+1}/C_t)^{-\gamma}\), onde \(\gamma\) é o coeficiente de aversão ao risco. Os autores verificam quais combinações de \(\beta\) e \(\gamma\) reproduzem o prêmio de risco observado (~6% a.a.) e a taxa livre de risco (~1% a.a.).

    **Resultado principal:** Para gerar o prêmio de risco observado, o modelo exigiria um coeficiente de aversão ao risco \(\gamma > 30\), valor considerado absurdamente alto (estimativas experimentais sugerem \(\gamma\) entre 1 e 5). Com \(\gamma\) razoável, o modelo prevê um prêmio de risco de apenas ~0,35%, muito inferior ao observado. Este é o **enigma do prêmio de risco das ações** (*equity premium puzzle*).

    **Relevância para o capítulo:** O artigo é uma aplicação direta do fator de desconto estocástico apresentado na Seção 18.4. Ele demonstra que a fórmula \(m = \beta \cdot U'(C_2)/U'(C_1)\) — elegante na teoria — enfrenta dificuldades empíricas sérias. O puzzle motivou décadas de pesquisa em finanças e macroeconomia, incluindo modelos com hábito, aversão a perdas (prospect theory), aversão à ambiguidade e mercados incompletos. Para o Brasil, onde o prêmio de risco das ações é ainda mais elevado devido ao risco-país, o puzzle é particularmente agudo.

---

## 📚 Referências do Capítulo

- Dixit, Avinash K., e Robert S. Pindyck. 1994. [*Investment under Uncertainty*](https://books.google.com.br/books?id=8op0btN4mKEC). Princeton: Princeton University Press.
- Hotelling, Harold. 1931. "[The Economics of Exhaustible Resources](https://doi.org/10.1086/254195)." *Journal of Political Economy* 39 (2): 137–175.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books?id=c5-JEQAAQBAJ). New York: Oxford University Press.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com.br/books?id=X6s3DwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier.
