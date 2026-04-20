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

  // ==================== AUTH ====================
  window.MicroAuth = {
    getUsers: function() {
      try { return JSON.parse(localStorage.getItem(USERS_KEY)) || {}; }
      catch(e) { return {}; }
    },
    saveUsers: function(users) {
      localStorage.setItem(USERS_KEY, JSON.stringify(users));
    },
    register: function(matricula, senha, nome) {
      var users = this.getUsers();
      if (users[matricula]) return { ok: false, msg: 'Matrícula já cadastrada.' };
      users[matricula] = { senha: this._hash(senha), nome: nome, createdAt: new Date().toISOString() };
      this.saveUsers(users);
      return { ok: true };
    },
    login: function(matricula, senha) {
      var users = this.getUsers();
      if (!users[matricula]) return { ok: false, msg: 'Matrícula não encontrada.' };
      if (users[matricula].senha !== this._hash(senha)) return { ok: false, msg: 'Senha incorreta.' };
      var session = { matricula: matricula, nome: users[matricula].nome, loginAt: new Date().toISOString() };
      sessionStorage.setItem(SESSION_KEY, JSON.stringify(session));
      return { ok: true, session: session };
    },
    logout: function() {
      MicroTracker.flush();
      sessionStorage.removeItem(SESSION_KEY);
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
          data[mat].pages[this._currentPage].totalTime += elapsed;
          this._save(data);
        }
      }
    },

    _pause: function() { this._heartbeat(); this._startTime = null; },
    _resume: function() { this._startTime = Date.now(); },

    flush: function() {
      this._heartbeat();
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
      return { correct: isCorrect, score: score, total: total, right: right };
    },

    submitQuiz: function(pageId) {
      var session = MicroAuth.getSession();
      if (!session) return;
      var data = this.getData();
      var mat = session.matricula;
      if (data[mat] && data[mat].quizzes[pageId]) {
        data[mat].quizzes[pageId].attempts++;
        data[mat].quizzes[pageId].submittedAt = new Date().toISOString();
        this._save(data);
      }
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

})();
