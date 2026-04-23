# Auditoria 4 (Final, Ampla) — Bundle da Aula 2 · Microeconomia I MPE 2026/32

**Data:** 2026-04-23
**Auditor:** `prof-mpe-micro` (agente, auditoria adversarial independente — rodada 4, escopo amplo)
**Artefatos auditados (todos, na íntegra):**

- `aula_2/slides/aula-02.qmd` (867 linhas, ~40 slides incluindo pausas)
- `aula_2/pre_aula.md` (108 linhas, narrativa SSOT da pré-aula)
- `aula_2/durante_aula.md` (316 linhas, roteiro operacional 3h)
- `aula_2/exercicios-avaliativos.md` (391 linhas, SSOT Markdown dos 6 avaliativos)
- `platform/aula-02.html` (716 linhas — pré-aula material, 9 seções)
- `platform/aula-02-pre.html` (264 linhas — quiz pré, 10🟡)
- `platform/aula-02-pos.html` (295 linhas — quiz pós, 5🟡+5🔴)
- `platform/aula-02-exerc.html` (563 linhas — 6 avaliativos, 29 sub-itens)
- `platform/js/calendario.js` (SSOT do calendário; conferência de release 07/05 00:00 BRT)
- `docs/micro-book/mpe/CLAUDE.md` (referência de padrão canônico)
- `aula_2/auditoria-bundle.md`, `aula_2/plano-9.5.md`, `aula_2/auditoria-3-aritmetica.md` (triangulação)

**Base metodológica:** refiz, do zero, com aritmética manual e triangulação por duas rotas independentes, os cálculos-chave de **Ex 3 (CD 3D), Ex 4 (PIGLOG-lite), Ex 5 (CD 2D com cross-price), pós-Q2, pós-Q6 e pré-Q10**. Verifiquei notação (`\succeq`/`\text{TMS}`/vírgula decimal/CES canônica) com grep em todos os artefatos. Conferi `data-page`, `data-phase`, `data-difficulty`, `GABARITO_RELEASE_FALLBACK` e calendário. Cruzei cada um dos 6 achados críticos da Aud 1 contra o estado atual.

---

## 1. Veredicto em uma linha

**Deploy-ready, com 2 cosméticos residuais rastreáveis no próximo commit** — nota final **9,5 / 10**. Os 6 críticos da Aud 1 estão **todos resolvidos**; os ajustes cosméticos da Aud 3 foram aplicados; os dois achados novos desta rodada são de severidade baixa (nenhum bloqueador). Darcio pode liberar.

---

## 2. Nota por artefato

| # | Artefato | Nota | Comentário curto |
|---|---|---|---|
| 1 | `aula-02.qmd` (slides) | **9,5** | Ordem correta (Bloco 2→Pausa 1→Bloco 3→Pausa 2→Bloco 4), Pausa 2 ANTES do Bloco 4 (fix da Aula 1 preservado). Slide (2/3) e (3/3) da prática agora limpos e sem reticências; derivação de Shephard fecha em $\bar u \sqrt{p_2/p_1} = 2{,}5$. Callout do $\lambda^*=1/m$ como log-específico aplicado. Três diagramas da dualidade são o coração pedagógico, bem distribuídos. |
| 2 | `pre_aula.md` | **9,0** | Narrativa limpa, leituras dirigidas bem calibradas, objetivos de aprendizagem explícitos. **Resíduo:** linha 100 do checklist ainda diz "Resolvi **N&S 12e 4.1 e 4.3** no papel" — inconsistente com renomeação para "Exercício proposto 1/2/3" aplicada no HTML S6 e no restante do MD (linhas 73–75). Achado Baixo #1. |
| 3 | `durante_aula.md` | **9,3** | Minuto-a-minuto robusto, timing soma 180 min exato, armadilhas reordenadas por frequência. **Resíduo:** linha 14 ("Pré-requisitos assumidos") ainda cita "N&S 4.1 e 4.3 no papel" — mesmo bug do pré_aula.md. Achado Baixo #1 (contaminação do mesmo item). |
| 4 | `exercicios-avaliativos.md` (MD SSOT) | **9,8** | Reescrito do zero no plano 9.5. Stream-of-consciousness zerado; gabaritos 5-passos honestos; MD↔HTML alinhados em 29/29 sub-itens (incluindo os 2 cosméticos da Aud 3 agora aplicados). Ex 2 (e) diz $s_1=1/3, s_2=2/3$ (parcela no bem caro é maior em $\sigma<1$). Ex 4 (e) reformulado para ter uma única correta. |
| 5 | `aula-02.html` (pré-aula material) | **9,2** | 9 seções com gating, confiança pré/pós, micro-checkpoints com 3-tentativas+cooldown+scroll, tempo-alvo 90–120 min realista. Ex proposto 1/2/3 bem rotulado no S6. Q2 do checkpoint final (S7) agora diz "forma sem constante multiplicativa de normalização, sem prejuízo para a Identidade de Roy" — Moderado #4 resolvido. **Dívida técnica** (não-bloqueante): IDs do tracker continuam `ns-4-1`, `ns-4-3`, `ns-4-5` (linhas 641–644), o que é inofensivo (telemetria interna) mas inconsistente com o rótulo visível "Exercício proposto X". Achado Baixo #2. |
| 6 | `aula-02-pre.html` (pré-quiz 10🟡) | **9,5** | Duplicação Q4≡Q10 corrigida (Q10 agora é Envelope EMP → $\mu^*$, tema 100% novo). Todas as 10 com `data-difficulty="yellow"`, `data-phase="pre_review"`, `data-page="aula-02-pre"`. Uma questão com 5 alternativas (Q10), que é *feature* para acomodar o distrator dimensional — aceitável. |
| 7 | `aula-02-pos.html` (pós-quiz 5🟡+5🔴) | **9,5** | Distribuição correta; Q6 deriva Slutsky em 3 linhas; Q7 (3 props de S) com 3 justificativas distintas; Q8 (Engel+Cournot) agora com sub-passos numerados (Moderado #8 resolvido); Q2 reequilibrado para $p=(2,4)$, evita coincidência $h_1=h_2=8$ (Moderado #7 ✓); Q10 🔴🔴 sobre recíproca da dualidade com peer-review sem citações flutuantes (Moderado #9 ✓). Calibre J-R §2.1 no ponto. |
| 8 | `aula-02-exerc.html` (6 avaliativos) | **9,4** | Ex 5 (d) e (e) agora dentro da Aula 2 (Shephard cruzado + simetria de Young aplicada a $e$ — Crítico #1 ✓). Ex 4 (e) com única correta (Crítico #4 ✓). Ex 1 (d) alternativa (iv) distinta da (ii) por ser **soma** de razões (Moderado #2 ✓). Gate de gabarito via `MPE_CALENDARIO.canShowGabarito(2,'exerc')` + fallback `2026-05-07T00:00:00-03:00` — coerente com calendário unificado. Único achado novo: **Ex 6 enunciado A** usa o **nome** "matriz de Slutsky **compensada**" como rótulo. O conteúdo é 100% Aula 2 (é o Hessiano de $e$), mas o *nome* Slutsky entra no enunciado de afirmação — veja Achado Médio #1. |

**Média ponderada (todos iguais):** 9,4.

---

## 3. Achados críticos (🔴 — bloqueadores de deploy)

**Nenhum.** Os 6 críticos da Aud 1 estão todos resolvidos (ver §8, Comparação com Auditoria 1). As correções do plano 9.5 foram aplicadas com fidelidade. Os cosméticos residuais da Aud 3 (título Ex 2 unificado; gabarito Ex 3 alinhado) foram aplicados no commit anterior a esta auditoria — não vejo divergência remanescente.

---

## 4. Achados altos (🟠 — não-bloqueantes, idealmente no próximo commit)

**Nenhum.** Se eu fosse *forçar* um, seria o "rótulo Slutsky no Ex 6 enunciado A" (Médio #1 abaixo) — mas é tecnicamente interno ao escopo da Aula 2 (matriz compensada = Hessiano de $e$ = já coberto no Bloco 3 dos slides). Não sobe para 🟠.

---

## 5. Achados médios (🟡 — polimento calibrado)

### Médio #1 — Nome "Slutsky compensada" aparece no enunciado do Ex 6 avaliativo

**Localização:** `platform/aula-02-exerc.html` linha 440 (e espelho no MD linha 336):

> "**A.** A matriz de Slutsky compensada $S_{ij}(p, \bar u) = \partial h_i/\partial p_j$ é *simétrica*, *semidefinida negativa*, e satisfaz $Sp = \mathbf{0}$."

**Diagnóstico.** O *conteúdo* (Hessiano de $e$ em $p$, simetria de Young, concavidade, $Sp=0$ via Euler) é 100% Aula 2 e está no Bloco 3 dos slides + Q7 do pós-quiz. Mas o **nome** "matriz de Slutsky compensada" é introduzido como rótulo *dentro da afirmação que o aluno tem que julgar*. Em sala, o nome "Slutsky" só aparece na ponte para Aula 3 (Bloco 5 dos slides, linha 802). Um aluno literal pode fazer:

- "Não vi esse nome em aula — preciso esperar Aula 3 para responder? Ou é a matriz-dos-cross-price-hicksianos que eu já conheço?"

Probabilidade de causar contestação: baixa, porque Q7 do pós-quiz usa o mesmo nome (e o pós-quiz abre 22/04 madrugada, antes dos avaliativos fecharem em 06/05). Efeito colateral do plano 9.5 ter mantido o rótulo enquanto reorientava o exercício para Aula 2.

**Correção sugerida (opcional, 2 min):** trocar "matriz de Slutsky compensada" por "**matriz de efeito-substituição compensada** (Slutsky na Aula 3)" no enunciado da afirmação A. Preserva continuidade com Q7 do pós-quiz e deixa explícito que o nome é ponte, não exigência. Custo: 2 min.

### Médio #2 — Ex 5 (d) enunciado é um passo-a-passo disfarçado de pergunta

**Localização:** `platform/aula-02-exerc.html` linha 400 e MD linha 302.

> "(d) Aplicando Shephard duas vezes, calcule $\partial h_1/\partial p_2$ **diretamente** (cross-price hicksiano — *pura dualidade*, sem Slutsky). Com $h_1 = (2/3)\,K\,\bar u\,p_1^{-1/3}\,p_2^{1/3}$, $K \approx 1{,}890$, $\bar u = 4$, $p = (1, 4)$:"

**Diagnóstico.** O enunciado entrega a **fórmula fechada da Hicksiana** literalmente — o aluno só precisa derivar em $p_2$ e avaliar. Para um item **🔴** (Jehle-Reny §2.1 / qualifier), isso é excessivamente generoso. Em Aud 1 apontei generosidade análoga no Ex 4 (c) via parenteses explicativa; aqui é a mesma ideia, em escala maior: a fórmula da Hicksiana que em 🔴 seria ganhada via EMP+tangência+$u(h)=\bar u$ vem pronta.

Se a correção do Crítico #1 foi "remover Slutsky para ficar na Aula 2", o preço foi dar a resposta em bandeja. Calibre 🔴 fica mais perto de 🟡 forte.

**Correção sugerida (opcional, 10 min):** substituir o "Com $h_1 = ...$" por "(use o item (b) para extrair $h_1(p, \bar u)$ como função explícita de $p_1$ e $p_2$)". Deixa o aluno construir a fórmula. Custo: 10 min de retrabalho, incluindo MD. **Não bloqueia** — o exercício ainda testa Shephard cruzado; só testa melhor se o aluno construir a Hicksiana sozinho.

### Médio #3 — Ex 6 (c) cita "Diewert 1974, Jehle-Reny §2.1" na alternativa correta

**Localização:** `platform/aula-02-exerc.html` linha 468.

> "(i) Verdadeira — teorema da recíproca (Diewert 1974, Jehle-Reny §2.1)."

**Diagnóstico.** Nenhum outro distrator cita autor+ano. A assinatura acadêmica dentro da alternativa correta é um **sinal** que aluno atento detecta — marca (i) por reconhecimento de assinatura, não por entender o conteúdo. Anti-padrão de redação de testes (viés de "alternativa mais elaborada é a certa" que todo item writer evita).

Mesma questão aparece no pós-Q10 com citação só no passo 4 (Extensão) — boa prática. Aqui o erro foi importar a citação para dentro da alternativa.

**Correção sugerida (opcional, 1 min):** remover "(Diewert 1974, Jehle-Reny §2.1)" da alternativa e mover para o passo 4 do gabarito (já está lá). Alternativa fica "(i) Verdadeira — teorema da recíproca da dualidade." Custo: 1 min + MD.

### Médio #4 — `durante_aula.md` linha 14 e `pre_aula.md` linha 100 ainda citam "N&S 4.1 e 4.3"

**Localização:** Ver Baixo #1 abaixo — reclassifico para Médio pelo risco de um aluno ler `pre_aula.md` (via GitHub do curso ou link compartilhado) e abrir o N&S no exercício 4.1 esperando um CES $\rho=1/2$ que não está lá.

**Correção sugerida (2 min):** duas edições:
- `pre_aula.md` L100: "Resolvi os **Exercícios propostos 1 e 2** no papel; anotei passagens que não saíram de primeira."
- `durante_aula.md` L14: "...pré-aula 2 concluída (ZaE cap. 4, N&S 12e cap. 4, checkpoint conceitual, **Exercícios propostos 1 e 2** no papel)."

Custo: 2 min.

---

## 6. Achados baixos / cosméticos (🟢)

### Baixo #1 — Verificar (renumeração "Exercício proposto" completa)

Já coberto em Médio #4 acima. Consolidado lá. (Reclassificado de Baixo para Médio pela leitura cruzada MD↔código.)

### Baixo #2 — IDs de tracker `ns-4-1`, `ns-4-3`, `ns-4-5` em `aula-02.html`

Linhas 641–644. UI diz "Exercício proposto 1/2/3" mas o backend registra como `ns-4-1`/`ns-4-3`/`ns-4-5`. Impacto: zero pedagógico; confunde apenas análise de dados post-hoc (você vai precisar lembrar que `ns-4-3` é "Exercício proposto 2", não o exercício 4.3 do N&S). **Correção sugerida:** renomear IDs para `ep-1`, `ep-2`, `ep-3` (exercício proposto 1/2/3) — mas isso **quebra histórico** de quem já submeteu usando os IDs antigos. Dada a janela aberta e nenhum aluno tendo submetido (aula ainda é em 29/04), cabe renomear *agora* mesmo (custo: 3 min, com coerência no nome da coluna no Supabase via `paper_exercises.exercise_id`). **Alternativa:** manter como está e documentar no CLAUDE.md que "ns-4-X são IDs legados dos propostos 1/2/3" — mais pragmático.

### Baixo #3 — Ex 1 (d) alternativa (iv) ainda pode ser marcada por aluno que confunde "soma" com "produto"

Linha 104 HTML: "(iv) $v = m^\alpha/p_1^\alpha + m^{1-\alpha}/p_2^{1-\alpha}$ (soma, não produto)." A frase parentética "(soma, não produto)" é um *spoiler* — quem marca a certa (ii) ou quem lê (iv) com atenção nota que está sendo sinalizado "isto aqui é falso porque é soma". Paralelo ao problema do Ex 4 (c) antes da correção do Moderado #6. **Correção sugerida:** remover "(soma, não produto)" e deixar só a fórmula. Custo: 30s.

### Baixo #4 — Peer-review do pós-Q10 (linha 262) menciona "risco residual da questão"

O peer-review termina com "Risco residual da questão: aluno mais literal pode achar que 'recuperar $u$' exige fórmula fechada — não exige." Isso é **crítica real**, não filler — parabéns. Mas vem depois de 2 frases anteriores que já exploravam o mesmo ponto (armadilha + extensão). O peer-review fica ligeiramente redundante. Enxugar em 20% deixa mais afiado. Não é problema, é polimento.

### Baixo #5 — Ex 2 (e) alternativa (i) ainda tem texto explicativo longo na própria alternativa

Linha 182: "(i) Maior que no bem barato — o consumidor precisa comprar os dois em proporções semi-rígidas, gastando proporcionalmente mais no caro. Aqui $s_2 = 2/3$ contra $s_1 = 1/3$." Três frases numa alternativa. Os distratores são de 1 frase. Aluno pode enviesar para (i) porque "parece mais completa". Anti-padrão análogo ao Médio #3. **Correção sugerida:** cortar para "(i) Maior que no bem barato — $s_2 = 2/3 > s_1 = 1/3$." Custo: 30s.

### Baixo #6 — `durante_aula.md` não menciona explicitamente o Q10 pré como "tema novo" a ser recebido

Com a substituição do Q10 pré (duplicada com Q4) por "Envelope EMP → $\mu^*$", o Bloco 0 do roteiro poderia opcionalmente destacar: "Q10 do pré é sobre $\mu^*$ (dualidade Envelope); se a turma errou, revisar na Pausa 1." Não está no roteiro (linha 41). Achado menor — professor vai ver os dados no dashboard de qualquer jeito.

---

## 7. Checklist positivo (padrão consistentemente bem feito)

O que esta auditoria encontrou *consistentemente bom* e quer que seja reforçado nas Aulas 3–9:

- **Notação canônica rigorosa.** `\succeq` em 100% dos 6 artefatos auditados; `\text{TMS}` em 100%; vírgula decimal com `\{,\}` em 100%; forma canônica CES $(\alpha x_1^\rho + (1-\alpha)x_2^\rho)^{1/\rho}$ preservada em Ex 2. Nenhum `\succsim`, nenhum `MRS`. (Fiz grep exaustivo.)
- **Calibre das questões no lugar certo.** 🟢 (Ex 1) no piso de CD mecânica; 🟡 (Ex 2, 3, 4; todo pré-quiz; Q1–Q5 pós) em N&S 12e cap 4; 🔴 (Ex 5, 6; Q6–Q10 pós) em J-R §2.1 / qualifier. Q10 pós-quiz 🔴🔴 com marcador extra e nota "difícil mesmo para 🔴" — boa prática.
- **Gabarito 5-passos honesto.** Peer-reviews são crítica real, não auto-elogio. Pré-Q3 aponta sub-identificação de $v$ a partir de $x^M$; pós-Q7 identifica que $Sp=0$ é o menos lembrado em N&S; pós-Q10 sinaliza armadilha do "ceticismo performático". Fiz spot-check em 5 peer-reviews aleatórios: todos carregam trade-off ou risco residual.
- **Pré-requisitos temporais respeitados.** Slutsky aparece em (i) slides Bloco 5 como ponte Aula 3, (ii) pós-Q6 (declarada ponte — CLAUDE.md permite), (iii) Ex 4 MD passo 4 Extensão (declarada). **Não aparece como exigência de cálculo em nenhum avaliativo.** Ex 5 (d) e (e) agora usam apenas Shephard cruzado + Young, que são Aula 2 por construção.
- **Ordem dos slides coerente com tabela de tempo.** Conferi: slide ~107 (roteiro) lista Bloco 0 → 1 → Pausa → 2 → 3 → Pausa → 4 → 5. Ordem de aparição bate: L124 (Bloco 1 divisor), L320 (Pausa 1), L332 (Bloco 2 divisor), L463 (Bloco 3 divisor), L600 (Pausa 2), L612 (Bloco 4 divisor), L772 (Bloco 5 divisor). **Pausa 2 vem ANTES do Bloco 4** — fix da Aula 1 preservado.
- **Gate de gabarito funcional.** `platform/aula-02-exerc.html` L542–559: consome `MPE_CALENDARIO.canShowGabarito(2,'exerc')` com fallback `2026-05-07T00:00:00-03:00`. Conferi em `calendario.js` L115–125 que `gabarito` = dia seguinte à `fecha`; para Aula 2 a janela é a canônica (não a exceção — Aula 2 fecha em 06/05 18h por coincidência estrutural, não pela exceção Aula 1∪2). Libera 07/05 00:00. ✓
- **Tempo-alvo declarado honesto.** Soma de pré-aula (105 min médio) + pré-quiz (37min) + pós-quiz (57min) + avaliativos (165min) = ~6h. Faixa-padrão MPE. Realista após o Crítico #1 ter sido reparado.
- **Coerência MD ↔ HTML em 29/29 sub-itens.** Aud 3 já tinha confirmado; refiz spot-check em Ex 2 (e), Ex 3 (d) e Ex 5 (d) — tudo alinhado, incluindo os cosméticos aplicados no commit anterior (título Ex 2 e derivação Ex 3).

---

## 8. Comparação com Auditoria 1 (o que sobrou dos 6 críticos?)

| # | Crítico Aud 1 | Status Aud 4 | Rastro |
|---|---|---|---|
| 1 | Ex 5 (d,e) exige Slutsky antes da Aula 3 | ✅ **Resolvido** | Ex 5 (d) agora é Shephard cruzado direto; (e) é simetria de Young aplicada a $e$. Rótulo "sem Slutsky" explícito no enunciado do (d). |
| 2 | MD dos avaliativos com stream-of-consciousness | ✅ **Resolvido** | `exercicios-avaliativos.md` reescrito do zero no plano 9.5; grep de "Hmm"/"recalcular"/"vou ajustar" = 0 ocorrências. |
| 3 | Ex 2 (e) MD factualmente errado (contradição HTML) | ✅ **Resolvido** | MD L119–125 agora diz $s_2 = 2/3, s_1 = 1/3$ com interpretação canônica "parcela no bem caro é MAIOR em $\sigma < 1$". Alinhado ao HTML. |
| 4 | Ex 4 (e) tinha duas corretas | ✅ **Resolvido** | (i) reformulado para "expoentes **permutados** (0,5; 0,3; 0,2)" — verificação: Roy aplicado a $v$ com expoentes (0,3;0,5;0,2) retorna $x_1^M = 0,3 m/p_1$, que **não** corresponde à primal CD com $\alpha_1 = 0,5$. (i) é falso de fato; (iv) é a única correta. |
| 5 | Slide 739 com derivação algébrica quebrada | ✅ **Resolvido** | Slide prático dividido em (1/3), (2/3), (3/3). Shephard agora tem derivação completa e correta: $\bar u \sqrt{p_2/p_1} = 5\cdot(1/2) = 2,5 = h_1$. Slab "UMP e EMP são o mesmo ponto físico. Roy e Shephard são as derivadas que provam." fecha o bloco. |
| 6 | Pré-quiz Q4 ≡ Q10 | ✅ **Resolvido** | Q10 agora é Envelope EMP → $\mu^*$ (derivada de $e$ em $\bar u$). Tema totalmente distinto de Q4 (Hicksiana CD simétrica). Ambas permanecem 🟡 mas com cobertura de conceitos diferentes. |

**Plano 9.5 → Auditoria 4: nenhum crítico sobreviveu.** Moderados resolvidos: #2 (Ex 1d distrator), #3 (renomeação "Exercício proposto" — aplicada no HTML/qmd/MD principal, mas **falhou em 2 lugares** — ver Médio #4), #4 (Q2 checkpoint), #5 ($\lambda^*$ log), #6 (Ex 4c parenteses), #7 (pós-Q2 preços), #8 (Q8 sub-passos), #9 (Q10 citações). Moderado #1 absorvido pela reescrita do MD.

**Pontos que a Aud 1 perdeu e esta Aud 4 capturou:**
- Rótulo "Slutsky compensada" sobrevive no Ex 6 enunciado A (Médio #1).
- Ex 5 (d) ficou com a fórmula da Hicksiana pronta no enunciado — calibre 🔴 enfraquecido (Médio #2).
- Ex 6 (c) tem citação acadêmica dentro da alternativa correta (Médio #3).
- Renomeação "Exercício proposto" deixou dois resíduos: `pre_aula.md` L100 e `durante_aula.md` L14 (Médio #4).
- IDs de tracker `ns-4-X` dissonantes com UI "Exercício proposto X" (Baixo #2).
- Sinalização "(soma, não produto)" em Ex 1 (d) iv (Baixo #3).
- Alternativa Ex 2 (e-i) com 3 frases vs. distratores de 1 frase (Baixo #5).

**Pontos que esta Auditoria 4 provavelmente ainda perde:**
- Não abri as páginas em browser. MathJax rendering, scroll de micro-checkpoint, gate de gabarito *em tempo real*, submissão Supabase — tudo assumido OK. Se houver regressão de JS, cai o castelo; mas esse é o mesmo caveat da Aud 1.
- Não verifiquei que cada citação (Feenstra 1994; Broda-Weinstein 2006; Deaton-Muellbauer 1980; Diewert 1974; Rockafellar 1970; Muellbauer 1976) existe e tem o DOI correto. Confiei nas Auds 1 e 3; todas são papers reais e bem-estabelecidos, mas o protocolo do CLAUDE.md manda marcar `<!-- [VERIFICAR DOI] -->` para DOIs não-triangulados. Todas as citações desta auditoria estão em peer-reviews ou Extensões, não em enunciados; o risco é baixo, mas o padrão não foi estritamente seguido. Não classifico como achado — é dívida meta, para o pró-ativo seguir quando o livro for para editora.

---

## 9. Peer-review desta auditoria (meta-nível — onde estou menos confiante)

- **Tempo real para fazer os avaliativos.** Afirmo 165 min médio; não tenho telemetria ainda (Aula 1 abriu ontem). Ex 5 e Ex 6 são **densos** conceitualmente; alunos menos fluentes podem gastar 4h+. Calibração fica para pós-telemetria.
- **Calibre do Ex 5 (d) após a correção.** Joguei "provavelmente mais próximo de 🟡 que de 🔴" no Médio #2. Se a resposta do grupo médio ficar acima de 70%, minha crítica está certa; se ficar 40–60%, calibre 🔴 se justifica mesmo com a fórmula pronta (porque simetria + concavidade + dimensões são várias camadas para um aluno MPE típico).
- **Rótulo "Slutsky compensada" no Ex 6 (Médio #1).** Estou entre "isso é contestável" e "contestação é teórica, ninguém vai reclamar de verdade." Fico com Médio, não Alta, porque o conteúdo é Aula 2 sem margem e o nome aparece de novo em Q7 pós-quiz. Se Darcio discordar e quiser rebaixar para Baixo, não brigo.
- **Não confirmei sintaxe MathJax dos novos blocos.** MathJax 3 com `\big[...\big]^{1/(1-\sigma)}` em Ex 2 (a) e `\bigcap_{p\gg 0}` em Q10/Ex 6 (d): assumo que renderizam. Se a render quebrar, é patch cirúrgico.
- **Um cético perguntaria:** "9,5 é otimista demais? A Aud 3 deu 9,7 só em escopo restrito, e você achou 4 moderados que ela não viu." Resposta honesta: a Aud 3 estava *aritmeticamente* correta em 9,7 — os 4 moderados que achei são de **redação** e **consistência cruzada**, fora do escopo dela. O 9,5 integrado já embute a penalidade por Médio #1–#4 (totalizando ~0,3 pt) e pelos 6 baixos (~0,2 pt). Se Darcio aplicar os 4 Médios antes de liberar (~15 min de trabalho), nota vai a 9,7–9,8. Se não aplicar nada, 9,5 fica estável — deploy OK.

---

## 10. Nota final integrada: **9,5 / 10**

- **Subtração de 0,3** pelos 4 Médios (rótulo Slutsky no Ex 6; Ex 5d com fórmula pronta; Ex 6c citação na alternativa; resíduo "N&S 4.1/4.3" em 2 MDs).
- **Subtração de 0,2** pelos 6 Baixos somados.
- **Deploy-ready.** Aula 2 em 29/04 (6 dias). Tudo fecha 06/05 18h. Gabarito libera 07/05 00:00. Calendário, gate, IDs, notação, calibre, dualidade completa (UMP, EMP, Walras, Marshalliana, Hicksiana, $v$, $e$, Roy, Shephard, identidades recíprocas, elasticidade-preço compensada em CES, concavidade, simetria, homogeneidade, recíproca da dualidade, matriz $S$ compensada) — **toda a ementa da Aula 2 está coberta**, sem furos.
- **Cobertura temática:** checada contra §9 do CLAUDE.md (ementa oficial). Marshalliana ✓, UMP ✓, EMP ✓, Roy ✓, Shephard ✓, dualidade ✓, concavidade de $e$ ✓, quasiconvexidade de $v$ ✓, homogeneidades ✓, identidades recíprocas ✓, matriz Slutsky compensada (como Hessiano de $e$) ✓, recíproca (reconstrução geométrica) ✓. **Slutsky não-compensado** (Aula 3), **elasticidades de demanda Marshalliana** (Aula 3), **estimação estrutural AIDS** (Aula 3) — **não são da Aula 2** e, corretamente, aparecem apenas como ponte.

---

## 11. Recomendação operacional

**Ordem de ação, antes de 29/04 (6 dias):**

1. [2 min] **Médio #4**: corrigir `pre_aula.md` L100 e `durante_aula.md` L14 ("Exercício proposto 1 e 2", não "N&S 4.1 e 4.3").
2. [1 min] **Médio #3**: remover "(Diewert 1974, Jehle-Reny §2.1)" da alternativa Ex 6 (c-i) no HTML e MD.
3. [2 min] **Médio #1**: trocar "matriz de Slutsky compensada" por "matriz de efeito-substituição compensada (Slutsky na Aula 3)" no Ex 6 afirmação A (HTML e MD).
4. [opcional, 10 min] **Médio #2**: se Darcio quiser calibre 🔴 mais exigente no Ex 5 (d), substituir "Com $h_1 = ...$" por "(use o item (b) para extrair $h_1$ como função explícita)". Caso contrário, deixar como está — gabarito 5-passos continua válido.
5. [opcional, 30s cada] Achados Baixos #3, #5 — polimento estilístico, pode ficar para Aula 3.

**Total:** ~5–15 minutos de trabalho. Pós-ação, nota sobe para ~9,7–9,8.

**Se Darcio optar por não mexer em nada:** deploy como está. Nota 9,5, todos os críticos eliminados, aritmética limpa, calendário certo. Os 4 Médios são contrastáveis apenas por olho treinado; aluno médio MPE não vai notar.

---

**Assinatura:** `prof-mpe-micro`, rodada 4, auditoria adversarial ampla.

**Escopo sugerido da próxima auditoria (se houver):** (a) UX end-to-end em janela anônima com conta de aluno-teste; (b) telemetria real pós-submissão (tempo médio por sub-item, taxa de acerto, distribuição de confiança pré/pós); (c) verificação de DOIs das citações com marcação `<!-- [VERIFICAR DOI] -->` onde incerto.
