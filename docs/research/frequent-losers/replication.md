---
paper: frequent-losers
---

# Replication

<!-- REVISED: canonical-target reframe 2026-06-04 -->
<!-- REVISED: hostile-review armor 2026-06-04 -->

This page describes how to reproduce every table and figure in the paper,
and the data-access and confidentiality position that governs what can be
shared.

---

## Data Access and Confidentiality

!!! warning "BEC microdata are not publicly redistributable"
    The BEC-SP procurement microdata underlying this paper are
    **administrative records** governed by the data provider's terms and
    are **not publicly redistributable**. The authors cannot post the raw
    or processed firm-level microdata as part of a public replication
    package. **No raw CNPJ (firm-tax-identifier) values appear in any
    public material**, including the derived frames described below.

What **can** be shared:

- **Full analysis code** and the complete output → script map, so that
  every table, figure, and `\val*` macro is traceable to the program that
  produced it.
- **Derived, anonymized firm frames** (e.g. per-firm participation counts,
  always-loser flags, and score values with identifiers replaced by
  opaque keys) sufficient to reproduce the downstream analysis without
  exposing raw identifiers.
- **CADE rulings**, which are **public**: the adjudication anchors come
  from published CADE decisions and can be cited and re-derived from the
  public record.
- **Seeds, logs, and the computational environment** described below.

What **cannot** be shared:

- Raw or processed **BEC microdata with firm identifiers**.
- Any artifact containing **raw CNPJ** values.

!!! info "JLEO data policy and proprietary exemption"
    Consistent with JLEO policy, the authors will post data, programs, and
    logs **within three years of publication unless a proprietary
    exemption applies**. The BEC microdata fall under such a **proprietary
    exemption**: they are administrative records the authors are not
    licensed to redistribute. The authors **cooperate fully with bona
    fide replication requests** — including sharing code, the
    output → script map, anonymized derived frames, and guidance for
    obtaining the underlying data from the original provider.

---

## Replication Package

The shareable package contains all **code**, the **output → script map**,
**anonymized derived frames**, and manuscript source files needed to
reproduce the results from a licensed copy of the BEC microdata. The
pipeline runs in two stages: a Python data build that produces the
analysis Parquets once, and an R analysis pipeline driven by a single
master script.

!!! info "Repository structure"
    Materials live under `paper3-frequent-losers/`. `scripts/` contains the
    Python build and the numbered R pipeline; `data/processed/` holds the
    Parquet inputs (git-ignored, **not redistributable** — built locally
    from a licensed BEC copy); `output/tables/` and `output/figures/` hold
    generated artifacts; the submission-clean manuscript source is in
    `work/v22-editor/submission_clean/`.

---

## Software Requirements

### Python (data build)

| Software | Version | Purpose |
|----------|---------|---------|
| **Python** | 3.12 | Data preprocessing |
| `pandas` / `pyarrow` | latest | Parquet I/O |
| `duckdb` | latest | Out-of-core joins and aggregation |

### R (analysis pipeline)

| Software | Version | Purpose |
|----------|---------|---------|
| **R** | 4.5+ | Statistical computing |
| `fixest` | latest | High-dimensional fixed effects (OpenMP, 12 threads) |
| `data.table` + `arrow` | latest | Fast manipulation and Parquet reads |
| `duckdb` | latest | Joins and aggregation over Parquet |
| `modelsummary` + `kableExtra` | latest | LaTeX regression tables |
| `ggplot2` | latest | Publication-quality figures |
| `pROC` | latest | AUC and DeLong incremental tests |
| `ranger` | latest | Random forests for the bid-distribution / combined benchmark |
| `survival` | latest | Exit-margin / persistence model (Appendix B) |
| `sensemakr` | latest | Cinelli & Hazlett (2020) sensitivity |
| `MatchIt` | latest | CEM / IPW matching |
| `did` | latest | Callaway & Sant'Anna (2021) staggered DiD |

### Manuscript

| Software | Version | Purpose |
|----------|---------|---------|
| **LaTeX** | TeX Live 2024+ | Typesetting |
| `elsarticle` | latest | Journal document class |
| `chicago` | latest | Bibliography style (natbib + bibtex) |

---

## Data Sources

### Primary datasets (built locally, not redistributable)

The pipeline reads from `data/processed/` (built once by the Python
stage from a **licensed** BEC microdata copy). These files contain firm
identifiers and are **git-ignored and not redistributable**:

| File | Rows | Description |
|------|------|-------------|
| `BEC_collapse_final.parquet` | 4.5M | Collapsed tender-item dataset |
| `Firms_final.parquet` | 39.6K | Firm registry (anonymized key, CNAE, size, location) |
| `LOSERS_rebuilt.parquet` | 85K | FL counts per tender-item |
| `FREQ_PARTICIP_rebuilt.parquet` | 16.8K | Always-losers with participation counts |
| `firm_tender_map.parquet` | 16.8M | Firm × tender participation + won flag |
| `firm_loss_stats.parquet` | 41K | Per-firm aggregated stats (win rate, always-loser flag) |
| `bid_level_full.parquet` | 40M | Raw bid-level data (forensic-recoverable layer) |

!!! warning "These files are not shared"
    The tables above describe the **local** build only. They contain
    firm-level administrative records (built from a licensed BEC copy) and
    are **not part of the public replication package**. The
    **anonymized derived frames** that *are* shareable replace any raw
    identifier with an opaque key; **no raw CNPJ value appears in any
    shared artifact**.

### CADE adjudication anchors (public record)

The adjudication anchors are derived from **published CADE rulings**, which
are part of the public record. In the shareable package, any firm
appearing in a derived crossmatch is referenced by an **opaque anonymized
key**, never by raw CNPJ:

| Derived frame | Rows | Description |
|------|------|-------------|
| CADE cartel rulings (public) | 12 cases | Adjudicated procurement-cartel cases used as legal anchors |
| Direct CADE defendants | — | Direct defendants named in the rulings (legal anchors) |
| Adjudication-anchored cobidders | 651 | Always-loser firms that share ≥1 BEC tender-item with a BEC-active direct defendant (anonymized keys; **not** cartel members) |

!!! note "The label rule (canonical, non-circular)"
    The main validation label is the **broad adjudication-anchored
    cobidder target**: a unique **always-loser** firm that shares at least
    one BEC tender-item with a **BEC-active direct CADE defendant**. Direct
    defendants are excluded, and the **frequent-loser flag is never used to
    construct the label**. There are **651 positives** (341 frequent-loser,
    310 non-frequent-loser — the composition shows the label is not
    flag-conditioned). A contact-intensity sensitivity (≥ 2 shared
    tender-items) gives 368 positives. The cobidders are firms with
    **adjudication-anchored exposure** — they co-appeared with direct
    defendants in adjudicated environments — **not** cartel members, and the
    label inherits CADE's selection of which cartels to adjudicate.

### Frequent-loser construct

| Step | Definition |
|------|------------|
| Score | *s*ᵢ = log(1 + *T*ᵢ), the continuous ordering over participation counts *T*ᵢ |
| Always-losers | Firms with `win_rate == 0` across all 2009–2019 tenders (16,843 firms) |
| Administrative cutoff | FL14 = (*T*ᵢ ≥ 14), i.e. `median + 1.5 × IQR` of always-loser participation counts |
| Frequent losers | Always-losers at or above the cutoff → 2,735 firms |
| Treatment | `losers = 1` if a tender-item has ≥1 FL participant |

!!! note "FL14 is administrative, not structural"
    FL14 is an **administrative, auditable simplification** of the
    continuous ordering *s*ᵢ — never an ontologically special threshold.
    The cutoff `median + 1.5 × IQR` (not the standard Tukey
    `Q3 + 1.5 × IQR`) is intentional and is preserved across
    `00_build_bidlevel.py`, `04_figures.R`, and `05_robustness.R`. The
    construct orders **forensic priority**; the binary cutoff is a
    deployable convenience, not the object of inference.

---

## Federal (ComprasNet) Replication — the Second Platform

!!! info "One config, two sources — `--source={bec,comprasnet}`"
    As of v23 the audit pipeline runs on **two procurement platforms** from a
    single code base. Every analysis script accepts a `--source=` flag
    (default `bec`) and reads **all** of its data paths, constants,
    key-extraction lambdas, and output directories from one abstraction layer,
    `scripts/utils/source_config.R`. There is **no forked per-platform logic**:
    BEC behaviour is byte-identical to the single-platform release, and the
    federal pipeline differs only where the data genuinely differ. To run the
    federal leg, every numbered script is invoked with
    `--source=comprasnet`; the orchestration is in
    `scripts/build/run_federal_chain.sh`.

### Federal data provenance (public federal records)

The federal panel is assembled from **two public federal sources** — no
licensed microdata and, importantly, **no federal bid microdata**: the public
federal data are **participation-only**, so no bid-distribution / Imhof
forensic benchmark is constructible federally (a platform-observability
difference, documented as on-thesis).

| Source | Role | Coverage |
|--------|------|----------|
| **Portal da Transparência (CGU) bulk download** | Participation panel — who participated / won, buyer (UASG), item | 2013–2019 (`item_level_panel.parquet`) |
| **`compras.dados.gov.br` API (`item_pregao`)** | Price signals only (`menorLance`, `valorEstimadoItem`, `valorHomologadoItem`) | parsed into a price panel; **not used for any federal price claim in this submission** |

!!! warning "No federal price claim is made"
    The federal price panel is built (12.4M rows) but is a **future-upgrade
    hook only**. The current submission makes **zero federal price claim**;
    the federal leg is participation + winner-flag only.

### Federal pipeline chain

The federal chain runs the same numbered scripts as BEC, `00 → 12b`, each with
`--source=comprasnet`, plus one federal-only robustness leg:

| Script | Federal role |
|--------|--------------|
| `00 … 12b` (the BEC chain) | Identical audit battery, re-pathed and re-keyed via `source_config.R` |
| `13_srp_stratified_validation.R` | **Federal-only SRP leg** — stratifies the two federal Pregão variants (regular `po_phase_code = 5` vs SRP `po_phase_code = 9999`) and checks the loser-side signal is consistent across them (referee attack A7) |

!!! note "Federal key semantics differ from BEC"
    BEC and ComprasNet share the same column **names** but not the same key
    **semantics**, which is precisely why a single config exists. Federal
    `numerodaoc` is a 9-char string whose trailing digits are the *numbering*
    year — which differs from the *award* year for ≈ 23% of rows — so the
    federal year is **never string-extracted**; it comes from a
    `(numerodaoc, codigoitem) → year` lookup. The federal buyer (`codigo_ug`,
    6-digit UASG) is a separate column, not a substring. Convite is extinct
    federally (pure Pregão), so the BEC modality stratification is replaced by
    the SRP-vs-regular contrast.

### Canonical federal targets (same IQR rule, re-estimated cut)

The federal targets are built by the **same rules** as BEC — the FL cut is
re-estimated on the federal data, **not transported** from BEC:

| Quantity | Federal value | BEC analogue |
|----------|--------------|--------------|
| Participation panel | 51.0M rows / 92,600 firms | — |
| Always-losers | 35,943 | 16,843 |
| FL cut (`median + 1.5 × IQR`, `≥`) | **32** → **6,491** frequent losers | 14 → 2,735 |
| Broad-rule cobidders | 3,850 | — |
| Broad-AL cobidders (main target) | **195** (94 FL / 101 non-FL) | 651 |
| CADE cases (numbered) | 7 | 12 |
| Window | 2013–2019 | 2009–2019 |

!!! warning "Partially overlapping legal anchors"
    The federal target is **establishment-anchored** on the same family of
    CADE cartels as the BEC portfolio. The 7 federal cases are the *same
    cartels* as BEC's, **partially overlapping** — so the two legs are
    correlated, not fully independent. The federal leg tests the
    **portability** of the audit protocol and the loser-side construct, not an
    independent ground truth; it is a second-platform demonstration,
    **provisional pending genuinely independent anchors**, not a promotion to
    "Confirmed." The cobidder count was rebuilt establishment-anchored (CADE
    linkage v3), with the establishment-vs-`raiz` grain difference verified to
    be zero.

---

## Running the Analysis

### Step 1 — data build (Python, ~6 min, only if Parquets are missing)

```bash
cd paper3-frequent-losers
python3 scripts/00_build_bidlevel.py
```

### Step 2 — full R pipeline (~8 min on 16 cores)

```bash
cd paper3-frequent-losers
Rscript scripts/00_master.R
```

The master script runs the core pipeline sequentially as subprocesses:

| Script | Purpose | Key output |
|--------|---------|------------|
| `00_build_canonical_validation_targets.R` | Build the canonical non-circular validation label (651 always-loser cobidders sharing ≥1 BEC tender-item with a BEC-active direct CADE defendant; FL flag never used) | `outputs/targets/canonical_target_counts.csv` |
| `01_clean.R` | Load Parquets, extract BEC keys, merge LOSERS, filter | `/tmp/p3_prepared.rds` |
| `02_analysis.R` | Main regressions (4 DVs × 4 specs) | `/tmp/p3_models.rds` |
| `03_tables.R` | LaTeX tables | `output/tables/tab_*.tex` |
| `04_figures.R` | FL distribution, IQR threshold, summary figures | `output/figures/fig_*.pdf` |
| `05_robustness.R` | Threshold sensitivity, continuous treatment, clustering, sensemakr, placebo | `tab_threshold_*.tex` |
| `06_did_temporal.R` | Callaway & Sant'Anna staggered DiD | `tab_did_temporal.tex` |
| `07_heterogeneity.R` | By procedure type, buyer size, item group | `tab_heterogeneity*.tex` |
| `08_additional_dvs.R` | Price ratio, procedure duration | `tab_additional_dvs.tex` |
| `09_matching.R` | CEM + IPW matching, balance table | `tab_matching.tex` |
| `10_fl_characteristics.R` | FL firm characterization (size, age, CNAE) | `tab_fl_characteristics.tex` |
| `12_audit_armor.R` | Anchor-agnostic armor battery: exposure tiers (observed / plug-in / firm-LOO / label-blind), within-stratum granularity sweep + positive control, powered permutation, label-frozen timing, regenerated defendant roles | `outputs/diagnostics/audit_armor/` |
| `12b_audit_armor_fixup.R` | Fixups / regeneration for the armor pack (`\valArmor*` macros) | `outputs/diagnostics/audit_armor/` |

!!! note "Canonical-label, decomposition, audit, and frontier scripts"
    The canonical validation label is built by
    `00_build_canonical_validation_targets.R` (651 positives; FL flag never
    used), and the contact-intensity sensitivity (≥ 2 shared tender-items,
    368 positives) by `02b_opportunity_sensitivity_contact2.R`. The
    opportunity decomposition (raw vs label-blind opportunity vs
    within-stratum AUC and the nested-increment DeLong test), the
    permutation and negative-control audits, the leakage / contamination
    and timing audits, the leave-largest-case-out
    single-case-concentration audit, the bid-distribution benchmark, and
    the cost–recall frontier (K1 grid, firm-vs-bid-row denominators) are
    produced by additional numbered scripts (e.g.
    `31_imhof_full_pipeline.R`, `40_leakage_audit_d3.R`, the
    decomposition/timing scripts, and the architecture/frontier scripts).
    The anchor-agnostic **armor battery** — exposure tiers (observed contact
    0.905 / plug-in 0.985 / firm-LOO 0.855 / label-blind 0.553), the
    within-stratum granularity sweep with planted positive control (0.953),
    the powered permutation, and the label-frozen timing benchmark — is
    produced by `12_audit_armor.R` and `12b_audit_armor_fixup.R`, writing to
    `outputs/diagnostics/audit_armor/` (macros `\valArmor*`).
    Each `\val*` macro in `values.tex` carries an explicit `% src:` line
    naming the producing script and output CSV — the **output → script
    map** that travels with the shareable package.

!!! tip "Seeds"
    Every script that draws random numbers (bootstrap permutations,
    cross-validation folds, ranger forests, matching) sets an explicit
    seed at the top, so the audit results — including the B = 2,000 sham
    permutation, the K-fold CV, and the bootstrap intervals — reproduce
    bit-for-bit on a given environment.

### Step 3 — manuscript compilation

```bash
cd paper3-frequent-losers/work/v22-editor/submission_clean
pdflatex -interaction=nonstopmode paper_submission_clean.tex
bibtex paper_submission_clean
pdflatex paper_submission_clean.tex
pdflatex paper_submission_clean.tex
```

!!! note "Bibliography"
    The manuscript uses **natbib + bibtex** with the `chicago` style (NOT
    biblatex/biber). Use `bibtex` for the bibliography pass.

---

## Reproducibility Discipline

| Component | Specification |
|-----------|--------------|
| **Macro binding** | Every numeric claim is bound to a `\val*` macro in `values.tex`; no numerals are hardcoded into prose, captions, or table cells. |
| **Provenance** | Each macro carries a `% src:` comment naming the script and output CSV that produced it. |
| **Caching** | `/tmp/p3_prepared.rds` (analysis dataset) and `/tmp/p3_models.rds` (fitted models) for fast reload. |
| **Threads** | `fixest` and `data.table` use `min(detectCores(logical = FALSE), 16)`; DuckDB joins use `PRAGMA threads = 12`. |
| **Determinism** | The two-source package enforces deterministic ordering; bit-exact reproduction requires that enforced ordering. A DuckDB parallel-aggregation / emission-order nondeterminism was fixed by stabilizing tie-breaks to a total order, so the audit reproduces bit-for-bit on a given environment across both sources. |

---

## Computational Environment

| Component | Specification |
|-----------|--------------|
| **OS** | WSL2 on Windows (kernel 6.6) |
| **CPU** | 12–16 cores |
| **RAM** | 21 GiB |
| **R** | 4.5 |
| **Python** | 3.12 |

!!! tip "Runtime"
    The full pipeline takes approximately 8 minutes on the reference
    system. The most memory-intensive steps operate on the 40M-row
    bid-level data; these use DuckDB for out-of-core processing.
