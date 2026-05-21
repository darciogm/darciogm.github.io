---
paper: sme-public
id: an-025
hypothesis: static-welfare-loss-large
type: descriptive
question: How does the annualized fiscal welfare cost on Group 65 vary across plausible SME-only adherence rates, and what is the baseline empirical adherence?
status: done
status_date: 2026-05-21
confidence: yellow
headline: "At λ=0.30, the per-auction welfare cost is fixed at 0.204 (non-pharma) and 0.308 (pharma) of reference price. Annualized on Group 65: R$38–128M per year (US$11–37M) across adherence rates 30%–100%; baseline at the empirical 43% adherence is R$55M/yr (US$16M/yr). Adherence is the sensitivity-driver of the realized fiscal cost; the per-auction structural magnitude is held fixed."
created: 2026-05-21
script: v7-jpube-tight/scripts/57_welfare_adherence_sensitivity.R
target: v7-jpube-tight/output/tables/tab_welfare_adherence_sensitivity.tex
tags: ["H:static-welfare-loss-large", adherence, annualized, fiscal-cost, group-65, baseline-43pct]
design:
  sample: "Group 65 (medical/hospital supplies) BEC outlays, Post-policy run-rate annualized from 18-month Post window m=698-715"
  specification: "Per-auction welfare cost × annual reference outlay × adherence-rate fraction; pharma + non-pharma additive"
  notes: "Per-auction structural cost held fixed at λ=0.30 point estimates from tab_v3_welfare; adherence is the only sensitivity dimension"
---

# AN-025: Annualized welfare cost — adherence-rate sensitivity

## Question

The structural welfare loss in [AN-011](an-011-welfare-arithmetic.md)
and [AN-024](an-024-lambda-welfare-ci.md) is *per affected auction*.
To translate into an annualized public-finance magnitude on Group 65
alone, we need to multiply by (i) the annual Group-65 outlay and
(ii) the *adherence rate* — the share of the Group-65 outlay that
actually procured under the SME-only rule. Adherence is below 100%
in practice because some Group-65 items exceed the R$80K
SME-eligibility ceiling, some Group-65 procurement remains under
emergency / specialized exemptions, and buyer compliance with the
SME-only mandate is imperfect.

## Design

- **Sample**: Group 65 BEC outlays, Post-policy run-rate annualized
  from the 18-month Post window $m \in [698, 715]$.
- **Variation**: adherence rate $\in \{30, 43, 55, 70, 85, 100\}$%.
- **Specification**: annualized welfare cost =
  per-auction structural welfare cost ($\lambda = 0.30$ from
  [AN-011](an-011-welfare-arithmetic.md)) × annual Group-65 outlay ×
  adherence rate. Pharma and non-pharma additive.
- **Annual reference outlays**: pharma R$363M/yr; non-pharma R$345M/yr
  (own tabulation; 18-month Post window annualized to 12 months).
- **Per-auction welfare cost** (λ=0.30, fixed across adherence grid):
  0.308 × $p^{\mathrm{ref}}$ in pharma; 0.204 × $p^{\mathrm{ref}}$ in
  non-pharma.
- **Empirical baseline**: 43% — the state-level Post-period Group-65
  SME-only adherence rate (paper §2 institutional).

## Results

| Adherence rate | 30% | **43%** | 55% | 70% | 85% | 100% |
|---|---:|---:|---:|---:|---:|---:|
| Pharma (R$ M/yr)     | 22 | **31** | 40 | 51 | 62 | 73 |
| Non-pharma (R$ M/yr) | 16 | **24** | 30 | 38 | 47 | 55 |
| **Total Group 65** (R$ M/yr) | **38** | **55** | **70** | **89** | **109** | **128** |
| US$ M/yr (R$3.50 end-2018) | 11 | **16** | 20 | 25 | 31 | 37 |

The bold column (43%) is the empirical baseline cited in paper §2.
The R$55M/yr (US$16M/yr) baseline → R$128M/yr (US$37M/yr) under
hypothetical 100% SME-eligible adherence range matches the headline
of [AN-011](an-011-welfare-arithmetic.md) and the **Welfare Cost
(v6)** panel in [docs/extensions.md](../extensions.md).

Output: `output/tables/tab_welfare_adherence_sensitivity.tex` and
`tab_welfare_adherence_sensitivity.csv`.

## Interpretation

**The R$55–128M range is an adherence-grid sensitivity, not a
structural uncertainty band.** The per-auction welfare cost is *fixed*
(0.204 NP / 0.308 PH of reference price); the range spans the
plausible adherence rates. The realistic central case at the
empirically observed adherence of 43% is **R$55M/yr (US$16M/yr)**;
the upper bound at counterfactual full SME-eligible adherence is
**R$128M/yr (US$37M/yr)**.

**The structural CI is a separate uncertainty band.** The bootstrap
CI in [AN-024](an-024-lambda-welfare-ci.md) is on the *per-auction*
welfare cost; multiplying it through the adherence grid produces a
joint structural × adherence range. At the baseline 43% adherence,
the joint range is roughly R$40–70M/yr (combining the welfare CI
lower endpoint with the central adherence).

**Context.** Group 65 is *one* product group of São Paulo's ~R$13B/yr
procurement platform. The annual cost of R$55M sits at ~0.4% of total
state procurement volume. The same per-auction logic applied to the
broader SME-restricted procurement (which spans many other product
groups already SME-only pre-2018, and other state jurisdictions
nationally) would yield substantially larger aggregate fiscal costs.
That broader extrapolation is out of scope for this paper.

**Adherence as a policy lever.** The grid implies that *partial
enforcement* (adherence well below 100%) is *welfare-favorable*
relative to full enforcement, under the assumption that the
non-adhering Group-65 procurements default to open competition. This
is consistent with the paper's recasting of the policy frontier:
not "support SMEs vs not", but "exclusionary redistribution vs
support-with-preserved-pool". A 100% adherence regime maximizes the
welfare loss; the empirical 43% leaves R$73M/yr of welfare *on the
table* relative to full SME-only.

Confidence: **yellow.** The arithmetic is deterministic given the
per-auction structural cost and the reference outlays. The yellow
caveat is inherited from
[H:static-welfare-loss-large](../hypotheses/static-welfare-loss-large.md)
on the per-auction cost. The reference-outlay tabulation is a simple
sum over the 18-month Post window and is robust to specification
choice within the window.

## Follow-ups

- **Joint structural × adherence CI**: combine the welfare CI from
  [AN-024](an-024-lambda-welfare-ci.md) with the adherence grid to
  produce a joint range at the baseline 43%.
- **Per-PBU adherence heterogeneity**: not all PBUs adhere at the
  same rate. A PBU-level decomposition would identify which buyer
  types contribute most to the realized fiscal cost.
- **Other product groups**: replicate this exercise on product groups
  that were SME-only throughout the sample (the always-treated
  controls). Their welfare cost is the *baseline* of the
  comparison — currently unmodeled but bears on the broader policy
  reading.
- **National-aggregate extrapolation**: scale to ComprasNet or other
  state platforms; bears on whether the headline finding generalizes
  beyond São Paulo. Cross-jurisdictional replication path.
