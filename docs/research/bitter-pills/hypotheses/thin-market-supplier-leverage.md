---
paper: bitter-pills
id: h4
slug: thin-market-supplier-leverage
title: "The deep-market null is not universal: a bounded within-firm gap in thin and early cells"
cluster: B
paper_section: "§4 + §5"
status: partial (strongly supported)
last_updated: 2026-05-25
---

# H:thin-market-supplier-leverage — The deep-market null is not universal: a bounded within-firm gap in thin and early cells

The within firm-buyer-item null tells us there is no broad same-firm markup in
deep repeated urgent markets ([H:no-broad-same-firm-markup](no-broad-same-firm-markup.md)).
But that null is a deep-market statement, and the natural follow-up is: where
the incumbent supplier has *fewer alternatives* — small lots, drugs off the
public formulary, the earlier years before the urgent market matured — does the
markup come back? Partly — but not as supplier leverage. Cutting the
within-triple sample by market depth, the administrative-vs-litigated coefficient
does turn positive in the thin and early subsamples, but disambiguating the two
axes shows the quantity dimension is the **scale** channel (not same-firm
pricing) and the surviving earlier-period gap is **administrative-dearer** and
fades over time — the opposite direction from a court order squeezing the
sanctioned buyer. What survives is a bounded statement: the deep-market null is
**not universal**, with a residual within-firm gap in the earlier period.

!!! abstract "Intuition (plain-language)"
    The deep-market result said the same supplier does not, on average, charge more under a court order. But "on average, in deep markets" is a scoped claim. When the order is small, when the drug is not on the standard public formulary, or when we look at the earlier years before the urgent market filled in, a same-firm price difference reappears. The follow-up tests show exactly how to read that fact: the quantity axis is scale, and the surviving early-period gap is administrative-dearer, not litigated-dearer. The evidence therefore supports a bounded non-null: the deep-market null is not universal, but this is not a clean claim that court sanctions let suppliers squeeze litigated buyers.

> **Evidence strength: Partial (strongly supported).**
> The within firm-buyer-item heterogeneity in
> [AN-003](../analyses/an-003-within-firm-pricing.md) shows the Admin
> coefficient flat or null in deep markets (above-median quantity −0.005;
> SUS-formulary −0.001) but positive and significant in thin and early markets
> (below-median quantity +0.066, ***; earlier period +0.117, ***; non-formulary
> +0.101). [AN-004](../analyses/an-004-market-depth-heterogeneity.md) organizes
> these splits by market depth. Two referee tests disambiguate the result: the
> quantity axis is the **scale** channel (within-FBI log-quantity −0.259; the
> gradient collapses under a quantity control), and the earlier-period gap
> **survives** a within-triple quantity control (+0.117 → +0.168, *p* = 0.007)
> but is **administrative-dearer and time-declining** — a genuine residual
> within-firm gap in the earlier period, not litigated-buyer leverage. The
> status is therefore **Partial (strongly supported)** for the bounded non-null:
> the deep-market null is not universal. The interpretation remains disciplined,
> because the surviving gap is not the "supplier squeezes the sanctioned buyer"
> channel.

![Within firm-buyer-item coefficient by subsample (95% CI): positive in thin and early cells](../assets/figures/fig_within_firm_forest_v10.png)

## Theory

Supplier market power is a function of the buyer's outside options. When a
buyer can credibly source the same molecule from many firms — deep, repeated,
formulary-listed markets with large lots — an incumbent has little room to
extract a markup, which is why the within-triple coefficient is null there. When
the buyer's alternatives are thin — small one-off lots, non-formulary drugs with
few qualified suppliers, the early years before the urgent procurement market
matured — a same-firm price gap is more likely to appear. This is the standard logic of
accountability and supplier power \citep{prendergast2007} interacted with
market structure, but the sign matters: one-sided pressure to deliver would
predict litigated-buyer vulnerability, while the surviving period gap is
administrative-dearer. The result is not a
contradiction of the deep-market null; it is the same accountability mechanism
with an explicit boundary on what the current evidence can claim.

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
though the cells are smaller than the pooled deep-market sample, so the status
is partial-strong for the bounded non-null rather than for a universal
supplier-leverage interpretation.

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
| [AN-004](../analyses/an-004-market-depth-heterogeneity.md) | Supports | Organizes the within-triple splits by market depth; the deep-market null is not universal, but the sign and scale diagnostics bound the supplier-leverage interpretation. |

Read alongside the deep-market null in
[H:no-broad-same-firm-markup](no-broad-same-firm-markup.md): the two together
make the scope claim that the same-firm margin is deep-market null, thin-market
positive.

## Open tests

### Multiple-testing and continuous interaction (run)

We probe the two obvious threats — that the splits are multiple-testing
artifacts, and that the quantity axis is an arbitrary dichotomy
(`analysis/60_referee_tests.R`). The subsample markups **survive multiple-testing
correction**: under Holm the below-median-quantity coefficient has adjusted
$p = 0.041$ and the earlier-period coefficient $p = 0.010$; a Romano-Wolf free
step-down (PBU cluster bootstrap) gives $p = 0.053$ and $p = 0.025$. So the
reappearance is **not** a data-mined artifact.

The quantity axis, however, turns out to be **the scale channel, not same-firm
leverage** (`analysis/61_h4_quantity_quartiles.R`). A quartile decomposition of
the within firm-buyer-item coefficient is monotone in order size — $+0.285$ at
the smallest orders, then $+0.063$, $-0.042$, and $-0.174$ at the largest — but
that gradient **collapses once log-quantity is held fixed within the triple**
($+0.103$ at Q1, $+0.181$ at Q4, neither robust), while the within-FBI
log-quantity coefficient is $-0.259$ (SE $0.074$): a clean bulk-discount effect.
The raw quantity gradient is therefore the **scale/sourcing channel leaking
through** (consistent with [H:lost-scale](lost-scale.md)), not a same-firm
pricing gradient.

The **earlier-period** contrast, by contrast, is *not* scale
(`analysis/62_h4_period_axis.R`). Re-estimating the within firm-buyer-item
administrative coefficient on the early and late subsamples with a within-triple
log-quantity control, the early-period coefficient is $+0.117$ (SE $0.037$) and
**rises to $+0.168$ (SE $0.062$, $p = 0.007$) once quantity is held fixed** — it
survives, and even strengthens, the scale control, whereas the late-period
coefficient is null throughout ($-0.038 \to -0.004$ with control). The early
period does have smaller orders (mean log-quantity $6.20$ vs $7.98$ late), but
the price difference is not coming from that: it is a genuine within-firm price
gap. A continuous administrative$\times$year interaction confirms the same
direction — the within-firm administrative premium **declines over calendar
time** ($-0.025$ per year, $-0.019$ with the quantity control), consistent with
a margin that fades as the urgent market thickens.

**Sign caveat — read honestly.** The surviving early-period coefficient is
*positive*, i.e. the **administrative** channel is dearer within firm-buyer-item,
not the litigated one. That is a genuine, scale-robust, time-declining same-firm
price difference, but it is **not** the "court order lets the supplier squeeze
the sanctioned (litigated) buyer" direction — if anything it points the other
way. So the period result firmly establishes that the deep-market null is **not
universal** (a real within-firm gap persists in the early, thin years), but
whether to label that gap "supplier leverage" is exactly what the open test
below must settle. The status is **Partial (strongly supported)** for the
bounded claim: the quantity axis is reclassified as scale, the period axis is a
genuine non-null, and the *direction* of the period gap is flagged as an open
interpretive question rather than asserted as litigated-buyer leverage.

### Distinguish thinness from earliness — and pin the sign

The disambiguation above leaves one sharp question. Below-median quantity,
non-formulary status, and earlier period all proxy for thin supplier
alternatives but are correlated, and we now know the quantity axis is scale
while the period axis is a genuine within-firm gap. What we do **not** yet know
is *why the period gap is administrative-dearer* rather than litigated-dearer. A
joint specification that separates the *market-thinness* channel from a pure
*time-trend / vintage* channel — and that models the direction of the gap (does
the early administrative channel pay more because of immature batching, a
different early supplier mix, or genuine early-market supplier power?) — would
settle whether "supplier leverage" is the right label or whether the early
premium is a maturation artifact. Until then the period gap is reported as a
genuine, scale-robust non-null with its direction flagged, not as
litigated-buyer leverage.
