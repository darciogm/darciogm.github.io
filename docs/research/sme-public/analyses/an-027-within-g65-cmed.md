---
paper: sme-public
id: an-027
hypothesis: price-discipline-loss
type: robustness
question: Does the price effect appear both inside CMED-regulated medications (class 6531) and outside it (other medical supplies), as required if competition — not pharmaceutical-specific inflation — drives the headline?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Within-Group-65 split confirms the price effect on both panels: medications (CMED-regulated class 6531) β = −0.174*** (PBU FE, 18m); other medical supplies (non-6531) β = −0.097*** (PBU FE, 18m). Both p<0.01. The differential pharmaceutical-inflation alternative is rejected — the price effect is not concentrated in the CMED-regulated pharma sub-cell."
created: 2026-05-21
script: scripts/27_major2_controls.R (or equivalent)
target: output/tables/tab_within_g65.tex
tags: ["H:price-discipline-loss", within-group, cmed, medications, falsification, item-cluster]
design:
  sample: "BEC completed items, 18-month window; Panel A restricts group 65 to class 6531 (medications, CMED-regulated); Panel B restricts to non-medication medical supplies (non-6531)"
  specification: "Same DiDiR as AN-001 but with the treated group split into CMED-regulated medications vs other; all non-group-65 items as comparison; item FE; item-clustered SE"
  fixed_effects: "item; PBU FE in second specification"
  cluster: "item"
---

# AN-027: Within-Group-65 split — CMED-regulated medications vs other supplies

!!! abstract "Intuition (plain-language)"
    Could the price rise just be pharmaceutical inflation, since CMED-regulated drugs sit inside Group 65? Split Group 65 into regulated medications and other medical supplies: the price effect appears in both (about −17% and −10%). It is competition, not a drug-price-inflation confound.

## Question

Group 65 (medical/hospital supplies) is heterogeneous. The CMED-regulated
medication sub-class (class 6531) is subject to pharmaceutical price
regulation, which could generate its own differential inflation
pattern unrelated to the SME-only policy. If the headline DiDiR price
effect were driven by CMED-side inflation rather than by competition,
the effect should be *concentrated in Panel A (medications)* and
*small or absent in Panel B (other supplies)*. The split tests this
directly.

## Design

- **Sample**: BEC completed items, 18-month window. Same DiDiR as
  [AN-001](an-001-didir-prices.md) but with the treated group split:
  - **Panel A**: $g65_{med}$ = group 65 restricted to class 6531
    (medications, subject to CMED pharmaceutical price regulation).
  - **Panel B**: $g65_{other}$ = group 65 restricted to non-6531
    medical supplies (hospital equipment, dental supplies, etc.).
  - Comparison: all non-group-65 items.
- **Variation**: same DiDiR; the sub-treatment indicator picks up only
  one panel at a time.
- **Specification**: item FE; PBU FE in alternating columns;
  item-clustered SE.
- **Outcomes**: log prices, log firms (per panel).

## Results

**Within-Group-65 panels** (table `tab_within_g65.tex`):

| Panel | Outcome | Base coef | PBU-FE coef | N |
|---|---|---:|---:|---:|
| **A: Medications (6531)** | Log prices | −0.166*** (0.017) | **−0.174*** (0.017)** | 573,080 |
| **A: Medications (6531)** | Log firms  | +0.152*** (0.010) | +0.161*** (0.010) | 678,547 |
| **B: Other supplies (non-6531)** | Log prices | −0.099*** (0.009) | **−0.097*** (0.009)** | 593,920 |
| **B: Other supplies (non-6531)** | Log firms  | +0.044*** (0.006) | +0.050*** (0.006) | 705,616 |

Output: `output/tables/tab_within_g65.tex`.

## Interpretation

**The price effect appears in BOTH panels.** Medications (CMED-regulated)
show β = −0.174*** (PBU FE); other medical supplies show β = −0.097***
(PBU FE). Both are highly significant. **The pharmaceutical-inflation
alternative is rejected**: if differential CMED inflation drove the
headline, the non-6531 panel should show no effect; instead it shows a
~10% price effect, half the magnitude but the same direction and
significance.

**The medication panel is larger.** β = −0.174 in 6531 vs −0.097 in
non-6531. This is consistent with the *competition channel* being
stronger in the medication cell where bidder pools are likely deeper
(many pharma suppliers nationally vs more-specialized hospital
equipment suppliers). It is *not* consistent with CMED inflation:
CMED regulation tends to *cap* pharmaceutical prices, not let them
rise — if anything, CMED would *attenuate* the medication panel's
effect, not amplify it.

**Firm-count direction.** Both panels show positive log-firm effects:
+0.16 in medications, +0.05 in non-6531. The medication market is
more amenable to non-SME entry under open competition (3× the
firm-count gain of non-6531).

**Interpretation for the headline.** The DiDiR price effect is not
mechanically driven by pharmaceutical inflation. The headline
operates on both medication and non-medication subcells. The
medication panel weighs more heavily in the pooled headline because
of its larger sample, but the effect is *present and significant*
in the non-medication cell that pharmaceutical inflation cannot
explain.

Confidence: **yellow.** The within-group split is a clean
falsification test against CMED-inflation. The yellow caveat is that
*other* cell-specific shocks could in principle differ between
medication and non-medication panels (e.g., regulatory changes
specific to hospital equipment); the test does not rule out *all*
class-specific confounds.

## Follow-ups

- **Item-class heterogeneity beyond the 6531 split**: further split
  by 4-digit CADMAT class to expose where the price effect is
  concentrated within Panel B.
- **CMED price-cap alignment**: a direct test would compare the
  medication-cell price effect to the gap between CMED ceiling
  prices and observed BEC prices. If the BEC-vs-CMED gap shrinks
  post-policy in Panel A, that confirms the competition channel is
  operating against the CMED ceiling.
