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
- `quiz_aggregates`, `quiz_question_attempts` — infra de quizzes (usada pelos quizzes de revisão pré-aula e pós-aula).
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

Calibre: Nicholson & Snyder 11ª ed. é o piso; Jehle & Reny 3ª ed. é o teto de conforto; MWG citado cirurgicamente. Gold standard estrutural = Cap 3 do livro *Microeconomia: Do Zero ao Equilíbrio*.

## Como ativar o agente

`prof-mpe-micro` é o agente engenheiro+professor deste projeto. Ativar via Agent tool com `subagent_type: "prof-mpe-micro"`. Para tarefas de plataforma (schema, RLS, frontend) ou pedagógicas (bundle de aula). Opera em português com voz irreverente-mas-rigorosa.
