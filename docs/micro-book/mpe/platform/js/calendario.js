/**
 * MPE_CALENDARIO — fonte unica de verdade do calendario do curso.
 *
 * Calendario MPE Micro I 2026/32:
 * - 9 aulas de conteudo (quartas 19:30-22:30)
 * - 5 monitorias (sabados) com Alberto
 * - 1 avaliacao final (24/06)
 *
 * Regra canonica: cada aula X tem seu ciclo (pre, material, pos, exerc)
 * abrindo apos a aula anterior e fechando quarta 18h da aula X+1
 * (1h30 antes da proxima). Gabarito dos avaliativos libera dia seguinte
 * ao fechamento (quinta 00:00 BRT).
 *
 * EXCECAO PONTUAL 2026/32: Aula 1 ∪ Aula 2 = calendario unificado,
 * tudo da Aula 1 fecha junto com Aula 2 em 06/05 18h. Da Aula 3 em
 * diante, ciclo volta ao normal.
 */
(function() {
  'use strict';

  var BRT = '-03:00';

  function dt(iso) { return new Date(iso + BRT).getTime(); }

  var UMA_HORA = 3600 * 1000;
  var UM_DIA = 24 * UMA_HORA;

  // Data das 9 aulas + avaliacao final. Quartas 19:30.
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

  var AVALIACAO_FINAL = dt('2026-06-24T19:00:00');

  var MONITORIAS_DATAS = [
    dt('2026-05-16T10:00:00'), // M1
    dt('2026-05-23T10:00:00'), // M2
    dt('2026-05-30T10:00:00'), // M3
    dt('2026-06-13T10:00:00'), // M4
    dt('2026-06-20T10:00:00')  // M5
  ];

  // Pre-monitorias: abrem logo apos a monitoria anterior (ou sabado antes da M1)
  // e fecham sexta 22:00 da semana da monitoria — dando ao Alberto janela
  // para revisar respostas antes da monitoria sabatina.
  // Conteudo formativo (nao conta nota), analogo a pre-aula.
  var PRE_MONITORIAS = [
    // Pre-M1 cobre aulas 1-3
    { n: 1, abre: dt('2026-05-09T00:00:00'), fecha: dt('2026-05-15T22:00:00'), monitoria: dt('2026-05-16T10:00:00') },
    // Pre-M2 cobre aula 4 (EG trocas)
    { n: 2, abre: dt('2026-05-16T12:00:00'), fecha: dt('2026-05-22T22:00:00'), monitoria: dt('2026-05-23T10:00:00') },
    // Pre-M3 cobre aula 5 (EG producao)
    { n: 3, abre: dt('2026-05-23T12:00:00'), fecha: dt('2026-05-29T22:00:00'), monitoria: dt('2026-05-30T10:00:00') },
    // Pre-M4 cobre aulas 6-7 (Arrow-Debreu) — janela de ~2 semanas
    { n: 4, abre: dt('2026-05-30T12:00:00'), fecha: dt('2026-06-12T22:00:00'), monitoria: dt('2026-06-13T10:00:00') },
    // Pre-M5 cobre aulas 8-9 + revisao AF
    { n: 5, abre: dt('2026-06-13T12:00:00'), fecha: dt('2026-06-19T22:00:00'), monitoria: dt('2026-06-20T10:00:00') }
  ];

  // Excecao: Aula 1 ∪ Aula 2 => tudo da aula 1 fecha junto com aula 2.
  var EXCECAO_AULA1_AULA2 = true;

  // Para cada aula N (1..9) e cada componente, retorna {abre, fecha, gabarito} em ms.
  // Componentes:
  //   'pre'      = quiz de revisao (10 🟡) — aula-0N-pre.html
  //   'material' = pre-aula material (9 secoes) — aula-0N.html
  //   'pos'      = quiz pos-aula (5🟡+5🔴) — aula-0N-pos.html
  //   'exerc'    = exercicios avaliativos — aula-0N-exerc.html
  function getPrazo(aula_n, componente) {
    if (aula_n < 1 || aula_n > AULAS_DATAS.length) return null;

    var aula = AULAS_DATAS[aula_n - 1];
    var prox = AULAS_DATAS[aula_n] || null; // undefined se ultima

    // === Abertura ===
    var abre;
    if (componente === 'pre' || componente === 'material') {
      // Pre-aula da aula N abre ~quinta apos aula N-1 (ou, para aula 1,
      // ja estava liberada antes do inicio do curso).
      if (aula_n === 1) {
        abre = dt('2026-04-15T00:00:00'); // pre-aula 1 liberada com antecedencia
      } else {
        // 3h apos fim da aula N-1 (aula anterior termina 22:30)
        abre = AULAS_DATAS[aula_n - 2] + 6 * UMA_HORA; // ~01:30 da quinta
      }
    } else {
      // pos-aula e exerc abrem apos a propria aula N
      abre = aula + 6 * UMA_HORA; // ~01:30 da quinta apos a aula
    }

    // === Fechamento ===
    var fecha;
    if (prox) {
      // Regra canonica: quarta 18h da aula N+1 (1h30 antes)
      fecha = prox - 1.5 * UMA_HORA;
    } else {
      // Ultima aula (N=9): fecha 1 semana depois, mesmo dia-hora
      fecha = aula + 7 * UM_DIA - 1.5 * UMA_HORA;
    }

    // Excecao Aula 1 ∪ Aula 2: tudo da aula 1 fecha junto com aula 2
    if (EXCECAO_AULA1_AULA2 && aula_n === 1) {
      var aula3 = AULAS_DATAS[2];
      fecha = aula3 - 1.5 * UMA_HORA; // quarta 06/05 18h
    }

    // === Gabarito (aplica-se a exerc avaliativos e pos-aula) ===
    // Abre dia seguinte ao fechamento, 00:00 BRT
    var fechaDate = new Date(fecha);
    var gabarito = new Date(
      fechaDate.getFullYear(),
      fechaDate.getMonth(),
      fechaDate.getDate() + 1,
      0, 0, 0, 0
    ).getTime();

    return { abre: abre, fecha: fecha, gabarito: gabarito };
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
    // Retorna 'locked' (aula ainda nao aconteceu + pre nao aberta),
    //         'active' (pre-aula ou algum componente disponivel),
    //         'done'   (tudo fechou)
    if (aula_n < 1 || aula_n > AULAS_DATAS.length) return 'locked';
    var now = Date.now();
    var aula = AULAS_DATAS[aula_n - 1];
    var matPrazo = getPrazo(aula_n, 'material');
    var posPrazo = getPrazo(aula_n, 'pos');
    var exercPrazo = getPrazo(aula_n, 'exerc');

    if (!matPrazo) return 'locked';

    // Se ainda nao abriu o material nem a pre-aula, a aula esta bloqueada
    if (now < matPrazo.abre) return 'locked';
    // Se tudo fechou (pos-aula e exerc)
    if (posPrazo && exercPrazo && now >= posPrazo.fecha && now >= exercPrazo.fecha) return 'done';
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

  // Pre-monitorias: helpers analogos
  function getPreMonitoriaPrazo(n) {
    if (n < 1 || n > PRE_MONITORIAS.length) return null;
    var pm = PRE_MONITORIAS[n - 1];
    return { abre: pm.abre, fecha: pm.fecha, monitoria: pm.monitoria };
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
    getPrazo: getPrazo,
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
