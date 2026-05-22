---
paper: frequent-losers
id: h8
slug: price-scope-sign-reversal
title: "Price evidence carries scope information, not damages"
cluster: E
paper_section: "§7.1 + §7.2"
status: partial
last_updated: 2026-05-22
---

# H:price-scope-sign-reversal — Price evidence carries scope information, not damages

The manuscript reports a price sign reversal when the cobidder margin is
introduced. The hypothesis is that the price result should be read as
**scope information** — telling us where the loser-side ranking applies —
rather than as a damages calculation. A naive damages reading would predict
a stable, signed effect; the scope reading predicts that the sign and
magnitude depend on the validation target.

!!! abstract "Intuition (plain-language)"
    The presence of frequent losers in a tender is associated with higher negotiated prices on average (+6.4% — a damages-like reading that a careless reader might interpret as the size of the cartel overcharge). But once we restrict comparisons to comparable cells under matched ATT weighting, the sign FLIPS to negative (−9.7%). The hypothesis is that this sign reversal is informative and disciplining: the price evidence is *scope* information about WHERE the loser-side ranking applies, not a damages estimate. The paper deliberately treats price evidence as secondary corroboration, and the sign reversal is what justifies that disciplined reading.


> **Evidence strength: Partial (strongly supported).**
> Six lines of evidence document the sign-reversal pattern that
> defeats a naive damages reading:
> (i) **Headline three-spec progression** ([AN-037](../analyses/an-037-sign-reversal-decomposition.md)):
> broad +0.064 (p=0.003) → overlap unweighted +0.044 (p=0.035) →
> overlap ATT **−0.097** (p = 1.7 × 10⁻¹⁰). Clean structural sign flip.
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

- flip when the validation target shifts (direct defendants vs cobidders);
- vary in magnitude across modality (Convite vs Pregão) consistently with
  the loser-side scope rather than with a single damages parameter.

## Competing prediction

**Damages reading.** A single signed price coefficient that is stable
across targets and modalities, supporting a conventional damages
interpretation. The hypothesis rejects this reading.

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
Limitation: the sign-reversal interpretation depends on the assumption
that the loser-side scope is correctly identified; the price reading is
descriptive and supportive, not causal.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-019](../analyses/an-019-rdd-cap-price.md) (RDD price + overlap) | Direct | done | Baseline +6.36% → overlap −9.72% → PS −30.67% |
| [AN-020](../analyses/an-020-did-decreto-2018.md) (DiD around decree) | Supports | done | Callaway-Sant'Anna ATT +0.014 (SE 0.039); stacked DiD −0.006 — null |
| [AN-016](../analyses/an-016-gate-d2.md) (modal AUC asymmetry) | Supports | done | Pregão 0.952 vs Convite 0.816 — opposite direction to inst. theory |
| [AN-022](../analyses/an-022-falsification-pregao.md) (modal falsification) | Supports | done | Pregão/Convite price ratio 2.45×; joint specs flip binary sign |
| [AN-037](../analyses/an-037-sign-reversal-decomposition.md) (sign-reversal headline + subgroups) | Direct | done | Broad +0.064 → overlap ATT −0.097 (p = 1.7e-10); both modalities, all PBU-Q, tender-value Q1-Q3 all negative |
| [AN-038](../analyses/an-038-negative-cell-segment-audit.md) (item-group + cell audit) | Direct | done | Item-group 37 −0.126 (stays negative); group 10 +0.063 (stays positive); period 2009-2013 −0.119 — predictably structured |

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

The within-data sign-reversal evidence is decisive. The headline
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
   A clean instrument would settle whether the sign reversal is
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
