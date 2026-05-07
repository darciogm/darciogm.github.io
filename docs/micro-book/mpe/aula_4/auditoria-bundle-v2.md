# Auditoria Referee 2 — Bundle Aula 4 (EG trocas / Edgeworth) — Round 2 hostil

> **Auditor:** `prof-mpe-micro` em modo Referee 2 implacável (terceira camada adversarial — sobre v1 e plano v1).
> **Data:** 2026-05-07.
> **Posição:** Esta v2 NÃO substitui a v1. É uma camada adicional que critica a v1, audita os patches do plano v1, e mede o que o produtor decidiu publicar como "9.85". O bundle vai pra sala em 6 dias (qua 13/05 19:30) — calibrar agora, não depois.
> **Artefatos auditados (estado em 2026-05-07):** os 5 da v1 + `aula_4/pre_monitoria.md` + `platform/pre-monitoria-02.html` (commits 7577e6f e c14a1b1, posteriores ao plano v1 às 23:05 de 2026-05-06).

---

## 1. Veredito em 3 linhas

**Recomendação: NÃO publicar como está. Publicação condicional após patches obrigatórios listados em §3.** O bundle melhorou genuinamente desde a v1 (G1, G2, G5, M1, M3, M4, M7, M8 endereçados; setup canônico unificado em $p_1^* = 8/7$; 2 slides ESTOURA quebrados; SSOT do exerc-md limpa) — mas o plano v1 declarou 9.85 e na verdade está em **8.6/10 honestos**: introduziu defeitos novos no quiz pré-aula (Q9 com aritmética errada), na pré-monitoria (Leontief simétrico mal-analisado e marcador `TODO Alberto refinar` na SSOT), e deixou um defeito de cross-reference grave (Q9 do pós-quiz aponta para "slide #29" mas o conteúdo Debreu-Scarf está no slide **#17**). A nota do plano v1 (9.85) foi inflada porque ele não auditou a pré-monitoria 2 (criada após o plano), não testou cross-references entre artefatos, e contou ações como entregues sem verificar regressões.

**Nota da v2: 8.6/10.** Acima de Aula 3 pré-patches (8.4) mas abaixo de Aula 1 final (9.7). Pós-patches obrigatórios desta v2: ~9.4. Pós + opcionais: ~9.7.

---

## 2. Críticas à auditoria v1 e ao plano v1

A v1 fez um trabalho substancial — pegou G1–G5 e M1–M10 com olho clínico — mas teve **6 falhas materiais** que o produtor herdou:

### 2.1. v1 contou slides errado e a Q9 do pós-quiz foi escrita por cima do erro

A v1 disse "**Slide #29** anuncia em UMA frase: 'Quando $I$ cresce... Edgeworth-Debreu'" (auditoria-bundle.md:158, IC4). O gabarito da Q9 do pós-quiz copiou isso: "**Como anunciado no slide #29 da aula**, este é o teorema de Debreu-Scarf" (`aula-04-pos.html:207-208`). **Mas a contagem real, hoje, com 59 slides no `aula-04.qmd`, é #17** ("Núcleo (2/2) — leitura visual", linha 311 do qmd). O aluno que abre o slide projetado #29 vai ver "Cálculo em CD simétrica (2/3) — fechar mercado 1" — totalmente desconexo. Defeito que **só uma auditoria que efetivamente conta slides** detectaria. v1 contou de cabeça e errou; produtor copiou.

### 2.2. v1 não auditou `pre_aula.md` linha-a-linha contra slides

A v1 listou IC4 sobre o slide #29, mas não pegou o **contraexemplo de LNS divergente** entre `pre_aula.md:302` (que usa $\omega^A=(2,2), \omega^B=(0,0)$ — caso degenerado com $B$ sem dotação, $p_1=0$ patológico) e `aula-04.qmd:678` (que usa $\omega^A=(2,0), \omega^B=(0,2), u^B=x_1^{1/2}x_2^{1/2}$ — construção limpa com Pareto-superior $\tilde x = ((1,1),(1,1))$). Aluno que estudar pelo material da pré-aula vai ver uma construção; quem assistir à aula vai ver outra. **Inconsistência de SSOT que a v1 não pegou** (G2 da v1 era sobre o exerc-md, G6 deveria ter sido sobre o pre_aula vs slides).

### 2.3. v1 declarou que a pré-quiz Q9 estava OK e ignorou a aritmética

A pré-quiz Q9 afirma no gabarito: "$L$ equações para $L$ incógnitas, mas uma é redundante (Walras) e outra é livre (homogeneidade) — só **$L - 2$ equações independentes**, $L - 1$ incógnitas livres após normalização. Em $L = 2$: 0 equações independentes após Walras, 1 incógnita livre" (`aula-04-pre.html:200`). **Errado. A contagem canônica é $L-1$ equações independentes (Walras subtrai equações) para $L-1$ preços livres (homogeneidade subtrai incógnitas).** O próprio quiz pós Q10 (`aula-04-pos.html:218`) escreve a contagem correta: "$L-1$ equações independentes vs. $L-1$ incógnitas livres — sistema bem-posto após ajustes". O Exercício 5 do avaliativo escreve a mesma coisa correta. O gabarito da pré-quiz **contradiz pos-quiz e exercícios avaliativos** — aluno consciencioso percebe e perde confiança no bundle. A v1 não checou. **Em $L=2$, é 1 equação independente, não 0.**

### 2.4. v1 inflacionou a "auto-crítica do produtor"

A v1 listou "ponto quente #3: Slide 1º TBE (3/4) LNS densidade ~10" como "ACEITAR a auto-crítica é INVÁLIDA — score real ~7.5". OK. **Mas não auditou o ponto quente #5** ("Edgeworth sem JSXGraph interativo") com igual rigor. v1 aceitou "pendente do Darcio" e parou. A v2 audita: o iframe `graficos/edgeworth.html` foi criado em 23:15 de 06/05 (commit 2e47b61, antes do plano v1 às 23:05 mas mencionado nele). **Está renderizado e linkado no slide #12 do qmd. Defeito coletivo: nem a v1 nem o plano v1 confirmam a existência do iframe**. Se eu não tivesse aberto o arquivo, ficaria assumindo que era pendência.

### 2.5. Plano v1 declarou +0.20 ganho com "correção do Ex2 do MD" — mas o exerc-MD que existia hoje **já estava corrigido** (commit 897b472 do dia anterior?). Não consigo distinguir se o plano v1 está medindo um delta real ou cobrando crédito por trabalho já feito.

Spot-check: `exercicios-avaliativos.md:62-115` no estado atual usa $p_1^* = 8/7$ corretamente, sem `Hmm — recalcular`, sem `[NOTA EDITORIAL]`, sem `[Decisão final]`. O grep que rodei não pega nada parecido. **Mas o plano v1 diz que esses defeitos existiam** quando foi escrito (linha 22, "marca 8/5 como CORRETA, errado"). Ou o produtor já tinha corrigido antes do plano v1, ou o plano v1 acertou em corrigir. De qualquer forma, **+0.30 de delta declarado em §6 do plano v1 deve ser descontado** se a versão "antes" não existia mais.

### 2.6. Plano v1 não auditou a pré-monitoria criada DEPOIS dele

Commits 7577e6f e c14a1b1 criaram `pre_monitoria.md` (refinamento) e `platform/pre-monitoria-02.html` (esqueleto + refinamento). Plano v1 mencionou pré-monitoria como **D2 (DECISÃO DARCIO pendente)**. Mas o produtor seguiu adiante e a colocou no ar. **Resultado: pré-monitoria que ninguém auditou.** Eu auditei agora. Achei 3 defeitos materiais (§3 abaixo: B1, B2, B5). Plano v1 calculou o ganho de +0.07 da pré-monitoria assumindo execução perfeita.

---

## 3. Top problemas ordenados por severidade

### 🔴 Bloqueantes (devem ser corrigidos antes de 13/05)

#### B1. Quiz pré-aula Q9 — gabarito com aritmética errada (CONTRADIZ pós-quiz Q10 e Exerc 5)

**Arquivo:** `platform/aula-04-pre.html:200`
**Trecho exato:** *"O sistema $z(p) = 0$ tem $L$ equações para $L$ incógnitas, mas uma é redundante (Walras) e outra é livre (homogeneidade) — só $L - 2$ equações independentes, $L - 1$ incógnitas livres após normalização. Em $L = 2$: 0 equações independentes após Walras, 1 incógnita livre."*

**Por que está errado:** Walras é uma redundância nas **equações** (subtrai 1 equação independente). Homogeneidade é uma redundância nas **incógnitas** (subtrai 1 incógnita livre via normalização). As duas reduções operam em dimensões diferentes; **não se somam para "$L-2$ equações"**. A contagem correta é $L-1$ equações independentes vs. $L-1$ incógnitas livres. Em $L=2$: **1 equação independente** (qualquer um dos dois mercados; o outro fecha por Walras) para **1 incógnita livre** ($p_1/p_2$). Não 0 vs. 1.

**Inconsistência cruzada:** o pós-quiz Q10 (linha 218) escreve corretamente "$L-1$ equações independentes (Walras remove 1) vs. $L-1$ incógnitas livres (normalização remove 1)". O Exercício 5 (linha 250 do MD, linha 361 do HTML) idem. **O bundle se contradiz a si mesmo no mesmo conceito.**

**Impacto pedagógico:** aluno meticuloso percebe a contradição entre pré-quiz e pós-quiz, perde confiança. Aluno menos meticuloso decora a contagem errada e a aplica em prova.

**Correção sugerida:** reescrever passo "2. Derivação" do gabarito Q9 do pré-quiz para refletir a contagem correta. Exemplo:
> "Implicação: o sistema $z(p) = 0$ tem $L$ equações para $L$ incógnitas, mas Walras dá uma redundância nas equações ($L-1$ independentes) e homogeneidade dá uma redundância nas incógnitas (1 dimensão livre, fixada por normalização). Restam $L-1$ equações independentes para $L-1$ preços livres — sistema bem-posto. Em $L = 2$: 1 equação independente (zerar mercado 1 ⇒ Walras zera mercado 2) para 1 incógnita livre ($p_1/p_2$)."

**Tempo:** 5 min. **Δnota:** +0.18 (defeito material em quiz para nota).

#### B2. Quiz pós-aula Q9 — referência cruzada errada para "slide #29"

**Arquivo:** `platform/aula-04-pos.html:207, 208`
**Trecho exato:** *"Como anunciado no **slide #29 da aula**, este é o teorema de Debreu-Scarf (1963)..."* e *"a intuição 'mais coalizões = mais bloqueios = núcleo menor' é alcançável (anunciada no slide #29 da aula)."*

**Por que está errado:** o slide #29 do `aula-04.qmd` (renderizado) é **"Cálculo em CD simétrica (2/3) — fechar mercado 1"** (linha 482 do qmd). Conteúdo: álgebra de mercado 1 em $u = x_1^{1/2}x_2^{1/2}$. **Não tem nada sobre Debreu-Scarf, núcleo, ou réplica.** O conteúdo de Debreu-Scarf está no slide **#17 ("Núcleo (2/2) — leitura visual", linha 311 do qmd)**.

**Origem do erro:** auditoria v1 (IC4, auditoria-bundle.md:158) falou em "slide #29" como sendo o slide do núcleo. v1 contou errado (provavelmente excluiu pausas/dividers ou contou de uma versão pré-iframe). Plano v1 herdou o erro sem checar; produtor escreveu o gabarito copiando a referência da v1.

**Impacto pedagógico:** aluno consciencioso que abrir o slide #29 (pelo número) ou rolar até onde a aula falou de Debreu-Scarf vai encontrar um slide sobre álgebra CD. Quebra de promessa pedagógica explícita do gabarito.

**Correção sugerida:** trocar "slide #29" por "slide 'Núcleo (2/2)'" em ambas as ocorrências (linha 207 e 208 de `aula-04-pos.html`). Referência por título é robusta a renderizações que renumeram. Alternativa: contar de novo e escrever "slide #17" (o número exato hoje), mas se o qmd ganhar mais um slide o número quebra. **Referência por título é canônica.**

**Tempo:** 2 min. **Δnota:** +0.10.

#### B3. Pré-aula material vs. slides — contraexemplo de LNS divergente

**Arquivo:** `aula_4/pre_aula.md:302` vs. `aula_4/slides/aula-04.qmd:678`

**Pre_aula.md:** *"Considere $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$... Em $\omega^A = (2, 2)$, $\omega^B = (0, 0)$ (caso patológico de fronteira)... Equilíbrio em $p_1 = 0$ pode existir, mas $A$ está saciado..."*

**Slide #42 (qmd:678):** *"$u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$... $u^B = x_1^{1/2}x_2^{1/2}$. $\omega^A = (2, 0)$, $\omega^B = (0, 2)$. Em $p^* = (1, 1)$: $A$ é indiferente entre vender ou não bem 1 acima de 1... EC com $x^A = (2, 0), x^B = (0, 2)$ é possível, mas a alocação $\tilde x^A = (1, 1), \tilde x^B = (1, 1)$ é viável e Pareto-superior."*

**Por que está errado (pre_aula):** o cenário do pre_aula com $\omega^B = (0,0)$ tem $B$ **sem dotação**, o que torna a economia degenerada (apenas $A$ tem recursos; nada para trocar). Equilíbrio com $p_1=0$ é matematicamente patológico — preços devem ser não-nulos por definição de EC. A construção é confusa e não exibe a Pareto-superioridade explícita.

**Por que slide está bom:** $\omega^A = (2, 0), \omega^B = (0, 2)$ tem dotação simétrica, $u^B = x_1^{1/2}x_2^{1/2}$ é CD usual, e a alocação Pareto-superior $\tilde x = ((1,1),(1,1))$ é viável e mostra explicitamente que $B$ ganha sem que $A$ perca (saturado). Construção limpa e numerável.

**Impacto pedagógico:** aluno que estudou pelo MD da pré-aula encontra um construto; quem assistir à aula encontra outro. Inconsistência cruzada SSOT-MD ↔ slides — exatamente o tipo de defeito que a v1 puniu (G2 v1) mas não viu replicado aqui.

**Correção sugerida:** reescrever `pre_aula.md:302` com a construção do slide. Acrescentar 1 frase de bridge: "Em $p^* = (1,1)$: $A$ está saciado em bem 1 (utilidade marginal nula); EC com $x^A=(2,0), x^B=(0,2)$ existe. Mas $\tilde x = ((1,1),(1,1))$ é viável, $A$ inalterado por saciedade, $B$ melhora estritamente — Pareto-superior. Sem LNS, mercado deixa dinheiro na mesa."

**Tempo:** 8 min. **Δnota:** +0.10.

#### B4. Pré-monitoria 2 não está vinculada no portal

**Arquivo afetado:** `platform/portal.html` (sem entrada navegável para `pre-monitoria-02.html`).

**Sintoma:** `grep -n "pre-monitoria" portal.html` retorna zero linhas. A página existe (`platform/pre-monitoria-02.html`, 554 linhas) e o calendário a referencia (`js/calendario.js:58, PRE_MONITORIAS[1]`). Mas **o aluno não tem como chegar lá pelo portal** — só por URL direta. Janela: abre 16/05 sáb 12:00, fecha sex 22/05 22:00.

**Por que é bloqueante:** o plano v1 declarou +0.07 de Δnota da pré-monitoria, mas se o aluno não a abre, o ganho é zero. Pior: o calendário **anuncia** que a pré-monitoria está disponível, criando promessa não-cumprida.

**Correção sugerida:** adicionar bloco `PRE_MONITORIAS` no `portal.html` com card linkando para `pre-monitoria-02.html` quando `MPE_CALENDARIO.preMonitoriaWindow(2)` retorna true. Padrão: análogo ao card das aulas, com badges "Formativa — não conta nota" e "Pré-monitoria com Alberto".

**Tempo:** 30–45 min (componente novo no portal, requer template). **Δnota:** +0.07. **Owner:** Darcio (precisa decidir se quer entry separada ou anexo a um card de aula).

### 🟡 Altos (corrigir antes de habilitar pré-monitoria 2 em 16/05)

#### A1. Pré-monitoria 2 — análise de Leontief simétrico está errada

**Arquivo:** `aula_4/pre_monitoria.md:50-58` e `platform/pre-monitoria-02.html:99-106`.
**Trecho:** *"Mercado bem 1: $\sum_i m^i/(p_1+p_2) = (p_1 \cdot 6 + p_2 \cdot 6)/(p_1+p_2) = 6 = \bar\omega_1$ ✓ para qualquer $(p_1, p_2) \gg 0$. ... Em Leontief simétrico com dotação simétrica, o EC tem alocação única mas preço relativo indeterminado — qualquer $p_1/p_2 \in (0, \infty)$ funciona."*

**Por que está errado:** o cálculo do mercado fechar para qualquer $p$ é **trivial e não caracteriza EC** — a igualdade $\sum_i x_1^i = \sum_i m^i/(p_1+p_2) = (p \cdot \bar\omega)/(p_1+p_2) = (p_1 \bar\omega_1 + p_2 \bar\omega_2)/(p_1+p_2)$ só é igual a $\bar\omega_1$ quando $\bar\omega_1 = \bar\omega_2$ (dotação total simétrica nos dois bens). Aqui $\bar\omega = (6,6)$, então sim, o mercado bem 1 sempre fecha em $\bar\omega_1 = 6$ — **mas a alocação NÃO é única**. Em $p_1 = 2, p_2 = 1$: $m^A = 2\cdot 4 + 1 \cdot 2 = 10$, $x_1^A = x_2^A = 10/3 \approx 3{,}33$. $m^B = 2\cdot 2 + 1 \cdot 4 = 8$, $x_1^B = x_2^B = 8/3 \approx 2{,}67$. Soma bem 1: $10/3 + 8/3 = 18/3 = 6$ ✓. **Alocação $(10/3, 10/3), (8/3, 8/3)$, diferente de $(3,3),(3,3)$.** O texto diz "alocação única, preço indeterminado" mas é o oposto: **família contínua de EC parametrizada por $p_1/p_2$**.

**Impacto pedagógico:** ponto canônico de monitoria (Leontief gera multiplicidade de EC) descrito de forma matematicamente errada no material que abre 9 dias antes da monitoria. Aluno bom percebe e abala confiança; aluno mediano decora errado e perde Aula 6 quando isso volta.

**Correção sugerida:** reescrever o trecho para: *"Em $p_1 = p_2 = 1$, alocação é $x^A = x^B = (3,3)$. Mas em $p_1 = 2, p_2 = 1$, alocação muda: $m^A = 10$, $x^A = (10/3, 10/3)$; $m^B = 8$, $x^B = (8/3, 8/3)$. **Cada $p_1/p_2$ gera uma alocação diferente — todas viáveis, todas Pareto.** Continuum de EC. Em Leontief simétrico com dotação simétrica nos dois bens, a 'unicidade' do EC quebra: existe família a 1 parâmetro de equilíbrios."*

**Tempo:** 10 min (MD + HTML). **Δnota:** +0.08.

#### A2. Pré-monitoria 2 — marcador `TODO Alberto refinar` na SSOT

**Arquivo:** `aula_4/pre_monitoria.md:170`
**Trecho:** *"**Limite metodológico (TODO Alberto refinar — exemplo numérico fechado).** Construir um setup concreto..."*

**Por que está errado:** SSOT em produção carregando "TODO Alberto refinar". É exatamente o tipo de "diário do produtor" que a v1 puniu (G2 v1). O HTML em `platform/pre-monitoria-02.html:248-251` reescreveu como "Limite metodológico — Alberto fecha o exemplo numérico no sábado" (limpo). MD continua com TODO. **Inconsistência SSOT-MD ↔ HTML idêntica ao G2 da v1**, em arquivo novo.

**Correção sugerida:** trocar `(TODO Alberto refinar — exemplo numérico fechado)` por `— exemplo numérico fechado é o gancho para sábado` no MD. **Tempo:** 1 min. **Δnota:** +0.03.

#### A3. Quiz pós Q4 — alternativa (b) com notação ambígua

**Arquivo:** `platform/aula-04-pos.html:101`
**Trecho:** *"(b) $x^B = (x_1^B, x_2^B)$ com $x_1^B = x_2^B = m^B/(p_1 + p_2)$, ou seja, consumo igual dos dois bens."*

**Status atual:** já está correto — linha foi reescrita de `(x_1^B, x_1^B)` (M2 da v1) para `(x_1^B, x_2^B)`. **Boa.** Validado.

#### A4. Pre-monitoria 2 (HTML) — Bliss point sem CES verificada

**Arquivo:** `platform/pre-monitoria-02.html:240-246` (S4, Extensão 3, contraexemplo).
**Trecho:** *"Combinando com $u^B = x_1 x_2$, $\omega^A = (2, 0)$, $\omega^B = (0, 2)$, em $p^* = (1, 1)$: $A$ demanda $(1, 1)$ (cabe na renda 2), $B$ demanda $(1, 1)$. Mercado fecha."*

**Verificação necessária:** $A$ tem $u^A = -[(x_1-1)^2 + (x_2-1)^2]$ com bliss em $(1,1)$. Em $p^* = (1,1)$, renda $m^A = 2$, e a cesta $(1,1)$ custa exatamente 2 — cabe. ✓ É também o ótimo de $A$ (bliss point). $B$ com $u^B = x_1 x_2$ (CD canônica $\alpha = 1/2$ se $u = x_1^{1/2}x_2^{1/2}$, mas aqui é multiplicação direta, equivalente em ordem) e $m^B = 2$, demanda $(1,1)$ ✓. Soma $(2, 2) = \bar\omega$ ✓. **Mercado fecha.** Texto certo.

**Mas o exemplo não exibe Pareto-superioridade** — apenas afirma "a alavanca da prova perde força". Aluno vê EC com $(1,1)/(1,1)$ que é interior, simétrico, parece Pareto. Não há nada Pareto-superior **porque não há nada melhor que o bliss para $A$**, e $B$ está no seu próprio CD-ótimo. **O texto é confuso: "1º TBE pode falhar" mas o exemplo construído não falha** — apenas tem o teste de Pareto trivializado pelo conjunto preferido vazio.

A própria caixa de aviso ("Limite metodológico", linha 248) reconhece isso. Mas o aluno fica com "vi exemplo de saciedade, vi mercado fechar, vi 1º TBE não falhar" — conclusão pedagógica errada se não ler o aviso.

**Correção sugerida:** adicionar 1 frase explícita: *"**Atenção: este construto numérico fecha mercado e satisfaz 1º TBE — porque o conjunto preferido de $A$ é vazio, ninguém tem 'algo melhor' a propor. O ponto pedagógico é que a alavanca da prova (passo 2) perde força mesmo quando 1º TBE acaba valendo. Construir contraexemplo onde o EC encontrado falha 1º TBE exige calibração mais fina — exatamente o que o Alberto fecha no sábado.**"*

**Tempo:** 5 min. **Δnota:** +0.05.

### 🟢 Médios

#### M1. Setup pre-monitoria 2 S2 — cálculo Caso 2 inverte renda de $A$

**Arquivo:** `aula_4/pre_monitoria.md:38-40` e `platform/pre-monitoria-02.html:90-92`.
**Trecho:** *"$m^A = p_1 + 4 p_2$, $m^B = 3 p_1$. Mercado bem 1, com $p_2 = 1$ (numerário): $\frac{p_1 + 4}{2 p_1} + \frac{3 p_1}{2 p_1} = 4$"*

**Por que está confuso:** com $p_2 = 1$, $m^A = p_1 + 4 \cdot 1 = p_1 + 4$ (correto). Mas o texto escreve $m^A = p_1 + 4 p_2$ antes do "com $p_2 = 1$" — fluxo lógico sem normalizar primeiro. Não é erro, é estilo desorganizado. Compare com pre_aula.md:217 onde $m^A = p_1 + 4$ é direto.

**Correção sugerida:** padronizar — sempre normalizar antes ou sempre usar $p_2$ explícito.

**Tempo:** 3 min. **Δnota:** +0.02.

#### M2. CD vs. CES no slide #12 (iframe Edgeworth)

**Arquivo:** `aula_4/slides/graficos/edgeworth.html`.

**Observação:** o iframe foi criado e renderizado, satisfazendo o ponto-quente #5 da v1 (Edgeworth interativo). **Bom resultado.** Mas o slide #12 que abre o iframe (qmd:238-244) tem o iframe + caption pequena, sem cross-link ao slide #32 (CD assimétrica 2/2 — punch) onde o cálculo aparece simbolicamente. Aluno que vê o iframe primeiro (Bloco 1) e depois faz a álgebra (Bloco 2) não conecta visual ↔ algébrico.

**Correção sugerida:** acrescentar uma frase no caption do slide #12: *"Volte aqui depois do Bloco 2 (CD assimétrica) — o ponto $p_1 = 8/7$ no slider corresponde ao cálculo simbólico que vamos fazer."*

**Tempo:** 2 min. **Δnota:** +0.02.

#### M3. Quiz pós Q5 — distrator (d) é genérico demais

**Arquivo:** `platform/aula-04-pos.html:122`
**Trecho:** *"(d) O 1º TBE garante que toda alocação Pareto-eficiente é EC — ou seja, mercado atinge qualquer ponto da contract curve sem redistribuição."*

**Observação:** essa é a alternativa correta — a "afirmação falsa" que o aluno deve identificar. OK como design. Mas o gabarito (linha 124) diz "A afirmação (d) é a recíproca do 1º TBE — e essa é o 2º TBE". **Verdade**, mas o teor da Q5 é "qual é falsa", e o aluno precisa marcar a falsa. Pedagogicamente OK; cosmeticamente, o enunciado poderia ser mais limpo. Não bloqueante.

#### M4. Pre-monitoria 2 S5 enunciado de teorema de separação ambiguidade

**Arquivo:** `platform/pre-monitoria-02.html:301`
**Trecho:** *"Sejam preferências contínuas, monotônicas (ou LNS) e estritamente convexas..."*

**Observação:** "monotônicas (ou LNS)" mistura duas hipóteses distintas com "ou" causalmente ambíguo. Em prosa pedagógica, deveria ser "monotônicas (LNS é suficiente)". Cosmético.

#### M5. Inconsistência ENtre 'Edgeworth (1881) → Debreu-Scarf' (slide #17) vs. 'Debreu-Scarf 1963 (intuição original Edgeworth 1881)' (Q9 pós, Q7 pré-quiz)

Ambos os fraseamentos são válidos historicamente, mas diferentes — slide #17 enfatiza Edgeworth como ponto de partida e Debreu-Scarf como formalização; Q9/Q7 enfatiza Debreu-Scarf com Edgeworth como nota histórica. Padronizar para "**Debreu-Scarf (1963)**, com intuição original em Edgeworth (1881)" em todos os lugares. Cosmético.

---

## 4. Densidade de slides — auditoria atualizada

A v1 declarou 2 ESTOURA (#21 e #22) e 9 APERTADO. **Os patches M7 e M8 do plano v1 foram aplicados** — slides #21–#22 da v1 foram quebrados em 3 partes cada. Recomputei sobre os 59 slides atuais:

| #atual | Título | Peso compostoa | Status | Ação |
|---:|---|---:|:---:|---|
| 4 | Recall (1/2) | 4.7 | OK | – |
| 7 | Setup — economia de troca pura | 7.2 | OK | – |
| 8 | Alocação viável | 5.5 | OK | – |
| 13 | Pareto-eficiência (1/3) | 7.5 | OK | – |
| 14 | Pareto-eficiência (2/3) | 6.6 | OK | – |
| 16 | Núcleo (1/2) | 6.5 | OK | – |
| **17** | **Núcleo (2/2)** | **8.7** | 🟨 MARGEM | OK (eq-punch + bridge denso, mas cabe) |
| 21 | Tomadores (1/2) — UMP | 5.4 | OK | – (boa quebra pós-M7) |
| 22 | Tomadores (2/3) | 4.5 | OK | – |
| 23 | Tomadores (3/3) — punch | 5.4 | OK | – |
| 24 | Walras (1/3) | 5.0 | OK | – (boa quebra pós-M8) |
| 25 | Walras (2/3) | 4.0 | OK | – |
| 26 | Walras (3/3) | 8.0 | 🟨 MARGEM | OK |
| 27 | EC — definição | 7.5 | OK | – |
| 28 | CD simétrica (1/3) | 6.0 | OK | – |
| 33 | CD + Leontief (1/2) | **9.8** | 🟨 MARGEM | **Vigia** — limítrofe |
| 34 | CD + Leontief (2/2) | 9.5 | 🟨 MARGEM | OK |
| 36 | LNS | 7.0 | OK | – |
| 40 | 1º TBE (3/4) | 9.0 | 🟨 MARGEM | OK (passo 2 LNS) |
| 41 | 1º TBE (4/4) — punch | 6.0 | OK | – |
| **42** | **O papel exato de LNS** | **11.5** | 🟧 APERTADO | **CANDIDATO QUEBRA** |
| 43 | 2º TBE preliminar | 7.5 | OK | – |
| 44 | 2º TBE — onde quebra | 9.0 | 🟨 MARGEM | OK |
| 51 | RenovaBio CBIOs (2/2) | 8.5 | 🟨 MARGEM | OK |

a Pesos: header 1.8, parágrafos 1.5 cada, displays 2.5 cada, eq-punch 2.2, eq-key 2.0, bullets 1.0, bridges 0.7. Conforme CLAUDE.md.

**Total ESTOURA:** 0 (vs. 2 na v1 — patches M7+M8 funcionaram).
**Total APERTADO:** 1 (slide #42 — "O papel exato de LNS"). Tem header + 2 parágrafos densos + display de utilidade + eq-punch + bridge — score ~11.5. Plano v1 ação #5 disse "Adicionar 2 frases ao slide [contraexemplo numérico]; score do slide ainda fica abaixo de 10". **Score real é 11.5.** Plano v1 errou na previsão de densidade do próprio patch.
**Total MARGEM:** ~6 (toleráveis, mas vigias).

**Conclusão:** 1 slide aperta perigosamente. **Recomendar quebra de #42 em (1/2) "Onde LNS aparece" + (2/2) "Contraexemplo numérico"**, transferindo o construto numérico para slide próprio com alocação $\tilde x = ((1,1),(1,1))$ destacada.

---

## 5. Calibre por artefato

| Artefato | Nota v2 | Justificativa |
|---|---:|---|
| **Slides (`aula-04.qmd`)** | 9.0 | Boa estrutura, prova 1º TBE limpa, iframe Edgeworth implementado. Defeitos: slide #42 APERTADO; cross-ref "slide #29" → #17 (B2). |
| **Pré-aula material (`aula-04.html`)** | 8.4 | Estrutura 9-seções limpa; gating funciona; MathJax OK. Defeitos: contraexemplo LNS divergente do slide (B3); checkpoint final usa `MicroQuiz` legado (não-bloqueante mas inconsistente com pós/exerc que usam `MicroQuizGraded`). |
| **Quiz pré (`aula-04-pre.html`)** | 7.5 | 10 questões 🟡, distratores OK. **Defeito grave: Q9 com aritmética errada (B1)** que contradiz pós-quiz e exerc. |
| **Quiz pós (`aula-04-pos.html`)** | 8.8 | 5🟡+5🔴, gabaritos 5-passos completos, Q9 🔴🔴 com nota meta. **Defeito: Q9 cita "slide #29" inexistente como tal (B2).** Q4 limpa pós-M2, Q9 limpa pós-M3+M4. |
| **Exercícios avaliativos (`aula-04-exerc.html`)** | 9.4 | 6 exercícios, calibre limpo, gate de gabarito funcionando, SSOT-MD limpa após patches G2+G3. Bom. |
| **SSOT MD exerc (`exercicios-avaliativos.md`)** | 9.5 | Limpa pós-G2. Sem `Hmm`, sem `[NOTA EDITORIAL]`, sem `[Decisão final]`. ✓ |
| **Pré-aula MD (`pre_aula.md`)** | 8.0 | Estrutura paralela ao HTML, mas contraexemplo LNS diferente do slide (B3). |
| **Roteiro (`durante_aula.md`)** | 9.4 | Excelente — armadilhas, 30s extra para Q9, ganchos para Alberto, tempo soma 180 ✓. Melhor `durante_aula` da Aula 4. |
| **Pré-monitoria 2 (`pre_monitoria.md` + `pre-monitoria-02.html`)** | 7.8 | Estrutura sólida, 4 extensões com cálculo. **Defeitos: Leontief simétrico mal-analisado (A1); marcador `TODO Alberto refinar` na MD (A2); contraexemplo de bliss não exibe falha do 1º TBE (A4); não vinculada no portal (B4).** |
| **Iframe Edgeworth (`graficos/edgeworth.html`)** | 9.0 | Implementado e funcional (escapou da v1). Slider, ponto de tangência, $p_1^* = 8/7$. ✓ |

**Média ponderada (slides 30%, pré-aula 15%, pre-quiz 10%, pós-quiz 10%, exerc 15%, MD-MD 5%, durante 10%, pré-mon 5%):**

$0.30\cdot 9.0 + 0.15\cdot 8.4 + 0.10\cdot 7.5 + 0.10\cdot 8.8 + 0.15\cdot 9.4 + 0.05\cdot 8.0 + 0.10\cdot 9.4 + 0.05\cdot 7.8 = 8.6$

**Nota final v2: 8.6/10.** Comparação:

- v1 declarou 7.6 → 9.0–9.2 pós-patches.
- Plano v1 declarou 9.2 → 9.85 pós-patches v1 + extensões.
- v2 mede 8.6 atual.

**Diagnóstico:** o plano v1 inflou a nota porque (a) não auditou pré-monitoria 2 que veio depois; (b) não fez cross-check entre pré-quiz e pós-quiz/exerc (defeito B1); (c) não validou contagem de slides para Q9 (B2); (d) contou Δnota de patches que parcialmente já estavam aplicados (Ex2-MD).

---

## 6. Risco residual — o que o aluno pergunta que o material não cobre

1. **"Por que CBIOs não tem oferta endógena (produção responde a preço)?"** — Box Brasil RenovaBio é tratado como Edgeworth puro (dotação fixa) mas CBIOs **são produzidos** quando produtores investem. É EG com produção (Aula 5), não troca pura. O slide reconhece "estrutura Edgeworth bipartido" mas omite a esticada. Aluno bom vai perguntar e o roteiro `durante_aula.md:200-203` não tem resposta. **Vazamento de abstração.**

2. **"Em CD assimétrica do bundle, $A$ tem $\omega^A=(1,4)$ e ama bem 1 — mas $B$ tem $\omega^B=(3,0)$ e $u^B = x_1^{1/3}x_2^{2/3}$. Ele não tem dotação inicial de bem 2 nenhuma — como ele consome $x_2^B = 16/7$?"** Resposta: $B$ vende parte de seu bem 1 ($\omega^B_1=3$, $x^B_1=1$, vende 2 unidades a $p_1=8/7 \Rightarrow$ recebe $16/7$ unidades de bem 2) — mas o slide #32 não articula essa conta de "venda". Para um aluno menos prático, a noção de que **dotação é lançada no mercado e a renda compra a cesta** é abstração viva. Roteiro deveria sinalizar.

3. **"Por que LNS é mais geral que monotonicidade estrita?"** — slide #36 diz "Mais geral que monotonicidade estrita (admite curvas de indiferença 'atravessáveis' localmente)" sem exemplo. Aluno vai imaginar "atravessáveis" mal. **Exemplo: $u(x_1, x_2) = x_1$ (utilidade só do bem 1).** Não é monotônica estrita em bem 2 (utilidade constante em $x_2$), mas é LNS (sempre dá pra aumentar utilidade movendo-se em $x_1$). Slide deveria dar 1 exemplo.

4. **"Em $L=2$, dim do espaço de preços é 1 (após normalização). Como Brouwer aplica em dim 1?"** — Q7 do pós-quiz introduz Brouwer; aluno percebe que Brouwer em $\mathbb{R}^1$ é teorema do valor intermediário disfarçado. Boa pergunta — o material não responde, e poderia (em 30s).

5. **"O 2º TBE preliminar funciona em economia $2\times 2$ com Leontief? Tecnicamente Leontief não é estritamente convexa..."** — Leontief é fracamente convexa (CI em "L" — combinação convexa cai dentro do conjunto preferido fraco mas pode estar na fronteira). 2º TBE com Leontief vai exigir cuidado. Slide #43 enuncia "convexidade" sem distinguir estrita vs. fraca. Aluno bom percebe.

6. **"Núcleo encolhe com réplica — mas o que acontece com economia onde os tipos têm preferências diferentes (não-replicável)?"** Pergunta legítima de Aula 6. Slide #17 e Q9 do pós lidam só com réplica do mesmo tipo. Aluno vai querer saber se "núcleo encolhe" é genérico ou específico.

---

## 7. Comparação Aula 1 vs Aula 4

| Dimensão | Aula 1 (final, 9.7) | Aula 4 (atual, 8.6) | Comparação |
|---|---|---|---|
| **Slides ESTOURA** | 0 | 0 (pós-M7+M8) | Empate |
| **Slides APERTADO** | 0 | 1 (slide #42 LNS) | Aula 1 melhor |
| **Cross-ref entre artefatos** | Limpos | **Q9 → "slide #29" errado (B2)** | Aula 1 melhor |
| **SSOT MD ↔ HTML** | Limpas | exerc-MD limpa; pre_aula-MD divergente do slide (B3); pre_mon-MD com TODO (A2) | Aula 1 melhor |
| **Pré-quiz aritmética** | Correta | **Q9 errada (B1)** | Aula 1 melhor |
| **Box Brasil** | Reforma EC 132/2023 (limpa) | RenovaBio (limpa, com vazamento de abstração — produção endógena) | Aula 1 levemente melhor |
| **Iframe interativo** | Existe (lex/CES) | Existe (Edgeworth, novo) | Empate (catch-up) |
| **Roteiro `durante_aula`** | Bom | **Excelente** | **Aula 4 melhor** |
| **Pré-monitoria** | N/A (aula 1 não tem) | Existe mas com 4 defeitos (A1+A2+A4+B4) | Aula 4 inferior em qualidade, mas existe |
| **Auto-crítica plano** | 9.5 declarada vs. real | 9.85 declarada vs. real 8.6 | **Aula 1 mais honesta** |

**Onde Aula 4 regrediu:**
- Inconsistências cruzadas múltiplas (pre_aula vs. slide; pre-quiz vs. pós-quiz; Q9 vs. slide-âncora).
- Pré-monitoria adicionada sem auditoria (inflou expectativa do plano v1).
- Plano v1 declarou 9.85 sem cross-check.

**Onde Aula 4 superou:**
- Roteiro mais maduro (armadilhas explícitas, ganchos para Alberto, condicionais).
- Iframe Edgeworth genuíno (Aula 1 não tinha esse padrão; agora virou benchmark).
- Calibre dos exerc avaliativos é defensável (Ex5 dimensionalidade é genuinamente 🔴; Ex6 2º TBE preliminar limpo).
- Tem **pré-monitoria** (Aula 1 não tinha). O fato dela existir já é progresso, mesmo que defeituosa.

**Diagnóstico**: o bundle Aula 4 é tecnicamente mais ambicioso que Aula 1 — mais conceitos, prova rigorosa, dois cenários numéricos, pré-monitoria. Mas a execução pagou o preço da ambição em **inconsistências cruzadas que rondam a nota acima de 9**. Aula 1 era simples e impecável; Aula 4 é complexa e remendada.

---

## 8. O que está parcimoniosamente bom (não mexer)

1. **Prova do 1º TBE (slides #38–#41).** Linha-a-linha, com LNS no lugar certo (passo 2), contradição final correta. Padrão a manter para Aula 5/6.
2. **Cálculo CD assimétrica unificado em $p_1^* = 8/7$.** Setup canônico aparece em slide, pre_aula, pre-monitoria, exerc, pos-quiz — limpo após patch G1.
3. **Roteiro `durante_aula.md`.** Excelente. As armadilhas a sinalizar, condicionais ("se Alberto está presente"), 30s extra para Q9 — sente-se que o produtor pensou no caos da sala. Padrão a seguir.
4. **Exercício 6 do avaliativo (2º TBE).** Sub-itens (a)–(e) cobrem verificar Pareto, mecanismo de implementação, autarquia eficiente, lump-sum não-distorcionário, convexidade-Hahn-Banach. Cobertura completa do conceito. Padrão.
5. **DOI Ellerman & Buchner = 10.1093/reep/rem003.** Verificado, correto. Bom.
6. **Iframe Edgeworth.** Implementação genuína com slider, tangência interativa, EC marcado. Sem ele, o ponto-quente #5 da v1 ficaria em aberto.
7. **`exercicios-avaliativos.md` limpo.** Pós-G2, sem rastro editorial. SSOT defensável.
8. **Notação canônica.** `\succeq` ✓, `\text{TMS}` ✓, vírgula decimal `\{,\}` ✓, expoente CES OK. Spot-checks: pass.

---

## 9. Síntese para o Darcio

O bundle Aula 4 está **6 dias** da aula presencial. Com 4 patches obrigatórios (B1, B2, B3, B4 — totalizando ~50 min de trabalho) sobe de 8.6 → ~9.4. Com os 4 altos (A1, A2, A4 + slide #42 quebrado em #5 do plano v1 falhou) sobe para ~9.55. Com os médios para ~9.65. **9.85 só com extensões opcionais e cross-link slide #12 ↔ #32 do iframe e mais ajustes finos.**

**Decisão estrutural pendente do Darcio:**
- **B4 (link da pré-monitoria 2 no portal).** Quem implementa? O agente pode fazer; precisa decisão sobre formato do card.
- **A4 / slide #42.** Quebrar em (1/2) + (2/2) é pequeno custo; melhora densidade e separa "onde LNS aparece" de "contraexemplo numérico".

**Janela operacional:** 06–11/05 para todos os patches obrigatórios; 12/05 para re-render final do qmd; 13/05 manhã para smoke test em conta de aluno.

---

*Auditoria v2 fechada em 2026-05-07 por `prof-mpe-micro` em modo Referee 2 hostil. v1 e plano v1 servem como contexto histórico; esta v2 os audita com rigor adicional.*
