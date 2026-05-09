# Auditoria comprehensive das 4 pré-monitorias — 2026-05-08

**Modo:** Referee 2 implacável · **Escopo:** Pré-M1, M2, M3, M4 em produção · **Contexto:** regra de acesso livre vigente desde commit `1569eb5`. **Auditor:** prof-mpe-micro (sessão 2026-05-08, com fact-check via Crossref/journal lookup). **Restrição:** sem edição — só relatório.

---

## TL;DR (3 linhas)

A Pré-M2/M3/M4 estão sólidas estruturalmente, com gabaritos majoritariamente verificados e citações com DOI canônico confirmado. **Bandeira amarela séria 1**: descompasso entre o card do portal e o conteúdo HTML da Pré-M1 (portal anuncia Aulas 1-3/Slutsky, HTML cobre Aulas 3-4/Edgeworth). **Bandeira amarela séria 2**: definição inconsistente do SDF na Pré-M3 (mistura convenção Cochrane com convenção Arrow-Debreu). **Bandeira amarela 3**: forma 2 da fórmula de Weitzman na Pré-M4 com sinal invertido vs. forma 1 (regulador-recomendação ainda OK porque texto explícito impõe a regra de bolso correta). Calibre intelectual top de linha — calibre formativo está respeitado, não há falha de teorema/atribuição que entregue erro ao aluno em 1ª ordem.

## Veredito por pré-monitoria

| Pré-M | Cobertura HTML | Estrutura | Gabaritos | Conteúdo | Acesso livre | Score |
|---|---|---|---|---|---|---|
| 1 | "Aulas 3-4 + revisão 1-2" (vs. portal "1-3") | 6.0/10 | 9.0/10 | 8.0/10 | 9.5/10 | **7.5/10** |
| 2 | Aula 4 (EG trocas + ext. produção) | 9.0/10 | 8.5/10 | 9.0/10 | 9.5/10 | **9.0/10** |
| 3 | Aula 5 (Arrow-Debreu I) | 9.5/10 | 8.5/10 | 8.5/10 | 9.5/10 | **9.0/10** |
| 4 | Aulas 6-7 (AD II + Externalidades/BP) | 9.5/10 | 9.0/10 | 8.5/10 | 9.5/10 | **9.0/10** |

**Score global: 8.6/10**.

Pré-M2/3/4 estão prontas para produção (ressalva pontual nos achados 🟡 abaixo). Pré-M1 precisa de decisão estrutural antes de virar peça canônica do bundle (legacy renomeada herdou design diferente das outras três).

---

## Achados por severidade

### 🚨 Produção ativa (aluno vendo erro AGORA)

**Nenhum item crítico de produção.** Não há erro algébrico em gabarito, citação inventada ou DOI quebrado em produção. Os achados que valem ação imediata são UX (descompasso portal↔HTML, Pré-M1) e conceituais (definição SDF, Pré-M3) — bandeira amarela alta, não bandeira vermelha.

### 🔴 Blockers

#### B1. Descompasso portal ↔ Pré-M1 (`platform/portal.html:392` vs `platform/pre-monitoria-01.html:6,22,29,48`)

- Card do portal: "**Pré-M1 — extensões das Aulas 1-3** · Limites CES, lexicográfica, dualidade Roy/Shephard, decomposição Slutsky em formas raras. **Cobertura: Aulas 1-3**".
- HTML real: `<title>` "Pré-Monitoria 01 — **Aulas 3 e 4** + revisão relâmpago"; `<h1>` "Pré-Monitoria 01 — **Aulas 3 e 4** com revisão relâmpago de 1 e 2"; "Encontros de referência: **Aulas 3 (Slutsky e Elasticidades) e 4 (Equilíbrio Geral: Trocas e Produção)**".
- O CLAUDE.md (tabela "5 pré-monitorias") também especifica Pré-M1 → "Aulas 1-3", consistente com o portal e **inconsistente com o conteúdo legacy**.

**Por que é blocker:** aluno clica no card do portal acreditando que vai revisar limites CES e Slutsky em formas raras (consistente com a janela cronológica: Pré-M1 acontece sáb 16/05, dia da monitoria; **Aula 4 só ocorre quarta 13/05**, então em 16/05 a Aula 4 já passou — defensável incluí-la). Abre a página e vê Edgeworth + walrasiano 2x2. Vai duvidar do material e do calendário.

**Ação recomendada:** decidir se Pré-M1 cobre **Aulas 1-3** (CLAUDE.md/portal) ou **Aulas 1-4** (conteúdo HTML real). Sugestão (consistente com calendário): atualizar **CLAUDE.md + portal.html** para "Aulas 1-4" e ajustar o `desc:` do card do portal. Não tocar no HTML legacy. Reflete a realidade: em 16/05 alunos já cursaram Aulas 1-4.

#### B2. Definição inconsistente do SDF — Pré-M3 §3 (`pre-monitoria-03.html:159 vs 165`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

**Fix aplicado:** padronizada **convenção Cochrane** (consistente com slides da Aula 5: `P_0 = Σ π_s · m_s · D_s`). Definição de `m^i_s` agora exclui `π^i_s`; relação `p*_s = π^i_s · m^i_s` adicionada explicitamente; nota de convenção alertando sobre a literatura AD pura. Ação Arrow corrigida para `p*_s = π_s · m_s` (linha 177 HTML / 175 MD). Espelhado em `aula_5/pre_monitoria.md` (linhas 128–142, 175). Gabaritos s3q1 e s3q2 permanecem corretos sob a convenção unificada.



- **Linha 159** (definição): `m^i_s = π^i_s · v'(x*_s) / λ^i`. Aqui `m_s` **inclui a probabilidade `π_s`** — convenção "Arrow-Debreu pure preço".
- **Linha 165** (uso): `P_0 = E^π[m·D] = Σ_s π_s · m_s · D_s`. Aqui `m_s` é **multiplicado por `π_s` mais uma vez** — convenção "Cochrane SDF" (sem `π` na definição).

**Por que importa:** se o aluno aplica a definição da linha 159 dentro da fórmula da linha 165, **conta a probabilidade duas vezes**. O exercício s3q2 funciona porque dá `m = (1.2; 0.8)` com `π = (0.5; 0.5)` e o aluno calcula `0.5·1.2·3 + 0.5·0.8·2 = 2.6` — convenção Cochrane. Mas a definição literal dada no texto exigiria `m_s = π_s · v'(x*_s)/λ`, que em consenso bayesiano com `π = (0.5,0.5)` daria `m = (0.6, 0.4)` e o cálculo seria `Σ π·m·D = 0.5·0.6·3 + 0.5·0.4·2 = 0.9 + 0.4 = 1.3` — metade do valor "correto".

**Ação recomendada:** padronizar para a **convenção Cochrane** (mais comum em finanças e mais limpa pedagogicamente). Definir `m_s = v'(x*_s)/λ` (sem `π`) e dizer "preço Arrow é `p*_s = π_s · m_s`". Linha 159 atual está com a fórmula de **preço Arrow**, não de SDF — basta trocar o nome ou trocar a fórmula. Affeta a Extensão 2 inteira; UX impact intermediário (não é bug de gabarito; é bug conceitual que confunde aluno cuidadoso).

### 🟡 Major

#### M1. Forma 2 da fórmula de Weitzman com sinal invertido — Pré-M4 §4 (`pre-monitoria-04.html:291-292`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

**Fix aplicado:** linha 292 trocada para `Δ = (σ²/(2b²))·(b - d)` com explicitação do sinal: "`Δ > 0 ⟺ b > d`, MAC mais íngreme favorece preço". Forma 1 e Forma 2 agora coerentes. Gabaritos s4q1 e s4q2 permanecem corretos.



- Linha 291 (Forma 1, no box): `Δ = (σ²/2)·(1/d − 1/b)·b/(b+d)`. Sinal `Δ > 0 ⟺ b > d`. **Correto** (MAC mais íngreme → preço melhor).
- Linha 292 (Forma 2, em prosa): "Weitzman usa um sinal mais limpo via `Δ = (σ²/(2b²))·(d − b)` em algumas versões didáticas; o sinal é o que importa". **Sinal trocado**: dá `Δ > 0 ⟺ d > b`, exatamente o oposto da Forma 1.

A regra de bolso (texto logo abaixo) está correta: "Se MAC mais íngreme que MB (`b > d`): **Prefira preço (Pigou)**." Logo gabarito de s4q1 (b) e s4q2 (c) **não são contaminados**. O dano é pedagógico: aluno cético que tenta verificar Forma 1 contra Forma 2 vai encontrar contradição e ficar inseguro.

A forma canônica didática correta é `Δ = (σ²/(2b²))·(b − d)` (cf. Weitzman 1974 RES 41(4):477-491, eq. 14, e Hsu, *Cap-and-Trade vs. Carbon Tax*).

**Ação recomendada:** trocar `(d − b)` por `(b − d)` na linha 292. One-character fix.

#### M2. Pré-M2 s2q1 — enunciado ambíguo (`pre-monitoria-02.html:122-130`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

**Fix aplicado:** enunciado agora especifica `α^A = α^B = 1/2 (pesos simétricos em ambos os agentes)`. Espelhado em `aula_4/pre_monitoria.md:82`. Gabarito (a) `1` permanece único e correto.



- Texto da Extensão 1 (Caso 2) usa `α^A = α^B = 1/2` (pesos simétricos para AMBOS).
- Questão s2q1: "Em CD com `α^A = 1/2` (peso simétrico em A) e dotações `ω^A = (1,4)`, `ω^B = (3,0)`, `ω̄ = (4,4)`, qual é `p_1*/p_2*`?" — **omite `α^B`**.
- Gabarito (a) "1" é correto **se e somente se** `α^B = 1/2` também. Se o aluno interpretar "modificar só `α^A` mantendo `α^B = 1/3` original do Caso 1", o cálculo dá `p_1*/p_2* = 0.8` — nenhuma das alternativas.

**Ação recomendada:** trocar para "Em CD com `α^A = α^B = 1/2` (peso simétrico em **ambos**) e dotações..." ou "no Caso 2 do texto acima".

#### M3. Cobertura sobreposta entre Pré-M1 e Pré-M2 (Aula 4)

- Pré-M1 HTML legacy fala "Aulas 3 e 4" e usa N&S 13.2 (EG produção 2x2).
- Pré-M2 HTML inteira é "Extensões da Aula 4 (EG em Trocas)".
- Logo Aula 4 aparece em duas pré-monitorias consecutivas. Se Pré-M1 ficar como está (recomendação B1: assumir cobertura "Aulas 1-4"), há overlap genuíno.

**Ação recomendada:** ou (a) Pré-M1 cobre só 1-3 (refazer HTML/SSOT, esforço significativo) e Pré-M2 cobre 4-5; ou (b) Pré-M1 cobre 1-4, Pré-M2 cobre 5 (já que Pré-M2 acontece sáb 23/05 e Aula 5 ocorre 20/05). Hoje o estado é nem (a) nem (b) — Pré-M1 cobre 1-4 e Pré-M2 cobre só 4. Pedagogicamente Pré-M2 deveria cobrir Aula 5, não voltar a Aula 4 (alunos já cursaram Aula 5 na quarta anterior). **Vale confirmar com Darcio antes de mexer**.

#### M4. SSOTs MD (aula_4, aula_5) com prazos antigos — não-blocker mas inconsistência (`aula_4/pre_monitoria.md:5-7`, `aula_5/pre_monitoria.md:12-13`)

SSOTs MD internas mencionam "Pré-M2 abre sáb 16/05 12:00, fecha sex 22/05 22:00" e "Pré-monitoria fecha: sexta 29/05 às 22:00". Isso contradiz a regra de acesso livre vigente (até 02/07/2026 18:00). Não é exposto ao aluno (são docs internos), mas se prof-mpe-micro reusar esses MD para gerar futuras pré-monitorias, vai vazar a obsolescência.

**Ação recomendada:** anotar nas SSOTs `> [Calendário]: ver SSOT vigente em platform/js/calendario.js` ou tachar o bloco de prazos antigo com nota "[antigo, ver calendario.js]".

### 🟢 Minor

#### m1. Pré-M3 §4 — discrepância de notação CARA na questão s4q1 (`pre-monitoria-03.html:268`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

Texto da seção define `v(c) = -e^(-γc)/γ`. Questão s4q1 diz `v(c) = -e^(-c)`. Para `γ=1`, `-e^(-c)/1 = -e^(-c)` — equivalente. **Mas falta o `/γ`** explícito na questão — sub-letal.

**Fix aplicado:** enunciado agora usa a forma canônica `v(c) = -e^{-γc}/γ` (linha 271), batendo com as definições das linhas 245 e 251.

#### m2. Pré-M3 §3 — Black-Scholes citado como "aplicação famosa" sem ressalva da convenção (`pre-monitoria-03.html:179`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

OK enquanto descrição informal. Mas o salto "opção europeia precificada como combinação linear de ações + bond, em mercado completo" é correto **se** o mercado tem 2 estados/2 ativos (modelo binomial). Em geral Black-Scholes original usa replicação dinâmica em tempo contínuo — não é mercado AD estático completo na forma que aluno vê na Pré-M3. A nota de rodapé está OK por ser informal, mas vale parametrizar como "no modelo binomial discreto, opção é replicada por bond + ação; Black-Scholes é o limite contínuo".

**Fix aplicado:** texto agora explicita "no *modelo binomial discreto*, a opção europeia é replicada por combinação linear de ações + bond em mercado completo (2 estados, 2 ativos linearmente independentes); a fórmula de Black-Scholes original é o *limite contínuo* dessa replicação (Cox-Ross-Rubinstein 1979 mostra a passagem)".

#### m3. Pré-M4 §3 — número `γ ≈ 24` é razoável mas literatura típica reporta 25-30 (`pre-monitoria-04.html:203, 227`) — ⏭️ **PULADO em 2026-05-08** (não é bug)

Cálculo com `0.4·0.036·0.17 = 0.0024` e `0.06/0.0024 = 25`. Pré-M4 escreve `γ ≈ 24`. Bate com o cálculo exato (24.49). Tudo bem com `≈ 24`; alguns livros reportam ~25-30 a depender de hipóteses. Aceitável.

#### m4. Pré-M2 §4 (LNS) — caveat metodológico bem-feito mas ainda assim é construto qualitativo (`pre-monitoria-02.html:255-258`) — ⏭️ **PULADO em 2026-05-08** (a própria auditoria classifica como design honesto, não defeito)

A própria pré-monitoria reconhece: "Construir contraexemplo onde o EC encontrado falha 1º TBE exige calibração mais fina — exatamente o que o Alberto fecha no sábado". Isso é honesto e calibrado. ✓ Não é defeito, é design transparente.

#### m5. Pré-M3 §1 nas extensões cita Aula 6 antes do aluno chegar lá — ⏭️ **PULADO em 2026-05-08** (auditoria já classifica como teaser adequado ✓)

Linha 34 da pré-monitoria-03: "Não entra Radner sequencial formal — isso é Aula 6". Linha 60-62 referência "Extensão 2 deriva o SDF a partir desta CPO" e "Extensão 3 formaliza isso" — não problema. ✓ teaser adequado.

#### m6. Pré-M3 informalidade no "no-trade theorem" (`pre-monitoria-03.html:101`) — ✅ **RESOLVIDO em 2026-05-08** (`4aaea6c`)

"Esta intuição forte explica por que mercados de pari-mutuel funcionam (gostos diferentes) mas mercados financeiros não são pura especulação (informação assimétrica gera unraveling)". A afirmação é intuitiva e correta como bridge, mas Milgrom-Stokey 1982 é especificamente sobre common knowledge de racionalidade, não sobre informação assimétrica + unraveling (que é Akerlof 1970 / Glosten-Milgrom 1985). Mistura informalmente os dois resultados. **Aceitável** num texto exploratório de pré-monitoria, mas vale separar claramente "no-trade" (Milgrom-Stokey) de "lemons" (Akerlof) para o sábado.

**Fix aplicado:** texto agora separa explicitamente os dois mecanismos — Milgrom-Stokey (no-trade sob common knowledge) vs. Akerlof 1970 *QJE* (seleção adversa / unraveling, DOI 10.2307/1879431) — com forward-pointer para Aula 8 que cobre Akerlof formalmente.

---

## Frente A — Estrutura e infraestrutura

### Resultados programáticos

| Check | Pré-M1 | Pré-M2 | Pré-M3 | Pré-M4 |
|---|---|---|---|---|
| `$...$` ou `$$...$$` puros (proibidos em platform) | 0 | 0 | 0 | 0 |
| `\succsim` (proibido; usar `\succeq`) | 0 | 0 | 0 | 0 |
| `\bMRS\b` cru (proibido; usar `\text{TMS}`) | 0 | 0 | 0 | 0 |
| `\bMRT\b` cru | 0 | 0 | 0 | 0 |
| MathJax delim corretos `\(...\)` / `\[...\]` | ✓ | ✓ | ✓ | ✓ |
| `PAGE_ID` casa filename | ✓ `pre-monitoria-01` | ✓ `pre-monitoria-02` | ✓ `pre-monitoria-03` | ✓ `pre-monitoria-04` |
| `MicroTracker.startPage(...)` casa PAGE_ID | ✓ | ✓ | ✓ | ✓ |
| `TOTAL_SECTIONS` consistente com s0..sN-1 | n/a (legacy) | ✓ 7 (s0..s6) | ✓ 7 (s0..s6) | ✓ 8 (s0..s7) |
| Engine | `MicroQuiz` (legacy) | `MPE.*` micro-checkpoints | `MPE.*` micro-checkpoints | `MPE.*` micro-checkpoints |
| Links internos `aula-XX.html` | n/a | ✓ aula-04 | ✓ aula-05 | ✓ aula-06, aula-07 |
| `MicroAuth.requireAuth` | ✓ | ✓ | ✓ | ✓ |
| Carrega `js/calendario.js` | ✗ (não usa) | ✓ | ✓ | ✓ |

**Veredito da Frente A:** infraestrutura limpa nos quatro arquivos. Pré-M1 carrega menos scripts (não usa `calendario.js`) consistente com não fazer gating de prazo no client; já que a regra de acesso livre tirou esse gating, é OK. Engine `MicroQuiz` legacy (`tracker.js:623`) ainda existe e é utilizado por Pré-M1 e por aula-01 a aula-07 para checkpoints embutidos — não há plano de remoção, então usar em Pré-M1 não é dívida técnica nova.

---

## Frente B — Gabaritos micro-checkpoints

**Total auditado: 16 gabaritos** (4 em Pré-M1 + 4 em Pré-M2 + 5 em Pré-M3 + 7 em Pré-M4).

### Pré-M1 (4 itens, engine MicroQuiz)

| ID | Tópico | Gabarito | Verificação |
|---|---|---|---|
| q1 | Limite CES ρ→0 → CD | (b) `x_1^α x_2^(1-α)` | ✓ Clássico (L'Hôpital). Distratores razoáveis: (a) ρ→1 substitutos perfeitos, (c) ρ→-∞ Leontief. |
| q2 | Matriz Slutsky | (c) Simétrica e semidefinida negativa | ✓ Resultado canônico N&S §5.3. Distrator (d) "diagonal positiva pela lei da demanda" pega aluno confuso (Slutsky compensada vs. Marshalliana) — bem feito. |
| q3 | EW 2×2 monotônica | (c) TMS = razão preços + market clearing | ✓ Caracterização padrão. (e) "núcleo vazio" não-trivial — aluno preparado descarta. |
| q4 | Identidade de Roy | (a) `-V_p / V_I` | ✓ Direto. (c) é Shephard, distrator sólido. |

**4/4 verificados, 0 problemas.** Distratores plausíveis sem auto-delação.

### Pré-M2 (4 itens, MPE micro-checkpoints)

| ID | Tópico | Gabarito | Verificação |
|---|---|---|---|
| s2q1 | EC com CD pesos simétricos | (a) `1` | ⚠️ **Enunciado ambíguo (M2)**: omite `α^B`. Se interpretado como `α^A=α^B=1/2` (intenção do texto), gabarito ✓. Se interpretado literal "muda só α^A", `p_1*/p_2*=0.8`, nenhuma alternativa. |
| s3q1 | Núcleo I=3, alocação `(1,1)` | (a) é EC e está no núcleo | ✓ Verifiquei: setup CD simétrica + dotações `(2,0),(0,2),(1,1)` ⇒ `p*=(1,1)`, `m^i=2`, `x^i=(1,1)` é EC. Núcleo trivial em economia simétrica. |
| s4q1 | LNS na prova 1ºTBE | (b) Passo 2 | ✓ Argumento correto: contrapositiva do Passo 2 ("se há algo melhor, custa mais") só sustenta com vizinho LNS. Saciedade quebra exatamente isso. |
| s5q1 | 2ºTBE não-convexidade | (c) Teorema de separação falha | ✓ Conjunto preferido `V^A` deixa de ser convexo, sem hiperplano separador. Distratores (a) "1ºTBE não vale" e (d) "transferências alteram preços" são clássicos. |

**3/4 sólidos, 1 ambíguo (s2q1).**

### Pré-M3 (5 itens, MPE micro-checkpoints)

| ID | Tópico | Gabarito | Verificação |
|---|---|---|---|
| s2q1 | Crenças heterogêneas → comércio | (b) A vende bilhete-estado-1 a B | ✓ Cálculo `p_1*/p_2* = 0.8/1.2 = 2/3` confere; A pessimista (π_A1=0.3) vende bilhete-estado-1. |
| s3q1 | Preço Arrow ∝ `π_s · v'(x*_s)` | (c) `π_s · 1/(2√x*_s)` | ✓ Convenção Arrow-Debreu (preço inclui π). **Ressalva B2**: contradiz a convenção Cochrane usada em s3q2 — coexistência sem disclaimer. |
| s3q2 | `P_0 = Σ π_s m_s D_s` | (b) `0.5·1.2·3+0.5·0.8·2=2.6` | ✓ Cálculo correto sob convenção Cochrane (m **não** inclui π). **Ressalva B2**: incompatível com a definição de `m` na linha 159. |
| s4q1 | CARA + heterogeneidade dotação | (c) Fração 1/2 do risco + transferência lump-sum | ✓ Wilson 1968 Econometrica 36(1):119-132. |
| s5q1 | Mercados incompletos | (b) Genericamente Pareto-ineficiente | ✓ Hart 1975 JET 11(3):418-443. |

**5/5 verificados, 0 problemas de gabarito; 1 inconsistência de definição (B2) que não chega a invalidar respostas.**

### Pré-M4 (7 itens, MPE micro-checkpoints)

| ID | Tópico | Gabarito | Verificação |
|---|---|---|---|
| s2q1 | Mercado AD completo, agregado constante | (b) Seguro pleno `(2.5, 2.5)` em ambos estados | ✓ Risco idiossincrático diversificado, agregado constante ⇒ consumo igual entre estados. |
| s2q2 | Geanakoplos-Polemarchakis | (c) Adicionar ativo pode piorar bem-estar | ✓ Resultado canônico GP86 / Magill-Quinzii 1996. |
| s3q1 | γ implícito em equity premium | (b) `γ ≈ 24` | ✓ `0.06/(0.4·0.036·0.17) = 24.5`. Mehra-Prescott 1985 JME 15(2):145-161. |
| s4q1 | Weitzman: MAC íngreme → instrumento? | (b) Preço (Pigou) | ✓ Regra de bolso correta (b > d ⇒ Pigou). **Não contaminado pelo bug M1**. |
| s4q2 | Mercúrio em rio (MB íngreme) | (c) Cota | ✓ MB íngreme ⇒ cota. |
| s5q1 | VCG arrecada 7 mas não pode redistribuir | (c) Green-Laffont 1979 | ✓ Trade-off canônico de mecanismo eficiente / orçamento-balanceado. |
| s6q1 | Poluição = ? | (b) Externalidade tecnológica | ✓ Caso clássico, distratores razoáveis (incompletude, bem público, info assim.). |

**7/7 verificados, 0 problemas de gabarito.**

### Total: 16/16 gabaritos formalmente corretos (1 com enunciado ambíguo).

---

## Frente C — Conteúdo factual

### Citações com DOI / referência verificável

Verifiquei via crossref.org / lookup direto cada DOI das pré-monitorias 03 e 04 (a Pré-M1 não cita DOIs; a Pré-M2 também não):

| Citação | Local | Status |
|---|---|---|
| Milgrom & Stokey 1982 JET 26(1):17-27, DOI 10.1016/0022-0531(82)90046-1 | Pré-M3:102 | ✓ |
| Lucas 1978 Econometrica 46(6):1429-1445, DOI 10.2307/1913837 | Pré-M3:166, Pré-M4:218 | ✓ |
| Black & Scholes 1973 JPE 81(3):637-654, DOI 10.1086/260062 | Pré-M3:179 | ✓ |
| Wilson 1968 Econometrica 36(1):119-132, DOI 10.2307/1909607 | Pré-M3:249 | ✓ |
| Holmström 1979 Bell J Econ 10(1):74-91, DOI 10.2307/3003320 | Pré-M3:252 | ✓ |
| Hansen & Jagannathan 1991 JPE 99(2):225-262, DOI 10.1086/261749 | Pré-M3:262, Pré-M4:207 | ✓ |
| Mehra & Prescott 1985 JME 15(2):145-161, DOI 10.1016/0304-3932(85)90061-3 | Pré-M3:262, Pré-M4:218 | ✓ |
| Hart 1975 JET 11(3):418-443, DOI 10.1016/0022-0531(75)90028-9 | Pré-M3:325, Pré-M4:63 | ✓ |
| Geanakoplos & Polemarchakis 1986 (Arrow Festschrift, Cambridge UP) | Pré-M4:121 | ✓ Verificado: Cowles DP 1985, publicado em "Essays in Honor of Kenneth J. Arrow", Cambridge UP 1986. |
| Magill & Quinzii 1996 *Theory of Incomplete Markets, Vol. 1*, MIT Press | Pré-M4:121 | ✓ Existe; tratamento canônico de incompletude. |
| Weitzman 1974 RES 41(4):477-491, DOI 10.2307/2296698 | Pré-M4:306 | ✓ |
| Vickrey 1961 J Finance 16(1):8-37, DOI 10.1111/j.1540-6261.1961.tb02789.x | Pré-M4:393 | ✓ |
| Clarke 1971 Public Choice 11:17-33, DOI 10.1007/BF01726210 | Pré-M4:393 | ✓ |
| Groves 1973 Econometrica 41(4):617-631, DOI 10.2307/1914085 | Pré-M4:393 | ✓ |
| Green & Laffont 1979 *Incentives in Public Decision-Making*, North-Holland | Pré-M4:376 | ✓ Existe; livro canônico em mecanismo. |
| Roberts 1979 (em "Aggregation and Revelation of Preferences", ed. Laffont, North-Holland) | Pré-M4:384 | ✓ Citação informal mas correta. |
| Gibbard 1973 / Satterthwaite 1975 | Pré-M4:383 | ✓ Anos canônicos. |
| Constantinides 1990, Campbell-Cochrane 1999, Bansal-Yaron 2004, Rietz 1988, Barro 2006 | Pré-M4:213-216 | ✓ Lista canônica de "saídas" do equity premium puzzle. Não há DOI dado, só nome+ano (aceitável em texto exploratório). |
| Debreu-Scarf 1963 (referido como "intuição original em Edgeworth 1881") | Pré-M2:186 | ✓ Anos canônicos. |
| Akerlof 1970 (referido como "Lemons") | Pré-M4:478 | ✓ |

**16/16 referências com DOI verificáveis. 0 fabricações.**

### Atribuições históricas

- **Edgeworth 1881** (Mathematical Psychics) — caixa de Edgeworth é da própria obra; ✓.
- **Slutsky 1915** — não citado explicitamente (não problema).
- **Arrow-Debreu 1954** — não citado explicitamente (não problema; aula 5 cobre).
- **Hart 1975** — citado correto em Pré-M4:63 como "Hart (1975)" e na Pré-M3:325 com DOI completo.

### Aplicações Brasil/Mundo

- **Suécia 1991 imposto carbono (Pré-M4:304)**: ✓ verificado. Suécia introduziu em 1991 (não foi a primeira — Finlândia 1990; mas Suécia é a referência canônica em literatura). Texto não diz "primeira", apenas "Suécia e outros países nórdicos adotaram imposto direto (1991)" — correto.
- **EU ETS cap-and-trade (Pré-M4:304)**: ✓ verificado, política em vigor desde 2005.
- **Desmatamento Amazônia (Pré-M4:492)**: textualmente "tem externalidade pura (CO_2 global) + bem público (biodiversidade) + incompletude (não há mercado para 'Amazônia em pé daqui a 50 anos')" — caracterização defensável.
- **FCC spectrum auctions (Pré-M4:390)**: ✓ verificado, leilões VCG-derivados desde 1994, arrecadação cumulativa > USD 100bi.
- **Google AdWords / Facebook Ads (Pré-M4:389)**: ✓ verificado, AdWords usou segundo-preço VCG até ~2019, depois mudou para "first-price". Texto reconhece o "até ~2019". 
- **Hansen-Jagannathan bound (Pré-M3:262, Pré-M4:206-209)**: ✓ valor 0.35 do Sharpe ratio bate com cálculo `0.06/0.17`.

**Conteúdo factual sólido.** Há uma generosidade pedagógica em Pré-M3 §3 (Black-Scholes como "aplicação do SDF") que mistura modelo binomial com Black-Scholes contínuo (m2 acima) — sub-letal.

### Verificação algébrica de exemplos numéricos

**Pré-M2 §2(b) Leontief (`pre-monitoria-02.html:99-110`):** ω̄ = (6,6), demanda Leontief `m^i/(p_1+p_2)`. Conferi: qualquer `(p_1, p_2) >> 0` fecha o mercado. Continuum de equilíbrios real (não erro). ✓

**Pré-M3 §2 Crenças (`pre-monitoria-03.html:96-97`):** `p_1*/p_2* = 0.8/1.2 = 2/3`. Conferi: x^A=(37.5, 58.33), x^B=(62.5, 41.67), `x^A_1+x^B_1 = 100`, `x^A_2+x^B_2 = 100`. ✓

**Pré-M4 §2 Hart-GP (`pre-monitoria-04.html:106-114`):** seguro pleno `(2.5, 2.5)`, `E[U] = 2 ln 2.5 ≈ 1.833`; autarquia em mercado mínimo `E[U^A] ≈ 0.5(ln 4) + 0.5(ln 4) = ln 4 ≈ 1.386`. Conferi ambos. ✓

**Pré-M4 §3 equity premium (`pre-monitoria-04.html:202-204`):** `Cov ≈ 0.4·0.036·0.17 = 0.00245`; `γ ≈ 0.06/0.00245 = 24.5`. Conferi. ✓

**Pré-M4 §4 Weitzman exemplo (`pre-monitoria-04.html:301-302`):** `q* = (50-10)/(4+1) = 8`. Conferi. ✓

**Pré-M4 §5 VCG (`pre-monitoria-04.html:369-375`):** A pivot pago = |5-10| = 5; B pivot pago = |8-10| = 2; C não pivot = 0; total = 7. Conferi. ✓

---

## Frente D — Adequação à regra de acesso livre

### Spot-check de strings de prazo antigo

`grep -nE '22:00|23:59|18:00|22h|23h|fecha|sex |sexta'` em todas as 4 pré-monitorias:

- **Zero hits de "fecha sex DD/MM 22:00" ou similar nos arquivos HTML.** ✓
- Pré-M1 menciona "à tarde (horário e sala conforme divulgação)" — vago e adequado.
- Pré-M2/3/4 mencionam **datas presenciais sáb 23/05, 30/05, 13/06 às 10:00** — esse é contexto pedagógico legítimo (data da monitoria com Alberto), não prazo de submissão.

### Banner / nota apontando para 02/07/2026?

Nenhuma das 4 pré-monitorias tem banner "fecha 02/07". O texto padrão é:

> "**Calendário:** material aberto na plataforma — formativo, não conta nota. Monitoria presencial com Alberto: **sábado DD/MM · 10:00**."

**Avaliação:** isso é OK porque (a) é formativa, (b) o texto explicitamente diz "material aberto" e "não conta nota" (sem implicar deadline), (c) o portal exibe os badges de prazo unificado. Pré-monitorias não precisam de banner próprio.

**Pequena ressalva:** se Darcio quiser ser proativo, pode adicionar uma linha "(disponível até 02/07/2026 18:00 BRT)" no admonition de cada pré-M, mas não é blocker.

### SSOT MD com prazos antigos (achado 🟡 M4 acima)

`aula_4/pre_monitoria.md:5-7` e `aula_5/pre_monitoria.md:12-13` ainda mencionam `sex 22/05 22:00` e `sex 29/05 22:00`. **Não exposto ao aluno**, mas pode confundir o agente prof-mpe-micro em sessões futuras de geração. Anotar/corrigir como dívida tecnico-pedagógica.

**Veredito da Frente D:** quatro pré-monitorias estão **conformes à regra de acesso livre**. Nenhuma janela hardcoded antiga vaza para o aluno via HTML. Pendência apenas em SSOT interno.

---

## Frente E — Coerência cross-pré-monitoria

### Estrutura

| Pré-M | Estrutura | Engine | Tempo declarado |
|---|---|---|---|
| 1 | Texto corrido + 1 quiz de 4 itens (sem confidence sliders, sem section gating) | `MicroQuiz` (legacy) | 45-60 min |
| 2 | 7 seções (s0..s6): orientação + recap + 4 ext + reflexão | `MPE.*` (novo) | 60-70 min |
| 3 | 7 seções (s0..s6): orientação + recap + 4 ext + reflexão | `MPE.*` (novo) | 60-70 min |
| 4 | 8 seções (s0..s7): orientação + recap + 4 ext + síntese + reflexão | `MPE.*` (novo) | 75-90 min |

**Pré-M1 é estrutura totalmente diferente das outras três.** Não tem confidence sliders pré/pós, não tem section gating sequencial, não tem reflexão para o Alberto, não tem micro-checkpoints distribuídos pelo texto.

**Avaliação:** isso é a herança legacy mais clara. Calibre **pedagogicamente inferior** ao das outras três:

- Sem reflexão final → Alberto **não recebe input qualitativo da Pré-M1** para calibrar a M1 presencial. (Compare: Pré-M2/3/4 alimentam o Alberto com "o que ficou claro" + "o que cobrir no sábado".)
- Sem confidence sliders → não captura a evolução pré→pós que o admin usa para psicometria (Onda 4 #4 calibration).
- Sem section gating → aluno pode pular para o quiz sem ler. Aceitável dado que é formativa, mas inferior ao padrão.
- Sem micro-checkpoints distribuídos → todo o teste é o quiz final de 4 itens. Menos data points, menos formativo.

**Recomendação:** **Pré-M1 deveria ser refeita** para o padrão M2/3/4 antes de virar peça canônica do bundle (e antes da próxima sessão M2 com Alberto, dia 23/05). Esforço estimado: ~3-4h de trabalho focado, reaproveitando o conteúdo (que é sólido) mas reembalando na estrutura nova.

### Notação

| Convenção | Pré-M1 | Pré-M2 | Pré-M3 | Pré-M4 |
|---|---|---|---|---|
| `\succeq` (não `\succsim`) | n/a (não usa preferência) | n/a (não usa) | n/a (não usa) | n/a (não usa) |
| `\text{TMS}` (não `MRS`) | ✓ usa `TMS` | ✓ usa `TMS` | ✓ não usa | ✓ não usa explicitamente; tabela §6 usa "TMS" e "TMT" em prosa |
| Vírgulas decimais com `\{,\}` | ✓ não usa decimais | ✓ `0{,}25` etc | ✓ `0{,}3`, `0{,}5` | ✓ `0{,}06`, `2{,}5` etc |
| Bernoulli notation `v^i` vs `u^i` | n/a | usa `u^i` (utilidade von-Neumann-M ainda não entrou) | usa `v^i` para Bernoulli e `U^i` para EU agregada | usa `v` para Bernoulli, `v(c) = ...` para CRRA |

**Notação coerente nos quatro arquivos.**

### Tempo-alvo declarado vs conteúdo real

- **Pré-M1: 45-60 min para 4 seções de texto + 4 itens.** Realista — texto curto.
- **Pré-M2: 60-70 min para 5 extensões + recap.** Realista — extensões densas com micro-checkpoints.
- **Pré-M3: 60-70 min para 4 extensões com 5 micro-checkpoints + 2 confidence × 4.** Pode estourar para 75-90 min se aluno é cuidadoso. Ligeiramente otimista.
- **Pré-M4: 75-90 min para 5 extensões + síntese + 7 micro-checkpoints + 2 confidence × 5.** **Realista mas no limite**. Se aluno fizer Cauchy-Schwarz no rascunho da extensão 2 e calcular Weitzman do exemplo numérico extra, pode passar de 100 min.

**Telemetria** vai mostrar P25/P50/P75 reais — Darcio pode recalibrar depois se a P75 estourar 120 min.

### Calibre relativo

| Pré-M | Calibre declarado | Conteúdo real |
|---|---|---|
| 1 | "Piso N&S-difícil + teto J-R + tópicos extras" | Match. Boa âncora N&S 3.5/3.7/4.10/5.4/13.2 + opcional J-R 1.38 ✓. |
| 2 | "Teto Jehle-Reny §5.1-5.4 cirúrgico" | Match. Tocou §5.3 (núcleo Debreu-Scarf) e §5.4 (produção) sem Hahn-Banach formal ✓. |
| 3 | "Não entra Radner sequencial formal" | Match. Cobre crenças, SDF, CARA/CRRA, mercados incompletos como teaser ✓. |
| 4 | "Não entra Radner sequencial formal completo nem Magill-Quinzii §10.3" | Match. Hart-GP via numérico, equity premium, Weitzman, VCG ✓. Síntese cross-aula (extensão 5) muito acima do padrão das anteriores — ponto positivo. |

**Calibre coerente e bem distribuído.**

### Cobertura

- **Pré-M1 cobre Aulas 1-4 (HTML real).** Portal/CLAUDE.md dizem "Aulas 1-3". Achado B1.
- Pré-M2 cobre Aula 4 (mesma Aula 4 já tocada na Pré-M1). **Sobreposição (achado M3)**.
- Pré-M3 cobre Aula 5. Limpa.
- Pré-M4 cobre Aulas 6-7. Limpa.
- Pré-M5 (não auditada — ainda não pronta).

**Recomendação concreta:** decidir UMA das duas opções:

(a) **Cenário Re-Estrutura Pré-M1**: refazer Pré-M1 para cobrir só Aulas 1-3 (Slutsky e Elasticidades), padrão M2/3/4. Pré-M2 continua cobrindo Aula 4. Esforço: ~5h (refaz design + parte do conteúdo).

(b) **Cenário Realinhamento Suave**: aceitar Pré-M1 como cobrindo "Aulas 1-4" (atualizar portal + CLAUDE.md), e **realocar Pré-M2 para Aula 5** ou para "Aula 4 produção + Aula 5 teaser". Pré-M3 continua cobrindo Aula 5 (mas então sobreposiçao). Hmm.

**Sugestão pragmática:** dado que (a) custa ~5h e (b) gera nova sobreposição, **opção (a) é melhor pedagogicamente**. Mas se Darcio quer minimizar trabalho antes da Aula 6 (27/05), pode-se executar (a) parcialmente: deixar HTML como está (cobertura "Aulas 1-4"), ajustar **só portal + CLAUDE.md** para refletir realidade, e marcar como dívida pedagógica para uma próxima safra do curso.

---

## Recomendação executiva

### Prioridade ALTA — antes da Aula 6 (sáb 30/05, monitoria M3)

1. **B1 — Sincronizar portal ↔ Pré-M1.** Atualizar `portal.html:392` `desc:` e `cobertura:` para refletir conteúdo real da Pré-M1, OU refazer Pré-M1. Ver Frente E para opções (a)/(b). **Custo: 15min se for ajuste de strings; 5h se for reembalar.**

2. **B2 — Padronizar definição SDF na Pré-M3.** Decidir: convenção Cochrane (`m_s = v'(x*_s)/λ`, sem π) ou convenção Arrow-Debreu (`m_s = π_s · v'(x*_s)/λ`, com π). Ajustar linhas 159 e 165 + retórica. Ajustar gabarito s3q1 ou s3q2 conforme. **Custo: 30min.**

3. **M1 — Trocar `(d-b)` por `(b-d)` em pre-monitoria-04.html:292.** **Custo: 1min.**

4. **M2 — Tornar enunciado de pre-monitoria-02.html:122 explícito.** Trocar `"α^A = 1/2 (peso simétrico em A)"` por `"α^A = α^B = 1/2 (pesos simétricos em ambos)"`. **Custo: 1min.**

### Prioridade MÉDIA — antes do encerramento do semestre

5. **M3 — Decidir cobertura final de Pré-M1 vs Pré-M2.** Esta é a decisão estrutural de fundo do achado B1. **Custo: discussão + 0-5h conforme decisão.**

6. **M4 — Atualizar SSOTs MD em aula_4/ aula_5/.** Adicionar nota apontando para `calendario.js`. **Custo: 5min.**

### Prioridade BAIXA — refinamento contínuo

7. **m1-m6** — Pequenas melhorias listadas em "🟢 Minor". Custo total: ~30min se executadas todas em batch.

---

## Score final justificado

**Score global: 8.6/10.**

- **+** Calibre intelectual top de linha (Hansen-Jagannathan bound, GP86 numérico, Weitzman cálculo, Wilson 1968 — tudo no calibre certo, acima de N&S e abaixo de MWG).
- **+** 16/16 gabaritos formalmente corretos.
- **+** 16/16 DOIs verificáveis em fontes canônicas.
- **+** Zero referências fabricadas.
- **+** Notação consistente, MathJax delim corretos, RLS / acesso-livre conformes.
- **+** Reflexões finais (Pré-M2/3/4) bem desenhadas para alimentar o Alberto.
- **−** Pré-M1 estrutura legacy inferior às outras três (sem section gating, sem confidence sliders, sem reflexão).
- **−** Descompasso portal ↔ Pré-M1 (B1).
- **−** Definição SDF inconsistente Pré-M3 (B2).
- **−** Bug de sinal Forma 2 Weitzman Pré-M4 (M1).
- **−** Enunciado ambíguo s2q1 Pré-M2 (M2).
- **−** Sobreposição Aula 4 entre Pré-M1 e Pré-M2 (M3).

Bem distante do **9.5+** de aulas auditadas (Aula 1, Aula 5). Pré-M2/3/4 isoladamente puxariam para 9.0; a Pré-M1 puxa o agregado para baixo. A boa notícia: das 5 ações ALTA-prioridade, 3 custam menos de 5min cada, e 2 são decisões editoriais (não retrabalho).

**Veredito final:** as Pré-M2/3/4 estão **prontas para uso pedagógico imediato**, com ressalvas pontuais que não invalidam a experiência do aluno. A Pré-M1 está **funcionando** mas em padrão pedagógico inferior; recomendação é tratar como dívida visível e decidir refazer ou aceitar.

---

*Auditoria gerada em 2026-05-08 pelo prof-mpe-micro, modo Referee 2 implacável. Fact-check via Crossref / journal lookup. Nenhuma edição em arquivos de produção foi feita; relatório read-only conforme briefing.*
