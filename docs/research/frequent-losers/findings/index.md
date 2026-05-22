# Findings — Cheap Signals, Costly Proof

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

## Findings overview

All findings below are scaffolds at 🟡 (single-source own-project estimates)
or 🟢 (load-bearing for the paper's framing) and link to the AN pages that
carry the design + numbers. Promotion to 🟢 (when not already there) would
require independent replication on a non-BEC procurement panel.

**Award-layer triage scope** *(empirical + interpretive)*

- [CADE-adjacent cobidders concentrate in the FL14 stratum](cobidders-concentrated-in-fl-stratum.md) — 🟡 131/193 cobidders recovered inside the FL stratum; rank construction = persistent zero-win participation.
- [The FL ranking is null on direct CADE defendants — by design](direct-defendants-null-result.md) — 🟢 AUC ≈ 0.49–0.50; the predicted finding under the loser-side scope.

**Audit discipline** *(empirical)*

- [Cobidder concentration survives exposure, leakage, and timing audits](concentration-survives-audits.md) — 🟡 result holds under sham FL placebo, out-of-fold leakage audit, and strict timing.

**Cobidder economic profile** *(empirical)*

- [FL cobidders are operationally distinct from other frequent losers](cobidders-operationally-distinct.md) — 🟡 broader buyer deployment, more concentrated product portfolios, closer to legal cartel anchors, bid patterns consistent with credible losing roles.

**Sequential architecture / cost of evidence** *(empirical + interpretive)*

- [Award-layer gatekeeping cuts the bid-microdata pool by 83%](gatekeeping-cuts-pool-83pct.md) — 🟡 131/193 cobidders recovered after the cut; the paper's operational headline.
- [Joint award + bid scoring is the full-observability upper bound](full-observability-upper-bound.md) — 🟡 the two layers are complementary, not substitutes.

**Price scope** *(interpretive)*

- [Price coefficient sign reverses — scope, not damages](price-sign-reversal-scope.md) — 🟡 the sign reversal defeats the damages reading and supports a scope interpretation.

---

## Open items for this page

- **🟢 promotion path is replication on a non-BEC dataset.** None of the
  planned analyses provides that on its own; that is a separate
  data-acquisition decision (ComprasNet federal, or another state's
  e-procurement platform).
- **All numeric headlines in the finding pages above are placeholders**
  until the underlying AN pages graduate from `pending` to `done` and the
  values are macro-bound via the `values.tex` pipeline (see
  [feedback_macro_bound_numbers](../paper.md)).
