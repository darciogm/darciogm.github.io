---
paper: frequent-losers
---

# Manuscript

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->
<!-- REVISED: v23 two-platform extension (ComprasNet) 2026-06-06 -->
<!-- REVISED: v24 positive-contribution reframe (stopping rule + over-crediting bias) 2026-06-06 -->

This page summarizes the contribution, institutional setting, formal framework, and empirical strategy of the paper.

**Title:** *Cheap Signals, Costly Proof: The Reach and Limits of Award-Layer Screening in Cartel Enforcement.* &approx; 53-page main text + &approx; 46-page online appendix; 7 main tables and 3 figures. The analytical core is **two propositions** — an enforcer's optimal-stopping rule (online Appendix B) and a characterization of the over-crediting bias of raw award screens (online Appendix C).

---

## Abstract

> Enforcement agencies must allocate proof-producing effort before proof exists, because the records close to evidence are costly to open. We formalize the award-to-bid decision as an optimal-stopping problem whose solution is not a cutoff but a budget-dependent cost–recall frontier: the agency descends a cheap ranking until the marginal case recovered per forensic dollar meets its cost–value ratio. We apply this to a minimal award-layer screen — persistent zero-win participation — validated against a non-circular, adjudication-anchored label. The audit shows the raw screen's reach is mostly an over-crediting bias we characterize: a size-bias whose magnitude is governed by participation-volume dispersion, summarized by a sufficient statistic computable before any bid file is opened. Stress-tested on a second platform with partially overlapping anchors, both objects hold. Liability stays in the richer record.

---

## Manuscript structure

The main text now runs in nine sections, with the second-platform audit inserted as a new Section 5 directly after the BEC validation:

| § | Section | Content |
|---|---|---|
| 1 | **Introduction** | Evidence-allocation framing; three contributions |
| 2 | **Costly Proof and Observable Awards** | The two observability layers; BEC institutional setting |
| 3 | **Award-Layer Triage** | The frequent-loser construct; formal framework |
| 4 | **Validating the Loser-Side Ranking** | Opportunity decomposition, timing, single-case audits (BEC) |
| 5 | **The Audit on a Second Platform** *(NEW)* | Federal ComprasNet — same audit re-run; the deflation replicates |
| 6 | **Economic Content and Ordinary-Loser Alternatives** | Cobidder type, ordinary-loser placebos |
| 7 | **From Award-Layer Triage to Bid-Layer Forensics** | Bid-benchmark comparison; cost-recall frontier |
| 8 | **Scope, Limits, and Price Corroboration** | Scope boundary; price imprint (scope, not damages) |
| 9 | **Conclusion** | Reach-and-limits summary |

**Online appendix (&approx; 46pp)** carries the paper's two analytical objects as formal results:

- **Appendix B — Theory, Exit, Survival** states the **enforcer's optimal-stopping rule** (Proposition: optimal stopping depth). An agency with per-record forensic cost $c$ and per-case recovery payoff $V$ descends the cheap ranking to the unique tangency where $\rho(K^{*})/\phi(K^{*}) = c/V$ — the marginal case recovered per forensic dollar meets the cost–value ratio. The cost–recall frontier reported in the body is the empirical image of this solved problem, and the budget-dependence of the optimum is *why* there is no single optimal cutoff.
- **Appendix C — Opportunity & Timing** states the **over-crediting-bias characterization** (Proposition: signs of the over-crediting bias). The raw-minus-opportunity-adjusted AUC gap $\Delta$ is **increasing in the dispersion (coefficient of variation) of participation counts** and **decreasing in the adjudicated base rate**; the signs are analytic, the magnitude is read from a transparent simulation overlaid with the two platforms (no closed form). This is the result that makes the CV of participation counts a portable, pre-bid-file diagnostic.

The appendix also includes the data and labels, the full validation audits, the adaptive-deployment and forensic-sequence material, the bid-benchmark audit, and **Appendix G, the Federal Audit Battery (ComprasNet)**: the full federal deflation battery (label funnel, control-function validation, timing and case-composition synthesis, and the audit-stage graduation table) that Section 5 summarizes.

!!! warning "Partially overlapping legal anchors (every federal mention)"
    The federal exercise is a **provisional** robustness leg, not a promotion to Confirmed. The seven federal CADE cases are the *same cartels* as the BEC portfolio, anchored at the federal establishment level — so the two platforms have **partially overlapping legal anchors**, not independent ground truth. The federal evidence tests whether the audit *protocol* and the loser-side *construct* port across procurement systems; it does not assemble a fresh cartel population, and we read it as neither confirmation nor refutation of any firm's legal status.

---

## Contribution

The paper reframes procurement-cartel screening as an **evidence-allocation problem under costly observability**. Enforcement must spend costly proof-producing effort *before* legal proof exists, drawing first on administrative records that are cheap but legally thin. Cheap award-layer records (who participates, wins, keeps losing) can order forensic priority — they cannot prove conduct. The frequent-loser construct is a minimal award-layer object used to ask how far such records reach; it ranks forensic priority and does not detect cartels.

Three substantive contributions — **the first two are analytical objects the screening literature has not written down.**

1. **The enforcer's evidence-acquisition problem, solved (online Appendix B).** We model the award-to-bid recovery decision as an **optimal-stopping problem**: an agency with per-record forensic cost $c$ and per-case recovery payoff $V$ chooses how far to descend a cheap ranking before paying to open bid-level records, and the optimum is the depth at which the marginal adjudicable case recovered per unit of forensic cost meets the cost–value ratio $c/V$. This turns the **cost–recall frontier** we report into the *empirical image of a solved stopping problem* rather than a descriptive scatter. **"There is no optimal cutoff" is then a result, not a confession**: the optimum is budget-dependent, so the object an enforcement designer reports is the locus of budget-dependent optima — the frontier — and each operating point (including $K_1 = 2{,}000$) is the tangency for an agency at one implied $c/V$. Cheap award records order *where* to look; the richer bid layer evaluates *what* is found, and liability remains there.

2. **The over-crediting of cheap screens is itself an estimable object (online Appendix C).** Validating an administrative screen against adjudicated cases without adjusting for procurement opportunity does not merely *risk* inflation — it inflates by an amount we **characterize**. Because a contact-defined label and a participation-based score both load on the same volume, the positive class is the size-biased volume distribution, so the raw area is a **size-bias gap that grows with the dispersion of participation volume and shrinks with the adjudicated base rate** (signs analytic; magnitude read from a transparent simulation overlaid with the two platforms — no closed form). The practitioner deliverable is a **sufficient statistic — the coefficient of variation of participation counts, computable from award data before any bid file is opened** — that bounds how much of a raw screening number is mechanical. The two platforms are then *not the same null twice* but **two points on one inflation curve**: the federal system's rarer target is exactly why its opportunity-only model edges past the raw score there, as the characterization predicts.

3. **A reproducible, non-circular audit protocol that produces both objects — and a map of reach and limits.** The protocol sequences an adjudication-anchored label that never uses the flag, opportunity-cell adjustment, rolling-origin timing, leave-one-case-out tests, a bid-layer benchmark, and cost–recall accounting; the components are individually familiar but their sequencing for the award-to-bid decision is, to our knowledge, new. Applied to BEC, the protocol traces the map of reach and limits. The raw award-layer score concentrates the broad adjudication-anchored cobidder target (**651 positives**; the flag is not used to build the label) at continuous-score **ROC 0.761**, PR-AUC **0.143** — and the framework **correctly catches** that this concentration is mostly opportunity: genuine label-blind opportunity ranks the label at only ROC **0.553** (ranking by *observed* contact reaches 0.905, but that is mechanical label encoding — a cobidder *is* a firm with positive contact). Holding opportunity fixed, the within-stratum **AUC is 0.471 — essentially chance**; the only positive is a nested increment of **+0.010** (DeLong $p = 0.013$) that is **not robust across designs** (matched permutation $p = 0.127$; FL-enrichment $p = 0.067$; matched change in cobidder probability negative). An anchor-agnostic armor battery confirms the verdict (a planted positive control recovers AUC 0.953, so the within-stratum test is not dead by construction; the permutation test has power 0.97 at within-AUC 0.55). The deflation is **what the framework correctly catches — not a screen that fails.** Re-run unchanged on the federal **ComprasNet** platform (2013–2019) with **partially overlapping legal anchors**, the audit lands where the inflation curve predicts: exposure-only ROC **0.754** equals-to-edges-out the raw score (**0.744**), the within-stratum residual collapses to **0.462** (≈ chance), the nested increment is null (**+0.005**, DeLong $p = 0.191$), and both negative controls reproduce the order ($p = 0.258 / 0.582$). What ports is the **stopping rule, the inflation characterization, and the protocol** — not a deployable score. The estimated ranking is at chance (**AUC $\approx$ 0.49**) against win-heavy direct CADE defendants *by design* (loser-side scope signature; the continuous score ranks them at 0.66–0.70); it orders firms **retrospectively among incumbents**, not prospectively (strict 2009–16 → 2017–19 timing reaches only $\approx 0.68$ inside the training always-loser pool; platform-wide ROC $\approx 0.474$, **below chance**, precision@500 $= 0$ in every rolling-origin year); and one adjudicated case (rail/metro) supplies $\approx 32\%$ of positives and 45.4% of true positives at $k=500$ (leave-largest-case-out drops PR-AUC from 0.143 to 0.090, $-37\%$). The estimated ranking is therefore **not a portable cartel score — that is the object the evidence denies.**

**Division of labor, not architectural feasibility.** Against a transparent bid-moment random-forest benchmark inspired by Imhof–Wallimann-style screens (**ROC 0.717**, PR 0.116), the award continuous score (**ROC 0.760**, PR 0.143) is **comparable**, and the combined model (PR 0.188 under random CV) is only **conditionally** better: under case-grouped folds it falls **below** award-only (PR 0.103 vs 0.143). The complementarity is conditional on this implemented benchmark and case-fragile, never dominance. Sequencing award → bid traces a **cost–recall frontier**: at the top-2,000-firm operating point, firm-count footprint falls $\approx 88\%$ but bid-row footprint only $\approx 33\%$, because survivors are high-participation firms; and $K_1 = 1000$ beats $K_1 = 2000$, so no single cutoff is optimal. The frontier, not any operating point, is the design object — a recovery-footprint design, not measured agency savings.

**Non-claims (front-loaded).** The construct does not adjudicate cartel membership; cobidders are adjudication-anchored exposure, not cartel members, and the AUC asymmetry against direct CADE defendants is the design's empirical signature of the loser-side scope. Negative controls do **not** separate the real label from exposure-matched placebos ($p = 0.46$) — they corroborate the opportunity account. The pricing imprint is **scope evidence, not damages**: broad +0.064 reflects selection into higher-price cells, the overlap-cell ATT (−0.097) blocks a markup reading, and no overcharge is claimed. The cover-bidding "theater" mechanism is **not identified**. The buyer-size and pregão–convite gradients are scope information about where the screening signal varies, not identification of an institutional channel.

---

## Institutional Background

### The two observability layers

Cartel-detection screens have been developed on bid-distribution microdata, but most enforcement environments expose those microdata only through case-specific administrative requests. The paper's central institutional observation is that procurement systems operate on two distinct observability layers:

| Layer | Content | Access cost | Routine queryability |
|---|---|---|---|
| **Award layer** | Winner identity, participant identity, item code, negotiated price | Low (analytical-warehouse query, minutes) | Yes — audit courts and oversight bodies routinely query |
| **Bid-microdata layer** | Per-bidder bid amounts | High (administrative request, weeks) | No — forensic-recoverable on case-by-case basis |

Methods designed for the bid layer simply do not run on the layer that survives. The paper's evidence-allocation framing exploits this asymmetry: cheap signals on the award layer order forensic priority before the costly proof on the bid layer is recovered.

### BEC Platform

The **Bolsa Eletrônica de Compras (BEC)** is São Paulo state's centralized electronic procurement platform, used by 1,308 public buying units (PBUs) from 2009 to 2019.

Two procurement modalities are relevant:

| Modality | Format | Award-layer fields routinely available |
|----------|--------|----------------------------------------|
| **Convite** | Sealed-bid (Lei 8.666/93) | Winner, participants, item, negotiated price |
| **Pregão** | Electronic reverse auction | Winner, participants, item, negotiated price |

Per-bidder bid amounts are retained but require formal administrative request. This institutional configuration — routine award-layer query, costly bid-layer recovery — is exactly the asymmetry the evidence-allocation framing exploits.

### Lei 14.133/2021

Brazil's new procurement law consolidates pregão-style auctions as the institutional default. The post-sample reform direction is favorable for the approach: the regime in which the screen discriminates most sharply (pregão) becomes the institutional default.

---

## Formal Framework

The framework is deliberately spare. The role of the formalization is to identify the participation primitive a cartel-deployed cover bidder generates in award-record data and to discipline the interpretation of the empirical objects, not to provide a fully-specified mechanism-design treatment of cartel formation. Micro-foundations for the cartel allocation rule and the side-payment scheme are taken as given (Marshall–Marx 2012; Asker 2010).

### Primitives

A cartel of $n$ firms is active in a procurement market $k$ with $|k|$ auctions per period. The cartel allocates a designated winner with bid $b^*$ in each cartel-targeted auction and chooses the per-period deployment count $m \geq 0$ (number of auctions per period in which the cartel deploys at least one cover bidder). Per-deployment cost is $c_1 > 0$, market-level detection probability is $\theta_k \in (0,1)$, and the cartel-wide marginal detection penalty per cover-deployment is $\phi_0 > 0$. Let $R(m, \theta_k)$ denote gross expected cartel rents. Net surplus is

$$\pi(m, \theta_k, c_1) = R(m, \theta_k) - (c_1 + \theta_k \phi_0)\,m.$$

### Six assumptions

- **A1** (Rent positivity at the margin): $\partial R/\partial m|_{m=0} > c_1 + \theta_k \phi_0$
- **A2** (Diminishing rents): $\partial^2 R/\partial m^2 < 0$
- **A3** (Cartel-allocation IC): $\text{rents} < \kappa$ for any non-designated firm
- **A4** (Type partition): non-cartel firms are cover bidder (C) or genuine entrant (G)
- **A5** (Stationary deployment): per-period deployment $m$ constant within market with conditional independence
- **A6** (Selection on wins-zero subset): on $\{\text{wins}_i = 0\}$, $\lambda_G < \lambda_C$

### Formal results

The two **headline propositions** are the paper's analytical core; the remaining results discipline the construct.

| Result | Content | Empirical use |
|---|---|---|
| **Optimal stopping depth** *(Appendix B — Object 1)* | With non-increasing marginal recovery $\rho(k)$ and non-decreasing forensic cost $\phi(k)$, the recovery objective is concave and the optimum $K^*$ is the unique tangency $\rho(K^*)/\phi(K^*) = c/V$. The agency descends the ranking until the marginal case recovered per forensic dollar meets the cost–value ratio. | The cost–recall frontier is the empirical image of a solved stopping rule; the optimum is budget-dependent, so no single cutoff is optimal |
| **Signs of the over-crediting bias** *(Appendix C — Object 2)* | The raw-minus-opportunity-adjusted AUC gap $\Delta$ is increasing in the dispersion (coefficient of variation) of participation counts and decreasing in the adjudicated base rate; $\Delta \to 0$ as $\mathrm{CV}(T) \to 0$. | Makes $\mathrm{CV}(T)$ a portable, pre-bid-file diagnostic; locates the two platforms on one inflation curve |
| **Lemma 1** | Every separating equilibrium has $b_\ell > b^*$ for every cover bidder, so $\Pr(\text{win} \mid C) = 0$. The wins-zero filter identifies the type-$C$ subset. | Restricts analysis to always-loser stratum |
| **Proposition (monotone score)** | $\log(1+\text{tenders\_count})$ is a Bayesian-monotone ranking statistic for type $C$ on the wins-zero subset (MLR for Poisson, Karlin–Rubin 1956). | Justifies the continuous score; binary frequent-loser rule is its information-coarsening |
| **Proposition (deployment)** | $m^*$ satisfies FOC $\partial R/\partial m = c_1 + \theta_k \phi_0$; comparative statics $\partial m^*/\partial \theta_k < 0$ and $\partial m^*/\partial c_1 < 0$. | Predicts deployment is more aggressive where detection is cheaper (tested via buyer-size heterogeneity) |
| **Proposition (sign reversal)** | Under the rent-component co-movement premise, an observed sign reversal $\beta > 0, \beta^{\text{ov}} < 0$ is consistent with the deployment problem rather than refuting it. | Structural rationalization (online appendix); the body does not lean on this |

Full assumptions, statements, and proofs are in **online Appendix B** (theory, exit, survival, and the stopping rule) and **Appendix C** (the over-crediting-bias characterization).

---

## Frequent-Loser Construct (operational instantiation)

### Sample

| Dimension | Value |
|-----------|-------|
| **Source** | BEC (São Paulo, 2009–2019) |
| **Tender-items** | 4.5 million (raw); 1.65 million (analysis sample) |
| **Bids** | 40 million (bid-level, retained for forensic interrogation) |
| **Firms** | ~41,000 total; 16,843 always-losers |
| **PBUs** | 1,308 public buying units |
| **Adjudication-anchored cobidders** | 651 firms (validation target — always-losers that share ≥1 BEC tender-item with a BEC-active direct CADE defendant; *not* cartel members; 341 FL / 310 non-FL, so the label is not flag-conditioned) |

#### Second platform (federal ComprasNet, §5 / Appendix G)

The audit is re-run on a structurally different system. The construct is re-derived from federal data, not transported — the IQR rule yields a federal threshold of **32** (vs 14 on BEC), so the rule is the construct, not the cutoff value.

| Dimension | Federal (ComprasNet) | BEC twin |
|---|---|---|
| **Source / window** | ComprasNet (federal, 2013–2019, pure Pregão) | BEC (SP, 2009–2019) |
| **Participation rows** | 51.0 million | 1.65M (analysis sample) |
| **Firms** | 92,600 | ~41,000 |
| **Always-losers** | 35,943 | 16,843 |
| **FL threshold (IQR rule, re-estimated)** | 32 (≥) | 14 (≥) |
| **Frequent losers** | 6,491 | 2,735 |
| **Adjudication-anchored cobidders** | 195 broad-AL (94 FL / 101 non-FL) | 651 |
| **Legal anchors** | 7 numbered CADE cases (*partially overlapping* BEC's), 25 platform-active direct-defendant establishments | 12 cases |

The federal release exposes participation and the winner flag but **no bid microdata** — there is no federal analogue to the BEC `LANCES` bid ladder, so the downstream bid-layer forensic step cannot be built from public federal data at all. That observability gap is on-thesis: the cheap award-layer audit is exactly the audit that remains feasible where the richer information is missing.

### Two-step rule

**Step 1 — Always-losers (Lemma 1):** firms with $\text{wins} = 0$ across all 2009–2019 tenders. The strict zero-win condition is the equilibrium choice of the cover-bidder type identified by Lemma 1.

**Step 2 — IQR threshold (administrative cut):** among always-losers, compute median + 1.5 × IQR of participation counts ≈ 14 tenders. Firms at or above this threshold ($T_i \geq 14$, "FL14") are classified as frequent losers (FL). The threshold is **administrative — a deployable rounding of the continuous rank — not structural or legal**; the score $s_i = \log(1+T_i)$ is the object, and the binary FL14 rule is its operational coarsening.

**Result:** **2,735 FL firms** (16.2% of always-losers).

!!! note "Treatment indicator"
    `losers = 1` if a tender-item has at least one FL participant. FL presence occurs in ~5% of analysis-sample tenders.

---

## Empirical Strategy

The empirical strategy operates in three tiers, in order of importance.

### Tier 1 — Decomposition (the paper's core)

Against the broad adjudication-anchored cobidder population inside the always-loser stratum (**651 firms** that share ≥1 BEC tender-item with a BEC-active direct CADE defendant), raw concentration looks modest: **continuous-score ROC 0.761, PR-AUC 0.143** — and is mostly mechanical exposure. Genuine label-blind opportunity ranks the label at only ROC **0.553** (ranking by *observed* contact reaches 0.905, but that figure is mechanical label encoding, not a competing model). The decomposition then holds procurement opportunity fixed: the **within-stratum AUC is 0.471 — essentially chance**. The only positive is a nested increment of **+0.010** over exposure (DeLong $p = 0.013$), and it is **not robust across designs**: the matched-stratum label permutation is not significant ($p = 0.127$), the FL-enrichment is not significant ($p = 0.067$), and the matched change in cobidder probability is negative. An anchor-agnostic armor battery confirms the verdict — a planted positive control recovers AUC 0.953 (the within-stratum test is not dead by construction), the permutation test has power 0.97 at within-AUC 0.55, and a label-frozen timing benchmark (prospective 0.713 ≈ retrospective 0.718) shows generic contact forecasting, not cartel-specific prediction. The honest verdict is that there is **no robust residual ordering net of opportunity**; the disciplined audit protocol itself is the contribution.

Two further confounds are isolated and disclosed. **Timing:** the strict 2009–16 → 2017–19 holdout reaches only $\approx 0.68$ inside the training always-loser pool; across the full platform universe ROC $\approx 0.474$ (**below chance**) and precision@500 $= 0$ in every rolling-origin year (23.5% of positives are unrankable entrants) — the score orders firms **retrospectively among incumbents**, not prospectively across the platform (sequential strict-timing deployment is infeasible). **Single-case concentration:** one adjudicated case (rail/metro) supplies $\approx 32\%$ of positives and 45.4% of true positives at $k=500$; leave-largest-case-out drops PR-AUC from 0.143 to 0.090 ($-37\%$); the estimated ranking is case-sensitive, not portable. **Negative controls** do not separate the real label from exposure-matched placebos ($p = 0.46$), corroborating the opportunity account.

### Tier 2 — Division of labor with bid-layer forensics

Against a transparent bid-moment random-forest benchmark inspired by Imhof–Wallimann-style screens, trained on the forensic-recoverable bid-microdata layer (**ROC 0.717**, PR 0.116), the award continuous score (**ROC 0.760**, PR 0.143) is **comparable**; the combined model beats award-only on PR under random CV (0.188) but falls **below** it under case-grouped folds (0.103 vs 0.143). The complementarity is **conditional on this implemented benchmark and case-fragile**, not dominance. The award layer ranks *where* to look; the bid layer evaluates *what* is found. Sequencing the two traces a **cost–recall frontier**: at the top-2,000-firm operating point the *firm-count* footprint falls $\approx 88\%$ but the *bid-row* footprint only $\approx 33\%$ — because survivors are high-participation firms — and $K_1 = 1000$ recovers more true positives than $K_1 = 2000$, so no single cutoff is optimal. The frontier, not any operating point, is the design object (a recovery-footprint design, not measured agency savings).

### Tier 3 — Pricing imprint (scope evidence, not damages)

The conditional log-price association is broad **+0.064** — selection into higher-price cells — but the overlap-cell ATT (**−0.097**) blocks a markup reading, only the Q4 cell is positive (**+0.041**), and the direct-CADE price effect is null. This section is reported as **scope evidence, not damages or overcharge**; the cover-bidding "theater" mechanism is **not identified**. The screening-value formalization that motivates why broad-sample $\beta$ remains an economic object under coarsened observability is in Online Appendix A (Proposition 3); the body of the paper does not lean on it.

---

## Software and Reproducibility

| Component | Specification |
|-----------|--------------|
| **Languages** | R 4.5+, Python 3.12 |
| **Fixed effects** | `fixest` (OpenMP, 12 threads) |
| **Data** | `data.table` + `arrow` (Parquet); DuckDB for joins |
| **Tables/figures** | `modelsummary` + `kableExtra` + `ggplot2` |
| **Macro discipline** | Every numeric claim bound to a `\val*` macro in `values.tex` with explicit `% src:` script provenance (200 macros used, zero ghosts, zero without provenance) |
| **Pipeline** | Master scripts execute the full reproduction in ~8 minutes on 16 cores |
