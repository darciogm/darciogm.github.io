# Advanced Methods

This page collects the methodological pieces that are too heavy for the
[Robustness](robustness.md) and [Extensions](extensions.md) tabs but still
load-bearing in the JLEO submission. They are out of the manuscript's body
for length reasons; they live here so the substantive choices can be checked
against the raw mechanics.

> *This page is a scaffold under the same template as Paper 2's
> [Advanced Methods](https://darciogm.github.io/research/sme-public/advanced/).
> Sections are placeholders until the underlying analyses are written up.*

## Identification under costly observability

The award-layer triage is operationalized as a **monotone rank** over zero-win
firms, not a classifier. The legal-economic object is *forensic priority*, not
liability. See §2–§3 of the [manuscript](paper.md). Methodological notes that
do not fit the paper body — including the formal separation of forensic
priority from accusation, the loser-side scope condition, and the
relationship between the rank and the binary `FL14` operationalization —
will be written up here.

## Cobidder labels and adjudication anchors

The validation target is **adjudication-anchored exposure**: firms that
co-bid alongside direct CADE defendants in adjudicated cartel environments,
not the direct defendants themselves. The [referee map appendix](paper.md)
of the manuscript gives the precise construction; this page will hold the
extended note on (i) label construction, (ii) overlap with direct
defendants, and (iii) why the cobidder set is the relevant loser-side target.

## Exposure, leakage, and timing audits

The validation chain includes:

- **Exposure discipline:** participation-volume placebos and
  same-(product × buyer × year × modality) opportunity-set audits
  (script `25_sham_fl_permutation.R`, `27_strict_prospective_holdout.R`).
- **Leakage discipline:** out-of-fold and temporal-holdout checks
  (script `40_leakage_audit_d3.R`).
- **Timing discipline:** scores formed before the target window
  (script `27_strict_prospective_holdout.R`).

The extended audit construction will live here.

## Sequential gatekeeping and cost-of-evidence

The gatekeeping result — pool cuts by 83% while recovering 131 of 193
adjudicated cobidders — is reported in §6 of the manuscript. This page will
hold the extended derivation of the cost-of-evidence calculation, the
sensitivity to threshold choice, and the comparison with the joint-scoring
upper bound.

## Adaptive deployment

Static FL14 cutoffs are deliberately auditable but invite gaming. Adaptive
deployment alternatives — refreshed thresholds, continuous ranks,
capacity-constrained queues, bunching checks — are sketched in §7 of the
manuscript. The extended discussion will live here.

## Status

This page is a **stub**, mirroring Paper 2's
[`/advanced.md`](https://darciogm.github.io/research/sme-public/advanced/)
structure. Content will be populated as each subsection's underlying analysis
graduates from `pending` to `done` in
[`docs/analyses/`](analyses/index.md).
