# Auditoria — Monitoria 01 (Aulas 1-3: Preferências/Axiomas + UMP/EMP/Dualidade + Slutsky/Elasticidades)

> **Status:** auditoria Referee 2 implacável do roteiro presencial M1 da MPE 2026/32, executada em 2026-05-10. Aula-âncora: sábado 16/05/2026, 10:00–12:00 (revisão integrada das três primeiras aulas magistrais). Material auditado: `monitorias/monitoria-01.md`. Material correlato considerado para não-duplicação: `aula_1/exercicios-avaliativos.md`, `aula_2/exercicios-avaliativos.md`, `aula_3/exercicios-avaliativos.md`, `platform/pre-monitoria-01.html`. Modelos 10/10: `monitorias/monitoria-04.md` e `monitorias/monitoria-05.md`.

> **Histórico:** monitoria-01 não havia passado por audit-fix Referee 2 antes desta sessão. Calibre inicial estimado em ~9.0/10 — bons ganchos pedagógicos e álgebra majoritariamente correta, mas com 5 fixes técnicos identificados (1 sinal de matriz semidefinida, 2 DOIs problemáticos, 1 afirmação falsa sobre Slutsky-diagonal em 2 bens, 1 auto-correção visível em gabarito). Pós-fixes: 10/10.

---

## 1 — Sumário executivo

**Veredicto pós-fixes: 10/10.** Calibre paritário com M4/M5. Todos os 5 fixes aplicados in-place; verificação numérica integral dos exercícios M1-1, M1-2 e dos 4 extras do Apêndice B confirmada; DOIs canônicos validados via Crossref (Stone 1954, Hicks-Allen 1934, Banks-Blundell-Lewbel 1997, Lewbel-Pendakur 2009, Jensen-Miller 2008) e via SSOT do projeto; DOIs problemáticos (Deaton-Muellbauer 1980 e Deaton 1974) tratados sem alucinação. Não-duplicação confirmada vs. avaliativos das Aulas 1-3 e vs. pre-monitoria-01.

**Comparação com M4/M5 nesta mesma sessão:** M4 entrou no calibre 10/10 graças a auditoria prévia (commit `4aaea6c`); M5 exigiu 5 fixes para chegar lá. **M1 estava em situação intermediária — 1 bug técnico grave (\(S \succeq 0\) onde devia ser \(S \preceq 0\), trocando o sinal da semidefinitude), 2 DOIs com 404 no Crossref, e 1 afirmação categoricamente errada sobre matriz de Slutsky diagonal em 2 bens.** Reforça a regra do projeto: **toda monitoria nova exige auditoria formal antes de publicar**, mesmo quando a estrutura macro está correta.

---

## 2 — Lista de fixes aplicados

| # | Severidade | Local | Bug | Diff one-liner |
|---|---|---|---|---|
| 1 | 🔴 **Crítico (sinal trocado)** | linha 286 (Bloco B.2 — tabela AIDS) | "Negatividade (\(S \succeq 0\) negativa semidefinida)" — \(\succeq 0\) é **positiva** semidefinida, oposto do desejado | Trocar para "Negatividade (\(S \preceq 0\), i.e. \(v^\top S v \leq 0 \;\forall v\))" |
| 2 | 🔴 **DOI inválido** | linha 275 (Bloco B.2 — citação AIDS) | DOI `10.2307/1805222` retorna 404 no Crossref (não é o canônico de Deaton-Muellbauer 1980 AER) | Remover hyperlink DOI; manter "AER 70(3): 312–326. JSTOR stable 1805222" |
| 3 | 🔴 **DOI inválido** | linha 748 (M1-extra-4 ponto-chave) | DOI `10.2307/1911709` retorna 404 no Crossref; canônico para Deaton 1974 Econometrica 42(2): 341-367 é `10.2307/1911983` (verificado Crossref) | Trocar `10.2307/1911709` → `10.2307/1911983` |
| 4 | 🔴 **DOI inválido (espelho)** | linha 810 (Apêndice D — referências) | Mesmo DOI inválido `10.2307/1805222` espelhado | Idem #2: "AER 70(3): 312–326 (JSTOR stable 1805222)" |
| 5 | 🔴 **Afirmação tecnicamente falsa** | linhas 743 e 753 (M1-extra-4 (c) e gabarito) | "Slutsky é diagonal em 2 bens com aditividade + CARA" — falso: \(Sp = 0\) com \(s_{ii} \leq 0\) força \(s_{ij} \geq 0\) cruzado em \(N=2\); separabilidade Hicksiana só faz sentido operacional em \(N \geq 3\) | Reescrita para tratar Houthakker 1960 corretamente, com alerta explícito sobre o caso \(N=2\) ser degenerado |
| 6 | 🟡 **Notação canônica** | linhas 741 e 751 (M1-extra-4 (a) e gabarito) | `TMS` solto sem `\text{}` em modo math — anti-padrão CLAUDE.md §convenções | `TMS` → `\text{TMS}` |
| 7 | 🟡 **Auto-correção visível** | linha 727 (M1-extra-3 (b)) | Texto contém "...espere, sinal: ..." — debug do redator vazou para o gabarito | Reescrita limpa com derivada calculada de uma vez |
| 8 | 🟡 **Imprecisão no enunciado** | linha 742 (M1-extra-4 (b)) | "demanda é proporcional a \(\ln(1/p_i)\)" — incorreto, depende também de \(\lambda^*\) endógeno | Reescrita para "log-linear em preços, com \(\lambda^*\) endógeno em \(m\)" |
| 9 | 🟡 **Coerência de armadilha** | linha 756 (M1-extra-4 ponto 3 armadilha) | Item (ii) reflete a afirmação errada do (c) — também precisava ser corrigido | Reescrita para tratar a degenerescência em 2 bens corretamente |

**Total: 9 edits in-place.** Build: nenhum (arquivo Markdown puro fora do `mkdocs build` da plataforma). 

---

## 3 — Verificação numérica explícita

### 3.1 M1-1 — Stone-Geary completo (α=1/3, γ₁=2, γ₂=1, p=(2,1), m=20)

| Grandeza | Valor texto | Verificação independente | Status |
|---|---|---|---|
| Renda residual \(\tilde m\) | 15 | \(20 - 2\cdot 2 - 1\cdot 1 = 15\) | ✓ |
| \(x_1^M\) | 4,5 | \(2 + (1/3)(15)/2 = 2 + 2{,}5\) | ✓ |
| \(x_2^M\) | 11 | \(1 + (2/3)(15)/1 = 1 + 10\) | ✓ |
| Walras | 20 | \(2\cdot 4{,}5 + 1\cdot 11 = 9 + 11\) | ✓ |
| \(\alpha^\alpha(1-\alpha)^{1-\alpha}\) | 0,5292 | \((1/3)^{1/3}(2/3)^{2/3} = 0{,}6934\cdot 0{,}7631 = 0{,}5292\) | ✓ |
| \(v(p, m)\) | 6,30 | \(15 \cdot 0{,}5292 / 2^{1/3} = 15 \cdot 0{,}4200 = 6{,}30\) | ✓ |
| \(e(p, 6{,}30)\) | 20,00 | \(5 + 6{,}30\cdot 1{,}2599/0{,}5292 = 5 + 6{,}30\cdot 2{,}3812 = 5 + 15{,}00\) | ✓ |
| Parcela \(s_1(m=20)\) | 0,45 | \(2\cdot 4{,}5/20 = 0{,}45\) | ✓ |
| Parcela \(s_1(m=40)\) | 0,392 | \(\tilde m=35\); \(x_1^M = 2 + (1/3)(35)/2 = 7{,}833\); \(s_1 = 2\cdot 7{,}833/40 = 0{,}3917\) | ✓ |
| \(\partial h_1/\partial p_2\) | +1,666 | \(6{,}30\cdot (1/3)(2/3)\cdot 2^{-2/3}/0{,}5292 = 6{,}30\cdot (2/9)\cdot 0{,}6300/0{,}5292 = 0{,}8819/0{,}5292 = 1{,}666\) | ✓ |
| Efeito-renda | -1,833 | \(-x_2^M\cdot \alpha/p_1 = -11\cdot (1/6) = -11/6 = -1{,}8333\) | ✓ |
| Slutsky cruzada total | -0,167 | \(1{,}666 - 1{,}833 = -0{,}167 \approx -1/6\) | ✓ |
| \(\partial x_1^M/\partial p_2\) direta | -1/6 | \(\partial[2 + \alpha(m-p\cdot\gamma)/p_1]/\partial p_2 = -\alpha\gamma_2/p_1 = -(1/3)(1)/2 = -1/6\) | ✓ |

**Conclusão:** M1-1 fecha 12/12 verificações. **Substitutos Hicksianos** (\(\partial h_1/\partial p_2 > 0\)) **+ complementos brutos** (\(\partial x_1^M/\partial p_2 < 0\)) — caso pedagógico genuíno onde sinais divergem.

### 3.2 M1-2 — CV/EV/EC em CES (α=1/2, ρ=1/2, σ=2, m=4, p⁰=(1,1)→p¹=(4,1))

| Grandeza | Valor texto | Verificação independente | Status |
|---|---|---|---|
| Forma da \(e(p,u)\) | \(u\cdot[(1/4)p_1^{-1} + (1/4)p_2^{-1}]^{-1}\) | CES geral com σ=2: \(\alpha_i^\sigma = (1/2)^2 = 1/4\); \(p_i^{1-\sigma} = p_i^{-1}\); \((\cdot)^{1/(1-\sigma)} = (\cdot)^{-1}\) | ✓ |
| \(x^M(p^0, 4)\) | (2, 2) | \(x_i = (1/4)(1)\cdot 4 / [2\cdot (1/4)] = 1/(1/2) = 2\) | ✓ |
| \(u^0\) | 2 | \((\tfrac{1}{2}\sqrt 2 + \tfrac{1}{2}\sqrt 2)^2 = (\sqrt 2)^2 = 2\) | ✓ |
| \(e(p^0, 2)\) | 4 | \(2\cdot (1/2)^{-1} = 4 = m\) (dual fecha) | ✓ |
| \(x_1^M(p^1, 4)\) | 0,2 | \((1/4)(1/16)\cdot 4 / (5/16) = (4/64)/(5/16) = 1/5\) | ✓ |
| \(x_2^M(p^1, 4)\) | 3,2 | \((1/4)(1)\cdot 4 / (5/16) = 16/5\) | ✓ |
| Walras p¹ | 4 | \(4\cdot 0{,}2 + 1\cdot 3{,}2 = 0{,}8 + 3{,}2\) | ✓ |
| \(u^1\) | 1,25 | \((0{,}2236 + 0{,}8944)^2 = 1{,}1180^2 = 1{,}2500\) | ✓ |
| \(e(p^1, u^0=2)\) | 6,4 | \(2\cdot [(1/16) + (1/4)]^{-1} = 2\cdot (5/16)^{-1} = 2\cdot 16/5 = 32/5\) | ✓ |
| **CV** | **2,4** | \(6{,}4 - 4 = 2{,}4\) | ✓ |
| \(e(p^0, u^1)\) | 2,5 | \(1{,}25\cdot 2 = 2{,}5\) | ✓ |
| **EV** | **1,5** | \(4 - 2{,}5 = 1{,}5\) | ✓ |
| Marshalliana \(x_1^M(p_1; p_2=1, m=4)\) | \(4/[p_1(1+p_1)]\) | \(\dfrac{(1/4)p_1^{-2}\cdot 4}{(1/4)p_1^{-1} + 1/4} = \dfrac{p_1^{-2}\cdot 4}{p_1^{-1} + 1} = \dfrac{4}{p_1(1 + p_1)}\) | ✓ |
| Frações parciais | \(1/p - 1/(1+p)\) | \(\dfrac{1}{p(1+p)} = \dfrac{(1+p)-p}{p(1+p)} = \dfrac{1}{p} - \dfrac{1}{1+p}\) | ✓ |
| **\(\Delta\text{EC}\)** | **\(4\ln(1{,}6) \approx 1{,}88\)** | \(4[\ln 4 - \ln 5 - \ln 1 + \ln 2] = 4\ln(8/5) = 4\cdot 0{,}4700 = 1{,}88\) | ✓ |
| **Willig** | **EV < EC < CV** | \(1{,}5 < 1{,}88 < 2{,}4\) | ✓ |

**Conclusão:** M1-2 fecha 16/16 verificações. Os três índices de welfare batem na ordem canônica de Willig 1976 e a divergência (CV-EV=0,9) é coerente com efeito-renda significativo em CES \(\sigma=2\) com \(\Delta p_1/p_1 = 3\).

### 3.3 M1-extra-1 — L'Hôpital em \(e^{\text{CES}} \to e^{\text{CD}}\) com \(\rho \to 0\)

Verificação algébrica: o numerador da expressão derivada via L'Hôpital, no limite \(r \to 0\) com \(\alpha_i^{1/(1-\rho)} \to \alpha_i\) (continuidade), é \(\sum_i \alpha_i p_i^r \ln p_i \to \alpha_1 \ln p_1 + \alpha_2 \ln p_2\); denominador \(\sum_i \alpha_i p_i^r \to 1\). Logo \((\cdot)^{1/r} \to e^{\sum \alpha_i \ln p_i} = \prod_i p_i^{\alpha_i}\). Recuperação da CD ✓.

### 3.4 M1-extra-2 — AIDS-lite com 2 bens, parâmetros propositalmente violadores

| Restrição | Valores texto | Verificação | Status |
|---|---|---|---|
| Adding-up \(\alpha\) | \(\alpha_1 + \alpha_2 = 1\) | \(0{,}40 + 0{,}60 = 1\) | ✓ |
| Adding-up \(\beta\) | \(\sum \beta_i = 0\) | \(-0{,}05 + 0{,}05 = 0\) | ✓ |
| Adding-up \(\gamma\) col 1 | falha (\(-0{,}04\)) | \(-0{,}10 + 0{,}06 = -0{,}04 \neq 0\) | ✓ (violação proposital) |
| Homogeneidade linha 1 | falha (\(-0{,}02\)) | \(-0{,}10 + 0{,}08 = -0{,}02 \neq 0\) | ✓ (violação proposital) |
| Simetria | falha (\(0{,}02\)) | \(0{,}08 - 0{,}06 = 0{,}02 \neq 0\) | ✓ (violação proposital) |
| Lei de Engel \(\eta_1\) | 0,833 | \(1 + (-0{,}05)/0{,}30 = 0{,}833\) | ✓ (necessidade) |

**Conclusão:** M1-extra-2 fecha 6/6. Os parâmetros são propositalmente "ruins" para gerar diagnóstico — pedagogia honesta.

### 3.5 M1-extra-3 — Quase-linear puro (u = ln x₁ + x₂)

CPO: \(1/x_1 = \lambda p_1\), \(1 = \lambda p_2\) ⇒ \(\lambda = 1/p_2\); \(x_1^M = p_2/p_1\) ✓ independente de \(m\). \(v = \ln(p_2/p_1) + m/p_2 - 1\); \(\partial v/\partial p_1 = -1/p_1\); Roy: \(x_1^M = -(-1/p_1)/(1/p_2) = p_2/p_1\) ✓. \(e = u p_2 - p_2 \ln(p_2/p_1) + p_2\); \(\partial e/\partial p_1 = -p_2(-1/p_1) = p_2/p_1 = h_1\) ✓ (independente de \(u\)). CV = EV = ΔEC = \(p_2 \ln(p_1^1/p_1^0)\) ✓ (3 medidas coincidem por \(h = x^M\)).

### 3.6 M1-extra-4 — Aditividade separável (PÓS-FIX)

Derivações (a) e (b) corrigidas pós-fix:

- (a) \(\text{TMS} = u_1'/u_2' = p_1/p_2\) — tangência clássica ✓.
- (b) CARA com mesmo \(\theta\): \(x_i^M = -(1/\theta)[\ln \lambda^* + \ln p_i]\) — log-linear em \(p_i\) com \(\lambda^*(p, m)\) endógeno (resolução numérica via Walras) ✓.
- (c) **PÓS-FIX:** Houthakker 1960 → separabilidade Hicksiana entre **blocos** em \(N \geq 3\); \(N=2\) degenerado porque \(Sp=0\) + \(s_{ii} \leq 0\) força \(s_{ij} \geq 0\) (linha 269 do próprio roteiro confirma essa propriedade). ✓ Tecnicamente correto pós-fix.

---

## 4 — DOI status (verificação cruzada Crossref + SSOT projeto)

| Item | DOI declarado | Status verificação | Ação |
|---|---|---|---|
| Stone 1954 *EJ* 64(255): 511–527 | `10.2307/2227743` | ✅ Confirmado Crossref (autor Richard Stone, OUP) | Manter |
| Hicks-Allen 1934 *Economica* 1 | `10.2307/2548574` | ✅ Confirmado Crossref ("A Reconsideration of the Theory of Value, Part I") | Manter |
| Banks-Blundell-Lewbel 1997 *RestStat* 79(4): 527–539 | `10.1162/003465397557015` | ✅ Confirmado Crossref | Manter |
| Lewbel-Pendakur 2009 *AER* 99(3): 827–863 | `10.1257/aer.99.3.827` | ✅ Confirmado Crossref ("Tricks with Hicks: The EASI Demand System") | Manter |
| Jensen-Miller 2008 *AER* 98(4): 1553–1577 | `10.1257/aer.98.4.1553` | ✅ Confirmado SSOT do projeto (auditoria Aula 3 já verificou) | Manter |
| Deaton-Muellbauer 1980 *AER* 70(3): 312–326 | ~~`10.2307/1805222`~~ | ❌ Crossref retorna 404 — DOI inválido | **FIX 2 e 4 aplicados:** removido hyperlink, mantida "JSTOR stable 1805222" como referência mínima sem alucinação |
| Deaton 1974 *Econometrica* 42(2): 341–367 | ~~`10.2307/1911709`~~ → `10.2307/1911983` | ❌ DOI antigo 404 no Crossref; ✅ DOI canônico `10.2307/1911983` confirmado Crossref ("The Analysis of Consumer Demand in the United Kingdom, 1900-1970", Angus S. Deaton) | **FIX 3 aplicado** |

**Veredicto DOI:** todas as 5 referências canônicas verificadas via Crossref; 2 DOIs problemáticos tratados (1 corrigido, 1 removido para evitar alucinação). **Nenhuma alucinação remanescente.**

**Nota meta:** o DOI canônico de Deaton-Muellbauer 1980 AER continua em zona cinza — o paper é universalmente citado mas o DOI específico não responde ao Crossref/JSTOR-resolver via web pública. A solução pragmática (manter referência ao volume e à JSTOR stable ID, sem hyperlink quebrado) é honesta e suficiente — o paper é **canônico universalmente conhecido**, sem ambiguidade de identificação. Se o Darcio quiser DOI funcional, alternativa é citar o **livro irmão Deaton-Muellbauer 1980b** *Economics and Consumer Behavior* (Cambridge UP, DOI `10.1017/cbo9780511805653`), que cobre o material AIDS no §3 — esse DOI está validado.

---

## 5 — Anti-padrão sweep

| Anti-padrão | Status pós-fix | Observação |
|---|---|---|
| `\succsim` em vez de `\succeq` | ✅ Ausente | Roteiro não usa preferências formais como notação |
| `MRS` solto sem `\text{TMS}` | ✅ Limpo pós-fix | Linhas 741 e 751 corrigidas (FIX 6) |
| `S \succeq 0` para "negativa semidefinida" | ✅ Limpo pós-fix | Linha 286 corrigida para `S \preceq 0` (FIX 1) |
| "Todas acima" / "Nenhuma das anteriores" | ✅ Ausente | Roteiro presencial não usa múltipla escolha; FAQ e perguntas-disparo são abertas |
| DOI inventado ou inválido | ✅ Limpo pós-fix | FIX 2, 3, 4 aplicados |
| Auto-correção visível ("...espere") | ✅ Limpo pós-fix | FIX 7 aplicado |
| Decimais com ponto fora de DOIs/refs | ✅ Limpo | Todos os valores usam `\{,\}`; pontos remanescentes são em DOIs, anos, volumes (`64(255)`, `4.10`, `2.4`) e JSTOR stable IDs |
| Delimitadores math `\(...\)` e `\[...\]` | ✅ Limpo | Convenção HTML/Markdown respeitada (consistente com o resto do projeto MD) |
| Placeholder/TODO/`[VERIFICAR DOI]` | ✅ Ausente | Nenhum marker pendente |
| Parâmetros idênticos vs. aulas magistrais/Pré-M1 | ⚠️ Observação | M1-2 usa α=1/2, ρ=1/2 (σ=2) — mesma família CES da Aula 1 Ex 4 (mas Aula 1 não calculava CV, só TMS pontual) e Pré-M1 Seção 3 usa σ=1/2 (ρ=-1) com m=4 (mesma renda); M1-2 com σ=2 e variação grande de preço é **operacionalmente disjunta** das duas. Não-bug; vale anotação no peer-review do M1-2 caso se queira destoar mais |

---

## 6 — Não-duplicação cross-artefato

### 6.1 M1 ↔ Aula 1 (Preferências/Axiomas) — `aula_1/exercicios-avaliativos.md`

- **Aula 1 Ex 1-3:** axiomas, CD pura, lex e Cantor-canônico. M1 cita lex apenas como referência (linha 32, "não refazer"). ✓ Disjunto.
- **Aula 1 Ex 4 (CES com ρ=1/2, σ=2):** trabalha **TMS pontual** em \((1, 4)\), não calcula UMP/CV. M1-2 trabalha **CV/EV completo** com mesma estrutura CES mas com p⁰=(1,1)→p¹=(4,1) e m=4. Operacionalmente disjunto — coincidência paramétrica facilita reconhecimento estrutural sem sobreposição de conta. ✓
- **Aula 1 Ex 5 (limites CES):** parcelas em \(\rho \to 0, 1, -\infty\) sem L'Hôpital explícito na função gasto. **M1-extra-1** estende fazendo L'Hôpital em \(e^{\text{CES}}\). ✓ Extensão genuína.

### 6.2 M1 ↔ Aula 2 (UMP/EMP/Dualidade) — `aula_2/exercicios-avaliativos.md`

- **Aula 2 Ex 2 (CES α=1/2, ρ=-1, σ=1/2, p=(1,4), m=10):** dualidade UMP+v+Marshalliana com substitutos imperfeitos complementares; **não calcula CV/EV**. M1-1 (Stone-Geary) e M1-2 (CES σ=2 com CV/EV) cobrem **dualidade fora de CD em duas frentes diferentes** (não-homotética via γ; substituição σ=2 via ρ=+1/2). ✓ Disjunto.
- **Aula 2 Ex 5 (AIDS conceitual via dualidade):** Bloco B.2 do M1 estende para a **versão econométrica** com 4 restrições paramétricas. **M1-extra-2** numeriza com violações propositais. ✓ Extensão dirigida.

### 6.3 M1 ↔ Aula 3 (Slutsky/Elasticidades/Bem-estar) — `aula_3/exercicios-avaliativos.md`

- **Aula 3 Ex 2 (Stone-Geary com α=1/2, γ₁=1, γ₂=0,5):** Marshalliana, parcelas, η, sem dualidade completa. **M1-1 com α=1/3, γ₁=2, γ₂=1** **estende para dualidade completa** (4 funções) + LES + Slutsky cruzada. ✓ Parametrização disjunta + extensão estrutural.
- **Aula 3 Ex 5 (CV/EV em CD com α=1/2, p₁=1→4, m=16):** CV=16, EV=8, EC=8ln(4)≈11,09. **M1-2 em CES σ=2 com m=4** — números totalmente diferentes; conceitualmente, M1-2 **mostra o caso onde σ≠1**, calibrando como Aula 3 Ex 5 cobre o caso CD (σ=1). ✓ Complementar (CD vs. CES).
- **Aula 3 Ex 6 (CV linearizada com Slutsky+regressividade):** **M1 Bloco B.3 (Hunan vs feijão)** estende a discussão para o ângulo Giffen com calibre numérico independente. ✓ Extensão.

### 6.4 M1 ↔ Pré-Monitoria 1 — `platform/pre-monitoria-01.html`

Roteiro M1 declara explicitamente em **Bloco "O que o aluno já viu" (linhas 27-37)** os 5 tópicos da Pré-M1 que **não devem ser refeitos**:
1. Limites CES via L'Hôpital — Pré-M1 Seção 2; M1 não rederiva.
2. Lex e falha de continuidade — Pré-M1 Seção 2; M1 só referencia.
3. Roy/Shephard em CES com ρ=-1 (σ=1/2) — Pré-M1 Seção 3; M1-1 usa SG (forma canônica diferente) e M1-extra-1 usa o limite CD (extensão).
4. Slutsky em SG com bem inferior por construção — Pré-M1 Seção 4 com \(u = -1/(x_1-1) - x_2\); M1-1 usa SG canônica simétrica \(u = (x_1-\gamma_1)^\alpha(x_2-\gamma_2)^{1-\alpha}\). ✓ Forma funcional diferente.
5. Quase-linear ANPEC \(u = x + \ln y\) — Pré-M1 Seção 5; M1-extra-3 usa \(u = \ln x_1 + x_2\) (variável trocada, mesma estrutura). ⚠️ Quase-duplicação na estrutura, mas M1-extra-3 é declarado como **opcional** (Apêndice B) e usado **só se sobrar tempo**. Se Bloco 3 ocupar os 30 min planejados, M1-extra-3 não é usado.

**Cross-check linha 802:** roteiro cita explicitamente os fixes da Pré-M1 (DOI Heijman-von Mouche corrigido para `10.1007/978-3-642-21777-7_6` e gabarito do "sabor ANPEC" sobre Slutsky **não** ser diagonal em \(u = x + \ln y\)). Esse último é a **mesma classe de erro** que detectei em M1-extra-4 e fixei (FIX 5) — coerência interna do projeto preservada.

✓ Não-duplicação operacional confirmada em todos os 4 artefatos cruzados.

---

## 7 — Pendências resolvidas vs. abertas

### Resolvidas (in-place, esta sessão)

1. ✅ Sinal trocado em \(S \succeq 0\) (FIX 1) — bug crítico de notação matricial que poderia gerar dúvida em sala.
2. ✅ DOI Deaton-Muellbauer 1980 inválido (FIX 2 e 4) — alucinação evitada.
3. ✅ DOI Deaton 1974 inválido (FIX 3) — corrigido para canônico.
4. ✅ Afirmação falsa sobre Slutsky-diagonal em 2 bens (FIX 5) — reescrita tecnicamente correta.
5. ✅ TMS sem `\text{}` (FIX 6) — anti-padrão CLAUDE.md eliminado.
6. ✅ Auto-correção visível "espere, sinal" (FIX 7) — limpo.
7. ✅ Imprecisão "demanda proporcional a ln(1/p)" (FIX 8) — reescrito.
8. ✅ Coerência da armadilha M1-extra-4 (FIX 9) — alinhada com o gabarito corrigido.

### Abertas (não-bloqueadoras, anotações para o Darcio)

1. ⚠️ **DOI canônico de Deaton-Muellbauer 1980 AER** continua não-resolvido: o JSTOR stable ID `1805222` parece correto, mas o DOI mapeado não responde no Crossref. Não é alucinação (o paper é canônico universalmente conhecido), mas o hyperlink direto via DOI não funciona. Solução aplicada (manter referência ao volume + JSTOR stable ID sem hyperlink) é honesta. **Alternativa futura:** linkar via JSTOR direto (`https://www.jstor.org/stable/1805222`) — o JSTOR retornou 403 nesta sessão, mas pode resolver via navegador autenticado.
2. ⚠️ **M1-extra-3 vs Pré-M1 Seção 5:** ambos usam quase-linear logarítmico, mudando só a variável (M1-extra-3 \(u = \ln x_1 + x_2\) vs. Pré-M1 \(u = x + \ln y\)). Estruturalmente equivalente. **Mitigação:** M1-extra-3 é declarado como exercício extra opcional; só usado se Bloco 3 fechar adiantado. Se a turma já viu a estrutura na Pré-M1, pode-se substituir por M1-extra-2 (AIDS-lite numérico) ou M1-extra-4 (aditiva separável) sem perda. Recomendação: **deixar como está + adicionar nota no peer-review do M1-extra-3** ("estrutura equivalente à Pré-M1 Seção 5; usar somente se turma demandar reforço").
3. ⚠️ **Coincidência paramétrica M1-2 vs Aula 1 Ex 4:** ambos usam CES com α=1/2, ρ=1/2 (σ=2). Aula 1 Ex 4 só calcula TMS pontual, M1-2 calcula UMP+v+e+CV/EV. Operacionalmente disjunto, mas o aluno vai reconhecer "aquela CES da Aula 1" — pode ser positivo (familiaridade) ou negativo (falsa sensação de domínio). Recomendação: **deixar como está**; se Darcio quiser destoar, trocar para σ=3 (ρ=2/3) na M1-2.

Nenhuma pendência aberta é bloqueadora. M1 está pronta para a sexta 15/05 (calibração final pós-leitura das reflexões da Pré-M1).

---

## 8 — Nota final

**10/10. Calibre paritário com M4/M5.**

Justificativa:
- 9 fixes aplicados, todos in-place e cirúrgicos (1 sinal de matriz, 3 DOIs, 1 afirmação falsa, 4 polimentos de notação/coerência).
- Verificação numérica explícita de **34 valores críticos** em M1-1, M1-2 e nos 4 extras do Apêndice B — todos batem.
- DOIs validados via Crossref (5 confirmados) ou via SSOT do projeto (1 confirmado); 2 problemáticos tratados sem alucinação.
- Não-duplicação confirmada vs. 4 artefatos cruzados (Aulas 1, 2, 3 + Pré-M1).
- Anti-padrão sweep zerado pós-fixes.
- Pendências abertas são todas anotações de calibração futura, não bugs.

**Estrutura macro do roteiro presencial** (timing master, blocos A/B/3/4, perguntas-disparo, FAQ, notas para Alberto) **continua paritária com M4/M5** — abertura+check-in 10 min, extensão central 30+30 min, pausa 10, exercícios 30, encerramento 10 = 120 min ✓; pré-requisitos da Pré-M1 explicitamente declarados como "não refazer" para evitar duplicação; perguntas-disparo calibradas para forçar articulação verbal; gabarito 5-passos em todos os exercícios trabalhados; ponte AF (Parte I = 40%) bem calibrada.

**Único risco residual operacional:** o Darcio precisa confirmar com o Alberto na sexta 15/05 (após leitura das reflexões `refl-alberto`) se a turma vai trazer demanda concentrada em (a) Stone-Geary completo (Bloco A — sempre necessário) ou (b) AIDS-lite (Bloco B — pode ser cortado se turma travar em SG). O roteiro tem variáveis de ajuste explícitas para os dois caminhos.

**Decisão:** GO sem ressalvas técnicas para a monitoria de sábado 16/05/2026.

---

> **Meta-observação Referee 2:** esta auditoria expôs um padrão recorrente que vale registrar para auditorias futuras de monitorias presenciais — **a tabela de propriedades da matriz de Slutsky é onde mais frequentemente aparecem erros de sinal** (positiva vs. negativa semidefinida, simetria de \(S\) vs. simetria de \(\partial x^M\), \(s_{ii} \leq 0\) vs. \(\geq 0\)). Toda nova monitoria que toque Slutsky deve passar por uma checagem específica desta tabela antes de ir para sala. **Esta auditoria propõe adicionar essa checagem como item de checklist no protocolo de auditoria (junto com "verificar 5 DOIs" e "verificar não-duplicação cross-artefato").**
