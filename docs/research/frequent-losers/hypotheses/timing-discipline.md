---
paper: frequent-losers
id: h4
slug: timing-discipline
title: "Cobidder concentration survives timing discipline"
cluster: B
paper_section: "§4.2"
status: "partial (strongly supported)"
last_updated: 2026-05-22
---

# H:timing-discipline — Cobidder concentration survives timing discipline

A retrospective screen built using post-target information leaks predictive
power. The hypothesis is that the FL ranking still concentrates cobidders
when the score is formed strictly before the target window — including
strict ex ante definitions that exclude any in-target information.

!!! abstract "Intuition (plain-language)"
    Could the screen perform well only because we built it with hindsight, using post-period information that wouldn't be available to a regulator in real time? We test this with progressively stricter timing rules: train on 2009–2015 data only; test against cobidders linked to cartels adjudicated AFTER 2019. The screen still achieves AUC 0.79–0.89 against this strictly disjoint target. Combined with the structural fact that 91% of test-window firms are not in the training pool, the timing discipline is about as well-supported as within-data evidence allows.


> **Evidence strength: Partial (strongly supported).**
> Five converging timing audits within the BEC × CADE data:
> (i) **Three-classifier battery** ([AN-029](../analyses/an-029-three-classifier-timing-battery.md)):
> clf_2015 FL AUC 0.791 / continuous 0.851; clf_2017 FL 0.856 /
> continuous 0.897 vs all cobidders. Against truly out-of-time
> cobid_post2019 (CADE cases adjudicated AFTER the train window):
> clf_2015 FL 0.786 / continuous 0.854; clf_2017 FL 0.844 / continuous
> 0.894. AUC preserved across three train horizons × two genuine OOS
> targets.
> (ii) **Strict ex ante firm-level** ([AN-006](../analyses/an-006-strict-prospective-holdout.md)):
> 0.767 [0.734, 0.800] (FL14) and 0.750 [0.706, 0.795] (continuous).
> (iii) **Precision@k temporal holdout** ([AN-013](../analyses/an-013-precision-at-k-audit.md)):
> precision@500 = 0.070 (lift 6.1×, retention 53%). Operational claim
> uses this column.
> (iv) **Leakage audit firm AUC under temporal holdout** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> 0.864 [0.858, 0.870]; direct-defendant AUC stays at 0.511 (regime-
> invariant null).
> (v) **Structural firm turnover** ([AN-030](../analyses/an-030-market-persistence.md)):
> firm persistence between early (2009–2016) and late (2017–2019)
> windows = **8.7%**; market persistence 12.4%. The temporal holdout
> evaluates an essentially fresh firm population — not the same firms
> in disguise.
> Promotion to 🟢 (**Confirmed**) requires independent replication on a
> non-BEC procurement panel; see the H4 page section on why even the
> strictest within-data timing audits cannot satisfy that bar.

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

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (strict ex ante firm) | Direct | done | Firm AUC 0.767 (FL14) / 0.750 (continuous) |
| [AN-013](../analyses/an-013-precision-at-k-audit.md) (precision@k audit) | Direct | done | Precision retention 53%; lift retention 53%; ~47% inflation share |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit) | Supports | done | Temporal-holdout firm AUC 0.864 [0.858, 0.870] |
| [AN-029](../analyses/an-029-three-classifier-timing-battery.md) (three-classifier battery) | Direct | done | 6 cells across clf × target preserve AUC 0.79–0.90 incl. truly-OOT cobid_post2019 |
| [AN-030](../analyses/an-030-market-persistence.md) (firm/market persistence) | Direct | done | 8.7% firm persistence: temporal holdout is genuinely fresh population |

## Open tests

- Window-length sensitivity (clf_2013, clf_2010 extensions to the
  three-classifier battery).
- Decomposition of attenuation into sample-size vs information channels.
- Cobidder-specific persistence rate (of 193 cobidders, how many in
  both windows?) — would refine [AN-030](../analyses/an-030-market-persistence.md).

## Why not 🟢 Confirmed?

The within-data timing evidence is unusually clean: the truly out-of-
time `cobid_post2019` target (cobidders defined by CADE adjudications
that happened AFTER even the clf_2017 training window) is genuinely
independent of train data by construction, and the screen still
returns FL AUC 0.79–0.84 and continuous AUC 0.85–0.89 against it.
Combined with 8.7% firm persistence between windows, the temporal
holdout is essentially a fresh-population evaluation.

Two artifact families nonetheless remain untested by any within-data
timing audit:

1. **Same data-generating process.** All evidence — including
   `cobid_post2019` — lives in BEC-SP procurement and CADE-Brasil
   adjudication. A systematic feature of *this institutional
   environment* could be driving the persistence of the signal across
   sub-windows (e.g., a structural feature of how Brazilian
   procurement-cartel cases get adjudicated; a feature of BEC's
   participation registration that produces consistent
   loser-side footprints across sub-periods). The temporal holdout
   cannot distinguish "the screen generalizes across firms and time"
   from "the screen captures a stable feature of BEC-SP".

2. **Selection-on-CADE-adjudication is time-correlated.** The
   `cobid_post2019` cobidders are still defined relative to CADE's
   adjudication choices. If CADE's selection of which cartels to
   adjudicate has a stable bias (e.g., always selecting cases with
   loser-side activity), the post-2019 cobidders would inherit that
   bias even though they are out-of-time relative to the train window.

Both can only be ruled out by replication on a non-BEC panel with an
independent cartel anchor (ComprasNet federal + a federal-level
anti-cartel authority; another state's e-procurement with its own
cartel adjudications; or cross-country with comparable forensic
benchmarks). Until that exists, H4 stays at **Partial (strongly
supported)**, consistent with H1 and H3 and the project-wide rule
documented in [findings/index.md](../findings/index.md).
