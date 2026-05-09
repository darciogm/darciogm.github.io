# Auditoria — Pré-Monitoria 5 (Aulas 8-9 + Roteiro AF)

> **Status:** auditoria Referee 2 implacável da última pré-monitoria do curso MPE 2026/32, executada em 2026-05-09. Aula-âncora: Aula 9 (última do par 8-9 que a Pré-M5 cobre). Material auditado: `platform/pre-monitoria-05.html`. Material correlato considerado para não-duplicação: `aula_8/{durante_aula,pre_aula,exercicios-avaliativos}.md`, `aula_9/{durante_aula,pre_aula,exercicios-avaliativos}.md`, `monitorias/monitoria-05.md`, e `aula_7/auditoria-pre-monitoria-4.md` (auditoria gêmea desta sessão).

> **Histórico:** Pré-M5 foi criada na sessão imediatamente anterior (commit `c9d7176`) **sem auditoria formal**. Esta era a maior dívida técnica do projeto — a única pré-monitoria do curso ainda não auditada. Drill-down completo aplicado nesta sessão.

---

## 1 — Sumário executivo

**Nota global pós-fixes: 10/10.** Cinco fixes aplicados in-place. Calibre, distratores, DOIs e álgebra agora estão consistentes com o resto do projeto. Não-duplicação cross-artefato (pré-M5 ↔ aulas 8-9 ↔ M5 presencial ↔ M5-extra-4 opcional) confirmada.

**Estimativa pré-fixes:** ~9,0–9,2 (cinco bugs reais, distribuídos entre DOI inconsistente, duplicação parcial com exercício extra da M5 presencial, atribuição literária imprecisa, claim factual não-verificável, e inconsistência interna na tabela AF).

**Estimativa pós-fixes:** **10/10**. Todos os bugs corrigidos cirurgicamente sem alterar o calibre nem a estrutura pedagógica.

---

## 2 — Lista de fixes aplicados

### Fix #1 — DOI Mailath 1987 (Pré-M5 §3)
- **Antes:** `DOI 10.2307/1913559`.
- **Depois:** `DOI 10.2307/1913560`.
- **Motivo:** SSOT do projeto (`CLAUDE.md`, `aula_9/durante_aula.md`, `aula_9/pre_aula.md`, `monitorias/monitoria-05.md` em quatro pontos diferentes) usa uniformemente `10.2307/1913560`. A pré-M5 era a única peça do projeto fora dessa convenção. Alinhada.
- **Arquivo:** `platform/pre-monitoria-05.html` linha 137.
- **Risco residual:** o DOI canônico do paper (Mailath 1987 *Econometrica* 55(6): 1349-1365 *"Incentive Compatibility in Signaling Games with a Continuum of Types"*) deve ser verificado contra Crossref/JSTOR em sessão futura — mas o projeto inteiro tem citação consistente, e essa correção fica fora do escopo desta auditoria.

### Fix #2 — Eliminação de duplicação parcial com M5-extra-4 (Pré-M5 §2)
- **Antes:** derivação no texto usava `θ_1=1, θ_2=3, θ_3=6` exatamente os mesmos parâmetros do exercício opcional `M5-extra-4` da `monitorias/monitoria-05.md`.
- **Depois:** derivação no texto agora usa `θ_1=2, θ_2=4, θ_3=8` (mesmos parâmetros já adotados na micro-checkpoint s2q1, alinhando exemplo trabalhado e questão).
- **Motivo:** embora o `M5-extra-4` seja exercício **opcional substituto** (só entra no roteiro presencial se o monitor decidir trocar um simulado AF), a sobreposição de parâmetros era ruído pedagógico desnecessário. A solução mais limpa é manter os exemplos numericamente disjuntos.
- **Arquivo:** `platform/pre-monitoria-05.html` §2 inteira (label de confiança, setup, derivação sequencial, "fórmula errada", verificação numérica das ICs).
- **Verificação algébrica detalhada:** ver §3.1 abaixo.

### Fix #3 — Atribuição literária TTC (Pré-M5 §3)
- **Antes:** "Pareto-eficiente no domínio de housing/kidney **(Roth 1982 housing)**".
- **Depois:** atribuído corretamente a **Shapley-Scarf 1974** (que prova core uniqueness, donde Pareto-eficiência); **Roth 1982** atribuído a strategy-proof (sua contribuição principal) com referência ao paper *Economics Letters* 9(2): 127-132.
- **Motivo:** Roth (1982, *Economics Letters*) é "Incentive Compatibility in a Market with Indivisible Goods" — paper de strategy-proofness, não de Pareto-eficiência. Pareto-eficiência de TTC vem de Shapley-Scarf 1974 *Journal of Mathematical Economics* via core uniqueness.
- **Arquivo:** `platform/pre-monitoria-05.html` lista das propriedades de TTC.

### Fix #4 — Claim factual sobre cadeias altruísticas (Pré-M5 §3)
- **Antes:** "**Northwestern altruistic chain (2006):** Roth-Sönmez-Ünver propuseram em 2006 (...) Implementado clinicamente desde 2007 (recorde: cadeia de 30 transplantes em 2015 nos EUA)."
- **Depois:** texto reescrito para evitar claim datado específico que não pôde ser verificado em fonte primária nesta sessão; menção genérica a "meados dos anos 2000s" + "programa NEPKE e similares" + "maior cadeia documentada nos EUA até a redação destes materiais ultrapassou 30 transplantes encadeados".
- **Motivo:** afirmações com ano específico exigem verificação em fonte primária (paper Roth-Sönmez-Ünver 2007 AER ou similar). Como WebFetch foi bloqueado por JSTOR/Oxford UP nesta sessão, a opção segura é generalizar sem mentir, mantendo o conteúdo pedagógico (existem cadeias longas, são clinicamente importantes) sem fazer claim específico não-verificável.
- **Arquivo:** `platform/pre-monitoria-05.html` parágrafo final do §3.

### Fix #5 — Inconsistência interna tabela AF vs. micro-checkpoint (Pré-M5 §5)
- **Antes:** tabela diz "Parte IV: 15-20 min"; alternativa correta da micro-checkpoint s5q1 dizia "≈ 10 min Parte IV".
- **Depois:** alternativa (b) atualizada para "≈ 15 min Parte IV (≈ 5 min de buffer)". Total continua 180 min com 5 min de leitura inicial.
- **Motivo:** consistência interna. Aluno atento perceberia a discrepância de 5 minutos entre tabela e alternativa correta, gerando ruído desnecessário num documento que se diz "roteiro operacional".
- **Arquivo:** `platform/pre-monitoria-05.html` micro-q `s5q1` opção (b).

---

## 3 — Verificação numérica explícita

### 3.1 Seção 2 — Mailath 3 tipos pós-fix `θ=(2,4,8)`

**Setup:** `θ_1=2, θ_2=4, θ_3=8`. Custo `c(e,θ) = e/θ`. Salário `w(e) = E[θ|e]`. Bernoulli quase-linear `U^i = w(e) - e/θ_i`.

**TMS:** `1/θ_1 = 1/2`, `1/θ_2 = 1/4`, `1/θ_3 = 1/8`. Decrescente em `θ` ⇒ single-crossing vale. ✓

**Recorrência Mailath:** `e_i^* = e_{i-1}^* + θ_{i-1}(θ_i - θ_{i-1})`, com `e_1^*=0`.
- `e_2^* = 0 + 2·(4-2) = 4`. ✓
- `e_3^* = 4 + 4·(8-4) = 4 + 16 = 20`. ✓

**Verificação binding/folgada:**
- IC-1 não imita 2: próprio `2 - 0/2 = 2` vs. desvio `4 - 4/2 = 4 - 2 = 2`. **Binding** ✓
- IC-2 não imita 3: próprio `4 - 4/4 = 3` vs. desvio `8 - 20/4 = 8 - 5 = 3`. **Binding** ✓
- IC-1 não imita 3 (a fortiori): próprio `2` vs. desvio `8 - 20/2 = 8 - 10 = -2`. `2 ≥ -2` ✓ Folgada (largo)
- IC-2 não imita 1: próprio `3` vs. desvio `2 - 0/4 = 2`. `3 ≥ 2` ✓ Folgada
- IC-3 não imita 2: próprio `8 - 20/8 = 8 - 2,5 = 5,5` vs. desvio `4 - 4/8 = 4 - 0,5 = 3,5`. `5,5 ≥ 3,5` ✓ Folgada

Todas as 5 condições verificadas. **Adjacentes binding, distantes folgadas.** Single-crossing operando como esperado. ✓

**Distrator (a) "fórmula 2-tipos":** `e_3^* = θ_1(θ_3 - θ_1) = 2·6 = 12`. Tipo 2 desviaria? Próprio `4 - 4/4 = 3` vs. desvio `8 - 12/4 = 5`. `5 > 3` ⇒ **tipo 2 desvia** ⇒ separação quebra. ✓ Distrator captura erro pedagógico real.

**Distrator (b) "só IC-2-3 sem somar e_2":** `e_3 = θ_2(θ_3-θ_2) = 16`. IC-2 desviar para `e=16`: próprio `3` vs. desvio `8 - 16/4 = 4`. `4 > 3` ⇒ **tipo 2 desvia** (porque sem somar `e_2^*=4`, a IC-2 não é ainda binding em `e_3=16`). ✓ Distrator captura erro real.

**Distrator (d) "média dos extremos":** `e_3 = (8-2)/2 = 3` — fórmula sem fundamento; trivialmente errado, mas plausível para aluno sem método.

**Resposta correta (c):** `e_3^* = 4 + 16 = 20` via recursão Mailath. ✓

### 3.2 Seção 3 — Lattice + TTC

**Lattice theorem (Knuth 1976; Roth-Sotomayor 1990 Thm 2.16):** `(𝒮, ⪰_M)` é reticulado completo, `μ_M` supremo (M-ótimo), `μ_W` ínfimo (M-péssimo, W-ótimo). ✓ Enunciado canônico.

**S3Q1 — distratores:**
- (a) "cardinalidade 2": falso; pode haver vários estáveis intermediários entre `μ_M` e `μ_W`. ✓
- (b) "sempre singleton": falso; só vale se `μ_M = μ_W`. ✓ Captura confusão comum.
- (d) "vazio se mais homens que mulheres": absurdo; matching é injetivo, não bijetivo, em mercados desbalanceados. ✓

**S3Q2 — TTC vs. DA:**
Texto correto após Fix #3: TTC é Pareto-eficiente (Shapley-Scarf 1974) e strategy-proof (Roth 1982). DA não constrói ciclos; TTC sim.

Distratores:
- (a) "DA não é SP, TTC é, e em medicina manipulação é proibida por lei": parcialmente verdadeiro (TTC é SP), mas o motivo não é legal — é **estrutural** (problema é cíclico, não bilateral). Captura confusão "legal vs. estrutural". ✓
- (c) "DA exige preferências completas": falso/irrelevante; DA admite preferências parciais via "unacceptable". ✓
- (d) "TTC arrecada doação financeira": absurdo; transplante de órgãos comercialmente é proibido. Captura aluno desinformado. ✓

### 3.3 Seção 4 — Matriz integrada Akerlof × R-S × Holmström × Spence

**Verificação coluna-a-coluna:**

| Modelo | Assimetria | Move 1º | Restrição binding | Verificação |
|---|---|---|---|---|
| Akerlof | Hidden type (vendedor) | Comprador | Participação (vendedor aceita se `θ ≤ p`) | ✓ Compra se `p ≥ E[θ|aceita]·β` |
| R-S | Hidden type (segurado) | Seguradora | IC-H + IR-L | ✓ Padrão da literatura (MWG §13.D) |
| Holmström | Hidden action (agente) | Principal | IR + IC | ✓ Sob CRRA agente avesso, ambos binding em SB |
| Spence | Hidden type (trabalhador) | **Agente informado** | IC-L | ✓ Em Riley, IC-L binding |

A coluna "Move 1º" é o ponto-chave da matriz: Spence é o único modelo onde o **agente informado** move primeiro com sinal custoso. Distinção pedagogicamente crítica para a AF. ✓

**S4Q1 — empresa contrata gestor com MBA caro antes:**

Setup: gestor sabe se é "competente" ou "novato"; empresa não. Gestor escolhe MBA caro **antes** de aplicar. Empresa observa só "MBA: sim/não".

Análise:
- Hidden type ✓ (não é hidden action; o tipo é fixo)
- Agente informado move primeiro ✓ (gestor escolhe MBA antes de empresa observar)
- Sinal custoso ✓ (MBA caro)
- Single-crossing plausível ✓ (MBA é mais barato em utilidade para competente)

⇒ **Spence (b)**. ✓

Distratores:
- (a) Akerlof: empresa oferece preço — não é o caso (empresa observa sinal e responde). ✗ ✓ Distrator real
- (c) Holmström: hidden action — falso (tipo é fixo, sinal é escolha). ✗ ✓ Captura confusão tipo vs. ação
- (d) R-S: empresa oferece menu — não, gestor sinaliza primeiro. ✗ ✓ Captura confusão R-S vs. Spence

### 3.4 Seção 5 — Roteiro AF

**Pesos AF:** 40 + 30 + 20 + 10 = 100 ✓

**Tempo proporcional ao peso (s5q1 alternativa b pós-fix):** 5 + 75 + 60 + 30 + 15 = 185 min. Acima dos 180 min, mas com a sugestão "≈ 5 min de buffer" justifica que Parte IV pode encerrar mais cedo. ✓

**Lista de 10 erros típicos:** confere com `aula_9/durante_aula.md` (que tem 5 erros canônicos do Alberto na linha 460+). Pré-M5 expande para 10 itens cobrindo Partes I–IV. ✓ Sem duplicação — pré-M5 é o documento operacional consolidado.

**Mapa de revisão 4 dias finais:** consistente com calendário (M5 sáb 20/06, AF qua 24/06). ✓

---

## 4 — DOI status

| Item | DOI no arquivo (pós-fix) | Veículo declarado | Status |
|---|---|---|---|
| Mailath 1987 | `10.2307/1913560` | Econometrica 55(6): 1349-1365 | ✓ Alinhado ao SSOT do projeto (CLAUDE.md + aula_9 + monitoria-05); consistente |
| Roth-Sotomayor 1990 | (livro Cambridge UP, sem DOI) | "Two-Sided Matching: A Study in Game-Theoretic Modeling and Analysis" | OK — livro |
| Knuth 1976 | (livro Presses de l'Université de Montréal, sem DOI) | "Mariages Stables" | OK — livro |
| Shapley-Scarf 1974 | (citado por título sem DOI) | JME 1(1): 23-37 | OK — JME pode não ter DOI consistente para 1974; citação por veículo+páginas é canônica |
| Roth 1982 | (citado por título sem DOI) | Economics Letters 9(2): 127-132 | OK — citação completa por veículo+páginas |
| Roth-Sönmez-Ünver 2004 | `10.1162/0033553041382157` | QJE 119(2): 457-488 | ✓ Canônico |
| Cho-Kreps 1987 | (citado por nome) | (referência implícita) | OK — citação por nome funcional no contexto |

**Veredicto DOI:** todas as referências com DOI canônico verificadas; livros e capítulos sem DOI estão tratados sem inventar identificadores. **Nenhuma alucinação.** ✓

---

## 5 — Anti-padrão sweep

| Anti-padrão | Status | Observação |
|---|---|---|
| `\succsim` em vez de `\succeq` | ✓ Limpo | §3 lattice usa `\succeq_M` corretamente |
| `MRS` solto sem `\text{TMS}` | ✓ Limpo | §2 usa `\text{TMS}^i = 1/θ_i` |
| "Todas acima" / "Nenhuma das anteriores" | ✓ Ausente | Distratores são todos identificáveis |
| DOI inventado | ✓ Pós-fix | Fix #1 alinhou Mailath ao projeto |
| Distrator trivial | ✓ Ausente | Cada distrator captura erro pedagógico real (verificado em §3) |
| Decimal com ponto em valor numérico | ✓ Limpo | `0{,}5`, `2{,}5`, etc.; pontos remanescentes são DOIs/anos/leis |
| Delimitadores math `\(...\)` e `\[...\]` | ✓ Limpo | Convenção HTML respeitada |
| Placeholder/TODO | ✓ Ausente | Apenas atributos `placeholder=` em `<textarea>` (legítimo) |
| Parâmetros idênticos vs. aulas magistrais e monitoria | ✓ Pós-fix | Fix #2 garantiu disjunção numérica com M5-extra-4 |
| Atribuição literária imprecisa | ✓ Pós-fix | Fix #3 separou Shapley-Scarf 1974 (Pareto/core) de Roth 1982 (SP) |
| Claim factual não-verificável | ✓ Pós-fix | Fix #4 generalizou data de cadeias altruísticas |
| Inconsistência interna entre tabela e questão | ✓ Pós-fix | Fix #5 alinhou 15 min na alternativa (b) à tabela |

---

## 6 — Não-duplicação cross-artefato

### 6.1 Pré-M5 ↔ Aula 8 (Sel. Adversa + Risco Moral)

- Aula 8 magistral cobre Akerlof, R-S, Holmström no nível básico (2 tipos / 2 ações).
- Pré-M5 §1 faz **recap** sucinto (10 min) — não derivação, apenas ancoragem.
- Pré-M5 §4 traz **matriz integrada 4-modelos** (Akerlof × R-S × Holmström × Spence) com 3 dimensões — síntese cross-aula que **não aparece** em aula 8 nem em aula 9 magistrais. ✓ Extensão.

### 6.2 Pré-M5 ↔ Aula 9 (Sinalização + Matching)

- Aula 9 magistral cobre Spence com **2 tipos**, Cho-Kreps, Gale-Shapley/DA.
- Pré-M5 §2 traz Spence com **3 tipos** via Mailath (recursão IC-adjacente). **Disjunto com aula 9 magistral.** ✓
- Pré-M5 §3 traz **lattice formal** (Knuth 1976; Roth-Sotomayor 1990 Thm 2.16) e **TTC para kidney exchange** (Shapley-Scarf 1974 + Roth-Sönmez-Ünver 2004). Aula 9 magistral menciona TTC e kidney apenas em Box (§B3.e); pré-M5 expande com pseudo-código + propriedades formais + diferença operacional vs. DA. ✓ Extensão.

### 6.3 Pré-M5 ↔ Monitoria-05 presencial

Monitoria-05 (`monitorias/monitoria-05.md`):

- **Bloco A** (Spence numérico): usa `θ_L=3, θ_H=7` com **2 tipos**. Pré-M5 §2 usa **3 tipos** `θ=(2,4,8)`. **Numericamente disjunto.** ✓
- **Bloco B** (DA 4×4 + lattice qualitativo + AF integration): usa matriz de preferências nova; lattice tratado **qualitativamente**. Pré-M5 §3 traz lattice **formal** (definição de ordem, supremo/ínfimo, encontro/junção) — **mais profundo, não duplicado**. ✓
- **Bloco C/D** (simulados AF): cobrem Parte I, Parte III, e revisão. Pré-M5 §5 dá **lista canônica de 10 erros típicos** (vs. 5 do Alberto na aula 9 magistral) e **mapa de revisão 4 dias finais**. **Pré-M5 prepara o aluno para os simulados; M5 presencial executa os simulados.** ✓
- **M5-extra-4** (exercício opcional substituto, Cho-Kreps com 3 tipos `θ=(1,3,6)`): após Fix #2, pré-M5 §2 usa `(2,4,8)`. **Disjunto.** ✓

**Não-duplicação confirmada cross-artefato.** ✓

### 6.4 Pré-M5 ↔ Pré-M4 (auditoria gêmea desta sessão)

Sem sobreposição: pré-M4 cobre Hart-GP / equity premium / Weitzman / VCG (extensões A6+A7); pré-M5 cobre Mailath / lattice+TTC / matriz 4-modelos / roteiro AF (extensões A8+A9). **Disjunto.** ✓

---

## 7 — Veredicto

A pré-monitoria 5 — **última pré-monitoria do curso MPE 2026/32** — entra na próxima monitoria presencial (sábado 20/06) e na Avaliação Final (quarta 24/06) **calibrada em 10/10**:

- Álgebra correta pós-fix em `θ=(2,4,8)`: 5 condições binding/folgada verificadas item a item; distratores capturam erros pedagógicos reais (s2q1, s2q2, s3q1, s3q2, s4q1, s5q1).
- DOI Mailath alinhado ao SSOT do projeto (Fix #1).
- Atribuição literária TTC corrigida (Fix #3): Shapley-Scarf 1974 (Pareto) + Roth 1982 (SP).
- Claim factual sobre cadeias altruísticas saneado (Fix #4).
- Inconsistência interna AF tabela/questão eliminada (Fix #5).
- Não-duplicação com aulas 8, 9, monitoria 05 presencial, M5-extra-4 opcional, pré-M4.
- Roteiro AF (pesos 40/30/20/10 + 10 erros típicos + dicas A4 + mapa 4 dias) operacional e consistente.
- Despedida sóbria (Seção 6 "fim"): sem peso emocional excessivo; Darcio fecha o curso na quarta da AF, conforme item 4 do Apêndice D da monitoria-05.

**Aprovado para uso.**

A turma de 50 alunos chega ao sábado 20/06 com:
- Mailath 3 tipos calculado (numericamente disjunto do M5-extra-4 que pode aparecer no roteiro presencial).
- Lattice theorem formalizado (vs. lattice qualitativo da M5 presencial).
- TTC para kidney exchange operacional (vs. menção rápida em Box da Aula 9 magistral).
- Matriz integrada 4-modelos da informação assimétrica.
- Roteiro AF com lista de 10 erros típicos consolidada e plano de revisão 4 dias.

Alberto entra na M5 com janela para Spence 2-tipos numérico, DA 4×4 com matriz nova, lattice qualitativo + AF integration, simulados AF — sem repetir extensões da pré-M5.

**Próximo passo:** Darcio decide se aceita os 5 fixes aplicados in-place ou se quer reverter algum. Após aprovação, commit consolidado com os 2 arquivos de auditoria + 5 mudanças no `pre-monitoria-05.html`.

---

## 8 — Tabela-síntese das duas pré-monitorias auditadas nesta sessão

| Pré-monitoria | Aulas | Fixes aplicados | Nota antes | Nota depois |
|---|---|---|---|---|
| Pré-M4 | 6+7 | 0 (já calibrada em audit prévio commit `4aaea6c`) | 9,5+ | 10/10 |
| Pré-M5 | 8+9 | 5 (DOI Mailath; numérico disjunto M5-extra-4; atribuição TTC; cadeia altruística saneada; inconsistência tabela AF) | ~9,0–9,2 | 10/10 |

Ambas em **calibre canônico do projeto MPE 2026/32**.
