# Pass-5 Referee 2 — Aula 6 (Arrow-Debreu II)

**Data:** 2026-05-08 · **Modo:** Referee 2 implacável, primeira passada de auditoria · **Escopo:** todos os 9 artefatos (3 MDs + 4 HTMLs + 1 qmd + theme.scss/logo) sob lente J-R §5.5/§5.6 como teto. Nenhum pass-3/4 anterior — esta é a única passada antes da abertura da pré-aula em 21/05.

---

## Veredito de uma linha

**SIM-COM-FIXES, mas há 2 BLOCKERS algébricos que invalidam questões.** O bundle não pode subir como está: o Exercício 5 está conceitualmente quebrado (MD vs. HTML divergem no enunciado E o MD tem alternativa com texto auto-contraditório E erro aritmético dentro da própria alternativa); o Exercício 1(c) e 1(d) do HTML têm gabarito inconsistente sobre normalização de preços. Precisa intervenção antes de qui 21/05 madrugada.

---

## Resumo executivo

A produção é tecnicamente competente: cobertura J-R §5.5/§5.6 par-Jehle nos pontos centrais; DOIs amostrados (Hart 1975, Lucas 1978, Harrison-Kreps 1979) **conferem** via Crossref/sciencedirect; MathJax delimitadores impecáveis em todos os HTMLs e no qmd (zero raw `$` em `platform/aula-06*.html`, zero `\(...\)` cru no qmd); zero `\succsim`, zero `MRS` puro, decimais com vírgula. O **score global estimado é 8.6/10** (vs. 9.7 da Aula 5 pass-5 final). Achados mais graves: (B1) **Exercício 5 — incoerência total entre o enunciado-cabeçalho do MD (Leontief) e o do HTML (linear)** + bug aritmético dentro de alternativa do MD; (B2) **Exercício 1 do HTML — convenção de "normalização" dos preços é introduzida no enunciado mas o sub-item (b) implicitamente usa a versão normalizada (\(p^*_1 = p^*_2 = 0{,}5\)) enquanto (c) volta para \(p^* = (1,1)\)**, sem reconciliar — confunde o aluno; (M1) **duplicação literal** EP-1/EP-2 da pré-aula com Ex1/Ex2 dos avaliativos (mesmas dotações, ativos, perguntas). 5 majors mais sutis. Cobertura de J-R §5.5/§5.6 OK, com Q10 do pós-aula 🔴🔴 indo até Harrison-Kreps 1979 (TFAP) — **acima de J-R §5.6**, mas defensável como teto avançado.

---

## Achados por severidade

### 🔴 Blockers (impedem deploy)

**B1.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: alinhar MD ao HTML (mantendo preferências **lineares** `u = x_1 + 2x_2` em todo o exercício, eliminando a versão Leontief do cabeçalho do MD). Os 4 sub-itens (a)-(d) ficam idênticos MD ↔ HTML; (a) sob `p=(1,1)` ⇒ canto `(0, 20)` em bem 2 (TMS = 1/2 < 1 = razão de preços, bem 2 vence em util/moeda); (b) sob `p=(1,2)` ⇒ multivalor (TMS = razão de preços); (c) Kakutani; (d) Berge. Bug aritmético (`(10, 0)`/"bem 1") removido junto com o sub-item antigo. Gabarito 5-passos reescrito com derivação numérica explícita dos dois casos. Verificação: `grep -E "Leontief|min\{x_1"` no Ex 5 retorna 0; `grep -E "x_1 \+ 2 x_2"` retorna ocorrências paralelas em MD e HTML.

**B1 (descrição original).** `aula_6/exercicios-avaliativos.md:243–303` ↔ `platform/aula-06-exerc.html:303–358` — **Exercício 5 está com 3 problemas sobrepostos.**

- **B1.a.** **Enunciado-cabeçalho diverge.** MD (linha 247) declara: "Preferências do agente: \(u(x_1, x_2) = \min\{x_1, 2x_2\}\) (Leontief, **não estritamente convexa**)" + dotação \(\omega = (10, 10)\) — exercício gira em torno de Leontief com switch para linear no sub-item (b). HTML (linha 312) declara: "agente único em economia \(L = 2\) com preferências **lineares** \(u(x_1, x_2) = x_1 + 2 x_2\)" — Leontief **completamente removida**. **Os dois artefatos contam histórias diferentes**, e a SSOT canônica é o MD pelo padrão da Aula 5.

- **B1.b.** **Bug aritmético dentro de alternativa do MD (não vai pro HTML mas é incorreto na SSOT).** MD linha 266, alternativa (b)(iii):
  > "(iii) **Demanda é correspondência:** TMS = 1/2 = p1/p2 = 2... espera. Recompute: TMS = ∂u/∂x_1/(∂u/∂x_2) = 1/2. Razão de preços p_1/p_2 = 1/0{,}5 = 2. Como TMS ≠ razão de preços, **demanda é canto:** x* = (m/p_1, 0) = (10/1, 0) = (10, 0) é resposta única (consume só bem 1 porque ele dá mais utilidade por unidade de moeda)."

  Dois problemas distintos:
  1. A alternativa começa "Demanda é correspondência" e termina concluindo que é canto único (10, 0). **Auto-contradição interna em uma alternativa que o aluno vai ler.**
  2. A conclusão aritmética está **errada**: sob \(u = x_1 + 2x_2\), \(p = (1, 0{,}5)\), \(m = p \cdot \omega = 10 + 5 = 15\). Util/moeda do bem 1 = 1/1 = 1; util/moeda do bem 2 = 2/0,5 = 4. Bem 2 é melhor. Canto correto é \(x^* = (0, m/p_2) = (0, 30)\), **não** \((10, 0)\). A justificativa "consume só bem 1 porque dá mais utilidade por unidade de moeda" **inverte** a comparação correta.

- **B1.c.** **Sub-item (a) do HTML faz pergunta sob u linear que contradiz MD sub-item (a).** HTML (linha 315–322): "(a) Sob preços p = (1, 1), a demanda do agente (sob u = x_1 + 2x_2) é:" → resposta correta (b): \(x^* = (0, 20)\), canto. MD (linha 253–260): sub-item (a) pergunta sobre **Leontief**, resposta correta (ii): demanda Leontief é função única (Brouwer suficiente). **São perguntas diferentes** com objetivos pedagógicos diferentes — em MD o ponto é mostrar que Leontief não exige Kakutani; em HTML o ponto é mostrar canto vs. multivalor sob linear.

  **Fix proposto:** alinhar HTML ao MD (que é a SSOT canônica da Aula 5). Trazer o enunciado Leontief de volta para o cabeçalho do HTML. Reformular sub-item (a)(b)(iii) do MD eliminando a auto-contradição e corrigindo "(10, 0)" → "(0, 30)" + "bem 1" → "bem 2". Tempo: ~30 min.

  **Ou (mais cauteloso):** unificar ambos no enunciado mais simples (só linear, como no HTML), descartar a história Leontief-vs-linear do MD, e fazer matching 1:1. Tempo: ~25 min.

**B2.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: padronizar Ex 1 (MD e HTML) para a normalização canônica `\sum p = 1` (mesma da Aula 5), eliminando a convenção numerário `p^*_2 = 1`. Sub-item (c) do HTML colapsou preços-Arrow + preços de ativos numa única questão coerente: `p^* = (0{,}5; 0{,}5)` ⇒ `q^*_{bond} = q^*_{ação} = 1` por não-arbitragem. Sub-item (e) recalibrado para `1·20 + 1·(-20) = 0`. MD reorganizado para espelhar o HTML (item (c) preços + ativos, (d) portfolio, (e) verificação). Distratores em (c) cobrem as armadilhas: mistura de normalizações (alt. ii) e numerário trivial (alt. iii). Gabarito 5-passos derivação reescrito, armadilha contempla a "mistura de convenções". Verificação: `grep -E "p\\*_2 = 1|Numerário"` no Ex 1 retorna 0 ocorrências; `q^* = (1, 1)` aparece no MD e HTML em paralelo.

**B2 (descrição original).** `platform/aula-06-exerc.html:62–108` (Exercício 1) — **convenção de normalização de preços é incoerente entre sub-itens.**

  - Enunciado (linha 62) declara: "Numerário: \(p^*_2 = 1\) (e portanto \(p^*_1 = 1\) também, sem normalização \(\sum p = 1\))."
  - Sub-item (b) (linha 76–78) **continua dentro do AD canônico**, mas a alternativa correta diz "\(x^{A*} = x^{B*} = (80, 80)\)" — é uma alocação, sem mencionar preços. OK.
  - Sub-item (c) (linha 84–88) afirma "Os preços de equilíbrio dos ativos no mercado Radner (em \(p^* = (1, 1)\))" e a alternativa correta (iii) diz "\(q^*_{\text{bond}} = p^*_1 + p^*_2 = 2\)". OK em \(p^* = (1, 1)\), mas **o gabarito 5-passos (linha 113) diz "Em \(p^* = (1, 1)\) (sem normalização \(\sum p = 1\), então preços-Arrow têm 'valor de moeda' igual em cada estado)"** — frase confusa que sugere ao aluno que a normalização foi escolhida por uma razão econômica especial. Não foi: foi escolha arbitrária para ter números limpos. Se o aluno usar a normalização \(p^*_1 + p^*_2 = 1\) (canônica em todos os outros exercícios + na Aula 5), ele acha \(p^* = (0{,}5; 0{,}5)\) e \(q^*_{\text{bond}} = 1\), \(q^*_{\text{ação}} = 1\) (alternativa (i), marcada como **errada**).
  - Comparado ao MD sub-item (c) (linha 47–52), este é mais cuidadoso: **dá a normalização \(p^*_1 + p^*_2 = 1\)** e responde \(p^*_1 = p^*_2 = 0{,}5\), depois sub-item (d) volta para \(p^* = (1, 1)\) (sem normalização) explicitamente. **MD dá os DOIS sistemas separadamente; HTML mistura.**

  **Severidade: blocker porque** o aluno cuidadoso, treinado pela Aula 5 a normalizar \(\sum p = 1\), vai marcar a alternativa (i) "(\(q^*_{\text{bond}} = 1, q^*_{\text{ação}} = 1\))" com confiança, e ser penalizado por uma convenção arbitrária do enunciado. Vai parecer pegadinha, não calibrador. **Fix:** seguir o MD: dar primeiro a normalização \(p_1 + p_2 = 1\) (sub-item c MD), responder \(p^* = (0{,}5; 0{,}5)\), e em (d) reformular como "**sob a alternativa de normalização** \(p^*_2 = 1\)" e refazer a conta. Aceita os dois sistemas simultaneamente como exercício didático. Tempo: ~20 min.

### 🟡 Major (fix antes de quarta 21/05 abertura aluno)

**M1.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: alterar dotações **na pré-aula** (EP-1 e EP-2), preservando a estrutura conceitual paralela mas calibração numérica diferente. EP-1: `ω^A = (50, 110)`, `ω^B = (110, 50)` (vs. Ex 1 com `(60, 100)/(100, 60)`); agregado segue livre de risco em (160, 160) e portfolio replicador agora resolve `Aθ^A = (30, -30)` em vez de `(20, -20)`. EP-2: `ω^A = (100, 60, 20)`, `ω^B = (20, 60, 100)` (vs. Ex 2 com `(90, 60, 30)/(30, 60, 90)`); agregado livre de risco em (120, 120, 120) preservado e o vetor inviável agora é `(-40, 0, 40)` em vez de `(-30, 0, 30)`. Adicionado nota explícita "parâmetros distintos dos do Ex 1/Ex 2 — treino formativo, não preview literal". Verificação: `grep` confirma EP-1=`(50, 110)`, Ex 1=`(60, 100)`; EP-2=`(100, 60, 20)`, Ex 2=`(90, 60, 30)`. **Anti-padrão CLAUDE.md eliminado.**

**M1 (descrição original).** `aula_6/pre_aula.md:364–397` (EP-1, EP-2, EP-3) ↔ `aula_6/exercicios-avaliativos.md:23–127` (Ex1, Ex2) — **duplicação literal** de exercícios de papel da pré-aula com avaliativos.

  - EP-1 (pré-aula): \(L=1, |S|=2, I=2\), \(\pi = (1/2, 1/2)\), \(v = \ln c\), \(\omega^A = (60, 100)\), \(\omega^B = (100, 60)\), bond + ação \((0, 2)\), pergunta sobre rank, alocação, q*, θ^A, restrição em t=0. **Idêntico** ao Exercício 1 dos avaliativos (apenas reformulado como múltipla escolha em vez de aberto).
  - EP-2 (pré-aula): \(L=1, |S|=3, I=2\), \(\pi = (1/3, 1/3, 1/3)\), \(\omega^A = (90, 60, 30)\), \(\omega^B = (30, 60, 90)\), bond + ação \((0, 1, 3)\), pergunta sobre rank, alocação ideal, span. **Idêntico** ao Exercício 2 dos avaliativos.

  **Por que é major (não minor):** o aluno que tenta EP-1/EP-2 na pré-aula (Seção 6, com textarea de "abordagem") vai chegar nos avaliativos e ver **a mesma economia, mesmas dotações, mesmas matrizes** — só com sub-itens em múltipla escolha. Nada novo a calibrar. Telemetria de "abordagem" da pré-aula vira preview literal do gabarito dos avaliativos. **Anti-padrão CLAUDE.md** "❌ Múltiplas construções do mesmo contraexemplo" — caso específico dessa regra.

  **Fix:** trocar dotações ou estrutura de ativos em uma das duas instâncias. Sugiro mudar EP-1 para \(\omega^A = (50, 110), \omega^B = (110, 50)\) (mantém estrutura simétrica + agregado livre de risco mas números diferentes), e EP-2 para \(\omega^A = (100, 60, 20)\), \(\omega^B = (20, 60, 100)\) (idem). Tempo: ~20 min.

**M2.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: substituir Q10 inteiramente por **questão sobre unicidade do equilíbrio AD sob mercados completos** (J-R §5.5.4), eliminando qualquer referência a Stiemke/TFAP/Harrison-Kreps. Pergunta nova: "preferências estritamente convexas são necessárias para garantir unicidade do equilíbrio AD?" Resposta correta (b): estrita convexidade não é suficiente para unicidade global (Sonnenschein-Mantel-Debreu permite múltiplos equilíbrios mesmo com preferências suaves; contraexemplo Edgeworth com Cobb-Douglas em J-R §5.4 Fig. 5.5) e **não é necessária** em economias com simetria (agregado livre de risco força alocação única por simetria mesmo com preferências apenas convexas). Calibre 🔴🔴 preservado: a questão exige distinguir três tipos de unicidade (demanda individual, equilíbrio walrasiano, alocação) e reconhecer que estrita convexidade só toca o primeiro. Distratores tightened: (a) confunde existência com unicidade, (c) é o erro mais frequente "estrita convexidade ⇒ equilíbrio único", (d) inverte concavidade/convexidade. Gabarito 5-passos cita Arrow-Hahn 1971 §9 (gross substitutes), Cass-Shell 1983 (sunspot), Magill-Quinzii §15 (multiplicidade em incompletude), Aulas 7-8-9 como ganchos. Verificação: `grep -E "Stiemke|Farkas|Harrison-Kreps|TFAP"` no `aula-06-pos.html` retorna apenas a citação **negativa** na peer-review ("sem invocar Stiemke, TFAP nem Harrison-Kreps") — zero ocorrências afirmativas. Calibre dentro do teto J-R §5.5.4 confirmado.

**M2 (descrição original).** `platform/aula-06-pos.html:212–229` (Q10 🔴🔴 — TFAP/Harrison-Kreps) — **calibre acima do teto J-R §5.5/§5.6**.

  - Conteúdo da Q10: "Existência de SDF estritamente positivo \(\Leftrightarrow\) ausência de arbitragem; Lema de Stiemke; unicidade do SDF \(\Leftrightarrow\) completude". O agente de produção marcou esta questão como auto-risco (riscos auto-identificados #1).
  - **J-R §5.5 / §5.6 NÃO trata explicitamente Stiemke nem TFAP**. Stiemke é Hahn-Banach / Farkas-Minkowski-style; aparece em MWG §17.G (TFAP) e em livros de finance (Pliska, Duffie). J-R §5 fica em existência walrasiana e equivalência AD↔Radner; não chega ao TFAP formal.
  - **Hart 1975 + Lucas 1978** estão em J-R §5.5–§5.6 (sketch). **Harrison-Kreps 1979** está fora.
  - O CLAUDE.md autoriza calibre 🔴 = "Jehle-Reny 3e teto de conforto" — **Q10 ultrapassa**. Defensável apenas como 🔴🔴 (dois pontinhos vermelhos), que o autor já marcou. Mas o CLAUDE.md não documenta o nível 🔴🔴 como categoria oficial — é uma extensão informal do autor para "questão-cabeça".

  **Severidade: major porque** (a) abre precedente para Q10s 🔴🔴 que escapam o teto declarado da disciplina; (b) o gabarito da Q10 explicita o Lema de Stiemke por nome — aluno que não viu Stiemke (não está em J-R §5) vai marcar "qualquer alternativa que pareça lógica" sem internalizar o passo crítico; (c) sai da promessa pedagógica do bundle (que aponta J-R §5.5/§5.6 como leitura formal principal, sem TFAP).

  **Fix proposto (minimamente invasivo):** reescrever Q10 como uma questão de "unicidade vs. existência de SDF" sem invocar Stiemke nominalmente. Pergunta-chave preservada (existência SDF é sobre não-arbitragem, completude é sobre unicidade), mas a derivação no gabarito invoca apenas álgebra de span + Hahn-Banach **com referência a J-R §5.5 / Magill-Quinzii §10**, não a Stiemke. Mantém calibre 🔴🔴 mas sem ferramentas que o aluno não viu. Tempo: ~25 min.

  **Fix alternativo (maximalista):** trocar Q10 por questão sobre **suavização de consumo intertemporal sob CRRA + restrição de incompletude** (caso particular da Aula 6), com cálculo numérico em \(|S| = 2, |T| = 2\). Mais alinhado com o teto J-R declarado. Tempo: ~45 min.

**M3.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: **opção (ii) — manter declarativo + reforçar gabarito 5-passos com referências exatas**. Não foi adicionado cálculo numérico do equilíbrio Radner (rota (i)) porque exigiria UMP individual + market-clearing em duas estruturas de ativos — fora do calibre N&S/J-R desta lista. Em vez disso, o gabarito 5-passos no MD (passo 2 — derivação) e no HTML (parágrafo destacado em fundo amarelo) foi reescrito para citar duas referências canônicas com **localização precisa**: (a) **Hart (1975, J. Economic Theory 11(3): 418–443, Section IV — "Welfare Properties of Equilibrium")** para a Pareto-ineficiência genérica de equilíbrios incompletos; (b) **Geanakoplos & Polemarchakis (1986, "Existence, Regularity, and Constrained Suboptimality of Competitive Allocations When the Asset Market is Incomplete", em *Uncertainty, Information and Communication: Essays in Honor of Kenneth J. Arrow, vol. III*, ed. Heller-Starr-Starrett, Cambridge UP, Theorem 1)** para "adicionar ativo pode mover equilíbrio para alocação constrained-Pareto-inferior". Adicionado mecanismo intuitivo descritivo ("agente vendendo seguro residual via ação perde quando opção entra"). Aluno que quiser ver o cálculo numérico é redirecionado a **Magill-Quinzii (1996) §10.3**. Decisão pedagógica é **explicitada no passo 5 (peer-review)** — transparência sobre a escolha de design. Verificação: `grep` confirma "Section IV", "Theorem 1", "Magill-Quinzii §10.3" presentes em ambos MD e HTML.

**M3 (descrição original).** `platform/aula-06-exerc.html:393` (Ex 6(c)) — **enunciado declara cenário hipotético sem cálculo numérico do equilíbrio Radner**.

  - Sub-item (c) muda \(\omega^B = (60, 60, 60)\) (de \((30, 60, 90)\)), agregado vira arriscado \((150, 120, 90)\), pergunta se adicionar opção pode piorar bem-estar. Resposta correta: pode ou não.
  - **Não há cálculo concreto mostrando o caso onde piora.** A justificativa do gabarito (linha 421) cita "agente vendedor implícito de seguro pode perder lucro de monopólio" — **prosa sem álgebra**. Aluno cético vai pedir "mostra-me com números". Para esse setup específico (\(|S|=3\), agentes log, \(\omega^B = (60, 60, 60)\)), **GP 1986 não dá garantia óbvia de que vai piorar** — depende dos detalhes do equilíbrio Radner com 2 ativos vs. 3.

  **Por que é major (não minor):** o sub-item afirma como verdade geral o que é teoricamente possível mas não demonstrado para a economia específica. O **Ex 6 do MD** (linha 332–344) é literalmente igual nesse ponto. Aluno do mestrado profissional treinado em modelos quantitativos vai pedir o cálculo.

  **Fix proposto:** adicionar nota explícita no gabarito: "Para mostrar quem ganha vs. quem perde nesta economia específica, é necessário resolver os dois equilíbrios Radner (2 ativos vs. 3 ativos) numericamente — fora do escopo desta lista. **Ver Magill-Quinzii (1996) §10.3 para exemplos completos.** O ponto pedagógico aqui é reconhecer que a mudança de bem-estar é **possível em ambas as direções**." Tempo: ~10 min.

**M4.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: **rebalancear timing master para o canônico Aulas 1–5** + dar ao Bloco 4 (SDF + Euler) os 10 min liberados pela redução do Bloco 0. Bloco 0 cai de 15 → **5 min** (cumprimento + recall enxuto da equação fundamental do SDF da Aula 5; sem triagem expandida). Triagem das reflexões "nebuloso" desce para os primeiros 3 min do Bloco 1 — sem checklist de "padrões esperados", professor lê o que vier e diz "vai aparecer no Bloco X". Bloco 4 sobe de 20 → **30 min**, ganhando ar para SELIC + VIX + **Hansen-Jagannathan bounds** (B4.d novo, 4 min) + **equity premium puzzle de Mehra-Prescott 1985** + extensões (Campbell-Cochrane, Barro 2006, Epstein-Zin 1989). B4.b e B4.c expandidos de 6 → 8 min cada. Soma do timing master: 5+40+10+40+40+10+30+5 = **180 min** ✓. Horários internos atualizados em todos os blocos (Pausa 1: 20:15–20:25; Bloco 2: 20:25–21:05; Bloco 3: 21:05–21:45; Pausa 2: 21:45–21:55; Bloco 4: 21:55–22:25). Slide 3 do `aula-06.qmd` (tabela "Roteiro da noite") e cabeçalho do "Bloco 4" no qmd atualizados. Verificação aritmética: `python3 -c "print(sum([5,40,10,40,40,10,30,5]))"` retorna 180 ✓.

**M4 (descrição original).** `aula_6/durante_aula.md:25–34` — **Bloco 0 de 15 min vs. 5 min canônico das Aulas 1–5**.

  - O autor justificou (linha 36): "Bloco 0 está mais longo (15 min vs 5 min na Aula 5) por design: a Aula 6 pressupõe profundamente a Aula 5".
  - **Defensável**, mas: (a) timing master tem 180 min totais e a aula presencial é estritamente 180 min; (b) Bloco 4 (SDF + Euler + boxes) ficou com 20 min — **muito apertado** para cobrir Lucas 1978, Hansen-Jagannathan 1991, SELIC e VIX com cuidado.
  - Comparação: Aula 5 também tem SDF como bloco final, com **30+ min** para cobrir conta numérica.

  **Severidade: major porque** o conteúdo de macro-finanças (SDF intertemporal + 2 boxes) é um dos pontos pedagógicos mais aplicados da disciplina, e está espremido por uma triagem de reflexão estendida.

  **Fix proposto:** Bloco 0 de 10 min (não 5 — concessão pelo recall), Bloco 4 de 25 min. Reduzir B0 cortando a "previsão de 4 padrões esperados" da triagem (linha 56–60); o professor lê o que vier sem checklist. Tempo: ~5 min de edição no MD.

**M5.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: adicionar explicitamente o **lema θ = A^{-1}(x − ω)** ao gabarito 5-passos da Q2 pós-aula. Reescrito o passo 1 (ponto-chave) para abrir com o lema nominalmente: "Lema da implementação Radner ↔ AD (Aula 5 + Aula 6 Bloco 2). Dado x − ω (vetor de troca contingente líquida que o agente quer alcançar via mercado de ativos), o portfolio Radner que replica essa troca é θ = A^{-1}(x − ω). Existência: A invertível ⇔ mercado completo (rank(A) = |S|). Restrição orçamentária em t=0: q·θ = 0, equivalente algebricamente à restrição walrasiana AD individual sob não-arbitragem q_j = Σ_s p_s A_{sj}." Reescrito o passo 2 (derivação) para abrir com **passo 1 explícito** ("identifique a troca líquida: x − ω = (5, 3) − (3, 5) = (2, −2)") seguido de **passo 2** ("aplique o lema: Aθ = x − ω"). Aluno agora vê o passo "subtrai dotação para achar transferência líquida" antes da álgebra do sistema linear. Verificação: `grep` confirma "Lema da implementação", "θ = A^{-1}(x − ω)", "A invertível ⇔ mercado completo" presentes na Q2.

**M5 (descrição original).** `platform/aula-06-pos.html:60–73` (Q2 🟡 — réplica numérica) — **enunciado da Q2 não diz que o cálculo \(A\theta = (2, -2)\) já está dado, e a fórmula da derivação no gabarito troca a matriz pela do exercício mas sem o passo de "como chegamos a (2, -2)".**

  - Enunciado (linha 60): "Para implementar a alocação \(x = (5, 3)\) a partir da dotação \(\omega = (3, 5)\), o portfolio é tal que \(A\theta = (2, -2)\)."
  - **Aluno tem que aceitar \((2, -2) = x - \omega\) sem o passo "subtrai dotação para achar transferência líquida".** Para questão 🟡 isso é OK, mas o gabarito (linha 67–73) também pula esse passo — então o aluno que não viu o `θ = A^{-1}(x - ω)` da Aula 5 fica com lacuna.
  - O gabarito pula direto para o sistema linear. **Falta o lema "θ implementa x sse Aθ = x − ω"** que está implícito.

  **Severidade: major (não minor) porque** alunos que vão direto da pré-aula (Seção 4 conceitual) para o quiz pós sem revisar o sketch da equivalência AD↔Radner vão ficar confusos. **Aula 5 pass-5** já calibrava isso muito bem.

  **Fix:** adicionar uma frase no ponto-chave do gabarito: "Implementar \(x\) a partir de \(\omega\) requer \(\theta\) com \(A\theta = x - \omega\) (transferência líquida do estado \(s\) entrega exatamente \(x_s - \omega_s\) em cada estado)." Tempo: ~5 min.

**M6.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: substituir "projeção sobre o span em sentido de utilidade" (expressão inventada, sem definição formal) por **"alocação second-best sob a restrição de spanning"** + **"constrained Pareto-eficiente no sentido de Hart 1975 / Magill-Quinzii §10.3"** — termos formais com referências canônicas. Reescrito passo 2 (derivação) do gabarito Ex 2: "Equilíbrio Radner existirá em outra alocação x̂ ∈ ω + span(A) que satisfaz UMP individual + LNS dada a estrutura de preços de Radner — em geral x̂ ≠ (60, 60, 60). Esse x̂ é uma alocação second-best sob a restrição de spanning (também chamada de constrained Pareto-eficiente no sentido de Hart 1975 / Magill-Quinzii §10.3): não é Pareto-superável dentro das alocações implementáveis pelo span dos ativos disponíveis, mas é Pareto-inferior à alocação ideal AD (60, 60, 60). Cálculo numérico explícito de x̂ exige resolver o equilíbrio Radner com 2 ativos (UMP individual + market-clearing simultâneo); ver Magill-Quinzii §10." Mantida a intuição econômica original (alocação Pareto-inferior à AD ideal, mas viável via span). Verificação: `grep "projeção sobre o span em sentido"` retorna 0 ocorrências; `grep "constrained Pareto"` e `grep "second-best"` retornam ocorrências em Ex 2.

**M6 (descrição original).** `aula_6/exercicios-avaliativos.md:131` (Ex 2 derivação) — **claim sem prova/citação**: "Equilíbrio Radner converge a outra alocação \(\hat x\) — projeção de \((60, 60, 60)\) sobre o span, mais próxima possível em sentido de utilidade."

  - **"Projeção sobre o span em sentido de utilidade"** não é um conceito formal padrão em economia EG (existe **projeção L²** em finance, projeção via produto interno; aqui o objeto é diferente — equilíbrio Radner não é projeção mecânica).
  - Em **mercado incompleto**, equilíbrio Radner é o ponto fixo do excesso de demanda **restrito ao span**. Não é "projeção" no sentido geométrico simples — depende de preferências, dotações iniciais, e pode não ser único.
  - **Anti-padrão CLAUDE.md** "Gabarito que repete enunciado sem explicar o porquê" — aqui o gabarito **inventa** uma intuição imprecisa.

  **Fix:** trocar para: "Equilíbrio Radner converge a uma alocação \(\hat x \in \omega + \text{span}(A)\) que satisfaz UMP individual e LNS dada a estrutura de preços de Radner. Em geral \(\hat x \neq (60, 60, 60)\) — a alocação ideal AD não é implementável. Cálculo numérico do \(\hat x\) específico exige resolver o equilíbrio Radner explicitamente; ver Magill-Quinzii §10." Tempo: ~5 min.

**M7.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: **opção (i) — adicionar restrição explícita aos casos não-degenerados**. Distrator (a) da Q4 pré-aula reescrito de "Preferências estritamente convexas (CRRA, CES)" para "Preferências estritamente convexas (CRRA com γ > 0, CES com 0 < σ < ∞)". Pedagogicamente mais rico: aluno cuidadoso que identifica que CRRA com γ=0 (linear) e CES com σ→∞ (linear) ou σ→0 (Leontief) perdem estrita convexidade agora vê a hipótese explícita e marca confiante. Aluno menos cuidadoso continua vendo o distrator como atraente (CRRA e CES "padrão" são estritamente convexas). Verificação: `grep` confirma `(CRRA com \(\gamma > 0\), CES com \(0 < \sigma < \infty\))` na Q4 do pre-aula HTML.

**M7 (descrição original).** `platform/aula-06-pre.html:96–110` (Q4 🟡) — **distrator (a) "Preferências estritamente convexas (CRRA, CES)" pode confundir aluno com CES de elasticidade alta.**

  - CES de elasticidade \(\sigma\) é estritamente convexa para \(\sigma \in (0, \infty) \setminus \{1\}\). Em \(\sigma \to \infty\) (linear), perde estrita convexidade. **Tecnicamente o distrator (a) está OK** sob a hipótese implícita "CES com \(\sigma\) finito".
  - **Mas** o distrator não inclui o caso degenerado, e CRRA com \(\gamma = 0\) é linear (\(u = c\)) — também não é estritamente convexa.

  **Severidade: minor-major** — depende de quanto o aluno explora hipóteses limites. Para o calibre N&S 12e, CRRA é tipicamente \(\gamma > 0\) e CES é \(\sigma\) finito. Aceitável.

  **Fix:** opcional — adicionar parêntese "(CRRA com \(\gamma > 0\), CES com \(\sigma \in (0, \infty) \setminus \{1\}\))". Tempo: ~3 min. **Pode ser deixado como minor.**

### 🟢 Minor (fix oportuno)

**m1.** `aula_6/durante_aula.md:88` — Cita "Arrow-Debreu (1954, *Econometrica* 22(3): 265–290)" mas o paginação canônica é **22(3): 265–290** (correto) e o **número** do volume está OK. **DOI 10.2307/1907353** confere com o JSTOR. **Sem fix necessário.**

**m2.** `platform/aula-06-pos.html:202` (Q9 gabarito ext.) — afirma "Magill-Quinzii (1996, *Theory of Incomplete Markets*, MIT Press) é o tratamento canônico". O título correto é "*Theory of Incomplete Markets, vol. 1*" (existe um vol. 2 não publicado em formato canônico). **Fix:** trocar para "*Theory of Incomplete Markets*" sem volume, **ou** "*Theory of Incomplete Markets, Vol. 1*" explicitamente. Tempo: ~1 min.

**m3.** ✅ **VERIFICADO-CORRETO em 2026-05-08** (commit pendente). Texto atual ("lançado 2002") confirmado via WebSearch: Lei 10.179 (06/02/2001) autorizou emissão de NTN-B; primeiras emissões + plataforma Tesouro Direto lançados em 2002. Audit inicial sugeria 2003 mas sem fonte autoritativa — múltiplas fontes públicas (Tesouro Direto histórico, ADVFN, Suno) confirmam 2002. Bundle não precisa edição. `aula_6/slides/aula-06.qmd:480–489` (slide "Box Brasil — Tesouro IPCA+") — afirma "lançado 2002". **Verificável:** Tesouro IPCA+ (NTN-B) foi de fato criada em **2003**, não 2002 (Lei 10.179/2001 → emissão efetiva em meados de 2003). Frase "**Antes de 2002:** mercado brasileiro com rank deficiente" também imprecisa.

  **Fix:** trocar "2002" → "2003" em duas ocorrências (slide qmd:482 e durante_aula.md:362). Tempo: ~2 min. (Confirmar fonte STN antes de aplicar — sem buscar agora; risco de erro 50/50.)

**m4.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Word swap aplicado em duas frentes em paralelo: `aula_6/exercicios-avaliativos.md:129` e `platform/aula-06-exerc.html:179`. Texto novo: "payoff space \(\mathcal{M}\) é subespaço estrito (dimensão menor que \(|S|\)) de \(\mathbb{R}^S\)". Verificação: `grep "subespaço próprio"` nos dois arquivos retorna 0 ocorrências; `grep "subespaço estrito"` retorna ocorrências paralelas em MD e HTML.

**m4 (descrição original).** `aula_6/exercicios-avaliativos.md:130` (Ex2 ponto-chave) — usa "subespaço próprio" em sentido matemático ("não trivial"). Aluno sem álgebra rigorosa pode ler "próprio" como "típico". **Fix:** trocar para "subespaço estrito (dimensão menor que \(|S|\))". Tempo: ~1 min.

**m5.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: **uniformizar para a versão HTML** (mais precisa: a propriedade de fronteira só falha quando NINGUÉM tem dotação positiva no bem, não quando *um* agente tem zero). MD atualizado para "algum bem tem **dotação zero agregada** (\(\sum_i \omega^i_\ell = 0\))" + alternativa (d) reescrita em paralelo: "se **nenhum** agente tem dotação positiva no bem \(\ell\) (i.e., \(\sum_i \omega^i_\ell = 0\)), \(z\) pode permanecer limitado". Adicionado fechamento conceitual no final da alternativa (d) ligando \(\omega^i \in \mathbb{R}^{LS}_{++}\) a \(\sum_i \omega^i_\ell > 0\) para fechar o argumento. Verificação: `diff` entre MD MC1 e HTML MC1 → idênticos modulo formato (MD usa `**dotação zero agregada**` em negrito único; HTML separa `<strong>dotação zero</strong> agregada` — diferença puramente apresentacional do dialeto MD vs. HTML).

**m5 (descrição original).** `platform/aula-06.html:155` (MC1) — alterou enunciado do MD para "dotação zero **agregada** (\(\sum_i \omega^i_\ell = 0\))" enquanto o MD (linha 164–169) fala em "\(\omega^i_\ell = 0\) para um agente". **Conceitualmente equivalente** porque a propriedade de fronteira só falha quando NINGUÉM tem dotação positiva no bem; mas a divergência md↔html confunde quem cruza. **Fix:** uniformizar para o HTML (\(\sum_i \omega^i_\ell = 0\)) — correto e mais preciso. Atualizar MD. Tempo: ~2 min.

**m6.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: opção (i) — **reescrever contraexemplo de Kakutani de modo definitivo**, descartando o exemplo abandonado e mantendo apenas o exemplo correto (correspondência saltadora não-convexa em \(x = 1/2\)). A Q6 não duplica tópico com a Q10 substituída em M2 — Q6 fala em hipóteses de Kakutani sobre correspondência (compactos não-vazios + valores convexos + s.c.s.); Q10 nova fala em unicidade do equilíbrio AD vs. demanda individual. Sem sobreposição. Texto novo do passo 2 (derivação) verifica explicitamente as 4 hipóteses preservadas (domínio compacto convexo, valores não-vazios, s.c.s. via gráfico fechado em \(\{1/2\}\)) e mostra que apenas a convexidade dos valores falha, com verificação ponto-a-ponto da ausência de ponto fixo nos três regimes (\(x < 1/2\), \(x > 1/2\), \(x = 1/2\)). Conclusão pedagógica explícita: "omitir convexidade dos valores quebra o teorema, mesmo com todas as outras hipóteses preservadas". Verificação: `grep "exemplo ruim\|0 \notin F(0)"` no `aula-06-pos.html` retorna 0 ocorrências; `grep "Conclusão: omitir convexidade"` retorna 1 ocorrência (a versão nova).

**m6 (descrição original).** `platform/aula-06-pos.html:147` (Q6 contraexemplo Kakutani) — começa um contraexemplo que se auto-corrige no meio: "Convexa? Não (não-conexa). Semi-contínua superior? Sim. Sem ponto fixo: \(0 \notin F(0) = \{0, 1\}\)? Sim, \(0 \in F(0)\) — exemplo ruim. Melhor: ...". **Aluno lendo gabarito vai se confundir** com contraexemplo abandonado no meio. **Fix:** suprimir o exemplo ruim, ficar só com o correto. Tempo: ~5 min.

**m7.** ✅ **RESOLVIDO em 2026-05-08** (commit `6d38350`). Decisão de design: **NÃO adicionar Harrison-Kreps** — pós-substituição da Q10 (M2), Harrison-Kreps **não é mais invocado afirmativamente** em nenhum artefato da Aula 6 (única ocorrência sobrevivente é citação **negativa** na peer-review da Q10 nova: "sem invocar Stiemke, TFAP nem Harrison-Kreps"). **Adicionar Mehra-Prescott 1985** — citado afirmativamente em B4.d (durante_aula.md:392, 446, 458) após expansão do Bloco 4 em M4. DOI verificado via WebSearch em 2026-05-08: [10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3) (Journal of Monetary Economics 15(2): 145–161, 1985). Hansen-Jagannathan 1991 já estava na lista. Lista atualizada inclui anotação explícita sobre o status de Harrison-Kreps para evitar confusão de futuras revisões. Verificação: `grep "Mehra-Prescott"` em durante_aula.md:535 confere; `grep "Harrison-Kreps"` retorna apenas a citação negativa em aula-06-pos.html:227 + a anotação explicativa em durante_aula.md:535.

**m7 (descrição original).** `aula_6/durante_aula.md:529` — Anti-padrão list inclui "❌ Não citar artigos sem confirmação de DOI." e segue listando 5 DOIs. **Inclui Mehra-Prescott 1985** e **Hansen-Jagannathan 1991**, mas **não** Harrison-Kreps 1979 (que está no quiz pós-aula 6). **Fix:** adicionar "Harrison-Kreps (1979) [10.1016/0022-0531(79)90043-7]" à lista (DOI confere com sciencedirect, busca via WebSearch hoje). Tempo: ~1 min.

**m8.** `aula_6/slides/aula-06.qmd:191` — slide "Quando Brouwer falha — Kakutani (1/2)" usa exemplo \(u = x_1 + 2x_2\) com \(p_1/p_2 = 1/2\). **Mesma economia** que o Exercício 5 do exerc.html. Reuso pedagógico OK, mas se o aluno fez Ex5 vai sentir déjà vu. Aceito como repetição construtiva. **Sem fix.**

---

## Verificação dos 5 riscos auto-identificados pelo agente de produção

| # | Risco | Gravidade real | Fix recomendado |
|---|---|---|---|
| 1 | Q10 🔴🔴 sobre TFAP/Harrison-Kreps acima do teto J-R | **Major (M2)** | Reescrever Q10 sem invocar Stiemke; manter calibre 🔴🔴 mas dentro do teto J-R + Magill-Quinzii. Ou trocar por Q10 sobre suavização CRRA. |
| 2 | Ex 5 (Kakutani): demanda Leontief = função única | **Blocker (B1.a + B1.b + B1.c)** | Alinhar HTML ao MD (manter Leontief no enunciado-cabeçalho) + corrigir bug aritmético dentro de alternativa do MD ("(10, 0)" → "(0, 30)" + "bem 1" → "bem 2") + remover auto-contradição interna na alternativa. |
| 3 | Ex 6(c) hipotético sem cálculo numérico | **Major (M3)** | Adicionar nota explícita no gabarito sobre a impossibilidade de cálculo concreto do equilíbrio Radner em 1 hora; redirecionar para Magill-Quinzii. |
| 4 | Bloco 0 de 15 min vs 5 min canônico | **Major (M4)** | Reduzir B0 para 10 min, expandir B4 (SDF + Euler) para 25 min. |
| 5 | Sem cálculo numérico do equilíbrio em incompletude | **Major (correlato a M3 e M6)** | Aceito como decisão pedagógica — incompletude em \(|S|=3\) sem fórmula fechada é trabalho de calculadora. Mas explicitar isso em algum ponto do bundle (gabarito Ex2 ou Ex6) para não parecer omissão. |

---

## Cobertura J-R §5.5/§5.6

| Tópico J-R | Está coberto? | Onde | Qualidade |
|---|---|---|---|
| §5.5 Markets with Uncertainty (revisão Aula 5) | ✓ | aula-06.html S1 + durante_aula.md B0 | par-Jehle (sketch revisional adequado) |
| §5.6.1 Hipóteses sobre preferências | ✓ | aula-06.html S3, slide qmd:155–169 | par-Jehle |
| §5.6.2 4 propriedades de \(z(p)\) | ✓ | S3, qmd:155–169, Q3 do quiz pré | par-Jehle |
| §5.6.3 Brouwer/Kakutani sobre simplex | ✓ | S3, qmd:174–215, Ex 3 e Ex 5 dos avaliativos | par-Jehle |
| Existência via Kakutani (correspondências) | ✓ | qmd:204–215, Q4 do quiz pré, Ex 5 (com bugs) | sub-Jehle (devido bugs Ex5) |
| Equivalência AD↔Radner sob mercado completo | ✓ | S4, qmd:326–369, Ex 1, Q5/Q6 quiz pré | par-Jehle |
| Não-arbitragem: \(q^*_j = \sum_s p^*_s A_{sj}\) | ✓ | S4, Q6 quiz pré, Q3 quiz pós, Ex 1(c) | par-Jehle |
| Mercados incompletos: span e rank | ✓ | S5, qmd:418–446, Ex 2 | par-Jehle |
| Constrained Pareto-eficiência | ✓ | S5, qmd:434–446, Q9 quiz pré, Q8 quiz pós | par-Jehle |
| Hart 1975 (genericamente Pareto-ineficiente) | ✓ | S5, qmd:450–461, Q9/Q3 sínteses | par-Jehle |
| GP 1986 (mais ativos pode piorar) | ✓ | S5, qmd:464–476, Q9 quiz pós, Ex 6 | sub-Jehle (devido M3 — Ex 6c sem cálculo) |
| Equação de Euler intertemporal | ✓ | S5, qmd:539–565, Ex 4, Q5/Q10 | par-Jehle |
| Lucas 1978 SDF intertemporal | ✓ | S5, qmd:553–565, Ex 4(d), Q10 quiz pré | par-Jehle |
| Boxes Brasil (SELIC, IPCA+) e Mundo (VIX, equity premium) | ✓ | S5, qmd:480–600 | par-Jehle |
| **Stiemke / TFAP / Harrison-Kreps 1979** | ✓ (apenas Q10 pós) | Q10 pós | **super-Jehle** (acima do teto) — ver M2 |

**Resumo:** cobertura tematicamente completa de J-R §5.5/§5.6. Saídas para **super-Jehle** (TFAP) são minoria mas presentes; saída para **sub-Jehle** vem de bugs em Ex5/Ex6 (B1, M3, M6). Sob fixes propostos, o bundle fica par-Jehle 100%.

---

## Score de densidade dos slides ≥ 10

Aplicando o score ponderado do CLAUDE.md (header H2 = 1,8 / display eq = 2,5 / eq-punch = 2,2 / eq-key = 2,2 / callout = 2,0 / parágrafo = 1,5 / bullet 1º nível = 1,0 / sub-bullet = 0,6 / linha de compact-table = 0,8 / bridge = 0,7).

| Slide # | Título (linha qmd) | Score | Breakdown | Recomendação |
|---|---|---|---|---|
| 7 (155) | Excesso de demanda agregada | **8,7** | H2 1,8 + 1 display 2,5 + 4 bullets numerados 4,0 + 1 bridge 0,7 ≈ **9,0** | **MARGEM**. Aceitável. Sem ação. |
| 8 (174) | Brouwer (1911) | **9,4** | H2 1,8 + 1 eq-key 2,2 + 1 display 2,5 + 1 parágrafo 1,5 + 1 eq-punch 2,2 ≈ **10,2** | **APERTADO**, candidato a quebrar. Conteúdo: enunciado Brouwer + aplicação T(p) + verificação + eq-punch. **Recomendação:** quebrar em (1/2) "Brouwer enunciado + mapa T(p)" e (2/2) "Verificação + eq-punch". Tempo: ~10 min. |
| 11 (218) | Sketch — existência em economia AD | **10,9** | H2 1,8 + 1 compact-table 5 linhas × 0,8 = 4,0 + 1 eq-punch 2,2 + 1 parágrafo intro 1,5 ≈ **9,5**, mas **content density grow with reading rhythm** (5 passos de prova são lidos linearmente, vão ocupar fala) → **score efetivo ~11**. | **APERTADO**, candidato a quebrar. **Recomendação:** quebrar em (1/2) "5 passos: simplex, continuidade, fronteira" e (2/2) "Brouwer/Kakutani + Walras + ∎". |
| 25 (450) | Hart (1975) — Pareto-ineficiência genérica | **8,4** | H2 1,8 + 1 eq-key 2,2 + 1 parágrafo grande 1,5 (multilinha) + 1 eq-punch 2,2 ≈ **7,7**, mas o parágrafo "Por quê" é denso → **score efetivo ~9**. | **MARGEM**. Aceitável. Sem ação. |
| 30 (553) | Equação de Euler intertemporal (2/2) | **8,8** | H2 1,8 + 1 display 2,5 + 1 eq-punch 2,2 + 1 callout 2,0 ≈ **8,5**. | **MARGEM**. Aceitável. |
| 32 (588) | Box Mundo — VIX | **9,3** | H2 1,8 + 1 callout-note 2,0 + 1 eq-punch 2,2 + parágrafo 1,5 + bullet 1,0 ≈ **8,5**, mas eq-punch terminal sem buffer 2,6em garantido. | **MARGEM**. Verificar que `eq-punch:last-child` aplica buffer de `theme.scss`. |

**2 slides candidatos a quebrar (8, 11). Sem slides com score > 12.** Recomendação: quebrar slides 8 e 11 antes do render final. Tempo total: ~20 min.

**Sem `.smaller` em slide matemático**, sem `font-size: 0.Xem` em bloco de conteúdo (apenas em `section-divider`, `pause-slide`, capa — padrão da Aula 5). ✓

---

## Coerência cross-artefato

Matriz pré-aula → quiz pré → aula → quiz pós → exerc, por tópico:

| Tópico | Pré-aula material (S3-S5) | Quiz pré (10🟡) | Roteiro presencial | Quiz pós (10) | Exerc (6) | Coerente? |
|---|---|---|---|---|---|---|
| 4 propriedades de \(z(p)\) | ✓ S3 + MC1 | ✓ Q3 | ✓ B1.b | ✓ Q1 | (parcial) Ex3(d) | ✓ |
| Brouwer enunciado | ✓ S3 | ✓ Q2 | ✓ B1.c | ✓ Q1 | ✓ Ex3(d) | ✓ |
| Kakutani (correspondência) | ✓ S3 + MC2 | ✓ Q4 | ✓ B1.c | ✓ Q6 | (com bugs) Ex5 | ⚠️ por B1 |
| Setup Radner (\(q \cdot \theta = 0\)) | ✓ S4 | ✓ Q5 | ✓ B2.b | (parcial) Ex1 | ✓ Ex1(e) | ✓ |
| Equivalência AD↔Radner sob rank completo | ✓ S4 + MC3 | ✓ Q1, Q7 | ✓ B2.c | ✓ Q7 | ✓ Ex1 | ✓ |
| Réplica de \(e_s\) | ✓ S4 | ✓ Q8 | ✓ B2.d | ✓ Q2 | ✓ Ex1(d) | ✓ |
| Não-arbitragem: \(q^*_j = \sum_s p^*_s A_{sj}\) | ✓ MC4 | ✓ Q6 | ✓ B2.c | ✓ Q3 | ✓ Ex1(c) | ⚠️ por B2 (normalização) |
| Mercado incompleto: span/rank | ✓ S5 | ✓ Q7 | ✓ B3.a | ✓ Q4 | ✓ Ex2 | ✓ |
| Hart 1975 / constrained PE | ✓ S5 + MC5 | ✓ Q9, Q3 sintese | ✓ B3.b | ✓ Q8 | ✓ Ex2(d), Ex6 | ✓ |
| GP 1986 / mais ativos pode piorar | ✓ S5 | ✓ Q9 | ✓ B3.c | ✓ Q9 | ✓ Ex6(c)(d)(e) | ⚠️ por M3 (sem cálculo) |
| Equação de Euler / SDF | ✓ S5 + MC6 | ✓ Q10 | ✓ B4.a | ✓ Q5 | ✓ Ex4 | ✓ |
| Boxes SELIC + VIX | ✓ S5 | (não cobrado) | ✓ B4.b, B4.c | (não cobrado) | (não cobrado) | ✓ (decisão pedagógica de não cobrar) |
| **Stiemke / TFAP** | ✗ não-coberto | ✗ não-coberto | ✗ não-coberto | ⚠️ Q10 pós (M2) | ✗ não-coberto | ⚠️ por M2 (Q10 isolado) |

**Descontinuidade real:** **Stiemke / TFAP** aparece **APENAS** na Q10 do quiz pós, sem cobertura em nenhum outro artefato. Aluno não tem onde estudar para Q10. Isso confirma o achado M2 acima.

**Outras descontinuidades menores:** SELIC e VIX (boxes) não são cobrados em quiz nem exerc — decisão pedagógica defensável (boxes são intuição, não conteúdo de prova).

---

## Sincronia md ↔ html (exercícios)

Diff conceitual+numérico entre `aula_6/exercicios-avaliativos.md` e `platform/aula-06-exerc.html`:

| Exercício | MD | HTML | Diferença |
|---|---|---|---|
| Ex 1 enunciado | Numerário \(p^*_2 = 1\), implica \(p^*_1 = 1\) | Idêntico | OK |
| Ex 1(a) | det A = 2, rank 2 (mercado completo) | Idêntico | OK |
| Ex 1(b) | \(x^{A*} = (80, 80)\) | Idêntico | OK |
| Ex 1(c) | **Normaliza \(p^*_1 + p^*_2 = 1\)** → \(p^*_1 = p^*_2 = 0{,}5\) (item separado) | **Pula direto para \(p^* = (1, 1)\) sem normalização** → q* = (2, 2) | ⚠️ **Convenção diferente.** Ver B2. |
| Ex 1(d) | \(q^*_{\text{bond}} = 2, q^*_{\text{ação}} = 2\) (em \(p^* = (1, 1)\)) | Combinado em sub-item (c) | ⚠️ HTML colapsou 2 sub-items do MD em 1 |
| Ex 2(a) | rank 2 — incompleto | rank 2 — incompleto | OK |
| Ex 2(b) | span = plano \(\{(a, a+b, a+3b)\}\) | combinado em sub-item (b) "alocação ideal AD" | ⚠️ HTML omitiu o item explícito sobre o span |
| Ex 2(c) | \(A\theta = (-30, 0, 30)\): inconsistente | Idêntico | OK |
| Ex 2(d) | constrained PE; Pareto-inferior à AD ideal | Idêntico (sub-item d) | OK |
| Ex 2(e) | Não existe no MD | **Sub-item (e) "intuição econômica"** no HTML | ⚠️ HTML adicionou um sub-item que não existe no MD |
| Ex 3 (Brouwer numérico) | Sub-itens (a)(b)(c)(d) | Sub-itens (a)(b)(c)(d) — idêntico | OK |
| Ex 4 (Euler CRRA) | Sub-itens (a)(b)(c)(d) | Idêntico | OK |
| Ex 5 enunciado | Leontief no cabeçalho + linear no sub-(b) | **Linear no cabeçalho** sem Leontief | ❌ **BLOCKER B1.a** |
| Ex 5(a) | Pergunta sobre Leontief, resposta = demanda única | **Pergunta sobre linear**, resposta = canto (0,20) | ❌ **BLOCKER B1.c** |
| Ex 5(b) | Pergunta linear sob \(p=(1, 0{,}5)\), distrator (iii) tem bug aritmético | Pergunta linear sob \(p=(1, 2)\) (\(p_1/p_2 = 1/2\) caso degenerado) | ❌ **BLOCKER B1.b** + **distinto matematicamente** |
| Ex 5(c) | Caso degenerado \(p_1/p_2 = 1/2\), demanda multivalorada | Pergunta sobre Kakutani como ferramenta | ❌ Diferentes |
| Ex 5(d) | Kakutani | Hipóteses sobre \(z\) (Berge) | ❌ Diferentes |
| Ex 5(e) | Berge → semi-cont sup + valores convexos | Não existe no HTML | ❌ HTML omitiu |
| Ex 6 (Hart-GP) | 5 sub-itens (a)(b)(c)(d)(e) | 5 sub-itens (a)(b)(c)(d)(e) | OK numericamente |
| Ex 6(c) | Variação \(\omega^B = (60, 60, 60)\) (livre de risco), \(\bar\omega = (150, 120, 90)\) | Idêntico | OK em mecânica, mas M3 (sem cálculo) |

**Resumo da sincronia:** Ex 1, Ex 2, Ex 5 têm divergências materiais. Ex 1 é a B2 (convenção). Ex 5 é a B1 (incoerência total). Ex 2 tem reorganização menor. **Sob fixes propostos, sincronia volta a 95%+.**

---

## Verificação de DOIs (3 dos ~6)

Amostra de 3 DOIs verificados via WebSearch:

1. **Hart 1975** — JET 11(3): 418–443. DOI **10.1016/0022-0531(75)90028-9**.
   - Verificado via [ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/0022053175900289) e [RePEc](https://ideas.repec.org/a/eee/jetheo/v11y1975i3p418-443.html). ✓ DOI confere.

2. **Lucas 1978** — Econometrica 46(6): 1429–1445. DOI **10.2307/1913837**.
   - Verificado via [JSTOR](https://www.jstor.org/stable/1913837) e [Econometric Society](https://www.econometricsociety.org/publications/econometrica/1978/11/01/asset-prices-exchange-economy). ✓ DOI confere.

3. **Harrison-Kreps 1979** — JET 20(3): 381–408. DOI **10.1016/0022-0531(79)90043-7**.
   - Verificado via [ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/0022053179900437) e [RePEc](https://ideas.repec.org/a/eee/jetheo/v20y1979i3p381-408.html). ✓ DOI confere.

**Não-amostrados (DOIs declarados pelo autor mas não re-verificados nesta passada):**
- Arrow-Debreu 1954: 10.2307/1907353
- Radner 1972: 10.2307/1909407
- Hansen-Jagannathan 1991: 10.1086/261749

Os 3 amostrados são suficientes para validar consistência da prática do autor — **risco residual mínimo** para os outros 3.

---

## Gabaritos 5-passos: amostra de 5 questões

Verifico se cumpre o contrato (ponto-chave / derivação / armadilha / extensão / peer-review) em 5 questões aleatórias do pós + exerc.

| Questão | Ponto-chave? | Derivação? | Armadilha? | Extensão? | Peer-review? | Veredito |
|---|---|---|---|---|---|---|
| Pós Q1 (Brouwer + Walras) | ✓ específico | ✓ álgebra completa | ✓ identifica (a)/(b) parciais | ✓ extensão para AD/produção | ✓ "aluno ainda não viu Walras transforma ≤ em =" | ✓ contrato cumprido |
| Pós Q5 (Euler CRRA) | ✓ | ✓ deriva (β R)^{1/γ} | ✓ identifica caso log vs γ=2 | ✓ Mehra-Prescott | ✓ "marca (a) confunde com log" | ✓ |
| Pós Q10 (TFAP) | ✓ "existência ≠ unicidade" | ✓ menciona Stiemke + Hahn-Banach + projeção ortogonal | ✓ distingue (a)/(d) "existência vs unicidade" | ✓ Black-Scholes-Merton, Pliska | ✓ "marca (a)/(d) confunde dois sentidos" | ⚠️ contratual ✓, **mas** invoca Stiemke (super-Jehle, M2) |
| Exerc Ex 1 (gabarito 5-passos) | ✓ | ✓ completa | ✓ explicita (a)(i), (b)(i), (d)(i) | ✓ Black-Scholes + Aula 7 | ✓ "Sem risco residual" | ✓ |
| Exerc Ex 5 (gabarito 5-passos) | ✓ | ✓ Leontief + linear separado | ✓ identifica (a)(iii), (b)(i)(ii)(iii), (c)(i)(ii) | ✓ CRRA/CES + Kakutani teórico | ✓ "alto para alunos que não viram a distinção formal" | ⚠️ contratual ✓, **mas** o gabarito do MD não percebe que o sub-item (b)(iii) tem auto-contradição interna nem o erro aritmético — peer-review **falhou** em pegar isso (B1.b) |

**Resumo:** Gabaritos cumprem contrato dos 5 passos formalmente em 100% das amostras. Falha em Ex 5 é **falha do passo 5 (peer-review)** — o autor declarou "Sem risco residual" sem detectar a auto-contradição na alternativa. Indica que a passada de peer-review do agente de produção foi superficial em Ex 5.

---

## Recomendação final

Antes de o bundle ir para o aluno em **qui 21/05 madrugada** (~13 dias a partir de hoje 2026-05-08):

**Ordem de aplicação dos fixes** (priorizada por impacto vs. esforço):

1. **B1 (Ex 5) — 30 min.** Alinhar HTML ao MD ou simplificar ambos. Corrigir bug aritmético dentro de alternativa do MD. Eliminar auto-contradição.
2. **B2 (Ex 1 normalização) — 20 min.** Seguir o MD: dar primeiro a normalização \(\sum p = 1\), depois opcionalmente \(p^*_2 = 1\) como segundo sistema. Reconciliar gabaritos.
3. **M1 (duplicação EP-1/EP-2 ↔ Ex1/Ex2) — 20 min.** Mudar dotações em uma das duas instâncias para que não sejam clones literais.
4. **M2 (Q10 super-Jehle) — 25 min** (fix mínimo) ou ~45 min (fix maximalista). Preferência: fix mínimo (reescrever Q10 sem Stiemke, manter calibre 🔴🔴 dentro do teto J-R + Magill-Quinzii).
5. **M4 (Bloco 0/Bloco 4 timing) — 5 min.** Bloco 0 = 10 min, Bloco 4 = 25 min.
6. **M3 (Ex 6c sem cálculo) — 10 min.** Adicionar nota explícita.
7. **M5 (Q2 pós: lema θ = A^{-1}(x − ω)) — 5 min.**
8. **M6 (Ex 2 "projeção sobre span") — 5 min.**
9. **M7 (Q4 pré CES degenerado) — 3 min** ou deixar como minor.
10. **m1–m8 (minors) — ~25 min total.** Aplicar oportunisticamente.

**Total estimado: ~3h de trabalho focado** para chegar em verde-de-verdade. Inclui re-render dos slides após quebra dos slides 8 e 11.

**Sem aplicação dos fixes,** o bundle ainda pode ser publicado, **mas com aviso ao aluno** sobre Ex 5 e B2 — o que é pedagogicamente ruim. **Recomendação forte:** aplicar B1 + B2 + M1 + M2 antes de 21/05; M3-M7 + minors podem ir até 27/05 (dia da aula).

---

## Estimativa de tempo até "verde de verdade"

| Cenário | Tempo (h) | Score esperado | Riscos residuais |
|---|---|---|---|
| **Mínimo (B1 + B2 apenas)** | 0,8h | 9,0/10 | M1, M2, M4 sobrevivem; aluno cético em Ex 6 e Q10 |
| **Recomendado (todos blockers + majors)** | 2,0h | 9,5/10 | Apenas minors residuais; Aula 5 em paridade |
| **Maximalista (todos achados + re-render slides)** | 3,2h | 9,7/10 | Paridade total com Aula 5 pass-5 final |

**Recomendação operacional:** aplicar **cenário recomendado (~2h)** entre hoje 08/05 e quarta 13/05. Re-render dos slides + repasse final em 14–20/05. Janela de 13 dias é confortável.

---

## Notas finais (Referee 2 paranoid mode)

- Verifiquei que `platform/aula-06.html` carrega `<script src="js/calendario.js">` (linha 489) ✓.
- Verifiquei `platform/aula-06-exerc.html:466` — gate de gabarito tem fallback `2026-06-04T00:00:00-03:00` que confere com calendário canônico (qui 04/06 00:00 BRT). ✓
- Verifiquei que `aula-06.html` chama apenas `jehle-reny-3e-cap5.pdf` (linha 72) e `nicholson-snyder-12e-cap13.pdf` (linha 88). Ambos confirmados em `supabase/storage-checklist.md` (linhas 14–17). ✓
- `body.gabarito-locked .quizg-feedback { display: none !important; }` está em `aula-06-exerc.html:11`. ✓
- `data-phase="graded_exercise"` em `aula-06-exerc.html:51`, `data-phase="post"` em `aula-06-pos.html:31`, `data-phase="pre_review"` em `aula-06-pre.html:31`. ✓
- Alternativas com "todas acima" / "nenhuma das anteriores" em todas 38+ questões: **0 ocorrências.** ✓
- Exercícios exigindo conteúdo de aula posterior (Aulas 7+ — externalidades, sel.adv., sinalização): **0 ocorrências** (Aulas posteriores são citadas como "ponte" mas não como pré-requisito). ✓
- Distratores plausíveis em 38 sub-itens: amostragem em 6 (Q1/Q5/Q10 pós + Ex1 + Ex5 + Ex6) — todos OK exceto Ex 5 (bug interno). ~5/6 = 83% sem ressalvas; sob fix B1, 100%.

**Veredito final: bundle competente, com 2 blockers algébricos sérios (B1, B2) que invalidam questões. Aplicado o cenário recomendado de ~2h, atinge paridade com Aula 5 pass-5. Sem fix, score 8,6/10 vs. expectativa 9,5+.**
