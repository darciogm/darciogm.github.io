---
paper: sme-public
id: an-013
hypothesis: ipv-clock-admissible
type: descriptive
question: How are losing-bidder drop-out prices extracted from BEC Pregão event-log data, and how robust are downstream simulations to the cost-distribution recovery regime?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Drop-out extraction from BEC event logs yields per-cell willingness-to-supply distributions for the BNE simulation. Robustness across three winner-censoring treatments (losers-only / all-bidders / Turnbull NPMLE) gives net $S_3-S_1$ in [0.246, 0.275] (non-pharma) and [0.308, 0.357] (pharma) — all positive, all economically large; deviations vs all-bidders baseline ≤6% (non-pharma) and ≤16% (pharma)."
created: 2026-05-21
script: v7-jpube-tight/scripts/35_pregao_dropouts.R
target: v7-jpube-tight/output/dropouts/dropouts_panel.parquet
tags: ["H:ipv-clock-admissible", structural-extraction, pregao-event-log, drop-outs, sample-construction, censoring-robust]
design:
  sample: "BEC Pregão event log spanning the March 2018 cutoff; classes = non-pharma standardized, pharma; types = SME, non-SME; pre/post split"
  specification: "Extract losing bidder exit prices and final-state bids from event log; normalize by buyer reference price; build per-cell empirical distributions; downstream BNE simulation tested under three winner-censoring regimes"
  source_panel: "BEC event log"
  notes: "Foundation for the entire structural pipeline (AN-014 UH-correction, AN-015 screens, AN-017 strict invariance)"
---

# AN-013: Pregão drop-out extraction

!!! abstract "Intuition (plain-language)"
    The structural primitives come from BEC's auction event logs: each losing firm's drop-out price is read as its willingness to supply. This page extracts those drop-outs and checks the simulation is not sensitive to how the unobserved winner's cost is treated — across three censoring methods the net effect stays positive and economically large.

## Question

The structural sample is built from BEC Pregão event-log data —
losing-bidder exit prices and final-state bids per item. How is the
extraction implemented, and how sensitive are downstream simulations to
the choice of how to treat the *winner* (who does not drop out, so the
final bid is a one-sided observation)?

## Design

- **Sample**: BEC Pregão event log spanning March 2018; cells by class
  (non-pharma standardized; pharma) × period (pre/post) × bidder type
  (SME / non-SME).
- **Variation**: identification of *which* bid in the event log
  represents a *losing-bidder exit price* — the bid after which that
  firm submits no further bids and another firm wins.
- **Specification**: parse the event log per item; for each firm, take
  the *final* observed bid as the willingness-to-supply observation;
  normalize by the buyer reference price.
- **Winner-censoring regimes tested downstream**:
  1. **Losers-only**: discard the winner's final bid entirely.
  2. **All-bidders (baseline)**: treat the winner's final bid as a
     tight upper-bound observation on the winner's cost.
  3. **Turnbull NPMLE**
     (`v7-jpube-tight/scripts/48_turnbull_fc.R`): treat the winner's
     final price as left-censored at that bound; non-parametric
     maximum likelihood estimation of the resulting censored
     distribution.

## Results

**Per-cell drop-out coverage**: documented in the extraction parquet
(`v7-jpube-tight/output/dropouts/dropouts_panel.parquet`). The
structural sample covers thousands of pregão auctions per cell across
the four cells (NP/PH × pre/post) and two types (SME / non-SME); cell
sizes are reported in `paper_v8.tex` §3.

**Robustness of net $S_3 - S_1$ to winner-censoring regime** (paper §6.2):

| Regime | NP net $S_3-S_1$ | PH net $S_3-S_1$ | NP dev. | PH dev. |
|---|---:|---:|---:|---:|
| Losers-only       | 0.275 | 0.347 | +6% | +13% |
| All-bidders (base)| 0.259 | 0.308 | —    | —    |
| Turnbull NPMLE    | 0.246 | 0.357 | +5% | +16% |

The Turnbull within-auction (exclusion) share remains large:
**74.0% in non-pharma** and **82.0% in pharma** — close to or above
the baseline 72.0% / 68.8%. The result is therefore not driven by
treating the winner's final bid as an exact cost observation.

**Exit-at-cost departure bound** (paper §6.2, Online Appendix OA-C).
The sibling threat to winner censoring is whether a *losing* firm's
drop-out itself equals its cost: firms may quit the clock while still
profitable, so the exit sits above cost. Following Haile–Tamer (2003),
exits are treated as **bounds** on cost, not costs. Because the
decomposition compares order statistics across pools, a markup *common*
to all bidders cancels in the differences; only a **type-differential**
markup $c = \text{exit}\times(1-m_k)$ can bind. In the worst case (SME
costs pushed below their exits, non-SMEs at face value, entry held
fixed), the exclusion-dominant ordering survives a differential markup
up to **0.29** of the exit price in non-pharma and **across the entire
[0, 0.30] grid** in pharma. The full bound is on the
[IPV-clock hypothesis page](../hypotheses/ipv-clock-admissible.md).

## Interpretation

**The drop-out extraction is the foundation of the structural sample.**
It produces empirical per-cell distributions used by all downstream
AN pages (UH correction in [AN-014](an-014-uh-correction.md), BNE
decomposition in [AN-010](an-010-bne-decomposition.md), welfare
arithmetic in [AN-011](an-011-welfare-arithmetic.md), strict
invariance in [AN-017](an-017-strict-invariance.md)).

**Winner censoring is not the load-bearing assumption.** Three
treatments (losers-only, all-bidders upper bound, Turnbull NPMLE
left-censored) give net $S_3 - S_1$ in the range [0.246, 0.275] for
non-pharma and [0.308, 0.357] for pharma. All three are positive and
economically large. The Turnbull NPMLE — which is the most agnostic
about the winner's true cost — gives a *larger* pharma exclusion share
(82.0% vs 68.8% baseline), strengthening rather than weakening the
qualitative result.

Confidence: **yellow.** The extraction is mechanical (it parses event
logs); the downstream sensitivity to winner-censing regime is well-bounded;
but the interpretation of drop-outs as cost observations is the
maintained IPV-clock restriction
([H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)).
That restriction is disciplined by the UH correction
([AN-014](an-014-uh-correction.md)), the cross-modality check (§6.2),
the Gaussian-copula relaxation (§6.2), the collusion screens
([AN-015](an-015-collusion-screens.md)), and a direct exit-at-cost
departure bound (§6.2, above) — collectively yellow rather than green
because none of these *prove* IPV; they show the conclusion survives
bounded departures and is not mechanically produced by the most obvious
deviations from IPV.

## Follow-ups

- Per-firm filter sensitivity: minimum drop-out count per firm,
  minimum auction size, etc.
  (`v7-jpube-tight/scripts/52_filter_sensitivity.R`). Currently
  bundled in §6.2.
- Cross-modality contrast: the same conceptual recovery on Convite
  first-price bids (GPV inversion) produces a structurally different
  object — a strategic bid rather than a willingness-to-supply exit.
  `v7-jpube-tight/scripts/38_cross_modality.R` shows convergence in
  the key pharma non-SME pre-period cell after UH correction.
