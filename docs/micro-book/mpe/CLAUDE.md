# MPE Platform — Microeconomia I, MPE 2026/32 (Insper)

Plataforma pedagógica da disciplina **Microeconomia I** do Mestrado Profissional em Economia do Insper. Serve pré-aulas, quizzes, exercícios avaliativos e tracker de engajamento — os 30% da nota que não são a prova final.

**Working directory canônico**: `docs/micro-book/mpe/`.

## Estrutura

```
mpe/
├── platform/          # Frontend estático (HTML/JS/CSS puros, sem framework)
│   ├── index.html     # Capa (login/reset)
│   ├── portal.html    # Portal do aluno (pós-login)
│   ├── admin.html     # Dashboard admin (consome dados reais Supabase)
│   ├── privacidade.html
│   ├── reset-password.html
│   ├── aula-XX.html   # Páginas de aula com checkpoints
│   ├── monitoria-XX.html
│   ├── js/
│   │   ├── supabase-config.js   # anon key pública
│   │   ├── mpe-db.js            # camada de acesso Supabase
│   │   └── tracker.js           # page_visits, section_progress, confidence
│   └── metricas-proposta.md     # Métricas canônicas — consultar antes de inventar
├── supabase/
│   ├── schema.sql                # SSOT do schema — idempotente
│   ├── migrations/               # Migrations puntuais para SQL Editor
│   ├── email-templates/          # Templates HTML PT-BR (5 arquivos + README)
│   ├── scripts/import-turma.js   # Import da turma real (supabase-js admin)
│   └── setup-instructions.md
├── credenciais-2026-04-21.csv    # NUNCA versionar (está no .gitignore)
├── lista_alunos_csv.csv          # PII da turma
└── aula_1/                       # Material-fonte da aula 1
```

## Tech stack (não negociável sem proposta aprovada)

- **Backend**: Supabase (Postgres gerenciado + Auth + RLS).
- **Frontend**: HTML/JS/CSS **puros**. Sem React/Vue/Svelte/bundler. O projeto é propositalmente leve.
- **Deploy**: GitHub Pages via workflow que **copia** `docs/micro-book/mpe/platform/*` para `/mpe-platform/` no site — **não** passa pelo mkdocs build. Ver workflow.
- **Math**: MathJax. **Gráficos interativos**: JSXGraph via iframes do livro (`graph-iframe*` classes).

## Convenções de engenharia

1. **RLS é default, não opcional**. Toda tabela em `public.*` nasce com `ENABLE ROW LEVEL SECURITY` + policies explícitas. Admin passa por `public.is_admin()` (SECURITY DEFINER). Writes de aluno em tabelas de tracking passam por `public.can_write_student_data()` (bloqueia se `password_changed_at IS NULL`, com escape hatch `role = 'admin'`).
2. **`schema.sql` é idempotente**. `CREATE TABLE IF NOT EXISTS`, `CREATE OR REPLACE FUNCTION`, `DROP POLICY IF EXISTS … ; CREATE POLICY …`. Rodar duas vezes sem erro.
3. **Migrações destrutivas** (`DROP COLUMN`, `ALTER … TYPE`, `DELETE FROM`) exigem confirmação explícita + backup. Prefira migração aditiva + backfill + corte posterior.
4. **Chaves Supabase**: `anon key` pode ficar em `js/supabase-config.js` (pública por design). `service_role key` **nunca** no frontend, nunca no git. Só em Node + `.env` local.
5. **Senha inicial**: parte local do email (padrão do commit `6c4951e`). Força troca no primeiro login via modal client-side + RLS server-side.
6. **LGPD**: Prof. Darcio é o controlador. Consentimento em `profiles.consented_lgpd`. Sem consentimento → sem telemetria. Política em `platform/privacidade.html`. Direitos do titular (acesso, retificação, eliminação) implementados via admin.
7. **Commits**: padrão `feat(mpe-platform): ...`, `refactor(mpe-platform): ...`, `fix(mpe-platform): ...`. Nunca commitar sem pedido explícito do Darcio.

## Schema (tabelas principais)

- `profiles` — perfil do usuário, papel (`role`), `consented_lgpd`, `password_changed_at`.
- `page_visits`, `section_progress`, `confidence_ratings` — tracker de engajamento.
- `micro_attempts` — respostas de micro-checkpoints ao longo das páginas.
- `quiz_aggregates` — estado agregado por `(user_id, page_id)`. Coluna descritiva `phase IN ('embedded','pre_review','post')` marca a natureza do quiz (legado embutido, revisão pré-aula, pós-aula). UNIQUE permanece em `(user_id, page_id)` porque cada fase vive em `page_id` distinto (`aula-XX`, `aula-XX-pre`, `aula-XX-pos`).
- `quiz_question_attempts` — histórico por questão; além de `phase`, carrega `difficulty IN ('yellow','red')` (NULL em `embedded`/`pre_review`, obrigatório por convenção em `post`).
- `paper_exercises` — exercícios avaliativos (30% da nota).
- `reflections` — reflexões qualitativas do aluno.

## Email templates

5 templates PT-BR com branding Insper em `supabase/email-templates/` (Confirm signup, Magic Link, Change Email, Invite user, Reset Password). SSOT versionada — se editar no Supabase Dashboard, atualizar aqui também. Ver `email-templates/README.md` para aplicação.

## Turma MPE 2026/32

- **9 aulas de conteúdo + 1 avaliação final** (70% da nota; 30% = engajamento na plataforma).
- Sextas-feiras, 22/04 a 17/06. Avaliação: 24/06.
- Monitoria com **Alberto Nishikawa** em datas-chave (16/05, 23/05, 30/05, 13/06, 20/06).
- Ementa: Preferências → UMP/EMP/Dualidade → Slutsky/Elasticidades → EG trocas/produção → Arrow-Debreu (I e II) → Externalidades/Bens públicos → Seleção adversa/Risco moral → Sinalização/Matching.

## Bundle de aula (contrato do agente prof-mpe-micro)

Cada aula entrega o pacote completo:
1. **Pré-aula**: leitura dirigida + checkpoint formativo (4–8 itens distribuídos) + **quiz de revisão final de 10 questões nível intermediário 🟡**.
2. **Pré-monitoria**: análogo, focado em preparar extensão do Alberto.
3. **Roteiro de aula (3h)**: minuto-a-minuto com transições, exemplos Brasil/Mundo.
4. **Slides reveal.js**: markdown pronto, `#C8102E`, MathJax, iframes JSXGraph.
5. **Lista de exercícios para nota**: 5–8 exercícios, calibre declarado (🟢/🟡/🔴), gabarito 5-passos.
6. **Quiz pós-aula**: **10 questões — 5 intermediárias 🟡 + 5 avançadas 🔴**, gabarito 5-passos com peer-review.
7. **Roteiro de monitoria**: Darcio prepara; agente auxilia quando chamado.

Calibre: Nicholson & Snyder **12ª ed.** (Cengage, 2017, ISBN 978-1-305-50579-7) é o piso; Jehle & Reny 3ª ed. é o teto de conforto; MWG citado cirurgicamente. Gold standard estrutural = Cap 3 do livro *Microeconomia: Do Zero ao Equilíbrio*.

## Como ativar o agente

`prof-mpe-micro` é o agente engenheiro+professor deste projeto. Ativar via Agent tool com `subagent_type: "prof-mpe-micro"`. Para tarefas de plataforma (schema, RLS, frontend) ou pedagógicas (bundle de aula). Opera em português com voz irreverente-mas-rigorosa.

---

## Padrão canônico do bundle de aula (calibrado após Aula 1)

Estabelecido em 2026-04-22 após auditoria completa da Aula 1 (nota final 9.5+). **Aplicar às Aulas 2-9** referenciando a Aula 1 como template. Não reinventar estrutura — copiar e adaptar.

### Estrutura dos 5 artefatos

Cada aula produz exatamente 5 artefatos + 1 diretório de slides:

```
aula_X/
├── slides/
│   ├── aula-0X.qmd              # Fonte reveal.js (Quarto)
│   ├── aula-0X.html             # Render commitado (sem _files/)
│   ├── theme.scss               # Cópia do aula_1/slides/theme.scss
│   ├── logo-insper.png          # Cópia do aula_1/slides/logo-insper.png
│   └── graficos/                # iframes JSXGraph quando necessário
└── exercicios-avaliativos.md    # SSOT em Markdown (espelho do HTML)

platform/
├── aula-0X.html                 # Pré-aula (material de leitura + micro-checkpoints)
├── aula-0X-pre.html             # Quiz pré-aula de revisão (10 🟡)
├── aula-0X-pos.html             # Quiz pós-aula (5 🟡 + 5 🔴)
└── aula-0X-exerc.html           # Exercícios avaliativos (6 exerc, 1🟢 + 3🟡 + 2🔴)
```

**Regra de ouro:** quando editar exercícios avaliativos, manter `aula_X/exercicios-avaliativos.md` em sincronia com `platform/aula-0X-exerc.html`. O MD é SSOT narrativa; o HTML é o que o aluno vê.

### Slides reveal.js (`.qmd`)

- Copiar YAML header da `aula_1/slides/aula-01.qmd` (inclui kill do title-block via MutationObserver).
- Tema: `[default, theme.scss]` (scss idêntico ao da Aula 1 — branding Insper #C8102E).
- MathJax: `\(...\)` inline, `\[...\]` display. **Nunca usar `$...$`**.
- Classes CSS úteis (definidas em theme.scss):
  - `.title-slide` — capa com border vermelho
  - `.section-divider` — divisor de bloco (fundo vermelho #C8102E ou azul #1B3A5C)
  - `.pause-slide` — intervalo (fundo claro)
  - `.eq-punch` — frases-martelo (dark slab, texto branco)
  - `.eq-key` — equações-chave (beige com border vermelho)
  - `.callout`, `.callout-note`, `.callout-warn` — boxes sóbrias
  - `.compact-table` — tabelas densas (font 0.72em)
  - `.cols`, `.cols-2-3`, `.cols-3-2` — grids
  - `.card` — axiomas e formas funcionais
  - `.bridge` — transições em itálico
- **Speaker notes** (`::: {.notes}`): em slides densos, incluir resolução completa como fallback. Reveal tecla `S`.
- **Ordem dos slides**: conferir roteiro (tabela de tempo no slide ~3) vs. ordem de aparição. Auditoria pegou erro grave de Pausa 2 antes do Bloco 3 na Aula 1.

### Pré-aula material (`platform/aula-0X.html`)

Estrutura de **9 seções sequenciais** com gating:

1. **S0 — Orientação** (2 min): contrato com o aluno.
2. **S1 — Leitura ZaE**: capítulo correspondente + botão para o livro público.
3. **S2 — Leitura N&S 12e**: botão "Abrir N&S Cap. X (PDF)" via `MPE.openMaterial('nome-arquivo.pdf', this)` (bucket Supabase privado).
4. **S3 — Conceitual 1** (10 min): slider de confiança pré → texto → **micro-checkpoint (2 itens obrigatórios)** → slider de confiança pós.
5. **S4 — Conceitual 2** (5 min): mesma estrutura, tópico complementar.
6. **S5 — Conceitual 3** (15 min): mesma estrutura. Aqui entram mini-boxes (ex: Homotetia, Box Brasil teaser).
7. **S6 — Exercícios de papel** (15 min): 2 obrigatórios + 1 bônus do N&S, com campo textarea de abordagem (mín 10 chars).
8. **S7 — Checkpoint final** (10 min): 3 questões de síntese.
9. **S8 — Reflexão qualitativa** (3 min): 2 campos obrigatórios, alimentam Bloco 0 da aula seguinte.

**JS:** padrão `MPE.*` (updateSlider, recordConfidence, microAnswer, completeSection, updatePaperState, completePaperExercises, updateReflectionState, completeReflection, `_rehydrate`, `openMaterial`). Copiar integralmente da Aula 1 e ajustar `PAGE_ID` e `TOTAL_SECTIONS=9`.

**Micro-checkpoints:** 3 tentativas máximas com cooldown de 10s em erro + scroll de volta ao texto. Após esgotar, revela correta e libera avanço.

**Tempo-alvo declarado:** 90–120 min + nota "telemetria sem julgar".

### Quiz pré-aula (`platform/aula-0X-pre.html`)

- **10 questões, todas 🟡** (calibre N&S 12e).
- Engine: `MicroQuizGraded`. Atributos do bloco:
  - `data-page="aula-0X-pre"` (sufixo `-pre`)
  - `data-phase="pre_review"`
  - `data-title="Revisão Pré-Aula 0X"`
- Cada questão: `<div class="quizg-q" data-qid="qN" data-correct="X" data-difficulty="yellow">`.
- Alternativas: 4 ou 5 por questão, uma correta. Distratores plausíveis, nenhum trivial.
- **Gabarito 5-passos** escondido (`<div class="quizg-feedback" hidden>`), revelado após submit.
- **Tempo-alvo:** 30–45 min.
- **Uma única submissão.**

### Quiz pós-aula (`platform/aula-0X-pos.html`)

- **10 questões: 5🟡 + 5🔴** (calibre Jehle-Reny / qualifier).
- `data-page="aula-0X-pos"`, `data-phase="post"`, `data-difficulty="yellow"|"red"`.
- **Tempo-alvo:** 45–70 min (inclui leitura dos gabaritos).
- **Q10 deve ter marcador 🔴🔴** com nota de dificuldade extra quando a questão exigir raciocínio de recíproca/meta.
- **Gabarito 5-passos** em cada questão.
- **Uma única submissão.**

### Exercícios avaliativos (`platform/aula-0X-exerc.html`)

- **6 exercícios: 1🟢 + 3🟡 + 2🔴.**
- Cada exercício: enunciado longo (1 parágrafo) + **3–5 sub-itens de múltipla escolha** + **1 gabarito 5-passos único**.
- Total: ~25–30 sub-itens.
- Engine: `MicroQuizGraded` com `data-phase="graded_exercise"` e `data-difficulty="green"|"yellow"|"red"`.
- **Gate de gabarito:** body recebe classe `.gabarito-locked` via JS se `Date.now() < GABARITO_RELEASE`. CSS: `body.gabarito-locked .quizg-feedback { display: none !important; }`. Banner "respostas registradas" aparece após submit enquanto gate ativo.
- **Release:** data do gabarito = dia seguinte ao fechamento (quarta 18h → quinta 00:00 BRT).
- **SSOT em Markdown:** `aula_X/exercicios-avaliativos.md` com estrutura idêntica. Manter em sincronia.
- **Tempo-alvo:** 2h30–3h.

### Contrato pedagógico dos prazos (recalibrado pela Aula 0)

**Cadência semanal** (aula às quartas 19:30):

| Evento | Abre | Fecha | Tempo-alvo |
|---|---|---|---|
| Pré-aula (material + quiz revisão 10🟡 + reflexão) | Quarta pós-aula (~23h) | **Quarta 18h seguinte** | 90–120 + 30–45 min |
| Quiz pós-aula da aula X | Quinta (dia após aula X) | **Quarta 18h da aula X+1** | 45–70 min |
| Exercícios avaliativos da aula X | Quinta | **Quarta 18h da aula X+1** | 2h30–3h |
| Gabarito 5-passos dos avaliativos | — | **Quinta 00:00 pós-fechamento** | — |

**Regra única:** tudo fecha junto, quarta 18h, 1h30 antes da próxima aula.

### Calibre dos conteúdos

- **Nicholson & Snyder 12ª ed.** (Cengage 2017, ISBN 978-1-305-50579-7) é o **piso obrigatório**.
- **Jehle & Reny 3ª ed.** é o **teto de conforto** — não ultrapassar em 🟡; ok em 🔴.
- **MWG** citado cirurgicamente, não bibliografia obrigatória.
- **ZaE** (livro do Darcio) como **orientação estrutural** + leitura principal do aluno.

### Gabarito 5-passos (contrato obrigatório)

Toda questão 🟡/🔴 e todo exercício avaliativo tem gabarito em 5 passos:

1. **Ponto-chave** — o conceito-âncora em 1–2 frases.
2. **Derivação** — passos algébricos do item mais técnico.
3. **Armadilha** — o erro mais comum e por que o distrator atrai.
4. **Extensão** — para onde o tema vai nas próximas aulas (cite aula específica).
5. **Peer-review** — crítica honesta ao próprio exercício (ambiguidade? tradeoff? risco residual?).

### Convenções de notação

- **Preferência:** `\succeq` (não `\succsim`).
- **Taxa marginal:** `\text{TMS}` (não `MRS`). Bundle é PT-BR.
- **Decimais:** vírgula com `\{,\}` → `0{,}25`, não `0.25`.
- **Expoentes CES:** forma canônica `(\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}`, não `^2` "por acaso numérico".
- **Construção canônica lex:** `x^n = (1 - 1/n, 2) \to (1, 2)` vs. `y = (1, 1)` (conjunto inferior não-fechado). Variantes ficam como exercícios opcionais.

### Schema Supabase (referência)

- `quiz_aggregates.phase IN ('embedded','pre_review','post','graded_exercise')`
- `quiz_question_attempts.phase IN (...idem)`; `difficulty IN ('yellow','red','green')` ou NULL em embedded/pre_review.
- `section_progress` para telemetria de tempo (usar `started_at`, `completed_at`).
- `paper_exercises` para exercícios de papel da pré-aula (ex: `ns-3-5`, `ns-3-7`).
- `reflections` para campos qualitativos do fim da pré-aula.
- `confidence_ratings.phase IN ('pre','post')` por seção.

### Portal — CTAs por aula

Cada aula, quando `available: true`, mostra 4 botões no card:

- **📝 Pré-aula** → `aula-0X-pre.html` (quiz 10🟡) — flag `preAvailable`
- **📖 Material** → `aula-0X.html` (pré-aula material) — sempre disponível se aula available
- **✍ Pós-aula** → `aula-0X-pos.html` (5🟡+5🔴) — flag `posAvailable` + `posOpensOn`
- **📋 Exercícios** → `aula-0X-exerc.html` (avaliativos) — flag `exercAvailable`

### Processo de produção de um novo bundle

1. **Criar diretório** `aula_X/slides/` copiando `theme.scss` e `logo-insper.png` da Aula 1.
2. **Delegar ao `prof-mpe-micro`** a geração: passar CLAUDE.md completo + referência à Aula 1 como template.
3. **Auditoria** antes de deploy: delegar novamente ao `prof-mpe-micro` com prompt de auditoria (ver `aula_1/auditoria-bundle.md` como modelo). Arquivo gerado: `aula_X/auditoria-bundle.md`.
4. **Se auditoria retornar nota < 9.0**: delegar plano 8.5 → 9.5+ (modelo: `aula_1/plano-9.5.md`). Aplicar top 10 ações + extensões.
5. **Re-render** dos slides (`quarto render aula-0X.qmd`). `_files/` não é commitado (padrão aula_1).
6. **Commit** consolidado com padrão `feat(mpe-aula-X): ...`.
7. **Portal**: adicionar/atualizar entrada em `AULAS[X-1]` no `portal.html` com `available`, `preAvailable`, `posAvailable`, `exercAvailable`, `posOpensOn`.
8. **Testar** em janela anônima com conta de aluno.

### Anti-padrões (não repetir)

- ❌ Bundle com apenas parte dos 5 artefatos — todos ou nenhum.
- ❌ Tempo-alvo otimista sem telemetria ("75–90 min" quando P75 real é 2h).
- ❌ Múltiplas construções do mesmo contraexemplo (auditoria Aula 1 pegou 3 versões da lex).
- ❌ Notação `\succsim` em alguns arquivos e `\succeq` em outros.
- ❌ Gabarito 5-passos que repete o enunciado em vez de explicar o *por quê*.
- ❌ Alternativas com "todas acima" / "nenhuma das anteriores" — sempre uma correta identificável.
- ❌ Exercícios que exigem UMP/Slutsky/dualidade **antes** da aula respectiva.
- ❌ Alinhar exercícios de papel a caps. do N&S que a aula não consolida — se você vai consolidar 3.5 e 3.7, use 3.5 e 3.7.

### Referência rápida (arquivos-modelo)

Ao produzir bundle novo, abrir lado a lado para consulta:

- `aula_1/slides/aula-01.qmd` — YAML, seções, speaker notes, transitions
- `platform/aula-01.html` — estrutura das 9 seções + JS inline completo
- `platform/aula-01-pre.html` — padrão de quiz 10🟡 com MicroQuizGraded
- `platform/aula-01-pos.html` — padrão 5🟡+5🔴 com gabaritos 5-passos
- `platform/aula-01-exerc.html` — padrão de exercícios + gate de gabarito + SVG visual inline
- `aula_1/auditoria-bundle.md` — template de auditoria cruzada
- `aula_1/plano-9.5.md` — template de plano de aperfeiçoamento
