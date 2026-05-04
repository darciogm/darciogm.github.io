---
paper: bitter-pills
---

# Changelog

## v6-jpub-short — macroization pass (2026-05-04)

- **Title finalized:** "Bitter Pills: Judicial Enforcement and the Cost of Public Procurement in Brazil" (replaces working title "Bitter Pills to Swallow: The Enforcement Costs of Health Litigation").
- **Macroized manuscript:** every numerical claim, sample size, table input and figure path resolves through `manuscript/paper/values.tex`. Each analysis script (v4: 00, 01, 03, 04, 06, 08, 11; v6: 20, 30, 31, 32, 33, 34) emits its block at end of run; manuscript prose is regenerable from code with zero hand-editing. 173 unique macros referenced, 11 auto-generated blocks, 0 TBD leaks across 4 PDFs (main, submission, OnlineAppendix, cover_letter).
- **Drift bugs closed by macroization:**
    - `qty-on-admin` coef cited in prose was 0.787 (item+year, no PBU FE) but the paper reports preferred = item+year+PBU everywhere else. Preferred coef is **1.203** (administrative orders are roughly **3.3× the size of litigated orders**).
    - Dose-response prose claimed a **monotonic-then-plateau** pattern that the data did not support; refreshed run gives **6.8% / 12.4% / 10.5%** with mid-vs-hi $z = 0.60$ (overlapping ICs). Reframed as a **saturating dose-response**, with the indistinguishability test moved to a footnote.
    - UTG range "23–30%" was a loose claim. Now computed as min..max sweep across 4 specs (col 1 item only → col 4 item+ym+PBU = **23.2%–30.4%**). Total effect paragraph rewritten to expose the sweep.
- **New §A.7 Regex Classifier Validation** in Online Appendix; `\BPregexValidationStatus` placeholder is promoted to a quantified F1 sentence once `validation_sample.csv` is hand-labeled.
- **Cross-ref bugs fixed:**
    - `tab_placebo.tex` and `tab_supplier_fe.tex` were emitted by `etable` without `\caption`/`\label`, so `\ref{tab:placebo}` and `\ref{tab:supplier_fe}` rendered as `Table ??`. Script 20 now wraps in `\begin{table}` + `\caption` + `\label`.
    - OnlineAppendix referenced `sec:institutional` from the main paper without `xr-hyper`, rendering `Section ??`. Added `\externaldocument{main}`.

## v6-jpub-short (2026-04-03)

- **Target:** Journal of Public Economics short paper format.
- **Body:** Compressed from 5,263 to 3,800 words.
- **Literature review:** Collapsed from 5 paragraphs to 1.
- **Heterogeneity:** Moved entirely to Online Appendix.
- **New empirical exercises:**
    - **Placebo test** (items never litigated): coefficient $-0.020$ (SE = 0.032, n.s.) for negotiated prices, $-0.031$ (SE = 0.045, n.s.) for reference prices. Falsification passes.
    - **Supplier fixed effects** (2,202 firms): 52% attenuation of urgency coefficient (0.051 to 0.025). With firm FE + quantity controls, residual falls to 0.011 (n.s.). Decomposes premium into roughly equal demand-side and supply-side components.
- **UTG Panel B:** Explicitly framed as quantity channel --- sanctions distort the entire procurement environment.
- **Conclusion:** Sharpened to two-pronged reform (expand admin mechanism + remove court-order signal from tender notices).
- **Reference fix:** Szucs reference corrected (now JEEA 2024).
- **New script:** `20_falsification_and_supplier_fe.R`.
- **MkDocs:** Updated results, paper, replication, and changelog pages.

## v8 (2026-02-28)

- **Maps:** Enhanced maps with SIRGAS 2000 projection and quintile breaks for litigated, administrative, and ordinary purchases. New 3-panel comparison map.
- **Regressions:** Administrative vs ordinary — 40 models (8 outcomes x 4 FE specs + LPM variants). Key finding: admin purchases carry *lower* reference prices than ordinary (-9.1%).
- **Manuscript:** Restructured to 24-page body (under 32pp target) with 5 tables/figures inline; all other results in appendix. Added admin vs ordinary section.
- **MkDocs:** New pages for admin vs ordinary results, maps comparison, and changelog.

## v7 (2026-02-28)

- **UTG Extended Outcomes:** Reference prices, quantities, bidder participation, and tender success added to Under the Gun analysis (24 new regressions).
- **Litigated vs Ordinary:** All 8 urgent purchase outcomes replicated for litigated-only comparison (32 new regressions).
- **Figures:** Two new coefficient plots (UTG all outcomes, litigated-only).
- **Manuscript:** Expanded Results section with UTG subsections and litigated-only section.
- **Replication Package:** New script 16_v7_extensions.R, updated run_all.sh and README.

## v6 (2026-02-26)

- Initial public version with replication package, MkDocs website, and complete v4 analysis pipeline.
