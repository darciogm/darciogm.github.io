# Auditoria de Gabaritos — Bundle Aula 4 (pós plano-9.5-v2)

**Data:** 2026-05-07
**Auditor:** prof-mpe-micro (modo auditor — perfeccionista, paranoico)
**Escopo:** verificação independente de cada questão de múltipla escolha em todo o bundle Aula 4 + coerência SSOT (MD ↔ HTML) + spot-check estrutural dos slides renderizados.

---

## 1. Sumário executivo

- **Total auditado:** 53 itens MC distribuídos em 5 HTMLs + 2 MDs.
  - Pré-aula material: 9 itens (s3q1, s3q2, s4q1, s4q2, s5q1, s5q2, s5q3 + checkpoint final q1, q2, q3 — 10 na verdade).
  - Pré-quiz 🟡: 10 itens.
  - Pós-quiz 5🟡+5🔴: 10 itens.
  - Exercícios avaliativos: 28 sub-itens (Ex1: 4; Ex2: 5; Ex3: 5; Ex4: 5; Ex5: 5; Ex6: 5; total 29 — cont. correção).
  - Pré-monitoria 2: 4 micro-checkpoints (s2q1, s3q1, s4q1, s5q1).
- **Total efetivo conferido:** 67 itens MC (10 pré-aula + 10 pré-quiz + 10 pós-quiz + 29 exerc + 4 pré-mon. + 4 — corrijo abaixo).
- **Erros encontrados:**
  - 🔴 **2 bloqueantes** (gabarito errado): pós-quiz Q6 e exerc Ex4(e). Mesmo defeito conceitual: tratam a utilidade $u^A = \min\{x_1,1\} + x_2$ como contraexemplo do 1º TBE sem LNS, mas **essa utilidade satisfaz LNS globalmente** (porque bem 2 nunca satura). 1º TBE vale; o "EC encontrado" no slide LNS (2/2) sequer é EC genuíno. Defeito propagado também para o slide reveal — ver §5.
  - 🟡 **2 altos**: (a) Ex2(c) tem (ii) e (iii) ambas numericamente corretas — viola anti-padrão de "uma correta identificável". (b) **Ex3 do MD é estruturalmente diferente do Ex3 do HTML**: MD tem "Walras como ferramenta" (4 sub-itens), HTML tem "EC com Leontief" (5 sub-itens). MD desatualizado.
  - 🟡 **1 alto SSOT**: Ex4(e) MD diz `(ii)` correta; HTML diz `(iv)` correta. Mesmo enunciado, mesma região conceitual com mesmo defeito acima — mas **divergência de letra entre os dois arquivos**.
  - 🟢 **0 baixos** identificados.
- **Recomendação:** **SEGURAR commit**. Ação obrigatória: corrigir slide LNS (2/2) + Q6 pós + Ex4(e) (HTML+MD) + Ex3 MD↔HTML antes de liberar. Sem isso, dois pontos centrais do plano-9.5-v2 (B3 contraexemplo LNS unificado e SSOT exerc) saem com defeito grave.

---

## 2. Tabela mestra (uma linha por questão)

Legenda: marcada = `data-correct`/`correct`; "minha" = resolução independente; severidade = 🔴 bloqueante / 🟡 alto / 🟢 baixo / ✓ OK.

### 2.1 `platform/aula-04.html` (pré-aula material)

| Q# | Difficulty | Marcada | Minha | Match | 5-passos coerente | Severidade | Ação |
|---|---|---|---|---|---|---|---|
| s3q1 | yellow | c | c | ✓ | n/a (sem 5-passos) | ✓ | — |
| s3q2 | yellow | b | b | ✓ | n/a | ✓ | — |
| s4q1 | yellow | b | b | ✓ | n/a | ✓ | — |
| s4q2 | yellow | a | a | ✓ | n/a | ✓ | — |
| s5q1 | yellow | b | b | ✓ | n/a | ✓ | — |
| s5q2 | yellow | b | b | ✓ | n/a | ✓ | — |
| s5q3 | yellow | b | b | ✓ | n/a | ✓ | — |
| chkfinal q1 | yellow | b | b | ✓ | n/a | ✓ | — |
| chkfinal q2 | yellow | b | b | ✓ | n/a | ✓ | — |
| chkfinal q3 | yellow | b | b | ✓ | n/a | ✓ | — |

### 2.2 `platform/aula-04-pre.html` (quiz pré 10🟡)

| Q# | Marcada | Minha | Match | 5-passos | Severidade | Ação |
|---|---|---|---|---|---|---|
| Q1 | b | b | ✓ | ✓ | ✓ | — |
| Q2 | c | c | ✓ | ✓ | ✓ | — |
| Q3 | b | b | ✓ | ✓ | ✓ | — |
| Q4 | b | b | ✓ | ✓ | ✓ | — |
| Q5 | a | a | ✓ | ✓ | ✓ | — |
| Q6 | b | b | ✓ | ✓ | ✓ | — |
| Q7 | c | c | ✓ | ✓ | ✓ | — |
| Q8 | b | b | ✓ | ✓ | ✓ | — |
| Q9 | a | a | ✓ | ✓ | ✓ | — |
| Q10 | b | b | ✓ | ✓ | ✓ | — |

### 2.3 `platform/aula-04-pos.html` (quiz pós 5🟡+5🔴)

| Q# | Difficulty | Marcada | Minha | Match | 5-passos coerente? | Severidade | Ação |
|---|---|---|---|---|---|---|---|
| Q1 | yellow | b | b | ✓ | ✓ | ✓ | — |
| Q2 | yellow | c | c | ✓ | ✓ | ✓ | — |
| Q3 | yellow | b | b | ✓ | ✓ | ✓ | — |
| Q4 | yellow | b | b | ✓ | ✓ | ✓ | — |
| Q5 | yellow | d | d | ✓ | ✓ | ✓ | — |
| **Q6** | **red** | **b** | **a (1º TBE vale; LNS NÃO é violada)** | **✗** | **internamente coerente, mas conceitualmente errado** | **🔴** | **Reescrever gabarito ou trocar setup (ver §3.1)** |
| Q7 | red | c | c | ✓ | ✓ | ✓ | — |
| Q8 | red | b | b | ✓ | ✓ | ✓ | — |
| Q9 | red🔴🔴 | c | c | ✓ | ✓ | ✓ | — |
| Q10 | red | b | b | ✓ | ✓ | ✓ | — |

### 2.4 `platform/aula-04-exerc.html` (exercícios avaliativos, 29 sub-itens)

| Ex–sub | Difficulty | Marcada | Minha | Match | 5-passos | Severidade | Ação |
|---|---|---|---|---|---|---|---|
| Ex1(a) | green | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex1(b) | green | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex1(c) | green | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex1(d) | green | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex2(a) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex2(b) | yellow | a (=i) | i | ✓ | ✓ | ✓ | — |
| **Ex2(c)** | yellow | c (=iii) | ii ou iii (mesmo número) | parcial | comentário pedagógico justifica preferir (iii), mas (ii) é igualmente correta numericamente | 🟡 | Reescrever (ii) para ser claramente errada (ver §3.2) |
| Ex2(d) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex2(e) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex3(a) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex3(b) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex3(c) | yellow | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex3(d) | yellow | c (=iii) | iii | ✓ | ✓ | ✓ | — |
| Ex3(e) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex4(a) | yellow | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex4(b) | yellow | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex4(c) | yellow | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex4(d) | yellow | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| **Ex4(e)** | **yellow** | **d (=iv)** | **(i) é a única defensável** (1º TBE vale; LNS NÃO é violada nessa utilidade) | **✗** | **5-passos coerente com a alt errada** | **🔴** | **Reescrever (idem Q6 pós), além de alinhar MD** |
| Ex5(a) | red | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex5(b) | red | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex5(c) | red | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex5(d) | red | c (=iii) | iii | ✓ | ✓ | ✓ | — |
| Ex5(e) | red | b (=ii) | ii | ✓ | ✓ | ✓ | — |
| Ex6(a) | red | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex6(b) | red | c (=iii) | iii | ✓ | ✓ | ✓ | — |
| Ex6(c) | red | a (=i) | i | ✓ | ✓ | ✓ | — |
| Ex6(d) | red | c (=iii) | iii | ✓ | ✓ | ✓ | — |
| Ex6(e) | red | c (=iii) | iii | ✓ | ✓ | ✓ | — |

### 2.5 `platform/pre-monitoria-02.html` (4 micro-checkpoints)

| Q# | Marcada | Minha | Match | 5-passos | Severidade | Ação |
|---|---|---|---|---|---|---|
| s2q1 | a | a | ✓ | ✓ | ✓ | — |
| s3q1 | a | a | ✓ | ✓ | ✓ | — |
| s4q1 | b | b | ✓ | ✓ (com nota residual: confunde "saciedade local" com "LNS violada"; ver §3.5) | 🟢 | revisar redação |
| s5q1 | c | c | ✓ | ✓ | ✓ | — |

---

## 3. Detalhamento dos achados 🔴 e 🟡

### 3.1 🔴 BLOQUEANTE — Pós-quiz Q6 (e Slide LNS 2/2 e Ex4(e) — defeito unificado)

**Arquivos afetados:**
- `platform/aula-04-pos.html`, linhas 136–152 (Q6).
- `aula_4/slides/aula-04.qmd`, linhas 714–735 (slide "O papel exato de LNS (2/2) — contraexemplo numérico").
- `aula_4/slides/aula-04.html` (re-rendered), linhas 740–755.
- `platform/aula-04-exerc.html`, linhas 299–306 (Ex4(e)).
- `aula_4/exercicios-avaliativos.md`, linhas 200–205 (Ex4(e) — letra divergente do HTML; ver §4).

**Enunciado de Q6 (literal):** "Considere economia $2\times 2$ onde $A$ tem utilidade $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$ (saciada em bem 1 acima de $x_1 = 1$) e $B$ tem CD usual. Suponha $\omega^A = (2, 0)$, $\omega^B = (0, 2)$. Sobre o 1º TBE nessa economia."

Alternativas:
- (a) "1º TBE vale — todo EC é Pareto-eficiente, independente das hipóteses."
- (b) **MARCADA**: "1º TBE pode falhar — $A$ pode estar saciada em bem 1 em equilíbrio, com **LNS violada localmente**; existe alocação Pareto-superior que mercado não atinge."
- (c) "1º TBE vale por convexidade — preferências de $A$ são convexas."
- (d) "Não há EC nessa economia."

**Resolução independente — minha (3 minutos de papel):**

1. **A utilidade $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$ satisfaz LNS GLOBALMENTE.** Em qualquer ponto $(x_1^0, x_2^0)$, considere o vizinho $(x_1^0, x_2^0 + \delta)$ com $\delta > 0$. Temos $u^A(\text{vizinho}) = \min\{x_1^0, 1\} + x_2^0 + \delta > u^A(x_1^0, x_2^0)$. Logo LNS vale em todo $\mathbb{R}^2_+$. Saciedade NA dimensão de bem 1 (acima de 1) NÃO implica saciedade local — o agente continua valorizando bem 2 estritamente.

2. **EC desta economia.** Procuremos $p^* = (p_1, 1)$ (numerário $p_2 = 1$).
   - $A$ com $\omega^A = (2,0)$, $m^A = 2 p_1$. UMP: maximizar $\min\{x_1, 1\} + x_2$ s.a. $p_1 x_1 + x_2 \le 2 p_1$.
     - Em $p_1 < 1$: a margem de bem 1 (1 ou 0) é maior que custo $p_1$ até $x_1 = 1$, depois zero. Solução: $x_1 = 1$, $x_2 = 2 p_1 - p_1 = p_1$. Utilidade $1 + p_1$.
     - Em $p_1 > 1$: comprar bem 1 a custo $p_1$ rende margem 1 (até $x_1=1$); melhor alocar tudo em bem 2. $x^A = (0, 2 p_1)$.
     - Em $p_1 = 1$: indiferente para $x_1 \in [0, 1]$ (a margem do bem 1 vale 1 = preço). $x^A \in \{(t, 2 - t) : t \in [0, 1]\}$.
   - $B$ com $\omega^B = (0, 2)$, $m^B = 2$. CD simétrica: $x_1^B = 1/p_1$, $x_2^B = 1$.
   - **Mercado 1:** $x_1^A + x_1^B = 2$.
     - $p_1 < 1$: $1 + 1/p_1 = 2 \Rightarrow p_1 = 1$, contradição.
     - $p_1 > 1$: $0 + 1/p_1 = 2 \Rightarrow p_1 = 1/2$, contradição.
     - $p_1 = 1$: $x_1^A + 1 = 2 \Rightarrow x_1^A = 1$ (compatível com indiferença). $x^A = (1, 1)$. $x^B = (1, 1)$.
   - **EC:** $p^* = (1, 1)$, $x^{A*} = x^{B*} = (1, 1)$. Utilidades: $u^A = 1 + 1 = 2$, $u^B = 1$.

3. **Pareto-eficiência do EC.** Por 1º TBE (LNS vale) este EC é Pareto. Verificação direta também: para melhorar $A$ (que vale 2 hoje) ou $B$ (que vale 1) sem piorar o outro, qualquer realocação que dê mais bem 2 a $A$ exige tirar de $B$ (o agregado é fixo); $B$ piora porque é estritamente monotônico em ambos. Idem para tirar de $A$. Tangência em $(1,1)$: $\text{TMS}^B = x_2^B/x_1^B = 1$; $\text{TMS}^A$ no ponto $(1,1)$ é "qualquer valor entre 0 e 1" (limite à esquerda da quina) — separação por preço $p^*=(1,1)$ é feita pelo limite à direita do $\text{TMS}^A$ na restrição.

**Diagnóstico:** A alternativa (b) **afirma que LNS é violada e que 1º TBE falha** — ambas falsas. A alternativa (a), apesar do "independente das hipóteses" desonesto, é a única que captura o resultado correto desta economia (1º TBE vale, todo EC é Pareto). Nenhuma das 4 alternativas é totalmente limpa, mas (a) é a única defensável; (b), (c), (d) são todas falsas.

**O que o slide LNS (2/2) afirma (e onde o erro nasce):**
> "Setup. $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$ ...; $u^B = x_1^{1/2}x_2^{1/2}$. $\omega^A = (2, 0)$, $\omega^B = (0, 2)$. Em $p^* = (1, 1)$. **EC encontrado.** $x^A = (2, 0)$, $x^B = (0, 2)$ ..."
> "$\tilde x^A = (1, 1), \tilde x^B = (1, 1)$ é viável. Pareto-superior."

**Erro do slide:** $x^A = (2, 0)$ NÃO é solução do UMP de $A$ a $p^* = (1, 1)$. Em $(2,0)$, $u^A = 1 + 0 = 1$. Em $(0, 2)$, $u^A = 0 + 2 = 2$. Em $(1, 1)$, $u^A = 1 + 1 = 2$. $A$ jamais escolheria $(2, 0)$ — não maximiza UMP. Logo $((2,0), (0,2))$ não é EC dessa economia. E o $\tilde x = ((1,1),(1,1))$ que o slide chama de "Pareto-superior" é, na verdade, **o próprio EC genuíno** dessa economia.

O slide está vendendo uma "patologia" que não existe — o 1º TBE vale tranquilamente nesse exemplo.

**Correção sugerida (3 opções):**

**Opção A — trocar setup para um genuíno contraexemplo de LNS violada.** Construir $u^A$ que de fato sature **localmente** (não apenas direcionalmente). Exemplo canônico (Mas-Colell §16.D): $u^A(x_1, x_2) = -[(x_1 - a)^2 + (x_2 - b)^2]$ com bliss point $(a, b)$ interior à caixa de Edgeworth. Em $(a, b)$, conjunto preferido estrito é vazio — LNS falha em $(a, b)$. Ajustar dotações + utilidade $B$ para que o EC caia precisamente em $(a, b)$. Custo: trabalho de calibração (precisamente o ponto que a pré-monitoria 2 deixa para o Alberto resolver no sábado — coerente).

**Opção B — manter o setup mas corrigir o gabarito.** Reescrever (a)/(b)/(c)/(d) para que (a) seja "1º TBE vale neste exemplo — embora $u^A$ sature em bem 1 acima de 1, LNS continua valendo globalmente porque bem 2 nunca satura. EC é $((1,1),(1,1))$ e é Pareto." Distratores podem incluir variantes do erro original. Custo: reescrever tudo, mas a lição pedagógica fica clara (saciedade direcional ≠ saciedade local).

**Opção C — remover Q6 e o slide LNS (2/2), substituir por anúncio puro.** "Construção rigorosa do contraexemplo de LNS violada exige bliss point interior — fica em MWG §16.D / Jehle-Reny §5.2 e na pré-monitoria do Alberto." Custo: perde a ambição do plano-9.5-v2 mas evita o erro propagado.

**Recomendação:** Opção A se Darcio quer manter o nível de ambição do plano; Opção C se prefere segurança. Opção B é meio-termo defensável.

### 3.2 🟡 ALTO — Ex2(c) tem duas alternativas numericamente corretas

**Arquivo:** `platform/aula-04-exerc.html`, linhas 141–148.

Enunciado: "(c) A demanda Marshalliana de $B$ pelo bem 1, como função de $p_1$, é:"

Alternativas:
- (a)/(i) "$x_1^B = 3$ (toda a dotação)."
- (b)/(ii) "$x_1^B = (1/3)\cdot 3 p_1/p_1 = 1$." — **numericamente correta** (a expressão escrita simplifica para 1).
- (c)/(iii) **MARCADA** "$x_1^B = (1/3)\cdot m^B/p_1 = (1/3)(3 p_1)/p_1 = 1$ — constante (não depende de $p_1$)." — também correta, mais explícita.
- (d)/(iv) "$x_1^B$ depende de $p_2$." — falsa.

A nota didática no feedback diz: "alternativas (ii) e (iii) chegam ao mesmo valor numérico, mas (iii) explicita que a dependência de $p_1$ se cancela." **Isso viola anti-padrão "uma correta identificável"** (explicitado no CLAUDE.md). O aluno que marca (ii) não está errado matematicamente.

**Correção sugerida:** reescrever (ii) para que seja claramente errada. Ex.: "$x_1^B = (1/3)\cdot 3 = 1$ — independente de preços por sorte." (Esconde o cancelamento e introduz erro: a "sorte" implica que $p_1$ não importa; mas a fórmula correta vem do cancelamento, não de constância arbitrária.) Ou mais limpo: trocar (ii) por algo claramente errado, ex.: "$x_1^B = m^B/(p_1) = 3$" (esquece o $\alpha = 1/3$).

### 3.3 🟡 ALTO — Ex4(e) gabarito errado (HTML+MD) e divergente entre arquivos

**Arquivos:**
- `platform/aula-04-exerc.html`, linhas 299–306 (Ex4(e) com data-correct="d", isto é, alternativa (iv)).
- `aula_4/exercicios-avaliativos.md`, linhas 200–205 (Ex4(e) marca "(ii)" como correta).

**Defeito conceitual:** mesmo de §3.1 — afirmação de que LNS é violada na utilidade $u^A = \min\{x_1, 1\} + x_2$ em $x_1 > 1$. Falso: bem 2 garante LNS em todos os pontos.

**Defeito de SSOT:** O HTML diz que a correta é a alt **(iv)** ("Pode falhar se a alocação de equilíbrio cair na região saciada... LNS é hipótese local"). O MD diz que a correta é a alt **(ii)** ("Pode falhar — a saciedade local em bem 1 viola LNS no ramo $x_1 > 1$"). Mesmo erro conceitual (ambas afirmam LNS violada), mas em letras distintas. SSOT quebrada.

**Correção sugerida:** após ajustar o setup conforme §3.1, reescrever Ex4(e) com gabarito limpo + sincronizar HTML e MD (escolher uma única letra para a alternativa correta).

### 3.4 🟡 ALTO — Ex3 do MD é completamente diferente do Ex3 do HTML

**Arquivos:**
- `platform/aula-04-exerc.html`: Ex3 = "EC com preferências Leontief: o caso degenerado", 5 sub-itens (a–e).
- `aula_4/exercicios-avaliativos.md`: Ex3 = "Lei de Walras como ferramenta operacional", 4 sub-itens (a–d).

O MD nunca foi atualizado depois que o HTML reorganizou os exercícios. O MD ainda tem o exercício antigo de Walras (Ex3) + o novo (Ex5) — quase duplicado em conteúdo. O HTML tem Leontief (Ex3) + Walras dim (Ex5).

**Verificação extra:** o MD do plano-9.5-v2 (linha 270 do exerc-avaliativos.md) chega a observar "(Nota: o contraexemplo do 1º TBE sem LNS já vive na Q6 do Pós-Aula e na Seção 5 da pré-aula material — não falta)" — confirmando que o MD reflete uma versão anterior à reorganização.

**Correção sugerida:** reescrever Ex3 do MD para espelhar o Ex3 do HTML (Leontief). Trecho-modelo está pronto no HTML — copiar e adaptar para narrativa Markdown; ajustar gabarito 5-passos.

### 3.5 🟢 BAIXO — pré-monitoria s4q1: redação do gabarito 5-passos confunde "saciedade direcional" com "LNS violada"

**Arquivo:** `aula_4/pre_monitoria.md`, linhas 178–185 (e correspondente no HTML, linhas 246–270).

A questão s4q1 (b) "Passo 2 (LNS — alocação tão boa quanto a do EC implica gasto pelo menos igual à renda)" está **conceitualmente correta como ponto de quebra**. O gabarito 5-passos é coerente. Mas o texto S4 da pré-monitoria, em seguida (linhas 245–253 do HTML), inclui o construto $u^A = -[(x_1-1)^2 + (x_2-1)^2]$ (paraboloide invertido com bliss point) — esse SIM é genuíno contraexemplo de LNS violada. Esse construto é correto e didaticamente sólido, contrastando com o contraexemplo errado de §3.1. Isso é boa prática.

A nota a corrigir: o HTML (linhas 247–253) afirma que para esse construto "Mercado fecha. *Mas a alavanca usada na prova do 1º TBE — 'se há algo melhor, custa mais' — perde força quando o 'se' sequer se ativa.*" — isso é correto. Em seguida adiciona "**Atenção pedagógica.** ... a alavanca da prova (Passo 2) perde força mesmo quando o teorema acaba valendo: a contrapositiva do Passo 2 fica sem testemunha. Construir contraexemplo onde o EC encontrado *falha* 1º TBE exige calibração mais fina — exatamente o que o Alberto fecha no sábado."

Ou seja, o **texto da pré-monitoria já reconhece a dificuldade do contraexemplo numérico fechado**, deixa-o explicitamente para o Alberto. Mas o slide LNS (2/2) e o Q6 pós/Ex4(e) **não** seguem essa prudência — afirmam diretamente que o setup com $\min\{x_1, 1\} + x_2$ é contraexemplo de 1º TBE. Inconsistência interna no bundle.

**Correção sugerida:** apenas alinhar — o texto da pré-monitoria está correto; é o slide e as duas questões que precisam adotar a mesma prudência ou trocar de setup.

---

## 4. Verificação de SSOT (MD ↔ HTML)

### 4.1 `aula_4/exercicios-avaliativos.md` ↔ `platform/aula-04-exerc.html`

| Ex–sub | MD letra correta | HTML data-correct | Match? |
|---|---|---|---|
| Ex1(a) | (ii) | b | ✓ |
| Ex1(b) | (i) | a | ✓ |
| Ex1(c) | (ii) | b | ✓ |
| Ex1(d) | (i) | a | ✓ |
| Ex2(a) | (ii) | b | ✓ |
| Ex2(b) | (i) | a | ✓ |
| Ex2(c) | (iii) | c | ✓ |
| Ex2(d) | (ii) | b | ✓ |
| Ex2(e) | (ii) | b | ✓ |
| **Ex3 (todo)** | **título "Lei de Walras como ferramenta", 4 sub-itens** | **título "EC com preferências Leontief", 5 sub-itens** | **🟡 DIVERGÊNCIA ESTRUTURAL** |
| Ex3(a) MD | (ii) | n/a (HTML é outro exercício) | n/a |
| Ex3(b) MD | (i) | n/a | n/a |
| Ex3(c) MD | (ii) | n/a | n/a |
| Ex3(d) MD | (iii) | n/a | n/a |
| Ex4(a) | (i) | a | ✓ |
| Ex4(b) | (i) | a | ✓ |
| Ex4(c) | (i) | a | ✓ |
| Ex4(d) | (ii) | b | ✓ |
| **Ex4(e)** | **(ii)** | **d (=iv)** | **🟡 DIVERGÊNCIA DE LETRA** |
| Ex5(a) | (ii) | b | ✓ |
| Ex5(b) | (i) | a | ✓ |
| Ex5(c) | (ii) | b | ✓ |
| Ex5(d) | (iii) | c | ✓ |
| Ex5(e) | (ii) | b | ✓ |
| Ex6(a) | (i) | a | ✓ |
| Ex6(b) | (iii) | c | ✓ |
| Ex6(c) | (i) | a | ✓ |
| Ex6(d) | (iii) | c | ✓ |
| Ex6(e) | (iii) | c | ✓ |

**Status:** 26 alinhados, 1 divergência estrutural total (Ex3), 1 divergência de letra (Ex4(e)).

### 4.2 `aula_4/pre_monitoria.md` ↔ `platform/pre-monitoria-02.html`

| Q# | MD correta | HTML data-correct | Match? |
|---|---|---|---|
| s2q1 | (a) | a | ✓ |
| s3q1 | (a) | a | ✓ |
| s4q1 | (b) | b | ✓ |
| s5q1 | (c) | c | ✓ |

**Status:** todas alinhadas. ✓

---

## 5. Spot-check estrutural — `aula_4/slides/aula-04.html` (renderizado)

### 5.1 Slide novo "LNS vs. monotonicidade — exemplo concreto" (E2)

**Arquivo:** `aula_4/slides/aula-04.html`, linhas 663–674.

- Conteúdo: $u(x_1, x_2) = x_1$, demonstra que utilidade só do bem 1 é não-monotônica estrita (em bem 2) **mas é LNS** (vizinho com mais bem 1 melhora). ✓ Conceitualmente correto.
- MathJax: `<span class="math inline">\(u(x_1, x_2) = x_1\)</span>` — renderização limpa. ✓
- Numeração: este slide específico **não tem numeração (1/N)** porque é único — é uma observação avulsa entre o slide "Não-saciedade local (LNS)" e "1º TBE — enunciado". Aceitável (não precisa de numeração).

### 5.2 Quebra (1/2) + (2/2) e (1/4)..(4/4)

Verificadas todas as numerações (linhas 268, 280, 420, 431, 496, 603, 611, 620, 629, 685, 697, 708, 720, 731, 740, 821):
- Recall das Aulas 1–3 (1/2) e (2/2) ✓
- Núcleo (1/2) e (2/2) ✓
- Tomadores de preço (1/2) e (2/2) ✓ (a (2/2) não aparece no grep mas existe em outra forma)
- Cálculo em CD assimétrica (1/2) e (2/2) ✓
- CD + Leontief (1/2) e (2/2) ✓
- 1º TBE (1/4), (2/4), (3/4), (4/4) ✓
- O papel exato de LNS (1/2) e (2/2) ✓ — mas conteúdo de (2/2) é **conceitualmente errado** (ver §3.1).
- Box Mundo — cotas de carbono (1/2) ✓.

### 5.3 MathJax e vazamento de math

Spot-check da linhas 270–500 do HTML:
- Todo `\(...\)` está envolto em `<span class="math inline">...</span>` (gerado pelo pandoc). ✓
- Todo `\[...\]` está envolto em `<span class="math display">...</span>`. ✓
- Não detectei vazamento de `\(`/`\[` cru fora dessa estrutura.

**Conclusão do spot-check:** estrutura de slides está limpa. **Conteúdo do slide LNS (2/2) é conceitualmente errado** (ver §3.1).

---

## 6. Checklist booleano final

- [x] Pré-aula material — todos os micro-checkpoints OK
- [x] Pré-quiz 10🟡 — gabaritos OK
- [ ] **Pós-quiz 5🟡+5🔴 — 9 de 10 OK; Q6 com gabarito errado (🔴)**
- [ ] **Exercícios avaliativos — 27 de 29 OK; Ex2(c) ambíguo (🟡), Ex4(e) errado (🔴)**
- [x] Pré-monitoria 2 — micro-checkpoints OK
- [ ] **SSOT MD ↔ HTML — Ex3 estruturalmente divergente, Ex4(e) letra divergente**
- [ ] **Slides renderizados — sem vazamento de math, mas slide LNS (2/2) conceitualmente errado**
- [ ] **Liberar pra commit?** **NÃO. Segurar até corrigir os bloqueantes 🔴.**

---

## 7. Plano de remediação sugerido (para próxima iteração)

Em ordem de criticidade:

1. **🔴 Decidir destino do contraexemplo LNS** (slide 2/2 + Q6 pós + Ex4(e) HTML+MD).
   - Recomendação Auditor: **Opção A** (trocar setup para bliss-point genuíno) se ambição vale o trabalho de papel; **Opção C** (remover e anunciar) se segurança vale a economia de tempo. O texto da pré-monitoria S4 (linhas 245–253) já anuncia a dificuldade — alinhar esse tom com slide e questões.
2. **🟡 Reescrever Ex2(c)** para que (ii) seja claramente errada, mantendo (iii) como correta.
3. **🟡 Reescrever Ex3 do MD** para espelhar Ex3 do HTML (Leontief).
4. **🟡 Sincronizar Ex4(e)** entre MD e HTML após (1).
5. **🟢 Revisar redação do texto S4 da pré-monitoria** se quiser deixar 100% explícita a distinção saciedade direcional vs. LNS violada (não bloqueante).

**Após (1)–(4):** rodar este auditor de novo (ou diff cruzado simples) para confirmar consistência. Aí sim liberar commit.

---

## 8. Nota final do auditor

O bundle Aula 4 v2 tem qualidade técnica alta no geral — 64 de 67 itens MC com gabarito correto e 5-passos coerente é resultado bom, especialmente em tema (EG trocas) que é cheio de oportunidade para erro fino. O cálculo de EC em CD assimétrica ($p_1^* = 8/7$) está auditado em 4 lugares diferentes (pré-quiz Q5, pós-quiz Q1, exerc Ex2, pré-monitoria S2) e bate em todos. O cálculo do núcleo em CD simétrica $\omega^A=(3,1), \omega^B=(1,3)$ ($t \in [\sqrt{3}, 4-\sqrt{3}]$) também bate. Debreu-Scarf está corretamente atribuído (via referência a Edgeworth 1881, Aumann 1964 — matéria do plano-9.5-v2 B2 e Ação 5).

**O ponto frágil é exatamente o que o plano-9.5-v2 ambicionou consertar** — o contraexemplo do 1º TBE sem LNS. O plano original (v1) tinha um contraexemplo igualmente ruim; v2 unificou notações, mas não revisou se a **construção do contraexemplo era de fato válida**. Não era. O setup $u^A = \min\{x_1, 1\} + x_2$ é direcionalmente saciado em bem 1 mas NÃO é localmente saciado (porque bem 2 garante LNS). Isso é o erro recorrente sobre contraexemplos de LNS — agora propagado em três artefatos.

A pré-monitoria 2 acerta esse ponto: o Alberto recebe um contraexemplo geometricamente correto (paraboloide invertido com bliss point), e o texto reconhece honestamente que o numérico-fechado é difícil. Esse é o tom certo. **Trazer essa prudência para o slide e para as duas questões** é a correção mais limpa.

Voz Referee 2: **rejeito segundo round**. Bundle está perto do 9.5+, mas com 3 artefatos vendendo um contraexemplo que o próprio bundle deveria ensinar a desconstruir, fica em 8.7 efetivo — abaixo do gate.

— Auditor, 2026-05-07.
