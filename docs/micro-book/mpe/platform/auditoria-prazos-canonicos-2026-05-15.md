# Auditoria: janela canônica vs deadline de plataforma — 2026-05-15

> **STATUS (2026-05-15 atualizado):** todos os 4 BUGs e 3 AT RISK identificados foram **corrigidos** no mesmo dia. Janela canônica agora tem espelho JS via `MPE_CALENDARIO.getJanelaCanonica(n, comp)` em `platform/js/calendario.js`. Bandeira nova 🐢 "atrasado crônico" foi adicionada (ortogonal ao 🌙 "crammer crônico"). Documento mantido como registro histórico — todos os fixes encontram-se também em `auditoria-dashboard-2026-05-15.md` e na seção "Duas noções de prazo" do `CLAUDE.md`.

**Escopo:** `platform/admin.html`, `platform/js/portal-ondax.js`, `platform/js/iaad.js`, `platform/js/tracker.js`, `platform/js/mpe-db.js`, `platform/js/calendario.js`. Foco exclusivo na confusão entre as duas noções de prazo (deadline de plataforma vs janela canônica IAAD-30).

**Convenção:**
- **Deadline plataforma** = `MPE_CALENDARIO.getPrazo(n,c).fecha` ≡ `ACESSO_LIVRE_FIM = 2026-07-02 18:00 BRT` (constante para qualquer aula/componente). **Continua válido para gating de submissão.**
- **Janela canônica** = `iaad_calendar` no Postgres + (após 2026-05-15) `MPE_CALENDARIO.getJanelaCanonica` no JS: `material/quiz_pre/refl_*` → `presencial_at` (D_X = qua aula 19:30); `quiz_pos/exerc` → `next_presencial_at` (D_{X+1} ou AF). **Use para tudo que não seja gating de submissão.**

---

## Sumário

- **N achados:** 8 (3 BUGs, 3 AT RISK, 2 CORRETOS)
- **Bug master já documentado:** `computeCircadian` (admin.html:4879)
- **Outros BUGs encontrados:**
  1. `_inboxGenGabaritoItems` em admin.html:6158 — chama `.getTime()` em number (typo de tipo, não confunde conceito de prazo, mas quebra inbox de gabarito) e usa `gabarito = 03/07` único → "gabarito libera em Xh" só dispara nas 48h finais do curso, nunca no ritmo semanal.
  2. `acts.knot` cobertura quiz pos baixa em admin.html:7263–7290 — mesma confusão de `computeCircadian`: filtro por `(now - p.fecha)` inviabiliza a feature enquanto o curso está ativo.
  3. `PortalOndax.computeCircadian` em portal-ondax.js:807–823 — réplica exata do bug master em código do aluno; cramming/avgDaysBefore/`crammedAulas` do estudante todos quebrados.

- **AT RISK** (decisão editorial necessária):
  4. `PortalOndax.pickFocusAula` em portal-ondax.js:184–198 — usa `pos.fecha` (deadline) para decidir aula-foco; com deadline único, sempre devolve a Aula 1 até 02/07.
  5. `PortalOndax.buildPendings` + `renderPendings` em portal-ondax.js:402–510 — buckets temporais "esta semana / próxima / mais adiante" colapsam em "mais adiante" para todos os itens.
  6. `PortalOndax.computeRhythm` em portal-ondax.js:523–559 — `lateCount` nunca incrementa antes de 02/07 → ninguém é "atrasado", todos viram "em-dia/pegando-ritmo".

- **CORRETOS** (anotados para registro):
  7. Tracker `init()` em tracker.js:895–928 — gating de submissão usa deadline plataforma, que é o conceito certo (até quando o aluno PODE submeter).
  8. `IAAD.fetchAndRender` + `renderBreakdown` em iaad.js:118–141, 279–323 — toda lógica de prazo canônico vive no Postgres (`get_iaad` consome `iaad_calendar`); o JS só renderiza `in_window`. Caminho correto.

- **Negativos confirmados** (varridos, sem confusão):
  - `mpe-db.js`: zero referências a prazo. Limpo.
  - Calendar heatmap (`_vizComputeCalendar`, admin.html:8330–8376): só usa `AULAS_DATAS` para flag visual de "dia de aula". Sem prazo.
  - Funil de aulas (`_vizComputeFunnel`, admin.html:8461–8528): nenhum corte temporal. Cobertura agregada all-time.
  - Nudge Queue (`computeNudgeQueue`, admin.html:3107–3320): prioriza por risco/inatividade/janela de reflexão. Não usa calendário.
  - Story climax/resolution (admin.html:7355–7433): janela é `lastVisitAtMs`, não prazo.
  - Story arc do aluno (`buildStudentStoryArc`, admin.html:9050–9141): pure-event, sem prazo.

---

## Achados

### 1. `computeCircadian` — `admin.html:4879–4934`

**Veredito:** ❌ BUG (já documentado pelo usuário, incluído aqui para completude e fix conjunto)

**Trecho:**
```js
var prazo = window.MPE_CALENDARIO.getPrazo(aulaN, comp);
if (!prazo || !prazo.fecha) return;
var fechaMs = prazo.fecha;
var deadlineWindow = 48 * 3600 * 1000;
if (!aulaEvents[aulaN]) aulaEvents[aulaN] = { total: 0, last48h: 0 };
aulaEvents[aulaN].total++;
if (e.ts >= fechaMs - deadlineWindow && e.ts <= fechaMs + 3600*1000) {
  aulaEvents[aulaN].last48h++;
}
```

**Análise:** A intenção pedagógica do cramming é "% dos eventos do aluno na janela de 48h ANTES da janela de submissão da aula X fechar". A janela conceitualmente correta é `next_presencial_at` (do `iaad_calendar`), porque é por aula que faz sentido medir cramming. Como `fecha = 02/07` para qualquer (aulaN, comp), todas as janelas de 48h colapsam num único intervalo no fim do curso. Resultado: hoje (15/05) `last48h` é sempre 0 → flag 🌙 nunca dispara, e em 30/06–02/07 vai inundar a turma inteira.

**Fix sugerido:**
```js
// Substituir prazo.fecha pela âncora canônica por componente:
//   material/quiz_pre/refl_* → AULAS_DATAS[aulaN-1]              (D_X)
//   quiz_pos/exerc           → AULAS_DATAS[aulaN] || AVALIACAO_FINAL   (D_{X+1})
function _ancoraCanonica(aulaN, comp) {
  var cal = window.MPE_CALENDARIO; if (!cal) return null;
  var aulaIdx = aulaN - 1;
  if (comp === 'pos' || comp === 'exerc') {
    return aulaN < 9 ? cal.AULAS_DATAS[aulaIdx + 1] : cal.AVALIACAO_FINAL;
  }
  return cal.AULAS_DATAS[aulaIdx]; // material/pre
}
```
E trocar `var fechaMs = prazo.fecha;` por `var fechaMs = _ancoraCanonica(aulaN, comp);` Recomendação consolidada: criar `MPE_CALENDARIO.getJanelaCanonica(aulaN, comp)` em `calendario.js` (ver §Recomendação).

---

### 2. `_inboxGenGabaritoItems` — `admin.html:6147–6181`

**Veredito:** ❌ BUG (duplo: bug de tipo + bug de conceito)

**Trecho:**
```js
function _inboxGenGabaritoItems() {
  if (!window.MPE_CALENDARIO || !window.MPE_CALENDARIO.getPrazo) return [];
  var now = Date.now();
  var horizon = now + INBOX_GABARITO_LOOKAHEAD_HRS * 3600000;  // now + 48h
  var items = [];
  for (var n = 1; n <= 9; n++) {
    ['pos', 'exerc'].forEach(function(comp){
      try {
        var p = window.MPE_CALENDARIO.getPrazo(n, comp);
        if (!p || !p.gabarito) return;
        var t = p.gabarito.getTime();           // ← TypeError silencioso (try/catch absorve)
        if (t < now || t > horizon) return;
        ...
```

**Análise:**

- **Bug 1 (tipo):** `p.gabarito` é `number` (ms), não `Date` — vem de `GABARITO_LIBERADO = dt('2026-07-03T00:00:00')` onde `dt()` retorna `getTime()`. `.getTime()` em number lança `TypeError: p.gabarito.getTime is not a function`, capturado pelo `try { } catch(err) {}`. Resultado: o gerador devolve sempre `[]`. Inbox de gabaritos NUNCA dispara.

- **Bug 2 (conceito):** Mesmo se o tipo fosse fixado, o conceito está errado para o objetivo da feature. O propósito do item de inbox "gabarito libera em Xh" é alertar o professor com 48h de antecedência do gabarito ficar visível à turma de UMA aula específica. Sob deadline plataforma, o gabarito é único (03/07 00:00) → o card só apareceria entre 01/07 22:00 e 03/07 00:00, com 18 itens duplicados (9 aulas × 2 componentes). O conceito correto é gabarito por aula, casado com `next_presencial_at + Δ` (gabarito libera no dia seguinte ao fechamento da janela canônica de cada aula). Como hoje a operação real está no calendário canônico (Postgres), o Inbox está cego para isso.

**Fix sugerido (mínimo, opção A — só liga o tipo):**
```js
var t = p.gabarito;  // já é ms; remover .getTime()
```
Isto faz o card disparar apenas em 01/07–02/07, ainda inútil semanalmente, mas pelo menos não estoura.

**Fix sugerido (correto, opção B):**
Ler janela canônica via `getJanelaCanonica(aulaN, comp).gabarito` (espelhada de `iaad_calendar` ou recomputada client-side: `next_presencial_at + 1d`). Aí o inbox passa a alertar 48h antes de cada gabarito da semana.

---

### 3. `acts.knot` cobertura quiz pos baixa — `admin.html:7263–7290`

**Veredito:** ❌ BUG

**Trecho:**
```js
} else if (window.MPE_CALENDARIO && window.MPE_CALENDARIO.getPrazo) {
  // Aula com cobertura <60% recém-fechada (ou aproximando)
  var nowMs = Date.now();
  var lowCov = null;
  for (var n = 1; n <= 9; n++) {
    try {
      var p = window.MPE_CALENDARIO.getPrazo(n, 'pos');
      if (!p) continue;
      var diff = (nowMs - p.fecha) / 86400000;
      if (diff < -2 || diff > 14) continue;
      ...
```

**Análise:** A janela `[-2d, +14d]` do prazo do quiz pos serve para detectar "aula que acabou de fechar (D-2 a D+0) ou ainda na janela de cuidado (até D+14)". Como `p.fecha = 02/07` para todas as aulas, hoje (15/05) `diff = (15/05 - 02/07) / 86400000 ≈ -48` para qualquer `n`. Filtro rejeita tudo. KNOT fallback de cobertura nunca dispara entre 22/04 e 30/06. Em 30/06–16/07 vai disparar simultaneamente para as 9 aulas, todas "recém-fechadas".

A intenção pedagógica é "aula X cuja janela de quiz pos acabou de encerrar" = `next_presencial_at` da aula X (D_{X+1} 19:30). Hoje, a Aula 4 fechou ontem 14/05 (D_5 = 14/05 19:30). Esse é o knot que o Story of Week deveria estar pintando.

**Fix sugerido:**
```js
var canonicaFecha = _ancoraCanonica(n, 'pos');  // ver fix do achado #1
var diff = (nowMs - canonicaFecha) / 86400000;
if (diff < -2 || diff > 14) continue;
```

---

### 4. `PortalOndax.computeCircadian` cramming — `portal-ondax.js:807–823`

**Veredito:** ❌ BUG (réplica exata do achado #1 no portal do aluno)

**Trecho:**
```js
var prazo = null;
try { prazo = cal.getPrazo(aulaN, comp); } catch(err) { prazo = null; }
if (!prazo || !prazo.fecha) return;
var fechaMs = prazo.fecha;
var deadlineWindow = 48 * 3600 * 1000;
var ak = aulaN + '::' + comp;
if (!aulaEvents[ak]) aulaEvents[ak] = { total: 0, last48h: 0, aulaN: aulaN };
aulaEvents[ak].total++;
if (e.ts >= fechaMs - deadlineWindow && e.ts <= fechaMs + 3600 * 1000) aulaEvents[ak].last48h++;
var dB = (fechaMs - e.ts) / 86400000;
if (dB >= 0) daysBefore.push(dB);
```

**Análise:** Mesma falha que `computeCircadian` no admin, só que aqui afeta o que o ALUNO vê sobre seu próprio padrão circadiano (`crammedAulas`, `chronic`, `avgDaysBefore`). Hoje:
- `crammedAulas` sempre vazio.
- `chronic` sempre `false`.
- `avgDaysBefore` sempre ~48d (artefato do deadline único, não reflete antecedência real do aluno em relação à aula presencial).

Resultado: o painel pessoal do aluno mente para ele de duas formas — diz que ele nunca está fazendo cramming (mesmo que esteja, em relação à aula presencial), e infla artificialmente `avgDaysBefore` ("você costuma fazer com 48 dias de antecedência" — falso).

**Fix sugerido:** Mesmo helper `_ancoraCanonica(aulaN, comp)` do achado #1, adaptado a `portal-ondax.js`. Idealmente extrair para `MPE_CALENDARIO.getJanelaCanonica(aulaN, comp)` em `calendario.js` (consumido por ambos).

---

### 5. `PortalOndax.pickFocusAula` — `portal-ondax.js:184–198`

**Veredito:** ⚠️ AT RISK (decisão pedagógica)

**Trecho:**
```js
PortalOndax.pickFocusAula = function(aulas) {
  var cal = window.MPE_CALENDARIO;
  for (var i = 0; i < aulas.length; i++) {
    var a = aulas[i];
    if (!a.available) continue;
    if (!cal || a.n > 9) return a;
    // Aula foco = primeira cujo pós ainda não fechou ou que ainda não
    // aconteceu. Se pós já fechou, tenta a próxima.
    var pos = cal.getPrazo(a.n, 'pos');
    if (!pos || Date.now() < pos.fecha) return a;
  }
  ...
};
```

**Análise:** Sob deadline único, `pos.fecha = 02/07` para qualquer aula → o loop devolve a PRIMEIRA aula `available` enquanto a turma estiver pré-02/07. Hoje (15/05), com Aula 4 recém-acontecida e Aula 5 chegando em 20/05, o portal continua focando o aluno na Aula 1.

A intenção do código (pelo comentário) é "primeira aula cujo ciclo pós ainda não acabou". Sob calendário canônico, essa âncora é `next_presencial_at` da aula X = D_{X+1} 19:30. Hoje, a foco correta seria Aula 5 (cujo `next_presencial_at` = 27/05 19:30, ainda no futuro), não Aula 1.

**Fix sugerido:** Trocar `pos.fecha` por `_ancoraCanonica(a.n, 'pos')`. (Decisão editorial: o usuário pode intencionalmente querer mostrar Aula 1 como "ainda válida para submeter" enquanto deadline da plataforma estiver aberto — mas então o nome `pickFocusAula` mente; deveria ser `pickAulaAvailableAfterDeadline`.)

---

### 6. `PortalOndax.buildPendings` + `renderPendings` — `portal-ondax.js:402–510`

**Veredito:** ⚠️ AT RISK (UI promete granularidade que não entrega)

**Trecho:**
```js
var diasRestantes = prazo != null ? Math.ceil((prazo - now) / 86400000) : null;
var urgencia = 'normal';
if (diasRestantes != null) {
  if (diasRestantes <= 2) urgencia = 'critica';
  else if (diasRestantes <= 5) urgencia = 'alta';
}
...
// renderPendings: 3 buckets ≤7d, 8–14d, >14d
if (d <= 7) b1.push(p);
else if (d <= 14) b2.push(p);
else b3.push(p);
```

**Análise:** Com `prazo = 02/07` único, `diasRestantes` para todos os componentes é constante e cai num único bucket (>14d até 18/06; depois migra todo mundo de uma vez para 8–14d e ≤7d). A UI mostra 3 baldes ("Fecha esta semana / Próxima semana / Mais adiante") que pretendem granularizar; na prática, são 1. Pior: cor "crítica" aparece simultaneamente em 36 cards (4 comps × 9 aulas) entre 30/06 e 02/07.

A intenção do balde "fecha esta semana" só faz sentido se o prazo for canônico (cada aula tem seu próprio `presencial_at`/`next_presencial_at`).

**Fix sugerido:** Usar `_ancoraCanonica` para `prazo`, ou (decisão editorial) reduzir UI a um único banner "tudo fecha em 02/07 18:00" se o usuário decidiu que a comunicação canônica não vale para o aluno. Como o aluno **vê** os prazos das datas presenciais nas páginas (CLAUDE.md tabela de aula), há expectativa de pendência por semana.

---

### 7. `PortalOndax.computeRhythm` — `portal-ondax.js:523–559`

**Veredito:** ⚠️ AT RISK (label "atrasado" nunca dispara)

**Trecho:**
```js
COMPS.forEach(function(c) {
  var st = PortalOndax.stepStatus(a, c, myData);
  if (st.state === 'locked') return;
  totalCount++;
  if (st.state === 'done') doneCount++;
  else if (st.state === 'open') openCount++;
  else if (st.state === 'closed') lateCount++; // não-done E fechado = perdeu prazo
});
```

**Análise:** `stepStatus` chama `MPE_CALENDARIO.isClosed(aula_n, comp)`, que devolve `Date.now() >= ACESSO_LIVRE_FIM` — sempre `false` até 02/07. Logo `lateCount` é sempre 0, e o ramo `if (lateCount >= 1) state = 'atrasado'` nunca executa enquanto o curso está em curso. Em 02/07 18:00, todos os componentes não-feitos viram `closed` simultaneamente → todo aluno vira "atrasado" de uma vez.

A intenção é "aluno deixou passar a janela canônica de uma aula" → conceito = `Date.now() >= next_presencial_at(aulaN, comp)`.

**Fix sugerido:** Adicionar branch em `stepStatus` (ou um `isCanonicaFechada(aula_n, comp)` em `calendario.js`) que devolva `closed` quando a janela canônica passou, mesmo se a deadline da plataforma ainda permite submissão. Isso desacopla "perdeu o ritmo" (canônico) de "ainda pode submeter" (deadline plataforma).

Alternativa minimalista: `lateCount` lê janela canônica; `disabled de submit` continua lendo deadline plataforma. UI ganha estado intermediário "fora de janela mas ainda submissível".

---

### 8. Tracker `init()` gating de submissão — `tracker.js:895–928`

**Veredito:** ✅ CORRETO

**Trecho:**
```js
if (!rehydrated && window.MPE_CALENDARIO) {
  var pageId = block.dataset.page;
  var pctx = MPE_CALENDARIO.parsePageId(pageId);
  if (pctx && MPE_CALENDARIO.isClosed(pctx.aula_n, pctx.componente)) {
    // ... desabilita submit, mostra "Prazo encerrado em DD/MM HH:MM"
  }
}
```

**Análise:** Aqui a pergunta é "o aluno ainda PODE clicar em submit?". Resposta canônica = deadline plataforma (a fonte da verdade do que o backend aceita). Uso correto. Não confunde com janela canônica.

**Caveat menor:** o texto "Prazo encerrado em [data]" não distingue do prazo canônico, então um aluno que olhar para isso depois de 02/07 vai ler "fechou em 02/07 18:00" — verdade. Mas se quisermos ser pedagogicamente honestos sobre a janela canônica, pode-se acrescentar "(janela ideal de aprendizado encerrou em DD/MM)" — opcional, fora do escopo deste fix.

---

### IAAD render path (anotação para registro) — `iaad.js:118–141, 279–323`

**Veredito:** ✅ CORRETO

**Trecho relevante (renderBreakdown):**
```js
function cell(item) {
  var d = item && item.done;
  var w = item && item.in_window;
  if (d && w) return '...●...'; // cumprido no prazo
  if (d)      return '...◐...'; // cumprido fora do prazo
  return '...·...';
}
```

**Análise:** `in_window` vem do RPC `get_iaad`, que no Postgres consulta `iaad_calendar`. Toda lógica de janela canônica fica no DB; o JS só renderiza. Caminho correto e desacoplado. Quando a feature for migrada para também ser visível ao admin, basta consumir o mesmo RPC.

---

## Recomendação consolidada

### Conceito correto por tipo de função

| Pergunta semântica | Conceito | Onde mora hoje |
|---|---|---|
| "O aluno PODE submeter agora?" | Deadline plataforma | `MPE_CALENDARIO.isClosed`, `getPrazo().fecha` |
| "O aluno cumpriu DENTRO da janela ideal?" (cramming, late, in_window) | Janela canônica | Postgres `iaad_calendar` (sem espelho JS) |
| "Qual a aula da semana?" / "Qual a aula recém-fechada?" | Janela canônica | Postgres (sem espelho JS) |
| "Quando o gabarito vira público para a turma?" | Janela canônica + 1d | Postgres (hoje confundido com deadline único) |

### Funções a corrigir, ordenadas por urgência

1. **🔴 admin.html:4879 `computeCircadian`** — flag 🌙 do dashboard professor está cega. Já documentado.
2. **🔴 portal-ondax.js:780 `PortalOndax.computeCircadian`** — mesmo bug do lado aluno. Painel pessoal mente.
3. **🟡 admin.html:6147 `_inboxGenGabaritoItems`** — silently no-op; inbox de gabaritos morto. Fix mínimo (remover `.getTime()`) é 1 linha.
4. **🟡 admin.html:7263 `acts.knot` cobertura** — Story of Week perde uma das três fontes de KNOT.
5. **🟢 portal-ondax.js:184 `pickFocusAula`** — afeta UX do aluno (foco em Aula 1 até 02/07). Decisão editorial.
6. **🟢 portal-ondax.js:402 `buildPendings`** — buckets temporais colapsam. Decisão editorial.
7. **🟢 portal-ondax.js:523 `computeRhythm`** — label "atrasado" nunca dispara. Decisão editorial.

### Sugestão: criar `MPE_CALENDARIO.getJanelaCanonica(aula_n, componente)` em `calendario.js`

Espelhar `iaad_calendar` no JS, evitando 2 implementações divergentes (admin + portal) do helper `_ancoraCanonica`.

```js
// Em calendario.js, ao lado de getPrazo:
function getJanelaCanonica(aula_n, componente) {
  if (aula_n < 1 || aula_n > AULAS_DATAS.length) return null;
  var idx = aula_n - 1;
  var presencial = AULAS_DATAS[idx];
  var next = aula_n < AULAS_DATAS.length ? AULAS_DATAS[idx + 1] : AVALIACAO_FINAL;
  // Mapeamento conforme iaad_calendar:
  //   material/pre/refl_*  → fecha em presencial_at
  //   pos/exerc            → fecha em next_presencial_at
  var fecha = (componente === 'pos' || componente === 'exerc') ? next : presencial;
  return {
    abre: ACESSO_LIVRE_INICIO,            // mesma abertura
    fecha: fecha,                          // âncora canônica
    gabarito: fecha + UM_DIA,              // libera D+1 (alinhar com Postgres)
    presencial_at: presencial,
    next_presencial_at: next
  };
}
```

Vantagens:
- Bug master e seus 3 derivados resolvem com a mesma 1-line patch (`getPrazo` → `getJanelaCanonica`) em cada call site.
- Mantém `getPrazo` intocado para gating de submissão (tracker, RLS, banner "prazo encerrado").
- Documentação clara: "use `getPrazo` para o que o aluno PODE; use `getJanelaCanonica` para o que o aluno DEVERIA".
- Quando o admin ganhar tab IAAD, o helper já existe.

**Cuidado:** o mapeamento `componente → âncora` PRECISA bater com `iaad_calendar`. Sugiro adicionar um teste de mesa que carregue uma fixture do calendário do Postgres e compare com `getJanelaCanonica`, ou (mínimo) um comentário explícito linkando para a migration `2026-05-09_iaad30.sql`.

### Não-fix recomendado

`mpe-db.js`, calendar heatmap, funil, nudge queue, story climax/resolution, story arc do aluno, IAAD render path — todos limpos. Não tocar.

---

## Apêndice: padrões varridos

- `getPrazo` — 8 call sites, 3 buggy (#1, #3, #4 acima), 1 com bug de tipo (#2), 4 OK (tracker submit + 4 helpers em portal-ondax já cobertos pelos achados #5, #6, #7).
- `MPE_CALENDARIO` — 21 referências (admin + portal + tracker), todas mapeadas.
- `ACESSO_LIVRE_FIM` — 1 definição em calendario.js, leak conceitual via `getPrazo().fecha` em todos os achados acima.
- `presencial_at` / `next_presencial_at` — 0 referências em JS (vivem só no Postgres). Confirma a tese do usuário: a janela canônica não tem espelho JS — esse é o overhead arquitetural a corrigir.
- `\.fecha` — 11 acessos, 5 problemáticos (#1, #2, #3, #4, #5), 6 OK (tracker, helpers de display).
- `Date.now() > prazo.fecha` (e variantes) — 3 ocorrências; 2 em calendario.js (`isClosed`, `isPreMonitoriaClosed` — semântica de gating, OK), 1 em portal-ondax.js:193 (achado #5).
- `48 * 3600 * 1000` (cramming windows) — 2 ocorrências, ambas buggy (#1 e #4).
- IAAD RPCs — 2 (`get_iaad`, `get_iaad_class_distribution`) ambos no caminho correto.
