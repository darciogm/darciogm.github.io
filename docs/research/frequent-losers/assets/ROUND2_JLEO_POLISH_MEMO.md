# ROUND 2 JLEO Polish Memo — Paper 3 (v17)

**Paper:** *Frequent Losers: A Participation-Based Screen for Public Procurement*

**Authors:** Genicolo-Martins & Furquim de Azevedo (Insper)

**Round 2 polish (May 2026):** compression and discipline pass following the v16 conceptual reframing. No conceptual changes. No new claims. The disciplined framing established in v16 is preserved; this round only removes textual mass and standardizes recurring formulations.

---

## 1. Most important tightening changes

### 1.1 Abstract
- 316 words → **277 words**.
- Removed "We document, in public-procurement records of..." preamble; merged the puzzle ($\valFL$ of $\valAlwaysLosers$) into one sentence.
- Dropped "carry usable participation-based signal for procurement screening" (redundant with "associate with..." that follows).
- "Indirect benchmark of cartel adjacency, not proof of cartel membership" → "indirect benchmark of cartel adjacency, not membership" (sharper).

### 1.2 Introduction
- 910 words → **635 words** (−30%).
- Six paragraphs collapsed into five with explicit `\paragraph{}` labels: opening puzzle → question + headline answer → three findings → interpretive challenge → theory → "what this paper does and does not do".
- Sign-reversal paragraph compressed from 14 lines to 8 lines, single coherent argument: broad-sample combines (i) within-cell + (ii) selection; we report broad-sample as headline because triage operates on the population frequent losers select into.
- Theory paragraph compressed to four lines.
- "What this paper does and does not do" reduced to four lines.

### 1.3 Results §7
- 1104 words → **616 words** (−44%).
- §7.1 sign-reversal exposition: same logic, one paragraph instead of three.
- §7.2 oversight gradient: dropped repeated "we read the gradient as consistent with" formulations, one sentence per claim.
- Cross-fit / matching / IV results compressed into one paragraph.

### 1.4 Validation §6
- 1141 words → **734 words** (−36%).
- Population-nesting table now does the conceptual work; surrounding prose trimmed to three short paragraphs per benchmark (conservative, prospective, robustness, scope-summary).
- Removed prose that merely restated the table.
- Conservative benchmark stated as primary in one declarative sentence.

### 1.5 Recurring formulations standardized
- "not a cartel detector" — used **once** in intro "what this paper does and does not do"; not repeated.
- "indirect label" / "cartel adjacency, not membership" — used **once** in §6 table notes; not repeated in prose.
- "consistent with thinner institutional capacity" — used **once** per section; alternative formulations removed.
- "participation-based screen" — used as noun-phrase identifier in title, abstract, intro, conclusion; in body prose, "the screen" or "the construct" instead.

---

## 2. Remaining vulnerabilities

### 2.1 The sign reversal is now disclosed cleanly, but is not explained empirically
We explain the *interpretation* of the reversal (selection scope vs within-cell) but not the *cause*. A bid-level decomposition of why selection generates a negative within-cell coefficient would close this; we do not have bid-level data extractable at scale. A hostile referee can press: "What unobserved features drive entry into the selected cells?" — and we have no answer beyond conjecture.

### 2.2 The buyer-size mechanism is genuinely under-identified
§7.2 lists alternative correlated features (procurement-officer tenure, internal-audit infrastructure, item composition, discretionary procedure use) but does not separate them. A research design with regulatory variation in oversight (TCE-SP audit-court coverage rollouts, integrity-program adoptions) would do this. Out of scope for the present submission.

### 2.3 The conservative AUC of $0.748$ is computed on $30$ firm-defendants and $210$ cobidder labels
Small-sample territory. The CI $[0.713, 0.783]$ is informative but not tight. Replication on a larger contemporaneous portfolio (additional 2014--2015 adjudications if recoverable) would strengthen the conservative anchor.

### 2.4 Cobidders are an indirect label by construction
No additional analysis on the BEC sample resolves this. Replication on a procurement registry where direct adjudications include both winners and losers (e.g., a corruption case with documented loser identities) would test the construct against a less indirect label.

### 2.5 The participation-based screen is not adaptation-proof
Online Appendix~G shows that AUC degrades by $\valAdaptCapAbs$ pp under threshold-aware capping and by $\valAdaptCombinedAbs$ pp under combined attack. This is disclosed honestly, but a referee can read it as "the screen has a known evasion route". The defense is that adaptation is observable and the threshold can be refreshed; whether oversight bodies actually do this in practice is operational.

---

## 3. Claims intentionally left narrow

| Object | Where the claim sits |
|---|---|
| The construct **flags** environments | Triage, not detection. Used throughout. |
| The screen **discriminates** cobidders at AUC $\valAUCprePost$ (conservative) / $0.864$ (holdout) | Cartel adjacency, not membership. Stated in §6, intro, conclusion. |
| The price imprint **shrinks** across buyer-size quartiles | Consistent with thinner institutional capacity, not identifying oversight. Stated in §7.2, §10, conclusion. |
| The framework **rationalizes** the ranking | Organizing device, not source of identification. Stated in §1, online appendix A. |
| The construct **does not detect cartels** | Hard upper bound from $\valAUCdirectStd$ against direct defendants. Stated in §6, §10.2, conclusion. |
| Adversarial adaptation **degrades performance predictably** | Not adaptation-proof. Stated in §10.2, online appendix G. |

These claims are intentionally narrow. They are not aspirational headlines; they are what the data support. We resist the temptation to upgrade them.

---

## 4. Optional next-step improvements before submission

In rough order of marginal return:

1. **Federal Brazilian replication on ComprasNet.** ~4--6 weeks. Strongest single addition possible — replication in another jurisdiction. Risk: signal may not replicate, narrowing portability claim.
2. **Bid-level investigation of the selection mechanism.** Conditional on within-cell observables, what unobserved bid features distinguish selected from non-selected cells? Requires bid-level extraction at scale; not currently available.
3. **Larger contemporaneous CADE portfolio.** If 2014--2015 adjudications can be recovered, extends the strict pre-2020 benchmark to more cases and tightens the $0.748$ CI.
4. **Mechanism identification via TCE-SP audit-court coverage rollouts.** Identifies oversight as the operative channel under a plausibly orthogonal rollout assumption. 2--3 months.
5. **CNAE-level diagnostics.** Tests whether the construct is commodity-only or extends to services / infrastructure / public works. Has downside risk if commodity-only.

We do not recommend (1) before submission. We recommend submitting v17 as is, executing (1) only if the journal explicitly requests replication.

---

## 5. Submission readiness summary

The paper is ready to submit. The text is leaner than v16 by roughly 1500--2000 words across the main body. The sign-reversal challenge is treated centrally and crisply. The validation maintains object discipline without restating it. The buyer-size gradient is calibrated to suggest, not identify. The theory occupies the rhetorical space it earns and no more.

The first revision fixed the conceptual overclaim. This round fixed the textual excess. What remains is the empirical scope itself, which is narrow by design and adequate for a triage-tool contribution.

---

*End of memo.*
