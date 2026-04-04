---
paper: frequent-losers
---

# Changelog

---

## v5.1 --- April 2026 (Current)

**Referee-report edits (mr-frequent review):**

- Fixed combined AUC (0.502 → 0.608): included omitted z_skew component in combined score
- Added "Why combination degrades" paragraph explaining AUC = 0.61 as empirical signature of Regime 2
- "nearly orthogonal" → "largely non-overlapping" with theoretical ceiling note (corr/max ≈ 1/5)
- "lower bound" → "conservative estimate" for cross-fit
- Sample size clarified: body reports 1,654,447 (full sample) with footnote explaining 1,654,401 (prices) and 1,653,156 (non-FL firms)
- AUC interpretation: added sentences clarifying AUC reflects high-participation proximity, not conditional discrimination
- Measurement error: "Classical binary ME" → explicit assumption that FP > FN justifies attenuation direction
- Bajari--Ye tender FE: acknowledged ambiguity ("suggestive but not definitive")
- Fixed pre-existing LaTeX bug in `tab_fl_crossfit.tex` (unescaped underscores)
- Updated MkDocs site to reflect all changes

---

## v5 --- April 2026

**JLE repositioning and institutional framing:**

- Repositioned for Journal of Law and Economics (institutional framing throughout)
- Abstract leads with minimum-bidder rules giving cartels a reason to deploy cover bidders
- Price range narrowed to **3.6--7.7%** (cross-fit, OLS, matching), replacing 4--21% from v4
- IV (19.4%) reframed as **measurement-error diagnostic**, not a primary estimate
- Finding now Regime 2 (coordinated), not Regime 1 (complementary): $\sigma_c / \sigma_g = 0.72$
- $\gamma > 0$: strategic complementarity (more cover bidders in MORE competitive tenders)
- Convite 3.8% vs pregao 9.3% --- larger where voluntary, signal dilution in convite
- AUC = 0.94 against CADE convictions (primary validation)
- Horse-race: correlation 0.06 with Imhof-style CV proxy; FL rises to 0.084 when CV added

**New content:**

- Three new figures: corner solution, dispersion paradox, enforcement flowchart
- Five JLE-relevant references added (Posner 1970, Caoui 2022, Ghosal & Sokol 2014, Harrington 2015, Baranek & Titl 2024)
- Lei 14.133/2021 discussion with two testable predictions
- Three-stage enforcement pathway (screen, triage, investigate)
- Welfare reframed as cost-benefit of screening deployment
- 12.5x gradient in oversight heterogeneity across PBU size quartiles
- Minimum-bidder constraint variation: 7.6% voluntary premium vs. $-0.160$ forced interaction
- Five supporting diagnostics (M1--M5) with joint assessment
- Non-claims paragraph and explicit limitations section

**Tables and figures:**

- 35+ tables, 26 figures
- ~56 pages, natbib/bibtex compilation

**Pipeline:**

- 24 R scripts (22 numbered + `figures_new.R` + `00_setup.R`), full pipeline in ~8 minutes
- New scripts: `14_quality_checks.R` through `22_threshold_heatmap.R` plus `figures_new.R`

---

## v4 --- March 2026

**Manuscript:**

- Rewrote contributions paragraph with explicit H1/H2 structure and scope limitation
- Softened over-claims throughout (9 instances: "establish" to "show", "confirming" to "indicating")
- Expanded IV section: preferred spec declaration, lambda interpretation, LATE discussion
- Bajari--Ye restructured around 3 sequential claims with magnitude hedge
- DiD shrunk to 2 paragraphs (complementary, underpowered)
- Mechanisms: added connective sentences and bridge paragraph
- Heterogeneity: relabeled "high/low-suspicion" to "concentrated/competitive-market FL"
- Added robustness roadmap paragraph (6 groups)
- Added implementation blueprint (Flag, Triage, Investigate, Monitor)
- Added enforcement integration and legal boundary sentences
- Abstract trimmed to 136 words with policy contribution sentence
- Broader implications paragraph added to conclusion
- Float numbering fixed: appendix counters reset (A.1, B.1, etc.)
- Added missing cross-references for 3 main-body floats

**Tables and figures:**

- 35 tables (12 main body, 23 appendix)
- 14 figures (6 main body, 8 appendix)
- 59 pages, 0 errors, 0 undefined references

**Pipeline:**

- 13 R scripts, full pipeline in ~8 minutes
- New tables: IV balance, IV Panel C, Bajari--Ye tender FE, network interactions, homogeneous CV, welfare bounds (updated)

---

## v3 --- February 2026

- CADE validation section with CNPJ enrichment (3 FL firms matched)
- Network-split IV regressions
- Bajari--Ye tender fixed effects specification
- Homogeneous sub-samples via price-CV approach
- Welfare analysis with cross-fit bounds
- Staggered DiD with MDE and Rambachan--Roth sensitivity

---

## v2 --- January 2026

- Bajari--Ye exchangeability and conditional independence tests
- Network-based FL classification (winner HHI, repeat partners)
- Regime test: complementary vs. coordinated cover bidding
- Sensitivity analysis (Cinelli & Hazlett, 2020)
- Matching estimators (CEM and IPW)
- Year-by-year coefficient stability

---

## v1 --- December 2025

- Initial manuscript with OLS and IV regressions
- FL definition (always-losers + IQR threshold)
- Leave-one-out instrumental variable
- 18 tables, 6 figures
- Threshold sensitivity and cross-fitting robustness
