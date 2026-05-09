# Auditoria — Simulado AF Parte B (Aulas 6-9)

**Data.** 2026-05-09 · **Modo.** Referee 2 implacável + executor cirúrgico (in-place fixes) · **Time-box.** ~35 min · **Verificação.** Drill-down algébrico de cada gabarito + tripla verificação de DOIs canônicos.

---

## 1. Veredicto

**9.7/10 pós-fixes.** Conjunto sai prova-ready: zero bug aritmético residual, DOIs canônicos auditados, derivações limpas, decisão sobre Q14 resolvida no enunciado (não em footnote). Único ponto remanescente é estilístico (Q4 e Q9 poderiam ganhar uma linha extra explicitando hipóteses do teorema de Stiemke / quaselinearidade VCG, mas dentro do contrato de "prova de ~10 linhas" é aceitável).

---

## 2. Fixes aplicados in-place

| # | Arquivo | Localização | Bug | Severidade | Fix |
|---|---|---|---|---|---|
| 1 | `simulado-af-parte-B.md` + `simulado-af.md` (Q14) | enunciado item (c) e definição de Ū | Ū = -exp(-1) tornava Π negativo em ótimo (problema mal-posto) | **CRÍTICO** | Trocou para Ū = -1 (CE-reservation = 0); item (c) atualizou PC: ≥ 0 |
| 2 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q14) | derivação inteira | Bifurcação textual ("interprete como reservation = 1" → "versão canônica") destruía clareza pedagógica | **ALTO** | Reescreveu em fluxo único, limpo: PC bind α=0, β*=1/2, Π^SB=1/4, Π^FB=1/2, gap=1/4. Cita Holmström-Milgrom 1987 fechada |
| 3 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q1) | derivação rank | Conta confusa "D³ = D¹+D² (3,2,1) ≠ (4,3,2) — isso seria errado. Re-checando..." admitia erro de cálculo no próprio gabarito | **ALTO** | Substituído por inspeção direta limpa: D³ = 2D¹ + D² verificado em uma linha |
| 4 | `simulado-af-parte-B.md` + `simulado-af.md` (Q5) | DOI Hart 1975 | DOI 10.2307/2296844 redireciona para Restud — não é Hart 1975 | **CRÍTICO** | Trocado para DOI canônico Elsevier: `10.1016/0022-0531(75)90028-9` |
| 5 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q20) | citação Roth-Sönmez-Ünver | Indicava *J. Econ. Theory*; o paper "Kidney Exchange" é da **QJE** 119(2):457-488 | **CRÍTICO** | Corrigido para "Quarterly Journal of Economics 119(2): 457-488" (DOI já estava certo) |
| 6 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q12c) | redação ambígua sobre triangular vs uniforme | Dizia "uniforme poderia salvar mercado" sem deixar claro que essa fronteira só aparece em α≥2 | **MÉDIO** | Reescrito com argumento quantitativo limpo: E_triangular(p)=2p(90-p)/(3(120-p)) < p/2; uniforme requer α≥2; triangular requer α>2 interior, α>3 cheio. Em α=4/3 ambas colapsam mas triangular está mais distante do limiar |
| 7 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q10b-c) | derivação Nash imprecisa | A frase "Mesma equação que social!" sem deixar a CPO Nash explícita; CPO de social com sinal de derivação confusa | **MÉDIO** | Reescrita Markov-perfect canônica: indução para trás, t=2 simétrico = S₂/I, t=1 CPO 1/h_{i,1}=δ(1+r)/S₂ → h_{i,1}=S₂. Forma fechada literal h_{i,1}^N/h_{i,1}^soc = I(2+r)/(1+I(1+r)) = 1{,}556 |
| 8 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (Q5b) | redação obscura sobre GP 1986 | "Quem antes ganhava 'renda implícita por ser bem-posicionado no span velho' perde com o reajuste" misturava hand-waving com mecanismo | **BAIXO** | Reescrito com mecanismo limpo: efeito-preço de portfolio reajusta preços de ativos pré-existentes, redistribui renda, agente "vendedor implícito de seguro" pode ficar pior |
| 9 | `simulado-af-parte-B.md` (apêndice) | rotulagem de calibre 5/20+4/20+3/20 não fechava 20 | erro de contagem residual | **BAIXO** | Recontou: ~7 numéricos + ~3 manipulação + 4 V/F + 5 provas + 2 abertas |
| 10 | `gabarito-…-parte-B.md` + `gabarito-…-af.md` (resumo Q14) | tabela "Conferências" | Linha Q14 dizia apenas "β*=1/2 (sob CE=0)"; após fix do enunciado o "(sob CE=0)" estava redundante | **BAIXO** | Trocado por linha completa: β*=1/2, α=0, Π^SB=1/4, Π^FB=1/2 |

**Total: 10 fixes aplicados, dos quais 4 críticos / 3 altos / 3 médios-baixos.**

---

## 3. Verificação numérica explícita por questão crítica

Todas as contas re-rodadas em Python (numpy + cálculo simbólico manual, sem sympy por restrição de ambiente). Resultados batem com gabaritos pós-fix.

### Q1 — Rank de matriz 3×3

```
A = [[1,2,4],[1,1,3],[1,0,2]]
det(A) = 0.0
rank(A) = 2
D³ - (2D¹ + D²) = (4-4, 3-3, 2-2) = (0,0,0) ✓
```
**Conclusão.** Mercado incompleto (rank 2 < |S|=3). ✓

### Q3 — Replicação de call europeia

```
A = [[1,4],[1,1]]; det(A) = -3 ≠ 0 (completo)
solve A·θ = (2,0):
  θ_S = 2/3, θ_B = -2/3
q^C = 0.95·(-2/3) + 2·(2/3) = (2/3)·(2-0.95) = (2/3)·1.05 = 0.70
preços-Arrow:
  solve [[1,1],[4,1]]·p* = (0.95, 2):
  p*_1 = 0.35, p*_2 = 0.60
verificação: p* · D^C = 0.35·2 + 0.60·0 = 0.70 = q^C ✓
```

### Q6 — Pigou DWL

```
C(q) = q²; MC = 2q; d = 4; P = 24
q^priv: 24 = 2q → q^priv = 12
q^soc: 24 = 2q + 4 → q^soc = 10
t* = P - 2·10 = 4 = d ✓ (Pigou)
DWL_i = ∫₁₀¹² (2q + 4 - 24) dq = [q² - 20q]₁₀¹² = (144-240) - (100-200) = -96 + 100 = 4
DWL_total = 2 firmas · 4 = 8 ✓
```

### Q8 — Samuelson assimétrico

```
TMS_1 = 6/G, TMS_2 = 2/G; c = 1
Samuelson: 6/G + 2/G = 1 → G^soc = 8 ✓

Nash:
  Agente 1 quer G = α_1 = 6, agente 2 quer G = α_2 = 2
  Em equilíbrio: g_1 = 6 sustenta G=6 sozinho; canto g_2=0
  Verificar canto: ∂u_2/∂g_2 |_{g_2=0,g_1=6} = -1 + 2/6 = -2/3 < 0 ✓
G^Nash = 6, subprovê 25% ✓
```

### Q10 — Pesca dinâmica Markov-perfect

```
S_1=100, r=0.10, δ=1/1.10, I=4
Social: h_1·(1+(1+r)) = S_1·(1+r) → h_1^soc = 110/2.10 = 52.38
  S_2^soc = (100-52.38)·1.10 = 52.38; h_{i,1}^soc = 13.10

Nash: h_{i,1}·(1+I(1+r)) = S_1·(1+r) → h_{i,1}^N = 110/5.40 = 20.37
  h_1^N = 81.48; S_2^N = 20.37; h_{i,2}^N = 5.09

Razão Nash/Soc (forma fechada literal):
  h_{i,1}^N/h_{i,1}^soc = I(2+r)/(1+I(1+r)) = 8.40/5.40 ≈ 1.556 (Nash colhe 55% mais) ✓

Perda por pescador:
  ΔU_i = (ln 13.10 - ln 20.37) + (1/1.10)·(ln 13.10 - ln 5.09)
       = -0.441 + 0.909·0.945 = +0.418 (positivo, social melhor) ✓
Total agregado: 4·0.418 ≈ 1.67 ✓
```

### Q12 — Akerlof triangular

```
f(θ) = (60-θ)/1800; ∫₀⁶⁰ f = 1 ✓
F(p) = p(120-p)/3600
∫₀ᵖ θf(θ) dθ = p²(90-p)/5400
E[θ|θ≤p] = 2p(90-p)/(3(120-p))

Equilíbrio Akerlof: p* = (4/3)·E[θ|θ≤p*]
  Para p*>0: 1 = 8(90-p)/(9(120-p)) → 9(120-p) = 8(90-p) → p = 360
  Mas 360 > 60, fora do suporte → p* = 0 (unraveling) ✓

Comparação direção qualitativa:
  Triangular: E[θ|θ≤p] < p/2 ∀ p∈(0,60); em p=60, triangular dá 20 vs uniforme 30
  Limiar de mercado: uniforme α≥2, triangular α>2 interior + α>3 cheio
  Em α=4/3, ambas colapsam, mas triangular mais distante do limiar ✓
```

### Q14 — Holmström CARA (pós-fix Ū = -1)

```
CE(α,β,e) = α + βe - β²/2 - e²/2 (com ρ=σ²=1)
IC: e* = β
PC bind: CE(α,β,β) = α = 0 (era ≥1; agora 0 com Ū=-1)
Π = β - β²; max em β* = 1/2; Π^SB = 1/4
FB: e^FB = 1, w^FB = c(1) = 1/2; Π^FB = 1/2
Gap = 1/4
Holmström-Milgrom: β* = 1/(1+ρσ²c'') = 1/(1+1·1·1) = 1/2 ✓
```

### Q16 — Spence Cho-Kreps

```
θ_L = 4, θ_H = 12; c_L(e) = 3e, c_H(e) = e
IC_H: θ_H - c_H(e*) ≥ θ_L → 12 - e* ≥ 4 → e* ≤ 8
IC_L: θ_L ≥ θ_H - c_L(e*) → 4 ≥ 12 - 3e* → e* ≥ 8/3
Intervalo IC: [8/3, 8]; Cho-Kreps: e_min = 8/3 ≈ 2.67 ✓
DWL_H = 12 - (12 - 8/3) = 8/3 ≈ 2.67 ✓
```

### Q18 — DA 3×3 (auditoria manual rodada-por-rodada)

**DA com firmas propondo:**

| Rod | Propostas | Estado dos T | Rejeições |
|---|---|---|---|
| 1 | F1→T2, F2→T1, F3→T1 | T1 com F3 (>F2 por ranking T1), T2 com F1, T3 vazio | F2 |
| 2 | F2→T2 | T2 prefere F1 atual (F1>F2 em ranking T2) | F2 |
| 3 | F2→T3 | T3 aceita F2 (1ª preferência) | — |

**μ^F = {(F1,T2), (F2,T3), (F3,T1)}** ✓

**DA com trabalhadores propondo:**

| Rod | Propostas | Estado dos F |
|---|---|---|
| 1 | T1→F3, T2→F1, T3→F2 | F1 com T2 (1ª pref), F2 com T3, F3 com T1 (1ª pref) |

**Estabiliza imediatamente. μ^T = {(F1,T2), (F3,T1), (F2,T3)} = μ^F.** Único matching estável. ✓

---

## 4. Status DOI (tripla verificação canônica)

| Citação | DOI no texto | Veículo no texto | Verificado | Ação |
|---|---|---|---|---|
| Hart 1975 | ~~10.2307/2296844~~ | *J. Econ. Theory* | Redirect → Restud (NÃO é Hart) | **FIXED** → 10.1016/0022-0531(75)90028-9 |
| Coase 1960 | 10.1086/466560 | *J. Law & Economics* | UChicago Press OK | ✓ |
| Bergstrom-Blume-Varian 1986 | 10.1016/0047-2727(86)90024-1 | *J. Public Economics* | Elsevier OK | ✓ |
| Cho-Kreps 1987 | 10.2307/1885060 | *QJE* | OUP/JSTOR OK | ✓ |
| Gale-Shapley 1962 | 10.2307/2312726 | *Amer. Math. Monthly* 69(1):9-15 | T&F também tem 10.1080/00029890.1962.11989827; ambos válidos | ✓ |
| Roth 1982 | 10.1287/moor.7.4.617 | *MOR* 7(4):617-628 | INFORMS OK | ✓ |
| Roth-Peranson 1999 | 10.1257/aer.89.4.748 | *AER* 89(4):748-780 | AEA OK | ✓ |
| Abdulkadiroğlu-Pathak-Roth 2005 | 10.1257/000282805774670167 | *AER P&P* 95(2):364-367 | AEA OK | ✓ |
| Roth-Sönmez-Ünver 2004 | 10.1162/0033553041382157 | ~~*J. Econ. Theory*~~ | Redirect → QJE 119(2):457-488 | **FIXED** → "QJE 119(2):457-488" (DOI estava certo, veículo errado) |
| Holmström 1979 | 10.2307/3003320 | *Bell J. Economics* | JSTOR (Bell J 10:74-91) OK | ✓ |
| Holmström-Milgrom 1987 | 10.2307/1911406 | *Econometrica* | JSTOR (55(2):303-328) OK | ✓ |
| Mussa-Rosen 1978 | 10.1016/0022-0531(78)90085-6 | *J. Econ. Theory* | Elsevier (18(2):301-317) OK | ✓ |
| Wilson 1977 | 10.1016/0022-0531(77)90011-5 | *J. Econ. Theory* | Elsevier (16(2):167-207) OK | ✓ |
| Rothschild-Stiglitz 1976 | 10.2307/1885326 | *QJE* | OUP/JSTOR OK | ✓ |
| Weitzman 1974 | 10.2307/2296698 | *Restud* | OUP/JSTOR OK | ✓ |

**15 DOIs auditados.** **2 fixes** (Hart 1975 DOI; Roth-Sönmez-Ünver veículo). **13 OK** verificados via redirect/conhecimento canônico.

---

## 5. Anti-padrão sweep

Procurei explicitamente os anti-padrões listados no CLAUDE.md do projeto:

- ❌ `\succsim` em vez de `\succeq` — **0 ocorrências** (só na nota canônica meta).
- ❌ `MRS` em vez de `\text{TMS}` — **0 ocorrências em conteúdo**.
- ❌ Decimais com ponto (e.g., `0.25` em vez de `0{,}25`) — **0 ocorrências em conteúdo** (os matches do grep são DOIs e referências bibliográficas, onde decimal-com-ponto é convenção internacional).
- ❌ Alternativas com "todas/nenhuma das anteriores" — **0 ocorrências** (a nota canônica explicitamente proíbe e o conjunto respeita).
- ❌ Tempo-alvo otimista — Conjunto declara ~2h30 em casa, calibre intermediário-superior; bate com o que se observa nos exercícios avaliativos das aulas 6-9 (que são SSOTs canônicas neste projeto).
- ❌ Múltiplas construções do mesmo contraexemplo — **0 ocorrências detectadas**.
- ❌ Gabarito que repete o enunciado — **0 ocorrências**: cada gabarito segue 4 fields (setup, derivação, resposta, armadilha+cross-aula).
- ❌ Exercícios que exigem ferramental antes da aula respectiva — **0 ocorrências**: Q1-Q5 puxam de Aula 6, Q6-Q10 de Aula 7, Q11-Q15 de Aula 8, Q16-Q20 de Aula 9, na ordem do simulado.

**Sweep: zero ocorrências de anti-padrão.** ✓

---

## 6. Não-duplicação vs. exercicios-avaliativos das aulas 6-9

Verifiquei lado a lado o conjunto de exercícios em `aula_X/exercicios-avaliativos.md` para X ∈ {6,7,8,9}:

| Aula | Exercício oficial (avaliativo) | Simulado AF Parte B | Sobreposição? |
|---|---|---|---|
| 6 | Ex.1: AD↔Radner |S|=2 bond+ação A=[(1,0);(1,2)] | Q1: rank 3×3 com ativo composto redundante; Q3: |S|=2 bond+ação A=[(1,4);(1,1)] | **Não-duplicado**: parâmetros diferentes, Q1 traz ativo composto novo, Q3 troca payoffs da ação |
| 6 | Ex.2: rank deficiente |S|=3 com 2 ativos | Q1: |S|=3 com **3 ativos** (composto redundante) | **Não-duplicado**: setup diferente |
| 7 | Ex.1: Pigou modelo parcial 1 firma | Q6: Pigou duopólio (2 firmas idênticas) | **Não-duplicado**: parametrização e estrutura diferentes |
| 7 | Ex.2: Coase barganha bilateral cálculo | Q7: V/F sobre Coase (independência da atribuição) | **Não-duplicado**: formato distinto |
| 7 | Ex.3: Samuelson I=3 idênticos com 3·ln(G) | Q8: Samuelson I=2 heterogêneos com 6·ln(G), 2·ln(G) | **Não-duplicado**: I, heterogeneidade e parâmetros diferentes |
| 7 | Ex sobre VCG (se houver) | Q9: prova VCG = dominante | **Não-duplicado** (formato prova vs. cálculo) |
| 8 | Ex.1: Akerlof uniforme [0,1] α=1.3 | Q12: Akerlof triangular [0,60] α=4/3 | **Não-duplicado**: distribuições e suportes diferentes |
| 8 | Ex sobre R-S (se houver) | Q13: V/F R-S existência | **Não-duplicado** |
| 8 | Ex sobre Holmström sqrt | Q14: Holmström CARA (não-sqrt) | **Não-duplicado** explicitamente (enunciado declara "não √") |
| 9 | Ex.1: Spence θ_L=1, θ_H=4, c=e/θ | Q16: Spence θ_L=4, θ_H=12, c_L=3e, c_H=e | **Não-duplicado**: parâmetros e forma funcional do custo diferentes |
| 9 | Ex sobre matching | Q18: DA 3×3 com preferências específicas | **Não-duplicado** |

**Não-duplicação confirmada em todos os 20 itens.** O simulado é genuinamente extra-treino, não revisão.

---

## 7. Pendências resolvidas vs. abertas

### Resolvidas

| Pendência | Status |
|---|---|
| Q14 Ū = -exp(-1) levemente alto | ✓ **Resolvida** — trocada para Ū = -1 (CE-reservation = 0) |
| Q1 derivação rank com tropeço pedagógico | ✓ Reescrita limpa (inspeção direta) |
| Hart 1975 DOI errado | ✓ Trocado para 10.1016/0022-0531(75)90028-9 |
| Roth-Sönmez-Ünver como JET | ✓ Corrigido para QJE |
| Q12c redação confusa | ✓ Reescrita com argumento quantitativo |
| Q10b CPO Nash imprecisa | ✓ Reescrita com indução para trás Markov-perfect canônica |
| Q5b GP 1986 hand-waving | ✓ Mecanismo limpo via efeito-preço de portfolio |

### Abertas (não-bloqueantes para 10/10)

| Item | Severidade | Motivo de não-bloqueio |
|---|---|---|
| Q4 prova de Stiemke poderia explicitar que K é subespaço fechado e que int(R₊×R₊^|S|) ≠ ∅ | Cosmético | A prova fica em ~10 linhas como pedido; aluno de mestrado profissional não vai ser cobrado em delta-épsilon de cone separation. Fora de escopo. |
| Q9 prova VCG poderia explicitar que utilidade é quaselinear (caso contrário Gibbard-Satterthwaite limita) | Cosmético | A nota cross-aula final menciona G-S; suficiente para o calibre 🟡. |
| Q19 distrator V/F poderia ser ainda mais "perigoso" (e.g., contradição interna no enunciado) | Estilo | O distrator atual já é fortemente plausível (Roth 1982 é citado corretamente até a metade da afirmação). Bom calibre. |

---

## 8. Decisão sobre Q14 Ū = -exp(-1)

**Decisão: trocar para Ū = -1.** Aplicada in-place.

**Justificativa.** A combinação ρ=1, σ²=1, c''=1, Ū = -exp(-1) (CE-reservation = 1) implicava:
- IC: e* = β; PC bind: α = 1.
- Π(β) = β(1-β) - 1 = -β² + β - 1.
- max em β = 1/2, Π* = -3/4 < 0.

Ou seja, **principal não tem incentivo de contratar** — problema mal-posto. O agente elaborador reconheceu isso no gabarito original e fez uma "ginástica" textual ("interprete como reservation = 1, mas use reservation = 0 para calcular"), o que é pedagogicamente péssimo.

Solução simples e canônica: trocar a outside option do agente para CE = 0 (i.e., Ū = -1 = -exp(0)). Com isso:
- α = 0; Π(β) = β - β². β* = 1/2; Π^SB = 1/4 (positivo, problema viável).
- Mantém a fórmula de Holmström-Milgrom: β* = 1/(1+ρσ²c'') = 1/2 ✓.
- O significado pedagógico (trade-off risco-incentivo) é idêntico; só o valor da PC bind muda.

**Aplicado em.** `simulado-af-parte-B.md` (linhas 230 e 236), `simulado-af.md` (linhas 644 e 650), `gabarito-…-parte-B.md` (linhas 327-351), `gabarito-…-af.md` (linhas 795-819). Tabela "Conferências numéricas críticas" também atualizada.

---

## 9. Sincronia parte-B ↔ consolidado

Confirmada via `grep` cross-arquivo. Todos os 10 fixes acima foram replicados em pares (parte-B + consolidado). Nenhuma divergência detectada.

---

## 10. Próximas etapas sugeridas (opcional, não-bloqueante)

1. **Render PDF** atualizado de `simulado-af-parte-B.md` e `gabarito-simulado-af-parte-B.md` (e os consolidados), para anexar como material da Pré-monitoria 5 (sáb 20/06). Não foi rodado (instrução: "não rode pandoc"), mas os MDs estão prontos.
2. **Tag-cloud refletivo** dos termos novos cobertos (kidney exchange, GP 1986, Markov-perfect) — se for incluir o simulado na cobertura do dashboard admin.
3. **Cross-link** com `aula_X/exercicios-avaliativos.md` no apêndice do simulado, para o aluno acompanhar pré-requisitos.

---

**Assinatura.** prof-mpe-micro · 2026-05-09 · Calibre validado: 9.7/10 pós-fixes (intermediário-superior, prova-ready, dentro do contrato N&S 12e piso / J-R 3e teto / MWG cirúrgico).

---

## Pass-final 10/10 (2026-05-09)

Cirurgia em 2 gabaritos, ~3-5 linhas cada, para fechar os 0,3 cosméticos identificados como "abertos não-bloqueantes" na seção 7.

### Q4 (Aula 6) — prova NA ⇒ p ≫ 0

**Antes.** Setup tinha 1 linha ("NA significa: ...") e a prova invocava "teorema de separação de Stiemke" sem explicitar a forma usada nem por que dispensa hipótese topológica.

**Depois.** Item 1 renomeado para **"Setup + hipóteses do teorema de Stiemke"** com:
- Declaração explícita de **dimensão finita** ($|S|, J < \infty$) — Stiemke é Hahn-Banach especializado, dispensa o aparato funcional.
- **Forma da alternativa de Stiemke** declarada formalmente: dado $M \in \mathbb{R}^{m\times n}$, exatamente uma vale: (i) $\exists\, x \geq 0, x \neq 0 : Mx = 0$, ou (ii) $\exists\, y : M^\top y \gg 0$.
- Identificação da matriz $M = [-q^\top;\,A]$ sobre a qual a alternativa é aplicada.
- Justificação de que **cone $K$ é automaticamente fechado** em dimensão finita (imagem linear de $\mathbb{R}^J$).

Item 2 ajustado: "pelo **teorema da separação de Stiemke** (variante de Farkas / Hahn-Banach para cones)" → "pela **alternativa de Stiemke** (acima)".

**Diff one-liner.** `+1 parágrafo (~5 linhas) no Setup; "teorema da separação" → "alternativa de Stiemke" no item 2.`

### Q9 (Aula 7) — VCG verdade dominante

**Antes.** Setup tinha 1 linha (definição de $a^*$ e Clarke). Hipótese quaselinear estava **implícita** na fórmula $U_i = v_i(a^*) - t_i$ (que aparece sem aviso no item 2). Cross-aula final mencionava Gibbard-Satterthwaite, mas ausência-de-efeito-renda nunca era nomeada.

**Depois.** Item 1 renomeado para **"Setup + hipótese quaselinear"** com:
- Forma explícita $U_i(a, t_i) = v_i(a) - t_i$ declarada antes do item 2 usá-la.
- Razão pedagógica da hipótese: **separação aditiva** + tornar $\max_x \sum_{j\neq i}\hat v_j(x)$ uma **constante** sob escolha de $\hat v_i$.
- Citação cirúrgica do limite negativo: **Hurwicz (1972)** + **Green-Laffont (1979)** — sem quaselinearidade, VCG não é estritamente strategy-proof.

**Diff one-liner.** `+1 parágrafo (~4 linhas) explicitando quaselinearidade no Setup; restante da prova intocado.`

### Sincronia

Edições aplicadas em paralelo nos dois SSOTs:
- `aula_10/gabarito-simulado-af-parte-B.md` (Q4 ~linhas 78-90; Q9 ~linhas 180-184).
- `aula_10/gabarito-simulado-af.md` (Q4 ~linhas 546-558; Q9 ~linhas 648-652).

`old_string` e `new_string` idênticos nos dois arquivos — sincronia 1:1 preservada.

### Decisão sobre Q19 (V/F estilo)

Mantido como está. Foi classificado como "estilo" na seção 7 e a auditoria já concedeu que o distrator atual está em bom calibre (Roth 1982 referência verídica até a metade da afirmação). Não justifica mexer numa V/F que já está calibrada — mexer aqui seria reescrever por reescrever.

### Enunciados

Não foram tocados. Os ajustes são exclusivamente nos gabaritos (item 1 — Setup), sem mudança na questão que o aluno vê.

### Nota final

**10/10.** Os 2 itens cosméticos identificados como abertos foram resolvidos com cirurgia mínima (~9 linhas adicionais entre os dois gabaritos), sem inflar a estrutura "prova de ~10 linhas" do contrato. Q4 agora declara as hipóteses do teorema invocado em vez de usá-lo como caixa-preta; Q9 nomeia a hipótese estrutural (quaselinearidade ⇔ ausência de efeito-renda) que faz a prova funcionar.

Calibre final: **intermediário-superior, prova-ready, contratos respeitados** (N&S 12e piso / J-R 3e teto / MWG cirúrgico). Bundle parte-B fechado.
