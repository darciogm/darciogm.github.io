# Exercícios, Revisão e ANPEC — Capítulo 10

!!! tip "Dados para exercicios empiricos"
    - **PIA/IBGE (Pesquisa Industrial Anual):** [sidra.ibge.gov.br](https://sidra.ibge.gov.br) — Dados de valor adicionado, pessoal ocupado e ativo imobilizado por setor industrial. Estime funcoes de producao Cobb-Douglas e teste retornos de escala.
    - **Censo Agropecuario/IBGE:** [sidra.ibge.gov.br](https://sidra.ibge.gov.br) — Dados por municipio para estimar PTF agricola (resíduo de Solow aplicado ao agro brasileiro).
    - **Notebook:** [N9 — Funcao de producao Cobb-Douglas](../notebooks/index.md) (dados da PIA/IBGE).

!!! classroom "Atividade 10.2 — Clonar a firma: rendimentos de escala por setor (10 min)"
    **Objetivo:** Desenvolver intuição sobre quando rendimentos de escala são crescentes, constantes ou decrescentes — e por que isso determina a estrutura de mercado.

    **Material:** Nenhum (projeção de cenários).

    **Protocolo:**

    1. **Cenários** (5 min): Projete quatro setores e pergunte para cada um: "Se você clonar a operação inteira — dobrar tudo (trabalhadores, máquinas, espaço) —, o produto mais que dobra, dobra exatamente, ou menos que dobra?" Vote com Mentimeter ou mão levantada.
        - **(a) Barraca de açaí na praia** → CRS (dobrar tudo ≈ dobra o produto). Fácil replicar.
        - **(b) Refinaria de petróleo** → IRS (o volume do tanque cresce com o cubo do raio, o custo com o quadrado). Por isso refinarias são enormes.
        - **(c) Escritório de advocacia boutique** → DRS? O principal ativo é o capital humano do sócio-fundador, que não "dobra". Crescer dilui a qualidade.
        - **(d) Plataforma digital (Netflix, Uber)** → IRS extremos. O custo marginal de um usuário adicional é quase zero; o custo fixo (conteúdo, algoritmo) é enorme.
    2. **Debrief** (5 min):
        - "Percebam o padrão: IRS → poucas firmas grandes (refinarias, plataformas). CRS → muitas firmas médias (barracas). DRS → muitas firmas pequenas especializadas (advocacia)."
        - "Rendimentos de escala explicam *por que* alguns mercados são oligopólios naturais e outros são competitivos — tema do Capítulo 12."
        - "O CADE analisa alegações de economias de escala em toda fusão — exatamente este cálculo que vocês fizeram de cabeça."

    **Conexão com o conteúdo:** Seção 10.3 (rendimentos de escala), Box Brasil sobre CADE (Seção 10.3), preparação para Capítulos 12–13.

!!! classroom "Atividade 10.3 — Quem substitui quem? Elasticidade de substituição na prática (10 min)"
    **Objetivo:** Calibrar a intuição sobre σ — o parâmetro que determina se a automação é suave ou traumática.

    **Material:** Nenhum (projeção).

    **Protocolo:**

    1. **Ranking** (4 min): Projete 5 setores e peça que os alunos os ordenem do *mais fácil* ao *mais difícil* de substituir trabalho por capital (automação):
        - Caixa de supermercado → Motorista de caminhão → Cirurgião → Atendente de call center → Pedreiro
    2. **Debate** (3 min): Compare os rankings. Tipicamente: call center > caixa > motorista > pedreiro > cirurgião. Pergunte: "Qual tem σ mais alto? Qual tem σ mais baixo?"
    3. **Debrief** (3 min):
        - "O σ alto (call center → chatbot) significa isoquanta quase reta: a firma facilmente troca pessoas por máquinas. O σ baixo (cirurgião) significa isoquanta quase em L: a máquina não substitui o humano."
        - "Chirinko (2008) encontrou σ ≈ 0,4–0,6 para a manufatura como um todo. Mas varia enormemente entre setores — e é por isso que a automação não desloca todos os trabalhadores igualmente."
        - Conecte com Acemoglu e Restrepo (2019) e o debate sobre IA e futuro do trabalho.

    **Conexão com o conteúdo:** Seção 10.4 (elasticidade de substituição), Box Mundo 10.2 (labor share), Chirinko (2008).

---

<iframe src="/micro-book/graficos/cap10/webr-cobb-douglas.html" title="WebR — Estimando Cobb-Douglas" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 10.1 — Estimando uma Cobb-Douglas com dados estilizados da PIA/IBGE.** O código estima α, β e A por MQO, testa rendimentos constantes de escala (H₀: α + β = 1) e plota isoquantas estimadas. Altere os parâmetros verdadeiros e re-execute para ver como a estimação se comporta.
</div>

<iframe src="/micro-book/graficos/cap10/webr-pmg-pme.html" title="WebR — Produto Marginal e Médio" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 10.2 — Produto total, marginal e médio.** A tangente à curva de PT dá o PMg; a secante dá o PMe. Com α < 1, rendimentos marginais decrescentes — o PMg puxa o PMe para baixo. Altere α para 1.2 e veja rendimentos crescentes!
</div>

<iframe src="/micro-book/graficos/cap10/webr-rendimentos.html" title="WebR — Rendimentos de Escala" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 10.3 — CRS, IRS e DRS lado a lado.** Três painéis de isoquantas mostram como o espaçamento muda com α + β. Com CRS, espaçamento uniforme; com IRS, isoquantas se aproximam; com DRS, se afastam.
</div>

<iframe src="/micro-book/graficos/cap10/webr-elasticidade-substituicao.html" title="WebR — Elasticidade de Substituição" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 10.4 — Elasticidade de substituição σ: de Leontief a substitutos perfeitos.** Quatro valores de σ geram isoquantas de formas radicalmente diferentes. Cobb-Douglas (σ=1) é um caso especial da família CES.
</div>

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Uma função de produção $f(K,L)$ apresenta rendimentos crescentes de escala se:"
    - (a) $f(tK, tL) = t \cdot f(K,L)$ para todo $t > 1$
    - (b) $f(tK, tL) > t \cdot f(K,L)$ para todo $t > 1$
    - (c) O produto marginal do trabalho é crescente
    - (d) A TMST é constante ao longo de uma isoquanta

    ??? success "Resposta"
        **(b)** Rendimentos crescentes de escala significam que dobrar todos os insumos mais que dobra o produto. Formalmente, $f(tK,tL) > t \cdot f(K,L)$ para $t > 1$. A alternativa (a) descreve rendimentos constantes (homogeneidade de grau 1); (c) descreve rendimentos crescentes do fator trabalho, não de escala; (d) descreve substitutos perfeitos na produção.

??? question "2. Para a função Cobb-Douglas $f(K,L) = A K^\alpha L^\beta$, os rendimentos de escala são determinados por:"
    - (a) O valor de $A$
    - (b) A soma $\alpha + \beta$: crescentes se $> 1$, constantes se $= 1$, decrescentes se $< 1$
    - (c) O produto $\alpha \cdot \beta$
    - (d) A razão $\alpha / \beta$

    ??? success "Resposta"
        **(b)** Para Cobb-Douglas, $f(tK,tL) = t^{\alpha+\beta} f(K,L)$. Se $\alpha + \beta > 1$, rendimentos crescentes; se $= 1$, constantes; se $< 1$, decrescentes. O parâmetro $A$ (a) é um fator de produtividade que não afeta os rendimentos de escala; (c) e (d) não determinam a homogeneidade.

??? question "3. A Taxa Marginal de Substituição Técnica (TMST) entre capital e trabalho mede:"
    - (a) O custo de substituir uma unidade de capital por trabalho no mercado
    - (b) A quantidade de capital que a firma pode dispensar ao empregar uma unidade adicional de trabalho, mantendo a produção constante
    - (c) A razão entre os preços dos insumos
    - (d) A elasticidade de substituição entre os insumos

    ??? success "Resposta"
        **(b)** A TMST é a inclinação da isoquanta: $\text{TMST}_{LK} = -dK/dL|_{q=\bar{q}} = \text{PMg}_L/\text{PMg}_K$. Mede a taxa à qual a firma pode trocar capital por trabalho mantendo o produto. A alternativa (c) descreve a inclinação da isocusto; (a) confunde TMST com custo de mercado; (d) é um conceito relacionado mas distinto ($\sigma$ mede a curvatura da isoquanta).

??? question "4. A lei dos rendimentos marginais decrescentes afirma que:"
    - (a) Quando todos os insumos aumentam, o produto total eventualmente diminui
    - (b) Quando um insumo aumenta com os demais fixos, seu produto marginal eventualmente diminui
    - (c) O custo médio é sempre crescente
    - (d) As isoquantas se tornam retas à medida que a produção aumenta

    ??? success "Resposta"
        **(b)** A lei dos rendimentos marginais decrescentes aplica-se ao curto prazo: mantendo pelo menos um insumo fixo, o produto marginal do insumo variável eventualmente cai. Isso não diz que o produto total diminui (a) — apenas que cresce a taxas decrescentes. A alternativa (a) confunde rendimentos decrescentes do fator com rendimentos de escala; (c) não segue necessariamente.

??? question "5. Uma função de produção é homotética quando:"
    - (a) Os rendimentos de escala são sempre constantes
    - (b) A TMST depende apenas da razão $K/L$, não do nível de produção — as isoquantas são 'cópias ampliadas' umas das outras
    - (c) O produto marginal de cada insumo é constante
    - (d) A elasticidade de substituição é infinita

    ??? success "Resposta"
        **(b)** Homoteticidade significa que a TMST em qualquer ponto da isoquanta depende apenas da razão capital-trabalho, não da escala. A expansão da produção ao longo de um raio a partir da origem mantém a proporção ótima dos insumos. A alternativa (a) é restritiva — funções homotéticas podem ter rendimentos variáveis; (c) descreve uma função linear nos insumos; (d) descreve substitutos perfeitos.

---

## 📋 Resumo do Capítulo

- A **função de produção** $q = f(K, L)$ descreve a quantidade máxima de produto obtida a partir de capital e trabalho, sintetizando a tecnologia da firma. Dela derivam-se o produto marginal, o produto médio e a lei dos rendimentos marginais decrescentes.
- As **isoquantas** representam combinações de insumos que geram o mesmo nível de produto, e a **TMST** (taxa marginal de substituição técnica) mede a taxa à qual a firma pode trocar um insumo por outro mantendo a produção constante.
- Os **rendimentos de escala** classificam a tecnologia segundo o que ocorre com o produto quando todos os insumos são multiplicados por um mesmo fator: crescentes, constantes ou decrescentes. Esse conceito é distinto da lei dos rendimentos marginais decrescentes, que se aplica à variação de um único insumo.
- A **elasticidade de substituição** ($\sigma$) mede a facilidade com que a firma substitui capital por trabalho ao longo de uma isoquanta, sendo um parâmetro central que diferencia as famílias de funções de produção (linear, Leontief, Cobb-Douglas e CES).
- As quatro funções de produção clássicas — **linear** ($\sigma = \infty$), **Leontief** ($\sigma = 0$), **Cobb-Douglas** ($\sigma = 1$) e **CES** ($\sigma$ livre) — cobrem todo o espectro de substituibilidade entre insumos e são amplamente utilizadas na análise empírica.
- O **progresso técnico** desloca a função de produção para cima ao longo do tempo, podendo ser neutro (Hicks, Harrod ou Solow) ou enviesado, e é o principal motor do crescimento da produtividade no longo prazo — como ilustra a revolução agrícola da Embrapa no Brasil.

## 🔑 Conceitos-Chave

<a id="tabela-10-2"></a>

| Conceito | Definição |
|----------|-----------|
| Função de produção | Relação $q = f(K, L)$ que descreve a quantidade máxima de produto para dadas quantidades de insumos e tecnologia. |
| Produto marginal | Acréscimo ao produto total resultante de uma unidade adicional de um insumo, mantidos os demais constantes ($\mathrm{PMg}_L = \partial f / \partial L$). |
| Produto médio | Razão entre o produto total e a quantidade do insumo ($\mathrm{PMe}_L = f(K,L)/L$). |
| Lei dos rendimentos marginais decrescentes | A partir de certo ponto, cada unidade adicional de um insumo variável (com os demais fixos) gera acréscimos menores ao produto. |
| Isoquanta | Curva que representa todas as combinações de insumos que geram o mesmo nível de produto. |
| TMST | Taxa marginal de substituição técnica: razão dos produtos marginais ($\mathrm{PMg}_L / \mathrm{PMg}_K$), indicando a taxa de troca entre insumos ao longo da isoquanta. |
| Rendimentos de escala | Comportamento do produto quando todos os insumos são multiplicados por $t > 1$: crescentes se $f(tK, tL) > t \cdot f(K,L)$, constantes se igual, decrescentes se menor. |
| Elasticidade de substituição ($\sigma$) | Mede a variação percentual na razão $K/L$ em resposta a uma variação percentual na TMST, capturando a facilidade de substituição entre insumos. |
| Função CES | Função de produção com elasticidade de substituição constante, que engloba como casos especiais a linear, a Cobb-Douglas e a Leontief. |
| Progresso técnico | Deslocamento da função de produção ao longo do tempo, classificado como neutro à Hicks, Harrod ou Solow conforme o viés sobre os insumos. |

<div class="caption-obj" markdown>
**Tabela 10.2 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-10-1"></a>**Exercício 10.1.**
Considere a função de produção \(q = 10K^{0,3}L^{0,7}\).

(a) Calcule os produtos marginais \(\mathrm{PMg}_K\) e \(\mathrm{PMg}_L\).

(b) Verifique que os produtos marginais são decrescentes (i.e., \(\partial^2 q / \partial K^2 < 0\) e \(\partial^2 q / \partial L^2 < 0\)).

(c) Determine a TMST e mostre que ela é decrescente ao longo de uma isoquanta.

(d) Classifique os rendimentos de escala.

(e) Confirme que \(\sigma = 1\).

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-1)

---

<a id="ex-10-2"></a>**Exercício 10.2.**
Uma firma opera com a tecnologia CES:

\[
q = \left[0{,}5 K^{-1} + 0{,}5 L^{-1}\right]^{-1}
\]

(a) Identifique os parâmetros \(\delta\), \(\rho\) e \(\gamma\).

(b) Calcule a elasticidade de substituição \(\sigma\).

(c) Mostre que os rendimentos de escala são constantes.

(d) Compare a forma das isoquantas desta função com as da Cobb-Douglas.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-2)

---

<a id="ex-10-3"></a>**Exercício 10.3.**
Considere a função de produção Leontief \(q = \min\{2K, 3L\}\).

(a) Qual a proporção ótima de uso dos insumos?

(b) Se a firma deseja produzir \(q = 60\), quais as quantidades mínimas de \(K\) e \(L\)?

(c) Qual o efeito de dobrar apenas o trabalho, mantendo o capital constante? Interprete em termos de rendimentos marginais.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-3)

---

<a id="ex-10-4"></a>**Exercício 10.4.**
Uma função de produção é dada por \(q = K^{0,6} L^{0,8}\).

(a) Classifique os rendimentos de escala.

(b) Calcule a elasticidade de escala \(e\) e interprete.

(c) Se a firma dobrar ambos os insumos, por qual fator o produto aumentará?

(d) Explique por que rendimentos crescentes de escala podem existir mesmo com produtos marginais decrescentes em cada fator individualmente.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-4)

---

<a id="ex-10-5"></a>**Exercício 10.5.**
Suponha que a função de produção de uma firma é \(q = A(t) K^{0,4} L^{0,6}\), com \(A(t) = e^{0,02t}\).

(a) Qual a taxa de crescimento da PTF?

(b) Se \(K\) cresce a 3% ao ano e \(L\) cresce a 1% ao ano, qual a taxa de crescimento do produto?

(c) Decomponha o crescimento do produto nas contribuições do capital, do trabalho e da PTF.

(d) Este progresso técnico é neutro no sentido de Hicks, Harrod ou Solow? Justifique.

(e) Calcule a produtividade total dos fatores em \(t = 0\) e \(t = 10\). Se em \(t = 0\) a firma utiliza \(K = 100\) e \(L = 200\), qual o produto em \(t = 0\) e em \(t = 10\) (supondo que os insumos cresçam às taxas indicadas)?

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-5)

---

<a id="ex-10-6"></a>**Exercício 10.6.** *(Fácil)*
Considere a função de produção \(f(K, L) = K^{0,3} L^{0,7}\).

(a) Calcule os produtos marginais \(\mathrm{PMg}_K\) e \(\mathrm{PMg}_L\).

(b) Verifique o Teorema de Euler: \(\mathrm{PMg}_K \cdot K + \mathrm{PMg}_L \cdot L = f(K, L)\) (o que implica sobre os rendimentos de escala?).

(c) Mostre que os produtos marginais são decrescentes.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-6)

---

<a id="ex-10-7"></a>**Exercício 10.7.** *(Fácil)*
Classifique os rendimentos de escala das funções de produção abaixo, justificando cada caso:

(a) \(f(K, L) = KL\)

(b) \(f(K, L) = K + L\)

(c) \(f(K, L) = \min\{K, 2L\}\)

(d) \(f(K, L) = K^{0,4} L^{0,4}\)

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-7)

---

<a id="ex-10-8"></a>**Exercício 10.8.** *(Médio)*
Uma firma opera com a função de produção CES \(q = \left[\delta K^{\rho} + (1-\delta)L^{\rho}\right]^{1/\rho}\), com \(\delta = 0{,}5\) e \(\rho = -1\) (portanto, \(\sigma = 0{,}5\)). Os preços dos fatores são \(r = 5\) e \(w = 3\), e a firma utiliza \(K = 10\) e \(L = 20\).

(a) Calcule a TMST nessa combinação.

(b) Verifique se a firma está minimizando custos (compare a TMST com a razão de preços \(w/r\)).

(c) Se a firma não está no ótimo, em que direção deve ajustar a combinação de insumos?

(d) Calcule a elasticidade de substituição e interprete.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-8)

---

<a id="ex-10-9"></a>**Exercício 10.9.** *(Médio — contexto brasileiro)*
Um produtor de soja no Cerrado opera com a função de produção \(f(K, L) = A \cdot K^{0,4} L^{0,6}\), onde \(A = A(t)\) representa o nível tecnológico fornecido por variedades desenvolvidas pela Embrapa.

(a) Se \(A\) cresce a uma taxa constante de 3% ao ano, em quanto tempo o produto dobra, mantendo os insumos \(K\) e \(L\) constantes? (Use a regra de 70 como aproximação e confirme com o cálculo exato.)

(b) Entre 2000 e 2023, a produtividade média da soja brasileira cresceu de 2.403 para 3.509 kg/ha, um crescimento de aproximadamente 1,9% ao ano. Que fração desse crescimento é consistente com um crescimento anual de \(A\) de 3%, supondo insumos constantes?

(c) Como a teoria da produção interpretaria o fato de que a área plantada de soja no Brasil cresceu muito mais do que a produtividade por hectare? Isso é uma evidência de rendimentos crescentes ou decrescentes?

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-9)

---

<a id="ex-10-10"></a>**Exercício 10.10.** *(Difícil)*
Considere uma função de produção homotética \(f(K, L)\), que pode ser escrita como \(f(K, L) = g(h(K, L))\), onde \(h\) é homogênea de grau 1 e \(g\) é estritamente crescente.

(a) Prove que o caminho de expansão (locus de combinações ótimas de insumos à medida que o produto varia, para preços \(w\) e \(r\) fixos) é um raio a partir da origem.

(b) Mostre que, como consequência, a função de custo mínimo pode ser escrita na forma separável \(C(w, r, q) = c(w, r) \cdot g^{-1}(q)\), onde \(c(w, r)\) é o custo de atingir \(h = 1\). O que essa separabilidade implica sobre como o custo varia com o produto?

(c) Verifique a propriedade (b) explicitamente para a função Cobb-Douglas \(f(K, L) = K^{\alpha} L^{1-\alpha}\) com rendimentos constantes de escala.

[:material-arrow-right: Ver solução](../solucoes/cap10.md#ex-10-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2013 — Questão 6"
    Considere a teoria da produção e indique quais das afirmativas abaixo são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se a função de produção for \(f(K, L) = [K^a + L^a]^{v/a}\), com \(a \leq 1\), \(a \neq 0\) e \(v > 1\), ela apresenta retornos crescentes de escala. |
    | 1 | O coeficiente de elasticidade de substituição \(\sigma\) de uma função de produção como \(f(K, L) = [K^a + L^a]^{v/a}\), com \(a < 1\), \(a \neq 0\) e \(v > 1\), é \(\sigma = 1/(1-a)\). |
    | 2 | Funções de produção com elasticidade de substituição \(\sigma = 0\) possuem isoquantas em formato de L. |
    | 3 | Se a tecnologia for monotônica, isso significa que não é possível produzir ao menos a mesma quantidade aumentando a quantidade de um dos insumos. |
    | 4 | Funções de produção do tipo Cobb-Douglas possuem elasticidade de substituição \(\sigma = 1\). |

    ??? success "Gabarito"
        **Respostas: V V V F V**

        **Justificativa por item:**

        - **Item 0 — V:** \(f(tK, tL) = [t^a K^a + t^a L^a]^{v/a} = t^v [K^a + L^a]^{v/a} = t^v f(K,L)\). Como \(v > 1\), temos \(t^v > t\) para \(t > 1\), logo rendimentos crescentes.
        - **Item 1 — V:** Trata-se de uma CES com \(\rho = a\). A elasticidade de substituição é \(\sigma = 1/(1-\rho) = 1/(1-a)\). O parâmetro \(v\) (rendimentos de escala) não afeta \(\sigma\).
        - **Item 2 — V:** \(\sigma = 0\) corresponde ao caso Leontief (\(\rho \to -\infty\)), cujas isoquantas têm formato de L (ângulos retos).
        - **Item 3 — F:** Monotonia (livre descarte) significa exatamente o oposto: se é possível produzir \(q\) com \((K, L)\), então é possível produzir *ao menos* \(q\) com \((K', L')\) onde \(K' \geq K\) e \(L' \geq L\). Mais insumo nunca reduz o produto máximo possível.
        - **Item 4 — V:** Conforme demonstrado na Seção 10.4, a Cobb-Douglas possui \(\sigma = 1\), independentemente dos expoentes \(\alpha\) e \(\beta\).

??? question "ANPEC 2015 — Questão 7"
    Com relação à Teoria da Produção, indique quais das afirmativas abaixo são verdadeiras:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se o produto médio do fator variável é crescente, o seu produto marginal é maior do que o seu produto médio. |
    | 1 | A produtividade da mão de obra pode aumentar se houver progresso técnico, mesmo que o processo produtivo apresente rendimentos marginais decrescentes. |
    | 2 | Quando o processo produtivo apresenta retornos constantes de escala, se a produção aumentar proporcionalmente, o espaço entre as isoquantas aumenta progressivamente. |
    | 3 | Uma isoquanta nunca pode apresentar uma inclinação ascendente, se todos os insumos apresentam produtividades marginais positivas. |
    | 4 | As isoquantas são convexas se a taxa marginal de substituição técnica for decrescente. |

    ??? success "Gabarito"
        **Respostas: V V F V V**

        **Justificativa por item:**

        - **Item 0 — V:** Se \(\mathrm{PMe}_L\) é crescente, então \(\frac{d}{dL}\left(\frac{q}{L}\right) > 0\), o que requer \(\mathrm{PMg}_L > \mathrm{PMe}_L\). Essa é a relação padrão entre marginal e médio (Seção 10.1).
        - **Item 1 — V:** O progresso técnico desloca toda a função de produção para cima (aumento de \(A(t)\)), elevando a produtividade mesmo que os rendimentos marginais do trabalho sejam decrescentes para cada nível de \(A\).
        - **Item 2 — F:** Com retornos constantes de escala (CRS), dobrar os insumos dobra o produto. As isoquantas para \(q = 1, 2, 3, \ldots\) ficam **igualmente espaçadas** ao longo de raios partindo da origem, não progressivamente mais distantes.
        - **Item 3 — V:** Inclinação ascendente significaria \(dK/dL > 0\) ao longo da isoquanta, ou seja, seria necessário aumentar ambos os insumos para manter o produto constante — o que contradiz a hipótese de produtividades marginais positivas.
        - **Item 4 — V:** TMST decrescente ao longo da isoquanta (em valor absoluto) é a condição que garante convexidade das isoquantas em relação à origem.

??? question "ANPEC 2016 — Questão 5"
    Em relação à teoria da produção, é correto afirmar que:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A elasticidade de substituição para uma função de produção \(Q = AL^a K^b\) é \(a/b\). |
    | 1 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), apresenta no limite uma taxa marginal de substituição igual a \(-K/L\), quando \(p\) tende a zero. |
    | 2 | Quando a função de produção da empresa consegue produzir mais do que antes, com a quantidade de insumos na mesma proporção, diz-se que ela experimentou progresso técnico neutro. |
    | 3 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), no limite tende a uma Cobb-Douglas, quando \(p\) tende a zero. |
    | 4 | Uma função de produção do tipo \(Q = (L^p + K^p)^{1/p}\), com \(p > 0\), apresenta uma elasticidade de substituição infinita, quando \(p = 1\). |

    ??? success "Gabarito"
        **Respostas: F V V V V**

        **Justificativa por item:**

        - **Item 0 — F:** A elasticidade de substituição da Cobb-Douglas é sempre \(\sigma = 1\), independentemente dos valores de \(a\) e \(b\) (Seção 10.4). A razão \(a/b\) aparece na TMST, não em \(\sigma\).
        - **Item 1 — V:** Para a CES com \(\delta = 0{,}5\), a TMST é \((K/L)^{1-p}\). Quando \(p \to 0\), a TMST tende a \(K/L\), e a inclinação da isoquanta (com sinal negativo) é \(-K/L\).
        - **Item 2 — V:** Essa é a definição de progresso técnico neutro de Hicks: mais produto com os mesmos insumos, sem alterar a TMST para uma dada razão \(K/L\) (Seção 10.6).
        - **Item 3 — V:** É um resultado clássico: quando \(\rho = p \to 0\), a CES converge para a Cobb-Douglas (com pesos iguais, neste caso \(Q = K^{0,5}L^{0,5}\)).
        - **Item 4 — V:** Com \(p = 1\), temos \(Q = L + K\) (função linear), cuja elasticidade de substituição é \(\sigma = \infty\) — insumos são substitutos perfeitos.

??? question "ANPEC 2017 — Questão 6"
    Com relação à Teoria da Produção no curto prazo, indique quais entre as afirmações abaixo são verdadeiras:

    | Item | Afirmação |
    |------|-----------|
    | 0 | O produto marginal é zero quando o volume produzido é máximo. |
    | 1 | O produto médio é decrescente quando o produto marginal é maior do que o produto médio. |
    | 2 | O produto marginal deve ser igual ao produto médio quando este último é máximo. |
    | 3 | A lei dos rendimentos marginais decrescentes resulta da queda na qualidade de unidades adicionais do insumo variável. |
    | 4 | Avanços tecnológicos anulam a operação da lei dos rendimentos marginais decrescentes. |

    ??? success "Gabarito"
        **Respostas: V F V F F**

        **Justificativa por item:**

        - **Item 0 — V:** No curto prazo, o produto total \(\mathrm{TP}(L)\) atinge seu máximo quando \(\mathrm{PMg}_L = \frac{\partial \mathrm{TP}}{\partial L} = 0\).
        - **Item 1 — F:** É o contrário. Quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é *crescente*, não decrescente. O marginal "puxa" a média para cima quando está acima dela.
        - **Item 2 — V:** A condição de primeira ordem para o máximo do produto médio é \(\frac{d(\mathrm{PMe}_L)}{dL} = 0\), que implica \(\mathrm{PMg}_L = \mathrm{PMe}_L\).
        - **Item 3 — F:** A lei dos rendimentos marginais decrescentes não resulta de queda na qualidade dos insumos (que são considerados homogêneos). Resulta da proporção desfavorável entre o fator variável e o fator fixo: cada unidade adicional do insumo variável dispõe de menos fator fixo para trabalhar.
        - **Item 4 — F:** Avanços tecnológicos deslocam a função de produção para cima (aumentam \(A\)), mas não eliminam a concavidade no curto prazo. Para qualquer nível de tecnologia, a adição contínua de um fator variável a um fator fixo eventualmente apresentará rendimentos marginais decrescentes.

??? question "ANPEC 2020 — Questão 4"
    Com relação ao comportamento do produtor, indique quais dos itens a seguir são verdadeiros e quais são falsos:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Em uma função de produção do tipo \(Q = Af(K, L)\), o parâmetro "A" representa o nível de produtividade total dos fatores. |
    | 1 | Uma empresa emprega 100 trabalhadores e 50 unidades de capital. O preço do trabalho é \$15/hora e o do capital é \$30/hora. O produto marginal do trabalho é 60 e o produto marginal do capital é 90. A empresa está minimizando seus custos. |
    | 2 | Se a taxa marginal de substituição técnica de uma empresa não varia ao longo da isoquanta, sendo sempre igual a \(-1\), os insumos são substitutos perfeitos. |
    | 3 | Custos fixos como proporção importante dos custos totais é uma fonte de retornos crescentes de escala. |
    | 4 | A presença de "aprender fazendo" (*learning by doing*) de forma significativa no processo produtivo de uma empresa é uma fonte de retornos crescentes de escala. |

    ??? success "Gabarito"
        **Respostas: V F V V V**

        **Justificativa por item:**

        - **Item 0 — V:** Na formulação \(Q = Af(K,L)\), o parâmetro \(A\) é o nível de PTF (produtividade total dos fatores), conforme definido na Seção 10.6.
        - **Item 1 — F:** Para minimizar custos, a firma deve igualar a TMST à razão de preços: \(\frac{\mathrm{PMg}_L}{\mathrm{PMg}_K} = \frac{w}{v}\). Aqui, \(\frac{60}{90} = 0{,}667\) e \(\frac{15}{30} = 0{,}5\). Como \(0{,}667 \neq 0{,}5\), a firma **não** está minimizando custos — deveria usar relativamente mais trabalho.
        - **Item 2 — V:** TMST constante e igual a \(-1\) significa isoquantas lineares com inclinação \(-1\), ou seja, \(q = aK + aL\) — os insumos são substitutos perfeitos (trocáveis na proporção 1:1).
        - **Item 3 — V:** Custos fixos elevados significam que o custo médio cai fortemente com a escala (diluição dos fixos), o que é uma manifestação de rendimentos crescentes de escala.
        - **Item 4 — V:** *Learning by doing* implica que a produtividade aumenta com a experiência acumulada (produção acumulada), gerando efetivamente rendimentos crescentes de escala dinâmicos.

??? question "ANPEC 2024 — Questão 3"
    Com relação à teoria da produção, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Seja \(f(z_1,\ldots,z_m) = \gamma(\delta_1 z_1^{-\rho} + \cdots + \delta_m z_m^{-\rho})^{-\nu/\rho}\) uma função de produção CES, em que \(\gamma, \nu, \delta_1,\ldots,\delta_m > 0\), \(\sum_{i=1}^{m} \delta_i = 1\) e \(\rho \geq -1\). Então o limite da CES quando a elasticidade de substituição diverge para \(+\infty\) é uma função de produção Leontief, independentemente do grau de homogeneidade de \(f\). |
    | 1 | Seja \(Q(t) = \gamma(t)K(t)^{\alpha}L(t)^{1-\alpha}\), com \(0 < \alpha < 1\), uma função de produção Cobb-Douglas que varia continuamente no tempo. Suponha que as elasticidades-produto do capital e do trabalho são, respectivamente, 0,5 e 0,5. Se o produto cresce 2% ao ano, o capital cresce 1,8% ao ano e o trabalho cresce 1% ao ano, então o resíduo de Solow é de 0,6% ao ano. |
    | 2 | Seja \(Q = \min\{K/2, L\}\) uma função de produção Leontief. Suponha que \(L\) está fixo e defina \(q = Q/L\) e \(k = K/L\). Defina \(\varphi(k) = \min\{k/2, 1\}\). Se \(k \in [0, 2)\), então a produção é tecnologicamente ineficiente. |
    | 3 | Considere \(f(K,L) = (K-L)^2\) se \(K \leq L\), e \(f(K,L) = (K-L)^3\) se \(K > L\). Então, ao longo de linhas retas que partem da origem, a taxa técnica de substituição é constante, mas a função não é homotética. |
    | 4 | Uma firma produz de acordo com dois processos de Leontief: \(\min\{K/3, L/2\}\) e \(\min\{K, L/3\}\). Suponha que \(K = 5\) e \(L = 8\). Se o trabalhador adicional custa 70 e o preço da unidade do produto é 210, então não vale a pena contratar o trabalhador adicional. |

    ??? success "Gabarito"
        **Respostas: F V V V V**

        **Justificativa por item:**

        - **Item 0 — F:** Quando \(\sigma \to +\infty\) (ou seja, \(\rho \to 1\) na parametrização com \(\sigma = 1/(1+\rho)\), ou equivalentemente \(\rho \to 1\) com \(\sigma = 1/(1-\rho)\) dependendo da convenção de sinal), a CES converge para a função *linear* (substitutos perfeitos), não para a Leontief. A Leontief é o limite quando \(\sigma \to 0\).
        - **Item 1 — V:** Resíduo de Solow: \(\dot{\gamma}/\gamma = \dot{Q}/Q - \alpha \dot{K}/K - (1-\alpha)\dot{L}/L = 0{,}02 - 0{,}5 \times 0{,}018 - 0{,}5 \times 0{,}01 = 0{,}02 - 0{,}009 - 0{,}005 = 0{,}006 = 0{,}6\%\).
        - **Item 2 — V:** Se \(k < 2\), temos \(k/2 < 1\), logo \(q = \varphi(k) = k/2 < 1\). Mas com o mesmo \(L\), a firma poderia atingir \(q = 1\) se tivesse \(k \geq 2\). Como \(k/2 < 1 = \min\{k'/2, 1\}\) para \(k' \geq 2\), a firma está usando capital insuficiente: há excesso relativo de trabalho, e a produção está abaixo da fronteira eficiente.
        - **Item 3 — V:** Ao longo de raios da origem, \(K = cL\), e a TMST depende apenas de \(c\), não do nível de \(L\) — logo é constante ao longo de raios. Porém, a função não é homotética porque a forma funcional muda (de quadrática para cúbica) na fronteira \(K = L\), impedindo que as isoquantas sejam contrações/expansões homotéticas umas das outras.
        - **Item 4 — V:** Com \(K = 5\) e \(L = 8\), a produção ótima combina os dois processos. No processo 1: \(\min\{5/3, 8/2\} = \min\{1{,}67;\ 4\} = 1{,}67\). No processo 2: \(\min\{5, 8/3\} = \min\{5;\ 2{,}67\} = 2{,}67\). A alocação ótima dos insumos entre os processos gera produção total de aproximadamente 4,33 unidades. Um trabalhador adicional (\(L = 9\)) aumenta a produção marginalmente — o ganho adicional multiplicado pelo preço do produto (210) é inferior ao custo do trabalhador (70), logo não compensa. [Cálculo detalhado da alocação ótima entre processos requer programação linear.]
