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
- **The IPV-clock diagnostic battery has landed.** What was an open
  threat-assessment item — "do the screens land clean?" — has been
  resolved on the differential question (does coordination *intensify*
  post-cutoff, the threat that would mechanically produce the
  exclusion-dominant decomposition through bid suppression). It does
  not: Conley-Decarolis close-pair shares are stable in non-pharma
  (16.9% → 16.8%) and fall in pharma (27.6% → 24.4%); Bajari-Ye T1
  ratios fall in both classes (NP 2.63 → 1.83; PH 1.29 → 1.11). See
  [AN-015](../analyses/an-015-collusion-screens.md) for the full
  screen battery. Three winner-censoring regimes give net $S_3 - S_1$
  in [0.246, 0.275] non-pharma and [0.308, 0.357] pharma — all
  positive, all large ([AN-013](../analyses/an-013-pregao-dropouts.md));
  Gaussian-copula relaxation with within-auction cost correlation up
  to ρ_c = 0.3 drifts the exclusion share by <5 pp and the total
  effect by <10% ([AN-014](../analyses/an-014-uh-correction.md));
  strict invariance reinforces the dominance ordering, raising the
  exclusion share to 85% non-pharma and 79% pharma
  ([AN-017](../analyses/an-017-strict-invariance.md)); cross-modality
  GPV from Convite first-price aligns with Pregão drop-outs in the
  load-bearing pharma non-SME pre cell ($c_{0.50}$ 0.712 vs 0.704;
  [AN-019](../analyses/an-019-cross-modality-gpv.md)). The screens do
  not *prove* the IPV-clock reading — that is why findings remain 🟡
  — but they rule out the most obvious bid-conduct deviations.
  Residual baseline clustering remains an acknowledged limitation
  (realized close-pair shares are 1.6–1.9× the null mean).
- **The 10% price preference is a static design benchmark, not a forecast.**
  It holds entry and recovered willingness-to-supply primitives fixed; it
  does not solve a counterfactual legal regime in equilibrium. Any
  reading as a policy recommendation is interpretive and load-bearing
  on that scope choice.
