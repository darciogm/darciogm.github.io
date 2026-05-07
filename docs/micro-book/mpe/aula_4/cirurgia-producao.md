# Cirurgia Aula 4 — adição de produção (07/05/2026)

> **Status:** cirurgia executada em 07/05/2026, em resposta à mudança de ementa MPE 2026/32 que recalibrou a Aula 4 para cobrir **EG em trocas + produção** (era só trocas). Aula 5 reescrita em paralelo para Arrow-Debreu I (outro agente).
> **Modo de operação:** Referee 2 — cético, realista, perfeccionista, anti-overclaiming.
> **Princípio cirúrgico:** adição não-destrutiva (preservar IDs lógicos das seções já submetidas pelos alunos; recalibrar quizzes sem apagar respostas antigas; declarar trade-offs explicitamente).

---

## 1. Decisões tomadas (e por quê)

### 1.1. Pré-aula `platform/aula-04.html` — IDs preservados, `data-order` renumerado

**Decisão.** Adicionei duas seções novas (`s5b-producao`, `s6b-1tbe-prod`) com `data-order` 6 e 7. Renumerei `data-order` de `s6-exercicios`, `s7-checkpoint`, `s8-reflexao` para 8, 9, 10. **TOTAL_SECTIONS = 11** (era 9).

**Por quê.** Os IDs lógicos (`data-section`) são as chaves usadas em `section_progress` no Supabase. O `_rehydrate` do JS lê pelo ID lógico, não pelo `data-order`. Logo, alunos que já completaram `s6-exercicios` (com `completedAt` em sua linha de `section_progress`) **continuam** com essa seção marcada como `completed` ao reabrir a página. As novas seções `s5b-producao` e `s6b-1tbe-prod` aparecem como *locked → active* na próxima vez que o aluno abrir a página, exatamente como deveriam.

**Risco residual.** Quem já completou s0–s8 antes da cirurgia abrirá a página atualizada e verá "Progresso: X/11" em vez de "X/9". A celebração final (`completion-celebration`) só aparece quando o aluno completar TODAS as 11 seções. Isso é o comportamento correto pedagogicamente (alunos antigos precisam fazer s5b/s6b para concluir 100%), mas pode gerar confusão na UI ("já fiz, por que está incompleto?"). **Mitigação:** banner topo na página explicando explicitamente. **Trade-off aceito.**

### 1.2. Quizzes — submissão única preservada, calibragem nova só vale para novos submissores

**Decisão.** A plataforma é configurada para `1 submissão` por quiz. Não há mecanismo client-side ou server-side de "re-submeter quiz após mudança de calibragem". Política adotada: **quem submeteu antes da cirurgia mantém a submissão antiga válida e contabilizada para engajamento**; a calibragem nova passa a valer apenas para quem ainda não submeteu.

**Por quê.** Implementar re-submit forçado exigiria (i) deletar `quiz_aggregates` e `quiz_question_attempts` antigos para forçar re-submissão (destrutivo, viola política LGPD), ou (ii) adicionar coluna `version` em quiz_aggregates e suportar múltiplas versões (mudança de schema, fora do escopo cirúrgico). Política "respeita submissão antiga + nova calibragem para novos submissores" preserva a integridade dos dados.

**Risco residual.** Aluno que submeteu o quiz pré antigo (10🟡 trocas) tem nota igual ao aluno que submeter agora a versão nova (6🟡 trocas + 4🟡 produção) — desigualdade de calibre, mesma contabilização. Como o quiz pré conta apenas como "engajamento" (não nota técnica), a injustiça é cosmética, não material. **Mitigação:** banner topo nos 4 HTMLs (aula-04, aula-04-pre, aula-04-pos, aula-04-exerc) explicando a política. **Trade-off aceito.**

### 1.3. Roteiro de aula `aula_4/durante_aula.md` — 30 min cortados de Bloco 4 + 5 + Pausa 2

**Decisão.** Para abrir 50 min para Bloco 3.5 (produção), cortei:
- Bloco 3 (1º+2º TBE): 35 → 28 min (−7) — supressão da discussão de "saturação direcional ≠ violação de LNS" em sala (migra para pré-aula §5 e Q6 do quiz pós).
- Pausa 2: 10 → 7 min (−3) — pausa curta, não pausa longa.
- Bloco 1 (Edgeworth): 40 → 38 min (−2) — Núcleo (1.d) reduzido de 8 → 6 min, sem cálculo de bloqueio em $I=3$ (vai para pré-monitoria 2).
- Bloco 2 (EC + Walras): 35 → 32 min (−3) — Leontief (2.f) marcado como opcional.
- Bloco 4 (Box Brasil/Mundo): 30 → 5 min (−25) — Box ZFM cortado integralmente; EU ETS comprimido a frase "estrutura matemática idêntica"; RenovaBio com 1 slide condensado embutido em 3.5.d.
- Bloco 5 (Síntese + ponte): 15 → 5 min (−10) — síntese em 4 frases-flash (não bullets longos); ponte AD-I em 3 min essenciais.

**Soma:** $-7 -3 -2 -3 -25 -10 = -50$ min liberados. Bloco 3.5 ocupa exatamente esses 50 min.

**Por quê.** O Box ZFM (federalismo fiscal brasileiro) é o item de menor "fissão pedagógica imediata" — cobre uma aplicação (concreta e brasileira) que não é pré-requisito para Aula 5. EU ETS é cap-and-trade europeu, estruturalmente idêntico a RenovaBio — citar uma vez é suficiente. As compressões de Blocos 1, 2, 3 são "anestesias locais" que não destroem o esqueleto pedagógico (núcleo continua sendo apresentado conceitualmente; Leontief continua no exercício avaliativo).

**Trade-off declarado.** Perde-se a discussão federalismo-fiscal-Manaus que era didaticamente rica para alunos do MPE com experiência regional. **Mitigação:** Box ZFM pode ser reaproveitado em Aula 7 (externalidades regionais) ou em pré-monitoria 2 como gancho. **Aceito.**

### 1.4. Slides Quarto `aula_4/slides/aula-04.qmd` — 12 slides novos no Bloco 3.5

**Decisão.** Inseri 12 slides novos entre a Pausa 2 (encolhida) e o Box único de RenovaBio:
1. `## Bloco 3.5 — Adicionando firmas: tecnologia, PPF, Robinson Crusoe ✦` (section-divider vermelho)
2. `## Tecnologia — conjunto de produção $Y$` (definição + hipóteses)
3. `## PPF — construção (1/2)` (setup + caso canônico arco de círculo)
4. `## PPF — construção (2/2)` (pontos-âncora + comparação Edgeworth-PPF)
5. `## Taxa marginal de transformação (TMT)` (definição + numérico)
6. `## Robinson Crusoe — setup` (1 consumidor + 1 firma + 2 bens)
7. `## Planejador — TMS = TMT` (CPO + numérico canônico)
8. `## Robinson EC descentralizado — os dois chapéus` (firma + consumidor)
9. `## TMS = TMT = w/p — a igualdade canônica` (eq-key + verificação numérica)
10. `## Generalização rápida — I consumidores + J firmas` (cotas + EC com produção)
11. `## 1º TBE com produção — corolário` (4 passos da prova, passo 3 destacado)
12. `## Box único — RenovaBio com produção endógena` (RenovaBio comprimido)

Os slides existentes do Box Mundo (EU ETS) e Box Brasil (RenovaBio) longos foram **deletados** — substituídos pelo Box único condensado. Bloco 5 reescrito (5 min em 4 slides).

**Trade-off declarado em score de densidade.** Tentei manter score ≤10 em todos os slides. Pontos de risco:
- Slide 8 ("Robinson EC descentralizado — os dois chapéus") tem 2 colunas + callout-note + bridge — **score ~10**, candidato a quebrar em (1/2) e (2/2) se ficar visualmente apertado em render real. **Sinalizado para auditoria pós-render.**
- Slide 9 ("TMS = TMT = w/p") tem eq-key + 4 linhas de verificação numérica + eq-punch — **score ~9**, defensável.
- Slide 11 ("1º TBE com produção — corolário") tem 4 passos numerados em texto + eq-punch — **score ~10**, defensável mas no limite.

**Não foi possível renderizar o Quarto** (sem `quarto` no ambiente). **Sinalizado para Darcio rodar `quarto render aula-04.qmd` manualmente** e verificar visualmente cada slide do Bloco 3.5.

### 1.5. Quiz pré-aula `aula-04-pre.html` — 6🟡 trocas + 4🟡 produção

**Decisão.** Mantive Q2, Q4, Q5, Q6, Q7, Q10 (6 mais centrais — Pareto, Walras, EC simétrica CD, LNS=hipótese, núcleo, 2º TBE). Substituí Q1, Q3, Q8, Q9 por:
- Q1 (era "alocação viável") → **Q1 PPF arco de círculo** (matemática limpa, sem aritmética pesada).
- Q3 (era "contract curve em CD simétrica") → **Q3 TMT no exemplo canônico** (cálculo direto, dois métodos).
- Q8 (era "excesso de demanda") → **Q8 Robinson Crusoe planejador L***.
- Q9 (era "homogeneidade grau 0") → **Q9 TMS=TMT=w/p**.

**Trade-off declarado.** "Alocação viável" e "homogeneidade grau 0" eram conceitos secundários da Aula 4 (cobertos pela Q1 ainda como Pareto e por Q9 como pinning de Walras+homogeneidade); a perda é absorvível. "Contract curve em CD simétrica" era um cálculo bonito mas redundante com Q5 (que mostra o EC simétrico em CD). "Excesso de demanda" era cálculo aritmético longo — perda de cálculo, não de conceito.

### 1.6. Quiz pós-aula `aula-04-pos.html` — 3🟡 trocas + 2🟡 produção + 3🔴 trocas + 2🔴 produção

**Decisão.** Mantive Q1 (CD assimétrica), Q2 (núcleo), Q3 (LNS passo 2), Q6 (saturação direcional 🔴), Q7 (Brouwer 🔴), Q9 (Debreu-Scarf 🔴🔴). Substituí Q4, Q5, Q8, Q10 por:
- Q4 (era "Leontief") → **Q4 Robinson Crusoe salário+lucro completo**.
- Q5 (era "1º TBE: o que NÃO diz") → **Q5 1º TBE com produção: passo 3 firmas**.
- Q8 (era "2º TBE convexidade") → **Q8 retornos crescentes ⇒ EC com tomadores de preço falha** (mais radical que "2º TBE quebra"; o problema é no conceito de EC).
- Q10 (era "Walras+homogeneidade dim") → **Q10 🔴🔴 economia 2×2×2: TMS=TMS=TMT=p₁/p₂** (meta-questão pedida pelo prompt).

**Trade-off declarado.** "Leontief" era exercício de cálculo divertido — migra para Ex3 dos avaliativos (preservado). "1º TBE: o que NÃO diz" era inversão didática útil — agora cobrida implicitamente em Q5 nova (1º vs. 2º TBE com produção). "2º TBE convexidade" tornou-se Q8 nova mais radical (problema é antes do 2º TBE — é o conceito de EC). "Walras+homogeneidade dim" migra para Ex5 dos avaliativos (preservado).

### 1.7. Exercícios avaliativos `aula-04-exerc.html` + SSOT em MD — Ex 4 e Ex 6 substituídos

**Decisão.** Mantive Ex1🟢 (CD simétrica), Ex2🟡 (CD assimétrica), Ex3🟡 (Leontief mistura), Ex5🔴 (Walras dim). Substituí Ex4 e Ex6:
- Ex4 (era "1º TBE estrutura + LNS direcional") → **Ex4🟡 PPF + Robinson canônico** (5 sub-itens).
- Ex6 (era "2º TBE preliminar isolado") → **Ex6🔴 economia 2×2×2: meta-questão produção+trocas** (5 sub-itens).

**SSOT em MD sincronizado** com HTML. Conteúdo "1º TBE estrutura + LNS direcional" do Ex4 antigo migrou para Q6🔴 do quiz pós-aula. Conteúdo "2º TBE preliminar" do Ex6 antigo migrou para Q10🟡 do quiz pré-aula + (e) do Ex6 novo. **Nada perdido — apenas redistribuído.**

### 1.8. Pré-monitoria 2 `pre_monitoria.md` — 5 ganchos novos de produção

**Decisão.** Estrutura física da pré-monitoria (7 seções, ~60–70 min) preservada. Adicionei seção final "Ganchos para Aula 4 — produção, novo pós-cirurgia" com 5 itens concretos (A: Robinson CES, B: $2\times 2\times J$ com cotas heterogêneas, C: violação 2º TBE com retornos crescentes, D: dual / TMST, E: aplicações empíricas RenovaBio + automotiva).

**Trade-off declarado.** Pré-monitoria já tem 4 extensões de trocas (1: variando formas funcionais, 2: núcleo $I=3$, 3: bliss-point LNS, 4: 2º TBE convexidade). Os 5 ganchos novos são *para o Alberto cobrir presencialmente*, não para inflar a pré-monitoria. **Sugestão explícita:** Alberto seleciona 3 (A + B + C) dos 5 para os ~50 min de monitoria presencial.

---

## 2. Lista exata de arquivos modificados/criados

### Modificados (diff conceitual)

1. **`aula_4/durante_aula.md`** — recalibração completa do timing master (180 min agora inclui Bloco 3.5 de 50 min); cortes em Blocos 1, 2, 3, 4, 5 + Pausa 2; novo Bloco 3.5 detalhado em 4 sub-blocos (3.5.a tecnologia/PPF, 3.5.b TMT, 3.5.c Robinson Crusoe canônico, 3.5.d corolário 1º TBE + Box RenovaBio condensado); ponte para Aula 5 reescrita para AD-I.
2. **`aula_4/pre_aula.md`** — adicionado banner cirurgia 07/05; estrutura de seções atualizada (9 → 11); duas seções novas em Markdown (S5b: Conjunto de produção, PPF, Robinson Crusoe; S6b: TMS=TMT + 1º TBE com produção como corolário); calibre N&S §11/§13.3 + J-R §5.4 + MWG cap. 17 acrescentados.
3. **`aula_4/exercicios-avaliativos.md`** — header recalibrado (1🟢 + 3🟡 + 2🔴 com mistura trocas/produção); Ex 4 substituído (PPF + Robinson canônico, 5 sub-itens); Ex 6 substituído (meta-questão 2×2×2, 5 sub-itens); notas pedagógicas explicando onde foi o conteúdo antigo (LNS direcional → Q6 pós; 2º TBE → Q10 pré + Ex6(e)).
4. **`aula_4/pre_monitoria.md`** — banner cirurgia 07/05; calibre estendido para J-R §5.4; nova seção final "Ganchos para Aula 4 — produção, novo pós-cirurgia" com 5 itens (A: Robinson CES, B: $2\times 2\times J$ cotas heterogêneas, C: 2º TBE com retornos crescentes, D: dual TMST, E: aplicações empíricas).
5. **`aula_4/slides/aula-04.qmd`** — roteiro da noite atualizado; Pausa 2 encolhida (10→5 min); Bloco 3.5 inserido com 12 slides novos (tecnologia + PPF + TMT + Robinson + EC + 1º TBE com produção + Box único RenovaBio); Bloco 4 antigo (Box EU ETS + RenovaBio + ZFM 30 min) removido; Bloco 5 reescrito em 4 slides (síntese 4 frases + ponte AD-I).
6. **`platform/aula-04.html`** — banner topo de cirurgia; progress label "0/11"; estrutura atualizada com `s5b-producao` e `s6b-1tbe-prod` adicionados (data-order 6 e 7); s6/s7/s8 renumerados (data-order 8/9/10); TOTAL_SECTIONS=11 no JS.
7. **`platform/aula-04-pre.html`** — banner topo; título atualizado ("trocas + produção"); 4 questões substituídas (Q1, Q3, Q8, Q9); calibragem 6🟡 trocas + 4🟡 produção; tempo-alvo subiu de 30–45 para 35–50 min.
8. **`platform/aula-04-pos.html`** — banner topo; título atualizado; 4 questões substituídas (Q4, Q5, Q8, Q10); calibragem 3🟡 trocas + 2🟡 produção + 3🔴 trocas + 2🔴 produção; tempo subiu de 45–70 para 50–80 min; Q10 🔴🔴 agora é meta-questão $2\times 2\times 2$.
9. **`platform/aula-04-exerc.html`** — banner topo; descrição atualizada; Ex 4 substituído (PPF + Robinson canônico); Ex 6 substituído (meta-questão $2\times 2\times 2$); tempo-alvo subiu de 2h30–3h para 2h30–3h30.

### Criados

10. **`aula_4/cirurgia-producao.md`** — este documento. Auditoria do que foi feito + trade-offs + riscos residuais + plano de remediação + checklist de testes manuais.

### **NÃO** modificados (intencionalmente)

- `aula_5/` — outro agente está reescrevendo para AD-I; intocado.
- `platform/aula-05*.html` — idem.
- `aula_4/auditoria-bundle-v2.md`, `aula_4/auditoria-gabaritos-pass3.md`, `aula_4/plano-9.5-v2.md` — auditorias antigas; preservadas como histórico do bundle pré-cirurgia.
- `platform/js/calendario.js`, `platform/js/mpe-db.js`, `platform/js/tracker.js` — sem mudanças necessárias (cirurgia foi puramente content-side).
- `supabase/schema.sql` — sem alteração de schema (cirurgia não toca DB).

---

## 3. 5 trade-offs mais críticos da cirurgia

1. **Bloco 3.5 com 50 min é piso, não conforto.** Robinson Crusoe na forma simplificada (1 consumidor + 1 firma) cabe; mas não há gordura para Q&A em sala. Se 3 alunos perguntarem detalhes de cota $\theta^{ij}$, Bloco 3.5 estoura. **Plano de remediação:** monitorar tempo durante a aula presencial; se Bloco 3.5.a (PPF visual) ultrapassar 13 min, cortar 3.5.b (TMT formal) para 6 min; se Robinson (3.5.c) ultrapassar 22 min, cortar 3.5.d (corolário 1º TBE) e remeter à pré-aula §6b.

2. **Box ZFM cortado é perda real de aplicação federalismo brasileiro.** Por 25 min de Bloco 4 que viraram 5 min de Box único, a discussão de subsídio fiscal regional + ineficiência alocativa de fatores entre regiões saiu da Aula 4. Aluno do MPE com background em consultoria/gestão pública sente falta. **Plano de remediação:** Box ZFM pode ser reaproveitado em Aula 7 (externalidades regionais); ou Alberto pode trazê-lo na monitoria 2 como caso de "second-best com externalidades positivas".

3. **Pré-aula 4 tempo-alvo subiu de 90–120 min para 115–145 min — 25% de aumento.** Alunos podem reclamar. As novas seções S5b (15 min) e S6b (10 min) são estritamente necessárias para que o aluno tenha contato com produção antes da aula. **Plano de remediação:** se telemetria revelar que P75 do tempo de S5b+S6b é > 35 min (50% acima do alvo), considerar dividir S5b em 5b.1 (PPF) + 5b.2 (Robinson) — mas isso é mudança de estrutura, próxima cirurgia se necessária.

4. **Quizzes recalibrados sem mecanismo de re-submit.** Aluno que submeteu antes de 07/05 mantém submissão antiga (10🟡 trocas no pré, 5🟡+5🔴 só trocas no pós) — calibragem diferente, mesma contabilização. Para 50 alunos, se ~10 submeteram antes da cirurgia, há ~10 inconsistências de calibre. **Plano de remediação:** se métrica admin mostrar discrepância de "acerto 1ª tentativa" entre cohort pré-cirurgia e cohort pós-cirurgia maior que 10pp, normalizar análise filtrando por `created_at` em `quiz_aggregates`.

5. **Slides do Bloco 3.5 não foram renderizados (sem `quarto` no ambiente).** Score de densidade estimado em ~9–10 nos slides 8, 9, 11 — defensável mas no limite. Se algum slide estoura visualmente o canvas (1280×800 com padding 60×80×160×80), texto pode encavalar com footer. **Plano de remediação:** Darcio roda `quarto render aula-04.qmd` localmente; se algum slide do Bloco 3.5 estoura, quebrar em 1/2-2/2 (especialmente slide 8 "Robinson EC descentralizado — os dois chapéus" é o candidato mais provável).

---

## 4. 5 testes manuais que o Darcio precisa rodar

1. **Pré-aula em janela anônima com conta de aluno-teste:**
   - Abrir `platform/aula-04.html` sem ter feito a pré-aula antes.
   - Verificar: banner cirurgia visível; progress "0/11"; seções na ordem s0 → s1 → s2 → s3 → s4 → s5 → s5b → s6b → s6 → s7 → s8.
   - Completar s5b e s6b; verificar que micro-checkpoints (s5bq1, s5bq2, s6bq1, s6bq2) gravam em `micro_attempts`.
   - Conferir que o slider de confiança pré/pós das duas seções novas grava em `confidence_ratings`.

2. **Pré-aula em conta com progresso pré-cirurgia (mais difícil — simular):**
   - Idealmente: pegar uma conta de aluno-teste que já tem `section_progress` para s0–s8 da Aula 4 (com `completedAt`).
   - Abrir `aula-04.html` atualizada.
   - Verificar: rehydrate marca s0–s8 como completed; s5b e s6b ficam locked → active; progress mostra "9/11".
   - Completar s5b → progress vai para 10/11; completar s6b → 11/11; celebration aparece.
   - Se não houver conta com progresso pré-cirurgia, simular criando uma e completando seções via plataforma antes do banner ser inserido.

3. **Submissão de quiz com versão nova:**
   - Em conta nova, abrir `aula-04-pre.html`.
   - Conferir banner; conferir que Q1 é PPF arco de círculo, Q3 é TMT, Q8 é Robinson, Q9 é TMS=TMT=w/p; outras 6 mantidas.
   - Submeter; conferir gravação em `quiz_aggregates` com `phase='pre_review'` e cada questão em `quiz_question_attempts` com `difficulty='yellow'`.
   - Mesma checagem para `aula-04-pos.html` (Q4, Q5, Q8, Q10 novos) e `aula-04-exerc.html` (Ex4 e Ex6 novos).

4. **Gate de gabarito dos exercícios avaliativos:**
   - Antes de 21/05/2026 00:00 BRT: abrir `aula-04-exerc.html` em conta nova; conferir que os gabaritos 5-passos não aparecem após submit (body tem classe `gabarito-locked`); conferir que banner "respostas registradas, gabarito libera 21/05" aparece.
   - Depois de 21/05/2026 00:00 BRT: conferir que os gabaritos aparecem (incluindo Ex4 PPF/Robinson novo e Ex6 meta-questão $2\times 2\times 2$ novo).
   - Verificar com `MPE_CALENDARIO.canShowGabarito(4, 'exerc')` no console retornando o valor esperado em cada janela.

5. **Render dos slides:**
   - Rodar `cd aula_4/slides && quarto render aula-04.qmd` (Quarto local).
   - Verificar que `aula-04.html` e `aula-04_files/` são gerados sem erros.
   - Abrir `aula-04.html` no navegador; ir slide-a-slide do Bloco 3.5 (slides 1–12 do bloco, ~12 slides após "Pausa curta"); verificar:
     - Nenhum texto estoura para o footer/logo.
     - Equações `$...$` e `$$...$$` renderizam (MathJax).
     - Boxes coloridos (`#1B3A5C` para Box único, `#C8102E` para section-divider) aparecem corretos.
     - Slide 8 ("Robinson EC descentralizado — os dois chapéus") é o candidato mais provável a estourar; se estourar, quebrar em (1/2) firma e (2/2) consumidor + callout-note.

---

## 5. Score auto-avaliado por dimensão

| Dimensão | Score (1–10) | Justificativa |
|---|---|---|
| Rigor matemático | **9.5** | Robinson canônico fechado numericamente em todas as formas (planejador, EC descentralizado, verificação $\text{TMS} = \text{TMT} = w/p$); meta-questão 2×2×2 com derivação completa; PPF arco de círculo verificado por 2 métodos (implícito + PMa). Q8 do pós (retornos crescentes) calibrada com cuidado para distinguir "2º TBE quebra" de "EC competitivo não existe". |
| Calibragem N&S/J-R | **9.5** | Piso N&S 12e §11+§13.3 (intro a produção) honrado; teto J-R §5.4 (Robinson) sem invocar Hahn-Banach formal nem Kakutani. MWG §16.D citado cirurgicamente para bliss-point. Calibre dos 🔴 do pós-aula (retornos crescentes, $2\times 2\times 2$) é qualifier-level honesto, não ANPEC. |
| Densidade slides | **8.5** | Score estimado em ~9–10 nos slides 8, 9, 11 do Bloco 3.5 — defensável mas no limite. **Não foi possível render no ambiente.** Se algum estourar, plano de remediação documentado (quebrar slide 8 em 1/2 + 2/2). Sinalizado para Darcio rodar `quarto render` manualmente. |
| Sincronia HTML↔MD | **9.5** | Ex4 e Ex6 atualizados em ambos `platform/aula-04-exerc.html` e `aula_4/exercicios-avaliativos.md` com conteúdo idêntico (1:1). Pré-aula §5b/§6b adicionadas em ambos `platform/aula-04.html` e `aula_4/pre_aula.md`. Ganchos de produção da pré-monitoria documentados em MD; HTML da pré-monitoria-02 não foi tocado (estrutura física preservada — adição é apenas no MD interno). |
| Gabaritos 5-passos | **9.0** | Todos os exercícios novos têm gabarito 5-passos completo (ponto-chave → derivação → armadilha → extensão → peer-review). Ex6 (meta-questão) tem peer-review explícito declarando trade-offs (cotas $\theta^{ij}$ uniformes vs. heterogêneas; risco residual em (d)). Q10🔴🔴 do pós tem peer-review longo articulando por que é meta-questão. **Risco residual:** alguns gabaritos novos (Q4 e Q9 do pré, Q4, Q8 do pós) são mais curtos que o gold standard da Aula 1 — peer-review mais sucinto. Defensável. |
| Tempo realista | **8.5** | Bloco 3.5 com 50 min é piso, declarado como tal. Pré-aula passou de 90–120 para 115–145 min (+25%) — declarado. Quiz pré subiu de 30–45 para 35–50 min. Quiz pós subiu de 45–70 para 50–80 min. Exercícios subiram de 2h30–3h para 2h30–3h30. **Risco residual:** 50 min para produção em sala é apertado; se Robinson trava, Bloco 3.5.d (corolário 1º TBE) cai. Plano de remediação documentado em "Notas para o professor" do durante_aula.md. |
| **Score global** | **9.0** | Cirurgia executada com integridade matemática, sincronia HTML↔MD, calibragem de calibre preservada. Riscos residuais documentados (não escondidos). Pendência de render manual dos slides. Aceitável para deploy operacional, com auditoria pós-aula (15/05) recomendada. |

---

## 6. Plano de ação caso auditoria pós-aula revele problemas

### Cenário A — Bloco 3.5 estourou em sala (Darcio passou de 22:25)

**Sintomas:** Box único de RenovaBio (3.5.d) cortado; ponte AD-I (Bloco 5) feita em corrida.

**Remediação (próxima Aula 4 ou pré-monitoria 2):**
1. Cortar Bloco 3.5.b (TMT formal) de 10 → 6 min em sala — fórmulas no slide, derivação só na pré-aula.
2. Mover discussão de "Robinson com $J=2$" para a pré-monitoria 2 explicitamente (sinalizar em sala).
3. Comprimir Bloco 1 (Edgeworth) de 38 → 35 min — Núcleo passa para 4 min.

### Cenário B — Aluno comum errou s5b/s6b (telemetria pós-aula mostra <50% acerto)

**Sintomas:** Micro-checkpoint s5bq2 (TMT cálculo) ou s6bq1 (salário Robinson) com taxa de acerto <50%.

**Remediação:**
1. Adicionar mais 1 numérico fechado ao final de S5b explicitando inversão $L_\ell = q_\ell^2$ → $q_1^2 + q_2^2 = \bar L$.
2. Em S6b, adicionar passo intermediário "$f'(L) = 1/(2\sqrt{L})$" antes da pergunta sobre salário.
3. Pré-monitoria 2 inclui exercício extra de Robinson com tecnologia diferente ($f = L^{2/3}$) para reforçar o método.

### Cenário C — Quiz pós-aula Q10 (meta-questão 2×2×2) com taxa de acerto <30%

**Sintomas:** Q10🔴🔴 muito difícil ou enunciado ambíguo.

**Remediação:**
1. Reescrever item (d) com hint explícito: "use a igualdade tripla do item (c) e a simetria de tecnologias para concluir $L_1 = L_2$".
2. Em sala (próxima Aula 4 do MPE 2027), apresentar a meta-questão como exemplo trabalhado em 5 min antes do quiz — ancora.
3. Em pré-monitoria 2, Alberto resolve uma versão mais simples (cotas iguais, dotações iguais, mas tecnologias **assimétricas** $f_1 = \sqrt{L}$, $f_2 = L^{1/3}$) para mostrar que igualdade tripla sobrevive sem simetria total.

### Cenário D — Slides do Bloco 3.5 estouraram visualmente após render

**Sintomas:** Texto encavala com footer/logo nos slides 8, 9 ou 11.

**Remediação:**
1. Slide 8 "Robinson EC descentralizado — os dois chapéus" → quebrar em 8.1/2 (firma) + 8.2/2 (consumidor + callout-note).
2. Slide 9 "TMS = TMT = w/p" → mover verificação numérica para slide próprio 9.bis, deixando 9 só com eq-key + eq-punch.
3. Slide 11 "1º TBE com produção — corolário" → mover passos 3 e 4 da prova para slide 11.bis "Passos 3 e 4 — firmas + agregação", deixando 11 só com passos 1 e 2 + eq-punch.

---

## 7. Checklist final de testes manuais (cópia executiva)

- [ ] **Pré-aula em janela anônima (conta nova):** banner visível, progress 0/11, fluxo s0 → s8 inteiro, micro-checkpoints s5bq1/s5bq2/s6bq1/s6bq2 gravam em `micro_attempts`.
- [ ] **Pré-aula em conta com progresso pré-cirurgia:** rehydrate funciona, progress mostra X/11 com X = seções já completadas, s5b/s6b aparecem como locked → active, completion após completar todas.
- [ ] **Quiz pré:** 10 questões, 4 novas (Q1 PPF, Q3 TMT, Q8 Robinson, Q9 TMS=TMT), submissão única funciona, gabaritos 5-passos visíveis pós-submit.
- [ ] **Quiz pós:** 10 questões com 5🟡 + 5🔴, 4 novas (Q4 Robinson EC, Q5 1ºTBE produção, Q8 retornos crescentes, Q10🔴🔴 meta), gabaritos completos.
- [ ] **Exercícios avaliativos:** 6 exercícios com Ex 4 e Ex 6 novos, ~28 sub-itens, gate de gabarito até 21/05 00:00 funciona, gabaritos 5-passos liberam após.
- [ ] **Slides:** `quarto render aula-04.qmd` zero erros, Bloco 3.5 (12 slides) renderiza visualmente sem texto estourar para footer.
- [ ] **Sincronia HTML↔MD:** `aula_4/exercicios-avaliativos.md` é idêntico em conteúdo a `platform/aula-04-exerc.html` (Ex 4 e Ex 6 sem divergência).
- [ ] **Tracker de seções:** abrir aula-04, completar s5b, sair, voltar; confirmar que s5b está completed em `section_progress` (admin pode verificar).
- [ ] **MathJax delimitadores:** todas as equações renderizam corretamente (em HTML platform: `\(...\)` e `\[...\]`; em .qmd Quarto: `$...$` e `$$...$$`).
- [ ] **Notação canônica:** `\succeq` (não `\succsim`), `\text{TMS}` (não `MRS`), vírgula decimal `0{,}25` em PT-BR. Conferido em todos os arquivos modificados.

---

## 8. Notas finais Referee 2

**O que esta cirurgia é.** Adição cuidadosa de 50 min de produção (PPF + Robinson + 1º TBE com produção como corolário) à Aula 4, preservando IDs lógicos das seções submetidas pelos alunos, recalibrando quizzes sem destruir respostas antigas, declarando trade-offs em vez de varrê-los para debaixo do tapete.

**O que esta cirurgia não é.** Não é refundação da Aula 4. Não é a versão de Aula 5 antiga (EG produção) movida em peso para Aula 4 — Robinson aqui é simplificado, $J=1$, $\theta=1$. Não é teorização de $J$ firmas com cotas $\theta^{ij}$ explicitamente parametrizadas — isso vai para a pré-monitoria 2 com Alberto.

**O que falta.** Render dos slides em Quarto (Darcio rodar `quarto render` manualmente). Auditoria pós-aula de 15/05 com base em telemetria das micro-checkpoints novas. Cobrança de pelo menos 30% acerto na Q10🔴🔴 do pós para validar a meta-questão.

**Honestidade pedagógica.** A Aula 4 ficou densa. 180 min cobrindo Edgeworth + Walras + 1º TBE em troca + 2º TBE + PPF + Robinson + 1º TBE com produção é pesado. **Aceitável dado o trade-off com a Aula 5 que ganhou Arrow-Debreu I integralmente.** Em MPE 2027, sugiro reavaliar: ou (a) Aula 4 fica em 200 min com Bloco 4 reabilitado, ou (b) Aula 5 absorve o 1º TBE com produção (deixando Aula 4 só com PPF+Robinson básico), ou (c) currículo passa de 9 para 10 aulas.

— Referee 2, 07/05/2026.

---

## Histórico de aritmética do roteiro (3 passadas iterativas)

> Movido de `durante_aula.md` em 07/05/2026 (pass-2 de limpeza pelo Darcio). O `durante_aula.md` original mostrava as três passadas em sequência declarada — útil como evidência de Referee 2 mas ruído para uso operacional em sala. Versão final do timing está em `durante_aula.md` linhas 21-39. As três passadas abaixo ficam preservadas para auditoria.

### Passada 1 — tabela inicial (somava 175 min, faltava 5 min)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | 5 min |
| 1 | Edgeworth, Pareto, contract curve, núcleo | 19:35 | 20:15 | 40 min |
| P1 | Pausa | 20:15 | 20:25 | 10 min |
| 2 | EC + lei de Walras + cálculo CD | 20:25 | 21:00 | 35 min |
| 3 | 1º TBE (prova pedagógica) + 2º TBE preliminar | 21:00 | 21:35 | 35 min |
| **3.5** | **Tecnologia + PPF + Robinson Crusoe + 1º TBE com produção** | **21:35** | **22:25** | **50 min** |
| 4 | Box Brasil/Mundo (1 box cap-and-trade, focado) + síntese | 22:25 | 22:40 | — |
| 5 | Síntese + ponte Aula 5 (Arrow-Debreu I) | 22:40 | 22:30 | — |

**Erro detectado.** $5+40+10+35+35+50 = 175$ min. Bloco 4 + Bloco 5 ficariam em $22:25 \to 22:30 = 5$ min para 2 blocos. Inviável.

### Passada 2 — tentativa de fechar com Pausa 2 = 5 min, Bloco 4 = 15 min

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | **5 min** |
| 1 | Edgeworth, Pareto, contract curve, núcleo | 19:35 | 20:15 | **40 min** |
| P1 | Pausa | 20:15 | 20:25 | **10 min** |
| 2 | EC + lei de Walras + cálculo CD | 20:25 | 21:00 | **35 min** |
| 3 | 1º TBE prova + 2º TBE preliminar | 21:00 | 21:30 | **30 min** (era 35) |
| P2 | Pausa curta | 21:30 | 21:35 | **5 min** (era 10) |
| **3.5** | **Tecnologia + PPF + Robinson Crusoe + 1º TBE c/ produção** | **21:35** | **22:25** | **50 min** ✦ |
| **4'** | **Box único (RenovaBio/CBIOs como TMS=TMT aplicado)** | **22:25** | **22:40** | **15 min** |
| **5** | **Síntese (1 min) + ponte AD-I (4 min)** | **22:40** | **22:55** | — |

**Erro detectado.** $5 + 40 + 10 + 35 + 30 + 5 + 50 + 15 + 5 = 195$ min. **Excesso de 15 min** — termina em 22:55, não 22:30.

### Passada 3 — tabela final (180 min ✓, em uso)

Comprimi 2 min em Bloco 1 (núcleo de 8 → 6 min), 3 min em Bloco 2 (Leontief opcional), 7 min em Bloco 3 (saturação direcional movida para pré-aula + Q6 pós), 3 min em Pausa 2 (5 → 7 min, na verdade aumentou por respiração mínima), e 25 min em Bloco 4 (15 → 5 min, Box único ultra-condensado). Total economizado: $2 + 3 + 7 + 25 = 37$ min. Sobra: $195 - 37 = 158$ min — **muito pouco**, contou errado. Conferindo soma da tabela 3 diretamente: $5 + 38 + 10 + 32 + 28 + 7 + 50 + 5 + 5 = 180$ min ✓.

A tabela final está em `durante_aula.md` linhas 21-39 (versão limpa).

**Lição operacional.** O orçamento de 180 min é apertado para 3 atos (trocas + produção + ponte). Em MPE 2027, a opção (a) "Aula 4 em 200 min com Bloco 4 reabilitado" do diagnóstico pedagógico no fim deste documento elimina toda essa dor.
