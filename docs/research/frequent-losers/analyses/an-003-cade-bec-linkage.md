---
id: an-003
hypothesis: cobidder-concentration
type: descriptive
question: How are CADE direct defendants and adjudication-anchored cobidders linked to BEC firms via CNPJ root?
status: pending
created: 2026-05-22
script: scripts/00_build_bidlevel.py
target: data/processed/cade_bec_crossmatch.csv
tags: ["H:cobidder-concentration", "H:direct-defendants-null", cade, linkage, cnpj-root]
design:
  sample: "CADE procurement-cartel adjudications 2009–2019 × BEC firm registry"
  specification: "CNPJ-root match (first 8 digits); cobidders defined as always-loser firms that bid in same tender-items as direct CADE defendants in adjudicated environments"
  notes: "Direct defendants: 47 firms. Cobidders: 193 firms (after CNPJ zero-pad fix, was 98)"
---

# AN-003: CADE × BEC linkage and cobidder construction

## Question

How are CADE direct defendants and adjudication-anchored cobidders linked
to BEC firms via CNPJ root, and what is the resulting set used as
validation target?

## Design

- **Sample**: CADE procurement-cartel adjudications in the 2009–2019
  window × BEC firm registry.
- **Linkage**: CNPJ-root (first 8 digits) match.
- **Cobidder definition**: always-loser firm that bid in the same
  tender-items as direct CADE defendants in adjudicated environments;
  excludes direct defendants by construction.
- **Outputs**: 47 direct defendants, 193 cobidders.

## Results

*Pending.* The 193 cobidder figure corrected an earlier CNPJ zero-pad bug
that produced 98 cobidders — documented in `work/v12/paper_v12.pdf`.

## Interpretation

*Pending.* See [H:cobidder-concentration](../hypotheses/cobidder-concentration.md)
and [H:direct-defendants-null](../hypotheses/direct-defendants-null.md).

## Follow-ups

- Sensitivity to CNPJ-root vs full-CNPJ matching.
- Coverage diagnostics for the CADE adjudication panel.
