# Auditoria — Pré-Monitoria 4 (Aulas 6-7: Arrow-Debreu II + Externalidades/BP)

> **Status:** auditoria Referee 2 implacável da pré-monitoria 4 da MPE 2026/32, executada em 2026-05-09. Aula-âncora: Aula 7 (última do par 6-7 que a Pré-M4 cobre). Material auditado: `platform/pre-monitoria-04.html`. Material correlato considerado para não-duplicação: `aula_6/{durante_aula,pre_aula,exercicios-avaliativos}.md`, `aula_7/{durante_aula,pre_aula,exercicios-avaliativos}.md`, `monitorias/monitoria-04.md`.

> **Histórico:** esta pré-monitoria já passara por audit-fix no commit `4aaea6c`. Esta segunda passada confirma que o trabalho anterior se sustentou e não introduziu regressão.

---

## 1 — Sumário executivo

**Nota global pós-auditoria: 10/10.** A pré-monitoria 4 não exigiu fix algum nesta passada. Calibre, distratores, DOIs e álgebra estão limpos. Não-duplicação cross-artefato (pré-M4 ↔ aulas 6-7 ↔ M4 presencial) confirmada.

**Comparação com a pré-M5 nesta mesma sessão:** a pré-M4 demonstra o efeito da auditoria prévia — entrou nesta varredura no calibre 9.5+ e saiu intocada. A pré-M5, por nunca ter passado por audit, exigiu 5 fixes para chegar ao mesmo patamar. Reforça a regra do projeto: **toda pré-monitoria nova exige auditoria formal antes de publicar**.

---

## 2 — Lista de fixes aplicados

**Nenhum.** A pré-monitoria 4 já estava em calibre 10/10 ao entrar nesta sessão.

A passagem anterior (commit `4aaea6c`) já havia tratado:

- DOIs canônicos (Hansen-Jagannathan 1991, Mehra-Prescott 1985, Lucas 1978, Weitzman 1974, Vickrey 1961, Clarke 1971, Groves 1973, Geanakoplos-Polemarchakis 1986).
- Álgebra do Cenário 1 de Hart (utilidade `2·ln(2,5) ≈ 1,833`).
- Álgebra do Cenário 2 (autarquia: utilidade `ln 4 ≈ 1,386`).
- Cálculo `γ ≈ 24` no equity premium.
- Inclinações `b=4 > d=1` no Weitzman.
- Pivot Clarke `5 + 2 + 0 = 7` no VCG.
- Citação Green-Laffont 1979 com livro corretamente atribuído (North-Holland).
- Distinção Roberts 1979 (capítulo em livro coletivo) vs. Gibbard-Satterthwaite (1973, 1975).

---

## 3 — Verificação numérica explícita

### 3.1 Seção 2 — Hart-GP numérico

**Setup verificado:** `L=2, S=2, I=2`, `π=(0,5; 0,5)`, Bernoulli `v(c1, c2) = ln c1 + ln c2`, dotações simétricas com agregado constante `ω̄ = ((5,5),(5,5))`.

**Cenário 1 (mercado completo):**
- Por simetria (agregado constante + risco apenas idiossincrático), AD implementa seguro pleno: `x^A* = x^B* = (2,5; 2,5)` em ambos estados. ✓
- Utilidade esperada: `E[U^A] = ln 2,5 + ln 2,5 = 2 ln 2,5 ≈ 1,833`. ✓ (`2 · 0,9163 = 1,8326`).

**Cenário 2 (1 ativo, autarquia aproximada):**
- `E[U^A] ≈ 0,5·(ln 4 + ln 1) + 0,5·(ln 1 + ln 4) = 0,5·ln 4 + 0,5·ln 4 = ln 4 ≈ 1,386`. ✓ (`ln 4 = 1,3863`).

**Verificação cruzada:** `1,833 > 1,386` confirma o gap de bem-estar `≈ 0,447` em utils, justificando a narrativa de que mercado completo melhora estritamente os agentes.

### 3.2 Seção 3 — Equity premium

**Cálculo crítico:** dado `σ_c = 0,036`, `σ_R = 0,17`, `ρ = 0,4`:
- `Cov(Δlnc, R^e) ≈ ρ · σ_c · σ_R = 0,4 · 0,036 · 0,17 = 0,002448`. ✓ (texto diz `≈ 0,00245`).
- `γ ≈ 0,06 / 0,002448 = 24,5`. ✓ (texto diz `≈ 24`).

**Hansen-Jagannathan bound:**
- `Sharpe = 0,06 / 0,17 ≈ 0,353`. ✓ (texto diz `≈ 0,35`).
- Para CRRA, `σ_m/E[m] ≈ γ · σ_c`; alcançar `0,35` exige `γ ≈ 0,35 / 0,036 ≈ 9,7`. ✓ (texto diz `γ ≈ 10`).

### 3.3 Seção 4 — Weitzman

**Setup:** `MAC(q) = a + bq + ε = 10 + 4q + ε`, `MB(q) = c - dq = 50 - q`. `b = 4, d = 1`.

- Ótimo médio: `q* = (c - a)/(b + d) = (50-10)/(4+1) = 8`. ✓
- Critério Weitzman: `b > d ⇒ Δ > 0 ⇒ prefira preço (Pigou)`. ✓
- Distrator (a) "MB mais íngreme": falso, `b=4 > d=1`. Distrator captura erro real (aluno confunde inclinações).
- Distrator (c) "comando-controle": dominado por preço/cota sob incerteza (não há motivo para preferi-lo).
- Distrator (d) "indiferente": só vale sob certeza ou `b=d`.

**S4Q2 (mercúrio):** MB íngreme acima de limiar de toxicidade ⇒ `d > b` ⇒ prefira cota. ✓

### 3.4 Seção 5 — VCG pivot

**Cálculo Clarke pivot** com `v^A=8, v^B=5, v^C=-10`, soma `= 3 > 0` ⇒ "sim".

- A pivotal? Sem A: `5 + (-10) = -5 < 0` ⇒ sim mudaria para não. A paga `|-5| = 5`. ✓
- B pivotal? Sem B: `8 + (-10) = -2 < 0` ⇒ sim mudaria. B paga `|-2| = 2`. ✓
- C pivotal? Sem C: `8 + 5 = 13 > 0` ⇒ continua sim. C não paga. ✓

**Total arrecadado:** `5 + 2 + 0 = 7`. Custo da ponte: 0 (assumido). **Resíduo positivo `+7`** que regulador não pode redistribuir sem destruir verdade dominante. ✓ Configura Green-Laffont 1979.

### 3.5 Seção 6 — Tipologia integrada

Tabela cross-aula consistente: incompletude (Aula 6), externalidade tecnológica (Aula 7), bem público (Aula 7), informação assimétrica (teaser Aula 8). Distinção fina entre incompletude vs. externalidade está correta (incompletude = falta de span; externalidade = variável já entra direto na utilidade alheia). ✓

S6Q1: poluição atmosférica = externalidade tecnológica. Distratores capturam confusões reais:
- (a) incompletude: aluno pode confundir; resposta: ar limpo não é "ativo financeiro" tradeable.
- (c) bem público puro: tentação razoável (ar é não-rival); mas **não-exclusividade não é o ponto** — fábrica não está provendo ar limpo, está consumindo-o como dump. É externalidade.
- (d) info assimétrica: tentação por "moradores não sabem" — mas o problema é falta de internalização, não falta de info.

Distratores plausíveis ✓.

---

## 4 — DOI status (verificação cruzada com SSOT do projeto)

| Item | DOI no arquivo | Veículo declarado | Status |
|---|---|---|---|
| Geanakoplos-Polemarchakis 1986 | (ref ao livro Cambridge UP, sem DOI) | "Essays in Honor of Kenneth J. Arrow" | OK — capítulo de livro, sem DOI canônico esperado |
| Magill-Quinzii 1996 | (livro MIT Press, sem DOI) | "Theory of Incomplete Markets, Vol. 1" | OK — livro |
| Hansen-Jagannathan 1991 | `10.1086/261749` | JPE 99(2): 225-262 | ✓ Canônico |
| Mehra-Prescott 1985 | `10.1016/0304-3932(85)90061-3` | JME 15(2): 145-161 | ✓ Canônico (paper está em JME, não Econometrica — texto está correto) |
| Lucas 1978 | `10.2307/1913837` | Econometrica 46(6): 1429-1445 | ✓ Canônico |
| Weitzman 1974 | `10.2307/2296698` | RES 41(4): 477-491 | ✓ Canônico |
| Vickrey 1961 | `10.1111/j.1540-6261.1961.tb02789.x` | JF 16(1): 8-37 | ✓ Canônico |
| Clarke 1971 | `10.1007/BF01726210` | Public Choice 11: 17-33 | ✓ Canônico |
| Groves 1973 | `10.2307/1914085` | Econometrica 41(4): 617-631 | ✓ Canônico |
| Green-Laffont 1979 | (ref ao livro North-Holland, sem DOI) | "Incentives in Public Decision-Making" | OK — livro |
| Roberts 1979 | (ref a capítulo, sem DOI) | em "Aggregation and Revelation of Preferences", ed. Laffont | OK — capítulo de livro |
| Gibbard-Satterthwaite 1973, 1975 | (citado sem DOI separado) | Econometrica 41(4): 587-601 (Gibbard) e JET 10: 187-217 (Satterthwaite) | OK — citação de teorema sem necessidade de DOI no contexto |

**Veredicto DOI:** todas as referências com DOI canônico verificadas; livros e capítulos sem DOI estão tratados sem inventar identificadores. **Nenhuma alucinação.** ✓

---

## 5 — Anti-padrão sweep

| Anti-padrão | Status | Observação |
|---|---|---|
| `\succsim` em vez de `\succeq` | ✓ N/A — pré-M4 não usa preferências formais como notação | — |
| `MRS` solto sem `\text{TMS}` | ✓ Limpo | Tabela §6 usa `\text{TMS}` corretamente |
| "Todas acima" / "Nenhuma das anteriores" | ✓ Ausente | Distratores são todos identificáveis |
| DOI inventado | ✓ Nenhum | Verificado item por item §4 |
| Distrator trivial | ✓ Ausente | Cada distrator captura erro pedagógico real |
| Decimal com ponto em valor numérico | ✓ Limpo | Todos os valores usam `\{,\}`; pontos remanescentes são em DOIs/anos/volumes |
| Delimitadores math `\(...\)` e `\[...\]` | ✓ Limpo | Convenção HTML respeitada |
| Placeholder/TODO | ✓ Ausente | Apenas atributos `placeholder=` em `<textarea>` (legítimo) |
| Parâmetros idênticos vs. aulas magistrais | ✓ Disjunto | Pré-M4 usa setup `L=2, S=2, I=2` que não aparece em aula 6 nem 7 magistral; equity premium puzzle e Weitzman são extensões cross-aula completamente novas |

---

## 6 — Não-duplicação cross-artefato

### 6.1 Pré-M4 ↔ Aula 6 (Arrow-Debreu II)

- Aula 6 magistral cobre Hart 1975 e Geanakoplos-Polemarchakis 1986 **conceitualmente** (sem cálculo numérico). Pré-M4 §2 traz **numérico minimalista** (2 agentes × 2 estados × 2 bens). ✓ Complementar.
- Aula 6 magistral cobre SDF como equação de Euler conceitualmente. Pré-M4 §3 traz **dados americanos + γ ≈ 24** + Hansen-Jagannathan bound. ✓ Extensão empírica.

### 6.2 Pré-M4 ↔ Aula 7 (Externalidades/BP)

- Aula 7 magistral cobre Pigou e cap **sob certeza**. Pré-M4 §4 traz **Weitzman 1974 sob incerteza** com cálculo. ✓ Extensão.
- Aula 7 magistral cobre VCG no nível básico (definição + pivot 3-agentes). Pré-M4 §5 aprofunda nos **limites operacionais** (orçamento não-balanceado, coligações, Roberts 1979). ✓ Extensão crítica.

### 6.3 Pré-M4 ↔ Monitoria-04 presencial

Monitoria-04 explicitamente declara (linha 31): **"Não refazer o cálculo [Hart-GP]"**. Linha 32: **"Não rederivar o bound [Hansen-Jagannathan]"**. Linha 33: Weitzman **"Inclui exemplo numérico canônico"** [no preparo, mas presencial usa-o como referência, não rederiva].

Monitoria-04 presencial:
- Bloco A: SDF operacional via NTN-B + Cenário 3 de Hart-GP **estendido** (com Lagrangiano explícito). **Pré-M4 não fez Cenário 3 — apenas anunciou que o Alberto pode fazer no quadro.** ✓ Sem duplicação.
- Bloco B: VCG aplicado a decisão pública municipal específica + análise de orçamento. **Pré-M4 §5 estabeleceu o limite teórico; M4 presencial aplica.** ✓ Complementar.

**Não-duplicação confirmada cross-artefato.** ✓

---

## 7 — Veredicto

A pré-monitoria 4 entra na próxima monitoria presencial (sábado 13/06) **calibrada em 10/10**:

- Álgebra correta, verificada item a item.
- Distratores capturam erros pedagógicos reais nas 8 micro-checkpoints (Hart, equity premium, Weitzman ×2, VCG, tipologia integrada).
- DOIs todos verificados ou marcados explicitamente como ref-a-livro sem identificador.
- Não-duplicação com aulas 6, 7 e monitoria 04 presencial.
- Calibre N&S 12e + Jehle-Reny adequado a MPE.
- Tom Referee 2 sem alfinetadas em demonstração; alfinetadas controladas em transições e rodapés.

**Aprovado para uso sem ressalvas.** O Alberto pode entrar no sábado 13/06 com confiança de que os 50 alunos chegaram com o modelo Hart-GP, equity premium, Weitzman e limites do VCG **na cabeça**, podendo Bloco A focar em SDF operacional + extensão do Cenário 3, e Bloco B aprofundar VCG aplicado à decisão pública municipal.

**Próximo passo:** verificar pré-M5 (auditoria gêmea desta sessão, arquivo `aula_9/auditoria-pre-monitoria-5.md`).
