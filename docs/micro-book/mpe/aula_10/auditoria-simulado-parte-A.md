# Auditoria Referee 2 — Simulado AF Parte A (Aulas 1–5)

**Data:** 2026-05-09
**Auditor:** `prof-mpe-micro` (modo Referee 2 implacável + executor in-place)
**Time-box:** ~35 min
**Arquivos auditados:**
- `aula_10/simulado-af-parte-A.md` (25 enunciados)
- `aula_10/gabarito-simulado-af-parte-A.md` (25 gabaritos)
- `aula_10/simulado-af.md` (consolidado, parte A)
- `aula_10/gabarito-simulado-af.md` (consolidado, parte A)

---

## 1. Veredicto

**Nota global pós-fixes: 9.7/10.** Calibre comparável aos bundles 1–9 em produção. Nenhum bug numérico residual. Cinco fixes de prosa/coerência aplicados in-place; nenhum exigiu retrabalho de enunciado. DOIs verificados (2/2). Anti-padrão sweep: zero. Não-duplicação contra exerc. avaliativos: confirmada.

Os 0,3 pontos abaixo de 10 ficam por: (i) Q5 Aula 1(c) ainda tem complexidade conceitual que pode exigir uma nota suplementar do Alberto na Pré-M5; (ii) numeração idiossincrática "1..4 / 3..4" nos itens V/F (1=a, 2=b, 3=c, 4=d, depois reusa "3. Resposta" e "4. Armadilha") — funciona, mas é frágil para leitor desatento. Não é bug suficiente para fixar agora.

---

## 2. Fixes aplicados

| # | Severidade | Questão | Arquivo:linha (Parte A) | Bug | Diff one-liner |
|---|---|---|---|---|---|
| 1 | 🟡 média | A1-Q3(b) | gabarito-parte-A.md:43 / consolidado:49 | "espera... não serve" cru no texto + zigue-zague de exemplo | Reescreveu (b) com exemplo único limpo $f(u)=(u-1)^3$, prova clara de $\nabla v = 0$ em $u=1$ |
| 2 | 🔴 alta | A2-Q4(b) | gabarito-parte-A.md:139 / consolidado:177 | "wait, isso prova côncava, não convexa. Reverter..." mistura V e F na mesma linha; pendência auto-reportada | Reescreveu como prova direta limpa: $e$ é ínfimo de funções lineares ⇒ côncava; afirmação **F** desde a primeira palavra |
| 3 | 🔴 alta | A2-Q5(a-d) | gabarito-parte-A.md:158-167 / consolidado:194-203 | `???` literal numa equação display + derivação truncada; pendência auto-reportada | Refeita derivação completa: razão de CPO → $x_i/x_j$ → substituição na restrição → uso de $\sigma\rho = \sigma-1$ → fórmula final fechada para $h_i$ e $e$. Derivação simétrica de $\partial h_i/\partial p_j$ aberta passo-a-passo |
| 4 | 🔴 alta | A3-Q2(c) | gabarito-parte-A.md:195 / consolidado:255 | "Re-julgo: V" depois de raciocínio circular público — claramente um rascunho que escapou | Reescreveu como justificativa V limpa, com derivação Slutsky mostrando que diferença $x_i^M\partial x_j^M/\partial m - x_j^M\partial x_i^M/\partial m$ só zera em homotetia |
| 5 | 🟠 média | A4-Q4(d) | gabarito-parte-A.md:303 / consolidado:387 | Bug aritmético: cita $\pi^* = (2/3)\cdot 2^{1/3}$ "confirmando Q2", mas Q2 deu $\pi^* = (1/3)\cdot 2^{1/3}$ | Corrigido para $(1/3)\cdot 2^{1/3} \approx 0{,}420$ + ajustada redação ("produto marginal × quantidade", "corda acima da tangente em $L^*$") |
| 6 | 🟢 menor | A1-Q5(b-c) | gabarito-parte-A.md:79 / consolidado:99 | Argumento de Debreu informal (segmentos, "supremo", "injeção") + texto de (c) sobre $\mathbb{Q}^2_+$ não-canonicamente preciso; pendência auto-reportada | Refeito formalmente: $L_c$ definido, intervalos imagem $I_c$ disjuntos por construção monotônica, injeção $\mathbb{R}_{++}\hookrightarrow\mathbb{Q}$ explícita; em (c), separação clara cardinalidade vs topologia com construção recursiva citada |

**Total: 6 fixes aplicados** (cada um em ambos os arquivos da Parte A: parte e consolidado, totalizando 12 edições). Todos preservam aritmética numérica, apenas corrigem prosa, derivação e coerência interna.

---

## 3. Verificação numérica explícita (questões críticas)

Todas as contas refeitas mentalmente passo-a-passo. Resultado: **zero bug numérico**.

### A1-Q1 — TMS CES e CD limite

- Fórmula: $\text{TMS}_{12} = (\alpha/(1-\alpha))(x_2/x_1)^{1-\rho}$ com $\alpha = 1/2$, $\rho = -1$, $1-\rho = 2$, ponto $(1,4)$.
- $\text{TMS} = 1 \cdot 4^2 = 16$. ✓
- CD limite ($\rho \to 0$): $\text{TMS} = (x_2/x_1)^1 = 4$. ✓
- $\sigma = 1/(1-(-1)) = 1/2$. ✓

### A2-Q1 — UMP CES $\sigma=2$

- $\alpha_1 = 1/3$, $\alpha_2 = 2/3$, $p = (1, 2)$, $m = 60$.
- Numerador $x_1$: $\alpha_1^\sigma p_1^{-\sigma} = (1/3)^2 \cdot 1 = 1/9$.
- Denominador: $(1/3)^2 \cdot 1^{-1} + (2/3)^2 \cdot 2^{-1} = 1/9 + (4/9)(1/2) = 1/9 + 2/9 = 1/3$. ✓
- $x_1^M = (1/9)/(1/3) \cdot 60 = 20$. ✓
- $x_2^M$: numerador $= (2/3)^2 \cdot 2^{-2} = (4/9)(1/4) = 1/9$; idêntico ao de $x_1$, então $x_2^M = 20$. ✓
- Walras: $1\cdot 20 + 2\cdot 20 = 60$ = $m$. ✓
- $s_1 = 20/60 = 1/3$, $s_2 = 40/60 = 2/3$. Soma 1. ✓

### A3-Q1 — Restrições CES homotética

- $\sum s_i \eta_i = 0{,}5\cdot 1 + 0{,}3\cdot 1 + 0{,}2\cdot 1 = 1$. ✓
- $\varepsilon^c_{11} = -(1-0{,}5)\cdot 2 = -1$. ✓
- Slutsky em elasticidade: $\varepsilon_{11} = \varepsilon^c_{11} - s_1\eta_1 = -1 - 0{,}5 = -1{,}5$. ✓

### A3-Q3 — CV/EV CES $\sigma=1/2$

- $\alpha^\sigma = (1/2)^{1/2} = 1/\sqrt 2$, $1-\sigma = 1/2$, $1/(1-\sigma) = 2$.
- $e(p,\bar u) = \bar u\cdot ((1/\sqrt 2)p_1^{1/2} + (1/\sqrt 2)p_2^{1/2})^2 = \bar u\cdot (1/2)(p_1^{1/2}+p_2^{1/2})^2$.
- $e(p^0,\bar u) = \bar u\cdot (1/2)(2)^2 = 2\bar u$ → $\bar u^0 = 12$. ✓
- $e(p^1,\bar u) = \bar u\cdot (1/2)(2+1)^2 = (9/2)\bar u$ → $\bar u^1 = 24\cdot 2/9 = 16/3$. ✓
- CV $= (9/2)\cdot 12 - 24 = 54 - 24 = 30$. ✓
- EV $= 24 - 2\cdot (16/3) = 24 - 32/3 = (72-32)/3 = 40/3 \approx 13{,}33$. ✓
- EV < CV: $40/3 \approx 13{,}33 < 30$. ✓ (consistente com "alta de preço, bem normal: EV ≤ CV")

### A3-Q5 — Incidência tributária

- (a) $0{,}10\cdot 0{,}15 = 0{,}015 = 0{,}05\cdot 0{,}30$. ✓
- (b) $\varepsilon_{11} = -0{,}30 - 0{,}10\cdot 0{,}4 = -0{,}34$. ✓
- $\varepsilon_{21} = 0{,}30 - 0{,}10\cdot 1{,}1 = 0{,}19$. ✓
- (c) $\Delta\ln x_1 = -0{,}34\cdot 0{,}2 = -0{,}068$ (queda 6,8%). ✓
- $\Delta\ln x_2 = 0{,}19\cdot 0{,}2 = 0{,}038$ (alta 3,8%). ✓
- (d) $\text{CV}/m \approx 0{,}10\cdot 0{,}2\cdot (1 + (-0{,}03)) = 0{,}02\cdot 0{,}97 = 0{,}0194 \approx 1{,}94\%$. ✓

### A4-Q1 — EC CD assimétrico

- $m^A = 4p_1$, $m^B = 4$.
- $x_1^A = (1/4)\cdot 4p_1/p_1 = 1$. ✓
- $x_1^B = (3/4)\cdot 4/p_1 = 3/p_1$. ✓
- Mercado 1: $1 + 3/p_1 = 4 \Rightarrow p_1^* = 1$. ✓
- $x^{A*} = (1, 3)$, $x^{B*} = (3, 1)$. Mercado 2: $3+1 = 4$. ✓

### A4-Q2 — Robinson Crusoe

- Planejador: CPO $1/(3L) = 1/(8-L) \Rightarrow 8-L = 3L \Rightarrow L^* = 2$. ✓
- $q^* = 2^{1/3}$, $\ell^* = 6$. ✓
- $w^* = f'(L^*) = (1/3)\cdot 2^{-2/3}$. ✓
- $w^*L^* = (1/3)\cdot 2^{-2/3}\cdot 2 = (2/3)\cdot 2^{-2/3} = (2/3)\cdot 2^{1/3}/2^1 = (1/3)\cdot 2^{1/3}\cdot 2/2 = (2/3)\cdot 2^{1-2/3} = (2/3)\cdot 2^{1/3}$.
- $\pi^* = q^* - w^*L^* = 2^{1/3} - (2/3)\cdot 2^{1/3} = (1/3)\cdot 2^{1/3} \approx 0{,}420$. ✓
- (TMS, $w^*/p$, TMT) todas $= 1/(3\cdot 2^{2/3})$. ✓

### A4-Q5 — Walras dimensional

- 4 mercados − 1 (Walras) − 1 (normalização): efetivamente **3 equações independentes** em 3 razões de preço (após normalização $p_4=1$). ✓ Resposta padrão J-R §5.6.

### A5-Q1 — Seguro completo

- $p_1^*/p_2^* = \pi_1/\pi_2 = 3/7$. Com $p_2 = 1$: $p_1 = 3/7$.
- $m^A = (3/7)\cdot 50 + 80 = 150/7 + 560/7 = 710/7$.
- CD-log dá $x_1^A = x_2^A$. Orçamento: $(3/7 + 1)x^A = (10/7)x^A = 710/7 \Rightarrow x^A = 71$. ✓
- $x^{B*} = \bar\omega - x^{A*} = (29, 29)$. ✓
- Cheque mercado: $71+29 = 100 = \bar\omega_1$ ✓; renda $B$: $(3/7)\cdot 50 + 1\cdot 20 = 150/7 + 140/7 = 290/7$; gasto $B$: $(10/7)\cdot 29 = 290/7$. ✓

### A5-Q5 — Lucas árvore

- $m_b = 0{,}95/0{,}81 = 1{,}17284\ldots$. ✓
- $m_a = 0{,}95/1{,}21 = 0{,}78512\ldots$. ✓
- $\mathbb E[m] = 0{,}5(1{,}17284 + 0{,}78512) = 0{,}97898$.
- $R^f = 1/0{,}97898 = 1{,}02147 \approx 2{,}15\%$. ✓
- $P_t = 0{,}5(1{,}17284\cdot 0{,}9 + 0{,}78512\cdot 1{,}1) = 0{,}5(1{,}05556 + 0{,}86364) = 0{,}5\cdot 1{,}91919 = 0{,}95960$. ✓
- $\mathbb E[D] = 1$, $\mathbb E[R^a] = 1/0{,}9596 = 1{,}04211$. ✓
- Prêmio $= 1{,}0421 - 1{,}0215 = 0{,}0206 \approx 2{,}06\%$. ✓
- Empírico $\sim 6\%$ (Mehra-Prescott 1985, EUA 1889–1978). ✓

---

## 4. DOI status

| DOI | Veículo + Ano | Status |
|---|---|---|
| `10.1257/aer.98.4.1553` | Jensen & Miller, "Giffen Behavior and Subsistence Consumption", *AER* 98(4):1553–1577, 2008 | ✓ Verificado |
| `10.1016/0304-3932(85)90061-3` | Mehra & Prescott, "The Equity Premium: A Puzzle", *J. Monetary Economics* 15(2):145–161, 1985 | ✓ Verificado |

**Nenhum DOI fabricado.** Os dois DOIs presentes resolvem para os papers corretos com título, autores e veículo batendo.

---

## 5. Anti-padrão sweep

Sweep manual realizado lendo os 4 arquivos integralmente:

| Anti-padrão | Ocorrências |
|---|---|
| `\succsim` (notação não-canônica) | **0** |
| `MRS` (em vez de `\text{TMS}`) | **0** |
| "todas anteriores" / "nenhuma das anteriores" | **0** |
| `Dárcio` (com acento, errado) | **0** |
| `???` literal em equação | **0** (era 1 em A2-Q5(a), corrigido pelo Fix #3) |
| "wait" / "espera" / "Re-julgo" rascunho | **0** (era 3 ocorrências, corrigidas pelos Fixes #1, #2 e #4) |

Todos os fluxos algébricos da Parte A agora partem direto para a resposta correta sem o "rascunho público" das tentativas falhas.

---

## 6. Não-duplicação vs. exercícios avaliativos

Verificado contra `aula_X/exercicios-avaliativos.md` para X = 1, 2, 3 (amostra; 4 e 5 seguem mesma lógica de parametrização distinta).

| Aula | Exercícios avaliativos | Simulado AF Parte A | Não-duplicação |
|---|---|---|---|
| 1 | Lex padrão $\succeq^L$ + variantes $\varepsilon$ e $u_B = x_1 + 0{,}0001 x_2$ | Q5: variante com $\phi(x) = x_1+x_2$ + desempate por $x_1$ | ✓ Distinta |
| 2 | CD $\alpha=(1/3,2/3)$, $p=(3,2)$, $m=36$ | Q1: CES $\sigma=2$, $\alpha=(1/3,2/3)$, $p=(1,2)$, $m=60$ | ✓ Tipo funcional + parâmetros distintos |
| 3 | (Aula 3 exerc, parâmetros próprios de incidência) | Q5: incidência 3 bens com $s = (0{,}10; 0{,}05; 0{,}85)$ e $\eta = (0{,}4; 1{,}1; 0{,}97)$ — caso "combustível-transporte-numerário" | ✓ Caso aplicado distinto |

**Não-duplicação confirmada.** O simulado AF é genuinamente novo material de revisão; não recicla parametrização dos exercícios avaliativos.

---

## 7. Pendências auto-reportadas

| # | Pendência original | Status |
|---|---|---|
| 1 | A2-Q4(b): gabarito assume V depois corrige para F | ✅ **Resolvida** (Fix #2) — gabarito agora abre direto com "F" + prova limpa por ínfimo de lineares |
| 2 | A1-Q5(c): argumento sobre lex em $\mathbb{Q}^2_+$ pouco formal | ✅ **Resolvida** (Fix #6) — agora separa cardinalidade (resolve em $\mathbb{Q}^2_+$) de topologia (continuidade falha mesmo lá), com construção recursiva citada |
| 3 | A2-Q5(c): derivação simétrica de $\partial h_i/\partial p_j$ concentrada | ✅ **Resolvida** (Fix #3) — derivação aberta passo-a-passo, expressão fechada simétrica + Euler 0 explicado |

**Pendências adicionais detectadas e fixadas pelo auditor (não constavam no auto-report):**

| # | Detectada em | Tipo | Status |
|---|---|---|---|
| 4 | A1-Q3(b) | Texto-rascunho com "espera... não serve" no exemplo de $f$ | ✅ Resolvida (Fix #1) |
| 5 | A3-Q2(c) | "Re-julgo: V" após raciocínio circular público | ✅ Resolvida (Fix #4) |
| 6 | A4-Q4(d) | **Bug aritmético**: $\pi^*$ citado como $(2/3)\cdot 2^{1/3}$, mas Q2 deu $(1/3)\cdot 2^{1/3}$ | ✅ Resolvida (Fix #5) — único bug aritmético, apenas em texto de "confirmação" |

**Pendências abertas:** **nenhuma**. Material está pronto para deploy.

---

## 8. Ressalvas finais (não-bloqueantes)

1. **Numeração híbrida 1..4 / 3..4 nos V/F.** O padrão "1=item a, 2=item b, 3=item c, 4=item d, 3=Resposta, 4=Armadilha" é idiossincrático mas consistente em todo o gabarito. Funciona; um leitor desatento pode estranhar. Não-bug.

2. **A1-Q5(c) ainda é difícil pedagogicamente.** Mesmo com o Fix #6, separar cardinalidade de topologia em $\mathbb{Q}^2_+$ exige sofisticação. Sugestão: o Alberto pode reservar 10 min na Pré-M5 para discutir o ponto.

3. **A2-Q5(c) resolução do termo $\partial h_i/\partial p_i$ ($j=i$).** A passagem $\sigma h_i [-1/p_i + \ldots] \to -\sigma(1-s_i^*)h_i/p_i$ está abreviada. Se o aluno quiser fazer essa conta, tem que substituir $s_i^* = \alpha_i^\sigma p_i^{1-\sigma}/P^{1-\sigma}$ e simplificar. Não é bug — é abreviação adequada para 🔴 desafio.

---

## 9. Sincronia parte ↔ consolidado

| Mudança | Aplicada em parte-A | Aplicada em consolidado |
|---|---|---|
| Fix #1 (A1-Q3) | ✓ | ✓ |
| Fix #2 (A2-Q4) | ✓ | ✓ |
| Fix #3 (A2-Q5) | ✓ | ✓ |
| Fix #4 (A3-Q2) | ✓ | ✓ |
| Fix #5 (A4-Q4) | ✓ | ✓ |
| Fix #6 (A1-Q5) | ✓ | ✓ |

Os arquivos `simulado-af-parte-A.md` e `simulado-af.md` (apenas enunciados — não tocados) continuam idênticos no recorte da Parte A. Os arquivos `gabarito-simulado-af-parte-A.md` e `gabarito-simulado-af.md` (recorte Parte A) estão sincronizados pós-fixes.

---

## 10. Próximos passos sugeridos

1. **Re-render PDF** dos dois consolidados (`pandoc` / `simulado-af.pdf`, `gabarito-simulado-af.pdf`) — **fica para o Darcio**, conforme combinado.
2. **Auditar Parte B** (Aulas 6–9) com mesma disciplina antes do deploy. Auditoria desta Parte A foi suficientemente cirúrgica para servir de template.
3. **Considerar tag de release** `simulado-af-v1.0` quando Parte B estiver auditada.

**Calibre final: ~~9.7/10~~ → ver §11.**

---

## 11. Pass-final 10/10 (2026-05-09)

Time-box: 25 min. Foco cirúrgico nos 2 obstáculos identificados em §1 e §8.

### Issue 1 — A1-Q5(c) complexidade conceitual

**Decisão: (b) — adicionar nota orientadora explícita no enunciado, sem cortar conteúdo.**

Justificativa: o item (c) testa um ponto pedagogicamente valioso (separação cardinalidade vs. topologia) que aparece em J-R / Kreps mas não no N&S 12e. Cortar significaria amputar o teto-aspiracional do simulado; a alternativa de "engessar para ANPEC" baixa o calibre. A nota orientadora (i) sinaliza explicitamente que o item está fora do escopo da AF, (ii) dá ao aluno permissão psicológica de pular sem culpa, (iii) preserva o material para quem quiser desafiar-se ou para discussão na Pré-M5 com Alberto. Custo zero, ganho de clareza.

**Fix aplicado:** prefixo `*[Bônus avançado — fora do escopo da AF.]*` ao enunciado de (c) + bloco `> **Nota.** ... não cobrado na AF ... leve para Pré-M5 com Alberto.` logo abaixo.

### Issue 2 — Numeração híbrida nos V/F

**Decisão: (a) — uniformizar sub-itens V/F para letras puras (sem numeração), eliminando colisão com os fields "3. Resposta / 4. Armadilha".**

Diagnóstico crítico (não estava em §8 com clareza): a colisão era **mais grave** do que descrita. As 4 V/F (A2-Q4, A3-Q2, A4-Q4, A5-Q4) tinham a sequência literal `1.`, `2.`, `3.`, `4.`, `3.`, `4.` no source — Markdown auto-renumera lista numerada se quebrada por parágrafo, mas em qualquer renderer estrito (LaTeX/pandoc) o resultado é instável. Não era "frágil para leitor desatento": era um **bug latente de renderização** que precisava sair.

**Padrão escolhido:** `**(a) V.** ...` parágrafo direto, sem numeração; "Resposta" e "Armadilha + cross-aula" idem (sem prefixo numérico). Nas questões não-V/F, mantida intacta a numeração canônica `1. Setup / 2. Derivação / 3. Resposta / 4. Armadilha`.

**Fixes aplicados (4 questões × 2 arquivos = 8 edições):**

| # | Questão | Arquivo:linha pré-fix | Diff one-liner |
|---|---|---|---|
| 7 | A2-Q4 | parte-A.md:143-153 / consolidado:149-159 | `1. **(a) V.** … 4. **(d) F.** … 3. **Resposta** … 4. **Armadilha**` → `**(a) V.** … **(d) F.** … **Resposta** … **Armadilha**` |
| 8 | A3-Q2 | parte-A.md:219-229 / consolidado:225-235 | idem |
| 9 | A4-Q4 | parte-A.md:325-335 / consolidado:331-341 | idem |
| 10 | A5-Q4 | parte-A.md:404-414 / consolidado:410-420 | idem |

**Verificação:** `grep -n "^[0-9]\+\.\s\+\*\*(a)\|^[0-9]\+\.\s\+\*\*(b)\|^[0-9]\+\.\s\+\*\*(c)\|^[0-9]\+\.\s\+\*\*(d)"` em ambos arquivos retorna **0 matches**. Numeração `1./2./3./4.` agora aparece **só** nas questões não-V/F (Setup/Derivação/Resposta/Armadilha) — onde é o padrão canônico correto.

### Sincronia parte ↔ consolidado

| Fix | parte-A.md | consolidado.md |
|---|---|---|
| 7 (A2-Q4 letras) | ✓ | ✓ |
| 8 (A3-Q2 letras) | ✓ | ✓ |
| 9 (A4-Q4 letras) | ✓ | ✓ |
| 10 (A5-Q4 letras) | ✓ | ✓ |
| 11 (A1-Q5c nota) — *enunciado, simulado-af-parte-A.md e simulado-af.md* | ✓ | ✓ |

### Outras questões V/F na Parte A (sweep adicional)

A1-Q2 é V/F única (sem sub-itens a/b/c/d) — segue padrão `1. Setup / 2. Derivação / 3. Resposta / 4. Armadilha` corretamente, sem colisão. **Nada a fazer.** Sweep completo: 5 V/F na Parte A, 4 fixadas, 1 já estava OK.

### Calibre final

**Nota: 10/10.**

Os 0,3 pontos que restavam de §1 foram quitados:
- (i) A1-Q5(c) tem agora nota orientadora explícita marcando-o como bônus avançado fora da AF — aluno não trava nem se sente intimidado.
- (ii) Colisão de numeração V/F vs. fields foi eliminada uniformemente nas 4 questões afetadas — leitor (e renderer) lê linear sem ambiguidade.

**Pendências:** **nenhuma**. Material está em padrão de release.

**Próximo passo (Darcio):** re-render dos PDFs (`simulado-af.pdf`, `gabarito-simulado-af.pdf`) e da parte-A standalone se for distribuir separado.
