---
id: h4
slug: thin-market-supplier-leverage
title: "Supplier leverage reappears in thinner and earlier markets"
cluster: B
paper_section: "§4 + §5"
status: moderate
last_updated: 2026-05-24
---

# H:thin-market-supplier-leverage — Supplier leverage reappears in thinner and earlier markets

The within firm-buyer-item null tells us there is no broad same-firm markup in
deep repeated urgent markets ([H:no-broad-same-firm-markup](no-broad-same-firm-markup.md)).
But that null is a deep-market statement, and the natural follow-up is: where
the incumbent supplier has *fewer alternatives* — small lots, drugs off the
public formulary, the earlier years before the urgent market matured — does the
markup come back? This hypothesis says yes. Cutting the within-triple sample by
market depth, the administrative-vs-litigated coefficient turns positive and
significant exactly in the thin and early subsamples, consistent with supplier
leverage where the literature predicts it should bite.

!!! abstract "Intuition (plain-language)"
    The deep-market result said the same supplier does not, on average, charge more under a court order. But "on average, in deep markets" hides the cases where the supplier holds the cards. When the order is small, when the drug is not on the standard public formulary, or when we look at the earlier years before the urgent market filled in, the same-firm price difference reappears and is meaningful. That is exactly where you would expect a supplier to have leverage — fewer competing sources, a buyer with little room to shop around. So leverage is not absent; it is concentrated in the thin and early corners of the market.

> **Evidence strength: Moderate (supported).**
> The within firm-buyer-item heterogeneity in
> [AN-003](../analyses/an-003-within-firm-pricing.md) shows the Admin
> coefficient flat or null in deep markets (above-median quantity −0.005;
> SUS-formulary −0.001) but positive and significant in thin and early markets
> (below-median quantity +0.066, ***; earlier period +0.117, ***; non-formulary
> +0.101). [AN-004](../analyses/an-004-market-depth-heterogeneity.md) organizes
> these splits by market depth. The reappearance of leverage is a heterogeneity
> result on subsamples; it is supported and directionally consistent with theory,
> but rests on smaller cells than the deep-market null.

## Theory

Supplier market power is a function of the buyer's outside options. When a
buyer can credibly source the same molecule from many firms — deep, repeated,
formulary-listed markets with large lots — an incumbent has little room to
extract a markup, which is why the within-triple coefficient is null there. When
the buyer's alternatives are thin — small one-off lots, non-formulary drugs with
few qualified suppliers, the early years before the urgent procurement market
matured — the incumbent's leverage rises. This is the standard logic of
accountability and supplier power \citep{prendergast2007} interacted with
market structure: one-sided pressure to deliver translates into a price premium
precisely where the supplier faces little competition. The result is not a
contradiction of the deep-market null; it is the same accountability mechanism
showing up where its preconditions hold.

## Prediction

The within firm-buyer-item administrative coefficient should be **near zero in
deep markets** (above-median quantity, formulary drugs) and **positive and
significant in thin and early markets** (below-median quantity, non-formulary
drugs, earlier period). The contrast across these splits is the test.

## Competing prediction

**Uniform null (leverage absent everywhere).** A reading of the deep-market null
as universal would predict that the within-triple coefficient stays near zero on
every subsample. The heterogeneity rejects this: below-median quantity (+0.066,
***) and earlier period (+0.117, ***) are positive and significant. A second
alternative is that the thin-market positives are pure small-sample noise; the
consistency of the sign across three theoretically motivated splits (quantity,
formulary status, period) and the significance stars weigh against pure noise,
though the cells are smaller than the pooled deep-market sample, which is why
the status is moderate rather than partial-strong.

## Setting evidence

Urgent pharmaceutical procurement in São Paulo spans a wide range of market
depths within the same regime contrast: large recurring orders of common
formulary drugs sit alongside small one-off purchases of niche, non-formulary
molecules, and the urgent procurement market itself thickened over the
2009–2019 window. This within-setting variation in supplier alternatives is what
lets the same within-triple design speak to both the deep-market null and the
thin-market leverage result. See [docs/paper.md](../paper.md) for how formulary
status and lot size enter the data.

## Empirical test

- *Outcome variable*: log negotiated price.
- *Variation*: administrative vs litigated **within** firm-buyer-item triples,
  interacted with market-depth proxies.
- *Splits*: above- vs below-median quantity; SUS-formulary vs non-formulary;
  earlier vs later period.
- *Specification*: within-triple fixed-effects regression estimated separately
  on each subsample (same design as [AN-003](../analyses/an-003-within-firm-pricing.md)).
- *Sample*: the 4,573-observation, 1,206-triple within-triple panel, partitioned
  by depth.

## Data requirements and limitations

Requires the same within-triple urgent panel as
[H:no-broad-same-firm-markup](no-broad-same-firm-markup.md), partitioned by
market depth. The thin-market cells are **smaller** than the pooled sample, so
the leverage estimates are noisier and the result is best read as a consistent
*pattern* across theoretically motivated splits rather than a precise magnitude
for any single cell. The splits are descriptive partitions, not a randomized
manipulation of market depth, so they show *where* leverage concentrates, not a
causal effect of thinning a market.

## Evidence

| Analysis | Bearing | Key takeaway |
|----------|---------|--------------|
| [AN-003](../analyses/an-003-within-firm-pricing.md) | Supports | Heterogeneity in the within-triple coefficient: deep markets flat (above-median quantity −0.005; SUS-formulary −0.001); thin/early markets positive and significant (below-median quantity +0.066 ***; earlier period +0.117 ***; non-formulary +0.101). |
| [AN-004](../analyses/an-004-market-depth-heterogeneity.md) | Supports | Organizes the within-triple splits by market depth; leverage concentrates where the incumbent has fewer alternatives, consistent with supplier-power theory. |

Read alongside the deep-market null in
[H:no-broad-same-firm-markup](no-broad-same-firm-markup.md): the two together
make the scope claim that the same-firm margin is deep-market null, thin-market
positive.

## Open tests

### Continuous market-depth interaction

The current evidence uses binary splits (above/below median, formulary/not,
early/late). A continuous interaction of the administrative coefficient with a
supplier-alternatives index (e.g., count of qualified suppliers per molecule)
would trace the leverage gradient rather than dichotomizing it, and would
upgrade the status toward partial-strong if the gradient is monotone and
precisely estimated.

### Distinguish thinness from earliness

Below-median quantity, non-formulary status, and earlier period all proxy for
thin supplier alternatives but are correlated. A joint specification that
separates the *market-thinness* channel from a pure *time-trend* channel would
clarify whether the earlier-period premium is leverage in a then-thin market or
a distinct vintage effect.
