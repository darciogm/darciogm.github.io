# Email Templates — Plataforma MPE

Source of truth dos templates de e-mail transacional que o Supabase Auth envia
aos alunos e convidados da disciplina **Microeconomia I (MPE 2026/32)**.
Substituem os defaults em inglês do Supabase por versões em português do
Brasil com identidade visual do Insper (vermelho `#C8102E`, tipografia sóbria,
footer institucional).

Todos os arquivos são HTML **inline-styled** (sem `<style>` tag, sem classes)
para maximizar compatibilidade com clientes de e-mail — principalmente
Outlook. Estrutura com `<table>` aninhada, `max-width: 600px`, fontes com
fallbacks seguros.

---

## Mapa de templates

| Template                     | Arquivo                  | Assunto recomendado                                | Menu no Dashboard                                             | Quando dispara                                                                 |
|------------------------------|--------------------------|----------------------------------------------------|---------------------------------------------------------------|--------------------------------------------------------------------------------|
| Confirm signup               | `confirm-signup.html`    | Confirme seu cadastro na Plataforma MPE            | Authentication → Email Templates → **Confirm signup**         | Aluno cria conta via formulário e o e-mail precisa ser validado                |
| Magic Link                   | `magic-link.html`        | Seu link de acesso à Plataforma MPE                | Authentication → Email Templates → **Magic Link**             | Aluno solicita login sem senha (via OTP link)                                  |
| Change Email Address         | `change-email.html`      | Confirme a alteração de e-mail — Plataforma MPE    | Authentication → Email Templates → **Change Email Address**   | Usuário pede troca de e-mail; Supabase envia confirmação ao **novo** endereço  |
| Invite user                  | `invite-user.html`       | Convite para a Plataforma MPE                      | Authentication → Email Templates → **Invite user**            | Admin (Darcio) convida usuário via `auth.admin.inviteUserByEmail` ou Dashboard |
| Reset Password               | `reset-password.html`    | Redefinição de senha — Plataforma MPE              | Authentication → Email Templates → **Reset Password**         | Usuário pede redefinição de senha na tela de login                             |

---

## Como aplicar no Supabase Dashboard

Para cada template:

1. Abra o Supabase Dashboard do projeto MPE.
2. Vá em **Authentication → Email Templates**.
3. Selecione o template desejado na barra lateral (ex.: *Confirm signup*).
4. No campo **Subject heading**, cole o assunto recomendado da tabela acima.
5. No campo **Message body** (tab *HTML source* ou equivalente), apague o
   conteúdo padrão em inglês e cole integralmente o HTML do arquivo
   correspondente deste diretório.
6. Clique **Save**.
7. (Opcional mas recomendado) Clique **Send test email** para validar
   renderização em pelo menos Gmail web, Outlook web e iOS Mail antes de
   divulgar à turma.

Repita para os 5 templates.

---

## Variáveis do Supabase (não mexer)

Os templates usam placeholders que o Supabase renderiza em tempo de envio.
**Não alterar a sintaxe** (`{{ .Nome }}` com espaços internos) — se quebrar,
o e-mail sai com o placeholder literal. Presentes nestes templates:

| Variável              | Onde é renderizada pelo Supabase                                           |
|-----------------------|-----------------------------------------------------------------------------|
| `{{ .ConfirmationURL }}` | Link completo da ação (confirmar, login mágico, reset, aceitar convite)    |
| `{{ .Email }}`        | E-mail atual do usuário (usado em *Change Email*)                           |
| `{{ .NewEmail }}`     | Novo e-mail solicitado pelo usuário (usado em *Change Email*)               |
| `{{ .Token }}`        | OTP de 6 dígitos — disponível se preferir enviar código ao invés do link    |
| `{{ .TokenHash }}`    | Hash do token — uso avançado com redirect customizado                       |
| `{{ .SiteURL }}`      | URL base do site configurada em *Authentication → URL Configuration*        |

Os templates atuais usam apenas `{{ .ConfirmationURL }}`, `{{ .Email }}` e
`{{ .NewEmail }}`. Se algum dia for preciso exibir `{{ .Token }}` na
mensagem (fluxo OTP sem link), adicione um bloco de destaque próximo ao CTA
e atualize este README.

---

## Padrão visual (quick reference)

- **Header**: `background-color: #C8102E`, título branco "Plataforma MPE — Microeconomia I".
- **Body**: fundo branco, texto `#111` / `#222`, `line-height: 1.6`, `font-size: 16px`.
- **CTA**: fundo `#C8102E`, texto branco, `padding: 14px 28px`, `border-radius: 6px`.
  Link estilizado como botão (e-mail não executa JS).
- **Fallback link**: sempre repetir a URL em texto logo abaixo do botão.
- **Note**: aviso "se você não solicitou, ignore este e-mail" separado por borda sutil.
- **Footer**: fundo `#f5f5f5`, texto `#555`, centralizado, contendo:

  > Plataforma MPE · Microeconomia I · Insper 2026/32
  > Dúvidas: darciogm1@insper.edu.br · darciogm.github.io/micro-book

- **Font stack**: `-apple-system, BlinkMacSystemFont, 'Segoe UI', Arial, sans-serif`.

---

## Manutenção

**Estes arquivos são o source of truth.** Se alguém editar um template
diretamente no Dashboard (para um ajuste rápido em produção), é obrigatório
refletir a mudança aqui e commitar. Caso contrário, o próximo deploy/review
vai divergir silenciosamente do que os alunos recebem.

Checklist ao alterar qualquer template:

- [ ] HTML continua 100% inline-styled (nenhuma `<style>` tag, nenhuma `class`).
- [ ] Placeholders `{{ .Xxx }}` preservados.
- [ ] Header, CTA e footer seguem o padrão visual acima.
- [ ] Footer institucional idêntico nos 5 templates.
- [ ] Teste de renderização em Gmail + Outlook antes de salvar em produção.
- [ ] Dashboard atualizado com o mesmo HTML deste arquivo.
