# Dashboard do aluno — proposta de aperfeiçoamento (Onda 1)

**Autor:** `prof-mpe-micro` · **Data:** 2026-04-23 · **Status:** proposta para aprovação (sem código).

---

## Contexto e diagnóstico do estado atual

O `portal.html` hoje entrega o essencial — grid de aulas com CTAs por componente, 5 stat-badges de topo, 4 cards "Meu desempenho", bloco LGPD. **Funciona, mas está subutilizando os dados já coletados.** Todo o aparato psicométrico do admin (Onda 1+2+4) — calibração de confiança, response-time phenotyping, SRL phenotype, cohort drift, learning velocity — **fica invisível para o aluno**. E são exatamente essas métricas que, bem traduzidas para chave formativa, sustentam o que a literatura chama de *self-regulated learning* (SRL) e *mastery orientation*.

Paralelamente, o dashboard tem dois blocos quase redundantes: "Meu painel" (5 badges) e "Meu desempenho" (4 cards) entregam métricas próximas (tempo total, tempo médio, acerto 1ª, total tentativas) sem hierarquia pedagógica. Se adicionarmos 10 elementos novos sem redesenhar, vira sopa — então esta proposta **substitui e consolida**, não apenas empilha.

**Princípios norteadores (destilados da literatura):**

- **Feedback formativo > placar** (Hattie, *Visible Learning*, 2009 — effect size do feedback bem calibrado: ~0.70; mal calibrado: negativo).
- **Mastery-referenced > norm-referenced** (Bloom, 1968; CMU OLI Learning Dashboard; Khan Academy Mastery Map).
- **Metacognição calibrada > confiança cega** (Zimmerman, 2002; Dunlosky & Metcalfe, 2009; Hacker, Bol & Keener, 2012).
- **Autonomia + competência + relacionamento** (Ryan & Deci, SDT, 2000) — não motivação por pontos.
- **Growth mindset em vez de identidade fixa** (Dweck, 2006) — "você ainda não domina" ≠ "você não tem aptidão".
- **Comparação social sóbria, agregada, opt-in** (Huang et al. 2021 sobre Michigan ECoach: comparação com percentis anonimizados + nudges personalizados elevou conclusão em cursos STEM introdutórios; efeito heterogêneo, maior para alunos em risco).

---

## Os 10 elementos propostos

Cada item segue: (1) nome, (2) o que o aluno vê, (3) por que funciona + referência, (4) dados, (5) complexidade, (6) risco pedagógico, (7) impacto esperado (1–10).

---

### E1. Mapa de domínio por tópico ("Mastery Map")

**O que o aluno vê.** Uma trilha horizontal com 9 nódulos (um por aula) e, dentro de cada nódulo quando expandido, 3–5 *learning objectives* (ex.: Aula 1 → "axiomas de preferência", "representação por utilidade", "TMS e convexidade"). Cada LO tem uma barra de domínio 0–100% colorida em 4 faixas: <40% vermelho, 40–70% amarelo, 70–90% verde-claro, >90% verde-escuro. O domínio é computado como acerto-1ª ponderado pelas questões que tocam aquele LO, com decaimento para reforçar revisão. Próximo a cada nódulo, um link "praticar este tópico" quando domínio < 70%.

**Por que funciona.** É o padrão-ouro da aprendizagem adaptativa. **CMU OLI** (Open Learning Initiative) sustenta sua diferença de eficácia mensurada em Lovett, Meyer & Thille (2008, *JIME*), onde um curso OLI de estatística foi concluído pelos alunos em metade do tempo dos pares em aula tradicional com ganhos equivalentes — o mecanismo central é o *learning dashboard* por knowledge component. **Khan Academy** usa o mesmo esquema (mastery bars) e Koedinger et al. (2013, *DataShop*, *Topics in Cognitive Science*) mostram que a visualização de proficiência por KC prediz retenção melhor que nota agregada. **Bloom (1968)** é a âncora teórica: mastery learning como alternativa a "tempo fixo, domínio variável".

**Dados.** Exige tagging de cada questão de `quiz_question_attempts` com seus LOs (campo novo `learning_objectives jsonb` ou tabela `question_los`). Computação: groupby por LO, média de acerto-1ª com recency-weighting. **Requer trabalho de taxonomia** — ~3–5 LOs por aula × 9 aulas = ~30–45 LOs, possível num dia com as questões já escritas.

**Complexidade:** Alta. Tagging manual + schema + UI nova. Mas é investimento que paga em todas as aulas e em semestres futuros.

**Risco pedagógico.** Baixo se bem calibrado. Risco se o tagging for preguiçoso (LOs vagos tipo "microeconomia geral"). Mitigação: definir LOs no design da aula, não post-hoc.

**Impacto esperado:** **9/10.** É o elemento que mais move a agulha pedagogicamente. Koedinger 2013 e Lovett 2008 dão suporte direto. Adultos profissionais respondem melhor a "onde estou relativo ao domínio exigido" do que a "quantos pontos tenho".

---

### E2. Calibração de confiança pessoal ("Você se conhece?")

**O que o aluno vê.** Um scatter plot pequeno (200×200px) onde cada ponto é uma seção/questão já respondida: eixo X = confiança auto-declarada (1–5 do slider pré), eixo Y = acerto 1ª (0 ou 1, jittered). Uma diagonal pontilhada representa calibração perfeita. Badge personalizado: 🎯 "Você se conhece bem" (ECE < 0.15), 🔥 "Você tende a superestimar — cuidado com chute rápido" (over-confident), 🧊 "Você se subestima — confie mais na sua preparação" (under-confident). Um botão "como ler este gráfico" abre modal com explicação.

**Por que funciona.** Calibração metacognitiva é o que separa aluno *strategic* de *reactive* (Zimmerman, 2002, *Theory Into Practice*). **Hacker, Bol & Keener (2012, *Metacognition & Learning*)** mostraram que intervenções de feedback de calibração em alunos universitários melhoram acurácia de julgamento e, em estudos longitudinais, performance final. **Dunlosky & Metcalfe (2009, *Metacognition*)** consolidam isso como mecanismo central de SRL. Diferente do que o admin já vê (ECE agregado), aqui o aluno vê **sua própria história**, não um número abstrato — efeito consistente com *feedback personalizado > feedback genérico* (Hattie & Timperley, 2007).

**Dados.** Já rastreado. `confidence_ratings(phase='pre')` × `quiz_question_attempts` na mesma seção/página. Onda 4 já computa ECE no admin; portar a computação para o portal do aluno é direto.

**Complexidade:** Baixa-Média. A lógica existe; UI nova mas pequena. Scatter SVG simples.

**Risco pedagógico.** Médio se mal redigido. Rotular alguém "over-confident" em pós-graduação é delicado; precisa de enquadramento crescimento ("isto é um sinal, não um julgamento — cada dado novo recalibra"). Nunca exibir antes de, digamos, 10 seções respondidas (regra de estabilidade).

**Impacto esperado:** **8/10.** Evidência robusta, custo baixo, alinhado com o público. Eficácia em adultos profissionais é bem documentada.

---

### E3. "Caminho até a próxima aula" (checklist sequencial ativo)

**O que o aluno vê.** Uma barra de progresso horizontal da aula ativa com 4 etapas sequenciais: **Pré-aula** (material com 9 seções) → **Quiz revisão** (10🟡) → **Aula presencial** → **Pós-aula + Exercícios**. Cada etapa tem ícone e estado (✔ concluído, ▶ em andamento, ⏳ aberto, 🔒 fechado). A etapa "em andamento" é destacada com borda vermelha e CTA direto. Substitui o card atual "Próxima ação" por algo visualmente mais explícito. Estimativa de tempo restante embaixo: "~45 min até quiz revisão · fecha em 3 dias".

**Por que funciona.** **Coursera** e **edX** usam esse padrão de progresso por módulo com milestone markers; Chen et al. (2020) em estudo de MOOCs reportam que barras de progresso modulares reduzem dropout entre checkpoints. O mecanismo é *goal-gradient effect* (Kivetz, Urminsky & Zheng, 2006, *Journal of Marketing Research*) — as pessoas aceleram à medida que se aproximam de um marco visível. Para o público adulto profissional (com agenda apertada), torna explícito *o que fazer agora* — redução de carga cognitiva de planejamento (princípio de Sweller, 1988, *Cognitive Science*).

**Dados.** Tudo já está no schema: `section_progress`, `quiz_aggregates` com `phase`. Calendário já é SSOT em `js/calendario.js`.

**Complexidade:** Baixa. É reorganizar o que já existe num visual mais explícito.

**Risco pedagógico.** Muito baixo. Substitui o "Próxima ação" atual, não adiciona ruído.

**Impacto esperado:** **8/10.** Alto retorno por custo mínimo. Especialmente útil na janela unificada Aula 1∪2 onde há múltiplos prazos abertos.

---

### E4. Heatmap de hábito pessoal (7×24 "Quando você estuda")

**O que o aluno vê.** Um heatmap 7×24 (dias da semana × horas) com intensidade = eventos registrados. Acompanha duas frases automáticas: "Seu horário mais produtivo: quartas 21h" (maior acerto-1ª naquela célula); "Você estuda em média X horas antes do prazo" (cramming ratio invertido: se baixo → "você se antecipa", se alto → "você tende a concentrar no fim"). Sem julgamento; com *nudge* leve se cramming > 0.6 em ≥2 aulas: "notamos que você concentra no fim — experimente blocos de 25 min antes do final de semana".

**Por que funciona.** **Duolingo** expõe "best time to study" no dashboard do usuário baseado em retenção por horário, e Huang et al. (2021) replicaram experimentalmente que feedback sobre padrões temporais pessoais + nudges reduzem procrastinação em ~15% em alunos universitários (consistente com efeito em cursos do **Michigan ECoach**; ver Huyck, Ravipati & Fishman, 2020, *Journal of Computing in Higher Education*). **Anderson et al. (2014, CHI)** analisam padrões circadianos em MOOCs e mostram que cramming prediz desempenho pior controlando por preparação; expor isso ao aluno é o primeiro passo da intervenção. Ancora em SRL (Zimmerman) — *time management* é um dos 6 domínios.

**Dados.** Já rastreado, já computado no admin (Onda 4 #5). Portar componente visual para o portal.

**Complexidade:** Média. Reusar lógica do admin; UI nova.

**Risco pedagógico.** Baixo se o nudge for descritivo, não normativo. "Você concentra no fim" é fato; "você está estudando errado" é julgamento. Evitar o segundo.

**Impacto esperado:** **7/10.** Evidência sólida, custo baixo (código já existe no admin). Útil sobretudo para o terço que craments cronicamente.

---

### E5. Trajetória na turma ("onde você está no caminho")

**O que o aluno vê.** Um único sparkline de 9 pontos (um por aula) mostrando **seu percentil na turma** ao longo do semestre, com banda P25–P75 atrás em cinza claro. Números **ausentes** — só "em qual decil você está" (1–10). Embaixo, uma frase: "Você está no decil 7 na Aula 3, subiu 2 decis desde a Aula 1." Sem ranking individual, sem nomes, sem números absolutos da turma. Opção "esconder este gráfico" persistente.

**Por que funciona.** É a forma mais defensível de comparação social em contexto de aprendizagem. **Michigan ECoach** (Huyck et al. 2020) usa exatamente este formato — percentil relativo + feedback personalizado — e mostra elevação em conclusão, com efeito maior em alunos em risco (aluno já forte ganha menos). Ryan & Deci (SDT, 2000) alertam que comparação social pura mina motivação autônoma; a saída é fazê-la **informativa** (onde estou no caminho) em vez de **controladora** (quem é melhor que quem). A banda P25–P75 desloca o foco de "ranking" para "distribuição" — princípio inspirado em Purdue Course Signals (Arnold & Pistilli, 2012, LAK). Opt-out é não-negociável para evitar ativação de *threat mindset* (Dweck, 2006).

**Dados.** Onda 4 #8 (cohort trajectory drift) já computa percentil por aula no admin. Portar a série do aluno é direto.

**Complexidade:** Média. Lógica existe; UI nova; precisa de flag de opt-out em `profiles`.

**Risco pedagógico.** **Médio-alto.** Comparação social mal calibrada vira desmotivador. Mitigações: (a) banda de distribuição visível em vez de ranking, (b) opt-out disponível sempre, (c) só mostrar depois de Aula 3 (estabilidade), (d) nunca mostrar decil absoluto baixo sem a frase "em que você melhorou" adjacente.

**Impacto esperado:** **7/10.** Evidência boa (Huyck 2020 é específico para ensino superior), mas risco pede cuidado. Em turma pequena (50), decil pode ser ruidoso — considerar mostrar só quartil.

---

### E6. Reflexão retornada ("sua voz alimentou a aula")

**O que o aluno vê.** Caixa com 1–2 reflexões próprias das pré-aulas anteriores que o Darcio efetivamente citou ou respondeu em sala (ou na abertura da próxima aula). Rotuladas "Lida em aula" ou "Respondida no Bloco 0". Se nenhuma foi citada, mostra a última reflexão submetida com "obrigado pela sua reflexão — ela entrou na triagem da próxima aula".

**Por que funciona.** Loop de feedback fechado ativa o componente de **relacionamento** em SDT (Ryan & Deci). Quando o aluno vê que a própria reflexão virou conteúdo de sala, o custo de escrever a próxima sobe em utilidade percebida. **AP Classroom** (College Board) e **ASU Adaptive** usam padrões análogos ("your question was featured"). Em termos de Hattie, esse é um dos raros mecanismos em que *student voice* se traduz em ensino visível (*Visible Learning*, dimensão "teacher-student relationships", effect size ~0.72). Também fortalece identidade de aprendiz ativo.

**Dados.** Já rastreado em `reflections`. Admin precisa poder marcar reflexão como `cited_in_class true` (campo novo simples, ou reuso de `admin_interventions`). Portal lê e exibe.

**Complexidade:** Baixa-Média. Adicionar 1 coluna em `reflections` + UI admin de "marcar citada" + UI portal de exibir. Tabela já existe.

**Risco pedagógico.** Nenhum significativo. Só exige disciplina operacional do Darcio de marcar 2–3 por aula.

**Impacto esperado:** **7/10.** Impacto motivacional alto em adultos (reconhecimento); custo de implementação baixo; custo operacional recorrente pequeno mas real.

---

### E7. Badges sóbrios baseados em competência

**O que o aluno vê.** Uma fileira discreta de até 6 badges conquistados, em estilo selo acadêmico (não emoji infantil). Exemplos: "🎯 Calibrado" (ECE < 0.15 em ≥15 respostas), "📚 Preparação sólida" (pré-aula 9/9 seções em ≥3 aulas seguidas), "⚡ Gabaritou 3 🔴 seguidas" (3 questões avançadas consecutivas corretas na 1ª), "🔄 Aprendeu com o erro" (acerto em 2ª após revisita à seção), "🌅 Consistência" (estudo em ≥4 dias distintos na semana), "🏁 Finisher" (pós-aula + exercícios completos em ≥3 aulas antes do prazo -24h). Cada badge abre tooltip explicando o critério. Badges **não desaparecem**; são marcos.

**Por que funciona.** Badges funcionam em adultos quando atrelados a **competência observável**, não a participação (Gee, 2003; Hamari, Koivisto & Sarsa, 2014 metanálise de gamificação em educação). Falham quando infantilizam (*"você ganhou uma estrelinha!"*) ou quando são aleatórios. **Duolingo** errou e acertou essa curva várias vezes; o padrão atual (lingot por competência específica) é próximo do que funciona. **Mozilla Open Badges** e **IBM Skills** usam badges de competência em contexto profissional adulto com efeito positivo em engajamento e, crucialmente, portabilidade para LinkedIn (importante para este público). **SDT** (Ryan & Deci): recompensa que **sinaliza competência** é informativa e não corrói motivação autônoma; recompensa que **controla comportamento** ("faça X para ganhar Y") corrói.

**Dados.** Todas as condições são computáveis a partir do schema atual. Nenhuma coluna nova.

**Complexidade:** Média. Regras de desbloqueio + UI de badges + armazenamento (pode ser derivado on-the-fly, sem tabela).

**Risco pedagógico.** Médio. Se os critérios forem fáceis demais, viram ruído ("todo mundo tem todos"); difíceis demais, viram exclusão. Calibrar em ~60% dos alunos com ≥3 badges ao final da Aula 3. Nunca vincular badge a nota.

**Impacto esperado:** **6/10.** Evidência mista em adultos, mas custo relativamente baixo e diferenciação clara entre formato que funciona (competência) e o que não funciona (participação).

---

### E8. Sugestão de prática ativa ("o que revisar agora")

**O que o aluno vê.** Um card pequeno com até 3 sugestões personalizadas, regra-baseada: "Você errou duas vezes a questão sobre convexidade estrita — revise a seção 3.3 do ZaE." / "Seu tempo em CES foi 40% abaixo da mediana da turma — vale uma segunda leitura." / "Você não respondeu ao slider de confiança pós na Seção 5 — volte e complete em 2 min." Cada sugestão tem CTA direto para a seção exata. Se o aluno está "em dia", mostra "você está em dia; explore o bônus da Aula X" ou "experimente resolver o exercício avaliativo mais difícil sem olhar o gabarito".

**Por que funciona.** **Purdue Course Signals** (Arnold & Pistilli, 2012, *LAK Conference*) foi o protótipo do *early warning*; a versão orientada ao aluno (não só ao professor) evoluiu em **EAB Navigate** e **Starfish**. Eles mostram que *nudges específicos > semáforo genérico* — o aluno precisa saber *o que fazer*, não só *que está em risco*. **ASU Adaptive Learning** usa esse padrão para tópicos específicos. Ancora em *desirable difficulties* (Bjork & Bjork, 2011) — prática recuperatória espaçada é o que gera retenção.

**Dados.** Já rastreado. Regras: questão errada 2×, tempo de seção < P25 da turma, slider não respondido, questão avançada não tentada.

**Complexidade:** Média. Regras simples, mas precisa de cuidado para não gerar >3 sugestões (fadiga de notificação).

**Risco pedagógico.** Baixo se as regras forem conservadoras. Alto se virarem *nudge spam*. Mitigação: máximo 3 itens, priorizados por impacto; dispensáveis por sessão.

**Impacto esperado:** **7/10.** Evidência boa (Purdue 2012), custo médio, aplicabilidade imediata.

---

### E9. Velocidade de aprendizado pessoal ("você está evoluindo?")

**O que o aluno vê.** Por aula concluída, um mini line-chart de 4 pontos mostrando acerto-1ª em cada fase: pré-revisão → embedded → pós-aula → exercícios avaliativos. Slope positivo (mais comum) = mensagem verde "você evolui dentro da aula — pré + aula consolidam". Slope negativo em ≥2 aulas = alerta amarelo "seu acerto cai da pré para o pós; pode ser que a pré esteja revelando mais do que consolidando". Sem número absoluto de slope; apenas visual + interpretação.

**Por que funciona.** É o **learning curve** de Newell & Rosenbloom (1981) aplicado à unidade pedagógica. **Koedinger et al. (2013, DataShop)** mostram que slope positivo por knowledge component é preditor robusto de retenção. O que é inovador aqui é mostrar ao **aluno** — a maioria dos dashboards mantém isso no lado do professor. A intuição para o adulto profissional é clara: "estou aprendendo ao longo da semana ou só passando pelos quizzes?".

**Dados.** Onda 4 #10 já computa no admin. Portar.

**Complexidade:** Baixa-Média. Lógica existe.

**Risco pedagógico.** Baixo. Em caso de slope negativo, a mensagem pede reflexão, não castiga.

**Impacto esperado:** **6/10.** Bonito conceitualmente, mas um tanto redundante com E1 (mastery map). Se E1 for implementado, E9 pode ficar como drill-down ou ser adiado.

---

### E10. Banco de reflexões com busca ("volte ao que você pensou")

**O que o aluno vê.** Uma aba expansível "Minhas reflexões" (fechada por padrão) com todas as reflexões próprias já submetidas, pesquisáveis por palavra-chave e filtráveis por aula. Cada reflexão mostra a data, a aula, e o texto. Botão "exportar como PDF para meu portfolio".

**Por que funciona.** Portfolio reflexivo é prática consolidada em **Harvard HBX** (hoje Harvard Business School Online) e em programas de educação continuada para adultos — ver Zubizarreta (2009, *The Learning Portfolio*). Para o público MPE, escrever e revisitar reflexões funciona como *elaborative rehearsal* (Craik & Lockhart, 1972) e reforça identidade profissional. O componente de exportação fala diretamente à agenda adulta ("material para minha evolução profissional"). Ancora em SDT (autonomia) e em *deep learning* (Marton & Säljö, 1976).

**Dados.** Já rastreado em `reflections`. Trivial expor para o próprio aluno.

**Complexidade:** Baixa. RLS já permite aluno ler as próprias. UI simples.

**Risco pedagógico.** Nenhum.

**Impacto esperado:** **5/10.** Valor real mas nicho — ~20–30% da turma vai usar ativamente. Baixo custo justifica incluir.

---

## Ranking consolidado (do mais ao menos impactante)

| Posição | Elemento | Impacto | Complexidade | Nota |
|---|---|---|---|---|
| 1 | **E1** Mastery Map por LO | 9 | Alta | O investimento de mais retorno. Requer taxonomia de LOs. |
| 2 | **E3** Caminho até a próxima aula | 8 | Baixa | Quick win com evidência sólida. |
| 3 | **E2** Calibração pessoal | 8 | Baixa-Média | Lógica pronta no admin; portar é direto. |
| 4 | **E8** Sugestão de prática ativa | 7 | Média | Nudges específicos batem semáforo genérico. |
| 5 | **E4** Heatmap 7×24 pessoal | 7 | Média | Lógica pronta (Onda 4); porting de UI. |
| 6 | **E6** Reflexão retornada | 7 | Baixa-Média | Alto impacto motivacional; requer disciplina do Darcio. |
| 7 | **E5** Trajetória na turma | 7 | Média | Maior risco pedagógico; opt-out obrigatório. |
| 8 | **E7** Badges sóbrios | 6 | Média | Evidência mista em adultos; baixo downside. |
| 9 | **E9** Velocidade de aprendizado | 6 | Baixa-Média | Redundante com E1 se ambos entrarem. |
| 10 | **E10** Banco de reflexões | 5 | Baixa | Valor nicho; ~20–30% da turma. |

**Justificativa do ranking.** O critério dominante foi *evidência empírica específica para ensino superior / adultos profissionais*, ponderado por custo de implementação em semana de aula ativa. **E1 lidera** porque é o mecanismo mais bem documentado (CMU OLI, Khan Academy, Koedinger) e porque traduz dados que já temos em algo acionável em chave de crescimento — o déficit conceitual maior do portal atual. **E2 e E3 empatam logo atrás** por razões opostas: E3 porque o custo é risível e a evidência de *goal-gradient* é robusta; E2 porque a infraestrutura de Onda 4 já existe e o efeito de calibração metacognitiva em adultos é um dos mais replicados da literatura de SRL. **E5 ficou em 7º apesar de evidência forte (Michigan ECoach)** porque em turma de 50 o decil é ruidoso e o downside de comparação social mal calibrada é real — merece implementação, mas com cuidado extra. **E9 ficou baixo** não por falta de valor, mas por sobreposição com E1. **E10 é o último** não por má ideia, mas por uso projetado baixo.

---

## O que sai, o que fica, o que vai pra baixo

**Remover (ou fundir) do portal atual:**

- Das 5 stat-badges de topo, manter só **3**: Aulas completas, Acerto 1ª tentativa, Streak. "Min. estudados" e "Média quizzes" viram tooltip/drill-down — são vaidade, não ação.
- Dos 4 cards "Meu desempenho", **substituir "Próxima ação"** por **E3** (Caminho até a próxima aula, mais explícito). **"Tempo médio por aula concluída"** e **"Total de tentativas de quiz"** migram para um acordeão "Métricas detalhadas" ao pé da página — disponível para quem quer, invisível para o resto.
- O sparkline de tempo por aula (hoje em "Meu desempenho") é OK mas subutiliza espaço nobre — mover para o acordeão detalhado ou substituir por **E9** se houver espaço.

**Nova hierarquia sugerida (de cima para baixo):**

1. Header compacto (3 stats: aulas / acerto-1ª / streak).
2. **E3** Caminho até a próxima aula (card largo, destaque).
3. **E1** Mastery Map por LO (card largo, abaixo da grid de aulas mas acima de detalhes).
4. Grid de aulas (como hoje, mas cada card mostra domínio agregado da aula — derivado de E1).
5. **E8** Sugestão de prática ativa (card compacto, lado direito).
6. **E2** Calibração + **E4** Heatmap + **E9** Velocidade → agrupar em bloco "Meu perfil de aprendizagem" (3 cards médios em grid).
7. **E5** Trajetória na turma (card compacto, opt-out visível).
8. **E6** Reflexão retornada (card compacto).
9. **E7** Badges (barra horizontal de selos).
10. **E10** Banco de reflexões + acordeão "Métricas detalhadas" + LGPD (tudo pé da página).

---

## Caminho crítico de implementação (Onda 1 do portal)

**Semana 1 (quick wins, sem mexer em schema):**
- **E3** Caminho até a próxima aula — reorganização visual pura.
- **E2** Calibração pessoal — portar lógica da Onda 4.
- Limpar o topo (remover 2 badges redundantes).

**Semana 2 (infraestrutura para E1):**
- Definir taxonomia de LOs (3–5 por aula × 9 aulas).
- Adicionar tagging em `quiz_question_attempts` (coluna `learning_objectives jsonb` + backfill).
- Implementar computação de domínio por LO.

**Semana 3 (UI de E1 + elementos porting):**
- UI do Mastery Map.
- **E4** Heatmap pessoal (porting da Onda 4).
- **E8** Sugestões de prática ativa (regras + UI).

**Semana 4+ (os com risco maior):**
- **E5** Trajetória na turma, com opt-out e banda P25–P75.
- **E6** Reflexão retornada (requer fluxo admin de "marcar citada").
- **E7** Badges (critérios calibrados com dados reais da turma).
- **E10** Banco de reflexões (últimos porque baixo uso projetado).

**E9** como opcional — implementar apenas se E1 não der conta da mesma função pedagógica.

---

## Riscos transversais

- **Fadiga visual.** 10 elementos empurrados de uma vez viram sopa. Lançar em ondas.
- **LGPD.** E5 (trajetória) é o único que mostra posicionamento relativo. Precisa de opt-out persistente em `profiles` + menção explícita na política de privacidade.
- **Ruído em turma pequena.** 50 alunos é o mínimo viável para decis/percentis. Antes da Aula 3, mostrar percentis seria ruim estatisticamente; implementar *gate* de "só aparece após 3 aulas concluídas".
- **Operacional.** E6 (reflexão citada) exige rotina semanal do Darcio. Se não virar hábito, o elemento morre. Considerar automação leve: admin sugere top-3 reflexões por volume/relevância, Darcio confirma com 1 clique.
