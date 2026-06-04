---
paper: frequent-losers
---

# Extensions

!!! abstract "Intuition (plain-language)"
    The current paper maps the *reach and limits* of award-layer screening: cheap records can order forensic priority, but they do not prove conduct, and the screen as built is retrospective rather than prospective. These extensions are the open problems that follow from that map. Does the decomposition method — splitting an apparent signal into opportunity arithmetic, single-case concentration, and a genuine increment — replicate in another jurisdiction? Can a screen be made to work *prospectively*, before an investigation is already underway? And what would a richer integration of the bid layer add? None of these is solved here; they are the research agenda the reach-and-limits framing opens up.

This page collects future-work directions that follow from the paper's
central result — that award-layer records **order forensic priority**
rather than prove conduct. Each direction is an open problem, not a
claim the current paper already settles.

!!! note "Scope of this page"
    Earlier versions of this page reported a structural regime model,
    classical mechanism diagnostics (M1–M5), a minimum-bidder-rule
    channel, and a "deployable prospective detector." None of those is
    part of the current paper. The construct is positioned as an
    **award-layer screen that allocates investigative effort** — a way
    to order forensic priority under costly observability — not a
    structural cover-bidding model and not a fielded detector. The
    content below is the forward-looking agenda consistent with that
    framing.

---

## Cross-Jurisdiction Transfer of the Decomposition Method

The paper's transferable contribution is a **decomposition method**, not
a single AUC. An apparent loser-side signal is separated into three
parts: an *opportunity-arithmetic* component (firms that bid more have
more chances to co-appear with anyone, including defendants), a
*single-case-concentration* component (one adjudicated case can dominate
the positive labels), and a *genuine increment* that survives both
adjustments.

On BEC-SP the decomposition gives: exposure-only AUC **0.946**,
within-stratum AUC **0.7715**, and a genuine increment of **+0.042**
(DeLong *p* ≈ 2 × 10⁻⁶). The open question is whether this split
**replicates** on a different procurement system with a different
adjudication history. If the opportunity-only term again carries most of
the raw discrimination while a small, significant within-stratum
increment survives, the method generalizes; if the genuine increment
vanishes elsewhere, the BEC result is jurisdiction-specific. The
ComprasNet federal panel is the natural first replication target (see
[`COMPRASNET_PATH_TO_CONFIRMED.md`](https://github.com/darciogm/bitter-pills/blob/main/paper3-frequent-losers/COMPRASNET_PATH_TO_CONFIRMED.md)).

---

## Prospective Deployment — A Genuine Open Problem

The screen as built is **retrospective among incumbents**. The strict
timing tests make this explicit and do not resolve it: among firms with
sufficient prior participation the ordering is informative, but on the
full firm universe a strictly out-of-time ROC is near chance
(≈ **0.55**), and a fully sequential strict-timing evaluation is
**infeasible** with the available adjudication dates. The screen
therefore orders *who has already accumulated a loser-side footprint*,
not *who will become a cover bidder next*.

Making award-layer screening **prospective** is an open research
problem, not something the current paper delivers. It would require
either richer time-stamped entry data, an explicit early-warning target
distinct from adjudication closure, or a deployment design that updates
the ordering as participation accrues. We flag this as future work
precisely because the reach-and-limits map shows the current artifact
does *not* clear this bar.

!!! warning "What this paper does NOT claim"
    The current paper does not deliver a deployable prospective cartel
    detector. It delivers a method to order forensic priority from cheap
    records and a map of where that ordering is informative and where it
    is not. Prospective deployment is listed here as unsolved.

---

## The Architecture of Cover Bidding (Separate JLE Spin-Off)

A distinct, **separate** paper develops the institutional reading of the
modal asymmetry: regulation that prescribes how losing bids are placed
can mechanically generate a *suspect pool* of loser-side participants.
That argument requires its own theory and its own cross-jurisdiction
evidence and is deliberately kept **out of the current submission** to
avoid contaminating the evidence-allocation framing with an
institutional-identification claim the BEC data cannot support.

!!! note "Clearly separate work"
    "The Architecture of Cover Bidding" is a planned future paper, not a
    section of the current one. In the present paper the modal asymmetry
    is reported as **scope information** (the ordering is more informative
    in some procurement environments than others), never as a positive
    test of a minimum-bidder-rule mechanism.

---

## Richer Bid-Layer Integration

The benchmark against bid-distribution screens shows **complementarity,
not dominance**: on the matched evaluation pool the Imhof bid-distribution
pipeline reaches AUC **0.888**, the frequent-loser flag **0.921**, and a
combined model **0.962**. The combined number is leakage-sensitive and is
read as a *division of labor* — cheap award-layer records and costly
bid-layer features carry different information — not as a claim that one
screen beats the other.

The open direction is a deeper integration of the bid layer: which
bid-distribution moments add genuine increment *after* the award-layer
ordering and the opportunity adjustment, and whether a jointly estimated
model preserves that increment out of time and out of sample. This is a
methodological extension of the decomposition, applied to the bid layer
rather than the award layer.

---

## Cost–Recall Frontier, Not a Single Operating Point

The cost-of-evidence result is a **frontier**, not a single optimal
cutoff. Sequencing a cheap award-layer triage before a costly bid-layer
stage traces a curve in (investigation cost, recall) space across a grid
of Stage-1 sizes. A single headline operating point is *not* optimal: at
one Stage-1 size the firm-count reduction is large (~88%) while the
reduction measured on bid-rows — the denominator that actually drives
forensic cost — is far smaller (~33%). Which point an enforcer should
choose depends on the relative cost of the two layers and on the recall
target, both of which are policy parameters rather than estimable
constants.

!!! warning "No 'universal' headline"
    Earlier drafts summarized this as a single universal "footprint
    reduction" headline. That framing is retired: the result is a
    cost–recall *frontier*, the reduction depends on whether cost is
    counted in firms or in bid-rows, and no single operating point is
    optimal across enforcers.

The open extension is to characterize the frontier under explicit,
externally calibrated cost denominators for a given enforcement agency,
turning the curve into an agency-specific operating recommendation.

---

## Price as Scope, Not Damages

The price evidence describes **where the ordering is informative**, not a
recovered overcharge. The broad-sample association is **+0.064**; under
an overlap-cell ATT it reverses to **−0.097**; only the top revenue
quartile remains positive at **+0.041**. The mechanism behind the
sign-structure is **not identified** from BEC alone. The price object is
therefore read as *scope information* — which segments the ordering
speaks to — and the paper does not rest on either sign.

The open question is whether, with cleaner exogenous variation in
procurement design, the segment-level structure can be tied to a
mechanism rather than left as a descriptive scope map.

---

## Year-by-Year Stability

<figure>
  <img src="../assets/figures/fig_10_year_coefficients.png" alt="Year-by-year coefficients">
  <figcaption><strong>Figure.</strong> Year-by-year broad-sample FL coefficients. The broad-sample association is not driven by a particular time period.</figcaption>
</figure>

The broad-sample association is stable across years and is not an
artifact of any single period. As elsewhere on this site, the
broad-sample coefficient is a **descriptive scope object**; the
overlap-restricted ATT reverses sign, and the paper does not rest on
either sign of the price coefficient.
