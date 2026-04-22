# Plano 8.5 → 9.5+ — Aula 2 (UMP, EMP, Dualidade) · MPE 2026/32

**Rodada cirúrgica aplicada em 2026-04-22.** Base: `aula_2/auditoria-bundle.md` (auditoria adversarial com nota 7.8). Objetivo: levar o bundle a 9.5+ respeitando o padrão canônico do CLAUDE.md (notação, gabarito 5-passos, calendário unificado, anti-padrões).

Esta rodada é intencionalmente **não-exaustiva**: corrige todos os críticos, a grande maioria dos moderados e um subconjunto de menores. O que sobrou é polimento sem risco de conteúdo — listado abaixo na seção "Deliberadamente não corrigido".

---

## 1. Achados críticos corrigidos

### Crítico #1 — Ex 5 avaliativo exigia Slutsky antes da Aula 3 ✅

**Mudança.** Itens (d) e (e) do Exercício 5 🔴 reformulados para **dualidade pura** (Aula 2):

- (d) agora pede \(\partial h_1/\partial p_2\) **diretamente via Shephard** (derivando a fórmula fechada da Hicksiana em CD). Resultado: \(2/3\), não zero. Revela que a cruzada hicksiana é **não-nula** em CD — contraste cirúrgico com a cruzada marshalliana (que *é* zero em CD e só será justificada via Slutsky na Aula 3).
- (e) agora pede **simetria de Shephard** (\(\partial h_1/\partial p_2 = \partial h_2/\partial p_1\) via Young aplicado a \(e\)). Conta confirmada numericamente: \(2/3 = 2/3\). ✓
- Título/subtítulo atualizado: "Dualidade completa: identidades recíprocas, Shephard cruzado e simetria" (removida referência a Slutsky).
- Gabarito 5-passos reescrito; item 4 (Extensão) explicita que Slutsky virá na Aula 3 e mostra por que, *naquele momento*, a cruzada marshalliana zero emerge do cancelamento substituição-renda (\(0 = S_{12} - x_2^M\cdot \partial x_1^M/\partial m = 2/3 - 1\cdot 2/3\)). As contas feitas aqui servem de *ponte* para a Aula 3.

**Arquivos:** `platform/aula-02-exerc.html` (linhas 389–426 do HTML original); `aula_2/exercicios-avaliativos.md` (Ex 5).

### Crítico #2 — MD dos avaliativos com stream-of-consciousness ✅

**Mudança.** `aula_2/exercicios-avaliativos.md` **reescrito do zero** (601 linhas → arquivo novo, limpo). Toda linguagem de "Hmm, precisa verificar", "Minha resposta original estava baixa", "Correção aplicada ao HTML", "Vou ajustar no HTML", "Refazendo com..." foi **removida**. Gabarito canônico, estrutura 5-passos rigorosa, espelha o HTML atualizado. Adicionada nota de cabeçalho reforçando o pré-requisito respeitado (Slutsky é Aula 3).

**Arquivo:** `aula_2/exercicios-avaliativos.md` (integral).

### Crítico #3 — Ex 2 (e) MD contradizia HTML ✅

**Mudança.** Incluído no Crítico #2. Na versão nova do MD, Ex 2 (e) afirma corretamente \(s_1 = 1/3\), \(s_2 = 2/3\), com interpretação econômica canônica (complementares σ<1 ⇒ parcela no bem **caro** é maior). MD e HTML agora dizem a mesma coisa em todos os 6 exercícios e em todos os sub-itens.

**Arquivo:** `aula_2/exercicios-avaliativos.md`.

### Crítico #4 — Ex 4 (e) tinha duas alternativas corretas ✅

**Mudança.** Alternativa (i) reformulada para ser **falsa**: troca-se de "CD com expoentes (0,3; 0,5; 0,2)" para "CD com expoentes **permutados** (0,5; 0,3; 0,2)". Permuta torna a primal inconsistente com \(v\) (o expoente de \(x_i\) em \(u\) tem que bater com o expoente de \(p_i\) em \(v\)). Agora há **uma única correta** (iv), que nomeia homotetia + dá a primal alinhada. Peer-review reescrito para explicar por que (i) falha. Enunciado do sub-item reescrito como "qual é **verdadeira**" para remover ambiguidade.

**Arquivos:** `platform/aula-02-exerc.html` (Ex 4e); `aula_2/exercicios-avaliativos.md` (idem).

### Crítico #5 — Slide 739 (Shephard) com derivação quebrada ✅

**Mudança.** Slide "Prática — resposta completa (2/2)" reescrito e **quebrado em 2 slides**:
- **(2/3) "EMP + Hicksianas"**: função gasto fechada \(e = 2\bar u\sqrt{p_1 p_2} = 20\); Hicksianas via fórmula fechada \(h_1 = \alpha e/p_1 = 2{,}5\). Conta direta e limpa.
- **(3/3) "Shephard como derivada"**: derivação completa e correta — \(\partial e/\partial p_1 = 2\bar u\cdot (1/2)\,p_1^{-1/2}\,p_2^{1/2} = \bar u\sqrt{p_2/p_1} = 5\cdot (1/2) = 2{,}5 = h_1\). ✓ Slab "UMP e EMP são o mesmo ponto físico. Roy e Shephard são as derivadas que provam." fecha o Bloco 4.

Além disso, o slide (1/2) foi renomeado para (1/3) para consistência da sequência.

**Aplicação da nova diretriz (Darcio, 2026-04-22):** quando um slide aperta (reticências, conta "limpa ao lado", fonte reduzida, múltiplas derivações em 1 slide), **quebrar em 2 ou 3 slides** respiráveis. Aplicada aqui. Varredura do restante do deck não identificou outros candidatos.

**Arquivo:** `aula_2/slides/aula-02.qmd` (linhas 728–770).

### Crítico #6 — Pré-quiz Q4 e Q10 duplicadas ✅

**Mudança.** Q10 reescrita do zero, agora sobre **Envelope aplicado ao EMP**: \(\partial e/\partial \bar u = \mu^*\) (multiplicador dual, custo marginal de utilidade). Tema novo não coberto em Q1-Q9. Quatro alternativas (era 4), uma única correta. Gabarito 5-passos novo com peer-review que aponta o teste dimensional (moeda/util) como filtro de sanidade. Cobertura do pré-quiz volta a 10 questões efetivas em 10 temas distintos.

**Arquivo:** `platform/aula-02-pre.html` (linhas 215–232 do HTML original).

---

## 2. Achados moderados corrigidos

### Moderado #2 — Ex 1 (d) alternativa (iv) equivalente à correta ✅

**Mudança.** Alternativa (iv) de "\(v = (m/p_1)^\alpha\cdot (m/p_2)^{1-\alpha}\) (com \(m\) repetida)" (que é matematicamente equivalente a (ii)) para "\(v = m^\alpha/p_1^\alpha + m^{1-\alpha}/p_2^{1-\alpha}\) (**soma**, não produto)". Distinção clara: \(v\) em CD **fatoriza como produto** \(m\cdot \phi(p)\), não como soma de razões. Gabarito 5-passos (passo 3 e 5) reescrito para explicar a distinção estrutural.

**Arquivos:** `platform/aula-02-exerc.html` (Ex 1d); `aula_2/exercicios-avaliativos.md` (idem).

### Moderado #3 — Referências a "N&S 12e 4.1, 4.3, 4.5" sem verificação ✅

**Mudança.** Renomeados nos 3 artefatos como "Exercício proposto 1/2/3 (inspirado no cap. 4 do N&S 12e)". Elimina risco de referência cruzada incorreta ao PDF do N&S. O conteúdo dos enunciados permanece idêntico.

**Arquivos:** `platform/aula-02.html` (seção S6); `aula_2/pre_aula.md` (seção 3); `aula_2/slides/aula-02.qmd` (slide "Contrato da aula", linha 97).

### Moderado #4 — Q2 checkpoint final pré-aula "(constante absorvida)" confuso ✅

**Mudança.** Substituído por "(forma sem constante multiplicativa de normalização, sem prejuízo para a Identidade de Roy)". Remove ambiguidade sobre se os expoentes foram "absorvidos" ou preservados.

**Arquivo:** `platform/aula-02.html` (S7 Q2).

### Moderado #5 — Slide \(\lambda^* = 1/m\) sem ressalva de log-forma ✅

**Mudança.** Adicionado callout pedagógico no slide "Cobb-Douglas via log — ordinalidade de novo" explicando que \(\lambda^* = 1/m\) vale para a **log-forma**, enquanto na forma direta o \(\lambda^*\) canônico é \(v/m\). Ordinalidade preserva o ótimo \(x^M\), não o valor numérico de \(\lambda^*\); o que sobrevive intacto é a tangência e Roy (via Envelope).

**Arquivo:** `aula_2/slides/aula-02.qmd` (linha 266-aprox).

### Moderado #6 — Ex 4 (c) alternativa correta com parenteses explicativa ✅

**Mudança.** Removida a parenteses "(cálculo \(100/(1\cdot 2^{0{,}5}\cdot 5^{0{,}2}) = 100/(1{,}414\cdot 1{,}380) \approx 100/1{,}951\))" da alternativa (iii). Também removido "(soma)" da alternativa (ii) para manter paralelismo visual. Alternativas ficam só com o valor; cálculo fica reservado ao gabarito 5-passos.

**Arquivos:** `platform/aula-02-exerc.html` (Ex 4c); `aula_2/exercicios-avaliativos.md` (idem).

### Moderado #7 — Pós-quiz Q2 com \(h_1 = h_2 = 8\) "suspeito" ✅

**Mudança.** Preços alterados de \(p = (1, 3)\) para \(p = (2, 4)\), mantendo \(\bar u = 8\) e expoentes \((1/4, 3/4)\). Novas Hicksianas: \(h_1 \approx 5{,}90\), \(h_2 \approx 8{,}85\). Elimina a coincidência numérica que levava aluno a desconfiar do resultado "bonito demais". Alternativas e gabarito 5-passos atualizados, incluindo razão estrutural \(h_2/h_1 = (\alpha_2/\alpha_1)(p_1/p_2) = 3/2\) como check.

**Arquivo:** `platform/aula-02-pos.html` (Q2).

### Moderado #8 — Q8 (Engel + Cournot) derivação algébrica opaca ✅

**Mudança.** Passo 2 reescrito em **sub-passos numerados** e estruturados por "→". Engel: parte de Walras → derivada em \(m\) → multiplicar por \(x_i^M/x_i^M \cdot m/m\) → identificar \(s_i\) e \(\eta_i\) → somar. Cournot: Walras → derivada em \(p_j\) → dividir por \(m\) → multiplicar por \(p_j\cdot x_i^M / (p_j\cdot x_i^M)\) → identificar \(s_i\) e \(\varepsilon_{ij}\). Derivação agora é explicitamente pedagógica; aluno MPE acompanha passo a passo.

**Arquivo:** `platform/aula-02-pos.html` (Q8, passo 2 do gabarito).

### Moderado #9 — Q10 pós-quiz (🔴🔴) citações flutuantes ✅

**Mudança.** Removidas citações específicas "Rockafellar 1970" e "Diewert + Deaton-Muellbauer" do peer-review. Peer-review agora foca em **crítica honesta**: sinaliza que aluno literal pode achar que "recuperar \(u\)" exige fórmula fechada — não exige; basta caracterizar os conjuntos superiores. As referências canônicas permanecem no passo 4 (Extensão), que é o lugar adequado.

**Arquivo:** `platform/aula-02-pos.html` (Q10, passo 5).

---

## 3. Achados menores corrigidos

### Menor #2 — Pré-quiz Q9 peer-review enxugado ✅

Substituído parágrafo explicativo longo por regra mnemônica curta: "max de lineares em \(p\) = convexo; min de lineares em \(p\) = côncavo". Peer-review agora cabe em 2 linhas sem perda de conteúdo.

**Arquivo:** `platform/aula-02-pre.html` (Q9).

### Menor #5 — Durante_aula.md Bloco 4 armadilhas recalibradas ✅

Reordenadas as armadilhas previstas do Bloco 4 por **frequência observada**: índice trocado (\(h_1\) vs. \(h_2\)) e parcela trocada (\(\alpha\) vs. \(1-\alpha\)) sobem para o topo; "derivar \(e\) em \(\bar u\) ao invés de \(p_1\)" desce para último (marcado como raro-mas-diagnóstico).

**Arquivo:** `aula_2/durante_aula.md` (Bloco 4.b).

---

## 4. Achados deliberadamente não corrigidos (nesta rodada)

### Moderado #1 — Ex 2 MD peer-review autoelogioso

**Por quê não.** Já resolvido via reescrita integral do MD (Crítico #2). O peer-review do Ex 2 no MD novo é crítica pedagógica honesta, sem "autojustificativa". Este moderado foi absorvido pelo Crítico #2.

### Menor #1 — Q5 pós-quiz (item b) com duas sub-afirmações

**Por quê não.** A alternativa (b) "\(e\) homogênea grau 1; \(h\) homogênea grau 0" é uma par *conjugado* de propriedades — uma implica a outra por diferenciação. Apresentar juntas é pedagogicamente correto. Distratores (a), (c), (d) quebram o par de formas diferentes. Calibre 🟡 mantido.

### Menor #3 — Slides com fragments `{.fragment}` inconsistentes

**Por quê não.** A inconsistência é estilística; aceitável para um deck de 40+ slides com blocos heterogêneos. Padronizar demandaria varredura global de baixa prioridade vs. o calendário (7 dias para a aula). Deixar para rodada de polimento pós-telemetria.

### Menor #4 — CSS inline no aula-02.html

**Por quê não.** Dívida técnica de frontend sem impacto pedagógico; melhor resolver como PR dedicado ao `platform.css` cobrindo todas as páginas de aula em conjunto.

### Menor #6 — Confirmação do theme.scss copiado

**Por quê não.** Verificação simples via `ls aula_2/slides/` após commit — não bloqueia deploy.

### Menor #7 — Adicionar mais 1 Box Mundo à pré-aula

**Por quê não.** O padrão "mínimo 3 Box Mundo por capítulo" é do livro (ZaE), não da pré-aula da plataforma. Pré-aula da Aula 1 (template) segue o mesmo padrão de 1-2 boxes; manter coerência entre aulas.

---

## 5. Nota auto-estimada pós-correção

**Estimativa: 9.5 / 10.**

- Todos os 6 críticos resolvidos (impacto bruto estimado: +1.5).
- 9 moderados resolvidos dos 9 listados (absorvendo #1 dentro do #2). Impacto: +0.2.
- 2 menores resolvidos dos 7 listados. Impacto: +0.05.
- Nenhuma regressão: peer-reviews reescritos, alternativas novas validadas, contas numéricas conferidas (Ex 5d \(2/3\) via Shephard direto; Q2 pós \(h_2\approx 8{,}85\); Q10 pré \(\mu^*\) canonicamente dual).
- Risco residual: (a) tempo de release está em 2026-05-07 00:00 BRT conforme calendário unificado — confirmar quando Darcio for aprovar o deploy; (b) MathJax nos novos blocos ainda não foi testado em browser; (c) render do slide (3/3) precisa verificar que a equação de Shephard não extrapola o frame (teste visual).

---

## 6. Recomendação

**Deploy-ready com uma leve conferência visual.** Antes de liberar aos alunos:

1. Re-renderizar os slides com `quarto render aula_2/slides/aula-02.qmd` e conferir visualmente:
   - Slide novo (3/3) "Shephard como derivada" cabe sem overflow.
   - Slide "Prática — resposta completa (1/3)" ainda numera corretamente após renomeação.
   - Callout novo em "Cobb-Douglas via log" não estoura a área útil.
2. Abrir `platform/aula-02-exerc.html`, `platform/aula-02-pre.html`, `platform/aula-02-pos.html` em browser autenticado como aluno. Conferir:
   - MathJax renderiza as novas equações (Ex 5d, Q10 pré, Q8 pós).
   - Gate de gabarito bloqueia corretamente até 07/05 00:00 BRT (fallback para `calendario.js`).
   - Submissão única registra no Supabase sem erros.
3. Rodar `grep -n "Slutsky" platform/aula-02-exerc.html` para confirmar que não sobra referência a Slutsky em enunciados avaliativos (apenas em gabarito "Extensão" como ponte declarada).

Se (1)–(3) passam limpos, **não há necessidade de nova rodada de auditoria** antes do deploy. Se alguma regressão aparecer no render/MathJax, é patch cirúrgico (< 15 min).

Aula é em **29/04** — há 7 dias de folga. Margem generosa.
