/**
 * Gráficos Interativos — Capítulo 11
 * Microeconomia: Do Zero ao Equilíbrio (e Além)
 *
 * Biblioteca: D3.js v7
 * Padrão visual: insper-theme.css
 */

// Cores do tema Insper
var COLORS = {
  red:       '#E50505',
  darkRed:   '#C00000',
  blue:      '#1565c0',
  teal:      '#00897b',
  orange:    '#e65100',
  dark:      '#2C3E50',
  gray:      '#7F8C8D',
  areaRed:   'rgba(229, 5, 5, 0.12)',
  areaTeal:  'rgba(0, 137, 123, 0.15)',
  areaLoss:  'rgba(229, 5, 5, 0.15)',
  grid:      '#E8E8E8',
  bg:        '#FAFAFA',
  axis:      '#2C3E50'
};

var FONT = "'CMU Serif', 'Computer Modern Serif', Georgia, serif";

window.Graficos = window.Graficos || {};

// ─────────────────────────────────────────
// GRÁFICO 1 — Receita Marginal e Elasticidade (Figura 11.2)
// Interatividade: slider de parâmetros a, b e q
// ─────────────────────────────────────────
(function() {
  var CONFIG = {
    width:  700,
    height: 420,
    margin: { top: 25, right: 30, bottom: 55, left: 60 }
  };

  var svg, xScale, yScale, plotW, plotH, g;
  var initialized = false;

  function init(containerId) {
    var container = document.getElementById(containerId);
    if (!container) return;
    container.innerHTML = '';

    plotW = CONFIG.width - CONFIG.margin.left - CONFIG.margin.right;
    plotH = CONFIG.height - CONFIG.margin.top - CONFIG.margin.bottom;

    svg = d3.select('#' + containerId)
      .append('svg')
      .attr('width', CONFIG.width)
      .attr('height', CONFIG.height)
      .style('font-family', FONT);

    g = svg.append('g')
      .attr('transform', 'translate(' + CONFIG.margin.left + ',' + CONFIG.margin.top + ')');

    xScale = d3.scaleLinear().range([0, plotW]);
    yScale = d3.scaleLinear().range([plotH, 0]);

    // Grid
    g.append('g').attr('class', 'grid-x');
    g.append('g').attr('class', 'grid-y');

    // Axes
    g.append('g').attr('class', 'x-axis').attr('transform', 'translate(0,' + plotH + ')');
    g.append('g').attr('class', 'y-axis');

    // Axis labels
    g.append('text').attr('class', 'x-label')
      .attr('x', plotW / 2).attr('y', plotH + 45)
      .attr('text-anchor', 'middle')
      .style('font-size', '13px').style('font-style', 'italic').style('fill', COLORS.dark)
      .text('q');

    g.append('text').attr('class', 'y-label')
      .attr('transform', 'rotate(-90)')
      .attr('x', -plotH / 2).attr('y', -45)
      .attr('text-anchor', 'middle')
      .style('font-size', '13px').style('font-style', 'italic').style('fill', COLORS.dark)
      .text('p, RMg');

    // Paths
    g.append('path').attr('class', 'demand-line').attr('fill', 'none')
      .attr('stroke', COLORS.blue).attr('stroke-width', 2.5);
    g.append('path').attr('class', 'mr-line').attr('fill', 'none')
      .attr('stroke', COLORS.red).attr('stroke-width', 2.5);

    // Region shading
    g.append('rect').attr('class', 'elastic-region');
    g.append('rect').attr('class', 'inelastic-region');

    // Unit elastic point
    g.append('circle').attr('class', 'unit-elastic-pt')
      .attr('r', 5).attr('fill', COLORS.teal);

    // Selected point markers
    g.append('circle').attr('class', 'sel-demand-pt')
      .attr('r', 4).attr('fill', COLORS.blue);
    g.append('circle').attr('class', 'sel-mr-pt')
      .attr('r', 4).attr('fill', COLORS.red);

    // Dashed lines for selected point
    g.append('line').attr('class', 'sel-vline')
      .attr('stroke', '#999').attr('stroke-dasharray', '4,3').attr('stroke-width', 1);
    g.append('line').attr('class', 'sel-hline')
      .attr('stroke', '#999').attr('stroke-dasharray', '4,3').attr('stroke-width', 1);

    // Unit elastic vertical dashed line
    g.append('line').attr('class', 'unit-vline')
      .attr('stroke', COLORS.teal).attr('stroke-dasharray', '4,3').attr('stroke-width', 1);

    // Labels
    g.append('text').attr('class', 'label-d')
      .style('font-size', '12px').style('fill', COLORS.blue).style('font-weight', '700');
    g.append('text').attr('class', 'label-mr')
      .style('font-size', '12px').style('fill', COLORS.red).style('font-weight', '700');
    g.append('text').attr('class', 'label-unit')
      .style('font-size', '10px').style('fill', COLORS.teal);
    g.append('text').attr('class', 'label-elastic')
      .style('font-size', '10px').style('fill', COLORS.blue).attr('text-anchor', 'middle');
    g.append('text').attr('class', 'label-inelastic')
      .style('font-size', '10px').style('fill', COLORS.gray).attr('text-anchor', 'middle');

    // Info tooltip
    g.append('text').attr('class', 'info-text')
      .style('font-size', '11px').style('fill', COLORS.dark);

    initialized = true;
    setupControls();
    update();
  }

  function getParams() {
    var aEl = document.getElementById('rm-sl-a');
    var bEl = document.getElementById('rm-sl-b');
    var qEl = document.getElementById('rm-sl-q');
    if (!aEl) return null;
    return {
      a: parseFloat(aEl.value),
      b: parseFloat(bEl.value),
      q: parseFloat(qEl.value)
    };
  }

  function update() {
    if (!initialized || !g) return;
    var p = getParams();
    if (!p) return;

    var a = p.a, b = p.b, qSel = p.q;
    var qMax = a / b;
    var qMR0 = a / (2 * b);

    // Update value displays
    var valA = document.getElementById('rm-val-a');
    var valB = document.getElementById('rm-val-b');
    var valQ = document.getElementById('rm-val-q');
    if (valA) valA.textContent = a.toFixed(0);
    if (valB) valB.textContent = b.toFixed(1);
    if (valQ) valQ.textContent = qSel.toFixed(1);

    xScale.domain([0, qMax * 1.1]);
    yScale.domain([-a * 0.3, a * 1.1]);

    // Axes
    var t = d3.transition().duration(400).ease(d3.easeCubicInOut);

    g.select('.x-axis').transition(t).call(
      d3.axisBottom(xScale).ticks(8).tickSize(4)
    ).selectAll('text').style('font-size', '11px').style('font-family', FONT);

    g.select('.y-axis').transition(t).call(
      d3.axisLeft(yScale).ticks(8).tickSize(4)
    ).selectAll('text').style('font-size', '11px').style('font-family', FONT);

    // Style axis lines
    g.selectAll('.x-axis path, .y-axis path')
      .attr('stroke', COLORS.axis).attr('stroke-width', 1.5);
    g.selectAll('.x-axis line, .y-axis line')
      .attr('stroke', COLORS.axis);

    // Grid
    g.select('.grid-x').transition(t).call(
      d3.axisBottom(xScale).ticks(8).tickSize(plotH).tickFormat('')
    ).attr('stroke', COLORS.grid).attr('stroke-dasharray', '3,3')
     .selectAll('line').attr('stroke', COLORS.grid).attr('stroke-dasharray', '3,3');
    g.select('.grid-x').select('.domain').remove();

    g.select('.grid-y').transition(t).call(
      d3.axisLeft(yScale).ticks(8).tickSize(-plotW).tickFormat('')
    ).selectAll('line').attr('stroke', COLORS.grid).attr('stroke-dasharray', '3,3');
    g.select('.grid-y').select('.domain').remove();

    // Demand curve data
    var demandData = [];
    for (var q = 0; q <= qMax; q += qMax / 200) {
      demandData.push({ x: q, y: a - b * q });
    }

    // MR curve data
    var mrData = [];
    var mrEnd = qMax;
    for (var q = 0; q <= mrEnd; q += mrEnd / 200) {
      var mr = a - 2 * b * q;
      if (mr >= -a * 0.25) mrData.push({ x: q, y: mr });
    }

    var line = d3.line().x(function(d) { return xScale(d.x); }).y(function(d) { return yScale(d.y); });

    g.select('.demand-line').transition(t).attr('d', line(demandData));
    g.select('.mr-line').transition(t).attr('d', line(mrData));

    // Unit elastic point
    g.select('.unit-elastic-pt').transition(t)
      .attr('cx', xScale(qMR0)).attr('cy', yScale(0));

    g.select('.unit-vline').transition(t)
      .attr('x1', xScale(qMR0)).attr('x2', xScale(qMR0))
      .attr('y1', yScale(-a * 0.25)).attr('y2', yScale(a / 2 + 1));

    // Selected point
    var pSel = a - b * qSel;
    var mrSel = a - 2 * b * qSel;

    if (qSel > 0 && qSel <= qMax && pSel >= 0) {
      g.select('.sel-demand-pt').transition(t)
        .attr('cx', xScale(qSel)).attr('cy', yScale(pSel)).attr('opacity', 1);
      g.select('.sel-mr-pt').transition(t)
        .attr('cx', xScale(qSel)).attr('cy', yScale(mrSel)).attr('opacity', 1);
      g.select('.sel-vline').transition(t)
        .attr('x1', xScale(qSel)).attr('x2', xScale(qSel))
        .attr('y1', yScale(0)).attr('y2', yScale(pSel)).attr('opacity', 1);
      g.select('.sel-hline').transition(t)
        .attr('x1', xScale(0)).attr('x2', xScale(qSel))
        .attr('y1', yScale(pSel)).attr('y2', yScale(pSel)).attr('opacity', 1);
    } else {
      g.select('.sel-demand-pt').attr('opacity', 0);
      g.select('.sel-mr-pt').attr('opacity', 0);
      g.select('.sel-vline').attr('opacity', 0);
      g.select('.sel-hline').attr('opacity', 0);
    }

    // Curve labels
    g.select('.label-d')
      .attr('x', xScale(qMax * 0.75)).attr('y', yScale(a - b * qMax * 0.75) - 8)
      .text('D');
    g.select('.label-mr')
      .attr('x', xScale(qMax * 0.4)).attr('y', yScale(a - 2 * b * qMax * 0.4) - 8)
      .text('RMg');
    g.select('.label-unit')
      .attr('x', xScale(qMR0) + 8).attr('y', yScale(0) - 8)
      .text('RMg=0 (|ε|=1)');

    // Region labels
    g.select('.label-elastic')
      .attr('x', xScale(qMR0 / 2)).attr('y', yScale(-a * 0.15))
      .text('Elástica (|ε|>1)');
    g.select('.label-inelastic')
      .attr('x', xScale((qMR0 + qMax) / 2)).attr('y', yScale(-a * 0.15))
      .text('Inelástica (|ε|<1)');

    // Info text
    if (qSel > 0 && pSel > 0) {
      var eps = -(1 / b) * (pSel / qSel);
      var rt = pSel * qSel;
      g.select('.info-text')
        .attr('x', plotW - 10).attr('y', 15).attr('text-anchor', 'end')
        .text('q=' + qSel.toFixed(1) + '  p=' + pSel.toFixed(1) +
              '  RMg=' + mrSel.toFixed(1) + '  ε=' + eps.toFixed(2) +
              '  RT=' + rt.toFixed(1));
    }
  }

  function setupControls() {
    ['rm-sl-a', 'rm-sl-b', 'rm-sl-q'].forEach(function(id) {
      var el = document.getElementById(id);
      if (el) el.addEventListener('input', update);
    });
  }

  function reset() {
    var aEl = document.getElementById('rm-sl-a');
    var bEl = document.getElementById('rm-sl-b');
    var qEl = document.getElementById('rm-sl-q');
    if (aEl) aEl.value = 20;
    if (bEl) bEl.value = 1;
    if (qEl) qEl.value = 5;
    update();
  }

  window.Graficos['receita-marginal'] = { init: init, update: update, reset: reset };
})();


// ─────────────────────────────────────────
// GRÁFICO 2 — Maximização de Lucro (Figura 11.1)
// Interatividade: slider de preço p e custo fixo CF
// CT(q) = CF + 20q - 3q² + 0.2q³
// ─────────────────────────────────────────
(function() {
  var CONFIG = {
    width:  700,
    height: 420,
    margin: { top: 25, right: 30, bottom: 55, left: 60 },
    // Cost function parameters: CT = a + bq - cq² + dq³
    b: 20, c: 3, d: 0.2
  };

  var svg, xScale, yScale, plotW, plotH, g;
  var initialized = false;

  function CT(q, cf) { return cf + CONFIG.b * q - CONFIG.c * q * q + CONFIG.d * q * q * q; }
  function CVfn(q) { return CONFIG.b * q - CONFIG.c * q * q + CONFIG.d * q * q * q; }
  function CMgfn(q) { return CONFIG.b - 2 * CONFIG.c * q + 3 * CONFIG.d * q * q; }
  function CMefn(q, cf) { return q > 0.2 ? CT(q, cf) / q : NaN; }
  function CVMefn(q) { return q > 0.2 ? CVfn(q) / q : NaN; }

  function init(containerId) {
    var container = document.getElementById(containerId);
    if (!container) return;
    container.innerHTML = '';

    plotW = CONFIG.width - CONFIG.margin.left - CONFIG.margin.right;
    plotH = CONFIG.height - CONFIG.margin.top - CONFIG.margin.bottom;

    svg = d3.select('#' + containerId)
      .append('svg')
      .attr('width', CONFIG.width)
      .attr('height', CONFIG.height)
      .style('font-family', FONT);

    g = svg.append('g')
      .attr('transform', 'translate(' + CONFIG.margin.left + ',' + CONFIG.margin.top + ')');

    xScale = d3.scaleLinear().domain([0, 22]).range([0, plotW]);
    yScale = d3.scaleLinear().domain([0, 48]).range([plotH, 0]);

    // Grid
    g.append('g').attr('class', 'grid-y').call(
      d3.axisLeft(yScale).ticks(8).tickSize(-plotW).tickFormat('')
    ).selectAll('line').attr('stroke', COLORS.grid).attr('stroke-dasharray', '3,3');
    g.select('.grid-y .domain').remove();

    // Axes
    g.append('g').attr('class', 'x-axis').attr('transform', 'translate(0,' + plotH + ')')
      .call(d3.axisBottom(xScale).ticks(10).tickSize(4))
      .selectAll('text').style('font-size', '11px').style('font-family', FONT);

    g.append('g').attr('class', 'y-axis')
      .call(d3.axisLeft(yScale).ticks(10).tickSize(4))
      .selectAll('text').style('font-size', '11px').style('font-family', FONT);

    g.selectAll('.x-axis path, .y-axis path')
      .attr('stroke', COLORS.axis).attr('stroke-width', 1.5);

    // Axis labels
    g.append('text')
      .attr('x', plotW / 2).attr('y', plotH + 45)
      .attr('text-anchor', 'middle')
      .style('font-size', '13px').style('font-style', 'italic').style('fill', COLORS.dark)
      .text('q');

    g.append('text')
      .attr('transform', 'rotate(-90)')
      .attr('x', -plotH / 2).attr('y', -45)
      .attr('text-anchor', 'middle')
      .style('font-size', '13px').style('font-style', 'italic').style('fill', COLORS.dark)
      .text('$');

    // Paths for curves
    g.append('path').attr('class', 'cmg-line').attr('fill', 'none')
      .attr('stroke', COLORS.red).attr('stroke-width', 2.5);
    g.append('path').attr('class', 'cme-line').attr('fill', 'none')
      .attr('stroke', COLORS.blue).attr('stroke-width', 2);
    g.append('path').attr('class', 'cvme-line').attr('fill', 'none')
      .attr('stroke', COLORS.teal).attr('stroke-width', 2);

    // Price line
    g.append('line').attr('class', 'price-line')
      .attr('stroke', COLORS.orange).attr('stroke-width', 2).attr('stroke-dasharray', '6,4');

    // Profit/loss rectangle
    g.append('rect').attr('class', 'profit-rect');

    // Optimal point
    g.append('circle').attr('class', 'opt-pt')
      .attr('r', 5).attr('fill', COLORS.red);

    // Shutdown point
    g.append('circle').attr('class', 'shutdown-pt')
      .attr('r', 3).attr('fill', COLORS.teal);

    // Dashed lines
    g.append('line').attr('class', 'opt-vline')
      .attr('stroke', '#999').attr('stroke-dasharray', '4,3').attr('stroke-width', 1);
    g.append('line').attr('class', 'cme-hline')
      .attr('stroke', COLORS.blue).attr('stroke-dasharray', '4,3').attr('stroke-width', 1);

    // Labels
    g.append('text').attr('class', 'label-cmg')
      .style('font-size', '11px').style('fill', COLORS.red).style('font-weight', '700');
    g.append('text').attr('class', 'label-cme')
      .style('font-size', '11px').style('fill', COLORS.blue).style('font-weight', '700');
    g.append('text').attr('class', 'label-cvme')
      .style('font-size', '11px').style('fill', COLORS.teal).style('font-weight', '700');
    g.append('text').attr('class', 'label-price')
      .style('font-size', '11px').style('fill', COLORS.orange).style('font-weight', '700');
    g.append('text').attr('class', 'label-qstar')
      .style('font-size', '11px').style('fill', COLORS.red).attr('text-anchor', 'middle');
    g.append('text').attr('class', 'label-shutdown')
      .style('font-size', '9px').style('fill', COLORS.teal);

    // Status text
    g.append('text').attr('class', 'status-text')
      .style('font-size', '14px').style('font-weight', '700').attr('text-anchor', 'middle');

    // Info text
    g.append('text').attr('class', 'info-text')
      .style('font-size', '10px').style('fill', COLORS.dark).attr('text-anchor', 'end');

    initialized = true;
    setupControls();
    update();
  }

  function getParams() {
    var pEl = document.getElementById('ml-sl-p');
    var cfEl = document.getElementById('ml-sl-cf');
    if (!pEl) return null;
    return {
      price: parseFloat(pEl.value),
      cf: parseFloat(cfEl.value)
    };
  }

  function update() {
    if (!initialized || !g) return;
    var params = getParams();
    if (!params) return;

    var pr = params.price;
    var cf = params.cf;

    // Update displays
    var valP = document.getElementById('ml-val-p');
    var valCF = document.getElementById('ml-val-cf');
    if (valP) valP.textContent = pr.toFixed(1);
    if (valCF) valCF.textContent = cf.toFixed(0);

    var t = d3.transition().duration(400).ease(d3.easeCubicInOut);
    var qmax = 20, ymax = 46;

    var line = d3.line().defined(function(d) { return !isNaN(d.y) && d.y >= 0 && d.y <= ymax; })
      .x(function(d) { return xScale(d.x); }).y(function(d) { return yScale(d.y); });

    // CMg curve data
    var cmgData = [];
    for (var q = 0.1; q <= qmax; q += 0.1) {
      cmgData.push({ x: q, y: CMgfn(q) });
    }

    // CMe curve data
    var cmeData = [];
    for (var q = 0.5; q <= qmax; q += 0.1) {
      var v = CMefn(q, cf);
      if (!isNaN(v)) cmeData.push({ x: q, y: v });
    }

    // CVMe curve data
    var cvmeData = [];
    for (var q = 0.5; q <= qmax; q += 0.1) {
      var v = CVMefn(q);
      if (!isNaN(v)) cvmeData.push({ x: q, y: v });
    }

    g.select('.cmg-line').transition(t).attr('d', line(cmgData));
    g.select('.cme-line').transition(t).attr('d', line(cmeData));
    g.select('.cvme-line').transition(t).attr('d', line(cvmeData));

    // Price line
    g.select('.price-line').transition(t)
      .attr('x1', xScale(0)).attr('x2', xScale(qmax))
      .attr('y1', yScale(pr)).attr('y2', yScale(pr));

    // Shutdown point: min CVMe at q = c/(2d)
    var qSD = CONFIG.c / (2 * CONFIG.d);
    var cvmeMin = CVMefn(qSD);

    // Break-even: min CMe (Newton's method for dCMe/dq = 0)
    var qBE = qSD + 2;
    for (var iter = 0; iter < 50; iter++) {
      var fv = 2 * CONFIG.d * qBE * qBE * qBE - CONFIG.c * qBE * qBE - cf;
      var fp = 6 * CONFIG.d * qBE * qBE - 2 * CONFIG.c * qBE;
      if (Math.abs(fp) < 1e-10) break;
      qBE = qBE - fv / fp;
      if (qBE < 0.5) qBE = 0.5;
    }

    // Find q* where p = CMg (rising part)
    var A3 = 3 * CONFIG.d, B3 = -2 * CONFIG.c, C3 = CONFIG.b - pr;
    var disc = B3 * B3 - 4 * A3 * C3;
    var qStar = NaN;
    if (disc >= 0) {
      var q1 = (-B3 + Math.sqrt(disc)) / (2 * A3);
      var q2 = (-B3 - Math.sqrt(disc)) / (2 * A3);
      var qInflect = CONFIG.c / (3 * CONFIG.d);
      if (q1 >= qInflect && q1 > 0) qStar = q1;
      else if (q2 >= qInflect && q2 > 0) qStar = q2;
      else if (q1 > 0) qStar = q1;
    }

    var shutdown = (pr < cvmeMin);
    var profit = 0;
    var status = '';
    var statusColor = COLORS.dark;

    if (shutdown) {
      status = 'FIRMA FECHA: p < CVMe mín';
      statusColor = COLORS.red;
      profit = -cf;

      // Hide optimal point elements
      g.select('.opt-pt').attr('opacity', 0);
      g.select('.opt-vline').attr('opacity', 0);
      g.select('.cme-hline').attr('opacity', 0);
      g.select('.profit-rect').attr('opacity', 0);
      g.select('.label-qstar').attr('opacity', 0);
    } else if (!isNaN(qStar) && qStar > 0 && qStar < qmax) {
      var cmeAt = CMefn(qStar, cf);
      profit = (pr - cmeAt) * qStar;

      if (profit >= 0) {
        status = 'LUCRO: π = ' + profit.toFixed(1);
        statusColor = COLORS.teal;
      } else {
        status = 'PREJUÍZO (opera): π = ' + profit.toFixed(1);
        statusColor = COLORS.red;
      }

      // Optimal point
      g.select('.opt-pt').transition(t)
        .attr('cx', xScale(qStar)).attr('cy', yScale(pr)).attr('opacity', 1);

      // Vertical dashed at q*
      g.select('.opt-vline').transition(t)
        .attr('x1', xScale(qStar)).attr('x2', xScale(qStar))
        .attr('y1', yScale(0)).attr('y2', yScale(pr)).attr('opacity', 1);

      // Horizontal dashed at CMe(q*)
      g.select('.cme-hline').transition(t)
        .attr('x1', xScale(0)).attr('x2', xScale(qStar))
        .attr('y1', yScale(cmeAt)).attr('y2', yScale(cmeAt)).attr('opacity', 1);

      // Profit/loss rectangle
      var yTop = Math.max(pr, cmeAt);
      var yBot = Math.min(pr, cmeAt);
      var rectColor = profit >= 0 ? COLORS.areaTeal : COLORS.areaLoss;
      var rectStroke = profit >= 0 ? COLORS.teal : COLORS.red;

      g.select('.profit-rect').transition(t)
        .attr('x', xScale(0)).attr('y', yScale(yTop))
        .attr('width', xScale(qStar) - xScale(0))
        .attr('height', yScale(yBot) - yScale(yTop))
        .attr('fill', rectColor).attr('stroke', rectStroke).attr('stroke-width', 1)
        .attr('opacity', 1);

      // q* label
      g.select('.label-qstar').transition(t)
        .attr('x', xScale(qStar)).attr('y', yScale(0) + 15)
        .text('q*=' + qStar.toFixed(1)).attr('opacity', 1);
    }

    // Shutdown point marker
    if (qSD > 0 && qSD < qmax && cvmeMin > 0 && cvmeMin < ymax) {
      g.select('.shutdown-pt').transition(t)
        .attr('cx', xScale(qSD)).attr('cy', yScale(cvmeMin)).attr('opacity', 1);
      g.select('.label-shutdown').transition(t)
        .attr('x', xScale(qSD) + 5).attr('y', yScale(cvmeMin) - 8)
        .text('Fecham. (p=' + cvmeMin.toFixed(1) + ')').attr('opacity', 1);
    }

    // Curve labels
    g.select('.label-cmg').attr('x', xScale(17)).attr('y', yScale(CMgfn(17)) - 8).text('CMg');
    g.select('.label-cme').attr('x', xScale(17)).attr('y', yScale(CMefn(17, cf)) - 8).text('CMe');
    g.select('.label-cvme').attr('x', xScale(17)).attr('y', yScale(CVMefn(17)) + 15).text('CVMe');

    // Price label
    g.select('.label-price')
      .attr('x', xScale(qmax - 2)).attr('y', yScale(pr) - 8)
      .text('p=' + pr.toFixed(1));

    // Status
    g.select('.status-text')
      .attr('x', plotW / 2).attr('y', 20)
      .text(status).style('fill', statusColor);

    // Info
    g.select('.info-text')
      .attr('x', plotW - 5).attr('y', plotH - 5)
      .text('BE: p=' + CMefn(qBE, cf).toFixed(1) + '  Fecham: p=' + cvmeMin.toFixed(1));
  }

  function setupControls() {
    ['ml-sl-p', 'ml-sl-cf'].forEach(function(id) {
      var el = document.getElementById(id);
      if (el) el.addEventListener('input', update);
    });
  }

  function reset() {
    var pEl = document.getElementById('ml-sl-p');
    var cfEl = document.getElementById('ml-sl-cf');
    if (pEl) pEl.value = 18;
    if (cfEl) cfEl.value = 50;
    update();
  }

  window.Graficos['maximizacao-lucro'] = { init: init, update: update, reset: reset };
})();


// ─────────────────────────────────────────
// INICIALIZAÇÃO GLOBAL
// ─────────────────────────────────────────
(function() {
  function initGraph(slide) {
    var id = slide.dataset.graph;
    if (id && window.Graficos[id]) {
      var container = slide.querySelector('.graph-container');
      if (container) {
        window.Graficos[id].init(container.id);
      }
    }
  }

  if (typeof Reveal !== 'undefined') {
    Reveal.on('ready', function() {
      document.querySelectorAll('[data-graph]').forEach(initGraph);
    });

    Reveal.on('slidechanged', function(event) {
      initGraph(event.currentSlide);
    });
  } else {
    // Fallback: wait for Reveal
    document.addEventListener('DOMContentLoaded', function() {
      var check = setInterval(function() {
        if (typeof Reveal !== 'undefined' && Reveal.isReady && Reveal.isReady()) {
          clearInterval(check);
          document.querySelectorAll('[data-graph]').forEach(initGraph);
          Reveal.on('slidechanged', function(event) { initGraph(event.currentSlide); });
        }
      }, 200);
    });
  }
})();
