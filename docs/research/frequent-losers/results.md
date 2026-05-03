# Main Results

This page presents the empirical findings in the order the paper now privileges: discrimination first, architectural complementarity second, pricing imprint third (descriptive corroboration only).

---

## 1. Discrimination Against the Cobidder Population

The screen's primary validation is firm-level discrimination of cobidders inside the always-loser stratum.

### Headline AUC

| Metric | Value |
|---|---|
| **Firm-level AUC, temporal holdout (train 2009–2016, test 2017–2019)** | **0.864** [95% CI: 0.858, 0.870] |
| Firm-level AUC, in-sample | 0.939 |
| AUC, strict pre-2020 benchmark with participation-stratified permutation null | corroborated by 3.2× excess over random-matching baseline ($p < 0.001$) |
| AUC against direct CADE defendants in broader BEC firm universe | ≈ 0.49 (random — by design; loser-side scope, not winner-side identity) |

!!! success "AUC 0.864 under temporal holdout"
    The temporal-holdout AUC is the headline reference for all operational claims. The construct is not retrofit on post-2020 data; the score is computed using only 2009–2016 participation and evaluated on items in 2017–2019. Out-of-fold CV at cobidder-firm level returns 0.891 [0.887, 0.894], confirming the structural component dominates.

### Leakage audit (decomposition of in-sample item-level AUC)

The raw in-sample item-level AUC of 0.995 is partly tautological by construction. The audit decomposes it into structural and leakage components:

| Audit | Specification | AUC | 95% CI |
|---|---|---|---|
| Original | In-sample, full pool | 0.995 | [0.995, 0.995] |
| Audit 1 — scope | Same score, swapped to direct-CADE label | 0.506 | [0.505, 0.507] |
| Audit 2 — tautology | 5-fold CV at cobidder-firm level | 0.891 | [0.887, 0.894] |
| Audit 3 — generalization | Train 2009–2016 → test 2017–2019, any-cobidder | 0.864 | [0.859, 0.870] |
| Audit 3 — direct-CADE label | Same temporal split, against direct-CADE label | 0.511 | [0.510, 0.513] |

The 0.10–0.13 drop from in-sample to audit-corrected AUC is the pure-leakage component. Audits against direct-CADE labels return random AUC, consistent with the loser-side scope.

### Why direct-CADE AUC ≈ 0.49 is the design's empirical signature

The flag recovers loser-side participation, not winner-side identity. Direct CADE defendants are by construction the winner side of the same arrangements. The asymmetry between cobidder discrimination (0.864) and direct-defendant discrimination (≈ 0.49) is not a failure of validation but the empirical fingerprint of what a screen built on the loser side can and cannot do.

---

## 2. Architecture: Award-Layer Triage Before Bid-Layer Forensics

This is the paper's headline contribution.

### Sequential gatekeeper rule

| Quantity | Without architecture | With award-layer triage | Improvement |
|---|---|---|---|
| Firms entering forensic stage | 11,676 (all always-losers) | **1,985** (top-1,000 flag list extended) | **83% reduction in bid-microdata pool** |
| Cobidders recovered (of 193 adjudicated) | 193 (full coverage) | **131** | 68% recall preserved |
| Bid-microdata interrogation cost | full | ~17% of full | ~83% saving |

!!! success "83% footprint reduction"
    Routing forensic interrogation through the screen reduces the bid-microdata pool the forensic stage must work on by 83% while still recovering 131 of 193 adjudicated cobidders. The recall robustness survives the temporal-holdout audit.

### Complementarity with bid-distribution screens

Against the seven-feature Imhof–Wallimann bid-distribution pipeline trained on the forensic-recoverable layer:

| Comparison | Result |
|---|---|
| Award-layer flag (alone), AUC | 0.864 |
| Imhof–Wallimann pipeline (alone), AUC | 0.829 |
| Combined (same-sample audit) | **+0.035 AUC over Imhof alone** |
| DeLong test for combination improvement | $p = 0.014$ |
| Combined model, additional improvement over Imhof full alone | +0.096 to +0.098 AUC ($p < 0.001$) |

!!! warning "Informational complements, not substitutes"
    The two screens carry non-redundant information about the same target. The screening stage functions as a credible Stage-1 gatekeeper for the forensic stage. Reforms that mandate operational bid-microdata archival expand the forensic stage, not the screening one.

### Operational metrics under temporal holdout

The temporal-holdout column is the headline reference (in-sample reported only for transparency):

| Top-$k$ | Holdout TP | Holdout Precision | Holdout Recall | Holdout Lift | In-sample Lift |
|---:|---:|---:|---:|---:|---:|
| 50 | 1 | 0.020 | 0.005 | 1.7× | 26.2× |
| 100 | 7 | 0.070 | 0.036 | 6.1× | 14.8× |
| 250 | 19 | 0.076 | 0.098 | 6.6× | 14.0× |
| 500 | 35 | 0.070 | 0.181 | **6.1×** | 11.5× |
| 1,000 | 66 | 0.066 | 0.342 | **5.8×** | 8.5× |

The in-sample columns over-state precision by approximately 50% at top-500 because roughly 47% of the in-sample top-500 ranking comes from 2017–2019 participation, after CADE adjudications were already underway for some cartels. All operational claims in the paper are read off the holdout column.

---

## 3. Within-Stratum Bridge: How Cobidders Behave

The cobidder population behaves like the modeled cover-bidder type along five firm-level and bid-level predictions.

### Firm-level (4 of 5 predictions confirmed)

| Prediction | Cohen's $d$ | Interpretation |
|---|---|---|
| Cobidders deploy at higher intensity than FL non-cobidders | $d = 0.97$ on unique winners faced | Confirmed |
| Cobidders bid proximally to direct CADE defendants | $d = 1.49$ | Confirmed |
| Cobidders concentrate in narrower markets (portfolio HHI) | $d = 0.61$ | Confirmed |
| Cobidders show repeat-pair structure with adjudicated firms | excess persistent pairs $p < 0.001$ | Confirmed |
| Cobidders' tenure distribution distinguishes from FL non-cobidders | small effect | Mixed |

### Bid-level (signature of credible cover bidding)

At the bid level, cobidders bid **plausibly close to winners** with **elevated within-firm cross-bid dispersion**:

| Statistic | Cobidders | FL non-cobidders | Gap (Cohen's $d$) |
|---|---:|---:|---:|
| Median per-firm gap to winner (log) | 0.582 | 0.809 | $d = -0.281$ ($p < 10^{-6}$) |
| Per-firm bid SD | 1.207 | 1.099 | $d = +0.147$ |

A multivariate logit holding $\log(1+\text{tenders\_count})$ constant confirms both signs at $p < 10^{-3}$. The directions are consistent with **credible cover bidding** (Marshall & Marx 2012, Asker 2010) — bids low enough to be plausible, dispersed enough to track rotation across cover roles — rather than the textbook deliberately-uncompetitive cover bid the early literature described.

---

## 4. Pricing Imprint as Descriptive Corroboration

The paper does not rest on this section. The screening contribution is carried by Sections 1 and 2 above. The pricing imprint is reported because the cover-bidding literature would expect a price footprint, but the available identification cannot settle whether the association is causal.

### Broad-sample association

| Specification | Coefficient | SE | Effect (%) | $N$ |
|:---|:---:|:---:|:---:|:---:|
| (1) Item + Year FE | 0.068*** | (0.022) | +6.8% | 1,654,401 |
| (2) Item + Year + PBU FE | 0.064*** | (0.020) | +6.4% | 1,654,401 |
| (3) Pregão only (all FE) | 0.089*** | (0.025) | +9.3% | 1,334,729 |
| (4) Convite only (all FE) | 0.037 | (0.022) | +3.8% | 319,718 |

Cross-fit (0.036), CEM matching (0.077), IPW (0.055), and a leave-one-out IV bound the conditional range at +3.6% to +7.7%.

### Sign reversal under overlap restriction

Restricting comparisons to cells where FL-present and -absent items genuinely overlap on observables and reweighting to the average treatment effect on the treated produces a reversed coefficient: overlap-cell ATT $-0.032$, propensity-score-trimmed ATT $-0.021$ (full coefficients in Online Appendix B). The reversal is real; the paper does not rest on either sign.

The within-quintile decomposition:

| Quintile | Broad-sample $\beta$ | $p$-value | ATT |
|---|---:|---:|---:|
| Q1 | $-0.065$ | $< 10^{-15}$ | similar |
| Q2 | $-0.057$ | $< 10^{-15}$ | similar |
| Q3 | $-0.040$ | $< 10^{-15}$ | similar |
| **Q4 (largest tender value)** | **+0.046** | 0.012 | **+0.041** ($p = 0.045$) |

Q4 — the segment where deployment value is highest a priori on contract size — carries the positive imprint that the framework predicts the cartel concentrates on. Q1–Q3 carry negative imprints consistent with several non-exclusive non-screening mechanisms (thin-market price formation, item-characteristic selection, composition heterogeneity in the firm pool).

The discrimination evidence (Section 1) and the architectural test (Section 2) carry the contribution; the broad-sample imprint is bracketed by Cinelli–Hazlett $RV_{q=1} = 17.5\%$ and Oster $\hat{\delta}$ against selection on observables already absorbed by the fixed effects.

!!! info "Why this section is descriptive"
    The screening-value formalization that motivates why the broad-sample $\beta$ remains an economic object under coarsened observability is in Online Appendix A (Proposition 3); the body of the paper does not lean on that formalization. The screen is validated in Sections 1–2; the price imprint here is corroboration that the construct also tracks an outcome the cover-bidding literature would expect, not identification of a causal effect.

---

## 5. Heterogeneity Across Detection Regimes

Where the screening signal varies tells us something the level does not. Splitting the sample into quartiles of procuring-unit size:

| Quartile | FL price coefficient | Interpretation |
|---|---:|---|
| Q1 (smallest buyers, weakest oversight) | +21.4% | Strongest signal |
| Q2 | +9.8% | |
| Q3 | +4.5% | |
| Q4 (largest buyers, strongest oversight) | +1.7% | Weakest signal |

A 12.5× extreme-quartile gradient. The framework predicts the contrast direction through the detection-cost comparative static $\partial m^*/\partial \theta_k < 0$: cover-bidder deployment is more aggressive where the principal cost of detection is lower.

!!! warning "Scope information, not institutional channel identification"
    Buyer size proxies for several correlated institutional features — procurement-officer tenure (Coviello & Mariniello 2014), internal-audit infrastructure, item composition, discretionary procedure use (Decarolis et al. 2025) — none separable with the variation we have. We read the gradient as heterogeneity in the screening object across the monitoring environment, in the framework's predicted direction, with the magnitude concentrated at the extremes — not as identification of an institutional channel.

---

## 6. Modal Asymmetry: Pregão vs. Convite (Scope Information)

On the discrimination side, the modal-by-modal AUC against the 193 adjudicated cobidders is 0.952 in pregão primary auctions versus 0.816 in convite primary auctions (bootstrap difference $-0.136$, $p \approx 0$).

!!! warning "Scope information for the screen, not a positive test of any institutional mechanism"
    The convite minimum-bidder rule (Lei 8.666/93, Art. 22 §3) would predict a sharper screening signal where the rule binds (convite). The data reverse this prediction. We do not read the reversal as a positive test of any alternative institutional theory. The modal asymmetry is reported as scope information for the screening object — the construct discriminates better in pregão environments — and not as a positive test of the minimum-bidder-rule mechanism, which would require institutional variation the BEC setting does not deliver.

---

## Summary: What the Empirical Strategy Establishes

The paper makes four empirical claims, in declining order of confidence:

1. **The architecture works.** 83% reduction in forensic pool with 68% recall preserved. (Headline.)
2. **The screen discriminates.** Firm-level AUC 0.864 under temporal holdout against adjudicated cobidders.
3. **The screen complements bid-distribution methods.** +0.035 AUC over Imhof–Wallimann pipeline ($p = 0.014$).
4. **A pricing imprint is present in the broad sample.** +3.6% to +7.7% across four estimators, with sign reversal under overlap and Q4-concentrated positive — reported descriptively, not causally.

Claims 1–3 are the paper. Claim 4 is corroboration.
