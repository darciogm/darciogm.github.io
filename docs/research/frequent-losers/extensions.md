---
paper: frequent-losers
---

# Extensions

This page collects auxiliary analyses that support the paper's screening
and architecture results: strategic adaptation, the strict-ex-ante timing
battery, population turnover under the temporal split, the structure of the
price sign-reversal, and the cost-of-evidence envelope behind the headline
83% reduction.

!!! note "Scope of this page"
    Earlier versions of this page reported a structural regime model,
    classical mechanism diagnostics (M1–M5), and a minimum-bidder-rule
    channel. Those explorations are not part of the current paper: the
    construct is positioned as an **award-layer screen for forensic
    triage**, not a structural cover-bidding model, and the
    minimum-bidder-rule interpretation was set aside (the modal asymmetry
    is reported as *scope information*, not a positive institutional test).
    The content below is the portion that carries over to the current
    framing.

---

## Strategic Adaptation

A sophisticated cartel could rotate its cover bidders or let them win
occasionally to stay below the threshold, and the threshold-sensitivity
analysis suggests some do. Any operational deployment would need periodic
recalibration alongside bid-level tools, which is why the staged workflow
treats the screen as a first stage rather than a final word. Refreshed
thresholds, continuous ranks, capacity-constrained queues, and bunching
checks fit the staged enforcement architecture.

---

## Three-Classifier Timing Battery

The strict ex ante variant trains the score on progressively earlier
windows and evaluates against truly out-of-time targets:

| Classifier | vs cobid_all (FL / continuous) | vs cobid_post2019 (FL / continuous) |
|---|---|---|
| clf_2015 (train 09–15) | 0.791 / 0.851 | **0.786 / 0.854** |
| clf_2017 (train 09–17) | 0.856 / 0.897 | **0.844 / 0.894** |
| clf_2019_full (in-sample ref) | 0.924 / 0.939 | — |

`cobid_post2019` is the strict out-of-time target: cobidders linked only to
CADE adjudications closed after 2019, which cannot be in the clf_2015 or
clf_2017 training data. Discrimination preserves AUC 0.79–0.89 even against
this strictly disjoint target. (See [AN-029](analyses/an-029-three-classifier-timing-battery.md).)

---

## Population Turnover Under the Temporal Split

Firm persistence between the 2009–2016 and 2017–2019 panel windows is
**8.7%** (108 of 1,240 early-period always-loser firms remain in the late
period). Market persistence (PBU × item-group) is 12.4%; PBU persistence is
83.5%. The institutional environment (procurers) is stable across the
temporal split, while the firm and market populations are essentially
fresh. The temporal holdout therefore evaluates a new firm population, not
the same firms in different years — which is why the holdout AUC of
**0.864** is the honest discrimination reference.

---

## Structure of the Price Sign-Reversal

The price sign-reversal under overlap-cell ATT (broad **+0.064** → ATT
**−0.097**) is not uniform across item groups. Most groups (12, 13, 14, 29)
flip from positive baseline to negative ATT. Item group 37 stays strongly
negative across all three specifications (−0.105 broad → −0.126 ATT,
*p* < 10⁻⁶) — the cleanest structural negative. Item group 10 stays
positive (+0.107 broad → +0.063 ATT) — the scope boundary at the
item-group level. The heterogeneity is predictably structured, not random.
The price evidence is reported as **scope information, not a damages
estimate**. (See [AN-038](analyses/an-038-negative-cell-segment-audit.md).)

---

## Cost-of-Evidence Envelope

The headline **83%** pool-reduction is a single point on a wider operational
envelope. The full architecture × *k* × regime matrix maps the
cost-of-evidence trade-off across four sequencing rules (award-only,
bid-only, joint, and sequential award → bid) over several top-*k* cutoffs
and two evaluation regimes (in-sample, temporal holdout).

The canonical gatekeeper result (Section 6): at the top-1,000 cutoff,
sequential award → bid scoring recovers **131 of 193** cobidders while
opening bid microdata for only **2,000** of 11,676 firms — an 83% footprint
reduction at an 8% recall cost relative to full-observability joint scoring.
Joint scoring is the full-observability upper bound, not an implementable
first-stage policy.

Under temporal holdout the sequential rule's recall is markedly more robust
than joint scoring (sequential recall drops ~9% versus joint's ~24% from
in-sample to holdout), so the sequential architecture's relative advantage
**widens in the operationally honest regime**. (See
[AN-034](analyses/an-034-sequential-gatekeeping-envelope.md) and
[AN-035](analyses/an-035-architecture-cost-of-evidence-matrix.md).)

---

## Year-by-Year Stability

<figure>
  <img src="../assets/figures/fig_10_year_coefficients.png" alt="Year-by-year coefficients">
  <figcaption><strong>Figure.</strong> Year-by-year broad-sample FL coefficients. The broad-sample association is not driven by a particular time period.</figcaption>
</figure>

The broad-sample FL–price association is not an artifact of any single
year. As elsewhere on this site, the broad-sample coefficient is a
descriptive object; the overlap-restricted ATT reverses sign, and the paper
does not rest on either sign of the price coefficient.
