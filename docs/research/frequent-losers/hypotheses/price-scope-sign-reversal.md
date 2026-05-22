---
id: h8
slug: price-scope-sign-reversal
title: "Price evidence carries scope information, not damages"
cluster: E
paper_section: "§7.1 + §7.2"
status: pending
last_updated: 2026-05-22
---

# H:price-scope-sign-reversal — Price evidence carries scope information, not damages

The manuscript reports a price sign reversal when the cobidder margin is
introduced. The hypothesis is that the price result should be read as
**scope information** — telling us where the loser-side ranking applies —
rather than as a damages calculation. A naive damages reading would predict
a stable, signed effect; the scope reading predicts that the sign and
magnitude depend on the validation target.

> **Evidence strength: Pending.**
> Backed by §7.1–§7.2 of the [manuscript](../paper.md) ("Price Evidence as
> Scope", "Why the Sign Reversal Matters"). AN pages to follow.

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

| Analysis | Bearing | Status |
|---|---|---|
| [AN-019](../analyses/an-019-rdd-cap-price.md) (RDD price) | Direct | pending |
| [AN-020](../analyses/an-020-did-decreto-2018.md) (DiD modality split) | Supports | pending |
| [AN-016](../analyses/an-016-gate-d2.md) (modal AUC asymmetry) | Supports | pending |

## Open tests

- Triangulation of price scope with bid-level dispersion patterns.
- Robustness to reference-price construction (administrative vs
  market-implied).
