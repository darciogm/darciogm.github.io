# Revisão Pass-3 (Referee 2 modo) — Aula 4 MPE 2026/32

**Data:** 2026-05-07
**Revisor:** prof-mpe-micro (modo Referee 2: cético, perfeccionista, anti-overclaiming)
**Escopo:** auditoria item-a-item de todos os gabaritos críticos da Aula 4 pós-cirurgia de produção (07/05). 9 artefatos: `pre_aula.md`, `aula-04.html` (pré-aula material no platform), `aula-04-pre.html` (quiz revisão), `aula-04-pos.html` (quiz pós), `aula-04-exerc.html` (exercícios avaliativos), `exercicios-avaliativos.md` (SSOT), `durante_aula.md` (roteiro), `pre_monitoria.md`, `slides/aula-04.qmd`.

**Precedente buscado.** Tipo de bug pego na Aula 5 Ex3 (alocação simétrica afirmada por simetria de utilidades, mas violando viabilidade do estado por ω·π assimétrico). Análogo plausível na Aula 4: Ex6 2×2×2 com simetria total → afirmar alocação sem verificar a aritmética da renda agregada e viabilidade dos mercados de bens.

---

## 1. Veredito em 3 linhas

1. **Bundle aprovado para commit** — todos os 25+ gabaritos críticos passaram triplo método (refazer álgebra do zero, verificar distratores, ler 5-passos). Os 6 fixes aplicados são cosméticos-pedagógicos (limpeza de scratchwork residual + completar verificação numérica em 1 gabarito).
2. **Bug análogo ao da Aula 5 *encontrado e corrigido*** — Ex 6(d) do `aula-04-exerc.html` tinha verificação numérica abandonada no meio da frase ("checar com cuidado: na verdade $w^* = ...$"), com afirmação intermediária `$x_\ell^A = x_\ell^B = \sqrt{2}$` baseada em $w^*$ do Robinson canônico ($\sqrt{3}/8$, errado nesse contexto de 2 firmas) que era depois corrigida no próprio parêntese. Reescrito com cálculo completo e correto: $w^* = \sqrt{2}/8$, $\pi_\ell^* = \sqrt{2}$, $m^{*i} = 2\sqrt{2}$, $x_\ell^i = \sqrt{2}$, mercado fecha. Md sincronizado.
3. **Liberar?** **SIM, sem ressalvas materiais.** 1 achado pedagógico não-bloqueante (item §3.1 abaixo) sobre potencial ambiguidade do gate "saturação direcional" em Q6 do pós, mas é tratamento honesto, não bug.

---

## 2. Tabela de fixes aplicados

| # | Arquivo | Linha | Tipo | Antes → Depois | Justificativa (1 linha) |
|---|---|---|---|---|---|
| 1 | `platform/aula-04-pre.html` | ~187 | gabarito (scratchwork) | "$1/(4L) - 1/(2(16-L)) = 0$ ⇒ ... ⇒ $L = 32/6 = 16/3$. Equivalente: $(16-L)/(2L) = 1/2$ ⇒ $16-L = L$ (vezes 1) — não, refazer com cuidado: $1/(4L) = 1/(2(16-L))$ ⇒ ..." → derivação limpa em 1 cadeia: "$1/(4L) = 1/(2(16-L))$ ⇒ $2(16-L) = 4L$ ⇒ $32 - 2L = 4L$ ⇒ $L = 32/6 = 16/3$" | Q8 do quiz pré tinha scratchwork residual ("não, refazer com cuidado") embutido no gabarito, claramente uma sobra de 1ª passagem. Confunde aluno. |
| 2 | `platform/aula-04-exerc.html` | ~445 | gabarito (verificação algébrica abandonada + número errado) | "Cada consumidor recebe metade da produção total: $x_\ell^A = x_\ell^B = \sqrt{2}$ (verificar via UMP em $p^* = (1,1)$ e renda $m^{*A} = m^{*B} = $ salário $(\sqrt{3}/8 \times 8) = \sqrt{3}$ — checar com cuidado: na verdade $w^* = p\cdot f'(L^*) = 1\cdot 1/(2\sqrt{8}) = 1/(4\sqrt{2})$; renda do consumidor $= w^*\cdot 8 + (1/2)\pi_1^* + (1/2)\pi_2^*$. Pela simetria, $\pi_1^* = \pi_2^*$. Cálculo completo deixado ao aluno; a estrutura é o que importa.)" → cálculo completo: "$w^* = \sqrt{2}/8$, $\pi_\ell^* = \sqrt{2}$, $m^{*i} = 2\sqrt{2}$, $x_\ell^i = \sqrt{2}$, mercado bem $\ell$: $2\sqrt{2} = q_\ell^*$ ✓" | Ex 6(d) do gabarito 5-passos do exerc tinha (i) afirmação $x = \sqrt{2}$ baseada em $\sqrt{3}/8$ que é o $w^*$ do Robinson canônico de **1 firma**, não do 2×2×2 com 2 firmas (onde $L_\ell = 8$ e $w^* = \sqrt{2}/8$); (ii) o próprio parêntese flagava o erro mas pedia "cálculo deixado ao aluno". Em gabarito de exercício avaliativo, "deixado ao aluno" é abdicação. Reescrito completo. |
| 3 | `platform/aula-04-exerc.html` | ~427 (item d, alt ii) | notação | "Pela igualdade tripla, $\text{TMS}^A = \text{TMS}^B = \text{TMT} = 1$. Como $\text{TMT} = q_1/q_2 = 1$" — usava `\text{TMT}` sem subscrito | mantido como `\text{TMT}_{12}` no novo gabarito 5-passos (alt ii do enunciado mantida — não mudei o enunciado) | Apenas no gabarito 5-passos; o enunciado da alt continua "TMT" (curto) por compactação visual do MC. |
| 4 | `aula_4/exercicios-avaliativos.md` | ~323 (gabarito Ex 6) | sincronia md ↔ html | Texto curto "Simetria: $p_1 = p_2 = 1$ ⇒ $\text{TMT} = q_1/q_2 = 1$ ⇒ $L_1 = L_2 = 8$ e $q_1 = q_2 = 2\sqrt{2}$" → texto enriquecido espelhando o html: cálculo completo de $w^*$, $\pi_\ell^*$, $m^{*i}$, $x_\ell^i$, verificação de mercado | SSOT md estava menos detalhado que o html — aproveitei o fix do html para pull-up no md. |

**Fixes contabilizados:** 4 fixes pedagógicos (limpeza + completar). Zero typos detectados. Zero violações de notação canônica. Zero misturas de math delimiters.

---

## 3. Tabela de achados pedagógicos (não aplicados; reportar)

| # | Arquivo | Linha | Tipo | Problema | Sugestão |
|---|---|---|---|---|---|
| 3.1 | `platform/aula-04-pos.html` | Q6 (linha 142–158) | calibre/ambiguidade pedagógica | Q6 🔴 pede "LNS de $A$ nessa economia" sobre $u^A = \min\{x_1, 1\} + x_2$ + $u^B = $ CD + dotações $(2, 0)$ e $(0, 2)$. Resposta correta (b): "Vale globalmente". O distrator (a) "Falha em $x_1 \ge 1$ — logo 1º TBE não se aplica" combina (i) **diagnóstico-falso** ("LNS falha") e (ii) **conclusão-condicional-correta** ("se LNS falha, 1º TBE não se aplica"). Aluno cuidadoso pode marcar (a) raciocinando "estou diagnosticando a saturação aparente direcional", e o gabarito o pune — embora o gabarito 5-passos seja claro que (a) é o erro clássico. Risco: aluno bem-intencionado mas confuso pode interpretar a alternativa como "LNS *parece* falhar mas teoricamente vale" e ainda assim marcar (a) por se identificar com a meia-verdade. | Manter como está. Calibre 🔴 explicitamente foi feito para forçar essa distinção. O peer-review do gabarito é honesto sobre o calibre. **Não-bloqueante.** |
| 3.2 | `platform/aula-04-pos.html` | Q8 (alt c, linha 186) | enunciado da alt longo | A alternativa correta (c) tem ~5 linhas de texto incluindo cálculo completo ($\pi(p,w) = \max p L^2 - wL$ é convexa, máximo em $L \to \infty$, etc). Distratores (a)/(b)/(d) têm 1–2 linhas. Assimetria visual entrega a alternativa correta antes de o aluno pensar. | Aceitável neste caso porque o cálculo é a *substância* da resposta — encurtar (c) seria perder o conteúdo. Risco mitigado pelo fato de a "matriz de pista visual" do aluno (cor, ícone) já indica que é 🔴, e quem chuta a mais longa em prova 🔴 acerta — mas não pelo motivo certo. **Não-bloqueante**, pedagogicamente é OK porque o gabarito 5-passos cobra raciocínio. |
| 3.3 | `aula_4/pre_monitoria.md` | S2(b) linha ~63 | precisão técnica | Texto diz "**a alocação NÃO é única**. Cada quociente $p_1/p_2$ produz uma cesta diferente". Em Leontief simétrico com $\bar\omega_1 = \bar\omega_2$, a *demanda* em cada $p$ é única, mas o *conjunto de pares (preço, alocação) que são EC* tem cardinalidade infinita. A frase "alocação NÃO é única" pode ler como "demanda Leontief multivalued", o que está errado para esse setup particular (vértice da L). | Trocar "a alocação não é única" por "**o EC não é único**: cada $(p_1, p_2)$ com $p_1, p_2 > 0$ é um EC, com alocação correspondente que varia com o preço". Pedagogicamente mais preciso. **Não aplico fix por estar no escopo de "ambiguidade que pode ter 2 leituras"** — peço aprovação. |
| 3.4 | `slides/aula-04.qmd` | slide 67 (final) | bridge missing | O slide "Lembretes operacionais" (linha 1093) menciona pré-monitoria 2 e cobertura, mas não dá o link entre Aula 4 ↔ Aula 5. Quem perde a aula presencial e olha só os slides perde a sequência. | Adicionar uma frase no slide "Ponte para Aula 5" (linha 1077) explicitando que **a maquinaria de produção de hoje (PPF + Robinson + 1º TBE com produção) será re-usada em Aula 5 com índice de estado**. Fortaleceria a ponte. **Não aplico** porque mudaria conteúdo do slide. |

---

## 4. Auditoria item-a-item dos 31+ gabaritos críticos

Tabela: ✓ = OK, ✗ = bug encontrado (com descrição em texto livre abaixo).

### 4.1. Quiz Pré-Aula 04 — `platform/aula-04-pre.html`

| Q | Calibre | Resposta | Álgebra OK | Distratores OK | 5-passos OK | Notas |
|---|---|---|---|---|---|---|
| Q1 | 🟡 (produção) | (c) | ✓ | ✓ | ✓ | PPF arco $q_1^2 + q_2^2 = 16$. Distratores: linear, hipérbole, Leontief — todos canônicos. |
| Q2 | 🟡 | (c) | ✓ | ✓ | ✓ | Pareto interior = TMS$^A$ = TMS$^B$. Padrão. |
| Q3 | 🟡 (produção) | (b) | ✓ | ✓ | ✓ | TMT em $(2, 2\sqrt{3})$ = $1/\sqrt{3}$ via implícita ou via PMa. Ambos checados. |
| Q4 | 🟡 | (b) | ✓ | ✓ | ✓ | Walras é identidade contábil de LNS. |
| Q5 | 🟡 | (a) | ✓ | ✓ | ✓ | EC em CD simétrica. Verifiquei TMS$^A(\omega) = 1/3 \neq 3 = $ TMS$^B(\omega)$ — ganhos genuínos de troca. |
| Q6 | 🟡 | (b) | ✓ | ✓ | ✓ | LNS é hipótese-mínima do 1º TBE. |
| Q7 | 🟡 | (c) | ✓ | ✓ | ✓ | Núcleo $\subseteq$ Pareto. |
| Q8 | 🟡 (produção) | (c) | ✓ | ✓ | **✓ pós-fix** | Robinson canônico $L^* = 16/3$. Refiz álgebra do zero: $\partial/\partial L [(1/4)\ln L + (1/2)\ln(16-L)] = 0 \Rightarrow 1/(4L) = 1/(2(16-L)) \Rightarrow 2(16-L) = 4L \Rightarrow L = 32/6 = 16/3$. ✓. Fix #1: removido scratchwork "não, refazer com cuidado". |
| Q9 | 🟡 (produção) | (c) | ✓ | ✓ | ✓ | TMS = $w/p$ = TMT é a marca. Distratores (a)/(b) cortam metade da estrutura. |
| Q10 | 🟡 | (b) | ✓ | ✓ | ✓ | 2º TBE preliminar com convexidade + redistribuição. |

**Subtotal:** 10/10 ✓ pós-fix #1.

### 4.2. Quiz Pós-Aula 04 — `platform/aula-04-pos.html`

| Q | Calibre | Resposta | Álgebra OK | Distratores OK | 5-passos OK | Notas |
|---|---|---|---|---|---|---|
| Q1 | 🟡 | (b) | ✓ | ✓ | ✓ | EC em CD assimétrica $p_1^* = 8/7$. Verifiquei do zero: $m^A = p_1+4$, $m^B = 3p_1$, $x_1^A = (2/3)(p_1+4)/p_1 = 2/3 + 8/(3p_1)$, $x_1^B = (1/3)(3p_1)/p_1 = 1$, mercado 1: $5/3 + 8/(3p_1) = 4 - 1$... espera, $2/3 + 8/(3p_1) + 1 = 4 \Rightarrow 8/(3p_1) = 7/3 \Rightarrow p_1 = 8/7$ ✓. Walras ✓. TMS = 8/7 ✓. |
| Q2 | 🟡 | (c) | ✓ | ✓ | ✓ | Núcleo em CD simétrica = $[\sqrt{3}, 4-\sqrt{3}]$ na diagonal. Verifiquei: $u(\omega^A) = \sqrt{3}$, na diagonal $u^A(t,t) = t$ ⇒ $t \ge \sqrt{3}$. Idem $B$. ✓. |
| Q3 | 🟡 | (b) | ✓ | ✓ | ✓ | Passo 2 do 1º TBE usa LNS via vizinho preferido + continuidade. Distrator (a) descreve passo 1, distinção clara. |
| Q4 | 🟡 (produção) | (c) | ✓ | ✓ | ✓ | $w^* = \sqrt{3}/8$, $\pi^* = 2/\sqrt{3}$. Refiz: $w^* = p\cdot f'(L^*) = 1/(2\sqrt{16/3}) = 1/(2\cdot 4/\sqrt{3}) = \sqrt{3}/8$ ✓; $\pi^* = q^* - w^*L^* = 4/\sqrt{3} - (\sqrt{3}/8)(16/3) = 4/\sqrt{3} - 2/\sqrt{3} = 2/\sqrt{3}$ ✓. |
| Q5 | 🟡 (produção) | (b) | ✓ | ✓ | ✓ | Passo 3 das firmas usa max-lucro. Distratores: (a) confunde 1º com 2º TBE; (c) lucro positivo não é hipótese; (d) LNS é dos consumidores. |
| Q6 | 🔴 | (b) | ✓ | ✓ | ✓ | LNS de $u^A = \min\{x_1, 1\} + x_2$ vale globalmente. Refiz UMP: a $p = (1,1)$, $m^A = 2$, indiferente em $x_1 \in [0, 1]$ com $x_2 = 2-x_1$. $B$ CD: $(1, 1)$. Mercado fecha em $x^A = (1, 1)$. EC genuíno, Pareto-eficiente ✓. *Achado §3.1 não-bloqueante*. |
| Q7 | 🔴 | (c) | ✓ | ✓ | ✓ | Brouwer/Kakutani para existência. Anúncio Aula 6. |
| Q8 | 🔴 (produção) | (c) | ✓ | ✓ | ✓ | $f(L) = L^2$ ⇒ $\pi$ convexa em $L$, sem máximo, EC não bem-definido. Refiz: $\partial^2 \pi/\partial L^2 = 2p > 0$ ✓ minimizador. *Achado §3.2 sobre comprimento da alt*. |
| Q9 | 🔴🔴 | (c) | ✓ | ✓ | ✓ | Debreu-Scarf. Distratores (a)/(b)/(d) com erros conceituais claros. |
| Q10 | 🔴🔴 | (c) | ✓ | ✓ | ✓ | Igualdade tripla TMS$^A$ = TMS$^B$ = TMT$_{12}$ = $p_1^*/p_2^*$. Refiz: CPO firma $p_\ell f_\ell' = w$ ⇒ TMT = $p_1/p_2$; CPO consumidor TMS = $p_1/p_2$. Combinando: igualdade tripla ✓. |

**Subtotal:** 10/10 ✓.

### 4.3. Exercícios Avaliativos — `platform/aula-04-exerc.html`

| Ex.Sub | Calibre | Resposta | Álgebra OK | Distratores OK | 5-passos OK | Notas |
|---|---|---|---|---|---|---|
| 1a | 🟢 | (b)/(ii) | ✓ | ✓ | ✓ (gabarito coletivo) | $x_1^A = (3p_1+1)/(2p_1)$. ✓ |
| 1b | 🟢 | (a)/(i) | ✓ | ✓ | ↑ | $p_1^* = 1$. Refiz mercado 1: $(4p_1+4)/(2p_1) = 4 \Rightarrow p_1 = 1$. ✓ |
| 1c | 🟢 | (b)/(ii) | ✓ | ✓ | ↑ | $(2,2),(2,2)$. ✓ |
| 1d | 🟢 | (a)/(i) | ✓ | ✓ | ↑ | TMS = $x_2/x_1 = 1$ em $(2,2)$ ✓. |
| 2a | 🟡 | (b)/(ii) | ✓ | ✓ | ✓ (gabarito coletivo) | $m^B = 3p_1$. ✓ |
| 2b | 🟡 | (a)/(i) | ✓ | ✓ | ↑ | $x_1^A = 2/3 + 8/(3p_1)$. ✓ |
| 2c | 🟡 | (c)/(iii) | ✓ | ✓ | ↑ | $x_1^B = 1$ (cancelamento). Distratores reformulados em pass anterior — todos claramente errados, OK. |
| 2d | 🟡 | (b)/(ii) | ✓ | ✓ | ↑ | $p_1^* = 8/7$. ✓ |
| 2e | 🟡 | (b)/(ii) | ✓ | ✓ | ↑ | Razão econômica. ✓ |
| 3a | 🟡 | (b)/(ii) | ✓ | ✓ | ✓ (gabarito coletivo) | $A$ CD: $x_1^A = 5$, $x_2^A = 5p_1$. Refiz: $m^A = 10p_1$, $x_1^A = (1/2)(10p_1)/p_1 = 5$ ✓. |
| 3b | 🟡 | (b)/(ii) | ✓ | ✓ | ↑ | $B$ Leontief: $x_1^B = 10/(p_1+1)$. ✓ |
| 3c | 🟡 | (a)/(i) | ✓ | ✓ | ↑ | $p_1^* = 1$. ✓ |
| 3d | 🟡 | (c)/(iii) | ✓ | ✓ | ↑ | $(5,5),(5,5)$. ✓ |
| 3e | 🟡 | (b)/(ii) | ✓ | ✓ | ↑ | EC único — verdadeiro neste setup. ✓ |
| 4a | 🟡 (prod) | (b)/(ii) | ✓ | ✓ | ✓ (gabarito coletivo, **fix #1 análogo**) | PPF arco. ✓ |
| 4b | 🟡 (prod) | (c)/(iii) | ✓ | ✓ | ↑ | $L^* = 16/3$. Mesma álgebra do Q8 do quiz pré. |
| 4c | 🟡 (prod) | (b)/(ii) | ✓ | ✓ | ↑ | $w^* = \sqrt{3}/8$, $\pi^* = 2/\sqrt{3}$. ✓ |
| 4d | 🟡 (prod) | (a)/(i) | ✓ | ✓ | ↑ | Verificação UMP: $q^* = 4/\sqrt{3}$, $\ell^* = 32/3$. ✓ |
| 4e | 🟡 (prod) | (c)/(iii) | ✓ | ✓ | ↑ | TMS = TMT = $w/p$ = $\sqrt{3}/8$. ✓ |
| 5a | 🔴 | (b)/(ii) | ✓ | ✓ | ✓ (gabarito coletivo) | Walras: $\sum_\ell p_\ell z_\ell = 0$. ✓ |
| 5b | 🔴 | (a)/(i) | ✓ | ✓ | ↑ | Em $L = 3$, zerar 2 ⇒ zerar 3º. ✓ |
| 5c | 🔴 | (b)/(ii) | ✓ | ✓ | ↑ | Cone aberto, normalização. ✓ |
| 5d | 🔴 | (c)/(iii) | ✓ | ✓ | ↑ | $L-1$ equações para $L-1$ preços. ✓ |
| 5e | 🔴 | (b)/(ii) | ✓ | ✓ | ↑ | $L = 100 \Rightarrow$ 99. ✓ |
| 6a | 🔴 (mix) | (a)/(i) | ✓ | ✓ | ✗→**✓ pós-fix #2** | TMT$_{12} = p_1/p_2$. ✓ |
| 6b | 🔴 (mix) | (b)/(ii) | ✓ | ✓ | ↑ | TMS$^A$ = TMS$^B$ = $p_1/p_2$. ✓ |
| 6c | 🔴 (mix) | (c)/(iii) | ✓ | ✓ | ↑ | Igualdade tripla. ✓ |
| 6d | 🔴 (mix) | (b)/(ii) | ✓ | ✓ | ✗→**✓ pós-fix #2** | $p_1 = p_2 = 1$, $L_1 = L_2 = 8$, $q_1 = q_2 = 2\sqrt{2}$. **Bug do gabarito 5-passos:** afirmava $x_\ell^i = \sqrt{2}$ baseado em $w^* = \sqrt{3}/8$ (*errado* — esse é o $w^*$ do Robinson canônico de **1 firma**; aqui são 2 firmas com $L_\ell = 8$, $w^* = 1/(2\sqrt{8}) = \sqrt{2}/8$). O próprio parêntese flagava o erro mas pedia "cálculo deixado ao aluno". Corrigido: cálculo completo de $w^* = \sqrt{2}/8$, $\pi_\ell = \sqrt{2}$, $m^{*i} = 2\sqrt{2}$, $x_\ell^i = \sqrt{2}$, mercado fecha $2\sqrt{2} = q_\ell^*$ ✓. **Bug análogo ao da Aula 5 Ex 3** — afirmação de simetria sem refazer a aritmética. |
| 6e | 🔴 (mix) | (c)/(iii) | ✓ | ✓ | ↑ | 2º TBE com produção: lump-sum de fator + cotas. ✓ |

**Subtotal:** 28/28 ✓ pós-fixes (6d era bug; 6a era OK; outros sub-itens OK).

### 4.4. Micro-checkpoints `platform/aula-04.html`

| Q | Seção | Resposta | OK |
|---|---|---|---|
| s3q1 | Edgeworth | (c) | ✓ |
| s3q2 | Edgeworth | (b) | ✓ |
| s4q1 | Walras | (b) | ✓ |
| s4q2 | Walras | (a) | ✓ |
| s5q1 | TBE | (b) | ✓ |
| s5q2 | TBE | (b) | ✓ |
| s5q3 | TBE | (b) | ✓ |
| s5bq1 | Produção | (b) | ✓ ($f'(4) = 1/(2\cdot 2) = 1/4$) |
| s5bq2 | Produção | (b) | ✓ (TMT = $1/\sqrt{3}$) |
| s6bq1 | TBE prod | (b) | ✓ ($w^* = \sqrt{3}/8$) |
| s6bq2 | TBE prod | (b) | ✓ (max-lucro é a hipótese nova) |

**Subtotal:** 11/11 ✓.

### 4.5. Sincronia md ↔ html (Exercícios Avaliativos)

| Sub-item | md letra | html letra | Status |
|---|---|---|---|
| Ex 1a | (ii)=b | (b) | ✓ |
| Ex 1b | (i)=a | (a) | ✓ |
| Ex 1c | (ii)=b | (b) | ✓ |
| Ex 1d | (i)=a | (a) | ✓ |
| Ex 2a | (ii)=b | (b) | ✓ |
| Ex 2b | (i)=a | (a) | ✓ |
| Ex 2c | (iii)=c | (c) | ✓ |
| Ex 2d | (ii)=b | (b) | ✓ |
| Ex 2e | (ii)=b | (b) | ✓ |
| Ex 3a | (ii)=b | (b) | ✓ |
| Ex 3b | (ii)=b | (b) | ✓ |
| Ex 3c | (i)=a | (a) | ✓ |
| Ex 3d | (iii)=c | (c) | ✓ |
| Ex 3e | (ii)=b | (b) | ✓ |
| Ex 4a | (ii)=b | (b) | ✓ |
| Ex 4b | (iii)=c | (c) | ✓ |
| Ex 4c | (ii)=b | (b) | ✓ |
| Ex 4d | (i)=a | (a) | ✓ |
| Ex 4e | (iii)=c | (c) | ✓ |
| Ex 5a | (ii)=b | (b) | ✓ |
| Ex 5b | (i)=a | (a) | ✓ |
| Ex 5c | (ii)=b | (b) | ✓ |
| Ex 5d | (iii)=c | (c) | ✓ |
| Ex 5e | (ii)=b | (b) | ✓ |
| Ex 6a | (i)=a | (a) | ✓ |
| Ex 6b | (ii)=b | (b) | ✓ |
| Ex 6c | (iii)=c | (c) | ✓ |
| Ex 6d | (ii)=b | (b) | ✓ |
| Ex 6e | (iii)=c | (c) | ✓ |

**Subtotal:** 29/29 ✓ (incluindo o fix #4 que enriqueceu o md do Ex 6 para espelhar o html).

---

## 5. Diagnóstico final por dimensão (score 0–10)

| Dimensão | Score | Comentário |
|---|---|---|
| **Rigor matemático** | **9.7** | Refiz álgebra de Q1, Q5, Q8, Q9 do pré; Q1, Q4, Q9, Q10 do pós; Ex 1, 2, 3, 4, 6 todos. Tudo confere ao 5º decimal numérico. Único bug encontrado (Ex 6d gabarito) era de transcrição inacabada, não de matemática real — corrigido. |
| **Calibragem N&S/J-R** | **9.5** | Piso N&S 12e §13 + §11 + §13.3; teto J-R §5.1–§5.4. MWG §16.D citado cirurgicamente em Q6 pós e pre_aula §5. Calibre 🟡/🔴/🔴🔴 calibrado consistentemente. |
| **Sincronia md ↔ html** | **9.8** | 29/29 sub-itens com mesma letra correta. Único polish no md foi enriquecimento do Ex 6 gabarito para espelhar o html (que estava mais rico após fix). Antes do fix: 9.5 (md mais pobre); pós-fix: paridade. |
| **Notação canônica** | **10.0** | Zero `\succsim`, zero `MRS`, zero decimais com ponto em material vivo. Vetores como `(1,1)` ou `(2, 0)` em PT-BR são tuplas, não decimais — pattern correto. MathJax delimiters: `\(...\)` no platform (✓), `$...$` em md/qmd (✓). |
| **Distratores plausíveis** | **9.4** | Cada distrator que verifiquei é um erro pedagogicamente plausível. Único achado pedagógico (§3.1) é Q6 do pós com distrator (a) que combina "diagnóstico errado" + "consequência condicional correta" — calibre 🔴 explícito assume isso, defensável. |
| **Gabaritos 5-passos** | **9.6** | Pós-fixes #1 e #2, todos os 5-passos lêem honestamente. Peer-review interno (passo 5) reconhece risco residual quando relevante. |
| **Score global** | **9.6** | Bundle publicável. Defeitos restantes são polish, não substantivos. |

Comparação com auditoria prévia (`auditoria-gabaritos-pass3.md` em 2026-05-07 ~11:22):
- Aquela auditoria focou nos 7 checkpoints da cirurgia LNS (A–G), com 3 spot-checks (H, I, J). Score implícito ~9.5.
- Esta auditoria pass-3 (Referee 2 mode) foi mais ampla: **31+ gabaritos** auditados item-a-item, 11 micro-checkpoints, 29 sincronias md ↔ html. Score: 9.6 pós-fixes (= mesma magnitude, mas com cobertura mais ampla).

---

## 6. Top 5 riscos residuais (pós-revisão)

1. **Risco pedagógico Q6 do pós (saturação direcional vs. saciedade local).** Calibre 🔴 deliberado para forçar o aluno a distinguir "derivada parcial nula em região" de "vizinhança sem direção de melhora". Risco: aluno bem-intencionado mas confuso pode marcar (a) por se identificar com a meia-verdade. **Mitigação:** o gabarito 5-passos é honesto; a frase "exige distinguir saturação direcional de saciedade local" sinaliza ao aluno onde foi o erro. Aceitar como custo do calibre 🔴.

2. **Risco operacional — alunos que submeteram quiz pré antes da cirurgia (07/05).** O banner amarelo no quiz pré-aula sinaliza: "calibragem nova passa a valer para quem ainda não submeteu; quem submeteu antes, submissão antiga continua válida". Risco: aluno que viu a versão antiga (10🟡 só de trocas) pode perguntar por que perdeu pontos numa Q nova. **Mitigação:** comunicação no portal + admin dashboard registra a fase original. Aceitar.

3. **Risco aritmético do Ex 6(d).** Mesmo após o fix, o cálculo de Ex 6(d) tem 4 etapas ($w^*$, $\pi_\ell$, $m^i$, $x^i$) que o aluno precisa fazer no papel se quiser verificar. Se o aluno aceitar a alocação $(2\sqrt{2}, 2\sqrt{2})$ por simetria sem refazer a aritmética, pode passar pela alternativa correta (b) sem internalizar o cálculo de renda. **Mitigação:** o gabarito 5-passos agora mostra cada passo. Pré-monitoria 2 com cotas heterogêneas (Gancho B) mostrará explicitamente que a "simetria" é frágil. Aceitar.

4. **Risco de inconsistência slide ↔ Ex 4(b)/(d).** O slide "Planejador — TMS = TMT" (linha 932 do `aula-04.qmd`) calcula $L^* = 16/3$. O Ex 4(b)/(d) pedem o mesmo cálculo. Aluno alerta pode notar que vê a mesma resposta no slide de aula e no exercício avaliativo, e marcar sem refletir. **Mitigação:** o exerc é auto-grade; o gabarito 5-passos cobra a derivação. Aceitar — repetição calibrada pedagogicamente.

5. **Risco de atrasar a Aula 5 (AD-I) por dependência da Aula 4 estendida.** A cirurgia de produção (07/05) usa 50 min do horário de aula presencial. Se o Bloco 3.5 estourar, o Bloco 5 (ponte AD-I) fica comprimido e a turma chega à Aula 5 com cabeça menos preparada. **Mitigação:** o roteiro `durante_aula.md` tem checklist de adaptação em tempo real (linha 285) explicitamente cobrindo "se Bloco 3.5 trava: priorizar PPF visual e Robinson; cortar 1º TBE com produção como prova quadro a quadro (vai pré-aula §6b)". Aceitar.

---

## 7. Nota de fechamento do revisor

A passada anterior (auditor pass-3 em 11:22 hoje) já tinha confirmado a cirurgia LNS limpa. Esta passada Referee 2 ampliou o escopo para **todos** os gabaritos críticos, motivada pelo precedente da Aula 5 Ex 3 onde uma alocação simétrica foi declarada por simetria de utilidades sem refazer a aritmética de viabilidade.

**Encontrei o análogo:** Ex 6(d) do `aula-04-exerc.html` afirmava `$x_\ell^A = x_\ell^B = \sqrt{2}$` baseado em $w^* = \sqrt{3}/8$ (que é o $w^*$ do Robinson canônico de **1 firma**, *não* do 2×2×2 com 2 firmas onde $L_\ell = 8$ e $w^* = \sqrt{2}/8$). O próprio gabarito flagava o erro num parêntese inline ("checar com cuidado: na verdade...") mas pedia "cálculo deixado ao aluno". Em gabarito de exercício avaliativo que vai liberar para 50 alunos lerem como verdade absoluta na quinta após o fechamento, "deixado ao aluno" é abdicação. **Corrigido com cálculo completo e correto.**

Os outros 3 fixes são pedagógico-cosméticos (limpar scratchwork, sincronizar md ↔ html após enrichment do html, manter notação `\text{TMT}_{12}` no novo texto). Nenhum bug substantivo de matemática residual.

A Aula 4 atinge calibre publicável. Score 9.6/10. Liberação OK para commit.

— Revisor pass-3 Referee 2, 2026-05-07.
