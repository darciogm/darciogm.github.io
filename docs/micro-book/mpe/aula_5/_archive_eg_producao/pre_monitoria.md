# Pré-Monitoria 3 — Aula 5 (EG em Produção) · Esqueleto + ganchos para Alberto

> **Status:** ESQUELETO INICIAL (2026-05-13). Conteúdo declarado nas 4 extensões; pendente de refinamento numérico fechado e revisão Darcio antes de habilitar no portal.
> **Página HTML:** `platform/pre-monitoria-03.html` (a ser criada em bundle separado).
> **Calendário (em `platform/js/calendario.js`):**
> - Pré-M3 abre **sáb 23/05 12:00**, fecha **sex 29/05 22:00**.
> - Monitoria presencial: **sáb 30/05 10:00** (Insper, Alberto Nishikawa).

## Contrato pedagógico

- **Formativa, não conta nota.**
- Tempo-alvo: **60–70 min**.
- Cobre **extensões** da Aula 5 que o Alberto vai aprofundar no sábado. Não é repetição da aula magistral.
- Sem quiz avaliativo, sem exercícios para nota.
- Estrutura: 7 seções (S0 orientação, S1 recap, S2–S5 extensões, S6 reflexão), com micro-checkpoints (3 tentativas, cooldown 10s) + slider de confiança pré/pós.
- **Calibre:** teto Jehle-Reny §5.4; tocamos §5.5 (existência via Kakutani) **cirurgicamente**, sem prova rigorosa de ponto fixo.

## S1 — Recap da Aula 5 (5 min)

Cinco âncoras da aula magistral, cada uma em 1 frase:

1. **Conjunto de produção** $Y \subseteq \mathbb{R}^L$: hipóteses canônicas (livre descarte, possibilidade de inação, fechamento, **convexidade** — chave do 2º TBE). Função de produção $f: \mathbb{R}^k \to \mathbb{R}_+$ é caso particular.
2. **PPF** em economia $2 \times 2$: arco côncavo, derivado de $f_1, f_2$ + restrição de fator. **TMT** = inclinação = razão de produtividades marginais.
3. **Robinson Crusoe canônico** ($u = q^{1/2}\ell^{1/2}$, $f(L) = \sqrt{L}$, $\bar L = 16$): $L^* = 16/3$, $w^* = \sqrt{3}/8$, $\pi^* = 2\sqrt{3}/3$, $\text{TMS} = \text{TMT} = w/p = \sqrt{3}/8$.
4. **EG com $J$ firmas**: cotas $\theta^{ij}$, renda $m^i = p\cdot \omega^i + \sum_j \theta^{ij}\pi^j$. Walras estendido $p\cdot z(p) = 0$.
5. **1º TBE com produção**: LNS (consumidores) + max-lucro (firmas) ⇒ Pareto. **2º TBE com produção**: convexidade de $Y$ + preferências convexas + LNS ⇒ Pareto pode ser implementado como EC após redistribuição lump-sum.

## S2 — Extensão 1: EC com $J = 2$ firmas e $I = 2$ consumidores (~15 min)

**Pergunta-mãe:** o que muda na alocação se as cotas de propriedade $\theta^{ij}$ não forem uniformes?

### Setup canônico

$I = 2$ consumidores ($A$, $B$), $J = 2$ firmas ($1$, $2$), $L = 2$ bens (consumo + lazer).

- Preferências: $u^A = q^{1/2}\ell^{1/2}$, $u^B = q^{2/3}\ell^{1/3}$ (B mais "viciado em consumo").
- Tecnologias: $f^1(L) = \sqrt{L}$, $f^2(L) = L^{1/3}$ (firma 2 com retornos mais decrescentes).
- Dotação: cada consumidor tem $\omega^A = \omega^B = (\bar L/2, 0)$ em (lazer, consumo) — só tem tempo, $\bar L = 16$ total.
- Cotas: $\theta^{A1} = 1, \theta^{B1} = 0$ (firma 1 totalmente de $A$); $\theta^{A2} = 0, \theta^{B2} = 1$ (firma 2 totalmente de $B$).

### Cálculo de EC (a desenvolver na pré-monitoria com Alberto)

Cada consumidor recebe lucro só da sua firma. Mercado de trabalho fecha com $L^1 + L^2 = \bar L$. CPO de cada firma: $p\, f^j{}'(L^j) = w$. UMP de cada consumidor com sua renda total. Sistema com 2 incógnitas: $w/p$ e alocação $L^1, L^2$.

**Para resolver:** pré-monitoria deixa o setup; Alberto calcula numericamente em sala (esperado: $L^1, L^2$ não-iguais, dado heterogeneidade tecnológica).

### Ganchos para a pré-monitoria

- Mostrar que **alocação de cotas** $\theta$ afeta apenas distribuição (renda dos consumidores), não eficiência (alocação de fator entre firmas) — versão produção do 2º TBE.
- Variar $\theta^{A1}, \theta^{B1}$ e mostrar que mudanças não afetam $L^1, L^2, q^1, q^2, w^*$.

### Micro-checkpoint S2 (1 item obrigatório)

> Em economia com $J = 2$ firmas e $I = 2$ consumidores, mudar as cotas $\theta^{ij}$ (mantendo a soma $= 1$ por firma) afeta:
>
> (a) A alocação de fatores entre firmas e o preço relativo $w/p$.
> (b) Apenas a distribuição de renda entre consumidores; alocação de fatores e preços relativos permanecem inalterados. ✓
> (c) A tecnologia das firmas.
> (d) Apenas o lucro agregado.

**Gabarito 5-passos:** (1) Ponto-chave: separação eficiência (alocação de fator) vs. equidade (distribuição de renda). 2º TBE garante que a primeira não depende de $\theta$. (2) Derivação: $\theta$ entra apenas na renda do consumidor; demanda agregada de cada bem depende da renda agregada $\sum_i m^i = p\cdot \sum_i \omega^i + \sum_j \pi^j(p)$, não de cada $\theta^{ij}$ separadamente. (3) Armadilha: (a) confunde $\theta$ com tecnologia. (4) Extensão: na pré-monitoria, calcular EC com $\theta$ uniforme vs. extremo e mostrar que $L^*, w^*$ são iguais. (5) Peer-review: distrator (d) atrai quem confunde "lucro de cada firma" com "agregado".

## S3 — Extensão 2: Robinson Crusoe com tecnologia CES (~15 min)

**Pergunta-mãe:** como o EC de Robinson Crusoe se comporta quando a tecnologia tem elasticidade de substituição $\sigma$ variável?

### Setup

$f(L) = (a L^\rho + b)^{1/\rho}$ com 2 fatores (trabalho e "talento" fixo $b$, normalizado $a = 1, b = 1$ para simplificar). Em forma de **um insumo só**, equivalente: $f(L) = (L^\rho + 1)^{1/\rho}$. Para $\rho \to 0$ entrega $\sqrt{L}$ aproximadamente (logaritmo); para $\rho \to 1$ aproxima linear; para $\rho \to -\infty$ aproxima Leontief.

Preferências: $u(q, \ell) = q^{1/2}\ell^{1/2}$ (CD simétrica). $\bar L = 9$.

### Cálculo (esquemático)

CPO da firma: $p\, f'(L) = w \implies f'(L) = w/p$. Com $f(L) = (L^\rho + 1)^{1/\rho}$: $f'(L) = L^{\rho - 1}(L^\rho + 1)^{1/\rho - 1}$.

Resolver para $L^*$ em função de $w/p$ e depois fechar com UMP do consumidor é exercício de paciência algébrica — entrega curva de oferta de produto $q^s(p, w)$ paramétrica em $\rho$.

### Ganchos para a pré-monitoria

- Calcular EC para $\rho = 1/2$ (substituição moderada) e comparar com $\rho \to 0$ (CD).
- Mostrar como a oferta de produto fica mais "elástica" com $\rho$ alto (substituição mais fácil).
- **Aula 6:** $\sigma$ entra novamente em utilidade esperada CRRA / CES intertemporal.

### Micro-checkpoint S3 (1 item obrigatório)

> Em Robinson Crusoe com tecnologia CES com elasticidade de substituição $\sigma > 1$ (substituição "fácil"), a oferta de produto $q^s$ em função do salário relativo $w/p$ tende a ser:
>
> (a) Mais elástica que CD ($\sigma = 1$). ✓
> (b) Menos elástica que CD.
> (c) Constante (independente de $w/p$).
> (d) Negativa.

**Gabarito 5-passos:** (1) Ponto-chave: $\sigma$ alto = fatores facilmente substituíveis = oferta responde mais a preços. (2) Derivação: na CES com $\sigma > 1$, derivada da função de produção em relação a $L$ é mais sensível a $L$ — pequeno aumento de $L$ vira muito mais $q$ se $\sigma$ alto. (3) Armadilha: (b) inverte direção. (4) Extensão: dualidade de Sheppard mostra que oferta é gradiente da função de lucro; convexidade da função de lucro em $p$ entrega elasticidades. (5) Peer-review: caso conceitual; quem marca (b) ou (c) ainda não internalizou intuição de elasticidade de substituição.

## S4 — Extensão 3: Construção de violação do 2º TBE com retornos crescentes (~15 min)

**Pergunta-mãe:** se a tecnologia tem retornos crescentes ($f$ convexa), em qual passo do 2º TBE o argumento quebra?

### Recap do 2º TBE (esquema)

Sob convexidade de $Y^j$ e preferências convexas, dado $(x^*, y^*)$ Pareto-eficiente, existe $p^* \ge 0$ tal que $(p^*, x^*, y^*)$ é EC após redistribuição lump-sum. Argumento usa Hahn-Banach (separação de conjuntos convexos).

### Setup do contraexemplo

Robinson Crusoe com $f(L) = L^2$ (convexa, retornos crescentes), $u(q, \ell) = \ln q + \ln \ell$ (Cobb-Douglas), $\bar L = 10$.

### Análise

- $Y = \{(-L, q) : L \ge 0, q \le L^2\}$ é **não-convexo** (combinação de $(0, 0)$ e $(-2, 4)$ entrega $(-1, 2)$, mas $f(1) = 1 < 2$, fora de $Y$).
- Maximização de lucro: $\max p L^2 - w L$. CPO: $2 p L = w \implies L = w/(2p)$. Mas é **mínimo** (convexa em $L$), não máximo. Máximo está em $L \to \infty$ (lucro infinito) — não há EC clássico.
- 2º TBE quebra porque $p^*$ que sustente $(x^*, y^*)$ Pareto-eficiente interior simplesmente **não existe**.

### Resposta de "second-best"

- **Regulação tarifária**: monopólio com tarifa em duas partes (Coase).
- **Subsídio à produção** que internalize aprendizado / network effects.
- **Conexão com Aula 7** (externalidades): retornos crescentes podem refletir externalidades positivas — argumento simétrico.

### Micro-checkpoint S4 (1 item obrigatório)

> Em economia com firma de retornos crescentes ($f(L) = L^2$), o 2º TBE preliminar:
>
> (a) Vale como em economia convexa.
> (b) Falha porque o conjunto de produção $Y$ não é convexo, e o hiperplano-preço de suporte (Hahn-Banach) pode não existir. ✓
> (c) Vale apenas se $\bar L$ for grande.
> (d) Falha porque preferências são CD.

**Gabarito 5-passos:** (1) Ponto-chave: convexidade do conjunto de produção é hipótese-chave do 2º TBE; retornos crescentes a quebram. (2) Derivação: vista no setup. (3) Armadilha: (d) confunde hipótese (preferências convexas) com tecnologia. (4) Extensão: regulação tarifária é a resposta de "second-best" — Aula 7 detalha. (5) Peer-review: questão estrutural; quem marca (a) não internalizou que convexidade é não-redundante.

## S5 — Extensão 4: Eficiência produtiva via dualidade — minimização de custo (~10 min)

**Pergunta-mãe:** como o problema da minimização de custo entrega a mesma TMST que a maximização de lucro entrega a TMT?

### Setup

Firma com tecnologia $f(z_1, z_2)$ (dois insumos, ex.: trabalho $L$ e capital $K$). Preços de insumos: $w_1, w_2$. Problema dual:

$$
C(q; w_1, w_2) = \min_{z \ge 0} w_1 z_1 + w_2 z_2 \;\;\text{s.a.}\;\; f(z_1, z_2) \ge q.
$$

### CPO via Lagrangiano

$\mathcal{L} = w\cdot z + \lambda(q - f(z))$. CPO: $w_\ell = \lambda\cdot \partial f/\partial z_\ell$. Razão: $w_1/w_2 = (\partial f/\partial z_1)/(\partial f/\partial z_2) = \text{TMST}_{12}$.

**Eficiência produtiva (dual):** TMST = razão de preços de insumos.

### Conexão com TMT

Em economia com **dois bens produzíveis** e **um fator único** (trabalho), TMT entre os bens é $\text{PMa}_L^k/\text{PMa}_L^\ell$. **Em equilíbrio competitivo:** $w/p_\ell = \text{PMa}_L^\ell$ (CPO firma $\ell$). Razão: $\text{TMT}_{\ell k} = (w/p_k)/(w/p_\ell) = p_\ell/p_k$.

Em economia com **dois fatores**, TMST de cada firma + TMT entre setores são independentes. Tudo descentralizado por preços.

### Ganchos para a pré-monitoria

- Calcular TMST em CD $f(L, K) = L^{1/3} K^{2/3}$ no ponto $(L, K) = (8, 8)$: $\text{PMa}_L = (1/3)(8/8)^{2/3} = 1/3$; $\text{PMa}_K = (2/3)(8/8)^{1/3} = 2/3$. $\text{TMST}_{LK} = 1/2$. Em $w_L = 1, w_K = 2$: $w_L/w_K = 1/2$. ✓ Eficiência verificada.
- Mostrar dualidade Shephard: $\partial C/\partial w_\ell = z_\ell^*(q; w)$ (lema de Shephard). Conexão com Aula 2 (dualidade entre UMP e EMP).

### Micro-checkpoint S5 (1 item obrigatório)

> Em problema de minimização de custo $\min w\cdot z$ s.a. $f(z) \ge q$, no ótimo interior, a TMST entre fatores iguala:
>
> (a) Razão de quantidades $z_1/z_2$.
> (b) Razão de preços de insumos $w_1/w_2$. ✓
> (c) $1$ sempre.
> (d) Razão de produtividades marginais sem normalização.

**Gabarito 5-passos:** (1) Ponto-chave: eficiência produtiva interior = TMST igual a preço relativo. (2) Derivação: CPO Lagrangiano. (3) Armadilha: (a) confunde quantidade com inclinação; (d) ignora que CPO igualou as duas. (4) Extensão: lema de Shephard — derivada da função de custo em $w_\ell$ entrega demanda condicional. Aula 6: extensão para preços contingentes. (5) Peer-review: questão definicional; quem marca (a) ainda não internalizou estrutura dual.

## S6 — Reflexão final (3 min)

Dois campos qualitativos (mín. 10 chars cada):

1. **Claro.** "O que ficou claro depois da pré-monitoria que estava nebuloso na aula?" Placeholders: "Por que cotas $\theta$ não afetam alocação de fator", "Como retornos crescentes quebram 2º TBE concretamente".
2. **Pedido.** "O que você quer que o Alberto cubra no sábado?" Placeholders: "Cálculo numérico fechado de $J = 2$ firmas heterogêneas", "Construção de PPF com fatores múltiplos (terra + trabalho)".

> Alimenta a triagem do Alberto antes da monitoria — ele lê as respostas no admin dashboard sexta-feira de manhã.

## Para o Alberto cobrir presencialmente (deixado em aberto na pré-monitoria)

Lista do que **não** esgotamos — gancho para o sábado:

1. **Ext. 1 — EC com cotas heterogêneas calculado numericamente** ($J = 2$, $I = 2$, $\theta$ não-uniforme): mostrar que alocação de fatores e $w/p$ são iguais ao caso uniforme; só renda dos consumidores muda.
2. **Ext. 2 — CES com cálculo fechado**: derivar $L^*(\rho)$ e $q^s(p, w; \rho)$ explicitamente, comparando $\rho = 1/2$ (substituição moderada) com CD ($\rho \to 0$).
3. **Ext. 3 — Contraexemplo numérico fechado de retornos crescentes**: construir economia com $f(L) = L^2$ + restrição artificial (capacidade máxima $L \le \bar L$) e mostrar que EC encontra "canto" com lucro positivo, mas Pareto-eficiente alternativo não pode ser sustentado por nenhum $p^*$.
4. **Ext. 4 — Dualidade UMP-EMP em produção**: explicitar a dualidade entre maximização de lucro (max $p\cdot y - w\cdot z$) e minimização de custo (min $w\cdot z$ s.a. $f(z) \ge q$), via função de lucro $\pi(p, w)$ e função de custo $C(q, w)$. Lema de Hotelling vs. lema de Shephard.
5. **(Bônus se sobrar tempo)** Conexão com Aula 6: bens contingentes substituindo "produto" por "produto em estado $s$", e a estrutura de Robinson Crusoe sobrevive — mas só se mercados são completos. Caso incompleto entra em Aula 6.

## Para o Darcio decidir (antes de habilitar)

1. **Tempo declarado:** 60–70 min é defensável (paralelo à Pré-M2). Se Alberto achar curto, subir para 70–80.
2. **Profundidade de Ext. 2 (CES)**: está como bloco completo de 15 min — Darcio decide se mantém ou poda para 10 min.
3. **Habilitar no portal:** entrada `PRE_MONITORIAS_LIST[2]` em `portal.html` com `fileReady: true` (após criação do `pre-monitoria-03.html`).
4. **Notação canônica seguida:** $\succeq$, $\text{TMS}$, $\text{TMT}$, vírgula decimal $0{,}25$. ✓
5. **Math delimiters:** `.md` usa `$...$` e `$$...$$`; HTML usa `\(...\)` e `\[...\]`. ✓
6. **Aviso:** este MD é esqueleto; o HTML `pre-monitoria-03.html` será criado em **bundle separado** (não está nesse bundle de Aula 5). O presente arquivo serve como referência operacional para Darcio + Alberto.
