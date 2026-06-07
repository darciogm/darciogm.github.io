---
paper: sme-public
---

# Changelog

## v8 — June 2026 (robustness bounds + §6 compression)

- **Exit-at-cost markup bound (Lever A)** added. Reading drop-outs as exits bounds bidder costs from above (Haile–Tamer 2003); a markup common to both types cancels in the type-differential, so the only threat to the decomposition is a *type-differential* exit markup. The exclusion-dominant ordering survives a differential exit markup up to **0.29 of the exit price** in non-pharmaceuticals, and across the **entire [0, 0.30] grid** in pharmaceuticals. It reverses only if SMEs leave roughly **30% more surplus unbid than non-SMEs at every auction** — an implausibly large, systematically signed wedge.
- **Entry-response bound (Lever C)** added. The welfare ranking (the 10% preference $V_3 \succ$ full set-aside $V_0$) is a *bound*, not a free-entry model — entry costs are not identified. The ranking survives until the preference discourages **~90% of non-SME entry** in non-pharmaceuticals, and complete removal of non-SME entry in pharmaceuticals.
- **Bootstrap CIs disclosed as entry-fixed.** The cluster-bootstrap intervals on the decomposition propagate cost-primitive and Monte Carlo sampling uncertainty but **hold the entry count fixed** — entry-count uncertainty is not bootstrapped, and the bounds above (not the CIs) carry the entry-response sensitivity.
- **§6 robustness restructured.** The three secondary buyer/conduct threats — coordination, reference-price evolution, and threshold manipulation — were compressed from three body subsections into a single one ("Conduct, reference prices, and threshold gaming"), with detail moved to the appendix (coordination → **OA-D**, reference-price evolution → **OA-D.4**, threshold gaming → **OA-B**). The findings are unchanged: no post-policy coordination intensification, a small reference-price effect, and no threshold bunching. The threat-assessment table still maps every threat.

## v8 — June 2026 (econ-write audit pass)

- **Bootstrap 95% CIs on the central decomposition** (Table 3): the lost-discipline, protected-pool offset, and net components now carry cluster-bootstrap intervals. Non-pharma: exclusion **+0.371 [0.293, 0.464]**, pool offset **−0.144 [−0.239, −0.046]**, net **+0.227 [0.180, 0.291]**, absolute exclusion share **72% [64.5, 86.8]**. The offset is negative in 99.8% of replicates, the net effect is positive in 100%, and the exclusion share exceeds 50% in 100% — the exclusion-dominant ordering survives inference.
- **Figure 1 is now the decomposition bar chart**. The first-stage participation event study moves to **Online Appendix Figure OA-1 (OA-B)**: its pre-trend is statistically rejected, and a structural paper should not lead with an imperfect DiD figure.
- **Abstract reworded to 176 words** (from 196), tightening the price-formation framing.
- **Structural↔DiD reconciliation** added: the full-exclusion net effect (0.227) × 43% adherence ≈ 10%, matching the reduced-form DiD price effect of 10–11%.
- **Headline stated up front**: the 28.9% static welfare loss at λ=0.30 now appears in the introduction, with a one-line roadmap of the paper.
- **Light de-repetition pass** across sections.
- **Table 1 gains cross-auction SDs**; the "Excl./net" ratio (164%) column is demoted to a table note (the absolute exclusion share of 72% is the headline dominance statistic). A concrete **future-research paragraph** was added to the conclusion (ComprasNet cross-jurisdiction replication + firm-panel dynamic gains).

## v8 — May 2026 (JPubE submission)

- **Title** is **The Price of Exclusion: SME Set-Asides in Public Procurement**. The framing moves from "sheltered bidding" (a within-auction conduct claim) to **price formation under exclusion** (the order statistic that prices the contract changes when non-SMEs are removed).
- **Decomposition rebuilt** as $S_3 - S_1 = (S_2 - S_1) + (S_3 - S_2)$: a **lost competitive discipline** component (exclusion of non-SMEs, SME pool held fixed) and a **protected-pool offset** (post-policy SME pool replacing pre-policy). The two components are reported as counterfactual price-formation objects, not reduced-form treatment effects.
- **Headline numbers** at &lambda;=0.30: non-pharma static welfare loss **28.9%** of the open-regime price; exclusion accounts for **72%** of the price decomposition (absolute share). Implied SME welfare weight to prefer full exclusion to a 10% preference: **2.42** (non-pharma) and **2.61** (pharma). Pharmaceuticals reported as a boundary case rather than a second headline.
- **Empirical bidder-count robustness** (Online Appendix OA-D.2): replacing the Poisson bidder-count draws with sampling from the empirical class-period-type count distributions attenuates net effects by roughly a quarter but leaves the exclusion-dominant decomposition intact (exclusion shares 69.4% non-pharma, 63.1% pharma).
- **Threat-assessment table** (Section 6, Table 5): eight identification and sensitivity threats mapped to diagnostic, finding, and remaining limitation. Closes the most predictable referee-level rejection channels.
- **JPubE compliance**: Elsevier Harvard bibliography style, abstract under 250 words, 4 keywords + 5 JEL codes, highlights file, generative-AI declaration, acknowledgements section, data-availability statement.
- 45 cited references covering procurement-policy classics (Marion 2007; Nakabayashi 2013; Krasnokutskaya–Seim 2011; Athey–Coey–Levin 2013), modern procurement empirical (Coviello–Mariniello 2014; Bosio et al. 2022; Best–Hjort–Szakonyi 2023; Decarolis et al. 2025; Coviello et al. 2026), Brazilian setting (Ferraz–Finan–Szerman 2016; Szerman 2023), auction theory canon (Vickrey 1961; Milgrom–Weber 1982; Haile–Tamer 2003; Athey–Haile 2002, 2007), recovery (GPV 2000; Bajari–Hortaçsu 2005; Krasnokutskaya 2011), welfare framework (Saez–Stantcheva 2016; Ballard et al. 1985; Hendren 2020; Finkelstein–Hendren 2020), and modern DiD literature.

## v6 — May 2026 (Sheltered Bidding framing — superseded)

- **Title rebranded** to **Sheltered Bidding: The Within-Auction Cost of SME Set-Asides** (commit `5d83c28`).
- **Abstract pivoted** to question-first structure with three headline numbers: ~10% DiD effect on winning prices; sheltered bidding = 2/3 to 3/4 of the simulated effect; R$55M/yr welfare cost on Group 65 alone (out of São Paulo's R$13B platform).
- **Sheltered bidding** elevated from descriptive label to characterized property; new policy-design framing.
- **Aggressive compression** (body 64→54pp; appendix 24→23pp) to fit JPubE conventions.
- **Macros** (`v6-jpube/output/values.tex`) become the single source of truth for every headline number in the manuscript.
- **Final pre-submission cleanup** (commit `d21754d`) + footnote translation of the PGE-SP Parecer 151/2017 ementa into English.

## v5 — April 2026 (Submission-ready, structural decomposition)

Structural decomposition replaces the v1--v3 reduced-form headline: asymmetric IPV reading of Pregão, type-specific cost distributions point-identified from drop-out bids (Haile and Tamer 2003), Krasnokutskaya (2011) auction-level UH correction, Athey--Seira (2011) treatment of equilibrium SME entry, BNE Monte Carlo, cluster bootstrap, Saez--Stantcheva (2016) welfare weights. Headline magnitudes: within-auction share ~74% in non-pharma, ~66% in pharma. Welfare cost 28.9%/44.8% of *p<sub>S<sub>1</sub></sub>* at λ = 0.30.

## March 2026 (v4, reduced-form layer)

- **Fiscal Cost Quantification** (v4 reduced-form): subsection added with R$84.5--85.8 million headline. **Superseded in v5/v6** by the structural welfare arithmetic (R$55--128M/yr, λ-grid, MCPF, Saez--Stantcheva weights).
- 5 advanced econometric methods: parallel trends sensitivity (HonestDiD), Lee bounds, causal forest, quantile DiD, Gelbach decomposition
- 4 new tables + 5 new figures (18 tables / 15 figures total)
- Expanded appendix with organized subsections and explanatory paragraphs
- Polished main body text (~10% expansion with references to advanced methods)
- New MkDocs page for advanced methods

## March 2025

- Full R/fixest pipeline with 14 tables and 10 figures
- Robustness checks: placebo tests, alternative clustering, winsorization, randomization inference
- Extensions: real prices, extensive margin, efficiency, winner composition, heterogeneity by item value and PBU type
- MkDocs documentation site

## January 2021 (First Version)

- Initial manuscript with core DiDiR results
- 4 main outcome variables: prices, firms, bids, distance
- 3 time windows with baseline and PBU-controlled specifications
