/**
 * MpeDB — camada de acesso ao Supabase.
 *
 * Expõe helpers batidos com o schema `schema.sql`. Todas as funções
 * retornam Promises. Em caso de falha (sem rede, RLS negado, etc.),
 * retornam `{ok:false, error}` — nunca lançam — para o tracker.js
 * poder degradar graciosamente para localStorage.
 *
 * Só tem efeito se window.MPE_CONFIG.USE_SUPABASE_WRITES/READS for true.
 */
(function() {
  'use strict';

  if (typeof window.SUPABASE_URL !== 'string' || !window.SUPABASE_URL) {
    console.warn('[MpeDB] SUPABASE_URL não definido — Supabase desativado.');
    window.MpeDB = { client: null, enabled: false };
    return;
  }

  if (typeof supabase === 'undefined' || typeof supabase.createClient !== 'function') {
    console.warn('[MpeDB] Supabase JS SDK não carregou — verifique a tag <script> do CDN.');
    window.MpeDB = { client: null, enabled: false };
    return;
  }

  var client = supabase.createClient(window.SUPABASE_URL, window.SUPABASE_ANON_KEY, {
    auth: {
      persistSession: true,
      autoRefreshToken: true,
      detectSessionInUrl: true
    }
  });

  var MpeDB = {
    client: client,
    enabled: true,

    // ==================== AUTH ====================

    signUp: async function(email, password, meta) {
      try {
        var res = await client.auth.signUp({
          email: email,
          password: password,
          options: { data: meta || {} }
        });
        return res.error ? { ok:false, error:res.error } : { ok:true, data:res.data };
      } catch(e) { return { ok:false, error:e }; }
    },

    signIn: async function(email, password) {
      try {
        var res = await client.auth.signInWithPassword({ email: email, password: password });
        return res.error ? { ok:false, error:res.error } : { ok:true, data:res.data };
      } catch(e) { return { ok:false, error:e }; }
    },

    signOut: async function() {
      try { await client.auth.signOut(); return { ok:true }; }
      catch(e) { return { ok:false, error:e }; }
    },

    resetPassword: async function(email) {
      try {
        var res = await client.auth.resetPasswordForEmail(email, {
          redirectTo: window.location.origin + window.location.pathname.replace(/[^/]*$/, '') + 'reset-password.html'
        });
        return res.error ? { ok:false, error:res.error } : { ok:true };
      } catch(e) { return { ok:false, error:e }; }
    },

    getSession: async function() {
      try {
        var res = await client.auth.getSession();
        return { ok:true, session: res.data.session };
      } catch(e) { return { ok:false, error:e, session:null }; }
    },

    getProfile: async function() {
      try {
        var sess = await client.auth.getSession();
        var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
        if (!uid) return { ok:false, error:'no session' };
        var res = await client.from('profiles').select('*').eq('id', uid).single();
        return res.error ? { ok:false, error:res.error } : { ok:true, profile:res.data };
      } catch(e) { return { ok:false, error:e }; }
    },

    // ==================== PAGE VISITS ====================

    upsertPageVisit: async function(pageId, updates) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = Object.assign({ user_id: uid, page_id: pageId, updated_at: new Date().toISOString() }, updates);
      var res = await client.from('page_visits').upsert(payload, { onConflict: 'user_id,page_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== SECTION PROGRESS ====================

    upsertSectionProgress: async function(pageId, sectionId, updates) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = Object.assign({
        user_id: uid, page_id: pageId, section_id: sectionId,
        updated_at: new Date().toISOString()
      }, updates);
      var res = await client.from('section_progress').upsert(payload, { onConflict: 'user_id,page_id,section_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== CONFIDENCE ====================

    recordConfidence: async function(pageId, sectionId, phase, value) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = {
        user_id: uid, page_id: pageId, section_id: sectionId,
        phase: phase, value: value, recorded_at: new Date().toISOString()
      };
      var res = await client.from('confidence_ratings').upsert(payload, { onConflict: 'user_id,page_id,section_id,phase' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== MICRO CHECKPOINT ====================

    recordMicroAttempt: async function(pageId, sectionId, questionId, answer, correct, attemptNum) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('micro_attempts').insert({
        user_id: uid, page_id: pageId, section_id: sectionId,
        question_id: questionId, answer: answer, correct: correct,
        attempt_num: attemptNum
      });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== QUIZ FINAL ====================

    upsertQuizAggregate: async function(pageId, updates) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = Object.assign({ user_id: uid, page_id: pageId }, updates);
      var res = await client.from('quiz_aggregates').upsert(payload, { onConflict: 'user_id,page_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // Variante com phase explicito. Mantem onConflict em (user_id, page_id)
    // porque a regra do schema (schema.sql L155-157) e que cada fase vive em
    // page_id distinto (aula-XX vs aula-XX-pre vs aula-XX-pos). O phase aqui
    // e descritivo, para rollups do admin sem depender de convencao de sufixo.
    upsertQuizAggregatePhase: async function(pageId, phase, updates) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = Object.assign({ user_id: uid, page_id: pageId, phase: phase }, updates);
      var res = await client.from('quiz_aggregates').upsert(payload, { onConflict: 'user_id,page_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // Busca o agregado do usuario corrente para (pageId, phase). Retorna
    // {ok, row} onde row pode ser null se ainda nao houve submissao. Usado
    // pela rehidratacao do MicroQuizGraded (entra em modo review se
    // attempts > 0).
    fetchQuizAggregate: async function(pageId, phase) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session', row:null };
      var q = client.from('quiz_aggregates').select('*').eq('user_id', uid).eq('page_id', pageId);
      if (phase) q = q.eq('phase', phase);
      var res = await q.maybeSingle();
      if (res.error) return { ok:false, error:res.error, row:null };
      return { ok:true, row: res.data || null };
    },

    // Busca historico de tentativas de questao para (pageId[, phase]). Usado
    // pela rehidratacao para recolorir opcoes corretas/incorretas.
    fetchQuizQuestionAttempts: async function(pageId, phase) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session', rows:[] };
      var q = client.from('quiz_question_attempts').select('*')
        .eq('user_id', uid).eq('page_id', pageId)
        .order('answered_at', { ascending: true });
      if (phase) q = q.eq('phase', phase);
      var res = await q;
      if (res.error) return { ok:false, error:res.error, rows:[] };
      return { ok:true, rows: res.data || [] };
    },

    // Assinatura legada preservada: (pageId, questionId, answer, correct).
    // Opcionalmente aceita um 5o argumento {phase, difficulty} para o engine
    // MicroQuizGraded. _syncWrite em tracker.js passa args arbitrariamente,
    // entao adicionar um parametro opcional e backward compatible.
    recordQuizQuestionAttempt: async function(pageId, questionId, answer, correct, opts) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var payload = {
        user_id: uid, page_id: pageId, question_id: questionId,
        answer: answer, correct: correct
      };
      if (opts && typeof opts === 'object') {
        if (opts.phase) payload.phase = opts.phase;
        if (opts.difficulty) payload.difficulty = opts.difficulty;
      }
      var res = await client.from('quiz_question_attempts').insert(payload);
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== PAPER + REFLECTIONS ====================

    upsertPaperExercise: async function(pageId, exerciseId, approach) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('paper_exercises').upsert({
        user_id: uid, page_id: pageId, exercise_id: exerciseId,
        approach: approach, completed_at: new Date().toISOString()
      }, { onConflict: 'user_id,page_id,exercise_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    upsertReflection: async function(pageId, promptId, text) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('reflections').upsert({
        user_id: uid, page_id: pageId, prompt_id: promptId,
        text: text, submitted_at: new Date().toISOString()
      }, { onConflict: 'user_id,page_id,prompt_id' });
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== ADMIN READS (Fase 5) ====================

    adminFetchAllStudents: async function() {
      var res = await client.from('v_student_summary').select('*').order('nome');
      return res.error ? { ok:false, error:res.error } : { ok:true, data:res.data };
    },

    // Busca TUDO em paralelo (9 tabelas). Retorna {ok, data:{...}, error}.
    // Usado pelo dashboard admin para montar uma visao completa da turma.
    adminFetchAll: async function() {
      try {
        var queries = await Promise.all([
          client.from('profiles').select('*').order('nome'),
          client.from('page_visits').select('*'),
          client.from('section_progress').select('*'),
          client.from('confidence_ratings').select('*'),
          client.from('micro_attempts').select('*'),
          client.from('quiz_aggregates').select('*'),
          client.from('quiz_question_attempts').select('*'),
          client.from('paper_exercises').select('*'),
          client.from('reflections').select('*').order('submitted_at', { ascending: false }),
          // admin_interventions é opcional — se migration não foi aplicada ainda,
          // devolve erro silenciosamente. Tratamento tolerante abaixo.
          client.from('admin_interventions').select('*').order('created_at', { ascending: false })
        ]);
        for (var i = 0; i < queries.length - 1; i++) { // não trava se a última (interventions) falhar
          if (queries[i].error) return { ok:false, error: queries[i].error };
        }
        var interventions = (queries[9].error ? [] : (queries[9].data || []));
        return {
          ok: true,
          data: {
            profiles:        queries[0].data || [],
            pageVisits:      queries[1].data || [],
            sectionProgress: queries[2].data || [],
            confidence:      queries[3].data || [],
            microAttempts:   queries[4].data || [],
            quizAggregates:  queries[5].data || [],
            quizQA:          queries[6].data || [],
            paperExercises:  queries[7].data || [],
            reflections:     queries[8].data || [],
            interventions:   interventions
          },
          interventionsMigrationMissing: !!(queries[9].error)
        };
      } catch(e) {
        return { ok:false, error:e };
      }
    },

    // ==================== INTERVENTIONS (Onda 2B) ====================

    addIntervention: async function(payload) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var row = {
        student_id: payload.studentId,
        admin_id:   uid,
        kind:       payload.kind || 'conversation',
        topic:      payload.topic || null,
        note:       payload.note
      };
      var res = await client.from('admin_interventions').insert(row).select().single();
      return res.error ? { ok:false, error:res.error } : { ok:true, data:res.data };
    },

    updateInterventionOutcome: async function(id, outcome) {
      var res = await client.from('admin_interventions')
        .update({ outcome: outcome, outcome_recorded_at: new Date().toISOString() })
        .eq('id', id)
        .select().single();
      return res.error ? { ok:false, error:res.error } : { ok:true, data:res.data };
    },

    deleteIntervention: async function(id) {
      var res = await client.from('admin_interventions').delete().eq('id', id);
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== LGPD ====================

    recordConsent: async function() {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('profiles').update({ consented_lgpd: new Date().toISOString() }).eq('id', uid);
      return res.error ? { ok:false, error:res.error } : { ok:true };
    },

    // ==================== FIRST-LOGIN PASSWORD GATE ====================

    // Marca o profile do usuario corrente como "ja trocou a senha inicial".
    // Tolerante a ausencia da coluna password_changed_at (migration nao
    // aplicada ainda): retorna {ok:false, missing:true} em vez de derrubar.
    markPasswordChanged: async function() {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('profiles')
        .update({ password_changed_at: new Date().toISOString() })
        .eq('id', uid);
      if (res.error) {
        // codigo 42703 = coluna inexistente (schema nao migrado)
        var missing = res.error && (res.error.code === '42703' ||
          /password_changed_at/.test(res.error.message || ''));
        return { ok:false, error:res.error, missing:!!missing };
      }
      return { ok:true };
    },

    // Troca a senha do usuario autenticado e, em caso de sucesso, marca o
    // profile como "ja trocou a senha inicial". Usado pelo gate de primeiro
    // acesso no portal.html.
    changePassword: async function(novaSenha) {
      if (!novaSenha || novaSenha.length < 8) {
        return { ok:false, error:{ message:'Senha precisa ter ao menos 8 caracteres.' } };
      }
      var upd = await client.auth.updateUser({ password: novaSenha });
      if (upd.error) return { ok:false, error:upd.error };
      var mark = await MpeDB.markPasswordChanged();
      // Se coluna ausente (migration pendente), seguimos em frente com warning.
      if (!mark.ok && !mark.missing) return { ok:false, error:mark.error };
      return { ok:true, column_missing: !!mark.missing };
    },

    fetchMyDataAll: async function() {
      // Para o titular baixar os proprios dados (direito de acesso/portabilidade)
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      try {
        var queries = await Promise.all([
          client.from('profiles').select('*').eq('id', uid).single(),
          client.from('page_visits').select('*').eq('user_id', uid),
          client.from('section_progress').select('*').eq('user_id', uid),
          client.from('confidence_ratings').select('*').eq('user_id', uid),
          client.from('micro_attempts').select('*').eq('user_id', uid),
          client.from('quiz_aggregates').select('*').eq('user_id', uid),
          client.from('quiz_question_attempts').select('*').eq('user_id', uid),
          client.from('paper_exercises').select('*').eq('user_id', uid),
          client.from('reflections').select('*').eq('user_id', uid)
        ]);
        return {
          ok: true,
          data: {
            exported_at: new Date().toISOString(),
            profile:         queries[0].data,
            page_visits:     queries[1].data || [],
            section_progress: queries[2].data || [],
            confidence_ratings: queries[3].data || [],
            micro_attempts:  queries[4].data || [],
            quiz_aggregates: queries[5].data || [],
            quiz_question_attempts: queries[6].data || [],
            paper_exercises: queries[7].data || [],
            reflections:     queries[8].data || []
          }
        };
      } catch(e) { return { ok:false, error:e }; }
    },

    // ==================== COURSE MATERIALS (Storage) ====================

    // Gera signed URL on-demand para um arquivo do bucket privado
    // 'course-materials' e abre em nova aba. A URL expira em 5 min (sobra
    // enorme para o uso imediato). Requer que o aluno esteja autenticado —
    // a policy de storage (migration 2026-04-21_course_materials_storage.sql)
    // bloqueia anon.
    openCourseMaterial: async function(fileName, opts) {
      if (!fileName) return { ok:false, error:'fileName obrigatorio' };
      try {
        var ttl = (opts && opts.ttlSeconds) || 300;
        var res = await client.storage
          .from('course-materials')
          .createSignedUrl(fileName, ttl);
        if (res.error || !res.data || !res.data.signedUrl) {
          return { ok:false, error: res.error || 'signed URL nao gerada' };
        }
        window.open(res.data.signedUrl, '_blank', 'noopener,noreferrer');
        return { ok:true, url: res.data.signedUrl };
      } catch(e) {
        return { ok:false, error:e };
      }
    },

    // ==================== CLASS AGGREGATES (agregados k-anônimos) ====================

    // Retorna percentis de tempo (segundos) por page_id, agregados pela
    // turma. Consome o RPC SECURITY DEFINER get_class_time_percentiles,
    // cujo gate HAVING COUNT(DISTINCT user_id) >= 5 garante k-anonymity
    // (k=5) — zero PII no payload. Usado pelo nudge R3 do portal Onda 1.
    //
    // Formato de retorno: { 'aula-01': {p25, p50, p75, n}, ... }.
    // Em erro/RPC indisponível, devolve {} (não lança) — o chamador cai
    // no fallback de P25 individual do próprio aluno.
    getClassTimePercentiles: async function() {
      try {
        var r = await client.rpc('get_class_time_percentiles');
        if (r.error || !Array.isArray(r.data)) return {};
        var out = {};
        r.data.forEach(function(row) {
          if (!row || !row.page_id) return;
          out[row.page_id] = {
            p25: row.p25_seconds,
            p50: row.p50_seconds,
            p75: row.p75_seconds,
            n:   row.n_students
          };
        });
        return out;
      } catch(e) {
        return {};
      }
    },

    // ==================== TEST (saude da conexao) ====================

    testConnection: async function() {
      try {
        var t0 = performance.now();
        var res = await client.auth.getSession();  // endpoint leve, não requer login
        var dt = Math.round(performance.now() - t0);
        if (res.error) return { ok:false, error:res.error.message, ms:dt };
        return { ok:true, ms:dt, session:res.data.session };
      } catch(e) {
        return { ok:false, error:String(e) };
      }
    }
  };

  window.MpeDB = MpeDB;
  console.log('[MpeDB] cliente Supabase iniciado. window.MpeDB disponível. Rodar MpeDB.testConnection() para testar.');

  // Listener: sincroniza sessao Supabase -> sessionStorage (espelho sincrono
  // para o resto do codigo nao precisar ser async).
  var SESSION_KEY = 'mpe_microI_session';

  async function mirrorToSessionStorage(session) {
    if (!session) {
      sessionStorage.removeItem(SESSION_KEY);
      return;
    }
    try {
      var prof = await client.from('profiles').select('*').eq('id', session.user.id).single();
      if (prof.error) {
        console.warn('[MpeDB] sessao Supabase ok mas profile nao encontrado:', prof.error.message);
        return;
      }
      sessionStorage.setItem(SESSION_KEY, JSON.stringify({
        matricula: prof.data.matricula,
        nome: prof.data.nome,
        email: prof.data.email,
        role: prof.data.role,
        userId: prof.data.id,
        consented_lgpd: prof.data.consented_lgpd,
        // password_changed_at pode nao existir ainda (migration pendente);
        // nesse caso guardamos undefined, e o gate trata como ausente.
        password_changed_at: prof.data.password_changed_at,
        loginAt: new Date().toISOString()
      }));
    } catch(e) {
      console.warn('[MpeDB] erro ao espelhar sessao:', e);
    }
  }

  // Primeira carga: se ja ha sessao persistida, mirror imediato
  client.auth.getSession().then(function(res) {
    if (res.data.session) mirrorToSessionStorage(res.data.session);
  });

  // Escuta mudancas de auth
  client.auth.onAuthStateChange(function(event, session) {
    console.log('[MpeDB] auth event:', event);
    mirrorToSessionStorage(session);
  });
})();
