---
paper: frequent-losers
---

# Price coefficient sign reverses — scope, not damages

🟡 The price coefficient associated with the FL margin **reverses sign**
when overlap discipline is applied, in a pattern that defeats the
naive damages reading and supports a **scope** interpretation: prices
tell us *where* the loser-side ranking applies, not *how much* the
cartel overcharges.

**Headline reversal** ([AN-019](../analyses/an-019-rdd-cap-price.md)):

| Specification | FL price coefficient |
|---|---:|
| Baseline FE (FL14 on price) | **+6.36%** |
| Overlap-cell ATT (matched within same cell) | **−9.72%** |
| PS ATT (trimmed) | −30.67% |

The sign flips when the comparison stratum is disciplined to within-
cell. RDD coefficients across bandwidths are stable and small (+4.3%,
+5.5%, +6.0%; [AN-019](../analyses/an-019-rdd-cap-price.md)); the
McCrary density ratio at the cap is 0.94 (no bunching). The DiD around
Decreto 9.412/2018 returns null on FL × cap interaction
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

The sign reversal is, by itself, the load-bearing piece of legal
disciplining: a screening tool that confused scope with damages would
overreach in court, and the manuscript explicitly separates the two.
The finding therefore *enables* the legal-economic claim of §7 rather
than contradicting it.

**Caveat.** The sign reversal reading is *consistent with* the scope
interpretation under the assumption that the loser-side adjacency
target is correctly identified. The price evidence is descriptive and
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
  group segment betas; group 37 −0.126 stays negative across specs).
- *Cross-refs*:
  [H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md);
  [docs/extensions.md](../extensions.md).
- *Macros*: `\valMatchBaselineCoef` (+6.36%), `\valMatchOverlapCoef`
  (−9.72%), `\valMatchPSCoef` (−30.67%), `\valFalBinPregCoef` (+9.59%),
  `\valFalBinConvCoef` (+3.92%), `\valFalBinRatio` (2.45×),
  `\valMcCraryRatio` (0.94), `\valRDDtight`/`Mid`/`Wide`.
- *Validation*: backing scripts `scripts/13_rdd_cap.R`,
  `scripts/14_did_decreto_2018.R`,
  `scripts/37_gate_d2_modal_auc.R`,
  `scripts/46_falsification_pregao_only.R`,
  `scripts/51_item_level_scope_match.R`,
  `scripts/59_sign_reversal_decomp.R`.
