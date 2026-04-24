// Supabase Edge Function — generate-reflection-draft
//
// Gera um rascunho de resposta a uma reflexao de aluno usando Claude Opus 4.7,
// para o Prof. Darcio revisar e enviar no dashboard admin. Fire-and-forget
// disparado pelo portal quando o aluno submete reflexao; tambem pode ser
// invocado manualmente pelo admin via botao "Regenerar rascunho".
//
// Contrato:
//   POST /functions/v1/generate-reflection-draft
//   Authorization: Bearer <JWT>
//   Body: { reflection_id: uuid }
//
//   200 { ok: true, reflection_id, draft_generated_at, model }
//   403 { ok: false, error: '...' }       (nao autenticado ou RLS bloqueou)
//   404 { ok: false, error: 'not found' } (reflexao inexistente)
//   409 { ok: false, error: 'already answered' } (ja tem response_text)
//   502 { ok: false, error: '...' }       (Anthropic falhou apos retries)
//   500 { ok: false, error: '...' }       (erro interno)
//
// Secrets (Supabase Dashboard → Project Settings → Edge Functions → Secrets):
//   ANTHROPIC_API_KEY  — obrigatorio
//   SUPABASE_URL       — ja injetado automaticamente
//   SUPABASE_ANON_KEY  — ja injetado automaticamente
//   SUPABASE_SERVICE_ROLE_KEY — ja injetado, usado SOMENTE para escrever de
//                              volta o draft (escrita nao pode passar pelo
//                              JWT do aluno porque aluno nao tem UPDATE em
//                              response_draft_text; RLS bloqueia).
//
// Deploy: supabase functions deploy generate-reflection-draft
// (nao rodar daqui — so preparar; o Darcio faz o deploy apos review)

/// <reference lib="deno.ns" />
/// <reference lib="dom" />

import { createClient } from 'supabase';

// -----------------------------------------------------------------------------
// Constantes

const MODEL = 'claude-opus-4-7';
const ANTHROPIC_URL = 'https://api.anthropic.com/v1/messages';
const ANTHROPIC_VERSION = '2023-06-01';
const MAX_TOKENS = 1500;
const TOTAL_TIMEOUT_MS = 30_000;
const RETRY_BACKOFF_MS = [1000, 3000]; // 2 retries: 1s, 3s

// Mapa aula → tema. Mantido em sincronia com platform/js/calendario.js.
// Se nao encontrar, devolve aula_numero=null e tema generico.
const AULAS: Record<string, { n: number; tema: string }> = {
  'aula-01':      { n: 1, tema: 'Preferências e Utilidade' },
  'aula-01-pre':  { n: 1, tema: 'Preferências e Utilidade (revisão pré-aula)' },
  'aula-01-pos':  { n: 1, tema: 'Preferências e Utilidade (pós-aula)' },
  'aula-01-exerc':{ n: 1, tema: 'Preferências e Utilidade (exercícios)' },
  'aula-02':      { n: 2, tema: 'Maximização e Dualidade (UMP, EMP, Roy, Shephard)' },
  'aula-02-pre':  { n: 2, tema: 'Maximização e Dualidade (revisão pré-aula)' },
  'aula-02-pos':  { n: 2, tema: 'Maximização e Dualidade (pós-aula)' },
  'aula-02-exerc':{ n: 2, tema: 'Maximização e Dualidade (exercícios)' },
  'aula-03':      { n: 3, tema: 'Slutsky, Elasticidades e Estimação de Demanda' },
  'aula-04':      { n: 4, tema: 'Equilíbrio Geral: Trocas e Produção' },
  'aula-05':      { n: 5, tema: 'Arrow-Debreu I — bens contingentes, tempo, risco' },
  'aula-06':      { n: 6, tema: 'Arrow-Debreu II — existência, teoremas do bem-estar' },
  'aula-07':      { n: 7, tema: 'Externalidades e Bens Públicos' },
  'aula-08':      { n: 8, tema: 'Seleção Adversa e Risco Moral' },
  'aula-09':      { n: 9, tema: 'Sinalização e Matching' },
};

// System prompt (lido do filesystem no boot; ~3000 tokens).
// Em Deno/Edge Function, o arquivo fica embedded via Deno.readTextFileSync
// relativo ao modulo.
let SYSTEM_PROMPT: string | null = null;
async function getSystemPrompt(): Promise<string> {
  if (SYSTEM_PROMPT) return SYSTEM_PROMPT;
  try {
    const url = new URL('./system-prompt.md', import.meta.url);
    SYSTEM_PROMPT = await Deno.readTextFile(url);
    return SYSTEM_PROMPT;
  } catch (e) {
    // Fallback minimo: se o arquivo sumir, pelo menos devolve algo sensato.
    console.error('[generate-reflection-draft] Falha ao ler system-prompt.md:', e);
    return (
      'Voce e o Prof. Darcio, da disciplina de Microeconomia I do MPE Insper. ' +
      'Responda em portugues a reflexao do aluno em 200-400 palavras, prosa, ' +
      'sem cliche motivacional, e assine "—Darcio".'
    );
  }
}

// -----------------------------------------------------------------------------
// Helpers

function json(body: unknown, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: {
      'content-type': 'application/json',
      'access-control-allow-origin': '*',
      'access-control-allow-headers': 'authorization, x-client-info, apikey, content-type',
    },
  });
}

function corsPreflight() {
  return new Response(null, {
    status: 204,
    headers: {
      'access-control-allow-origin': '*',
      'access-control-allow-methods': 'POST, OPTIONS',
      'access-control-allow-headers': 'authorization, x-client-info, apikey, content-type',
      'access-control-max-age': '86400',
    },
  });
}

function pageMeta(pageId: string | null | undefined) {
  if (!pageId) return { aula_numero: null as number | null, aula_tema: null as string | null };
  const hit = AULAS[pageId];
  if (hit) return { aula_numero: hit.n, aula_tema: hit.tema };
  // Heuristica: tenta extrair numero de "aula-0X..."
  const m = /^aula-(\d{1,2})/.exec(pageId);
  return {
    aula_numero: m ? parseInt(m[1], 10) : null,
    aula_tema: m ? `Aula ${parseInt(m[1], 10)}` : null,
  };
}

// Chama Anthropic com retry em 429/5xx/timeout.
async function callAnthropic(apiKey: string, system: string, userPayload: unknown): Promise<string> {
  const body = {
    model: MODEL,
    max_tokens: MAX_TOKENS,
    system: [
      {
        type: 'text',
        text: system,
        cache_control: { type: 'ephemeral' },
      },
    ],
    messages: [
      {
        role: 'user',
        content: [
          {
            type: 'text',
            text: JSON.stringify(userPayload, null, 2),
          },
        ],
      },
    ],
  };

  let lastErr: string = '';
  const totalDeadline = Date.now() + TOTAL_TIMEOUT_MS;

  for (let attempt = 0; attempt <= RETRY_BACKOFF_MS.length; attempt++) {
    if (Date.now() >= totalDeadline) {
      throw new Error(`timeout total atingido (${TOTAL_TIMEOUT_MS}ms). ultimo_erro: ${lastErr}`);
    }
    const perAttemptTimeout = Math.max(5_000, totalDeadline - Date.now() - 1000);
    const ctrl = new AbortController();
    const timer = setTimeout(() => ctrl.abort(), perAttemptTimeout);

    try {
      const resp = await fetch(ANTHROPIC_URL, {
        method: 'POST',
        headers: {
          'content-type': 'application/json',
          'x-api-key': apiKey,
          'anthropic-version': ANTHROPIC_VERSION,
        },
        body: JSON.stringify(body),
        signal: ctrl.signal,
      });
      clearTimeout(timer);

      if (resp.ok) {
        const data = await resp.json();
        // Extrai texto concatenando content blocks do tipo "text".
        const blocks = Array.isArray(data?.content) ? data.content : [];
        const text = blocks
          .filter((b: any) => b && b.type === 'text' && typeof b.text === 'string')
          .map((b: any) => b.text)
          .join('');
        if (!text.trim()) throw new Error('resposta vazia da Anthropic');
        return text.trim();
      }

      // Status nao ok
      const errText = await resp.text().catch(() => '');
      lastErr = `HTTP ${resp.status}: ${errText.slice(0, 400)}`;
      // 429 ou 5xx: retry
      if (resp.status === 429 || resp.status >= 500) {
        if (attempt < RETRY_BACKOFF_MS.length) {
          await new Promise((r) => setTimeout(r, RETRY_BACKOFF_MS[attempt]));
          continue;
        }
      }
      throw new Error(lastErr);
    } catch (e) {
      clearTimeout(timer);
      lastErr = e instanceof Error ? e.message : String(e);
      // Timeouts e erros de rede: retry
      const retriable = /abort|timeout|network|fetch failed|ECONN|ETIMEDOUT/i.test(lastErr);
      if (retriable && attempt < RETRY_BACKOFF_MS.length) {
        await new Promise((r) => setTimeout(r, RETRY_BACKOFF_MS[attempt]));
        continue;
      }
      throw new Error(lastErr);
    }
  }
  throw new Error(lastErr || 'falha desconhecida ao chamar Anthropic');
}

// -----------------------------------------------------------------------------
// Handler principal

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return corsPreflight();
  if (req.method !== 'POST') return json({ ok: false, error: 'method not allowed' }, 405);

  const supabaseUrl = Deno.env.get('SUPABASE_URL');
  const anonKey = Deno.env.get('SUPABASE_ANON_KEY');
  const serviceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
  const anthropicKey = Deno.env.get('ANTHROPIC_API_KEY');

  if (!supabaseUrl || !anonKey || !serviceKey) {
    return json({ ok: false, error: 'supabase env vars ausentes' }, 500);
  }
  if (!anthropicKey) {
    return json({ ok: false, error: 'ANTHROPIC_API_KEY nao configurada no Supabase (Project Settings → Edge Functions → Secrets)' }, 500);
  }

  // Parse body
  let reflectionId: string;
  try {
    const body = await req.json();
    reflectionId = String(body?.reflection_id || '').trim();
    if (!reflectionId) throw new Error('reflection_id ausente');
  } catch (e) {
    return json({ ok: false, error: 'body invalido: ' + (e instanceof Error ? e.message : String(e)) }, 400);
  }

  const authHeader = req.headers.get('authorization') || '';
  if (!authHeader.startsWith('Bearer ')) {
    return json({ ok: false, error: 'nao autenticado' }, 401);
  }

  // Cliente com JWT do caller — usado para LEITURA (respeita RLS: aluno dono ou admin).
  const supaAuth = createClient(supabaseUrl, anonKey, {
    global: { headers: { Authorization: authHeader } },
    auth: { persistSession: false, autoRefreshToken: false, detectSessionInUrl: false },
  });

  // Confirma sessao
  const { data: userData, error: userErr } = await supaAuth.auth.getUser();
  if (userErr || !userData?.user) {
    return json({ ok: false, error: 'sessao invalida' }, 401);
  }
  const callerId = userData.user.id;

  // Busca reflexao pelo JWT do caller (RLS decide se ele pode ler)
  const { data: refl, error: reflErr } = await supaAuth
    .from('reflections')
    .select('id, user_id, page_id, prompt_id, text, submitted_at, response_text')
    .eq('id', reflectionId)
    .maybeSingle();

  if (reflErr) {
    return json({ ok: false, error: 'erro ao ler reflection: ' + reflErr.message }, 500);
  }
  if (!refl) {
    return json({ ok: false, error: 'reflection nao encontrada ou sem permissao' }, 403);
  }
  if (refl.response_text && String(refl.response_text).trim().length) {
    return json({ ok: false, error: 'reflection ja respondida; nao gerando rascunho' }, 409);
  }

  // Contexto agregado (anonimo) — conta de pre-aulas, reflexoes anteriores, acerto 1a.
  const reflUserId: string = refl.user_id;
  const historico = await fetchHistorico(supaAuth, reflUserId).catch(() => null);

  const meta = pageMeta(refl.page_id);

  const userPayload = {
    reflexao_texto: String(refl.text || ''),
    page_id: refl.page_id,
    prompt_id: refl.prompt_id,
    aula_numero: meta.aula_numero,
    aula_tema: meta.aula_tema,
    historico: historico || { pre_aulas_concluidas: null, reflexoes_anteriores: null, acerto_1a_pct: null },
  };

  // Chama Anthropic
  const systemPrompt = await getSystemPrompt();
  let draftText: string;
  try {
    draftText = await callAnthropic(anthropicKey, systemPrompt, userPayload);
  } catch (e) {
    const msg = e instanceof Error ? e.message : String(e);
    // Grava o erro na linha pra admin ver e poder retentar
    await writeDraftError(supabaseUrl, serviceKey, reflectionId, msg).catch(() => {});
    return json({ ok: false, error: 'falha Anthropic: ' + msg.slice(0, 200) }, 502);
  }

  // Escreve o draft usando service_role (aluno nao pode escrever aqui; admin
  // poderia, mas para uniformidade e para permitir que um aluno dispare pra
  // propria reflexao sem ganhar update privilege, usamos service_role).
  const written = await writeDraftSuccess(supabaseUrl, serviceKey, reflectionId, draftText);
  if (!written.ok) {
    return json({ ok: false, error: 'falha ao gravar draft: ' + written.error }, 500);
  }

  return json({
    ok: true,
    reflection_id: reflectionId,
    draft_generated_at: written.generatedAt,
    model: MODEL,
  });
});

// -----------------------------------------------------------------------------
// Helpers auxiliares

async function fetchHistorico(
  supa: ReturnType<typeof createClient>,
  userId: string
): Promise<{ pre_aulas_concluidas: number; reflexoes_anteriores: number; acerto_1a_pct: number | null }> {
  // Paginas "material" (pre-aula) concluidas: proxy = section_progress s8-reflexao completed.
  // Como e proxy barato, usamos contagem de reflexoes distintas por page_id.
  const [reflCount, qaRows] = await Promise.all([
    supa.from('reflections').select('page_id', { count: 'exact', head: false }).eq('user_id', userId),
    supa.from('quiz_question_attempts').select('is_correct, attempt_number').eq('user_id', userId),
  ]);

  const reflexoes_anteriores = reflCount.data?.length ?? 0;
  // pre-aulas concluidas ≈ numero distinto de page_id entre reflections
  const pages = new Set<string>();
  (reflCount.data || []).forEach((r: any) => r && r.page_id && pages.add(r.page_id));
  const pre_aulas_concluidas = pages.size;

  // Acerto 1a: filtra attempt_number === 1 (ou primeira tentativa por questao se coluna ausente)
  const rows = (qaRows.data || []) as any[];
  const firstAttempts = rows.filter((r) => r && (r.attempt_number === 1 || r.attempt_number == null));
  let acerto_1a_pct: number | null = null;
  if (firstAttempts.length) {
    const ok = firstAttempts.filter((r) => r.is_correct === true).length;
    acerto_1a_pct = Math.round((ok / firstAttempts.length) * 100);
  }

  return { pre_aulas_concluidas, reflexoes_anteriores, acerto_1a_pct };
}

async function writeDraftSuccess(
  supabaseUrl: string,
  serviceKey: string,
  reflectionId: string,
  draftText: string
): Promise<{ ok: true; generatedAt: string } | { ok: false; error: string }> {
  const supaAdmin = createClient(supabaseUrl, serviceKey, {
    auth: { persistSession: false, autoRefreshToken: false, detectSessionInUrl: false },
  });
  const generatedAt = new Date().toISOString();
  const { error } = await supaAdmin
    .from('reflections')
    .update({
      response_draft_text: draftText,
      is_ai_draft: true,
      draft_generated_at: generatedAt,
      draft_model: MODEL,
      draft_error: null,
    })
    .eq('id', reflectionId);
  if (error) return { ok: false, error: error.message };
  return { ok: true, generatedAt };
}

async function writeDraftError(
  supabaseUrl: string,
  serviceKey: string,
  reflectionId: string,
  errMsg: string
): Promise<void> {
  const supaAdmin = createClient(supabaseUrl, serviceKey, {
    auth: { persistSession: false, autoRefreshToken: false, detectSessionInUrl: false },
  });
  await supaAdmin
    .from('reflections')
    .update({
      draft_error: errMsg.slice(0, 500),
      draft_generated_at: new Date().toISOString(),
      draft_model: MODEL,
    })
    .eq('id', reflectionId);
}
