---
paper: frequent-losers
---

# Robustness

!!! abstract "Intuition (plain-language)"
    Each check here exists to discipline the ranking — to separate the *genuine* award-layer signal from the *opportunity arithmetic* that inflates it, and to map where the signal degrades. The honest finding is that most raw concentration is exposure; a limited but real increment survives. The page keeps the limits in plain sight: the price-as-damages reading does not survive overlap discipline, strict-timing detection is infeasible on the open platform, one case carries most of the operational headline, and the bid-layer complementarity is leakage-sensitive. A screen worth trusting is one whose limits are mapped as carefully as its strengths.

This page presents the decomposition and audit battery that disciplines the award-layer ranking. Each audit is reported with both what it shows **and** its limit.

---

## 1. Opportunity-Cell Decomposition (the primary audit)

The first-order concern is **opportunity arithmetic**: high-participation firms appear adjacent to anything, including a cartel, by exposure alone. The decomposition holds procurement opportunity fixed.

| Comparison | AUC | Interpretation |
|---|---:|---|
| Pooled / exposure-only | **0.946** | exposure arithmetic alone reaches this |
| Within-stratum (opportunity held fixed) | **0.7715** | genuine signal after stripping exposure |
| Increment over mechanical exposure | **+0.042** (DeLong $p \approx 2\times10^{-6}$) | the disciplined object |

**What it shows:** most of the raw 0.946 is opportunity; a limited but statistically real signal (+0.042) survives stratification. **Its limit:** the within-stratum AUC of 0.7715 is far below the pooled number — the screen is a *ranking* aid, not a detector.

---

## 2. Opportunity-Cell Permutation Null

A participation-stratified permutation reassigns the cobidder label across firms with matched procurement exposure, preserving the marginal participation distribution.

**What it shows:** the observed within-stratum increment sits in the upper tail of the permutation null ($p < 0.001$); random reassignment within exposure strata does not reproduce the +0.042 increment. **Its limit:** the null tests against *exposure-matched* random reassignment, not against alternative non-cartel mechanisms that could also correlate with persistent losing.

---

## 3. Matched-Stratum Audit

Comparing cobidders to FL non-cobidders only within matched procurement-exposure strata removes the volume confound directly.

**What it shows:** the within-stratum discrimination (0.7715) is robust to the matching specification; what survives is not a volume artifact. **Its limit:** matching on observed exposure cannot rule out unobserved selection into persistent participation.

---

## 4. Strict Timing and Rolling-Origin Audits

| Test | Result | Reading |
|---|---|---|
| Strict 2009–2016 → 2017–2019, **always-loser pool** | ROC ≈ **0.77** | signal survives among incumbents |
| Strict split, **full platform universe** | ROC ≈ **0.55**; precision@500 ≈ **0** | ordering is retrospective, not prospective |
| Sequential strict-timing on open platform | **infeasible** | disclosed limit |

**What it shows:** within the always-loser pool the screen still orders firms out-of-time (≈ 0.77). **Its limit:** on the full platform universe strict-timing detection collapses (ROC ≈ 0.55). The screen orders firms **retrospectively among incumbents**, not prospectively. Rolling-origin variants confirm the same pattern. This is disclosed as a structural limit, not a tuning artifact.

---

## 5. Leave-One-Case-Out / Leave-Largest-Case-Out

The operational headline is stress-tested for single-case dependence.

| Check | PR-AUC | Change |
|---|---:|---:|
| All cases | **0.126** | — |
| Leave-largest-case-out (rail/metro) | **0.036** | **−71%** |

**What it shows:** one case (rail/metro) accounts for ~**55%** of positives; leaving it out drops PR-AUC by 71%. **Its limit:** the aggregate metrics are not a property of many independent cartels — they lean on one large, well-documented case. The paper reports this concentration as a first-order limit on generalization.

---

## 6. Leakage Audit (anti-leakage transparency)

The in-sample item-level AUC is partly tautological by construction. The audit decomposes it; we report the honest range as transparency, **not** as a triumph.

| Audit | AUC | Interpretation |
|---|---:|---|
| In-sample (full pool) | 0.995 | reference; partly tautological |
| 5-fold CV at cobidder-firm level | 0.891 | removes cobidder-included tautology |
| Temporal holdout (train 2009–2016) | 0.864 | removes same-period over-fitting |
| Same score, direct-CADE label | ≈ 0.49 | confirms loser-side scope, not winner-side |

**What it shows:** the decomposition strips the tautological component; the residual is the loser-side, exposure-inflated pooled figure — which the opportunity decomposition (Section 1) then further discounts to the within-stratum 0.7715. **Its limit:** even the audited pooled numbers (0.86–0.89) still embed opportunity arithmetic; the disciplined object remains the within-stratum +0.042, not these pooled values.

---

## 7. Bid-Benchmark Leakage Audit (complementarity)

The award + bid combination (0.962 vs Imhof 0.888) carries non-redundant information, but the increment is leakage-sensitive.

| Model (same CV sample) | AUC |
|---|---:|
| Imhof–Wallimann pipeline (alone) | 0.888 |
| Frequent-loser flag (alone) | 0.921 |
| Combined | 0.962 |

**What it shows:** the combined specification exceeds the bid benchmark — **complementarity**, the two layers do different jobs (award ranks where to look; bid evaluates what is found). **Its limit:** the increment is **leakage-sensitive**; under same-sample audit where every detector evaluates the identical firm subset with computable bid features, the contribution narrows. We report this as complementarity, never as the award layer dominating or substituting for bid forensics.

---

## 8. Cutoff Sweep (the frontier, not a cutoff)

The FL threshold is **administrative** (median + 1.5 × IQR ≈ 14), not structural. The continuous primitive $\log(1+\text{tenders\_count})$ is the score; the binary flag is its coarsening.

| Multiplier | FL Firms | Within-stratum signal |
|:---:|:---:|:---|
| 1.0× | 3,442 | preserved |
| **1.5× (baseline)** | **2,735** | **preserved** |
| 2.0× | 2,093 | preserved |
| 3.0× | 1,456 | preserved (smaller pool) |

**What it shows:** the ranking is by the continuous score; the binary cutoff is an operational coarsening on a broad plateau, not a fragile peak. **Its limit:** the FL14 cut carries no ontological status — it is an administrative operating point. The relevant object is the **cost-recall frontier**, where each $K_1$ is one operating point (e.g. at $K_1=2000$: firm reduction ~88% but bid-row reduction only ~33%, recall ~0.67), not a single optimal cutoff.

---

## 9. Clustered Randomization Inference

Cluster-robust randomization inference at the item level disciplines the price and discrimination inference against within-cluster dependence.

**What it shows:** the discrimination increment is stable under clustered RI; significance does not depend on treating correlated bids as independent. **Its limit:** RI tests sharp nulls against the observed assignment; it does not recover a structural treatment effect.

---

## 10. Pricing-Imprint Audits (scope, not damages)

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

## 11. Survival / Exit-Margin Audit (Online Appendix)

A maintained-assumption check on persistence, **not** a structural identification.

| Quantity | Value |
|---|---|
| Cobidder exit-hazard ratios | ~0.155 / 0.368 (persist longer) |
| Exit margin | $\lambda_C > \lambda_G$ |

**What it shows:** cobidders persist on the platform longer than genuine losers, consistent with sustained cover-side participation. **Its limit:** $\lambda_C > \lambda_G$ is a **maintained assumption**, not structural identification of cartel membership; differential survival has non-cartel explanations.

---

## Robustness Summary

| Object | Audit | Result |
|:---|:---|:---|
| **Opportunity decomposition** | within-stratum AUC; permutation null; matched stratum | genuine increment **+0.042** survives; pooled 0.946 is mostly exposure |
| **Scope boundary** | direct-CADE label across audits | ≈ 0.49 — loser-side scope, by design |
| **Timing** | strict split; rolling-origin | survives in always-loser pool (≈0.77); **infeasible** on full universe (≈0.55) |
| **Single-case dependence** | leave-largest-case-out | PR-AUC −71%; one case ≈55% of positives |
| **Bid-layer complementarity** | leakage audit; same-sample DeLong | complementary (0.962 vs 0.888), **leakage-sensitive** |
| **Cost-recall** | cutoff sweep | frontier object; firm 88% vs bid-row 33% at one operating point |
| **Pricing imprint** | overlap discipline; sensitivity | scope not damages; sign reverses; **mechanism not identified** |

The audit battery disciplines the ranking rather than defending a detector. The honest result: cheap award-layer records **order forensic priority** — a limited but real signal beyond exposure — but they do not prove conduct, cannot reach win-heavy defendants, order retrospectively among incumbents, and lean heavily on a single case.
