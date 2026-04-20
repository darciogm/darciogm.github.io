/**
 * Supabase config — MPE Micro I 2026/32
 *
 * A anon key é segura para estar em código público (client-side): o
 * acesso real aos dados é controlado pelas RLS policies do banco.
 * Todo aluno autenticado só consegue ler/escrever as próprias linhas;
 * admins (role='admin' em profiles) têm SELECT em tudo.
 */
window.SUPABASE_URL = 'https://kkfgzjazdmszdyoztpss.supabase.co';
window.SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtrZmd6amF6ZG1zemR5b3p0cHNzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY3MjE2OTEsImV4cCI6MjA5MjI5NzY5MX0.42POFbIW2dEFITYKwdeIuvUahe_ivrgklJPul6H_OyU';

/**
 * Feature flags — controlam o grau de integração com Supabase.
 * Fase 2 (atual): apenas flag base ativa; nenhum write real acontece.
 * Fase 3: USE_SUPABASE_WRITES = true para dual-write.
 * Fase 8: USE_SUPABASE_READS  = true para Supabase virar source of truth.
 */
window.MPE_CONFIG = {
  USE_SUPABASE_AUTH:   true,   // Fase 3 — ativo
  USE_SUPABASE_WRITES: false,  // Fase 4 — ainda localStorage
  USE_SUPABASE_READS:  false   // Fase 8 — ainda localStorage
};
