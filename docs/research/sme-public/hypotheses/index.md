# Hypotheses

Testable predictions for *The Price of Exclusion: SME Set-Asides in Public
Procurement*. Each hypothesis lives in its own file and is referenced
project-internally by `H:<slug>`.

Hypotheses are organized into four thematic clusters aligned with the
canonical manuscript `v8-jpube/manuscript/paper_v8.tex`.

## How to read a hypothesis page

Each page follows the same structure — *the design → what's known → what's
left*:

- **Title + lede:** the `H:<slug>` title, then a plain-words statement of the
  claim.
- **Evidence-strength callout:** an at-a-glance verdict (Very strong / Strong /
  Moderate / Weak / Not yet tested) plus a one-line status.
- **Theory:** the theoretical motivation, with references.
- **Prediction:** the precise directional claim.
- **Competing prediction:** what a non-exclusion explanation predicts instead —
  the alternative the test has to rule out.
- **Setting evidence:** institutional and descriptive grounding from the
  BEC/PGE-SP record and `paper.md` setting.
- **Empirical test:** the concrete specification — outcome, variation,
  fixed effects.
- **Data requirements and limitations:** datasets needed and threats to
  identification.
- **Evidence:** a table of the project's analyses bearing on the hypothesis —
  `Analysis` (AN-ID, linked) · `Bearing` (Supports / Against / Mixed / Pending)
  · `Key takeaway`. Click the analysis ID for the full design and results.
- **Open tests:** forward-looking only — analyses not yet run, or not yet
  stubbed.

The **scorecard** below rolls up the current status of every hypothesis
against the analyses (`AN-NNN`) that bear on it. Individual hypothesis pages
carry the detailed Evidence table and the Evidence-strength callout; those
may lag the scorecard until refreshed.

---

## Cluster A: Reduced-form policy effects (H1–H4)

Maps to paper §1 (Introduction reduced-form motivation) and §6
(Robustness), and to [docs/results.md](../results.md). The reduced-form
DiDiR results that motivated the paper.

- [H:price-discipline-loss](price-discipline-loss.md) — Open auctions yield
  lower negotiated prices than SME-only auctions in standardized
  procurement.
- [H:entry-thickens-pool](entry-thickens-pool.md) — Open auctions attract
  more firms and more valid bids than SME-only auctions.
- [H:distance-widens-under-open](distance-widens-under-open.md) — Open
  auctions pull in geographically distant non-SME suppliers, widening the
  average buyer-winner distance.
- [H:sme-winner-share-falls](sme-winner-share-falls.md) — Open auctions
  reduce the probability that the winner is an SME (composition shift).

## Cluster B: Price formation and decomposition (H5–H7)

Maps to paper §4 (Exclusion and the Price-Forming Pool). The structural
decomposition built on Pregão drop-outs.

- [H:exclusion-dominates](exclusion-dominates.md) — The lost-discipline
  component $|S_2-S_1|$ dominates the protected-pool offset $|S_3-S_2|$
  in the absolute price decomposition.
- [H:protected-pool-responds](protected-pool-responds.md) — Post-policy SME
  participation rises but does not recreate the competitive discipline
  supplied by the excluded non-SMEs.
- [H:ipv-clock-admissible](ipv-clock-admissible.md) — Pregão drop-out prices
  admit the maintained IPV-clock interpretation as willingness-to-supply
  observations.

## Cluster C: Static welfare and policy design (H8–H10)

Maps to paper §5 (Static Welfare and Policy Design). The welfare arithmetic
and the static price-preference benchmark.

- [H:static-welfare-loss-large](static-welfare-loss-large.md) — The full
  SME-only set-aside generates a static welfare loss of ~28.9% of the
  open-regime price in standardized non-pharmaceutical procurement at
  &lambda;=0.30.
- [H:preference-near-zero-cost](preference-near-zero-cost.md) — A 10%
  SME price preference preserves the non-SME bidders that discipline
  the price-forming pool at near-zero static welfare cost.
- [H:implied-welfare-weight-large](implied-welfare-weight-large.md) — A
  utilitarian planner needs an SME welfare weight ~2.42 to prefer the
  full set-aside over open auctions in non-pharma.

## Cluster D: Identification robustness (H11–H12)

Maps to paper §6 (Robustness) and to [docs/robustness.md](../robustness.md)
+ [docs/advanced.md](../advanced.md). The identification-robustness
gauntlet.

- [H:parallel-trends-hold](parallel-trends-hold.md) — Pre-treatment
  placebos are null; HonestDiD confidence intervals survive substantial
  M̄ violations; Lee bounds are tight around the main estimate.
- [H:no-collusion-confound](no-collusion-confound.md) — The price drop
  is not produced by post-policy changes in bidder coordination —
  Bajari-Ye, Schurter, and pair-classification screens do not flag a
  collusion shift.

---

## Scorecard

The theory-driven prediction, the intuition behind it, the analyses that
bear on it, and the current verdict. Click a hypothesis for the full design
and detailed Evidence table; click an `AN-NNN` for the backing analysis.
Status runs **Not yet tested** → **Not confirmed** / **Mixed** / **Partial**
→ **Confirmed**.

| # | Prediction | Intuition | Evidence | Status |
|---|-----------|-----------|----------|--------|
| [H1](price-discipline-loss.md) | Open auctions → lower negotiated prices than SME-only | Adding the price-forming non-SMEs back to the pool tightens the second-order statistic | [AN-001](../analyses/an-001-didir-prices.md) DiDiR &beta;=&minus;0.131 to &minus;0.133 (18m, p<0.01); [AN-007](../analyses/an-007-quantile-did.md) quantile DiD strongest at low quantiles; [AN-010](../analyses/an-010-bne-decomposition.md) structural confirms in counterfactual prices | **Partial (toward Supports)** |
| [H2](entry-thickens-pool.md) | Open auctions → more firms and more valid bids | Eligibility expansion mechanically brings non-SMEs back in | [AN-002](../analyses/an-002-didir-firms-bids.md) ~22% more firms (6m), attenuating to ~10% (18m) | **Partial** |
| [H3](distance-widens-under-open.md) | Open auctions → larger buyer-winner distance | Non-SME firms span a wider geographic radius than SMEs | [AN-003](../analyses/an-003-didir-distance.md) +12.1km on high-value items; null on low-value | **Mixed** |
| [H4](sme-winner-share-falls.md) | Open auctions → lower probability winner is SME | Non-SMEs outbid SMEs on price when allowed in | [AN-008](../analyses/an-008-gelbach-decomp.md) composition channel ~185% of Gelbach gap; [AN-009](../analyses/an-009-sme-winner-extensions.md) extensions confirm | **Partial** |
| [H5](exclusion-dominates.md) | Lost-discipline $\|S_2-S_1\|$ dominates protected-pool offset $\|S_3-S_2\|$ | The excluded non-SMEs were the price-forming bidders | [AN-010](../analyses/an-010-bne-decomposition.md) absolute exclusion share ~72% (non-pharma); [AN-017](../analyses/an-017-strict-invariance.md) survives strict-invariance | **Partial** |
| [H6](protected-pool-responds.md) | SME participation rises post-cutoff but does not close the gap | Protected firms enter; entry alone cannot replace discipline | [AN-010](../analyses/an-010-bne-decomposition.md) SME bidders roughly double; net $S_3-S_1$ remains positive | **Partial** |
| [H7](ipv-clock-admissible.md) | Pregão drop-outs admit IPV-clock interpretation | English clock + private values + truthful exit pin down willingness-to-supply | [AN-013](../analyses/an-013-pregao-dropouts.md) Turnbull NPMLE exclusion share 74%/82% (NP/PH); [AN-014](../analyses/an-014-uh-correction.md) UH-corrected ICCs 0.36–0.59, Gaussian-copula ρ_c=0.3 drifts share <5pp; [AN-015](../analyses/an-015-collusion-screens.md) Conley + BY screens flat or falling; [AN-019](../analyses/an-019-cross-modality-gpv.md) Convite GPV aligns with Pregão in load-bearing pharma non-SME pre cell (0.712 vs 0.704), other 7 cells show ~0.2 first-price wedge | **Partial (strongly supported)** |
| [H8](static-welfare-loss-large.md) | Full SME-only set-aside generates large static welfare loss | DWL$_{\mathrm{alloc}}$ + &lambda; · MCPF arithmetic at &lambda;=0.30 | [AN-011](../analyses/an-011-welfare-arithmetic.md) 28.9% of open-regime price (non-pharma); [AN-016](../analyses/an-016-pharma-boundary.md) pharma 44.8% but model-sensitive | **Partial** |
| [H9](preference-near-zero-cost.md) | 10% SME price preference preserves the price-forming pool at near-zero static cost | Eligible non-SMEs continue to discipline the price | [AN-012](../analyses/an-012-preference-benchmark.md) $\Delta p$ near zero in non-pharma at 10% preference | **Partial** |
| [H10](implied-welfare-weight-large.md) | Planner needs SME welfare weight ~2.42 to prefer full set-aside | Saez-Stantcheva inversion of the welfare-loss arithmetic | [AN-011](../analyses/an-011-welfare-arithmetic.md) implied weight 2.42 (non-pharma) | **Partial** |
| [H11](parallel-trends-hold.md) | Placebo nulls + HonestDiD survives M̄ + Lee bounds tight + staggered-DiD reproductions converge + Goodman-Bacon clean + synth pre-fit exact | DiDiR-in-reverse exploits the 2018 PGE-SP legal reversal | [AN-004](../analyses/an-004-placebo-tests.md) price placebo null; [AN-005](../analyses/an-005-lee-bounds.md) bounds &minus;0.131 to &minus;0.123; [AN-006](../analyses/an-006-honestdid.md) survives substantial M̄; [AN-018](../analyses/an-018-cs2021-staggered.md) SA 0.108 vs DDR 0.113 (Δ<0.005); [AN-020](../analyses/an-020-goodman-bacon.md) GB weight=1.000 on clean 2×2 (🟢); [AN-021](../analyses/an-021-synth-control.md) synth pre-gap 0.0000, post-ATT 0.171, placebo p=0.103 | **Partial (strongly supported)** |
| [H12](no-collusion-confound.md) | The price drop is not a collusion shift | If bidder coordination loosened post-2018, drop-outs lose the IPV interpretation | [AN-015](../analyses/an-015-collusion-screens.md) Conley realized flat NP (16.9→16.8) / falls PH (27.6→24.4); Bajari-Ye T1 falls in both (NP 2.63→1.83; PH 1.29→1.11). Differential-coordination shock rejected | **Partial (toward Supports)** |
