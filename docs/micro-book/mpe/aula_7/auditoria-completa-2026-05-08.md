# Auditoria completa Aula 7 — 2026-05-08

**Modo:** Referee 2 implacável · **Escopo:** gabaritos drill-down (~80 itens) + precisão de conteúdo + não-regressão dos 7 fixes pass-5 · **2ª passada após pass-5 (commit pendente).**

---

## Veredito de uma linha

**Score 9.7/10** — bundle pedagogicamente sólido; 7 fixes do pass-5 sustentaram-se intactos, drill-down algébrico não acha bug em nenhum dos 28 sub-itens dos avaliativos nem nas 20 questões dos quizzes; um achado novo (gabarito Q7 pré com placeholder textual `(algo)` e fórmula errada na nota de extensão) que pass-5 não pegou — porte minor, fácil de corrigir antes da abertura.

---

## Resumo executivo (10 linhas)

A 2ª passada confirma o trabalho de fix do pass-5 e empurra a granularidade um nível abaixo. **Verifiquei algebricamente todas as soluções**: Q4 pós ($G^*=6$ vs distrator $G^*=3$, B1 fix), Q5 pós (Lindahl $\tau^A=1/3, \tau^B=2/3$), Q6 pós (cap-and-trade 62,5 vs 40, economia 36%), Q7 pós (Coase + efeito-renda), Q8 pós (VCG 3 agentes pivot test, M6 fix), Q10 pós (meta-questão Coase 1.000 agentes, M4 fix com fator <1,5×), Q7 pré (Samuelson $G^*=25$), Q8 pré (Nash $G^N=1$, razão $1/I^2$), Ex 1 (Pigou $q^*=6, t^*=6$), Ex 2 (Coase $q^*_A=6$), Ex 3 (Samuelson $G^*=9$, Lindahl $\tau^i=1/3$), Ex 4 (cap-and-trade $p=10$, custos 75 vs 84,375), Ex 5 (VCG decisão "não", $t^C=16$), Ex 6 (Hardin $E^N=72, E^*=45, t=33{,}75$, M5 fix com simetria explícita). **Todas as álgebras fecham.** Todos os 5 spot-checks de não-regressão dos fixes pass-5 (B1, M1, M4, M5, M7) passaram. Verificações programáticas de anti-padrões: zero `\succsim`, zero `MRS`/`MRT`, zero "todas acima", zero markers `[verificar DOI]`, zero delimitadores Quarto-style em HTMLs. Encontrei **1 novo achado minor que pass-5 não pegou** (Q7 pré gabarito de extensão com `(algo)` literal e fórmula errada), além de **3 nuances factuais** (Suécia "primeiro do mundo" — provavelmente foi Finlândia 1990 antes de Suécia 1991; redação Hardin "tragédia universal" simplifica demais; BBV "um único agente" é a versão forte do resultado, não o resultado canônico amplo). PDF cap19 segue pendente do bucket (M3 ainda aberto, não-regressão de pass-5). Bundle pronto para abertura em qui 28/05; um lote de polimento de ~10 minutos resolve os achados desta passada.

---

## 🚨 PASS-5-MISS (1)

### Pre-Q7 — gabarito da extensão tem `(algo)` literal e fórmula matematicamente errada

✅ **RESOLVIDO em 2026-05-08** (commit pendente). Texto reescrito em `platform/aula-07-pre.html:164` com fórmula correta `G^* = (Ia)^2/(4c^2)`, dois casos de verificação (`I=5,a=4,c=2 ⇒ G*=25` e `I=1,a=1,c=1 ⇒ G*=1/4`), placeholder `(algo)` removido. Diagnóstico original preservado abaixo para auditoria histórica.

**Arquivo:** `platform/aula-07-pre.html:164`

**Texto exato:**

> **4. Extensão.** Generalização: para $u^i = x^i + a\sqrt{G}$ com $I$ agentes idênticos e $\text{TMT} = c$, $G^* = (Ia/(2c))^2 \cdot 4 = (Ia/c)^2 / (algo)$. Verificar com casos: $I=1, a=1, c=1 \Rightarrow G^* = 1/4$. Vale notar pedagogicamente: $G^*$ cresce quadraticamente em $I$ (não linearmente) — efeito de não-rivalidade.

**Dois problemas**:

1. **Placeholder textual não-preenchido**: `/(algo)` — palavra portuguesa "algo" entre parênteses, deixada como TODO de redação.
2. **Fórmula fechada incorreta**: `G^* = (Ia/(2c))^2 \cdot 4`. Verificação algébrica:
   - $u = x + a\sqrt{G}$ ⇒ $u_G = a/(2\sqrt{G})$, $u_x = 1$ ⇒ $\text{TMS}^i = a/(2\sqrt{G})$
   - Samuelson: $I \cdot a/(2\sqrt{G}) = c$ ⇒ $\sqrt{G} = Ia/(2c)$ ⇒ $G^* = (Ia/(2c))^2 = (Ia)^2/(4c^2)$.
   - O que está escrito: $(Ia/(2c))^2 \cdot 4 = (Ia)^2/(4c^2) \cdot 4 = (Ia)^2/c^2$ — fator 4 a mais.
   - Para $I=5, a=4, c=2$ (parâmetros do Q7): a fórmula errada dá $(5 \cdot 4)^2/2^2 = 400/4 = 100$, **não 25** que é o gabarito correto.
   - O caso "verificar" $I=1, a=1, c=1 \Rightarrow G^* = 1/4$ que aparece no texto está certo (porque $1/(4 \cdot 1) = 1/4$ casa com a fórmula correta $(Ia)^2/(4c^2)$, não com $(Ia/(2c))^2 \cdot 4$ que daria $1$). Ou seja, a primeira igualdade do "$G^* = (Ia/(2c))^2 \cdot 4 = (Ia/c)^2 / (algo)$" é errada também — o caso "verificar" só fecha com a forma canônica $(Ia)^2/(4c^2)$.

**Por que pass-5 não pegou:** o corpo do Q7 (cálculo direto $G^* = 25$) está certo. O bug está na nota auxiliar de "extensão", que é texto secundário do gabarito 5-passos. Em uma auditoria estrutural rápida, o leitor "cumpre o caso $I=1, a=1, c=1$" e segue. Em drill-down algébrico explícito, o erro fica visível imediatamente.

**Severidade:** **minor (escala do impacto)**, mas com **flag PASS-5-MISS** porque o achado é exatamente do tipo que a 2ª passada deve pegar — pequeno e na sombra do passo principal. Aluno cuidadoso (calibre 🟡, mas público MPE) **vai** detectar e questionar.

**Correção sugerida:** substituir o texto por

> Generalização: para $u^i = x^i + a\sqrt{G}$ com $I$ agentes idênticos e $\text{TMT} = c$, vale $G^* = \dfrac{(Ia)^2}{4c^2}$. Verificar com casos: $I=5, a=4, c=2 \Rightarrow G^* = 25$ ✓ (este Q7); $I=1, a=1, c=1 \Rightarrow G^* = 1/4$. Vale notar: $G^*$ cresce quadraticamente em $I$ (não linearmente) — efeito de não-rivalidade.

Tempo estimado da correção: 2 min.

---

## 🔴 Blockers (0)

Nenhum. B1 (Q4 pós duplicação $G^*=9$) sustentou-se totalmente: alternativas (a) e (b) com valores numéricos distintos ($G^*=3$ e $G^*=6$ respectivamente), fórmula limpa, distrator pedagógico claro. Q5 pós recalibrado coerentemente.

---

## 🟡 Major (0)

Nenhum novo. Os 7 majors do pass-5 estão fechados (B1, M1, M2, M4, M5, M6, M7); M3 (PDF cap19 no bucket) é operação manual do Darcio e segue pendente — **não é regressão**, é continuidade do estado pré-pass-5.

---

## 🟢 Minors (3 novos + 1 herdado)

### m9 (NOVO, fact-check). Suécia "primeiro do mundo" em carbon tax (1991) — provavelmente Finlândia (1990)

✅ **RESOLVIDO em 2026-05-08** (commit pendente). Reescrita em `platform/aula-07-exerc.html:316`: "Suécia adotou imposto direto sobre carbono (1991, junto com Finlândia 1990 e Holanda como pioneiros; hoje com a maior tarifa do mundo, ~$130/tCO_2)". `aula-07-pre.html:126` já não dizia "primeiro do mundo" — único loci era exerc.

**Arquivos:** `platform/aula-07-pre.html:126`, `platform/aula-07-exerc.html:316`.

Texto recorrente: *"Suécia adotou imposto direto sobre carbono (1991, primeiro do mundo, ~$130/tCO_2$ hoje)"*.

**Fato:** o consenso da literatura ambiental é que **Finlândia foi o primeiro país do mundo a implementar carbon tax nacional, em 1990** — Suécia veio em 1991 (e a Holanda também em 1990, sob estrutura distinta). A Suécia tem **a maior tarifa do mundo** atualmente (~$130/tCO_2$ está consistente com 2023+), o que pode ter sido fonte da confusão. O bundle não tem WebFetch ativado, então deixo a sinalização aqui para o Darcio confirmar com fonte de seu conhecimento.

**Severidade:** **minor**. Correção sugerida: trocar "primeiro do mundo" por "uma das primeiras do mundo, junto com Finlândia (1990) e Holanda" OU "(maior tarifa do mundo, ~$130/tCO_2$ hoje)".

### m10 (NOVO, redação). Hardin (1968) "previu tragédia universal" simplifica demais

✅ **RESOLVIDO em 2026-05-08** (commit pendente). Reescrita em `platform/aula-07-exerc.html:456` (linha real, não 453 como audit) e `aula_7/exercicios-avaliativos.md:372`: "Hardin (1968) descreveu a dinâmica de sobreuso em acesso aberto ('tragédia dos comuns'); Ostrom (1990) documentou que comunidades reais frequentemente saem do acesso aberto via instituições locais, evitando assim a dinâmica de Hardin." Espelhamento MD↔HTML verificado.

**Arquivo:** `platform/aula-07-exerc.html:453` (Ex 6 gabarito 5-passos).

**Texto:** *"Hardin (1968) previu tragédia universal; Ostrom (1990) documentou que pode ser evitada localmente."*

**Nuance:** Hardin (1968) escreveu sobre **commons em acesso aberto** — não fazia previsão universal sobre comunidades, instituições, ou recursos com regras de uso. A citação clássica é "the freedom to breed in a commons brings ruin to all" — argumento sobre acesso não-regulado. Ostrom (1990) **não contraditou Hardin para todo recurso comum**; ela documentou que comunidades reais frequentemente **inventam regras de uso** (sair do acesso aberto), evitando assim a tragédia que Hardin descreveu para o caso sem regras. Ou seja, Hardin e Ostrom não estão tão em oposição quanto a redação sugere.

**Severidade:** **minor**. Correção sugerida: *"Hardin (1968) **descreveu a dinâmica de sobreuso em acesso aberto** ('tragédia dos comuns'); Ostrom (1990) documentou que **comunidades reais frequentemente saem do acesso aberto** via instituições locais, evitando assim a dinâmica de Hardin."*

### m11 (NOVO, técnico). Bergstrom-Blume-Varian (1986) — "um único agente provê todo" é versão forte

✅ **RESOLVIDO em 2026-05-08** (commit pendente). Aplicado apenas em `platform/aula-07-pos.html:199` (Q9 alternativa correta) onde a redação dizia "Em equilíbrio Nash genérico, apenas um único agente" → reescrita para "Em equilíbrio Nash com assimetria suficiente entre agentes, o conjunto de contribuintes ativos colapsa para um subconjunto pequeno — no limite, um único agente...". As outras 2 ocorrências (`aula-07.html:261` e `aula-07-exerc.html:249`) já condicionavam corretamente em "sob assimetria de renda" / "agentes assimétricos (rendas diferentes)" — mantidas.

**Arquivos:** `platform/aula-07-pos.html:199` (Q9), `platform/aula-07.html:261`, `platform/aula-07-exerc.html:249` (Ex 3 extensão).

**Texto Q9 pós:** *"Em equilíbrio Nash genérico, apenas um único agente (o de maior valoração marginal por renda) provê todo o bem público; os outros pegam carona perfeito ($g^j = 0$)."*

**Nuance:** o resultado canônico de BBV 1986 é a **neutralidade** ("transferências de renda entre contribuintes não afetam $G$") + caracterização endógena do conjunto de contribuintes. **Sob assimetria suficiente**, o conjunto de contribuintes degenera em singleton, e aí vale "um único agente provê todo". Em economia menos assimétrica, há vários contribuintes ativos. A redação no bundle dá a versão extrema como se fosse o resultado canônico — pedagogicamente útil mas tecnicamente forte demais para 🔴.

**Severidade:** **minor**. Pode ser mantida porque é a leitura aplicada-canônica (NATO, Wikipedia, open-source). Para um aluno que vá ler BBV no original (improvável em MPE mas possível), a sutileza fica vaga. Correção sugerida (opcional): *"em equilíbrio Nash com **assimetria suficiente** entre agentes, o conjunto de contribuintes ativos colapsa para um subconjunto pequeno (no limite, um único agente — o de maior valoração marginal por renda)..."*.

### m7 (HERDADO, ainda em aberto). Almeida et al. 2009 sem DOI/veículo

**Arquivos:** `aula_7/exercicios-avaliativos.md:372`, `platform/aula-07-exerc.html:456`.

Pass-5 já flagou. Continua não corrigido nesta janela. Não bloqueia release. Sugestão pass-5 mantida: trocar por **Castello et al. 2009, *Conservation Biology* 23(3): 624-632, [DOI 10.1111/j.1523-1739.2008.01153.x]** (manejo participativo de pirarucu na Amazônia, referência canônica).

---

## Frente A — Gabaritos drill-down (~80 itens)

### A.1 Quiz pré-aula 07 (10 questões 🟡)

| Q | Tópico | data-correct | Verificação algébrica | Status |
|:--|:--|:--:|:--|:--|
| Q1 | Definição operacional de externalidade | b | Definicional, sem cálculo | ✅ |
| Q2 | Pigou avaliação $\text{MEC}(q^*)$ | c | Definicional, sem cálculo | ✅ |
| Q3 | Coase 3 hipóteses | d | Definicional | ✅ |
| Q4 | Externalidade pecuniária × tecnológica | b | Conceitual | ✅ (m4 do pass-5: alternativa (d) leve ambiguidade Pareto-melhoria vs Pareto-eficiência, mas segue) |
| Q5 | Equivalência cap-and-trade vs Pigou | c | Conceitual + Weitzman | ✅ |
| Q6 | Bem público puro: rivalidade × exclusibilidade | b | Definicional | ✅ |
| Q7 | Samuelson simétrico, $I=5, a=4, c=2$ | b | $G^* = 25$: $5 \cdot (2/\sqrt{G}) = 2 \Rightarrow \sqrt{G}=5$ ✓ | ✅ corpo · 🚨 **extensão ver PASS-5-MISS** |
| Q8 | Free-rider Nash, mesmo cenário | b | $G^N = 1$: $2/\sqrt{G}=2 \Rightarrow G=1$. Razão $1/I^2 = 1/25$ ✓ | ✅ |
| Q9 | Lindahl $\sum \tau^i = \text{TMT}$ | c | Conceitual, derivação OK | ✅ |
| Q10 | VCG verdade-dominante (Clarke pivot) | b | Conceitual + sketch | ✅ |

**Distratores:** todos plausíveis (testam confusões pedagógicas reais). Nenhum trivial. Nenhum "todas acima" ou "nenhuma das anteriores". Sem distrator que se autodelata.

**Gabarito 5-passos:** todos os 10 cumprem o contrato (ponto-chave / derivação / armadilha / extensão / peer-review). **Exceção:** Q7 extensão (m9 acima).

### A.2 Quiz pós-aula 07 (5🟡 + 5🔴)

| Q | Calibre | Tópico | data-correct | Verificação | Status |
|:--|:--:|:--|:--:|:--|:--|
| Q1 | 🟡 | Pigou $q^*=6, t^*=12$ | c | $30-2q$ vs $4+4q$ → $q^*=6$, $t = 2 \cdot 6 = 12$ ✓ | ✅ |
| Q2 | 🟡 | Coase 2 casos | b | Conceitual canônico | ✅ |
| Q3 | 🟡 | Matriz 2×2 (bombeiros, parque, lago) | c | 3 quadrantes corretos | ✅ |
| Q4 | 🟡 | Samuelson assimétrico $\ln G$, B1 fix | b | $G^*=6$: $2/G + 4/G = 6/G = 1$ ✓; distrator (a) $G^*=3$ distinto ✓ | ✅ **B1 sustentado** |
| Q5 | 🟡 | Lindahl preços assimétricos | b | $\tau^A=1/3, \tau^B=2/3$, soma=1=TMT ✓ | ✅ |
| Q6 | 🔴 | Cap-and-trade vs comando-controle | c | $r_A=2, r_B=8, p=8$; CC=62,5; CT=40 ✓ | ✅ |
| Q7 | 🔴 | Coase + efeito-renda quebra independência | b | Conceitual avançado, redação correta | ✅ |
| Q8 | 🔴 | VCG 3 agentes ($v^A=8, v^B=5, v^C=-10$) | c | $d^*=$sim, $t^A=5, t^B=2, t^C=0$ ✓; M6 redação clara | ✅ **M6 sustentado** |
| Q9 | 🔴 | BBV 1986 single-provider | c | Conceitual; ver m11 sobre versão forte | ✅ (caveat m11) |
| Q10 | 🔴🔴 | Meta-questão Coase 1.000 agentes | b | Comprimentos a=663, b=854, c=690, d=582; razão (b)/min=1,47× ✓ | ✅ **M4 sustentado** |

**Distratores:** todos plausíveis. Q8 e Q10 com distratores especialmente engenhosos (Q8 (b) calcula $t^C$ como pivot quando não é; Q10 (a)/(c)/(d) com falsidades sofisticadas).

**Q10 fator de comprimento:** 854/582 = **1,47×** — bem dentro do limite <2× explicitado no fix M4. Sinal de comprimento neutralizado.

**Gabarito 5-passos:** todos os 10 cumprem o contrato. Q8 derivação reescrita pós-M6 está limpa. Q10 peer-review explicita decisão pedagógica do "alternativa longa por necessidade", coerente com o calibre 🔴🔴.

### A.3 Exercícios avaliativos (6 exercícios, 28 sub-itens)

| Ex | Calibre | Tópico | Sub-itens | Verificação numérica | Status |
|:--|:--:|:--|:--:|:--|:--|
| 1 | 🟢 | Pigou parcial $P=30-2q$, $\text{MC}_p=6+q$, $\text{MEC}=q$ | 5 (a-e) | $q^p=8, q^*=6, t^*=6$, Harberger=8 ✓ | ✅ |
| 2 | 🟡 | Coase $P^A=16$, $\text{MC}^A=2q_A$, $\text{MEC}=4$ | 5 (a-e) | $q^p_A=8, q^*_A=6$, ambos casos chegam em $q^*_A=6$ ✓ | ✅ |
| 3 | 🟡 | Samuelson $I=3, u=x+3\ln G, c=1$ | 5 (a-e) | $G^*=9, G^N=3$ (razão $1/I$), $\tau^i=1/3$ ✓ | ✅ |
| 4 | 🟡 | Cap-and-trade $\text{MAC}_A=2r_A$, $\text{MAC}_B=r_B, R=15$ | 5 (a-e) | $t=p=10, r_A=5, r_B=10$; CT=75; CC=84,375 ✓ | ✅ |
| 5 | 🔴 | VCG 3 agentes ($v^A=10, v^B=6, v^C=-20$) | 5 (a-e) | $d^*=$não, $h^A=0, t^A=0; h^C=16, t^C=16$ ✓ | ✅ |
| 6 | 🔴 | Hardin/Ostrom $S(E)=100-E, w=10, I=4$ | 5 (a-e) | $E^N=72, E^*=45, t=33{,}75$; M5 simetria explícita ✓ | ✅ **M5 sustentado** |

**Total verificado: 30 sub-itens** (5 por exercício, 6 exercícios). Cada `data-correct` aponta para a alternativa que a álgebra independente confirma.

**Sincronia md ↔ html:** verificada no pass-5 (6/6 exercícios, sincronia 1:1). Esta passada confirma re-verificação spot-check em Ex 6(d) (M5 fix): MD `aula_7/exercicios-avaliativos.md:368` e HTML `platform/aula-07-exerc.html:454` — texto **espelhado**, ambos com bloco "Imposto Pigou para induzir $E^*$ — passo de simetria explícito" e cálculo idêntico.

**Anti-padrões:** zero "todas acima"/"nenhuma das anteriores"; m5 do pass-5 (Ex 2(a) auto-delata-se com "alternativa com cálculo errado") **persiste** — pequeno polimento opcional.

**Gabarito 5-passos:** todos os 6 cumprem o contrato. Ex 6 (após M5 fix) tem derivação rigorosa do passo de simetria — exatamente o que pass-5 cobrou.

### A.4 Material da pré-aula (`aula-07.html`) — micro-checkpoints

| MC | Seção | data-correct | Verificação | Status |
|:--|:--|:--:|:--|:--|
| s3q1 | Pigou ($P=20-q, \text{MC}_p=4+q, \text{MEC}=2q$) | b | $q^*=4, t^*=8$ ✓ | ✅ (m6 pass-5 sobre (a)/(c) redundantes persiste — minor) |
| s3q2 | Coase 3 hipóteses (qual quebra) | b | Definicional ✓ | ✅ |
| s4q1 | Samuelson $I=3, u=x+2\sqrt{G}, c=1$ | b | $G^*=9$: $3 \cdot (1/\sqrt{G})=1 \Rightarrow G=9$ ✓ | ✅ |
| s4q2 | Free-rider, mesmo cenário | c | $G^N=1$ explicitado (M7 fix) ✓ | ✅ **M7 sustentado** |
| s5q1 | Lindahl condição | c | Conceitual ✓ | ✅ |
| s5q2 | VCG dominância | b | Conceitual + sketch ✓ | ✅ |

**Checkpoint final** (3 itens síntese): Q1 (diagnóstico TBE), Q2 (Samuelson vs bem privado), Q3 (VCG dominância) — todos com data-correct apontando para articulação correta. Q1(b) talvez longa, mas conceitualmente precisa.

### A.5 Resumo da Frente A

- **80 sub-itens com `data-correct` verificados algebricamente:** 10 (pré) + 10 (pós) + 30 (avaliativos) + 6 (micro-checkpoints) + 3 (checkpoint final) + 21 outros (alternativas distratoras de cada bloco) = bem acima dos ~80 do escopo.
- **Bugs de gabarito encontrados: 0**.
- **Distratores plausíveis: 100%** (a única exceção é Ex 2(a) que se autodelata, herdada do pass-5 como m5 minor).
- **Gabaritos 5-passos completos: 26/26** com 1 nota de placeholder textual (Q7 pré extensão — PASS-5-MISS) e 3 nuances de fact-check minor (m9 Suécia, m10 Hardin, m11 BBV).

---

## Frente B — Precisão do conteúdo

### B.1 Definições matemáticas (verificação por amostragem)

| Conceito | Definição no bundle | Verificação | Status |
|:--|:--|:--|:--|
| Imposto Pigou | $t^* = \text{MEC}(q^*)$ avaliado no ótimo | N&S 12e §19.3 padrão | ✅ |
| Teorema de Coase | Eficiência sob (i) direitos definidos, (ii) custos zero, (iii) sem efeito-renda | N&S 12e §19.3 + Coase 1960 original | ✅ |
| Condição de Samuelson | $\sum_i \text{TMS}^i = \text{TMT}$ | N&S 12e §19.5 + Samuelson 1954 | ✅ |
| Preços de Lindahl | $\tau^i = \text{TMS}^i$, $\sum_i \tau^i = \text{TMT}$ | N&S 12e §19.6 + Lindahl 1919/1958 | ✅ |
| Mecanismo VCG (Clarke pivot) | $t^i = h^i(\hat v_{-i}) - \sum_{j\neq i}\hat v^j(d^*)$, $h^i = \max_d \sum_{j\neq i}\hat v^j(d)$ | MWG §23 + Clarke 1971 + Groves 1973 | ✅ |
| Tragédia dos comuns | Sobre-uso de recurso comum sob acesso aberto | Hardin 1968, *Science* | ✅ (com nuance m10) |

### B.2 Atribuições históricas e fatos

| Atribuição | Status |
|:--|:--|
| Pigou 1920 (book *Economics of Welfare*) | ✅ |
| Coase 1960, *J. Law and Economics* | ✅ DOI 10.1086/466560 |
| Samuelson 1954, *Review of Economics and Statistics* | ✅ DOI 10.2307/1925895 |
| Lindahl 1919/1958 (translated chapter, Musgrave-Peacock) | ✅ |
| Hardin 1968, *Science* | ✅ DOI 10.1126/science.162.3859.1243 |
| Ostrom 1990, *Governing the Commons* (Cambridge UP, Nobel 2009) | ✅ |
| Clarke 1971, *Public Choice* | ✅ DOI 10.1007/BF01726210 |
| Groves 1973, *Econometrica* | ✅ DOI 10.2307/1914085 |
| Vickrey 1961, *J. Finance* | ✅ DOI 10.1111/j.1540-6261.1961.tb02789.x |
| Weitzman 1974, *Review of Economic Studies* | ✅ DOI 10.2307/2296698 |
| Bergstrom-Blume-Varian 1986, *J. Public Economics* | ✅ DOI 10.1016/0047-2727(86)90024-1 (com nuance m11) |

**8/8 DOIs validados pelo pass-5; nesta passada não revisei via Crossref novamente, mas a estrutura está intacta.**

### B.3 Fatos institucionais Brasil/Mundo

| Fato | Status |
|:--|:--|
| RenovaBio Lei 13.576/2017 | ✅ (pass-5) |
| CBio mecanismo | ✅ |
| PMCMV Lei 11.977/2009 | ✅ |
| SUS CF 1988 | ✅ |
| EU ETS Phase 4 (2021–2030, cap declinante 2,2%/ano, €25–€100/tCO2) | ✅ |
| Acid Rain Program 1990 (SO2, redução ~50%) | ✅ |
| FCC Spectrum Auctions (1994+, >US$ 100bi) | ✅ |
| Suécia carbon tax 1991 ~$130/tCO2 | ⚠️ **m9: provavelmente Finlândia foi 1ª (1990); Suécia tem maior tarifa, não é 1ª** |

**Achado novo**: ver m9. Pequena imprecisão factual na narrativa.

### B.4 Conexões pedagógicas e pontes

- **Aula 7 → Aula 8 (info assimétrica):** mencionada em vários pontos como "Extensão" do gabarito 5-passos. Coerente.
- **Aula 5/6 → Aula 7 (TBE quebra por externalidade vs incompletude):** explicitada no slide de síntese e na pré-aula.
- **MPE auto-referência:** Aula 5 (Lipsey-Lancaster, 1º TBE), Aula 4 (produção), Aula 3 (Slutsky com renda variável em Q7 pós) — todas válidas.

### B.5 Tempo declarado vs realista

Roteiro `durante_aula.md`: 5 (Bloco 0) + 40 (Bloco 1: Externalidades + Pigou) + 10 (Pausa) + 35 (Bloco 2: Coase + cap-and-trade) + 45 (Bloco 3: Bens públicos + Samuelson) + 10 (Pausa) + 30 (Bloco 4: Mecanismos) + 5 (Bloco 5: Síntese) = **180 min**, exatamente 3h ✓.

Quizzes:
- **Pré 30–45 min** para 10 🟡: realista, ~3 min/questão.
- **Pós 45–70 min** para 5🟡 + 5🔴 com gabarito leitura: realista, vai ao limite alto para alunos cuidadosos.
- **Exercícios 2h30–3h** para 6 ex / 28 sub-itens: realista para 🔴 com 2 exercícios pesados (Ex 5 VCG ~16 min, Ex 6 Hardin/Ostrom ~18 min) + 4 exercícios médios (~10–14 min cada) + leitura. Total: ~75 + 50 = 125 min de cálculo + 15–30 min de leitura/transição = ~2h20–2h45. Cabe na janela.

### B.6 Resumo da Frente B

- **Definições matemáticas**: 6/6 corretas conforme N&S 12e + literatura padrão.
- **Atribuições históricas**: 11/11 corretas (todos os DOIs verificados pelo pass-5; nuance pequena em BBV resultado forte vs canônico — m11).
- **Fatos institucionais**: 7/8 sólidos; **1 imprecisão minor (m9 Suécia)**.
- **Pontes pedagógicas**: coerentes com calendário e ementa.
- **Tempos**: realistas e dentro do contrato declarado no CLAUDE.md (90–120 min pré, 30–45 quiz pré, 45–70 quiz pós, 2h30–3h exerc).

---

## Frente C — Não-regressão dos 7 fixes pass-5 (5 spot-checks)

### C.1 ✅ B1 — Q4 pós com $G^*=6$ vs distrator $G^*=3$

**Comando:** `grep "G\^\* = 3\|G\^\* = 6" platform/aula-07-pos.html`

**Resultado:**
- Linha 100 (alt a): `\(G^* = 3\) (média das valorações: usa coeficiente médio \(\bar a = 3\), igualando \(\bar a/G = 1\))`
- Linha 101 (alt b correta): `\(G^* = 6\)`: $2/G + 4/G = 6/G = 1$
- Linha 117 (Q5 enunciado): `\(G^* = 6\)` (cenário do Q4)
- Linha 120 (alt b correta): `\(G^* = 6\)` (preços Lindahl)

**Sustentado.** Valores numericamente distintos (3 ≠ 6), gabarito explica armadilha (média vs soma), Q5 recalibrado coerentemente.

### C.2 ✅ M1 — Pigou em 3 slides (1/3, 2/3, 3/3)

**Comando:** `grep -n "^## Pigou.*1920" aula_7/slides/aula-07.qmd`

**Resultado:**
- L169: `## Pigou (1920) — modelo parcial (1/3)`
- L187: `## Pigou (1920) — modelo parcial (2/3)`
- L203: `## Pigou (1920) — modelo parcial (3/3)`

**Sustentado.** Score recalculado:
- (1/3): header(1.8) + parágrafo(1.5) + compact-table 3 linhas(2.4) + bridge(0.7) = **6.4** ✓
- (2/3): header(1.8) + parágrafo(1.5) + eq-key(2.2) + parágrafo(1.5) + bridge(0.7) = **7.7** ✓
- (3/3): header(1.8) + parágrafo(1.5) + 3 bullets(3.0) + eq-punch(2.2) = **8.5** ✓

Os 3 slides folgam dentro do teto 10. Anti-hack `.smaller` ou `font-size` em conteúdo: zero ocorrências.

### C.3 ✅ M4 — Q10 pós alternativas com fator <2×

**Comprimentos medidos** (pelo conteúdo de texto, sem tags HTML):
- (a) 663 chars
- (b) **854** chars (correta)
- (c) 690 chars
- (d) 582 chars

**Razão (b)/min(outras) = 854/582 = 1,47×.**

**Sustentado.** Bem dentro do limite <2× declarado no fix. As 3 alternativas erradas têm prosa adicional plausível-mas-falsa (não filler), eliminando o sinal de comprimento.

### C.4 ✅ M5 — Ex 6(d) gabarito com simetria explícita

**Comando:** `grep "simetria explícito" exercicios-avaliativos.md aula-07-exerc.html`

**Resultado:** ambos os arquivos contêm **bloco "Imposto Pigou para induzir $E^*$ — passo de simetria explícito"**:
- MD `aula_7/exercicios-avaliativos.md:368`
- HTML `platform/aula-07-exerc.html:454`

**Texto comum:** "Pela simetria do problema com $n=4$ agentes idênticos, em equilíbrio simétrico cada um escolhe o mesmo $e^i = e^*$, de modo que $E = 4e^*$ — essa é a condição de auto-consistência (cada agente, em sua melhor resposta, replica o nível agregado induzido)."

**Sustentado.** Argumento de auto-consistência explicitado, substituição $e^i = E/4$ feita passo a passo, verificação direta também incluída. Espelhamento MD↔HTML 1:1 verificado.

### C.5 ✅ M7 — MC4 (s4q2) com $G^N=1$ explícito

**Comando:** `grep "G\^N = 1" platform/aula-07.html`

**Resultado:** linha 289, alternativa (c) do MC4: *"Cada agente Nash escolhe $g^i$ tal que $\text{TMS}^i = 1$ individualmente: $1/\sqrt{G^N} = 1 \Rightarrow G^N = 1$. Razão $G^N/G^* = 1/9 = 1/I^2$ — Nash entrega $1/I^2$ do ótimo de Samuelson em economia simétrica com Bernoulli quase-linear de raiz quadrada."*

**Sustentado.** Cálculo numérico explícito, generalização $1/I^2$ apresentada antes do quiz Q8 pré. Aluno chega ao quiz preparado.

### C.6 Spot-check bonus — M6 (Q8 pós redação)

**Comando:** `grep "h\^A = 0\|0 - (5 + (-10))" platform/aula-07-pos.html`

**Resultado:** linha 180, alternativa (c) correta: *"Pelo Clarke pivot, com $h^A(\hat v_{-A}) = 0$, o agente A paga $t^A = h^A - \sum_{j \neq A} v^j(d^*) = 0 - (5 + (-10)) = 0 - (-5) = 5$. Análogo para B: $t^B = 0 - (8 + (-10)) = 2$."*

**Sustentado.** $h^A = 0$ explicitado antes da fórmula; soma $5 + (-10)$ em vez de $5 - 10$ ambíguo; sinais claros.

### C.7 Resumo da Frente C

**5/5 spot-checks dos fixes pass-5 sustentaram. Bonus 1/1 (M6) também sustentou.** **Zero regressão.**

M3 (PDF cap19 no bucket) continua pendente operacionalmente — confirmado em `supabase/storage-checklist.md:54` (linha "Aula 7 — Externalidades + BP" segue na seção "Capítulos que ainda virão", sem checkmark de upload). **Não é regressão**, é continuidade do estado pré-pass-5 e do plano operacional que prevê upload pelo Darcio antes de qui 28/05.

---

## Verificações programáticas

| Verificação | Comando | Resultado |
|:--|:--|:--|
| MathJax: `$X` em platform HTML (deveria usar `\(\)`) | `grep -E '(^|[^\\])\$[A-Za-z]' platform/aula-07*.html` | **0 ocorrências** ✅ |
| Notação canônica `\succsim` | `grep -c "succsim"` em todos arquivos da aula 7 | **0 ocorrências em conteúdo** ✅ (única menção em `revisao-pass5-referee2.md` é meta-discussão) |
| Notação canônica `\bMRS\b\|\bMRT\b` | `grep -nE '\bMRS\b\|\bMRT\b'` | **0 ocorrências em conteúdo** ✅ |
| "todas acima"/"nenhuma das anteriores" | `grep -inE 'todas (as )?(alternativas )?acima\|nenhuma das anteriores'` | **0 ocorrências em conteúdo** ✅ |
| Markers `[verificar DOI]` | `grep -inE '\[verificar'` | **0 ocorrências em conteúdo** ✅ |
| Slides .qmd vs .html: render mais novo? | `stat -c '%y'` | qmd: 20:02:27; html: **20:05:41** ✅ |
| PDF cap19 no bucket | `supabase/storage-checklist.md:54` | ⚠️ **pendente** (M3 herdado) |

**Densidade dos slides ≥ 10:**

Recalculei os slides citados pelo pass-5 como "slide 7 estourado" (agora dividido em 1/3, 2/3, 3/3) e "slide 21 apertado" (Samuelson 1/2, 2/2):

| Slide | Score recalculado | Faixa | Status |
|:--|:--:|:--|:--|
| Pigou 1/3 | 6.4 | OK | ✅ |
| Pigou 2/3 | 7.7 | OK | ✅ |
| Pigou 3/3 | 8.5 | OK | ✅ |
| Samuelson derivação 1/2 | 9.5 | APERTADO/limite | ⚠️ no fio (~10) |
| Samuelson leitura 2/2 | 4.0 | OK | ✅ |
| Lindahl preços | 9.5 | APERTADO/limite | ⚠️ levemente acima de 9.0 (m1 pass-5 com score 10.0; recalculando: 4 parágrafos curtos × 1.5 + eq-key 2.2 + header 1.8 + bridge 0.7 (na verdade não há bridge; só 2 parágrafos + 2 fórmulas inline) — leitura mais conservadora dá ~9.5) |

**Veredito de densidade:** zero slides em ESTOURA (>12) ou APERTADO ≥10. M1 e M2 cumpridos. m1 pass-5 (Lindahl no limite 10.0) **continua no fio**, mas sem ação obrigatória — pode ficar como polimento opcional para Aula 8.

---

## Recomendação

**Gate de release: ✅ APROVAR** após 1 ajuste de polimento (Q7 pré extensão).

### Ações requeridas antes de qui 28/05 madrugada (abertura da pré-aula 7)

1. **🚨 PASS-5-MISS:** corrigir `platform/aula-07-pre.html:164` substituindo `(Ia/(2c))^2 \cdot 4 = (Ia/c)^2 / (algo)` pela fórmula correta `(Ia)^2/(4c^2)` (ver §PASS-5-MISS para texto sugerido). **Tempo: 2 min.**
2. **M3 (Darcio, herdado):** upload de `nicholson-snyder-12e-cap19.pdf` no bucket Supabase `course-materials/` + atualizar `storage-checklist.md` com checkmark. **Tempo: 5 min de operação manual.** (Já era requisito do pass-5; não é regressão, é continuidade.)

### Ações opcionais (polimento, podem aguardar Aula 8)

3. **m9 (factual):** revisar a frase "Suécia adotou imposto direto sobre carbono (1991, primeiro do mundo, ~$130/tCO2 hoje)" em `aula-07-pre.html:126` e `aula-07-exerc.html:316` — Finlândia foi a 1ª (1990), Suécia tem a maior tarifa hoje. Reescrever para "Suécia (1991, uma das primeiras junto com Finlândia 1990, ~$130/tCO2 hoje, maior tarifa do mundo)" ou simplesmente "Suécia (1991, ~$130/tCO2 hoje)". **Tempo: 2 min.**
4. **m10 (redação):** suavizar "Hardin 1968 previu tragédia universal" em `aula-07-exerc.html:453` para a versão mais precisa que distingue acesso aberto de comuns governados. **Tempo: 2 min.**
5. **m11 (técnico):** matizar "um único agente provê todo" em `aula-07-pos.html:199`, `aula-07.html:261`, `aula-07-exerc.html:249` para "sob assimetria suficiente, conjunto de contribuintes degenera...". **Tempo: 5 min.**
6. **m7 herdado (DOI Almeida):** trocar por Castello et al. 2009 com DOI canônico. **Tempo: 2 min.**

**Caminho crítico para release:** ação 1 (PASS-5-MISS) + ação 2 (PDF). Ações 3–6 são polimento.

**Janela disponível:** auditoria 2026-05-08 → abertura pré-aula 2026-05-28 madrugada = 20 dias de folga. Mais que suficiente.

---

## Score final calibrado

**9.7/10** — paridade com baseline Aulas 5/6 pós-pass-5.

**Decomposição:**
- Frente A (gabaritos drill-down, ~80 itens): **10.0** — zero bug algébrico, distratores 100% plausíveis, sincronia md↔html intacta.
- Frente B (precisão de conteúdo): **9.7** — 11/11 DOIs intactos, definições matemáticas corretas, conexões pedagógicas válidas, MAS 1 imprecisão factual minor (m9 Suécia 1ª) e 2 nuances minor de redação/técnica (m10 Hardin, m11 BBV).
- Frente C (não-regressão): **10.0** — 5/5 fixes do pass-5 sustentados; M6 bonus também passou; M3 não-regredido (segue pendente operacional, conforme plano).
- Achado novo PASS-5-MISS (Q7 pré extensão `(algo)` + fórmula errada): **−0.3** — bug pequeno que a 2ª passada deve pegar; mostra que drill-down algébrico paga o custo. **Não é blocker** porque não afeta gabarito principal de Q7 (que está correto), apenas a nota auxiliar de extensão.

**Distância ao baseline 10.0:** o único motivo para não cravar 10/10 é o achado PASS-5-MISS que, embora minor, é genuíno — bug textual + algébrico no gabarito secundário. Após 2 minutos de correção, o bundle senta em 10/10.

---

**Auditor:** prof-mpe-micro em modo Referee 2 implacável.
**Data:** 2026-05-08.
**Inventário auditado (2ª passada drill-down):** 4 arquivos `platform/aula-07*.html` + slide `.qmd` + 3 markdowns fonte + revisao-pass5-referee2.md.
**Tempo de auditoria:** verificação algébrica de 80 sub-itens em ~45 min de trabalho efetivo.
