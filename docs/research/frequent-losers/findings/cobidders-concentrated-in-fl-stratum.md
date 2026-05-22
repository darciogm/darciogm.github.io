# CADE-adjacent cobidders concentrate in the FL14 stratum

!!! info "Pending finding"
    This is a scaffold for a result reported in §4.1 of the
    [manuscript](../paper.md). The headline number will be filled once
    [AN-004](../analyses/an-004-cobidder-baseline.md) graduates from
    `status: pending` to `done`.

🟡 In São Paulo's BEC procurement platform, always-loser firms that bid
alongside direct CADE defendants in adjudicated cartel environments
concentrate disproportionately inside the **FL14 stratum** identified by
persistent zero-win participation. The award-layer ranking recovers 131 of
193 such cobidders while keeping the binary cutoff simple and auditable
([AN-004](../analyses/an-004-cobidder-baseline.md),
[AN-011](../analyses/an-011-horse-race-continuous.md)).

The concentration is the **loser-side adjacency** result that motivates the
sequential architecture in §6: the award layer prioritizes where the
forensic stage should start, without claiming to identify cartelists.

**Caveat.** The cobidder set is defined relative to CADE-adjudicated cartel
environments in 2009–2019; the loser-side scope is therefore tied to
adjudication coverage rather than to a universal cartel population. The
reading is 🟡 because it is a single-source own-project estimate; promotion
to 🟢 requires independent replication in another procurement jurisdiction
or a converging recovery from a non-CADE labeled set.

**Sources.**

- *Own analysis*: [AN-004](../analyses/an-004-cobidder-baseline.md)
  (baseline concentration), [AN-001](../analyses/an-001-zero-win-rank.md)
  (rank construction),
  [AN-011](../analyses/an-011-horse-race-continuous.md) (continuous vs
  binary).
- *Cross-refs*: [H:cobidder-concentration](../hypotheses/cobidder-concentration.md);
  [docs/results.md](../results.md) main-results page.
- *Validation*: backing scripts `scripts/02_analysis.R`,
  `scripts/12_build_item_value.R`,
  `scripts/33_auc_direct_cade.R`.
