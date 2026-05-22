---
id: an-022
hypothesis: price-scope-sign-reversal
type: placebo
question: Do FL-margin price effects differ by procurement modality, and does the Pregão-only subsample replicate the full-sample direction?
status: done
status_date: 2026-05-22
confidence: yellow
headline: "Binary FL price effect: Pregão +9.59% (p<10⁻³) vs Convite +3.92% (p=0.037); ratio 2.45×. Continuous FL price effect: Pregão +2.62% vs Convite +1.24%; ratio 2.11×. Joint specs flip the binary sign — scope, not damages."
created: 2026-05-22
script: scripts/46_falsification_pregao_only.R
target: output/falsification_pregao/falsification_results.csv
tags: ["H:price-scope-sign-reversal", "H:cobidder-concentration", falsification, modality, pregao]
design:
  sample: "BEC items 2009–2019, split by modality: Pregão (N=543,752) vs Convite (N=1,105,852) vs full (N=1,653,658)"
  specification: "Binary FL presence and continuous log_tc, item + year + PBU FE, item-clustered SE; joint binary + continuous specification reported as well"
  notes: "Modal asymmetry replicates the D2 AUC result (AN-016): Pregão > Convite. Joint specs show the binary sign flips, supporting the scope reading."
---

# AN-022: Pregão-only falsification

## Question

Do FL-margin price effects differ by procurement modality, and does the
Pregão-only subsample replicate the full-sample direction? The test
isolates the modality contribution from the cross-modal scope
variation in [AN-016](an-016-gate-d2.md).

## Design

- **Sample**: BEC items 2009–2019:
  - Pregão: N = 543,752;
  - Convite: N = 1,105,852;
  - Full: N = 1,653,658.
- **Specifications**:
  - Binary FL presence indicator;
  - Continuous log(1 + tenders_count);
  - Joint binary + continuous.
- **Fixed effects**: item, year, PBU.
- **SE**: item-clustered.

## Results

**Single-score specifications (binary):**

| Sample | Coefficient | SE | p |
|---|---:|---:|---:|
| Pregão only | +0.0959*** | 0.0256 | < 10⁻³ |
| Convite only | +0.0392** | 0.0188 | 0.037 |
| Full sample | +0.0653*** | 0.0216 | 0.003 |

Pregão/Convite ratio: **2.45×**.

**Single-score specifications (continuous):**

| Sample | Coefficient | SE | p |
|---|---:|---:|---:|
| Pregão only | +0.0262*** | 0.0063 | < 10⁻⁴ |
| Convite only | +0.0124** | 0.0049 | 0.011 |

Pregão/Convite ratio: **2.11×**.

**Joint specifications (binary + continuous):**

| Sample | Binary coef | SE | Continuous coef | SE |
|---|---:|---:|---:|---:|
| Pregão only | −0.0652 | 0.0449 | +0.0399*** | 0.0118 |
| Convite only | −0.0828** | 0.0350 | +0.0305*** | 0.0101 |

Macros: `\valFalBinPregCoef`, `\valFalBinConvCoef`, `\valFalBinFullCoef`,
`\valFalBinRatio`, `\valFalContPregCoef`, `\valFalContConvCoef`,
`\valFalContRatio`, plus the `\valFalJoint*` series.

## Interpretation

The modal asymmetry from D2 ([AN-016](an-016-gate-d2.md)) replicates in
the price equation: Pregão coefficients are ~2× larger than Convite
across both binary and continuous specs. The asymmetry is robust to
modality-restriction.

In the joint specifications, the binary coefficient flips negative in
both modalities — the continuous score absorbs the persistent-loss
signal, leaving the binary picking up a residual that flips sign. This
**sign reversal under joint specification** is the same pattern as in
[AN-015](an-015-gate-d1.md) and is part of the scope-vs-damages
evidence ([H:price-scope-sign-reversal](../hypotheses/price-scope-sign-reversal.md)).

The cross-modal direction (Pregão > Convite) is reported as **scope
information** — telling us *where* the loser-side ranking applies more
strongly — not as a positive test of an institutional minimum-bidder-
rule theory (per the locked rule from D2).

## Follow-ups

- Sub-period sensitivity within each modality.
- Convite-only counterpart with small-N power diagnostic.
- Cross-sector decomposition (commodities vs services from script 52).
