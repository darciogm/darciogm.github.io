---
paper: sme-public
---

# Research Agenda

This page lists the paper currently in submission preparation and a
ranked set of follow-up paper ideas that can be built using the same
underlying data (the BEC-SP centralized procurement panel 2016–2019,
with the longer registry back to 2005; Pregão event-log drop-out bids;
the March 2018 PGE-SP reinterpretation and the 2018 Decreto 9.412 cap
shift; CMED pharmaceutical price ceilings; reference prices; plus
linkages to RAIS firm/worker records and IBGE municipal panels). Each
entry includes three target-journal options with my probability
estimates of revise-and-resubmit (R&R) at each.

Probabilities are honest reviewer-style assessments; "Confirmed" is
not an option for any single-jurisdiction paper from this data lake
without cross-data replication. All probabilities assume a clean
manuscript at submission.

!!! abstract "Reading the R&R probability columns"
    R&R = invited to revise and resubmit (not Accept). Acceptance
    probability is roughly half of R&R for the listed top journals.
    "Strong fit" = my reviewer-side reading of the journal's recent
    publication mix; "Marginal fit" = stretch.

---

## 1. Current paper (in submission preparation)

### The Price of Exclusion: SME Set-Asides in Public Procurement

**Author:** Darcio Genicolo-Martins (Insper)

**Version:** v8 (May 2026, JPubE submission)
[manuscript PDF](assets/sme_public_procurement.pdf) ·
[online appendix](assets/sme_public_online_appendix.pdf)

**Distinctive contributions:**

1. *A price-formation decomposition of the set-aside* — the price
   effect of an SME set-aside is split into a **lost-discipline
   component** (non-SMEs removed from the price-forming pool, SME pool
   held fixed: $S_2 - S_1$) and a **protected-pool offset** (the
   post-policy SME pool replacing the pre-policy one: $S_3 - S_2$). The
   set-aside price effect becomes a design question — how much is
   mechanical exclusion of rival bidders, and how much is the protected
   pool's response — rather than a single reduced-form number.
2. *Implementation via a reverse-auction setting* — in São Paulo's
   Pregão (descending-clock electronic reverse auction), losing
   bidders' drop-out prices reveal type-specific willingness to supply
   under the maintained independent-private-values clock interpretation
   (Vickrey 1961; Milgrom–Weber 1982; Haile–Tamer 2003). The recovered
   primitives, an auction-level heterogeneity correction in the spirit
   of Krasnokutskaya (2011), and observed equilibrium entry simulate
   counterfactual price-formation objects under three pools.
3. *A recast of policy design* — the relevant policy frontier is not
   SME support versus no support, but **exclusionary redistribution
   versus support that preserves the price-forming bidder pool**. A
   10% SME price preference enters as a static design benchmark: it
   keeps the non-SMEs that discipline the price-forming order statistic
   but delivers less redistribution than full exclusion.

In standardized non-pharmaceutical procurement, the protected pool
responds (SME participation roughly doubles) but does not replace the
excluded discipline: the full set-aside generates a **static welfare
loss of 28.9% of the open-regime price** at λ=0.30, with the exclusion
component accounting for **~72% of the absolute price decomposition**.
The implied SME welfare weight required for a planner to prefer full
exclusion to the 10% preference is **2.42**. The exclusion-dominant
ranking survives Turnbull winner-censoring (74%), strict-invariance of
the post-policy SME distribution (85%), and replacement of the Poisson
bidder-count process with the empirical class-period-type count
distribution (69%). Pharmaceutical procurement is reported as a
**boundary case**, not a second headline.

**Target journals:**

| Tier | Journal | R&R prob. | Fit rationale |
|:-:|---|:-:|---|
| 1 | **JPubE** (J. of Public Economics) | **30–40%** | The natural home: SME-preference welfare analysis with an MCPF + Saez–Stantcheva frame is JPubE-core, and the policy-frontier recast is the kind of design contribution JPubE rewards. The binding constraints are single-jurisdiction external validity and the maintained IPV-clock assumption, which JPubE referees with a structural-IO bent will press hardest. |
| 2 | **AEJ: Policy** | **35–45%** | Strong fit for the exclusionary-redistribution-vs-preference frontier and the implied-welfare-weight statistic; AEJ:Policy values clean policy-design counterfactuals tied to a real natural experiment (the March 2018 PGE-SP reversal). |
| 3 | **IJIO** (Int'l J. of Industrial Organization) | **45–55%** | More reachable empirical-IO target; the structural recovery from drop-out bids and the entry-cost asymmetry fit the procurement-auction literature there. The welfare framing is less central than at JPubE/AEJ:Policy, but the auction mechanics travel well. |

**Current submission gating constraints:**

- *Single-jurisdiction limitation* — every estimate lives in São Paulo
  BEC. A second procurement jurisdiction (federal ComprasNet, or
  another state platform) replicating the open-vs-set-aside price
  effect would push R&R toward the upper end at every tier.
- *Maintained IPV-clock assumption* — the structural decomposition
  reads Pregão drop-outs as willingness-to-supply observations
  ([H:ipv-clock-admissible](hypotheses/ipv-clock-admissible.md)). It is
  load-bearing and not testable within the data; the cross-modality GPV
  recovery from Convite first-price bids
  ([AN-019](analyses/an-019-cross-modality-gpv.md)) gives partial
  discipline, not proof.
- *Static-only welfare* — the paper measures the static price/welfare
  cost and does not credit any dynamic SME capacity-building benefit.
  Idea 2.1 below is the direct fix path.

---

## 2. Five follow-up paper ideas using the same data

The five ideas below are ordered by **overlap with the current paper**,
from highest to none. Two extend the set-aside / price-formation
framework directly; the rest take the BEC + RAIS + CMED + IBGE data
lake into different research programs.

### Idea 2.1 — Do Set-Asides Build SME Capacity? The Dynamic Case for Exclusion

**Overlap with current paper:** **High** — directly answers the main
limitation of the current paper (static-only welfare), using the same
March 2018 shock and the same treated group.

**Central question:** The current paper measures only the static cost
of the set-aside. The standard defense of set-asides is dynamic: the
protected pool *grows* — SMEs that win build capacity, hire, and
eventually compete unassisted. Does the data show this? Do SMEs that
win under the set-aside expand employment, payroll, and survival
relative to comparable SMEs that do not?

**Empirical strategy:** Link BEC SME winners to RAIS firm/worker
trajectories (the linkage already built for
[AN-028](analyses/an-028-rais-validation.md)). Event-study and
Callaway–Sant'Anna designs around first set-aside win and around the
March 2018 expansion of protected demand into Group 65. Outcomes:
employment, wage bill, formal-sector survival, and subsequent unaided
(open-auction) win rates. The dynamic benefit is then compared against
the static welfare cost the current paper already quantifies.

**Data reuse:** BEC panel + RAIS linkage (already loaded), March 2018
shock. ~8–10 weeks; mostly RAIS panel assembly and event-study
pipeline.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Public Economics** | 30–40% | Pairs naturally with the current paper as the dynamic counterpart; JPubE would value a clean static-cost-vs-dynamic-benefit ledger on one policy. Identification of the dynamic margin is the cap. |
| 2 | **AEJ: Applied Economics** | 35–45% | RAIS-based firm-growth event study is squarely AEJ:A; the procurement-as-industrial-policy framing travels. |
| 3 | **J. of Labor Economics** | 30–40% | If the worker-flow / hiring margin is the lead (set-aside wins → formal hiring), JOLE is a strong secondary fit. |

**Why this idea exists:** It converts the current paper's headline
limitation into a paper. If the dynamic benefit is small, it
strengthens the current paper's policy reading; if large, it is the
counterweight the static cost cannot see.

---

### Idea 2.2 — Optimal SME Preference Design: Solving for the Margin, Sector by Sector

**Overlap with current paper:** **Medium** — same structural machinery
(recovered primitives + BNE simulation), but pivots from evaluating one
policy to *designing* the optimal one.

**Central question:** The current paper benchmarks a *single* 10%
preference. What is the welfare-maximizing preference margin, and how
does it vary across product groups with different SME/non-SME cost gaps
and entry-cost asymmetries? Is there a sector where full exclusion is
actually optimal under a defensible welfare weight?

**Empirical strategy:** Generalize the preference benchmark from
[AN-012](analyses/an-012-preference-benchmark.md) into a margin-choice
problem. For each product cell, use the recovered type-specific cost
distributions and calibrated entry costs
([AN-030](analyses/an-030-entry-rates-cost.md)) to trace welfare as a
function of the preference margin under a λ-grid and a grid of SME
welfare weights. Map the policy frontier sector by sector.

**Data reuse:** Recovered primitives + entry costs already produced for
the current paper; new code is the optimization sweep, not new data.
~6–8 weeks.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **AEJ: Policy** | 35–45% | Optimal-design papers with an explicit planner objective and a real institutional preference instrument are a strong AEJ:Policy fit. |
| 2 | **J. of Public Economics** | 30–40% | JPubE likes mechanism-design-meets-welfare, but would want the structural assumptions stress-tested harder than a single-paper sweep allows. |
| 3 | **IJIO** | 45–55% | The auction-design mechanics fit IJIO; weaker on the welfare/planner side. |

**Differentiator from current paper:** the current paper *evaluates*
two regimes (set-aside, 10% preference); this paper *solves* for the
optimal preference and characterizes when exclusion can be rationalized.

---

### Idea 2.3 — Procurement and Local Economic Development: Does Buying Local Pay?

**Overlap with current paper:** **Low** — same data substrate, but a
development / fiscal-federalism question and outcomes (municipal
employment), not auction welfare.

**Central question:** The current paper finds open auctions pull in
geographically distant non-SME suppliers on high-value items
([AN-003](analyses/an-003-didir-distance.md)). Flip the welfare
question: does keeping procurement *local* (which SME-only tendering
tends to do) support local employment and formal-sector activity, and
at what price premium? Is there a local-multiplier benefit that offsets
part of the static price cost?

**Empirical strategy:** Municipality × year panel. Link BEC supplier
locations (PBU and firm CEP) to RAIS municipal employment and IBGE
fiscal/demographic data. Use the March 2018 shock and the 2018 Decreto
cap shift as variation in how "local" procurement becomes. Outcomes:
local formal employment, supplier diversity (HHI of who wins),
local-supplier share, and the implied price premium for local sourcing.

**Data reuse:** BEC supplier geocoding + RAIS municipal + IBGE
(IBGE/RAIS already in the monorepo). ~10–12 weeks; new spatial /
municipal-panel pipeline.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Economic Geography** | 50–60% | Spatial structure of public demand and local-supplier development is a perfect fit; smaller but high-impact within geography. |
| 2 | **Regional Science and Urban Economics** | 45–55% | Strong methodological fit for the local-multiplier-of-procurement question. |
| 3 | **World Development** | 40–50% | Brazilian municipal context with a clear policy lever; less competitive, values practical-policy work. |

**Differentiator:** the unit is the municipality, not the auction; the
contribution is a local-development ledger, and the auction welfare
machinery of the current paper is absent.

---

### Idea 2.4 — Reference Prices and the Anchoring of Bids in Reverse Auctions

**Overlap with current paper:** **None** — same data, a market-design
question about information rather than set-asides.

**Central question:** Every BEC tender carries a reference price
(*preço de referência*) that bidders observe. Does that anchor shape
bidding — compressing dispersion toward the reference, inviting a
winner's-curse-style overshoot, or capping competition because no one
bids far below it? Would changing reference-price disclosure raise
competition or lower prices?

**Empirical strategy:** Bid-level analysis using the normalized bid
$c_\varepsilon = b/p^{\mathrm{ref}}$ already constructed for the
structural sample. Exploit cross-cell and over-time variation in how
reference prices are set (historical vs market-survey vs CMED-anchored)
and any disclosure-rule changes. Test for bunching at the reference,
dispersion compression, and the relationship between reference-price
staleness and realized competition.

**Data reuse:** BEC bid-level + reference prices + CMED ceilings
(all in hand). ~8–10 weeks.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Public Economics** | 30–40% | Information design in procurement is JPubE-relevant; needs a sharp source of variation in reference-price rules to clear the identification bar. |
| 2 | **AEJ: Applied Economics** | 35–45% | Bunching / anchoring evidence on real auction data is a good AEJ:A fit. |
| 3 | **Int'l J. of Industrial Organization** | 45–55% | The auction-information mechanics fit IJIO well; more reachable. |

**Differentiator:** no set-aside, no SME framing; the object is the
reference price as an information instrument in auction design.

---

### Idea 2.5 — Do Price Ceilings Bind? CMED Caps and Pharmaceutical Procurement

**Overlap with current paper:** **None** — promotes the current paper's
*boundary case* (pharmaceuticals) to the headline, with a different
(health-economics / regulation) question.

**Central question:** Pharmaceuticals in BEC are subject to CMED
federal price ceilings. Do those ceilings bind in procurement, and what
is the pass-through? Does the ceiling act as a focal point that *raises*
realized prices (a cap-as-floor effect), or does competition pull prices
well below it? The current paper treats pharma as model-sensitive and
sets it aside; this paper makes the CMED ceiling the object of study.

**Empirical strategy:** Restrict to CADMAT pharmaceutical classes
(6531, 6532, 6536, 6581) where CMED ceilings apply. Compare realized
winning prices to the binding CMED ceiling; exploit CMED ceiling
revisions over time as variation. Test for bunching at the ceiling,
cap-as-floor focal-point behavior, and heterogeneity by molecule
competition (single-source vs multi-source generics).

**Data reuse:** BEC pharma sub-sample + CMED ceiling series + the
within-Group-65 CMED split already built for
[AN-027](analyses/an-027-within-g65-cmed.md). ~8–12 weeks; main lift is
assembling the CMED ceiling panel.

**Target journals:**

| Tier | Journal | R&R prob. | Rationale |
|:-:|---|:-:|---|
| 1 | **J. of Health Economics** | 35–45% | Pharmaceutical price regulation and procurement is a JHE-core topic; the cap-as-floor question is novel for the Brazilian setting. |
| 2 | **J. of Public Economics** | 25–35% | Possible if the welfare/pass-through framing is sharp; JPubE prefers OECD pharma-pricing contexts and tighter identification. |
| 3 | **AEJ: Policy** | 30–40% | Price-ceiling design with a clear regulatory lever fits AEJ:Policy; needs a clean source of ceiling variation. |

**Differentiator:** a regulation paper about price ceilings, not a
set-aside paper; the auction-welfare decomposition is absent and the
pharmaceutical sector is the headline rather than the caveat.

---

## Summary: portfolio view

| Idea | Overlap | Top journal | Top R&R |
|:-:|---|---|:-:|
| Current paper | — | JPubE | 30–40% |
| 2.1 Dynamic capacity-building | High | AEJ: Applied | 35–45% |
| 2.2 Optimal preference design | Medium | AEJ: Policy | 35–45% |
| 2.3 Local economic development | Low | J. Economic Geography | 50–60% |
| 2.4 Reference-price anchoring | None | IJIO | 45–55% |
| 2.5 CMED price ceilings | None | J. Health Economics | 35–45% |

The portfolio mixes:

- **Highest R&R targets**: J. of Economic Geography (Idea 2.3, smaller
  but high-fit), then IJIO (Idea 2.4), then AEJ:Policy / AEJ:Applied
  (Ideas 2.1, 2.2).
- **Most coherent pairing**: Idea 2.1 (dynamic capacity-building) is
  the direct counterpart to the current paper's static-only welfare and
  is the cleanest sequel.
- **Cleanest reach**: J. of Economic Geography (Idea 2.3) and the IJIO
  targets (2.2, 2.4) at ~50% with good positioning.
- **Disjoint papers** (2.4 and 2.5) avoid cannibalizing the current
  paper's contribution, at the cost of more data assembly.

**Sequencing recommendation:** complete the current paper's R&R cycle
first; then pursue Idea 2.1 (Dynamic capacity-building) as the natural
sequel — it answers the most predictable referee question about the
current paper ("but don't set-asides build SME capacity over time?")
and reuses the RAIS linkage already in hand. Idea 2.3 (Local
development) is the clean break that uses similar data without
competing intellectually with the current paper.

---

*Last updated: 2026-05-23*
