---
paper: sme-public
id: an-010
hypothesis: exclusion-dominates
type: causal
question: What is the structural decomposition of the set-aside price effect into the lost-discipline channel ($S_2-S_1$) and the protected-pool offset ($S_3-S_2$)?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "BNE simulation finds the absolute exclusion share |S_2−S_1|/(|S_2−S_1| + |S_3−S_2|) ≈ 72% in standardized non-pharma; SME bidder count roughly doubles after the cutoff but the net S_3 − S_1 remains positive. Pharma analog: same qualitative pattern at higher magnitudes but more model-sensitive."
created: 2026-05-21
script: v7-jpube-tight/scripts/45_bne_simulation.R
target: v8-jpube/output/values.tex
tags: ["H:exclusion-dominates", "H:protected-pool-responds", structural, bne, decomposition, pregao-dropouts]
design:
  sample: "BEC Pregão drop-outs, structural sample spanning March 2018 cutoff; cells = (non-pharma standardized) × (pre/post) × (SME/non-SME)"
  specification: "BNE simulation of E[c_(2)^V] under three counterfactual bidder pools: S_1 (open pre-policy), S_2 (SME-only with fixed pre-policy SME pool), S_3 (SME-only with observed post-policy SME pool); prices normalized by buyer reference price"
  source_panel: "audesp + BEC event log (pregão drop-outs)"
---

# AN-010: BNE decomposition — exclusion vs protected-pool offset

## Question

How does the set-aside price effect decompose into the lost-discipline
channel (non-SMEs removed) and the protected-pool offset (post-policy
SME pool)? The structural decomposition compares three counterfactual
bidder pools.

## Design

- **Sample**: BEC Pregão drop-outs spanning the March 2018 cutoff.
  Recovered cost distributions are estimated per cell:
  (non-pharma standardized) and (pharma) × (pre/post) ×
  (SME/non-SME).
- **Variation**: counterfactual policy regime —
  $S_1$ (open pre-policy auction), $S_2$ (SME-only with the pre-policy
  SME pool held fixed), $S_3$ (SME-only with the observed post-policy
  SME pool).
- **Specification**: BNE simulation
  (`v7-jpube-tight/scripts/45_bne_simulation.R`) of
  $E[c_{(2)}^V]$ — the second-order statistic of the bidder cost
  distribution — under each pool. Prices are normalized by the buyer
  reference price.
- **Outcomes**: per-class $S_1$, $S_2$, $S_3$, decomposition components
  $S_2 - S_1$, $S_3 - S_2$, $S_3 - S_1$, exclusion-to-net ratio,
  absolute exclusion share.

## Results

Headline magnitudes from `v8-jpube/output/values.tex` (canonical BNE run,
B = 10,000 Monte Carlo draws). All values reported as fractions of the
buyer reference price $p^{\mathrm{ref}}$.

In standardized **non-pharma**:

| Object | Value | Macro |
|---|---:|---|
| $S_1$ (open pre-policy) | 0.774 | `\bneMeanSoneNp` |
| $S_2$ (SME-only, pre-pool fixed) | 1.144 | `\bneMeanStwoNp` |
| $S_3$ (SME-only, post-pool) | 1.000 | `\bneMeanSthreeNp` |
| **$S_2 - S_1$** (lost-discipline) | **+0.371** | `\bneEffectIntensNp` |
| **$S_3 - S_2$** (protected-pool offset) | **−0.144** | `\bneEffectEntryNp` |
| **$S_3 - S_1$** (net effect) | **+0.227** | `\bneEffectTotalNp` |
| **Absolute exclusion share** | **72.0%** | `\bneShareIntensNp` |
| Exclusion-to-net ratio | 164% | `\bneIntensRelNetNp` |

In **pharma** (boundary case — see [AN-016](an-016-pharma-boundary.md)):
$S_1$ = 0.654, $S_2$ = 1.219, $S_3$ = 0.963; exclusion magnitude +0.565,
offset −0.256, net +0.309. Absolute exclusion share **68.8%**;
exclusion-to-net ratio 183%. Same qualitative pattern at higher
magnitudes; the welfare *ranking* is more model-sensitive than in
non-pharma.

**Bidder counts (per auction).** Non-pharma: SME participation
**0.94 → 1.87** post-cutoff (roughly doubles); non-SME participation
**2.68 → 1.50** (falls but does not vanish — many auctions are above
the R$80K SME-eligibility ceiling and remain open). Pharma: SME
**0.55 → 1.22**; non-SME **2.61 → 1.66**.

*See Figure 4 (Counterfactual price decomposition) in `paper.pdf` §4.*

Output: `v7-jpube-tight/scripts/46_decomp_compare.R` produces the
decomposition table cells; macros live in `v8-jpube/output/values.tex`.

## Interpretation

The **lost-discipline channel dominates** in absolute magnitude: the
non-SMEs that were the price-forming bidders cannot be replaced by the
protected SME pool, even after the SME participation roughly doubles.
The protected-pool offset works in the right direction but does not
close the gap.

Critically, the protected-pool offset $S_3 - S_2$ should *not* be read
as a pure entry parameter. It combines (i) additional SME participation
with (ii) changes in the active SME pool composition observed
post-policy. The strict-invariance specification
([AN-017](an-017-strict-invariance.md)) holds composition fixed to
isolate the participation channel.

Confidence: **yellow.** The decomposition rests on the maintained
IPV-clock interpretation of Pregão drop-outs
([AN-013](an-013-pregao-dropouts.md),
[AN-014](an-014-uh-correction.md),
[AN-015](an-015-collusion-screens.md)). The collusion-screen battery
remains pending; until it lands clean, the decomposition is the
load-bearing structural reading but its interpretation as a *welfare*
counterfactual rather than as a *bid-shift* re-weighting depends on
that diagnostic surviving. The non-pharma reading is robust across
strict-invariance and bootstrap CI; the pharma reading is a boundary
case.

## Follow-ups

- Bootstrap CI on the exclusion share
  (`v7-jpube-tight/scripts/51_bootstrap_ci.R`): the current
  point-estimate decomposition does not report a confidence interval
  on the dominance ordering. Documenting this as a standalone AN would
  sharpen the "exceeds 50%" claim.
- Cross-modality validation: GPV recovery of cost distributions from
  Convite first-price bids (`v7-jpube-tight/scripts/38_cross_modality.R`)
  applied to the same product cells. Convergence would discipline the
  IPV-clock restriction.
- Phased-adoption counterfactual
  (`v7-jpube-tight/scripts/70_phased_adoption.R`): the protected-pool
  response should be smaller under phased rollout; the simulation
  would test whether the dominance ordering is robust to that
  implementation choice.
