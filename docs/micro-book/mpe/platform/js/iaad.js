// ============================================================================
// IAAD-30 — Índice de Aprendizagem Ativa e Dedicação (front-end)
// ============================================================================
// Composição: IAAD = 0,40·C_geral + 0,40·C_prazo + 0,20·P  ∈ [0, 10]
// Pontos da nota: 3 × IAAD ∈ [0, 30]  (= 30% da nota final do MPE)
//
// Consome:
//   - RPC public.get_iaad(p_user_id)            -> componentes do aluno
//   - RPC public.get_iaad_class_quartiles()     -> P25/P50/P75 da turma
//
// Renderiza um card real-time no portal do aluno:
//   - IAAD parcial (0–10) + pts equivalentes (0–30)
//   - 3 componentes (C_geral, C_prazo, P) com banda da turma
//   - Breakdown 9×6 colapsável (geral vs prazo lado-a-lado)
//   - Sugestão de próximo passo
//
// Privacidade: aluno só vê o próprio + agregados (P25/P50/P75) da turma.
// ============================================================================

(function(){
  'use strict';

  var IAAD = {};

  IAAD.WEIGHTS = { c_geral: 0.40, c_prazo: 0.40, p: 0.20 };
  IAAD.MAX_PTS_NOTA = 30;
  IAAD.AULAS_TOTAL = 9;

  IAAD.bandFor = function(value, p25, p50, p75) {
    if (value == null) return { idx: 0, label: 'sem dado' };
    if (value >= p75) return { idx: 4, label: 'Top 25% da turma' };
    if (value >= p50) return { idx: 3, label: 'Quartil 2 (acima da mediana)' };
    if (value >= p25) return { idx: 2, label: 'Quartil 3 (abaixo da mediana)' };
    return { idx: 1, label: 'Bottom 25% da turma' };
  };

  function bar(score) {
    var n = Math.max(0, Math.min(10, Math.round(score)));
    return '<span style="font-family:monospace;letter-spacing:-0.5px">' +
           '█'.repeat(n) + '░'.repeat(10 - n) + '</span>';
  }

  // Breakdown C: 9 aulas × 6 itens × 2 dimensões (done/in_window)
  function renderBreakdown(breakdown) {
    if (!breakdown) return '';
    var rows = [];
    for (var n = 1; n <= IAAD.AULAS_TOTAL; n++) {
      var key = 'aula_' + n;
      var a = breakdown[key];
      if (!a) {
        rows.push('<tr><td>Aula ' + n + '</td><td colspan="6" style="color:#94a3b8">sem dado</td></tr>');
        continue;
      }
      function cell(item) {
        var d = item && item.done;
        var w = item && item.in_window;
        if (d && w) return '<td style="text-align:center;color:#0f766e" title="cumprido no prazo">●</td>';
        if (d)      return '<td style="text-align:center;color:#d97706" title="cumprido fora do prazo">◐</td>';
        return '<td style="text-align:center;color:#cbd5e1" title="não cumprido">·</td>';
      }
      rows.push(
        '<tr><td style="font-size:0.85rem;padding-right:0.6rem">Aula ' + n + '</td>'
        + cell(a.material) + cell(a.quiz_pre) + cell(a.quiz_pos) + cell(a.exerc)
        + cell(a.refl_nebulosa) + cell(a.refl_aula)
        + '</tr>');
    }
    return '<table class="iaad-breakdown" style="border-collapse:collapse;margin-top:0.5rem;font-size:0.85rem">' +
           '<thead><tr style="border-bottom:1px solid #cbd5e1">' +
           '<th></th>' +
           '<th title="Pré-aula material (9 seções) · peso 0,40">Mat</th>' +
           '<th title="Quiz pré-aula submetido · peso 0,30">QPré</th>' +
           '<th title="Quiz pós-aula submetido · peso 0,30">QPós</th>' +
           '<th title="Exercícios avaliativos submetidos · peso 0,50">Exerc</th>' +
           '<th title="Reflexão nebulosa preenchida · peso 0,085">Refl₁</th>' +
           '<th title="Reflexão aula preenchida · peso 0,085">Refl₂</th>' +
           '</tr></thead><tbody>' + rows.join('') + '</tbody></table>' +
           '<div style="font-size:0.75rem;color:#64748b;margin-top:0.3rem">' +
           '<span style="color:#0f766e">●</span> cumprido no prazo · ' +
           '<span style="color:#d97706">◐</span> cumprido fora do prazo · ' +
           '<span style="color:#cbd5e1">·</span> não cumprido' +
           '</div>';
  }

  IAAD.render = function(targetEl, data, quartiles) {
    if (!targetEl) return;
    if (!data) {
      targetEl.innerHTML = '<div class="iaad-empty">Não foi possível carregar o IAAD-30. Recarregue a página.</div>';
      return;
    }

    var cG = Number(data.c_geral_score || 0);
    var cP = Number(data.c_prazo_score || 0);
    var p  = Number(data.p_score || 0);
    var iaad = Number(data.iaad || 0);
    var pts  = Number(data.pts_nota || 0);

    var qG    = quartiles ? IAAD.bandFor(cG,   quartiles.c_geral_p25, quartiles.c_geral_p50, quartiles.c_geral_p75) : { label: '—' };
    var qPr   = quartiles ? IAAD.bandFor(cP,   quartiles.c_prazo_p25, quartiles.c_prazo_p50, quartiles.c_prazo_p75) : { label: '—' };
    var qP    = quartiles ? IAAD.bandFor(p,    quartiles.p_p25,       quartiles.p_p50,       quartiles.p_p75)       : { label: '—' };
    var qIaad = quartiles ? IAAD.bandFor(iaad, quartiles.iaad_p25,    quartiles.iaad_p50,    quartiles.iaad_p75)    : { label: '—' };

    var html = ''
      + '<div class="iaad-card" style="background:#fff;border:1px solid #e2e8f0;border-radius:8px;padding:1rem 1.2rem;margin:1rem 0">'
      + '  <div style="display:flex;justify-content:space-between;align-items:baseline;flex-wrap:wrap;gap:0.5rem">'
      + '    <h3 style="margin:0;font-size:1.05rem">IAAD-30 — Aprendizagem Ativa e Dedicação</h3>'
      + '    <span style="font-size:0.8rem;color:#64748b">30% da nota final</span>'
      + '  </div>'
      + '  <p style="margin:0.4rem 0 0.8rem 0;font-size:0.85rem;color:#64748b">'
      + '    Atualizado em tempo real a cada submissão. Nota é absoluta — exatamente o que você fez vale o que está abaixo.'
      + '  </p>'
      // Total IAAD
      + '  <div style="background:#f1f5f9;padding:0.7rem 0.9rem;border-radius:6px;margin-bottom:0.8rem">'
      + '    <div style="display:flex;justify-content:space-between;align-items:center">'
      + '      <strong style="font-size:1.1rem">IAAD: ' + iaad.toFixed(2) + ' / 10</strong>'
      + '      <span style="color:#0f766e;font-weight:600">→ ' + pts.toFixed(2) + ' / 30 pontos</span>'
      + '    </div>'
      + '    <div style="font-size:0.8rem;color:#475569;margin-top:0.3rem">' + qIaad.label + '</div>'
      + '  </div>'
      // Cumprimento Geral
      + '  <div style="margin-bottom:0.6rem">'
      + '    <div style="display:flex;justify-content:space-between;font-size:0.92rem">'
      + '      <strong>Cumprimento Geral · peso 40%</strong>'
      + '      <span><strong>' + cG.toFixed(2) + '</strong> / 10</span>'
      + '    </div>'
      + '    <div style="font-size:0.85rem;color:#64748b">' + bar(cG) + ' · ' + qG.label + '</div>'
      + '    <div style="font-size:0.78rem;color:#64748b;margin-top:0.2rem">'
      + '      Cumpriu o item em algum momento · ' + (data.c_geral_aulas_full || 0) + ' / ' + IAAD.AULAS_TOTAL + ' aulas integralmente cumpridas'
      + '    </div>'
      + '  </div>'
      // Cumprimento no Prazo
      + '  <div style="margin-bottom:0.6rem">'
      + '    <div style="display:flex;justify-content:space-between;font-size:0.92rem">'
      + '      <strong>Cumprimento no Prazo · peso 40%</strong>'
      + '      <span><strong>' + cP.toFixed(2) + '</strong> / 10</span>'
      + '    </div>'
      + '    <div style="font-size:0.85rem;color:#64748b">' + bar(cP) + ' · ' + qPr.label + '</div>'
      + '    <div style="font-size:0.78rem;color:#64748b;margin-top:0.2rem">'
      + '      Cumpriu dentro da janela canônica (pré-aula até a aula presencial; pós-aula até a próxima) · '
      + (data.c_prazo_aulas_full || 0) + ' / ' + IAAD.AULAS_TOTAL + ' aulas integralmente cumpridas no prazo'
      + '    </div>'
      + '  </div>'
      // Performance
      + '  <div style="margin-bottom:0.6rem">'
      + '    <div style="display:flex;justify-content:space-between;font-size:0.92rem">'
      + '      <strong>Performance · peso 20%</strong>'
      + '      <span><strong>' + p.toFixed(2) + '</strong> / 10</span>'
      + '    </div>'
      + '    <div style="font-size:0.85rem;color:#64748b">' + bar(p) + ' · ' + qP.label + '</div>'
      + '    <div style="font-size:0.78rem;color:#64748b;margin-top:0.2rem">'
      + '      Acerto em 1ª tentativa: ' + (data.p_correct_questions || 0) + ' / ' + (data.p_total_questions || 0)
      + '      ' + (data.p_total_questions ? '(' + Math.round((data.p_correct_questions/data.p_total_questions)*100) + '%)' : '')
      + '    </div>'
      + '  </div>'
      // Toggle breakdown
      + '  <div style="margin-top:0.5rem;text-align:right">'
      + '    <button class="iaad-toggle" data-target="iaad-breakdown-detail" style="background:none;border:none;color:#1B3A5C;cursor:pointer;text-decoration:underline;font-size:0.82rem;padding:0">ver detalhes (9 aulas × 6 itens)</button>'
      + '  </div>'
      + '  <div id="iaad-breakdown-detail" style="display:none;margin-top:0.4rem">' + renderBreakdown(data.breakdown) + '</div>'
      // Sugestão
      + '  <div style="background:#fef3c7;border-left:3px solid #d97706;padding:0.5rem 0.8rem;border-radius:4px;font-size:0.85rem;margin-top:0.8rem">'
      + '    <strong>Próximo passo:</strong> ' + IAAD.suggestNextStep(data, quartiles)
      + '  </div>'
      + '  <div style="margin-top:0.6rem;font-size:0.75rem;color:#94a3b8">'
      + '    Localização vs. turma é informativa (banda em quartis). Nota é absoluta — você ganha exatamente o que fez.'
      + '  </div>'
      + '</div>';

    targetEl.innerHTML = html;

    var btn = targetEl.querySelector('.iaad-toggle');
    if (btn) btn.onclick = function() {
      var t = document.getElementById(btn.dataset.target);
      if (t) t.style.display = (t.style.display === 'none' ? 'block' : 'none');
    };
  };

  IAAD.suggestNextStep = function(data) {
    var cG = Number(data.c_geral_score || 0);
    var cP = Number(data.c_prazo_score || 0);
    var p  = Number(data.p_score || 0);
    var gap = cG - cP;  // se geral > prazo → atrasos
    if (cG < 5) return 'Cumprimento Geral abaixo de 5,0 — entregue as próximas 2 atividades pendentes.';
    if (gap > 1.5) return 'Você cumpriu mas com atraso — antecipar o ritmo recupera pontos no Cumprimento no Prazo.';
    if (cP < 5) return 'Cumprimento no Prazo baixo — fazer pré-aula antes da quarta seguinte é o vetor de maior impacto.';
    if (p < 5) return 'Performance abaixo de 5,0 — releia o material com calma; evite chutar nos quizzes.';
    if (cG >= 8 && cP >= 8 && p >= 7) return 'Excelente ritmo. Use as leituras recomendadas (J-R) para subir Performance.';
    return 'Continue o ritmo. Mantenha a antecipação dos prazos.';
  };

  IAAD.fetchAndRender = async function(targetEl) {
    if (!window.MpeDB || !window.MpeDB.client) {
      targetEl.innerHTML = '<div class="iaad-empty">Supabase não disponível.</div>';
      return;
    }
    try {
      var sess = await window.MpeDB.client.auth.getSession();
      var uid = sess && sess.data && sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) {
        targetEl.innerHTML = '<div class="iaad-empty">Faça login para ver o IAAD-30.</div>';
        return;
      }

      var [iaadRes, quartilesRes] = await Promise.all([
        window.MpeDB.client.rpc('get_iaad', { p_user_id: uid }),
        window.MpeDB.client.rpc('get_iaad_class_quartiles')
      ]);

      var data = iaadRes && iaadRes.data && iaadRes.data[0];
      var qData = quartilesRes && quartilesRes.data && quartilesRes.data[0];

      if (iaadRes && iaadRes.error) console.warn('[IAAD] get_iaad error:', iaadRes.error);
      if (quartilesRes && quartilesRes.error) console.warn('[IAAD] get_iaad_class_quartiles error:', quartilesRes.error);

      IAAD.render(targetEl, data, qData);
    } catch (e) {
      console.error('[IAAD] fetch failed:', e);
      targetEl.innerHTML = '<div class="iaad-empty">Erro ao carregar IAAD-30 (ver console).</div>';
    }
  };

  window.IAAD = IAAD;
})();
