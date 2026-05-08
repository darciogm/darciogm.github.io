# Storage bucket — checklist de materiais didáticos

Lista canônica dos PDFs que o frontend referencia via `MPE.openMaterial(filename)`. **Bucket privado** (acesso requer login do aluno via signed URL — implementação em `mpe-db.js: openCourseMaterial`).

**Padrão de nomenclatura:** `nicholson-snyder-12e-capN.pdf` (sem zero à esquerda em capítulos < 10) e `jehle-reny-3e-capN.pdf` (mesmo padrão).

## Inventário (atualizado 2026-05-07)

| Aula | PDF referenciado | Onde aparece | Status no bucket |
|---|---|---|---|
| Aula 1 — Preferências | `nicholson-snyder-12e-cap3.pdf` | `platform/aula-01.html:72` | ☐ presumido OK (em uso desde 22/04) |
| Aula 2 — UMP/EMP/Dualidade | `nicholson-snyder-12e-cap4.pdf` | `platform/aula-02.html:79` | ☐ presumido OK (em uso desde 22/04) |
| Aula 3 — Slutsky/Elasticidades | `nicholson-snyder-12e-cap5.pdf` | `platform/aula-03.html:83` | ☐ presumido OK (em uso desde 06/05) |
| Aula 4 — EG Trocas + Produção | `nicholson-snyder-12e-cap13.pdf` | `platform/aula-04.html:85` | ☐ presumido OK (mesmo PDF da Aula 5) |
| **Aula 5 — Arrow-Debreu I (piso)** | **`jehle-reny-3e-cap5.pdf`** | `platform/aula-05.html:82` | ✅ confirmado 2026-05-07 |
| Aula 5 — Arrow-Debreu I (complemento N&S) | `nicholson-snyder-12e-cap7.pdf` | `platform/aula-05.html:83` | ✅ confirmado 2026-05-07 |
| Aula 5 — Arrow-Debreu I (intertemporal N&S) | `nicholson-snyder-12e-cap13.pdf` | `platform/aula-05.html:84` | ☐ presumido OK (mesmo PDF da Aula 4) |

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

Status em 2026-05-07:

1. `nicholson-snyder-12e-cap3.pdf` (Aula 1) — presumido OK
2. `nicholson-snyder-12e-cap4.pdf` (Aula 2) — presumido OK
3. `nicholson-snyder-12e-cap5.pdf` (Aula 3) — presumido OK
4. `nicholson-snyder-12e-cap7.pdf` (Aula 5 complemento) — ✅ confirmado pelo Darcio em 2026-05-07
5. `nicholson-snyder-12e-cap13.pdf` (Aulas 4 e 5) — presumido OK
6. **`jehle-reny-3e-cap5.pdf` (Aula 5 piso)** — ✅ **confirmado pelo Darcio em 2026-05-07**. Capítulo 5 do Jehle-Reny 3e cobre §5.5 Markets with Uncertainty (núcleo da aula).

## Histórico de inconsistências corrigidas

- **2026-05-07**: agente da reescrita Aula 5 = AD-I usou `cap07.pdf` (com zero à esquerda); padrão das Aulas 1–3 é sem zero. Corrigido em `platform/aula-05.html:82` e `aula_5/pre_aula.md:98` para `cap7.pdf`.
- **2026-05-07 (segunda passada)**: Aula 5 trocou referência primária de N&S §7.5 + ZaE Cap. 14 para Jehle-Reny §5.5. ZaE Cap. 14 não tem cobertura formal de incerteza/bens contingentes (verificado em `docs/micro-book/cap14/`). N&S permanece como complemento panorâmico. PDF `jehle-reny-3e-cap5.pdf` precisa ser carregado no bucket antes de 14/05.

## Capítulos que ainda virão (Aulas 6–9)

| Aula | Tema | PDF provável |
|---|---|---|
| Aula 6 — Arrow-Debreu II | Existência, Radner, incompletude | `nicholson-snyder-12e-cap13.pdf` (mesmo) + possivelmente `cap17.pdf` |
| Aula 7 — Externalidades + BP | Pigou/Coase/cotas, Samuelson | `nicholson-snyder-12e-cap19.pdf` |
| Aula 8 — Sel.Adv. + RM | Akerlof, Rothschild-Stiglitz | `nicholson-snyder-12e-cap18.pdf` |
| Aula 9 — Sinalização + Matching | Spence, Gale-Shapley | `nicholson-snyder-12e-cap18.pdf` (mesmo) + ZaE Match |
