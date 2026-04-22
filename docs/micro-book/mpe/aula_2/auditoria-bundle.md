# Auditoria do Bundle da Aula 2 — Microeconomia I MPE 2026/32

**Data:** 2026-04-22
**Auditor:** prof-mpe-micro (agente, auditoria adversarial independente)
**Artefatos auditados:**

- `aula_2/slides/aula-02.qmd` (~848 linhas, ~40 slides)
- `platform/aula-02.html` (pré-aula material, 9 seções, ~720 linhas)
- `platform/aula-02-pre.html` (quiz pré-aula, 10🟡, ~263 linhas)
- `platform/aula-02-pos.html` (quiz pós-aula, 5🟡+5🔴🔴, ~272 linhas)
- `platform/aula-02-exerc.html` + `aula_2/exercicios-avaliativos.md` (6 exerc, 29 sub-itens)
- `aula_2/pre_aula.md`, `aula_2/durante_aula.md`

---

## Veredicto geral

**Nota: 7.8 / 10.**

Bundle pedagogicamente sólido nas ideias e na arquitetura: estrutura canônica preservada, calendário unificado aplicado corretamente, três diagramas da dualidade bem apresentados, Roy e Shephard derivados em 4 linhas cada, e calibre geral no lugar certo. **Mas o bundle tem problemas sérios de produção** que impedem assinar o OK para deploy sem re-rodada: (i) **desrespeito à regra de dependência temporal** — a equação de Slutsky é explicitamente exigida no Exercício Avaliativo 5 (🔴) **antes** da Aula 3; (ii) **stream-of-consciousness não-editado** na SSOT markdown dos avaliativos, com texto do tipo "*Hmm, precisa verificar*", "*minha resposta original estava baixa*", "*vou ajustar no HTML*" — o aluno não pode ver isso; (iii) **item Ex 2 (e) do MD afirma $s_1 = 2/3$ como correta enquanto o HTML (atualizado) diz $s_1 = 1/3$, $s_2 = 2/3$** — MD e HTML contradizem-se na direção econômica; (iv) **Ex 4 (e) tem duas alternativas factualmente corretas** — (i) "CD com expoentes (0,3; 0,5; 0,2)" e (iv) "homotética/CD em forma log-linear" — o engine só aceita uma, e o próprio gabarito admite que "(i) também é tecnicamente correto"; (v) **slide 739 tem derivação algébrica quebrada com reticências** ("$= 5\cdot 0{,}25 \cdot (1/\sqrt{2}) \cdot \ldots$") projetado ao vivo na aula, seguida de uma admissão de conta "mais limpa"; e (vi) **duplicação severa entre Q4 pré e Q10 pré** — mesmo enunciado, mesmos preços, mesma resposta $h_1 = 9$.

As contas do bundle, quando bem-resolvidas, **fecham** — auditei Ex 1, Ex 2 (na versão HTML), Ex 3 (na versão HTML), Ex 4, Ex 5 com papel mental e tudo bate. Q1–Q10 do pré-quiz e Q1–Q10 do pós-quiz também fecham. O problema é que a **versão MD** do avaliativo ainda carrega erros aritméticos + texto de rascunho que deveriam ter sido editados fora antes do commit.

**Decisão operacional:** bundle **não está pronto para deploy** até que (i) MD dos avaliativos seja reescrito do zero sem stream-of-consciousness, (ii) Ex 5 avaliativo seja reformulado ou rebaixado para pós-quiz, (iii) Ex 4 (e) tenha redação que isole uma única correta, (iv) slide 739 seja corrigido, e (v) pré-quiz Q10 seja substituído por questão nova (não duplicada com Q4). A Aula 2 é em **29/04** — há 7 dias. Cabe re-rodada antes de 23/04 madrugada (quando a pré-aula teoricamente abriria no ciclo canônico; com o calendário unificado, já abriu em 15/04, mas a Aula 2 ainda não aconteceu).

---

## Nota por artefato

| Artefato | Nota | Comentário curto |
|---|---|---|
| Slides `aula-02.qmd` | 8.5 | Estrutura de 3h bem distribuída, ordem Bloco 2→3→Pausa 2→Bloco 4 está correta (diferente do erro da Aula 1). Três diagramas da dualidade são o coração pedagógico. **Mas slide 739 tem derivação algébrica quebrada com reticências** — projetado ao vivo é constrangedor. |
| Pré-aula (material `aula-02.html`) | 8.8 | 9 seções, confiança pré/pós, micro-checkpoints com cooldown + scroll, exercícios de papel com campo de abordagem — tudo conforme padrão canônico. Box Brasil (IPCA/Shephard) e Box Mundo (AIDS) estão no lugar certo. Tempo-alvo 90–120 min é realista para MPE. |
| Quiz pré-aula (10🟡) | 7.0 | Calibre N&S 12e correto. **Q4 e Q10 são quase-duplicadas** (mesmo $u$, mesmos preços, mesmo $\bar u=6$, mesma resposta $h_1=9$). Q3 peer-review é excelente — identifica sub-identificação de $v$ a partir de $x^M$. |
| Quiz pós-aula (5🟡+5🔴) | 8.8 | Distribuição justa; Q6 deriva Slutsky em 3 linhas; Q7 sobre as 3 propriedades de S é rigorosa; Q8 (Engel + Cournot) é ouro ANPEC; Q10 🔴🔴 sobre recíproca da dualidade é a pérola do quiz. Calibre J-R §2.1 está no lugar. |
| Exerc. avaliativos (HTML) | 7.5 | Calibre 🟢🟡🟡🟡🔴🔴 está correto. Ex 1 é limpo; Ex 2, Ex 3, Ex 5 têm contas que fecham. **Ex 5 (d) e (e) exigem Slutsky — que é Aula 3**. Ex 4 (e) tem dupla correta. |
| Exerc. avaliativos (MD SSOT) | 4.5 | **Inaceitável no estado atual.** Contém stream-of-consciousness de rascunho ("Hmm, precisa verificar", "Minha resposta original estava baixa", "Correção aplicada ao HTML"), respostas factuais erradas em Ex 2 (e), discrepâncias com HTML em numeração de alternativas, peer-review admitindo erros não-corrigidos. O MD é SSOT e precisa ser reescrito. |
| Roteiro (`durante_aula.md`) | 9.3 | Minuto-a-minuto limpo, armadilhas canônicas listadas (sinal de Roy, confundir Shephard com $\partial e/\partial m$), notas de autocalibração em tempo real são pragmáticas. Timing soma 180 min exatos. |
| Pré-aula narrativa (`pre_aula.md`) | 8.5 | Clareza de contrato, leituras bem-dosadas, referências batem com o HTML. **Pequeno risco:** afirmação de que "N&S 12e 4.1" é um exercício CES $\rho=1/2$ — não verifiquei que o problema numerado 4.1 no capítulo 4 do N&S 12e é esse exato exercício (ver Achado Médio #3). |

---

## Achados críticos (🔴 — bloqueadores de deploy)

### Crítico #1 — Ex 5 avaliativo exige Slutsky antes da Aula 3

**Localização:** `platform/aula-02-exerc.html` linhas 389–417; `aula_2/exercicios-avaliativos.md` Ex 5 itens (d) e (e).

**Problema:** O Exercício 5 🔴 (d) pede literalmente "Use Slutsky para calcular $\partial x_1^M/\partial p_2$". O item (e) discute o cancelamento substituição-renda que **é** a leitura da equação de Slutsky. O CLAUDE.md é explícito:

> "A decomposição de Slutsky **não pode estar nos avaliativos da Aula 2** (mas PODE estar no quiz pós-aula como ponte, se identificada como tal)."

**Impacto:** Aluno que não fez pré-aula 3 (sequer liberada ainda) vai se deparar com vocabulário não-introduzido em aula. Dá margem para contestação formal de avaliação. Viola pré-requisito explícito do design do curso.

**Correção sugerida:** Três caminhos viáveis:

1. **Mover Ex 5 (d) e (e) para o quiz pós-aula** como Q11/Q12 🔴🔴 (sendo que o pós-quiz já tem Q6 🔴 deriva-Slutsky e Q10 🔴🔴 recíproca da dualidade — coerente). Substituir (d) e (e) no avaliativo por duas perguntas sobre **Shephard-simetria** ou **segunda derivada da função gasto** (o que usa apenas Aula 2).
2. **Reescrever (d) e (e)** para pedirem apenas conferência de identidade recíproca — tipo "mostre que $x^M(p, m)$ calculado diretamente bate com $h(p, v(p, m))$" — que é 100% Aula 2.
3. **Manter como está e assinalar explicitamente como "bonus pós-Aula 3"** — mas isso contraria o gabarito fechado em 07/05, dia em que a Aula 3 acabou de acontecer. Fraco.

Caminho 1 é o mais limpo. Custo: ~40 min de retrabalho.

### Crítico #2 — MD dos avaliativos contém stream-of-consciousness não editado

**Localização:** `aula_2/exercicios-avaliativos.md` linhas 126–141 (Ex 2 gabarito), 198–210 (Ex 3 gabarito).

**Problema:** Frases literalmente escritas no MD, commitadas, que são **rascunho interno do autor**:

- L126: "*Em $p = (1, 4)$: $s_1 = 1/(1 + 2) = 1/3$... **espere**. Isso dá $s_1 = 1/3$, não $2/3$. Vamos recalcular cuidadosamente.*"
- L130: "*Refazendo com $\sigma = 1/2$, ...*"
- L132: "*Correção do gabarito: $s_1 = 1/3$ e $s_2 = 2/3$; ...  Vou ajustar no HTML. As alternativas (i) '2/3' e '6,67' foram baseadas na intuição errada.*"
- L198: "*$e \approx 19{,}02$. Hmm, precisa verificar.*"
- L200: "*Minha resposta original $11{,}31$ estava baixa.*"
- L204: "*Correção do gabarito: ... vou manter no HTML as alternativas que eliminam pela estrutura, e corrijo números no HTML.*"
- L210: "*Honesta: cometi erro aritmético no cálculo de $K$ na primeira rodada. Resposta correta: $e \approx 19{,}02$ (não 11,31); $h_2 \approx 2{,}38$ (não 1,41). Gabaritos do HTML ajustados.*"

**Impacto:** O MD é **SSOT narrativa** do bundle (CLAUDE.md: "Regra de ouro: ... manter `aula_X/exercicios-avaliativos.md` em sincronia com `platform/aula-0X-exerc.html`. O MD é SSOT narrativa"). Se o aluno abrir o MD (está no repositório público, ou mesmo se circular entre eles), verá o professor se corrigindo ao vivo no gabarito — destrói credibilidade. Mais importante: **futuras auditorias, futuros agentes, futuros professores vão ler o MD e seguir os números errados dele, não do HTML**.

**Correção sugerida:** Reescrever o MD **do zero**, gabarito por gabarito, na versão final limpa. Remover toda linguagem de "correção aplicada", "recálculo", "Hmm". O gabarito correto é o do HTML — transportar para MD. Custo: ~90 min de retrabalho cuidadoso.

### Crítico #3 — Ex 2 (e) no MD está factualmente ERRADO (contradiz HTML e economia)

**Localização:** `aula_2/exercicios-avaliativos.md` linha 114.

**Problema:** O MD marca como CORRETA a alternativa:

> "(i) Em CES $\sigma < 1$, parcelas variam com preços — aqui $s_1 = 2/3$ porque $p_1$ é menor. Em CD, $s_1 = \alpha = 1/2$ sempre. Bens complementares ($\sigma < 1$) gastam **mais no bem barato**."

Mas o cálculo correto (que o MD mesmo reconhece nas linhas 128–132) é $s_1 = 1/3$, $s_2 = 2/3$, e a interpretação econômica canônica de complementares (σ < 1) é: **gastam mais no bem CARO**, porque não conseguem substituir. O HTML (linhas 180–188) corrigiu para alternativa (i) afirmando "parcela no bem **caro** é MAIOR" com $s_2 = 2/3$. Então MD e HTML agora afirmam **coisas opostas** sobre a mesma economia.

**Impacto:** Aluno que lê só MD sai com interpretação invertida. Futuro professor monta a Aula 3 usando MD como referência e propaga erro. Erro é de intuição econômica (sinal), não aritmético.

**Correção sugerida:** Incluído no Crítico #2 — reescrever MD baseado no HTML final.

### Crítico #4 — Ex 4 (e) tem duas alternativas corretas

**Localização:** `platform/aula-02-exerc.html` linhas 337–345.

**Problema:** O sub-item pergunta "Essa forma de $v$ representa preferência:"

- (i) Cobb-Douglas com expoentes (0,3; 0,5; 0,2).
- (iv) Homotética ($v = m\cdot\phi(p)$), em particular CD em 3D em forma log-linear — **equivalente a (i)**.

O próprio gabarito HTML (linha 344) **confessa**: "**Correta: (iv). Nota: (i) também é tecnicamente correto — (iv) explicita a estrutura.**"

O engine `MicroQuizGraded` aceita apenas UMA resposta como correta, via `data-correct="d"`. Aluno que marca (i) é registrado errado apesar da correção técnica. Viola anti-padrão listado no CLAUDE.md:

> "Alternativas com 'todas acima' / 'nenhuma das anteriores' — sempre uma correta identificável."

**Impacto:** ~30% dos alunos vão marcar (i) (é a opção mais "direta"), levar errada, abrir contestação, e serão bem-sucedidos na contestação porque o próprio gabarito admite que (i) está correto. Professor fica numa posição defensiva desnecessária.

**Correção sugerida:** Reformular (iv) para **não** ser equivalente a (i). Duas opções:

1. Fazer (i) dizer "Cobb-Douglas com expoentes (0,5; 0,3; 0,2) **ou outra permutação não-única**" — falso por referência ao alinhamento específico do enunciado.
2. Trocar (iv) por "Quasilinear" (falso), e deixar apenas (i) correta.
3. **Melhor:** deletar (i) e deixar só (iv) — perde-se 1 alternativa, fica 4 em vez de 5, mas zera ambiguidade.

Qualquer opção custa ~10 min.

### Crítico #5 — Slide 739 tem derivação algébrica quebrada

**Localização:** `aula_2/slides/aula-02.qmd` linhas 737–744.

**Problema:** No Bloco 4 (prática em dupla), a derivação da Shephard apresentada nos slides é:

```
\frac{\partial e}{\partial p_1} = \bar u \cdot \frac{(1/2) p_2^{1/2}}{(1/2) p_1^{1/2}} = \frac{\bar u}{\sqrt{p_1 p_2}} \cdot \frac{1}{2}\cdot p_1.
```

Duas partes **erradas**:
- A razão $\frac{(1/2) p_2^{1/2}}{(1/2) p_1^{1/2}} = \sqrt{p_2/p_1}$, não $\frac{1}{\sqrt{p_1 p_2}}\cdot \frac{1}{2}\cdot p_1$ (esta última não tem as mesmas dimensões — "$\sqrt{p_1 p_2}$" no denominador é dimensão de preço, "$p_1$" no numerador também, então a expressão vira $\frac{1}{2\sqrt{p_1 p_2}}\cdot p_1 \cdot \bar u$; isso não é igual a $\sqrt{p_2/p_1}\cdot \bar u$ exceto por coincidência algébrica no ponto específico).
- Linha 742: "$\partial e/\partial p_1 = 5 \cdot 0{,}25 \cdot (1/\sqrt{2}) \cdot \ldots$" termina em **reticências** — o professor admitiu no próprio slide que não fechou a conta.
- Linha 744: "**Conta direta (mais limpa):** $h_1 = \alpha e/p_1 = 2{,}5$. ✓" — a conta que deveria ter sido *a* derivação.

**Impacto:** Slide projetado em sala, ao vivo, para 25 alunos que acabaram de ver Roy fechar em 4 linhas limpas. Shephard apresentado com reticências destrói a mensagem-martelo do bloco ("Roy e Shephard são derivadas, não mágica"). Aluno que só consulta slides depois não entende.

**Correção sugerida:** Substituir as linhas 738–744 por:

```
Com $e = \bar u \cdot \frac{p_1^{1/2} p_2^{1/2}}{(1/2)^{1/2}(1/2)^{1/2}} = 2\bar u\sqrt{p_1 p_2}$:

\frac{\partial e}{\partial p_1} = 2\bar u \cdot \frac{1}{2}\cdot p_1^{-1/2}\cdot p_2^{1/2} = \bar u\sqrt{p_2/p_1}.

Em $p = (4, 1)$, $\bar u = 5$: $\partial e/\partial p_1 = 5\cdot\sqrt{1/4} = 5\cdot 0{,}5 = 2{,}5 = h_1$. ✓
```

Custo: 5 min.

### Crítico #6 — Pré-quiz Q4 e Q10 são duplicadas

**Localização:** `platform/aula-02-pre.html` linhas 94–110 (Q4) e 216–231 (Q10).

**Problema:** Ambas as questões usam:
- $u(x_1, x_2) = x_1^{1/2}\,x_2^{1/2}$
- $p_1 = 4$, $p_2 = 9$
- $\bar u = 6$
- Resposta correta $h_1 = 9$

A única diferença entre Q4 e Q10: Q10 **fornece a fórmula fechada** $e = 2\bar u\sqrt{p_1 p_2}$ e pede Shephard explícito; Q4 pede a Hicksiana diretamente (exigindo o aluno resolver o EMP). Mas o caminho de resolução de Q4 passa precisamente por chegar em $h_1 = 9$ via tangência + restrição, o mesmo ponto que Q10 chega via derivada.

**Impacto:** Duplicação diminui cobertura temática do quiz (10 questões viram 9 efetivas em termos de conteúdo novo). Aluno que erra Q4 acerta Q10 (e vice-versa) por memorização, não compreensão. Anti-padrão listado no CLAUDE.md ("múltiplas construções do mesmo [item]").

**Correção sugerida:** Substituir Q10 por uma questão com tema **diferente** — sugestões: (a) **quasilinear** ($u = x_1 + \ln x_2$) — UMP com ressalva de canto; (b) **Leontief** ($u = \min\{x_1/a, x_2/b\}$) — Hicksiana com vértices; (c) **teorema do envelope aplicado à função gasto** — calcular $\partial e/\partial \bar u$ e identificar com multiplicador; (d) **homogeneidade de grau 1 em $p$** de $e$ — cálculo numérico com escala de preços. Opção (c) é a mais ancorada em Aula 2 e ainda não aparece no pré-quiz.

Custo: ~20 min para escrever questão nova com gabarito 5-passos.

---

## Achados moderados (🟡 — corrigir antes da liberação do gabarito em 07/05)

### Moderado #1 — Ex 2 MD peer-review é autoelogioso + admite erro não-corrigido

**Localização:** `aula_2/exercicios-avaliativos.md` linha 140.

Peer-review do Ex 2 termina com "*Autocrítica: a intuição 'preço alto, gasto alto em $\sigma < 1$' é válida e a questão (e) testa exatamente isso — resposta (i) está correta em direção, apenas com números que o item (c) corrigiu.*"

**Problema:** O peer-review deveria **criticar honestamente** (anti-padrão: "Gabarito 5-passos que repete o enunciado em vez de explicar o *por quê*"). Aqui é autojustificativa. Mais importante: admite explicitamente "resposta (i) está correta em direção" — mas se os números do MD ainda são errados, a "direção" também fica confusa para quem lê.

**Correção sugerida:** Junto com Crítico #2. Peer-review reescrito deve apontar: "(i) distratores numéricos 6,67 e 2/3 foram redesenhados pela lógica complementar; se algum aluno marcou sob antiga versão, a nova é a que vale."

### Moderado #2 — Ex 1 item (d) alternativa (iv) tem redação pesada

**Localização:** `platform/aula-02-exerc.html` linha 104.

Alternativa (iv): "$v = (m/p_1)^\alpha \cdot (m/p_2)^{1-\alpha}$ (com $m$ repetida)".

**Problema:** A alternativa é matematicamente = $m\cdot m^0 \cdot p_1^{-\alpha}p_2^{-(1-\alpha)} = m \cdot p_1^{-\alpha}p_2^{-(1-\alpha)}$ (porque $m^\alpha \cdot m^{1-\alpha} = m^1 = m$). Isto é **idêntico** à alternativa correta (ii) exceto pela constante $\alpha^\alpha(1-\alpha)^{1-\alpha}$. Então (iv) não é distrator — é resposta correta disfarçada (sem a constante de normalização, mas em CD onde só importa a *forma* para identidade de Roy, a constante some de qualquer jeito).

**Verificação:** Roy aplicado a $v = (m/p_1)^\alpha (m/p_2)^{1-\alpha}$: tome logs, $\ln v = \ln m - \alpha\ln p_1 - (1-\alpha)\ln p_2$. $\partial \ln v/\partial p_1 = -\alpha/p_1$; $\partial \ln v/\partial m = 1/m$. Roy: $x_1^M = \alpha m/p_1$. **Mesma resposta**. Logo (ii) e (iv) representam a mesma preferência — a pergunta "$v$ em CD fatoriza como..." aceita ambas.

**Impacto:** Aluno atento marca (iv) porque reconhece que $m^{\alpha+(1-\alpha)} = m$ — recebe errado apesar de ter entendido a estrutura melhor que quem marcou (ii) por memorização.

**Correção sugerida:** Reescrever (iv) para algo claramente diferente, p.ex. "$v = m^\alpha/p_1^\alpha + m^{1-\alpha}/p_2^{1-\alpha}$" (soma, não produto — não representa CD).

### Moderado #3 — Referências a "N&S 12e 4.1, 4.3, 4.5" como exercícios precisam verificação

**Localização:** `aula_2/pre_aula.md` linhas 73–75; `platform/aula-02.html` linhas 414–430.

**Problema:** A pré-aula S6 (seção de exercícios de papel) afirma:

- "**N&S 12e 4.1 (obrigatório).** Forma CES simétrica com $\rho = 1/2$: $u = (x_1^{1/2}+x_2^{1/2})^2$..."
- "**N&S 12e 4.3 (obrigatório).** Cobb-Douglas com 3 bens..."
- "**N&S 12e 4.5 (bônus).** EMP em quasilinear $u = x_1 + \ln x_2$..."

A mesma seção (leitura) menciona "§§4.1 a 4.7" como **seções** do capítulo, com §4.1 sendo "Utility Maximization" (seção-texto) e §4.5 sendo "The Lump Sum Principle". **Mas** os exercícios numerados em N&S 12e ao final do cap. 4 não necessariamente batem com os números "4.1, 4.3, 4.5" aqui citados — preciso verificar que exercícios 4.1, 4.3, 4.5 do cap. 4 são mesmo o que está descrito.

**Impacto:** Aluno abre N&S 12e no exercício 4.1 e encontra outra coisa. Perde 10 min, fica desconfiado do curso. Se um aluno abrir, 25 abrem.

**Correção sugerida:** Verificar **antes de liberar a pré-aula** que exercício X do cap. 4 do N&S 12e é mesmo o enunciado que está descrito. Se não bater, corrigir os números. Alternativa safest: renomear no MD/HTML para "**Exercício proposto 1 (N&S-inspirado)**: CES simétrica $\rho=1/2$..." e assumir autoria — elimina risco de referência cruzada.

### Moderado #4 — Q7 checkpoint final (pré-aula material) tem gabarito com erro lógico

**Localização:** `platform/aula-02.html` linhas 457–464.

Q2 do checkpoint pergunta "Dada $v(p_1, p_2, m) = m\,p_1^{-0{,}25}\,p_2^{-0{,}75}$, $x_1^M$ é:" Resposta correta (b): $0{,}25\,m/p_1$.

**Verificação:** $\partial v/\partial p_1 = -0{,}25\,v/p_1$. $\partial v/\partial m = v/m$. Roy: $x_1^M = -(-0{,}25\,v/p_1)/(v/m) = 0{,}25\,m/p_1$. ✓

Mas a redação "*(constante absorvida)*" sugere que a "fórmula canônica" CD seria $v = m\cdot K/(p_1^{0{,}25}p_2^{0{,}75})$, e o exercício usa a versão sem $K$. Aluno que lê literalmente sem se dar conta de que "constante absorvida" preserva os expoentes poderia ficar confuso sobre se os expoentes 0,25 e 0,75 são realmente $\alpha$ e $1-\alpha$ ou se foram "absorvidos" por alguma transformação.

**Impacto:** Menor. É mais uma ambiguidade didática que erro factual. O gabarito 5-passos (falta no checkpoint final — é um quiz tradicional, não `MicroQuizGraded`) deveria explicar melhor.

**Correção sugerida:** Remover a parenteses "(constante absorvida)" ou substituir por "(forma sem constante multiplicativa de normalização, sem prejuízo da Identidade de Roy)". ~2 min.

### Moderado #5 — Slide "Cobb-Douglas via log" (slide 251-267) calcula $\lambda^*=1/m$ incompletamente

**Localização:** `aula_2/slides/aula-02.qmd` linhas 258–264.

"Somando após multiplicar por $x_i$: $\alpha + (1-\alpha) = \lambda \cdot m$ ⇒ $\lambda^* = 1/m$."

**Verificação:** De $(α/x_1) = \lambda p_1$ e $((1-α)/x_2) = \lambda p_2$, multiplicando por $x_1$ e $x_2$ respectivamente: $\alpha = \lambda p_1 x_1$ e $1-\alpha = \lambda p_2 x_2$. Somar: $1 = \lambda(p_1 x_1 + p_2 x_2) = \lambda m$. Então $\lambda^* = 1/m$. ✓

**Detalhe pedagógico:** $\lambda^* = 1/m$ é o **multiplicador do Lagrangiano de $u = x_1^\alpha x_2^{1-\alpha}$** sob CD — mas o $\lambda^*$ depende da forma funcional. Aqui o professor está mostrando $\lambda^*$ da **log-transformação** ($\ln u = \alpha\ln x_1 + (1-\alpha)\ln x_2$), que é diferente do $\lambda^*$ da forma direta (por ordinalidade, $\lambda^*$ da forma direta vale $v/m$). Isso poderia gerar confusão quando Roy é aplicado depois usando $\partial v/\partial m = \lambda^*$: se o aluno decorou $\lambda^* = 1/m$ da log-forma e aplica em $v = m\cdot\phi(p)$ direta, não fecha. A sutileza é que Envelope aplicado à log-forma dá $\partial \ln v/\partial m = \lambda^*_{\log} = 1/m$, que é consistente com $v \propto m$; mas o valor do $\lambda^*$ canônico em Roy é da forma original.

**Impacto:** Confunde estudante mais atento. Vai aparecer no quiz pós ou exercício.

**Correção sugerida:** Adicionar uma frase no slide: "Esse $\lambda^* = 1/m$ é do Lagrangiano da **log-forma**. Na forma direta $u = x_1^\alpha x_2^{1-\alpha}$, o $\lambda^*$ canônico é $v/m$ — formas diferentes, invariante ordinal preservado via Envelope na Identidade de Roy (Bloco 2)." ~3 min.

### Moderado #6 — Ex 4 (c) do avaliativo tem alternativa confusa

**Localização:** `platform/aula-02-exerc.html` linhas 320–324.

A correta (iii) está escrita: "$v \approx 51{,}2$ (cálculo $100/(1\cdot 2^{0{,}5}\cdot 5^{0{,}2}) = 100/(1{,}414\cdot 1{,}380) \approx 100/1{,}951$)"

**Verificação:** $v = m/(p_1^{0{,}3} p_2^{0{,}5} p_3^{0{,}2}) = 100/(1^{0{,}3} \cdot 2^{0{,}5} \cdot 5^{0{,}2}) = 100/(1 \cdot 1{,}4142 \cdot 1{,}3797) = 100/1{,}9510 = 51{,}25$. ✓

A **parenteses explicativa dentro da alternativa** é problemática porque já adianta parte da derivação, reduzindo a dificuldade cognitiva do item. Se todas as outras alternativas não têm conta parcial, alguém marca (iii) por reconhecer a explicação "matemática" mesmo sem fazer a conta.

**Impacto:** Suavidade — aluno ganha pista. Calibre 🟡 fica mais próximo de 🟢.

**Correção sugerida:** Remover parenteses explicativa. Deixar "**(iii) $v \approx 51{,}2$**" sem detalhe de cálculo. ~1 min.

**Mas note:** o MD original (linha 244) tinha "$v \approx 54{,}0$" — já corrigido no HTML para $51{,}2$. Isto é um exemplo do desalinhamento MD↔HTML.

### Moderado #7 — Pós-quiz Q2 tem $h_1 = h_2 = 8$ sem destacar que é "acidente do enunciado"

**Localização:** `platform/aula-02-pos.html` linhas 58–74.

O gabarito afirma "$h_1 = h_2 = 8$ é acidente numérico" — verdade (com $\alpha=(1/4, 3/4)$ e $p=(1, 3)$ temos $h_1 = \alpha_1 e/p_1 = 0{,}25\cdot 32/1 = 8$ e $h_2 = \alpha_2 e/p_2 = 0{,}75\cdot 32/3 = 8$). Mas o fato de ter $h_1 = h_2 = 8$ torna o distrator (c) "6" e (a) "2" (ambos envolvendo manipulação direta de expoente e preço) mais plausíveis para quem não acredita no resultado "bonito demais". Os dois números $h_1 = h_2$ e alvo $\bar u = 8$ e $e = 32$ criam uma sequência $8 \to 32 \to 8$ que pode parecer suspeita.

**Impacto:** Aluno chega no resultado correto via Shephard mas desconfia e marca (c) ou (b). Calibre real é mais fácil do que aluno percebe, porque o número bonito "ajuda" quem tem fé.

**Correção sugerida:** Trocar preços para $p_1 = 2, p_2 = 4$, mantendo $\bar u = 8$ e expoentes $(1/4, 3/4)$. Resultado: $e = 1{,}755\cdot 8 \cdot 2^{1/4}\cdot 4^{3/4} = 14{,}04\cdot 1{,}189\cdot 2{,}828 = 47{,}2$; $h_2 = 0{,}75\cdot 47{,}2/4 = 8{,}85$. Distratores ficam realistas sem "coincidência $h_1 = h_2$". ~10 min.

### Moderado #8 — Q8 (Cournot) pós-quiz tem derivação algébrica em linha com substituição pouco limpa

**Localização:** `platform/aula-02-pos.html` linha 193.

"*Dividir por $m$ e inserir $(p_j/p_j)\cdot(x_i/x_i)$: $s_j + \sum_i s_i\cdot (p_j/x_i^M)\cdot (\partial x_i^M/\partial p_j)\cdot (x_i^M/p_j)$, isto é $s_j + \sum_i s_i\varepsilon_{ij} = 0$*"

**Problema:** Inserir $(p_j/p_j)(x_i/x_i)$ é um truque dedutivo ok mas apresentado sem quebrar em passos. O aluno MPE lê e não segue — fica "na fé". Derivação melhor: $x_j^M + \sum_i p_i \partial x_i^M/\partial p_j = 0$ → dividir por $m$ → $s_j + \sum_i (p_i/m)\partial x_i^M/\partial p_j = 0$ → multiplicar e dividir termo a termo por $p_j x_i^M/(p_j x_i^M)$: $s_j + \sum_i s_i \cdot \varepsilon_{ij} = 0$ onde $\varepsilon_{ij} = (\partial x_i^M/\partial p_j)(p_j/x_i^M)$.

**Impacto:** Derivação fica opaca, gabarito-5-passos não cumpre sua promessa.

**Correção sugerida:** Reescrever o passo 2 de Q8 em 3 sub-passos separados por "→". ~5 min.

### Moderado #9 — Q10 pós-quiz (🔴🔴) peer-review termina com rodapé denso

**Localização:** `platform/aula-02-pos.html` linha 238.

Termina com "*A armadilha mais sutil é (c) pelo ceticismo performático — rejeitar por incapacidade de recuperar $u$ exatamente, quando o teorema dá a preferência (ordinal, que é o que importa). O argumento via envolvente convexa é padrão em análise convexa (Rockafellar 1970); chega em economia via Diewert e Deaton-Muellbauer.*"

**Problema:** Citação a Rockafellar e Diewert sem ano/página. Diewert 1974 é citado de forma flutuante — não é claro qual paper.

**Verificação de referência:** Diewert (1974) — "Applications of Duality Theory" em Intriligator & Kendrick (eds.), *Frontiers of Quantitative Economics* Vol. II, North-Holland. Deaton & Muellbauer (1980) — "An Almost Ideal Demand System", *American Economic Review* 70(3): 312–326. Rockafellar (1970) — *Convex Analysis*, Princeton U. Press. Todas reais e bem-estabelecidas.

**Impacto:** Menor — referências corretas, só falta detalhar no peer-review.

**Correção sugerida:** Marcar como `<!-- [VERIFICAR DOI] -->` se for manter citação cirúrgica; ou apenas remover citações específicas do peer-review (padrão: citações ficam em "Extensão", peer-review é crítica). ~2 min.

---

## Achados menores (🟢 — polimento, não bloqueia)

### Menor #1 — Q5 pós-quiz (item c falso) tem redação densa

`platform/aula-02-pos.html` linhas 117–123. A correta (b) afirma duas coisas numa alternativa ("$e$ homogênea grau 1; $h$ homogênea grau 0"). Calibre 🟡 ok, mas duas sub-afirmações em uma alternativa é estilo mais pesado. Aceitável.

### Menor #2 — Pré-quiz Q9 tem peer-review ligeiramente repetitivo

`platform/aula-02-pre.html` linhas 207–211. Explica de novo o que a alternativa correta (a) já tinha dito. Pode ser enxugado em 30%.

### Menor #3 — Slides com fragments `{.fragment}` inconsistentes

Alguns slides (e.g., linha 101-103) usam fragments para revelar linhas; outros (linha 201) revelam parágrafos inteiros. Não é inconsistência *errada*, mas a reveal rítmica fica diferente entre blocos. Padronizar em uma política só.

### Menor #4 — Pré-aula material, seção 6 (exercícios de papel) tem CSS inline solto

`platform/aula-02.html` — vários `style="margin-top:1rem"` inline. Poderia ir para `platform.css`. Dívida técnica de frontend, sem impacto pedagógico.

### Menor #5 — `durante_aula.md` Bloco 4 armadilha "No passo 4, derivar $e$ em $\bar u$ ao invés de $p_1$"

Linha 259. Erro pedagogicamente plausível, mas a pergunta é "qual armadilha mais frequente?" — experimentalmente, aluno mais frequentemente usa Shephard para o ÍNDICE errado (confunde 1 e 2), não para a variável errada ($\bar u$ vs $p_1$). Pequena calibração de diagnóstico.

### Menor #6 — CSS `.eq-punch`, `.eq-key`, `.card` redefinições

Os slides herdam `theme.scss` de `aula_1/`. Cópia em `aula_2/slides/` (CLAUDE.md manda). Verificar se está presente — não consegui abrir `theme.scss` na auditoria mas assumo que foi copiado conforme processo.

### Menor #7 — Box Mundo na seção 4 e Box Brasil na seção 5 da pré-aula

Há 1 box Brasil e 1 box Mundo no material — isso atende o "mínimo" do padrão ZaE, mas o padrão estrito é "mínimo 3 Box Mundo por capítulo" (CLAUDE.md §2). Em pré-aula de 9 seções, 2 boxes é enxuto. Poderia ter 1 Box Mundo extra (ex.: AIDS aplicado a política fiscal do Banco Mundial, com referência Deaton-Muellbauer 1980).

---

## Achados cruzados (entre artefatos)

### Consistência MD↔HTML (avaliativos)

**Crítica.** Já coberta em Crítico #2 e #3. Checklist do que diverge:

- Ex 2 (e) MD diz $s_1 = 2/3$ (ERRADO); HTML diz $s_2 = 2/3$, $s_1 = 1/3$ (correto).
- Ex 2 ordem de sub-itens: MD pergunta (b) Marshalliana, (c) valor numérico, (d) parcela; HTML pergunta (b) parcela $s_1$, (c) Marshalliana numérica, (d) parcela $s_2$, (e) interpretação. Numeração trocada — aluno não abre o MD, mas qualquer auditoria ou professor que use MD como referência se atrapalha.
- Ex 3 (b) MD diz "$e \approx 11{,}31$" como exemplo em um momento e depois auto-corrige para $19{,}02$; HTML tem $19{,}02$ como correta.
- Ex 4 (c) MD diz "$v \approx 54{,}0$" (ERRADO, 100/(1,414·1,380) ≠ 54,0); HTML diz "$v \approx 51{,}2$" (correto).

**Ação:** reescrita total do MD é o único caminho viável. Tentar patch-by-patch deixa riscos.

### Consistência pré-aula↔slides↔quiz pós

Leituras que a pré-aula prometeu (ZaE cap. 4; N&S §§4.1–4.7) são consumidas pelos slides? **Sim** para Utility Max (§4.1/4.2/4.3 → Bloco 1), Indireta (§4.4 → Bloco 2), EMP/gasto (§4.6/4.7 → Bloco 3). §4.5 (Lump Sum Principle) é **mencionado** no roteiro de autocalibração (durante_aula.md linha 305 sugere "mini-revisão do Lagrangiano do N&S cap. 2") mas **não aparece** nos slides. Lacuna menor — não prejudica a aula, mas a pré-aula prometeu conteúdo que não será formalmente revisitado.

### Dependências temporais — Slutsky violation

**Critical.** Slutsky aparece em:

| Artefato | Referência | Contexto | Aceitável? |
|---|---|---|---|
| Slides 776–792 | Ponte para Aula 3 | Prévia explícita, identificada | ✅ OK |
| durante_aula.md 278–282 | Ponte para Aula 3 | Prévia explícita | ✅ OK |
| pós-quiz Q6 🔴 | Derivação de Slutsky | "Ponte pré-Aula 3", identificado | ✅ OK (CLAUDE.md permite) |
| pós-quiz Q10 🔴🔴 | Recíproca da dualidade | Usa só Aula 2 | ✅ OK |
| Ex 4 MD gabarito "Extensão (Aula 3)" | Menção didática | Só aponta para frente | ✅ OK |
| **Ex 5 (d) avaliativo** | Aplicar Slutsky | **Exigido sem estar identificado como pós-Aula 3** | ❌ VIOLA |
| **Ex 5 (e) avaliativo** | Interpretação Slutsky | **Idem** | ❌ VIOLA |

Ex 5 (d) e (e) são os **dois únicos** casos onde Slutsky é exigido **sem vir precedido de apresentação formal** e **dentro de um artefato avaliativo** — o exato caso que o CLAUDE.md proíbe.

### Notação

Auditei: `\succeq` consistente (não achei `\succsim`); `\text{TMS}` consistente (não achei `MRS`); vírgula decimal com `\{,\}` em math (achei uso consistente). Uso de `$...$` inline em math: **zero**, conforme regra. Isso é um ponto positivo — notação padronizada.

### Calibre

- 🟢 (Ex 1): uma parcela constante em CD — 4 sub-itens mecânicos. **No piso.** ✅
- 🟡 (Ex 2, 3, 4; pré-quiz todo; pós-quiz 1–5): CES, CD 3D, Roy log-linear, Hicksianas. **Calibre N&S 12e cap. 4.** ✅
- 🔴 (Ex 5, 6; pós-quiz 6–10): Slutsky derivado, propriedades da matriz, recíproca de dualidade. **Calibre Jehle-Reny §2.1.** ✅ (exceto pela violação temporal do Ex 5)

Nenhuma 🟡 está acima do N&S; nenhuma 🔴 está abaixo do J-R; MWG não é citado (apenas Rockafellar 1970 em Q10 pós — aceitável). **Calibre respeitado.**

### Tempo-alvo declarado vs. carga real

**Totais:**
- Pré-aula material: 90–120 min
- Quiz pré: 30–45 min
- Quiz pós: 45–70 min
- Exerc avaliativos: 2h30–3h (150–180 min)
- **Soma:** 5h35 — 7h15

Essa é a faixa-padrão MPE (~6h/semana por aula). Dentro do contrato. Para um aluno médio MPE:

- Pré-aula (micro-checkpoints + leitura dupla + 3 exerc papel): realista em 100–120 min para aluno atento.
- Exerc avaliativos com 29 sub-itens, incluindo Ex 5 Slutsky (que hoje é 1h+ para quem nunca viu): realista em 3h+ se o Slutsky ficar. Se Slutsky for removido (Crítico #1), cai para 2h30 confortável.

**Veredicto:** tempo-alvo honesto, assumindo Crítico #1 corrigido.

---

## Peer-review desta auditoria

**Onde estou menos confiante:**

- **Números do Ex 2 HTML na forma corrigida.** Recalculei $s_1 = 1/3$, $x_1^M \approx 3{,}33$ e bate com HTML. Mas o peer-review econômico "bem caro tem parcela maior em $\sigma<1$" exige checar contraexemplo: se $\alpha = 0{,}9, \sigma=0{,}5, p_1=1, p_2=4$, então $s_1 = 0{,}9^{0{,}5}\cdot 1/(0{,}9^{0{,}5} + 0{,}1^{0{,}5}\cdot 2) = 0{,}9487/(0{,}9487 + 0{,}6325) = 0{,}9487/1{,}5812 = 0{,}600$. Bem 1 é barato e tem $\alpha$ alto — parcela alta por dominância de $\alpha$, não por preço. Então "gasta mais no caro" é **intuição local** que depende do peso $\alpha$. A questão Ex 2 usa $\alpha = 1/2$ (simétrico), então bem caro sobe mesmo. Caso geral: o sinal depende de $(1/\alpha^\sigma)\cdot p_i^{1-\sigma}$ crescer com $p_i$, o que em $\sigma < 1$ cresce com $p_i$ se $\sigma \in (0, 1)$, pois $p^{1-\sigma}$ tem derivada positiva. **Ok, a afirmação está correta no caso auditado.**

- **Ex 3 verificação $u(h) = 4$.** Fiz a conta em cadeia: $9{,}51^{0{,}5} = 3{,}0838$; $2{,}378^{0{,}25} = 1{,}2419$; $1{,}189^{0{,}25} = 1{,}0442$. Produto: $3{,}0838 \times 1{,}2419 \times 1{,}0442 = 4{,}0000$. Confirmado.

- **Ex 5 (d) Slutsky: $\partial x_1^M/\partial p_2 = 0$ em CD.** Calculei $\partial h_1/\partial p_2$ direta via $h_1 = \alpha_1 e/p_1 = (2/3)K\bar u p_1^{\alpha_1-1}p_2^{\alpha_2}$: $\partial/\partial p_2 = (2/3)\alpha_2 K\bar u p_1^{-1/3} p_2^{-2/3} = (2/3)(1/3)(1{,}89)(4)(1)(0{,}3969) = 0{,}667 = 2/3$. Slutsky: $2/3 - 1\cdot 2/3 = 0$. Identidade teórica: $x_1^M = 2m/(3p_1)$, derivada em $p_2$ é zero por construção. **Mas o achado crítico não é a conta — é o fato de pedir Slutsky antes da Aula 3.**

**O que esta auditoria provavelmente perdeu:**

- **UX:** não abri as páginas HTML em browser. MathJax, responsividade, micro-checkpoint scroll-back, gating de seções — tudo assumido funcionando. Se houver regressão de JS, cai o castelo.
- **Verificação da existência de exercícios 4.1, 4.3, 4.5 no N&S 12e real.** Preciso do PDF aberto para confirmar.
- **Referência a Diewert (1974).** Confirmei existência mas não verifiquei que o teorema citado é exatamente o que J-R §2.1 usa.
- **Consistência do `calendario.js`.** Ex 5 avaliativo tem `GABARITO_RELEASE_FALLBACK = new Date('2026-05-07T00:00:00-03:00')` — confere com a exceção unificada Aula 1 ∪ Aula 2.

**Um cético perguntaria:** "sua nota 7.8 é dura demais? Como a Aula 1 teve 8.5 com achados similares?" Resposta honesta: a Aula 1 também teve problema de ordem de slides e notação inconsistente, e eu dei 8.5 sabendo que ia ao ar a 4h do início da aula. A Aula 2 tem **7 dias** para correção e seus achados são mais *estruturais* (violação de pré-requisito, stream-of-consciousness em SSOT, alternativa com dupla correta). Rebaixei por isso. Se os Críticos 1–6 forem corrigidos, a nota sobe para ~9.0. Se adicionalmente os Moderados 1–4 forem corrigidos, sobe para 9.5+.

---

## Plano de correção — top 10 ações priorizadas

### Antes da abertura da pré-aula aos alunos (idealmente ainda esta semana)

1. **[🔴 ~40 min]** Reformular **Ex 5 avaliativo (d) e (e)**: remover exigência de Slutsky, substituir por itens sobre simetria de Shephard ou segunda derivada de $e$. Alternativa: mover os dois itens para pós-quiz como Q11/Q12 🔴🔴. (Crítico #1)

2. **[🔴 ~90 min]** **Reescrever `aula_2/exercicios-avaliativos.md` do zero**, usando o HTML como fonte correta. Remover toda linguagem de "correção aplicada", "recálculo", "Hmm". MD tem que servir como referência limpa para futuras auditorias. (Crítico #2, #3)

3. **[🔴 ~10 min]** Corrigir **Ex 4 (e)** do avaliativo — reformular (iv) para não ser equivalente a (i). Sugestão: trocar (iv) por "Quasilinear em $m$" (falso). Mudar `data-correct` se necessário. (Crítico #4)

4. **[🔴 ~5 min]** Corrigir **slide 739** da `aula-02.qmd` — substituir derivação quebrada por conta limpa $\partial e/\partial p_1 = \bar u\sqrt{p_2/p_1} = 2{,}5$. Re-renderizar o `.html`. (Crítico #5)

5. **[🔴 ~20 min]** Substituir **pré-quiz Q10** por questão nova sobre tema diferente (sugestão: $\partial e/\partial \bar u$ = multiplicador, ou homogeneidade grau 1 de $e$ em $p$). Incluir gabarito 5-passos novo. (Crítico #6)

### Antes da liberação do gabarito (07/05 00:00)

6. **[🟡 ~15 min]** Reescrever **Ex 1 (d) alternativa (iv)** para que seja claramente diferente da correta (ii). Sugestão: $v = m^\alpha/p_1^\alpha + m^{1-\alpha}/p_2^{1-\alpha}$ (soma, não produto). (Moderado #2)

7. **[🟡 ~30 min]** Verificar que **N&S 12e exercícios 4.1, 4.3, 4.5** correspondem exatamente aos enunciados descritos na pré-aula S6. Se não baterem, renumerar ou renomear como "exercícios propostos" de autoria. (Moderado #3)

8. **[🟡 ~10 min]** Reequilibrar **pós-quiz Q2** trocando os preços para $p_1=2, p_2=4$ — evita a coincidência $h_1 = h_2 = 8$. (Moderado #7)

9. **[🟡 ~10 min]** Adicionar frase no **slide 258-264** clarificando que $\lambda^* = 1/m$ é específico da log-forma (ordinalidade). (Moderado #5)

### Pós-aula 2 (antes da Aula 3, 06/05)

10. **[🟢 ~30 min]** Coletar **telemetria real de tempo** dos artefatos via `page_visits` e `section_progress` após primeira leva. Calibrar tempo-alvo da Aula 3 com mediana observada + P75.

---

## Observação final sobre a dinâmica do bundle

O bundle da Aula 2 foi gerado por um agente `prof-mpe-micro` trabalhando em fases — identificável pelo stream-of-consciousness deixado no MD (linhas "Hmm, precisa verificar", "Recálculo cuidadoso", "vou ajustar no HTML"). **O agente corrigiu o HTML mas não limpou o MD**. Isto é um padrão de risco que deveria entrar no CLAUDE.md:

> **Protocolo MD↔HTML em avaliativos:** MD é SSOT *final*, não rascunho. Nunca commitar MD com linguagem de "Hmm", "recálculo", "vou ajustar". Se precisou corrigir HTML durante a escrita, **reescreva o MD limpo depois**. MD deve ser lido como se o aluno fosse abrir — mesmo que o aluno não abra.

Esta regra provavelmente deveria ser adicionada ao §Padrão canônico do CLAUDE.md como anti-padrão listado.

---

## Resumo executivo

- **Nota:** 7.8 / 10.
- **Bundle NÃO está pronto para deploy** no estado atual.
- **Blockers:** (1) Slutsky em Ex 5 avaliativo antes da Aula 3; (2) MD dos avaliativos com stream-of-consciousness e erros factuais; (3) Ex 4 (e) tem duas alternativas corretas; (4) slide 739 com derivação quebrada projetada ao vivo; (5) pré-quiz Q4 e Q10 duplicadas; (6) Ex 2 (e) MD contradiz HTML na direção econômica.
- **Re-rodada necessária:** ~4h de trabalho (itens 1–5 do plano de correção). Após isso, nota esperada ~9.0.
- **Aula 2 em 29/04** — há tempo.
