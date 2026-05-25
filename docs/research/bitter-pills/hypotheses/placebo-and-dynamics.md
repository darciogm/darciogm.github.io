---
paper: bitter-pills
id: h7
slug: placebo-and-dynamics
title: "The urgent-procurement pattern is specific to litigated items; dynamic evidence is diagnostic, not the primary design"
cluster: D
paper_section: "§5 + Appendix"
status: partial (strongly supported)
last_updated: 2026-05-25
---

# H:placebo-and-dynamics — The urgent-procurement pattern is specific to litigated items; dynamic evidence is diagnostic, not the primary design

Two robustness pieces close the argument. First, a **placebo**: if the
urgent-procurement pattern were a general artifact of the data rather than
something tied to the litigation margin, it should reproduce on items that are
*never* subject to litigation. It does not — the placebo coefficient is
economically and statistically null. Second, a **dynamic event study** (BJS)
that traces the urgent margin over time around exposure. The dynamic estimates
are informative in direction but do **not** survive Honest-DiD sensitivity at
the observed maximum pre-period scale, so the dynamic evidence is presented as a
**diagnostic**, not as the paper's primary identification. The primary design
remains the selection-bounded UTG comparison and the within-firm-buyer-item test.

!!! abstract "Intuition (plain-language)"
    Two final checks. The first asks whether the pattern is real or just a quirk of the data: we run the same test on medicines that are never litigated. If the effect showed up there too, we would worry it was an artifact — but it comes back flat, essentially zero, which tells us the pattern is specific to the litigation margin. The second is a timing study that watches the urgent margin evolve around exposure. It points the right way, but when we stress-test it for pre-trend violations it does not hold up at the largest pre-period deviation we actually observe. So we report it honestly as a diagnostic that is consistent with the story, not as the backbone of the identification. The backbone is the bounded under-the-gun comparison and the same-firm test.

> **Evidence strength: Partial (strongly supported).**
> The placebo on never-litigated items returns a negotiated-price coefficient of
> **−0.020 (SE 0.032), null**
> ([AN-008](../analyses/an-008-placebo-never-litigated.md)) — the pattern does
> not reproduce off the litigation margin. A stricter buyer-by-class placebo
> battery ([AN-013](../analyses/an-013-litigation-specificity-placebos.md))
> restricts never-litigated items to procurement environments that also contain
> litigated purchases; the negotiated-price coefficient remains null
> (−0.046, SE 0.053), as do the quantity-controlled negotiated-price,
> reference-price, and bidder-count placebos. The BJS event study
> ([AN-010](../analyses/an-010-dynamic-bjs-honestdid.md)) gives a first
> post-exposure estimate of 0.052 (SE 0.018) rising to 0.147 (SE 0.026) by the
> fifth period, but Honest-DiD sensitivity **does not survive deviations at the
> observed maximum pre-period scale**, so the dynamic evidence is diagnostic, not
> the primary design. The partial-strong status rests on the placebo
> specificity battery, not on treating the dynamics as causal identification.

![BJS event study around item-level litigation exposure (diagnostic, not the primary design)](../assets/figures/fig_event_study_item_v10.png)

## Theory

A credible mechanism story should be *specific*: the cost margin should attach to
the litigation margin, not to urgent procurement in general or to the data
universe at large. A placebo on never-litigated items operationalizes this
specificity — there is no litigation channel there, so any apparent effect would
signal a confound rather than the mechanism. The dynamic event study addresses a
different question: the *timing* of the margin around exposure. Modern
heterogeneity-robust event-study estimators (Borusyak, Jaravel & Spiess, 2024) recover an
interpretable dynamic path, but their credibility depends on parallel-trends
assumptions that cannot be tested directly. Honest-DiD sensitivity analysis
(Rambachan & Roth, 2023) asks how large a pre-trend violation the dynamic estimates
could tolerate before the conclusion flips; when the answer is "smaller than the
pre-period deviations we actually observe," the dynamic design cannot carry the
primary identification and is properly demoted to a diagnostic.

## Prediction

- **Placebo**: the urgent-procurement price coefficient on never-litigated items
  should be **economically and statistically zero**.
- **Dynamics**: the BJS event study should show a post-exposure rise in the
  urgent margin (directionally consistent with the main results), while
  Honest-DiD sensitivity will reveal whether that path is robust to plausible
  pre-trend violations.

## Competing prediction

**General artifact.** If the urgent-procurement pattern were a generic feature
of the data — an item-mix effect, a reporting artifact, a general urgency
phenomenon unrelated to litigation — it would reproduce on never-litigated
items. The null placebo coefficient (−0.020, SE 0.032) rejects this: the pattern
is specific to the litigation margin. For the dynamics, the competing reading
would treat the rising event-study path as primary causal evidence; the
Honest-DiD result blocks that overclaim, which is exactly why the paper labels
the dynamic evidence diagnostic rather than load-bearing.

## Setting evidence

The BEC pharmaceutical data contain many items that are never subject to
right-to-health litigation, providing a natural placebo universe with the same
procurement procedures but no litigation channel. The same data support an
exposure-timed event study around the onset of litigation for affected items.
The institutional account in [docs/paper.md](../paper.md) describes how the
litigation margin is identified in the data and why never-litigated items form a
clean placebo group for specificity (not for the main causal contrast).

## Empirical test

- *Placebo outcome*: log negotiated price on never-litigated items, urgent
  contrast.
- *Dynamic outcome*: BJS heterogeneity-robust event-study coefficients on the
  urgent margin around exposure, with a Rambachan-Roth Honest-DiD sensitivity
  overlay.
- *Specifications*: placebo regression mirroring the main urgent specification on
  the never-litigated subsample; BJS estimator with pre- and post-exposure
  leads/lags; Honest-DiD bounds anchored to the observed maximum pre-period
  deviation.
- *Sample*: never-litigated items for the placebo; the exposure panel for the
  dynamics.

## Data requirements and limitations

Requires the never-litigated subsample for the placebo and an exposure-timed
panel for the event study. The placebo is a **specificity** check and supports
the mechanism by rule-out; a null there is consistent with, but not proof of,
the main contrast. The dynamic event study is explicitly **diagnostic**: because
Honest-DiD sensitivity does not survive deviations at the observed maximum
pre-period scale, the event-study path should not be read as the primary causal
design, and the paper does not rest any headline magnitude on it. The primary
identification is the selection-bounded UTG comparison
([H:utg-gap-selection-bounded](utg-gap-selection-bounded.md)) and the
within-firm-buyer-item test
([H:no-broad-same-firm-markup](no-broad-same-firm-markup.md)).

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-008](../analyses/an-008-placebo-never-litigated.md) | Supports (via rule-out) | Placebo on never-litigated items: negotiated-price coefficient −0.020 (SE 0.032), economically and statistically null. The pattern is specific to the litigation margin. |
| [AN-013](../analyses/an-013-litigation-specificity-placebos.md) | Supports | Stricter buyer-by-class placebo: matched never-litigated negotiated-price coefficient −0.046 (SE 0.053), −0.020 (SE 0.070) with quantity control; reference-price and bidder-count placebos are also null. |
| [AN-010](../analyses/an-010-dynamic-bjs-honestdid.md) | Diagnostic | BJS event study: first post-exposure estimate 0.052 (SE 0.018), five-period estimate 0.147 (SE 0.026), directionally consistent. Honest-DiD does not survive deviations at the observed maximum pre-period scale — diagnostic, not primary. |

## Open tests

### Classifier-threshold sensitivity

The placebo battery now includes a matched buyer-by-class never-litigated
comparison. A remaining implementation check is to re-run the placebo battery
under stricter classifier-confidence thresholds if regime-level confidence
scores are exposed in the public replication files.

### Alternative dynamic estimators as a triangulation

Re-estimating the dynamic path with a second heterogeneity-robust estimator and
reporting its own Honest-DiD bound would triangulate the diagnostic reading.
This would not promote the dynamics to primary status — that is precluded by the
pre-period sensitivity — but it would document the diagnostic more fully.

### Classifier robustness underpinning the samples

All of these samples rest on the urgent-class classifier (764,362 classified
purchase orders; 98.6% exact agreement vs 179,148 ground-truth POs; urgent-class
F1 0.93 judicial, 0.96 administrative, macro-F1 0.94). A sensitivity sweep
re-running the placebo and dynamics under stricter classification thresholds
would confirm the robustness pieces do not hinge on borderline classifications.
