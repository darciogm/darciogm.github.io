---
id: h4
slug: timing-discipline
title: "Cobidder concentration survives timing discipline"
cluster: B
paper_section: "§4.2"
status: pending
last_updated: 2026-05-22
---

# H:timing-discipline — Cobidder concentration survives timing discipline

A retrospective screen built using post-target information leaks predictive
power. The hypothesis is that the FL ranking still concentrates cobidders
when the score is formed strictly before the target window — including
strict ex ante definitions that exclude any in-target information.

> **Evidence strength: Pending.**
> Backed by §4.2 of the [manuscript](../paper.md). AN pages to follow.

## Theory

Out-of-time evaluation is the standard discipline for predictive
classifiers \citep{wallimann2023machine}. For an enforcement triage rank,
the relevant timing is the enforcement decision moment: information used to
form the score must precede the period in which forensic priority is
allocated.

## Prediction

The cobidder concentration result should hold:

- under a **relaxed** timing rule (score formed before the target window but
  with overlap allowed at the firm-history level); and
- under a **strict** ex ante rule (no post-target information in the score,
  including no firms with post-target participation).

## Competing prediction

**Hindsight inflation.** If concentration collapses under strict timing, the
result reflects retrospective knowledge of cartel adjudications. The
hypothesis predicts retention of the signal; the placebo predicts collapse.

## Case evidence

CADE adjudication dates are public and can be used to define the target
window. The temporal-holdout audit (script `27_strict_prospective_holdout.R`)
constructs the strict ex ante variant.

## Empirical test

- *Relaxed timing*: score uses pre-target participation; cobidder
  classification uses any-time participation.
- *Strict timing*: score uses pre-target participation; cobidder
  classification restricted to pre-target cobidders.
- *Outcome*: AUC against cobidders under each timing rule.

## Data requirements and limitations

Requires CADE adjudication dates aligned with the BEC panel. Limitation:
strict timing reduces effective sample size and statistical power; the
test is therefore a worst-case stress rather than the operational
deployment scenario.

## Evidence

| Analysis | Bearing | Status |
|---|---|---|
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (timing holdout) | Direct | pending |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k temporal holdout) | Supports | pending |

## Open tests

- Window-length sensitivity.
- Decomposition of attenuation into sample-size vs information channels.
