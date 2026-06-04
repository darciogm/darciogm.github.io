---
paper: frequent-losers
---

# Main Results

!!! abstract "Intuition (plain-language)"
    Read these results as answers to one practical question: can a signal a regulator *already has for free* — which firms keep losing — order where expensive cartel forensics should look first? Partly. Most of the raw concentration of cobidders among persistent losers is **opportunity arithmetic**: firms that participate more have more chances to appear adjacent to anything, including a cartel. Once procurement opportunity is held fixed, a *limited but real* signal survives — roughly four points of AUC over what mechanical exposure already buys. That residual is the honest object. The award layer **ranks where to look**; it does not prove conduct, and it cannot reach the win-heavy defendants who sit at the center of the cases. The price results come last and on purpose: they describe *where* the signal is active (scope), not *how much* any cartel overcharged.

This page presents the empirical findings in the order the paper now privileges: the opportunity decomposition first (the honest discrimination object), then the scope boundary, the timing and single-case limits, the division of labor with the bid layer, the cost-recall frontier, and finally the pricing imprint (scope only).

---

## 1. The Opportunity Decomposition (Headline)

The central methodological move is to separate **genuine signal** from **opportunity arithmetic**. A firm that participates in many tenders has many chances to co-bid with anyone — a cartel included — purely by exposure. The decomposition asks how much discrimination survives once procurement opportunity is held fixed.

### Pooled vs. within-stratum AUC

| Metric | Value |
|---|---|
| **Pooled / exposure-only AUC** | **0.946** |
| **Within-stratum AUC (procurement opportunity held fixed)** | **0.7715** |
| **Genuine increment over mechanical exposure** | **+0.042** (DeLong $p \approx 2 \times 10^{-6}$) |

!!! success "The +0.042 increment is the honest headline"
    Most of the raw concentration is **opportunity**, not signal. When firms are compared *within* strata of equal procurement exposure, the within-AUC falls to **0.7715** — still well above chance, but far below the pooled 0.946. The portion attributable to mechanical exposure alone reaches **0.946** by itself; the portion that survives stratification is the genuine award-layer signal of **+0.042** over that exposure baseline. This is the number the paper leads with.

!!! warning "The old 'firm-level AUC 0.86 / 0.92' is the exposure-inflated number"
    Earlier framings reported a firm-level discrimination headline of 0.864 (temporal holdout) or 0.924 (in-sample FL14 flag). Those figures are now understood as **exposure-inflated pooled** numbers: they bundle the genuine signal together with the opportunity arithmetic. They are demoted. The disciplined claim is the within-stratum 0.7715 and the +0.042 increment over exposure-only.

The decomposition is the contribution: a method that **separates genuine signal from opportunity arithmetic**, applied to award-layer records that any procurement authority already holds.

---

## 2. The Scope Boundary: Direct-CADE AUC ≈ 0.49 (By Design)

The screen recovers loser-side participation, not winner-side identity. Direct CADE defendants are by construction the **winner side** of the same arrangements — they are who *takes* the contract under a rotation scheme. A loser-side score is built to miss them.

| Target | AUC | Reading |
|---|---|---|
| Adjudication-anchored exposure (cobidders, within always-loser pool) | within-stratum 0.7715 | limited but real signal |
| **Direct CADE defendants (full BEC firm universe)** | **≈ 0.49 (chance)** | **scope signature, by design** |

!!! info "A scope signature, not a failure — front-page it"
    The ≈ 0.49 AUC against direct defendants is not a validation failure. It is the empirical fingerprint of what an award-layer, loser-side screen can and cannot do: it orders forensic priority among **cover-side** participants and is structurally blind to the **win-heavy** defendants at the legal center of the cases. The paper front-pages this boundary rather than burying it.

The 193 cobidders are **adjudication-anchored exposure** — firms whose participation places them adjacent to adjudicated arrangements — **not** cartel members. The direct CADE defendants are the legal anchors. The screen ranks the former and cannot reach the latter.

---

## 3. Timing and Single-Case Limits

### Timing: retrospective among incumbents, not prospective

A strict 2009–2016 → 2017–2019 split is the honest test of whether the screen orders firms *before* the fact.

| Test | Result |
|---|---|
| Strict split **within the always-loser pool** | survives, ROC ≈ **0.77** |
| Strict split across the **full platform universe** | ROC ≈ **0.55**; precision@500 ≈ **0** |
| Sequential strict-timing on the open platform | **infeasible** |

!!! warning "The screen orders retrospectively, not prospectively"
    On the full platform universe the strict-timing ROC collapses to ≈ 0.55 and precision@500 is ≈ 0. The screen orders firms **retrospectively among incumbents** — it tells you who, *among firms already present*, looks like cover-side participation — not who *will* enter a cartel prospectively. Sequential strict-timing detection is infeasible here. This is disclosed, not hidden.

### Single-case dominance: one case carries the headline

| Check | PR-AUC | Change |
|---|---|---|
| All cases | **0.126** | — |
| Leave-largest-case-out (rail/metro) | **0.036** | **−71%** |

!!! warning "One case ≈ 55% of the positives"
    A single case (rail/metro) accounts for roughly **55%** of the positives. Leaving it out drops PR-AUC by **71%** (0.126 → 0.036). The aggregate operational metrics are not a property of many independent cartels; they lean heavily on one large, well-documented case. The paper reports this concentration as a first-order limit on generalization.

---

## 4. Division of Labor with the Bid Layer

Against the seven-feature Imhof–Wallimann bid-distribution pipeline, the award layer adds information **beyond** the bid benchmark — but as a complement, not a replacement.

| Model (same five-fold CV sample) | AUC |
|---|---|
| Imhof–Wallimann bid-distribution pipeline (alone) | **0.888** |
| Frequent-loser flag (alone) | **0.921** |
| **Award layer + bid layer (combined)** | **0.962** |

!!! note "Complementarity, not dominance"
    The combined specification (0.962) exceeds the bid benchmark alone (0.888): the award layer carries **non-redundant** information about the same target. This is **complementarity**, not an outperformance claim, and the increment is **leakage-sensitive** (see the leakage audits on the Robustness page). The two layers do different jobs.

!!! abstract "Award ranks where to look; bid evaluates what is found"
    The award layer **ranks where to look** — it orders forensic priority cheaply, from records every authority already holds. The bid layer **evaluates what is found** — it interrogates conduct once microdata are pulled. Reforms that mandate operational bid-microdata archival expand the *evaluation* stage; they do not substitute for the cheap award-layer ranking.

---

## 5. The Cost-Recall Frontier

The operational question is not "what is the optimal cutoff" but "what does each operating point on the cost-recall frontier buy." We report one representative point.

| Operating point ($K_1 = 2000$) | Value |
|---|---|
| Cobidder recall | ~**0.67** |
| **Firm-count reduction** | ~**88%** |
| **Bid-row reduction** | ~**33%** |
| Beats random by | **3–12×** |
| Award-survivor recall | ~**0.78** |

!!! warning "Retire the '83% universal reduction' — it was one operating point read as a cutoff"
    The earlier "83% reduction" headline conflated a single operating point with a universal saving. At $K_1 = 2000$ the **firm-count** reduction is ~88%, but the **bid-row** reduction is only ~**33%**: the firms that survive triage are exactly the **high-participation** ones, so they carry a disproportionate share of bid rows. The object of interest is the **frontier**, not a cutoff. At this point recall is ~0.67 (award-survivor recall ~0.78), beating random by 3–12×.

The award layer cheapens the *firm* pool the forensic stage must consider, but because survivors are high-participation, the *bid-row* interrogation cost falls far less. That asymmetry is the honest operating economics of award-layer triage.

---

## 6. The Pricing Imprint (Scope, Not Damages)

The paper does not rest on price. The pricing imprint describes **where** the screen is active (scope), not **how much** any cartel overcharged. There is no identified damages base.

### Broad-sample association

| Specification | Coefficient | SE | Effect (%) | $N$ |
|:---|:---:|:---:|:---:|:---:|
| (1) Item + Year FE | 0.068*** | (0.022) | +6.8% | 1,654,401 |
| (2) Item + Year + PBU FE | 0.064*** | (0.020) | +6.4% | 1,654,401 |
| (3) Pregão only (all FE) | 0.089*** | (0.025) | +9.3% | 1,334,729 |
| (4) Convite only (all FE) | 0.037 | (0.022) | +3.8% | 319,718 |

The broad-sample +0.064 reflects **selection into higher-price cells** — *where* FL-present items concentrate — not a markup.

### Overlap-cell ATT blocks the markup reading

Restricting comparisons to cells where FL-present and -absent items genuinely overlap on observables, and reweighting to the average treatment effect on the treated, **reverses the sign**: overlap-cell ATT $= -0.097$ ($p < 0.001$).

!!! warning "The overlap-cell ATT blocks a damages reading"
    The broad-sample positive (+0.064) does not survive overlap discipline: within genuinely comparable cells the coefficient goes to **−0.097**. This blocks any "FL presence raises prices by X%" damages interpretation. The price object is **scope** — which segments the screen lights up — not overcharge.

### Scope heterogeneity: only Q4 is positive

| Quartile (tender value) | Broad-sample $\beta$ | ATT |
|---|---:|---:|
| Q1 | $-0.065$ | similar |
| Q2 | $-0.057$ | similar |
| Q3 | $-0.040$ | similar |
| **Q4 (largest tenders)** | **+0.046** | **+0.041** ($p = 0.045$) |

Q4 — the largest tenders — is the only cell carrying a positive imprint. We read this as **scope heterogeneity** (the screen is active where stakes are highest), not as a per-tender overcharge estimate.

### Direct-CADE price null; mechanism not identified

Against direct CADE defendants the price association is null — there is no damages base to estimate. And the cover-bidding **"theater" mechanism is not identified**: within comparable cells, the price variation loads on **genuine-bidder count**, not on FL presence. The data are consistent with cover bidding but do not isolate it from competing explanations.

---

## Summary: Reach and Limits

The paper maps both the reach and the limits of award-layer screening, in declining order of confidence:

1. **The decomposition works (method contribution).** Within-stratum AUC **0.7715**; genuine increment **+0.042** over exposure-only 0.946 (DeLong $p \approx 2\times10^{-6}$). Most raw concentration is opportunity; a limited but real signal survives.
2. **The scope boundary is real and by design.** Direct-CADE AUC ≈ **0.49** — the screen reaches cover-side participants, not win-heavy defendants.
3. **Timing and single-case limits bind.** Retrospective among incumbents (full-universe ROC ≈ 0.55); one case ≈ 55% of positives (leave-largest-out PR-AUC −71%).
4. **The award and bid layers divide labor.** Imhof 0.888 / FL 0.921 / combined 0.962 — complementarity, leakage-sensitive. Award ranks where to look; bid evaluates what is found.
5. **The cost-recall frontier is the object, not a cutoff.** At $K_1=2000$: firm reduction ~88% but bid-row reduction only ~33%; recall ~0.67.
6. **The price imprint is scope, not damages.** +0.064 broad → −0.097 overlap-cell ATT; only Q4 positive; mechanism not identified.

The contribution is a **decomposition method**, a **single-case concentration finding**, and a **reach-and-limits map** — cheap award-layer records **order forensic priority**; they do not prove conduct.
