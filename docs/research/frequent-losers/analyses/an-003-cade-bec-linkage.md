---
paper: frequent-losers
id: an-003
hypothesis: cobidder-concentration
type: descriptive
question: How are CADE direct defendants and adjudication-anchored cobidders linked to BEC firms via CNPJ root, and what is the resulting set used as validation target?
status: done
status_date: 2026-05-22
confidence: green
headline: "CADE × BEC linkage at CNPJ-root produces 47 direct defendants and 193 adjudication-anchored cobidders (always-loser firms that bid alongside direct defendants in adjudicated cartel environments)."
created: 2026-05-22
script: scripts/00_build_bidlevel.py
target: data/processed/cade_bec_crossmatch.csv
tags: ["H:cobidder-concentration", "H:direct-defendants-null", cade, linkage, cnpj-root]
design:
  sample: "CADE procurement-cartel adjudications 2009–2019 × BEC firm registry (41,444 firms)"
  specification: "CNPJ-root match (first 8 digits); cobidders = always-loser firms that bid in same tender-items as direct CADE defendants in adjudicated cartel environments; excludes direct defendants by construction"
  notes: "193 cobidders corrects the earlier 98-cobidder count (v11 had a CNPJ zero-pad bug; fixed in v12 audit, locked through v18 submission)"
---

!!! warning "Superseded numbers — canonical-target re-estimation (June 4, 2026)"
    This analysis note documents a historical run under the earlier validation label.
    On June 4, 2026 the paper adopted a reproducible, non-circular target (651
    always-loser cobidders; frequent-loser flag never used in the label) and
    re-estimated every result. Where this page conflicts with the
    [paper](../paper.pdf) or the [changelog](../changelog.md), **the paper wins**.

# AN-003: CADE × BEC linkage and cobidder construction

!!! abstract "Intuition (plain-language)"
    To grade a screen you need ground truth about who actually colluded. CADE, Brazil's antitrust authority, has adjudicated procurement cartels; matching defendants to BEC by CNPJ root yields 47 *direct* defendants. But direct defendants are the cartel's winners — the wrong target for a loser-side screen. The honest validation target is the 193 *cobidders*: always-loser firms that repeatedly bid alongside adjudicated cartelists. These are the cover-bidding roles the screen is built to rank, and the linkage fixes them before any performance number is computed.

## Question

How are CADE direct defendants and adjudication-anchored cobidders
linked to BEC firms via CNPJ root, and what is the resulting set used as
the validation target?

## Design

- **Inputs**:
  - CADE procurement-cartel adjudications in 2009–2019 covering bid
    rigging in São Paulo procurement environments.
  - BEC firm registry of 41,444 firms.
- **Linkage**: CNPJ-root match (first 8 digits of the 14-digit CNPJ).
- **Cobidder construction**: always-loser firms that bid in the same
  tender-items as direct CADE defendants in the adjudicated cartel
  environments; *excludes* direct defendants by construction.

## Results

| Target | Count | Source |
|---|---:|---|
| Direct CADE defendants linked to BEC | 47 | `data/processed/cade_bec_crossmatch.csv` |
| Cobidders (always-losers bidding alongside) | 193 | `data/processed/cade_fl_cobidders.csv` |

Macros: `\valDirectCADE` (47), `\valCobidders` (193). The 193 figure
corrects the prior 98 cobidders that resulted from a CNPJ zero-pad bug
documented in the v12 forensic audit
(`work/v12/paper_v12.pdf`), and locked from v13 onward.

## Interpretation

The 193 cobidders define the legally limited validation target: an
adjudication-anchored footprint of always-loser firms that the
loser-side rank can plausibly cover. The 47 direct defendants are the
*disconfirming* target — the loser-side rank should *not* discriminate
them (see [H:direct-defendants-null](../hypotheses/direct-defendants-null.md)
and [AN-007](an-007-auc-direct-cade.md)). The cobidder set is the
construct that anchors all downstream baseline, exposure, timing, and
leakage audits.

## Follow-ups

- Sensitivity to CNPJ-root (first 8 digits) vs full CNPJ matching.
- Decomposition of cobidders by adjudication-anchor sub-period.
- Update path when new CADE adjudications enter the panel.
