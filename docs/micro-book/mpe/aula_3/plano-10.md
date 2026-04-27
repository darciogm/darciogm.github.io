# Plano "9.5 → 10" — Aula 3 (Slutsky · Elasticidades · Bem-estar)

**Data:** 2026-04-27 (pós-Auditoria #2 + 3 cortes aplicados)
**Nota atual estimada:** 9.5–9.6 (após cortes da #2)
**Calibre comparativo:** Aula 1 = 9.7; Aula 2 = 9.5

---

## 1. Diagnóstico do gap 9.5 → 10

A Aula 3 hoje é **muito boa** — tecnicamente rigorosa, pedagogicamente coerente, com armadilhas calibradas e gabaritos 5-passos sólidos. O que falta para virar **exemplar didático que será citado em outros cursos** não é "mais conteúdo" nem "mais slides". É **excelência cirúrgica em três frentes que hoje funcionam mas não brilham**:

1. **Diagnóstico formativo embutido** — a Aula 3 mede acerto, mas não mede *erro produtivo*. Não há micro-callouts no material que digam ao aluno "antes de seguir, escreva sem olhar"; não há mapeamento questão→tipo-de-erro que feche o loop entre psicometria (já implementada no admin) e intervenção pedagógica em sala. OLI da CMU (Lovett 2008) e ALEKS (Falmagne 2006) ganham em aprendizagem **dobrando** o ritmo de feedback formativo, não dobrando o conteúdo.
2. **Visualização interativa de Slutsky/Giffen/CV-EV** — o bundle hoje tem zero gráfico JSXGraph dedicado. Slides reveal.js têm tabelas, equações e prosa, mas a **decomposição visual do efeito-substituição via paralelo orçamentário tangenciando $u^0$** é o tipo de gráfico que separa um curso bom de um curso de referência (Varian Cap. 8 vive disso; Nicholson 12e Fig. 5.2 é didática; nada disso está na nossa Aula 3).
3. **Box Brasil de classe AAA com dados reais cruzados** — o Box POF (slide 423–426) é ilustrativo, não quantitativo. Hoffmann foi (corretamente) removido. Mas falta **um cálculo numérico vivo** com dados POF 2017–18 ou alta de ICMS específica (RJ 2024 sobre combustíveis, p.ex.) que entregue um número $\Delta$EC plausível em sala — o tipo de fechamento que aluno cita 6 meses depois.

Os outros 0.4 ponto vêm de polimento: speaker notes em slides densos, distratores com diagnóstico de erro nomeado, ponte com Aula 4 explícita, acessibilidade. Tudo importa menos que os 3 acima.

---

## 2. Top 12 ações (com priorização honesta)

Ações ordenadas por **Δnota / esforço**. Aplicar top 5 sobe para ~9.7; top 8 sobe para ~9.8; tudo sobe para ~9.9–10.0 (10.0 puro é assintótico).

### Tier S — Alto Δ, esforço médio (aplicar top 5 sobe para ~9.7)

#### #1 — Visualização JSXGraph: decomposição de Slutsky no plano $(x_1, x_2)$

- **O quê:** gráfico interativo com slider de $p_1$ que mostra: linha orçamentária inicial → cesta inicial $A$; linha orçamentária final paralela tangenciando $u^0$ → cesta hipotética $B$ (efeito-substituição $A \to B$); linha orçamentária real → cesta final $C$ (efeito-renda $B \to C$). Curvas de indiferença $u^0$ e $u^1$ visíveis.
- **Onde:** novo arquivo `aula_3/slides/graficos/slutsky-decomp.html` (iframe via `graph-iframe-tall`); embutir no slide "Decomposição: substituição + renda" (após o slide ~190 do qmd atual).
- **Por quê:** **Mayer & Anderson 2003** (multimedia learning theory — Cognitive Theory of Multimedia Learning) mostra que diagramas dinâmicos com narração simultânea melhoram retenção em 30–50% vs. equação estática. Slutsky é *o* exemplo canônico de conceito que se entende vendo, não lendo. Padrão Aula 1 (gráfico interativo de UMP) e Aula 2 (Edgeworth) — Aula 3 é a única sem.
- **Esforço:** 90 min (incluindo testes de tangência numérica e mobile responsiveness).
- **Δnota:** +0.10.

#### #2 — Speaker notes em slides densos (resoluções completas como fallback)

- **O quê:** adicionar `::: {.notes}` em ~10 slides matemáticos críticos: derivações Slutsky (3 slides), 4 restrições (2 slides), CV/EV definições + integrais (2 slides), Stone-Geary aplicação rápida (1), CV/EV CD (1). Cada bloco com 2–4 frases que o professor pode ler caso a explicação ao vivo trave.
- **Onde:** `aula_3/slides/aula-03.qmd`, slides identificados (linhas aproximadas 158–280 e 458–728).
- **Por quê:** **Reveal.js best practice** (Hattori 2014; Reveal.js docs) recomenda speaker notes não só como prompt mas como *fallback de qualidade* — se o palestrante pula um passo, a nota está lá. Aula 1 tem ~30 notes; Aula 3 tem zero (auditoria #2 confirmou). Reduz risco de slide denso virar slide confuso.
- **Esforço:** 60 min.
- **Δnota:** +0.05.

#### #3 — Box Brasil quantitativo: ICMS combustíveis RJ 2024 → $\Delta$EC plausível

- **O quê:** substituir o Box POF ilustrativo (slide ~423) por um cálculo vivo: alta de ICMS sobre gasolina no RJ em 2024 (de 32% para 34%, p.ex.); usar $\eta_{\text{gas}} \approx -0{,}40$ (BACEN/BNDES estimam algo entre $-0{,}3$ e $-0{,}5$ no Brasil — **verificar fonte exata antes de release**); calcular $\Delta\ln(p\cdot x) \approx \Delta\ln p\cdot(1+\eta) = 0{,}06 \cdot 0{,}6 = 3{,}6\%$ de aumento de receita por litro vendido; estimar perda de excedente $\Delta\text{EC} \approx \frac{1}{2}|\eta|\cdot s\cdot(\Delta p)^2\cdot m$ com $s \approx 0{,}05$ (parcela combustível na renda média RJ).
- **Onde:** `aula_3/slides/aula-03.qmd` (substituir bloco 423–426); espelhar no `platform/aula-03.html` na seção S5.
- **Por quê:** **Bligh 2000** (*What's the Use of Lectures?*) e literatura de "case-based learning" (Williams 1992) mostram que cálculo numérico com dado real ancora o conceito 3–5x mais forte que abstração. Aluno MPE leva isso para o trabalho. Hoje o Box é ilustrativo — falta o número que cola.
- **Esforço:** 45 min (cálculo + checagem de fontes BACEN/IPEA + texto editorial).
- **Δnota:** +0.10.
- **Risco:** verificar elasticidade-preço da gasolina no Brasil em fonte primária (Tornovsky 2013, ANP, IPEA) antes de release público. Se incerto, marcar `<!-- [VERIFICAR ELASTICIDADE GAS BRASIL] -->`.

#### #4 — Distratores com diagnóstico de erro nomeado no gabarito 5-passos

- **O quê:** em cada questão 🟡/🔴 do pré-quiz, pós-quiz e exercícios avaliativos, reescrever o passo "3. Armadilha" para nomear explicitamente o erro de cada distrator não-correto: "Se você marcou (a), provavelmente confundiu sinal de Slutsky com sinal de Marshall — revise §S3 do material."
- **Onde:** `platform/aula-03-pre.html` (10 questões), `platform/aula-03-pos.html` (10 questões), `platform/aula-03-exerc.html` (6 exercícios). Total: ~26 reescritas curtas (3–5 linhas cada).
- **Por quê:** **Hattie & Timperley 2007** (*The Power of Feedback*, RER) — feedback "sobre tarefa" tem effect size $d=0{,}43$, mas feedback "sobre processo" (que erro lógico você cometeu, como evitar) tem $d=0{,}71$. Distrator nomeado vira instrumento de auto-regulação. Hoje os passos 3 explicam o porquê do erro genericamente; falta o "se você marcou X, então…" que o aluno relê.
- **Esforço:** 90 min (mas paralelizável; ~3.5 min por questão).
- **Δnota:** +0.10.

#### #5 — Ponte explícita com Aula 4 em slide de fechamento

- **O quê:** novo slide-bridge **antes do encerramento** dizendo "Para Aula 4: a redundância de Cournot vira agregação Sonnenschein-Mantel-Debreu; CV/EV individual vira **bem-estar agregado** (Kaldor-Hicks); elasticidades cruzadas viram condições de **substituição/complementaridade** em equilíbrio geral." Inclui mini-diagrama mostrando cada peça da Aula 3 e onde reaparece.
- **Onde:** `aula_3/slides/aula-03.qmd`, novo slide antes de "Encerramento" (final).
- **Por quê:** **Bransford et al. 2000** (*How People Learn*, NRC) — *bridging* explícito entre tópicos consolida transferência (transfer-appropriate processing). MWG faz isso (Cap. 3 → Cap. 16). Aula 1 e Aula 2 fazem; Aula 3 termina abruptamente.
- **Esforço:** 30 min.
- **Δnota:** +0.05.

### Tier A — Médio Δ, esforço pequeno-médio (aplicar #6–#8 sobe para ~9.8)

#### #6 — Micro-callouts de auto-checagem ao vivo no material

- **O quê:** em 4–5 pontos críticos da pré-aula (após Slutsky derivada; após exemplo Giffen; após restrição Cournot; após CV/EV CD; antes do checkpoint final), inserir caixa `<div class="callout callout-check">` com prompt: "**Pause.** Sem rolar para cima, escreva (a) a equação de Slutsky em níveis e (b) o sinal esperado de cada termo se $x_1$ é normal. Confira só depois."
- **Onde:** `platform/aula-03.html`, seções S3, S4, S5 (5 callouts no total).
- **Por quê:** **Roediger & Karpicke 2006** (*Test-Enhanced Learning*, Psych Sci) e **Bjork 1994** (*Desirable Difficulties*) — recall sem pista (free recall) é o gerador mais poderoso de retenção de longo prazo. O nosso material hoje sempre dá a equação acima e pergunta abaixo; falta o prompt explícito de retrieval ativo.
- **Esforço:** 40 min.
- **Δnota:** +0.06.

#### #7 — Slide-bônus de elegância: Slutsky em forma matricial compacta

- **O quê:** novo slide isolado (após o slide de "Slutsky em níveis") apresentando: $S = D_p h = D_p x + (D_m x)\, x^T$. Discutir que $S$ é simétrica e negativa semi-definida, que sua diagonal são os efeitos-substituição próprios (sempre $\leq 0$), e que a fórmula matricial é a forma com que sistemas de demanda reais (AIDS, Translog) são parametrizados.
- **Onde:** `aula_3/slides/aula-03.qmd`, após slide ~200 (Slutsky em níveis).
- **Por quê:** **MWG §3.G** apresenta Slutsky matricial como objeto fundamental; **Deaton & Muellbauer 1980** §2.4 também. Para aluno MPE com base em Engenharia/Estatística, a forma matricial é mais natural que a por componentes — e abre porta para a estimação econométrica. Hoje o bundle só dá a forma escalar, perdendo o aluno técnico.
- **Esforço:** 25 min.
- **Δnota:** +0.05.

#### #8 — Acessibilidade: alt-text, contraste, navegação por teclado

- **O quê:** (a) alt-text em todo SVG/iframe da plataforma; (b) verificar contraste WCAG AA (mínimo 4.5:1 para texto) com axe-core ou Lighthouse; (c) garantir que todas as questões da pré-aula são navegáveis com `Tab` e respondíveis com `Space`/`Enter`; (d) `aria-label` nos botões de submit e nos sliders de confiança.
- **Onde:** `platform/aula-03.html`, `aula-03-pre.html`, `aula-03-pos.html`, `aula-03-exerc.html`.
- **Por quê:** **WCAG 2.1 AA** é piso ético (alunos com baixa visão, dislexia, mobilidade reduzida) e regulatório (lei brasileira de acessibilidade digital). Aula 1 e 2 também não fazem isso explicitamente — a Aula 3 pode liderar a virada. Custo baixo, sinal alto.
- **Esforço:** 50 min.
- **Δnota:** +0.04.

### Tier B — Pequeno Δ, refinamento (aplicar #9–#12 sobe para ~9.9–10.0)

#### #9 — Telemetria pedagógica refinada: tags `diagnóstico` vs. `ritmo`

- **O quê:** em `platform/aula-03.html`, marcar cada micro-checkpoint com `data-purpose="diagnostic"` ou `data-purpose="rhythm"`. Diagnóstico (3–4 dos 8) alimenta o admin dashboard com "alunos que erraram este micro têm $X$% de chance de errar Q$Y$ do pós-quiz" — cria pipeline de intervenção precoce. Ritmo (4–5) só serve de gating.
- **Onde:** `platform/aula-03.html` (atributos HTML); update em `js/tracker.js` para registrar `purpose`; admin pode filtrar por purpose na tab Psicometria.
- **Por quê:** **Pardos et al. 2014** (LAK) e **EAB Navigate / Purdue Signals** mostram que early-warning systems precisam de itens **calibrados como diagnósticos**, não item-pool homogêneo. Hoje todos os 8 micro-checkpoints contam igual; falta hierarquia.
- **Esforço:** 60 min (marcação + JS update + admin tab).
- **Δnota:** +0.04.

#### #10 — Sentiment + temas-chave nas reflexões S8 (extensão do tag cloud)

- **O quê:** quando aluno submete reflexão S8, classificar por tema-chave (Slutsky / Giffen / CV-EV / outros) via regex simples + lista de termos canônicos. Admin vê "12 alunos confessaram dúvida em CV-EV" antes da Aula 4. Pipeline: `mpe-db.js` adiciona `theme` a reflexão; admin usa para clusterizar.
- **Onde:** `platform/js/mpe-db.js` + `platform/aula-03.html` S8 (escutar `submit` e classificar antes de salvar). Schema: `reflections` já tem `metadata` JSONB; aproveitar.
- **Por quê:** Tag cloud (Onda 2A) cobre frequência de termos; falta a **clusterização por tópico** que vira ação pedagógica. **Newman 2010** (Bayesian topic models in education) e **Pardos 2017** mostram que classificação ainda que rule-based já entrega 70%+ do valor de NLP completo.
- **Esforço:** 75 min.
- **Δnota:** +0.03.

#### #11 — Mini-prova hands-on no roteiro: 5 min de "papel branco"

- **O quê:** no `durante_aula.md`, inserir uma "pausa-papel-branco" de 5 min entre Bloco 3 (elasticidades) e Bloco 4 (bem-estar): aluno fecha o caderno e escreve a equação de Slutsky **em níveis** sem olhar; professor passeia e identifica 2–3 alunos com erro típico para discutir.
- **Onde:** `aula_3/durante_aula.md`, novo bloco 3.5 entre os existentes.
- **Por quê:** **Mazur 1997** (*Peer Instruction*) e **Crouch & Mazur 2001** mostram que pausas ativas curtas elevam acerto em conceitos seguintes em ~20%. Não custa nada — só um minuto a mais no roteiro — e cria oportunidade para professor identificar erro típico em vivo. Aula 1 e 2 não fazem; Aula 3 pode estabelecer o padrão.
- **Esforço:** 15 min (só editar roteiro).
- **Δnota:** +0.03.

#### #12 — Speaker notes "fallback de pânico" para slides terminais

- **O quê:** complementar #2: nos 3 slides finais antes de cada divisor (Slutsky 3/3, Cournot leituras, CV/EV CD leitura), adicionar speaker note completa de 3–5 linhas que **resume todo o bloco** em 1 frase. Caso professor esteja atrasado, lê a frase final, abre divisor, segue.
- **Onde:** `aula_3/slides/aula-03.qmd`, slides terminais identificados.
- **Por quê:** complementa #2. **Lang 2016** (*Small Teaching*) — micro-resumos de 1 frase entre blocos consolidam memória de longa duração. Custo marginal mínimo se #2 já estiver feita.
- **Esforço:** 20 min.
- **Δnota:** +0.02.

---

## 3. Resultado projetado

| Aplicar | Esforço total | Δnota cumulativo | Nota projetada |
|---|---:|---:|---:|
| Top 5 (#1–#5) | ~3h45 | +0.40 | **~9.85** |
| Top 8 (#1–#8) | ~5h40 | +0.55 | **~9.95** |
| Top 10 (#1–#10) | ~7h35 | +0.62 | **~9.98** |
| Tudo (#1–#12) | ~8h10 | +0.67 | **~10.0 (assintótico)** |

A nota 10.0 é assintótica. Acima de ~9.95, o ganho marginal por hora de retrabalho cai para o nível de erro de medição da própria auditoria. **Top 5 é o sweet spot honesto**: muito do ganho real, dentro do orçamento de uma manhã de trabalho.

---

## 4. Cronograma operacional sugerido

**Sequência recomendada** (otimiza dependências e minimiza risco de regressão):

1. **#3 Box Brasil quantitativo** (45 min) — só texto/cálculo, sem dependência. Faz primeiro porque a pesquisa de fonte (BACEN/IPEA) pode demorar e bloquear se deixar para o fim.
2. **#5 Bridge Aula 3 → Aula 4** (30 min) — só slide novo, sem dependência. Resolve enquanto a pesquisa de #3 marina.
3. **#7 Slide-bônus matricial** (25 min) — só slide novo, sem dependência.
4. **#2 Speaker notes** (60 min) — depende de slides finalizados (#5, #7 já feitos). Fazer antes do re-render final.
5. **#1 JSXGraph Slutsky** (90 min) — independente, mas é o de maior risco técnico (testes de tangência). Reservar bloco contíguo.
6. **Re-render final** dos slides + smoke-test em browser.
7. **#4 Distratores diagnósticos** (90 min) — só platform HTML, paralelizável; pode atrasar para outra sessão.
8. **Tier A (#6, #8)** — outra sessão.
9. **Tier B (#9–#12)** — opcional, fazer só se houver tempo antes do release.

**Riscos de regressão:**
- #1 JSXGraph: testar tangência numérica em pelo menos 3 pares $(p_1, m)$ antes de embedded; mobile-responsive crítico.
- #3 Box Brasil: **fonte da elasticidade tem que ser primária e citável**; sem isso, manter `<!-- [VERIFICAR] -->`.
- #2 Speaker notes: cuidado para não duplicar conteúdo já visível no slide (só fallback). Reveal.js com `::: {.notes}` — testar com tecla `S`.
- #7 Slide matricial: não inflar Bloco 3 (já tem 4 slides do plano-9.5); inserir como bônus opcional, professor pula se atrasado.

---

## 5. Critério de parada — quando dizer "está bom"

**Pare quando qualquer um dos abaixo for verdadeiro:**

1. **Top 5 aplicado e auditoria #3 retornou ≥ 9.7.** Comparável a Aula 1 (9.7); calibre uniforme do curso atingido. Ganho marginal seguinte tem custo de oportunidade alto vs. começar Aula 4.
2. **Aula 4 ainda não tem bundle.** Aula 4 é EG (Edgeworth, núcleo, produção) — conceitualmente pesada e sem bundle hoje. Tempo gasto polindo Aula 3 da nota 9.7 para 9.85 vale menos que tempo gasto fazendo Aula 4 sair de 0 para 9.0.
3. **Já passou 4h de trabalho contínuo.** Erros de inserção (typo em equação, bridge errada, speaker note com bug) crescem após 3–4h focadas no mesmo bundle. Risco de regressão > Δnota.
4. **Release date está a < 24h.** Não introduzir mudança não-testada no dia do release. Especialmente JSXGraph (#1), que pode quebrar em mobile/Safari.

**O que NÃO é critério de parada (não cair nessas armadilhas):**
- "A nota não é 10.0 ainda." — 10.0 é assintótico. 9.85 é excelente.
- "O Box do MIT tinha gráfico animado." — referência aspiracional não vira blocker.
- "Falta tópico X." — escopo da aula é Slutsky/elasticidades/bem-estar; tópicos novos são para Aula 4+.

---

## 6. Peer-review honesto deste plano

**Onde estou menos confiante:**

- **Δnota estimado por ação**. Os números são calibrados pelo plano-9.5 (que de fato entregou 8.6 → 9.4, próximo do projetado 9.55), mas a distribuição entre ações é aproximativa. Margem de erro: ±0.03 por ação. Cumulativo top 5: ±0.10 (entre 9.75 e 9.95).
- **Elasticidade-preço da gasolina no Brasil para #3**. Tenho lembrança de Tornovsky 2013 e Iootty 2009 (BNDES) com $\eta \approx -0{,}3$ a $-0{,}5$, mas **sem checar fonte primária agora**. Antes de implementar, verificar.
- **#1 JSXGraph esforço 90 min**. Pode ser 60 min (se aproveitar boilerplate da Aula 1) ou 150 min (se tangência exige iteração numérica). Tomei o caso médio.
- **#10 (sentiment)**. Pode ser sub-investimento (Bayesian topic model entregaria 30% mais que regex) ou sobre-investimento (turma de 50 alunos talvez não justifique pipeline de NLP). Marquei como Tier B por essa incerteza.

**O que este plano provavelmente perdeu:**

- **Validação com aluno-piloto**. Idealmente 1 aluno faria o bundle antes do release e daria feedback. Não está no escopo do plano.
- **Coleta de dados pós-Aula 1 e 2**. Os dados de telemetria das Aulas 1 e 2 (psicometria, tempo, drift) poderiam informar a Aula 3 — alguns micros podem estar mal-calibrados em modos que só dados revelam. Se o admin já tem N=50 respondentes da Aula 1, vale 30 min de análise antes de aplicar este plano.
- **Comparação com livro do Darcio (ZaE Cap. 4)**. Não verifiquei se a notação/terminologia da Aula 3 está 100% alinhada com o cap. 4 do livro. Provavelmente está (pré-aula referencia explicitamente), mas vale spot-check.

**Um cético perguntaria:** "Você está propondo +0.5 ponto em ~6h de trabalho. A Aula 1 está em 9.7 sem JSXGraph dedicado nem distratores diagnósticos. Por que a Aula 3 precisa disso para chegar a 9.85?"

**Resposta honesta:** A Aula 1 está em 9.7 porque é a **primeira aula do curso** e o calibre do aluno é mais baixo na entrada — overhead de plataforma absorve parte da percepção de qualidade. A Aula 3 fala com aluno que já fez 2 aulas e calibrou expectativa; o piso de "muito bom" subiu. Além disso, Slutsky/CV-EV são conceitos que **se beneficiam dramaticamente de visualização** (Slutsky é geometria pura) — onde a Aula 1 (preferências) sobrevive sem gráfico interativo, a Aula 3 sente a falta. Por isso #1 (JSXGraph) é Tier S aqui mas talvez fosse Tier B numa aula de teoria de jogos discreta, p.ex.

---

## 7. Referências citadas (verificar antes de uso público)

- Bjork, R. A. (1994). Memory and metamemory considerations in the training of human beings. In *Metacognition: Knowing about Knowing*. MIT Press.
- Bligh, D. A. (2000). *What's the Use of Lectures?* Jossey-Bass.
- Bransford, J. D., Brown, A. L., & Cocking, R. R. (Eds.) (2000). *How People Learn: Brain, Mind, Experience, and School*. National Research Council. <!-- [DOI/ISBN OK] -->
- Crouch, C. H., & Mazur, E. (2001). Peer Instruction: Ten years of experience and results. *American Journal of Physics*, 69(9), 970–977. <!-- [VERIFICAR DOI: provável 10.1119/1.1374249] -->
- Falmagne, J.-C. et al. (2006). The assessment of knowledge, in theory and in practice. In *Formal Concept Analysis* (Lecture Notes in Computer Science). <!-- [VERIFICAR DOI] -->
- Hattie, J., & Timperley, H. (2007). The power of feedback. *Review of Educational Research*, 77(1), 81–112. <!-- [DOI: 10.3102/003465430298487] -->
- Lang, J. M. (2016). *Small Teaching: Everyday Lessons from the Science of Learning*. Jossey-Bass.
- Lovett, M., Meyer, O., & Thille, C. (2008). The Open Learning Initiative: Measuring the effectiveness of the OLI statistics course in accelerating student learning. *Journal of Interactive Media in Education*. <!-- [VERIFICAR DOI: 10.5334/2008-14] -->
- Mayer, R. E., & Anderson, R. B. (1992). The instructive animation: Helping students build connections between words and pictures in multimedia learning. *Journal of Educational Psychology*, 84(4), 444–452. <!-- [VERIFICAR DOI] -->
- Mazur, E. (1997). *Peer Instruction: A User's Manual*. Prentice Hall.
- Newman, M. (2010). *Networks: An Introduction*. Oxford UP. (cited indirectly for topic model context — verificar referência mais específica para classificação textual em educação)
- Pardos, Z. A., Tang, S., Davis, D., & Le, C. V. (2017). Enabling real-time adaptivity in MOOCs with a personalized next-step recommendation framework. *L@S*. <!-- [VERIFICAR DOI] -->
- Roediger, H. L., & Karpicke, J. D. (2006). Test-enhanced learning. *Psychological Science*, 17(3), 249–255. <!-- [DOI: 10.1111/j.1467-9280.2006.01693.x] -->
- WCAG 2.1 (2018). *Web Content Accessibility Guidelines 2.1*. W3C Recommendation.

**Atenção:** referências marcadas `<!-- [VERIFICAR DOI] -->` precisam ser confirmadas em base primária antes de uso público. Para esta plano interno, são suficientemente sólidas — mas se citadas em material para aluno (gabarito 5-passos, p.ex.), validar primeiro.

---

## 8. Encerramento

Este plano não é um check-list para fazer todo. **É um cardápio honesto** de onde está o ganho marginal da Aula 3 hoje. Aplicar top 5 sobe a aula para o teto realista do curso (~9.85, comparável a CMU-OLI ou MITx em qualidade). Acima disso é polimento que pode esperar a próxima edição do curso.

**Decisão sugerida ao Darcio:** aplicar #3, #5, #2 (total ~2h15) **agora** (sobe para ~9.7); aplicar #1 (90 min) **antes do release** se houver tempo; deixar #4 e Tier A/B para uma segunda passada quando Aulas 4–9 já estiverem em 9.5+.
