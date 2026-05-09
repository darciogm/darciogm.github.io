# Auditoria Referee 2 — Pré-Monitoria 1 (Aulas 1–3)

**Arquivo:** `platform/pre-monitoria-01.html`
**Data:** 2026-05-09
**Modo:** Referee 2 implacável + fixes in-place.

## Veredicto

**10 / 10 pós-fixes.** Pré-M1 livre de bugs aritméticos, calibre N&S/J-R coerente, DOIs verificados, anti-padrão sweep zero, não-duplicação confirmada vs. Aulas 1–3.

## Fixes aplicados

| # | Severidade | Local | Bug | Diff |
|---|---|---|---|---|
| 1 | 🔴 Crítica (DOI fabricado) | L. 314 | DOI `10.1016/j.mathsocsci.2010.07.002` aponta para Eichberger & Guerdjikova (2010), "Case-based belief formation under ambiguity", *Math. Soc. Sci.* 60(3):161–177 — **não** é Heijman & Mouche sobre Giffen. Crossref confirmou. | Substituído pelo capítulo de livro canônico Heijman & von Mouche (2011), "A Child Garden of Concrete Giffen Utility Functions", em *New Insights into the Theory of Giffen Goods* (Lecture Notes Econ. Math. Systems vol. 655), pp. 69–88, **DOI 10.1007/978-3-642-21777-7_6** (verificado via crossref). Também corrigido grafia "Mouche" → "von Mouche". |
| 2 | 🔴 Crítica (gabarito errado) | L. 406 | Spoiler do "sabor ANPEC" item 4 dizia "depende... geralmente diagonal nas posições yy e xx com cruzados zero". **Falso**: para \(u(x,y) = x + \ln y\), derivando a Hicksiana \(h_x = u - \ln(p_x/p_y)\) e \(h_y = p_x/p_y\), os cruzados são \(\partial h_x/\partial p_y = +1/p_y = \partial h_y/\partial p_x\). Bens são substitutos Hicksianos, matriz de Slutsky **não é diagonal**. | Corrigido para "**4-F** (a matriz de Slutsky *não* é diagonal — \(\partial h_x/\partial p_y = +1/p_y\) e \(\partial h_y/\partial p_x = +1/p_y\), simétricos e *positivos*; bens são *substitutos* Hicksianos)". Também precisei o spoiler dos itens 1, 2, 3 com a fórmula explícita de \(h\). |

## Verificação numérica (ponto-a-ponto)

| Checkpoint | Conta | Verificação |
|---|---|---|
| S2 q1 — CES α=½, ρ→−∞, x=(1,4) | u → min(1,4) = 1 | (c) ✓ |
| S3 q1 — CES α=½, ρ=−1, p=(1,4), m=5 | r=½; α^{1/(1−ρ)}=1/√2; denom=(1/√2)(1+2)=3/√2; x₁=[(1/√2)·1]/(3/√2)·5=5/3≈1,667; por dualidade h₁(p,v(p,m))=x₁=5/3, entre 1 e 2 | (b) ✓ |
| S4 q1 — Slutsky propriedades | (c) "definida positiva" — falso, S é semidefinida **negativa** | (c) ✓ |
| S5 q1 — CD α=½, p⁰=(1,1), I=4, p₁=4 | E(p,U)=2U√(p_x p_y), U⁰=2; E(p⁰,U⁰)=4; E(p¹,U⁰)=2·2·√4=8; CV=8−4=**4** | (b) ✓ |
| S4 ext (b) Wold-Juréen | x₁=1+√(p₂/p₁); p=(1,4): x₁=3; p=(1,21;4): x₁=1+2/√1,21=1+1,8181=2,818; Δx₁=−0,182 | ✓ |
| S4 ext (d) ∂x₁/∂p₁ | =−½·√p₂·p₁^{−3/2}; em (1,4): −½·2·1=−1 | ✓ |

Zero erro residual.

## DOIs (após fix 1)

| Citação | DOI | Verificação |
|---|---|---|
| Hicks & Allen (1934), *Economica* 1, "A Reconsideration of the Theory of Value, Part I" | `10.2307/2548574` | ✓ Crossref (Hicks & Allen, 1934, *Economica* 1(1):52) |
| Stone (1954), *Economic Journal* 64(255), "Linear Expenditure Systems..." | `10.2307/2227743` | ✓ Crossref |
| Heijman & von Mouche (2011), Lecture Notes Econ. Math. Syst. vol. 655 | `10.1007/978-3-642-21777-7_6` | ✓ Crossref (substituído via fix) |
| Wold (1943), *Skand. Aktuarietidskr.* 26 | `10.1080/03461238.1943.10404744` | ✓ T&F arquivo histórico |
| Debreu (1954) — capítulo livro Wiley sem DOI canônico | — | ✓ referência sem DOI marcada como tal |

## Anti-padrão sweep

- `\succsim` em vez de `\succeq` → **0 ocorrências** (todas usam `\succeq`).
- `MRS` em vez de `\text{TMS}` → **0**. (P-M1 não usa nem TMS nem MRS — foco em UMP/Slutsky/dualidade.)
- Decimais com `\{,\}` → ✓ todos (`2{,}5`, `1{,}21`, `2{,}818`, `0{,}182` etc.).
- "Todas as anteriores" / "nenhuma" → **0**.
- Distratores triviais → **0** (todos com pegada didática: confundir com CD, com aritmética, com simetria).
- Placeholder / `[VERIFICAR DOI]` → **0** após fix 1.
- Construção lex canônica `x^n = (1−1/n, 2) → (1, 2)` vs. `(1,1)` → ✓ (L. 125).

## Não-duplicação com Aulas 1–3

| Extensão | Aula coberta | Status |
|---|---|---|
| Limites CES via L'Hôpital (CD, Leontief, linear) | Aula 1 enuncia casos-limite, não prova | ✓ extensão genuína |
| Lex e falha de continuidade — não-fechamento do conjunto inferior | Aula 1 trata axiomaticamente | ✓ extensão (prova explícita) |
| Roy/Shephard em forma fechada CES | Aula 2 deriva em CD apenas | ✓ extensão (forma rara) |
| Slutsky em Stone-Geary + Wold-Juréen | Aula 3 trata em CD | ✓ extensão (preferência não-CD) |
| N&S 4.10 + J-R 1.38 + sabor ANPEC | exercícios-âncora externos | ✓ não duplica avaliativos |

Confirmada não-duplicação. Pré-M1 deixa pontas explicitamente para o Alberto (Stone-Geary completo, Giffen estrita, AIDS empírico).
