# Revision Memo — Paper 3 (v16, mr-frequent co-author pass)

**Paper:** *Loser-Side Participation as a Procurement Risk Signal: Award-Record Screening of Cartel-Adjacent Environments* (formerly *Frequent Losers as a Cartel Screen: Detecting Cover Bidding Without Bid Microdata*)

**Authors:** Genicolo-Martins & Furquim de Azevedo (Insper)

**Round:** Major revision (JLEO referee report integration)

**Date:** May 2026

---

## 1. Major changes implemented

### 1.1 Reframing throughout

- **Title:** "Frequent Losers as a Cartel Screen: Detecting Cover Bidding Without Bid Microdata" → **"Loser-Side Participation as a Procurement Risk Signal: Award-Record Screening of Cartel-Adjacent Environments"**. Drops "cartel screen" and "detecting cover bidding" language; adds "risk signal", "cartel-adjacent", "screening" in the narrower triage sense.
- **Abstract:** rewritten around the question "what signal can oversight bodies extract from contract-award records when bid microdata are unavailable?". Sign reversal under strict-overlap matching is now in the abstract. Validation explicitly described as cartel adjacency, not detection. Buyer-size gradient described as "consistent with thinner institutional capacity" rather than as evidence of oversight as the operative channel.
- **Keywords:** "cartel screen, cover bidding, bid rigging" → **"loser-side participation, procurement risk, cartel adjacency, award-record screening, triage"**.
- **Introduction:** restructured around three claims (signal, cartel-adjacency validation, buyer-size heterogeneity) with explicit "What this paper does and does not do" paragraph. Strict-overlap reversal moved into the introduction as a first-order interpretive feature.
- **Conclusion:** rewritten with three claims in descending order of empirical strength; explicit non-claims block.

### 1.2 Sign reversal recentered (was the most important referee concern)

- §7.1 reorganized so that strict-overlap reversal is presented as the **central interpretive challenge**, not as a robustness footnote.
- New paragraph "The sign reversal under strict-overlap matching" decomposes the broad-sample estimate into (i) within-cell association and (ii) systematic differences between selected and unselected items. States plainly that the screen's signal is partly about selection.
- Operational implication ("a triage tool does not need to identify a stable causal effect") spelled out so the reader sees why the screen remains useful despite the reversal.
- The §10.1 limitations chapter retains a consistent treatment but is no longer the only place the issue lives.

### 1.3 Validation rebuilt with object discipline

- New §6.1 "Population nesting and validation objects" with Table~\ref{tab:cade_populations} cataloging five populations (all BEC participants, always-losers, frequent losers, direct CADE defendants, cobidders inside the always-loser stratum). Sizes and definitions explicit.
- **Conservative-first ordering:** §6.2 reports the contemporaneous benchmark (4 cases pre-2020, 30 firm-defendants, AUC $0.748$) as primary. §6.3 reports the prospective benchmark (full 12 cases, AUC $0.924$ in-sample / $0.864$ holdout) as more assumption-dependent.
- New §6.5 "What the validation does and does not show" states plainly that cobidder labels are indirect, that good performance against cobidders is not equivalent to identifying cartel membership, and that the screen is for triage, not adjudication.

### 1.4 Oversight interpretation softened

- §7.2 now reads buyer-size heterogeneity as **consistent with** thinner institutional capacity, not as evidence that oversight is the operative channel. Lists alternative correlated institutional features (procurement-officer tenure, internal-audit infrastructure, item composition, supplier-pool depth, discretionary procedure use) that buyer size proxies for.
- "Oversight is the dominant moderating force" language removed from results, mechanisms, and conclusion.
- Mechanism interpretation explicitly distinguished from policy implication: the policy implication ("oversight bodies operating on small-buyer environments face thinner ex-ante information") is robust to the mechanism interpretation; the mechanism interpretation is not.

### 1.5 Three claims, not five contributions

- Introduction restructured around three claims in order of empirical strength:
  1. Award-record-based loser-side participation contains usable signal.
  2. Signal associates with cartel-adjacent validation targets.
  3. Signal is heterogeneous across buyer size, consistent with thinner institutional capacity at smaller buyers.
- Conclusion mirrors this structure.
- The "deployable / empirically grounded / theoretically grounded" tripartite from v15 is collapsed: the deployability is now a corollary of the signal claim, not a separate contribution. The theoretical grounding is treated as an organizing framework, not as a contribution.

### 1.6 Theory disciplined

- Framework's role is explicit: organizing device, not source of identification.
- Continuous loss-intensity statistic identified as the primitive; binary frequent-loser rule as operational simplification.
- Removed any phrasing that suggests the framework "predicts" the empirical results in a falsifiable sense; the framework is now read as rationalizing why the screen might work.
- Mechanism heterogeneity (§8.3) retains the disciplined "what the data do not support" treatment.

### 1.7 Architecture

- New "What this paper does and does not do" paragraph at end of §1 (introduction).
- Population nesting table in §6.1 (Table~\ref{tab:cade_populations}).
- Roadmap paragraph at end of §1 reflects the four-block structure.

---

## 2. Claims that were softened or removed

| v15 claim | v16 claim |
|---|---|
| "Cartel screen" / "cartel detector" | "Award-record-based risk indicator" / "screen for suspicious loser-side participation patterns" |
| "Detects cover bidding" | "Flags procurement environments statistically associated with higher prices and cartel-adjacent ground truth" |
| "Identifies cover bidders" | "Discriminates cobidder firms inside the always-loser stratum"; cobidders identified explicitly as an indirect label |
| "Robust empirical regularity" (price gap) | "Conditional within-item association whose sign reverses under strict-overlap matching"; selection scope made central |
| "Oversight is the dominant moderating force" | "Consistent with thinner institutional capacity moderating the imprint at smaller buyers; we do not identify oversight as the operative channel" |
| "Three contributions: deployable / empirically grounded / theoretically grounded" | "Three claims in descending order of empirical strength" |
| "Cover-bidder population" as the screen's target | "Loser-side participation patterns" / "cartel-adjacent environments" |
| "Outperforms" / "decisively dominates" Imhof | "Comparable accuracy at lower data cost; complementarity, not dominance" (already in v15, retained) |
| AUC = 0.94 against CADE convictions (v13/v14) | AUC = 0.748 contemporaneous (primary); AUC = 0.864 temporal holdout (complementary) |

---

## 3. Open issues that remain unresolved

1. **The sign reversal is now disclosed but not explained.** We can describe what broad-sample vs strict-overlap estimates capture, but we do not have an empirical decomposition of why selection generates a negative within-cell coefficient. A bid-level investigation of items where frequent losers participate vs nearly-identical items where they do not might tell us what the unobserved features look like, but we do not have bid-level data at scale.

2. **The buyer-size gradient mechanism is genuinely under-identified.** Procurement-officer tenure, internal-audit infrastructure, item composition, and discretionary procedure use are all correlated with buyer size; we do not have variation that separates them. A research design using regulatory shocks to oversight infrastructure (e.g., audit-court coverage variation, integrity-program rollouts) would isolate one channel; we do not have that variation in BEC.

3. **The strict pre-2020 contemporaneous AUC of $0.748$ is computed on $30$ firm-defendants and $210$ cobidder labels.** This is small-sample territory. The DeLong $95\%$ CI of $[0.713, 0.783]$ is informative but not tight. Replication on a larger contemporaneous portfolio (e.g., adding $2014$--$2015$ adjudications if they are recoverable) would strengthen the conservative benchmark.

4. **The construct's stability under deliberate adversarial adaptation is untested.** A sophisticated cartel could rotate cover bidders or let them win occasionally to stay below the IQR threshold; the threshold sensitivity in §9.1 already shows the coefficient declines as the cutoff tightens. Whether a strategic actor could push the construct into Type II error is not something we can answer with the current data.

5. **The framework's prediction $\partial m^*/\partial\theta_k < 0$ is satisfied directionally by the buyer-size gradient, but the framework also predicts $\partial m^*/\partial c_1 < 0$, which we do not test.** The framework should be presented as having at least one prediction in the data and at least one prediction we cannot evaluate, not as having a track record.

6. **The validation labels (cobidders) are indirect by construction.** No amount of additional analysis on the BEC sample will turn cobidders into direct cartel labels. Validating the construct on a procurement registry where direct adjudications include both winners and losers (e.g., a corrupt-procurement scandal where loser identities are also documented in court records) would let us test the construct against a less indirect label.

---

## 4. Recommended next empirical additions if the authors want to strengthen the paper further

1. **Federal Brazilian replication (ComprasNet).** The construct can be computed on ComprasNet with no modification. A demonstration that the price imprint and the cobidder discrimination replicate in a separate jurisdiction would do more for the paper's credibility than any further robustness check on BEC alone. Estimated effort: 4--6 weeks. Risk: signal may not replicate, in which case the paper's portability claim narrows substantively.

2. **Bid-level investigation of selection in the BEC sample.** For the items where frequent losers participate, compare the bid distribution conditional on within-cell observables. This would tell us whether the unobserved features that drive selection are bid-distributional (e.g., higher CV, kurtosis) or non-bid (e.g., procurement-officer identity, supplier-pool depth). If the BEC bid-level data become extractable at scale, this is the most informative single addition.

3. **Adversarial-adaptation simulation.** Holding the construct fixed, simulate strategic actors who optimize the trade-off between participation count and threshold avoidance. Report the construct's degradation under simulated adaptation. This addresses an obvious referee question we currently do not address.

4. **Mechanism identification using regulatory shocks.** TCE-SP audit-court coverage was extended to certain procuring units in specific years. If the rollout is plausibly orthogonal to bidder-pool characteristics, this gives variation in oversight that is separable from buyer size. Difference-in-differences with TCE-SP coverage as treatment would identify the oversight channel separately. Estimated effort: 2--3 months including data acquisition. Risk: identifying assumption (orthogonal rollout) may not hold.

5. **CNAE-level diagnostics.** The construct's behavior across CNAE sectors would tell us whether commodity-heavy items drive the result or whether services / infrastructure / public works follow different patterns. The current paper claims the construct's empirical scope is BEC-2009-2019; a CNAE breakdown would tell us how much of that scope generalizes.

---

## 5. Title options (8--12, ordered by tone)

1. **Loser-Side Participation as a Procurement Risk Signal: Award-Record Screening of Cartel-Adjacent Environments** *(adopted)*
2. Award-Record Screening for Procurement Risk: Loser-Side Participation in São Paulo, 2009--2019
3. Triage Without Bid Microdata: An Award-Record Risk Indicator for Procurement Oversight
4. Loser-Side Participation Patterns Flag Cartel-Adjacent Environments: Evidence from BEC
5. Procurement Triage on Award Records: Frequent Losers as a Risk Signal
6. Frequent Losers in Public Procurement: An Award-Record Risk Indicator for Cartel-Adjacent Environments
7. What Award Records Reveal: Loser-Side Participation and Procurement Risk
8. Screening Suspicious Participation Patterns in Public Procurement Without Bid Microdata
9. Loser-Side Participation as a Triage Signal: Evidence from São Paulo Procurement
10. From Award Records to Procurement Triage: A Loser-Side Risk Indicator

**Recommendation (mr-frequent):** Option 1 (adopted). It carries the right register---narrower than v15's "Cartel Screen", more substantive than "Triage Without Bid Microdata", explicit about both the object (loser-side participation) and the validation scope (cartel-adjacent environments). The subtitle "Award-Record Screening" anchors the data envelope; "Cartel-Adjacent Environments" anchors the validation object's true precision. Referee 2 cannot accuse the title of overclaiming.

---

## 6. Referee likely follow-up questions and our preparation

| Likely question | Where the paper addresses it |
|---|---|
| "How does the screen handle the sign reversal?" | §7.1 paragraph "The sign reversal under strict-overlap matching"; §10.1 limitations; paper's framing throughout admits selection as a constitutive feature of the signal, not a fragility. |
| "Cobidders aren't cartel members. What does AUC against cobidders tell us?" | §6.5 "What the validation does and does not show"; introduction; conclusion. The paper now states explicitly that cobidders are an indirect label and that good performance is not equivalent to detection. |
| "The buyer-size gradient could be anything. Why oversight?" | §7.2 enumerates correlated institutional features; states "we do not separately identify oversight as the operative channel"; distinguishes policy implication from mechanism interpretation. |
| "Why a binary threshold? The continuous statistic is the primitive." | §8.1 horse-race; §1 introduction states the binary rule is operational simplification, not the deep object. |
| "What about adversarial adaptation?" | §10 limitations notes this is a separate operational question; the threshold-sensitivity analysis in §9.1 shows the coefficient is robust to the cutoff. |
| "Why should this matter for ComprasNet / federal procurement?" | §10.3 portability section lists three structural prerequisites; conclusion notes replication is "an open empirical question". |

---

## 7. Tone audit (mr-frequent realist calibration)

The paper's previous (v15) framing read as a positive cartel-screen claim with caveats. The current (v16) framing reads as a triage-tool claim with three nested empirical findings, in descending order of strength, with the most important interpretive challenge surfaced rather than buried.

This is a credibility-led revision. The headline numbers are the same; the claims around them are smaller. A referee skeptical of v15's framing should find v16 harder to attack on framing grounds; a referee already sympathetic to the empirical contribution should find v16 more defensible at the second round.

The trade-off is that v16 reads as a less ambitious paper. We accept that trade-off. A narrower paper that survives Round 2 is better than a broader paper that does not.

---

*End of memo.*
