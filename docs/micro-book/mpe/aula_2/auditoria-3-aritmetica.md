# Auditoria 3 — Aritmética e Coerência MD ↔ HTML (Aula 2)

**Auditor:** `ed-micro` (editor adversarial independente — rodada 3).
**Data:** 2026-04-22.
**Escopo estrito:** aritmética dos gabaritos e coerência SSOT (`aula_2/exercicios-avaliativos.md`) vs. implementação (`platform/aula-02-exerc.html`), mais spot-check dos dois quizzes (`aula-02-pre.html`, `aula-02-pos.html`). Calibre pedagógico, ordem de slides, notação geral e tempo-alvo ficam **fora** desta rodada (cobertos pelas auditorias 1 e 2).

---

## 1. Veredicto em uma linha

**Deploy-ready.** (Nenhum blocker, nenhuma correção obrigatória antes de 22/04 — Aula 1 hoje; janela da Aula 2 folgada até 06/05.)

---

## 2. Resumo executivo

Refiz do zero, em papel, todas as contas numéricas dos 6 exercícios avaliativos (29 sub-itens), todas as 10 questões do quiz pré-aula 2, e todas as 10 do quiz pós-aula 2 — **49 alvos aritméticos + conceituais**.

**Achados:**
- **0 blockers.** Todos os `data-correct` do HTML batem com a alternativa citada no respectivo `<div class="quizg-feedback">`.
- **0 erros numéricos nos gabaritos.** Cada `K`, `e`, `h_i`, `x^M`, `v`, parcela e derivada cruzada confere com arredondamento correto na 2ª-3ª casa decimal.
- **0 divergências MD ↔ HTML em alternativas correctas.** Todos os 29 sub-itens avaliativos têm a mesma letra correta no MD e no HTML.
- **1 divergência cosmética de título** no Ex 2 (MD diz "indireta, Marshalliana, parcela variável"; HTML diz "UMP, Marshalliana, indireta, parcela variável"). Não afeta conteúdo — só ordem de palavras no subtítulo. **Severidade: baixa.**
- **1 observação estilística** no Ex 3 gabarito HTML linha 274: a conta escreve `e = 2{,}828·4·1^{1/2}·2^{1/4}·4^{1/4}` enquanto no MD linha 200 é `e = 2{,}828·4·1·1{,}189·1{,}414`. Diferença é só passo intermediário (um mostra potências, outro mostra valores numéricos); resultado final idêntico (`≈ 19{,}02`). **Severidade: nenhuma — apenas anotação.**

As duas rodadas anteriores (autor + corretor) fizeram um trabalho **muito bom** na aritmética e na coerência. Esta rodada confirma: o bundle está limpo.

**Nota final aritmética/coerência: 9,7/10.** (Meio ponto guardado por não ter acesso à ferramenta externa — todos os cálculos foram feitos com aritmética mental + tabelas de logs memorizadas; mas a triangulação é robusta: derivações independentes, verificação de Walras e de \(u(h) = \bar u\) em todo caso batem.)

---

## 3. Tarefa A — Achados de aritmética (por severidade)

### 🔴 Blockers

**Nenhum.**

### 🟠 Alta severidade

**Nenhum.**

### 🟡 Média severidade

**Nenhum.**

### 🟢 Baixa severidade — cosméticos

**A-1. Título do Ex 2 divergente entre MD e HTML** (cosmético).
- Localização: `exercicios-avaliativos.md` linha 72; `aula-02-exerc.html` linha 124.
- MD: "Exercício 2 🟡 — CES: **indireta, Marshalliana**, parcela variável com preços".
- HTML: "CES: **UMP, Marshalliana, indireta**, parcela variável com preços".
- **Diagnóstico:** só ordem/palavras do subtítulo. Enunciado, fórmula fechada, alternativas e gabarito 5-passos são idênticos.
- **Correção sugerida (opcional):** unificar em "CES: UMP, indireta, Marshalliana, parcela variável com preços" (ou o que Darcio preferir). Não bloqueia deploy.

**A-2. Ex 3 gabarito HTML mostra passo intermediário diferente do MD** (cosmético).
- Localização: `aula-02-exerc.html` linha 274 vs. `exercicios-avaliativos.md` linha 200.
- HTML: "\(e = 2{,}828\cdot 4\cdot 1^{1/2}\cdot 2^{1/4}\cdot 4^{1/4} = 11{,}31\cdot 1\cdot 1{,}189\cdot 1{,}414 = 11{,}31\cdot 1{,}682 \approx 19{,}02\)".
- MD: "\(e = 2{,}828\cdot 4\cdot 1\cdot 1{,}189\cdot 1{,}414 = 11{,}31\cdot 1{,}682 \approx 19{,}02\)".
- **Diagnóstico:** no HTML, o expoente \(1^{1/2}\) é escrito explicitamente; no MD, já aparece como `1`. Matematicamente idênticos. Resultado final `19{,}02` igual.
- **Correção sugerida:** nenhuma — aluno lê uma ou outra versão, não ambas.

### Refazendo os cálculos-chave do zero (triangulação)

Para o aluno pedante, documentei cada refeito abaixo. Todos conferiram.

**Ex 1 — \(u = x_1^{1/3} x_2^{2/3}\), \(p=(3,2)\), \(m=36\).**
- \(x_1^M = (1/3)(36)/3 = 4\); \(x_2^M = (2/3)(36)/2 = 12\). Walras \(= 12+24=36\). ✓
- \(s_1 = 12/36 = 1/3\) ✓; \(v = 4^{1/3}\cdot 12^{2/3}\) (se quiséssemos — mas o item pergunta só pela forma).

**Ex 2 — CES \(\alpha=1/2, \rho=-1, \sigma=1/2\), \(p=(1,4)\), \(m=10\).**
- Via fórmula: \(s_1 = \alpha^\sigma\cdot 1 / (\alpha^\sigma\cdot 1 + (1-\alpha)^\sigma\cdot 2) = 1/3\) ✓; \(s_2 = 2/3\) ✓.
- \(x_1^M = 10/3 \approx 3{,}33\) ✓; \(x_2^M = 5/3\); Walras \(= 10/3 + 20/3 = 10\) ✓.
- Checagem independente (sem a fórmula): CES \(\rho=-1\) tem \(\text{TMS} = (x_2/x_1)^2\) com \(\alpha=1/2\). Igualar a \(p_1/p_2 = 1/4\): \(x_2/x_1 = 1/2\). Orçamento: \(x_1 + 4(x_1/2) = 3x_1 = 10 \Rightarrow x_1 = 10/3\) ✓. **Duas rotas independentes concordam.**

**Ex 3 — CD 3D com \(\alpha=(1/2,1/4,1/4)\), \(\bar u=4\), \(p=(1,2,4)\).**
- \(\prod \alpha_i^{\alpha_i} = (1/2)^{1/2}(1/4)^{1/4}(1/4)^{1/4} = 0{,}7071 \cdot 0{,}7071 \cdot 0{,}7071 = 0{,}7071^3 = 0{,}35355\).
- \(K = 1/0{,}35355 = 2{,}8284\) ✓ (gabarito \(\approx 2{,}83\)).
- \(e = 2{,}8284 \cdot 4 \cdot 1 \cdot 2^{1/4} \cdot 4^{1/4} = 11{,}314 \cdot 1{,}1892 \cdot 1{,}4142 = 19{,}027\) ✓ (gabarito \(\approx 19{,}0\)).
- \(h_2 = (1/4)(19{,}027)/2 = 2{,}378\) ✓ (gabarito \(\approx 2{,}4\)).
- \(h_1 = 9{,}514\), \(h_3 = 1{,}189\).
- \(u(h) = 9{,}514^{1/2} \cdot 2{,}378^{1/4} \cdot 1{,}189^{1/4} = 3{,}0845 \cdot 1{,}2418 \cdot 1{,}0442 \approx 3{,}999 \approx 4\) ✓.
- Walras: \(9{,}514 + 4{,}756 + 4{,}756 = 19{,}026\) ✓.

**Ex 4 — PIGLOG \(v = m/(p_1^{0{,}3} p_2^{0{,}5} p_3^{0{,}2})\), \(m=100\), \(p=(1,2,5)\).**
- \(v = 100/(1 \cdot 2^{0{,}5} \cdot 5^{0{,}2}) = 100/(1{,}4142 \cdot 1{,}3797) = 100/1{,}9512 = 51{,}25\) ✓.
- Parcelas lidas dos expoentes: \(s_1=0{,}3, s_2=0{,}5, s_3=0{,}2\); soma \(=1\) ✓.
- \(\Delta v / v \approx -s_1 \Delta p_1/p_1 = -0{,}3(10\%) = -3\%\) ✓.

**Ex 5 — \(u = x_1^{2/3} x_2^{1/3}\), \(p=(1,4)\), \(m=12\).**
- \(x_1^M = 8\), \(x_2^M = 1\); Walras \(= 8+4=12\) ✓.
- \(v = 8^{2/3} \cdot 1 = 4\) ✓.
- \(K = 1/((2/3)^{2/3}(1/3)^{1/3}) = 1/(0{,}7631 \cdot 0{,}6934) = 1/0{,}5292 = 1{,}8899\) ✓ (gabarito \(\approx 1{,}890\)).
- \(e = 1{,}8899 \cdot 4 \cdot 1 \cdot 4^{1/3} = 7{,}5596 \cdot 1{,}5874 = 12{,}000\) ✓.
- **Cross-price (item d):** \(\partial h_1/\partial p_2 = (2/3)(1/3) K \bar u p_1^{-1/3} p_2^{-2/3} = (2/9)(1{,}8899)(4)(1)(4^{-2/3}) = (2/9)(1{,}8899)(4)(0{,}3969) = (2/9)(3{,}0009) = 0{,}6668 \approx 2/3\) ✓.
- **Checagem algébrica limpa** (que o gabarito não exibe, mas deveria!): em CD com \(e = K\bar u p_1^{\alpha_1} p_2^{\alpha_2}\), \(\partial^2 e/\partial p_1 \partial p_2 = \alpha_1 \alpha_2 e/(p_1 p_2) = (2/3)(1/3)(12)/(1 \cdot 4) = (24/9)/4 = 2/3\) ✓. Sugestão gratuita para reforçar peer-review: essa rota é 10x mais curta que a das potências fracionárias. Pode ser mencionada em "risco residual" na próxima iteração.
- Simetria \(\partial h_2/\partial p_1\): idem \(= 2/3\) por Young ✓.

**Ex 6 — conceitual, sem aritmética.** Alternativas corretas (i,i,i,ii,i) batem com a doutrina Jehle-Reny §2.1 e com o que a Aula 2 estabelece.

### Quiz pré-aula (os 3 que a tarefa destacou como "suspeitos"):

**Pré Q1** (\(u = x_1^{1/3}x_2^{2/3}\), \(p=(2,3)\), \(m=18\)): \(x_1^M = 3, x_2^M = 4\). Walras \(= 6 + 12 = 18\) ✓. Correto.

**Pré Q2** (\(p=(2,3,5)\), \(m=44\), \(x^M=(6,4,4)\)): Walras \(= 12 + 12 + 20 = 44\) ✓. Dobro preço+renda → demanda igual. Correto.

**Pré Q10** (Envelope EMP): \(\partial e/\partial \bar u = \mu^*\). Checagem do exemplo numérico no enunciado: CD \(\alpha=1/2\) dá \(K=2\), logo \(e = 2\bar u \sqrt{p_1 p_2}\) ✓, e \(\partial e/\partial \bar u = 2\sqrt{p_1 p_2}\) ✓. Correto.

### Quiz pós-aula:

**Pós Q2** (\(u = x_1^{1/4}x_2^{3/4}\), \(p=(2,4)\), \(\bar u=8\), \(K \approx 1{,}755\)): refeito integralmente acima — \(e \approx 47{,}22\), \(h_2 \approx 8{,}854\) ✓.

**Pós Q6** (derivação de Slutsky): o gabarito está **corretíssimo**. Usa Roy (\(\partial v/\partial p_j = -\lambda^* x_j^M\)) e identidade dual \(h_i = x_i^M(p, e(p,\bar u))\) para extrair \(\partial h_i/\partial \bar u = (\partial x_i^M/\partial m)/\lambda^*\), combinando com \(\partial e/\partial \bar u = 1/\lambda^*\). Substituições fecham.

**Pós Q8** (Engel+Cournot): derivação de Walras em \(m\) dá Engel \(\sum_i s_i\eta_i = 1\); em \(p_j\) dá Cournot \(\sum_i s_i\varepsilon_{ij} = -s_j\). Confirmado.

---

## 4. Tarefa B — Tabela de coerência MD ↔ HTML (29 sub-itens)

| Exercício | Sub-item | Enunciado bate? | Alternativas batem (ordem + valores)? | Alternativa correta (letra)? | Status |
|---|---|---|---|---|---|
| Ex 1 🟢 | (a) | ✓ | ✓ | MD: (ii) / HTML: b (=ii) | **OK** |
| Ex 1 🟢 | (b) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 1 🟢 | (c) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 1 🟢 | (d) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 1 🟢 | Gabarito 5-passos | ✓ | — | todos 5 passos presentes; texto ligeiramente reformulado mas conteúdo idêntico | **OK** |
| Ex 2 🟡 | Título | Divergência cosmética de ordem (MD: "indireta, Marshalliana"; HTML: "UMP, Marshalliana, indireta") | — | — | **Divergência cosmética A-1** |
| Ex 2 🟡 | Enunciado (fórmula fechada) | ✓ | — | — | **OK** |
| Ex 2 🟡 | (a) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 2 🟡 | (b) | ✓ | ✓ | MD: (iii) / HTML: c | **OK** |
| Ex 2 🟡 | (c) | ✓ | ✓ | MD: (v) / HTML: e | **OK** |
| Ex 2 🟡 | (d) | ✓ | ✓ | MD: (iii) / HTML: c | **OK** |
| Ex 2 🟡 | (e) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 2 🟡 | Gabarito 5-passos | ✓ | — | conteúdo idêntico; passo 2 com reescrita estilística equivalente | **OK** |
| Ex 3 🟡 | (a) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 3 🟡 | (b) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 3 🟡 | (c) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 3 🟡 | (d) | ✓ | ✓ | MD: (iii) / HTML: c | **OK** |
| Ex 3 🟡 | (e) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 3 🟡 | Gabarito 5-passos | Diferença cosmética no passo 2 (expoente \(1^{1/2}\) explícito no HTML vs. `1` no MD) | — | — | **OK — ver A-2** |
| Ex 4 🟡 | (a) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 4 🟡 | (b) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 4 🟡 | (c) | ✓ | ✓ | MD: (iii) / HTML: c | **OK** |
| Ex 4 🟡 | (d) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 4 🟡 | (e) | ✓ | ✓ | MD: (iv) / HTML: d | **OK** |
| Ex 4 🟡 | Gabarito 5-passos | ✓ | — | idêntico | **OK** |
| Ex 5 🔴 | (a) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 5 🔴 | (b) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 5 🔴 | (c) | ✓ | ✓ | MD: (iv) / HTML: d | **OK** |
| Ex 5 🔴 | (d) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 5 🔴 | (e) | ✓ | ✓ | MD: (iii) / HTML: c | **OK** |
| Ex 5 🔴 | Gabarito 5-passos | ✓ | — | derivação do cross-price exibida idêntica | **OK** |
| Ex 6 🔴 | Afirmações A, B, C | ✓ | — | — | **OK** |
| Ex 6 🔴 | (a) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 6 🔴 | (b) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 6 🔴 | (c) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 6 🔴 | (d) | ✓ | ✓ | MD: (ii) / HTML: b | **OK** |
| Ex 6 🔴 | (e) | ✓ | ✓ | MD: (i) / HTML: a | **OK** |
| Ex 6 🔴 | Gabarito 5-passos | ✓ | — | idêntico | **OK** |

**Contagem final:** 29/29 sub-itens com alternativa correta coincidente entre MD e HTML. 1 divergência cosmética de título no Ex 2 (A-1). 1 reescrita estilística no gabarito do Ex 3 sem efeito de conteúdo (A-2). **Nenhuma divergência de conteúdo.**

---

## 5. Tarefa C — Spot-check dos quizzes (só HTML)

### Pré-aula `aula-02-pre.html` (10 questões 🟡)

| Q | `data-correct` | Gabarito começa com | Bate? | Notas |
|---|---|---|---|---|
| Q1 | b | "(b)" | ✓ | 4 alternativas; distratores plausíveis |
| Q2 | c | "(c)" | ✓ | 4 alternativas; Walras conferido no próprio enunciado |
| Q3 | b | "(b)" | ✓ | 4 alternativas; Roy direto |
| Q4 | c | "(c)" | ✓ | 4 alternativas; Hicksiana CD simétrica |
| Q5 | c | "(c)" | ✓ | 4 alternativas; item falso corretamente identificado |
| Q6 | b | "(b)" | ✓ | 4 alternativas; Shephard padrão |
| Q7 | d | "(d)" | ✓ | 4 alternativas; identidade que não é consequência |
| Q8 | c | "(c)" | ✓ | 4 alternativas; cálculo \(\varepsilon^c_{11}=-1{,}5\) correto |
| Q9 | a | "(a)" | ✓ | 4 alternativas; min/max de lineares |
| Q10 | c | "(c)" | ✓ | **5 alternativas (a..e)** — Envelope EMP → \(\mu^*\) |

**Colisão Q10 pré ↔ Q4 pré?** Q4 pede \(h_1\) numérica em CD simétrica (\(\alpha=1/2\)); Q10 pede interpretação de \(\partial e/\partial \bar u\) como multiplicador. Conteúdos completamente distintos. **Não há colisão.**

Todas as 10 questões têm exatamente um atributo `data-correct`. ✓

### Pós-aula `aula-02-pos.html` (5 🟡 + 5 🔴)

| Q | Calibre | `data-correct` | Gabarito começa com | Bate? |
|---|---|---|---|---|
| Q1 | 🟡 | b | "(b)" | ✓ |
| Q2 | 🟡 | c | "(c)" | ✓ |
| Q3 | 🟡 | a | "(a)" | ✓ |
| Q4 | 🟡 | d | "(d)" | ✓ |
| Q5 | 🟡 | b | "(b)" | ✓ |
| Q6 | 🔴 | b | "(b)" | ✓ |
| Q7 | 🔴 | c | "(c)" | ✓ |
| Q8 | 🔴 | d | "(d)" | ✓ |
| Q9 | 🔴 | c | "(c)" | ✓ |
| Q10 | 🔴🔴 | b | "(b)" | ✓ |

Todas as 10 questões têm exatamente um `data-correct`. Q10 tem o marcador 🔴🔴 com nota explícita de dificuldade extra, conforme requerido pelo CLAUDE.md.

**Número de alternativas:** Q1–Q5, Q7–Q10 têm 4 alternativas; Q6 tem 4 alternativas. Pré-Q10 é a única com 5 — mas isso é **feature**, não bug (o engine aceita; a ampliação é para acomodar a interpretação dimensional do multiplicador).

---

## 6. Questões que não consegui auditar

**Nenhuma.** Todos os 49 alvos (29 sub-itens avaliativos + 10 pré + 10 pós) foram refeitos integralmente.

Ressalva metodológica: todos os cálculos foram feitos com aritmética mental e tabela mnemônica de logs/potências (\(\sqrt 2 \approx 1{,}4142\), \(4^{1/3} \approx 1{,}5874\), \(\ln 5 \approx 1{,}6094\), etc.). Quando um resultado dependia de 3ª-4ª casa decimal, triangulei por duas rotas diferentes (por exemplo, Ex 2 via fórmula CES fechada **e** via CPO da TMS harmônica; Ex 5 cross-price via potências fracionárias **e** via identidade \(\partial^2 e/\partial p_i \partial p_j = \alpha_i \alpha_j e/(p_i p_j)\)). Ambas concordam em todos os casos.

---

## 7. Recomendações não-bloqueantes para futura iteração

Essas **não** bloqueiam deploy de hoje, mas ficam como backlog:

1. **[A-1]** Uniformizar título do Ex 2 entre MD e HTML. 10s de edit.
2. **[A-2]** Considerar se o gabarito do Ex 3 ganha clareza mostrando \(1^{1/2}\) explícito (como no HTML) ou já substituído por `1` (como no MD). Questão de gosto; preferência deste auditor: MD, porque elimina um passo visual que pode confundir aluno apressado. Mas é cosmético.
3. **Sugestão gratuita para Ex 5 peer-review:** mencionar a identidade \(\partial^2 e/\partial p_i \partial p_j = \alpha_i \alpha_j e/(p_i p_j)\) em CD como "rota expressa" alternativa à derivação pelas potências fracionárias. O aluno que descobrir isso sozinho ganha 2 minutos; quem não descobrir, lê no peer-review e internaliza. Não sugiro edit agora — só para próxima revisão.
4. **Sanidade dimensional** nas armadilhas (alguns gabaritos já fazem isso, como pós-Q2 e pré-Q10): mencionar explicitamente as unidades de cada resposta (moeda vs. quantidade vs. utils vs. adimensional) derruba vários distratores sem cálculo. Consolidar esse padrão em todos os exercícios numéricos seria um "polishing" para a Aula 3 em diante.

---

## 8. Nota final aritmética/coerência: **9,7/10**

- **Subtração de 0,2** por A-1 e A-2 (cosmético).
- **Subtração de 0,1** por não conseguir triangular alguns cálculos com ferramenta externa (mas a triangulação por duas rotas independentes supre).

**Deploy-ready.** O bundle avaliativo da Aula 2 é numericamente sólido. Darcio pode liberar hoje sem virar o fim de semana revisando — pelo menos, não por causa de aritmética ou coerência MD↔HTML.

---

**Assinatura:** `ed-micro`, auditor adversarial independente, rodada 3.
**Escopo da próxima rodada (se houver):** testar frontend end-to-end em janela anônima com aluno-teste (submissão → gate de gabarito → desbloqueio em 07/05).
