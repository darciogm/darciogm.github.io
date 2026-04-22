# Plano de Aperfeiçoamento — Bundle Aula 1 (8.5 → 9.5+)

**Autor:** prof-mpe-micro (agente)
**Data:** 2026-04-21
**Input:** `aula_1/auditoria-bundle.md` + 5 artefatos do bundle.
**Estado inicial:** 8.5/10 com 3 ações da auditoria já aplicadas (ordem de slides, notação `\succeq` na pré-aula, slide 920 reescrito). Ações 4–10 pendentes.

---

## Resumo executivo

O bundle está sólido e rigoroso — o gap que separa 8.5 de 9.5 não é conteúdo novo, é **coerência transversal** (três artefatos dizendo a mesma coisa com linguagem alinhada), **ponte empírica** (mensuração por trás da Lei de Engel e monotonicidade sendo testada — não só evocada) e **fechamento dos flancos** (dois gaps reais: monotonicidade-variantes e homotetia). O caminho é cirúrgico: sincronizar md↔html, canonizar a construção lex, preencher os dois gaps com micro-intervenções, e dar um passe de copidesque onde a linguagem do gabarito ainda parece de primeira tomada.

## Análise do gap

O que falta para chegar em 9.5+ (três grandes categorias com peso estimado):

- **Polimento cirúrgico** (ações tipo I): +0.40 total — destravar inconsistências que já estão catalogadas, alinhar notação e linguagem entre os 5 artefatos, resolver divergências md↔html identificadas.
- **Novo conteúdo** (ações tipo II): +0.55 total — duas questões que preenchem gaps reais (monotonicidade-variantes e homotetia), uma micro-sessão visual (CI como objeto), e uma caixa de "leitura operacional" da Lei de Engel que conecta Q5 do pós-aula à POF.
- **Reestruturação** (ações tipo III): +0.20 total — canonização da construção lex (efeito alavancado: atinge 4 artefatos com uma intervenção) e recalibração explícita de tempos-alvo com telemetria auto-medida.

Total alvo: **+1.15**, o que empurra o bundle para ~9.65. Dou ~10% de colchão porque algumas estimativas são generosas (ver peer-review).

---

## Ações priorizadas (top 10)

### Ação 1 — Canonizar construção lex em todos os artefatos (efeito alavancado)

- **Tipo**: III (reestruturação leve, mas atinge 4 artefatos)
- **Artefatos afetados**: `platform/aula-01.html` (seção 3, linhas 111-116), `platform/aula-01-pre.html` (Q2, já usa forma R³), `platform/aula-01-pos.html` (Q6 alternativas a/b, linhas 147-148), `aula_1/slides/aula-01.qmd` (slides 282-308, já canônico)
- **O que fazer**: Adotar como canônica a construção dos slides — $x^n=(1-1/n,\,2)\to(1,2)$ vs. $y=(1,1)$ — para o sentido "conjunto inferior fraco não-fechado". Na pré-aula `aula-01.html` linhas 111-116, **trocar** $x^n=(1+1/n, 0)$ por $x^n=(1-1/n, 2)$ e reescrever o texto: "Considere $x^n=(1-1/n,\,2)$ — ao longo de $n$, $y=(1,1)\succ^L x^n$ (porque $x^n_1<1=y_1$), mas no limite $x=(1,2)\succ^L y$. Conjunto $\{z: y\succeq^L z\}$ não é fechado." Em `aula-01-pre.html` Q2 peer-review (linha 66): já bate, só confirmar. Em `aula-01-pos.html` Q6 (a) mantém como distrator errado (aproxima pelo eixo do bem 2) e Q6 (b) fica como a canônica. Adicionar nota no gabarito Q6 peer-review: "A construção dual $x^n=(1+1/n, 0)\to(1,0)$ com $y=(1,1)$ exibe o conjunto *superior* não-fechado — fica como exercício opcional para quem quiser consolidar o mecanismo em ambos os lados."
- **Por que**: A auditoria identificou 3 construções distintas (ação #7 do rank) atuando num conceito que já está saturado em 5 aparições. A canonização com "exercício opcional" converte o que era ruído em reforço deliberado. Efeito alavancado: um único ajuste redacional limpa a dissonância entre pré-aula material, pré-quiz, pós-quiz e exerc.
- **Tempo**: 30 min
- **Delta**: +0.15

### Ação 2 — Sincronizar `exercicios-avaliativos.md` ↔ `platform/aula-01-exerc.html` (md está desatualizado)

- **Tipo**: I
- **Artefatos afetados**: `aula_1/exercicios-avaliativos.md` (Ex 1 item (d)(ii); Ex 2 armadilha; Ex 6 item (e))
- **O que fazer**: Descoberta deste plano — **o HTML já tem as correções melhores** que a auditoria pediu, mas o `.md` está com as versões antigas. Precisa sincronizar:
  1. Linha 54 do md: trocar texto verboso do item 1(d)(ii) pelo texto do HTML linha 107: "Verdadeira, e a razão é um argumento de cardinalidade (Debreu 1954): se existisse $u$ representando a lex, construir-se-ia uma injeção de $[0,1]$ em $\mathbb{Q}$, impossível."
  2. Linha 146 do md: trocar "aluno confunde 'transformação monótona' com 'monótona em módulo'" por "aluno confunde 'transformação monótona' (sentido matemático: estritamente crescente) com 'monótona' no sentido coloquial (só o sinal do movimento importa) — $-u$ é estritamente *decrescente*, inverte $\succeq$." (alinha com linguagem do HTML em `platform/aula-01-exerc.html:200`)
  3. Linha 433 do md (Ex 6 (e) peer-review): adicionar **antes** do "Decidi não fazer porque..." uma linha explícita que a auditoria pediu (ação #6): "**Leitura operacional para o aluno**: em $\mathbb{Q}^3_+$, continuidade da preferência (na topologia induzida) *também* falha — a mesma sequência $(1-1/n, 2, 0)$ restrita a racionais mostra. O que sobrevive é a *representabilidade* (por uma $u$ não-contínua), porque $\mathbb{Q}^3$ é enumerável. São duas propriedades distintas — continuidade (topológica) e representabilidade (cardinalidade) — e o item separa quem entendeu a hierarquia."
- **Por que**: Divergência entre SSOT (md) e artefato servido (html) é dívida técnica que *implicitamente* reduz a nota de qualquer revisor: se auditor encontrar um bug que já estava corrigido em outro lugar, a percepção é "time não controla seu próprio estado". Tirar isso elimina ambiguidade sobre qual é a versão canônica.
- **Tempo**: 25 min
- **Delta**: +0.10

### Ação 3 — Adicionar Q11 (substituir Q4 do pré-quiz por pergunta sobre monotonicidade-variantes) OU estender pós-quiz

- **Tipo**: II (gap real identificado pela auditoria, ação #9)
- **Artefatos afetados**: `platform/aula-01-pos.html` (adicionar um item 🟡 sobre monotonicidade variantes) *ou* reformular Q3 ou Q4 🟡 do pós para cobrir variantes
- **O que fazer**: **Não** adicionar 11ª questão (quebra contrato 5🟡+5🔴). Em vez disso, **reformular Q4 🟡 do pós-aula** (Leontief) para incorporar uma alternativa que teste monotonicidade fraca vs. NSL — versão final:

  > "Q4. 🟡 Seja $u(x_1,x_2)=\min\{2x_1, 3x_2\}$. Considere as afirmações: (I) a TMS é zero no ramo $2x_1>3x_2$; (II) a preferência satisfaz monotonicidade *forte* (coordenada-a-coordenada estrita); (III) a preferência satisfaz monotonicidade *fraca* e não-saciedade local. Quais são verdadeiras?"
  >
  > (a) Apenas (I) e (III). ← CORRETA
  > (b) (I), (II) e (III).
  > (c) Apenas (I).
  > (d) Apenas (II) e (III).

  Gabarito 5-passos: (II) é falsa — no ramo "bem abundante", aumentar *só* aquele bem não melhora $u$, violando monotonicidade forte; (III) é verdadeira porque aumentar os dois bens em proporção melhora $u$ (fraca) e toda vizinhança de qualquer ponto contém pacotes com ambos aumentados. Peer-review: este é *exatamente* o tipo de distinção que vai amarrar a Aula 4 (bem-estar) via NSL.

  Mover o antigo Q4 (que era mais direto "Leontief tem $\sigma$=?") como Q7 do pós-quiz 2 (futuro) ou como nota do gabarito (aluno que queria pergunta mais direta tem ela no slide de Panorama 386-394).

- **Por que**: Auditoria listou "monotonicidade variantes como distractor apenas" como gap real (ação #9). Essa reformulação cobre o gap sem quebrar contrato, e aproveita uma questão que estava redundante com Q7 🔴 sobre CES família-mãe (ambas mostravam Leontief-Leontief).
- **Tempo**: 45 min (escrita + gabarito 5-passos + peer-review)
- **Delta**: +0.12

### Ação 4 — Definir homotetia formalmente em mini-box na pré-aula (gap real, segundo-mais-importante)

- **Tipo**: II (gap real identificado pela auditoria)
- **Artefatos afetados**: `platform/aula-01.html` (seção 5, após parágrafo de CES, linha ~246)
- **O que fazer**: Adicionar um `<div class="admonition note">` **curto** logo antes da seção quasilinear, com texto:

  > **Homotetia — conceito que vai voltar.** Uma preferência é *homotética* se a TMS depende apenas da *razão* $x_2/x_1$ (não dos níveis). Consequência operacional: a demanda Marshalliana é linear em renda ($x_i^M = k_i(p)\cdot m$), parcelas de gasto $w_i$ independem de $m$, e o caminho de expansão da renda é um raio pela origem. **CD, CES e Leontief são homotéticas.** **Quasilinear não é** — o caminho de expansão é *vertical*, não radial (ver Ex 3 item c da lista de exercícios avaliativos). Essa classificação voltará na Aula 2 (UMP), Aula 3 (Slutsky) e Aula 5 (EG trocas).

  E **link** na seção 7 (checkpoint final), Q3, mudando distrator: adicionar "(f) Converge para um limite homotético (classe que inclui CD, CES e Leontief)" como alternativa **verdadeira** distratora ao Q3 (atual resposta correta é (d) "converge para Leontief" que é FALSA). Reformular Q3 para manter (d) como resposta FALSA e incluir (f) como alternativa *verdadeira* mas não a FALSA, testando se aluno não confunde "homotética" com "igual a Leontief".
- **Por que**: Auditoria identificou como "gap real, médio". Homotetia é o conceito-ponte para Aula 3 (Slutsky decomposição) e Aula 5 (EG). Introduzir *agora* como observação ancora-se em CES/CD (que o aluno acabou de ver) e cria ganho composto nas próximas aulas. Leitura do bundle fica "economia moderna tem vocabulário consistente" em vez de "cada aula inventa palavras".
- **Tempo**: 40 min (escrita + ajuste do Q3 do checkpoint + verificação de link)
- **Delta**: +0.10

### Ação 5 — Transformar Q5 🟡 do pós-aula (POF/Engel) em pergunta *quantitativa*, não só qualitativa

- **Tipo**: I → II (borderline — reformulação substantiva, não só redação)
- **Artefatos afetados**: `platform/aula-01-pos.html` (Q5, linhas 121-137)
- **O que fazer**: A versão atual pergunta "qual leitura é correta?" e a resposta é uma *classificação* (alimentação $\eta<1$, educação $\eta>1$). Isso é reconhecimento puro. Reescrever para **calcular** uma elasticidade-renda aproximada:

  > "Q5. 🟡 Na POF 2017–2018, a parcela de alimentação cai de $w_A^{\text{baixa}}=0{,}220$ (renda $m^{\text{baixa}}\approx$ R$ 1.908) para $w_A^{\text{alta}}=0{,}076$ (renda $m^{\text{alta}}\approx$ R$ 23.850). Usando a aproximação $\frac{\partial \ln w_i}{\partial \ln m}=\eta_i-1$ e assumindo linearidade em $\ln m$, qual é a **estimativa grosseira** da elasticidade-renda da demanda por alimentação?"
  >
  > Cálculo guia: $\eta_A-1 \approx \frac{\ln(0{,}076/0{,}220)}{\ln(23850/1908)} \approx \frac{-1{,}062}{2{,}524} \approx -0{,}421$. Logo $\eta_A \approx 0{,}58$.
  >
  > (a) $\eta_A \approx 1{,}4$ (bem luxo). (b) $\eta_A \approx 0{,}58$ (bem necessário). ← CORRETA (c) $\eta_A \approx -0{,}42$ (bem inferior — parcela cai mais que linearmente). (d) Impossível estimar sem saber preços.

  Gabarito 5-passos idem ao atual mas com a conta explicitada; peer-review fica: "A estimativa é *grosseira* — assume preferências homogêneas entre faixas, linearidade em $\ln m$ (Working-Leser), e despreza variação de preços relativos. Willig diz: se $w\cdot\eta$ for pequeno, CS $\approx$ EV. Para alimentação na faixa baixa, $w\cdot\eta\approx 0{,}22\cdot 0{,}58 = 0{,}13$ — ainda razoável para economia aplicada. O detalhe empírico da ANPEC aparece aqui."
- **Por que**: A versão atual é 🟡 "mole" (pura classificação); a versão nova é 🟡 "com mordida" (aluno faz conta de log que Slutsky pede na Aula 3). Bonus: amarra a Q5 do pós-quiz com a Aula 3 explicitamente, o que a auditoria sinalizou como ponte fraca entre aulas. É o tipo de pergunta em que o MPE-professional-que-virou-policy-analyst vai precisar amanhã.
- **Tempo**: 30 min
- **Delta**: +0.12

### Ação 6 — Reescrever passo 5 (peer-review) da Q1 do pós-aula para alinhar com argumento de cardinalidade

- **Tipo**: I
- **Artefatos afetados**: `platform/aula-01-pos.html` (Q1 peer-review, linha 52)
- **O que fazer**: Trocar o trecho atual "A força do contraexemplo está em $\mathbb{R}^2_+$ — é a topologia do contínuo que a lex não tolera" por:

  > "**5. Peer-review.** Cuidado com um atalho comum: dizer 'lex viola continuidade, logo não tem $u$' esconde duas proposições distintas. Em $\mathbb{R}^n_+$, lex não admite representação *alguma* (contínua ou não) — o argumento é de **cardinalidade** (Debreu 1954): se $u$ existisse, para cada $x_1$ o intervalo aberto $(u(x_1,0),u(x_1,1))$ é não-vazio; pela ordem lex em $x_1$, são dois-a-dois disjuntos; um racional em cada força injeção $\mathbb{R}\hookrightarrow\mathbb{Q}$, impossível. A força do contraexemplo está na cardinalidade do contínuo, não apenas na topologia. Em $\mathbb{Q}^n_+$ (enumerável), a lex é representável por uma $u$ não-contínua — é o que o Ex 6 (e) dissecará."
- **Por que**: Auditoria ação #8 — Q1 passo 5 contradiz passo 4 (extensão) e não alinha com Ex 6. Unifica a mensagem do bundle: **existe um único argumento canônico** (cardinalidade), a violação de continuidade é apenas uma face dele. O aluno que ler Q1 → Q6 → Ex 6 recebe reforço coerente, não três versões concorrentes.
- **Tempo**: 15 min
- **Delta**: +0.06

### Ação 7 — Ajustar tempo-alvo declarado da pré-aula de "75–90 min" para "90–120 min" + adicionar nota "registrar tempo real"

- **Tipo**: I (mas é o tipo I mais "chato" — honestidade pedagógica)
- **Artefatos afetados**: `platform/aula-01.html` (linha 32, admonition "Como esta pré-aula funciona"), e `aula_1/auditoria-bundle.md` como referência
- **O que fazer**: Linha 32: trocar "Tempo-alvo total: 75–90min" por "Tempo-alvo total: **90–120 min**. *Nota*: o tempo real depende do seu ritmo de papel-e-caneta — medimos por telemetria, sem julgar. Se você passar de 2h, isso é dado para nós calibrarmos a próxima aula, não reprovação." Similarmente em `aula-01-pre.html` linha 26: trocar "25–40 min" por "30–45 min" e em `aula-01-pos.html` linha 26: "40–60 min" por "45–70 min" (esta inclui leitura dos gabaritos).
- **Por que**: Auditoria identificou como otimismo declarado. Aluno que descobre que "90 min" virou 3h *sem aviso* perde confiança na plataforma; aluno que tem aviso honesto calibra. A ganho não é só em percepção — é em sinal: o campo de confiança pré/pós fica mais útil quando o aluno não está em pânico por cronômetro.
- **Tempo**: 10 min
- **Delta**: +0.05

### Ação 8 — Copidesque de um passe em todos os 5 artefatos (PT-BR, pontuação, concordância)

- **Tipo**: I
- **Artefatos afetados**: todos os 5
- **O que fazer**: Pass focado em: (a) vírgulas antes de "mas/porém/logo" inconsistentes; (b) uso alternado de "aluno" / "aluna" / "estudante" — padronizar em "aluno" (convenção do projeto) ou "aluna/aluno" quando couber no box; (c) pontuação em display equations (`$$...$$` termina com ponto ou vírgula conforme a estrutura gramatical da frase — N&S é rigoroso nisso, o bundle é irregular); (d) eliminar redundâncias do tipo "ou seja, isto é" (escolher uma); (e) ranger as *speaker notes* do qmd para não terem acentos soltos ou bullet-list misturada com prosa. Não é "reescrever" — é passada de *line editor*.
- **Por que**: Auditoria admite "não fez copidesque". É o tipo de trabalho que sobe 0.05 sozinho mas sobe 0.10 *na percepção* porque o aluno sente que o material é profissional. Mestres profissionais vindos de Direito e Administração são especialmente sensíveis a isso (público heterogêneo do MPE).
- **Tempo**: 1h30 (bundle inteiro)
- **Delta**: +0.08

### Ação 9 — Integrar registro de tempo real via `MicroTracker.startSection` / `recordSectionComplete` + calibração proposta

- **Tipo**: II (infra) + III (processo)
- **Artefatos afetados**: `platform/aula-01.html` (já usa tracker; adicionar `startSection` explícito em cada seção) + nota em `metricas-proposta.md`
- **O que fazer**: Na `aula-01.html`, confirmar que `MicroTracker.startSection(PAGE_ID, sectionId)` é chamado no *unlock* de cada seção (já está parcial — linha 520 chama `recordSectionStart`; confirmar que `recordSectionComplete` é chamado em `completeSection`). Adicionar em `platform/metricas-proposta.md` seção "Calibração pós-Aula 1": *após a primeira leva da turma, puxar `SELECT section_id, median(duration_min), percentile_cont(0.75) FROM section_timings WHERE page_id='aula-01' GROUP BY section_id`; republicar tempos-alvo com base em P50+P75 observados; se discrepância > 50%, re-auditar seção específica*.
- **Por que**: Auditoria ação #10 — telemetria real. Diferença entre "plataforma com auto-correção" e "plataforma que é site" é que a primeira *aprende* com a turma. Implementar agora o ciclo de feedback torna a Aula 2 recalibrada sem trabalho humano extra. Efeito composto ao longo do curso.
- **Tempo**: 45 min (auditar código + adicionar seção em `metricas-proposta.md`)
- **Delta**: +0.08

### Ação 10 — Adicionar Q visual (usar CI como objeto) no pré-quiz, reaproveitando o iframe `tms-ponto.html`

- **Tipo**: II
- **Artefatos afetados**: `platform/aula-01-pre.html` (adicionar questão ANTES de Q5 ou fundir com ela? Ver abaixo)
- **O que fazer**: **Não adicionar 11ª** (quebra contrato de 10). Em vez disso, **substituir Q5** (TMS de $\sqrt{xy}$ em (4,16)) por versão visual: embed do iframe `graficos/tms-ponto.html` *estático* (uma captura em ponto específico, ou iframe renderizado) com enunciado:

  > "Q5. 🟡 O gráfico mostra uma curva de indiferença de $u(x,y)=\sqrt{xy}$ passando pelo ponto $(4,16)$. A reta tangente à CI nesse ponto tem coeficiente angular $-4$. Qual é a TMS $\text{TMS}_{xy}$ em $(4,16)$?"
  >
  > (a) $-4$. (b) $4$. ← CORRETA (c) $1/4$. (d) $8$.

  Mesmo gabarito 5-passos, adicionando passo 1: "**Ponto-chave.** TMS é definida como $-dy/dx|_{u=\bar u}$ — o sinal negativo da inclinação da CI *sai* na definição, porque TMS é disposição a trocar (positiva em bens normais convexos). Distrator (a) é o aluno que esqueceu do sinal."

- **Por que**: Auditoria identificou "nenhum quiz usa CI como objeto de raciocínio". Uma questão visual calibrada em 🟡 não infla o quiz; apenas transforma uma questão puramente algébrica em algébrica+geométrica. Bonus: amarra o gráfico interativo (que de outra forma é só ornamento) à avaliação. Aluno que ignorou o gráfico em sala é penalizado seletivamente.
- **Tempo**: 1h (embed + teste de renderização + ajuste de peer-review)
- **Delta**: +0.09

---

## Subtotal top 10

| # | Ação | Tipo | Tempo | Delta |
|---|---|---|---|---|
| 1 | Canonizar lex (4 artefatos) | III | 30min | +0.15 |
| 2 | Sync md↔html exerc | I | 25min | +0.10 |
| 3 | Reformular Q4 pós: monotonicidade variantes | II | 45min | +0.12 |
| 4 | Homotetia em mini-box + link Q3 | II | 40min | +0.10 |
| 5 | Q5 pós vira quantitativa (Engel) | II | 30min | +0.12 |
| 6 | Q1 pós peer-review → cardinalidade | I | 15min | +0.06 |
| 7 | Tempo-alvo declarado honesto | I | 10min | +0.05 |
| 8 | Copidesque em passe único | I | 1h30 | +0.08 |
| 9 | Telemetria real + recalibração | II+III | 45min | +0.08 |
| 10 | Q5 pré vira visual (CI como objeto) | II | 1h | +0.09 |
| **Σ** | | | **~6h20** | **+0.95** |

---

## Extensões (5, não prioritárias mas bem-vindas)

### E1 — Recalibrar Q10 do pós-aula de 🔴 para 🔴🔴 com nota de dificuldade

- **Tipo**: I. Auditoria flagrou "flertando com 🔴🔴". Adicionar nota no enunciado "Questão difícil mesmo para 🔴 — pense em recíprocas, não em diretas." Tempo: 10min. Delta: +0.03.

### E2 — Substituir Ex 4 Cenário B pela forma canônica CES $u^{1/\rho}$

- **Tipo**: I. Auditoria sugeriu. Enunciado atual usa $(...)^2$ que coincide com $(...)^{1/\rho}$ em $\rho=1/2$ "por acaso". Trocar para canônica. Tempo: 25min. Delta: +0.04.

### E3 — Adicionar mini-box "Por que Arrow-Debreu importa hoje" no fim dos slides

- **Tipo**: II. Teaser 1-slide sobre EG → política pública (salvaguardas fiscais via preços contingentes). Ancora a Aula 6 e motiva os próximos dois meses. Tempo: 40min. Delta: +0.05.

### E4 — Gravar vídeo curto (5-7min) "construção lex em ambas as direções"

- **Tipo**: II. A auditoria identificou o lex como âncora. Um vídeo curto com o Darcio desenhando as duas sequências (conjunto inferior vs. superior) serve de *backup* pedagógico para quem travou em aula. Tempo: 2h (gravação + edição leve). Delta: +0.04.

### E5 — Exercício de papel da pré-aula seção 6: alinhar N&S 3.1 → N&S 3.7

- **Tipo**: I. Auditoria ação #2 (pré-aula). Trocar 3.1 por 3.7 para coincidir com o que o Bloco 4 consolida. Tempo: 20min. Delta: +0.03.

### Subtotal extensões

| # | Ação | Tempo | Delta |
|---|---|---|---|
| E1 | Q10 🔴→🔴🔴 nota | 10min | +0.03 |
| E2 | Ex 4 CES canônica | 25min | +0.04 |
| E3 | Mini-box AD teaser | 40min | +0.05 |
| E4 | Vídeo lex | 2h | +0.04 |
| E5 | Papel 3.1→3.7 | 20min | +0.03 |
| **Σ** | | **~3h35** | **+0.19** |

---

## Soma dos deltas

- **Top 10**: +0.95 (6h20 de trabalho)
- **Extensões**: +0.19 (3h35)
- **Total se fizer tudo**: **+1.14** sobre 8.5 → **~9.64**

**Caminho mínimo para 9.5+**: ações 1, 2, 3, 4, 5, 6, 8 (+ 0.73 em ~4h) chega a ~9.23. Precisa de pelo menos + 2 extensões ou a ação 10 para cruzar 9.5. Recomendo **ações 1-10 todas + E5** (sem vídeo, sem teaser AD) → ~9.60 em ~6h40.

---

## Peer-review deste plano

Um segundo auditor olhando este plano levantaria três objeções legítimas.

**Primeira: deltas são notoriamente especulativos.** Eu atribuí +0.15 à canonização da construção lex. Mas a auditoria original nem tinha certeza se a pluralidade era *bug* ou *feature* ("pode ser feature ou bug, depende de observar reação da turma"). Se for feature, minha Ação 1 está zerando reforço em vez de limpar dissonância — delta real seria 0 ou negativo. Mitigação: mantenho a canonização mas preservo as outras construções como exercícios opcionais explícitos, não as apago. Isso blinda o plano contra essa incerteza, mas reduz o delta real para talvez +0.08-0.10, não +0.15.

**Segunda: Ação 5 (Q5 quantitativa) pode quebrar calibre.** Transformar uma questão 🟡 que era de reconhecimento em uma que exige log calculadora borderlinea 🔴. Mestres profissionais sem fluência em log podem sofrer desproporcionalmente. Se a turma errar em massa, o delta vira negativo (aluno fica desestimulado). Mitigação: revisar calibre; talvez deixar a conta no peer-review como bonus e manter a pergunta qualitativa como principal. Delta real talvez +0.06, não +0.12.

**Terceira: copidesque (+0.08) é a ação onde sou mais generoso.** É difícil provar que um passe de linha editor *realmente* sobe 0.08 de nota. Na pior hipótese, sobe 0.03 — o aluno não percebe melhora marginal em texto já bom. Na melhor, sobe 0.12 porque corta 5-6 asperezas que cumulativamente irritavam. Usei +0.08 como mediana. Aceito até +0.05 se o auditor for cético.

**Agregando o ceticismo**: delta realista descontado = 0.95 × 0.85 ≈ **+0.81** para top 10. Ainda chega a 9.31, precisa de 2-3 extensões para cruzar 9.5. Por isso o caminho "top 10 + E5 + E1" é o mais seguro — adiciona +0.06 concretos e me coloca com margem de segurança em 9.37–9.60 conforme o desconto.

**Onde o plano pode estar errado que eu não catalogei**: (i) a lógica de que cada ação contribui *aditivamente* para a nota é falsa — há interações. Ação 1 (canonização) + Ação 6 (Q1 passo 5) podem *sobrepor* quase completamente no ganho porque ambas tocam a "unificação da narrativa sobre lex"; se eu fizer as duas, o ganho combinado é talvez +0.15, não +0.21. (ii) não avaliei **qual é a capacidade de atenção real do Darcio** nas próximas 48h antes da aula 2 — pode ser que o orçamento seja 2h, não 6h20, e aí o ranking importa mais que o total. Para 2h, faria ações 1, 2, 6, 7 (1h20, +0.36) — chega a 8.86, não 9.5. O plano precisa ser escalonável. (iii) algumas ações têm **risco de introduzir regressões** (reescrever Q4 pode criar bug em gabarito; adicionar mini-box de homotetia pode quebrar contagem de seções do JS em `aula-01.html`). Não listei custos de teste/validação nos tempos.
