# Auditoria do Bundle da Aula 1 — Microeconomia I MPE 2026/32

**Data:** 2026-04-22 (madrugada, ~4h antes da primeira aula)
**Auditor:** prof-mpe-micro (agente)
**Artefatos auditados:**

- `aula_1/slides/aula-01.qmd` (~1218 linhas, ~54 slides)
- `platform/aula-01.html` (pré-aula, 9 seções, 622 linhas)
- `platform/aula-01-pre.html` (quiz pré-aula, 10🟡, 258 linhas)
- `platform/aula-01-pos.html` (quiz pós-aula, 5🟡+5🔴, 270 linhas)
- `platform/aula-01-exerc.html` + `aula_1/exercicios-avaliativos.md` (6 exerc, 29 sub-itens)

---

## Veredicto geral

**Nota: 8.5 / 10.**

Bundle tecnicamente sólido, pedagogicamente bem-pensado, com **calibre compatível com o contrato "meio-termo entre graduação avançada e mestrado acadêmico"**. O rigor algébrico sobrevive a auditoria — não encontrei erros de fórmula ou gabarito com resposta trocada. As principais fraquezas são (i) **sobrecarga de tempo estourando o teto do contrato**, (ii) **saturação de um único contraexemplo** (lex aparece em 5 artefatos), e (iii) **pequenas inconsistências de notação** (`\succeq` vs `\succsim`). Nada impede a aula de hoje; algumas correções pequenas **deveriam** ser feitas ainda de madrugada.

---

## Nota por artefato

| Artefato | Nota | Comentário curto |
|---|---|---|
| Slides `aula-01.qmd` | 9.0 | Estrutura impecável, 3h bem distribuídas, `speaker notes` com fallback são ouro. Um deslize menor de ordem didática (Bloco 3 POF aparece **antes** da "Prática em dupla" no roteiro mas **depois** na numeração dos blocos). |
| Pré-aula (material) | 8.0 | Boa estrutura com micro-checkpoints + confiança pré/pós. Notação `\succsim` destoa do resto. Exercícios de papel 3.1 e 3.5 (pré-aula seção 6) **não batem** com o que os slides consolidam (3.5 e 3.7). Seção 3 usa construção lex diferente da dos slides. |
| Quiz pré-aula (10🟡) | 8.5 | Calibre correto, distratores bem pensados (especialmente Q2, Q4, Q7). Gabaritos 5-passos consistentemente bons. Q2 em $\mathbb{R}^3$ é elegante. Q5 "alfabetizar a fração" é piada boa. |
| Quiz pós-aula (5🟡+5🔴) | 8.5 | Distribuição justa, Q6 (identificar a construção correta entre 4) é excelente. Q8 sobre P1/P2/P3 (quasiconcavidade) é rigorosa — talvez rigorosa demais para pós-aula 1. Q10 depende de memória precisa do Panorama dos slides. |
| Exerc. avaliativos | 8.5 | 29 sub-itens é muito — 2h30–3h é realista mas já no teto. Calibre 🟢🟡🔴 está certinho. Ex 1 item (d) com alternativa correta **verbosa e confusa** de ler. Ex 5 é o melhor — boa sequência de limites. |

---

## Achados críticos (corrigir antes da aula)

**Nenhum erro factual grave** (fórmula errada, gabarito com resposta trocada, data errada).

Auditei as contas principais com cuidado:

- Slide 834 (mini-CD em $(4,9)$ com $\alpha=0{,}4$): TMS $= 1{,}5$. ✓
- Pré-aula seção 3 (lex violando continuidade, `aula-01.html:111-116`): sequência $x^n=(1+1/n, 0)\to(1,0)$ vs $y=(1,1)$. Construção válida para conjunto superior não-fechado. ✓
- Pré-quiz Q2 ($\mathbb{R}^3$ lex, `aula-01-pre.html:66`): construção $(1-1/n, 2, 0)\to(1,2,0)$ vs $y=(1,1,0)$. ✓
- Pré-quiz Q5 ($u=\sqrt{xy}$ em $(4,16)$): TMS $=y/x=4$. ✓
- Pré-quiz Q8 ($\rho=-1$): $\sigma=1/(1-(-1))=1/2$. ✓
- Pós-quiz Q2 ($\alpha=0{,}25$ em $(2,6)$): TMS $= (1/3)\cdot 3 = 1$. ✓
- Exerc 2 (a) ($\alpha=1/3$ em $(8,4)$): TMS $= (1/2)\cdot(4/8) = 1/4$. ✓
- Exerc 2 (b) gabarito afirma que $v_2 = x_1 x_2^2$ representa a mesma preferência que $u = x_1^{1/3} x_2^{2/3}$: verifiquei que $u^3 = x_1 x_2^2 = v_2$ e $t\mapsto t^3$ é estritamente crescente. ✓
- Exerc 3 (d) excedente = 1: $\int_1^\infty p^{-2} dp = 1$. ✓
- Exerc 4 (a) TMS em $(3,4)$ no ramo $2x_1>x_2$: $u=x_2$, TMS $=0$. ✓
- Exerc 5 (c): $s_1\to p_1/(p_1+p_2)=2/3$ no limite Leontief (com $\alpha=0{,}6$, $p_1=2$, $p_2=1$). Verifiquei: $\alpha^0 = (1-\alpha)^0 = 1$, consistente. ✓
- Exerc 5 (b): $s_1\to 0$ em substitutos perfeitos. Preço por unidade de utilidade: $p_1/\alpha=10/3$ vs $p_2/(1-\alpha)=2{,}5$. Bem 2 vence. ✓
- Exerc 5 (d): monotonia decrescente em $\rho$. Verifiquei via $\ln(s_1/(1-s_1)) = \sigma \ln\frac{\alpha p_2}{(1-\alpha)p_1} + \ln(p_1/p_2)$, com $\frac{\alpha p_2}{(1-\alpha)p_1} = 0{,}75 < 1$. Estritamente decrescente. ✓

**Um único ponto merece atenção antes da aula** (🟡 moderado, não 🔴 crítico):

**Exerc 1 item (d) — redação da alternativa correta (ii) é confusa**. O enunciado é:

> "Verdadeira, e a razão é que $\succeq^L$ é descontínua — pelo teorema de Debreu, continuidade é *suficiente*; a contrapositiva dá o resultado apenas se soubermos que é também *necessária* no domínio estendido do argumento de cardinalidade (ver passo 2 do gabarito)."

A frase está tecnicamente correta mas é **indistinguível de um distrator mal redigido** na leitura rápida. Aluno vai marcar (i) achando que (ii) é um truque. O item depende de **entender o argumento de cardinalidade ANTES de ver o gabarito**, o que é pedagogicamente duvidoso em 🟢. **Sugestão**: reescrever para "Verdadeira: $\succeq^L$ não admite qualquer $u$ (contínua ou descontínua) por argumento de cardinalidade — ver passo 2 do gabarito." O gabarito original do passo 2 já explica corretamente, então a alternativa pode só apontar para lá.

Os outros itens que chamei de "moderados" são estruturais e não impedem a aula.

---

## Achados por artefato

### 1. Slides `aula-01.qmd`

**Forças:**
- Estrutura de 3h **perfeitamente cronometrada** com 4 blocos + 2 pausas. A grade no slide 117 é didática por si só.
- `speaker notes` com **resolução completa** (linhas 445-471 para Debreu; 1025-1063 para 3.5; 1079-1112 para 3.7) são ouro — fallback real para quando aluno trava em sala.
- Construção lex (slides 282-308) é **linearmente limpa**: sequência → conjunto → conclusão → mecanismo.
- Slide 334 (prova de não-representabilidade via cardinalidade) é o **highlight intelectual** da aula — duas linhas que dobram a profundidade.
- Box Brasil POF (slides 876-934) ancora bem em dados reais. Tabela com 4 faixas × 3 bens é digerível em 10min.
- Painel de ordinalidade (slide 495-512) com **quasiconcavidade vs concavidade** em tabela é a joia conceitual que a turma vai levar para Slutsky (Aula 3).

**Fraquezas:**
- **Ordem de blocos no roteiro vs. nas divisórias**: o slide 117 (roteiro) lista "Bloco 3 — Box Brasil, 21:15–21:30" DEPOIS de "Bloco 2 — TMS, 20:35–21:15". Mas na numeração sequencial dos slides, o Bloco 3 (slide 863) aparece **antes** do Bloco 4 (slide 962), que é "Prática em dupla, 21:40–22:30". Isso bate com o roteiro. Confuso foi a segunda pausa (slide 851) dizer "voltamos às 21:40" — que é o começo do Bloco 4, **pulando** o Bloco 3. **Conclusão**: o Box Brasil acontece antes da pausa 2 (21:15–21:30), e a pausa 2 (21:30–21:40) vai direto para a prática. A estrutura real é: Bloco 2 → Bloco 3 → Pausa 2 → Bloco 4. O roteiro do slide 117 está consistente com isso, mas **o slide do Bloco 2 (slide 547)** diz "40 min · 20:35–21:15" e **o slide 851 (pausa 2)** diz "Voltamos às 21:40" — confere — mas um aluno lendo a sequência em PDF pensa que a pausa vem após o Bloco 3 (porque o Bloco 3 aparece antes dela na numeração dos slides? Não — Bloco 3 está entre slides 863-958, pausa 2 está no slide 851). **Verifiquei**: o slide 851 (pausa 2) vem ANTES do slide 863 (Bloco 3 Box Brasil). Isso está **errado** — segundo o roteiro, Box Brasil é 21:15–21:30 e pausa é 21:30–21:40. Os slides inverteram essa ordem. Ver Ação #1 abaixo.
- Slide 489 ("Prévia VNM") está solto — introduz utilidade afim sem contexto. Pode ficar, mas é interrupção de fluxo que não paga o custo didático em 45min iniciais.
- Slide 915-917 ("Pergunta para a turma... onde convexidade ameaça falhar?"): a resposta "preferências quase lexicográficas (comida > tudo)" é **pedagogicamente ambígua** — associa lex a falta de convexidade, quando lex **é** convexa fraca (ver Ex 1 gabarito). Risco de confundir a turma. Reformular.

**Ações priorizadas:**
1. **Urgente**: inverter ordem dos slides 851 (pausa 2) e 863–958 (Box Brasil). O roteiro do slide 117 está certo; os slides é que estão na ordem errada.
2. **Pode esperar**: revisar slide 915-917 para separar "pseudolexicográfica em subsistência" (violação de convexidade) de "lex estrita" (que é convexa).

---

### 2. Pré-aula (material `aula-01.html`)

**Forças:**
- Nine-section architecture com **confiança pré/pós** por seção é o pináculo do design formativo da plataforma — mede o que o aluno sente que sabe antes e depois.
- Micro-checkpoints obrigatórios (3 tentativas, com rolagem de volta ao texto em caso de erro) são excelentes em teoria e bem implementados em JS.
- Seção 6 "exercícios de papel" com campo de abordagem (mínimo 10 chars) força reflexão antes do clique.
- Box Brasil teaser na seção 5 (linha 253) é a ponte correta para o Bloco 3 presencial.
- LGPD-correto: reflexão final alimenta o dashboard, campo aberto com proteção contra "nada"/"tudo bem".

**Fraquezas:**
- **Inconsistência de notação**: seção 3 usa `\succsim` (linhas 95, 98, 99, 104, 105, 109); todo o resto do bundle usa `\succeq`. Não é erro matemático (ambos aceitos), mas cria fricção visual. Unificar em `\succeq`.
- **Exercícios de papel (seção 6) mencionam N&S 3.1, 3.5 e 3.7** (bônus). Mas os **slides do Bloco 4 consolidam N&S 3.5 e 3.7**. O 3.1 não é revisitado em sala. Decisão consciente ou descoordenação? Se foi consciente, justificar no texto da seção 6. Se não, trocar por 3.5 e 3.7.
- **Construção lex na seção 3** (linhas 111-116) usa $x^n = (1+1/n, 0)$ — diferente da construção dos slides ($x^n = (1-1/n, 2)$) e da pré-quiz Q2 e da pós-quiz Q6. Três construções distintas para o mesmo fenômeno. Pedagogicamente: **aluno lê três vezes o mesmo conceito em três roupagens** — pode ajudar por reforço (robustez do argumento) ou confundir (qual é a "canônica"?). Pender para **canonizar uma** nos slides e no material, e deixar as outras como exercício de "você consegue construir outra?".
- **Tempo declarado 75-90 min é subestimado**. Com 9 seções, 2 leituras longas (ZaE + N&S), 3 sliders de confiança, 3 conjuntos de micro-checkpoints (3 tentativas × 10s cooldown em erro), 3 exercícios de papel com campo de abordagem, checkpoint final de 3Q, e reflexão — o aluno lento passa de 2h facilmente. O rito "papel e caneta em cada equação" (seção 0 regra 1) contribui. **Não falsa propaganda exatamente, mas otimista**.

**Ações priorizadas:**
1. Trocar `\succsim` por `\succeq` na seção 3 (6 ocorrências). 5 minutos de trabalho.
2. Clarificar na seção 6 por que 3.1 entra e não 3.7 (ou substituir 3.1 por 3.7).
3. (Pode esperar) Avaliar se a construção lex da seção 3 deve ser alinhada à dos slides.

---

### 3. Quiz pré-aula (10🟡)

**Forças:**
- **Q2 (lex em $\mathbb{R}^3$)** é elegante — estende a lex sem "dar" a resposta por analogia óbvia. Distrator (a) ("mais bens, mais ciclos") captura exatamente quem não entendeu que a hierarquia de desempate **impede** ciclos.
- **Q4 (transformações)** com 5 candidatos distintos é diagnóstico forte. O caso $v_3 = u^2$ com domínio restrito a $u \geq 0$ é sutil e bem-trabalhado no gabarito.
- **Q5** ("alfabetizar a fração") é didaticamente cirúrgica — captura erro que **muitos** alunos cometem.
- **Q6** ($u=xy$ vs $v=2\ln x_1 + 2\ln x_2$): o distrator (c) "utilidades marginais iguais caracterizam preferência" é a confusão canônica entre ordinal e cardinal. Excelente.
- **Q7 (Leontief, proporção $a/b$)**: distrator (b) com a inversão de intuição ("coeficiente maior → mais consumo") é a exata armadilha esperada.
- **Q9 (qual afirmação é FALSA)** com "converge para Leontief" testa se aluno mapeou **os dois extremos** corretamente. Inverte a construção típica.
- **Q10 (quasilinear)** é a única questão cujo gabarito anuncia explicitamente a ressalva "em soluções interiores" — pedagogicamente honesto.

**Fraquezas:**
- **Q2 peer-review (linhas 68-69)**: afirma que "em $X$ enumerável (por exemplo $\mathbb{Q}^2_+$), a lex admite representação por uma $u$ perfeitamente comportada (só não-contínua na topologia usual)". Tecnicamente correto, mas **"topologia usual"** em $\mathbb{Q}^2_+$ é ambígua (topologia induzida do $\mathbb{R}^2$? discreta?). Se induzida, a afirmação é verdadeira (lex-representação em $\mathbb{Q}$ não é contínua na topologia induzida). Nota para mestres: esta sutileza também aparece no Exerc 6 item (e), onde está melhor resolvida. Unificar.
- **Q4 peer-review (linha 111)**: afirma que $v_2 = u^3$ "tem derivada zero em $u=0$ mas isso não contradiz estritamente crescente". Correto, mas pedante para 🟡 — esse nível de detalhe cabe melhor em 🔴. Aluno 🟡 sai com a impressão de que "estritamente crescente" tem pegadinha onde não tem.
- **Distribuição temática**: das 10 questões, 3 são sobre axiomas/Debreu/lex (Q1, Q2, Q3), 1 é ordinalidade (Q4), 1 é TMS CD (Q5), 1 é ordinalidade (Q6), 1 é Leontief (Q7), 2 são CES (Q8, Q9), 1 é quasilinear (Q10). Temas cobertos bem, mas **axiomas+ordinalidade dominam com 5 questões** — poderia ter 1 a mais em TMS/formas funcionais para equilibrar. Suave, não crítico.

**Ações priorizadas:**
1. Unificar o tratamento de "lex em $\mathbb{Q}^2$" entre Q2 e Exerc 6 (e). 15min.
2. (Pode esperar) Avaliar se Q4 peer-review é calibrado em 🟡.

---

### 4. Quiz pós-aula (5🟡+5🔴)

**Forças:**
- **Q6 (4 construções de contraexemplo)** é a questão mais sofisticada de todo o bundle — obriga o aluno a **distinguir qual sequência efetivamente quebra continuidade**. Peer-review (linha 157) sobre a versão dual (conjunto superior não-fechado) é dourado.
- **Q7 (CES família-mãe)** distingue "$\sigma=1$ constante" (CD) de "$\sigma$ constante em geral" (CES). Exatamente o erro de memória que Q7 alt (a) captura.
- **Q8 (quasiconcavidade P1/P2/P3)**: a hierarquia fraca/estrita é calibrada. Distrator (b) é perfeito — TMS decrescente não-estritamente **é** convexa fraca.
- **Q9 (quasilinear, por que EV=CS)**: alternativa (b) "homogeneidade de grau 0" é *distractor canônico estrutural* — aluno que confunde teoremas gerais com especificidades de família.
- **Q10 (recíprocas)** testa a proposição mais subtil da aula: os axiomas 4 e 5 **não seguem** de $u$ contínua. Distrator (a) captura o erro mais comum.

**Fraquezas:**
- **Q1 gabarito item 2 "Derivação"** cita a fórmula $\{x: x \succeq y\} = u^{-1}([u(y), \infty))$ como fechada — correto. Mas no **passo 5 peer-review** diz "A força do contraexemplo [lex] está em $\mathbb{R}^2_+$ — é a topologia do contínuo que a lex não tolera". Esta frase contradiz o **passo 4 extensão** que usou o argumento de cardinalidade (linha 51). O verdadeiro motivo da não-representabilidade é **cardinalidade** (como o exerc avaliativo 6 corretamente ensina), não "topologia do contínuo". A confusão entre "viola continuidade" e "não tem $u$ qualquer" se repete aqui — Q1 precisa ser mais preciso.
- **Q6 alternativa (a)** "Tome $x^n = (1, 1-1/n) \to (1,1)$ e $y=(1,1)$": o gabarito explica corretamente que **não há pulo** nesse caso. Mas um aluno menos atento pode marcar (a) achando "ah, sequência converge, comparação muda"— sem notar que $y\sim x$ no limite. A distractora (a) testa exatamente leitura cuidadosa. ✓ Isso é força, não fraqueza.
- **Q9 peer-review** é ótimo (linha 218) — aponta o slide específico da aula. Pedagogicamente impecável.
- **Q10** é pesada para um pós-aula 1: testa a formulação "recíproca do teorema" que o aluno acabou de ver em aula. Talvez 🔴 merecido, mas flertando com 🔴🔴. A distractora (c) é a mais sutil (completude/transitividade são automáticas dado $u$) — exige calibração fina.

**Ações priorizadas:**
1. Revisar o passo 5 da Q1 (linha 52) para alinhar com o argumento de cardinalidade — usar linguagem de Exerc 6 gabarito passo 1.
2. (Pode esperar) Avaliar se Q10 é calibrada em 🔴 ou se deveria ser 🔴🔴.

---

### 5. Exercícios avaliativos (6 exerc, 29 sub-itens)

**Forças:**
- **Calibre 🟢🟡🟡🟡🔴🔴** está correto em cada exercício.
- **Ex 1 (lex + variantes)** é o ponto de partida perfeito: introduz zona cega e aproximação linear para testar se aluno entende *qual* axioma está em jogo em cada caso.
- **Ex 2 (CD + transformações)** com 4 candidatos $v_1, v_2, v_3, v_4$ (incluindo negativo como distrator) é calibrado em dificuldade. Item (e) "econometrista observa $\alpha$ variando entre períodos" é sofisticado — força separar "CD puro" (mesmo $\alpha$) de "CD estimado em períodos diferentes".
- **Ex 3 (quasilinear)** é o mais completo do bundle — TMS, Marshalliana, caminho de expansão, excedente, e ressalva de canto. É o **modelo** de como deve ser um exercício no curso.
- **Ex 4 (Leontief + CES $\rho=1/2$)** em narrativa de viagem é boa pedagogia aplicada. Cenário A/B permite comparar regimes no mesmo par $(x_1, x_2)$.
- **Ex 5 (limites CES com parcelas)** é o **highlight técnico**: força o aluno a aplicar a fórmula fechada de parcelas em 3 limites + checar monotonia. Item (d) (monotonia decrescente em $\rho$) exige entendimento *dinâmico* da família. Peer-review (linha 361) honesto sobre o tradeoff pedagógico.
- **Ex 6 (Debreu em $\mathbb{R}^3$, $\mathbb{Q}^3$, domínio finito)** amarra cardinalidade + continuidade + representabilidade na escala certa para 🔴.

**Fraquezas:**
- **Ex 1 item (d) alt (ii)**: como diagnosticado nos achados críticos, a redação é confusa. **Corrigir antes do aluno acessar** (30/04 é a data do gabarito, então não urge para a aula de hoje, mas urge antes da liberação).
- **Ex 2 item (b) gabarito** (linha 146): o texto "aluno confunde 'transformação monótona' com 'monótona em módulo'" é impreciso — "monótona em módulo" não é conceito estabelecido. Melhor: "aluno confunde 'estritamente crescente' com 'monótona' em sentido coloquial".
- **Ex 4 peer-review** (linha 292) admite que a forma funcional externa $(...)^2$ em vez de $(...)^{1/\rho}$ "coincide em $\rho=1/2$ por acaso numérico" — esta honestidade é louvável, mas **pode confundir aluno que entra em CES no futuro e reconstrói a fórmula**. Reescrever o enunciado usando forma canônica $u^{1/\rho}$ evita o problema sem custo.
- **Ex 5 peer-review** (linha 361) reconhece que "a fórmula fechada dada no enunciado 'estraga' um pouco a exigência de derivação". Crítica procedente. Mas como a Aula 2 ainda não aconteceu, não há alternativa — mantém.
- **Ex 6 item (e)**: gabarito (linha 433) admite que a "fragilidade é real" e decide não reescrever. Esta é uma decisão consciente de alto nível, mas **o aluno 🔴 que marca (i) achando que continuidade é o problema em $\mathbb{Q}^3$** não vai aprender com o erro se o gabarito não desambiguar. Sugestão: adicionar uma linha extra no passo 3 "Armadilha" explicando que **a lex em $\mathbb{Q}^3$ viola continuidade de preferência na topologia induzida, mas ainda admite representação — são duas propriedades distintas**.

**Ações priorizadas:**
1. **Antes de 30/04 (liberação do gabarito)**: corrigir redação de Ex 1 alt (d)(ii) e de Ex 6 item (e) armadilha.
2. **Pode esperar**: revisar terminologia do Ex 2 gabarito (monótona em módulo).
3. **Pode esperar**: considerar reescrever Ex 4 Cenário B com forma canônica CES.

---

## Achados cruzados (entre artefatos)

### Duplicações

- **Lex violando continuidade**: 5 aparições (slides + pré-aula material + pré-quiz Q2 + pós-quiz Q6 + exerc 1 + exerc 6). É o conceito-âncora da aula, merece reforço. Mas **3 construções distintas** de sequência ($(1-1/n, 2)$, $(1+1/n, 0)$, $(1-1/n, 2, 0)$) podem confundir. **Recomendação**: canonizar $(1-1/n, 2)\to(1,2)$ vs $y=(1,1)$ como a "oficial" nos slides e no material; deixar as outras como exercícios explícitos de "construa outra sequência".
- **TMS numérica em CD**: 4 aparições. Progressão cresce em sofisticação. Sem problema.
- **$\sigma$ em CES**: 4 aparições. Progressão cresce. OK.
- **Quasilinear + excedente**: 4 aparições. Ex 3 é a consolidação final. OK.

### Gaps de cobertura

- **Monotonicidade (axioma 4) variantes (forte/fraca/NSL)**: só aparece como distrator. Nenhuma questão dedicada. Slide 362-365 apresenta as três variantes e a pré-aula seção 3 enumera, mas nenhum quiz testa "qual variante basta para bem-estar?". **Gap real** — a Aula 4 (bem-estar) vai precisar disso e o aluno não teve reforço.
- **Homotetia**: mencionada em Exerc 3 item (c) distrator, e slide `homotetica-vs-quaselinear`, mas **nunca definida formalmente no bundle**. CES é homotética, fato que ancora EG (Aulas 4-5). **Gap real, médio**.
- **Curva de indiferença como objeto visual**: os gráficos interativos existem (TMS, transformação monotônica, CES contínua), mas nenhum quiz usa uma CI como objeto de raciocínio. Tudo é algébrico. Tradeoff OK para MPE, mas talvez 1 questão visual.

### Progressão

**Padrão observado** (quase universal):
- Pré-aula material: introduz conceito, pergunta diagnóstica.
- Pré-quiz 🟡: testa reconhecimento + aplicação simples.
- Pós-quiz 🟡 (5 questões): consolida.
- Pós-quiz 🔴 (5 questões): aprofunda.
- Exerc avaliativos: síntese + casos complexos.

**Progressão correta para TMS, ordinalidade, CES, quasilinear.** Lex é onde a progressão é mais estranha — aparece cedo (slides) e é retomada **sem novo ângulo** várias vezes. Poderia ter "lex em $\mathbb{R}^3$" como o único aprofundamento real (e ele existe, em pré-quiz Q2 e exerc 6).

### Notação inconsistente

- **$\succeq$ vs $\succsim$**: `\succsim` aparece apenas em `aula-01.html` seção 3. Todos os outros artefatos usam `\succeq`. **Unificar em $\succeq$** (padrão dos slides). 6 ocorrências para trocar.
- **Vírgula vs ponto decimal**: o bundle usa vírgula consistentemente (`0{,}25`, `0{,}5`). Bom.
- **`\text{TMS}` vs `\text{MRS}`**: bundle todo usa TMS. ✓
- **Bundle inteiro em PT-BR**: ✓
- **Referências a capítulos**: "ZaE §3.X" e "N&S 12e §X" são consistentes. ✓

### Sobrecarga cognitiva

**Total declarado:**
- Pré-aula material: 75–90 min
- Pré-quiz: 25–40 min
- Pós-quiz: 40–60 min
- Exerc avaliativos: 2h30–3h (150-180 min)

**Soma: 4h30–6h30.**

O contrato MPE implícito é "4–6h/semana". Para a Aula 1, **o bundle fica no teto e estoura para alunos lentos**. Particularmente preocupante:

- A Aula 1 é a **primeira** — aluno ainda está calibrando ritmo.
- Pré-aula material tem 9 seções, micro-checkpoints obrigatórios com cooldown, 3 conjuntos de slider de confiança, 3 exercícios de papel com campo textual mínimo, checkpoint final, e reflexão obrigatória de 2 campos. **75 min é otimista.**
- Exerc avaliativos: 29 sub-itens é **muito para 2h30**. Alunos cuidadosos levam 4h+.

**Recomendação pós-aula**: coletar tempo real do tracker (via `page_visits` e `section_progress`) depois da primeira leva e recalibrar. **Antes da aula, nada muda**.

---

## Ranking de ações (top 10, priorizadas)

### Antes da aula 1 (hoje 19:30)

1. **Corrigir ordem dos slides: pausa 2 (slide 851) deve vir DEPOIS do Box Brasil (slides 863-958), não antes**. Caso contrário a aula quebra em tempo real. [🔴 15min]
2. **Unificar notação `\succsim`→`\succeq` na pré-aula material (`aula-01.html` seção 3)** — 6 ocorrências. [🟢 5min]
3. **Slide 915-917 (POF/convexidade)**: revisar para não sugerir que "lex viola convexidade". Lex é convexa fraca; o que viola convexidade é preferência "subsistência em canto", que é qualitativamente diferente. [🟡 10min]

### Antes da liberação do gabarito (30/04)

4. **Reescrever alternativa correta (ii) do Exerc 1 item (d)** — a redação atual é verbosa e confusa. Usar linguagem de cardinalidade direta (como Exerc 6). [🟡 15min]
5. **Corrigir redação do Ex 2 gabarito passo 3** ("monótona em módulo" → "estritamente crescente vs. coloquialmente monótona"). [🟢 5min]
6. **Adicionar linha no gabarito do Ex 6 (e)** armadilha, explicando que continuidade **também** falha em $\mathbb{Q}^3$ mas representabilidade sobrevive — são propriedades distintas. [🟡 15min]

### Depois da aula 1 (antes da 2)

7. **Alinhar construção lex entre slides, pré-aula material, pré-quiz Q2, pós-quiz Q6**: canonizar $(1-1/n, 2)\to(1,2)$ vs $y=(1,1)$; outras ficam como "exercício: construa outra sequência". [🟡 30min]
8. **Pós-quiz Q1 passo 5**: alinhar com argumento de cardinalidade (como Ex 6 faz). [🟢 10min]
9. **Adicionar questão sobre monotonicidade variantes (forte/fraca/NSL)** em algum ponto — candidato natural: pré-quiz 2 (UMP/EMP, onde NSL será usada). [🟡 30min]
10. **Coletar telemetria real de tempo** após a primeira leva e recalibrar os tempos declarados nos artefatos. [🟢 passivo]

---

## Sugestões de aperfeiçoamento estrutural (não urgentes)

- **Definir homotetia formalmente** em algum ponto do bundle antes da Aula 4. Sugestão: micro-box dedicado na Aula 2 material (quando UMP for apresentada), já que homotetia tem consequências diretas em Marshalliana homogênea.
- **Uma questão visual** que use uma CI como objeto (e não só cálculo algébrico). Exerc 4 Cenário A já tem vértices Leontief — candidato natural para transformar em "identifique qual ponto está no ramo vertical/horizontal/vértice".
- **Escala de confiança pré/pós** da pré-aula não é usada nos quizzes. Poderia entrar também, gerando sinal calibrado para o dashboard.
- **Padrão de captions dos gráficos interativos**: os iframes têm `class="graph-iframe-full"` e `class="graph-iframe-tall"` mas o livro-texto usa também `class="graph-iframe"` e `class="graph-iframe-panel"`. Verificar consistência com padrão do livro (Cap 3 é gold standard).
- **Registro de tempo real**: usar `MicroTracker.startSection` + `MicroTracker.recordSectionComplete` para gerar distribuição empírica de tempos por seção. Depois da Aula 1, republicar tempos-alvo com base em mediana + P75 observados.

---

## Peer-review desta auditoria

**Onde estou menos confiante:**
- **Ordem dos slides (ação #1)**: rodei os números de linha dos slides e concluí que pausa 2 (linha 851) vem antes do Box Brasil (linha 863). Mas se o Quarto renumerar ou o deployment estiver em outra ordem, minha conclusão falha. **Verificar renderizando os slides antes de agir**.
- **Sobrecarga cognitiva (6h30)**: calculei somando tempos declarados, mas não tenho dados reais de turmas anteriores. Pode ser que alunos MPE (que já fizeram onboarding matemático) batam o limite inferior consistentemente. **Aguardar dados reais antes de decisão mais agressiva**.
- **Construção lex em 3 formas diferentes**: pode ser feature (mostra robustez) ou bug (confunde). Dependo de observar reação da turma.

**O que esta auditoria provavelmente perdeu:**
- **Dimensão de UX**: não testei as páginas HTML em navegador real. Funcionalidade do MathJax, responsividade, acessibilidade, compatibilidade com leitores de tela — tudo fora do escopo desta revisão.
- **Integração com tracker**: não verifiquei se os `data-phase`, `data-qid`, `data-difficulty` estão sendo persistidos corretamente no Supabase via `MicroQuizGraded`. Assumi que o backend funciona.
- **Edição final de português**: li por conteúdo técnico, não por estilo. Pode haver vírgulas, pontuação, concordância questionáveis. Um *passe de copidesque* valeria.
- **Coerência didática ampla**: avaliei bundle contra o ementário da Aula 1; não verifiquei se expectativas da Aula 2 (UMP/EMP) são consistentes com o que se planta aqui. Tarefa para a auditoria do bundle da Aula 2.

**Um cético perguntaria:** "você chamou todos os achados corretamente de 🟢🟡🔴?" Honestamente, talvez tenha sido generoso com 🟢 em alguns pontos. A correção da ordem dos slides (ação #1) é **crítica** — se errar, quebra a aula em tempo real. Mantenho 🔴 moral, mesmo sendo 15min de trabalho.
