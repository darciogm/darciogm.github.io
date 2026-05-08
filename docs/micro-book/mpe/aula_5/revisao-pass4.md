# Revisão pass-4 — Aula 5 (Arrow-Debreu I) sob lente Jehle-Reny §5.5

**Data:** 2026-05-07 (tarde) · **Modo:** Referee 2 implacável, segunda passada após troca do piso para J-R §5.5 · **Escopo:** todos os 9 artefatos.

> **Resumo executivo.** Após pass-3 ter atingido 9.5/10, esta pass-4 buscou (a) sobreviventes da migração ZaE/N&S → J-R como piso, (b) bugs análogos aos de Ex2(d) / Ex3 que poderiam ter passado pela 2ª revisão. **Sete fixes aplicados**, todos de baixo a médio risco operacional. O bug mais grave foi **interno ao próprio quiz pré-aula**: o gabarito da Q8 (5-passos, item 2) afirmava "viabilidade é igualdade agregada" — a mesma frase que F9-F11 da pass-3 corrigiram em qmd, html principal e durante_aula, mas que sobreviveu cirurgicamente em quiz-pré. Pior: a frase contradiz **diretamente** a Q4 do mesmo quiz, que penaliza o aluno por marcar "soma agregada" como viabilidade. Pós-pass-4: score global **9.6/10**.

---

## 1. Sobreviventes detectados e corrigidos

| # | Arquivo | Linha | Tipo | Antes → Depois | Justificativa |
|---|---|---|---|---|---|
| F1 | `platform/aula-05-pre.html` | 181 (Q8 gabarito, passo 2) | **Bug crítico — incoerência interna** | "viabilidade é igualdade agregada" → "viabilidade é igualdade vetorial **ponto a ponto** (em $\mathbb{R}^L$ é bem-a-bem; em $\mathbb{R}^{LS}$ é bem-a-bem **e** estado-a-estado)" | A própria Q4 do quiz pré (gabarito) já dizia "ponto a ponto" e penalizava a alternativa "soma agregada" como erro. A Q8, falando de **outra** hipótese (LNS), invocou a mesma frase no passo 2 (Derivação) e usou "agregada" — sobrevivente único da pass-3. Aluno que abre os dois gabaritos lado a lado vê contradição. |
| F2 | `aula_5/pre_aula.md` | 45-46 (tabela) | Sobrevivente de migração | Linha 45: "Leitura ZaE — Cap. 14 (parte que cobre incerteza/bens contingentes)" → "Leitura J-R 3e — §5.5 (Markets with Uncertainty) — **piso obrigatório**". Linha 46: "Leitura N&S 12e — §7.1, §7.2 + §13.6" → "Leitura N&S 12e — §7.5 + §13.6 — **complemento panorâmico**". Tempos atualizados (25 min na nova S1, 20 min na S2). | A tabela sumária da estrutura de 9 seções ainda apontava ZaE Cap. 14 como S1, mesmo que a Seção 1 real (linha 69) já tivesse sido reescrita para J-R §5.5 no commit `fb98c74`. Inconsistência de SSOT. |
| F3 | `aula_5/pre_aula.md` | 50 (tabela) | Sobrevivente de calibração | "Exercícios de papel (N&S §7.* + §13.6.* / equivalentes inéditos)" → "Exercícios de papel (equivalentes a J-R §5.5 / N&S §7.5; enunciados auto-contidos)" | Calibre referenciava N&S como piso para os exercícios EP-1/2/3 — mas o piso pedagógico passou a ser J-R §5.5. Atualizado para refletir hierarquia atual. |
| F4 | `aula_5/pre_aula.md` | 378 (Seção 6 callout Referee 2) | Sobrevivente de calibração | "Os exercícios canônicos do N&S 12e §7 e §13 cobrem o caso seguro/incerteza... **[verificar §]**" → "Os enunciados abaixo são **auto-contidos** e calibrados ao **piso J-R 3e §5.5 (Markets with Uncertainty)**, com paridade temática aos exercícios 5.34 e 5.36 do J-R 3e..." | Calibração do bloco "Exercícios de papel" ainda enquadrava como derivado do N&S; J-R §5.5 é agora o ancoradouro. Marcador `[verificar §]` resolvido por explicitação dos exercícios paritários (5.34, 5.36). |
| F5 | `platform/aula-05-pos.html` | 185 (Q8, passo 2 derivação) | Bug de notação MathJax | `\binom{1}{1}{1}` (3 args — sintaxe inválida; `\binom` aceita 2) → `(1,1,1)^\top` em prosa explícita | `\binom{a}{b}{c}` em MathJax 3 produz parsing inconsistente (alguns parsers descartam o 3º arg silenciosamente; outros geram erro). Para vetor coluna em $\mathbb{R}^3$, `(1,1,1)^\top` é canônico em texto matemático e renderiza universalmente. |
| F6 | `aula_5/pre_monitoria.md` | 176 (Seção 2 — citação Black-Scholes) | Marcador stale | "*[verificar DOI Black-Scholes 1973 JoP / Merton 1973 Bell J. Econ.]*" → "DOI canônico: [10.1086/260062](https://doi.org/10.1086/260062) (J. Political Economy 81(3): 637–654; ver apêndice)." | DOI Black-Scholes já está validado e listado no apêndice da pré-monitoria (linha 310). Marcador era resíduo da pass-2 e já não tinha função operacional. Merton (1973) era citação extra que não tem necessidade no escopo desta seção (Black-Scholes basta como referência canônica de aplicação SDF). |
| F7 | `aula_5/pre_aula.md` | 165 (callout pedagógico EU não-tópico) e 347 (Black-Scholes-Merton citação) | Notação inconsistente entre artefatos | Linha 165: "Aula 8 do Jehle-Reny / Cap. 6 do MWG" → "J-R 3e §2.4 / N&S 12e Cap. 7 / MWG §6". Linha 347: "Black-Scholes-Merton vive aqui *[verificar §]*" → "Black-Scholes (1973, J. Political Economy 81(3): 637–654, [DOI 10.1086/260062](https://doi.org/10.1086/260062)) vive aqui." | "Aula 8 do Jehle-Reny" não existe (J-R 3e tem 9 capítulos, não aulas; EU está em §2.4). O `aula-05.html` linha 149 já tinha "§2 J-R" correto. Coerência inter-artefato restaurada. Linha 347 tinha `[verificar §]` sobrevivente que agora resolve via DOI explícito (que já existia no apêndice da pré-monitoria). |

**Total: 7 fixes aplicados.** Todos verificáveis em diff. Nenhum altera resposta correta de questão; todos eliminam ou inconsistência interna ou notação inválida.

---

## 2. Re-auditoria dos 4 sub-itens críticos (álgebra refeita do zero)

| Sub-item | Setup | Conta refeita ao zero | Esperado pelo gabarito | Status |
|---|---|---|---|---|
| **Ex 1(d)** | $\pi=(0{,}4;0{,}6)$, $v_A=\ln$, $v_B=c$, $\omega^A=(40,100)$, $\omega^B=(60,60)$, $p_2=1$. | $B$ neutro → $p_1/p_2=\pi_1/\pi_2=2/3$. $A$ ln → $x^A_1=x^A_2=\bar c^A$. Renda $m^A=(2/3)(40)+1(100)=80/3+300/3=380/3$. Orçamento $\bar c^A(p_1+p_2)=380/3$ → $\bar c^A\cdot 5/3=380/3$ → $\bar c^A=380/5=76$. | $\bar c^A = 76$ | ✅ |
| **Ex 2(d)** | $v_A=v_B=\ln$, $\pi^A=(0{,}3;0{,}7)$, $\pi^B=(0{,}5;0{,}5)$, $\omega^A=\omega^B=(50,50)$. | Demanda log: $x^i_s=\pi^i_s m^i/p_s$. Viabilidade $s=1$: $(\pi^A_1 m^A+\pi^B_1 m^B)/p_1=100$. Sob $\omega$ idêntica, $m^A=m^B$, eles cancelam: $p_1/p_2=(\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2)=0{,}8/1{,}2=2/3$. Verificação: em $p=(2/3,1)$, $m=250/3$; $x^A_1=0{,}3\cdot 125=37{,}5$; $x^A_2=0{,}7\cdot 250/3\approx 58{,}33$; $x^B_1=62{,}5$; $x^B_2\approx 41{,}67$. Soma $s=1$: 100 ✓; Soma $s=2$: 100 ✓. | $p^*_1/p^*_2 = 2/3$ | ✅ |
| **Ex 3 (item d, π=0,3/0,7)** | $v_A=v_B=\ln$, $\pi=(0{,}3;0{,}7)$, $\omega^A=(60,100)$, $\omega^B=(100,60)$, $\bar\omega=(160,160)$ livre de risco. | CPO comum dá $r=x^i_2/x^i_1$ comum a $A,B$. Viabilidade $s=2$: $r(x^A_1+x^B_1)=160$. Viabilidade $s=1$: $x^A_1+x^B_1=160$. Logo $r=1$ (cada agente livre de risco). Da CPO + $r=1$: $p_1/p_2=\pi_1/\pi_2=3/7$. Renda $m^A=60p_1+100p_2$. Em $p_2=1, p_1=3/7$: $\bar c^A(p_1+p_2)=m^A$ → $\bar c^A=60\pi_1+100\pi_2=18+70=88$. Análogo $\bar c^B=100\pi_1+60\pi_2=30+42=72$. Soma $\bar c^A+\bar c^B=160=\bar\omega_s$ ✓. | $\bar c^A=88$, $\bar c^B=72$ | ✅ |
| **Ex 5** | $\pi=(0{,}3;0{,}5;0{,}2)$, $v_A=\ln$, $v_B=c$, $\omega^A=(10,30,20)$, $\omega^B=(20,10,30)$, $\bar\omega=(30,40,50)$, $p_3=1$. | $B$ neutro → $p_s/p_3=\pi_s/\pi_3$ → $p^*=(1{,}5;\, 2{,}5;\, 1)$. $A$ ln → $x^A_s=\bar c^A$ ∀s. Renda $m^A=1{,}5\cdot 10+2{,}5\cdot 30+1\cdot 20=15+75+20=110$. Orçamento $\bar c^A\cdot(1{,}5+2{,}5+1)=110$ → $\bar c^A\cdot 5=110$ → $\bar c^A=22$. $x^B=\bar\omega-\bar c^A\cdot\mathbf{1}=(8,18,28)$, todos $\ge 0$ ✓. | $\bar c^A=22$, $x^B=(8,18,28)$, $p^*=(1{,}5; 2{,}5; 1)$ | ✅ |

**Bonus — Q9 do pós (Wilson 1968 CARA, citado no briefing como referência):** $v(c)=-e^{-\gamma c}/\gamma$ → $v'(c)=e^{-\gamma c}$. CPO: $\ln(p_s/p_{s'})=\ln(\pi_s/\pi_{s'})-\gamma(x^i_s-x^i_{s'})$. RHS depende só de $s,s',p,\pi,\gamma$ — não de $i$. Logo $x^i_s-x^j_s$ é constante em $s$ (mesmo "deslocamento" entre agentes para todos os estados). Combinando com viabilidade $\sum_i x^i_s=\bar\omega_s$, tem-se $x^i_s=\bar\omega_s/I+k^i$ com $\sum_i k^i=0$. ✅ Coerente com gabarito Q9.

**Status global da álgebra:** os 4 sub-itens críticos + Wilson 1968 estão **todos corretos**. Nenhum bug do tipo Ex3-v1 ou Ex2(d)-v2 sobreviveu. A pass-3 fechou bem essa frente.

---

## 3. Micro-checkpoints da pré-aula (auditoria item-a-item)

| MC | Localização | Resposta | Verificação | Status |
|---|---|---|---|---|
| s3q1 | `aula-05.html` linha 156 | (c) $LS=6$ | $L=2,S=3$ → $LS=2\cdot 3=6$ | ✅ |
| s3q2 | `aula-05.html` linha 165 | (c) $9{,}1$ | EU $=0{,}3\sqrt{49}+0{,}7\sqrt{100}=0{,}3\cdot 7+0{,}7\cdot 10=2{,}1+7=9{,}1$ | ✅ |
| s4q1 | `aula-05.html` linha 258 | (c) viabilidade estado-a-estado para cada $s$ | Definicional. Distrator (b) "≤" elimina alocação interior; (d) é normativa. | ✅ |
| s4q2 | `aula-05.html` linha 267 | (b) $p^*_1/p^*_2=x^{A*}_2/x^{A*}_1$ | $u=0{,}5\ln x_1+0{,}5\ln x_2$ → CPO: $(0{,}5/x_1)/(0{,}5/x_2)=p_1/p_2$ → $x_2/x_1=p_1/p_2$ ✓ (atenção: a forma "$(0{,}5/x_1)/(0{,}5/x_2)=x_2/x_1$" simplifica corretamente). | ✅ |
| s5q1 | `aula-05.html` linha 373 | (c) totalmente segurado | A avesso + B neutro → $p_1/p_2=\pi_1/\pi_2$ + CPO ln cancela $\pi$ → $x^A_1=x^A_2$. | ✅ |
| s5q2 | `aula-05.html` linha 382 | (b) neutralidade B + ótimo interior + concorrência | Resultado canônico. | ✅ |
| s5q3 (HTML) | `aula-05.html` linha 391 | (b) UMP+LNS+viabilidade vetorial ponto a ponto | Frase exatamente conforme F9-F11 (pass-3). | ✅ |
| MC7 (só MD) | `pre_aula.md` linha 366 | (a) ambos $(80,80)$ | Agregado livre de risco $(160,160)$ + Bernoullis idênticas → $r=x^i_2/x^i_1=1$ (cada agente livre de risco) → $\pi=(1/2,1/2)$ + $r=1$ → $p_1/p_2=1$ → $\bar c^A=160/2=80$ por simetria. | ✅ |
| Q1 checkpoint final | linha 414 | (b) $LS=12$ | $L=3,S=4$ → 12. | ✅ |
| Q2 checkpoint final | linha 422 | (c) $\sum_i x^i_s=\sum_i\omega^i_s$ ∀s, total 3 equações | Definicional. | ✅ |
| Q3 checkpoint final | linha 428 | (b) Sob LNS, todo EC AD é Pareto-eficiente; prova reaproveita Aula 4 | Enunciado. | ✅ |

**Tudo coerente.** Nenhum micro-checkpoint precisou fix algébrico em pass-4.

---

## 4. Achados pedagógicos não-fixados (requerem aprovação)

| # | Arquivo | Tipo | Problema | Sugestão |
|---|---|---|---|---|
| A1 | `aula_5/pre_aula.md` linha 86 | Operacional | `*[verificar arquivo no bucket]*` na referência ao PDF `jehle-reny-3e-cap5.pdf` ainda ativo. Aluno que clicar no botão "Abrir J-R Cap. 5 (PDF)" antes de Darcio subir o arquivo no bucket Supabase verá erro. | Confirmar com Darcio que o PDF está no bucket. Se sim, remover marcador. Se não, subir o PDF antes de 21/05 (abertura) e remover marcador. |
| A2 | `aula_5/pre_monitoria.md` MC2 (linha 178-185) | Pedagogicamente ambíguo | Alternativa correta diz "Iguais a $\pi_s\,(v)'(x^*_s) = \pi_s \cdot \frac{1}{2\sqrt{x^*_s}}$" e prossegue listando "$\pi_1\,(0{,}5/2)+\pi_2\,(0{,}5/3)+\pi_3\,(0{,}5/4)$, normalize". A última expressão é uma **soma** dos valores — soma essa é o preço de "ativo livre de risco que paga 1 em todos os estados", não os preços Arrow individuais. Aluno meticuloso pode ficar confuso sobre se o gabarito quer cada $p^*_s$ ou a soma. | Clarificar enunciado da alternativa: "Cada preço Arrow $p^*_s = \pi_s\,(v)'(x^*_s)$, dando o vetor $(1/16; 1/12; 1/32)$ a menos de normalização global." Manter resposta correta = mesma fórmula. |
| A3 | `aula_5/durante_aula.md` linha 437 | Imprecisão | Cita "*[N&S §13.6 ou capítulo dedicado, J-R §5.2]*" para existência de equilíbrio AD (a ser detalhada na Aula 6). N&S §13.6 trata de EG com incerteza, **não** existência. J-R §5.2 trata de existência em economia walrasiana sem incerteza (correto). | Atualizar para "[J-R §5.2 (existência walrasiana) + Debreu (1959) Cap. 5 (existência AD com incerteza)]". É referência para Aula 6, baixa urgência — pode esperar revisão da Aula 6. |
| A4 | `aula_5/pre_aula.md` linha 75 | Cosmética | Texto da Seção 1 ainda diz: "ZaE Cap. 14 (livro do Prof. Darcio) cobre EG canônico mas **não tem cobertura formal de incerteza/bens contingentes** — entra na Seção 1 como complemento opcional para revisão da Aula 4." Frase é coerente com decisão pedagógica, **mas** o texto sugere que ZaE entra na "Seção 1" como complemento, e a Seção 1 é exatamente J-R agora. Pode confundir aluno. | Reescrever para: "ZaE Cap. 14 não cobre incerteza, então fica fora desta pré-aula; serve como base de revisão para Aula 4 (EG canônico) se o aluno quiser." Risco baixo, decisão estética. |
| A5 | `aula_5/exercicios-avaliativos.md` apêndice (linha 415) | Documentação | Apêndice "Verificação cruzada com pré-aula" lista "Equação SDF / razão de preços contingentes (Ex 2, 3, 5)". Após F1 (pass-3), Ex2(d) é resolvido via Cobb-Douglas em log direto (não SDF explicitamente). | Manter — Cobb-Douglas em log é caso particular do SDF; a citação está conceitualmente correta. **Sem ação.** |

---

## 5. Score por dimensão (pós-pass-4)

| Dimensão | Pass-3 | Pass-4 | Comentário |
|---|---|---|---|
| Rigor matemático | 9.5 | **9.6** | Re-auditados 4 sub-itens críticos + Wilson CARA. Todos batem. Bug Q8 do pré-quiz era de coerência interna, não algébrico. |
| Coerência J-R como piso | n/a | **9.5** | Após F2, F3, F4, F7: pre_aula.md totalmente alinhado a J-R como piso. Apenas linha 75 (achado A4) ainda usa fraseado redundante. |
| Sincronia md ↔ html | 9.5 | **9.6** | Tabela da pre_aula.md S1/S2 agora bate com html. Notação EU teoria (J-R §2.4) bate em md+html. F5 corrigiu MathJax inválido em pos-quiz. |
| Notação canônica | 10.0 | **10.0** | Continua zero `\succsim`, decimais com vírgula, $\text{TMS}$, $\pi_s$. F5 limpou notação `\binom{}{}{}` inválida. |
| Distratores plausíveis | 9.0 | **9.0** | Sem mudança — pass-3 já tinha eliminado distratores equivalentes (MC4/MC7) e ambiguidades (Q9 do pos). |
| Gabaritos 5-passos | 9.5 | **9.7** | F1 elimina contradição interna entre Q4 e Q8 do quiz pré (era pegadinha não-intencional). F4 e F7 atualizam citações. |
| **Score global** | **9.5** | **9.6** | Pequena subida; pass-4 fechou tarefa de coerência cruzada após troca de piso. |

---

## 6. Top 5 riscos residuais pós-pass-4

1. **PDF J-R 3e Cap. 5 no bucket Supabase (achado A1).** O botão "Abrir J-R Cap. 5 (PDF)" na Seção 1 da pré-aula chama `MPE.openMaterial('jehle-reny-3e-cap5.pdf')`. Se Darcio não subiu o arquivo até 14/05 (abertura da pré-aula), aluno verá erro. **Mitigação:** verificar bucket antes de 14/05; se faltar, subir antes de abrir.

2. **MC2 da pré-monitoria (achado A2) — ambiguidade de "soma vs. lista".** Alternativa correta tem fraseado que sugere uma soma como resposta, mas o enunciado pede "preços Arrow" no plural. Aluno meticuloso pode marcar errada por dúvida semântica. **Mitigação:** A2 propõe reescrita; não altera resposta correta. Custo zero.

3. **Q10 🔴🔴 do pós-aula (Radner-spanning) ainda testa conceito de Aula 6.** A questão é meta-questão deliberada, marcada com 🔴🔴 e nota "questão-cabeça". Pass-4 confirma que J-R 3e §5.5 cobre brevemente a equivalência AD-Radner; aluno bem-preparado em J-R encontra. **Aceitável.**

4. **Quiz pré, Q4 vs Q8 antes da pass-4 era contradição forte.** Após F1, Q8 está coerente. Mas vale notar: o tipo do bug (texto duplicado entre questões com sutil mudança de papel) é difícil de pegar sem grep manual e leitura cruzada — pass-3 fez três fixes da mesma frase em três arquivos (F9/F10/F11) **mas não checou os quiz files**. Lição: na próxima migração de redação, sempre buscar a string-alvo em **todos** os artefatos, inclusive quiz pré/pós.

5. **Frase no pre_aula.md linha 75 (achado A4) — risco cosmético.** Diz que ZaE entra na Seção 1 como complemento — mas a Seção 1 atual é J-R. Aluno pode perguntar onde está ZaE. **Mitigação:** A4 propõe reescrita; risco LOW.

---

## 7. Comparação com pass-3

| Aspecto | pass-3 | pass-4 |
|---|---|---|
| Bugs algébricos | 5 fixes (Ex2(d), Q3 pós, MC7, MC4, Q9) | 0 (todos pegos em pass-3) |
| Inconsistências de calibre/piso | n/a (mudança feita por outro agente) | 5 fixes (F2, F3, F4, F6, F7) |
| Bugs de coerência interna entre artefatos | 3 fixes (F9, F10, F11 — frase "ponto a ponto") | 1 fix (F1 — sobrevivente da mesma frase em quiz pré) |
| Bugs de notação/sintaxe | 0 | 1 fix (F5 — `\binom{1}{1}{1}` inválido em MathJax) |
| Total fixes | 11 | 7 |
| Score pré → pós | 8.6 → 9.5 | 9.5 → 9.6 |

A pass-4 é incrementalmente menor que a pass-3 (esperado), mas ainda valeu pelo bug F1 (incoerência interna que dispararia perguntas em sala) e pelos sobreviventes da migração de piso.

---

## 8. Recomendação

**Estado:** bundle Aula 5 está pronto para abertura em 21/05 (pos+exerc) e 14/05 (pré-aula+pré-quiz), **após aplicação dos 7 fixes** desta pass-4 + pendência de A1 (subir PDF J-R no bucket).

**Não-bloqueante para abertura:**
- A2 (clarificação de MC2 da pré-monitoria) — pode esperar até 23/05 (abertura da Pré-M3).
- A3 (referência de existência) — uso apenas em durante_aula.md, decorativo, baixa urgência.
- A4 (frase ZaE complemento) — cosmético, sem urgência.
- A5 (apêndice Ex2 SDF) — nenhuma ação.

**Próximos passos sugeridos:**
1. Confirmar PDF J-R 3e Cap. 5 no bucket Supabase (A1) antes de 14/05.
2. Re-render `quarto render aula_5/slides/aula-05.qmd` se desejar — qmd não foi alterado em pass-4 (já estava bem).
3. Smoke test em janela anônima com conta de aluno após abertura em 14/05.
4. Em pass-5 (improvável a partir daqui), rodar leitura cruzada explícita "frase X em todos os 9 artefatos" — heurística que pegou F1.
