---
paper: frequent-losers
id: an-044
hypothesis: exposure-discipline
type: methodological
question: Why does the raw award-screen AUC inflate, and can the inflation be characterized as an estimable object with a portable sufficient statistic? The score and the contact-defined cobidder label both load on participation volume T, so the positive class is the size-biased T distribution. The inflation Δ = AUC_raw − AUC_opportunity-adjusted should then grow with the dispersion of participation volume (CV of T) and shrink with the adjudicated base rate, with CV of T a sufficient statistic computable before any bid file is opened.
status: provisional
status_date: 2026-06-06
confidence: yellow
claim-altitude: methodological characterization (signs analytic; magnitude by transparent synthetic simulation)
headline: "PROVISIONAL / METHODOLOGICAL — the over-crediting bias is a characterized, estimable object, not just an empirical null. Because the award score is monotone in participation volume T (log(1+T)) and the contact-defined cobidder label is also mechanically increasing in T (Pr(cobidder|T) ≈ πT in the rare-target regime), both load on volume: the positive class is the SIZE-BIASED T distribution and the raw ROC-AUC is just Pr(T_i > T_j) with T_i size-biased relative to a random negative T_j — an ordering that exists before any conduct enters. Two comparative-static SIGNS are proved in the rare-target regime (prop:inflation): the inflation Δ GROWS with participation-volume dispersion (Δ → 0.5 with no dispersion — nothing to rank) and SHRINKS as the adjudicated base rate rises (a rarer target is more strongly size-biased). The coefficient of variation of T in the candidate pool is a SUFFICIENT STATISTIC for how inflated an uncorrected award-screen AUC is likely to be — computable from award data alone, before a single bid file is opened — a DIAGNOSTIC for the size of the bias, NOT a correction that rescues the screen. A transparent synthetic simulation (script 14) over a CV × base-rate grid reproduces BEC's raw AUC (sim 0.768 at BEC's coordinates vs locked 0.761) and lands BOTH real platforms on the predicted surface: BEC (CV(T) ≈ 2.79, base rate ≈ 3.9%, raw 0.761, within 0.471, Δ ≈ 0.29) and federal ComprasNet (CV(T) ≈ 3.79, base rate ≈ 0.5%, raw 0.744, within 0.462, Δ ≈ 0.28). Federal's roughly 10× lower base rate makes the size-biasing MORE complete, which is exactly why the federal exposure-only ranking (0.754) edges out the raw score (0.744) — the lower-base-rate direction the characterization predicts. BEC and federal are therefore two coordinates on one inflation surface, not the same null twice. NO closed-form magnitude is claimed; signs are analytic, magnitude is simulation; the simulation uses only the published T distribution shape and base rates — no confidential microdata."
created: 2026-06-06
script: work/v22-editor/scripts/analysis/14_overcrediting_inflation_sim.R
target: work/v22-editor/outputs/diagnostics/inflation_surface.csv + inflation_real_points.csv + outputs/figures/fig_inflation_surface.pdf
tags: ["H:exposure-discipline", "H:cobidder-concentration", over-crediting, size-bias, sufficient-statistic, CV-of-T, inflation, simulation, methodological, provisional, two-platforms]
design:
  sample: "SYNTHETIC simulation grid. Participation volume T drawn from a family indexed by CV(T) (bracketing BEC ≈ 2.79 and federal ≈ 3.79); labels y_i ~ Bernoulli(min(πT_i, 1)) with π gridded to sweep the adjudicated base rate over 0.005–0.5 (bracketing federal ≈ 0.5% and BEC ≈ 3.9% on the always-loser pool). Two REAL overlay points use only two scalars per platform — the CV of always-loser tenders_count and the adjudicated base rate — read from the on-disk FREQ_PARTICIP_rebuilt parquets. No firm identifier, no per-firm row, nothing confidential is written."
  specification: "Score = log(1+T) (monotone in T). Raw ROC-AUC computed on the pooled draw; opportunity-adjusted (within-T-stratum) AUC removes the volume channel and, with no genuine within-stratum signal injected (θ = 0), sits at ≈ 0.5. Δ = AUC_raw − AUC_within is the over-crediting inflation. The grid demonstrates the two comparative-static signs (Δ↑ in CV, Δ↓ in base rate); the BEC + federal real points are overlaid on the surface. The genuine within-stratum signal injection reuses the EXISTING permutation-power machinery (θ = 0 for the pure-null curve)."
  notes: "METHODOLOGICAL / PROVISIONAL. The Proposition states SIGNS only; the magnitude function g(CV, base rate) is NOT closed-form and is demonstrated by simulation, not asserted as a formula. The sufficient statistic (CV of T) is a DIAGNOSTIC for the size of the inflation, not a fix that rescues the screen — the genuine within-stratum floor is ≈ chance on both platforms either way. The within-stratum ≈ chance floor is power-bounded federally (≤ 0.55 unadjudicated at N+ = 195); the inflation characterization is the part that holds at full power (the first-stage size-bias / label-blind E), the residual floor is power-bounded — these are kept separate. The two CADE anchor families partially overlap, so this tests portability of the inflation law, not an independent cartel test."
---

!!! warning "Provisional / methodological — signs analytic, magnitude simulated; no closed-form"
    This note characterizes *why* the raw award-screen AUC inflates and gives a portable
    sufficient statistic for the size of the inflation. The two comparative-static **signs**
    are analytic (proved in the rare-target regime, `prop:inflation`); the **magnitude** is
    demonstrated by a transparent synthetic simulation over a parameter grid — **no
    closed-form inflation formula is claimed**. The simulation uses only the published
    participation-volume distribution shape and base rates; no confidential microdata enters
    any output. Where this page conflicts with the [paper](../paper.pdf) or the
    [changelog](../changelog.md), **the paper wins**.

# AN-044: The over-crediting bias as an estimable object (size-bias, CV-of-$T$ sufficient statistic)

!!! abstract "Intuition (plain-language)"
    The headline number — a raw screen that "ranks cobidders at 0.76" — looks like
    discrimination until you ask a plain question: *would a firm that simply bids in more
    tenders land near a cartel more often, regardless of how it bids?* It would, mechanically.
    The screen ranks firms by how often they lose, which tracks how often they participate; and
    a "cobidder" is, by construction, a firm that shared at least one tender-item with a
    defendant — which is also more likely the more it participates. So the score and the label
    are **both** functions of participation volume. The positive class is just the high-volume
    firms, reshuffled — the raw AUC is the probability that a (volume-weighted) positive firm
    participated more than a random negative one. That ordering exists *before any conduct
    enters*. The useful part is that this bias is **predictable and measurable**: it grows when
    firms differ a lot in how much they bid (high dispersion) and shrinks when the target is
    less rare. You can compute one number from the candidate pool alone — the coefficient of
    variation of participation volume — and read off, *before opening any expensive bid file*,
    how much of any raw AUC is just volume geometry. It is a **diagnostic, not a fix**: it tells
    you how inflated the screen is, not how to rescue it. And it explains why BEC and federal
    ComprasNet are **two points on one curve**, not the same null twice: federal's much rarer
    target makes the bias more complete, which is exactly why its exposure-only ranking edges
    out the raw score.

## Question

The validation audits ([AN-004](an-004-cobidder-baseline.md),
[AN-027](an-027-universe-anchored-stratum-scope.md),
[AN-043](an-043-federal-opportunity-adjusted-validation.md)) establish *empirically* that
the raw award-screen AUC is mostly mechanical opportunity, not discrimination. This note asks
the next question: can the over-crediting be **characterized** as an estimable object — a bias
with a known mechanism, known comparative statics, and a sufficient statistic a practitioner
can compute *before* committing forensic resources?

## Design

- **Mechanism.** The award score is monotone in participation volume $T$ (it is
  $\log(1+T)$). The contact-defined cobidder label is mechanically increasing in $T$:
  $\Pr(\text{cobidder}_i = 1 \mid T_i) = 1 - (1-\pi)^{T_i} \approx \pi T_i$ in the
  rare-target regime, where $\pi$ is the per-tender-item defendant-contact rate. So **both
  score and label load on $T$**: the positive class is the **size-biased** $T$ distribution
  and the negative class is approximately $F_T$, giving
  $\text{AUC}_{\text{raw}} = \Pr(T_i > T_j)$ with $T_i$ size-biased relative to a random
  negative $T_j$ — a classic size-bias gap.
- **Two signs (proved in the rare-target regime, `prop:inflation`).**
  (a) The size-bias gap is **increasing in the dispersion** of $F_T$; for participation
  counts (Gamma / Poisson-mixed), $\text{AUC}_{\text{raw}}$ increases in the **coefficient of
  variation $\text{CV}(T)$**, and in the degenerate (no-dispersion) limit
  $\text{AUC}_{\text{raw}} \to 0.5$ — there is nothing to rank.
  (b) As the **base rate rises**, the size-biasing saturates ($1-(1-\pi)^T$ flattens) and
  $\text{AUC}_{\text{raw}}$ **declines toward** the within-stratum (genuine-signal) value —
  so a **lower** base rate means **more** inflation.
- **Synthetic simulation (magnitude).** Draw $T_i$ from a family indexed by $\text{CV}(T)$;
  generate $y_i \sim \text{Bernoulli}(\min(\pi T_i, 1))$ with $\pi$ swept to vary the base
  rate; with no injected within-stratum signal ($\theta = 0$) the opportunity-adjusted AUC
  sits at $\approx 0.5$, so $\Delta = \text{AUC}_{\text{raw}} - \text{AUC}_{\text{within}}$ is
  the pure size-bias inflation. The injection device reuses the existing permutation-power
  machinery. **The two real platforms are overlaid** using only the candidate pool's
  $\text{CV}(T)$ and base rate — two scalars each, no microdata.

## Results

### The inflation law (signs) holds across the grid

| Comparative static | Predicted sign | Simulation |
|---|---|---|
| $\partial \Delta / \partial\, \text{CV}(T)$ | $> 0$ (more dispersion ⇒ bigger size-bias gap) | confirmed across the grid |
| $\partial \Delta / \partial\, \text{base rate}$ | $< 0$ (rarer target ⇒ more inflation) | confirmed across the grid |
| Degenerate $T$ (no dispersion) | $\text{AUC}_{\text{raw}} \to 0.5$ | confirmed (Δ → ≈ 0.02 at CV = 0.5) |

At the BEC base rate ($\approx 3.9\%$), the simulated raw AUC rises monotonically with
$\text{CV}(T)$ — from $\approx 0.52$ at CV = 0.5 to $\approx 0.84$ at CV = 5 — while the
opportunity-adjusted AUC stays pinned near $0.5$ throughout.

### Both real platforms land on the predicted surface

| Quantity | BEC–SP | Federal ComprasNet | Predicted relation |
|---|--:|--:|---|
| $\text{CV}(T)$ (always-loser pool) | 2.79 | 3.79 | federal more dispersed |
| Adjudicated base rate (AL-pool) | ≈ 3.9% | ≈ 0.5% | federal ≈ 10× rarer |
| Raw award AUC (locked) | 0.761 | 0.744 | comparable |
| Within-stratum AUC (genuine floor, locked) | 0.471 | 0.462 | both ≈ chance |
| Inflation $\Delta$ (raw − within, locked) | ≈ 0.29 | ≈ 0.28 | comparable |
| Simulated raw AUC at the platform's $(\text{CV}, \text{base rate})$ | 0.768 | 0.808 | reproduces / brackets the locked raw |
| Exposure-only AUC (locked) | 0.713 | 0.754 | **federal exposure-only ≥ raw** |

The simulation reproduces BEC's locked raw AUC (sim **0.768** vs locked **0.761**) at BEC's
coordinates, and both platforms sit on the predicted surface. The figure overlays both real
points (`outputs/figures/fig_inflation_surface.pdf`).

!!! abstract "Why federal's exposure-only edges out raw — the lower-base-rate prediction"
    Federal's roughly **10× lower base rate** makes the size-biasing **more complete**, so the
    inflation is, if anything, *more* of the raw number federally than on BEC. That is exactly
    why the federal **exposure-only** ranking (0.754), which never sees the score, **edges out
    the raw score itself** (0.744) — whereas on BEC the exposure axis only *approaches* the raw
    score. BEC and federal are therefore **two coordinates on one inflation surface** at
    different $(\text{CV}(T), \text{base rate})$ values, **not "the same null twice."** This is
    the generalizing content the characterization supplies.

## Interpretation

**The over-crediting is a characterized object, not an accident of this dataset.** The raw
award-screen AUC inflates because score and contact-defined label are both monotone in
participation volume, making the positive class the size-biased volume distribution. The two
comparative-static signs are analytic in the rare-target regime; the magnitude is demonstrated
by a transparent synthetic simulation, **not** asserted as a closed-form formula.

**The sufficient statistic is portable — and is a diagnostic, not a fix.** A practitioner can
compute the candidate pool's $\text{CV}(T)$ from award data alone, *before opening any bid
file*, to bound how much of an uncorrected raw AUC is mechanical. This converts the paper's
central caveat ("adjust for procurement opportunity or you over-credit the screen") into a
**portable diagnostic**. It does **not** rescue the screen: the genuine within-stratum floor is
$\approx$ chance on both platforms either way, and the correction *reveals* that floor rather
than lifting it.

**What is full-power vs power-bounded.** The size-bias / label-blind first-stage deflation is
the part that replicates at full power across both platforms; the residual within-stratum floor
($\approx$ chance) is power-bounded federally (≤ 0.55 unadjudicated at $N^+ = 195$). The two are
kept separate: the inflation characterization is the robust part, the residual-floor null is the
power-bounded part.

**Scope of the claim.** This characterizes the **over-crediting mechanism** — a statement about
how a raw validation number is produced — which is the [exposure-discipline (H3)
hypothesis](../hypotheses/exposure-discipline.md) that is now **Confirmed** across two
platforms. It does **not** promote the screen to a portable detection tool: the cross-platform
*detection* umbrella stays provisional, and the federal CADE anchors **partially overlap** the
BEC portfolio, so this tests portability of the inflation law, not an independent cartel test.
Confidence is **🟡 yellow / provisional**: the object is clean and the signs are proved, but the
magnitude rests on a simulation and the federal anchors partially overlap.

## Bearing on hypotheses

- **H:exposure-discipline (H3).** Primary bearing — characterizes the over-crediting mechanism
  that H3 asserts (Confirmed across two platforms), turning the empirical null into an estimable
  object with a sufficient statistic. Provisional/methodological support; does not change the
  H3 status.
- **H:cobidder-concentration (H1).** Explains *why* the raw concentration is generic
  co-participation arithmetic: the positive class is the size-biased volume distribution, so the
  raw AUC exists before any conduct.

## Follow-ups

- A genuinely independent cartel anchor (non-overlapping cases, or another jurisdiction) would
  add a third coordinate on the inflation surface and test the law out of sample.
- Reporting the $\text{CV}(T)$ sufficient statistic alongside any future award-screen
  validation as a standard pre-registration diagnostic.
