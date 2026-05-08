# Pass-5 Referee 2 — Aula 5 (Arrow-Debreu I)

**Data:** 2026-05-08 · **Modo:** Referee 2 implacável, terceira passada após pass-3 (5 fixes algébricos) e pass-4 (7 fixes de coerência) · **Escopo:** todos os 9 artefatos sob lente J-R §5.5 como piso.

---

## Veredito de uma linha

**SIM-COM-FIXES.** O bundle não está pronto para abrir como está: há 1 bug de renderização MathJax que torna o gabarito da Q4 do quiz pós-aula ilegível (blocker), 1 marcador `[verificar fonte]` ativo no roteiro presencial, e ~10 ocorrências de `\mathbf{<palavra-em-PT>}` que MathJax não renderiza como pretendido. Nenhum bug algébrico novo — a álgebra crítica de pass-3 está sólida. Aplicáveis em <2h de trabalho focado.

---

## Resumo executivo

Pass-3 fechou álgebra (5 fixes), pass-4 fechou coerência cruzada pós-migração J-R (7 fixes). Esta pass-5 buscou (a) sobreviventes que pass-4 não pegou em arquivos não-tocados, (b) bugs de renderização MathJax, (c) sincronia md ↔ html após migração de piso. **Achado mais grave**: linha 109 do `aula-05-pos.html` tem MathJax quebrado (escapes mal balanceados no gabarito da Q4) — vai renderizar bagunça em produção. **Achado sistemático**: o markdown SSOT `exercicios-avaliativos.md` envolve palavras em português dentro de `\mathbf{}`, sem espelho no HTML — divergência de notação que pass-3/pass-4 declararam "sincronia 9.6". **Achado de roteiro**: linha 388 de `durante_aula.md` mantém literal "X bilhões/ano para Y mil agricultores" + marcador `[verificar fonte]` — Darcio na sala vai ler o `X` literal. Cobertura J-R §5.5: par-Jehle nas peças centrais, sub-Jehle no apêndice "Verificação cruzada" (que ainda fala SDF mas a derivação Ex2 é Cobb-Douglas direta). **Score global: 9.4/10** (queda de 0.2 vs. pass-4 9.6 — pass-4 não conferiu MathJax em prosa, e detalhes acumulam).

---

## Achados por severidade

### 🔴 Blockers (impedem deploy)

**B1.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Linha 109 reescrita usando exclusivamente `\(...\)` (delimitador canônico de `platform/*.html`); zero `$` matemático restante na página (grep confirma). [NOVO] `platform/aula-05-pos.html:109` — **MathJax quebrado no gabarito da Q4 (Extensão).** Trecho exato:

> `O argumento "\(\tilde x\) Pareto-superior + \tilde x \in span\(" + viabilidade ⇒ contradição falha porque o conjunto de \)\tilde x$ disponíveis é menor que o ideal`

Há **mistura de delimitadores** `\(` `\)` com `$` cru e escapes desbalanceados no meio da prosa. Vai renderizar como literal `\tilde x \in span\(` + zona MathJax "vazada" abrindo em "+ viabilidade…" e fechando em `\)\tilde x$`. Q4 é uma das 5 questões 🟡 — gabarito ilegível derruba calibre. **Fix:** trocar todo o bloco para texto puro:

> `O argumento «\(\tilde x\) Pareto-superior + \(\tilde x \in \text{span}\) + viabilidade ⇒ contradição» falha porque o conjunto de \(\tilde x\) disponíveis é menor que o ideal — e Pareto-superior pode não existir dentro do span.`

Status: pass-4 fez F5 corrigindo `\binom{1}{1}{1}` em Q8 mas **não auditou prosa MathJax do resto dos gabaritos**. Sobrevivente.

**B2.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Linha 388 reformulada qualitativamente — sem cifra falsa, sem placeholder, sem marcador `[verificar fonte]`; aponta Banco Central/MAPA como fonte oficial e centra o ponto pedagógico na estrutura AD. Grep confirma zero ocorrência de `[verificar`, `R$ X`, `Y mil` no arquivo. [NÃO-RESOLVIDO desde pass-3] `aula_5/durante_aula.md:388` — **marcador `[verificar fonte]` ativo no roteiro de sala**, com `X` e `Y` literais como placeholders:

> `Cite ordem de grandeza *[verificar fonte]*: cobertura Proagro ~R$ X bilhões/ano para ~Y mil agricultores.`

Darcio que rodar este roteiro em 20/05 vai ler "X bilhões e Y mil agricultores" literalmente. **Fix:** ou substituir por valores verificados (Proagro 2024–2025: cobertura na ordem de R$ 4–5 bi anuais, ~600–700 mil agricultores familiares — Banco Central / MAPA), ou suprimir a frase e manter só "subsídio cruzado, seleção adversa documentada — Aulas 7–8 vão diagnosticar". **Não foi citado em pass-3 nem pass-4** — descoberto agora.

### 🟡 Major (fix antes de quarta 18h prazo aluno)

**M1.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). 13 ocorrências de `$\mathbf{<palavra-PT>}$` no `exercicios-avaliativos.md` (linhas 129, 184, 237, 265, 322, 329, 361, 368, 383, 390) e 1 no `pre_aula.md:430` reescritas como `**<palavra>**` (markdown bold). Caso "Constrained Pareto" (linha 390 com espaço dentro de `\mathbf`) virou `**Constrained Pareto-eficiente**` (mantém termo técnico em inglês + acento PT no sufixo). Os 4 `\mathbf{}` legítimos (símbolos/equações em pre_aula:424, exerc:44, exerc:259, exerc:315) preservados. HTML correspondente já usava `<strong>` e texto puro — divergência md↔html sanada pela atualização do MD. Grep `\$\\mathbf\{[A-Za-zÀ-ÿ]+\}\$` restritivo (palavra simples) retorna zero. [NOVO — sistemático] `aula_5/exercicios-avaliativos.md` — **`\mathbf{}` envolvendo palavras em português** (não símbolos matemáticos). Ocorrências confirmadas em linhas:

| Linha | Trecho | Problema |
|---|---|---|
| 129 | `(ii) $\mathbf{Os}$ agentes têm **crenças diferentes**…` | "Os" não é símbolo |
| 237 | `(ii) $\mathbf{Determinada}$ endogenamente…` | idem |
| 322 | `(iii) $\mathbf{Suponha}$ por contradição…` | idem |
| 361 | `(ii) $\mathbf{Não}$ pode suavizar consumo…` | idem |
| 383 | `(iii) $\mathbf{Genericamente}$ diferente…` | idem |
| 390 | `(iii) $\mathbf{Constrained Pareto}$-eficiente…` | **pior**: tem espaço dentro `\mathbf{}` — só "Constrained" entra; "Pareto" sai como texto |
| 192 | `(iii) $\mathbf{x^{A*} = (88, 88)}$ e $\mathbf{x^{B*} = (72, 72)}$…` (este OK porque é símbolo) |  |

E em `aula_5/pre_aula.md:430`: `(b) $\mathbf{Sob}$ LNS, todo EC AD é Pareto-eficiente.` — idem.

**Renderização real em MathJax 3:** `\mathbf{Os}` é renderizado como **bold serif "Os"** dentro de modo math, com kerning quebrado e fonte errada ("Os" vira "O s" com pequeno gap, fonte STIX-bold). Em prosa rápida o aluno entende, mas o efeito visual é inconsistente — em todos os outros pontos do bundle, ênfase é via `**…**` (bold MD). **Fix:** trocar `$\mathbf{<palavra>}$` por `**<palavra>**` em todas as 7 ocorrências.

**Sincronia md↔html quebra aqui:** o HTML correspondente (`platform/aula-05-exerc.html`) **não usa esse padrão** — usa `<strong>` corretamente. Logo o MD diverge sistematicamente do HTML em ênfase. Pass-4 declarou "sincronia 9.6"; isso está mais perto de **8.5**.

**M2.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Find-replace `lineamente` → `linearmente` em 4 arquivos (`exercicios-avaliativos.md` 2x, `pre_monitoria.md` 1x, `aula-05-exerc.html` 1x). Grep `lineamente` retorna zero ocorrências fora deste documento de revisão. [NOVO] **`lineamente` (typo) por `linearmente`** — múltiplas ocorrências:

| Arquivo:linha | Trecho |
|---|---|
| `aula_5/exercicios-avaliativos.md:376` | `(iii) **3**. Em $|S| = 3$, são necessários 3 ativos lineamente independentes…` |
| `aula_5/exercicios-avaliativos.md:397` | `Item (c): para spannar $\mathbb{R}^3$, 3 ativos lineamente independentes.` |
| `platform/aula-05-exerc.html:454` | `Item (c): para spannar \(\mathbb{R}^3\), 3 ativos lineamente independentes.` |
| `aula_5/pre_monitoria.md:174` | `…precisamos de 2 ativos lineamente independentes…` |

`platform/aula-05-pos.html` já está correto em Q8/Q10. **Fix:** find-replace `lineamente` → `linearmente` em md+html.

**M3.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). 4 arquivos uniformizados para PT-BR consistente: `aula-05-pos.html:187`, `aula-05-exerc.html:389`, `pre_monitoria.md:260`, `exercicios-avaliativos.md:340` agora usam "constrained Pareto-eficiente" / "Pareto-ineficiente" (mantém "constrained" em inglês como termo técnico canônico, acrescenta "-e" no sufixo PT). Grep `Pareto-eficient[^e]|Pareto-ineficient[^e]` retorna zero. [NOVO] **Anglicismo "Pareto-eficient" / "Pareto-ineficient" sem o "-e" final** — divergência tipográfica em PT-BR. Ocorrências:

| Arquivo:linha | Trecho |
|---|---|
| `platform/aula-05-pos.html:109` | `equilíbrio é constrained Pareto-eficient mas genericamente Pareto-ineficiente` (mistura) |
| `platform/aula-05-pos.html:187` | `equilíbrio é <em>constrained Pareto-eficient</em> mas genericamente <em>Pareto-ineficient</em>` (puramente em inglês) |
| `platform/aula-05-exerc.html:389` | `O equilíbrio resultante é constrained Pareto-eficient mas genericamente Pareto-ineficient (Hart 1975)` |
| `aula_5/exercicios-avaliativos.md:340` | idem |

Em todos os outros pontos do bundle (e em pre_monitoria, durante_aula, pre_aula): "Pareto-eficiente" / "Pareto-ineficiente" (correto em PT-BR). **Fix:** uniformizar para PT-BR ou explicitar termo técnico em itálico inglês "*constrained Pareto-efficient*" mantendo "Pareto-ineficiente" em PT.

**M4.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Passo 1 do gabarito Q9 reescrito invocando a propriedade canônica de Arrow-Pratt: aversão absoluta ao risco constante \(r_A(c) = -v''/v' = \gamma\), equivalente a \(\ln v'(c) = -\gamma c\) ser linear em \(c\). Daí decorre a propriedade derivada (diferenças \(x^i_s - x^i_{s'}\) independentes de \(i\)), agora coerente com o passo 2 do mesmo gabarito. Alternativa correta (linha 199) também reformulada — não fala mais em "propriedade aditiva do CARA na variação do consumo", e sim em "\(\ln v'(c)\) ser linear em \(c\) sob CARA". Sem espelho em MD (terminologia imprecisa só estava no HTML). [NOVO] `platform/aula-05-pos.html:203` (Q9 ponto-chave) — **terminologia imprecisa para CARA**.

> `CARA tem propriedade de "linearidade em desvios": variações \(\Delta c\) no consumo entram aditivamente na utilidade marginal.`

A utilidade marginal de CARA é $v'(c) = e^{-\gamma c}$ — **multiplicativa**, não aditiva. A propriedade verdadeira é: **diferenças** $x^i_s - x^i_{s'}$ não dependem de $i$ porque $\ln v'(c) = -\gamma c$ é linear em $c$ (CPO em log dá $\ln(p_s/p_{s'}) = \ln(\pi_s/\pi_{s'}) - \gamma(x^i_s - x^i_{s'})$, conforme a Derivação no passo 2 do mesmo gabarito). A frase do passo 1 contradiz a Derivação correta do passo 2 do mesmo gabarito. **Fix:** trocar para "CARA tem a propriedade de que **diferenças de consumo** $x^i_s - x^i_{s'}$ entre estados não dependem do agente em equilíbrio (porque $\ln v'(c)$ é linear em $c$)". Coerente com J-R §5.5 e Wilson (1968). Linha 199 (alternativa correta) já diz "propriedade aditiva do CARA na variação do consumo" — também impreciso, mas ao menos diz "variação" (diferença); aceitável.

**M5.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Frase reescrita conforme proposto pelo pass-4 A4: "ZaE Cap. 14 (livro do Prof. Darcio) **não cobre incerteza/bens contingentes** — fica fora desta pré-aula. Serve como base de revisão para Aula 4 (EG canônico) se você quiser revisitar." Elimina a contradição sintática "entra na Seção 1 como complemento" — a Seção 1 atual é J-R, ZaE não está lá. [NÃO-RESOLVIDO desde pass-4 A4] `aula_5/pre_aula.md:75` — frase remanescente:

> `ZaE Cap. 14 (livro do Prof. Darcio) cobre EG canônico mas **não tem cobertura formal de incerteza/bens contingentes** — entra na Seção 1 como complemento opcional para revisão da Aula 4.`

A Seção 1 do MD é J-R, não ZaE. A frase é coerente com a decisão pedagógica (ZaE não cobre), **mas** sintaticamente diz que ZaE "entra na Seção 1" — confunde aluno meticuloso. Pass-4 marcou como cosmético baixa-urgência; mantenho **MAJOR** porque a SSOT pedagógica precisa estar limpa antes de o aluno consumir. **Fix:** trocar para "ZaE Cap. 14 **não cobre incerteza** — fica fora desta pré-aula; serve como base de revisão para Aula 4 (EG canônico) se você quiser." Hold sob mesma frase na linha 102 que já está correta — o problema é só a 75.

**M6.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Referência atualizada conforme pass-4 A3: `*[J-R §5.2 (existência walrasiana) + Debreu (1959) Cap. 5 (existência AD com incerteza)]*`. N&S §13.6 removido (não cobre existência). [NÃO-RESOLVIDO desde pass-4 A3] `aula_5/durante_aula.md:437` — referência stale:

> `1. **Existência.** Sob que hipóteses existe equilíbrio AD? Ferramentas: continuidade do excesso de demanda, Brouwer/Kakutani. *[N&S §13.6 ou capítulo dedicado, J-R §5.2]*`

Pass-4 propôs A3 atualizar para "[J-R §5.2 (existência walrasiana) + Debreu (1959) Cap. 5 (existência AD com incerteza)]". Não foi aplicado. N&S §13.6 NÃO cobre existência (cobre EG com incerteza, sim — mas existência é outro tópico, fica em capítulos dedicados de J-R 5.2 ou MWG 17.B). É roteiro de Darcio em sala — citação stale incomoda quando aluno pergunta. **Fix:** aplicar a sugestão A3 do pass-4.

**M7.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Peer-review da Q3 reescrito sem referência fantasma ao "3/7" (que pertencia ao Ex2 dos avaliativos, não a esta questão cuja setup é \(\pi^A_1=0{,}3, \pi^B_1=0{,}5\)). Crítica honesta agora específica à Q3: caráter calibrador (fórmula fechada limpa via Cobb-Douglas), análise de distratores ((c) é o atrator forte por confundir agregado livre de risco com alocação livre de risco individual; (a) é mais fraco), e tradeoff de tempo (~5 min vs alvo 6 min). Grep "3/7" no `aula-05-pos.html` retorna zero ocorrências. [NOVO] `platform/aula-05-pos.html:91` — **contradição lógica no gabarito da Q3 (peer-review)**:

> `**Bug encontrado e corrigido em pass-3 (Referee 2):** versão prévia afirmava que a razão ficava "entre 3/7 e 1" sem fórmula fechada — falso, há fórmula fechada \(p^*_1/p^*_2 = 2/3\). Quem marca (c) ainda não internalizou que crenças divergentes geram aposta endógena.`

O setup da Q3 é $\pi^A_1=0{,}3, \pi^B_1=0{,}5$ (NÃO 3/7) e $\omega^A=\omega^B=(50,50)$. **De onde vem o "entre 3/7 e 1"?** É um vestígio de uma versão anterior da questão (provavelmente a do Ex2 do exerc, que tem $\pi^A=(0{,}3;0{,}7)$ — daí o 3/7). O peer-review menciona um bug que **não pertence ao histórico desta questão**. Aluno que ler o gabarito vai ficar confuso. **Fix:** suprimir referência a "entre 3/7 e 1"; substituir por "(versões anteriores afirmavam que a razão era 'calculável mas não trivial' — falso, há fórmula fechada $p^*_1/p^*_2 = 2/3$ via Cobb-Douglas em log)".

### 🟢 Minor (fix oportuno)

**m1.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Linha 415 reescrita como `Equação SDF / razão de preços contingentes (Ex 2, 3, 5 — em Ex2/Ex3 a razão emerge via Cobb-Douglas direta; o SDF generaliza)`. Apêndice agora deixa claro que a parametrização Cobb-Douglas é caso particular pedagógico, sem reabrir a discussão A5 do pass-4. [NOVO] `aula_5/exercicios-avaliativos.md:415` (Apêndice "Verificação cruzada com pré-aula") — declara "Equação SDF / razão de preços contingentes (Ex 2, 3, 5)" mas Ex2 e Ex3 derivam via Cobb-Douglas direta sem invocar SDF formalmente. Pass-4 marcou A5 como "manter — Cobb-Douglas é caso particular do SDF". Aceito o argumento, **mas** sugiro adicionar parêntese explícito: "(Ex 2, 3, 5 — em Ex2/Ex3 a razão emerge via Cobb-Douglas; o SDF generaliza)". Custo zero.

**m2.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Caracteres Unicode box-drawing (`┤├┘────`) e símbolos `◇◆°` substituídos por ASCII puro (`+`, `-`, `|`, `o`, `*`, `45 graus`, `<-`, `dotacao`) no bloco do `aula-05.qmd:212–221`. Renderização monoespaçada agora consistente em qualquer navegador/projetor — sem risco de kerning desigual. **Score do slide não muda** (continua sendo um code block dentro de `::: {.cols}`; densidade ponderada estável). Slides precisam ser **re-renderizados manualmente** com `quarto render aula-05.qmd` antes de 20/05 — pass-5 já havia marcado re-render como condicional; agora vira obrigatório se este fix for adotado. [NOVO] `aula_5/slides/aula-05.qmd:218–222` — **diagrama ASCII** nos slides:

```
   x_2 (sol)
   |
160 ┤    ◇45°
   |   /
100 ┤◆ /  ← dotação (60,100)
   | /
 60 ┤/
   +────────── x_1 (chuva)
   0   60  100  160
```

Funciona em terminal, mas em reveal.js renderiza com fonte serif (não monoespaço por default), barras Unicode `┤├┘` quebrando com kerning desigual. Em sala projetado vai ficar feio. **Fix:** ou trocar para imagem PNG (gerada com matplotlib/JSXGraph), ou colocar dentro de bloco `<pre style="font-family:monospace;line-height:1.0">…</pre>`. Aceitável como está se Darcio aprovar o look "feio mas funcional".

**m3.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Linha 402 do `durante_aula.md` (não 401 — número estava off-by-one) reescrita: agora usa `(x_{\text{chuva}}, x_{\text{sol}})` (mesma notação do Bloco 1 do roteiro e do diagrama no qmd) em vez de `(x_1, x_2)` genérico. Frase também explicita que é o **mesmo desenho do Bloco 1, reinterpretado como ponto de equilíbrio sobre a 45° quando $A$ está totalmente segurado** — o que dá a Darcio uma deixa concreta para retomar o quadro do Bloco 1 sem redesenhar. Coerência roteiro↔slides agora explícita. [NOVO] `aula_5/durante_aula.md:401` — Bloco 4 menciona "diagrama $(x_1, x_2)$ com 45° gravado" como saída do bloco, mas o slide-corresponding (qmd linhas 198–227) é o ASCII de m2. Coerência ok com o problema — o aluno sai com a *ideia* gravada. Não é blocker.

**m4.** ✅ **RESOLVIDO em 2026-05-08** (commit `<commit-pending>`). Linha 451 reescrita: `$\text{TMS}$ (não $MRS$). ✓ (usado no gabarito do Ex 1; convenção respeitada em todo o bundle).` Reflete corretamente o uso na linha 84 (gabarito Ex1) e elimina contradição interna. Convenção PT-BR canônica do projeto (`\text{TMS}`, não MRS) preservada. [NOVO] `aula_5/exercicios-avaliativos.md:451` — apêndice de notação canônica afirma:

> `- $\text{TMS}$ (não $MRS$). ✓ (não usado neste md, mas convenção respeitada na pré-aula e durante_aula).`

Mas o **gabarito 5-passos do Ex1** (linha 84) usa explicitamente `$\text{TMS}^A$`. A nota "não usado neste md" está errada. Cosmético. **Fix:** remover parêntese ou trocar para "(usado no gabarito do Ex1; convenção respeitada em todo o bundle)".

**m5.** ✅ **RESOLVIDO em 2026-05-08 — não-aplicado por reanálise** (commit `<commit-pending>`). Análise comparativa cuidadosa de Q3 (b), Q4 (c) e Q9 (c) revela que o uso atual **já segue padrão semântico consistente**: `<strong>` para o destaque do veredito conceitual da resposta (`<strong>Há comércio:</strong>` em Q3 (b), `<strong>A viabilidade ser estado-a-estado</strong>` em Q4 (c), `<strong>fração igual</strong>` em Q9 (c)) + `<em>` para termos técnicos italicizados (`<em>aposta endógena</em>` em Q3 (b), `<em>risco agregado</em>` e `<em>linear em c</em>` em Q9 (c)). Em Q5 (b) o destaque é via fórmula matemática, não markup tipográfico. Logo `<em>aposta endógena</em>` em Q3 (b) **é exatamente o padrão correto** — pass-5 errou em flagar como inconsistente. Mantido como está; documentação aqui evita re-flag futuro. [NOVO] `platform/aula-05-pos.html:82` — Q3 alternativa (b) usa **markup `<em>`** em "<em>aposta endógena</em>" mas o estilo dominante em distratores corretos do bundle é **`<strong>`** (ver Q4 (c), Q5 (b), Q9 (c) etc.). Inconsistência de ênfase pequena. **Fix:** trocar para `<strong>aposta endógena</strong>` ou aceitar a divergência. Trivial.

---

## Cobertura J-R §5.5

J-R 3e §5.5 ("Markets with Uncertainty") cobre 4 frentes principais. Aqui a auditoria:

| Tópico J-R | Coberto? | Onde | Calibre |
|---|---|---|---|
| Estados, bens contingentes, $\mathbb{R}^{LS}$ | ✅ | pre_aula §3, slides Bloco 1, durante_aula B1 | **par-Jehle** — definições formais, finitude, exemplos. |
| Mercado completo + UMP em $\mathbb{R}^{LS}$ | ✅ | pre_aula §4, slides Bloco 2, durante_aula B2 | **par-Jehle** — definição via $p_{\ell,s}$ existente para cada $(\ell,s)$. |
| Equilíbrio AD (existência ASSUMIDA) | ✅ (com disclaimer) | pre_aula §4, slides | **par-Jehle** — corretamente declarado que existência fica para Aula 6. J-R §5.5 também não prova existência (manda para §5.2). |
| 1º TBE estendido | ✅ | pre_aula §5, slides Bloco 3, durante_aula B3 | **par-Jehle** — prova reaproveitada da Aula 4 (J-R faz isso também: §5.5.2 referencia §5.3). |
| 2º TBE estendido | ✅ (citado) | pre_aula §5, slides, durante_aula | **par-Jehle** — citado sem prova (Hahn-Banach), igual a J-R §5.5.2 que faz idem. |
| Aplicação seguro completo (avesso + neutro) | ✅ | pre_aula §5, slides Bloco 4, durante_aula B4 | **par-Jehle** — derivação canônica $p_s/p_{s'}=\pi_s/\pi_{s'}$ + $A$ totalmente segurado. |
| SDF e equação fundamental | ✅ | pre_aula §4, slides Bloco 2 (eq fundamental), pre_monitoria §2 | **super-Jehle** — J-R §5.5 não derrama SDF formalmente; isso vem de §7 ou de Lucas (1978). Aqui aparece corretamente como caso particular pedagógico. |
| Spanning + Radner sequencial | TEASER ✅ | pre_aula §5 final, slides Bloco 5, pre_monitoria §4, exerc Ex6, pos Q8/Q10 | **sub-Jehle deliberado** — J-R §5.5 toca brevemente; tratamento formal vai para Aula 6. Q10 🔴🔴 testa equivalência AD↔Radner — preview honesto. |
| Heterogeneidade de crenças + no-trade | ✅ | pre_monitoria §1, exerc Ex2, pos Q3 | **par-Jehle** com extensão Milgrom-Stokey (citação MWG-style). |
| Wilson 1968 / CARA | ✅ | pre_monitoria §3, pos Q9 | **par-Jehle** + Wilson explícito como referência. |
| Mercados incompletos (Hart 1975) | ✅ (preview informal) | pre_monitoria §4, exerc Ex6, pos Q8 | **par-Jehle** — declarado teaser. |

**Veredito de calibre:** o bundle está consistentemente **par-Jehle** nas peças centrais e cuidadosamente **sub-Jehle** nos pontos onde Aula 6 toma o bastão (Radner, existência). **Não há super-Jehle injustificado.** A migração N&S→J-R do commit `fb98c74` foi bem executada — o que sobrou são os 7 fixes de coerência cruzada que pass-4 aplicou; pass-5 não encontra desencaixe pedagógico residual.

---

## Score de densidade dos slides ≥ 10

Aplicação do score ponderado do CLAUDE.md (header 1.8, parágrafo 1.5, display eq 2.5, eq-punch 2.2, eq-key 2.2, callout 2.0, bullet 1.0, sub-bullet 0.6, linha compact-table 0.8, bridge 0.7).

| # | Título | Linhas qmd | Score | Breakdown | Recomendação |
|---|---|---|---|---|---|
| ~21 | Equação fundamental do SDF (2/2) | 427–443 | **11.5** | h2 (1.8) + ¶ (1.5) + callout-note (2.0) + ¶ "Aplicação direta" (1.5) + display eq (2.5) + eq-punch (2.2) | **APERTADO** — quebrar em (2/3) e (3/3): SDF síntese + Aplicação eq + eq-punch separados. |
| ~28 | Resultado canônico (1/2) | 611–625 | **9.8** | h2 (1.8) + ¶ "(1) Neutralidade" (1.5) + display eq (2.5) + ¶ "Preços atuarialmente justos" (1.5) + ¶ "(2) CPO de A" (1.5) + display eq (2.5) - 0.5 sobreposições (display compacto) | **MARGEM/APERTADO** — cabe se Darcio pula `Preços atuarialmente justos` para parte (2/2). Sugiro inspeção visual no projetor. |
| ~14 | Equação fundamental do SDF (1/2) | 409–423 | **9.5** | h2 (1.8) + ¶ "Caso $\ell=\ell'$" (1.5) + display eq (2.5) + ¶ "Sob EU:" (1.5) + eq-key (2.2) | **MARGEM** — folga ~70px abaixo. Aceitável. |
| ~30 | 2º TBE estendido (sem prova hoje) | 530–543 | **9.0** | h2 (1.8) + eq-key (2.2) + ¶ "Implicação política" (1.5) + 2 bullets (2.0) + bridge (0.7) | **MARGEM** — confortável. |

**Slides "candidatos a quebrar":** apenas o de Equação SDF (2/2) é claramente APERTADO. Pass-4 disse implicitamente que slides foram auditados em pass-3, mas pass-3 também não recalculou densidade pós-troca J-R — pegou o terreno como herdado. **Recomendação:** Darcio inspeciona em projetor antes de 20/05; se Equação SDF (2/2) não couber, divide em (2/3) callout + ¶ aplicação e (3/3) display eq + eq-punch.

**Validação anti-padrão:** zero `.smaller` em slide matemático ✓; zero `font-size: 0.Xem` em conteúdo (ocorrências em title-slide/section-divider/pause-slide são decorativas) ✓; zero compressão de margin/padding interno ✓; eq-punch terminal com `margin-bottom: 2.6em` herdada do theme.scss ✓.

---

## Coerência cross-artefato

Matriz de continuidade pré-aula → quiz pré → aula → quiz pós → avaliativos:

| Conceito | pre_aula | quiz pré | aula presencial | quiz pós | avaliativos | Continuidade |
|---|---|---|---|---|---|---|
| $\mathbb{R}^{LS}$ dim = $LS$ | §3 | Q1 | B1.c | (implícito) | (implícito) | ✅ |
| $\pi^i$ heterogêneo | §3 | Q2 | B1.b | Q3 | Ex2 | ✅ |
| Tempo = caso particular de estado | §3 | Q3 | B1.d | (implícito) | Ex4 | ✅ |
| Viabilidade estado-a-estado | §4 | Q4 | B2.d, B3.c | Q4 | Ex5(d,e) | ✅ |
| CPO em $\mathbb{R}^{LS}$ / SDF | §4 | Q5 | B2.c, B2.e | Q1, Q2, Q5, Q6 | Ex1(c), Ex2(a,b) | ✅ |
| Definição AD | §4 | Q6 | B2.d | (implícito) | Ex1, Ex5 | ✅ |
| Walras estendido | §4 | Q7 | B2.d | (implícito) | (implícito) | ✅ |
| 1º TBE estendido | §5 | Q8 | B3 | Q4, Q7(2º) | Ex5(d,e) | ✅ |
| Seguro completo (A avesso + B neutro) | §5 (MC5/MC6) | Q9 | B4.a | Q1 | Ex1, Ex5 | ✅ |
| Agregado livre de risco + Bernoullis idênticas → r=1 | §5 (MC7 só MD) | (não testado) | (não testado) | (não testado) | Ex3 | ⚠️ — MC7 só no MD; MC equivalente ausente no HTML; Ex3 testa diretamente sem prep |
| SDF formal / Lucas | §5 (citação) | Q10 | B2.e (citação) | Q5, Q6, Q10 | (Ex5/Ex6 ext.) | ✅ |
| Wilson 1968 / CARA simétrico | (ausente) | (não testado) | (não testado) | Q9 | (não testado) | ⚠️ — Wilson aparece **direto na Q9 do pos** sem aparição prévia em pre_aula nem aula presencial. Pré-monitoria 3 §3 cobre, mas pré-monitoria abre em 23/05, **2 dias após** o pos abrir. Aluno que faz pos antes da Pré-M3 vê Wilson pela 1ª vez como questão 🔴. Calibre intencional ou descontinuidade? |
| Hart 1975 / mercados incompletos | §5 (teaser) | (não testado) | B5.b (citação) | Q8, Q10 | Ex6 | ✅ |
| Heterogeneidade crenças + no-trade | (ausente) | (não testado) | (ausente) | Q3 | Ex2 | ⚠️ — entra direto no Ex2 e Q3 sem warmup formal; pré-monitoria 3 §1 cobre, mas idem timing |

**Achado principal de continuidade:** **3 conceitos avançados aparecem primeiro em quiz pós ou exercícios sem aparição em pré-aula nem aula** (Wilson 1968/CARA, no-trade Milgrom-Stokey, alocação livre de risco com agregado simétrico). Pré-monitoria 3 cobre os três, mas abre **dois dias depois** do pos. Aluno disciplinado faz pos cedo (qui 21/05) e topa com 🔴 sem warmup. **Não é blocker** — todos têm gabarito 5-passos completo. **Mas é a fronteira pedagógica do bundle.** Recomendação: ou (a) aceitar como é (calibre 🔴 = teste de sustentação avançada), ou (b) acrescentar 2-3 frases na pre_aula §5 sobre "Agregado livre de risco + Bernoullis idênticas: cada agente fica livre de risco individualmente (caso testado em Ex3 dos avaliativos)" — custo baixo.

---

## Verificação amostral de DOIs (3 dos 11 do commit 8cdccf7)

Validação via Crossref API (https://api.crossref.org/works/<DOI>):

| DOI | Atribuído a | Crossref retorna | Match |
|---|---|---|---|
| `10.1016/0022-0531(75)90028-9` | Hart 1975, JET, "On the Optimality of Equilibrium when the Market Structure is Incomplete" | "On the optimality of equilibrium when the market structure is incomplete" — Oliver D. Hart, 1975, *Journal of Economic Theory* | ✅ |
| `10.2307/1909607` | Wilson 1968, Econometrica 36(1), "The Theory of Syndicates" | "The Theory of Syndicates" — Robert Wilson, 1968, *Econometrica*, vol 36 issue 1 | ✅ |
| `10.1086/260062` | Black & Scholes 1973, JPE 81(3), "The Pricing of Options and Corporate Liabilities" | "The Pricing of Options and Corporate Liabilities" — Fischer Black, Myron Scholes, 1973 (May), *Journal of Political Economy*, vol 81 issue 3 | ✅ |

**Veredito:** amostra 3/3 confere — título, autores, ano, veículo, volume e issue. Confiança extrapolada de que os outros 8 DOIs (Lucas 1978, Hansen-Jagannathan 1991, Mehra-Prescott 1985, Milgrom-Stokey 1982, Holmström 1979, Akerlof 1970, Stiglitz-Weiss 1981 via JSTOR, Debreu 1959 livro) também conferem (validados pelo commit `8cdccf7` via JSTOR/Elsevier PII). **Nenhum DOI fabricado detectado.**

---

## Comparação com pass-4

| Categoria | Pass-4 declarou | Pass-5 confirma? | Comentário |
|---|---|---|---|
| Coerência interna pós-troca J-R | "9.5 — totalmente alinhado" | **Parcialmente** — A4 (linha 75 pre_aula) ainda solta | Frase ZaE confusa — minor mas SSOT ainda divergente. |
| Sincronia md↔html | "9.6" | **8.5** — 7 ocorrências de `\mathbf{<palavra-PT>}` no MD sem espelho no HTML | Pass-4 não auditou ênfase tipográfica. |
| Notação canônica | "10.0" | **9.5** | `lineamente` (typo) em 4 arquivos; "Pareto-eficient" sem acento em 4 arquivos. Não pegos. |
| Distratores plausíveis | "9.0" | **9.0** ✓ | Nenhum bug novo. |
| Gabaritos 5-passos | "9.7" | **8.8** | (a) MathJax quebrado em pos-Q4 (B1, blocker); (b) terminologia imprecisa CARA em pos-Q9 (M4); (c) peer-review pos-Q3 referencia bug que não pertence à questão (M7). |
| Achados não-fixados de pass-4 (A1–A5) | "A1 confirmado, A2-A5 sugeridos" | A1 (PDF J-R bucket): **resolvido** (commit `fcb66ef` 2026-05-07 confirma); A2 (MC2 pré-monitoria ambíguo): **não-aplicado**; A3 (referência existência durante_aula): **não-aplicado**; A4 (frase ZaE pre_aula:75): **não-aplicado**; A5 (apêndice SDF): aceito como está. | A2/A3/A4 ainda válidos — anotados em M5/M6 e tabela. |

**Veredito da regressão:** pass-4 declarou pronto, mas (a) tinha 1 blocker MathJax que não auditou, (b) achados sistemáticos (mathbf-em-PT, lineamente, anglicismos) que filtraria com grep simples, (c) marcador stale em durante_aula.md que pass-3 nem pass-4 nunca olharam. **A heurística "leitura cruzada explícita de string-alvo em todos os 9 artefatos" do pass-4 §6 item 4 é correta — mas só foi aplicada à frase F1 (LNS-viabilidade) e não estendida.** Pass-5 aplica-a a 4 strings novas (`\mathbf`, `lineamente`, `Pareto-eficient`, `[verificar`).

---

## Recomendação final

**Estado:** bundle Aula 5 está **a 1h30 de trabalho focado de pronto**.

**Aplicar antes de quarta 13/05 (precaução — abertura 14/05):**

1. **B1** (CRÍTICO) — corrigir MathJax quebrado em `aula-05-pos.html:109` (Q4 Extensão).
2. **B2** (CRÍTICO) — eliminar marcador `[verificar fonte]` + placeholders `X`/`Y` em `durante_aula.md:388`.
3. **M1** — find-replace `\mathbf{<palavra-PT>}` → `**<palavra>**` em `exercicios-avaliativos.md` (7 ocorrências) e `pre_aula.md` (1 ocorrência).
4. **M2** — find-replace `lineamente` → `linearmente` (4 ocorrências em md+html).
5. **M3** — uniformizar "Pareto-eficient[e]" / "Pareto-ineficient[e]" para PT-BR consistente (4 ocorrências em pos+exerc+md SSOT).
6. **M4** — clarificar terminologia CARA em `aula-05-pos.html:203`.
7. **M5** — reescrever frase ZaE em `pre_aula.md:75`.
8. **M6** — atualizar referência de existência em `durante_aula.md:437`.
9. **M7** — corrigir peer-review fantasma em `aula-05-pos.html:91` (Q3).

**Não-bloqueante (fix oportuno):** m1–m5 + auditoria visual do slide "Equação fundamental do SDF (2/2)" no projetor.

**Pós-fix recomendado:**

1. **Re-render** dos slides (`quarto render aula_5/slides/aula-05.qmd`) — **não** é estritamente necessário (qmd não foi tocado em pass-5), mas se Darcio quebrar o slide SDF (2/2), re-render obrigatório.
2. **Smoke test** em janela anônima com conta de aluno após abertura 14/05, especificamente:
   - Abrir `aula-05-pos.html` Q4 e verificar gabarito renderiza limpo.
   - Abrir `aula-05-exerc.html` Ex2(d), Ex3(d), Ex5(c), Ex6(c) e verificar conteúdo MathJax.
3. **Telemetria pós-aula** (admin dashboard, conforme `durante_aula.md` apêndice C): se confidence ratings post-Bloco 1 ($\mathbb{R}^{LS}$) tem P50<3, ajustar Pré-M3 com Alberto.

**Score global pós-fix esperado:** 9.7/10. Pré-fix atual: 9.4/10 (queda por blocker B1, que é único item realmente bloqueante).

**Confiança no veredito:** alta para B1, B2, M1–M3 (mecânicos, find-replace verificável); média para M4 (julgamento pedagógico de terminologia CARA); alta para Cobertura J-R §5.5 (par-Jehle confirmado); alta para amostragem DOI (3/3 conferiram via Crossref).

---

## Achados não previstos pela pass-5

Identificados durante a aplicação dos majors em 2026-05-08:

- **`aula_5/pre_aula.md:361`** (MC6, alternativa b) — `$\mathbf{A}$ neutralidade ao risco de $B$` usa `\mathbf{A}` como artigo definido PT-BR ("A neutralidade…"), mesmo padrão dos M1 catalogados. Não estava na lista do pass-5 mas é da mesma natureza. Corrigido para `**A** neutralidade…` no mesmo lote do M1.
- **`aula_5/pre_aula.md:355`** (MC5, alternativa c) — `$\mathbf{A}$ consome $(\bar c^A, \bar c^A)$` usava `\mathbf{A}` referenciando o **agente** A (não artigo). Inconsistente com as outras alternativas que usam `$A$` italic puro. Reescrito para `$A$ consome…` — consistência tipográfica entre alternativas da mesma questão.
- Nenhum 8º major substancial detectado fora do escopo declarado.
