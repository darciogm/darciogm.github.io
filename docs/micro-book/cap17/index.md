# Capítulo 17 — O Preço do Suor: Economia do Trabalho

O mercado de trabalho é, provavelmente, o mercado mais importante para a maioria das pessoas. A renda do trabalho representa cerca de dois terços da renda nacional na maioria dos países, e as decisões sobre quanto trabalhar, que carreira seguir e como negociar salários afetam profundamente o bem-estar individual e coletivo. Neste capítulo, aplicamos as ferramentas da microeconomia — teoria do consumidor, equilíbrio de mercado e poder de mercado — ao estudo da oferta e da demanda de trabalho.

Partimos do modelo de alocação do tempo, no qual o indivíduo escolhe entre consumo e lazer, e derivamos rigorosamente a curva de oferta de trabalho. Em seguida, analisamos fenômenos como a curva de oferta backward-bending, o equilíbrio competitivo, os diferenciais salariais, o monopsônio e o papel dos sindicatos. Ao longo do capítulo, conectamos a teoria à realidade brasileira, marcada por elevada informalidade, desigualdade salarial e um debate persistente sobre os efeitos do salário mínimo.

---

## 17.1 Alocação do Tempo: o Modelo Trabalho-Lazer

### O problema fundamental

Cada indivíduo dispõe de um estoque fixo de tempo — convencionalmente \(T\) horas por período (por exemplo, \(T = 24\) horas por dia ou \(T = 168\) horas por semana). Esse tempo pode ser alocado entre duas atividades:

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
\tag{17.1} \]

onde \(M^* = wT + V\) é a **renda plena** — a renda máxima que o indivíduo obteria se trabalhasse todas as \(T\) horas. O preço do lazer é o salário \(w\), pois cada hora de lazer tem um custo de oportunidade igual ao salário que se deixa de receber.

!!! idea "Intuição Econômica"
    **Em uma frase:** O salário não é apenas o que você ganha por trabalhar — é também o preço que você paga por cada hora de lazer.

    **Pense assim:** Quando um motorista de aplicativo decide tirar um domingo de folga para assistir ao jogo do Flamengo, o "preço" desse lazer não é só o ingresso — inclui as corridas que ele deixou de fazer. Se o salário-hora dele sobe, o churrasco de domingo fica mais "caro" em termos do que ele abre mão.

    **Por que isso importa:** Entender que o lazer tem preço ajuda a explicar por que profissionais com salários muito altos frequentemente trabalham jornadas longas — o custo de oportunidade de cada hora livre é enorme.

### Preferências

As preferências do indivíduo são representadas por uma função de utilidade \(U(C, L)\), com as propriedades usuais:

- \(U_C > 0\), \(U_L > 0\) (consumo e lazer são bens);
- \(U_{CC} < 0\), \(U_{LL} < 0\) (utilidade marginal decrescente);
- Curvas de indiferença convexas em relação à origem.

A **taxa marginal de substituição** entre lazer e consumo é:

\[
TMS_{L,C} = \frac{U_L}{U_C}
\tag{17.2} \]

No ótimo interior, a condição de tangência exige:

\[
\frac{U_L}{U_C} = w
\tag{17.3} \]

Ou seja, o indivíduo iguala a taxa marginal de substituição ao salário real.

---

### Gráfico interativo: Escolha Trabalho-Lazer

O gráfico abaixo mostra a escolha ótima entre lazer e consumo. A reta orçamentária tem inclinação \(-w\) e o ponto ótimo ocorre na tangência com a curva de indiferença. Ajuste o salário \(w\), a renda não salarial \(V\) e as preferências para ver como a alocação de tempo se altera.

<iframe src="../graficos/cap17/trabalho-lazer.html" title="Figura 17.1 — Escolha ótima entre lazer e consumo" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 17.1 — Escolha ótima entre lazer e consumo.** Ajuste o salário \(w\), a renda não salarial \(V\) e as preferências para ver como a alocação de tempo se altera.
</div>

---

## 17.2 Análise Matemática da Oferta de Trabalho

A seção anterior apresentou os elementos conceituais do modelo trabalho-lazer: a restrição orçamentária do tempo, o conceito de renda plena e a condição de tangência. Agora, formalizamos rigorosamente o problema de otimização do trabalhador e derivamos os efeitos de variações salariais sobre a oferta de trabalho, utilizando a decomposição de Slutsky adaptada ao contexto da alocação do tempo. Essa derivação é fundamental porque revela por que a oferta de trabalho pode ter inclinação positiva ou negativa — uma ambiguidade com implicações diretas para a política tributária e salarial.

### O problema de maximização

!!! theorem "Problema de Otimização do Trabalhador"
    O indivíduo resolve:

    \[
    \max_{C, L} \; U(C, L) \quad \text{sujeito a} \quad C + wL = wT + V, \quad 0 \leq L \leq T
    \tag{17.4} \]

Montando o lagrangeano:

\[
\mathcal{L} = U(C, L) + \lambda(wT + V - C - wL)
\tag{17.5} \]

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
\tag{17.6} \]

### Efeitos de uma variação salarial

!!! proof "Demonstração: Derivação da oferta de trabalho e decomposição de Slutsky"
    Considere a função de utilidade \(U(C, L)\) e a restrição \(C = w(T - L) + V\). As demandas marshallianas são \(L^*(w, V)\) e \(C^*(w, V)\), de modo que a oferta de trabalho é \(h^*(w, V) = T - L^*(w, V)\).

    Para analisar o efeito de uma variação no salário sobre a oferta de trabalho, aplicamos a **equação de Slutsky** adaptada ao modelo trabalho-lazer. Como o lazer tem um "preço" igual a \(w\), temos:

    \[
    \frac{\partial L^*}{\partial w} = \underbrace{\frac{\partial L^c}{\partial w}}_{\text{efeito substituição}} + \underbrace{(T - L^*) \cdot \left(-\frac{\partial L^*}{\partial V}\right)}_{\text{efeito renda}}
    \tag{17.7} \]

    Note que, diferentemente do caso padrão do consumidor, a variação no "preço" do lazer (\(w\)) também altera a renda plena. Por isso, o efeito renda é multiplicado por \((T - L^*) = h^*\), as horas trabalhadas.

    **Efeito substituição** (\(\partial L^c / \partial w < 0\)): um aumento no salário encarece o lazer relativamente ao consumo. Mantida a utilidade constante, o indivíduo substitui lazer por consumo, ou seja, trabalha mais. O efeito substituição é sempre negativo sobre o lazer (positivo sobre a oferta de trabalho).

    **Efeito renda** (\(-h^* \cdot \partial L^* / \partial V\)): se o lazer é um bem normal (\(\partial L^* / \partial V > 0\)), o aumento da renda real causado pelo salário maior leva o indivíduo a demandar mais lazer, ou seja, trabalhar menos. O efeito renda é negativo sobre a oferta de trabalho.

    Portanto, para a oferta de trabalho \(h^* = T - L^*\):

    \[
    \frac{\partial h^*}{\partial w} = \underbrace{-\frac{\partial L^c}{\partial w}}_{>0} + \underbrace{h^* \cdot \frac{\partial L^*}{\partial V}}_{<0 \text{ (se } L \text{ normal)}}
    \tag{17.8} \]

    O sinal de \(\partial h^* / \partial w\) é **ambíguo**: depende de qual efeito domina. Para salários baixos, o efeito substituição tende a dominar; para salários altos, o efeito renda pode prevalecer. \(\blacksquare\)

### Exemplo com Cobb-Douglas

Suponha \(U(C, L) = C^\alpha L^{1-\alpha}\), com \(0 < \alpha < 1\). A solução do problema de maximização gera:

\[
L^* = \frac{(1-\alpha)(wT + V)}{w}, \qquad h^* = T - L^* = \alpha T - \frac{(1-\alpha)V}{w}
\tag{17.9} \]

Neste caso, quando \(V = 0\), temos \(h^* = \alpha T\), que não depende de \(w\). Os efeitos renda e substituição se cancelam exatamente — uma propriedade conhecida das preferências Cobb-Douglas.

---

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

---

## 17.3 A Curva Backward-Bending

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

---

### Gráfico interativo: Curva de Oferta Backward-Bending

O gráfico abaixo ilustra a curva de oferta de trabalho individual e a possibilidade de backward-bending. No painel superior, veja a escolha lazer-consumo para o salário selecionado. No painel inferior, a curva de oferta de trabalho \(h^*(w)\). Aumente \(\gamma\) para reduzir a elasticidade de substituição e observar o trecho onde o efeito renda domina.

<iframe src="../graficos/cap17/oferta-trabalho.html" title="Figura 17.2 — Curva de oferta de trabalho individual e a possibilidade de backward-bending" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 17.2 — Curva de oferta de trabalho individual e a possibilidade de backward-bending.** Aumente \(\gamma\) para reduzir a elasticidade de substituição e observar o trecho onde o efeito renda domina.
</div>

---

## 17.4 Curva de Oferta de Trabalho do Mercado

Até aqui, analisamos a oferta de trabalho do ponto de vista individual. Mas o mercado de trabalho é composto por milhões de trabalhadores heterogêneos, cada um com suas preferências, sua renda não salarial e seu salário de reserva. Como passamos da oferta individual — que pode ser backward-bending — para a oferta de mercado? A agregação produz uma curva com propriedades distintas, em grande parte porque incorpora não apenas a decisão de quantas horas trabalhar (margem intensiva), mas também a decisão de participar ou não da força de trabalho (margem extensiva).

A oferta de trabalho do mercado é obtida pela **agregação horizontal** das ofertas individuais. Se existem \(n\) trabalhadores, cada um com oferta \(h_i^*(w)\), a oferta agregada é:

\[
H^s(w) = \sum_{i=1}^{n} h_i^*(w)
\tag{17.10} \]

Mesmo que curvas individuais sejam backward-bending, a curva de mercado tende a ser **positivamente inclinada** por duas razões:

1. **Margem extensiva**: salários mais altos atraem novos trabalhadores ao mercado (pessoas que estavam fora da força de trabalho);
2. **Heterogeneidade**: diferentes trabalhadores atingem o ponto de inflexão em salários diferentes, de modo que a agregação suaviza o efeito.

!!! note "Margem intensiva vs. extensiva"
    A **margem intensiva** refere-se à decisão de quantas horas trabalhar (dado que se está empregado). A **margem extensiva** refere-se à decisão de participar ou não da força de trabalho. A análise do modelo trabalho-lazer captura primariamente a margem intensiva, mas a curva de mercado incorpora ambas.

---

## 17.5 Equilíbrio no Mercado de Trabalho

Com a curva de oferta de trabalho em mãos, podemos agora reunir os dois lados do mercado — oferta (trabalhadores) e demanda (firmas) — para determinar o salário de equilíbrio. O mecanismo é análogo ao de qualquer mercado competitivo, mas com uma particularidade importante: a demanda por trabalho é uma demanda derivada, que depende da produtividade marginal do trabalhador e do preço do produto final.

### Determinação do salário competitivo

No modelo competitivo, o mercado de trabalho funciona como qualquer outro mercado. O salário de equilíbrio \(w^*\) é determinado pela interseção da curva de oferta agregada \(H^s(w)\) com a curva de demanda agregada por trabalho \(H^d(w)\).

A **demanda por trabalho** da firma advém da maximização de lucros. No curto prazo, com capital fixo, a firma contrata trabalho até que:

\[
w = p \cdot PMg_L = VPMg_L \tag{17.11}
\]

onde \(PMg_L\) é o produto marginal do trabalho e \(VPMg_L\) é o **valor do produto marginal do trabalho**. A curva de demanda por trabalho é, portanto, a curva de \(VPMg_L\), que é decrescente (devido à lei dos rendimentos decrescentes).

!!! definition "Equilíbrio competitivo no mercado de trabalho"
    O equilíbrio competitivo ocorre no par \((w^*, H^*)\) tal que:

    \[
    H^s(w^*) = H^d(w^*) = H^*
    \tag{17.12} \]

    Nesse equilíbrio, todo trabalhador que deseja trabalhar ao salário \(w^*\) encontra emprego, e toda firma que deseja contratar ao salário \(w^*\) encontra trabalhadores.

### Deslocamentos das curvas

| Fator | Efeito sobre a oferta | Efeito sobre a demanda | Impacto no salário |
|---|---|---|---|
| Aumento da produtividade | — | Desloca \(H^d\) para a direita | \(w^*\) sobe |
| Imigração | Desloca \(H^s\) para a direita | — | \(w^*\) cai |
| Aumento da renda não salarial | Desloca \(H^s\) para a esquerda | — | \(w^*\) sobe |
| Progresso tecnológico poupador de trabalho | — | Desloca \(H^d\) para a esquerda | \(w^*\) cai |

<div class="caption-obj" markdown>
**Tabela 17.1 — Deslocamentos das curvas de oferta e demanda de trabalho.**
</div>

---

## 17.6 Diferenciais de Salário

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
\tag{17.13} \]

onde \(S\) é anos de escolaridade, \(X\) é experiência (ou idade − escolaridade − 6), e \(\beta_1\) é interpretado como a **taxa de retorno da educação**.

### Diferenciais compensatórios

Adam Smith já observava que trabalhos mais desagradáveis, perigosos ou insalubres tendem a pagar salários mais altos. No equilíbrio, diferenças salariais refletem diferenças nas **características não pecuniárias** dos empregos: risco de acidente, condições ambientais, horário, localização, estabilidade etc.

### Discriminação

Diferenças salariais também podem refletir **discriminação** por gênero, raça, etnia ou outras características. Modelos como o de Becker (1957) e o de discriminação estatística ajudam a explicar por que a discriminação pode persistir em equilíbrio.

---

## 🇧🇷 Box Brasil: Retorno à Educação e Desigualdade Salarial

!!! example "O prêmio salarial da educação e os hiatos de gênero e raça"
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

## 17.7 Monopsônio no Mercado de Trabalho

Até este ponto, a análise pressupôs que o mercado de trabalho é perfeitamente competitivo: trabalhadores e firmas são todos tomadores de salário. Mas o que acontece quando há poder de mercado do lado da demanda — isto é, quando uma firma (ou poucas firmas) é a única compradora de trabalho em uma região ou ocupação? Essa estrutura, conhecida como monopsônio, é o espelho do monopólio no mercado de bens e gera distorções análogas: salários abaixo da produtividade e emprego inferior ao socialmente ótimo.

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
\tag{17.14} \]

O monopsonista contrata até que:

\[
VPMg_L = CMg_L
\tag{17.15} \]

Isso resulta em:

- **Emprego menor** do que no equilíbrio competitivo;
- **Salário menor** do que no equilíbrio competitivo.

A diferença \(VPMg_L - w\) é a **exploração monopsonística** (no sentido de Joan Robinson).

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando há um único grande empregador na região, ele pode pagar salários abaixo da produtividade dos trabalhadores porque eles não têm para onde ir.

    **Pense assim:** Em muitas cidades pequenas do interior do Brasil, a prefeitura ou uma única fábrica é praticamente a única empregadora formal. Se o trabalhador pede aumento, não tem concorrente para onde migrar. O empregador sabe disso e mantém salários baixos, mesmo que o trabalhador produza muito mais do que recebe.

    **Por que isso importa:** Em mercados monopsonísticos, um salário mínimo bem calibrado pode, paradoxalmente, aumentar emprego e salário ao mesmo tempo — uma das conclusões mais contraintuitivas da economia do trabalho.

!!! tip "Monopsônio e salário mínimo"
    Uma implicação surpreendente do modelo de monopsônio é que a imposição de um **salário mínimo** pode, sob certas condições, aumentar **simultaneamente** o salário e o emprego. Isso ocorre porque o salário mínimo transforma a curva de custo marginal do trabalho em uma linha horizontal até o ponto em que a oferta de trabalho ao salário mínimo se esgota, eliminando o incentivo do monopsonista a restringir contratações.

---

### Gráfico interativo: Monopsônio no Mercado de Trabalho

O gráfico abaixo mostra o equilíbrio monopsonístico versus o competitivo. A curva de oferta de trabalho \(S(w)\), o custo marginal do trabalho (CMgL) e a curva de valor do produto marginal (VPMgL) determinam o emprego e o salário. A diferença entre VPMg e o salário pago no monopsônio é a exploração monopsonística.

<iframe src="../graficos/cap17/monopsonio.html" title="Figura 17.3 — Equilíbrio monopsonístico versus competitivo no mercado de trabalho" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 17.3 — Equilíbrio monopsonístico versus competitivo no mercado de trabalho.** A diferença entre VPMg e o salário pago no monopsônio é a exploração monopsonística.
</div>

---

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

---

## 17.8 Sindicatos

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

---

## 🇧🇷 Box Brasil: Informalidade e Reforma Trabalhista

!!! example "A informalidade estrutural e os efeitos da Reforma Trabalhista de 2017"
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

## 🇧🇷 Box Brasil: Salário Mínimo no Brasil

!!! example "O salário mínimo e o debate sobre o 'efeito-farol'"
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

    **Tabela: Composição do mercado de trabalho brasileiro**

    | Indicador | Valores aproximados (2025) |
    |---|---|
    | População ocupada total | 103 milhões |
    | Trabalhadores com carteira (CLT) | 39,4 milhões |
    | Trabalhadores sem carteira | 13,4 milhões |
    | Trabalhadores por conta própria | 26,2 milhões |
    | Empregadores | 4 milhões |
    | Setor público (estatutários) | 12 milhões |
    | Taxa de informalidade (IBGE) | 38,1% |
    | Salário médio real mensal habitual | R$ 3.652 |
    | Salário mínimo vigente (2025) | R$ 1.518 |

    *Fonte: PNAD Contínua/IBGE, média anual 2025; [DIEESE](https://www.dieese.org.br).*

    A tabela revela a enorme heterogeneidade do mercado de trabalho brasileiro. A elevada taxa de informalidade (38,1%) implica que uma parcela substancial da força de trabalho opera à margem da legislação trabalhista, o que limita a eficácia de políticas baseadas exclusivamente em regulação do mercado formal.

---

## 17.9 — Efeitos Substituição e Renda sobre a Oferta de Trabalho

| Variação | Efeito Substituição | Efeito Renda | Resultado sobre \(h^*\) |
|---|---|---|---|
| \(\uparrow w\) (salário sobe) | \(h\) sobe (lazer mais caro) | \(h\) cai (mais rico, quer mais lazer) | Ambíguo |
| \(\uparrow V\) (renda não salarial sobe) | Nenhum | \(h\) cai (mais rico) | \(h\) cai |
| \(\uparrow p\) (preço do consumo sobe) | Depende (o efeito sobre o preço relativo do lazer varia com a cesta) | Depende | Ambíguo |

<div class="caption-obj" markdown>
**Tabela 17.2 — Efeitos substituição e renda sobre a oferta de trabalho.**
</div>

---

## 📋 Resumo do Capítulo

- O mercado de trabalho é analisado pelo modelo trabalho-lazer, no qual o indivíduo aloca seu tempo entre lazer e trabalho, enfrentando o salário como custo de oportunidade do lazer. A condição de ótimo iguala a taxa marginal de substituição entre lazer e consumo ao salário real.
- Um aumento salarial tem efeitos ambíguos sobre a oferta de trabalho: o efeito substituição (lazer fica mais caro) incentiva mais trabalho, enquanto o efeito renda (maior poder de compra) incentiva mais lazer. Quando o efeito renda domina, a curva de oferta de trabalho se torna backward-bending.
- O equilíbrio competitivo no mercado de trabalho iguala demanda e oferta de trabalho, com diferenças salariais explicadas por diferenciais compensatórios (risco, desconforto), capital humano (educação, experiência) e discriminação.
- O monopsônio (único comprador de trabalho) paga salários abaixo do produto marginal do valor do trabalho e emprega menos trabalhadores do que o resultado competitivo, gerando ineficiência análoga ao monopólio no mercado de bens.
- Sindicatos podem elevar salários acima do nível competitivo, com efeitos sobre emprego que dependem do poder de barganha e da estrutura de mercado. O salário mínimo tem efeitos ambíguos: sob monopsônio pode aumentar emprego, enquanto em mercados competitivos pode reduzi-lo.
- A realidade brasileira é marcada por elevada informalidade, desigualdade salarial significativa, alto retorno à educação e debates persistentes sobre os efeitos do salário mínimo e da reforma trabalhista.

## 🔑 Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Renda plena (full income) | Renda máxima que o indivíduo obteria se trabalhasse todas as horas disponíveis: \(M^* = wT + V\) |
| Custo de oportunidade do lazer | O salário \(w\), pois cada hora de lazer implica renunciar a \(w\) reais de renda |
| Efeito substituição (trabalho) | Aumento salarial encarece o lazer, incentivando mais horas de trabalho |
| Efeito renda (trabalho) | Aumento salarial eleva a renda real, incentivando mais lazer (se lazer é bem normal), reduzindo horas de trabalho |
| Curva backward-bending | Curva de oferta de trabalho que se inclina para trás quando o efeito renda domina o efeito substituição em salários elevados |
| Diferencial compensatório | Diferença salarial que compensa trabalhadores por características indesejáveis do emprego (risco, insalubridade, localização) |
| Monopsônio | Estrutura de mercado com um único comprador de trabalho, que paga salário abaixo do produto marginal e emprega menos que o competitivo |
| Custo marginal do trabalho (monopsônio) | Custo de contratar um trabalhador adicional, que excede o salário pago porque o monopsonista deve elevar o salário de todos os trabalhadores |
| Salário de reserva | Salário mínimo abaixo do qual o indivíduo prefere não trabalhar (solução de canto com \(h = 0\)) |
| Capital humano | Estoque de habilidades e conhecimentos adquiridos via educação e experiência que elevam a produtividade e os salários |

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

## 📚 Referências do Capítulo

- Becker, Gary S. 1957. [*The Economics of Discrimination*](https://books.google.com/books?id=50qHcSNVVEMC). Chicago: University of Chicago Press.
- Becker, Gary S. 1964. [*Human Capital*](https://books.google.com.br/books?id=9t69iICmrZ0C). New York: Columbia University Press.
- Card, David, e Alan B. Krueger. 1994. "[Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania](https://www.jstor.org/stable/2118030)." *American Economic Review* 84 (4): 772–793.
- Corseuil, C. H., e F. G. Carneiro. 2001. "[Os Impactos do Salário Mínimo sobre Emprego e Salários no Brasil](https://www.ipea.gov.br)." *Pesquisa e Planejamento Econômico* 31 (3).
- Engbom, Niklas, e Christian Moser. 2022. "[Earnings Inequality and the Minimum Wage: Evidence from Brazil](https://doi.org/10.1257/aer.20181506)." *American Economic Review* 112 (12): 3803–3847.
- Lemos, Sara. 2009. "[Minimum Wage Effects in a Developing Country](https://doi.org/10.1016/j.labeco.2008.07.002)." *Labour Economics* 16 (2): 224–237.
- McDonald, Ian M., e Robert M. Solow. 1981. "[Wage Bargaining and Employment](https://www.jstor.org/stable/1803906)." *American Economic Review* 71 (5): 896–908.
- Meghir, C., R. Narita, e J.-M. Robin. 2015. "[Wages and Informality in Developing Countries](https://doi.org/10.1257/aer.20121110)." *American Economic Review* 105 (4): 1509–1546.
- Neri, M., G. Gonzaga, e J. M. Camargo. 2001. "[Efeitos Informais do Salário Mínimo e Pobreza](https://www.ipea.gov.br)." *Texto para Discussão*, IPEA.
- Saboia, J. 2007. "[O Salário Mínimo e seu Potencial para a Melhoria da Distribuição de Renda no Brasil](https://www.ipea.gov.br)." In: *Desigualdade de Renda no Brasil*. IPEA.
- Schultz, Theodore W. 1961. "[Investment in Human Capital](https://www.jstor.org/stable/1818907)." *American Economic Review* 51 (1): 1–17.
