# Auditoria Referee 2 — Pré-Monitoria 2 (Aula 4)

**Arquivo:** `platform/pre-monitoria-02.html`
**Data:** 2026-05-09
**Modo:** Referee 2 implacável + fixes in-place.

## Veredicto

**10 / 10 pós-fixes.** Pré-M2 livre de bugs aritméticos, calibre coerente com EG-trocas N&S 12e Cap. 13, todas as alocações fechando viabilidade, DOIs verificados, anti-padrão sweep zero, não-duplicação confirmada vs. Aula 4.

## Fixes aplicados

| # | Severidade | Local | Bug | Diff |
|---|---|---|---|---|
| 1 | 🟡 Média (DOI faltante para citação canônica) | L. 186 | "Debreu-Scarf (1963)" sem DOI nem volume/issue/pages — citação incompleta para um resultado central. | Adicionado: "Debreu & Scarf (1963), *International Economic Review* 4(3): 235–246, **DOI 10.2307/2525306**" (verificado via crossref). Também separado Edgeworth (1881) como livro (sem DOI). |
| 2 | 🟡 Média (linguagem imprecisa) | L. 320 | "curvas de indiferença = arcos de círculo *côncavos* (vistos do conjunto preferido)" — descrição metafórica e geometricamente confusa para \(u(x_1, x_2) = x_1^2 + x_2^2\) (cujas IC são círculos centrados na origem; o problema é o conjunto preferido ser o *exterior*, não a curva ser "côncava"). | Reformulado: "Curvas de indiferença são arcos de círculo centrados na origem; o conjunto preferido \(V^A = \{x : x_1^2 + x_2^2 > c\}\) é o *exterior* do círculo — **não-convexo**. Verificação direta..." A álgebra do contraexemplo (combinar (2,0) e (0,2) → (1,1) com u=2<4) preservada. |

## Verificação numérica (ponto-a-ponto)

| Checkpoint | Conta | Verificação |
|---|---|---|
| S2 q1 — CD pesos sim. α^A=α^B=½, ω^A=(1,4), ω^B=(3,0) | x_1^A+x_1^B = (m^A+m^B)/(2p_1) = (4p_1+4p_2)/(2p_1) = 4 ⟺ p_1=p_2 | (a) p_1*/p_2*=1 ✓ |
| S2 ext (b) Leontief sim. ω̄=(6,6) | x_1^i = m^i/(p_1+p_2); soma = (6p_1+6p_2)/(p_1+p_2) = 6 para todo p≫0 — preço relativo indeterminado, alocação varia com p₁/p₂ | ✓ argumento correto |
| S3 q1 — Núcleo I=3, x^A=x^B=x^C=(1,1) | mostrado no setup que é EC com p*=(1,1); por 1º TBE está no núcleo | (a) ✓ |
| S3 ex 1 — bloqueada por {C} | x^A=(3,0), x^B=(0,3), x^C=(0,0). u^C(0,0)=0 < u^C(ω^C)=u^C(1,1)=1; {C} bloqueia trivialmente | ✓ |
| S3 ex 2 — Pareto-eficiente fora do núcleo | x^A=x^B=(1,5; 1,5), x^C=(0,0). PE entre A,B; {C} sozinho com ω^C=(1,1) consegue u=1>0 | ✓ argumento correto |
| S4 q1 — saciedade falha qual passo? | Passo 2 (LNS) é onde a contrapositiva ("se sobra renda então utilidade menor") quebra sob saciedade | (b) ✓ |
| S5 q1 — não-convexidade falha 2º TBE | teorema de separação exige V^i convexo; sem convexidade não há p* separador | (c) ✓ |
| S5 ext — u^A=x_1²+x_2²: combinar (2,0) e (0,2) → (1,1) | u(2,0)=u(0,2)=4; u(1,1)=2 < 4 — V^A com c=4 não contém ponto médio | ✓ |

Zero erro residual.

## DOIs (após fix 1)

| Citação | DOI | Verificação |
|---|---|---|
| Debreu & Scarf (1963), *Int. Econ. Rev.* 4(3):235–246, "A Limit Theorem on the Core of an Economy" | `10.2307/2525306` | ✓ Crossref |
| Edgeworth (1881), *Mathematical Psychics* | livro, sem DOI | ✓ marcado como livro |

(P-M2 cita poucos papers — a estrutura é conceitual, e os papers acima são os únicos com DOI obrigatório.)

## Anti-padrão sweep

- `\succsim` → **0**.
- `MRS` em vez de `\text{TMS}` → **0** (L. 57 usa `\text{TMS}` corretamente).
- Decimais com `\{,\}` → ✓ (`1{,}5`, `1{,}75`, `2{,}67`, `3{,}33` etc.).
- "Todas as anteriores" / "nenhuma" → **0**.
- Distratores triviais → **0**. Em S5 q1, alternativas (a)-(d) testam 4 confusões pedagógicas distintas (1º vs 2º TBE; PE existência; mecanismo de separação; transferências e preços).
- Placeholder / `[VERIFICAR DOI]` → **0**.

## Não-duplicação com Aula 4

| Extensão | Aula 4 cobre | Status |
|---|---|---|
| Variar formas funcionais (CD pesos sim., Leontief, CES) | só CD assimétrica original | ✓ extensão (varredura) |
| Núcleo em I=3 com bloqueio por singleton/par | só I=2 (intervalo na contract curve) | ✓ extensão genuína |
| Onde LNS é decisiva no 1º TBE (Passo 2) + saciedade | enuncia 1º TBE com LNS, sem dissecar a falha | ✓ extensão (mecânica fina da prova) |
| Papel da convexidade no 2º TBE via separação | enuncia 2º TBE; aqui prova-esqueleto via Minkowski | ✓ extensão (mecanismo) |

Confirmada não-duplicação. Pré-M2 deixa pontas explícitas para Alberto: corner-dotações em Leontief, coalizão intermediária {A,C}, contraexemplo numérico fechado de saciedade falhando 1º TBE.
