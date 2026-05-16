# Auditoria do painel do aluno MPE — 2026-05-15

**Auditor:** prof-mpe-micro (modo Referee 2)
**Escopo:** `platform/js/portal-ondax.js` (1133 linhas), `platform/js/iaad.js` (326 linhas), `platform/portal.html` (921 linhas), `platform/aula-04.html` (amostra de página de aula), integração com RPCs IAAD (`get_iaad`, `get_iaad_class_distribution`) e demais helpers (`MpeDB`, `tracker.js`, `calendario.js`).
**Calibre:** rigor matemático + plumbing + consistência com IAAD SSOT (Postgres) + privacidade LGPD.
**Data:** 2026-05-15.

---

## Sumário executivo

**Veredito geral: AT RISK — pior que o dashboard admin.** O portal tem **três bugs S5** que mentem para o aluno (não para o Darcio), o que é pedagogicamente mais grave: o aluno toma decisões com base no que vê. Em particular, **o bug master de escala confidence [1,5]→[0,100] que foi corrigido no admin via `_confTo100` está VIVO no `portal-ondax.js:637`** — o aluno recebe um diagnóstico "🧊 Tendência a subestimar · ECE ~57%" em quase todo render, fato. O segundo bug grave é a **divergência silenciosa entre `stat-done` (topo do portal) e `c_geral_aulas_full` (card IAAD)**: dois números diferentes, mostrados na mesma tela, para o conceito "aulas integralmente concluídas". O terceiro é o **`firstTry` no topo do portal** que ignora `phase`/`difficulty` e mistura tudo, divergindo da `P` do IAAD que filtra `phase IN ('pre_review','post','graded_exercise')` — também dois números diferentes para o que parece ser a mesma coisa. Privacidade: o ponto crítico esperado (vazamento cross-user via JS) **não se confirmou** — RLS no DB segura, e o frontend pede por `auth.uid()` corretamente. Mas há uma **gambiarra defensiva preocupante**: `renderOnda1()` e `IAAD.fetchAndRender()` rodam antes de o modal LGPD ter sido aceito (`portal.html:890,893`), o que é tecnicamente permitido pelo schema (a leitura é de dado do próprio aluno) mas viola o espírito da política de privacidade exibida ao aluno na mesma página.

- **N de funções/widgets auditados:** 17 funções públicas em `portal-ondax.js` + 6 em `iaad.js` + 8 widgets/handlers em `portal.html` + 1 amostra em `aula-04.html` = **32 unidades**.
- **Distribuição de severidade:** S5 = 3 · S4 = 8 · S3 = 9 · S2 = 7 · S1 = 5.
- **Top-3 problemas críticos:**
  1. **S5 — Bug de escala confidence em `portal-ondax.js:637,646`.** O aluno recebe diagnóstico errado de calibração (sempre "under-confident, ECE ~57"). É o **mesmo bug master** que envenenou a Onda 4 do admin e foi corrigido lá; o portal foi esquecido. Pior do que no admin porque o aluno **vê o badge personalizado** e age sobre isso.
  2. **S5 — Divergência `stat-done` (portal.html:606,738) × `c_geral_aulas_full` (iaad.js:216,228).** Ambos pretendem mostrar "aulas integralmente concluídas". Definição local: 4 componentes done. Definição IAAD: 6 itens done. Em geral os dois não batem — aluno vê **`Aulas completas: 2`** no topo e **`1 / 9 aulas integralmente cumpridas`** no card IAAD da mesma tela. Cria desconfiança e dúvida sobre qual número entra na nota.
  3. **S5 — `firstTry` no portal (`computeFirstTryAccuracy`, portal.html:402–416) inclui `phase=embedded` e micro-checkpoints implicitamente.** O `P` do IAAD-30 (`iaad_performance_raw`, migration 2026-05-09:121–132) filtra `phase IN ('pre_review','post','graded_exercise')`. Resultado: dois números visíveis na mesma tela — `Acerto 1ª: 78%` no topo (badge) e `Performance · peso 20% · 6.20 / 10 · 62%` no card IAAD. O aluno vai (corretamente) perguntar qual é o "real". A resposta tem que ser "o do IAAD, porque é o que entra na nota" — mas o portal não diz isso.

- **Top-3 acertos elogiáveis:**
  1. **IAAD render path é SSOT-puro.** `iaad.js:159` (`IAAD.render`) consome `get_iaad` cru e só formata. Zero recalibração client-side. O `cell()` em `renderBreakdown` (linha 129–135) só desenha ●/◐/· lendo `done` e `in_window` do RPC. Caminho impecável: se o cálculo está certo no DB, o aluno vê certo; se vier zerado, o aluno vê zero. Sem disfarce.
  2. **Histograma da turma (`IAAD.histogram`, iaad.js:52–116) consome `c_geral_values/c_prazo_values/p_values/iaad_values` que vêm como ARRAYS SEM `user_id`** (RPC `get_iaad_class_distribution`, migration 2026-05-09:353–417). Anonimato by-design no caminho que tinha o maior risco de vazamento. Frontend não tem como vazar nem que quisesse.
  3. **`PortalOndax.stepStatus` (linha 209–244) usa `getJanelaCanonica`** (não mais `getPrazo`), correção pós-auditoria de prazos. Estados open/closed/locked agora refletem janela canônica IAAD. Foco da semana e contagem de "atrasados" começam a fazer sentido — caminho consistente com o admin pós-fix.

- **Comparação com auditoria do admin (`auditoria-dashboard-2026-05-15.md`):**
  - O portal está **pior em três frentes**: (a) bug master de escala confidence **ainda vivo** (no admin foi corrigido via `_confTo100`); (b) há **mais inconsistências entre métricas visíveis** porque o portal mostra IAAD e cálculo local lado a lado, enquanto o admin tinha cada métrica em sua aba; (c) o `stat-streak` do portal usa uma fórmula **mais antiga** que a corrigida no admin pelo commit `dd5e433` (admin agora inclui `section_progress.completed_at` + `confidence.recorded_at` + `micro_attempts.answered_at`; portal ainda só lê `pages.lastVisit/firstVisit` e `quizzes.questions.attempts[].timestamp`).
  - O portal está **melhor em uma frente**: o caminho IAAD-puro do card (sem recalibração client-side) é o exemplo do que o admin **deveria** fazer mas não faz (`computeCalibration`, `computeConfidencePoints`, etc., recomputam tudo no JS).
  - O portal está **na mesma estatura** em janela canônica (já corrigido), gating de submissão (correto, igual ao admin), e modal de LGPD/senha (igual).

---

## Achados por componente

Ordem: pipeline de dados → IAAD card → portal-ondax (E3, E2, E4, E8, ritmo) → portal.html widgets → tracker.js integração → privacidade transversal.

---

### Pipeline de dados

#### `PortalOndax.loadMyData` + `_localToUnified` — `portal-ondax.js:40–124`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que faz:** Tenta `MpeDB.fetchMyDataAll()` (Supabase); em qualquer falha (rede, RLS, exception), cai para `_localToUnified` (MicroTracker localStorage).

**Problema(s):**
1. **Fallback silencioso muda a fonte da verdade sem avisar o aluno.** Se o Supabase está fora do ar, o aluno vê seu progresso só do que está no localStorage daquele navegador — pode estar muito mais atrasado que o que o admin vê. Não há banner "estamos offline, dados parciais".
2. **`fetchMyDataAll` NÃO traz `reflections.response_text`/`response_draft_text`** (linha 562, filtro de colunas exclui campos do admin). Bom para privacidade. Mas se a estratégia do portal evoluir para mostrar "sua reflexão foi respondida por X", terá que adicionar `response_text` ao filtro.
3. **`_localToUnified` perde `confidence`, `paperExercises`, `reflections` e `microAttempts`** se o aluno acessa pela primeira vez naquele navegador sem ter logado em outro: o tracker local nunca registrou estes nas linhas 80–123 (não há iteração sobre `mine.confidence` nem `mine.microCheckpoint`). Resultado: aluno offline vê `Calibração: sem dados` mesmo tendo respondido coisas em outro navegador (ou pré-Supabase). Não é bloqueador, mas a degradação não é honesta — diz "sem dados" em vez de "modo offline incompleto".
4. **Sem deduplicação** entre Supabase e localStorage. Se um dia o `loadMyData` for evoluído para mergear, vai gerar entradas duplicadas em `confidence_ratings` (mesma página/seção/fase, dois registros).

**Hipótese silenciosa:** Supabase ↔ localStorage são equivalentes. Falso.

**Recomendação:** banner discreto "modo offline, dados parciais — não impacta nota" quando `myData.source === 'local'`. Completar `_localToUnified` para popular `confidence`, `microAttempts`, `paperExercises`, `reflections` a partir do mesmo localStorage.

---

#### `MpeDB.fetchMyDataAll` — `mpe-db.js:542–580`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. 9 selects em paralelo, todos com `.eq('user_id', uid)`. Privacidade defendida no JS *e* no DB (RLS adicional). Caminho dobrado-seguro.
2. **Sem `.order()`** em `quiz_question_attempts`, `micro_attempts`, etc. O admin foi corrigido recentemente (commit dd5e433); aqui o portal vai sofrer do **mesmo bug**: `buildCalibration` (`portal-ondax.js:617–623`) faz "primeira tentativa por (page,question)" via comparação de timestamps, mas se os timestamps vêm fora de ordem do DB, o lógica é só "primeira na ordem que o DB devolveu". Bug não dispara em quizzes "uma única submissão" (1 attempt), mas dispara em micro-checkpoints (3 tentativas) e quizzes embedded.
3. **`fetchMyDataAll` retorna `exported_at` carimbando o momento da requisição** — útil para LGPD/portabilidade. ✅

**Recomendação:** espelhar o fix do admin: adicionar `.order('answered_at', { ascending: true })` em `quiz_question_attempts` e `micro_attempts`; `.order('recorded_at', { ascending: true })` em `confidence_ratings`; `.order('completed_at', { ascending: true })` em `section_progress`. Custo: 4 linhas.

---

### IAAD card (iaad.js)

#### `IAAD.percentile` + `IAAD.percentileLabel` — `iaad.js:30–43`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Percentil exato do valor do aluno na distribuição da turma; rotula em 4 faixas.

**Como está implementado:**
```js
var below = values.filter(function(v) { return Number(v) < Number(value); }).length;
return Math.round(100 * below / values.length);
```

**Problema(s):**
1. **Definição: "% da turma com valor ESTRITAMENTE MENOR que o do aluno"**. O próprio aluno está no array (a RPC `get_iaad_class_distribution` filtra `role='student'` mas não exclui o próprio chamador), então `below` exclui o próprio aluno mas também exclui empates. Resultado: se vários alunos estão iguais (ex.: todos zerados em S1 do semestre), todos veem percentil 0. Esperado, mas o rótulo subsequente é estranho: `percentileLabel(0, …)` cai em `'bottom ' + (p === 0 ? 10 : (p+1)) + '% da turma'` → mostra `"bottom 10% da turma"`. Aluno com IAAD = mediana vê "bottom 10%" se todos estão na mediana. **Mensagem é objetivamente errada.**
2. **`percentile = 100` é impossível por construção** (`below < values.length` sempre, porque o próprio aluno empata consigo). Aluno com o maior IAAD da turma vê no máximo `Math.round(100 * (n-1)/n)` = 98 (em n=50). Não é bug, é convenção, mas o rótulo `top ' + (100 - p) + '% da turma'` exibe `top 2%` para o líder — defensável; pior é o rótulo `'top 1%'` que nunca acontece.
3. **Edge case n=1** (aluno entrou e ninguém mais consentiu): `below=0`, `values.length=1`, retorna 0 → rotula como "bottom 10% da turma" mesmo sendo o único. Pedagogicamente perverso.
4. **Sem gate de n mínimo:** o card mostra "abaixo de 90% da turma" mesmo em semana 1 com n=3. Estatisticamente vazio.

**Recomendação:**
- Usar `pct = (below + 0.5 * ties)/n * 100` (definição NIST/SciPy "mean") para evitar penalizar empates.
- Esconder o rótulo quando `values.length < 10` (mostrar apenas "n insuficiente — turma ainda preenchendo dados").
- Reescrever `'bottom ' + ...` para `'percentil ' + p` quando `p < 10`; "bottom 10%" virou ameaça gratuita.

---

#### `IAAD.histogram` — `iaad.js:52–116`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Histograma SVG da distribuição da turma com bin destacado para o aluno + marker triangular na posição exata.

**Problema(s):**
1. **Bin do aluno:** `Math.min(Math.floor(Number(studentValue) / maxX * binCount), binCount - 1)` — para `studentValue = maxX = 10`, `Math.floor(10/10*20) = 20`, clampado para 19. Aluno com IAAD perfeito vai para o bin (9.5, 10] em vez do bin que seria (10, 10.5] (que não existe). Isso é correto, mas a sensação visual é "no penúltimo bin" — ele esperava o último. Não é bug; é como histograma se faz mesmo. Aceitável.
2. **Marker triangular usa `(studentValue/maxX)*width`** sem padding — para `studentValue = 0`, marker fica no `x=0` (na borda esquerda do SVG, sob o primeiro tick "0"). Para `studentValue = 10`, fica em `x=width`. Não há margem visual, o triângulo "vaza" 5px à esquerda do `x` calculado (poly em `markerX - 5`). Em zoom alto isso pode cortar o triângulo.
3. **`maxCount` pode ser inflado** quando há muitos alunos no bin do extremo (todos zerados em S1): bins não-zero ficam invisíveis. Ok para visualização, mas o "n=2" do bin do aluno pode aparecer 1px de altura. Sem fallback a "log scale" se a distribuição é muito enviesada — não é bug, é design.
4. **A anotação numérica em cima da barra do aluno** (`<text>...c</text>`, linha 89–91) sai do retângulo do SVG se a barra é alta (y - 2 fica negativo). Em prática vai cortar — `overflow:visible` mitiga.
5. **Cor `#C8102E`** (Insper) para o bin do aluno e marker, `#cbd5e1` (cinza) para outros. Aluno daltônico (deuteranopia ~5% da população masculina) pode não distinguir vermelho-cinza. Adicionar contorno ou padrão. S1.

**Recomendação:** mostrar `n` da turma (n_students) no topo, junto ao histograma — hoje só aparece embaixo na linha "Distribuição da turma (n=X)". Para n pequeno (<10), substituir por dot plot. Padding interno de 8px no SVG.

---

#### `IAAD.render` — `iaad.js:159–264`

**Veredito:** ⚠️ AT RISK
**Severidade:** S4 (consistência com SSOT)
**O que mede:** Renderiza o card completo: total IAAD, 3 componentes, histograma da turma, breakdown 9×6.

**Problema(s):**
1. **Tudo OK até a linha 216:** `data.c_geral_aulas_full || 0` mostra "X / 9 aulas integralmente cumpridas (geral)". Vem do RPC. **Mas o portal.html linha 606 mostra `aulasFullyDoneCount` (`stat-done`) calculado client-side, que conta "4/4 componentes done por aula" — NÃO "6/6 itens do IAAD".** Os dois números divergem por construção: o `c_geral_aulas_full` no Postgres exige material+pré+pós+exerc+refl_nebulosa+refl_aula = 6 done; o `stat-done` no JS exige pré+material+pós+exerc = 4 done. Aluno que fez todos os componentes mas pulou uma das reflexões vê `stat-done: 1`, `c_geral_aulas_full: 0`. **Quem mente para quem?** O IAAD é a verdade da nota. O `stat-done` está vendendo um nível de conclusão que o aluno **não** tem. **S5 transversal — ver achado dedicado abaixo.**
2. **Histograma da turma renderiza o vetor INTEIRO `distIaad`** (até 50 valores). Privacidade: o vetor não tem `user_id`, mas é ordenado (`ORDER BY iaad` na migration 2026-05-09:412). Se o aluno conhece a métrica de outro aluno por canal externo (ex.: amigo disse "fiz só a Aula 1"), o aluno consegue triangular a posição daquele amigo no vetor por inspeção do DOM. **Risco real mas pequeno** para esta turma de 50; aumenta para turmas pequenas (<10).
3. **Mensagem "Atualizado em tempo real a cada submissão"** (linha 193) — fato. Mas se o aluno acabou de submeter algo, tem race condition: o card renderiza ANTES da submissão completar. Não há mecanismo de invalidação/refresh, exceto o `visibilitychange/focus` debounced de 500ms (`portal.html:914–917`). Se o aluno submete numa aba e troca para a aba do portal em <500ms, vê o estado anterior. Edge case, mas existe.
4. **`pts.toFixed(2) + ' / 30 pontos'`** (linha 199): O RPC já retorna `pts_nota` com `ROUND(... , 2)` (migration 2026-05-09:263). Duplo arredondamento aqui (`.toFixed(2)` em cima de `ROUND(2)`) é defensivo, sem dano.
5. **Sem tooltip explicando a fórmula** (60-20-20). Aluno que quer entender por que 7.50 de C_geral, 9.00 de C_prazo, 5.50 de P virou IAAD = 6.40 tem que clicar no link "📖 metodologia" externo. Considerar tooltip em hover sobre "IAAD: 6.40".
6. **Linha 247:** `<div id="iaad-breakdown-detail"…>` — `id="iaad-breakdown-detail"` é hard-coded global. Se houvesse dois cards IAAD na mesma página (improvável mas teórico), só o primeiro toggle funcionaria.

**Recomendação:** ver "Consistência IAAD ↔ JS local" abaixo.

---

#### `IAAD.suggestNextStep` — `iaad.js:266–277`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Hierarquia de ifs sobre cG/cP/p para gerar texto de "próximo passo".

**Como está implementado:**
```js
if (cG < 5) return 'Cumprimento Geral abaixo de 5,0 — entregue ...';
if (gap > 1.5) return 'Você cumpriu mas com atraso ...';
if (cP < 5) return 'Cumprimento no Prazo baixo ...';
if (p < 5) return 'Performance abaixo de 5,0 ...';
if (cG >= 8 && cP >= 8 && p >= 7) return 'Excelente ritmo ...';
return 'Continue o ritmo ...';
```

**Problema(s):**
1. **Cobertura incompleta:** caso `cG = 6, cP = 5.5, p = 4` cai no `if (p < 5)` ✅. Mas caso `cG = 5.5, cP = 5.0, p = 5.5` cai no fallback genérico "Continue o ritmo" — aluno mediano em tudo não recebe orientação útil.
2. **`gap = cG - cP` mede atraso, mas o limiar de 1.5 é arbitrário e sem citação metodológica.** Sob ponderação 0.6/0.2/0.2, um gap de 1.5 em escala 0-10 equivale a perder ~0.3 pontos de IAAD = 0.9 pts da nota. Defensável, mas não documentado.
3. **`(cG >= 8 && cP >= 8 && p >= 7)`** é assimétrico: exige cP alto mas tolera p mais baixo. Faz sentido pedagogicamente (cumprimento > performance no semestre), mas o aluno top com `cG=9, cP=8, p=6` recebe "Excelente ritmo. Use as leituras recomendadas (J-R) para subir Performance." — mensagem **certa**.
4. **Sem mensagem para "performance alta + cumprimento baixo"** — o aluno que está estudando bem mas não submetendo cai em `cG < 5` e recebe "entregue as próximas 2 atividades pendentes", sem reconhecer o p alto. Frustrante.
5. **`data` arg apenas — `distribution` não usado.** A função recebe `distribution` no chamador (linha 250) mas declara assinatura `function(data)` (linha 266). Mismatch silencioso: a 2ª arg é ignorada. Se um dia quisermos "Próximo passo: seu C_prazo está abaixo do P25 da turma — concentre na próxima pré-aula", o hook está disponível mas não usado.

**Recomendação:** adicionar branch "p_score >= 7 && cG < 6: você está performando bem, foco agora é submeter as atividades pendentes para que o IAAD reflita o que você sabe". Documentar limiares no comentário.

---

#### `IAAD.fetchAndRender` — `iaad.js:279–323`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **`Promise.all([get_iaad, get_iaad_class_distribution])`** — paralelo correto. Se um falha, o outro segue. ✅
2. **Logs `console.log('[IAAD] iaadRes:', iaadRes)`** (linhas 297–298) vazam o `iaadRes.data[0]` no console — inclui `breakdown` jsonb com a estrutura completa, mas só do próprio aluno (não há cross-leak). Aceitável em DEV; em produção poluí o console. Considerar `MPE_CONFIG.DEBUG` flag.
3. **`getSession()` chamado a cada `fetchAndRender`** (linha 285): O Supabase JS faz cache local, então isso é barato; mas se o usuário renovar a sessão entre dois renders, o `uid` muda — defensivo.
4. **Mensagem de erro renderiza `renderErr.stack`** na linha 317. Stack trace exposto no DOM. Em produção, isto é informação sensível para um atacante (revela paths de arquivo, IDs internos). LGPD não, mas hardening sim.
5. **`distRes.error` → "Continua sem distribuição (degraded)"** (linha 310): se a RPC pública `get_iaad_class_distribution` está aplicada (migration 2026-05-09 deve já estar em prod), erro só dispara em rede off. Em modo degraded, o histograma some, mas o `data` do aluno renderiza. Bom.

**Recomendação:** comentar `console.log` ou gateá-lo por `window.MPE_CONFIG.DEBUG`. Render do `.stack` na UI: substituir por `Erro ao renderizar — recarregue ou contate o professor.` em produção; manter stack apenas no console.

---

### PortalOndax — E3 (Caminho), E2 (Calibração), E4 (Circadian), E8 (Nudges)

#### `PortalOndax.pickFocusAula` — `portal-ondax.js:184–199`

**Veredito:** ✅ OK (pós-fix de janela canônica)
**Severidade:** S2
**Problema(s):**
1. Já usa `cal.getJanelaCanonica(a.n, 'pos')` (linha 193), não mais `getPrazo`. Hoje (15/05), pega Aula 5 corretamente — `next_presencial_at` da Aula 5 = 27/05 19:30, ainda no futuro. ✅
2. **Fallback "última aula available" (linha 197):** se TODAS as janelas canônicas já fecharam (depois de 24/06), devolve Aula 10 (Avaliação Final, `isFinalAssessment:true`) — porque está na lista. Não causa crash, mas o "Caminho até a próxima aula" da AF não faz sentido (AF não tem material/pré/pós/exerc no esquema das demais). `computePath` recebe a aula 10 e vai gerar steps para uma estrutura que não bate.
3. **Validação `a.n > 9` na linha 189** evita o problema acima ao retornar a primeira aula >9 (a AF) sem passar pelo gate de janela. Truque defensivo, mas o `computePath` chamado em seguida pode quebrar.

**Recomendação:** filtrar `if (a.isFinalAssessment) continue;` no loop principal — a AF não deve ser foco de "Caminho até a próxima aula".

---

#### `PortalOndax.stepStatus` — `portal-ondax.js:209–244`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **Define "material done" como ≥7 de 9 seções concluídas** (linha 228). Mas o IAAD-30 RPC define como **9/9** (`m.sec_done >= 9`, migration 2026-05-09:98). **Divergência intencional ou bug?** Se intencional ("aluno pode pular 2 seções e ainda conta como done no portal"), está enganando o aluno: ele vê "Material ✓ Concluído" no portal mas o RPC marca `material_done: false` e portanto C_geral não recebe os 0.40 daquela aula. **S4 — divergência silenciosa.**
2. **Quiz "done" = `submitted_at || attempts > 0`** (linha 232). RPC: `submitted_at IS NOT NULL` (migration 2026-05-09:78). Aluno que clicou em "responder questão" sem fechar o quiz tem `attempts > 0` mas `submitted_at = NULL` → portal mostra "✓ Concluído", IAAD não dá ponto. Mesmo problema do item 1.
3. **Sem cálculo de `done` para `comp='material'` via Supabase**: lê apenas `myData.sectionProgress`, que pode ter divergência com Postgres se o aluno acessou de dois navegadores. Em geral é OK.

**Recomendação:** alinhar com IAAD (9/9 e `submitted_at`) OU explicitar no tooltip "Material aparece ✓ aqui após 7/9 seções; para contar no IAAD, complete as 9". A segunda opção é defensável (UX gentil + transparência sobre nota); a primeira é mais simples.

---

#### `PortalOndax.computePath` + `renderPath` — `portal-ondax.js:250–356`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **Estado combinado pos+exerc**: lógica em linhas 272–276 é boa. Edge case: `pos.state = 'done', exerc.state = 'closed'` → combined = 'closed' (porque cai no `else combined = 'locked'` por falha de fall-through, mas espera — `if (pos===done && exerc===done) done; else if (pos===closed && exerc===closed) closed; else if (pos===open || exerc===open) open; else locked`). `pos=done, exerc=closed` → não cai em done (exerc não é done), não cai em closed (pos não é closed), não cai em open (nenhum é open) → cai em locked. **Bug:** combined deveria ser `closed` ou pelo menos um estado misto, mas vira `locked` (visualmente "ainda não abriu"). Aluno que **fez** o pós e **perdeu** o exerc vê "🔒 Pós + Exercícios" como se não tivesse aberto. Confuso.
2. **`activeStep = path.steps[path.activeIdx]`** (linha 347): se `activeIdx === -1` (nenhum step é `open`), `activeStep = undefined`, então o `if (activeStep && activeStep.prazo)` falha graciosamente. ✅
3. **Render de prazo "abre 22/04 19:30"** para o passo "Aula presencial" (linha 321): mostra data da aula, mas usa `cal.fmt(s.aulaTs)` que é local — assume timezone do navegador é BRT. Aluno acessando do exterior vê hora errada. Mesmo bug do circadian (já resolvido no Onda 4 admin via BRT explícito).

**Recomendação:** corrigir lógica do `combined` para um estado `partial` (um done, um não-done). Forçar render BRT explícito no aulaStep.

---

#### `PortalOndax.aulaSummary` — `portal-ondax.js:367–383`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. Itera 4 componentes (`pre/material/pos/exerc`), conta done/open/locked/closed. `allDone = done === total` — bate com a lógica de `stat-done` do portal. **Veja "Consistência IAAD ↔ JS local" abaixo:** isso significa que `aulasFullyDoneCount` no `portal.html:538,606` herda a divergência com o IAAD.
2. Linha 380 `s.hasLate = s.closed > 0` — `closed` aqui significa "fechou sem aluno ter feito" porque `stepStatus` retorna `closed` só se `done === false && now >= prazo.fecha`. Defensável.

---

#### `PortalOndax.buildPendings` + `renderPendings` — `portal-ondax.js:407–516`

**Veredito:** ✅ OK (pós-fix de janela canônica)
**Severidade:** S2
**Problema(s):**
1. Janela canônica via `stepStatus.prazo` — então sob esquema atual, buckets ≤7d/8-14d/>14d granularizam por aula corretamente.
2. **Sort em `buildPendings:447`:** `pa = a.prazo == null ? Infinity : a.prazo` — itens sem prazo vão para o fim. Mas em prática (com calendário aplicado) todo componente tem prazo. ✅
3. **Bucket "Fecha esta semana" (≤7d)** vai colorir tudo vermelho quando 2 aulas tem prazo simultâneo (rotina: pós da aula X fecha em Wn, pré da aula X+1 também). Visualmente apertado mas correto.
4. **Sem deduplicação por aula:** uma aula com 4 componentes abertos vira 4 cards no painel. Em pico de semana, 9 aulas × 4 = 36 cards. Em prática só ~8 ficam abertas porque aulas passadas já tem tudo done — mas em S1 do semestre é literalmente 36 cards. Considerar agrupamento por aula no UI.

**Recomendação:** opcional — agrupar pendings por aula em UI mais limpa (Aula X: 4 itens em chevron).

---

#### `PortalOndax.computeRhythm` — `portal-ondax.js:528–565`

**Veredito:** ✅ OK (pós-fix de janela canônica)
**Severidade:** S3
**Problema(s):**
1. **Conta `closed` via `stepStatus`**, que agora usa janela canônica. ✅ Antes nunca disparava; agora dispara assim que `next_presencial_at` passa.
2. **`lateCount >= 1` → 'atrasado'** é muito sensível: aluno que perdeu 1 componente em 1 aula em 9 já é "Recuperando o passo". Severidade pode ser modulada (lateCount==1 → "Pequeno deslize", lateCount>=3 → "Recuperando o passo").
3. **`em-dia` requer `doneCount/totalCount >= 0.5`** — aluno que abriu 4 e fez 2 (= 50%) é "Em dia"; aluno que abriu 4 e fez 1 (= 25%) é "Pegando ritmo". Linha defensável mas dura para um aluno em S1 que ainda está nivelando.
4. **`totalCount === 0` retorna 'novo'** — aluno em sem-fim-de-semana-1 que ainda não tem nada aberto vê "Começando agora". Boa mensagem.
5. **Hint para `atrasado`:** "X atividade(s) fechou(aram) sem submissão. Foque nas pendências abertas — ainda dá pra zerar a próxima semana." Mas se a janela canônica fechou e o ACESSO_LIVRE_FIM ainda está aberto, o aluno **pode** submeter para nota (entra como `c_geral` mas não `c_prazo`). A hint não menciona. Aluno pode achar que perdeu para sempre.

**Recomendação:** adicionar nuance "atrasado mas ainda submissível (vale C_geral, não C_prazo)" no hint.

---

#### `PortalOndax.buildNextStep` — `portal-ondax.js:572–595`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **Acopla horaPico do circadian no texto**: "Seu melhor horário até aqui é quarta por volta das 21h." Requer `circadian.horaPico.acc >= 0.66` e `n >= 3`. Para n=3 esse acc=0.66 é só "acertou 2 de 3" — frágil estatisticamente. Em prática a turma toda vai ouvir "seu melhor horário é XYZ" baseado em ruído nas primeiras semanas.
2. **`quando = 'antes de ' + cal.fmtData(p.prazo)`** quando `dias > 7` — mas se `cal.fmtData` falhar, vira "antes de" só. Defensivo, OK.
3. **Não cobre o caso "tudo fechado"** — quando `pendings = []`, função retorna `null` (linha 573). O `renderNextStep` (portal.html:852) trata `null` mostrando mensagem zen. ✅

---

#### `PortalOndax.buildCalibration` — `portal-ondax.js:605–683` 🔴 BUG MASTER

**Veredito:** ❌ **BROKEN — bug master de escala**
**Severidade:** **S5 — mente para o aluno**

**Como está implementado:**
```js
(myData.confidence || []).forEach(function(c) {
  if (c.phase !== 'post') return;
  // ...
  confBy[k].sum += c.value;        // c.value ∈ [1,5] integer
  confBy[k].n += 1;
});
// ...
pairs.push({
  conf: Math.max(0, Math.min(100, c.sum / c.n)),    // ← BUG: clampa em [0,100] mas valor real ∈ [1,5]
  acc: acc.correct / acc.total * 100,
  nItems: acc.total
});

// ECE em 4 bins de confiança
var bins = [{c:0,a:0,n:0},{c:0,a:0,n:0},{c:0,a:0,n:0},{c:0,a:0,n:0}];
pairs.forEach(function(p) {
  var b = Math.min(3, Math.floor(p.conf / 25));     // ← p.conf ∈ [1,5] → Math.floor(c/25) = 0 sempre
  bins[b].c += p.conf; bins[b].a += p.acc; bins[b].n += 1;
});
```

**Análise:**
- `confidence_ratings.value` é definido em `schema.sql:130` como `CHECK (value BETWEEN 1 AND 5)`.
- Os sliders em `aula-04.html:100,175,196,274,295,...` (e em todas as outras `aula-XX.html`) são `<input type="range" min="1" max="5">`.
- `MPE.recordConfidence` em `aula-04.html:736–753` lê `parseInt(input.value)` (1–5) e chama `MicroTracker.recordConfidence(...)` que via `tracker.js:473–482` grava `value` cru no Supabase.
- Portanto `c.value` lido em `buildCalibration:613` é integer 1–5. Mas o código trata como se fosse 0–100.
- `Math.floor(c/25)` para c∈{1,2,3,4,5} → 0 sempre. **Todos os pairs vão para `bins[0]`** (faixa 0–25%).
- `ECE = Σ (n_k/N) |avg(conf em [1..5]) − avg(acc%∈[0,100])|`. Para conf médio ~3 e acc médio ~60%, ECE ≈ |3 − 60| = 57 percentual points.
- Linha 658: `gap = meanConf - meanAcc ≈ 3 - 60 = -57`, sempre `< -15` → label `'under'`.
- Linha 666: gate `if (N >= 3 && totalItems >= 6)` — passa após poucas semanas.
- Linha 727–736: badge `'🧊 Tendência a subestimar · ECE 57%'` para 95%+ da turma.
- **Mesmo bug que foi corrigido no admin via `_confTo100`** (commit não identificado, mas mencionado em `auditoria-dashboard-2026-05-15.md`). O fix do admin foi aplicado em 3 sites (`_o4BuildPairs`, `computeConfidencePoints`, `computeKnowerPoints`), mas **portal-ondax.js foi esquecido**.

**Consequência sistêmica:**
- O scatter (`renderCalibration:704–722`) plota X∈[1,5] num eixo [0,100] (via `x = function(conf) { return PAD + (conf / 100) * (W - 2*PAD); }`, linha 702). **Todos os pontos do aluno ficam no canto esquerdo do gráfico**, agrupados em x∈[1.6, 5.8] num eixo de 0 a 200. Diagonal de calibração perfeita visualmente sem sentido.
- Tooltip mostra "conf 3% · acerto 60%" para um aluno que respondeu `3` no slider 1–5 e acertou 60% das questões — **número errado no tooltip, leitura errada do aluno**.
- Card vira propaganda permanente de "🧊 Você se subestima — confie um pouco mais no que você preparou antes de chutar". Mensagem **errada** repetida por todo o semestre. Aluno que **está** se subestimando recebe a mesma mensagem que aluno **superconfiante** — ninguém aprende metacognição com isso.

**Fix sugerido (1 linha):**
```js
// portal-ondax.js:637
conf: Math.max(0, Math.min(100, ((c.sum / c.n) - 1) / 4 * 100)),  // mapeia [1,5]→[0,100]
```
E adicionar comentário linkando para a correção `_confTo100` do admin para não voltar a dar errado.

---

#### `PortalOndax.renderCalibration` — `portal-ondax.js:685–746`

**Veredito:** ❌ Dependente do bug master acima
**Severidade:** S5 (consequência)
**Problema(s):**
1. Texto "ECE 57%" é uma marca de classificação metacognitiva — comunicar "57% mal calibrado" para alunos profissionais de pós-graduação é insultuoso e errado.
2. **Após fix do bug master**, vai cair em "good" para a maioria; testar com fixture sintética antes de release.
3. **Scatter usa cor por sinal de gap** (`p.acc >= p.conf ? verde : bordô`, linha 720) — depois do fix, vai começar a fazer sentido visual. Antes, todos os pontos ficavam verdes porque `p.acc (∈ [0,100]) >= p.conf (∈ [1,5])` quase sempre.

---

#### `PortalOndax.buildCircadian` — `portal-ondax.js:777–869`

**Veredito:** ✅ OK (pós-fix BRT + janela canônica)
**Severidade:** S2
**Problema(s):**
1. **BRT forçado** (linha 804) via `BRT_OFFSET_MS = -3 * 3600 * 1000` e `dBRT.getUTCDay()/.getUTCHours()`. ✅ Correto. Aluno de qualquer timezone vê seu padrão alinhado ao curso.
2. **Cramming usa `getJanelaCanonica`** (linha 818, 824). ✅ Após fix.
3. **`horaPico` requer `ca.total >= 3` E `acc >= 0.66`** — gate baixo. Em S2 do semestre, aluno com 4 respostas e 3 acertos numa quarta às 21h é declarado "horário pico = quarta 21h". Estatisticamente ruidoso, mas a mensagem "Seu melhor horário até aqui: quarta às 21h (75% de acerto em 4 itens)" comunica o `n` honestamente — aceitável.
4. **`avgDaysBefore` agora reflete janela canônica** — antes (deadline único 02/07) sempre dava ~48d, agora dá valores menores e variáveis. ✅
5. **Fallback `horaVolume` (linha 856)** quando `horaPico` não dispara — mostra "Seu horário mais frequente: X". Útil em semana 1 quando ainda não há acertos suficientes.
6. **`events` mistura `quizQA` + `sectionProgress` + `confidence` + `microAttempts`** — sem deduplicação por timestamp. Em prática, cada evento gera 1 registro, sem overlap óbvio. ✅
7. **`crammedAulas` requer `ae.total >= 3 && ae.last48h / ae.total > 0.6`**. Em S2 do semestre com `total=3 e last48h=2`, o aluno é "crammer" sob ruído pequeno. Considerar gate mais alto (`total >= 6`) em escala plena.

**Recomendação:** subir gate `total >= 5` para `crammedAulas` e `n >= 5` para `horaPico` quando turma estiver com volume.

---

#### `PortalOndax.renderCircadian` — `portal-ondax.js:871–922`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. **Cores #FEE2E2 → #C8102E → #7F1D1D** para níveis 1–4 — gradient vermelho. Hierarquia OK; aluno daltônico ainda distingue por luminância. ✅
2. **Mensagem nudge "Você tende a concentrar respostas nas últimas 48h antes do prazo (≥2 aulas)..."** é descritiva, não normativa. ✅
3. **Tooltip do `cir-cell`** (`title="Dom 14h: 3 evento(s)"`) honesto.
4. **Sem filtro por aula** — se aluno quer ver só padrão da Aula 5, não consegue. Aceitável para v0.

---

#### `PortalOndax.buildNudges` — `portal-ondax.js:945–1081`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Gera até 3 nudges priorizados via 4 regras (R1 erro repetido, R2 confidence missing, R3 tempo abaixo de P25, R4 explore desafio).

**Problema(s):**
1. **R1 (linha 957–975):** `qaByKey[k]` contém tentativas; ordena por `(a.answered_at||'').localeCompare(...)`. **Sem `.order()` no Supabase**, esta ordenação é insensível a problema do "primeira tentativa" — depende do timestamp string vir, e vem. ✅ Comportamento OK, mas frágil.
2. **R2 (linha 985–1002):** "primeira seção completada sem confidence post". Edge case: se o aluno completou uma seção sem registrar slider pós (era opcional em alguma aula?), ele é nudgeado eternamente para "voltar à seção" — `dismissNudge` é por sessão, então toda nova sessão volta o nudge. **Acúmulo eventual** para alunos que pulam o slider pós.
3. **R3 (linha 1004–1058):** Usa `classPercentiles[pid].p25` (k-anon ≥5) ou fallback "P25 próprio". **`secTimes` filtra duração ∈ [20s, 3600s]** (linha 1014). 20s é gentil (aluno scrollando), 3600s = 1h é teto plausível. Bom.
4. **R4 (linha 1061–1075):** Recalcula `path = computePath(focusAula)` que já foi calculado no `renderOnda1`. **Trabalho duplicado, sem cache**. n=50 alunos não dói; padrão a evitar em escala.
5. **`focusAula` recebido pode ser Aula 10 (AF)** se `pickFocusAula` cair no fallback final (ver achado de `pickFocusAula`). `computePath` para AF gera lixo, mas é silenciado pelo `try` implícito. R4 ainda renderiza "abrir exercícios" para Aula 10 que não tem `-exerc.html`.
6. **`dismissNudge` salva em `sessionStorage`** — some ao fechar aba. Para nudge R1 ("você errou questão X duas vezes"), aluno vai ver o mesmo nudge toda sessão até efetivamente revisar. Pode ser intencional ("não deixar esquecer") ou irritante (após 5 sessões). Não há feedback loop para o admin saber.
7. **Texto do R3 (linha 1043):** "Sua última seção foi mais rápida que 75% da turma nesta página". Tecnicamente, `dur < p25` significa "mais rápida que 75% da turma" (porque p25 é o 25º percentil, abaixo dele está o quartil mais rápido). ✅ Honesto.

**Recomendação:** persistir dispense de R1 em localStorage por (page, question_id) com TTL de 7d. Bloquear R4 quando focusAula é AF.

---

### portal.html — handlers e cálculos inline

#### `computeFirstTryAccuracy` — `portal.html:402–416`

**Veredito:** ❌ **BROKEN (divergência com IAAD SSOT)**
**Severidade:** **S5 — mostra número diferente do que entra na nota**

**Como está implementado:**
```js
Object.keys(studentData.quizzes || {}).forEach(function(pid) {
  var q = studentData.quizzes[pid];
  Object.keys(q.questions || {}).forEach(function(qid) {
    var attempts = q.questions[qid].attempts || [];
    if (attempts.length > 0) {
      total++;
      if (attempts[0].correct) correctFirst++;
    }
  });
});
```

**Problema(s):**
1. **Itera TODOS os `quizzes[pid]` do `MicroTracker.getData()` localStorage** — inclui quizzes embedded da Aula 1 legacy, micro-checkpoints de outras seções, qualquer página com quiz registrado. **Não filtra por `phase`.**
2. O `P` do IAAD em `iaad_performance_raw` filtra `phase IN ('pre_review', 'post', 'graded_exercise')` (migration 2026-05-09:131). Embedded (Aula 1 legacy) e micro-checkpoints **não entram**.
3. **`attempts[0]` é primeira tentativa local** — em micro-checkpoints com 3 tentativas, primeira pode ser errada e tentativas 2/3 corretas; aluno é contado como "errou na 1ª" no portal. No IAAD não entra esse evento.
4. **Resultado típico:** aluno vê `stat-first: 78%` (média ponderada de embedded + pre_review + post + exerc + micro_checkpoints, todas misturadas) e `Performance · peso 20% · 6.20 / 10 (62%)` no IAAD. **16pp de diferença** entre dois números que parecem ser a mesma coisa.
5. **Aluno racional vai questionar o Darcio**: "qual é a 1ª que entra na nota?". Resposta: a do IAAD. Mas o `stat-first` é o número mais visível.

**Fix:**
1. **Opção A (simples):** Remover `stat-first` do topo; deixar só o do IAAD.
2. **Opção B (replicar):** Trocar `computeFirstTryAccuracy` para consumir `myData.quizQA` (Supabase) filtrando `phase IN ('pre_review','post','graded_exercise')`, com fallback para localStorage só se Supabase off. Em paralelo, **garantir ORDER BY no fetch** para que `attempts[0]` seja cronologicamente primeira.
3. **Opção C (etiquetar):** Renomear `Acerto 1ª tentativa` para `Acerto agregado (todos os quizzes)` e adicionar tooltip "este número é diferente do `P` do IAAD; veja o card abaixo".

Recomendação: **A**. Eliminação reduz fricção; o IAAD card já mostra o número certo com peso pedagógico explícito.

---

#### `computeStreak` — `portal.html:418–445`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3
**O que mede:** Dias consecutivos com atividade, lendo só `lastVisit/firstVisit` de pages + `attempts.timestamp` de quizzes.

**Problema(s):**
1. **Não inclui `section_progress.completed_at` nem `confidence.recorded_at` nem `micro_attempts.answered_at`** — exatamente o bug que o admin **já corrigiu** no commit `dd5e433`. Aluno que só completa seções e responde confidence (sem disparar page_visit nem quiz attempt completo) não streaka.
2. **Lê `MicroTracker.getData()` do localStorage** — se aluno acessou de outro navegador, streak fica zerado/desatualizado.
3. **Loop de 365 dias** — para ano de uso intenso, OK. Para conta nova com streak=0, faz 365 iterações desnecessárias.
4. **Lógica de "grace day":** `if (i > 0) break` significa que **se aluno não acessou hoje (i=0), continua para ontem (i=1) e se também não, break**. Resultado: aluno que estudou ontem mas não hoje pode ter `streak = 0` ou `streak = 1` dependendo se a primeira data encontrada é hoje ou ontem. Comportamento documentado mas confuso.

**Recomendação:** reimplementar lendo `myData` (unified) em vez de `MicroTracker.getData()`, e incluir as 3 fontes adicionais (espelhar o fix do admin).

---

#### `renderSparkline` — `portal.html:455–473`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. Lê `studentData.pages[pid].totalTime` — esse é tempo acumulado da página. Em barras simples por aula, OK.
2. **AULAS inclui Aula 10 (AF)**, então sparkline tem 10 barras, com a última sendo da AF que não tem `totalTime` real → barra vazia. Cosmético.

---

#### `renderAulasGrid` + `renderCTA` — `portal.html:528–609, 478–526`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **`statusBadge` "✓ 4/4 concluídas"** (linha 552) mostra contagem dos 4 componentes do portal — usa `summary.done` e `summary.total` de `aulaSummary`. **Não bate com IAAD** (`6/6` itens). Mais um vetor de confusão.
2. **`stat-done` (linha 606) e `progress-fill` (linha 607)** lêem `aulasFullyDoneCount` — variável definida na função. **`progress-label` na linha 608** diz "X de Y aulas integralmente concluídas". O aluno vê "1 de 9 aulas integralmente concluídas" no header e o IAAD logo abaixo diz "C_geral · 1 / 9 aulas integralmente cumpridas". **Coincide no rótulo, divergente no critério** — fica parecendo que é o mesmo número, mas o número (e o critério) podem diferir.
3. **Toggle `hide-done-toggle`** (linha 51 / 882) re-renderiza só a grid, mantendo cache — bom para perf.
4. **AF render (linha 574–585):** botão Simulado + Gabarito como download direto. Funciona independente de Supabase. ✅

**Recomendação crítica:** alinhar a definição de "aula integralmente concluída" do portal com o IAAD (`6/6` itens). Senão, **renomear `stat-done` para `stat-componentes`** (count de "aulas com 4/4 componentes feitos") e deixar o IAAD ser SSOT para "integralmente cumpridas".

---

#### `renderPreMonitoriasGrid` + `renderMonitoriasGrid` — `portal.html:611–718`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. `getPreMonitoriaPrazo/isPreMonitoriaOpen/...` — todos lêem `getPreMonitoriaPrazo` que retorna `fecha = ACESSO_LIVRE_FIM`. Ou seja, **prazo de pré-monitoria = 02/07 igual a tudo**. Então `isPreMonitoriaClosed = false` até 02/07 — todas mostram "Aberta". Faz sentido (pré-monitorias são formativas, livre acesso), mas a línea de prazo (`Fecha 02/07 18:00 · monitoria sáb 16/05 10:00`) confunde porque mistura dois prazos (deadline plataforma e data da monitoria presencial).
2. **`fileReady === false`** mostra "Em produção" → não 404. ✅

---

#### Stats inline (stat-time-detail, stat-avg-detail, etc.) — `portal.html:744–751`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. Métricas detalhadas escondidas em acordeão. Não compete com IAAD. ✅
2. `avgQuizScore` é "média simples dos melhores scores por quiz" — divergente do `P` do IAAD (que é acerto em 1ª tentativa). Defensável porque está em "Métricas detalhadas" e é claramente outra coisa.

---

#### Orquestração `renderOnda1()` + gates LGPD/senha — `portal.html:759–809, 224–321, 890`

**Veredito:** ⚠️ AT RISK
**Severidade:** S3 (privacidade/UX)
**Problema(s):**
1. **`renderOnda1()` (linha 890) e `IAAD.fetchAndRender()` (linha 893–896) rodam imediatamente**, sem aguardar `checkPasswordGate()` (linha 366, `setTimeout(400ms)`) terminar. O `checkPasswordGate` faz cadeia → `checkLGPDConsent` → modal LGPD. Mas `renderOnda1` é assíncrono e já disparou 9 selects no Supabase antes do aluno ver o modal.
2. **Tecnicamente correto:** o aluno **já consentiu** (ou não) na sessão anterior. Se nunca consentiu, `session.consented_lgpd` é null e o modal aparece — mas os selects já rodaram. O dado retornado é DO PRÓPRIO ALUNO (RLS), nada vaza para outros. Mas filosoficamente, o LGPD card que ele vê diz "Esta plataforma coleta dados..." e o portal **já leu** dados antes de ele consentir.
3. **Workaround pequeno:** o aluno que recebe credenciais e abre o portal sem consentir vê o portal renderizar atrás do modal. O modal bloqueia interação, mas os dados estão na tela. Se ele tirar print de uma vez, capturou dados pré-consentimento — visualmente.
4. **`MicroTracker.startPage` NÃO é chamado no portal.html** — bom, portal não polui dados de tracking. ✅
5. **`setTimeout(checkPasswordGate, 400)`** — gambiarra para aguardar `mirrorToSessionStorage` em `MpeDB`. Se o usuário tem rede lenta (>400ms), o gate pula porque `session.password_changed_at` ainda é undefined, e cai no fallback que tenta `MpeDB.getProfile()`. Eventualmente funciona, mas é dependente de timing. Considerar `await mirrorToSessionStorage` em vez de timer.
6. **`pwd-modal` e `lgpd-modal` não bloqueiam `MicroTracker` em outras páginas**: aluno que pula o portal e vai direto para `aula-04.html` (via URL) é bloqueado por `MicroAuth.requireAuth()` mas se tiver sessão, **roda `MicroTracker.startPage('aula-04')` sem checar `password_changed_at`**. RLS pegará (via `can_write_student_data`), mas o JS local não — ele acumula tracking local que o aluno depois precisa "reenviar" trocando a senha. UX ruim.

**Recomendação:** mover `renderOnda1()` e `IAAD.fetchAndRender()` para depois de `checkLGPDConsent()` resolver — espera consentimento (ou skip de admin) antes de qualquer leitura. **Forte aderência a "intenção da LGPD" mesmo quando o JS é "tecnicamente permitido".**

---

#### Re-render em `visibilitychange/focus` — `portal.html:901–918`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **Debounce 500ms** + guard `hasOpenModal()`. Bom.
2. **Re-render dispara `renderOnda1` mas NÃO `IAAD.fetchAndRender`.** Aluno que submete algo numa aba, volta para portal, vê o portal-ondax atualizado MAS o card IAAD desatualizado. **Inconsistência sutil.**

**Recomendação:** adicionar `IAAD.fetchAndRender(iaadTarget)` no re-render schedule.

---

### Páginas de aula (amostra: aula-04.html)

#### Sliders confidence — `aula-04.html:100,175,196,274,295,373,394,481,502,598`

**Veredito:** ✅ OK (técnico) / ⚠️ Bug master vive nas leituras downstream
**Severidade:** S2 (na origem)
**Problema(s):**
1. `<input type="range" min="1" max="5" value="3">`. ✅ Escala 1–5 consistente com schema CHECK.
2. **`MPE.updateSlider`** apenas atualiza o `<span>` de display, não persiste. Persistência só no botão "Registrar".
3. **`MPE.recordConfidence`** (aula-04.html:736–753): lê `parseInt(input.value)`, chama `MicroTracker.recordConfidence` que escreve 1–5 cru. ✅
4. **Slider rehydration:** SE o aluno re-abrir a página depois de já ter respondido, **não há rehydration de valor** (slider sempre inicia em 3). Botão "Registrar" fica disabled (`disabled = true` na linha 742) só por causa do estado em memória — fechou aba e abriu, fica habilitado de novo. Não é bug, é "comportamento", mas pode duplicar registros se o aluno submeter de novo.

---

#### Micro-checkpoints, paper, reflexão (`MPE.microAnswer`, `MPE.completePaperExercises`, `MPE.completeReflection`) — `aula-04.html:756–865`

**Veredito:** ✅ OK
**Severidade:** S1
**Problema(s):**
1. **`MPE._rehydrate`** existe em `aula-XX.html`? Não vejo chamada na amostra (linha 717–722 só faz startPage + MicroQuiz.init). Sem rehydration declarado, o aluno que recarrega a página perde estado UI (mas dados ficam no DB). Aceitável para checkpoints, frustrante para "complete-* button habilitado" — defensivo via tracker local.
2. **Paper exercises:** `MPE.recordPaperExercise` em tracker.js:503–518 escreve em `paper_exercises`. Frontend (`MPE.updatePaperState`, linha 833) requer `app.length >= 10` para habilitar o botão. RLS aceita qualquer string não-null. ✅

---

### tracker.js — gating de submissão e timing

#### `MicroQuizGraded.init` + gate de prazo — `tracker.js:880–965`

**Veredito:** ✅ OK
**Severidade:** S2
**Problema(s):**
1. **Usa `MPE_CALENDARIO.isClosed` (não `isCanonicaFechada`)** — `isClosed` retorna `Date.now() >= ACESSO_LIVRE_FIM`. ✅ Correto para gating de submissão.
2. **Banner "Prazo encerrado em DD/MM HH:MM"** mostra `prazo.fecha` = 02/07 18:00 para todo componente. Aluno vê "Prazo encerrado em 02/07 18:00" — pedagogicamente honesto sobre quando a plataforma fechou. **Mas não menciona janela canônica IAAD.** Aluno que perdeu a janela canônica (mas ainda pode submeter) **não vê aviso** que sua submissão vai contar para `c_geral` mas não para `c_prazo`.
3. **`isNotYetOpen`** funciona — mas com `ACESSO_LIVRE_INICIO = 15/04`, nunca dispara para nenhuma aula hoje.

**Recomendação:** adicionar nota "Esta submissão será computada no Cumprimento Geral, mas a janela ideal (`c_prazo`) já fechou em DD/MM" quando `isCanonicaFechada(...)` é true mas `isClosed(...)` é false.

---

## Privacidade

Tabela: cada chamada do portal que envolve dados externos ao próprio aluno.

| Função/RPC | Lê de | Aluno vê dado de outro? | Caminho seguro? | Risco residual |
|---|---|---|---|---|
| `MpeDB.fetchMyDataAll` | 9 tabelas em `public.*` | **Não** — todas `.eq('user_id', uid)` + RLS confirma | ✅ Dupla camada | Nenhum |
| `MpeDB.getClassTimePercentiles` | RPC `get_class_time_percentiles` (k=5) | **Não** — agregado k-anônimo, sem `user_id` | ✅ SECURITY DEFINER + HAVING COUNT(DISTINCT user_id)>=5 | Nenhum |
| `IAAD.fetchAndRender → get_iaad` | RPC `get_iaad(p_user_id)` | **Não** — RPC checa `auth.uid() <> p_user_id` AND NOT is_admin (migration 2026-05-09:183) | ✅ SECURITY DEFINER + check explícito | Nenhum |
| `IAAD.fetchAndRender → get_iaad_class_distribution` | RPC | **Indireto** — vetor ordenado de IAAD; aluno pode inferir posições por triangulação se conhece valores externos | ✅ Sem `user_id` | Pequeno: turma <10 pessoas, vetor de 5 valores ordenados permite identificar alguém por canal lateral |
| `PortalOndax.loadMyData` | wraps `fetchMyDataAll` | **Não** | ✅ | Nenhum |
| `MicroTracker._save` (localStorage) | localStorage `mpe_microI_tracker` | **Sim, em tese** — se o aluno usa máquina compartilhada e logout não limpa `mpe_microI_tracker`, próximo usuário do navegador lê dados do anterior | ⚠️ `logout()` em tracker.js:75 só remove `SESSION_KEY`, NÃO `STORAGE_KEY` | **Real:** máquina compartilhada vaza tracking local do aluno anterior. |
| `console.log('[IAAD] iaadRes:', ...)` | iaad.js:297–298 | **Apenas próprio dado**, mas com `breakdown` jsonb completo no console | ✅ Próprio | Pequeno: máquina compartilhada + dev tools |

**Vazamento residual confirmado:**
1. **`MicroTracker` em máquina compartilhada:** `MicroAuth.logout()` em `tracker.js:75–82` chama `MicroTracker.flush()` + remove `SESSION_KEY` mas **não remove `STORAGE_KEY`** nem chama `MicroTracker.clearAll()`. Próximo usuário do mesmo navegador acessa o portal, faz login, e `MicroTracker.getData()` continua devolvendo dados do aluno anterior (chaveados por matrícula). Embora o display de `studentData = data[mat]` filtre, **a função `MicroTracker.exportJSON()`** exporta TUDO de `mpe_microI_tracker` — qualquer botão "exportar local" vazaria dados de outros alunos da mesma máquina. **S4 — exposição real, baixa probabilidade mas grave consequência.**

2. **Console.log do IAAD:** desenvolvedor frontend que olha o console em sala de aula com a tela projetada vaza `breakdown` completo. Negligível mas evitável.

**Privacidade no caminho IAAD: ✅ Modelo a replicar.** RPC `get_iaad` é um caso-livro de "SECURITY DEFINER + check explícito de auth.uid() vs parâmetro + GRANT mínimo (authenticated)". É exatamente como se faz.

---

## Consistência IAAD ↔ JS local

| Métrica visível ao aluno | Onde aparece | Fonte | Recalcula client-side? | Divergência potencial vs IAAD |
|---|---|---|---|---|
| **IAAD total + componentes** | Card IAAD | RPC `get_iaad` | Não | **Zero** ✅ |
| **Breakdown 9×6 (●/◐/·)** | Card IAAD | `data.breakdown` jsonb do RPC | Não | **Zero** ✅ |
| **Histograma turma** | Card IAAD | RPC `get_iaad_class_distribution` | Bin client-side, valor servidor | **Zero** ✅ |
| **`stat-done` (Aulas completas)** | Header topo | Local: `aulaSummary` (4 componentes done) | **Sim, divergente** | **Médio-alto** — IAAD exige 6 itens, local exige 4 |
| **`stat-first` (Acerto 1ª)** | Header topo | Local: `computeFirstTryAccuracy` em `MicroTracker.getData()` | **Sim, divergente** | **Alto** — local inclui embedded+micro-checkpoint; IAAD filtra `phase IN (pre_review, post, exerc)` |
| **`stat-streak` (Dias)** | Header topo | Local: `computeStreak` em `MicroTracker.getData()` | Não comparável | N/A — IAAD não tem streak |
| **Próximo passo (next-step-text)** | Card vermelho | `PortalOndax.buildNextStep` (pendings + circadian) | Sim | N/A — recomendação, não nota |
| **Ritmo (rhythm-badge)** | Header | `PortalOndax.computeRhythm` | Sim | N/A — derivado de janela canônica + done count |
| **Calibração ECE** | Card "Calibração" | `PortalOndax.buildCalibration` | **BROKEN** | N/A — Onda 4, mas bug master de escala (S5) |
| **Mastery map** | Não existe | — | — | — |
| **Aulas concluídas (badge dentro do card de aula)** | Grid | `aulaSummary` (4 componentes) | **Sim, divergente** | **Médio** — mesma divergência do `stat-done` |

**Recomendações de consolidação:**

1. **Eliminar redundâncias:**
   - Remover `stat-done` do topo → manter só `c_geral_aulas_full` no IAAD.
   - Remover `stat-first` do topo → manter só `P` no IAAD.
   - Mover `stat-streak` para dentro do IAAD card como "atributo cosmético", deixando claro que **não entra na nota**.

2. **Etiquetar onde for indispensável manter (Opção C do achado `computeFirstTryAccuracy`):**
   - Renomear "Acerto 1ª tentativa" para "Acerto agregado (todas as tentativas)" com tooltip "diferente do IAAD; veja card abaixo para o `P` que entra na nota".
   - Renomear "Aulas completas" para "Aulas com 4 componentes feitos" e adicionar nota "para contar como aula integralmente cumprida no IAAD, complete também as 2 reflexões".

3. **Migrar para SSOT:**
   - `aulaSummary` consulta `iaad.breakdown.aula_X` quando disponível (renderiza badge `✓ 6/6` ou `4/6` baseado em IAAD), com fallback local quando RPC off.

---

## Hipóteses silenciosas

Premissas não-declaradas que o portal assume:

1. **Timezone do navegador = BRT.** Aluno do exterior verá horários errados em `cal.fmt(prazo.fecha)` (portal.html:498, 502, 518) e em `renderPath` (linhas 321–328). Só o `buildCircadian` (linha 802–809) força BRT explícito. Inconsistência cross-funcional.
2. **Schema do RPC `get_iaad` é estável.** Se a migration mudar o nome `c_geral_aulas_full` → `cg_full`, `IAAD.render` (iaad.js:216) quebra silenciosamente (`undefined || 0 = 0`).
3. **`MicroTracker.getData()` retorna estrutura compatível.** `computeFirstTryAccuracy` e `computeStreak` lêem `studentData.quizzes[pid].questions[qid].attempts[0].correct/timestamp`. Se MicroTracker mudar, JS quebra.
4. **`session.matricula` é único por aluno.** Em modo Supabase, vem do profile. Se houver duplicata, `MicroTracker.getData()[mat]` agrega — vaza entre os dois.
5. **`AULAS_DATAS` no calendario.js bate com `iaad_calendar` no Postgres.** Atualmente bate, mas se um futuro fix mudar uma data num lado e esquecer o outro, `getJanelaCanonica` vira mentira. Não há teste de mesa que compare os dois.
6. **`role = 'student'`** em qualquer leitura admin/student é canônico. Aluno com `role` corrompido (NULL ou string vazia) cai no card mas não em `get_iaad_class_distribution` (que filtra `role='student'`).
7. **`fetchMyDataAll` carrega tudo em <2s para n=50 alunos.** Em escala maior, 9 selects em paralelo pode degradar.
8. **Aluno tem 1 sessão ativa.** Se aluno abrir o portal em duas abas, `MicroTracker.startPage` em outra página dispara heartbeat que pode race com `loadMyData`. Em prática, aceitável.
9. **`MPE_CALENDARIO` está carregado quando `PortalOndax` é chamado.** Defensivo no código (`if (!cal || !cal.getJanelaCanonica)`).
10. **Senha trocada → escrita funciona.** O `can_write_student_data()` no DB confirma. Mas se trocou senha em outra sessão e a sessão atual não recarregou `session.password_changed_at`, vai tentar escrita e falhar com toast "RLS rejeitou" — `_showBlockerToast` (tracker.js:188–239) lida bem.

---

## Riscos sistêmicos

Top-5 problemas que afetam mais de uma área:

1. **Falta de SSOT centralizada para "aula concluída".** `aulaSummary`, `stat-done`, `c_geral_aulas_full`, `iaad.breakdown.aula_X.material.done`, `IAAD.render` — quatro lugares com **três definições diferentes** do que é "concluído". Recomendação: documentar **uma** definição (a do IAAD) e fazer o resto consumi-la. Senão, próxima feature que tocar isso vai criar a quinta versão.

2. **Bug master de escala confidence repete em sites isolados.** O admin recebeu fix em 3 sites via helper `_confTo100`. O portal foi esquecido. **Não há teste de regressão** que valide "escala confidence consistente entre admin e portal". Recomendação: extrair `_confTo100` para `mpe-db.js` ou `tracker.js` como helper global e usar em **todo** site que lê `confidence_ratings.value`.

3. **Ordenação ausente em fetches.** `fetchMyDataAll` (mpe-db.js:548–562) **não ordena** `quiz_question_attempts`, `micro_attempts`, `confidence_ratings`. Vários consumidores assumem ordem cronológica de `attempts[0]` (`PortalOndax.buildCalibration:617–622`, `computeFirstTryAccuracy:407–414`, `buildNudges.R1:957–974`). Em quizzes "1 submissão", bug não dispara; em micro-checkpoints (3 tentativas), dispara. O admin foi corrigido (commit `dd5e433` adicionou `.order('answered_at', { ascending: true })` em `adminFetchAll`). **Portal NÃO foi.**

4. **Render assíncrono sem coordenação:** `renderOnda1()` e `IAAD.fetchAndRender()` rodam em paralelo (portal.html:890,893). Não há `await Promise.all([...])` nem indicação visual de "carregando" no IAAD card. Resultado: aluno vê portal renderizado parcialmente, salta o IAAD que demora mais. Estado intermediário é ambíguo (loading? ou vazio mesmo?).

5. **Cookie/session race em multi-aba:** `MicroAuth.getSession()` retorna `sessionStorage` (não cookie). Aluno em duas abas tem dois `sessionStorage` distintos? **Não — sessionStorage é por aba**. Se ele troca a senha numa aba, a outra fica com `password_changed_at = null` em memória. RLS pega no DB, mas localStorage acumula bytes que ele não vai conseguir reenviar. **UX ruim no edge case "duas abas abertas".**

---

## Apêndice: padrões varridos

- **`c.value` / `confidence_ratings.value`**: 4 leituras no portal-ondax.js, 1 buggy (`buildCalibration:613`); 1 leitura no tracker.js (escrita), correto; 1 CHECK constraint no schema (`schema.sql:130`), correto.
- **`attempts[0]`**: 3 sites usam — `computeFirstTryAccuracy:407,411` (broken, sem order), `buildNudges.R1:957–963` (sort manual via localeCompare, OK), `_gradedRehydrate:843` (rows já vem `.order()` na fetchQuizQuestionAttempts:189, OK).
- **`MPE_CALENDARIO.getJanelaCanonica`**: 4 sites usam (`stepStatus:215`, `pickFocusAula:193`, `buildCircadian:824`). Todos OK pós-fix.
- **`MPE_CALENDARIO.getPrazo`**: 5 sites usam no portal/tracker. `tracker.js:904,919` (banner de prazo, correto). `portal.html:498,506,518,624,640,641,646,661` (display de prazos, OK porque ACESSO_LIVRE_FIM é o que o aluno pode submeter de fato). Todos defensáveis.
- **`auth.uid() <> p_user_id` em RPC IAAD**: 1 check em migration 2026-05-09:183. Caminho correto.
- **`role = 'student'`** filter em RPCs agregadas: presente em `get_iaad_class_distribution` (linha 401) e `get_iaad_class_quartiles` (linha 322). ✅
- **`is_admin()` SECURITY DEFINER**: 1 definição em schema.sql:25–37. Usada em policies SELECT de tabelas. ✅
- **`can_write_student_data()` SECURITY DEFINER**: 1 definição em schema.sql:47–59. Usada em policies INSERT/UPDATE de telemetria. ✅
- **`renderOnda1` chamadas**: portal.html:890 (init) + portal.html:911 (re-render). IAAD card só é renderizado uma vez (linha 893–896); re-render do portal não atualiza IAAD. **Inconsistência.**
- **`console.log` no portal**: iaad.js:297–298 + tracker.js:243 + mpe-db.js:243,652,666,682,693. Aceitável em DEV; em produção, gate via `MPE_CONFIG.DEBUG`.
- **`localStorage.removeItem(STORAGE_KEY)`**: 1 ocorrência em `clearAll` (tracker.js:617). **NÃO é chamada em `logout()`** — vetor de vazamento em máquina compartilhada confirmado.

---

## Nota final do auditor

O portal está em estado defensável para a turma, mas tem 3 problemas S5 que precisam fix antes da próxima aula presencial (qua 20/05 · Aula 5). O bug master de escala confidence é o pior: o aluno **está vendo** um diagnóstico errado de calibração há 4 semanas. O sintoma é tão constante (todos "🧊 under-confident · ECE 57%") que provavelmente passa despercebido, mas o moment o Darcio for falar sobre calibração metacognitiva em aula, qualquer aluno atento vai questionar.

Os outros dois S5 (divergência stat-done vs IAAD e stat-first vs P) são menos graves por aluno mas comprometem **confiança no sistema de nota**. Quem entrega 30% da nota via IAAD precisa de um portal que mostre o IAAD com consistência militar.

O bom: o caminho IAAD-puro do card e o uso correto de `getJanelaCanonica` no E3/E4 mostram que a arquitetura sabe ser correta quando se preocupa em sê-la. Replicar esse padrão (consumir RPC + zero recálculo client-side) para os widgets do header resolve 2 dos 3 S5.

A privacidade está, no geral, bem cuidada — RLS no DB é o guardião final e funciona. A exceção pequena (logout não limpa localStorage) é trivial de corrigir e tem impacto baixo na turma do MPE (máquina pessoal), mas pode pegar se um aluno usar máquina compartilhada.

---

**Próximo passo recomendado:** ler `plano-fixes-portal-2026-05-15.md` no mesmo diretório.
