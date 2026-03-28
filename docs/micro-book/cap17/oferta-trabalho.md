# 17.1–17.3 Oferta Individual de Trabalho

## 17.1 Travesseiro ou Salário — Eis a Questão: Alocação do Tempo {#171}

### O problema fundamental

O dia tem 24 horas — para o estagiário e para o CEO. Nenhum dinheiro do mundo compra uma hora a mais. Cada indivíduo dispõe de um estoque fixo de tempo — convencionalmente \(T\) horas por período — e precisa decidir como repartir essa dotação entre duas atividades:

- **Lazer** (\(L\)): horas dedicadas a atividades que geram utilidade diretamente (descanso, convívio familiar, entretenimento).
- **Trabalho** (\(h\)): horas dedicadas à atividade remunerada, com \(h = T - L\).

O indivíduo recebe um **salário por hora** \(w\) e pode ter uma **renda não salarial** \(V\) (aluguéis, transferências, dividendos). Sua renda total é gasta em um bem composto de **consumo** \(C\), cujo preço é normalizado para 1.

!!! definition "Restrição orçamentária do tempo"
    A restrição orçamentária do indivíduo é:

    \[
    C = w(T - L) + V = wh + V
    \]

    onde \(C\) é o consumo, \(w\) é o salário-hora, \(T\) é a dotação total de tempo, \(L\) é o lazer, \(h = T - L\) são as horas trabalhadas e \(V\) é a renda não salarial.

### Renda plena (full income)

Podemos reescrever a restrição como:

\[
C + wL = wT + V \equiv M^*
\label{eq:17.1} \tag{17.1} \]

onde \(M^* = wT + V\) é a **renda plena** — a renda máxima que o indivíduo obteria se trabalhasse todas as \(T\) horas. A equação $\eqref{eq:17.1}$ revela que o preço do lazer é o salário \(w\), pois cada hora de lazer tem um custo de oportunidade igual ao salário que se deixa de receber.

!!! idea "Intuição Econômica"
    **Em uma frase:** O salário não é apenas o que você ganha por trabalhar — é também o preço que você paga por cada hora de lazer.

    **Pense assim:** Quando um motorista de aplicativo decide tirar um domingo de folga para assistir ao jogo do Flamengo, o "preço" desse lazer não é só o ingresso — inclui as corridas que ele deixou de fazer. Se o salário-hora dele sobe, o churrasco de domingo fica mais "caro" em termos do que ele abre mão.

    **Por que isso importa:** Entender que o lazer tem preço ajuda a explicar por que profissionais com salários muito altos frequentemente trabalham jornadas longas — o custo de oportunidade de cada hora livre é enorme.

### Perspectiva histórica: a jornada de trabalho ao longo do tempo

A alocação do tempo entre trabalho e lazer não é apenas uma escolha individual — é uma construção que se transformou radicalmente ao longo dos séculos. Durante a Revolução Industrial, jornadas de 60 a 80 horas semanais eram a norma, inclusive para crianças. Reformas legislativas progressivas — como o Factory Act britânico de 1833 e a jornada de 8 horas conquistada em 1919 pela Organização Internacional do Trabalho (OIT) — reduziram gradualmente o tempo de trabalho para cerca de 40 horas semanais nos países desenvolvidos.

Em 1930, John Maynard Keynes publicou o ensaio *Economic Possibilities for Our Grandchildren*, no qual previa que, em cem anos, o progresso tecnológico permitiria jornadas de apenas **15 horas semanais**. Sua previsão sobre o crescimento da produtividade estava correta — a renda per capita nos países ricos multiplicou-se por mais de cinco vezes —, mas a redução da jornada estagnou a partir da década de 1980. Nos Estados Unidos, a jornada média permaneceu em torno de 38–40 horas semanais. A explicação reside na interação entre efeito substituição e efeito renda: o aumento simultâneo dos salários reais e das possibilidades de consumo (novos bens, serviços, viagens) manteve o efeito substituição forte o suficiente para conter a redução do trabalho. Além disso, normas sociais, competição por status (*keeping up with the Joneses*) e estruturas institucionais (jornadas fixas, carreiras corporativas) limitaram a flexibilidade na escolha de horas.

Nos países nórdicos, por outro lado, a jornada efetiva é significativamente menor — cerca de 30–33 horas semanais na Holanda, Dinamarca e Alemanha —, refletindo preferências coletivas distintas e políticas públicas que facilitam a redução voluntária de horas (como o direito ao trabalho parcial). Essa variação entre países ilustra que a escolha trabalho-lazer não é puramente individual: ela é moldada por instituições, cultura e política pública.

### Preferências

As preferências do indivíduo são representadas por uma função de utilidade \(U(C, L)\), com as propriedades usuais:

- \(U_C > 0\), \(U_L > 0\) (consumo e lazer são bens);
- \(U_{CC} < 0\), \(U_{LL} < 0\) (utilidade marginal decrescente);
- Curvas de indiferença convexas em relação à origem.

A **taxa marginal de substituição** entre lazer e consumo é:

\[
TMS_{L,C} = \frac{U_L}{U_C}
\label{eq:17.2} \tag{17.2} \]

No ótimo interior, a condição de tangência exige:

\[
\frac{U_L}{U_C} = w
\label{eq:17.3} \tag{17.3} \]

Ou seja, o indivíduo iguala a taxa marginal de substituição ao salário real.

---

O gráfico abaixo mostra a escolha ótima entre lazer e consumo. A reta orçamentária tem inclinação \(-w\) e o ponto ótimo ocorre na tangência com a curva de indiferença. Ajuste o salário \(w\), a renda não salarial \(V\) e as preferências para ver como a alocação de tempo se altera.

<iframe src="../graficos/cap17/trabalho-lazer.html" title="Figura 17.1 — Escolha ótima entre lazer e consumo" class="graph-iframe" style="height:570px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 17.1 — Escolha ótima entre lazer e consumo.** Ajuste o salário \(w\), a renda não salarial \(V\) e as preferências para ver como a alocação de tempo se altera.
</div>

---

## 17.2 Apertando os Parafusos com Álgebra: Oferta de Trabalho {#172}

A intuição já está montada; agora é hora de apertar os parafusos com álgebra. Nesta seção, formalizamos rigorosamente o problema de otimização do trabalhador e derivamos os efeitos de variações salariais sobre a oferta de trabalho, utilizando a decomposição de Slutsky adaptada ao contexto da alocação do tempo. Essa derivação é fundamental porque revela por que a oferta de trabalho pode ter inclinação positiva ou negativa — uma ambiguidade que não é apenas uma curiosidade de quadro-negro, mas tem implicações diretas para a política tributária e salarial.

### O problema de maximização

!!! theorem "Problema de Otimização do Trabalhador"
    O indivíduo resolve:

    \[
    \max_{C, L} \; U(C, L) \quad \text{sujeito a} \quad C + wL = wT + V, \quad 0 \leq L \leq T
    \label{eq:17.4} \tag{17.4} \]

Montando o lagrangeano:

\[
\mathcal{L} = U(C, L) + \lambda(wT + V - C - wL)
\label{eq:17.5} \tag{17.5} \]

As condições de primeira ordem (CPO) são:

\[
\frac{\partial \mathcal{L}}{\partial C} = U_C - \lambda = 0 \quad \Rightarrow \quad \lambda = U_C
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = U_L - \lambda w = 0 \quad \Rightarrow \quad U_L = \lambda w
\]

\[
\frac{\partial \mathcal{L}}{\partial \lambda} = wT + V - C - wL = 0
\]

Combinando as duas primeiras:

\[
\frac{U_L}{U_C} = w
\label{eq:17.6} \tag{17.6} \]

### Efeitos de uma variação salarial

!!! proof "Demonstração: Derivação da oferta de trabalho e decomposição de Slutsky"
    Considere a função de utilidade \(U(C, L)\) e a restrição \(C = w(T - L) + V\). As demandas marshallianas são \(L^*(w, V)\) e \(C^*(w, V)\), de modo que a oferta de trabalho é \(h^*(w, V) = T - L^*(w, V)\).

    Para analisar o efeito de uma variação no salário sobre a oferta de trabalho, aplicamos a **equação de Slutsky** adaptada ao modelo trabalho-lazer. Como o lazer tem um "preço" igual a \(w\), temos:

    \[
    \frac{\partial L^*}{\partial w} = \underbrace{\frac{\partial L^c}{\partial w}}_{\text{efeito substituição}} + \underbrace{(T - L^*) \cdot \left(-\frac{\partial L^*}{\partial V}\right)}_{\text{efeito renda}}
    \label{eq:17.7} \tag{17.7} \]

    Note que, diferentemente do caso padrão do consumidor, a variação no "preço" do lazer (\(w\)) também altera a renda plena. Por isso, o efeito renda é multiplicado por \((T - L^*) = h^*\), as horas trabalhadas.

    **Efeito substituição** (\(\partial L^c / \partial w < 0\)): um aumento no salário encarece o lazer relativamente ao consumo. Mantida a utilidade constante, o indivíduo substitui lazer por consumo, ou seja, trabalha mais. O efeito substituição é sempre negativo sobre o lazer (positivo sobre a oferta de trabalho).

    **Efeito renda** (\(-h^* \cdot \partial L^* / \partial V\)): se o lazer é um bem normal (\(\partial L^* / \partial V > 0\)), o aumento da renda real causado pelo salário maior leva o indivíduo a demandar mais lazer, ou seja, trabalhar menos. O efeito renda é negativo sobre a oferta de trabalho.

    Portanto, para a oferta de trabalho \(h^* = T - L^*\):

    \[
    \frac{\partial h^*}{\partial w} = \underbrace{-\frac{\partial L^c}{\partial w}}_{>0} + \underbrace{h^* \cdot \frac{\partial L^*}{\partial V}}_{<0 \text{ (se } L \text{ normal)}}
    \label{eq:17.8} \tag{17.8} \]

    Na equação $\eqref{eq:17.8}$, o sinal de \(\partial h^* / \partial w\) é **ambíguo**: depende de qual efeito domina. Para salários baixos, o efeito substituição tende a dominar; para salários altos, o efeito renda pode prevalecer. \(\blacksquare\)

### Conexão intertemporal: elasticidade de Frisch e o modelo de ciclo de vida

A decomposição de Slutsky apresentada acima trata a oferta de trabalho em um contexto estático — um único período. No Capítulo 18, estenderemos a análise para o contexto intertemporal, no qual o trabalhador aloca não apenas entre consumo e lazer em cada período, mas também entre consumo presente e futuro. Nesse arcabouço, a oferta de trabalho torna-se uma decisão de **substituição intertemporal de lazer**: o trabalhador pode escolher trabalhar mais hoje (quando o salário é alto) e menos amanhã (ou vice-versa), suavizando o consumo ao longo do tempo via poupança e endividamento.

Essa extensão dá origem a um conceito fundamental na macroeconomia moderna: a **elasticidade de Frisch** (ou elasticidade da oferta de trabalho com utilidade marginal da riqueza constante). Enquanto a elasticidade marshalliana (não compensada) e a elasticidade hicksiana (compensada) capturam, respectivamente, os efeitos totais e substituição em um período, a elasticidade de Frisch mede a resposta da oferta de trabalho a variações salariais **mantendo constante a utilidade marginal da riqueza** — ou seja, controlando para o nível de riqueza intertemporal do agente. Formalmente:

\[
\eta^F = \frac{\partial \ln h}{\partial \ln w}\bigg|_{\bar{\lambda}} \label{eq:17.8b} \tag{17.8b}
\]

onde \(\bar{\lambda}\) denota a utilidade marginal da riqueza mantida constante. A elasticidade de Frisch é sempre maior ou igual à elasticidade hicksiana, pois permite a substituição intertemporal de lazer entre períodos.

Na prática, a elasticidade de Frisch é central para modelos de ciclo real de negócios (*Real Business Cycle*) e para a análise de reformas tributárias: ela determina quanto os trabalhadores ajustam suas horas em resposta a variações temporárias nos salários (como bônus, horas extras em períodos de pico, ou incentivos fiscais temporários). Estimativas empíricas sugerem valores entre 0,5 e 1,0 para a elasticidade de Frisch agregada, significativamente maiores do que a elasticidade marshalliana (que tende a ser próxima de zero para homens). Essa diferença reflete o fato de que trabalhadores respondem muito mais a variações **temporárias** do salário do que a variações permanentes — precisamente porque podem substituir lazer intertemporalmente.

### Exemplo com Cobb-Douglas

Suponha \(U(C, L) = C^\alpha L^{1-\alpha}\), com \(0 < \alpha < 1\). A solução do problema de maximização gera:

\[
L^* = \frac{(1-\alpha)(wT + V)}{w}, \qquad h^* = T - L^* = \alpha T - \frac{(1-\alpha)V}{w}
\label{eq:17.9} \tag{17.9} \]

Neste caso, quando \(V = 0\), temos \(h^* = \alpha T\), que não depende de \(w\). Os efeitos renda e substituição se cancelam exatamente — uma propriedade conhecida das preferências Cobb-Douglas.

---

## 🎯 Exercícios Resolvidos

Os exercícios resolvidos a seguir aplicam os conceitos desenvolvidos neste capítulo. Recomenda-se tentar resolver cada exercício antes de consultar a solução.

??? exercicio-resolvido "Exercício Resolvido 17.1"
    **Enunciado:** Um trabalhador tem preferências \(U(C,L) = C^{1/2}\, L^{1/2}\), dotação de tempo \(T = 16\) horas e renda não salarial \(V = 32\). O salário-hora é \(w\).

    **Dados:** \(T = 16\), \(V = 32\), \(\alpha = 1/2\).

    **Resolução:**

    **Passo 1 — Demandas ótimas**

    Com Cobb-Douglas \(U = C^\alpha L^{1-\alpha}\), as demandas marshallianas são:

    \[
    L^* = \frac{(1-\alpha)(wT + V)}{w} = \frac{1}{2}\cdot\frac{16w + 32}{w} = 8 + \frac{16}{w}
    \]

    \[
    h^* = T - L^* = 16 - 8 - \frac{16}{w} = 8 - \frac{16}{w}
    \]

    \[
    C^* = w\,h^* + V = w\!\left(8 - \frac{16}{w}\right) + 32 = 8w + 16
    \]

    **Passo 2 — Salário de reserva**

    O trabalhador só oferta horas positivas se \(h^* > 0\):

    \[
    8 - \frac{16}{w} > 0 \;\Rightarrow\; w > 2
    \]

    O **salário de reserva** é \(w_R = 2\). Para \(w \leq 2\), o indivíduo não trabalha e consome apenas \(V = 32\).

    **Passo 3 — Inclinação da oferta**

    \[
    \frac{\partial h^*}{\partial w} = \frac{16}{w^2} > 0
    \]

    A oferta é sempre positivamente inclinada (não há backward-bending).

    **Resultado:** Para \(w = 4\), temos \(h^* = 8 - 4 = 4\) horas, \(L^* = 12\) horas e \(C^* = 48\).

    **Interpretação econômica:** Quando \(V = 0\), a Cobb-Douglas gera oferta perfeitamente inelástica (\(h^* = \alpha T = 8\)). A renda não salarial \(V > 0\) quebra essa propriedade: com \(V = 32\), o trabalhador pode "se dar ao luxo" de trabalhar menos em salários baixos, mas aumenta suas horas à medida que o salário sobe — o efeito substituição domina o efeito renda da variação em \(w\).

<iframe src="../graficos/cap17/webr-trabalho-lazer.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 17.1 — Modelo trabalho-lazer com Cobb-Douglas.** Altere $\alpha$, $T$ e $V$ para ver como a escolha ótima entre lazer e consumo muda. Compare a oferta de trabalho com e sem renda não salarial.

</div>

---

## 17.3 Ganhar Mais e Trabalhar Menos: A Curva Backward-Bending {#173}

A análise da seção anterior revelou que o efeito de um aumento salarial sobre a oferta de trabalho é teoricamente ambíguo. Mas essa ambiguidade não é uma mera curiosidade formal — ela se manifesta empiricamente em um dos fenômenos mais intrigantes da economia do trabalho: a curva de oferta de trabalho que "se volta para trás" (*backward-bending*). A partir de certo nível salarial, aumentos adicionais podem levar o trabalhador a trabalhar menos, não mais. Por que isso ocorre, e sob quais condições?

!!! definition "Curva de oferta de trabalho backward-bending"
    A curva de oferta de trabalho individual é dita **backward-bending** (voltada para trás) quando, a partir de determinado nível salarial, aumentos adicionais no salário levam o indivíduo a reduzir suas horas trabalhadas. Graficamente, a curva tem formato de "C invertido" no plano \((h, w)\).

### Intuição

- Para salários muito baixos, o indivíduo precisa trabalhar muitas horas para garantir um consumo mínimo. Aumentos salariais permitem que ele trabalhe mais e aumente seu consumo — o **efeito substituição** domina.
- Para salários muito altos, o indivíduo já dispõe de renda elevada. Um aumento salarial adicional gera um forte **efeito renda**, levando-o a "comprar" mais lazer e reduzir horas de trabalho.

### Formalização

A condição para que a curva se volte para trás é:

\[
\frac{\partial h^*}{\partial w} < 0 \quad \Leftrightarrow \quad \left| h^* \cdot \frac{\partial L^*}{\partial V} \right| > \left| \frac{\partial L^c}{\partial w} \right|
\]

Ou seja, o efeito renda (em valor absoluto) supera o efeito substituição. Isso é mais provável quando:

1. \(h^*\) é grande (muitas horas trabalhadas);
2. A elasticidade-renda do lazer é elevada;
3. O efeito substituição compensado é pequeno.

!!! idea "Intuição Econômica"
    **Em uma frase:** A partir de certo salário, ganhar mais faz a pessoa querer trabalhar menos, não mais — porque ela já pode "se dar ao luxo" de curtir a vida.

    **Pense assim:** Um médico recém-formado aceita plantões extras para pagar as contas. Mas um cirurgião sênior que já ganha muito bem prefere reduzir a carga e passar mais tempo com a família ou viajando. O dinheiro extra não compensa a perda de lazer — a curva de oferta "volta para trás".

    **Por que isso importa:** Esse fenômeno explica por que aumentar impostos sobre altas rendas nem sempre reduz o esforço de trabalho tanto quanto se imagina — e por que cortes de impostos para ricos nem sempre geram mais horas trabalhadas.

!!! tip "Evidência empírica"
    A evidência empírica sugere que a oferta de trabalho masculina é relativamente **inelástica** (elasticidade próxima de zero ou levemente negativa), enquanto a oferta feminina tende a ser mais elástica, especialmente para mulheres casadas. Isso é consistente com uma curva backward-bending para homens em faixas salariais observadas.

!!! warning "⚠️ Erro Comum"

    **Assumir que um aumento salarial sempre aumenta a oferta de trabalho.**

    Muitos alunos aplicam automaticamente a "lei da oferta" ao mercado de trabalho, concluindo que salários maiores geram mais horas trabalhadas. Isso ignora que o lazer é um bem normal: quando o salário sobe, o efeito renda incentiva o trabalhador a consumir mais lazer (trabalhar menos), enquanto o efeito substituição o incentiva a trocar lazer por consumo (trabalhar mais). O sinal líquido é **ambíguo** e depende de qual efeito domina. Para salários elevados, o efeito renda pode prevalecer, gerando a curva backward-bending. Na decomposição de Slutsky, sempre separe os dois efeitos antes de concluir sobre o sinal de \(\partial h^*/\partial w\).

---

O gráfico abaixo ilustra a curva de oferta de trabalho individual e a possibilidade de backward-bending. No painel superior, veja a escolha lazer-consumo para o salário selecionado. No painel inferior, a curva de oferta de trabalho \(h^*(w)\). Aumente \(\gamma\) para reduzir a elasticidade de substituição e observar o trecho onde o efeito renda domina.

<iframe src="../graficos/cap17/oferta-trabalho.html" title="Figura 17.2 — Curva de oferta de trabalho individual e a possibilidade de backward-bending" class="graph-iframe" style="height:1150px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 17.2 — Curva de oferta de trabalho individual e a possibilidade de backward-bending.** Aumente \(\gamma\) para reduzir a elasticidade de substituição e observar o trecho onde o efeito renda domina.
</div>

<iframe src="../graficos/cap17/webr-backward-bending.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 17.2 — Backward-bending com utilidade CES.** Compare curvas de oferta de trabalho para diferentes elasticidades de substituição ($\sigma$). Observe como $\sigma < 1$ gera a curva que "volta para trás".

</div>
