---
paper: frequent-losers
---

# Main Results

The empirical case rests on three pieces of evidence. The
discrimination of adjudicated CADE cobidders is the primary
result. The architectural test against the bid-distribution
literature is the contribution most readers will read the paper
for. The pricing imprint enters as descriptive corroboration,
not as a treatment-effect estimate.

---

## 1. Discrimination Against CADE Cobidders

The frequent-loser flag discriminates 193 always-loser firms
that participated alongside CADE direct defendants from the
broader always-loser pool. Two readings of the AUC bracket the
result.

| Reading | Sample | AUC |
|:---|:---|:---:|
| Conservative (contemporaneous) | 4 cases adjudicated pre-2020, 210 cobidders, 108 frequent losers | **0.748** [0.713, 0.783] |
| Prospective in-sample | Full 12 cases, 193 cobidders | **0.924** [0.921, 0.926] |
| **Prospective under temporal holdout** | Train 2009&ndash;2016 / test 2017&ndash;2019 | **0.864** [0.859, 0.870] |

!!! success "AUC 0.864 under temporal holdout"
    Constructing the score on 2009&ndash;2016 participation only
    and evaluating on 2017&ndash;2019 cobidder labels yields
    AUC 0.864. Eight of the twelve CADE cases were adjudicated
    after the sample window closes, so the discrimination is
    computed on participation patterns observable years before
    enforcement confirmed them. We adopt this number as the
    deployable projection an oversight body would compute on
    award-record data alone.

### Within-stratum theory bridge

Cobidders behave like the modelled cover-bidder type. Within the
always-loser stratum, cobidders deploy at higher intensity than
FL non-cobidders (Cohen's *d* = +1.00 on unique winners faced),
are deployed proximally to direct CADE defendants
(*d* = +0.46 on direct-CADE share), and concentrate participation
in narrower markets (*d* = +0.39 on portfolio item-group HHI).

At the bid level, they bid plausibly close to winners
(*d* = &minus;0.28 on per-firm median gap to winner,
*p* &lt; 10&minus;6) with elevated within-firm cross-bid
dispersion (*d* = +0.15, *p* = 0.05). A multivariate logit on
cobidder status within the FL stratum, holding
`log(1+tenders_count)` constant, returns a median-gap
coefficient of &minus;0.71 (*p* &lt; 10&minus;4) and a
within-firm dispersion coefficient of +0.44 (*p* &lt; 10&minus;3).
Both bid-level signs survive controlling for participation
intensity. The pattern matches *credible cover bidding*
(Marshall&ndash;Marx, Asker)---bids low enough to be plausible,
dispersed enough to track rotation across cover roles---rather
than the textbook deliberately-uncompetitive cover bid the early
literature described.

### Direct-defendant AUC as design signature

Against the 47 direct CADE defendants in the broader BEC firm
universe, AUC is **0.491**---random discrimination by design.
The screen recovers loser-side participation footprints; direct
defendants are by construction the winner side of the same
arrangements and lie outside the target population.

---

## 2. The Architectural Test

The screening statistic and the bid-distribution moment battery
are informational complements, not substitutes. Three pieces fit
together.

### Same target, different envelopes

On the same evaluation pool of 11,676 always-loser firms with
full Imhof features (193 cobidders, base rate 0.0165):

| Rule | Data envelope | AUC |
|:---|:---|:---:|
| Award-layer screen alone (FL log_tc) | Award records only | **0.881** |
| Bid-layer Imhof full pipeline alone | Per-bid prices required | 0.846 |
| Joint single-model scoring | Both | **0.942** |

The award-layer rule matches the bid-layer pipeline AUC on a
substantially thinner data envelope. Combining the two adds
**+0.096 AUC** (DeLong *p* = 1.2 × 10&minus;26)---the two carry
non-redundant information about the same target.

### Sequential gatekeeper: the operational reading

The screen functions as a Stage-1 gatekeeper, narrowing the pool
of firms whose bid microdata the forensic stage needs to
interrogate. At top-1,000 flags:

| Rule | Cobidders captured | Bid-microdata firms required |
|:---|:---:|:---:|
| Joint single-model scoring | 142 / 193 (recall 0.736) | **11,676** (full pool) |
| Sequential FL → Imhof, K₁ = 2,000 | **131 / 193** (recall 0.679) | **2,000** |

!!! success "83% bid-microdata footprint reduction at 8% recall cost"
    The sequential rule catches 131 of 193 adjudicated cobidders
    while interrogating bid microdata for 2,000 firms instead of
    11,676 the joint scoring would require. Recall costs ~8% vs
    joint scoring; bid-microdata footprint drops by 83%.

### Temporal holdout: the gatekeeper's relative robustness

Restricting every per-firm feature to participation observed in
2009&ndash;2016 (cobidder labels stay anchored on full-window
adjudications), precision compresses asymmetrically across the
four rules. The award-layer screen alone loses 47% at top-500;
joint scoring loses 24%; **the sequential gatekeeper loses
9%**. In absolute true-positive count, the sequential rule
matches or exceeds joint scoring out-of-time: at top-500 the
sequential rule recovers 87 cobidders versus 85 for joint
scoring; at top-1,000 it recovers 114 versus 111. The 83%
data-envelope reduction does not trade off against out-of-time
recall.

---

## 3. Pricing Imprint as Descriptive Corroboration

If the screen flags cartel-adjacent environments, do those
environments also carry a price imprint? The answer is yes, but
descriptively so---not as a treatment-effect estimate.

### Broad-sample conditional association

| Specification | Coefficient | Effect (%) | *N* |
|:---|:---:|:---:|:---:|
| (1) Item + year FE | +0.068*** | +6.8% | 1,654,401 |
| (2) Item + year + PBU FE | +0.064*** | **+6.4%** | 1,654,401 |
| (3) Pregão only (all FE) | +0.089*** | +9.3% | 543,752 |
| (4) Convite only (all FE) | +0.037 | +3.8% | 1,105,852 |

Across four estimators (cross-fit, IPW, OLS within-PBU, CEM),
the conditional range is **+3.6% to +7.7%**.

### Segment-level decomposition: the broad-sample positive is a Q4 phenomenon

Re-estimating the headline regression within tender-value
quintiles reveals a sharper structure. In Q1&ndash;Q3 the
broad-sample coefficient is already *negative* (&minus;0.065,
&minus;0.057, &minus;0.040, *p* &lt; 10&minus;15 in each); in
Q4 it is **+0.046** (*p* = 0.012). Both the overlap restriction
and the ATT reweighting leave each within-quintile estimate
essentially unchanged: the Q4 positive survives all three
specifications, and the Q1&ndash;Q3 negatives survive at
quantitatively similar magnitudes.

The aggregate +0.064 broad-sample coefficient is the
population-weighted average of three negative within-quintile
coefficients and one positive Q4 coefficient, with Q4's 40,878
treated items dominating the volume-weighted mean.

### Trim sensitivity: not a few-cell artefact

Trimming the most heavily ATT-weighted cells *strengthens* the
negative ATT estimate---from &minus;0.097 at no trim to
&minus;0.118 at the top-decile trim and &minus;0.133 at the
median. The ATT-weighted negative is a structural property of
the bulk of the overlap sample, not extreme leverage on cells
with thin counterfactuals.

### Identification scope

Identification is descriptive throughout. Two design-based
strategies that would extract a causal estimate return null at
the available bandwidths: a sharp regression discontinuity at
the convite/pregão statutory caps (gated by the absence of
bunching in the McCrary density test), and a
difference-in-differences using the 2018 cap raise (gated by
parallel-trends failure). Sensitivity bounds: Cinelli's
*RV*<sub>q=1</sub> = 0.207; Oster's δ&#x0302; = 261.64.

---

## 4. Heterogeneity Across Detection Regimes

Splitting the sample into quartiles of procuring-unit size
produces a sharp extreme-quartile contrast: **+21.4% at the
smallest-buyer quartile (Q1)**, **+1.7% at the largest (Q4)**,
a 12.6× extreme-quartile gradient preserved across alternative
size measures. The framework predicts the contrast direction
through the detection-cost comparative static
&part;m\*/&part;&theta;<sub>k</sub> &lt; 0: cover-bidder
deployment is more aggressive where the principal cost of
detection is lower. Buyer size proxies for several correlated
institutional features (procurement-officer tenure,
internal-audit infrastructure, item composition, discretionary
procedure use) that the design cannot separate.

---

## What the Joint Evidence Supports

Three findings together identify the sequencing structure the
paper proposes. The discrimination at AUC 0.864 (temporal
holdout) and 0.748 (conservative pre-2020) establishes that the
screen flags cartel-adjacent environments. The architectural
test shows the screen and the bid-distribution moment battery
discriminate the same labels at comparable AUC on different
observability layers, with the sequential rule reducing the
bid-microdata footprint by 83% at 8% recall cost. And the
pricing imprint enters as descriptive corroboration that the
flagged environments also carry a price signal, with the sign
reversal localised to Q1&ndash;Q3 and a positive Q4 coefficient
robust to design choice.

What the joint evidence does *not* support: firm-level cartel
guilt. The construct flags cover bidders, not cartel
ringleaders, and the 47 direct-defendant AUC of 0.491 is the
hard upper bound on broader detection claims outside the
always-loser stratum.
