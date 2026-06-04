#!/usr/bin/env node
/**
 * import-turma.js
 *
 * Cria contas no Supabase Auth a partir de um CSV da turma.
 * Cada aluno recebe uma senha temporaria padronizada — voce distribui
 * em aula; aluno troca via "Esqueci minha senha" ou dentro da plataforma.
 *
 * Uso:
 *   export SUPABASE_URL=https://kkfgzjazdmszdyoztpss.supabase.co
 *   export SUPABASE_SERVICE_ROLE_KEY=<sua_service_role_key>
 *   node import-turma.js ../../lista_alunos_csv.csv
 *
 * Output:
 *   - Log no terminal (OK / ERRO por aluno)
 *   - Arquivo credenciais-YYYY-MM-DD.csv com senhas temporarias
 */

const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');

// =============================================================================
// Config
// =============================================================================

const SUPABASE_URL = process.env.SUPABASE_URL;
const SERVICE_ROLE = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SERVICE_ROLE) {
  console.error('ERRO: defina as variaveis de ambiente SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY antes de rodar.');
  console.error('');
  console.error('Exemplo:');
  console.error('  export SUPABASE_URL=https://kkfgzjazdmszdyoztpss.supabase.co');
  console.error('  export SUPABASE_SERVICE_ROLE_KEY=sbp_...');
  console.error('  node import-turma.js ../../lista_alunos_csv.csv');
  process.exit(1);
}

const csvPath = process.argv[2];
if (!csvPath) {
  console.error('ERRO: informe o caminho do CSV.');
  console.error('Uso: node import-turma.js <caminho/para/lista.csv>');
  process.exit(1);
}

// =============================================================================
// Helpers
// =============================================================================

function parseCsvBR(raw) {
  // Remove BOM
  if (raw.charCodeAt(0) === 0xFEFF) raw = raw.substring(1);
  // Divide linhas (CRLF ou LF)
  const lines = raw.split(/\r?\n/).filter(l => l.trim().length > 0);
  // Ignora header
  return lines.slice(1).map(line => {
    const cols = line.split(';').map(c => c.trim());
    return {
      matricula: cols[0],
      nome: cols[1],
      email: cols[2]
    };
  });
}

function tempPassword(email) {
  // Usa parte local do email (antes do @) para senha inicial legivel
  // ex: vitoriaalmm@al.insper.edu.br -> Mpe2026-vitoriaalmm
  const localPart = (email || '').split('@')[0];
  return `Mpe2026-${localPart}`;
}

// =============================================================================
// Main
// =============================================================================

async function main() {
  const raw = fs.readFileSync(csvPath, 'utf8');
  const alunos = parseCsvBR(raw);
  console.log(`\nLidos ${alunos.length} alunos de ${csvPath}\n`);

  const supabase = createClient(SUPABASE_URL, SERVICE_ROLE, {
    auth: { autoRefreshToken: false, persistSession: false }
  });

  const credLines = ['matricula,nome,email,senha_temporaria'];
  const errors = [];

  for (let i = 0; i < alunos.length; i++) {
    const a = alunos[i];
    const prefix = `[${String(i + 1).padStart(2, '0')}/${alunos.length}]`;

    if (!a.matricula || !a.nome || !a.email) {
      console.log(`${prefix} PULAR — linha incompleta: ${JSON.stringify(a)}`);
      errors.push({ ...a, erro: 'linha incompleta' });
      continue;
    }

    const senha = tempPassword(a.email);

    try {
      const { data, error } = await supabase.auth.admin.createUser({
        email: a.email,
        password: senha,
        email_confirm: true,
        user_metadata: {
          matricula: a.matricula,
          nome: a.nome,
          role: 'student'
        }
      });

      if (error) {
        if (error.message && error.message.toLowerCase().includes('already')) {
          console.log(`${prefix} JA EXISTE — ${a.email} (pulando)`);
        } else {
          console.log(`${prefix} ERRO — ${a.email}: ${error.message}`);
          errors.push({ ...a, erro: error.message });
        }
      } else {
        console.log(`${prefix} OK — ${a.email}`);
      }

      // Sempre adiciona ao CSV de credenciais (mesmo se ja existia)
      credLines.push(`${a.matricula},"${a.nome}",${a.email},${senha}`);

    } catch (e) {
      console.log(`${prefix} EXCECAO — ${a.email}: ${e.message}`);
      errors.push({ ...a, erro: String(e) });
    }
  }

  // Grava CSV de credenciais
  const outPath = path.join(path.dirname(csvPath), `credenciais-${new Date().toISOString().substring(0, 10)}.csv`);
  fs.writeFileSync(outPath, credLines.join('\n'), 'utf8');

  console.log(`\n---`);
  console.log(`Criadas: ${alunos.length - errors.length} de ${alunos.length}`);
  console.log(`Credenciais salvas em: ${outPath}`);

  if (errors.length > 0) {
    console.log(`\nErros (${errors.length}):`);
    errors.forEach(e => console.log(`  - ${e.matricula} ${e.email}: ${e.erro}`));
  }

  console.log('\nDistribua o CSV de credenciais aos alunos (matricula,senha) via canal seguro.');
  console.log('Alunos podem trocar a senha via "Esqueci minha senha" no login.\n');
}

main().catch(e => {
  console.error('Falha geral:', e);
  process.exit(1);
});
