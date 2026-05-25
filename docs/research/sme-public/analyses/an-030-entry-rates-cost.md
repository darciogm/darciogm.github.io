---
id: an-030
hypothesis: protected-pool-responds
type: robustness
question: What is the Pre→Post entry-rate shift in each modality × class × type cell, what is the calibrated entry-cost asymmetry that explains why SMEs cannot fully replace non-SMEs, and does the dominance ordering survive across the 2×2 grid of UH-clean-vs-raw and endogenous-vs-fixed-pool methodological choices?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Pregão non-pharma SME entry rises +0.93 bidders/auction (0.94 → 1.87, +99%) while non-SME falls −1.18 (2.68 → 1.50, −44%). Net change in total bidders: −0.25 per auction. Calibrated entry cost is 4.7× higher for non-SMEs than SMEs (R$2.57 vs R$0.54 in non-pharma) — non-SMEs face higher entry costs but win 4-5× more often. The exclusion-dominant decomposition survives the 2×2 method grid: intensive share ∈ [67.9%, 99.7%] across 8 cells (4 NP + 4 PH), all above 50%."
created: 2026-05-21
script: v7-jpube-tight/scripts/44_entry_pool.R + 47_entry_cost.R + 45_bne_simulation.R variants
target: v7-jpube-tight/output/tables/tab_v3_entry_rates.tex + tab_v3_entry_cost.tex + tab_v3_decomp_grid.tex
tags: ["H:protected-pool-responds", "H:exclusion-dominates", entry-rates, entry-cost, decomposition-grid, asymmetric-entry, sme-vs-nonsme]
design:
  sample: "BEC Pregão + Convite bid logs spanning March 2018; class × type × period cells"
  specification: "(a) Per-cell average bidder count (SME and non-SME); Pre→Post Δ. (b) Entry-cost calibration via zero-profit condition κ^k = P(win|k) · π̄ | win. (c) BNE decomposition grid: {clean / raw UH} × {endogenous / fixed-pool entry}"
  source_panel: "BEC event log + ref-price keys"
---

# AN-030: Entry rates, entry costs, and decomposition robustness grid

!!! abstract "Intuition (plain-language)"
    Why can the protected SME pool not simply replace the excluded non-SMEs? Calibrate entry costs: SME entry nearly doubles while non-SME entry falls more, for a small net drop in bidders — and non-SMEs face about 4.7× higher entry costs yet win far more often. The exclusion-dominant decomposition holds across every method-choice combination tested.

## Question

The protected-pool offset $S_3 - S_2$ in
[AN-010](an-010-bne-decomposition.md) shows that SME participation
roughly doubles after the cutoff but does not fully replace non-SMEs.
Three structural questions:

1. **Entry-rate symmetry**: Does the SME entry response exactly
   replace the non-SME exit, or is there a net loss of bidders?
   Does the pattern differ across Pregão vs Convite modalities?
2. **Why doesn't the protected pool fully respond?** What is the
   calibrated entry cost for SMEs vs non-SMEs, and does the
   asymmetry explain the partial offset?
3. **Methodological robustness**: Does the exclusion-dominant
   decomposition survive across the 2×2 grid of UH-clean-vs-raw and
   endogenous-vs-fixed-pool entry choices?

## Design

- **(a) Entry rates**: per-cell average bidder count by class × type
  × period; Pre→Post Δ.
- **(b) Entry cost calibration**: zero-profit condition at the entry
  margin, $\kappa^k = P(\text{win} | k) \cdot \bar\pi^k \mid \text{win}$,
  estimated as the marginal mean profit per entry in 5,000 Monte
  Carlo auctions under the Pre-policy entry profile.
- **(c) Decomposition grid**: BNE simulation under 4 method × 2 class
  combinations:
  - Method 1: clean UH (Krasnokutskaya correction applied)
  - Method 2: raw (no UH correction)
  - Method 3: endogenous entry (observed Pre→Post pool change)
  - Method 4: fixed-pool entry (counterfactual no entry response)
  - Cross-product: 4 method combinations × 2 classes = 8 cells.

## Results

**(a) Pre/Post entry rates (avg bidders per auction)**
(`tab_v3_entry_rates.tex`):

| Modality | Class | SME Pre | non-SME Pre | SME Post | non-SME Post | Δ SME | Δ non-SME |
|---|---|---:|---:|---:|---:|---:|---:|
| Convite | NP | 1.13 | 1.72 | 1.60 | 1.24 | **+0.47** | **−0.48** |
| Convite | PH | 0.92 | 1.81 | 0.87 | 1.95 | −0.05 | +0.14 |
| **Pregão** | **NP** | **0.94** | **2.68** | **1.87** | **1.50** | **+0.93** | **−1.18** |
| **Pregão** | **PH** | **0.55** | **2.61** | **1.22** | **1.66** | **+0.67** | **−0.95** |

In Pregão non-pharma the SME pool nearly doubles (+99%) and non-SME
falls by 44%, with **net total bidders falling by 0.25 per auction**.
Pharma shows the same direction but smaller absolute SME gain.

**(b) Entry-cost calibration (Pre-policy)** (`tab_v3_entry_cost.tex`):

| Class | $\tilde p^{\mathrm{ref}}$ (R$) | $P(\mathrm{win} \mid \mathrm{SME})$ | $P(\mathrm{win} \mid \mathrm{non}\text{-}\mathrm{SME})$ | $\bar\pi \mid \mathrm{SME}$ | $\bar\pi \mid \mathrm{non}\text{-}\mathrm{SME}$ | $\kappa^{\mathrm{SME}}$ (R$) | $\kappa^{\mathrm{non}\text{-}\mathrm{SME}}$ (R$) |
|---|---:|---:|---:|---:|---:|---:|---:|
| Non-pharma | 13.98 | 0.176 | 0.824 | 0.222 | 0.223 | **0.54** | **2.57** |
| Pharma     | 2.96  | 0.160 | 0.840 | 0.267 | 0.196 | **0.13** | **0.49** |

The entry cost is **~4.7× higher for non-SMEs** than for SMEs in
non-pharma (and 3.8× in pharma). Non-SMEs face higher entry costs
but win 4–5× more often per attempt, with similar per-win profits in
non-pharma — they enter despite the cost because the win probability
is high enough.

**(c) Decomposition grid** (`tab_v3_decomp_grid.tex`):

| Class | Method | $S_1$ | $S_2$ | $S_3$ | Δ total | % intensive | % entry |
|---|---|---:|---:|---:|---:|---:|---:|
| NP | clean + endogenous (**canonical**) | 0.770 | 1.110 | 1.002 | **+0.233** | **75.9** | 24.1 |
| NP | clean + fixed-pool | 0.761 | 1.132 | 1.097 | +0.337 | 91.4 | 8.6 |
| NP | raw + endogenous | 0.806 | 1.230 | 1.064 | +0.259 | 71.9 | 28.1 |
| NP | raw + fixed-pool | 0.805 | 1.267 | 1.189 | +0.384 | 85.5 | 14.4 |
| PH | clean + endogenous (**canonical**) | 0.645 | 1.161 | 0.964 | **+0.318** | **72.3** | 27.7 |
| PH | clean + fixed-pool | 0.650 | 1.265 | 0.974 | +0.324 | 67.9 | 32.1 |
| PH | raw + endogenous | 0.726 | 1.285 | 1.095 | +0.369 | 74.6 | 25.4 |
| PH | raw + fixed-pool | 0.711 | 1.213 | 1.214 | +0.504 | 99.7 | 0.3 |

The intensive (exclusion) share ranges from **67.9% to 99.7%**
across the 8 cells; the lowest value is well above 50%.

## Interpretation

**The protected pool responds, but asymmetrically.** SME entry rises
sharply (+99% in Pregão NP), but non-SME entry falls more (−44%),
producing a net loss of ~0.25 bidders per auction. The protected
pool *cannot* replace the lost discipline because (i) the SME pool
starts much smaller (0.94 SMEs vs 2.68 non-SMEs per Pre auction) and
(ii) doubling a smaller base does not match a 44% cut to the larger
base.

**Entry cost asymmetry explains the partial offset.** The calibrated
entry cost for non-SMEs is 4.7× SME's in non-pharma. Non-SMEs face
high entry costs but high win probability — they enter when the
expected value of entry justifies the cost. SMEs face low entry
costs but low win probability — they enter when they have a local
or specialized advantage. Removing non-SMEs from the auction does
not lower the entry cost barrier for SMEs; it just removes the most
productive competitors. The protected pool's response is bounded by
the *pre-existing* SME participation — it can roughly double a
smaller base, but the base itself was small because of the
underlying type-cost distribution, not because of the policy.

**Modality contrast.** Convite shows a much smaller SME response
(+0.47 in NP vs Pregão's +0.93). Convite is invitation-based
first-price; the structural mechanics differ from Pregão's
English-clock auction. The asymmetric SME response across modalities
is itself an artifact of differing auction-format incentives, not a
defect.

**Decomposition grid: dominance ordering robust.** Across all 8
cells of the 2×2 method × class grid, the intensive (exclusion)
share stays above 50%. The lowest value, 67.9% (pharma clean +
fixed-pool), is still 17 pp above the dominance threshold. The
canonical specifications (clean + endogenous) for both classes
align with the [AN-010](an-010-bne-decomposition.md) headline at
75.9% NP and 72.3% PH. The exclusion-dominant ordering does not
depend on the methodological choices that distinguish v3 from
earlier paper versions.

Confidence: **yellow.** This is the cleanest within-project test of
the protected-pool-response prediction. Three independent
sub-analyses (entry rates, entry costs, method grid) converge on
the same conclusion: the protected pool responds asymmetrically and
this is *not* a defect of measurement or method.

## Follow-ups

- **Newcomer-vs-returning SME decomposition**: which of the
  additional SMEs post-policy are new to BEC, vs already-active
  SMEs that scaled up participation? The pure-entry channel is the
  newcomer share; the rest is participation intensification by
  existing SMEs.
- **Drug-class cross-cut in pharma**: refines the pharma boundary
  statement of [AN-016](an-016-pharma-boundary.md). The aggregate
  pharma response masks therapeutic-class heterogeneity.
- **Endogenous entry vs structural entry model**: the current
  treatment uses observed Pre→Post pool change. A structural entry
  model (with $\kappa^k$ as parameter) would let the simulation
  generate counterfactual entry rates under hypothetical
  preference-vs-set-aside regimes; partly done in
  `v7-jpube-tight/scripts/61_optimal_preference.R`.
