---
paper: sme-public
id: an-028
hypothesis: sme-winner-share-falls
type: causal
question: Does the price effect survive restricting the sample to RAIS-validated SME winners, and does the distance effect vanish in that subsample as the firm-size composition channel would predict?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Sample restricted to RAIS-validated SME winners (≤49 employment links): price β stays at −0.121*** (vs full −0.109***); distance becomes null (β=−0.28, p>0.10) vs +14.2 km*** in full sample. Micro-firm restriction (≤9 employment): price β = −0.089***; distance again null. The RAIS-validated SME winner indicator falls by β = −0.21*** (18m DiDiR) under open competition. Composition channel separately identified."
created: 2026-05-21
script: scripts/11_rais_validation.R + scripts/12_rais_winner.R
target: output/tables/tab_rais_validation.tex + tab_winner_rais.tex
tags: ["H:sme-winner-share-falls", "H:distance-widens-under-open", rais, firm-size, micro-firm, composition, validation, employment-links]
design:
  sample: "BEC items, 18-month window, linked to RAIS 2017 winner-CNPJ employment counts. Subsamples by RAIS employment: full / Winner in RAIS / SME (≤49 links) / Micro (≤9) / Not large (<100)"
  specification: "(a) Same DiDiR as AN-001 on five subsamples (price, distance, firms, bids). (b) Outcome = 1{winner is RAIS-validated SME (≤49)} with item FE"
  fixed_effects: "item"
  cluster: "item"
  notes: "RAIS link via CNPJ raiz; 82.6% match rate per project memory; identifies firm-size composition channel separately from SME-status proxy in BEC"
---

# AN-028: RAIS-validated SME winner composition

!!! abstract "Intuition (plain-language)"
    Use employer records (RAIS) to confirm the 'SME' winners are genuinely small firms. The price effect survives restricting to RAIS-validated small winners — but the distance effect vanishes, exactly as a firm-size composition story predicts (the distant winners were the larger non-SMEs). This separately identifies the composition channel.

## Question

The composition channel in [AN-008](an-008-gelbach-decomp.md) loaded
+185% of the Gelbach gap on the SME-winner mediator, but the
SME-winner indicator there is from BEC's own SME classification.
Two complementary questions: (a) does the price effect *survive*
restricting to RAIS-validated SME winners (i.e., firms with ≤49
formal employment links in 2017)? (b) does the distance effect
*vanish* in the SME-validated subsample, as the geographic-catchment
channel would predict if non-SMEs drive distance widening?

## Design

- **Sample**: BEC items, 18-month window, with winner CNPJ linked to
  RAIS 2017 employment counts via CNPJ raiz (82.6% match rate;
  project memory). Five subsamples by RAIS employment:
  1. **Full** (N = 649,714)
  2. **Winner in RAIS** (N = 599,020; drops unmatched winners)
  3. **SME (≤49 employment links)** (N = 532,538)
  4. **Micro (≤9 employment links)** (N = 437,975)
  5. **Not large (<100 employment links)** (N = 544,757)
- **Specification (a)**: same DiDiR as
  [AN-001](an-001-didir-prices.md) on each subsample.
- **Specification (b)**: outcome = $1\{\text{winner has } \leq 49 \text{ RAIS employment links}\}$
  with item FE; DiDiR same.

## Results

**Panel A — Log price across RAIS subsamples** (`tab_rais_validation.tex`):

| Subsample | β on $g65 \times \text{Pre}$ | SE | N |
|---|---:|---:|---:|
| Full                  | **−0.109*** (sign-flipped baseline) | (0.012) | 649,714 |
| Winner in RAIS        | **−0.102*** | (0.012) | 599,020 |
| SME (≤49)             | **−0.121*** | (0.010) | 532,538 |
| Micro (≤9)            | **−0.089*** | (0.013) | 437,975 |
| Not large (<100)      | **−0.118*** | (0.010) | 544,757 |

**Panel B — Distance across RAIS subsamples**:

| Subsample | β on $g65 \times \text{Pre}$ | SE | p |
|---|---:|---:|---:|
| Full                  | **+14.25*** | (2.36) | <0.01 |
| Winner in RAIS        | **+17.10*** | (2.37) | <0.01 |
| SME (≤49)             | **−0.28**   | (2.44) | **>0.10 (null)** |
| Micro (≤9)            | +3.06      | (2.81) | >0.10 |
| Not large (<100)      | +6.68***   | (2.48) | <0.01 |

**Panel C — Log firms (entry) across RAIS subsamples**: all subsamples
show positive log-firm effects (0.07 to 0.12), all p<0.01.

**Winner composition DiDiR** (`tab_winner_rais.tex`): outcome
$1\{\text{winner is SME (≤49 RAIS)}\}$:

| Window | β | SE |
|---|---:|---:|
| 6-month  | −0.110*** | (0.008) |
| 12-month | −0.168*** | (0.007) |
| **18-month** | **−0.213*** | **(0.007)** |

Open competition reduces the probability of an RAIS-validated SME
winner by **21 percentage points** at 18 months.

Output: `output/tables/tab_rais_validation.tex`,
`output/tables/tab_winner_rais.tex`.

## Interpretation

**The price effect survives — and slightly strengthens — under
SME-only validation.** Restricting to SME-validated subsamples
keeps the price coefficient between −0.089 (Micro) and −0.121 (SME)
— all negative, all p<0.01. The composition channel cannot fully
explain the price effect: even *conditional on the winner being
a verified SME*, the policy regime moves prices. The reduced-form
result is therefore *both* a competition effect *and* a composition
effect (per the Gelbach decomposition in
[AN-008](an-008-gelbach-decomp.md)) — neither component is residual.

**The distance effect vanishes in the SME-validated subsamples.**
The full-sample distance coefficient (+14.25 km***) is *driven by
non-SME winners*: restricting to SME (≤49) gives β = −0.28 (null);
Micro (≤9) gives β = +3.06 (null). Adding back firms up to <100
employment links recovers β = +6.68***. This is the cleanest
evidence available for [H:distance-widens-under-open](../hypotheses/distance-widens-under-open.md):
the geographic-catchment widening is *entirely* a non-SME composition
effect. RAIS-validated SMEs win locally; non-SMEs win at a wider
radius.

**The composition shift is large.** Open competition reduces the
RAIS-validated SME-winner probability by **21 percentage points** at
18 months — a structural shift in winner composition. This is the
strongest test of [H:sme-winner-share-falls](../hypotheses/sme-winner-share-falls.md):
the BEC SME-status flag could be unreliable (firms self-classify),
but RAIS employment is administratively recorded and orthogonal to
BEC behavior. The 21 pp composition shift on the *cleaner* indicator
matches the Gelbach reading.

**Reading-bridge.** Together, AN-008 (Gelbach decomposition: +185%
composition / −85% competition / large unexplained), AN-009
(reduced-form SME-winner shift on BEC indicator), and this AN
(RAIS-validated 21 pp shift) form a triangulation: all three
identify the same composition channel through different lenses;
none separately explains the full reduced-form price effect.

Confidence: **yellow.** RAIS is the cleanest available firm-size
proxy in Brazilian data — administratively recorded, lagged from
BEC behavior, no self-reporting bias. The 82.6% match rate is
high. The yellow caveat is that the SME (≤49) cut is the federal
SME definition (Lei Complementar 123/2006), which uses revenue
*and* employment thresholds. The pure-employment cut here is a
proxy for the dual definition.

## Follow-ups

- **Revenue-based SME validation**: link to Receita Federal CNPJ
  revenue records to complement RAIS employment. The dual SME
  definition (employment + revenue) is closer to the legal indicator
  used by BEC.
- **Firm-age cross-cut**: combine RAIS employment with firm age
  (project script 15) to isolate *young* SMEs vs *old micro* firms —
  the policy may benefit one more than the other.
- **CNAE heterogeneity** (project script 16): the composition shift
  may differ across sector codes within Group 65 (e.g., medical
  equipment vs disposables); document the per-CNAE breakdown.
