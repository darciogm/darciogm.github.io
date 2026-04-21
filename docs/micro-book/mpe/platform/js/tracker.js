/**
 * Tracker.js — Sistema de rastreamento de atividades do aluno
 * Microeconomia I — MPE 2026/32 — Plataforma Pré-Aula
 *
 * Registra: tempo por página, quizzes (acertos/erros), acessos, navegação
 * Armazena em localStorage, exporta CSV/JSON para o dashboard do professor
 */

(function() {
  'use strict';

  // ==================== CONFIG ====================
  var STORAGE_KEY = 'mpe_microI_tracker';
  var SESSION_KEY = 'mpe_microI_session';
  var USERS_KEY = 'mpe_microI_users';
  var HEARTBEAT_MS = 30000; // 30s heartbeat for time tracking

  // Helper: usa Supabase se feature flag ativa
  function _supabaseAuthOn() {
    return window.MPE_CONFIG && window.MPE_CONFIG.USE_SUPABASE_AUTH && window.MpeDB && window.MpeDB.enabled;
  }

  // ==================== AUTH ====================
  window.MicroAuth = {
    getUsers: function() {
      // Apenas modo legacy. Em modo Supabase, lista de usuarios nao e exposta para anon.
      if (_supabaseAuthOn()) return {};
      try { return JSON.parse(localStorage.getItem(USERS_KEY)) || {}; }
      catch(e) { return {}; }
    },
    saveUsers: function(users) {
      if (_supabaseAuthOn()) return;
      localStorage.setItem(USERS_KEY, JSON.stringify(users));
    },
    // Em modo Supabase, register precisa de email; matricula/nome vao em metadata.
    // Retorna { ok, msg } — Promise se Supabase ligado, sincrono se legacy.
    register: function(matriculaOrEmail, senha, nome, emailOpt) {
      if (_supabaseAuthOn()) {
        var email = emailOpt || (String(matriculaOrEmail).indexOf('@') >= 0 ? matriculaOrEmail : null);
        var matricula = emailOpt ? matriculaOrEmail : (String(matriculaOrEmail).indexOf('@') >= 0 ? null : matriculaOrEmail);
        if (!email) return Promise.resolve({ ok:false, msg:'Email é obrigatório no cadastro.' });
        if (!matricula) return Promise.resolve({ ok:false, msg:'Matrícula é obrigatória no cadastro.' });
        return MpeDB.signUp(email, senha, { matricula: matricula, nome: nome }).then(function(res) {
          if (!res.ok) return { ok:false, msg: (res.error && res.error.message) || String(res.error) };
          return { ok:true };
        });
      }
      // legacy sync
      var users = this.getUsers();
      if (users[matriculaOrEmail]) return { ok: false, msg: 'Matrícula já cadastrada.' };
      users[matriculaOrEmail] = { senha: this._hash(senha), nome: nome, createdAt: new Date().toISOString() };
      this.saveUsers(users);
      return { ok: true };
    },
    // Em Supabase: login por email. Legacy: matricula.
    login: function(identifier, senha) {
      if (_supabaseAuthOn()) {
        var self = this;
        return MpeDB.signIn(identifier, senha).then(function(res) {
          if (!res.ok) return { ok:false, msg: (res.error && res.error.message) || 'Credenciais inválidas.' };
          // Espelho para sessionStorage (onAuthStateChange ja faz, mas aguardamos um tick)
          return new Promise(function(resolve) {
            setTimeout(function(){ resolve({ ok:true, session: self.getSession() }); }, 400);
          });
        });
      }
      // legacy
      var users = this.getUsers();
      if (!users[identifier]) return { ok: false, msg: 'Matrícula não encontrada.' };
      if (users[identifier].senha !== this._hash(senha)) return { ok: false, msg: 'Senha incorreta.' };
      var session = { matricula: identifier, nome: users[identifier].nome, loginAt: new Date().toISOString() };
      sessionStorage.setItem(SESSION_KEY, JSON.stringify(session));
      return { ok: true, session: session };
    },
    logout: function() {
      MicroTracker.flush();
      sessionStorage.removeItem(SESSION_KEY);
      if (_supabaseAuthOn()) {
        // fire-and-forget; a UI vai redirecionar
        MpeDB.signOut();
      }
    },
    resetPassword: function(email) {
      if (!_supabaseAuthOn()) return Promise.resolve({ ok:false, msg:'Reset de senha disponível apenas com Supabase.' });
      return MpeDB.resetPassword(email);
    },
    getSession: function() {
      try { return JSON.parse(sessionStorage.getItem(SESSION_KEY)); }
      catch(e) { return null; }
    },
    requireAuth: function() {
      if (!this.getSession()) {
        window.location.href = 'index.html';
        return false;
      }
      return true;
    },
    // Admin detection: em Supabase le role do profile; legacy usa prefixo 'prof-'
    isAdmin: function() {
      var s = this.getSession();
      if (!s) return false;
      if (_supabaseAuthOn()) return s.role === 'admin';
      return s.matricula && s.matricula.toLowerCase().indexOf('prof') === 0;
    },
    requireAdmin: function() {
      if (!this.requireAuth()) return false;
      if (!this.isAdmin()) {
        window.location.href = 'portal.html';
        return false;
      }
      return true;
    },
    _hash: function(str) {
      // Simple hash for localStorage (NOT production-grade security)
      var hash = 0;
      for (var i = 0; i < str.length; i++) {
        var ch = str.charCodeAt(i);
        hash = ((hash << 5) - hash) + ch;
        hash |= 0;
      }
      return 'h_' + Math.abs(hash).toString(36);
    },
    // Bulk import students (professor use)
    importStudents: function(csvText) {
      var lines = csvText.trim().split('\n');
      var count = 0;
      for (var i = 1; i < lines.length; i++) { // skip header
        var cols = lines[i].split(',');
        if (cols.length >= 3) {
          var r = this.register(cols[0].trim(), cols[1].trim(), cols[2].trim());
          if (r.ok) count++;
        }
      }
      return count;
    },
    // Generate demo students
    loadDemoStudents: function() {
      var demos = [
        ['2024001','micro2','Ana Silva'],['2024002','micro2','Bruno Costa'],
        ['2024003','micro2','Carla Dias'],['2024004','micro2','Daniel Ferreira'],
        ['2024005','micro2','Elena Gomes'],['2024006','micro2','Felipe Henrique'],
        ['2024007','micro2','Gabriela Ito'],['2024008','micro2','Hugo Junior'],
        ['2024009','micro2','Isabela Klein'],['2024010','micro2','Joao Lima'],
        ['2024011','micro2','Karen Martins'],['2024012','micro2','Lucas Nascimento'],
        ['2024013','micro2','Maria Oliveira'],['2024014','micro2','Nathan Pereira'],
        ['2024015','micro2','Olivia Queiroz'],['2024016','micro2','Pedro Ribeiro'],
        ['2024017','micro2','Quiteria Santos'],['2024018','micro2','Rafael Torres'],
        ['2024019','micro2','Sofia Ueno'],['2024020','micro2','Thiago Vieira'],
        ['2024021','micro2','Ursula Werneck'],['2024022','micro2','Vitor Xavier'],
        ['2024023','micro2','Wanda Yamamoto'],['2024024','micro2','Xenia Zanetti'],
        ['2024025','micro2','Yuri Almeida'],['2024026','micro2','Zara Barbosa'],
        ['2024027','micro2','Andre Campos'],['2024028','micro2','Bianca Duarte'],
        ['2024029','micro2','Caio Esteves'],['2024030','micro2','Diana Farias'],
        ['2024031','micro2','Eduardo Garcia'],['2024032','micro2','Fernanda Haddad'],
        ['2024033','micro2','Gustavo Inacio'],['2024034','micro2','Helena Jardim'],
        ['2024035','micro2','Igor Kato'],['2024036','micro2','Julia Leal'],
        ['2024037','micro2','Kevin Machado'],['2024038','micro2','Laura Nogueira'],
        ['2024039','micro2','Marcos Otavio'],['2024040','micro2','Nina Pimentel'],
        ['2024041','micro2','Oscar Reis'],['2024042','micro2','Patricia Souza'],
        ['2024043','micro2','Quintino Tavares'],['2024044','micro2','Renata Uchoa'],
        ['2024045','micro2','Sergio Vargas']
      ];
      var count = 0;
      demos.forEach(function(d) { if (MicroAuth.register(d[0],d[1],d[2]).ok) count++; });
      return count;
    }
  };

  // Helper: dispara write Supabase se flag ligada, sem lancar
  function _syncWrite(fnName, args) {
    if (!window.MPE_CONFIG || !window.MPE_CONFIG.USE_SUPABASE_WRITES) return;
    if (!window.MpeDB || !window.MpeDB.enabled) return;
    try {
      var p = window.MpeDB[fnName].apply(window.MpeDB, args);
      if (p && typeof p.then === 'function') {
        p.then(function(r) {
          if (!r || !r.ok) console.warn('[MpeDB sync] ' + fnName + ' falhou:', r && r.error);
        }).catch(function(e) {
          console.warn('[MpeDB sync] ' + fnName + ' erro:', e);
        });
      }
    } catch(e) {
      console.warn('[MpeDB sync] ' + fnName + ' exception:', e);
    }
  }

  // ==================== TRACKER ====================
  window.MicroTracker = {
    _startTime: null,
    _currentPage: null,
    _heartbeatId: null,
    _quizState: {},

    // Get all tracking data
    getData: function() {
      try { return JSON.parse(localStorage.getItem(STORAGE_KEY)) || {}; }
      catch(e) { return {}; }
    },
    _save: function(data) {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(data));
    },

    // Start tracking a page visit
    startPage: function(pageId) {
      var session = MicroAuth.getSession();
      if (!session) return;

      this._currentPage = pageId;
      this._startTime = Date.now();

      var data = this.getData();
      var mat = session.matricula;
      if (!data[mat]) data[mat] = { nome: session.nome, pages: {}, quizzes: {} };
      if (!data[mat].pages[pageId]) data[mat].pages[pageId] = { visits: 0, totalTime: 0, firstVisit: null, lastVisit: null };

      var pg = data[mat].pages[pageId];
      pg.visits++;
      pg.lastVisit = new Date().toISOString();
      if (!pg.firstVisit) pg.firstVisit = pg.lastVisit;

      this._save(data);

      // Supabase sync
      _syncWrite('upsertPageVisit', [pageId, {
        visits: pg.visits,
        total_time_ms: pg.totalTime,
        first_visit_at: pg.firstVisit,
        last_visit_at: pg.lastVisit
      }]);

      // Heartbeat for time tracking
      var self = this;
      this._heartbeatId = setInterval(function() { self._heartbeat(); }, HEARTBEAT_MS);

      // Track on page unload
      window.addEventListener('beforeunload', function() { self.flush(); });
      document.addEventListener('visibilitychange', function() {
        if (document.hidden) self._pause();
        else self._resume();
      });
    },

    _heartbeat: function() {
      // Accumulate time
      if (this._startTime && this._currentPage && !document.hidden) {
        var elapsed = Date.now() - this._startTime;
        this._startTime = Date.now();
        var data = this.getData();
        var mat = MicroAuth.getSession()?.matricula;
        if (mat && data[mat] && data[mat].pages[this._currentPage]) {
          var pg = data[mat].pages[this._currentPage];
          pg.totalTime += elapsed;
          this._save(data);

          // Supabase sync (throttle: só a cada 4 heartbeats ≈ 2min)
          this._heartbeatCount = (this._heartbeatCount || 0) + 1;
          if (this._heartbeatCount % 4 === 0) {
            _syncWrite('upsertPageVisit', [this._currentPage, {
              visits: pg.visits,
              total_time_ms: pg.totalTime,
              first_visit_at: pg.firstVisit,
              last_visit_at: pg.lastVisit
            }]);
          }
        }
      }
    },

    _pause: function() { this._heartbeat(); this._startTime = null; },
    _resume: function() { this._startTime = Date.now(); },

    flush: function() {
      this._heartbeat();
      // Sync final (independente do throttle)
      if (this._currentPage) {
        var data = this.getData();
        var mat = MicroAuth.getSession()?.matricula;
        if (mat && data[mat] && data[mat].pages[this._currentPage]) {
          var pg = data[mat].pages[this._currentPage];
          _syncWrite('upsertPageVisit', [this._currentPage, {
            visits: pg.visits,
            total_time_ms: pg.totalTime,
            first_visit_at: pg.firstVisit,
            last_visit_at: pg.lastVisit
          }]);
        }
      }
      if (this._heartbeatId) clearInterval(this._heartbeatId);
      this._heartbeatId = null;
    },

    // ==================== QUIZ TRACKING ====================
    recordQuizAnswer: function(pageId, questionId, selectedAnswer, correctAnswer) {
      var session = MicroAuth.getSession();
      if (!session) return;

      var data = this.getData();
      var mat = session.matricula;
      if (!data[mat]) data[mat] = { nome: session.nome, pages: {}, quizzes: {} };
      if (!data[mat].quizzes[pageId]) data[mat].quizzes[pageId] = { attempts: 0, questions: {}, lastAttempt: null, bestScore: 0 };

      var quiz = data[mat].quizzes[pageId];
      quiz.lastAttempt = new Date().toISOString();
      if (!quiz.questions[questionId]) quiz.questions[questionId] = { attempts: [], correct: false };

      var isCorrect = selectedAnswer === correctAnswer;
      quiz.questions[questionId].attempts.push({
        answer: selectedAnswer,
        correct: isCorrect,
        timestamp: new Date().toISOString()
      });
      quiz.questions[questionId].correct = isCorrect;

      // Calculate score
      var total = Object.keys(quiz.questions).length;
      var right = Object.values(quiz.questions).filter(function(q) { return q.correct; }).length;
      var score = total > 0 ? Math.round(right / total * 100) : 0;
      if (score > quiz.bestScore) quiz.bestScore = score;

      this._save(data);

      // Supabase sync: insert uma linha por tentativa de questao + upsert agregado
      _syncWrite('recordQuizQuestionAttempt', [pageId, questionId, selectedAnswer, isCorrect]);
      _syncWrite('upsertQuizAggregate', [pageId, {
        attempts: quiz.attempts,
        best_score: quiz.bestScore,
        last_attempt_at: quiz.lastAttempt
      }]);

      return { correct: isCorrect, score: score, total: total, right: right };
    },

    submitQuiz: function(pageId) {
      var session = MicroAuth.getSession();
      if (!session) return;
      var data = this.getData();
      var mat = session.matricula;
      if (data[mat] && data[mat].quizzes[pageId]) {
        var quiz = data[mat].quizzes[pageId];
        quiz.attempts++;
        quiz.submittedAt = new Date().toISOString();
        this._save(data);
        _syncWrite('upsertQuizAggregate', [pageId, {
          attempts: quiz.attempts,
          best_score: quiz.bestScore,
          last_attempt_at: quiz.lastAttempt,
          submitted_at: quiz.submittedAt
        }]);
      }
    },

    // ==================== SECTIONAL TRACKING (nova granularidade) ====================
    _ensureSection: function(pageId, sectionId) {
      var session = MicroAuth.getSession();
      if (!session) return null;
      var data = this.getData();
      var mat = session.matricula;
      if (!data[mat]) data[mat] = { nome: session.nome, pages: {}, quizzes: {} };
      if (!data[mat].sections) data[mat].sections = {};
      if (!data[mat].sections[pageId]) data[mat].sections[pageId] = {};
      if (!data[mat].sections[pageId][sectionId]) {
        data[mat].sections[pageId][sectionId] = { startedAt: new Date().toISOString() };
      }
      return { data: data, mat: mat };
    },

    recordSectionStart: function(pageId, sectionId) {
      var ctx = this._ensureSection(pageId, sectionId);
      if (!ctx) return;
      var sec = ctx.data[ctx.mat].sections[pageId][sectionId];
      this._save(ctx.data);
      _syncWrite('upsertSectionProgress', [pageId, sectionId, { started_at: sec.startedAt }]);
    },

    recordSectionComplete: function(pageId, sectionId) {
      var ctx = this._ensureSection(pageId, sectionId);
      if (!ctx) return;
      var sec = ctx.data[ctx.mat].sections[pageId][sectionId];
      sec.completedAt = new Date().toISOString();
      this._save(ctx.data);
      _syncWrite('upsertSectionProgress', [pageId, sectionId, {
        started_at: sec.startedAt,
        completed_at: sec.completedAt
      }]);
    },

    recordConfidence: function(pageId, sectionId, phase, value) {
      // phase: 'pre' ou 'post'; value: 1-5
      var ctx = this._ensureSection(pageId, sectionId);
      if (!ctx) return;
      var sec = ctx.data[ctx.mat].sections[pageId][sectionId];
      if (phase === 'pre') sec.confidencePre = { value: value, at: new Date().toISOString() };
      else sec.confidencePost = { value: value, at: new Date().toISOString() };
      this._save(ctx.data);
      _syncWrite('recordConfidence', [pageId, sectionId, phase, value]);
    },

    recordMicroCheckpoint: function(pageId, sectionId, questionId, selectedAnswer, correctAnswer) {
      var ctx = this._ensureSection(pageId, sectionId);
      if (!ctx) return { correct: false };
      var sec = ctx.data[ctx.mat].sections[pageId][sectionId];
      if (!sec.microCheckpoint) sec.microCheckpoint = {};
      if (!sec.microCheckpoint[questionId]) sec.microCheckpoint[questionId] = { attempts: [], correct: false };
      var isCorrect = selectedAnswer === correctAnswer;
      sec.microCheckpoint[questionId].attempts.push({
        answer: selectedAnswer,
        correct: isCorrect,
        timestamp: new Date().toISOString()
      });
      if (isCorrect) sec.microCheckpoint[questionId].correct = true;
      var attemptNum = sec.microCheckpoint[questionId].attempts.length;
      this._save(ctx.data);
      _syncWrite('recordMicroAttempt', [pageId, sectionId, questionId, selectedAnswer, isCorrect, attemptNum]);
      return { correct: isCorrect, attemptNum: attemptNum };
    },

    recordPaperExercise: function(pageId, exerciseId, approach) {
      var session = MicroAuth.getSession();
      if (!session) return;
      var data = this.getData();
      var mat = session.matricula;
      if (!data[mat]) data[mat] = { nome: session.nome, pages: {}, quizzes: {} };
      if (!data[mat].paperExercises) data[mat].paperExercises = {};
      if (!data[mat].paperExercises[pageId]) data[mat].paperExercises[pageId] = {};
      data[mat].paperExercises[pageId][exerciseId] = {
        completed: true,
        approach: approach,
        completedAt: new Date().toISOString()
      };
      this._save(data);
      _syncWrite('upsertPaperExercise', [pageId, exerciseId, approach]);
    },

    recordReflection: function(pageId, promptId, text) {
      var session = MicroAuth.getSession();
      if (!session) return;
      var data = this.getData();
      var mat = session.matricula;
      if (!data[mat]) data[mat] = { nome: session.nome, pages: {}, quizzes: {} };
      if (!data[mat].reflections) data[mat].reflections = {};
      if (!data[mat].reflections[pageId]) data[mat].reflections[pageId] = {};
      data[mat].reflections[pageId][promptId] = {
        text: text,
        submittedAt: new Date().toISOString()
      };
      this._save(data);
      _syncWrite('upsertReflection', [pageId, promptId, text]);
    },

    // ==================== EXPORT ====================
    exportCSV: function() {
      var data = this.getData();
      var rows = ['matricula,nome,pagina,visitas,tempo_total_min,primeiro_acesso,ultimo_acesso,quiz_tentativas,quiz_melhor_score,quiz_acertos,quiz_total'];
      Object.keys(data).forEach(function(mat) {
        var student = data[mat];
        // Page visits
        Object.keys(student.pages || {}).forEach(function(page) {
          var pg = student.pages[page];
          var quiz = (student.quizzes || {})[page] || {};
          var qTotal = Object.keys(quiz.questions || {}).length;
          var qRight = Object.values(quiz.questions || {}).filter(function(q){return q.correct;}).length;
          rows.push([
            mat, student.nome, page, pg.visits, (pg.totalTime/60000).toFixed(1),
            pg.firstVisit||'', pg.lastVisit||'',
            quiz.attempts||0, quiz.bestScore||0, qRight, qTotal
          ].join(','));
        });
        // Quizzes without page visits
        Object.keys(student.quizzes || {}).forEach(function(page) {
          if (!(student.pages || {})[page]) {
            var quiz = student.quizzes[page];
            var qTotal = Object.keys(quiz.questions || {}).length;
            var qRight = Object.values(quiz.questions || {}).filter(function(q){return q.correct;}).length;
            rows.push([mat,student.nome,page,0,0,'','',quiz.attempts||0,quiz.bestScore||0,qRight,qTotal].join(','));
          }
        });
      });
      return rows.join('\n');
    },

    exportJSON: function() {
      return JSON.stringify(this.getData(), null, 2);
    },

    // Summary for dashboard
    getSummary: function() {
      var data = this.getData();
      var students = [];
      Object.keys(data).forEach(function(mat) {
        var s = data[mat];
        var pages = Object.keys(s.pages || {});
        var totalTime = pages.reduce(function(a, p) { return a + (s.pages[p].totalTime || 0); }, 0);
        var totalVisits = pages.reduce(function(a, p) { return a + (s.pages[p].visits || 0); }, 0);
        var quizzes = Object.keys(s.quizzes || {});
        var avgScore = quizzes.length > 0 ? quizzes.reduce(function(a, q) { return a + (s.quizzes[q].bestScore || 0); }, 0) / quizzes.length : 0;
        students.push({
          matricula: mat, nome: s.nome,
          pagesVisited: pages.length, totalVisits: totalVisits,
          totalTimeMin: +(totalTime / 60000).toFixed(1),
          quizzesCompleted: quizzes.filter(function(q) { return s.quizzes[q].attempts > 0; }).length,
          avgQuizScore: +avgScore.toFixed(0)
        });
      });
      return students;
    },

    clearAll: function() {
      localStorage.removeItem(STORAGE_KEY);
    }
  };

  // ==================== QUIZ UI SYSTEM ====================
  window.MicroQuiz = {
    init: function(pageId) {
      var quizContainers = document.querySelectorAll('.quiz-question');
      quizContainers.forEach(function(container) {
        var qId = container.dataset.question;
        var correct = container.dataset.correct;
        var options = container.querySelectorAll('.quiz-option');

        options.forEach(function(opt) {
          opt.addEventListener('click', function() {
            // Remove previous selection
            options.forEach(function(o) { o.classList.remove('selected', 'correct', 'incorrect'); });
            // Record answer
            var selected = opt.dataset.value;
            var result = MicroTracker.recordQuizAnswer(pageId, qId, selected, correct);
            // Visual feedback
            opt.classList.add('selected');
            if (result.correct) {
              opt.classList.add('correct');
            } else {
              opt.classList.add('incorrect');
              // Show correct answer
              options.forEach(function(o) {
                if (o.dataset.value === correct) o.classList.add('correct');
              });
            }
            // Show feedback
            var fb = container.querySelector('.quiz-feedback');
            if (fb) {
              fb.style.display = 'block';
              fb.className = 'quiz-feedback ' + (result.correct ? 'feedback-correct' : 'feedback-incorrect');
            }
            // Update score display
            var scoreEl = document.getElementById('quiz-score');
            if (scoreEl) scoreEl.textContent = result.right + '/' + result.total + ' (' + result.score + '%)';
          });
        });
      });
    },

    submit: function(pageId) {
      MicroTracker.submitQuiz(pageId);
      var btn = document.getElementById('quiz-submit');
      if (btn) {
        btn.textContent = 'Quiz enviado!';
        btn.disabled = true;
        btn.style.background = '#27ae60';
      }
    }
  };

  // ==================== MICROQUIZ GRADED (pre_review / post) ====================
  // Engine novo, isolado do MicroQuiz legado. Lock na 1a submissao, submit
  // em bloco, revela gabarito+peer-review so apos submit, rehidrata em
  // "modo review" se ja houve submissao para (pageId, phase).
  //
  // HTML esperado:
  //   <div class="quizg-block" data-page="aula-03-pre" data-phase="pre_review" data-title="...">
  //     <div class="quizg-q" data-qid="q1" data-correct="c" data-difficulty="yellow">
  //       <div class="quizg-qtext">...</div>
  //       <label class="quizg-opt"><input type="radio" name="q1" value="a"> (a) ...</label>
  //       ...
  //       <div class="quizg-feedback" hidden>...gabarito + peer-review...</div>
  //     </div>
  //     ...
  //     <button class="btn btn-primary quizg-submit">Submeter bloco</button>
  //     <div class="quizg-score" hidden></div>
  //   </div>
  //
  // phase permitidos: 'pre_review' | 'post'. data-difficulty so e usado na
  // fase 'post' (5🟡+5🔴); nas outras e ignorado na gravacao.

  function _gradedBlockState(block) {
    var questions = Array.prototype.slice.call(block.querySelectorAll('.quizg-q'));
    return {
      pageId: block.dataset.page,
      phase: block.dataset.phase || 'pre_review',
      total: questions.length,
      questions: questions
    };
  }

  function _gradedLock(block) {
    // Desabilita inputs e marca bloco como submetido.
    block.classList.add('quizg-locked');
    var inputs = block.querySelectorAll('input[type="radio"]');
    for (var i = 0; i < inputs.length; i++) inputs[i].disabled = true;
    var btn = block.querySelector('.quizg-submit');
    if (btn) btn.disabled = true;
  }

  function _gradedRevealFeedback(block) {
    var fbs = block.querySelectorAll('.quizg-feedback');
    for (var i = 0; i < fbs.length; i++) fbs[i].hidden = false;
  }

  function _gradedPaint(question, selectedValue) {
    // Pinta a questao com correct/incorrect/correct-answer. selectedValue
    // pode ser null (aluno nao respondeu — raro, mas tratamos).
    var correct = question.dataset.correct;
    var opts = question.querySelectorAll('.quizg-opt');
    for (var i = 0; i < opts.length; i++) {
      var input = opts[i].querySelector('input[type="radio"]');
      if (!input) continue;
      opts[i].classList.remove('quizg-opt-selected','quizg-opt-correct','quizg-opt-incorrect');
      if (input.value === correct) {
        opts[i].classList.add('quizg-opt-correct');
      }
      if (selectedValue && input.value === selectedValue && selectedValue !== correct) {
        opts[i].classList.add('quizg-opt-incorrect');
      }
      if (selectedValue && input.value === selectedValue) {
        opts[i].classList.add('quizg-opt-selected');
      }
    }
  }

  function _gradedComputeScore(block) {
    var st = _gradedBlockState(block);
    var right = 0;
    var answers = [];
    for (var i = 0; i < st.questions.length; i++) {
      var q = st.questions[i];
      var qid = q.dataset.qid;
      var correct = q.dataset.correct;
      var difficulty = q.dataset.difficulty || null;
      var chosen = q.querySelector('input[type="radio"]:checked');
      var val = chosen ? chosen.value : null;
      var isRight = val !== null && val === correct;
      if (isRight) right++;
      answers.push({ qid: qid, value: val, correct: isRight, difficulty: difficulty });
    }
    var pct = st.total > 0 ? Math.round(right / st.total * 100) : 0;
    return { right: right, total: st.total, pct: pct, answers: answers };
  }

  function _gradedShowScore(block, scoreObj, submitted) {
    var scoreEl = block.querySelector('.quizg-score');
    if (!scoreEl) return;
    scoreEl.hidden = false;
    var label = submitted ? 'Resultado' : 'Pontuação';
    scoreEl.innerHTML = '<strong>' + label + ':</strong> ' +
      scoreObj.right + '/' + scoreObj.total + ' (' + scoreObj.pct + '%)';
  }

  async function _gradedSubmit(block) {
    var st = _gradedBlockState(block);
    var score = _gradedComputeScore(block);

    // 1. Pinta todas as questoes (feedback visual local)
    for (var i = 0; i < st.questions.length; i++) {
      var q = st.questions[i];
      var ans = score.answers[i];
      _gradedPaint(q, ans.value);
    }

    // 2. Revela gabaritos/peer-review
    _gradedRevealFeedback(block);

    // 3. Lock
    _gradedLock(block);

    // 4. Mostra score
    _gradedShowScore(block, score, true);

    // 5. Grava no Supabase (fire-and-forget, tolerante a offline/LGPD-off).
    //    Usa o helper _syncWrite para herdar guardas USE_SUPABASE_WRITES.
    for (var j = 0; j < score.answers.length; j++) {
      var a = score.answers[j];
      if (a.value === null) continue; // nao grava questao nao respondida
      _syncWrite('recordQuizQuestionAttempt', [
        st.pageId, a.qid, a.value, a.correct,
        { phase: st.phase, difficulty: a.difficulty }
      ]);
    }
    // Agregado: lemos o registro atual para calcular best_score e attempts
    // incrementado. Se a leitura falhar (sem sessao, offline), caimos para
    // payload com attempts=1/best_score=score.pct (upsert vai criar).
    var current = null;
    try {
      if (window.MpeDB && window.MpeDB.enabled && window.MPE_CONFIG && window.MPE_CONFIG.USE_SUPABASE_WRITES) {
        var fetched = await window.MpeDB.fetchQuizAggregate(st.pageId, st.phase);
        if (fetched && fetched.ok) current = fetched.row;
      }
    } catch(e) { /* ignore */ }
    var attempts = (current && current.attempts ? current.attempts : 0) + 1;
    var bestScore = Math.max(current && current.best_score ? current.best_score : 0, score.pct);
    var nowIso = new Date().toISOString();
    _syncWrite('upsertQuizAggregatePhase', [st.pageId, st.phase, {
      attempts: attempts,
      best_score: bestScore,
      last_attempt_at: nowIso,
      submitted_at: nowIso
    }]);

    return score;
  }

  async function _gradedRehydrate(block) {
    // Se ja houve submissao para (pageId, phase), repopula a UI em modo
    // review: marca as opcoes escolhidas pelo aluno (ultima tentativa por
    // questao), pinta correct/incorrect, revela feedbacks, trava submit.
    if (!(window.MpeDB && window.MpeDB.enabled && window.MPE_CONFIG && window.MPE_CONFIG.USE_SUPABASE_WRITES)) {
      return false;
    }
    var st = _gradedBlockState(block);
    var agg;
    try {
      agg = await window.MpeDB.fetchQuizAggregate(st.pageId, st.phase);
    } catch(e) { return false; }
    if (!agg || !agg.ok || !agg.row || !agg.row.submitted_at) return false;

    var attempts;
    try {
      attempts = await window.MpeDB.fetchQuizQuestionAttempts(st.pageId, st.phase);
    } catch(e) { return false; }
    if (!attempts || !attempts.ok) return false;

    // Pega a ULTIMA tentativa por qid (rows vem ordenados asc)
    var lastByQid = {};
    for (var i = 0; i < attempts.rows.length; i++) {
      var r = attempts.rows[i];
      lastByQid[r.question_id] = r;
    }

    // Marca radios e pinta
    for (var j = 0; j < st.questions.length; j++) {
      var q = st.questions[j];
      var last = lastByQid[q.dataset.qid];
      if (!last) continue;
      var radios = q.querySelectorAll('input[type="radio"]');
      for (var k = 0; k < radios.length; k++) {
        if (radios[k].value === last.answer) radios[k].checked = true;
      }
      _gradedPaint(q, last.answer);
    }

    _gradedRevealFeedback(block);
    _gradedLock(block);

    // Mostra score persistido (best_score reflete a melhor tentativa;
    // aqui o "resultado" e a ultima — podem diferir se houver re-submit
    // no futuro. Por ora so ha 1 submit, entao batem).
    var lastRight = 0;
    for (var qid in lastByQid) {
      if (lastByQid[qid].correct) lastRight++;
    }
    var pct = st.total > 0 ? Math.round(lastRight / st.total * 100) : 0;
    _gradedShowScore(block, { right: lastRight, total: st.total, pct: pct }, true);

    block.classList.add('quizg-review');
    return true;
  }

  window.MicroQuizGraded = {
    // Auto-scan: procura todos os .quizg-block na pagina, tenta rehidratar,
    // e se nao houver submissao, anexa o handler do botao de submit.
    init: async function() {
      var blocks = document.querySelectorAll('.quizg-block');
      for (var i = 0; i < blocks.length; i++) {
        var block = blocks[i];
        if (block.__quizgInit) continue;
        block.__quizgInit = true;

        // Esconde todos os feedbacks ate submit (defensivo — o HTML ja usa hidden)
        var fbs = block.querySelectorAll('.quizg-feedback');
        for (var f = 0; f < fbs.length; f++) fbs[f].hidden = true;

        var rehydrated = false;
        try { rehydrated = await _gradedRehydrate(block); }
        catch(e) { console.warn('[MicroQuizGraded] rehydrate falhou:', e); }

        if (!rehydrated) {
          var btn = block.querySelector('.quizg-submit');
          if (btn) {
            (function(b, blk) {
              b.addEventListener('click', async function(ev) {
                ev.preventDefault();
                // Validacao: todas as questoes respondidas?
                var st = _gradedBlockState(blk);
                var unanswered = [];
                for (var q = 0; q < st.questions.length; q++) {
                  var chosen = st.questions[q].querySelector('input[type="radio"]:checked');
                  if (!chosen) unanswered.push(st.questions[q].dataset.qid);
                }
                if (unanswered.length > 0) {
                  var msg = 'Responda todas as questões antes de submeter. Faltam: ' + unanswered.join(', ');
                  var warn = blk.querySelector('.quizg-warn');
                  if (warn) { warn.textContent = msg; warn.hidden = false; }
                  else { alert(msg); }
                  return;
                }
                b.disabled = true;
                b.textContent = 'Enviando…';
                try {
                  await _gradedSubmit(blk);
                  b.textContent = 'Bloco submetido';
                } catch(e) {
                  console.warn('[MicroQuizGraded] submit erro:', e);
                  b.textContent = 'Erro — ver console';
                }
              });
            })(btn, block);
          }
        }
      }
    }
  };

})();
