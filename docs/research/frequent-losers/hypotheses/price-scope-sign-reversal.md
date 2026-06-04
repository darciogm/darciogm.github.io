---
paper: frequent-losers
id: h8
slug: price-scope-sign-reversal
title: "Price evidence carries scope information, not damages"
cluster: E
paper_section: "§7.1 + §7.2"
status: "partial (strongly supported)"
last_updated: 2026-06-04
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->

# H:price-scope-sign-reversal — Price evidence carries scope information, not damages

The manuscript reports a price sign reversal when comparisons are restricted
to overlapping cells. The hypothesis is that the price result should be read
as **scope information** — telling us *where* the loser-side ranking applies —
not as a damages/overcharge magnitude. A naive damages reading would predict a
stable, signed markup; the scope reading predicts that the sign and magnitude
depend on the cell composition, and that no cover-bidding "theater" mechanism
is identified by the price evidence.

!!! abstract "Intuition (plain-language)"
    The presence of frequent losers in a tender is associated with higher negotiated prices on average (+6.4%). A careless reader might call that the size of a cartel overcharge — but it is *selection*: frequent losers concentrate in structurally higher-price cells, so the positive sign is about *which* cells they occupy, not a markup. Once comparisons are restricted to overlapping comparable cells, the sign FLIPS to negative (overlap ATT −9.7%), which actively blocks a markup reading; only the top tender-value quartile (Q4) stays positive (+4.1%). Price against direct CADE defendants is null. The price evidence is *scope* information about WHERE the ranking applies — not damages — and it does **not** identify a cover-bidding "theater" mechanism. The paper treats price as secondary, disciplined corroboration.


> **Evidence strength: Partial (strongly supported).**
> Nine lines of evidence establish price as *scope, not damages* — and,
> crucially, that no cover-bidding "theater" mechanism is identified. The
> decomposition lines are descriptive scope evidence, not mechanism
> identification:
> (i) **Headline three-spec progression** ([AN-037](../analyses/an-037-sign-reversal-decomposition.md)):
> broad **+0.064** (selection into higher-price cells) → overlap unweighted
> +0.044 → overlap ATT **−0.097** (p = 1.7 × 10⁻¹⁰) — the overlap-cell flip
> actively blocks a markup/damages reading.
> (ii) **Within-overlap subgroup decomposition** ([AN-037](../analyses/an-037-sign-reversal-decomposition.md)):
> negative coefficient survives both modalities (Convite −0.099,
> Pregão −0.098), all 4 PBU-size quartiles, tender-value Q1–Q3, items
> without direct CADE (−0.097), and items without cobidders (−0.108);
> only tender-value Q4 stays positive (+0.041) — the scope boundary.
> (iii) **Item-group decomposition** ([AN-038](../analyses/an-038-negative-cell-segment-audit.md)):
> most groups flip from positive baseline to negative ATT (12, 13, 14,
> 29); groups 37 and 39 stay negative across specs (−0.126 / −0.103
> ATT); group 10 stays positive (+0.063 ATT, n.s.). Predictably
> structured, not uniform.
> (iv) **Cell-by-cell negative audit** ([AN-038](../analyses/an-038-negative-cell-segment-audit.md)):
> period 2009–2013 −0.119; PBU-size Q4 −0.126; tender-value Q1 −0.123;
> item-group 37 −0.182. The negative concentrates in routine, low-value,
> large-PBU cells — the operational deployment target.
> (v) **RDD + DiD support** ([AN-019](../analyses/an-019-rdd-cap-price.md),
> [AN-020](../analyses/an-020-did-decreto-2018.md)): RDD coefficients
> stable across bandwidths (+0.043 / +0.055 / +0.060); McCrary ratio
> 0.94 (no bunching); DiD around 2018 decree null.
> (vi) **Modal asymmetry** ([AN-016](../analyses/an-016-gate-d2.md),
> [AN-022](../analyses/an-022-falsification-pregao.md)): Pregão 2.45×
> Convite in binary price spec; joint specs flip binary FL14 sign.
> (vii) **Selection component** ([AN-039](../analyses/an-039-selection-mechanism-test.md)):
> among non-treated items, mean log-price rises monotonically from the
> lowest to the highest FL-share quintile (Δ ≈ 5.58 log-points; full-FE
> FL-share coefficient +3.55, SE 0.23). Frequent losers concentrate in
> structurally high-price cells — the naive positive coefficient is
> **selection into higher-price cells**, not damages.
> (viii) **Within-cell component** ([AN-040](../analyses/an-040-within-cell-mechanism-test.md)):
> within overlap cells FL presence is associated with ≈66% more bidders
> and a winner bid slightly closer to reference; the winner-vs-reference
> association vanishes once bidder count is controlled. These are
> **descriptive associations, not a mechanism** — the cover-bidding
> "theater" story is *not identified* by the price evidence.
> (ix) **Direct-CADE price null** ([AN-019](../analyses/an-019-rdd-cap-price.md),
> [AN-016](../analyses/an-016-gate-d2.md)): the price signal against direct
> CADE defendants is null, consistent with price being scope (where the
> ranking applies), not an overcharge attached to adjudicated conduct.
> Promotion to 🟢 (**Confirmed**) requires non-BEC replication of the
> sign-reversal pattern — see the H8 page section on why within-data
> evidence does not satisfy the bar.

## Theory

Price effects from cartel screens are typically interpreted as damages
estimates \citep{harrington2008detecting,porter1993detection}. Under
incomplete observability and a triage-not-classification framing, prices
play a different role: they inform the *scope* of the screen — which
markets, modalities, or sub-periods the loser-side ranking applies to —
rather than the size of the cartel overcharge \citep{chassang2022robust}.

## Prediction

The sign of the price coefficient associated with the FL margin should:

- be positive broadly (selection into higher-price cells), then flip to
  negative once comparisons are restricted to overlapping cells (overlap ATT
  −0.097), with only the top tender-value quartile (Q4 +0.041) staying
  positive — marking the *scope* of where the ranking applies;
- be null against direct CADE defendants — price is scope, not an overcharge
  attached to adjudicated conduct;
- and **not** identify a cover-bidding "theater" mechanism: the within-cell
  associations are descriptive, not a structural mechanism.

## Competing prediction

**Damages reading.** A single signed price coefficient, stable across cells
and targets, interpretable as a cartel overcharge. The hypothesis rejects
this reading: the sign is not stable, it tracks cell composition (selection),
and the overlap-cell flip blocks any markup interpretation.

## Case evidence

The price-scope distinction is consistent with CADE's separation of
liability findings from damages quantification in the procurement-cartel
record (administrative-law standard).

## Empirical test

- *Sample*: BEC items with FL participation.
- *Outcomes*: log negotiated price; price ratio to reference; markup
  proxy.
- *Specifications*:
  - target = direct defendants: price coefficient with direct-defendant
    presence;
  - target = cobidders: price coefficient with cobidder presence;
  - modality split: same specifications by Convite vs Pregão.
- *Identification*: cross-target and cross-modality sign comparison;
  the test rejects the damages reading if signs/magnitudes differ
  systematically.

## Data requirements and limitations

Requires reference prices and the FL-presence indicator at the item level.
Limitation: the price reading is descriptive and supportive, not causal —
it marks the *scope* of where the ranking applies, not an overcharge. The
within-cell associations do **not** identify a cover-bidding "theater"
mechanism; the broad positive coefficient is selection into higher-price
cells, and the overlap-cell flip blocks a markup interpretation.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-019](../analyses/an-019-rdd-cap-price.md) (RDD price + overlap) | Direct | done | Broad +6.4% (selection into high-price cells) → overlap ATT −9.7% (blocks markup reading); price against direct CADE null — scope, not damages |
| [AN-020](../analyses/an-020-did-decreto-2018.md) (DiD around decree) | Supports | done | Callaway-Sant'Anna ATT +0.014 (SE 0.039); stacked DiD −0.006 — null |
| [AN-016](../analyses/an-016-gate-d2.md) (modal AUC asymmetry) | Supports | done | Pregão 0.952 vs Convite 0.816 — opposite direction to inst. theory |
| [AN-022](../analyses/an-022-falsification-pregao.md) (modal falsification) | Supports | done | Pregão/Convite price ratio 2.45×; joint specs flip binary sign |
| [AN-037](../analyses/an-037-sign-reversal-decomposition.md) (sign-reversal headline + subgroups) | Direct | done | Broad +0.064 → overlap ATT −0.097 (p = 1.7e-10); both modalities, all PBU-Q, tender-value Q1-Q3 all negative |
| [AN-038](../analyses/an-038-negative-cell-segment-audit.md) (item-group + cell audit) | Direct | done | Item-group 37 −0.126 (stays negative); group 10 +0.063 (stays positive); period 2009-2013 −0.119 — predictably structured |
| [AN-039](../analyses/an-039-selection-mechanism-test.md) (selection component — Test 1) | Direct | done | Non-treated log-price rises Q1 1.35 → Q5 6.93 (Δ 5.58); full-FE FL-share coef +3.55 (SE 0.23) — frequent losers concentrate in high-price cells, so the naive positive coefficient is selection, not damages |
| [AN-040](../analyses/an-040-within-cell-mechanism-test.md) (within-cell component — Test 2) | Direct | done | Within overlap cells FL presence → +0.507 log-bidders (≈66%) and winner −0.048 closer to reference; association runs through bidder count. Selection dominates sparse tenders, within-cell association dominates dense. Descriptive, not mechanism identification |

## Open tests

- Triangulation of price scope with bid-level dispersion patterns
  ([AN-031](../analyses/an-031-bid-level-behavioral-profile.md) bid-
  level moments).
- Robustness to reference-price construction (administrative vs
  market-implied).
- Item-group 37 deep-dive: which product category produces the
  consistently negative coefficient ([AN-038](../analyses/an-038-negative-cell-segment-audit.md))?
- Tender-value Q4 deep-dive: why does the positive coefficient persist
  in high-value tenders?
- Cross-modality + cross-quartile × period interaction (full
  decomposition).

## Why not 🟢 Confirmed?

The within-data sign-reversal evidence is strong. The headline
progression (broad +0.064 → overlap ATT −0.097, p = 1.7 × 10⁻¹⁰)
plus the within-overlap subgroup decomposition (negative in 14 of 15
relevant cells) plus the item-group structure (predictable
heterogeneity, not noise) is the cleanest H8 evidence the paper has.

Three obstacles to Confirmed:

1. **Specification-dependent identification.** The sign reversal is
   produced by overlap discipline + ATT weighting on top of item +
   year + PBU fixed effects. A reviewer could argue that the ATT
   reweighting is itself a specification choice that drives the
   sign — and that an alternative weighting scheme would give a
   different result. The data do not adjudicate which weighting is
   the "correct" causal specification. The scope reading is the
   *interpretive* answer to this objection: the price coefficient
   is not a damages parameter for ANY weighting; it is scope
   information that varies with weighting because the underlying
   price-formation process varies across cells.

2. **No causal identification of the FL margin.** The headline
   coefficient is a within-cell association under FE + ATT weights,
   not an estimate identified by an instrument or a sharp design.
   A clean instrument would help determine whether the sign reversal is
   structural or specification-driven. The cap-RDD
   ([AN-019](../analyses/an-019-rdd-cap-price.md)) and the 2018-
   decree DiD ([AN-020](../analyses/an-020-did-decreto-2018.md))
   come close, but the cap-RDD is positive (4–6%) and the DiD is null
   — neither delivers a causal sign-reversal estimate.

3. **Same-data limitation.** All evidence comes from BEC × CADE; the
   sign-reversal pattern could be a feature of BEC's price-recording
   convention combined with CADE's adjudication selection. Non-BEC
   replication of the three-spec progression would settle whether
   the sign-reversal generalizes.

The mr-frequent reading: H8 is **scope information**, not a structural
causal claim. The within-data evidence is strong enough to defeat the
naive damages reading, which is what the paper claims. Promotion to
🟢 would require treating H8 as a *causal* claim, which the paper
explicitly avoids. Stays at **Partial (strongly supported)**: the
descriptive sign-reversal is robust; the causal interpretation is
deliberately limited to scope, not damages.
