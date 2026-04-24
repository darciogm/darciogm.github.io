/**
 * PortalOndax — lógica da Onda 1 do portal do aluno.
 *
 * Quatro elementos do dashboard-aluno-proposta.md:
 *   E3  Caminho até a próxima aula (checklist sequencial ativo)
 *   E2  Calibração de confiança pessoal (scatter + badge ECE)
 *   E4  Heatmap 7×24 pessoal (circadian) + nudge de cramming
 *   E8  Sugestão de prática ativa (até 3 nudges)
 *
 * Princípios:
 *   - Leitura only sobre Supabase + tracker local (fallback). Sem
 *     mudanças de schema.
 *   - Gates: métricas só aparecem quando há dados suficientes.
 *   - Voz: crescimento, nunca julgamento.
 *   - Fallbacks graciosos: tudo tem "—" + tooltip explicando o porquê.
 *
 * Dependências globais esperadas:
 *   window.MPE_CALENDARIO, window.MpeDB (pode estar disabled), window.MicroTracker,
 *   window.MicroAuth (de tracker.js), window.AULAS (definido no portal).
 */
(function() {
  'use strict';

  var PortalOndax = {};

  // ===================================================================
  // Coleta de dados (Supabase se disponível, local como fallback/merge)
  // ===================================================================

  /**
   * Carrega os dados do próprio aluno. Tenta Supabase primeiro; se falhar
   * ou estiver desativado, usa MicroTracker como fallback.
   * Retorna objeto unificado:
   * {
   *   source: 'supabase' | 'local',
   *   profile, pageVisits, sectionProgress, confidence, microAttempts,
   *   quizAggregates, quizQA, paperExercises, reflections
   * }
   */
  PortalOndax.loadMyData = async function() {
    if (window.MpeDB && window.MpeDB.enabled) {
      try {
        var res = await window.MpeDB.fetchMyDataAll();
        if (res && res.ok) {
          return {
            source: 'supabase',
            profile: res.data.profile || null,
            pageVisits: res.data.page_visits || [],
            sectionProgress: res.data.section_progress || [],
            confidence: res.data.confidence_ratings || [],
            microAttempts: res.data.micro_attempts || [],
            quizAggregates: res.data.quiz_aggregates || [],
            quizQA: res.data.quiz_question_attempts || [],
            paperExercises: res.data.paper_exercises || [],
            reflections: res.data.reflections || []
          };
        }
      } catch(e) {
        // cai no fallback local abaixo
      }
    }
    // Fallback: converter MicroTracker local em shape compatível.
    return PortalOndax._localToUnified();
  };

  PortalOndax._localToUnified = function() {
    var empty = {
      source: 'local',
      profile: null, pageVisits: [], sectionProgress: [], confidence: [],
      microAttempts: [], quizAggregates: [], quizQA: [], paperExercises: [],
      reflections: []
    };
    if (!window.MicroTracker || !window.MicroAuth) return empty;
    var session = window.MicroAuth.getSession && window.MicroAuth.getSession();
    if (!session) return empty;
    var all = window.MicroTracker.getData() || {};
    var mine = all[session.matricula] || {};

    // pageVisits
    Object.keys(mine.pages || {}).forEach(function(pid) {
      var pg = mine.pages[pid];
      empty.pageVisits.push({
        page_id: pid,
        visits: pg.visits || 0,
        total_time_ms: pg.totalTime || 0,
        first_visit_at: pg.firstVisit,
        last_visit_at: pg.lastVisit
      });
    });

    // quizQA: uma "tentativa" por tentativa registrada em quizzes[pid].questions[qid].attempts[]
    Object.keys(mine.quizzes || {}).forEach(function(pid) {
      var qz = mine.quizzes[pid];
      Object.keys(qz.questions || {}).forEach(function(qid) {
        (qz.questions[qid].attempts || []).forEach(function(a) {
          empty.quizQA.push({
            page_id: pid, question_id: qid,
            answered_at: a.timestamp, correct: !!a.correct,
            phase: null, difficulty: null
          });
        });
      });
      empty.quizAggregates.push({
        page_id: pid,
        attempts: qz.attempts || 0,
        best_score: qz.bestScore || 0,
        last_attempt_at: qz.lastAttempt,
        submitted_at: qz.submittedAt
      });
    });

    // sectionProgress: o tracker guarda em mine.sections[pid][sid]
    Object.keys(mine.sections || {}).forEach(function(pid) {
      Object.keys(mine.sections[pid] || {}).forEach(function(sid) {
        var s = mine.sections[pid][sid];
        empty.sectionProgress.push({
          page_id: pid, section_id: sid,
          started_at: s.startedAt, completed_at: s.completedAt
        });
      });
    });

    return empty;
  };

  // ===================================================================
  // Helpers gerais
  // ===================================================================

  function pad2(n) { return String(n).padStart(2, '0'); }

  function pageIdAula(n) { return 'aula-' + pad2(n); }

  function parsePageRoot(pageId) {
    // 'aula-01', 'aula-01-pre', 'aula-01-pos', 'aula-01-exerc' -> 'aula-01'
    if (!pageId) return null;
    return String(pageId).replace(/-(pre|pos|exerc)$/, '');
  }

  function median(arr) {
    if (!arr || !arr.length) return null;
    var s = arr.slice().sort(function(a,b){return a-b});
    return s[Math.floor(s.length / 2)];
  }

  function percentile(arr, p) {
    if (!arr || !arr.length) return null;
    var s = arr.slice().sort(function(a,b){return a-b});
    var idx = Math.max(0, Math.min(s.length - 1, Math.floor((s.length - 1) * p / 100)));
    return s[idx];
  }

  // Hash determinístico (FNV-1a 32-bit) → float em [0,1). Serve para jitter
  // estável em re-renders: a mesma chave cai sempre no mesmo pixel.
  function hashUnit(key) {
    var s = String(key == null ? '' : key);
    var h = 0x811c9dc5; // offset basis FNV-1a
    for (var i = 0; i < s.length; i++) {
      h ^= s.charCodeAt(i);
      // multiplicação em 32-bit via inteiros pequenos
      h = (h + ((h << 1) + (h << 4) + (h << 7) + (h << 8) + (h << 24))) >>> 0;
    }
    return (h >>> 0) / 4294967296;
  }

  function fmtDaysFromNow(ts) {
    if (!ts) return '';
    var diff = ts - Date.now();
    var days = Math.ceil(diff / 86400000);
    if (days <= 0) return 'hoje';
    if (days === 1) return 'em 1 dia';
    return 'em ' + days + ' dias';
  }

  // ===================================================================
  // E3 — CAMINHO ATÉ A PRÓXIMA AULA
  // ===================================================================

  /**
   * Determina qual é a aula foco: a primeira aula available cuja
   * cadeia (pré-aula → revisão → aula → pós+exerc) ainda não fechou
   * integralmente. Se todas fecharam, devolve a última aula available.
   */
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
    // Todas as aulas available já fecharam: retorna a última como foco
    for (var j = aulas.length - 1; j >= 0; j--) if (aulas[j].available) return aulas[j];
    return null;
  };

  /**
   * Para uma aula e um componente, retorna status sequencial:
   *   'done'   — aluno já concluiu
   *   'active' — aberto agora e é a etapa "da vez"
   *   'open'   — aberto, mas ainda não é a etapa ativa
   *   'locked' — ainda não abriu
   *   'closed' — prazo fechou
   */
  PortalOndax.stepStatus = function(aula, comp, myData) {
    var cal = window.MPE_CALENDARIO;
    var prazo = cal ? cal.getPrazo(aula.n, comp) : null;
    var pageId = comp === 'material' ? pageIdAula(aula.n)
              : comp === 'pre'      ? pageIdAula(aula.n) + '-pre'
              : comp === 'pos'      ? pageIdAula(aula.n) + '-pos'
              : comp === 'exerc'    ? pageIdAula(aula.n) + '-exerc'
              : null;

    // Verifica conclusão
    var done = false;
    if (comp === 'material') {
      // Material concluído = ≥ 7 de 9 seções concluídas (aceita 7,8,9)
      // via completed_at.
      var secs = (myData.sectionProgress || []).filter(function(s) { return s.page_id === pageId && s.completed_at; });
      done = secs.length >= 7;
    } else {
      // Quiz concluído = attempts > 0 OU submitted_at
      var agg = (myData.quizAggregates || []).filter(function(a) { return a.page_id === pageId; })[0];
      done = !!(agg && (agg.submitted_at || (agg.attempts && agg.attempts > 0)));
    }

    if (done) return { state: 'done', prazo: prazo, pageId: pageId };
    if (!prazo) {
      // Sem calendario → só marca 'open' (legado)
      return { state: 'open', prazo: null, pageId: pageId };
    }
    var now = Date.now();
    if (now < prazo.abre) return { state: 'locked', prazo: prazo, pageId: pageId };
    if (now >= prazo.fecha) return { state: 'closed', prazo: prazo, pageId: pageId };
    return { state: 'open', prazo: prazo, pageId: pageId };
  };

  /**
   * Computa os 4 passos do caminho. O passo "aula presencial" é virtual:
   * o aluno não "faz" nada — só marca se a data da aula já passou.
   */
  PortalOndax.computePath = function(aula, myData) {
    var cal = window.MPE_CALENDARIO;
    var now = Date.now();

    // 1. Material (pré-aula)
    var material = PortalOndax.stepStatus(aula, 'material', myData);
    // 2. Quiz revisão (pre) — opcional; trata como "open" mesmo que o
    // aluno não complete pré-aula antes. Ordem recomendada apenas.
    var pre      = PortalOndax.stepStatus(aula, 'pre', myData);
    // 3. Aula presencial
    var aulaTs = cal && aula.n <= 9 ? cal.AULAS_DATAS[aula.n - 1] : null;
    var aulaStep = {
      state: (!aulaTs || now < aulaTs) ? 'locked' : 'done',
      prazo: aulaTs ? { abre: aulaTs, fecha: aulaTs } : null,
      pageId: null, // nao clicavel
      aulaTs: aulaTs
    };
    // 4. Pós + exercícios — representamos como um passo único que fica
    // done quando AMBOS done. Mostra o mais atrasado dos dois estados.
    var pos   = PortalOndax.stepStatus(aula, 'pos', myData);
    var exerc = PortalOndax.stepStatus(aula, 'exerc', myData);
    // Estado combinado: done se ambos done; closed se ambos closed; active/open se algum open; locked se ambos locked.
    var combined;
    if (pos.state === 'done' && exerc.state === 'done') combined = 'done';
    else if (pos.state === 'closed' && exerc.state === 'closed') combined = 'closed';
    else if (pos.state === 'open' || exerc.state === 'open') combined = 'open';
    else combined = 'locked';
    var combinedStep = { state: combined, pos: pos, exerc: exerc, prazo: pos.prazo || exerc.prazo, pageId: null };

    // Marca o passo "ativo" = primeiro da cadeia que está em estado open
    // e ainda não foi done. Ordem: material → pre → aulaStep → combinedStep.
    var chain = [material, pre, aulaStep, combinedStep];
    var activeIdx = -1;
    for (var i = 0; i < chain.length; i++) {
      if (chain[i].state === 'open') { activeIdx = i; break; }
    }
    if (activeIdx >= 0) chain[activeIdx].state = 'active';

    return {
      aula: aula,
      steps: chain,
      activeIdx: activeIdx,
      material: material,
      pre: pre,
      aulaStep: aulaStep,
      combined: combinedStep
    };
  };

  PortalOndax.renderPath = function(path) {
    if (!path) return '';
    var cal = window.MPE_CALENDARIO;
    var fmtFecha = function(ts) {
      return cal && cal.fmt ? cal.fmt(ts) : new Date(ts).toLocaleString('pt-BR');
    };

    var stepDefs = [
      { name: 'Material', icon: '📖', step: path.material, href: 'aula-' + pad2(path.aula.n) + '.html', est: path.aula.time + ' min' },
      { name: 'Quiz revisão', icon: '📝', step: path.pre, href: 'aula-' + pad2(path.aula.n) + '-pre.html', est: '30–45 min' },
      { name: 'Aula presencial', icon: '🎓', step: path.aulaStep, href: null, est: '3h · quarta 19:30' },
      { name: 'Pós + Exercícios', icon: '✍', step: path.combined, href: 'aula-' + pad2(path.aula.n) + '-pos.html', est: '~3h combinados' }
    ];

    var html = '';
    stepDefs.forEach(function(d, idx) {
      var s = d.step;
      var cls = 'path-step ' + (s.state || 'open');
      var check = s.state === 'done' ? '✓' : (s.state === 'active' ? '▶' : (s.state === 'locked' ? '🔒' : (s.state === 'closed' ? '×' : '·')));
      var metaHtml = '';
      if (s.state === 'done') metaHtml = 'Concluído';
      else if (s.state === 'locked') {
        if (s.aulaTs) metaHtml = 'abre ' + (cal && cal.fmt ? cal.fmt(s.aulaTs) : '');
        else if (s.prazo) metaHtml = 'abre ' + (cal && cal.fmt ? cal.fmt(s.prazo.abre) : '');
        else metaHtml = 'em breve';
      }
      else if (s.state === 'closed') metaHtml = 'prazo encerrado';
      else if (s.state === 'active' || s.state === 'open') {
        if (s.prazo && s.prazo.fecha) metaHtml = 'fecha ' + (cal && cal.fmt ? cal.fmt(s.prazo.fecha) : '') + ' · ' + d.est;
        else metaHtml = d.est;
      }

      var cta = '';
      if (s.state === 'active' && d.href) {
        cta = '<a class="path-step-cta" href="' + d.href + '">continuar →</a>';
      } else if (s.state === 'open' && d.href) {
        cta = '<a class="path-step-cta" style="background:#6B7280" href="' + d.href + '">abrir →</a>';
      }

      html += '<div class="' + cls + '" title="' + d.name + ' — ' + s.state + '">'
            + '<div class="path-step-icon">' + check + ' ' + d.icon + '</div>'
            + '<div class="path-step-name">' + (idx + 1) + '. ' + d.name + '</div>'
            + '<div class="path-step-meta">' + metaHtml + '</div>'
            + cta
            + '</div>';
    });

    // Deadline agregado do passo ativo (fallback: menor fecha entre open/active)
    var activeStep = path.steps[path.activeIdx];
    var deadlineHtml = '';
    if (activeStep && activeStep.prazo && activeStep.prazo.fecha) {
      deadlineHtml = '<div class="path-deadline">Próximo fechamento: <strong>' + fmtFecha(activeStep.prazo.fecha) + '</strong> · ' + fmtDaysFromNow(activeStep.prazo.fecha) + '</div>';
    } else if (path.combined.prazo && path.combined.prazo.fecha) {
      deadlineHtml = '<div class="path-deadline">Próximo fechamento: <strong>' + fmtFecha(path.combined.prazo.fecha) + '</strong> · ' + fmtDaysFromNow(path.combined.prazo.fecha) + '</div>';
    }

    return '<div class="path-steps">' + html + '</div>' + deadlineHtml;
  };

  // ===================================================================
  // E2 — CALIBRAÇÃO DE CONFIANÇA PESSOAL (ECE)
  // ===================================================================

  /**
   * Constrói pares (conf_pos × acerto 1ª) por pageRoot, pros mesmos
   * dados do aluno. Porte simplificado de _o4BuildPairs + _o4ECE do admin.
   */
  PortalOndax.buildCalibration = function(myData) {
    var confBy = {};
    (myData.confidence || []).forEach(function(c) {
      if (c.phase !== 'post') return;
      var root = parsePageRoot(c.page_id);
      var k = root;
      if (!confBy[k]) confBy[k] = { sum: 0, n: 0, pageRoot: root };
      confBy[k].sum += c.value;
      confBy[k].n += 1;
    });
    // Acerto 1ª por pageRoot (usa primeira tentativa por page+question)
    var first = {};
    (myData.quizQA || []).forEach(function(q) {
      var root = parsePageRoot(q.page_id);
      var k = root + '::' + q.page_id + '::' + q.question_id;
      if (first[k] && q.answered_at && first[k].ts && q.answered_at >= first[k].ts) return;
      first[k] = { ts: q.answered_at, correct: !!q.correct, root: root };
    });
    var ft = {};
    Object.keys(first).forEach(function(kk) {
      var f = first[kk];
      if (!ft[f.root]) ft[f.root] = { total: 0, correct: 0 };
      ft[f.root].total++;
      if (f.correct) ft[f.root].correct++;
    });
    var pairs = [];
    Object.keys(confBy).forEach(function(k) {
      var c = confBy[k];
      var acc = ft[k];
      if (!acc || acc.total < 2) return;
      pairs.push({
        pageRoot: c.pageRoot,
        conf: Math.max(0, Math.min(100, c.sum / c.n)),
        acc: acc.correct / acc.total * 100,
        nItems: acc.total
      });
    });

    // ECE em 4 bins de confiança
    var bins = [{c:0,a:0,n:0},{c:0,a:0,n:0},{c:0,a:0,n:0},{c:0,a:0,n:0}];
    pairs.forEach(function(p) {
      var b = Math.min(3, Math.floor(p.conf / 25));
      bins[b].c += p.conf; bins[b].a += p.acc; bins[b].n += 1;
    });
    var N = pairs.length;
    var ece = 0;
    if (N > 0) bins.forEach(function(b) {
      if (b.n === 0) return;
      ece += (b.n / N) * Math.abs(b.c/b.n - b.a/b.n);
    });

    var meanConf = N > 0 ? pairs.reduce(function(a,p){return a+p.conf;},0) / N : null;
    var meanAcc  = N > 0 ? pairs.reduce(function(a,p){return a+p.acc;},0)  / N : null;
    var gap = (meanConf != null && meanAcc != null) ? meanConf - meanAcc : null;

    var label = 'none';
    // Gate: ≥3 pageRoots distintos (diversidade de contexto) E ≥6 itens totais
    // para estabilidade. Baixado de ≥10 para ≥6 porque a turma atravessa o
    // gate mais cedo e o ECE já é razoavelmente estável para sinalizar viés
    // grosseiro (over/under) acima de ~6 respostas em ≥3 contextos.
    var totalItems = pairs.reduce(function(a,p){return a+p.nItems;},0);
    if (N >= 3 && totalItems >= 6) {
      if (ece < 15) label = 'good';
      else if (gap != null && gap > 15) label = 'over';
      else if (gap != null && gap < -15) label = 'under';
      else label = 'good';
    }

    return {
      pairs: pairs,
      ece: N > 0 ? ece : null,
      gap: gap,
      meanConf: meanConf,
      meanAcc: meanAcc,
      nPairs: N,
      nItems: totalItems,
      label: label
    };
  };

  PortalOndax.renderCalibration = function(cal) {
    if (!cal) return '<div class="empty-state">Sem dados ainda.</div>';

    // Gate: pares/itens insuficientes. O sinal é composto (≥3 pageRoots
    // distintos E ≥6 itens) — o texto explica o que ainda está faltando.
    if (cal.label === 'none') {
      var needItems    = Math.max(0, 6 - cal.nItems);
      var needContexts = Math.max(0, 3 - cal.nPairs);
      var missingParts = [];
      if (needItems > 0) missingParts.push('mais ' + needItems + ' resposta(s) de checkpoint');
      if (needContexts > 0) missingParts.push('resposta em ' + needContexts + ' aula(s) diferente(s)');
      var need = missingParts.length ? missingParts.join(' e ') : 'um pouco mais de dados';
      return '<div class="empty-state">—<br><span class="growth-note">Complete ' + need + ' para ver sua calibração. Até aqui: ' + cal.nItems + ' resposta(s) em ' + cal.nPairs + ' aula(s).</span></div>';
    }

    // Scatter SVG 200×200, padding 16px, eixo X e Y
    var W = 200, H = 200, PAD = 22;
    var x = function(conf) { return PAD + (conf / 100) * (W - 2*PAD); };
    var y = function(acc)  { return H - PAD - (acc / 100) * (H - 2*PAD); };
    var svg = '<svg class="calib-scatter" viewBox="0 0 ' + W + ' ' + H + '" role="img" aria-label="Calibração de confiança">';
    // Eixos
    svg += '<line x1="' + PAD + '" y1="' + (H-PAD) + '" x2="' + (W-PAD) + '" y2="' + (H-PAD) + '" stroke="#CBD5E0" stroke-width="1"/>';
    svg += '<line x1="' + PAD + '" y1="' + PAD + '" x2="' + PAD + '" y2="' + (H-PAD) + '" stroke="#CBD5E0" stroke-width="1"/>';
    // Diagonal de calibração perfeita
    svg += '<line x1="' + x(0) + '" y1="' + y(0) + '" x2="' + x(100) + '" y2="' + y(100) + '" stroke="#94A3B8" stroke-width="1" stroke-dasharray="3,3"/>';
    // Labels eixos
    svg += '<text x="' + (W/2) + '" y="' + (H-4) + '" text-anchor="middle" font-size="8" fill="#6B6B6B">Confiança pós (%)</text>';
    svg += '<text x="8" y="' + (H/2) + '" text-anchor="middle" font-size="8" fill="#6B6B6B" transform="rotate(-90, 8, ' + (H/2) + ')">Acerto 1ª (%)</text>';
    // Pontos com jitter DETERMINÍSTICO (hash do pageRoot): o mesmo ponto
    // cai sempre no mesmo pixel em re-renders. Evita "formigueiro" quando
    // a página re-renderiza (ex.: visibilitychange/focus).
    cal.pairs.forEach(function(p, idx) {
      var key = (p.pageRoot || 'root') + '|' + idx;
      var jx = (hashUnit(key + '|x') - 0.5) * 4;
      var jy = (hashUnit(key + '|y') - 0.5) * 4;
      var color = p.acc >= p.conf ? '#065F46' : '#7A1F1F';
      svg += '<circle cx="' + (x(p.conf) + jx).toFixed(1) + '" cy="' + (y(p.acc) + jy).toFixed(1) + '" r="3" fill="' + color + '" opacity="0.72"><title>' + p.pageRoot + ' · conf ' + Math.round(p.conf) + '% · acerto ' + Math.round(p.acc) + '%</title></circle>';
    });
    svg += '</svg>';

    // Badge + leitura
    var badge, texto;
    if (cal.label === 'good') {
      badge = '<span class="calib-badge good">🎯 Você se conhece</span>';
      texto = 'Seu nível declarado de confiança tende a bater com seu desempenho. Continue usando o slider como bússola.';
    } else if (cal.label === 'over') {
      badge = '<span class="calib-badge over">🔥 Tendência a superestimar</span>';
      texto = 'Este é um sinal, não um julgamento. Vale olhar para as questões onde você marcou 4–5 de confiança e errou na 1ª — o que elas tinham em comum?';
    } else if (cal.label === 'under') {
      badge = '<span class="calib-badge under">🧊 Tendência a subestimar</span>';
      texto = 'Você entrega mais do que acha que entrega. Confie um pouco mais no que você preparou antes de chutar.';
    }

    var info = '<div class="calib-info">'
             + badge
             + '<div>' + texto + '</div>'
             + '<div class="calib-stat">' + cal.nPairs + ' aula(s) · ' + cal.nItems + ' respostas · ECE ' + Math.round(cal.ece) + '%</div>'
             + '<button class="help-link" onclick="PortalOndax.showCalibHelp()">como ler este gráfico</button>'
             + '</div>';

    return '<div class="calib-body">' + svg + info + '</div>';
  };

  PortalOndax.showCalibHelp = function() {
    var html = '<div class="pmi-modal-back" onclick="if(event.target===this)this.remove()">'
      + '<div class="pmi-modal">'
      + '<h3>Como ler este gráfico</h3>'
      + '<p><strong>Eixo X</strong> é a confiança que você declarou no slider <em>pós</em> de cada seção (0–100).</p>'
      + '<p><strong>Eixo Y</strong> é seu acerto na primeira tentativa dos itens daquele bloco (0–100).</p>'
      + '<p>A <strong>diagonal pontilhada</strong> é "calibração perfeita": confiança declarada bate com desempenho.</p>'
      + '<p>Pontos <span style="color:#065F46;font-weight:600">verdes</span> = você acertou mais do que achou que acertaria. Pontos <span style="color:#7A1F1F;font-weight:600">bordô</span> = o contrário.</p>'
      + '<p>O <strong>ECE</strong> (Expected Calibration Error) é uma medida única de quão longe seus pontos estão da diagonal. Abaixo de 15% a gente considera calibrado.</p>'
      + '<p style="color:#6B6B6B;font-size:0.82rem">Isto é um sinal metacognitivo, não uma nota. Calibrar confiança é uma habilidade como qualquer outra — melhora com prática e feedback.</p>'
      + '<button class="pmi-close" onclick="this.closest(\'.pmi-modal-back\').remove()">Fechar</button>'
      + '</div></div>';
    var wrap = document.createElement('div');
    wrap.innerHTML = html;
    document.body.appendChild(wrap.firstChild);
  };

  // ===================================================================
  // E4 — HEATMAP 7×24 PESSOAL + CRAMMING
  // ===================================================================

  /**
   * Constrói matriz 7×24 a partir dos timestamps de eventos do aluno.
   * Também computa:
   *   - horaPico: (dow, hour) com maior acerto-1ª médio (mínimo 3 eventos)
   *   - cramming: proporção de eventos nas últimas 48h do prazo por aula
   *   - chronic: ≥2 aulas com cramming > 0.6
   *   - avgDaysBefore: dias médios antes do prazo (por evento com aula_n)
   */
  PortalOndax.buildCircadian = function(myData) {
    var matrix = [];
    for (var r = 0; r < 7; r++) matrix.push([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

    // Acumular eventos por (dow, h) e também por aula para cramming
    var events = [];
    function pushEv(ts, pageId, correct) {
      if (!ts) return;
      var t = new Date(ts).getTime();
      if (!isFinite(t)) return;
      events.push({ ts: t, pageId: pageId || '', correct: correct });
    }
    (myData.quizQA || []).forEach(function(q) { pushEv(q.answered_at, q.page_id, q.correct); });
    (myData.sectionProgress || []).forEach(function(s) { if (s.completed_at) pushEv(s.completed_at, s.page_id, null); });
    (myData.confidence || []).forEach(function(c) { pushEv(c.recorded_at, c.page_id, null); });
    (myData.microAttempts || []).forEach(function(m) { pushEv(m.answered_at, m.page_id, m.correct); });

    // Acerto por célula (só se a célula tem ≥3 eventos com correct != null)
    var cellAcc = [];
    for (var r2 = 0; r2 < 7; r2++) { cellAcc.push([]); for (var h2 = 0; h2 < 24; h2++) cellAcc[r2].push({ total: 0, correct: 0 }); }

    var aulaEvents = {};
    var daysBefore = [];
    var cal = window.MPE_CALENDARIO;

    events.forEach(function(e) {
      var d = new Date(e.ts);
      var dow = d.getDay();
      var h = d.getHours();
      matrix[dow][h]++;
      if (e.correct === true || e.correct === false) {
        cellAcc[dow][h].total++;
        if (e.correct) cellAcc[dow][h].correct++;
      }

      // Cramming
      if (!cal) return;
      var m = String(e.pageId || '').match(/^aula-(\d+)(?:-(pre|pos|exerc))?$/);
      if (!m) return;
      var aulaN = parseInt(m[1], 10);
      var comp = m[2] || 'material';
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
    });

    var crammedAulas = [];
    Object.keys(aulaEvents).forEach(function(ak) {
      var ae = aulaEvents[ak];
      if (ae.total >= 3 && ae.last48h / ae.total > 0.6) {
        if (crammedAulas.indexOf(ae.aulaN) === -1) crammedAulas.push(ae.aulaN);
      }
    });

    // Hora pico: célula com maior acerto-1ª e pelo menos 3 itens com correct != null
    var horaPico = null;
    var maxAcc = -1;
    for (var d2 = 0; d2 < 7; d2++) for (var hh = 0; hh < 24; hh++) {
      var ca = cellAcc[d2][hh];
      if (ca.total >= 3) {
        var rate = ca.correct / ca.total;
        if (rate > maxAcc) { maxAcc = rate; horaPico = { dow: d2, hour: hh, acc: rate, n: ca.total }; }
      }
    }
    // Fallback: hora com maior volume de eventos
    var maxVol = 0, volCell = null;
    for (var d3 = 0; d3 < 7; d3++) for (var hh2 = 0; hh2 < 24; hh2++) {
      if (matrix[d3][hh2] > maxVol) { maxVol = matrix[d3][hh2]; volCell = { dow: d3, hour: hh2, n: matrix[d3][hh2] }; }
    }

    return {
      matrix: matrix,
      totalEvents: events.length,
      crammedAulas: crammedAulas,
      chronic: crammedAulas.length >= 2,
      avgDaysBefore: daysBefore.length ? (daysBefore.reduce(function(a,b){return a+b;},0) / daysBefore.length) : null,
      horaPico: horaPico,
      horaVolume: volCell
    };
  };

  PortalOndax.renderCircadian = function(cir) {
    if (!cir || cir.totalEvents === 0) {
      return '<div class="empty-state">—<br><span class="growth-note">Sem eventos registrados ainda. Navegue pelas páginas de aula para começar a ver seu padrão.</span></div>';
    }
    // Matriz
    var maxV = 1;
    for (var d = 0; d < 7; d++) for (var h = 0; h < 24; h++) if (cir.matrix[d][h] > maxV) maxV = cir.matrix[d][h];
    function lvl(v) {
      if (v === 0) return 0;
      var r = v / maxV;
      if (r <= 0.25) return 1;
      if (r <= 0.50) return 2;
      if (r <= 0.80) return 3;
      return 4;
    }
    var dow = ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb'];
    var html = '<div class="pers-circ">';
    html += '<div></div>';
    for (var hi = 0; hi < 24; hi++) html += '<div class="cir-h">' + (hi % 3 === 0 ? hi : '') + '</div>';
    for (var di = 0; di < 7; di++) {
      html += '<div class="cir-d">' + dow[di] + '</div>';
      for (var hj = 0; hj < 24; hj++) {
        var v = cir.matrix[di][hj];
        html += '<div class="cir-cell" data-v="' + lvl(v) + '" title="' + dow[di] + ' ' + hj + 'h: ' + v + ' evento(s)"></div>';
      }
    }
    html += '</div>';
    html += '<div class="pers-circ-legend">Menos'
         + ' <span class="cir-chip" style="background:#F3F4F6"></span>'
         + ' <span class="cir-chip" style="background:#FEE2E2"></span>'
         + ' <span class="cir-chip" style="background:#FCA5A5"></span>'
         + ' <span class="cir-chip" style="background:#C8102E"></span>'
         + ' <span class="cir-chip" style="background:#7F1D1D"></span> Mais</div>';

    // Frases automáticas
    var facts = '<div class="pers-facts">';
    if (cir.horaPico && cir.horaPico.acc >= 0.66 && cir.horaPico.n >= 3) {
      facts += '<div class="pers-fact">🕒 Seu melhor horário até aqui: <strong>' + dow[cir.horaPico.dow] + ' às ' + cir.horaPico.hour + 'h</strong> (' + Math.round(cir.horaPico.acc * 100) + '% de acerto em ' + cir.horaPico.n + ' itens).</div>';
    } else if (cir.horaVolume) {
      facts += '<div class="pers-fact">🕒 Seu horário mais frequente: <strong>' + dow[cir.horaVolume.dow] + ' às ' + cir.horaVolume.hour + 'h</strong> (' + cir.horaVolume.n + ' eventos).</div>';
    }
    if (cir.avgDaysBefore != null) {
      var dStr = cir.avgDaysBefore >= 1 ? cir.avgDaysBefore.toFixed(1) + ' dias' : (cir.avgDaysBefore * 24).toFixed(1) + ' horas';
      facts += '<div class="pers-fact">📅 Você entrega, em média, <strong>' + dStr + '</strong> antes do prazo.</div>';
    }
    if (cir.chronic) {
      facts += '<div class="pers-nudge">Você tende a concentrar respostas nas últimas 48h antes do prazo (≥2 aulas). Se der, experimente blocos curtos no meio da semana — costuma render mais por minuto.</div>';
    }
    facts += '</div>';

    return html + facts;
  };

  // ===================================================================
  // E8 — NUDGES (sugestão de prática ativa)
  // ===================================================================

  /**
   * Gera até 3 nudges priorizados. Cada um:
   *  { id, icon, text, cta: { label, href }, priority }
   * Regras:
   *  R1. Questão errada ≥2× em 1ª tentativa (sinal forte — prioridade 1)
   *  R2. Slider pós não respondido em seção material completada (prioridade 2)
   *  R3. Tempo de seção < P25 da TURMA no mesmo page_id (prioridade 2)
   *      - Origem "turma": usa classPercentiles[page_id].p25 (RPC k-anon ≥5).
   *      - Origem "próprio": fallback para P25 das próprias seções do aluno
   *        quando a turma ainda não tem n suficiente (mais conservador).
   *  R4. Aluno em dia → explorar desafio sem gabarito (prioridade 3)
   * Máximo 3 itens, dispensáveis por sessão via sessionStorage.
   *
   * @param {Object} myData - dados unificados do aluno (loadMyData)
   * @param {Object} focusAula - aula foco (para R4)
   * @param {Object} [classPercentiles] - { page_id: {p25, p50, p75, n} }
   */
  PortalOndax.buildNudges = function(myData, focusAula, classPercentiles) {
    classPercentiles = classPercentiles || {};
    var nudges = [];
    var dismissed = PortalOndax._getDismissedNudges();

    // R1: questões erradas na 1ª tentativa em ≥2 tentativas totais
    var qaByKey = {};
    (myData.quizQA || []).forEach(function(q) {
      var k = q.page_id + '::' + q.question_id;
      if (!qaByKey[k]) qaByKey[k] = [];
      qaByKey[k].push(q);
    });
    Object.keys(qaByKey).forEach(function(k) {
      var arr = qaByKey[k].slice().sort(function(a,b) { return (a.answered_at||'').localeCompare(b.answered_at||''); });
      var first = arr[0];
      // Sinal forte: 1ª tentativa errada E tentou ao menos 2 vezes
      if (first && !first.correct && arr.length >= 2) {
        var parts = k.split('::');
        var pid = parts[0];
        var root = parsePageRoot(pid);
        var aulaN = parseInt((root || '').replace('aula-', ''), 10);
        if (isNaN(aulaN)) return;
        nudges.push({
          id: 'r1::' + k,
          priority: 1,
          icon: '🔁',
          text: 'Você errou a primeira tentativa de uma questão em ' + root + ' e já tentou ' + arr.length + '×. Revisar a seção costuma render mais que repetir a questão.',
          cta: { label: 'abrir material da aula', href: 'aula-' + pad2(aulaN) + '.html' }
        });
      }
    });

    // R2: slider pós não respondido em seção com sectionProgress completed_at
    var sectionsCompl = (myData.sectionProgress || []).filter(function(s) { return s.completed_at; });
    var confPostByKey = {};
    (myData.confidence || []).forEach(function(c) {
      if (c.phase !== 'post') return;
      confPostByKey[c.page_id + '::' + c.section_id] = true;
    });
    // pega a primeira seção completada sem confidence post
    var missingPost = null;
    for (var i = 0; i < sectionsCompl.length; i++) {
      var s = sectionsCompl[i];
      var k = s.page_id + '::' + s.section_id;
      if (!confPostByKey[k]) { missingPost = s; break; }
    }
    if (missingPost) {
      var aulaN2 = parseInt((parsePageRoot(missingPost.page_id) || '').replace('aula-', ''), 10);
      if (!isNaN(aulaN2)) {
        nudges.push({
          id: 'r3::' + missingPost.page_id + '::' + missingPost.section_id,
          priority: 2,
          icon: '🎚',
          text: 'Você concluiu uma seção mas não registrou o quanto se sente à vontade com o tema. Leva 10 segundos e ajuda a calibrar sua confiança.',
          cta: { label: 'voltar à seção', href: 'aula-' + pad2(aulaN2) + '.html#' + missingPost.section_id }
        });
      }
    }

    // R3: tempo de seção abaixo do P25. Preferência hierárquica:
    //   (a) P25 da TURMA no mesmo page_id (RPC k-anon ≥5) — sinal externo;
    //   (b) P25 do próprio aluno (≥5 seções) — fallback conservador.
    // Escolhe a seção fast mais recente que dispara alguma das duas regras.
    var secTimes = sectionsCompl
      .filter(function(s) { return s.started_at && s.completed_at; })
      .map(function(s) {
        var dur = (new Date(s.completed_at).getTime() - new Date(s.started_at).getTime()) / 1000;
        return { s: s, dur: dur };
      })
      .filter(function(x) { return x.dur >= 20 && x.dur <= 3600; });

    // Fallback: P25 próprio (só se ≥5 seções)
    var ownP25 = null;
    if (secTimes.length >= 5) {
      ownP25 = percentile(secTimes.map(function(x) { return x.dur; }), 25);
    }

    // Para cada seção, determina se dispara: (turma) ou (próprio). Coleta o
    // candidato mais recente, preferindo quando a origem for "turma".
    var candTurma = null, candProprio = null;
    secTimes.slice().sort(function(a,b) {
      return (b.s.completed_at || '').localeCompare(a.s.completed_at || '');
    }).forEach(function(x) {
      var pid = x.s.page_id;
      var cp = classPercentiles[pid];
      if (!candTurma && cp && cp.p25 != null && x.dur < cp.p25) {
        candTurma = { x: x, p25: cp.p25, n: cp.n, source: 'turma' };
      }
      if (!candProprio && ownP25 != null && x.dur < ownP25) {
        candProprio = { x: x, p25: ownP25, n: null, source: 'proprio' };
      }
    });
    var fastCand = candTurma || candProprio;
    if (fastCand) {
      var aulaN3 = parseInt((parsePageRoot(fastCand.x.s.page_id) || '').replace('aula-', ''), 10);
      if (!isNaN(aulaN3)) {
        var txt, titleAttr;
        if (fastCand.source === 'turma') {
          txt = 'Sua última seção foi mais rápida que 75% da turma nesta página (' + Math.round(fastCand.x.dur) + 's vs. P25 da turma ≈ ' + Math.round(fastCand.p25) + 's). Pode ser ritmo bom, pode ser leitura em diagonal — vale conferir com papel ao lado.';
          titleAttr = 'P25 da turma (n=' + fastCand.n + ') via agregado k-anônimo';
        } else {
          txt = 'Sua última seção rápida foi bem abaixo do seu ritmo usual (' + Math.round(fastCand.x.dur) + 's, seu P25 ≈ ' + Math.round(fastCand.p25) + 's). Talvez uma segunda leitura com papel ao lado renda mais.';
          titleAttr = 'P25 do próprio aluno (turma sem n suficiente nesta página)';
        }
        nudges.push({
          id: 'r2::' + fastCand.x.s.page_id + '::' + fastCand.x.s.section_id,
          priority: 2,
          icon: '👓',
          text: txt,
          title: titleAttr,
          cta: { label: 'reabrir seção', href: 'aula-' + pad2(aulaN3) + '.html#' + fastCand.x.s.section_id }
        });
      }
    }

    // R4: "em dia" — se a aula foco não tem pendência ativa, sugere explorar.
    if (focusAula) {
      var path = PortalOndax.computePath(focusAula, myData);
      var allClearOrDone = path.steps.every(function(s) { return s.state === 'done' || s.state === 'locked' || s.state === 'closed'; });
      // "em dia" = pelo menos material done E pos/exerc combined != active
      var stayUpToDate = path.material.state === 'done' && path.combined.state !== 'active';
      if (allClearOrDone || stayUpToDate) {
        nudges.push({
          id: 'r4::' + focusAula.n,
          priority: 3,
          icon: '🧗',
          text: 'Você está em dia na Aula ' + pad2(focusAula.n) + '. Se tiver fôlego, tente o exercício 🔴 da lista avaliativa sem abrir o gabarito — é o melhor treino para a prova.',
          cta: { label: 'abrir exercícios', href: 'aula-' + pad2(focusAula.n) + '-exerc.html' }
        });
      }
    }

    // Filtrar dispensados + priorizar + cortar em 3
    var filtered = nudges.filter(function(n) { return dismissed.indexOf(n.id) === -1; });
    filtered.sort(function(a,b) { return a.priority - b.priority; });
    return filtered.slice(0, 3);
  };

  PortalOndax._dismissKey = 'mpe_portal_nudges_dismissed_v1';
  PortalOndax._getDismissedNudges = function() {
    try { return JSON.parse(sessionStorage.getItem(PortalOndax._dismissKey) || '[]'); }
    catch(e) { return []; }
  };
  PortalOndax.dismissNudge = function(id) {
    var list = PortalOndax._getDismissedNudges();
    if (list.indexOf(id) === -1) list.push(id);
    sessionStorage.setItem(PortalOndax._dismissKey, JSON.stringify(list));
    var safeAttr = (window.CSS && CSS.escape) ? CSS.escape(id) : String(id).replace(/"/g, '\\"');
    var el = document.querySelector('[data-nudge-id="' + safeAttr + '"]');
    if (el) el.remove();
    // Se vazio, rerender bloco em empty state
    var wrap = document.getElementById('nudges-wrap');
    if (wrap && wrap.querySelectorAll('.nudge').length === 0) {
      wrap.innerHTML = '<div class="empty-state">Nenhuma sugestão pendente. Bom sinal — você está à frente.</div>';
    }
  };

  PortalOndax.renderNudges = function(nudges) {
    if (!nudges || nudges.length === 0) {
      return '<div class="empty-state">Sem sugestões ativas agora. Continue no ritmo.</div>';
    }
    var esc = function(s) {
      return String(s == null ? '' : s)
        .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;');
    };
    var html = '<div class="nudge-list">';
    nudges.forEach(function(n) {
      var cls = n.priority === 3 ? 'nudge calm' : 'nudge';
      var safeId = String(n.id).replace(/'/g, "\\'");
      var titleAttr = n.title ? ' title="' + esc(n.title) + '"' : '';
      html += '<div class="' + cls + '" data-nudge-id="' + n.id + '"' + titleAttr + '>'
           + '<span class="nudge-icon">' + n.icon + '</span>'
           + '<div class="nudge-body">' + n.text
           + (n.cta ? '<br><a class="nudge-cta" href="' + n.cta.href + '">' + n.cta.label + ' →</a>' : '')
           + '</div>'
           + '<button class="nudge-dismiss" title="Dispensar por esta sessão" onclick="PortalOndax.dismissNudge(\'' + safeId + '\')">×</button>'
           + '</div>';
    });
    html += '</div>';
    return html;
  };

  // ===================================================================
  // Exportar
  // ===================================================================

  window.PortalOndax = PortalOndax;
})();
