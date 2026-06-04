---
paper: frequent-losers
---

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
replication on a non-BEC-SP procurement panel (e.g. ComprasNet federal,
or another state's e-procurement system). Until that exists, findings
here rest on the project's own BEC 2009–2019 runs and start at 🟡.

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

- [The ranking concentrates adjudication-anchored cobidders — but most of it is opportunity](cobidders-concentrated-in-fl-stratum.md) — 🟡 exposure-only AUC 0.946 vs within-stratum 0.7715; the **genuine loss-intensity increment is only +0.042** (DeLong p ≈ 2.1×10⁻⁶). Real, but modest.
- [FL cobidders are operationally distinct from other frequent losers](cobidders-operationally-distinct.md) — 🟡 broader deployment, concentrated portfolios, closer to legal anchors, bid patterns consistent-with-but-not-diagnostic-of credible losing roles; distinctness survives volume matching (AN-041). Descriptive economic content, not proof of role.
- [Joint award + bid scoring is the full-observability upper bound](full-observability-upper-bound.md) — 🟡 combined AUC 0.962, achievable only by recovering the bid layer; the two layers are complementary (a division of labor), and the sequential rule never beats this ceiling.

**Where the screen stops** *(the limits, front-paged as findings)*

- [The ranking is null on direct CADE defendants — by design](direct-defendants-null-result.md) — 🟢 AUC ≈ 0.49; the predicted scope boundary. A loser-side score is blind to designated winners by construction.
- **The screen is retrospective, not prospective.** Under strict ex-ante scoring (train 2009–2016, test 2017–2019) on the full candidate universe, ROC ≈ 0.55 and precision@500 ≈ 0 — the strict-timing deployment is effectively infeasible ([AN-006](../analyses/an-006-strict-prospective-holdout.md), [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)). The signal documents past structure; it does not forecast fresh cartels.
- **One case dominates the labeled signal.** Leave-largest-case-out drops PR-AUC from 0.126 to 0.036 (−71%); a single adjudicated case supplies ≈55% of the positives. The performance is real but **not yet broad-based** ([docs/results.md](../results.md)).

**Audit discipline** *(empirical)*

- [Cobidder concentration survives exposure, leakage, and timing audits — modestly](concentration-survives-audits.md) — 🟡 the +0.042 increment survives opportunity-cell permutation, leakage audit (item-level 0.995 → out-of-fold 0.891 → temporal 0.864, honest attenuation), and thin clustered-RI (p ≈ 0.015). Real after discipline, but small.

**Sequential architecture / cost of evidence** *(empirical + interpretive)*

- [Sequential gatekeeping traces a cost-recall frontier](gatekeeping-cuts-pool-83pct.md) — 🟡 not a universal "83% cut": at K₁ = 2,000 the firm pool falls ~88% but the **bid-row burden falls only ~33%** (survivors are heavy bidders), recall ~0.67, beating random 3–12×. The frontier — not an optimal cutoff — is the design object.

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
  `\valCostFirmRedTwoK`, `\valCostBidRowRedTwoK`, `\valBetaOverlapATT`)
  auto-generated by `scripts/99_make_paper_values.R`. Regenerate
  `values.tex` and the analysis-index after each upstream re-run; the
  finding and AN pages quote the macros' current canonical values.

## Generated index

All 7 finding pages, auto-generated from the body of each `docs/findings/<slug>.md` via `scripts/render_indexes.py`. Confidence and one-line summary extracted from the page lede.

| Conf. | Finding | Summary |
|:-:|---|---|
| 🟡 | [The ranking concentrates adjudication-anchored cobidders](cobidders-concentrated-in-fl-stratum.md) | The frequent-loser ranking concentrates adjudication-anchored cobidders in the always-loser stratum, but an exposure-only benchmark already reaches AUC 0.946; the genuine loss-intensity increment beyond opportunity is only +0.042 (DeLong p ≈ 2.1×10⁻⁶). Real, but modest. |
| 🟡 | [FL cobidders are operationally distinct from other frequent losers](cobidders-operationally-distinct.md) | Inside the always-loser stratum, adjudication-anchored cobidders differ from other always-losers along four economically meaningful dimensions (Cohen's d 0.3–1.0). Descriptive economic content, not proof of role. |
| 🟡 | [Cobidder concentration survives exposure, leakage, and timing audits — modestly](concentration-survives-audits.md) | The +0.042 increment survives opportunity-cell permutation, leakage audit (item-level 0.995 → out-of-fold 0.891 → temporal 0.864 — honest attenuation), and thin clustered-RI (p ≈ 0.015). Real after discipline, but small. |
| 🟢 | [The ranking is null on direct CADE defendants — by design](direct-defendants-null-result.md) | Against the 47 direct CADE defendants (the legal anchors) the ranking returns AUC ≈ 0.49 — indistinguishable from random. The predicted scope boundary, front-paged as the honest limit of an award-layer screen. |
| 🟡 | [Joint award + bid scoring is the full-observability upper bound](full-observability-upper-bound.md) | A classifier using both the award-layer score and Imhof bid-distribution features reaches AUC 0.962 — but only by recovering the bid layer for every firm. The two layers are complementary; the sequential rule never beats this ceiling. |
| 🟡 | [Sequential gatekeeping traces a cost-recall frontier](gatekeeping-cuts-pool-83pct.md) | Not a universal 83% cut: at K₁ = 2,000 the firm pool falls ~88% but the bid-row burden — what an agency actually pays — falls only ~33%, recall ~0.67, beating random 3–12×. The frontier, not a cutoff, is the design object. |
| 🟡 | [Price coefficient sign reverses — scope, not damages](price-sign-reversal-scope.md) | Broad +0.064 (selection) → overlap-cell ATT −0.097 → high-value Q4 +0.041 (only positive cell); direct-CADE price null; the cover-bidding "theater" mechanism is not identified. Price marks scope, never damages. |

**Confidence legend.** 🟢 replicated / load-bearing for paper framing; 🟡 single-source own-project estimate; 🔴 provisional, kept for the record only. Promotion to 🟢 generally requires independent replication on a non-BEC procurement panel.
