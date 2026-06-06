---
paper: frequent-losers
id: an-043
hypothesis: exposure-discipline
type: validation
question: Does the award-layer evidence-triage protocol replicate on a SECOND, independent procurement platform? On federal ComprasNet (2013–2019, pure Pregão) against the same family of CADE cartel anchors, does the opportunity-adjusted deflation anatomy reproduce — exposure-only discrimination ≥ raw, within-stratum residual collapsing to chance — and does the strict-temporal prospective collapse port?
status: provisional
status_date: 2026-06-06
confidence: yellow
claim-altitude: cross-platform robustness (provisional; partially overlapping anchors)
headline: "PROVISIONAL — deflation replicates on the federal platform. ComprasNet (2013–2019, 51.0M participation rows, 92,600 firms, 35,943 always-losers, FL cut re-estimated at 32, 6,491 federal frequent losers) yields 195 broad-AL cobidders (94 FL / 101 non-FL) anchored on 7 numbered CADE cases and 25 platform-active direct-defendant establishments. The raw award-layer ROC-AUC is 0.744; the strict training-AL continuous ROC is 0.666 (BEC twin 0.684) and the strict full-universe ROC is 0.489 (BEC 0.474) — the prospective ranking collapses outside the incumbent pool on both platforms. Under opportunity adjustment the exposure-only model (0.754) is ≥ the raw score, the within-stratum residual collapses to chance (0.462), the nested increment is +0.005 (DeLong p = 0.191), the matched-stratum permutation does not reject, and label-blind opportunity ranks the label at only 0.611. Negative controls reproduce the order (placebo p = 0.258 ns; high-volume-winner p = 0.582 ns); the permutation is correctly sized (power 0.35 @ within-AUC 0.55, 0.90 @ 0.60); the label-frozen timing score ranks new 2017–2019 contact at 0.595. Direct-defendant FL-binary AUC is ≈ chance (0.465–0.503), reproducing the loser-side scope by design. Case concentration is worse than BEC (top-two 64.4%, TP@500 87.5% one case); the ROC ordering is LOCO-robust (RI p < 0.001) but operational k-metrics are one-cartel-dominated — the federal leg is a concentrated-anchor stress test, not a multi-case generalization. Anchors partially overlap BEC, so this is a provisional robustness leg, not a promotion to Confirmed."
created: 2026-06-06
script: scripts/comprasnet/00_build_canonical_validation_targets.R, 01_label_funnel_reconciliation.R, 02_opportunity_adjusted_validation.R, 02b_opportunity_sensitivity_contact2.R, 03_timing_case_holdout_validation.R, 04_case_holdout_dominance.R (--source=comprasnet)
target: outputs/comprasnet/tables/table_C_opportunity_adjusted_validation.csv + table_D_opportunity_permutation_validation.csv + table_E_negative_controls.csv + table_G/table_H + outputs/comprasnet/diagnostics/audit_armor/*
tags: ["H:exposure-discipline", "H:cobidder-concentration", "H:timing-discipline", comprasnet, federal, cross-platform, opportunity-adjustment, deflation, replication, provisional]
design:
  sample: "Federal ComprasNet panel, 2013–2019, pure Pregão (~15% regular + ~85% SRP); convite extinct federally. Always-loser candidate pool 35,943; FL cut re-estimated by the same median+1.5·IQR rule (NOT transported) ⇒ threshold 32 ⇒ 6,491 FL. Main target = 195 broad-AL cobidders co-participating with direct CADE defendants (broad-rule pre-AL set = 3,850). Anchors: 7 numbered CADE cases (same cartels as BEC, establishment-anchored), 25 platform-active direct-defendant establishments; 1 unnumbered TI/DF summary case excluded; sentinel CNPJ 000000000000-2 dropped in the 2026-06-05 target-quality fix."
  specification: "Mirrors the BEC audit battery: (S0) raw award-layer score ROC/PR-AUC; (S2) exposure-only logit on the exposed subsample; WITHIN-STRATUM residual = score | opportunity cell (MEDIUM = year × buyer/UASG, since item-group is buyer-collinear federally; COARSE = year only; STRICT = item_code × year × UASG); NESTED exposure→exposure+score increment with DeLong; matched-permutation (within-strata shuffle, PR-AUC); strict holdout train ≤2016 → test 2017–2019; rolling-origin 6 origins; leave-one-case-out (LOCO) + clustered randomization inference. Contact≥2 sensitivity restricts cobidders to ≥2 co-participations with a direct defendant."
  notes: "Construction differs from BEC (window, FL cut, opportunity-cell margins, pure-Pregão, partially overlapping anchors); absolute-level gaps are EXPECTED and are not, by themselves, findings. Read every federal–BEC delta against the construction-differences header in NEW_NUMBERS_MAP_COMPRASNET.md."
---

!!! warning "Provisional — partially overlapping anchors"
    The 7 federal CADE cases are the *same cartels* as the BEC portfolio,
    establishment-anchored at the federal level. This is a robustness leg under
    partially correlated ground truth, not a clean out-of-sample replication on an
    unrelated cartel set. It does **not** by itself promote any hypothesis to
    **Confirmed**. Where this page conflicts with the [paper](../paper.pdf) or the
    [changelog](../changelog.md), **the paper wins**.

# AN-043: Federal opportunity-adjusted validation (ComprasNet) — does the audit port?

!!! abstract "Intuition (plain-language)"
    A single platform can flatter a screen: maybe São Paulo's BEC has some quirk that makes
    loser-side firms cluster around cartels. The honest test is to take the *same audit
    protocol* — not the same numbers — to a completely separate procurement system and ask
    whether the screen survives the same disciplines. We re-run the battery on federal
    ComprasNet, where the firms, buyers, auction rules, and even the frequent-loser cutoff
    are different. The protocol behaves identically: the raw screen ranks cobidders, but once
    we net out the simple fact that some firms had more *chances* to bid near a cartel
    (exposure), the residual signal collapses to chance — exactly as on BEC. The screen ports
    as an exposure-loaded triage tool, and the deflation that bounds its interpretation ports
    with it. Two caveats keep this provisional: the federal cartels partially overlap the BEC
    ones, and the federal positives are concentrated in one or two cases.

## Question

Does the award-layer triage protocol — and, crucially, its **deflation anatomy** under
opportunity adjustment — reproduce on a second, structurally different procurement platform?

## Design

- **Panel.** Federal ComprasNet, 2013–2019, **51.0M** participation rows, **92,600** firms,
  pure Pregão (~15% regular + ~85% SRP); convite is extinct federally.
- **Universe.** Always-loser candidate pool **35,943**; FL cut **re-estimated** by the same
  median + 1.5·IQR rule (not transported) ⇒ threshold **32** ⇒ **6,491** federal frequent
  losers.
- **Target.** **3,850** broad-rule cobidders → **195** broad-AL cobidders (mirrors BEC's
  651), of which **94** FL and **101** non-FL; anchored on **7 numbered** CADE cases and
  **25** platform-active direct-defendant establishments.
- **Battery.** Raw score, exposure-only logit, within-stratum residual (MEDIUM =
  year × buyer/UASG; item-group margin not observed federally), nested increment + DeLong,
  matched permutation, negative controls, strict holdout (≤2016 → 2017–2019), rolling-origin,
  LOCO + clustered RI.

## Results

### Universe and target (built)

| Quantity | Federal | BEC twin |
|---|--:|--:|
| Participation rows | 51.0M | 1.65M (analysis sample) |
| Firms | 92,600 | 41,444 |
| Always-losers | 35,943 | 16,843 |
| FL cut (IQR rule) | 32 (≥) | 14 (≥) |
| Frequent losers | 6,491 | 2,735 |
| Broad-AL cobidders (MAIN) | 195 | 651 |
| — FL / non-FL composition | 94 / 101 | 341 / 310 |
| Numbered CADE cases | 7 | 12 |
| Platform-active direct defendants | 25 (estabs) | 41 |

### Raw + strict-temporal (read from CSV; verified in triage 03/04)

| Row (estimand + sample) | Federal | BEC twin |
|---|--:|--:|
| Raw award-layer ROC-AUC (log T, full universe) | 0.744 | 0.761 |
| Strict training-AL continuous ROC (incumbents) | 0.666 | 0.684 |
| Strict full-universe ROC (entrants @ 0) | 0.489 | 0.474 |
| Strict training-AL FL-binary ROC | 0.634 | ≈0.65 |
| Worst rolling-origin year ROC | 0.480 (2015) | 0.446 (2015) |
| Direct-defendant FL-binary AUC (scope-by-design) | 0.465–0.503 | ≈ chance |

> *Estimand wall (carry into every caption).* The raw/strict-timing rows above measure the
> **temporal stability of the unadjusted screen** over the firm universe. They are a
> **different estimand on a different sample** than the opportunity-adjusted within-cell rows
> below. A high raw-timing AUC and a null adjusted increment are **mutually consistent, not
> contradictory** — the timing rows are marginal discrimination; the deflation rows are
> residual discrimination *after* netting out exposure within matched cells.

### Opportunity-adjusted deflation block (read from CSV; verified)

The federal deflation anatomy reproduces the BEC reading: the exposure-only model is ≥ the raw
score, the within-stratum residual collapses to chance, the nested increment is negligible with
a non-significant DeLong test, and the matched-stratum permutation does not reject. Genuine
**label-blind** opportunity structure (cell rate computed from non-cobidder rows only) ranks the
label at 0.611 — well below the mechanical observed-contact encoding — confirming the raw
concentration is mostly co-participation exposure.

| Row | Federal | BEC twin |
|---|--:|--:|
| Exposure-only ROC (within-exposed base) | 0.754 | 0.713 |
| Within-stratum residual (score \| MEDIUM cell) | 0.462 | 0.471 |
| Within-stratum FL \| stratum | 0.478 | 0.507 |
| Nested increment (exposure→exposure+score) | +0.005 | +0.010 |
| Nested DeLong p | 0.191 | 0.013 |
| Matched-permutation verdict (within-strata shuffle) | does not reject | p = 0.127 (NS) |
| Label-blind opportunity expectation E | 0.611 | 0.553 |
| Negative control — placebo anchors (AUC; p) | 0.728; p = 0.258 (NS) | 0.755; p = 0.46 (NS) |
| Negative control — non-CADE high-volume winners (AUC; p) | 0.746; p = 0.582 (NS) | — |
| Permutation power @ true within-AUC 0.55 | 0.35 | 0.97 |
| Permutation power @ true within-AUC 0.60 | 0.90 | — |
| Label-frozen prospective ROC (2013–2016 frozen) | 0.595 (N = 98) | 0.713 (N = 231) |

### Contact≥2 sensitivity (read from CSV; verified in triage 02b)

Restricting cobidders to ≥2 co-participations with a direct defendant retains **108 of 195**
positives (55.4%). The deflation reading holds: the within-stratum residual stays below chance,
the nested increment shrinks and its DeLong p worsens, and the matched-permutation does not
reject. The only material moves are pre-adjustment AUC *increases* (raw and exposure-only rise on
the cleaner, more exposure-loaded positive set) — expected under, and supportive of, the
exposure-confound interpretation.

### Case concentration (read from CSV; verified in triage 04)

| Concentration metric | Federal | Read |
|---|--:|---|
| Top-case share of positives | 35.4% (69/195) | most flattering — do not lead with it alone |
| Top-two share of positives (link-row) | 64.4% | mandated headline disclosure |
| Top-case share of TP@500 | 87.5% | honest operational concentration |
| LOCO PR-AUC drop-largest | 0.014 → 0.008 (−44.4%) | operational k-metrics one-case-dominated |
| Clustered-RI p (ROC ordering) | < 0.001 | ordering non-random ✅ |
| Clustered-RI p (case-coverage breadth) | 0.487 (NS) | breadth NOT distinguishable from random |

## Interpretation

**The deflation ports.** On a platform with different firms, buyers, auction rules, FL cutoff
(32 vs 14), and opportunity-cell margins, the protocol behaves as on BEC: the raw screen ranks
cobidders (0.744), the prospective ranking collapses outside the incumbent pool (strict
full-universe 0.489 / 0.474), the within-stratum residual sits at chance (0.462), and the
exposure axis carries the discrimination (exposure-only 0.754 ≥ raw 0.744; label-blind 0.611).
The negative controls reproduce the order (placebo p = 0.258; high-volume winners p = 0.582), and
the permutation is correctly sized (power 0.90 at within-AUC 0.60). The construct **ports and
deflates; it does not break.**

**Dual framing on concentration (mandatory).** The ROC *ordering* is genuinely multi-case
(LOCO-robust; RI ordering p < 0.001), so the rank-ordering is not driven by any single cartel.
But the realized **operational** detections are one-to-two-cartel-dominated (TP@500 87.5% one
case; top-two 64.4%; RI breadth p = 0.487 NS). The federal leg is therefore a **single-system,
concentrated-anchor stress test** of the protocol, NOT a multi-case operational generalization.
Both numbers are disclosed.

## Bearing on hypotheses

- **H:exposure-discipline (H3).** Primary bearing — the federal deflation anatomy is the
  cross-platform replication of the exposure-discipline claim. Provisional support; not a
  promotion to Confirmed (partially overlapping anchors).
- **H:cobidder-concentration (H1).** The raw federal ranking concentrates cobidders
  (raw ROC 0.744); ordering is LOCO-robust.
- **H:timing-discipline (H4).** Strict-temporal prospective collapse ports (0.489 / 0.474);
  label-frozen prospective row 0.595 (N = 98).
- **H:direct-defendants-null (H2).** Direct-defendant FL-binary AUC ≈ chance (0.465–0.503)
  reproduces the loser-side scope by design.

## Follow-ups

- A genuinely independent cartel anchor (non-overlapping cases, or another jurisdiction)
  remains the path from *provisional* to **Confirmed**.
- Federal bid microdata, if it ever becomes public, would let the bid-layer/Imhof benchmark
  port as well; no such release exists today.
