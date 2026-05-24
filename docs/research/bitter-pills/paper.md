---
paper: bitter-pills
---

# The Paper

## Sourcing under Sanctions: Judicial Urgency and Pharmaceutical Procurement Costs

**Authors:** Darcio Genicolo-Martins and Paulo Furquim de Azevedo
**Affiliation:** Insper Institute of Education and Research, Sao Paulo, Brazil
**Version:** May 2026 (JPubE short paper, v9)

!!! abstract "Download"
    [Main paper (PDF)](assets/pdf/sourcing-under-sanctions-v9.pdf) &nbsp;·&nbsp; [Online Appendix (PDF)](assets/pdf/sourcing-under-sanctions-v9-online-appendix.pdf)

---

## Question

Court mandates secure delivery, but they may change how the state procures the mandated good. In Brazil, courts compel state governments to purchase specific medications when patients win right-to-health lawsuits. Compliance is enforced through fines, civil liability, and other sanctions on procurement officials who fail to deliver---but no analogous penalty attaches to officials who deliver at high prices. In São Paulo alone, this one-sided accountability regime covers roughly **\$300M of pharmaceutical purchases per year**.

Higher prices under judicial urgency have two distinct interpretations that are observationally confounded in standard procurement data:

- **Same-firm markups** (in the spirit of accountability models, Prendergast, 2007): the same supplier charges a sanctioned buyer more for the same item.
- **Fragmented sourcing** (in the spirit of passive waste, Bandiera, Prat & Valletti, 2009): the state buys smaller lots, loses scale, and matches with a different supplier set.

The paper separates these margins with a within firm-buyer-item test, selection bounds, and direct sourcing evidence.

---

## Contributions

1. **Main contribution — pricing versus sourcing under judicial urgency.** Standard procurement comparisons confound incumbent pricing with supplier-set reallocation. Holding the supplier–buyer match fixed, the within firm-buyer-item triple isolates same-firm pricing; the sourcing evidence captures scale loss and supplier-set reallocation. The headline result is **no broad same-firm markup in deep repeated urgent markets**, with the cost surfacing through sourcing instead — not a universal "no markup" claim, since supplier leverage can reappear in thinner or earlier markets.

2. **The administrative urgent channel as a selected but informative comparison.** São Paulo runs a parallel administrative-request channel that creates urgent pharmaceutical procurement outside the court-sanction regime. It is not random and it is larger and screened, but it is the closest feasible urgent-procurement comparison, and the paper disciplines it with Lee bounds rather than treating it as a clean counterfactual.

3. **A judicial-enforcement form of passive waste.** One-sided sanctions secure delivery but weaken the routines that aggregate demand and match buyers with suppliers. The paper reframes right-to-health litigation as a question of public-sector production under legal constraint: how court orders change the way the state buys, not only how much it spends. It also engages JPubE work on demand aggregation in health procurement (Lin & Wang, 2025).

---

## Headline Findings

| Object | Estimate |
|--------|----------|
| Selection-bounded under-the-gun gap (Lee bounds) | **[15.9%, 21.1%]** |
| Within firm-buyer-item Admin coefficient | β̂ = 0.035, SE = 0.041 (no broad markup) |
| Sourcing shift: modal winner differs across regimes | **70.2%** of item-buyer pairs |
| Lost scale: admin orders larger than litigated | **~3.3×** |
| Bounded annual fiscal procurement-cost implication | **\$27.8M** on \$300M of litigated spending |
| Placebo on never-litigated items | economically and statistically zero |

The deep-market no-broad-markup result is the central finding; a thin-market sanction premium reappears on subsamples where the incumbent has fewer alternatives, consistent with supplier leverage exactly where the literature predicts it should bite.

---

## Institutional Background

Brazil's universal public health system (SUS) provides free access to pharmaceuticals listed in official formularies. When patients cannot obtain medications through regular channels, they may file lawsuits compelling the government to purchase and deliver specific drugs. These court orders create a distinct procurement channel---**litigated purchases**---that operates under tight judicial deadlines and possible sanctions for procurement officials.

The São Paulo state government conducts pharmaceutical procurement through its electronic platform (BEC), which records transactions at the bid level. Within urgent demand, two channels coexist:

- **Litigated purchases:** Procurement compelled by court orders. Failure to deliver can expose the responsible officials to fines, civil liability, and other sanctions.
- **Administrative urgent purchases:** Procurement authorized by the SES/SP scientific committee. Same compressed timelines, same small quantities, same auction procedures on BEC, but without the court-sanction regime.

This dual channel for urgent pharmaceutical demand is the institutional asset that lets the under-the-gun (UTG) contrast hold urgency fixed while disciplining selection into the administrative channel.

---

## Identification

The selection-bounded UTG gap is identified within urgent pharmaceutical demand by:

1. **Lee monotone trimming bounds** on selection into the administrative channel (screening admits items that would have been cheaper under any regime; the Lee bound brackets that wedge under a monotonicity restriction — it bounds selection rather than eliminating it).
2. **Within firm-buyer-item triples** observed under both urgent regimes (1,206 triples, 4,573 observations) — same firm, same item, same buyer — that isolate same-firm pricing while conditioning away supplier-set reallocation.
3. **Wild cluster bootstrap** on the preferred-FE Admin coefficient (Rademacher replicates).
4. **Borusyak-Jaravel-Spiess event study** with **Rambachan-Roth honest-sensitivity** overlay, used as diagnostic rather than primary evidence (Appendix).
5. **Placebo** on items never subject to litigation: the urgent-procurement pattern does not reproduce outside the litigation margin.

---

## Data and Sample

The analysis uses bid-level data from the **Bolsa Eletrônica de Compras** (BEC), São Paulo state, covering pharmaceutical procurement by SES/SP from January 2009 through December 2019.

| Feature | Description |
|---------|-------------|
| **Source** | BEC, São Paulo state (mandatory for common goods since 2007) |
| **Coverage** | Pharmaceutical purchases (Group 65) |
| **Period** | January 2009 -- December 2019 |
| **Observations** | 479,330 purchase-offer-item observations |
| **Units** | Classifier operates at the purchase-order/tender-notice level; empirical analysis is at the purchase-offer-item level; price regressions use accepted winning bids |
| **Key outcomes** | Negotiated price, reference price, quantity, number of bidders, tender success |
| **Treatment contrasts** | Litigated vs Ordinary; **Litigated vs Administrative (UTG)** |

---

## Software and Estimation

- **Primary analysis:** R 4.5 with `fixest` (`feols`), BJS event study, Rademacher wild cluster bootstrap, and Lee bound computation.
- **DuckDB** for parquet I/O on BEC and joined data.
- **Honest-DiD-style** sensitivity bound implemented as a diagnostic overlay.
- **Macro discipline:** every numerical claim, table input, and figure path resolves through `values.tex`, regenerated by the producing script. No hardcoded numerals in the manuscript.

---

## Policy Implication

The evidence identifies a procurement mechanism, not a general verdict on courts. Because the measured margin is lost scale and supplier matching rather than contract language or price caps alone, the policy response is to **preserve delivery while rebuilding aggregation and supplier matching under legal urgency**:

- **Framework agreements and pooled urgent procurement** restore scale.
- **Pre-contracted suppliers for recurring medicines** support supplier matching.
- **Stronger administrative screening** widens an urgent route without court sanctions for admissible cases.
- **Inventories or protocols for recurrent litigated medicines** let the state anticipate and aggregate demand rather than source isolated emergencies.

The paper does not estimate patient health benefits, the social value of litigation, or a structural counterfactual in which sanctions are removed; the fiscal calculation is a procurement-cost figure, not a full welfare estimate. The point is narrower and more useful: under one-sided legal urgency, the procurement problem is not only how much the state pays, but how the state is forced to buy.
