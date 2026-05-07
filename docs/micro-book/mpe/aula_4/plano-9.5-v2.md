# Plano 8.6 → 9.5+ v2 — Bundle Aula 4 (EG trocas / Edgeworth)

**Autor:** prof-mpe-micro em modo produtor sênior + crítico calibrado
**Data:** 2026-05-07 (6 dias antes da aula presencial 13/05)
**Input:** `aula_4/auditoria-bundle-v2.md` (camada Round 2 hostil sobre v1 + plano v1).
**Antecessores:** `aula_4/auditoria-bundle.md` (v1), `aula_4/plano-9.5.md` (declarou 9.85, mediu real 8.6).
**Janela:** 6 dias úteis até 13/05 19:30. Render final do qmd: até 12/05 22:00.

---

## 1. Diagnóstico — por que o plano v1 não foi suficiente

O plano v1 declarou 9.2 → 9.85 com aplicação do Top 10 + extensões. **A v2 mediu 8.6 hoje.** A diferença de 1.25 ponto vem de quatro fontes:

1. **Pré-monitoria 2 entrou no bundle DEPOIS do plano v1** (commits 7577e6f e c14a1b1, posteriores às 23:05 de 06/05). O plano v1 contou +0.07 da pré-monitoria assumindo execução perfeita, mas a entrega real tem 4 defeitos materiais (A1, A2, A4, B4 da v2). Δreal: −0.18 vs. previsto.

2. **Cross-references não foram validadas.** Plano v1 não rodou um único `grep` para checar se a Q9 do pós-quiz aponta para o slide certo. Resultado: bundle promete "slide #29" e entrega "slide #29 = CD simétrica 2/3" enquanto o conteúdo Debreu-Scarf está no slide #17. Defeito **B2 da v2**, não pego pelo plano v1. Δ: −0.10.

3. **Pré-quiz Q9 com aritmética errada** (defeito B1 da v2) contradiz pós-quiz Q10 e Exercício 5. **Plano v1 não auditou pré-quiz contra os outros artefatos.** O ganho de +0.06 do plano v1 ação #10 ("copidesque") deveria ter pegado essa contradição lógica, mas o plano v1 escopou copidesque como "diferenças material em notação", sem checar consistência aritmética. Δ: −0.18.

4. **Plano v1 contou crédito por trabalho já feito.** Ação #1 (correção Ex2 do MD) declarou +0.20, mas o exerc-MD no estado atual já estava limpo — provavelmente patches G1+G2 da v1 foram aplicados antes do plano v1 escrever §6. Δnota declarada vs. real: −0.10 a −0.20 dependendo do baseline.

**Adicionais:** o plano v1 declarou 9.85 sem rodar a métrica de densidade pós-patches; o slide #42 ("O papel exato de LNS") está em score 11.5 (APERTADO), porque a ação #5 do plano v1 (adicionar contraexemplo numérico) **somou conteúdo sem quebrar o slide**. Δ: −0.05.

**Subtotal explicado:** −0.61 a −0.71 das 4 fontes acima → realista que esteja em 8.6 quando o plano v1 declarou 9.85.

**Lição estrutural:** plano v1 confiou demais nas próprias ações sem rodar os testes que detectariam regressão. v2 corrige.

---

## 2. Top 10 ações (ordenadas por **ganho/hora**)

Codificação: 🔴 bloqueante (B*), 🟡 alto (A*), 🟢 médio (M*), ⭐ extensão.

| # | Tipo | Arquivo:linha | Ação concreta (patch ou diff conceitual) | Tempo | Δnota | Risco regressão |
|---|---|---|---|---|---|---|
| **1** | 🔴 B1 | `platform/aula-04-pre.html:200` | Reescrever passo "2. Derivação" da Q9 do pré-quiz: trocar "$L - 2$ equações independentes, $L - 1$ incógnitas livres" por "**$L - 1$ equações independentes (Walras subtrai 1) para $L - 1$ preços livres (homogeneidade subtrai 1)**". Em $L=2$: "**1 equação independente** (zerar mercado 1 ⇒ Walras zera mercado 2) **para 1 incógnita livre** ($p_1/p_2$)". | 5 min | +0.18 | Baixo (texto puro) |
| **2** | 🔴 B2 | `platform/aula-04-pos.html:207, 208` | Trocar **2 ocorrências** de `slide #29` por `slide "Núcleo (2/2) — leitura visual"` (referência por título, robusta a re-render). Linha 207: "Como anunciado no slide 'Núcleo (2/2)'". Linha 208: "anunciada no slide 'Núcleo (2/2)' da aula". | 2 min | +0.10 | Zero |
| **3** | 🔴 B3 | `aula_4/pre_aula.md:300-303` | Substituir o construto degenerado ($\omega^A=(2,2), \omega^B=(0,0), p_1=0$) pelo construto canônico do slide #42: "**Considere $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$**, $u^B = x_1^{1/2}x_2^{1/2}$. $\omega^A = (2, 0)$, $\omega^B = (0, 2)$. Em $p^* = (1, 1)$: $A$ saciado em bem 1 acima de 1 (utilidade marginal nula); EC com $x^A = (2, 0)$, $x^B = (0, 2)$ existe. **Mas $\tilde x = ((1,1),(1,1))$ é viável: $A$ inalterado por saciedade, $B$ melhora estritamente — Pareto-superior. Sem LNS, mercado deixa dinheiro na mesa.**" | 8 min | +0.10 | Baixo (apenas texto) |
| **4** | 🔴 B4 | `platform/portal.html` (novo bloco) | Adicionar bloco `PRE_MONITORIAS = [...]` no portal análogo a `AULAS`, com `n:2, available:false (até 16/05 12:00), title:'Pré-monitoria 2 — extensões da Aula 4', cobertura:'Aula 4 (EG trocas)', monitoria:'sáb 23/05 10:00'`. Render como card abaixo de AULAS quando `MPE_CALENDARIO.preMonitoriaWindow(2)` retorna true. Botão "Abrir pré-monitoria 2" → `pre-monitoria-02.html`. | 35 min | +0.07 | Médio (componente novo do portal — testar cards com sort do dashboard) |
| **5** | 🟡 A1 | `aula_4/pre_monitoria.md:50-58` + `platform/pre-monitoria-02.html:99-106` | Reescrever análise Leontief simétrico: trocar "alocação única, preço relativo indeterminado" por "**Cada $p_1/p_2$ gera uma alocação diferente. Em $p_1 = p_2 = 1$: $x^A = x^B = (3,3)$. Em $p_1 = 2, p_2 = 1$: $m^A = 10, x^A = (10/3, 10/3)$; $m^B = 8, x^B = (8/3, 8/3)$. Soma $10/3 + 8/3 = 6$ ✓. **Continuum de EC parametrizado por $p_1/p_2$.** Em Leontief simétrico com dotação simétrica nos dois bens, não há unicidade — existe família a 1 parâmetro de equilíbrios.**" | 10 min | +0.08 | Baixo (texto + 1 cálculo) |
| **6** | 🟡 (densidade #42) | `aula_4/slides/aula-04.qmd:674-686` | **Quebrar slide #42 "O papel exato de LNS" em (1/2) + (2/2):** (1/2) = "Onde LNS aparece (passo 2)" + bridge; (2/2) = "Contraexemplo numérico de LNS" com a alocação $\tilde x = ((1,1),(1,1))$ destacada como display + eq-punch. Resolve APERTADO (score 11.5 → ~7 + ~6). | 8 min + re-render | +0.05 | Médio (re-render qmd; verificar numeração subsequente em B2 não muda) |
| **7** | 🟡 A2 | `aula_4/pre_monitoria.md:170` | Trocar `(TODO Alberto refinar — exemplo numérico fechado)` por `— exemplo numérico fechado é o gancho para sábado` (limpa SSOT). Já está limpo no HTML — só falta MD. | 1 min | +0.03 | Zero |
| **8** | 🟡 A4 | `platform/pre-monitoria-02.html:246` (após "Mercado fecha.") | Adicionar 1 frase: "**Atenção: este construto fecha mercado e satisfaz 1º TBE — porque o conjunto preferido de $A$ é vazio, ninguém tem 'algo melhor' a propor. O ponto pedagógico é que a alavanca da prova (passo 2) perde força mesmo quando o teorema acaba valendo. Construir contraexemplo onde o EC encontrado falha 1º TBE exige calibração mais fina — exatamente o que o Alberto fecha no sábado.**" | 5 min | +0.05 | Zero |
| **9** | 🟢 M2 (intra-bundle) | `aula_4/slides/aula-04.qmd:243` (caption do iframe) | Adicionar 1 frase no caption: "Volte aqui depois do Bloco 2 (CD assimétrica) — o ponto $p_1 = 8/7$ no slider corresponde ao cálculo simbólico que vamos fazer." | 2 min + re-render | +0.02 | Baixo |
| **10** | 🟢 M5 + copidesque cruzado | Todos os 5 artefatos | Pass de copidesque rigoroso, focado em **paridade de fraseamento Debreu-Scarf**: padronizar para "**Debreu-Scarf (1963), com intuição original em Edgeworth (1881)**" em slide #17, Q9 pos, Q7 pré, pre-monitoria S3. Cada um dos 5 artefatos hoje frasea diferente. | 15 min | +0.04 | Baixo |
| **Σ Top 10** | | | | **~1h30 + re-render** | **+0.62** | |

**Cenário "Top 10 aplicado":** 8.6 + 0.62 = **9.22**.

---

## 3. Cinco extensões opcionais (good-to-great, 9.22 → 9.65+)

| # | Arquivo:linha | Ação | Tempo | Δnota |
|---|---|---|---|---|
| **E1** | `aula_4/durante_aula.md:248` (Notas para o professor) | Adicionar: "**Sobre o iframe Edgeworth (slide #12):** se Bloco 1 fluir, voltar ao iframe no Bloco 2.f como visualização interativa do EC $p_1=8/7$ — slider para $p_1 \in [0{,}3; 3{,}0]$, mostrar como tangência em $p_1=8/7$ é o único ponto onde demanda de A e B coincidem na contract curve. Não substitui o desenho ao vivo." | 3 min | +0.04 |
| **E2** | `aula_4/slides/aula-04.qmd` (novo slide entre #36 e #37) | Adicionar slide "LNS vs. monotonicidade" com **exemplo concreto**: "**$u(x_1, x_2) = x_1$**: não é monotônica estrita em bem 2 (utilidade não cresce em $x_2$), mas é LNS (utilidade aumenta em $x_1$ — vizinhança preferida sempre existe). LNS é **mais geral** mas suficiente para que UMP exausta orçamento." Resolve risco residual #3 da v2. | 8 min + re-render | +0.04 |
| **E3** | `aula_4/durante_aula.md:200-203` (Box Brasil RenovaBio) | Adicionar nota: "**Honestidade da abstração:** RenovaBio não é Edgeworth puro — produção de CBIOs é endógena (responde a preço). Tratamos como troca pura para a Aula 4; **Aula 5 retoma com produção endógena**. Sinalizar isso ao vivo se aluno perguntar." | 3 min | +0.03 |
| **E4** | `platform/aula-04.html:415-444` (Q3 do checkpoint final) | Reescrever Q3 do checkpoint para usar `MicroQuizGraded` em vez de `MicroQuiz` legado, padronizando engine com pré/pós/exerc. Schema: `data-page="aula-04"`, `data-phase="embedded"`, `data-difficulty=null`. | 12 min | +0.02 |
| **E5** | `aula_4/slides/aula-04.qmd:646-654` (slide #40, "1º TBE 3/4 LNS aqui") | Adicionar **mini-diagrama em ASCII** ou referência cruzada visual ao slide quebrado #42 (1/2)+(2/2): "Veja contraexemplo nos slides à frente" — explicita a sequência pedagógica. | 4 min + re-render | +0.02 |
| **Σ extensões** | | | **~30 min + re-render** | **+0.15** |

**Cenário "Top 10 + Extensões":** 8.6 + 0.62 + 0.15 = **9.37**. Distância para 9.5+ vem de mais polimento composto + smoke test final.

**Para 9.65+ honesto:** Top 10 + Extensões + 30 min de smoke-test em conta de aluno em janela anônima (gating das 9 seções, gabarito-locked funcionando, pré-monitoria 2 acessível, MathJax renderiza Q9 do pré-quiz com aritmética nova) → ~9.65.

**Para 9.80+:** todas as ações + auditoria adicional dos exercícios 3, 4, 6 do avaliativo linha-a-linha (a v2 só auditou 1, 2, 5 com profundidade). Risco residual estimado: 0–1 erros materiais escondidos. +0.15 se nada aparecer.

---

## 4. Critérios de aceitação — checklist booleano

Plano v2 está executado quando **todos** os itens abaixo são `[x]`:

### 4.1. Bloqueantes (4 itens)

- [ ] **B1.** Pré-quiz Q9 — gabarito declara "$L-1$ equações vs. $L-1$ incógnitas"; em $L=2$ "1 vs. 1". `grep -E "L *- *2 equações" platform/aula-04-pre.html` retorna 0 linhas.
- [ ] **B2.** Pós-quiz Q9 — `grep "slide #29" platform/aula-04-pos.html` retorna 0 linhas; em vez disso há `slide "Núcleo (2/2)"` em 2 lugares.
- [ ] **B3.** `pre_aula.md` — contraexemplo de LNS usa $\omega^A=(2,0), \omega^B=(0,2), u^B=x_1^{1/2}x_2^{1/2}$ e exibe Pareto-superior $\tilde x = ((1,1),(1,1))$. `grep "(2, 2), (0, 0)" pre_aula.md` retorna 0.
- [ ] **B4.** Portal tem entrada/card visível para pré-monitoria 2; clicar leva a `pre-monitoria-02.html`. Smoke test em conta de aluno em janela anônima após 16/05 12:00 (ou simulação com data forçada).

### 4.2. Altos (4 itens)

- [ ] **A1.** Pre-monitoria S2 (b) Leontief simétrico — texto explica "continuum de EC" com cálculo concreto em $p_1=2, p_2=1$ → $x^A=(10/3, 10/3)$, $x^B=(8/3, 8/3)$. Tanto MD quanto HTML.
- [ ] **A2.** `pre_monitoria.md` — `grep "TODO" pre_monitoria.md` retorna 0 linhas.
- [ ] **A4.** Pré-monitoria S4 (contraexemplo bliss) — caixa de aviso reconhece explicitamente que o construto não exibe falha do 1º TBE; ponto pedagógico "alavanca perde força" articulado.
- [ ] **#6 (densidade #42).** Slide "O papel exato de LNS" quebrado em (1/2) + (2/2). Score de cada slide ≤ 8 pela métrica composta. Render confirmado.

### 4.3. Médios + extensões (5 itens)

- [ ] **#9 / M2.** Caption do slide #12 (iframe Edgeworth) tem cross-link ao Bloco 2.
- [ ] **#10 / M5.** Padronização "Debreu-Scarf (1963), com intuição original em Edgeworth (1881)" em todos os 5 lugares.
- [ ] **E1.** `durante_aula.md` tem nota sobre uso do iframe no Bloco 2.f.
- [ ] **E2.** Slide novo "LNS vs. monotonicidade" com $u(x_1, x_2) = x_1$ existe entre #36 e #37.
- [ ] **E3.** Box Brasil RenovaBio tem nota sobre "produção endógena (Aula 5)".

### 4.4. Validação final

- [ ] **Re-render `quarto render aula-04.qmd`** completa zero erros.
- [ ] **Smoke test pré-aula** em conta de aluno: 9 seções gateando, MathJax OK, micro-checkpoints com cooldown.
- [ ] **Smoke test pós-quiz**: 10 questões, gabarito 5-passos aparecem só após submit, Q9 referencia título do slide corretamente.
- [ ] **Smoke test exerc**: gate de gabarito ativo até 21/05 00:00 BRT; banner "respostas registradas" aparece.
- [ ] **Smoke test pre-monitoria 2**: 7 seções gateando, sem nota, micro-checkpoints funcionando, entry no portal disponível em 16/05 (ou simulado).
- [ ] **Grep sanity:** `grep -rn "Aulmann\|VERIFICAR DOI\|TODO\|FIXME\|Edgeworth-Debreu\|slide #29\|L *- *2 equações\|Hmm — recalcular\|NOTA EDITORIAL" aula_4/ platform/aula-04*.html platform/pre-monitoria-02.html` retorna **0 linhas**.

**Plano executado** ⇔ todos os 18 checkboxes marcados. Recomenda-se executar em **3 sessões**: (sessão A, ~1h30): B1, B2, B3, A2 + grep sanity. (sessão B, ~1h30): B4, A1, A4, #6 + re-render. (sessão C, ~45min): #9, #10, E1, E2, E3 + smoke tests. Total ~4h.

---

## 5. O que NÃO mudaria — sinal de maturidade

Estas decisões do bundle Aula 4 são **boas o suficiente** para não tocar antes da aula. Mexer nelas é destruir valor:

1. **Setup canônico unificado em $p_1^* = 8/7$.** Decisão excelente do plano v1 (G1). Aluno vê o mesmo cenário em 5 lugares (slide, pre_aula, pre-monitoria, exerc, pos-quiz) com aritmética idêntica. **Não tocar.** Mudar pra outro número agora destrói coerência cruzada.

2. **Cálculo CD + Leontief no Bloco 2.f.** Adicionado pelo plano v1 (G4) para preparar Q4 do pós-quiz e Exerc 3. Limpo, correto ($p_1^* = 1$, alocação $(5,5)/(5,5)$). **Não tocar.**

3. **Box Brasil RenovaBio.** Substituiu o "futebol" da v1 (G5). É genuinamente Edgeworth bipartido (com a ressalva de produção endógena, que a E3 acima sinaliza). Mudar de novo gasta crédito de aplicação que Aula 7/9 vai precisar. **Manter.**

4. **Prova do 1º TBE em 4 slides (#38–#41).** Linha-a-linha, contradição limpa, LNS no lugar certo. Padrão estrutural a seguir em aulas futuras. **Não simplificar.**

5. **Exercício 5 do avaliativo (dimensionalidade).** A v1 corrigiu de "contraexemplo de LNS" (meta) para "Walras + homogeneidade + dimensionalidade" (genuinamente 🔴, mecânico). Plano v1 G3 estava certo. **Não voltar.**

6. **`durante_aula.md` com armadilhas explícitas e ganchos para Alberto.** É o melhor `durante_aula` do bundle até agora. **Padrão a seguir** em aulas futuras, não a refazer.

7. **DOI Ellerman & Buchner = `10.1093/reep/rem003`.** Verificado, correto. **Não duvidar.**

8. **Calendário em `js/calendario.js`.** Aula 4 = qua 13/05 19:30, fechamento qua 20/05 18:00, gabarito qui 21/05 00:00 BRT. Pré-mon 2 abre sáb 16/05 12:00, fecha sex 22/05 22:00, monitoria sáb 23/05 10:00. Tudo coerente. **Não mexer.**

9. **Q9 🔴🔴 no pós-quiz como questão-teto.** Calibre J-R §5.3. Auditoria v1 e produtor decidiram manter; v2 concorda — basta corrigir B2 (referência ao slide). **Não trocar.**

10. **Iframe Edgeworth.** Funciona, slider responde, EC marcado em $p_1=8/7$. Pode ganhar caption mais rico (#9), mas a base não precisa ser refeita. **Não reescrever.**

---

## 6. Cronograma operacional

**Janela:** 06–11/05 patches; 12/05 render + smoke test; 13/05 manhã sanity check; 13/05 19:30 aula.

**Dia 1 (07/05 — hoje):** Sessão A (1h30) — B1, B2, B3, A2 + grep sanity. Sessão B (1h30) — A1, A4 + iniciar B4.

**Dia 2 (08/05):** B4 finalização (pode requerer iteração com Darcio sobre layout do card). Render qmd com #6 (slide #42 quebrado). E1, E2, E3.

**Dia 3 (09/05):** Smoke tests completos em janela anônima. #9 e #10 (copidesque Debreu-Scarf). Auditoria adicional dos Exerc 3, 4, 6.

**Dia 4 (10/05):** Buffer / fix de regressões / iteração com Darcio sobre B4 do portal.

**Dia 5 (11/05):** Validation freeze — todos os checkboxes verdes.

**Dia 6 (12/05):** Render final qmd, push, deploy. Smoke test final em ambiente de produção.

**Dia 7 (13/05):** Sanity check matinal. Aula às 19:30.

**Pontos de paralelização:**
- B1 (texto puro), B2 (texto puro), B3 (texto puro), A2 (texto puro) podem rodar em paralelo — mesmo agente, mas sem dependência cruzada.
- B4 (portal) é serial e tem dependência de decisão do Darcio sobre formato do card.
- #6 (re-render qmd) precisa ser depois de eventuais E2 e E5 para evitar render duplo.

**Pontos de atenção (regressão):**
- Quebra do slide #42 (#6) **adiciona 1 slide**, então a numeração subsequente desloca. **B2 já usa referência por título, não por número** — defesa antecipada.
- E2 (novo slide entre #36 e #37) também adiciona slide. Mesmo cuidado.
- Re-render do qmd pode revelar overflow em slides que estavam no limite — vigiar slide #33 (CD+Leontief 1/2, score 9.8).

---

## 7. Peer-review honesto deste plano (autocrítica)

**Onde estou menos confiante:**

1. **Δnota de B1 (+0.18).** Estou contando alto porque é defeito material em quiz para nota e contradiz pós-quiz. Em auditoria adversarial real, contradição lógica entre artefatos do mesmo bundle vale +0.15 a +0.25. Pego mediana.

2. **Δnota de B4 (+0.07).** Plano v1 também declarou +0.07 da pré-monitoria assumindo execução. Aqui o ganho não é da pré-monitoria existir (já existe), mas de **estar visível ao aluno**. Se ninguém abrir, ganho real é zero. Estimo +0.07 assumindo 50% de adesão de uma turma de 50; +0.04 se adesão for 25%.

3. **Cenário 9.5+ honesto requer smoke tests completos.** Estou contando os smoke tests no checklist mas não como ação separada com Δnota. Razão: não dá pra "ganhar nota" com smoke test, só pra evitar perder. Smoke test é **defesa, não ataque** — captura regressão antes do aluno.

4. **Não auditei Exerc 3, 4, 6 linha-a-linha.** v2 fez sample em Exerc 1, 2, 5. Risco residual: 0–1 erros materiais escondidos nos outros. Δ desconhecido: pode descer 9.22 → 9.05 se aparecer um erro grave.

5. **Não testei o iframe Edgeworth no navegador.** Verifiquei o código (slider, equilíbrio em $p_1=8/7$). Mas não rodei. Pode quebrar em algum browser específico (mobile, Safari, etc.). Ação implícita: smoke test inclui abrir o iframe.

**Onde estou confiante:**

- B1, B2, B3 são erros materiais detectados por inspeção direta — patches resolvem.
- B4 é decisão de produto, não de matemática — tempo bem estimado (35 min com componente novo de portal).
- A1 é erro conceitual claro — patch concreto.
- O cronograma de 4h em 3 sessões é defensável (cada ação tem tempo individual ≤30 min, e elas não bloqueiam umas as outras).

**Um cético perguntaria:** "Você está propondo +0.62 ponto em ~1h30. Plano v1 propôs +0.65 em ~3h e o real foi +1.0 (8.6→9.6 com aplicação atual + esses patches). Seu rendimento por hora é absurdamente alto; tem certeza?"

**Resposta honesta:** o plano v1 tinha mais ações de quebra estrutural (G1 unificar EC, G5 substituir Box Brasil) que custam tempo de pensar e validar. v2 só tem ações **localizadas** (corrigir 1 gabarito, trocar 1 referência, reescrever 1 contraexemplo, criar 1 entry de portal). Tempo por ação é genuinamente menor. Mas se eu errar uma estimativa, fica em +0.50 / 2h, ainda muito bom.

---

## 8. Fim — recomendação final

**Aplicar Top 10 (4h–4h30) + 3 das 5 extensões (~20 min) chega em ~9.5 honestos.** Acima disso o ganho marginal é menor que o erro de medição. Não vale a pena tentar 9.85 com mais polimento — vale a pena fazer **smoke tests sólidos** e parar.

**Patches obrigatórios** (B1+B2+B3+B4) sobem a 9.05 honestos, e isso é o **piso** para publicação. Sem eles, o bundle vai pra sala com defeitos materiais que minam a confiança do aluno.

**Decisões pendentes do Darcio:**
- **B4 — formato do card pré-monitoria no portal:** card separado abaixo de AULAS? Card extra dentro do card da Aula 4? Auxiliar pode propor 2 layouts; Darcio escolhe.
- **#6 — quebrar slide #42:** OK para o agente fazer ou Darcio prefere ver primeiro?

---

*Plano v2 fechado em 2026-05-07. Critérios de aceitação são objetivamente verificáveis (grep + smoke test). Próximo gate: round 3 de auditoria com aluno em conta anônima testando 4 fluxos completos.*
