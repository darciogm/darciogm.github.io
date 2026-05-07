# Exercícios Avaliativos — Aula 5

**Tema:** Equilíbrio Geral em Produção (tecnologia, PPF, Robinson Crusoe, EG com $J$ firmas, 1º/2º TBE com produção)
**Calibre:** 1 🟢 + 3 🟡 + 2 🔴 (nesta ordem)
**Tempo-alvo:** 2h30–3h
**Formato:** Múltipla escolha pura, auto-grade (uma correta por sub-item)
**Prazo:** **quarta 27/05 às 18h BRT** (calendário canônico)
**Gabarito:** libera quinta 28/05 · 00:00 BRT

> **Orientações.** Cada exercício é autocontido: leia o enunciado, responda aos sub-itens, e **só então** consulte o gabarito 5-passos ao final (libera em 28/05). Distratores são plausíveis — se errou, articule *por que* o distrator parecia razoável.

> **Pré-requisito respeitado.** Tudo aqui usa exclusivamente conceitos da Aula 5: tecnologia, PPF, Robinson Crusoe, EG com firmas, 1º/2º TBE com produção. Bens contingentes, externalidades, informação assimétrica **não aparecem** como exigência.

---

## Exercício 1 🟢 — Robinson Crusoe canônico CD-CD

**Enunciado.** Considere economia Robinson Crusoe com 1 consumidor + 1 firma + 2 bens (consumo $q$, lazer $\ell$, com restrição $L + \ell = \bar L$). Preferências $u(q, \ell) = q^{1/2}\ell^{1/2}$. Tecnologia $f(L) = \sqrt{L}$. Dotação total de tempo $\bar L = 16$. Numerário $p = 1$.

### (a) A solução do planejador (problema $\max_L u(f(L), \bar L - L)$) tem $L^*$ igual a:

- (i) $L^* = 16$ (todo o tempo trabalhando).
- (ii) $L^* = 16/3 \approx 5{,}33$. **← CORRETA**
- (iii) $L^* = 8$ (metade do tempo).
- (iv) $L^* = 0$ (lazer puro).

### (b) Em equilíbrio competitivo com $p = 1$, o salário $w^*$ é:

- (i) $w^* = 1$ (igual ao preço do bem).
- (ii) $w^* = \sqrt{3}/8 \approx 0{,}217$. **← CORRETA**
- (iii) $w^* = 16$.
- (iv) $w^* = 0$.

### (c) O lucro $\pi^*$ da firma em equilíbrio é:

- (i) $\pi^* = 0$ (lucro zero por construção).
- (ii) $\pi^* = 2\sqrt{3}/3 \approx 1{,}155$. **← CORRETA**
- (iii) $\pi^* = 4$.
- (iv) $\pi^* = q^* = 4/\sqrt{3}$.

### (d) A renda total do consumidor (incluindo salário e lucro) é:

- (i) $m^* = w^*\, \bar L = 2\sqrt{3} \approx 3{,}46$ — só salário.
- (ii) $m^* = w^*\, \bar L + \pi^* = 8\sqrt{3}/3 \approx 4{,}62$. **← CORRETA**
- (iii) $m^* = p\cdot q^* = 4/\sqrt{3}$ — só consumo (errado dimensionalmente).
- (iv) $m^* = \bar L = 16$.

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Robinson Crusoe canônico: 1 consumidor + 1 firma. Mercado descentralizado replica solução do planejador. EC tem $\text{TMS} = \text{TMT} = w/p$. Verificação numérica de toda a maquinaria: planejador, max-lucro, UMP, fechamento de mercados.

**2. Derivação.** Planejador: $\max_L L^{1/4}(16 - L)^{1/2}$. Derivar e igualar a zero: $\frac{1}{4 L^{3/4}}(16-L)^{1/2} - \frac{L^{1/4}}{2(16-L)^{1/2}} = 0$. Multiplicar por $4 L^{3/4}(16-L)^{1/2}$: $(16-L) - 2 L = 0 \implies L^* = 16/3$. ✓ (a). Da firma: $f'(L^*) = w/p \Rightarrow w^* = 1/(2\sqrt{16/3}) = 1/(2\cdot 4/\sqrt{3}) = \sqrt{3}/8$. ✓ (b). Lucro: $\pi^* = p\, q^* - w^*\, L^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3} = 2\sqrt{3}/3$. ✓ (c). Renda: $m^* = w^*\, \bar L + \pi^* = (\sqrt{3}/8)\cdot 16 + 2\sqrt{3}/3 = 2\sqrt{3} + 2\sqrt{3}/3 = 8\sqrt{3}/3$. ✓ (d).

**3. Armadilha.** (a)(i) confunde planejador com "maximize produção". (b)(i) confunde Robinson com Aula 4 (mercado de consumidores) — aqui $w \neq p$. (c)(i) "lucro zero" só vale com retornos constantes — aqui $f(L) = \sqrt{L}$ tem retornos decrescentes. (d)(i) ignora o lucro como dividendo do dono.

**4. Extensão.** Verificação $\text{TMS} = \text{TMT} = w/p$: $\text{TMS} = q^*/\ell^* = (4/\sqrt{3})/(32/3) = \sqrt{3}/8$. $\text{TMT} = f'(L^*) = \sqrt{3}/8$. $w^*/p^* = \sqrt{3}/8$. Os três coincidem. Walras com produção: mercado de trabalho fecha em $L^* = \bar L - \ell^* = 16/3$ ✓; mercado de bem fecha em $q^* = f(L^*) = \sqrt{16/3}$ ✓.

**5. Peer-review.** Calibre 🟢 — exercício de calibração do termômetro. Toda a maquinaria da Aula 5 num caso canônico. Aluno que erra (a) tem dificuldade com derivada de função composta; quem erra (c) confunde estrutura de retornos.

---

## Exercício 2 🟡 — PPF e TMT em economia $2 \times 2$

**Enunciado.** Economia com fator único trabalho, dotação total $\bar L = 100$. Dois setores produtivos: $f_1(L_1) = L_1^{1/2}$ (raiz, retornos decrescentes) e $f_2(L_2) = L_2$ (linear, retornos constantes). Restrição $L_1 + L_2 = \bar L$.

### (a) A equação da PPF $(q_1, q_2)$ é:

- (i) $q_1^2 + q_2^2 = 100$ (círculo).
- (ii) $q_1 + q_2 = 100$ (linha).
- (iii) $q_1^2 + q_2 = 100$. **← CORRETA**
- (iv) $q_1 + q_2^2 = 100$.

### (b) A TMT entre o bem 1 e o bem 2 (em valor absoluto), em ponto interior $(q_1, q_2)$, é:

- (i) $\text{TMT}_{12} = q_2/q_1$.
- (ii) $\text{TMT}_{12} = 1/(2\sqrt{L_2}) = 1$ (constante, pois setor 2 é linear).
- (iii) $\text{TMT}_{12} = 2 q_1$. **← CORRETA**
- (iv) $\text{TMT}_{12} = \sqrt{L_1}$.

### (c) Em $q_1 = 4$ na PPF, qual o valor de $q_2$ e da TMT?

- (i) $q_2 = 84$, $\text{TMT} = 8$. **← CORRETA**
- (ii) $q_2 = 96$, $\text{TMT} = 4$.
- (iii) $q_2 = 6$, $\text{TMT} = 16$.
- (iv) $q_2 = 100$, $\text{TMT} = 0$.

### (d) Suponha que preços de mercado sejam $p_1 = 2$, $p_2 = 1$. Em equilíbrio competitivo (alocação eficiente), a quantidade $q_1$ produzida é:

- (i) $q_1 = 0$ (firma especializa em bem 2).
- (ii) $q_1 = 1$ (de $\text{TMT} = 2 q_1 = p_1/p_2 = 2$). **← CORRETA**
- (iii) $q_1 = 2$.
- (iv) $q_1 = 4$.

### (e) A intuição econômica de "PPF côncava em $q_1$ e linear em $q_2$" (forma da função encontrada em (a)) é:

- (i) Bem 1 tem retornos crescentes; bem 2 tem retornos decrescentes (oposto).
- (ii) Bem 1 tem retornos decrescentes em $L$ ($f_1$ raiz quadrada); bem 2 tem retornos constantes ($f_2$ linear). Convexidade da PPF reflete heterogeneidade tecnológica. **← CORRETA**
- (iii) Os dois bens têm retornos iguais; PPF é côncava por convenção.
- (iv) PPF é côncava sempre, independente de tecnologia.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** PPF é construída a partir das funções de produção e da restrição agregada de fator. TMT = inclinação da PPF = razão de produtividades marginais. Em EC, TMT = razão de preços.

**2. Derivação.** Substituir $L_1 = q_1^2$ (de $q_1 = \sqrt{L_1}$) e $L_2 = q_2$ (de $q_2 = L_2$): $q_1^2 + q_2 = \bar L = 100$. ✓ (a). $\text{TMT} = -dq_2/dq_1 = -d(100 - q_1^2)/dq_1 = 2 q_1$. ✓ (b). Em $q_1 = 4$: $q_2 = 100 - 16 = 84$, $\text{TMT} = 8$. ✓ (c). Em EC com $p_1/p_2 = 2$: $\text{TMT} = 2 q_1 = 2 \implies q_1 = 1$. ✓ (d). Concavidade vem de $f_1$ raiz; linearidade vem de $f_2$ linear. ✓ (e).

**3. Armadilha.** (a)(i) é a PPF do exemplo da aula ($f_1 = f_2 = \sqrt{\cdot}$) — quem marca colou da aula. (a)(ii) é PPF linear pura. (b)(i) confunde TMT com razão de quantidades (vale só em $f_1 = f_2 = \sqrt{\cdot}$). (b)(ii) ignora o setor de raiz. (c)(ii) usa $q_1^2 + q_2^2 = 100$ por engano. (d)(iv) é o $q_1$ se $p_1/p_2 = 8$ (caso (c) — fácil confundir). (e)(i) inverte direção; (e)(iv) é falso.

**4. Extensão.** A PPF muda de forma se a restrição mudar — em economias com **dois fatores** (trabalho + capital), PPF emerge da otimização de Hotelling-Lemma; é côncava sob hipóteses padrão. **Conexão Aula 4:** a PPF é o análogo "lado da produção" da caixa de Edgeworth. **Aula 6:** PPF + utilidade esperada em estados da natureza.

**5. Peer-review.** Calibre 🟡. Exercício técnico — exige construção e derivação cuidadosa. Quem erra (a) confunde PPF com caso simétrico; quem erra (b) ou (c) tem problema com derivada implícita ou substituição. Aluno que marca (e)(iv) ainda não internalizou que **a forma da PPF é informativa** sobre a tecnologia.

---

## Exercício 3 🟡 — EC em Robinson Crusoe com preferências assimétricas

**Enunciado.** Robinson Crusoe com $u(q, \ell) = q^{2/3}\ell^{1/3}$ (consumidor "viciado em consumo", peso $2/3$ em consumo) e $f(L) = L^{1/2}$. Dotação total de tempo $\bar L = 9$. Numerário $p = 1$.

> **Nota algébrica importante.** Como $q = L^{1/2}$, ao substituir na utilidade temos $u(L) = (L^{1/2})^{2/3}(\bar L - L)^{1/3} = L^{1/3}(9 - L)^{1/3}$ — função **simétrica** em $L$ e $9 - L$. Logo o ótimo cai em $L^* = \bar L/2 = 4{,}5$. A composição "mata" o peso assimétrico da utilidade. Vale fazer a álgebra com lápis em mão.

### (a) Resolvendo o problema do planejador, $L^*$ é:

- (i) $L^* = 9$ (especialização total em produção).
- (ii) $L^* = 9/2 = 4{,}5$. **← CORRETA**
- (iii) $L^* = 6$.
- (iv) $L^* = 3$.

### (b) Logo, $\ell^* = $ ?

- (i) $\ell^* = 0$.
- (ii) $\ell^* = 4{,}5$. **← CORRETA**
- (iii) $\ell^* = 6$.
- (iv) $\ell^* = 9$.

### (c) E $q^* = f(L^*) = \sqrt{L^*}$ vale:

- (i) $q^* = 3/\sqrt{2} = 3\sqrt{2}/2 \approx 2{,}121$. **← CORRETA**
- (ii) $q^* = 3$.
- (iii) $q^* = \sqrt{9/2}\cdot 2 = 2\sqrt{18}/2$ (errado dimensionalmente).
- (iv) $q^* = 0$.

### (d) Em equilíbrio competitivo com $p = 1$, o salário $w^*$ é:

- (i) $w^* = 1$.
- (ii) $w^* = f'(L^*) = 1/(2\sqrt{9/2}) = \sqrt{2}/6 \approx 0{,}236$. **← CORRETA**
- (iii) $w^* = 9$.
- (iv) $w^* = 0$.

### (e) A verificação $\text{TMS} = \text{TMT} = w/p$ em equilíbrio mostra:

- (i) Os três coincidem em $\sqrt{2}/6 \approx 0{,}236$. **← CORRETA**
- (ii) $\text{TMS} \neq \text{TMT}$ (exemplo "patológico" do peso assimétrico).
- (iii) Não há tangência possível.
- (iv) Os três coincidem em $1$.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** Robinson Crusoe com peso assimétrico no consumo. **Lição-chave:** a composição $q = f(L) = L^{1/2}$ "mata" o peso $2/3$ da utilidade na fórmula reduzida. Função objetivo final $L^{1/3}(9-L)^{1/3}$ é **simétrica**, ótimo em $L^* = 9/2$. Quem tenta intuir "trabalha mais porque ama consumir" sem fazer a álgebra erra.

**2. Derivação.** Substituir $q = L^{1/2}$, $\ell = 9 - L$: $u(L) = L^{1/3}(9-L)^{1/3}$. CPO:

$$
\frac{1}{3 L^{2/3}}(9-L)^{1/3} - \frac{L^{1/3}}{3(9-L)^{2/3}} = 0.
$$

Multiplicar por $3 L^{2/3}(9-L)^{2/3}$: $(9-L) - L = 0 \implies L^* = 9/2 = 4{,}5$. ✓ (a). $\ell^* = 9/2 = 4{,}5$. ✓ (b). $q^* = \sqrt{9/2} = 3/\sqrt{2} = 3\sqrt{2}/2 \approx 2{,}121$. ✓ (c). $w^* = f'(L^*) = 1/(2\sqrt{9/2}) = 1/(2\cdot 3/\sqrt{2}) = \sqrt{2}/6$. ✓ (d). Verificação: $\text{TMS}_{\ell, q} = (\alpha_\ell/\alpha_q)(q/\ell) = (1/3)/(2/3)\cdot (q/\ell) = (1/2)(q/\ell) = (1/2)(3/\sqrt{2})/(9/2) = (1/2)(2/(3\sqrt{2})) = 1/(3\sqrt{2}) = \sqrt{2}/6$. $\text{TMT} = f'(L^*) = \sqrt{2}/6$. $w^*/p^* = \sqrt{2}/6$. ✓ (e).

**3. Armadilha.** (a)(iii) $L^* = 6$ é o "intuitivo errado" — quem pensa "peso $2/3$ no consumo ⇒ trabalha mais ⇒ $L^* = (2/3)\cdot 9 = 6$" cai aqui. (a)(iv) $L^* = 3$ é o oposto. (c)(ii) $q^* = 3$ é alguém que substituiu $L = 9$. (d)(i) $w^* = 1$ confunde Robinson com Aula 4. (e)(ii) ignora que TMS = TMT em qualquer EC interior por construção.

**4. Extensão.** **Fórmula geral:** com $u = q^\alpha\ell^{1-\alpha}$ e $f(L) = L^\beta$, função reduzida $u(L) = L^{\alpha\beta}(\bar L - L)^{1-\alpha}$. CPO: $\alpha\beta(\bar L - L) = (1-\alpha) L \implies L^* = \alpha\beta\bar L/(\alpha\beta + 1 - \alpha)$. Em $\alpha = 2/3, \beta = 1/2$: numerador $= (1/3)\bar L$, denominador $= 1/3 + 1/3 = 2/3$, logo $L^* = (1/3)\bar L \cdot (3/2) = \bar L/2 = 4{,}5$. **Para $\beta = 1$ (linear) e mesmo $\alpha = 2/3$:** $L^* = (2/3)\bar L/(2/3 + 1/3) = (2/3)\bar L = 6$ — aí sim a intuição "peso 2/3 ⇒ trabalha 2/3 do tempo" funciona, mas exatamente porque a tecnologia é linear (não-decrescente). A aritmética da Aula 5 esta no item de **interação preferência × tecnologia**, não em cada uma isoladamente.

**5. Peer-review.** Calibre 🟡 — exige cálculo cuidadoso de Robinson Crusoe com pesos não-simétricos. Lição: **composição $q = f(L)$ pode mascarar peso de utilidade**. Distrator (a)(iii) $L^* = 6$ é deliberado — quem usa intuição em vez de álgebra cai. Calibração honesta de "intuição econômica" vs. "cálculo".

---

## Exercício 4 🟡 — 1º TBE com produção: estrutura da prova

**Enunciado.** Considere a prova padrão do 1º TBE em economia com produção ($I$ consumidores, $J$ firmas, cotas $\theta^{ij}$). Cada uma das afirmações abaixo refere-se a um aspecto da estrutura ou do papel das hipóteses.

- **A.** A prova é por contradição: assume-se $\exists (\tilde x, \tilde y)$ viável com $u^i(\tilde x^i) \ge u^i(x^{*i})$ para todo $i$ e $u^j(\tilde x^j) > u^j(x^{*j})$ para algum consumidor $j$.
- **B.** Para o consumidor $j$ estritamente melhor, o argumento usa UMP com renda $m^{*j} = p^*\cdot \omega^j + \sum_k \theta^{jk}\, \pi^{*k}$ — cabe a renda total dele.
- **C.** Para os $i \neq j$ fracamente melhores, **LNS** é necessária (passo 2).
- **D.** Para as firmas, o argumento exige **maximização de lucro**: cada $\tilde y^k \in Y^k$ implica $p^*\cdot \tilde y^k \le p^*\cdot y^{*k}$ (passo 3).
- **E.** A hipótese de **convexidade dos $Y^j$** é essencial para o 1º TBE com produção.

### (a) A afirmação A é:

- (i) Verdadeira — esqueleto da prova padrão. **← CORRETA**
- (ii) Verdadeira em $J = 1$ apenas.
- (iii) Falsa — prova é construtiva.
- (iv) Verdadeira em economia $2 \times 2$ apenas.

### (b) A afirmação B é:

- (i) Verdadeira — definição de UMP do consumidor. **← CORRETA**
- (ii) Falsa — renda do consumidor não inclui dividendos.
- (iii) Verdadeira apenas em CD.
- (iv) Falsa — argumento exige LNS para $j$ também.

### (c) A afirmação C é:

- (i) Verdadeira — LNS é hipótese-mínima sobre consumidores no passo 2. **← CORRETA**
- (ii) Falsa — passo 2 não exige LNS, basta UMP.
- (iii) Verdadeira em CD apenas.
- (iv) Falsa — passo 2 segue da convexidade.

### (d) A afirmação D é:

- (i) Verdadeira — esse é o passo 3 novo (em comparação com a prova da Aula 4). **← CORRETA**
- (ii) Falsa — firmas não maximizam lucro em equilíbrio.
- (iii) Verdadeira apenas em monopólio.
- (iv) Falsa — passo 3 usa convexidade de $Y^j$.

### (e) A afirmação E é:

- (i) Verdadeira — convexidade de $Y^j$ entra no 1º TBE.
- (ii) Falsa — convexidade é hipótese do 2º TBE com produção, não do 1º. 1º TBE precisa apenas de LNS dos consumidores + max-lucro das firmas. **← CORRETA**
- (iii) Verdadeira em retornos constantes apenas.
- (iv) Verdadeira em $L = 2$.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** A prova do 1º TBE com produção tem 4 passos: contradição → passo 1 (UMP para consumidor estritamente melhor) → passo 2 (LNS para consumidores fracamente melhores) → passo 3 (max-lucro para firmas) → soma e contradiz viabilidade. O passo 3 é o **único novo** em relação à Aula 4 (troca pura). Convexidade dos $Y^j$ é hipótese do 2º TBE, **não** do 1º.

**2. Derivação.** Passos 1–4 como já vistos no roteiro `durante_aula.md` Bloco 3.c. **Passo 3 detalhado:** cada $\tilde y^k$ é viável em $Y^k$, então $p^*\cdot \tilde y^k$ é alcançável. Mas $y^{*k}$ é maximizador, então $p^*\cdot \tilde y^k \le p^*\cdot y^{*k}$. Esta desigualdade é exatamente o que equipara as firmas no agregado, fechando o argumento.

**3. Armadilha.** (e)(i) é o erro clássico "convexidade ⇒ 1º TBE": falso, é hipótese do 2º. (d)(ii) ignora o que define EC com produção. (b)(ii) erra porque renda inclui sim os dividendos $\sum_k \theta^{jk}\pi^{*k}$. (c)(ii) confunde papel da LNS.

**4. Extensão.** **Comparação com Aula 4:**

| Aula | 1º TBE | Hipóteses |
|---|---|---|
| 4 (troca) | EC ⇒ Pareto | LNS dos consumidores |
| 5 (produção) | EC ⇒ Pareto | LNS dos consumidores + max-lucro firmas |
| 7 (externalidades) | 1º TBE pode falhar | LNS + max-lucro **mas** sem externalidades |
| 8 (info assimétrica) | 1º TBE pode falhar | mesmo + sem info privada |

Cada aula adiciona uma camada; estrutura do 1º TBE sobrevive desde que as hipóteses estejam presentes.

**5. Peer-review.** Calibre 🟡. Exige distinção limpa entre 1º e 2º TBE *e* entre consumidores e firmas. Aluno que marca (e)(i) ainda não separou os teoremas; quem marca (d)(ii) ainda não internalizou que firmas maximizam lucro **em todo** EC.

---

## Exercício 5 🔴 — Eficiência produtiva, TMT e razão de preços

**Enunciado.** Em economia com $L$ bens produzíveis e fator único trabalho, a alocação de fatores entre setores produtivos é eficiente se e somente se as produtividades marginais (em valor) se igualam: $p_\ell\cdot \text{PMa}_L^\ell = p_k\cdot \text{PMa}_L^k$ para todo par $(\ell, k)$.

### (a) Em equilíbrio competitivo, a igualdade $p_\ell\cdot \text{PMa}_L^\ell = w$ para todo setor $\ell$ vem de:

- (i) Suposição arbitrária do modelo.
- (ii) Maximização de lucro de cada firma: $\max p_\ell\, f_\ell(L_\ell) - w\, L_\ell$ tem CPO $p_\ell\, f_\ell'(L_\ell) = w$. **← CORRETA**
- (iii) Lei de Walras.
- (iv) UMP do consumidor.

### (b) A TMT entre os bens $\ell$ e $k$ pode ser escrita como:

- (i) $\text{TMT}_{\ell k} = q_\ell/q_k$ — só função das quantidades.
- (ii) $\text{TMT}_{\ell k} = \text{PMa}_L^k/\text{PMa}_L^\ell$ — razão inversa de produtividades. **← CORRETA**
- (iii) $\text{TMT}_{\ell k} = w/p_\ell$.
- (iv) $\text{TMT}_{\ell k}$ não está bem-definida em economia geral.

### (c) Combinando (a) e (b), em EC:

- (i) $\text{TMT}_{\ell k} = p_k/p_\ell$ (preço relativo do bem $k$ em termos de $\ell$). Verificar: $\text{TMT}_{\ell k} = (\text{PMa}^k)/(\text{PMa}^\ell) = (w/p_k)/(w/p_\ell) = p_\ell/p_k$. **OBS:** depende da convenção de qual bem está no numerador. Mais usual: $\text{TMT}_{\ell k} = $ "quantas unidades de $k$ desisto para 1 extra de $\ell$" = $-dq_k/dq_\ell$.
- (ii) $\text{TMT}_{\ell k} = p_\ell/p_k$ — "preço relativo do bem $\ell$ em termos de $k$". **← CORRETA**
- (iii) $\text{TMT}_{\ell k} = 1$ sempre.
- (iv) $\text{TMT}_{\ell k} = 0$.

### (d) Suponha agora que existe distorção tributária: o setor 1 paga imposto $\tau$ sobre cada unidade de produto. O preço efetivo recebido pela firma do setor 1 é $p_1(1 - \tau)$. Em EC com tributação, $\text{TMT}_{12}$ no agregado é:

- (i) $\text{TMT}_{12} = p_1/p_2$ — tributo não afeta TMT.
- (ii) $\text{TMT}_{12} = p_1(1-\tau)/p_2$ — alocação reflete preço pós-imposto. **← CORRETA**
- (iii) $\text{TMT}_{12} = p_2/p_1$ — inverte.
- (iv) Indeterminado.

### (e) Implicação política do item (d):

- (i) Imposto seletivo distorce TMT, levando à locação **ineficiente** de fatores entre setores. Pareto-eficiência agregada é violada (1º TBE quebra parcialmente). **← CORRETA**
- (ii) Imposto seletivo é Pareto-eficiente sempre.
- (iii) Imposto seletivo aumenta produção total.
- (iv) Tributação não afeta produção.

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** Eficiência produtiva = TMT igual a razão de preços relativos. Sem distorção, mercado descentralizado replica isso via maximização de lucro com mobilidade de fator. Distorção tributária faz a TMT se afastar da razão de preços de mercado real.

**2. Derivação.** Da firma $\ell$: $\max p_\ell f_\ell(L_\ell) - w L_\ell$, CPO $p_\ell f_\ell' = w \implies f_\ell' = w/p_\ell$. ✓ (a). $\text{TMT}_{\ell k} = $ inclinação da PPF $= -dq_k/dq_\ell$. Da identidade $L_\ell = f_\ell^{-1}(q_\ell)$, $L_k = \bar L - L_\ell$, $q_k = f_k(L_k)$: $dq_k/dq_\ell = (df_k/dL_k)(dL_k/dq_\ell) = -f_k'/f_\ell' = -\text{PMa}^k/\text{PMa}^\ell$. Então $\text{TMT}_{\ell k} = \text{PMa}^k/\text{PMa}^\ell$. ✓ (b). Combinando: $\text{TMT}_{\ell k} = (w/p_k)/(w/p_\ell) = p_\ell/p_k$. ✓ (c). Com tributo: firma 1 vê preço efetivo $p_1(1-\tau)$, então $f_1' = w/[p_1(1-\tau)]$. TMT = $f_2'/f_1' = (w/p_2)/(w/(p_1(1-\tau))) = p_1(1-\tau)/p_2$. ✓ (d). Mercado de bem ainda enxerga $p_1/p_2$ como razão de equilíbrio do consumidor — mismatch ⇒ ineficiência. ✓ (e).

**3. Armadilha.** (a)(i) ignora que CPO da firma é o que **gera** a igualdade. (b)(i) confunde PPF côncava simples ($\sqrt{L}$) com geral. (c)(iii) inverte direção. (d)(i) ignora pass-through do imposto.

**4. Extensão.** Conexão com Aula 7 (externalidades): se há externalidade tecnológica positiva em setor 1 (ex.: aprendizado, network effects), preço de mercado **subestima** valor social ⇒ TMT-mercado $\neq$ TMT-social. Argumento simétrico ao da tributação. **Conexão com Box ZFM da aula:** subsídio fiscal regional cria distorção análoga — TMT em Manaus $\neq$ TMT em SP, e Pareto-agregada é violada (a menos que externalidades positivas justifiquem second-best).

**5. Peer-review.** Calibre 🔴. Mecânica de eficiência produtiva + leitura econômica de distorção. Aluno que marca (e)(ii)/(iii)/(iv) ainda não internalizou conexão "TMT = preço relativo" como condição de eficiência. **Genuinamente 🔴** porque cobra a estrutura da derivação, não só a fórmula.

---

## Exercício 6 🔴 — 2º TBE com produção: convexidade e retornos crescentes

**Enunciado.** Considere economia com 1 consumidor + 1 firma + 2 bens. Tecnologia $f(L) = L^2$ (retornos crescentes) — entrega quanto mais trabalho, mais que proporcionalmente mais produto. Preferências $u(q, \ell) = \ln q + \ln \ell$. Dotação $\bar L = 10$.

### (a) A função de produção $f(L) = L^2$ é:

- (i) Côncava (rendimentos decrescentes).
- (ii) Convexa (rendimentos crescentes). **← CORRETA**
- (iii) Linear.
- (iv) Constante.

### (b) O conjunto de produção $Y = \{(-L, q) : L \ge 0, q \le L^2\}$ é:

- (i) Convexo.
- (ii) Não-convexo — combinação de $(0, 0)$ e $(-2, 4)$ é $(-1, 2)$ que NÃO está em $Y$ (pois $f(1) = 1 < 2$). **← CORRETA**
- (iii) Compacto.
- (iv) Vazio.

### (c) O problema de maximização de lucro $\max_L p L^2 - w L$, com $p, w > 0$:

- (i) Tem solução interior única.
- (ii) Tem $L^* = w/(2p)$ como mínimo (não máximo) — função objetivo é convexa em $L$, então CPO de 1ª ordem dá mínimo, e máximo está em $L \to \infty$ (lucro infinito) ou $L = 0$ (lucro zero). **← CORRETA**
- (iii) Não tem solução.
- (iv) Tem múltiplas soluções interiores.

### (d) A consequência econômica de (c) é:

- (i) Existe EC clássico — apenas precisa-se de $p$ adequado.
- (ii) **Não existe EC clássico** com firma maximizando lucro; firma "quer" produzir infinito, o que é viável só em monopólio com restrição de demanda. **← CORRETA**
- (iii) Mercado fecha em qualquer $p$.
- (iv) Lucro zero em equilíbrio.

### (e) O 2º TBE preliminar nesta economia:

- (i) Vale — qualquer Pareto-eficiente é EC após redistribuição.
- (ii) **Falha** — convexidade do $Y$ é violada, hiperplano-preço de suporte pode não existir, mercado descentralizado não replica solução do planejador. **← CORRETA**
- (iii) Vale apenas em $\bar L > 1$.
- (iv) Vale apenas se $u$ for linear.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** Retornos crescentes em $f(L) = L^2$ ⇒ conjunto de produção $Y$ não-convexo ⇒ separação por hiperplano-preço falha ⇒ 2º TBE com produção quebra. Aplicação do tópico estrutural de "quando convexidade falha". Ponte com Aula 7 (externalidades, regulação tarifária para retornos crescentes naturais).

**2. Derivação.** $f(L) = L^2$ tem $f''(L) = 2 > 0$ ⇒ convexa. $Y$ é a parte sub-gráfica, mas o problema é a **fronteira**: $(L_1, q_1) = (0, 0)$, $(L_2, q_2) = (2, 4)$ estão em $Y$ (com $L$ negativado: $(-0, 0), (-2, 4)$). Combinação convexa $(L_3, q_3) = ((0+2)/2, (0+4)/2) = (1, 2)$. Mas $f(1) = 1 < 2$, então $(1, 2)$ **NÃO** está em $Y$. ✓ (b). Lucro $\pi = pL^2 - wL$ é convexa em $L$; CPO $2pL = w$ dá ponto crítico, mas é mínimo (segunda derivada $2p > 0$). Máximo global em $L = \infty$ (se $p > 0$), o que dá lucro $\infty$. ✓ (c). Sem $L$ ótimo finito, sem EC clássico. ✓ (d). Sem EC, 2º TBE não pode descentralizar. ✓ (e).

**3. Armadilha.** (a)(i) confunde "côncavo" com "monotônico" — $f$ é monotônica crescente, mas convexa. (b)(i) ignora que combinação convexa precisa estar abaixo da função. (c)(i) é o erro clássico de aplicar CPO sem checar concavidade. (d)(i) "qualquer $p$" ignora que firma quer produzir infinito.

**4. Extensão.** **Onde retornos crescentes aparecem em economia real:**

- **Telecomunicações**: rede com custo fixo de instalação + custo marginal baixo. Custo médio decrescente.
- **Software/IP**: custo de desenvolvimento alto, custo de cópia ~zero.
- **Eletricidade**: custos de infraestrutura concentrados, custo marginal de geração baixo.
- **Indústria farmacêutica**: P&D fixo, produção marginal baixa.

**Resposta de política para esse caso:** regulação tarifária (preço regulado) ou tarifa em duas partes (Coase). O mercado puro não funciona; precisamos de "second-best".

**Conexão com Box ZFM:** subsídio à indústria local pode ser justificado se houver retornos crescentes (encadeamento industrial, learning-by-doing) — argumento "second-best".

**5. Peer-review.** Calibre 🔴. Exercício de "quando o 2º TBE quebra" — pega o aluno em todos os pontos onde convexidade aparece. Aluno que marca (a)(i), (b)(i), (c)(i), (d)(i), ou (e)(i) tem buraco em algum elo da cadeia "retornos crescentes ⇒ não-convexidade ⇒ Hahn-Banach falha". 

**Risco residual:** o item (c) é quase malicioso porque o aluno faz CPO e acha um número, sem checar segunda ordem. Distrator (i) deliberadamente atrai. Quem cai aqui ainda não internalizou que **otimização exige checar convexidade do problema**.
