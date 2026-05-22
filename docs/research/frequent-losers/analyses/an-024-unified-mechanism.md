---
paper: frequent-losers
id: an-024
hypothesis: cobidder-profile-distinct
type: descriptive
question: How does the unified mechanism profile (HHI × pairs × heterogeneity quadrants) characterize FL cobidders relative to other FLs?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Largest mass in Low-HHI × Low-pairs × Low cell: +9.98 coefficient (p=5.8e-05, N=1,327,417). Sign flips in Low-HHI × High-pairs × High cell: −7.92 (p=0.002, N=6,496). Profile is descriptive — drop 'assinatura de cartel' framing."
created: 2026-05-22
script: scripts/35_unified_mechanism.R
target: output/unified_mechanism/unified_mechanism.csv
tags: ["H:cobidder-profile-distinct", mechanism, hhi, pairs, heterogeneity, quadrants]
design:
  sample: "FL14 stratum × HHI × pairs density quadrants in BEC 2009–2019"
  specification: "Two-dimensional profile: HHI × cobidder-pair density × (low/high) tertile; conditional outcomes by stratum"
  notes: "Descriptive only. The locked rule of engagement drops the 'assinatura de cartel' framing — the Low-Low-Low cell is the largest by mass, not a cartel signature."
---

# AN-024: Unified mechanism profile

## Question

How does the unified mechanism profile (HHI × pairs × heterogeneity
quadrants) characterize FL cobidders relative to other FLs?

## Design

- **Sample**: FL14 stratum × HHI × pairs density quadrants.
- **Specification**: two-dimensional profile of HHI (low/high) ×
  cobidder-pair density (low/high) × heterogeneity (low/high);
  conditional cobidder-rate outcomes per cell.
- **Estimation**: N = 1,654,401 mechanism-sample observations
  (`\valMechSampleN`).

## Results

| Cell (HHI × pairs × het) | Coefficient | p | N |
|---|---:|---:|---:|
| Low × Low × Low (QLLL) | **+9.98** | 5.8e-05 | 1,327,417 |
| Low × Low × High (QLLH) | +2.72 | 0.179 | 105,862 |
| Low × High × Low (QLHL) | +6.78 | 0.075 | 208,731 |
| Low × High × High (QLHH) | **−7.92** | 0.002 | 6,496 |

Macros: `\valMechQLLLCoef`, `\valMechQLLLP`, `\valMechQLLLN`,
`\valMechQLLHCoef`, `\valMechQLHLCoef`, `\valMechQLHHCoef`, plus the
matching `*P` and `*N` macros.

Auxiliary v8 mechanism statistics (consolidated):
`\valMechCrowdInUC` (+0.184), `\valMechBidsPerTender` (+0.219),
`\valMechRegimeSpread` (+0.255), `\valMechRegimeNeg` (−0.056),
`\valMechBoundaryNeg` (−0.160).

## Interpretation

The largest cell by mass is **Low-HHI × Low-pairs × Low-heterogeneity**
(+9.98, N = 1.3M), which is also the diffuse-market baseline. The
sign-flipping cell (Low × High × High, −7.92, N = 6,496) is small and
specific; it cannot be promoted to "the cartel signature" without
overreach.

**Locked rule of engagement (mr-frequent rounds 2–4)**: drop the
"assinatura de cartel" framing. The profile is descriptive and shows
where the cobidder concentration sits in the cross-section, not a
mechanistic identification of cartel structure. The pattern is
*consistent with* loser-side cover-bidding deployment, not diagnostic.

The unified profile sits alongside:

- the buyer-breadth and operational-footprint pattern
  ([AN-008](an-008-pbu-characterization.md));
- the HHI cobidder vs non-cobidder split
  ([AN-009](an-009-network-hhi.md)).

Together these three give the cobidder-distinct narrative
([H:cobidder-profile-distinct](../hypotheses/cobidder-profile-distinct.md))
its descriptive content. None of them is forensic proof; the
proof-producing stage remains in the bid layer
([AN-010](an-010-imhof-full-pipeline.md)).

## Follow-ups

- Re-estimate within audit-disciplined sample
  ([AN-014](an-014-leakage-audit-d3.md)).
- Sub-period stability.
- Triangulation with the dyadic-permutation pattern (`\valDyadicRatio` =
  5.9; `\valDyadicTopTenRatio` = 2.0).
