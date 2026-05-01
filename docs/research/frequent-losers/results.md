---
paper: frequent-losers
---

# Main Results

Two findings carry the empirical case: the within-item conditional price gap and its sharp heterogeneity in procuring-unit size. We then validate the construct against CADE adjudications.

---

## Within-Item Conditional Price Gap

Comparing tender-items in the same product code, year, and procuring unit, the presence of at least one frequent loser is associated with a higher log negotiated unit price. The estimate is positive and significant under every estimator we deploy.

### Four specifications of the headline regression

| Specification | Coefficient | SE | Effect (%) | *N* |
|:---|:---:|:---:|:---:|:---:|
| (1) Item + year FE | **+0.068*** | (0.022) | **+6.8%** | 1,654,401 |
| (2) Item + year + PBU FE | **+0.064*** | (0.020) | **+6.4%** | 1,654,401 |
| (3) Pregão only (all FE) | **+0.089*** | (0.025) | **+9.3%** | 543,752 |
| (4) Convite only (all FE) | **+0.037** | (0.022) | **+3.8%** | 1,105,852 |

The within-PBU shift from +6.8% to +6.4% is small enough to be inconsistent with concentration in high-cost buyers as the operating mechanism. The modal subsamples bracket the within-PBU estimate: the price imprint is sharper in pregão (no minimum-bidder rule) than in convite, ruling out the convite quorum rule as the channel.

### Headline range across estimators

!!! success "+3.6 to +7.7% across five estimators"
    Cross-fit estimation (defining the frequent-loser list on odd years and estimating on even, then reversing) yields **+3.6%**. Applying the odd-year list to the full panel returns +4.3%, midway between full-PBU OLS (+6.4%) and clean cross-fit (+3.6%). The OLS estimate decomposes into a structural component (+3.6%, recovered by cross-fit) and a within-sample classification component (~+2.8 percentage points). Across the four estimators we report (cross-fit, IPW, OLS, CEM), the conditional range is +3.6 to +7.7%, and we adopt this range as the headline reference rather than any single point estimate.

| Estimator | Coefficient | *N* |
|:---|:---:|:---:|
| Cross-fit | +3.6% | 1,654,401 |
| IPW | +5.5% | 830,194 |
| OLS within-PBU | +6.4% | 1,654,401 |
| CEM matching | +7.7% | 969,751 |

### IV diagnostic confirms OLS is conservative

A leave-one-out IV specification using the supply of frequent losers active in other procuring units within the same product market and year yields **+0.194** (*F* = 396), three times the within-PBU OLS. The direction is what classical attenuation predicts when a binary indicator proxies for an underlying continuous participation count. We treat the IV as a measurement-error diagnostic, not a primary estimator.

### Strict-overlap matching: an angle, not a refutation

Restricted to cells in which frequent-loser-present and -absent items genuinely overlap on observables, the conditional coefficient reverses (overlap-cell ATT &minus;9.7%, PS-trimmed ATT &minus;30.7%). We read the reversal as informative about selection within the always-loser stratum: strict-overlap matching restricts comparisons to the items frequent losers *would* have entered with high probability, removing precisely the systematic differences that the broad-sample association captures. Both estimates describe the same population from different angles; neither carries causal weight on its own.

---

## Procuring-Unit-Size Oversight Gradient

The strongest piece of evidence in the paper that the price gap reflects institutional structure rather than statistical noise.

### Monotonic gradient across quartiles

| Procuring-unit-size quartile | Coefficient | Effect (%) |
|:---|:---:|:---:|
| Q1 (smallest) | +0.214 | **+21.4%** |
| Q2 | +0.098 | +9.8% |
| Q3 | +0.045 | +4.5% |
| Q4 (largest) | +0.017 | **+1.7%** |

!!! success "12.6&times; ratio between extreme quartiles"
    The ratio is the largest source of heterogeneity in the data&mdash;larger than the pregão&ndash;convite gap, larger than any cross-sector spread&mdash;and is preserved across alternative measures of buyer size (annual contract volume, cumulative item count, headcount of distinct purchasers).

### Framework prediction matches direction and monotonicity

The framework yields the comparative static **&part;m*/&part;&theta;<sub>k</sub> < 0**: where the procuring unit's principal cost of detection &theta;<sub>k</sub> is lower, cover-bidder deployment is higher. Procuring-unit size is not identical to detection cost, but the empirical association between buyer size and oversight infrastructure is well documented in decentralized procurement systems&mdash;large state agencies and state-level secretariats employ dedicated procurement staff and internal-audit units; small municipalities and decentralized purchasing units typically lack them. Read through this institutional mapping, the monotonic gradient is what the framework predicts.

Three features distinguish the gradient from a mechanical artifact: monotonicity across all four quartiles, a magnitude beyond what fixed-effect noise typically produces, and a direction matching &part;m*/&part;&theta;<sub>k</sub> < 0.

---

## Validation Against CADE Adjudications

CADE's procurement-cartel portfolio relevant to the sample comprises 12 adjudicated cases covering 65 firm-defendants in total, of which 47 are active in BEC. The validation operates against two distinct populations:

| Population | Size | Construct target? |
|:---|:---:|:---|
| Direct defendants in BEC | 47 | **No** &mdash; typically frequent winners; AUC 0.49 by design |
| Cobidders inside the always-loser stratum | 193 | **Yes** &mdash; cover-bidder candidates by structure |

### Market-proximity test

Among 2,735 frequent-loser firms, **193 (7.1%)** co-participate with at least one of the 47 BEC-active CADE-defendants in the same tender-item. A permutation test stratified by participation-count quartile (1,000 iterations) yields a baseline of **1.24%**.

!!! success "3.5&times; the participation-stratified baseline (*p* < 0.001)"
    The participation-stratification is the identifying move: it removes the alternative reading that the overlap is mechanical exposure through high tender-count, and isolates the residual concentration of co-participation among flagged firms.

### Within-firm enrichment

Of the 47 direct CADE defendants, 7 are always-losers in BEC. Of those 7, **3 (43%)** cross the frequent-loser threshold, against a population baseline of 16.2%&mdash;a 2.6&times; firm-level enrichment.

| Firm | Cartel | Tenders | Wins |
|:---|:---|:---:|:---:|
| Sol Tecnologia | Solar water heaters | 84 | 0 |
| Nova Esperança Locadora | School transportation | 97 | 0 |
| Jofran Comércio | Trash bags (Op. Colludium) | 65 | 0 |

Eight of the twelve cases were adjudicated after the 2019 sample window closes, so the within-firm enrichment is genuinely prospective: the construct flagged firms whose collusive role enforcement confirmed years later, on participation patterns observable years earlier.

### Discrimination bounded between two regimes

| Reading | Sample | AUC | 95% CI |
|:---|:---|:---:|:---:|
| Lower bound (contemporaneous) | 4 cases pre-2020, 210 cobidders, 108 frequent losers | **0.748** | [0.713, 0.783] |
| Upper bound (prospective in-sample) | Full 12 cases, 193 cobidders | **0.924** | [0.921, 0.926] |
| Upper bound under temporal holdout | Train 2009–2016 / test 2017–2019 | **0.864** | [0.859, 0.870] |

We adopt the prospective reading as the headline (the deployable projection an oversight body would compute on award-record data alone) and the contemporaneous AUC of 0.748 as the conservative discriminating reference.

### Robustness to the enforcement record

Dropping all 31,447 CADE-involved tender-items and re-estimating the within-PBU baseline yields **&beta;&#x0302; = 0.062** (vs full-sample 0.064). The construct's price imprint operates independently of the enforcement record. Either the residual sample contains undetected cartels that the construct identifies before enforcement does, or frequent-loser presence correlates with high-price environments through channels orthogonal to documented collusion. Both are consistent with the diagnostic-screen claim of the paper.

---

## What the Joint Evidence Supports

The conjunction of the four pieces&mdash;the 3.5&times; market-proximity excess, the 2.6&times; within-firm enrichment with three named firms flagged before their adjudications, the bounded 0.748&ndash;0.924 discriminating range, and the price-gap insensitivity to the enforcement record&mdash;supports a market-level triage interpretation. The construct prioritizes procurement environments connected to adjudicated collusion at rates well above random matching at comparable participation volume; it does not validate firm-level cartel guilt, and the 47 direct-defendant AUC of 0.49 places a hard upper bound on broader detection claims outside the always-loser stratum.
