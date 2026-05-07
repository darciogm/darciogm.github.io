# Storage bucket — checklist de materiais didáticos

Lista canônica dos PDFs que o frontend referencia via `MPE.openMaterial(filename)`. **Bucket privado** (acesso requer login do aluno via signed URL — implementação em `mpe-db.js: openCourseMaterial`).

**Padrão de nomenclatura:** `nicholson-snyder-12e-capN.pdf` (sem zero à esquerda em capítulos < 10).

## Inventário (atualizado 2026-05-07)

| Aula | PDF referenciado | Onde aparece | Status no bucket |
|---|---|---|---|
| Aula 1 — Preferências | `nicholson-snyder-12e-cap3.pdf` | `platform/aula-01.html:72` | ☐ confirmar |
| Aula 2 — UMP/EMP/Dualidade | `nicholson-snyder-12e-cap4.pdf` | `platform/aula-02.html:79` | ☐ confirmar |
| Aula 3 — Slutsky/Elasticidades | `nicholson-snyder-12e-cap5.pdf` | `platform/aula-03.html:83` | ☐ confirmar |
| Aula 4 — EG Trocas + Produção | `nicholson-snyder-12e-cap13.pdf` | `platform/aula-04.html:85` | ☐ confirmar |
| Aula 5 — Arrow-Debreu I | `nicholson-snyder-12e-cap7.pdf` | `platform/aula-05.html:82` | ☐ confirmar |
| Aula 5 — Arrow-Debreu I (intertemporal) | `nicholson-snyder-12e-cap13.pdf` | `platform/aula-05.html:83` | ☐ confirmar (mesmo PDF da Aula 4) |

## Comando para conferir no Supabase

```bash
# Via supabase CLI (precisa estar logado com token admin)
supabase storage ls course-materials/  # ou nome real do bucket

# Ou via supabase-js admin (Node)
node -e "
const { createClient } = require('@supabase/supabase-js');
const s = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_SERVICE_KEY);
s.storage.from('course-materials').list().then(r => console.log(r.data.map(x => x.name)));
"
```

## Pendências de upload

Antes da Aula 4 (13/05/2026 19:30), garantir que os 5 PDFs únicos abaixo estejam no bucket:

1. `nicholson-snyder-12e-cap3.pdf` (Aula 1)
2. `nicholson-snyder-12e-cap4.pdf` (Aula 2)
3. `nicholson-snyder-12e-cap5.pdf` (Aula 3)
4. `nicholson-snyder-12e-cap7.pdf` (Aula 5) — **NOVO, antes da Aula 5 em 20/05**
5. `nicholson-snyder-12e-cap13.pdf` (Aulas 4 e 5)

## Histórico de inconsistências corrigidas

- **2026-05-07**: agente da reescrita Aula 5 = AD-I usou `cap07.pdf` (com zero à esquerda); padrão das Aulas 1–3 é sem zero. Corrigido em `platform/aula-05.html:82` e `aula_5/pre_aula.md:98` para `cap7.pdf`.

## Capítulos que ainda virão (Aulas 6–9)

| Aula | Tema | PDF provável |
|---|---|---|
| Aula 6 — Arrow-Debreu II | Existência, Radner, incompletude | `nicholson-snyder-12e-cap13.pdf` (mesmo) + possivelmente `cap17.pdf` |
| Aula 7 — Externalidades + BP | Pigou/Coase/cotas, Samuelson | `nicholson-snyder-12e-cap19.pdf` |
| Aula 8 — Sel.Adv. + RM | Akerlof, Rothschild-Stiglitz | `nicholson-snyder-12e-cap18.pdf` |
| Aula 9 — Sinalização + Matching | Spence, Gale-Shapley | `nicholson-snyder-12e-cap18.pdf` (mesmo) + ZaE Match |
