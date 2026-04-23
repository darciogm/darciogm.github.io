# Plataforma MPE — Proposta de métricas adicionais para o dashboard do professor

**Status atual (já rastreado):** visitas por página, tempo efetivo de sessão (heartbeat 30s), tempo desde primeiro acesso, tempo desde último acesso, tentativas de quiz, melhor score, por questão: sequência de tentativas com timestamp e correto/errado.

Abaixo, 12 métricas adicionais para discussão e priorização. Cada uma tem: (i) o que mede, (ii) por que importa pedagogicamente, (iii) dificuldade de implementação, (iv) requisito (client-only vs. backend).

---

## A. Preparação real

### 1. Taxa de acerto em primeira tentativa (agregada)
**O que mede:** % dos itens onde a 1ª resposta foi correta, agregado por aluno e por aula.
**Por que importa:** distingue o aluno que chegou preparado (acerta de primeira) daquele que chegou ao checkpoint usando tentativa-e-erro até fechar 100%. A métrica "melhor score" esconde essa diferença.
**Dificuldade:** 🟢 Trivial — dado já coletado (`attempts[0].correct`).
**Requisito:** client-only. Já implementado no painel do aluno; falta expor no dashboard do professor.

### 2. Tempo por questão individual
**O que mede:** intervalo entre o clique de início do quiz e cada resposta submetida.
**Por que importa:** tempos implausivelmente curtos (p. ex., < 5s para item que exige cálculo) indicam chute. Tempos longos demais indicam dificuldade real — input para ajustar calibre.
**Dificuldade:** 🟡 Média — precisa registrar timestamp do `startQuiz` e calcular `Δt` para cada questão. Requer ajuste em `tracker.js`.
**Requisito:** client-only.

### 3. Dwell time por seção da página
**O que mede:** tempo gasto em cada seção do material pré-aula (leitura dirigida, axiomas, TMS, etc.), via `IntersectionObserver` sobre os `<h2>`.
**Por que importa:** se o aluno passa 2 minutos na seção "axiomas" que requer 15 e depois pula para o quiz, a leitura foi superficial.
**Dificuldade:** 🟡 Média — adicionar observer + API nova no tracker.
**Requisito:** client-only.

---

## B. Consistência e disciplina

### 4. Latência liberação → primeira tentativa
**O que mede:** dias entre liberação do módulo e o primeiro acesso do aluno.
**Por que importa:** métrica clássica de procrastinação. Alunos que começam na véspera têm menor taxa de acerto em 1ª tentativa e aprendem menos.
**Dificuldade:** 🟡 Média — requer data de liberação. Hoje usamos `firstVisit` como proxy, mas sem saber *quando* o módulo foi liberado não dá para medir latência real.
**Requisito:** backend (ou config estática com datas no código).

### 5. Consistência semanal (coeficiente de variação)
**O que mede:** desvio-padrão do tempo dedicado por semana, normalizado pela média.
**Por que importa:** estudo regular (CV baixo) prediz retenção melhor que picos concentrados (CV alto). Identifica o aluno que "estuda tudo na véspera".
**Dificuldade:** 🟢 Trivial — agrega `totalTime` por semana a partir de timestamps existentes.
**Requisito:** client-only.

### 6. Streak de dias consecutivos (já implementado no painel do aluno)
**O que mede:** dias seguidos com pelo menos uma atividade na plataforma.
**Por que importa:** gamificação saudável. Cria hábito. Útil também como proxy de engajamento para o professor.
**Dificuldade:** 🟢 Trivial — já feito.
**Requisito:** client-only. Falta expor no dashboard do professor.

### 7. Hora do dia de estudo
**O que mede:** distribuição dos acessos por faixa horária (madrugada / manhã / tarde / noite).
**Por que importa:** estudo madrugada adentro tem correlação negativa com aprendizado (sono) e positiva com procrastinação. Insight sobre o perfil da turma.
**Dificuldade:** 🟢 Trivial — extrair hora do timestamp.
**Requisito:** client-only.

---

## C. Evidência de aprendizado

### 8. Revisitas após erro
**O que mede:** após errar uma questão, o aluno retorna à seção correspondente do material antes de tentar de novo?
**Por que importa:** é o sinal mais limpo de *mindset de aprendizado* (vs. tentativa-e-erro cego). Aluno que só clica até fechar 100% aprende menos.
**Dificuldade:** 🔴 Alta — requer ligar erro de questão a seção específica e detectar scroll-to-section dentro da mesma sessão.
**Requisito:** client-only, mas complexa.

### 9. Retenção entre aulas
**O que mede:** em aulas posteriores, perguntas que retomam conceitos de aulas anteriores — performance nelas indica se o conceito foi retido.
**Por que importa:** testa aprendizado duradouro, não só preparação imediata. Informa sobre quais tópicos precisam ser reforçados na monitoria.
**Dificuldade:** 🟡 Média — precisa tagar cada questão com tópicos cobertos e computar correlação entre performance por tópico ao longo do tempo.
**Requisito:** client-only, mas requer taxonomia de tópicos bem feita no design das questões.

### 10. Taxa de abandono por aula
**O que mede:** % dos alunos que abriram a aula (contam em `pages[pid].visits`) mas não submeteram o checkpoint (`quizzes[pid].attempts == 0`).
**Por que importa:** identifica material que "desanima". Se a Aula X tem abandono alto, o material precisa de revisão.
**Dificuldade:** 🟢 Trivial — dados já coletados.
**Requisito:** client-only.

---

## D. Integridade e detecção de atalhos

### 11. Padrão de resposta anômalo
**O que mede:** sequências ABABAB, só uma alternativa repetida, ou tempo total implausível (< 30s para 6 itens).
**Por que importa:** sinaliza chute sistemático ou terceirização. Input para conversa com o aluno.
**Dificuldade:** 🟡 Média — heurísticas simples sobre a sequência de respostas e tempos.
**Requisito:** client-only.

### 12. Acesso simultâneo / multi-device
**O que mede:** o mesmo aluno acessa de >1 device na mesma janela de tempo? Ou device fingerprint muda suspeito?
**Por que importa:** detecta compartilhamento de credenciais ou uso por terceiros.
**Dificuldade:** 🔴 Alta — impossível sem backend. localStorage é per-device.
**Requisito:** **backend obrigatório** (Supabase ou equivalente).

---

## E. Autorreflexão calibrada (extras)

### 13. Auto-avaliação de confiança pré/pós
**O que mede:** slider "quanto você se sente confiante neste tópico?" antes e depois do checkpoint.
**Por que importa:** mede calibração (Dunning-Kruger). Aluno que se acha confiante mas erra muito em 1ª tentativa = alvo de intervenção.
**Dificuldade:** 🟡 Média — adicionar UI + armazenamento; nova seção no material.
**Requisito:** client-only.

### 14. Campo de dúvida por item
**O que mede:** texto livre por questão: "o que travou você aqui?". Armazenado localmente + exportado via CSV.
**Por que importa:** alimenta a triagem da Aula 1 (Bloco 0) e prepara a monitoria.
**Dificuldade:** 🟢 Trivial — campo `<textarea>` por questão.
**Requisito:** client-only para coleta; backend útil para agregação ao vivo no dia da aula.

---

## Recomendação de priorização

**Ondas curtas (implementar agora, client-only, zero infra):**
- #1 Acerto 1ª tentativa agregado (já no painel aluno → exportar para professor)
- #5 Consistência semanal (CV)
- #7 Hora do dia de estudo
- #10 Taxa de abandono por aula
- #14 Campo de dúvida por item

**Onda média (requer refactor em `tracker.js`):**
- #2 Tempo por questão individual
- #3 Dwell time por seção
- #11 Padrão de resposta anômalo
- #13 Auto-avaliação de confiança

**Onda longa (requer backend Supabase — planejada para Aula 3):**
- #4 Latência liberação → primeira tentativa (exige data de liberação no servidor)
- #9 Retenção entre aulas (agregação cross-student, tagging de tópicos)
- #12 Detecção de multi-device

---

## Para próxima iteração

A conversa natural é escolher 3-5 da onda curta + 2-3 da onda média para a primeira versão instrumentada, rodando em paralelo com a Aula 1 para validar se os sinais são úteis antes de investir na onda longa com backend.

---

## Calibração pós-Aula 1 (pipeline proposto)

Após a primeira leva completa da turma (dados populando `section_progress` e `page_visits`), rodar este pipeline para recalibrar tempos declarados:

```sql
-- 1) Tempo por seção (P50 e P75) em aula-01 pré-aula
SELECT
  section_id,
  COUNT(DISTINCT user_id)                         AS n_alunos,
  percentile_cont(0.50) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (completed_at - started_at))/60) AS mediana_min,
  percentile_cont(0.75) WITHIN GROUP (ORDER BY EXTRACT(EPOCH FROM (completed_at - started_at))/60) AS p75_min,
  MAX(EXTRACT(EPOCH FROM (completed_at - started_at))/60)                                           AS max_min
FROM public.section_progress
WHERE page_id = 'aula-01'
  AND completed_at IS NOT NULL
  AND started_at IS NOT NULL
GROUP BY section_id
ORDER BY section_id;

-- 2) Tempo total por aluno em aula-01
SELECT
  user_id,
  SUM(EXTRACT(EPOCH FROM (completed_at - started_at))/60) AS tempo_total_min
FROM public.section_progress
WHERE page_id = 'aula-01' AND completed_at IS NOT NULL
GROUP BY user_id
ORDER BY tempo_total_min DESC;
```

**Decisões de calibração:**
- Se mediana do tempo total < tempo-alvo declarado: mantém.
- Se mediana entre tempo-alvo e 1.3× teto: mantém declaração, nota complementar "~P75 leva X min".
- Se mediana > 1.3× teto declarado: re-auditar seção com P50 mais alto (provável candidato: S3 axiomas ou S5 TMS); revisar explicações e/ou dividir.

**Cadência de aplicação:** rodar após fechamento da pré-aula (quarta 18h antes de cada aula), atualizar `platform/aula-XX.html` se preciso, documentar em `metricas-proposta.md` como registro histórico.

**Outros artefatos:** análogo para `aula-01-pre.html` (via `page_visits.updated_at - created_at`) e `aula-01-exerc.html` (via `quiz_aggregates.last_attempt_at - first_started_at`).

---

## Onda 4 — Psico-cognitivo (implementada 2026-04-23)

Seis métricas comportamentais adicionais no dashboard admin. Todas client-side sobre os dados que `MpeDB.adminFetchAll()` já retorna — zero mudança de schema. Cada métrica tem fallback gracioso quando dados insuficientes. Computadas de uma só vez em `computeOnda4All()` e armazenadas em `window._onda4`; render por passes (tab agregada "Psico-cognitivo" + bloco no modal do aluno).

### #4 Confidence calibration (ECE)
**O que mede:** Expected Calibration Error por aluno, emparelhando `confidence_ratings.phase='post'` média por aula com acerto 1ª na mesma `page_id`. Bins de 25 pontos. Rótulos `good`/`over`/`under`/`none`.
**UI:** badge 🎯 / 🔥 / 🧊 no modal; scatter diagonal da turma em **Psico-cognitivo**.
**Referências:** Hacker, Bol & Keener (2012, Metacognition & Learning); Dunlosky & Metcalfe (2009).
**Fallback:** rótulo `none` se < 3 pares.

### #2 Response-time phenotyping
**O que mede:** mediana de tempo por item (diff de `answered_at` consecutivos, janela 10s–15min) cruzado com acerto 1ª. Quatro quadrantes vs. mediana da turma.
**UI:** badge `fast-correct` / `slow-correct` / `fast-incorrect` / `slow-incorrect` no modal; scatter da turma.
**Referências:** Van der Linden (2007, Springer); Wise & Kong (2005, Educ. Assess.).
**Fallback:** `none` se < 3 diffs válidos ou < 5 itens 1ª tentativa.

### #5 Circadian + cramming
**O que mede:** matriz 7×24 (dia-da-semana × hora) de eventos por aluno; cramming ratio = % eventos nas 48h pré-prazo usando `MPE_CALENDARIO.getPrazo(n, componente).fecha`.
**UI:** heatmap 7×24 no modal; heatmap agregado da turma em **Psico-cognitivo**; flag 🌙 crammer crônico (≥3 aulas com ratio > 0.6) na tabela Por Aluno e nas bandeiras do modal.
**Referências:** Anderson et al. (2014, CHI); Baker et al. (2018, JLA).
**Fallback:** sem eventos → heatmap vazio, flag não aparece.

### #8 Cohort trajectory drift
**O que mede:** score composto por (aluno × aula) = média normalizada de %FT + %sections completadas → percentil da turma por aula → série de 9 pontos. Drift = queda ≥20 decis consecutivos OU z-score rolling-3 < −1.5.
**UI:** sparkline 9 pontos (percentil colorido por faixa) no modal + banner "drift detectado"; sumário em **Psico-cognitivo**; flag 🔻 na tabela Por Aluno; sort key `drift-desc`.
**Referências:** Pardos et al. (2014, Ed. Data Mining); CMU OLI Learning Dashboard.
**Fallback:** sparkline só aparece se ≥1 aula com score.

### #10 Learning velocity por aula
**O que mede:** slope (regressão linear) de acerto 1ª ao longo das 4 fases `pre_review → embedded → post → graded_exercise`.
**UI:** grid de mini line-charts por aula no modal; tabela com slope médio turma + IQR por aula em **Psico-cognitivo**.
**Referências:** Newell & Rosenbloom (1981, power law); Koedinger et al. (2013, DataShop).
**Fallback:** aula só aparece com ≥2 fases respondidas.

### #3 SRL phenotype (regras, não k-means)
**O que mede:** três features por aluno — (a) attempts_per_checkpoint (via `micro_attempts`), (b) revisit_ratio (via `page_visits.visits` / pages únicas), (c) read_before_try (confidence.pre precedeu 1º `micro_attempts` na mesma seção?). Duração mediana de seção (< P25 = skimmer) e paper_exercises share (< 0.3 = avoidant). Rótulos interpretáveis.
**UI:** badge `strategic` / `reactive` / `skimmer` / `avoidant` / `mixed` no modal; pie + legenda em **Psico-cognitivo**.
**Referências:** Zimmerman (2013, Educ. Psychol.); Pintrich (2004).
**Fallback:** `none` se não há sinais suficientes.

### Perf & carregamento
- Aggregator `computeOnda4All()` roda uma vez em `renderAdmin` após setar `window._adminRaw`, antes de `renderAlunos()`. Log de ms em console.
- Se > 200ms, mensagem de aviso e preparo para mover para `requestIdleCallback` em próxima iteração (hoje não envolvido porque para turma de 50 alunos fica em < 100ms com dados reais do commit atual).
- Todas as métricas pagam custo em memória baixo (< 2MB de estruturas auxiliares para 50 alunos).

### CSV export (complemento)
`exportAlunosCSV` ganhou 8 colunas novas: Calibração (ECE, label), RT mediana (s, fenótipo), SRL, Crammer crônico, Drift, Último percentil.

