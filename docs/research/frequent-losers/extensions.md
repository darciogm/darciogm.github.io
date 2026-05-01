---
paper: frequent-losers
---

# Extensions

Material that complements the main text without crowding it: institutional context for Brazil's new procurement law, scope conditions for portability, and a few diagnostic patterns the construct surfaces beyond the headline price gap.

---

## Lei 14.133/2021 and Portability

Brazil's new procurement law (Lei 14.133/2021) replaces Lei 8.666/93 for new contracts, restricts the convite modality, and tightens habilitation requirements (mandatory federal qualified-supplier registry, integrity programs above a value threshold). The reform postdates our 2009–2019 sample but shapes the policy direction.

The headline modal asymmetry pushes in a favorable direction. The construct's signal-to-noise is highest in pregão, where the price imprint is +9.3% and within-modal AUC against adjudicated cobidders is 0.952; in convite, the price imprint is +3.8% and within-modal AUC is 0.816. Lei 14.133/2021 consolidates pregão-style electronic auctions as the institutional default for federal and inter-state procurement, so the reform moves Brazilian procurement toward the modal regime in which the construct fires most cleanly.

Portability is contingent, not free. Three structural prerequisites are diagnostic conditions that any candidate jurisdiction needs to satisfy before deployment:

1. **Commodity-heavy item composition** that supports within-product-code price comparisons.
2. **Electronic platforms with publicly auditable participant lists**, so participation counts can be computed without privileged data access.
3. **Institutional asymmetry between the winner and loser sides** of the bidding pool, so persistent zero wins are informative about strategic non-competitive participation rather than about randomized matching outcomes.

The contingencies are recognizable, observable, and—in the institutional direction the country is moving—increasingly satisfied.

---

## Settings Not Tested Directly

The construct's logical scope extends beyond what the published paper validates empirically. We catalog three classes of untested deployment contexts:

| Context | Status | Replication path |
|:---|:---|:---|
| Federal Brazilian procurement (ComprasNet) | Untested | Same award-record envelope as BEC; replication is technically straightforward and substantively pending |
| Other state-level platforms (Banco do Brasil, individual UFs) | Untested | Same envelope, accessible through the same legal regime |
| Non-commodity settings (services, infrastructure, public works) | Untested | Within the framework's logical scope but the within-item identifying variation that underwrites the headline price gap is not equally available |
| Time periods outside 2009–2019 | Untested | Pre-2009 precedes BEC operational stabilization; post-2019 transitions to Lei 14.133/2021 |

The replication archive (see [Replication](replication.md)) is structured so the same pipeline can be run on any award-record dataset that conforms to the contract-record envelope.

---

## Modal Asymmetry as Scope Information

The construct fires with sharper signal-to-noise in pregão than in convite on two independent dimensions. The price imprint is +9.3% in pregão versus +3.8% in convite (ratio 2.5×). The discrimination AUC against adjudicated cobidders is 0.952 in pregão-primary auctions versus 0.816 in convite-primary auctions (bootstrap difference −0.136, *p* ≈ 0).

A naive reading would invoke convite's minimum-bidder rule (Lei 8.666/93, Article 22 §3) as the institutional driver: if statutorily mandated quorum-fillers are the mechanism, the construct should fire *more* cleanly in convite, not less. The data flatly reverse this prediction. We do not read the reversal as positive evidence for any specific institutional theory of where cover bidding originates; we read it as scope information about where the construct's signal-to-noise is highest.

Two competing readings remain observationally compatible: pregão's open electronic structure may expose loser-side participation footprints more visibly than convite's sealed-bid invitation procedure, or convite's smaller and more homogeneous bidder pools may compress the discriminating gap. We do not adjudicate between them.

---

## Construct Scope: What the Footprint Does Not Identify

The construct flags a participation footprint that admits at least three non-competitive readings. We adopt cover bidding as the working interpretation because the framework derives from it and because the strongest heterogeneity dimensions (modal asymmetry, oversight gradient) match its comparative statics most directly. The other readings remain observationally compatible at the firm level:

| Reading | Behavioral story | Observational compatibility |
|:---|:---|:---|
| **Cover bidding** (working interpretation) | Firms deployed by a cartel to fill participant slots without intending to win | Matches the framework's separating equilibrium and both modal/oversight comparative statics |
| **Capacity-transfer** | Firms maintaining bidding presence to signal capacity availability for subcontracting or for affiliate consortia | Compatible with persistent zero-win participation; not testable at the firm level on award-record data alone |
| **Market-intelligence** | Firms participating to observe prices, identify procurement schedules, or build operational priors on competitor behavior | Compatible with the participation footprint; would not generate the conditional price gap unless paired with a behavioral mechanism |

The construct's empirical content is the participation footprint these readings share, not the specific identification of any one of them. Adjudication among readings at the firm level requires evidence the award-record envelope does not contain.

---

## Future Directions

Three directions for follow-up work follow naturally from the construct's design:

1. **Inter-jurisdictional replication.** The federal Brazilian procurement registry (ComprasNet) preserves the same award-record envelope as BEC and is accessible through the same legal regime. The construct can be tested on ComprasNet with no modification.
2. **Integration with bid-distribution detectors.** Where bid microdata are available, the construct serves as a pre-screen that raises the prior of detectors in the Imhof–Wallimann family on the case-load to which those methods are applied. The administrative pathway integrates the construct as Stage 1 (Screen) and bid-distribution methods as Stage 3 (Forensic).
3. **Non-commodity settings.** The framework's comparative static does not depend on commodity composition, but the empirical scope of this paper does. Whether the gradient survives in services, infrastructure, or public-works procurement is an open empirical question.

---

## Replication and Transparency

The replication archive includes the construction scripts for the derived datasets, the analysis pipeline, and the LaTeX sources for the manuscript. The CADE adjudication records used as ground truth are public and accessible through the *Conselho Administrativo de Defesa Econômica* portal at gov.br/cade. The São Paulo BEC contract awards are administrative records maintained by the State of São Paulo Treasury and obtained through institutional channels. See [Replication](replication.md) for the full pipeline.
