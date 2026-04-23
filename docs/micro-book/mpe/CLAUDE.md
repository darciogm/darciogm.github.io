# MPE Platform — Microeconomia I, MPE 2026/32 (Insper)

Plataforma pedagógica da disciplina **Microeconomia I** do Mestrado Profissional em Economia do Insper. Serve pré-aulas, quizzes, exercícios avaliativos e tracker de engajamento — os 30% da nota que não são a prova final.

**Working directory canônico**: `docs/micro-book/mpe/`.

## Estrutura

```
mpe/
├── platform/          # Frontend estático (HTML/JS/CSS puros, sem framework)
│   ├── index.html     # Capa (login/reset)
│   ├── portal.html    # Portal do aluno (pós-login)
│   ├── admin.html     # Dashboard admin (Onda 1+2: sort/filter/risco/perfil, psicometria, tag cloud, intervention tracking)
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
- `quiz_aggregates` — estado agregado por `(user_id, page_id)`. Coluna descritiva `phase IN ('embedded','pre_review','post','graded_exercise')` marca a natureza do quiz (legado embutido, revisão pré-aula, pós-aula, exercícios avaliativos). UNIQUE permanece em `(user_id, page_id)` porque cada fase vive em `page_id` distinto (`aula-XX`, `aula-XX-pre`, `aula-XX-pos`, `aula-XX-exerc`).
- `quiz_question_attempts` — histórico por questão; além de `phase`, carrega `difficulty IN ('yellow','red','green')` (NULL em `embedded`/`pre_review`, obrigatório por convenção em `post` e `graded_exercise`).
- `paper_exercises` — exercícios em papel da pré-aula (N&S); telemetria de abordagem declarada.
- `reflections` — reflexões qualitativas do aluno (seção 8 da pré-aula).
- `admin_interventions` — registro de conversas/emails/meetings professor↔aluno (Onda 2B). Timeline de cuidado + base para delta de comportamento pós-intervenção. CRUD exclusivo de admin via RLS.

## Email templates

5 templates PT-BR com branding Insper em `supabase/email-templates/` (Confirm signup, Magic Link, Change Email, Invite user, Reset Password). SSOT versionada — se editar no Supabase Dashboard, atualizar aqui também. Ver `email-templates/README.md` para aplicação.

## Dashboard admin — funcionalidades (Onda 1 + 2)

O `platform/admin.html` é o instrumento operacional do professor. Calibrado para turma de 50 alunos, 9 aulas + prova. Toda a computação é client-side sobre dados do Supabase carregados via `MpeDB.adminFetchAll` (10 tabelas em paralelo).

### Onda 1 — Tab "Por Aluno" (produção desde 2026-04-22)
- **Sort** por 15 chaves (Nome A-Z default, matrícula, risco, dias sem acesso, aulas, quizzes, tempo, média, acerto 1ª, streak) com asc/desc onde cabe.
- **Filtro** por status: Todos / ⚫ Nunca acessou / 🔴 Em risco / 🟡 Atenção / 🟢 Em dia.
- **Export CSV** respeitando sort + filtro + search, com BOM UTF-8.
- **Risk score rule-based (0–100)** composto por 5 features: dias desde último acesso, acerto 1ª tentativa, aulas abertas vs P25, tempo vs P25, consistência semanal CV. Thresholds: <30 em dia, 30–59 atenção, ≥60 em risco. Caso especial "inactive" (nunca acessou) → 100.
- **Perfil individual (modal)**: 8 KPIs com delta vs P50 + percentil exato (badge colorido), bandeiras de risco, trajetória aula-por-aula, botão "copiar resumo" para colar em email/WhatsApp.

### Onda 2A — Psicometria + tag cloud (produção desde 2026-04-22)
- **Tab "Psicometria"**: para cada questão de quiz (🟡/🔴/🟢), computa dificuldade (p-value), discriminação (rpb = point-biserial) e distractor analysis em 1ª tentativa. Flags automáticas: 🔴 discrim. negativa (possível bug de gabarito), 🔴 muito difícil (p<0.20), 🟢 muito fácil (p>0.90), ⚠️ baixa discrim. (rpb<0.15), ✅ OK. Click na linha abre modal com breakdown por alternativa + `avg-rest` (perfil de quem marcou cada distrator). Export CSV. Padrão CTT/IRT (USMLE, AP, PISA, CMU OLI).
- **Tag cloud das reflexões** (em Métricas avançadas): tokenização PT-BR com ~150 stopwords, click em termo filtra reflexões com highlight. Fallback localStorage quando Supabase off.
- **Cohort enriquecido** no perfil: cada KPI mostra percentil exato além do delta vs P50.

### Onda 2B — Intervention tracking (produção desde 2026-04-22)
- **Tabela `admin_interventions`** (migration: `supabase/migrations/2026-04-22_admin_interventions.sql`). CRUD exclusivo de admin via RLS.
- **Helpers em `mpe-db.js`**: `addIntervention`, `updateInterventionOutcome`, `deleteIntervention`.
- **UI no modal do perfil**: form inline (kind, topic, note) + timeline cronológica com cards (tipo, data, tópico, nota, outcome opcional).
- **Delta de comportamento pós-intervenção**: cada card mostra comparação 14d pré vs 14d pós em eventos (quiz attempts + section completions) e acerto 1ª. Classificação visual: 🔵 pending / 🟢 improved / 🔴 declined / ⚫ stable / ⚪ empty. Referências: Purdue Signals, Michigan ECoach, EAB Navigate, Starfish.

### Ondas futuras (pensadas, não implementadas)
- **Heatmap slide × erro na questão pós** (exige retro-tagging questão→slide).
- **IRT scoring** (requer n maior de respondentes por questão).
- **Sentiment trajectory** das reflexões (NLP além da tag cloud).
- **Mastery tracking por learning objective** (exige taxonomia formal).
- **Longitudinal quality trend** (requer ≥3 semestres).

## Turma MPE 2026/32

- **50 alunos.** PII (nome, email, matrícula) em `supabase/scripts/import-turma.js` e `lista_alunos_csv.csv` (gitignored).
- **9 aulas de conteúdo + 1 avaliação final** (70% da nota; 30% = engajamento na plataforma).
- **Quartas-feiras 19:30–22:30**, presencial Insper, 22/04 a 17/06. Avaliação Final: qua 24/06 · 19:00 · 3h · consulta A4 permitida.
- **Monitoria com Alberto Nishikawa** — 5 encontros aos sábados (16/05, 23/05, 30/05, 13/06, 20/06), precedidos por pré-monitorias formativas (não contam nota) na plataforma.
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
- **Delimitadores de math — depende do contexto (não confundir!):**
  - **Slides Quarto reveal.js (`aula_X/slides/*.qmd`)**: usar `$...$` inline e `$$...$$` display. É o formato canônico do pandoc, que converte para `<span class="math inline">\(...\)</span>` no HTML final com MathJax funcionando. **Nunca usar `\(...\)` / `\[...\]` crus no `.qmd`** — o pandoc não reconhece como math e renderiza como texto bruto.
  - **Páginas HTML em `platform/*.html` (MathJax via CDN)**: usar `\(...\)` inline e `\[...\]` display. O MathJax está configurado no HTML para esses delimitadores.
  - **Nunca misturar** os dois dialetos dentro do mesmo arquivo.
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

#### Exceção pontual: calendário unificado Aula 1 ∪ Aula 2 (MPE 2026/32)

**Válida apenas para este semestre**, como concessão à turma na primeira semana (alunos ainda se adaptando à plataforma).

Os calendários das Aulas 1 e 2 são **unificados em uma só janela** (união):

- **Marco de início:** aula 1 acontece (quarta 22/04).
- **Marco de fim:** prazo da aula 2 fecha (quarta 06/05 18:00 — 1h30 antes da aula 3).
- **Tudo fecha junto em 06/05 18h**: pré-aula 1, quiz pré-aula 1, quiz pós-aula 1, exercícios avaliativos 1, pré-aula 2, quiz pré-aula 2, quiz pós-aula 2, exercícios avaliativos 2.
- **Gabarito dos avaliativos 1 e 2**: libera quinta 07/05 00:00 BRT (dia seguinte ao fechamento unificado).

**Da Aula 3 em diante, ciclo volta ao normal** (1 semana por aula, conforme cadência canônica acima).

**Implementação:**
- `platform/aula-01-exerc.html` — `GABARITO_RELEASE = new Date('2026-05-07T00:00:00-03:00')` (não 2026-04-30).
- Textos de prazo em `aula-01-exerc.html` (e equivalentes da aula 2 quando forem criados) mencionam explicitamente "calendário unificado Aula 1 ∪ Aula 2".
- Para todas as próximas aulas (3 em diante), **seguir o padrão canônico** sem extensão.

### Timeline concreto 2026/32 (SSOT: `platform/js/calendario.js`)

**9 aulas** (quartas 19:30–22:30, Insper presencial):

| # | Dia da aula | Material + Pré-quiz abrem | Pós-quiz + Exerc abrem | Fechamento | Gabarito |
|---|---|---|---|---|---|
| 1 | qua 22/04 · 19:30 | qua 15/04 (antecipada) | qui 23/04 madrugada | **qua 06/05 · 18:00** ⚠️ | qui 07/05 · 00:00 |
| 2 | qua 29/04 · 19:30 | qui 23/04 madrugada | qui 30/04 madrugada | **qua 06/05 · 18:00** ⚠️ | qui 07/05 · 00:00 |
| 3 | qua 06/05 · 19:30 | qui 30/04 madrugada | qui 07/05 madrugada | qua 13/05 · 18:00 | qui 14/05 · 00:00 |
| 4 | qua 13/05 · 19:30 | qui 07/05 madrugada | qui 14/05 madrugada | qua 20/05 · 18:00 | qui 21/05 · 00:00 |
| 5 | qua 20/05 · 19:30 | qui 14/05 madrugada | qui 21/05 madrugada | qua 27/05 · 18:00 | qui 28/05 · 00:00 |
| 6 | qua 27/05 · 19:30 | qui 21/05 madrugada | qui 28/05 madrugada | qua 03/06 · 18:00 | qui 04/06 · 00:00 |
| 7 | qua 03/06 · 19:30 | qui 28/05 madrugada | qui 04/06 madrugada | qua 10/06 · 18:00 | qui 11/06 · 00:00 |
| 8 | qua 10/06 · 19:30 | qui 04/06 madrugada | qui 11/06 madrugada | qua 17/06 · 18:00 | qui 18/06 · 00:00 |
| 9 | qua 17/06 · 19:30 | qui 11/06 madrugada | qui 18/06 madrugada | qua 24/06 · 18:00 | qui 25/06 · 00:00 |

⚠️ **Exceção Aula 1 ∪ Aula 2**: tudo das duas aulas fecha junto em 06/05.

**5 pré-monitorias** (formativas, não contam nota):

| Pré-M | Cobertura | Abre | Fecha | Monitoria presencial |
|---|---|---|---|---|
| Pré-M1 | Aulas 1–3 | sáb 09/05 · 00:00 | sex 15/05 · 22:00 | **sáb 16/05 · 10:00** |
| Pré-M2 | Aula 4 (EG trocas) | sáb 16/05 · 12:00 | sex 22/05 · 22:00 | **sáb 23/05 · 10:00** |
| Pré-M3 | Aula 5 (EG produção) | sáb 23/05 · 12:00 | sex 29/05 · 22:00 | **sáb 30/05 · 10:00** |
| Pré-M4 | Aulas 6–7 (Arrow-Debreu) | sáb 30/05 · 12:00 | sex 12/06 · 22:00 | **sáb 13/06 · 10:00** |
| Pré-M5 | Aulas 8–9 + revisão AF | sáb 13/06 · 12:00 | sex 19/06 · 22:00 | **sáb 20/06 · 10:00** |

**Pré-monitoria — conteúdo padrão:**
- Leitura dirigida + 4–6 micro-checkpoints.
- Foco em **extensões** que o Alberto vai dar em sala (não repetir a aula magistral).
- **Sem quiz avaliativo nem exercícios para nota** — é formativa.
- Objetivo: dar ao Alberto janela para revisar respostas antes do sábado.

**Avaliação Final:** qua 24/06 · 19:00 · 3h · presencial · consulta A4 permitida · 70% da nota.

**Para mudar prazos** (semestres seguintes ou ajustes): editar `platform/js/calendario.js` em um único lugar — portal, gates de submissão e gate de gabarito leem automaticamente.

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
- `admin_interventions` para timeline de cuidado do admin; `kind IN ('conversation','email','whatsapp','meeting','nudge','other')`. Delta de comportamento computado client-side no dashboard a partir de `quiz_question_attempts.answered_at` e `section_progress.completed_at`.

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
