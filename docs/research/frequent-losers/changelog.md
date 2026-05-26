---
paper: frequent-losers
---

# Changelog

---

## v20 submission-clean — May 23, 2026 (Current — JLEO)

**Title:** *Cheap Signals, Costly Proof: Award-Layer Evidence Triage in
Cartel Enforcement.* Canonical source: `work/v20-editor/submission_clean/`
(full integral copy of the v18-editor build, last recompiled 2026-05-25).
Headline: an **83%** bid-microdata reduction recovering **131 of 193**
adjudicated cobidders; firm-level discrimination AUC **0.864** under
temporal holdout (0.924 in-sample).

**2026-05-25 refresh.**

- **D1 horse-race re-run completed** (`scripts/36_gate_d1_harmonized.R`,
  FL14 = `tenders_count ≥ 14`). Continuous AUC **0.939** [0.932, 0.946]
  dominates binary FL14 **0.924** [0.921, 0.926]; **DeLong Z = −4.38,
  p = 1.2 × 10⁻⁵** — direction preserved, marginally tighter than the
  earlier (superseded) Z = −4.30 / p ≈ 2 × 10⁻⁵ that had been computed
  under the `> 14` (FL15) cut. AN-011, AN-015, robustness, and the
  award-bid-complementarity hypothesis page updated; the "pending the
  D1 re-run" caveats are retired.
- Site PDFs (`paper.pdf`, `online_appendix.pdf`) re-synced to the
  2026-05-25 v20-editor build (intro / validation / forensics / price-scope
  section edits + macro corrections).

**New result:**

- **AN-041 — volume-matched cobidder audit.** The "strongest remaining
  within-data audit": matching cobidders to non-cobidder FLs on
  `tenders_count` (standardized difference 0.49 → 0.00, PS nearest-neighbour
  + CEM), the within-FL profile distinctness is **not a volume artifact** —
  product HHI (d +0.47), winner-pair spread (−0.56), and median
  gap-to-winner (−0.25) hold or strengthen. Honest casualty: the AN-031
  bid-dispersion elevation collapses (+0.05, n.s.) and is dropped.
  Script `scripts/74_volume_matched_cobidder_audit.R`.
- **AN-042 — volume-matched timing audit (null).** Candidate *second*
  bid-conduct channel: pregão bid timing (revision intensity, inter-bid
  interval, last-bid position, engagement span) under the same matching.
  No dimension survives (all Wilcoxon p ≥ 0.23). Bid-conduct distinctness
  stays single-channel (gap-to-winner). Script
  `scripts/75_volume_matched_timing_audit.R`.
- **H5 promoted Mixed → Partial (strongly supported)** (structural scope).
  The structural distinctness survives volume matching (AN-041); AN-021 /
  AN-032 re-labelled as scope limits on a causal-mechanism reading the
  hypothesis does not assert. Incorporated into the manuscript: §5 body +
  Appendix D.3 ("Volume-Matched Within-FL Profile") + `\valVM*` macros.
  Confirmed still blocked by the non-BEC replication constraint.

**JLEO editorial optimization pass (main paper 42 → 40 pp):**

- Abstract microcorrection: "exposure audits" → "validation audits";
  "procurement overlap" → "opportunity-set exposure".
- Section 4 sharpened: the **Three-Classifier Timing Battery** and the
  **Universe-Anchored Scope Matrix** moved from the main text to
  **Appendix D** (D.6 and D.4); the full sham-FL distribution and the
  price-coefficient-under-sham moved to D.2. Main text keeps the compact
  *Validation Architecture* threat table.
- Section 7 re-downgraded to scope/limits: the monetary-scope range
  (R\$ figures / % of spending) and the full selection/within-cell
  decomposition table moved to **Appendix E** (E.3 and E.2); a bounded
  one-sentence pointer remains in the main text.
- Mechanism-identification language softened throughout to **descriptive
  scope evidence that does not identify a mechanism, a causal price effect,
  overcharges, or damages**.

**Site reconciliation (this version):**

- H8 ([price-scope-sign-reversal](hypotheses/price-scope-sign-reversal.md))
  and AN-039 / AN-040 relabelled "selection component" / "within-cell
  component" and reframed as descriptive associations, mirroring the paper.
- Findings updated: [price-sign-reversal-scope](findings/price-sign-reversal-scope.md)
  now cites AN-039/040 (descriptive decomposition);
  [cobidders-operationally-distinct](findings/cobidders-operationally-distinct.md)
  now cites AN-041 (distinctness survives volume matching).

*Note:* the v18 entry below describes the Three-Classifier Timing Battery
and Universe-Anchored Scope Matrix as main-text Tables 3/4; this pass moved
both into Appendix D.

---

## v18 — May 2026 (JLEO submission-clean)

**Full hypothesis audit + manuscript integration:**

- All 8 hypotheses graduated to **Partial (strongly supported)** except
  H2 (Confirmed by structural design). Promotion to Confirmed for
  H1/H3/H4/H6/H7/H8 requires non-BEC replication; see the
  `COMPRASNET_PATH_TO_CONFIRMED.md` planning memo in the repo root.
- 14 new AN pages added (AN-025 through AN-038) documenting the
  formal sham permutation, cutoff sweep, subsample robustness,
  universe-anchored stratum scope matrix, standardized differences
  battery, three-classifier timing battery, firm/market persistence,
  bid-level behavioral profile, matched-heterogeneity audit, formal
  Imhof incremental DeLong, sequential gatekeeping envelope, full
  architecture cost-of-evidence matrix, K-fold CV precision stability,
  sign-reversal decomposition, and item-group cell audit.
- 38 total AN pages now with figures (19 from existing R outputs,
  4 from PDF→PNG conversion, 19 generated via new
  `scripts/gen_an_figures.py`).
- Manuscript integration: surgical inserts in §4.2, §4.3, §5.4, §7.2
  bring the new audit-chain numbers into prose. Two new tables (Table 3
  Three-Classifier Timing Battery and Table 4 Universe-Anchored
  Stratum Scope Matrix) added to §4. tab:price_scope_submission
  extended with broad-sample and overlap-cell-unweighted rows showing
  the full three-spec progression. Paper now 39 pages.
- `values.tex` extended with ~95 new macros for the new audits;
  6 macro names corrected (LaTeX names cannot contain digits).
- Site sections updated: `advanced.md` rewritten from stub to
  substantive methodological reference; `results.md` extended with
  formal sham permutation + three-classifier + scope matrix below-
  random subsection; `robustness.md` extended with placebo / scope
  matrix / CV stability / cutoff sweep / subsample / matched-het
  audit subsections; `extensions.md` extended with architecture
  cost-of-evidence matrix and three-classifier battery.

---

## v5.1 --- April 2026

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
