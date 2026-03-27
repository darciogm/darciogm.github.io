# Capítulo 17 — O Salário Subiu e Você… Trabalhou Menos?

Todo dia, ao desligar o despertador, você enfrenta — conscientemente ou não — o dilema mais antigo da economia: vale a pena trocar mais uma hora de travesseiro por mais uma hora de salário? A renda do trabalho representa cerca de dois terços da renda nacional na maioria dos países, e as decisões sobre quanto trabalhar, que carreira seguir e como negociar salários afetam profundamente o bem-estar individual e coletivo. Neste capítulo, aplicamos as ferramentas da microeconomia — teoria do consumidor, equilíbrio de mercado e poder de mercado — ao estudo da oferta e da demanda de trabalho. Spoiler: a resposta para "salário maior sempre faz a pessoa trabalhar mais" é um sonoro *depende*.

Partimos do modelo de alocação do tempo, no qual o indivíduo escolhe entre consumo e lazer, e derivamos rigorosamente a curva de oferta de trabalho. Em seguida, analisamos fenômenos como a curva de oferta backward-bending, o equilíbrio competitivo, os diferenciais salariais, o monopsônio e o papel dos sindicatos. Ao longo do capítulo, conectamos a teoria à realidade brasileira, marcada por elevada informalidade, desigualdade salarial e um debate persistente sobre os efeitos do salário mínimo.

---

## 17.1 Travesseiro ou Salário — Eis a Questão: Alocação do Tempo

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

## 17.2 Apertando os Parafusos com Álgebra: Oferta de Trabalho

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

## 17.3 Ganhar Mais e Trabalhar Menos: A Curva Backward-Bending

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

---

## 17.4 De Milhões de Despertadores a Uma Curva Só: Oferta Agregada

Até aqui, analisamos a oferta de trabalho do ponto de vista individual. Mas o mercado de trabalho é composto por milhões de trabalhadores heterogêneos, cada um com suas preferências, sua renda não salarial e seu salário de reserva. Como passamos da oferta individual — que pode ser backward-bending — para a oferta de mercado? A agregação produz uma curva com propriedades distintas, em grande parte porque incorpora não apenas a decisão de quantas horas trabalhar (margem intensiva), mas também a decisão de participar ou não da força de trabalho (margem extensiva).

A oferta de trabalho do mercado é obtida pela **agregação horizontal** das ofertas individuais. Se existem \(n\) trabalhadores, cada um com oferta \(h_i^*(w)\), a oferta agregada é:

\[
H^s(w) = \sum_{i=1}^{n} h_i^*(w)
\label{eq:17.10} \tag{17.10} \]

Mesmo que curvas individuais sejam backward-bending, a curva de mercado tende a ser **positivamente inclinada** por duas razões:

1. **Margem extensiva**: salários mais altos atraem novos trabalhadores ao mercado (pessoas que estavam fora da força de trabalho);
2. **Heterogeneidade**: diferentes trabalhadores atingem o ponto de inflexão em salários diferentes, de modo que a agregação suaviza o efeito.

!!! note "Margem intensiva vs. extensiva"
    A **margem intensiva** refere-se à decisão de quantas horas trabalhar (dado que se está empregado). A **margem extensiva** refere-se à decisão de participar ou não da força de trabalho. A análise do modelo trabalho-lazer captura primariamente a margem intensiva, mas a curva de mercado incorpora ambas.

### A decisão de participação (margem extensiva)

A margem extensiva merece atenção especial porque é quantitativamente tão importante quanto a margem intensiva — e, para certos grupos demográficos, é ainda mais relevante. O conceito central aqui é o **salário de reserva** \(w_R\): o salário mínimo que induz o indivíduo a ofertar pelo menos uma hora de trabalho. Formalmente, \(w_R\) é a taxa marginal de substituição entre lazer e consumo avaliada no ponto de não participação (\(h = 0\)):

\[
w_R = \frac{U_L(V, T)}{U_C(V, T)} \label{eq:17.10b} \tag{17.10b}
\]

Se o salário de mercado \(w < w_R\), o indivíduo não participa da força de trabalho. Se \(w \geq w_R\), ele oferece horas positivas. A **taxa de participação** da economia é a fração de indivíduos em idade ativa para os quais \(w \geq w_R\).

A taxa de participação varia enormemente entre grupos demográficos e países, e suas mudanças ao longo do tempo revelam transformações sociais profundas. No Brasil, segundo a PNAD Contínua/IBGE (2024), a taxa de participação na força de trabalho apresenta diferenças marcantes por gênero:

- **Homens:** taxa de participação de aproximadamente 73%, relativamente estável nas últimas décadas;
- **Mulheres:** taxa de participação de aproximadamente 53%, tendo crescido expressivamente desde os anos 1970 (quando era inferior a 30%), mas ainda significativamente abaixo da masculina.

Essa diferença de 20 pontos percentuais reflete uma combinação de fatores: divisão desigual do trabalho doméstico e de cuidados (que eleva o salário de reserva feminino), normas culturais, barreiras à participação (como a insuficiência de creches e escolas em tempo integral) e discriminação no mercado de trabalho. Políticas públicas que reduzem o custo do cuidado infantil — como a universalização de creches — podem reduzir o salário de reserva feminino e elevar a participação, com efeitos positivos sobre o PIB e a igualdade de gênero.

Internacionalmente, os países nórdicos apresentam as menores diferenças de participação por gênero (5–7 pontos percentuais), graças a políticas abrangentes de licença parental compartilhada, creches públicas universais e incentivos fiscais à participação feminina. Já em países do Oriente Médio e do Norte da África, a diferença pode superar 50 pontos percentuais, refletindo barreiras institucionais e culturais mais severas.

Do ponto de vista empírico, a maior parte da variação na oferta de trabalho agregada — tanto entre países quanto ao longo do tempo — advém de mudanças na **margem extensiva**, não na intensiva. É por isso que modelos que ignoram a decisão de participação subestimam a elasticidade da oferta de trabalho agregada: mesmo que cada indivíduo empregado ajuste pouco suas horas, a entrada e saída de trabalhadores do mercado gera grande variação no total de horas ofertadas.

---

## 17.5 Onde Oferta e Demanda se Encontram: Equilíbrio no Mercado de Trabalho

Hora de juntar as duas metades da história. Até aqui, olhamos o mercado de trabalho pelo lado do trabalhador, que decide quantas horas vender. Mas ninguém vende horas para o vazio — do outro lado do balcão está a firma, que compra trabalho porque precisa produzir. O mecanismo é análogo ao de qualquer mercado competitivo, com uma particularidade saborosa: a demanda por trabalho é uma demanda *derivada*, que não surge do desejo de "ter" trabalhadores, mas da necessidade de transformar horas de esforço em produto vendável.

### Determinação do salário competitivo

No modelo competitivo, o mercado de trabalho funciona como qualquer outro mercado. O salário de equilíbrio \(w^*\) é determinado pela interseção da curva de oferta agregada \(H^s(w)\) com a curva de demanda agregada por trabalho \(H^d(w)\).

A **demanda por trabalho** da firma advém da maximização de lucros. No curto prazo, com capital fixo, a firma contrata trabalho até que:

\[
w = p \cdot PMg_L = VPMg_L \label{eq:17.11} \tag{17.11}
\]

onde \(PMg_L\) é o produto marginal do trabalho e \(VPMg_L\) é o **valor do produto marginal do trabalho**. A equação $\eqref{eq:17.11}$ mostra que a curva de demanda por trabalho é a curva de \(VPMg_L\), que é decrescente (devido à lei dos rendimentos decrescentes).

!!! definition "Equilíbrio competitivo no mercado de trabalho"
    O equilíbrio competitivo ocorre no par \((w^*, H^*)\) tal que:

    \[
    H^s(w^*) = H^d(w^*) = H^*
    \label{eq:17.12} \tag{17.12} \]

    Nesse equilíbrio, todo trabalhador que deseja trabalhar ao salário \(w^*\) encontra emprego, e toda firma que deseja contratar ao salário \(w^*\) encontra trabalhadores.

### Demanda por trabalho no longo prazo e as regras de Marshall

A equação $\eqref{eq:17.11}$ descreve a demanda por trabalho no **curto prazo**, quando o capital é fixo. No **longo prazo**, a firma pode ajustar todos os fatores de produção, e a demanda por trabalho torna-se mais elástica. A intuição é que, quando o salário sobe, a firma não apenas reduz a produção (efeito-escala), mas também substitui trabalho por capital (efeito-substituição entre fatores). Ambos os efeitos reduzem a quantidade demandada de trabalho, tornando a curva de demanda de longo prazo mais plana que a de curto prazo.

Alfred Marshall (1890) formulou quatro regras — conhecidas como as **regras de Marshall da demanda derivada** — que determinam a elasticidade da demanda por um fator de produção. A demanda por trabalho será **mais elástica** quando:

1. **A elasticidade de substituição entre trabalho e capital for alta.** Se for fácil substituir trabalhadores por máquinas, um pequeno aumento salarial levará a uma grande substituição.

2. **A demanda pelo produto final for mais elástica.** Se os consumidores são sensíveis ao preço do produto, um aumento nos custos trabalhistas (repassado aos preços) reduz muito a quantidade vendida — e, portanto, o emprego.

3. **A participação do trabalho no custo total for grande.** Quando os salários representam uma fração elevada do custo de produção, variações salariais têm impacto proporcionalmente maior sobre o custo total e o preço do produto.

4. **A oferta dos outros fatores (capital) for mais elástica.** Se o capital é abundante e barato, a firma pode facilmente substituir trabalho por capital quando o salário sobe.

Essas regras são extremamente úteis para prever os efeitos de políticas salariais e trabalhistas em diferentes setores. Por exemplo, no setor de serviços pessoais (restaurantes, cuidados), onde a substituição por capital é difícil e o trabalho é uma fração elevada dos custos, a demanda por trabalho tende a ser relativamente inelástica no curto prazo, mas a regra 2 pode torná-la mais elástica no longo prazo se os consumidores tiverem alternativas. Já na indústria manufatureira, onde a substituição por automação é viável (regra 1), a demanda por trabalho tende a ser bastante elástica no longo prazo.

!!! idea "Intuição Econômica"
    **Em uma frase:** A demanda por trabalho é uma demanda "derivada" — depende não apenas da produtividade do trabalhador, mas também de quanto os consumidores querem o produto e de quão fácil é substituir trabalhadores por máquinas.

    **Pense assim:** Um restaurante que paga seus garçons por hora enfrenta um aumento do salário mínimo. No curto prazo, demite poucos garçons (é difícil substituí-los por robôs — por enquanto). Mas uma fábrica de autopeças, nas mesmas condições, pode instalar braços robóticos e demitir metade da linha de produção. A mesma variação salarial gera respostas de emprego muito diferentes, porque a elasticidade de substituição entre trabalho e capital é diferente.

    **Por que isso importa:** As regras de Marshall explicam por que os efeitos de políticas como o salário mínimo, encargos trabalhistas ou desonerações fiscais variam dramaticamente entre setores — e por que uma análise "tamanho único" pode ser enganosa.

### Deslocamentos das curvas

A [Tabela 17.1](#tabela-17-1) apresenta os principais fatores que deslocam as curvas de oferta e demanda de trabalho.

<a id="tabela-17-1"></a>

| Fator | Efeito sobre a oferta | Efeito sobre a demanda | Impacto no salário |
|---|---|---|---|
| Aumento da produtividade | — | Desloca \(H^d\) para a direita | \(w^*\) sobe |
| Imigração | Desloca \(H^s\) para a direita | — | \(w^*\) cai |
| Aumento da renda não salarial | Desloca \(H^s\) para a esquerda | — | \(w^*\) sobe |
| Progresso tecnológico poupador de trabalho | — | Desloca \(H^d\) para a esquerda | \(w^*\) cai |

<div class="caption-obj" markdown>
**Tabela 17.1 — Deslocamentos das curvas de oferta e demanda de trabalho.**
</div>

!!! box-mundo "Box Mundo 17.3 — O declínio global da participação do trabalho na renda"
    **Contexto:** Um dos fatos macroeconômicos mais marcantes das últimas décadas é a queda sustentada da parcela do trabalho na renda nacional (*labor share*) em praticamente todos os países. Enquanto a divisão funcional da renda entre trabalho e capital era tradicionalmente considerada uma das "grandes constantes" da economia (Kaldor, 1961), evidências recentes mostram que essa constância se desfez.

    **Dados:** Karabarbounis e Neiman (2014), em estudo influente publicado no *Quarterly Journal of Economics*, documentaram que a participação do trabalho na renda caiu em 42 dos 59 países analisados entre 1975 e 2012:

    | Região/País | Labor share (anos 1970) | Labor share (anos 2010) | Variação |
    |---|---|---|---|
    | Países avançados (média) | ~65% | ~58% | −7 p.p. |
    | Estados Unidos | 66% | 58% | −8 p.p. |
    | Alemanha | 67% | 61% | −6 p.p. |
    | Japão | 72% | 60% | −12 p.p. |
    | China | 60% | 47% | −13 p.p. |

    *Fonte: Karabarbounis, L.; Neiman, B. (2014). "The Global Decline of the Labor Share." Quarterly Journal of Economics, 129(1), 61–103; Penn World Tables; AMECO.*

    **Análise:** Os autores argumentam que a principal causa é o barateamento dos bens de capital (computadores, robôs, software), que incentivou as firmas a substituírem trabalho por capital. Quando a elasticidade de substituição entre capital e trabalho é superior a 1 (ou seja, capital e trabalho são substitutos brutos), o barateamento do capital reduz a participação do trabalho na renda. Explicações complementares incluem: a globalização (que aumentou a oferta efetiva de trabalho via offshoring), o enfraquecimento dos sindicatos, o aumento do poder de mercado das firmas (superstar firms) e mudanças tecnológicas enviesadas contra o trabalho. O fenômeno conecta-se diretamente às regras de Marshall da demanda derivada: a elasticidade de substituição entre fatores (regra 1) determina como o barateamento do capital afeta a demanda relativa por trabalho.

    **Para refletir:** Se a tendência de queda do labor share continuar, quais são as implicações para a distribuição de renda e para a política tributária? Devemos tributar mais o capital e menos o trabalho? A ideia de uma renda básica universal, financiada pela tributação do capital e de recursos naturais, ganha relevância em um mundo onde a participação do trabalho na renda diminui sistematicamente?

---

## 17.6 Por Que o Médico Ganha Mais Que o Professor: Diferenciais Salariais

O modelo competitivo da seção anterior prevê um único salário de equilíbrio para trabalhadores homogêneos em um mercado sem fricções. Na prática, porém, observamos diferenças salariais enormes: médicos ganham mais que professores, engenheiros em plataformas de petróleo ganham mais que engenheiros em escritórios, e persistem hiatos significativos de gênero e raça mesmo entre profissionais com qualificações similares. O que explica essa dispersão? A teoria econômica oferece diversas explicações, que podem ser agrupadas em três grandes categorias.

### Capital humano

!!! definition "Capital humano"
    **Capital humano** é o estoque de habilidades, conhecimentos e experiência que um trabalhador acumula ao longo da vida, principalmente por meio da educação formal e do treinamento no trabalho (*on-the-job training*). O conceito foi formalizado por Gary Becker (1964) e Theodore Schultz (1961).

!!! info "🏅 Prêmio Nobel — Gary S. Becker (1992) e Theodore W. Schultz (1979)"

    **Gary Stanley Becker** (1930–2014) foi um economista americano. Obteve o PhD na Universidade de Chicago sob orientação de Milton Friedman e foi professor em Chicago por mais de cinco décadas.

    **Theodore William Schultz** (1902–1998) foi um economista americano. Obteve o PhD na Universidade de Wisconsin e foi professor na Universidade de Chicago. Dividiu o Nobel de 1979 com Arthur Lewis.

    **Por que ganharam o Nobel:**
    Schultz foi premiado por sua pesquisa pioneira em desenvolvimento econômico, com atenção especial ao papel da educação e do investimento em capital humano como motor do crescimento. Becker estendeu a análise econômica a domínios tradicionalmente não econômicos — discriminação racial, crime, família — e formalizou a teoria do capital humano, mostrando que a decisão de investir em educação segue a mesma lógica de custo-benefício intertemporal de qualquer investimento em capital físico.

    **Conexão com este capítulo:**
    A teoria do capital humano — que interpreta educação, treinamento e saúde como investimentos que aumentam a produtividade futura do trabalhador — é apresentada neste capítulo como extensão da teoria da demanda por fatores. A análise de Becker sobre discriminação no mercado de trabalho e a contribuição de Schultz sobre o papel da educação no desenvolvimento conectam diretamente a microeconomia dos mercados de trabalho às questões de desigualdade e crescimento.

O modelo de capital humano prevê que trabalhadores mais educados recebem salários mais altos porque são mais produtivos. A decisão de investir em educação segue a mesma lógica de qualquer investimento: comparam-se os custos (mensalidades, custo de oportunidade do tempo) com os benefícios (salários futuros mais altos).

A **equação de Mincer** relaciona o logaritmo do salário ao nível de educação e à experiência:

\[
\ln w = \beta_0 + \beta_1 S + \beta_2 X + \beta_3 X^2 + \varepsilon
\label{eq:17.13} \tag{17.13} \]

onde \(S\) é anos de escolaridade, \(X\) é experiência (ou idade − escolaridade − 6), e \(\beta_1\) é interpretado como a **taxa de retorno da educação**.

### Diferenciais compensatórios

Adam Smith já observava que trabalhos mais desagradáveis, perigosos ou insalubres tendem a pagar salários mais altos. No equilíbrio, diferenças salariais refletem diferenças nas **características não pecuniárias** dos empregos: risco de acidente, condições ambientais, horário, localização, estabilidade etc.

### Discriminação

Diferenças salariais também podem refletir **discriminação** por gênero, raça, etnia ou outras características. A teoria econômica distingue duas formas principais de discriminação no mercado de trabalho:

**Discriminação baseada em preferências (Becker, 1957).** No modelo de Becker, alguns empregadores, trabalhadores ou consumidores têm "gosto por discriminação" — uma desutilidade ao interagir com membros de certos grupos. Empregadores discriminadores estão dispostos a pagar um prêmio para contratar trabalhadores do grupo preferido, mesmo que a produtividade seja idêntica. Formalmente, o empregador discriminador age como se o custo de contratar um trabalhador do grupo discriminado fosse \(w(1 + d)\), onde \(d > 0\) é o **coeficiente de discriminação**. Uma implicação importante do modelo de Becker é que, em mercados competitivos, a discriminação tende a ser eliminada no longo prazo: firmas que não discriminam têm custos menores e obtêm lucros maiores, expulsando as firmas discriminadoras do mercado. A persistência da discriminação, portanto, requer alguma imperfeição de mercado — poder de mercado, barreiras à entrada ou custos de informação.

**Discriminação estatística (Phelps, 1972; Arrow, 1973).** Neste modelo, empregadores racionais e não preconceituosos utilizam características observáveis do grupo (gênero, raça, idade) como proxies para produtividade individual quando a informação sobre o trabalhador é imperfeita. Se, por exemplo, um empregador acredita (correta ou incorretamente) que a variância de produtividade é maior em certo grupo, pode preferir candidatos do grupo com menor variância percebida, mesmo que a produtividade média seja igual. A discriminação estatística é particularmente insidiosa porque: (i) pode ser praticada por agentes perfeitamente racionais e sem preconceito; (ii) pode se auto-confirmar — se mulheres ou negros sabem que serão discriminados, podem investir menos em capital humano, confirmando a crença original (profecia autorrealizável); (iii) não é eliminada pela competição, pois é uma resposta ótima a informação imperfeita.

**Decomposição de Oaxaca-Blinder.** Para medir a magnitude da discriminação salarial, economistas utilizam a técnica de **decomposição de Oaxaca-Blinder** (Oaxaca, 1973; Blinder, 1973). Suponha que estimamos equações de salário separadas para dois grupos (por exemplo, homens e mulheres):

\[
\ln w_H = X_H \hat{\beta}_H, \qquad \ln w_M = X_M \hat{\beta}_M
\]

onde \(X\) denota as características observáveis (educação, experiência, ocupação) e \(\hat{\beta}\) os retornos estimados. A diferença salarial média pode ser decomposta como:

\[
\underbrace{\overline{\ln w_H} - \overline{\ln w_M}}_{\text{diferencial total}} = \underbrace{(\bar{X}_H - \bar{X}_M)\hat{\beta}_H}_{\text{parte explicada}} + \underbrace{\bar{X}_M(\hat{\beta}_H - \hat{\beta}_M)}_{\text{parte não explicada}}
\label{eq:17.13b} \tag{17.13b}
\]

A **parte explicada** reflete diferenças nas características dos trabalhadores (mulheres podem ter menos experiência por interrupções de carreira, por exemplo). A **parte não explicada** — frequentemente interpretada como uma medida superior de discriminação — reflete diferenças nos retornos a características iguais: o fato de que homens e mulheres com a mesma educação e experiência recebem remunerações diferentes.

Aplicações da decomposição de Oaxaca-Blinder ao Brasil (por exemplo, Giuberti e Menezes-Filho, 2005) mostram que a parte não explicada do diferencial de gênero responde por 60–70% do hiato total, sugerindo que a discriminação (no sentido amplo, incluindo barreiras à promoção e segregação ocupacional) é responsável pela maior parte do diferencial salarial de gênero no país.

!!! idea "Intuição Econômica"
    **Em uma frase:** Nem toda diferença salarial é discriminação — mas a parte que sobra depois de controlar por educação, experiência e ocupação é um sinal forte de que o mercado não está tratando todos igualmente.

    **Pense assim:** Duas colegas de turma na faculdade de engenharia, uma branca e outra negra, se formam com notas idênticas, fazem estágio na mesma empresa e têm a mesma experiência. Dez anos depois, a primeira ganha 30% a mais. A decomposição de Oaxaca-Blinder separa essa diferença: quanto se deve a fatores observáveis (como tipo de empresa, setor, cidade) e quanto é "inexplicado" — a parte que, na ausência de melhor explicação, atribuímos à discriminação.

    **Por que isso importa:** A decomposição não é apenas um exercício econométrico: ela informa políticas públicas. Se a maior parte do hiato é explicada por diferenças de educação, a política correta é ampliar o acesso à educação. Se a parte não explicada é grande, medidas como fiscalização de igualdade salarial, cotas e transparência remuneratória tornam-se necessárias.

---

!!! box-brasil "O prêmio salarial da educação e os hiatos de gênero e raça"
    A equação de Mincer aplicada ao Brasil revela um dos maiores retornos à educação do mundo — e, ao mesmo tempo, uma desigualdade que persiste mesmo após o controle por escolaridade.

    **Prêmio salarial do ensino superior:**

    Segundo a PNAD Contínua/[IBGE](https://www.ibge.gov.br) (2.º trimestre de 2024), trabalhadores com ensino superior completo recebem, em média, **126% a mais** do que aqueles com ensino médio completo ou superior incompleto. Esse diferencial, embora ainda elevado, caiu 26 pontos percentuais em 12 anos, refletindo a expansão do acesso ao ensino superior.

    **Desigualdade por gênero:**

    O 3.º Relatório de Transparência Salarial do [MTE](https://www.gov.br/trabalho) (2025) mostra que as mulheres recebem, em média, **20,7% a menos** que os homens. Quando se adiciona o recorte racial, o hiato se amplia: mulheres negras ganham **53% a menos** que homens brancos.

    **Desigualdade por raça:**

    Mesmo entre trabalhadores com diploma universitário, o rendimento médio de negros (R$ 4.798) é **32% inferior** ao de não negros (R$ 7.030), segundo a PNAD Contínua 2024. Essa diferença sugere que fatores além do capital humano — como discriminação no mercado de trabalho e segregação ocupacional — desempenham papel relevante.

    **Conexão com a teoria:**

    A teoria do capital humano (seção 17.6) explica parte substancial dos diferenciais salariais observados: mais educação → maior produtividade → salário mais alto. Contudo, os hiatos persistentes de gênero e raça, mesmo controlando por escolaridade, apontam para a relevância dos modelos de discriminação (Becker, 1957) e de barreiras estruturais no acesso a ocupações de alta remuneração.

    *Fonte: PNAD Contínua/IBGE, 2.º tri 2024; MTE, 3.º Relatório de Transparência Salarial, 2025.*

---

## 17.7 Quando Só Tem Um Patrão na Cidade: Monopsônio

Até aqui, o mercado de trabalho era uma democracia: muitos vendedores, muitos compradores, ninguém mandando no preço. Mas pergunte a um professor em cidade pequena do interior, onde a prefeitura é a única empregadora com carteira assinada, se o mercado parece competitivo. Quando há poder de mercado do lado da demanda — isto é, quando uma firma (ou poucas firmas) é a única compradora de trabalho em uma região ou ocupação —, entramos no território do monopsônio, o espelho do monopólio no mercado de bens. O resultado é previsível e desagradável: salários abaixo da produtividade e emprego inferior ao socialmente ótimo.

!!! definition "Monopsônio"
    **Monopsônio** é a estrutura de mercado em que existe um único comprador de trabalho (ou poucos compradores com poder de mercado). Nessa situação, a firma não é tomadora de salário: ao contratar mais trabalhadores, ela eleva o salário de mercado.

### Maximização de lucro do monopsonista

Para o monopsonista, a oferta de trabalho é a curva de oferta do mercado: \(w = w(H)\), com \(w'(H) > 0\). O custo total do trabalho é:

\[
CT_L = w(H) \cdot H
\]

O **custo marginal do trabalho** (despesa marginal) é:

\[
CMg_L = \frac{dCT_L}{dH} = w(H) + H \cdot w'(H) > w(H)
\label{eq:17.14} \tag{17.14} \]

O monopsonista contrata até que:

\[
VPMg_L = CMg_L
\label{eq:17.15} \tag{17.15} \]

Isso resulta em:

- **Emprego menor** do que no equilíbrio competitivo;
- **Salário menor** do que no equilíbrio competitivo.

A diferença \(VPMg_L - w\) é a **exploração monopsonística** (no sentido de Joan Robinson).

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando há um único grande empregador na região, ele pode pagar salários abaixo da produtividade dos trabalhadores porque eles não têm para onde ir.

    **Pense assim:** Em muitas cidades pequenas do interior do Brasil, a prefeitura ou uma única fábrica é praticamente a única empregadora formal. Se o trabalhador pede aumento, não tem concorrente para onde migrar. O empregador sabe disso e mantém salários baixos, mesmo que o trabalhador produza muito mais do que recebe.

    **Por que isso importa:** Em mercados monopsonísticos, um salário mínimo bem calibrado pode, paradoxalmente, aumentar emprego e salário ao mesmo tempo — uma das conclusões mais contraintuitivas da economia do trabalho.

### O "novo monopsônio": poder de mercado sem ser o único empregador

O modelo clássico de monopsônio — uma única firma em uma cidade isolada — pode parecer uma construção teórica com aplicações limitadas. Mas a partir dos anos 2000, uma revolução na economia do trabalho mostrou que o poder monopsonístico é muito mais disseminado do que se pensava. O trabalho seminal de Alan Manning (2003, *Monopsony in Motion*) demonstrou que **custos de mobilidade, fricções de busca e informação imperfeita** conferem às firmas poder de mercado sobre seus trabalhadores mesmo em mercados com múltiplos empregadores. Essa abordagem, conhecida como "novo monopsônio" (*new monopsony*), tem implicações profundas para a análise do mercado de trabalho.

A ideia central é simples: se um trabalhador não pode instantaneamente e sem custo encontrar um emprego equivalente em outra firma, então seu empregador atual detém algum poder de monopsônio sobre ele. As fontes desse poder incluem:

- **Custos de busca:** encontrar um novo emprego requer tempo, esforço e, frequentemente, custos financeiros (deslocamento para entrevistas, períodos sem salário).
- **Custos de mudança geográfica:** se as alternativas de emprego estão em outra cidade, os custos de mudança (moradia, escola dos filhos, redes sociais) criam uma barreira significativa.
- **Informação imperfeita:** trabalhadores nem sempre conhecem todas as vagas disponíveis e suas condições — especialmente em mercados informais.
- **Preferências heterogêneas por empregador:** trabalhadores podem preferir certas firmas por localização, ambiente de trabalho ou horário, mesmo que paguem menos.
- **Concentração do mercado de trabalho:** em muitos mercados de trabalho locais (definidos por ocupação × região), poucas firmas respondem pela maioria das contratações.

Estudos recentes sobre **concentração do mercado de trabalho** (Azar, Marinescu e Steinbaum, 2022) documentaram que muitos mercados de trabalho locais nos EUA são altamente concentrados — com índices Herfindahl-Hirschman (HHI) comparáveis aos de mercados de bens que seriam alvo de regulação antitruste. Mercados mais concentrados apresentam salários significativamente menores, mesmo controlando para produtividade. No Brasil, onde a combinação de grandes distâncias, informalidade e baixa mobilidade geográfica é particularmente acentuada, o poder monopsonístico pode ser ainda mais relevante.

O novo monopsônio tem implicações diretas para políticas públicas. Se as firmas detêm poder de mercado sobre os trabalhadores, então: (i) o salário mínimo pode elevar o emprego (como no modelo clássico); (ii) políticas que aumentam a transparência salarial e facilitam a busca por emprego (como plataformas de vagas e obrigatoriedade de divulgação de faixas salariais) podem elevar salários; (iii) a análise antitruste deveria considerar não apenas os efeitos sobre consumidores, mas também sobre trabalhadores — uma fronteira emergente no direito concorrencial.

!!! tip "Monopsônio e salário mínimo"
    Uma implicação surpreendente do modelo de monopsônio é que a imposição de um **salário mínimo** pode, sob certas condições, aumentar **simultaneamente** o salário e o emprego. Isso ocorre porque o salário mínimo transforma a curva de custo marginal do trabalho em uma linha horizontal até o ponto em que a oferta de trabalho ao salário mínimo se esgota, eliminando o incentivo do monopsonista a restringir contratações.

---

O gráfico abaixo mostra o equilíbrio monopsonístico versus o competitivo. A curva de oferta de trabalho \(S(w)\), o custo marginal do trabalho (CMgL) e a curva de valor do produto marginal (VPMgL) determinam o emprego e o salário. A diferença entre VPMg e o salário pago no monopsônio é a exploração monopsonística.

<iframe src="../graficos/cap17/monopsonio.html" title="Figura 17.3 — Equilíbrio monopsonístico versus competitivo no mercado de trabalho" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 17.3 — Equilíbrio monopsonístico versus competitivo no mercado de trabalho.** A diferença entre VPMg e o salário pago no monopsônio é a exploração monopsonística.
</div>

---

!!! box-mundo "Box Mundo 17.2 — Card e Krueger e a revolução do salário mínimo"
    **Contexto:** Em 1992, o estado de New Jersey elevou seu salário mínimo de US\$ 4,25 para US\$ 5,05 por hora, enquanto a vizinha Pennsylvania manteve o mínimo inalterado. Os economistas David Card e Alan Krueger aproveitaram esse "experimento natural" para estimar o efeito causal do salário mínimo sobre o emprego, comparando restaurantes de fast-food nos dois estados antes e depois do aumento — um design de diferenças-em-diferenças que se tornaria um marco na economia empírica.

    **Dados:** Card e Krueger (1994) pesquisaram 410 restaurantes (Burger King, KFC, Wendy's, Roy Rogers) ao longo da fronteira NJ-PA. Seus resultados foram surpreendentes:

    | Indicador | New Jersey (aumento do SM) | Pennsylvania (controle) | Diferença-em-diferenças |
    |---|---|---|---|
    | Variação no emprego médio (ETI) | +0,59 | −2,16 | **+2,76** |

    O emprego em New Jersey não caiu — ao contrário, aumentou relativamente a Pennsylvania. Este resultado desafiou diretamente a previsão do modelo competitivo.

    **Análise:** O estudo gerou intensa controvérsia. Neumark e Wascher (2000) reanalisaram os dados usando registros administrativos (em vez de pesquisas telefônicas) e encontraram efeitos negativos sobre o emprego. Card e Krueger (2000) responderam com uma nova análise dos mesmos dados administrativos, confirmando seus resultados originais. Meta-análises recentes (Dube, 2019) sugerem que o consenso empírico se moveu significativamente: aumentos moderados do salário mínimo (da ordem de 10%) têm efeitos sobre o emprego **próximos de zero ou muito pequenos**, consistentes com modelos de monopsônio ou busca com fricções. Os efeitos negativos, quando existem, concentram-se em aumentos muito grandes ou em mercados com muita competição entre empregadores.

    **Para refletir:** O debate Card-Krueger ilustra como a evidência empírica pode desafiar modelos teóricos estabelecidos. O modelo competitivo prevê inequivocamente que salários mínimos acima do equilíbrio reduzem o emprego. Se a evidência mostra efeitos nulos ou positivos, isso sugere que o mercado de trabalho não é competitivo — e que modelos com poder monopsonístico (seção 17.7) podem ser mais realistas. Qual modelo melhor descreve o mercado de trabalho do seu bairro?

??? exercicio-resolvido "Exercício Resolvido 17.2"
    **Enunciado:** Uma firma monopsonista enfrenta a curva de oferta de trabalho \(w = 4 + 2H\) e possui valor do produto marginal \(VPMg_L = 100 - 2H\). (a) Encontre o equilíbrio competitivo. (b) Encontre o equilíbrio monopsonístico e calcule a exploração. (c) Se o governo impõe um salário mínimo igual ao competitivo, qual o efeito sobre emprego e salário no monopsônio?

    **Dados:** \(w(H) = 4 + 2H\); \(VPMg_L = 100 - 2H\).

    **Resolução:**

    **Passo 1 — Equilíbrio competitivo**

    No equilíbrio competitivo, \(VPMg_L = w\):

    \[
    100 - 2H = 4 + 2H \;\Rightarrow\; 96 = 4H \;\Rightarrow\; H_c = 24, \quad w_c = 4 + 2(24) = 52
    \]

    **Passo 2 — Equilíbrio monopsonístico**

    O custo total do trabalho é \(CT_L = w \cdot H = (4 + 2H)H = 4H + 2H^2\).

    O custo marginal do trabalho é:

    \[
    CMg_L = \frac{dCT_L}{dH} = 4 + 4H
    \]

    Igualando \(VPMg_L = CMg_L\):

    \[
    100 - 2H = 4 + 4H \;\Rightarrow\; 96 = 6H \;\Rightarrow\; H_m = 16
    \]

    O salário pago é determinado pela curva de oferta:

    \[
    w_m = 4 + 2(16) = 36
    \]

    O valor do produto marginal no ponto de emprego monopsonístico é:

    \[
    VPMg_L(16) = 100 - 32 = 68
    \]

    **Exploração monopsonística:** \(VPMg_L - w_m = 68 - 36 = 32\).

    **Passo 3 — Salário mínimo no monopsônio**

    Com \(w_{\min} = 52\), o custo marginal do trabalho torna-se horizontal em 52 até \(H = 24\) (quando a oferta se iguala a 52):

    \[
    VPMg_L = w_{\min}:\quad 100 - 2H = 52 \;\Rightarrow\; H = 24
    \]

    **Resultado:** O salário mínimo eleva o emprego de 16 para 24 (+50%) e o salário de 36 para 52 (+44%), restaurando o equilíbrio competitivo.

    **Interpretação econômica:** O salário mínimo elimina o poder monopsonístico ao tornar o custo marginal do trabalho constante. Este resultado contrasta com o modelo competitivo, no qual o salário mínimo sempre reduz o emprego — e ajuda a entender por que estudos empíricos (como Card e Krueger, 1994) encontram efeitos nulos ou positivos do salário mínimo sobre o emprego em mercados com concentração de empregadores.

<iframe src="../graficos/cap17/webr-monopsonio.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 17.3 — Monopsônio no mercado de trabalho.** Altere os parâmetros da oferta e da demanda por trabalho e veja como a exploração monopsonística muda. Teste o efeito de um salário mínimo.

</div>

---

??? exercicio-resolvido "Exercício Resolvido 17.3"
    **Enunciado:** Um economista estima a seguinte equação de Mincer com dados da PNAD para o Brasil:

    \[
    \ln w_i = 1{,}20 + 0{,}12 S_i + 0{,}05 X_i - 0{,}0007 X_i^2 - 0{,}18 D_i^{fem} - 0{,}15 D_i^{negro} + \varepsilon_i
    \]

    onde \(w_i\) é o salário-hora, \(S_i\) são os anos de escolaridade, \(X_i\) é a experiência (em anos), \(D_i^{fem}\) é uma dummy para gênero feminino e \(D_i^{negro}\) é uma dummy para raça negra.

    (a) Interprete o coeficiente \(\hat{\beta}_1 = 0{,}12\).

    (b) Calcule a experiência que maximiza o salário (mantidos os demais fatores constantes).

    (c) Calcule a diferença salarial percentual entre um homem branco e uma mulher negra com mesma escolaridade e experiência.

    (d) Discuta se os coeficientes das dummies capturam necessariamente discriminação.

    **Resolução:**

    **Passo 1 — Retorno da educação**

    O coeficiente \(\hat{\beta}_1 = 0{,}12\) indica que cada ano adicional de escolaridade está associado a um aumento de aproximadamente **12%** no salário-hora, *ceteris paribus*. Formalmente, como a variável dependente está em logaritmo:

    \[
    \frac{\partial \ln w}{\partial S} = 0{,}12 \implies \frac{\Delta w / w}{\Delta S} \approx 12\%
    \]

    Esse valor é consistente com estimativas para o Brasil, que encontram retornos à educação entre 10% e 15% por ano — entre os mais altos do mundo, refletindo a grande escassez relativa de mão de obra qualificada.

    **Passo 2 — Experiência ótima**

    O perfil de experiência-salário é côncavo: \(0{,}05X - 0{,}0007X^2\). Maximizando:

    \[
    \frac{\partial \ln w}{\partial X} = 0{,}05 - 0{,}0014X = 0 \implies X^* = \frac{0{,}05}{0{,}0014} \approx 35{,}7 \text{ anos}
    \]

    O salário atinge seu pico com aproximadamente **36 anos de experiência** (para alguém que começou a trabalhar aos 18, isso corresponde aos 54 anos de idade). Após esse ponto, o salário decresce — refletindo a depreciação do capital humano (obsolescência de habilidades, menor vigor físico em trabalhos manuais).

    **Passo 3 — Diferencial de gênero e raça**

    Para um homem branco (\(D^{fem} = 0, D^{negro} = 0\)) e uma mulher negra (\(D^{fem} = 1, D^{negro} = 1\)) com mesma escolaridade e experiência:

    \[
    \ln w_{HB} - \ln w_{MN} = -(-0{,}18) - (-0{,}15) = 0{,}33
    \]

    Em termos percentuais:

    \[
    \frac{w_{HB} - w_{MN}}{w_{MN}} = e^{0{,}33} - 1 \approx 0{,}391 = 39{,}1\%
    \]

    Uma mulher negra recebe, em média, **39,1% a menos** que um homem branco com mesma educação e experiência.

    **Passo 4 — Interpretação causal**

    Os coeficientes das dummies **não capturam necessariamente discriminação pura**. Eles medem o diferencial salarial condicional às variáveis incluídas na regressão. Parte desse diferencial pode refletir:

    - **Variáveis omitidas:** diferenças na qualidade da educação (escolas em bairros mais pobres), tipo de curso, habilidades não cognitivas;
    - **Segregação ocupacional:** mulheres e negros podem estar concentrados em ocupações que pagam menos, mesmo controlando por escolaridade total;
    - **Seleção amostral:** a composição de quem trabalha (e aparece na amostra) difere por gênero e raça;
    - **Discriminação efetiva:** diferenças de tratamento por empregadores, no sentido de Becker ou estatístico.

    A decomposição de Oaxaca-Blinder (equação $\eqref{eq:17.13b}$) é uma extensão natural desta análise: permite separar formalmente a parte do diferencial que se deve a diferenças de características versus diferenças de retornos.

<iframe src="../graficos/cap17/webr-mincer.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 17.4 — Equação de Mincer e diferenciais salariais.** Explore como educação, experiência, gênero e raça afetam os perfis salariais. Altere os coeficientes para simular diferentes cenários de discriminação.

</div>

---

## 17.8 A Força do Coletivo: Sindicatos e Barganha Salarial

O monopsônio representa poder de mercado do lado da demanda por trabalho. Do lado da oferta, a contrapartida é o sindicato — uma organização que agrega o poder de barganha dos trabalhadores para negociar coletivamente salários e condições de emprego. Enquanto no mercado competitivo cada trabalhador é individualmente incapaz de influenciar o salário, o sindicato confere aos trabalhadores poder de mercado análogo ao do monopolista no mercado de bens. Como esse poder afeta salários, emprego e eficiência?

### Objetivos dos sindicatos

Os sindicatos podem ser modelados como agentes que buscam maximizar alguma função objetivo, como:

- **Maximização do salário** com emprego fixo;
- **Maximização do emprego** com salário fixo;
- **Maximização da renda total** dos membros: \(\max_w \; w \cdot H^d(w)\);
- **Maximização da utilidade** dos membros: \(\max_w \; U(w) \cdot H^d(w)\).

### O modelo de monopólio sindical

No modelo mais simples, o sindicato fixa o salário \(w_s > w^*\) e a firma escolhe o nível de emprego ao longo de sua curva de demanda por trabalho. O resultado é:

\[
H^d(w_s) < H^d(w^*) = H^*
\]

Há um trade-off entre salário e emprego: salários mais altos reduzem o emprego.

### Barganha eficiente

O modelo de **barganha eficiente** (McDonald e Solow, 1981) propõe que sindicato e firma negociam simultaneamente salário e emprego, atingindo a **curva de contrato** — o conjunto de alocações Pareto-eficientes. Nesse caso, o nível de emprego pode ser maior do que no modelo de monopólio sindical.

Na negociação de Nash, o resultado da barganha maximiza o produto:

\[
\max_{w, H} \; \bigl[U_S(w, H) - U_S^0\bigr]^\beta \cdot \bigl[\pi(w, H) - \pi^0\bigr]^{1-\beta}
\label{eq:17.15b} \tag{17.15b}
\]

onde \(U_S\) é a utilidade do sindicato, \(\pi\) é o lucro da firma, os sobrescritos \(0\) denotam os payoffs no ponto de desacordo (por exemplo, greve prolongada) e \(\beta \in [0,1]\) mede o poder de barganha relativo do sindicato. Quando \(\beta = 0\), a firma tem todo o poder e o resultado é competitivo; quando \(\beta = 1\), o sindicato tem todo o poder e o resultado se aproxima do monopólio sindical.

<iframe src="../graficos/cap17/webr-sindicato.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 17.5 — Barganha sindical de Nash.** Varie o poder de barganha $\beta$ e observe como salário, emprego e lucro se ajustam ao longo da curva de demanda por trabalho.

</div>

### O declínio global dos sindicatos e a desigualdade

Uma das transformações mais marcantes do mercado de trabalho nas últimas quatro décadas é o **declínio da sindicalização** na maioria dos países desenvolvidos. Nos Estados Unidos, a taxa de sindicalização caiu de 35% na década de 1950 para cerca de 10% atualmente (e apenas 6% no setor privado). No Reino Unido, a queda foi de 50% para 23%. Mesmo em países com tradição sindical forte, como França e Alemanha, as taxas de cobertura de negociações coletivas têm diminuído.

Esse declínio resulta de uma combinação de fatores: (i) a desindustrialização e o crescimento do setor de serviços, onde a sindicalização é historicamente menor; (ii) mudanças legislativas que enfraqueceram o poder sindical (como as reformas Thatcher no Reino Unido e a Reforma Trabalhista de 2017 no Brasil); (iii) a globalização e a ameaça de realocação da produção para países com mão de obra mais barata; (iv) o aumento do trabalho temporário, terceirizado e por plataforma (*gig economy*), que dificulta a organização coletiva.

A relação entre o declínio sindical e o aumento da desigualdade é um dos debates centrais da economia contemporânea. Estudos como o de Farber et al. (2021) para os EUA estimam que a dessindicalização explica entre 20% e 33% do aumento da desigualdade salarial desde 1980. O mecanismo é duplo: sindicatos comprimem a distribuição salarial dentro das firmas sindicalizadas (reduzindo o prêmio para gestores e aumentando o piso para operários) e exercem pressão sobre os salários de firmas não sindicalizadas na mesma região ou setor (efeito *threat effect*). Quando os sindicatos enfraquecem, ambos os canais de compressão salarial se dissipam.

No Brasil, a queda foi ainda mais acentuada: a Reforma Trabalhista de 2017, ao eliminar a contribuição sindical obrigatória, acelerou o declínio da sindicalização para níveis historicamente baixos (ver Box Brasil a seguir). Esse "experimento natural" permite avaliar se o enfraquecimento sindical está associado a maior dispersão salarial nos setores afetados — uma questão empiricamente relevante e ainda em investigação.

---

!!! box-brasil "A informalidade estrutural e os efeitos da Reforma Trabalhista de 2017"
    O mercado de trabalho brasileiro é marcado por uma taxa de informalidade persistentemente elevada, que condiciona a eficácia de políticas salariais e trabalhistas.

    **Informalidade em números (PNAD Contínua/IBGE):**

    | Indicador | 2024 | 2025 |
    |---|---|---|
    | Taxa de informalidade | 39,0% | 38,1% |
    | Empregados com carteira (CLT) | 38,4 milhões | 39,4 milhões |
    | Empregados sem carteira | 13,2 milhões | 13,4 milhões |
    | Trabalhadores por conta própria | 25,4 milhões | 26,2 milhões |
    | Rendimento real médio habitual | R$ 3.470 | R$ 3.652 |
    | Taxa de desocupação | 6,6% | 5,6% |

    *Fonte: PNAD Contínua/IBGE, médias anuais 2024-2025.*

    **Reforma Trabalhista de 2017:**

    A Lei 13.467/2017 promoveu ampla flexibilização das relações de trabalho, com destaque para o fim da contribuição sindical obrigatória. Os efeitos sobre os sindicatos foram imediatos e profundos:

    - A **taxa de sindicalização** caiu de 16,1% (2012) para **8,4%** (2023), o menor patamar da série histórica do IBGE.
    - A receita dos sindicatos despencou cerca de **90%** no primeiro ano após a reforma, comprometendo a capacidade de negociação coletiva e de fiscalização em regiões remotas.

    **Conexão com a teoria:**

    O modelo de monopólio sindical (seção 17.8) prevê que sindicatos mais fortes elevam salários acima do nível competitivo, ao custo de menor emprego. A drástica redução do poder sindical após 2017 representa um "experimento natural" que permite testar essa previsão: se o modelo está correto, o enfraquecimento sindical deveria aproximar os salários negociados do equilíbrio competitivo.

    *Fonte: PNAD Contínua/IBGE; [IPEA](https://www.ipea.gov.br), Nota Técnica sobre Reforma Trabalhista, 2023.*

---

!!! box-mundo "Box Mundo 17.1 — O modelo nórdico de mercado de trabalho: flexicurity"
    **Contexto:** Os países nórdicos (Dinamarca, Suécia, Noruega, Finlândia) combinam altas taxas de sindicalização com mercados de trabalho flexíveis e baixos níveis de desigualdade — um aparente paradoxo para modelos que preveem rigidez quando sindicatos são fortes. O segredo reside no modelo de **flexicurity** (*flexibilidade + segurança*), particularmente desenvolvido na Dinamarca.

    **Dados:**

    | País | Taxa de sindicalização (2023) | Taxa de desemprego (2024) | Índice de Gini (renda disponível) |
    |---|---|---|---|
    | Dinamarca | 67% | 5,0% | 0,28 |
    | Suécia | 65% | 8,3% | 0,28 |
    | Noruega | 50% | 3,7% | 0,26 |
    | EUA | 10% | 4,1% | 0,39 |
    | Brasil | 8,4% | 5,6% | 0,52 |

    *Fonte: OCDE, [Statistics](https://stats.oecd.org); OIT, [ILOSTAT](https://ilostat.ilo.org); IBGE, PNAD Contínua 2024–2025.*

    **Análise:** O modelo nórdico opera em três pilares: (i) **flexibilidade para demitir** — firmas podem ajustar o emprego com facilidade, sem custos de demissão elevados; (ii) **generoso seguro-desemprego** — o trabalhador demitido recebe até 90% do salário anterior por até dois anos na Dinamarca; (iii) **políticas ativas de emprego** — programas de requalificação, intermediação de mão de obra e incentivos à recolocação. A negociação coletiva é centralizada e coordenada, com sindicatos e associações patronais negociando pisos salariais por setor (sem salário mínimo legal na Dinamarca e na Suécia). A compressão salarial resultante — a diferença entre o salário mais alto e o mais baixo é muito menor que nos EUA — é uma consequência direta do poder de barganha sindical coordenado. O modelo demonstra que a barganha eficiente (seção 17.8), quando institucionalizada em nível nacional, pode aproximar o resultado do ótimo de Pareto.

    **Para refletir:** Se sindicatos fortes podem coexistir com flexibilidade e baixo desemprego nos países nórdicos, por que a sindicalização é frequentemente vista como obstáculo à eficiência? Que fatores institucionais (tamanho do país, homogeneidade social, cultura de cooperação) podem limitar a replicabilidade do modelo nórdico em países grandes e desiguais como o Brasil?

!!! box-brasil "O salário mínimo e o debate sobre o 'efeito-farol'"
    O salário mínimo (SM) no Brasil desempenha um papel que vai muito além de um piso salarial para trabalhadores formais com carteira assinada. Ele serve como **referência** (ou "farol") para a fixação de salários em todo o mercado de trabalho — inclusive no setor informal, onde não há obrigação legal de cumpri-lo.

    **Fatos estilizados:**

    - O SM real cresceu significativamente entre 2003 e 2014, acumulando ganho real superior a 70% no período. A política de valorização do SM adotada a partir de 2007 previa reajustes pela inflação acumulada mais o crescimento do PIB.
    - Em 2025, o SM atingiu **R$ 1.518**, beneficiando diretamente cerca de 59,9 milhões de brasileiros entre trabalhadores formais, informais, aposentados e pensionistas.
    - O **efeito-farol**, documentado em estudos do IPEA (Neri, Gonzaga e Camargo, 2001; Saboia, 2007), mostra que aumentos no SM elevam salários não apenas no setor formal, mas também no informal, e até afetam rendimentos de trabalhadores por conta própria e aposentadorias/pensões (que são indexadas ao SM).

    **Impactos sobre emprego e informalidade:**

    O debate empírico sobre os efeitos do SM sobre o emprego no Brasil é rico:

    - Estudos como Corseuil e Carneiro (2001) encontraram efeitos negativos pequenos sobre o emprego formal, mas significativos sobre a informalidade.
    - Lemos (2009) mostrou que o efeito compressão salarial (redução da desigualdade) domina o efeito desemprego.
    - [Engbom e Moser (2022)](https://doi.org/10.1257/aer.20181506) estimam que a alta real de 128% do SM entre 1996 e 2018 explica **45% da queda da desigualdade salarial** no período, com efeitos limitados sobre o emprego total.
    - Dados do CAGED/MTE e da PNAD indicam que a elevação do SM tende a aumentar a proporção de trabalhadores na informalidade, pois empregadores que não conseguem pagar o novo piso migram para relações informais.

    Como mostra a tabela do Box Brasil anterior, a elevada taxa de informalidade (38,1% em 2025) implica que uma parcela substancial da força de trabalho opera à margem da legislação trabalhista, o que limita a eficácia de políticas baseadas exclusivamente em regulação do mercado formal. Em 2025, o SM atingiu R\$ 1.518, com rendimento real médio habitual de R\$ 3.652 (PNAD Contínua/IBGE).

---

## 17.9 Cabo de Guerra entre Dois Efeitos: Substituição vs. Renda

O efeito substituição puxa para um lado, o efeito renda puxa para o outro — e o resultado muda conforme o tipo de choque. Para não perder o fio, a [Tabela 17.2](#tabela-17-2) decompõe os efeitos substituição e renda para diferentes variações.

<a id="tabela-17-2"></a>

| Variação | Efeito Substituição | Efeito Renda | Resultado sobre \(h^*\) |
|---|---|---|---|
| \(\uparrow w\) (salário sobe) | \(h\) sobe (lazer mais caro) | \(h\) cai (mais rico, quer mais lazer) | Ambíguo |
| \(\uparrow V\) (renda não salarial sobe) | Nenhum | \(h\) cai (mais rico) | \(h\) cai |
| \(\uparrow p\) (preço do consumo sobe) | Depende (o efeito sobre o preço relativo do lazer varia com a cesta) | Depende | Ambíguo |

<div class="caption-obj" markdown>
**Tabela 17.2 — Efeitos substituição e renda sobre a oferta de trabalho.**
</div>

A [Tabela 17.2](#tabela-17-2) sintetiza os resultados das seções anteriores e serve como referência rápida para a análise de políticas. Com a teoria da oferta de trabalho consolidada, passamos agora ao último dos três fatores de produção clássicos.

---

## 17.10 O Chão Não Vai a Lugar Nenhum: Terra e Recursos Naturais

Trabalho e capital podem ser criados, acumulados e movidos de lugar. A terra, não — ela está ali, parada, esperando que alguém decida o que plantar ou construir em cima. Essa imobilidade teimosa faz da terra um fator de produção com propriedades únicas, e é por isso que economistas de David Ricardo a Henry George ficaram obcecados com ela. Uma análise completa dos mercados de fatores exige examinar a determinação da remuneração da terra — a **renda da terra** — e sua relação com os conceitos de renda econômica e renda de transferência.

### Renda da terra: de Ricardo à análise moderna

David Ricardo (1817), nos *Principles of Political Economy*, desenvolveu a teoria clássica da renda da terra. A ideia central é que a terra é um fator de produção com oferta **fixa** (perfeitamente inelástica). Se a oferta é fixa, a remuneração da terra é inteiramente determinada pela demanda. Um aumento na demanda por terras agrícolas (por exemplo, por crescimento populacional) eleva a renda da terra sem induzir qualquer aumento na quantidade ofertada — uma conclusão com implicações profundas para a teoria da distribuição de renda e a tributação.

A **renda ricardiana** também incorpora a noção de terras de qualidade diferente. As terras mais férteis são cultivadas primeiro; à medida que a demanda cresce, terras marginais (menos férteis) entram em cultivo. A renda de cada parcela reflete sua **vantagem produtiva** em relação à terra marginal (que, por definição, não gera renda). Essa análise antecipou em mais de um século o conceito moderno de renda econômica.

### Renda econômica versus renda de transferência

A remuneração de qualquer fator de produção pode ser decomposta em duas partes:

- **Renda de transferência** (*transfer earnings*): a remuneração mínima necessária para manter o fator em seu uso atual. Se o fator recebe menos que isso, ele se transfere para outro uso.
- **Renda econômica** (*economic rent*): o excedente recebido acima da renda de transferência. Formalmente, para um fator que recebe \(w\) e tem custo de oportunidade \(w_0\):

\[
\text{Renda econômica} = w - w_0
\label{eq:17.16} \tag{17.16}
\]

No caso extremo da terra (oferta perfeitamente inelástica), toda a remuneração é renda econômica — pois a terra não pode "ir para outro lugar". No caso oposto (oferta perfeitamente elástica), toda a remuneração é renda de transferência. Para o trabalho, a decomposição depende das alternativas do trabalhador: um cirurgião altamente especializado que recebe R\$ 50.000/mês, mas cuja melhor alternativa pagaria R\$ 15.000, recebe R\$ 35.000 de renda econômica.

!!! idea "Intuição Econômica"
    **Em uma frase:** A renda econômica é o "bônus" que um fator de produção recebe acima do mínimo necessário para mantê-lo em seu uso atual — e quanto mais difícil for substituí-lo, maior esse bônus.

    **Pense assim:** Neymar ganha dezenas de milhões por ano jogando futebol. Se o salário dos jogadores caísse drasticamente, ele continuaria jogando — porque sua melhor alternativa (qualquer outro emprego) pagaria muito menos. A diferença entre o que ele recebe e o que ganharia fora do futebol é renda econômica pura. Já um motorista de Uber em uma cidade com muitas alternativas de emprego recebe quase nenhuma renda econômica: se o ganho cair um pouco, ele migra para outro aplicativo ou emprego.

    **Por que isso importa:** Tributar a renda econômica é o sonho de todo formulador de política pública: gera receita sem distorcer decisões econômicas. É por isso que impostos sobre a terra (Henry George) e sobre rendas de recursos naturais (royalties) são considerados os tributos mais eficientes que existem.

Essa decomposição tem implicações diretas para a tributação: tributos sobre a renda econômica são **não distorcivos** (não alteram a alocação de fatores), enquanto tributos sobre a renda de transferência causam distorções (o fator pode migrar para outro uso). Henry George (1879) propôs que toda a receita tributária deveria vir de um imposto sobre a renda da terra — um tributo perfeitamente eficiente, pois a oferta de terra não se altera. Embora o "imposto único" de George nunca tenha sido implementado integralmente, a lógica subjacente informa debates contemporâneos sobre tributação de propriedade e captura de valorização fundiária.

### Recursos naturais exauríveis: conexão com a regra de Hotelling

A análise da terra pode ser estendida aos **recursos naturais exauríveis** (petróleo, minerais, gás). Diferentemente da terra agrícola, que se mantém em uso indefinidamente, recursos exauríveis são consumidos ao serem utilizados. A questão central torna-se: a que taxa extrair um recurso que é finito?

A resposta é dada pela **regra de Hotelling** (1931), que será formalizada no Capítulo 18: no equilíbrio, o preço líquido do recurso (preço de mercado menos custo de extração) deve crescer à taxa de juros \(r\). Intuitivamente, o proprietário de uma jazida tem a opção de extrair hoje e investir a receita, ou deixar o recurso no solo para extrair amanhã a um preço maior. O equilíbrio requer que ambas as opções gerem o mesmo retorno.

A renda do recurso natural — o *royalty* — é a renda econômica paga pela escassez do recurso. No Brasil, royalties de petróleo e mineração representam receitas significativas para estados e municípios produtores, levantando questões sobre equidade intergeracional (estamos consumindo a riqueza natural das gerações futuras?) e sobre a "maldição dos recursos" — a tendência de países ricos em recursos naturais apresentarem crescimento econômico inferior, possivelmente por desincentivo à diversificação produtiva e ao investimento em capital humano.

---

Lá no começo, o despertador tocou e você enfrentou o dilema: travesseiro ou salário? Ao longo deste capítulo, vimos que a resposta depende de efeitos substituição e renda que se digladiam, de monopsonistas que pagam menos do que deveriam e de sindicatos que tentam corrigir a balança. A economia do trabalho, no fundo, é a economia de como cada um de nós reparte o recurso mais escasso que existe — o tempo.

*O trabalhador fez suas escolhas. Agora entra o tempo: poupar ou gastar, investir ou consumir. No próximo capítulo, a paciência tem preço.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. No modelo trabalho-lazer, um aumento salarial tem efeito ambíguo sobre a oferta de trabalho porque:"
    - (a) O trabalhador não observa seu salário em tempo real
    - (b) O efeito substituição (lazer mais caro → trabalha mais) pode ser compensado pelo efeito renda (mais rico → quer mais lazer)
    - (c) A produtividade marginal do trabalhador sempre cai com mais horas
    - (d) O imposto de renda anula completamente o aumento salarial

    ??? success "Resposta"
        **(b)** Quando o salário sobe, o custo de oportunidade do lazer aumenta (efeito substituição → mais trabalho), mas o poder de compra também aumenta (efeito renda → mais lazer, se lazer é bem normal). Quando o efeito renda domina, a curva de oferta de trabalho se torna backward-bending (negativamente inclinada). As demais alternativas não explicam a ambiguidade.

??? question "2. O monopsônio no mercado de trabalho é caracterizado por:"
    - (a) Muitos empregadores competindo pelos mesmos trabalhadores
    - (b) Um único (ou poucos) empregador(es) com poder de mercado, que paga salário abaixo do produto marginal do trabalho
    - (c) Sindicatos que fixam salários acima do equilíbrio competitivo
    - (d) Salários iguais ao produto marginal em equilíbrio

    ??? success "Resposta"
        **(b)** O monopsonista enfrenta uma curva de oferta de trabalho positivamente inclinada: para contratar mais trabalhadores, deve elevar o salário de todos. O custo marginal do trabalho excede o salário, levando a emprego e salário menores que o competitivo. A alternativa (d) descreve o mercado competitivo; (c) descreve poder do lado do trabalhador, não do empregador.

??? question "3. A curva de oferta de trabalho backward-bending implica que, a partir de certo salário:"
    - (a) O trabalhador oferece mais horas de trabalho
    - (b) O trabalhador reduz suas horas de trabalho quando o salário sobe ainda mais
    - (c) A demanda por trabalho se torna infinitamente elástica
    - (d) O mercado de trabalho entra em equilíbrio permanente

    ??? success "Resposta"
        **(b)** Na região backward-bending, o efeito renda domina o efeito substituição: salários mais altos levam o trabalhador a 'comprar' mais lazer, reduzindo horas trabalhadas. Evidência empírica mostra isso especialmente para trabalhadores de alta renda e para a oferta de trabalho secundária no domicílio.

??? question "4. A elasticidade de Frisch mede a resposta da oferta de trabalho a:"
    - (a) Variações permanentes no salário
    - (b) Variações temporárias no salário, mantendo constante a utilidade marginal da riqueza
    - (c) Variações no nível geral de preços
    - (d) Mudanças na legislação trabalhista

    ??? success "Resposta"
        **(b)** A elasticidade de Frisch isola a resposta a variações salariais temporárias (substituição intertemporal do trabalho), mantendo fixa a utilidade marginal da riqueza. É central para modelos macroeconômicos de ciclos reais. Para variações permanentes (a), tanto efeito renda quanto substituição atuam; a Frisch captura apenas a substituição intertemporal.

??? question "5. A discriminação salarial estatística ocorre quando empregadores:"
    - (a) Pagam salários diferentes a trabalhadores igualmente produtivos por preconceito pessoal
    - (b) Usam características observáveis do grupo (gênero, raça) como proxy para produtividade esperada, mesmo que isso penalize indivíduos produtivos do grupo
    - (c) Oferecem salários iguais a todos os trabalhadores independentemente da produtividade
    - (d) Remuneram trabalhadores exclusivamente por desempenho individual

    ??? success "Resposta"
        **(b)** Na discriminação estatística, empregadores racionais usam informação imperfeita: quando não podem observar a produtividade individual, usam médias do grupo como estimativa. Isso pode perpetuar desigualdades mesmo sem preconceito pessoal (a). A alternativa (a) descreve discriminação por preferência (taste-based, modelo de Becker).

---

## 📋 Resumo do Capítulo

- O mercado de trabalho é analisado pelo modelo trabalho-lazer, no qual o indivíduo aloca seu tempo entre lazer e trabalho, enfrentando o salário como custo de oportunidade do lazer. A condição de ótimo iguala a taxa marginal de substituição entre lazer e consumo ao salário real.
- Um aumento salarial tem efeitos ambíguos sobre a oferta de trabalho: o efeito substituição (lazer fica mais caro) incentiva mais trabalho, enquanto o efeito renda (maior poder de compra) incentiva mais lazer. Quando o efeito renda domina, a curva de oferta de trabalho se torna backward-bending. A **elasticidade de Frisch** mede a resposta a variações salariais temporárias, mantendo constante a utilidade marginal da riqueza, e é central para modelos macroeconômicos.
- A oferta de mercado agrega decisões individuais nas margens intensiva (horas) e extensiva (participação). A taxa de participação varia significativamente por gênero e país, sendo moldada por instituições, políticas de cuidado e normas culturais.
- A demanda por trabalho é derivada da produtividade marginal e segue as **regras de Marshall da demanda derivada**: a elasticidade da demanda por trabalho depende da substituibilidade entre fatores, da elasticidade da demanda pelo produto, da participação do trabalho no custo e da elasticidade de oferta de outros fatores.
- O equilíbrio competitivo no mercado de trabalho iguala demanda e oferta de trabalho, com diferenças salariais explicadas por diferenciais compensatórios (risco, desconforto), capital humano (educação, experiência) e discriminação (de preferência e estatística). A **decomposição de Oaxaca-Blinder** permite separar o diferencial salarial entre parte explicada (características) e parte não explicada (discriminação).
- O monopsônio (único comprador de trabalho) paga salários abaixo do produto marginal do valor do trabalho e emprega menos trabalhadores do que o resultado competitivo. O **novo monopsônio** (Manning, 2003) mostra que custos de mobilidade e fricções de busca conferem poder monopsonístico mesmo em mercados com múltiplos empregadores. Evidências empíricas confirmam que mercados de trabalho concentrados pagam salários significativamente menores.
- Sindicatos podem elevar salários acima do nível competitivo, com efeitos sobre emprego que dependem do poder de barganha e da estrutura de mercado. O **declínio global da sindicalização** está associado ao aumento da desigualdade salarial. O salário mínimo tem efeitos ambíguos: sob monopsônio pode aumentar emprego, enquanto em mercados competitivos pode reduzi-lo.
- A **renda da terra** (Ricardo) é determinada integralmente pela demanda quando a oferta é fixa. A distinção entre **renda econômica** e **renda de transferência** tem implicações diretas para a tributação eficiente. A regra de Hotelling governa a extração ótima de recursos naturais exauríveis.
- A realidade brasileira é marcada por elevada informalidade, desigualdade salarial significativa, alto retorno à educação e debates persistentes sobre os efeitos do salário mínimo e da reforma trabalhista.

## 🔑 Conceitos-Chave

<a id="tabela-17-3"></a>

| Conceito | Definição |
|----------|-----------|
| Renda plena (full income) | Renda máxima que o indivíduo obteria se trabalhasse todas as horas disponíveis: \(M^* = wT + V\) |
| Custo de oportunidade do lazer | O salário \(w\), pois cada hora de lazer implica renunciar a \(w\) reais de renda |
| Efeito substituição (trabalho) | Aumento salarial encarece o lazer, incentivando mais horas de trabalho |
| Efeito renda (trabalho) | Aumento salarial eleva a renda real, incentivando mais lazer (se lazer é bem normal), reduzindo horas de trabalho |
| Elasticidade de Frisch | Elasticidade da oferta de trabalho com utilidade marginal da riqueza constante; mede a resposta a variações salariais temporárias |
| Curva backward-bending | Curva de oferta de trabalho que se inclina para trás quando o efeito renda domina o efeito substituição em salários elevados |
| Margem intensiva vs. extensiva | Margem intensiva: quantas horas trabalhar; margem extensiva: participar ou não do mercado de trabalho |
| Diferencial compensatório | Diferença salarial que compensa trabalhadores por características indesejáveis do emprego (risco, insalubridade, localização) |
| Regras de Marshall (demanda derivada) | Quatro regras que determinam a elasticidade da demanda por trabalho: substituibilidade entre fatores, elasticidade do produto, participação no custo e oferta de outros fatores |
| Decomposição de Oaxaca-Blinder | Técnica que separa o diferencial salarial entre grupos em parte explicada (diferenças de características) e parte não explicada (diferenças de retornos / discriminação) |
| Discriminação estatística | Discriminação racional baseada em características observáveis do grupo como proxy para produtividade individual, na ausência de informação perfeita |
| Monopsônio | Estrutura de mercado com um único comprador de trabalho, que paga salário abaixo do produto marginal e emprega menos que o competitivo |
| Novo monopsônio | Poder monopsonístico decorrente de custos de mobilidade, fricções de busca e informação imperfeita, mesmo com múltiplos empregadores (Manning, 2003) |
| Custo marginal do trabalho (monopsônio) | Custo de contratar um trabalhador adicional, que excede o salário pago porque o monopsonista deve elevar o salário de todos os trabalhadores |
| Salário de reserva | Salário mínimo abaixo do qual o indivíduo prefere não trabalhar (solução de canto com \(h = 0\)) |
| Capital humano | Estoque de habilidades e conhecimentos adquiridos via educação e experiência que elevam a produtividade e os salários |
| Renda da terra | Remuneração do fator terra, determinada integralmente pela demanda quando a oferta é fixa (Ricardo) |
| Renda econômica | Excedente recebido acima da remuneração mínima necessária para manter o fator em seu uso atual: \(w - w_0\) |

<div class="caption-obj" markdown>
**Tabela 17.3 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

!!! note "Exercícios do Capítulo 17"

<a id="ex-17-1"></a>**Exercício 17.1.** Um trabalhador tem preferências representadas por \(U(C,L) = \ln C + 2\ln L\). Sua dotação de tempo é \(T = 24\) horas por dia, a renda não salarial é \(V = 0\) e o salário é \(w\).

(a) Derive as demandas ótimas \(C^*(w)\) e \(L^*(w)\).

(b) Obtenha a oferta de trabalho \(h^*(w)\). Ela depende de \(w\)? Interprete.

(c) Agora suponha \(V = 48\). Derive \(h^*(w)\) e mostre que a oferta de trabalho agora é decrescente em \(w\). Interprete.

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-1)

---

<a id="ex-17-2"></a>**Exercício 17.2.** Considere um mercado de trabalho competitivo com oferta \(H^s = 100w\) e demanda \(H^d = 4000 - 100w\).

(a) Encontre o salário e o emprego de equilíbrio.

(b) Se o governo impõe um salário mínimo \(w_{min} = 25\), qual é o nível de emprego? E o excesso de oferta (desemprego)?

(c) Calcule a perda de peso morto gerada pelo salário mínimo.

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-2)

---

<a id="ex-17-3"></a>**Exercício 17.3.** Uma firma monopsonista enfrenta a oferta de trabalho \(w = 10 + 0{,}5H\) e tem \(VPMg_L = 50 - H\).

(a) Derive o custo marginal do trabalho (despesa marginal).

(b) Encontre o emprego e o salário escolhidos pelo monopsonista.

(c) Compare com o equilíbrio competitivo. Calcule a exploração monopsonística.

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-3)

---

<a id="ex-17-4"></a>**Exercício 17.4.** Um sindicato maximiza a renda total dos seus membros, \(R = w \cdot H^d(w)\), onde a demanda por trabalho é \(H^d(w) = 1000 - 20w\).

(a) Encontre o salário que maximiza \(R\).

(b) Qual é o nível de emprego resultante?

(c) Compare com o equilíbrio competitivo (supondo oferta perfeitamente elástica a \(w = 15\)).

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-4)

---

<a id="ex-17-5"></a>**Exercício 17.5.** Discuta, com base na teoria e na evidência empírica brasileira:

(a) Por que o efeito-farol do salário mínimo é particularmente relevante em economias com alta informalidade?

(b) Em um mercado de trabalho com monopsônio, é possível que um aumento do salário mínimo eleve simultaneamente o emprego e o salário? Ilustre graficamente.

(c) Quais são os principais canais pelos quais o aumento do salário mínimo pode afetar a distribuição de renda no Brasil?

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-5)

---

<a id="ex-17-6"></a>**Exercício 17.6.** Considere um trabalhador com preferências CES:

\[
U(C, L) = \left(\alpha C^{\rho} + (1-\alpha) L^{\rho}\right)^{1/\rho}
\]

com \(\alpha = 0{,}5\), \(\rho = -1\) (elasticidade de substituição \(\sigma = 1/(1-\rho) = 0{,}5\)), dotação de tempo \(T = 24\) e renda não salarial \(V = 0\).

(a) Mostre que a demanda marshalliana por lazer é \(L^*(w) = \frac{24}{1 + w^{\sigma}}\) (onde \(\sigma = 0{,}5\)).

(b) Derive a oferta de trabalho \(h^*(w)\) e mostre que ela exibe backward-bending.

(c) Encontre o salário no qual a oferta de trabalho atinge o máximo. Utilize a decomposição de Slutsky para explicar por que a curva se volta para trás.

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-6)

---

<a id="ex-17-7"></a>**Exercício 17.7.** Um economista estima a seguinte equação de Mincer para o Brasil:

\[
\ln w = 0{,}80 + 0{,}10 S + 0{,}04 X - 0{,}0006 X^2
\]

onde \(S\) = anos de escolaridade e \(X\) = experiência (anos).

(a) Qual é o retorno estimado de cada ano adicional de educação?

(b) Calcule o diferencial salarial entre um trabalhador com 16 anos de escolaridade (superior completo) e um com 11 anos (médio completo), ambos com 10 anos de experiência.

(c) A que idade (aproximadamente) o salário atinge seu pico, supondo que o indivíduo começou a trabalhar imediatamente após a educação formal?

(d) Discuta por que o coeficiente \(\hat{\beta}_1 = 0{,}10\) pode superestimar o retorno causal da educação (viés de habilidade).

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-7)

---

<a id="ex-17-8"></a>**Exercício 17.8.** Em uma cidade do interior, uma única fábrica enfrenta oferta de trabalho \(w = 5 + H\) e tem valor do produto marginal \(VPMg_L = 65 - 2H\).

(a) Encontre o emprego e o salário no equilíbrio monopsonístico.

(b) O governo impõe um salário mínimo \(\bar{w} = 25\). Qual é o novo nível de emprego? O emprego aumentou ou diminuiu em relação ao item (a)?

(c) Existe um salário mínimo \(\bar{w}^*\) que maximiza o emprego neste mercado? Se sim, encontre-o.

(d) A que nível de salário mínimo o emprego volta a ser igual ao do monopsônio sem intervenção?

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-8)

---

<a id="ex-17-9"></a>**Exercício 17.9.** Um sindicato e uma firma negociam segundo o modelo de barganha de Nash. A função objetivo do sindicato é \(U_S = (w - w_0) \cdot H\), onde \(w_0 = 10\) é o salário de reserva. O lucro da firma é \(\pi = (100 - H)H - wH\). O poder de barganha do sindicato é \(\beta\).

(a) Mostre que a demanda por trabalho da firma (para um salário dado) é \(H^d(w) = \frac{100 - w}{2}\).

(b) Substitua \(H^d(w)\) no problema de barganha e encontre o salário negociado \(w^*(\beta)\).

(c) Para \(\beta = 0{,}5\), calcule \(w^*\), \(H^*\) e \(\pi^*\). Compare com o resultado competitivo (\(w = w_0 = 10\)).

(d) Mostre que, quando \(\beta \to 1\), o resultado se aproxima do monopólio sindical. Interprete economicamente.

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-9)

---

<a id="ex-17-10"></a>**Exercício 17.10.** *(Questão de reflexão — automação e polarização)* A automação e a inteligência artificial estão transformando o mercado de trabalho. A hipótese de **polarização** (Autor, Levy e Murnane, 2003) prevê que a tecnologia substitui tarefas rotineiras (realizadas por trabalhadores de renda média), enquanto complementa tarefas cognitivas complexas (alta renda) e tem pouco efeito sobre tarefas manuais não rotineiras (baixa renda).

(a) Utilizando o arcabouço de oferta e demanda por trabalho, represente graficamente o efeito da automação de tarefas rotineiras sobre o salário e o emprego de três grupos: alta qualificação, média qualificação e baixa qualificação.

(b) Discuta como as regras de Marshall da demanda derivada ajudam a prever quais ocupações são mais vulneráveis à automação.

(c) Considere a seguinte afirmação: "A inteligência artificial generativa (como o ChatGPT) inverte a polarização, pois ameaça principalmente tarefas cognitivas, não manuais." Avalie essa afirmação à luz da teoria da demanda por trabalho e de evidências recentes.

(d) Que políticas públicas podem mitigar os efeitos distributivos da automação sem comprometer os ganhos de produtividade?

[:material-arrow-right: Ver solução](../solucoes/cap17.md#ex-17-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2022 — Questão 06"
    Suponha que João possui uma função de utilidade em renda (\(Y\)) e lazer (\(N\)) na forma \(U(Y, N) = U(wh, 24 - h)\), em que \(w\) é a taxa de salário por hora e \(h\) é o número de horas trabalhadas por dia. Indique quais das afirmações a seguir são verdadeiras:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Se João está trabalhando um número de horas por dia tal que a utilidade marginal da renda é 4 e a utilidade marginal do lazer é 2, sendo que a taxa de salário é 2, então João está maximizando a sua utilidade. |
    | 1    | A curva de oferta de trabalho de João é construída subtraindo de 24 (o número de horas de um dia) a demanda por lazer, para cada taxa de salário. |
    | 2    | O efeito substituição tem de ser negativo: um aumento na taxa de salário leva João a escolher um número menor de horas de lazer e um número maior de horas de trabalho. |
    | 3    | Se lazer é um bem normal para João, o efeito substituição e o efeito renda atuam em direções opostas. O efeito que vai predominar dependerá do tamanho relativo dos dois efeitos. |
    | 4    | Se João considerar lazer como um bem inferior, o seu efeito substituição e o seu efeito renda atuam na mesma direção, de tal forma que uma elevação no salário reduzirá suas horas de lazer. |

    ??? success "Gabarito"
        **Respostas: 01111**

        **Justificativa por item:**

        - **Item 0 — F:** A condição de ótimo exige \(UMg_N / UMg_Y = w\), ou seja, \(2/4 = 0{,}5\). Como \(w = 2 \neq 0{,}5\), João **não** está no ótimo. Ele deveria trabalhar mais horas (a utilidade marginal da renda ponderada pelo salário supera a utilidade marginal do lazer).
        - **Item 1 — V:** Correto. A oferta de trabalho é \(h^*(w) = 24 - N^*(w)\), onde \(N^*(w)\) é a demanda marshalliana por lazer ao salário \(w\).
        - **Item 2 — V:** Correto. O efeito substituição compensado do lazer em relação ao seu preço (\(w\)) é sempre negativo: um aumento em \(w\) encarece o lazer, levando a menos lazer e mais trabalho (pela convexidade das preferências).
        - **Item 3 — V:** Correto. Se lazer é normal, o efeito renda de um aumento em \(w\) eleva a demanda por lazer (reduz \(h\)), enquanto o efeito substituição reduz o lazer (eleva \(h\)). Os dois efeitos atuam em sentidos opostos — é a base da curva backward-bending.
        - **Item 4 — V:** Correto. Se lazer é inferior, o efeito renda de um aumento em \(w\) **reduz** a demanda por lazer (mesma direção do efeito substituição). Ambos levam a menos lazer e mais trabalho: a oferta de trabalho é inequivocamente positivamente inclinada.

??? question "ANPEC 2013 — Questão 10"
    Com relação ao mercado de fatores, indique quais das afirmações abaixo são verdadeiras e quais são falsas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | A demanda de um setor por determinado insumo é a soma horizontal das demandas desse insumo por todas as empresas do setor. |
    | 1    | A curva de oferta de trabalho pode apresentar um trecho com inclinação negativa se o efeito-renda associado a uma remuneração mais elevada for maior que o efeito-substituição. |
    | 2    | Quando o comprador de um insumo tem poder de monopsônio, a curva de despesa marginal se situa abaixo da curva de despesa média. |
    | 3    | Para um monopolista o produto da receita marginal será sempre menor do que o valor do produto marginal. |
    | 4    | Se um monopolista upstream vender um fator de produção para um monopolista downstream, o preço final do produto será afetado por um mark-up duplo. |

    ??? success "Gabarito"
        **Respostas: 01011**

        **Justificativa por item:**

        - **Item 0 — F:** A demanda do setor por um insumo **não** é a simples soma horizontal das demandas individuais. Quando todas as firmas de um setor expandem o uso do insumo e aumentam a produção, o preço do produto cai, deslocando para baixo a curva de \(VPMg\) de cada firma. A curva de demanda setorial é mais inclinada do que a soma horizontal.
        - **Item 1 — V:** Correto. A curva backward-bending ocorre quando o efeito renda (que leva o trabalhador a demandar mais lazer) supera o efeito substituição (que encarece o lazer). É exatamente a condição formalizada na seção 17.3.
        - **Item 2 — F:** A curva de despesa marginal situa-se **acima** da curva de despesa média (oferta), não abaixo. Como \(CMg_L = w + H \cdot w'(H) > w\), o custo marginal de contratar um trabalhador adicional excede o salário pago.
        - **Item 3 — V:** Correto. Para um monopolista, \(RMg < P\), portanto \(PRMg_L = RMg \times PMg_L < P \times PMg_L = VPMg_L\). O produto da receita marginal é menor que o valor do produto marginal.
        - **Item 4 — V:** Correto. Trata-se do problema de **dupla marginalização**: o monopolista upstream aplica um markup sobre seu custo marginal, e o monopolista downstream aplica outro markup sobre o preço de compra, resultando em preço final mais alto e quantidade menor do que se houvesse um monopolista integrado.

??? question "ANPEC 2017 — Questão 13"
    O único agente de uma economia valoriza comida (\(C\)) e tempo de descanso (\(D\)). Suas preferências são representadas pela função \(U(D, C) = D^{1/5}C^{4/5}\), sendo descanso medido em horas diárias. As horas do dia não descansadas são dedicadas ao trabalho (\(L\)) de obter comida, segundo a função de produção \(C = \sqrt{L}\). Apesar da existência de um agente, imagine que temos mercados competitivos com uma firma maximizando lucro, contratando trabalho no mercado de trabalho e um consumidor vendendo sua dotação de tempo, comprando de volta descanso e comida, a "preços de mercado". Fixe em \$1 o preço da hora de trabalho e considere \(P\) o preço da comida.

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0    | Em equilíbrio, o lucro da firma será \$15. |
    | 1    | Em equilíbrio, \(P = \$10\). |
    | 2    | O consumidor escolhe quatro unidades de comida. |
    | 3    | A renda nominal do consumidor, composta do valor da dotação de tempo mais o lucro da firma, é igual a \$40. |
    | 4    | Se \(P\) cair pela metade do valor de equilíbrio, haverá excesso de oferta de trabalho, mas a somatória dos valores dos excessos de demanda pelos dois bens será nula. |

    ??? success "Gabarito"
        **Respostas: 00111**

        **Justificativa por item:**

        - **Item 0 — F:** A firma maximiza \(\pi = P\sqrt{L} - L\). A CPO é \(P/(2\sqrt{L}) = 1\), logo \(L = P^2/4\) e \(\pi = P \cdot P/2 - P^2/4 = P^2/4\). Em equilíbrio (ver item 1), \(P = 8\), então \(\pi = 64/4 = 16 \neq 15\).
        - **Item 1 — F:** O consumidor com Cobb-Douglas \(U = D^{1/5}C^{4/5}\) gasta \(1/5\) da renda em descanso e \(4/5\) em comida. Renda = \(24 + \pi = 24 + P^2/4\). Demanda por descanso: \(D = (24 + P^2/4)/5\). Oferta de trabalho: \(L^s = 24 - D\). Demanda por trabalho: \(L^d = P^2/4\). Equilíbrio: \(24 - (24 + P^2/4)/5 = P^2/4\). Resolvendo: \(120 - 24 - P^2/4 = 5P^2/4\), ou seja, \(96 = 6P^2/4 = 3P^2/2\), logo \(P^2 = 64\) e \(P = 8 \neq 10\).
        - **Item 2 — V:** Com \(P = 8\): \(L = 64/4 = 16\), \(C = \sqrt{16} = 4\). Correto.
        - **Item 3 — V:** Renda = dotação de tempo + lucro = \(24 \times 1 + 16 = 40\). Correto.
        - **Item 4 — V:** Pela **Lei de Walras**, a soma dos valores dos excessos de demanda em todos os mercados é identicamente nula, independentemente dos preços. Se \(P = 4\): a firma demanda \(L^d = 4\), o consumidor oferta \(L^s = 18{,}4\), excesso de oferta de trabalho = \(14{,}4\); a firma oferta \(C^s = 2\), o consumidor demanda \(C^d = 5{,}6\), excesso de demanda de comida = \(3{,}6\). Valor: \(1 \times (-14{,}4) + 4 \times 3{,}6 = -14{,}4 + 14{,}4 = 0\). Correto.

---

## 🔬 Pesquisa em Ação

??? pesquisa "Engbom, N.; Moser, C. (2022). [Earnings Inequality and the Minimum Wage: Evidence from Brazil](https://doi.org/10.1257/aer.20181506). *American Economic Review*, 112(12), 3803–3847."
    **Pergunta central:** O salário mínimo pode, de fato, reduzir a desigualdade salarial? E se puder, quanto dessa redução se deve ao piso legal versus a outros fatores? Essas questões são centrais para a política pública, especialmente no Brasil, onde o salário mínimo real cresceu 128% entre 1996 e 2018 — um dos maiores aumentos sustentados do mundo.

    **Método:** Engbom e Moser combinaram dados administrativos de empregadores e empregados (RAIS) com pesquisas domiciliares (PNAD) cobrindo mais de duas décadas. Para isolar o efeito causal do salário mínimo, desenvolveram um modelo de equilíbrio com firmas e trabalhadores heterogêneos, estimado estruturalmente nos dados brasileiros. O modelo permite que o salário mínimo afete não apenas os trabalhadores que recebem exatamente o piso, mas também aqueles acima dele — os chamados *spillover effects*.

    **Resultado principal:** O aumento real do salário mínimo explica aproximadamente **45% da substancial queda na desigualdade salarial** no Brasil no período. Os efeitos de spillover são grandes: salários bem acima do mínimo também foram comprimidos em direção à média. Surpreendentemente, os efeitos sobre emprego e produto agregado foram **modestos**, pois o salário mínimo induziu a realocação de trabalhadores de firmas menos produtivas para firmas mais produtivas — um efeito de seleção positivo.

    **Por que isso importa:** O resultado desafia a visão de livro-texto de que aumentos expressivos do salário mínimo necessariamente geram desemprego significativo. No contexto brasileiro, o SM funcionou como um instrumento redistributivo poderoso, com custos de eficiência limitados. Isso tem implicações diretas para a política de valorização do salário mínimo retomada a partir de 2023.

    **Relevância para o capítulo:** O paper conecta-se diretamente com as seções 17.5 (equilíbrio competitivo) e 17.7 (monopsônio e salário mínimo). O fato de o efeito sobre o emprego ter sido moderado é consistente com modelos de monopsônio ou *wage-posting*, nos quais o salário mínimo pode aumentar o emprego. A evidência de spillover effects confirma empiricamente o "efeito-farol" discutido no Box Brasil sobre salário mínimo.

??? pesquisa "Meghir, C.; Narita, R.; Robin, J.-M. (2015). [Wages and Informality in Developing Countries](https://doi.org/10.1257/aer.20121110). *American Economic Review*, 105(4), 1509–1546."
    **Pergunta central:** Por que firmas e trabalhadores similares coexistem nos setores formal e informal? Qual o efeito de aumentar a fiscalização trabalhista sobre salários, emprego e bem-estar? Essas questões são fundamentais para entender o mercado de trabalho brasileiro, onde quase 40% dos ocupados são informais.

    **Método:** Os autores — entre eles a brasileira Renata Narita — construíram um modelo de equilíbrio com *wage-posting* (firmas fixam salários), busca sequencial por emprego (trabalhadores procuram empregos estando empregados ou desempregados) e escolha endógena do setor (formal ou informal) por firmas heterogêneas. O modelo foi estimado com dados da Pesquisa Mensal de Emprego (PME/IBGE) do Brasil.

    **Resultado principal:** Firmas de produtividade similar podem se localizar em setores diferentes — algumas no formal, outras no informal —, gerando **diferenciais compensatórios** entre os setores. Os salários formais incorporam um "prêmio" que compensa os custos da formalização (impostos, encargos), mas os trabalhadores informais enfrentam maior rotatividade e menor proteção. O resultado mais importante: **aumentar a fiscalização** trabalhista não eleva o desemprego. Ao contrário, melhora a alocação de trabalhadores para firmas mais produtivas e intensifica a competição no setor formal, elevando salários, produto e bem-estar agregados.

    **Por que isso importa:** O paper fornece base teórica e empírica para políticas de combate à informalidade. No Brasil, a Reforma Trabalhista de 2017 seguiu uma direção oposta (flexibilização), e a taxa de informalidade permanece elevada (38,1% em 2025). O modelo sugere que o caminho para reduzir a informalidade sem causar desemprego passa por melhorar a fiscalização e reduzir os custos de formalização — e não por enfraquecer a legislação trabalhista.

    **Relevância para o capítulo:** O modelo de *wage-posting* do paper é uma extensão dos modelos de monopsônio e oferta de trabalho discutidos nas seções 17.5–17.7. A coexistência de setores formal e informal adiciona uma dimensão que o modelo competitivo simples não captura, mas que é essencial para entender o mercado de trabalho brasileiro.

??? pesquisa "Card, D.; Krueger, A. B. (1994). [Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania](https://www.jstor.org/stable/2118030). *American Economic Review*, 84(4), 772–793."
    **Pergunta central:** Um aumento do salário mínimo reduz o emprego, como prevê o modelo competitivo? Ou o mercado de trabalho de baixos salários tem características monopsonísticas que permitem aumentos do piso salarial sem perdas significativas de emprego?

    **Método:** Card e Krueger utilizaram um design de diferenças-em-diferenças, comparando o emprego em restaurantes de fast-food em New Jersey (que elevou o salário mínimo de US\$ 4,25 para US\$ 5,05 em abril de 1992) com restaurantes similares na vizinha Pennsylvania (onde o mínimo não mudou). Pesquisaram 410 restaurantes (Burger King, KFC, Wendy's, Roy Rogers) antes e depois do aumento, obtendo dados sobre emprego, salários, preços e horários de funcionamento.

    **Resultado principal:** Contrariando a previsão do modelo competitivo, **o emprego não diminuiu** em New Jersey relativamente a Pennsylvania. Na verdade, o emprego cresceu ligeiramente em NJ. Os restaurantes que precisaram elevar mais os salários (por estarem inicialmente mais próximos do antigo mínimo) apresentaram os maiores aumentos de emprego — consistente com o modelo de monopsônio, no qual o salário mínimo reduz a exploração monopsonística e eleva o emprego.

    **Por que isso importa:** Este estudo é um dos mais influentes da economia do trabalho do século XX e é amplamente considerado como o ponto de partida da "revolução da credibilidade" na economia empírica. Ele demonstrou que a relação entre salário mínimo e emprego é uma questão empírica, não uma certeza teórica — e que a resposta depende crucialmente da estrutura de mercado. A controvérsia gerada pelo paper (incluindo críticas de Neumark e Wascher e réplicas de Card e Krueger) elevou o padrão de evidência exigido no debate de políticas públicas.

    **Relevância para o capítulo:** O paper é a aplicação empírica mais célebre do modelo de monopsônio (seção 17.7) e do efeito do salário mínimo discutido no Box Mundo 17.2. Ilustra como o arcabouço teórico do monopsônio, que pode parecer abstrato, tem implicações testáveis e relevantes para a política de salário mínimo.

??? pesquisa "Azar, J.; Marinescu, I.; Steinbaum, M. (2022). [Labor Market Concentration](https://doi.org/10.1086/717899). *Journal of Human Resources*, 57(S), S167–S199." <!-- [DOI VERIFICADO] -->
    **Pergunta central:** Os mercados de trabalho são competitivos ou concentrados? Se concentrados, qual o efeito da concentração de empregadores sobre os salários?

    **Método:** Os autores utilizaram dados de vagas de emprego publicadas online nos EUA (via CareerBuilder.com) para construir medidas de concentração do mercado de trabalho — definido como o cruzamento de ocupação × área geográfica (*commuting zone*). Calcularam o índice Herfindahl-Hirschman (HHI) para cada mercado e estimaram a relação entre concentração e salários postados, controlando para características do mercado e da vaga.

    **Resultado principal:** O mercado de trabalho médio nos EUA é altamente concentrado: o HHI médio é de aproximadamente 3.953 (equivalente a um mercado com menos de três empregadores efetivos), um nível que seria considerado "altamente concentrado" pelas diretrizes antitruste do DOJ. A concentração é substancialmente maior em mercados rurais e para ocupações especializadas. O efeito sobre salários é significativo: uma movimentação do 25.º para o 75.º percentil de concentração está associada a uma redução de **15–25%** nos salários postados.

    **Por que isso importa:** O paper documentou empiricamente que o poder monopsonístico não é uma curiosidade teórica, mas uma realidade disseminada. Isso tem implicações para a política antitruste (fusões de empresas devem considerar o efeito sobre trabalhadores, não apenas consumidores), para a política de salário mínimo (que pode elevar o emprego em mercados concentrados) e para a regulação do mercado de trabalho em geral.

    **Relevância para o capítulo:** Conecta-se diretamente ao "novo monopsônio" discutido na seção 17.7 e às regras de Marshall da demanda derivada (seção 17.5). Demonstra que as implicações do modelo de monopsônio — salários abaixo da produtividade, exploração monopsonística — são empiricamente relevantes mesmo em mercados com múltiplos empregadores.

??? pesquisa "Montenegro, C. E.; Patrinos, H. A. (2014). [Comparable Estimates of Returns to Schooling Around the World](https://doi.org/10.1596/1813-9450-7020). *World Bank Policy Research Working Paper*, n. 7020." <!-- [DOI VERIFICADO] -->
    **Pergunta central:** Qual é o retorno da educação em diferentes países e regiões? Os retornos variam por nível de ensino, gênero e ao longo do tempo?

    **Método:** Os autores compilaram estimativas comparáveis de equações de Mincer para 139 países, utilizando dados harmonizados de pesquisas domiciliares de 1970 a 2013 (mais de 800 pesquisas). Estimaram retornos à escolaridade por nível de ensino (primário, secundário, terciário), gênero e região, controlando para experiência e seleção amostral (correção de Heckman).

    **Resultado principal:** O retorno médio global por ano adicional de escolaridade é de **10%**, mas com grande variação regional. América Latina e África Subsaariana apresentam os retornos mais altos (12–14%), enquanto países da OCDE têm retornos menores (7–8%). O retorno ao ensino superior é o mais elevado em todas as regiões e cresceu ao longo do tempo, refletindo o aumento da demanda por mão de obra qualificada. Os retornos são geralmente maiores para mulheres do que para homens — sugerindo que o investimento em educação feminina é particularmente rentável. Para o Brasil, os retornos estimados são de aproximadamente **12% por ano** de escolaridade, entre os mais altos do mundo, consistentes com a elevada desigualdade educacional e a escassez relativa de trabalhadores qualificados.

    **Por que isso importa:** O estudo é a referência mais abrangente para comparações internacionais de retornos à educação. Confirma a previsão da teoria do capital humano (seção 17.6) de que a educação é um investimento rentável, especialmente em países com grande desigualdade educacional. Os altos retornos no Brasil sugerem que a expansão do acesso à educação de qualidade é uma das políticas mais eficazes para reduzir a desigualdade salarial.

    **Relevância para o capítulo:** Fornece a base empírica para a equação de Mincer (equação $\eqref{eq:17.13}$) e para os exercícios sobre retornos à educação (Exercício 17.7, Exercício Resolvido 17.3). Os dados comparativos permitem situar o Brasil no contexto internacional dos retornos à educação.

---

!!! tip "🤖 Exercício com IA"
    **IA.5 — Equação de Mincer com Dados Sintéticos**

    Peça à IA para gerar dados sintéticos de uma equação de Mincer com $\beta_1 = 0{,}10$ (retorno de 10% por ano de educação), $\beta_2 = 0{,}03$ e $\beta_3 = -0{,}0005$. Depois peça para ela estimar os parâmetros por OLS e verificar se recupera os valores originais. Discuta: por que a OLS funciona perfeitamente com dados sintéticos mas não com dados reais?

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-5)

## 📚 Referências do Capítulo

- Arrow, Kenneth J. 1973. "The Theory of Discrimination." In: *Discrimination in Labor Markets*, editado por O. Ashenfelter e A. Rees. Princeton University Press.
- Azar, José, Ioana Marinescu, e Marshall Steinbaum. 2022. "[Labor Market Concentration](https://doi.org/10.1086/717899)." *Journal of Human Resources* 57 (S): S167–S199.
- Becker, Gary S. 1957. [*The Economics of Discrimination*](https://books.google.com/books?id=50qHcSNVVEMC). Chicago: University of Chicago Press.
- Becker, Gary S. 1964. [*Human Capital*](https://books.google.com.br/books?id=9t69iICmrZ0C). New York: Columbia University Press.
- Blinder, Alan S. 1973. "[Wage Discrimination: Reduced Form and Structural Estimates](https://doi.org/10.2307/144855)." *Journal of Human Resources* 8 (4): 436–455.
- Card, David, e Alan B. Krueger. 1994. "[Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania](https://www.jstor.org/stable/2118030)." *American Economic Review* 84 (4): 772–793.
- Corseuil, C. H., e F. G. Carneiro. 2001. "[Os Impactos do Salário Mínimo sobre Emprego e Salários no Brasil](https://www.ipea.gov.br)." *Pesquisa e Planejamento Econômico* 31 (3).
- Engbom, Niklas, e Christian Moser. 2022. "[Earnings Inequality and the Minimum Wage: Evidence from Brazil](https://doi.org/10.1257/aer.20181506)." *American Economic Review* 112 (12): 3803–3847.
- Farber, Henry S., Daniel Herbst, Ilyana Kuziemko, e Suresh Naidu. 2021. "[Unions and Inequality over the Twentieth Century: New Evidence from Survey Data](https://doi.org/10.1093/qje/qjab012)." *Quarterly Journal of Economics* 136 (3): 1325–1385.
- Karabarbounis, Loukas, e Brent Neiman. 2014. "[The Global Decline of the Labor Share](https://doi.org/10.1093/qje/qjt032)." *Quarterly Journal of Economics* 129 (1): 61–103.
- Lemos, Sara. 2009. "[Minimum Wage Effects in a Developing Country](https://doi.org/10.1016/j.labeco.2008.07.002)." *Labour Economics* 16 (2): 224–237.
- Manning, Alan. 2003. *Monopsony in Motion: Imperfect Competition in Labor Markets*. Princeton: Princeton University Press.
- McDonald, Ian M., e Robert M. Solow. 1981. "[Wage Bargaining and Employment](https://www.jstor.org/stable/1803906)." *American Economic Review* 71 (5): 896–908.
- Meghir, C., R. Narita, e J.-M. Robin. 2015. "[Wages and Informality in Developing Countries](https://doi.org/10.1257/aer.20121110)." *American Economic Review* 105 (4): 1509–1546.
- Montenegro, Claudio E., e Harry A. Patrinos. 2014. "[Comparable Estimates of Returns to Schooling Around the World](https://doi.org/10.1596/1813-9450-7020)." *World Bank Policy Research Working Paper*, n. 7020.
- Neri, M., G. Gonzaga, e J. M. Camargo. 2001. "[Efeitos Informais do Salário Mínimo e Pobreza](https://www.ipea.gov.br)." *Texto para Discussão*, IPEA.
- Oaxaca, Ronald. 1973. "[Male-Female Wage Differentials in Urban Labor Markets](https://doi.org/10.2307/2525981)." *International Economic Review* 14 (3): 693–709.
- Phelps, Edmund S. 1972. "[The Statistical Theory of Racism and Sexism](https://doi.org/10.1257/aer.62.4.659)." *American Economic Review* 62 (4): 659–661.
- Ricardo, David. 1817. *On the Principles of Political Economy and Taxation*. London: John Murray.
- Saboia, J. 2007. "[O Salário Mínimo e seu Potencial para a Melhoria da Distribuição de Renda no Brasil](https://www.ipea.gov.br)." In: *Desigualdade de Renda no Brasil*. IPEA.
- Schultz, Theodore W. 1961. "[Investment in Human Capital](https://www.jstor.org/stable/1818907)." *American Economic Review* 51 (1): 1–17.
