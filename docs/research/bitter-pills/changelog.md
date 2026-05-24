---
paper: bitter-pills
---

# Changelog

## Refinement — heterogeneity disambiguation (2026-05-24)

- **Thin/early heterogeneity reframed.** Two referee tests disambiguate the
  within firm-buyer-item heterogeneity. The **quantity** axis is the scale
  channel, not same-firm pricing: the within-triple log-quantity coefficient is
  −0.259 and the order-size gradient collapses once quantity is held fixed
  (`61_h4_quantity_quartiles.R`). The **earlier-period** gap *survives* a
  within-triple quantity control (+0.117 → +0.168, *p* = 0.007) but is
  administrative-dearer and fades over time (`62_h4_period_axis.R`). The phrase
  "supplier leverage reappears in thinner and earlier markets" is replaced
  throughout the paper and site by a bounded statement: the deep-market null is
  not universal — a residual within-firm gap persists in the earlier period —
  without asserting litigated-buyer leverage.
- **Build fix.** Referee-test macros carrying hypothesis IDs (h2/h3/h4/h6) are
  illegal LaTeX control-sequence names; they are emitted to
  `analysis/referee_macros.tex` (site-only) and kept out of the paper's
  `values.tex`.

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
  v9 short paper supersedes it with selection-bounded language, combined
  exhibits, and a compact appendix.
- **v7 and earlier.** Reduced-form and three-channel framings; superseded.
