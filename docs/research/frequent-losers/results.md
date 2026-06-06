---
paper: frequent-losers
---

# Main Results

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

!!! abstract "Intuition (plain-language)"
    Read these results as answers to one practical question: can a signal a regulator *already has for free* — which firms keep losing — order where expensive cartel forensics should look first? Mostly not, once you are honest about why. The raw concentration of adjudication-anchored cobidders among persistent losers is **mechanical, anchor-agnostic co-participation exposure**: firms that participate more have more chances to appear adjacent to anything, including a cartel. Once procurement opportunity is held fixed, **almost nothing survives** — the within-stratum ordering is at chance, the one positive increment is marginal and not robust across designs, and matched permutations are not significant. That deflationary decomposition is the honest object and the contribution. The award layer cannot prove conduct, and it cannot reach the win-heavy defendants at the center of the cases. The price results come last and on purpose: they describe *where* the signal is active (scope), not *how much* any cartel overcharged.

This page presents the empirical findings in the order the paper now privileges: the **two analytical objects** that anchor the contribution first (the enforcer's stopping rule and the over-crediting bias), then the opportunity decomposition (the honest discrimination object), the scope boundary, the timing and single-case limits, the division of labor with the bid layer, the cost-recall frontier, and finally the pricing imprint (scope only).

The validation label is the **broad adjudication-anchored cobidder target**: a unique always-loser firm that shares at least one BEC tender-item with a BEC-active direct CADE defendant. Direct defendants are excluded; the frequent-loser flag is **not** used to construct the label. There are **651 positives** (341 frequent-loser, 310 non-frequent-loser — the composition shows the label is not flag-conditioned).

---

## 0. Two Analytical Objects (the positive contribution)

The deflation result below is real and load-bearing, but it is not the paper's *positive* content. Two analytical objects organize the existing evidence into a law-and-economics contribution. Neither adds a new empirical claim; both **rationalize** the deflation rather than reverse it. The deflation is what the framework *catches*, not "the screen fails."

### Object 1 — the enforcer's evidence-acquisition problem

The cost-recall frontier (§5 below) is not a descriptive scatter — it is the **empirical image of a solved optimal-stopping problem**. An agency with per-record forensic cost $c$ and per-case recovery payoff $V$ descends the cheap award-layer ranking, opening costly bid-level records, while the marginal adjudicable cases recovered per unit of forensic cost still exceed the cost-value ratio $c/V$. Because the ranking is informative the recovery density $\rho(k)$ is non-increasing in rank (inherited from the framework's Karlin–Rubin ranking result), the net-recovery objective is concave, and the optimum is the unique tangency

$$\frac{\rho(K^{*})}{\phi(K^{*})} = \frac{c}{V}$$

(Proposition `prop:enforcer_trigger`, stated and proved in Appendix B.)

This upgrades three sentences from confession to result:

- **"There is no optimal cutoff" is now a RESULT, not a weakness.** The optimum is *budget-dependent*: each operating point on the frontier is the optimum $(\text{cost}(K^{*}),\,\text{recall}(K^{*}))$ for an agency at one $c/V$, and sweeping $c/V$ traces the whole curve. We do not observe any agency's $c/V$, so reporting the **locus of optima** (the menu) is the correct response, not an evasion. $K_1 = 2{,}000$ is the tangency at one implied $c/V$, not an arbitrary point.
- **Lead the cost content with the bid-row reduction.** The honest cost-side number is the **bid-row** reduction (~33% at $K_1 = 2{,}000$), not the firm-count reduction. The **88% firm reduction overstates the forensic cost saved**, because survivors are the highest-participation firms and forensic cost is indexed to bid rows: marginal cost rises fastest exactly where recovery is richest. The firm-vs-bid-row asymmetry is the model's cost-side comparative static, not a nuisance.
- **The stopping rule prices recovery, never conduct.** $\rho$ descends the raw exposure ranking that §1 below shows carries no conduct residual; the object prices the recovery footprint of an exposure-ranking architecture and never claims the firms opened first are likelier to have coordinated. The proposition's concavity holds on the **award-layer** recovery curve (the sequential award→bid rerank is non-monotone in $K_1$ and is a second-order refinement, footnoted in the paper).

### Object 2 — the over-crediting bias as an estimable object

Why does the raw award-screen AUC look like discrimination (0.761 on BEC) when the within-stratum residual is at chance? Because the award score is monotone in participation volume $T$ (it is $\log(1+T)$) and the contact-defined cobidder label is **also** mechanically increasing in $T$ ($\Pr(\text{cobidder} \mid T) \approx \pi T$ in the rare-target regime). Both load on volume. The positive class is therefore the **size-biased** participation distribution, and the raw ROC-AUC is just $\Pr(T_i > T_j)$ with $T_i$ size-biased relative to a random negative $T_j$ — an ordering that exists *before any conduct enters*. That is the entire over-crediting mechanism.

The over-crediting is a **predictable bias**, governed by two quantities only. The signs are stated and proved in the rare-target regime (`prop:inflation`):

- The bias **grows** with the **dispersion of participation volume** across candidate firms (with no dispersion there is nothing to rank and the raw AUC collapses to chance).
- The bias **shrinks** as the **adjudicated base rate** rises (a rarer target is more strongly size-biased).

The **coefficient of variation of $T$** in the candidate pool is a **sufficient statistic** for how inflated an uncorrected award-screen AUC is likely to be — computable from award data alone, *before a single bid file is opened*. It is a **cheap diagnostic** for the size of the bias, **not a correction that rescues the screen**: the genuine within-stratum floor is at chance either way. No closed-form magnitude is claimed; the signs are analytic and the magnitude is demonstrated by a transparent synthetic simulation ([AN-044](analyses/an-044-over-crediting-inflation-characterization.md)).

!!! abstract "BEC and federal are two points on one inflation surface"
    The two-platform replication is **not "the same null twice."** BEC and federal ComprasNet are **two coordinates** on a single inflation surface, at different $(\text{CV}(T),\,\text{base rate})$ values. Federal's adjudicated base rate is roughly **10× lower** ($\approx 0.5\%$ AL-pool vs BEC's $\approx 3.9\%$), so the size-biasing is *more* complete federally — which is exactly why the federal **exposure-only** ranking (0.754) *edges out* the raw score (0.744), whereas on BEC the exposure axis only approaches it. The lower base rate pushing exposure-only past raw is the direction Object 2 predicts. A synthetic simulation ([AN-044](analyses/an-044-over-crediting-inflation-characterization.md)) reproduces BEC's raw AUC and lands both real points on the predicted surface.

---

## 1. The Opportunity Decomposition (Headline)

The central methodological move is to separate **genuine signal** from **mechanical, anchor-agnostic co-participation exposure**. A firm that participates in many tenders has many chances to co-bid with anyone — a cartel included — purely by exposure. The decomposition asks how much discrimination survives once procurement opportunity is held fixed.

### Pooled vs. within-stratum AUC

| Metric | Value |
|---|---|
| **Raw award-layer score (continuous)** ROC / PR-AUC | **0.761** / **0.143** |
| Raw FL14 binary ROC / PR-AUC | 0.688 / 0.097 |
| Nested exposure + score ROC | 0.723 |
| **Nested increment over exposure** | **+0.010** (DeLong $p = 0.013$) |
| **Within-opportunity-stratum AUC** | **0.471** (≈ chance) |
| Within-stratum FL14 AUC | 0.507 |

#### Exposure tiers — what "ranking by contact" actually buys

The headline "an exposure-only model reaches 0.905 and out-predicts the score" is **retired**. The 0.905 is ranking firms by **observed** contact $O_i$ — and a cobidder *is*, by construction, a firm with $O_i > 0$. So this is **mechanical label encoding**, reported only to expose the inflation, not a competing model. Stepping from observed-contact toward genuinely label-blind opportunity collapses the number:

| Exposure tier | ROC | What it ranks by |
|---|---|---|
| Observed contact $O_i$ | **0.905** | mechanical: a cobidder *is* a firm with $O_i>0$ |
| Plug-in expected contact $E_{\text{plug}}$ | **0.985** | mechanical: plug-in still sees the label |
| Firm-leave-one-out expected contact $E_{\text{firm-LOO}}$ | **0.855** | upper bound on opportunity's role |
| **Genuine label-blind opportunity** | **0.553** | the honest opportunity benchmark |

!!! warning "Exposure benchmark is an upper bound, not a winning model"
    Genuine **label-blind opportunity ranks the label at only 0.553**. The earlier framing — "exposure is the better model that out-predicts the raw score" — was itself partly mechanical and has been removed. The deflationary verdict does **not** rest on "exposure beats the score"; it rests on the **anchor-agnostic armor battery** (negative controls, powered permutation, label-frozen timing) summarized on the [robustness](robustness.md) page.

!!! warning "There is no robust residual signal net of opportunity"
    Most of the raw concentration is **opportunity**, not signal. When firms are compared *within* strata of equal procurement exposure, the within-AUC falls to **0.471 — essentially chance**. The only positive that survives is a nested increment of **+0.010** (DeLong $p = 0.013$), and that increment is **not robust across designs**: the matched-stratum label permutation is not significant ($p = 0.127$), the within-matched-strata FL-enrichment is not significant ($p = 0.067$), and the matched change in cobidder probability for FL14 vs non-FL is **negative** ($-0.017$). A CEM-matched comparison gives AUC 0.626. The honest statement is that the residual ordering is **marginal at best and not robust across designs** — there is no reliable residual signal once opportunity is held fixed.

!!! info "The old exposure-inflated headline is retired — and the inflation is now a characterized object"
    Earlier framings reported a firm-level discrimination headline near 0.92–0.95. Those figures are now understood as **exposure-inflated pooled** numbers: they bundled any genuine ordering together with mechanical co-participation exposure. Under the reproducible, non-circular label the raw score reaches only ROC 0.761 / PR-AUC 0.143, and almost all of that is mechanical exposure (ranking by observed contact already encodes the label — see the exposure tiers above). The disciplined object is the within-stratum AUC ($\approx$ chance) and the fragile +0.010 nested increment. The inflation itself is no longer just an empirical null: it is the **estimable size-bias object** of [Object 2](#object-2-the-over-crediting-bias-as-an-estimable-object) — score and label both load on participation volume $T$, the positive class is the size-biased $T$ distribution, and the bias has a portable sufficient statistic (CV of $T$).

The first contribution is **organizational**: the award-to-bid recovery problem cast as sequential cost-recall — where the **frontier**, not any cutoff, is the design object. The second is a **disciplined audit protocol** that separates genuine signal from mechanical exposure, case concentration, and retrospective information — together with a portable principle: *validating an administrative screen against adjudicated cases without adjusting for procurement opportunity systematically over-credits it.* Under a non-circular label, cheap award-layer records mostly do **not** carry a residual cartel-ordering signal.

---

## 2. The Scope Boundary: Direct-CADE AUC ≈ 0.49 (By Design)

The binary loser-side flag recovers loser-side participation, not winner-side identity. Direct CADE defendants are by construction the **winner side** of the same arrangements — they are who *takes* the contract under a rotation scheme. A loser-side binary flag is built to miss them.

| Target | AUC | Reading |
|---|---|---|
| Adjudication-anchored cobidders (within always-loser pool, opportunity held fixed) | within-stratum $\approx$ **0.47** | no robust residual ordering |
| **Direct CADE defendants — FL14 binary (full BEC universe)** | **0.49 (chance)** | **scope signature, by design** |
| Direct CADE defendants — continuous participation score | **0.66–0.70** | participation volume ranks them moderately above chance |

!!! info "The binary flag is silent on defendants; participation volume is not"
    The FL14 **binary** flag is uninformative about direct defendants (AUC 0.49) — the empirical fingerprint of a loser-side flag that is structurally blind to the win-heavy defendants at the legal center of the cases. But the **continuous participation score** ranks those same defendants moderately above chance (0.66 full / 0.70 strict). The earlier "participation below random against defendants" claim is retired. The asymmetry is therefore about the *binary flag*, not about participation per se.

The 651 cobidders are **adjudication-anchored exposure** — always-loser firms whose participation places them adjacent to adjudicated arrangements — **not** cartel members. The direct CADE defendants are the legal anchors.

---

## 3. Timing and Single-Case Limits

### Timing: retrospective among incumbents, not prospective

A strict 2009–2016 → 2017–2019 split is the honest test of whether the score orders firms *before* the fact.

| Test | Result |
|---|---|
| Strict split, **training always-loser pool** (21,819; 651 pos) | continuous ROC ≈ **0.684**; FL14 binary ROC ≈ 0.646 |
| Strict split, **full platform universe** (41,444; 651 pos) | ROC ≈ **0.474** (below chance); precision@500 = recall@500 = **0** |
| Strict rankable incumbent pool (32,682; 498 pos) | ROC ≈ 0.471; precision@500 = 0 |
| Rolling-origin, full universe (2014–2019) | ROC ≈ 0.45–0.50 all years (worst 2015 ≈ 0.446); precision@500 = recall@500 = 0 every year |
| Sequential strict-timing on the open platform | **infeasible** |

!!! warning "The score orders retrospectively, not prospectively"
    On the full platform universe the strict-timing ROC is **below chance** (≈ 0.474) and precision@500 is **0** in every year. Even inside the training always-loser pool the out-of-time continuous ROC is only ≈ 0.68. The score orders firms **retrospectively among incumbents** — it tells you who, *among firms already present*, accumulated a loser-side footprint — not who *will* enter a cartel prospectively. Entrants (firms unrankable from prior participation) are **153 of 651 positives (23.5%)**. Sequential strict-timing detection is infeasible here. This is **incumbent-firm triage with retrospective validation, not platform-wide prospective deployment**.

### Single-case dependence: one case carries the headline

| Check | PR-AUC | Change |
|---|---|---|
| Full pooled | **0.143** | — |
| Leave-largest-case-out (rail/metro, *trens/metrôs*) | **0.090** | **−37%** |
| Leave top two cases out | 0.058 | further drop |
| Case-balanced precision@500 | 0.043 (vs pooled 0.216) | — |

!!! warning "One case ≈ 32% of the positives"
    A single case (rail/metro) accounts for **32.0%** of the positives (208/651) and **45.4%** of true positives at $k=500$. Leaving it out drops PR-AUC by **37%** (0.143 → 0.090); ROC is stable (≈ 0.76). Case-balanced precision@500 falls to 0.043 versus pooled 0.216. The aggregate operational metrics are not a property of many independent cartels; they lean on one large, well-documented case. The **estimated BEC ranking is case-sensitive** — it is not a portable cartel score. The durable object is the **audit protocol** and its portable principle, not the ranking. (Item-group HHI 0.100, buyer HHI 0.009; clustered randomization inference at item-group × year is significant for ROC/PR/precision but not for coverage, $p = 0.103$.)

---

## 4. Division of Labor with the Bid Layer

Against a transparent bid-moment random-forest benchmark inspired by Imhof–Wallimann-style screens, the award layer is **comparable** to the bid layer on the pooled diagnostic — and the combined model's apparent edge is conditional and case-fragile.

| Model (pool A: 16,731 firms, 651 positives, random CV) | ROC | PR-AUC | prec@500 |
|---|---|---|---|
| Award continuous (fixed score) | **0.760** | **0.143** | 0.216 |
| Award FL14 binary | 0.688 | 0.098 | 0.130 |
| Bid RF (Imhof moments) | 0.717 | 0.116 | 0.180 |
| **Combined RF** | **0.756** | **0.188** | 0.274 |

| Same model, **case-grouped folds** | ROC | PR-AUC |
|---|---|---|
| Bid RF (Imhof moments) | 0.626 | 0.062 |
| Combined RF | 0.689 | **0.103** |

!!! note "Comparable, conditional complementarity — not dominance"
    Award ≈ bid on the pooled diagnostic (0.760/0.143 vs 0.717/0.116). The combined model beats award-only on PR-AUC under **random** CV (0.188 vs 0.143), but **falls below award-only** under **case-grouped** folds (0.103 vs 0.143). The complementarity is therefore **conditional on this implemented benchmark and case-fragile**, not a general outperformance. (Award–bid Spearman correlation 0.544.) A same-sample gatekeeping pool gives imhof_full 0.665, fl_only 0.665, combined 0.727 — again comparable, not a horse race won by either layer.

!!! abstract "Award ranks where to look; bid evaluates what is found"
    The award layer **ranks where to look** — it orders forensic priority cheaply, from records every authority already holds. The bid layer **evaluates what is found** — it interrogates conduct once microdata are pulled. The two layers do different jobs; on this benchmark their information is comparable and only conditionally complementary.

---

## 5. The Cost-Recall Frontier

The operational question is not "what is the optimal cutoff" but "what does each operating point on the cost-recall frontier buy." There is **no optimal $K$**; the frontier is the object. As **Object 1** (§0) makes precise, this frontier is the *empirical image* of the enforcer's optimal-stopping rule: each operating point is a budget-dependent tangency $\rho(K^{*})/\phi(K^{*}) = c/V$, and the curve is the locus of those optima.

| Rule ($k = 500$) | Firms opened | TP | Precision | Recall | Firm cost-red. | Bid-row cost-red. |
|---|---|---|---|---|---|---|
| Award-only ($K = 500$) | 500 | 108 | 0.216 | 0.166 | 97.0% | 60.0% |
| Joint upper bound | 16,772 | 133 | 0.266 | 0.204 | 0 | 0 |
| Sequential $K_1 = 1000$ | 1,000 | **124** | 0.248 | 0.190 | 94.0% | 47.4% |
| Sequential $K_1 = 2000$ | 2,000 | 116 | 0.232 | 0.178 | 88.1% | **32.7%** |
| Sequential $K_1 = 5000$ | 5,000 | 102 | 0.204 | 0.157 | 70.2% | 13.9% |

!!! warning "Lead with the bid-row reduction — the firm-count number overstates forensic cost"
    There is no "universal reduction" headline. The honest cost-side number is the **bid-row** reduction (**~33%**, 32.7% at $K_1 = 2000$), because forensic cost is indexed to bid rows. The **firm-count reduction (88.1%) overstates the forensic cost saved**: the firms that survive triage are exactly the **high-participation** ones, so they carry a disproportionate share of bid rows. This is Object 1's cost-side comparative static — marginal cost rises fastest where recovery is richest. And $K_1 = 1000$ *beats* $K_1 = 2000$ at $k = 500$ in this sample (124 TP vs 116, recovering 124/133 = 93% of the joint upper bound) — one more reason no $K$ is optimal. These are **recovery-footprint** measures over firms and bid rows, **not** measured agency budget savings.

The proposition's concavity is stated on the **award-layer** recovery curve; the sequential award→bid rerank can be non-monotone in $K_1$ (the survivor pool dilutes the rerank precision) and is a second-order refinement, not the optimized margin. Because strict timing for the bid rerank is not available with the current LANCES features, the sequential frontier is a **retrospective cost-footprint design conditional on the validated incumbent ranking**, not a fully prospective deployment test.

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

## 7. The Audit on a Second Platform (ComprasNet)

<!-- REVISED: v23 two-platform extension (ComprasNet) 2026-06-06 -->

A decomposition is only worth carrying if it travels. The paper re-runs the **same audit, unchanged**, on a second procurement system — federal **ComprasNet** (2013–2019, pure Pregão) — and asks what the protocol returns where the institutions differ. The federal platform is single national system aggregating procuring units across the whole federal administration; the sealed-bid convite modality is extinct federally, so the panel is effectively pure Pregão (~15% regular auction, ~85% price-registration/SRP) and there is no modality margin to stratify on. The federal release exposes participation and the winner flag but **no bid microdata** at all.

!!! warning "Partially overlapping legal anchors — provisional, not independent replication"
    The seven federal CADE cases are the **same cartels** as the BEC portfolio, anchored at the federal establishment level. This is a robustness leg under **partially overlapping legal anchors**, not a clean out-of-sample replication on an unrelated cartel set. It does **not** by itself promote any finding to Confirmed. The exercise tests portability of the *method* and the loser-side *construct*; we read it as neither confirmation nor refutation of any firm's legal status.

### The side-by-side verdict

The federal audit returns the **same verdict** the BEC audit returns, and on the row that matters it returns it more cleanly. Each row is the comparable quantity from the BEC battery, re-run on the federal panel under the same definitions.

| Audit stage | BEC–SP | ComprasNet |
|---|---:|---:|
| Raw award-layer ROC | **0.761** | **0.744** |
| Exposure-only ROC (no score) | 0.713 | **0.754** |
| Label-blind opportunity expectation (AUC) | 0.553 | **0.611** |
| Within-stratum residual (AUC, MEDIUM cells) | 0.471 (≈ chance) | **0.462** (≈ chance) |
| Nested DeLong increment over exposure | +0.010 ($p = 0.013$) | **+0.005** ($p = 0.191$, null) |
| Matched-permutation $p$ (within-strata shuffle) | 0.127 | **0.906** |
| Label-frozen prospective timing (AUC) | 0.713 | **0.595** ($N^+ = 98$) |
| Top-case concentration (share of positives) | 32.0% | **64.4% top-two** |
| Negative-control verdict | generic geometry | generic geometry |

!!! abstract "What ports is the audit, not a deployable score — two points on one inflation surface"
    On both platforms the raw validation **over-credits** the screen: the raw award-layer ROC (0.744 federally) looks like discrimination until one asks what an analyst would have predicted from procurement opportunity alone. Federally that question answers itself in a single line — the **exposure-only ranking, which never sees the score, reaches 0.754, matching and if anything edging out the raw score itself (0.744)**. Where on BEC the exposure axis only *approaches* the raw score, federally it already *equals* it. This is **not coincidence**: under [Object 2](#object-2-the-over-crediting-bias-as-an-estimable-object), federal's roughly **10× lower base rate** makes the size-biasing more complete, which is exactly why exposure-only edges out raw federally. BEC and federal are therefore **two coordinates on one inflation surface**, not the same null twice. The rest of the battery confirms the reading from below: the within-stratum residual collapses to near chance (0.462), the nested model adds nothing detectable over exposure (+0.005, $p = 0.191$), and the matched-strata permutation does not reject ($p = 0.906$). The deflation **replicates**: what transfers across the two systems is the **audit protocol** — the decomposition that catches the over-crediting wherever it is run — **not a deployable loser-side ranking**.

### Power-bound honesty

The federal positive set ($N^+ = 195$) is roughly **30% of BEC's**, so the federal null is stated as a power bound, not a clean small-residual null:

| True within-AUC | Federal detection probability | BEC |
|---|---:|---:|
| 0.55 | **0.35** (underpowered) | 0.97 |
| 0.60 | **0.90** (ruled out) | — |
| 0.65 | 1.00 | — |

The matched-permutation null is **informative against a within-stratum residual ≥ 0.60** but **underpowered against 0.55**, so the federal deflation does not rest on the permutation alone. It rests on four power-robust pillars no sample-size argument dissolves: the exposure-only ranking already matches the raw score, the within-stratum point estimate sits **below 0.5**, the matched permutation does not reject, and the negative controls return the same generic geometry. The within-stratum **positive control recovers ≥ 0.99** ($O_i$ control 0.992) — so the design provably detects within-stratum signal when present; the federal null is a power bound on a genuine null, not a design artifact.

### Negative controls: generic geometry

Both placebos reproduce the real raw AUC — the protocol's designated arbiter ruling that the surviving ordering is generic opportunity/volume geometry, not cartel-specific:

| Control | Real AUC | Null mean | $p$ |
|---|---:|---:|---:|
| Matched-volume placebo anchors | 0.744 | 0.728 | **0.258** (ns) |
| Non-CADE high-volume-winner anchors | 0.744 | 0.746 | **0.582** (ns) |

### Case-concentration disclosure

The federal positive base is **more cartel-concentrated than BEC's**, and the operational ranking is one-to-two-cartel-dominated. The disclosure is dual and mandatory:

| Concentration metric | Federal | Read |
|---|---:|---|
| Top-case share of positives | 35.4% (69/195) | most flattering — never led with alone |
| **Top-two share of positives** | **64.4%** | mandated headline disclosure |
| **Top-case share of TP@500** | **87.5%** | honest operational concentration |
| LOCO ROC drop-largest case | 0.744 → **0.744** | ordering robust |
| Clustered-RI $p$ (ROC ordering) | **0.001** | ordering non-random |
| Clustered-RI $p$ (case-coverage breadth) | 0.487 (ns) | breadth not distinguishable from random |

!!! warning "The ordering is LOCO-robust; the realized detections are one-cartel-dominated"
    The ROC *ordering* is genuinely multi-case — leaving out the largest case keeps ROC at 0.744 → 0.744, clustered-randomization-inference ordering $p = 0.001$ — so the rank-ordering is not driven by any single cartel. But the realized **operational** detections are one-to-two-cartel-dominated: TP@500 is **87.5% one case**, the top two cases are **64.4% of positives**, and the case-coverage-breadth test is non-significant ($p = 0.487$). The federal leg is therefore a **single-system, concentrated-anchor stress test** of the protocol, **not a multi-case operational generalization**.

### Timing and contact-intensity (same shape as BEC)

The strict-temporal carrier replicates: the prospective ranking collapses outside the incumbent pool on both platforms (strict full-universe ROC **0.489** federal / 0.474 BEC), while the incumbent-pool continuous score deflates in the same magnitude class (**0.666** federal vs 0.684 BEC). The label-frozen prospective score ranks new 2017–2019 contact at **0.595** ($N^+ = 98$, above chance but below the $N \geq 120$ comparability floor — reported as such, not led upon). Restricting cobidders to ≥2 co-participations with a defendant ($N^+ = 108$) does not overturn the reading: within-stratum stays below chance (0.432), matched-permutation $p = 0.951$ — the dilution objection is closed. Direct-defendant FL-binary AUC is ≈ chance (0.465–0.503), reproducing the loser-side scope by design.

---

## Summary: Reach and Limits

The paper maps both the reach and the limits of award-layer screening, in declining order of confidence:

1. **The organizational result and the audit protocol are the contributions.** Raw award-layer ROC **0.761** / PR-AUC **0.143**; within-stratum AUC **0.471** (≈ chance); the only positive is a fragile nested increment **+0.010** (DeLong $p = 0.013$) that is **not robust across designs** (matched permutation $p = 0.127$, FL-enrichment $p = 0.067$, matched $dP$ negative). Most raw concentration is mechanical exposure; **no robust residual signal survives**.
2. **The scope boundary is real and by design.** Direct-CADE **binary** AUC **0.49** — the binary flag is blind to win-heavy defendants; the **continuous** score ranks them at 0.66–0.70.
3. **Timing and single-case limits bind.** Below-chance out-of-time on the full universe (ROC ≈ 0.474, precision@500 = 0); one case ≈ 32% of positives (leave-largest-out PR-AUC −37%); the estimated ranking is case-sensitive, not portable.
4. **The award and bid layers are comparable.** Award 0.760/0.143 vs bid RF 0.717/0.116; combined beats award on PR under random CV (0.188) but falls below it under case-grouped folds (0.103). Conditional, case-fragile complementarity.
5. **The cost-recall frontier is the object, not a cutoff — and it is the image of a solved stopping rule** ([Object 1](#object-1-the-enforcers-evidence-acquisition-problem)). Lead with the **bid-row** reduction (~33% at $K_1 = 2000$); the **88.1% firm reduction overstates** forensic cost; $K_1 = 1000$ beats $K_1 = 2000$; no optimal $K$ because the optimum is budget-dependent.
6. **The price imprint is scope, not damages.** +0.064 broad → −0.097 overlap-cell ATT; only Q4 positive; mechanism not identified.
7. **The audit ports to a second platform — provisionally.** On federal ComprasNet (2013–2019, partially overlapping anchors) the deflation **replicates** and on the decisive row lands more cleanly: exposure-only ROC 0.754 ≥ raw 0.744; within-stratum 0.462 (≈ chance); nested +0.005 ($p = 0.191$); negative controls $p = 0.258 / 0.582$. What ports is the **audit protocol and the construct**, not a deployable score — and the federal leg is a concentrated-anchor stress test (top-two 64.4%, TP@500 87.5% one case), not a multi-case generalization.

The contributions are (1) an **organizational result** — the enforcer's evidence-acquisition problem ([Object 1](#object-1-the-enforcers-evidence-acquisition-problem)), in which award-to-bid recovery is a sequential optimal-stopping problem and the cost-recall frontier is the *empirical image* of the solved rule (each operating point a budget-dependent tangency $\rho/\phi = c/V$; the frontier, not any cutoff, is the design object); (2) a **disciplined audit protocol** carrying the portable principle that *validating an administrative screen against adjudicated cases without adjusting for procurement opportunity systematically over-credits it* — with the over-crediting now a **characterized, estimable bias** ([Object 2](#object-2-the-over-crediting-bias-as-an-estimable-object): a volume size-bias whose inflation grows with the CV of participation volume and shrinks with the base rate, with CV of $T$ as a portable sufficient statistic computable before any bid file is opened); and (3) a **reach-and-limits map** showing that cheap award-layer records, under a non-circular label, do **not** carry a robust cartel-ordering signal net of opportunity. They support **incumbent-firm triage with retrospective validation**, not platform-wide prospective deployment, and they do not prove conduct.
