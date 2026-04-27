# Plano 8.6 → 9.5+ — Aula 3 (Slutsky · Elasticidades · CV/EV/EC) · MPE 2026/32

**Autor:** prof-mpe-micro
**Data:** 2026-04-27
**Input:** `aula_3/auditoria-bundle.md` (nota 8.6) + 5 artefatos do bundle.
**Antecessores:** `aula_1/plano-9.5.md`, `aula_2/plano-9.5.md` (templates estruturais).

---

## 1. Diagnóstico em um parágrafo

A Aula 3 chegou em 8.6 — não em 9.5+ — por uma combinação cirúrgica e *honesta*: **um erro técnico** no pós-quiz Q8 (afirma que as 4 restrições agregadas Engel/Cournot/Homogeneidade/Simetria são independentes, quando Deaton-Muellbauer 1980 §3.1 mostra que Cournot é implicada por Engel + Homogeneidade + Simetria via Slutsky-em-elasticidades + adding-up; aluno MPE com base ANPEC vai contestar formalmente), **dois slides com score de densidade ≥ 12** (Definições básicas no Bloco 3 e Derivação de Slutsky 2/3 no Bloco 1) que correm risco real de overflow no canvas 1280×800 mesmo com buffer-bottom de 160 px do `theme.scss`, e **uma inconsistência inter-artefato** no Box Brasil POF — slides citam Hoffmann 2007 (calibrado em POF 2002–03) lado a lado do número 12%/3% atribuído à POF 2017–18, enquanto o `platform/aula-03.html` já corrigiu omitindo Hoffmann. Sem esses três cortes, a auditoria adversarial detrai 0.9 ponto justamente onde mais dói: rigor técnico no calibre 🔴 e densidade visual nos blocos-âncora. O resto do bundle é cirúrgico de polish: promoção de Q9 a 🔴🔴 para repor o marcador que a Aula 2 tinha, isolamento de eq-punch no slide CV/EV numérico (lição Aula 2 slide 35 Shephard internalizada parcialmente, falta uma quebra), e comentário editorial em Q3 do pré-quiz para defender as 5 alternativas deliberadas contra "consertos" futuros. **MD limpa de stream-of-consciousness, calendário canônico restaurado, contas fecham, calibre N&S/J&R respeitado, sem violação temporal de pré-requisito** — então a distância para 9.5+ não exige reescrita estrutural, apenas execução disciplinada do top 10.

---

## 2. Top 10 ações priorizadas

| # | Tipo | Arquivo:linha | Problema | Ação | Esforço | Δnota |
|---|---|---|---|---|---|---|
| 1 | I | `platform/aula-03-pos.html`:178–193 | Q8 🔴 marca como correta a (d) "4 são independentes"; D-M 1980 §3.1 mostra que Cournot é implicada por Engel + Homog + Simetria | Trocar `data-correct` "d"→"b"; reescrever (b) como "3 — Cournot implicada"; transformar (d) em distrator falacioso ("4 — todas vêm de fontes diferentes"); reescrever gabarito 5-passos integralmente (Ponto-chave da redundância via Slutsky-elast + adding-up; Derivação numérica completa) | 25 min | +0.30 |
| 2 | III | `aula_3/slides/aula-03.qmd`:451–474 | Slide "Definições básicas" score ~13.2 (h2+eq-key+§+display+§+eq-key boxed+§) — ESTOURA | Quebrar em (1/2) Definições + (2/2) Slutsky-em-elasticidades; bridge entre os dois | 5 min + re-render | +0.15 |
| 3 | III | `aula_3/slides/aula-03.qmd`:202–222 | Slide "Derivação de Slutsky (2/3)" score ~12 — APERTADO/ESTOURA, slide-corredor da derivação canônica | Re-quebrar em (2a/3) regra-da-cadeia + (2b/3) Roy + identidade dual; punch fica intacto no (3/3) | 5 min + re-render | +0.15 |
| 4 | I | `aula_3/slides/aula-03.qmd`:418 | Box Brasil cita Hoffmann 2007 (POF 2002–03) lado a lado do número 12%/3% atribuído à POF 2017–18; `platform/aula-03.html` já corrigiu, slides ficaram para trás | Remover linha Hoffmann do bloco de referências do slide (alinhar ao platform). IBGE 2020 fica como referência única do número | 3 min + re-render | +0.10 |
| 5 | III | `aula_3/slides/aula-03.qmd`:691–711 | Slide "CV/EV em CD numérico (2/2)" score ~11.5 — APERTADO; eq-punch CV=16≠EV=8 corre risco de cortar | Isolar eq-punch em slide próprio (padrão Aula 2 slide 35 Shephard); bridge mantida no slide 2/2 | 3 min + re-render | +0.05 |
| 6 | I | `platform/aula-03-pos.html`:197 (header Q9) | Q9 quase-linear-direção-2 é a pérola do quiz, calibre qualifier (amarra 3 coisas: ∂x₁/∂m=0, h₁=x₁ᴹ via Slutsky, igualdade das 3 integrais); merece 🔴🔴 para repor marcador da Aula 2 | Trocar `<strong>Q9.</strong>` por `<strong>Q9. 🔴🔴</strong>`; adicionar nota inline "Esta é a questão de calibração-teto do quiz. Custa 10–15 min de papel para fechar com clareza." | 3 min | +0.05 |
| 7 | I | `platform/aula-03-pre.html`:74 (header Q3) | Q3 com 5 alternativas (a–e) vs. 4 nas demais — decisão deliberada (cada distrator nomeia erro identificável: sinal/multiplicador/ponto-vs-arco/razão-invertida) mas sem proteção contra "conserto" futuro | Adicionar comentário HTML editorial logo antes do `<div class="quizg-q" data-qid="q3"...>` explicando que as 5 alternativas são intencionais | 2 min | +0.03 |
| 8 | I | `aula_3/slides/aula-03.qmd`:343–362 | Slide "Quando Giffen aparece" score ~9.7 — MARGEM; bridge poderia migrar para slide seguinte (geometria do efeito-renda) | Mover bridge final ("renda domina substituição") para abertura do slide "Geometria do efeito-renda" | 2 min + re-render | +0.04 |
| 9 | I | `platform/aula-03-pos.html`:178–193 (Q8 — passo 4 do gabarito) | Após correção #1, Extensão precisa explicar onde aparece a redundância em literatura aplicada | Reescrever passo 4 (Extensão): citar D-M 1980 explicitamente; relacionar com AIDS (Cournot é "free" se as outras 3 são impostas); citar Phlips 1983 e ANPEC 2018 como onde aluno encontra de novo | 5 min | +0.05 |
| 10 | I | `aula_3/exercicios-avaliativos.md`:122–123 + `platform/aula-03-exerc.html`:186 | Ex 2 passo 2 — MD detalha `8 - 1·(-2) - 1·0`, HTML compacta `(8 + 2)`. Equivalente, mas SSOT MD está mais verbosa que HTML enxuto que o aluno vê | Uniformizar para versão **enxuta do HTML** (decisão antecipada do Darcio): no MD, trocar a expansão por `x_1^M = -2 + (1/2)(8 + 2)/1 = 3`. SSOT vence detalhe redundante | 2 min | +0.03 |
| **Σ** | | | | | **~55 min + re-render** | **+0.95** |

**Subtotal Top 10**: +0.95 pontos sobre 8.6 → **9.55**.

---

## 3. Extensões "going from good to great" (5–8 itens menores)

| # | Tipo | Arquivo:linha | Ação | Esforço | Δnota |
|---|---|---|---|---|---|
| E1 | I | `platform/aula-03-pos.html`:209 (Q9 passo 4) | Adicionar nota explícita à fórmula de Willig que `\(|\text{CV} - \Delta\text{EC}|/m \le (1/2)\,\eta_1\,s_1\,(\Delta p_1/p_1)^2\)` é cota assintótica em (Δp/p)² — esclarecer que a expressão linear "η·s·Δp/(2p)" do Ex 5 avaliativo é a leitura *first-order* da mesma cota | 5 min | +0.04 |
| E2 | I | `platform/aula-03-exerc.html`:398 (Ex 5 enunciado) | Cota Willig escrita como `η·s·Δp/(2p)` é simplificação first-order. Adicionar nota de rodapé "*Forma simplificada; expressão completa de Willig 1976 inclui termo `(Δp/p)²` — para `Δp/p` moderado, ambas dão estimativa próxima.*" | 3 min | +0.03 |
| E3 | I | `platform/aula-03-pos.html`:183 (Q8 alternativa b após reescrita) | Após troca, escrever (b) com micro-prova in-line: "3 — Cournot é implicada por Engel + Homogeneidade + Simetria, via `\(\sum_i s_i\varepsilon_{ij} = \sum_i s_i\varepsilon^c_{ij} - s_j \sum_i s_i\eta_i = 0 - s_j\cdot 1 = -s_j\)`" para reforçar que a alternativa correta também é educativa | 5 min | +0.05 |
| E4 | I | `aula_3/durante_aula.md` Bloco 3 (armadilhas) | Adicionar armadilha "**aluno acha que as 4 restrições são todas independentes** — em D-M 1980 §3.1, Cournot é implicada pelas outras 3. Esclarecer: 'lógicas distintas ≠ funcionalmente independentes'" para preparar resposta em sala | 3 min | +0.03 |
| E5 | I | `platform/aula-03.html` (Box Brasil seção 5) | Verificar consistência: `aula-03.html` já omite Hoffmann (auditoria confirma). Garantir que pré-aula material e slides usem mesmas 2 referências IBGE 2020 (id 2101742 e 2101678) | 2 min | +0.02 |
| E6 | I | `aula_3/slides/aula-03.qmd`:715–727 | Box Brasil reforma tributária cita "Banco Mundial 2022 *Brazil's Tax Reform: A Welfare Analysis*" e "Estimativas SPE/MF, 2023" sem DOI/link específico. Adicionar `<!-- [VERIFICAR DOI/Link] -->` para futuro Darcio confirmar | 2 min | +0.02 |
| E7 | II | `platform/aula-03-pre.html` Q5 | Q5 atual sobre Slutsky em elasticidades é mecânico. Adicionar nota no enunciado "*Cuidado com sinais: substituto líquido tem `\(\varepsilon^c_{ij} > 0\)`; complemento líquido tem `\(\varepsilon^c_{ij} < 0\)`.*" para reduzir erros por descuido sem facilitar a questão | 5 min | +0.03 |
| E8 | III | `aula_3/slides/aula-03.html` | Re-render obrigatório após mudanças no `.qmd` (ações 2, 3, 4, 5, 8). `_files/` separado, não vai ao git | 2 min | n/a (operacional) |
| **Σ** | | | | **~27 min** | **+0.22** |

---

## 4. Resultado esperado

- **Após Top 10 sozinho**: 8.6 + 0.95 = **9.55**.
- **Após Top 10 + extensões viáveis (esforço ≤ 5 min, Δ ≥ 0.05)** — E3 (+0.05) e E1 (+0.04 marginal mas dentro do critério de inclusão), e operacionais (E5, E8): 9.55 + ~0.10 = **9.65**.
- **Risco de regressão**: baixo. Toda mudança é cirúrgica; nenhuma reescreve estrutura. O único ponto de atenção é o re-render do `.qmd` — se a renderização extrapolar de novo, isolar eq-punch e isolar bridge resolvem (já pré-pensados nas ações 5 e 8).

**Honestidade peer-reviewada**: a auditoria foi rigorosa e o calibre da Aula 3 já era bom. As ações são realmente cirúrgicas — não há "+0.30 mágicos" como na Aula 2 onde 6 críticos foram corrigidos. Aqui o gargalo é Q8 (que sozinho vale +0.30 porque é o único bloqueador conceitual). Tudo o mais é polimento composto. A nota 9.55–9.65 é factível; 10/10 não é objetivo razoável (sempre haverá um ângulo a mais).

---

## 5. Cronograma operacional

**Ordem de execução** (~85 min total):

1. **[25 min]** Top #1: corrigir Q8 do pós-quiz (gabarito + alternativas + 5-passos). É a mudança com maior superfície.
2. **[5 min]** Top #2: quebrar slide "Definições básicas" em (1/2) + (2/2).
3. **[5 min]** Top #3: re-quebrar "Derivação de Slutsky (2/3)" em (2a/3) + (2b/3).
4. **[3 min]** Top #4: remover Hoffmann do Box Brasil POF nos slides.
5. **[3 min]** Top #5: isolar eq-punch do slide "CV/EV CD numérico (2/2)".
6. **[2 min]** Top #8: migrar bridge de "Quando Giffen aparece".
7. **[3 min]** Top #6: promover Q9 a 🔴🔴.
8. **[2 min]** Top #7: comentário editorial em Q3 do pré-quiz.
9. **[5 min]** Top #9: reescrever passo 4 da Q8 corrigida (Extensão).
10. **[2 min]** Top #10: enxugar passo 2 do Ex 2 no MD para bater com HTML.
11. **[5 min]** Extensão E3: micro-prova in-line na (b) da Q8.
12. **[5 min]** Extensão E1: nota Willig assintótica na Q9 passo 4.
13. **[~2 min]** Extensões operacionais E5, E6 (verificações + comentário VERIFICAR DOI).
14. **[2 min + tempo de quarto]** Re-render `quarto render aula-03.qmd`.
15. **[5 min]** Spot-check: contagem de slides `## ` no `.qmd`, contagem de questões nos quizzes, sincronia MD↔HTML do Ex2.

**Pontos de paralelização**: nenhum, porque (1) e (9) tocam o mesmo bloco; (2)–(5) tocam o mesmo arquivo `.qmd`; e re-render é o último passo. Execução sequencial é correta.

**Riscos de regressão identificados**:
- Re-render do `.qmd` pode revelar novo overflow se a quebra de slide for mal-feita; mitigação: cada quebra explicita bridge + eq-punch isolado quando necessário.
- Mudança de `data-correct` em Q8 deve estar acompanhada de **reescrita das alternativas e do gabarito** — risco de aluno ler (b) "3" e gabarito antigo dizendo "as 4 são independentes" se o passo (1) Ponto-chave não for atualizado.
- Edição do MD do Ex 2 pode dessincronizar com HTML — mitigação: editar para ficar **idêntico** ao HTML enxuto, não criar terceira versão.

---

## 6. O que fica pendente para auditoria #2

Depois do Top 10 + extensões viáveis, fica pendente:

- **Verificação de dados POF 2017–18** (12% e 3%): Darcio confirma com tabela 2.1 do relatório IBGE antes do release. Auditor não tinha acesso ao PDF.
- **Verificação de existência do PDF** `nicholson-snyder-12e-cap5.pdf` no Supabase Storage. Sem o PDF, botão `MPE.openMaterial` quebra silenciosamente.
- **Smoke-test em janela anônima** com conta de aluno: gating das 9 seções, MathJax renderiza equações novas, gate de gabarito bloqueia até 14/05 00:00 BRT.
- **DOI Banco Mundial 2022** (E6): se Darcio quiser referência forte, verificar `worldbank.org` antes de release (link permanente).
- **Histograma esperado de performance**: Q8 corrigida deve cair de "70% acerto fácil" para "30–40% acerto" (calibre qualifier real). É feature, não bug.
