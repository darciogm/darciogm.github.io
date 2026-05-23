---
paper: sme-public
id: an-012
hypothesis: preference-near-zero-cost
type: causal
question: What is the simulated price and SME win-rate effect of a 10% SME price preference relative to the open benchmark $S_1$?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Static 10% SME price preference V_3 preserves non-SMEs in the auction at near-zero simulated price cost in standardized non-pharma (Δp ≈ 0 of reference price); SME win-rate rises by a meaningful but smaller margin than under full set-aside. The preference is a static design benchmark, not a forecast of a legal preference regime."
created: 2026-05-21
script: v7-jpube-tight/scripts/61_optimal_preference.R
target: v8-jpube/output/values.tex
tags: ["H:preference-near-zero-cost", preference, design-benchmark, bne, scoring]
design:
  sample: "Structural cells (non-pharma standardized; pharma boundary)"
  specification: "BNE simulation of price formation with SME bids haircut by 10% for selection only (government pays actual winning bid)"
  notes: "Holds entry and recovered willingness-to-supply primitives fixed by construction; not equilibrium-solved"
---

# AN-012: 10% SME price preference benchmark

!!! abstract "Intuition (plain-language)"
    What if, instead of banning non-SMEs, you give SMEs a 10% bid discount for winner selection? Everyone still competes, so the simulated price barely moves — yet SMEs win more often. The preference buys redistribution without sacrificing price discipline; it is a static design benchmark, not a forecast of a specific legal regime.

## Question

A static price preference is a non-exclusionary design alternative to
a set-aside: SMEs receive a percentage haircut to their bids for
*winner selection only*, but all firms remain eligible to participate
and the government pays the actual winning bid. What is the simulated
price effect of a 10% SME preference, and how much SME win-rate gain
does it deliver?

## Design

- **Sample**: structural cells from
  [AN-010](an-010-bne-decomposition.md).
- **Variation**: counterfactual policy regime $V_3$ (10% SME price
  preference for selection) vs $S_1$ (open).
- **Specification**: BNE simulation; SME bid is multiplied by 0.90 for
  selection only; the government pays the actual (unhaircut) winning
  bid.
- **Outcomes**: $\Delta p = p^{V_3} - p^{S_1}$ (simulated price shift);
  SME win-rate gain.

## Results

From `v8-jpube/output/values.tex` (10% SME price preference for
selection only; government pays actual winning bid; entry held fixed):

| Class | $\Delta p$ vs $S_1$ | SME win-rate gain |
|---|---:|---:|
| **Non-pharma** | **−0.004** | **+4.3 pp** |
| Pharma | +0.002 | +1.4 pp |

Both price shifts are essentially zero in reference-price units —
non-SMEs continue to bid and discipline the price-forming order
statistic. The SME win-rate gain is smaller than under full set-aside
(which delivers full SME-winner concentration by construction); the
preference trades redistribution for preserved competitive discipline.

Output: macros in `v8-jpube/output/values.tex`; paper table
`tab_welfare_policy_v8` columns 5–6 in §5.

## Interpretation

The 10% preference preserves the price-forming pool: non-SMEs continue
to bid and discipline the price-forming order statistic. The
simulated price is essentially unchanged from $S_1$. The preference
*is* a redistribution device — SMEs win more often than under open
competition — but the redistribution is smaller than under the full
set-aside.

The reading is that the **relevant policy frontier** is not "support
SMEs vs do nothing" but "exclusionary redistribution vs support that
preserves the price-forming bidder pool". The 10% preference is a
*static design benchmark* of the second branch, not a forecast of a
legal preference regime.

Confidence: **yellow.** The simulation holds entry fixed at the
pre-policy level by construction — an entry-elastic version would
require a separate entry model. The 10% margin is the cleanest design
benchmark; the diminishing-returns curve and the preference level at
which non-SMEs start dropping out is in the optimal-preference search.

## Follow-ups

- Optimal-preference search
  (`v7-jpube-tight/scripts/61_optimal_preference.R`) over margins
  $\in \{0\%, 5\%, 10\%, 15\%, 20\%, 25\%\}$: deserves its own AN page
  to expose the design frontier.
- Distributional incidence
  (`v7-jpube-tight/scripts/60_distributional_incidence.R`): is the SME
  win-rate gain spread across SME firm sizes, or concentrated on
  marginal firms barely above the SME threshold? Important for
  evaluating the preference against alternative SME-support
  instruments.
- Entry-elastic preference benchmark: a version where preference shifts
  firms' decision to participate. The static-cost result may not
  survive endogenous entry; out of scope for this paper.
