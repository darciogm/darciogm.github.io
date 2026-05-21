---
paper: sme-public
---

# Findings — The Price of Exclusion

This page is the curated index of *what we have learned* from the project's
own analyses. Each finding is a **claim about the world** — the kind of
statement that would go in the paper — and it may rest on several
`AN-NNN` analyses, cited in its Sources footer. The detail, design, and
caveats behind each number live on those analysis pages; this page is the
synthesis.

This page is the **directory of conclusions**. Use
[`docs/analyses/`](../analyses/index.md) to look up the per-result design,
raw numbers, and full result tables; use this page to scan what we believe
and at what confidence.

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

Every finding here is currently 🟡: each rests on the project's own runs
of the BEC structural sample, none has independent replication in another
jurisdiction, and the structural pieces inherit the maintained IPV-clock
interpretation of Pregão drop-outs (load-bearing for the decomposition;
see [H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)).

---

## Findings overview

**Reduced-form policy effects** *(empirical)*

- [Open auctions cut procurement prices by ~13% in switched group 65](price-drop-open-vs-sme.md) — DiDiR &beta;=&minus;0.131 to &minus;0.133 across 18-month specifications, p<0.01, item-clustered SEs.
- [Open auctions increase bidder participation by ~10–22%](entry-rises-with-competition.md) — short-window effect ~22%, attenuating to ~10% at 18 months; consistent across firms and valid-bids margins.
- [Open auctions pull in geographically distant non-SME suppliers](distant-suppliers-enter.md) — average buyer-winner distance widens by ~12 km on high-value items; null on low-value items.

**Structural decomposition** *(interpretive, conditional on IPV-clock)*

- [Exclusion dominates the price decomposition](exclusion-dominates-decomposition.md) — lost-discipline channel $|S_2-S_1|$ accounts for ~72% of the absolute decomposition in standardized non-pharma.
- [The protected SME pool responds but does not replace lost discipline](protected-pool-cannot-replace.md) — post-policy SME bidder counts roughly double, but $S_3-S_1$ remains positive.

**Static welfare and policy design** *(interpretive, conditional on IPV-clock + &lambda;=0.30)*

- [Static welfare cost of full set-aside is ~28.9% of open-regime price (non-pharma)](static-welfare-loss-large.md) — DWL$_{\mathrm{alloc}}$ + &lambda;·MCPF arithmetic; pharma is a boundary case at 44.8% but more model-sensitive.
- [A 10% SME price preference delivers redistribution at near-zero static price cost](price-preference-near-free.md) — non-SMEs remain eligible and discipline the price-forming pool; SME win-rate rises while &Delta;p ~ 0.

**Scope** *(interpretive)*

- [Pharmaceutical procurement is a boundary case, not a second headline](pharma-boundary-not-headline.md) — thinner protected pool, larger composition changes, welfare ranking sensitive to how the post-policy SME pool is modeled. The non-pharma ranking is the load-bearing claim.

---

## Open items for this page

- **Nothing is 🟢 yet.** Every finding is single-source (our own run on the
  São Paulo BEC sample); promotion to 🟢 would require either an
  independent replication in another procurement jurisdiction or a second
  identifying source within São Paulo (e.g., a complementary structural
  recovery from Convite first-price bids that converges with the Pregão
  drop-out reading; partly addressed by the cross-modality check in §6).
- **The structural findings depend on the IPV-clock interpretation.** If
  Pregão drop-outs do not pin down willingness-to-supply
  (see [H:ipv-clock-admissible](../hypotheses/ipv-clock-admissible.md)),
  the decomposition and welfare arithmetic become a price-forming
  re-weighting exercise rather than a structural counterfactual. The
  collusion-screen battery
  ([AN-015](../analyses/an-015-collusion-screens.md)) is the load-bearing
  threat-assessment piece; until it lands clean the decomposition
  findings remain 🟡 by design.
- **The 10% price preference is a static design benchmark, not a forecast.**
  It holds entry and recovered willingness-to-supply primitives fixed; it
  does not solve a counterfactual legal regime in equilibrium. Any
  reading as a policy recommendation is interpretive and load-bearing
  on that scope choice.
