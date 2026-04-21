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

    recordQuizQuestionAttempt: async function(pageId, questionId, answer, correct) {
      var sess = await client.auth.getSession();
      var uid = sess.data.session && sess.data.session.user && sess.data.session.user.id;
      if (!uid) return { ok:false, error:'no session' };
      var res = await client.from('quiz_question_attempts').insert({
        user_id: uid, page_id: pageId, question_id: questionId,
        answer: answer, correct: correct
      });
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
          client.from('reflections').select('*').order('submitted_at', { ascending: false })
        ]);
        for (var i = 0; i < queries.length; i++) {
          if (queries[i].error) return { ok:false, error: queries[i].error };
        }
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
            reflections:     queries[8].data || []
          }
        };
      } catch(e) {
        return { ok:false, error:e };
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
