---
paper: frequent-losers
---

# Price coefficient sign reverses — scope, not damages

!!! abstract "Intuition (plain-language)"
    It is tempting to read "frequent losers present → higher prices" as a damages number — proof the cartel overcharges. Resist it. Once you compare only genuinely similar tenders, the sign flips to negative. A correlation that changes sign depending on the comparison set cannot be a clean estimate of overcharge. What the price pattern *can* tell you is *where* the loser-side signal is economically live (it bites in the high-value segment the framework predicts), not *how much* anyone was overcharged. Scope, not damages.

🟡 The price coefficient associated with the FL margin **reverses sign**
when overlap discipline is applied, in a pattern that defeats the
naive damages reading and supports a **scope** interpretation: prices
tell us *where* the loser-side ranking is economically live, not *how
much* anyone was overcharged. Price is a **scope** instrument here, not
a damages estimate.

**Headline progression** ([AN-037](../analyses/an-037-sign-reversal-decomposition.md)):

| Specification | FL price coefficient |
|---|---:|
| Broad (full-FE, FL14 on price) | **+0.064** (selection into higher-price cells) |
| Overlap-cell ATT (matched within same cell) | **−0.097** (p ≈ 1.7×10⁻¹⁰; blocks the markup reading) |
| High-value quadrant (Q4) | **+0.041** (the *only* positive surviving cell) |

The broad positive coefficient is **selection** into higher-price cells,
not a treatment effect; once the comparison is disciplined to within
overlapping cells the sign **flips negative** (−0.097, negative in 14/15
cells), and the only segment where the association stays positive is the
high-value Q4 quadrant (+0.041) — the segment the framework predicts the
signal should bite. Against the **47 direct CADE defendants the price
association is null**, consistent with the scope (not damages) reading.

RDD coefficients across bandwidths are stable and small (+4.3%, +5.5%,
+6.0%; [AN-019](../analyses/an-019-rdd-cap-price.md)); the McCrary
density ratio at the cap is 0.94 (no bunching). The DiD around Decreto
9.412/2018 returns null on FL × cap interaction
([AN-020](../analyses/an-020-did-decreto-2018.md)).

**Modal asymmetry** ([AN-016](../analyses/an-016-gate-d2.md),
[AN-022](../analyses/an-022-falsification-pregao.md)):

| Modality | Binary FL coef | Continuous FL coef |
|---|---:|---:|
| Pregão | +9.59% (p < 10⁻³) | +2.62% |
| Convite | +3.92% (p = 0.037) | +1.24% |

Pregão/Convite ratio: 2.45× (binary), 2.11× (continuous).

**Joint-specification sign reversal**
([AN-015](../analyses/an-015-gate-d1.md),
[AN-022](../analyses/an-022-falsification-pregao.md)): when FL14 binary
and continuous log_tc enter together, the FL14 coefficient flips
negative (−0.075 in the full sample) while the continuous coefficient
remains positive (+0.035). The binary picks up truncation noise that
the continuous score absorbs.

**Descriptive decomposition**
([AN-039](../analyses/an-039-selection-mechanism-test.md),
[AN-040](../analyses/an-040-within-cell-mechanism-test.md)): the reversal
decomposes into a positive across-cell selection component (non-treated
price rises Δ = 5.58 log-points with cell FL-share; full-FE coefficient
+3.55) and a negative within-cell association (winner-to-reference
−0.048, accounted for by +0.507 log-bidders), exchanging sign at the
tender-density margin. These are **descriptive associations** consistent
with economic non-neutrality; they do **not** identify a mechanism, a
causal price effect, overcharges, or damages. In particular, the
cover-bidding **"theater" mechanism is not identified** — the price
pattern is consistent with it but cannot establish that any firm staged
deliberate losing bids. The manuscript (§7 / Appendix E) keeps the
decomposition as scope evidence, subordinate to the evidence-allocation
claim.

The sign reversal is, by itself, the load-bearing piece of legal
disciplining: a screening tool that confused scope with damages would
overreach in court, and the manuscript explicitly separates the two.
The finding therefore *enables* the legal-economic claim of §7 rather
than contradicting it.

**Caveat.** The sign reversal reading is *consistent with* the scope
interpretation under the assumption that the adjudication-anchored
exposure target is correctly identified. The price evidence is descriptive and
supportive — not a counterfactual welfare exercise. The reading is 🟡
and explicitly *not* the headline of the paper; price evidence is
framed as secondary to the triage and cobidder-concentration results.

**Sources.**

- *Own analysis*:
  [AN-019](../analyses/an-019-rdd-cap-price.md) (RDD price + overlap
  ATT),
  [AN-020](../analyses/an-020-did-decreto-2018.md) (DiD around decree),
  [AN-016](../analyses/an-016-gate-d2.md) (modal AUC asymmetry),
  [AN-022](../analyses/an-022-falsification-pregao.md) (modal
  falsification),
  [AN-015](../analyses/an-015-gate-d1.md) (joint-spec sign flip),
  [AN-037](../analyses/an-037-sign-reversal-decomposition.md) (headline
  three-spec progression +0.064 → −0.097, p = 1.7 × 10⁻¹⁰; within-
  overlap subgroup negative in 14/15 cells),
  [AN-038](../analyses/an-038-negative-cell-segment-audit.md) (item-
  group segment betas; group 37 −0.126 stays negative across specs),
  [AN-039](../analyses/an-039-selection-mechanism-test.md) (across-cell
  selection component, descriptive),
  [AN-040](../analyses/an-040-within-cell-mechanism-test.md) (within-cell
  association via bidder count, descriptive — not mechanism
  identification).
- *Cross-refs*:
  [H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md);
  [docs/extensions.md](../extensions.md).
- *Macros*: `\valBetaBroad` (+0.064 selection), `\valBetaOverlapATT`
  (−0.097), `\valBetaQfour` (+0.041 Q4-only positive),
  `\valBetaCADENonDirect` (−0.097; direct-CADE price null),
  `\valFalBinPregCoef` (+9.59%), `\valFalBinConvCoef` (+3.92%),
  `\valFalBinRatio` (2.45×), `\valMcCraryRatio` (0.94),
  `\valMatchPSCoef` (−30.67%).
- *Validation*: backing scripts `scripts/13_rdd_cap.R`,
  `scripts/14_did_decreto_2018.R`,
  `scripts/37_gate_d2_modal_auc.R`,
  `scripts/46_falsification_pregao_only.R`,
  `scripts/51_item_level_scope_match.R`,
  `scripts/59_sign_reversal_decomp.R`.
