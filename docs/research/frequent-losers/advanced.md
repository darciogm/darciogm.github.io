---
paper: frequent-losers
---

# Advanced Methods

This page collects the methodological machinery that supports the
empirical claims in the manuscript but is too heavy for the
[Robustness](robustness.md) and [Extensions](extensions.md) tabs. It
documents the formal audit chain that the v18 submission relies on,
with cross-references to the AN pages where each result is computed.

## Identification under costly observability

The award-layer triage is operationalized as a **monotone rank** over
zero-win firms, not a classifier. The legal-economic object is
*forensic priority*, not liability. The construct identifies
participation intensity within the always-loser stratum; that
intensity orders cobidder risk, not cartel membership.

Two scope conditions discipline the interpretation:

1. **The rank does not detect winner-heavy defendants.** AUC against
   47 direct CADE defendants is 0.491 [0.461, 0.520] in the full
   panel ([AN-007](analyses/an-007-auc-direct-cade.md)); 0.506 in the
   raw item-level evaluation; 0.511 under temporal holdout. The null
   is regime-invariant.
2. **A scope-discipline matrix** confirms the rank targets exactly
   what the loser-side framing predicts and actively repels
   winner-heavy defendants
   ([AN-027](analyses/an-027-universe-anchored-stratum-scope.md)).
   Raw participation count against direct CADE in the full BEC
   universe returns AUC 0.383 — below random.

## Cobidder labels and adjudication anchors

The validation target is **adjudication-anchored exposure**: always-
loser firms that bid alongside direct CADE defendants in adjudicated
cartel environments. Direct defendants are 47 firms; cobidders are
193 firms ([AN-003](analyses/an-003-cade-bec-linkage.md)). The
cobidder set excludes direct defendants by construction; the 193
figure corrects an earlier 98-cobidder count that resulted from a
CNPJ zero-pad bug (v12 audit; locked from v13 onward).

The adjudication-anchored label inherits CADE's selection of which
procurement cartels to adjudicate. Cross-jurisdiction replication on
a non-BEC panel (see [`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md))
is the natural test of whether the loser-side concentration
generalizes beyond CADE's adjudication choices.

## Exposure, leakage, and timing audits

The audit chain disciplines the headline AUC against four artifact
families:

| Audit | Source AN | Outcome |
|---|---|---|
| Volume sham permutation (B = 2,000) | [AN-005](analyses/an-005-sham-fl-permutation.md) | Sham AUC mean 0.500, SD 0.013; observed 0.911 = 32 σ above null; *p* < 1/2,000 |
| Leakage decomposition (raw → OOF → temporal) | [AN-014](analyses/an-014-leakage-audit-d3.md) | 0.995 → 0.891 → 0.864; attenuation 0.10–0.13 |
| Timing discipline (strict ex ante) | [AN-006](analyses/an-006-strict-prospective-holdout.md), [AN-029](analyses/an-029-three-classifier-timing-battery.md) | Firm AUC 0.767 strict; three-classifier battery preserves AUC 0.79–0.89 against truly out-of-time cobid\_post2019 |
| Exposure-stratum balance | [AN-028](analyses/an-028-exposure-stratum-balance.md) | Within-FL14 cobidder distinctness d 0.19–1.00 across 7 dimensions |
| Cutoff sweep robustness | [AN-025](analyses/an-025-cutoff-sweep-robustness.md) | FL10–FL15 plateau ≥ 0.90; clean inverted-U |
| Subsample robustness | [AN-026](analyses/an-026-subsample-robustness.md) | AUC 0.89–0.96 across full/data-rich/low-bid/high-bid |
| CV precision stability | [AN-036](analyses/an-036-cv-precision-stability.md) | K-fold SD ≤ 0.011 |
| Market persistence (structural OOS) | [AN-030](analyses/an-030-market-persistence.md) | Firm persistence 8.7% between train/test — fresh population |

The chain is designed to enumerate the within-data artifact
families systematically. Each audit rules out a candidate
explanation for the observed concentration.

## Sequential gatekeeping and cost-of-evidence

The operational architecture sequences a cheap award-layer triage
before a costly bid-layer forensic stage. The architecture and its
cost-of-evidence trade-off are documented in:

- **[AN-010](analyses/an-010-imhof-full-pipeline.md)**: Imhof full
  pipeline vs FL14 alone vs joint. Imhof 0.888; FL14 0.903; joint
  0.955. Imhof CV-only is chance-level (0.585), so the bid-
  distribution pipeline needs participation features to reach its
  headline.
- **[AN-033](analyses/an-033-imhof-incremental-delong.md)**: formal
  DeLong incremental tests. Imhof + FL Δ = +0.096, *p* = 1.2 × 10⁻²⁶.
  Shapley decomposition: FL binary marginal beyond continuous
  tenders is only +0.003 — continuous participation is the load-
  bearing complement; FL14 is the auditable simplification.
- **[AN-034](analyses/an-034-sequential-gatekeeping-envelope.md)**:
  sequential FL → Imhof at Stage-1 K = 2,000 captures 74% of joint
  recall using 17% of bid-microdata footprint.
- **[AN-035](analyses/an-035-architecture-cost-of-evidence-matrix.md)**:
  full 4 × 6 × 2 cost-of-evidence matrix. Sequential K = 2,000
  **beats joint** in the temporal-holdout regime (114 TP vs 111 at
  k = 1,000).

## Adaptive deployment

Static FL14 cutoffs are auditable but invite gaming. The manuscript
proposes adaptive deployment alternatives — refreshed thresholds,
continuous ranks, capacity-constrained queues, bunching checks — in
§7.4. The deployment alternatives are not separately tested; they
are part of the legal-economic design framework rather than a
robustness claim.

## Why not further audits?

The audit chain documented above is essentially exhaustive at the
within-data level. Two artifact families remain untestable from BEC
alone:

1. **Data-generating process artifacts**: BEC missingness, CNPJ-root
   collision, CADE adjudication completeness. Cannot be ruled out
   by within-data permutation.
2. **Selection on CADE adjudication**: CADE's choice of which
   cartels to adjudicate may have stable biases that the BEC-anchor
   evaluation inherits.

Both can only be ruled out by non-BEC replication. See
[`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md)
for the planning document on cross-jurisdiction validation as the
R&R revision target.
