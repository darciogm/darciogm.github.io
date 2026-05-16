# Plano de fixes do portal do aluno — 2026-05-15

> **STATUS (2026-05-16):** Tier 1 ✅ 5/5 (commit `7adfc7d`). Tier 2 ✅ 10/10 (commit `fa466a0`). Tier 3 ✅ 8/11 (commit `<este>`); 3 deferidos com justificativa abaixo.

**Base:** `auditoria-portal-aluno-2026-05-15.md` (32 unidades auditadas, S5×3 + S4×8 + S3×9 + S2×7 + S1×5).
**Calibre:** ranqueado por severidade × esforço × valor pedagógico.
**Janela:** 5 dias até a Aula 5 (qua 20/05 19:30). Tier 1 obrigatório antes disso.

---

## Tier 1 — corrigir antes da próxima aula (qua 20/05)

Itens S5 que mudam o que o aluno decide ou que sustentam confiança na nota. **Sem estes, a Aula 5 começa com aluno questionando o que vê.**

### T1.1 — Fix do bug master de escala confidence em `portal-ondax.js`

- **Severidade:** S5
- **Esforço:** 1 linha de código + 1 comentário + 1 teste de mesa.
- **Valor pedagógico:** Alto — restaura uma das 3 leituras do "perfil de aprendizagem".
- **Arquivo:** `platform/js/portal-ondax.js:637`

**Fix:**
```js
// Antes (linha 637):
conf: Math.max(0, Math.min(100, c.sum / c.n)),

// Depois:
// Mapeia escala 1–5 do schema CHECK (confidence_ratings.value)
// para [0,100] esperado pelos bins ECE de 25pp. Bug master corrigido
// no admin via _confTo100; replicado aqui. Ver auditoria-portal-aluno-2026-05-15.md §"buildCalibration".
conf: Math.max(0, Math.min(100, ((c.sum / c.n) - 1) / 4 * 100)),
```

**Validação:** rodar mentalmente com fixture: c={sum:15,n:5} (média=3, "neutro") → conf=50. Com sum=25,n=5 (média=5, "totalmente confiante") → conf=100. Com sum=5,n=5 (média=1) → conf=0. ✅

**Risco residual:** se outro site (em outro arquivo) tiver mesmo bug, segue errado. Para mitigar, extrair `MPE._confTo100` em `tracker.js` ou `mpe-db.js` como helper global e replicar no admin + portal num único ponto.

---

### T1.2 — Eliminar `stat-first` redundante OU etiquetar como "agregado"

- **Severidade:** S5 (mostra número diferente do que entra na nota)
- **Esforço:** Trivial (remoção) ou pequeno (rename + tooltip).
- **Valor pedagógico:** Alto — fim de uma fonte de confusão sobre nota.
- **Arquivo:** `platform/portal.html:27,402–416,735–736`

**Decisão pedagógica (precisa do Darcio):** opção A (remover) ou opção C (etiquetar)?

**Opção A — Remover (recomendada):**
```html
<!-- portal.html:27, remover badge inteira -->
<!-- <div class="stat-badge"><div class="val" id="stat-first">—</div><div class="lbl">Acerto 1ª tentativa</div></div> -->
```
Remover também `computeFirstTryAccuracy` (linha 402–416) e `document.getElementById('stat-first').textContent = ...` (linha 735–736). O `P` do IAAD card cobre.

**Opção C — Etiquetar:**
```html
<div class="stat-badge" title="Acerto em 1ª tentativa agregado (inclui micro-checkpoints e quizzes embedded). Para o número que entra na nota, veja o componente P do IAAD card abaixo.">
  <div class="val" id="stat-first">—</div>
  <div class="lbl">Acerto agregado (1ª)</div>
</div>
```

Recomendação: **A**. Menos UI = menos confusão.

---

### T1.3 — Eliminar `stat-done` redundante OU alinhar definição com IAAD

- **Severidade:** S5 (idem T1.2)
- **Esforço:** Médio (se alinhar definição, requer refator de `aulaSummary`).
- **Valor pedagógico:** Alto.
- **Arquivos:** `platform/portal.html:26,538,606,608`, `platform/js/portal-ondax.js:367–383`

**Decisão pedagógica (precisa do Darcio):**

**Opção A — Remover (recomendada):**
Remover `stat-done` da grid de badges (linha 26). O `c_geral_aulas_full` no IAAD card cobre. A barra de progresso (`progress-fill`, linha 31) pode usar `(iaad.c_geral_aulas_full || 0) / 9` lido do RPC quando disponível, com fallback local.

**Opção B — Alinhar `aulaSummary` ao IAAD:**
Atualizar `PortalOndax.aulaSummary` para iterar 6 itens (material, quiz_pre, quiz_pos, exerc, refl_nebulosa, refl_aula) em vez de 4 componentes (pre, material, pos, exerc). Requer detectar reflexões via `myData.reflections` (filtrar por `prompt_id IN ('nebulosa','aula')` + `length(text) >= 10`).

Recomendação: **A**, mais simples e menos duplicação de SSOT. Mas se quiser manter, **B** é a única forma honesta.

---

### T1.4 — Adicionar ordem cronológica nos fetches de `fetchMyDataAll`

- **Severidade:** S5 (precondição para T1.1 funcionar bem e para `buildCalibration` ler "primeira tentativa" correto)
- **Esforço:** 4 linhas.
- **Arquivo:** `platform/js/mpe-db.js:548–562`

**Fix:**
```js
// fetchMyDataAll: linhas 553–556
client.from('confidence_ratings').select('*').eq('user_id', uid).order('recorded_at', { ascending: true }),
client.from('micro_attempts').select('*').eq('user_id', uid).order('answered_at', { ascending: true }),
client.from('quiz_aggregates').select('*').eq('user_id', uid),
client.from('quiz_question_attempts').select('*').eq('user_id', uid).order('answered_at', { ascending: true }),
```

Mesma correção que o `adminFetchAll` recebeu no commit `dd5e433`.

---

### T1.5 — Bloquear `renderOnda1`/`IAAD.fetchAndRender` antes do consentimento LGPD

- **Severidade:** S4 (espírito da LGPD, não bug técnico)
- **Esforço:** Médio (refator de orquestração).
- **Arquivo:** `platform/portal.html:890,893–896,324–345`

**Fix:** orquestrar como cadeia em vez de paralelo:
```js
// Substituir:
//   setTimeout(checkPasswordGate, 400);
//   ...
//   renderOnda1();
//   if (window.IAAD) { ... IAAD.fetchAndRender(...); }

// Por:
async function bootstrap() {
  await new Promise(r => setTimeout(r, 400));  // espera mirrorToSessionStorage
  await checkPasswordGate();   // bloqueante se modal abrir
  await checkLGPDConsent();    // bloqueante se modal abrir
  await renderOnda1();
  if (window.IAAD) {
    var iaadTarget = document.getElementById('iaad-card-target');
    if (iaadTarget) await window.IAAD.fetchAndRender(iaadTarget);
  }
}
bootstrap();
```

Requer `checkPasswordGate`/`checkLGPDConsent` retornarem Promise que resolve quando modal fecha (ou imediatamente se não precisa). Hoje são fire-and-forget. Pequena refatoração com `new Promise(resolve => { ... })` ao redor do modal.

**Risco:** se o aluno fechar o modal sem consentir, o portal fica em branco. Aceitável — política da LGPD.

---

## Tier 2 — semestre (até 17/06)

Itens S4–S3 que melhoram qualidade do sinal e UX, mas não são catastróficos a curto prazo.

### T2.1 — Limpeza de `localStorage` no logout

- **Severidade:** S4 (privacidade em máquina compartilhada)
- **Esforço:** 1 linha.
- **Arquivo:** `platform/js/tracker.js:75–82`

**Fix:**
```js
logout: function() {
  MicroTracker.flush();
  MicroTracker.clearAll();             // ← NOVO: limpa STORAGE_KEY
  sessionStorage.removeItem(SESSION_KEY);
  if (_supabaseAuthOn()) {
    MpeDB.signOut();
  }
}
```

Adicionalmente, considerar `localStorage.removeItem('mpe_blocker_toast_dismissed')` e similares se houver.

---

### T2.2 — `computeStreak` no portal espelha o fix do admin (3 fontes adicionais)

- **Severidade:** S3
- **Esforço:** Pequeno (rewrite de função).
- **Arquivo:** `platform/portal.html:418–445`

**Fix:** reescrever para consumir `myData` (resultado de `loadMyData`) em vez de `MicroTracker.getData()`, e incluir `section_progress.completed_at`, `confidence.recorded_at`, `micro_attempts.answered_at`. Mover para `portal-ondax.js` como `PortalOndax.computeStreak(myData)`.

Modelo: ver `admin.html` pós-commit `dd5e433`.

---

### T2.3 — Re-render do IAAD em `visibilitychange`

- **Severidade:** S3 (inconsistência sutil)
- **Esforço:** 2 linhas.
- **Arquivo:** `platform/portal.html:906–913`

**Fix:**
```js
_reTimer = setTimeout(function() {
  _reTimer = null;
  if (hasOpenModal()) return;
  renderOnda1();
  // NOVO: re-render IAAD card também
  var iaadTarget = document.getElementById('iaad-card-target');
  if (iaadTarget && window.IAAD) window.IAAD.fetchAndRender(iaadTarget);
}, 500);
```

---

### T2.4 — `pickFocusAula` ignora `isFinalAssessment`

- **Severidade:** S3
- **Esforço:** 1 linha.
- **Arquivo:** `platform/js/portal-ondax.js:184–199`

**Fix:**
```js
PortalOndax.pickFocusAula = function(aulas) {
  var cal = window.MPE_CALENDARIO;
  for (var i = 0; i < aulas.length; i++) {
    var a = aulas[i];
    if (!a.available) continue;
    if (a.isFinalAssessment) continue;        // ← NOVO
    if (!cal || !cal.getJanelaCanonica || a.n > 9) return a;
    var pos = cal.getJanelaCanonica(a.n, 'pos');
    if (!pos || Date.now() < pos.fecha) return a;
  }
  for (var j = aulas.length - 1; j >= 0; j--) {
    if (aulas[j].available && !aulas[j].isFinalAssessment) return aulas[j];  // ← NOVO
  }
  return null;
};
```

---

### T2.5 — `computePath.combined` distingue `pos done, exerc closed` de `locked`

- **Severidade:** S3 (cosmético + confusão UX)
- **Esforço:** Pequeno.
- **Arquivo:** `platform/js/portal-ondax.js:272–276`

**Fix:** adicionar estado intermediário `partial` e renderizar com cor amarela:
```js
var combined;
if (pos.state === 'done' && exerc.state === 'done') combined = 'done';
else if (pos.state === 'closed' && exerc.state === 'closed') combined = 'closed';
else if (pos.state === 'open' || exerc.state === 'open') combined = 'open';
else if (pos.state === 'done' || exerc.state === 'done') combined = 'partial';  // ← NOVO
else combined = 'locked';
```

Atualizar `renderPath` para renderizar `partial` com ícone "½" e cor #d97706 (amber).

---

### T2.6 — Aviso "fora da janela canônica" no banner do tracker.js

- **Severidade:** S3 (transparência sobre nota)
- **Esforço:** Médio (lógica adicional no gate).
- **Arquivo:** `platform/js/tracker.js:895–928`

**Fix:** Quando `isCanonicaFechada(...)` for true mas `isClosed(...)` for false, exibir banner amarelo (não vermelho):
```js
if (pctx && MPE_CALENDARIO.isCanonicaFechada(pctx.aula_n, pctx.componente)
        && !MPE_CALENDARIO.isClosed(pctx.aula_n, pctx.componente)) {
  var janela = MPE_CALENDARIO.getJanelaCanonica(pctx.aula_n, pctx.componente);
  var msg = 'Janela ideal encerrada em ' + MPE_CALENDARIO.fmt(janela.fecha)
          + '. Você ainda pode submeter (vale Cumprimento Geral), mas Cumprimento no Prazo desta aula não receberá pontos.';
  // renderiza banner amarelo, não desabilita submit
}
```

---

### T2.7 — Gate de `n_students` mínimo no `IAAD.percentileLabel`

- **Severidade:** S3 (mensagem errada para empates / n baixo)
- **Esforço:** Pequeno.
- **Arquivo:** `platform/js/iaad.js:30–43`

**Fix:**
```js
IAAD.percentile = function(value, values) {
  if (value == null || !values || values.length === 0) return null;
  if (values.length < 10) return null;            // ← gate de n mínimo
  var below = values.filter(function(v) { return Number(v) < Number(value); }).length;
  var ties  = values.filter(function(v) { return Number(v) === Number(value); }).length;
  return Math.round(100 * (below + 0.5 * ties) / values.length);  // ← mean rank
};

IAAD.percentileLabel = function(value, values) {
  var p = IAAD.percentile(value, values);
  if (p == null) return '';
  if (p >= 90) return 'top ' + Math.max(1, 100 - p) + '% da turma';
  if (p >= 50) return 'acima de ' + p + '% da turma';
  if (p >= 25) return 'abaixo de ' + (100 - p) + '% da turma';
  return 'percentil ' + p;                         // ← evita "bottom X%"
};
```

---

### T2.8 — Sub-itens menores do `IAAD.render`

- **Severidade:** S2-S3
- **Esforço:** Pequeno cada.
- **Arquivos:** `platform/js/iaad.js`

- (a) Gate por `MPE_CONFIG.DEBUG` para `console.log` (linhas 297–298, 304, 309).
- (b) Substituir `renderErr.stack` em UI por mensagem genérica + console.error (linha 317).
- (c) Tooltip em "IAAD: 6.40 / 10" explicando fórmula `0.60·C_geral + 0.20·C_prazo + 0.20·P`.

---

### T2.9 — Branch "performance alta, cumprimento baixo" em `suggestNextStep`

- **Severidade:** S3 (UX, frustração)
- **Esforço:** 2 linhas.
- **Arquivo:** `platform/js/iaad.js:266–277`

**Fix:**
```js
IAAD.suggestNextStep = function(data) {
  var cG = Number(data.c_geral_score || 0);
  var cP = Number(data.c_prazo_score || 0);
  var p  = Number(data.p_score || 0);
  var gap = cG - cP;
  if (p >= 7 && cG < 6) return 'Você está performando bem (P=' + p.toFixed(1) + ') — mas o Cumprimento Geral está aquém. Submeter as atividades pendentes faz o IAAD refletir o que você sabe.';
  if (cG < 5) return 'Cumprimento Geral abaixo de 5,0 — entregue as próximas 2 atividades pendentes.';
  // ... resto igual ...
};
```

---

### T2.10 — `_localToUnified` completa as 4 fontes faltantes

- **Severidade:** S3 (fallback honesto)
- **Esforço:** Médio.
- **Arquivo:** `platform/js/portal-ondax.js:66–124`

**Fix:** popular `empty.confidence`, `empty.microAttempts`, `empty.paperExercises`, `empty.reflections` lendo de `mine.sections[pid][sid].confidencePre/Post`, `mine.sections[pid][sid].microCheckpoint`, `mine.paperExercises`, `mine.reflections`. Adicionar banner "modo offline — dados parciais" quando `myData.source === 'local'`.

---

## Tier 3 — backlog

> **STATUS (2026-05-16):** 8/11 itens concluídos em 1 commit. 3 deferidos com justificativa:
> - **T3.6** logging reflexão expirada — cross-cutting com admin, fora do escopo desta sessão.
> - **T3.8** mover `computeStreak`/`renderSparkline` para portal-ondax.js — refator estrutural sem ganho funcional visível; risco>valor agora.
> - **T3.6** já documentado acima; o débito do T3.7 ficou apenas como comentário no `loadMyData` (sem consolidação real do dual-source).

- **T3.1** ✅ — Helper global `MpeUtil.confTo100` em `tracker.js`. Admin (`_confTo100`) e portal (`buildCalibration`) delegam ao helper. Eliminação da duplicação que originava bugs master recorrentes de escala.
- **T3.2** ✅ — Histograma SVG ganha `viewBox="-10 -2 ..."` + `preserveAspectRatio`; labels de tick em 0 e 10 não cortam mais.
- **T3.3** ✅ — `buildCircadian(myData, opts)` aceita `opts.pageRoot` para drill-down por aula (UI ainda não expõe `<select>`; hook pronto).
- **T3.4** ✅ — Dispense de nudges migrou de `sessionStorage` (array) para `localStorage` (mapa `{id: ts}`) com TTL de 7 dias. Compat lê v1 e migra. Tooltip "Dispensar por 7 dias".
- **T3.5** ✅ — `IAAD.dotPlot(values, studentValue)` novo; `IAAD.histogram` cai nele quando `n<10` (binning com poucos pontos era visualmente mentiroso).
- **T3.6** ⏸️ — Cross-cutting com admin Nudge Queue; deferido.
- **T3.7** ⏸️ — Apenas comentário documentando o débito dual-source em `loadMyData`.
- **T3.8** ⏸️ — Refator estrutural sem ganho funcional; deferido.
- **T3.9** ✅ — Badges 🎯/🔥/🧊 ganham tooltip com critério (ECE em pp, ref Guo et al. 2017 ICML) e valor real (`ECE=Xpp`).
- **T3.10** ✅ — `next-step-card` em mobile: `flex-wrap` + `min-width:0` no body + CTA full-width abaixo de 600px.
- **T3.11** ✅ — `#iaad-breakdown-detail` ganha `overflow-x:auto`; `.iaad-breakdown` table tem `min-width:380px`.

---

## Decisões pedagógicas pendentes

Itens que demandam input do Darcio antes do fix.

1. **T1.2 — `stat-first` no topo:** remover (Opção A) ou etiquetar (Opção C)?
   - **Recomendação:** A. O IAAD card já mostra `P` com peso pedagógico explícito.
2. **T1.3 — `stat-done` no topo:** remover (Opção A) ou alinhar `aulaSummary` com IAAD (Opção B)?
   - **Recomendação:** A. SSOT única no IAAD.
3. **T2.5 — `combined.partial`:** vale a pena adicionar estado intermediário? Ou simplificar `pos+exerc` para 2 steps separados no `renderPath`?
   - **Recomendação:** separar em 2 steps. Combinar pode ter sido decisão de layout; hoje confunde mais que ajuda.
4. **T2.6 — banner amarelo "fora da janela canônica":** ativar? Defensor "pedagogicamente honesto, leva o aluno a entender porque perdeu C_prazo". Detrator "ruído visual em algo que ele já não pode mudar".
   - **Recomendação:** ativar — transparência sobre nota > ruído.
5. **Bibliografia da `Calibração` no portal:** quando T1.1 for aplicado, o conteúdo do `showCalibHelp` precisa ser revisitado. Hoje cita "ECE" e "calibração perfeita" sem fonte. Pós-fix, calibração vira sinal real — vale citar **Guo et al. 2017** (mesma referência que o admin recebeu).

---

## Não está no escopo

Gaps que demandam novo schema / outro projeto:

- **NS.1** — Mastery Map por LO (E1 da proposta original). Requer tagging de `quiz_question_attempts.learning_objectives jsonb` e taxonomia (3–5 LOs × 9 aulas). Trabalho de design pedagógico independente.
- **NS.2** — Reflexão retornada (E6). Requer fluxo admin de "marcar reflexão como citada" + UI portal de exibir. Tabela `reflections.cited_in_class` existe (`mpe-db.js:455`) mas não é exibida ao aluno.
- **NS.3** — Trajetória na turma (E5 do dashboard-aluno-proposta). Requer cohort sparkline 9 pontos com banda P25–P75. Onda 4 do admin já computa drift; portar para o portal é projeto separado.
- **NS.4** — Badges de competência (E7). Requer regras de desbloqueio + schema (ou derivado on-the-fly). Projeto independente.
- **NS.5** — Banco de reflexões com busca (E10). Trivial mas baixo uso projetado; backlog mesmo.
- **NS.6** — IRT scoring (n maior necessário).
- **NS.7** — Sentiment trajectory das reflexões.
- **NS.8** — Heatmap slide × erro (requer retro-tagging questão→slide).

---

## Plano de execução sugerido — 5 dias até qua 20/05

| Dia | Itens | Tempo estimado |
|---|---|---|
| 16/05 sex | T1.1 (fix bug master ECE) + T1.4 (ordenação fetch) | 30 min |
| 17/05 sáb | T1.2 (remover stat-first) + T1.3 (remover stat-done) | 1h |
| 18/05 dom | T1.5 (gate LGPD bloqueante) + T2.1 (clearAll no logout) | 1h |
| 19/05 seg | Tier 2 leve: T2.3 (re-render IAAD) + T2.4 (pickFocusAula AF) + T2.7 (gate n_students) + T2.8a/b (debug logs / stack hidden) | 1h |
| 20/05 ter | QA + smoke test com conta de aluno demo; deploy | 1h |

Tier 2.2/2.5/2.6/2.9/2.10 → semana de 27/05 (depois da Aula 5, antes da Aula 6).

Tier 3 → pós-curso, integrar com melhorias estruturais do admin.

---

## Critério de sucesso

- ✅ Aluno abre o portal pós-fix e vê **um único número** para "acerto em 1ª tentativa" (o do IAAD).
- ✅ Aluno abre o portal pós-fix e vê **um único número** para "aulas concluídas" (o do IAAD `c_geral_aulas_full`).
- ✅ Aluno com confidence média pós =3, acerto 1ª =60% vê badge "🎯 Você se conhece" (não mais "🧊 under-confident · ECE 57%").
- ✅ RLS continua bloqueando leituras cross-user (testar com conta de aluno via dev tools — tentar `.from('reflections').select('*')` deve retornar só do próprio).
- ✅ Modal LGPD aparece **antes** de qualquer leitura ao Supabase em primeiro acesso (verificar via Network tab).
- ✅ Logout em máquina compartilhada não deixa `mpe_microI_tracker` no localStorage (verificar via dev tools).

Se algum dos critérios falhar pós-fix, voltar e investigar antes de declarar Tier 1 fechado.
