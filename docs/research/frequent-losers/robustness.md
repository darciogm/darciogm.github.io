---
paper: frequent-losers
---

# Robustness

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    Each check here exists to discipline the ranking — to separate any *genuine* award-layer signal from the *mechanical, anchor-agnostic co-participation exposure* that inflates it, and to map where the signal degrades. Under the reproducible non-circular label the honest finding is **deflationary**: almost all raw concentration is exposure, and within comparable opportunity sets the residual ordering is **marginal at best and not robust across designs**. The page keeps the limits in plain sight: the price-as-damages reading does not survive overlap discipline, strict-timing detection is below chance on the open platform, one case carries much of the operational headline, the bid-layer comparison is only conditionally complementary, and negative controls do **not** separate the real label from placebos. A protocol worth trusting is one whose limits are mapped as carefully as its strengths.

This page presents the decomposition and audit battery that disciplines the award-layer ranking. Each audit is reported with both what it shows **and** its limit. The validation label is the broad adjudication-anchored cobidder target (**651 positives**; the frequent-loser flag is not used to build it).

---

## 1. Opportunity-Cell Decomposition (the primary audit)

The first-order concern is **mechanical, anchor-agnostic co-participation exposure**: high-participation firms appear adjacent to anything, including a cartel, by exposure alone. The decomposition holds procurement opportunity fixed.

| Comparison | AUC | Interpretation |
|---|---:|---|
| Raw award score (continuous) | **0.761** (PR 0.143) | bundled signal + exposure |
| Within-stratum (opportunity held fixed) | **0.471** (≈ chance) | almost nothing survives |
| Nested increment over exposure | **+0.010** (DeLong $p = 0.013$) | marginal; not robust across designs |

**What it shows:** most of the raw 0.761 is exposure; holding opportunity fixed the within-stratum AUC collapses to ≈ chance. **Its limit:** the only positive is a fragile +0.010 nested increment whose significance is **not corroborated** by the permutation and matched audits below — the disciplined conclusion is that there is **no robust residual ordering net of opportunity**.

!!! note "Ranking by exposure is mechanical label encoding, not a winning model"
    Earlier drafts reported an "exposure-only model" reaching 0.905 that "out-predicts the raw score". That framing is **retired**. Ranking firms by **observed** contact reaches 0.905 only because a cobidder *is*, by construction, a firm with positive contact — this is **mechanical label encoding**, reported only to expose the inflation. The honest, **genuinely label-blind opportunity benchmark is 0.553**. The deflationary verdict does not rest on "exposure beats the score"; it rests on the **anchor-agnostic armor battery** below (Section 14).

!!! note "The deflation is a *predicted*, portable result — CV-of-T as the diagnostic"
    The over-crediting characterization (Appendix C) shows the deflation is not an accident of one platform but a **predicted** consequence of a volume-loaded score validated against a contact-defined label: the raw-AUC inflation $\Delta = \mathrm{AUC}_{\text{raw}} - \mathrm{AUC}_{\text{opp-adj}}$ is a **size-bias gap** that is increasing in the participation-volume dispersion $\mathrm{CV}(T)$ and decreasing in the adjudicated base rate (*signs only — no closed-form magnitude*). $\mathrm{CV}(T)$, computable from award data **before any bid file is opened**, is therefore a portable **diagnostic** (not a fix): high dispersion warns that a contact-anchored validation will over-credit the score, and the correct response is the within-stratum / label-blind comparison, not the raw area. The two platforms are two points on one inflation curve (BEC $\mathrm{CV}=2.79$, base rate 3.9%; federal $\mathrm{CV}=3.79$, base rate ≈ 0.5%).

---

## 2. Opportunity-Cell Permutation Null

A participation-stratified permutation reassigns the cobidder label across firms with matched procurement exposure, preserving the marginal participation distribution.

| Test | Result |
|---|---|
| Pure-exposure null (obs PR 0.143 vs null mean 0.264) | $p = 1.00$ — the exposure null *beats* the score |
| Matched-stratum label permutation (obs PR 0.143 vs null 0.137) | $p = 0.127$ — **not significant** |
| FL-enrichment within matched strata (obs 3.23 vs null 3.16) | $p = 0.067$ — **not significant** |

**What it shows:** under matched-exposure permutation the observed PR-AUC does **not** sit reliably in the upper tail; a pure-exposure null actually exceeds the score's PR-AUC. **Its limit / verdict:** the permutation battery does **not** support a residual signal. Random reassignment within exposure strata reproduces the observed concentration. This is a headline reversal relative to earlier drafts: there is no statistically robust residual increment net of opportunity.

---

## 3. Matched-Stratum Audit

Comparing cobidders to non-cobidder always-losers only within matched procurement-exposure strata removes the volume confound directly.

| Audit | Result |
|---|---|
| CEM-matched AUC (n = 6,039, 100% support) | 0.626 |
| Within-stratum $dP$(cobidder), FL14 vs non-FL | **−0.017 (negative)** |

**What it shows:** within matched strata the FL14 flag carries a **negative** change in cobidder probability — once exposure is matched, the flag does not raise cobidder likelihood. The CEM-matched AUC (0.626) is well below the raw pooled number. **Its limit:** matching on observed exposure cannot rule out unobserved selection, but the direction of the matched effect removes any volume-artifact reading in favor of the screen.

---

## 4. Strict Timing and Rolling-Origin Audits

| Test | Result | Reading |
|---|---|---|
| Strict 2009–2016 → 2017–2019, **training always-loser pool** (21,819; 651 pos) | continuous ROC ≈ **0.684**; FL14 ≈ 0.646 | weak signal among incumbents only |
| Strict split, **full platform universe** (41,444; 651 pos) | ROC ≈ **0.474** (below chance); precision@500 = recall@500 = **0** | ordering is retrospective, not prospective |
| Strict rankable incumbents (32,682; 498 pos) | ROC ≈ 0.471; precision@500 = 0 | — |
| Rolling-origin, full universe (2014–2019) | ROC ≈ 0.45–0.50 every year (worst 2015 ≈ 0.446); precision@500 = recall@500 = 0 | confirms the pattern |
| Sequential strict-timing on open platform | **infeasible** | disclosed limit |

**What it shows:** even inside the training always-loser pool the out-of-time continuous ROC is only ≈ 0.68. **Its limit:** on the full platform universe strict-timing detection is **below chance** (ROC ≈ 0.474, precision@500 = 0) in every rolling-origin year, with 23.5% of positives (153/651) being unrankable entrants. The score orders firms **retrospectively among incumbents**, not prospectively. This is **incumbent-firm triage with retrospective validation, not platform-wide prospective deployment**.

---

## 5. Leave-One-Case-Out / Leave-Largest-Case-Out

The operational headline is stress-tested for single-case dependence.

| Check | PR-AUC | Change |
|---|---:|---:|
| Full pooled | **0.143** | — |
| Leave-largest-case-out (rail/metro) | **0.090** | **−37%** |
| Leave top two cases out | 0.058 | further drop |
| Case-balanced precision@500 | 0.043 (vs pooled 0.216) | — |

**What it shows:** one case (rail/metro) accounts for **32.0%** of positives and **45.4%** of true positives at $k=500$; leaving it out drops PR-AUC by 37% (ROC stays ≈ 0.76). **Its limit:** the aggregate metrics are not a property of many independent cartels — they lean on one large, well-documented case. The **estimated BEC ranking is case-sensitive and not a portable cartel score**; the durable object is the audit protocol and its portable principle. Clustered randomization inference at item-group × year is significant for ROC/PR/precision but not for coverage ($p = 0.103$).

---

## 6. Leakage and Contamination Audit (anti-leakage transparency)

Because positives are defined through shared tender-items, naïve item-level evaluation is partly tautological. We report contamination-robust variants.

| Audit | ROC / PR | Interpretation |
|---|---:|---|
| Award continuous, random CV (pool A) | 0.760 / 0.143 | reference |
| Award continuous, **case-grouped** folds | 0.760 / 0.143 | stable to case grouping (ROC); PR equal |
| Excl. label-defining tenders (contamination removed; 569 pos retained) | 0.829 / 0.156 | stable after removing label-defining overlap |
| Same continuous score, direct-CADE binary label | 0.49 | confirms loser-side scope, not winner-side |

**What it shows:** removing the label-defining tenders does not collapse the score (ROC 0.829, PR 0.156 on the retained positives), so the pooled discrimination is not pure tautology. **Its limit:** even the contamination-robust pooled numbers still embed mechanical co-participation exposure; the disciplined object remains the within-stratum AUC (≈ chance), not these pooled values.

---

## 7. Bid-Benchmark Comparison (conditional complementarity)

A transparent bid-moment random-forest benchmark inspired by Imhof–Wallimann-style screens is compared with the award layer on a single pool (16,731 firms, all 651 positives retained).

| Model | Random-CV ROC / PR | Case-grouped ROC / PR |
|---|---:|---:|
| Award continuous | 0.760 / 0.143 | 0.760 / 0.143 |
| Award FL14 binary | 0.688 / 0.098 | — |
| Bid RF (Imhof moments) | 0.717 / 0.116 | **0.626 / 0.062** |
| Combined RF | 0.756 / **0.188** | **0.689 / 0.103** |

**What it shows:** award ≈ bid on the pooled diagnostic; the combined model beats award-only on PR under random CV (0.188 vs 0.143). **Its limit:** under case-grouped folds the combined model **falls below** award-only (0.103 vs 0.143). The complementarity is **conditional on this implemented benchmark and case-fragile**, never a claim that the award layer dominates or substitutes for bid forensics. (Award–bid Spearman 0.544; same-sample gatekeeping pool: imhof_full 0.665, fl_only 0.665, combined 0.727.)

---

## 8. Cutoff Sweep (the frontier, not a cutoff)

The FL threshold is **administrative** (median + 1.5 × IQR ≈ 14), not structural. The continuous primitive $\log(1+\text{tenders\_count})$ is the score; the binary flag is its coarsening.

| Multiplier | FL Firms |
|:---:|:---:|
| 1.0× | 3,442 |
| **1.5× (baseline)** | **2,735** |
| 2.0× | 2,093 |
| 3.0× | 1,456 |

**What it shows:** the ranking is by the continuous score; the binary cutoff is an operational coarsening, not the object of inference. **Its limit:** the FL14 cut carries no ontological status — it is an administrative operating point, and (as Section 1 shows) even the continuous score carries no robust residual ordering net of opportunity. The relevant operating object is the **cost-recall frontier**, where each $K_1$ is one operating point (e.g. at $K_1 = 2000$: firm reduction 88.1% but bid-row reduction only 32.7%; $K_1 = 1000$ beats $K_1 = 2000$), not a single optimal cutoff.

---

## 9. Clustered Randomization Inference

Cluster-robust randomization inference at the item-group × year level disciplines the price and discrimination inference against within-cluster dependence.

**What it shows:** the discrimination metrics survive clustered RI for ROC, PR, and precision ($p = 0.001$ each). **Its limit:** the case-coverage statistic does **not** survive ($p = 0.103$) — consistent with the single-case dependence above — and RI tests sharp nulls against the observed assignment; it does not recover a structural treatment effect.

---

## 10. Negative-Control Audit (controls corroborate the opportunity account)

Placebo and high-volume-winner controls test whether the real label separates from constructs that share its exposure profile but not its adjudication anchor.

| Control | Result |
|---|---|
| Real label vs participation-matched placebo | real ROC 0.761 ≈ placebo 0.755, $p = 0.46$ — **no separation** |
| High-volume-winner null label | ROC 0.78, $p = 0.91$ — **no separation** |

**What it shows:** the real adjudication-anchored label does **not** separate from exposure-matched placebos. **Its limit / verdict:** rather than validating a cartel-specific signal, the negative controls **corroborate the opportunity account** — what the raw score picks up is participation/exposure, shared by placebo and real labels alike.

---

## 11. Pricing-Imprint Audits (scope, not damages)

The paper does not rest on price. These audits show the price object is **scope**, not overcharge.

### Overlap discipline reverses the sign

| Estimator | Coefficient | Reading |
|:---|:---:|:---|
| Broad-sample OLS (item + year + PBU FE) | +0.064 | selection into higher-price cells |
| **Overlap-cell ATT** | **−0.097** ($p < 0.001$) | blocks the markup reading |
| Q4 (largest tenders) | +0.041 ($p = 0.045$) | only positive cell — scope heterogeneity |
| Direct-CADE label | null | no damages base |

**What it shows:** the broad-sample positive does not survive overlap discipline; within genuinely comparable cells the sign reverses. Only Q4 (largest tenders) carries a positive imprint. **Its limit:** the cover-bidding **"theater" mechanism is not identified** — within comparable cells the price variation loads on **genuine-bidder count**, not on FL presence. The data are consistent with cover bidding but do not isolate it.

### Sensitivity to unobservables

| Metric | Value | Interpretation |
|---|---:|---|
| Cinelli–Hazlett $RV_{q=1}$ | 17.5% | a confounder would need to explain ≥17.5% of residual variation in both FL and prices |
| Oster $\hat{\delta}$ | degenerate (261.6) | PBU FE barely move $R^2$ |

These bound the broad-sample association; they do not rescue a damages reading, which overlap discipline already blocks.

---

## 12. Dilution Sensitivity — Contact-Intensity Label (contact ≥ 2)

A pre-registered sensitivity re-runs the decomposition on a higher-contact label (only positives that share ≥ 2 tender-items with a defendant; 368 positives), to test whether the deflationary verdict is an artifact of diluting the label with single-contact firms.

| Quantity | Value |
|---|---|
| Raw ROC | 0.854 |
| Exposure-only ROC (exposed-logit / unconditional) | 0.873 / 0.956 |
| Within-stratum ROC | 0.506 (≈ chance) |
| Nested increment over exposure | +0.003 ($p = 0.47$) |
| Matched-stratum label permutation | $p = 0.39$ |

**What it shows:** restricting to higher-contact positives raises the *raw* ROC (0.854) — exactly as opportunity mechanics predict (more contact ↔ more participation) — but the within-stratum AUC is still ≈ chance and the nested increment is not significant. **Its limit / verdict:** the **dilution objection is dead**. The deflationary finding is not an artifact of low-contact positives; even on the high-contact label there is no robust residual signal net of opportunity.

---

## 13. Survival / Exit-Margin Audit (Online Appendix)

A maintained-assumption check on persistence, **not** a structural identification.

| Quantity | Value |
|---|---|
| Cobidder exit-hazard ratios | ~0.155 / 0.368 (persist longer) |
| Exit margin | $\lambda_C > \lambda_G$ |

**What it shows:** cobidders persist on the platform longer than non-cobidder always-losers, consistent with sustained cover-side participation. **Its limit:** $\lambda_C > \lambda_G$ is a **maintained assumption**, not structural identification of cartel membership; differential survival has non-cartel explanations.

---

## 14. Audit-of-the-Audit Armor Pack (anchor-agnostic battery)

This is the decisive evidence for the deflationary verdict — and it is built to be falsifiable. All four results are regenerated under `outputs/diagnostics/audit_armor/` (scripts `12_audit_armor.R` + `12b_audit_armor_fixup.R`).

### 14.1 Exposure tiers — the benchmark is an upper bound, not a winning model

| Exposure tier | ROC | What it ranks by |
|---|---:|---|
| Observed contact $O_i$ | **0.905** | mechanical: a cobidder *is* a firm with $O_i>0$ |
| Plug-in expected contact $E_{\text{plug}}$ | **0.985** | mechanical: plug-in still sees the label |
| Firm-leave-one-out expected contact $E_{\text{firm-LOO}}$ | **0.855** | upper bound on opportunity's role |
| **Genuine label-blind opportunity** | **0.553** | the honest opportunity benchmark |

**What it shows:** the 0.905/0.985 figures are **mechanical label encoding**, reported only to expose inflation; once contact is computed label-blind, opportunity ranks the label at just **0.553**. The retired claim that "exposure is the better model that out-predicts the score" was itself partly mechanical and is removed.

### 14.2 Falsifiability — positive control + granularity stability

| Test | Result | Reading |
|---|---:|---|
| Positive control: $O_i$ within MEDIUM strata | **0.953** | the design *detects* residual signal when one exists |
| Within-stratum sweep (E-LOO): COARSE / MEDIUM / STRICT | 0.508 / 0.493 / **0.600** | stable across granularities ($N$ 15,246 / 2,213 / 615) |
| Within-stratum on label-blind $E$ (all AL / exposed) | 0.722 / 0.665 | generic co-participation geometry |

**What it shows:** the within-stratum test is **not** dead by construction — when a genuine residual is planted ($O_i$ positive control) it recovers AUC 0.953. The real label's within-stratum AUC (0.49–0.60) is therefore an informative non-detection, not an artifact of over-conditioning.

### 14.3 Powered permutation — non-rejection bounds the residual

| Within-AUC alternative | Power (α = .05) |
|---|---:|
| 0.52 | 0.28 |
| **0.55** | **0.97** |
| 0.60 | 1.00 |
| (size at the null) | 0.05 |

**What it shows:** the permutation test is correctly sized (0.05 at the null) and has **power 0.97 at a within-AUC of 0.55**. The observed non-rejections therefore bound any residual ordering at **below ≈ 0.55** — the failure to detect is genuine, not underpowered.

### 14.4 Label-frozen timing — generic contact forecasting, not cartel-specific

| Design (pool + score + label frozen on 2009–2016) | AUC |
|---|---:|
| Frozen incumbent pool | 13,051 firms |
| **Prospective new-contact** (231 positives) | **0.713** |
| Retrospective (582 positives) | 0.718 |

**What it shows:** with pool, score, and label all frozen in 2009–2016, the score forecasts *future co-participation contact* at ≈ 0.71 — but the prospective and retrospective AUCs are nearly identical, so this is **generic contact forecasting, not cartel-specific prediction**. Consistent with the negative controls (placebo $p = 0.46$; non-CADE high-volume-winner anchors 0.78 > real, $p = 0.91$).

!!! note "Provenance"
    All armor results: `outputs/diagnostics/audit_armor/` (scripts `12_audit_armor.R`, `12b_audit_armor_fixup.R`). Defendant roles regenerated alongside: 14.9% always-losers, median win rate 0.261; cobidders have win rate ≡ 0 by construction.

---

## 15. Federal Robustness Block (ComprasNet)

<!-- REVISED: v23 two-platform extension (ComprasNet) 2026-06-06 -->

The full deflation battery is re-run on federal **ComprasNet** (2013–2019, pure Pregão). The headline federal verdict and side-by-side comparative table live on the [results](results.md#7-the-audit-on-a-second-platform-comprasnet) page; this block reports the federal-specific robustness checks that discipline that verdict.

!!! warning "Partially overlapping legal anchors (provisional)"
    The seven federal CADE cases are the **same cartels** as the BEC portfolio, anchored at the federal establishment level — **partially overlapping legal anchors**, not independent ground truth. The federal leg tests portability of the *protocol* and the *construct*; it is provisional and promotes nothing to Confirmed. Where this page diverges from the paper, the paper wins.

### 15.1 Contact-intensity sensitivity (contact ≥ 2)

A pre-registered sensitivity restricts the federal cobidder label to firms that share **≥ 2** tender-items with a direct defendant, removing the "loose 1-contact rule" objection.

| Quantity | Value |
|---|---|
| Positives retained ($N^+$) | **108 of 195** (55.4%) |
| Within-stratum residual | **0.432** (below chance) |
| Matched-stratum permutation $p$ | **0.951** (not significant) |
| Pre-adjustment AUC (raw, exposure-only) | both *rise* on the cleaner, more exposure-loaded set |

**What it shows:** restricting to higher-contact positives raises the *raw* AUC (as opportunity mechanics predict — more contact ↔ more participation), but the within-stratum residual stays **below chance** and the matched-permutation does not reject. **Its limit / verdict:** the deflation reading is **consistent** with BEC's contact ≥ 2 sensitivity; the dilution objection is closed on both platforms.

### 15.2 SRP vs. regular-pregão stratification

Federal Pregão splits into ~15% regular electronic auction and ~85% price-registration (SRP). Stratifying tests whether the pooled federal reading is an artifact of the SRP-heavy mix. The pooled construct is held fixed across strata.

| Quantity | Regular Pregão | SRP |
|---|---:|---:|
| Raw award-layer ROC | **0.748** | **0.703** |
| Exposure-only ROC | 0.859 | 0.874 |
| FL32-binary ROC | **0.656** | **0.641** |

**What it shows:** raw, exposure-only, and FL32-binary discrimination are **cross-stratum consistent** (gaps 0.045 / 0.015 / 0.015); both strata clear the audit gates (regular 3,546 / SRP 4,069 firms). **Its limit:** the script-13 within-(year×buyer)-cell C-statistic is a **different estimand** (it leaves exposure free to vary, re-encoding the raw signal) and is **not published** alongside the exposure-stratum within column; the SRP answer rides on the comparable raw / exposure-only / FL32 rows above.

### 15.3 Case-exclusion and data-quality filters

| Filter | Effect | Status |
|---|---|---|
| **TI/DF unnumbered summary case excluded** | Only federal-only anchor dropped (lacks firm-level identification); v3-reinstatement reproduces bit-for-bit | disclosed; effect known and non-strategic |
| **Junk / sentinel CNPJ filter** | Sentinel CNPJ `000000000000-2` dropped in the 2026-06-05 target-quality fix (196 → 195 broad-AL; 95 → 94 FL) | applied |
| Establishment-anchored grain (vs raiz) | 195 establishment-anchored is the main target; the 195-vs-222 gap is **entirely** the TI/DF exclusion + 1 junk CNPJ — the establishment-vs-raiz grain contributes **0** | decomposed |

### 15.4 The estimand wall (raw-timing vs opportunity-adjusted)

!!! note "Two different estimands — mutually consistent, not contradictory"
    The federal **raw-timing** rows (strict full-universe 0.489 / training-AL incumbent-pool continuous 0.666) measure the **temporal stability of the unadjusted screen** over the firm universe. The **opportunity-adjusted within-cell** rows (within-stratum 0.462; nested +0.005, $p = 0.191$; matched-permutation $p = 0.906$) measure **residual discrimination after netting out exposure** within matched cells. These are **different estimands on different samples**: a high raw-timing AUC and a null adjusted increment are **mutually consistent, not contradictory**. The timing rows are marginal *unadjusted* discrimination; the deflation rows are residual discrimination net of opportunity. (Federal MEDIUM cells = year × buyer/UASG; the item-group margin is not observed federally, so federal cells are one margin **coarser** than BEC — the null is conservative a-fortiori.)

---

## Robustness Summary

| Object | Audit | Result |
|:---|:---|:---|
| **Opportunity decomposition** | within-stratum AUC; permutation null; matched stratum | within-stratum ≈ **chance**; only a fragile +0.010 nested increment; **no robust residual** net of exposure |
| **Scope boundary** | direct-CADE label | binary **0.49**; continuous score 0.66–0.70 |
| **Timing** | strict split; rolling-origin | training-pool ≈ 0.68; **below chance (≈ 0.47)** on full universe; precision@500 = 0 |
| **Single-case dependence** | leave-largest-case-out | PR-AUC −37%; one case ≈ 32% of positives; ranking case-sensitive |
| **Bid-layer comparison** | random vs case-grouped CV | comparable (0.760 vs 0.717); combined beats award on PR random-CV but **below** award under case-grouped folds |
| **Negative controls** | placebo / high-volume-winner | **no separation** ($p = 0.46$ / $0.91$) — corroborate opportunity account |
| **Armor: exposure tiers** | observed → label-blind | 0.905/0.985 mechanical; **label-blind opportunity 0.553** |
| **Armor: falsifiability** | positive control + sweep | $O_i$ recovers **0.953**; real label within-stratum 0.49–0.60 |
| **Armor: powered permutation** | size + power | size 0.05; **power 0.97 @ within-AUC 0.55** → residual < ~0.55 |
| **Armor: label-frozen timing** | frozen pool/score/label | prospective **0.713** ≈ retrospective 0.718 — generic contact forecasting |
| **Cost-recall** | cutoff sweep / frontier | no optimal $K$; firm 88.1% vs bid-row 32.7% at one operating point |
| **Dilution sensitivity** | contact ≥ 2 label | deflationary verdict holds; within-stratum ≈ chance, increment $p = 0.47$ |
| **Pricing imprint** | overlap discipline; sensitivity | scope not damages; sign reverses; **mechanism not identified** |
| **Federal: second-platform audit** | full battery re-run on ComprasNet | deflation **replicates** (provisional, partially overlapping anchors); exposure-only 0.754 ≥ raw 0.744; within-stratum 0.462; nested $p = 0.191$; controls $p = 0.258/0.582$ |
| **Federal: contact ≥ 2** | dilution sensitivity | consistent — within-stratum 0.432, perm $p = 0.951$ |
| **Federal: SRP vs regular pregão** | modality-mix stratification | consistent — raw 0.748 vs 0.703, FL32 0.656 vs 0.641 |

The audit battery disciplines the ranking rather than defending a detector. The honest result: under a reproducible non-circular label, cheap award-layer records carry **no robust cartel-ordering signal net of opportunity** — they support **incumbent-firm triage with retrospective validation**, not platform-wide prospective deployment, do not prove conduct, cannot reach win-heavy defendants via the binary flag, order below chance out-of-time on the open platform, and lean heavily on a single case. **Re-running the same audit on a second federal platform (ComprasNet) with partially overlapping legal anchors returns the same deflationary verdict** — provisionally, since the federal anchors are the same cartels as BEC's and the federal positives are case-concentrated — so what ports across the two platforms is the **audit protocol and the loser-side construct, not a deployable score**.
