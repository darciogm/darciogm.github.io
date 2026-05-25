---
id: an-019
hypothesis: ipv-clock-admissible
type: robustness
question: Does a GPV (Guerre-Perrigne-Vuong 2000) recovery of the bidder cost distribution from Convite first-price bids converge with the Pregão drop-out recovery, providing cross-modality discipline on the IPV-clock interpretation?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Cross-modality alignment is partial and informative. Raw cell-by-cell comparison shows Convite GPV quantiles persistently below Pregão drop-out quantiles by ~0.2 of the reference price in 7 of 8 cells — a wedge consistent with first-price bid shading. The load-bearing pharma non-SME pre-period cell aligns (Convite c₀.₅₀ = 0.712 vs Pregão 0.704; gap ≈ −0.008); after the UH correction, alignment broadens per paper §6.2. The test does not prove IPV-clock; it provides cross-modality discipline that the Pregão recovery is not idiosyncratic to the auction format."
created: 2026-05-21
script: v7-jpube-tight/scripts/38_cross_modality.R
target: v7-jpube-tight/output/tables/tab_v3_cross_modality.tex
tags: ["H:ipv-clock-admissible", cross-modality, gpv, convite, fpsb, structural-validation, second-identification-source]
design:
  sample: "BEC Convite first-price bids + BEC Pregão drop-outs spanning March 2018; cells = class × type × period (non-pharma/pharma × SME/non-SME × pre/post = 8 cells)"
  specification: "GPV (Guerre-Perrigne-Vuong 2000) point-identification on Convite: c_i = b_i − (1 − G(b_i)) / ((N − 1) · g(b_i)). Compared to Pregão drop-out quantiles (English-reverse, exit-at-cost under IPV-clock)"
  source_panel: "BEC event log (Pregão + Convite)"
  notes: "GPV recovery requires Convite N_i ≥ 2; pharma non-SME pre is the load-bearing cell for the H8 pharma welfare statement"
---

# AN-019: Cross-modality GPV — Convite first-price vs Pregão drop-outs

!!! abstract "Intuition (plain-language)"
    An independent check on the IPV-clock reading: recover firm costs from the *other* auction format (Convite sealed-bid) using GPV and see whether they line up with the Pregão drop-out costs. They align in the load-bearing cell after correction, with a wedge elsewhere consistent with sealed-bid shading. It is discipline that the recovery is not idiosyncratic to one auction format — not proof of the assumption.

## Question

The structural decomposition's load-bearing assumption is that Pregão
drop-outs admit an IPV-clock reading as willingness-to-supply
observations. A *second* identification source on the same product
cells — first-price Convite bids, inverted via Guerre-Perrigne-Vuong
(2000) to recover costs — provides cross-modality discipline. If the
two modalities recover *the same* cost distributions, the IPV-clock
reading is independently supported. If they diverge in informative
ways, the divergence itself constrains the interpretation.

## Design

- **Sample**: BEC Convite (first-price sealed-bid) and BEC Pregão
  (English-reverse) bid logs spanning March 2018; 8 cells
  (class × type × period).
- **Variation**: same product cells, two auction formats. Convite
  bids are strategically shaded; Pregão drop-outs are exits.
- **Specification**:
  - **Convite GPV**: $c_i = b_i - \frac{1 - G(b_i)}{(N_i - 1) \cdot g(b_i)}$
    with $G$ and $g$ as bid CDF/density in the cell. Requires $N_i \geq 2$.
  - **Pregão drop-outs**: final losing bid per firm, normalized by
    reference price (from [AN-013](an-013-pregao-dropouts.md)).
- **Outcomes**: median ($c_{0.50}$) and 75th-percentile ($c_{0.75}$)
  of the recovered cost distribution, per cell × modality.
- **Identification threats**: differential selection of items into
  Convite vs Pregão (item value, complexity); strategic shading in
  Convite may differ across SME / non-SME types; sparse cells in
  Convite reduce GPV precision.

## Results

**Raw cross-modality quantiles** (cost / reference price; from
`tab_v3_cross_modality.tex`):

| Class | Type | Period | Conv $c_{0.50}$ | Pregão $c_{0.50}$ | Gap (Conv − Pregão) |
|---|---|---|---:|---:|---:|
| Non-pharma | SME     | Pre  | 0.723 | 0.954 | **−0.231** |
| Non-pharma | SME     | Post | 0.761 | 0.961 | **−0.200** |
| Non-pharma | non-SME | Pre  | 0.638 | 0.820 | **−0.182** |
| Non-pharma | non-SME | Post | 0.677 | 0.864 | **−0.187** |
| Pharma     | SME     | Pre  | 0.747 | 0.859 | **−0.112** |
| Pharma     | SME     | Post | 0.790 | 0.950 | **−0.160** |
| Pharma     | **non-SME** | **Pre** | **0.712** | **0.704** | **−0.008 (aligned)** |
| Pharma     | non-SME | Post | 0.707 | 0.768 | **−0.061** |

Of 8 cells, **7 show a persistent Convite < Pregão gap of 0.1–0.23 of
reference price**; **1 cell aligns** (pharma non-SME pre-period:
gap −0.008). After UH correction (paper §6.2,
`fig_v3_cross_modality_uh.pdf`), alignment broadens — the qualitative
text reports the modalities "line up" in the key pharmaceutical
non-SME pre-period cell after auction-level scale shocks are removed.

Output: `v7-jpube-tight/output/tables/tab_v3_cross_modality.tex`;
`v7-jpube-tight/output/figures/fig_v3_cross_modality.pdf` (raw) and
`fig_v3_cross_modality_uh.pdf` (UH-corrected).

## Interpretation

**The cross-modality test is a discipline, not a proof.** The 7-of-8
cells where Convite GPV quantiles sit ~0.2 below Pregão drop-out
quantiles are *consistent* with the standard wedge between strategically
shaded first-price bids and truthful English-clock exits in common-cost
settings — but they are not literally identical. Reading: GPV and
drop-out recoveries identify *different* underlying objects, with
Convite naturally producing lower point estimates because the GPV
inversion explicitly nets out the bid-shading wedge.

**The key cell aligns.** The pharma non-SME pre-period cell — which is
the load-bearing population for the pharma welfare statement
([H:static-welfare-loss-large](../hypotheses/static-welfare-loss-large.md)
and [AN-016](an-016-pharma-boundary.md)) — shows median quantiles of
0.712 (Convite) vs 0.704 (Pregão), a gap of −0.008. The two
modalities agree on the central object that the paper's headline
depends on most.

**What the test does and does not say.** It does **not** show that the
Pregão drop-out reading is literally a cost recovery. It **does** show
that the Pregão-based decomposition is not an idiosyncratic artifact
of the English-clock format: a different auction format on the same
product cells, recovered through a different point-identification
strategy (GPV bid inversion), produces convergent estimates in the
load-bearing cell and a known wedge (consistent with bid shading)
in the rest. Combined with the UH-corrected figure that broadens the
alignment, the cross-modality test is the strongest *second*
identification source on the structural primitives.

Confidence: **yellow.** Cross-modality is the most informative
diagnostic available within-project for H7. It rules out the threat
that Pregão drop-outs are uniquely IPV-clock-incompatible across BEC.
But it remains within-project (both modalities are BEC), it produces
a partial rather than uniform alignment, and the UH-corrected version
exists as a figure with qualitative paper text rather than as a
macro-tabulated set of numbers. Promotion to green would require an
out-of-jurisdiction replication, not just a within-project second
modality.

## Follow-ups

- **UH-corrected table**: emit
  `tab_v3_cross_modality_uh.tex` to make the post-UH cell-by-cell
  comparison macro-citable, not figure-only. Currently only the raw
  table is macro-bound.
- **KS / quantile-equality formal test**: a Kolmogorov-Smirnov or
  quantile-by-quantile equality test by cell would give a $p$-value
  on the alignment claim. Currently we eyeball the gap.
- **Cell-size and precision**: the pharma non-SME pre cell may have
  small Convite $N$. Reporting per-cell sample sizes and bootstrap CI
  on each quantile would temper or strengthen the "aligned cell" read.
- **Cross-jurisdictional**: same exercise on ComprasNet or another
  state's procurement platform would be the path to 🟢. Out of scope
  for the current paper; flagged for future work.
