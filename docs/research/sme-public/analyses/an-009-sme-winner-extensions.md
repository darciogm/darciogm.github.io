---
paper: sme-public
id: an-009
hypothesis: sme-winner-share-falls
type: descriptive
question: Does the probability of an SME winner fall under open competition, and is the composition shift symmetric across PBU types?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Open competition reduces SME winner probability in switched group 65; the composition shift operates symmetrically across direct-administration and indirect-administration PBUs, suggesting the competition channel is institutionally uniform."
created: 2026-05-21
script: scripts/06_extensions.R
target: output/tables/tab_sme_winner.tex
tags: ["H:sme-winner-share-falls", composition, sme-winner, heterogeneity-pbu, extensions]
design:
  sample: "BEC completed items, 18-month window"
  specification: "DiDiR on 1{winner is SME} with item FE; heterogeneity by direct vs indirect administration PBU"
---

# AN-009: SME-winner share and extensions

## Question

Under open competition (pre-period in switched group 65), what fraction
of winning firms are SMEs? Does the open-vs-SME-only difference in
SME winner share vary across PBU types?

## Design

- **Sample**: completed items in BEC parquet cache, 18-month window.
- **Variation**: DiDiR with SME-winner indicator as outcome;
  heterogeneity cross-cut by `pbu_class` (direct administration vs
  indirect administration).
- **Specification**: linear probability model with item FE;
  item-clustered SE; PBU-type interaction in the second specification.
- **Outcomes**: probability winner is SME.

## Results

The probability that the winning firm is an SME *decreases* under open
tenders, directly supporting the competition mechanism: open tenders
attract larger non-SME firms that outbid SMEs on price (see
[docs/extensions.md](../extensions.md) and
`output/tables/tab_sme_winner.tex`).
Interacting the treatment indicator with a direct-administration dummy
reveals *broadly similar* effects across buyer types
(`output/tables/tab_heterog_pbu.tex`),
suggesting the competition channel operates consistently across the
institutional landscape.

Output: `output/tables/tab_sme_winner.tex`,
`output/tables/tab_heterog_pbu.tex`.

## Interpretation

The SME-winner share decline is the direct counterpart of the Gelbach
composition channel in [AN-008](an-008-gelbach-decomp.md). The
symmetry across PBU types says the *composition shift itself* is not
driven by institutional-buyer heterogeneity — it tracks the
type-conditional cost gradient that the structural decomposition in
[AN-010](an-010-bne-decomposition.md) builds on.

Reading: the composition shift is real and pervasive; it is not a
buyer-specific artifact. This strengthens the interpretation that
non-SMEs are systematically lower-cost on the price-forming margin,
not just lower-cost for sophisticated buyers.

Confidence: **yellow.** The direction is robust; the magnitude is
informative but not as load-bearing as the structural decomposition.
The PBU-type symmetry is a useful descriptive cross-cut but is not by
itself an identification argument.

## Follow-ups

- Composition-margin Lee bounds (extending the
  [AN-005](an-005-lee-bounds.md) trimming logic to the SME-winner
  indicator) would tighten the composition reading against
  differential completion across PBU types.
- Cross-cut by non-SME firm size (RAIS-employment quartile of winners)
  would test whether the composition shift is concentrated on *large*
  non-SMEs or on *marginal* non-SMEs barely above the SME threshold.
- Within-PBU repeated-purchase patterns: do specific PBUs shift their
  SME-winner share more than others within the broad PBU-type
  classification? This would identify procurement-officer-level
  heterogeneity.
