---
paper: bitter-pills
---

# Changelog

## Refinement pass — 2026-05-24 (disambiguation, referee-proofing, figures)

A skeptical-referee pass that disambiguated the heterogeneity, ported the
highest-value robustness diagnostics into the Online Appendix, and enriched the
documentation site with figures. Headline estimates and the identified objects
are unchanged; the main-paper exhibit set stays at four (≤5).

**Heterogeneity reframed (disambiguation).** Two referee tests separate the two
axes of the within firm-buyer-item heterogeneity:

- The **quantity** axis is the scale channel, not same-firm pricing: holding
  firm, buyer, and item fixed, the within-triple log-quantity coefficient is
  **−0.259 (SE 0.074)** and the order-size gradient collapses under a quantity
  control (`61_h4_quantity_quartiles.R`). This coefficient is now cited in
  Results §5.3.
- The **earlier-period** gap *survives* a within-triple quantity control
  (+0.117 → +0.168, *p* = 0.007) but is administrative-dearer and time-declining
  (`62_h4_period_axis.R`).
- The phrase "supplier leverage reappears in thinner and earlier markets" is
  replaced throughout paper and site by a bounded statement — the deep-market
  null is **not universal**, a residual within-firm gap persists in the **earlier
  period** — without asserting litigated-buyer leverage. The H4 hypothesis and
  finding pages are retitled "The deep-market null is not universal."

**Online Appendix — four referee-defense diagnostics added** (5 → 6 pages):

- **Bounding the null (H3, Appendix C):** a TOST equivalence test on the
  within-triple coefficient rules out broad same-firm markups above ~10.8%
  (TOST *p* = 0.070 at a 10% margin, 0.364 at 5%; MDE 12.2%; power 0.64 against a
  10% markup).
- **Multiple testing (H4, Appendix C):** Holm and Romano-Wolf step-down adjusted
  *p*-values for the below-median-quantity (0.041 / 0.053) and earlier-period
  (0.010 / 0.025) heterogeneity splits.
- **Lee-bound monotonicity robustness (H2, Appendix B):** the bounded
  litigated-over-administrative gap stays positive under extra trimming for
  monotonicity slack until the additional trim exceeds 0.60.
- **Supplier-turnover benchmark (H6, Appendix C):** a within-regime placebo
  Jaccard of 0.378 vs the cross-regime 0.268 (gap 0.109) — reallocation exceeds
  normal churn.

**Documentation site — figures added.** Four new color-blind-safe figures
(`63_site_figures.R`, numbers read from `values.tex`, no hardcoding): the within
firm-buyer-item coefficient forest (AN-003/AN-004), the urgent-vs-ordinary
coefplot (AN-001), the Lee-bound interval (AN-002), and the winner-set churn
benchmark (AN-006). Each hypothesis page (H1–H7) now embeds one hero figure after
its evidence-strength callout.

**Build fix.** Referee-test macros carrying hypothesis IDs (h2/h3/h4/h6) are
illegal LaTeX control-sequence names. Site-only diagnostics now emit to
`analysis/referee_macros.tex`, while paper-grade numbers emit to `values.tex`
with valid names. The paper had not recompiled since those scripts first ran
(deploys only copy the existing PDF), so the break was latent; both documents now
build cleanly (main 17 pp, Online Appendix 6 pp).

**Final cleanup.** The abstract's heterogeneity sentence was simplified to "the
within-firm gap reappears only in the earlier period, while order-size
differences operate through scale." The appendix now discloses the Romano-Wolf
bootstrap replications (999) and the supplier-turnover benchmark's seeded
200-split averaging. A reproducible word counter (`analysis/64_wordcount.py`)
puts the main text at **4,398 words** (4,451 with captions), well under the
JPubE 6,000-word cap, with four exhibits and a six-page appendix.

**Reproducibility run.** Re-ran the entire numbered analysis pipeline
(`analysis/run_pipeline.sh`, 23 scripts) from the prepared cache: all exit 0,
and `values.tex` plus the 31 output tables regenerate **byte-identically**
(figure PDFs differ only by an embedded timestamp; rendered content is
identical). The v10 results are fully reproducible from the cache forward.

## v9 — JPubE short paper (2026-05-24)

Current submission version: **Sourcing under Sanctions: Judicial Urgency and
Pharmaceutical Procurement Costs.**

- **Contribution.** Separates same-firm pricing from supplier-set sourcing under
  court-mandated urgent procurement. In deep repeated urgent markets the
  sanction-related cost margin does not appear as a broad same-firm markup; it
  appears through fragmented sourcing — lost scale and supplier-set
  reallocation. The deep-market null is not universal: a residual within-firm gap
  persists in the earlier period (the quantity dimension reflects scale, not
  same-firm pricing).
- **Central estimates.** Urgent-vs-ordinary margin (+5.4% negotiated price,
  ~5.4% fewer bidders, +2.1pp tender success); under-the-gun gap
  selection-bounded in **[15.9%, 21.1%]** (Lee bounds; naive 29.5%); within
  firm-buyer-item coefficient **0.035 (SE 0.041)**; modal winner differs in
  **70.2%** of item-buyer pairs; administrative orders **3.3×** larger.
- **Identification.** Lee trimming bounds on administrative-channel selection;
  within firm-buyer-item pricing test; direct winner-switching evidence;
  Rademacher wild-cluster bootstrap (p=0.0080, preferred); never-litigated
  placebo (null, −0.020); BJS event study + Honest-DiD as diagnostics.
- **Fiscal procurement-cost implication.** ~**$27.8M/yr** ($23.9–31.7M); a
  fiscal procurement-cost calculation, not a full welfare estimate.
- **Short-paper compliance.** Main paper ~5,000 words and four exhibits; Online
  Appendix five pages.
- **Site.** Restructured to mirror the project's documentation conventions:
  Hypotheses (with scorecard), Analyses (AN pages), Findings (claim-altitude),
  and Results / Robustness / Extensions / Advanced Methods.

## Earlier versions

- **v8 (sourcing-reframe).** Earlier reframing around pricing versus sourcing,
  with the under-the-gun gap and the within firm-buyer-item pricing test; the
  v10 short paper supersedes it with selection-bounded language, combined
  exhibits, and a compact appendix.
- **v7 and earlier.** Reduced-form and three-channel framings; superseded.
