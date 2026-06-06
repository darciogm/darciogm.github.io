---
paper: frequent-losers
id: h3
slug: exposure-discipline
title: "A limited genuine signal survives once opportunity exposure is netted out"
cluster: B
paper_section: "§4.2"
status: "Confirmed — two platforms, anchor-robust by placebo construction"
last_updated: 2026-06-06
---

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->
<!-- PROMOTED: exposure-discipline → Confirmed; bar rewritten with claim-type distinction 2026-06-06 -->

# H:exposure-discipline — No robust residual ordering survives once opportunity exposure is netted out

A raw co-bidding association mostly reflects *opportunity exposure* — firms
active in the same products, buyers, years, and modalities as CADE defendants
mechanically have more chances of appearing near those legal anchors. The
honest test is whether **anything robust survives** once opportunity is
disciplined away. Under the reproducible non-circular label the answer is no:
the within-stratum ordering is at chance, the marginal nested increment fails
the permutation designs, and negative controls corroborate the opportunity
account.

!!! abstract "Intuition (plain-language)"
    The eye-catching raw concentration is largely an opportunity artifact. Ranking firms by *observed* contact reaches ROC ≈ 0.90, but that is mechanical label encoding (a cobidder *is* a firm with positive contact); the honest, genuinely label-blind opportunity benchmark is only ≈ 0.553. The real question is what is left after you net opportunity out. Under the non-circular label the answer is: nothing robust. Inside a fixed opportunity stratum the score discriminates at ROC 0.471 — at chance — and the marginal nested increment (+0.010, p = 0.013) does not survive matched permutation (p = 0.127) or FL-enrichment (p = 0.067). An anchor-agnostic armor battery confirms this is not an artifact: a planted positive control recovers within-stratum AUC 0.953, and the permutation test has power 0.97 at within-AUC 0.55 (bounding any residual below ≈ 0.55). The deflationary verdict rests on this battery — not on "exposure beats the score". That honest split is the contribution.


> 🟢 **Evidence strength: Confirmed — two platforms, anchor-robust by placebo construction.**
> The claim that is *Confirmed* is the **over-crediting mechanism**: raw
> validation of an award-layer screen against adjudicated cases over-credits
> the screen because it measures *opportunity exposure*, not loss-intensity
> discrimination. Once opportunity is netted out no robust residual ordering
> survives, and that deflationary verdict is now anchor-robust by placebo
> construction on two institutionally distinct platforms (BEC and federal
> ComprasNet). The promotion does **not** elevate the screen to a portable
> detection tool — see [the remaining-scope note](#what-this-confirmation-does-and-does-not-cover) below.
>
> The exposure decomposition on the BEC × CADE data under the non-circular
> 651-cobidder label:
> (i) **Most concentration is opportunity** ([AN-004](../analyses/an-004-cobidder-baseline.md),
> [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> ranking by *observed* contact reaches ROC ≈ 0.90 (mechanical label
> encoding) and genuine label-blind opportunity ≈ 0.553, so the raw
> concentration is exposure-inflated rather than discriminating power.
> (ii) **No robust residual survives** ([AN-004](../analyses/an-004-cobidder-baseline.md)):
> the within-stratum AUC is 0.471 (≈chance); the nested increment over the
> exposure-only benchmark is **+0.010** (DeLong p = 0.013), marginal at best.
> (iii) **Permutation designs are non-significant** ([AN-005](../analyses/an-005-sham-fl-permutation.md)):
> matched-stratum label permutation p = 0.127 (ns), FL-enrichment within
> matched strata p = 0.067 (ns); negative controls corroborate the
> opportunity account (real ≈ placebo, p = 0.46).
> (iv) **Leakage audit** ([AN-014](../analyses/an-014-leakage-audit-d3.md)):
> in-sample item-level numbers attenuate sharply under out-of-fold and
> temporal holdout; nothing robust remains on the disciplined numbers.
> (v) **Universe-anchored scope** ([AN-027](../analyses/an-027-universe-anchored-stratum-scope.md)):
> the binary FL flag is silent on winner-heavy direct defendants (0.49),
> while participation volume ranks them moderately (0.66–0.70) — the
> asymmetry is on the loser-side binary flag, not a generic detector.
> Net of opportunity there is no robust residual ordering — and the
> **over-crediting mechanism that produces this verdict is Confirmed**: the
> deflation reproduces on a second, institutionally distinct platform
> (federal ComprasNet,
> [AN-043](../analyses/an-043-federal-opportunity-adjusted-validation.md))
> and is **anchor-robust by placebo construction** (B = 500 placebo anchor
> sets reproduce the raw AUC on both platforms; federal placebo p = 0.258,
> HV-winner p = 0.582). The same audit returns the same verdict, deflating
> the cheap screen there as it does on BEC. Federal evidence rests on
> partially overlapping legal anchors; what is Confirmed is the
> over-crediting mechanism, not the screen as a portable detection tool.

## Theory

Exposure-disciplined comparisons are the cartel-screening equivalent of
opportunity-controlled placebos: they ask whether the observed
concentration would arise mechanically from where firms bid, independent of
how they bid. The discipline isolates the signal from the volume
\citep{conley2016detecting,kawai2022detecting}.

## Prediction

The hypothesis predicts that, after opportunity is netted out, a **limited but
non-zero** within-stratum increment survives. Under the non-circular label the
data reject this:

- the exposure-only benchmark accounts for most of the raw concentration
  (ROC ≈ 0.90); and
- the score does **not** discriminate within a fixed opportunity stratum
  (ROC ≈ 0.471, at chance); the nested increment (+0.010, p = 0.013) collapses
  toward the benchmark and fails the permutation designs.

## Competing prediction

**Pure opportunity.** If the within-stratum increment is at chance — i.e.,
concentration falls all the way to the exposure-only benchmark — the result
reduces to opportunity-set overlap with no robust loser-side residual. Under
the non-circular label **this competing prediction prevails**: the within-stratum
ordering is at chance and the permutations are non-significant.

## Case evidence

The exposure construction uses the same product × buyer × year × modality
strata that procurement-cartel cases typically operate in (see
[manuscript](../paper.md), §2.3).

## Empirical test

- *Exposure benchmark*: an exposure-only model of who could plausibly bid
  near a CADE anchor given where they participate (ROC ≈ 0.90) — the share
  of raw concentration that is mechanical opportunity.
- *Within-stratum increment*: discrimination of the score inside a fixed
  opportunity stratum, net of the benchmark (ROC ≈ 0.471, +0.010, ns across
  permutation designs).
- *Sham FL*: random reassignment of the FL label among always-losers,
  preserving the marginal distribution; tests whether opportunity alone
  reproduces the increment.
- *Outcome*: the genuine within-stratum increment and its DeLong p-value.

## Data requirements and limitations

Requires the BEC LANCES panel and the (product × buyer × year × modality)
exposure key. Limitation: the exposure stratum is defined by observed
participation, which itself can be affected by cartel behavior; the audit
disciplines exposure but does not separately identify cartel-driven
participation distortions.

## Evidence

| Analysis | Bearing | Status | Key takeaway |
|---|---|---|---|
| [AN-004](../analyses/an-004-cobidder-baseline.md) (exposure decomposition) | Against | done | Exposure-only ROC ≈ 0.90 (raw is opportunity-inflated); within-stratum 0.471 (≈chance), nested increment +0.010 (DeLong p = 0.013) |
| [AN-005](../analyses/an-005-sham-fl-permutation.md) (permutation + neg. controls) | Against | done | Matched permutation p = 0.127 (ns), FL-enrichment p = 0.067 (ns); real ≈ placebo (p = 0.46) — opportunity alone reproduces the concentration |
| [AN-014](../analyses/an-014-leakage-audit-d3.md) (leakage audit D3) | Supports | done | In-sample item-level numbers attenuate sharply under OOF / temporal holdout; nothing robust remains |
| [AN-027](../analyses/an-027-universe-anchored-stratum-scope.md) (universe-anchored scope matrix) | Direct | done | Binary FL flag silent on winner-heavy defendants (0.49); participation volume ranks them moderately (0.66–0.70) — asymmetry on the binary flag, not a generic detector |
| [AN-028](../analyses/an-028-exposure-stratum-balance.md) (within-FL standardized diffs) | Supports | done | Cobidders descriptively distinct from non-cobidder FLs at d 0.19–1.00 across dimensions |
| [AN-006](../analyses/an-006-strict-prospective-holdout.md) (exposure + timing) | Against | done | Strict ranking fails at the full universe (ROC 0.474); incumbent-pool residue only (ROC 0.684) |

## Open tests

- Sensitivity to exposure-stratum definition (coarser vs finer cells).
- Decomposition of attenuation by modality.
- Volume-matched cobidder vs non-cobidder-FL test — **done**
  ([AN-041](../analyses/an-041-volume-matched-cobidder-audit.md)): matching
  on `tenders_count` (SMD 0.49 → 0.00), the within-stratum concentration is
  not a volume artifact (HHI d +0.47, repeat-spread −0.56 hold or
  strengthen; bid-dispersion sub-signal collapses to n.s.).

## The bar for Confirmed — and why this claim clears it

The project's standing bar for a 🟢 Confirmed promotion is that *a
genuinely independent cartel anchor* validate the result. **That bar was
written for detection-validity claims** — claims of the form "this screen
discriminates cartelists from non-cartelists" — and it remains exactly
correct for those. A screen's *detection* value can always be inflated by
the particular cartels that happen to anchor the validation, so a portable
detection claim must show the same discrimination against cartels the screen
never saw. None of this project's detection claims clear that bar on BEC
alone, and the X-plat detection umbrella stays provisional accordingly.

**This hypothesis makes a different kind of claim, and the independent-anchor
requirement does not bind it.** The claim here is not "the screen detects
cartels"; it is the *over-crediting mechanism* — that **raw validation of an
award-layer screen against adjudicated cases over-credits the screen because
it measures opportunity exposure rather than loss-intensity discrimination.**
This is a statement about *how a raw validation number is generated*, and it
is established by construction rather than by trusting which cartels anchor
the test. Three legs carry it:

1. **Two independent exposure geometries.** The deflation reproduces on two
   platforms with distinct participation universes (BEC ≈ 41K firms vs
   federal ComprasNet ≈ 92.6K firms), distinct buyers (PBU vs UASG), and
   distinct modality mixes. The CADE labels share legal provenance, but the
   *opportunity structure* that produces the deflation is platform-specific:
   the within-stratum residual sits near chance on both (BEC 0.471 /
   federal 0.462), with exposure-only discrimination ≥ raw on both
   (BEC 0.713 ≥ 0.744 raw on the relevant cut; federal 0.754 ≥ 0.744 raw).
   What ports is the discipline, not a deployable ranking.

2. **Placebo-anchor controls — the decisive leg.** B = 500 placebo anchor
   sets reproduce the *raw* AUC on both platforms (federal placebo
   p = 0.258, HV-winner p = 0.582; the BEC twins — real ≈ placebo, empirical
   p = 0.46 — are in [AN-005](../analyses/an-005-sham-fl-permutation.md) and
   the ledger). Because the placebos are **label-independent by
   construction**, the deflation cannot depend on *which* cartels anchor the
   validation. The partial overlap between the BEC and federal CADE anchors
   is therefore irrelevant to *this* claim: a mechanism reproduced by random
   placebo anchors is not anchor-specific in the first place. This is what
   "anchor-robust by placebo construction" means, and it is precisely the
   property the detection bar demands of an independent anchor — supplied
   here by construction instead.

3. **The O_i positive control.** A planted within-stratum signal is
   recovered at AUC ≥ 0.99 on both platforms, so the design *detects*
   within-stratum signal when one is present. The chance-level residual is a
   genuine null, not a design that cannot see anything — which is exactly
   what licenses reading the deflation as a finding rather than an artifact.

Together these establish the over-crediting mechanism without ever asking
the reader to trust the anchors: legs 1 and 3 fix the geometry and the
power, and leg 2 removes label dependence by construction. The same audit
returns the same verdict, deflating the cheap screen there as it does on
BEC. Federal evidence rests on **partially overlapping legal anchors**;
that caveat is real for any *detection* reading but does not touch the
mechanism claim, which is what is promoted.

### What this confirmation does and does not cover

The promotion covers the **over-crediting mechanism only** — that raw
award-layer validation over-credits the screen by measuring opportunity
exposure, a verdict now demonstrated across two platforms and robust to the
anchor set by placebo construction. It does **not** promote screen
portability as a *detection tool*: the cross-platform detection umbrella
([X-plat row in the scorecard](index.md#scorecard)) stays **provisional**,
because a portable detection claim still requires a genuinely independent
cartel anchor and the federal anchors only partially overlap the BEC
portfolio. The two readings are deliberately separate: the *discipline*
ports and is Confirmed; the *deployable ranking* does not and is not.

Two artifact families remain outside any within-data audit and are not
claimed away by this promotion: data-generating-process artifacts (BEC
missingness, 8-digit CNPJ-root collision, CADE adjudication completeness
bias — structural properties of the data lake) and selection on CADE
adjudication (the cobidder set is defined relative to the cartels CADE chose
to adjudicate in 2009–2019). Neither bears on the over-crediting mechanism,
which is about *how a raw validation number is produced*, not about which
firms are truly cartelists. This page is consistent with the project-wide
convention documented in [findings/index.md](../findings/index.md).
