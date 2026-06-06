---
paper: frequent-losers
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

# Findings — Cheap Signals, Costly Proof

!!! abstract "Intuition (plain-language)"
    Catching bid-rigging is expensive: the textbook tests need detailed bid-by-bid data that procurement systems rarely keep. The economic idea organizing these findings is a *cost-of-evidence* one — use a cheap, always-available signal (which firms bid constantly without ever winning) to decide *where* to spend costly forensic effort, not to decide *who* is guilty. The findings below separate what that cheap signal can credibly buy (a prioritized pool to investigate) from what it cannot (a verdict on any individual firm).

This page is the curated index of *what we have learned* from the project's
own analyses. Each finding is a **claim about the world** — the kind of
statement that would go in the paper — and it may rest on several
`AN-NNN` analyses, cited in its Sources footer. The detail, design, and
caveats behind each number live on those analysis pages; this page is the
synthesis.

This page is the **directory of conclusions**. Use [`docs/analyses/`](../analyses/index.md)
to look up the per-result design, raw numbers, and full result tables;
use this page to scan what we believe and at what confidence.

---

## How to read the confidence tags

A traffic-light convention runs across both scales: 🟢 = strongest
confidence, 🟡 = middle, 🔴 = weakest. The *meaning* of each color
depends on whether the claim is empirical or interpretive.

**Empirical findings** — the color reflects the *source* of confidence,
not the size of the effect:

- 🟢 **Replicated** — the finding appears in multiple independent samples
  or studies that agree in direction and rough magnitude.
- 🟡 **Single source** — one solid study, or one of our own runs, with
  no independent replication yet.
- 🔴 **Provisional** — one descriptive cut that is parser-dependent,
  sensitive to sample definition, or flagged with a known caveat. Read
  the qualifier before quoting.

**Interpretations** — parallel scheme:

- 🟢 **Strong** — multiple converging lines of evidence; alternatives
  have been considered and rejected.
- 🟡 **Plausible** — consistent with the evidence but other readings
  remain open.
- 🔴 **Speculative** — suggested by the data but unverified; flagged
  for follow-up rather than relied on.

For *Cheap Signals, Costly Proof*, the natural 🟢 promotion criterion is
replication on a non-BEC-SP procurement panel under a *genuinely
independent* cartel anchor. The v23 R&R takes a first step: the audit is
re-run on the **federal ComprasNet** panel
([AN-043](../analyses/an-043-federal-opportunity-adjusted-validation.md)) and
the deflation **replicates** — but the federal CADE anchors partially overlap
the São Paulo cases, so that leg is **provisional**, not 🟢. Until a
non-overlapping anchor exists, findings here rest on the project's own BEC
2009–2019 runs (corroborated provisionally on ComprasNet) and start at 🟡.

---

## Findings overview — what the screen reaches, and where it stops

*Cheap Signals, Costly Proof* is a **reach-and-limits map**. The cheap
award-layer records can **order forensic priority** — tell an enforcer
where to spend costly bid-recovery effort first — but they cannot prove
conduct on any firm. The findings below are organized so that **every
reach is paired with its limit**. The contribution is the decomposition
method (separating opportunity from loss-intensity signal) and the map
of where the screen is informative versus where it goes silent.

All findings are at 🟡 (single-source own-project estimates) or 🟢
(load-bearing for the paper's framing) and link to the AN pages that
carry the design + numbers. Promotion to 🟢 generally requires
independent replication on a non-BEC procurement panel.

**What the screen reaches** *(empirical + interpretive)*

- [Raw ranking concentrates adjudication-anchored cobidders — but the lift is opportunity](cobidders-concentrated-in-fl-stratum.md) — 🟡 raw ROC 0.761 (lift 5.6×) vs within-stratum 0.471 (≈chance); the nested increment is only **+0.010 (DeLong p = 0.013)** and does not survive permutation (matched p = 0.127 ns; FL-enrichment p = 0.067 ns). **No robust residual net of opportunity.** Canonical label = 651 cobidders, not FL-conditioned (341 FL / 310 non-FL).
- [FL cobidders are descriptively distinct from other frequent losers](cobidders-operationally-distinct.md) — 🟡 broader participation, concentrated portfolios, closer to legal anchors; FL enrichment descriptive (P(cobidder|FL)=12.5% vs 2.2%, ≈5.7×) but FL-enrichment within matched strata is ns (p = 0.067). Descriptive economic content, not proof of role.
- [Joint award + bid scoring is the full-observability upper bound — conditional and case-fragile](full-observability-upper-bound.md) — 🟡 combined ROC 0.756 (random CV) but falls *below* award-only on PR under case-grouped folds; award ≈ bid pooled (0.760 vs 0.717). Complementarity is conditional, not dominance.

**Where the screen stops** *(the limits, front-paged as findings)*

- [The ranking is null on direct CADE defendants — by design](direct-defendants-null-result.md) — 🟢 AUC ≈ 0.49; the predicted scope boundary. A loser-side score is blind to designated winners by construction.
- **The ranking is retrospective, not prospective.** Under strict ex-ante scoring (train 2009–2016, test 2017–2019) on the full candidate universe, ROC = 0.474 (below chance) and precision@500 = recall@500 = 0 in every year — the strict-timing deployment fails; only an incumbent-pool residue survives (continuous ROC 0.684) ([AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)). The labels are retrospective adjudication anchors; they do not forecast fresh cartels.
- **One case dominates the labeled signal — attenuated but real.** Leave-largest-case-out drops PR-AUC from 0.143 to 0.090 (−37%); a single adjudicated case supplies ≈32% of the positives (45.4% of TP@500). The case dependence is attenuated under the broad label but still material ([docs/results.md](../results.md)).

**Audit discipline** *(empirical)*

- [Exposure explains the ranking — no robust residual survives the audits](concentration-survives-audits.md) — 🟡 the within-stratum ordering is at chance (0.471); the marginal nested +0.010 (p = 0.013) does not survive matched permutation (p = 0.127 ns) or FL-enrichment (p = 0.067 ns); negative controls corroborate the opportunity account (real ≈ placebo, p = 0.46). Exposure, not loss-intensity, drives the concentration.

**Sequential architecture / cost of evidence** *(empirical + interpretive)*

- [Sequential gatekeeping traces a cost-recall frontier](gatekeeping-cuts-pool-83pct.md) — 🟡 no universal cut and no optimal K: at K₁ = 2,000 the firm pool falls ~88% but the **bid-row burden falls only ~33%** (survivors are heavy bidders); K₁ = 1,000 beats K₁ = 2,000 at k = 500. A retrospective recovery-footprint design, not measured agency budget savings.

**Price scope** *(interpretive)*

- [Price coefficient sign reverses — scope, not damages](price-sign-reversal-scope.md) — 🟡 broad +0.064 (selection) → overlap-cell ATT −0.097 → Q4 +0.041 (only positive cell); direct-CADE price null; the cover-bidding "theater" mechanism is **not identified**. Price marks scope, never damages.

---

## Open items for this page

- **🟢 promotion path is replication on a non-BEC dataset.** None of the
  planned analyses provides that on its own; that is a separate
  data-acquisition decision (ComprasNet federal, or another state's
  e-procurement platform).
- **Numeric headlines are bound to `values.tex`** macros (e.g.,
  `\valExpOnlyAUC`, `\valExpWithinAUC`, `\valExpIncrement`,
  `\valMainCobidders`, `\valCostFirmRedTwoK`, `\valCostBidRowRedTwoK`,
  `\valBetaOverlapATT`)
  auto-generated by `scripts/99_make_paper_values.R`. Regenerate
  `values.tex` and the analysis-index after each upstream re-run; the
  finding and AN pages quote the macros' current canonical values.

## Generated index

All 7 finding pages, auto-generated from the body of each `docs/findings/<slug>.md` via `scripts/render_indexes.py`. Confidence and one-line summary extracted from the page lede.

| Conf. | Finding | Summary |
|:-:|---|---|
| 🟡 | [Raw ranking concentrates adjudication-anchored cobidders — but the lift is opportunity](cobidders-concentrated-in-fl-stratum.md) | The raw ranking concentrates the 651 adjudication-anchored cobidders (ROC 0.761, lift 5.6×), but the within-stratum residual is at chance (0.471); the nested increment is +0.010 (DeLong p = 0.013) and does not survive matched permutation (p = 0.127 ns) or FL-enrichment (p = 0.067 ns). No robust residual net of opportunity. |
| 🟡 | [FL cobidders are descriptively distinct from other frequent losers](cobidders-operationally-distinct.md) | Inside the always-loser stratum, adjudication-anchored cobidders differ from other always-losers along economically meaningful dimensions (Cohen's d 0.3–1.0). FL enrichment descriptive (5.7×) but ns within matched strata. Descriptive economic content, not proof of role. |
| 🟡 | [Exposure explains the ranking — no robust residual survives the audits](concentration-survives-audits.md) | The within-stratum ordering is at chance (0.471); the marginal nested +0.010 (p = 0.013) does not survive matched permutation (p = 0.127 ns) or FL-enrichment (p = 0.067 ns); negative controls corroborate the opportunity account (real ≈ placebo, p = 0.46). Exposure, not loss-intensity, drives the concentration. |
| 🟢 | [The ranking is null on direct CADE defendants — by design](direct-defendants-null-result.md) | Against the 47 direct CADE defendants (the legal anchors) the ranking returns AUC ≈ 0.49 — indistinguishable from random. The predicted scope boundary, front-paged as the honest limit of an award-layer screen. |
| 🟡 | [Joint award + bid scoring is the full-observability upper bound — conditional and case-fragile](full-observability-upper-bound.md) | A classifier using both the award-layer score and bid-distribution features reaches ROC 0.756 under random CV, but the combined model falls *below* award-only on PR under case-grouped folds; award ≈ bid pooled (0.760 vs 0.717). Complementarity is conditional and case-fragile, not dominance. |
| 🟡 | [Sequential gatekeeping traces a cost-recall frontier](gatekeeping-cuts-pool-83pct.md) | No universal cut and no optimal K: at K₁ = 2,000 the firm pool falls ~88% but the bid-row burden — what an agency actually pays — falls only ~33%; K₁ = 1,000 beats K₁ = 2,000 at k = 500. A retrospective recovery-footprint design, not measured budget savings. |
| 🟡 | [Price coefficient sign reverses — scope, not damages](price-sign-reversal-scope.md) | Broad +0.064 (selection) → overlap-cell ATT −0.097 → high-value Q4 +0.041 (only positive cell); direct-CADE price null; the cover-bidding "theater" mechanism is not identified. Price marks scope, never damages. |

**Confidence legend.** 🟢 replicated / load-bearing for paper framing; 🟡 single-source own-project estimate; 🔴 provisional, kept for the record only. Promotion to 🟢 generally requires independent replication on a non-BEC procurement panel.
