/**
 * MPE_CALENDARIO — fonte unica de verdade do calendario do curso.
 *
 * Calendario MPE Micro I 2026/32:
 * - 9 aulas de conteudo (quartas 19:30-22:30)
 * - 5 monitorias (sabados) com Alberto
 * - 1 avaliacao final (25/06)
 *
 * REGRA DE ACESSO (vigente desde 2026-05-08; deadline antecipado em
 * 2026-06-25): livre acesso a todos os bundles e pre-monitorias prontas,
 * ate 2026-06-28 23:59 BRT (deadline unico de submissao). Gabaritos
 * liberam em 2026-06-29 00:00 BRT.
 * Bundles ainda nao produzidos sao gateados via flags do portal.html
 * (available:false / fileReady:false), nao mais via calendario.
 *
 * Datas das aulas e monitorias presenciais sao mantidas para display
 * (info de contexto pedagogico) e referencia no roteiro do Alberto.
 */
(function() {
  'use strict';

  var BRT = '-03:00';

  function dt(iso) { return new Date(iso + BRT).getTime(); }

  var UMA_HORA = 3600 * 1000;
  var UM_DIA = 24 * UMA_HORA;

  // Regra unificada de acesso livre
  var ACESSO_LIVRE_INICIO = dt('2026-04-15T00:00:00'); // ja aberto desde antes do inicio do curso
  var ACESSO_LIVRE_FIM = dt('2026-06-28T23:59:00');    // deadline unico (antecipado de 02/07 em 2026-06-25)
  var GABARITO_LIBERADO = dt('2026-06-29T00:00:00');   // dia seguinte ao fechamento

  // Concessao 2026-06-25: as 3 primeiras aulas tem janela canonica (C_prazo)
  // colapsada numa data unica = novo deadline. Aulas 4-9 mantem a regra
  // padrao (presencial_at / next_presencial_at). Espelha o backend
  // (win_pre/win_pos da iaad_calendar, migration 2026-06-25_iaad_deadline_collapse.sql).
  var JANELA_COLAPSADA_1_3 = dt('2026-06-28T23:59:00');

  // Data das 9 aulas + avaliacao final. Quartas 19:30. (Mantido para display.)
  var AULAS_DATAS = [
    dt('2026-04-22T19:30:00'), // Aula 1
    dt('2026-04-29T19:30:00'), // Aula 2
    dt('2026-05-06T19:30:00'), // Aula 3
    dt('2026-05-13T19:30:00'), // Aula 4
    dt('2026-05-20T19:30:00'), // Aula 5
    dt('2026-05-27T19:30:00'), // Aula 6
    dt('2026-06-03T19:30:00'), // Aula 7
    dt('2026-06-10T19:30:00'), // Aula 8
    dt('2026-06-17T19:30:00')  // Aula 9
  ];

  var AVALIACAO_FINAL = dt('2026-06-25T19:30:00'); // AF movida de 24/06 (jogo do Brasil na Copa)

  var MONITORIAS_DATAS = [
    dt('2026-05-16T10:00:00'), // M1
    dt('2026-05-23T10:00:00'), // M2
    dt('2026-05-30T10:00:00'), // M3
    dt('2026-06-13T10:00:00'), // M4
    dt('2026-06-20T10:00:00')  // M5
  ];

  // Pre-monitorias: data presencial mantida apenas para display.
  // Janela de acesso e unificada (livre ate ACESSO_LIVRE_FIM).
  var PRE_MONITORIAS = [
    { n: 1, monitoria: dt('2026-05-16T10:00:00') },
    { n: 2, monitoria: dt('2026-05-23T10:00:00') },
    { n: 3, monitoria: dt('2026-05-30T10:00:00') },
    { n: 4, monitoria: dt('2026-06-13T10:00:00') },
    { n: 5, monitoria: dt('2026-06-20T10:00:00') }
  ];

  // Flag mantida em false para legibilidade; logica de excecao foi removida
  // pela regra de acesso livre unificada.
  var EXCECAO_AULA1_AULA2 = false;

  // Para cada aula N (1..9) e cada componente, retorna {abre, fecha, gabarito}.
  // Sob a regra de acesso livre, os 4 componentes (pre/material/pos/exerc)
  // tem o mesmo prazo. Bundles ainda nao prontos sao escondidos via flag
  // do portal (available:false), nao via calendario.
  //
  // SEMANTICA: getPrazo responde "ate quando o aluno PODE submeter"
  // (gating real da plataforma). Para "ate quando o aluno DEVERIA submeter
  // dentro do ritmo ideal" (cramming, atraso, foco da semana), use
  // getJanelaCanonica abaixo.
  function getPrazo(aula_n, componente) {
    if (aula_n < 1 || aula_n > AULAS_DATAS.length) return null;
    return {
      abre: ACESSO_LIVRE_INICIO,
      fecha: ACESSO_LIVRE_FIM,
      gabarito: GABARITO_LIBERADO
    };
  }

  // Janela canonica IAAD-30 (espelha public.iaad_calendar do Postgres,
  // ver supabase/migrations/2026-05-09_iaad30.sql):
  //   material/pre/refl_nebulosa/refl_aula -> presencial_at (D_X qua 19:30)
  //   pos/exerc                            -> next_presencial_at (D_{X+1};
  //                                            Aula 9 -> AF qui 25/06 19:30)
  // Usado por: cramming detection, foco-da-semana, label "atrasado",
  // inbox de gabaritos. NUNCA use para gating de submissao -- isso e papel
  // de getPrazo/isClosed (acesso livre ate ACESSO_LIVRE_FIM).
  //
  // Gabarito por aula = proxima meia-noite BRT apos a janela fechar
  // (qui 00:00 BRT). Coerente com CLAUDE.md "quinta 00:00 pos-fechamento".
  function _proximaMeiaNoiteBRT(ts) {
    // BRT e UTC-3 fixo (sem horario de verao desde 2019). Calculo seguro
    // independente do timezone do navegador.
    // shifted: traduz UTC ms para "BRT-clock ms" (subtrai 3h, ja que BRT
    // = UTC - 3h). Ai dividir por UM_DIA da fronteiras de dia em BRT.
    var BRT_OFFSET_MS = -3 * 3600 * 1000;
    var shifted = ts + BRT_OFFSET_MS;
    var nextDayShifted = Math.floor(shifted / UM_DIA) * UM_DIA + UM_DIA;
    return nextDayShifted - BRT_OFFSET_MS;
  }

  function getJanelaCanonica(aula_n, componente) {
    if (aula_n < 1 || aula_n > AULAS_DATAS.length) return null;
    var idx = aula_n - 1;
    var presencial = AULAS_DATAS[idx];
    var next = (aula_n < AULAS_DATAS.length) ? AULAS_DATAS[idx + 1] : AVALIACAO_FINAL;
    // Aulas 1-3: janela colapsada (concessao 2026-06-25). Aulas 4-9: padrao.
    // presencial_at/next_presencial_at seguem reais (display/ritmo); so o
    // 'fecha' (que define C_prazo) e que colapsa.
    var fecha;
    if (aula_n <= 3) {
      fecha = JANELA_COLAPSADA_1_3;
    } else {
      fecha = (componente === 'pos' || componente === 'exerc') ? next : presencial;
    }
    return {
      abre: ACESSO_LIVRE_INICIO,
      fecha: fecha,
      gabarito: _proximaMeiaNoiteBRT(fecha),
      presencial_at: presencial,
      next_presencial_at: next
    };
  }

  function isCanonicaFechada(aula_n, componente) {
    var j = getJanelaCanonica(aula_n, componente);
    if (!j) return false;
    return Date.now() >= j.fecha;
  }

  // Parsing de data-page (ex: "aula-01-exerc") => {aula_n, componente}
  function parsePageId(pageId) {
    if (!pageId) return null;
    var m = pageId.match(/^aula-(\d+)(?:-(pre|pos|exerc))?$/);
    if (!m) return null;
    var aula_n = parseInt(m[1], 10);
    var sufixo = m[2];
    var componente;
    if (!sufixo) componente = 'material';
    else if (sufixo === 'pre') componente = 'pre';
    else if (sufixo === 'pos') componente = 'pos';
    else if (sufixo === 'exerc') componente = 'exerc';
    else return null;
    return { aula_n: aula_n, componente: componente };
  }

  // Helpers de estado
  function estadoDaAula(aula_n) {
    // Sob acesso livre, 'active' enquanto Date.now() < ACESSO_LIVRE_FIM,
    // 'done' depois. Visibilidade do bundle depende do portal.
    if (aula_n < 1 || aula_n > AULAS_DATAS.length) return 'locked';
    var now = Date.now();
    if (now < ACESSO_LIVRE_INICIO) return 'locked';
    if (now >= ACESSO_LIVRE_FIM) return 'done';
    return 'active';
  }

  function isOpen(aula_n, componente) {
    var p = getPrazo(aula_n, componente);
    if (!p) return false;
    var now = Date.now();
    return now >= p.abre && now < p.fecha;
  }

  function isClosed(aula_n, componente) {
    var p = getPrazo(aula_n, componente);
    if (!p) return false;
    return Date.now() >= p.fecha;
  }

  function isNotYetOpen(aula_n, componente) {
    var p = getPrazo(aula_n, componente);
    if (!p) return false;
    return Date.now() < p.abre;
  }

  function canShowGabarito(aula_n, componente) {
    var p = getPrazo(aula_n, componente);
    if (!p) return false;
    return Date.now() >= p.gabarito;
  }

  // Pre-monitorias: helpers analogos com regra de acesso livre
  function getPreMonitoriaPrazo(n) {
    if (n < 1 || n > PRE_MONITORIAS.length) return null;
    var pm = PRE_MONITORIAS[n - 1];
    return {
      abre: ACESSO_LIVRE_INICIO,
      fecha: ACESSO_LIVRE_FIM,
      monitoria: pm.monitoria
    };
  }

  function isPreMonitoriaOpen(n) {
    var p = getPreMonitoriaPrazo(n);
    if (!p) return false;
    var now = Date.now();
    return now >= p.abre && now < p.fecha;
  }

  function isPreMonitoriaClosed(n) {
    var p = getPreMonitoriaPrazo(n);
    if (!p) return false;
    return Date.now() >= p.fecha;
  }

  function isPreMonitoriaNotYetOpen(n) {
    var p = getPreMonitoriaPrazo(n);
    if (!p) return false;
    return Date.now() < p.abre;
  }

  // Formato display "dd/mm HH:MM" (local do navegador, assumido BRT)
  function fmt(ts) {
    if (!ts) return '';
    var d = new Date(ts);
    var dd = String(d.getDate()).padStart(2, '0');
    var mm = String(d.getMonth() + 1).padStart(2, '0');
    var HH = String(d.getHours()).padStart(2, '0');
    var MM = String(d.getMinutes()).padStart(2, '0');
    return dd + '/' + mm + ' ' + HH + ':' + MM;
  }

  function fmtData(ts) {
    if (!ts) return '';
    var d = new Date(ts);
    var dd = String(d.getDate()).padStart(2, '0');
    var mm = String(d.getMonth() + 1).padStart(2, '0');
    return dd + '/' + mm;
  }

  window.MPE_CALENDARIO = {
    AULAS_DATAS: AULAS_DATAS,
    MONITORIAS_DATAS: MONITORIAS_DATAS,
    PRE_MONITORIAS: PRE_MONITORIAS,
    AVALIACAO_FINAL: AVALIACAO_FINAL,
    EXCECAO_AULA1_AULA2: EXCECAO_AULA1_AULA2,
    ACESSO_LIVRE_INICIO: ACESSO_LIVRE_INICIO,
    ACESSO_LIVRE_FIM: ACESSO_LIVRE_FIM,
    GABARITO_LIBERADO: GABARITO_LIBERADO,
    getPrazo: getPrazo,
    getJanelaCanonica: getJanelaCanonica,
    isCanonicaFechada: isCanonicaFechada,
    parsePageId: parsePageId,
    estadoDaAula: estadoDaAula,
    isOpen: isOpen,
    isClosed: isClosed,
    isNotYetOpen: isNotYetOpen,
    canShowGabarito: canShowGabarito,
    getPreMonitoriaPrazo: getPreMonitoriaPrazo,
    isPreMonitoriaOpen: isPreMonitoriaOpen,
    isPreMonitoriaClosed: isPreMonitoriaClosed,
    isPreMonitoriaNotYetOpen: isPreMonitoriaNotYetOpen,
    fmt: fmt,
    fmtData: fmtData
  };
})();
