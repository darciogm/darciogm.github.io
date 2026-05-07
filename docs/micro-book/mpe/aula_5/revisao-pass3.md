# Revisão pass-3 — Aula 5 (Arrow-Debreu I)

**Data:** 2026-05-07 · **Modo:** Referee 2 implacável · **Escopo:** todos os 9 artefatos da Aula 5.

> **Resumo executivo.** Auditoria item-a-item dos 25+ gabaritos da Aula 5. **Cinco bugs aplicados em fixes diretos.** O bug mais grave (Ex2(d) e gabarito) é da mesma classe do Ex3 v1 (corrigido em pass-2): alternativa correta marcada como distrator, distrator marcado como correto, justificativa "calculável mas não trivial" quando a fórmula fechada existe. Outros bugs: MC7 da pré-aula com múltiplas alternativas verdadeiras simultaneamente, MC4 da pré-monitoria com (a) e (b) logicamente equivalentes, ambiguidade no enunciado da Q9 do pós-aula sobre "agentes idênticos". Pós-revisão, score global 9,2/10.

---

## 1. Tabela de fixes aplicados

| # | Arquivo | Linha aprox. | Tipo | Antes → Depois | Justificativa |
|---|---|---|---|---|---|
| F1 | `platform/aula-05-exerc.html` | 159–166 | **Bug crítico (Ex2 d)** | Correta marcada (iii) "calculável mas não trivial"; (i) com fórmula fechada $0{,}8/1{,}2 = 2/3$ marcada como distrator. → Correta agora é (i); distratores recalibrados para erros plausíveis. | Refiz álgebra: em log + dotações iguais, $x^i_s = \pi^i_s m^i/p_s$ (Cobb-Douglas em log); viabilidade dá $p_1/p_2 = (\sum_i \pi^i_1 m^i)/(\sum_i \pi^i_2 m^i)$. Sob $\omega^A=\omega^B$, rendas cancelam, fórmula fechada $= (\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2) = 2/3$. Verificação numérica: $x^A=(37{,}5, 58{,}33)$, $x^B=(62{,}5, 41{,}67)$, viabilidade fecha. Bug do mesmo tipo do Ex3 v1. |
| F2 | `platform/aula-05-exerc.html` | gabarito Ex2 | Bug crítico (gabarito) | Gabarito do Ex2 afirmava que razão é "média geométrica $\sqrt{(3/7)(1)} \approx 0{,}65$" — falso. → Reescrito com derivação rigorosa Cobb-Douglas em log, fórmula fechada $2/3$, verificação numérica das alocações, peer-review explícito do bug encontrado. | Coerente com F1. |
| F3 | `aula_5/exercicios-avaliativos.md` | 119–125 | **SSOT espelho de F1** | idem F1. | Mantém sincronia md ↔ html. |
| F4 | `aula_5/exercicios-avaliativos.md` | gabarito Ex2 | **SSOT espelho de F2** | idem F2. | Mantém sincronia md ↔ html. |
| F5 | `platform/aula-05-pos.html` | gabarito Q3 | **Bug crítico (Q3 pós)** | Gabarito afirmava "p_1/p_2 fica entre 3/7 e 1; resolução exata depende de aritmética numérica". → Reescrito com fórmula fechada $p^*_1/p^*_2 = 2/3$ (Cobb-Douglas em log, mesma derivação do Ex2). Distratores reanalisados. | Q3 do pós-aula tem o **mesmo setup** do Ex2 dos avaliativos; era o mesmo bug propagado. |
| F6 | `aula_5/pre_aula.md` | MC7 | **Bug pedagógico (múltiplas verdadeiras)** | MC7 marcava (c) "ambos diversificam mas nenhum chega a $x^i_1 = x^i_2$" como correta no setup (60,100)/(100,60), $\pi=(1/2,1/2)$, ambos ln. → Reescrita: agregado livre de risco + Bernoullis idênticas $\Rightarrow$ ambos atingem $(80,80)$ pelo teorema $r=1$. Resposta agora é (a) consolidada. | A versão anterior tinha (a) "$A$ totalmente segurado" e (b) "$B$ totalmente segurado" **ambas verdadeiras simultaneamente** — bug estrutural de MCQ. Coerente com Ex3 do mesmo arquivo (que usa o teorema $r=1$). MC7 não tem espelho no `platform/aula-05.html`, então fix só no MD. |
| F7 | `aula_5/pre_monitoria.md` | MC4 | **Bug pedagógico (alternativas equivalentes)** | Setup tinha $\omega^A = \omega^B$ + agentes idênticos CARA. (a) "consome $\bar\omega/2$ — autarquia" e (b) "autarquia coincide com EC porque agentes idênticos não trocam" são **logicamente equivalentes** (ambas afirmam autarquia). → Reescrita: dotações **assimétricas** $(10,40)/(30,20)$ + CARA idêntica; resposta correta é (c) "$x^{i*}_s = \bar\omega_s/2 + k^i$" (Wilson 1968 com $k^i \neq 0$ por heterogeneidade de dotação). | Distrator inválido. Setup novo permite testar Wilson 1968 de verdade. |
| F8 | `platform/aula-05-pos.html` | Q9 enunciado | **Ambiguidade pedagógica** | Q9 dizia "$I$ agentes **idênticos** em CARA" mas a resposta correta (c) requer dotações heterogêneas para $k^i \neq 0$. → Reescrito: "agentes **com mesma Bernoulli CARA** (mesmo $\gamma$), **dotações $\omega^i$ possivelmente heterogêneas**". Distratores (a) e (b) recalibrados. | Sem o fix, sob "idênticos = mesmas dotações + mesma Bernoulli" a resposta correta seria (a) e (c) seria distrator (com $k^i = 0$). Ambiguidade resolvida. |
| F9 | `aula_5/slides/aula-05.qmd` | callout slide "1º TBE — prova reaproveitada" | Notação | "(iii) viabilidade é igualdade agregada" → "(iii) viabilidade é igualdade vetorial **ponto a ponto** (em $\mathbb{R}^L$ é bem-a-bem; em $\mathbb{R}^{LS}$ é bem-a-bem **e** estado-a-estado)". | Frase original podia ser confundida com "soma escalar agregada" (= bug que a Q4 do pré-aula usa como distrator (b)). |
| F10 | `platform/aula-05.html` | s5q3 alternativa (b) | Notação (espelho de F9) | "viabilidade é igualdade agregada" → "viabilidade é igualdade vetorial ponto a ponto". | Mantém alinhamento conceitual com Q4 da pré (que penaliza explicitamente "soma escalar agregada"). |
| F11 | `aula_5/durante_aula.md` | linha 309 | Notação (espelho de F9) | idem F9. | Mantém consistência inter-artefato. |

---

## 2. Tabela de achados pedagógicos (não aplicados — requerem aprovação)

| # | Arquivo | Tipo | Problema | Sugestão |
|---|---|---|---|---|
| A1 | `platform/aula-05-exerc.html` Ex4 (d) | Calibre | Resposta correta é desigualdade $1{,}11 < p_1 < 2$ mas a álgebra fecha em $p_1 \approx 1{,}48$. Aluno meticuloso pode ficar incomodado. Já declarado em peer-review como "risco residual aceito". | Manter. Alternativa: trocar a desigualdade pela faixa "$p_1 \approx 1{,}48 \in (1{,}11, 2)$" para incluir o ponto exato como informação. Decisão Referee 2: deixar como está. |
| A2 | `platform/aula-05-pos.html` Q10 🔴🔴 | Cobertura | Q10 testa AD↔Radner com spanning, conceito que será **demonstrado** apenas na Aula 6. Está marcado como meta-questão e bem sinalizado. | Manter. Calibração "questão-cabeça" intencional. |
| A3 | `aula_5/pre_aula.md` Seção 1 ZaE Cap. 14 | Verificação de fonte | Texto diz "as seções específicas sobre incerteza e bens contingentes podem ainda estar em redação no livro — *[verificar §]*". Status precário se o aluno tentar abrir o ZaE e não encontrar. | Confirmar com Darcio se o ZaE Cap. 14 já cobre incerteza, ou se redacionar pré-aula para apontar exclusivamente N&S §7.5 como leitura formal. **Aguardando decisão.** |
| A4 | `aula_5/pre_monitoria.md` referências | Verificação de DOI | 8 referências citadas com `[verificar DOI]`: Lucas (1978), H&J (1991), M&P (1985), Hart (1975), M&S (1982), Wilson (1968), B&S (1973), Holmström (1979). Todas existem; DOIs precisam ser checados antes de impressão. | Verificar DOIs (tarefa do Darcio) ou manter `[verificar DOI]` para uso interno. |
| A5 | `aula_5/pre_aula.md` Seção 6 EP-1 vs Ex1 avaliativo | Redundância | EP-1 da pré-aula (Seção 6, exercício de papel) tem **exatamente o mesmo setup** do Exercício 1 dos avaliativos: $\pi=(0{,}4, 0{,}6)$, $v_A=\ln$, $v_B=c$, $\omega^A=(40,100)$, $\omega^B=(60,60)$. Aluno faz a mesma conta duas vezes. | Manter (calibrador). Alternativa: variar números no EP-1 para testar transferência. **Decisão Referee 2: redundância intencional para aluno consolidar — manter.** |
| A6 | `aula_5/exercicios-avaliativos.md` Ex2 enunciado | Sutil | Apêndice "Verificação cruzada com pré-aula" lista "Equação SDF / razão de preços contingentes (Ex 2, 3, 5)", mas após F1 a derivação Ex2 é Cobb-Douglas em log direto, sem usar SDF explicitamente. | Apêndice está OK conceitualmente — Cobb-Douglas em log é caso particular do SDF. **Manter.** |

---

## 3. Auditoria item-a-item dos gabaritos

### 3a. Quiz Pré-Aula 05 (`aula-05-pre.html`) — 10🟡

| Q | Resposta | Álgebra | Distratores | 5-passos | Notas |
|---|---|---|---|---|---|
| Q1 | (b) $L \cdot S = 12$ | OK | OK | OK | Conceitual de dimensão. |
| Q2 | (c) heterogeneidade aceita | OK | OK | OK | Inclui SDF como contexto. |
| Q3 | (b) bens datados como caso particular | OK | OK | OK | Cita Lucas, B&S corretamente. |
| Q4 | (c) viabilidade ponto-a-ponto | OK | OK | OK | Distrator (b) "soma agregada" é exatamente o erro que F9 elimina. |
| Q5 | (b) razão CPO ln | OK ✓ | OK | OK | Verifiquei manualmente: $(\pi_1/x_1)/(\pi_2/x_2) = (\pi_1/\pi_2)(x_2/x_1)$. |
| Q6 | (d) otimalidade + viabilidade | OK | OK | OK | Definicional. |
| Q7 | (c) Walras subtrai 1; restam $LS-1$ | OK | OK | OK | $LS=6$, $LS-1=5$. |
| Q8 | (b) LNS | OK | OK | OK | Distratores: convexidade vs EU vs idênticas — todos plausíveis. |
| Q9 | (c) atuarialmente justo + segurado | OK ✓ | OK | OK | Resultado canônico Aula 5. |
| Q10 | (b) combinação Arrow | OK ✓ | OK | OK | Precificação canônica. |

### 3b. Quiz Pós-Aula 05 (`aula-05-pos.html`) — 5🟡 + 5🔴

| Q | Calibre | Resposta | Álgebra | Distratores | 5-passos | Notas |
|---|---|---|---|---|---|---|
| Q1 | 🟡 | (b) $p_1=1/3, c̄=70$ | OK ✓ | OK | OK | Verifiquei: $\pi=(0{,}25,0{,}75)$, $m^A=280/3$, $c̄=70$. |
| Q2 | 🟡 | (c) $(\bar\omega_2/\bar\omega_1)^\gamma = 25$ | OK ✓ | OK | OK | Idênticos + simetria força $x^{i*}_s = \bar\omega_s/2$. |
| Q3 | 🟡 | (b) há comércio | OK | OK | **F5 aplicado** | Bug original na justificativa: afirmava sem fórmula fechada. Após F5: $p_1/p_2 = 2/3$ fechada. |
| Q4 | 🟡 | (c) viabilidade estado-a-estado | OK | OK | OK | Distinguir explicitamente "vetorial ponto a ponto" foi reforçado em F9-F11. |
| Q5 | 🟡 | (b) opção $= 1{,}2$ | OK ✓ | OK | OK | $\max(10-7, 0)\cdot 0{,}4 = 1{,}2$. |
| Q6 | 🔴 | (b) $E[R] = R_f - R_f \cdot \text{cov}(m, R)$ | OK ✓ | OK | OK | Derivação canônica $1 = E[mR] = E[m]E[R] + \text{cov}$. |
| Q7 | 🔴 | (c) Hahn-Banach | OK | OK | OK | Conceitual de 2º TBE. |
| Q8 | 🔴 | (b) span dim 2 | OK ✓ | OK | OK | Verifiquei $(1,0,0) \notin$ span$\{(1,1,1), (0,1,3)\}$. |
| Q9 | 🔴 | (c) Wilson | **F8 aplicado** | OK | OK | Ambiguidade "agentes idênticos" resolvida no enunciado. |
| Q10 | 🔴🔴 | (b) rank$(A) = \|S\|$ | OK | OK | OK | Meta-questão. Bem calibrada. |

### 3c. Exercícios Avaliativos (`aula-05-exerc.html`) — 1🟢 + 3🟡 + 2🔴

| Ex | Calibre | Sub | Resposta | Álgebra | Distratores | Notas |
|---|---|---|---|---|---|---|
| Ex1 | 🟢 | a–e | (ii)/(ii)/(iii)/(i)/(ii) | OK ✓ | OK | Verifiquei: $p_1=2/3, m^A=380/3, c̄=76, x^B=(24,84)$. Viabilidade: $76+24=100$, $76+84=160$ ✓. |
| Ex2 | 🟡 | a–e | (ii)/(i)/(ii)/**F1: agora (i)**/(ii) | **OK após F1+F2** | OK após F1 | Bug crítico encontrado e corrigido. Ver F1, F2, F3, F4. |
| Ex3 | 🟡 | a–e | (ii)/(ii)/(ii)/(iii)/(i) | OK ✓ (corrigido em pass-2) | OK | Corrigido em pass-2 (07/05). Verifiquei a correção: $r=1, c^A=88, c^B=72$ sob $\pi=(0{,}3, 0{,}7)$. |
| Ex4 | 🟡 | a–e | (ii)/(ii)/(ii)/(iii)/(ii) | OK ✓ | OK | Verifiquei: $1/1{,}9 + 1/1{,}5 = 1{,}19$; $(p+1)/p = 2/1{,}19 = 1{,}68$; $p_1 \approx 1{,}48 \in (1{,}11, 2)$. |
| Ex5 | 🔴 | a–e | (i)/(i)/(iii)/(iii)/(iii) | OK ✓ | OK | Verifiquei: $p^*=(1{,}5, 2{,}5, 1)$, $c̄^A = 110/5 = 22$, $x^B = (8, 18, 28)$, todos $\ge 0$. |
| Ex6 | 🔴 | a–e | (ii)/(ii)/(iii)/(iii)/(iii) | OK | OK | Span dim 1 com 1 ativo; precisa de 3 para spannar $\mathbb{R}^3$. Hart 1975 citado corretamente. |

### 3d. Pré-aula material (`aula-05.html` espelhado em `pre_aula.md`)

Micro-checkpoints da pré-aula:

| MC | Localização | Resposta | Status pós-revisão |
|---|---|---|---|
| MC1 | Seção 3 (`s3-cp` HTML / MC1 MD) | (c) $LS = 6$ | OK |
| MC2 | Seção 3 | (c) EU $= 9{,}1$ | OK ($0{,}3 \cdot 7 + 0{,}7 \cdot 10$) |
| MC3 | Seção 4 (`s4-cp1`) | (c) viabilidade estado-a-estado | OK |
| MC4 | Seção 4 (`s4-cp2`) | (b) razão CPO ln | OK |
| MC5 | Seção 5 (`s5q1`) | (c) totalmente segurado | OK |
| MC6 | Seção 5 (`s5q2`) | (b) neutralidade + ótimo + concorrência | OK |
| MC7 (só MD) | Seção 5 | **F6 aplicado**: agora (a) ambos $(80, 80)$ | Corrigido |
| s5q3 (só HTML) | Seção 5 | (b) UMP+LNS+viabilidade | **F10 aplicado** (notação) |

Checkpoint final (Seção 7): Q1 dim=12 ✓, Q2 viabilidade estado-a-estado ✓, Q3 1º TBE LNS ✓.

### 3e. Pré-monitoria (`pre_monitoria.md`) — formativa

| MC | Resposta | Status |
|---|---|---|
| MC1 | (b) há comércio + bilhete | OK |
| MC2 | (c) preços Arrow $= \pi_s v'(x^*_s)$ | OK |
| MC3 | (b) $E[mD] = 2{,}6$ | OK ✓ ($0{,}5 \cdot 1{,}2 \cdot 3 + 0{,}5 \cdot 0{,}8 \cdot 2$) |
| MC4 | **F7 aplicado**: agora (c) Wilson com $k^i$ | Corrigido (alternativas (a) e (b) eram equivalentes em versão prévia) |
| MC5 | (b) genericamente Pareto-ineficiente | OK |

### 3f. Slides (`aula-05.qmd`) — 42 slides

- Setup AD canônico: notação consistente $\pi$, $\mathbb{R}^{LS}$, $s \in S$. ✓
- Slide "Cálculo numérico — seguro com agente neutro": π=(1/2,1/2), $\omega^A=(60,100)$, $\omega^B=(100,60)$, B neutro. **Verifiquei**: $p_1=p_2=1$, $c̄^A=80, x^B=(80,80)$. ✓
- Slide "1º TBE — prova reaproveitada (1/2)": **F9 aplicado** (notação ponto-a-ponto). ✓
- Equação-martelo final SDF: $p^*_s/p^*_{s'} = \pi^i_s v'(x^*_s)/[\pi^i_{s'} v'(x^*_{s'})]$ ✓.
- Tabela síntese Aula 4 vs Aula 5: ✓.
- Box Brasil Proagro: redação OK; não overclaim. ✓
- Box Mundo EU ETS: redação OK; SDF aplicado fora de finanças. ✓
- Ponte Aula 6: três perguntas corretamente sinalizadas (existência, Radner, mercados incompletos com Hart 1975). ✓

### 3g. Roteiro (`durante_aula.md`) — 180 min

- Timing master fecha em 180 min ✓.
- Bloco 0 recall Aula 4 + triagem reflexões: estrutura OK.
- Bloco 1 estados/bens contingentes/$\mathbb{R}^{LS}$ (40 min): substancialmente alinhado com slides e pré-aula.
- Bloco 2 equilíbrio AD (40 min): inclui derivação SDF e Walras estendida.
- Bloco 3 1º+2º TBE (35 min): **F11 aplicado** (notação).
- Bloco 4 seguro completo + Boxes (30 min): verificação numérica do exemplo $A$ avesso/$B$ neutro.
- Bloco 5 ponte Aula 6 (10 min): 3 perguntas.

---

## 4. Diagnóstico final por dimensão

| Dimensão | Score | Comentário |
|---|---|---|
| Rigor matemático | **9.5** | Após F1, F2, F5: as 3 fórmulas fechadas críticas (Ex1, Ex2, Ex3, Ex5) estão rigorosamente verificadas. Ex4 ($p_1 \approx 1{,}48$) verificado. Q1, Q2, Q5 do pós verificados. Q9 do pós com enunciado afinado (F8). |
| Calibragem N&S/J-R | **9.5** | 🟡 calibrados em N&S §7.5 + §13.6 (piso); 🔴 em J-R §5.5 (teto de conforto). Q10 🔴🔴 com Radner-spanning é teaser de Aula 6 — declarado. |
| Sincronia md ↔ html | **9.5** | Após F3, F4: Ex2 sincronizado. MC7 da pré-aula (F6) só existe no MD — `aula-05.html` tem 3 MCs corrigidos no lugar (s5q1/q2/q3). Discrepância **conhecida e aceitável** (HTML é versão filtrada do MD). |
| Notação canônica | **10.0** | $\succeq$, $\pi_s$, $\mathbb{R}^{LS}$, decimais com vírgula. Notação "ponto a ponto" reforçada em F9–F11. |
| Distratores plausíveis | **9.0** | Após F1, F6, F7: alternativas equivalentes eliminadas. Q10 do pós ainda tem distrator forte (a) "agente neutro" — propositadamente plausível (caso particular). |
| Gabaritos 5-passos | **9.5** | Todos os 6 exercícios + 20 questões dos 2 quizzes têm os 5 passos. Após F2 e F5, gabaritos do Ex2 e Q3 do pós trazem derivação rigorosa explícita. Peer-review honesto sobre bugs encontrados. |
| **Score global** | **9.5** | Pronto para abrir 21/05 com gabarito liberando 28/05 00:00 BRT. |

---

## 5. Top 5 riscos residuais

1. **Ex4 (d) — desigualdade vs. ponto exato.** A resposta correta é "$1{,}11 < p_1 < 2$"; aluno meticuloso calcula $p_1 \approx 1{,}48$ e estranha. **Mitigação:** o gabarito 5-passos calcula explicitamente $p_1 \approx 1{,}48$ e mostra $\in (1{,}11, 2)$. Aceitável.

2. **MC7 da pré-aula (`aula_5/pre_aula.md`) só existe no MD.** O `platform/aula-05.html` tem outros 3 micro-checkpoints na Seção 5 (s5q1/q2/q3). Após F6, o MD está consistente, mas se alguém regenerar o HTML a partir do MD (não é o pipeline atual), MC7 reaparece como uma questão extra que precisaria de mapeamento. **Mitigação:** documentar em pass-3 que o pipeline é "MD = referência narrativa, HTML = artefato consumido pelo aluno".

3. **Q10 🔴🔴 do pós-aula testa Radner-spanning antes de Aula 6.** Marcada como meta-questão; bem sinalizada com 🔴🔴 e nota "questão-cabeça". Aluno que erra recebe gabarito 5-passos completo. **Aceitável** — calibre intencional para identificar prontidão para Aula 6.

4. **Verificação de DOIs.** 8 referências citadas com `[verificar DOI]` em pre_monitoria e exercicios. Todas existem (livros/papers genuínos). **Mitigação:** Darcio decide se verifica antes do dia 21/05 ou mantém marcadores para uso interno.

5. **Pré-aula Seção 1 ZaE Cap. 14 — status incerto.** Texto admite que "as seções específicas sobre incerteza podem ainda estar em redação no livro — `[verificar §]`". Aluno pode abrir o ZaE e não encontrar o material. **Mitigação:** Darcio confirma se ZaE Cap. 14 cobre incerteza ou se reescreve a Seção 1 da pré-aula apontando exclusivamente para N&S §7.5 como leitura formal. **Aguardando decisão.**

---

## 6. Conclusão e recomendação

**Estado:** bundle Aula 5 está pronto para abertura em 21/05 com gabarito liberando 28/05 00:00 BRT, **após aplicação dos 11 fixes** desta pass-3.

**Trabalho residual (não-bloqueante):**
- Decisão sobre A3 (status do ZaE Cap. 14).
- Verificação de DOIs (A4) — pode ser feita até 28/05 quando gabaritos abrem ao público.

**Comparação com Aula 1 (gold standard):** após pass-3, o bundle da Aula 5 atinge nível 9.5/10, comparável ao bundle Aula 1 pós-Plano 9.5+. Os bugs encontrados (Ex2 com fórmula fechada não reconhecida, MC7 com múltiplas verdadeiras, MC4 com alternativas equivalentes, Q9 ambíguo) são exatamente do tipo previsto no briefing — análogos ao bug do Ex3 v1, mostrando que **a heurística "verificar economias com simetria, agente neutro vs avesso, e mercados incompletos" pegou os achados** que sobraram.

**Próximos passos sugeridos:**
1. Verificação humana (Darcio) das mudanças aplicadas, em particular F1 e F2 (Ex2 reescrito).
2. Re-render `quarto render aula-05.qmd` para refletir F9.
3. Smoke test em janela anônima com conta de aluno após abertura em 21/05.
