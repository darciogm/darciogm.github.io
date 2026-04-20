# Setup Supabase — MPE Micro I 2026/32

## Passo 1: Aplicar o schema

1. Abrir o projeto no [Supabase Dashboard](https://supabase.com/dashboard/project/kkfgzjazdmszdyoztpss)
2. No menu lateral esquerdo, clicar em **SQL Editor**
3. Clicar em **+ New query** (canto superior)
4. Abrir o arquivo `schema.sql` (nesta pasta) num editor de texto
5. Copiar **todo** o conteúdo e colar no SQL Editor do Supabase
6. Clicar **Run** (ou `Ctrl+Enter`)

Deve aparecer `Success. No rows returned` no console abaixo. Se der erro, **me envia o texto do erro**.

## Passo 2: Verificação

No menu lateral → **Table Editor** → deve listar 9 tabelas:

- `profiles`
- `page_visits`
- `section_progress`
- `confidence_ratings`
- `micro_attempts`
- `quiz_aggregates`
- `quiz_question_attempts`
- `paper_exercises`
- `reflections`

Todas com o ícone 🔒 (RLS ativo) do lado do nome.

## Passo 3: Criar sua conta de admin

Depois que o schema estiver aplicado, você precisa ter uma conta admin para testar o dashboard. Duas opções:

### Opção A — Criar via dashboard (mais seguro, recomendado)

1. Supabase Dashboard → **Authentication** → **Users** → **Add user** → **Create new user**
2. Email: `darciogm1@insper.edu.br`
3. Password: escolha uma (você usa para logar no platform depois)
4. Marque "Auto confirm user" (pula o email de confirmação)
5. Clique **Create user**

Isso cria a conta em `auth.users` e o trigger automaticamente cria uma linha em `profiles`. Mas ela entra com `role='student'` por padrão. Promova via SQL:

```sql
UPDATE public.profiles
SET role = 'admin',
    matricula = 'darciogm1',
    nome = 'Darcio Genicolo-Martins'
WHERE email = 'darciogm1@insper.edu.br';
```

### Opção B — Fazer depois via CSV import

Se preferir aguardar, a próxima fase do plano inclui importar toda a turma via script. Você cria sua conta admin nesse mesmo passo.

## Passo 4: Me avisa aqui

Quando tudo estiver rodando sem erro, me mande uma mensagem simples ("schema aplicado, N tabelas criadas") e eu sigo para a Fase 2 (integrar o cliente Supabase na plataforma).

---

## Troubleshooting

**Erro: "extension gen_random_uuid does not exist"**
→ Rodar antes do schema: `CREATE EXTENSION IF NOT EXISTS pgcrypto;`

**Erro: "relation auth.users does not exist"**
→ Algo muito errado com seu projeto. Me chama.

**Tabelas criadas mas RLS parece não estar ativo**
→ Rodar manualmente para cada uma:
```sql
ALTER TABLE public.page_visits ENABLE ROW LEVEL SECURITY;
-- (repetir para cada tabela)
```
