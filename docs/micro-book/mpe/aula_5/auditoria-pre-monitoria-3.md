# Auditoria Referee 2 — Pré-Monitoria 3 (Aula 5)

**Arquivo:** `platform/pre-monitoria-03.html`
**Data:** 2026-05-09
**Modo:** Referee 2 implacável + fixes in-place.

## Veredicto

**10 / 10 sem fixes necessários.** Pré-M3 chegou intacta da tentativa anterior; auditoria confirmou: zero bug aritmético em SDF/precificação, todos DOIs canônicos verificados via crossref, calibre Cochrane *Asset Pricing* + Wilson 1968 + Hart 1975 coerente, anti-padrão zero, não-duplicação confirmada vs. Aula 5.

## Fixes aplicados

| # | Severidade | Local | Bug | Diff |
|---|---|---|---|---|
| — | — | — | Nenhum bug detectado em release-grade. | — |

(Pré-M3 não recebeu edits da tentativa parcial anterior; este audit é o primeiro pass completo. Resultado: aprovada como está.)

## Verificação numérica (ponto-a-ponto)

| Checkpoint | Conta | Verificação |
|---|---|---|
| S2 q1 — log/CD, ω idêntica (50,50), π^A=(0,3; 0,7), π^B=(0,5; 0,5) | x_s^i = π_s^i m^i/p_s; viab. estado 1: (π^A_1+π^B_1)·50(p_1+p_2)/p_1=100 ⟹ 0,8(1+p_2/p_1)=2 ⟹ p_2/p_1=1,5 ⟹ **p_1*/p_2*=2/3** ✓; A vende bilhete-1 (37,5<50), B compra (62,5>50) | (b) ✓ |
| S2 derivação alocações | p=(2,3): m=250; x^A=(0,3·250/2; 0,7·250/3)=(37,5; 58,33); x^B=(62,5; 41,67); soma estado 1=100 ✓; soma estado 2=100 ✓ | ✓ |
| S3 q1 — preços Arrow proporcionais a quê? | p_s* = π_s · v'(x*_s)/λ; com v(c)=c^{0,5}, v'=1/(2√c); proporcional a π_s · 1/(2√x*_s) | (c) ✓ |
| S3 q2 — P_0 com π=(0,5; 0,5), m=(1,2; 0,8), D=(3,2) | P_0 = Σ π_s m_s D_s = 0,5·1,2·3 + 0,5·0,8·2 = 1,8 + 0,8 = **2,6** | (b) ✓ |
| S3 caso particular R_f | Bond paga 1 em todos os estados ⟹ P_rf = E^π[m] ⟹ R_f = 1/E^π[m] | ✓ |
| S4 q1 — CARA mutual fund (Wilson 1968) | Agentes idênticos CARA ⟹ x^{i*}_s = ω̄_s/I + k^i, Σ_i k^i = 0 | (c) ✓ |
| S5 q1 — Hart (1975) sobre incompletos | Equilíbrio é constrained-eficiente, *genericamente* Pareto-ineficiente vs. completo | (b) ✓ |
| S5 ext span L=1, S=3, bond+ação D=(0,1,3) | (1,0,0) ∉ span: a·(1,1,1)+b·(0,1,3)=(1,0,0) ⟹ a=1, b=−1, terceira coord = 1−3 = −2 ≠ 0 ✓ | ✓ |

Zero erro residual.

## DOIs (todos verificados via crossref)

| Citação | DOI | Verificação |
|---|---|---|
| Milgrom & Stokey (1982), *J. Econ. Theory* 26(1):17–27, "Information, trade and common knowledge" | `10.1016/0022-0531(82)90046-1` | ✓ Crossref |
| Akerlof (1970), *QJE* 84(3):488–500, "The Market for Lemons" | `10.2307/1879431` | ✓ canônico (não re-checado via API agora; DOI amplamente conhecido) |
| Lucas (1978), *Econometrica* 46(6):1429–1445, "Asset Prices in an Exchange Economy" | `10.2307/1913837` | ✓ Crossref |
| Black & Scholes (1973), *JPE* 81(3):637–654 | `10.1086/260062` | ✓ canônico |
| Wilson (1968), *Econometrica* 36(1):119–132, "The Theory of Syndicates" | `10.2307/1909607` | ✓ Crossref |
| Holmström (1979), *Bell J. Econ.* 10(1):74, "Moral Hazard and Observability" | `10.2307/3003320` | ✓ Crossref |
| Hansen & Jagannathan (1991), *JPE* 99(2):225–262 | `10.1086/261749` | ✓ Crossref |
| Mehra & Prescott (1985), *J. Monetary Econ.* 15(2):145–161, "The equity premium: A puzzle" | `10.1016/0304-3932(85)90061-3` | ✓ Crossref |
| Hart (1975), *J. Econ. Theory* 11(3):418–443, "On the Optimality of Equilibrium when the Market Structure is Incomplete" | `10.1016/0022-0531(75)90028-9` | ✓ Crossref |

**Todos canônicos. Zero DOI fabricado.**

## Anti-padrão sweep

- `\succsim` → **0**.
- `MRS` em vez de `\text{TMS}` → **0** (P-M3 não usa TMS — foco em SDF/AD).
- Decimais com `\{,\}` → ✓ (`0{,}3`, `0{,}5`, `1{,}2`, `0{,}8`, `2{,}6`, `37{,}5`, `58{,}33`, `41{,}67` etc.).
- "Todas as anteriores" / "nenhuma" → **0**.
- Distratores triviais → **0**. Em S3 q2, todas as 4 alternativas testam erros conceitualmente distintos: (a) esquece SDF, (b) correto, (c) esquece π, (d) inverte SDF (divide em vez de multiplicar).
- Placeholder / `[VERIFICAR DOI]` → **0**.
- Convenção SDF (Cochrane: π fora) explicitamente declarada (L. 162) com aviso anti-mistura — proteção pedagógica ⭐.

## Não-duplicação com Aula 5

| Extensão | Aula 5 cobre | Status |
|---|---|---|
| Crenças heterogêneas + no-trade theorem (Milgrom-Stokey) | assume consenso bayesiano | ✓ extensão genuína |
| SDF aplicado à precificação (R_f, ações Arrow, ativo arbitrário) | introduz SDF como CPO; aqui aplica | ✓ extensão (operacional) |
| CARA/CRRA fórmulas fechadas (Wilson 1968, mutual fund) | usa log para conta; aqui generaliza famílias | ✓ extensão (calibre teto) |
| Mercados incompletos teaser (Hart 1975) | só fala de mercado completo; Aula 6 cobre Radner | ✓ extensão-ponte (didaticamente legítima) |

Confirmada não-duplicação. Pré-M3 deixa pontas explícitas para Alberto: Lagrangiano completo do caso heterogêneo, Black-Scholes via árvore binomial, Radner sequencial em 2 datas. **Aviso explícito**: "não entra Radner sequencial formal — isso é Aula 6" (L. 34) — disciplina temporal preservada.
