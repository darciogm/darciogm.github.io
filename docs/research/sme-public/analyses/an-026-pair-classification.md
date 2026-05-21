---
paper: sme-public
id: an-026
hypothesis: no-collusion-confound
type: robustness
question: Does a persistent-pair coordination screen conditional on CADMAT product class detect within-class bidder coordination, and does the persistent-pairing signature (count of firm pairs co-bidding in ≥5 auctions) survive class conditioning?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Within-class permutation null rejects on raw pair-count statistics (T_1 max count and T_2 99th percentile, p<0.001 in all 4 cells) — bidders do cluster more than random within class. But the persistent-pairing signature T_3 (count of pairs co-bidding in ≥5 auctions) is consistent with the null in all 4 cells (p ∈ [0.730, 1.000]) once CADMAT class is controlled — the 'persistent meeting' pattern is segmentation, not coordination. Result is stable pre vs post the March 2018 cutoff."
created: 2026-05-21
script: v7-jpube-tight/scripts/61_collusion_screen_pair_classcond.R
target: v7-jpube-tight/output/tables/tab_collusion_screen_pair_classcond.tex
tags: ["H:no-collusion-confound", "H:ipv-clock-admissible", pair-classification, kawai-nakabayashi, conley-decarolis, class-conditional, segmentation]
design:
  sample: "BEC Pregão bid logs, firms with ≥5 bids in the stratum; CADMAT product class permutation"
  specification: "Persistent-pair test on Pregão auctions. Permutation null shuffles firm labels within CADMAT product class, preserving class-level firm-bid counts but breaking firm-auction associations within class. Three statistics: T_1 max pair co-bidding count; T_2 99th percentile of pair co-bidding distribution; T_3 count of firm pairs co-bidding in ≥5 auctions. B=200 permutation replicates"
  source_panel: "BEC event log"
  notes: "Companion to the unconditional Bajari-Ye T1 in AN-015; class conditioning distinguishes segmentation from coordination"
---

# AN-026: Persistent-pair coordination screen, class-conditional

## Question

The Bajari-Ye T1 screen in [AN-015](an-015-collusion-screens.md)
detects raw pair-coordination clustering — observed counts of frequent
co-bidding pairs exceed a permutation null. A natural question:
how much of that clustering is *bidder coordination* vs *market
segmentation* (the same firms repeatedly meet because they specialize
in the same CADMAT product class)? A *class-conditional* permutation
null answers this directly: shuffle firm labels *within* CADMAT class,
breaking firm-auction associations within class while preserving
class-level firm-bid counts. The residual clustering after class
conditioning is what bears on coordination.

## Design

- **Sample**: BEC Pregão bid logs spanning March 2018; firms with
  ≥5 bids in the stratum; CADMAT product class as conditioning
  variable; 4 cells (non-pharma / pharma × pre / post).
- **Variation**: persistent-pair clustering relative to a
  class-conditional permutation null.
- **Specification**: $B = 200$ permutation replicates. Three test
  statistics:
  - $T_1$: max pair co-bidding count in the stratum.
  - $T_2$: 99th percentile of the pair co-bidding distribution.
  - $T_3$: count of firm pairs co-bidding in ≥5 auctions
    ("persistent pairs").
- **Outcomes**: observed statistic, class-conditional null mean,
  one-sided $p$-value.

## Results

**Persistent-pair screen, class-conditional null**
(`tab_collusion_screen_pair_classcond.tex`):

| Stratum | $N_{\mathrm{cls}}$ | $T_1$ obs | $T_1$ null | $T_1$ $p$ | $T_2$ obs | $T_2$ null | $T_2$ $p$ | $T_3$ obs | $T_3$ null | $T_3$ $p$ |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Non-pharma Pre  | 47 | 1220 | 769.4 | **<0.001** | 131.4 | 60.5 | **<0.001** | 5733 | 6057.3 | 1.000 |
| Non-pharma Post | 47 | 1059 | 871.8 | **<0.001** | 102.0 | 52.3 | **<0.001** | 6048 | 6071.1 | 0.730 |
| Pharma Pre      | 2 | 1428 | 1104.1 | **<0.001** | 606.1 | 328.3 | **<0.001** | 2294 | 3070.4 | 1.000 |
| Pharma Post     | 3 | 1100 | 1005.2 | **<0.001** | 312.1 | 164.8 | **<0.001** | 2676 | 3170.9 | 1.000 |

Output: `v7-jpube-tight/output/tables/tab_collusion_screen_pair_classcond.tex`.

## Interpretation

**$T_1$ and $T_2$ reject the class-conditional null in every cell.**
The maximum pair co-bidding count and the 99th-percentile of the
distribution both exceed the within-class permutation null at
$p<0.001$. There IS pair-clustering beyond what within-class random
shuffling produces.

**$T_3$ does NOT reject in any cell.** The "persistent pair"
signature — firm pairs co-bidding in ≥5 auctions — sits *at or below*
the class-conditional null mean in all 4 cells:
- Non-pharma Pre: 5733 observed vs 6057.3 null (obs *below* null;
  $p = 1.000$).
- Non-pharma Post: 6048 vs 6071.1 ($p = 0.730$).
- Pharma Pre: 2294 vs 3070.4 (obs well below null; $p = 1.000$).
- Pharma Post: 2676 vs 3170.9 ($p = 1.000$).

**Reading.** The raw $T_1$ / $T_2$ clustering picked up by the
unconditional Bajari-Ye in [AN-015](an-015-collusion-screens.md)
*partly* survives class conditioning — there is real within-class
clustering. But the *persistent-meeting* signature ($T_3$) is fully
absorbed by class segmentation: firms repeatedly co-bid because they
specialize in the same CADMAT class, not because they coordinate.

**Cross-period stability.** This is the load-bearing reading for
[H:no-collusion-confound](../hypotheses/no-collusion-confound.md):
the $T_3$ result is invariant across the policy break. Non-pharma:
5733 → 6048; pharma: 2294 → 2676 — increases in both cells, but
within the null distribution in both. Whatever "coordination" is
present is *stable* across the cutoff — not generated by the policy
shock.

**Caveat — pharma cell sizes.** Pharma has $N_{\mathrm{cls}} = 2$
(pre) and 3 (post) — very small number of conditioning classes. The
within-class permutation has limited variation in pharma; conclusions
in pharma are weaker than in non-pharma.

Confidence: **yellow.** The class-conditional test is informative
beyond the unconditional Bajari-Ye — it isolates segmentation from
coordination, and the persistent-pairing signature dissolves under
conditioning. The yellow caveat is the small pharma cell ($N=2$ or 3
classes) and the absence of a within-firm coordination test (which
would require strategic-bid-level analysis, not just pair counts).

## Follow-ups

- **Schurter test as separate AN**: the third leg of the screen
  battery (`v7-jpube-tight/scripts/59_collusion_screen_schurter.R`)
  is reported only in aggregate in [AN-015](an-015-collusion-screens.md);
  a separate AN would document its test-statistic distribution.
- **Anchor variant**: `tab_collusion_screen_anchor.tex` reports a
  pair-anchored variant that ties pairs to specific reference
  firms — useful for identifying *which* firms drive the
  unconditional $T_1$ rejection.
- **Pharma class expansion**: re-run with finer pharma sub-classes
  (drug therapeutic class) to expand $N_{\mathrm{cls}}$ in pharma
  and tighten inference.
