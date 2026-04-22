# Exercícios Avaliativos — Aula 1

**Tema:** Preferências, Axiomas, Utilidade, TMS e Famílias Funcionais
**Calibre:** 1 🟢 + 3 🟡 + 2 🔴 (nesta ordem)
**Tempo-alvo:** 2h30–3h
**Formato:** Múltipla escolha pura, auto-grade (uma correta por sub-item)

> **Orientações.** Cada exercício é autocontido: leia o enunciado, responda aos sub-itens, e **só então** consulte o gabarito 5-passos ao final. Não há "todas acima" / "nenhuma". Alternativas distratoras são plausíveis — se você errou, consiga articular *por que* o distrator parecia razoável. Esse é o aprendizado.

---

## Exercício 1 🟢 — Axiomas, Lex em R² e o que cada um "segura"

**Enunciado.** Considere a preferência lexicográfica $\succeq^L$ em $X = \mathbb{R}^2_+$ vista em aula:

$$
(x_1, x_2) \succeq^L (y_1, y_2) \iff x_1 > y_1,\ \text{ou}\ (x_1 = y_1\ \text{e}\ x_2 \geq y_2).
$$

Considere também **duas variantes**:

- $\succeq^A$ — igual à $\succeq^L$, porém com uma "zona cega" de tolerância $\varepsilon = 0{,}01$ no primeiro bem: se $|x_1 - y_1| < 0{,}01$, o consumidor se declara *incomparável*.
- $\succeq^B$ — preferência representada por $u_B(x_1, x_2) = x_1 + 0{,}0001 \cdot x_2$ em $\mathbb{R}^2_+$.

Responda cada item com base nos axiomas de (1) completude, (2) transitividade, (3) continuidade, (4) monotonicidade e (5) convexidade fraca.

### (a) Quais axiomas a lexicográfica clássica $\succeq^L$ satisfaz em $\mathbb{R}^2_+$?

- (i) Apenas (1) e (2).
- (ii) (1), (2), (4) e (5), mas não (3). ← CORRETA
- (iii) (1), (2), (3) e (4), mas não (5).
- (iv) Todos os cinco.
- (v) Apenas (1), (2) e (4).

### (b) Sobre $\succeq^A$ (lex com zona cega), o axioma que **primeiro** falha é:

- (i) Completude — existem pares $(x, y)$ sem comparação. ← CORRETA
- (ii) Transitividade — a zona cega gera ciclos.
- (iii) Continuidade — pela mesma razão que a lex clássica.
- (iv) Monotonicidade — a tolerância quebra o "mais é melhor".
- (v) Convexidade — a tolerância não é convexa.

### (c) A preferência $\succeq^B$ com $u_B = x_1 + 0{,}0001\,x_2$:

- (i) Viola continuidade porque o peso de $x_2$ é quase nulo.
- (ii) Satisfaz os cinco axiomas; em particular é contínua porque $u_B$ é contínua. ← CORRETA
- (iii) Viola monotonicidade porque $x_2$ tem peso desprezível.
- (iv) É ordinalmente equivalente a $\succeq^L$.
- (v) Viola convexidade porque é linear.

### (d) "A lexicográfica é o contraexemplo canônico de $\succ$ sem representação por $u: X \to \mathbb{R}$." A afirmação é:

- (i) Falsa — toda preferência completa e transitiva tem representação numérica.
- (ii) Verdadeira, e a razão é um argumento de **cardinalidade** (Debreu 1954): se existisse $u$ representando a lex, construir-se-ia uma injeção de $[0,1]$ em $\mathbb{Q}$, impossível (ver passo 2 do gabarito). ← CORRETA
- (iii) Verdadeira, porque $\succeq^L$ viola transitividade.
- (iv) Falsa — $u_B$ do item (c) representa $\succeq^L$.
- (v) Verdadeira, mas a razão é convexidade e não continuidade.

### Gabarito 5-passos

**1. Ponto-chave.** Os axiomas não são intercambiáveis: cada um segura um resultado distinto. Completude e transitividade dão *estrutura de ordem*. Continuidade dá *representabilidade por função contínua* (Debreu). Monotonicidade e convexidade dão *forma econômica* e *TMS decrescente*. A lex clássica é o contraexemplo pedagógico porque isola a falha em continuidade — tudo o mais funciona.

**2. Derivação (item d).** A representabilidade da lex clássica falha por um argumento de cardinalidade (Debreu, 1954). Se existisse $u: \mathbb{R}^2_+ \to \mathbb{R}$ representando $\succeq^L$, então para cada $x_1 \in [0,1]$ o intervalo aberto $I(x_1) = (u(x_1, 0), u(x_1, 1)) \subset \mathbb{R}$ seria não-vazio (porque $(x_1, 0) \prec^L (x_1, 1)$). Pela ordem lex em $x_1$, esses intervalos são **dois-a-dois disjuntos**. Escolha um racional em cada: definiria uma injeção $[0,1] \hookrightarrow \mathbb{Q}$. Cardinalidades incompatíveis — $|\mathbb{R}| > |\mathbb{Q}|$. Contradição. Logo $u$ não existe. Note que o argumento é **mais forte** que "viola continuidade": a lex não admite *nenhuma* representação numérica, contínua ou não.

**3. Armadilha.** A mais comum está no item (a): aluno descarta convexidade da lex porque "a CI é estranha". Mas a lex é convexa fraca: se $(x_1, x_2) \succeq^L (y_1, y_2)$ e $\lambda \in [0,1]$, então $\lambda x + (1-\lambda) y$ tem primeiro componente $\geq y_1$ — a mistura fica na ordem. Convexidade **estrita** é que falha (faz fronteira), mas o axioma (5) é tipicamente enunciado na forma fraca (ver slides). A segunda armadilha, no item (d): distrator (iii) explora a memória de que "todo contraexemplo usa transitividade" — falso; a lex clássica é transitiva (prova direta por casos, feita em aula).

**4. Extensão (Aulas 2/3).** Continuidade é pré-requisito silencioso para UMP bem-comportado (Aula 2): sem ela, o supremo $\sup_{x \in B(p,m)} u(x)$ pode não ser atingido — a solução some no limite. Em quase toda a microeconomia aplicada, continuidade é *assumida por construção* da função objetivo. O que a lex ensina é que essa hipótese tem conteúdo — não é formalismo gratuito.

**5. Peer-review.** O item (d), distrator (ii), é denso — intencionalmente. A nuance "suficiência vs. necessidade" do teorema de Debreu é sutil e algum aluno pode marcar (i) achando que o enunciado está sendo pedante. O tradeoff: ao forçar a leitura cuidadosa, discrimina quem *entendeu* Debreu de quem *decorou*. Se a turma errar em massa, reciclar como discussão formativa em monitoria — não como punição. A única fragilidade real é a extensão do distrator (ii); considerei encurtá-lo mas o rigor matemático não sobrevive à poda.

---

## Exercício 2 🟡 — Cobb-Douglas: TMS, Transformações Monótonas e Parcelas de Gasto (prévia)

**Enunciado.** Seja a preferência $\succeq$ em $\mathbb{R}^2_{++}$ representada por

$$
u(x_1, x_2) = x_1^{1/3}\, x_2^{2/3}.
$$

Considere quatro candidatos a "mesma preferência" via transformação:

$$
v_1(x_1, x_2) = \tfrac{1}{3}\ln x_1 + \tfrac{2}{3}\ln x_2, \quad
v_2(x_1, x_2) = x_1\, x_2^2, \quad
v_3(x_1, x_2) = 7 + 5\, u(x_1, x_2)^{3}, \quad
v_4(x_1, x_2) = -\,u(x_1, x_2).
$$

### (a) A TMS de $u$ no ponto $(x_1, x_2) = (8, 4)$ vale:

- (i) $\dfrac{1}{6}$
- (ii) $\dfrac{1}{4}$ ← CORRETA
- (iii) $\dfrac{1}{2}$
- (iv) $1$
- (v) $2$

### (b) Quais dentre $v_1, v_2, v_3, v_4$ representam **a mesma** preferência $\succeq$?

- (i) Apenas $v_1$.
- (ii) $v_1$, $v_2$ e $v_3$ — todas são transformações estritamente crescentes no domínio $\mathbb{R}^2_{++}$. ← CORRETA
- (iii) $v_1$, $v_3$ e $v_4$.
- (iv) Todas as quatro.
- (v) Apenas $v_1$ e $v_3$.

### (c) A TMS calculada com $v_2(x_1, x_2) = x_1\, x_2^2$ no ponto $(8, 4)$:

- (i) É o dobro da TMS de $u$, porque expoentes foram dobrados.
- (ii) É igual à TMS de $u$: $1/4$. ← CORRETA
- (iii) Depende da constante multiplicativa implícita.
- (iv) Não existe porque $v_2$ não é côncava.
- (v) É $1/2$, metade da TMS de $u$.

### (d) Em Cobb-Douglas $u = x_1^{\alpha} x_2^{1-\alpha}$ com $\alpha \in (0,1)$, a **parcela do gasto** em bem 1 no ótimo (isto é, $p_1 x_1^* / m$) — anunciada nos slides — vale:

- (i) $\alpha$, e isso decorre de $\text{TMS} = p_1/p_2$ e da restrição orçamentária; não depende de preços nem de renda. ← CORRETA
- (ii) $\alpha$ somente quando $p_1 = p_2$.
- (iii) $\alpha / (1-\alpha)$ sempre.
- (iv) Depende de $p_1, p_2, m$ de forma não-separável.
- (v) $1-\alpha$, porque a elasticidade-renda é 1.

### (e) Suponha que um econometrista estime, em microdados de consumo, um exponente do tipo $\alpha = 1/3$ para "alimentação" num período, e $\alpha = 1/4$ em outro período mais próspero. Dentro do modelo CD, a leitura canônica é:

- (i) O consumidor ficou irracional entre os períodos.
- (ii) A elasticidade-preço cruzada mudou de sinal.
- (iii) A parcela de gasto em alimentação caiu — padrão Engel para bens necessários. ← CORRETA
- (iv) A TMS colapsou para zero no segundo período.
- (v) O modelo CD está rejeitado — nenhuma preferência CD gera parcelas variáveis.

### Gabarito 5-passos

**1. Ponto-chave.** A TMS é ordinal: $v = f(u)$ com $f$ estritamente crescente preserva CIs e razão $u_1/u_2$. Em Cobb-Douglas, isso se traduz numa simplificação prática — usar $v_1 = \ln u$ dispensa regra do produto. A *parcela de gasto* $\alpha$ constante é assinatura empírica: onde os dados mostram parcelas variando com renda (como POF), CD pura é rejeitada em prol de famílias mais ricas (ex.: PIGLOG, Stone-Geary).

**2. Derivação (item a).** Com $\alpha = 1/3$, $\beta = 2/3$:

$$
u_1 = \tfrac{1}{3}\, x_1^{-2/3}\, x_2^{2/3}, \qquad u_2 = \tfrac{2}{3}\, x_1^{1/3}\, x_2^{-1/3}.
$$

$$
\text{TMS} = \frac{u_1}{u_2} = \frac{1/3}{2/3}\cdot\frac{x_2^{2/3}}{x_1^{2/3}}\cdot\frac{x_1^{1/3}}{x_2^{-1/3}} \cdot \frac{1}{x_1^{1/3}} \cdot x_2^{1/3}.
$$

Simplificando de forma limpa pela fórmula fechada: $\text{TMS} = \frac{\alpha}{1-\alpha}\cdot \frac{x_2}{x_1} = \frac{1/3}{2/3}\cdot \frac{4}{8} = \frac{1}{2}\cdot\frac{1}{2} = \frac{1}{4}$. ✓

**3. Armadilha.** Duas clássicas. Primeira (item b): distrator (iii) inclui $v_4 = -u$. Aluno confunde "transformação monótona" (sentido matemático: estritamente crescente) com "monótona" no sentido coloquial (só o sinal do movimento importa) — $-u$ é estritamente *decrescente*, inverte $\succeq$ (curvas viram mínimos). Segunda (item d, distrator v): a confusão simétrica "parcela é $1-\alpha$" troca os papéis porque o aluno memoriza fórmula sem conferir índice. A fórmula é $p_i x_i^*/m = \alpha_i$ onde $\alpha_i$ é o *expoente do próprio bem* — e em $x_1^\alpha x_2^{1-\alpha}$ o expoente do bem 1 é $\alpha$.

**4. Extensão (Aula 2).** A parcela constante $\alpha$ derivará da UMP na Aula 2: CPO + restrição + a identidade $\text{TMS} = p_1/p_2$ entregam $p_1 x_1^*/(p_1 x_1^* + p_2 x_2^*) = \alpha$. Esse é o resultado-âncora que torna CD irresistível em empírica — parcela estimável por OLS da parcela observada contra constante. Quando *parcelas empíricas variam com renda*, o modelo correto é Stone-Geary ou AIDS, não CD (Aula 3, sistemas de demanda).

**5. Peer-review.** O item (e) flerta com economia empírica antes de o aluno ter visto Slutsky formalmente. A formulação "econometrista estima $\alpha$" é informal de propósito — a ideia é que o aluno raciocine por Engel (já visto no Box Brasil) sem precisar da maquinaria de estimação estrutural. Risco residual: aluno matematicamente forte mas empiricamente cru pode marcar (v) achando que "parcelas variáveis" contradiz CD estrito, sem perceber que o enunciado descreve o mesmo $\alpha$ mudando entre *períodos*, não *dentro* de um período (o que seria inconsistente com CD). O enunciado é claro, mas a ambiguidade é real; eu mantenho porque a leitura correta é parte da habilidade avaliada.

---

## Exercício 3 🟡 — Quasilinear: TMS, Curva de Engel e Excedente

**Enunciado.** Seja a preferência em $\mathbb{R}^2_+$ representada por

$$
u(x_1, x_2) = 2\sqrt{x_1} + x_2.
$$

Aqui $x_2$ é o "numerário" — mede poder de compra sobre os demais bens da economia. Suponha preços $p_1 = 1$ e $p_2 = 1$ e renda $m$.

### (a) A TMS de $u$ como função do ponto é:

- (i) $\dfrac{1}{\sqrt{x_1}}$ ← CORRETA
- (ii) $\dfrac{1}{2\sqrt{x_1}}$
- (iii) $\dfrac{x_2}{\sqrt{x_1}}$
- (iv) $\dfrac{2 x_2}{x_1}$
- (v) Não definida porque $u$ não é côncava em $x_1$.

### (b) No ótimo interior (renda suficiente para $x_2 > 0$), a demanda Marshalliana pelo bem 1 é:

- (i) $x_1^* = m$ (toda a renda no bem 1).
- (ii) $x_1^* = 1$, independente de $m$ (enquanto $m \geq 1$). ← CORRETA
- (iii) $x_1^* = m/2$.
- (iv) $x_1^* = \sqrt{m}$.
- (v) $x_1^* = m^2$.

### (c) Conforme a renda $m$ varia (com preços fixos em 1), o *caminho de expansão da renda* (locus dos ótimos interiores em $(x_1, x_2)$) é:

- (i) Um raio a partir da origem — preferência é homotética.
- (ii) Uma reta vertical em $x_1 = 1$ — todo o aumento de renda vira $x_2$. ← CORRETA
- (iii) Uma parábola.
- (iv) Uma reta horizontal em $x_2 = 1$.
- (v) Coincide com a curva de indiferença $u = \bar{u}$.

### (d) O **excedente do consumidor** ao preço $p_1 = 1$ (assumindo $p_2 = 1$ e renda suficiente para solução interior) vale:

- (i) $0$ — no ótimo, consumidor está indiferente entre comprar e não comprar.
- (ii) $1$. ← CORRETA
- (iii) $2$.
- (iv) $m - 1$.
- (v) Depende de $m$ de forma não-trivial.

### (e) Uma propriedade crucial deste exercício **não** sobrevive se a renda $m$ é tão baixa que a solução vira de canto (com $x_2 = 0$). Qual?

- (i) A existência de $u$ — deixa de existir.
- (ii) A continuidade de $u$.
- (iii) O efeito-renda zero no bem 1 — nessa faixa, aumentos de $m$ passam a ser gastos em $x_1$, reintroduzindo efeito-renda. ← CORRETA
- (iv) A monotonicidade — $x_2 = 0$ viola o axioma.
- (v) A representabilidade — sem interior, preferência não é representável.

### Gabarito 5-passos

**1. Ponto-chave.** Quasilinear é a única família onde excedente do consumidor = variação equivalente = variação compensatória — as três medidas de bem-estar coincidem porque o efeito-renda no bem "interessante" é zero. Esse efeito-renda zero tem condição: a solução tem que ser interior em $x_2$. Em cima desse detalhe vive toda a economia pública que usa "área sob demanda".

**2. Derivação (itens a-d).** TMS: $u_1 = 1/\sqrt{x_1}$, $u_2 = 1$, logo $\text{TMS} = 1/\sqrt{x_1}$. No ótimo interior, TMS $= p_1/p_2 = 1$, donde $1/\sqrt{x_1^*} = 1 \Rightarrow x_1^* = 1$. Substituindo na restrição $p_1 x_1^* + p_2 x_2^* = m$: $x_2^* = m - 1$ (interior exige $m \geq 1$). Caminho de expansão: $\{(1, m-1) : m \geq 1\}$ — reta vertical em $x_1 = 1$. Excedente: ao preço $p_1 = 1$, demanda Marshalliana é $x_1^d(p_1) = 1/p_1^2$ (de $1/\sqrt{x_1} = p_1$). Área sob a demanda de $p_1 = 1$ até $p_1 = \infty$: $\int_1^{\infty} 1/p_1^2\, dp_1 = 1$. Como efeito-renda no bem 1 é zero, esse valor é variação equivalente exata — não aproximação.

**3. Armadilha.** O item (e) é o coração didático. A propriedade "efeito-renda zero" é frequentemente enunciada no livro-texto *sem a ressalva de interioridade*. Aluno memoriza "quasilinear = efeito-renda zero no bem 1" e aplica em faixas de renda baixas. Mas quando $m < 1$, o consumidor gasta *toda* a renda em bem 1 (solução de canto $x_2 = 0$), e variações de $m$ aí aumentam $x_1$ — efeito-renda positivo. É a ressalva silenciosa do slide 52 dos slides da aula.

**4. Extensão (Aulas 2/3).** Na Aula 2, formalizamos UMP e veremos que a existência de solução interior *importa*: Kuhn-Tucker (solução de canto) muda os resultados. Na Aula 3, Slutsky revelará que excedente do consumidor é exato em QL e aproximado em geral — Willig (1976, *AER*) delimita quando a aproximação é boa o suficiente para economia aplicada.

**5. Peer-review.** O item (d), distrator (iv) "$m-1$", captura aluno que confunde *excedente* com *consumo de numerário $x_2^*$*. Os dois números batem por coincidência quando $m = 2$; preferi preços $p_1 = p_2 = 1$ exatamente para *não* fazer excedente coincidir com renda de forma estrutural. Uma alternativa seria usar $p_1 = 2$ para separar definitivamente, mas isso carregava aritmética e a discriminação pedagógica cai em "quem soube integrar". A versão atual testa o conceito; a aritmética fica amigável.

---

## Exercício 4 🟡 — Leontief Expandido e CES com $\rho$ Específico

**Enunciado.** Um consumidor ao planejar uma viagem tem preferências sobre (1) passagem aérea $x_1$ e (2) diárias de hotel $x_2$, em número de *pacotes* possíveis.

**Cenário A (rígido):** Todo pacote exige exatamente 2 diárias por passagem; sem um dos dois, utilidade zero. Preferência representada por $u_A(x_1, x_2) = \min\{2 x_1, x_2\}$.

**Cenário B (CES, $\rho = 1/2$, $\alpha = 1/2$):** O consumidor aceita *alguma* substituição — dormir no sofá de amigos substitui hotel, pegar ônibus substitui avião. Forma canônica CES:

$$
u_B(x_1, x_2) = \left(\alpha\, x_1^\rho + (1-\alpha)\, x_2^\rho\right)^{1/\rho} = \left(\tfrac{1}{2}\, x_1^{1/2} + \tfrac{1}{2}\, x_2^{1/2}\right)^{2}.
$$

### (a) No Cenário A, a TMS em $(x_1, x_2) = (3, 4)$ — dentro do ramo $2 x_1 > x_2$ — vale:

- (i) $0$ ← CORRETA
- (ii) $+\infty$
- (iii) $1/2$
- (iv) $2$
- (v) Não existe (não-diferenciável).

### (b) No Cenário A, o conjunto de pontos onde $u_A$ é **não-diferenciável** é:

- (i) Vazio — $u_A$ é diferenciável em todo ponto.
- (ii) O eixo $x_1 = 0$.
- (iii) A reta $x_2 = 2 x_1$ (vértices dos "Ls"). ← CORRETA
- (iv) A diagonal $x_1 = x_2$.
- (v) Um ponto isolado: $(0, 0)$.

### (c) No Cenário B (CES com $\rho = 1/2$), a elasticidade de substituição é:

- (i) $\sigma = 0$ (Leontief).
- (ii) $\sigma = 1$ (Cobb-Douglas).
- (iii) $\sigma = 2$. ← CORRETA
- (iv) $\sigma = 1/2$.
- (v) $\sigma = \infty$ (substitutos perfeitos).

### (d) No Cenário B, a TMS em $(x_1, x_2) = (1, 4)$ vale:

- (i) $1$
- (ii) $1/2$
- (iii) $2$ ← CORRETA
- (iv) $4$
- (v) $1/4$

### (e) Entre os cenários A e B, a predição qualitativa que melhor descreve a diferença **observável** em escolhas é:

- (i) Em A, o consumidor compra proporção fixa $x_2 = 2 x_1$ a qualquer vetor de preços; em B, a proporção $x_2/x_1$ responde à razão de preços $p_1/p_2$. ← CORRETA
- (ii) Em A, o consumidor muda de bem conforme preços; em B, mantém proporção rígida.
- (iii) Ambos geram parcelas de gasto constantes.
- (iv) Em A, excedente do consumidor está bem-definido; em B, não.
- (v) Em B, a preferência é homotética; em A, não.

### Gabarito 5-passos

**1. Ponto-chave.** CES com $\rho \in (0, 1)$ ocupa o interior do espectro — nem Leontief ($\rho \to -\infty$), nem Cobb-Douglas ($\rho \to 0$), nem substitutos perfeitos ($\rho \to 1$). Em $\rho = 1/2$, $\sigma = 1/(1-\rho) = 2$: "mais substituível que CD, menos que perfeito". Esse é o regime empiricamente mais comum em dados de consumo para bens moderadamente substituíveis (ver Houthakker 1957 ou Deaton-Muellbauer).

**2. Derivação (item d).** No Cenário B, $\alpha = 1/2$ e $\rho = 1/2$. Fórmula geral da TMS em CES:

$$
\text{TMS} = \frac{\alpha}{1-\alpha}\,\left(\frac{x_2}{x_1}\right)^{1-\rho} = \frac{1/2}{1/2}\,\left(\frac{x_2}{x_1}\right)^{1/2} = \sqrt{\frac{x_2}{x_1}}.
$$

Em $(1, 4)$: $\text{TMS} = \sqrt{4/1} = 2$. ✓

**3. Armadilha.** No item (a), confundir os dois ramos é o clássico. No ramo $2x_1 > x_2$, o bem 1 está em *excesso* em relação à proporção requerida, então uma unidade adicional de bem 1 não melhora $u$ — CI é **horizontal** (paralela ao eixo $x_1$), $u_1 = 0$, TMS $= 0$. Aluno confunde "muito do bem 1" com "bem 1 é caro" e chuta $+\infty$. A pergunta operacional: no ramo onde o bem *abundante* já satura a proporção, a TMS é *zero* para ele. No item (c), distrator (iv) $\sigma = 1/2$ vem de ler $\sigma = \rho$ em vez de $\sigma = 1/(1-\rho)$ — erro de memorização bruta.

**4. Extensão (Aulas 2/3).** A fórmula da demanda Marshalliana em CES em geral (a derivar na Aula 2) é:

$$
x_i(p, m) = \frac{\alpha_i^{\sigma}\, p_i^{-\sigma}}{\sum_j \alpha_j^{\sigma}\, p_j^{1-\sigma}}\, m,
$$

que mostra explicitamente por que $\sigma$ é *o* parâmetro de elasticidade-preço no caso de Dixit-Stiglitz. Com $\sigma = 2$, elasticidade-preço da demanda é 2 em módulo, no regime simétrico. Empiricamente é um valor plausível para bens de consumo de massa.

**5. Peer-review.** O "Cenário B" é artificial — ninguém compra pacote de viagem como CES. A escolha narrativa é para o aluno ver o mesmo par $(x_1, x_2)$ em dois regimes e comparar TMS diretamente. Risco: aluno leva a história muito a sério e se perde na parte econômica. Mitigação: o enunciado diz "aceita *alguma* substituição" sem microfundar. O enunciado usa a forma canônica CES $u = (\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}$ com $\alpha = 1/2$ e $\rho = 1/2$, de modo que $1/\rho = 2$ coincide com o expoente externo — o aluno reconhece a estrutura padrão quando vê CES na Aula 2.

---

## Exercício 5 🔴 — Limites da CES e Parcelas de Gasto

**Enunciado.** Considere a família CES parametrizada em $\mathbb{R}^2_{++}$:

$$
u_\rho(x_1, x_2) = \left(\alpha\, x_1^\rho + (1-\alpha)\, x_2^\rho\right)^{1/\rho},
\qquad \alpha \in (0, 1),\ \rho \leq 1,\ \rho \neq 0.
$$

Denote por $s_1(\rho) = \dfrac{p_1 x_1^*(\rho)}{m}$ a parcela do gasto em bem 1 na solução da UMP (a ser formalizada na Aula 2 — por ora, aceite o resultado fechado para CES: $s_1(\rho) = \dfrac{\alpha^{\sigma}\, p_1^{1-\sigma}}{\alpha^{\sigma}\, p_1^{1-\sigma} + (1-\alpha)^{\sigma}\, p_2^{1-\sigma}}$, com $\sigma = 1/(1-\rho)$).

Suponha por toda a questão $\alpha = 0{,}6$, $p_1 = 2$, $p_2 = 1$, $m = 10$.

### (a) No limite $\rho \to 0$ (Cobb-Douglas), a parcela $s_1$ converge para:

- (i) $\alpha \cdot p_1 = 1{,}2$.
- (ii) $\alpha = 0{,}6$, independente de preços. ← CORRETA
- (iii) $\alpha\, p_1 / (p_1 + p_2) = 2 \cdot 0{,}6 / 3 = 0{,}4$.
- (iv) $\alpha^{1/2} \approx 0{,}775$.
- (v) Diverge — CD não tem parcela fixa.

### (b) No limite $\rho \to 1^-$ (substitutos perfeitos), a parcela $s_1$ converge para:

- (i) $\alpha = 0{,}6$.
- (ii) $0$ (consumidor gasta tudo em bem 2, mais barato). ← CORRETA
- (iii) $1$ (consumidor gasta tudo em bem 1, preferido por $\alpha$).
- (iv) $\alpha p_2 / (\alpha p_1 + (1-\alpha) p_2) = 0{,}6 / (1{,}2 + 0{,}4) = 0{,}375$.
- (v) $\alpha / (1-\alpha) = 1{,}5$.

### (c) No limite $\rho \to -\infty$ (Leontief), a parcela $s_1$ converge para:

- (i) $\alpha = 0{,}6$, por analogia com CD.
- (ii) $0$ — consumidor prefere o bem barato.
- (iii) $p_1 / (p_1 + p_2) = 2/3$, porque consome em proporção 1:1. ← CORRETA
- (iv) $1/2$ — proporção igualitária imposta pela complementaridade.
- (v) $\alpha\, p_1 / p_2 = 1{,}2$.

### (d) Qual das seguintes é **verdadeira** sobre a *monotonia* de $s_1(\rho)$ em $\rho \in (-\infty, 1)$ para os valores dados ($\alpha = 0{,}6$, $p_1 = 2$, $p_2 = 1$)?

- (i) $s_1$ é estritamente crescente em $\rho$.
- (ii) $s_1$ é estritamente decrescente em $\rho$ — parte de $2/3$ (Leontief), passa por $0{,}6$ (CD) e cai a $0$ (substitutos perfeitos). ← CORRETA
- (iii) $s_1$ é constante em $\rho$ — CES é ordinalmente idêntica.
- (iv) $s_1$ tem máximo interno em algum $\rho \in (0,1)$.
- (v) $s_1$ tem mínimo interno em $\rho = 0$.

### (e) "O *ranking* das parcelas $s_1$ nos três limites canônicos depende crucialmente de $\alpha, p_1, p_2$." Essa afirmação é:

- (i) Verdadeira — basta trocar $p_1$ por um valor menor que $p_2$ para inverter a ordem do item (d). ← CORRETA
- (ii) Falsa — ordenamento é universal: Leontief sempre dá parcela maior que CD.
- (iii) Falsa — ordenamento depende só de $\alpha$.
- (iv) Verdadeira, mas apenas se $\alpha$ ultrapassar $0{,}5$.
- (v) Verdadeira, mas apenas se as parcelas forem medidas por *quantidade* em vez de *gasto*.

### Gabarito 5-passos

**1. Ponto-chave.** As parcelas de gasto em CES são **convexamente dependentes de $\sigma$ e preços** — só em $\sigma = 1$ (CD) a parcela vira constante $\alpha$. Longe disso, a parcela varia com preços, e o sentido da variação depende se bens são *substitutos* ou *complementos* ($\sigma \gtrless 1$). Esse é o motivo empírico para CES ser o cavalo de batalha: um parâmetro captura todo o espectro de comportamento de parcela, e a direção da variação é *testável*.

**2. Derivação (item c).** Leontief ($\rho \to -\infty$, $\sigma \to 0$) impõe proporção fixa dada pelos coeficientes da min-função. Na versão $u = \min\{x_1, x_2\}$ (que é o limite simétrico do CES com $\alpha = 1/2$), a proporção é 1:1, donde $x_1^* = x_2^* = m/(p_1 + p_2) = 10/3$. Parcela em bem 1: $p_1 x_1^*/m = 2 \cdot (10/3)/10 = 2/3$. ✓

Aqui há uma sutileza: com $\alpha = 0{,}6 \neq 1/2$, o limite pontual do CES $\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}$ quando $\rho \to -\infty$ ainda é $\min\{x_1, x_2\}$ — os $\alpha$s viram irrelevantes no limite (domina o menor em valor absoluto da razão $x_1^\rho$ vs. $x_2^\rho$). Confirme substituindo $\sigma = 0$ na fórmula fechada: $s_1(0) = \alpha^0 p_1^{1-0}/(\alpha^0 p_1 + (1-\alpha)^0 p_2) = p_1/(p_1+p_2) = 2/3$, pois $\alpha^0 = (1-\alpha)^0 = 1$. ✓

**3. Armadilha.** Item (b) — "$\alpha$ alto, logo consumidor prefere bem 1, logo parcela $\to 1$" (distrator iii) — é a armadilha mais recorrente. No regime de substitutos perfeitos, o que importa é *preço por unidade de utilidade*: se $p_1 > p_2 \cdot \alpha/(1-\alpha)$, o bem 2 é mais barato por unidade de utilidade, e toda a renda vai para ele — independente de $\alpha > 1-\alpha$. Com $\alpha = 0{,}6$, $p_1 = 2$, $p_2 = 1$: preço por unidade de utilidade é $p_1/\alpha = 10/3$ para bem 1 e $p_2/(1-\alpha) = 2{,}5$ para bem 2. Bem 2 vence, $s_1 \to 0$. A distratora (iii) testa exatamente essa confusão entre "pesar" e "precificar".

**4. Extensão (Aulas 2/6).** A Aula 2 deriva a fórmula fechada da Marshalliana CES — veremos que $s_i$ tem elasticidade-preço dada por $(\sigma - 1)(s_i - 1)$, uma identidade que aparece em quase todo trabalho empírico estrutural (Feenstra, *JIE* 1994; Broda-Weinstein, *QJE* 2006). Na Aula 6 (Arrow-Debreu), CES com bens contingentes entrega utilidade esperada CRRA — a mesma tecnologia matemática em roupagem temporal/risco.

**5. Peer-review.** Há um risco de o item (c) ser percebido como "truque": o aluno que memorizou "Leontief = 1:1" sem conferir os coeficientes do min pode acertar por razão errada. Considerei usar uma versão em que $\alpha$ importasse no limite Leontief — mas isso exigiria um CES não-padrão (com pesos que não colapsam). Mantive o padrão do livro-texto porque é o que o aluno vai ver no resto da vida. A fórmula fechada dada no enunciado "estraga" um pouco a exigência de derivação — outra alternativa seria pedir derivação do $\sigma$ e deixar a parcela por conta do aluno. Optei por dar a fórmula porque a Aula 2 ainda não aconteceu; pedir UMP formal aqui seria injusto. O enunciado sinaliza explicitamente essa dependência.

---

## Exercício 6 🔴 — Teorema de Debreu em R³ e Variantes Topológicas

**Enunciado.** Estenda a preferência lexicográfica para $X = \mathbb{R}^3_+$:

$$
(x_1, x_2, x_3) \succeq^{L_3} (y_1, y_2, y_3) \iff
\begin{cases}
x_1 > y_1, \text{ ou} \\
x_1 = y_1\ \text{e}\ x_2 > y_2, \text{ ou} \\
x_1 = y_1,\ x_2 = y_2\ \text{e}\ x_3 \geq y_3.
\end{cases}
$$

Considere também **duas variantes**:

- $\succeq^C$ — em $X = \{0, 1, 2\}^3$ (domínio finito), mesma regra lex.
- $\succeq^D$ — em $X = \mathbb{R}^3_+$, preferência representada por $u_D(x_1, x_2, x_3) = x_1 + \tfrac{1}{10} x_2 + \tfrac{1}{100} x_3$.

### (a) A preferência $\succeq^{L_3}$ em $\mathbb{R}^3_+$ admite representação por $u: \mathbb{R}^3_+ \to \mathbb{R}$?

- (i) Sim — basta adaptar o argumento Debreu.
- (ii) Sim — e com $u$ contínua.
- (iii) Não — pelo mesmo argumento de cardinalidade que falha em $\mathbb{R}^2_+$ (injeção de $\mathbb{R}$ em $\mathbb{Q}$ impossível). ← CORRETA
- (iv) Depende do axioma de escolha.
- (v) Apenas se restringirmos $X$ ao simplex unitário.

### (b) Sobre $\succeq^C$ em $\{0,1,2\}^3$ (domínio finito):

- (i) Viola continuidade, como no caso $\mathbb{R}^3_+$.
- (ii) É representável por utilidade — em domínio finito, qualquer ordem total admite representação numérica. ← CORRETA
- (iii) Viola transitividade por enumeração exaustiva.
- (iv) Viola monotonicidade porque $0$ está no domínio.
- (v) Apenas admite representação se a ordem for modificada.

### (c) A preferência $\succeq^D$ (com $u_D = x_1 + 0{,}1 x_2 + 0{,}01 x_3$) vs. $\succeq^{L_3}$: qual afirmação é correta?

- (i) $\succeq^D$ é idêntica a $\succeq^{L_3}$ em todo $\mathbb{R}^3_+$.
- (ii) $\succeq^D$ coincide com $\succeq^{L_3}$ *apenas* em domínios limitados em que os pesos $0{,}1$ e $0{,}01$ sejam suficientes para ordenar — por exemplo, em $[0, 1]^3$. Fora daí, um $x_2$ ou $x_3$ grande o bastante "compensa" diferença em $x_1$, contrariando a lex. ← CORRETA
- (iii) $\succeq^D$ é descontínua como $\succeq^{L_3}$.
- (iv) $\succeq^{L_3}$ em $[0,1]^3$ é representável; em $\mathbb{R}^3_+$ não. A ordem difere globalmente.
- (v) Nenhuma preferência representada por função contínua pode aproximar a lex em nenhum subdomínio.

### (d) Suponha uma preferência $\succeq^E$ em $\mathbb{R}^2_+$ satisfazendo completude, transitividade e **continuidade**, mas *violando* monotonicidade e convexidade. O teorema de Debreu garante:

- (i) Existência de $u$ contínua representando $\succeq^E$. ← CORRETA
- (ii) Existência de $u$ contínua *e* quasicôncava.
- (iii) Inexistência de $u$ — monotonicidade é pré-requisito.
- (iv) Existência de $u$ apenas se acrescentarmos convexidade.
- (v) Inexistência — convexidade é pré-requisito.

### (e) Na variante em que o domínio é $X = \mathbb{Q}^3_+$ (racionais positivos), a preferência $\succeq^{L_3}$ restrita a $X$:

- (i) Viola continuidade, como em $\mathbb{R}^3_+$.
- (ii) Admite representação por $u: \mathbb{Q}^3_+ \to \mathbb{R}$ — o argumento de cardinalidade usado em $\mathbb{R}^3_+$ não se aplica porque $|\mathbb{Q}^3_+| = |\mathbb{Q}|$ e há injeção trivial. ← CORRETA
- (iii) Viola transitividade sobre racionais.
- (iv) É descontínua porque os racionais não são completos.
- (v) Equivale a $\succeq^D$ restrita a $\mathbb{Q}^3_+$.

### Gabarito 5-passos

**1. Ponto-chave.** Não-representabilidade da lex é *um argumento de cardinalidade*, não de continuidade. A continuidade é *suficiente* para representação (Debreu); a ausência de continuidade, por si só, não é *necessária* para não-representabilidade. O exemplo canônico é que a lex em $\mathbb{R}^n_+$ (para $n \geq 2$) não admite *nenhuma* representação numérica — contínua ou descontínua. Em domínios contáveis (finito ou enumerável), o argumento não se aplica e a lex é representável. Esse reconhecimento separa quem decorou "lex viola continuidade, logo não tem $u$" de quem entendeu a mecânica de Debreu.

**2. Derivação (item c).** $\succeq^D$ com pesos $0{,}1$ e $0{,}01$ ordena lexicograficamente quando os saltos em $x_2, x_3$ são limitados: se $x_1 > y_1$ (em inteiros $\Delta \geq 1$), então $u_D(x) - u_D(y) \geq 1 - 0{,}1 \cdot |\Delta x_2|_{\max} - 0{,}01 \cdot |\Delta x_3|_{\max}$. Em $[0,1]^3$ com $\Delta x_1 \geq 1/10$, os pesos ainda dão sinal correto. **Mas** se $x = (1, 0, 0)$ e $y = (0, 100, 0)$, em $\mathbb{R}^3_+$: $u_D(x) = 1$, $u_D(y) = 10$, logo $y \succ^D x$. Em $\succeq^{L_3}$: $x_1 = 1 > 0 = y_1$, logo $x \succ^{L_3} y$. Ordens opostas — $\succeq^D$ só aproxima a lex em domínios onde a escala do bem 2 não "explode" o peso $0{,}1$. Esse é *exatamente* o ponto: nenhuma função de utilidade contínua, com quaisquer pesos finitos, pode replicar globalmente o "$\varepsilon$ no bem 1 domina tudo no bem 2".

**3. Armadilha.** Item (d) pega aluno que memorizou "Debreu precisa de monotonicidade e convexidade". Não. Os slides são explícitos: continuidade é a hipótese-chave; monotonicidade e convexidade são *acréscimos de regularidade* (quasiconcavidade, diferenciabilidade), não pré-requisitos. Uma preferência côncava-na-origem e monótona-decrescente-em-bem-1 ainda é representável por $u$ contínua, desde que $\succeq$ seja contínua. Uma versão particularmente instrutiva — a preferência "anti-2" $u(x_1, x_2) = x_1 - x_2$ — viola monotonicidade (bem 2 é ruim) mas é Debreu-representável.

**Leitura operacional para o aluno (item e):** em $\mathbb{Q}^3_+$, continuidade da preferência (na topologia induzida) *também* falha — a mesma sequência $(1-1/n, 2, 0)$ restrita a racionais mostra. O que sobrevive é a *representabilidade* (por uma $u$ não-contínua), porque $\mathbb{Q}^3$ é enumerável. São duas propriedades distintas — continuidade (topológica) e representabilidade (cardinalidade) — e o item separa quem entendeu a hierarquia.

**4. Extensão (Aulas 4/6).** No equilíbrio geral (Aulas 4-5-6), a existência de um equilíbrio competitivo requer que as preferências sejam contínuas, convexas e monotônicas. O teorema de Debreu sustenta o passo de *representação* por $u$; a existência do equilíbrio (Arrow-Debreu 1954) usa a representação + convexidade para garantir que o mapa de melhor-resposta tenha ponto fixo (Kakutani). Os axiomas têm papéis hierárquicos: continuidade para $u$, convexidade para *comportamento* de $u$, monotonicidade para *desigualdades de preços* bem-postas. Discriminar entre eles é ferramenta central do resto do curso.

**5. Peer-review.** O item (e) — lex em $\mathbb{Q}^3_+$ — é a parte mais delicada pedagogicamente. A rigor, o argumento de Debreu usa a estrutura ordenada de $\mathbb{R}$ (conjuntos aberto/fechado, sequências convergentes), e a restrição a racionais quebra a *noção de continuidade* tanto quanto a *cardinalidade*. O enunciado foi cuidadoso em dizer "o argumento de cardinalidade não se aplica" — isso é correto, mas *não implica* que continuidade seja preservada (ela não é, de fato, porque $\mathbb{Q}^3_+$ não é completo). A afirmação da alternativa (ii) é sobre *representabilidade*, não sobre *continuidade* da representação, e é verdadeira: qualquer ordem total em um conjunto contável admite representação numérica (prova padrão via injeção em $\mathbb{Q}$). O aluno precisa separar os dois conceitos — e alguns não vão, marcando (i). Para corrigir essa fragilidade, considerei rescrever o enunciado de (e) como "admite representação por $u$ não-necessariamente-contínua" para ser explicitamente desambiguante. Decidi não fazer porque o item (b) já estabeleceu o padrão ("representável" = "existe $u$", sem qualificador), e repetir prejudica fluidez. A peça final do quebra-cabeças é exatamente entender essa hierarquia — e o exercício deliberadamente a testa.

---

**Fim dos avaliativos.** Entrega para nota dentro do prazo da plataforma. Dúvidas conceituais na monitoria ou no canal da disciplina. Boa sorte.
