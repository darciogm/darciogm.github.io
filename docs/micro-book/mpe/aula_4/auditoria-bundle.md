# Auditoria Referee 2 — Bundle Aula 4 (EG trocas / Edgeworth)

> **Auditor:** `prof-mpe-micro` em modo Referee 2 implacável (segunda rodada adversarial).
> **Data da auditoria:** 2026-05-06.
> **Artefatos auditados:** `aula_4/slides/aula-04.qmd`, `aula_4/exercicios-avaliativos.md`, `aula_4/pre_aula.md`, `aula_4/durante_aula.md`, `platform/aula-04.html`, `platform/aula-04-pre.html`, `platform/aula-04-pos.html`, `platform/aula-04-exerc.html`, `platform/portal.html` (diff).
> **Comparação cruzada:** `aula_3/slides/aula-03.qmd` (slide 1019), `aula_3/exercicios-avaliativos.md`, `CLAUDE.md`.

---

## Veredicto em 1 parágrafo

Bundle **funcional mas não-publicável como está**: tem três defeitos materiais (um erro algébrico que sobrevive em **três artefatos simultâneos** envolvendo o EC assimétrico, um exercício avaliativo que se salvou pela reformulação mas ainda lê meta demais para 🔴, e uma SSOT em Markdown que carrega o "diário do produtor" — `[NOTA EDITORIAL]`, `Hmm — recalcular`, `Decisão final` — em vez do gabarito limpo). **Nota: 7.6/10**, comparado aos 8.4 da Aula 3 pré-patches. Aula 3 estava melhor calibrada na largada porque (i) os cálculos numéricos eram modestos e fechavam, (ii) a ementa do slide-ponte estava errada mas só essa, (iii) o calibre 🔴 não dependia de exercício "meta". Aula 4 tropeçou na ambição de ter três cálculos (CD simétrica, CD assimétrica, contraexemplo de LNS) e em **dois deles** a álgebra ou o desenho do exercício veio torto. Recuperável em 2–3h de patches.

---

## Erros graves (devem ser corrigidos antes da aula)

### G1. Inconsistência grave entre Quiz Pós Q1, Slide #71 e Exercício Avaliativo 2 — três alocações diferentes para o "mesmo" caso "CD assimétrica com bem 1 caro"

O bundle apresenta *duas variantes* do mesmo cenário pedagógico — a discordância entre elas é hostil ao aluno.

- **`aula-04.qmd` slide 70–71** (linhas 487 e 499–503) e **Quiz Pós Q1** (`aula-04-pos.html` linhas 41–53): $u^A = x_1^{0{,}8}x_2^{0{,}2}$, $u^B = x_1^{0{,}5}x_2^{0{,}5}$, $\omega^A = (1,4)$, $\omega^B = (3,0)$ → $p_1^* = 32/17 \approx 1{,}882$ (✓ verificado: alocação $x^A=(2{,}5;\;1{,}176)$, $x^B=(1{,}5;\;2{,}824)$). **Está numericamente correto** — minha checagem em Python bate.
- **Exercício Avaliativo 2** (`exercicios-avaliativos.md` linhas 62–121 e `aula-04-exerc.html` linhas 111–176): $u^A = x_1^{2/3}x_2^{1/3}$, $u^B = x_1^{1/3}x_2^{2/3}$, $\omega^A = (1,4)$, $\omega^B = (3,0)$ → $p_1^* = 8/7 \approx 1{,}143$ (✓ verificado).

**Problema:** os dois cenários têm o mesmo *embalagem narrativa* ("$A$ ama bem 1, $B$ ama bem 2, mas $A$ tem pouco bem 1"), mas geram $p_1^* = 1{,}88$ vs $p_1^* = 1{,}14$. Aluno que fizer pré-aula → quiz pós → exercício avaliativo na sequência vê três variantes da mesma "história" e três respostas diferentes. **Defeito pedagógico**, não de matemática: o produtor reciclou o setup com parâmetros levemente diferentes e não unificou — provavelmente porque o `pre_aula.md` (linhas 204–230) também tem **três versões malsucedidas** do EC assimétrico antes de chegar na quarta que funciona, evidência de que o produtor ficou "tentando" até dar `p_1 \neq 1`.

**Pior:** o gabarito do Quiz Pós Q1 escreve `x_1^A ≈ 0,8(1 + 4/p_1) ≈ 0,8(1 + 4/1{,}882) ≈ 2{,}5` (linha 52 do `aula-04-pos.html`) e diz "Soma ≈ 4. ✓" — mas **omite a alocação completa** ($x_2^A, x_2^B, x_1^B$). Aluno que faça contas vai descobrir que o gabarito ficou com a alocação implícita.

**Correção sugerida:** unificar para **um único** EC assimétrico ao longo de todo o bundle. Recomendo ficar com $\alpha_1^A = 2/3, \alpha_1^B = 1/3$ e $p_1^* = 8/7$ (o do exercício avaliativo) — número mais simples, alocação $(3, 12/7), (1, 16/7)$ inteira no bem 1 e racional limpa no bem 2, e ainda permite `TMS^* = 8/7` como verificação. Alterar slides #70–#71, Q1 do Pós e a álgebra correspondente do `pre_aula.md` linha 204–230 e `durante_aula.md` linha 127–130. **Tempo: ~30 min.**

### G2. SSOT `exercicios-avaliativos.md` carrega "diário do produtor" no gabarito final do Exercício 2 e do Exercício 5

`aula_4/exercicios-avaliativos.md` linhas 105–115 e 261–266 mostram **literalmente** o trabalho de cálculo do produtor:
> "**Hmm — recalcular.** $4 - 2/3 - 1 = 4 - 5/3 = 12/3 - 5/3 = 7/3$. Logo $8/(3 p_1) = 7/3 \implies p_1 = 8/7$. **Correção:** o gabarito (iii) diz $p_1^* = 8/5 = 1{,}6$. Verificar..."
> "**[NOTA EDITORIAL — calibração:** após verificar a álgebra... vou ajustar a alternativa correta no enunciado.]"
> "**[Decisão final:** vou manter a estrutura original... e ajustar o gabarito para $p_1^* = 8/7$..."

Isso é **inaceitável** numa SSOT que o `CLAUDE.md` declara ser "espelho do HTML" e fonte narrativa. O HTML `aula-04-exerc.html` está limpo — mas o MD versionado para auditoria humana é o registro do quão acidentado foi o caminho. Se o Darcio abrir esse MD para revisar antes de publicar, vai pensar que houve descuido — **e teve**. **Correção sugerida:** reescrever o MD como gabarito limpo (espelhando o HTML), mover qualquer "história editorial" para um arquivo de notas separado se quiser preservar. **Tempo: ~20 min.**

### G3. Exercício avaliativo 5 🔴 colapsou a calibre 🟡 (ou pior, leitura) por causa do contraexemplo que não fechou

Já admitido pelo produtor, mas o caso é mais grave do que ele assumiu. O exercício 5, depois da reformulação (linhas 263–290 do MD; espelhada nas linhas 318–383 do HTML — note: na verdade o HTML moveu o tema para "Lei de Walras, normalização e dimensionalidade" e o exercício de contraexemplo virou Q6 do Pós), tornou-se **leitura comprehension de meta-argumento**: "lição metodológica é que LNS é local". Aluno marca (i) ou (iv) por intuição correta, sem fazer conta. Calibre Jehle-Reny §5.2 esperaria que o aluno *construísse* algo, ou no mínimo *verificasse* a alocação Pareto candidato a candidato.

Mas note que o **HTML salvou esse defeito de outra forma**: o Exercício 5 do `aula-04-exerc.html` é "Lei de Walras, normalização e dimensionalidade" (5 sub-itens 🔴 sobre redução dimensional), o que é genuinamente 🔴 na calibragem do CLAUDE.md (aluno precisa entender a contagem de equações). **A SSOT em Markdown e o HTML divergem** — o MD ainda tem o "contraexemplo do 1º TBE", o HTML tem "dimensionalidade do sistema". Isso é uma inconsistência grave entre SSOT declarada e artefato consumido pelo aluno.

**Correção sugerida:** decidir qual é o Exercício 5 e harmonizar os dois. Recomendo ficar com a versão do HTML (dimensionalidade) porque é genuinamente 🔴 e bem alinhada ao quiz pós Q10. Reescrever o MD para refletir. O contraexemplo de LNS já vive na pré-aula seção 5 (linhas 280–284), no slide #46–#47 e na Q6 do pós — não falta. **Tempo: ~20 min.**

### G4. Quiz Pós Q4 (Leontief): texto da alternativa (b) usa "$p_1 + p_2$" mas a derivação no gabarito mistura dois bares-omega diferentes

Quiz `aula-04-pos.html` Q4 (linhas 96–112): enunciado dá $\omega^A=(10,0)$, $\omega^B=(0,10)$ — total $\bar\omega = (10, 10)$. **Mas o slide #68 ("Cálculo CD assimétrica") usa $\bar\omega = (4, 4)$**, e nem a pré-aula nem o `durante_aula` consolidam um exemplo CD+Leontief com total $(10,10)$. O exercício avaliativo 3 (`aula-04-exerc.html` linhas 178–243) refaz exatamente esse problema com a *mesma* dotação $(10, 0), (0, 10)$ e total $(10, 10)$. **Não é erro algébrico** — bate; é falta de continuidade pedagógica: o aluno encontra Leontief pela primeira vez na **questão de prova** sem ter visto resolvido em aula nem na pré-aula. O `durante_aula.md` linha 254 ("Cálculo de EC ... com várias formas funcionais ... CD assimétrica, Leontief, CES") empurra Leontief para a *monitoria* — mas a monitoria 2 só acontece em 23/05, depois do prazo do quiz pós (20/05). **Sequência rota.**

**Correção sugerida:** ou (a) acrescentar 1 slide no Bloco 2 com Leontief resolvido (~5 min de aula), ou (b) substituir Q4 do pós e Exercício 3 por outra forma funcional já coberta (CES com $\sigma=2$ é candidato; ou CD com expoente diferente). Opção (a) é mais barata. **Tempo: ~25 min.**

### G5. Box Brasil de transferências de futebol é pseudo-aplicação — Edgeworth não cabe sem violência conceitual

O slide #57–#58 (linhas 729–757 do qmd) e Box-Brasil do `durante_aula.md` (4.b, linhas 187–194) tentam mapear janela de transferências para Edgeworth. **Falha em três níveis:**

1. **Bens não são contínuos divisíveis** — jogador é unidade indivisível. O argumento de tangência $\text{TMS}^A = \text{TMS}^B$ não vale.
2. **Não há "preço único de mercado" entre clubes** — cada negociação é bilateral, com cláusulas, parcelas, percentuais sobre venda futura. Não há $p^*$ único.
3. **Dotação não é fixa** — clubes formam jogadores nas categorias de base, contratam estrangeiros, etc.

O próprio produtor reconheceu que "preferências dos clubes não são puramente neoclássicas (torcida, política, marketing)" — mas isso **não é o problema principal**. O problema é que Edgeworth não é o framework certo aqui; matching com transferíveis (Aula 9!) é. Usar transferências de futebol em Aula 4 **gasta crédito de aplicação** que a Aula 9 vai precisar genuinamente.

**Correção sugerida:** **substituir** por exemplo brasileiro genuíno de Edgeworth. Candidatos: (a) **mercado de cotas de pesca** (PNGATIs / SUDEPE-IBAMA / sistema de cotas individuais), (b) **mercado de Reserva Legal / CRA** sob Código Florestal de 2012 (compensação ambiental entre fazendas — **literalmente Edgeworth bipartido com cotas**), (c) **mercado de descarbonização da cana / RenovaBio CBIOs** (distribuidoras são "sujas", produtores de etanol são "limpos" — análogo perfeito ao EU ETS). RenovaBio tem a vantagem de ser brasileiro, recente, com dados públicos da ANP, e estruturalmente Edgeworth. **Tempo: ~30 min** para reescrever Box Brasil e ajustar slides 57–58.

---

## Erros menores (corrigir antes do próximo render)

### M1. DOI de Ellerman & Buchner (2007) marcado `[VERIFICAR DOI]` em produção

`aula-04.qmd` linha 708 e `durante_aula.md` linha 185. O paper existe (*Review of Environmental Economics and Policy* 1(1), 2007); o DOI canônico é `10.1093/reep/rem003`. **Resolver agora**: substituir o comentário por `doi:10.1093/reep/rem003` ou remover o marker. Não pode ir para slide projetado com `[VERIFICAR DOI]` visível.

### M2. Quiz Pós Q4 alternativa (b) tem fórmula correta mas redação confusa

Linha 101 do `aula-04-pos.html`: "(b) $x^B = (x_1^B, x_1^B)$ com $x_1^B = m^B/(p_1 + p_2)$..." — a notação $(x_1^B, x_1^B)$ engasga. Reescrever como $(x_1^B, x_2^B)$ com $x_1^B = x_2^B = m^B/(p_1+p_2)$. Defeito cosmético mas ridículo num quiz avaliativo.

### M3. Quiz Pós Q9 🔴🔴 menciona "Aulmann" — o nome correto é Aumann (Robert J. Aumann, Nobel 2005)

Linha 207 do `aula-04-pos.html`: "Aulmann (1964) generalizou para continuum de agentes via integral." É **Aumann**, sem "l". Aumann (1964) "Markets with a Continuum of Traders", *Econometrica* 32(1–2): 39–50, doi:10.2307/1913732. Erro de nome em gabarito é constrangedor. **Corrigir**.

### M4. Quiz Pós Q9 chama "Edgeworth-Debreu" o que é "Debreu-Scarf"

Linha 200 e 204 do `aula-04-pos.html` — e também slide #29 (linha 309 do qmd) e ementa do slide-ponte da Aula 3 (linha 1045). O resultado canônico de núcleo encolhe-com-réplica é **Debreu & Scarf (1963)**, "A Limit Theorem on the Core of an Economy", *International Economic Review* 4(3): 235–246. **Edgeworth (1881)** é a inspiração intuitiva (no *Mathematical Psychics*, ele esboçou para $n$ replicado), mas o teorema rigoroso é Debreu-Scarf. Chamar de "Edgeworth-Debreu" é misturar duas coisas. Se quiser preservar a história, escrever "**Edgeworth (1881) → Debreu-Scarf (1963)**" e citar Debreu-Scarf como fonte do enunciado moderno. Aplicar em **3 lugares**: qmd #29, qmd #71 (não, já corrigido na minha leitura), qmd-pos Q9.

### M5. Notação CD assimétrica não-canônica em vários lugares

CLAUDE.md exige "Expoentes CES: forma canônica `(\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}`, não `^2` por acaso numérico". **CD não é CES**, mas a regra subjacente é a mesma: usar $\alpha + (1-\alpha) = 1$ para tornar a homogeneidade explícita. O bundle usa `x_1^{0,8} x_2^{0,2}` (slide #70) e `x_1^{2/3} x_2^{1/3}` (Exercício 2) — **as duas formas convivendo no mesmo bundle**. Padronizar para frações racionais quando os números forem inteiros, ou padronizar para decimais quando a aplicação for empírica. Fica feio ver as duas notações.

### M6. `\succsim` aparece em zero arquivos (✓), mas `\succeq` é usado em pre_aula.md (linha 96, 252) e platform/aula-04.html (linhas 56, 104)

Boa: padrão canônico respeitado. Confirma adesão à norma "sempre `\succeq`". **Não é erro.** Só registrando que verifiquei.

### M7. Slide #21 "Tomadores de preço (2/2) — excesso de demanda" está em **🟥 ESTOURA** (score 15.8)

Veja tabela de densidade abaixo. Tem 2 displays, 1 eq-punch, 2 paragraphs e 4 bullets implícitos via dois `$$`-blocks. Quebrar em **(2/2)** para **(2/3)** + **(3/3)**, separando a definição de $z^i$ da definição de $z(p)$ + eq-punch. **Tempo: 5 min.**

### M8. Slide #22 "Lei de Walras (1/2) — derivação" está em **🟥 ESTOURA** (score 15.7)

Mesma classificação que #21. Tem prova densa (3 linhas algébricas) + eq-key destacada + 2 bridges. Quebrar em (1/3) derivação até "p·z^i = 0", (2/3) "Somar sobre i" + eq-key, (3/3) bridge. **Tempo: 5 min.**

### M9. `pre_aula.md` linha 137 tem typo de matemática: "Resposta: $\text{TMS}^A = -(\partial u/\partial x_1)/(\partial u/\partial x_2) = -(x_2/x_1) = -1$ em magnitude $1$"

Convenção do bundle e do CLAUDE.md é $\text{TMS}$ **positiva** (magnitude do trade-off, não inclinação). Em todo o resto do bundle: $\text{TMS} = x_2/x_1$ (positivo). Aqui sozinho aparece com sinal negativo + "em magnitude 1". Confunde aluno. Corrigir para $\text{TMS}^A = (\partial u/\partial x_1)/(\partial u/\partial x_2) = x_2^A/x_1^A = 1$ em $(2,2)$.

### M10. Pré-aula Q3 do checkpoint final (`pre_aula.md` linha 338) afirma "contract curve... conectando as duas origens" mas slide #14 (linha 276) usa exatamente a mesma frase

Boa redundância intencional, mas a alternativa (b) da pré-aula Q3 fala "ponto a ponto satisfaz $\text{TMS}^A = \text{TMS}^B$", o que **só vale no interior**. A "armadilha a sinalizar" do `durante_aula.md` Bloco 1.c linha 84 reconhece isso explicitamente. Adicionar "(no interior)" na alternativa (b) da pré-aula Q3.

---

## Densidade — slides em risco

Score ponderado pelo CLAUDE.md aplicado aos 58 slides do `aula-04.qmd` (mostrando ≥ 8.5):

| Slide | Título | Score | Status | Ação |
|---:|---|---:|:---:|---|
| 4 | Recall Aulas 1–3 (1/2) | 10.9 | 🟧 APERTADO | Aceitável |
| 8 | Alocação viável | 10.9 | 🟧 APERTADO | Aceitável |
| 12 | Pareto-eficiência (1/3) — definição | 10.9 | 🟧 APERTADO | Aceitável (eq-key densa por natureza) |
| 13 | Pareto-eficiência (2/3) — caracterização | 11.7 | 🟧 APERTADO | **Vigia**: limítrofe |
| 20 | Tomadores de preço (1/2) — UMP | 10.9 | 🟧 APERTADO | Aceitável |
| **21** | **Tomadores (2/2) — excesso demanda** | **15.8** | **🟥 ESTOURA** | **Quebrar (M7)** |
| **22** | **Lei de Walras (1/2) — derivação** | **15.7** | **🟥 ESTOURA** | **Quebrar (M8)** |
| 24 | EC — definição | 10.2 | 🟧 APERTADO | Aceitável |
| 26 | CD simétrica (2/3) — fechar mercado | 8.8 | 🟨 MARGEM | OK |
| 27 | CD simétrica (3/3) — punch | 8.2 | 🟨 MARGEM | OK |
| 31 | LNS | 10.2 | 🟧 APERTADO | Aceitável |
| 34 | 1º TBE (2/4) — passo 1 | 9.5 | 🟨 MARGEM | OK |
| 36 | 1º TBE (4/4) — punch | 10.2 | 🟧 APERTADO | Aceitável |
| 38 | 2º TBE preliminar — enunciado | 10.2 | 🟧 APERTADO | Aceitável |
| 39 | 2º TBE — onde quebra | 8.5 | 🟨 MARGEM | OK |
| 50 | Ponte Aula 5 (1/2) | 10.2 | 🟧 APERTADO | Aceitável |
| 52 | Pré-monitoria 2 — quando | 9.5 | 🟨 MARGEM | OK |

**Total ESTOURA: 2 slides.** Total APERTADO: 9 slides. Comparado ao limite operacional sugerido pelo CLAUDE.md (1–2 ESTOURA + 5–6 APERTADO toleráveis num set de 50–60 slides), **estamos no limite tolerável de APERTADOs e acima no de ESTOURAs**. Ação obrigatória nos slides #21 e #22.

Note que o slide-suspeito declarado pelo produtor (1º TBE 3/4 / passo 2 LNS, slide #35) saiu **Não-listado** — pelo método ponderado dá ~7.5, conforto pleno. Falso positivo da auto-crítica.

---

## Inconsistências cruzadas

### IC1. **Slides ↔ Aula 3 ementa-ponte:** ✓ bate

`aula-03.qmd` linha 1045 promete: "Aula 4: EG de trocas puras — caixa de Edgeworth, contract curve, equilíbrio competitivo, lei de Walras, 1º TBE." Aula 4 entrega exatamente isso, mais o teaser do 2º TBE. Sem produção, sem Arrow-Debreu rigoroso. **Ementa-ponte da Aula 3 está correta**.

### IC2. **Slides ↔ Aula 5 prometida:** ✓ bate

Bloco 5 do qmd (linhas 802–830) anuncia produção, com $Y_f$, demanda agregada estendida, 1º TBE com produção. `pre_aula.md` linha 30–34 lista Aula 5 = produção. Coerente.

### IC3. **Quiz Pré ↔ Pré-aula material:** ✓ bate na maioria, exceto

Quiz Pré Q3 (`aula-04-pre.html` linha 75–91) cobra contract curve em CD simétrica = diagonal. Pré-aula seção 3 cobre tangência mas **não** deriva explicitamente que a contract curve em CD simétrica é a diagonal. Aluno tem que fazer o salto. Aceitável para 🟡, mas merece 1 frase na seção 3 conectando.

### IC4. **Quiz Pós Q9 (Edgeworth-Debreu) ↔ Slide #29 sobre núcleo:** **GAP**

Slide #29 (linha 309 do qmd) anuncia em UMA frase: "Quando $I$ cresce (Aula 6, brevemente): núcleo encolhe; em economia 'grande', converge ao conjunto de equilíbrios competitivos (Edgeworth-Debreu)." Quiz Pós Q9 🔴🔴 (linhas 192–210) pede aluno a identificar o teorema de **réplica** de Debreu-Scarf, com 4 alternativas. **A informação está no slide, mas em uma frase isolada** — aluno fluindo no slide pode não internalizar. Para 🔴🔴 ("questão-teto"), o produtor admite custar 8–12 min de papel. Aceitável **se** o slide #29 receber 30 segundos a mais de comentário ao vivo, ou se o gabarito Q9 referenciar explicitamente "como anunciado no slide 29". Atualmente o gabarito não faz essa ponte.

### IC5. **Quiz Pós Q7 (Brouwer) ↔ Slides:** **DISTANTE**

Quiz Q7 🔴 sobre Brouwer/Kakutani como ferramenta canônica de existência. **Os slides não cobrem Brouwer**, exceto a linha 828 da ponte ("Aula 6: Arrow-Debreu (...; existência via Brouwer)"). A pré-aula explicitamente "pula" §13.6+ de N&S (Brouwer) — linha 84 do `pre_aula.md`. Logo a Q7 está **explicitamente fora do escopo declarado** da Aula 4. Defesa do produtor: "vai entrar em Aula 6, aluno deve reconhecer". Mas calibre 🔴 esperaria que o aluno *raciocine*, não apenas reconheça nome. **Risco residual:** quem nunca viu Brouwer marca (a) ou (b) por chute mais "concreto". Decisão: aceitável só se o Bloco 5 (ponte Aula 5/6) comentar Brouwer ao vivo por 1 min.

### IC6. **Exercícios avaliativos ↔ pré-aula seção 6 (papel):** ⚠️ DESLIGADO

Pré-aula seção 6 (linhas 322–330) lista 3 exercícios de papel: (1) CD simétrica $\omega^A=(10,0), \omega^B=(0,10)$ — análogo ao **Exercício avaliativo 3** (Leontief com mesma dotação); (2) CD+Leontief mesma dotação — **literalmente igual** ao Exercício avaliativo 3; (3) bônus contradição. **Problema:** o aluno faz o exercício de papel da pré-aula com CD+Leontief, depois encontra **exatamente o mesmo problema** como Exercício avaliativo 3 (que vale nota). Torna o avaliativo trivial — basta refazer o que já fez. Defesa: pré-aula seção 6 não tem gabarito, então aluno provavelmente errou e quer outra chance. Mas aluno bom apenas copia. **Sugestão:** trocar Exercício avaliativo 3 para CES ou para CD com $\alpha$ diferente; ou trocar o Exercício de papel 2 para CD assimétrica.

### IC7. **`durante_aula.md` ↔ slides:** ✓ bate em estrutura, ✓ tempo soma 180 min

Bloco 0 (5) + 1 (40) + P1 (10) + 2 (35) + 3 (35) + P2 (10) + 4 (30) + 5 (15) = 180 ✓. Ordem dos blocos no qmd bate com tabela de tempos. **Sem o erro grave da Aula 1 (ordem trocada).** Bom.

### IC8. **Slides ↔ exercícios avaliativos:** parcial

Os exercícios avaliativos só usam ferramental coberto em sala — ✓. Mas Exercício 1 (CD simétrica $\omega = (3,1),(1,3)$) é **literalmente** o caso resolvido nos slides #25–#27 e na pré-aula seção 4. Aluno que fez pré-aula resolve em 2 min. **Calibre 🟢 está adequado para "calibração de termômetro"** — defensível.

---

## Pontos quentes — veredicto (os 7 declarados pelo produtor)

| # | Ponto quente | Veredicto | Evidência |
|---|---|---|---|
| 1 | Box Brasil de futebol "frágil" | **REJEITAR + SUBSTITUIR** | Ver G5. RenovaBio é genuinamente Edgeworth e brasileiro. |
| 2 | Exercício 5 reformulado virou meta | **PARCIALMENTE REJEITAR** | Ver G3. SSOT-MD ainda tem o meta-exercício; HTML tem outro (dimensionalidade). Decidir e harmonizar. |
| 3 | Slide 1º TBE (3/4) LNS densidade ~10 | **ACEITAR a auto-crítica é INVÁLIDA** | Score real ~7.5 (✅). Falso positivo do produtor. |
| 4 | $p_1^* \approx 1{,}882$ feio | **ACEITAR a crítica + SUBSTITUIR** | Ver G1. Adotar $p_1^* = 8/7$ unificado. Número limpo, dotações inteiras, alocação racional finita. |
| 5 | Edgeworth sem JSXGraph interativo | **ACEITAR com mitigação parcial** | Para uma turma de 50 alunos, desenho ao vivo + ZaE seção EG-trocas é defensável. **Mas** ZaE não tem ainda o capítulo EG escrito (verificar com Darcio se já tem). Se ZaE não tem o cap EG, o "fallback" não existe — virou furo grave. **Pendente do Darcio**. |
| 6 | Q9 🔴🔴 Edgeworth-Debreu calibre J-R § 5.3 | **ACEITAR com modificação obrigatória** | Ver M3 (Aulmann→Aumann), M4 (Edgeworth-Debreu→Debreu-Scarf), IC4 (gap leve com slide #29). Manter a questão; corrigir os 3 defeitos cosméticos; aceitar como "questão-teto" legítima. |
| 7 | DOI Ellerman & Buchner | **REJEITAR a passividade** | Ver M1. DOI é `10.1093/reep/rem003`, verificável. Resolver em 2 min, não deixar `[VERIFICAR DOI]` em material entregue. |

**Pontuação dos pontos quentes:** 5 dos 7 procedem como o produtor admitiu (com correções). 1 é falso positivo da auto-crítica (ponto #3). 1 depende de informação externa (ponto #5: existe cap EG no ZaE?).

---

## O que está bom (parcimonioso)

1. **Prova do 1º TBE (slides #34–#36) está limpa.** Linha-a-linha, com LNS no lugar certo (passo 2), contradição final correta. **Defesa pedagógica forte.** Nota de prova deste bloco: 9.5/10. Único ajuste é o `\blacksquare` do `pre_aula.md` linha 278 — bom de manter.
2. **Slide #29 sobre núcleo encolhendo** anuncia Edgeworth-Debreu (apesar do nome errado — ver M4), preparando o terreno para Q9 do pós-quiz. Boa ponte (apesar do gap em IC4).
3. **`durante_aula.md` é cuidadoso.** Tem armadilhas a sinalizar nos pontos certos (Bloco 1.c, Bloco 2.b, Bloco 3.d), tem instruções condicionais ("se Bloco 1 trava...", "se Alberto está presente..."). Sente-se que o produtor pensou no caos da sala. Melhor `durante_aula.md` desde a Aula 1.
4. **Exercício 6 🔴 (2º TBE preliminar) é genuinamente bem calibrado.** Sub-itens (a) verificar Pareto, (b) mecanismo de implementação, (c) caso autarquia eficiente, (d) lump-sum não-distorcionário, (e) convexidade-Hahn-Banach. Cobertura completa do conceito sem ser meta. Padrão a seguir.

---

## Plano de remediação priorizado

| # | Ação | Arquivo:linhas | Tempo |
|---|---|---|---|
| 1 | **G1** unificar EC assimétrico para $p_1^* = 8/7$ | `aula-04.qmd:485-507`, `aula-04-pos.html:39-55`, `pre_aula.md:204-230`, `durante_aula.md:127-130` | ~30 min |
| 2 | **G2** reescrever `exercicios-avaliativos.md` como gabarito limpo (remover "Hmm", `[NOTA EDITORIAL]`, `[Decisão final]`) | `aula_4/exercicios-avaliativos.md:101-115, 256-291` | ~20 min |
| 3 | **G3** harmonizar Exercício 5 entre MD e HTML (ficar com versão "dimensionalidade" do HTML) | `aula_4/exercicios-avaliativos.md:229-291` | ~20 min |
| 4 | **G4** acrescentar 1 slide Bloco 2 com Leontief ou substituir Q4 do pós | `aula-04.qmd` após linha #29 (CD assimétrica 2/2) | ~25 min |
| 5 | **G5** substituir Box Brasil futebol por RenovaBio CBIOs | `aula-04.qmd:729-757`, `durante_aula.md:187-194` | ~30 min |
| 6 | **M7+M8** quebrar slides #21 e #22 (ESTOURA → 2 + 2 slides) | `aula-04.qmd:370-424` | ~10 min |
| 7 | **M3+M4** corrigir Aulmann→Aumann, Edgeworth-Debreu→Debreu-Scarf | `aula-04-pos.html:200-207`, `aula-04.qmd:309`, `aula-03.qmd:1045` | ~5 min |
| 8 | **M1** resolver DOI Ellerman & Buchner = `10.1093/reep/rem003` | `aula-04.qmd:708`, `durante_aula.md:185` | ~2 min |
| 9 | **M2** corrigir notação $(x_1^B, x_1^B)$ → $(x_1^B, x_2^B)$ no Quiz Pós Q4 (b) | `aula-04-pos.html:101` | ~1 min |
| 10 | **M9** corrigir TMS sinal em pre_aula Q1 da seção 3 | `pre_aula.md:137` | ~1 min |

**Tempo total estimado de aplicação dos top 10: ~2h25min.** Pós-patches, nota esperada: **9.0–9.2**.

---

## Pergunta aberta ao Darcio

1. **O capítulo de EG-trocas já existe no ZaE?** Mitigação do ponto-quente #5 (Edgeworth sem interativo) depende de o aluno ter um fallback escrito disponível antes da aula. Se não existe, é furo material — temos que ou (a) escrever uma seção mínima do ZaE até 13/05, (b) fornecer um PDF complementar, ou (c) garantir 15 min a mais de quadro com Edgeworth ao vivo.

2. **Aceita migrar EC assimétrico para $p_1^* = 8/7$ unificado?** A alternativa é ficar com $p_1^* = 32/17 \approx 1{,}88$ no slide e $p_1^* = 8/7$ no exercício (pedagogicamente confuso, mas pequeno custo de migração). Recomendação: unificar em 8/7. Sua opinião?

3. **Reescrever Box Brasil para RenovaBio CBIOs ou aceitar manter futebol como "ilustração com ressalvas"?** Se mantermos futebol, o slide tem que reconhecer explicitamente que **não é Edgeworth genuíno** — algo como "Aplicação inspirada em Edgeworth, com hipóteses violadas; usar como provocação, não como modelo". Isso é honesto mas custa 1 slide a mais. RenovaBio é mais limpo.

---

## Comparação direta com Aula 3 (pós-patches)

| Dimensão | Aula 3 (pós-patches) | Aula 4 (atual) | Quem está melhor |
|---|---|---|---|
| **Correção matemática** | Slutsky, integrabilidade, CV/EV — sem erros após patches | EC assimétrico inconsistente entre 3 artefatos (G1) | Aula 3 |
| **Densidade slides** | 0 ESTOURA, ~6 APERTADO | 2 ESTOURA, 9 APERTADO | Aula 3 |
| **Calibre exercícios** | 6 exercícios, calibre limpo, gabaritos sem rastro editorial | 6 exercícios, 1 com diário do produtor (G2), 1 desalinhado MD↔HTML (G3) | Aula 3 |
| **Didática (ponte/intuição)** | Bem calibrada, exceto o slide 1019 corrigido | Boa, prova 1º TBE muito bem feita | Empate técnico |
| **Box Brasil/Mundo** | Reforma tributária EC 132/2023 (Brasil) + Sistemas de cesta (Mundo) — ambos genuínos | EU ETS (Mundo) genuíno; futebol (Brasil) **pseudo-aplicação** (G5) | Aula 3 |
| **Consistência cruzada** | pré-aula↔durante↔slides↔exerc bate | IC4–IC6 com gaps leves a moderados | Aula 3 |
| **`durante_aula.md`** | Bom | **Excelente** (armadilhas, condicionais, ganchos para Alberto) | **Aula 4** |
| **Auto-crítica do produtor** | Reconheceu honestamente o ponto-fraco (slide 1019) | Reconheceu **a maioria** dos defeitos, mas com falso positivo (#3) e com submeasurement de #2 | Aula 3 |
| **Nota numérica** | 8.4 → 9.5+ pós-patches | 7.6 → ~9.0–9.2 pós-patches projetado | Aula 3 (largada melhor) |

**Diagnóstico final:** Aula 4 entregou um bundle com ambição pedagógica maior que Aula 3 (mais conceitos, prova rigorosa, dois cenários numéricos), mas pagou o preço em qualidade de execução. Os erros são todos **recuperáveis em 2–3h**. Não é "voltar ao desenho", é "limpar e finalizar". Recomendo **bloquear o render final** até a aplicação dos itens 1–7 do plano de remediação. Itens 8–10 podem ir junto ou em segundo round.

---

*Auditoria fechada em 2026-05-06 por `prof-mpe-micro` no modo Referee 2. Próximo passo: o produtor (versão "professor") aplica patches; um terceiro round de auditoria valida nota ≥ 9.0 antes do render do `.qmd` e do commit final.*
