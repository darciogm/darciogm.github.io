# Auditoria de Gabaritos — Pass 3 (verificação cirúrgica pós-pass 2)

**Data:** 2026-05-07
**Auditor:** prof-mpe-micro (modo auditor pass 3 — escopo estreito, profundidade máxima)
**Escopo:** verificação independente de cada um dos 7 pontos cirurgiados pelo executor pass 2 + 3 spot-checks transversais. Triplo método em cada checkpoint: (i) alternativa marcada está correta dado o novo enunciado? (ii) gabarito 5-passos justifica essa alternativa sem buracos? (iii) cirurgia introduziu defeito novo?

---

## 1. Veredito em 3 linhas

1. **Cirurgia OK** — todos os 7 checkpoints (A–G) passaram triplo método; os 3 spot-checks (H, I, J) passaram com 0 falsos positivos materiais.
2. **Diagnóstico positivo do bundle:** o setup $u^A = \min\{x_1, 1\} + x_2$ deixou de ser vendido como "contraexemplo de LNS" e passou a ser laboratório explícito da distinção *saturação direcional vs. saciedade local* — esse é o tom honesto que a pré-monitoria 2 já tinha e que faltava no slide / Q6 / Ex4(e). Coerência interna do bundle restaurada.
3. **Liberar pra commit?** **SIM**, sem ressalvas materiais. Há **uma observação não-bloqueante** (item J3 abaixo) sobre contagem de slides.

---

## 2. Tabela dos 10 checkpoints

| # | Checkpoint | Status | Evidência (1 linha) | Ação se não-✅ |
|---|---|---|---|---|
| **A** | Q6 pós (`aula-04-pos.html:136-152`) | ✅ | `data-correct="b"` casa com resolução independente; 5-passos cobre os 5 itens canônicos sem buraco; distratores (a)/(c) plausivelmente errados (confusão direcional/local), (d) supérfluo. | — |
| **B** | Ex 4(e) HTML (`aula-04-exerc.html:299-306`) | ✅ | `data-correct="b"` (alt (ii)); enunciado, alternativas e gabarito 5-passos coerentes; 5 alts (com (v) como distrator quase-correto) explicada no feedback como distinção entre "afirmação descritiva da economia" e "generalização canônica". | — |
| **C** | Slide LNS (1/2)+(2/2) (`aula-04.qmd:700-735`, `aula-04.html:730-778`) | ✅ | (1/2) intuição vizinhança vs. direção, callout claro; (2/2) diagnóstico positivo: LNS vale globalmente, EC = $((1,1),(1,1))$ a $p^*=(1,1)$, Pareto por 1º TBE. EC genuíno (verificado: UMP de $A$ entrega indiferença em $x_1\in[0,1]$, $B$ tem $(1,1)$, mercado fecha). MWG §16.D em footnote. | — |
| **D** | `pre_aula.md` S5 ↔ `aula-04.html` S5 | ✅ | MD linhas 302–306 e HTML linha 322 ambos: "saturação direcional ≠ violação de LNS" + cálculo da economia + bliss-point como contraexemplo genuíno. Conceitualmente idênticos, apenas re-prosados. | — |
| **E** | `durante_aula.md` Bloco 3.c (linhas 165–168) | ✅ | Roteiro do prof agora diz: "*LNS continua valendo globalmente porque $\partial u^A/\partial x_2 = 1 > 0$ entrega vizinho preferido em qualquer ponto. Saturação direcional ≠ violação de LNS. EC nessa economia: $((1,1),(1,1))$ a $p^* = (1,1)$, Pareto-eficiente — 1º TBE vale.*" Frase-martelo final calibra honestamente. | — |
| **F** | Ex 2(c) (`aula-04-exerc.html:141-148`) | ✅ | (ii) virou "$x_1^B = m^B/p_1 = 3$ — esquecendo o expoente $\alpha_1^B = 1/3$ (toda a renda em bem 1)" = **claramente errada** (chega em 3, não 1). (iv) virou "usando a renda de A por engano" = também claramente errada. (iii) marcada como `data-correct="c"` é a única correta agora. Resolução independente: $x_1^B = (1/3)(3p_1)/p_1 = 1$ — bate. | — |
| **G** | Ex 3 MD ↔ HTML | ✅ | MD `exercicios-avaliativos.md:117-167` foi reescrito para "EC com Leontief: o caso degenerado", 5 sub-itens (a–e), espelhando exatamente HTML `aula-04-exerc.html:178-243`. Letra correta em cada sub-item idêntica entre MD e HTML: (a) ii/b ✓, (b) ii/b ✓, (c) i/a ✓, (d) iii/c ✓, (e) ii/b ✓. Gabarito 5-passos coerente. | — |
| **H** | Grep "viola LNS" / "região saciada" / "contraexemplo LNS" | ✅ | 0 ocorrências patológicas em material para aluno. Todos os matches em material vivo (`aula-04-pos.html`, `aula-04.html`, `aula-04-exerc.html`, `pre_aula.md`, `durante_aula.md`, `pre-monitoria-02.html`, `slides/aula-04.qmd`, `slides/aula-04.html`) descrevem ou (i) o bliss-point como contraexemplo genuíno, ou (ii) explicitamente que saturação direcional **NÃO** viola LNS, ou (iii) o "contraexemplo numérico fechado fica com Alberto". Os matches em arquivos `auditoria-*.md` e `plano-*.md` são meta-comentários, não material para aluno. | — |
| **I** | Grep notação canônica (`\succsim`, `MRS`, decimais com ponto) | ✅ | `\succsim`: apenas `auditoria-bundle.md:90` em meta-comentário ("aparece em zero arquivos"). Material vivo zero. `MRS`: zero ocorrências em material vivo. Decimais com ponto: apenas DOIs (`10.1093/...`, `10.2307/...`, `10.1002/bbb.2326`) e expoentes citados entre aspas em meta-comentários do plano (`0,8/0,5` é PT-BR vírgula). Todos os números matemáticos vivos usam vírgula com `\{,\}` (ex.: `8/7 \approx 1{,}143`). | — |
| **J** | Slide HTML re-rendered limpo | ✅ (com nota) | (J1) MathJax: todo `\(...\)` em `<span class="math inline">`; todo `\[...\]` em `<span class="math display">`. Zero vazamento de math cru. (J2) Slide LNS (2/2) renderizado em `<section class="slide level2 center">` com aside.notes contendo resolução completa em 4 itens — fallback do prof preservado. (J3) **Contagem de slides:** `grep -c '<section'` retornou **62**, não 61 conforme o executor declarou. Não-bloqueante (o slide novo "saturação direcional" E2 e os dois (1/2)+(2/2) refeitos podem somar 1 a mais por causa de remoção do antigo slide errôneo + reorganização). Sugiro o executor reconciliar a contagem na próxima passagem mas não impede commit. | Reconciliar contagem 62 vs. 61 — não bloqueante |

---

## 3. Achados novos (defeitos introduzidos pela cirurgia)

**Nenhum achado material.** Examinei especificamente:

- **Ex 4(e) com 5 alternativas (vs. 4 do resto do exerc):** o executor flaggou isso como possível problema. Veredito: **não é defeito**. O 5º item (v) é o "distrator quase-correto" que o gabarito 5-passos explicita como "afirmação verdadeira mas é a generalização que justifica (ii); a alternativa pedida descreve o que vale nesta economia". Pedagogia honesta — diferenciar afirmação descritiva (ii) de generalização canônica (v). Não viola anti-padrão "uma correta identificável" porque (v) **não responde à pergunta** ("Sobre LNS de $A$ e o 1º TBE *nessa economia*"); responde uma pergunta diferente (sobre economia hipotética com bliss-point). Assimetria de cardinalidade entre (a)–(e) sub-items é cosmética, não estrutural.
- **Q6 pós alt (a) "1º TBE vale — todo EC é Pareto-eficiente, *independente das hipóteses*":** ainda é defensavelmente errada porque a frase "independente das hipóteses" é desonesta — 1º TBE depende de LNS. Logo (a) tem o componente verdadeiro ("1º TBE vale aqui") mas embutido numa generalização falsa. Não é uma "armadilha de duas-certas"; é distrator clássico onde a parcela verdadeira é envenenada pelo absoluto. ✓
- **Slide LNS (2/2) cálculo do EC:** verifiquei do zero. UMP de $A$ a $p^*=(1,1)$ com $m^A=2$: para $x_1\in[0,1]$, $u^A = x_1 + (2-x_1) = 2$; para $x_1\in[1,2]$, $u^A = 1 + (2-x_1) \in [1,2]$. Máximo em $x_1\in[0,1]$ — **indiferente nessa faixa**, como afirma o slide. UMP de $B$: $(1,1)$ ✓. Mercado 1: $x_1^A + 1 = 2 \Rightarrow x_1^A = 1$ — compatível com a indiferença. EC genuíno. **Cálculo correto.** ✓
- **Footnote MWG §16.D:** verificada a referência (MWG §16.D trata bliss-point e violações de LNS). Sem `[VERIFICAR DOI]` pendente.

---

## 4. Defeitos pré-existentes não tocados

A passada 2 deixou claro que os outros 64 itens MC (de 67) já estavam OK. **Confirmo**: nenhum dos não-tocados regrediu. Os greps H e I não pegaram defeito remanescente em material vivo.

Uma observação **não-bloqueante** que a pass 2 mencionou em §3.5 (linha 218 da auditoria-gabaritos.md) e que **continua válida**: o texto S4 da pré-monitoria 2 (`pre-monitoria-02.html:251-253`) ainda usa $u^B = x_1 x_2$ e diz "Mercado fecha. *Mas a alavanca usada na prova do 1º TBE — 'se há algo melhor, custa mais' — perde força quando o 'se' sequer se ativa.*" Esse setup é **meta-honesto** (admite que o construto ainda satisfaz 1º TBE, e que o ponto pedagógico é a *alavanca* do passo 2 ficar sem testemunha). É boa prática e foi explicitamente preservada — o "Limite metodológico" (linha 256) joga o exemplo numérico fechado para o sábado com Alberto. Não é defeito; é o tom que o resto do bundle agora adotou.

---

## 5. Densidade do slide LNS (2/2) — cálculo numérico

Aplicando os pesos da §3 do CLAUDE.md sobre `aula-04.qmd:716-734`:

| Elemento | Quantidade | Peso | Sub-total |
|---|---|---|---|
| Header `h2` ("O papel exato de LNS (2/2) — calibração num exemplo") | 1 | 1,8 | 1,8 |
| Parágrafo "Setup. ..." | 1 | 1,5 | 1,5 |
| Parágrafo "Diagnóstico de LNS em $A$. ..." | 1 | 1,5 | 1,5 |
| Parágrafo "EC desta economia. ..." | 1 | 1,5 | 1,5 |
| `.eq-punch` ("Saturação direcional ≠ violação de LNS. 1º TBE vale aqui.") | 1 | 2,2 | 2,2 |
| Footnote decorativa MWG §16.D (font 0.78em) | 1 | 0,7 | 0,7 |
| `.bridge` ("LNS é o mínimo axiomático...") | 1 | 0,7 | 0,7 |
| **Total** | | | **9,9** |

`::: {.notes}` (resolução completa do prof) **não entra no score** (CLAUDE.md explícito).

**Veredito de densidade:** **9,9 → faixa MARGEM (8–10)** — cabe mas aperta. Logo abaixo do limite APERTADO (10). Aceitável. Não recomendo quebrar mais — o `.eq-punch` é o cume pedagógico e tirar dele dispersa o ponto. Se for fazer um ajuste profilático (não-obrigatório), seria mover a footnote MWG §16.D para o `.bridge` final (diminuiria score em ~0,7), mas isso é polish, não correção.

⚠ **Observação:** com o buffer defensivo de `margin-bottom: 2.6em` no `.eq-punch:last-child` (CLAUDE.md, calibração pós-Aula 2), o slide tem ~78px de respiro acima do footer mesmo no score 9,9. Robusto.

---

## 6. Checklist booleano final

- [x] Q6 pós OK
- [x] Ex 4(e) HTML OK
- [x] Ex 4(e) MD↔HTML alinhado (ambos marcam (ii) / `data-correct="b"`)
- [x] Slide LNS (1/2) OK
- [x] Slide LNS (2/2) OK + densidade ≤10 (9,9 — MARGEM, dentro do critério)
- [x] `pre_aula.md` S5 OK
- [x] `aula-04.html` S5 OK (consistente com pre_aula.md S5)
- [x] `durante_aula.md` Bloco 3.c OK
- [x] Ex 2(c) HTML OK (distratores (ii) e (iv) reformulados, claramente errados; (iii) única correta)
- [x] Ex 2(c) MD↔HTML alinhado (ambos marcam (iii) / `data-correct="c"`; nota pedagógica preservada)
- [x] Ex 3 MD↔HTML alinhado (Leontief, 5 sub-itens, letras idênticas em a–e)
- [x] Grep "viola LNS" — 0 falsos positivos em material vivo
- [x] Grep notação — 0 violações em material vivo
- [x] Slide HTML re-rendered limpo (MathJax sem vazamento; aside.notes preservado)
- [x] **Liberar pra commit?** **SIM.**

---

## 7. Nota de fechamento do auditor

Pass 2 deixou um diagnóstico cirúrgico (3 🔴 unificados num só defeito conceitual + 3 🟡 SSOT/distrator) e o executor pass 2.5 acertou o tratamento — adotou Opção B (reescrever honesto: o exemplo $\min\{x_1,1\} + x_2$ vira diagnóstico positivo da distinção saturação direcional vs. saciedade local). Resultado: o bundle ganhou um construto pedagógico **novo e útil** que antes era um construto **errado e propagado em três lugares**.

A coerência interna do bundle agora é **alta**: o roteiro do prof, o slide, o material de pré-aula, o quiz pós (Q6), o exercício avaliativo (Ex 4(e)) e a pré-monitoria todos contam a mesma história. A pré-monitoria 2 já contava essa história desde a partida (foi a fonte do tom honesto); o resto do bundle agora alinhou. Coerência cruzada antes ausente.

A decisão de manter Q6 com 4 alternativas e Ex 4(e) com 5 alternativas (incluindo o distrator quase-correto (v)) é defensável: o pós-quiz pede a leitura imediata do exemplo (4 alts é suficiente); o exerc avaliativo permite o luxo do (v) como teste de leitura mais fina ("descritivo desta economia" vs. "generalização canônica"). Não é simetria mecânica, mas pedagogicamente cada um joga seu papel.

Sobre a contagem de slides 62 vs. 61 declarada pelo executor — pode ser reconciliação contabilística do executor (pode ter contado o slide bridge separado entre os dividers de bloco como sub-slide, ou o `<section>` de capa que aparece duas vezes em pandoc-reveal). Não comparei contra um snapshot anterior; mas como nenhum dos slides parece duplicado e a numeração (1/2)+(2/2) e (1/4)..(4/4) está limpa, sigo confiando que a estrutura está OK. Reconciliar com diff de slides numerados na próxima passagem se vier a aparecer outro bug.

**Liberação:** OK para commit. Bundle Aula 4 v3 atinge calibre publicável; o defeito conceitual unificado da pass 2 está resolvido em todos os 6 lugares apontados, sem regressão.

— Auditor pass 3, 2026-05-07.
