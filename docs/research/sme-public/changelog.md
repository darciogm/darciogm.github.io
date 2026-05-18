---
paper: sme-public
---

# Changelog

## v8 — May 2026 (JPubE submission)

- **Title** is **The Price of Exclusion: SME Set-Asides in Public Procurement**. The framing moves from "sheltered bidding" (a within-auction conduct claim) to **price formation under exclusion** (the order statistic that prices the contract changes when non-SMEs are removed).
- **Decomposition rebuilt** as $S_3 - S_1 = (S_2 - S_1) + (S_3 - S_2)$: a **lost competitive discipline** component (exclusion of non-SMEs, SME pool held fixed) and a **protected-pool offset** (post-policy SME pool replacing pre-policy). The two components are reported as counterfactual price-formation objects, not reduced-form treatment effects.
- **Headline numbers** at &lambda;=0.30: non-pharma static welfare loss **28.9%** of the open-regime price; exclusion accounts for **72%** of the price decomposition (absolute share). Implied SME welfare weight to prefer full exclusion to a 10% preference: **2.42** (non-pharma) and **2.61** (pharma). Pharmaceuticals reported as a boundary case rather than a second headline.
- **Empirical bidder-count robustness** (Online Appendix OA-D.2): replacing the Poisson bidder-count draws with sampling from the empirical class-period-type count distributions attenuates net effects by roughly a quarter but leaves the exclusion-dominant decomposition intact (exclusion shares 69.4% non-pharma, 63.1% pharma).
- **Threat-assessment table** (Section 6, Table 5): eight identification and sensitivity threats mapped to diagnostic, finding, and remaining limitation.
- **JPubE compliance**: Elsevier Harvard bibliography style, abstract under 250 words, 4 keywords + 5 JEL codes, highlights file, generative-AI declaration, acknowledgements section, data-availability statement.

## v6 — May 2026 (Sheltered Bidding framing — superseded)

**Polish round** consolidating v5 into JPubE submission shape.

- **Title rebranded** to **Sheltered Bidding: The Within-Auction Cost of SME Set-Asides**, replacing the v5 working title *The Cost of Inclusion: Decomposing Bidder Exclusion in Public Procurement*. The new title puts the characterized property (sheltered bidding) front and centre.
- **Abstract pivoted** to a question-first structure ("Why do SME set-asides raise procurement prices?") with three headline numbers: ~10% DiD effect on winning prices, sheltered bidding = 2/3 to 3/4 of the simulated effect, R\$55 million per year welfare cost on a single product group of São Paulo's R\$13 billion procurement platform.
- **Sheltered bidding** elevated from descriptive label to characterized property; framing positions the within-auction component as the policy-design statement of the paper.
- **Aggressive compression** (body 64 → 54pp, appendix 24 → 23pp) to fit JPubE conventions; figure floats tightened (`[!htbp]` → `[!htb]`).
- **Robustness narratives** sharpened across §5 Identification, §6 Results, §7 Welfare, §8 Robustness, §9 Discussion, with discipline against accounting-vs-full-structural overreach.
- **Macro hygiene.** All headline numbers, fiscal magnitudes, and parameter bounds reach the manuscript via `output/values.tex`; no hardcoded numerals.
- **Institutional footnote** (PGE-SP Parecer 151/2017 ementa) translated to English with the original Portuguese preserved in italics, accommodating non-Lusophone JPubE referees.
- **V4 (empate ficto) quantified.** The right-to-match instrument operative in current Brazilian law (LC 123/2006 arts.~44--45) extended to the BNE Monte Carlo framework as a fourth instrument alongside V0/V1/V2/V3. The empate fires in 1--2 percent of auctions; the SME win-rate gain is +1.9 (non-pharma) / +1.0 (pharma) percentage points; welfare cost is essentially zero (0.03 / 0.01 percent of $p_{S_1}$) — firmly below V3 on both distributive and welfare margins.

---

## v5 — April 2026 (Submission-ready, JPubE format)

**Structural decomposition** of the SME set-aside replaces the v1--v3 reduced-form headline:

- Asymmetric IPV reading of the Pregao auction; type-specific cost distributions point-identified from drop-out bids (Haile and Tamer 2003)
- Krasnokutskaya (2011) auction-level UH correction via method-of-moments + best-linear-predictor shrinkage
- Athey--Seira (2011) treatment of equilibrium SME entry as observed Poisson arrival rates
- BNE Monte Carlo (B = 2,000) over scenarios S<sub>1</sub>, S<sub>2</sub>, S<sub>3</sub>, V0--V3
- Cluster bootstrap at the auction level (B<sub>bs</sub> = 500)
- Saez--Stantcheva (2016) generalized social-marginal-welfare-weight identity

**Headline magnitudes.** Within-auction share of the simulated total effect: 74.5% (non-pharma), 73.3% (pharma), stable in the 73--85% range across cost-distribution estimators and across the strict-invariance benchmark. Welfare cost at λ = 0.30: 28.7% of p<sub>S<sub>1</sub></sub> (non-pharma), 47.0% (pharma). 10% price preference welfare-dominates the set-aside in non-pharma under both specifications; ranking bifurcates in pharma.

**Robustness.** Strict primitive invariance, F<sub>c</sub> regime (losers-only / all-bidders / Turnbull NPMLE), kernel bandwidth, sample filter, temporal window (6m / 12m / 18m), alternative policy variants (V0--V3).

**Online appendix.** 15 sections including IPV-relaxation Gaussian copula sensitivity, Maskin--Riley FPSB calibration of V3, full λ-grid welfare CIs, Convite cross-modality consistency, Conley--Decarolis collusion screen, primitive-invariance KS tests.

**Title.** Renamed from *The Price of Protecting Small Firms* to **The Cost of Inclusion: Decomposing Bidder Exclusion in Public Procurement**, reflecting the structural focus on within-auction (sheltered bidding) vs. participation-margin decomposition.

---

## March 2026 (v4)

- *Fiscal Cost Quantification* subsection added to reduced-form manuscript (R\$84.5--85.8 million)
- 5 advanced econometric methods bolted onto DiDiR: HonestDiD, Lee bounds, causal forest, quantile DiD, Gelbach decomposition
- 18 tables / 15 figures total

## March 2025 (v2--v3)

- Full R/fixest pipeline with 14 tables and 10 figures
- Robustness: placebo tests, alternative clustering, winsorization, randomization inference
- Extensions: real prices, extensive margin, efficiency, winner composition, heterogeneity by item value and PBU type
- MkDocs documentation site

## January 2021 (v1, first version)

- Initial manuscript with core DiDiR results
- 4 main outcome variables: prices, firms, bids, distance
- 3 time windows with baseline and PBU-controlled specifications
