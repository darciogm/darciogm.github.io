# Scripts Supabase — MPE Micro I 2026/32

Scripts rodados **localmente** (nunca no cliente) com a `service_role` key.
Essa key dá acesso total ao banco (ignora RLS). **Nunca commitar em lugar nenhum.**

## import-turma.js

Importa alunos do CSV para `auth.users`. Cria contas com senha temporária padronizada (`Mpe2026-<matricula>`). O trigger `handle_new_user` do banco cria automaticamente a linha em `profiles` com matrícula e nome.

### Passo a passo

#### 1. Instalar dependências (uma vez só)

```bash
cd /home/darciogm1/projetos/darciogm.github.io/docs/micro-book/mpe/supabase/scripts
npm install
```

#### 2. Pegar sua service_role key

- Supabase Dashboard → **Project Settings → API**
- Copia a key **`service_role`** (a de baixo, NÃO a `anon public`)
- Começa com `eyJ...` mas **tem `role: "service_role"` no payload** — é diferente da anon

⚠️ **Nunca** cole essa key em lugar algum que possa ir para GitHub, Slack, email ou chat. Ela dá acesso total ao seu banco.

#### 3. Exportar as variáveis de ambiente

```bash
export SUPABASE_URL=https://kkfgzjazdmszdyoztpss.supabase.co
export SUPABASE_SERVICE_ROLE_KEY=<cole_sua_service_role_key_aqui>
```

#### 4. Rodar o script

```bash
node import-turma.js ../../lista_alunos_csv.csv
```

Vai mostrar no terminal:
```
Lidos 38 alunos de ../../lista_alunos_csv.csv

[01/38] OK — vitoriaalmm@al.insper.edu.br
[02/38] OK — francisakt@al.insper.edu.br
...
[38/38] OK — algumaluno@al.insper.edu.br

---
Criadas: 38 de 38
Credenciais salvas em: ../../credenciais-2026-04-21.csv
```

#### 5. O que fazer com o CSV gerado

O arquivo `credenciais-YYYY-MM-DD.csv` tem:

```csv
matricula,nome,email,senha_temporaria
264078,"VITORIA ...",vitoriaalmm@al.insper.edu.br,Mpe2026-264078
...
```

**Distribua este CSV apenas pelo canal seguro** (Blackboard mensagem individual ou email institucional). **Não mande por WhatsApp nem Slack aberto.**

Alternativa: a senha é previsível (`Mpe2026-<matricula>`), então basta anunciar o padrão em aula — cada aluno sabe a sua.

### Após o import

- Verifique no **Supabase → Authentication → Users** que apareceram os 38 alunos (coluna Email Confirmed com ✓).
- Verifique com SQL:
  ```sql
  SELECT COUNT(*) FROM public.profiles WHERE role = 'student';
  ```
  Deve retornar 38.

- Peça aos alunos, no primeiro login, para **trocar a senha** — basta entrarem no portal e usarem o fluxo "Esqueci minha senha" com o próprio email, que o Supabase manda link de reset automático.

### Rodar de novo é seguro

O script detecta contas que já existem e pula (log `JA EXISTE`). Sem duplicatas. Útil se o CSV for atualizado com alunos novos.

### Problema comum: email de reset não chega

Supabase free tier tem limite de 3 emails/hora via SMTP padrão. Se muita gente pedir reset simultaneamente, alguns emails vão demorar ou falhar. Opções:
- Escalone as redefinições: peça aos alunos que acionem "Esqueci minha senha" um por vez nas primeiras aulas.
- Ou configure SMTP customizado (Resend free tier / SendGrid): Supabase Dashboard → Authentication → SMTP Settings.
