---
paper: sme-public
id: an-016
hypothesis: static-welfare-loss-large
type: robustness
question: How does the structural decomposition and welfare arithmetic behave in pharmaceuticals, and what specifically makes pharmaceuticals a boundary case rather than a second headline?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "Within Group 65, the CMED-regulated medications cell (6531) shows larger reduced-form effects than other medical supplies (log price −0.166 vs −0.099; log firms +0.152 vs +0.044), but the effect is significant in BOTH cells (OA-B falsification). Structural decomposition same direction: pharma exclusion share 68.8%, welfare loss 44.8% at λ=0.30. But four diagnostics fail in pharma where they hold in non-pharma: (1) 61.9% of post-policy pharma SME firms are new entrants (vs 23% NP); (2) primitive-invariance KS distance 0.141 after UH correction (fails); (3) implied SME welfare weight under strict invariance drops to 0.7 (below unity); (4) welfare ranking flips between main and strict-invariance specs in pharma but not non-pharma. Pharma is therefore reported as a *qualitative confirmation* — same direction, fragile magnitude."
created: 2026-05-21
script: scripts/24_pharma.R + v7-jpube-tight/scripts/33_pharma_flag.R + various
target: within-Group-65 falsification (online appendix OA-B, tab_within_g65) + v8-jpube/output/values.tex
tags: ["H:static-welfare-loss-large", pharma, boundary-case, sensitivity, model-fragility, primitive-invariance, turnover, strict-invariance, welfare-ranking-flip]
design:
  sample: "Pharmaceutical Pregão drop-outs (class = pharma per CMED-regulated CADMAT 6531/6532/6536/6581); compared to non-pharma standardized as reference"
  specification: "(a) Reduced-form DiDiR on pharma/non-pharma split + pharma-interaction; (b) BNE decomposition + welfare arithmetic per AN-010/AN-011; (c) Strict-invariance comparison per AN-017; (d) Primitive-invariance KS test pre vs post; (e) Firm-turnover share of post-policy SME bidders"
  notes: "Pharma cell sample: Pregão Pre SME 60,124 bids (13,022 auctions); Post SME 161,919 (19,994); non-SME falls 331,340 → 215,689"
---

# AN-016: Pharma boundary case — same direction, fragile magnitude

!!! abstract "Intuition (plain-language)"
    Pharma's reduced-form effects are even bigger than non-pharma's — but the structural story is fragile there: most post-policy SME pharma firms are brand-new entrants, the cost primitives do not stay invariant, and the welfare ranking flips between specifications. So pharma is reported as a same-direction confirmation, not a second headline you can lean on.

## Question

Across the structural decomposition
([AN-010](an-010-bne-decomposition.md)), welfare arithmetic
([AN-011](an-011-welfare-arithmetic.md)), bootstrap CI
([AN-022](an-022-bootstrap-ci.md)), λ sensitivity
([AN-024](an-024-lambda-welfare-ci.md)), strict invariance
([AN-017](an-017-strict-invariance.md)), and entry-rate analysis
([AN-030](an-030-entry-rates-cost.md)), pharmaceutical procurement
appears consistently. The point estimates are *larger* in pharma than
in non-pharma — welfare loss 44.8% vs 28.9%; exclusion share 68.8%
versus 72.0%. But the paper treats pharma as a *boundary case* rather
than a second headline. Why?

## Design

This AN consolidates pharma-specific evidence across five diagnostic
margins, comparing each to non-pharma:

1. **Within-Group-65 falsification** — medications (CADMAT 6531) vs other
   medical supplies (online appendix OA-B; `tab_within_g65.tex`).
2. **Sample composition** — how many SME firms are new entrants
   post-policy, in pharma vs non-pharma.
3. **Primitive-invariance KS test** on the drop-out distribution
   pre vs post.
4. **Strict-invariance welfare ranking** — does the welfare
   conclusion survive holding the SME cost distribution fixed at
   the pre-policy level?
5. **Implied SME welfare weight** under main vs strict-invariance
   specifications.

## Results

### 1. Reduced-form effects (within-Group-65 falsification)

The canonical reduced-form pharma evidence is the within-Group-65
falsification reported in the online appendix (OA-B) and
[AN-027](an-027-within-g65-cmed.md): the CMED-regulated medications
subclass (CADMAT 6531) versus other Group-65 medical supplies, 18-month
window, both compared to non-Group-65 controls.

| Outcome | Medications (6531), base / PBU FE | Other medical supplies, base / PBU FE |
|---|---:|---:|
| Log prices | **−0.166*** / −0.174*** | −0.099*** / −0.097*** |
| Log firms  | **+0.152*** / +0.161*** | +0.044*** / +0.050*** |

**The regulated-medications cell is larger in magnitude** (price −0.166
vs −0.099; firms +0.152 vs +0.044) but the effect is present and
significant in *both* subclasses — a confounder operating only through
CMED-regulated medicines would not move the non-medication cell. CMED
ceilings *cap* prices, so contamination would attenuate the medications
coefficient, not amplify it. The larger medications magnitude is
consistent with deeper non-SME pharmaceutical bidder pools, not pharma
inflation.

### 2. Structural decomposition (pharma cell)

Recovered from `values.tex`:

| Object | Pharma | Non-pharma |
|---|---:|---:|
| $S_1$ (open pre)        | 0.654 | 0.774 |
| $S_2$ (SME-only, pre-pool fixed) | 1.219 | 1.144 |
| $S_3$ (SME-only, post-pool)      | 0.963 | 1.000 |
| Lost-discipline (S₂−S₁) | +0.565 | +0.371 |
| Protected-pool offset (S₃−S₂)    | −0.256 | −0.144 |
| Net effect (S₃−S₁) | **+0.309** | +0.227 |
| Absolute exclusion share | **68.8%** | 72.0% |
| Bootstrap 95% CI on share | [61.6, 85.2] | [64.5, 86.8] |

### 3. Welfare arithmetic (pharma cell, λ=0.30)

| | Pharma | Non-pharma |
|---|---:|---:|
| $\Delta_{\mathrm{gov}}$       | 0.298 | 0.247 |
| DWL$_{\mathrm{alloc}}$         | 0.207 | 0.148 |
| Loss / $p^{S_1}$ (λ=0.30)      | **44.8%** | 28.9% |
| Bootstrap 95% CI (λ=0.30)      | [34.9, 55.9] | [20.5, 34.8] |
| Implied SME weight (main)      | **2.61** | 2.42 |
| Implied SME weight (strict-inv) | **0.7** | (stable; ranking unchanged) |

**The implied weight under strict invariance in pharma drops to 0.7 —
below unity.** Under that specification, even a utilitarian planner
with no SME-specific weighting would not prefer the set-aside.

### 4. Sample composition — turnover

From `values.tex`:

| Statistic | Pharma | Non-pharma |
|---|---:|---:|
| % of post-policy SME *firms* that are new entrants | **61.9%** | (n.r.) |
| % of post-policy SME *bids* from new firms        | **37.8%** | 23.0% |
| Pregão Pre SME (auctions)  | 13,022 | (smaller base) |
| Pregão Post SME (auctions) | 19,994 | |

**Nearly two-thirds of post-policy pharma SME firms are new
entrants** to BEC — versus less than a quarter in non-pharma. The
pharma protected-pool composition turns over substantially under the
policy.

### 5. Primitive-invariance KS distance

| Test | Pharma | Non-pharma |
|---|---:|---:|
| KS distance, Pregão pre-UH | 0.072 | (passes) |
| KS distance, Pregão post-UH correction | **0.141** | (passes) |

**The pharma Pregão primitive-invariance diagnostic FAILS after UH
correction.** The drop-out distribution shifts between pre and post
periods in pharma in ways the heterogeneity correction does not
absorb — meaning the recovered cost primitives are not stable across
the policy break in pharma. They are stable in non-pharma.

### 6. Strict-invariance welfare ranking

From [AN-017](an-017-strict-invariance.md):

| Specification | Pharma ranking | Non-pharma ranking |
|---|---|---|
| Main (endogenous post-policy SME pool) | $V_3 \succ V_0$ | $V_3 \succ V_0$ |
| Strict invariance ($F_c^{\mathrm{SME,Post}} = F_c^{\mathrm{SME,Pre}}$) | **$V_0 \succ V_3$ (flip)** | $V_3 \succ V_0$ |

**Pharma ranking flips between main and strict-invariance
specifications; non-pharma is stable.** From
[AN-024](an-024-lambda-welfare-ci.md), this flip is *not* driven by
λ — the pharma flip is constant across the entire λ ∈ [0.15, 0.45]
grid within each spec.

Output: within-Group-65 falsification `tab_within_g65.tex` (OA-B);
`v7-jpube-tight/output/tables/tab_v3_pharma_counts.tex` (counts); welfare
macros in `v8-jpube/output/values.tex`.

## Interpretation

**Pharma is structurally different on four dimensions** that
collectively justify the boundary-case treatment:

1. **Thinner pre-policy SME pool.** Pre SME Pregão count = 0.55
   bidders per auction in pharma vs 0.94 in non-pharma. The base
   from which the protected-pool response operates is half as deep
   in pharma.

2. **Heavier turnover post-policy.** 61.9% of post SME firms are
   new entrants in pharma — the active SME pool is *not* mostly
   the same firms with more entries; it is *new firms*. The
   composition change is large.

3. **Primitive-invariance failure.** UH-corrected Pregão drop-outs
   shift between periods (KS 0.141), meaning the cost-distribution
   recovery is more fragile across the break. In non-pharma the
   same diagnostic passes.

4. **Welfare ranking sensitivity.** When the SME pool composition
   is held fixed at the pre-policy level, the pharma welfare
   ranking *flips* (implied weight drops to 0.7, below unity);
   non-pharma's ranking is stable across the same specification
   choice.

**What the boundary-case treatment does and does not say.**

It says: the *direction* of the pharma decomposition is the same
as non-pharma — exclusion dominates, prices rise — and that
direction survives every diagnostic in
[AN-013](an-013-pregao-dropouts.md) through
[AN-022](an-022-bootstrap-ci.md). Pharma is a
*qualitative confirmation* of the non-pharma headline.

It does not say: the pharma *magnitudes* are headline-citable. The
44.8% welfare loss in pharma should be read with the boundary
flag: it depends on how the post-policy SME pool is modeled, and
under the strict-invariance benchmark the welfare ranking reverses.
Anyone citing 44.8% should also cite the strict-invariance reversal.

**Why pharma is fragile** (mechanism reading). Pharma is where
products are most heterogeneous (thousands of distinct drug-SKU
combinations), regulation is tightest (CMED price caps interact
with procurement), and the SME pool is most likely to be entering
the market for the first time in response to the policy
(specialized small distributors that did not exist in BEC pre-2018).
All four conditions interact: heterogeneity makes IPV-clock weaker;
regulation distorts cost recovery; new firms have different cost
distributions that the model treats as the same as incumbents.

Confidence: **yellow.** The boundary-case documentation is honest
and load-bearing — it is the *reason* the paper does not promote
pharma to a headline. Yellow because the diagnostics that fail in
pharma all bear on the structural recovery, and the strict-invariance
flip is the cleanest test of that fragility. Green would require
either an independent pharma replication (out of jurisdiction) or a
structural model that explicitly handles the new-firm entry channel
— neither in scope for this paper.

## Follow-ups

- **Drug-class cross-cut**: split pharma into therapeutic categories
  (antibiotics, oncology, generics, etc.). Some sub-classes may
  pass the primitive-invariance diagnostic where others fail.
- **CMED-cap interaction**: directly model the CMED price ceiling
  as a binding constraint on bid recovery. The 44.8% loss may
  attenuate if the price ceiling limits the structural cost
  distribution.
- **New-firm cost distribution**: estimate the post-policy SME cost
  distribution separately for new entrants vs incumbents. If
  new entrants have systematically different costs, the
  strict-invariance benchmark is misspecified — the right
  comparison is not "pre-policy SMEs" but "incumbent SMEs only".
- **Cross-jurisdictional pharma**: replicate the decomposition on
  pharmaceutical procurement in another state or in ComprasNet.
  If the boundary-case pattern persists, pharma is structurally
  different everywhere; if it disappears, the São Paulo BEC pharma
  setting has idiosyncratic features.
