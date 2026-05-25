---
id: an-029
hypothesis: entry-thickens-pool
type: causal
question: Is the open-competition price effect driven purely by more bidders (headcount channel), or does each individual bidder also bid more aggressively (per-bidder aggressiveness channel)? And does open competition raise the extensive margin (tender completion rate)?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Two-channel decomposition: (a) open competition lifts the extensive margin (completion rate) by +10.7 pp (18m, p<0.01); (b) the price effect persists at β = −0.09 to −0.11*** when N is fixed at exactly 2, 3, or ≥5 firms — ruling out the pure-headcount explanation; (c) winner-to-runner-up bid gap shrinks under open competition (normalized gap −2.7 pp, p<0.01 full sample). Open competition thickens the pool AND makes each firm bid more aggressively."
created: 2026-05-21
script: scripts/06_extensions.R (extensive) + scripts/29_runnerup_gap.R + scripts/27_major2_controls.R (bid aggressiveness)
target: output/tables/tab_extensive.tex + tab_runnerup_gap.tex + tab_bid_aggressiveness.tex
tags: ["H:entry-thickens-pool", "H:price-discipline-loss", extensive-margin, bid-aggressiveness, runnerup-gap, headcount-vs-aggressiveness, completion-rate]
design:
  sample: "BEC items (all, for completion margin) and BEC completed items 18m (for bid-aggressiveness and runner-up gap)"
  specification: "(a) DiDiR with completion-indicator outcome, group FE; (b) DiDiR price effect under conditioned subsamples with fixed N ∈ {2, 3, ≥5}, item + month FE; (c) DiDiR on normalized runner-up gap (p^(2) − p^(1)) / p^ref, item + PBU + month FE"
  fixed_effects: "item, month, group, PBU (varies by panel)"
  cluster: "item"
---

# AN-029: Bid aggressiveness — headcount vs per-bidder channel

!!! abstract "Intuition (plain-language)"
    Does open competition lower prices only by adding bidders, or does each firm also bid harder? Fix the bidder count at exactly 2, 3, or 5+ and the price effect persists — so it is not pure headcount. Open competition both thickens the pool and sharpens each firm's bid, and it lifts the share of tenders that actually complete by about 11 percentage points.

## Question

[AN-002](an-002-didir-firms-bids.md) shows open competition raises the
number of bidder firms by 10–22%. The natural reading is that more
firms → lower prices via the auction-thicker-pool channel. But two
complementary questions are open:

1. **Extensive margin**: does open competition affect the *probability*
   that an auction successfully procures (completion rate)?
2. **Per-bidder aggressiveness**: does each individual bidder also bid
   more aggressively when more bidders are present? Or is the price
   effect purely mechanical from more bidders?

The first asks whether open competition expands the *set of successful
auctions*; the second asks whether it changes *behavior within an
auction*.

## Design

- **Sample**:
  - (a) BEC all items, 6/12/18-month windows.
  - (b) BEC completed items 18m, conditioned subsamples with fixed
    number of firms ($N \in \{2, 3, \geq 5\}$).
  - (c) BEC completed items 18m, runner-up bid observed.
- **Specifications**:
  - **(a) Extensive margin**: DiDiR with outcome
    $1\{\text{item completed}\}$; group FE; PBU FE in second column;
    item-clustered SE.
  - **(b) Conditional-on-N price effect**: re-estimate the DiDiR
    price coefficient on subsamples with fixed bidder counts. If
    the price effect were purely from headcount, conditioning on
    fixed $N$ should kill it.
  - **(c) Runner-up gap**: outcome = normalized gap
    $(p^{(2)} - p^{(1)}) / p^{\mathrm{ref}}$ — smaller gap signals
    more aggressive bidding by the runner-up.
- **Identification threats**: completion margin may interact with
  selection of which items get bids; runner-up gap analysis requires
  the runner-up to be observed (N ≥ 2).

## Results

**(a) Extensive margin (completion rate)** (`tab_extensive.tex`):

| Window | Base β | PBU-FE β | N |
|---|---:|---:|---:|
| 6m  | +0.117*** (0.004) | +0.118*** (0.004) | 304,392 |
| 12m | +0.124*** (0.004) | +0.127*** (0.004) | 609,299 |
| 18m | **+0.107*** (0.003)** | **+0.113*** (0.003)** | 901,506 |

Open competition raises the tender completion rate by **+10.7 pp**
(18m baseline). Highly significant in all windows.

**(b) Bid aggressiveness conditional on fixed N**
(`tab_bid_aggressiveness.tex`):

| Subsample | β on $g65 \times \text{Pre}$ | SE | N |
|---|---:|---:|---:|
| Baseline (all firms) | −0.1087*** | (0.012) | 649,714 |
| **N = 2 firms (fixed)** | **−0.0926***** | (0.017) | 105,957 |
| **N = 3 firms (fixed)** | **−0.1076***** | (0.018) | 102,831 |
| **N ≥ 5 firms (fixed)** | **−0.1073***** | (0.021) | 260,530 |

**The price effect is essentially unchanged** when we fix the bidder
count. Even when restricted to auctions with exactly 2 firms (the
minimum competitive count), the DiDiR price effect is −0.09*** —
about 85% of the unconditional baseline.

**(c) Runner-up bid gap** (`tab_runnerup_gap.tex`):

| Subsample | Normalized gap β | Log-gap β | N |
|---|---:|---:|---:|
| Full sample | **−0.0271*** (0.005)** | **−0.0188*** (0.003)** | 471,344 |
| N = 2 firms | +0.0071  (n.s.) | +0.0035  (n.s.) | 69,634 |
| N = 3 firms | −0.0121  (n.s.) | −0.0092  (n.s.) | 81,249 |
| N ≥ 5 firms | −0.0104* (0.005) | −0.0082** (0.004) | 245,002 |

Under open competition the **normalized winner-to-runner-up gap
shrinks by 2.7 percentage points** (full-sample, p<0.01). The
runner-up bids more aggressively, sitting closer to the winner's
price.

Output: `output/tables/tab_extensive.tex`,
`tab_bid_aggressiveness.tex`, `tab_runnerup_gap.tex`.

## Interpretation

**Pure-headcount explanation rejected.** If open competition lowered
prices *only* because more firms bid, then fixing the number of
firms should kill the price effect. It does not. At N = 2 (minimum
competitive), the price effect is β = −0.093*** — 85% of baseline.
At N ≥ 5, it is −0.107*** (essentially the same as the unconditional
−0.109*** baseline). The per-bidder aggressiveness channel is real.

**The runner-up bids more aggressively in larger auctions.** The
gap-shrinking at N ≥ 5 (β = −0.010*) but not at N = 2 or N = 3
suggests that *expected* bidder count — even when realized N is
fixed — affects per-bidder bidding strategy. Firms entering an
auction where 5+ other firms are participating bid harder than
firms entering an auction with only 1 other.

**Extensive margin is real.** A 10.7 pp rise in completion rate is
economically large — open competition not only lowers prices on
completed items but increases the share of items that successfully
procure. The two effects multiply: more auctions reach successful
completion, AND those completed auctions deliver lower prices.

**Reading for H2.** The "open auctions thicken the bidder pool"
prediction holds on three fronts:
- More firms participate ([AN-002](an-002-didir-firms-bids.md): +10–22%)
- The auctions successfully complete more often (this AN: +10.7 pp)
- Each firm bids more aggressively conditional on participating
  (this AN: gap shrinks; price effect survives fixing $N$)

The unconditional reduced-form −0.13 price effect is therefore a
*sum* of three mechanisms: more entrants × more completions ×
more aggressive bidding. The decomposition is what the structural
model in [AN-010](an-010-bne-decomposition.md) refines into the
exclusion-vs-protected-pool split; the per-bidder aggressiveness
channel sits *inside* the lost-discipline component.

Confidence: **yellow.** Three separate channels are documented with
independent tests. The reading is yellow because:
- The N-conditioned subsamples are not random samples — items with
  exactly 2 firms differ from items with 5+ firms in observables
  (value, complexity). The price-effect persistence under fixed N
  is informative but not a clean test of aggressiveness alone.
- The runner-up gap could shrink either because the runner-up
  bids more aggressively OR because the winner backs off less.

## Follow-ups

- **Within-firm bid behavior across the policy break**: for firms that
  bid in both pre and post periods, compare bid moments. A within-firm
  shift in mean bid (relative to reference) would isolate the per-bidder
  aggressiveness channel from selection-into-participation. Not yet
  authored as a standalone AN.
- **Newcomer firms**: which firms participating post are new entrants
  to BEC vs returning bidders? If many SMEs are newcomers, the entry
  response is real expansion not rotation.
- **Item-complexity heterogeneity**: the conditional-N analysis would
  benefit from a within-PADRAOdesc cross-cut.
